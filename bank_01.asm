.segment "BANK_01"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x004010-0x00800F

    .byte con_bank_id + $02   ; (!) байт должен находиться по адресу 8000, чтение из 0x03F67D
