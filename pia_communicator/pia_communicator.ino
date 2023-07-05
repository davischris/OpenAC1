#include <SPI.h>
#include <MCP23S17.h>
#include <SD.h>

#define KBD_INTERRUPT_ENABLE true
#define KBD_SEND_TIMEOUT_MS 2000

#define IO_SS 10

#define IO_VIDEO 0
#define IO_VIDEO_D0 0
#define IO_VIDEO_D6 6
#define VIDEO_RDA 5
#define VIDEO_DA 3

#define IO_KBD 1
#define IO_KBD_D0 8
#define IO_KBD_D6 14
#define IO_KBD_DA 15
#define KBD_READY 2
#define KBD_STROBE 7    //was 4, needed to free up for sd module
#define LED 13
#define CLRSCR 6

// How long to delay after sending a character to video terminal (ms)
#define VIDEO_CHARACTER_DELAY 5
// How long to delay after sending a character to the PIA/6802
#define PIA_CHARACTER_DELAY 5
// How long to delay after writing a full line to the PIA/6802
#define PIA_LINE_DELAY 150

static int delay_after_line_ms = PIA_LINE_DELAY;
static volatile char video_byte;
static bool loading_file;

MCP23S17 bridge(&SPI, IO_SS, 0);
File root;
const int chipSelect = 4;
String command;
File firstFile;
File myRecFile;
int captureType;
bool firstByte;
int countUp = -32767;
int buttonState = 0;        // current state of the button

static volatile bool video_data_ready;
static volatile bool keyboard_data_sent_ok;

static void on_video_data_ready(void) {
  digitalWrite(VIDEO_RDA, LOW);
  video_byte = bridge.readPort(IO_VIDEO) & 127;
  video_data_ready = true;
}

static void on_keyboard_data_ack(void) {
  keyboard_data_sent_ok = true;
}

/**
 * We signal to the 6802/PIA that we are ready to accept
 * video data by a low-to-high transition on the VIDEO_RDA pin.
 */
static void signal_ready_for_video(void) {
  digitalWrite(VIDEO_RDA, LOW);
  delay(100);
  digitalWrite(VIDEO_RDA, HIGH);
}

void setup() {
  pinMode(LED, OUTPUT);
  Serial.begin(38400);
  configure_pins();
  configure_bridge();
  //output_status();
  Serial.println("\033[f");
  Serial.print(".");

  Serial.print(".");
  digitalWrite(VIDEO_RDA, LOW);
  delay(2000);
  digitalWrite(VIDEO_RDA, HIGH);
  Serial.println("\033[2J");
  delay(100);
  Serial.println("\033[f");
  loading_file = false;
}

void configure_pins() {
  pinMode(KBD_READY, INPUT);
  pinMode(VIDEO_DA, INPUT);
  pinMode(KBD_STROBE, OUTPUT);
  pinMode(VIDEO_RDA, OUTPUT);

  // initialize the button pin as a input:
  pinMode(CLRSCR, INPUT);

  /* Test the use of interrupts for communication with the PIA */
  attachInterrupt(digitalPinToInterrupt(KBD_READY), on_keyboard_data_ack, FALLING);
  attachInterrupt(digitalPinToInterrupt(VIDEO_DA), on_video_data_ready, RISING);
}

void configure_bridge() {
  bridge.begin();

  /* Configure video section 
  for (int i = IO_VIDEO_D0; i <= IO_VIDEO_D6; i++) {
    bridge.pinMode(i, INPUT);
  }*/
  bridge.pinMode(7, INPUT_PULLUP);

  /* Configure keyboard section */
  for (int i = 8; i <= 15; i++) {
    bridge.pinMode(i, OUTPUT);
  }
}

void show_directory() {
  int numTabs = 0;
  Serial.println(" ");
  root = SD.open("/");
  printDirectory(root, 0);
  root.close();
}

String formatFilename(File entry) {
  char s[80];
  char n[70];
  String tmp;
  int fileLen;
  
  tmp = entry.name();
  tmp.toUpperCase();
  tmp.toCharArray(n, tmp.length()+1);
  fileLen = entry.size()/1000;
  if (fileLen == 0)
    fileLen = 1;
  if (tmp.endsWith("BIN")) {
    sprintf(s, "B  %03d  %s", fileLen, n);
  } else if (tmp.endsWith("BAS")) {
    sprintf(s, "I  %03d  %s", fileLen, n);
  }

  //remove files that begin with "." (in case this card was inserted into a Mac)
  if (n[0] == '.' || n[0] == '_')
    s[0] = '\0';
  return String(s);
}

