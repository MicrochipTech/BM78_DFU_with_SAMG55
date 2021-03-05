/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    BM78_DFU.c

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

#include <stdio.h> 
#include <stdbool.h>
#include "BM78_DFU.h"

typedef enum{
    UART_NONE_ERROR = 0,
    UART_TIME_OUT,
    UART_OVER_FLOW,
    UART_ERROR,
}UART_STATUS;

extern const unsigned char IS1678_reHex[];
extern const unsigned long IS1678_reHex_size;
#define BANK_SIZE    (64*1024)

u8* image[] ={
    (u8*)IS1678_reHex,
};

u32* image_size[] ={
    (u32*)&IS1678_reHex_size
};

#define LEN_PAYLOAD_MAX 32
#define LEN_CRC         2
u8  payload[1+LEN_PAYLOAD_MAX];//opcode + data
u8  cmd_buf[3+LEN_PAYLOAD_MAX*2+LEN_CRC*2+2];//*2; in case the payload and crc are encoded with 0x3c
u8  rsp_buf[128];
u16 flash_id = 0x0000; //debug purpose only
/* ************************************************************************** */
/* ************************************************************************** */
/* Section: File Scope or Global Data                                         */
/* ************************************************************************** */
//---------------------------------------------------------------------------
static const u16 crc_table[256] = {
0x0000,  0x1021,  0x2042,  0x3063,  0x4084,  0x50A5,  0x60C6,  0x70E7,
0x8108,  0x9129,  0xA14A,  0xB16B,  0xC18C,  0xD1AD,  0xE1CE,  0xF1EF,
0x1231,  0x0210,  0x3273,  0x2252,  0x52B5,  0x4294,  0x72F7,  0x62D6,
0x9339,  0x8318,  0xB37B,  0xA35A,  0xD3BD,  0xC39C,  0xF3FF,  0xE3DE,
0x2462,  0x3443,  0x0420,  0x1401,  0x64E6,  0x74C7,  0x44A4,  0x5485,
0xA56A,  0xB54B,  0x8528,  0x9509,  0xE5EE,  0xF5CF,  0xC5AC,  0xD58D,
0x3653,  0x2672,  0x1611,  0x0630,  0x76D7,  0x66F6,  0x5695,  0x46B4,
0xB75B,  0xA77A,  0x9719,  0x8738,  0xF7DF,  0xE7FE,  0xD79D,  0xC7BC,
0x48C4,  0x58E5,  0x6886,  0x78A7,  0x0840,  0x1861,  0x2802,  0x3823,
0xC9CC,  0xD9ED,  0xE98E,  0xF9AF,  0x8948,  0x9969,  0xA90A,  0xB92B,
0x5AF5,  0x4AD4,  0x7AB7,  0x6A96,  0x1A71,  0x0A50,  0x3A33,  0x2A12,
0xDBFD,  0xCBDC,  0xFBBF,  0xEB9E,  0x9B79,  0x8B58,  0xBB3B,  0xAB1A,
0x6CA6,  0x7C87,  0x4CE4,  0x5CC5,  0x2C22,  0x3C03,  0x0C60,  0x1C41,
0xEDAE,  0xFD8F,  0xCDEC,  0xDDCD,  0xAD2A,  0xBD0B,  0x8D68,  0x9D49,
0x7E97,  0x6EB6,  0x5ED5,  0x4EF4,  0x3E13,  0x2E32,  0x1E51,  0x0E70,
0xFF9F,  0xEFBE,  0xDFDD,  0xCFFC,  0xBF1B,  0xAF3A,  0x9F59,  0x8F78,
0x9188,  0x81A9,  0xB1CA,  0xA1EB,  0xD10C,  0xC12D,  0xF14E,  0xE16F,
0x1080,  0x00A1,  0x30C2,  0x20E3,  0x5004,  0x4025,  0x7046,  0x6067,
0x83B9,  0x9398,  0xA3FB,  0xB3DA,  0xC33D,  0xD31C,  0xE37F,  0xF35E,
0x02B1,  0x1290,  0x22F3,  0x32D2,  0x4235,  0x5214,  0x6277,  0x7256,
0xB5EA,  0xA5CB,  0x95A8,  0x8589,  0xF56E,  0xE54F,  0xD52C,  0xC50D,
0x34E2,  0x24C3,  0x14A0,  0x0481,  0x7466,  0x6447,  0x5424,  0x4405,
0xA7DB,  0xB7FA,  0x8799,  0x97B8,  0xE75F,  0xF77E,  0xC71D,  0xD73C,
0x26D3,  0x36F2,  0x0691,  0x16B0,  0x6657,  0x7676,  0x4615,  0x5634,
0xD94C,  0xC96D,  0xF90E,  0xE92F,  0x99C8,  0x89E9,  0xB98A,  0xA9AB,
0x5844,  0x4865,  0x7806,  0x6827,  0x18C0,  0x08E1,  0x3882,  0x28A3,
0xCB7D,  0xDB5C,  0xEB3F,  0xFB1E,  0x8BF9,  0x9BD8,  0xABBB,  0xBB9A,
0x4A75,  0x5A54,  0x6A37,  0x7A16,  0x0AF1,  0x1AD0,  0x2AB3,  0x3A92,
0xFD2E,  0xED0F,  0xDD6C,  0xCD4D,  0xBDAA,  0xAD8B,  0x9DE8,  0x8DC9,
0x7C26,  0x6C07,  0x5C64,  0x4C45,  0x3CA2,  0x2C83,  0x1CE0,  0x0CC1,
0xEF1F,  0xFF3E,  0xCF5D,  0xDF7C,  0xAF9B,  0xBFBA,  0x8FD9,  0x9FF8,
0x6E17,  0x7E36,  0x4E55,  0x5E74,  0x2E93,  0x3EB2,  0x0ED1,  0x1EF0
};

