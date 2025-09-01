CC=arm-none-eabi-gcc
MACH=cortex-m4 # machine
CFLAGS= -c -mcpu=$(MACH)  -mthumb -std=gnu11 -Wall -o0 #stands for Compiler Flags

all:main.o led.o stm32_startup.o

# Target:dependency
main.o:main.c
	$(CC) $(CFLAGS) -o $@ $^

led.o:led.c
	$(CC) $(CFLAGS) -o $@ $^

stm32_startup.o:stm32_startup.c
	$(CC) $(CFLAGS) -o $@ $^

clean:
		rm -rf *.o *.elf
