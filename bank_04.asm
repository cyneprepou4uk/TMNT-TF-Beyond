.segment "BANK_04"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x010010-0x01400F

    .byte con_bank_id + $04 * 2   ; (!) байт должен находиться по адресу 8000, чтение из 0x03F67D
