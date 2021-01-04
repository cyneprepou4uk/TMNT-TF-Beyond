.segment "BANK_05"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x014010-0x01800F

    .byte con_bank_id + $0A   ; (!) байт должен находиться по адресу 8000, чтение из 0x03F67D
