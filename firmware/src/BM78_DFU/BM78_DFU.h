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

#ifndef _BM78_DFU_H    /* Guard against multiple inclusion */
#define _BM78_DFU_H


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */

/* TODO:  Include other files here if needed. */


/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif

#include "HW_IF.h"
    
#ifndef u32
    typedef unsigned long u32;
#endif
#ifndef s32
    typedef signed long s32;
#endif
    
#ifndef u16
    typedef unsigned short u16;
#endif
#ifndef s16
    typedef signed short s16;
#endif
    
#ifndef u8
    typedef unsigned char u8;
#endif
#ifndef s8
    typedef signed char s8;
#endif

    typedef enum {
        DFU_INIT = 0,
        DFU_SET_FLASH,
        DFU_GET_FLASH,
        DFU_FLASH_ERASE,
        DFU_FLASH_WRITE,
        DFU_BANK_SWITCH,
        DFU_SUCCESS,
        DFU_FAIL,
    } DFU_STATE;

    bool BM78_DFU(void);

/* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _BM78_DFU_H */

/* *****************************************************************************
 End of File
 */