void printDirectory(File dir, int numTabs) {
  int numFiles = 0;
  String fName;
  
  while (true) {

    File entry =  dir.openNextFile();
    if (! entry) {
      // no more files
      dir.rewindDirectory();
      break;
    }
    for (uint8_t i = 0; i < numTabs; i++) {
      Serial.print('\t');
    }
    if (!entry.isDirectory()) {
      if (numFiles == 0) {  //we have to do this goofy thing because the catalog will skip the first file after loading a program
        if (firstFile.name() == "")
          firstFile = entry;
        else
          if (firstFile.name() != entry.name()) {
            fName = formatFilename(firstFile);
            if (fName.charAt(0) == 'B' || fName.charAt(0) == 'I')
            {
              Serial.println(fName);
              numFiles++;
            }
          }
      }
      fName = formatFilename(entry);
      if (fName.charAt(0) == 'B' || fName.charAt(0) == 'I')
      {
        Serial.println(fName);
        numFiles++;
      }
    }
    entry.close();

    //pause for long listings
    if (numFiles > 0 && numFiles % 18 == 0) {
      Serial.println("Press any key...");
      Serial.flush();
      while(!Serial.available()) {
      }
      int c = Serial.read();
      Serial.flush();
    }
  }
}

void print_hex(byte value) {
  print_hex(value, true);
}

void print_hex(byte value, bool newline) {
  if (value <= 0xF) {
    Serial.print("0x0");
  } else {
    Serial.print("0x");
  }

  if (newline) Serial.println(value, HEX);
  else Serial.print(value, HEX);
}

void serial_receive() {
  if (Serial.available() > 0) {
    int c = Serial.read();
    pia_send(c);
  }
}

void load_file(String filename, int start_line = -1, int end_line = -1) {
  if (!SD.exists(filename)) {
    Serial.println("File does not exist.");
    return;
  }
  loading_file = true;
  
  File myFile = SD.open(filename);

  //switch to BASIC or Wozmon based on the file extension
  int len = strlen(myFile.name());
  if (strstr(strlwr(myFile.name() + (len - 4)), ".bas"))
  {
    for(auto x : "E000R")
    {
      send_key(x);
      process_video();
    }
    send_key(13);
    process_video();
    delay(500);    
  } else if (strstr(strlwr(myFile.name() + (len - 4)), ".bin"))
  {
    for(auto x : "CALL -151")
    {
      send_key(x);
      process_video();
    }
    send_key(13);
    process_video();
    delay(500);    
  }

  if (start_line != -1) {
    if (end_line == -1) {
      // Assume user only wants to load a single line
      end_line = start_line;
    }
    else if (end_line <= start_line) {
      end_line = start_line + 10;
    }
    Serial.print("Loading lines ");
    Serial.print(String(start_line));
    Serial.print(" to ");
    Serial.println(String(end_line));
  }

  if (!myFile) {
    Serial.println("Could not open file ...");
    loading_file = false;
    return;
  }

  int line_number = 1;
  char last;
  while (myFile.available()) {
    char ch = myFile.read();
    if (last == 10 || last == 13 && (ch != 10 && ch != 13)) {
      line_number++;
    }
    if (ch == 10) ch = 13;

    if (start_line == -1) {
      // We are transmitting all lines ...
      send_key(ch);
      process_video();
    }
    else if (line_number >= start_line && line_number <= end_line) {
      // We are transmitting only selected lines ...
      send_key(ch);
      process_video();
    }
    last = ch;
  }
  myFile.rewindDirectory();
  myFile.close();
  loading_file = false;
  if (firstFile.name() != "")              //we have to do this because some goofy thing makes the catalog listing stuck on whatever file was loaded
    bool b = SD.exists(firstFile.name());
}

String getValue(String data, char separator, int index)
{
  int found = 0;
  int strIndex[] = {0, -1};
  int maxIndex = data.length()-1;

  for(int i=0; i<=maxIndex && found<=index; i++){
    if(data.charAt(i)==separator || i==maxIndex){
        found++;
        strIndex[0] = strIndex[1]+1;
        strIndex[1] = (i == maxIndex) ? i+1 : i;
    }
  }

  return found>index ? data.substring(strIndex[0], strIndex[1]) : "";
}

void pia_send(int c) {
  char ch;

  c = map_to_ascii(c);

  /* Output the actual keys as long as it's supported */
  if (c < 96) {
    if (c == 13) { 
      int cmdLen = command.length();
      //Serial.println("\rCommand: " + command);
      if (cmdLen > 6) {   //if it's short, we don't need to parse it.
        command.trim();
        if (command == "CATALOG") {
          if (!SD.begin(chipSelect))
            Serial.println("initialize SD card failed");
          else
            show_directory();
          //send_key(27);
          for (int i = 0; i < cmdLen; i++) {
            send_key(95);
          }
          c = 13;
        } else if (command.startsWith("LOAD ", 0)) {
          Serial.println("");
          for (int i = 0; i < cmdLen; i++) {
            send_key(95);
          }
          send_key(13);
          if (!SD.begin(chipSelect))
            Serial.println("initialize SD card failed");
          else
          {
            String filename = command.substring(5);
            int start_line = -1, end_line = -1;
            if (filename) {
              int pos = filename.indexOf(' ');
              if (pos != -1) {
                String s = filename.substring(pos + 1); // start
                filename = filename.substring(0, pos);
                int pos2 = s.indexOf(',');
                if (pos2 != -1) {
                  String e = s.substring(pos2 + 1); // end
                  s = s.substring(0, pos2);
                  end_line = e.toInt();
                }
                start_line = s.toInt();
              }
              if (start_line == 0) {
                start_line = -1;
              }
              load_file(filename, start_line, end_line);
            }
            else {
              Serial.println("You must specify a filename.");
            }
          }
        } else if (command.startsWith("TIMEOUT", 0)) {
          if (command.length() == 7) {
            Serial.println("\n\rLINE TIMEOUT VALUE IS " + String(delay_after_line_ms));
          }
          else {
            String timeout = command.substring(8);
            delay_after_line_ms = timeout.toInt();
            Serial.println("\n\rLINE TIMEOUT VALUE CHANGED TO " + String(delay_after_line_ms));
          }
          for (int i = 0; i < cmdLen; i++) {
            send_key(95);
          }
          c = 13;
        }
      }
      command = "";
    } else {
      char ch = c;
      //if this is a rubout character, then delete the last character from our command string
      if (ch == '_') {
        int lastIndex = command.length() - 1;
        if (lastIndex >= 0)
          command.remove(lastIndex);
      } else
        command.concat(ch);
    }

    send_key(c);
  }
}

