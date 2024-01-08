/*******************************************************************************
  Board Support Package Implementation

  Company:
    Microchip Technology Inc.

  File Name:
    bsp.c

  Summary:
    Board Support Package implementation for PIC32MZ Embedded Connectivity (EC)
    Starter Kit.

  Description:
    This file contains routines that implement the board support package for
    PIC32MZ Embedded Connectivity (EC) Starter Kit.
*******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2012 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED AS IS WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
*******************************************************************************/
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "bsp.h"


// *****************************************************************************
/* Data Structure: 
    switch_port_channel_map[]

  Summary:
    Maps each switch to its port channel
  
  Description:
    The switch_port_channel_map array, indexed by BSP_SWITCH, maps each switch 
    to its port channel.

  Remarks:
    Refer to bsp.h for usage information.
*/
static const PORTS_CHANNEL switch_port_channel_map[] =
{
    PORT_CHANNEL_A,
    PORT_CHANNEL_B,
    PORT_CHANNEL_None
};

// *****************************************************************************
/* Data Structure: 
    switch_port_bit_pos_map[]

  Summary:
    Maps each switch to its port bit position
  
  Description:
    The switch_port_bit_pos_map array, indexed by BSP_SWITCH, maps each switch to its port bit position

  Remarks:
    Refer to bsp.h for usage information.
*/
static const PORTS_BIT_POS switch_port_bit_pos_map[] =
{
    PORTS_BIT_POS_1,
    PORTS_BIT_POS_0,
    PORTS_BIT_POS_-1
};


// *****************************************************************************
/* Function: 
    void BSP_SwitchStateGet(BSP_SWITCH switch);

  Summary:
    Returns the present state (pressed or not pressed) of the specified switch.
  
  Description:
    This function returns the present state (pressed or not pressed) of the
    specified switch.

  Remarks:
    Refer to bsp.h for usage information.
*/

BSP_SWITCH_STATE BSP_SwitchStateGet( BSP_SWITCH bspSwitch )
{
    return ( PLIB_PORTS_PinGet(PORTS_ID_0, switch_port_channel_map[bspSwitch], switch_port_bit_pos_map[bspSwitch]) );
}

// *****************************************************************************
/* Data Structure: 
    led_port_channel_map[]

  Summary:
    Maps each led to its port channel
  
  Description:
    The led_port_channel_map array, indexed by BSP_LED, maps each led to its 
    port channel.

  Remarks:
    Refer to bsp.h for usage information.
*/
static const PORTS_CHANNEL led_port_channel_map[] =
{
    PORT_CHANNEL_None,
    PORT_CHANNEL_B,
    PORT_CHANNEL_None
};

// *****************************************************************************
/* Data Structure: 
    led_port_bit_pos_map[]

  Summary:
    Maps each led to its port bit position
  
  Description:
    The led_port_bit_pos_map array, indexed by BSP_LED, maps each led to its port 
    bit position.

  Remarks:
    Refer to bsp.h for usage information.
*/
static const PORTS_BIT_POS led_port_bit_pos_map[] =
{
    PORTS_BIT_POS_-1,
    PORTS_BIT_POS_10,
    PORTS_BIT_POS_-1
};

// *****************************************************************************
/* Data Structure: 
    led_active_level_map[]

  Summary:
    Maps each led to its active level
  
  Description:
    The led_active_level_map array, indexed by BSP_LED, maps each led to its active 
    level.

  Remarks:
    Refer to bsp.h for usage information.
*/
static const BSP_LED_ACTIVE_LEVEL led_active_level_map[] =
{
   BSP_LED_ACTIVE_LOW,
   BSP_LED_ACTIVE_LOW,
   BSP_LED_ACTIVE_LOW
};

// *****************************************************************************
/* Function: 
    void BSP_LEDStateSet(BSP_LED led, BSP_LED_STATE state);

  Summary:
    Controls the state of the LED.
  
  Description:
    This function allows the application to specify the state of the LED.

  Remarks:
    Refer to bsp_config.h for usage information.
*/

void BSP_LEDStateSet(BSP_LED led, BSP_LED_STATE state)
{
    /* Set the state of the LED */
    if(led_active_level_map[led] == BSP_LED_ACTIVE_HIGH)
    {
        PLIB_PORTS_PinWrite (PORTS_ID_0 , led_port_channel_map[led], led_port_bit_pos_map[led], 
							 (BSP_LED_STATE_ON == state ? true : false));
    }
    else
    {
        PLIB_PORTS_PinWrite (PORTS_ID_0 , led_port_channel_map[led], led_port_bit_pos_map[led], 
							 (BSP_LED_STATE_ON == state ? false : true));
    }
}

