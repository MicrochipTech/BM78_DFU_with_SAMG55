/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include "BM78_DFU/BM78_DFU.h"

#define RX_BUFFER_SIZE 255
#define LED_On()                        LED_Clear()
#define LED_Off()                       LED_Set()

char messageStart[] = "\r\n**** BM78 UART DFU demo ****\r\n\
**** input yes to start...";
char newline[] = "\r\n";
char errorMessage[] = "\r\n**** FLEXCOM USART error has occurred ****\r\n";
char receiveBuffer[RX_BUFFER_SIZE];
uint8_t rxCounter = 0;
char data = 0;

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************
//
static void echoByte(unsigned char c)
{
    FLEXCOM7_USART_Write(&c,1);
}

int main ( void )
{
    bool res_dfu = false;
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    LED_On();

    /* Send start message */
    FLEXCOM7_USART_Write(&messageStart, sizeof(messageStart));
    memset(receiveBuffer, 0, sizeof(receiveBuffer));
    rxCounter = 0;

    while ( true )
    {
        /* Check if there is a received character */
        if(FLEXCOM7_USART_ReceiverIsReady() == true)
        {
            if(FLEXCOM7_USART_ErrorGet() == FLEXCOM_USART_ERROR_NONE)
            {
                FLEXCOM7_USART_Read(&data, 1);
                LED_Toggle();

                if((data == '\n') || (data == '\r'))
                {
                    echoByte('\n');echoByte('\r');
                    
                    receiveBuffer[rxCounter] = 0; //null string
                    if( strcmp(receiveBuffer, "yes") == 0){
                        FLEXCOM7_USART_Write((void *)"\r\n DFU starting...", sizeof("\r\n DFU starting..."));
                        memset(receiveBuffer, 0, sizeof(receiveBuffer));
                        rxCounter = 0;
                        
                        //DFU                    
                        res_dfu = BM78_DFU();
                        if(res_dfu){
                            LED_On();
                            FLEXCOM7_USART_Write((void *)"\r\n DFU SUCCEEDED.", sizeof("\r\n DFU SUCCEEDED."));
                        }                            
                        else{
                            LED_Off();
                            FLEXCOM7_USART_Write((void *)"\r\n DFU FAILED.", sizeof("\r\n DFU FAILED."));
                        }
                    }
                    else{
                        FLEXCOM7_USART_Write(&messageStart, sizeof(messageStart));
                        memset(receiveBuffer, 0, sizeof(receiveBuffer));
                        rxCounter = 0;
                    }   
                }
                else
                {
                    receiveBuffer[rxCounter++] = data;
                    echoByte(data);
                    
                    if(rxCounter == RX_BUFFER_SIZE)
                      rxCounter = 0;
                }
            }
            else
            {
                FLEXCOM7_USART_Write(errorMessage,sizeof(errorMessage));
            }
        }
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

