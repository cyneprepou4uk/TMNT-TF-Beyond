.segment "BANK_06"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x018010-0x01C00F

    .byte con_bank_id + $06 * 2   ; (!) байт должен находиться по адресу 8000, чтение из 0x03F67D