//---------------------------------------------------------------------------
u16 crc_calc(const u8 * ptr, const u32 count)
{
    u32 i = 0;
    u16 crc = 0;
    for (i = 0; i < count; ++i) {
        crc = crc_table[crc >> 8] ^ (crc << 8) ^ ptr[i];
    }
    return crc;
}

//timeout_ms: 0 never timeout
//---------------------------------------------------------------------------
UART_STATUS BM78_DFU_ReadResponse(u8* p_buf, u16 sz, s16 timeout_ms/*, DFU_STATE dfu_state*/){
    bool ret = false;
    UART_STATUS res = UART_NONE_ERROR;
    u16 rxCounter = 0;
    
    if( p_buf == NULL || sz == 0)
        return UART_OVER_FLOW;

    do {
        if (UART_RX_READY() == true) {
            UART_RX(&p_buf[rxCounter], 1);

            if ((p_buf[rxCounter] == 0x33) || (p_buf[rxCounter] == 0x55) || (p_buf[rxCounter] == 0x5A)) {
                ret = true;
                res = UART_NONE_ERROR;
            }
            
            if(++rxCounter>sz){
                ret = true;
                res = UART_OVER_FLOW;
            }
        }
        else if(timeout_ms !=0){
            UART_DELAY_10ms();
            timeout_ms -= 10;
            
            if(timeout_ms<=0){
                ret = true;
                res = UART_TIME_OUT;
            }
        }
    } while (ret == false);
    
    return res;
}

