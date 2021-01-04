.segment "BANK_03"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x00C010-0x01000F

    .byte con_bank_id + $06   ; (!) байт должен находиться по адресу 8000, чтение из 0x03F67D
