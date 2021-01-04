.segment "BANK_07"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x01C010-0x02000F

    .byte con_bank_id + $0E   ; (!) байт должен находиться по адресу 8000, чтение из 0x03F67D