/* ************************************************************************** */
bool BM78_DFU(void) {
    bool ret = false, res = false;
    DFU_STATE dfu_state = DFU_INIT;
    UART_STATUS uart_status = UART_NONE_ERROR;
    u16 index = 0, crc16 = 0;
    
    u8  bank_num = *image_size[0]/BANK_SIZE;
    u8  bank_id = 0;
    u8* bank = NULL;
    u32 size = 0;
    u32 offset = 0; //max value is 65536 that can't be presented in u16
    u16 len = 0, i = 0, j = 0;
    u8 c = 0;
    
    do {
        switch (dfu_state) {
            case DFU_INIT:
                UART_INIT();
                //UART_TX((void *)"\r\n DFU starting...", sizeof("\r\n DFU starting..."));
                //set flash mode for FLASH DFU
                SET_BM78_FLASH_MODE();
                RESET_BM78();
                dfu_state = DFU_SET_FLASH;
                break;

            case DFU_SET_FLASH:
                memset(cmd_buf, 0, sizeof(cmd_buf));
                index = 0;
                cmd_buf[index++] = 0x3c;
                cmd_buf[index++] = 0x66;
                cmd_buf[index++] = 0x70;
                cmd_buf[index++] = 0x01;
                
                crc16 = crc_calc(&cmd_buf[2], 2);
                //store crc16 in big endian
                cmd_buf[index++] = (u8)(crc16>>8);
                if( (u8)(crc16>>8) ==0x3c )
                    cmd_buf[index++] = 0x3c;
                
                cmd_buf[index++] = (u8)(crc16&0x00ff);
                if( (u8)(crc16&0x00ff) ==0x3c )
                    cmd_buf[index++] = 0x3c;
                
                cmd_buf[index++] = 0x3c;
                cmd_buf[index++] = 0x5a;
                
                //send packet
                UART_TX(cmd_buf, index);
                //get response 
                memset(rsp_buf, 0, sizeof(rsp_buf));
                uart_status = BM78_DFU_ReadResponse(rsp_buf, sizeof(rsp_buf), 0);
                if (uart_status != UART_NONE_ERROR) {
                    dfu_state = DFU_FAIL;
                    break;
                } else if (((u16) (rsp_buf[0] << 8) | rsp_buf[1]) == 0x3c55) {
                    dfu_state = DFU_FAIL;
                    break;
                }
                else
                    dfu_state = DFU_GET_FLASH;
                
                break;
                
            case DFU_GET_FLASH:
                memset(cmd_buf, 0, sizeof(cmd_buf));
                index = 0;
                cmd_buf[index++] = 0x3c;
                cmd_buf[index++] = 0x66;
                cmd_buf[index++] = 0x50;
                
                crc16 = crc_calc(&cmd_buf[2], 1);
                //store crc16 in big endian
                cmd_buf[index++] = (u8)(crc16>>8);
                if( (u8)(crc16>>8) ==0x3c )
                    cmd_buf[index++] = 0x3c;
                
                cmd_buf[index++] = (u8)(crc16&0x00ff);
                if( (u8)(crc16&0x00ff) ==0x3c )
                    cmd_buf[index++] = 0x3c;
                
                cmd_buf[index++] = 0x3c;
                cmd_buf[index++] = 0x5a;
                
                //send packet
                UART_TX(cmd_buf, index);
                //get response 
                memset(rsp_buf, 0, sizeof(rsp_buf));
                uart_status = BM78_DFU_ReadResponse(rsp_buf, sizeof(rsp_buf), 0);
                if (uart_status != UART_NONE_ERROR) {
                    dfu_state = DFU_FAIL;
                    break;
                } else if (((u16) (rsp_buf[0] << 8) | rsp_buf[1]) == 0x3c55) {
                    dfu_state = DFU_FAIL;
                    break;
                }
                
                //get event 
                memset(rsp_buf, 0, sizeof(rsp_buf));
                uart_status = BM78_DFU_ReadResponse(rsp_buf, sizeof(rsp_buf), 0);
                if( uart_status == UART_NONE_ERROR ){
                    flash_id = (rsp_buf[3]<<8);
                    
                    if(rsp_buf[3] == 0x3c)
                        flash_id |= rsp_buf[5]; //escape 0x3c at rsp_buf[4]
                    else
                        flash_id |= rsp_buf[4];
                    
                    dfu_state = DFU_FLASH_ERASE;
                }
                else
                    dfu_state = DFU_FAIL;
                
                //send event response
                memset(cmd_buf, 0, sizeof(cmd_buf));
                index = 0;
                cmd_buf[index++] = 0x3c;
                cmd_buf[index++] = 0x33;
                UART_TX(cmd_buf, index);
                
                break;
                
            case DFU_FLASH_ERASE:
                memset(cmd_buf, 0, sizeof(cmd_buf));
                index = 0;
                cmd_buf[index++] = 0x3c;
                cmd_buf[index++] = 0x66;
                cmd_buf[index++] = 0x51;
                
                crc16 = crc_calc(&cmd_buf[2], 1);
                //store crc16 in big endian
                cmd_buf[index++] = (u8)(crc16>>8);
                if( (u8)(crc16>>8) ==0x3c )
                    cmd_buf[index++] = 0x3c;
                
                cmd_buf[index++] = (u8)(crc16&0x00ff);
                if( (u8)(crc16&0x00ff) ==0x3c )
                    cmd_buf[index++] = 0x3c;
                
                cmd_buf[index++] = 0x3c;
                cmd_buf[index++] = 0x5a;
                
                //send packet
                UART_TX(cmd_buf, index);
                //get response 
                memset(rsp_buf, 0, sizeof(rsp_buf));
                uart_status = BM78_DFU_ReadResponse(rsp_buf, sizeof(rsp_buf), 0);
                if (uart_status != UART_NONE_ERROR) {
                    dfu_state = DFU_FAIL;
                    break;
                } else if (((u16) (rsp_buf[0] << 8) | rsp_buf[1]) == 0x3c55) {
                    dfu_state = DFU_FAIL;
                    break;
                }
                
                //get event: the same 0x51 will be returned 
                memset(rsp_buf, 0, sizeof(rsp_buf));
                uart_status = BM78_DFU_ReadResponse(rsp_buf, sizeof(rsp_buf), 0);
                if( uart_status == UART_NONE_ERROR ){                    
                    dfu_state = DFU_BANK_SWITCH;
                }
                else
                    dfu_state = DFU_FAIL;
                
                //send event response
                memset(cmd_buf, 0, sizeof(cmd_buf));
                index = 0;
                cmd_buf[index++] = 0x3c;
                cmd_buf[index++] = 0x33;
                UART_TX(cmd_buf, index);
                
                break;
                
            case DFU_BANK_SWITCH:               
                memset(cmd_buf, 0, sizeof(cmd_buf));
                index = 0;
                cmd_buf[index++] = 0x3c;
                cmd_buf[index++] = 0x66;
                cmd_buf[index++] = 0x63;
                cmd_buf[index++] = bank_id;
                
                crc16 = crc_calc(&cmd_buf[2], 2);
                //store crc16 in big endian
                cmd_buf[index++] = (u8)(crc16>>8);
                if( (u8)(crc16>>8) ==0x3c )
                    cmd_buf[index++] = 0x3c;
                
                cmd_buf[index++] = (u8)(crc16&0x00ff);
                if( (u8)(crc16&0x00ff) ==0x3c )
                    cmd_buf[index++] = 0x3c;
                
                cmd_buf[index++] = 0x3c;
                cmd_buf[index++] = 0x5a;
                
                //send packet
                UART_TX(cmd_buf, index);
                //get response 
                memset(rsp_buf, 0, sizeof(rsp_buf));
                uart_status = BM78_DFU_ReadResponse(rsp_buf, sizeof(rsp_buf), 0);
                if (uart_status != UART_NONE_ERROR) {
                    dfu_state = DFU_FAIL;
                    break;
                } else if (((u16) (rsp_buf[0] << 8) | rsp_buf[1]) == 0x3c55) {
                    dfu_state = DFU_FAIL;
                    break;
                }
                
                //get event: the same 0x63 will be returned 
                memset(rsp_buf, 0, sizeof(rsp_buf));
                uart_status = BM78_DFU_ReadResponse(rsp_buf, sizeof(rsp_buf), 0);
                if( uart_status == UART_NONE_ERROR ){
                    dfu_state = DFU_FLASH_WRITE;
                }
                else
                    dfu_state = DFU_FAIL;
                
                //send event response
                memset(cmd_buf, 0, sizeof(cmd_buf));
                index = 0;
                cmd_buf[index++] = 0x3c;
                cmd_buf[index++] = 0x33;
                UART_TX(cmd_buf, index);
                break;
                
            case DFU_FLASH_WRITE:
                //send hex data
                bank = image[0] + bank_id*BANK_SIZE;
                size = BANK_SIZE;
                offset = 0;
                len = 0;
                i = 0;
                /*
                c = c; j = j; i=i; len = len; offset = offset; size = size; bank = bank;
                */
                do {
                    memset(cmd_buf, 0, sizeof (cmd_buf));
                    memset(payload, 0, sizeof (payload));
                    index = 0;j =0;
                    cmd_buf[index++] = 0x3c;
                    cmd_buf[index++] = 0x66;
                    cmd_buf[index++] = 0x45;
                    payload[j++]     = 0x45;
                    
                    
                    cmd_buf[index++] = (u8)(offset>>8);
                    payload[j++]     = (u8)(offset>>8);
                    if( (u8)(offset>>8) == 0x3c )
                            cmd_buf[index++] = 0x3c;// escape 0x3c if it is the case
                    
                    cmd_buf[index++] = (u8)(offset&0x00ff);
                    payload[j++]     = (u8)(offset&0x00ff);
                    if( (u8)(offset&0x00ff) == 0x3c )
                            cmd_buf[index++] = 0x3c;// escape 0x3c if it is the case
                    
                    if((offset + LEN_PAYLOAD_MAX)<size)
                        len = LEN_PAYLOAD_MAX;
                    else
                        len = size - offset; //the residue data length
                    
                    for(i=0;i<len;i++){
                        //fill a block of image
                        c = bank[offset++];
                        cmd_buf[index++] = c;
                        payload[j++]     = c;
                        
                        if( c == 0x3c )
                            cmd_buf[index++] = 0x3c;// escape 0x3c if it is the case
                    }

                    crc16 = crc_calc(payload, j);
                    //store crc16 in big endian
                    cmd_buf[index++] = (u8) (crc16 >> 8);
                    if ((u8) (crc16 >> 8) == 0x3c)
                        cmd_buf[index++] = 0x3c;

                    cmd_buf[index++] = (u8) (crc16 & 0x00ff);
                    if ((u8) (crc16 & 0x00ff) == 0x3c)
                        cmd_buf[index++] = 0x3c;

                    cmd_buf[index++] = 0x3c;
                    cmd_buf[index++] = 0x5a;

                    //send packet
                    UART_TX(cmd_buf, index);
                    //get response 
                    memset(rsp_buf, 0, sizeof (rsp_buf));
                    uart_status = BM78_DFU_ReadResponse(rsp_buf, sizeof(rsp_buf), 0);
                    if (uart_status != UART_NONE_ERROR){
                        dfu_state = DFU_FAIL;
                        break;
                    }
                    else if( ((u16)(rsp_buf[0]<<8) | rsp_buf[1]) == 0x3c55 ){
                        dfu_state = DFU_FAIL;
                        break;
                    }

                    //get event: the same 0x63 will be returned 
                    memset(rsp_buf, 0, sizeof (rsp_buf));
                    uart_status = BM78_DFU_ReadResponse(rsp_buf, sizeof(rsp_buf), 0);
                    if (uart_status == UART_NONE_ERROR) {
                        dfu_state = DFU_FLASH_WRITE;
                    } else
                        dfu_state = DFU_FAIL;

                    //send event response
                    memset(cmd_buf, 0, sizeof (cmd_buf));
                    index = 0;
                    cmd_buf[index++] = 0x3c;
                    cmd_buf[index++] = 0x33;
                    UART_TX(cmd_buf, index);
                    
                }while( (offset<size) && (dfu_state == DFU_FLASH_WRITE) );
                
                if( dfu_state ==  DFU_FLASH_WRITE ) {
                    bank_id++;
                    if (bank_id >= bank_num)
                        dfu_state = DFU_SUCCESS;
                    else
                        dfu_state = DFU_BANK_SWITCH;
                }
                
                break;
                
            case DFU_SUCCESS:
                SET_BM78_APP_MODE();
                RESET_BM78();
                dfu_state = DFU_SUCCESS;
                ret = true;
                res = true;
                break;
            
            case DFU_FAIL:
                SET_BM78_APP_MODE();
                RESET_BM78();
                dfu_state = DFU_FAIL;
                ret = true;
                res = false;
                break;

            default:
                break;
        }
    } while (ret == false);
    
    return res;
}

/* *****************************************************************************
 End of File
 */
