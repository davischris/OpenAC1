/*******************************************************************************
  OC Peripheral Library Template Implementation

  File Name:
    oc_CompareModeSelect_Default.h

  Summary:
    OC PLIB Template Implementation

  Description:
    This header file contains template implementations
    For Feature : CompareModeSelect
    and its Variant : Default
    For following APIs :
        PLIB_OC_ModeSelect
        PLIB_OC_ExistsCompareModeSelect

*******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
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

//DOM-IGNORE-END

#ifndef _OC_COMPAREMODESELECT_DEFAULT_H
#define _OC_COMPAREMODESELECT_DEFAULT_H

#include "oc_Registers.h"

//******************************************************************************
/* Function :  OC_ModeSelect_Default

  Summary:
    Implements Default variant of PLIB_OC_ModeSelect 

  Description:
    This template implements the Default variant of the PLIB_OC_ModeSelect function.
*/

PLIB_TEMPLATE void OC_ModeSelect_Default( OC_MODULE_ID index , OC_COMPARE_MODES cmpMode )
{
    volatile oc_register_t *regs = (volatile oc_register_t *)index;

    regs->OCxCON.OCM = cmpMode;
}


//******************************************************************************
/* Function :  OC_ExistsCompareModeSelect_Default

  Summary:
    Implements Default variant of PLIB_OC_ExistsCompareModeSelect

  Description:
    This template implements the Default variant of the PLIB_OC_ExistsCompareModeSelect function.
*/

#define PLIB_OC_ExistsCompareModeSelect PLIB_OC_ExistsCompareModeSelect
PLIB_TEMPLATE bool OC_ExistsCompareModeSelect_Default( OC_MODULE_ID index )
{
    return true;
}


#endif /*_OC_COMPAREMODESELECT_DEFAULT_H*/

/******************************************************************************
 End of File
*/

