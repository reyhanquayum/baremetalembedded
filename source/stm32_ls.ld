ENTRY(Reset_Handler)

MEMORY
{
  FLASH(rx):ORIGIN=0x08000000,LENGTH=512K
  SRAM(rwx):ORIGIN=0x20000000,LENGTH=128K
}

SECTIONS
{
  /*text section contains all compiled machine instructs
   * includes startup routines. interrupt vectors here
   * as well.
   * reliable and executable
   * read only
   * */
  .text:
  {
    /* start of text is just our FLASH origin */
    *(.isr_vector)
    *(.text)
    *(.rodata)
  /*
   * rodata contains read only data such as
   * string literals, const global vars
   * compiler generated lookup tables*/
    _etext = .; /* end of text. the '.' is the location coutner (VMA)*/
    /*VMA is where the baremetal CPU accesses the objects*/
  }> FLASH

  /*.data contains initialized global variables*/
  .data:
  {
    _sdata = .;
    *(.data)
    _edata = .;
  }> SRAM AT> FLASH

  /*bss contains uninitialized global variables*/
  .bss{
    _sbss = .;
    *(.bss)
    _ebss = .;
  }> SRAM
}
