###############################################################################
# Makefile for project 
###############################################################################

## General options
PROJECT = 
MCU = 80C51
COMPILER = "ASEM-51 (Proteus)"
TARGET = Debug
SHELL = C:\Windows\system32\cmd.exe

## Tools general options

## Processing Tools
ASM=asem.exe
DDX=ASEMDDX.EXE
#  C:/Users/Administrator/Desktop/组成原理/DICE-CP226（V2）/HSYL007/80C51/Debug/Debug.HEX: TOOL=ASM
#  Post: $(DDX) $(DDXFLAGS) Debug.lst
#     C:/Users/Administrator/Desktop/组成原理/DICE-CP226（V2）/HSYL007/第三组.ASM

# Build tree:
all:	Debug

Debug:	Debug.HEX

Debug.HEX:	../../第三组.ASM 
	$(ASM) "..\..\第三组.ASM" "Debug.HEX" Debug.lst $(ASMFLAGS)  /INCLUDES:"..\..\..\..\..\..\..\..\Program Files (x86)\Labcenter Electronics\Proteus 8 Professional\Tools\ASEM51"
	$(DDX) $(DDXFLAGS) Debug.lst

# tidy - delete all temporary files which are not involved in the target generation
tidy:
	rm -rf Debug.lst

# cleanup - delete all generated files
clean:	tidy
	rm -rf Debug.HEX
	rm -rf Debug.SDI
