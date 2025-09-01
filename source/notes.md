# Analyzing .o files

`.o` files are relocatble assembly files
* they have no memory addresses coded > [!IMPORTANT]
> 
* `main.o` is in elf format (Executable and linkable format)
* ELF is a standard file format for object files and executable files wen you use GCC

* `main.o` is machine code file does not contain any absolute addresses

# startup file

* startup file is responsible for setting up environment ofr user code to run
* code written in startup file runs before `main()` so you can say startup file calls `main()`

* startup code takes care of vector table placement in code memory as required by the ARM cortex Mx Processor

* startup code also takes care of stack reinitiliazation 

* startup code responsible for `.data`m `.bss` section initiilization in main memory

# Vector table 
* memory addresses for interrupt handlers and such
* instruct compiler not to include this table in `.data` section
