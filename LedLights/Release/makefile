################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ..\makefile.init

RM := del 

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include libraries\SoftwareSerial\src\subdir.mk
-include libraries\SoftwareSerial\examples\TwoPortReceive\subdir.mk
-include libraries\SoftwareSerial\examples\SoftwareSerialExample\subdir.mk
-include libraries\ITEADLIB_Arduino_WeeESP8266-master\examples\UDPClientSingle\subdir.mk
-include libraries\ITEADLIB_Arduino_WeeESP8266-master\examples\UDPClientMultiple\subdir.mk
-include libraries\ITEADLIB_Arduino_WeeESP8266-master\examples\TCPServer\subdir.mk
-include libraries\ITEADLIB_Arduino_WeeESP8266-master\examples\TCPClientSingleUNO\subdir.mk
-include libraries\ITEADLIB_Arduino_WeeESP8266-master\examples\TCPClientSingle\subdir.mk
-include libraries\ITEADLIB_Arduino_WeeESP8266-master\examples\TCPClientMultiple\subdir.mk
-include libraries\ITEADLIB_Arduino_WeeESP8266-master\examples\HTTPGET\subdir.mk
-include libraries\ITEADLIB_Arduino_WeeESP8266-master\examples\ConnectWiFi\subdir.mk
-include libraries\ITEADLIB_Arduino_WeeESP8266-master\subdir.mk
-include core\core\subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ..\makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
AR += \
D:\git\arduino-led-lights\LedLights\Release\arduino.ar \

ELF += \
LedLights.elf \

HEX += \
LedLights.hex \


# All Target
all: LedLights

# Tool invocations
LedLights: $(HEX)
	@echo 'Building target: $@'
	@echo 'Printing size:'
	"D:\eclipse_photon\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-size" -A "D:/git/arduino-led-lights/LedLights/Release/LedLights.elf"
	@echo 'Finished building target: $@'
	@echo ' '

D:\git\arduino-led-lights\LedLights\Release\arduino.ar: $(AR_OBJ)
	@echo 'Starting archiver'
	"D:\eclipse_photon\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-gcc-ar" rcs    D:/git/arduino-led-lights/LedLights/Release/arduino.ar $(AR_OBJ)
	@echo 'Finished building: $@'
	@echo ' '

LedLights.elf: $(LINK_OBJ) $(AR)
	@echo 'Starting combiner'
	"D:\eclipse_photon\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-gcc" -Wall -Wextra -Os -g -flto -fuse-linker-plugin -Wl,--gc-sections -mmcu=atmega328p -o "D:\git\arduino-led-lights\LedLights/Release/LedLights.elf"   $(LINK_OBJ)   D:/git/arduino-led-lights/LedLights/Release/arduino.ar  "-LD:\git\arduino-led-lights\LedLights/Release" -lm
	@echo 'Finished building: $@'
	@echo ' '

LedLights.hex: $(ELF)
	@echo 'Create eeprom image'
	${A.RECIPE.OBJCOPY.EEP.PATTERN}
	${A.RECIPE.OBJCOPY.HEX.PATTERN}
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C_UPPER_DEPS)$(PDE_DEPS)$(C_DEPS)$(AR)$(CC_DEPS)$(AR_OBJ)$(C++_DEPS)$(LINK_OBJ)$(CXX_DEPS)$(ASM_DEPS)$(HEX)$(INO_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(ELF)$(CPP_DEPS)
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ..\makefile.targets