/*
   Transmit character

   @note    This function will return 1 if an acknowledgement is not received
            within the specified time.

   @return  0 on success
            1 on failure
*/
int resend_key(int c) {
  /* Make sure STROBE signal is off */
  digitalWrite(KBD_STROBE, LOW);

  delayMicroseconds(750);
  /* Notify PIA that we have sent a new keyboard character */
  digitalWrite(KBD_STROBE, HIGH);
  
  //we're skipping the rest of this process for now.  It seems to cause more troubles than it solves.
  if (!loading_file) {
    signal_ready_for_video();
    return 0;
  }

  /* Wait for PIA to acknowledge this.
    -> We are waiting for a falling edge on the KBD_READY pin.
    -> Once this occurs the keyboard_data_sent_ok flag will be set in the interrupt
  */
  uint32_t t_send = millis();
  while (!keyboard_data_sent_ok) {
    // Ensure we process any new video data while waiting ...
    process_video();
    uint32_t t_now = millis();
    if (t_now - t_send >= KBD_SEND_TIMEOUT_MS) {
      Serial.println("KBD TIMEOUT");
      return 1;
    }
  }

  return 0;
}

void delay_while_processing_video(int ms) {
  uint32_t t_start = millis();
  while (1) {
    process_video();
    uint32_t t_now = millis();
    if (t_now >= t_start + ms) {
      break;
    }
  }
}

void send_key(int c) {
  const int max_tries = 3;

  /* Write new character on I/O expander */
  bridge.writePort(IO_KBD, c | 128);

  /*
    Notify 6802 and/or PIA that a new character is waiting to be read, and
    then wait for an acknowledgement.
  */
  int attempt = 1;
  int rc = 1;
  while (rc != 0) {
    rc = resend_key(c);
    if (rc == 0) {
      break; // succeeded
    }
    // If we did not receive an acknowledgement that the character
    // was read, try again. Maybe the PIA or 6802 just missed the
    // relevant transition.
    if (attempt++ >= max_tries) {
      Serial.println("TOO MANY ATTEMPTS. SKIPPING CHARACTER.");
      break;
    }
    /** 
     * The 6802 might be stuck in a loop waiting to send us video 
     * data - as it might have missed our last 'ready for video'
     * signal.
     * Just re-signal that we are ready.
     */
    signal_ready_for_video();
  }

  keyboard_data_sent_ok = false;
  digitalWrite(KBD_STROBE, LOW);
  if (c == 13) {
    // Use a longer delay after sending a full line - in case
    // the 6802 needs more time to process
    delay_while_processing_video(delay_after_line_ms);
  }
  else {
    delay(PIA_CHARACTER_DELAY);
  }
}

char map_to_ascii(int c) {
  if (c >= 128) {
    Serial.print("Non-printable character: 0x");
    Serial.println(c, HEX);
  }
  /* Convert ESC key */
  if (c == 203) {
    c = 27;
  }

  /* Ctrl A-Z */
  if (c > 576 && c < 603) {
    c -= 576;
  }

  /* Convert lowercase keys to UPPERCASE */
  if (c > 96 && c < 123) {
    c -= 32;
  }

  /* Convert backspace to underscore */
  if (c == 8) {
    c = 95;
  }

  return c;
}

char send_ascii(char c) {
  switch (c) {
    case 0x0d: Serial.println(); /* Replace CR with LF */
    default:
      Serial.print(c);
  }
}

void process_video(void) {
  if (video_data_ready) {
    video_data_ready = false;
    send_ascii(video_byte);
    
    delay(VIDEO_CHARACTER_DELAY);
    digitalWrite(VIDEO_RDA, HIGH);
  } 
  else if (!loading_file) {
    countUp++;
    if (countUp == 32767) {
      signal_ready_for_video();
      countUp = -32767;
    }
  }
}

void loop() {
  // read the pushbutton input pin:
  buttonState = digitalRead(CLRSCR);
  if (buttonState == HIGH) {
    Serial.println("\033[2J");
    delay(100);
    Serial.println("\033[f");
  }
  serial_receive();
  // serial_transmit();
  process_video();
}
