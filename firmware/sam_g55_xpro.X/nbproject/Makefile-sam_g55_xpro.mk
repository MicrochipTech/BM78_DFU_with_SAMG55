#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-sam_g55_xpro.mk)" "nbproject/Makefile-local-sam_g55_xpro.mk"
include nbproject/Makefile-local-sam_g55_xpro.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=sam_g55_xpro
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/sam_g55_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/sam_g55_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/BM78_DFU/BM78_DFU.c ../src/BM78_DFU/IS1678_DUAL_SPP_SHADOW_reHex.c ../src/config/sam_g55_xpro/peripheral/clock/plib_clock.c ../src/config/sam_g55_xpro/peripheral/cmcc/plib_cmcc.c ../src/config/sam_g55_xpro/peripheral/efc/plib_efc.c ../src/config/sam_g55_xpro/peripheral/flexcom/usart/plib_flexcom7_usart.c ../src/config/sam_g55_xpro/peripheral/flexcom/usart/plib_flexcom0_usart.c ../src/config/sam_g55_xpro/peripheral/nvic/plib_nvic.c ../src/config/sam_g55_xpro/peripheral/pio/plib_pio.c ../src/config/sam_g55_xpro/stdio/xc32_monitor.c ../src/config/sam_g55_xpro/initialization.c ../src/config/sam_g55_xpro/interrupts.c ../src/config/sam_g55_xpro/exceptions.c ../src/config/sam_g55_xpro/startup_xc32.c ../src/config/sam_g55_xpro/libc_syscalls.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/190501242/BM78_DFU.o ${OBJECTDIR}/_ext/190501242/IS1678_DUAL_SPP_SHADOW_reHex.o ${OBJECTDIR}/_ext/852904278/plib_clock.o ${OBJECTDIR}/_ext/1773602862/plib_cmcc.o ${OBJECTDIR}/_ext/749951358/plib_efc.o ${OBJECTDIR}/_ext/91863110/plib_flexcom7_usart.o ${OBJECTDIR}/_ext/91863110/plib_flexcom0_usart.o ${OBJECTDIR}/_ext/1773939398/plib_nvic.o ${OBJECTDIR}/_ext/749962034/plib_pio.o ${OBJECTDIR}/_ext/383389446/xc32_monitor.o ${OBJECTDIR}/_ext/712618688/initialization.o ${OBJECTDIR}/_ext/712618688/interrupts.o ${OBJECTDIR}/_ext/712618688/exceptions.o ${OBJECTDIR}/_ext/712618688/startup_xc32.o ${OBJECTDIR}/_ext/712618688/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/190501242/BM78_DFU.o.d ${OBJECTDIR}/_ext/190501242/IS1678_DUAL_SPP_SHADOW_reHex.o.d ${OBJECTDIR}/_ext/852904278/plib_clock.o.d ${OBJECTDIR}/_ext/1773602862/plib_cmcc.o.d ${OBJECTDIR}/_ext/749951358/plib_efc.o.d ${OBJECTDIR}/_ext/91863110/plib_flexcom7_usart.o.d ${OBJECTDIR}/_ext/91863110/plib_flexcom0_usart.o.d ${OBJECTDIR}/_ext/1773939398/plib_nvic.o.d ${OBJECTDIR}/_ext/749962034/plib_pio.o.d ${OBJECTDIR}/_ext/383389446/xc32_monitor.o.d ${OBJECTDIR}/_ext/712618688/initialization.o.d ${OBJECTDIR}/_ext/712618688/interrupts.o.d ${OBJECTDIR}/_ext/712618688/exceptions.o.d ${OBJECTDIR}/_ext/712618688/startup_xc32.o.d ${OBJECTDIR}/_ext/712618688/libc_syscalls.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/190501242/BM78_DFU.o ${OBJECTDIR}/_ext/190501242/IS1678_DUAL_SPP_SHADOW_reHex.o ${OBJECTDIR}/_ext/852904278/plib_clock.o ${OBJECTDIR}/_ext/1773602862/plib_cmcc.o ${OBJECTDIR}/_ext/749951358/plib_efc.o ${OBJECTDIR}/_ext/91863110/plib_flexcom7_usart.o ${OBJECTDIR}/_ext/91863110/plib_flexcom0_usart.o ${OBJECTDIR}/_ext/1773939398/plib_nvic.o ${OBJECTDIR}/_ext/749962034/plib_pio.o ${OBJECTDIR}/_ext/383389446/xc32_monitor.o ${OBJECTDIR}/_ext/712618688/initialization.o ${OBJECTDIR}/_ext/712618688/interrupts.o ${OBJECTDIR}/_ext/712618688/exceptions.o ${OBJECTDIR}/_ext/712618688/startup_xc32.o ${OBJECTDIR}/_ext/712618688/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/BM78_DFU/BM78_DFU.c ../src/BM78_DFU/IS1678_DUAL_SPP_SHADOW_reHex.c ../src/config/sam_g55_xpro/peripheral/clock/plib_clock.c ../src/config/sam_g55_xpro/peripheral/cmcc/plib_cmcc.c ../src/config/sam_g55_xpro/peripheral/efc/plib_efc.c ../src/config/sam_g55_xpro/peripheral/flexcom/usart/plib_flexcom7_usart.c ../src/config/sam_g55_xpro/peripheral/flexcom/usart/plib_flexcom0_usart.c ../src/config/sam_g55_xpro/peripheral/nvic/plib_nvic.c ../src/config/sam_g55_xpro/peripheral/pio/plib_pio.c ../src/config/sam_g55_xpro/stdio/xc32_monitor.c ../src/config/sam_g55_xpro/initialization.c ../src/config/sam_g55_xpro/interrupts.c ../src/config/sam_g55_xpro/exceptions.c ../src/config/sam_g55_xpro/startup_xc32.c ../src/config/sam_g55_xpro/libc_syscalls.c ../src/main.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-sam_g55_xpro.mk dist/${CND_CONF}/${IMAGE_TYPE}/sam_g55_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMG55J19
MP_LINKER_FILE_OPTION=,--script="..\src\config\sam_g55_xpro\ATSAMG55J19.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/190501242/BM78_DFU.o: ../src/BM78_DFU/BM78_DFU.c  .generated_files/818de70126c633c1ac6146ca81bb6a8e85c2ecbd.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/190501242" 
	@${RM} ${OBJECTDIR}/_ext/190501242/BM78_DFU.o.d 
	@${RM} ${OBJECTDIR}/_ext/190501242/BM78_DFU.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/190501242/BM78_DFU.o.d" -o ${OBJECTDIR}/_ext/190501242/BM78_DFU.o ../src/BM78_DFU/BM78_DFU.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/190501242/IS1678_DUAL_SPP_SHADOW_reHex.o: ../src/BM78_DFU/IS1678_DUAL_SPP_SHADOW_reHex.c  .generated_files/bfa9dda6a3bdb2c399fa6cd5b993c9d61b62cabc.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/190501242" 
	@${RM} ${OBJECTDIR}/_ext/190501242/IS1678_DUAL_SPP_SHADOW_reHex.o.d 
	@${RM} ${OBJECTDIR}/_ext/190501242/IS1678_DUAL_SPP_SHADOW_reHex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/190501242/IS1678_DUAL_SPP_SHADOW_reHex.o.d" -o ${OBJECTDIR}/_ext/190501242/IS1678_DUAL_SPP_SHADOW_reHex.o ../src/BM78_DFU/IS1678_DUAL_SPP_SHADOW_reHex.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/852904278/plib_clock.o: ../src/config/sam_g55_xpro/peripheral/clock/plib_clock.c  .generated_files/7c2d90e3644857fed84e168a69179f4f5732a2f.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852904278" 
	@${RM} ${OBJECTDIR}/_ext/852904278/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/852904278/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/852904278/plib_clock.o.d" -o ${OBJECTDIR}/_ext/852904278/plib_clock.o ../src/config/sam_g55_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1773602862/plib_cmcc.o: ../src/config/sam_g55_xpro/peripheral/cmcc/plib_cmcc.c  .generated_files/d36e8f34d05de001804270d8ab21b6ccd7a8e500.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1773602862" 
	@${RM} ${OBJECTDIR}/_ext/1773602862/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1773602862/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1773602862/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/1773602862/plib_cmcc.o ../src/config/sam_g55_xpro/peripheral/cmcc/plib_cmcc.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/749951358/plib_efc.o: ../src/config/sam_g55_xpro/peripheral/efc/plib_efc.c  .generated_files/34b36c1bded48df33e7be68484f7652c740c140e.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/749951358" 
	@${RM} ${OBJECTDIR}/_ext/749951358/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/749951358/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/749951358/plib_efc.o.d" -o ${OBJECTDIR}/_ext/749951358/plib_efc.o ../src/config/sam_g55_xpro/peripheral/efc/plib_efc.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/91863110/plib_flexcom7_usart.o: ../src/config/sam_g55_xpro/peripheral/flexcom/usart/plib_flexcom7_usart.c  .generated_files/db38f16c972f7a55438c947ed7f8824759549e97.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/91863110" 
	@${RM} ${OBJECTDIR}/_ext/91863110/plib_flexcom7_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/91863110/plib_flexcom7_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/91863110/plib_flexcom7_usart.o.d" -o ${OBJECTDIR}/_ext/91863110/plib_flexcom7_usart.o ../src/config/sam_g55_xpro/peripheral/flexcom/usart/plib_flexcom7_usart.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/91863110/plib_flexcom0_usart.o: ../src/config/sam_g55_xpro/peripheral/flexcom/usart/plib_flexcom0_usart.c  .generated_files/9ee9f420505fc2966e6ae665f0b244d5b48dbaa0.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/91863110" 
	@${RM} ${OBJECTDIR}/_ext/91863110/plib_flexcom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/91863110/plib_flexcom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/91863110/plib_flexcom0_usart.o.d" -o ${OBJECTDIR}/_ext/91863110/plib_flexcom0_usart.o ../src/config/sam_g55_xpro/peripheral/flexcom/usart/plib_flexcom0_usart.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1773939398/plib_nvic.o: ../src/config/sam_g55_xpro/peripheral/nvic/plib_nvic.c  .generated_files/80539acde77a929f0b3638ba1adab05ef4627afb.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1773939398" 
	@${RM} ${OBJECTDIR}/_ext/1773939398/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1773939398/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1773939398/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1773939398/plib_nvic.o ../src/config/sam_g55_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/749962034/plib_pio.o: ../src/config/sam_g55_xpro/peripheral/pio/plib_pio.c  .generated_files/1b93d50c6c160e8bbf7e69daf43c73a3b545dbf5.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/749962034" 
	@${RM} ${OBJECTDIR}/_ext/749962034/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/749962034/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/749962034/plib_pio.o.d" -o ${OBJECTDIR}/_ext/749962034/plib_pio.o ../src/config/sam_g55_xpro/peripheral/pio/plib_pio.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/383389446/xc32_monitor.o: ../src/config/sam_g55_xpro/stdio/xc32_monitor.c  .generated_files/a4c451f0346f6ddbc2153de9a806f6c1a66c443.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/383389446" 
	@${RM} ${OBJECTDIR}/_ext/383389446/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/383389446/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/383389446/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/383389446/xc32_monitor.o ../src/config/sam_g55_xpro/stdio/xc32_monitor.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/712618688/initialization.o: ../src/config/sam_g55_xpro/initialization.c  .generated_files/fbc9b31e737e6be99a6b43ff8b590dc4fb4851ce.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/712618688" 
	@${RM} ${OBJECTDIR}/_ext/712618688/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/712618688/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/712618688/initialization.o.d" -o ${OBJECTDIR}/_ext/712618688/initialization.o ../src/config/sam_g55_xpro/initialization.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/712618688/interrupts.o: ../src/config/sam_g55_xpro/interrupts.c  .generated_files/66917de335393e83a3e187eb5973870984247caf.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/712618688" 
	@${RM} ${OBJECTDIR}/_ext/712618688/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/712618688/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/712618688/interrupts.o.d" -o ${OBJECTDIR}/_ext/712618688/interrupts.o ../src/config/sam_g55_xpro/interrupts.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/712618688/exceptions.o: ../src/config/sam_g55_xpro/exceptions.c  .generated_files/c2c6f59452a89799b50402d58a4504f32e1be6cf.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/712618688" 
	@${RM} ${OBJECTDIR}/_ext/712618688/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/712618688/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/712618688/exceptions.o.d" -o ${OBJECTDIR}/_ext/712618688/exceptions.o ../src/config/sam_g55_xpro/exceptions.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/712618688/startup_xc32.o: ../src/config/sam_g55_xpro/startup_xc32.c  .generated_files/3698088b52744191a6af489e3d23dbd17203d0b6.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/712618688" 
	@${RM} ${OBJECTDIR}/_ext/712618688/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/712618688/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/712618688/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/712618688/startup_xc32.o ../src/config/sam_g55_xpro/startup_xc32.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/712618688/libc_syscalls.o: ../src/config/sam_g55_xpro/libc_syscalls.c  .generated_files/ffbea4ca2aa6890520db233b763f822caf5d42ef.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/712618688" 
	@${RM} ${OBJECTDIR}/_ext/712618688/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/712618688/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/712618688/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/712618688/libc_syscalls.o ../src/config/sam_g55_xpro/libc_syscalls.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/bf59e8eadb75764584580188069bc6a80a610e15.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/190501242/BM78_DFU.o: ../src/BM78_DFU/BM78_DFU.c  .generated_files/d656a9b3ee0d17a002ee5fc1be96258c372695d3.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/190501242" 
	@${RM} ${OBJECTDIR}/_ext/190501242/BM78_DFU.o.d 
	@${RM} ${OBJECTDIR}/_ext/190501242/BM78_DFU.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/190501242/BM78_DFU.o.d" -o ${OBJECTDIR}/_ext/190501242/BM78_DFU.o ../src/BM78_DFU/BM78_DFU.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/190501242/IS1678_DUAL_SPP_SHADOW_reHex.o: ../src/BM78_DFU/IS1678_DUAL_SPP_SHADOW_reHex.c  .generated_files/b8717d93dd1cd1997b8c13bcf43952cbfec1cc7b.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/190501242" 
	@${RM} ${OBJECTDIR}/_ext/190501242/IS1678_DUAL_SPP_SHADOW_reHex.o.d 
	@${RM} ${OBJECTDIR}/_ext/190501242/IS1678_DUAL_SPP_SHADOW_reHex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/190501242/IS1678_DUAL_SPP_SHADOW_reHex.o.d" -o ${OBJECTDIR}/_ext/190501242/IS1678_DUAL_SPP_SHADOW_reHex.o ../src/BM78_DFU/IS1678_DUAL_SPP_SHADOW_reHex.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/852904278/plib_clock.o: ../src/config/sam_g55_xpro/peripheral/clock/plib_clock.c  .generated_files/e7f20516fea5b6882d3fb6d6e55c55b8cde69991.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852904278" 
	@${RM} ${OBJECTDIR}/_ext/852904278/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/852904278/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/852904278/plib_clock.o.d" -o ${OBJECTDIR}/_ext/852904278/plib_clock.o ../src/config/sam_g55_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1773602862/plib_cmcc.o: ../src/config/sam_g55_xpro/peripheral/cmcc/plib_cmcc.c  .generated_files/6750ed4637909c380712829d768aa86044c3220e.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1773602862" 
	@${RM} ${OBJECTDIR}/_ext/1773602862/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1773602862/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1773602862/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/1773602862/plib_cmcc.o ../src/config/sam_g55_xpro/peripheral/cmcc/plib_cmcc.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/749951358/plib_efc.o: ../src/config/sam_g55_xpro/peripheral/efc/plib_efc.c  .generated_files/dcb251073fe2e41a0e9578ca741de29a0add9a5d.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/749951358" 
	@${RM} ${OBJECTDIR}/_ext/749951358/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/749951358/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/749951358/plib_efc.o.d" -o ${OBJECTDIR}/_ext/749951358/plib_efc.o ../src/config/sam_g55_xpro/peripheral/efc/plib_efc.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/91863110/plib_flexcom7_usart.o: ../src/config/sam_g55_xpro/peripheral/flexcom/usart/plib_flexcom7_usart.c  .generated_files/1240da2dade52c6cf4f43c49754c06cd49f03d99.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/91863110" 
	@${RM} ${OBJECTDIR}/_ext/91863110/plib_flexcom7_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/91863110/plib_flexcom7_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/91863110/plib_flexcom7_usart.o.d" -o ${OBJECTDIR}/_ext/91863110/plib_flexcom7_usart.o ../src/config/sam_g55_xpro/peripheral/flexcom/usart/plib_flexcom7_usart.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/91863110/plib_flexcom0_usart.o: ../src/config/sam_g55_xpro/peripheral/flexcom/usart/plib_flexcom0_usart.c  .generated_files/d89309bb1b6b264a9aee51b22939f09e9649ef56.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/91863110" 
	@${RM} ${OBJECTDIR}/_ext/91863110/plib_flexcom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/91863110/plib_flexcom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/91863110/plib_flexcom0_usart.o.d" -o ${OBJECTDIR}/_ext/91863110/plib_flexcom0_usart.o ../src/config/sam_g55_xpro/peripheral/flexcom/usart/plib_flexcom0_usart.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1773939398/plib_nvic.o: ../src/config/sam_g55_xpro/peripheral/nvic/plib_nvic.c  .generated_files/c4ca913ca9aeb796342c1d490ee23465ab13e05f.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1773939398" 
	@${RM} ${OBJECTDIR}/_ext/1773939398/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1773939398/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1773939398/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1773939398/plib_nvic.o ../src/config/sam_g55_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/749962034/plib_pio.o: ../src/config/sam_g55_xpro/peripheral/pio/plib_pio.c  .generated_files/f77eeb68ac451dd021fd2f938976956a549c000c.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/749962034" 
	@${RM} ${OBJECTDIR}/_ext/749962034/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/749962034/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/749962034/plib_pio.o.d" -o ${OBJECTDIR}/_ext/749962034/plib_pio.o ../src/config/sam_g55_xpro/peripheral/pio/plib_pio.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/383389446/xc32_monitor.o: ../src/config/sam_g55_xpro/stdio/xc32_monitor.c  .generated_files/64ce5030ef12fc5aa8dfdf2106170636ca23f6c4.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/383389446" 
	@${RM} ${OBJECTDIR}/_ext/383389446/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/383389446/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/383389446/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/383389446/xc32_monitor.o ../src/config/sam_g55_xpro/stdio/xc32_monitor.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/712618688/initialization.o: ../src/config/sam_g55_xpro/initialization.c  .generated_files/4b31a40ee8ead46746c8f49affad25b5040c4252.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/712618688" 
	@${RM} ${OBJECTDIR}/_ext/712618688/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/712618688/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/712618688/initialization.o.d" -o ${OBJECTDIR}/_ext/712618688/initialization.o ../src/config/sam_g55_xpro/initialization.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/712618688/interrupts.o: ../src/config/sam_g55_xpro/interrupts.c  .generated_files/a7d866e9164118a113c0297dd180b383d3a8f367.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/712618688" 
	@${RM} ${OBJECTDIR}/_ext/712618688/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/712618688/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/712618688/interrupts.o.d" -o ${OBJECTDIR}/_ext/712618688/interrupts.o ../src/config/sam_g55_xpro/interrupts.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/712618688/exceptions.o: ../src/config/sam_g55_xpro/exceptions.c  .generated_files/c4bbda82b451c53af2f1b8da900a5860f5819fa7.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/712618688" 
	@${RM} ${OBJECTDIR}/_ext/712618688/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/712618688/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/712618688/exceptions.o.d" -o ${OBJECTDIR}/_ext/712618688/exceptions.o ../src/config/sam_g55_xpro/exceptions.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/712618688/startup_xc32.o: ../src/config/sam_g55_xpro/startup_xc32.c  .generated_files/8334fb99a4a39544e310a269f8aafbeda21f64b9.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/712618688" 
	@${RM} ${OBJECTDIR}/_ext/712618688/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/712618688/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/712618688/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/712618688/startup_xc32.o ../src/config/sam_g55_xpro/startup_xc32.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/712618688/libc_syscalls.o: ../src/config/sam_g55_xpro/libc_syscalls.c  .generated_files/4cfd39a61cc36bf3087ef11547ab9176c7dc211f.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/712618688" 
	@${RM} ${OBJECTDIR}/_ext/712618688/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/712618688/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/712618688/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/712618688/libc_syscalls.o ../src/config/sam_g55_xpro/libc_syscalls.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/c70b1537fe043c732557851c1822e532fc32f62e.flag .generated_files/d8d7dde95e52afbd4eb4f1d68598874897740d33.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_g55_xpro" -I"../src/packs/ATSAMG55J19_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/samg55" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/sam_g55_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/sam_g55_xpro/ATSAMG55J19.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/sam_g55_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/samg55"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/sam_g55_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/sam_g55_xpro/ATSAMG55J19.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/sam_g55_xpro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_g55_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/samg55"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/sam_g55_xpro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/sam_g55_xpro
	${RM} -r dist/sam_g55_xpro
