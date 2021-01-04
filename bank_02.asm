.segment "BANK_02"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x008010-0x00C00F

    .byte con_bank_id + $04   ; (!) байт должен находиться по адресу 8000, чтение из 0x03F67D