// *****************************************************************************
/* Function: 
    void BSP_LEDToggle(BSP_LED led);

  Summary:
    Toggles the state of the LED between BSP_LED_STATE_ON and BSP_LED_STATE_OFF.
  
  Description:
    This function toggles the state of the LED between BSP_LED_STATE_ON and
    BSP_LED_STATE_OFF.

  Remarks:
    Refer to bsp.h for usage information.
*/    

void BSP_LEDToggle(BSP_LED led)
{
    PLIB_PORTS_PinToggle(PORTS_ID_0, led_port_channel_map[led], led_port_bit_pos_map[led] );
}

// *****************************************************************************
/* Function: 
    BSP_LED_STATE BSP_LEDStateGet(BSP_LED led);

  Summary:
    Returns the present state of the LED.
  
  Description:
    This function returns the present state of the LED.

  Remarks:
    Refer to bsp.h for usage information.
*/    

BSP_LED_STATE BSP_LEDStateGet (BSP_LED led)
{
    bool value;

    /* Get LED Status */
    value = PLIB_PORTS_PinGetLatched (PORTS_ID_0, led_port_channel_map[led], led_port_bit_pos_map[led]);

    if(led_active_level_map[led] == BSP_LED_ACTIVE_LOW)
    {
        value = !value;
    }

    return (value ? BSP_LED_STATE_ON : BSP_LED_STATE_OFF);
}

// *****************************************************************************
/* Function: 
    void BSP_LEDOn(BSP_LED led);

  Summary:
    Switches ON the specified LED.
  
  Description:
    This function switches ON the specified LED.

  Remarks:
    Refer to bsp.h for usage information.
*/

void BSP_LEDOn(BSP_LED led)
{
    if(led_active_level_map[led] == BSP_LED_ACTIVE_HIGH)
    {
        PLIB_PORTS_PinSet( PORTS_ID_0, led_port_channel_map[led], led_port_bit_pos_map[led] );
    }
    else
    {
        PLIB_PORTS_PinClear( PORTS_ID_0, led_port_channel_map[led], led_port_bit_pos_map[led] );
    }
}

// *****************************************************************************
/* Function: 
    void BSP_LEDOff(BSP_LED led);

  Summary:
    Switches Off the specified LED.
  
  Description:
    This function switches Off the specified LED.

  Remarks:
    Refer to bsp.h for usage information.
*/

void BSP_LEDOff(BSP_LED led)
{
    if(led_active_level_map[led] == BSP_LED_ACTIVE_HIGH)
    {
        PLIB_PORTS_PinClear( PORTS_ID_0, led_port_channel_map[led], led_port_bit_pos_map[led] );
    }
    else
    {
        PLIB_PORTS_PinSet( PORTS_ID_0, led_port_channel_map[led], led_port_bit_pos_map[led] );
    }
}

// *****************************************************************************
// *****************************************************************************
// *****************************************************************************
// Section: Interface Routines
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Function: 
    void BSP_Initialize(void)

  Summary:
    Performs the necessary actions to initialize a board
  
  Description:
    This function initializes the LED, Switch and other ports on the board.
    This function must be called by the user before using any APIs present in
    this BSP.  

  Remarks:
    Refer to bsp.h for usage information.
*/

void BSP_Initialize(void )
{
    /* Disable JTAG so that all LED ports are available */
    PLIB_DEVCON_JTAGPortDisable(DEVCON_ID_0);


    /* Switch off LEDs */
    BSP_LEDOff(BSP_LED_1);
    BSP_LEDOff(BSP_LED_3);
    BSP_LEDOff(BSP_LED_2);

    /* PDN_AK4645 */
    PLIB_PORTS_PinClear( PORTS_ID_0, PORT_CHANNEL_A, PORTS_BIT_POS_3 );
}

/*******************************************************************************
  Function: void BSP_USBSwitchSelect(void)

  Summary:
   Sets the USB Switch to define USB Mode to be Device or Host.

  Description:
    Sets the USB Switch to define USB Mode to be Device or Host.

  Remarks:
    None.

*/
void BSP_USBSwitchSelect(uint32_t value)
{
    //PLIB_PORTS_Write(PORTS_ID_0, PORT_CHANNEL_G, value);
}

/*******************************************************************************
 End of File
*/
