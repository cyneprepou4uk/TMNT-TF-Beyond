.segment "BANK_0E"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x038010-0x03C00F

    .byte con_bank_id + $0C   ; (!) байт должен находиться по адресу 8000, чтение из 0x03F67D



.export sub_0x038011
sub_0x038011:
C D 0 - - - 0x038011 0E:8001: A5 95     LDA ram_0095
C - - - - - 0x038013 0E:8003: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x038016 0E:8006: 0C 80     .word ofs_800C_00
- D 0 - I - 0x038018 0E:8008: 5E 80     .word ofs_805E_01
- D 0 - I - 0x03801A 0E:800A: 5E 80     .word ofs_805E_02



ofs_800C_00:
C - - J - - 0x03801C 0E:800C: E6 95     INC ram_0095
C - - - - - 0x03801E 0E:800E: C6 AD     DEC ram_00AD
C - - - - - 0x038020 0E:8010: 20 BE DA  JSR sub_0x03DACE
C - - - - - 0x038023 0E:8013: A2 01     LDX #$01
bra_8015_loop:
C - - - - - 0x038025 0E:8015: BD B7 82  LDA tbl_82B7,X
C - - - - - 0x038028 0E:8018: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x03802B 0E:801B: BD B9 82  LDA tbl_82B9,X
C - - - - - 0x03802E 0E:801E: 9D 10 04  STA ram_Y_pos_hi_object,X
C - - - - - 0x038031 0E:8021: A9 30     LDA #$30
C - - - - - 0x038033 0E:8023: 9D 40 04  STA ram_X_pos_hi_object,X
C - - - - - 0x038036 0E:8026: A9 82     LDA #$82
C - - - - - 0x038038 0E:8028: 9D 00 05  STA ram_0500,X
C - - - - - 0x03803B 0E:802B: CA        DEX
C - - - - - 0x03803C 0E:802C: D0 E7     BNE bra_8015_loop
C - - - - - 0x03803E 0E:802E: A9 55     LDA #$55
C - - - - - 0x038040 0E:8030: 85 34     STA ram_0034
C - - - - - 0x038042 0E:8032: 20 25 DC  JSR sub_0x03DC35
C - - - - - 0x038045 0E:8035: A9 0E     LDA #$0E
C - - - - - 0x038047 0E:8037: 20 14 F8  JSR sub_0x03F824
C - - - - - 0x03804A 0E:803A: A2 18     LDX #$18
C - - - - - 0x03804C 0E:803C: 20 44 F0  JSR sub_0x03F054
C - - - - - 0x03804F 0E:803F: A9 07     LDA #$07
C - - - - - 0x038051 0E:8041: A8        TAY
C - - - - - 0x038052 0E:8042: 20 94 D3  JSR sub_0x03D3A4
C - - - - - 0x038055 0E:8045: 20 BB 81  JSR sub_81BB
loc_8048:
C D 0 - - - 0x038058 0E:8048: 20 26 81  JSR sub_8126
C - - - - - 0x03805B 0E:804B: 20 4C 81  JSR sub_814C
C - - - - - 0x03805E 0E:804E: 20 72 81  JSR sub_8172
C - - - - - 0x038061 0E:8051: 20 13 81  JSR sub_8113
loc_8054:
C D 0 - - - 0x038064 0E:8054: 18        CLC
C - - - - - 0x038065 0E:8055: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x038068 0E:8058: 69 09     ADC #$09
C - - - - - 0x03806A 0E:805A: 4C E5 F6  JMP loc_0x03F6F5



ofs_805E_01:
ofs_805E_02:
C - - J - - 0x03806E 0E:805E: A5 AD     LDA ram_00AD
C - - - - - 0x038070 0E:8060: 30 03     BMI bra_8065
C - - - - - 0x038072 0E:8062: 20 3B A6  JSR sub_A63B
bra_8065:
C - - - - - 0x038075 0E:8065: A5 90     LDA ram_sum_btn_press
C - - - - - 0x038077 0E:8067: A8        TAY
C - - - - - 0x038078 0E:8068: 29 10     AND #con_btn_Start
C - - - - - 0x03807A 0E:806A: F0 03     BEQ bra_806F
C - - - - - 0x03807C 0E:806C: 4C AE 81  JMP loc_81AE
bra_806F:
C - - - - - 0x03807F 0E:806F: 98        TYA
C - - - - - 0x038080 0E:8070: 29 20     AND #con_btn_Select
C - - - - - 0x038082 0E:8072: F0 0A     BEQ bra_807E
C - - - - - 0x038084 0E:8074: A5 95     LDA ram_0095
C - - - - - 0x038086 0E:8076: 49 03     EOR #$03
C - - - - - 0x038088 0E:8078: 85 95     STA ram_0095
C - - - - - 0x03808A 0E:807A: A9 05     LDA #$05
C - - - - - 0x03808C 0E:807C: 85 AD     STA ram_00AD
bra_807E:
C - - - - - 0x03808E 0E:807E: 98        TYA
C - - - - - 0x03808F 0E:807F: 29 C0     AND #con_btns_AB
C - - - - - 0x038091 0E:8081: F0 0A     BEQ bra_808D
C - - - - - 0x038093 0E:8083: AD B0 04  LDA ram_04B0
C - - - - - 0x038096 0E:8086: C9 05     CMP #$05
C - - - - - 0x038098 0E:8088: D0 03     BNE bra_808D
C - - - - - 0x03809A 0E:808A: 4C AE 81  JMP loc_81AE
bra_808D:
C - - - - - 0x03809D 0E:808D: 98        TYA
C - - - - - 0x03809E 0E:808E: 29 0C     AND #con_btns_UD
C - - - - - 0x0380A0 0E:8090: F0 22     BEQ bra_80B4
C - - - - - 0x0380A2 0E:8092: 48        PHA
C - - - - - 0x0380A3 0E:8093: A9 25     LDA #$25
C - - - - - 0x0380A5 0E:8095: 20 90 F6  JSR sub_0x03F6A0
C - - - - - 0x0380A8 0E:8098: 68        PLA
C - - - - - 0x0380A9 0E:8099: 29 04     AND #$04
C - - - - - 0x0380AB 0E:809B: 4A        LSR
C - - - - - 0x0380AC 0E:809C: E9 00     SBC #$00
C - - - - - 0x0380AE 0E:809E: 18        CLC
C - - - - - 0x0380AF 0E:809F: 6D B0 04  ADC ram_04B0
C - - - - - 0x0380B2 0E:80A2: 30 08     BMI bra_80AC
C - - - - - 0x0380B4 0E:80A4: C9 06     CMP #$06
C - - - - - 0x0380B6 0E:80A6: 90 06     BCC bra_80AE
C - - - - - 0x0380B8 0E:80A8: A9 00     LDA #$00
C - - - - - 0x0380BA 0E:80AA: F0 02     BEQ bra_80AE
bra_80AC:
C - - - - - 0x0380BC 0E:80AC: A9 05     LDA #$05
bra_80AE:
C - - - - - 0x0380BE 0E:80AE: 8D B0 04  STA ram_04B0
C - - - - - 0x0380C1 0E:80B1: 4C D0 81  JMP loc_81D0
bra_80B4:
C - - - - - 0x0380C4 0E:80B4: 98        TYA
C - - - - - 0x0380C5 0E:80B5: 29 C3     AND #con_btns_AB + con_btns_LR
C - - - - - 0x0380C7 0E:80B7: F0 14     BEQ bra_80CD_RTS
C - - - - - 0x0380C9 0E:80B9: 4C 80 A6  JMP loc_A680



loc_80BC:
C D 0 - - - 0x0380CC 0E:80BC: F0 10     BEQ bra_80CE
C - - - - - 0x0380CE 0E:80BE: CA        DEX
C - - - - - 0x0380CF 0E:80BF: F0 2F     BEQ bra_80F0
C - - - - - 0x0380D1 0E:80C1: CA        DEX
C - - - - - 0x0380D2 0E:80C2: F0 5A     BEQ bra_811E
C - - - - - 0x0380D4 0E:80C4: CA        DEX
C - - - - - 0x0380D5 0E:80C5: F0 68     BEQ bra_812F
C - - - - - 0x0380D7 0E:80C7: CA        DEX
C - - - - - 0x0380D8 0E:80C8: D0 03     BNE bra_80CD_RTS
C - - - - - 0x0380DA 0E:80CA: 4C 55 81  JMP loc_8155
bra_80CD_RTS:
C - - - - - 0x0380DD 0E:80CD: 60        RTS
bra_80CE:
C - - - - - 0x0380DE 0E:80CE: 29 81     AND #$81
C - - - - - 0x0380E0 0E:80D0: D0 0E     BNE bra_80E0
C - - - - - 0x0380E2 0E:80D2: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x0380E5 0E:80D5: F0 F6     BEQ bra_80CD_RTS    ; easy
C - - - - - 0x0380E7 0E:80D7: CE 25 01  DEC ram_option_difficulty
C - - - - - 0x0380EA 0E:80DA: 20 A6 81  JSR sub_81A6
C - - - - - 0x0380ED 0E:80DD: 4C 54 80  JMP loc_8054
bra_80E0:
C - - - - - 0x0380F0 0E:80E0: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x0380F3 0E:80E3: C9 03     CMP #$03
C - - - - - 0x0380F5 0E:80E5: B0 E6     BCS bra_80CD_RTS
C - - - - - 0x0380F7 0E:80E7: EE 25 01  INC ram_option_difficulty
C - - - - - 0x0380FA 0E:80EA: 20 A9 81  JSR sub_81A9
C - - - - - 0x0380FD 0E:80ED: 4C 54 80  JMP loc_8054
bra_80F0:
C - - - - - 0x038100 0E:80F0: 29 C3     AND #$C3
C - - - - - 0x038102 0E:80F2: F0 D9     BEQ bra_80CD_RTS
C - - - - - 0x038104 0E:80F4: A0 FF     LDY #$FF
C - - - - - 0x038106 0E:80F6: 29 42     AND #$42
C - - - - - 0x038108 0E:80F8: D0 02     BNE bra_80FC
C - - - - - 0x03810A 0E:80FA: A0 01     LDY #$01
bra_80FC:
C - - - - - 0x03810C 0E:80FC: 98        TYA
C - - - - - 0x03810D 0E:80FD: A0 07     LDY #$07
C - - - - - 0x03810F 0E:80FF: 18        CLC
C - - - - - 0x038110 0E:8100: 6D 2B 01  ADC ram_option_skin
bra_8103_loop:
C - - - - - 0x038113 0E:8103: D9 E0 BF  CMP tbl_BFE0,Y
C - - - - - 0x038116 0E:8106: F0 C5     BEQ bra_80CD_RTS
C - - - - - 0x038118 0E:8108: 88        DEY
C - - - - - 0x038119 0E:8109: 10 F8     BPL bra_8103_loop
C - - - - - 0x03811B 0E:810B: 8D 2B 01  STA ram_option_skin
C - - - - - 0x03811E 0E:810E: A9 27     LDA #$27
C - - - - - 0x038120 0E:8110: 20 90 F6  JSR sub_0x03F6A0
sub_8113:
C - - - - - 0x038123 0E:8113: 18        CLC
C - - - - - 0x038124 0E:8114: AD 2B 01  LDA ram_option_skin
C - - - - - 0x038127 0E:8117: 29 07     AND #$07
C - - - - - 0x038129 0E:8119: 69 23     ADC #$23
C - - - - - 0x03812B 0E:811B: 4C E5 F6  JMP loc_0x03F6F5
bra_811E:
C - - - - - 0x03812E 0E:811E: AD 26 01  LDA ram_option_speed
C - - - - - 0x038131 0E:8121: 49 01     EOR #$01
C - - - - - 0x038133 0E:8123: 8D 26 01  STA ram_option_speed
sub_8126:
C - - - - - 0x038136 0E:8126: 18        CLC
C - - - - - 0x038137 0E:8127: AD 26 01  LDA ram_option_speed
C - - - - - 0x03813A 0E:812A: 69 13     ADC #$13
C - - - - - 0x03813C 0E:812C: 4C E5 F6  JMP loc_0x03F6F5
bra_812F:
C - - - - - 0x03813F 0E:812F: 29 C3     AND #$C3
C - - - - - 0x038141 0E:8131: F0 48     BEQ bra_817B_RTS
C - - - - - 0x038143 0E:8133: A0 FF     LDY #$FF
C - - - - - 0x038145 0E:8135: 29 42     AND #$42
C - - - - - 0x038147 0E:8137: D0 02     BNE bra_813B
C - - - - - 0x038149 0E:8139: A0 01     LDY #$01
bra_813B:
C - - - - - 0x03814B 0E:813B: 98        TYA
C - - - - - 0x03814C 0E:813C: 18        CLC
C - - - - - 0x03814D 0E:813D: 6D 27 01  ADC ram_option_timer
C - - - - - 0x038150 0E:8140: C9 04     CMP #$04
C - - - - - 0x038152 0E:8142: B0 37     BCS bra_817B_RTS
C - - - - - 0x038154 0E:8144: 8D 27 01  STA ram_option_timer
C - - - - - 0x038157 0E:8147: A9 27     LDA #$27
C - - - - - 0x038159 0E:8149: 20 90 F6  JSR sub_0x03F6A0
sub_814C:
C - - - - - 0x03815C 0E:814C: 18        CLC
C - - - - - 0x03815D 0E:814D: AD 27 01  LDA ram_option_timer
C - - - - - 0x038160 0E:8150: 69 1F     ADC #$1F
C - - - - - 0x038162 0E:8152: 4C E5 F6  JMP loc_0x03F6F5



loc_8155:
C D 0 - - - 0x038165 0E:8155: 29 C3     AND #$C3
C - - - - - 0x038167 0E:8157: F0 22     BEQ bra_817B_RTS
C - - - - - 0x038169 0E:8159: A0 FF     LDY #$FF
C - - - - - 0x03816B 0E:815B: 29 42     AND #$42
C - - - - - 0x03816D 0E:815D: D0 02     BNE bra_8161
C - - - - - 0x03816F 0E:815F: A0 01     LDY #$01
bra_8161:
C - - - - - 0x038171 0E:8161: 98        TYA
C - - - - - 0x038172 0E:8162: 18        CLC
C - - - - - 0x038173 0E:8163: 6D 28 01  ADC ram_option_health
C - - - - - 0x038176 0E:8166: C9 04     CMP #$04
C - - - - - 0x038178 0E:8168: B0 11     BCS bra_817B_RTS
C - - - - - 0x03817A 0E:816A: 8D 28 01  STA ram_option_health
C - - - - - 0x03817D 0E:816D: A9 27     LDA #$27
C - - - - - 0x03817F 0E:816F: 20 90 F6  JSR sub_0x03F6A0
sub_8172:
C - - - - - 0x038182 0E:8172: 18        CLC
C - - - - - 0x038183 0E:8173: AD 28 01  LDA ram_option_health
C - - - - - 0x038186 0E:8176: 69 1B     ADC #$1B
C - - - - - 0x038188 0E:8178: 4C E5 F6  JMP loc_0x03F6F5
bra_817B_RTS:
C - - - - - 0x03818B 0E:817B: 60        RTS



sub_81A6:
C - - - - - 0x0381B6 0E:81A6: A9 25     LDA #$25
C - - - - - 0x0381B8 0E:81A8: 2C        .byte $2C
sub_81A9:
C - - - - - 0x0381B9 0E:81A9: A9 27     LDA #$27
C - - - - - 0x0381BB 0E:81AB: 4C 90 F6  JMP loc_0x03F6A0



loc_81AE:
C D 0 - - - 0x0381BE 0E:81AE: A9 00     LDA #$00
C - - - - - 0x0381C0 0E:81B0: 85 2C     STA ram_002C
C - - - - - 0x0381C2 0E:81B2: 20 C2 F6  JSR sub_0x03F6D2
C - - - - - 0x0381C5 0E:81B5: 20 3E E1  JSR sub_0x03E14E
C - - - - - 0x0381C8 0E:81B8: 4C CD F5  JMP loc_0x03F5DD



sub_81BB:
C - - - - - 0x0381CB 0E:81BB: A9 23     LDA #$23
C - - - - - 0x0381CD 0E:81BD: 8D 06 20  STA $2006
C - - - - - 0x0381D0 0E:81C0: A9 C9     LDA #$C9
C - - - - - 0x0381D2 0E:81C2: 8D 06 20  STA $2006
C - - - - - 0x0381D5 0E:81C5: A2 0E     LDX #$0E
bra_81C7:
C - - - - - 0x0381D7 0E:81C7: A9 AA     LDA #$AA
C - - - - - 0x0381D9 0E:81C9: 8D 07 20  STA $2007
C - - - - - 0x0381DC 0E:81CC: CA        DEX
C - - - - - 0x0381DD 0E:81CD: D0 F8     BNE bra_81C7
C - - - - - 0x0381DF 0E:81CF: 60        RTS



loc_81D0:
C D 0 - - - 0x0381E0 0E:81D0: AD B0 04  LDA ram_04B0
                                        TAX
                                        ASL
                                        TAY
C - - - - - 0x0381E4 0E:81D4: B9 06 82  LDA tbl_8206,X
C - - - - - 0x0381E7 0E:81D7: 8D 01 05  STA ram_0501
C - - - - - 0x0381EF 0E:81DF: B9 F8 81  LDA tbl_81F8,Y
C - - - - - 0x0381F2 0E:81E2: 85 00     STA ram_0000
C - - - - - 0x0381F4 0E:81E4: B9 F9 81  LDA tbl_81F8 + 1,Y
C - - - - - 0x0381F7 0E:81E7: 85 01     STA ram_0001
C - - - - - 0x0381F9 0E:81E9: A0 00     LDY #$00
bra_81EB_loop:
C - - - - - 0x0381FB 0E:81EB: B1 00     LDA (ram_0000),Y
C - - - - - 0x0381FD 0E:81ED: C9 FF     CMP #$FF
C - - - - - 0x0381FF 0E:81EF: F0 06     BEQ bra_81F7_RTS
C - - - - - 0x038201 0E:81F1: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x038204 0E:81F4: C8        INY
C - - - - - 0x038205 0E:81F5: D0 F4     BNE bra_81EB_loop
bra_81F7_RTS:
C - - - - - 0x038207 0E:81F7: 60        RTS



tbl_81F8:
- D 0 - - - 0x038208 0E:81F8: 00 A8     .word off_A800_00
- D 0 - - - 0x03820A 0E:81FA: 0B A8     .word off_A80B_01
- D 0 - - - 0x03820C 0E:81FC: 16 A8     .word off_A816_02
- D 0 - - - 0x03820E 0E:81FE: 21 A8     .word off_A821_03
- D 0 - - - 0x038210 0E:8200: 2C A8     .word off_A82C_04
- D 0 - - - 0x038212 0E:8202: 37 A8     .word off_A837_05



tbl_8206:
- D 0 - - - 0x038216 0E:8206: 82        .byte $82   ; 00
- D 0 - - - 0x038217 0E:8207: 82        .byte $82   ; 01
- D 0 - - - 0x038218 0E:8208: 82        .byte $82   ; 02
- D 0 - - - 0x038219 0E:8209: 82        .byte $82   ; 03
- D 0 - - - 0x03821A 0E:820A: 82        .byte $82   ; 04
- D 0 - - - 0x03821B 0E:820B: 80        .byte $80   ; 05



tbl_820D:
- D 0 - - - 0x03821D 0E:820D: 0C        .byte $0C   ; 
- D 0 - - - 0x03821E 0E:820E: 11        .byte $11   ; 
- D 0 - - - 0x03821F 0E:820F: 17        .byte $17   ; 
- D 0 - - - 0x038220 0E:8210: 02        .byte $02   ; 
- D 0 - - - 0x038221 0E:8211: 00        .byte $00   ; 
- D 0 - - - 0x038222 0E:8212: 00        .byte $00   ; 
- D 0 - - - 0x038223 0E:8213: 00        .byte $00   ; 
- D 0 - - - 0x038224 0E:8214: 80        .byte $80   ; 
- D 0 - - - 0x038225 0E:8215: 0C        .byte $0C   ; 
- D 0 - - - 0x038226 0E:8216: 11        .byte $11   ; 
- D 0 - - - 0x038227 0E:8217: 17        .byte $17   ; 
- D 0 - - - 0x038228 0E:8218: 03        .byte $03   ; 
- D 0 - - - 0x038229 0E:8219: 00        .byte $00   ; 
- D 0 - - - 0x03822A 0E:821A: 00        .byte $00   ; 
- D 0 - - - 0x03822B 0E:821B: 00        .byte $00   ; 
- D 0 - - - 0x03822C 0E:821C: 80        .byte $80   ; 
- D 0 - - - 0x03822D 0E:821D: 0C        .byte $0C   ; 
- D 0 - - - 0x03822E 0E:821E: 11        .byte $11   ; 
- D 0 - - - 0x03822F 0E:821F: 17        .byte $17   ; 
- D 0 - - - 0x038230 0E:8220: 04        .byte $04   ; 
- D 0 - - - 0x038231 0E:8221: 00        .byte $00   ; 
- D 0 - - - 0x038232 0E:8222: 00        .byte $00   ; 
- D 0 - - - 0x038233 0E:8223: 00        .byte $00   ; 
- D 0 - - - 0x038234 0E:8224: 80        .byte $80   ; 
- D 0 - - - 0x038235 0E:8225: 0C        .byte $0C   ; 
- D 0 - - - 0x038236 0E:8226: 11        .byte $11   ; 
- D 0 - - - 0x038237 0E:8227: 17        .byte $17   ; 
- D 0 - - - 0x038238 0E:8228: 05        .byte $05   ; 
- D 0 - - - 0x038239 0E:8229: 00        .byte $00   ; 
- D 0 - - - 0x03823A 0E:822A: 00        .byte $00   ; 
- D 0 - - - 0x03823B 0E:822B: 00        .byte $00   ; 
- D 0 - - - 0x03823C 0E:822C: 80        .byte $80   ; 
- D 0 - - - 0x03823D 0E:822D: 19        .byte $19   ; 
- D 0 - - - 0x03823E 0E:822E: 1A        .byte $1A   ; 
- D 0 - - - 0x03823F 0E:822F: 0F        .byte $0F   ; 
- D 0 - - - 0x038240 0E:8230: 18        .byte $18   ; 
- D 0 - - - 0x038241 0E:8231: 82        .byte $82   ; 
- D 0 - - - 0x038242 0E:8232: 19        .byte $19   ; 
- D 0 - - - 0x038243 0E:8233: 1A        .byte $1A   ; 
- D 0 - - - 0x038244 0E:8234: 0F        .byte $0F   ; 
- D 0 - - - 0x038245 0E:8235: 18        .byte $18   ; 
- D 0 - - - 0x038246 0E:8236: 83        .byte $83   ; 
- D 0 - - - 0x038247 0E:8237: 1D        .byte $1D   ; 
- D 0 - - - 0x038248 0E:8238: 0F        .byte $0F   ; 
- D 0 - - - 0x038249 0E:8239: 02        .byte $02   ; 
- D 0 - - - 0x03824A 0E:823A: 00        .byte $00   ; 
- D 0 - - - 0x03824B 0E:823B: 00        .byte $00   ; 
- D 0 - - - 0x03824C 0E:823C: 00        .byte $00   ; 
- D 0 - - - 0x03824D 0E:823D: 00        .byte $00   ; 
- D 0 - - - 0x03824E 0E:823E: 00        .byte $00   ; 
- D 0 - - - 0x03824F 0E:823F: 00        .byte $00   ; 
- D 0 - - - 0x038250 0E:8240: 00        .byte $00   ; 
- D 0 - - - 0x038251 0E:8241: 00        .byte $00   ; 
- D 0 - - - 0x038252 0E:8242: 00        .byte $00   ; 
- D 0 - - - 0x038253 0E:8243: 00        .byte $00   ; 
- D 0 - - - 0x038254 0E:8244: 80        .byte $80   ; 
- D 0 - - - 0x038255 0E:8245: 1D        .byte $1D   ; 
- D 0 - - - 0x038256 0E:8246: 0F        .byte $0F   ; 
- D 0 - - - 0x038257 0E:8247: 03        .byte $03   ; 
- D 0 - - - 0x038258 0E:8248: 00        .byte $00   ; 
- D 0 - - - 0x038259 0E:8249: 00        .byte $00   ; 
- D 0 - - - 0x03825A 0E:824A: 00        .byte $00   ; 
- D 0 - - - 0x03825B 0E:824B: 00        .byte $00   ; 
- D 0 - - - 0x03825C 0E:824C: 80        .byte $80   ; 
- D 0 - - - 0x03825D 0E:824D: 1D        .byte $1D   ; 
- D 0 - - - 0x03825E 0E:824E: 0F        .byte $0F   ; 
- D 0 - - - 0x03825F 0E:824F: 04        .byte $04   ; 
- D 0 - - - 0x038260 0E:8250: 00        .byte $00   ; 
- D 0 - - - 0x038261 0E:8251: 00        .byte $00   ; 
- D 0 - - - 0x038262 0E:8252: 00        .byte $00   ; 
- D 0 - - - 0x038263 0E:8253: 00        .byte $00   ; 
- D 0 - - - 0x038264 0E:8254: 80        .byte $80   ; 
- D 0 - - - 0x038265 0E:8255: 1D        .byte $1D   ; 
- D 0 - - - 0x038266 0E:8256: 0F        .byte $0F   ; 
- D 0 - - - 0x038267 0E:8257: 05        .byte $05   ; 
- D 0 - - - 0x038268 0E:8258: 00        .byte $00   ; 
- D 0 - - - 0x038269 0E:8259: 00        .byte $00   ; 
- D 0 - - - 0x03826A 0E:825A: 00        .byte $00   ; 
- D 0 - - - 0x03826B 0E:825B: 00        .byte $00   ; 
- D 0 - - - 0x03826C 0E:825C: 80        .byte $80   ; 
- D 0 - - - 0x03826D 0E:825D: 1D        .byte $1D   ; 
- D 0 - - - 0x03826E 0E:825E: 0F        .byte $0F   ; 
- D 0 - - - 0x03826F 0E:825F: 06        .byte $06   ; 
- D 0 - - - 0x038270 0E:8260: 00        .byte $00   ; 
- D 0 - - - 0x038271 0E:8261: 00        .byte $00   ; 
- D 0 - - - 0x038272 0E:8262: 00        .byte $00   ; 
- D 0 - - - 0x038273 0E:8263: 00        .byte $00   ; 
- D 0 - - - 0x038274 0E:8264: 80        .byte $80   ; 
- D 0 - - - 0x038275 0E:8265: 1D        .byte $1D   ; 
- D 0 - - - 0x038276 0E:8266: 0F        .byte $0F   ; 
- D 0 - - - 0x038277 0E:8267: 07        .byte $07   ; 
- D 0 - - - 0x038278 0E:8268: 00        .byte $00   ; 
- D 0 - - - 0x038279 0E:8269: 00        .byte $00   ; 
- D 0 - - - 0x03827A 0E:826A: 00        .byte $00   ; 
- D 0 - - - 0x03827B 0E:826B: 00        .byte $00   ; 
- D 0 - - - 0x03827C 0E:826C: 80        .byte $80   ; 
- D 0 - - - 0x03827D 0E:826D: 1D        .byte $1D   ; 
- D 0 - - - 0x03827E 0E:826E: 0F        .byte $0F   ; 
- D 0 - - - 0x03827F 0E:826F: 08        .byte $08   ; 
- D 0 - - - 0x038280 0E:8270: 00        .byte $00   ; 
- D 0 - - - 0x038281 0E:8271: 00        .byte $00   ; 
- D 0 - - - 0x038282 0E:8272: 00        .byte $00   ; 
- D 0 - - - 0x038283 0E:8273: 00        .byte $00   ; 
- D 0 - - - 0x038284 0E:8274: 80        .byte $80   ; 
- D 0 - - - 0x038285 0E:8275: 1D        .byte $1D   ; 
- D 0 - - - 0x038286 0E:8276: 0F        .byte $0F   ; 
- D 0 - - - 0x038287 0E:8277: 09        .byte $09   ; 
- D 0 - - - 0x038288 0E:8278: 00        .byte $00   ; 
- D 0 - - - 0x038289 0E:8279: 00        .byte $00   ; 
- D 0 - - - 0x03828A 0E:827A: 00        .byte $00   ; 
- D 0 - - - 0x03828B 0E:827B: 00        .byte $00   ; 
- D 0 - - - 0x03828C 0E:827C: 80        .byte $80   ; 
- D 0 - - - 0x03828D 0E:827D: 1D        .byte $1D   ; 
- D 0 - - - 0x03828E 0E:827E: 0F        .byte $0F   ; 
- D 0 - - - 0x03828F 0E:827F: 0A        .byte $0A   ; 
- D 0 - - - 0x038290 0E:8280: 00        .byte $00   ; 
- D 0 - - - 0x038291 0E:8281: 00        .byte $00   ; 
- D 0 - - - 0x038292 0E:8282: 00        .byte $00   ; 
- D 0 - - - 0x038293 0E:8283: 00        .byte $00   ; 
- D 0 - - - 0x038294 0E:8284: 80        .byte $80   ; 
- D 0 - - - 0x038295 0E:8285: 1D        .byte $1D   ; 
- D 0 - - - 0x038296 0E:8286: 0F        .byte $0F   ; 
- D 0 - - - 0x038297 0E:8287: 02        .byte $02   ; 
- D 0 - - - 0x038298 0E:8288: 01        .byte $01   ; 
- D 0 - - - 0x038299 0E:8289: 00        .byte $00   ; 
- D 0 - - - 0x03829A 0E:828A: 00        .byte $00   ; 
- D 0 - - - 0x03829B 0E:828B: 00        .byte $00   ; 
- D 0 - - - 0x03829C 0E:828C: 80        .byte $80   ; 
- D 0 - - - 0x03829D 0E:828D: 1D        .byte $1D   ; 
- D 0 - - - 0x03829E 0E:828E: 0F        .byte $0F   ; 
- D 0 - - - 0x03829F 0E:828F: 02        .byte $02   ; 
- D 0 - - - 0x0382A0 0E:8290: 02        .byte $02   ; 
- D 0 - - - 0x0382A1 0E:8291: 00        .byte $00   ; 
- D 0 - - - 0x0382A2 0E:8292: 00        .byte $00   ; 
- D 0 - - - 0x0382A3 0E:8293: 00        .byte $00   ; 
- D 0 - - - 0x0382A4 0E:8294: 80        .byte $80   ; 
- D 0 - - - 0x0382A5 0E:8295: 1D        .byte $1D   ; 
- D 0 - - - 0x0382A6 0E:8296: 0F        .byte $0F   ; 
- D 0 - - - 0x0382A7 0E:8297: 02        .byte $02   ; 
- D 0 - - - 0x0382A8 0E:8298: 03        .byte $03   ; 
- D 0 - - - 0x0382A9 0E:8299: 00        .byte $00   ; 
- D 0 - - - 0x0382AA 0E:829A: 00        .byte $00   ; 
- D 0 - - - 0x0382AB 0E:829B: 00        .byte $00   ; 
- D 0 - - - 0x0382AC 0E:829C: 80        .byte $80   ; 



tbl_829D:
- D 0 - - - 0x0382AD 0E:829D: 2E        .byte $2E   ; 
- D 0 - - - 0x0382AE 0E:829E: 2F        .byte $2F   ; 
- D 0 - - - 0x0382AF 0E:829F: 30        .byte $30   ; 
- D 0 - - - 0x0382B0 0E:82A0: 31        .byte $31   ; 
- D 0 - - - 0x0382B1 0E:82A1: 3A        .byte $3A   ; 
- D 0 - - - 0x0382B2 0E:82A2: 3C        .byte $3C   ; 
- D 0 - - - 0x0382B3 0E:82A3: 53        .byte $53   ; 
- D 0 - - - 0x0382B4 0E:82A4: 55        .byte $55   ; 
- D 0 - - - 0x0382B5 0E:82A5: 59        .byte $59   ; 
- D 0 - - - 0x0382B6 0E:82A6: 52        .byte $52   ; 
- D 0 - - - 0x0382B7 0E:82A7: 54        .byte $54   ; 
- D 0 - - - 0x0382B8 0E:82A8: 56        .byte $56   ; 
- D 0 - - - 0x0382B9 0E:82A9: 57        .byte $57   ; 
- D 0 - - - 0x0382BA 0E:82AA: 58        .byte $58   ; 
- D 0 - - - 0x0382BB 0E:82AB: 4D        .byte $4D   ; 
- D 0 - - - 0x0382BC 0E:82AC: 4E        .byte $4E   ; 
- D 0 - - - 0x0382BD 0E:82AD: 50        .byte $50   ; 
- D 0 - - - 0x0382BE 0E:82AE: 4F        .byte $4F   ; 
- - - - - - 0x0382BF 0E:82AF: 85        .byte $85   ; 
- - - - - - 0x0382C0 0E:82B0: 86        .byte $86   ; 
- - - - - - 0x0382C1 0E:82B1: 87        .byte $87   ; 
- - - - - - 0x0382C2 0E:82B2: 81        .byte $81   ; 
- - - - - - 0x0382C3 0E:82B3: 8A        .byte $8A   ; 
- - - - - - 0x0382C4 0E:82B4: 8A        .byte $8A   ; 
- - - - - - 0x0382C5 0E:82B5: 81        .byte $81   ; 
- - - - - - 0x0382C6 0E:82B6: 81        .byte $81   ; 



tbl_82B7:
- - - - - - 0x0382C7 0E:82B7: 3E        .byte $3E   ; 00
- D 0 - - - 0x0382C8 0E:82B8: 43        .byte $43   ; 01



tbl_82B9:
- - - - - - 0x0382C9 0E:82B9: 47        .byte $47   ; 00
- D 0 - - - 0x0382CA 0E:82BA: 68        .byte $68   ; 01



.export sub_0x0382CB
sub_0x0382CB:
C - - - - - 0x0382CB 0E:82BB: 20 BE DA  JSR sub_0x03DACE
C - - - - - 0x0382CE 0E:82BE: 20 6E DD  JSR sub_0x03DD7E
C - - - - - 0x0382D1 0E:82C1: A9 07     LDA #$07
C - - - - - 0x0382D3 0E:82C3: 20 14 F8  JSR sub_0x03F824
C - - - - - 0x0382D6 0E:82C6: 20 6D D4  JSR sub_0x03D47D
C - - - - - 0x0382D9 0E:82C9: A2 16     LDX #$16
C - - - - - 0x0382DB 0E:82CB: 20 44 F0  JSR sub_0x03F054
C - - - - - 0x0382DE 0E:82CE: A9 3E     LDA #$3E
C - - - - - 0x0382E0 0E:82D0: A4 95     LDY ram_0095
C - - - - - 0x0382E2 0E:82D2: C0 10     CPY #$10
C - - - - - 0x0382E4 0E:82D4: F0 02     BEQ bra_82D8
C - - - - - 0x0382E6 0E:82D6: A9 46     LDA #$46
bra_82D8:
C - - - - - 0x0382E8 0E:82D8: 20 90 F6  JSR sub_0x03F6A0
C - - - - - 0x0382EB 0E:82DB: A0 04     LDY #$04
C - - - - - 0x0382ED 0E:82DD: 20 1A DC  JSR sub_0x03DC2A
C - - - - - 0x0382F0 0E:82E0: A0 1A     LDY #$1A
C - - - - - 0x0382F2 0E:82E2: 20 04 DC  JSR sub_0x03DC14
C - - - - - 0x0382F5 0E:82E5: A9 03     LDA #$03
C - - - - - 0x0382F7 0E:82E7: 85 00     STA ram_0000
bra_82E9:
C - - - - - 0x0382F9 0E:82E9: A5 00     LDA ram_0000
C - - - - - 0x0382FB 0E:82EB: 0A        ASL
C - - - - - 0x0382FC 0E:82EC: A8        TAY
C - - - - - 0x0382FD 0E:82ED: B9 9B 83  LDA tbl_839B,Y
C - - - - - 0x038300 0E:82F0: 48        PHA
C - - - - - 0x038301 0E:82F1: B9 9C 83  LDA tbl_839B + 1,Y
C - - - - - 0x038304 0E:82F4: A8        TAY
C - - - - - 0x038305 0E:82F5: 68        PLA
C - - - - - 0x038306 0E:82F6: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x038309 0E:82F9: A0 00     LDY #$00
C - - - - - 0x03830B 0E:82FB: 84 01     STY ram_0001
bra_82FD:
C - - - - - 0x03830D 0E:82FD: A5 00     LDA ram_0000
C - - - - - 0x03830F 0E:82FF: 0A        ASL
C - - - - - 0x038310 0E:8300: 0A        ASL
C - - - - - 0x038311 0E:8301: 65 01     ADC ram_0001
C - - - - - 0x038313 0E:8303: A8        TAY
C - - - - - 0x038314 0E:8304: B9 30 01  LDA ram_name_letter_1,Y
C - - - - - 0x038317 0E:8307: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x03831A 0E:830A: E6 01     INC ram_0001
C - - - - - 0x03831C 0E:830C: A4 01     LDY ram_0001
C - - - - - 0x03831E 0E:830E: C0 04     CPY #$04
C - - - - - 0x038320 0E:8310: 90 EB     BCC bra_82FD
C - - - - - 0x038322 0E:8312: 20 5B D2  JSR sub_0x03D26B
C - - - - - 0x038325 0E:8315: C6 00     DEC ram_0000
C - - - - - 0x038327 0E:8317: 10 D0     BPL bra_82E9
C - - - - - 0x038329 0E:8319: AC 54 01  LDY ram_0154
C - - - - - 0x03832C 0E:831C: A9 03     LDA #$03
C - - - - - 0x03832E 0E:831E: 85 00     STA ram_0000
bra_8320:
C - - - - - 0x038330 0E:8320: A5 00     LDA ram_0000
C - - - - - 0x038332 0E:8322: 0A        ASL
C - - - - - 0x038333 0E:8323: AA        TAX
C - - - - - 0x038334 0E:8324: BD A4 83  LDA tbl_83A3 + 1,X
C - - - - - 0x038337 0E:8327: A8        TAY
C - - - - - 0x038338 0E:8328: BD A3 83  LDA tbl_83A3,X
C - - - - - 0x03833B 0E:832B: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x03833E 0E:832E: A4 00     LDY ram_0000
C - - - - - 0x038340 0E:8330: B9 55 01  LDA ram_0155,Y
C - - - - - 0x038343 0E:8333: 30 04     BMI bra_8339
C - - - - - 0x038345 0E:8335: B9 05 01  LDA ram_0105,Y
C - - - - - 0x038348 0E:8338: 2C        .byte $2C
bra_8339:
C - - - - - 0x038349 0E:8339: A9 04     LDA #$04
C - - - - - 0x03834B 0E:833B: A8        TAY
C - - - - - 0x03834C 0E:833C: B9 FD 83  LDA tbl_83FD,Y
C - - - - - 0x03834F 0E:833F: A8        TAY
bra_8340:
C - - - - - 0x038350 0E:8340: B9 02 84  LDA tbl_8402,Y
C - - - - - 0x038353 0E:8343: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x038356 0E:8346: C8        INY
C - - - - - 0x038357 0E:8347: C9 FF     CMP #$FF
C - - - - - 0x038359 0E:8349: D0 F5     BNE bra_8340
C - - - - - 0x03835B 0E:834B: C6 00     DEC ram_0000
C - - - - - 0x03835D 0E:834D: 10 D1     BPL bra_8320
C - - - - - 0x03835F 0E:834F: A9 05     LDA #$05
C - - - - - 0x038361 0E:8351: 85 00     STA ram_0000
C - - - - - 0x038363 0E:8353: AD 5D 01  LDA ram_015D
C - - - - - 0x038366 0E:8356: 85 01     STA ram_0001
bra_8358:
C - - - - - 0x038368 0E:8358: 06 01     ASL ram_0001
C - - - - - 0x03836A 0E:835A: 90 03     BCC bra_835F
C - - - - - 0x03836C 0E:835C: 20 8A 83  JSR sub_838A
bra_835F:
C - - - - - 0x03836F 0E:835F: C6 00     DEC ram_0000
C - - - - - 0x038371 0E:8361: 10 F5     BPL bra_8358
C - - - - - 0x038373 0E:8363: A9 15     LDA #$15
C - - - - - 0x038375 0E:8365: 20 B0 D3  JSR sub_0x03D3C0
C - - - - - 0x038378 0E:8368: A9 04     LDA #$04
C - - - - - 0x03837A 0E:836A: 85 08     STA ram_0008
bra_836C:
C - - - - - 0x03837C 0E:836C: A5 08     LDA ram_0008
C - - - - - 0x03837E 0E:836E: A8        TAY
C - - - - - 0x03837F 0E:836F: 69 04     ADC #$04
C - - - - - 0x038381 0E:8371: AA        TAX
C - - - - - 0x038382 0E:8372: B9 4C 01  LDA ram_014C,Y
C - - - - - 0x038385 0E:8375: A8        TAY
C - - - - - 0x038386 0E:8376: B9 83 83  LDA tbl_8383,Y
C - - - - - 0x038389 0E:8379: 20 46 D3  JSR sub_0x03D356
C - - - - - 0x03838C 0E:837C: C6 08     DEC ram_0008
C - - - - - 0x03838E 0E:837E: 10 EC     BPL bra_836C
C - - - - - 0x038390 0E:8380: 4C 41 E1  JMP loc_0x03E151



tbl_8383:
- D 0 - - - 0x038393 0E:8383: 0D        .byte $0D   ; 00 Leo
- D 0 - - - 0x038394 0E:8384: 0E        .byte $0E   ; 01 Raph
- D 0 - - - 0x038395 0E:8385: 0F        .byte $0F   ; 02 Mike
- D 0 - - - 0x038396 0E:8386: 10        .byte $10   ; 03 Don
- D 0 - - - 0x038397 0E:8387: 11        .byte $11   ; 04 Casey
- D 0 - - - 0x038398 0E:8388: 12        .byte $12   ; 05 Hot
- D 0 - - - 0x038399 0E:8389: 11        .byte $11   ; 06 Shred



sub_838A:
C - - - - - 0x03839A 0E:838A: A6 00     LDX ram_0000
C - - - - - 0x03839C 0E:838C: BC 10 84  LDY tbl_8410,X
bra_838F:
C - - - - - 0x03839F 0E:838F: B9 16 84  LDA tbl_8416,Y
C - - - - - 0x0383A2 0E:8392: C8        INY
C - - - - - 0x0383A3 0E:8393: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x0383A6 0E:8396: C9 FF     CMP #$FF
C - - - - - 0x0383A8 0E:8398: D0 F5     BNE bra_838F
C - - - - - 0x0383AA 0E:839A: 60        RTS



tbl_839B:
- D 0 - - - 0x0383AB 0E:839B: 22 A4     .dbyt $22A4
- D 0 - - - 0x0383AD 0E:839D: 22 AC     .dbyt $22AC
- D 0 - - - 0x0383AF 0E:839F: 22 B2     .dbyt $22B2
- D 0 - - - 0x0383B1 0E:83A1: 22 BA     .dbyt $22BA



tbl_83A3:
- D 0 - - - 0x0383B3 0E:83A3: 22 E4     .dbyt $22E4
- D 0 - - - 0x0383B5 0E:83A5: 22 EC     .dbyt $22EC
- D 0 - - - 0x0383B7 0E:83A7: 22 F2     .dbyt $22F2
- D 0 - - - 0x0383B9 0E:83A9: 22 FA     .dbyt $22FA



tbl_83FD:
- D 0 - - - 0x03840D 0E:83FD: 00        .byte $00   ; 00
- D 0 - - - 0x03840E 0E:83FE: 03        .byte $03   ; 01
- D 0 - - - 0x03840F 0E:83FF: 06        .byte $06   ; 02
- D 0 - - - 0x038410 0E:8400: 09        .byte $09   ; 03
- D 0 - - - 0x038411 0E:8401: 0C        .byte $0C   ; 04



tbl_8402:
- D 0 - - - 0x038412 0E:8402: 82        .byte $82   ; 
- D 0 - - - 0x038413 0E:8403: 9A        .byte $9A   ; 
- D 0 - - - 0x038414 0E:8404: FF        .byte $FF   ; 
- D 0 - - - 0x038415 0E:8405: 83        .byte $83   ; 
- D 0 - - - 0x038416 0E:8406: 9A        .byte $9A   ; 
- D 0 - - - 0x038417 0E:8407: FF        .byte $FF   ; 
- D 0 - - - 0x038418 0E:8408: 84        .byte $84   ; 
- D 0 - - - 0x038419 0E:8409: 9A        .byte $9A   ; 
- D 0 - - - 0x03841A 0E:840A: FF        .byte $FF   ; 
- D 0 - - - 0x03841B 0E:840B: 85        .byte $85   ; 
- D 0 - - - 0x03841C 0E:840C: 9A        .byte $9A   ; 
- D 0 - - - 0x03841D 0E:840D: FF        .byte $FF   ; 
- D 0 - - - 0x03841E 0E:840E: 00        .byte $00   ; 
- D 0 - - - 0x03841F 0E:840F: FF        .byte $FF   ; 



tbl_8410:
- D 0 - - - 0x038420 0E:8410: 32        .byte $32   ; 00
- D 0 - - - 0x038421 0E:8411: 28        .byte $28   ; 01
- D 0 - - - 0x038422 0E:8412: 1E        .byte $1E   ; 02
- D 0 - - - 0x038423 0E:8413: 14        .byte $14   ; 03
- D 0 - - - 0x038424 0E:8414: 0A        .byte $0A   ; 04
- D 0 - - - 0x038425 0E:8415: 00        .byte $00   ; 05



tbl_8416:
- D 0 - - - 0x038426 0E:8416: 03        .byte $03   ; 
- D 0 - - - 0x038427 0E:8417: 0A        .byte $0A   ; 
- D 0 - - - 0x038428 0E:8418: 22        .byte $22   ; 
- D 0 - - - 0x038429 0E:8419: 04        .byte $04   ; 
- D 0 - - - 0x03842A 0E:841A: 00        .byte $00   ; 
- D 0 - - - 0x03842B 0E:841B: 01        .byte $01   ; 
- D 0 - - - 0x03842C 0E:841C: 09        .byte $09   ; 
- D 0 - - - 0x03842D 0E:841D: 22        .byte $22   ; 
- D 0 - - - 0x03842E 0E:841E: D0        .byte $D0   ; 
- D 0 - - - 0x03842F 0E:841F: FF        .byte $FF   ; 
- D 0 - - - 0x038430 0E:8420: 03        .byte $03   ; 
- D 0 - - - 0x038431 0E:8421: 05        .byte $05   ; 
- D 0 - - - 0x038432 0E:8422: 22        .byte $22   ; 
- D 0 - - - 0x038433 0E:8423: 04        .byte $04   ; 
- D 0 - - - 0x038434 0E:8424: 00        .byte $00   ; 
- D 0 - - - 0x038435 0E:8425: 01        .byte $01   ; 
- D 0 - - - 0x038436 0E:8426: 09        .byte $09   ; 
- D 0 - - - 0x038437 0E:8427: 22        .byte $22   ; 
- D 0 - - - 0x038438 0E:8428: C0        .byte $C0   ; 
- D 0 - - - 0x038439 0E:8429: FF        .byte $FF   ; 
- D 0 - - - 0x03843A 0E:842A: 03        .byte $03   ; 
- D 0 - - - 0x03843B 0E:842B: 18        .byte $18   ; 
- D 0 - - - 0x03843C 0E:842C: 22        .byte $22   ; 
- D 0 - - - 0x03843D 0E:842D: 04        .byte $04   ; 
- D 0 - - - 0x03843E 0E:842E: 00        .byte $00   ; 
- D 0 - - - 0x03843F 0E:842F: 01        .byte $01   ; 
- D 0 - - - 0x038440 0E:8430: 17        .byte $17   ; 
- D 0 - - - 0x038441 0E:8431: 22        .byte $22   ; 
- D 0 - - - 0x038442 0E:8432: D0        .byte $D0   ; 
- D 0 - - - 0x038443 0E:8433: FF        .byte $FF   ; 
- D 0 - - - 0x038444 0E:8434: 03        .byte $03   ; 
- D 0 - - - 0x038445 0E:8435: 13        .byte $13   ; 
- D 0 - - - 0x038446 0E:8436: 22        .byte $22   ; 
- D 0 - - - 0x038447 0E:8437: 04        .byte $04   ; 
- D 0 - - - 0x038448 0E:8438: 00        .byte $00   ; 
- D 0 - - - 0x038449 0E:8439: 01        .byte $01   ; 
- D 0 - - - 0x03844A 0E:843A: 17        .byte $17   ; 
- D 0 - - - 0x03844B 0E:843B: 22        .byte $22   ; 
- D 0 - - - 0x03844C 0E:843C: C0        .byte $C0   ; 
- D 0 - - - 0x03844D 0E:843D: FF        .byte $FF   ; 
- D 0 - - - 0x03844E 0E:843E: 03        .byte $03   ; 
- D 0 - - - 0x03844F 0E:843F: 91        .byte $91   ; 
- D 0 - - - 0x038450 0E:8440: 21        .byte $21   ; 
- D 0 - - - 0x038451 0E:8441: 07        .byte $07   ; 
- D 0 - - - 0x038452 0E:8442: 00        .byte $00   ; 
- D 0 - - - 0x038453 0E:8443: 01        .byte $01   ; 
- D 0 - - - 0x038454 0E:8444: 90        .byte $90   ; 
- D 0 - - - 0x038455 0E:8445: 21        .byte $21   ; 
- D 0 - - - 0x038456 0E:8446: D0        .byte $D0   ; 
- D 0 - - - 0x038457 0E:8447: FF        .byte $FF   ; 
- D 0 - - - 0x038458 0E:8448: 03        .byte $03   ; 
- D 0 - - - 0x038459 0E:8449: 89        .byte $89   ; 
- D 0 - - - 0x03845A 0E:844A: 21        .byte $21   ; 
- D 0 - - - 0x03845B 0E:844B: 07        .byte $07   ; 
- D 0 - - - 0x03845C 0E:844C: 00        .byte $00   ; 
- D 0 - - - 0x03845D 0E:844D: 01        .byte $01   ; 
- D 0 - - - 0x03845E 0E:844E: 90        .byte $90   ; 
- D 0 - - - 0x03845F 0E:844F: 21        .byte $21   ; 
- D 0 - - - 0x038460 0E:8450: C0        .byte $C0   ; 
- D 0 - - - 0x038461 0E:8451: FF        .byte $FF   ; 



.export sub_0x038462
sub_0x038462:
C - - - - - 0x038462 0E:8452: A2 01     LDX #$01
C - - - - - 0x038464 0E:8454: 86 00     STX ram_0000
loc_8456:
C D 0 - - - 0x038466 0E:8456: A6 00     LDX ram_0000
C - - - - - 0x038468 0E:8458: B5 A2     LDA ram_option_fighter,X
C - - - - - 0x03846A 0E:845A: 0A        ASL
C - - - - - 0x03846B 0E:845B: A8        TAY
C - - - - - 0x03846C 0E:845C: B9 FA 84  LDA tbl_84FA,Y
C - - - - - 0x03846F 0E:845F: 85 01     STA ram_0001
C - - - - - 0x038471 0E:8461: B9 FB 84  LDA tbl_84FA + 1,Y
C - - - - - 0x038474 0E:8464: 85 02     STA ram_0002
C - - - - - 0x038476 0E:8466: 8A        TXA
C - - - - - 0x038477 0E:8467: 18        CLC
C - - - - - 0x038478 0E:8468: 65 0A     ADC ram_000A
C - - - - - 0x03847A 0E:846A: 0A        ASL
C - - - - - 0x03847B 0E:846B: A8        TAY
C - - - - - 0x03847C 0E:846C: B9 CE 85  LDA tbl_85CE,Y
C - - - - - 0x03847F 0E:846F: 85 03     STA ram_0003
C - - - - - 0x038481 0E:8471: B9 CF 85  LDA tbl_85CF,Y
C - - - - - 0x038484 0E:8474: 85 04     STA ram_0004
C - - - - - 0x038486 0E:8476: A9 00     LDA #$00
C - - - - - 0x038488 0E:8478: 85 06     STA ram_0006
loc_847A:
C D 0 - - - 0x03848A 0E:847A: A4 03     LDY ram_0003
C - - - - - 0x03848C 0E:847C: A5 04     LDA ram_0004
C - - - - - 0x03848E 0E:847E: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x038491 0E:8481: A9 04     LDA #$04
C - - - - - 0x038493 0E:8483: 85 07     STA ram_0007
bra_8485:
C - - - - - 0x038495 0E:8485: A4 06     LDY ram_0006
C - - - - - 0x038497 0E:8487: B1 01     LDA (ram_0001),Y
C - - - - - 0x038499 0E:8489: C9 FF     CMP #$FF
C - - - - - 0x03849B 0E:848B: F0 51     BEQ bra_84DE
C - - - - - 0x03849D 0E:848D: C9 C0     CMP #$C0
C - - - - - 0x03849F 0E:848F: B0 0F     BCS bra_84A0
C - - - - - 0x0384A1 0E:8491: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x0384A4 0E:8494: E6 06     INC ram_0006
C - - - - - 0x0384A6 0E:8496: C6 07     DEC ram_0007
C - - - - - 0x0384A8 0E:8498: 10 EB     BPL bra_8485
C - - - - - 0x0384AA 0E:849A: 20 CD 84  JSR sub_84CD
C - - - - - 0x0384AD 0E:849D: 4C 7A 84  JMP loc_847A
bra_84A0:
- - - - - - 0x0384B0 0E:84A0: 29 3F     AND #$3F
- - - - - - 0x0384B2 0E:84A2: 85 08     STA ram_0008
- - - - - - 0x0384B4 0E:84A4: C8        INY
- - - - - - 0x0384B5 0E:84A5: B1 01     LDA (ram_0001),Y
- - - - - - 0x0384B7 0E:84A7: 85 09     STA ram_0009
- - - - - - 0x0384B9 0E:84A9: C8        INY
- - - - - - 0x0384BA 0E:84AA: 84 06     STY ram_0006
bra_84AC:
- - - - - - 0x0384BC 0E:84AC: A5 09     LDA ram_0009
- - - - - - 0x0384BE 0E:84AE: 20 5D D2  JSR sub_0x03D26D
- - - - - - 0x0384C1 0E:84B1: E6 09     INC ram_0009
- - - - - - 0x0384C3 0E:84B3: C6 07     DEC ram_0007
- - - - - - 0x0384C5 0E:84B5: 30 06     BMI bra_84BD
- - - - - - 0x0384C7 0E:84B7: C6 08     DEC ram_0008
- - - - - - 0x0384C9 0E:84B9: F0 CA     BEQ bra_8485
- - - - - - 0x0384CB 0E:84BB: D0 EF     BNE bra_84AC
bra_84BD:
- - - - - - 0x0384CD 0E:84BD: 20 CD 84  JSR sub_84CD
- - - - - - 0x0384D0 0E:84C0: A5 04     LDA ram_0004
- - - - - - 0x0384D2 0E:84C2: A4 03     LDY ram_0003
- - - - - - 0x0384D4 0E:84C4: 20 6B D2  JSR sub_0x03D27B
- - - - - - 0x0384D7 0E:84C7: A9 04     LDA #$04
- - - - - - 0x0384D9 0E:84C9: 85 07     STA ram_0007
- - - - - - 0x0384DB 0E:84CB: D0 DF     BNE bra_84AC



sub_84CD:
C - - - - - 0x0384DD 0E:84CD: 20 5B D2  JSR sub_0x03D26B
C - - - - - 0x0384E0 0E:84D0: 18        CLC
C - - - - - 0x0384E1 0E:84D1: A5 03     LDA ram_0003
C - - - - - 0x0384E3 0E:84D3: 69 20     ADC #$20
C - - - - - 0x0384E5 0E:84D5: 85 03     STA ram_0003
C - - - - - 0x0384E7 0E:84D7: A5 04     LDA ram_0004
C - - - - - 0x0384E9 0E:84D9: 69 00     ADC #$00
C - - - - - 0x0384EB 0E:84DB: 85 04     STA ram_0004
C - - - - - 0x0384ED 0E:84DD: 60        RTS
bra_84DE:
C - - - - - 0x0384EE 0E:84DE: 20 5B D2  JSR sub_0x03D26B
C - - - - - 0x0384F1 0E:84E1: C6 00     DEC ram_0000
C - - - - - 0x0384F3 0E:84E3: 30 03     BMI bra_84E8
C - - - - - 0x0384F5 0E:84E5: 4C 56 84  JMP loc_8456
bra_84E8:
C - - - - - 0x0384F8 0E:84E8: A4 0A     LDY ram_000A
C - - - - - 0x0384FA 0E:84EA: D0 0D     BNE bra_84F9_RTS
bra_84EC:
- - - - - - 0x0384FC 0E:84EC: B9 BE 85  LDA tbl_85BE,Y
- - - - - - 0x0384FF 0E:84EF: C9 FE     CMP #$FE
- - - - - - 0x038501 0E:84F1: F0 06     BEQ bra_84F9_RTS
- - - - - - 0x038503 0E:84F3: 20 5D D2  JSR sub_0x03D26D
- - - - - - 0x038506 0E:84F6: C8        INY
- - - - - - 0x038507 0E:84F7: D0 F3     BNE bra_84EC
bra_84F9_RTS:
C - - - - - 0x038509 0E:84F9: 60        RTS



tbl_84FA:
- D 0 - - - 0x03850A 0E:84FA: 08 85     .word off_8508_00
- D 0 - - - 0x03850C 0E:84FC: 22 85     .word off_8522_01
- D 0 - - - 0x03850E 0E:84FE: 3C 85     .word off_853C_02
- D 0 - - - 0x038510 0E:8500: 56 85     .word off_8556_03
- D 0 - - - 0x038512 0E:8502: 70 85     .word off_8570_04
- D 0 - - - 0x038514 0E:8504: 8A 85     .word off_858A_05
- D 0 - - - 0x038516 0E:8506: A4 85     .word off_85A4_06



off_8508_00:
- D 0 - I - 0x038518 0E:8508: 01        .byte $01   ; 
- D 0 - I - 0x038519 0E:8509: 02        .byte $02   ; 
- D 0 - I - 0x03851A 0E:850A: 09        .byte $09   ; 
- D 0 - I - 0x03851B 0E:850B: 0A        .byte $0A   ; 
- D 0 - I - 0x03851C 0E:850C: 03        .byte $03   ; 
- D 0 - I - 0x03851D 0E:850D: 04        .byte $04   ; 
- D 0 - I - 0x03851E 0E:850E: 0B        .byte $0B   ; 
- D 0 - I - 0x03851F 0E:850F: 0C        .byte $0C   ; 
- D 0 - I - 0x038520 0E:8510: 0D        .byte $0D   ; 
- D 0 - I - 0x038521 0E:8511: 0E        .byte $0E   ; 
- D 0 - I - 0x038522 0E:8512: 04        .byte $04   ; 
- D 0 - I - 0x038523 0E:8513: 0F        .byte $0F   ; 
- D 0 - I - 0x038524 0E:8514: 10        .byte $10   ; 
- D 0 - I - 0x038525 0E:8515: 11        .byte $11   ; 
- D 0 - I - 0x038526 0E:8516: 12        .byte $12   ; 
- D 0 - I - 0x038527 0E:8517: 04        .byte $04   ; 
- D 0 - I - 0x038528 0E:8518: 13        .byte $13   ; 
- D 0 - I - 0x038529 0E:8519: 14        .byte $14   ; 
- D 0 - I - 0x03852A 0E:851A: 15        .byte $15   ; 
- D 0 - I - 0x03852B 0E:851B: 16        .byte $16   ; 
- D 0 - I - 0x03852C 0E:851C: 05        .byte $05   ; 
- D 0 - I - 0x03852D 0E:851D: 06        .byte $06   ; 
- D 0 - I - 0x03852E 0E:851E: 17        .byte $17   ; 
- D 0 - I - 0x03852F 0E:851F: 18        .byte $18   ; 
- D 0 - I - 0x038530 0E:8520: 19        .byte $19   ; 
- D 0 - I - 0x038531 0E:8521: FF        .byte $FF   ; 



off_8522_01:
- D 0 - I - 0x038532 0E:8522: 01        .byte $01   ; 
- D 0 - I - 0x038533 0E:8523: 02        .byte $02   ; 
- D 0 - I - 0x038534 0E:8524: 09        .byte $09   ; 
- D 0 - I - 0x038535 0E:8525: 0A        .byte $0A   ; 
- D 0 - I - 0x038536 0E:8526: 03        .byte $03   ; 
- D 0 - I - 0x038537 0E:8527: 04        .byte $04   ; 
- D 0 - I - 0x038538 0E:8528: 3A        .byte $3A   ; 
- D 0 - I - 0x038539 0E:8529: 3B        .byte $3B   ; 
- D 0 - I - 0x03853A 0E:852A: 3C        .byte $3C   ; 
- D 0 - I - 0x03853B 0E:852B: 3D        .byte $3D   ; 
- D 0 - I - 0x03853C 0E:852C: 04        .byte $04   ; 
- D 0 - I - 0x03853D 0E:852D: 3E        .byte $3E   ; 
- D 0 - I - 0x03853E 0E:852E: 3F        .byte $3F   ; 
- D 0 - I - 0x03853F 0E:852F: 40        .byte $40   ; 
- D 0 - I - 0x038540 0E:8530: 41        .byte $41   ; 
- D 0 - I - 0x038541 0E:8531: 04        .byte $04   ; 
- D 0 - I - 0x038542 0E:8532: 42        .byte $42   ; 
- D 0 - I - 0x038543 0E:8533: 43        .byte $43   ; 
- D 0 - I - 0x038544 0E:8534: 44        .byte $44   ; 
- D 0 - I - 0x038545 0E:8535: 45        .byte $45   ; 
- D 0 - I - 0x038546 0E:8536: 05        .byte $05   ; 
- D 0 - I - 0x038547 0E:8537: 34        .byte $34   ; 
- D 0 - I - 0x038548 0E:8538: 46        .byte $46   ; 
- D 0 - I - 0x038549 0E:8539: 47        .byte $47   ; 
- D 0 - I - 0x03854A 0E:853A: 48        .byte $48   ; 
- D 0 - I - 0x03854B 0E:853B: FF        .byte $FF   ; 



off_853C_02:
- D 0 - I - 0x03854C 0E:853C: 01        .byte $01   ; 
- D 0 - I - 0x03854D 0E:853D: 02        .byte $02   ; 
- D 0 - I - 0x03854E 0E:853E: 1A        .byte $1A   ; 
- D 0 - I - 0x03854F 0E:853F: 1B        .byte $1B   ; 
- D 0 - I - 0x038550 0E:8540: 03        .byte $03   ; 
- D 0 - I - 0x038551 0E:8541: 04        .byte $04   ; 
- D 0 - I - 0x038552 0E:8542: 1C        .byte $1C   ; 
- D 0 - I - 0x038553 0E:8543: 1D        .byte $1D   ; 
- D 0 - I - 0x038554 0E:8544: 1E        .byte $1E   ; 
- D 0 - I - 0x038555 0E:8545: 08        .byte $08   ; 
- D 0 - I - 0x038556 0E:8546: 04        .byte $04   ; 
- D 0 - I - 0x038557 0E:8547: 1F        .byte $1F   ; 
- D 0 - I - 0x038558 0E:8548: 20        .byte $20   ; 
- D 0 - I - 0x038559 0E:8549: 21        .byte $21   ; 
- D 0 - I - 0x03855A 0E:854A: 22        .byte $22   ; 
- D 0 - I - 0x03855B 0E:854B: 04        .byte $04   ; 
- D 0 - I - 0x03855C 0E:854C: 23        .byte $23   ; 
- D 0 - I - 0x03855D 0E:854D: 24        .byte $24   ; 
- D 0 - I - 0x03855E 0E:854E: 25        .byte $25   ; 
- D 0 - I - 0x03855F 0E:854F: 26        .byte $26   ; 
- D 0 - I - 0x038560 0E:8550: 05        .byte $05   ; 
- D 0 - I - 0x038561 0E:8551: 27        .byte $27   ; 
- D 0 - I - 0x038562 0E:8552: 28        .byte $28   ; 
- D 0 - I - 0x038563 0E:8553: 29        .byte $29   ; 
- D 0 - I - 0x038564 0E:8554: 2A        .byte $2A   ; 
- D 0 - I - 0x038565 0E:8555: FF        .byte $FF   ; 



off_8556_03:
- D 0 - I - 0x038566 0E:8556: 01        .byte $01   ; 
- D 0 - I - 0x038567 0E:8557: 38        .byte $38   ; 
- D 0 - I - 0x038568 0E:8558: 39        .byte $39   ; 
- D 0 - I - 0x038569 0E:8559: 02        .byte $02   ; 
- D 0 - I - 0x03856A 0E:855A: 03        .byte $03   ; 
- D 0 - I - 0x03856B 0E:855B: 04        .byte $04   ; 
- D 0 - I - 0x03856C 0E:855C: 2B        .byte $2B   ; 
- D 0 - I - 0x03856D 0E:855D: 2C        .byte $2C   ; 
- D 0 - I - 0x03856E 0E:855E: 2D        .byte $2D   ; 
- D 0 - I - 0x03856F 0E:855F: 08        .byte $08   ; 
- D 0 - I - 0x038570 0E:8560: 04        .byte $04   ; 
- D 0 - I - 0x038571 0E:8561: 2E        .byte $2E   ; 
- D 0 - I - 0x038572 0E:8562: 2F        .byte $2F   ; 
- D 0 - I - 0x038573 0E:8563: 30        .byte $30   ; 
- D 0 - I - 0x038574 0E:8564: 08        .byte $08   ; 
- D 0 - I - 0x038575 0E:8565: 04        .byte $04   ; 
- D 0 - I - 0x038576 0E:8566: 31        .byte $31   ; 
- D 0 - I - 0x038577 0E:8567: 32        .byte $32   ; 
- D 0 - I - 0x038578 0E:8568: 33        .byte $33   ; 
- D 0 - I - 0x038579 0E:8569: 08        .byte $08   ; 
- D 0 - I - 0x03857A 0E:856A: 05        .byte $05   ; 
- D 0 - I - 0x03857B 0E:856B: 06        .byte $06   ; 
- D 0 - I - 0x03857C 0E:856C: 35        .byte $35   ; 
- D 0 - I - 0x03857D 0E:856D: 36        .byte $36   ; 
- D 0 - I - 0x03857E 0E:856E: 37        .byte $37   ; 
- D 0 - I - 0x03857F 0E:856F: FF        .byte $FF   ; 



off_8570_04:
- D 0 - I - 0x038580 0E:8570: 01        .byte $01   ; 
- D 0 - I - 0x038581 0E:8571: 02        .byte $02   ; 
- D 0 - I - 0x038582 0E:8572: 49        .byte $49   ; 
- D 0 - I - 0x038583 0E:8573: 4A        .byte $4A   ; 
- D 0 - I - 0x038584 0E:8574: 03        .byte $03   ; 
- D 0 - I - 0x038585 0E:8575: 04        .byte $04   ; 
- D 0 - I - 0x038586 0E:8576: 00        .byte $00   ; 
- D 0 - I - 0x038587 0E:8577: 4B        .byte $4B   ; 
- D 0 - I - 0x038588 0E:8578: 4C        .byte $4C   ; 
- D 0 - I - 0x038589 0E:8579: 08        .byte $08   ; 
- D 0 - I - 0x03858A 0E:857A: 04        .byte $04   ; 
- D 0 - I - 0x03858B 0E:857B: 4D        .byte $4D   ; 
- D 0 - I - 0x03858C 0E:857C: 4E        .byte $4E   ; 
- D 0 - I - 0x03858D 0E:857D: 4F        .byte $4F   ; 
- D 0 - I - 0x03858E 0E:857E: 08        .byte $08   ; 
- D 0 - I - 0x03858F 0E:857F: 04        .byte $04   ; 
- D 0 - I - 0x038590 0E:8580: 50        .byte $50   ; 
- D 0 - I - 0x038591 0E:8581: 51        .byte $51   ; 
- D 0 - I - 0x038592 0E:8582: 52        .byte $52   ; 
- D 0 - I - 0x038593 0E:8583: 08        .byte $08   ; 
- D 0 - I - 0x038594 0E:8584: 05        .byte $05   ; 
- D 0 - I - 0x038595 0E:8585: 53        .byte $53   ; 
- D 0 - I - 0x038596 0E:8586: 54        .byte $54   ; 
- D 0 - I - 0x038597 0E:8587: 55        .byte $55   ; 
- D 0 - I - 0x038598 0E:8588: 07        .byte $07   ; 
- D 0 - I - 0x038599 0E:8589: FF        .byte $FF   ; 



off_858A_05:
- D 0 - I - 0x03859A 0E:858A: 01        .byte $01   ; 
- D 0 - I - 0x03859B 0E:858B: 56        .byte $56   ; 
- D 0 - I - 0x03859C 0E:858C: 57        .byte $57   ; 
- D 0 - I - 0x03859D 0E:858D: 58        .byte $58   ; 
- D 0 - I - 0x03859E 0E:858E: 59        .byte $59   ; 
- D 0 - I - 0x03859F 0E:858F: 04        .byte $04   ; 
- D 0 - I - 0x0385A0 0E:8590: 5A        .byte $5A   ; 
- D 0 - I - 0x0385A1 0E:8591: 5B        .byte $5B   ; 
- D 0 - I - 0x0385A2 0E:8592: 5C        .byte $5C   ; 
- D 0 - I - 0x0385A3 0E:8593: 5D        .byte $5D   ; 
- D 0 - I - 0x0385A4 0E:8594: 04        .byte $04   ; 
- D 0 - I - 0x0385A5 0E:8595: 5E        .byte $5E   ; 
- D 0 - I - 0x0385A6 0E:8596: 5F        .byte $5F   ; 
- D 0 - I - 0x0385A7 0E:8597: 60        .byte $60   ; 
- D 0 - I - 0x0385A8 0E:8598: 61        .byte $61   ; 
- D 0 - I - 0x0385A9 0E:8599: 04        .byte $04   ; 
- D 0 - I - 0x0385AA 0E:859A: 62        .byte $62   ; 
- D 0 - I - 0x0385AB 0E:859B: 63        .byte $63   ; 
- D 0 - I - 0x0385AC 0E:859C: 64        .byte $64   ; 
- D 0 - I - 0x0385AD 0E:859D: 65        .byte $65   ; 
- D 0 - I - 0x0385AE 0E:859E: 05        .byte $05   ; 
- D 0 - I - 0x0385AF 0E:859F: 06        .byte $06   ; 
- D 0 - I - 0x0385B0 0E:85A0: 66        .byte $66   ; 
- D 0 - I - 0x0385B1 0E:85A1: 67        .byte $67   ; 
- D 0 - I - 0x0385B2 0E:85A2: 68        .byte $68   ; 
- D 0 - I - 0x0385B3 0E:85A3: FF        .byte $FF   ; 



off_85A4_06:
- D 0 - I - 0x0385B4 0E:85A4: 01        .byte $01   ; 
- D 0 - I - 0x0385B5 0E:85A5: 69        .byte $69   ; 
- D 0 - I - 0x0385B6 0E:85A6: 6A        .byte $6A   ; 
- D 0 - I - 0x0385B7 0E:85A7: 02        .byte $02   ; 
- D 0 - I - 0x0385B8 0E:85A8: 03        .byte $03   ; 
- D 0 - I - 0x0385B9 0E:85A9: 6B        .byte $6B   ; 
- D 0 - I - 0x0385BA 0E:85AA: 6C        .byte $6C   ; 
- D 0 - I - 0x0385BB 0E:85AB: 6D        .byte $6D   ; 
- D 0 - I - 0x0385BC 0E:85AC: 6E        .byte $6E   ; 
- D 0 - I - 0x0385BD 0E:85AD: 08        .byte $08   ; 
- D 0 - I - 0x0385BE 0E:85AE: 6F        .byte $6F   ; 
- D 0 - I - 0x0385BF 0E:85AF: 70        .byte $70   ; 
- D 0 - I - 0x0385C0 0E:85B0: 71        .byte $71   ; 
- D 0 - I - 0x0385C1 0E:85B1: 72        .byte $72   ; 
- D 0 - I - 0x0385C2 0E:85B2: 08        .byte $08   ; 
- D 0 - I - 0x0385C3 0E:85B3: 73        .byte $73   ; 
- D 0 - I - 0x0385C4 0E:85B4: 74        .byte $74   ; 
- D 0 - I - 0x0385C5 0E:85B5: 75        .byte $75   ; 
- D 0 - I - 0x0385C6 0E:85B6: 76        .byte $76   ; 
- D 0 - I - 0x0385C7 0E:85B7: 08        .byte $08   ; 
- D 0 - I - 0x0385C8 0E:85B8: 77        .byte $77   ; 
- D 0 - I - 0x0385C9 0E:85B9: 78        .byte $78   ; 
- D 0 - I - 0x0385CA 0E:85BA: 79        .byte $79   ; 
- D 0 - I - 0x0385CB 0E:85BB: 7A        .byte $7A   ; 
- D 0 - I - 0x0385CC 0E:85BC: 7B        .byte $7B   ; 
- D 0 - I - 0x0385CD 0E:85BD: FF        .byte $FF   ; 



tbl_85BE:
- - - - - - 0x0385CE 0E:85BE: 03        .byte $03   ; 00
- - - - - - 0x0385CF 0E:85BF: C0        .byte $C0   ; 01
- - - - - - 0x0385D0 0E:85C0: 27        .byte $27   ; 02
- - - - - - 0x0385D1 0E:85C1: 18        .byte $18   ; 03
- - - - - - 0x0385D2 0E:85C2: 00        .byte $00   ; 04
- - - - - - 0x0385D3 0E:85C3: 03        .byte $03   ; 05
- - - - - - 0x0385D4 0E:85C4: D8        .byte $D8   ; 06
- - - - - - 0x0385D5 0E:85C5: 23        .byte $23   ; 07
- - - - - - 0x0385D6 0E:85C6: 10        .byte $10   ; 08
- - - - - - 0x0385D7 0E:85C7: 55        .byte $55   ; 09
- - - - - - 0x0385D8 0E:85C8: 03        .byte $03   ; 0A
- - - - - - 0x0385D9 0E:85C9: E8        .byte $E8   ; 0B
- - - - - - 0x0385DA 0E:85CA: 23        .byte $23   ; 0C
- - - - - - 0x0385DB 0E:85CB: 18        .byte $18   ; 0D
- - - - - - 0x0385DC 0E:85CC: AA        .byte $AA   ; 0E
- - - - - - 0x0385DD 0E:85CD: FE        .byte $FE   ; 0F



tbl_85CE:
- - - - - - 0x0385DE 0E:85CE: C3        .byte $C3   ; 
tbl_85CF:
- - - - - - 0x0385DF 0E:85CF: 24        .byte $24   ; 
- - - - - - 0x0385E0 0E:85D0: 98        .byte $98   ; 
- - - - - - 0x0385E1 0E:85D1: 22        .byte $22   ; 
- D 0 - - - 0x0385E2 0E:85D2: C6        .byte $C6   ; 
- D 0 - - - 0x0385E3 0E:85D3: 20        .byte $20   ; 
- D 0 - - - 0x0385E4 0E:85D4: D5        .byte $D5   ; 
- D 0 - - - 0x0385E5 0E:85D5: 20        .byte $20   ; 



.export sub_0x0385E6
sub_0x0385E6:
C - - - - - 0x0385E6 0E:85D6: AD 30 05  LDA ram_0530
C - - - - - 0x0385E9 0E:85D9: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x0385EC 0E:85DC: E8 85     .word ofs_85E8_00
- - - - - - 0x0385EE 0E:85DE: 81 86     .word ofs_8681_01
- D 0 - I - 0x0385F0 0E:85E0: 89 86     .word ofs_8689_02
- D 0 - I - 0x0385F2 0E:85E2: 9C 86     .word ofs_869C_03
- D 0 - I - 0x0385F4 0E:85E4: 06 87     .word ofs_8706_04
- D 0 - I - 0x0385F6 0E:85E6: 36 87     .word ofs_8736_05



ofs_85E8_00:
C - - J - - 0x0385F8 0E:85E8: 20 C1 F7  JSR sub_0x03F7D1
C - - - - - 0x0385FB 0E:85EB: A9 00     LDA #$00
C - - - - - 0x0385FD 0E:85ED: 8D 11 01  STA ram_0111
C - - - - - 0x038600 0E:85F0: 8D 12 01  STA ram_0112
C - - - - - 0x038603 0E:85F3: 20 3F F0  JSR sub_0x03F04F
C - - - - - 0x038606 0E:85F6: A9 0D     LDA #$0D
C - - - - - 0x038608 0E:85F8: 20 14 F8  JSR sub_0x03F824
C - - - - - 0x03860B 0E:85FB: A9 01     LDA #$01
C - - - - - 0x03860D 0E:85FD: 20 D3 F7  JSR sub_0x03F7E3
C - - - - - 0x038610 0E:8600: 20 E2 86  JSR sub_86E2
C - - - - - 0x038613 0E:8603: A9 09     LDA #$09
C - - - - - 0x038615 0E:8605: 8D 60 05  STA ram_0560
C - - - - - 0x038618 0E:8608: A9 46     LDA #$46
C - - - - - 0x03861A 0E:860A: 8D 61 05  STA ram_0561
C - - - - - 0x03861D 0E:860D: A5 2C     LDA ram_002C
C - - - - - 0x03861F 0E:860F: C9 02     CMP #$02
C - - - - - 0x038621 0E:8611: F0 51     BEQ bra_8664
C - - - - - 0x038623 0E:8613: A5 31     LDA ram_continues
C - - - - - 0x038625 0E:8615: F0 4D     BEQ bra_8664
C - - - - - 0x038627 0E:8617: A9 07     LDA #$07
C - - - - - 0x038629 0E:8619: 20 E5 F6  JSR sub_0x03F6F5
C - - - - - 0x03862C 0E:861C: A9 03     LDA #$03
C - - - - - 0x03862E 0E:861E: 8D 30 05  STA ram_0530
C - - - - - 0x038631 0E:8621: 20 52 86  JSR sub_8652
C - - - - - 0x038634 0E:8624: 20 40 87  JSR sub_8740
C - - - - - 0x038637 0E:8627: A9 38     LDA #$38
C - - - - - 0x038639 0E:8629: 20 90 F6  JSR sub_0x03F6A0
C - - - - - 0x03863C 0E:862C: 20 3F 86  JSR sub_863F
sub_862F:
C - - - - - 0x03863F 0E:862F: A0 00     LDY #$00
bra_8631:
C - - - - - 0x038641 0E:8631: B9 39 88  LDA tbl_8839,Y
C - - - - - 0x038644 0E:8634: F0 06     BEQ bra_863C
C - - - - - 0x038646 0E:8636: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x038649 0E:8639: C8        INY
C - - - - - 0x03864A 0E:863A: D0 F5     BNE bra_8631
bra_863C:
C - - - - - 0x03864C 0E:863C: 4C 41 E1  JMP loc_0x03E151



sub_863F:
C - - - - - 0x03864F 0E:863F: A9 00     LDA #$00
C - - - - - 0x038651 0E:8641: 8D 30 04  STA ram_0430
C - - - - - 0x038654 0E:8644: A9 1F     LDA #$1F
C - - - - - 0x038656 0E:8646: 8D 10 04  STA ram_Y_pos_hi_object
C - - - - - 0x038659 0E:8649: A9 60     LDA #$60
C - - - - - 0x03865B 0E:864B: 8D 40 04  STA ram_X_pos_hi_object
C - - - - - 0x03865E 0E:864E: EE 00 04  INC ram_anim_object
C - - - - - 0x038661 0E:8651: 60        RTS



sub_8652:
loc_8652:
C D 0 - - - 0x038662 0E:8652: A9 22     LDA #$22
C - - - - - 0x038664 0E:8654: A0 35     LDY #$35
C - - - - - 0x038666 0E:8656: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x038669 0E:8659: 18        CLC
C - - - - - 0x03866A 0E:865A: A5 31     LDA ram_continues
C - - - - - 0x03866C 0E:865C: 69 81     ADC #$81
C - - - - - 0x03866E 0E:865E: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x038671 0E:8661: 4C 5B D2  JMP loc_0x03D26B
bra_8664:
C - - - - - 0x038674 0E:8664: 20 3F 86  JSR sub_863F
C - - - - - 0x038677 0E:8667: 20 2F 86  JSR sub_862F
bra_866A:
C - - - - - 0x03867A 0E:866A: A9 02     LDA #$02
C - - - - - 0x03867C 0E:866C: 8D 30 05  STA ram_0530
C - - - - - 0x03867F 0E:866F: A9 03     LDA #$03
C - - - - - 0x038681 0E:8671: 8D 60 05  STA ram_0560
C - - - - - 0x038684 0E:8674: 8D 61 05  STA ram_0561
C - - - - - 0x038687 0E:8677: A9 06     LDA #$06
C - - - - - 0x038689 0E:8679: 20 E5 F6  JSR sub_0x03F6F5
C - - - - - 0x03868C 0E:867C: A9 39     LDA #$39
C - - - - - 0x03868E 0E:867E: 4C 90 F6  JMP loc_0x03F6A0



ofs_8681_01:
- - - - - - 0x038691 0E:8681: CE 60 05  DEC ram_0560
- - - - - - 0x038694 0E:8684: 30 E4     BMI bra_866A
- - - - - - 0x038696 0E:8686: 4C BA 86  JMP loc_86BA



ofs_8689_02:
C - - J - - 0x038699 0E:8689: CE 61 05  DEC ram_0561
C - - - - - 0x03869C 0E:868C: AD 61 05  LDA ram_0561
C - - - - - 0x03869F 0E:868F: 29 7F     AND #$7F
C - - - - - 0x0386A1 0E:8691: D0 08     BNE bra_869B_RTS
C - - - - - 0x0386A3 0E:8693: CE 60 05  DEC ram_0560
C - - - - - 0x0386A6 0E:8696: 10 03     BPL bra_869B_RTS
C - - - - - 0x0386A8 0E:8698: 4C CD F5  JMP loc_0x03F5DD
bra_869B_RTS:
C - - - - - 0x0386AB 0E:869B: 60        RTS



ofs_869C_03:
C - - J - - 0x0386AC 0E:869C: A5 22     LDA ram_frame_counter
C - - - - - 0x0386AE 0E:869E: 29 07     AND #$07
C - - - - - 0x0386B0 0E:86A0: D0 06     BNE bra_86A8
C - - - - - 0x0386B2 0E:86A2: A5 93     LDA ram_sum_btn_hold
C - - - - - 0x0386B4 0E:86A4: 29 C0     AND #con_btns_AB
C - - - - - 0x0386B6 0E:86A6: D0 05     BNE bra_86AD
bra_86A8:
C - - - - - 0x0386B8 0E:86A8: CE 61 05  DEC ram_0561
C - - - - - 0x0386BB 0E:86AB: D0 0D     BNE bra_86BA
bra_86AD:
C - - - - - 0x0386BD 0E:86AD: A9 60     LDA #$60
C - - - - - 0x0386BF 0E:86AF: 8D 61 05  STA ram_0561
C - - - - - 0x0386C2 0E:86B2: CE 60 05  DEC ram_0560
C - - - - - 0x0386C5 0E:86B5: 30 31     BMI bra_86E8
C - - - - - 0x0386C7 0E:86B7: 4C 40 87  JMP loc_8740
bra_86BA:
loc_86BA:
C - - - - - 0x0386CA 0E:86BA: A5 90     LDA ram_sum_btn_press
C - - - - - 0x0386CC 0E:86BC: 29 10     AND #con_btn_Start
C - - - - - 0x0386CE 0E:86BE: F0 DB     BEQ bra_869B_RTS
C - - - - - 0x0386D0 0E:86C0: A9 28     LDA #$28
C - - - - - 0x0386D2 0E:86C2: 20 90 F6  JSR sub_0x03F6A0
C - - - - - 0x0386D5 0E:86C5: A9 80     LDA #$80
C - - - - - 0x0386D7 0E:86C7: 8D B0 04  STA ram_04B0
C - - - - - 0x0386DA 0E:86CA: C6 31     DEC ram_continues
C - - - - - 0x0386DC 0E:86CC: A9 04     LDA #$04
C - - - - - 0x0386DE 0E:86CE: 8D 30 05  STA ram_0530
C - - - - - 0x0386E1 0E:86D1: CE 00 04  DEC ram_anim_object
C - - - - - 0x0386E4 0E:86D4: A0 00     LDY #$00
bra_86D6:
C - - - - - 0x0386E6 0E:86D6: B9 76 88  LDA tbl_8876,Y
C - - - - - 0x0386E9 0E:86D9: 30 06     BMI bra_86E1_RTS
C - - - - - 0x0386EB 0E:86DB: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x0386EE 0E:86DE: C8        INY
C - - - - - 0x0386EF 0E:86DF: D0 F5     BNE bra_86D6
bra_86E1_RTS:
C - - - - - 0x0386F1 0E:86E1: 60        RTS



sub_86E2:
C - - - - - 0x0386F2 0E:86E2: A9 02     LDA #$02
C - - - - - 0x0386F4 0E:86E4: AA        TAX
C - - - - - 0x0386F5 0E:86E5: 4C 46 D3  JMP loc_0x03D356
bra_86E8:
- - - - - - 0x0386F8 0E:86E8: A0 00     LDY #$00
bra_86EA_loop:
- - - - - - 0x0386FA 0E:86EA: B9 24 88  LDA tbl_8824,Y
- - - - - - 0x0386FD 0E:86ED: C9 FF     CMP #$FF
- - - - - - 0x0386FF 0E:86EF: F0 06     BEQ bra_86F7
- - - - - - 0x038701 0E:86F1: 20 5D D2  JSR sub_0x03D26D
- - - - - - 0x038704 0E:86F4: C8        INY
- - - - - - 0x038705 0E:86F5: D0 F3     BNE bra_86EA_loop
bra_86F7:
- - - - - - 0x038707 0E:86F7: A9 01     LDA #$01
- - - - - - 0x038709 0E:86F9: 8D 30 05  STA ram_0530
- - - - - - 0x03870C 0E:86FC: A9 60     LDA #$60
- - - - - - 0x03870E 0E:86FE: 8D 60 05  STA ram_0560
- - - - - - 0x038711 0E:8701: A9 27     LDA #$27
- - - - - - 0x038713 0E:8703: 4C 8B F6  JMP loc_0x03F69B



ofs_8706_04:
C - - J - - 0x038716 0E:8706: A9 00     LDA #$00
C - - - - - 0x038718 0E:8708: 8D 30 04  STA ram_0430
C - - - - - 0x03871B 0E:870B: AD B0 04  LDA ram_04B0
C - - - - - 0x03871E 0E:870E: C9 80     CMP #$80
C - - - - - 0x038720 0E:8710: D0 08     BNE bra_871A
C - - - - - 0x038722 0E:8712: CE B0 04  DEC ram_04B0
C - - - - - 0x038725 0E:8715: A9 02     LDA #$02
C - - - - - 0x038727 0E:8717: 4C D3 F7  JMP loc_0x03F7E3
bra_871A:
C - - - - - 0x03872A 0E:871A: CE B0 04  DEC ram_04B0
C - - - - - 0x03872D 0E:871D: F0 11     BEQ bra_8730
C - - - - - 0x03872F 0E:871F: 29 08     AND #$08
C - - - - - 0x038731 0E:8721: 20 02 D2  JSR sub_0x03D212_multiply_by_10h
C - - - - - 0x038734 0E:8724: 09 07     ORA #$07
C - - - - - 0x038736 0E:8726: 48        PHA
C - - - - - 0x038737 0E:8727: 20 E5 F6  JSR sub_0x03F6F5
C - - - - - 0x03873A 0E:872A: 68        PLA
C - - - - - 0x03873B 0E:872B: 30 60     BMI bra_878D_RTS
C - - - - - 0x03873D 0E:872D: 4C 52 86  JMP loc_8652
bra_8730:
C - - - - - 0x038740 0E:8730: EE 30 05  INC ram_0530
C - - - - - 0x038743 0E:8733: 4C 2E E1  JMP loc_0x03E13E



ofs_8736_05:
C - - J - - 0x038746 0E:8736: A9 01     LDA #$01
C - - - - - 0x038748 0E:8738: 85 94     STA ram_0094
C - - - - - 0x03874A 0E:873A: 20 3C F0  JSR sub_0x03F04C
C - - - - - 0x03874D 0E:873D: 4C 09 DE  JMP loc_0x03DE19



sub_8740:
loc_8740:
C D 0 - - - 0x038750 0E:8740: AD 60 05  LDA ram_0560
C - - - - - 0x038753 0E:8743: 85 00     STA ram_0000
C - - - - - 0x038755 0E:8745: 0A        ASL
C - - - - - 0x038756 0E:8746: 85 01     STA ram_0001
C - - - - - 0x038758 0E:8748: 0A        ASL
C - - - - - 0x038759 0E:8749: 85 02     STA ram_0002
C - - - - - 0x03875B 0E:874B: 0A        ASL
C - - - - - 0x03875C 0E:874C: 65 00     ADC ram_0000
C - - - - - 0x03875E 0E:874E: 65 01     ADC ram_0001
C - - - - - 0x038760 0E:8750: 65 02     ADC ram_0002
C - - - - - 0x038762 0E:8752: 85 00     STA ram_0000
C - - - - - 0x038764 0E:8754: A9 22     LDA #$22
C - - - - - 0x038766 0E:8756: 85 01     STA ram_0001
C - - - - - 0x038768 0E:8758: A9 6F     LDA #$6F
C - - - - - 0x03876A 0E:875A: 85 02     STA ram_0002
C - - - - - 0x03876C 0E:875C: A9 04     LDA #$04
C - - - - - 0x03876E 0E:875E: 85 03     STA ram_0003
bra_8760:
C - - - - - 0x038770 0E:8760: A5 01     LDA ram_0001
C - - - - - 0x038772 0E:8762: A4 02     LDY ram_0002
C - - - - - 0x038774 0E:8764: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x038777 0E:8767: A9 02     LDA #$02
C - - - - - 0x038779 0E:8769: 85 04     STA ram_0004
bra_876B:
C - - - - - 0x03877B 0E:876B: A4 00     LDY ram_0000
C - - - - - 0x03877D 0E:876D: B9 8E 87  LDA tbl_878E,Y
C - - - - - 0x038780 0E:8770: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x038783 0E:8773: E6 00     INC ram_0000
C - - - - - 0x038785 0E:8775: C6 04     DEC ram_0004
C - - - - - 0x038787 0E:8777: 10 F2     BPL bra_876B
C - - - - - 0x038789 0E:8779: 20 5B D2  JSR sub_0x03D26B
C - - - - - 0x03878C 0E:877C: 18        CLC
C - - - - - 0x03878D 0E:877D: A5 02     LDA ram_0002
C - - - - - 0x03878F 0E:877F: 69 20     ADC #$20
C - - - - - 0x038791 0E:8781: 85 02     STA ram_0002
C - - - - - 0x038793 0E:8783: A5 01     LDA ram_0001
C - - - - - 0x038795 0E:8785: 69 00     ADC #$00
C - - - - - 0x038797 0E:8787: 85 01     STA ram_0001
C - - - - - 0x038799 0E:8789: C6 03     DEC ram_0003
C - - - - - 0x03879B 0E:878B: 10 D3     BPL bra_8760
bra_878D_RTS:
C - - - - - 0x03879D 0E:878D: 60        RTS



tbl_878E:
- - - - - - 0x03879E 0E:878E: B6        .byte $B6   ; 
- - - - - - 0x03879F 0E:878F: 79        .byte $79   ; 
- - - - - - 0x0387A0 0E:8790: 7A        .byte $7A   ; 
- - - - - - 0x0387A1 0E:8791: 71        .byte $71   ; 
- - - - - - 0x0387A2 0E:8792: 00        .byte $00   ; 
- - - - - - 0x0387A3 0E:8793: 5F        .byte $5F   ; 
- - - - - - 0x0387A4 0E:8794: 71        .byte $71   ; 
- - - - - - 0x0387A5 0E:8795: 00        .byte $00   ; 
- - - - - - 0x0387A6 0E:8796: 5F        .byte $5F   ; 
- - - - - - 0x0387A7 0E:8797: 71        .byte $71   ; 
- - - - - - 0x0387A8 0E:8798: 00        .byte $00   ; 
- - - - - - 0x0387A9 0E:8799: 5F        .byte $5F   ; 
- - - - - - 0x0387AA 0E:879A: 7E        .byte $7E   ; 
- - - - - - 0x0387AB 0E:879B: 7C        .byte $7C   ; 
- - - - - - 0x0387AC 0E:879C: 7D        .byte $7D   ; 
- - - - - - 0x0387AD 0E:879D: 00        .byte $00   ; 
- - - - - - 0x0387AE 0E:879E: 5F        .byte $5F   ; 
- - - - - - 0x0387AF 0E:879F: 00        .byte $00   ; 
- - - - - - 0x0387B0 0E:87A0: 00        .byte $00   ; 
- - - - - - 0x0387B1 0E:87A1: 5F        .byte $5F   ; 
- - - - - - 0x0387B2 0E:87A2: 00        .byte $00   ; 
- - - - - - 0x0387B3 0E:87A3: 00        .byte $00   ; 
- - - - - - 0x0387B4 0E:87A4: 5F        .byte $5F   ; 
- - - - - - 0x0387B5 0E:87A5: 70        .byte $70   ; 
- - - - - - 0x0387B6 0E:87A6: 00        .byte $00   ; 
- - - - - - 0x0387B7 0E:87A7: 5F        .byte $5F   ; 
- - - - - - 0x0387B8 0E:87A8: 71        .byte $71   ; 
- - - - - - 0x0387B9 0E:87A9: 00        .byte $00   ; 
- - - - - - 0x0387BA 0E:87AA: 5F        .byte $5F   ; 
- - - - - - 0x0387BB 0E:87AB: 71        .byte $71   ; 
- - - - - - 0x0387BC 0E:87AC: 78        .byte $78   ; 
- - - - - - 0x0387BD 0E:87AD: 79        .byte $79   ; 
- - - - - - 0x0387BE 0E:87AE: 7A        .byte $7A   ; 
- - - - - - 0x0387BF 0E:87AF: 00        .byte $00   ; 
- - - - - - 0x0387C0 0E:87B0: 00        .byte $00   ; 
- - - - - - 0x0387C1 0E:87B1: 5F        .byte $5F   ; 
- - - - - - 0x0387C2 0E:87B2: 7B        .byte $7B   ; 
- - - - - - 0x0387C3 0E:87B3: 7C        .byte $7C   ; 
- - - - - - 0x0387C4 0E:87B4: 7D        .byte $7D   ; 
- - - - - - 0x0387C5 0E:87B5: 5F        .byte $5F   ; 
- - - - - - 0x0387C6 0E:87B6: 00        .byte $00   ; 
- - - - - - 0x0387C7 0E:87B7: 00        .byte $00   ; 
- - - - - - 0x0387C8 0E:87B8: 5F        .byte $5F   ; 
- - - - - - 0x0387C9 0E:87B9: 7C        .byte $7C   ; 
- - - - - - 0x0387CA 0E:87BA: 7C        .byte $7C   ; 
- D 0 - - - 0x0387CB 0E:87BB: 78        .byte $78   ; 
- D 0 - - - 0x0387CC 0E:87BC: 79        .byte $79   ; 
- D 0 - - - 0x0387CD 0E:87BD: 7A        .byte $7A   ; 
- D 0 - - - 0x0387CE 0E:87BE: 00        .byte $00   ; 
- D 0 - - - 0x0387CF 0E:87BF: 00        .byte $00   ; 
- D 0 - - - 0x0387D0 0E:87C0: 5F        .byte $5F   ; 
- D 0 - - - 0x0387D1 0E:87C1: 00        .byte $00   ; 
- D 0 - - - 0x0387D2 0E:87C2: 7C        .byte $7C   ; 
- D 0 - - - 0x0387D3 0E:87C3: 7D        .byte $7D   ; 
- D 0 - - - 0x0387D4 0E:87C4: 00        .byte $00   ; 
- D 0 - - - 0x0387D5 0E:87C5: 7F        .byte $7F   ; 
- D 0 - - - 0x0387D6 0E:87C6: B0        .byte $B0   ; 
- D 0 - - - 0x0387D7 0E:87C7: 7B        .byte $7B   ; 
- D 0 - - - 0x0387D8 0E:87C8: B1        .byte $B1   ; 
- D 0 - - - 0x0387D9 0E:87C9: B0        .byte $B0   ; 
- D 0 - - - 0x0387DA 0E:87CA: 5F        .byte $5F   ; 
- D 0 - - - 0x0387DB 0E:87CB: 79        .byte $79   ; 
- D 0 - - - 0x0387DC 0E:87CC: B2        .byte $B2   ; 
- D 0 - - - 0x0387DD 0E:87CD: 5F        .byte $5F   ; 
- D 0 - - - 0x0387DE 0E:87CE: 00        .byte $00   ; 
- D 0 - - - 0x0387DF 0E:87CF: B2        .byte $B2   ; 
- D 0 - - - 0x0387E0 0E:87D0: 5F        .byte $5F   ; 
- D 0 - - - 0x0387E1 0E:87D1: 00        .byte $00   ; 
- D 0 - - - 0x0387E2 0E:87D2: B2        .byte $B2   ; 
- D 0 - - - 0x0387E3 0E:87D3: 78        .byte $78   ; 
- D 0 - - - 0x0387E4 0E:87D4: 79        .byte $79   ; 
- D 0 - - - 0x0387E5 0E:87D5: B3        .byte $B3   ; 
- D 0 - - - 0x0387E6 0E:87D6: 00        .byte $00   ; 
- D 0 - - - 0x0387E7 0E:87D7: 00        .byte $00   ; 
- D 0 - - - 0x0387E8 0E:87D8: B2        .byte $B2   ; 
- D 0 - - - 0x0387E9 0E:87D9: 5F        .byte $5F   ; 
- D 0 - - - 0x0387EA 0E:87DA: 79        .byte $79   ; 
- D 0 - - - 0x0387EB 0E:87DB: 79        .byte $79   ; 
- D 0 - - - 0x0387EC 0E:87DC: 5F        .byte $5F   ; 
- D 0 - - - 0x0387ED 0E:87DD: 00        .byte $00   ; 
- D 0 - - - 0x0387EE 0E:87DE: 00        .byte $00   ; 
- D 0 - - - 0x0387EF 0E:87DF: 78        .byte $78   ; 
- D 0 - - - 0x0387F0 0E:87E0: 79        .byte $79   ; 
- D 0 - - - 0x0387F1 0E:87E1: 7A        .byte $7A   ; 
- D 0 - - - 0x0387F2 0E:87E2: 00        .byte $00   ; 
- D 0 - - - 0x0387F3 0E:87E3: 00        .byte $00   ; 
- D 0 - - - 0x0387F4 0E:87E4: 5F        .byte $5F   ; 
- D 0 - - - 0x0387F5 0E:87E5: 7C        .byte $7C   ; 
- D 0 - - - 0x0387F6 0E:87E6: 7C        .byte $7C   ; 
- D 0 - - - 0x0387F7 0E:87E7: 7D        .byte $7D   ; 
- D 0 - - - 0x0387F8 0E:87E8: 5F        .byte $5F   ; 
- D 0 - - - 0x0387F9 0E:87E9: 79        .byte $79   ; 
- D 0 - - - 0x0387FA 0E:87EA: B5        .byte $B5   ; 
- D 0 - - - 0x0387FB 0E:87EB: 5F        .byte $5F   ; 
- D 0 - - - 0x0387FC 0E:87EC: 00        .byte $00   ; 
- D 0 - - - 0x0387FD 0E:87ED: 00        .byte $00   ; 
- D 0 - - - 0x0387FE 0E:87EE: 5F        .byte $5F   ; 
- D 0 - - - 0x0387FF 0E:87EF: B0        .byte $B0   ; 
- D 0 - - - 0x038800 0E:87F0: B0        .byte $B0   ; 
- D 0 - - - 0x038801 0E:87F1: 5F        .byte $5F   ; 
- D 0 - - - 0x038802 0E:87F2: 71        .byte $71   ; 
- D 0 - - - 0x038803 0E:87F3: 7F        .byte $7F   ; 
- D 0 - - - 0x038804 0E:87F4: 5F        .byte $5F   ; 
- D 0 - - - 0x038805 0E:87F5: 7E        .byte $7E   ; 
- D 0 - - - 0x038806 0E:87F6: B1        .byte $B1   ; 
- D 0 - - - 0x038807 0E:87F7: 79        .byte $79   ; 
- D 0 - - - 0x038808 0E:87F8: 79        .byte $79   ; 
- D 0 - - - 0x038809 0E:87F9: B2        .byte $B2   ; 
- D 0 - - - 0x03880A 0E:87FA: 00        .byte $00   ; 
- D 0 - - - 0x03880B 0E:87FB: 00        .byte $00   ; 
- D 0 - - - 0x03880C 0E:87FC: B2        .byte $B2   ; 
- D 0 - - - 0x03880D 0E:87FD: 00        .byte $00   ; 
- D 0 - - - 0x03880E 0E:87FE: B7        .byte $B7   ; 
- D 0 - - - 0x03880F 0E:87FF: B2        .byte $B2   ; 
- D 0 - - - 0x038810 0E:8800: 00        .byte $00   ; 
- D 0 - - - 0x038811 0E:8801: 7F        .byte $7F   ; 
- D 0 - - - 0x038812 0E:8802: B2        .byte $B2   ; 
- D 0 - - - 0x038813 0E:8803: 00        .byte $00   ; 
- D 0 - - - 0x038814 0E:8804: 7F        .byte $7F   ; 
- D 0 - - - 0x038815 0E:8805: B2        .byte $B2   ; 
- D 0 - - - 0x038816 0E:8806: B6        .byte $B6   ; 
- D 0 - - - 0x038817 0E:8807: 79        .byte $79   ; 
- D 0 - - - 0x038818 0E:8808: B4        .byte $B4   ; 
- D 0 - - - 0x038819 0E:8809: 71        .byte $71   ; 
- D 0 - - - 0x03881A 0E:880A: 00        .byte $00   ; 
- D 0 - - - 0x03881B 0E:880B: 7F        .byte $7F   ; 
- D 0 - - - 0x03881C 0E:880C: 7E        .byte $7E   ; 
- D 0 - - - 0x03881D 0E:880D: 7C        .byte $7C   ; 
- D 0 - - - 0x03881E 0E:880E: B1        .byte $B1   ; 
- D 0 - - - 0x03881F 0E:880F: B0        .byte $B0   ; 
- D 0 - - - 0x038820 0E:8810: 00        .byte $00   ; 
- D 0 - - - 0x038821 0E:8811: 7F        .byte $7F   ; 
- D 0 - - - 0x038822 0E:8812: B0        .byte $B0   ; 
- D 0 - - - 0x038823 0E:8813: 7C        .byte $7C   ; 
- D 0 - - - 0x038824 0E:8814: B1        .byte $B1   ; 
- D 0 - - - 0x038825 0E:8815: B6        .byte $B6   ; 
- D 0 - - - 0x038826 0E:8816: 79        .byte $79   ; 
- D 0 - - - 0x038827 0E:8817: 7A        .byte $7A   ; 
- D 0 - - - 0x038828 0E:8818: 71        .byte $71   ; 
- D 0 - - - 0x038829 0E:8819: 00        .byte $00   ; 
- D 0 - - - 0x03882A 0E:881A: 5F        .byte $5F   ; 
- D 0 - - - 0x03882B 0E:881B: 7E        .byte $7E   ; 
- D 0 - - - 0x03882C 0E:881C: 7C        .byte $7C   ; 
- D 0 - - - 0x03882D 0E:881D: 7D        .byte $7D   ; 
- D 0 - - - 0x03882E 0E:881E: 00        .byte $00   ; 
- D 0 - - - 0x03882F 0E:881F: 7F        .byte $7F   ; 
- D 0 - - - 0x038830 0E:8820: B0        .byte $B0   ; 
- D 0 - - - 0x038831 0E:8821: 00        .byte $00   ; 
- D 0 - - - 0x038832 0E:8822: 7F        .byte $7F   ; 
- D 0 - - - 0x038833 0E:8823: B0        .byte $B0   ; 



tbl_8824:
- - - - - - 0x038834 0E:8824: 05        .byte $05   ; 
- - - - - - 0x038835 0E:8825: 6E        .byte $6E   ; 
- - - - - - 0x038836 0E:8826: 22        .byte $22   ; 
- - - - - - 0x038837 0E:8827: 05        .byte $05   ; 
- - - - - - 0x038838 0E:8828: 00        .byte $00   ; 
- - - - - - 0x038839 0E:8829: 05        .byte $05   ; 
- - - - - - 0x03883A 0E:882A: 6F        .byte $6F   ; 
- - - - - - 0x03883B 0E:882B: 22        .byte $22   ; 
- - - - - - 0x03883C 0E:882C: 05        .byte $05   ; 
- - - - - - 0x03883D 0E:882D: 00        .byte $00   ; 
- - - - - - 0x03883E 0E:882E: 05        .byte $05   ; 
- - - - - - 0x03883F 0E:882F: 70        .byte $70   ; 
- - - - - - 0x038840 0E:8830: 22        .byte $22   ; 
- - - - - - 0x038841 0E:8831: 05        .byte $05   ; 
- - - - - - 0x038842 0E:8832: 00        .byte $00   ; 
- - - - - - 0x038843 0E:8833: 05        .byte $05   ; 
- - - - - - 0x038844 0E:8834: 71        .byte $71   ; 
- - - - - - 0x038845 0E:8835: 22        .byte $22   ; 
- - - - - - 0x038846 0E:8836: 05        .byte $05   ; 
- - - - - - 0x038847 0E:8837: 00        .byte $00   ; 
- - - - - - 0x038848 0E:8838: FF        .byte $FF   ; 



tbl_8839:
- D 0 - - - 0x038849 0E:8839: 03        .byte $03   ; 
- D 0 - - - 0x03884A 0E:883A: C0        .byte $C0   ; 
- D 0 - - - 0x03884B 0E:883B: 23        .byte $23   ; 
- D 0 - - - 0x03884C 0E:883C: 0B        .byte $0B   ; 
- D 0 - - - 0x03884D 0E:883D: AA        .byte $AA   ; 
- D 0 - - - 0x03884E 0E:883E: 03        .byte $03   ; 
- D 0 - - - 0x03884F 0E:883F: CD        .byte $CD   ; 
- D 0 - - - 0x038850 0E:8840: 23        .byte $23   ; 
- D 0 - - - 0x038851 0E:8841: 06        .byte $06   ; 
- D 0 - - - 0x038852 0E:8842: AA        .byte $AA   ; 
- D 0 - - - 0x038853 0E:8843: 03        .byte $03   ; 
- D 0 - - - 0x038854 0E:8844: D5        .byte $D5   ; 
- D 0 - - - 0x038855 0E:8845: 23        .byte $23   ; 
- D 0 - - - 0x038856 0E:8846: 09        .byte $09   ; 
- D 0 - - - 0x038857 0E:8847: AA        .byte $AA   ; 
- D 0 - - - 0x038858 0E:8848: 03        .byte $03   ; 
- D 0 - - - 0x038859 0E:8849: E0        .byte $E0   ; 
- D 0 - - - 0x03885A 0E:884A: 23        .byte $23   ; 
- D 0 - - - 0x03885B 0E:884B: 18        .byte $18   ; 
- D 0 - - - 0x03885C 0E:884C: AA        .byte $AA   ; 
- D 0 - - - 0x03885D 0E:884D: 01        .byte $01   ; 
- D 0 - - - 0x03885E 0E:884E: 6B        .byte $6B   ; 
- D 0 - - - 0x03885F 0E:884F: 20        .byte $20   ; 
- D 0 - - - 0x038860 0E:8850: 77        .byte $77   ; 
- D 0 - - - 0x038861 0E:8851: FF        .byte $FF   ; 
- D 0 - - - 0x038862 0E:8852: 01        .byte $01   ; 
- D 0 - - - 0x038863 0E:8853: 74        .byte $74   ; 
- D 0 - - - 0x038864 0E:8854: 20        .byte $20   ; 
- D 0 - - - 0x038865 0E:8855: 78        .byte $78   ; 
- D 0 - - - 0x038866 0E:8856: FF        .byte $FF   ; 
- D 0 - - - 0x038867 0E:8857: 01        .byte $01   ; 
- D 0 - - - 0x038868 0E:8858: 8B        .byte $8B   ; 
- D 0 - - - 0x038869 0E:8859: 21        .byte $21   ; 
- D 0 - - - 0x03886A 0E:885A: 79        .byte $79   ; 
- D 0 - - - 0x03886B 0E:885B: FF        .byte $FF   ; 
- D 0 - - - 0x03886C 0E:885C: 01        .byte $01   ; 
- D 0 - - - 0x03886D 0E:885D: 94        .byte $94   ; 
- D 0 - - - 0x03886E 0E:885E: 21        .byte $21   ; 
- D 0 - - - 0x03886F 0E:885F: 7A        .byte $7A   ; 
- D 0 - - - 0x038870 0E:8860: FF        .byte $FF   ; 
- D 0 - - - 0x038871 0E:8861: 03        .byte $03   ; 
- D 0 - - - 0x038872 0E:8862: 6C        .byte $6C   ; 
- D 0 - - - 0x038873 0E:8863: 20        .byte $20   ; 
- D 0 - - - 0x038874 0E:8864: 08        .byte $08   ; 
- D 0 - - - 0x038875 0E:8865: 7B        .byte $7B   ; 
- D 0 - - - 0x038876 0E:8866: 05        .byte $05   ; 
- D 0 - - - 0x038877 0E:8867: 8B        .byte $8B   ; 
- D 0 - - - 0x038878 0E:8868: 20        .byte $20   ; 
- D 0 - - - 0x038879 0E:8869: 08        .byte $08   ; 
- D 0 - - - 0x03887A 0E:886A: 7D        .byte $7D   ; 
- D 0 - - - 0x03887B 0E:886B: 03        .byte $03   ; 
- D 0 - - - 0x03887C 0E:886C: 8C        .byte $8C   ; 
- D 0 - - - 0x03887D 0E:886D: 21        .byte $21   ; 
- D 0 - - - 0x03887E 0E:886E: 08        .byte $08   ; 
- D 0 - - - 0x03887F 0E:886F: 7C        .byte $7C   ; 
- D 0 - - - 0x038880 0E:8870: 05        .byte $05   ; 
- D 0 - - - 0x038881 0E:8871: 94        .byte $94   ; 
- D 0 - - - 0x038882 0E:8872: 20        .byte $20   ; 
- D 0 - - - 0x038883 0E:8873: 08        .byte $08   ; 
- D 0 - - - 0x038884 0E:8874: 7E        .byte $7E   ; 
- D 0 - - - 0x038885 0E:8875: 00        .byte $00   ; 



tbl_8876:
- D 0 - - - 0x038886 0E:8876: 03        .byte $03   ; 
- D 0 - - - 0x038887 0E:8877: 2C        .byte $2C   ; 
- D 0 - - - 0x038888 0E:8878: 22        .byte $22   ; 
- D 0 - - - 0x038889 0E:8879: 0C        .byte $0C   ; 
- D 0 - - - 0x03888A 0E:887A: 00        .byte $00   ; 
- D 0 - - - 0x03888B 0E:887B: 05        .byte $05   ; 
- D 0 - - - 0x03888C 0E:887C: 2F        .byte $2F   ; 
- D 0 - - - 0x03888D 0E:887D: 22        .byte $22   ; 
- D 0 - - - 0x03888E 0E:887E: 08        .byte $08   ; 
- D 0 - - - 0x03888F 0E:887F: 00        .byte $00   ; 
- D 0 - - - 0x038890 0E:8880: 05        .byte $05   ; 
- D 0 - - - 0x038891 0E:8881: 30        .byte $30   ; 
- D 0 - - - 0x038892 0E:8882: 22        .byte $22   ; 
- D 0 - - - 0x038893 0E:8883: 08        .byte $08   ; 
- D 0 - - - 0x038894 0E:8884: 00        .byte $00   ; 
- D 0 - - - 0x038895 0E:8885: 05        .byte $05   ; 
- D 0 - - - 0x038896 0E:8886: 31        .byte $31   ; 
- D 0 - - - 0x038897 0E:8887: 22        .byte $22   ; 
- D 0 - - - 0x038898 0E:8888: 08        .byte $08   ; 
- D 0 - - - 0x038899 0E:8889: 00        .byte $00   ; 
- D 0 - - - 0x03889A 0E:888A: 05        .byte $05   ; 
- D 0 - - - 0x03889B 0E:888B: 32        .byte $32   ; 
- D 0 - - - 0x03889C 0E:888C: 22        .byte $22   ; 
- D 0 - - - 0x03889D 0E:888D: 08        .byte $08   ; 
- D 0 - - - 0x03889E 0E:888E: 00        .byte $00   ; 
- D 0 - - - 0x03889F 0E:888F: FF        .byte $FF   ; 



.export sub_0x0388A0
sub_0x0388A0:
C - - - - - 0x0388A0 0E:8890: A5 95     LDA ram_0095
C - - - - - 0x0388A2 0E:8892: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x0388A5 0E:8895: 9F 88     .word ofs_889F_00
- D 0 - I - 0x0388A7 0E:8897: BA 88     .word ofs_88BA_01
- D 0 - I - 0x0388A9 0E:8899: 0E 89     .word ofs_890E_02
- D 0 - I - 0x0388AB 0E:889B: 8D 89     .word ofs_898D_03
- D 0 - I - 0x0388AD 0E:889D: 9E 89     .word ofs_899E_04



ofs_889F_00:
C - - J - - 0x0388AF 0E:889F: A4 2C     LDY ram_002C
C - - - - - 0x0388B1 0E:88A1: 88        DEY
C - - - - - 0x0388B2 0E:88A2: F0 06     BEQ bra_88AA
C - - - - - 0x0388B4 0E:88A4: 88        DEY
C - - - - - 0x0388B5 0E:88A5: F0 03     BEQ bra_88AA
C - - - - - 0x0388B7 0E:88A7: 4C 9E 89  JMP loc_899E
bra_88AA:
C - - - - - 0x0388BA 0E:88AA: 20 BE DA  JSR sub_0x03DACE
C - - - - - 0x0388BD 0E:88AD: A2 12     LDX #$12
C - - - - - 0x0388BF 0E:88AF: 20 44 F0  JSR sub_0x03F054
C - - - - - 0x0388C2 0E:88B2: 20 2F F7  JSR sub_0x03F73F
C - - - - - 0x0388C5 0E:88B5: E6 95     INC ram_0095
C - - - - - 0x0388C7 0E:88B7: 4C 6D D4  JMP loc_0x03D47D



ofs_88BA_01:
C - - J - - 0x0388CA 0E:88BA: A0 09     LDY #$09
C - - - - - 0x0388CC 0E:88BC: A9 02     LDA #$02
C - - - - - 0x0388CE 0E:88BE: 20 94 D3  JSR sub_0x03D3A4
C - - - - - 0x0388D1 0E:88C1: EE 30 05  INC ram_0530
C - - - - - 0x0388D4 0E:88C4: A5 2C     LDA ram_002C
C - - - - - 0x0388D6 0E:88C6: C9 02     CMP #$02
C - - - - - 0x0388D8 0E:88C8: D0 05     BNE bra_88CF
C - - - - - 0x0388DA 0E:88CA: A9 12     LDA #$12
C - - - - - 0x0388DC 0E:88CC: 20 E5 F6  JSR sub_0x03F6F5
bra_88CF:
C - - - - - 0x0388DF 0E:88CF: 20 25 DC  JSR sub_0x03DC35
C - - - - - 0x0388E2 0E:88D2: A0 02     LDY #$02
C - - - - - 0x0388E4 0E:88D4: 20 04 DC  JSR sub_0x03DC14
C - - - - - 0x0388E7 0E:88D7: E6 95     INC ram_0095
C - - - - - 0x0388E9 0E:88D9: A2 00     LDX #$00
C - - - - - 0x0388EB 0E:88DB: 20 1D E3  JSR sub_0x03E32D
C - - - - - 0x0388EE 0E:88DE: A2 02     LDX #$02
C - - - - - 0x0388F0 0E:88E0: 20 1D E3  JSR sub_0x03E32D
C - - - - - 0x0388F3 0E:88E3: A9 05     LDA #$05
C - - - - - 0x0388F5 0E:88E5: 20 14 F8  JSR sub_0x03F824
C - - - - - 0x0388F8 0E:88E8: 20 EF E2  JSR sub_0x03E2FF
C - - - - - 0x0388FB 0E:88EB: A9 2F     LDA #$2F
C - - - - - 0x0388FD 0E:88ED: 8D 12 04  STA ram_Y_pos_hi_blow
C - - - - - 0x038900 0E:88F0: 8D 13 04  STA ram_Y_pos_hi_blow + 1
C - - - - - 0x038903 0E:88F3: A9 30     LDA #$30
C - - - - - 0x038905 0E:88F5: 8D 42 04  STA ram_X_pos_hi_blow
C - - - - - 0x038908 0E:88F8: A9 A8     LDA #$A8
C - - - - - 0x03890A 0E:88FA: 8D 43 04  STA ram_X_pos_hi_blow + 1
C - - - - - 0x03890D 0E:88FD: A9 00     LDA #$00
C - - - - - 0x03890F 0E:88FF: 8D 32 04  STA ram_0432
C - - - - - 0x038912 0E:8902: 8D 33 04  STA ram_0433
C - - - - - 0x038915 0E:8905: 20 B6 89  JSR sub_89B6_strength_cursor
C - - - - - 0x038918 0E:8908: 20 07 8A  JSR sub_8A07
C - - - - - 0x03891B 0E:890B: 4C 41 E1  JMP loc_0x03E151



ofs_890E_02:
C - - J - - 0x03891E 0E:890E: A5 22     LDA ram_frame_counter
C - - - - - 0x038920 0E:8910: 20 AC 89  JSR sub_89AC
C - - - - - 0x038923 0E:8913: A5 90     LDA ram_sum_btn_press
C - - - - - 0x038925 0E:8915: 29 10     AND #con_btn_Start
C - - - - - 0x038927 0E:8917: D0 53     BNE bra_896C
C - - - - - 0x038929 0E:8919: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03892B 0E:891B: 29 0C     AND #con_btns_UD
C - - - - - 0x03892D 0E:891D: F0 03     BEQ bra_8922
C - - - - - 0x03892F 0E:891F: EE 30 05  INC ram_0530
bra_8922:
C - - - - - 0x038932 0E:8922: AD 30 05  LDA ram_0530
C - - - - - 0x038935 0E:8925: 4A        LSR
C - - - - - 0x038936 0E:8926: B0 24     BCS bra_894C
C - - - - - 0x038938 0E:8928: A2 01     LDX #$01
bra_892A:
C - - - - - 0x03893A 0E:892A: B5 8E     LDA ram_btn_press,X
C - - - - - 0x03893C 0E:892C: 29 03     AND #con_btns_LR
C - - - - - 0x03893E 0E:892E: F0 16     BEQ bra_8946
C - - - - - 0x038940 0E:8930: 29 01     AND #con_btn_Right
C - - - - - 0x038942 0E:8932: D0 02     BNE bra_8936
C - - - - - 0x038944 0E:8934: A9 FF     LDA #$FF
bra_8936:
C - - - - - 0x038946 0E:8936: 75 A0     ADC ram_option_strength,X
C - - - - - 0x038948 0E:8938: C9 FC     CMP #$FC
C - - - - - 0x03894A 0E:893A: F0 0A     BEQ bra_8946
C - - - - - 0x03894C 0E:893C: C9 04     CMP #$04
C - - - - - 0x03894E 0E:893E: F0 06     BEQ bra_8946
C - - - - - 0x038950 0E:8940: 95 A0     STA ram_option_strength,X
C - - - - - 0x038952 0E:8942: A9 25     LDA #$25
C - - - - - 0x038954 0E:8944: D0 20     BNE bra_8966
bra_8946:
C - - - - - 0x038956 0E:8946: CA        DEX
C - - - - - 0x038957 0E:8947: 10 E1     BPL bra_892A
C - - - - - 0x038959 0E:8949: 4C B6 89  JMP loc_89B6_strength_cursor
bra_894C:
C - - - - - 0x03895C 0E:894C: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03895E 0E:894E: 29 03     AND #con_btns_LR
C - - - - - 0x038960 0E:8950: F0 17     BEQ bra_8969
C - - - - - 0x038962 0E:8952: 4A        LSR
C - - - - - 0x038963 0E:8953: A9 00     LDA #$00
C - - - - - 0x038965 0E:8955: B0 02     BCS bra_8959
C - - - - - 0x038967 0E:8957: A9 FF     LDA #$FF
bra_8959:
C - - - - - 0x038969 0E:8959: 6D A0 04  ADC ram_04A0
C - - - - - 0x03896C 0E:895C: 29 03     AND #$03
C - - - - - 0x03896E 0E:895E: 8D A0 04  STA ram_04A0
C - - - - - 0x038971 0E:8961: 20 07 8A  JSR sub_8A07
C - - - - - 0x038974 0E:8964: A9 27     LDA #$27
bra_8966:
C - - - - - 0x038976 0E:8966: 20 90 F6  JSR sub_0x03F6A0
bra_8969:
C - - - - - 0x038979 0E:8969: 4C 00 B0  JMP loc_B000
bra_896C:
C - - - - - 0x03897C 0E:896C: 20 16 B0  JSR sub_B016
C - - - - - 0x03897F 0E:896F: B9 F1 BF  LDA tbl_BFF1,Y
C - - - - - 0x038982 0E:8972: 85 9E     STA ram_009E
C - - - - - 0x038984 0E:8974: A9 14     LDA #$14
C - - - - - 0x038986 0E:8976: 8D 00 04  STA ram_anim_object
C - - - - - 0x038989 0E:8979: 8D 01 04  STA ram_anim_object + 1
C - - - - - 0x03898C 0E:897C: A9 15     LDA #$15
C - - - - - 0x03898E 0E:897E: 8D 04 04  STA ram_0404
C - - - - - 0x038991 0E:8981: A9 50     LDA #$50
C - - - - - 0x038993 0E:8983: 8D A0 04  STA ram_04A0
C - - - - - 0x038996 0E:8986: E6 95     INC ram_0095
C - - - - - 0x038998 0E:8988: A9 29     LDA #$29
C - - - - - 0x03899A 0E:898A: 4C 8B F6  JMP loc_0x03F69B



ofs_898D_03:
C - - J - - 0x03899D 0E:898D: A5 22     LDA ram_frame_counter
C - - - - - 0x03899F 0E:898F: 0A        ASL
C - - - - - 0x0389A0 0E:8990: 0A        ASL
C - - - - - 0x0389A1 0E:8991: 20 AC 89  JSR sub_89AC
C - - - - - 0x0389A4 0E:8994: CE A0 04  DEC ram_04A0
C - - - - - 0x0389A7 0E:8997: 10 49     BPL bra_89E2_RTS
C - - - - - 0x0389A9 0E:8999: E6 95     INC ram_0095
C - - - - - 0x0389AB 0E:899B: 4C 2E E1  JMP loc_0x03E13E



loc_899E:
ofs_899E_04:
C D 0 - - - 0x0389AE 0E:899E: 20 BE DA  JSR sub_0x03DACE
C - - - - - 0x0389B1 0E:89A1: 85 95     STA ram_0095
C - - - - - 0x0389B3 0E:89A3: E6 94     INC ram_0094
C - - - - - 0x0389B5 0E:89A5: A9 00     LDA #$00
C - - - - - 0x0389B7 0E:89A7: 85 49     STA ram_0049
C - - - - - 0x0389B9 0E:89A9: 85 4D     STA ram_004D
C - - - - - 0x0389BB 0E:89AB: 60        RTS



sub_89AC:
C - - - - - 0x0389BC 0E:89AC: 0A        ASL
C - - - - - 0x0389BD 0E:89AD: 0A        ASL
C - - - - - 0x0389BE 0E:89AE: 0A        ASL
C - - - - - 0x0389BF 0E:89AF: 29 80     AND #$80
C - - - - - 0x0389C1 0E:89B1: 09 11     ORA #$11
C - - - - - 0x0389C3 0E:89B3: 4C E5 F6  JMP loc_0x03F6F5



sub_89B6_strength_cursor:
loc_89B6_strength_cursor:
C D 0 - - - 0x0389C6 0E:89B6: 20 E3 89  JSR sub_89E3
C - - - - - 0x0389C9 0E:89B9: A2 01     LDX #$01
bra_89BB_loop:
C - - - - - 0x0389CB 0E:89BB: A9 14     LDA #$14
C - - - - - 0x0389CD 0E:89BD: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x0389D0 0E:89C0: AD 30 05  LDA ram_0530
C - - - - - 0x0389D3 0E:89C3: 4A        LSR
C - - - - - 0x0389D4 0E:89C4: B0 09     BCS bra_89CF_no_flickering
C - - - - - 0x0389D6 0E:89C6: A5 22     LDA ram_frame_counter
C - - - - - 0x0389D8 0E:89C8: 29 08     AND #$08
C - - - - - 0x0389DA 0E:89CA: D0 03     BNE bra_89CF_no_flickering
C - - - - - 0x0389DC 0E:89CC: 9D 00 04  STA ram_anim_object,X
bra_89CF_no_flickering:
C - - - - - 0x0389DF 0E:89CF: B5 A0     LDA ram_option_strength,X
C - - - - - 0x0389E1 0E:89D1: 0A        ASL
C - - - - - 0x0389E2 0E:89D2: 0A        ASL
C - - - - - 0x0389E3 0E:89D3: 0A        ASL
C - - - - - 0x0389E4 0E:89D4: 7D 32 8A  ADC tbl_8A32_cursor_X_pos,X
C - - - - - 0x0389E7 0E:89D7: 9D 40 04  STA ram_X_pos_hi_object,X
C - - - - - 0x0389EA 0E:89DA: A9 57     LDA #$57    ; Y pos
C - - - - - 0x0389EC 0E:89DC: 9D 10 04  STA ram_Y_pos_hi_object,X
C - - - - - 0x0389EF 0E:89DF: CA        DEX
C - - - - - 0x0389F0 0E:89E0: 10 D9     BPL bra_89BB_loop
bra_89E2_RTS:
C - - - - - 0x0389F2 0E:89E2: 60        RTS



sub_89E3:
C - - - - - 0x0389F3 0E:89E3: AC A0 04  LDY ram_04A0
C - - - - - 0x0389F6 0E:89E6: B9 2A 8A  LDA tbl_8A2A,Y
C - - - - - 0x0389F9 0E:89E9: 8D 44 04  STA ram_X_pos_hi_special
C - - - - - 0x0389FC 0E:89EC: B9 2E 8A  LDA tbl_8A2E,Y
C - - - - - 0x0389FF 0E:89EF: 8D 14 04  STA ram_Y_pos_hi_special
C - - - - - 0x038A02 0E:89F2: A9 15     LDA #$15
C - - - - - 0x038A04 0E:89F4: 8D 04 04  STA ram_0404
C - - - - - 0x038A07 0E:89F7: AD 30 05  LDA ram_0530
C - - - - - 0x038A0A 0E:89FA: 4A        LSR
C - - - - - 0x038A0B 0E:89FB: 90 09     BCC bra_8A06_RTS
C - - - - - 0x038A0D 0E:89FD: A5 22     LDA ram_frame_counter
C - - - - - 0x038A0F 0E:89FF: 29 08     AND #$08
C - - - - - 0x038A11 0E:8A01: D0 03     BNE bra_8A06_RTS
C - - - - - 0x038A13 0E:8A03: 8D 04 04  STA ram_0404
bra_8A06_RTS:
C - - - - - 0x038A16 0E:8A06: 60        RTS



sub_8A07:
C - - - - - 0x038A17 0E:8A07: A0 00     LDY #$00
C - - - - - 0x038A19 0E:8A09: AE A0 04  LDX ram_04A0
C - - - - - 0x038A1C 0E:8A0C: F0 0C     BEQ bra_8A1A
bra_8A0E:
C - - - - - 0x038A1E 0E:8A0E: B9 34 8A  LDA tbl_8A34,Y
C - - - - - 0x038A21 0E:8A11: F0 03     BEQ bra_8A16
C - - - - - 0x038A23 0E:8A13: C8        INY
C - - - - - 0x038A24 0E:8A14: D0 F8     BNE bra_8A0E
bra_8A16:
C - - - - - 0x038A26 0E:8A16: C8        INY
C - - - - - 0x038A27 0E:8A17: CA        DEX
C - - - - - 0x038A28 0E:8A18: D0 F4     BNE bra_8A0E
bra_8A1A:
C - - - - - 0x038A2A 0E:8A1A: B9 34 8A  LDA tbl_8A34,Y
C - - - - - 0x038A2D 0E:8A1D: F0 06     BEQ bra_8A25_RTS
C - - - - - 0x038A2F 0E:8A1F: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x038A32 0E:8A22: C8        INY
C - - - - - 0x038A33 0E:8A23: D0 F5     BNE bra_8A1A
bra_8A25_RTS:
C - - - - - 0x038A35 0E:8A25: 60        RTS



tbl_8A2A:
- D 0 - - - 0x038A3A 0E:8A2A: 40        .byte $40   ; 00
- D 0 - - - 0x038A3B 0E:8A2B: 40        .byte $40   ; 01
- D 0 - - - 0x038A3C 0E:8A2C: 80        .byte $80   ; 02
- D 0 - - - 0x038A3D 0E:8A2D: 78        .byte $78   ; 03

tbl_8A2E:
- D 0 - - - 0x038A3E 0E:8A2E: 90        .byte $90   ; 00
- D 0 - - - 0x038A3F 0E:8A2F: B0        .byte $B0   ; 01
- D 0 - - - 0x038A40 0E:8A30: B0        .byte $B0   ; 02
- D 0 - - - 0x038A41 0E:8A31: 90        .byte $90   ; 03



tbl_8A32_cursor_X_pos:
- D 0 - - - 0x038A42 0E:8A32: 38        .byte $38   ; 00
- D 0 - - - 0x038A43 0E:8A33: C0        .byte $C0   ; 01



tbl_8A34:
- D 0 - - - 0x038A44 0E:8A34: 03        .byte $03   ; 
- D 0 - - - 0x038A45 0E:8A35: EA        .byte $EA   ; 
- D 0 - - - 0x038A46 0E:8A36: 23        .byte $23   ; 
- D 0 - - - 0x038A47 0E:8A37: 02        .byte $02   ; 
- D 0 - - - 0x038A48 0E:8A38: 55        .byte $55   ; 
- D 0 - - - 0x038A49 0E:8A39: 03        .byte $03   ; 
- D 0 - - - 0x038A4A 0E:8A3A: EC        .byte $EC   ; 
- D 0 - - - 0x038A4B 0E:8A3B: 23        .byte $23   ; 
- D 0 - - - 0x038A4C 0E:8A3C: 0A        .byte $0A   ; 
- D 0 - - - 0x038A4D 0E:8A3D: FF        .byte $FF   ; 
- D 0 - - - 0x038A4E 0E:8A3E: 00        .byte $00   ; 
- D 0 - - - 0x038A4F 0E:8A3F: 03        .byte $03   ; 
- D 0 - - - 0x038A50 0E:8A40: EA        .byte $EA   ; 
- D 0 - - - 0x038A51 0E:8A41: 23        .byte $23   ; 
- D 0 - - - 0x038A52 0E:8A42: 02        .byte $02   ; 
- D 0 - - - 0x038A53 0E:8A43: FF        .byte $FF   ; 
- D 0 - - - 0x038A54 0E:8A44: 03        .byte $03   ; 
- D 0 - - - 0x038A55 0E:8A45: F2        .byte $F2   ; 
- D 0 - - - 0x038A56 0E:8A46: 23        .byte $23   ; 
- D 0 - - - 0x038A57 0E:8A47: 02        .byte $02   ; 
- D 0 - - - 0x038A58 0E:8A48: 55        .byte $55   ; 
- D 0 - - - 0x038A59 0E:8A49: 03        .byte $03   ; 
- D 0 - - - 0x038A5A 0E:8A4A: F4        .byte $F4   ; 
- D 0 - - - 0x038A5B 0E:8A4B: 23        .byte $23   ; 
- D 0 - - - 0x038A5C 0E:8A4C: 02        .byte $02   ; 
- D 0 - - - 0x038A5D 0E:8A4D: FF        .byte $FF   ; 
- D 0 - - - 0x038A5E 0E:8A4E: 00        .byte $00   ; 
- D 0 - - - 0x038A5F 0E:8A4F: 03        .byte $03   ; 
- D 0 - - - 0x038A60 0E:8A50: EA        .byte $EA   ; 
- D 0 - - - 0x038A61 0E:8A51: 23        .byte $23   ; 
- D 0 - - - 0x038A62 0E:8A52: 0A        .byte $0A   ; 
- D 0 - - - 0x038A63 0E:8A53: FF        .byte $FF   ; 
- D 0 - - - 0x038A64 0E:8A54: 03        .byte $03   ; 
- D 0 - - - 0x038A65 0E:8A55: F4        .byte $F4   ; 
- D 0 - - - 0x038A66 0E:8A56: 23        .byte $23   ; 
- D 0 - - - 0x038A67 0E:8A57: 02        .byte $02   ; 
- D 0 - - - 0x038A68 0E:8A58: 55        .byte $55   ; 
- D 0 - - - 0x038A69 0E:8A59: 00        .byte $00   ; 
- D 0 - - - 0x038A6A 0E:8A5A: 03        .byte $03   ; 
- D 0 - - - 0x038A6B 0E:8A5B: EA        .byte $EA   ; 
- D 0 - - - 0x038A6C 0E:8A5C: 23        .byte $23   ; 
- D 0 - - - 0x038A6D 0E:8A5D: 02        .byte $02   ; 
- D 0 - - - 0x038A6E 0E:8A5E: FF        .byte $FF   ; 
- D 0 - - - 0x038A6F 0E:8A5F: 03        .byte $03   ; 
- D 0 - - - 0x038A70 0E:8A60: EC        .byte $EC   ; 
- D 0 - - - 0x038A71 0E:8A61: 23        .byte $23   ; 
- D 0 - - - 0x038A72 0E:8A62: 02        .byte $02   ; 
- D 0 - - - 0x038A73 0E:8A63: 55        .byte $55   ; 
- D 0 - - - 0x038A74 0E:8A64: 03        .byte $03   ; 
- D 0 - - - 0x038A75 0E:8A65: F2        .byte $F2   ; 
- D 0 - - - 0x038A76 0E:8A66: 23        .byte $23   ; 
- D 0 - - - 0x038A77 0E:8A67: 04        .byte $04   ; 
- D 0 - - - 0x038A78 0E:8A68: FF        .byte $FF   ; 
- D 0 - - - 0x038A79 0E:8A69: 00        .byte $00   ; 



.export sub_0x038A7A
sub_0x038A7A:
C - - - - - 0x038A7A 0E:8A6A: AE 71 06  LDX ram_0671
C - - - - - 0x038A7D 0E:8A6D: E0 02     CPX #$02
C - - - - - 0x038A7F 0E:8A6F: B0 1F     BCS bra_8A90_RTS
C - - - - - 0x038A81 0E:8A71: A5 2C     LDA ram_002C
C - - - - - 0x038A83 0E:8A73: C5 03     CMP ram_0003
C - - - - - 0x038A85 0E:8A75: B0 19     BCS bra_8A90_RTS
C - - - - - 0x038A87 0E:8A77: 4A        LSR
C - - - - - 0x038A88 0E:8A78: B0 03     BCS bra_8A7D
C - - - - - 0x038A8A 0E:8A7A: CA        DEX
C - - - - - 0x038A8B 0E:8A7B: F0 13     BEQ bra_8A90_RTS
bra_8A7D:
C - - - - - 0x038A8D 0E:8A7D: AE 71 06  LDX ram_0671
C - - - - - 0x038A90 0E:8A80: AD 24 06  LDA ram_0624
C - - - - - 0x038A93 0E:8A83: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x038A96 0E:8A86: 91 8A     .word ofs_8A91_00
- D 0 - I - 0x038A98 0E:8A88: D6 8A     .word ofs_8AD6_01
- D 0 - I - 0x038A9A 0E:8A8A: 52 8B     .word ofs_8B52_02
- D 0 - I - 0x038A9C 0E:8A8C: 75 8B     .word ofs_8B75_03
- D 0 - I - 0x038A9E 0E:8A8E: 9B 8B     .word ofs_8B9B_04
bra_8A90_RTS:
C - - - - - 0x038AA0 0E:8A90: 60        RTS



ofs_8A91_00:
C - - J - - 0x038AA1 0E:8A91: 20 CB 8A  JSR sub_8ACB
C - - - - - 0x038AA4 0E:8A94: A2 03     LDX #$03
bra_8A96_loop:
C - - - - - 0x038AA6 0E:8A96: 9D 2B 06  STA ram_knockout_cooldown + 1,X
C - - - - - 0x038AA9 0E:8A99: CA        DEX
C - - - - - 0x038AAA 0E:8A9A: 10 FA     BPL bra_8A96_loop
C - - - - - 0x038AAC 0E:8A9C: A0 00     LDY #$00
bra_8A9E_loop:
C - - - - - 0x038AAE 0E:8A9E: B9 66 8C  LDA tbl_8C66,Y
C - - - - - 0x038AB1 0E:8AA1: C9 FF     CMP #$FF
C - - - - - 0x038AB3 0E:8AA3: F0 06     BEQ bra_8AAB
C - - - - - 0x038AB5 0E:8AA5: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x038AB8 0E:8AA8: C8        INY
C - - - - - 0x038AB9 0E:8AA9: D0 F3     BNE bra_8A9E_loop
bra_8AAB:
C - - - - - 0x038ABB 0E:8AAB: EE 24 06  INC ram_0624
C - - - - - 0x038ABE 0E:8AAE: A9 15     LDA #$15
C - - - - - 0x038AC0 0E:8AB0: 20 E5 F6  JSR sub_0x03F6F5
C - - - - - 0x038AC3 0E:8AB3: 20 9C A5  JSR sub_A59C
C - - - - - 0x038AC6 0E:8AB6: C9 03     CMP #$03
C - - - - - 0x038AC8 0E:8AB8: B0 08     BCS bra_8AC2
C - - - - - 0x038ACA 0E:8ABA: AD 72 06  LDA ram_game_time_tens
C - - - - - 0x038ACD 0E:8ABD: 0D 73 06  ORA ram_game_time_ones
C - - - - - 0x038AD0 0E:8AC0: D0 13     BNE bra_8AD5_RTS
bra_8AC2:
C - - - - - 0x038AD2 0E:8AC2: A9 00     LDA #$00
C - - - - - 0x038AD4 0E:8AC4: 8D 2F 06  STA ram_062F
C - - - - - 0x038AD7 0E:8AC7: EE 24 06  INC ram_0624
C - - - - - 0x038ADA 0E:8ACA: 60        RTS



sub_8ACB:
loc_8ACB:
C D 0 - - - 0x038ADB 0E:8ACB: A9 00     LDA #$00
C - - - - - 0x038ADD 0E:8ACD: A2 03     LDX #$03
bra_8ACF_loop:
C - - - - - 0x038ADF 0E:8ACF: 9D 26 06  STA ram_0626,X
C - - - - - 0x038AE2 0E:8AD2: CA        DEX
C - - - - - 0x038AE3 0E:8AD3: 10 FA     BPL bra_8ACF_loop
bra_8AD5_RTS:
C - - - - - 0x038AE5 0E:8AD5: 60        RTS



ofs_8AD6_01:
C - - J - - 0x038AE6 0E:8AD6: 20 19 8B  JSR sub_8B19
C - - - - - 0x038AE9 0E:8AD9: A9 16     LDA #$16
C - - - - - 0x038AEB 0E:8ADB: 20 21 8B  JSR sub_8B21
C - - - - - 0x038AEE 0E:8ADE: A5 22     LDA ram_frame_counter
C - - - - - 0x038AF0 0E:8AE0: 29 10     AND #$10
C - - - - - 0x038AF2 0E:8AE2: 0A        ASL
C - - - - - 0x038AF3 0E:8AE3: 0A        ASL
C - - - - - 0x038AF4 0E:8AE4: 0A        ASL
C - - - - - 0x038AF5 0E:8AE5: CE 73 06  DEC ram_game_time_ones
C - - - - - 0x038AF8 0E:8AE8: 10 0A     BPL bra_8AF4
C - - - - - 0x038AFA 0E:8AEA: A9 09     LDA #$09
C - - - - - 0x038AFC 0E:8AEC: 8D 73 06  STA ram_game_time_ones
C - - - - - 0x038AFF 0E:8AEF: CE 72 06  DEC ram_game_time_tens
C - - - - - 0x038B02 0E:8AF2: 30 3B     BMI bra_8B2F
bra_8AF4:
C - - - - - 0x038B04 0E:8AF4: 20 07 EB  JSR sub_0x03EB17
C - - - - - 0x038B07 0E:8AF7: A5 95     LDA ram_0095
C - - - - - 0x038B09 0E:8AF9: C9 10     CMP #$10
C - - - - - 0x038B0B 0E:8AFB: 90 09     BCC bra_8B06
C - - - - - 0x038B0D 0E:8AFD: A0 01     LDY #$01
C - - - - - 0x038B0F 0E:8AFF: 84 13     STY ram_0013
C - - - - - 0x038B11 0E:8B01: 88        DEY
C - - - - - 0x038B12 0E:8B02: 84 14     STY ram_0014
C - - - - - 0x038B14 0E:8B04: F0 07     BEQ bra_8B0D
bra_8B06:
loc_8B06:
C D 0 - - - 0x038B16 0E:8B06: A0 01     LDY #$01
C - - - - - 0x038B18 0E:8B08: 84 14     STY ram_0014
C - - - - - 0x038B1A 0E:8B0A: 88        DEY
C - - - - - 0x038B1B 0E:8B0B: 84 13     STY ram_0013
bra_8B0D:
C - - - - - 0x038B1D 0E:8B0D: 84 12     STY ram_0012
sub_8B0F:
C - - - - - 0x038B1F 0E:8B0F: 84 11     STY ram_0011
C - - - - - 0x038B21 0E:8B11: 20 A4 8B  JSR sub_8BA4
C - - - - - 0x038B24 0E:8B14: A9 27     LDA #$27
C - - - - - 0x038B26 0E:8B16: 4C 90 F6  JMP loc_0x03F6A0



sub_8B19:
C - - - - - 0x038B29 0E:8B19: A5 22     LDA ram_frame_counter
C - - - - - 0x038B2B 0E:8B1B: 4A        LSR
C - - - - - 0x038B2C 0E:8B1C: 90 02     BCC bra_8B20_RTS
C - - - - - 0x038B2E 0E:8B1E: 68        PLA
C - - - - - 0x038B2F 0E:8B1F: 68        PLA
bra_8B20_RTS:
C - - - - - 0x038B30 0E:8B20: 60        RTS



sub_8B21:
C - - - - - 0x038B31 0E:8B21: 85 00     STA ram_0000
C - - - - - 0x038B33 0E:8B23: A5 22     LDA ram_frame_counter
C - - - - - 0x038B35 0E:8B25: 0A        ASL
C - - - - - 0x038B36 0E:8B26: 0A        ASL
C - - - - - 0x038B37 0E:8B27: 0A        ASL
C - - - - - 0x038B38 0E:8B28: 29 80     AND #$80
C - - - - - 0x038B3A 0E:8B2A: 05 00     ORA ram_0000
C - - - - - 0x038B3C 0E:8B2C: 4C E5 F6  JMP loc_0x03F6F5
bra_8B2F:
C - - - - - 0x038B3F 0E:8B2F: A5 95     LDA ram_0095
C - - - - - 0x038B41 0E:8B31: C9 10     CMP #$10
C - - - - - 0x038B43 0E:8B33: 90 09     BCC bra_8B3E
C - - - - - 0x038B45 0E:8B35: 20 3E 8B  JSR sub_8B3E
C - - - - - 0x038B48 0E:8B38: A9 04     LDA #$04
C - - - - - 0x038B4A 0E:8B3A: 8D 24 06  STA ram_0624
C - - - - - 0x038B4D 0E:8B3D: 60        RTS
bra_8B3E:
sub_8B3E:
C - - - - - 0x038B4E 0E:8B3E: 18        CLC
C - - - - - 0x038B4F 0E:8B3F: AD 24 06  LDA ram_0624
C - - - - - 0x038B52 0E:8B42: 69 15     ADC #$15
bra_8B44:
C - - - - - 0x038B54 0E:8B44: 20 E5 F6  JSR sub_0x03F6F5
C - - - - - 0x038B57 0E:8B47: A9 10     LDA #$10
C - - - - - 0x038B59 0E:8B49: 8D 2F 06  STA ram_062F
bra_8B4C:
C - - - - - 0x038B5C 0E:8B4C: EE 24 06  INC ram_0624
C - - - - - 0x038B5F 0E:8B4F: 4C CB 8A  JMP loc_8ACB



ofs_8B52_02:
C - - - - - 0x038B64 0E:8B54: 20 40 A7  JSR sub_A740
C - - - - - 0x038B67 0E:8B57: D0 F3     BNE bra_8B4C
C - - - - - 0x038B69 0E:8B59: 20 55 8C  JSR sub_8C55
C - - - - - 0x038B6C 0E:8B5C: A9 02     LDA #$02
C - - - - - 0x038B6E 0E:8B5E: 85 12     STA ram_0012
C - - - - - 0x038B70 0E:8B60: A0 00     LDY #$00
C - - - - - 0x038B72 0E:8B62: 84 14     STY ram_0014
C - - - - - 0x038B74 0E:8B64: 84 13     STY ram_0013
C - - - - - 0x038B76 0E:8B66: 20 0F 8B  JSR sub_8B0F
C - - - - - 0x038B79 0E:8B69: A9 25     LDA #$25
C - - - - - 0x038B7B 0E:8B6B: 20 90 F6  JSR sub_0x03F6A0
C - - - - - 0x038B7E 0E:8B6E: EE 24 06  INC ram_0624
C - - - - - 0x038B81 0E:8B71: A9 17     LDA #$17
C - - - - - 0x038B83 0E:8B73: D0 CF     BNE bra_8B44



ofs_8B75_03:
C - - J - - 0x038B85 0E:8B75: 20 55 8C  JSR sub_8C55
C - - - - - 0x038B88 0E:8B78: 20 19 8B  JSR sub_8B19
C - - - - - 0x038B8B 0E:8B7B: A9 18     LDA #$18
C - - - - - 0x038B8D 0E:8B7D: 20 21 8B  JSR sub_8B21
C - - - - - 0x038B90 0E:8B80: AE 71 06  LDX ram_0671
C - - - - - 0x038B93 0E:8B83: 20 32 EA  JSR sub_0x03EA42
C - - - - - 0x038B96 0E:8B86: AC 28 01  LDY ram_option_health
C - - - - - 0x038B99 0E:8B89: BD 0D 01  LDA ram_hp_hi,X
C - - - - - 0x038B9C 0E:8B8C: 20 52 A7  JSR sub_A752
C - - - - - 0x038B9F 0E:8B8F: 90 03     BCC bra_8B94
C - - - - - 0x038BA1 0E:8B91: 4C 06 8B  JMP loc_8B06
bra_8B94:
C - - - - - 0x038BA4 0E:8B94: 20 3E 8B  JSR sub_8B3E
C - - - - - 0x038BA7 0E:8B97: 0A        ASL
C - - - - - 0x038BA8 0E:8B98: 9D 90 05  STA ram_hp_lo,X
ofs_8B9B_04:
C - - - - - 0x038BAB 0E:8B9B: 20 55 8C  JSR sub_8C55
C - - - - - 0x038BAE 0E:8B9E: A9 00     LDA #$00
C - - - - - 0x038BB0 0E:8BA0: 8D 24 06  STA ram_0624
C - - - - - 0x038BB3 0E:8BA3: 60        RTS



sub_8BA4:
C - - - - - 0x038BB4 0E:8BA4: 86 CF     STX ram_00CF
C - - - - - 0x038BB6 0E:8BA6: A2 03     LDX #$03
bra_8BA8:
C - - - - - 0x038BB8 0E:8BA8: B5 11     LDA ram_0011,X
C - - - - - 0x038BBA 0E:8BAA: 18        CLC
C - - - - - 0x038BBB 0E:8BAB: 7D 26 06  ADC ram_0626,X
C - - - - - 0x038BBE 0E:8BAE: C9 0A     CMP #$0A
C - - - - - 0x038BC0 0E:8BB0: 90 05     BCC bra_8BB7
C - - - - - 0x038BC2 0E:8BB2: FE 25 06  INC ram_0625,X
C - - - - - 0x038BC5 0E:8BB5: E9 0A     SBC #$0A
bra_8BB7:
C - - - - - 0x038BC7 0E:8BB7: 9D 26 06  STA ram_0626,X
C - - - - - 0x038BCA 0E:8BBA: B5 11     LDA ram_0011,X
C - - - - - 0x038BCC 0E:8BBC: 18        CLC
C - - - - - 0x038BCD 0E:8BBD: 7D 2B 06  ADC ram_knockout_cooldown + 1,X
C - - - - - 0x038BD0 0E:8BC0: C9 0A     CMP #$0A
C - - - - - 0x038BD2 0E:8BC2: 90 05     BCC bra_8BC9
C - - - - - 0x038BD4 0E:8BC4: FE 2A 06  INC ram_knockout_cooldown,X
C - - - - - 0x038BD7 0E:8BC7: E9 0A     SBC #$0A
bra_8BC9:
C - - - - - 0x038BD9 0E:8BC9: 9D 2B 06  STA ram_knockout_cooldown + 1,X
C - - - - - 0x038BDC 0E:8BCC: CA        DEX
C - - - - - 0x038BDD 0E:8BCD: 10 D9     BPL bra_8BA8
C - - - - - 0x038BDF 0E:8BCF: AD 71 06  LDA ram_0671
C - - - - - 0x038BE2 0E:8BD2: 20 5A F7  JSR sub_0x03F76A
C - - - - - 0x038BE5 0E:8BD5: A2 00     LDX #$00
bra_8BD7_search_loop:
C - - - - - 0x038BE7 0E:8BD7: BD 26 06  LDA ram_0626,X
C - - - - - 0x038BEA 0E:8BDA: D0 07     BNE bra_8BE3
C - - - - - 0x038BEC 0E:8BDC: E8        INX
C - - - - - 0x038BED 0E:8BDD: E0 04     CPX #$04
C - - - - - 0x038BEF 0E:8BDF: 90 F6     BCC bra_8BD7_search_loop
- - - - - - 0x038BF1 0E:8BE1: B0 41     BCS bra_8C24
bra_8BE3:
C - - - - - 0x038BF3 0E:8BE3: A9 31     LDA #$31
C - - - - - 0x038BF5 0E:8BE5: AC 24 06  LDY ram_0624
C - - - - - 0x038BF8 0E:8BE8: 88        DEY
C - - - - - 0x038BF9 0E:8BE9: F0 02     BEQ bra_8BED
C - - - - - 0x038BFB 0E:8BEB: A9 51     LDA #$51
bra_8BED:
C - - - - - 0x038BFD 0E:8BED: 85 01     STA ram_0001
C - - - - - 0x038BFF 0E:8BEF: 86 00     STX ram_0000
C - - - - - 0x038C01 0E:8BF1: 8A        TXA
C - - - - - 0x038C02 0E:8BF2: 18        CLC
C - - - - - 0x038C03 0E:8BF3: 65 01     ADC ram_0001
C - - - - - 0x038C05 0E:8BF5: A8        TAY
C - - - - - 0x038C06 0E:8BF6: A9 23     LDA #$23
C - - - - - 0x038C08 0E:8BF8: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x038C0B 0E:8BFB: A4 00     LDY ram_0000
bra_8BFD:
C - - - - - 0x038C0D 0E:8BFD: B9 26 06  LDA ram_0626,Y
C - - - - - 0x038C10 0E:8C00: 18        CLC
C - - - - - 0x038C11 0E:8C01: 69 81     ADC #$81
C - - - - - 0x038C13 0E:8C03: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x038C16 0E:8C06: C8        INY
C - - - - - 0x038C17 0E:8C07: C0 04     CPY #$04
C - - - - - 0x038C19 0E:8C09: 90 F2     BCC bra_8BFD
C - - - - - 0x038C1B 0E:8C0B: 20 5B D2  JSR sub_0x03D26B
C - - - - - 0x038C1E 0E:8C0E: 18        CLC
C - - - - - 0x038C1F 0E:8C0F: A5 01     LDA ram_0001
C - - - - - 0x038C21 0E:8C11: 69 04     ADC #$04
C - - - - - 0x038C23 0E:8C13: A8        TAY
C - - - - - 0x038C24 0E:8C14: A9 23     LDA #$23
C - - - - - 0x038C26 0E:8C16: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x038C29 0E:8C19: A9 81     LDA #$81
C - - - - - 0x038C2B 0E:8C1B: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x038C2E 0E:8C1E: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x038C31 0E:8C21: 20 5B D2  JSR sub_0x03D26B
bra_8C24:
C - - - - - 0x038C34 0E:8C24: A2 00     LDX #$00
bra_8C26_search_loop:
C - - - - - 0x038C36 0E:8C26: BD 2B 06  LDA ram_knockout_cooldown + 1,X
C - - - - - 0x038C39 0E:8C29: D0 07     BNE bra_8C32
C - - - - - 0x038C3B 0E:8C2B: E8        INX
C - - - - - 0x038C3C 0E:8C2C: E0 04     CPX #$04
C - - - - - 0x038C3E 0E:8C2E: 90 F6     BCC bra_8C26_search_loop
- - - - - - 0x038C40 0E:8C30: B0 1F     BCS bra_8C51
bra_8C32:
C - - - - - 0x038C42 0E:8C32: 86 00     STX ram_0000
C - - - - - 0x038C44 0E:8C34: 8A        TXA
C - - - - - 0x038C45 0E:8C35: 18        CLC
C - - - - - 0x038C46 0E:8C36: 69 71     ADC #$71
C - - - - - 0x038C48 0E:8C38: A8        TAY
C - - - - - 0x038C49 0E:8C39: A9 23     LDA #$23
C - - - - - 0x038C4B 0E:8C3B: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x038C4E 0E:8C3E: A4 00     LDY ram_0000
bra_8C40:
C - - - - - 0x038C50 0E:8C40: B9 2B 06  LDA ram_knockout_cooldown + 1,Y
C - - - - - 0x038C53 0E:8C43: 18        CLC
C - - - - - 0x038C54 0E:8C44: 69 81     ADC #$81
C - - - - - 0x038C56 0E:8C46: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x038C59 0E:8C49: C8        INY
C - - - - - 0x038C5A 0E:8C4A: C0 04     CPY #$04
C - - - - - 0x038C5C 0E:8C4C: 90 F2     BCC bra_8C40
C - - - - - 0x038C5E 0E:8C4E: 20 5B D2  JSR sub_0x03D26B
bra_8C51:
C - - - - - 0x038C61 0E:8C51: A6 CF     LDX ram_00CF
C - - - - - 0x038C63 0E:8C53: 8A        TXA
C - - - - - 0x038C64 0E:8C54: 60        RTS



sub_8C55:
C - - - - - 0x038C65 0E:8C55: AD 2F 06  LDA ram_062F
C - - - - - 0x038C68 0E:8C58: F0 0B     BEQ bra_8C65_RTS
C - - - - - 0x038C6A 0E:8C5A: A5 22     LDA ram_frame_counter
C - - - - - 0x038C6C 0E:8C5C: 29 03     AND #$03
C - - - - - 0x038C6E 0E:8C5E: D0 03     BNE bra_8C63
C - - - - - 0x038C70 0E:8C60: CE 2F 06  DEC ram_062F
bra_8C63:
C - - - - - 0x038C73 0E:8C63: 68        PLA
C - - - - - 0x038C74 0E:8C64: 68        PLA
bra_8C65_RTS:
C - - - - - 0x038C75 0E:8C65: 60        RTS



tbl_8C66:
- D 0 - - - 0x038C76 0E:8C66: 03        .byte $03   ; 
- D 0 - - - 0x038C77 0E:8C67: 28        .byte $28   ; 
- D 0 - - - 0x038C78 0E:8C68: 23        .byte $23   ; 
- D 0 - - - 0x038C79 0E:8C69: 0F        .byte $0F   ; 
- D 0 - - - 0x038C7A 0E:8C6A: 00        .byte $00   ; 
- D 0 - - - 0x038C7B 0E:8C6B: 03        .byte $03   ; 
- D 0 - - - 0x038C7C 0E:8C6C: 48        .byte $48   ; 
- D 0 - - - 0x038C7D 0E:8C6D: 23        .byte $23   ; 
- D 0 - - - 0x038C7E 0E:8C6E: 0F        .byte $0F   ; 
- D 0 - - - 0x038C7F 0E:8C6F: 00        .byte $00   ; 
- D 0 - - - 0x038C80 0E:8C70: 03        .byte $03   ; 
- D 0 - - - 0x038C81 0E:8C71: 68        .byte $68   ; 
- D 0 - - - 0x038C82 0E:8C72: 23        .byte $23   ; 
- D 0 - - - 0x038C83 0E:8C73: 0F        .byte $0F   ; 
- D 0 - - - 0x038C84 0E:8C74: 00        .byte $00   ; 
- D 0 - - - 0x038C85 0E:8C75: 03        .byte $03   ; 
- D 0 - - - 0x038C86 0E:8C76: 88        .byte $88   ; 
- D 0 - - - 0x038C87 0E:8C77: 23        .byte $23   ; 
- D 0 - - - 0x038C88 0E:8C78: 0F        .byte $0F   ; 
- D 0 - - - 0x038C89 0E:8C79: 00        .byte $00   ; 
- D 0 - - - 0x038C8A 0E:8C7A: FF        .byte $FF   ; 



.export sub_0x038C8B
sub_0x038C8B:
C - - - - - 0x038C8B 0E:8C7B: AD 75 06  LDA ram_0675
C - - - - - 0x038C8E 0E:8C7E: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x038C91 0E:8C81: 8D 8C     .word ofs_8C8D_00
- D 0 - I - 0x038C93 0E:8C83: 18 8D     .word ofs_8D18_01
- D 0 - I - 0x038C95 0E:8C85: AA 8D     .word ofs_8DAA_02
- D 0 - I - 0x038C97 0E:8C87: 6B 8F     .word ofs_8F6B_03
- D 0 - I - 0x038C99 0E:8C89: C4 8C     .word ofs_8CC4_04
- D 0 - I - 0x038C9B 0E:8C8B: 03 90     .word ofs_9003_05



ofs_8C8D_00:
C - - J - - 0x038C9D 0E:8C8D: A2 20     LDX #$20
C - - - - - 0x038C9F 0E:8C8F: 20 44 F0  JSR sub_0x03F054
C - - - - - 0x038CA2 0E:8C92: 20 BE DA  JSR sub_0x03DACE
C - - - - - 0x038CA5 0E:8C95: 8D 54 01  STA ram_0154
C - - - - - 0x038CA8 0E:8C98: 8D 5D 01  STA ram_015D
C - - - - - 0x038CAB 0E:8C9B: A9 54     LDA #$54
C - - - - - 0x038CAD 0E:8C9D: 85 37     STA ram_0037
C - - - - - 0x038CAF 0E:8C9F: A9 00     LDA #$00
C - - - - - 0x038CB1 0E:8CA1: A0 05     LDY #$05
bra_8CA3:
C - - - - - 0x038CB3 0E:8CA3: 99 76 06  STA ram_0676,Y
C - - - - - 0x038CB6 0E:8CA6: 88        DEY
C - - - - - 0x038CB7 0E:8CA7: 10 FA     BPL bra_8CA3
C - - - - - 0x038CB9 0E:8CA9: A2 1F     LDX #$1F
bra_8CAB:
C - - - - - 0x038CBB 0E:8CAB: 9D 30 01  STA ram_name_letter_1,X
C - - - - - 0x038CBE 0E:8CAE: CA        DEX
C - - - - - 0x038CBF 0E:8CAF: 10 FA     BPL bra_8CAB
C - - - - - 0x038CC1 0E:8CB1: A2 03     LDX #$03
bra_8CB3:
C - - - - - 0x038CC3 0E:8CB3: 8A        TXA
C - - - - - 0x038CC4 0E:8CB4: 9D 55 01  STA ram_0155,X
C - - - - - 0x038CC7 0E:8CB7: CA        DEX
C - - - - - 0x038CC8 0E:8CB8: 10 F9     BPL bra_8CB3
C - - - - - 0x038CCA 0E:8CBA: A0 14     LDY #$14
C - - - - - 0x038CCC 0E:8CBC: 20 1A DC  JSR sub_0x03DC2A
C - - - - - 0x038CCF 0E:8CBF: A9 38     LDA #$38
C - - - - - 0x038CD1 0E:8CC1: 20 90 F6  JSR sub_0x03F6A0
ofs_8CC4_04:
C - - - - - 0x038CD4 0E:8CC4: A9 00     LDA #$00
C - - - - - 0x038CD6 0E:8CC6: 8D D0 05  STA ram_05D0
C - - - - - 0x038CD9 0E:8CC9: 8D C0 05  STA ram_05C0
C - - - - - 0x038CDC 0E:8CCC: 8D 00 04  STA ram_anim_object
C - - - - - 0x038CDF 0E:8CCF: 8D 77 06  STA ram_0677
C - - - - - 0x038CE2 0E:8CD2: A9 0B     LDA #$0B
C - - - - - 0x038CE4 0E:8CD4: A8        TAY
C - - - - - 0x038CE5 0E:8CD5: 20 94 D3  JSR sub_0x03D3A4
C - - - - - 0x038CE8 0E:8CD8: 20 58 90  JSR sub_9058
C - - - - - 0x038CEB 0E:8CDB: A9 20     LDA #$20
C - - - - - 0x038CED 0E:8CDD: A0 83     LDY #$83
C - - - - - 0x038CEF 0E:8CDF: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x038CF2 0E:8CE2: 18        CLC
C - - - - - 0x038CF3 0E:8CE3: AD 76 06  LDA ram_0676
C - - - - - 0x038CF6 0E:8CE6: 69 82     ADC #$82
C - - - - - 0x038CF8 0E:8CE8: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x038CFB 0E:8CEB: 20 5B D2  JSR sub_0x03D26B
C - - - - - 0x038CFE 0E:8CEE: A9 21     LDA #$21
C - - - - - 0x038D00 0E:8CF0: A0 A8     LDY #$A8
C - - - - - 0x038D02 0E:8CF2: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x038D05 0E:8CF5: A9 03     LDA #$03
C - - - - - 0x038D07 0E:8CF7: 9D FD 02  STA ram_02FD,X
C - - - - - 0x038D0A 0E:8CFA: A9 04     LDA #$04
C - - - - - 0x038D0C 0E:8CFC: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x038D0F 0E:8CFF: A9 00     LDA #$00
C - - - - - 0x038D11 0E:8D01: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x038D14 0E:8D04: A9 01     LDA #$01
C - - - - - 0x038D16 0E:8D06: 8D 75 06  STA ram_0675
C - - - - - 0x038D19 0E:8D09: 20 24 8F  JSR sub_8F24
C - - - - - 0x038D1C 0E:8D0C: 20 46 8D  JSR sub_8D46
C - - - - - 0x038D1F 0E:8D0F: 20 41 E1  JSR sub_0x03E151
sub_8D12:
C - - - - - 0x038D22 0E:8D12: A0 1E     LDY #$1E
C - - - - - 0x038D24 0E:8D14: 8C 00 06  STY ram_0600
bra_8D17_RTS:
C - - - - - 0x038D27 0E:8D17: 60        RTS



ofs_8D18_01:
C - - J - - 0x038D28 0E:8D18: AE 76 06  LDX ram_0676
C - - - - - 0x038D2B 0E:8D1B: 86 A8     STX ram_00A8
C - - - - - 0x038D2D 0E:8D1D: A5 90     LDA ram_sum_btn_press
C - - - - - 0x038D2F 0E:8D1F: A8        TAY
C - - - - - 0x038D30 0E:8D20: 29 90     AND #con_btn_A + con_btn_Start
C - - - - - 0x038D32 0E:8D22: D0 5C     BNE bra_8D80
C - - - - - 0x038D34 0E:8D24: 98        TYA
C - - - - - 0x038D35 0E:8D25: 29 0F     AND #con_btns_Dpad
C - - - - - 0x038D37 0E:8D27: F0 10     BEQ bra_8D39
C - - - - - 0x038D39 0E:8D29: BD 55 01  LDA ram_0155,X
C - - - - - 0x038D3C 0E:8D2C: 49 80     EOR #$80
C - - - - - 0x038D3E 0E:8D2E: 9D 55 01  STA ram_0155,X
C - - - - - 0x038D41 0E:8D31: 20 46 8D  JSR sub_8D46
C - - - - - 0x038D44 0E:8D34: A9 25     LDA #$25
C - - - - - 0x038D46 0E:8D36: 20 94 F6  JSR sub_0x03F6A4
bra_8D39:
C - - - - - 0x038D49 0E:8D39: 20 24 8F  JSR sub_8F24
C - - - - - 0x038D4C 0E:8D3C: A5 22     LDA ram_frame_counter
C - - - - - 0x038D4E 0E:8D3E: 29 08     AND #$08
C - - - - - 0x038D50 0E:8D40: D0 D5     BNE bra_8D17_RTS
C - - - - - 0x038D52 0E:8D42: 8D 02 04  STA ram_0402
C - - - - - 0x038D55 0E:8D45: 60        RTS



sub_8D46:
C - - - - - 0x038D56 0E:8D46: A0 00     LDY #$00
C - - - - - 0x038D58 0E:8D48: BD 55 01  LDA ram_0155,X
C - - - - - 0x038D5B 0E:8D4B: 48        PHA
C - - - - - 0x038D5C 0E:8D4C: 10 14     BPL bra_8D62
C - - - - - 0x038D5E 0E:8D4E: 8A        TXA
C - - - - - 0x038D5F 0E:8D4F: 0A        ASL
C - - - - - 0x038D60 0E:8D50: 0A        ASL
C - - - - - 0x038D61 0E:8D51: A8        TAY
C - - - - - 0x038D62 0E:8D52: A9 00     LDA #$00
C - - - - - 0x038D64 0E:8D54: 99 30 01  STA ram_name_letter_1,Y
C - - - - - 0x038D67 0E:8D57: 99 31 01  STA ram_name_letter_2,Y
C - - - - - 0x038D6A 0E:8D5A: 99 32 01  STA ram_name_letter_3,Y
C - - - - - 0x038D6D 0E:8D5D: 99 33 01  STA ram_name_letter_4,Y
C - - - - - 0x038D70 0E:8D60: A0 06     LDY #$06
bra_8D62:
C - - - - - 0x038D72 0E:8D62: B9 90 90  LDA tbl_9090,Y
C - - - - - 0x038D75 0E:8D65: C9 FE     CMP #$FE
C - - - - - 0x038D77 0E:8D67: F0 06     BEQ bra_8D6F
C - - - - - 0x038D79 0E:8D69: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x038D7C 0E:8D6C: C8        INY
C - - - - - 0x038D7D 0E:8D6D: D0 F3     BNE bra_8D62
bra_8D6F:
C - - - - - 0x038D7F 0E:8D6F: 68        PLA
C - - - - - 0x038D80 0E:8D70: 20 07 D2  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x038D83 0E:8D73: A8        TAY
bra_8D74:
C - - - - - 0x038D84 0E:8D74: B9 81 90  LDA tbl_9081,Y
C - - - - - 0x038D87 0E:8D77: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x038D8A 0E:8D7A: C8        INY
C - - - - - 0x038D8B 0E:8D7B: C9 FF     CMP #$FF
C - - - - - 0x038D8D 0E:8D7D: D0 F5     BNE bra_8D74
bra_8D7F_RTS:
C - - - - - 0x038D8F 0E:8D7F: 60        RTS
bra_8D80:
C - - - - - 0x038D90 0E:8D80: A9 00     LDA #$00
C - - - - - 0x038D92 0E:8D82: 8D 77 06  STA ram_0677
C - - - - - 0x038D95 0E:8D85: 8D 78 06  STA ram_0678
C - - - - - 0x038D98 0E:8D88: EE 75 06  INC ram_0675
C - - - - - 0x038D9B 0E:8D8B: 20 04 8F  JSR sub_8F04
C - - - - - 0x038D9E 0E:8D8E: 20 24 8F  JSR sub_8F24
C - - - - - 0x038DA1 0E:8D91: A9 28     LDA #$28
C - - - - - 0x038DA3 0E:8D93: 20 90 F6  JSR sub_0x03F6A0
C - - - - - 0x038DA6 0E:8D96: AE 76 06  LDX ram_0676
C - - - - - 0x038DA9 0E:8D99: BD 55 01  LDA ram_0155,X
C - - - - - 0x038DAC 0E:8D9C: 10 E1     BPL bra_8D7F_RTS
C - - - - - 0x038DAE 0E:8D9E: 4C 44 8F  JMP loc_8F44
bra_8DA1:
C - - - - - 0x038DB1 0E:8DA1: 4C E2 8E  JMP loc_8EE2
bra_8DA4:
C - - - - - 0x038DB4 0E:8DA4: 4C 44 8F  JMP loc_8F44
bra_8DA7:
C - - - - - 0x038DB7 0E:8DA7: 4C 65 8E  JMP loc_8E65



ofs_8DAA_02:
C - - J - - 0x038DBA 0E:8DAA: AD 77 06  LDA ram_0677
C - - - - - 0x038DBD 0E:8DAD: 0A        ASL
C - - - - - 0x038DBE 0E:8DAE: 0A        ASL
C - - - - - 0x038DBF 0E:8DAF: 0A        ASL
C - - - - - 0x038DC0 0E:8DB0: 69 44     ADC #$44
C - - - - - 0x038DC2 0E:8DB2: 8D 43 04  STA ram_X_pos_hi_blow + 1
C - - - - - 0x038DC5 0E:8DB5: A9 68     LDA #$68
C - - - - - 0x038DC7 0E:8DB7: 8D 13 04  STA ram_Y_pos_hi_blow + 1
C - - - - - 0x038DCA 0E:8DBA: AE 76 06  LDX ram_0676
C - - - - - 0x038DCD 0E:8DBD: 86 A8     STX ram_00A8
C - - - - - 0x038DCF 0E:8DBF: A5 90     LDA ram_sum_btn_press
C - - - - - 0x038DD1 0E:8DC1: A8        TAY
C - - - - - 0x038DD2 0E:8DC2: 29 10     AND #con_btn_Start
C - - - - - 0x038DD4 0E:8DC4: D0 DE     BNE bra_8DA4
C - - - - - 0x038DD6 0E:8DC6: 98        TYA
C - - - - - 0x038DD7 0E:8DC7: 29 80     AND #con_btn_A
C - - - - - 0x038DD9 0E:8DC9: D0 DC     BNE bra_8DA7
C - - - - - 0x038DDB 0E:8DCB: 98        TYA
C - - - - - 0x038DDC 0E:8DCC: 29 40     AND #con_btn_B
C - - - - - 0x038DDE 0E:8DCE: D0 D1     BNE bra_8DA1
C - - - - - 0x038DE0 0E:8DD0: 98        TYA
C - - - - - 0x038DE1 0E:8DD1: 29 0F     AND #con_btns_Dpad
C - - - - - 0x038DE3 0E:8DD3: D0 25     BNE bra_8DFA
C - - - - - 0x038DE5 0E:8DD5: A5 93     LDA ram_sum_btn_hold
C - - - - - 0x038DE7 0E:8DD7: 29 0F     AND #con_btns_Dpad
C - - - - - 0x038DE9 0E:8DD9: F0 07     BEQ bra_8DE2
C - - - - - 0x038DEB 0E:8DDB: CE 00 06  DEC ram_0600
C - - - - - 0x038DEE 0E:8DDE: 10 05     BPL bra_8DE5
- - - - - - 0x038DF0 0E:8DE0: 30 13     BMI bra_8DF5
bra_8DE2:
C - - - - - 0x038DF2 0E:8DE2: 20 12 8D  JSR sub_8D12
bra_8DE5:
C - - - - - 0x038DF5 0E:8DE5: 20 04 8F  JSR sub_8F04
C - - - - - 0x038DF8 0E:8DE8: A5 22     LDA ram_frame_counter
C - - - - - 0x038DFA 0E:8DEA: 29 10     AND #$10
C - - - - - 0x038DFC 0E:8DEC: D0 06     BNE bra_8DF4_RTS
C - - - - - 0x038DFE 0E:8DEE: 8D 03 04  STA ram_0403
C - - - - - 0x038E01 0E:8DF1: 8D 01 04  STA ram_anim_object + 1
bra_8DF4_RTS:
C - - - - - 0x038E04 0E:8DF4: 60        RTS
bra_8DF5:
- - - - - - 0x038E05 0E:8DF5: A9 08     LDA #$08
- - - - - - 0x038E07 0E:8DF7: 8D 00 06  STA ram_0600
bra_8DFA:
C - - - - - 0x038E0A 0E:8DFA: A9 26     LDA #$26
C - - - - - 0x038E0C 0E:8DFC: 20 90 F6  JSR sub_0x03F6A0
C - - - - - 0x038E0F 0E:8DFF: A5 93     LDA ram_sum_btn_hold
C - - - - - 0x038E11 0E:8E01: 29 0F     AND #con_btns_Dpad
C - - - - - 0x038E13 0E:8E03: A0 FF     LDY #$FF
bra_8E05:
C - - - - - 0x038E15 0E:8E05: C8        INY
C - - - - - 0x038E16 0E:8E06: 4A        LSR
C - - - - - 0x038E17 0E:8E07: 90 FC     BCC bra_8E05
C - - - - - 0x038E19 0E:8E09: B9 69 90  LDA tbl_9069,Y
C - - - - - 0x038E1C 0E:8E0C: 6D 78 06  ADC ram_0678
C - - - - - 0x038E1F 0E:8E0F: 85 00     STA ram_0000
C - - - - - 0x038E21 0E:8E11: 48        PHA
C - - - - - 0x038E22 0E:8E12: A5 00     LDA ram_0000
C - - - - - 0x038E24 0E:8E14: 29 0F     AND #$0F
C - - - - - 0x038E26 0E:8E16: 85 01     STA ram_0001
C - - - - - 0x038E28 0E:8E18: 68        PLA
C - - - - - 0x038E29 0E:8E19: 10 0A     BPL bra_8E25
C - - - - - 0x038E2B 0E:8E1B: C9 FF     CMP #$FF
C - - - - - 0x038E2D 0E:8E1D: F0 23     BEQ bra_8E42
C - - - - - 0x038E2F 0E:8E1F: A5 01     LDA ram_0001
C - - - - - 0x038E31 0E:8E21: 09 20     ORA #$20
C - - - - - 0x038E33 0E:8E23: 85 00     STA ram_0000
bra_8E25:
C - - - - - 0x038E35 0E:8E25: C9 30     CMP #$30
C - - - - - 0x038E37 0E:8E27: 90 04     BCC bra_8E2D
C - - - - - 0x038E39 0E:8E29: A5 01     LDA ram_0001
C - - - - - 0x038E3B 0E:8E2B: 85 00     STA ram_0000
bra_8E2D:
C - - - - - 0x038E3D 0E:8E2D: A5 00     LDA ram_0000
C - - - - - 0x038E3F 0E:8E2F: 20 07 D2  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x038E42 0E:8E32: A8        TAY
C - - - - - 0x038E43 0E:8E33: B9 6D 90  LDA tbl_906D,Y
C - - - - - 0x038E46 0E:8E36: 85 02     STA ram_0002
C - - - - - 0x038E48 0E:8E38: C5 01     CMP ram_0001
C - - - - - 0x038E4A 0E:8E3A: B0 21     BCS bra_8E5D
C - - - - - 0x038E4C 0E:8E3C: A5 01     LDA ram_0001
C - - - - - 0x038E4E 0E:8E3E: C9 0F     CMP #$0F
C - - - - - 0x038E50 0E:8E40: D0 15     BNE bra_8E57
bra_8E42:
C - - - - - 0x038E52 0E:8E42: A5 00     LDA ram_0000
C - - - - - 0x038E54 0E:8E44: 69 0F     ADC #$0F
C - - - - - 0x038E56 0E:8E46: 29 F0     AND #$F0
C - - - - - 0x038E58 0E:8E48: 85 03     STA ram_0003
C - - - - - 0x038E5A 0E:8E4A: 20 07 D2  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x038E5D 0E:8E4D: A8        TAY
C - - - - - 0x038E5E 0E:8E4E: B9 6D 90  LDA tbl_906D,Y
C - - - - - 0x038E61 0E:8E51: 05 03     ORA ram_0003
C - - - - - 0x038E63 0E:8E53: 85 00     STA ram_0000
C - - - - - 0x038E65 0E:8E55: D0 06     BNE bra_8E5D
bra_8E57:
C - - - - - 0x038E67 0E:8E57: A5 00     LDA ram_0000
C - - - - - 0x038E69 0E:8E59: 29 F0     AND #$F0
C - - - - - 0x038E6B 0E:8E5B: 85 00     STA ram_0000
bra_8E5D:
C - - - - - 0x038E6D 0E:8E5D: A5 00     LDA ram_0000
C - - - - - 0x038E6F 0E:8E5F: 8D 78 06  STA ram_0678
C - - - - - 0x038E72 0E:8E62: 4C 04 8F  JMP loc_8F04



loc_8E65:
C D 0 - - - 0x038E75 0E:8E65: A9 25     LDA #$25
C - - - - - 0x038E77 0E:8E67: 20 90 F6  JSR sub_0x03F6A0
C - - - - - 0x038E7A 0E:8E6A: 8A        TXA
C - - - - - 0x038E7B 0E:8E6B: 0A        ASL
C - - - - - 0x038E7C 0E:8E6C: 0A        ASL
C - - - - - 0x038E7D 0E:8E6D: 6D 77 06  ADC ram_0677
C - - - - - 0x038E80 0E:8E70: AA        TAX
C - - - - - 0x038E81 0E:8E71: AD 78 06  LDA ram_0678
C - - - - - 0x038E84 0E:8E74: C9 2D     CMP #$2D
C - - - - - 0x038E86 0E:8E76: D0 03     BNE bra_8E7B
C - - - - - 0x038E88 0E:8E78: 4C 44 8F  JMP loc_8F44
bra_8E7B:
C - - - - - 0x038E8B 0E:8E7B: C9 2C     CMP #$2C
C - - - - - 0x038E8D 0E:8E7D: D0 04     BNE bra_8E83
C - - - - - 0x038E8F 0E:8E7F: A9 80     LDA #$80
C - - - - - 0x038E91 0E:8E81: D0 10     BNE bra_8E93
bra_8E83:
C - - - - - 0x038E93 0E:8E83: 48        PHA
C - - - - - 0x038E94 0E:8E84: 29 0F     AND #$0F
C - - - - - 0x038E96 0E:8E86: 85 00     STA ram_0000
C - - - - - 0x038E98 0E:8E88: 68        PLA
C - - - - - 0x038E99 0E:8E89: 20 07 D2  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x038E9C 0E:8E8C: A8        TAY
C - - - - - 0x038E9D 0E:8E8D: B9 70 90  LDA tbl_9070,Y
C - - - - - 0x038EA0 0E:8E90: 18        CLC
C - - - - - 0x038EA1 0E:8E91: 65 00     ADC ram_0000
bra_8E93:
C - - - - - 0x038EA3 0E:8E93: 9D 30 01  STA ram_name_letter_1,X
C - - - - - 0x038EA6 0E:8E96: 20 B1 8E  JSR sub_8EB1
C - - - - - 0x038EA9 0E:8E99: EE 77 06  INC ram_0677
C - - - - - 0x038EAC 0E:8E9C: AD 77 06  LDA ram_0677
C - - - - - 0x038EAF 0E:8E9F: C9 04     CMP #$04
C - - - - - 0x038EB1 0E:8EA1: 90 0D     BCC bra_8EB0_RTS
C - - - - - 0x038EB3 0E:8EA3: A9 03     LDA #$03
C - - - - - 0x038EB5 0E:8EA5: 8D 77 06  STA ram_0677
C - - - - - 0x038EB8 0E:8EA8: A9 2D     LDA #$2D
C - - - - - 0x038EBA 0E:8EAA: 8D 78 06  STA ram_0678
C - - - - - 0x038EBD 0E:8EAD: 4C 04 8F  JMP loc_8F04
bra_8EB0_RTS:
C - - - - - 0x038EC0 0E:8EB0: 60        RTS



sub_8EB1:
C - - - - - 0x038EC1 0E:8EB1: 18        CLC
C - - - - - 0x038EC2 0E:8EB2: AD 77 06  LDA ram_0677
C - - - - - 0x038EC5 0E:8EB5: 69 A8     ADC #$A8
C - - - - - 0x038EC7 0E:8EB7: A8        TAY
C - - - - - 0x038EC8 0E:8EB8: A9 21     LDA #$21
C - - - - - 0x038ECA 0E:8EBA: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x038ECD 0E:8EBD: AD 78 06  LDA ram_0678
C - - - - - 0x038ED0 0E:8EC0: C9 2D     CMP #$2D
C - - - - - 0x038ED2 0E:8EC2: F0 04     BEQ bra_8EC8
C - - - - - 0x038ED4 0E:8EC4: C9 2C     CMP #$2C
C - - - - - 0x038ED6 0E:8EC6: D0 04     BNE bra_8ECC
bra_8EC8:
C - - - - - 0x038ED8 0E:8EC8: A9 00     LDA #$00
C - - - - - 0x038EDA 0E:8ECA: F0 10     BEQ bra_8EDC
bra_8ECC:
C - - - - - 0x038EDC 0E:8ECC: 48        PHA
C - - - - - 0x038EDD 0E:8ECD: 29 0F     AND #$0F
C - - - - - 0x038EDF 0E:8ECF: 85 00     STA ram_0000
C - - - - - 0x038EE1 0E:8ED1: 68        PLA
C - - - - - 0x038EE2 0E:8ED2: 20 07 D2  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x038EE5 0E:8ED5: A8        TAY
C - - - - - 0x038EE6 0E:8ED6: B9 70 90  LDA tbl_9070,Y
C - - - - - 0x038EE9 0E:8ED9: 18        CLC
C - - - - - 0x038EEA 0E:8EDA: 65 00     ADC ram_0000
bra_8EDC:
C - - - - - 0x038EEC 0E:8EDC: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x038EEF 0E:8EDF: 4C 5B D2  JMP loc_0x03D26B



loc_8EE2:
C D 0 - - - 0x038EF2 0E:8EE2: AD 77 06  LDA ram_0677
C - - - - - 0x038EF5 0E:8EE5: F0 0A     BEQ bra_8EF1
C - - - - - 0x038EF7 0E:8EE7: F0 3A     BEQ bra_8F23_RTS
C - - - - - 0x038EF9 0E:8EE9: CE 77 06  DEC ram_0677
C - - - - - 0x038EFC 0E:8EEC: A9 0A     LDA #$0A
C - - - - - 0x038EFE 0E:8EEE: 4C 90 F6  JMP loc_0x03F6A0
bra_8EF1:
loc_8EF1:
C D 0 - - - 0x038F01 0E:8EF1: CE 75 06  DEC ram_0675
C - - - - - 0x038F04 0E:8EF4: A9 00     LDA #$00
C - - - - - 0x038F06 0E:8EF6: A2 03     LDX #$03
bra_8EF8:
C - - - - - 0x038F08 0E:8EF8: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x038F0B 0E:8EFB: CA        DEX
C - - - - - 0x038F0C 0E:8EFC: 10 FA     BPL bra_8EF8
C - - - - - 0x038F0E 0E:8EFE: A9 03     LDA #$03
C - - - - - 0x038F10 0E:8F00: 8D 77 06  STA ram_0677
C - - - - - 0x038F13 0E:8F03: 60        RTS



sub_8F04:
loc_8F04:
C D 0 - - - 0x038F14 0E:8F04: A9 22     LDA #$22
C - - - - - 0x038F16 0E:8F06: 8D 03 04  STA ram_0403
C - - - - - 0x038F19 0E:8F09: 8D 01 04  STA ram_anim_object + 1
C - - - - - 0x038F1C 0E:8F0C: AD 78 06  LDA ram_0678
C - - - - - 0x038F1F 0E:8F0F: 48        PHA
C - - - - - 0x038F20 0E:8F10: 18        CLC
C - - - - - 0x038F21 0E:8F11: 29 F0     AND #$F0
C - - - - - 0x038F23 0E:8F13: 69 98     ADC #$98
C - - - - - 0x038F25 0E:8F15: 8D 11 04  STA ram_Y_pos_hi_object + 1
C - - - - - 0x038F28 0E:8F18: 68        PLA
C - - - - - 0x038F29 0E:8F19: 29 0F     AND #$0F
C - - - - - 0x038F2B 0E:8F1B: 20 02 D2  JSR sub_0x03D212_multiply_by_10h
C - - - - - 0x038F2E 0E:8F1E: 69 1C     ADC #$1C
C - - - - - 0x038F30 0E:8F20: 8D 41 04  STA ram_X_pos_hi_object + 1
bra_8F23_RTS:
C - - - - - 0x038F33 0E:8F23: 60        RTS



sub_8F24:
C - - - - - 0x038F34 0E:8F24: AE 76 06  LDX ram_0676
C - - - - - 0x038F37 0E:8F27: A9 58     LDA #$58
C - - - - - 0x038F39 0E:8F29: 8D 12 04  STA ram_Y_pos_hi_blow
C - - - - - 0x038F3C 0E:8F2C: A9 80     LDA #$80
C - - - - - 0x038F3E 0E:8F2E: 8D 12 05  STA ram_0512
C - - - - - 0x038F41 0E:8F31: BD 55 01  LDA ram_0155,X
C - - - - - 0x038F44 0E:8F34: 0A        ASL
C - - - - - 0x038F45 0E:8F35: A9 30     LDA #$30
C - - - - - 0x038F47 0E:8F37: 90 02     BCC bra_8F3B
C - - - - - 0x038F49 0E:8F39: A9 74     LDA #$74
bra_8F3B:
C - - - - - 0x038F4B 0E:8F3B: 8D 42 04  STA ram_X_pos_hi_blow
C - - - - - 0x038F4E 0E:8F3E: A9 22     LDA #$22
C - - - - - 0x038F50 0E:8F40: 8D 02 04  STA ram_0402
C - - - - - 0x038F53 0E:8F43: 60        RTS



loc_8F44:
C D 0 - - - 0x038F54 0E:8F44: EE 75 06  INC ram_0675
C - - - - - 0x038F57 0E:8F47: A2 00     LDX #$00
C - - - - - 0x038F59 0E:8F49: 8E 01 04  STX ram_anim_object + 1
C - - - - - 0x038F5C 0E:8F4C: 8E 03 04  STX ram_0403
C - - - - - 0x038F5F 0E:8F4F: 8E 50 05  STX ram_id_object
C - - - - - 0x038F62 0E:8F52: AE 76 06  LDX ram_0676
C - - - - - 0x038F65 0E:8F55: 20 CB 8F  JSR sub_8FCB
C - - - - - 0x038F68 0E:8F58: A9 28     LDA #$28
C - - - - - 0x038F6A 0E:8F5A: 4C 90 F6  JMP loc_0x03F6A0
bra_8F5D:
C - - - - - 0x038F6D 0E:8F5D: AE 76 06  LDX ram_0676
C - - - - - 0x038F70 0E:8F60: BD 55 01  LDA ram_0155,X
C - - - - - 0x038F73 0E:8F63: 10 03     BPL bra_8F68
- - - - - - 0x038F75 0E:8F65: CE 75 06  DEC ram_0675
bra_8F68:
C - - - - - 0x038F78 0E:8F68: 4C F1 8E  JMP loc_8EF1



ofs_8F6B_03:
C - - J - - 0x038F7B 0E:8F6B: AE 76 06  LDX ram_0676
C - - - - - 0x038F7E 0E:8F6E: 86 A8     STX ram_00A8
C - - - - - 0x038F80 0E:8F70: A5 90     LDA ram_sum_btn_press
C - - - - - 0x038F82 0E:8F72: A8        TAY
C - - - - - 0x038F83 0E:8F73: 29 90     AND #con_btn_A + con_btn_Start
C - - - - - 0x038F85 0E:8F75: D0 71     BNE bra_8FE8
C - - - - - 0x038F87 0E:8F77: 98        TYA
C - - - - - 0x038F88 0E:8F78: 29 40     AND #con_btn_B
C - - - - - 0x038F8A 0E:8F7A: D0 E1     BNE bra_8F5D
C - - - - - 0x038F8C 0E:8F7C: 98        TYA
C - - - - - 0x038F8D 0E:8F7D: 29 0F     AND #con_btns_Dpad
C - - - - - 0x038F8F 0E:8F7F: F0 4A     BEQ bra_8FCB
C - - - - - 0x038F91 0E:8F81: A0 01     LDY #$01
C - - - - - 0x038F93 0E:8F83: 29 05     AND #$05
C - - - - - 0x038F95 0E:8F85: D0 02     BNE bra_8F89
C - - - - - 0x038F97 0E:8F87: A0 FF     LDY #$FF
bra_8F89:
C - - - - - 0x038F99 0E:8F89: 18        CLC
C - - - - - 0x038F9A 0E:8F8A: 98        TYA
C - - - - - 0x038F9B 0E:8F8B: 85 00     STA ram_0000
C - - - - - 0x038F9D 0E:8F8D: 7D 4C 01  ADC ram_014C,X
C - - - - - 0x038FA0 0E:8F90: C9 07     CMP #$07
C - - - - - 0x038FA2 0E:8F92: 90 08     BCC bra_8F9C
C - - - - - 0x038FA4 0E:8F94: 0A        ASL
C - - - - - 0x038FA5 0E:8F95: 90 03     BCC bra_8F9A
C - - - - - 0x038FA7 0E:8F97: A9 06     LDA #$06
C - - - - - 0x038FA9 0E:8F99: 2C        .byte $2C
bra_8F9A:
C - - - - - 0x038FAA 0E:8F9A: A9 00     LDA #$00
bra_8F9C:
C - - - - - 0x038FAC 0E:8F9C: C9 0F     CMP #$0F
C - - - - - 0x038FAE 0E:8F9E: D0 11     BNE bra_8FB1
bra_8FA0:
- - - - - - 0x038FB0 0E:8FA0: CA        DEX
- - - - - - 0x038FB1 0E:8FA1: 30 0E     BMI bra_8FB1
- - - - - - 0x038FB3 0E:8FA3: DD 4C 01  CMP ram_014C,X
- - - - - - 0x038FB6 0E:8FA6: D0 F8     BNE bra_8FA0
- - - - - - 0x038FB8 0E:8FA8: A6 A8     LDX ram_00A8
- - - - - - 0x038FBA 0E:8FAA: 9D 4C 01  STA ram_014C,X
- - - - - - 0x038FBD 0E:8FAD: A4 00     LDY ram_0000
- - - - - - 0x038FBF 0E:8FAF: D0 D8     BNE bra_8F89
bra_8FB1:
C - - - - - 0x038FC1 0E:8FB1: A6 A8     LDX ram_00A8
C - - - - - 0x038FC3 0E:8FB3: 9D 4C 01  STA ram_014C,X
C - - - - - 0x038FC6 0E:8FB6: 8D 50 05  STA ram_id_object
C - - - - - 0x038FC9 0E:8FB9: A9 27     LDA #$27
C - - - - - 0x038FCB 0E:8FBB: 20 90 F6  JSR sub_0x03F6A0
C - - - - - 0x038FCE 0E:8FBE: 20 58 90  JSR sub_9058
C - - - - - 0x038FD1 0E:8FC1: A9 00     LDA #$00
C - - - - - 0x038FD3 0E:8FC3: 8D D0 05  STA ram_05D0
C - - - - - 0x038FD6 0E:8FC6: 8D C0 05  STA ram_05C0
C - - - - - 0x038FD9 0E:8FC9: A6 A8     LDX ram_00A8
bra_8FCB:
sub_8FCB:
C - - - - - 0x038FDB 0E:8FCB: BC 4C 01  LDY ram_014C,X
C - - - - - 0x038FDE 0E:8FCE: 8C 50 05  STY ram_id_object
C - - - - - 0x038FE1 0E:8FD1: B9 7A 90  LDA tbl_907A,Y
C - - - - - 0x038FE4 0E:8FD4: 8D 10 04  STA ram_Y_pos_hi_fighter
C - - - - - 0x038FE7 0E:8FD7: A9 C0     LDA #$C0
C - - - - - 0x038FE9 0E:8FD9: 8D 40 04  STA ram_X_pos_hi_fighter
C - - - - - 0x038FEC 0E:8FDC: B9 73 90  LDA tbl_9073,Y
C - - - - - 0x038FEF 0E:8FDF: A8        TAY
C - - - - - 0x038FF0 0E:8FE0: A2 00     LDX #$00
C - - - - - 0x038FF2 0E:8FE2: 20 7C D0  JSR sub_0x03D08C
C - - - - - 0x038FF5 0E:8FE5: 4C 14 F7  JMP loc_0x03F724
bra_8FE8:
C - - - - - 0x038FF8 0E:8FE8: A9 29     LDA #$29
C - - - - - 0x038FFA 0E:8FEA: 20 90 F6  JSR sub_0x03F6A0
C - - - - - 0x038FFD 0E:8FED: EE 76 06  INC ram_0676
C - - - - - 0x039000 0E:8FF0: AD 76 06  LDA ram_0676
C - - - - - 0x039003 0E:8FF3: C9 04     CMP #$04
C - - - - - 0x039005 0E:8FF5: B0 06     BCS bra_8FFD
C - - - - - 0x039007 0E:8FF7: EE 75 06  INC ram_0675
C - - - - - 0x03900A 0E:8FFA: 4C 2E E1  JMP loc_0x03E13E
bra_8FFD:
C - - - - - 0x03900D 0E:8FFD: A9 05     LDA #$05
C - - - - - 0x03900F 0E:8FFF: 8D 75 06  STA ram_0675
C - - - - - 0x039012 0E:9002: 60        RTS



ofs_9003_05:
C - - J - - 0x039013 0E:9003: A9 00     LDA #$00
C - - - - - 0x039015 0E:9005: 85 00     STA ram_0000
C - - - - - 0x039017 0E:9007: A2 82     LDX #$82
bra_9009:
C - - - - - 0x039019 0E:9009: A4 00     LDY ram_0000
C - - - - - 0x03901B 0E:900B: B9 55 01  LDA ram_0155,Y
C - - - - - 0x03901E 0E:900E: 10 17     BPL bra_9027
C - - - - - 0x039020 0E:9010: 0A        ASL
C - - - - - 0x039021 0E:9011: 0A        ASL
C - - - - - 0x039022 0E:9012: A8        TAY
C - - - - - 0x039023 0E:9013: A9 8D     LDA #$8D
C - - - - - 0x039025 0E:9015: 99 30 01  STA ram_name_letter_1,Y
C - - - - - 0x039028 0E:9018: A9 9A     LDA #$9A
C - - - - - 0x03902A 0E:901A: 99 31 01  STA ram_name_letter_2,Y
C - - - - - 0x03902D 0E:901D: A9 9F     LDA #$9F
C - - - - - 0x03902F 0E:901F: 99 32 01  STA ram_name_letter_3,Y
C - - - - - 0x039032 0E:9022: 8A        TXA
C - - - - - 0x039033 0E:9023: 99 33 01  STA ram_name_letter_4,Y
C - - - - - 0x039036 0E:9026: E8        INX
bra_9027:
C - - - - - 0x039037 0E:9027: E6 00     INC ram_0000
C - - - - - 0x039039 0E:9029: A5 00     LDA ram_0000
C - - - - - 0x03903B 0E:902B: C9 04     CMP #$04
C - - - - - 0x03903D 0E:902D: 90 DA     BCC bra_9009
C - - - - - 0x03903F 0E:902F: A2 07     LDX #$07
C - - - - - 0x039041 0E:9031: A9 00     LDA #$00
bra_9033:
C - - - - - 0x039043 0E:9033: 99 05 01  STA ram_0105,Y
C - - - - - 0x039046 0E:9036: CA        DEX
C - - - - - 0x039047 0E:9037: 10 FA     BPL bra_9033
C - - - - - 0x039049 0E:9039: AA        TAX
C - - - - - 0x03904A 0E:903A: 85 00     STA ram_0000
bra_903C:
C - - - - - 0x03904C 0E:903C: BD 55 01  LDA ram_0155,X
C - - - - - 0x03904F 0E:903F: 30 07     BMI bra_9048
C - - - - - 0x039051 0E:9041: A5 00     LDA ram_0000
C - - - - - 0x039053 0E:9043: 9D 05 01  STA ram_0105,X
C - - - - - 0x039056 0E:9046: E6 00     INC ram_0000
bra_9048:
C - - - - - 0x039058 0E:9048: E8        INX
C - - - - - 0x039059 0E:9049: E0 04     CPX #$04
C - - - - - 0x03905B 0E:904B: 90 EF     BCC bra_903C
C - - - - - 0x03905D 0E:904D: A9 02     LDA #$02
C - - - - - 0x03905F 0E:904F: 20 AE F5  JSR sub_0x03F5BE
C - - - - - 0x039062 0E:9052: 20 C2 F6  JSR sub_0x03F6D2
C - - - - - 0x039065 0E:9055: 4C 2E E1  JMP loc_0x03E13E



sub_9058:
C - - - - - 0x039068 0E:9058: AC 76 06  LDY ram_0676
C - - - - - 0x03906B 0E:905B: 18        CLC
C - - - - - 0x03906C 0E:905C: B9 4C 01  LDA ram_014C,Y
C - - - - - 0x03906F 0E:905F: 69 0D     ADC #$0D
C - - - - - 0x039071 0E:9061: A2 04     LDX #$04
C - - - - - 0x039073 0E:9063: 20 46 D3  JSR sub_0x03D356
C - - - - - 0x039076 0E:9066: A6 A8     LDX ram_00A8
C - - - - - 0x039078 0E:9068: 60        RTS



tbl_9069:
- D 0 - - - 0x039079 0E:9069: 00        .byte $00   ; 00
- D 0 - - - 0x03907A 0E:906A: FE        .byte $FE   ; 01
- D 0 - - - 0x03907B 0E:906B: 0F        .byte $0F   ; 02
- D 0 - - - 0x03907C 0E:906C: EF        .byte $EF   ; 03



tbl_906D:
- D 0 - - - 0x03907D 0E:906D: 09        .byte $09   ; 00
- D 0 - - - 0x03907E 0E:906E: 0D        .byte $0D   ; 01
- D 0 - - - 0x03907F 0E:906F: 0D        .byte $0D   ; 02



tbl_9070:
- D 0 - - - 0x039080 0E:9070: 81        .byte $81   ; 00
- D 0 - - - 0x039081 0E:9071: 8B        .byte $8B   ; 01
- D 0 - - - 0x039082 0E:9072: 99        .byte $99   ; 02



tbl_9073:
- D 0 - - - 0x039083 0E:9073: 04        .byte $04   ; 00 Leo
- D 0 - - - 0x039084 0E:9074: 04        .byte $04   ; 01 Raph
- D 0 - - - 0x039085 0E:9075: 04        .byte $04   ; 02 Mike
- D 0 - - - 0x039086 0E:9076: 04        .byte $04   ; 03 Don
- D 0 - - - 0x039087 0E:9077: 06        .byte $06   ; 04 Casey
- D 0 - - - 0x039088 0E:9078: 0A        .byte $0A   ; 05 Hot
- D 0 - - - 0x039089 0E:9079: 10        .byte $10   ; 06 Shred



tbl_907A:
- D 0 - - - 0x03908A 0E:907A: 68        .byte $68   ; 00 Leo
- D 0 - - - 0x03908B 0E:907B: 68        .byte $68   ; 01 Raph
- D 0 - - - 0x03908C 0E:907C: 68        .byte $68   ; 02 Mike
- D 0 - - - 0x03908D 0E:907D: 68        .byte $68   ; 03 Don
- D 0 - - - 0x03908E 0E:907E: 68        .byte $68   ; 04 Casey
- D 0 - - - 0x03908F 0E:907F: 76        .byte $76   ; 05 Hot
- D 0 - - - 0x039090 0E:9080: 70        .byte $70   ; 06 Shred



tbl_9081:
- D 0 - - - 0x039091 0E:9081: 01        .byte $01   ; 00
- D 0 - - - 0x039092 0E:9082: D1        .byte $D1   ; 01
- D 0 - - - 0x039093 0E:9083: 23        .byte $23   ; 02
- D 0 - - - 0x039094 0E:9084: 05        .byte $05   ; 03
- D 0 - - - 0x039095 0E:9085: 00        .byte $00   ; 04
- D 0 - - - 0x039096 0E:9086: 0A        .byte $0A   ; 05
- D 0 - - - 0x039097 0E:9087: FF        .byte $FF   ; 06
- - - - - - 0x039098 0E:9088: 00        .byte $00   ; 07
- D 0 - - - 0x039099 0E:9089: 01        .byte $01   ; 08
- D 0 - - - 0x03909A 0E:908A: D1        .byte $D1   ; 09
- D 0 - - - 0x03909B 0E:908B: 23        .byte $23   ; 0A
- D 0 - - - 0x03909C 0E:908C: 0A        .byte $0A   ; 0B
- D 0 - - - 0x03909D 0E:908D: 00        .byte $00   ; 0C
- D 0 - - - 0x03909E 0E:908E: 05        .byte $05   ; 0D
- D 0 - - - 0x03909F 0E:908F: FF        .byte $FF   ; 0E



tbl_9090:
- D 0 - - - 0x0390A0 0E:9090: 03        .byte $03   ; 00
- D 0 - - - 0x0390A1 0E:9091: A8        .byte $A8   ; 01
- D 0 - - - 0x0390A2 0E:9092: 21        .byte $21   ; 02
- D 0 - - - 0x0390A3 0E:9093: 04        .byte $04   ; 03
- D 0 - - - 0x0390A4 0E:9094: 00        .byte $00   ; 04
- D 0 - - - 0x0390A5 0E:9095: FE        .byte $FE   ; 05
- D 0 - - - 0x0390A6 0E:9096: 01        .byte $01   ; 06
- D 0 - - - 0x0390A7 0E:9097: A8        .byte $A8   ; 07
- D 0 - - - 0x0390A8 0E:9098: 21        .byte $21   ; 08
- D 0 - - - 0x0390A9 0E:9099: 13        .byte $13   ; 09
- D 0 - - - 0x0390AA 0E:909A: 14        .byte $14   ; 0A
- D 0 - - - 0x0390AB 0E:909B: 10        .byte $10   ; 0B
- D 0 - - - 0x0390AC 0E:909C: 00        .byte $00   ; 0C
- D 0 - - - 0x0390AD 0E:909D: FF        .byte $FF   ; 0D
- D 0 - - - 0x0390AE 0E:909E: FE        .byte $FE   ; 0E



.export sub_0x0390AF
sub_0x0390AF:
C - - - - - 0x0390AF 0E:909F: A5 90     LDA ram_sum_btn_press
C - - - - - 0x0390B1 0E:90A1: 05 A4     ORA ram_00A4
C - - - - - 0x0390B3 0E:90A3: 29 30     AND #con_btns_SS
C - - - - - 0x0390B5 0E:90A5: D0 29     BNE bra_90D0
C - - - - - 0x0390B7 0E:90A7: A5 21     LDA ram_0021
C - - - - - 0x0390B9 0E:90A9: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x0390BC 0E:90AC: D6 90     .word ofs_90D6_00
- D 0 - I - 0x0390BE 0E:90AE: E3 90     .word ofs_90E3_01
- D 0 - I - 0x0390C0 0E:90B0: FE 90     .word ofs_90FE_02
- D 0 - I - 0x0390C2 0E:90B2: 11 91     .word ofs_9111_03
- D 0 - I - 0x0390C4 0E:90B4: 49 91     .word ofs_9149_04
- D 0 - I - 0x0390C6 0E:90B6: 59 91     .word ofs_9159_05
- D 0 - I - 0x0390C8 0E:90B8: 63 91     .word ofs_9163_06
- D 0 - I - 0x0390CA 0E:90BA: 7A 91     .word ofs_917A_07
- D 0 - I - 0x0390CC 0E:90BC: 9E 91     .word ofs_919E_08
- D 0 - I - 0x0390CE 0E:90BE: AE 91     .word ofs_91AE_09
- D 0 - I - 0x0390D0 0E:90C0: C6 91     .word ofs_91C6_0A
- D 0 - I - 0x0390D2 0E:90C2: 45 92     .word ofs_9245_0B
- D 0 - I - 0x0390D4 0E:90C4: 45 92     .word ofs_9245_0C
- D 0 - I - 0x0390D6 0E:90C6: 45 92     .word ofs_9245_0D
- D 0 - I - 0x0390D8 0E:90C8: 45 92     .word ofs_9245_0E
- D 0 - I - 0x0390DA 0E:90CA: 45 92     .word ofs_9245_0F
- D 0 - I - 0x0390DC 0E:90CC: 45 92     .word ofs_9245_10
- - - - - - 0x0390DE 0E:90CE: B2 93     .word ofs_93B2_11
bra_90D0:
C - - - - - 0x0390E0 0E:90D0: 20 C2 F6  JSR sub_0x03F6D2
C - - - - - 0x0390E3 0E:90D3: 4C B2 93  JMP loc_93B2



ofs_90D6_00:
C - - J - - 0x0390E6 0E:90D6: E6 21     INC ram_0021
C - - - - - 0x0390E8 0E:90D8: 20 3C F0  JSR sub_0x03F04C
C - - - - - 0x0390EB 0E:90DB: A9 0B     LDA #$0B
C - - - - - 0x0390ED 0E:90DD: 20 14 F8  JSR sub_0x03F824
C - - - - - 0x0390F0 0E:90E0: 4C 6D D4  JMP loc_0x03D47D



ofs_90E3_01:
C - - J - - 0x0390F3 0E:90E3: A9 3A     LDA #$3A
C - - - - - 0x0390F5 0E:90E5: 20 90 F6  JSR sub_0x03F6A0
C - - - - - 0x0390F8 0E:90E8: A9 00     LDA #$00
C - - - - - 0x0390FA 0E:90EA: 85 B6     STA ram_00B6
C - - - - - 0x0390FC 0E:90EC: A0 1E     LDY #$1E
C - - - - - 0x0390FE 0E:90EE: 20 1A DC  JSR sub_0x03DC2A
C - - - - - 0x039101 0E:90F1: A9 4D     LDA #$4D
C - - - - - 0x039103 0E:90F3: 8D 00 04  STA ram_anim_object
C - - - - - 0x039106 0E:90F6: A0 16     LDY #$16
C - - - - - 0x039108 0E:90F8: A9 17     LDA #$17
C - - - - - 0x03910A 0E:90FA: A2 2A     LDX #$2A
C - - - - - 0x03910C 0E:90FC: D0 27     BNE bra_9125



ofs_90FE_02:
C - - J - - 0x03910E 0E:90FE: 20 36 9B  JSR sub_9B36
C - - - - - 0x039111 0E:9101: AD 31 06  LDA ram_0631
C - - - - - 0x039114 0E:9104: D0 0A     BNE bra_9110_RTS
C - - - - - 0x039116 0E:9106: A9 A0     LDA #$A0
C - - - - - 0x039118 0E:9108: 8D 60 05  STA ram_0560
C - - - - - 0x03911B 0E:910B: E6 21     INC ram_0021
C - - - - - 0x03911D 0E:910D: 4C 2E E1  JMP loc_0x03E13E
bra_9110_RTS:
C - - - - - 0x039120 0E:9110: 60        RTS



ofs_9111_03:
C - - J - - 0x039121 0E:9111: A0 20     LDY #$20
C - - - - - 0x039123 0E:9113: 20 1A DC  JSR sub_0x03DC2A
C - - - - - 0x039126 0E:9116: A9 01     LDA #$01
C - - - - - 0x039128 0E:9118: 85 B6     STA ram_00B6
C - - - - - 0x03912A 0E:911A: A9 4E     LDA #$4E
C - - - - - 0x03912C 0E:911C: 8D 00 04  STA ram_anim_object
C - - - - - 0x03912F 0E:911F: A0 18     LDY #$18
C - - - - - 0x039131 0E:9121: A9 19     LDA #$19
C - - - - - 0x039133 0E:9123: A2 2C     LDX #$2C
bra_9125:
C - - - - - 0x039135 0E:9125: 48        PHA
C - - - - - 0x039136 0E:9126: 98        TYA
C - - - - - 0x039137 0E:9127: 48        PHA
C - - - - - 0x039138 0E:9128: 20 44 F0  JSR sub_0x03F054
C - - - - - 0x03913B 0E:912B: 68        PLA
C - - - - - 0x03913C 0E:912C: A8        TAY
C - - - - - 0x03913D 0E:912D: 68        PLA
C - - - - - 0x03913E 0E:912E: 20 94 D3  JSR sub_0x03D3A4
C - - - - - 0x039141 0E:9131: A9 80     LDA #$80
C - - - - - 0x039143 0E:9133: 8D 40 04  STA ram_X_pos_hi_object
C - - - - - 0x039146 0E:9136: A9 00     LDA #$00
C - - - - - 0x039148 0E:9138: 8D 31 06  STA ram_0631
C - - - - - 0x03914B 0E:913B: A9 1F     LDA #$1F
C - - - - - 0x03914D 0E:913D: 8D 10 04  STA ram_Y_pos_hi_object
C - - - - - 0x039150 0E:9140: A9 21     LDA #$21
C - - - - - 0x039152 0E:9142: 85 34     STA ram_0034
C - - - - - 0x039154 0E:9144: E6 21     INC ram_0021
C - - - - - 0x039156 0E:9146: 4C 41 E1  JMP loc_0x03E151



ofs_9149_04:
C - - J - - 0x039159 0E:9149: 20 36 9B  JSR sub_9B36
C - - - - - 0x03915C 0E:914C: AD 31 06  LDA ram_0631
C - - - - - 0x03915F 0E:914F: D0 07     BNE bra_9158_RTS
C - - - - - 0x039161 0E:9151: A9 20     LDA #$20
C - - - - - 0x039163 0E:9153: 8D 60 05  STA ram_0560
C - - - - - 0x039166 0E:9156: E6 21     INC ram_0021
bra_9158_RTS:
C - - - - - 0x039168 0E:9158: 60        RTS



ofs_9159_05:
C - - J - - 0x039169 0E:9159: CE 60 05  DEC ram_0560
C - - - - - 0x03916C 0E:915C: D0 FA     BNE bra_9158_RTS
bra_915E:
C - - - - - 0x03916E 0E:915E: E6 21     INC ram_0021
C - - - - - 0x039170 0E:9160: 4C 2E E1  JMP loc_0x03E13E



ofs_9163_06:
C - - J - - 0x039173 0E:9163: 20 3C F0  JSR sub_0x03F04C
C - - - - - 0x039176 0E:9166: A9 3B     LDA #$3B
C - - - - - 0x039178 0E:9168: 20 8B F6  JSR sub_0x03F69B
C - - - - - 0x03917B 0E:916B: A9 02     LDA #$02
C - - - - - 0x03917D 0E:916D: 85 B6     STA ram_00B6
C - - - - - 0x03917F 0E:916F: A9 00     LDA #$00
C - - - - - 0x039181 0E:9171: A8        TAY
C - - - - - 0x039182 0E:9172: 20 94 D3  JSR sub_0x03D3A4
C - - - - - 0x039185 0E:9175: E6 21     INC ram_0021
C - - - - - 0x039187 0E:9177: 4C C6 E8  JMP loc_0x03E8D6



ofs_917A_07:
C - - J - - 0x03918A 0E:917A: CE 60 05  DEC ram_0560
C - - - - - 0x03918D 0E:917D: 30 05     BMI bra_9184
C - - - - - 0x03918F 0E:917F: D0 1C     BNE bra_919D_RTS
C - - - - - 0x039191 0E:9181: 4C BB 93  JMP loc_93BB
bra_9184:
C - - - - - 0x039194 0E:9184: 20 CE 93  JSR sub_93CE
C - - - - - 0x039197 0E:9187: A9 03     LDA #$03
C - - - - - 0x039199 0E:9189: 8D 60 05  STA ram_0560
C - - - - - 0x03919C 0E:918C: EE 30 05  INC ram_0530
C - - - - - 0x03919F 0E:918F: AD 30 05  LDA ram_0530
C - - - - - 0x0391A2 0E:9192: C9 06     CMP #$06
C - - - - - 0x0391A4 0E:9194: 90 07     BCC bra_919D_RTS
C - - - - - 0x0391A6 0E:9196: E6 21     INC ram_0021
C - - - - - 0x0391A8 0E:9198: A9 0B     LDA #$0B
C - - - - - 0x0391AA 0E:919A: 4C 14 F8  JMP loc_0x03F824
bra_919D_RTS:
C - - - - - 0x0391AD 0E:919D: 60        RTS



ofs_919E_08:
C - - J - - 0x0391AE 0E:919E: 20 36 9B  JSR sub_9B36
C - - - - - 0x0391B1 0E:91A1: AD 31 06  LDA ram_0631
C - - - - - 0x0391B4 0E:91A4: D0 F7     BNE bra_919D_RTS
C - - - - - 0x0391B6 0E:91A6: A9 60     LDA #$60
C - - - - - 0x0391B8 0E:91A8: 8D 60 05  STA ram_0560
C - - - - - 0x0391BB 0E:91AB: E6 21     INC ram_0021
C - - - - - 0x0391BD 0E:91AD: 60        RTS



ofs_91AE_09:
C - - J - - 0x0391BE 0E:91AE: CE 60 05  DEC ram_0560
C - - - - - 0x0391C1 0E:91B1: F0 0C     BEQ bra_91BF
C - - - - - 0x0391C3 0E:91B3: AD 60 05  LDA ram_0560
C - - - - - 0x0391C6 0E:91B6: C9 40     CMP #$40
C - - - - - 0x0391C8 0E:91B8: D0 E3     BNE bra_919D_RTS
C - - - - - 0x0391CA 0E:91BA: A9 5B     LDA #$5B
C - - - - - 0x0391CC 0E:91BC: 4C 90 F6  JMP loc_0x03F6A0
bra_91BF:
C - - - - - 0x0391CF 0E:91BF: A9 40     LDA #$40
C - - - - - 0x0391D1 0E:91C1: 8D 60 05  STA ram_0560
C - - - - - 0x0391D4 0E:91C4: D0 98     BNE bra_915E



ofs_91C6_0A:
C - - J - - 0x0391D6 0E:91C6: CE 60 05  DEC ram_0560
C - - - - - 0x0391D9 0E:91C9: D0 D2     BNE bra_919D_RTS
C - - - - - 0x0391DB 0E:91CB: A9 00     LDA #$00
C - - - - - 0x0391DD 0E:91CD: 8D 00 04  STA ram_anim_object
C - - - - - 0x0391E0 0E:91D0: 8D B0 04  STA ram_04B0
C - - - - - 0x0391E3 0E:91D3: A9 3C     LDA #$3C
C - - - - - 0x0391E5 0E:91D5: 20 90 F6  JSR sub_0x03F6A0
C - - - - - 0x0391E8 0E:91D8: 20 90 FC  JSR sub_0x03FCA0
C - - - - - 0x0391EB 0E:91DB: A9 10     LDA #$10
C - - - - - 0x0391ED 0E:91DD: 20 14 F8  JSR sub_0x03F824
C - - - - - 0x0391F0 0E:91E0: A9 03     LDA #$03
C - - - - - 0x0391F2 0E:91E2: 8D 0C 01  STA ram_010C
loc_91E5:
C D 0 - - - 0x0391F5 0E:91E5: E6 21     INC ram_0021
C - - - - - 0x0391F7 0E:91E7: A9 00     LDA #$00
C - - - - - 0x0391F9 0E:91E9: 8D C0 04  STA ram_04C0
C - - - - - 0x0391FC 0E:91EC: AD B0 04  LDA ram_04B0
C - - - - - 0x0391FF 0E:91EF: 0A        ASL
C - - - - - 0x039200 0E:91F0: 69 30     ADC #$30
C - - - - - 0x039202 0E:91F2: AA        TAX
C - - - - - 0x039203 0E:91F3: 20 44 F0  JSR sub_0x03F054
C - - - - - 0x039206 0E:91F6: AD B0 04  LDA ram_04B0
C - - - - - 0x039209 0E:91F9: 0A        ASL
C - - - - - 0x03920A 0E:91FA: A8        TAY
C - - - - - 0x03920B 0E:91FB: BE 6D 95  LDX tbl_956D,Y
C - - - - - 0x03920E 0E:91FE: 86 32     STX ram_0032
C - - - - - 0x039210 0E:9200: E8        INX
C - - - - - 0x039211 0E:9201: E8        INX
C - - - - - 0x039212 0E:9202: 86 33     STX ram_0033
C - - - - - 0x039214 0E:9204: B9 6E 95  LDA tbl_956E,Y
C - - - - - 0x039217 0E:9207: 85 34     STA ram_0034
C - - - - - 0x039219 0E:9209: AC B0 04  LDY ram_04B0
C - - - - - 0x03921C 0E:920C: B9 51 95  LDA tbl_9551,Y
C - - - - - 0x03921F 0E:920F: 85 FC     STA ram_00FC
C - - - - - 0x039221 0E:9211: B9 5D 95  LDA tbl_955D,Y
C - - - - - 0x039224 0E:9214: 85 FD     STA ram_00FD
C - - - - - 0x039226 0E:9216: A5 FF     LDA ram_00FF
C - - - - - 0x039228 0E:9218: 29 FD     AND #$FD
C - - - - - 0x03922A 0E:921A: 19 57 95  ORA tbl_9557,Y
C - - - - - 0x03922D 0E:921D: 85 FF     STA ram_00FF
C - - - - - 0x03922F 0E:921F: 20 6D D4  JSR sub_0x03D47D
C - - - - - 0x039232 0E:9222: AD B0 04  LDA ram_04B0
C - - - - - 0x039235 0E:9225: 0A        ASL
C - - - - - 0x039236 0E:9226: 6D B0 04  ADC ram_04B0
C - - - - - 0x039239 0E:9229: A8        TAY
C - - - - - 0x03923A 0E:922A: B9 3F 95  LDA tbl_953F,Y
C - - - - - 0x03923D 0E:922D: A2 00     LDX #$00
C - - - - - 0x03923F 0E:922F: 20 46 D3  JSR sub_0x03D356
C - - - - - 0x039242 0E:9232: B9 40 95  LDA tbl_9540,Y
C - - - - - 0x039245 0E:9235: A2 01     LDX #$01
C - - - - - 0x039247 0E:9237: 20 46 D3  JSR sub_0x03D356
C - - - - - 0x03924A 0E:923A: B9 41 95  LDA tbl_9541,Y
C - - - - - 0x03924D 0E:923D: A2 04     LDX #$04
C - - - - - 0x03924F 0E:923F: 20 46 D3  JSR sub_0x03D356
C - - - - - 0x039252 0E:9242: 4C 48 92  JMP loc_9248



ofs_9245_0B:
ofs_9245_0C:
ofs_9245_0D:
ofs_9245_0E:
ofs_9245_0F:
ofs_9245_10:
C - - J - - 0x039255 0E:9245: 20 6F 92  JSR sub_926F
loc_9248:
C D 0 - - - 0x039258 0E:9248: A5 FF     LDA ram_00FF
C - - - - - 0x03925A 0E:924A: 29 02     AND #$02
C - - - - - 0x03925C 0E:924C: D0 10     BNE bra_925E
C - - - - - 0x03925E 0E:924E: A0 03     LDY #$03
C - - - - - 0x039260 0E:9250: A5 FC     LDA ram_00FC
C - - - - - 0x039262 0E:9252: C9 7D     CMP #$7D
C - - - - - 0x039264 0E:9254: B0 15     BCS bra_926B
C - - - - - 0x039266 0E:9256: A9 81     LDA #$81
C - - - - - 0x039268 0E:9258: E5 FC     SBC ram_00FC
C - - - - - 0x03926A 0E:925A: A8        TAY
C - - - - - 0x03926B 0E:925B: 4C 6B 92  JMP loc_926B
bra_925E:
C - - - - - 0x03926E 0E:925E: A0 EF     LDY #$EF
C - - - - - 0x039270 0E:9260: A5 FC     LDA ram_00FC
C - - - - - 0x039272 0E:9262: C9 7D     CMP #$7D
C - - - - - 0x039274 0E:9264: 90 05     BCC bra_926B
C - - - - - 0x039276 0E:9266: A9 70     LDA #$70
C - - - - - 0x039278 0E:9268: E5 FC     SBC ram_00FC
C - - - - - 0x03927A 0E:926A: A8        TAY
bra_926B:
loc_926B:
C D 0 - - - 0x03927B 0E:926B: 8C 0C 01  STY ram_010C
C - - - - - 0x03927E 0E:926E: 60        RTS



sub_926F:
C - - - - - 0x03927F 0E:926F: AD C0 04  LDA ram_04C0
C - - - - - 0x039282 0E:9272: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x039285 0E:9275: 7D 92     .word ofs_927D_00
- D 0 - I - 0x039287 0E:9277: 06 93     .word ofs_9306_01
- D 0 - I - 0x039289 0E:9279: A3 93     .word ofs_93A3_02
- D 0 - I - 0x03928B 0E:927B: AC 93     .word ofs_93AC_03



ofs_927D_00:
C - - J - - 0x03928D 0E:927D: 20 97 92  JSR sub_9297
C - - - - - 0x039290 0E:9280: A5 FF     LDA ram_00FF
C - - - - - 0x039292 0E:9282: 29 02     AND #$02
C - - - - - 0x039294 0E:9284: F0 10     BEQ bra_9296_RTS
C - - - - - 0x039296 0E:9286: A5 FC     LDA ram_00FC
C - - - - - 0x039298 0E:9288: 29 FC     AND #$FC
C - - - - - 0x03929A 0E:928A: C9 E0     CMP #$E0
C - - - - - 0x03929C 0E:928C: D0 08     BNE bra_9296_RTS
C - - - - - 0x03929E 0E:928E: EE C0 04  INC ram_04C0
C - - - - - 0x0392A1 0E:9291: A9 00     LDA #$00
C - - - - - 0x0392A3 0E:9293: 8D 30 05  STA ram_0530
bra_9296_RTS:
C - - - - - 0x0392A6 0E:9296: 60        RTS



sub_9297:
C - - - - - 0x0392A7 0E:9297: A5 91     LDA ram_btn_hold
C - - - - - 0x0392A9 0E:9299: 29 80     AND #con_btn_A
C - - - - - 0x0392AB 0E:929B: D0 F9     BNE bra_9296_RTS
C - - - - - 0x0392AD 0E:929D: A5 21     LDA ram_0021
C - - - - - 0x0392AF 0E:929F: 38        SEC
C - - - - - 0x0392B0 0E:92A0: E9 0B     SBC #$0B
C - - - - - 0x0392B2 0E:92A2: 0A        ASL
C - - - - - 0x0392B3 0E:92A3: A8        TAY
C - - - - - 0x0392B4 0E:92A4: 18        CLC
C - - - - - 0x0392B5 0E:92A5: B9 33 95  LDA tbl_9533,Y
C - - - - - 0x0392B8 0E:92A8: 65 FD     ADC ram_00FD
C - - - - - 0x0392BA 0E:92AA: 85 FD     STA ram_00FD
C - - - - - 0x0392BC 0E:92AC: 18        CLC
C - - - - - 0x0392BD 0E:92AD: B9 34 95  LDA tbl_9534,Y
C - - - - - 0x0392C0 0E:92B0: 65 FC     ADC ram_00FC
C - - - - - 0x0392C2 0E:92B2: 85 FC     STA ram_00FC
C - - - - - 0x0392C4 0E:92B4: C9 F0     CMP #$F0
C - - - - - 0x0392C6 0E:92B6: 90 15     BCC bra_92CD
C - - - - - 0x0392C8 0E:92B8: B9 34 95  LDA tbl_9534,Y
C - - - - - 0x0392CB 0E:92BB: 30 03     BMI bra_92C0
- - - - - - 0x0392CD 0E:92BD: A9 10     LDA #$10
- - - - - - 0x0392CF 0E:92BF: 2C        .byte $2C   ; 
bra_92C0:
C - - - - - 0x0392D0 0E:92C0: A9 F0     LDA #$F0
C - - - - - 0x0392D2 0E:92C2: 18        CLC
C - - - - - 0x0392D3 0E:92C3: 65 FC     ADC ram_00FC
C - - - - - 0x0392D5 0E:92C5: 85 FC     STA ram_00FC
C - - - - - 0x0392D7 0E:92C7: A5 FF     LDA ram_00FF
C - - - - - 0x0392D9 0E:92C9: 49 02     EOR #$02
C - - - - - 0x0392DB 0E:92CB: 85 FF     STA ram_00FF
bra_92CD:
C - - - - - 0x0392DD 0E:92CD: A5 FF     LDA ram_00FF
C - - - - - 0x0392DF 0E:92CF: 4A        LSR
C - - - - - 0x0392E0 0E:92D0: 48        PHA
C - - - - - 0x0392E1 0E:92D1: A9 4A     LDA #$4A
C - - - - - 0x0392E3 0E:92D3: 38        SEC
C - - - - - 0x0392E4 0E:92D4: E5 FC     SBC ram_00FC
C - - - - - 0x0392E6 0E:92D6: 8D 10 04  STA ram_Y_pos_hi_object
C - - - - - 0x0392E9 0E:92D9: 68        PLA
C - - - - - 0x0392EA 0E:92DA: 69 01     ADC #$01
C - - - - - 0x0392EC 0E:92DC: 29 01     AND #$01
C - - - - - 0x0392EE 0E:92DE: 8D 30 04  STA ram_0430
C - - - - - 0x0392F1 0E:92E1: A5 FD     LDA ram_00FD
C - - - - - 0x0392F3 0E:92E3: 20 FC D1  JSR sub_0x03D20C_reverse_byte
C - - - - - 0x0392F6 0E:92E6: 18        CLC
C - - - - - 0x0392F7 0E:92E7: 69 88     ADC #$88
C - - - - - 0x0392F9 0E:92E9: 8D 40 04  STA ram_X_pos_hi_object
C - - - - - 0x0392FC 0E:92EC: A5 FF     LDA ram_00FF
C - - - - - 0x0392FE 0E:92EE: 29 02     AND #$02
C - - - - - 0x039300 0E:92F0: F0 09     BEQ bra_92FB
C - - - - - 0x039302 0E:92F2: AD 10 04  LDA ram_Y_pos_hi_object
C - - - - - 0x039305 0E:92F5: 38        SEC
C - - - - - 0x039306 0E:92F6: E9 10     SBC #$10
C - - - - - 0x039308 0E:92F8: 8D 10 04  STA ram_Y_pos_hi_object
bra_92FB:
C - - - - - 0x03930B 0E:92FB: A5 21     LDA ram_0021
C - - - - - 0x03930D 0E:92FD: 38        SEC
C - - - - - 0x03930E 0E:92FE: E9 0B     SBC #$0B
C - - - - - 0x039310 0E:9300: 69 4E     ADC #$4E
C - - - - - 0x039312 0E:9302: 8D 00 04  STA ram_anim_object
C - - - - - 0x039315 0E:9305: 60        RTS



ofs_9306_01:
C - - J - - 0x039316 0E:9306: AD 30 05  LDA ram_0530
C - - - - - 0x039319 0E:9309: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x03931C 0E:930C: 12 93     .word ofs_9312_00
- D 0 - I - 0x03931E 0E:930E: 2F 93     .word ofs_932F_01
- D 0 - I - 0x039320 0E:9310: 92 93     .word ofs_9392_02



ofs_9312_00:
C - - J - - 0x039322 0E:9312: A9 00     LDA #$00
C - - - - - 0x039324 0E:9314: 8D E0 04  STA ram_04E0
C - - - - - 0x039327 0E:9317: 38        SEC
C - - - - - 0x039328 0E:9318: A5 21     LDA ram_0021
C - - - - - 0x03932A 0E:931A: E9 0B     SBC #$0B
C - - - - - 0x03932C 0E:931C: 8D D0 05  STA ram_05D0
C - - - - - 0x03932F 0E:931F: A8        TAY
C - - - - - 0x039330 0E:9320: B9 7F 95  LDA tbl_957F,Y
C - - - - - 0x039333 0E:9323: 8D F0 04  STA ram_04F0
C - - - - - 0x039336 0E:9326: EE 30 05  INC ram_0530
C - - - - - 0x039339 0E:9329: A9 09     LDA #$09
C - - - - - 0x03933B 0E:932B: 8D 60 05  STA ram_0560
bra_932E_RTS:
C - - - - - 0x03933E 0E:932E: 60        RTS



ofs_932F_01:
C - - J - - 0x03933F 0E:932F: CE 60 05  DEC ram_0560
C - - - - - 0x039342 0E:9332: D0 FA     BNE bra_932E_RTS
C - - - - - 0x039344 0E:9334: AD E0 04  LDA ram_04E0
C - - - - - 0x039347 0E:9337: 0A        ASL
C - - - - - 0x039348 0E:9338: AC D0 05  LDY ram_05D0
C - - - - - 0x03934B 0E:933B: 79 79 95  ADC tbl_9579,Y
C - - - - - 0x03934E 0E:933E: 85 00     STA ram_0000
C - - - - - 0x039350 0E:9340: AC F0 04  LDY ram_04F0
C - - - - - 0x039353 0E:9343: BE 85 95  LDX tbl_9585,Y
C - - - - - 0x039356 0E:9346: E0 FF     CPX #$FF
C - - - - - 0x039358 0E:9348: F0 40     BEQ bra_938A
C - - - - - 0x03935A 0E:934A: A0 00     LDY #$00
bra_934C:
C - - - - - 0x03935C 0E:934C: BD BC 95  LDA tbl_95BC,X
C - - - - - 0x03935F 0E:934F: 99 01 00  STA ram_0001,Y
C - - - - - 0x039362 0E:9352: E8        INX
C - - - - - 0x039363 0E:9353: C8        INY
C - - - - - 0x039364 0E:9354: C0 04     CPY #$04
C - - - - - 0x039366 0E:9356: 90 F4     BCC bra_934C
C - - - - - 0x039368 0E:9358: EE E0 04  INC ram_04E0
C - - - - - 0x03936B 0E:935B: EE F0 04  INC ram_04F0
C - - - - - 0x03936E 0E:935E: A9 09     LDA #$09
C - - - - - 0x039370 0E:9360: 8D 60 05  STA ram_0560
C - - - - - 0x039373 0E:9363: A9 00     LDA #$00
C - - - - - 0x039375 0E:9365: 20 71 93  JSR sub_9371
C - - - - - 0x039378 0E:9368: 18        CLC
C - - - - - 0x039379 0E:9369: A5 00     LDA ram_0000
C - - - - - 0x03937B 0E:936B: 69 20     ADC #$20
C - - - - - 0x03937D 0E:936D: 85 00     STA ram_0000
C - - - - - 0x03937F 0E:936F: A9 02     LDA #$02
sub_9371:
C - - - - - 0x039381 0E:9371: 48        PHA
C - - - - - 0x039382 0E:9372: A4 00     LDY ram_0000
C - - - - - 0x039384 0E:9374: A9 22     LDA #$22
C - - - - - 0x039386 0E:9376: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x039389 0E:9379: 68        PLA
C - - - - - 0x03938A 0E:937A: A8        TAY
C - - - - - 0x03938B 0E:937B: B9 01 00  LDA ram_0001,Y
C - - - - - 0x03938E 0E:937E: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x039391 0E:9381: B9 02 00  LDA ram_0002,Y
C - - - - - 0x039394 0E:9384: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x039397 0E:9387: 4C 5B D2  JMP loc_0x03D26B
bra_938A:
C - - - - - 0x03939A 0E:938A: EE 30 05  INC ram_0530
C - - - - - 0x03939D 0E:938D: A9 4B     LDA #$4B
C - - - - - 0x03939F 0E:938F: 8D 60 05  STA ram_0560
ofs_9392_02:
C - - - - - 0x0393A2 0E:9392: CE 60 05  DEC ram_0560
C - - - - - 0x0393A5 0E:9395: D0 23     BNE bra_93BA_RTS
C - - - - - 0x0393A7 0E:9397: A5 21     LDA ram_0021
C - - - - - 0x0393A9 0E:9399: C9 10     CMP #$10
C - - - - - 0x0393AB 0E:939B: B0 15     BCS bra_93B2
C - - - - - 0x0393AD 0E:939D: EE C0 04  INC ram_04C0
C - - - - - 0x0393B0 0E:93A0: 4C 2E E1  JMP loc_0x03E13E



ofs_93A3_02:
C - - J - - 0x0393B3 0E:93A3: A9 00     LDA #$00
C - - - - - 0x0393B5 0E:93A5: 8D 00 04  STA ram_anim_object
C - - - - - 0x0393B8 0E:93A8: EE C0 04  INC ram_04C0
C - - - - - 0x0393BB 0E:93AB: 60        RTS



ofs_93AC_03:
C - - J - - 0x0393BC 0E:93AC: EE B0 04  INC ram_04B0
C - - - - - 0x0393BF 0E:93AF: 4C E5 91  JMP loc_91E5



bra_93B2:
loc_93B2:
ofs_93B2_11:
C D 0 - - - 0x0393C2 0E:93B2: A9 00     LDA #$00
C - - - - - 0x0393C4 0E:93B4: 20 AE F5  JSR sub_0x03F5BE
C - - - - - 0x0393C7 0E:93B7: 4C 3E E1  JMP loc_0x03E14E
bra_93BA_RTS:
C - - - - - 0x0393CA 0E:93BA: 60        RTS



loc_93BB:
C D 0 - - - 0x0393CB 0E:93BB: A9 00     LDA #$00
C - - - - - 0x0393CD 0E:93BD: 85 18     STA ram_0018
C - - - - - 0x0393CF 0E:93BF: AC 30 05  LDY ram_0530
C - - - - - 0x0393D2 0E:93C2: F0 F6     BEQ bra_93BA_RTS
C - - - - - 0x0393D4 0E:93C4: CE 30 05  DEC ram_0530
C - - - - - 0x0393D7 0E:93C7: 20 D2 93  JSR sub_93D2
C - - - - - 0x0393DA 0E:93CA: EE 30 05  INC ram_0530
C - - - - - 0x0393DD 0E:93CD: 60        RTS



sub_93CE:
C - - - - - 0x0393DE 0E:93CE: A9 01     LDA #$01
C - - - - - 0x0393E0 0E:93D0: 85 18     STA ram_0018
sub_93D2:
C - - - - - 0x0393E2 0E:93D2: A9 20     LDA #$20
C - - - - - 0x0393E4 0E:93D4: 85 00     STA ram_0000
C - - - - - 0x0393E6 0E:93D6: AD 30 05  LDA ram_0530
C - - - - - 0x0393E9 0E:93D9: 85 01     STA ram_0001
C - - - - - 0x0393EB 0E:93DB: 20 02 D2  JSR sub_0x03D212_multiply_by_10h
C - - - - - 0x0393EE 0E:93DE: 0A        ASL
C - - - - - 0x0393EF 0E:93DF: 90 02     BCC bra_93E3
- - - - - - 0x0393F1 0E:93E1: E6 00     INC ram_0000
bra_93E3:
C - - - - - 0x0393F3 0E:93E3: 65 01     ADC ram_0001
C - - - - - 0x0393F5 0E:93E5: 69 06     ADC #$06
C - - - - - 0x0393F7 0E:93E7: 85 01     STA ram_0001
C - - - - - 0x0393F9 0E:93E9: A9 00     LDA #$00
C - - - - - 0x0393FB 0E:93EB: 85 03     STA ram_0003
C - - - - - 0x0393FD 0E:93ED: A9 05     LDA #$05
C - - - - - 0x0393FF 0E:93EF: 38        SEC
C - - - - - 0x039400 0E:93F0: ED 30 05  SBC ram_0530
C - - - - - 0x039403 0E:93F3: 0A        ASL
C - - - - - 0x039404 0E:93F4: 69 08     ADC #$08
C - - - - - 0x039406 0E:93F6: 85 02     STA ram_0002
C - - - - - 0x039408 0E:93F8: 69 01     ADC #$01
C - - - - - 0x03940A 0E:93FA: 0A        ASL
C - - - - - 0x03940B 0E:93FB: 26 03     ROL ram_0003
C - - - - - 0x03940D 0E:93FD: 0A        ASL
C - - - - - 0x03940E 0E:93FE: 26 03     ROL ram_0003
C - - - - - 0x039410 0E:9400: 0A        ASL
C - - - - - 0x039411 0E:9401: 26 03     ROL ram_0003
C - - - - - 0x039413 0E:9403: 0A        ASL
C - - - - - 0x039414 0E:9404: 26 03     ROL ram_0003
C - - - - - 0x039416 0E:9406: 0A        ASL
C - - - - - 0x039417 0E:9407: 26 03     ROL ram_0003
C - - - - - 0x039419 0E:9409: 85 04     STA ram_0004
C - - - - - 0x03941B 0E:940B: A5 00     LDA ram_0000
C - - - - - 0x03941D 0E:940D: A4 01     LDY ram_0001
C - - - - - 0x03941F 0E:940F: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x039422 0E:9412: A9 77     LDA #$77
C - - - - - 0x039424 0E:9414: 20 C1 94  JSR sub_94C1
C - - - - - 0x039427 0E:9417: 38        SEC
C - - - - - 0x039428 0E:9418: A5 01     LDA ram_0001
C - - - - - 0x03942A 0E:941A: 65 02     ADC ram_0002
C - - - - - 0x03942C 0E:941C: A8        TAY
C - - - - - 0x03942D 0E:941D: A5 00     LDA ram_0000
C - - - - - 0x03942F 0E:941F: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x039432 0E:9422: A9 78     LDA #$78
C - - - - - 0x039434 0E:9424: 20 C1 94  JSR sub_94C1
C - - - - - 0x039437 0E:9427: 18        CLC
C - - - - - 0x039438 0E:9428: A5 01     LDA ram_0001
C - - - - - 0x03943A 0E:942A: 65 04     ADC ram_0004
C - - - - - 0x03943C 0E:942C: 85 06     STA ram_0006
C - - - - - 0x03943E 0E:942E: A8        TAY
C - - - - - 0x03943F 0E:942F: A5 00     LDA ram_0000
C - - - - - 0x039441 0E:9431: 65 03     ADC ram_0003
C - - - - - 0x039443 0E:9433: 85 05     STA ram_0005
C - - - - - 0x039445 0E:9435: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x039448 0E:9438: A9 79     LDA #$79
C - - - - - 0x03944A 0E:943A: 20 C1 94  JSR sub_94C1
C - - - - - 0x03944D 0E:943D: 38        SEC
C - - - - - 0x03944E 0E:943E: A5 06     LDA ram_0006
C - - - - - 0x039450 0E:9440: 65 02     ADC ram_0002
C - - - - - 0x039452 0E:9442: A8        TAY
C - - - - - 0x039453 0E:9443: A5 05     LDA ram_0005
C - - - - - 0x039455 0E:9445: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x039458 0E:9448: A9 7A     LDA #$7A
C - - - - - 0x03945A 0E:944A: 20 C1 94  JSR sub_94C1
C - - - - - 0x03945D 0E:944D: A4 01     LDY ram_0001
C - - - - - 0x03945F 0E:944F: C8        INY
C - - - - - 0x039460 0E:9450: A5 00     LDA ram_0000
C - - - - - 0x039462 0E:9452: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x039465 0E:9455: A9 03     LDA #$03
C - - - - - 0x039467 0E:9457: 9D FD 02  STA ram_02FD,X
C - - - - - 0x03946A 0E:945A: A5 02     LDA ram_0002
C - - - - - 0x03946C 0E:945C: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x03946F 0E:945F: A9 7B     LDA #$7B
C - - - - - 0x039471 0E:9461: 20 C7 94  JSR sub_94C7
C - - - - - 0x039474 0E:9464: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x039477 0E:9467: A4 06     LDY ram_0006
C - - - - - 0x039479 0E:9469: C8        INY
C - - - - - 0x03947A 0E:946A: A5 05     LDA ram_0005
C - - - - - 0x03947C 0E:946C: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x03947F 0E:946F: A9 03     LDA #$03
C - - - - - 0x039481 0E:9471: 9D FD 02  STA ram_02FD,X
C - - - - - 0x039484 0E:9474: A5 02     LDA ram_0002
C - - - - - 0x039486 0E:9476: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x039489 0E:9479: A9 7C     LDA #$7C
C - - - - - 0x03948B 0E:947B: 20 C7 94  JSR sub_94C7
C - - - - - 0x03948E 0E:947E: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x039491 0E:9481: A5 01     LDA ram_0001
C - - - - - 0x039493 0E:9483: 18        CLC
C - - - - - 0x039494 0E:9484: 69 20     ADC #$20
C - - - - - 0x039496 0E:9486: 85 05     STA ram_0005
C - - - - - 0x039498 0E:9488: A8        TAY
C - - - - - 0x039499 0E:9489: A9 00     LDA #$00
C - - - - - 0x03949B 0E:948B: 65 00     ADC ram_0000
C - - - - - 0x03949D 0E:948D: 85 06     STA ram_0006
C - - - - - 0x03949F 0E:948F: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x0394A2 0E:9492: A9 05     LDA #$05
C - - - - - 0x0394A4 0E:9494: 9D FD 02  STA ram_02FD,X
C - - - - - 0x0394A7 0E:9497: A5 02     LDA ram_0002
C - - - - - 0x0394A9 0E:9499: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x0394AC 0E:949C: A9 7D     LDA #$7D
C - - - - - 0x0394AE 0E:949E: 20 C7 94  JSR sub_94C7
C - - - - - 0x0394B1 0E:94A1: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x0394B4 0E:94A4: 38        SEC
C - - - - - 0x0394B5 0E:94A5: A5 05     LDA ram_0005
C - - - - - 0x0394B7 0E:94A7: 65 02     ADC ram_0002
C - - - - - 0x0394B9 0E:94A9: A8        TAY
C - - - - - 0x0394BA 0E:94AA: A5 06     LDA ram_0006
C - - - - - 0x0394BC 0E:94AC: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x0394BF 0E:94AF: A9 05     LDA #$05
C - - - - - 0x0394C1 0E:94B1: 9D FD 02  STA ram_02FD,X
C - - - - - 0x0394C4 0E:94B4: A5 02     LDA ram_0002
C - - - - - 0x0394C6 0E:94B6: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x0394C9 0E:94B9: A9 7E     LDA #$7E
C - - - - - 0x0394CB 0E:94BB: 20 C7 94  JSR sub_94C7
C - - - - - 0x0394CE 0E:94BE: 4C 5D D2  JMP loc_0x03D26D



sub_94C1:
C - - - - - 0x0394D1 0E:94C1: 20 C7 94  JSR sub_94C7
C - - - - - 0x0394D4 0E:94C4: 4C 56 D2  JMP loc_0x03D266



sub_94C7:
C - - - - - 0x0394D7 0E:94C7: A4 18     LDY ram_0018
C - - - - - 0x0394D9 0E:94C9: D0 01     BNE bra_94CC_RTS
C - - - - - 0x0394DB 0E:94CB: 98        TYA
bra_94CC_RTS:
C - - - - - 0x0394DC 0E:94CC: 60        RTS



tbl_9533:
- D 0 - - - 0x039543 0E:9533: FE        .byte $FE   ; 
tbl_9534:
- D 0 - - - 0x039544 0E:9534: 03        .byte $03   ; 
- D 0 - - - 0x039545 0E:9535: FE        .byte $FE   ; 
- D 0 - - - 0x039546 0E:9536: FD        .byte $FD   ; 
- D 0 - - - 0x039547 0E:9537: 02        .byte $02   ; 
- D 0 - - - 0x039548 0E:9538: FD        .byte $FD   ; 
- D 0 - - - 0x039549 0E:9539: 02        .byte $02   ; 
- D 0 - - - 0x03954A 0E:953A: 03        .byte $03   ; 
- D 0 - - - 0x03954B 0E:953B: FE        .byte $FE   ; 
- D 0 - - - 0x03954C 0E:953C: FD        .byte $FD   ; 
- D 0 - - - 0x03954D 0E:953D: 02        .byte $02   ; 
- D 0 - - - 0x03954E 0E:953E: FD        .byte $FD   ; 



tbl_953F:
- D 0 - - - 0x03954F 0E:953F: 58        .byte $58   ; 
tbl_9540:
- D 0 - - - 0x039550 0E:9540: 00        .byte $00   ; 
tbl_9541:
- D 0 - - - 0x039551 0E:9541: 59        .byte $59   ; 
- D 0 - - - 0x039552 0E:9542: 5A        .byte $5A   ; 
- D 0 - - - 0x039553 0E:9543: 00        .byte $00   ; 
- D 0 - - - 0x039554 0E:9544: 5B        .byte $5B   ; 
- D 0 - - - 0x039555 0E:9545: 5C        .byte $5C   ; 
- D 0 - - - 0x039556 0E:9546: 00        .byte $00   ; 
- D 0 - - - 0x039557 0E:9547: 3E        .byte $3E   ; 
- D 0 - - - 0x039558 0E:9548: 5D        .byte $5D   ; 
- D 0 - - - 0x039559 0E:9549: 00        .byte $00   ; 
- D 0 - - - 0x03955A 0E:954A: 65        .byte $65   ; 
- D 0 - - - 0x03955B 0E:954B: 5E        .byte $5E   ; 
- D 0 - - - 0x03955C 0E:954C: 5F        .byte $5F   ; 
- D 0 - - - 0x03955D 0E:954D: 60        .byte $60   ; 
- D 0 - - - 0x03955E 0E:954E: 61        .byte $61   ; 
- D 0 - - - 0x03955F 0E:954F: 62        .byte $62   ; 
- D 0 - - - 0x039560 0E:9550: 63        .byte $63   ; 



tbl_9551:
- D 0 - - - 0x039561 0E:9551: 70        .byte $70   ; 00
- D 0 - - - 0x039562 0E:9552: 70        .byte $70   ; 01
- D 0 - - - 0x039563 0E:9553: 70        .byte $70   ; 02
- D 0 - - - 0x039564 0E:9554: 70        .byte $70   ; 03
- D 0 - - - 0x039565 0E:9555: 70        .byte $70   ; 04
- D 0 - - - 0x039566 0E:9556: 80        .byte $80   ; 05

tbl_9557:
- D 0 - - - 0x039567 0E:9557: 02        .byte $02   ; 00
- D 0 - - - 0x039568 0E:9558: 00        .byte $00   ; 01
- D 0 - - - 0x039569 0E:9559: 00        .byte $00   ; 02
- D 0 - - - 0x03956A 0E:955A: 02        .byte $02   ; 03
- D 0 - - - 0x03956B 0E:955B: 00        .byte $00   ; 04
- D 0 - - - 0x03956C 0E:955C: 00        .byte $00   ; 05

tbl_955D:
- D 0 - - - 0x03956D 0E:955D: 50        .byte $50   ; 00
- D 0 - - - 0x03956E 0E:955E: 60        .byte $60   ; 01
- D 0 - - - 0x03956F 0E:955F: B0        .byte $B0   ; 02
- D 0 - - - 0x039570 0E:9560: B0        .byte $B0   ; 03
- D 0 - - - 0x039571 0E:9561: 60        .byte $60   ; 04
- D 0 - - - 0x039572 0E:9562: A0        .byte $A0   ; 05



tbl_956D:
- D 0 - - - 0x03957D 0E:956D: 38        .byte $38   ; 
tbl_956E:
- D 0 - - - 0x03957E 0E:956E: 35        .byte $35   ; 
- D 0 - - - 0x03957F 0E:956F: 38        .byte $38   ; 
- D 0 - - - 0x039580 0E:9570: 45        .byte $45   ; 
- D 0 - - - 0x039581 0E:9571: 38        .byte $38   ; 
- D 0 - - - 0x039582 0E:9572: 4B        .byte $4B   ; 
- D 0 - - - 0x039583 0E:9573: 38        .byte $38   ; 
- D 0 - - - 0x039584 0E:9574: 4A        .byte $4A   ; 
- D 0 - - - 0x039585 0E:9575: 4C        .byte $4C   ; 
- D 0 - - - 0x039586 0E:9576: 4A        .byte $4A   ; 
- D 0 - - - 0x039587 0E:9577: 4C        .byte $4C   ; 
- D 0 - - - 0x039588 0E:9578: 4A        .byte $4A   ; 



tbl_9579:
- D 0 - - - 0x039589 0E:9579: 48        .byte $48   ; 00
- D 0 - - - 0x03958A 0E:957A: 4A        .byte $4A   ; 01
- D 0 - - - 0x03958B 0E:957B: 43        .byte $43   ; 02
- D 0 - - - 0x03958C 0E:957C: 46        .byte $46   ; 03
- D 0 - - - 0x03958D 0E:957D: 4C        .byte $4C   ; 04
- D 0 - - - 0x03958E 0E:957E: 49        .byte $49   ; 05



tbl_957F:
- D 0 - - - 0x03958F 0E:957F: 00        .byte $00   ; 00
- D 0 - - - 0x039590 0E:9580: 09        .byte $09   ; 01
- D 0 - - - 0x039591 0E:9581: 11        .byte $11   ; 02
- D 0 - - - 0x039592 0E:9582: 1F        .byte $1F   ; 03
- D 0 - - - 0x039593 0E:9583: 29        .byte $29   ; 04
- D 0 - - - 0x039594 0E:9584: 2F        .byte $2F   ; 05



tbl_9585:
- D 0 - - - 0x039595 0E:9585: 00        .byte $00   ; 
- D 0 - - - 0x039596 0E:9586: 04        .byte $04   ; 
- D 0 - - - 0x039597 0E:9587: 08        .byte $08   ; 
- D 0 - - - 0x039598 0E:9588: 2C        .byte $2C   ; 
- D 0 - - - 0x039599 0E:9589: 10        .byte $10   ; 
- D 0 - - - 0x03959A 0E:958A: 0C        .byte $0C   ; 
- D 0 - - - 0x03959B 0E:958B: 28        .byte $28   ; 
- D 0 - - - 0x03959C 0E:958C: 08        .byte $08   ; 
- D 0 - - - 0x03959D 0E:958D: FF        .byte $FF   ; 
- D 0 - - - 0x03959E 0E:958E: 0C        .byte $0C   ; 
- D 0 - - - 0x03959F 0E:958F: 10        .byte $10   ; 
- D 0 - - - 0x0395A0 0E:9590: 14        .byte $14   ; 
- D 0 - - - 0x0395A1 0E:9591: 18        .byte $18   ; 
- D 0 - - - 0x0395A2 0E:9592: 10        .byte $10   ; 
- D 0 - - - 0x0395A3 0E:9593: 04        .byte $04   ; 
- D 0 - - - 0x0395A4 0E:9594: 00        .byte $00   ; 
- D 0 - - - 0x0395A5 0E:9595: FF        .byte $FF   ; 
- D 0 - - - 0x0395A6 0E:9596: 1C        .byte $1C   ; 
- D 0 - - - 0x0395A7 0E:9597: 20        .byte $20   ; 
- D 0 - - - 0x0395A8 0E:9598: 30        .byte $30   ; 
- D 0 - - - 0x0395A9 0E:9599: 18        .byte $18   ; 
- D 0 - - - 0x0395AA 0E:959A: 10        .byte $10   ; 
- D 0 - - - 0x0395AB 0E:959B: 04        .byte $04   ; 
- D 0 - - - 0x0395AC 0E:959C: 00        .byte $00   ; 
- D 0 - - - 0x0395AD 0E:959D: 10        .byte $10   ; 
- D 0 - - - 0x0395AE 0E:959E: 2C        .byte $2C   ; 
- D 0 - - - 0x0395AF 0E:959F: 40        .byte $40   ; 
- D 0 - - - 0x0395B0 0E:95A0: 04        .byte $04   ; 
- D 0 - - - 0x0395B1 0E:95A1: 00        .byte $00   ; 
- D 0 - - - 0x0395B2 0E:95A2: 08        .byte $08   ; 
- D 0 - - - 0x0395B3 0E:95A3: FF        .byte $FF   ; 
- D 0 - - - 0x0395B4 0E:95A4: 28        .byte $28   ; 
- D 0 - - - 0x0395B5 0E:95A5: 08        .byte $08   ; 
- D 0 - - - 0x0395B6 0E:95A6: 2C        .byte $2C   ; 
- D 0 - - - 0x0395B7 0E:95A7: 10        .byte $10   ; 
- D 0 - - - 0x0395B8 0E:95A8: 3C        .byte $3C   ; 
- D 0 - - - 0x0395B9 0E:95A9: 04        .byte $04   ; 
- D 0 - - - 0x0395BA 0E:95AA: 00        .byte $00   ; 
- D 0 - - - 0x0395BB 0E:95AB: 00        .byte $00   ; 
- D 0 - - - 0x0395BC 0E:95AC: 08        .byte $08   ; 
- D 0 - - - 0x0395BD 0E:95AD: FF        .byte $FF   ; 
- D 0 - - - 0x0395BE 0E:95AE: 30        .byte $30   ; 
- D 0 - - - 0x0395BF 0E:95AF: 10        .byte $10   ; 
- D 0 - - - 0x0395C0 0E:95B0: 34        .byte $34   ; 
- D 0 - - - 0x0395C1 0E:95B1: 04        .byte $04   ; 
- D 0 - - - 0x0395C2 0E:95B2: 38        .byte $38   ; 
- D 0 - - - 0x0395C3 0E:95B3: FF        .byte $FF   ; 
- D 0 - - - 0x0395C4 0E:95B4: 18        .byte $18   ; 
- D 0 - - - 0x0395C5 0E:95B5: 08        .byte $08   ; 
- D 0 - - - 0x0395C6 0E:95B6: 3C        .byte $3C   ; 
- D 0 - - - 0x0395C7 0E:95B7: 18        .byte $18   ; 
- D 0 - - - 0x0395C8 0E:95B8: 04        .byte $04   ; 
- D 0 - - - 0x0395C9 0E:95B9: 10        .byte $10   ; 
- D 0 - - - 0x0395CA 0E:95BA: 28        .byte $28   ; 
- D 0 - - - 0x0395CB 0E:95BB: FF        .byte $FF   ; 



tbl_95BC:
- D 0 - - - 0x0395CC 0E:95BC: 02        .byte $02   ; 
- D 0 - - - 0x0395CD 0E:95BD: 00        .byte $00   ; 
- D 0 - - - 0x0395CE 0E:95BE: 12        .byte $12   ; 
- D 0 - - - 0x0395CF 0E:95BF: 13        .byte $13   ; 
- D 0 - - - 0x0395D0 0E:95C0: 04        .byte $04   ; 
- D 0 - - - 0x0395D1 0E:95C1: 05        .byte $05   ; 
- D 0 - - - 0x0395D2 0E:95C2: 14        .byte $14   ; 
- D 0 - - - 0x0395D3 0E:95C3: 15        .byte $15   ; 
- D 0 - - - 0x0395D4 0E:95C4: 06        .byte $06   ; 
- D 0 - - - 0x0395D5 0E:95C5: 07        .byte $07   ; 
- D 0 - - - 0x0395D6 0E:95C6: 16        .byte $16   ; 
- D 0 - - - 0x0395D7 0E:95C7: 17        .byte $17   ; 
- D 0 - - - 0x0395D8 0E:95C8: 04        .byte $04   ; 
- D 0 - - - 0x0395D9 0E:95C9: 2A        .byte $2A   ; 
- D 0 - - - 0x0395DA 0E:95CA: 3A        .byte $3A   ; 
- D 0 - - - 0x0395DB 0E:95CB: 3B        .byte $3B   ; 
- D 0 - - - 0x0395DC 0E:95CC: 08        .byte $08   ; 
- D 0 - - - 0x0395DD 0E:95CD: 09        .byte $09   ; 
- D 0 - - - 0x0395DE 0E:95CE: 18        .byte $18   ; 
- D 0 - - - 0x0395DF 0E:95CF: 19        .byte $19   ; 
- D 0 - - - 0x0395E0 0E:95D0: 04        .byte $04   ; 
- D 0 - - - 0x0395E1 0E:95D1: 2A        .byte $2A   ; 
- D 0 - - - 0x0395E2 0E:95D2: 3C        .byte $3C   ; 
- D 0 - - - 0x0395E3 0E:95D3: 2D        .byte $2D   ; 
- D 0 - - - 0x0395E4 0E:95D4: 0A        .byte $0A   ; 
- D 0 - - - 0x0395E5 0E:95D5: 0B        .byte $0B   ; 
- D 0 - - - 0x0395E6 0E:95D6: 1A        .byte $1A   ; 
- D 0 - - - 0x0395E7 0E:95D7: 1B        .byte $1B   ; 
- D 0 - - - 0x0395E8 0E:95D8: 0C        .byte $0C   ; 
- D 0 - - - 0x0395E9 0E:95D9: 0D        .byte $0D   ; 
- D 0 - - - 0x0395EA 0E:95DA: 1C        .byte $1C   ; 
- D 0 - - - 0x0395EB 0E:95DB: 1D        .byte $1D   ; 
- D 0 - - - 0x0395EC 0E:95DC: 2B        .byte $2B   ; 
- D 0 - - - 0x0395ED 0E:95DD: 2C        .byte $2C   ; 
- D 0 - - - 0x0395EE 0E:95DE: 38        .byte $38   ; 
- D 0 - - - 0x0395EF 0E:95DF: 39        .byte $39   ; 
- - - - - - 0x0395F0 0E:95E0: 20        .byte $20   ; 
- - - - - - 0x0395F1 0E:95E1: 21        .byte $21   ; 
- - - - - - 0x0395F2 0E:95E2: 30        .byte $30   ; 
- - - - - - 0x0395F3 0E:95E3: 31        .byte $31   ; 
- D 0 - - - 0x0395F4 0E:95E4: 22        .byte $22   ; 
- D 0 - - - 0x0395F5 0E:95E5: 23        .byte $23   ; 
- D 0 - - - 0x0395F6 0E:95E6: 32        .byte $32   ; 
- D 0 - - - 0x0395F7 0E:95E7: 33        .byte $33   ; 
- D 0 - - - 0x0395F8 0E:95E8: 24        .byte $24   ; 
- D 0 - - - 0x0395F9 0E:95E9: 25        .byte $25   ; 
- D 0 - - - 0x0395FA 0E:95EA: 34        .byte $34   ; 
- D 0 - - - 0x0395FB 0E:95EB: 35        .byte $35   ; 
- D 0 - - - 0x0395FC 0E:95EC: 06        .byte $06   ; 
- D 0 - - - 0x0395FD 0E:95ED: 3D        .byte $3D   ; 
- D 0 - - - 0x0395FE 0E:95EE: 16        .byte $16   ; 
- D 0 - - - 0x0395FF 0E:95EF: 2E        .byte $2E   ; 
- D 0 - - - 0x039600 0E:95F0: 0E        .byte $0E   ; 
- D 0 - - - 0x039601 0E:95F1: 0F        .byte $0F   ; 
- D 0 - - - 0x039602 0E:95F2: 1E        .byte $1E   ; 
- D 0 - - - 0x039603 0E:95F3: 1F        .byte $1F   ; 
- D 0 - - - 0x039604 0E:95F4: 26        .byte $26   ; 
- D 0 - - - 0x039605 0E:95F5: 27        .byte $27   ; 
- D 0 - - - 0x039606 0E:95F6: 36        .byte $36   ; 
- D 0 - - - 0x039607 0E:95F7: 37        .byte $37   ; 
- D 0 - - - 0x039608 0E:95F8: 28        .byte $28   ; 
- D 0 - - - 0x039609 0E:95F9: 29        .byte $29   ; 
- D 0 - - - 0x03960A 0E:95FA: 38        .byte $38   ; 
- D 0 - - - 0x03960B 0E:95FB: 39        .byte $39   ; 
- D 0 - - - 0x03960C 0E:95FC: 06        .byte $06   ; 
- D 0 - - - 0x03960D 0E:95FD: 3E        .byte $3E   ; 
- D 0 - - - 0x03960E 0E:95FE: 16        .byte $16   ; 
- D 0 - - - 0x03960F 0E:95FF: 2F        .byte $2F   ; 



.export sub_0x039610
sub_0x039610:
C - - - - - 0x039610 0E:9600: A5 21     LDA ram_0021
C - - - - - 0x039612 0E:9602: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x039615 0E:9605: 23 96     .word ofs_9623_00
- D 0 - I - 0x039617 0E:9607: 2B 96     .word ofs_962B_01
- D 0 - I - 0x039619 0E:9609: 9E 96     .word ofs_969E_02
- D 0 - I - 0x03961B 0E:960B: BA 96     .word ofs_96BA_03
- D 0 - I - 0x03961D 0E:960D: BF 96     .word ofs_96BF_04
- D 0 - I - 0x03961F 0E:960F: 19 97     .word ofs_9719_05
- D 0 - I - 0x039621 0E:9611: 3D 98     .word ofs_983D_06
- D 0 - I - 0x039623 0E:9613: 5D 98     .word ofs_985D_07
- D 0 - I - 0x039625 0E:9615: 6A 98     .word ofs_986A_08
- D 0 - I - 0x039627 0E:9617: 92 98     .word ofs_9892_09
- D 0 - I - 0x039629 0E:9619: AD 98     .word ofs_98AD_0A
- D 0 - I - 0x03962B 0E:961B: CE 98     .word ofs_98CE_0B
- D 0 - I - 0x03962D 0E:961D: FD 98     .word ofs_98FD_0C
- D 0 - I - 0x03962F 0E:961F: 1C 99     .word ofs_991C_0D
- D 0 - I - 0x039631 0E:9621: 35 99     .word ofs_9935_0E



ofs_9623_00:
C - - J - - 0x039633 0E:9623: E6 21     INC ram_0021
C - - - - - 0x039635 0E:9625: 20 C2 F6  JSR sub_0x03F6D2
C - - - - - 0x039638 0E:9628: 4C 2E E1  JMP loc_0x03E13E



ofs_962B_01:
C - - J - - 0x03963B 0E:962B: 20 C1 F7  JSR sub_0x03F7D1
C - - - - - 0x03963E 0E:962E: A9 41     LDA #$41
C - - - - - 0x039640 0E:9630: 20 90 F6  JSR sub_0x03F6A0
C - - - - - 0x039643 0E:9633: A9 0B     LDA #$0B
C - - - - - 0x039645 0E:9635: 20 14 F8  JSR sub_0x03F824
C - - - - - 0x039648 0E:9638: A5 A2     LDA ram_option_fighter
C - - - - - 0x03964A 0E:963A: 8D 50 05  STA ram_id_object
C - - - - - 0x03964D 0E:963D: A9 06     LDA #$06
C - - - - - 0x03964F 0E:963F: 8D 51 05  STA ram_id_object + 1
C - - - - - 0x039652 0E:9642: 85 A3     STA ram_option_fighter + 1
C - - - - - 0x039654 0E:9644: A0 00     LDY #$00
C - - - - - 0x039656 0E:9646: 20 5C 96  JSR sub_965C
C - - - - - 0x039659 0E:9649: AC 50 05  LDY ram_id_object
C - - - - - 0x03965C 0E:964C: B9 57 99  LDA tbl_9957,Y
C - - - - - 0x03965F 0E:964F: 8D 54 06  STA ram_0654
C - - - - - 0x039662 0E:9652: 8D 60 06  STA ram_0660
C - - - - - 0x039665 0E:9655: 8D 64 06  STA ram_0664
bra_9658_RTS:
C - - - - - 0x039668 0E:9658: 60        RTS



sub_965C:
C - - - - - 0x03966C 0E:965C: 84 18     STY ram_0018
C - - - - - 0x03966E 0E:965E: B9 4B 99  LDA tbl_994B,Y
C - - - - - 0x039671 0E:9661: 8D 00 04  STA ram_anim_object
C - - - - - 0x039674 0E:9664: A9 70     LDA #$70
C - - - - - 0x039676 0E:9666: 8D 40 04  STA ram_X_pos_hi_object
C - - - - - 0x039679 0E:9669: A9 1F     LDA #$1F
C - - - - - 0x03967B 0E:966B: 8D 10 04  STA ram_Y_pos_hi_object
C - - - - - 0x03967E 0E:966E: B9 51 99  LDA tbl_9951,Y
C - - - - - 0x039681 0E:9671: 85 B6     STA ram_00B6
C - - - - - 0x039683 0E:9673: BE 4D 99  LDX tbl_994D,Y
C - - - - - 0x039686 0E:9676: 20 44 F0  JSR sub_0x03F054
C - - - - - 0x039689 0E:9679: A6 18     LDX ram_0018
C - - - - - 0x03968B 0E:967B: BC 4F 99  LDY tbl_994F,X
C - - - - - 0x03968E 0E:967E: 20 1A DC  JSR sub_0x03DC2A
C - - - - - 0x039691 0E:9681: A0 08     LDY #$08
C - - - - - 0x039693 0E:9683: 20 04 DC  JSR sub_0x03DC14
C - - - - - 0x039696 0E:9686: A9 52     LDA #$52
C - - - - - 0x039698 0E:9688: 85 36     STA ram_0036
C - - - - - 0x03969A 0E:968A: E6 21     INC ram_0021
C - - - - - 0x03969C 0E:968C: 8A        TXA
C - - - - - 0x03969D 0E:968D: 0A        ASL
C - - - - - 0x03969E 0E:968E: A8        TAY
C - - - - - 0x03969F 0E:968F: B9 54 99  LDA tbl_9954,Y
C - - - - - 0x0396A2 0E:9692: 48        PHA
C - - - - - 0x0396A3 0E:9693: B9 53 99  LDA tbl_9953,Y
C - - - - - 0x0396A6 0E:9696: A8        TAY
C - - - - - 0x0396A7 0E:9697: 68        PLA
C - - - - - 0x0396A8 0E:9698: 20 94 D3  JSR sub_0x03D3A4
C - - - - - 0x0396AB 0E:969B: 4C 41 E1  JMP loc_0x03E151



ofs_969E_02:
C - - J - - 0x0396AE 0E:969E: 20 36 9B  JSR sub_9B36
C - - - - - 0x0396B1 0E:96A1: AD 31 06  LDA ram_0631
C - - - - - 0x0396B4 0E:96A4: D0 B2     BNE bra_9658_RTS
C - - - - - 0x0396B6 0E:96A6: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x0396B9 0E:96A9: F0 05     BEQ bra_96B0_easy
C - - - - - 0x0396BB 0E:96AB: E6 21     INC ram_0021
C - - - - - 0x0396BD 0E:96AD: 4C 2E E1  JMP loc_0x03E13E
bra_96B0_easy:
C - - - - - 0x0396C0 0E:96B0: A9 0D     LDA #$0D
C - - - - - 0x0396C2 0E:96B2: 85 21     STA ram_0021
C - - - - - 0x0396C4 0E:96B4: A9 C0     LDA #$C0
C - - - - - 0x0396C6 0E:96B6: 8D 60 05  STA ram_0560
C - - - - - 0x0396C9 0E:96B9: 60        RTS



ofs_96BA_03:
C - - J - - 0x0396CA 0E:96BA: E6 21     INC ram_0021
C - - - - - 0x0396CC 0E:96BC: 4C 42 F0  JMP loc_0x03F052



ofs_96BF_04:
C - - J - - 0x0396CF 0E:96BF: E6 21     INC ram_0021
C - - - - - 0x0396D1 0E:96C1: A9 02     LDA #$02
C - - - - - 0x0396D3 0E:96C3: 20 14 F8  JSR sub_0x03F824
C - - - - - 0x0396D6 0E:96C6: A2 08     LDX #$08
C - - - - - 0x0396D8 0E:96C8: 20 44 F0  JSR sub_0x03F054
C - - - - - 0x0396DB 0E:96CB: A0 01     LDY #$01
C - - - - - 0x0396DD 0E:96CD: A9 02     LDA #$02
C - - - - - 0x0396DF 0E:96CF: 20 94 D3  JSR sub_0x03D3A4
C - - - - - 0x0396E2 0E:96D2: A2 04     LDX #$04
C - - - - - 0x0396E4 0E:96D4: AD 50 05  LDA ram_id_object
C - - - - - 0x0396E7 0E:96D7: 20 2A E3  JSR sub_0x03E33A
C - - - - - 0x0396EA 0E:96DA: A2 01     LDX #$01
bra_96DC:
C - - - - - 0x0396EC 0E:96DC: BD 13 97  LDA tbl_9713,X
C - - - - - 0x0396EF 0E:96DF: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x0396F2 0E:96E2: A9 B0     LDA #$B0
C - - - - - 0x0396F4 0E:96E4: 9D 10 04  STA ram_Y_pos_hi_object,X
C - - - - - 0x0396F7 0E:96E7: BD 15 97  LDA tbl_9715,X
C - - - - - 0x0396FA 0E:96EA: 9D 40 04  STA ram_X_pos_hi_object,X
C - - - - - 0x0396FD 0E:96ED: BD 17 97  LDA tbl_9717,X
C - - - - - 0x039700 0E:96F0: 9D 10 05  STA ram_turn_side_object,X
C - - - - - 0x039703 0E:96F3: CA        DEX
C - - - - - 0x039704 0E:96F4: 10 E6     BPL bra_96DC
C - - - - - 0x039706 0E:96F6: 20 14 F7  JSR sub_0x03F724
C - - - - - 0x039709 0E:96F9: A9 06     LDA #$06
C - - - - - 0x03970B 0E:96FB: 8D D1 05  STA ram_05D1
C - - - - - 0x03970E 0E:96FE: A9 30     LDA #$30
C - - - - - 0x039710 0E:9700: 8D 61 05  STA ram_0561
C - - - - - 0x039713 0E:9703: A9 81     LDA #$81
C - - - - - 0x039715 0E:9705: 8D 01 05  STA ram_0501
C - - - - - 0x039718 0E:9708: A9 5C     LDA #$5C
C - - - - - 0x03971A 0E:970A: 85 4E     STA ram_004E
C - - - - - 0x03971C 0E:970C: A9 5E     LDA #$5E
C - - - - - 0x03971E 0E:970E: 85 4F     STA ram_004F
C - - - - - 0x039720 0E:9710: 4C 41 E1  JMP loc_0x03E151



tbl_9713:
- D 0 - - - 0x039723 0E:9713: 80        .byte $80   ; 00
- D 0 - - - 0x039724 0E:9714: A7        .byte $A7   ; 01

tbl_9715:
- D 0 - - - 0x039725 0E:9715: 70        .byte $70   ; 00
- D 0 - - - 0x039726 0E:9716: B0        .byte $B0   ; 01

tbl_9717:
- D 0 - - - 0x039727 0E:9717: 00        .byte $00   ; 00
- D 0 - - - 0x039728 0E:9718: 40        .byte $40   ; 01



ofs_9719_05:
C - - J - - 0x039729 0E:9719: A2 00     LDX #$00
C - - - - - 0x03972B 0E:971B: A0 19     LDY #$19
C - - - - - 0x03972D 0E:971D: 20 7C D0  JSR sub_0x03D08C
C - - - - - 0x039730 0E:9720: E8        INX
C - - - - - 0x039731 0E:9721: AD 31 05  LDA ram_0531
C - - - - - 0x039734 0E:9724: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x039737 0E:9727: 3D 97     .word ofs_973D_00
- D 0 - I - 0x039739 0E:9729: 45 97     .word ofs_9745_01
- D 0 - I - 0x03973B 0E:972B: 5F 97     .word ofs_975F_02
- D 0 - I - 0x03973D 0E:972D: 8F 97     .word ofs_978F_03
- D 0 - I - 0x03973F 0E:972F: B2 97     .word ofs_97B2_04
- D 0 - I - 0x039741 0E:9731: C6 97     .word ofs_97C6_05
- D 0 - I - 0x039743 0E:9733: F6 97     .word ofs_97F6_06
- D 0 - I - 0x039745 0E:9735: 10 98     .word ofs_9810_07
- D 0 - I - 0x039747 0E:9737: 25 98     .word ofs_9825_08
- D 0 - I - 0x039749 0E:9739: 25 98     .word ofs_9825_09
- D 0 - I - 0x03974B 0E:973B: 38 98     .word ofs_9838_0A



ofs_973D_00:
C - - J - - 0x03974D 0E:973D: CE 61 05  DEC ram_0561
C - - - - - 0x039750 0E:9740: D0 6F     BNE bra_97B1_RTS
C - - - - - 0x039752 0E:9742: EE 31 05  INC ram_0531
ofs_9745_01:
C - - - - - 0x039755 0E:9745: A0 0C     LDY #$0C
C - - - - - 0x039757 0E:9747: 20 4F DF  JSR sub_0x03DF5F
C - - - - - 0x03975A 0E:974A: AD C1 05  LDA ram_05C1
C - - - - - 0x03975D 0E:974D: 30 03     BMI bra_9752
bra_974F:
C - - - - - 0x03975F 0E:974F: 4C 14 F7  JMP loc_0x03F724
bra_9752:
C - - - - - 0x039762 0E:9752: EE 31 05  INC ram_0531
C - - - - - 0x039765 0E:9755: A9 00     LDA #$00
C - - - - - 0x039767 0E:9757: 8D 11 05  STA ram_0511
C - - - - - 0x03976A 0E:975A: A9 41     LDA #$41
C - - - - - 0x03976C 0E:975C: 4C E0 DC  JMP loc_0x03DCF0



ofs_975F_02:
C - - J - - 0x03976F 0E:975F: 18        CLC
C - - - - - 0x039770 0E:9760: A9 04     LDA #$04
C - - - - - 0x039772 0E:9762: 6D 91 04  ADC ram_X_spd_lo_object + 1
C - - - - - 0x039775 0E:9765: 8D 91 04  STA ram_X_spd_lo_object + 1
C - - - - - 0x039778 0E:9768: A9 00     LDA #$00
C - - - - - 0x03977A 0E:976A: 6D 81 04  ADC ram_X_spd_hi_object + 1
C - - - - - 0x03977D 0E:976D: 8D 81 04  STA ram_X_spd_hi_object + 1
C - - - - - 0x039780 0E:9770: A0 0E     LDY #$0E
C - - - - - 0x039782 0E:9772: 20 7C D0  JSR sub_0x03D08C
C - - - - - 0x039785 0E:9775: A0 0E     LDY #$0E
C - - - - - 0x039787 0E:9777: 20 7C D0  JSR sub_0x03D08C
C - - - - - 0x03978A 0E:977A: 20 65 DB  JSR sub_0x03DB75
C - - - - - 0x03978D 0E:977D: AD 31 04  LDA ram_0431
C - - - - - 0x039790 0E:9780: F0 CD     BEQ bra_974F
C - - - - - 0x039792 0E:9782: EE 31 05  INC ram_0531
C - - - - - 0x039795 0E:9785: A9 60     LDA #$60
C - - - - - 0x039797 0E:9787: 8D 61 05  STA ram_0561
C - - - - - 0x03979A 0E:978A: A9 00     LDA #$00
C - - - - - 0x03979C 0E:978C: 8D 01 05  STA ram_0501
ofs_978F_03:
C - - - - - 0x03979F 0E:978F: CE 61 05  DEC ram_0561
C - - - - - 0x0397A2 0E:9792: D0 1D     BNE bra_97B1_RTS
C - - - - - 0x0397A4 0E:9794: EE 31 05  INC ram_0531
C - - - - - 0x0397A7 0E:9797: A9 00     LDA #$00
C - - - - - 0x0397A9 0E:9799: 8D 41 04  STA ram_X_pos_hi_object + 1
C - - - - - 0x0397AC 0E:979C: 8D 31 04  STA ram_0431
C - - - - - 0x0397AF 0E:979F: A9 A0     LDA #$A0
C - - - - - 0x0397B1 0E:97A1: 20 E0 DC  JSR sub_0x03DCF0
C - - - - - 0x0397B4 0E:97A4: A9 38     LDA #$38
C - - - - - 0x0397B6 0E:97A6: 8D 11 04  STA ram_Y_pos_hi_object + 1
C - - - - - 0x0397B9 0E:97A9: 8D 61 05  STA ram_0561
C - - - - - 0x0397BC 0E:97AC: A9 13     LDA #$13
C - - - - - 0x0397BE 0E:97AE: 8D 01 04  STA ram_anim_object + 1
bra_97B1_RTS:
C - - - - - 0x0397C1 0E:97B1: 60        RTS



ofs_97B2_04:
C - - J - - 0x0397C2 0E:97B2: 20 65 DB  JSR sub_0x03DB75
C - - - - - 0x0397C5 0E:97B5: AD 41 04  LDA ram_X_pos_hi_object + 1
C - - - - - 0x0397C8 0E:97B8: C9 A0     CMP #$A0
C - - - - - 0x0397CA 0E:97BA: B0 50     BCS bra_980C
bra_97BC:
C - - - - - 0x0397CC 0E:97BC: A9 42     LDA #$42
C - - - - - 0x0397CE 0E:97BE: A0 04     LDY #$04
C - - - - - 0x0397D0 0E:97C0: 20 0D DF  JSR sub_0x03DF1D
C - - - - - 0x0397D3 0E:97C3: 4C 4C DB  JMP loc_0x03DB5C



ofs_97C6_05:
C - - J - - 0x0397D6 0E:97C6: CE 61 05  DEC ram_0561
C - - - - - 0x0397D9 0E:97C9: D0 F1     BNE bra_97BC
C - - - - - 0x0397DB 0E:97CB: EE 31 05  INC ram_0531
C - - - - - 0x0397DE 0E:97CE: A0 0E     LDY #$0E
C - - - - - 0x0397E0 0E:97D0: 20 0F DC  JSR sub_0x03DC1F
C - - - - - 0x0397E3 0E:97D3: A2 05     LDX #$05
C - - - - - 0x0397E5 0E:97D5: A9 02     LDA #$02
C - - - - - 0x0397E7 0E:97D7: 20 46 D3  JSR sub_0x03D356
C - - - - - 0x0397EA 0E:97DA: A2 06     LDX #$06
C - - - - - 0x0397EC 0E:97DC: A9 3B     LDA #$3B
C - - - - - 0x0397EE 0E:97DE: 20 46 D3  JSR sub_0x03D356
C - - - - - 0x0397F1 0E:97E1: A9 2B     LDA #$2B
C - - - - - 0x0397F3 0E:97E3: 8D 01 04  STA ram_anim_object + 1
C - - - - - 0x0397F6 0E:97E6: A9 40     LDA #$40
C - - - - - 0x0397F8 0E:97E8: 8D 11 05  STA ram_0511
C - - - - - 0x0397FB 0E:97EB: A9 1D     LDA #$1D
C - - - - - 0x0397FD 0E:97ED: 20 90 F6  JSR sub_0x03F6A0
bra_97F0:
C - - - - - 0x039800 0E:97F0: A9 06     LDA #$06
C - - - - - 0x039802 0E:97F2: 8D C1 05  STA ram_05C1
C - - - - - 0x039805 0E:97F5: 60        RTS



ofs_97F6_06:
C - - J - - 0x039806 0E:97F6: CE C1 05  DEC ram_05C1
C - - - - - 0x039809 0E:97F9: 10 B6     BPL bra_97B1_RTS
C - - - - - 0x03980B 0E:97FB: AD 01 04  LDA ram_anim_object + 1
C - - - - - 0x03980E 0E:97FE: C9 2F     CMP #$2F
C - - - - - 0x039810 0E:9800: B0 05     BCS bra_9807
C - - - - - 0x039812 0E:9802: EE 01 04  INC ram_anim_object + 1
C - - - - - 0x039815 0E:9805: D0 E9     BNE bra_97F0
bra_9807:
C - - - - - 0x039817 0E:9807: A9 28     LDA #$28
C - - - - - 0x039819 0E:9809: 8D 01 04  STA ram_anim_object + 1
bra_980C:
C - - - - - 0x03981C 0E:980C: EE 31 05  INC ram_0531
C - - - - - 0x03981F 0E:980F: 60        RTS



ofs_9810_07:
C - - J - - 0x039820 0E:9810: 20 4C DB  JSR sub_0x03DB5C
C - - - - - 0x039823 0E:9813: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x039826 0E:9816: 90 99     BCC bra_97B1_RTS
C - - - - - 0x039828 0E:9818: EE 31 05  INC ram_0531
C - - - - - 0x03982B 0E:981B: A9 20     LDA #$20
C - - - - - 0x03982D 0E:981D: 8D 61 05  STA ram_0561
C - - - - - 0x039830 0E:9820: A9 29     LDA #$29
C - - - - - 0x039832 0E:9822: 8D 01 04  STA ram_anim_object + 1
ofs_9825_08:
ofs_9825_09:
C - - - - - 0x039835 0E:9825: CE 61 05  DEC ram_0561
C - - - - - 0x039838 0E:9828: D0 87     BNE bra_97B1_RTS
C - - - - - 0x03983A 0E:982A: A9 60     LDA #$60
C - - - - - 0x03983C 0E:982C: 8D 61 05  STA ram_0561
C - - - - - 0x03983F 0E:982F: EE 31 05  INC ram_0531
C - - - - - 0x039842 0E:9832: A9 2A     LDA #$2A
C - - - - - 0x039844 0E:9834: 8D 01 04  STA ram_anim_object + 1
C - - - - - 0x039847 0E:9837: 60        RTS



ofs_9838_0A:
C - - J - - 0x039848 0E:9838: E6 21     INC ram_0021
C - - - - - 0x03984A 0E:983A: 4C 2E E1  JMP loc_0x03E13E



ofs_983D_06:
C - - J - - 0x03984D 0E:983D: A2 2E     LDX #$2E
C - - - - - 0x03984F 0E:983F: 20 44 F0  JSR sub_0x03F054
C - - - - - 0x039852 0E:9842: 20 BE DA  JSR sub_0x03DACE
C - - - - - 0x039855 0E:9845: E6 21     INC ram_0021
C - - - - - 0x039857 0E:9847: A9 0B     LDA #$0B
C - - - - - 0x039859 0E:9849: 20 14 F8  JSR sub_0x03F824
C - - - - - 0x03985C 0E:984C: A0 1C     LDY #$1C
C - - - - - 0x03985E 0E:984E: 20 1A DC  JSR sub_0x03DC2A
C - - - - - 0x039861 0E:9851: A9 04     LDA #$04
C - - - - - 0x039863 0E:9853: 85 B6     STA ram_00B6
C - - - - - 0x039865 0E:9855: A9 1A     LDA #$1A
C - - - - - 0x039867 0E:9857: 20 B0 D3  JSR sub_0x03D3C0
C - - - - - 0x03986A 0E:985A: 4C 41 E1  JMP loc_0x03E151



ofs_985D_07:
C - - J - - 0x03986D 0E:985D: 20 36 9B  JSR sub_9B36
C - - - - - 0x039870 0E:9860: AD 31 06  LDA ram_0631
C - - - - - 0x039873 0E:9863: D0 2C     BNE bra_9891_RTS
C - - - - - 0x039875 0E:9865: E6 21     INC ram_0021
C - - - - - 0x039877 0E:9867: 4C 2E E1  JMP loc_0x03E13E



ofs_986A_08:
C - - J - - 0x03987A 0E:986A: A9 90     LDA #$90
C - - - - - 0x03987C 0E:986C: 8D 60 05  STA ram_0560
C - - - - - 0x03987F 0E:986F: A0 01     LDY #$01
C - - - - - 0x039881 0E:9871: 20 5C 96  JSR sub_965C
C - - - - - 0x039884 0E:9874: A5 A2     LDA ram_option_fighter
C - - - - - 0x039886 0E:9876: 0A        ASL
C - - - - - 0x039887 0E:9877: 0A        ASL
C - - - - - 0x039888 0E:9878: A8        TAY
C - - - - - 0x039889 0E:9879: B9 5B 99  LDA tbl_995B,Y
C - - - - - 0x03988C 0E:987C: 8D 60 06  STA ram_0660
C - - - - - 0x03988F 0E:987F: B9 5C 99  LDA tbl_995B + 1,Y
C - - - - - 0x039892 0E:9882: 8D 64 06  STA ram_0664
C - - - - - 0x039895 0E:9885: B9 5D 99  LDA tbl_995B + 2,Y
C - - - - - 0x039898 0E:9888: 8D 68 06  STA ram_0668
C - - - - - 0x03989B 0E:988B: B9 5E 99  LDA tbl_995B + 3,Y
C - - - - - 0x03989E 0E:988E: 8D 6C 06  STA ram_066C
bra_9891_RTS:
C - - - - - 0x0398A1 0E:9891: 60        RTS



ofs_9892_09:
C - - J - - 0x0398A2 0E:9892: A5 22     LDA ram_frame_counter
C - - - - - 0x0398A4 0E:9894: 29 03     AND #$03
C - - - - - 0x0398A6 0E:9896: D0 F9     BNE bra_9891_RTS
C - - - - - 0x0398A8 0E:9898: CE 60 05  DEC ram_0560
C - - - - - 0x0398AB 0E:989B: D0 F4     BNE bra_9891_RTS
C - - - - - 0x0398AD 0E:989D: 20 A4 A5  LDA ram_option_difficulty
                                        CMP #$03
C - - - - - 0x0398B1 0E:98A1: 90 05     BCC bra_98A8
C - - - - - 0x0398B3 0E:98A3: E6 21     INC ram_0021
C - - - - - 0x0398B5 0E:98A5: 4C 2E E1  JMP loc_0x03E13E
bra_98A8:
C - - - - - 0x0398B8 0E:98A8: A9 0E     LDA #$0E
C - - - - - 0x0398BA 0E:98AA: 85 21     STA ram_0021
C - - - - - 0x0398BC 0E:98AC: 60        RTS



ofs_98AD_0A:
C - - J - - 0x0398BD 0E:98AD: 20 90 FC  JSR sub_0x03FCA0
C - - - - - 0x0398C0 0E:98B0: 20 88 FB  JSR sub_0x03FB98
C - - - - - 0x0398C3 0E:98B3: 20 3C F0  JSR sub_0x03F04C
C - - - - - 0x0398C6 0E:98B6: A9 00     LDA #$00
C - - - - - 0x0398C8 0E:98B8: A8        TAY
C - - - - - 0x0398C9 0E:98B9: 20 94 D3  JSR sub_0x03D3A4
C - - - - - 0x0398CC 0E:98BC: A9 0B     LDA #$0B
C - - - - - 0x0398CE 0E:98BE: 85 21     STA ram_0021
C - - - - - 0x0398D0 0E:98C0: 20 25 DC  JSR sub_0x03DC35
C - - - - - 0x0398D3 0E:98C3: A9 42     LDA #$42
C - - - - - 0x0398D5 0E:98C5: 20 90 F6  JSR sub_0x03F6A0
sub_98C8:
C - - - - - 0x0398D8 0E:98C8: A9 60     LDA #$60
C - - - - - 0x0398DA 0E:98CA: 8D 60 05  STA ram_0560
bra_98CD_RTS:
C - - - - - 0x0398DD 0E:98CD: 60        RTS



ofs_98CE_0B:
C - - J - - 0x0398DE 0E:98CE: 20 E1 98  JSR sub_98E1
C - - - - - 0x0398E1 0E:98D1: A5 22     LDA ram_frame_counter
C - - - - - 0x0398E3 0E:98D3: 4A        LSR
C - - - - - 0x0398E4 0E:98D4: 90 F7     BCC bra_98CD_RTS
C - - - - - 0x0398E6 0E:98D6: CE 60 05  DEC ram_0560
C - - - - - 0x0398E9 0E:98D9: D0 F2     BNE bra_98CD_RTS
C - - - - - 0x0398EB 0E:98DB: 20 C8 98  JSR sub_98C8
C - - - - - 0x0398EE 0E:98DE: 4C 6B 99  JMP loc_996B



bra_98E1:
sub_98E1:
C - - - - - 0x0398F1 0E:98E1: 18        CLC
C - - - - - 0x0398F2 0E:98E2: AD A0 04  LDA ram_04A0
C - - - - - 0x0398F5 0E:98E5: 69 30     ADC #$30
C - - - - - 0x0398F7 0E:98E7: 8D A0 04  STA ram_04A0
C - - - - - 0x0398FA 0E:98EA: A5 FC     LDA ram_00FC
C - - - - - 0x0398FC 0E:98EC: 69 00     ADC #$00
C - - - - - 0x0398FE 0E:98EE: C9 F0     CMP #$F0
C - - - - - 0x039900 0E:98F0: 90 08     BCC bra_98FA
C - - - - - 0x039902 0E:98F2: A5 FF     LDA ram_00FF
C - - - - - 0x039904 0E:98F4: 49 02     EOR #$02
C - - - - - 0x039906 0E:98F6: 85 FF     STA ram_00FF
C - - - - - 0x039908 0E:98F8: A9 00     LDA #$00
bra_98FA:
C - - - - - 0x03990A 0E:98FA: 85 FC     STA ram_00FC
bra_98FC_RTS:
C - - - - - 0x03990C 0E:98FC: 60        RTS



ofs_98FD_0C:
C - - J - - 0x03990D 0E:98FD: AD 60 05  LDA ram_0560
C - - - - - 0x039910 0E:9900: F0 0B     BEQ bra_990D
C - - - - - 0x039912 0E:9902: A5 22     LDA ram_frame_counter
C - - - - - 0x039914 0E:9904: 29 03     AND #$03
C - - - - - 0x039916 0E:9906: D0 D9     BNE bra_98E1
C - - - - - 0x039918 0E:9908: CE 60 05  DEC ram_0560
C - - - - - 0x03991B 0E:990B: D0 D4     BNE bra_98E1
bra_990D:
C - - - - - 0x03991D 0E:990D: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03991F 0E:990F: 29 10     AND #con_btn_Start
C - - - - - 0x039921 0E:9911: F0 BA     BEQ bra_98CD_RTS
C - - - - - 0x039923 0E:9913: A5 FF     LDA ram_00FF
C - - - - - 0x039925 0E:9915: 29 FC     AND #$FC
C - - - - - 0x039927 0E:9917: 85 FF     STA ram_00FF
C - - - - - 0x039929 0E:9919: 4C CD F5  JMP loc_0x03F5DD



ofs_991C_0D:
C - - J - - 0x03992C 0E:991C: AD 60 05  LDA ram_0560
C - - - - - 0x03992F 0E:991F: F0 EC     BEQ bra_990D
C - - - - - 0x039931 0E:9921: A5 22     LDA ram_frame_counter
C - - - - - 0x039933 0E:9923: 4A        LSR
C - - - - - 0x039934 0E:9924: 90 D6     BCC bra_98FC_RTS
C - - - - - 0x039936 0E:9926: CE 60 05  DEC ram_0560
C - - - - - 0x039939 0E:9929: AD 60 05  LDA ram_0560
C - - - - - 0x03993C 0E:992C: C9 20     CMP #$20
C - - - - - 0x03993E 0E:992E: D0 CC     BNE bra_98FC_RTS
C - - - - - 0x039940 0E:9930: A9 5B     LDA #$5B
C - - - - - 0x039942 0E:9932: 4C 90 F6  JMP loc_0x03F6A0



ofs_9935_0E:
C - - J - - 0x039945 0E:9935: A9 07     LDA #$07
C - - - - - 0x039947 0E:9937: 85 B6     STA ram_00B6
C - - - - - 0x039949 0E:9939: 20 36 9B  JSR sub_9B36
C - - - - - 0x03994C 0E:993C: AD 31 06  LDA ram_0631
C - - - - - 0x03994F 0E:993F: D0 BB     BNE bra_98FC_RTS
C - - - - - 0x039951 0E:9941: A9 40     LDA #$40
C - - - - - 0x039953 0E:9943: 8D 60 05  STA ram_0560
C - - - - - 0x039956 0E:9946: A9 0D     LDA #$0D
C - - - - - 0x039958 0E:9948: 85 21     STA ram_0021
C - - - - - 0x03995A 0E:994A: 60        RTS



tbl_994B:
- D 0 - - - 0x03995B 0E:994B: 23        .byte $23   ; 00
- D 0 - - - 0x03995C 0E:994C: 24        .byte $24   ; 01

tbl_994D:
- D 0 - - - 0x03995D 0E:994D: 22        .byte $22   ; 00
- D 0 - - - 0x03995E 0E:994E: 24        .byte $24   ; 01

tbl_994F:
- D 0 - - - 0x03995F 0E:994F: 0A        .byte $0A   ; 00
- D 0 - - - 0x039960 0E:9950: 0C        .byte $0C   ; 01

tbl_9951:
- D 0 - - - 0x039961 0E:9951: 03        .byte $03   ; 00
- D 0 - - - 0x039962 0E:9952: 04        .byte $04   ; 01



tbl_9953:
- D 0 - - - 0x039963 0E:9953: 0C        .byte $0C   ; 
tbl_9954:
- D 0 - - - 0x039964 0E:9954: 0D        .byte $0D   ; 
- D 0 - - - 0x039965 0E:9955: 0E        .byte $0E   ; 
- D 0 - - - 0x039966 0E:9956: 0F        .byte $0F   ; 



tbl_9957:
- D 0 - - - 0x039967 0E:9957: 11        .byte $11   ; 00
- D 0 - - - 0x039968 0E:9958: 16        .byte $16   ; 01
- D 0 - - - 0x039969 0E:9959: 27        .byte $27   ; 02
- D 0 - - - 0x03996A 0E:995A: 14        .byte $14   ; 03



tbl_995B:
- D 0 - - - 0x03996B 0E:995B: 14        .byte $14, $11, $16, $27   ; 00
- D 0 - - - 0x03996F 0E:995F: 11        .byte $11, $16, $27, $14   ; 01
- D 0 - - - 0x039973 0E:9963: 16        .byte $16, $27, $14, $11   ; 02
- D 0 - - - 0x039977 0E:9967: 27        .byte $27, $14, $11, $16   ; 03



loc_996B:
C D 0 - - - 0x03997B 0E:996B: AD E0 99  LDA #< tbl_99E2
C - - - - - 0x03997E 0E:996E: 85 00     STA ram_0000
C - - - - - 0x039980 0E:9970: AD E1 99  LDA #> tbl_99E2
C - - - - - 0x039983 0E:9973: 85 01     STA ram_0001
C - - - - - 0x039985 0E:9975: A0 00     LDY #$00
C - - - - - 0x039987 0E:9977: AE 30 05  LDX ram_0530
C - - - - - 0x03998A 0E:997A: F0 0C     BEQ bra_9988
bra_997C_loop:
C - - - - - 0x03998C 0E:997C: B1 00     LDA (ram_0000),Y
C - - - - - 0x03998E 0E:997E: 20 B2 99  JSR sub_99B2
C - - - - - 0x039991 0E:9981: C9 FF     CMP #$FF
C - - - - - 0x039993 0E:9983: D0 F7     BNE bra_997C_loop
C - - - - - 0x039995 0E:9985: CA        DEX
C - - - - - 0x039996 0E:9986: D0 F4     BNE bra_997C_loop
bra_9988:
C - - - - - 0x039998 0E:9988: B1 00     LDA (ram_0000),Y
C - - - - - 0x03999A 0E:998A: 20 B2 99  JSR sub_99B2
C - - - - - 0x03999D 0E:998D: C9 FE     CMP #$FE
C - - - - - 0x03999F 0E:998F: F0 28     BEQ bra_99B9
C - - - - - 0x0399A1 0E:9991: C9 FD     CMP #$FD
C - - - - - 0x0399A3 0E:9993: F0 43     BEQ bra_99D8
C - - - - - 0x0399A5 0E:9995: 48        PHA
C - - - - - 0x0399A6 0E:9996: B1 00     LDA (ram_0000),Y
C - - - - - 0x0399A8 0E:9998: A8        TAY
C - - - - - 0x0399A9 0E:9999: 68        PLA
C - - - - - 0x0399AA 0E:999A: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x0399AD 0E:999D: 20 B2 99  JSR sub_99B2
C - - - - - 0x0399B0 0E:99A0: A0 00     LDY #$00
bra_99A2_loop:
C - - - - - 0x0399B2 0E:99A2: B1 00     LDA (ram_0000),Y
C - - - - - 0x0399B4 0E:99A4: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x0399B7 0E:99A7: 20 B2 99  JSR sub_99B2
C - - - - - 0x0399BA 0E:99AA: C9 FF     CMP #$FF
C - - - - - 0x0399BC 0E:99AC: D0 F4     BNE bra_99A2_loop
loc_99AE:
C D 0 - - - 0x0399BE 0E:99AE: EE 30 05  INC ram_0530
C - - - - - 0x0399C1 0E:99B1: 60        RTS



sub_99B2:
C - - - - - 0x0399C2 0E:99B2: E6 00     INC ram_0000
C - - - - - 0x0399C4 0E:99B4: D0 02     BNE bra_99B8_RTS
C - - - - - 0x0399C6 0E:99B6: E6 01     INC ram_0001
bra_99B8_RTS:
C - - - - - 0x0399C8 0E:99B8: 60        RTS
bra_99B9:
C - - - - - 0x0399C9 0E:99B9: B1 00     LDA (ram_0000),Y
C - - - - - 0x0399CB 0E:99BB: 48        PHA
C - - - - - 0x0399CC 0E:99BC: 20 B2 99  JSR sub_99B2
C - - - - - 0x0399CF 0E:99BF: B1 00     LDA (ram_0000),Y
C - - - - - 0x0399D1 0E:99C1: A8        TAY
C - - - - - 0x0399D2 0E:99C2: 68        PLA
C - - - - - 0x0399D3 0E:99C3: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x0399D6 0E:99C6: A9 03     LDA #$03
C - - - - - 0x0399D8 0E:99C8: 9D FD 02  STA ram_02FD,X
C - - - - - 0x0399DB 0E:99CB: A9 15     LDA #$15
C - - - - - 0x0399DD 0E:99CD: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x0399E0 0E:99D0: A9 00     LDA #$00
C - - - - - 0x0399E2 0E:99D2: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x0399E5 0E:99D5: 4C AE 99  JMP loc_99AE
bra_99D8:
C - - - - - 0x0399E8 0E:99D8: E6 21     INC ram_0021
C - - - - - 0x0399EA 0E:99DA: A9 01     LDA #$01
C - - - - - 0x0399EC 0E:99DC: 8D 60 05  STA ram_0560
C - - - - - 0x0399EF 0E:99DF: 60        RTS



tbl_99E2:
- D 0 - I - 0x0399F2 0E:99E2: 28        .byte $28   ; 
- D 0 - I - 0x0399F3 0E:99E3: 2D        .byte $2D   ; 
- D 0 - I - 0x0399F4 0E:99E4: 9D        .byte $9D   ; 
- D 0 - I - 0x0399F5 0E:99E5: 9E        .byte $9E   ; 
- D 0 - I - 0x0399F6 0E:99E6: 8B        .byte $8B   ; 
- D 0 - I - 0x0399F7 0E:99E7: 90        .byte $90   ; 
- D 0 - I - 0x0399F8 0E:99E8: 90        .byte $90   ; 
- D 0 - I - 0x0399F9 0E:99E9: FF        .byte $FF   ; 
- D 0 - I - 0x0399FA 0E:99EA: 29        .byte $29   ; 
- D 0 - I - 0x0399FB 0E:99EB: 6C        .byte $6C   ; 
- D 0 - I - 0x0399FC 0E:99EC: 9A        .byte $9A   ; 
- D 0 - I - 0x0399FD 0E:99ED: 9C        .byte $9C   ; 
- D 0 - I - 0x0399FE 0E:99EE: 99        .byte $99   ; 
- D 0 - I - 0x0399FF 0E:99EF: 91        .byte $91   ; 
- D 0 - I - 0x039A00 0E:99F0: 9C        .byte $9C   ; 
- D 0 - I - 0x039A01 0E:99F1: 8B        .byte $8B   ; 
- D 0 - I - 0x039A02 0E:99F2: 97        .byte $97   ; 
- D 0 - I - 0x039A03 0E:99F3: FF        .byte $FF   ; 
- D 0 - I - 0x039A04 0E:99F4: 29        .byte $29   ; 
- D 0 - I - 0x039A05 0E:99F5: E9        .byte $E9   ; 
- D 0 - I - 0x039A06 0E:99F6: 97        .byte $97   ; 
- D 0 - I - 0x039A07 0E:99F7: 93        .byte $93   ; 
- D 0 - I - 0x039A08 0E:99F8: 9E        .byte $9E   ; 
- D 0 - I - 0x039A09 0E:99F9: 9D        .byte $9D   ; 
- D 0 - I - 0x039A0A 0E:99FA: 9F        .byte $9F   ; 
- D 0 - I - 0x039A0B 0E:99FB: 8B        .byte $8B   ; 
- D 0 - I - 0x039A0C 0E:99FC: 95        .byte $95   ; 
- D 0 - I - 0x039A0D 0E:99FD: 93        .byte $93   ; 
- D 0 - I - 0x039A0E 0E:99FE: 00        .byte $00   ; 
- D 0 - I - 0x039A0F 0E:99FF: 99        .byte $99   ; 
- D 0 - I - 0x039A10 0E:9A00: 91        .byte $91   ; 
- D 0 - I - 0x039A11 0E:9A01: 8B        .byte $8B   ; 
- D 0 - I - 0x039A12 0E:9A02: A1        .byte $A1   ; 
- D 0 - I - 0x039A13 0E:9A03: 8B        .byte $8B   ; 
- D 0 - I - 0x039A14 0E:9A04: FF        .byte $FF   ; 
- D 0 - I - 0x039A15 0E:9A05: 2A        .byte $2A   ; 
- D 0 - I - 0x039A16 0E:9A06: 49        .byte $49   ; 
- D 0 - I - 0x039A17 0E:9A07: 9E        .byte $9E   ; 
- D 0 - I - 0x039A18 0E:9A08: 9F        .byte $9F   ; 
- D 0 - I - 0x039A19 0E:9A09: 96        .byte $96   ; 
- D 0 - I - 0x039A1A 0E:9A0A: 93        .byte $93   ; 
- D 0 - I - 0x039A1B 0E:9A0B: 9A        .byte $9A   ; 
- D 0 - I - 0x039A1C 0E:9A0C: 00        .byte $00   ; 
- D 0 - I - 0x039A1D 0E:9A0D: 97        .byte $97   ; 
- D 0 - I - 0x039A1E 0E:9A0E: 93        .byte $93   ; 
- D 0 - I - 0x039A1F 0E:9A0F: A3        .byte $A3   ; 
- D 0 - I - 0x039A20 0E:9A10: 8B        .byte $8B   ; 
- D 0 - I - 0x039A21 0E:9A11: 99        .byte $99   ; 
- D 0 - I - 0x039A22 0E:9A12: 95        .byte $95   ; 
- D 0 - I - 0x039A23 0E:9A13: 8B        .byte $8B   ; 
- D 0 - I - 0x039A24 0E:9A14: FF        .byte $FF   ; 
- D 0 - I - 0x039A25 0E:9A15: 2B        .byte $2B   ; 
- D 0 - I - 0x039A26 0E:9A16: A9        .byte $A9   ; 
- D 0 - I - 0x039A27 0E:9A17: 91        .byte $91   ; 
- D 0 - I - 0x039A28 0E:9A18: 9C        .byte $9C   ; 
- D 0 - I - 0x039A29 0E:9A19: 8B        .byte $8B   ; 
- D 0 - I - 0x039A2A 0E:9A1A: 9A        .byte $9A   ; 
- D 0 - I - 0x039A2B 0E:9A1B: 92        .byte $92   ; 
- D 0 - I - 0x039A2C 0E:9A1C: 93        .byte $93   ; 
- D 0 - I - 0x039A2D 0E:9A1D: 8D        .byte $8D   ; 
- D 0 - I - 0x039A2E 0E:9A1E: 00        .byte $00   ; 
- D 0 - I - 0x039A2F 0E:9A1F: 8E        .byte $8E   ; 
- D 0 - I - 0x039A30 0E:9A20: 8F        .byte $8F   ; 
- D 0 - I - 0x039A31 0E:9A21: 9D        .byte $9D   ; 
- D 0 - I - 0x039A32 0E:9A22: 93        .byte $93   ; 
- D 0 - I - 0x039A33 0E:9A23: 91        .byte $91   ; 
- D 0 - I - 0x039A34 0E:9A24: 98        .byte $98   ; 
- D 0 - I - 0x039A35 0E:9A25: FF        .byte $FF   ; 
- D 0 - I - 0x039A36 0E:9A26: 20        .byte $20   ; 
- D 0 - I - 0x039A37 0E:9A27: 68        .byte $68   ; 
- D 0 - I - 0x039A38 0E:9A28: 9E        .byte $9E   ; 
- D 0 - I - 0x039A39 0E:9A29: 8F        .byte $8F   ; 
- D 0 - I - 0x039A3A 0E:9A2A: 98        .byte $98   ; 
- D 0 - I - 0x039A3B 0E:9A2B: 9A        .byte $9A   ; 
- D 0 - I - 0x039A3C 0E:9A2C: 99        .byte $99   ; 
- D 0 - I - 0x039A3D 0E:9A2D: 93        .byte $93   ; 
- D 0 - I - 0x039A3E 0E:9A2E: 98        .byte $98   ; 
- D 0 - I - 0x039A3F 0E:9A2F: 9E        .byte $9E   ; 
- D 0 - I - 0x039A40 0E:9A30: 00        .byte $00   ; 
- D 0 - I - 0x039A41 0E:9A31: 8F        .byte $8F   ; 
- D 0 - I - 0x039A42 0E:9A32: 91        .byte $91   ; 
- D 0 - I - 0x039A43 0E:9A33: 9F        .byte $9F   ; 
- D 0 - I - 0x039A44 0E:9A34: 8D        .byte $8D   ; 
- D 0 - I - 0x039A45 0E:9A35: 92        .byte $92   ; 
- D 0 - I - 0x039A46 0E:9A36: 93        .byte $93   ; 
- D 0 - I - 0x039A47 0E:9A37: FF        .byte $FF   ; 
- D 0 - I - 0x039A48 0E:9A38: 20        .byte $20   ; 
- D 0 - I - 0x039A49 0E:9A39: CA        .byte $CA   ; 
- D 0 - I - 0x039A4A 0E:9A3A: 98        .byte $98   ; 
- D 0 - I - 0x039A4B 0E:9A3B: 99        .byte $99   ; 
- D 0 - I - 0x039A4C 0E:9A3C: 8C        .byte $8C   ; 
- D 0 - I - 0x039A4D 0E:9A3D: 00        .byte $00   ; 
- D 0 - I - 0x039A4E 0E:9A3E: A3        .byte $A3   ; 
- D 0 - I - 0x039A4F 0E:9A3F: 99        .byte $99   ; 
- D 0 - I - 0x039A50 0E:9A40: 9D        .byte $9D   ; 
- D 0 - I - 0x039A51 0E:9A41: 92        .byte $92   ; 
- D 0 - I - 0x039A52 0E:9A42: 93        .byte $93   ; 
- D 0 - I - 0x039A53 0E:9A43: 8E        .byte $8E   ; 
- D 0 - I - 0x039A54 0E:9A44: 8B        .byte $8B   ; 
- D 0 - I - 0x039A55 0E:9A45: FF        .byte $FF   ; 
- D 0 - I - 0x039A56 0E:9A46: 21        .byte $21   ; 
- D 0 - I - 0x039A57 0E:9A47: 2A        .byte $2A   ; 
- D 0 - I - 0x039A58 0E:9A48: 97        .byte $97   ; 
- D 0 - I - 0x039A59 0E:9A49: 8B        .byte $8B   ; 
- D 0 - I - 0x039A5A 0E:9A4A: 9E        .byte $9E   ; 
- D 0 - I - 0x039A5B 0E:9A4B: 9D        .byte $9D   ; 
- D 0 - I - 0x039A5C 0E:9A4C: 9F        .byte $9F   ; 
- D 0 - I - 0x039A5D 0E:9A4D: 8E        .byte $8E   ; 
- D 0 - I - 0x039A5E 0E:9A4E: 8B        .byte $8B   ; 
- D 0 - I - 0x039A5F 0E:9A4F: 00        .byte $00   ; 
- D 0 - I - 0x039A60 0E:9A50: 95        .byte $95   ; 
- D 0 - I - 0x039A61 0E:9A51: 9F        .byte $9F   ; 
- D 0 - I - 0x039A62 0E:9A52: 98        .byte $98   ; 
- D 0 - I - 0x039A63 0E:9A53: FF        .byte $FF   ; 
- D 0 - I - 0x039A64 0E:9A54: 22        .byte $22   ; 
- D 0 - I - 0x039A65 0E:9A55: CA        .byte $CA   ; 
- D 0 - I - 0x039A66 0E:9A56: 9D        .byte $9D   ; 
- D 0 - I - 0x039A67 0E:9A57: 99        .byte $99   ; 
- D 0 - I - 0x039A68 0E:9A58: 9F        .byte $9F   ; 
- D 0 - I - 0x039A69 0E:9A59: 98        .byte $98   ; 
- D 0 - I - 0x039A6A 0E:9A5A: 8E        .byte $8E   ; 
- D 0 - I - 0x039A6B 0E:9A5B: 00        .byte $00   ; 
- D 0 - I - 0x039A6C 0E:9A5C: 8E        .byte $8E   ; 
- D 0 - I - 0x039A6D 0E:9A5D: 8F        .byte $8F   ; 
- D 0 - I - 0x039A6E 0E:9A5E: 9D        .byte $9D   ; 
- D 0 - I - 0x039A6F 0E:9A5F: 93        .byte $93   ; 
- D 0 - I - 0x039A70 0E:9A60: 91        .byte $91   ; 
- D 0 - I - 0x039A71 0E:9A61: 98        .byte $98   ; 
- D 0 - I - 0x039A72 0E:9A62: FF        .byte $FF   ; 
- D 0 - I - 0x039A73 0E:9A63: 23        .byte $23   ; 
- D 0 - I - 0x039A74 0E:9A64: 4D        .byte $4D   ; 
- D 0 - I - 0x039A75 0E:9A65: 94        .byte $94   ; 
- D 0 - I - 0x039A76 0E:9A66: B9        .byte $B9   ; 
- D 0 - I - 0x039A77 0E:9A67: 95        .byte $95   ; 
- D 0 - I - 0x039A78 0E:9A68: 8B        .byte $8B   ; 
- D 0 - I - 0x039A79 0E:9A69: 98        .byte $98   ; 
- D 0 - I - 0x039A7A 0E:9A6A: 8F        .byte $8F   ; 
- D 0 - I - 0x039A7B 0E:9A6B: FF        .byte $FF   ; 
- D 0 - I - 0x039A7C 0E:9A6C: 23        .byte $23   ; 
- D 0 - I - 0x039A7D 0E:9A6D: A8        .byte $A8   ; 
- D 0 - I - 0x039A7E 0E:9A6E: 98        .byte $98   ; 
- D 0 - I - 0x039A7F 0E:9A6F: 93        .byte $93   ; 
- D 0 - I - 0x039A80 0E:9A70: 9D        .byte $9D   ; 
- D 0 - I - 0x039A81 0E:9A71: 92        .byte $92   ; 
- D 0 - I - 0x039A82 0E:9A72: 93        .byte $93   ; 
- D 0 - I - 0x039A83 0E:9A73: 91        .byte $91   ; 
- D 0 - I - 0x039A84 0E:9A74: 8B        .byte $8B   ; 
- D 0 - I - 0x039A85 0E:9A75: 95        .byte $95   ; 
- D 0 - I - 0x039A86 0E:9A76: 93        .byte $93   ; 
- D 0 - I - 0x039A87 0E:9A77: 00        .byte $00   ; 
- D 0 - I - 0x039A88 0E:9A78: 8B        .byte $8B   ; 
- D 0 - I - 0x039A89 0E:9A79: A3        .byte $A3   ; 
- D 0 - I - 0x039A8A 0E:9A7A: 8B        .byte $8B   ; 
- D 0 - I - 0x039A8B 0E:9A7B: 8D        .byte $8D   ; 
- D 0 - I - 0x039A8C 0E:9A7C: 92        .byte $92   ; 
- D 0 - I - 0x039A8D 0E:9A7D: 8B        .byte $8B   ; 
- D 0 - I - 0x039A8E 0E:9A7E: 98        .byte $98   ; 
- D 0 - I - 0x039A8F 0E:9A7F: FF        .byte $FF   ; 
- D 0 - I - 0x039A90 0E:9A80: FE        .byte $FE   ; 
- D 0 - I - 0x039A91 0E:9A81: 28        .byte $28   ; 
- D 0 - I - 0x039A92 0E:9A82: 2D        .byte $2D   ; 
- D 0 - I - 0x039A93 0E:9A83: FF        .byte $FF   ; 
- D 0 - I - 0x039A94 0E:9A84: FE        .byte $FE   ; 
- D 0 - I - 0x039A95 0E:9A85: 29        .byte $29   ; 
- D 0 - I - 0x039A96 0E:9A86: 6C        .byte $6C   ; 
- D 0 - I - 0x039A97 0E:9A87: FF        .byte $FF   ; 
- D 0 - I - 0x039A98 0E:9A88: FE        .byte $FE   ; 
- D 0 - I - 0x039A99 0E:9A89: 29        .byte $29   ; 
- D 0 - I - 0x039A9A 0E:9A8A: E9        .byte $E9   ; 
- D 0 - I - 0x039A9B 0E:9A8B: FF        .byte $FF   ; 
- D 0 - I - 0x039A9C 0E:9A8C: FE        .byte $FE   ; 
- D 0 - I - 0x039A9D 0E:9A8D: 2A        .byte $2A   ; 
- D 0 - I - 0x039A9E 0E:9A8E: 49        .byte $49   ; 
- D 0 - I - 0x039A9F 0E:9A8F: FF        .byte $FF   ; 
- D 0 - I - 0x039AA0 0E:9A90: 29        .byte $29   ; 
- D 0 - I - 0x039AA1 0E:9A91: 89        .byte $89   ; 
- D 0 - I - 0x039AA2 0E:9A92: 9A        .byte $9A   ; 
- D 0 - I - 0x039AA3 0E:9A93: 8B        .byte $8B   ; 
- D 0 - I - 0x039AA4 0E:9A94: 8D        .byte $8D   ; 
- D 0 - I - 0x039AA5 0E:9A95: 95        .byte $95   ; 
- D 0 - I - 0x039AA6 0E:9A96: 8B        .byte $8B   ; 
- D 0 - I - 0x039AA7 0E:9A97: 91        .byte $91   ; 
- D 0 - I - 0x039AA8 0E:9A98: 8F        .byte $8F   ; 
- D 0 - I - 0x039AA9 0E:9A99: 00        .byte $00   ; 
- D 0 - I - 0x039AAA 0E:9A9A: 8E        .byte $8E   ; 
- D 0 - I - 0x039AAB 0E:9A9B: 8F        .byte $8F   ; 
- D 0 - I - 0x039AAC 0E:9A9C: 9D        .byte $9D   ; 
- D 0 - I - 0x039AAD 0E:9A9D: 93        .byte $93   ; 
- D 0 - I - 0x039AAE 0E:9A9E: 91        .byte $91   ; 
- D 0 - I - 0x039AAF 0E:9A9F: 98        .byte $98   ; 
- D 0 - I - 0x039AB0 0E:9AA0: FF        .byte $FF   ; 
- D 0 - I - 0x039AB1 0E:9AA1: 2A        .byte $2A   ; 
- D 0 - I - 0x039AB2 0E:9AA2: 0C        .byte $0C   ; 
- D 0 - I - 0x039AB3 0E:9AA3: 9D        .byte $9D   ; 
- D 0 - I - 0x039AB4 0E:9AA4: 9F        .byte $9F   ; 
- D 0 - I - 0x039AB5 0E:9AA5: 97        .byte $97   ; 
- D 0 - I - 0x039AB6 0E:9AA6: 93        .byte $93   ; 
- D 0 - I - 0x039AB7 0E:9AA7: 8D        .byte $8D   ; 
- D 0 - I - 0x039AB8 0E:9AA8: 92        .byte $92   ; 
- D 0 - I - 0x039AB9 0E:9AA9: 8B        .byte $8B   ; 
- D 0 - I - 0x039ABA 0E:9AAA: 98        .byte $98   ; 
- D 0 - I - 0x039ABB 0E:9AAB: FF        .byte $FF   ; 
- D 0 - I - 0x039ABC 0E:9AAC: 2B        .byte $2B   ; 
- D 0 - I - 0x039ABD 0E:9AAD: A9        .byte $A9   ; 
- D 0 - I - 0x039ABE 0E:9AAE: 00        .byte $00   ; 
- D 0 - I - 0x039ABF 0E:9AAF: 00        .byte $00   ; 
- D 0 - I - 0x039AC0 0E:9AB0: 00        .byte $00   ; 
- D 0 - I - 0x039AC1 0E:9AB1: 8E        .byte $8E   ; 
- D 0 - I - 0x039AC2 0E:9AB2: 93        .byte $93   ; 
- D 0 - I - 0x039AC3 0E:9AB3: 9C        .byte $9C   ; 
- D 0 - I - 0x039AC4 0E:9AB4: 8F        .byte $8F   ; 
- D 0 - I - 0x039AC5 0E:9AB5: 8D        .byte $8D   ; 
- D 0 - I - 0x039AC6 0E:9AB6: 9E        .byte $9E   ; 
- D 0 - I - 0x039AC7 0E:9AB7: 99        .byte $99   ; 
- D 0 - I - 0x039AC8 0E:9AB8: 9C        .byte $9C   ; 
- D 0 - I - 0x039AC9 0E:9AB9: 00        .byte $00   ; 
- D 0 - I - 0x039ACA 0E:9ABA: 00        .byte $00   ; 
- D 0 - I - 0x039ACB 0E:9ABB: 00        .byte $00   ; 
- D 0 - I - 0x039ACC 0E:9ABC: FF        .byte $FF   ; 
- D 0 - I - 0x039ACD 0E:9ABD: 20        .byte $20   ; 
- D 0 - I - 0x039ACE 0E:9ABE: 68        .byte $68   ; 
- D 0 - I - 0x039ACF 0E:9ABF: 00        .byte $00   ; 
- D 0 - I - 0x039AD0 0E:9AC0: 00        .byte $00   ; 
- D 0 - I - 0x039AD1 0E:9AC1: 00        .byte $00   ; 
- D 0 - I - 0x039AD2 0E:9AC2: 00        .byte $00   ; 
- D 0 - I - 0x039AD3 0E:9AC3: 00        .byte $00   ; 
- D 0 - I - 0x039AD4 0E:9AC4: 9E        .byte $9E   ; 
- D 0 - I - 0x039AD5 0E:9AC5: 99        .byte $99   ; 
- D 0 - I - 0x039AD6 0E:9AC6: 97        .byte $97   ; 
- D 0 - I - 0x039AD7 0E:9AC7: 8D        .byte $8D   ; 
- D 0 - I - 0x039AD8 0E:9AC8: 8B        .byte $8B   ; 
- D 0 - I - 0x039AD9 0E:9AC9: 9E        .byte $9E   ; 
- D 0 - I - 0x039ADA 0E:9ACA: 00        .byte $00   ; 
- D 0 - I - 0x039ADB 0E:9ACB: 00        .byte $00   ; 
- D 0 - I - 0x039ADC 0E:9ACC: 00        .byte $00   ; 
- D 0 - I - 0x039ADD 0E:9ACD: 00        .byte $00   ; 
- D 0 - I - 0x039ADE 0E:9ACE: FF        .byte $FF   ; 
- D 0 - I - 0x039ADF 0E:9ACF: FE        .byte $FE   ; 
- D 0 - I - 0x039AE0 0E:9AD0: 20        .byte $20   ; 
- D 0 - I - 0x039AE1 0E:9AD1: CA        .byte $CA   ; 
- D 0 - I - 0x039AE2 0E:9AD2: FF        .byte $FF   ; 
- D 0 - I - 0x039AE3 0E:9AD3: FE        .byte $FE   ; 
- D 0 - I - 0x039AE4 0E:9AD4: 21        .byte $21   ; 
- D 0 - I - 0x039AE5 0E:9AD5: 2A        .byte $2A   ; 
- D 0 - I - 0x039AE6 0E:9AD6: FF        .byte $FF   ; 
- D 0 - I - 0x039AE7 0E:9AD7: FE        .byte $FE   ; 
- D 0 - I - 0x039AE8 0E:9AD8: 22        .byte $22   ; 
- D 0 - I - 0x039AE9 0E:9AD9: CA        .byte $CA   ; 
- D 0 - I - 0x039AEA 0E:9ADA: FF        .byte $FF   ; 
- D 0 - I - 0x039AEB 0E:9ADB: FE        .byte $FE   ; 
- D 0 - I - 0x039AEC 0E:9ADC: 23        .byte $23   ; 
- D 0 - I - 0x039AED 0E:9ADD: 4D        .byte $4D   ; 
- D 0 - I - 0x039AEE 0E:9ADE: FF        .byte $FF   ; 
- D 0 - I - 0x039AEF 0E:9ADF: FE        .byte $FE   ; 
- D 0 - I - 0x039AF0 0E:9AE0: 23        .byte $23   ; 
- D 0 - I - 0x039AF1 0E:9AE1: A8        .byte $A8   ; 
- D 0 - I - 0x039AF2 0E:9AE2: FF        .byte $FF   ; 
- D 0 - I - 0x039AF3 0E:9AE3: 28        .byte $28   ; 
- D 0 - I - 0x039AF4 0E:9AE4: 02        .byte $02   ; 
- D 0 - I - 0x039AF5 0E:9AE5: 9E        .byte $9E   ; 
- D 0 - I - 0x039AF6 0E:9AE6: 8F        .byte $8F   ; 
- D 0 - I - 0x039AF7 0E:9AE7: 8F        .byte $8F   ; 
- D 0 - I - 0x039AF8 0E:9AE8: 98        .byte $98   ; 
- D 0 - I - 0x039AF9 0E:9AE9: 8B        .byte $8B   ; 
- D 0 - I - 0x039AFA 0E:9AEA: 91        .byte $91   ; 
- D 0 - I - 0x039AFB 0E:9AEB: 8F        .byte $8F   ; 
- D 0 - I - 0x039AFC 0E:9AEC: 00        .byte $00   ; 
- D 0 - I - 0x039AFD 0E:9AED: 97        .byte $97   ; 
- D 0 - I - 0x039AFE 0E:9AEE: 9F        .byte $9F   ; 
- D 0 - I - 0x039AFF 0E:9AEF: 9E        .byte $9E   ; 
- D 0 - I - 0x039B00 0E:9AF0: 8B        .byte $8B   ; 
- D 0 - I - 0x039B01 0E:9AF1: 98        .byte $98   ; 
- D 0 - I - 0x039B02 0E:9AF2: 9E        .byte $9E   ; 
- D 0 - I - 0x039B03 0E:9AF3: 00        .byte $00   ; 
- D 0 - I - 0x039B04 0E:9AF4: 98        .byte $98   ; 
- D 0 - I - 0x039B05 0E:9AF5: 93        .byte $93   ; 
- D 0 - I - 0x039B06 0E:9AF6: 98        .byte $98   ; 
- D 0 - I - 0x039B07 0E:9AF7: 94        .byte $94   ; 
- D 0 - I - 0x039B08 0E:9AF8: 8B        .byte $8B   ; 
- D 0 - I - 0x039B09 0E:9AF9: 00        .byte $00   ; 
- D 0 - I - 0x039B0A 0E:9AFA: 9E        .byte $9E   ; 
- D 0 - I - 0x039B0B 0E:9AFB: 9F        .byte $9F   ; 
- D 0 - I - 0x039B0C 0E:9AFC: 9C        .byte $9C   ; 
- D 0 - I - 0x039B0D 0E:9AFD: 9E        .byte $9E   ; 
- D 0 - I - 0x039B0E 0E:9AFE: 96        .byte $96   ; 
- D 0 - I - 0x039B0F 0E:9AFF: 8F        .byte $8F   ; 
- D 0 - I - 0x039B10 0E:9B00: 9D        .byte $9D   ; 
- D 0 - I - 0x039B11 0E:9B01: FF        .byte $FF   ; 
- D 0 - I - 0x039B12 0E:9B02: 28        .byte $28   ; 
- D 0 - I - 0x039B13 0E:9B03: 6A        .byte $6A   ; 
- D 0 - I - 0x039B14 0E:9B04: A6        .byte $A6   ; 
- D 0 - I - 0x039B15 0E:9B05: 00        .byte $00   ; 
- D 0 - I - 0x039B16 0E:9B06: 95        .byte $95   ; 
- D 0 - I - 0x039B17 0E:9B07: 99        .byte $99   ; 
- D 0 - I - 0x039B18 0E:9B08: 98        .byte $98   ; 
- D 0 - I - 0x039B19 0E:9B09: 8B        .byte $8B   ; 
- D 0 - I - 0x039B1A 0E:9B0A: 97        .byte $97   ; 
- D 0 - I - 0x039B1B 0E:9B0B: 93        .byte $93   ; 
- D 0 - I - 0x039B1C 0E:9B0C: 00        .byte $00   ; 
- D 0 - I - 0x039B1D 0E:9B0D: 82        .byte $82   ; 
- D 0 - I - 0x039B1E 0E:9B0E: 8A        .byte $8A   ; 
- D 0 - I - 0x039B1F 0E:9B0F: 8A        .byte $8A   ; 
- D 0 - I - 0x039B20 0E:9B10: 84        .byte $84   ; 
- D 0 - I - 0x039B21 0E:9B11: FF        .byte $FF   ; 
- D 0 - I - 0x039B22 0E:9B12: 28        .byte $28   ; 
- D 0 - I - 0x039B23 0E:9B13: A6        .byte $A6   ; 
- D 0 - I - 0x039B24 0E:9B14: 8B        .byte $8B   ; 
- D 0 - I - 0x039B25 0E:9B15: 96        .byte $96   ; 
- D 0 - I - 0x039B26 0E:9B16: 96        .byte $96   ; 
- D 0 - I - 0x039B27 0E:9B17: 00        .byte $00   ; 
- D 0 - I - 0x039B28 0E:9B18: 9C        .byte $9C   ; 
- D 0 - I - 0x039B29 0E:9B19: 93        .byte $93   ; 
- D 0 - I - 0x039B2A 0E:9B1A: 91        .byte $91   ; 
- D 0 - I - 0x039B2B 0E:9B1B: 92        .byte $92   ; 
- D 0 - I - 0x039B2C 0E:9B1C: 9E        .byte $9E   ; 
- D 0 - I - 0x039B2D 0E:9B1D: 9D        .byte $9D   ; 
- D 0 - I - 0x039B2E 0E:9B1E: 00        .byte $00   ; 
- D 0 - I - 0x039B2F 0E:9B1F: 9C        .byte $9C   ; 
- D 0 - I - 0x039B30 0E:9B20: 8F        .byte $8F   ; 
- D 0 - I - 0x039B31 0E:9B21: 9D        .byte $9D   ; 
- D 0 - I - 0x039B32 0E:9B22: 8F        .byte $8F   ; 
- D 0 - I - 0x039B33 0E:9B23: 9C        .byte $9C   ; 
- D 0 - I - 0x039B34 0E:9B24: A0        .byte $A0   ; 
- D 0 - I - 0x039B35 0E:9B25: 8F        .byte $8F   ; 
- D 0 - I - 0x039B36 0E:9B26: 8E        .byte $8E   ; 
- D 0 - I - 0x039B37 0E:9B27: A7        .byte $A7   ; 
- D 0 - I - 0x039B38 0E:9B28: FF        .byte $FF   ; 
- D 0 - I - 0x039B39 0E:9B29: FE        .byte $FE   ; 
- D 0 - I - 0x039B3A 0E:9B2A: 29        .byte $29   ; 
- D 0 - I - 0x039B3B 0E:9B2B: 89        .byte $89   ; 
- D 0 - I - 0x039B3C 0E:9B2C: FF        .byte $FF   ; 
- D 0 - I - 0x039B3D 0E:9B2D: FE        .byte $FE   ; 
- D 0 - I - 0x039B3E 0E:9B2E: 2A        .byte $2A   ; 
- D 0 - I - 0x039B3F 0E:9B2F: 0C        .byte $0C   ; 
- D 0 - I - 0x039B40 0E:9B30: FF        .byte $FF   ; 
- D 0 - I - 0x039B41 0E:9B31: FE        .byte $FE   ; 
- D 0 - I - 0x039B42 0E:9B32: 20        .byte $20   ; 
- D 0 - I - 0x039B43 0E:9B33: 0C        .byte $0C   ; 
- D 0 - I - 0x039B44 0E:9B34: FF        .byte $FF   ; 
- D 0 - I - 0x039B45 0E:9B35: FD        .byte $FD   ; 



sub_9B36:
.export sub_0x039B46
sub_0x039B46:
C - - - - - 0x039B46 0E:9B36: AD 31 06  LDA ram_0631
C - - - - - 0x039B49 0E:9B39: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x039B4C 0E:9B3C: 40 9B     .word ofs_9B40_00
- D 0 - I - 0x039B4E 0E:9B3E: 6F 9B     .word ofs_9B6F_01



ofs_9B40_00:
C - - J - - 0x039B50 0E:9B40: 20 64 9B  JSR sub_9B64
C - - - - - 0x039B53 0E:9B43: A5 B6     LDA ram_00B6
C - - - - - 0x039B55 0E:9B45: 0A        ASL
C - - - - - 0x039B56 0E:9B46: A8        TAY
C - - - - - 0x039B57 0E:9B47: B9 15 9C  LDA tbl_9C15,Y
C - - - - - 0x039B5A 0E:9B4A: 8D 33 06  STA ram_0633
C - - - - - 0x039B5D 0E:9B4D: B9 16 9C  LDA tbl_9C15 + 1,Y
C - - - - - 0x039B60 0E:9B50: 8D 34 06  STA ram_0634
C - - - - - 0x039B63 0E:9B53: A9 00     LDA #$00
C - - - - - 0x039B65 0E:9B55: 8D 32 06  STA ram_0632
C - - - - - 0x039B68 0E:9B58: 8D 39 06  STA ram_0639
C - - - - - 0x039B6B 0E:9B5B: 20 01 A6  JSR sub_A601
sub_9B5E:
C - - - - - 0x039B6E 0E:9B5E: A9 06     LDA #$06
C - - - - - 0x039B70 0E:9B60: 8D 37 06  STA ram_0637
bra_9B63_RTS:
C - - - - - 0x039B73 0E:9B63: 60        RTS



sub_9B64:
loc_9B64:
C D 0 - - - 0x039B74 0E:9B64: A9 84     LDA #$84
C - - - - - 0x039B76 0E:9B66: 8D 36 06  STA ram_0636
C - - - - - 0x039B79 0E:9B69: A9 22     LDA #$22
C - - - - - 0x039B7B 0E:9B6B: 8D 35 06  STA ram_0635
C - - - - - 0x039B7E 0E:9B6E: 60        RTS



ofs_9B6F_01:
C - - J - - 0x039B7F 0E:9B6F: CE 37 06  DEC ram_0637
C - - - - - 0x039B82 0E:9B72: D0 EF     BNE bra_9B63_RTS
C - - - - - 0x039B84 0E:9B74: 20 5E 9B  JSR sub_9B5E
C - - - - - 0x039B87 0E:9B77: AD 33 06  LDA ram_0633
C - - - - - 0x039B8A 0E:9B7A: 85 00     STA ram_0000
C - - - - - 0x039B8C 0E:9B7C: AD 34 06  LDA ram_0634
C - - - - - 0x039B8F 0E:9B7F: 85 01     STA ram_0001
C - - - - - 0x039B91 0E:9B81: AC 32 06  LDY ram_0632
C - - - - - 0x039B94 0E:9B84: B1 00     LDA (ram_0000),Y
C - - - - - 0x039B96 0E:9B86: C9 BD     CMP #$BD
C - - - - - 0x039B98 0E:9B88: F0 33     BEQ bra_9BBD
C - - - - - 0x039B9A 0E:9B8A: C9 BB     CMP #$BB
C - - - - - 0x039B9C 0E:9B8C: F0 45     BEQ bra_9BD3
C - - - - - 0x039B9E 0E:9B8E: C9 BC     CMP #$BC
C - - - - - 0x039BA0 0E:9B90: F0 50     BEQ bra_9BE2
C - - - - - 0x039BA2 0E:9B92: C9 BE     CMP #$BE
C - - - - - 0x039BA4 0E:9B94: F0 6A     BEQ bra_9C00
C - - - - - 0x039BA6 0E:9B96: C9 BF     CMP #$BF
C - - - - - 0x039BA8 0E:9B98: F0 73     BEQ bra_9C0D
C - - - - - 0x039BAA 0E:9B9A: C9 FF     CMP #$FF
C - - - - - 0x039BAC 0E:9B9C: F0 69     BEQ bra_9C07
C - - - - - 0x039BAE 0E:9B9E: 48        PHA
C - - - - - 0x039BAF 0E:9B9F: 18        CLC
C - - - - - 0x039BB0 0E:9BA0: AD 36 06  LDA ram_0636
C - - - - - 0x039BB3 0E:9BA3: 6D 39 06  ADC ram_0639
C - - - - - 0x039BB6 0E:9BA6: A8        TAY
C - - - - - 0x039BB7 0E:9BA7: AD 35 06  LDA ram_0635
C - - - - - 0x039BBA 0E:9BAA: 69 00     ADC #$00
C - - - - - 0x039BBC 0E:9BAC: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x039BBF 0E:9BAF: 68        PLA
C - - - - - 0x039BC0 0E:9BB0: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x039BC3 0E:9BB3: 20 5B D2  JSR sub_0x03D26B
bra_9BB6:
loc_9BB6:
C D 0 - - - 0x039BC6 0E:9BB6: EE 39 06  INC ram_0639
bra_9BB9:
C - - - - - 0x039BC9 0E:9BB9: EE 32 06  INC ram_0632
C - - - - - 0x039BCC 0E:9BBC: 60        RTS
bra_9BBD:
C - - - - - 0x039BCD 0E:9BBD: A9 20     LDA #$20
C - - - - - 0x039BCF 0E:9BBF: 18        CLC
C - - - - - 0x039BD0 0E:9BC0: 6D 36 06  ADC ram_0636
C - - - - - 0x039BD3 0E:9BC3: 8D 36 06  STA ram_0636
C - - - - - 0x039BD6 0E:9BC6: A9 00     LDA #$00
C - - - - - 0x039BD8 0E:9BC8: 8D 39 06  STA ram_0639
C - - - - - 0x039BDB 0E:9BCB: 6D 35 06  ADC ram_0635
C - - - - - 0x039BDE 0E:9BCE: 8D 35 06  STA ram_0635
C - - - - - 0x039BE1 0E:9BD1: 10 E6     BPL bra_9BB9
bra_9BD3:
C - - - - - 0x039BE3 0E:9BD3: EE 32 06  INC ram_0632
C - - - - - 0x039BE6 0E:9BD6: AC 32 06  LDY ram_0632
C - - - - - 0x039BE9 0E:9BD9: B1 00     LDA (ram_0000),Y
C - - - - - 0x039BEB 0E:9BDB: 8D 37 06  STA ram_0637
C - - - - - 0x039BEE 0E:9BDE: EE 32 06  INC ram_0632
C - - - - - 0x039BF1 0E:9BE1: 60        RTS
bra_9BE2:
C - - - - - 0x039BF2 0E:9BE2: A0 00     LDY #$00
C - - - - - 0x039BF4 0E:9BE4: 8C 39 06  STY ram_0639
bra_9BE7_loop:
C - - - - - 0x039BF7 0E:9BE7: B9 FA 9B  LDA tbl_9BFA,Y
C - - - - - 0x039BFA 0E:9BEA: C9 FF     CMP #$FF
C - - - - - 0x039BFC 0E:9BEC: F0 06     BEQ bra_9BF4
C - - - - - 0x039BFE 0E:9BEE: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x039C01 0E:9BF1: C8        INY
C - - - - - 0x039C02 0E:9BF2: D0 F3     BNE bra_9BE7_loop
bra_9BF4:
C - - - - - 0x039C04 0E:9BF4: EE 32 06  INC ram_0632
C - - - - - 0x039C07 0E:9BF7: 4C 64 9B  JMP loc_9B64



tbl_9BFA:
- D 0 - - - 0x039C0A 0E:9BFA: 03        .byte $03   ; 
- D 0 - - - 0x039C0B 0E:9BFB: 80        .byte $80   ; 
- D 0 - - - 0x039C0C 0E:9BFC: 22        .byte $22   ; 
- D 0 - - - 0x039C0D 0E:9BFD: 80        .byte $80   ; 
- D 0 - - - 0x039C0E 0E:9BFE: 00        .byte $00   ; 
- D 0 - - - 0x039C0F 0E:9BFF: FF        .byte $FF   ; 



bra_9C00:
C - - - - - 0x039C10 0E:9C00: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x039C13 0E:9C03: D0 02     BNE bra_9C07
C - - - - - 0x039C15 0E:9C05: F0 AF     BEQ bra_9BB6
bra_9C07:
C - - - - - 0x039C17 0E:9C07: A9 00     LDA #$00
C - - - - - 0x039C19 0E:9C09: 8D 31 06  STA ram_0631
C - - - - - 0x039C1C 0E:9C0C: 60        RTS
bra_9C0D:
C - - - - - 0x039C1D 0E:9C0D: A9 5B     LDA #$5B
C - - - - - 0x039C1F 0E:9C0F: 20 90 F6  JSR sub_0x03F6A0
C - - - - - 0x039C22 0E:9C12: 4C B6 9B  JMP loc_9BB6



tbl_9C15:
- D 0 - - - 0x039C25 0E:9C15: 25 9C     .word off_9C25_00
- D 0 - - - 0x039C27 0E:9C17: 43 9C     .word off_9C43_01
- D 0 - - - 0x039C29 0E:9C19: 70 9C     .word off_9C70_02
- D 0 - - - 0x039C2B 0E:9C1B: 31 9D     .word off_9D31_03
- D 0 - - - 0x039C2D 0E:9C1D: F6 9D     .word off_9DF6_04
- D 0 - - - 0x039C2F 0E:9C1F: 3E 9E     .word off_9E3E_05
- D 0 - - - 0x039C31 0E:9C21: 93 9E     .word off_9E93_06
- D 0 - - - 0x039C33 0E:9C23: D6 9E     .word off_9ED6_07



off_9C25_00:
- D 0 - I - 0x039C35 0E:9C25: BB        .byte $BB   ; 
- D 0 - I - 0x039C36 0E:9C26: 78        .byte $78   ; 
- D 0 - I - 0x039C37 0E:9C27: 97        .byte $97   ; 
- D 0 - I - 0x039C38 0E:9C28: 8B        .byte $8B   ; 
- D 0 - I - 0x039C39 0E:9C29: 98        .byte $98   ; 
- D 0 - I - 0x039C3A 0E:9C2A: 92        .byte $92   ; 
- D 0 - I - 0x039C3B 0E:9C2B: 8B        .byte $8B   ; 
- D 0 - I - 0x039C3C 0E:9C2C: 9E        .byte $9E   ; 
- D 0 - I - 0x039C3D 0E:9C2D: 9E        .byte $9E   ; 
- D 0 - I - 0x039C3E 0E:9C2E: 8B        .byte $8B   ; 
- D 0 - I - 0x039C3F 0E:9C2F: 98        .byte $98   ; 
- D 0 - I - 0x039C40 0E:9C30: A7        .byte $A7   ; 
- D 0 - I - 0x039C41 0E:9C31: A7        .byte $A7   ; 
- D 0 - I - 0x039C42 0E:9C32: A7        .byte $A7   ; 
- D 0 - I - 0x039C43 0E:9C33: A7        .byte $A7   ; 
- D 0 - I - 0x039C44 0E:9C34: 9A        .byte $9A   ; 
- D 0 - I - 0x039C45 0E:9C35: 9C        .byte $9C   ; 
- D 0 - I - 0x039C46 0E:9C36: 8F        .byte $8F   ; 
- D 0 - I - 0x039C47 0E:9C37: 9D        .byte $9D   ; 
- D 0 - I - 0x039C48 0E:9C38: 8F        .byte $8F   ; 
- D 0 - I - 0x039C49 0E:9C39: 98        .byte $98   ; 
- D 0 - I - 0x039C4A 0E:9C3A: 9E        .byte $9E   ; 
- D 0 - I - 0x039C4B 0E:9C3B: 00        .byte $00   ; 
- D 0 - I - 0x039C4C 0E:9C3C: 8E        .byte $8E   ; 
- D 0 - I - 0x039C4D 0E:9C3D: 8B        .byte $8B   ; 
- D 0 - I - 0x039C4E 0E:9C3E: A3        .byte $A3   ; 
- D 0 - I - 0x039C4F 0E:9C3F: A7        .byte $A7   ; 
- D 0 - I - 0x039C50 0E:9C40: BB        .byte $BB   ; 
- D 0 - I - 0x039C51 0E:9C41: 6C        .byte $6C   ; 
- D 0 - I - 0x039C52 0E:9C42: FF        .byte $FF   ; 



off_9C43_01:
- D 0 - I - 0x039C53 0E:9C43: BB        .byte $BB   ; 
- D 0 - I - 0x039C54 0E:9C44: 78        .byte $78   ; 
- D 0 - I - 0x039C55 0E:9C45: 9E        .byte $9E   ; 
- D 0 - I - 0x039C56 0E:9C46: 92        .byte $92   ; 
- D 0 - I - 0x039C57 0E:9C47: 8F        .byte $8F   ; 
- D 0 - I - 0x039C58 0E:9C48: 00        .byte $00   ; 
- D 0 - I - 0x039C59 0E:9C49: 9E        .byte $9E   ; 
- D 0 - I - 0x039C5A 0E:9C4A: 9F        .byte $9F   ; 
- D 0 - I - 0x039C5B 0E:9C4B: 9C        .byte $9C   ; 
- D 0 - I - 0x039C5C 0E:9C4C: 9E        .byte $9E   ; 
- D 0 - I - 0x039C5D 0E:9C4D: 96        .byte $96   ; 
- D 0 - I - 0x039C5E 0E:9C4E: 8F        .byte $8F   ; 
- D 0 - I - 0x039C5F 0E:9C4F: 9D        .byte $9D   ; 
- D 0 - I - 0x039C60 0E:9C50: 00        .byte $00   ; 
- D 0 - I - 0x039C61 0E:9C51: 9C        .byte $9C   ; 
- D 0 - I - 0x039C62 0E:9C52: 8F        .byte $8F   ; 
- D 0 - I - 0x039C63 0E:9C53: 8D        .byte $8D   ; 
- D 0 - I - 0x039C64 0E:9C54: 8F        .byte $8F   ; 
- D 0 - I - 0x039C65 0E:9C55: 93        .byte $93   ; 
- D 0 - I - 0x039C66 0E:9C56: A0        .byte $A0   ; 
- D 0 - I - 0x039C67 0E:9C57: 8F        .byte $8F   ; 
- D 0 - I - 0x039C68 0E:9C58: 00        .byte $00   ; 
- D 0 - I - 0x039C69 0E:9C59: 8B        .byte $8B   ; 
- D 0 - I - 0x039C6A 0E:9C5A: BD        .byte $BD   ; 
- D 0 - I - 0x039C6B 0E:9C5B: 9D        .byte $9D   ; 
- D 0 - I - 0x039C6C 0E:9C5C: 9E        .byte $9E   ; 
- D 0 - I - 0x039C6D 0E:9C5D: 9C        .byte $9C   ; 
- D 0 - I - 0x039C6E 0E:9C5E: 8B        .byte $8B   ; 
- D 0 - I - 0x039C6F 0E:9C5F: 98        .byte $98   ; 
- D 0 - I - 0x039C70 0E:9C60: 91        .byte $91   ; 
- D 0 - I - 0x039C71 0E:9C61: 8F        .byte $8F   ; 
- D 0 - I - 0x039C72 0E:9C62: 00        .byte $00   ; 
- D 0 - I - 0x039C73 0E:9C63: 96        .byte $96   ; 
- D 0 - I - 0x039C74 0E:9C64: 8F        .byte $8F   ; 
- D 0 - I - 0x039C75 0E:9C65: 9E        .byte $9E   ; 
- D 0 - I - 0x039C76 0E:9C66: 9E        .byte $9E   ; 
- D 0 - I - 0x039C77 0E:9C67: 8F        .byte $8F   ; 
- D 0 - I - 0x039C78 0E:9C68: 9C        .byte $9C   ; 
- D 0 - I - 0x039C79 0E:9C69: A7        .byte $A7   ; 
- D 0 - I - 0x039C7A 0E:9C6A: A7        .byte $A7   ; 
- D 0 - I - 0x039C7B 0E:9C6B: A7        .byte $A7   ; 
- D 0 - I - 0x039C7C 0E:9C6C: A7        .byte $A7   ; 
- D 0 - I - 0x039C7D 0E:9C6D: BB        .byte $BB   ; 
- D 0 - I - 0x039C7E 0E:9C6E: 6C        .byte $6C   ; 
- D 0 - I - 0x039C7F 0E:9C6F: FF        .byte $FF   ; 



off_9C70_02:
- D 0 - I - 0x039C80 0E:9C70: BB        .byte $BB   ; 
- D 0 - I - 0x039C81 0E:9C71: 40        .byte $40   ; 
- D 0 - I - 0x039C82 0E:9C72: AA        .byte $AA   ; 
- D 0 - I - 0x039C83 0E:9C73: 93        .byte $93   ; 
- D 0 - I - 0x039C84 0E:9C74: 00        .byte $00   ; 
- D 0 - I - 0x039C85 0E:9C75: 99        .byte $99   ; 
- D 0 - I - 0x039C86 0E:9C76: 90        .byte $90   ; 
- D 0 - I - 0x039C87 0E:9C77: 90        .byte $90   ; 
- D 0 - I - 0x039C88 0E:9C78: 8F        .byte $8F   ; 
- D 0 - I - 0x039C89 0E:9C79: 9C        .byte $9C   ; 
- D 0 - I - 0x039C8A 0E:9C7A: 00        .byte $00   ; 
- D 0 - I - 0x039C8B 0E:9C7B: A3        .byte $A3   ; 
- D 0 - I - 0x039C8C 0E:9C7C: 99        .byte $99   ; 
- D 0 - I - 0x039C8D 0E:9C7D: 9F        .byte $9F   ; 
- D 0 - I - 0x039C8E 0E:9C7E: 00        .byte $00   ; 
- D 0 - I - 0x039C8F 0E:9C7F: 9E        .byte $9E   ; 
- D 0 - I - 0x039C90 0E:9C80: 9F        .byte $9F   ; 
- D 0 - I - 0x039C91 0E:9C81: 9C        .byte $9C   ; 
- D 0 - I - 0x039C92 0E:9C82: 9E        .byte $9E   ; 
- D 0 - I - 0x039C93 0E:9C83: 96        .byte $96   ; 
- D 0 - I - 0x039C94 0E:9C84: 8F        .byte $8F   ; 
- D 0 - I - 0x039C95 0E:9C85: 9D        .byte $9D   ; 
- D 0 - I - 0x039C96 0E:9C86: 00        .byte $00   ; 
- D 0 - I - 0x039C97 0E:9C87: 8B        .byte $8B   ; 
- D 0 - I - 0x039C98 0E:9C88: BD        .byte $BD   ; 
- D 0 - I - 0x039C99 0E:9C89: 8D        .byte $8D   ; 
- D 0 - I - 0x039C9A 0E:9C8A: 92        .byte $92   ; 
- D 0 - I - 0x039C9B 0E:9C8B: 8B        .byte $8B   ; 
- D 0 - I - 0x039C9C 0E:9C8C: 96        .byte $96   ; 
- D 0 - I - 0x039C9D 0E:9C8D: 96        .byte $96   ; 
- D 0 - I - 0x039C9E 0E:9C8E: 8F        .byte $8F   ; 
- D 0 - I - 0x039C9F 0E:9C8F: 98        .byte $98   ; 
- D 0 - I - 0x039CA0 0E:9C90: 91        .byte $91   ; 
- D 0 - I - 0x039CA1 0E:9C91: 8F        .byte $8F   ; 
- D 0 - I - 0x039CA2 0E:9C92: A7        .byte $A7   ; 
- D 0 - I - 0x039CA3 0E:9C93: 00        .byte $00   ; 
- D 0 - I - 0x039CA4 0E:9C94: 96        .byte $96   ; 
- D 0 - I - 0x039CA5 0E:9C95: 8F        .byte $8F   ; 
- D 0 - I - 0x039CA6 0E:9C96: 9E        .byte $9E   ; 
- D 0 - I - 0x039CA7 0E:9C97: 00        .byte $00   ; 
- D 0 - I - 0x039CA8 0E:9C98: 9F        .byte $9F   ; 
- D 0 - I - 0x039CA9 0E:9C99: 9D        .byte $9D   ; 
- D 0 - I - 0x039CAA 0E:9C9A: 00        .byte $00   ; 
- D 0 - I - 0x039CAB 0E:9C9B: 97        .byte $97   ; 
- D 0 - I - 0x039CAC 0E:9C9C: 8F        .byte $8F   ; 
- D 0 - I - 0x039CAD 0E:9C9D: 8F        .byte $8F   ; 
- D 0 - I - 0x039CAE 0E:9C9E: 9E        .byte $9E   ; 
- D 0 - I - 0x039CAF 0E:9C9F: 00        .byte $00   ; 
- D 0 - I - 0x039CB0 0E:9CA0: 93        .byte $93   ; 
- D 0 - I - 0x039CB1 0E:9CA1: 98        .byte $98   ; 
- D 0 - I - 0x039CB2 0E:9CA2: BD        .byte $BD   ; 
- D 0 - I - 0x039CB3 0E:9CA3: 9E        .byte $9E   ; 
- D 0 - I - 0x039CB4 0E:9CA4: 92        .byte $92   ; 
- D 0 - I - 0x039CB5 0E:9CA5: 8F        .byte $8F   ; 
- D 0 - I - 0x039CB6 0E:9CA6: 00        .byte $00   ; 
- D 0 - I - 0x039CB7 0E:9CA7: 9D        .byte $9D   ; 
- D 0 - I - 0x039CB8 0E:9CA8: 9E        .byte $9E   ; 
- D 0 - I - 0x039CB9 0E:9CA9: 9C        .byte $9C   ; 
- D 0 - I - 0x039CBA 0E:9CAA: 8F        .byte $8F   ; 
- D 0 - I - 0x039CBB 0E:9CAB: 8F        .byte $8F   ; 
- D 0 - I - 0x039CBC 0E:9CAC: 9E        .byte $9E   ; 
- D 0 - I - 0x039CBD 0E:9CAD: 9D        .byte $9D   ; 
- D 0 - I - 0x039CBE 0E:9CAE: 00        .byte $00   ; 
- D 0 - I - 0x039CBF 0E:9CAF: 99        .byte $99   ; 
- D 0 - I - 0x039CC0 0E:9CB0: 90        .byte $90   ; 
- D 0 - I - 0x039CC1 0E:9CB1: 00        .byte $00   ; 
- D 0 - I - 0x039CC2 0E:9CB2: 97        .byte $97   ; 
- D 0 - I - 0x039CC3 0E:9CB3: 8B        .byte $8B   ; 
- D 0 - I - 0x039CC4 0E:9CB4: 98        .byte $98   ; 
- D 0 - I - 0x039CC5 0E:9CB5: 92        .byte $92   ; 
- D 0 - I - 0x039CC6 0E:9CB6: 8B        .byte $8B   ; 
- D 0 - I - 0x039CC7 0E:9CB7: 9E        .byte $9E   ; 
- D 0 - I - 0x039CC8 0E:9CB8: 9E        .byte $9E   ; 
- D 0 - I - 0x039CC9 0E:9CB9: 8B        .byte $8B   ; 
- D 0 - I - 0x039CCA 0E:9CBA: 98        .byte $98   ; 
- D 0 - I - 0x039CCB 0E:9CBB: BB        .byte $BB   ; 
- D 0 - I - 0x039CCC 0E:9CBC: 80        .byte $80   ; 
- D 0 - I - 0x039CCD 0E:9CBD: BC        .byte $BC   ; 
- D 0 - I - 0x039CCE 0E:9CBE: 8B        .byte $8B   ; 
- D 0 - I - 0x039CCF 0E:9CBF: 98        .byte $98   ; 
- D 0 - I - 0x039CD0 0E:9CC0: 8E        .byte $8E   ; 
- D 0 - I - 0x039CD1 0E:9CC1: 00        .byte $00   ; 
- D 0 - I - 0x039CD2 0E:9CC2: 9D        .byte $9D   ; 
- D 0 - I - 0x039CD3 0E:9CC3: 8F        .byte $8F   ; 
- D 0 - I - 0x039CD4 0E:9CC4: 8F        .byte $8F   ; 
- D 0 - I - 0x039CD5 0E:9CC5: 00        .byte $00   ; 
- D 0 - I - 0x039CD6 0E:9CC6: A1        .byte $A1   ; 
- D 0 - I - 0x039CD7 0E:9CC7: 92        .byte $92   ; 
- D 0 - I - 0x039CD8 0E:9CC8: 93        .byte $93   ; 
- D 0 - I - 0x039CD9 0E:9CC9: 8D        .byte $8D   ; 
- D 0 - I - 0x039CDA 0E:9CCA: 92        .byte $92   ; 
- D 0 - I - 0x039CDB 0E:9CCB: 00        .byte $00   ; 
- D 0 - I - 0x039CDC 0E:9CCC: 99        .byte $99   ; 
- D 0 - I - 0x039CDD 0E:9CCD: 90        .byte $90   ; 
- D 0 - I - 0x039CDE 0E:9CCE: 00        .byte $00   ; 
- D 0 - I - 0x039CDF 0E:9CCF: 9F        .byte $9F   ; 
- D 0 - I - 0x039CE0 0E:9CD0: 9D        .byte $9D   ; 
- D 0 - I - 0x039CE1 0E:9CD1: 00        .byte $00   ; 
- D 0 - I - 0x039CE2 0E:9CD2: 93        .byte $93   ; 
- D 0 - I - 0x039CE3 0E:9CD3: 9D        .byte $9D   ; 
- D 0 - I - 0x039CE4 0E:9CD4: BD        .byte $BD   ; 
- D 0 - I - 0x039CE5 0E:9CD5: 9E        .byte $9E   ; 
- D 0 - I - 0x039CE6 0E:9CD6: 92        .byte $92   ; 
- D 0 - I - 0x039CE7 0E:9CD7: 8F        .byte $8F   ; 
- D 0 - I - 0x039CE8 0E:9CD8: 00        .byte $00   ; 
- D 0 - I - 0x039CE9 0E:9CD9: 97        .byte $97   ; 
- D 0 - I - 0x039CEA 0E:9CDA: 99        .byte $99   ; 
- D 0 - I - 0x039CEB 0E:9CDB: 9D        .byte $9D   ; 
- D 0 - I - 0x039CEC 0E:9CDC: 9E        .byte $9E   ; 
- D 0 - I - 0x039CED 0E:9CDD: 00        .byte $00   ; 
- D 0 - I - 0x039CEE 0E:9CDE: 9A        .byte $9A   ; 
- D 0 - I - 0x039CEF 0E:9CDF: 99        .byte $99   ; 
- D 0 - I - 0x039CF0 0E:9CE0: A1        .byte $A1   ; 
- D 0 - I - 0x039CF1 0E:9CE1: 8F        .byte $8F   ; 
- D 0 - I - 0x039CF2 0E:9CE2: 9C        .byte $9C   ; 
- D 0 - I - 0x039CF3 0E:9CE3: 90        .byte $90   ; 
- D 0 - I - 0x039CF4 0E:9CE4: 9F        .byte $9F   ; 
- D 0 - I - 0x039CF5 0E:9CE5: 96        .byte $96   ; 
- D 0 - I - 0x039CF6 0E:9CE6: A7        .byte $A7   ; 
- D 0 - I - 0x039CF7 0E:9CE7: BB        .byte $BB   ; 
- D 0 - I - 0x039CF8 0E:9CE8: 80        .byte $80   ; 
- D 0 - I - 0x039CF9 0E:9CE9: BC        .byte $BC   ; 
- D 0 - I - 0x039CFA 0E:9CEA: 99        .byte $99   ; 
- D 0 - I - 0x039CFB 0E:9CEB: 90        .byte $90   ; 
- D 0 - I - 0x039CFC 0E:9CEC: 00        .byte $00   ; 
- D 0 - I - 0x039CFD 0E:9CED: 8D        .byte $8D   ; 
- D 0 - I - 0x039CFE 0E:9CEE: 99        .byte $99   ; 
- D 0 - I - 0x039CFF 0E:9CEF: 9F        .byte $9F   ; 
- D 0 - I - 0x039D00 0E:9CF0: 9C        .byte $9C   ; 
- D 0 - I - 0x039D01 0E:9CF1: 9D        .byte $9D   ; 
- D 0 - I - 0x039D02 0E:9CF2: 8F        .byte $8F   ; 
- D 0 - I - 0x039D03 0E:9CF3: A8        .byte $A8   ; 
- D 0 - I - 0x039D04 0E:9CF4: 00        .byte $00   ; 
- D 0 - I - 0x039D05 0E:9CF5: A3        .byte $A3   ; 
- D 0 - I - 0x039D06 0E:9CF6: 99        .byte $99   ; 
- D 0 - I - 0x039D07 0E:9CF7: 9F        .byte $9F   ; 
- D 0 - I - 0x039D08 0E:9CF8: 00        .byte $00   ; 
- D 0 - I - 0x039D09 0E:9CF9: 9C        .byte $9C   ; 
- D 0 - I - 0x039D0A 0E:9CFA: 8F        .byte $8F   ; 
- D 0 - I - 0x039D0B 0E:9CFB: 8B        .byte $8B   ; 
- D 0 - I - 0x039D0C 0E:9CFC: 96        .byte $96   ; 
- D 0 - I - 0x039D0D 0E:9CFD: 96        .byte $96   ; 
- D 0 - I - 0x039D0E 0E:9CFE: A3        .byte $A3   ; 
- D 0 - I - 0x039D0F 0E:9CFF: BD        .byte $BD   ; 
- D 0 - I - 0x039D10 0E:9D00: 8E        .byte $8E   ; 
- D 0 - I - 0x039D11 0E:9D01: 99        .byte $99   ; 
- D 0 - I - 0x039D12 0E:9D02: 98        .byte $98   ; 
- D 0 - I - 0x039D13 0E:9D03: AE        .byte $AE   ; 
- D 0 - I - 0x039D14 0E:9D04: 9E        .byte $9E   ; 
- D 0 - I - 0x039D15 0E:9D05: 00        .byte $00   ; 
- D 0 - I - 0x039D16 0E:9D06: 9D        .byte $9D   ; 
- D 0 - I - 0x039D17 0E:9D07: 9E        .byte $9E   ; 
- D 0 - I - 0x039D18 0E:9D08: 8B        .byte $8B   ; 
- D 0 - I - 0x039D19 0E:9D09: 98        .byte $98   ; 
- D 0 - I - 0x039D1A 0E:9D0A: 8E        .byte $8E   ; 
- D 0 - I - 0x039D1B 0E:9D0B: 00        .byte $00   ; 
- D 0 - I - 0x039D1C 0E:9D0C: 8B        .byte $8B   ; 
- D 0 - I - 0x039D1D 0E:9D0D: 00        .byte $00   ; 
- D 0 - I - 0x039D1E 0E:9D0E: 8D        .byte $8D   ; 
- D 0 - I - 0x039D1F 0E:9D0F: 92        .byte $92   ; 
- D 0 - I - 0x039D20 0E:9D10: 8B        .byte $8B   ; 
- D 0 - I - 0x039D21 0E:9D11: 98        .byte $98   ; 
- D 0 - I - 0x039D22 0E:9D12: 8D        .byte $8D   ; 
- D 0 - I - 0x039D23 0E:9D13: 8F        .byte $8F   ; 
- D 0 - I - 0x039D24 0E:9D14: AC        .byte $AC   ; 
- D 0 - I - 0x039D25 0E:9D15: AB        .byte $AB   ; 
- D 0 - I - 0x039D26 0E:9D16: BD        .byte $BD   ; 
- D 0 - I - 0x039D27 0E:9D17: 00        .byte $00   ; 
- D 0 - I - 0x039D28 0E:9D18: 00        .byte $00   ; 
- D 0 - I - 0x039D29 0E:9D19: 00        .byte $00   ; 
- D 0 - I - 0x039D2A 0E:9D1A: 00        .byte $00   ; 
- D 0 - I - 0x039D2B 0E:9D1B: 00        .byte $00   ; 
- D 0 - I - 0x039D2C 0E:9D1C: 00        .byte $00   ; 
- D 0 - I - 0x039D2D 0E:9D1D: 00        .byte $00   ; 
- D 0 - I - 0x039D2E 0E:9D1E: 00        .byte $00   ; 
- D 0 - I - 0x039D2F 0E:9D1F: 00        .byte $00   ; 
- D 0 - I - 0x039D30 0E:9D20: 00        .byte $00   ; 
- D 0 - I - 0x039D31 0E:9D21: 00        .byte $00   ; 
- D 0 - I - 0x039D32 0E:9D22: A7        .byte $A7   ; 
- D 0 - I - 0x039D33 0E:9D23: A7        .byte $A7   ; 
- D 0 - I - 0x039D34 0E:9D24: A7        .byte $A7   ; 
- D 0 - I - 0x039D35 0E:9D25: A7        .byte $A7   ; 
- D 0 - I - 0x039D36 0E:9D26: 9D        .byte $9D   ; 
- D 0 - I - 0x039D37 0E:9D27: 92        .byte $92   ; 
- D 0 - I - 0x039D38 0E:9D28: 9C        .byte $9C   ; 
- D 0 - I - 0x039D39 0E:9D29: 8F        .byte $8F   ; 
- D 0 - I - 0x039D3A 0E:9D2A: 8E        .byte $8E   ; 
- D 0 - I - 0x039D3B 0E:9D2B: 8E        .byte $8E   ; 
- D 0 - I - 0x039D3C 0E:9D2C: 8F        .byte $8F   ; 
- D 0 - I - 0x039D3D 0E:9D2D: 9C        .byte $9C   ; 
- D 0 - I - 0x039D3E 0E:9D2E: BB        .byte $BB   ; 
- D 0 - I - 0x039D3F 0E:9D2F: 20        .byte $20   ; 
- D 0 - I - 0x039D40 0E:9D30: FF        .byte $FF   ; 



off_9D31_03:
- D 0 - I - 0x039D41 0E:9D31: 00        .byte $00   ; 
- D 0 - I - 0x039D42 0E:9D32: AA        .byte $AA   ; 
- D 0 - I - 0x039D43 0E:9D33: 9D        .byte $9D   ; 
- D 0 - I - 0x039D44 0E:9D34: 92        .byte $92   ; 
- D 0 - I - 0x039D45 0E:9D35: 9C        .byte $9C   ; 
- D 0 - I - 0x039D46 0E:9D36: 8F        .byte $8F   ; 
- D 0 - I - 0x039D47 0E:9D37: 8E        .byte $8E   ; 
- D 0 - I - 0x039D48 0E:9D38: 8E        .byte $8E   ; 
- D 0 - I - 0x039D49 0E:9D39: 8F        .byte $8F   ; 
- D 0 - I - 0x039D4A 0E:9D3A: 9C        .byte $9C   ; 
- D 0 - I - 0x039D4B 0E:9D3B: A8        .byte $A8   ; 
- D 0 - I - 0x039D4C 0E:9D3C: 00        .byte $00   ; 
- D 0 - I - 0x039D4D 0E:9D3D: 9E        .byte $9E   ; 
- D 0 - I - 0x039D4E 0E:9D3E: 92        .byte $92   ; 
- D 0 - I - 0x039D4F 0E:9D3F: 93        .byte $93   ; 
- D 0 - I - 0x039D50 0E:9D40: 9D        .byte $9D   ; 
- D 0 - I - 0x039D51 0E:9D41: 00        .byte $00   ; 
- D 0 - I - 0x039D52 0E:9D42: 8C        .byte $8C   ; 
- D 0 - I - 0x039D53 0E:9D43: 8F        .byte $8F   ; 
- D 0 - I - 0x039D54 0E:9D44: 9E        .byte $9E   ; 
- D 0 - I - 0x039D55 0E:9D45: 9E        .byte $9E   ; 
- D 0 - I - 0x039D56 0E:9D46: 8F        .byte $8F   ; 
- D 0 - I - 0x039D57 0E:9D47: 9C        .byte $9C   ; 
- D 0 - I - 0x039D58 0E:9D48: BD        .byte $BD   ; 
- D 0 - I - 0x039D59 0E:9D49: 00        .byte $00   ; 
- D 0 - I - 0x039D5A 0E:9D4A: 98        .byte $98   ; 
- D 0 - I - 0x039D5B 0E:9D4B: 99        .byte $99   ; 
- D 0 - I - 0x039D5C 0E:9D4C: 9E        .byte $9E   ; 
- D 0 - I - 0x039D5D 0E:9D4D: 00        .byte $00   ; 
- D 0 - I - 0x039D5E 0E:9D4E: 8C        .byte $8C   ; 
- D 0 - I - 0x039D5F 0E:9D4F: 8F        .byte $8F   ; 
- D 0 - I - 0x039D60 0E:9D50: 00        .byte $00   ; 
- D 0 - I - 0x039D61 0E:9D51: 99        .byte $99   ; 
- D 0 - I - 0x039D62 0E:9D52: 98        .byte $98   ; 
- D 0 - I - 0x039D63 0E:9D53: 8F        .byte $8F   ; 
- D 0 - I - 0x039D64 0E:9D54: 00        .byte $00   ; 
- D 0 - I - 0x039D65 0E:9D55: 99        .byte $99   ; 
- D 0 - I - 0x039D66 0E:9D56: 90        .byte $90   ; 
- D 0 - I - 0x039D67 0E:9D57: 00        .byte $00   ; 
- D 0 - I - 0x039D68 0E:9D58: A3        .byte $A3   ; 
- D 0 - I - 0x039D69 0E:9D59: 99        .byte $99   ; 
- D 0 - I - 0x039D6A 0E:9D5A: 9F        .byte $9F   ; 
- D 0 - I - 0x039D6B 0E:9D5B: 9C        .byte $9C   ; 
- D 0 - I - 0x039D6C 0E:9D5C: 00        .byte $00   ; 
- D 0 - I - 0x039D6D 0E:9D5D: 96        .byte $96   ; 
- D 0 - I - 0x039D6E 0E:9D5E: 99        .byte $99   ; 
- D 0 - I - 0x039D6F 0E:9D5F: 9F        .byte $9F   ; 
- D 0 - I - 0x039D70 0E:9D60: 9D        .byte $9D   ; 
- D 0 - I - 0x039D71 0E:9D61: A3        .byte $A3   ; 
- D 0 - I - 0x039D72 0E:9D62: BD        .byte $BD   ; 
- D 0 - I - 0x039D73 0E:9D63: 00        .byte $00   ; 
- D 0 - I - 0x039D74 0E:9D64: 9E        .byte $9E   ; 
- D 0 - I - 0x039D75 0E:9D65: 9C        .byte $9C   ; 
- D 0 - I - 0x039D76 0E:9D66: 93        .byte $93   ; 
- D 0 - I - 0x039D77 0E:9D67: 8D        .byte $8D   ; 
- D 0 - I - 0x039D78 0E:9D68: 95        .byte $95   ; 
- D 0 - I - 0x039D79 0E:9D69: 9D        .byte $9D   ; 
- D 0 - I - 0x039D7A 0E:9D6A: AC        .byte $AC   ; 
- D 0 - I - 0x039D7B 0E:9D6B: AB        .byte $AB   ; 
- D 0 - I - 0x039D7C 0E:9D6C: BB        .byte $BB   ; 
- D 0 - I - 0x039D7D 0E:9D6D: FF        .byte $FF   ; 
- D 0 - I - 0x039D7E 0E:9D6E: BC        .byte $BC   ; 
- D 0 - I - 0x039D7F 0E:9D6F: 00        .byte $00   ; 
- D 0 - I - 0x039D80 0E:9D70: 00        .byte $00   ; 
- D 0 - I - 0x039D81 0E:9D71: 00        .byte $00   ; 
- D 0 - I - 0x039D82 0E:9D72: AA        .byte $AA   ; 
- D 0 - I - 0x039D83 0E:9D73: A3        .byte $A3   ; 
- D 0 - I - 0x039D84 0E:9D74: 99        .byte $99   ; 
- D 0 - I - 0x039D85 0E:9D75: 9F        .byte $9F   ; 
- D 0 - I - 0x039D86 0E:9D76: 00        .byte $00   ; 
- D 0 - I - 0x039D87 0E:9D77: 92        .byte $92   ; 
- D 0 - I - 0x039D88 0E:9D78: 8B        .byte $8B   ; 
- D 0 - I - 0x039D89 0E:9D79: A0        .byte $A0   ; 
- D 0 - I - 0x039D8A 0E:9D7A: 8F        .byte $8F   ; 
- D 0 - I - 0x039D8B 0E:9D7B: 00        .byte $00   ; 
- D 0 - I - 0x039D8C 0E:9D7C: 98        .byte $98   ; 
- D 0 - I - 0x039D8D 0E:9D7D: 99        .byte $99   ; 
- D 0 - I - 0x039D8E 0E:9D7E: 9E        .byte $9E   ; 
- D 0 - I - 0x039D8F 0E:9D7F: 00        .byte $00   ; 
- D 0 - I - 0x039D90 0E:9D80: 9D        .byte $9D   ; 
- D 0 - I - 0x039D91 0E:9D81: 8F        .byte $8F   ; 
- D 0 - I - 0x039D92 0E:9D82: 8F        .byte $8F   ; 
- D 0 - I - 0x039D93 0E:9D83: 98        .byte $98   ; 
- D 0 - I - 0x039D94 0E:9D84: BD        .byte $BD   ; 
- D 0 - I - 0x039D95 0E:9D85: 00        .byte $00   ; 
- D 0 - I - 0x039D96 0E:9D86: 00        .byte $00   ; 
- D 0 - I - 0x039D97 0E:9D87: 00        .byte $00   ; 
- D 0 - I - 0x039D98 0E:9D88: 9E        .byte $9E   ; 
- D 0 - I - 0x039D99 0E:9D89: 92        .byte $92   ; 
- D 0 - I - 0x039D9A 0E:9D8A: 8F        .byte $8F   ; 
- D 0 - I - 0x039D9B 0E:9D8B: 00        .byte $00   ; 
- D 0 - I - 0x039D9C 0E:9D8C: 96        .byte $96   ; 
- D 0 - I - 0x039D9D 0E:9D8D: 8B        .byte $8B   ; 
- D 0 - I - 0x039D9E 0E:9D8E: 9D        .byte $9D   ; 
- D 0 - I - 0x039D9F 0E:9D8F: 9E        .byte $9E   ; 
- D 0 - I - 0x039DA0 0E:9D90: 00        .byte $00   ; 
- D 0 - I - 0x039DA1 0E:9D91: 99        .byte $99   ; 
- D 0 - I - 0x039DA2 0E:9D92: 90        .byte $90   ; 
- D 0 - I - 0x039DA3 0E:9D93: 00        .byte $00   ; 
- D 0 - I - 0x039DA4 0E:9D94: 97        .byte $97   ; 
- D 0 - I - 0x039DA5 0E:9D95: 8F        .byte $8F   ; 
- D 0 - I - 0x039DA6 0E:9D96: AC        .byte $AC   ; 
- D 0 - I - 0x039DA7 0E:9D97: AC        .byte $AC   ; 
- D 0 - I - 0x039DA8 0E:9D98: AB        .byte $AB   ; 
- D 0 - I - 0x039DA9 0E:9D99: BB        .byte $BB   ; 
- D 0 - I - 0x039DAA 0E:9D9A: FF        .byte $FF   ; 
- D 0 - I - 0x039DAB 0E:9D9B: BE        .byte $BE   ; 
- D 0 - I - 0x039DAC 0E:9D9C: BB        .byte $BB   ; 
- D 0 - I - 0x039DAD 0E:9D9D: FF        .byte $FF   ; 
- D 0 - I - 0x039DAE 0E:9D9E: BC        .byte $BC   ; 
- D 0 - I - 0x039DAF 0E:9D9F: 00        .byte $00   ; 
- D 0 - I - 0x039DB0 0E:9DA0: 00        .byte $00   ; 
- D 0 - I - 0x039DB1 0E:9DA1: 8D        .byte $8D   ; 
- D 0 - I - 0x039DB2 0E:9DA2: 92        .byte $92   ; 
- D 0 - I - 0x039DB3 0E:9DA3: 8B        .byte $8B   ; 
- D 0 - I - 0x039DB4 0E:9DA4: 96        .byte $96   ; 
- D 0 - I - 0x039DB5 0E:9DA5: 96        .byte $96   ; 
- D 0 - I - 0x039DB6 0E:9DA6: 8F        .byte $8F   ; 
- D 0 - I - 0x039DB7 0E:9DA7: 98        .byte $98   ; 
- D 0 - I - 0x039DB8 0E:9DA8: 91        .byte $91   ; 
- D 0 - I - 0x039DB9 0E:9DA9: 8F        .byte $8F   ; 
- D 0 - I - 0x039DBA 0E:9DAA: 00        .byte $00   ; 
- D 0 - I - 0x039DBB 0E:9DAB: 9E        .byte $9E   ; 
- D 0 - I - 0x039DBC 0E:9DAC: 92        .byte $92   ; 
- D 0 - I - 0x039DBD 0E:9DAD: 8F        .byte $8F   ; 
- D 0 - I - 0x039DBE 0E:9DAE: 00        .byte $00   ; 
- D 0 - I - 0x039DBF 0E:9DAF: 98        .byte $98   ; 
- D 0 - I - 0x039DC0 0E:9DB0: 99        .byte $99   ; 
- D 0 - I - 0x039DC1 0E:9DB1: 9C        .byte $9C   ; 
- D 0 - I - 0x039DC2 0E:9DB2: 97        .byte $97   ; 
- D 0 - I - 0x039DC3 0E:9DB3: 8B        .byte $8B   ; 
- D 0 - I - 0x039DC4 0E:9DB4: 96        .byte $96   ; 
- D 0 - I - 0x039DC5 0E:9DB5: BD        .byte $BD   ; 
- D 0 - I - 0x039DC6 0E:9DB6: 00        .byte $00   ; 
- D 0 - I - 0x039DC7 0E:9DB7: 00        .byte $00   ; 
- D 0 - I - 0x039DC8 0E:9DB8: 97        .byte $97   ; 
- D 0 - I - 0x039DC9 0E:9DB9: 99        .byte $99   ; 
- D 0 - I - 0x039DCA 0E:9DBA: 8E        .byte $8E   ; 
- D 0 - I - 0x039DCB 0E:9DBB: 8F        .byte $8F   ; 
- D 0 - I - 0x039DCC 0E:9DBC: 00        .byte $00   ; 
- D 0 - I - 0x039DCD 0E:9DBD: 98        .byte $98   ; 
- D 0 - I - 0x039DCE 0E:9DBE: 8F        .byte $8F   ; 
- D 0 - I - 0x039DCF 0E:9DBF: A2        .byte $A2   ; 
- D 0 - I - 0x039DD0 0E:9DC0: 9E        .byte $9E   ; 
- D 0 - I - 0x039DD1 0E:9DC1: 00        .byte $00   ; 
- D 0 - I - 0x039DD2 0E:9DC2: 9E        .byte $9E   ; 
- D 0 - I - 0x039DD3 0E:9DC3: 93        .byte $93   ; 
- D 0 - I - 0x039DD4 0E:9DC4: 97        .byte $97   ; 
- D 0 - I - 0x039DD5 0E:9DC5: 8F        .byte $8F   ; 
- D 0 - I - 0x039DD6 0E:9DC6: AC        .byte $AC   ; 
- D 0 - I - 0x039DD7 0E:9DC7: BD        .byte $BD   ; 
- D 0 - I - 0x039DD8 0E:9DC8: BD        .byte $BD   ; 
- D 0 - I - 0x039DD9 0E:9DC9: 00        .byte $00   ; 
- D 0 - I - 0x039DDA 0E:9DCA: 00        .byte $00   ; 
- D 0 - I - 0x039DDB 0E:9DCB: 00        .byte $00   ; 
- D 0 - I - 0x039DDC 0E:9DCC: 00        .byte $00   ; 
- D 0 - I - 0x039DDD 0E:9DCD: 00        .byte $00   ; 
- D 0 - I - 0x039DDE 0E:9DCE: A6        .byte $A6   ; 
- D 0 - I - 0x039DDF 0E:9DCF: 00        .byte $00   ; 
- D 0 - I - 0x039DE0 0E:9DD0: 95        .byte $95   ; 
- D 0 - I - 0x039DE1 0E:9DD1: 99        .byte $99   ; 
- D 0 - I - 0x039DE2 0E:9DD2: 98        .byte $98   ; 
- D 0 - I - 0x039DE3 0E:9DD3: 8B        .byte $8B   ; 
- D 0 - I - 0x039DE4 0E:9DD4: 97        .byte $97   ; 
- D 0 - I - 0x039DE5 0E:9DD5: 93        .byte $93   ; 
- D 0 - I - 0x039DE6 0E:9DD6: 00        .byte $00   ; 
- D 0 - I - 0x039DE7 0E:9DD7: 82        .byte $82   ; 
- D 0 - I - 0x039DE8 0E:9DD8: 8A        .byte $8A   ; 
- D 0 - I - 0x039DE9 0E:9DD9: 8A        .byte $8A   ; 
- D 0 - I - 0x039DEA 0E:9DDA: 84        .byte $84   ; 
- D 0 - I - 0x039DEB 0E:9DDB: BD        .byte $BD   ; 
- D 0 - I - 0x039DEC 0E:9DDC: BD        .byte $BD   ; 
- D 0 - I - 0x039DED 0E:9DDD: 00        .byte $00   ; 
- D 0 - I - 0x039DEE 0E:9DDE: 00        .byte $00   ; 
- D 0 - I - 0x039DEF 0E:9DDF: 8B        .byte $8B   ; 
- D 0 - I - 0x039DF0 0E:9DE0: 96        .byte $96   ; 
- D 0 - I - 0x039DF1 0E:9DE1: 96        .byte $96   ; 
- D 0 - I - 0x039DF2 0E:9DE2: 00        .byte $00   ; 
- D 0 - I - 0x039DF3 0E:9DE3: 9C        .byte $9C   ; 
- D 0 - I - 0x039DF4 0E:9DE4: 93        .byte $93   ; 
- D 0 - I - 0x039DF5 0E:9DE5: 91        .byte $91   ; 
- D 0 - I - 0x039DF6 0E:9DE6: 92        .byte $92   ; 
- D 0 - I - 0x039DF7 0E:9DE7: 9E        .byte $9E   ; 
- D 0 - I - 0x039DF8 0E:9DE8: 9D        .byte $9D   ; 
- D 0 - I - 0x039DF9 0E:9DE9: 00        .byte $00   ; 
- D 0 - I - 0x039DFA 0E:9DEA: 9C        .byte $9C   ; 
- D 0 - I - 0x039DFB 0E:9DEB: 8F        .byte $8F   ; 
- D 0 - I - 0x039DFC 0E:9DEC: 9D        .byte $9D   ; 
- D 0 - I - 0x039DFD 0E:9DED: 8F        .byte $8F   ; 
- D 0 - I - 0x039DFE 0E:9DEE: 9C        .byte $9C   ; 
- D 0 - I - 0x039DFF 0E:9DEF: A0        .byte $A0   ; 
- D 0 - I - 0x039E00 0E:9DF0: 8F        .byte $8F   ; 
- D 0 - I - 0x039E01 0E:9DF1: 8E        .byte $8E   ; 
- D 0 - I - 0x039E02 0E:9DF2: A7        .byte $A7   ; 
- D 0 - I - 0x039E03 0E:9DF3: BB        .byte $BB   ; 
- D 0 - I - 0x039E04 0E:9DF4: F0        .byte $F0   ; 
- D 0 - I - 0x039E05 0E:9DF5: FF        .byte $FF   ; 



off_9DF6_04:
- D 0 - I - 0x039E06 0E:9DF6: AA        .byte $AA   ; 
- D 0 - I - 0x039E07 0E:9DF7: A3        .byte $A3   ; 
- D 0 - I - 0x039E08 0E:9DF8: 99        .byte $99   ; 
- D 0 - I - 0x039E09 0E:9DF9: 9F        .byte $9F   ; 
- D 0 - I - 0x039E0A 0E:9DFA: 00        .byte $00   ; 
- D 0 - I - 0x039E0B 0E:9DFB: 92        .byte $92   ; 
- D 0 - I - 0x039E0C 0E:9DFC: 8B        .byte $8B   ; 
- D 0 - I - 0x039E0D 0E:9DFD: A0        .byte $A0   ; 
- D 0 - I - 0x039E0E 0E:9DFE: 8F        .byte $8F   ; 
- D 0 - I - 0x039E0F 0E:9DFF: 00        .byte $00   ; 
- D 0 - I - 0x039E10 0E:9E00: 9A        .byte $9A   ; 
- D 0 - I - 0x039E11 0E:9E01: 8F        .byte $8F   ; 
- D 0 - I - 0x039E12 0E:9E02: 9C        .byte $9C   ; 
- D 0 - I - 0x039E13 0E:9E03: 90        .byte $90   ; 
- D 0 - I - 0x039E14 0E:9E04: 99        .byte $99   ; 
- D 0 - I - 0x039E15 0E:9E05: 9C        .byte $9C   ; 
- D 0 - I - 0x039E16 0E:9E06: 97        .byte $97   ; 
- D 0 - I - 0x039E17 0E:9E07: 8F        .byte $8F   ; 
- D 0 - I - 0x039E18 0E:9E08: 8E        .byte $8E   ; 
- D 0 - I - 0x039E19 0E:9E09: 00        .byte $00   ; 
- D 0 - I - 0x039E1A 0E:9E0A: A1        .byte $A1   ; 
- D 0 - I - 0x039E1B 0E:9E0B: 8F        .byte $8F   ; 
- D 0 - I - 0x039E1C 0E:9E0C: 96        .byte $96   ; 
- D 0 - I - 0x039E1D 0E:9E0D: 96        .byte $96   ; 
- D 0 - I - 0x039E1E 0E:9E0E: A8        .byte $A8   ; 
- D 0 - I - 0x039E1F 0E:9E0F: BD        .byte $BD   ; 
- D 0 - I - 0x039E20 0E:9E10: 97        .byte $97   ; 
- D 0 - I - 0x039E21 0E:9E11: A3        .byte $A3   ; 
- D 0 - I - 0x039E22 0E:9E12: 00        .byte $00   ; 
- D 0 - I - 0x039E23 0E:9E13: 9D        .byte $9D   ; 
- D 0 - I - 0x039E24 0E:9E14: 99        .byte $99   ; 
- D 0 - I - 0x039E25 0E:9E15: 98        .byte $98   ; 
- D 0 - I - 0x039E26 0E:9E16: 9D        .byte $9D   ; 
- D 0 - I - 0x039E27 0E:9E17: A7        .byte $A7   ; 
- D 0 - I - 0x039E28 0E:9E18: 00        .byte $00   ; 
- D 0 - I - 0x039E29 0E:9E19: 98        .byte $98   ; 
- D 0 - I - 0x039E2A 0E:9E1A: 99        .byte $99   ; 
- D 0 - I - 0x039E2B 0E:9E1B: A1        .byte $A1   ; 
- D 0 - I - 0x039E2C 0E:9E1C: 00        .byte $00   ; 
- D 0 - I - 0x039E2D 0E:9E1D: 96        .byte $96   ; 
- D 0 - I - 0x039E2E 0E:9E1E: 8F        .byte $8F   ; 
- D 0 - I - 0x039E2F 0E:9E1F: 9E        .byte $9E   ; 
- D 0 - I - 0x039E30 0E:9E20: 00        .byte $00   ; 
- D 0 - I - 0x039E31 0E:9E21: 9F        .byte $9F   ; 
- D 0 - I - 0x039E32 0E:9E22: 9D        .byte $9D   ; 
- D 0 - I - 0x039E33 0E:9E23: BD        .byte $BD   ; 
- D 0 - I - 0x039E34 0E:9E24: 8D        .byte $8D   ; 
- D 0 - I - 0x039E35 0E:9E25: 8F        .byte $8F   ; 
- D 0 - I - 0x039E36 0E:9E26: 96        .byte $96   ; 
- D 0 - I - 0x039E37 0E:9E27: 8F        .byte $8F   ; 
- D 0 - I - 0x039E38 0E:9E28: 8C        .byte $8C   ; 
- D 0 - I - 0x039E39 0E:9E29: 9C        .byte $9C   ; 
- D 0 - I - 0x039E3A 0E:9E2A: 8B        .byte $8B   ; 
- D 0 - I - 0x039E3B 0E:9E2B: 9E        .byte $9E   ; 
- D 0 - I - 0x039E3C 0E:9E2C: 8F        .byte $8F   ; 
- D 0 - I - 0x039E3D 0E:9E2D: 00        .byte $00   ; 
- D 0 - I - 0x039E3E 0E:9E2E: 99        .byte $99   ; 
- D 0 - I - 0x039E3F 0E:9E2F: 9F        .byte $9F   ; 
- D 0 - I - 0x039E40 0E:9E30: 9C        .byte $9C   ; 
- D 0 - I - 0x039E41 0E:9E31: 00        .byte $00   ; 
- D 0 - I - 0x039E42 0E:9E32: A0        .byte $A0   ; 
- D 0 - I - 0x039E43 0E:9E33: 93        .byte $93   ; 
- D 0 - I - 0x039E44 0E:9E34: 8D        .byte $8D   ; 
- D 0 - I - 0x039E45 0E:9E35: 9E        .byte $9E   ; 
- D 0 - I - 0x039E46 0E:9E36: 99        .byte $99   ; 
- D 0 - I - 0x039E47 0E:9E37: 9C        .byte $9C   ; 
- D 0 - I - 0x039E48 0E:9E38: A3        .byte $A3   ; 
- D 0 - I - 0x039E49 0E:9E39: AC        .byte $AC   ; 
- D 0 - I - 0x039E4A 0E:9E3A: AB        .byte $AB   ; 
- D 0 - I - 0x039E4B 0E:9E3B: BB        .byte $BB   ; 
- D 0 - I - 0x039E4C 0E:9E3C: FF        .byte $FF   ; 
- D 0 - I - 0x039E4D 0E:9E3D: FF        .byte $FF   ; 



off_9E3E_05:
- D 0 - I - 0x039E4E 0E:9E3E: AA        .byte $AA   ; 
- D 0 - I - 0x039E4F 0E:9E3F: A3        .byte $A3   ; 
- D 0 - I - 0x039E50 0E:9E40: 99        .byte $99   ; 
- D 0 - I - 0x039E51 0E:9E41: 9F        .byte $9F   ; 
- D 0 - I - 0x039E52 0E:9E42: 00        .byte $00   ; 
- D 0 - I - 0x039E53 0E:9E43: 97        .byte $97   ; 
- D 0 - I - 0x039E54 0E:9E44: 8B        .byte $8B   ; 
- D 0 - I - 0x039E55 0E:9E45: A3        .byte $A3   ; 
- D 0 - I - 0x039E56 0E:9E46: 00        .byte $00   ; 
- D 0 - I - 0x039E57 0E:9E47: 92        .byte $92   ; 
- D 0 - I - 0x039E58 0E:9E48: 8B        .byte $8B   ; 
- D 0 - I - 0x039E59 0E:9E49: A0        .byte $A0   ; 
- D 0 - I - 0x039E5A 0E:9E4A: 8F        .byte $8F   ; 
- D 0 - I - 0x039E5B 0E:9E4B: 00        .byte $00   ; 
- D 0 - I - 0x039E5C 0E:9E4C: 8C        .byte $8C   ; 
- D 0 - I - 0x039E5D 0E:9E4D: 8F        .byte $8F   ; 
- D 0 - I - 0x039E5E 0E:9E4E: 8B        .byte $8B   ; 
- D 0 - I - 0x039E5F 0E:9E4F: 9E        .byte $9E   ; 
- D 0 - I - 0x039E60 0E:9E50: 8F        .byte $8F   ; 
- D 0 - I - 0x039E61 0E:9E51: 98        .byte $98   ; 
- D 0 - I - 0x039E62 0E:9E52: 00        .byte $00   ; 
- D 0 - I - 0x039E63 0E:9E53: 97        .byte $97   ; 
- D 0 - I - 0x039E64 0E:9E54: 8F        .byte $8F   ; 
- D 0 - I - 0x039E65 0E:9E55: BD        .byte $BD   ; 
- D 0 - I - 0x039E66 0E:9E56: 93        .byte $93   ; 
- D 0 - I - 0x039E67 0E:9E57: 98        .byte $98   ; 
- D 0 - I - 0x039E68 0E:9E58: 00        .byte $00   ; 
- D 0 - I - 0x039E69 0E:9E59: 9E        .byte $9E   ; 
- D 0 - I - 0x039E6A 0E:9E5A: 92        .byte $92   ; 
- D 0 - I - 0x039E6B 0E:9E5B: 8F        .byte $8F   ; 
- D 0 - I - 0x039E6C 0E:9E5C: 00        .byte $00   ; 
- D 0 - I - 0x039E6D 0E:9E5D: 9A        .byte $9A   ; 
- D 0 - I - 0x039E6E 0E:9E5E: 8B        .byte $8B   ; 
- D 0 - I - 0x039E6F 0E:9E5F: 9D        .byte $9D   ; 
- D 0 - I - 0x039E70 0E:9E60: 9E        .byte $9E   ; 
- D 0 - I - 0x039E71 0E:9E61: A8        .byte $A8   ; 
- D 0 - I - 0x039E72 0E:9E62: 00        .byte $00   ; 
- D 0 - I - 0x039E73 0E:9E63: 8C        .byte $8C   ; 
- D 0 - I - 0x039E74 0E:9E64: 9F        .byte $9F   ; 
- D 0 - I - 0x039E75 0E:9E65: 9E        .byte $9E   ; 
- D 0 - I - 0x039E76 0E:9E66: 00        .byte $00   ; 
- D 0 - I - 0x039E77 0E:9E67: 98        .byte $98   ; 
- D 0 - I - 0x039E78 0E:9E68: 99        .byte $99   ; 
- D 0 - I - 0x039E79 0E:9E69: A1        .byte $A1   ; 
- D 0 - I - 0x039E7A 0E:9E6A: 00        .byte $00   ; 
- D 0 - I - 0x039E7B 0E:9E6B: 93        .byte $93   ; 
- D 0 - I - 0x039E7C 0E:9E6C: 9E        .byte $9E   ; 
- D 0 - I - 0x039E7D 0E:9E6D: BD        .byte $BD   ; 
- D 0 - I - 0x039E7E 0E:9E6E: 93        .byte $93   ; 
- D 0 - I - 0x039E7F 0E:9E6F: 9D        .byte $9D   ; 
- D 0 - I - 0x039E80 0E:9E70: 00        .byte $00   ; 
- D 0 - I - 0x039E81 0E:9E71: A3        .byte $A3   ; 
- D 0 - I - 0x039E82 0E:9E72: 99        .byte $99   ; 
- D 0 - I - 0x039E83 0E:9E73: 9F        .byte $9F   ; 
- D 0 - I - 0x039E84 0E:9E74: 00        .byte $00   ; 
- D 0 - I - 0x039E85 0E:9E75: A1        .byte $A1   ; 
- D 0 - I - 0x039E86 0E:9E76: 92        .byte $92   ; 
- D 0 - I - 0x039E87 0E:9E77: 99        .byte $99   ; 
- D 0 - I - 0x039E88 0E:9E78: 00        .byte $00   ; 
- D 0 - I - 0x039E89 0E:9E79: 9D        .byte $9D   ; 
- D 0 - I - 0x039E8A 0E:9E7A: 92        .byte $92   ; 
- D 0 - I - 0x039E8B 0E:9E7B: 8B        .byte $8B   ; 
- D 0 - I - 0x039E8C 0E:9E7C: 96        .byte $96   ; 
- D 0 - I - 0x039E8D 0E:9E7D: 96        .byte $96   ; 
- D 0 - I - 0x039E8E 0E:9E7E: 00        .byte $00   ; 
- D 0 - I - 0x039E8F 0E:9E7F: 9E        .byte $9E   ; 
- D 0 - I - 0x039E90 0E:9E80: 8B        .byte $8B   ; 
- D 0 - I - 0x039E91 0E:9E81: 9D        .byte $9D   ; 
- D 0 - I - 0x039E92 0E:9E82: 9E        .byte $9E   ; 
- D 0 - I - 0x039E93 0E:9E83: 8F        .byte $8F   ; 
- D 0 - I - 0x039E94 0E:9E84: BD        .byte $BD   ; 
- D 0 - I - 0x039E95 0E:9E85: 8E        .byte $8E   ; 
- D 0 - I - 0x039E96 0E:9E86: 8F        .byte $8F   ; 
- D 0 - I - 0x039E97 0E:9E87: 90        .byte $90   ; 
- D 0 - I - 0x039E98 0E:9E88: 8F        .byte $8F   ; 
- D 0 - I - 0x039E99 0E:9E89: 8B        .byte $8B   ; 
- D 0 - I - 0x039E9A 0E:9E8A: 9E        .byte $9E   ; 
- D 0 - I - 0x039E9B 0E:9E8B: AC        .byte $AC   ; 
- D 0 - I - 0x039E9C 0E:9E8C: AB        .byte $AB   ; 
- D 0 - I - 0x039E9D 0E:9E8D: BB        .byte $BB   ; 
- D 0 - I - 0x039E9E 0E:9E8E: 40        .byte $40   ; 
- D 0 - I - 0x039E9F 0E:9E8F: BF        .byte $BF   ; 
- D 0 - I - 0x039EA0 0E:9E90: BB        .byte $BB   ; 
- D 0 - I - 0x039EA1 0E:9E91: 60        .byte $60   ; 
- D 0 - I - 0x039EA2 0E:9E92: FF        .byte $FF   ; 



off_9E93_06:
- D 0 - I - 0x039EA3 0E:9E93: AA        .byte $AA   ; 
- D 0 - I - 0x039EA4 0E:9E94: 92        .byte $92   ; 
- D 0 - I - 0x039EA5 0E:9E95: 8B        .byte $8B   ; 
- D 0 - I - 0x039EA6 0E:9E96: AC        .byte $AC   ; 
- D 0 - I - 0x039EA7 0E:9E97: 00        .byte $00   ; 
- D 0 - I - 0x039EA8 0E:9E98: 93        .byte $93   ; 
- D 0 - I - 0x039EA9 0E:9E99: 00        .byte $00   ; 
- D 0 - I - 0x039EAA 0E:9E9A: 8F        .byte $8F   ; 
- D 0 - I - 0x039EAB 0E:9E9B: A2        .byte $A2   ; 
- D 0 - I - 0x039EAC 0E:9E9C: 9A        .byte $9A   ; 
- D 0 - I - 0x039EAD 0E:9E9D: 8F        .byte $8F   ; 
- D 0 - I - 0x039EAE 0E:9E9E: 8D        .byte $8D   ; 
- D 0 - I - 0x039EAF 0E:9E9F: 9E        .byte $9E   ; 
- D 0 - I - 0x039EB0 0E:9EA0: 8F        .byte $8F   ; 
- D 0 - I - 0x039EB1 0E:9EA1: 8E        .byte $8E   ; 
- D 0 - I - 0x039EB2 0E:9EA2: 00        .byte $00   ; 
- D 0 - I - 0x039EB3 0E:9EA3: 8B        .byte $8B   ; 
- D 0 - I - 0x039EB4 0E:9EA4: 00        .byte $00   ; 
- D 0 - I - 0x039EB5 0E:9EA5: 9E        .byte $9E   ; 
- D 0 - I - 0x039EB6 0E:9EA6: 99        .byte $99   ; 
- D 0 - I - 0x039EB7 0E:9EA7: 9F        .byte $9F   ; 
- D 0 - I - 0x039EB8 0E:9EA8: 91        .byte $91   ; 
- D 0 - I - 0x039EB9 0E:9EA9: 92        .byte $92   ; 
- D 0 - I - 0x039EBA 0E:9EAA: 8F        .byte $8F   ; 
- D 0 - I - 0x039EBB 0E:9EAB: 9C        .byte $9C   ; 
- D 0 - I - 0x039EBC 0E:9EAC: BD        .byte $BD   ; 
- D 0 - I - 0x039EBD 0E:9EAD: 99        .byte $99   ; 
- D 0 - I - 0x039EBE 0E:9EAE: 9A        .byte $9A   ; 
- D 0 - I - 0x039EBF 0E:9EAF: 9A        .byte $9A   ; 
- D 0 - I - 0x039EC0 0E:9EB0: 99        .byte $99   ; 
- D 0 - I - 0x039EC1 0E:9EB1: 98        .byte $98   ; 
- D 0 - I - 0x039EC2 0E:9EB2: 8F        .byte $8F   ; 
- D 0 - I - 0x039EC3 0E:9EB3: 98        .byte $98   ; 
- D 0 - I - 0x039EC4 0E:9EB4: 9E        .byte $9E   ; 
- D 0 - I - 0x039EC5 0E:9EB5: A7        .byte $A7   ; 
- D 0 - I - 0x039EC6 0E:9EB6: 00        .byte $00   ; 
- D 0 - I - 0x039EC7 0E:9EB7: 8D        .byte $8D   ; 
- D 0 - I - 0x039EC8 0E:9EB8: 8B        .byte $8B   ; 
- D 0 - I - 0x039EC9 0E:9EB9: 98        .byte $98   ; 
- D 0 - I - 0x039ECA 0E:9EBA: 00        .byte $00   ; 
- D 0 - I - 0x039ECB 0E:9EBB: 98        .byte $98   ; 
- D 0 - I - 0x039ECC 0E:9EBC: 99        .byte $99   ; 
- D 0 - I - 0x039ECD 0E:9EBD: 00        .byte $00   ; 
- D 0 - I - 0x039ECE 0E:9EBE: 99        .byte $99   ; 
- D 0 - I - 0x039ECF 0E:9EBF: 98        .byte $98   ; 
- D 0 - I - 0x039ED0 0E:9EC0: 8F        .byte $8F   ; 
- D 0 - I - 0x039ED1 0E:9EC1: BD        .byte $BD   ; 
- D 0 - I - 0x039ED2 0E:9EC2: 8D        .byte $8D   ; 
- D 0 - I - 0x039ED3 0E:9EC3: 92        .byte $92   ; 
- D 0 - I - 0x039ED4 0E:9EC4: 8B        .byte $8B   ; 
- D 0 - I - 0x039ED5 0E:9EC5: 96        .byte $96   ; 
- D 0 - I - 0x039ED6 0E:9EC6: 96        .byte $96   ; 
- D 0 - I - 0x039ED7 0E:9EC7: 8F        .byte $8F   ; 
- D 0 - I - 0x039ED8 0E:9EC8: 98        .byte $98   ; 
- D 0 - I - 0x039ED9 0E:9EC9: 91        .byte $91   ; 
- D 0 - I - 0x039EDA 0E:9ECA: 8F        .byte $8F   ; 
- D 0 - I - 0x039EDB 0E:9ECB: 00        .byte $00   ; 
- D 0 - I - 0x039EDC 0E:9ECC: 97        .byte $97   ; 
- D 0 - I - 0x039EDD 0E:9ECD: 8F        .byte $8F   ; 
- D 0 - I - 0x039EDE 0E:9ECE: A9        .byte $A9   ; 
- D 0 - I - 0x039EDF 0E:9ECF: AB        .byte $AB   ; 
- D 0 - I - 0x039EE0 0E:9ED0: BB        .byte $BB   ; 
- D 0 - I - 0x039EE1 0E:9ED1: 40        .byte $40   ; 
- D 0 - I - 0x039EE2 0E:9ED2: BF        .byte $BF   ; 
- D 0 - I - 0x039EE3 0E:9ED3: BB        .byte $BB   ; 
- D 0 - I - 0x039EE4 0E:9ED4: 60        .byte $60   ; 
- D 0 - I - 0x039EE5 0E:9ED5: FF        .byte $FF   ; 



off_9ED6_07:
- D 0 - I - 0x039EE6 0E:9ED6: 00        .byte $00   ; 
- D 0 - I - 0x039EE7 0E:9ED7: 00        .byte $00   ; 
- D 0 - I - 0x039EE8 0E:9ED8: 8D        .byte $8D   ; 
- D 0 - I - 0x039EE9 0E:9ED9: 92        .byte $92   ; 
- D 0 - I - 0x039EEA 0E:9EDA: 8B        .byte $8B   ; 
- D 0 - I - 0x039EEB 0E:9EDB: 96        .byte $96   ; 
- D 0 - I - 0x039EEC 0E:9EDC: 96        .byte $96   ; 
- D 0 - I - 0x039EED 0E:9EDD: 8F        .byte $8F   ; 
- D 0 - I - 0x039EEE 0E:9EDE: 98        .byte $98   ; 
- D 0 - I - 0x039EEF 0E:9EDF: 91        .byte $91   ; 
- D 0 - I - 0x039EF0 0E:9EE0: 8F        .byte $8F   ; 
- D 0 - I - 0x039EF1 0E:9EE1: 00        .byte $00   ; 
- D 0 - I - 0x039EF2 0E:9EE2: 9E        .byte $9E   ; 
- D 0 - I - 0x039EF3 0E:9EE3: 92        .byte $92   ; 
- D 0 - I - 0x039EF4 0E:9EE4: 8F        .byte $8F   ; 
- D 0 - I - 0x039EF5 0E:9EE5: 00        .byte $00   ; 
- D 0 - I - 0x039EF6 0E:9EE6: 92        .byte $92   ; 
- D 0 - I - 0x039EF7 0E:9EE7: 8B        .byte $8B   ; 
- D 0 - I - 0x039EF8 0E:9EE8: 9C        .byte $9C   ; 
- D 0 - I - 0x039EF9 0E:9EE9: 8E        .byte $8E   ; 
- D 0 - I - 0x039EFA 0E:9EEA: 00        .byte $00   ; 
- D 0 - I - 0x039EFB 0E:9EEB: 97        .byte $97   ; 
- D 0 - I - 0x039EFC 0E:9EEC: 99        .byte $99   ; 
- D 0 - I - 0x039EFD 0E:9EED: 8E        .byte $8E   ; 
- D 0 - I - 0x039EFE 0E:9EEE: 8F        .byte $8F   ; 
- D 0 - I - 0x039EFF 0E:9EEF: BD        .byte $BD   ; 
- D 0 - I - 0x039F00 0E:9EF0: 00        .byte $00   ; 
- D 0 - I - 0x039F01 0E:9EF1: 00        .byte $00   ; 
- D 0 - I - 0x039F02 0E:9EF2: 98        .byte $98   ; 
- D 0 - I - 0x039F03 0E:9EF3: 8F        .byte $8F   ; 
- D 0 - I - 0x039F04 0E:9EF4: A2        .byte $A2   ; 
- D 0 - I - 0x039F05 0E:9EF5: 9E        .byte $9E   ; 
- D 0 - I - 0x039F06 0E:9EF6: 00        .byte $00   ; 
- D 0 - I - 0x039F07 0E:9EF7: 9E        .byte $9E   ; 
- D 0 - I - 0x039F08 0E:9EF8: 93        .byte $93   ; 
- D 0 - I - 0x039F09 0E:9EF9: 97        .byte $97   ; 
- D 0 - I - 0x039F0A 0E:9EFA: 8F        .byte $8F   ; 
- D 0 - I - 0x039F0B 0E:9EFB: AC        .byte $AC   ; 
- D 0 - I - 0x039F0C 0E:9EFC: BD        .byte $BD   ; 
- D 0 - I - 0x039F0D 0E:9EFD: BD        .byte $BD   ; 
- D 0 - I - 0x039F0E 0E:9EFE: 00        .byte $00   ; 
- D 0 - I - 0x039F0F 0E:9EFF: 00        .byte $00   ; 
- D 0 - I - 0x039F10 0E:9F00: 00        .byte $00   ; 
- D 0 - I - 0x039F11 0E:9F01: 00        .byte $00   ; 
- D 0 - I - 0x039F12 0E:9F02: 00        .byte $00   ; 
- D 0 - I - 0x039F13 0E:9F03: A6        .byte $A6   ; 
- D 0 - I - 0x039F14 0E:9F04: 00        .byte $00   ; 
- D 0 - I - 0x039F15 0E:9F05: 95        .byte $95   ; 
- D 0 - I - 0x039F16 0E:9F06: 99        .byte $99   ; 
- D 0 - I - 0x039F17 0E:9F07: 98        .byte $98   ; 
- D 0 - I - 0x039F18 0E:9F08: 8B        .byte $8B   ; 
- D 0 - I - 0x039F19 0E:9F09: 97        .byte $97   ; 
- D 0 - I - 0x039F1A 0E:9F0A: 93        .byte $93   ; 
- D 0 - I - 0x039F1B 0E:9F0B: 00        .byte $00   ; 
- D 0 - I - 0x039F1C 0E:9F0C: 82        .byte $82   ; 
- D 0 - I - 0x039F1D 0E:9F0D: 8A        .byte $8A   ; 
- D 0 - I - 0x039F1E 0E:9F0E: 8A        .byte $8A   ; 
- D 0 - I - 0x039F1F 0E:9F0F: 84        .byte $84   ; 
- D 0 - I - 0x039F20 0E:9F10: BD        .byte $BD   ; 
- D 0 - I - 0x039F21 0E:9F11: BD        .byte $BD   ; 
- D 0 - I - 0x039F22 0E:9F12: 00        .byte $00   ; 
- D 0 - I - 0x039F23 0E:9F13: 00        .byte $00   ; 
- D 0 - I - 0x039F24 0E:9F14: 8B        .byte $8B   ; 
- D 0 - I - 0x039F25 0E:9F15: 96        .byte $96   ; 
- D 0 - I - 0x039F26 0E:9F16: 96        .byte $96   ; 
- D 0 - I - 0x039F27 0E:9F17: 00        .byte $00   ; 
- D 0 - I - 0x039F28 0E:9F18: 9C        .byte $9C   ; 
- D 0 - I - 0x039F29 0E:9F19: 93        .byte $93   ; 
- D 0 - I - 0x039F2A 0E:9F1A: 91        .byte $91   ; 
- D 0 - I - 0x039F2B 0E:9F1B: 92        .byte $92   ; 
- D 0 - I - 0x039F2C 0E:9F1C: 9E        .byte $9E   ; 
- D 0 - I - 0x039F2D 0E:9F1D: 9D        .byte $9D   ; 
- D 0 - I - 0x039F2E 0E:9F1E: 00        .byte $00   ; 
- D 0 - I - 0x039F2F 0E:9F1F: 9C        .byte $9C   ; 
- D 0 - I - 0x039F30 0E:9F20: 8F        .byte $8F   ; 
- D 0 - I - 0x039F31 0E:9F21: 9D        .byte $9D   ; 
- D 0 - I - 0x039F32 0E:9F22: 8F        .byte $8F   ; 
- D 0 - I - 0x039F33 0E:9F23: 9C        .byte $9C   ; 
- D 0 - I - 0x039F34 0E:9F24: A0        .byte $A0   ; 
- D 0 - I - 0x039F35 0E:9F25: 8F        .byte $8F   ; 
- D 0 - I - 0x039F36 0E:9F26: 8E        .byte $8E   ; 
- D 0 - I - 0x039F37 0E:9F27: A7        .byte $A7   ; 
- D 0 - I - 0x039F38 0E:9F28: BB        .byte $BB   ; 
- D 0 - I - 0x039F39 0E:9F29: F0        .byte $F0   ; 
- D 0 - I - 0x039F3A 0E:9F2A: FF        .byte $FF   ; 



.export sub_0x039F3B
sub_0x039F3B:
C - - - - - 0x039F3B 0E:9F2B: A2 01     LDX #$01
C - - - - - 0x039F3D 0E:9F2D: 86 A8     STX ram_00A8
bra_9F2F:
C - - - - - 0x039F3F 0E:9F2F: A6 A8     LDX ram_00A8
C - - - - - 0x039F41 0E:9F31: BD 55 01  LDA ram_0155,X
C - - - - - 0x039F44 0E:9F34: 30 03     BMI bra_9F39
C - - - - - 0x039F46 0E:9F36: 20 3E 9F  JSR sub_9F3E
bra_9F39:
C - - - - - 0x039F49 0E:9F39: C6 A8     DEC ram_00A8
C - - - - - 0x039F4B 0E:9F3B: 10 F2     BPL bra_9F2F
C - - - - - 0x039F4D 0E:9F3D: 60        RTS



sub_9F3E:
C - - - - - 0x039F4E 0E:9F3E: A5 A8     LDA ram_00A8
C - - - - - 0x039F50 0E:9F40: 0A        ASL
C - - - - - 0x039F51 0E:9F41: 0A        ASL
C - - - - - 0x039F52 0E:9F42: AA        TAX
C - - - - - 0x039F53 0E:9F43: B5 AE     LDA ram_00AE,X
C - - - - - 0x039F55 0E:9F45: 20 02 D2  JSR sub_0x03D212_multiply_by_10h
C - - - - - 0x039F58 0E:9F48: 15 AF     ORA ram_00AF,X
C - - - - - 0x039F5A 0E:9F4A: 85 00     STA ram_0000
C - - - - - 0x039F5C 0E:9F4C: B5 B0     LDA ram_00B0,X
C - - - - - 0x039F5E 0E:9F4E: 20 02 D2  JSR sub_0x03D212_multiply_by_10h
C - - - - - 0x039F61 0E:9F51: 15 B1     ORA ram_00B1,X
C - - - - - 0x039F63 0E:9F53: 85 01     STA ram_0001
C - - - - - 0x039F65 0E:9F55: AD 12 01  LDA ram_0112
C - - - - - 0x039F68 0E:9F58: 20 02 D2  JSR sub_0x03D212_multiply_by_10h
C - - - - - 0x039F6B 0E:9F5B: 0D 11 01  ORA ram_0111
C - - - - - 0x039F6E 0E:9F5E: 85 02     STA ram_0002
C - - - - - 0x039F70 0E:9F60: A9 00     LDA #$00
C - - - - - 0x039F72 0E:9F62: 85 03     STA ram_0003
bra_9F64:
C - - - - - 0x039F74 0E:9F64: A5 03     LDA ram_0003
C - - - - - 0x039F76 0E:9F66: 0A        ASL
C - - - - - 0x039F77 0E:9F67: 65 03     ADC ram_0003
C - - - - - 0x039F79 0E:9F69: A8        TAY
C - - - - - 0x039F7A 0E:9F6A: A5 00     LDA ram_0000
C - - - - - 0x039F7C 0E:9F6C: D9 13 01  CMP ram_0113,Y
C - - - - - 0x039F7F 0E:9F6F: 90 12     BCC bra_9F83
C - - - - - 0x039F81 0E:9F71: D0 19     BNE bra_9F8C
C - - - - - 0x039F83 0E:9F73: A5 01     LDA ram_0001
C - - - - - 0x039F85 0E:9F75: D9 14 01  CMP ram_0114,Y
C - - - - - 0x039F88 0E:9F78: 90 09     BCC bra_9F83
C - - - - - 0x039F8A 0E:9F7A: D0 10     BNE bra_9F8C
- - - - - - 0x039F8C 0E:9F7C: A5 02     LDA ram_0002
- - - - - - 0x039F8E 0E:9F7E: D9 15 01  CMP ram_0115,Y
- - - - - - 0x039F91 0E:9F81: B0 09     BCS bra_9F8C
bra_9F83:
C - - - - - 0x039F93 0E:9F83: E6 03     INC ram_0003
C - - - - - 0x039F95 0E:9F85: A5 03     LDA ram_0003
C - - - - - 0x039F97 0E:9F87: C9 05     CMP #$05
C - - - - - 0x039F99 0E:9F89: 90 D9     BCC bra_9F64
C - - - - - 0x039F9B 0E:9F8B: 60        RTS
bra_9F8C:
C - - - - - 0x039F9C 0E:9F8C: C0 0C     CPY #$0C
C - - - - - 0x039F9E 0E:9F8E: B0 1F     BCS bra_9FAF
C - - - - - 0x039FA0 0E:9F90: 84 03     STY ram_0003
C - - - - - 0x039FA2 0E:9F92: A2 09     LDX #$09
bra_9F94:
C - - - - - 0x039FA4 0E:9F94: BD 13 01  LDA ram_0113,X
C - - - - - 0x039FA7 0E:9F97: 9D 16 01  STA ram_0116,X
C - - - - - 0x039FAA 0E:9F9A: BD 14 01  LDA ram_0114,X
C - - - - - 0x039FAD 0E:9F9D: 9D 17 01  STA ram_0117,X
C - - - - - 0x039FB0 0E:9FA0: BD 15 01  LDA ram_0115,X
C - - - - - 0x039FB3 0E:9FA3: 9D 18 01  STA ram_0118,X
C - - - - - 0x039FB6 0E:9FA6: E4 03     CPX ram_0003
C - - - - - 0x039FB8 0E:9FA8: F0 05     BEQ bra_9FAF
C - - - - - 0x039FBA 0E:9FAA: CA        DEX
C - - - - - 0x039FBB 0E:9FAB: CA        DEX
C - - - - - 0x039FBC 0E:9FAC: CA        DEX
C - - - - - 0x039FBD 0E:9FAD: 10 E5     BPL bra_9F94
bra_9FAF:
C - - - - - 0x039FBF 0E:9FAF: A5 00     LDA ram_0000
C - - - - - 0x039FC1 0E:9FB1: 99 13 01  STA ram_0113,Y
C - - - - - 0x039FC4 0E:9FB4: A5 01     LDA ram_0001
C - - - - - 0x039FC6 0E:9FB6: 99 14 01  STA ram_0114,Y
C - - - - - 0x039FC9 0E:9FB9: A5 02     LDA ram_0002
C - - - - - 0x039FCB 0E:9FBB: 99 15 01  STA ram_0115,Y
C - - - - - 0x039FCE 0E:9FBE: 60        RTS



.export sub_0x039FCF
sub_0x039FCF:
C - - - - - 0x039FCF 0E:9FBF: A5 90     LDA ram_sum_btn_press
C - - - - - 0x039FD1 0E:9FC1: 05 A4     ORA ram_00A4
C - - - - - 0x039FD3 0E:9FC3: 29 30     AND #con_btns_SS
C - - - - - 0x039FD5 0E:9FC5: D0 09     BNE bra_9FD0
C - - - - - 0x039FD7 0E:9FC7: A5 21     LDA ram_0021
C - - - - - 0x039FD9 0E:9FC9: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x039FDC 0E:9FCC: D6 9F     .word ofs_9FD6_00
- D 0 - I - 0x039FDE 0E:9FCE: 80 A0     .word ofs_A080_01
bra_9FD0:
C - - - - - 0x039FE0 0E:9FD0: 20 C2 F6  JSR sub_0x03F6D2
C - - - - - 0x039FE3 0E:9FD3: 4C CD F5  JMP loc_0x03F5DD



ofs_9FD6_00:
C - - J - - 0x039FE6 0E:9FD6: A9 0C     LDA #$0C
C - - - - - 0x039FE8 0E:9FD8: 20 14 F8  JSR sub_0x03F824
C - - - - - 0x039FEB 0E:9FDB: 20 3F F0  JSR sub_0x03F04F
C - - - - - 0x039FEE 0E:9FDE: E6 21     INC ram_0021
C - - - - - 0x039FF0 0E:9FE0: A2 26     LDX #$26
C - - - - - 0x039FF2 0E:9FE2: 20 44 F0  JSR sub_0x03F054
C - - - - - 0x039FF5 0E:9FE5: A9 04     LDA #$04
C - - - - - 0x039FF7 0E:9FE7: 85 00     STA ram_0000
bra_9FE9:
C - - - - - 0x039FF9 0E:9FE9: A5 00     LDA ram_0000
C - - - - - 0x039FFB 0E:9FEB: 0A        ASL
C - - - - - 0x039FFC 0E:9FEC: 48        PHA
C - - - - - 0x039FFD 0E:9FED: A8        TAY
C - - - - - 0x039FFE 0E:9FEE: B9 D3 A0  LDA tbl_A0D3,Y
C - - - - - 0x03A001 0E:9FF1: 48        PHA
C - - - - - 0x03A002 0E:9FF2: B9 D4 A0  LDA tbl_A0D3 + 1,Y
C - - - - - 0x03A005 0E:9FF5: A8        TAY
C - - - - - 0x03A006 0E:9FF6: 68        PLA
C - - - - - 0x03A007 0E:9FF7: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x03A00A 0E:9FFA: 68        PLA
C - - - - - 0x03A00B 0E:9FFB: 85 0C     STA ram_000C
C - - - - - 0x03A00D 0E:9FFD: 4A        LSR
C - - - - - 0x03A00E 0E:9FFE: 65 0C     ADC ram_000C
C D 1 - - - 0x03A010 0E:A000: A8        TAY
C - - - - - 0x03A011 0E:A001: B9 13 01  LDA ram_0113,Y
C - - - - - 0x03A014 0E:A004: 85 0C     STA ram_000C
C - - - - - 0x03A016 0E:A006: 20 07 D2  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x03A019 0E:A009: D0 02     BNE bra_A00D
C - - - - - 0x03A01B 0E:A00B: A9 7F     LDA #$7F
bra_A00D:
C - - - - - 0x03A01D 0E:A00D: 85 0D     STA ram_000D
C - - - - - 0x03A01F 0E:A00F: A5 0C     LDA ram_000C
C - - - - - 0x03A021 0E:A011: 29 0F     AND #$0F
C - - - - - 0x03A023 0E:A013: 85 0C     STA ram_000C
C - - - - - 0x03A025 0E:A015: B9 14 01  LDA ram_0114,Y
C - - - - - 0x03A028 0E:A018: 85 0A     STA ram_000A
C - - - - - 0x03A02A 0E:A01A: 20 07 D2  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x03A02D 0E:A01D: 85 0B     STA ram_000B
C - - - - - 0x03A02F 0E:A01F: A5 0A     LDA ram_000A
C - - - - - 0x03A031 0E:A021: 29 0F     AND #$0F
C - - - - - 0x03A033 0E:A023: 85 0A     STA ram_000A
C - - - - - 0x03A035 0E:A025: B9 15 01  LDA ram_0115,Y
C - - - - - 0x03A038 0E:A028: 85 08     STA ram_0008
C - - - - - 0x03A03A 0E:A02A: 20 07 D2  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x03A03D 0E:A02D: 85 09     STA ram_0009
C - - - - - 0x03A03F 0E:A02F: A5 08     LDA ram_0008
C - - - - - 0x03A041 0E:A031: 29 0F     AND #$0F
C - - - - - 0x03A043 0E:A033: 85 08     STA ram_0008
C - - - - - 0x03A045 0E:A035: A0 05     LDY #$05
bra_A037:
C - - - - - 0x03A047 0E:A037: 18        CLC
C - - - - - 0x03A048 0E:A038: B9 08 00  LDA ram_0008,Y
C - - - - - 0x03A04B 0E:A03B: 69 81     ADC #$81
C - - - - - 0x03A04D 0E:A03D: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x03A050 0E:A040: 88        DEY
C - - - - - 0x03A051 0E:A041: 10 F4     BPL bra_A037
C - - - - - 0x03A053 0E:A043: 20 5B D2  JSR sub_0x03D26B
C - - - - - 0x03A056 0E:A046: C6 00     DEC ram_0000
C - - - - - 0x03A058 0E:A048: 10 9F     BPL bra_9FE9
C - - - - - 0x03A05A 0E:A04A: A9 C0     LDA #$C0
C - - - - - 0x03A05C 0E:A04C: 8D 60 05  STA ram_0560
C - - - - - 0x03A05F 0E:A04F: A9 57     LDA #$57
C - - - - - 0x03A061 0E:A051: 85 34     STA ram_0034
C - - - - - 0x03A063 0E:A053: A0 12     LDY #$12
C - - - - - 0x03A065 0E:A055: 20 1A DC  JSR sub_0x03DC2A
C - - - - - 0x03A068 0E:A058: A9 30     LDA #$30
C - - - - - 0x03A06A 0E:A05A: 8D 00 04  STA ram_anim_object
C - - - - - 0x03A06D 0E:A05D: A9 9F     LDA #$9F
C - - - - - 0x03A06F 0E:A05F: 8D 40 04  STA ram_X_pos_hi_object
C - - - - - 0x03A072 0E:A062: A9 68     LDA #$68
C - - - - - 0x03A074 0E:A064: 8D 10 04  STA ram_Y_pos_hi_object
C - - - - - 0x03A077 0E:A067: A9 0C     LDA #$0C
C - - - - - 0x03A079 0E:A069: 8D D0 05  STA ram_05D0
C - - - - - 0x03A07C 0E:A06C: A9 00     LDA #$00
C - - - - - 0x03A07E 0E:A06E: 8D A0 04  STA ram_04A0
C - - - - - 0x03A081 0E:A071: A9 12     LDA #$12
C - - - - - 0x03A083 0E:A073: A0 11     LDY #$11
C - - - - - 0x03A085 0E:A075: 20 94 D3  JSR sub_0x03D3A4
C - - - - - 0x03A088 0E:A078: 20 41 E1  JSR sub_0x03E151
C - - - - - 0x03A08B 0E:A07B: A9 38     LDA #$38
C - - - - - 0x03A08D 0E:A07D: 4C 90 F6  JMP loc_0x03F6A0



ofs_A080_01:
C - - J - - 0x03A090 0E:A080: CE D0 05  DEC ram_05D0
C - - - - - 0x03A093 0E:A083: 10 14     BPL bra_A099
C - - - - - 0x03A095 0E:A085: A9 0C     LDA #$0C
C - - - - - 0x03A097 0E:A087: 8D D0 05  STA ram_05D0
C - - - - - 0x03A09A 0E:A08A: EE 00 04  INC ram_anim_object
C - - - - - 0x03A09D 0E:A08D: AD 00 04  LDA ram_anim_object
C - - - - - 0x03A0A0 0E:A090: C9 36     CMP #$36
C - - - - - 0x03A0A2 0E:A092: 90 05     BCC bra_A099
C - - - - - 0x03A0A4 0E:A094: A9 30     LDA #$30
C - - - - - 0x03A0A6 0E:A096: 8D 00 04  STA ram_anim_object
bra_A099:
C - - - - - 0x03A0A9 0E:A099: A5 22     LDA ram_frame_counter
C - - - - - 0x03A0AB 0E:A09B: 29 03     AND #$03
C - - - - - 0x03A0AD 0E:A09D: D0 2B     BNE bra_A0CA_RTS
C - - - - - 0x03A0AF 0E:A09F: CE 60 05  DEC ram_0560
C - - - - - 0x03A0B2 0E:A0A2: F0 27     BEQ bra_A0CB
C - - - - - 0x03A0B4 0E:A0A4: AD 60 05  LDA ram_0560
C - - - - - 0x03A0B7 0E:A0A7: C9 28     CMP #$28
C - - - - - 0x03A0B9 0E:A0A9: D0 05     BNE bra_A0B0
C - - - - - 0x03A0BB 0E:A0AB: A9 5B     LDA #$5B
C - - - - - 0x03A0BD 0E:A0AD: 20 90 F6  JSR sub_0x03F6A0
bra_A0B0:
C - - - - - 0x03A0C0 0E:A0B0: EE A0 04  INC ram_04A0
C - - - - - 0x03A0C3 0E:A0B3: AC A0 04  LDY ram_04A0
C - - - - - 0x03A0C6 0E:A0B6: B9 DD A0  LDA tbl_A0DD,Y
C - - - - - 0x03A0C9 0E:A0B9: 10 07     BPL bra_A0C2
C - - - - - 0x03A0CB 0E:A0BB: A0 FF     LDY #$FF
C - - - - - 0x03A0CD 0E:A0BD: 8C A0 04  STY ram_04A0
C - - - - - 0x03A0D0 0E:A0C0: 29 7F     AND #$7F
bra_A0C2:
C - - - - - 0x03A0D2 0E:A0C2: 8D 52 06  STA ram_0652
C - - - - - 0x03A0D5 0E:A0C5: A9 FF     LDA #$FF
C - - - - - 0x03A0D7 0E:A0C7: 8D 6D 06  STA ram_066D
bra_A0CA_RTS:
C - - - - - 0x03A0DA 0E:A0CA: 60        RTS
bra_A0CB:
C - - - - - 0x03A0DB 0E:A0CB: 20 C2 F6  JSR sub_0x03F6D2
C - - - - - 0x03A0DE 0E:A0CE: A9 05     LDA #$05
C - - - - - 0x03A0E0 0E:A0D0: 4C AE F5  JMP loc_0x03F5BE



tbl_A0D3:
- D 1 - - - 0x03A0E3 0E:A0D3: 21 0C     .dbyt $210C
- D 1 - - - 0x03A0E5 0E:A0D5: 21 6C     .dbyt $216C
- D 1 - - - 0x03A0E7 0E:A0D7: 21 CC     .dbyt $21CC
- D 1 - - - 0x03A0E9 0E:A0D9: 22 2C     .dbyt $222C
- D 1 - - - 0x03A0EB 0E:A0DB: 22 8C     .dbyt $228C



tbl_A0DD:
- D 1 - - - 0x03A0ED 0E:A0DD: 11        .byte $11   ; 00
- D 1 - - - 0x03A0EE 0E:A0DE: 13        .byte $13   ; 01
- D 1 - - - 0x03A0EF 0E:A0DF: 15        .byte $15   ; 02
- D 1 - - - 0x03A0F0 0E:A0E0: 17        .byte $17   ; 03
- D 1 - - - 0x03A0F1 0E:A0E1: 19        .byte $19   ; 04
- D 1 - - - 0x03A0F2 0E:A0E2: 9B        .byte $9B   ; 05



.export sub_0x03A0F3
sub_0x03A0F3:
C - - - - - 0x03A0F3 0E:A0E3: C9 02     CMP #$02
C - - - - - 0x03A0F5 0E:A0E5: F0 16     BEQ bra_A0FD
C - - - - - 0x03A0F7 0E:A0E7: 20 ED A0  JSR sub_A0ED
C - - - - - 0x03A0FA 0E:A0EA: 4C C1 A1  JMP loc_A1C1
bra_A0FD:
C - - - - - 0x03A10D 0E:A0FD: 4C 41 A1  JMP loc_A141



sub_A0ED:
C - - - - - 0x03A0FD 0E:A0ED: A8        TAY
C - - - - - 0x03A0FE 0E:A0EE: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 1 - I - 0x03A101 0E:A0F1: 4F A1     .word ofs_A14F_00
- D 1 - I - 0x03A103 0E:A0F3: 44 A1     .word ofs_A144_01
- - - - - - 0x03A105 0E:A0F5: 41 A1     .word ofs_A141_02
- D 1 - I - 0x03A107 0E:A0F7: 00 A1     .word ofs_A100_03
- D 1 - I - 0x03A109 0E:A0F9: 35 A1     .word ofs_A135_04
- D 1 - I - 0x03A10B 0E:A0FB: 22 A1     .word ofs_A122_05







ofs_A100_03:
C - - J - - 0x03A110 0E:A100: A9 01     LDA #$01
C - - - - - 0x03A112 0E:A102: 85 08     STA ram_0008
bra_A104_loop:
C - - - - - 0x03A114 0E:A104: A9 00     LDA #$00
C - - - - - 0x03A116 0E:A106: 85 04     STA ram_0004
C - - - - - 0x03A118 0E:A108: AD 3F 06  LDA ram_063F
C - - - - - 0x03A11B 0E:A10B: 30 06     BMI bra_A113
C - - - - - 0x03A11D 0E:A10D: C5 08     CMP ram_0008
C - - - - - 0x03A11F 0E:A10F: F0 02     BEQ bra_A113
C - - - - - 0x03A121 0E:A111: E6 04     INC ram_0004
bra_A113:
C - - - - - 0x03A123 0E:A113: A6 08     LDX ram_0008
C - - - - - 0x03A125 0E:A115: B4 A2     LDY ram_option_fighter,X
C - - - - - 0x03A127 0E:A117: E8        INX
C - - - - - 0x03A128 0E:A118: E8        INX
C - - - - - 0x03A129 0E:A119: E8        INX
C - - - - - 0x03A12A 0E:A11A: 20 5C A1  JSR sub_A15C
C - - - - - 0x03A12D 0E:A11D: C6 08     DEC ram_0008
C - - - - - 0x03A12F 0E:A11F: 10 E3     BPL bra_A104_loop
C - - - - - 0x03A131 0E:A121: 60        RTS



ofs_A122_05:
C - - J - - 0x03A132 0E:A122: 20 35 A1  JSR sub_A135
C - - - - - 0x03A135 0E:A125: A0 00     LDY #$00
bra_A127_loop:
C - - - - - 0x03A137 0E:A127: B9 43 A3  LDA tbl_A343,Y
C - - - - - 0x03A13A 0E:A12A: C9 FE     CMP #$FE
C - - - - - 0x03A13C 0E:A12C: F0 06     BEQ bra_A134_RTS
C - - - - - 0x03A13E 0E:A12E: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x03A141 0E:A131: C8        INY
C - - - - - 0x03A142 0E:A132: D0 F3     BNE bra_A127_loop
bra_A134_RTS:
C - - - - - 0x03A144 0E:A134: 60        RTS



sub_A135:
ofs_A135_04:
C - - J - - 0x03A145 0E:A135: A9 00     LDA #$00
C - - - - - 0x03A147 0E:A137: 85 04     STA ram_0004
C - - - - - 0x03A149 0E:A139: A0 06     LDY #$06
C - - - - - 0x03A14B 0E:A13B: 84 A2     STY ram_option_fighter
C - - - - - 0x03A14D 0E:A13D: A2 05     LDX #$05
C - - - - - 0x03A14F 0E:A13F: D0 1B     BNE bra_A15C



loc_A141:
ofs_A141_02:
C D 1 - - - 0x03A151 0E:A141: A9 00     LDA #$00
C - - - - - 0x03A153 0E:A143: 2C        .byte $2C
ofs_A144_01:
C - - - - - 0x03A154 0E:A144: A9 01     LDA #$01
C - - - - - 0x03A156 0E:A146: 85 04     STA ram_0004
C - - - - - 0x03A158 0E:A148: A2 02     LDX #$02
C - - - - - 0x03A15A 0E:A14A: A4 A2     LDY ram_option_fighter
C - - - - - 0x03A15C 0E:A14C: 4C 00 BF  JMP loc_BF00



ofs_A14F_00:
C - - J - - 0x03A15F 0E:A14F: A9 00     LDA #$00
C - - - - - 0x03A161 0E:A151: 85 04     STA ram_0004
C - - - - - 0x03A163 0E:A153: A2 01     LDX #$01
C - - - - - 0x03A165 0E:A155: 20 5A A1  JSR sub_A15A
C - - - - - 0x03A168 0E:A158: A2 00     LDX #$00
sub_A15A:
C - - - - - 0x03A16A 0E:A15A: B4 A2     LDY ram_option_fighter,X
bra_A15C:
sub_A15C:
loc_A15C:
C D 1 - - - 0x03A16C 0E:A15C: 84 03     STY ram_0003
C - - - - - 0x03A16E 0E:A15E: B9 23 A2  LDA tbl_A223,Y
C - - - - - 0x03A171 0E:A161: 85 00     STA ram_0000
C - - - - - 0x03A173 0E:A163: BD 0B A3  LDA tbl_A30B,X
C - - - - - 0x03A176 0E:A166: 85 01     STA ram_0001
C - - - - - 0x03A178 0E:A168: BD 11 A3  LDA tbl_A311,X
C - - - - - 0x03A17B 0E:A16B: 85 02     STA ram_0002
bra_A16D:
C - - - - - 0x03A17D 0E:A16D: A4 00     LDY ram_0000
C - - - - - 0x03A17F 0E:A16F: B9 2A A2  LDA tbl_A22A,Y
C - - - - - 0x03A182 0E:A172: C9 FE     CMP #$FE
C - - - - - 0x03A184 0E:A174: F0 4A     BEQ bra_A1C0_RTS
C - - - - - 0x03A186 0E:A176: C9 FF     CMP #$FF
C - - - - - 0x03A188 0E:A178: D0 06     BNE bra_A180
C - - - - - 0x03A18A 0E:A17A: A5 04     LDA ram_0004
C - - - - - 0x03A18C 0E:A17C: F0 42     BEQ bra_A1C0_RTS
C - - - - - 0x03A18E 0E:A17E: D0 29     BNE bra_A1A9
bra_A180:
C - - - - - 0x03A190 0E:A180: 18        CLC
C - - - - - 0x03A191 0E:A181: 65 02     ADC ram_0002
C - - - - - 0x03A193 0E:A183: A8        TAY
C - - - - - 0x03A194 0E:A184: A9 00     LDA #$00
C - - - - - 0x03A196 0E:A186: 65 01     ADC ram_0001
C - - - - - 0x03A198 0E:A188: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x03A19B 0E:A18B: E6 00     INC ram_0000
C - - - - - 0x03A19D 0E:A18D: A4 00     LDY ram_0000
C - - - - - 0x03A19F 0E:A18F: B9 2A A2  LDA tbl_A22A,Y
C - - - - - 0x03A1A2 0E:A192: F0 19     BEQ bra_A1AD
C - - - - - 0x03A1A4 0E:A194: C9 10     CMP #$10
C - - - - - 0x03A1A6 0E:A196: B0 15     BCS bra_A1AD
C - - - - - 0x03A1A8 0E:A198: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x03A1AB 0E:A19B: C8        INY
C - - - - - 0x03A1AC 0E:A19C: B9 2A A2  LDA tbl_A22A,Y
C - - - - - 0x03A1AF 0E:A19F: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x03A1B2 0E:A1A2: A9 04     LDA #$04
C - - - - - 0x03A1B4 0E:A1A4: 9D FB 02  STA ram_02FB,X
C - - - - - 0x03A1B7 0E:A1A7: E6 00     INC ram_0000
bra_A1A9:
C - - - - - 0x03A1B9 0E:A1A9: E6 00     INC ram_0000
C - - - - - 0x03A1BB 0E:A1AB: D0 C0     BNE bra_A16D
bra_A1AD:
C - - - - - 0x03A1BD 0E:A1AD: 20 5D D2  JSR sub_0x03D26D
bra_A1B0:
C - - - - - 0x03A1C0 0E:A1B0: E6 00     INC ram_0000
C - - - - - 0x03A1C2 0E:A1B2: A4 00     LDY ram_0000
C - - - - - 0x03A1C4 0E:A1B4: B9 2A A2  LDA tbl_A22A,Y
C - - - - - 0x03A1C7 0E:A1B7: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x03A1CA 0E:A1BA: C9 FF     CMP #$FF
C - - - - - 0x03A1CC 0E:A1BC: D0 F2     BNE bra_A1B0
C - - - - - 0x03A1CE 0E:A1BE: F0 E9     BEQ bra_A1A9
bra_A1C0_RTS:
C - - - - - 0x03A1D0 0E:A1C0: 60        RTS



loc_A1C1:
C D 1 - - - 0x03A1D1 0E:A1C1: 20 6D D4  JSR sub_0x03D47D
C - - - - - 0x03A1D4 0E:A1C4: A9 14     LDA #$14
C - - - - - 0x03A1D6 0E:A1C6: 20 B0 D3  JSR sub_0x03D3C0
C - - - - - 0x03A1D9 0E:A1C9: A2 01     LDX #$01
C - - - - - 0x03A1DB 0E:A1CB: 86 A8     STX ram_00A8
bra_A1CD:
C - - - - - 0x03A1DD 0E:A1CD: A6 A8     LDX ram_00A8
C - - - - - 0x03A1DF 0E:A1CF: B4 A2     LDY ram_option_fighter,X
C - - - - - 0x03A1E1 0E:A1D1: 20 0B BF  JSR sub_BF0B
C - - - - - 0x03A1E4 0E:A1D4: A8        TAY
C - - - - - 0x03A1E5 0E:A1D5: B9 1E A3  LDA tbl_A31E,Y
C - - - - - 0x03A1E8 0E:A1D8: 95 4E     STA ram_004E,X
C - - - - - 0x03A1EA 0E:A1DA: B9 1F A3  LDA tbl_A31E + 1,Y
C - - - - - 0x03A1ED 0E:A1DD: 95 50     STA ram_0050,X
C - - - - - 0x03A1EF 0E:A1DF: B9 20 A3  LDA tbl_A31E + 2,Y
C - - - - - 0x03A1F2 0E:A1E2: 95 52     STA ram_0052,X
C - - - - - 0x03A1F4 0E:A1E4: B9 21 A3  LDA tbl_A31E + 3,Y
C - - - - - 0x03A1F7 0E:A1E7: 95 54     STA ram_0054,X
C - - - - - 0x03A1F9 0E:A1E9: B4 A2     LDY ram_option_fighter,X
C - - - - - 0x03A1FB 0E:A1EB: 20 17 BF  JSR sub_BF17
C - - - - - 0x03A1FE 0E:A1EE: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x03A201 0E:A1F1: 8A        TXA
C - - - - - 0x03A202 0E:A1F2: 09 80     ORA #$80
C - - - - - 0x03A204 0E:A1F4: 9D 00 05  STA ram_0500,X
C - - - - - 0x03A207 0E:A1F7: 9D 30 04  STA ram_0430,X
C - - - - - 0x03A20A 0E:A1FA: 98        TYA
C - - - - - 0x03A20B 0E:A1FB: 0A        ASL
C - - - - - 0x03A20C 0E:A1FC: A8        TAY
C - - - - - 0x03A20D 0E:A1FD: B9 2E A3  LDA tbl_A32E,Y
C - - - - - 0x03A210 0E:A200: 20 46 D3  JSR sub_0x03D356
C - - - - - 0x03A213 0E:A203: 18        CLC
C - - - - - 0x03A214 0E:A204: 8A        TXA
C - - - - - 0x03A215 0E:A205: 69 04     ADC #$04
C - - - - - 0x03A217 0E:A207: AA        TAX
C - - - - - 0x03A218 0E:A208: B9 2F A3  LDA tbl_A32F,Y
C - - - - - 0x03A21B 0E:A20B: 20 46 D3  JSR sub_0x03D356
C - - - - - 0x03A21E 0E:A20E: C6 A8     DEC ram_00A8
C - - - - - 0x03A220 0E:A210: 10 BB     BPL bra_A1CD
C - - - - - 0x03A222 0E:A212: A5 4E     LDA ram_004E
C - - - - - 0x03A224 0E:A214: 85 32     STA ram_0032
C - - - - - 0x03A226 0E:A216: A5 50     LDA ram_0050
C - - - - - 0x03A228 0E:A218: 85 33     STA ram_0033
C - - - - - 0x03A22A 0E:A21A: A5 52     LDA ram_0052
C - - - - - 0x03A22C 0E:A21C: 85 34     STA ram_0034
C - - - - - 0x03A22E 0E:A21E: A5 54     LDA ram_0054
C - - - - - 0x03A230 0E:A220: 85 35     STA ram_0035
C - - - - - 0x03A232 0E:A222: 60        RTS



tbl_A223:
- D 1 - - - 0x03A233 0E:A223: 00        .byte off_A22A - tbl_A22A   ; 00 Leo
- D 1 - - - 0x03A234 0E:A224: 00        .byte off_A22A - tbl_A22A   ; 01 Raph
- D 1 - - - 0x03A235 0E:A225: 00        .byte off_A22A - tbl_A22A   ; 02 Mike
- D 1 - - - 0x03A236 0E:A226: 00        .byte off_A22A - tbl_A22A   ; 03 Don
- D 1 - - - 0x03A237 0E:A227: 32        .byte off_A25C - tbl_A22A   ; 04 Casey
- D 1 - - - 0x03A238 0E:A228: 73        .byte off_A29D - tbl_A22A   ; 05 Hot
- D 1 - - - 0x03A239 0E:A229: A2        .byte off_A2CC - tbl_A22A   ; 06 Shred



tbl_A22A:
off_A22A:
- D 1 - - - 0x03A23A 0E:A22A: 21        .byte $21   ; 
- D 1 - - - 0x03A23B 0E:A22B: 05        .byte $05   ; 
- D 1 - - - 0x03A23C 0E:A22C: 01        .byte $01   ; 
- D 1 - - - 0x03A23D 0E:A22D: 41        .byte $41   ; 
- D 1 - - - 0x03A23E 0E:A22E: 06        .byte $06   ; 
- D 1 - - - 0x03A23F 0E:A22F: 06        .byte $06   ; 
- D 1 - - - 0x03A240 0E:A230: 60        .byte $60   ; 
- D 1 - - - 0x03A241 0E:A231: 07        .byte $07   ; 
- D 1 - - - 0x03A242 0E:A232: 0C        .byte $0C   ; 
- D 1 - - - 0x03A243 0E:A233: 80        .byte $80   ; 
- D 1 - - - 0x03A244 0E:A234: 07        .byte $07   ; 
- D 1 - - - 0x03A245 0E:A235: 13        .byte $13   ; 
- D 1 - - - 0x03A246 0E:A236: A0        .byte $A0   ; 
- D 1 - - - 0x03A247 0E:A237: 07        .byte $07   ; 
- D 1 - - - 0x03A248 0E:A238: 1A        .byte $1A   ; 
- D 1 - - - 0x03A249 0E:A239: C0        .byte $C0   ; 
- D 1 - - - 0x03A24A 0E:A23A: 07        .byte $07   ; 
- D 1 - - - 0x03A24B 0E:A23B: 21        .byte $21   ; 
- D 1 - - - 0x03A24C 0E:A23C: E0        .byte $E0   ; 
- D 1 - - - 0x03A24D 0E:A23D: 06        .byte $06   ; 
- D 1 - - - 0x03A24E 0E:A23E: 28        .byte $28   ; 
- D 1 - - - 0x03A24F 0E:A23F: E6        .byte $E6   ; 
- D 1 - - - 0x03A250 0E:A240: 00        .byte $00   ; 
- D 1 - - - 0x03A251 0E:A241: FF        .byte $FF   ; 
- D 1 - - - 0x03A252 0E:A242: FF        .byte $FF   ; 
- D 1 - - - 0x03A253 0E:A243: 21        .byte $21   ; 
- D 1 - - - 0x03A254 0E:A244: 00        .byte $00   ; 
- D 1 - - - 0x03A255 0E:A245: 00        .byte $00   ; 
- D 1 - - - 0x03A256 0E:A246: 2E        .byte $2E   ; 
- D 1 - - - 0x03A257 0E:A247: FF        .byte $FF   ; 
- D 1 - - - 0x03A258 0E:A248: 41        .byte $41   ; 
- D 1 - - - 0x03A259 0E:A249: 00        .byte $00   ; 
- D 1 - - - 0x03A25A 0E:A24A: 2F        .byte $2F   ; 
- D 1 - - - 0x03A25B 0E:A24B: FF        .byte $FF   ; 
- D 1 - - - 0x03A25C 0E:A24C: 63        .byte $63   ; 
- D 1 - - - 0x03A25D 0E:A24D: 04        .byte $04   ; 
- D 1 - - - 0x03A25E 0E:A24E: 30        .byte $30   ; 
- D 1 - - - 0x03A25F 0E:A24F: 83        .byte $83   ; 
- D 1 - - - 0x03A260 0E:A250: 03        .byte $03   ; 
- D 1 - - - 0x03A261 0E:A251: 34        .byte $34   ; 
- D 1 - - - 0x03A262 0E:A252: A2        .byte $A2   ; 
- D 1 - - - 0x03A263 0E:A253: 04        .byte $04   ; 
- D 1 - - - 0x03A264 0E:A254: 37        .byte $37   ; 
- D 1 - - - 0x03A265 0E:A255: C3        .byte $C3   ; 
- D 1 - - - 0x03A266 0E:A256: 04        .byte $04   ; 
- D 1 - - - 0x03A267 0E:A257: 3B        .byte $3B   ; 
- D 1 - - - 0x03A268 0E:A258: E6        .byte $E6   ; 
- D 1 - - - 0x03A269 0E:A259: 3F        .byte $3F   ; 
- D 1 - - - 0x03A26A 0E:A25A: FF        .byte $FF   ; 
- D 1 - - - 0x03A26B 0E:A25B: FE        .byte $FE   ; 

off_A25C:
- D 1 - - - 0x03A26C 0E:A25C: 00        .byte $00   ; 
- D 1 - - - 0x03A26D 0E:A25D: 06        .byte $06   ; 
- D 1 - - - 0x03A26E 0E:A25E: 40        .byte $40   ; 
- D 1 - - - 0x03A26F 0E:A25F: 20        .byte $20   ; 
- D 1 - - - 0x03A270 0E:A260: 06        .byte $06   ; 
- D 1 - - - 0x03A271 0E:A261: 46        .byte $46   ; 
- D 1 - - - 0x03A272 0E:A262: 40        .byte $40   ; 
- D 1 - - - 0x03A273 0E:A263: 08        .byte $08   ; 
- D 1 - - - 0x03A274 0E:A264: 4C        .byte $4C   ; 
- D 1 - - - 0x03A275 0E:A265: 60        .byte $60   ; 
- D 1 - - - 0x03A276 0E:A266: 08        .byte $08   ; 
- D 1 - - - 0x03A277 0E:A267: 54        .byte $54   ; 
- D 1 - - - 0x03A278 0E:A268: 81        .byte $81   ; 
- D 1 - - - 0x03A279 0E:A269: 07        .byte $07   ; 
- D 1 - - - 0x03A27A 0E:A26A: 5C        .byte $5C   ; 
- D 1 - - - 0x03A27B 0E:A26B: A0        .byte $A0   ; 
- D 1 - - - 0x03A27C 0E:A26C: 08        .byte $08   ; 
- D 1 - - - 0x03A27D 0E:A26D: 63        .byte $63   ; 
- D 1 - - - 0x03A27E 0E:A26E: C0        .byte $C0   ; 
- D 1 - - - 0x03A27F 0E:A26F: 08        .byte $08   ; 
- D 1 - - - 0x03A280 0E:A270: 6B        .byte $6B   ; 
- D 1 - - - 0x03A281 0E:A271: E0        .byte $E0   ; 
- D 1 - - - 0x03A282 0E:A272: 04        .byte $04   ; 
- D 1 - - - 0x03A283 0E:A273: 73        .byte $73   ; 
- D 1 - - - 0x03A284 0E:A274: E4        .byte $E4   ; 
- D 1 - - - 0x03A285 0E:A275: 76        .byte $76   ; 
- D 1 - - - 0x03A286 0E:A276: 81        .byte $81   ; 
- D 1 - - - 0x03A287 0E:A277: 82        .byte $82   ; 
- D 1 - - - 0x03A288 0E:A278: 83        .byte $83   ; 
- D 1 - - - 0x03A289 0E:A279: FF        .byte $FF   ; 
- D 1 - - - 0x03A28A 0E:A27A: FF        .byte $FF   ; 
- D 1 - - - 0x03A28B 0E:A27B: 22        .byte $22   ; 
- D 1 - - - 0x03A28C 0E:A27C: 02        .byte $02   ; 
- D 1 - - - 0x03A28D 0E:A27D: 84        .byte $84   ; 
- D 1 - - - 0x03A28E 0E:A27E: 42        .byte $42   ; 
- D 1 - - - 0x03A28F 0E:A27F: 02        .byte $02   ; 
- D 1 - - - 0x03A290 0E:A280: 86        .byte $86   ; 
- D 1 - - - 0x03A291 0E:A281: 45        .byte $45   ; 
- D 1 - - - 0x03A292 0E:A282: 00        .byte $00   ; 
- D 1 - - - 0x03A293 0E:A283: 00        .byte $00   ; 
- D 1 - - - 0x03A294 0E:A284: 00        .byte $00   ; 
- D 1 - - - 0x03A295 0E:A285: FF        .byte $FF   ; 
- D 1 - - - 0x03A296 0E:A286: 62        .byte $62   ; 
- D 1 - - - 0x03A297 0E:A287: 03        .byte $03   ; 
- D 1 - - - 0x03A298 0E:A288: 88        .byte $88   ; 
- D 1 - - - 0x03A299 0E:A289: 65        .byte $65   ; 
- D 1 - - - 0x03A29A 0E:A28A: 00        .byte $00   ; 
- D 1 - - - 0x03A29B 0E:A28B: 00        .byte $00   ; 
- D 1 - - - 0x03A29C 0E:A28C: 00        .byte $00   ; 
- D 1 - - - 0x03A29D 0E:A28D: FF        .byte $FF   ; 
- D 1 - - - 0x03A29E 0E:A28E: 82        .byte $82   ; 
- D 1 - - - 0x03A29F 0E:A28F: 02        .byte $02   ; 
- D 1 - - - 0x03A2A0 0E:A290: 8B        .byte $8B   ; 
- D 1 - - - 0x03A2A1 0E:A291: 86        .byte $86   ; 
- D 1 - - - 0x03A2A2 0E:A292: 02        .byte $02   ; 
- D 1 - - - 0x03A2A3 0E:A293: 8D        .byte $8D   ; 
- D 1 - - - 0x03A2A4 0E:A294: A2        .byte $A2   ; 
- D 1 - - - 0x03A2A5 0E:A295: 8F        .byte $8F   ; 
- D 1 - - - 0x03A2A6 0E:A296: 90        .byte $90   ; 
- D 1 - - - 0x03A2A7 0E:A297: B9        .byte $B9   ; 
- D 1 - - - 0x03A2A8 0E:A298: FF        .byte $FF   ; 
- D 1 - - - 0x03A2A9 0E:A299: A7        .byte $A7   ; 
- D 1 - - - 0x03A2AA 0E:A29A: 92        .byte $92   ; 
- D 1 - - - 0x03A2AB 0E:A29B: FF        .byte $FF   ; 
- D 1 - - - 0x03A2AC 0E:A29C: FE        .byte $FE   ; 

off_A29D:
- D 1 - - - 0x03A2AD 0E:A29D: 03        .byte $03   ; 
- D 1 - - - 0x03A2AE 0E:A29E: 05        .byte $05   ; 
- D 1 - - - 0x03A2AF 0E:A29F: 5C        .byte $5C   ; 
- D 1 - - - 0x03A2B0 0E:A2A0: 22        .byte $22   ; 
- D 1 - - - 0x03A2B1 0E:A2A1: 06        .byte $06   ; 
- D 1 - - - 0x03A2B2 0E:A2A2: 61        .byte $61   ; 
- D 1 - - - 0x03A2B3 0E:A2A3: 41        .byte $41   ; 
- D 1 - - - 0x03A2B4 0E:A2A4: 07        .byte $07   ; 
- D 1 - - - 0x03A2B5 0E:A2A5: 67        .byte $67   ; 
- D 1 - - - 0x03A2B6 0E:A2A6: 61        .byte $61   ; 
- D 1 - - - 0x03A2B7 0E:A2A7: 07        .byte $07   ; 
- D 1 - - - 0x03A2B8 0E:A2A8: 6E        .byte $6E   ; 
- D 1 - - - 0x03A2B9 0E:A2A9: 80        .byte $80   ; 
- D 1 - - - 0x03A2BA 0E:A2AA: 02        .byte $02   ; 
- D 1 - - - 0x03A2BB 0E:A2AB: 75        .byte $75   ; 
- D 1 - - - 0x03A2BC 0E:A2AC: 82        .byte $82   ; 
- D 1 - - - 0x03A2BD 0E:A2AD: 06        .byte $06   ; 
- D 1 - - - 0x03A2BE 0E:A2AE: 81        .byte $81   ; 
- D 1 - - - 0x03A2BF 0E:A2AF: A0        .byte $A0   ; 
- D 1 - - - 0x03A2C0 0E:A2B0: 08        .byte $08   ; 
- D 1 - - - 0x03A2C1 0E:A2B1: 87        .byte $87   ; 
- D 1 - - - 0x03A2C2 0E:A2B2: C0        .byte $C0   ; 
- D 1 - - - 0x03A2C3 0E:A2B3: 08        .byte $08   ; 
- D 1 - - - 0x03A2C4 0E:A2B4: 8F        .byte $8F   ; 
- D 1 - - - 0x03A2C5 0E:A2B5: E0        .byte $E0   ; 
- D 1 - - - 0x03A2C6 0E:A2B6: 08        .byte $08   ; 
- D 1 - - - 0x03A2C7 0E:A2B7: 97        .byte $97   ; 
- D 1 - - - 0x03A2C8 0E:A2B8: FF        .byte $FF   ; 
- D 1 - - - 0x03A2C9 0E:A2B9: 42        .byte $42   ; 
- D 1 - - - 0x03A2CA 0E:A2BA: 9F        .byte $9F   ; 
- D 1 - - - 0x03A2CB 0E:A2BB: FF        .byte $FF   ; 
- D 1 - - - 0x03A2CC 0E:A2BC: 62        .byte $62   ; 
- D 1 - - - 0x03A2CD 0E:A2BD: 03        .byte $03   ; 
- D 1 - - - 0x03A2CE 0E:A2BE: A0        .byte $A0   ; 
- D 1 - - - 0x03A2CF 0E:A2BF: 82        .byte $82   ; 
- D 1 - - - 0x03A2D0 0E:A2C0: 04        .byte $04   ; 
- D 1 - - - 0x03A2D1 0E:A2C1: A3        .byte $A3   ; 
- D 1 - - - 0x03A2D2 0E:A2C2: A1        .byte $A1   ; 
- D 1 - - - 0x03A2D3 0E:A2C3: 05        .byte $05   ; 
- D 1 - - - 0x03A2D4 0E:A2C4: A7        .byte $A7   ; 
- D 1 - - - 0x03A2D5 0E:A2C5: C2        .byte $C2   ; 
- D 1 - - - 0x03A2D6 0E:A2C6: 03        .byte $03   ; 
- D 1 - - - 0x03A2D7 0E:A2C7: AC        .byte $AC   ; 
- D 1 - - - 0x03A2D8 0E:A2C8: E2        .byte $E2   ; 
- D 1 - - - 0x03A2D9 0E:A2C9: AF        .byte $AF   ; 
- D 1 - - - 0x03A2DA 0E:A2CA: FF        .byte $FF   ; 
- D 1 - - - 0x03A2DB 0E:A2CB: FE        .byte $FE   ; 

off_A2CC:
- D 1 - - - 0x03A2DC 0E:A2CC: 02        .byte $02   ; 
- D 1 - - - 0x03A2DD 0E:A2CD: 04        .byte $04   ; 
- D 1 - - - 0x03A2DE 0E:A2CE: 94        .byte $94   ; 
- D 1 - - - 0x03A2DF 0E:A2CF: 21        .byte $21   ; 
- D 1 - - - 0x03A2E0 0E:A2D0: 06        .byte $06   ; 
- D 1 - - - 0x03A2E1 0E:A2D1: 98        .byte $98   ; 
- D 1 - - - 0x03A2E2 0E:A2D2: 40        .byte $40   ; 
- D 1 - - - 0x03A2E3 0E:A2D3: 9E        .byte $9E   ; 
- D 1 - - - 0x03A2E4 0E:A2D4: FF        .byte $FF   ; 
- D 1 - - - 0x03A2E5 0E:A2D5: 41        .byte $41   ; 
- D 1 - - - 0x03A2E6 0E:A2D6: 00        .byte $00   ; 
- D 1 - - - 0x03A2E7 0E:A2D7: FF        .byte $FF   ; 
- D 1 - - - 0x03A2E8 0E:A2D8: 42        .byte $42   ; 
- D 1 - - - 0x03A2E9 0E:A2D9: 05        .byte $05   ; 
- D 1 - - - 0x03A2EA 0E:A2DA: 9F        .byte $9F   ; 
- D 1 - - - 0x03A2EB 0E:A2DB: 60        .byte $60   ; 
- D 1 - - - 0x03A2EC 0E:A2DC: 07        .byte $07   ; 
- D 1 - - - 0x03A2ED 0E:A2DD: A4        .byte $A4   ; 
- D 1 - - - 0x03A2EE 0E:A2DE: 80        .byte $80   ; 
- D 1 - - - 0x03A2EF 0E:A2DF: 05        .byte $05   ; 
- D 1 - - - 0x03A2F0 0E:A2E0: AB        .byte $AB   ; 
- D 1 - - - 0x03A2F1 0E:A2E1: 85        .byte $85   ; 
- D 1 - - - 0x03A2F2 0E:A2E2: D2        .byte $D2   ; 
- D 1 - - - 0x03A2F3 0E:A2E3: B1        .byte $B1   ; 
- D 1 - - - 0x03A2F4 0E:A2E4: B2        .byte $B2   ; 
- D 1 - - - 0x03A2F5 0E:A2E5: FF        .byte $FF   ; 
- D 1 - - - 0x03A2F6 0E:A2E6: A0        .byte $A0   ; 
- D 1 - - - 0x03A2F7 0E:A2E7: 06        .byte $06   ; 
- D 1 - - - 0x03A2F8 0E:A2E8: B3        .byte $B3   ; 
- D 1 - - - 0x03A2F9 0E:A2E9: A6        .byte $A6   ; 
- D 1 - - - 0x03A2FA 0E:A2EA: DB        .byte $DB   ; 
- D 1 - - - 0x03A2FB 0E:A2EB: BA        .byte $BA   ; 
- D 1 - - - 0x03A2FC 0E:A2EC: FF        .byte $FF   ; 
- D 1 - - - 0x03A2FD 0E:A2ED: C0        .byte $C0   ; 
- D 1 - - - 0x03A2FE 0E:A2EE: 08        .byte $08   ; 
- D 1 - - - 0x03A2FF 0E:A2EF: BB        .byte $BB   ; 
- D 1 - - - 0x03A300 0E:A2F0: E0        .byte $E0   ; 
- D 1 - - - 0x03A301 0E:A2F1: 08        .byte $08   ; 
- D 1 - - - 0x03A302 0E:A2F2: C3        .byte $C3   ; 
- D 1 - - - 0x03A303 0E:A2F3: FF        .byte $FF   ; 
- D 1 - - - 0x03A304 0E:A2F4: 40        .byte $40   ; 
- D 1 - - - 0x03A305 0E:A2F5: 00        .byte $00   ; 
- D 1 - - - 0x03A306 0E:A2F6: FF        .byte $FF   ; 
- D 1 - - - 0x03A307 0E:A2F7: 42        .byte $42   ; 
- D 1 - - - 0x03A308 0E:A2F8: 03        .byte $03   ; 
- D 1 - - - 0x03A309 0E:A2F9: CB        .byte $CB   ; 
- D 1 - - - 0x03A30A 0E:A2FA: 60        .byte $60   ; 
- D 1 - - - 0x03A30B 0E:A2FB: 00        .byte $00   ; 
- D 1 - - - 0x03A30C 0E:A2FC: FF        .byte $FF   ; 
- D 1 - - - 0x03A30D 0E:A2FD: 61        .byte $61   ; 
- D 1 - - - 0x03A30E 0E:A2FE: 04        .byte $04   ; 
- D 1 - - - 0x03A30F 0E:A2FF: CE        .byte $CE   ; 
- D 1 - - - 0x03A310 0E:A300: 80        .byte $80   ; 
- D 1 - - - 0x03A311 0E:A301: 00        .byte $00   ; 
- D 1 - - - 0x03A312 0E:A302: B0        .byte $B0   ; 
- D 1 - - - 0x03A313 0E:A303: D3        .byte $D3   ; 
- D 1 - - - 0x03A314 0E:A304: D4        .byte $D4   ; 
- D 1 - - - 0x03A315 0E:A305: D5        .byte $D5   ; 
- D 1 - - - 0x03A316 0E:A306: FF        .byte $FF   ; 
- D 1 - - - 0x03A317 0E:A307: A0        .byte $A0   ; 
- D 1 - - - 0x03A318 0E:A308: 05        .byte $05   ; 
- D 1 - - - 0x03A319 0E:A309: D6        .byte $D6   ; 
- D 1 - - - 0x03A31A 0E:A30A: FE        .byte $FE   ; 



tbl_A30B:
- D 1 - - - 0x03A31B 0E:A30B: 24        .byte $24   ; 00
- D 1 - - - 0x03A31C 0E:A30C: 26        .byte $26   ; 01
- D 1 - - - 0x03A31D 0E:A30D: 20        .byte $20   ; 02
- D 1 - - - 0x03A31E 0E:A30E: 20        .byte $20   ; 03
- D 1 - - - 0x03A31F 0E:A30F: 21        .byte $21   ; 04
- D 1 - - - 0x03A320 0E:A310: 20        .byte $20   ; 05

tbl_A311:
- D 1 - - - 0x03A321 0E:A311: 42        .byte $42   ; 00
- D 1 - - - 0x03A322 0E:A312: 56        .byte $56   ; 01
- D 1 - - - 0x03A323 0E:A313: 8C        .byte $8C   ; 02
- D 1 - - - 0x03A324 0E:A314: 84        .byte $84   ; 03
- D 1 - - - 0x03A325 0E:A315: D4        .byte $D4   ; 04
- D 1 - - - 0x03A326 0E:A316: CC        .byte $CC   ; 05



tbl_A317:
- D 1 - - - 0x03A327 0E:A317: 00        .byte $00   ; 00 Leo
- D 1 - - - 0x03A328 0E:A318: 00        .byte $00   ; 01 Raph
- D 1 - - - 0x03A329 0E:A319: 00        .byte $00   ; 02 Mike
- D 1 - - - 0x03A32A 0E:A31A: 00        .byte $00   ; 03 Don
- D 1 - - - 0x03A32B 0E:A31B: 04        .byte $04   ; 04 Casey
- D 1 - - - 0x03A32C 0E:A31C: 08        .byte $08   ; 05 Hot
- D 1 - - - 0x03A32D 0E:A31D: 0C        .byte $0C   ; 06 Shred



tbl_A31E:
- D 1 - - - 0x03A32E 0E:A31E: 22        .byte $22, $22, $26, $27   ; 00
- D 1 - - - 0x03A332 0E:A322: 22        .byte $22, $24, $0E, $0E   ; 01
- D 1 - - - 0x03A336 0E:A326: 24        .byte $24, $26, $13, $13   ; 02
- D 1 - - - 0x03A33A 0E:A32A: 22        .byte $22, $24, $26, $27   ; 03



tbl_A32E:
- D 1 - - - 0x03A33E 0E:A32E: 43        .byte $43   ; 
tbl_A32F:
- D 1 - - - 0x03A33F 0E:A32F: 66        .byte $66   ; 
- D 1 - - - 0x03A340 0E:A330: 44        .byte $44   ; 
- D 1 - - - 0x03A341 0E:A331: 48        .byte $48   ; 
- D 1 - - - 0x03A342 0E:A332: 45        .byte $45   ; 
- D 1 - - - 0x03A343 0E:A333: 48        .byte $48   ; 
- D 1 - - - 0x03A344 0E:A334: 46        .byte $46   ; 
- D 1 - - - 0x03A345 0E:A335: 66        .byte $66   ; 
- D 1 - - - 0x03A346 0E:A336: 47        .byte $47   ; 
- D 1 - - - 0x03A347 0E:A337: 2A        .byte $2A   ; 
- D 1 - - - 0x03A348 0E:A338: 48        .byte $48   ; 
- D 1 - - - 0x03A349 0E:A339: 49        .byte $49   ; 
- D 1 - - - 0x03A34A 0E:A33A: 02        .byte $02   ; 
- D 1 - - - 0x03A34B 0E:A33B: 4A        .byte $4A   ; 



tbl_A33C:
- D 1 - - - 0x03A34C 0E:A33C: 36        .byte $36   ; 00 Leo
- D 1 - - - 0x03A34D 0E:A33D: 36        .byte $36   ; 01 Raph
- D 1 - - - 0x03A34E 0E:A33E: 36        .byte $36   ; 02 Mike
- D 1 - - - 0x03A34F 0E:A33F: 36        .byte $36   ; 03 Don
- D 1 - - - 0x03A350 0E:A340: 38        .byte $38   ; 04 Casey
- D 1 - - - 0x03A351 0E:A341: 3A        .byte $3A   ; 05 Hot
- D 1 - - - 0x03A352 0E:A342: 3C        .byte $3C   ; 06 Shred



tbl_A343:
- D 1 - - - 0x03A353 0E:A343: 01        .byte $01   ; 
- D 1 - - - 0x03A354 0E:A344: AB        .byte $AB   ; 
- D 1 - - - 0x03A355 0E:A345: 20        .byte $20   ; 
- D 1 - - - 0x03A356 0E:A346: 77        .byte $77   ; 
- D 1 - - - 0x03A357 0E:A347: FF        .byte $FF   ; 
- D 1 - - - 0x03A358 0E:A348: 01        .byte $01   ; 
- D 1 - - - 0x03A359 0E:A349: B4        .byte $B4   ; 
- D 1 - - - 0x03A35A 0E:A34A: 20        .byte $20   ; 
- D 1 - - - 0x03A35B 0E:A34B: 78        .byte $78   ; 
- D 1 - - - 0x03A35C 0E:A34C: FF        .byte $FF   ; 
- D 1 - - - 0x03A35D 0E:A34D: 01        .byte $01   ; 
- D 1 - - - 0x03A35E 0E:A34E: CB        .byte $CB   ; 
- D 1 - - - 0x03A35F 0E:A34F: 21        .byte $21   ; 
- D 1 - - - 0x03A360 0E:A350: 79        .byte $79   ; 
- D 1 - - - 0x03A361 0E:A351: FF        .byte $FF   ; 
- D 1 - - - 0x03A362 0E:A352: 01        .byte $01   ; 
- D 1 - - - 0x03A363 0E:A353: D4        .byte $D4   ; 
- D 1 - - - 0x03A364 0E:A354: 21        .byte $21   ; 
- D 1 - - - 0x03A365 0E:A355: 7A        .byte $7A   ; 
- D 1 - - - 0x03A366 0E:A356: FF        .byte $FF   ; 
- D 1 - - - 0x03A367 0E:A357: 03        .byte $03   ; 
- D 1 - - - 0x03A368 0E:A358: AC        .byte $AC   ; 
- D 1 - - - 0x03A369 0E:A359: 20        .byte $20   ; 
- D 1 - - - 0x03A36A 0E:A35A: 08        .byte $08   ; 
- D 1 - - - 0x03A36B 0E:A35B: 7B        .byte $7B   ; 
- D 1 - - - 0x03A36C 0E:A35C: 05        .byte $05   ; 
- D 1 - - - 0x03A36D 0E:A35D: CB        .byte $CB   ; 
- D 1 - - - 0x03A36E 0E:A35E: 20        .byte $20   ; 
- D 1 - - - 0x03A36F 0E:A35F: 08        .byte $08   ; 
- D 1 - - - 0x03A370 0E:A360: 7D        .byte $7D   ; 
- D 1 - - - 0x03A371 0E:A361: 05        .byte $05   ; 
- D 1 - - - 0x03A372 0E:A362: D4        .byte $D4   ; 
- D 1 - - - 0x03A373 0E:A363: 20        .byte $20   ; 
- D 1 - - - 0x03A374 0E:A364: 08        .byte $08   ; 
- D 1 - - - 0x03A375 0E:A365: 7E        .byte $7E   ; 
- D 1 - - - 0x03A376 0E:A366: 03        .byte $03   ; 
- D 1 - - - 0x03A377 0E:A367: CC        .byte $CC   ; 
- D 1 - - - 0x03A378 0E:A368: 21        .byte $21   ; 
- D 1 - - - 0x03A379 0E:A369: 08        .byte $08   ; 
- D 1 - - - 0x03A37A 0E:A36A: 7C        .byte $7C   ; 
- D 1 - - - 0x03A37B 0E:A36B: FE        .byte $FE   ; 



.export sub_0x03A37C
sub_0x03A37C:
C - - - - - 0x03A37C 0E:A36C: A5 95     LDA ram_0095
C - - - - - 0x03A37E 0E:A36E: C9 0F     CMP #$0F
C - - - - - 0x03A380 0E:A370: B0 16     BCS bra_A388
C - - - - - 0x03A382 0E:A372: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03A384 0E:A374: 29 10     AND #con_btn_Start
C - - - - - 0x03A386 0E:A376: D0 0B     BNE bra_A383
C - - - - - 0x03A388 0E:A378: A5 22     LDA ram_frame_counter
C - - - - - 0x03A38A 0E:A37A: 29 03     AND #$03
C - - - - - 0x03A38C 0E:A37C: D0 0A     BNE bra_A388
C - - - - - 0x03A38E 0E:A37E: CE 60 05  DEC ram_0560
C - - - - - 0x03A391 0E:A381: D0 05     BNE bra_A388
bra_A383:
C - - - - - 0x03A393 0E:A383: E6 95     INC ram_0095
C - - - - - 0x03A395 0E:A385: 4C 2E E1  JMP loc_0x03E13E
bra_A388:
C - - - - - 0x03A398 0E:A388: 18        CLC
C - - - - - 0x03A399 0E:A389: AD 54 01  LDA ram_0154
C - - - - - 0x03A39C 0E:A38C: 69 03     ADC #$03
C - - - - - 0x03A39E 0E:A38E: AA        TAX
C - - - - - 0x03A39F 0E:A38F: 85 00     STA ram_0000
bra_A391:
C - - - - - 0x03A3A1 0E:A391: A5 22     LDA ram_frame_counter
C - - - - - 0x03A3A3 0E:A393: 20 07 D2  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x03A3A6 0E:A396: 4A        LSR
C - - - - - 0x03A3A7 0E:A397: BC 4C 01  LDY ram_014C,X
C - - - - - 0x03A3AA 0E:A39A: A9 00     LDA #$00
C - - - - - 0x03A3AC 0E:A39C: 79 12 A4  ADC tbl_A412,Y
C - - - - - 0x03A3AF 0E:A39F: 9D 00 04  STA ram_anim_fighter,X
C - - - - - 0x03A3B2 0E:A3A2: BD 20 A4  LDA tbl_A420,X
C - - - - - 0x03A3B5 0E:A3A5: 9D 10 04  STA ram_Y_pos_hi_fighter,X
C - - - - - 0x03A3B8 0E:A3A8: BD 19 A4  LDA tbl_A419,X
C - - - - - 0x03A3BB 0E:A3AB: 9D 40 04  STA ram_X_pos_hi_fighter,X
C - - - - - 0x03A3BE 0E:A3AE: BD 55 01  LDA ram_0155,X
C - - - - - 0x03A3C1 0E:A3B1: 29 03     AND #$03
C - - - - - 0x03A3C3 0E:A3B3: 09 80     ORA #$80
C - - - - - 0x03A3C5 0E:A3B5: 9D 00 05  STA ram_0500,X
C - - - - - 0x03A3C8 0E:A3B8: CA        DEX
C - - - - - 0x03A3C9 0E:A3B9: 10 D6     BPL bra_A391
C - - - - - 0x03A3CB 0E:A3BB: A6 00     LDX ram_0000
bra_A3BD:
C - - - - - 0x03A3CD 0E:A3BD: E0 03     CPX #$03
C - - - - - 0x03A3CF 0E:A3BF: F0 0E     BEQ bra_A3CF
C - - - - - 0x03A3D1 0E:A3C1: BD 55 01  LDA ram_0155,X
C - - - - - 0x03A3D4 0E:A3C4: 29 03     AND #$03
C - - - - - 0x03A3D6 0E:A3C6: A8        TAY
C - - - - - 0x03A3D7 0E:A3C7: A9 00     LDA #$00
C - - - - - 0x03A3D9 0E:A3C9: 99 00 04  STA ram_anim_object,Y
C - - - - - 0x03A3DC 0E:A3CC: CA        DEX
C - - - - - 0x03A3DD 0E:A3CD: D0 EE     BNE bra_A3BD
bra_A3CF:
C - - - - - 0x03A3DF 0E:A3CF: AC 54 01  LDY ram_0154
C - - - - - 0x03A3E2 0E:A3D2: F0 31     BEQ bra_A405_RTS
C - - - - - 0x03A3E4 0E:A3D4: C0 03     CPY #$03
C - - - - - 0x03A3E6 0E:A3D6: B0 0F     BCS bra_A3E7
bra_A3D8:
C - - - - - 0x03A3E8 0E:A3D8: B9 58 01  LDA ram_0158,Y
C - - - - - 0x03A3EB 0E:A3DB: 49 01     EOR #$01
C - - - - - 0x03A3ED 0E:A3DD: 29 0F     AND #$0F
C - - - - - 0x03A3EF 0E:A3DF: AA        TAX
C - - - - - 0x03A3F0 0E:A3E0: 20 06 A4  JSR sub_A406
C - - - - - 0x03A3F3 0E:A3E3: 88        DEY
C - - - - - 0x03A3F4 0E:A3E4: D0 F2     BNE bra_A3D8
C - - - - - 0x03A3F6 0E:A3E6: 60        RTS
bra_A3E7:
C - - - - - 0x03A3F7 0E:A3E7: A2 05     LDX #$05
bra_A3E9:
C - - - - - 0x03A3F9 0E:A3E9: 38        SEC
C - - - - - 0x03A3FA 0E:A3EA: AD 5B 01  LDA ram_015B
C - - - - - 0x03A3FD 0E:A3ED: FD 55 01  SBC ram_0155,X
C - - - - - 0x03A400 0E:A3F0: D0 03     BNE bra_A3F5
C - - - - - 0x03A402 0E:A3F2: 9D 00 04  STA ram_anim_object,X
bra_A3F5:
C - - - - - 0x03A405 0E:A3F5: CA        DEX
C - - - - - 0x03A406 0E:A3F6: 10 F1     BPL bra_A3E9
C - - - - - 0x03A408 0E:A3F8: A2 05     LDX #$05
bra_A3FA:
C - - - - - 0x03A40A 0E:A3FA: BD 00 04  LDA ram_anim_object,X
C - - - - - 0x03A40D 0E:A3FD: F0 03     BEQ bra_A402
C - - - - - 0x03A40F 0E:A3FF: 20 06 A4  JSR sub_A406
bra_A402:
C - - - - - 0x03A412 0E:A402: CA        DEX
C - - - - - 0x03A413 0E:A403: 10 F5     BPL bra_A3FA
bra_A405_RTS:
C - - - - - 0x03A415 0E:A405: 60        RTS



sub_A406:
C - - - - - 0x03A416 0E:A406: BD 00 04  LDA ram_anim_object,X
C - - - - - 0x03A419 0E:A409: 4A        LSR
C - - - - - 0x03A41A 0E:A40A: 90 05     BCC bra_A411_RTS
C - - - - - 0x03A41C 0E:A40C: A9 4C     LDA #$4C
C - - - - - 0x03A41E 0E:A40E: 9D 00 04  STA ram_anim_object,X
bra_A411_RTS:
C - - - - - 0x03A421 0E:A411: 60        RTS



tbl_A412:
- D 1 - - - 0x03A422 0E:A412: 44        .byte $44   ; 00 Leo
- D 1 - - - 0x03A423 0E:A413: 44        .byte $44   ; 01 Raph
- D 1 - - - 0x03A424 0E:A414: 44        .byte $44   ; 02 Mike
- D 1 - - - 0x03A425 0E:A415: 44        .byte $44   ; 03 Don
- D 1 - - - 0x03A426 0E:A416: 46        .byte $46   ; 04 Casey
- D 1 - - - 0x03A427 0E:A417: 48        .byte $48   ; 05 Hot
- D 1 - - - 0x03A428 0E:A418: 4A        .byte $4A   ; 06 Shred

tbl_A419:
- D 1 - - - 0x03A429 0E:A419: 20        .byte $20   ; 00 Leo
- D 1 - - - 0x03A42A 0E:A41A: 60        .byte $60   ; 01 Raph
- D 1 - - - 0x03A42B 0E:A41B: A8        .byte $A8   ; 02 Mike
- D 1 - - - 0x03A42C 0E:A41C: E8        .byte $E8   ; 03 Don
- D 1 - - - 0x03A42D 0E:A41D: 4C        .byte $4C   ; 04 Casey
- D 1 - - - 0x03A42E 0E:A41E: BC        .byte $BC   ; 05 Hot
- D 1 - - - 0x03A42F 0E:A41F: 84        .byte $84   ; 06 Shred

tbl_A420:
- D 1 - - - 0x03A430 0E:A420: A0        .byte $A0   ; 00 Leo
- D 1 - - - 0x03A431 0E:A421: A0        .byte $A0   ; 01 Raph
- D 1 - - - 0x03A432 0E:A422: A0        .byte $A0   ; 02 Mike
- D 1 - - - 0x03A433 0E:A423: A0        .byte $A0   ; 03 Don
- D 1 - - - 0x03A434 0E:A424: 70        .byte $70   ; 04 Casey
- D 1 - - - 0x03A435 0E:A425: 70        .byte $70   ; 05 Hot
- D 1 - - - 0x03A436 0E:A426: 58        .byte $58   ; 06 Shred



.export sub_0x03A437
sub_0x03A437:
C - - - - - 0x03A437 0E:A427: A5 96     LDA ram_0096
C - - - - - 0x03A439 0E:A429: D0 24     BNE bra_A44F
C - - - - - 0x03A43B 0E:A42B: 20 C1 F7  JSR sub_0x03F7D1
C - - - - - 0x03A43E 0E:A42E: 20 3C F0  JSR sub_0x03F04C
C - - - - - 0x03A441 0E:A431: A9 0F     LDA #$0F
C - - - - - 0x03A443 0E:A433: 20 14 F8  JSR sub_0x03F824
C - - - - - 0x03A446 0E:A436: E6 96     INC ram_0096
C - - - - - 0x03A448 0E:A438: A0 00     LDY #$00
bra_A43A_loop:
C - - - - - 0x03A44A 0E:A43A: B9 1A A5  LDA tbl_A51A,Y
C - - - - - 0x03A44D 0E:A43D: F0 06     BEQ bra_A445
C - - - - - 0x03A44F 0E:A43F: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x03A452 0E:A442: C8        INY
C - - - - - 0x03A453 0E:A443: D0 F5     BNE bra_A43A_loop
bra_A445:
C - - - - - 0x03A455 0E:A445: A9 19     LDA #$19
C - - - - - 0x03A457 0E:A447: 20 E5 F6  JSR sub_0x03F6F5
C - - - - - 0x03A45A 0E:A44A: A9 1A     LDA #$1A
C - - - - - 0x03A45C 0E:A44C: 4C E5 F6  JMP loc_0x03F6F5
bra_A44F:
C - - - - - 0x03A45F 0E:A44F: A9 00     LDA #$00
C - - - - - 0x03A461 0E:A451: 85 96     STA ram_0096
C - - - - - 0x03A463 0E:A453: E6 95     INC ram_0095
C - - - - - 0x03A465 0E:A455: A9 00     LDA #$00
C - - - - - 0x03A467 0E:A457: 8D 30 06  STA ram_0630
C - - - - - 0x03A46A 0E:A45A: A9 03     LDA #$03
C - - - - - 0x03A46C 0E:A45C: 20 D3 F7  JSR sub_0x03F7E3
C - - - - - 0x03A46F 0E:A45F: A2 06     LDX #$06
C - - - - - 0x03A471 0E:A461: A9 64     LDA #$64
C - - - - - 0x03A473 0E:A463: 20 46 D3  JSR sub_0x03D356
C - - - - - 0x03A476 0E:A466: AD 3F 06  LDA ram_063F
C - - - - - 0x03A479 0E:A469: 30 06     BMI bra_A471
C - - - - - 0x03A47B 0E:A46B: 49 01     EOR #$01
C - - - - - 0x03A47D 0E:A46D: AA        TAX
C - - - - - 0x03A47E 0E:A46E: FE 00 04  INC ram_anim_object,X
bra_A471:
C - - - - - 0x03A481 0E:A471: A2 01     LDX #$01
bra_A473:
C - - - - - 0x03A483 0E:A473: A9 00     LDA #$00
C - - - - - 0x03A485 0E:A475: 9D 30 04  STA ram_0430,X
C - - - - - 0x03A488 0E:A478: BD 98 A5  LDA tbl_A598,X
C - - - - - 0x03A48B 0E:A47B: 9D 40 04  STA ram_X_pos_hi_object,X
C - - - - - 0x03A48E 0E:A47E: BD 9A A5  LDA tbl_A59A,X
C - - - - - 0x03A491 0E:A481: 9D 10 04  STA ram_Y_pos_hi_object,X
C - - - - - 0x03A494 0E:A484: CA        DEX
C - - - - - 0x03A495 0E:A485: 10 EC     BPL bra_A473
C - - - - - 0x03A497 0E:A487: A9 43     LDA #$43
C - - - - - 0x03A499 0E:A489: 20 90 F6  JSR sub_0x03F6A0
C - - - - - 0x03A49C 0E:A48C: 4C 41 E1  JMP loc_0x03E151



.export sub_0x03A49F
sub_0x03A49F:
C - - - - - 0x03A49F 0E:A48F: A4 96     LDY ram_0096
C - - - - - 0x03A4A1 0E:A491: D0 3E     BNE bra_A4D1
C - - - - - 0x03A4A3 0E:A493: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03A4A5 0E:A495: 29 2C     AND #con_btns_UD + con_btn_Select
C - - - - - 0x03A4A7 0E:A497: F0 0D     BEQ bra_A4A6
C - - - - - 0x03A4A9 0E:A499: AD 30 06  LDA ram_0630
C - - - - - 0x03A4AC 0E:A49C: 49 01     EOR #$01
C - - - - - 0x03A4AE 0E:A49E: 8D 30 06  STA ram_0630
C - - - - - 0x03A4B1 0E:A4A1: A9 25     LDA #$25
C - - - - - 0x03A4B3 0E:A4A3: 20 90 F6  JSR sub_0x03F6A0
bra_A4A6:
C - - - - - 0x03A4B6 0E:A4A6: AC 30 06  LDY ram_0630
C - - - - - 0x03A4B9 0E:A4A9: B9 18 A5  LDA tbl_A518,Y
C - - - - - 0x03A4BC 0E:A4AC: 8D 12 04  STA ram_Y_pos_hi_blow
C - - - - - 0x03A4BF 0E:A4AF: A9 58     LDA #$58
C - - - - - 0x03A4C1 0E:A4B1: 8D 42 04  STA ram_X_pos_hi_blow
C - - - - - 0x03A4C4 0E:A4B4: A5 22     LDA ram_frame_counter
C - - - - - 0x03A4C6 0E:A4B6: 29 0C     AND #$0C
C - - - - - 0x03A4C8 0E:A4B8: 4A        LSR
C - - - - - 0x03A4C9 0E:A4B9: 4A        LSR
C - - - - - 0x03A4CA 0E:A4BA: 69 55     ADC #$55
C - - - - - 0x03A4CC 0E:A4BC: 8D 02 04  STA ram_0402
C - - - - - 0x03A4CF 0E:A4BF: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03A4D1 0E:A4C1: 29 10     AND #con_btn_Start
C - - - - - 0x03A4D3 0E:A4C3: F0 52     BEQ bra_A517_RTS
C - - - - - 0x03A4D5 0E:A4C5: E6 96     INC ram_0096
C - - - - - 0x03A4D7 0E:A4C7: A9 50     LDA #$50
C - - - - - 0x03A4D9 0E:A4C9: 8D 60 05  STA ram_0560
C - - - - - 0x03A4DC 0E:A4CC: A9 29     LDA #$29
C - - - - - 0x03A4DE 0E:A4CE: 4C 90 F6  JMP loc_0x03F6A0
bra_A4D1:
C - - - - - 0x03A4E1 0E:A4D1: CE 60 05  DEC ram_0560
C - - - - - 0x03A4E4 0E:A4D4: F0 10     BEQ bra_A4E6
C - - - - - 0x03A4E6 0E:A4D6: AD 60 05  LDA ram_0560
C - - - - - 0x03A4E9 0E:A4D9: 29 08     AND #$08
C - - - - - 0x03A4EB 0E:A4DB: 20 02 D2  JSR sub_0x03D212_multiply_by_10h
C - - - - - 0x03A4EE 0E:A4DE: 09 19     ORA #$19
C - - - - - 0x03A4F0 0E:A4E0: 6D 30 06  ADC ram_0630
C - - - - - 0x03A4F3 0E:A4E3: 4C E5 F6  JMP loc_0x03F6F5
bra_A4E6:
C - - - - - 0x03A4F6 0E:A4E6: A0 02     LDY #$02
C - - - - - 0x03A4F8 0E:A4E8: AD 30 06  LDA ram_0630
C - - - - - 0x03A4FB 0E:A4EB: F0 1C     BEQ bra_A509
C - - - - - 0x03A4FD 0E:A4ED: A5 9F     LDA ram_009F
C - - - - - 0x03A4FF 0E:A4EF: 85 9E     STA ram_009E
C - - - - - 0x03A501 0E:A4F1: A5 27     LDA ram_cursor_main_menu_index
C - - - - - 0x03A503 0E:A4F3: C5 2C     CMP ram_002C
C - - - - - 0x03A505 0E:A4F5: F0 1A     BEQ bra_A511
C - - - - - 0x03A507 0E:A4F7: 85 2C     STA ram_002C
C - - - - - 0x03A509 0E:A4F9: AD 0F 01  LDA ram_010F
C - - - - - 0x03A50C 0E:A4FC: 29 F0     AND #$F0
C - - - - - 0x03A50E 0E:A4FE: 20 19 A6  JSR sub_A619
C - - - - - 0x03A511 0E:A501: 85 A1     STA ram_option_strength + 1
C - - - - - 0x03A513 0E:A503: 88        DEY
C - - - - - 0x03A514 0E:A504: 84 94     STY ram_0094
C - - - - - 0x03A516 0E:A506: 4C 0E A5  JMP loc_A50E
bra_A509:
C - - - - - 0x03A519 0E:A509: 84 94     STY ram_0094
C - - - - - 0x03A51B 0E:A50B: 20 09 DE  JSR sub_0x03DE19
loc_A50E:
C D 1 - - - 0x03A51E 0E:A50E: 4C 2E E1  JMP loc_0x03E13E
bra_A511:
C - - - - - 0x03A521 0E:A511: 20 09 DE  JSR sub_0x03DE19
C - - - - - 0x03A524 0E:A514: 4C CD F5  JMP loc_0x03F5DD
bra_A517_RTS:
C - - - - - 0x03A527 0E:A517: 60        RTS



tbl_A518:
- D 1 - - - 0x03A528 0E:A518: C3        .byte $C3   ; 00
- D 1 - - - 0x03A529 0E:A519: D3        .byte $D3   ; 01



tbl_A51A:
- D 1 - - - 0x03A52A 0E:A51A: 03        .byte $03   ; 
- D 1 - - - 0x03A52B 0E:A51B: C0        .byte $C0   ; 
- D 1 - - - 0x03A52C 0E:A51C: 23        .byte $23   ; 
- D 1 - - - 0x03A52D 0E:A51D: 09        .byte $09   ; 
- D 1 - - - 0x03A52E 0E:A51E: FF        .byte $FF   ; 
- D 1 - - - 0x03A52F 0E:A51F: 03        .byte $03   ; 
- D 1 - - - 0x03A530 0E:A520: CB        .byte $CB   ; 
- D 1 - - - 0x03A531 0E:A521: 23        .byte $23   ; 
- D 1 - - - 0x03A532 0E:A522: 06        .byte $06   ; 
- D 1 - - - 0x03A533 0E:A523: FF        .byte $FF   ; 
- D 1 - - - 0x03A534 0E:A524: 03        .byte $03   ; 
- D 1 - - - 0x03A535 0E:A525: D3        .byte $D3   ; 
- D 1 - - - 0x03A536 0E:A526: 23        .byte $23   ; 
- D 1 - - - 0x03A537 0E:A527: 0A        .byte $0A   ; 
- D 1 - - - 0x03A538 0E:A528: FF        .byte $FF   ; 
- D 1 - - - 0x03A539 0E:A529: 03        .byte $03   ; 
- D 1 - - - 0x03A53A 0E:A52A: DD        .byte $DD   ; 
- D 1 - - - 0x03A53B 0E:A52B: 23        .byte $23   ; 
- D 1 - - - 0x03A53C 0E:A52C: 02        .byte $02   ; 
- D 1 - - - 0x03A53D 0E:A52D: 5F        .byte $5F   ; 
- D 1 - - - 0x03A53E 0E:A52E: 03        .byte $03   ; 
- D 1 - - - 0x03A53F 0E:A52F: DF        .byte $DF   ; 
- D 1 - - - 0x03A540 0E:A530: 23        .byte $23   ; 
- D 1 - - - 0x03A541 0E:A531: 06        .byte $06   ; 
- D 1 - - - 0x03A542 0E:A532: FF        .byte $FF   ; 
- D 1 - - - 0x03A543 0E:A533: 03        .byte $03   ; 
- D 1 - - - 0x03A544 0E:A534: E5        .byte $E5   ; 
- D 1 - - - 0x03A545 0E:A535: 23        .byte $23   ; 
- D 1 - - - 0x03A546 0E:A536: 02        .byte $02   ; 
- D 1 - - - 0x03A547 0E:A537: 55        .byte $55   ; 
- D 1 - - - 0x03A548 0E:A538: 03        .byte $03   ; 
- D 1 - - - 0x03A549 0E:A539: E7        .byte $E7   ; 
- D 1 - - - 0x03A54A 0E:A53A: 23        .byte $23   ; 
- D 1 - - - 0x03A54B 0E:A53B: 06        .byte $06   ; 
- D 1 - - - 0x03A54C 0E:A53C: FF        .byte $FF   ; 
- D 1 - - - 0x03A54D 0E:A53D: 03        .byte $03   ; 
- D 1 - - - 0x03A54E 0E:A53E: ED        .byte $ED   ; 
- D 1 - - - 0x03A54F 0E:A53F: 23        .byte $23   ; 
- D 1 - - - 0x03A550 0E:A540: 02        .byte $02   ; 
- D 1 - - - 0x03A551 0E:A541: F5        .byte $F5   ; 
- D 1 - - - 0x03A552 0E:A542: 03        .byte $03   ; 
- D 1 - - - 0x03A553 0E:A543: EF        .byte $EF   ; 
- D 1 - - - 0x03A554 0E:A544: 23        .byte $23   ; 
- D 1 - - - 0x03A555 0E:A545: 08        .byte $08   ; 
- D 1 - - - 0x03A556 0E:A546: FF        .byte $FF   ; 
- D 1 - - - 0x03A557 0E:A547: 01        .byte $01   ; 
- D 1 - - - 0x03A558 0E:A548: 63        .byte $63   ; 
- D 1 - - - 0x03A559 0E:A549: 20        .byte $20   ; 
- D 1 - - - 0x03A55A 0E:A54A: 77        .byte $77   ; 
- D 1 - - - 0x03A55B 0E:A54B: FF        .byte $FF   ; 
- D 1 - - - 0x03A55C 0E:A54C: 01        .byte $01   ; 
- D 1 - - - 0x03A55D 0E:A54D: 6C        .byte $6C   ; 
- D 1 - - - 0x03A55E 0E:A54E: 20        .byte $20   ; 
- D 1 - - - 0x03A55F 0E:A54F: 78        .byte $78   ; 
- D 1 - - - 0x03A560 0E:A550: FF        .byte $FF   ; 
- D 1 - - - 0x03A561 0E:A551: 01        .byte $01   ; 
- D 1 - - - 0x03A562 0E:A552: 83        .byte $83   ; 
- D 1 - - - 0x03A563 0E:A553: 21        .byte $21   ; 
- D 1 - - - 0x03A564 0E:A554: 79        .byte $79   ; 
- D 1 - - - 0x03A565 0E:A555: FF        .byte $FF   ; 
- D 1 - - - 0x03A566 0E:A556: 01        .byte $01   ; 
- D 1 - - - 0x03A567 0E:A557: 8C        .byte $8C   ; 
- D 1 - - - 0x03A568 0E:A558: 21        .byte $21   ; 
- D 1 - - - 0x03A569 0E:A559: 7A        .byte $7A   ; 
- D 1 - - - 0x03A56A 0E:A55A: FF        .byte $FF   ; 
- D 1 - - - 0x03A56B 0E:A55B: 03        .byte $03   ; 
- D 1 - - - 0x03A56C 0E:A55C: 64        .byte $64   ; 
- D 1 - - - 0x03A56D 0E:A55D: 20        .byte $20   ; 
- D 1 - - - 0x03A56E 0E:A55E: 08        .byte $08   ; 
- D 1 - - - 0x03A56F 0E:A55F: 7B        .byte $7B   ; 
- D 1 - - - 0x03A570 0E:A560: 03        .byte $03   ; 
- D 1 - - - 0x03A571 0E:A561: 84        .byte $84   ; 
- D 1 - - - 0x03A572 0E:A562: 21        .byte $21   ; 
- D 1 - - - 0x03A573 0E:A563: 08        .byte $08   ; 
- D 1 - - - 0x03A574 0E:A564: 7C        .byte $7C   ; 
- D 1 - - - 0x03A575 0E:A565: 05        .byte $05   ; 
- D 1 - - - 0x03A576 0E:A566: 83        .byte $83   ; 
- D 1 - - - 0x03A577 0E:A567: 20        .byte $20   ; 
- D 1 - - - 0x03A578 0E:A568: 08        .byte $08   ; 
- D 1 - - - 0x03A579 0E:A569: 7D        .byte $7D   ; 
- D 1 - - - 0x03A57A 0E:A56A: 05        .byte $05   ; 
- D 1 - - - 0x03A57B 0E:A56B: 8C        .byte $8C   ; 
- D 1 - - - 0x03A57C 0E:A56C: 20        .byte $20   ; 
- D 1 - - - 0x03A57D 0E:A56D: 08        .byte $08   ; 
- D 1 - - - 0x03A57E 0E:A56E: 7E        .byte $7E   ; 
- D 1 - - - 0x03A57F 0E:A56F: 01        .byte $01   ; 
- D 1 - - - 0x03A580 0E:A570: B3        .byte $B3   ; 
- D 1 - - - 0x03A581 0E:A571: 21        .byte $21   ; 
- D 1 - - - 0x03A582 0E:A572: 77        .byte $77   ; 
- D 1 - - - 0x03A583 0E:A573: FF        .byte $FF   ; 
- D 1 - - - 0x03A584 0E:A574: 01        .byte $01   ; 
- D 1 - - - 0x03A585 0E:A575: BC        .byte $BC   ; 
- D 1 - - - 0x03A586 0E:A576: 21        .byte $21   ; 
- D 1 - - - 0x03A587 0E:A577: 78        .byte $78   ; 
- D 1 - - - 0x03A588 0E:A578: FF        .byte $FF   ; 
- D 1 - - - 0x03A589 0E:A579: 01        .byte $01   ; 
- D 1 - - - 0x03A58A 0E:A57A: D3        .byte $D3   ; 
- D 1 - - - 0x03A58B 0E:A57B: 22        .byte $22   ; 
- D 1 - - - 0x03A58C 0E:A57C: 79        .byte $79   ; 
- D 1 - - - 0x03A58D 0E:A57D: FF        .byte $FF   ; 
- D 1 - - - 0x03A58E 0E:A57E: 01        .byte $01   ; 
- D 1 - - - 0x03A58F 0E:A57F: DC        .byte $DC   ; 
- D 1 - - - 0x03A590 0E:A580: 22        .byte $22   ; 
- D 1 - - - 0x03A591 0E:A581: 7A        .byte $7A   ; 
- D 1 - - - 0x03A592 0E:A582: FF        .byte $FF   ; 
- D 1 - - - 0x03A593 0E:A583: 03        .byte $03   ; 
- D 1 - - - 0x03A594 0E:A584: B4        .byte $B4   ; 
- D 1 - - - 0x03A595 0E:A585: 21        .byte $21   ; 
- D 1 - - - 0x03A596 0E:A586: 08        .byte $08   ; 
- D 1 - - - 0x03A597 0E:A587: 7B        .byte $7B   ; 
- D 1 - - - 0x03A598 0E:A588: 03        .byte $03   ; 
- D 1 - - - 0x03A599 0E:A589: D4        .byte $D4   ; 
- D 1 - - - 0x03A59A 0E:A58A: 22        .byte $22   ; 
- D 1 - - - 0x03A59B 0E:A58B: 08        .byte $08   ; 
- D 1 - - - 0x03A59C 0E:A58C: 7C        .byte $7C   ; 
- D 1 - - - 0x03A59D 0E:A58D: 05        .byte $05   ; 
- D 1 - - - 0x03A59E 0E:A58E: D3        .byte $D3   ; 
- D 1 - - - 0x03A59F 0E:A58F: 21        .byte $21   ; 
- D 1 - - - 0x03A5A0 0E:A590: 08        .byte $08   ; 
- D 1 - - - 0x03A5A1 0E:A591: 7D        .byte $7D   ; 
- D 1 - - - 0x03A5A2 0E:A592: 05        .byte $05   ; 
- D 1 - - - 0x03A5A3 0E:A593: DC        .byte $DC   ; 
- D 1 - - - 0x03A5A4 0E:A594: 21        .byte $21   ; 
- D 1 - - - 0x03A5A5 0E:A595: 08        .byte $08   ; 
- D 1 - - - 0x03A5A6 0E:A596: 7E        .byte $7E   ; 
- D 1 - - - 0x03A5A7 0E:A597: 00        .byte $00   ; 



tbl_A598:
- D 1 - - - 0x03A5A8 0E:A598: 20        .byte $20   ; 00
- D 1 - - - 0x03A5A9 0E:A599: A0        .byte $A0   ; 01

tbl_A59A:
- D 1 - - - 0x03A5AA 0E:A59A: 1F        .byte $1F   ; 00
- D 1 - - - 0x03A5AB 0E:A59B: 6F        .byte $6F   ; 01



sub_A59C:
C - - - - - 0x03A5AC 0E:A59C: A5 2C     LDA ram_002C
C - - - - - 0x03A5AE 0E:A59E: F0 03     BEQ bra_A5A3_RTS
C - - - - - 0x03A5B0 0E:A5A0: AD 27 01  LDA ram_option_timer
bra_A5A3_RTS:
C - - - - - 0x03A5B3 0E:A5A3: 60        RTS



tbl_A5AA:
- D 1 - I - 0x03A5BA 0E:A5AA: 00        .byte $00   ; 
- D 1 - I - 0x03A5BB 0E:A5AB: 00        .byte $00   ; 
- D 1 - I - 0x03A5BC 0E:A5AC: 8D        .byte $8D   ; 
- D 1 - I - 0x03A5BD 0E:A5AD: 92        .byte $92   ; 
- D 1 - I - 0x03A5BE 0E:A5AE: 8B        .byte $8B   ; 
- D 1 - I - 0x03A5BF 0E:A5AF: 96        .byte $96   ; 
- D 1 - I - 0x03A5C0 0E:A5B0: 96        .byte $96   ; 
- D 1 - I - 0x03A5C1 0E:A5B1: 8F        .byte $8F   ; 
- D 1 - I - 0x03A5C2 0E:A5B2: 98        .byte $98   ; 
- D 1 - I - 0x03A5C3 0E:A5B3: 91        .byte $91   ; 
- D 1 - I - 0x03A5C4 0E:A5B4: 8F        .byte $8F   ; 
- D 1 - I - 0x03A5C5 0E:A5B5: 00        .byte $00   ; 
- D 1 - I - 0x03A5C6 0E:A5B6: 9E        .byte $9E   ; 
- D 1 - I - 0x03A5C7 0E:A5B7: 92        .byte $92   ; 
- D 1 - I - 0x03A5C8 0E:A5B8: 8F        .byte $8F   ; 
- D 1 - I - 0x03A5C9 0E:A5B9: 00        .byte $00   ; 
- D 1 - I - 0x03A5CA 0E:A5BA: 8F        .byte $8F   ; 
- D 1 - I - 0x03A5CB 0E:A5BB: A2        .byte $A2   ; 
- D 1 - I - 0x03A5CC 0E:A5BC: 9A        .byte $9A   ; 
- D 1 - I - 0x03A5CD 0E:A5BD: 8F        .byte $8F   ; 
- D 1 - I - 0x03A5CE 0E:A5BE: 9C        .byte $9C   ; 
- D 1 - I - 0x03A5CF 0E:A5BF: 9E        .byte $9E   ; 
- D 1 - I - 0x03A5D0 0E:A5C0: BD        .byte $BD   ; 
- D 1 - I - 0x03A5D1 0E:A5C1: 00        .byte $00   ; 
- D 1 - I - 0x03A5D2 0E:A5C2: 00        .byte $00   ; 
- D 1 - I - 0x03A5D3 0E:A5C3: 97        .byte $97   ; 
- D 1 - I - 0x03A5D4 0E:A5C4: 99        .byte $99   ; 
- D 1 - I - 0x03A5D5 0E:A5C5: 8E        .byte $8E   ; 
- D 1 - I - 0x03A5D6 0E:A5C6: 8F        .byte $8F   ; 
- D 1 - I - 0x03A5D7 0E:A5C7: 00        .byte $00   ; 
- D 1 - I - 0x03A5D8 0E:A5C8: 98        .byte $98   ; 
- D 1 - I - 0x03A5D9 0E:A5C9: 8F        .byte $8F   ; 
- D 1 - I - 0x03A5DA 0E:A5CA: A2        .byte $A2   ; 
- D 1 - I - 0x03A5DB 0E:A5CB: 9E        .byte $9E   ; 
- D 1 - I - 0x03A5DC 0E:A5CC: 00        .byte $00   ; 
- D 1 - I - 0x03A5DD 0E:A5CD: 9E        .byte $9E   ; 
- D 1 - I - 0x03A5DE 0E:A5CE: 93        .byte $93   ; 
- D 1 - I - 0x03A5DF 0E:A5CF: 97        .byte $97   ; 
- D 1 - I - 0x03A5E0 0E:A5D0: 8F        .byte $8F   ; 
- D 1 - I - 0x03A5E1 0E:A5D1: AC        .byte $AC   ; 
- D 1 - I - 0x03A5E2 0E:A5D2: BD        .byte $BD   ; 
- D 1 - I - 0x03A5E3 0E:A5D3: BD        .byte $BD   ; 
- D 1 - I - 0x03A5E4 0E:A5D4: 00        .byte $00   ; 
- D 1 - I - 0x03A5E5 0E:A5D5: 00        .byte $00   ; 
- D 1 - I - 0x03A5E6 0E:A5D6: 00        .byte $00   ; 
- D 1 - I - 0x03A5E7 0E:A5D7: 00        .byte $00   ; 
- D 1 - I - 0x03A5E8 0E:A5D8: 00        .byte $00   ; 
- D 1 - I - 0x03A5E9 0E:A5D9: A6        .byte $A6   ; 
- D 1 - I - 0x03A5EA 0E:A5DA: 00        .byte $00   ; 
- D 1 - I - 0x03A5EB 0E:A5DB: 95        .byte $95   ; 
- D 1 - I - 0x03A5EC 0E:A5DC: 99        .byte $99   ; 
- D 1 - I - 0x03A5ED 0E:A5DD: 98        .byte $98   ; 
- D 1 - I - 0x03A5EE 0E:A5DE: 8B        .byte $8B   ; 
- D 1 - I - 0x03A5EF 0E:A5DF: 97        .byte $97   ; 
- D 1 - I - 0x03A5F0 0E:A5E0: 93        .byte $93   ; 
- D 1 - I - 0x03A5F1 0E:A5E1: 00        .byte $00   ; 
- D 1 - I - 0x03A5F2 0E:A5E2: 82        .byte $82   ; 
- D 1 - I - 0x03A5F3 0E:A5E3: 8A        .byte $8A   ; 
- D 1 - I - 0x03A5F4 0E:A5E4: 8A        .byte $8A   ; 
- D 1 - I - 0x03A5F5 0E:A5E5: 84        .byte $84   ; 
- D 1 - I - 0x03A5F6 0E:A5E6: BD        .byte $BD   ; 
- D 1 - I - 0x03A5F7 0E:A5E7: BD        .byte $BD   ; 
- D 1 - I - 0x03A5F8 0E:A5E8: 00        .byte $00   ; 
- D 1 - I - 0x03A5F9 0E:A5E9: 00        .byte $00   ; 
- D 1 - I - 0x03A5FA 0E:A5EA: 8B        .byte $8B   ; 
- D 1 - I - 0x03A5FB 0E:A5EB: 96        .byte $96   ; 
- D 1 - I - 0x03A5FC 0E:A5EC: 96        .byte $96   ; 
- D 1 - I - 0x03A5FD 0E:A5ED: 00        .byte $00   ; 
- D 1 - I - 0x03A5FE 0E:A5EE: 9C        .byte $9C   ; 
- D 1 - I - 0x03A5FF 0E:A5EF: 93        .byte $93   ; 
- D 1 - I - 0x03A600 0E:A5F0: 91        .byte $91   ; 
- D 1 - I - 0x03A601 0E:A5F1: 92        .byte $92   ; 
- D 1 - I - 0x03A602 0E:A5F2: 9E        .byte $9E   ; 
- D 1 - I - 0x03A603 0E:A5F3: 9D        .byte $9D   ; 
- D 1 - I - 0x03A604 0E:A5F4: 00        .byte $00   ; 
- D 1 - I - 0x03A605 0E:A5F5: 9C        .byte $9C   ; 
- D 1 - I - 0x03A606 0E:A5F6: 8F        .byte $8F   ; 
- D 1 - I - 0x03A607 0E:A5F7: 9D        .byte $9D   ; 
- D 1 - I - 0x03A608 0E:A5F8: 8F        .byte $8F   ; 
- D 1 - I - 0x03A609 0E:A5F9: 9C        .byte $9C   ; 
- D 1 - I - 0x03A60A 0E:A5FA: A0        .byte $A0   ; 
- D 1 - I - 0x03A60B 0E:A5FB: 8F        .byte $8F   ; 
- D 1 - I - 0x03A60C 0E:A5FC: 8E        .byte $8E   ; 
- D 1 - I - 0x03A60D 0E:A5FD: A7        .byte $A7   ; 
- D 1 - I - 0x03A60E 0E:A5FE: BB        .byte $BB   ; 
- D 1 - I - 0x03A60F 0E:A5FF: F0        .byte $F0   ; 
- D 1 - I - 0x03A610 0E:A600: FF        .byte $FF   ; 



sub_A601:
C - - - - - 0x03A611 0E:A601: EE 31 06  INC ram_0631
C - - - - - 0x03A614 0E:A604: C0 0E     CPY #$0E
C - - - - - 0x03A616 0E:A606: D0 10     BNE bra_A618_RTS
C - - - - - 0x03A618 0E:A608: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x03A61B 0E:A60B: 4A        LSR
C - - - - - 0x03A61C 0E:A60C: F0 0A     BEQ bra_A618_RTS
C - - - - - 0x03A61E 0E:A60E: A9 AA     LDA #< tbl_A5AA
C - - - - - 0x03A620 0E:A610: 8D 33 06  STA ram_0633
C - - - - - 0x03A623 0E:A613: A9 A5     LDA #> tbl_A5AA
C - - - - - 0x03A625 0E:A615: 8D 34 06  STA ram_0634
bra_A618_RTS:
C - - - - - 0x03A628 0E:A618: 60        RTS



sub_A619:
C - - - - - 0x03A629 0E:A619: 20 07 D2  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x03A62C 0E:A61C: 85 AE     STA ram_00AE
C - - - - - 0x03A62E 0E:A61E: AD 0F 01  LDA ram_010F
C - - - - - 0x03A631 0E:A621: 29 0F     AND #$0F
C - - - - - 0x03A633 0E:A623: 85 AF     STA ram_00AF
C - - - - - 0x03A635 0E:A625: AD 10 01  LDA ram_0110
C - - - - - 0x03A638 0E:A628: 29 F0     AND #$F0
C - - - - - 0x03A63A 0E:A62A: 20 07 D2  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x03A63D 0E:A62D: 85 B0     STA ram_00B0
C - - - - - 0x03A63F 0E:A62F: AD 10 01  LDA ram_0110
C - - - - - 0x03A642 0E:A632: 29 0F     AND #$0F
C - - - - - 0x03A644 0E:A634: 85 B1     STA ram_00B1
C - - - - - 0x03A646 0E:A636: A9 00     LDA #$00
C - - - - - 0x03A648 0E:A638: 85 A0     STA ram_option_strength
C - - - - - 0x03A64A 0E:A63A: 60        RTS



sub_A63B:
C - - - - - 0x03A64B 0E:A63B: F0 10     BEQ bra_A64D
bra_A63D:
C - - - - - 0x03A64D 0E:A63D: A6 95     LDX ram_0095
C - - - - - 0x03A64F 0E:A63F: BD DB BF  LDA tbl_BFDB,X
C - - - - - 0x03A652 0E:A642: 18        CLC
C - - - - - 0x03A653 0E:A643: 65 AD     ADC ram_00AD
C - - - - - 0x03A655 0E:A645: 20 E5 F6  JSR sub_0x03F6F5
C - - - - - 0x03A658 0E:A648: C6 AD     DEC ram_00AD
C - - - - - 0x03A65A 0E:A64A: D0 F1     BNE bra_A63D
C - - - - - 0x03A65C 0E:A64C: 60        RTS
bra_A64D:
C - - - - - 0x03A65D 0E:A64D: C6 AD     DEC ram_00AD
C - - - - - 0x03A65F 0E:A64F: 20 A9 81  JSR sub_81A9
C - - - - - 0x03A662 0E:A652: A6 95     LDX ram_0095
C - - - - - 0x03A664 0E:A654: CA        DEX
C - - - - - 0x03A665 0E:A655: D0 03     BNE bra_A65A
C - - - - - 0x03A667 0E:A657: 4C 48 80  JMP loc_8048
bra_A65A:
C - - - - - 0x03A66A 0E:A65A: 20 A4 A6  JSR sub_A6A4
C - - - - - 0x03A66D 0E:A65D: A2 00     LDX #$00
C - - - - - 0x03A66F 0E:A65F: 20 A4 A6  JSR sub_A6A4
C - - - - - 0x03A672 0E:A662: 4C E5 A6  JMP loc_A6E5



loc_A680:
C D 1 - - - 0x03A690 0E:A680: A6 95     LDX ram_0095
C - - - - - 0x03A692 0E:A682: E0 02     CPX #$02
C - - - - - 0x03A694 0E:A684: AE B0 04  LDX ram_04B0
C - - - - - 0x03A697 0E:A687: B0 03     BCS bra_A68C
C - - - - - 0x03A699 0E:A689: 4C BC 80  JMP loc_80BC
bra_A68C:
C - - - - - 0x03A69C 0E:A68C: F0 07     BEQ bra_A695    ; 00
C - - - - - 0x03A69E 0E:A68E: CA        DEX
C - - - - - 0x03A69F 0E:A68F: F0 04     BEQ bra_A695    ; 01
C - - - - - 0x03A6A1 0E:A691: CA        DEX
C - - - - - 0x03A6A2 0E:A692: F0 21     BEQ bra_A6B5    ; 02
C - - - - - 0x03A6A4 0E:A694: 60        RTS
bra_A695:
C - - - - - 0x03A6A5 0E:A695: AE B0 04  LDX ram_04B0
C - - - - - 0x03A6A8 0E:A698: AD 2B 01  LDA ram_option_skin
C - - - - - 0x03A6AB 0E:A69B: 5D D6 BF  EOR tbl_BFD6,X
C - - - - - 0x03A6AE 0E:A69E: 8D 2B 01  STA ram_option_skin
C - - - - - 0x03A6B1 0E:A6A1: 20 A9 81  JSR sub_81A9
sub_A6A4:
C - - - - - 0x03A6B4 0E:A6A4: AD 2B 01  LDA ram_option_skin
C - - - - - 0x03A6B7 0E:A6A7: 3D D6 BF  AND tbl_BFD6,X
C - - - - - 0x03A6BA 0E:A6AA: F0 02     BEQ bra_A6AE
C - - - - - 0x03A6BC 0E:A6AC: A9 01     LDA #$01
bra_A6AE:
C - - - - - 0x03A6BE 0E:A6AE: 18        CLC
C - - - - - 0x03A6BF 0E:A6AF: 7D D8 BF  ADC tbl_BFD8,X
C - - - - - 0x03A6C2 0E:A6B2: 4C E5 F6  JMP loc_0x03F6F5
bra_A6B5:
C - - - - - 0x03A6C5 0E:A6B5: 29 C0     AND #$C0
C - - - - - 0x03A6C7 0E:A6B7: F0 11     BEQ bra_A6CA
C - - - - - 0x03A6C9 0E:A6B9: 30 0C     BMI bra_A6C7
C - - - - - 0x03A6CB 0E:A6BB: 20 C2 F6  JSR sub_0x03F6D2
C - - - - - 0x03A6CE 0E:A6BE: AC C0 04  LDY ram_04C0
C - - - - - 0x03A6D1 0E:A6C1: B9 9D 82  LDA tbl_829D,Y
C - - - - - 0x03A6D4 0E:A6C4: 4C 90 F6  JMP loc_0x03F6A0
bra_A6C7:
C - - - - - 0x03A6D7 0E:A6C7: 4C C2 F6  JMP loc_0x03F6D2
bra_A6CA:
C - - - - - 0x03A6DA 0E:A6CA: 98        TYA
C - - - - - 0x03A6DB 0E:A6CB: 29 01     AND #$01
C - - - - - 0x03A6DD 0E:A6CD: D0 0C     BNE bra_A6DB
C - - - - - 0x03A6DF 0E:A6CF: AD C0 04  LDA ram_04C0
C - - - - - 0x03A6E2 0E:A6D2: F0 11     BEQ bra_A6E5
C - - - - - 0x03A6E4 0E:A6D4: CE C0 04  DEC ram_04C0
C - - - - - 0x03A6E7 0E:A6D7: F0 0C     BEQ bra_A6E5
C - - - - - 0x03A6E9 0E:A6D9: D0 0A     BNE bra_A6E5
bra_A6DB:
C - - - - - 0x03A6EB 0E:A6DB: AD C0 04  LDA ram_04C0
C - - - - - 0x03A6EE 0E:A6DE: C9 11     CMP #$11
C - - - - - 0x03A6F0 0E:A6E0: B0 03     BCS bra_A6E5
C - - - - - 0x03A6F2 0E:A6E2: EE C0 04  INC ram_04C0
bra_A6E5:
loc_A6E5:
C D 1 - - - 0x03A6F5 0E:A6E5: A0 00     LDY #$00
C - - - - - 0x03A6F7 0E:A6E7: AE C0 04  LDX ram_04C0
C - - - - - 0x03A6FA 0E:A6EA: F0 0C     BEQ bra_A6F8
bra_A6EC:
C - - - - - 0x03A6FC 0E:A6EC: B9 0D 82  LDA tbl_820D,Y
C - - - - - 0x03A6FF 0E:A6EF: 30 03     BMI bra_A6F4
C - - - - - 0x03A701 0E:A6F1: C8        INY
C - - - - - 0x03A702 0E:A6F2: D0 F8     BNE bra_A6EC
bra_A6F4:
C - - - - - 0x03A704 0E:A6F4: C8        INY
C - - - - - 0x03A705 0E:A6F5: CA        DEX
C - - - - - 0x03A706 0E:A6F6: D0 F4     BNE bra_A6EC
bra_A6F8:
C - - - - - 0x03A708 0E:A6F8: 84 00     STY ram_0000
C - - - - - 0x03A70A 0E:A6FA: A9 20     LDA #$20
C - - - - - 0x03A70C 0E:A6FC: A0 F4     LDY #$F4
C - - - - - 0x03A70E 0E:A6FE: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x03A711 0E:A701: A4 00     LDY ram_0000
bra_A703:
C - - - - - 0x03A713 0E:A703: B9 0D 82  LDA tbl_820D,Y
C - - - - - 0x03A716 0E:A706: 85 00     STA ram_0000
C - - - - - 0x03A718 0E:A708: 09 80     ORA #$80
C - - - - - 0x03A71A 0E:A70A: 20 66 D2  JSR sub_0x03D276
C - - - - - 0x03A71D 0E:A70D: C8        INY
C - - - - - 0x03A71E 0E:A70E: A5 00     LDA ram_0000
C - - - - - 0x03A720 0E:A710: 10 F1     BPL bra_A703
C - - - - - 0x03A722 0E:A712: A0 04     LDY #$04
C - - - - - 0x03A724 0E:A714: A9 00     LDA #$00
bra_A716:
C - - - - - 0x03A726 0E:A716: 20 5F D2  JSR sub_0x03D26F
C - - - - - 0x03A729 0E:A719: 88        DEY
C - - - - - 0x03A72A 0E:A71A: 10 FA     BPL bra_A716
C - - - - - 0x03A72C 0E:A71C: 4C 59 D2  JMP loc_0x03D269



sub_A740:
C - - - - - 0x03A750 0E:A740: AC 28 01  LDY ram_option_health
C - - - - - 0x03A753 0E:A743: F0 07     BEQ bra_A74C
C - - - - - 0x03A755 0E:A745: BD 0D 01  LDA ram_hp_hi,X
C - - - - - 0x03A758 0E:A748: D9 A6 EF  CMP tbl_0x03EFB6,Y
C - - - - - 0x03A75B 0E:A74B: 60        RTS
bra_A74C:
C - - - - - 0x03A75C 0E:A74C: BD 90 05  LDA ram_hp_lo,X
C - - - - - 0x03A75F 0E:A74F: C9 B0     CMP #$B0
C - - - - - 0x03A761 0E:A751: 60        RTS



sub_A752:
C - - - - - 0x03A762 0E:A752: 38        SEC
C - - - - - 0x03A763 0E:A753: F9 FD BF  SBC tbl_BFFD,Y
C - - - - - 0x03A766 0E:A756: 90 04     BCC bra_A75C
C - - - - - 0x03A768 0E:A758: 9D 0D 01  STA ram_hp_hi,X
C - - - - - 0x03A76B 0E:A75B: 60        RTS
bra_A75C:
C - - - - - 0x03A76C 0E:A75C: BD 90 05  LDA ram_hp_lo,X
C - - - - - 0x03A76F 0E:A75F: 38        SEC
C - - - - - 0x03A770 0E:A760: F9 FD BF  SBC tbl_BFFD,Y
C - - - - - 0x03A773 0E:A763: 9D 90 05  STA ram_hp_lo,X
C - - - - - 0x03A776 0E:A766: 60        RTS



.export loc_0x03A777
loc_0x03A777:
C D 1 - - - 0x03A777 0E:A767: A2 01     LDX #$01
C - - - - - 0x03A779 0E:A769: AD 0D 01  LDA ram_hp_hi
C - - - - - 0x03A77C 0E:A76C: 0D 0E 01  ORA ram_hp_hi + 1
C - - - - - 0x03A77F 0E:A76F: F0 09     BEQ bra_A77A
C - - - - - 0x03A781 0E:A771: AD 0D 01  LDA ram_hp_hi
C - - - - - 0x03A784 0E:A774: CD 0E 01  CMP ram_hp_hi + 1
C - - - - - 0x03A787 0E:A777: 4C 80 A7  JMP loc_A780
bra_A77A:
C - - - - - 0x03A78A 0E:A77A: AD 90 05  LDA ram_hp_lo
C - - - - - 0x03A78D 0E:A77D: CD 91 05  CMP ram_hp_lo + 1
loc_A780:
C D 1 - - - 0x03A790 0E:A780: 08        PHP
C - - - - - 0x03A791 0E:A781: A9 E6     LDA #> ofs_0x03E6C5
C - - - - - 0x03A793 0E:A783: 48        PHA
C - - - - - 0x03A794 0E:A784: A9 B4     LDA #< ofs_0x03E6C5
C - - - - - 0x03A796 0E:A786: 48        PHA
C - - - - - 0x03A797 0E:A787: 4C 17 F6  JMP loc_0x03F627_restore_prg_bank



off_A800_00:
- D 1 - I - 0x03A810 0E:A800: 03        .byte $03   ; 
- D 1 - I - 0x03A811 0E:A801: C1        .byte $C1   ; 
- D 1 - I - 0x03A812 0E:A802: 23        .byte $23   ; 
- D 1 - I - 0x03A813 0E:A803: 06        .byte $06   ; 
- D 1 - I - 0x03A814 0E:A804: 00        .byte $00   ; 
- D 1 - I - 0x03A815 0E:A805: 03        .byte $03   ; 
- D 1 - I - 0x03A816 0E:A806: C9        .byte $C9   ; 
- D 1 - I - 0x03A817 0E:A807: 23        .byte $23   ; 
- D 1 - I - 0x03A818 0E:A808: 0E        .byte $0E   ; 
- D 1 - I - 0x03A819 0E:A809: AA        .byte $AA   ; 
- D 1 - I - 0x03A81A 0E:A80A: FF        .byte $FF   ; 



off_A80B_01:
- D 1 - I - 0x03A81B 0E:A80B: 03        .byte $03   ; 
- D 1 - I - 0x03A81C 0E:A80C: C1        .byte $C1   ; 
- D 1 - I - 0x03A81D 0E:A80D: 23        .byte $23   ; 
- D 1 - I - 0x03A81E 0E:A80E: 06        .byte $06   ; 
- D 1 - I - 0x03A81F 0E:A80F: A0        .byte $A0   ; 
- D 1 - I - 0x03A820 0E:A810: 03        .byte $03   ; 
- D 1 - I - 0x03A821 0E:A811: C9        .byte $C9   ; 
- D 1 - I - 0x03A822 0E:A812: 23        .byte $23   ; 
- D 1 - I - 0x03A823 0E:A813: 06        .byte $06   ; 
- D 1 - I - 0x03A824 0E:A814: A0        .byte $A0   ; 
- D 1 - I - 0x03A825 0E:A815: FF        .byte $FF   ; 



off_A816_02:
- D 1 - I - 0x03A826 0E:A816: 03        .byte $03   ; 
- D 1 - I - 0x03A827 0E:A817: C9        .byte $C9   ; 
- D 1 - I - 0x03A828 0E:A818: 23        .byte $23   ; 
- D 1 - I - 0x03A829 0E:A819: 06        .byte $06   ; 
- D 1 - I - 0x03A82A 0E:A81A: 0A        .byte $0A   ; 
- D 1 - I - 0x03A82B 0E:A81B: 03        .byte $03   ; 
- D 1 - I - 0x03A82C 0E:A81C: D1        .byte $D1   ; 
- D 1 - I - 0x03A82D 0E:A81D: 23        .byte $23   ; 
- D 1 - I - 0x03A82E 0E:A81E: 06        .byte $06   ; 
- D 1 - I - 0x03A82F 0E:A81F: AA        .byte $AA   ; 
- D 1 - I - 0x03A830 0E:A820: FF        .byte $FF   ; 



off_A821_03:
- D 1 - I - 0x03A831 0E:A821: 03        .byte $03   ; 
- D 1 - I - 0x03A832 0E:A822: C9        .byte $C9   ; 
- D 1 - I - 0x03A833 0E:A823: 23        .byte $23   ; 
- D 1 - I - 0x03A834 0E:A824: 06        .byte $06   ; 
- D 1 - I - 0x03A835 0E:A825: AA        .byte $AA   ; 
- D 1 - I - 0x03A836 0E:A826: 03        .byte $03   ; 
- D 1 - I - 0x03A837 0E:A827: D1        .byte $D1   ; 
- D 1 - I - 0x03A838 0E:A828: 23        .byte $23   ; 
- D 1 - I - 0x03A839 0E:A829: 06        .byte $06   ; 
- D 1 - I - 0x03A83A 0E:A82A: A0        .byte $A0   ; 
- D 1 - I - 0x03A83B 0E:A82B: FF        .byte $FF   ; 



off_A82C_04:
- D 1 - I - 0x03A83C 0E:A82C: 03        .byte $03   ; 
- D 1 - I - 0x03A83D 0E:A82D: C1        .byte $C1   ; 
- D 1 - I - 0x03A83E 0E:A82E: 23        .byte $23   ; 
- D 1 - I - 0x03A83F 0E:A82F: 06        .byte $06   ; 
- D 1 - I - 0x03A840 0E:A830: A0        .byte $A0   ; 
- D 1 - I - 0x03A841 0E:A831: 03        .byte $03   ; 
- D 1 - I - 0x03A842 0E:A832: D1        .byte $D1   ; 
- D 1 - I - 0x03A843 0E:A833: 23        .byte $23   ; 
- D 1 - I - 0x03A844 0E:A834: 06        .byte $06   ; 
- D 1 - I - 0x03A845 0E:A835: 0A        .byte $0A   ; 
- D 1 - I - 0x03A846 0E:A836: FF        .byte $FF   ; 



off_A837_05:
- D 1 - I - 0x03A847 0E:A837: 03        .byte $03   ; 
- D 1 - I - 0x03A848 0E:A838: C1        .byte $C1   ; 
- D 1 - I - 0x03A849 0E:A839: 23        .byte $23   ; 
- D 1 - I - 0x03A84A 0E:A83A: 06        .byte $06   ; 
- D 1 - I - 0x03A84B 0E:A83B: A0        .byte $A0   ; 
- D 1 - I - 0x03A84C 0E:A83C: 03        .byte $03   ; 
- D 1 - I - 0x03A84D 0E:A83D: C9        .byte $C9   ; 
- D 1 - I - 0x03A84E 0E:A83E: 23        .byte $23   ; 
- D 1 - I - 0x03A84F 0E:A83F: 0E        .byte $0E   ; 
- D 1 - I - 0x03A850 0E:A840: AA        .byte $AA   ; 
- D 1 - I - 0x03A851 0E:A841: FF        .byte $FF   ; 



loc_B000:
C D 1 - - - 0x03B010 0E:B000: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03B012 0E:B002: 29 20     AND #con_btn_Select
C - - - - - 0x03B014 0E:B004: F0 0D     BEQ bra_B013
C - - - - - 0x03B016 0E:B006: AD 50 01  LDA ram_0150
C - - - - - 0x03B019 0E:B009: 49 04     EOR #$04
C - - - - - 0x03B01B 0E:B00B: 8D 50 01  STA ram_0150
C - - - - - 0x03B01E 0E:B00E: A9 27     LDA #$27
C - - - - - 0x03B020 0E:B010: 20 90 F6  JSR sub_0x03F6A0
bra_B013:
C - - - - - 0x03B023 0E:B013: 4C B6 89  JMP loc_89B6_strength_cursor



sub_B016:
C - - - - - 0x03B026 0E:B016: AD A0 04  LDA ram_04A0
C - - - - - 0x03B029 0E:B019: 0D 50 01  ORA ram_0150
C - - - - - 0x03B02C 0E:B01C: A8        TAY
C - - - - - 0x03B02D 0E:B01D: 60        RTS



loc_BF00:
C D 1 - - - 0x03BF10 0E:BF00: 20 2E BF  JSR sub_BF2E
C - - - - - 0x03BF13 0E:BF03: D0 03     BNE bra_BF08
C - - - - - 0x03BF15 0E:BF05: 20 23 BF  JSR sub_BF23
bra_BF08:
C - - - - - 0x03BF18 0E:BF08: 4C 5C A1  JMP loc_A15C



sub_BF0B:
C - - - - - 0x03BF1B 0E:BF0B: 20 2E BF  JSR sub_BF2E
C - - - - - 0x03BF1E 0E:BF0E: D0 03     BNE bra_BF13
C - - - - - 0x03BF20 0E:BF10: 20 23 BF  JSR sub_BF23
bra_BF13:
C - - - - - 0x03BF23 0E:BF13: B9 17 A3  LDA tbl_A317,Y
C - - - - - 0x03BF26 0E:BF16: 60        RTS



sub_BF17:
C - - - - - 0x03BF27 0E:BF17: 20 2E BF  JSR sub_BF2E
C - - - - - 0x03BF2A 0E:BF1A: D0 03     BNE bra_BF1F
C - - - - - 0x03BF2C 0E:BF1C: 20 23 BF  JSR sub_BF23
bra_BF1F:
C - - - - - 0x03BF2F 0E:BF1F: B9 3C A3  LDA tbl_A33C,Y
C - - - - - 0x03BF32 0E:BF22: 60        RTS



sub_BF23:
C - - - - - 0x03BF33 0E:BF23: AD 71 06  LDA ram_0671
C - - - - - 0x03BF36 0E:BF26: 49 01     EOR #$01
C - - - - - 0x03BF38 0E:BF28: A8        TAY
C - - - - - 0x03BF39 0E:BF29: B9 A2 00  LDA ram_option_fighter,Y
C - - - - - 0x03BF3C 0E:BF2C: A8        TAY
C - - - - - 0x03BF3D 0E:BF2D: 60        RTS



sub_BF2E:
C - - - - - 0x03BF3E 0E:BF2E: A5 2C     LDA ram_002C
C - - - - - 0x03BF40 0E:BF30: 49 03     EOR #$03
C - - - - - 0x03BF42 0E:BF32: D0 04     BNE bra_BF38_RTS
C - - - - - 0x03BF44 0E:BF34: A5 95     LDA ram_0095
C - - - - - 0x03BF46 0E:BF36: 49 0E     EOR #$0E
bra_BF38_RTS:
C - - - - - 0x03BF48 0E:BF38: 60        RTS



tbl_BFD6:
- D 1 - - - 0x03BFE6 0E:BFD6: 08        .byte $08   ; 00
- D 1 - - - 0x03BFE7 0E:BFD7: 10        .byte $10   ; 01

tbl_BFD8:
- D 1 - - - 0x03BFE8 0E:BFD8: 30        .byte $30   ; 00
- D 1 - - - 0x03BFE9 0E:BFD9: 32        .byte $32   ; 01



tbl_BFDB:
- - - - - - 0x03BFEB 0E:BFDB: FF        .byte $FF   ; 00
- D 1 - - - 0x03BFEC 0E:BFDC: 25        .byte $25   ; 01
- D 1 - - - 0x03BFED 0E:BFDD: 2A        .byte $2A   ; 02
- - - - - - 0x03BFEE 0E:BFDE: FF        .byte $FF   ; 03
- - - - - - 0x03BFEF 0E:BFDF: FF        .byte $FF   ; 04



tbl_BFE0:
- D 1 - - - 0x03BFF0 0E:BFE0: 03        .byte $03   ; 
- D 1 - - - 0x03BFF1 0E:BFE1: 07        .byte $07   ; 
- D 1 - - - 0x03BFF2 0E:BFE2: 0B        .byte $0B   ; 
- D 1 - - - 0x03BFF3 0E:BFE3: 0F        .byte $0F   ; 
- D 1 - - - 0x03BFF4 0E:BFE4: 13        .byte $13   ; 
- D 1 - - - 0x03BFF5 0E:BFE5: 17        .byte $17   ; 
- D 1 - - - 0x03BFF6 0E:BFE6: 1B        .byte $1B   ; 
- D 1 - - - 0x03BFF7 0E:BFE7: FF        .byte $FF   ; 



tbl_BFF1:
- D 1 - - - 0x03C001 0E:BFF1: 06        .byte $06   ; 00
- D 1 - - - 0x03C002 0E:BFF2: 05        .byte $05   ; 01
- D 1 - - - 0x03C003 0E:BFF3: 00        .byte $00   ; 02
- D 1 - - - 0x03C004 0E:BFF4: 01        .byte $01   ; 03
- - - - - - 0x03C005 0E:BFF5: 06        .byte $06   ; 04
- D 1 - - - 0x03C006 0E:BFF6: 07        .byte $07   ; 05
- D 1 - - - 0x03C007 0E:BFF7: 00        .byte $00   ; 06
- - - - - - 0x03C008 0E:BFF8: 01        .byte $01   ; 07



tbl_BFFD:
- D 1 - - - 0x03C00D 0E:BFFD: 02        .byte $02   ; 00
- D 1 - - - 0x03C00E 0E:BFFE: 03        .byte $03   ; 01
- D 1 - - - 0x03C00F 0E:BFFF: 04        .byte $04   ; 02



