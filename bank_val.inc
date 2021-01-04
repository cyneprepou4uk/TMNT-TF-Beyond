; $8000
con_bank_id                     = $00



; ram_btn_press                 = $8E
; ram_btn_hold                  = $91
con_btn_Right                   = $01 ; 
con_btn_Left                    = $02 ; 
con_btn_Down                    = $04 ; 
con_btn_Up                      = $08 ; 
con_btn_Start                   = $10 ; 
con_btn_Select                  = $20 ; 
con_btn_B                       = $40 ; 
con_btn_A                       = $80 ; 

con_btns_Dpad                   = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; 0F
con_btns_AB                     = con_btn_A + con_btn_B                                     ; C0
con_btns_LR                     = con_btn_Left + con_btn_Right                              ; 03
con_btns_UD                     = con_btn_Up + con_btn_Down                                 ; 0C
con_btns_SS                     = con_btn_Start + con_btn_Select                            ; 30



; ram_id_fighter                = $0550
con_fighter_Leo                 = $00 ; 
con_fighter_Raph                = $01 ; 
con_fighter_Mike                = $02 ; 
con_fighter_Don                 = $03 ; 
con_fighter_Casey               = $04 ; 
con_fighter_Hot                 = $05 ; 
con_fighter_Shred               = $06 ; 

; ram_id_blow                   = $0552 обычные удары
; черепахи
    ; рука издалека                 = $01
    ; нога вблизи                   = $02
    ; рука в воздухе                = $03
    ; нога в воздухе                = $04
    ; рука сидя                     = $05
    ; нога сидя обычная             = $06
    ; рука вблизи                   = $07
    ; нога издалека обычная         = $08
    ; нога издалека Raph/Don        = $09
    ; нога сидя Leo (подкат)        = $0A
    ; локоть с разбега              = $0B
    ; нога антиэйр                  = $0C
    ; рука антиэйр                  = $0D
    ; пятка с разбега               = $0E
; Casey
    ; рука издалека                 = $0F
    ; нога вблизи                   = $10
    ; рука сидя                     = $11
    ; нога сидя                     = $12
    ; рука вблизи                   = $13
    ; нога издалека                 = $14
    ; рука антиэйр                  = $15
    ; рука в воздухе                = $16
    ; нога в воздухе                = $17
    ; нога антиэйр                  = $18
; Hot
    ; рука вблизи                   = $19
    ; рука издалека                 = $1A
    ; рука в воздухе                = $1B
    ; рука сидя                     = $1C
    ; нога вблизи                   = $1D
    ; нога издалека                 = $1E
    ; нога в воздухе                = $1F
    ; нога сидя                     = $20
    ; рука антиэйр                  = $22
    ; нога антиэйр                  = $23
; Shred
    ; рука вблизи                   = $24
    ; рука издалека                 = $26
    ; рука антиэйр                  = $27
    ; рука в воздухе                = $28
    ; рука сидя                     = $29
    ; нога вблизи                   = $2A
    ; нога издалека                 = $2B
    ; нога в воздухе                = $2C
    ; нога сидя                     = $2D
    ; нога антиэйр                  = $2E

; ram_id_special                = $0554 спешалы
    ; Hot бабочка                   = $21
    ; Hot огонь                     = $2F
    ; Shred волна                   = $30
    ; Leo крутилка                  = $31
    ; Raph сверло                   = $32
    ; Mike ракеты понизу            = $33
    ; Mike ракеты поверху           = $34
    ; Don пила вращение             = $35
    ; Shred мясо                    = $36
    ; Casey клюшка                  = $37
    ; Don пила подкат               = $38
    ; Casey вихрь                   = $39
