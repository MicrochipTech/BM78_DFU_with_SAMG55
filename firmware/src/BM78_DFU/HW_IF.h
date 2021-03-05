/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#ifndef _HW_IF_H    /* Guard against multiple inclusion */
#define _HW_IF_H


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */

/* TODO:  Include other files here if needed. */

#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <stdio.h> 
#include <string.h>
#include "definitions.h"                // SYS function prototypes

/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif


    /* ************************************************************************** */
    /* ************************************************************************** */
    /* Section: Constants                                                         */
    /* ************************************************************************** */
    /* ************************************************************************** */

    /*  A brief description of a section can be given directly below the section
        banner.
     */


    /* ************************************************************************** */
    /** Descriptive Constant Name

      @Summary
        Brief one-line summary of the constant.
    
      @Description
        Full description, explaining the purpose and usage of the constant.
        <p>
        Additional description in consecutive paragraphs separated by HTML 
        paragraph breaks, as necessary.
        <p>
        Type "JavaDoc" in the "How Do I?" IDE toolbar for more information on tags.
    
      @Remarks
        Any additional remarks
     */

#define RESET_BM78( )              do{}while(0)    
#define SET_BM78_FLASH_MODE( )     do{}while(0)
#define SET_BM78_EEPROM_MODE( )    do{}while(0)
#define SET_BM78_APP_MODE( )       do{}while(0)
    
#define UART_INIT()                 FLEXCOM0_USART_Initialize()
#define UART_RX_READY()             FLEXCOM0_USART_ReceiverIsReady()
#define UART_RX( buffer, size )     FLEXCOM0_USART_Read( buffer, size )
#define UART_TX( buffer, size )     FLEXCOM0_USART_Write( buffer, size )
#define UART_DELAY_10ms( )          do{}while(0)


    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _HW_IF_H */

/* *****************************************************************************
 End of File
 */
