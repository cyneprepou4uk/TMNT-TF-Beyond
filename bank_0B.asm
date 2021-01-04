.segment "BANK_0B"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x02C010-0x03000F

    .byte con_bank_id + $16   ; (!) байт должен находиться по адресу 8000, чтение из 0x03F67D



.export sub_0x02C0DE
sub_0x02C0DE:
C - - - - - 0x02C0DE 0B:80CE: 20 D4 80  JSR sub_80D4
C - - - - - 0x02C0E1 0B:80D1: 4C D4 82  JMP loc_82D4



sub_80D4:
C - - - - - 0x02C0E4 0B:80D4: AD 3E 06  LDA ram_063E
C - - - - - 0x02C0E7 0B:80D7: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x02C0EA 0B:80DA: E4 80     .word ofs_80E4_00
- D 0 - I - 0x02C0EC 0B:80DC: 06 81     .word ofs_8106_01
- D 0 - I - 0x02C0EE 0B:80DE: 58 81     .word ofs_8158_02
- D 0 - I - 0x02C0F0 0B:80E0: 5B 81     .word ofs_815B_03
- D 0 - I - 0x02C0F2 0B:80E2: 3C 83     .word ofs_833C_04



ofs_80E4_00:
C - - J - - 0x02C0F4 0B:80E4: 20 BE DA  JSR sub_0x03DACE
C - - - - - 0x02C0F7 0B:80E7: EE 3E 06  INC ram_063E
C - - - - - 0x02C0FA 0B:80EA: A9 74     LDA #$74
C - - - - - 0x02C0FC 0B:80EC: 85 32     STA ram_0032
C - - - - - 0x02C0FE 0B:80EE: 20 00 AC  JSR sub_AC00
C - - - - - 0x02C102 0B:80F2: A0 02     LDY #$02
C - - - - - 0x02C104 0B:80F4: 20 04 DC  JSR sub_0x03DC14
C - - - - - 0x02C107 0B:80F7: A5 2C     LDA ram_002C
C - - - - - 0x02C109 0B:80F9: F0 03     BEQ bra_80FE
C - - - - - 0x02C10B 0B:80FB: EE E0 04  INC ram_04E0
bra_80FE:
C - - - - - 0x02C10E 0B:80FE: A9 0A     LDA #$0A
C - - - - - 0x02C110 0B:8100: 20 14 F8  JSR sub_0x03F824
C - - - - - 0x02C113 0B:8103: 4C 6D D4  JMP loc_0x03D47D



ofs_8106_01:
C - - J - - 0x02C116 0B:8106: EE 3E 06  INC ram_063E
C - - - - - 0x02C119 0B:8109: A4 2C     LDY ram_002C
C - - - - - 0x02C11B 0B:810B: BE FA BF  LDX tbl_BFFA,Y
C - - - - - 0x02C11E 0B:810E: 20 44 F0  JSR sub_0x03F054
C - - - - - 0x02C122 0B:8112: A5 2C     LDA ram_002C
C - - - - - 0x02C124 0B:8114: D0 05     BNE bra_811B
C - - - - - 0x02C126 0B:8116: A2 1A     LDX #$1A
C - - - - - 0x02C128 0B:8118: 20 44 F0  JSR sub_0x03F054
bra_811B:
C - - - - - 0x02C12B 0B:811B: A0 06     LDY #$06
C - - - - - 0x02C12D 0B:811D: A9 13     LDA #$13
C - - - - - 0x02C12F 0B:811F: 20 94 D3  JSR sub_0x03D3A4
C - - - - - 0x02C132 0B:8122: A0 00     LDY #$00
C - - - - - 0x02C134 0B:8124: 8C 30 05  STY ram_0530
C - - - - - 0x02C137 0B:8127: 8C 31 05  STY ram_0531
C - - - - - 0x02C13A 0B:812A: C8        INY
C - - - - - 0x02C13B 0B:812B: 84 08     STY ram_0008
bra_812D:
C - - - - - 0x02C13D 0B:812D: A6 08     LDX ram_0008
C - - - - - 0x02C13F 0B:812F: 20 4F 81  JSR sub_814F
C - - - - - 0x02C142 0B:8132: C6 08     DEC ram_0008
C - - - - - 0x02C144 0B:8134: 10 F7     BPL bra_812D
C - - - - - 0x02C146 0B:8136: A9 37     LDA #$37
C - - - - - 0x02C148 0B:8138: 20 90 F6  JSR sub_0x03F6A0
C - - - - - 0x02C14B 0B:813B: A2 00     LDX #$00
C - - - - - 0x02C14D 0B:813D: 20 2F 82  JSR sub_822F
C - - - - - 0x02C150 0B:8140: A5 2C     LDA ram_002C
C - - - - - 0x02C152 0B:8142: F0 08     BEQ bra_814C
C - - - - - 0x02C154 0B:8144: C9 02     CMP #$02
C - - - - - 0x02C156 0B:8146: F0 04     BEQ bra_814C
C - - - - - 0x02C158 0B:8148: E8        INX
C - - - - - 0x02C159 0B:8149: 20 2F 82  JSR sub_822F
bra_814C:
C - - - - - 0x02C15C 0B:814C: 4C 41 E1  JMP loc_0x03E151



sub_814F:
C - - - - - 0x02C15F 0B:814F: B4 A2     LDY ram_option_fighter,X
C - - - - - 0x02C161 0B:8151: B9 8C E9  LDA tbl_0x03E99C,Y
C - - - - - 0x02C164 0B:8154: E8        INX
C - - - - - 0x02C165 0B:8155: 4C 46 D3  JMP loc_0x03D356



ofs_8158_02:
C - - J - - 0x02C168 0B:8158: EE 3E 06  INC ram_063E
ofs_815B_03:
C - - - - - 0x02C16B 0B:815B: A5 2C     LDA ram_002C
C - - - - - 0x02C16D 0B:815D: C9 02     CMP #$02
C - - - - - 0x02C16F 0B:815F: F0 23     BEQ bra_8184
C - - - - - 0x02C171 0B:8161: 4C 80 BD  JMP loc_BD80
loc_8164:
C D 0 - - - 0x02C174 0B:8164: 85 A8     STA ram_00A8
bra_8166:
C - - - - - 0x02C176 0B:8166: A6 A8     LDX ram_00A8
C - - - - - 0x02C178 0B:8168: 8A        TXA
C - - - - - 0x02C179 0B:8169: 29 01     AND #$01
C - - - - - 0x02C17B 0B:816B: 09 80     ORA #$80
C - - - - - 0x02C17D 0B:816D: 9D 00 05  STA ram_0500,X
C - - - - - 0x02C180 0B:8170: 20 78 81  JSR sub_8178
C - - - - - 0x02C183 0B:8173: C6 A8     DEC ram_00A8
C - - - - - 0x02C185 0B:8175: 10 EF     BPL bra_8166
C - - - - - 0x02C187 0B:8177: 60        RTS



sub_8178:
C - - - - - 0x02C188 0B:8178: BD 30 05  LDA ram_0530,X
C - - - - - 0x02C18B 0B:817B: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x02C18E 0B:817E: C9 81     .word ofs_81C9_00
- D 0 - I - 0x02C190 0B:8180: 93 82     .word ofs_8293_01
- D 0 - I - 0x02C192 0B:8182: BC 82     .word ofs_82BC_02



bra_8184:
loc_8184:
C D 0 - - - 0x02C194 0B:8184: 18        CLC
C - - - - - 0x02C195 0B:8185: AD 30 05  LDA ram_0530
C - - - - - 0x02C198 0B:8188: 6D 31 05  ADC ram_0531
C - - - - - 0x02C19B 0B:818B: 8D 30 05  STA ram_0530
C - - - - - 0x02C19E 0B:818E: A9 00     LDA #$00
C - - - - - 0x02C1A0 0B:8190: 8D 31 05  STA ram_0531
C - - - - - 0x02C1A3 0B:8193: A2 81     LDX #$81
C - - - - - 0x02C1A5 0B:8195: 8E 01 05  STX ram_0501
C - - - - - 0x02C1A8 0B:8198: CA        DEX
C - - - - - 0x02C1A9 0B:8199: 8E 00 05  STX ram_0500
C - - - - - 0x02C1AC 0B:819C: AD 30 05  LDA ram_0530
C - - - - - 0x02C1AF 0B:819F: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x02C1B2 0B:81A2: C5 81     .word ofs_81C5_00
- D 0 - I - 0x02C1B4 0B:81A4: 91 82     .word ofs_8291_01
- D 0 - I - 0x02C1B6 0B:81A6: AE 81     .word ofs_81AE_02
- D 0 - I - 0x02C1B8 0B:81A8: B6 81     .word ofs_81B6_03
- D 0 - I - 0x02C1BA 0B:81AA: 8D 82     .word ofs_828D_04
- D 0 - I - 0x02C1BC 0B:81AC: CC 82     .word ofs_82CC_05



ofs_81AE_02:
C - - J - - 0x02C1BE 0B:81AE: EE 30 05  INC ram_0530
C - - - - - 0x02C1C1 0B:81B1: A2 01     LDX #$01
C - - - - - 0x02C1C3 0B:81B3: 4C 2F 82  JMP loc_822F



ofs_81B6_03:
C - - J - - 0x02C1C6 0B:81B6: A2 01     LDX #$01
C - - - - - 0x02C1C8 0B:81B8: 86 A8     STX ram_00A8
C - - - - - 0x02C1CA 0B:81BA: A5 8E     LDA ram_btn_press
C - - - - - 0x02C1CC 0B:81BC: 20 CB 81  JSR sub_81CB
C - - - - - 0x02C1CF 0B:81BF: A9 1A     LDA #$1A
C - - - - - 0x02C1D1 0B:81C1: 8D 01 04  STA ram_anim_object + 1
bra_81C4_RTS:
C - - - - - 0x02C1D4 0B:81C4: 60        RTS



ofs_81C5_00:
C - - J - - 0x02C1D5 0B:81C5: A2 00     LDX #$00
C - - - - - 0x02C1D7 0B:81C7: 86 A8     STX ram_00A8
ofs_81C9_00:
C - - J - - 0x02C1D9 0B:81C9: B5 8E     LDA ram_btn_press,X
sub_81CB:
C - - - - - 0x02C1DB 0B:81CB: A8        TAY
C - - - - - 0x02C1DC 0B:81CC: 29 D0     AND #con_btns_AB + con_btn_Start
C - - - - - 0x02C1DE 0B:81CE: F0 03     BEQ bra_81D3
C - - - - - 0x02C1E0 0B:81D0: 4C 48 BE  JMP loc_BE48
bra_81D3:
C - - - - - 0x02C1E3 0B:81D3: 98        TYA
C - - - - - 0x02C1E4 0B:81D4: 29 0F     AND #con_btns_Dpad
C - - - - - 0x02C1E6 0B:81D6: F0 EC     BEQ bra_81C4_RTS
C - - - - - 0x02C1E8 0B:81D8: A0 FF     LDY #$FF
C - - - - - 0x02C1EA 0B:81DA: 29 09     AND #con_btn_Up + con_btn_Right
C - - - - - 0x02C1EC 0B:81DC: F0 02     BEQ bra_81E0
C - - - - - 0x02C1EE 0B:81DE: A0 01     LDY #$01
bra_81E0:
C - - - - - 0x02C1F0 0B:81E0: 84 00     STY ram_0000
bra_81E2:
C - - - - - 0x02C1F2 0B:81E2: A5 00     LDA ram_0000
C - - - - - 0x02C1F4 0B:81E4: 18        CLC
C - - - - - 0x02C1F5 0B:81E5: 75 A2     ADC ram_option_fighter,X
C - - - - - 0x02C1F7 0B:81E7: 20 50 AA  JSR sub_AA50_preset_strength
C - - - - - 0x02C1FA 0B:81EA: D9 62 83  CMP tbl_8362,Y
C - - - - - 0x02C1FD 0B:81ED: 90 08     BCC bra_81F7
C - - - - - 0x02C1FF 0B:81EF: 10 04     BPL bra_81F5
C - - - - - 0x02C201 0B:81F1: B9 64 83  LDA tbl_8364,Y
C - - - - - 0x02C204 0B:81F4: 2C        .byte $2C
bra_81F5:
C - - - - - 0x02C205 0B:81F5: A9 00     LDA #$00
bra_81F7:
C - - - - - 0x02C207 0B:81F7: 95 A2     STA ram_option_fighter,X
C - - - - - 0x02C209 0B:81F9: C9 0F     CMP #$0F
C - - - - - 0x02C20B 0B:81FB: D0 1B     BNE bra_8218
- - - - - - 0x02C20D 0B:81FD: A5 2C     LDA ram_002C
- - - - - - 0x02C20F 0B:81FF: C9 02     CMP #$02
- - - - - - 0x02C211 0B:8201: D0 05     BNE bra_8208
- - - - - - 0x02C213 0B:8203: AD 30 05  LDA ram_0530
- - - - - - 0x02C216 0B:8206: F0 10     BEQ bra_8218
bra_8208:
- - - - - - 0x02C218 0B:8208: AD E0 04  LDA ram_04E0
- - - - - - 0x02C21B 0B:820B: F0 0B     BEQ bra_8218
- - - - - - 0x02C21D 0B:820D: 8A        TXA
- - - - - - 0x02C21E 0B:820E: 49 01     EOR #$01
- - - - - - 0x02C220 0B:8210: A8        TAY
- - - - - - 0x02C221 0B:8211: B9 A2 00  LDA ram_option_fighter,Y
- - - - - - 0x02C224 0B:8214: C9 05     CMP #$05
- - - - - - 0x02C226 0B:8216: F0 CA     BEQ bra_81E2
bra_8218:
C - - - - - 0x02C228 0B:8218: 20 7F 82  JSR sub_827F
C - - - - - 0x02C22B 0B:821B: B0 03     BCS bra_8220
C - - - - - 0x02C22D 0B:821D: 20 4F 81  JSR sub_814F
bra_8220:
C - - - - - 0x02C230 0B:8220: A6 A8     LDX ram_00A8
C - - - - - 0x02C232 0B:8222: A9 00     LDA #$00
C - - - - - 0x02C234 0B:8224: 9D D0 05  STA ram_05D0,X
C - - - - - 0x02C237 0B:8227: 9D C0 05  STA ram_05C0,X
C - - - - - 0x02C23A 0B:822A: A9 25     LDA #$25
C - - - - - 0x02C23C 0B:822C: 20 90 F6  JSR sub_0x03F6A0
sub_822F:
loc_822F:
C D 0 - - - 0x02C23F 0B:822F: B4 A2     LDY ram_option_fighter,X
C - - - - - 0x02C241 0B:8231: B9 50 83  LDA tbl_8350,Y
C - - - - - 0x02C244 0B:8234: 9D 40 04  STA ram_X_pos_hi_fighter,X
C - - - - - 0x02C247 0B:8237: B9 57 83  LDA tbl_8357,Y
C - - - - - 0x02C24A 0B:823A: 9D 10 04  STA ram_Y_pos_hi_fighter,X
C - - - - - 0x02C24D 0B:823D: 20 AB 82  JSR sub_82AB
C - - - - - 0x02C250 0B:8240: B4 A2     LDY ram_option_fighter,X
C - - - - - 0x02C252 0B:8242: B9 49 83  LDA tbl_8349,Y
C - - - - - 0x02C255 0B:8245: 9D 42 04  STA ram_X_pos_hi_blow,X
C - - - - - 0x02C258 0B:8248: B9 42 83  LDA tbl_8342,Y
C - - - - - 0x02C25B 0B:824B: 9D 12 04  STA ram_Y_pos_hi_blow,X
C - - - - - 0x02C25E 0B:824E: 98        TYA
C - - - - - 0x02C25F 0B:824F: 18        CLC
C - - - - - 0x02C260 0B:8250: 69 1B     ADC #$1B
C - - - - - 0x02C262 0B:8252: 9D 02 04  STA ram_0402,X
C - - - - - 0x02C265 0B:8255: 8A        TXA
C - - - - - 0x02C266 0B:8256: 09 82     ORA #$82
C - - - - - 0x02C268 0B:8258: 9D 02 05  STA ram_0502,X
C - - - - - 0x02C26B 0B:825B: 20 7F 82  JSR sub_827F
C - - - - - 0x02C26E 0B:825E: B0 0E     BCS bra_826E_RTS
C - - - - - 0x02C270 0B:8260: 8A        TXA
C - - - - - 0x02C271 0B:8261: 48        PHA
C - - - - - 0x02C272 0B:8262: 18        CLC
C - - - - - 0x02C273 0B:8263: 69 06     ADC #$06
C - - - - - 0x02C275 0B:8265: AA        TAX
C - - - - - 0x02C276 0B:8266: B9 85 E9  LDA tbl_0x03E995,Y
C - - - - - 0x02C279 0B:8269: 20 46 D3  JSR sub_0x03D356
C - - - - - 0x02C27C 0B:826C: 68        PLA
C - - - - - 0x02C27D 0B:826D: AA        TAX
bra_826E_RTS:
C - - - - - 0x02C27E 0B:826E: 60        RTS



loc_826F:
C D 0 - - - 0x02C27F 0B:826F: FE 30 05  INC ram_0530,X
C - - - - - 0x02C282 0B:8272: A9 3C     LDA #$3C
C - - - - - 0x02C284 0B:8274: 9D A0 04  STA ram_04A0,X
C - - - - - 0x02C287 0B:8277: B4 A2     LDY ram_option_fighter,X
C - - - - - 0x02C289 0B:8279: B9 5E E1  LDA tbl_0x03E16E,Y
C - - - - - 0x02C28C 0B:827C: 4C 90 F6  JMP loc_0x03F6A0



sub_827F:
C - - - - - 0x02C28F 0B:827F: E0 01     CPX #$01
C - - - - - 0x02C291 0B:8281: D0 06     BNE bra_8289
C - - - - - 0x02C293 0B:8283: A5 A2     LDA ram_option_fighter
C - - - - - 0x02C295 0B:8285: C5 A3     CMP ram_option_fighter + 1
C - - - - - 0x02C297 0B:8287: F0 02     BEQ bra_828B
bra_8289:
C - - - - - 0x02C299 0B:8289: 18        CLC
C - - - - - 0x02C29A 0B:828A: 60        RTS
bra_828B:
C - - - - - 0x02C29B 0B:828B: 18        CLC
C - - - - - 0x02C29C 0B:828C: 60        RTS



ofs_828D_04:
C - - J - - 0x02C29D 0B:828D: A2 01     LDX #$01
C - - - - - 0x02C29F 0B:828F: D0 02     BNE bra_8293
ofs_8291_01:
C - - J - - 0x02C2A1 0B:8291: A2 00     LDX #$00
bra_8293:
ofs_8293_01:
C - - J - - 0x02C2A3 0B:8293: 20 AB 82  JSR sub_82AB
C - - - - - 0x02C2A6 0B:8296: BD A0 04  LDA ram_04A0,X
C - - - - - 0x02C2A9 0B:8299: 4A        LSR
C - - - - - 0x02C2AA 0B:829A: 4A        LSR
C - - - - - 0x02C2AB 0B:829B: 4A        LSR
C - - - - - 0x02C2AC 0B:829C: 90 05     BCC bra_82A3
C - - - - - 0x02C2AE 0B:829E: A9 00     LDA #$00
C - - - - - 0x02C2B0 0B:82A0: 9D 00 04  STA ram_anim_object,X
bra_82A3:
C - - - - - 0x02C2B3 0B:82A3: DE A0 04  DEC ram_04A0,X
C - - - - - 0x02C2B6 0B:82A6: D0 13     BNE bra_82BB_RTS
C - - - - - 0x02C2B8 0B:82A8: 20 4C BF  JSR sub_BF4C
sub_82AB:
C - - - - - 0x02C2BB 0B:82AB: 8A        TXA
C - - - - - 0x02C2BC 0B:82AC: A4 2C     LDY ram_002C
C - - - - - 0x02C2BE 0B:82AE: C0 02     CPY #$02
C - - - - - 0x02C2C0 0B:82B0: D0 02     BNE bra_82B4
C - - - - - 0x02C2C2 0B:82B2: 69 01     ADC #$01
bra_82B4:
C - - - - - 0x02C2C4 0B:82B4: A8        TAY
C - - - - - 0x02C2C5 0B:82B5: B9 66 83  LDA tbl_8366,Y
C - - - - - 0x02C2C8 0B:82B8: 4C 2C BF  JMP loc_BF2C
bra_82BB_RTS:
C - - - - - 0x02C2CB 0B:82BB: 60        RTS



ofs_82BC_02:
C - - J - - 0x02C2CC 0B:82BC: AD E0 04  LDA ram_04E0
C - - - - - 0x02C2CF 0B:82BF: F0 0B     BEQ bra_82CC
C - - - - - 0x02C2D1 0B:82C1: 8A        TXA
C - - - - - 0x02C2D2 0B:82C2: 49 01     EOR #$01
C - - - - - 0x02C2D4 0B:82C4: A8        TAY
C - - - - - 0x02C2D5 0B:82C5: B9 30 05  LDA ram_0530,Y
C - - - - - 0x02C2D8 0B:82C8: C9 02     CMP #$02
C - - - - - 0x02C2DA 0B:82CA: 90 EF     BCC bra_82BB_RTS
bra_82CC:
ofs_82CC_05:
C - - - - - 0x02C2DC 0B:82CC: A9 04     LDA #$04
C - - - - - 0x02C2DE 0B:82CE: 8D 3E 06  STA ram_063E
C - - - - - 0x02C2E1 0B:82D1: 4C 2E E1  JMP loc_0x03E13E



loc_82D4:
C D 0 - - - 0x02C2E4 0B:82D4: A9 03     LDA #$03
C - - - - - 0x02C2E6 0B:82D6: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x02C2E9 0B:82D9: A9 D0     LDA #$D0
C - - - - - 0x02C2EB 0B:82DB: 20 5F D2  JSR sub_0x03D26F
C - - - - - 0x02C2EE 0B:82DE: A9 23     LDA #$23
C - - - - - 0x02C2F0 0B:82E0: 20 5F D2  JSR sub_0x03D26F
C - - - - - 0x02C2F3 0B:82E3: A9 1F     LDA #$1F
C - - - - - 0x02C2F5 0B:82E5: 20 5F D2  JSR sub_0x03D26F
C - - - - - 0x02C2F8 0B:82E8: 20 59 D2  JSR sub_0x03D269
C - - - - - 0x02C2FB 0B:82EB: AE E0 04  LDX ram_04E0
C - - - - - 0x02C2FE 0B:82EE: A5 2C     LDA ram_002C
C - - - - - 0x02C300 0B:82F0: C9 02     CMP #$02
C - - - - - 0x02C302 0B:82F2: D0 08     BNE bra_82FC
C - - - - - 0x02C304 0B:82F4: AD 30 05  LDA ram_0530
C - - - - - 0x02C307 0B:82F7: 4A        LSR
C - - - - - 0x02C308 0B:82F8: D0 02     BNE bra_82FC
C - - - - - 0x02C30A 0B:82FA: A2 00     LDX #$00
bra_82FC:
C - - - - - 0x02C30C 0B:82FC: 86 00     STX ram_0000
bra_82FE:
C - - - - - 0x02C30E 0B:82FE: A6 00     LDX ram_0000
C - - - - - 0x02C310 0B:8300: B5 A2     LDA ram_option_fighter,X
C - - - - - 0x02C312 0B:8302: 0A        ASL
C - - - - - 0x02C313 0B:8303: C9 08     CMP #$08
C - - - - - 0x02C315 0B:8305: 90 02     BCC bra_8309
C - - - - - 0x02C317 0B:8307: 69 08     ADC #$08
bra_8309:
C - - - - - 0x02C319 0B:8309: 18        CLC
C - - - - - 0x02C31A 0B:830A: 69 D0     ADC #$D0
C - - - - - 0x02C31C 0B:830C: 85 01     STA ram_0001
C - - - - - 0x02C31E 0B:830E: A8        TAY
C - - - - - 0x02C31F 0B:830F: A9 23     LDA #$23
C - - - - - 0x02C321 0B:8311: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x02C324 0B:8314: A6 00     LDX ram_0000
C - - - - - 0x02C326 0B:8316: 20 30 83  JSR sub_8330
C - - - - - 0x02C329 0B:8319: 18        CLC
C - - - - - 0x02C32A 0B:831A: A5 01     LDA ram_0001
C - - - - - 0x02C32C 0B:831C: 69 08     ADC #$08
C - - - - - 0x02C32E 0B:831E: A8        TAY
C - - - - - 0x02C32F 0B:831F: A9 23     LDA #$23
C - - - - - 0x02C331 0B:8321: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x02C334 0B:8324: A6 00     LDX ram_0000
C - - - - - 0x02C336 0B:8326: E8        INX
C - - - - - 0x02C337 0B:8327: E8        INX
C - - - - - 0x02C338 0B:8328: 20 30 83  JSR sub_8330
C - - - - - 0x02C33B 0B:832B: C6 00     DEC ram_0000
C - - - - - 0x02C33D 0B:832D: 10 CF     BPL bra_82FE
C - - - - - 0x02C33F 0B:832F: 60        RTS



sub_8330:
C - - - - - 0x02C340 0B:8330: BD 5E 83  LDA tbl_835E,X
C - - - - - 0x02C343 0B:8333: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x02C346 0B:8336: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x02C349 0B:8339: 4C 5B D2  JMP loc_0x03D26B



ofs_833C_04:
C - - J - - 0x02C34C 0B:833C: A9 00     LDA #$00
C - - - - - 0x02C34E 0B:833E: 8D 3E 06  STA ram_063E
C - - - - - 0x02C351 0B:8341: 60        RTS



tbl_8342:
- D 0 - - - 0x02C352 0B:8342: 4F        .byte $4F   ; 00 Leo
- D 0 - - - 0x02C353 0B:8343: 4F        .byte $4F   ; 01 Raph
- D 0 - - - 0x02C354 0B:8344: 4F        .byte $4F   ; 02 Mike
- D 0 - - - 0x02C355 0B:8345: 4F        .byte $4F   ; 03 Don
- D 0 - - - 0x02C356 0B:8346: 97        .byte $97   ; 04 Casey
- D 0 - - - 0x02C357 0B:8347: 97        .byte $97   ; 05 Hot
- D 0 - - - 0x02C358 0B:8348: 97        .byte $97   ; 06 Shred

tbl_8349:
- D 0 - - - 0x02C359 0B:8349: 18        .byte $18   ; 00 Leo
- D 0 - - - 0x02C35A 0B:834A: 50        .byte $50   ; 01 Raph
- D 0 - - - 0x02C35B 0B:834B: 88        .byte $88   ; 02 Mike
- D 0 - - - 0x02C35C 0B:834C: C0        .byte $C0   ; 03 Don
- D 0 - - - 0x02C35D 0B:834D: 30        .byte $30   ; 04 Casey
- D 0 - - - 0x02C35E 0B:834E: 70        .byte $70   ; 05 Hot
- D 0 - - - 0x02C35F 0B:834F: B0        .byte $B0   ; 06 Shred

tbl_8350:
- D 0 - - - 0x02C360 0B:8350: 14        .byte $14   ; 00 Leo
- D 0 - - - 0x02C361 0B:8351: 4C        .byte $4C   ; 01 Raph
- D 0 - - - 0x02C362 0B:8352: 84        .byte $84   ; 02 Mike
- D 0 - - - 0x02C363 0B:8353: BC        .byte $BC   ; 03 Don
- D 0 - - - 0x02C364 0B:8354: 2C        .byte $2C   ; 04 Casey
- D 0 - - - 0x02C365 0B:8355: 6C        .byte $6C   ; 05 Hot
- D 0 - - - 0x02C366 0B:8356: AC        .byte $AC   ; 06 Shred

tbl_8357:
- D 0 - - - 0x02C367 0B:8357: 46        .byte $46   ; 00 Leo
- D 0 - - - 0x02C368 0B:8358: 46        .byte $46   ; 01 Raph
- D 0 - - - 0x02C369 0B:8359: 46        .byte $46   ; 02 Mike
- D 0 - - - 0x02C36A 0B:835A: 46        .byte $46   ; 03 Don
- D 0 - - - 0x02C36B 0B:835B: 8E        .byte $8E   ; 04 Casey
- D 0 - - - 0x02C36C 0B:835C: 8E        .byte $8E   ; 05 Hot
- D 0 - - - 0x02C36D 0B:835D: 8E        .byte $8E   ; 06 Shred



tbl_835E:
- D 0 - - - 0x02C36E 0B:835E: 50        .byte $50   ; 00
- D 0 - - - 0x02C36F 0B:835F: A0        .byte $A0   ; 01
- D 0 - - - 0x02C370 0B:8360: 55        .byte $55   ; 02
- D 0 - - - 0x02C371 0B:8361: AA        .byte $AA   ; 03



tbl_8362:
- D 0 - - - 0x02C372 0B:8362: 04        .byte $04   ; 00
- D 0 - - - 0x02C373 0B:8363: 07        .byte $07   ; 01



tbl_8364:
- D 0 - - - 0x02C374 0B:8364: 03        .byte $03   ; 00
- D 0 - - - 0x02C375 0B:8365: 06        .byte $06   ; 01



tbl_8366:
- D 0 - - - 0x02C376 0B:8366: 16        .byte $16   ; 00
- D 0 - - - 0x02C377 0B:8367: 17        .byte $17   ; 01
- D 0 - - - 0x02C378 0B:8368: 16        .byte $16   ; 02
- D 0 - - - 0x02C379 0B:8369: 1A        .byte $1A   ; 03



.export _off003_0x02C37A_02
_off003_0x02C37A_02:
- D 0 - I - 0x02C37A 0B:836A: 00        .byte $00   ; 
- D 0 - I - 0x02C37B 0B:836B: 20        .byte $20   ; 
- D 0 - I - 0x02C37C 0B:836C: 7E        .byte $7E   ; 
- D 0 - I - 0x02C37D 0B:836D: 00        .byte $00   ; 
- D 0 - I - 0x02C37E 0B:836E: 7E        .byte $7E   ; 
- D 0 - I - 0x02C37F 0B:836F: 00        .byte $00   ; 
- D 0 - I - 0x02C380 0B:8370: 7E        .byte $7E   ; 
- D 0 - I - 0x02C381 0B:8371: 00        .byte $00   ; 
- D 0 - I - 0x02C382 0B:8372: 4D        .byte $4D   ; 
- D 0 - I - 0x02C383 0B:8373: 00        .byte $00   ; 
- D 0 - I - 0x02C384 0B:8374: CC        .byte $CC   ; 
- D 0 - I - 0x02C385 0B:8375: 01        .byte $01   ; 
- D 0 - I - 0x02C386 0B:8376: 86        .byte $86   ; 
- D 0 - I - 0x02C387 0B:8377: 07        .byte $07   ; 
- D 0 - I - 0x02C388 0B:8378: 0D        .byte $0D   ; 
- D 0 - I - 0x02C389 0B:8379: 0E        .byte $0E   ; 
- D 0 - I - 0x02C38A 0B:837A: 0D        .byte $0D   ; 
- D 0 - I - 0x02C38B 0B:837B: 2A        .byte $2A   ; 
- D 0 - I - 0x02C38C 0B:837C: 2B        .byte $2B   ; 
- D 0 - I - 0x02C38D 0B:837D: 0E        .byte $0E   ; 
- D 0 - I - 0x02C38E 0B:837E: 00        .byte $00   ; 
- D 0 - I - 0x02C38F 0B:837F: C4        .byte $C4   ; 
- D 0 - I - 0x02C390 0B:8380: 0F        .byte $0F   ; 
- D 0 - I - 0x02C391 0B:8381: 83        .byte $83   ; 
- D 0 - I - 0x02C392 0B:8382: 15        .byte $15   ; 
- D 0 - I - 0x02C393 0B:8383: 13        .byte $13   ; 
- D 0 - I - 0x02C394 0B:8384: 14        .byte $14   ; 
- D 0 - I - 0x02C395 0B:8385: C4        .byte $C4   ; 
- D 0 - I - 0x02C396 0B:8386: 16        .byte $16   ; 
- D 0 - I - 0x02C397 0B:8387: 87        .byte $87   ; 
- D 0 - I - 0x02C398 0B:8388: 0C        .byte $0C   ; 
- D 0 - I - 0x02C399 0B:8389: 14        .byte $14   ; 
- D 0 - I - 0x02C39A 0B:838A: 1A        .byte $1A   ; 
- D 0 - I - 0x02C39B 0B:838B: 1B        .byte $1B   ; 
- D 0 - I - 0x02C39C 0B:838C: 2C        .byte $2C   ; 
- D 0 - I - 0x02C39D 0B:838D: 0F        .byte $0F   ; 
- D 0 - I - 0x02C39E 0B:838E: 2E        .byte $2E   ; 
- D 0 - I - 0x02C39F 0B:838F: 0E        .byte $0E   ; 
- D 0 - I - 0x02C3A0 0B:8390: 00        .byte $00   ; 
- D 0 - I - 0x02C3A1 0B:8391: CC        .byte $CC   ; 
- D 0 - I - 0x02C3A2 0B:8392: 1C        .byte $1C   ; 
- D 0 - I - 0x02C3A3 0B:8393: 86        .byte $86   ; 
- D 0 - I - 0x02C3A4 0B:8394: 22        .byte $22   ; 
- D 0 - I - 0x02C3A5 0B:8395: 28        .byte $28   ; 
- D 0 - I - 0x02C3A6 0B:8396: 29        .byte $29   ; 
- D 0 - I - 0x02C3A7 0B:8397: 2D        .byte $2D   ; 
- D 0 - I - 0x02C3A8 0B:8398: 1C        .byte $1C   ; 
- D 0 - I - 0x02C3A9 0B:8399: 2F        .byte $2F   ; 
- D 0 - I - 0x02C3AA 0B:839A: 7E        .byte $7E   ; 
- D 0 - I - 0x02C3AB 0B:839B: 00        .byte $00   ; 
- D 0 - I - 0x02C3AC 0B:839C: 7E        .byte $7E   ; 
- D 0 - I - 0x02C3AD 0B:839D: 00        .byte $00   ; 
- D 0 - I - 0x02C3AE 0B:839E: 7E        .byte $7E   ; 
- D 0 - I - 0x02C3AF 0B:839F: 00        .byte $00   ; 
- D 0 - I - 0x02C3B0 0B:83A0: 2D        .byte $2D   ; 
- D 0 - I - 0x02C3B1 0B:83A1: 00        .byte $00   ; 
- D 0 - I - 0x02C3B2 0B:83A2: 40        .byte $40   ; 
- D 0 - I - 0x02C3B3 0B:83A3: FF        .byte $FF   ; 
- D 0 - I - 0x02C3B4 0B:83A4: FF        .byte $FF   ; 



.export _off003_0x02C3B5_01
_off003_0x02C3B5_01:
- D 0 - I - 0x02C3B5 0B:83A5: 00        .byte $00   ; 
- D 0 - I - 0x02C3B6 0B:83A6: 20        .byte $20   ; 
- D 0 - I - 0x02C3B7 0B:83A7: 49        .byte $49   ; 
- D 0 - I - 0x02C3B8 0B:83A8: 00        .byte $00   ; 
- D 0 - I - 0x02C3B9 0B:83A9: C7        .byte $C7   ; 
- D 0 - I - 0x02C3BA 0B:83AA: 31        .byte $31   ; 
- D 0 - I - 0x02C3BB 0B:83AB: 83        .byte $83   ; 
- D 0 - I - 0x02C3BC 0B:83AC: 92        .byte $92   ; 
- D 0 - I - 0x02C3BD 0B:83AD: 93        .byte $93   ; 
- D 0 - I - 0x02C3BE 0B:83AE: 92        .byte $92   ; 
- D 0 - I - 0x02C3BF 0B:83AF: C4        .byte $C4   ; 
- D 0 - I - 0x02C3C0 0B:83B0: 94        .byte $94   ; 
- D 0 - I - 0x02C3C1 0B:83B1: 12        .byte $12   ; 
- D 0 - I - 0x02C3C2 0B:83B2: 00        .byte $00   ; 
- D 0 - I - 0x02C3C3 0B:83B3: C7        .byte $C7   ; 
- D 0 - I - 0x02C3C4 0B:83B4: 38        .byte $38   ; 
- D 0 - I - 0x02C3C5 0B:83B5: C9        .byte $C9   ; 
- D 0 - I - 0x02C3C6 0B:83B6: 98        .byte $98   ; 
- D 0 - I - 0x02C3C7 0B:83B7: 0F        .byte $0F   ; 
- D 0 - I - 0x02C3C8 0B:83B8: 00        .byte $00   ; 
- D 0 - I - 0x02C3C9 0B:83B9: C8        .byte $C8   ; 
- D 0 - I - 0x02C3CA 0B:83BA: 3F        .byte $3F   ; 
- D 0 - I - 0x02C3CB 0B:83BB: C9        .byte $C9   ; 
- D 0 - I - 0x02C3CC 0B:83BC: A1        .byte $A1   ; 
- D 0 - I - 0x02C3CD 0B:83BD: 0E        .byte $0E   ; 
- D 0 - I - 0x02C3CE 0B:83BE: 00        .byte $00   ; 
- D 0 - I - 0x02C3CF 0B:83BF: C9        .byte $C9   ; 
- D 0 - I - 0x02C3D0 0B:83C0: 47        .byte $47   ; 
- D 0 - I - 0x02C3D1 0B:83C1: C8        .byte $C8   ; 
- D 0 - I - 0x02C3D2 0B:83C2: AA        .byte $AA   ; 
- D 0 - I - 0x02C3D3 0B:83C3: 10        .byte $10   ; 
- D 0 - I - 0x02C3D4 0B:83C4: 00        .byte $00   ; 
- D 0 - I - 0x02C3D5 0B:83C5: C8        .byte $C8   ; 
- D 0 - I - 0x02C3D6 0B:83C6: 50        .byte $50   ; 
- D 0 - I - 0x02C3D7 0B:83C7: C8        .byte $C8   ; 
- D 0 - I - 0x02C3D8 0B:83C8: B2        .byte $B2   ; 
- D 0 - I - 0x02C3D9 0B:83C9: 11        .byte $11   ; 
- D 0 - I - 0x02C3DA 0B:83CA: 00        .byte $00   ; 
- D 0 - I - 0x02C3DB 0B:83CB: C3        .byte $C3   ; 
- D 0 - I - 0x02C3DC 0B:83CC: 58        .byte $58   ; 
- D 0 - I - 0x02C3DD 0B:83CD: 09        .byte $09   ; 
- D 0 - I - 0x02C3DE 0B:83CE: 00        .byte $00   ; 
- D 0 - I - 0x02C3DF 0B:83CF: C3        .byte $C3   ; 
- D 0 - I - 0x02C3E0 0B:83D0: BA        .byte $BA   ; 
- D 0 - I - 0x02C3E1 0B:83D1: 10        .byte $10   ; 
- D 0 - I - 0x02C3E2 0B:83D2: 00        .byte $00   ; 
- D 0 - I - 0x02C3E3 0B:83D3: C8        .byte $C8   ; 
- D 0 - I - 0x02C3E4 0B:83D4: 5B        .byte $5B   ; 
- D 0 - I - 0x02C3E5 0B:83D5: CD        .byte $CD   ; 
- D 0 - I - 0x02C3E6 0B:83D6: BD        .byte $BD   ; 
- D 0 - I - 0x02C3E7 0B:83D7: 08        .byte $08   ; 
- D 0 - I - 0x02C3E8 0B:83D8: 00        .byte $00   ; 
- D 0 - I - 0x02C3E9 0B:83D9: CB        .byte $CB   ; 
- D 0 - I - 0x02C3EA 0B:83DA: 63        .byte $63   ; 
- D 0 - I - 0x02C3EB 0B:83DB: CC        .byte $CC   ; 
- D 0 - I - 0x02C3EC 0B:83DC: CA        .byte $CA   ; 
- D 0 - I - 0x02C3ED 0B:83DD: 0A        .byte $0A   ; 
- D 0 - I - 0x02C3EE 0B:83DE: 00        .byte $00   ; 
- D 0 - I - 0x02C3EF 0B:83DF: CA        .byte $CA   ; 
- D 0 - I - 0x02C3F0 0B:83E0: 6E        .byte $6E   ; 
- D 0 - I - 0x02C3F1 0B:83E1: CA        .byte $CA   ; 
- D 0 - I - 0x02C3F2 0B:83E2: D6        .byte $D6   ; 
- D 0 - I - 0x02C3F3 0B:83E3: 0C        .byte $0C   ; 
- D 0 - I - 0x02C3F4 0B:83E4: 00        .byte $00   ; 
- D 0 - I - 0x02C3F5 0B:83E5: CA        .byte $CA   ; 
- D 0 - I - 0x02C3F6 0B:83E6: 78        .byte $78   ; 
- D 0 - I - 0x02C3F7 0B:83E7: CA        .byte $CA   ; 
- D 0 - I - 0x02C3F8 0B:83E8: E0        .byte $E0   ; 
- D 0 - I - 0x02C3F9 0B:83E9: 0B        .byte $0B   ; 
- D 0 - I - 0x02C3FA 0B:83EA: 00        .byte $00   ; 
- D 0 - I - 0x02C3FB 0B:83EB: C3        .byte $C3   ; 
- D 0 - I - 0x02C3FC 0B:83EC: 82        .byte $82   ; 
- D 0 - I - 0x02C3FD 0B:83ED: 04        .byte $04   ; 
- D 0 - I - 0x02C3FE 0B:83EE: 00        .byte $00   ; 
- D 0 - I - 0x02C3FF 0B:83EF: C4        .byte $C4   ; 
- D 0 - I - 0x02C400 0B:83F0: 85        .byte $85   ; 
- D 0 - I - 0x02C401 0B:83F1: C6        .byte $C6   ; 
- D 0 - I - 0x02C402 0B:83F2: EA        .byte $EA   ; 
- D 0 - I - 0x02C403 0B:83F3: 84        .byte $84   ; 
- D 0 - I - 0x02C404 0B:83F4: 00        .byte $00   ; 
- D 0 - I - 0x02C405 0B:83F5: 00        .byte $00   ; 
- D 0 - I - 0x02C406 0B:83F6: F0        .byte $F0   ; 
- D 0 - I - 0x02C407 0B:83F7: 90        .byte $90   ; 
- D 0 - I - 0x02C408 0B:83F8: 0B        .byte $0B   ; 
- D 0 - I - 0x02C409 0B:83F9: 00        .byte $00   ; 
- D 0 - I - 0x02C40A 0B:83FA: 81        .byte $81   ; 
- D 0 - I - 0x02C40B 0B:83FB: 89        .byte $89   ; 
- D 0 - I - 0x02C40C 0B:83FC: 05        .byte $05   ; 
- D 0 - I - 0x02C40D 0B:83FD: 00        .byte $00   ; 
- D 0 - I - 0x02C40E 0B:83FE: C5        .byte $C5   ; 
- D 0 - I - 0x02C40F 0B:83FF: 8A        .byte $8A   ; 
- D 0 - I - 0x02C410 0B:8400: C6        .byte $C6   ; 
- D 0 - I - 0x02C411 0B:8401: F1        .byte $F1   ; 
- D 0 - I - 0x02C412 0B:8402: 86        .byte $86   ; 
- D 0 - I - 0x02C413 0B:8403: 00        .byte $00   ; 
- D 0 - I - 0x02C414 0B:8404: 00        .byte $00   ; 
- D 0 - I - 0x02C415 0B:8405: F7        .byte $F7   ; 
- D 0 - I - 0x02C416 0B:8406: 00        .byte $00   ; 
- D 0 - I - 0x02C417 0B:8407: FA        .byte $FA   ; 
- D 0 - I - 0x02C418 0B:8408: FB        .byte $FB   ; 
- D 0 - I - 0x02C419 0B:8409: 0F        .byte $0F   ; 
- D 0 - I - 0x02C41A 0B:840A: 00        .byte $00   ; 
- D 0 - I - 0x02C41B 0B:840B: 8B        .byte $8B   ; 
- D 0 - I - 0x02C41C 0B:840C: 8F        .byte $8F   ; 
- D 0 - I - 0x02C41D 0B:840D: 90        .byte $90   ; 
- D 0 - I - 0x02C41E 0B:840E: 00        .byte $00   ; 
- D 0 - I - 0x02C41F 0B:840F: 00        .byte $00   ; 
- D 0 - I - 0x02C420 0B:8410: 91        .byte $91   ; 
- D 0 - I - 0x02C421 0B:8411: 00        .byte $00   ; 
- D 0 - I - 0x02C422 0B:8412: 00        .byte $00   ; 
- D 0 - I - 0x02C423 0B:8413: F8        .byte $F8   ; 
- D 0 - I - 0x02C424 0B:8414: 90        .byte $90   ; 
- D 0 - I - 0x02C425 0B:8415: 00        .byte $00   ; 
- D 0 - I - 0x02C426 0B:8416: F9        .byte $F9   ; 
- D 0 - I - 0x02C427 0B:8417: 7E        .byte $7E   ; 
- D 0 - I - 0x02C428 0B:8418: 00        .byte $00   ; 
- D 0 - I - 0x02C429 0B:8419: 7E        .byte $7E   ; 
- D 0 - I - 0x02C42A 0B:841A: 00        .byte $00   ; 
- D 0 - I - 0x02C42B 0B:841B: 7E        .byte $7E   ; 
- D 0 - I - 0x02C42C 0B:841C: 00        .byte $00   ; 
- D 0 - I - 0x02C42D 0B:841D: 70        .byte $70   ; 
- D 0 - I - 0x02C42E 0B:841E: 00        .byte $00   ; 
- D 0 - I - 0x02C42F 0B:841F: 82        .byte $82   ; 
- D 0 - I - 0x02C430 0B:8420: 0F        .byte $0F   ; 
- D 0 - I - 0x02C431 0B:8421: 03        .byte $03   ; 
- D 0 - I - 0x02C432 0B:8422: 0E        .byte $0E   ; 
- D 0 - I - 0x02C433 0B:8423: 00        .byte $00   ; 
- D 0 - I - 0x02C434 0B:8424: 83        .byte $83   ; 
- D 0 - I - 0x02C435 0B:8425: A5        .byte $A5   ; 
- D 0 - I - 0x02C436 0B:8426: A5        .byte $A5   ; 
- D 0 - I - 0x02C437 0B:8427: 65        .byte $65   ; 
- D 0 - I - 0x02C438 0B:8428: 03        .byte $03   ; 
- D 0 - I - 0x02C439 0B:8429: 55        .byte $55   ; 
- D 0 - I - 0x02C43A 0B:842A: 82        .byte $82   ; 
- D 0 - I - 0x02C43B 0B:842B: A5        .byte $A5   ; 
- D 0 - I - 0x02C43C 0B:842C: A5        .byte $A5   ; 
- D 0 - I - 0x02C43D 0B:842D: 06        .byte $06   ; 
- D 0 - I - 0x02C43E 0B:842E: AA        .byte $AA   ; 
- D 0 - I - 0x02C43F 0B:842F: 82        .byte $82   ; 
- D 0 - I - 0x02C440 0B:8430: A2        .byte $A2   ; 
- D 0 - I - 0x02C441 0B:8431: AA        .byte $AA   ; 
- D 0 - I - 0x02C442 0B:8432: 20        .byte $20   ; 
- D 0 - I - 0x02C443 0B:8433: FF        .byte $FF   ; 
- D 0 - I - 0x02C444 0B:8434: FF        .byte $FF   ; 



.export _off003_0x02C445_06
_off003_0x02C445_06:
- D 0 - I - 0x02C445 0B:8435: 00        .byte $00   ; 
- D 0 - I - 0x02C446 0B:8436: 20        .byte $20   ; 
- D 0 - I - 0x02C447 0B:8437: 7E        .byte $7E   ; 
- D 0 - I - 0x02C448 0B:8438: 00        .byte $00   ; 
- D 0 - I - 0x02C449 0B:8439: 05        .byte $05   ; 
- D 0 - I - 0x02C44A 0B:843A: 00        .byte $00   ; 
- D 0 - I - 0x02C44B 0B:843B: 81        .byte $81   ; 
- D 0 - I - 0x02C44C 0B:843C: 4F        .byte $4F   ; 
- D 0 - I - 0x02C44D 0B:843D: 0B        .byte $0B   ; 
- D 0 - I - 0x02C44E 0B:843E: 3F        .byte $3F   ; 
- D 0 - I - 0x02C44F 0B:843F: 82        .byte $82   ; 
- D 0 - I - 0x02C450 0B:8440: 00        .byte $00   ; 
- D 0 - I - 0x02C451 0B:8441: 00        .byte $00   ; 
- D 0 - I - 0x02C452 0B:8442: 0B        .byte $0B   ; 
- D 0 - I - 0x02C453 0B:8443: 3F        .byte $3F   ; 
- D 0 - I - 0x02C454 0B:8444: 81        .byte $81   ; 
- D 0 - I - 0x02C455 0B:8445: 47        .byte $47   ; 
- D 0 - I - 0x02C456 0B:8446: 7F        .byte $7F   ; 



.export _off003_0x02C457_0F
_off003_0x02C457_0F:
- D 0 - I - 0x02C457 0B:8447: 2C        .byte $2C   ; 
- D 0 - I - 0x02C458 0B:8448: 23        .byte $23   ; 
- D 0 - I - 0x02C459 0B:8449: C5        .byte $C5   ; 
- D 0 - I - 0x02C45A 0B:844A: 31        .byte $31   ; 
- D 0 - I - 0x02C45B 0B:844B: 81        .byte $81   ; 
- D 0 - I - 0x02C45C 0B:844C: 36        .byte $36   ; 
- D 0 - I - 0x02C45D 0B:844D: C4        .byte $C4   ; 
- D 0 - I - 0x02C45E 0B:844E: 2A        .byte $2A   ; 
- D 0 - I - 0x02C45F 0B:844F: 16        .byte $16   ; 
- D 0 - I - 0x02C460 0B:8450: 00        .byte $00   ; 
- D 0 - I - 0x02C461 0B:8451: C6        .byte $C6   ; 
- D 0 - I - 0x02C462 0B:8452: 41        .byte $41   ; 
- D 0 - I - 0x02C463 0B:8453: C3        .byte $C3   ; 
- D 0 - I - 0x02C464 0B:8454: 2E        .byte $2E   ; 
- D 0 - I - 0x02C465 0B:8455: 81        .byte $81   ; 
- D 0 - I - 0x02C466 0B:8456: 40        .byte $40   ; 
- D 0 - I - 0x02C467 0B:8457: 15        .byte $15   ; 
- D 0 - I - 0x02C468 0B:8458: 00        .byte $00   ; 
- D 0 - I - 0x02C469 0B:8459: CB        .byte $CB   ; 
- D 0 - I - 0x02C46A 0B:845A: 50        .byte $50   ; 
- D 0 - I - 0x02C46B 0B:845B: 16        .byte $16   ; 
- D 0 - I - 0x02C46C 0B:845C: 00        .byte $00   ; 
- D 0 - I - 0x02C46D 0B:845D: CA        .byte $CA   ; 
- D 0 - I - 0x02C46E 0B:845E: 61        .byte $61   ; 
- D 0 - I - 0x02C46F 0B:845F: FF        .byte $FF   ; 



.export _off003_0x02C470_04
_off003_0x02C470_04:
- D 0 - I - 0x02C470 0B:8460: 00        .byte $00   ; 
- D 0 - I - 0x02C471 0B:8461: 20        .byte $20   ; 
- D 0 - I - 0x02C472 0B:8462: 7E        .byte $7E   ; 
- D 0 - I - 0x02C473 0B:8463: 00        .byte $00   ; 
- D 0 - I - 0x02C474 0B:8464: 42        .byte $42   ; 
- D 0 - I - 0x02C475 0B:8465: 00        .byte $00   ; 
- D 0 - I - 0x02C476 0B:8466: C3        .byte $C3   ; 
- D 0 - I - 0x02C477 0B:8467: 01        .byte $01   ; 
- D 0 - I - 0x02C478 0B:8468: 0D        .byte $0D   ; 
- D 0 - I - 0x02C479 0B:8469: 03        .byte $03   ; 
- D 0 - I - 0x02C47A 0B:846A: C3        .byte $C3   ; 
- D 0 - I - 0x02C47B 0B:846B: 01        .byte $01   ; 
- D 0 - I - 0x02C47C 0B:846C: 0D        .byte $0D   ; 
- D 0 - I - 0x02C47D 0B:846D: 03        .byte $03   ; 
- D 0 - I - 0x02C47E 0B:846E: 82        .byte $82   ; 
- D 0 - I - 0x02C47F 0B:846F: 04        .byte $04   ; 
- D 0 - I - 0x02C480 0B:8470: 05        .byte $05   ; 
- D 0 - I - 0x02C481 0B:8471: 0E        .byte $0E   ; 
- D 0 - I - 0x02C482 0B:8472: 03        .byte $03   ; 
- D 0 - I - 0x02C483 0B:8473: 82        .byte $82   ; 
- D 0 - I - 0x02C484 0B:8474: 04        .byte $04   ; 
- D 0 - I - 0x02C485 0B:8475: 05        .byte $05   ; 
- D 0 - I - 0x02C486 0B:8476: 0E        .byte $0E   ; 
- D 0 - I - 0x02C487 0B:8477: 03        .byte $03   ; 
- D 0 - I - 0x02C488 0B:8478: 84        .byte $84   ; 
- D 0 - I - 0x02C489 0B:8479: 06        .byte $06   ; 
- D 0 - I - 0x02C48A 0B:847A: 07        .byte $07   ; 
- D 0 - I - 0x02C48B 0B:847B: 03        .byte $03   ; 
- D 0 - I - 0x02C48C 0B:847C: 03        .byte $03   ; 
- D 0 - I - 0x02C48D 0B:847D: C3        .byte $C3   ; 
- D 0 - I - 0x02C48E 0B:847E: 08        .byte $08   ; 
- D 0 - I - 0x02C48F 0B:847F: 09        .byte $09   ; 
- D 0 - I - 0x02C490 0B:8480: 03        .byte $03   ; 
- D 0 - I - 0x02C491 0B:8481: 84        .byte $84   ; 
- D 0 - I - 0x02C492 0B:8482: 06        .byte $06   ; 
- D 0 - I - 0x02C493 0B:8483: 07        .byte $07   ; 
- D 0 - I - 0x02C494 0B:8484: 03        .byte $03   ; 
- D 0 - I - 0x02C495 0B:8485: 03        .byte $03   ; 
- D 0 - I - 0x02C496 0B:8486: C3        .byte $C3   ; 
- D 0 - I - 0x02C497 0B:8487: 08        .byte $08   ; 
- D 0 - I - 0x02C498 0B:8488: 09        .byte $09   ; 
- D 0 - I - 0x02C499 0B:8489: 03        .byte $03   ; 
- D 0 - I - 0x02C49A 0B:848A: CB        .byte $CB   ; 
- D 0 - I - 0x02C49B 0B:848B: 0B        .byte $0B   ; 
- D 0 - I - 0x02C49C 0B:848C: 81        .byte $81   ; 
- D 0 - I - 0x02C49D 0B:848D: 15        .byte $15   ; 
- D 0 - I - 0x02C49E 0B:848E: C3        .byte $C3   ; 
- D 0 - I - 0x02C49F 0B:848F: 15        .byte $15   ; 
- D 0 - I - 0x02C4A0 0B:8490: 81        .byte $81   ; 
- D 0 - I - 0x02C4A1 0B:8491: 15        .byte $15   ; 
- D 0 - I - 0x02C4A2 0B:8492: C8        .byte $C8   ; 
- D 0 - I - 0x02C4A3 0B:8493: 0B        .byte $0B   ; 
- D 0 - I - 0x02C4A4 0B:8494: 08        .byte $08   ; 
- D 0 - I - 0x02C4A5 0B:8495: 15        .byte $15   ; 
- D 0 - I - 0x02C4A6 0B:8496: 86        .byte $86   ; 
- D 0 - I - 0x02C4A7 0B:8497: 18        .byte $18   ; 
- D 0 - I - 0x02C4A8 0B:8498: 0C        .byte $0C   ; 
- D 0 - I - 0x02C4A9 0B:8499: 00        .byte $00   ; 
- D 0 - I - 0x02C4AA 0B:849A: 19        .byte $19   ; 
- D 0 - I - 0x02C4AB 0B:849B: 1A        .byte $1A   ; 
- D 0 - I - 0x02C4AC 0B:849C: 10        .byte $10   ; 
- D 0 - I - 0x02C4AD 0B:849D: C9        .byte $C9   ; 
- D 0 - I - 0x02C4AE 0B:849E: 1B        .byte $1B   ; 
- D 0 - I - 0x02C4AF 0B:849F: 89        .byte $89   ; 
- D 0 - I - 0x02C4B0 0B:84A0: 1F        .byte $1F   ; 
- D 0 - I - 0x02C4B1 0B:84A1: 18        .byte $18   ; 
- D 0 - I - 0x02C4B2 0B:84A2: 0C        .byte $0C   ; 
- D 0 - I - 0x02C4B3 0B:84A3: 00        .byte $00   ; 
- D 0 - I - 0x02C4B4 0B:84A4: 19        .byte $19   ; 
- D 0 - I - 0x02C4B5 0B:84A5: 1A        .byte $1A   ; 
- D 0 - I - 0x02C4B6 0B:84A6: 10        .byte $10   ; 
- D 0 - I - 0x02C4B7 0B:84A7: 1B        .byte $1B   ; 
- D 0 - I - 0x02C4B8 0B:84A8: 1C        .byte $1C   ; 
- D 0 - I - 0x02C4B9 0B:84A9: 08        .byte $08   ; 
- D 0 - I - 0x02C4BA 0B:84AA: 20        .byte $20   ; 
- D 0 - I - 0x02C4BB 0B:84AB: 8A        .byte $8A   ; 
- D 0 - I - 0x02C4BC 0B:84AC: 24        .byte $24   ; 
- D 0 - I - 0x02C4BD 0B:84AD: 0C        .byte $0C   ; 
- D 0 - I - 0x02C4BE 0B:84AE: 00        .byte $00   ; 
- D 0 - I - 0x02C4BF 0B:84AF: 25        .byte $25   ; 
- D 0 - I - 0x02C4C0 0B:84B0: 00        .byte $00   ; 
- D 0 - I - 0x02C4C1 0B:84B1: 00        .byte $00   ; 
- D 0 - I - 0x02C4C2 0B:84B2: 26        .byte $26   ; 
- D 0 - I - 0x02C4C3 0B:84B3: 27        .byte $27   ; 
- D 0 - I - 0x02C4C4 0B:84B4: 06        .byte $06   ; 
- D 0 - I - 0x02C4C5 0B:84B5: 07        .byte $07   ; 
- D 0 - I - 0x02C4C6 0B:84B6: C3        .byte $C3   ; 
- D 0 - I - 0x02C4C7 0B:84B7: 28        .byte $28   ; 
- D 0 - I - 0x02C4C8 0B:84B8: 8B        .byte $8B   ; 
- D 0 - I - 0x02C4C9 0B:84B9: 10        .byte $10   ; 
- D 0 - I - 0x02C4CA 0B:84BA: 2B        .byte $2B   ; 
- D 0 - I - 0x02C4CB 0B:84BB: 2C        .byte $2C   ; 
- D 0 - I - 0x02C4CC 0B:84BC: 24        .byte $24   ; 
- D 0 - I - 0x02C4CD 0B:84BD: 0C        .byte $0C   ; 
- D 0 - I - 0x02C4CE 0B:84BE: 00        .byte $00   ; 
- D 0 - I - 0x02C4CF 0B:84BF: 25        .byte $25   ; 
- D 0 - I - 0x02C4D0 0B:84C0: 00        .byte $00   ; 
- D 0 - I - 0x02C4D1 0B:84C1: 00        .byte $00   ; 
- D 0 - I - 0x02C4D2 0B:84C2: 26        .byte $26   ; 
- D 0 - I - 0x02C4D3 0B:84C3: 27        .byte $27   ; 
- D 0 - I - 0x02C4D4 0B:84C4: 08        .byte $08   ; 
- D 0 - I - 0x02C4D5 0B:84C5: 20        .byte $20   ; 
- D 0 - I - 0x02C4D6 0B:84C6: 84        .byte $84   ; 
- D 0 - I - 0x02C4D7 0B:84C7: 24        .byte $24   ; 
- D 0 - I - 0x02C4D8 0B:84C8: 0C        .byte $0C   ; 
- D 0 - I - 0x02C4D9 0B:84C9: 2D        .byte $2D   ; 
- D 0 - I - 0x02C4DA 0B:84CA: 00        .byte $00   ; 
- D 0 - I - 0x02C4DB 0B:84CB: C3        .byte $C3   ; 
- D 0 - I - 0x02C4DC 0B:84CC: 2E        .byte $2E   ; 
- D 0 - I - 0x02C4DD 0B:84CD: 8D        .byte $8D   ; 
- D 0 - I - 0x02C4DE 0B:84CE: 27        .byte $27   ; 
- D 0 - I - 0x02C4DF 0B:84CF: 24        .byte $24   ; 
- D 0 - I - 0x02C4E0 0B:84D0: 0C        .byte $0C   ; 
- D 0 - I - 0x02C4E1 0B:84D1: 00        .byte $00   ; 
- D 0 - I - 0x02C4E2 0B:84D2: 31        .byte $31   ; 
- D 0 - I - 0x02C4E3 0B:84D3: 32        .byte $32   ; 
- D 0 - I - 0x02C4E4 0B:84D4: 10        .byte $10   ; 
- D 0 - I - 0x02C4E5 0B:84D5: 1B        .byte $1B   ; 
- D 0 - I - 0x02C4E6 0B:84D6: 1C        .byte $1C   ; 
- D 0 - I - 0x02C4E7 0B:84D7: 24        .byte $24   ; 
- D 0 - I - 0x02C4E8 0B:84D8: 0C        .byte $0C   ; 
- D 0 - I - 0x02C4E9 0B:84D9: 2D        .byte $2D   ; 
- D 0 - I - 0x02C4EA 0B:84DA: 00        .byte $00   ; 
- D 0 - I - 0x02C4EB 0B:84DB: C3        .byte $C3   ; 
- D 0 - I - 0x02C4EC 0B:84DC: 2E        .byte $2E   ; 
- D 0 - I - 0x02C4ED 0B:84DD: 81        .byte $81   ; 
- D 0 - I - 0x02C4EE 0B:84DE: 27        .byte $27   ; 
- D 0 - I - 0x02C4EF 0B:84DF: C3        .byte $C3   ; 
- D 0 - I - 0x02C4F0 0B:84E0: 3F        .byte $3F   ; 
- D 0 - I - 0x02C4F1 0B:84E1: 05        .byte $05   ; 
- D 0 - I - 0x02C4F2 0B:84E2: 20        .byte $20   ; 
- D 0 - I - 0x02C4F3 0B:84E3: 8C        .byte $8C   ; 
- D 0 - I - 0x02C4F4 0B:84E4: 00        .byte $00   ; 
- D 0 - I - 0x02C4F5 0B:84E5: 33        .byte $33   ; 
- D 0 - I - 0x02C4F6 0B:84E6: 34        .byte $34   ; 
- D 0 - I - 0x02C4F7 0B:84E7: 00        .byte $00   ; 
- D 0 - I - 0x02C4F8 0B:84E8: 35        .byte $35   ; 
- D 0 - I - 0x02C4F9 0B:84E9: 36        .byte $36   ; 
- D 0 - I - 0x02C4FA 0B:84EA: 30        .byte $30   ; 
- D 0 - I - 0x02C4FB 0B:84EB: 27        .byte $27   ; 
- D 0 - I - 0x02C4FC 0B:84EC: 2D        .byte $2D   ; 
- D 0 - I - 0x02C4FD 0B:84ED: 37        .byte $37   ; 
- D 0 - I - 0x02C4FE 0B:84EE: 00        .byte $00   ; 
- D 0 - I - 0x02C4FF 0B:84EF: 00        .byte $00   ; 
- D 0 - I - 0x02C500 0B:84F0: C3        .byte $C3   ; 
- D 0 - I - 0x02C501 0B:84F1: 38        .byte $38   ; 
- D 0 - I - 0x02C502 0B:84F2: 8B        .byte $8B   ; 
- D 0 - I - 0x02C503 0B:84F3: 27        .byte $27   ; 
- D 0 - I - 0x02C504 0B:84F4: 00        .byte $00   ; 
- D 0 - I - 0x02C505 0B:84F5: 33        .byte $33   ; 
- D 0 - I - 0x02C506 0B:84F6: 34        .byte $34   ; 
- D 0 - I - 0x02C507 0B:84F7: 00        .byte $00   ; 
- D 0 - I - 0x02C508 0B:84F8: 35        .byte $35   ; 
- D 0 - I - 0x02C509 0B:84F9: 36        .byte $36   ; 
- D 0 - I - 0x02C50A 0B:84FA: 30        .byte $30   ; 
- D 0 - I - 0x02C50B 0B:84FB: 27        .byte $27   ; 
- D 0 - I - 0x02C50C 0B:84FC: 33        .byte $33   ; 
- D 0 - I - 0x02C50D 0B:84FD: 00        .byte $00   ; 
- D 0 - I - 0x02C50E 0B:84FE: C3        .byte $C3   ; 
- D 0 - I - 0x02C50F 0B:84FF: 42        .byte $42   ; 
- D 0 - I - 0x02C510 0B:8500: 03        .byte $03   ; 
- D 0 - I - 0x02C511 0B:8501: 44        .byte $44   ; 
- D 0 - I - 0x02C512 0B:8502: 82        .byte $82   ; 
- D 0 - I - 0x02C513 0B:8503: 3B        .byte $3B   ; 
- D 0 - I - 0x02C514 0B:8504: 3C        .byte $3C   ; 
- D 0 - I - 0x02C515 0B:8505: 03        .byte $03   ; 
- D 0 - I - 0x02C516 0B:8506: 00        .byte $00   ; 
- D 0 - I - 0x02C517 0B:8507: 8D        .byte $8D   ; 
- D 0 - I - 0x02C518 0B:8508: 3B        .byte $3B   ; 
- D 0 - I - 0x02C519 0B:8509: 00        .byte $00   ; 
- D 0 - I - 0x02C51A 0B:850A: 27        .byte $27   ; 
- D 0 - I - 0x02C51B 0B:850B: 00        .byte $00   ; 
- D 0 - I - 0x02C51C 0B:850C: 00        .byte $00   ; 
- D 0 - I - 0x02C51D 0B:850D: 3C        .byte $3C   ; 
- D 0 - I - 0x02C51E 0B:850E: 00        .byte $00   ; 
- D 0 - I - 0x02C51F 0B:850F: 00        .byte $00   ; 
- D 0 - I - 0x02C520 0B:8510: 3C        .byte $3C   ; 
- D 0 - I - 0x02C521 0B:8511: 00        .byte $00   ; 
- D 0 - I - 0x02C522 0B:8512: 27        .byte $27   ; 
- D 0 - I - 0x02C523 0B:8513: 3B        .byte $3B   ; 
- D 0 - I - 0x02C524 0B:8514: 3C        .byte $3C   ; 
- D 0 - I - 0x02C525 0B:8515: 03        .byte $03   ; 
- D 0 - I - 0x02C526 0B:8516: 00        .byte $00   ; 
- D 0 - I - 0x02C527 0B:8517: 87        .byte $87   ; 
- D 0 - I - 0x02C528 0B:8518: 3B        .byte $3B   ; 
- D 0 - I - 0x02C529 0B:8519: 00        .byte $00   ; 
- D 0 - I - 0x02C52A 0B:851A: 27        .byte $27   ; 
- D 0 - I - 0x02C52B 0B:851B: 3C        .byte $3C   ; 
- D 0 - I - 0x02C52C 0B:851C: 00        .byte $00   ; 
- D 0 - I - 0x02C52D 0B:851D: 45        .byte $45   ; 
- D 0 - I - 0x02C52E 0B:851E: 00        .byte $00   ; 
- D 0 - I - 0x02C52F 0B:851F: C4        .byte $C4   ; 
- D 0 - I - 0x02C530 0B:8520: 46        .byte $46   ; 
- D 0 - I - 0x02C531 0B:8521: 83        .byte $83   ; 
- D 0 - I - 0x02C532 0B:8522: 00        .byte $00   ; 
- D 0 - I - 0x02C533 0B:8523: 00        .byte $00   ; 
- D 0 - I - 0x02C534 0B:8524: 3D        .byte $3D   ; 
- D 0 - I - 0x02C535 0B:8525: 08        .byte $08   ; 
- D 0 - I - 0x02C536 0B:8526: 00        .byte $00   ; 
- D 0 - I - 0x02C537 0B:8527: 83        .byte $83   ; 
- D 0 - I - 0x02C538 0B:8528: 3C        .byte $3C   ; 
- D 0 - I - 0x02C539 0B:8529: 00        .byte $00   ; 
- D 0 - I - 0x02C53A 0B:852A: 3E        .byte $3E   ; 
- D 0 - I - 0x02C53B 0B:852B: 04        .byte $04   ; 
- D 0 - I - 0x02C53C 0B:852C: 00        .byte $00   ; 
- D 0 - I - 0x02C53D 0B:852D: 81        .byte $81   ; 
- D 0 - I - 0x02C53E 0B:852E: 3D        .byte $3D   ; 
- D 0 - I - 0x02C53F 0B:852F: 06        .byte $06   ; 
- D 0 - I - 0x02C540 0B:8530: 00        .byte $00   ; 
- D 0 - I - 0x02C541 0B:8531: 82        .byte $82   ; 
- D 0 - I - 0x02C542 0B:8532: 3D        .byte $3D   ; 
- D 0 - I - 0x02C543 0B:8533: 3B        .byte $3B   ; 
- D 0 - I - 0x02C544 0B:8534: 05        .byte $05   ; 
- D 0 - I - 0x02C545 0B:8535: 00        .byte $00   ; 
- D 0 - I - 0x02C546 0B:8536: C6        .byte $C6   ; 
- D 0 - I - 0x02C547 0B:8537: 73        .byte $73   ; 
- D 0 - I - 0x02C548 0B:8538: 83        .byte $83   ; 
- D 0 - I - 0x02C549 0B:8539: 78        .byte $78   ; 
- D 0 - I - 0x02C54A 0B:853A: 78        .byte $78   ; 
- D 0 - I - 0x02C54B 0B:853B: 79        .byte $79   ; 
- D 0 - I - 0x02C54C 0B:853C: C3        .byte $C3   ; 
- D 0 - I - 0x02C54D 0B:853D: 74        .byte $74   ; 
- D 0 - I - 0x02C54E 0B:853E: C6        .byte $C6   ; 
- D 0 - I - 0x02C54F 0B:853F: 73        .byte $73   ; 
- D 0 - I - 0x02C550 0B:8540: 83        .byte $83   ; 
- D 0 - I - 0x02C551 0B:8541: 78        .byte $78   ; 
- D 0 - I - 0x02C552 0B:8542: 78        .byte $78   ; 
- D 0 - I - 0x02C553 0B:8543: 79        .byte $79   ; 
- D 0 - I - 0x02C554 0B:8544: C3        .byte $C3   ; 
- D 0 - I - 0x02C555 0B:8545: 74        .byte $74   ; 
- D 0 - I - 0x02C556 0B:8546: C6        .byte $C6   ; 
- D 0 - I - 0x02C557 0B:8547: 73        .byte $73   ; 
- D 0 - I - 0x02C558 0B:8548: 84        .byte $84   ; 
- D 0 - I - 0x02C559 0B:8549: 78        .byte $78   ; 
- D 0 - I - 0x02C55A 0B:854A: 78        .byte $78   ; 
- D 0 - I - 0x02C55B 0B:854B: 7A        .byte $7A   ; 
- D 0 - I - 0x02C55C 0B:854C: 7B        .byte $7B   ; 
- D 0 - I - 0x02C55D 0B:854D: C7        .byte $C7   ; 
- D 0 - I - 0x02C55E 0B:854E: 7B        .byte $7B   ; 
- D 0 - I - 0x02C55F 0B:854F: 85        .byte $85   ; 
- D 0 - I - 0x02C560 0B:8550: 7B        .byte $7B   ; 
- D 0 - I - 0x02C561 0B:8551: 7B        .byte $7B   ; 
- D 0 - I - 0x02C562 0B:8552: 7C        .byte $7C   ; 
- D 0 - I - 0x02C563 0B:8553: 7A        .byte $7A   ; 
- D 0 - I - 0x02C564 0B:8554: 7B        .byte $7B   ; 
- D 0 - I - 0x02C565 0B:8555: C7        .byte $C7   ; 
- D 0 - I - 0x02C566 0B:8556: 7B        .byte $7B   ; 
- D 0 - I - 0x02C567 0B:8557: 85        .byte $85   ; 
- D 0 - I - 0x02C568 0B:8558: 7B        .byte $7B   ; 
- D 0 - I - 0x02C569 0B:8559: 7B        .byte $7B   ; 
- D 0 - I - 0x02C56A 0B:855A: 7C        .byte $7C   ; 
- D 0 - I - 0x02C56B 0B:855B: 7A        .byte $7A   ; 
- D 0 - I - 0x02C56C 0B:855C: 7B        .byte $7B   ; 
- D 0 - I - 0x02C56D 0B:855D: C6        .byte $C6   ; 
- D 0 - I - 0x02C56E 0B:855E: 7B        .byte $7B   ; 
- D 0 - I - 0x02C56F 0B:855F: 81        .byte $81   ; 
- D 0 - I - 0x02C570 0B:8560: 82        .byte $82   ; 
- D 0 - I - 0x02C571 0B:8561: 03        .byte $03   ; 
- D 0 - I - 0x02C572 0B:8562: 83        .byte $83   ; 
- D 0 - I - 0x02C573 0B:8563: C5        .byte $C5   ; 
- D 0 - I - 0x02C574 0B:8564: 84        .byte $84   ; 
- D 0 - I - 0x02C575 0B:8565: 03        .byte $03   ; 
- D 0 - I - 0x02C576 0B:8566: 83        .byte $83   ; 
- D 0 - I - 0x02C577 0B:8567: 81        .byte $81   ; 
- D 0 - I - 0x02C578 0B:8568: 82        .byte $82   ; 
- D 0 - I - 0x02C579 0B:8569: 03        .byte $03   ; 
- D 0 - I - 0x02C57A 0B:856A: 83        .byte $83   ; 
- D 0 - I - 0x02C57B 0B:856B: C5        .byte $C5   ; 
- D 0 - I - 0x02C57C 0B:856C: 84        .byte $84   ; 
- D 0 - I - 0x02C57D 0B:856D: 03        .byte $03   ; 
- D 0 - I - 0x02C57E 0B:856E: 83        .byte $83   ; 
- D 0 - I - 0x02C57F 0B:856F: 81        .byte $81   ; 
- D 0 - I - 0x02C580 0B:8570: 82        .byte $82   ; 
- D 0 - I - 0x02C581 0B:8571: 03        .byte $03   ; 
- D 0 - I - 0x02C582 0B:8572: 83        .byte $83   ; 
- D 0 - I - 0x02C583 0B:8573: C4        .byte $C4   ; 
- D 0 - I - 0x02C584 0B:8574: 84        .byte $84   ; 
- D 0 - I - 0x02C585 0B:8575: C3        .byte $C3   ; 
- D 0 - I - 0x02C586 0B:8576: 89        .byte $89   ; 
- D 0 - I - 0x02C587 0B:8577: C6        .byte $C6   ; 
- D 0 - I - 0x02C588 0B:8578: 8B        .byte $8B   ; 
- D 0 - I - 0x02C589 0B:8579: 83        .byte $83   ; 
- D 0 - I - 0x02C58A 0B:857A: 8B        .byte $8B   ; 
- D 0 - I - 0x02C58B 0B:857B: 8B        .byte $8B   ; 
- D 0 - I - 0x02C58C 0B:857C: 91        .byte $91   ; 
- D 0 - I - 0x02C58D 0B:857D: C3        .byte $C3   ; 
- D 0 - I - 0x02C58E 0B:857E: 89        .byte $89   ; 
- D 0 - I - 0x02C58F 0B:857F: C6        .byte $C6   ; 
- D 0 - I - 0x02C590 0B:8580: 8B        .byte $8B   ; 
- D 0 - I - 0x02C591 0B:8581: 03        .byte $03   ; 
- D 0 - I - 0x02C592 0B:8582: 8B        .byte $8B   ; 
- D 0 - I - 0x02C593 0B:8583: C3        .byte $C3   ; 
- D 0 - I - 0x02C594 0B:8584: 89        .byte $89   ; 
- D 0 - I - 0x02C595 0B:8585: 81        .byte $81   ; 
- D 0 - I - 0x02C596 0B:8586: 91        .byte $91   ; 
- D 0 - I - 0x02C597 0B:8587: C4        .byte $C4   ; 
- D 0 - I - 0x02C598 0B:8588: 8C        .byte $8C   ; 
- D 0 - I - 0x02C599 0B:8589: 08        .byte $08   ; 
- D 0 - I - 0x02C59A 0B:858A: 92        .byte $92   ; 
- D 0 - I - 0x02C59B 0B:858B: C3        .byte $C3   ; 
- D 0 - I - 0x02C59C 0B:858C: 93        .byte $93   ; 
- D 0 - I - 0x02C59D 0B:858D: 82        .byte $82   ; 
- D 0 - I - 0x02C59E 0B:858E: 94        .byte $94   ; 
- D 0 - I - 0x02C59F 0B:858F: 96        .byte $96   ; 
- D 0 - I - 0x02C5A0 0B:8590: 06        .byte $06   ; 
- D 0 - I - 0x02C5A1 0B:8591: 92        .byte $92   ; 
- D 0 - I - 0x02C5A2 0B:8592: 82        .byte $82   ; 
- D 0 - I - 0x02C5A3 0B:8593: A5        .byte $A5   ; 
- D 0 - I - 0x02C5A4 0B:8594: A6        .byte $A6   ; 
- D 0 - I - 0x02C5A5 0B:8595: 07        .byte $07   ; 
- D 0 - I - 0x02C5A6 0B:8596: 92        .byte $92   ; 
- D 0 - I - 0x02C5A7 0B:8597: 81        .byte $81   ; 
- D 0 - I - 0x02C5A8 0B:8598: A7        .byte $A7   ; 
- D 0 - I - 0x02C5A9 0B:8599: 03        .byte $03   ; 
- D 0 - I - 0x02C5AA 0B:859A: 92        .byte $92   ; 
- D 0 - I - 0x02C5AB 0B:859B: 05        .byte $05   ; 
- D 0 - I - 0x02C5AC 0B:859C: 97        .byte $97   ; 
- D 0 - I - 0x02C5AD 0B:859D: 86        .byte $86   ; 
- D 0 - I - 0x02C5AE 0B:859E: 98        .byte $98   ; 
- D 0 - I - 0x02C5AF 0B:859F: 97        .byte $97   ; 
- D 0 - I - 0x02C5B0 0B:85A0: 99        .byte $99   ; 
- D 0 - I - 0x02C5B1 0B:85A1: 9A        .byte $9A   ; 
- D 0 - I - 0x02C5B2 0B:85A2: 99        .byte $99   ; 
- D 0 - I - 0x02C5B3 0B:85A3: 9B        .byte $9B   ; 
- D 0 - I - 0x02C5B4 0B:85A4: 06        .byte $06   ; 
- D 0 - I - 0x02C5B5 0B:85A5: 97        .byte $97   ; 
- D 0 - I - 0x02C5B6 0B:85A6: 88        .byte $88   ; 
- D 0 - I - 0x02C5B7 0B:85A7: A8        .byte $A8   ; 
- D 0 - I - 0x02C5B8 0B:85A8: 97        .byte $97   ; 
- D 0 - I - 0x02C5B9 0B:85A9: A9        .byte $A9   ; 
- D 0 - I - 0x02C5BA 0B:85AA: 97        .byte $97   ; 
- D 0 - I - 0x02C5BB 0B:85AB: A9        .byte $A9   ; 
- D 0 - I - 0x02C5BC 0B:85AC: 97        .byte $97   ; 
- D 0 - I - 0x02C5BD 0B:85AD: 97        .byte $97   ; 
- D 0 - I - 0x02C5BE 0B:85AE: 98        .byte $98   ; 
- D 0 - I - 0x02C5BF 0B:85AF: 03        .byte $03   ; 
- D 0 - I - 0x02C5C0 0B:85B0: 97        .byte $97   ; 
- D 0 - I - 0x02C5C1 0B:85B1: 81        .byte $81   ; 
- D 0 - I - 0x02C5C2 0B:85B2: AA        .byte $AA   ; 
- D 0 - I - 0x02C5C3 0B:85B3: 03        .byte $03   ; 
- D 0 - I - 0x02C5C4 0B:85B4: 97        .byte $97   ; 
- D 0 - I - 0x02C5C5 0B:85B5: 05        .byte $05   ; 
- D 0 - I - 0x02C5C6 0B:85B6: 9C        .byte $9C   ; 
- D 0 - I - 0x02C5C7 0B:85B7: C3        .byte $C3   ; 
- D 0 - I - 0x02C5C8 0B:85B8: 9D        .byte $9D   ; 
- D 0 - I - 0x02C5C9 0B:85B9: 82        .byte $82   ; 
- D 0 - I - 0x02C5CA 0B:85BA: 9E        .byte $9E   ; 
- D 0 - I - 0x02C5CB 0B:85BB: A0        .byte $A0   ; 
- D 0 - I - 0x02C5CC 0B:85BC: 08        .byte $08   ; 
- D 0 - I - 0x02C5CD 0B:85BD: 9C        .byte $9C   ; 
- D 0 - I - 0x02C5CE 0B:85BE: 84        .byte $84   ; 
- D 0 - I - 0x02C5CF 0B:85BF: AB        .byte $AB   ; 
- D 0 - I - 0x02C5D0 0B:85C0: A0        .byte $A0   ; 
- D 0 - I - 0x02C5D1 0B:85C1: AB        .byte $AB   ; 
- D 0 - I - 0x02C5D2 0B:85C2: A0        .byte $A0   ; 
- D 0 - I - 0x02C5D3 0B:85C3: 06        .byte $06   ; 
- D 0 - I - 0x02C5D4 0B:85C4: 9C        .byte $9C   ; 
- D 0 - I - 0x02C5D5 0B:85C5: 81        .byte $81   ; 
- D 0 - I - 0x02C5D6 0B:85C6: AC        .byte $AC   ; 
- D 0 - I - 0x02C5D7 0B:85C7: 03        .byte $03   ; 
- D 0 - I - 0x02C5D8 0B:85C8: 9C        .byte $9C   ; 
- D 0 - I - 0x02C5D9 0B:85C9: 04        .byte $04   ; 
- D 0 - I - 0x02C5DA 0B:85CA: 03        .byte $03   ; 
- D 0 - I - 0x02C5DB 0B:85CB: 86        .byte $86   ; 
- D 0 - I - 0x02C5DC 0B:85CC: A1        .byte $A1   ; 
- D 0 - I - 0x02C5DD 0B:85CD: A2        .byte $A2   ; 
- D 0 - I - 0x02C5DE 0B:85CE: A1        .byte $A1   ; 
- D 0 - I - 0x02C5DF 0B:85CF: A2        .byte $A2   ; 
- D 0 - I - 0x02C5E0 0B:85D0: 03        .byte $03   ; 
- D 0 - I - 0x02C5E1 0B:85D1: A3        .byte $A3   ; 
- D 0 - I - 0x02C5E2 0B:85D2: 04        .byte $04   ; 
- D 0 - I - 0x02C5E3 0B:85D3: 03        .byte $03   ; 
- D 0 - I - 0x02C5E4 0B:85D4: 81        .byte $81   ; 
- D 0 - I - 0x02C5E5 0B:85D5: A4        .byte $A4   ; 
- D 0 - I - 0x02C5E6 0B:85D6: 03        .byte $03   ; 
- D 0 - I - 0x02C5E7 0B:85D7: 03        .byte $03   ; 
- D 0 - I - 0x02C5E8 0B:85D8: 82        .byte $82   ; 
- D 0 - I - 0x02C5E9 0B:85D9: AD        .byte $AD   ; 
- D 0 - I - 0x02C5EA 0B:85DA: A4        .byte $A4   ; 
- D 0 - I - 0x02C5EB 0B:85DB: 08        .byte $08   ; 
- D 0 - I - 0x02C5EC 0B:85DC: 03        .byte $03   ; 
- D 0 - I - 0x02C5ED 0B:85DD: 84        .byte $84   ; 
- D 0 - I - 0x02C5EE 0B:85DE: AE        .byte $AE   ; 
- D 0 - I - 0x02C5EF 0B:85DF: 03        .byte $03   ; 
- D 0 - I - 0x02C5F0 0B:85E0: 03        .byte $03   ; 
- D 0 - I - 0x02C5F1 0B:85E1: A3        .byte $A3   ; 
- D 0 - I - 0x02C5F2 0B:85E2: 7E        .byte $7E   ; 
- D 0 - I - 0x02C5F3 0B:85E3: 00        .byte $00   ; 
- D 0 - I - 0x02C5F4 0B:85E4: 42        .byte $42   ; 
- D 0 - I - 0x02C5F5 0B:85E5: 00        .byte $00   ; 
- D 0 - I - 0x02C5F6 0B:85E6: 08        .byte $08   ; 
- D 0 - I - 0x02C5F7 0B:85E7: FF        .byte $FF   ; 
- D 0 - I - 0x02C5F8 0B:85E8: 08        .byte $08   ; 
- D 0 - I - 0x02C5F9 0B:85E9: AF        .byte $AF   ; 
- D 0 - I - 0x02C5FA 0B:85EA: 08        .byte $08   ; 
- D 0 - I - 0x02C5FB 0B:85EB: AA        .byte $AA   ; 
- D 0 - I - 0x02C5FC 0B:85EC: 88        .byte $88   ; 
- D 0 - I - 0x02C5FD 0B:85ED: FA        .byte $FA   ; 
- D 0 - I - 0x02C5FE 0B:85EE: BA        .byte $BA   ; 
- D 0 - I - 0x02C5FF 0B:85EF: FA        .byte $FA   ; 
- D 0 - I - 0x02C600 0B:85F0: BA        .byte $BA   ; 
- D 0 - I - 0x02C601 0B:85F1: FA        .byte $FA   ; 
- D 0 - I - 0x02C602 0B:85F2: BA        .byte $BA   ; 
- D 0 - I - 0x02C603 0B:85F3: FA        .byte $FA   ; 
- D 0 - I - 0x02C604 0B:85F4: AA        .byte $AA   ; 
- D 0 - I - 0x02C605 0B:85F5: 08        .byte $08   ; 
- D 0 - I - 0x02C606 0B:85F6: 55        .byte $55   ; 
- D 0 - I - 0x02C607 0B:85F7: 08        .byte $08   ; 
- D 0 - I - 0x02C608 0B:85F8: 00        .byte $00   ; 
- D 0 - I - 0x02C609 0B:85F9: 10        .byte $10   ; 
- D 0 - I - 0x02C60A 0B:85FA: FF        .byte $FF   ; 
- D 0 - I - 0x02C60B 0B:85FB: 7F        .byte $7F   ; 
- D 0 - I - 0x02C60C 0B:85FC: 00        .byte $00   ; 
- D 0 - I - 0x02C60D 0B:85FD: 24        .byte $24   ; 
- D 0 - I - 0x02C60E 0B:85FE: 7E        .byte $7E   ; 
- D 0 - I - 0x02C60F 0B:85FF: 00        .byte $00   ; 
- D 0 - I - 0x02C610 0B:8600: 42        .byte $42   ; 
- D 0 - I - 0x02C611 0B:8601: 00        .byte $00   ; 
- D 0 - I - 0x02C612 0B:8602: 04        .byte $04   ; 
- D 0 - I - 0x02C613 0B:8603: 03        .byte $03   ; 
- D 0 - I - 0x02C614 0B:8604: 82        .byte $82   ; 
- D 0 - I - 0x02C615 0B:8605: 4A        .byte $4A   ; 
- D 0 - I - 0x02C616 0B:8606: 4B        .byte $4B   ; 
- D 0 - I - 0x02C617 0B:8607: 04        .byte $04   ; 
- D 0 - I - 0x02C618 0B:8608: 03        .byte $03   ; 
- D 0 - I - 0x02C619 0B:8609: 82        .byte $82   ; 
- D 0 - I - 0x02C61A 0B:860A: 4C        .byte $4C   ; 
- D 0 - I - 0x02C61B 0B:860B: 4D        .byte $4D   ; 
- D 0 - I - 0x02C61C 0B:860C: 0C        .byte $0C   ; 
- D 0 - I - 0x02C61D 0B:860D: 03        .byte $03   ; 
- D 0 - I - 0x02C61E 0B:860E: 08        .byte $08   ; 
- D 0 - I - 0x02C61F 0B:860F: 00        .byte $00   ; 
- D 0 - I - 0x02C620 0B:8610: 04        .byte $04   ; 
- D 0 - I - 0x02C621 0B:8611: 03        .byte $03   ; 
- D 0 - I - 0x02C622 0B:8612: 82        .byte $82   ; 
- D 0 - I - 0x02C623 0B:8613: 4E        .byte $4E   ; 
- D 0 - I - 0x02C624 0B:8614: 4F        .byte $4F   ; 
- D 0 - I - 0x02C625 0B:8615: 04        .byte $04   ; 
- D 0 - I - 0x02C626 0B:8616: 03        .byte $03   ; 
- D 0 - I - 0x02C627 0B:8617: 82        .byte $82   ; 
- D 0 - I - 0x02C628 0B:8618: 50        .byte $50   ; 
- D 0 - I - 0x02C629 0B:8619: 51        .byte $51   ; 
- D 0 - I - 0x02C62A 0B:861A: 0C        .byte $0C   ; 
- D 0 - I - 0x02C62B 0B:861B: 03        .byte $03   ; 
- D 0 - I - 0x02C62C 0B:861C: 08        .byte $08   ; 
- D 0 - I - 0x02C62D 0B:861D: 00        .byte $00   ; 
- D 0 - I - 0x02C62E 0B:861E: 04        .byte $04   ; 
- D 0 - I - 0x02C62F 0B:861F: 03        .byte $03   ; 
- D 0 - I - 0x02C630 0B:8620: 82        .byte $82   ; 
- D 0 - I - 0x02C631 0B:8621: 52        .byte $52   ; 
- D 0 - I - 0x02C632 0B:8622: 53        .byte $53   ; 
- D 0 - I - 0x02C633 0B:8623: 04        .byte $04   ; 
- D 0 - I - 0x02C634 0B:8624: 03        .byte $03   ; 
- D 0 - I - 0x02C635 0B:8625: 82        .byte $82   ; 
- D 0 - I - 0x02C636 0B:8626: 54        .byte $54   ; 
- D 0 - I - 0x02C637 0B:8627: 55        .byte $55   ; 
- D 0 - I - 0x02C638 0B:8628: 0C        .byte $0C   ; 
- D 0 - I - 0x02C639 0B:8629: 03        .byte $03   ; 
- D 0 - I - 0x02C63A 0B:862A: 08        .byte $08   ; 
- D 0 - I - 0x02C63B 0B:862B: 00        .byte $00   ; 
- D 0 - I - 0x02C63C 0B:862C: 04        .byte $04   ; 
- D 0 - I - 0x02C63D 0B:862D: 15        .byte $15   ; 
- D 0 - I - 0x02C63E 0B:862E: 82        .byte $82   ; 
- D 0 - I - 0x02C63F 0B:862F: 56        .byte $56   ; 
- D 0 - I - 0x02C640 0B:8630: 57        .byte $57   ; 
- D 0 - I - 0x02C641 0B:8631: 12        .byte $12   ; 
- D 0 - I - 0x02C642 0B:8632: 15        .byte $15   ; 
- D 0 - I - 0x02C643 0B:8633: 08        .byte $08   ; 
- D 0 - I - 0x02C644 0B:8634: 00        .byte $00   ; 
- D 0 - I - 0x02C645 0B:8635: 04        .byte $04   ; 
- D 0 - I - 0x02C646 0B:8636: 20        .byte $20   ; 
- D 0 - I - 0x02C647 0B:8637: 82        .byte $82   ; 
- D 0 - I - 0x02C648 0B:8638: 58        .byte $58   ; 
- D 0 - I - 0x02C649 0B:8639: 59        .byte $59   ; 
- D 0 - I - 0x02C64A 0B:863A: 0B        .byte $0B   ; 
- D 0 - I - 0x02C64B 0B:863B: 20        .byte $20   ; 
- D 0 - I - 0x02C64C 0B:863C: 87        .byte $87   ; 
- D 0 - I - 0x02C64D 0B:863D: 6D        .byte $6D   ; 
- D 0 - I - 0x02C64E 0B:863E: 6E        .byte $6E   ; 
- D 0 - I - 0x02C64F 0B:863F: 20        .byte $20   ; 
- D 0 - I - 0x02C650 0B:8640: 20        .byte $20   ; 
- D 0 - I - 0x02C651 0B:8641: 6D        .byte $6D   ; 
- D 0 - I - 0x02C652 0B:8642: 6E        .byte $6E   ; 
- D 0 - I - 0x02C653 0B:8643: 20        .byte $20   ; 
- D 0 - I - 0x02C654 0B:8644: 08        .byte $08   ; 
- D 0 - I - 0x02C655 0B:8645: 00        .byte $00   ; 
- D 0 - I - 0x02C656 0B:8646: 04        .byte $04   ; 
- D 0 - I - 0x02C657 0B:8647: 20        .byte $20   ; 
- D 0 - I - 0x02C658 0B:8648: 82        .byte $82   ; 
- D 0 - I - 0x02C659 0B:8649: 5A        .byte $5A   ; 
- D 0 - I - 0x02C65A 0B:864A: 5B        .byte $5B   ; 
- D 0 - I - 0x02C65B 0B:864B: 09        .byte $09   ; 
- D 0 - I - 0x02C65C 0B:864C: 20        .byte $20   ; 
- D 0 - I - 0x02C65D 0B:864D: 89        .byte $89   ; 
- D 0 - I - 0x02C65E 0B:864E: 41        .byte $41   ; 
- D 0 - I - 0x02C65F 0B:864F: 3F        .byte $3F   ; 
- D 0 - I - 0x02C660 0B:8650: 6F        .byte $6F   ; 
- D 0 - I - 0x02C661 0B:8651: 40        .byte $40   ; 
- D 0 - I - 0x02C662 0B:8652: 41        .byte $41   ; 
- D 0 - I - 0x02C663 0B:8653: 3F        .byte $3F   ; 
- D 0 - I - 0x02C664 0B:8654: 6F        .byte $6F   ; 
- D 0 - I - 0x02C665 0B:8655: 40        .byte $40   ; 
- D 0 - I - 0x02C666 0B:8656: 41        .byte $41   ; 
- D 0 - I - 0x02C667 0B:8657: 08        .byte $08   ; 
- D 0 - I - 0x02C668 0B:8658: 00        .byte $00   ; 
- D 0 - I - 0x02C669 0B:8659: 04        .byte $04   ; 
- D 0 - I - 0x02C66A 0B:865A: 20        .byte $20   ; 
- D 0 - I - 0x02C66B 0B:865B: C3        .byte $C3   ; 
- D 0 - I - 0x02C66C 0B:865C: 5C        .byte $5C   ; 
- D 0 - I - 0x02C66D 0B:865D: 07        .byte $07   ; 
- D 0 - I - 0x02C66E 0B:865E: 20        .byte $20   ; 
- D 0 - I - 0x02C66F 0B:865F: 8A        .byte $8A   ; 
- D 0 - I - 0x02C670 0B:8660: 41        .byte $41   ; 
- D 0 - I - 0x02C671 0B:8661: 5F        .byte $5F   ; 
- D 0 - I - 0x02C672 0B:8662: 70        .byte $70   ; 
- D 0 - I - 0x02C673 0B:8663: 00        .byte $00   ; 
- D 0 - I - 0x02C674 0B:8664: 00        .byte $00   ; 
- D 0 - I - 0x02C675 0B:8665: 71        .byte $71   ; 
- D 0 - I - 0x02C676 0B:8666: 70        .byte $70   ; 
- D 0 - I - 0x02C677 0B:8667: 00        .byte $00   ; 
- D 0 - I - 0x02C678 0B:8668: 00        .byte $00   ; 
- D 0 - I - 0x02C679 0B:8669: 71        .byte $71   ; 
- D 0 - I - 0x02C67A 0B:866A: 08        .byte $08   ; 
- D 0 - I - 0x02C67B 0B:866B: 00        .byte $00   ; 
- D 0 - I - 0x02C67C 0B:866C: 03        .byte $03   ; 
- D 0 - I - 0x02C67D 0B:866D: 44        .byte $44   ; 
- D 0 - I - 0x02C67E 0B:866E: C4        .byte $C4   ; 
- D 0 - I - 0x02C67F 0B:866F: 60        .byte $60   ; 
- D 0 - I - 0x02C680 0B:8670: 83        .byte $83   ; 
- D 0 - I - 0x02C681 0B:8671: 41        .byte $41   ; 
- D 0 - I - 0x02C682 0B:8672: 64        .byte $64   ; 
- D 0 - I - 0x02C683 0B:8673: 41        .byte $41   ; 
- D 0 - I - 0x02C684 0B:8674: C3        .byte $C3   ; 
- D 0 - I - 0x02C685 0B:8675: 65        .byte $65   ; 
- D 0 - I - 0x02C686 0B:8676: 04        .byte $04   ; 
- D 0 - I - 0x02C687 0B:8677: 00        .byte $00   ; 
- D 0 - I - 0x02C688 0B:8678: 86        .byte $86   ; 
- D 0 - I - 0x02C689 0B:8679: 72        .byte $72   ; 
- D 0 - I - 0x02C68A 0B:867A: 33        .byte $33   ; 
- D 0 - I - 0x02C68B 0B:867B: 00        .byte $00   ; 
- D 0 - I - 0x02C68C 0B:867C: 00        .byte $00   ; 
- D 0 - I - 0x02C68D 0B:867D: 72        .byte $72   ; 
- D 0 - I - 0x02C68E 0B:867E: 33        .byte $33   ; 
- D 0 - I - 0x02C68F 0B:867F: 09        .byte $09   ; 
- D 0 - I - 0x02C690 0B:8680: 00        .byte $00   ; 
- D 0 - I - 0x02C691 0B:8681: 84        .byte $84   ; 
- D 0 - I - 0x02C692 0B:8682: 47        .byte $47   ; 
- D 0 - I - 0x02C693 0B:8683: 68        .byte $68   ; 
- D 0 - I - 0x02C694 0B:8684: 69        .byte $69   ; 
- D 0 - I - 0x02C695 0B:8685: 00        .byte $00   ; 
- D 0 - I - 0x02C696 0B:8686: C3        .byte $C3   ; 
- D 0 - I - 0x02C697 0B:8687: 6A        .byte $6A   ; 
- D 0 - I - 0x02C698 0B:8688: 03        .byte $03   ; 
- D 0 - I - 0x02C699 0B:8689: 00        .byte $00   ; 
- D 0 - I - 0x02C69A 0B:868A: 82        .byte $82   ; 
- D 0 - I - 0x02C69B 0B:868B: 3C        .byte $3C   ; 
- D 0 - I - 0x02C69C 0B:868C: 45        .byte $45   ; 
- D 0 - I - 0x02C69D 0B:868D: 04        .byte $04   ; 
- D 0 - I - 0x02C69E 0B:868E: 00        .byte $00   ; 
- D 0 - I - 0x02C69F 0B:868F: 87        .byte $87   ; 
- D 0 - I - 0x02C6A0 0B:8690: 45        .byte $45   ; 
- D 0 - I - 0x02C6A1 0B:8691: 00        .byte $00   ; 
- D 0 - I - 0x02C6A2 0B:8692: 45        .byte $45   ; 
- D 0 - I - 0x02C6A3 0B:8693: 00        .byte $00   ; 
- D 0 - I - 0x02C6A4 0B:8694: 45        .byte $45   ; 
- D 0 - I - 0x02C6A5 0B:8695: 00        .byte $00   ; 
- D 0 - I - 0x02C6A6 0B:8696: 45        .byte $45   ; 
- D 0 - I - 0x02C6A7 0B:8697: 11        .byte $11   ; 
- D 0 - I - 0x02C6A8 0B:8698: 00        .byte $00   ; 
- D 0 - I - 0x02C6A9 0B:8699: 81        .byte $81   ; 
- D 0 - I - 0x02C6AA 0B:869A: 3C        .byte $3C   ; 
- D 0 - I - 0x02C6AB 0B:869B: 04        .byte $04   ; 
- D 0 - I - 0x02C6AC 0B:869C: 00        .byte $00   ; 
- D 0 - I - 0x02C6AD 0B:869D: 81        .byte $81   ; 
- D 0 - I - 0x02C6AE 0B:869E: 45        .byte $45   ; 
- D 0 - I - 0x02C6AF 0B:869F: 03        .byte $03   ; 
- D 0 - I - 0x02C6B0 0B:86A0: 00        .byte $00   ; 
- D 0 - I - 0x02C6B1 0B:86A1: 81        .byte $81   ; 
- D 0 - I - 0x02C6B2 0B:86A2: 3D        .byte $3D   ; 
- D 0 - I - 0x02C6B3 0B:86A3: 03        .byte $03   ; 
- D 0 - I - 0x02C6B4 0B:86A4: 00        .byte $00   ; 
- D 0 - I - 0x02C6B5 0B:86A5: 81        .byte $81   ; 
- D 0 - I - 0x02C6B6 0B:86A6: 3D        .byte $3D   ; 
- D 0 - I - 0x02C6B7 0B:86A7: 0A        .byte $0A   ; 
- D 0 - I - 0x02C6B8 0B:86A8: 00        .byte $00   ; 
- D 0 - I - 0x02C6B9 0B:86A9: 81        .byte $81   ; 
- D 0 - I - 0x02C6BA 0B:86AA: 79        .byte $79   ; 
- D 0 - I - 0x02C6BB 0B:86AB: C3        .byte $C3   ; 
- D 0 - I - 0x02C6BC 0B:86AC: 74        .byte $74   ; 
- D 0 - I - 0x02C6BD 0B:86AD: C6        .byte $C6   ; 
- D 0 - I - 0x02C6BE 0B:86AE: 73        .byte $73   ; 
- D 0 - I - 0x02C6BF 0B:86AF: 83        .byte $83   ; 
- D 0 - I - 0x02C6C0 0B:86B0: 78        .byte $78   ; 
- D 0 - I - 0x02C6C1 0B:86B1: 78        .byte $78   ; 
- D 0 - I - 0x02C6C2 0B:86B2: 79        .byte $79   ; 
- D 0 - I - 0x02C6C3 0B:86B3: C3        .byte $C3   ; 
- D 0 - I - 0x02C6C4 0B:86B4: 74        .byte $74   ; 
- D 0 - I - 0x02C6C5 0B:86B5: C6        .byte $C6   ; 
- D 0 - I - 0x02C6C6 0B:86B6: 73        .byte $73   ; 
- D 0 - I - 0x02C6C7 0B:86B7: 82        .byte $82   ; 
- D 0 - I - 0x02C6C8 0B:86B8: 78        .byte $78   ; 
- D 0 - I - 0x02C6C9 0B:86B9: 78        .byte $78   ; 
- D 0 - I - 0x02C6CA 0B:86BA: 08        .byte $08   ; 
- D 0 - I - 0x02C6CB 0B:86BB: 00        .byte $00   ; 
- D 0 - I - 0x02C6CC 0B:86BC: 86        .byte $86   ; 
- D 0 - I - 0x02C6CD 0B:86BD: 81        .byte $81   ; 
- D 0 - I - 0x02C6CE 0B:86BE: 7B        .byte $7B   ; 
- D 0 - I - 0x02C6CF 0B:86BF: 7B        .byte $7B   ; 
- D 0 - I - 0x02C6D0 0B:86C0: 7C        .byte $7C   ; 
- D 0 - I - 0x02C6D1 0B:86C1: 7A        .byte $7A   ; 
- D 0 - I - 0x02C6D2 0B:86C2: 7B        .byte $7B   ; 
- D 0 - I - 0x02C6D3 0B:86C3: C7        .byte $C7   ; 
- D 0 - I - 0x02C6D4 0B:86C4: 7B        .byte $7B   ; 
- D 0 - I - 0x02C6D5 0B:86C5: 85        .byte $85   ; 
- D 0 - I - 0x02C6D6 0B:86C6: 7B        .byte $7B   ; 
- D 0 - I - 0x02C6D7 0B:86C7: 7B        .byte $7B   ; 
- D 0 - I - 0x02C6D8 0B:86C8: 7C        .byte $7C   ; 
- D 0 - I - 0x02C6D9 0B:86C9: 7A        .byte $7A   ; 
- D 0 - I - 0x02C6DA 0B:86CA: 7B        .byte $7B   ; 
- D 0 - I - 0x02C6DB 0B:86CB: C6        .byte $C6   ; 
- D 0 - I - 0x02C6DC 0B:86CC: 7B        .byte $7B   ; 
- D 0 - I - 0x02C6DD 0B:86CD: 08        .byte $08   ; 
- D 0 - I - 0x02C6DE 0B:86CE: 00        .byte $00   ; 
- D 0 - I - 0x02C6DF 0B:86CF: 81        .byte $81   ; 
- D 0 - I - 0x02C6E0 0B:86D0: 88        .byte $88   ; 
- D 0 - I - 0x02C6E1 0B:86D1: 03        .byte $03   ; 
- D 0 - I - 0x02C6E2 0B:86D2: 83        .byte $83   ; 
- D 0 - I - 0x02C6E3 0B:86D3: 81        .byte $81   ; 
- D 0 - I - 0x02C6E4 0B:86D4: 82        .byte $82   ; 
- D 0 - I - 0x02C6E5 0B:86D5: 03        .byte $03   ; 
- D 0 - I - 0x02C6E6 0B:86D6: 83        .byte $83   ; 
- D 0 - I - 0x02C6E7 0B:86D7: C5        .byte $C5   ; 
- D 0 - I - 0x02C6E8 0B:86D8: 84        .byte $84   ; 
- D 0 - I - 0x02C6E9 0B:86D9: 03        .byte $03   ; 
- D 0 - I - 0x02C6EA 0B:86DA: 83        .byte $83   ; 
- D 0 - I - 0x02C6EB 0B:86DB: 81        .byte $81   ; 
- D 0 - I - 0x02C6EC 0B:86DC: 82        .byte $82   ; 
- D 0 - I - 0x02C6ED 0B:86DD: 03        .byte $03   ; 
- D 0 - I - 0x02C6EE 0B:86DE: 83        .byte $83   ; 
- D 0 - I - 0x02C6EF 0B:86DF: C4        .byte $C4   ; 
- D 0 - I - 0x02C6F0 0B:86E0: 84        .byte $84   ; 
- D 0 - I - 0x02C6F1 0B:86E1: 08        .byte $08   ; 
- D 0 - I - 0x02C6F2 0B:86E2: 00        .byte $00   ; 
- D 0 - I - 0x02C6F3 0B:86E3: 84        .byte $84   ; 
- D 0 - I - 0x02C6F4 0B:86E4: 90        .byte $90   ; 
- D 0 - I - 0x02C6F5 0B:86E5: 8A        .byte $8A   ; 
- D 0 - I - 0x02C6F6 0B:86E6: 8B        .byte $8B   ; 
- D 0 - I - 0x02C6F7 0B:86E7: 91        .byte $91   ; 
- D 0 - I - 0x02C6F8 0B:86E8: C3        .byte $C3   ; 
- D 0 - I - 0x02C6F9 0B:86E9: 89        .byte $89   ; 
- D 0 - I - 0x02C6FA 0B:86EA: C6        .byte $C6   ; 
- D 0 - I - 0x02C6FB 0B:86EB: 8B        .byte $8B   ; 
- D 0 - I - 0x02C6FC 0B:86EC: 83        .byte $83   ; 
- D 0 - I - 0x02C6FD 0B:86ED: 8B        .byte $8B   ; 
- D 0 - I - 0x02C6FE 0B:86EE: 8B        .byte $8B   ; 
- D 0 - I - 0x02C6FF 0B:86EF: 91        .byte $91   ; 
- D 0 - I - 0x02C700 0B:86F0: C3        .byte $C3   ; 
- D 0 - I - 0x02C701 0B:86F1: 89        .byte $89   ; 
- D 0 - I - 0x02C702 0B:86F2: 81        .byte $81   ; 
- D 0 - I - 0x02C703 0B:86F3: 91        .byte $91   ; 
- D 0 - I - 0x02C704 0B:86F4: C4        .byte $C4   ; 
- D 0 - I - 0x02C705 0B:86F5: 8C        .byte $8C   ; 
- D 0 - I - 0x02C706 0B:86F6: 08        .byte $08   ; 
- D 0 - I - 0x02C707 0B:86F7: 00        .byte $00   ; 
- D 0 - I - 0x02C708 0B:86F8: 04        .byte $04   ; 
- D 0 - I - 0x02C709 0B:86F9: 92        .byte $92   ; 
- D 0 - I - 0x02C70A 0B:86FA: 81        .byte $81   ; 
- D 0 - I - 0x02C70B 0B:86FB: AF        .byte $AF   ; 
- D 0 - I - 0x02C70C 0B:86FC: 07        .byte $07   ; 
- D 0 - I - 0x02C70D 0B:86FD: 92        .byte $92   ; 
- D 0 - I - 0x02C70E 0B:86FE: 84        .byte $84   ; 
- D 0 - I - 0x02C70F 0B:86FF: B0        .byte $B0   ; 
- D 0 - I - 0x02C710 0B:8700: B1        .byte $B1   ; 
- D 0 - I - 0x02C711 0B:8701: B0        .byte $B0   ; 
- D 0 - I - 0x02C712 0B:8702: B1        .byte $B1   ; 
- D 0 - I - 0x02C713 0B:8703: 10        .byte $10   ; 
- D 0 - I - 0x02C714 0B:8704: 92        .byte $92   ; 
- D 0 - I - 0x02C715 0B:8705: 8A        .byte $8A   ; 
- D 0 - I - 0x02C716 0B:8706: 97        .byte $97   ; 
- D 0 - I - 0x02C717 0B:8707: 97        .byte $97   ; 
- D 0 - I - 0x02C718 0B:8708: B2        .byte $B2   ; 
- D 0 - I - 0x02C719 0B:8709: B3        .byte $B3   ; 
- D 0 - I - 0x02C71A 0B:870A: B2        .byte $B2   ; 
- D 0 - I - 0x02C71B 0B:870B: B3        .byte $B3   ; 
- D 0 - I - 0x02C71C 0B:870C: 97        .byte $97   ; 
- D 0 - I - 0x02C71D 0B:870D: 98        .byte $98   ; 
- D 0 - I - 0x02C71E 0B:870E: 97        .byte $97   ; 
- D 0 - I - 0x02C71F 0B:870F: A8        .byte $A8   ; 
- D 0 - I - 0x02C720 0B:8710: 03        .byte $03   ; 
- D 0 - I - 0x02C721 0B:8711: 97        .byte $97   ; 
- D 0 - I - 0x02C722 0B:8712: 84        .byte $84   ; 
- D 0 - I - 0x02C723 0B:8713: B4        .byte $B4   ; 
- D 0 - I - 0x02C724 0B:8714: B5        .byte $B5   ; 
- D 0 - I - 0x02C725 0B:8715: B4        .byte $B4   ; 
- D 0 - I - 0x02C726 0B:8716: B5        .byte $B5   ; 
- D 0 - I - 0x02C727 0B:8717: 0F        .byte $0F   ; 
- D 0 - I - 0x02C728 0B:8718: 97        .byte $97   ; 
- D 0 - I - 0x02C729 0B:8719: 03        .byte $03   ; 
- D 0 - I - 0x02C72A 0B:871A: 9C        .byte $9C   ; 
- D 0 - I - 0x02C72B 0B:871B: 83        .byte $83   ; 
- D 0 - I - 0x02C72C 0B:871C: B6        .byte $B6   ; 
- D 0 - I - 0x02C72D 0B:871D: 9C        .byte $9C   ; 
- D 0 - I - 0x02C72E 0B:871E: B6        .byte $B6   ; 
- D 0 - I - 0x02C72F 0B:871F: 09        .byte $09   ; 
- D 0 - I - 0x02C730 0B:8720: 9C        .byte $9C   ; 
- D 0 - I - 0x02C731 0B:8721: 84        .byte $84   ; 
- D 0 - I - 0x02C732 0B:8722: B7        .byte $B7   ; 
- D 0 - I - 0x02C733 0B:8723: BA        .byte $BA   ; 
- D 0 - I - 0x02C734 0B:8724: B7        .byte $B7   ; 
- D 0 - I - 0x02C735 0B:8725: BA        .byte $BA   ; 
- D 0 - I - 0x02C736 0B:8726: 0D        .byte $0D   ; 
- D 0 - I - 0x02C737 0B:8727: 9C        .byte $9C   ; 
- D 0 - I - 0x02C738 0B:8728: 05        .byte $05   ; 
- D 0 - I - 0x02C739 0B:8729: 03        .byte $03   ; 
- D 0 - I - 0x02C73A 0B:872A: 82        .byte $82   ; 
- D 0 - I - 0x02C73B 0B:872B: B8        .byte $B8   ; 
- D 0 - I - 0x02C73C 0B:872C: B9        .byte $B9   ; 
- D 0 - I - 0x02C73D 0B:872D: 04        .byte $04   ; 
- D 0 - I - 0x02C73E 0B:872E: 03        .byte $03   ; 
- D 0 - I - 0x02C73F 0B:872F: 8C        .byte $8C   ; 
- D 0 - I - 0x02C740 0B:8730: A4        .byte $A4   ; 
- D 0 - I - 0x02C741 0B:8731: 03        .byte $03   ; 
- D 0 - I - 0x02C742 0B:8732: 03        .byte $03   ; 
- D 0 - I - 0x02C743 0B:8733: A3        .byte $A3   ; 
- D 0 - I - 0x02C744 0B:8734: 03        .byte $03   ; 
- D 0 - I - 0x02C745 0B:8735: BB        .byte $BB   ; 
- D 0 - I - 0x02C746 0B:8736: BC        .byte $BC   ; 
- D 0 - I - 0x02C747 0B:8737: BB        .byte $BB   ; 
- D 0 - I - 0x02C748 0B:8738: BC        .byte $BC   ; 
- D 0 - I - 0x02C749 0B:8739: 03        .byte $03   ; 
- D 0 - I - 0x02C74A 0B:873A: 03        .byte $03   ; 
- D 0 - I - 0x02C74B 0B:873B: A4        .byte $A4   ; 
- D 0 - I - 0x02C74C 0B:873C: 09        .byte $09   ; 
- D 0 - I - 0x02C74D 0B:873D: 03        .byte $03   ; 
- D 0 - I - 0x02C74E 0B:873E: 7E        .byte $7E   ; 
- D 0 - I - 0x02C74F 0B:873F: 00        .byte $00   ; 
- D 0 - I - 0x02C750 0B:8740: 42        .byte $42   ; 
- D 0 - I - 0x02C751 0B:8741: 00        .byte $00   ; 
- D 0 - I - 0x02C752 0B:8742: 08        .byte $08   ; 
- D 0 - I - 0x02C753 0B:8743: FF        .byte $FF   ; 
- D 0 - I - 0x02C754 0B:8744: 06        .byte $06   ; 
- D 0 - I - 0x02C755 0B:8745: AF        .byte $AF   ; 
- D 0 - I - 0x02C756 0B:8746: 82        .byte $82   ; 
- D 0 - I - 0x02C757 0B:8747: FF        .byte $FF   ; 
- D 0 - I - 0x02C758 0B:8748: FF        .byte $FF   ; 
- D 0 - I - 0x02C759 0B:8749: 06        .byte $06   ; 
- D 0 - I - 0x02C75A 0B:874A: AA        .byte $AA   ; 
- D 0 - I - 0x02C75B 0B:874B: 84        .byte $84   ; 
- D 0 - I - 0x02C75C 0B:874C: FF        .byte $FF   ; 
- D 0 - I - 0x02C75D 0B:874D: FF        .byte $FF   ; 
- D 0 - I - 0x02C75E 0B:874E: AA        .byte $AA   ; 
- D 0 - I - 0x02C75F 0B:874F: AA        .byte $AA   ; 
- D 0 - I - 0x02C760 0B:8750: 04        .byte $04   ; 
- D 0 - I - 0x02C761 0B:8751: FA        .byte $FA   ; 
- D 0 - I - 0x02C762 0B:8752: 82        .byte $82   ; 
- D 0 - I - 0x02C763 0B:8753: FF        .byte $FF   ; 
- D 0 - I - 0x02C764 0B:8754: FF        .byte $FF   ; 
- D 0 - I - 0x02C765 0B:8755: 06        .byte $06   ; 
- D 0 - I - 0x02C766 0B:8756: 55        .byte $55   ; 
- D 0 - I - 0x02C767 0B:8757: 82        .byte $82   ; 
- D 0 - I - 0x02C768 0B:8758: FF        .byte $FF   ; 
- D 0 - I - 0x02C769 0B:8759: FF        .byte $FF   ; 
- D 0 - I - 0x02C76A 0B:875A: 08        .byte $08   ; 
- D 0 - I - 0x02C76B 0B:875B: 00        .byte $00   ; 
- D 0 - I - 0x02C76C 0B:875C: 10        .byte $10   ; 
- D 0 - I - 0x02C76D 0B:875D: FF        .byte $FF   ; 
- D 0 - I - 0x02C76E 0B:875E: FF        .byte $FF   ; 



.export _off003_0x02C76F_05
_off003_0x02C76F_05:
- D 0 - I - 0x02C76F 0B:875F: 00        .byte $00   ; 
- D 0 - I - 0x02C770 0B:8760: 20        .byte $20   ; 
- D 0 - I - 0x02C771 0B:8761: 7E        .byte $7E   ; 
- D 0 - I - 0x02C772 0B:8762: 00        .byte $00   ; 
- D 0 - I - 0x02C773 0B:8763: 42        .byte $42   ; 
- D 0 - I - 0x02C774 0B:8764: 00        .byte $00   ; 
- D 0 - I - 0x02C775 0B:8765: 83        .byte $83   ; 
- D 0 - I - 0x02C776 0B:8766: 01        .byte $01   ; 
- D 0 - I - 0x02C777 0B:8767: 02        .byte $02   ; 
- D 0 - I - 0x02C778 0B:8768: 00        .byte $00   ; 
- D 0 - I - 0x02C779 0B:8769: C4        .byte $C4   ; 
- D 0 - I - 0x02C77A 0B:876A: 03        .byte $03   ; 
- D 0 - I - 0x02C77B 0B:876B: 03        .byte $03   ; 
- D 0 - I - 0x02C77C 0B:876C: 00        .byte $00   ; 
- D 0 - I - 0x02C77D 0B:876D: C4        .byte $C4   ; 
- D 0 - I - 0x02C77E 0B:876E: 03        .byte $03   ; 
- D 0 - I - 0x02C77F 0B:876F: 81        .byte $81   ; 
- D 0 - I - 0x02C780 0B:8770: 00        .byte $00   ; 
- D 0 - I - 0x02C781 0B:8771: C3        .byte $C3   ; 
- D 0 - I - 0x02C782 0B:8772: 00        .byte $00   ; 
- D 0 - I - 0x02C783 0B:8773: 82        .byte $82   ; 
- D 0 - I - 0x02C784 0B:8774: 00        .byte $00   ; 
- D 0 - I - 0x02C785 0B:8775: 00        .byte $00   ; 
- D 0 - I - 0x02C786 0B:8776: C5        .byte $C5   ; 
- D 0 - I - 0x02C787 0B:8777: 35        .byte $35   ; 
- D 0 - I - 0x02C788 0B:8778: 05        .byte $05   ; 
- D 0 - I - 0x02C789 0B:8779: 39        .byte $39   ; 
- D 0 - I - 0x02C78A 0B:877A: 82        .byte $82   ; 
- D 0 - I - 0x02C78B 0B:877B: 3A        .byte $3A   ; 
- D 0 - I - 0x02C78C 0B:877C: 00        .byte $00   ; 
- D 0 - I - 0x02C78D 0B:877D: CA        .byte $CA   ; 
- D 0 - I - 0x02C78E 0B:877E: 07        .byte $07   ; 
- D 0 - I - 0x02C78F 0B:877F: C4        .byte $C4   ; 
- D 0 - I - 0x02C790 0B:8780: 0A        .byte $0A   ; 
- D 0 - I - 0x02C791 0B:8781: 84        .byte $84   ; 
- D 0 - I - 0x02C792 0B:8782: 11        .byte $11   ; 
- D 0 - I - 0x02C793 0B:8783: 12        .byte $12   ; 
- D 0 - I - 0x02C794 0B:8784: 07        .byte $07   ; 
- D 0 - I - 0x02C795 0B:8785: 08        .byte $08   ; 
- D 0 - I - 0x02C796 0B:8786: C7        .byte $C7   ; 
- D 0 - I - 0x02C797 0B:8787: 3B        .byte $3B   ; 
- D 0 - I - 0x02C798 0B:8788: 05        .byte $05   ; 
- D 0 - I - 0x02C799 0B:8789: 41        .byte $41   ; 
- D 0 - I - 0x02C79A 0B:878A: 82        .byte $82   ; 
- D 0 - I - 0x02C79B 0B:878B: 42        .byte $42   ; 
- D 0 - I - 0x02C79C 0B:878C: 3B        .byte $3B   ; 
- D 0 - I - 0x02C79D 0B:878D: CB        .byte $CB   ; 
- D 0 - I - 0x02C79E 0B:878E: 13        .byte $13   ; 
- D 0 - I - 0x02C79F 0B:878F: C3        .byte $C3   ; 
- D 0 - I - 0x02C7A0 0B:8790: 17        .byte $17   ; 
- D 0 - I - 0x02C7A1 0B:8791: C4        .byte $C4   ; 
- D 0 - I - 0x02C7A2 0B:8792: 11        .byte $11   ; 
- D 0 - I - 0x02C7A3 0B:8793: C3        .byte $C3   ; 
- D 0 - I - 0x02C7A4 0B:8794: 43        .byte $43   ; 
- D 0 - I - 0x02C7A5 0B:8795: 83        .byte $83   ; 
- D 0 - I - 0x02C7A6 0B:8796: 38        .byte $38   ; 
- D 0 - I - 0x02C7A7 0B:8797: 46        .byte $46   ; 
- D 0 - I - 0x02C7A8 0B:8798: 47        .byte $47   ; 
- D 0 - I - 0x02C7A9 0B:8799: 04        .byte $04   ; 
- D 0 - I - 0x02C7AA 0B:879A: 00        .byte $00   ; 
- D 0 - I - 0x02C7AB 0B:879B: C4        .byte $C4   ; 
- D 0 - I - 0x02C7AC 0B:879C: 48        .byte $48   ; 
- D 0 - I - 0x02C7AD 0B:879D: 82        .byte $82   ; 
- D 0 - I - 0x02C7AE 0B:879E: 07        .byte $07   ; 
- D 0 - I - 0x02C7AF 0B:879F: 08        .byte $08   ; 
- D 0 - I - 0x02C7B0 0B:87A0: C4        .byte $C4   ; 
- D 0 - I - 0x02C7B1 0B:87A1: 1E        .byte $1E   ; 
- D 0 - I - 0x02C7B2 0B:87A2: 03        .byte $03   ; 
- D 0 - I - 0x02C7B3 0B:87A3: 1A        .byte $1A   ; 
- D 0 - I - 0x02C7B4 0B:87A4: 81        .byte $81   ; 
- D 0 - I - 0x02C7B5 0B:87A5: 1E        .byte $1E   ; 
- D 0 - I - 0x02C7B6 0B:87A6: C3        .byte $C3   ; 
- D 0 - I - 0x02C7B7 0B:87A7: 22        .byte $22   ; 
- D 0 - I - 0x02C7B8 0B:87A8: 89        .byte $89   ; 
- D 0 - I - 0x02C7B9 0B:87A9: 1A        .byte $1A   ; 
- D 0 - I - 0x02C7BA 0B:87AA: 11        .byte $11   ; 
- D 0 - I - 0x02C7BB 0B:87AB: 12        .byte $12   ; 
- D 0 - I - 0x02C7BC 0B:87AC: 07        .byte $07   ; 
- D 0 - I - 0x02C7BD 0B:87AD: 08        .byte $08   ; 
- D 0 - I - 0x02C7BE 0B:87AE: 00        .byte $00   ; 
- D 0 - I - 0x02C7BF 0B:87AF: 00        .byte $00   ; 
- D 0 - I - 0x02C7C0 0B:87B0: 3F        .byte $3F   ; 
- D 0 - I - 0x02C7C1 0B:87B1: 40        .byte $40   ; 
- D 0 - I - 0x02C7C2 0B:87B2: C4        .byte $C4   ; 
- D 0 - I - 0x02C7C3 0B:87B3: 4C        .byte $4C   ; 
- D 0 - I - 0x02C7C4 0B:87B4: 82        .byte $82   ; 
- D 0 - I - 0x02C7C5 0B:87B5: 00        .byte $00   ; 
- D 0 - I - 0x02C7C6 0B:87B6: 00        .byte $00   ; 
- D 0 - I - 0x02C7C7 0B:87B7: C4        .byte $C4   ; 
- D 0 - I - 0x02C7C8 0B:87B8: 50        .byte $50   ; 
- D 0 - I - 0x02C7C9 0B:87B9: 82        .byte $82   ; 
- D 0 - I - 0x02C7CA 0B:87BA: 07        .byte $07   ; 
- D 0 - I - 0x02C7CB 0B:87BB: 08        .byte $08   ; 
- D 0 - I - 0x02C7CC 0B:87BC: 0C        .byte $0C   ; 
- D 0 - I - 0x02C7CD 0B:87BD: 1A        .byte $1A   ; 
- D 0 - I - 0x02C7CE 0B:87BE: 8A        .byte $8A   ; 
- D 0 - I - 0x02C7CF 0B:87BF: 11        .byte $11   ; 
- D 0 - I - 0x02C7D0 0B:87C0: 12        .byte $12   ; 
- D 0 - I - 0x02C7D1 0B:87C1: 07        .byte $07   ; 
- D 0 - I - 0x02C7D2 0B:87C2: 08        .byte $08   ; 
- D 0 - I - 0x02C7D3 0B:87C3: 00        .byte $00   ; 
- D 0 - I - 0x02C7D4 0B:87C4: 54        .byte $54   ; 
- D 0 - I - 0x02C7D5 0B:87C5: 55        .byte $55   ; 
- D 0 - I - 0x02C7D6 0B:87C6: 00        .byte $00   ; 
- D 0 - I - 0x02C7D7 0B:87C7: 00        .byte $00   ; 
- D 0 - I - 0x02C7D8 0B:87C8: 56        .byte $56   ; 
- D 0 - I - 0x02C7D9 0B:87C9: 08        .byte $08   ; 
- D 0 - I - 0x02C7DA 0B:87CA: 00        .byte $00   ; 
- D 0 - I - 0x02C7DB 0B:87CB: C3        .byte $C3   ; 
- D 0 - I - 0x02C7DC 0B:87CC: 25        .byte $25   ; 
- D 0 - I - 0x02C7DD 0B:87CD: 0B        .byte $0B   ; 
- D 0 - I - 0x02C7DE 0B:87CE: 27        .byte $27   ; 
- D 0 - I - 0x02C7DF 0B:87CF: 89        .byte $89   ; 
- D 0 - I - 0x02C7E0 0B:87D0: 28        .byte $28   ; 
- D 0 - I - 0x02C7E1 0B:87D1: 29        .byte $29   ; 
- D 0 - I - 0x02C7E2 0B:87D2: 25        .byte $25   ; 
- D 0 - I - 0x02C7E3 0B:87D3: 26        .byte $26   ; 
- D 0 - I - 0x02C7E4 0B:87D4: 57        .byte $57   ; 
- D 0 - I - 0x02C7E5 0B:87D5: 58        .byte $58   ; 
- D 0 - I - 0x02C7E6 0B:87D6: 57        .byte $57   ; 
- D 0 - I - 0x02C7E7 0B:87D7: 00        .byte $00   ; 
- D 0 - I - 0x02C7E8 0B:87D8: 59        .byte $59   ; 
- D 0 - I - 0x02C7E9 0B:87D9: 09        .byte $09   ; 
- D 0 - I - 0x02C7EA 0B:87DA: 00        .byte $00   ; 
- D 0 - I - 0x02C7EB 0B:87DB: 83        .byte $83   ; 
- D 0 - I - 0x02C7EC 0B:87DC: 07        .byte $07   ; 
- D 0 - I - 0x02C7ED 0B:87DD: 08        .byte $08   ; 
- D 0 - I - 0x02C7EE 0B:87DE: 1A        .byte $1A   ; 
- D 0 - I - 0x02C7EF 0B:87DF: C3        .byte $C3   ; 
- D 0 - I - 0x02C7F0 0B:87E0: 2A        .byte $2A   ; 
- D 0 - I - 0x02C7F1 0B:87E1: 05        .byte $05   ; 
- D 0 - I - 0x02C7F2 0B:87E2: 1A        .byte $1A   ; 
- D 0 - I - 0x02C7F3 0B:87E3: 8C        .byte $8C   ; 
- D 0 - I - 0x02C7F4 0B:87E4: 2A        .byte $2A   ; 
- D 0 - I - 0x02C7F5 0B:87E5: 2B        .byte $2B   ; 
- D 0 - I - 0x02C7F6 0B:87E6: 1A        .byte $1A   ; 
- D 0 - I - 0x02C7F7 0B:87E7: 11        .byte $11   ; 
- D 0 - I - 0x02C7F8 0B:87E8: 12        .byte $12   ; 
- D 0 - I - 0x02C7F9 0B:87E9: 07        .byte $07   ; 
- D 0 - I - 0x02C7FA 0B:87EA: 08        .byte $08   ; 
- D 0 - I - 0x02C7FB 0B:87EB: 58        .byte $58   ; 
- D 0 - I - 0x02C7FC 0B:87EC: 57        .byte $57   ; 
- D 0 - I - 0x02C7FD 0B:87ED: 00        .byte $00   ; 
- D 0 - I - 0x02C7FE 0B:87EE: 5A        .byte $5A   ; 
- D 0 - I - 0x02C7FF 0B:87EF: 5B        .byte $5B   ; 
- D 0 - I - 0x02C800 0B:87F0: 09        .byte $09   ; 
- D 0 - I - 0x02C801 0B:87F1: 00        .byte $00   ; 
- D 0 - I - 0x02C802 0B:87F2: 85        .byte $85   ; 
- D 0 - I - 0x02C803 0B:87F3: 2D        .byte $2D   ; 
- D 0 - I - 0x02C804 0B:87F4: 14        .byte $14   ; 
- D 0 - I - 0x02C805 0B:87F5: 1A        .byte $1A   ; 
- D 0 - I - 0x02C806 0B:87F6: 2E        .byte $2E   ; 
- D 0 - I - 0x02C807 0B:87F7: 2F        .byte $2F   ; 
- D 0 - I - 0x02C808 0B:87F8: 03        .byte $03   ; 
- D 0 - I - 0x02C809 0B:87F9: 1A        .byte $1A   ; 
- D 0 - I - 0x02C80A 0B:87FA: 8E        .byte $8E   ; 
- D 0 - I - 0x02C80B 0B:87FB: 2A        .byte $2A   ; 
- D 0 - I - 0x02C80C 0B:87FC: 2B        .byte $2B   ; 
- D 0 - I - 0x02C80D 0B:87FD: 1A        .byte $1A   ; 
- D 0 - I - 0x02C80E 0B:87FE: 2E        .byte $2E   ; 
- D 0 - I - 0x02C80F 0B:87FF: 2F        .byte $2F   ; 
- D 0 - I - 0x02C810 0B:8800: 1A        .byte $1A   ; 
- D 0 - I - 0x02C811 0B:8801: 11        .byte $11   ; 
- D 0 - I - 0x02C812 0B:8802: 12        .byte $12   ; 
- D 0 - I - 0x02C813 0B:8803: 2D        .byte $2D   ; 
- D 0 - I - 0x02C814 0B:8804: 14        .byte $14   ; 
- D 0 - I - 0x02C815 0B:8805: 57        .byte $57   ; 
- D 0 - I - 0x02C816 0B:8806: 58        .byte $58   ; 
- D 0 - I - 0x02C817 0B:8807: 00        .byte $00   ; 
- D 0 - I - 0x02C818 0B:8808: 5C        .byte $5C   ; 
- D 0 - I - 0x02C819 0B:8809: 0A        .byte $0A   ; 
- D 0 - I - 0x02C81A 0B:880A: 00        .byte $00   ; 
- D 0 - I - 0x02C81B 0B:880B: 82        .byte $82   ; 
- D 0 - I - 0x02C81C 0B:880C: 07        .byte $07   ; 
- D 0 - I - 0x02C81D 0B:880D: 08        .byte $08   ; 
- D 0 - I - 0x02C81E 0B:880E: 06        .byte $06   ; 
- D 0 - I - 0x02C81F 0B:880F: 1A        .byte $1A   ; 
- D 0 - I - 0x02C820 0B:8810: 82        .byte $82   ; 
- D 0 - I - 0x02C821 0B:8811: 2E        .byte $2E   ; 
- D 0 - I - 0x02C822 0B:8812: 2F        .byte $2F   ; 
- D 0 - I - 0x02C823 0B:8813: 04        .byte $04   ; 
- D 0 - I - 0x02C824 0B:8814: 1A        .byte $1A   ; 
- D 0 - I - 0x02C825 0B:8815: 84        .byte $84   ; 
- D 0 - I - 0x02C826 0B:8816: 11        .byte $11   ; 
- D 0 - I - 0x02C827 0B:8817: 12        .byte $12   ; 
- D 0 - I - 0x02C828 0B:8818: 07        .byte $07   ; 
- D 0 - I - 0x02C829 0B:8819: 08        .byte $08   ; 
- D 0 - I - 0x02C82A 0B:881A: C4        .byte $C4   ; 
- D 0 - I - 0x02C82B 0B:881B: 5D        .byte $5D   ; 
- D 0 - I - 0x02C82C 0B:881C: 0A        .byte $0A   ; 
- D 0 - I - 0x02C82D 0B:881D: 00        .byte $00   ; 
- D 0 - I - 0x02C82E 0B:881E: C4        .byte $C4   ; 
- D 0 - I - 0x02C82F 0B:881F: 30        .byte $30   ; 
- D 0 - I - 0x02C830 0B:8820: 8F        .byte $8F   ; 
- D 0 - I - 0x02C831 0B:8821: 32        .byte $32   ; 
- D 0 - I - 0x02C832 0B:8822: 33        .byte $33   ; 
- D 0 - I - 0x02C833 0B:8823: 32        .byte $32   ; 
- D 0 - I - 0x02C834 0B:8824: 33        .byte $33   ; 
- D 0 - I - 0x02C835 0B:8825: 32        .byte $32   ; 
- D 0 - I - 0x02C836 0B:8826: 33        .byte $33   ; 
- D 0 - I - 0x02C837 0B:8827: 32        .byte $32   ; 
- D 0 - I - 0x02C838 0B:8828: 33        .byte $33   ; 
- D 0 - I - 0x02C839 0B:8829: 32        .byte $32   ; 
- D 0 - I - 0x02C83A 0B:882A: 33        .byte $33   ; 
- D 0 - I - 0x02C83B 0B:882B: 32        .byte $32   ; 
- D 0 - I - 0x02C83C 0B:882C: 34        .byte $34   ; 
- D 0 - I - 0x02C83D 0B:882D: 30        .byte $30   ; 
- D 0 - I - 0x02C83E 0B:882E: 31        .byte $31   ; 
- D 0 - I - 0x02C83F 0B:882F: 61        .byte $61   ; 
- D 0 - I - 0x02C840 0B:8830: C3        .byte $C3   ; 
- D 0 - I - 0x02C841 0B:8831: 61        .byte $61   ; 
- D 0 - I - 0x02C842 0B:8832: 0A        .byte $0A   ; 
- D 0 - I - 0x02C843 0B:8833: 00        .byte $00   ; 
- D 0 - I - 0x02C844 0B:8834: C6        .byte $C6   ; 
- D 0 - I - 0x02C845 0B:8835: 81        .byte $81   ; 
- D 0 - I - 0x02C846 0B:8836: C6        .byte $C6   ; 
- D 0 - I - 0x02C847 0B:8837: 81        .byte $81   ; 
- D 0 - I - 0x02C848 0B:8838: C6        .byte $C6   ; 
- D 0 - I - 0x02C849 0B:8839: 81        .byte $81   ; 
- D 0 - I - 0x02C84A 0B:883A: C6        .byte $C6   ; 
- D 0 - I - 0x02C84B 0B:883B: 81        .byte $81   ; 
- D 0 - I - 0x02C84C 0B:883C: C6        .byte $C6   ; 
- D 0 - I - 0x02C84D 0B:883D: 81        .byte $81   ; 
- D 0 - I - 0x02C84E 0B:883E: 9E        .byte $9E   ; 
- D 0 - I - 0x02C84F 0B:883F: 84        .byte $84   ; 
- D 0 - I - 0x02C850 0B:8840: 85        .byte $85   ; 
- D 0 - I - 0x02C851 0B:8841: 87        .byte $87   ; 
- D 0 - I - 0x02C852 0B:8842: 88        .byte $88   ; 
- D 0 - I - 0x02C853 0B:8843: 87        .byte $87   ; 
- D 0 - I - 0x02C854 0B:8844: 89        .byte $89   ; 
- D 0 - I - 0x02C855 0B:8845: 87        .byte $87   ; 
- D 0 - I - 0x02C856 0B:8846: 88        .byte $88   ; 
- D 0 - I - 0x02C857 0B:8847: 87        .byte $87   ; 
- D 0 - I - 0x02C858 0B:8848: 89        .byte $89   ; 
- D 0 - I - 0x02C859 0B:8849: 87        .byte $87   ; 
- D 0 - I - 0x02C85A 0B:884A: 88        .byte $88   ; 
- D 0 - I - 0x02C85B 0B:884B: 87        .byte $87   ; 
- D 0 - I - 0x02C85C 0B:884C: 89        .byte $89   ; 
- D 0 - I - 0x02C85D 0B:884D: 87        .byte $87   ; 
- D 0 - I - 0x02C85E 0B:884E: 88        .byte $88   ; 
- D 0 - I - 0x02C85F 0B:884F: 87        .byte $87   ; 
- D 0 - I - 0x02C860 0B:8850: 89        .byte $89   ; 
- D 0 - I - 0x02C861 0B:8851: 87        .byte $87   ; 
- D 0 - I - 0x02C862 0B:8852: 88        .byte $88   ; 
- D 0 - I - 0x02C863 0B:8853: 87        .byte $87   ; 
- D 0 - I - 0x02C864 0B:8854: 89        .byte $89   ; 
- D 0 - I - 0x02C865 0B:8855: 87        .byte $87   ; 
- D 0 - I - 0x02C866 0B:8856: 88        .byte $88   ; 
- D 0 - I - 0x02C867 0B:8857: 87        .byte $87   ; 
- D 0 - I - 0x02C868 0B:8858: 89        .byte $89   ; 
- D 0 - I - 0x02C869 0B:8859: 87        .byte $87   ; 
- D 0 - I - 0x02C86A 0B:885A: 88        .byte $88   ; 
- D 0 - I - 0x02C86B 0B:885B: 87        .byte $87   ; 
- D 0 - I - 0x02C86C 0B:885C: 89        .byte $89   ; 
- D 0 - I - 0x02C86D 0B:885D: C3        .byte $C3   ; 
- D 0 - I - 0x02C86E 0B:885E: 87        .byte $87   ; 
- D 0 - I - 0x02C86F 0B:885F: 81        .byte $81   ; 
- D 0 - I - 0x02C870 0B:8860: 87        .byte $87   ; 
- D 0 - I - 0x02C871 0B:8861: C4        .byte $C4   ; 
- D 0 - I - 0x02C872 0B:8862: 8A        .byte $8A   ; 
- D 0 - I - 0x02C873 0B:8863: C4        .byte $C4   ; 
- D 0 - I - 0x02C874 0B:8864: 8A        .byte $8A   ; 
- D 0 - I - 0x02C875 0B:8865: C4        .byte $C4   ; 
- D 0 - I - 0x02C876 0B:8866: 8A        .byte $8A   ; 
- D 0 - I - 0x02C877 0B:8867: C4        .byte $C4   ; 
- D 0 - I - 0x02C878 0B:8868: 8A        .byte $8A   ; 
- D 0 - I - 0x02C879 0B:8869: C4        .byte $C4   ; 
- D 0 - I - 0x02C87A 0B:886A: 8A        .byte $8A   ; 
- D 0 - I - 0x02C87B 0B:886B: C4        .byte $C4   ; 
- D 0 - I - 0x02C87C 0B:886C: 8A        .byte $8A   ; 
- D 0 - I - 0x02C87D 0B:886D: C4        .byte $C4   ; 
- D 0 - I - 0x02C87E 0B:886E: 8A        .byte $8A   ; 
- D 0 - I - 0x02C87F 0B:886F: C8        .byte $C8   ; 
- D 0 - I - 0x02C880 0B:8870: 8A        .byte $8A   ; 
- D 0 - I - 0x02C881 0B:8871: C4        .byte $C4   ; 
- D 0 - I - 0x02C882 0B:8872: 8E        .byte $8E   ; 
- D 0 - I - 0x02C883 0B:8873: C4        .byte $C4   ; 
- D 0 - I - 0x02C884 0B:8874: 8E        .byte $8E   ; 
- D 0 - I - 0x02C885 0B:8875: C4        .byte $C4   ; 
- D 0 - I - 0x02C886 0B:8876: 8E        .byte $8E   ; 
- D 0 - I - 0x02C887 0B:8877: C4        .byte $C4   ; 
- D 0 - I - 0x02C888 0B:8878: 8E        .byte $8E   ; 
- D 0 - I - 0x02C889 0B:8879: C4        .byte $C4   ; 
- D 0 - I - 0x02C88A 0B:887A: 8E        .byte $8E   ; 
- D 0 - I - 0x02C88B 0B:887B: C4        .byte $C4   ; 
- D 0 - I - 0x02C88C 0B:887C: 8E        .byte $8E   ; 
- D 0 - I - 0x02C88D 0B:887D: C6        .byte $C6   ; 
- D 0 - I - 0x02C88E 0B:887E: 8E        .byte $8E   ; 
- D 0 - I - 0x02C88F 0B:887F: 83        .byte $83   ; 
- D 0 - I - 0x02C890 0B:8880: 92        .byte $92   ; 
- D 0 - I - 0x02C891 0B:8881: 94        .byte $94   ; 
- D 0 - I - 0x02C892 0B:8882: 92        .byte $92   ; 
- D 0 - I - 0x02C893 0B:8883: C3        .byte $C3   ; 
- D 0 - I - 0x02C894 0B:8884: 95        .byte $95   ; 
- D 0 - I - 0x02C895 0B:8885: 82        .byte $82   ; 
- D 0 - I - 0x02C896 0B:8886: 92        .byte $92   ; 
- D 0 - I - 0x02C897 0B:8887: 92        .byte $92   ; 
- D 0 - I - 0x02C898 0B:8888: C4        .byte $C4   ; 
- D 0 - I - 0x02C899 0B:8889: 98        .byte $98   ; 
- D 0 - I - 0x02C89A 0B:888A: 92        .byte $92   ; 
- D 0 - I - 0x02C89B 0B:888B: 94        .byte $94   ; 
- D 0 - I - 0x02C89C 0B:888C: 92        .byte $92   ; 
- D 0 - I - 0x02C89D 0B:888D: 95        .byte $95   ; 
- D 0 - I - 0x02C89E 0B:888E: 96        .byte $96   ; 
- D 0 - I - 0x02C89F 0B:888F: 92        .byte $92   ; 
- D 0 - I - 0x02C8A0 0B:8890: A1        .byte $A1   ; 
- D 0 - I - 0x02C8A1 0B:8891: 9A        .byte $9A   ; 
- D 0 - I - 0x02C8A2 0B:8892: 94        .byte $94   ; 
- D 0 - I - 0x02C8A3 0B:8893: 92        .byte $92   ; 
- D 0 - I - 0x02C8A4 0B:8894: 95        .byte $95   ; 
- D 0 - I - 0x02C8A5 0B:8895: 96        .byte $96   ; 
- D 0 - I - 0x02C8A6 0B:8896: 92        .byte $92   ; 
- D 0 - I - 0x02C8A7 0B:8897: 97        .byte $97   ; 
- D 0 - I - 0x02C8A8 0B:8898: 92        .byte $92   ; 
- D 0 - I - 0x02C8A9 0B:8899: A2        .byte $A2   ; 
- D 0 - I - 0x02C8AA 0B:889A: 92        .byte $92   ; 
- D 0 - I - 0x02C8AB 0B:889B: 94        .byte $94   ; 
- D 0 - I - 0x02C8AC 0B:889C: 92        .byte $92   ; 
- D 0 - I - 0x02C8AD 0B:889D: 04        .byte $04   ; 
- D 0 - I - 0x02C8AE 0B:889E: 9C        .byte $9C   ; 
- D 0 - I - 0x02C8AF 0B:889F: 81        .byte $81   ; 
- D 0 - I - 0x02C8B0 0B:88A0: 9D        .byte $9D   ; 
- D 0 - I - 0x02C8B1 0B:88A1: 04        .byte $04   ; 
- D 0 - I - 0x02C8B2 0B:88A2: 9C        .byte $9C   ; 
- D 0 - I - 0x02C8B3 0B:88A3: 82        .byte $82   ; 
- D 0 - I - 0x02C8B4 0B:88A4: 9E        .byte $9E   ; 
- D 0 - I - 0x02C8B5 0B:88A5: 9F        .byte $9F   ; 
- D 0 - I - 0x02C8B6 0B:88A6: 04        .byte $04   ; 
- D 0 - I - 0x02C8B7 0B:88A7: 9C        .byte $9C   ; 
- D 0 - I - 0x02C8B8 0B:88A8: 81        .byte $81   ; 
- D 0 - I - 0x02C8B9 0B:88A9: 9D        .byte $9D   ; 
- D 0 - I - 0x02C8BA 0B:88AA: 03        .byte $03   ; 
- D 0 - I - 0x02C8BB 0B:88AB: 9C        .byte $9C   ; 
- D 0 - I - 0x02C8BC 0B:88AC: 84        .byte $84   ; 
- D 0 - I - 0x02C8BD 0B:88AD: A3        .byte $A3   ; 
- D 0 - I - 0x02C8BE 0B:88AE: 9C        .byte $9C   ; 
- D 0 - I - 0x02C8BF 0B:88AF: 9C        .byte $9C   ; 
- D 0 - I - 0x02C8C0 0B:88B0: 9D        .byte $9D   ; 
- D 0 - I - 0x02C8C1 0B:88B1: 05        .byte $05   ; 
- D 0 - I - 0x02C8C2 0B:88B2: 9C        .byte $9C   ; 
- D 0 - I - 0x02C8C3 0B:88B3: 8B        .byte $8B   ; 
- D 0 - I - 0x02C8C4 0B:88B4: A4        .byte $A4   ; 
- D 0 - I - 0x02C8C5 0B:88B5: 9C        .byte $9C   ; 
- D 0 - I - 0x02C8C6 0B:88B6: 9C        .byte $9C   ; 
- D 0 - I - 0x02C8C7 0B:88B7: 9D        .byte $9D   ; 
- D 0 - I - 0x02C8C8 0B:88B8: 92        .byte $92   ; 
- D 0 - I - 0x02C8C9 0B:88B9: 92        .byte $92   ; 
- D 0 - I - 0x02C8CA 0B:88BA: A0        .byte $A0   ; 
- D 0 - I - 0x02C8CB 0B:88BB: 92        .byte $92   ; 
- D 0 - I - 0x02C8CC 0B:88BC: 95        .byte $95   ; 
- D 0 - I - 0x02C8CD 0B:88BD: 96        .byte $96   ; 
- D 0 - I - 0x02C8CE 0B:88BE: 92        .byte $92   ; 
- D 0 - I - 0x02C8CF 0B:88BF: C3        .byte $C3   ; 
- D 0 - I - 0x02C8D0 0B:88C0: 98        .byte $98   ; 
- D 0 - I - 0x02C8D1 0B:88C1: 8B        .byte $8B   ; 
- D 0 - I - 0x02C8D2 0B:88C2: 92        .byte $92   ; 
- D 0 - I - 0x02C8D3 0B:88C3: 94        .byte $94   ; 
- D 0 - I - 0x02C8D4 0B:88C4: 92        .byte $92   ; 
- D 0 - I - 0x02C8D5 0B:88C5: 95        .byte $95   ; 
- D 0 - I - 0x02C8D6 0B:88C6: 96        .byte $96   ; 
- D 0 - I - 0x02C8D7 0B:88C7: A0        .byte $A0   ; 
- D 0 - I - 0x02C8D8 0B:88C8: 92        .byte $92   ; 
- D 0 - I - 0x02C8D9 0B:88C9: 92        .byte $92   ; 
- D 0 - I - 0x02C8DA 0B:88CA: A1        .byte $A1   ; 
- D 0 - I - 0x02C8DB 0B:88CB: 9A        .byte $9A   ; 
- D 0 - I - 0x02C8DC 0B:88CC: 93        .byte $93   ; 
- D 0 - I - 0x02C8DD 0B:88CD: 03        .byte $03   ; 
- D 0 - I - 0x02C8DE 0B:88CE: 92        .byte $92   ; 
- D 0 - I - 0x02C8DF 0B:88CF: 88        .byte $88   ; 
- D 0 - I - 0x02C8E0 0B:88D0: 94        .byte $94   ; 
- D 0 - I - 0x02C8E1 0B:88D1: 92        .byte $92   ; 
- D 0 - I - 0x02C8E2 0B:88D2: 95        .byte $95   ; 
- D 0 - I - 0x02C8E3 0B:88D3: 96        .byte $96   ; 
- D 0 - I - 0x02C8E4 0B:88D4: A2        .byte $A2   ; 
- D 0 - I - 0x02C8E5 0B:88D5: 95        .byte $95   ; 
- D 0 - I - 0x02C8E6 0B:88D6: 96        .byte $96   ; 
- D 0 - I - 0x02C8E7 0B:88D7: A0        .byte $A0   ; 
- D 0 - I - 0x02C8E8 0B:88D8: 06        .byte $06   ; 
- D 0 - I - 0x02C8E9 0B:88D9: 9C        .byte $9C   ; 
- D 0 - I - 0x02C8EA 0B:88DA: 82        .byte $82   ; 
- D 0 - I - 0x02C8EB 0B:88DB: 9E        .byte $9E   ; 
- D 0 - I - 0x02C8EC 0B:88DC: 9F        .byte $9F   ; 
- D 0 - I - 0x02C8ED 0B:88DD: 04        .byte $04   ; 
- D 0 - I - 0x02C8EE 0B:88DE: 9C        .byte $9C   ; 
- D 0 - I - 0x02C8EF 0B:88DF: 81        .byte $81   ; 
- D 0 - I - 0x02C8F0 0B:88E0: 9D        .byte $9D   ; 
- D 0 - I - 0x02C8F1 0B:88E1: 05        .byte $05   ; 
- D 0 - I - 0x02C8F2 0B:88E2: 9C        .byte $9C   ; 
- D 0 - I - 0x02C8F3 0B:88E3: 81        .byte $81   ; 
- D 0 - I - 0x02C8F4 0B:88E4: A3        .byte $A3   ; 
- D 0 - I - 0x02C8F5 0B:88E5: 06        .byte $06   ; 
- D 0 - I - 0x02C8F6 0B:88E6: 9C        .byte $9C   ; 
- D 0 - I - 0x02C8F7 0B:88E7: 84        .byte $84   ; 
- D 0 - I - 0x02C8F8 0B:88E8: 9D        .byte $9D   ; 
- D 0 - I - 0x02C8F9 0B:88E9: 9C        .byte $9C   ; 
- D 0 - I - 0x02C8FA 0B:88EA: 9C        .byte $9C   ; 
- D 0 - I - 0x02C8FB 0B:88EB: A4        .byte $A4   ; 
- D 0 - I - 0x02C8FC 0B:88EC: 03        .byte $03   ; 
- D 0 - I - 0x02C8FD 0B:88ED: 9C        .byte $9C   ; 
- D 0 - I - 0x02C8FE 0B:88EE: 7E        .byte $7E   ; 
- D 0 - I - 0x02C8FF 0B:88EF: 00        .byte $00   ; 
- D 0 - I - 0x02C900 0B:88F0: 42        .byte $42   ; 
- D 0 - I - 0x02C901 0B:88F1: 00        .byte $00   ; 
- D 0 - I - 0x02C902 0B:88F2: 08        .byte $08   ; 
- D 0 - I - 0x02C903 0B:88F3: FF        .byte $FF   ; 
- D 0 - I - 0x02C904 0B:88F4: 81        .byte $81   ; 
- D 0 - I - 0x02C905 0B:88F5: 4F        .byte $4F   ; 
- D 0 - I - 0x02C906 0B:88F6: 03        .byte $03   ; 
- D 0 - I - 0x02C907 0B:88F7: 5F        .byte $5F   ; 
- D 0 - I - 0x02C908 0B:88F8: 81        .byte $81   ; 
- D 0 - I - 0x02C909 0B:88F9: 4F        .byte $4F   ; 
- D 0 - I - 0x02C90A 0B:88FA: 03        .byte $03   ; 
- D 0 - I - 0x02C90B 0B:88FB: 5F        .byte $5F   ; 
- D 0 - I - 0x02C90C 0B:88FC: 81        .byte $81   ; 
- D 0 - I - 0x02C90D 0B:88FD: 44        .byte $44   ; 
- D 0 - I - 0x02C90E 0B:88FE: 03        .byte $03   ; 
- D 0 - I - 0x02C90F 0B:88FF: 55        .byte $55   ; 
- D 0 - I - 0x02C910 0B:8900: 85        .byte $85   ; 
- D 0 - I - 0x02C911 0B:8901: 88        .byte $88   ; 
- D 0 - I - 0x02C912 0B:8902: A5        .byte $A5   ; 
- D 0 - I - 0x02C913 0B:8903: A6        .byte $A6   ; 
- D 0 - I - 0x02C914 0B:8904: A5        .byte $A5   ; 
- D 0 - I - 0x02C915 0B:8905: 44        .byte $44   ; 
- D 0 - I - 0x02C916 0B:8906: 03        .byte $03   ; 
- D 0 - I - 0x02C917 0B:8907: 55        .byte $55   ; 
- D 0 - I - 0x02C918 0B:8908: 81        .byte $81   ; 
- D 0 - I - 0x02C919 0B:8909: 88        .byte $88   ; 
- D 0 - I - 0x02C91A 0B:890A: 03        .byte $03   ; 
- D 0 - I - 0x02C91B 0B:890B: AA        .byte $AA   ; 
- D 0 - I - 0x02C91C 0B:890C: 08        .byte $08   ; 
- D 0 - I - 0x02C91D 0B:890D: 50        .byte $50   ; 
- D 0 - I - 0x02C91E 0B:890E: 08        .byte $08   ; 
- D 0 - I - 0x02C91F 0B:890F: 00        .byte $00   ; 
- D 0 - I - 0x02C920 0B:8910: 10        .byte $10   ; 
- D 0 - I - 0x02C921 0B:8911: FF        .byte $FF   ; 
- D 0 - I - 0x02C922 0B:8912: 7F        .byte $7F   ; 
- D 0 - I - 0x02C923 0B:8913: 00        .byte $00   ; 
- D 0 - I - 0x02C924 0B:8914: 24        .byte $24   ; 
- D 0 - I - 0x02C925 0B:8915: 7E        .byte $7E   ; 
- D 0 - I - 0x02C926 0B:8916: 00        .byte $00   ; 
- D 0 - I - 0x02C927 0B:8917: 44        .byte $44   ; 
- D 0 - I - 0x02C928 0B:8918: 00        .byte $00   ; 
- D 0 - I - 0x02C929 0B:8919: 88        .byte $88   ; 
- D 0 - I - 0x02C92A 0B:891A: 64        .byte $64   ; 
- D 0 - I - 0x02C92B 0B:891B: 00        .byte $00   ; 
- D 0 - I - 0x02C92C 0B:891C: 65        .byte $65   ; 
- D 0 - I - 0x02C92D 0B:891D: 66        .byte $66   ; 
- D 0 - I - 0x02C92E 0B:891E: 00        .byte $00   ; 
- D 0 - I - 0x02C92F 0B:891F: 00        .byte $00   ; 
- D 0 - I - 0x02C930 0B:8920: 07        .byte $07   ; 
- D 0 - I - 0x02C931 0B:8921: 08        .byte $08   ; 
- D 0 - I - 0x02C932 0B:8922: 05        .byte $05   ; 
- D 0 - I - 0x02C933 0B:8923: 67        .byte $67   ; 
- D 0 - I - 0x02C934 0B:8924: 83        .byte $83   ; 
- D 0 - I - 0x02C935 0B:8925: 68        .byte $68   ; 
- D 0 - I - 0x02C936 0B:8926: 07        .byte $07   ; 
- D 0 - I - 0x02C937 0B:8927: 08        .byte $08   ; 
- D 0 - I - 0x02C938 0B:8928: 05        .byte $05   ; 
- D 0 - I - 0x02C939 0B:8929: 67        .byte $67   ; 
- D 0 - I - 0x02C93A 0B:892A: 81        .byte $81   ; 
- D 0 - I - 0x02C93B 0B:892B: 68        .byte $68   ; 
- D 0 - I - 0x02C93C 0B:892C: 08        .byte $08   ; 
- D 0 - I - 0x02C93D 0B:892D: 00        .byte $00   ; 
- D 0 - I - 0x02C93E 0B:892E: 82        .byte $82   ; 
- D 0 - I - 0x02C93F 0B:892F: 69        .byte $69   ; 
- D 0 - I - 0x02C940 0B:8930: 3C        .byte $3C   ; 
- D 0 - I - 0x02C941 0B:8931: C4        .byte $C4   ; 
- D 0 - I - 0x02C942 0B:8932: 6A        .byte $6A   ; 
- D 0 - I - 0x02C943 0B:8933: 84        .byte $84   ; 
- D 0 - I - 0x02C944 0B:8934: 3B        .byte $3B   ; 
- D 0 - I - 0x02C945 0B:8935: 3C        .byte $3C   ; 
- D 0 - I - 0x02C946 0B:8936: 07        .byte $07   ; 
- D 0 - I - 0x02C947 0B:8937: 08        .byte $08   ; 
- D 0 - I - 0x02C948 0B:8938: 05        .byte $05   ; 
- D 0 - I - 0x02C949 0B:8939: 6E        .byte $6E   ; 
- D 0 - I - 0x02C94A 0B:893A: 83        .byte $83   ; 
- D 0 - I - 0x02C94B 0B:893B: 6F        .byte $6F   ; 
- D 0 - I - 0x02C94C 0B:893C: 07        .byte $07   ; 
- D 0 - I - 0x02C94D 0B:893D: 08        .byte $08   ; 
- D 0 - I - 0x02C94E 0B:893E: 05        .byte $05   ; 
- D 0 - I - 0x02C94F 0B:893F: 6E        .byte $6E   ; 
- D 0 - I - 0x02C950 0B:8940: 81        .byte $81   ; 
- D 0 - I - 0x02C951 0B:8941: 6F        .byte $6F   ; 
- D 0 - I - 0x02C952 0B:8942: 08        .byte $08   ; 
- D 0 - I - 0x02C953 0B:8943: 00        .byte $00   ; 
- D 0 - I - 0x02C954 0B:8944: 8A        .byte $8A   ; 
- D 0 - I - 0x02C955 0B:8945: 70        .byte $70   ; 
- D 0 - I - 0x02C956 0B:8946: 39        .byte $39   ; 
- D 0 - I - 0x02C957 0B:8947: 71        .byte $71   ; 
- D 0 - I - 0x02C958 0B:8948: 39        .byte $39   ; 
- D 0 - I - 0x02C959 0B:8949: 72        .byte $72   ; 
- D 0 - I - 0x02C95A 0B:894A: 73        .byte $73   ; 
- D 0 - I - 0x02C95B 0B:894B: 43        .byte $43   ; 
- D 0 - I - 0x02C95C 0B:894C: 44        .byte $44   ; 
- D 0 - I - 0x02C95D 0B:894D: 13        .byte $13   ; 
- D 0 - I - 0x02C95E 0B:894E: 14        .byte $14   ; 
- D 0 - I - 0x02C95F 0B:894F: 05        .byte $05   ; 
- D 0 - I - 0x02C960 0B:8950: 74        .byte $74   ; 
- D 0 - I - 0x02C961 0B:8951: C3        .byte $C3   ; 
- D 0 - I - 0x02C962 0B:8952: 12        .byte $12   ; 
- D 0 - I - 0x02C963 0B:8953: 06        .byte $06   ; 
- D 0 - I - 0x02C964 0B:8954: 74        .byte $74   ; 
- D 0 - I - 0x02C965 0B:8955: 08        .byte $08   ; 
- D 0 - I - 0x02C966 0B:8956: 00        .byte $00   ; 
- D 0 - I - 0x02C967 0B:8957: 81        .byte $81   ; 
- D 0 - I - 0x02C968 0B:8958: 75        .byte $75   ; 
- D 0 - I - 0x02C969 0B:8959: 03        .byte $03   ; 
- D 0 - I - 0x02C96A 0B:895A: 41        .byte $41   ; 
- D 0 - I - 0x02C96B 0B:895B: 86        .byte $86   ; 
- D 0 - I - 0x02C96C 0B:895C: 76        .byte $76   ; 
- D 0 - I - 0x02C96D 0B:895D: 77        .byte $77   ; 
- D 0 - I - 0x02C96E 0B:895E: 00        .byte $00   ; 
- D 0 - I - 0x02C96F 0B:895F: 00        .byte $00   ; 
- D 0 - I - 0x02C970 0B:8960: 07        .byte $07   ; 
- D 0 - I - 0x02C971 0B:8961: 08        .byte $08   ; 
- D 0 - I - 0x02C972 0B:8962: 04        .byte $04   ; 
- D 0 - I - 0x02C973 0B:8963: 1A        .byte $1A   ; 
- D 0 - I - 0x02C974 0B:8964: 84        .byte $84   ; 
- D 0 - I - 0x02C975 0B:8965: 11        .byte $11   ; 
- D 0 - I - 0x02C976 0B:8966: 12        .byte $12   ; 
- D 0 - I - 0x02C977 0B:8967: 07        .byte $07   ; 
- D 0 - I - 0x02C978 0B:8968: 08        .byte $08   ; 
- D 0 - I - 0x02C979 0B:8969: 05        .byte $05   ; 
- D 0 - I - 0x02C97A 0B:896A: 1A        .byte $1A   ; 
- D 0 - I - 0x02C97B 0B:896B: 81        .byte $81   ; 
- D 0 - I - 0x02C97C 0B:896C: 11        .byte $11   ; 
- D 0 - I - 0x02C97D 0B:896D: 0B        .byte $0B   ; 
- D 0 - I - 0x02C97E 0B:896E: 00        .byte $00   ; 
- D 0 - I - 0x02C97F 0B:896F: 82        .byte $82   ; 
- D 0 - I - 0x02C980 0B:8970: 54        .byte $54   ; 
- D 0 - I - 0x02C981 0B:8971: 55        .byte $55   ; 
- D 0 - I - 0x02C982 0B:8972: 03        .byte $03   ; 
- D 0 - I - 0x02C983 0B:8973: 00        .byte $00   ; 
- D 0 - I - 0x02C984 0B:8974: 82        .byte $82   ; 
- D 0 - I - 0x02C985 0B:8975: 07        .byte $07   ; 
- D 0 - I - 0x02C986 0B:8976: 08        .byte $08   ; 
- D 0 - I - 0x02C987 0B:8977: 04        .byte $04   ; 
- D 0 - I - 0x02C988 0B:8978: 1A        .byte $1A   ; 
- D 0 - I - 0x02C989 0B:8979: 84        .byte $84   ; 
- D 0 - I - 0x02C98A 0B:897A: 11        .byte $11   ; 
- D 0 - I - 0x02C98B 0B:897B: 12        .byte $12   ; 
- D 0 - I - 0x02C98C 0B:897C: 07        .byte $07   ; 
- D 0 - I - 0x02C98D 0B:897D: 08        .byte $08   ; 
- D 0 - I - 0x02C98E 0B:897E: 05        .byte $05   ; 
- D 0 - I - 0x02C98F 0B:897F: 1A        .byte $1A   ; 
- D 0 - I - 0x02C990 0B:8980: 81        .byte $81   ; 
- D 0 - I - 0x02C991 0B:8981: 11        .byte $11   ; 
- D 0 - I - 0x02C992 0B:8982: 0A        .byte $0A   ; 
- D 0 - I - 0x02C993 0B:8983: 00        .byte $00   ; 
- D 0 - I - 0x02C994 0B:8984: 86        .byte $86   ; 
- D 0 - I - 0x02C995 0B:8985: 57        .byte $57   ; 
- D 0 - I - 0x02C996 0B:8986: 58        .byte $58   ; 
- D 0 - I - 0x02C997 0B:8987: 57        .byte $57   ; 
- D 0 - I - 0x02C998 0B:8988: 58        .byte $58   ; 
- D 0 - I - 0x02C999 0B:8989: 00        .byte $00   ; 
- D 0 - I - 0x02C99A 0B:898A: 00        .byte $00   ; 
- D 0 - I - 0x02C99B 0B:898B: C3        .byte $C3   ; 
- D 0 - I - 0x02C99C 0B:898C: 25        .byte $25   ; 
- D 0 - I - 0x02C99D 0B:898D: 03        .byte $03   ; 
- D 0 - I - 0x02C99E 0B:898E: 27        .byte $27   ; 
- D 0 - I - 0x02C99F 0B:898F: 82        .byte $82   ; 
- D 0 - I - 0x02C9A0 0B:8990: 28        .byte $28   ; 
- D 0 - I - 0x02C9A1 0B:8991: 29        .byte $29   ; 
- D 0 - I - 0x02C9A2 0B:8992: C3        .byte $C3   ; 
- D 0 - I - 0x02C9A3 0B:8993: 25        .byte $25   ; 
- D 0 - I - 0x02C9A4 0B:8994: 05        .byte $05   ; 
- D 0 - I - 0x02C9A5 0B:8995: 27        .byte $27   ; 
- D 0 - I - 0x02C9A6 0B:8996: 09        .byte $09   ; 
- D 0 - I - 0x02C9A7 0B:8997: 00        .byte $00   ; 
- D 0 - I - 0x02C9A8 0B:8998: 97        .byte $97   ; 
- D 0 - I - 0x02C9A9 0B:8999: 78        .byte $78   ; 
- D 0 - I - 0x02C9AA 0B:899A: 58        .byte $58   ; 
- D 0 - I - 0x02C9AB 0B:899B: 57        .byte $57   ; 
- D 0 - I - 0x02C9AC 0B:899C: 58        .byte $58   ; 
- D 0 - I - 0x02C9AD 0B:899D: 57        .byte $57   ; 
- D 0 - I - 0x02C9AE 0B:899E: 00        .byte $00   ; 
- D 0 - I - 0x02C9AF 0B:899F: 00        .byte $00   ; 
- D 0 - I - 0x02C9B0 0B:89A0: 07        .byte $07   ; 
- D 0 - I - 0x02C9B1 0B:89A1: 08        .byte $08   ; 
- D 0 - I - 0x02C9B2 0B:89A2: 1A        .byte $1A   ; 
- D 0 - I - 0x02C9B3 0B:89A3: 1A        .byte $1A   ; 
- D 0 - I - 0x02C9B4 0B:89A4: 2A        .byte $2A   ; 
- D 0 - I - 0x02C9B5 0B:89A5: 2B        .byte $2B   ; 
- D 0 - I - 0x02C9B6 0B:89A6: 11        .byte $11   ; 
- D 0 - I - 0x02C9B7 0B:89A7: 12        .byte $12   ; 
- D 0 - I - 0x02C9B8 0B:89A8: 07        .byte $07   ; 
- D 0 - I - 0x02C9B9 0B:89A9: 08        .byte $08   ; 
- D 0 - I - 0x02C9BA 0B:89AA: 1A        .byte $1A   ; 
- D 0 - I - 0x02C9BB 0B:89AB: 1A        .byte $1A   ; 
- D 0 - I - 0x02C9BC 0B:89AC: 2A        .byte $2A   ; 
- D 0 - I - 0x02C9BD 0B:89AD: 2B        .byte $2B   ; 
- D 0 - I - 0x02C9BE 0B:89AE: 11        .byte $11   ; 
- D 0 - I - 0x02C9BF 0B:89AF: 12        .byte $12   ; 
- D 0 - I - 0x02C9C0 0B:89B0: 09        .byte $09   ; 
- D 0 - I - 0x02C9C1 0B:89B1: 00        .byte $00   ; 
- D 0 - I - 0x02C9C2 0B:89B2: 97        .byte $97   ; 
- D 0 - I - 0x02C9C3 0B:89B3: 79        .byte $79   ; 
- D 0 - I - 0x02C9C4 0B:89B4: 57        .byte $57   ; 
- D 0 - I - 0x02C9C5 0B:89B5: 58        .byte $58   ; 
- D 0 - I - 0x02C9C6 0B:89B6: 57        .byte $57   ; 
- D 0 - I - 0x02C9C7 0B:89B7: 58        .byte $58   ; 
- D 0 - I - 0x02C9C8 0B:89B8: 00        .byte $00   ; 
- D 0 - I - 0x02C9C9 0B:89B9: 00        .byte $00   ; 
- D 0 - I - 0x02C9CA 0B:89BA: 2D        .byte $2D   ; 
- D 0 - I - 0x02C9CB 0B:89BB: 14        .byte $14   ; 
- D 0 - I - 0x02C9CC 0B:89BC: 1A        .byte $1A   ; 
- D 0 - I - 0x02C9CD 0B:89BD: 1A        .byte $1A   ; 
- D 0 - I - 0x02C9CE 0B:89BE: 2E        .byte $2E   ; 
- D 0 - I - 0x02C9CF 0B:89BF: 2F        .byte $2F   ; 
- D 0 - I - 0x02C9D0 0B:89C0: 11        .byte $11   ; 
- D 0 - I - 0x02C9D1 0B:89C1: 12        .byte $12   ; 
- D 0 - I - 0x02C9D2 0B:89C2: 2D        .byte $2D   ; 
- D 0 - I - 0x02C9D3 0B:89C3: 14        .byte $14   ; 
- D 0 - I - 0x02C9D4 0B:89C4: 1A        .byte $1A   ; 
- D 0 - I - 0x02C9D5 0B:89C5: 1A        .byte $1A   ; 
- D 0 - I - 0x02C9D6 0B:89C6: 2E        .byte $2E   ; 
- D 0 - I - 0x02C9D7 0B:89C7: 2F        .byte $2F   ; 
- D 0 - I - 0x02C9D8 0B:89C8: 11        .byte $11   ; 
- D 0 - I - 0x02C9D9 0B:89C9: 12        .byte $12   ; 
- D 0 - I - 0x02C9DA 0B:89CA: 09        .byte $09   ; 
- D 0 - I - 0x02C9DB 0B:89CB: 00        .byte $00   ; 
- D 0 - I - 0x02C9DC 0B:89CC: C4        .byte $C4   ; 
- D 0 - I - 0x02C9DD 0B:89CD: 7A        .byte $7A   ; 
- D 0 - I - 0x02C9DE 0B:89CE: 85        .byte $85   ; 
- D 0 - I - 0x02C9DF 0B:89CF: 7C        .byte $7C   ; 
- D 0 - I - 0x02C9E0 0B:89D0: 7E        .byte $7E   ; 
- D 0 - I - 0x02C9E1 0B:89D1: 00        .byte $00   ; 
- D 0 - I - 0x02C9E2 0B:89D2: 07        .byte $07   ; 
- D 0 - I - 0x02C9E3 0B:89D3: 08        .byte $08   ; 
- D 0 - I - 0x02C9E4 0B:89D4: 04        .byte $04   ; 
- D 0 - I - 0x02C9E5 0B:89D5: 1A        .byte $1A   ; 
- D 0 - I - 0x02C9E6 0B:89D6: 84        .byte $84   ; 
- D 0 - I - 0x02C9E7 0B:89D7: 11        .byte $11   ; 
- D 0 - I - 0x02C9E8 0B:89D8: 12        .byte $12   ; 
- D 0 - I - 0x02C9E9 0B:89D9: 07        .byte $07   ; 
- D 0 - I - 0x02C9EA 0B:89DA: 08        .byte $08   ; 
- D 0 - I - 0x02C9EB 0B:89DB: 04        .byte $04   ; 
- D 0 - I - 0x02C9EC 0B:89DC: 1A        .byte $1A   ; 
- D 0 - I - 0x02C9ED 0B:89DD: 82        .byte $82   ; 
- D 0 - I - 0x02C9EE 0B:89DE: 11        .byte $11   ; 
- D 0 - I - 0x02C9EF 0B:89DF: 12        .byte $12   ; 
- D 0 - I - 0x02C9F0 0B:89E0: 09        .byte $09   ; 
- D 0 - I - 0x02C9F1 0B:89E1: 00        .byte $00   ; 
- D 0 - I - 0x02C9F2 0B:89E2: 81        .byte $81   ; 
- D 0 - I - 0x02C9F3 0B:89E3: 7F        .byte $7F   ; 
- D 0 - I - 0x02C9F4 0B:89E4: 04        .byte $04   ; 
- D 0 - I - 0x02C9F5 0B:89E5: 61        .byte $61   ; 
- D 0 - I - 0x02C9F6 0B:89E6: 82        .byte $82   ; 
- D 0 - I - 0x02C9F7 0B:89E7: 80        .byte $80   ; 
- D 0 - I - 0x02C9F8 0B:89E8: 00        .byte $00   ; 
- D 0 - I - 0x02C9F9 0B:89E9: C4        .byte $C4   ; 
- D 0 - I - 0x02C9FA 0B:89EA: 30        .byte $30   ; 
- D 0 - I - 0x02C9FB 0B:89EB: 84        .byte $84   ; 
- D 0 - I - 0x02C9FC 0B:89EC: 32        .byte $32   ; 
- D 0 - I - 0x02C9FD 0B:89ED: 33        .byte $33   ; 
- D 0 - I - 0x02C9FE 0B:89EE: 32        .byte $32   ; 
- D 0 - I - 0x02C9FF 0B:89EF: 34        .byte $34   ; 
- D 0 - I - 0x02CA00 0B:89F0: C4        .byte $C4   ; 
- D 0 - I - 0x02CA01 0B:89F1: 30        .byte $30   ; 
- D 0 - I - 0x02CA02 0B:89F2: 84        .byte $84   ; 
- D 0 - I - 0x02CA03 0B:89F3: 32        .byte $32   ; 
- D 0 - I - 0x02CA04 0B:89F4: 33        .byte $33   ; 
- D 0 - I - 0x02CA05 0B:89F5: 32        .byte $32   ; 
- D 0 - I - 0x02CA06 0B:89F6: 34        .byte $34   ; 
- D 0 - I - 0x02CA07 0B:89F7: 08        .byte $08   ; 
- D 0 - I - 0x02CA08 0B:89F8: 00        .byte $00   ; 
- D 0 - I - 0x02CA09 0B:89F9: 81        .byte $81   ; 
- D 0 - I - 0x02CA0A 0B:89FA: 86        .byte $86   ; 
- D 0 - I - 0x02CA0B 0B:89FB: C3        .byte $C3   ; 
- D 0 - I - 0x02CA0C 0B:89FC: 84        .byte $84   ; 
- D 0 - I - 0x02CA0D 0B:89FD: C3        .byte $C3   ; 
- D 0 - I - 0x02CA0E 0B:89FE: 84        .byte $84   ; 
- D 0 - I - 0x02CA0F 0B:89FF: C3        .byte $C3   ; 
- D 0 - I - 0x02CA10 0B:8A00: 84        .byte $84   ; 
- D 0 - I - 0x02CA11 0B:8A01: C6        .byte $C6   ; 
- D 0 - I - 0x02CA12 0B:8A02: 81        .byte $81   ; 
- D 0 - I - 0x02CA13 0B:8A03: C6        .byte $C6   ; 
- D 0 - I - 0x02CA14 0B:8A04: 81        .byte $81   ; 
- D 0 - I - 0x02CA15 0B:8A05: 82        .byte $82   ; 
- D 0 - I - 0x02CA16 0B:8A06: 81        .byte $81   ; 
- D 0 - I - 0x02CA17 0B:8A07: 82        .byte $82   ; 
- D 0 - I - 0x02CA18 0B:8A08: 08        .byte $08   ; 
- D 0 - I - 0x02CA19 0B:8A09: 00        .byte $00   ; 
- D 0 - I - 0x02CA1A 0B:8A0A: 82        .byte $82   ; 
- D 0 - I - 0x02CA1B 0B:8A0B: 88        .byte $88   ; 
- D 0 - I - 0x02CA1C 0B:8A0C: 89        .byte $89   ; 
- D 0 - I - 0x02CA1D 0B:8A0D: C3        .byte $C3   ; 
- D 0 - I - 0x02CA1E 0B:8A0E: 87        .byte $87   ; 
- D 0 - I - 0x02CA1F 0B:8A0F: C3        .byte $C3   ; 
- D 0 - I - 0x02CA20 0B:8A10: 87        .byte $87   ; 
- D 0 - I - 0x02CA21 0B:8A11: 90        .byte $90   ; 
- D 0 - I - 0x02CA22 0B:8A12: 87        .byte $87   ; 
- D 0 - I - 0x02CA23 0B:8A13: 88        .byte $88   ; 
- D 0 - I - 0x02CA24 0B:8A14: 87        .byte $87   ; 
- D 0 - I - 0x02CA25 0B:8A15: 89        .byte $89   ; 
- D 0 - I - 0x02CA26 0B:8A16: 87        .byte $87   ; 
- D 0 - I - 0x02CA27 0B:8A17: 88        .byte $88   ; 
- D 0 - I - 0x02CA28 0B:8A18: 87        .byte $87   ; 
- D 0 - I - 0x02CA29 0B:8A19: 89        .byte $89   ; 
- D 0 - I - 0x02CA2A 0B:8A1A: 87        .byte $87   ; 
- D 0 - I - 0x02CA2B 0B:8A1B: 88        .byte $88   ; 
- D 0 - I - 0x02CA2C 0B:8A1C: 87        .byte $87   ; 
- D 0 - I - 0x02CA2D 0B:8A1D: 89        .byte $89   ; 
- D 0 - I - 0x02CA2E 0B:8A1E: 87        .byte $87   ; 
- D 0 - I - 0x02CA2F 0B:8A1F: 88        .byte $88   ; 
- D 0 - I - 0x02CA30 0B:8A20: 87        .byte $87   ; 
- D 0 - I - 0x02CA31 0B:8A21: 89        .byte $89   ; 
- D 0 - I - 0x02CA32 0B:8A22: 08        .byte $08   ; 
- D 0 - I - 0x02CA33 0B:8A23: 00        .byte $00   ; 
- D 0 - I - 0x02CA34 0B:8A24: C4        .byte $C4   ; 
- D 0 - I - 0x02CA35 0B:8A25: 8A        .byte $8A   ; 
- D 0 - I - 0x02CA36 0B:8A26: C4        .byte $C4   ; 
- D 0 - I - 0x02CA37 0B:8A27: 8A        .byte $8A   ; 
- D 0 - I - 0x02CA38 0B:8A28: C4        .byte $C4   ; 
- D 0 - I - 0x02CA39 0B:8A29: 8A        .byte $8A   ; 
- D 0 - I - 0x02CA3A 0B:8A2A: C4        .byte $C4   ; 
- D 0 - I - 0x02CA3B 0B:8A2B: 8A        .byte $8A   ; 
- D 0 - I - 0x02CA3C 0B:8A2C: C4        .byte $C4   ; 
- D 0 - I - 0x02CA3D 0B:8A2D: 8A        .byte $8A   ; 
- D 0 - I - 0x02CA3E 0B:8A2E: C4        .byte $C4   ; 
- D 0 - I - 0x02CA3F 0B:8A2F: 8A        .byte $8A   ; 
- D 0 - I - 0x02CA40 0B:8A30: 86        .byte $86   ; 
- D 0 - I - 0x02CA41 0B:8A31: 8C        .byte $8C   ; 
- D 0 - I - 0x02CA42 0B:8A32: 8D        .byte $8D   ; 
- D 0 - I - 0x02CA43 0B:8A33: 8C        .byte $8C   ; 
- D 0 - I - 0x02CA44 0B:8A34: 8D        .byte $8D   ; 
- D 0 - I - 0x02CA45 0B:8A35: 8C        .byte $8C   ; 
- D 0 - I - 0x02CA46 0B:8A36: 8D        .byte $8D   ; 
- D 0 - I - 0x02CA47 0B:8A37: C6        .byte $C6   ; 
- D 0 - I - 0x02CA48 0B:8A38: 8C        .byte $8C   ; 
- D 0 - I - 0x02CA49 0B:8A39: C4        .byte $C4   ; 
- D 0 - I - 0x02CA4A 0B:8A3A: 8E        .byte $8E   ; 
- D 0 - I - 0x02CA4B 0B:8A3B: C4        .byte $C4   ; 
- D 0 - I - 0x02CA4C 0B:8A3C: 8E        .byte $8E   ; 
- D 0 - I - 0x02CA4D 0B:8A3D: C4        .byte $C4   ; 
- D 0 - I - 0x02CA4E 0B:8A3E: 8E        .byte $8E   ; 
- D 0 - I - 0x02CA4F 0B:8A3F: C4        .byte $C4   ; 
- D 0 - I - 0x02CA50 0B:8A40: 8E        .byte $8E   ; 
- D 0 - I - 0x02CA51 0B:8A41: C4        .byte $C4   ; 
- D 0 - I - 0x02CA52 0B:8A42: 8E        .byte $8E   ; 
- D 0 - I - 0x02CA53 0B:8A43: A8        .byte $A8   ; 
- D 0 - I - 0x02CA54 0B:8A44: 90        .byte $90   ; 
- D 0 - I - 0x02CA55 0B:8A45: 91        .byte $91   ; 
- D 0 - I - 0x02CA56 0B:8A46: 90        .byte $90   ; 
- D 0 - I - 0x02CA57 0B:8A47: 91        .byte $91   ; 
- D 0 - I - 0x02CA58 0B:8A48: 90        .byte $90   ; 
- D 0 - I - 0x02CA59 0B:8A49: 91        .byte $91   ; 
- D 0 - I - 0x02CA5A 0B:8A4A: 90        .byte $90   ; 
- D 0 - I - 0x02CA5B 0B:8A4B: 91        .byte $91   ; 
- D 0 - I - 0x02CA5C 0B:8A4C: 95        .byte $95   ; 
- D 0 - I - 0x02CA5D 0B:8A4D: 92        .byte $92   ; 
- D 0 - I - 0x02CA5E 0B:8A4E: 93        .byte $93   ; 
- D 0 - I - 0x02CA5F 0B:8A4F: 92        .byte $92   ; 
- D 0 - I - 0x02CA60 0B:8A50: A5        .byte $A5   ; 
- D 0 - I - 0x02CA61 0B:8A51: 92        .byte $92   ; 
- D 0 - I - 0x02CA62 0B:8A52: 94        .byte $94   ; 
- D 0 - I - 0x02CA63 0B:8A53: 92        .byte $92   ; 
- D 0 - I - 0x02CA64 0B:8A54: 95        .byte $95   ; 
- D 0 - I - 0x02CA65 0B:8A55: 96        .byte $96   ; 
- D 0 - I - 0x02CA66 0B:8A56: A0        .byte $A0   ; 
- D 0 - I - 0x02CA67 0B:8A57: 92        .byte $92   ; 
- D 0 - I - 0x02CA68 0B:8A58: A6        .byte $A6   ; 
- D 0 - I - 0x02CA69 0B:8A59: A7        .byte $A7   ; 
- D 0 - I - 0x02CA6A 0B:8A5A: 92        .byte $92   ; 
- D 0 - I - 0x02CA6B 0B:8A5B: 92        .byte $92   ; 
- D 0 - I - 0x02CA6C 0B:8A5C: A0        .byte $A0   ; 
- D 0 - I - 0x02CA6D 0B:8A5D: 92        .byte $92   ; 
- D 0 - I - 0x02CA6E 0B:8A5E: 92        .byte $92   ; 
- D 0 - I - 0x02CA6F 0B:8A5F: 94        .byte $94   ; 
- D 0 - I - 0x02CA70 0B:8A60: 92        .byte $92   ; 
- D 0 - I - 0x02CA71 0B:8A61: 93        .byte $93   ; 
- D 0 - I - 0x02CA72 0B:8A62: 92        .byte $92   ; 
- D 0 - I - 0x02CA73 0B:8A63: 94        .byte $94   ; 
- D 0 - I - 0x02CA74 0B:8A64: 92        .byte $92   ; 
- D 0 - I - 0x02CA75 0B:8A65: 95        .byte $95   ; 
- D 0 - I - 0x02CA76 0B:8A66: 92        .byte $92   ; 
- D 0 - I - 0x02CA77 0B:8A67: 92        .byte $92   ; 
- D 0 - I - 0x02CA78 0B:8A68: 94        .byte $94   ; 
- D 0 - I - 0x02CA79 0B:8A69: 92        .byte $92   ; 
- D 0 - I - 0x02CA7A 0B:8A6A: 95        .byte $95   ; 
- D 0 - I - 0x02CA7B 0B:8A6B: 92        .byte $92   ; 
- D 0 - I - 0x02CA7C 0B:8A6C: 04        .byte $04   ; 
- D 0 - I - 0x02CA7D 0B:8A6D: 9C        .byte $9C   ; 
- D 0 - I - 0x02CA7E 0B:8A6E: 84        .byte $84   ; 
- D 0 - I - 0x02CA7F 0B:8A6F: A8        .byte $A8   ; 
- D 0 - I - 0x02CA80 0B:8A70: 9C        .byte $9C   ; 
- D 0 - I - 0x02CA81 0B:8A71: 9C        .byte $9C   ; 
- D 0 - I - 0x02CA82 0B:8A72: 9D        .byte $9D   ; 
- D 0 - I - 0x02CA83 0B:8A73: 05        .byte $05   ; 
- D 0 - I - 0x02CA84 0B:8A74: 9C        .byte $9C   ; 
- D 0 - I - 0x02CA85 0B:8A75: 82        .byte $82   ; 
- D 0 - I - 0x02CA86 0B:8A76: A9        .byte $A9   ; 
- D 0 - I - 0x02CA87 0B:8A77: AA        .byte $AA   ; 
- D 0 - I - 0x02CA88 0B:8A78: 09        .byte $09   ; 
- D 0 - I - 0x02CA89 0B:8A79: 9C        .byte $9C   ; 
- D 0 - I - 0x02CA8A 0B:8A7A: 81        .byte $81   ; 
- D 0 - I - 0x02CA8B 0B:8A7B: 9D        .byte $9D   ; 
- D 0 - I - 0x02CA8C 0B:8A7C: 04        .byte $04   ; 
- D 0 - I - 0x02CA8D 0B:8A7D: 9C        .byte $9C   ; 
- D 0 - I - 0x02CA8E 0B:8A7E: 89        .byte $89   ; 
- D 0 - I - 0x02CA8F 0B:8A7F: 9D        .byte $9D   ; 
- D 0 - I - 0x02CA90 0B:8A80: 9C        .byte $9C   ; 
- D 0 - I - 0x02CA91 0B:8A81: 9C        .byte $9C   ; 
- D 0 - I - 0x02CA92 0B:8A82: 92        .byte $92   ; 
- D 0 - I - 0x02CA93 0B:8A83: 92        .byte $92   ; 
- D 0 - I - 0x02CA94 0B:8A84: 94        .byte $94   ; 
- D 0 - I - 0x02CA95 0B:8A85: 92        .byte $92   ; 
- D 0 - I - 0x02CA96 0B:8A86: 95        .byte $95   ; 
- D 0 - I - 0x02CA97 0B:8A87: A5        .byte $A5   ; 
- D 0 - I - 0x02CA98 0B:8A88: 03        .byte $03   ; 
- D 0 - I - 0x02CA99 0B:8A89: 92        .byte $92   ; 
- D 0 - I - 0x02CA9A 0B:8A8A: 8E        .byte $8E   ; 
- D 0 - I - 0x02CA9B 0B:8A8B: 94        .byte $94   ; 
- D 0 - I - 0x02CA9C 0B:8A8C: 92        .byte $92   ; 
- D 0 - I - 0x02CA9D 0B:8A8D: 95        .byte $95   ; 
- D 0 - I - 0x02CA9E 0B:8A8E: 92        .byte $92   ; 
- D 0 - I - 0x02CA9F 0B:8A8F: 9B        .byte $9B   ; 
- D 0 - I - 0x02CAA0 0B:8A90: 92        .byte $92   ; 
- D 0 - I - 0x02CAA1 0B:8A91: A6        .byte $A6   ; 
- D 0 - I - 0x02CAA2 0B:8A92: A7        .byte $A7   ; 
- D 0 - I - 0x02CAA3 0B:8A93: 92        .byte $92   ; 
- D 0 - I - 0x02CAA4 0B:8A94: 92        .byte $92   ; 
- D 0 - I - 0x02CAA5 0B:8A95: 94        .byte $94   ; 
- D 0 - I - 0x02CAA6 0B:8A96: 94        .byte $94   ; 
- D 0 - I - 0x02CAA7 0B:8A97: 92        .byte $92   ; 
- D 0 - I - 0x02CAA8 0B:8A98: 95        .byte $95   ; 
- D 0 - I - 0x02CAA9 0B:8A99: 04        .byte $04   ; 
- D 0 - I - 0x02CAAA 0B:8A9A: 92        .byte $92   ; 
- D 0 - I - 0x02CAAB 0B:8A9B: 85        .byte $85   ; 
- D 0 - I - 0x02CAAC 0B:8A9C: 93        .byte $93   ; 
- D 0 - I - 0x02CAAD 0B:8A9D: 92        .byte $92   ; 
- D 0 - I - 0x02CAAE 0B:8A9E: 97        .byte $97   ; 
- D 0 - I - 0x02CAAF 0B:8A9F: 92        .byte $92   ; 
- D 0 - I - 0x02CAB0 0B:8AA0: 92        .byte $92   ; 
- D 0 - I - 0x02CAB1 0B:8AA1: 03        .byte $03   ; 
- D 0 - I - 0x02CAB2 0B:8AA2: 9C        .byte $9C   ; 
- D 0 - I - 0x02CAB3 0B:8AA3: 83        .byte $83   ; 
- D 0 - I - 0x02CAB4 0B:8AA4: 9D        .byte $9D   ; 
- D 0 - I - 0x02CAB5 0B:8AA5: 9C        .byte $9C   ; 
- D 0 - I - 0x02CAB6 0B:8AA6: A8        .byte $A8   ; 
- D 0 - I - 0x02CAB7 0B:8AA7: 04        .byte $04   ; 
- D 0 - I - 0x02CAB8 0B:8AA8: 9C        .byte $9C   ; 
- D 0 - I - 0x02CAB9 0B:8AA9: 81        .byte $81   ; 
- D 0 - I - 0x02CABA 0B:8AAA: 9D        .byte $9D   ; 
- D 0 - I - 0x02CABB 0B:8AAB: 05        .byte $05   ; 
- D 0 - I - 0x02CABC 0B:8AAC: 9C        .byte $9C   ; 
- D 0 - I - 0x02CABD 0B:8AAD: 82        .byte $82   ; 
- D 0 - I - 0x02CABE 0B:8AAE: A9        .byte $A9   ; 
- D 0 - I - 0x02CABF 0B:8AAF: AA        .byte $AA   ; 
- D 0 - I - 0x02CAC0 0B:8AB0: 03        .byte $03   ; 
- D 0 - I - 0x02CAC1 0B:8AB1: 9C        .byte $9C   ; 
- D 0 - I - 0x02CAC2 0B:8AB2: 81        .byte $81   ; 
- D 0 - I - 0x02CAC3 0B:8AB3: 9D        .byte $9D   ; 
- D 0 - I - 0x02CAC4 0B:8AB4: 0A        .byte $0A   ; 
- D 0 - I - 0x02CAC5 0B:8AB5: 9C        .byte $9C   ; 
- D 0 - I - 0x02CAC6 0B:8AB6: 7E        .byte $7E   ; 
- D 0 - I - 0x02CAC7 0B:8AB7: 00        .byte $00   ; 
- D 0 - I - 0x02CAC8 0B:8AB8: 42        .byte $42   ; 
- D 0 - I - 0x02CAC9 0B:8AB9: 00        .byte $00   ; 
- D 0 - I - 0x02CACA 0B:8ABA: 08        .byte $08   ; 
- D 0 - I - 0x02CACB 0B:8ABB: FF        .byte $FF   ; 
- D 0 - I - 0x02CACC 0B:8ABC: 82        .byte $82   ; 
- D 0 - I - 0x02CACD 0B:8ABD: 5F        .byte $5F   ; 
- D 0 - I - 0x02CACE 0B:8ABE: 5F        .byte $5F   ; 
- D 0 - I - 0x02CACF 0B:8ABF: 04        .byte $04   ; 
- D 0 - I - 0x02CAD0 0B:8AC0: 0F        .byte $0F   ; 
- D 0 - I - 0x02CAD1 0B:8AC1: 92        .byte $92   ; 
- D 0 - I - 0x02CAD2 0B:8AC2: FF        .byte $FF   ; 
- D 0 - I - 0x02CAD3 0B:8AC3: FF        .byte $FF   ; 
- D 0 - I - 0x02CAD4 0B:8AC4: A5        .byte $A5   ; 
- D 0 - I - 0x02CAD5 0B:8AC5: A9        .byte $A9   ; 
- D 0 - I - 0x02CAD6 0B:8AC6: 44        .byte $44   ; 
- D 0 - I - 0x02CAD7 0B:8AC7: 55        .byte $55   ; 
- D 0 - I - 0x02CAD8 0B:8AC8: 44        .byte $44   ; 
- D 0 - I - 0x02CAD9 0B:8AC9: 55        .byte $55   ; 
- D 0 - I - 0x02CADA 0B:8ACA: FF        .byte $FF   ; 
- D 0 - I - 0x02CADB 0B:8ACB: FF        .byte $FF   ; 
- D 0 - I - 0x02CADC 0B:8ACC: AA        .byte $AA   ; 
- D 0 - I - 0x02CADD 0B:8ACD: AA        .byte $AA   ; 
- D 0 - I - 0x02CADE 0B:8ACE: 44        .byte $44   ; 
- D 0 - I - 0x02CADF 0B:8ACF: 55        .byte $55   ; 
- D 0 - I - 0x02CAE0 0B:8AD0: 44        .byte $44   ; 
- D 0 - I - 0x02CAE1 0B:8AD1: 55        .byte $55   ; 
- D 0 - I - 0x02CAE2 0B:8AD2: FF        .byte $FF   ; 
- D 0 - I - 0x02CAE3 0B:8AD3: FF        .byte $FF   ; 
- D 0 - I - 0x02CAE4 0B:8AD4: 06        .byte $06   ; 
- D 0 - I - 0x02CAE5 0B:8AD5: 50        .byte $50   ; 
- D 0 - I - 0x02CAE6 0B:8AD6: 82        .byte $82   ; 
- D 0 - I - 0x02CAE7 0B:8AD7: 5F        .byte $5F   ; 
- D 0 - I - 0x02CAE8 0B:8AD8: 5F        .byte $5F   ; 
- D 0 - I - 0x02CAE9 0B:8AD9: 08        .byte $08   ; 
- D 0 - I - 0x02CAEA 0B:8ADA: 00        .byte $00   ; 
- D 0 - I - 0x02CAEB 0B:8ADB: 10        .byte $10   ; 
- D 0 - I - 0x02CAEC 0B:8ADC: FF        .byte $FF   ; 
- D 0 - I - 0x02CAED 0B:8ADD: FF        .byte $FF   ; 



.export _off003_0x02CAEE_03
_off003_0x02CAEE_03:
- D 0 - I - 0x02CAEE 0B:8ADE: 00        .byte $00   ; 
- D 0 - I - 0x02CAEF 0B:8ADF: 20        .byte $20   ; 
- D 0 - I - 0x02CAF0 0B:8AE0: 7E        .byte $7E   ; 
- D 0 - I - 0x02CAF1 0B:8AE1: 00        .byte $00   ; 
- D 0 - I - 0x02CAF2 0B:8AE2: 45        .byte $45   ; 
- D 0 - I - 0x02CAF3 0B:8AE3: 00        .byte $00   ; 
- D 0 - I - 0x02CAF4 0B:8AE4: 94        .byte $94   ; 
- D 0 - I - 0x02CAF5 0B:8AE5: 9E        .byte $9E   ; 
- D 0 - I - 0x02CAF6 0B:8AE6: 8F        .byte $8F   ; 
- D 0 - I - 0x02CAF7 0B:8AE7: 8F        .byte $8F   ; 
- D 0 - I - 0x02CAF8 0B:8AE8: 98        .byte $98   ; 
- D 0 - I - 0x02CAF9 0B:8AE9: 8B        .byte $8B   ; 
- D 0 - I - 0x02CAFA 0B:8AEA: 91        .byte $91   ; 
- D 0 - I - 0x02CAFB 0B:8AEB: 8F        .byte $8F   ; 
- D 0 - I - 0x02CAFC 0B:8AEC: 00        .byte $00   ; 
- D 0 - I - 0x02CAFD 0B:8AED: 97        .byte $97   ; 
- D 0 - I - 0x02CAFE 0B:8AEE: 9F        .byte $9F   ; 
- D 0 - I - 0x02CAFF 0B:8AEF: 9E        .byte $9E   ; 
- D 0 - I - 0x02CB00 0B:8AF0: 8B        .byte $8B   ; 
- D 0 - I - 0x02CB01 0B:8AF1: 98        .byte $98   ; 
- D 0 - I - 0x02CB02 0B:8AF2: 9E        .byte $9E   ; 
- D 0 - I - 0x02CB03 0B:8AF3: 00        .byte $00   ; 
- D 0 - I - 0x02CB04 0B:8AF4: 98        .byte $98   ; 
- D 0 - I - 0x02CB05 0B:8AF5: 93        .byte $93   ; 
- D 0 - I - 0x02CB06 0B:8AF6: 98        .byte $98   ; 
- D 0 - I - 0x02CB07 0B:8AF7: 94        .byte $94   ; 
- D 0 - I - 0x02CB08 0B:8AF8: 8B        .byte $8B   ; 
- D 0 - I - 0x02CB09 0B:8AF9: 0C        .byte $0C   ; 
- D 0 - I - 0x02CB0A 0B:8AFA: 00        .byte $00   ; 
- D 0 - I - 0x02CB0B 0B:8AFB: 89        .byte $89   ; 
- D 0 - I - 0x02CB0C 0B:8AFC: 9E        .byte $9E   ; 
- D 0 - I - 0x02CB0D 0B:8AFD: 9F        .byte $9F   ; 
- D 0 - I - 0x02CB0E 0B:8AFE: 9C        .byte $9C   ; 
- D 0 - I - 0x02CB0F 0B:8AFF: 9E        .byte $9E   ; 
- D 0 - I - 0x02CB10 0B:8B00: 96        .byte $96   ; 
- D 0 - I - 0x02CB11 0B:8B01: 8F        .byte $8F   ; 
- D 0 - I - 0x02CB12 0B:8B02: 9D        .byte $9D   ; 
- D 0 - I - 0x02CB13 0B:8B03: 00        .byte $00   ; 
- D 0 - I - 0x02CB14 0B:8B04: A5        .byte $A5   ; 
- D 0 - I - 0x02CB15 0B:8B05: 03        .byte $03   ; 
- D 0 - I - 0x02CB16 0B:8B06: 00        .byte $00   ; 
- D 0 - I - 0x02CB17 0B:8B07: 87        .byte $87   ; 
- D 0 - I - 0x02CB18 0B:8B08: 97        .byte $97   ; 
- D 0 - I - 0x02CB19 0B:8B09: 93        .byte $93   ; 
- D 0 - I - 0x02CB1A 0B:8B0A: 9C        .byte $9C   ; 
- D 0 - I - 0x02CB1B 0B:8B0B: 8B        .byte $8B   ; 
- D 0 - I - 0x02CB1C 0B:8B0C: 91        .byte $91   ; 
- D 0 - I - 0x02CB1D 0B:8B0D: 8F        .byte $8F   ; 
- D 0 - I - 0x02CB1E 0B:8B0E: 00        .byte $00   ; 
- D 0 - I - 0x02CB1F 0B:8B0F: C3        .byte $C3   ; 
- D 0 - I - 0x02CB20 0B:8B10: 9D        .byte $9D   ; 
- D 0 - I - 0x02CB21 0B:8B11: 85        .byte $85   ; 
- D 0 - I - 0x02CB22 0B:8B12: 8E        .byte $8E   ; 
- D 0 - I - 0x02CB23 0B:8B13: 93        .byte $93   ; 
- D 0 - I - 0x02CB24 0B:8B14: 99        .byte $99   ; 
- D 0 - I - 0x02CB25 0B:8B15: 9D        .byte $9D   ; 
- D 0 - I - 0x02CB26 0B:8B16: A8        .byte $A8   ; 
- D 0 - I - 0x02CB27 0B:8B17: 05        .byte $05   ; 
- D 0 - I - 0x02CB28 0B:8B18: 00        .byte $00   ; 
- D 0 - I - 0x02CB29 0B:8B19: 9A        .byte $9A   ; 
- D 0 - I - 0x02CB2A 0B:8B1A: 9F        .byte $9F   ; 
- D 0 - I - 0x02CB2B 0B:8B1B: 9D        .byte $9D   ; 
- D 0 - I - 0x02CB2C 0B:8B1C: 8B        .byte $8B   ; 
- D 0 - I - 0x02CB2D 0B:8B1D: A7        .byte $A7   ; 
- D 0 - I - 0x02CB2E 0B:8B1E: 00        .byte $00   ; 
- D 0 - I - 0x02CB2F 0B:8B1F: 00        .byte $00   ; 
- D 0 - I - 0x02CB30 0B:8B20: 8B        .byte $8B   ; 
- D 0 - I - 0x02CB31 0B:8B21: 96        .byte $96   ; 
- D 0 - I - 0x02CB32 0B:8B22: 96        .byte $96   ; 
- D 0 - I - 0x02CB33 0B:8B23: 00        .byte $00   ; 
- D 0 - I - 0x02CB34 0B:8B24: 9C        .byte $9C   ; 
- D 0 - I - 0x02CB35 0B:8B25: 93        .byte $93   ; 
- D 0 - I - 0x02CB36 0B:8B26: 91        .byte $91   ; 
- D 0 - I - 0x02CB37 0B:8B27: 92        .byte $92   ; 
- D 0 - I - 0x02CB38 0B:8B28: 9E        .byte $9E   ; 
- D 0 - I - 0x02CB39 0B:8B29: 9D        .byte $9D   ; 
- D 0 - I - 0x02CB3A 0B:8B2A: 00        .byte $00   ; 
- D 0 - I - 0x02CB3B 0B:8B2B: 9C        .byte $9C   ; 
- D 0 - I - 0x02CB3C 0B:8B2C: 8F        .byte $8F   ; 
- D 0 - I - 0x02CB3D 0B:8B2D: 9D        .byte $9D   ; 
- D 0 - I - 0x02CB3E 0B:8B2E: 8F        .byte $8F   ; 
- D 0 - I - 0x02CB3F 0B:8B2F: 9C        .byte $9C   ; 
- D 0 - I - 0x02CB40 0B:8B30: A0        .byte $A0   ; 
- D 0 - I - 0x02CB41 0B:8B31: 8F        .byte $8F   ; 
- D 0 - I - 0x02CB42 0B:8B32: 8E        .byte $8E   ; 
- D 0 - I - 0x02CB43 0B:8B33: A7        .byte $A7   ; 
- D 0 - I - 0x02CB44 0B:8B34: 06        .byte $06   ; 
- D 0 - I - 0x02CB45 0B:8B35: 00        .byte $00   ; 
- D 0 - I - 0x02CB46 0B:8B36: 98        .byte $98   ; 
- D 0 - I - 0x02CB47 0B:8B37: 9E        .byte $9E   ; 
- D 0 - I - 0x02CB48 0B:8B38: 9C        .byte $9C   ; 
- D 0 - I - 0x02CB49 0B:8B39: 8B        .byte $8B   ; 
- D 0 - I - 0x02CB4A 0B:8B3A: 8E        .byte $8E   ; 
- D 0 - I - 0x02CB4B 0B:8B3B: 8F        .byte $8F   ; 
- D 0 - I - 0x02CB4C 0B:8B3C: 97        .byte $97   ; 
- D 0 - I - 0x02CB4D 0B:8B3D: 8B        .byte $8B   ; 
- D 0 - I - 0x02CB4E 0B:8B3E: 9C        .byte $9C   ; 
- D 0 - I - 0x02CB4F 0B:8B3F: 95        .byte $95   ; 
- D 0 - I - 0x02CB50 0B:8B40: 00        .byte $00   ; 
- D 0 - I - 0x02CB51 0B:8B41: 9F        .byte $9F   ; 
- D 0 - I - 0x02CB52 0B:8B42: 9D        .byte $9D   ; 
- D 0 - I - 0x02CB53 0B:8B43: 8F        .byte $8F   ; 
- D 0 - I - 0x02CB54 0B:8B44: 00        .byte $00   ; 
- D 0 - I - 0x02CB55 0B:8B45: 91        .byte $91   ; 
- D 0 - I - 0x02CB56 0B:8B46: 9C        .byte $9C   ; 
- D 0 - I - 0x02CB57 0B:8B47: 8B        .byte $8B   ; 
- D 0 - I - 0x02CB58 0B:8B48: 98        .byte $98   ; 
- D 0 - I - 0x02CB59 0B:8B49: 9E        .byte $9E   ; 
- D 0 - I - 0x02CB5A 0B:8B4A: 8F        .byte $8F   ; 
- D 0 - I - 0x02CB5B 0B:8B4B: 8E        .byte $8E   ; 
- D 0 - I - 0x02CB5C 0B:8B4C: 00        .byte $00   ; 
- D 0 - I - 0x02CB5D 0B:8B4D: 9E        .byte $9E   ; 
- D 0 - I - 0x02CB5E 0B:8B4E: 99        .byte $99   ; 
- D 0 - I - 0x02CB5F 0B:8B4F: 08        .byte $08   ; 
- D 0 - I - 0x02CB60 0B:8B50: 00        .byte $00   ; 
- D 0 - I - 0x02CB61 0B:8B51: 99        .byte $99   ; 
- D 0 - I - 0x02CB62 0B:8B52: 95        .byte $95   ; 
- D 0 - I - 0x02CB63 0B:8B53: 99        .byte $99   ; 
- D 0 - I - 0x02CB64 0B:8B54: 98        .byte $98   ; 
- D 0 - I - 0x02CB65 0B:8B55: 8B        .byte $8B   ; 
- D 0 - I - 0x02CB66 0B:8B56: 97        .byte $97   ; 
- D 0 - I - 0x02CB67 0B:8B57: 93        .byte $93   ; 
- D 0 - I - 0x02CB68 0B:8B58: 00        .byte $00   ; 
- D 0 - I - 0x02CB69 0B:8B59: 9F        .byte $9F   ; 
- D 0 - I - 0x02CB6A 0B:8B5A: 98        .byte $98   ; 
- D 0 - I - 0x02CB6B 0B:8B5B: 8E        .byte $8E   ; 
- D 0 - I - 0x02CB6C 0B:8B5C: 8F        .byte $8F   ; 
- D 0 - I - 0x02CB6D 0B:8B5D: 9C        .byte $9C   ; 
- D 0 - I - 0x02CB6E 0B:8B5E: 00        .byte $00   ; 
- D 0 - I - 0x02CB6F 0B:8B5F: 96        .byte $96   ; 
- D 0 - I - 0x02CB70 0B:8B60: 93        .byte $93   ; 
- D 0 - I - 0x02CB71 0B:8B61: 8D        .byte $8D   ; 
- D 0 - I - 0x02CB72 0B:8B62: 8F        .byte $8F   ; 
- D 0 - I - 0x02CB73 0B:8B63: 98        .byte $98   ; 
- D 0 - I - 0x02CB74 0B:8B64: 9D        .byte $9D   ; 
- D 0 - I - 0x02CB75 0B:8B65: 8F        .byte $8F   ; 
- D 0 - I - 0x02CB76 0B:8B66: 00        .byte $00   ; 
- D 0 - I - 0x02CB77 0B:8B67: 90        .byte $90   ; 
- D 0 - I - 0x02CB78 0B:8B68: 9C        .byte $9C   ; 
- D 0 - I - 0x02CB79 0B:8B69: 99        .byte $99   ; 
- D 0 - I - 0x02CB7A 0B:8B6A: 97        .byte $97   ; 
- D 0 - I - 0x02CB7B 0B:8B6B: 07        .byte $07   ; 
- D 0 - I - 0x02CB7C 0B:8B6C: 00        .byte $00   ; 
- D 0 - I - 0x02CB7D 0B:8B6D: 87        .byte $87   ; 
- D 0 - I - 0x02CB7E 0B:8B6E: 97        .byte $97   ; 
- D 0 - I - 0x02CB7F 0B:8B6F: 93        .byte $93   ; 
- D 0 - I - 0x02CB80 0B:8B70: 9C        .byte $9C   ; 
- D 0 - I - 0x02CB81 0B:8B71: 8B        .byte $8B   ; 
- D 0 - I - 0x02CB82 0B:8B72: 91        .byte $91   ; 
- D 0 - I - 0x02CB83 0B:8B73: 8F        .byte $8F   ; 
- D 0 - I - 0x02CB84 0B:8B74: 00        .byte $00   ; 
- D 0 - I - 0x02CB85 0B:8B75: C3        .byte $C3   ; 
- D 0 - I - 0x02CB86 0B:8B76: 9D        .byte $9D   ; 
- D 0 - I - 0x02CB87 0B:8B77: 89        .byte $89   ; 
- D 0 - I - 0x02CB88 0B:8B78: 8E        .byte $8E   ; 
- D 0 - I - 0x02CB89 0B:8B79: 93        .byte $93   ; 
- D 0 - I - 0x02CB8A 0B:8B7A: 99        .byte $99   ; 
- D 0 - I - 0x02CB8B 0B:8B7B: 9D        .byte $9D   ; 
- D 0 - I - 0x02CB8C 0B:8B7C: A8        .byte $A8   ; 
- D 0 - I - 0x02CB8D 0B:8B7D: 9F        .byte $9F   ; 
- D 0 - I - 0x02CB8E 0B:8B7E: 9D        .byte $9D   ; 
- D 0 - I - 0x02CB8F 0B:8B7F: 8B        .byte $8B   ; 
- D 0 - I - 0x02CB90 0B:8B80: A7        .byte $A7   ; 
- D 0 - I - 0x02CB91 0B:8B81: 33        .byte $33   ; 
- D 0 - I - 0x02CB92 0B:8B82: 00        .byte $00   ; 
- D 0 - I - 0x02CB93 0B:8B83: 8E        .byte $8E   ; 
- D 0 - I - 0x02CB94 0B:8B84: 9E        .byte $9E   ; 
- D 0 - I - 0x02CB95 0B:8B85: 97        .byte $97   ; 
- D 0 - I - 0x02CB96 0B:8B86: 00        .byte $00   ; 
- D 0 - I - 0x02CB97 0B:8B87: 8B        .byte $8B   ; 
- D 0 - I - 0x02CB98 0B:8B88: 98        .byte $98   ; 
- D 0 - I - 0x02CB99 0B:8B89: 8E        .byte $8E   ; 
- D 0 - I - 0x02CB9A 0B:8B8A: 00        .byte $00   ; 
- D 0 - I - 0x02CB9B 0B:8B8B: A6        .byte $A6   ; 
- D 0 - I - 0x02CB9C 0B:8B8C: 00        .byte $00   ; 
- D 0 - I - 0x02CB9D 0B:8B8D: 00        .byte $00   ; 
- D 0 - I - 0x02CB9E 0B:8B8E: 82        .byte $82   ; 
- D 0 - I - 0x02CB9F 0B:8B8F: 8A        .byte $8A   ; 
- D 0 - I - 0x02CBA0 0B:8B90: 8A        .byte $8A   ; 
- D 0 - I - 0x02CBA1 0B:8B91: 84        .byte $84   ; 
- D 0 - I - 0x02CBA2 0B:8B92: 12        .byte $12   ; 
- D 0 - I - 0x02CBA3 0B:8B93: 00        .byte $00   ; 
- D 0 - I - 0x02CBA4 0B:8B94: 8F        .byte $8F   ; 
- D 0 - I - 0x02CBA5 0B:8B95: 95        .byte $95   ; 
- D 0 - I - 0x02CBA6 0B:8B96: 99        .byte $99   ; 
- D 0 - I - 0x02CBA7 0B:8B97: 98        .byte $98   ; 
- D 0 - I - 0x02CBA8 0B:8B98: 8B        .byte $8B   ; 
- D 0 - I - 0x02CBA9 0B:8B99: 97        .byte $97   ; 
- D 0 - I - 0x02CBAA 0B:8B9A: 93        .byte $93   ; 
- D 0 - I - 0x02CBAB 0B:8B9B: 00        .byte $00   ; 
- D 0 - I - 0x02CBAC 0B:8B9C: 8D        .byte $8D   ; 
- D 0 - I - 0x02CBAD 0B:8B9D: 99        .byte $99   ; 
- D 0 - I - 0x02CBAE 0B:8B9E: A7        .byte $A7   ; 
- D 0 - I - 0x02CBAF 0B:8B9F: A8        .byte $A8   ; 
- D 0 - I - 0x02CBB0 0B:8BA0: 96        .byte $96   ; 
- D 0 - I - 0x02CBB1 0B:8BA1: 9E        .byte $9E   ; 
- D 0 - I - 0x02CBB2 0B:8BA2: 8E        .byte $8E   ; 
- D 0 - I - 0x02CBB3 0B:8BA3: A7        .byte $A7   ; 
- D 0 - I - 0x02CBB4 0B:8BA4: 0E        .byte $0E   ; 
- D 0 - I - 0x02CBB5 0B:8BA5: 00        .byte $00   ; 
- D 0 - I - 0x02CBB6 0B:8BA6: 94        .byte $94   ; 
- D 0 - I - 0x02CBB7 0B:8BA7: 8B        .byte $8B   ; 
- D 0 - I - 0x02CBB8 0B:8BA8: 96        .byte $96   ; 
- D 0 - I - 0x02CBB9 0B:8BA9: 96        .byte $96   ; 
- D 0 - I - 0x02CBBA 0B:8BAA: 00        .byte $00   ; 
- D 0 - I - 0x02CBBB 0B:8BAB: 9C        .byte $9C   ; 
- D 0 - I - 0x02CBBC 0B:8BAC: 93        .byte $93   ; 
- D 0 - I - 0x02CBBD 0B:8BAD: 91        .byte $91   ; 
- D 0 - I - 0x02CBBE 0B:8BAE: 92        .byte $92   ; 
- D 0 - I - 0x02CBBF 0B:8BAF: 9E        .byte $9E   ; 
- D 0 - I - 0x02CBC0 0B:8BB0: 9D        .byte $9D   ; 
- D 0 - I - 0x02CBC1 0B:8BB1: 00        .byte $00   ; 
- D 0 - I - 0x02CBC2 0B:8BB2: 9C        .byte $9C   ; 
- D 0 - I - 0x02CBC3 0B:8BB3: 8F        .byte $8F   ; 
- D 0 - I - 0x02CBC4 0B:8BB4: 9D        .byte $9D   ; 
- D 0 - I - 0x02CBC5 0B:8BB5: 8F        .byte $8F   ; 
- D 0 - I - 0x02CBC6 0B:8BB6: 9C        .byte $9C   ; 
- D 0 - I - 0x02CBC7 0B:8BB7: A0        .byte $A0   ; 
- D 0 - I - 0x02CBC8 0B:8BB8: 8F        .byte $8F   ; 
- D 0 - I - 0x02CBC9 0B:8BB9: 8E        .byte $8E   ; 
- D 0 - I - 0x02CBCA 0B:8BBA: A7        .byte $A7   ; 
- D 0 - I - 0x02CBCB 0B:8BBB: 2C        .byte $2C   ; 
- D 0 - I - 0x02CBCC 0B:8BBC: 00        .byte $00   ; 
- D 0 - I - 0x02CBCD 0B:8BBD: 94        .byte $94   ; 
- D 0 - I - 0x02CBCE 0B:8BBE: 96        .byte $96   ; 
- D 0 - I - 0x02CBCF 0B:8BBF: 93        .byte $93   ; 
- D 0 - I - 0x02CBD0 0B:8BC0: 8D        .byte $8D   ; 
- D 0 - I - 0x02CBD1 0B:8BC1: 8F        .byte $8F   ; 
- D 0 - I - 0x02CBD2 0B:8BC2: 98        .byte $98   ; 
- D 0 - I - 0x02CBD3 0B:8BC3: 9D        .byte $9D   ; 
- D 0 - I - 0x02CBD4 0B:8BC4: 8F        .byte $8F   ; 
- D 0 - I - 0x02CBD5 0B:8BC5: 8E        .byte $8E   ; 
- D 0 - I - 0x02CBD6 0B:8BC6: 00        .byte $00   ; 
- D 0 - I - 0x02CBD7 0B:8BC7: 8C        .byte $8C   ; 
- D 0 - I - 0x02CBD8 0B:8BC8: A3        .byte $A3   ; 
- D 0 - I - 0x02CBD9 0B:8BC9: 00        .byte $00   ; 
- D 0 - I - 0x02CBDA 0B:8BCA: 98        .byte $98   ; 
- D 0 - I - 0x02CBDB 0B:8BCB: 93        .byte $93   ; 
- D 0 - I - 0x02CBDC 0B:8BCC: 98        .byte $98   ; 
- D 0 - I - 0x02CBDD 0B:8BCD: 9E        .byte $9E   ; 
- D 0 - I - 0x02CBDE 0B:8BCE: 8F        .byte $8F   ; 
- D 0 - I - 0x02CBDF 0B:8BCF: 98        .byte $98   ; 
- D 0 - I - 0x02CBE0 0B:8BD0: 8E        .byte $8E   ; 
- D 0 - I - 0x02CBE1 0B:8BD1: 99        .byte $99   ; 
- D 0 - I - 0x02CBE2 0B:8BD2: 7E        .byte $7E   ; 
- D 0 - I - 0x02CBE3 0B:8BD3: 00        .byte $00   ; 
- D 0 - I - 0x02CBE4 0B:8BD4: 7E        .byte $7E   ; 
- D 0 - I - 0x02CBE5 0B:8BD5: 00        .byte $00   ; 
- D 0 - I - 0x02CBE6 0B:8BD6: 7E        .byte $7E   ; 
- D 0 - I - 0x02CBE7 0B:8BD7: 00        .byte $00   ; 
- D 0 - I - 0x02CBE8 0B:8BD8: 4C        .byte $4C   ; 
- D 0 - I - 0x02CBE9 0B:8BD9: 00        .byte $00   ; 
- D 0 - I - 0x02CBEA 0B:8BDA: FF        .byte $FF   ; 



.export _off003_0x02CBEB_07
_off003_0x02CBEB_07:
- D 0 - I - 0x02CBEB 0B:8BDB: 00        .byte $00   ; 
- D 0 - I - 0x02CBEC 0B:8BDC: 20        .byte $20   ; 
- D 0 - I - 0x02CBED 0B:8BDD: 7E        .byte $7E   ; 
- D 0 - I - 0x02CBEE 0B:8BDE: 00        .byte $00   ; 
- D 0 - I - 0x02CBEF 0B:8BDF: 42        .byte $42   ; 
- D 0 - I - 0x02CBF0 0B:8BE0: 00        .byte $00   ; 
- D 0 - I - 0x02CBF1 0B:8BE1: 13        .byte $13   ; 
- D 0 - I - 0x02CBF2 0B:8BE2: 01        .byte $01   ; 
- D 0 - I - 0x02CBF3 0B:8BE3: C4        .byte $C4   ; 
- D 0 - I - 0x02CBF4 0B:8BE4: 3D        .byte $3D   ; 
- D 0 - I - 0x02CBF5 0B:8BE5: 85        .byte $85   ; 
- D 0 - I - 0x02CBF6 0B:8BE6: 00        .byte $00   ; 
- D 0 - I - 0x02CBF7 0B:8BE7: 40        .byte $40   ; 
- D 0 - I - 0x02CBF8 0B:8BE8: 40        .byte $40   ; 
- D 0 - I - 0x02CBF9 0B:8BE9: 00        .byte $00   ; 
- D 0 - I - 0x02CBFA 0B:8BEA: 3F        .byte $3F   ; 
- D 0 - I - 0x02CBFB 0B:8BEB: 04        .byte $04   ; 
- D 0 - I - 0x02CBFC 0B:8BEC: 00        .byte $00   ; 
- D 0 - I - 0x02CBFD 0B:8BED: 03        .byte $03   ; 
- D 0 - I - 0x02CBFE 0B:8BEE: 02        .byte $02   ; 
- D 0 - I - 0x02CBFF 0B:8BEF: C4        .byte $C4   ; 
- D 0 - I - 0x02CC00 0B:8BF0: 03        .byte $03   ; 
- D 0 - I - 0x02CC01 0B:8BF1: 81        .byte $81   ; 
- D 0 - I - 0x02CC02 0B:8BF2: 02        .byte $02   ; 
- D 0 - I - 0x02CC03 0B:8BF3: C4        .byte $C4   ; 
- D 0 - I - 0x02CC04 0B:8BF4: 07        .byte $07   ; 
- D 0 - I - 0x02CC05 0B:8BF5: 88        .byte $88   ; 
- D 0 - I - 0x02CC06 0B:8BF6: 02        .byte $02   ; 
- D 0 - I - 0x02CC07 0B:8BF7: 0B        .byte $0B   ; 
- D 0 - I - 0x02CC08 0B:8BF8: 05        .byte $05   ; 
- D 0 - I - 0x02CC09 0B:8BF9: 05        .byte $05   ; 
- D 0 - I - 0x02CC0A 0B:8BFA: 06        .byte $06   ; 
- D 0 - I - 0x02CC0B 0B:8BFB: 41        .byte $41   ; 
- D 0 - I - 0x02CC0C 0B:8BFC: 42        .byte $42   ; 
- D 0 - I - 0x02CC0D 0B:8BFD: 3D        .byte $3D   ; 
- D 0 - I - 0x02CC0E 0B:8BFE: C4        .byte $C4   ; 
- D 0 - I - 0x02CC0F 0B:8BFF: 43        .byte $43   ; 
- D 0 - I - 0x02CC10 0B:8C00: 84        .byte $84   ; 
- D 0 - I - 0x02CC11 0B:8C01: 45        .byte $45   ; 
- D 0 - I - 0x02CC12 0B:8C02: 45        .byte $45   ; 
- D 0 - I - 0x02CC13 0B:8C03: 46        .byte $46   ; 
- D 0 - I - 0x02CC14 0B:8C04: 44        .byte $44   ; 
- D 0 - I - 0x02CC15 0B:8C05: C4        .byte $C4   ; 
- D 0 - I - 0x02CC16 0B:8C06: 47        .byte $47   ; 
- D 0 - I - 0x02CC17 0B:8C07: 03        .byte $03   ; 
- D 0 - I - 0x02CC18 0B:8C08: 02        .byte $02   ; 
- D 0 - I - 0x02CC19 0B:8C09: 85        .byte $85   ; 
- D 0 - I - 0x02CC1A 0B:8C0A: 0C        .byte $0C   ; 
- D 0 - I - 0x02CC1B 0B:8C0B: 0D        .byte $0D   ; 
- D 0 - I - 0x02CC1C 0B:8C0C: 0D        .byte $0D   ; 
- D 0 - I - 0x02CC1D 0B:8C0D: 0E        .byte $0E   ; 
- D 0 - I - 0x02CC1E 0B:8C0E: 02        .byte $02   ; 
- D 0 - I - 0x02CC1F 0B:8C0F: C4        .byte $C4   ; 
- D 0 - I - 0x02CC20 0B:8C10: 0F        .byte $0F   ; 
- D 0 - I - 0x02CC21 0B:8C11: 87        .byte $87   ; 
- D 0 - I - 0x02CC22 0B:8C12: 02        .byte $02   ; 
- D 0 - I - 0x02CC23 0B:8C13: 0C        .byte $0C   ; 
- D 0 - I - 0x02CC24 0B:8C14: 0D        .byte $0D   ; 
- D 0 - I - 0x02CC25 0B:8C15: 0D        .byte $0D   ; 
- D 0 - I - 0x02CC26 0B:8C16: 0E        .byte $0E   ; 
- D 0 - I - 0x02CC27 0B:8C17: 4B        .byte $4B   ; 
- D 0 - I - 0x02CC28 0B:8C18: 4C        .byte $4C   ; 
- D 0 - I - 0x02CC29 0B:8C19: C3        .byte $C3   ; 
- D 0 - I - 0x02CC2A 0B:8C1A: 3D        .byte $3D   ; 
- D 0 - I - 0x02CC2B 0B:8C1B: 86        .byte $86   ; 
- D 0 - I - 0x02CC2C 0B:8C1C: 4D        .byte $4D   ; 
- D 0 - I - 0x02CC2D 0B:8C1D: 4E        .byte $4E   ; 
- D 0 - I - 0x02CC2E 0B:8C1E: 4D        .byte $4D   ; 
- D 0 - I - 0x02CC2F 0B:8C1F: 4F        .byte $4F   ; 
- D 0 - I - 0x02CC30 0B:8C20: 50        .byte $50   ; 
- D 0 - I - 0x02CC31 0B:8C21: 3F        .byte $3F   ; 
- D 0 - I - 0x02CC32 0B:8C22: C4        .byte $C4   ; 
- D 0 - I - 0x02CC33 0B:8C23: 51        .byte $51   ; 
- D 0 - I - 0x02CC34 0B:8C24: 03        .byte $03   ; 
- D 0 - I - 0x02CC35 0B:8C25: 02        .byte $02   ; 
- D 0 - I - 0x02CC36 0B:8C26: 84        .byte $84   ; 
- D 0 - I - 0x02CC37 0B:8C27: 0C        .byte $0C   ; 
- D 0 - I - 0x02CC38 0B:8C28: 0D        .byte $0D   ; 
- D 0 - I - 0x02CC39 0B:8C29: 0D        .byte $0D   ; 
- D 0 - I - 0x02CC3A 0B:8C2A: 0E        .byte $0E   ; 
- D 0 - I - 0x02CC3B 0B:8C2B: C6        .byte $C6   ; 
- D 0 - I - 0x02CC3C 0B:8C2C: 13        .byte $13   ; 
- D 0 - I - 0x02CC3D 0B:8C2D: 8F        .byte $8F   ; 
- D 0 - I - 0x02CC3E 0B:8C2E: 0C        .byte $0C   ; 
- D 0 - I - 0x02CC3F 0B:8C2F: 0D        .byte $0D   ; 
- D 0 - I - 0x02CC40 0B:8C30: 0D        .byte $0D   ; 
- D 0 - I - 0x02CC41 0B:8C31: 0E        .byte $0E   ; 
- D 0 - I - 0x02CC42 0B:8C32: 55        .byte $55   ; 
- D 0 - I - 0x02CC43 0B:8C33: 56        .byte $56   ; 
- D 0 - I - 0x02CC44 0B:8C34: 3D        .byte $3D   ; 
- D 0 - I - 0x02CC45 0B:8C35: 43        .byte $43   ; 
- D 0 - I - 0x02CC46 0B:8C36: 44        .byte $44   ; 
- D 0 - I - 0x02CC47 0B:8C37: 57        .byte $57   ; 
- D 0 - I - 0x02CC48 0B:8C38: 58        .byte $58   ; 
- D 0 - I - 0x02CC49 0B:8C39: 57        .byte $57   ; 
- D 0 - I - 0x02CC4A 0B:8C3A: 59        .byte $59   ; 
- D 0 - I - 0x02CC4B 0B:8C3B: 46        .byte $46   ; 
- D 0 - I - 0x02CC4C 0B:8C3C: 44        .byte $44   ; 
- D 0 - I - 0x02CC4D 0B:8C3D: C4        .byte $C4   ; 
- D 0 - I - 0x02CC4E 0B:8C3E: 5A        .byte $5A   ; 
- D 0 - I - 0x02CC4F 0B:8C3F: 03        .byte $03   ; 
- D 0 - I - 0x02CC50 0B:8C40: 19        .byte $19   ; 
- D 0 - I - 0x02CC51 0B:8C41: 85        .byte $85   ; 
- D 0 - I - 0x02CC52 0B:8C42: 1A        .byte $1A   ; 
- D 0 - I - 0x02CC53 0B:8C43: 1B        .byte $1B   ; 
- D 0 - I - 0x02CC54 0B:8C44: 1B        .byte $1B   ; 
- D 0 - I - 0x02CC55 0B:8C45: 1C        .byte $1C   ; 
- D 0 - I - 0x02CC56 0B:8C46: 19        .byte $19   ; 
- D 0 - I - 0x02CC57 0B:8C47: C4        .byte $C4   ; 
- D 0 - I - 0x02CC58 0B:8C48: 1D        .byte $1D   ; 
- D 0 - I - 0x02CC59 0B:8C49: C3        .byte $C3   ; 
- D 0 - I - 0x02CC5A 0B:8C4A: 19        .byte $19   ; 
- D 0 - I - 0x02CC5B 0B:8C4B: 8E        .byte $8E   ; 
- D 0 - I - 0x02CC5C 0B:8C4C: 1B        .byte $1B   ; 
- D 0 - I - 0x02CC5D 0B:8C4D: 1C        .byte $1C   ; 
- D 0 - I - 0x02CC5E 0B:8C4E: 19        .byte $19   ; 
- D 0 - I - 0x02CC5F 0B:8C4F: 19        .byte $19   ; 
- D 0 - I - 0x02CC60 0B:8C50: 5E        .byte $5E   ; 
- D 0 - I - 0x02CC61 0B:8C51: 3E        .byte $3E   ; 
- D 0 - I - 0x02CC62 0B:8C52: 3F        .byte $3F   ; 
- D 0 - I - 0x02CC63 0B:8C53: 00        .byte $00   ; 
- D 0 - I - 0x02CC64 0B:8C54: 4D        .byte $4D   ; 
- D 0 - I - 0x02CC65 0B:8C55: 4E        .byte $4E   ; 
- D 0 - I - 0x02CC66 0B:8C56: 5F        .byte $5F   ; 
- D 0 - I - 0x02CC67 0B:8C57: 5F        .byte $5F   ; 
- D 0 - I - 0x02CC68 0B:8C58: 3F        .byte $3F   ; 
- D 0 - I - 0x02CC69 0B:8C59: 5A        .byte $5A   ; 
- D 0 - I - 0x02CC6A 0B:8C5A: C3        .byte $C3   ; 
- D 0 - I - 0x02CC6B 0B:8C5B: 60        .byte $60   ; 
- D 0 - I - 0x02CC6C 0B:8C5C: 03        .byte $03   ; 
- D 0 - I - 0x02CC6D 0B:8C5D: 19        .byte $19   ; 
- D 0 - I - 0x02CC6E 0B:8C5E: 85        .byte $85   ; 
- D 0 - I - 0x02CC6F 0B:8C5F: 1A        .byte $1A   ; 
- D 0 - I - 0x02CC70 0B:8C60: 1B        .byte $1B   ; 
- D 0 - I - 0x02CC71 0B:8C61: 1B        .byte $1B   ; 
- D 0 - I - 0x02CC72 0B:8C62: 1C        .byte $1C   ; 
- D 0 - I - 0x02CC73 0B:8C63: 19        .byte $19   ; 
- D 0 - I - 0x02CC74 0B:8C64: C4        .byte $C4   ; 
- D 0 - I - 0x02CC75 0B:8C65: 21        .byte $21   ; 
- D 0 - I - 0x02CC76 0B:8C66: C3        .byte $C3   ; 
- D 0 - I - 0x02CC77 0B:8C67: 19        .byte $19   ; 
- D 0 - I - 0x02CC78 0B:8C68: 91        .byte $91   ; 
- D 0 - I - 0x02CC79 0B:8C69: 1B        .byte $1B   ; 
- D 0 - I - 0x02CC7A 0B:8C6A: 1C        .byte $1C   ; 
- D 0 - I - 0x02CC7B 0B:8C6B: 19        .byte $19   ; 
- D 0 - I - 0x02CC7C 0B:8C6C: 19        .byte $19   ; 
- D 0 - I - 0x02CC7D 0B:8C6D: 5E        .byte $5E   ; 
- D 0 - I - 0x02CC7E 0B:8C6E: 43        .byte $43   ; 
- D 0 - I - 0x02CC7F 0B:8C6F: 44        .byte $44   ; 
- D 0 - I - 0x02CC80 0B:8C70: 46        .byte $46   ; 
- D 0 - I - 0x02CC81 0B:8C71: 57        .byte $57   ; 
- D 0 - I - 0x02CC82 0B:8C72: 58        .byte $58   ; 
- D 0 - I - 0x02CC83 0B:8C73: 63        .byte $63   ; 
- D 0 - I - 0x02CC84 0B:8C74: 63        .byte $63   ; 
- D 0 - I - 0x02CC85 0B:8C75: 44        .byte $44   ; 
- D 0 - I - 0x02CC86 0B:8C76: 64        .byte $64   ; 
- D 0 - I - 0x02CC87 0B:8C77: 65        .byte $65   ; 
- D 0 - I - 0x02CC88 0B:8C78: 52        .byte $52   ; 
- D 0 - I - 0x02CC89 0B:8C79: 52        .byte $52   ; 
- D 0 - I - 0x02CC8A 0B:8C7A: 03        .byte $03   ; 
- D 0 - I - 0x02CC8B 0B:8C7B: 19        .byte $19   ; 
- D 0 - I - 0x02CC8C 0B:8C7C: 84        .byte $84   ; 
- D 0 - I - 0x02CC8D 0B:8C7D: 25        .byte $25   ; 
- D 0 - I - 0x02CC8E 0B:8C7E: 26        .byte $26   ; 
- D 0 - I - 0x02CC8F 0B:8C7F: 26        .byte $26   ; 
- D 0 - I - 0x02CC90 0B:8C80: 27        .byte $27   ; 
- D 0 - I - 0x02CC91 0B:8C81: 06        .byte $06   ; 
- D 0 - I - 0x02CC92 0B:8C82: 19        .byte $19   ; 
- D 0 - I - 0x02CC93 0B:8C83: 87        .byte $87   ; 
- D 0 - I - 0x02CC94 0B:8C84: 25        .byte $25   ; 
- D 0 - I - 0x02CC95 0B:8C85: 26        .byte $26   ; 
- D 0 - I - 0x02CC96 0B:8C86: 26        .byte $26   ; 
- D 0 - I - 0x02CC97 0B:8C87: 27        .byte $27   ; 
- D 0 - I - 0x02CC98 0B:8C88: 19        .byte $19   ; 
- D 0 - I - 0x02CC99 0B:8C89: 19        .byte $19   ; 
- D 0 - I - 0x02CC9A 0B:8C8A: 5E        .byte $5E   ; 
- D 0 - I - 0x02CC9B 0B:8C8B: C3        .byte $C3   ; 
- D 0 - I - 0x02CC9C 0B:8C8C: 66        .byte $66   ; 
- D 0 - I - 0x02CC9D 0B:8C8D: 81        .byte $81   ; 
- D 0 - I - 0x02CC9E 0B:8C8E: 68        .byte $68   ; 
- D 0 - I - 0x02CC9F 0B:8C8F: 03        .byte $03   ; 
- D 0 - I - 0x02CCA0 0B:8C90: 00        .byte $00   ; 
- D 0 - I - 0x02CCA1 0B:8C91: 81        .byte $81   ; 
- D 0 - I - 0x02CCA2 0B:8C92: 3F        .byte $3F   ; 
- D 0 - I - 0x02CCA3 0B:8C93: 04        .byte $04   ; 
- D 0 - I - 0x02CCA4 0B:8C94: 00        .byte $00   ; 
- D 0 - I - 0x02CCA5 0B:8C95: 05        .byte $05   ; 
- D 0 - I - 0x02CCA6 0B:8C96: 19        .byte $19   ; 
- D 0 - I - 0x02CCA7 0B:8C97: C3        .byte $C3   ; 
- D 0 - I - 0x02CCA8 0B:8C98: 28        .byte $28   ; 
- D 0 - I - 0x02CCA9 0B:8C99: 8C        .byte $8C   ; 
- D 0 - I - 0x02CCAA 0B:8C9A: 29        .byte $29   ; 
- D 0 - I - 0x02CCAB 0B:8C9B: 2A        .byte $2A   ; 
- D 0 - I - 0x02CCAC 0B:8C9C: 29        .byte $29   ; 
- D 0 - I - 0x02CCAD 0B:8C9D: 2B        .byte $2B   ; 
- D 0 - I - 0x02CCAE 0B:8C9E: 2C        .byte $2C   ; 
- D 0 - I - 0x02CCAF 0B:8C9F: 2C        .byte $2C   ; 
- D 0 - I - 0x02CCB0 0B:8CA0: 2D        .byte $2D   ; 
- D 0 - I - 0x02CCB1 0B:8CA1: 2C        .byte $2C   ; 
- D 0 - I - 0x02CCB2 0B:8CA2: 2C        .byte $2C   ; 
- D 0 - I - 0x02CCB3 0B:8CA3: 69        .byte $69   ; 
- D 0 - I - 0x02CCB4 0B:8CA4: 19        .byte $19   ; 
- D 0 - I - 0x02CCB5 0B:8CA5: 5E        .byte $5E   ; 
- D 0 - I - 0x02CCB6 0B:8CA6: C3        .byte $C3   ; 
- D 0 - I - 0x02CCB7 0B:8CA7: 6A        .byte $6A   ; 
- D 0 - I - 0x02CCB8 0B:8CA8: 85        .byte $85   ; 
- D 0 - I - 0x02CCB9 0B:8CA9: 6C        .byte $6C   ; 
- D 0 - I - 0x02CCBA 0B:8CAA: 6D        .byte $6D   ; 
- D 0 - I - 0x02CCBB 0B:8CAB: 6D        .byte $6D   ; 
- D 0 - I - 0x02CCBC 0B:8CAC: 00        .byte $00   ; 
- D 0 - I - 0x02CCBD 0B:8CAD: 6E        .byte $6E   ; 
- D 0 - I - 0x02CCBE 0B:8CAE: 04        .byte $04   ; 
- D 0 - I - 0x02CCBF 0B:8CAF: 00        .byte $00   ; 
- D 0 - I - 0x02CCC0 0B:8CB0: 85        .byte $85   ; 
- D 0 - I - 0x02CCC1 0B:8CB1: 2E        .byte $2E   ; 
- D 0 - I - 0x02CCC2 0B:8CB2: 2F        .byte $2F   ; 
- D 0 - I - 0x02CCC3 0B:8CB3: 2E        .byte $2E   ; 
- D 0 - I - 0x02CCC4 0B:8CB4: 2F        .byte $2F   ; 
- D 0 - I - 0x02CCC5 0B:8CB5: 2E        .byte $2E   ; 
- D 0 - I - 0x02CCC6 0B:8CB6: C3        .byte $C3   ; 
- D 0 - I - 0x02CCC7 0B:8CB7: 30        .byte $30   ; 
- D 0 - I - 0x02CCC8 0B:8CB8: 8D        .byte $8D   ; 
- D 0 - I - 0x02CCC9 0B:8CB9: 31        .byte $31   ; 
- D 0 - I - 0x02CCCA 0B:8CBA: 32        .byte $32   ; 
- D 0 - I - 0x02CCCB 0B:8CBB: 31        .byte $31   ; 
- D 0 - I - 0x02CCCC 0B:8CBC: 33        .byte $33   ; 
- D 0 - I - 0x02CCCD 0B:8CBD: 34        .byte $34   ; 
- D 0 - I - 0x02CCCE 0B:8CBE: 34        .byte $34   ; 
- D 0 - I - 0x02CCCF 0B:8CBF: 35        .byte $35   ; 
- D 0 - I - 0x02CCD0 0B:8CC0: 34        .byte $34   ; 
- D 0 - I - 0x02CCD1 0B:8CC1: 34        .byte $34   ; 
- D 0 - I - 0x02CCD2 0B:8CC2: 6F        .byte $6F   ; 
- D 0 - I - 0x02CCD3 0B:8CC3: 70        .byte $70   ; 
- D 0 - I - 0x02CCD4 0B:8CC4: 5E        .byte $5E   ; 
- D 0 - I - 0x02CCD5 0B:8CC5: 71        .byte $71   ; 
- D 0 - I - 0x02CCD6 0B:8CC6: 0B        .byte $0B   ; 
- D 0 - I - 0x02CCD7 0B:8CC7: 72        .byte $72   ; 
- D 0 - I - 0x02CCD8 0B:8CC8: 85        .byte $85   ; 
- D 0 - I - 0x02CCD9 0B:8CC9: 2F        .byte $2F   ; 
- D 0 - I - 0x02CCDA 0B:8CCA: 2E        .byte $2E   ; 
- D 0 - I - 0x02CCDB 0B:8CCB: 2F        .byte $2F   ; 
- D 0 - I - 0x02CCDC 0B:8CCC: 2E        .byte $2E   ; 
- D 0 - I - 0x02CCDD 0B:8CCD: 2F        .byte $2F   ; 
- D 0 - I - 0x02CCDE 0B:8CCE: C3        .byte $C3   ; 
- D 0 - I - 0x02CCDF 0B:8CCF: 36        .byte $36   ; 
- D 0 - I - 0x02CCE0 0B:8CD0: 83        .byte $83   ; 
- D 0 - I - 0x02CCE1 0B:8CD1: 37        .byte $37   ; 
- D 0 - I - 0x02CCE2 0B:8CD2: 38        .byte $38   ; 
- D 0 - I - 0x02CCE3 0B:8CD3: 37        .byte $37   ; 
- D 0 - I - 0x02CCE4 0B:8CD4: C4        .byte $C4   ; 
- D 0 - I - 0x02CCE5 0B:8CD5: 39        .byte $39   ; 
- D 0 - I - 0x02CCE6 0B:8CD6: 85        .byte $85   ; 
- D 0 - I - 0x02CCE7 0B:8CD7: 3B        .byte $3B   ; 
- D 0 - I - 0x02CCE8 0B:8CD8: 3B        .byte $3B   ; 
- D 0 - I - 0x02CCE9 0B:8CD9: 73        .byte $73   ; 
- D 0 - I - 0x02CCEA 0B:8CDA: 74        .byte $74   ; 
- D 0 - I - 0x02CCEB 0B:8CDB: 5E        .byte $5E   ; 
- D 0 - I - 0x02CCEC 0B:8CDC: C3        .byte $C3   ; 
- D 0 - I - 0x02CCED 0B:8CDD: 75        .byte $75   ; 
- D 0 - I - 0x02CCEE 0B:8CDE: 81        .byte $81   ; 
- D 0 - I - 0x02CCEF 0B:8CDF: 75        .byte $75   ; 
- D 0 - I - 0x02CCF0 0B:8CE0: C3        .byte $C3   ; 
- D 0 - I - 0x02CCF1 0B:8CE1: 75        .byte $75   ; 
- D 0 - I - 0x02CCF2 0B:8CE2: 81        .byte $81   ; 
- D 0 - I - 0x02CCF3 0B:8CE3: 75        .byte $75   ; 
- D 0 - I - 0x02CCF4 0B:8CE4: C3        .byte $C3   ; 
- D 0 - I - 0x02CCF5 0B:8CE5: 75        .byte $75   ; 
- D 0 - I - 0x02CCF6 0B:8CE6: 86        .byte $86   ; 
- D 0 - I - 0x02CCF7 0B:8CE7: 75        .byte $75   ; 
- D 0 - I - 0x02CCF8 0B:8CE8: 2E        .byte $2E   ; 
- D 0 - I - 0x02CCF9 0B:8CE9: 2F        .byte $2F   ; 
- D 0 - I - 0x02CCFA 0B:8CEA: 2E        .byte $2E   ; 
- D 0 - I - 0x02CCFB 0B:8CEB: 2F        .byte $2F   ; 
- D 0 - I - 0x02CCFC 0B:8CEC: 2E        .byte $2E   ; 
- D 0 - I - 0x02CCFD 0B:8CED: C3        .byte $C3   ; 
- D 0 - I - 0x02CCFE 0B:8CEE: 7F        .byte $7F   ; 
- D 0 - I - 0x02CCFF 0B:8CEF: C8        .byte $C8   ; 
- D 0 - I - 0x02CD00 0B:8CF0: 80        .byte $80   ; 
- D 0 - I - 0x02CD01 0B:8CF1: C3        .byte $C3   ; 
- D 0 - I - 0x02CD02 0B:8CF2: A1        .byte $A1   ; 
- D 0 - I - 0x02CD03 0B:8CF3: 81        .byte $81   ; 
- D 0 - I - 0x02CD04 0B:8CF4: 5E        .byte $5E   ; 
- D 0 - I - 0x02CD05 0B:8CF5: C3        .byte $C3   ; 
- D 0 - I - 0x02CD06 0B:8CF6: A4        .byte $A4   ; 
- D 0 - I - 0x02CD07 0B:8CF7: 81        .byte $81   ; 
- D 0 - I - 0x02CD08 0B:8CF8: A4        .byte $A4   ; 
- D 0 - I - 0x02CD09 0B:8CF9: C3        .byte $C3   ; 
- D 0 - I - 0x02CD0A 0B:8CFA: A4        .byte $A4   ; 
- D 0 - I - 0x02CD0B 0B:8CFB: 81        .byte $81   ; 
- D 0 - I - 0x02CD0C 0B:8CFC: A4        .byte $A4   ; 
- D 0 - I - 0x02CD0D 0B:8CFD: C3        .byte $C3   ; 
- D 0 - I - 0x02CD0E 0B:8CFE: A4        .byte $A4   ; 
- D 0 - I - 0x02CD0F 0B:8CFF: 89        .byte $89   ; 
- D 0 - I - 0x02CD10 0B:8D00: A4        .byte $A4   ; 
- D 0 - I - 0x02CD11 0B:8D01: 2F        .byte $2F   ; 
- D 0 - I - 0x02CD12 0B:8D02: 2E        .byte $2E   ; 
- D 0 - I - 0x02CD13 0B:8D03: 2F        .byte $2F   ; 
- D 0 - I - 0x02CD14 0B:8D04: 2E        .byte $2E   ; 
- D 0 - I - 0x02CD15 0B:8D05: 2F        .byte $2F   ; 
- D 0 - I - 0x02CD16 0B:8D06: 2E        .byte $2E   ; 
- D 0 - I - 0x02CD17 0B:8D07: 88        .byte $88   ; 
- D 0 - I - 0x02CD18 0B:8D08: 89        .byte $89   ; 
- D 0 - I - 0x02CD19 0B:8D09: C6        .byte $C6   ; 
- D 0 - I - 0x02CD1A 0B:8D0A: 88        .byte $88   ; 
- D 0 - I - 0x02CD1B 0B:8D0B: 82        .byte $82   ; 
- D 0 - I - 0x02CD1C 0B:8D0C: 02        .byte $02   ; 
- D 0 - I - 0x02CD1D 0B:8D0D: 02        .byte $02   ; 
- D 0 - I - 0x02CD1E 0B:8D0E: C3        .byte $C3   ; 
- D 0 - I - 0x02CD1F 0B:8D0F: A7        .byte $A7   ; 
- D 0 - I - 0x02CD20 0B:8D10: 8D        .byte $8D   ; 
- D 0 - I - 0x02CD21 0B:8D11: 5E        .byte $5E   ; 
- D 0 - I - 0x02CD22 0B:8D12: AA        .byte $AA   ; 
- D 0 - I - 0x02CD23 0B:8D13: AB        .byte $AB   ; 
- D 0 - I - 0x02CD24 0B:8D14: A4        .byte $A4   ; 
- D 0 - I - 0x02CD25 0B:8D15: A4        .byte $A4   ; 
- D 0 - I - 0x02CD26 0B:8D16: AA        .byte $AA   ; 
- D 0 - I - 0x02CD27 0B:8D17: AB        .byte $AB   ; 
- D 0 - I - 0x02CD28 0B:8D18: A4        .byte $A4   ; 
- D 0 - I - 0x02CD29 0B:8D19: A4        .byte $A4   ; 
- D 0 - I - 0x02CD2A 0B:8D1A: AA        .byte $AA   ; 
- D 0 - I - 0x02CD2B 0B:8D1B: AB        .byte $AB   ; 
- D 0 - I - 0x02CD2C 0B:8D1C: A4        .byte $A4   ; 
- D 0 - I - 0x02CD2D 0B:8D1D: A4        .byte $A4   ; 
- D 0 - I - 0x02CD2E 0B:8D1E: 0A        .byte $0A   ; 
- D 0 - I - 0x02CD2F 0B:8D1F: 8E        .byte $8E   ; 
- D 0 - I - 0x02CD30 0B:8D20: C5        .byte $C5   ; 
- D 0 - I - 0x02CD31 0B:8D21: 8F        .byte $8F   ; 
- D 0 - I - 0x02CD32 0B:8D22: 81        .byte $81   ; 
- D 0 - I - 0x02CD33 0B:8D23: 93        .byte $93   ; 
- D 0 - I - 0x02CD34 0B:8D24: C4        .byte $C4   ; 
- D 0 - I - 0x02CD35 0B:8D25: AC        .byte $AC   ; 
- D 0 - I - 0x02CD36 0B:8D26: C3        .byte $C3   ; 
- D 0 - I - 0x02CD37 0B:8D27: AF        .byte $AF   ; 
- D 0 - I - 0x02CD38 0B:8D28: 81        .byte $81   ; 
- D 0 - I - 0x02CD39 0B:8D29: AF        .byte $AF   ; 
- D 0 - I - 0x02CD3A 0B:8D2A: C3        .byte $C3   ; 
- D 0 - I - 0x02CD3B 0B:8D2B: AF        .byte $AF   ; 
- D 0 - I - 0x02CD3C 0B:8D2C: 81        .byte $81   ; 
- D 0 - I - 0x02CD3D 0B:8D2D: AF        .byte $AF   ; 
- D 0 - I - 0x02CD3E 0B:8D2E: C3        .byte $C3   ; 
- D 0 - I - 0x02CD3F 0B:8D2F: AF        .byte $AF   ; 
- D 0 - I - 0x02CD40 0B:8D30: 81        .byte $81   ; 
- D 0 - I - 0x02CD41 0B:8D31: AF        .byte $AF   ; 
- D 0 - I - 0x02CD42 0B:8D32: 0A        .byte $0A   ; 
- D 0 - I - 0x02CD43 0B:8D33: 94        .byte $94   ; 
- D 0 - I - 0x02CD44 0B:8D34: C5        .byte $C5   ; 
- D 0 - I - 0x02CD45 0B:8D35: 95        .byte $95   ; 
- D 0 - I - 0x02CD46 0B:8D36: 81        .byte $81   ; 
- D 0 - I - 0x02CD47 0B:8D37: 99        .byte $99   ; 
- D 0 - I - 0x02CD48 0B:8D38: C3        .byte $C3   ; 
- D 0 - I - 0x02CD49 0B:8D39: B2        .byte $B2   ; 
- D 0 - I - 0x02CD4A 0B:8D3A: 0D        .byte $0D   ; 
- D 0 - I - 0x02CD4B 0B:8D3B: 94        .byte $94   ; 
- D 0 - I - 0x02CD4C 0B:8D3C: 0F        .byte $0F   ; 
- D 0 - I - 0x02CD4D 0B:8D3D: 9A        .byte $9A   ; 
- D 0 - I - 0x02CD4E 0B:8D3E: 81        .byte $81   ; 
- D 0 - I - 0x02CD4F 0B:8D3F: 9B        .byte $9B   ; 
- D 0 - I - 0x02CD50 0B:8D40: 0C        .byte $0C   ; 
- D 0 - I - 0x02CD51 0B:8D41: 9A        .byte $9A   ; 
- D 0 - I - 0x02CD52 0B:8D42: 81        .byte $81   ; 
- D 0 - I - 0x02CD53 0B:8D43: B5        .byte $B5   ; 
- D 0 - I - 0x02CD54 0B:8D44: 03        .byte $03   ; 
- D 0 - I - 0x02CD55 0B:8D45: 9A        .byte $9A   ; 
- D 0 - I - 0x02CD56 0B:8D46: 0F        .byte $0F   ; 
- D 0 - I - 0x02CD57 0B:8D47: 9C        .byte $9C   ; 
- D 0 - I - 0x02CD58 0B:8D48: 81        .byte $81   ; 
- D 0 - I - 0x02CD59 0B:8D49: 9D        .byte $9D   ; 
- D 0 - I - 0x02CD5A 0B:8D4A: 0C        .byte $0C   ; 
- D 0 - I - 0x02CD5B 0B:8D4B: 9C        .byte $9C   ; 
- D 0 - I - 0x02CD5C 0B:8D4C: 81        .byte $81   ; 
- D 0 - I - 0x02CD5D 0B:8D4D: B6        .byte $B6   ; 
- D 0 - I - 0x02CD5E 0B:8D4E: 03        .byte $03   ; 
- D 0 - I - 0x02CD5F 0B:8D4F: 9C        .byte $9C   ; 
- D 0 - I - 0x02CD60 0B:8D50: 0E        .byte $0E   ; 
- D 0 - I - 0x02CD61 0B:8D51: 9E        .byte $9E   ; 
- D 0 - I - 0x02CD62 0B:8D52: 81        .byte $81   ; 
- D 0 - I - 0x02CD63 0B:8D53: 9F        .byte $9F   ; 
- D 0 - I - 0x02CD64 0B:8D54: 0D        .byte $0D   ; 
- D 0 - I - 0x02CD65 0B:8D55: 9E        .byte $9E   ; 
- D 0 - I - 0x02CD66 0B:8D56: 81        .byte $81   ; 
- D 0 - I - 0x02CD67 0B:8D57: B7        .byte $B7   ; 
- D 0 - I - 0x02CD68 0B:8D58: 03        .byte $03   ; 
- D 0 - I - 0x02CD69 0B:8D59: 9E        .byte $9E   ; 
- D 0 - I - 0x02CD6A 0B:8D5A: 0E        .byte $0E   ; 
- D 0 - I - 0x02CD6B 0B:8D5B: 19        .byte $19   ; 
- D 0 - I - 0x02CD6C 0B:8D5C: 81        .byte $81   ; 
- D 0 - I - 0x02CD6D 0B:8D5D: A0        .byte $A0   ; 
- D 0 - I - 0x02CD6E 0B:8D5E: 0D        .byte $0D   ; 
- D 0 - I - 0x02CD6F 0B:8D5F: 19        .byte $19   ; 
- D 0 - I - 0x02CD70 0B:8D60: 81        .byte $81   ; 
- D 0 - I - 0x02CD71 0B:8D61: B8        .byte $B8   ; 
- D 0 - I - 0x02CD72 0B:8D62: 03        .byte $03   ; 
- D 0 - I - 0x02CD73 0B:8D63: 19        .byte $19   ; 
- D 0 - I - 0x02CD74 0B:8D64: 7E        .byte $7E   ; 
- D 0 - I - 0x02CD75 0B:8D65: 00        .byte $00   ; 
- D 0 - I - 0x02CD76 0B:8D66: 42        .byte $42   ; 
- D 0 - I - 0x02CD77 0B:8D67: 00        .byte $00   ; 
- D 0 - I - 0x02CD78 0B:8D68: 08        .byte $08   ; 
- D 0 - I - 0x02CD79 0B:8D69: FF        .byte $FF   ; 
- D 0 - I - 0x02CD7A 0B:8D6A: 05        .byte $05   ; 
- D 0 - I - 0x02CD7B 0B:8D6B: AF        .byte $AF   ; 
- D 0 - I - 0x02CD7C 0B:8D6C: 87        .byte $87   ; 
- D 0 - I - 0x02CD7D 0B:8D6D: 0F        .byte $0F   ; 
- D 0 - I - 0x02CD7E 0B:8D6E: 0F        .byte $0F   ; 
- D 0 - I - 0x02CD7F 0B:8D6F: AF        .byte $AF   ; 
- D 0 - I - 0x02CD80 0B:8D70: 00        .byte $00   ; 
- D 0 - I - 0x02CD81 0B:8D71: 22        .byte $22   ; 
- D 0 - I - 0x02CD82 0B:8D72: 00        .byte $00   ; 
- D 0 - I - 0x02CD83 0B:8D73: 88        .byte $88   ; 
- D 0 - I - 0x02CD84 0B:8D74: 03        .byte $03   ; 
- D 0 - I - 0x02CD85 0B:8D75: 00        .byte $00   ; 
- D 0 - I - 0x02CD86 0B:8D76: 81        .byte $81   ; 
- D 0 - I - 0x02CD87 0B:8D77: AA        .byte $AA   ; 
- D 0 - I - 0x02CD88 0B:8D78: 10        .byte $10   ; 
- D 0 - I - 0x02CD89 0B:8D79: 00        .byte $00   ; 
- D 0 - I - 0x02CD8A 0B:8D7A: 08        .byte $08   ; 
- D 0 - I - 0x02CD8B 0B:8D7B: 55        .byte $55   ; 
- D 0 - I - 0x02CD8C 0B:8D7C: 10        .byte $10   ; 
- D 0 - I - 0x02CD8D 0B:8D7D: FF        .byte $FF   ; 
- D 0 - I - 0x02CD8E 0B:8D7E: 7F        .byte $7F   ; 
- D 0 - I - 0x02CD8F 0B:8D7F: 00        .byte $00   ; 
- D 0 - I - 0x02CD90 0B:8D80: 24        .byte $24   ; 
- D 0 - I - 0x02CD91 0B:8D81: 7E        .byte $7E   ; 
- D 0 - I - 0x02CD92 0B:8D82: 00        .byte $00   ; 
- D 0 - I - 0x02CD93 0B:8D83: 44        .byte $44   ; 
- D 0 - I - 0x02CD94 0B:8D84: 00        .byte $00   ; 
- D 0 - I - 0x02CD95 0B:8D85: 8D        .byte $8D   ; 
- D 0 - I - 0x02CD96 0B:8D86: 3F        .byte $3F   ; 
- D 0 - I - 0x02CD97 0B:8D87: 00        .byte $00   ; 
- D 0 - I - 0x02CD98 0B:8D88: 5F        .byte $5F   ; 
- D 0 - I - 0x02CD99 0B:8D89: 40        .byte $40   ; 
- D 0 - I - 0x02CD9A 0B:8D8A: 3F        .byte $3F   ; 
- D 0 - I - 0x02CD9B 0B:8D8B: 00        .byte $00   ; 
- D 0 - I - 0x02CD9C 0B:8D8C: 5F        .byte $5F   ; 
- D 0 - I - 0x02CD9D 0B:8D8D: 00        .byte $00   ; 
- D 0 - I - 0x02CD9E 0B:8D8E: 5F        .byte $5F   ; 
- D 0 - I - 0x02CD9F 0B:8D8F: 40        .byte $40   ; 
- D 0 - I - 0x02CDA0 0B:8D90: 3F        .byte $3F   ; 
- D 0 - I - 0x02CDA1 0B:8D91: 3E        .byte $3E   ; 
- D 0 - I - 0x02CDA2 0B:8D92: 3D        .byte $3D   ; 
- D 0 - I - 0x02CDA3 0B:8D93: 09        .byte $09   ; 
- D 0 - I - 0x02CDA4 0B:8D94: 01        .byte $01   ; 
- D 0 - I - 0x02CDA5 0B:8D95: 08        .byte $08   ; 
- D 0 - I - 0x02CDA6 0B:8D96: 00        .byte $00   ; 
- D 0 - I - 0x02CDA7 0B:8D97: 91        .byte $91   ; 
- D 0 - I - 0x02CDA8 0B:8D98: 78        .byte $78   ; 
- D 0 - I - 0x02CDA9 0B:8D99: 79        .byte $79   ; 
- D 0 - I - 0x02CDAA 0B:8D9A: 44        .byte $44   ; 
- D 0 - I - 0x02CDAB 0B:8D9B: 46        .byte $46   ; 
- D 0 - I - 0x02CDAC 0B:8D9C: 63        .byte $63   ; 
- D 0 - I - 0x02CDAD 0B:8D9D: 45        .byte $45   ; 
- D 0 - I - 0x02CDAE 0B:8D9E: 44        .byte $44   ; 
- D 0 - I - 0x02CDAF 0B:8D9F: 46        .byte $46   ; 
- D 0 - I - 0x02CDB0 0B:8DA0: 63        .byte $63   ; 
- D 0 - I - 0x02CDB1 0B:8DA1: 46        .byte $46   ; 
- D 0 - I - 0x02CDB2 0B:8DA2: 63        .byte $63   ; 
- D 0 - I - 0x02CDB3 0B:8DA3: 45        .byte $45   ; 
- D 0 - I - 0x02CDB4 0B:8DA4: 44        .byte $44   ; 
- D 0 - I - 0x02CDB5 0B:8DA5: 43        .byte $43   ; 
- D 0 - I - 0x02CDB6 0B:8DA6: 3D        .byte $3D   ; 
- D 0 - I - 0x02CDB7 0B:8DA7: 41        .byte $41   ; 
- D 0 - I - 0x02CDB8 0B:8DA8: 42        .byte $42   ; 
- D 0 - I - 0x02CDB9 0B:8DA9: C4        .byte $C4   ; 
- D 0 - I - 0x02CDBA 0B:8DAA: 03        .byte $03   ; 
- D 0 - I - 0x02CDBB 0B:8DAB: 83        .byte $83   ; 
- D 0 - I - 0x02CDBC 0B:8DAC: 02        .byte $02   ; 
- D 0 - I - 0x02CDBD 0B:8DAD: 07        .byte $07   ; 
- D 0 - I - 0x02CDBE 0B:8DAE: 08        .byte $08   ; 
- D 0 - I - 0x02CDBF 0B:8DAF: 08        .byte $08   ; 
- D 0 - I - 0x02CDC0 0B:8DB0: 00        .byte $00   ; 
- D 0 - I - 0x02CDC1 0B:8DB1: 98        .byte $98   ; 
- D 0 - I - 0x02CDC2 0B:8DB2: 52        .byte $52   ; 
- D 0 - I - 0x02CDC3 0B:8DB3: 7A        .byte $7A   ; 
- D 0 - I - 0x02CDC4 0B:8DB4: 3F        .byte $3F   ; 
- D 0 - I - 0x02CDC5 0B:8DB5: 40        .byte $40   ; 
- D 0 - I - 0x02CDC6 0B:8DB6: 00        .byte $00   ; 
- D 0 - I - 0x02CDC7 0B:8DB7: 40        .byte $40   ; 
- D 0 - I - 0x02CDC8 0B:8DB8: 3F        .byte $3F   ; 
- D 0 - I - 0x02CDC9 0B:8DB9: 00        .byte $00   ; 
- D 0 - I - 0x02CDCA 0B:8DBA: 40        .byte $40   ; 
- D 0 - I - 0x02CDCB 0B:8DBB: 00        .byte $00   ; 
- D 0 - I - 0x02CDCC 0B:8DBC: 40        .byte $40   ; 
- D 0 - I - 0x02CDCD 0B:8DBD: 40        .byte $40   ; 
- D 0 - I - 0x02CDCE 0B:8DBE: 3F        .byte $3F   ; 
- D 0 - I - 0x02CDCF 0B:8DBF: 3E        .byte $3E   ; 
- D 0 - I - 0x02CDD0 0B:8DC0: 3D        .byte $3D   ; 
- D 0 - I - 0x02CDD1 0B:8DC1: 4B        .byte $4B   ; 
- D 0 - I - 0x02CDD2 0B:8DC2: 4C        .byte $4C   ; 
- D 0 - I - 0x02CDD3 0B:8DC3: 0C        .byte $0C   ; 
- D 0 - I - 0x02CDD4 0B:8DC4: 0D        .byte $0D   ; 
- D 0 - I - 0x02CDD5 0B:8DC5: 0D        .byte $0D   ; 
- D 0 - I - 0x02CDD6 0B:8DC6: 0E        .byte $0E   ; 
- D 0 - I - 0x02CDD7 0B:8DC7: 02        .byte $02   ; 
- D 0 - I - 0x02CDD8 0B:8DC8: 0F        .byte $0F   ; 
- D 0 - I - 0x02CDD9 0B:8DC9: 10        .byte $10   ; 
- D 0 - I - 0x02CDDA 0B:8DCA: 08        .byte $08   ; 
- D 0 - I - 0x02CDDB 0B:8DCB: 00        .byte $00   ; 
- D 0 - I - 0x02CDDC 0B:8DCC: 82        .byte $82   ; 
- D 0 - I - 0x02CDDD 0B:8DCD: 7B        .byte $7B   ; 
- D 0 - I - 0x02CDDE 0B:8DCE: 7A        .byte $7A   ; 
- D 0 - I - 0x02CDDF 0B:8DCF: C3        .byte $C3   ; 
- D 0 - I - 0x02CDE0 0B:8DD0: 44        .byte $44   ; 
- D 0 - I - 0x02CDE1 0B:8DD1: 90        .byte $90   ; 
- D 0 - I - 0x02CDE2 0B:8DD2: 45        .byte $45   ; 
- D 0 - I - 0x02CDE3 0B:8DD3: 44        .byte $44   ; 
- D 0 - I - 0x02CDE4 0B:8DD4: 46        .byte $46   ; 
- D 0 - I - 0x02CDE5 0B:8DD5: 45        .byte $45   ; 
- D 0 - I - 0x02CDE6 0B:8DD6: 46        .byte $46   ; 
- D 0 - I - 0x02CDE7 0B:8DD7: 45        .byte $45   ; 
- D 0 - I - 0x02CDE8 0B:8DD8: 45        .byte $45   ; 
- D 0 - I - 0x02CDE9 0B:8DD9: 44        .byte $44   ; 
- D 0 - I - 0x02CDEA 0B:8DDA: 43        .byte $43   ; 
- D 0 - I - 0x02CDEB 0B:8DDB: 3D        .byte $3D   ; 
- D 0 - I - 0x02CDEC 0B:8DDC: 55        .byte $55   ; 
- D 0 - I - 0x02CDED 0B:8DDD: 56        .byte $56   ; 
- D 0 - I - 0x02CDEE 0B:8DDE: 0C        .byte $0C   ; 
- D 0 - I - 0x02CDEF 0B:8DDF: 0D        .byte $0D   ; 
- D 0 - I - 0x02CDF0 0B:8DE0: 0D        .byte $0D   ; 
- D 0 - I - 0x02CDF1 0B:8DE1: 0E        .byte $0E   ; 
- D 0 - I - 0x02CDF2 0B:8DE2: C3        .byte $C3   ; 
- D 0 - I - 0x02CDF3 0B:8DE3: 13        .byte $13   ; 
- D 0 - I - 0x02CDF4 0B:8DE4: 08        .byte $08   ; 
- D 0 - I - 0x02CDF5 0B:8DE5: 00        .byte $00   ; 
- D 0 - I - 0x02CDF6 0B:8DE6: 90        .byte $90   ; 
- D 0 - I - 0x02CDF7 0B:8DE7: 7C        .byte $7C   ; 
- D 0 - I - 0x02CDF8 0B:8DE8: 7A        .byte $7A   ; 
- D 0 - I - 0x02CDF9 0B:8DE9: 3F        .byte $3F   ; 
- D 0 - I - 0x02CDFA 0B:8DEA: 4D        .byte $4D   ; 
- D 0 - I - 0x02CDFB 0B:8DEB: 4F        .byte $4F   ; 
- D 0 - I - 0x02CDFC 0B:8DEC: 50        .byte $50   ; 
- D 0 - I - 0x02CDFD 0B:8DED: 3F        .byte $3F   ; 
- D 0 - I - 0x02CDFE 0B:8DEE: 40        .byte $40   ; 
- D 0 - I - 0x02CDFF 0B:8DEF: 00        .byte $00   ; 
- D 0 - I - 0x02CE00 0B:8DF0: 4D        .byte $4D   ; 
- D 0 - I - 0x02CE01 0B:8DF1: 4F        .byte $4F   ; 
- D 0 - I - 0x02CE02 0B:8DF2: 50        .byte $50   ; 
- D 0 - I - 0x02CE03 0B:8DF3: 3F        .byte $3F   ; 
- D 0 - I - 0x02CE04 0B:8DF4: 3E        .byte $3E   ; 
- D 0 - I - 0x02CE05 0B:8DF5: 5E        .byte $5E   ; 
- D 0 - I - 0x02CE06 0B:8DF6: 19        .byte $19   ; 
- D 0 - I - 0x02CE07 0B:8DF7: C3        .byte $C3   ; 
- D 0 - I - 0x02CE08 0B:8DF8: 19        .byte $19   ; 
- D 0 - I - 0x02CE09 0B:8DF9: 85        .byte $85   ; 
- D 0 - I - 0x02CE0A 0B:8DFA: 1B        .byte $1B   ; 
- D 0 - I - 0x02CE0B 0B:8DFB: 1C        .byte $1C   ; 
- D 0 - I - 0x02CE0C 0B:8DFC: 19        .byte $19   ; 
- D 0 - I - 0x02CE0D 0B:8DFD: 1D        .byte $1D   ; 
- D 0 - I - 0x02CE0E 0B:8DFE: 1E        .byte $1E   ; 
- D 0 - I - 0x02CE0F 0B:8DFF: 08        .byte $08   ; 
- D 0 - I - 0x02CE10 0B:8E00: 00        .byte $00   ; 
- D 0 - I - 0x02CE11 0B:8E01: 86        .byte $86   ; 
- D 0 - I - 0x02CE12 0B:8E02: 52        .byte $52   ; 
- D 0 - I - 0x02CE13 0B:8E03: 7D        .byte $7D   ; 
- D 0 - I - 0x02CE14 0B:8E04: 44        .byte $44   ; 
- D 0 - I - 0x02CE15 0B:8E05: 57        .byte $57   ; 
- D 0 - I - 0x02CE16 0B:8E06: 59        .byte $59   ; 
- D 0 - I - 0x02CE17 0B:8E07: 46        .byte $46   ; 
- D 0 - I - 0x02CE18 0B:8E08: C3        .byte $C3   ; 
- D 0 - I - 0x02CE19 0B:8E09: 44        .byte $44   ; 
- D 0 - I - 0x02CE1A 0B:8E0A: 87        .byte $87   ; 
- D 0 - I - 0x02CE1B 0B:8E0B: 57        .byte $57   ; 
- D 0 - I - 0x02CE1C 0B:8E0C: 59        .byte $59   ; 
- D 0 - I - 0x02CE1D 0B:8E0D: 46        .byte $46   ; 
- D 0 - I - 0x02CE1E 0B:8E0E: 44        .byte $44   ; 
- D 0 - I - 0x02CE1F 0B:8E0F: 43        .byte $43   ; 
- D 0 - I - 0x02CE20 0B:8E10: 5E        .byte $5E   ; 
- D 0 - I - 0x02CE21 0B:8E11: 19        .byte $19   ; 
- D 0 - I - 0x02CE22 0B:8E12: C3        .byte $C3   ; 
- D 0 - I - 0x02CE23 0B:8E13: 19        .byte $19   ; 
- D 0 - I - 0x02CE24 0B:8E14: 85        .byte $85   ; 
- D 0 - I - 0x02CE25 0B:8E15: 1B        .byte $1B   ; 
- D 0 - I - 0x02CE26 0B:8E16: 1C        .byte $1C   ; 
- D 0 - I - 0x02CE27 0B:8E17: 19        .byte $19   ; 
- D 0 - I - 0x02CE28 0B:8E18: 21        .byte $21   ; 
- D 0 - I - 0x02CE29 0B:8E19: 22        .byte $22   ; 
- D 0 - I - 0x02CE2A 0B:8E1A: 0A        .byte $0A   ; 
- D 0 - I - 0x02CE2B 0B:8E1B: 00        .byte $00   ; 
- D 0 - I - 0x02CE2C 0B:8E1C: 86        .byte $86   ; 
- D 0 - I - 0x02CE2D 0B:8E1D: 3F        .byte $3F   ; 
- D 0 - I - 0x02CE2E 0B:8E1E: 00        .byte $00   ; 
- D 0 - I - 0x02CE2F 0B:8E1F: 68        .byte $68   ; 
- D 0 - I - 0x02CE30 0B:8E20: 68        .byte $68   ; 
- D 0 - I - 0x02CE31 0B:8E21: 66        .byte $66   ; 
- D 0 - I - 0x02CE32 0B:8E22: 67        .byte $67   ; 
- D 0 - I - 0x02CE33 0B:8E23: C3        .byte $C3   ; 
- D 0 - I - 0x02CE34 0B:8E24: 66        .byte $66   ; 
- D 0 - I - 0x02CE35 0B:8E25: 8A        .byte $8A   ; 
- D 0 - I - 0x02CE36 0B:8E26: 66        .byte $66   ; 
- D 0 - I - 0x02CE37 0B:8E27: 67        .byte $67   ; 
- D 0 - I - 0x02CE38 0B:8E28: 00        .byte $00   ; 
- D 0 - I - 0x02CE39 0B:8E29: 5E        .byte $5E   ; 
- D 0 - I - 0x02CE3A 0B:8E2A: 19        .byte $19   ; 
- D 0 - I - 0x02CE3B 0B:8E2B: 19        .byte $19   ; 
- D 0 - I - 0x02CE3C 0B:8E2C: 25        .byte $25   ; 
- D 0 - I - 0x02CE3D 0B:8E2D: 26        .byte $26   ; 
- D 0 - I - 0x02CE3E 0B:8E2E: 26        .byte $26   ; 
- D 0 - I - 0x02CE3F 0B:8E2F: 27        .byte $27   ; 
- D 0 - I - 0x02CE40 0B:8E30: 03        .byte $03   ; 
- D 0 - I - 0x02CE41 0B:8E31: 19        .byte $19   ; 
- D 0 - I - 0x02CE42 0B:8E32: 0A        .byte $0A   ; 
- D 0 - I - 0x02CE43 0B:8E33: 00        .byte $00   ; 
- D 0 - I - 0x02CE44 0B:8E34: 86        .byte $86   ; 
- D 0 - I - 0x02CE45 0B:8E35: 6E        .byte $6E   ; 
- D 0 - I - 0x02CE46 0B:8E36: 6D        .byte $6D   ; 
- D 0 - I - 0x02CE47 0B:8E37: 6C        .byte $6C   ; 
- D 0 - I - 0x02CE48 0B:8E38: 6C        .byte $6C   ; 
- D 0 - I - 0x02CE49 0B:8E39: 6A        .byte $6A   ; 
- D 0 - I - 0x02CE4A 0B:8E3A: 6B        .byte $6B   ; 
- D 0 - I - 0x02CE4B 0B:8E3B: C3        .byte $C3   ; 
- D 0 - I - 0x02CE4C 0B:8E3C: 6A        .byte $6A   ; 
- D 0 - I - 0x02CE4D 0B:8E3D: 84        .byte $84   ; 
- D 0 - I - 0x02CE4E 0B:8E3E: 6A        .byte $6A   ; 
- D 0 - I - 0x02CE4F 0B:8E3F: 6B        .byte $6B   ; 
- D 0 - I - 0x02CE50 0B:8E40: 00        .byte $00   ; 
- D 0 - I - 0x02CE51 0B:8E41: 5E        .byte $5E   ; 
- D 0 - I - 0x02CE52 0B:8E42: 09        .byte $09   ; 
- D 0 - I - 0x02CE53 0B:8E43: 19        .byte $19   ; 
- D 0 - I - 0x02CE54 0B:8E44: 08        .byte $08   ; 
- D 0 - I - 0x02CE55 0B:8E45: 00        .byte $00   ; 
- D 0 - I - 0x02CE56 0B:8E46: 0D        .byte $0D   ; 
- D 0 - I - 0x02CE57 0B:8E47: 72        .byte $72   ; 
- D 0 - I - 0x02CE58 0B:8E48: 8B        .byte $8B   ; 
- D 0 - I - 0x02CE59 0B:8E49: 7E        .byte $7E   ; 
- D 0 - I - 0x02CE5A 0B:8E4A: 5E        .byte $5E   ; 
- D 0 - I - 0x02CE5B 0B:8E4B: 2E        .byte $2E   ; 
- D 0 - I - 0x02CE5C 0B:8E4C: 2F        .byte $2F   ; 
- D 0 - I - 0x02CE5D 0B:8E4D: 2E        .byte $2E   ; 
- D 0 - I - 0x02CE5E 0B:8E4E: 2F        .byte $2F   ; 
- D 0 - I - 0x02CE5F 0B:8E4F: 2E        .byte $2E   ; 
- D 0 - I - 0x02CE60 0B:8E50: 2F        .byte $2F   ; 
- D 0 - I - 0x02CE61 0B:8E51: 2E        .byte $2E   ; 
- D 0 - I - 0x02CE62 0B:8E52: 2F        .byte $2F   ; 
- D 0 - I - 0x02CE63 0B:8E53: 2E        .byte $2E   ; 
- D 0 - I - 0x02CE64 0B:8E54: 08        .byte $08   ; 
- D 0 - I - 0x02CE65 0B:8E55: 00        .byte $00   ; 
- D 0 - I - 0x02CE66 0B:8E56: C3        .byte $C3   ; 
- D 0 - I - 0x02CE67 0B:8E57: 75        .byte $75   ; 
- D 0 - I - 0x02CE68 0B:8E58: 81        .byte $81   ; 
- D 0 - I - 0x02CE69 0B:8E59: 75        .byte $75   ; 
- D 0 - I - 0x02CE6A 0B:8E5A: C3        .byte $C3   ; 
- D 0 - I - 0x02CE6B 0B:8E5B: 75        .byte $75   ; 
- D 0 - I - 0x02CE6C 0B:8E5C: 81        .byte $81   ; 
- D 0 - I - 0x02CE6D 0B:8E5D: 75        .byte $75   ; 
- D 0 - I - 0x02CE6E 0B:8E5E: C3        .byte $C3   ; 
- D 0 - I - 0x02CE6F 0B:8E5F: 75        .byte $75   ; 
- D 0 - I - 0x02CE70 0B:8E60: 03        .byte $03   ; 
- D 0 - I - 0x02CE71 0B:8E61: 75        .byte $75   ; 
- D 0 - I - 0x02CE72 0B:8E62: 8A        .byte $8A   ; 
- D 0 - I - 0x02CE73 0B:8E63: 5E        .byte $5E   ; 
- D 0 - I - 0x02CE74 0B:8E64: 2F        .byte $2F   ; 
- D 0 - I - 0x02CE75 0B:8E65: 2E        .byte $2E   ; 
- D 0 - I - 0x02CE76 0B:8E66: 2F        .byte $2F   ; 
- D 0 - I - 0x02CE77 0B:8E67: 2E        .byte $2E   ; 
- D 0 - I - 0x02CE78 0B:8E68: 2F        .byte $2F   ; 
- D 0 - I - 0x02CE79 0B:8E69: 2E        .byte $2E   ; 
- D 0 - I - 0x02CE7A 0B:8E6A: 2F        .byte $2F   ; 
- D 0 - I - 0x02CE7B 0B:8E6B: 2E        .byte $2E   ; 
- D 0 - I - 0x02CE7C 0B:8E6C: 2F        .byte $2F   ; 
- D 0 - I - 0x02CE7D 0B:8E6D: 08        .byte $08   ; 
- D 0 - I - 0x02CE7E 0B:8E6E: 00        .byte $00   ; 
- D 0 - I - 0x02CE7F 0B:8E6F: C3        .byte $C3   ; 
- D 0 - I - 0x02CE80 0B:8E70: A4        .byte $A4   ; 
- D 0 - I - 0x02CE81 0B:8E71: 81        .byte $81   ; 
- D 0 - I - 0x02CE82 0B:8E72: A4        .byte $A4   ; 
- D 0 - I - 0x02CE83 0B:8E73: C3        .byte $C3   ; 
- D 0 - I - 0x02CE84 0B:8E74: A4        .byte $A4   ; 
- D 0 - I - 0x02CE85 0B:8E75: 81        .byte $81   ; 
- D 0 - I - 0x02CE86 0B:8E76: A4        .byte $A4   ; 
- D 0 - I - 0x02CE87 0B:8E77: C3        .byte $C3   ; 
- D 0 - I - 0x02CE88 0B:8E78: A4        .byte $A4   ; 
- D 0 - I - 0x02CE89 0B:8E79: 03        .byte $03   ; 
- D 0 - I - 0x02CE8A 0B:8E7A: A4        .byte $A4   ; 
- D 0 - I - 0x02CE8B 0B:8E7B: 8A        .byte $8A   ; 
- D 0 - I - 0x02CE8C 0B:8E7C: 5E        .byte $5E   ; 
- D 0 - I - 0x02CE8D 0B:8E7D: 2E        .byte $2E   ; 
- D 0 - I - 0x02CE8E 0B:8E7E: 2F        .byte $2F   ; 
- D 0 - I - 0x02CE8F 0B:8E7F: 2E        .byte $2E   ; 
- D 0 - I - 0x02CE90 0B:8E80: 2F        .byte $2F   ; 
- D 0 - I - 0x02CE91 0B:8E81: 2E        .byte $2E   ; 
- D 0 - I - 0x02CE92 0B:8E82: 2F        .byte $2F   ; 
- D 0 - I - 0x02CE93 0B:8E83: 2E        .byte $2E   ; 
- D 0 - I - 0x02CE94 0B:8E84: 2F        .byte $2F   ; 
- D 0 - I - 0x02CE95 0B:8E85: 2E        .byte $2E   ; 
- D 0 - I - 0x02CE96 0B:8E86: 08        .byte $08   ; 
- D 0 - I - 0x02CE97 0B:8E87: 00        .byte $00   ; 
- D 0 - I - 0x02CE98 0B:8E88: 8A        .byte $8A   ; 
- D 0 - I - 0x02CE99 0B:8E89: AA        .byte $AA   ; 
- D 0 - I - 0x02CE9A 0B:8E8A: AB        .byte $AB   ; 
- D 0 - I - 0x02CE9B 0B:8E8B: A4        .byte $A4   ; 
- D 0 - I - 0x02CE9C 0B:8E8C: A4        .byte $A4   ; 
- D 0 - I - 0x02CE9D 0B:8E8D: AA        .byte $AA   ; 
- D 0 - I - 0x02CE9E 0B:8E8E: AB        .byte $AB   ; 
- D 0 - I - 0x02CE9F 0B:8E8F: A4        .byte $A4   ; 
- D 0 - I - 0x02CEA0 0B:8E90: A4        .byte $A4   ; 
- D 0 - I - 0x02CEA1 0B:8E91: AA        .byte $AA   ; 
- D 0 - I - 0x02CEA2 0B:8E92: AB        .byte $AB   ; 
- D 0 - I - 0x02CEA3 0B:8E93: 04        .byte $04   ; 
- D 0 - I - 0x02CEA4 0B:8E94: A4        .byte $A4   ; 
- D 0 - I - 0x02CEA5 0B:8E95: 8A        .byte $8A   ; 
- D 0 - I - 0x02CEA6 0B:8E96: 5E        .byte $5E   ; 
- D 0 - I - 0x02CEA7 0B:8E97: 2F        .byte $2F   ; 
- D 0 - I - 0x02CEA8 0B:8E98: 2E        .byte $2E   ; 
- D 0 - I - 0x02CEA9 0B:8E99: 2F        .byte $2F   ; 
- D 0 - I - 0x02CEAA 0B:8E9A: 2E        .byte $2E   ; 
- D 0 - I - 0x02CEAB 0B:8E9B: 2F        .byte $2F   ; 
- D 0 - I - 0x02CEAC 0B:8E9C: 2E        .byte $2E   ; 
- D 0 - I - 0x02CEAD 0B:8E9D: 2F        .byte $2F   ; 
- D 0 - I - 0x02CEAE 0B:8E9E: 2E        .byte $2E   ; 
- D 0 - I - 0x02CEAF 0B:8E9F: 2F        .byte $2F   ; 
- D 0 - I - 0x02CEB0 0B:8EA0: 08        .byte $08   ; 
- D 0 - I - 0x02CEB1 0B:8EA1: 00        .byte $00   ; 
- D 0 - I - 0x02CEB2 0B:8EA2: C3        .byte $C3   ; 
- D 0 - I - 0x02CEB3 0B:8EA3: AF        .byte $AF   ; 
- D 0 - I - 0x02CEB4 0B:8EA4: 81        .byte $81   ; 
- D 0 - I - 0x02CEB5 0B:8EA5: AF        .byte $AF   ; 
- D 0 - I - 0x02CEB6 0B:8EA6: C3        .byte $C3   ; 
- D 0 - I - 0x02CEB7 0B:8EA7: AF        .byte $AF   ; 
- D 0 - I - 0x02CEB8 0B:8EA8: 81        .byte $81   ; 
- D 0 - I - 0x02CEB9 0B:8EA9: AF        .byte $AF   ; 
- D 0 - I - 0x02CEBA 0B:8EAA: C3        .byte $C3   ; 
- D 0 - I - 0x02CEBB 0B:8EAB: AF        .byte $AF   ; 
- D 0 - I - 0x02CEBC 0B:8EAC: 0D        .byte $0D   ; 
- D 0 - I - 0x02CEBD 0B:8EAD: AF        .byte $AF   ; 
- D 0 - I - 0x02CEBE 0B:8EAE: 08        .byte $08   ; 
- D 0 - I - 0x02CEBF 0B:8EAF: 00        .byte $00   ; 
- D 0 - I - 0x02CEC0 0B:8EB0: 18        .byte $18   ; 
- D 0 - I - 0x02CEC1 0B:8EB1: 94        .byte $94   ; 
- D 0 - I - 0x02CEC2 0B:8EB2: 08        .byte $08   ; 
- D 0 - I - 0x02CEC3 0B:8EB3: 00        .byte $00   ; 
- D 0 - I - 0x02CEC4 0B:8EB4: 08        .byte $08   ; 
- D 0 - I - 0x02CEC5 0B:8EB5: 9A        .byte $9A   ; 
- D 0 - I - 0x02CEC6 0B:8EB6: 81        .byte $81   ; 
- D 0 - I - 0x02CEC7 0B:8EB7: B9        .byte $B9   ; 
- D 0 - I - 0x02CEC8 0B:8EB8: 17        .byte $17   ; 
- D 0 - I - 0x02CEC9 0B:8EB9: 9A        .byte $9A   ; 
- D 0 - I - 0x02CECA 0B:8EBA: 08        .byte $08   ; 
- D 0 - I - 0x02CECB 0B:8EBB: 9C        .byte $9C   ; 
- D 0 - I - 0x02CECC 0B:8EBC: 82        .byte $82   ; 
- D 0 - I - 0x02CECD 0B:8EBD: BA        .byte $BA   ; 
- D 0 - I - 0x02CECE 0B:8EBE: BB        .byte $BB   ; 
- D 0 - I - 0x02CECF 0B:8EBF: 16        .byte $16   ; 
- D 0 - I - 0x02CED0 0B:8EC0: 9C        .byte $9C   ; 
- D 0 - I - 0x02CED1 0B:8EC1: 09        .byte $09   ; 
- D 0 - I - 0x02CED2 0B:8EC2: 9E        .byte $9E   ; 
- D 0 - I - 0x02CED3 0B:8EC3: 81        .byte $81   ; 
- D 0 - I - 0x02CED4 0B:8EC4: BC        .byte $BC   ; 
- D 0 - I - 0x02CED5 0B:8EC5: 16        .byte $16   ; 
- D 0 - I - 0x02CED6 0B:8EC6: 9E        .byte $9E   ; 
- D 0 - I - 0x02CED7 0B:8EC7: 09        .byte $09   ; 
- D 0 - I - 0x02CED8 0B:8EC8: 19        .byte $19   ; 
- D 0 - I - 0x02CED9 0B:8EC9: 82        .byte $82   ; 
- D 0 - I - 0x02CEDA 0B:8ECA: BD        .byte $BD   ; 
- D 0 - I - 0x02CEDB 0B:8ECB: BE        .byte $BE   ; 
- D 0 - I - 0x02CEDC 0B:8ECC: 15        .byte $15   ; 
- D 0 - I - 0x02CEDD 0B:8ECD: 19        .byte $19   ; 
- D 0 - I - 0x02CEDE 0B:8ECE: 7E        .byte $7E   ; 
- D 0 - I - 0x02CEDF 0B:8ECF: 00        .byte $00   ; 
- D 0 - I - 0x02CEE0 0B:8ED0: 42        .byte $42   ; 
- D 0 - I - 0x02CEE1 0B:8ED1: 00        .byte $00   ; 
- D 0 - I - 0x02CEE2 0B:8ED2: 08        .byte $08   ; 
- D 0 - I - 0x02CEE3 0B:8ED3: FF        .byte $FF   ; 
- D 0 - I - 0x02CEE4 0B:8ED4: 89        .byte $89   ; 
- D 0 - I - 0x02CEE5 0B:8ED5: 2F        .byte $2F   ; 
- D 0 - I - 0x02CEE6 0B:8ED6: 0F        .byte $0F   ; 
- D 0 - I - 0x02CEE7 0B:8ED7: 0F        .byte $0F   ; 
- D 0 - I - 0x02CEE8 0B:8ED8: 8F        .byte $8F   ; 
- D 0 - I - 0x02CEE9 0B:8ED9: AF        .byte $AF   ; 
- D 0 - I - 0x02CEEA 0B:8EDA: AF        .byte $AF   ; 
- D 0 - I - 0x02CEEB 0B:8EDB: FF        .byte $FF   ; 
- D 0 - I - 0x02CEEC 0B:8EDC: FF        .byte $FF   ; 
- D 0 - I - 0x02CEED 0B:8EDD: 22        .byte $22   ; 
- D 0 - I - 0x02CEEE 0B:8EDE: 03        .byte $03   ; 
- D 0 - I - 0x02CEEF 0B:8EDF: 00        .byte $00   ; 
- D 0 - I - 0x02CEF0 0B:8EE0: 84        .byte $84   ; 
- D 0 - I - 0x02CEF1 0B:8EE1: 88        .byte $88   ; 
- D 0 - I - 0x02CEF2 0B:8EE2: 00        .byte $00   ; 
- D 0 - I - 0x02CEF3 0B:8EE3: FF        .byte $FF   ; 
- D 0 - I - 0x02CEF4 0B:8EE4: FF        .byte $FF   ; 
- D 0 - I - 0x02CEF5 0B:8EE5: 06        .byte $06   ; 
- D 0 - I - 0x02CEF6 0B:8EE6: 00        .byte $00   ; 
- D 0 - I - 0x02CEF7 0B:8EE7: 82        .byte $82   ; 
- D 0 - I - 0x02CEF8 0B:8EE8: FF        .byte $FF   ; 
- D 0 - I - 0x02CEF9 0B:8EE9: FF        .byte $FF   ; 
- D 0 - I - 0x02CEFA 0B:8EEA: 06        .byte $06   ; 
- D 0 - I - 0x02CEFB 0B:8EEB: 00        .byte $00   ; 
- D 0 - I - 0x02CEFC 0B:8EEC: 82        .byte $82   ; 
- D 0 - I - 0x02CEFD 0B:8EED: FF        .byte $FF   ; 
- D 0 - I - 0x02CEFE 0B:8EEE: FF        .byte $FF   ; 
- D 0 - I - 0x02CEFF 0B:8EEF: 08        .byte $08   ; 
- D 0 - I - 0x02CF00 0B:8EF0: 55        .byte $55   ; 
- D 0 - I - 0x02CF01 0B:8EF1: 10        .byte $10   ; 
- D 0 - I - 0x02CF02 0B:8EF2: FF        .byte $FF   ; 
- D 0 - I - 0x02CF03 0B:8EF3: FF        .byte $FF   ; 



.export _off003_0x02CF04_08
_off003_0x02CF04_08:
- D 0 - I - 0x02CF04 0B:8EF4: 00        .byte $00   ; 
- D 0 - I - 0x02CF05 0B:8EF5: 20        .byte $20   ; 
- D 0 - I - 0x02CF06 0B:8EF6: 7E        .byte $7E   ; 
- D 0 - I - 0x02CF07 0B:8EF7: 00        .byte $00   ; 
- D 0 - I - 0x02CF08 0B:8EF8: 06        .byte $06   ; 
- D 0 - I - 0x02CF09 0B:8EF9: 00        .byte $00   ; 
- D 0 - I - 0x02CF0A 0B:8EFA: C3        .byte $C3   ; 
- D 0 - I - 0x02CF0B 0B:8EFB: 80        .byte $80   ; 
- D 0 - I - 0x02CF0C 0B:8EFC: 81        .byte $81   ; 
- D 0 - I - 0x02CF0D 0B:8EFD: 00        .byte $00   ; 
- D 0 - I - 0x02CF0E 0B:8EFE: C6        .byte $C6   ; 
- D 0 - I - 0x02CF0F 0B:8EFF: 84        .byte $84   ; 
- D 0 - I - 0x02CF10 0B:8F00: 8F        .byte $8F   ; 
- D 0 - I - 0x02CF11 0B:8F01: 80        .byte $80   ; 
- D 0 - I - 0x02CF12 0B:8F02: 81        .byte $81   ; 
- D 0 - I - 0x02CF13 0B:8F03: 00        .byte $00   ; 
- D 0 - I - 0x02CF14 0B:8F04: 8C        .byte $8C   ; 
- D 0 - I - 0x02CF15 0B:8F05: 8D        .byte $8D   ; 
- D 0 - I - 0x02CF16 0B:8F06: 88        .byte $88   ; 
- D 0 - I - 0x02CF17 0B:8F07: 89        .byte $89   ; 
- D 0 - I - 0x02CF18 0B:8F08: 82        .byte $82   ; 
- D 0 - I - 0x02CF19 0B:8F09: 00        .byte $00   ; 
- D 0 - I - 0x02CF1A 0B:8F0A: 88        .byte $88   ; 
- D 0 - I - 0x02CF1B 0B:8F0B: 89        .byte $89   ; 
- D 0 - I - 0x02CF1C 0B:8F0C: 8E        .byte $8E   ; 
- D 0 - I - 0x02CF1D 0B:8F0D: 8F        .byte $8F   ; 
- D 0 - I - 0x02CF1E 0B:8F0E: A0        .byte $A0   ; 
- D 0 - I - 0x02CF1F 0B:8F0F: A1        .byte $A1   ; 
- D 0 - I - 0x02CF20 0B:8F10: 07        .byte $07   ; 
- D 0 - I - 0x02CF21 0B:8F11: 00        .byte $00   ; 
- D 0 - I - 0x02CF22 0B:8F12: CA        .byte $CA   ; 
- D 0 - I - 0x02CF23 0B:8F13: 90        .byte $90   ; 
- D 0 - I - 0x02CF24 0B:8F14: 8F        .byte $8F   ; 
- D 0 - I - 0x02CF25 0B:8F15: 90        .byte $90   ; 
- D 0 - I - 0x02CF26 0B:8F16: 9B        .byte $9B   ; 
- D 0 - I - 0x02CF27 0B:8F17: 00        .byte $00   ; 
- D 0 - I - 0x02CF28 0B:8F18: 9C        .byte $9C   ; 
- D 0 - I - 0x02CF29 0B:8F19: 9D        .byte $9D   ; 
- D 0 - I - 0x02CF2A 0B:8F1A: 98        .byte $98   ; 
- D 0 - I - 0x02CF2B 0B:8F1B: 99        .byte $99   ; 
- D 0 - I - 0x02CF2C 0B:8F1C: 92        .byte $92   ; 
- D 0 - I - 0x02CF2D 0B:8F1D: 93        .byte $93   ; 
- D 0 - I - 0x02CF2E 0B:8F1E: 98        .byte $98   ; 
- D 0 - I - 0x02CF2F 0B:8F1F: 99        .byte $99   ; 
- D 0 - I - 0x02CF30 0B:8F20: 9E        .byte $9E   ; 
- D 0 - I - 0x02CF31 0B:8F21: 9F        .byte $9F   ; 
- D 0 - I - 0x02CF32 0B:8F22: B0        .byte $B0   ; 
- D 0 - I - 0x02CF33 0B:8F23: B1        .byte $B1   ; 
- D 0 - I - 0x02CF34 0B:8F24: 46        .byte $46   ; 
- D 0 - I - 0x02CF35 0B:8F25: 00        .byte $00   ; 
- D 0 - I - 0x02CF36 0B:8F26: 83        .byte $83   ; 
- D 0 - I - 0x02CF37 0B:8F27: 96        .byte $96   ; 
- D 0 - I - 0x02CF38 0B:8F28: 8F        .byte $8F   ; 
- D 0 - I - 0x02CF39 0B:8F29: 99        .byte $99   ; 
- D 0 - I - 0x02CF3A 0B:8F2A: 04        .byte $04   ; 
- D 0 - I - 0x02CF3B 0B:8F2B: 00        .byte $00   ; 
- D 0 - I - 0x02CF3C 0B:8F2C: 84        .byte $84   ; 
- D 0 - I - 0x02CF3D 0B:8F2D: 9C        .byte $9C   ; 
- D 0 - I - 0x02CF3E 0B:8F2E: 8B        .byte $8B   ; 
- D 0 - I - 0x02CF3F 0B:8F2F: 9A        .byte $9A   ; 
- D 0 - I - 0x02CF40 0B:8F30: 92        .byte $92   ; 
- D 0 - I - 0x02CF41 0B:8F31: 03        .byte $03   ; 
- D 0 - I - 0x02CF42 0B:8F32: 00        .byte $00   ; 
- D 0 - I - 0x02CF43 0B:8F33: 84        .byte $84   ; 
- D 0 - I - 0x02CF44 0B:8F34: 97        .byte $97   ; 
- D 0 - I - 0x02CF45 0B:8F35: 93        .byte $93   ; 
- D 0 - I - 0x02CF46 0B:8F36: 95        .byte $95   ; 
- D 0 - I - 0x02CF47 0B:8F37: 8F        .byte $8F   ; 
- D 0 - I - 0x02CF48 0B:8F38: 03        .byte $03   ; 
- D 0 - I - 0x02CF49 0B:8F39: 00        .byte $00   ; 
- D 0 - I - 0x02CF4A 0B:8F3A: 83        .byte $83   ; 
- D 0 - I - 0x02CF4B 0B:8F3B: 8E        .byte $8E   ; 
- D 0 - I - 0x02CF4C 0B:8F3C: 99        .byte $99   ; 
- D 0 - I - 0x02CF4D 0B:8F3D: 98        .byte $98   ; 
- D 0 - I - 0x02CF4E 0B:8F3E: 28        .byte $28   ; 
- D 0 - I - 0x02CF4F 0B:8F3F: 00        .byte $00   ; 
- D 0 - I - 0x02CF50 0B:8F40: 86        .byte $86   ; 
- D 0 - I - 0x02CF51 0B:8F41: 01        .byte $01   ; 
- D 0 - I - 0x02CF52 0B:8F42: 02        .byte $02   ; 
- D 0 - I - 0x02CF53 0B:8F43: 09        .byte $09   ; 
- D 0 - I - 0x02CF54 0B:8F44: 0A        .byte $0A   ; 
- D 0 - I - 0x02CF55 0B:8F45: 03        .byte $03   ; 
- D 0 - I - 0x02CF56 0B:8F46: 00        .byte $00   ; 
- D 0 - I - 0x02CF57 0B:8F47: C3        .byte $C3   ; 
- D 0 - I - 0x02CF58 0B:8F48: 00        .byte $00   ; 
- D 0 - I - 0x02CF59 0B:8F49: 84        .byte $84   ; 
- D 0 - I - 0x02CF5A 0B:8F4A: 09        .byte $09   ; 
- D 0 - I - 0x02CF5B 0B:8F4B: 0A        .byte $0A   ; 
- D 0 - I - 0x02CF5C 0B:8F4C: 03        .byte $03   ; 
- D 0 - I - 0x02CF5D 0B:8F4D: 00        .byte $00   ; 
- D 0 - I - 0x02CF5E 0B:8F4E: C3        .byte $C3   ; 
- D 0 - I - 0x02CF5F 0B:8F4F: 00        .byte $00   ; 
- D 0 - I - 0x02CF60 0B:8F50: 8A        .byte $8A   ; 
- D 0 - I - 0x02CF61 0B:8F51: 1A        .byte $1A   ; 
- D 0 - I - 0x02CF62 0B:8F52: 1B        .byte $1B   ; 
- D 0 - I - 0x02CF63 0B:8F53: 03        .byte $03   ; 
- D 0 - I - 0x02CF64 0B:8F54: 00        .byte $00   ; 
- D 0 - I - 0x02CF65 0B:8F55: 00        .byte $00   ; 
- D 0 - I - 0x02CF66 0B:8F56: 01        .byte $01   ; 
- D 0 - I - 0x02CF67 0B:8F57: 38        .byte $38   ; 
- D 0 - I - 0x02CF68 0B:8F58: 39        .byte $39   ; 
- D 0 - I - 0x02CF69 0B:8F59: 02        .byte $02   ; 
- D 0 - I - 0x02CF6A 0B:8F5A: 03        .byte $03   ; 
- D 0 - I - 0x02CF6B 0B:8F5B: 06        .byte $06   ; 
- D 0 - I - 0x02CF6C 0B:8F5C: 00        .byte $00   ; 
- D 0 - I - 0x02CF6D 0B:8F5D: 81        .byte $81   ; 
- D 0 - I - 0x02CF6E 0B:8F5E: 04        .byte $04   ; 
- D 0 - I - 0x02CF6F 0B:8F5F: C4        .byte $C4   ; 
- D 0 - I - 0x02CF70 0B:8F60: 0B        .byte $0B   ; 
- D 0 - I - 0x02CF71 0B:8F61: 83        .byte $83   ; 
- D 0 - I - 0x02CF72 0B:8F62: 00        .byte $00   ; 
- D 0 - I - 0x02CF73 0B:8F63: 00        .byte $00   ; 
- D 0 - I - 0x02CF74 0B:8F64: 04        .byte $04   ; 
- D 0 - I - 0x02CF75 0B:8F65: C4        .byte $C4   ; 
- D 0 - I - 0x02CF76 0B:8F66: 3A        .byte $3A   ; 
- D 0 - I - 0x02CF77 0B:8F67: 83        .byte $83   ; 
- D 0 - I - 0x02CF78 0B:8F68: 00        .byte $00   ; 
- D 0 - I - 0x02CF79 0B:8F69: 00        .byte $00   ; 
- D 0 - I - 0x02CF7A 0B:8F6A: 04        .byte $04   ; 
- D 0 - I - 0x02CF7B 0B:8F6B: C3        .byte $C3   ; 
- D 0 - I - 0x02CF7C 0B:8F6C: 1C        .byte $1C   ; 
- D 0 - I - 0x02CF7D 0B:8F6D: 84        .byte $84   ; 
- D 0 - I - 0x02CF7E 0B:8F6E: 08        .byte $08   ; 
- D 0 - I - 0x02CF7F 0B:8F6F: 00        .byte $00   ; 
- D 0 - I - 0x02CF80 0B:8F70: 00        .byte $00   ; 
- D 0 - I - 0x02CF81 0B:8F71: 04        .byte $04   ; 
- D 0 - I - 0x02CF82 0B:8F72: C3        .byte $C3   ; 
- D 0 - I - 0x02CF83 0B:8F73: 2B        .byte $2B   ; 
- D 0 - I - 0x02CF84 0B:8F74: 81        .byte $81   ; 
- D 0 - I - 0x02CF85 0B:8F75: 08        .byte $08   ; 
- D 0 - I - 0x02CF86 0B:8F76: 06        .byte $06   ; 
- D 0 - I - 0x02CF87 0B:8F77: 00        .byte $00   ; 
- D 0 - I - 0x02CF88 0B:8F78: 81        .byte $81   ; 
- D 0 - I - 0x02CF89 0B:8F79: 04        .byte $04   ; 
- D 0 - I - 0x02CF8A 0B:8F7A: C4        .byte $C4   ; 
- D 0 - I - 0x02CF8B 0B:8F7B: 0F        .byte $0F   ; 
- D 0 - I - 0x02CF8C 0B:8F7C: 83        .byte $83   ; 
- D 0 - I - 0x02CF8D 0B:8F7D: 00        .byte $00   ; 
- D 0 - I - 0x02CF8E 0B:8F7E: 00        .byte $00   ; 
- D 0 - I - 0x02CF8F 0B:8F7F: 04        .byte $04   ; 
- D 0 - I - 0x02CF90 0B:8F80: C4        .byte $C4   ; 
- D 0 - I - 0x02CF91 0B:8F81: 3E        .byte $3E   ; 
- D 0 - I - 0x02CF92 0B:8F82: 83        .byte $83   ; 
- D 0 - I - 0x02CF93 0B:8F83: 00        .byte $00   ; 
- D 0 - I - 0x02CF94 0B:8F84: 00        .byte $00   ; 
- D 0 - I - 0x02CF95 0B:8F85: 04        .byte $04   ; 
- D 0 - I - 0x02CF96 0B:8F86: C4        .byte $C4   ; 
- D 0 - I - 0x02CF97 0B:8F87: 1F        .byte $1F   ; 
- D 0 - I - 0x02CF98 0B:8F88: 83        .byte $83   ; 
- D 0 - I - 0x02CF99 0B:8F89: 00        .byte $00   ; 
- D 0 - I - 0x02CF9A 0B:8F8A: 00        .byte $00   ; 
- D 0 - I - 0x02CF9B 0B:8F8B: 04        .byte $04   ; 
- D 0 - I - 0x02CF9C 0B:8F8C: C3        .byte $C3   ; 
- D 0 - I - 0x02CF9D 0B:8F8D: 2E        .byte $2E   ; 
- D 0 - I - 0x02CF9E 0B:8F8E: 81        .byte $81   ; 
- D 0 - I - 0x02CF9F 0B:8F8F: 08        .byte $08   ; 
- D 0 - I - 0x02CFA0 0B:8F90: 06        .byte $06   ; 
- D 0 - I - 0x02CFA1 0B:8F91: 00        .byte $00   ; 
- D 0 - I - 0x02CFA2 0B:8F92: 81        .byte $81   ; 
- D 0 - I - 0x02CFA3 0B:8F93: 04        .byte $04   ; 
- D 0 - I - 0x02CFA4 0B:8F94: C4        .byte $C4   ; 
- D 0 - I - 0x02CFA5 0B:8F95: 13        .byte $13   ; 
- D 0 - I - 0x02CFA6 0B:8F96: 83        .byte $83   ; 
- D 0 - I - 0x02CFA7 0B:8F97: 00        .byte $00   ; 
- D 0 - I - 0x02CFA8 0B:8F98: 00        .byte $00   ; 
- D 0 - I - 0x02CFA9 0B:8F99: 04        .byte $04   ; 
- D 0 - I - 0x02CFAA 0B:8F9A: C4        .byte $C4   ; 
- D 0 - I - 0x02CFAB 0B:8F9B: 42        .byte $42   ; 
- D 0 - I - 0x02CFAC 0B:8F9C: 83        .byte $83   ; 
- D 0 - I - 0x02CFAD 0B:8F9D: 00        .byte $00   ; 
- D 0 - I - 0x02CFAE 0B:8F9E: 00        .byte $00   ; 
- D 0 - I - 0x02CFAF 0B:8F9F: 04        .byte $04   ; 
- D 0 - I - 0x02CFB0 0B:8FA0: C4        .byte $C4   ; 
- D 0 - I - 0x02CFB1 0B:8FA1: 23        .byte $23   ; 
- D 0 - I - 0x02CFB2 0B:8FA2: 83        .byte $83   ; 
- D 0 - I - 0x02CFB3 0B:8FA3: 00        .byte $00   ; 
- D 0 - I - 0x02CFB4 0B:8FA4: 00        .byte $00   ; 
- D 0 - I - 0x02CFB5 0B:8FA5: 04        .byte $04   ; 
- D 0 - I - 0x02CFB6 0B:8FA6: C3        .byte $C3   ; 
- D 0 - I - 0x02CFB7 0B:8FA7: 31        .byte $31   ; 
- D 0 - I - 0x02CFB8 0B:8FA8: 81        .byte $81   ; 
- D 0 - I - 0x02CFB9 0B:8FA9: 08        .byte $08   ; 
- D 0 - I - 0x02CFBA 0B:8FAA: 06        .byte $06   ; 
- D 0 - I - 0x02CFBB 0B:8FAB: 00        .byte $00   ; 
- D 0 - I - 0x02CFBC 0B:8FAC: 82        .byte $82   ; 
- D 0 - I - 0x02CFBD 0B:8FAD: 05        .byte $05   ; 
- D 0 - I - 0x02CFBE 0B:8FAE: 06        .byte $06   ; 
- D 0 - I - 0x02CFBF 0B:8FAF: C3        .byte $C3   ; 
- D 0 - I - 0x02CFC0 0B:8FB0: 17        .byte $17   ; 
- D 0 - I - 0x02CFC1 0B:8FB1: 84        .byte $84   ; 
- D 0 - I - 0x02CFC2 0B:8FB2: 00        .byte $00   ; 
- D 0 - I - 0x02CFC3 0B:8FB3: 00        .byte $00   ; 
- D 0 - I - 0x02CFC4 0B:8FB4: 05        .byte $05   ; 
- D 0 - I - 0x02CFC5 0B:8FB5: 06        .byte $06   ; 
- D 0 - I - 0x02CFC6 0B:8FB6: C3        .byte $C3   ; 
- D 0 - I - 0x02CFC7 0B:8FB7: 46        .byte $46   ; 
- D 0 - I - 0x02CFC8 0B:8FB8: 83        .byte $83   ; 
- D 0 - I - 0x02CFC9 0B:8FB9: 00        .byte $00   ; 
- D 0 - I - 0x02CFCA 0B:8FBA: 00        .byte $00   ; 
- D 0 - I - 0x02CFCB 0B:8FBB: 05        .byte $05   ; 
- D 0 - I - 0x02CFCC 0B:8FBC: C4        .byte $C4   ; 
- D 0 - I - 0x02CFCD 0B:8FBD: 27        .byte $27   ; 
- D 0 - I - 0x02CFCE 0B:8FBE: 83        .byte $83   ; 
- D 0 - I - 0x02CFCF 0B:8FBF: 00        .byte $00   ; 
- D 0 - I - 0x02CFD0 0B:8FC0: 00        .byte $00   ; 
- D 0 - I - 0x02CFD1 0B:8FC1: 05        .byte $05   ; 
- D 0 - I - 0x02CFD2 0B:8FC2: C4        .byte $C4   ; 
- D 0 - I - 0x02CFD3 0B:8FC3: 34        .byte $34   ; 
- D 0 - I - 0x02CFD4 0B:8FC4: 49        .byte $49   ; 
- D 0 - I - 0x02CFD5 0B:8FC5: 00        .byte $00   ; 
- D 0 - I - 0x02CFD6 0B:8FC6: 85        .byte $85   ; 
- D 0 - I - 0x02CFD7 0B:8FC7: 8D        .byte $8D   ; 
- D 0 - I - 0x02CFD8 0B:8FC8: 8B        .byte $8B   ; 
- D 0 - I - 0x02CFD9 0B:8FC9: 9D        .byte $9D   ; 
- D 0 - I - 0x02CFDA 0B:8FCA: 8F        .byte $8F   ; 
- D 0 - I - 0x02CFDB 0B:8FCB: A3        .byte $A3   ; 
- D 0 - I - 0x02CFDC 0B:8FCC: 03        .byte $03   ; 
- D 0 - I - 0x02CFDD 0B:8FCD: 00        .byte $00   ; 
- D 0 - I - 0x02CFDE 0B:8FCE: 83        .byte $83   ; 
- D 0 - I - 0x02CFDF 0B:8FCF: 92        .byte $92   ; 
- D 0 - I - 0x02CFE0 0B:8FD0: 99        .byte $99   ; 
- D 0 - I - 0x02CFE1 0B:8FD1: 9E        .byte $9E   ; 
- D 0 - I - 0x02CFE2 0B:8FD2: 05        .byte $05   ; 
- D 0 - I - 0x02CFE3 0B:8FD3: 00        .byte $00   ; 
- D 0 - I - 0x02CFE4 0B:8FD4: 85        .byte $85   ; 
- D 0 - I - 0x02CFE5 0B:8FD5: 9D        .byte $9D   ; 
- D 0 - I - 0x02CFE6 0B:8FD6: 92        .byte $92   ; 
- D 0 - I - 0x02CFE7 0B:8FD7: 9C        .byte $9C   ; 
- D 0 - I - 0x02CFE8 0B:8FD8: 8F        .byte $8F   ; 
- D 0 - I - 0x02CFE9 0B:8FD9: 8E        .byte $8E   ; 
- D 0 - I - 0x02CFEA 0B:8FDA: 2B        .byte $2B   ; 
- D 0 - I - 0x02CFEB 0B:8FDB: 00        .byte $00   ; 
- D 0 - I - 0x02CFEC 0B:8FDC: 85        .byte $85   ; 
- D 0 - I - 0x02CFED 0B:8FDD: 01        .byte $01   ; 
- D 0 - I - 0x02CFEE 0B:8FDE: 02        .byte $02   ; 
- D 0 - I - 0x02CFEF 0B:8FDF: 49        .byte $49   ; 
- D 0 - I - 0x02CFF0 0B:8FE0: 4A        .byte $4A   ; 
- D 0 - I - 0x02CFF1 0B:8FE1: 03        .byte $03   ; 
- D 0 - I - 0x02CFF2 0B:8FE2: 03        .byte $03   ; 
- D 0 - I - 0x02CFF3 0B:8FE3: 00        .byte $00   ; 
- D 0 - I - 0x02CFF4 0B:8FE4: 81        .byte $81   ; 
- D 0 - I - 0x02CFF5 0B:8FE5: 01        .byte $01   ; 
- D 0 - I - 0x02CFF6 0B:8FE6: C4        .byte $C4   ; 
- D 0 - I - 0x02CFF7 0B:8FE7: 56        .byte $56   ; 
- D 0 - I - 0x02CFF8 0B:8FE8: 03        .byte $03   ; 
- D 0 - I - 0x02CFF9 0B:8FE9: 00        .byte $00   ; 
- D 0 - I - 0x02CFFA 0B:8FEA: 85        .byte $85   ; 
- D 0 - I - 0x02CFFB 0B:8FEB: 01        .byte $01   ; 
- D 0 - I - 0x02CFFC 0B:8FEC: 69        .byte $69   ; 
- D 0 - I - 0x02CFFD 0B:8FED: 6A        .byte $6A   ; 
- D 0 - I - 0x02CFFE 0B:8FEE: 02        .byte $02   ; 
- D 0 - I - 0x02CFFF 0B:8FEF: 03        .byte $03   ; 
- D 0 - I - 0x02D000 0B:8FF0: 0B        .byte $0B   ; 
- D 0 - I - 0x02D001 0B:8FF1: 00        .byte $00   ; 
- D 0 - I - 0x02D002 0B:8FF2: 85        .byte $85   ; 
- D 0 - I - 0x02D003 0B:8FF3: 04        .byte $04   ; 
- D 0 - I - 0x02D004 0B:8FF4: 00        .byte $00   ; 
- D 0 - I - 0x02D005 0B:8FF5: 4B        .byte $4B   ; 
- D 0 - I - 0x02D006 0B:8FF6: 4C        .byte $4C   ; 
- D 0 - I - 0x02D007 0B:8FF7: 08        .byte $08   ; 
- D 0 - I - 0x02D008 0B:8FF8: 03        .byte $03   ; 
- D 0 - I - 0x02D009 0B:8FF9: 00        .byte $00   ; 
- D 0 - I - 0x02D00A 0B:8FFA: 81        .byte $81   ; 
- D 0 - I - 0x02D00B 0B:8FFB: 04        .byte $04   ; 
- D 0 - I - 0x02D00C 0B:8FFC: C4        .byte $C4   ; 
- D 0 - I - 0x02D00D 0B:8FFD: 5A        .byte $5A   ; 
- D 0 - I - 0x02D00E 0B:8FFE: 03        .byte $03   ; 
- D 0 - I - 0x02D00F 0B:8FFF: 00        .byte $00   ; 
- D 0 - I - 0x02D010 0B:9000: C4        .byte $C4   ; 
- D 0 - I - 0x02D011 0B:9001: 6B        .byte $6B   ; 
- D 0 - I - 0x02D012 0B:9002: 81        .byte $81   ; 
- D 0 - I - 0x02D013 0B:9003: 08        .byte $08   ; 
- D 0 - I - 0x02D014 0B:9004: 0B        .byte $0B   ; 
- D 0 - I - 0x02D015 0B:9005: 00        .byte $00   ; 
- D 0 - I - 0x02D016 0B:9006: 81        .byte $81   ; 
- D 0 - I - 0x02D017 0B:9007: 04        .byte $04   ; 
- D 0 - I - 0x02D018 0B:9008: C3        .byte $C3   ; 
- D 0 - I - 0x02D019 0B:9009: 4D        .byte $4D   ; 
- D 0 - I - 0x02D01A 0B:900A: 81        .byte $81   ; 
- D 0 - I - 0x02D01B 0B:900B: 08        .byte $08   ; 
- D 0 - I - 0x02D01C 0B:900C: 03        .byte $03   ; 
- D 0 - I - 0x02D01D 0B:900D: 00        .byte $00   ; 
- D 0 - I - 0x02D01E 0B:900E: 81        .byte $81   ; 
- D 0 - I - 0x02D01F 0B:900F: 04        .byte $04   ; 
- D 0 - I - 0x02D020 0B:9010: C4        .byte $C4   ; 
- D 0 - I - 0x02D021 0B:9011: 5E        .byte $5E   ; 
- D 0 - I - 0x02D022 0B:9012: 03        .byte $03   ; 
- D 0 - I - 0x02D023 0B:9013: 00        .byte $00   ; 
- D 0 - I - 0x02D024 0B:9014: C4        .byte $C4   ; 
- D 0 - I - 0x02D025 0B:9015: 6F        .byte $6F   ; 
- D 0 - I - 0x02D026 0B:9016: 81        .byte $81   ; 
- D 0 - I - 0x02D027 0B:9017: 08        .byte $08   ; 
- D 0 - I - 0x02D028 0B:9018: 0B        .byte $0B   ; 
- D 0 - I - 0x02D029 0B:9019: 00        .byte $00   ; 
- D 0 - I - 0x02D02A 0B:901A: 81        .byte $81   ; 
- D 0 - I - 0x02D02B 0B:901B: 04        .byte $04   ; 
- D 0 - I - 0x02D02C 0B:901C: C3        .byte $C3   ; 
- D 0 - I - 0x02D02D 0B:901D: 50        .byte $50   ; 
- D 0 - I - 0x02D02E 0B:901E: 81        .byte $81   ; 
- D 0 - I - 0x02D02F 0B:901F: 08        .byte $08   ; 
- D 0 - I - 0x02D030 0B:9020: 03        .byte $03   ; 
- D 0 - I - 0x02D031 0B:9021: 00        .byte $00   ; 
- D 0 - I - 0x02D032 0B:9022: 81        .byte $81   ; 
- D 0 - I - 0x02D033 0B:9023: 04        .byte $04   ; 
- D 0 - I - 0x02D034 0B:9024: C4        .byte $C4   ; 
- D 0 - I - 0x02D035 0B:9025: 62        .byte $62   ; 
- D 0 - I - 0x02D036 0B:9026: 03        .byte $03   ; 
- D 0 - I - 0x02D037 0B:9027: 00        .byte $00   ; 
- D 0 - I - 0x02D038 0B:9028: C4        .byte $C4   ; 
- D 0 - I - 0x02D039 0B:9029: 73        .byte $73   ; 
- D 0 - I - 0x02D03A 0B:902A: 81        .byte $81   ; 
- D 0 - I - 0x02D03B 0B:902B: 08        .byte $08   ; 
- D 0 - I - 0x02D03C 0B:902C: 0B        .byte $0B   ; 
- D 0 - I - 0x02D03D 0B:902D: 00        .byte $00   ; 
- D 0 - I - 0x02D03E 0B:902E: 81        .byte $81   ; 
- D 0 - I - 0x02D03F 0B:902F: 05        .byte $05   ; 
- D 0 - I - 0x02D040 0B:9030: C3        .byte $C3   ; 
- D 0 - I - 0x02D041 0B:9031: 53        .byte $53   ; 
- D 0 - I - 0x02D042 0B:9032: 81        .byte $81   ; 
- D 0 - I - 0x02D043 0B:9033: 07        .byte $07   ; 
- D 0 - I - 0x02D044 0B:9034: 03        .byte $03   ; 
- D 0 - I - 0x02D045 0B:9035: 00        .byte $00   ; 
- D 0 - I - 0x02D046 0B:9036: 82        .byte $82   ; 
- D 0 - I - 0x02D047 0B:9037: 05        .byte $05   ; 
- D 0 - I - 0x02D048 0B:9038: 06        .byte $06   ; 
- D 0 - I - 0x02D049 0B:9039: C3        .byte $C3   ; 
- D 0 - I - 0x02D04A 0B:903A: 66        .byte $66   ; 
- D 0 - I - 0x02D04B 0B:903B: 03        .byte $03   ; 
- D 0 - I - 0x02D04C 0B:903C: 00        .byte $00   ; 
- D 0 - I - 0x02D04D 0B:903D: C5        .byte $C5   ; 
- D 0 - I - 0x02D04E 0B:903E: 77        .byte $77   ; 
- D 0 - I - 0x02D04F 0B:903F: 7E        .byte $7E   ; 
- D 0 - I - 0x02D050 0B:9040: 00        .byte $00   ; 
- D 0 - I - 0x02D051 0B:9041: 57        .byte $57   ; 
- D 0 - I - 0x02D052 0B:9042: 00        .byte $00   ; 
- D 0 - I - 0x02D053 0B:9043: 30        .byte $30   ; 
- D 0 - I - 0x02D054 0B:9044: FF        .byte $FF   ; 
- D 0 - I - 0x02D055 0B:9045: FF        .byte $FF   ; 



.export _off003_0x02D056_09
_off003_0x02D056_09:
- D 0 - I - 0x02D056 0B:9046: 00        .byte $00   ; 
- D 0 - I - 0x02D057 0B:9047: 20        .byte $20   ; 
- D 0 - I - 0x02D058 0B:9048: 64        .byte $64   ; 
- D 0 - I - 0x02D059 0B:9049: 00        .byte $00   ; 
- D 0 - I - 0x02D05A 0B:904A: 87        .byte $87   ; 
- D 0 - I - 0x02D05B 0B:904B: 82        .byte $82   ; 
- D 0 - I - 0x02D05C 0B:904C: 9A        .byte $9A   ; 
- D 0 - I - 0x02D05D 0B:904D: 96        .byte $96   ; 
- D 0 - I - 0x02D05E 0B:904E: 8B        .byte $8B   ; 
- D 0 - I - 0x02D05F 0B:904F: A3        .byte $A3   ; 
- D 0 - I - 0x02D060 0B:9050: 8F        .byte $8F   ; 
- D 0 - I - 0x02D061 0B:9051: 9C        .byte $9C   ; 
- D 0 - I - 0x02D062 0B:9052: 0A        .byte $0A   ; 
- D 0 - I - 0x02D063 0B:9053: 00        .byte $00   ; 
- D 0 - I - 0x02D064 0B:9054: 87        .byte $87   ; 
- D 0 - I - 0x02D065 0B:9055: 83        .byte $83   ; 
- D 0 - I - 0x02D066 0B:9056: 9A        .byte $9A   ; 
- D 0 - I - 0x02D067 0B:9057: 96        .byte $96   ; 
- D 0 - I - 0x02D068 0B:9058: 8B        .byte $8B   ; 
- D 0 - I - 0x02D069 0B:9059: A3        .byte $A3   ; 
- D 0 - I - 0x02D06A 0B:905A: 8F        .byte $8F   ; 
- D 0 - I - 0x02D06B 0B:905B: 9C        .byte $9C   ; 
- D 0 - I - 0x02D06C 0B:905C: 7E        .byte $7E   ; 
- D 0 - I - 0x02D06D 0B:905D: 00        .byte $00   ; 
- D 0 - I - 0x02D06E 0B:905E: 15        .byte $15   ; 
- D 0 - I - 0x02D06F 0B:905F: 00        .byte $00   ; 
- D 0 - I - 0x02D070 0B:9060: 82        .byte $82   ; 
- D 0 - I - 0x02D071 0B:9061: 7C        .byte $7C   ; 
- D 0 - I - 0x02D072 0B:9062: 7D        .byte $7D   ; 
- D 0 - I - 0x02D073 0B:9063: 1E        .byte $1E   ; 
- D 0 - I - 0x02D074 0B:9064: 00        .byte $00   ; 
- D 0 - I - 0x02D075 0B:9065: 82        .byte $82   ; 
- D 0 - I - 0x02D076 0B:9066: 7E        .byte $7E   ; 
- D 0 - I - 0x02D077 0B:9067: 7F        .byte $7F   ; 
- D 0 - I - 0x02D078 0B:9068: 5B        .byte $5B   ; 
- D 0 - I - 0x02D079 0B:9069: 00        .byte $00   ; 
- D 0 - I - 0x02D07A 0B:906A: 88        .byte $88   ; 
- D 0 - I - 0x02D07B 0B:906B: 9D        .byte $9D   ; 
- D 0 - I - 0x02D07C 0B:906C: 9E        .byte $9E   ; 
- D 0 - I - 0x02D07D 0B:906D: 9C        .byte $9C   ; 
- D 0 - I - 0x02D07E 0B:906E: 8F        .byte $8F   ; 
- D 0 - I - 0x02D07F 0B:906F: 98        .byte $98   ; 
- D 0 - I - 0x02D080 0B:9070: 91        .byte $91   ; 
- D 0 - I - 0x02D081 0B:9071: 9E        .byte $9E   ; 
- D 0 - I - 0x02D082 0B:9072: 92        .byte $92   ; 
- D 0 - I - 0x02D083 0B:9073: 10        .byte $10   ; 
- D 0 - I - 0x02D084 0B:9074: 00        .byte $00   ; 
- D 0 - I - 0x02D085 0B:9075: C7        .byte $C7   ; 
- D 0 - I - 0x02D086 0B:9076: 82        .byte $82   ; 
- D 0 - I - 0x02D087 0B:9077: 0A        .byte $0A   ; 
- D 0 - I - 0x02D088 0B:9078: 00        .byte $00   ; 
- D 0 - I - 0x02D089 0B:9079: C7        .byte $C7   ; 
- D 0 - I - 0x02D08A 0B:907A: 82        .byte $82   ; 
- D 0 - I - 0x02D08B 0B:907B: 4E        .byte $4E   ; 
- D 0 - I - 0x02D08C 0B:907C: 00        .byte $00   ; 
- D 0 - I - 0x02D08D 0B:907D: 8C        .byte $8C   ; 
- D 0 - I - 0x02D08E 0B:907E: 9D        .byte $9D   ; 
- D 0 - I - 0x02D08F 0B:907F: 9E        .byte $9E   ; 
- D 0 - I - 0x02D090 0B:9080: 8B        .byte $8B   ; 
- D 0 - I - 0x02D091 0B:9081: 91        .byte $91   ; 
- D 0 - I - 0x02D092 0B:9082: 8F        .byte $8F   ; 
- D 0 - I - 0x02D093 0B:9083: 00        .byte $00   ; 
- D 0 - I - 0x02D094 0B:9084: 9D        .byte $9D   ; 
- D 0 - I - 0x02D095 0B:9085: 8F        .byte $8F   ; 
- D 0 - I - 0x02D096 0B:9086: 96        .byte $96   ; 
- D 0 - I - 0x02D097 0B:9087: 8F        .byte $8F   ; 
- D 0 - I - 0x02D098 0B:9088: 8D        .byte $8D   ; 
- D 0 - I - 0x02D099 0B:9089: 9E        .byte $9E   ; 
- D 0 - I - 0x02D09A 0B:908A: 77        .byte $77   ; 
- D 0 - I - 0x02D09B 0B:908B: 00        .byte $00   ; 
- D 0 - I - 0x02D09C 0B:908C: C3        .byte $C3   ; 
- D 0 - I - 0x02D09D 0B:908D: 0D        .byte $0D   ; 
- D 0 - I - 0x02D09E 0B:908E: C3        .byte $C3   ; 
- D 0 - I - 0x02D09F 0B:908F: 80        .byte $80   ; 
- D 0 - I - 0x02D0A0 0B:9090: 10        .byte $10   ; 
- D 0 - I - 0x02D0A1 0B:9091: 00        .byte $00   ; 
- D 0 - I - 0x02D0A2 0B:9092: CD        .byte $CD   ; 
- D 0 - I - 0x02D0A3 0B:9093: 13        .byte $13   ; 
- D 0 - I - 0x02D0A4 0B:9094: CC        .byte $CC   ; 
- D 0 - I - 0x02D0A5 0B:9095: 90        .byte $90   ; 
- D 0 - I - 0x02D0A6 0B:9096: 07        .byte $07   ; 
- D 0 - I - 0x02D0A7 0B:9097: 00        .byte $00   ; 
- D 0 - I - 0x02D0A8 0B:9098: CD        .byte $CD   ; 
- D 0 - I - 0x02D0A9 0B:9099: 23        .byte $23   ; 
- D 0 - I - 0x02D0AA 0B:909A: CC        .byte $CC   ; 
- D 0 - I - 0x02D0AB 0B:909B: A0        .byte $A0   ; 
- D 0 - I - 0x02D0AC 0B:909C: 0E        .byte $0E   ; 
- D 0 - I - 0x02D0AD 0B:909D: 00        .byte $00   ; 
- D 0 - I - 0x02D0AE 0B:909E: C6        .byte $C6   ; 
- D 0 - I - 0x02D0AF 0B:909F: 3A        .byte $3A   ; 
- D 0 - I - 0x02D0B0 0B:90A0: C6        .byte $C6   ; 
- D 0 - I - 0x02D0B1 0B:90A1: B0        .byte $B0   ; 
- D 0 - I - 0x02D0B2 0B:90A2: 13        .byte $13   ; 
- D 0 - I - 0x02D0B3 0B:90A3: 00        .byte $00   ; 
- D 0 - I - 0x02D0B4 0B:90A4: C7        .byte $C7   ; 
- D 0 - I - 0x02D0B5 0B:90A5: 49        .byte $49   ; 
- D 0 - I - 0x02D0B6 0B:90A6: C7        .byte $C7   ; 
- D 0 - I - 0x02D0B7 0B:90A7: C0        .byte $C0   ; 
- D 0 - I - 0x02D0B8 0B:90A8: 11        .byte $11   ; 
- D 0 - I - 0x02D0B9 0B:90A9: 00        .byte $00   ; 
- D 0 - I - 0x02D0BA 0B:90AA: C8        .byte $C8   ; 
- D 0 - I - 0x02D0BB 0B:90AB: 58        .byte $58   ; 
- D 0 - I - 0x02D0BC 0B:90AC: C8        .byte $C8   ; 
- D 0 - I - 0x02D0BD 0B:90AD: D0        .byte $D0   ; 
- D 0 - I - 0x02D0BE 0B:90AE: 0A        .byte $0A   ; 
- D 0 - I - 0x02D0BF 0B:90AF: 00        .byte $00   ; 
- D 0 - I - 0x02D0C0 0B:90B0: CE        .byte $CE   ; 
- D 0 - I - 0x02D0C1 0B:90B1: 62        .byte $62   ; 
- D 0 - I - 0x02D0C2 0B:90B2: C8        .byte $C8   ; 
- D 0 - I - 0x02D0C3 0B:90B3: E0        .byte $E0   ; 
- D 0 - I - 0x02D0C4 0B:90B4: 0B        .byte $0B   ; 
- D 0 - I - 0x02D0C5 0B:90B5: 00        .byte $00   ; 
- D 0 - I - 0x02D0C6 0B:90B6: CD        .byte $CD   ; 
- D 0 - I - 0x02D0C7 0B:90B7: 73        .byte $73   ; 
- D 0 - I - 0x02D0C8 0B:90B8: CE        .byte $CE   ; 
- D 0 - I - 0x02D0C9 0B:90B9: F0        .byte $F0   ; 
- D 0 - I - 0x02D0CA 0B:90BA: 0A        .byte $0A   ; 
- D 0 - I - 0x02D0CB 0B:90BB: 00        .byte $00   ; 
- D 0 - I - 0x02D0CC 0B:90BC: 10        .byte $10   ; 
- D 0 - I - 0x02D0CD 0B:90BD: 88        .byte $88   ; 
- D 0 - I - 0x02D0CE 0B:90BE: 28        .byte $28   ; 
- D 0 - I - 0x02D0CF 0B:90BF: 00        .byte $00   ; 
- D 0 - I - 0x02D0D0 0B:90C0: 09        .byte $09   ; 
- D 0 - I - 0x02D0D1 0B:90C1: FF        .byte $FF   ; 
- D 0 - I - 0x02D0D2 0B:90C2: 8F        .byte $8F   ; 
- D 0 - I - 0x02D0D3 0B:90C3: 00        .byte $00   ; 
- D 0 - I - 0x02D0D4 0B:90C4: 00        .byte $00   ; 
- D 0 - I - 0x02D0D5 0B:90C5: FF        .byte $FF   ; 
- D 0 - I - 0x02D0D6 0B:90C6: FF        .byte $FF   ; 
- D 0 - I - 0x02D0D7 0B:90C7: AA        .byte $AA   ; 
- D 0 - I - 0x02D0D8 0B:90C8: AA        .byte $AA   ; 
- D 0 - I - 0x02D0D9 0B:90C9: EE        .byte $EE   ; 
- D 0 - I - 0x02D0DA 0B:90CA: 33        .byte $33   ; 
- D 0 - I - 0x02D0DB 0B:90CB: 00        .byte $00   ; 
- D 0 - I - 0x02D0DC 0B:90CC: 00        .byte $00   ; 
- D 0 - I - 0x02D0DD 0B:90CD: F7        .byte $F7   ; 
- D 0 - I - 0x02D0DE 0B:90CE: FD        .byte $FD   ; 
- D 0 - I - 0x02D0DF 0B:90CF: AA        .byte $AA   ; 
- D 0 - I - 0x02D0E0 0B:90D0: AA        .byte $AA   ; 
- D 0 - I - 0x02D0E1 0B:90D1: EE        .byte $EE   ; 
- D 0 - I - 0x02D0E2 0B:90D2: 03        .byte $03   ; 
- D 0 - I - 0x02D0E3 0B:90D3: FF        .byte $FF   ; 
- D 0 - I - 0x02D0E4 0B:90D4: 82        .byte $82   ; 
- D 0 - I - 0x02D0E5 0B:90D5: F5        .byte $F5   ; 
- D 0 - I - 0x02D0E6 0B:90D6: F5        .byte $F5   ; 
- D 0 - I - 0x02D0E7 0B:90D7: 05        .byte $05   ; 
- D 0 - I - 0x02D0E8 0B:90D8: FF        .byte $FF   ; 
- D 0 - I - 0x02D0E9 0B:90D9: 03        .byte $03   ; 
- D 0 - I - 0x02D0EA 0B:90DA: F5        .byte $F5   ; 
- D 0 - I - 0x02D0EB 0B:90DB: 81        .byte $81   ; 
- D 0 - I - 0x02D0EC 0B:90DC: FD        .byte $FD   ; 
- D 0 - I - 0x02D0ED 0B:90DD: 1A        .byte $1A   ; 
- D 0 - I - 0x02D0EE 0B:90DE: FF        .byte $FF   ; 
- D 0 - I - 0x02D0EF 0B:90DF: FF        .byte $FF   ; 



.export _off003_0x02D14F_0A
_off003_0x02D14F_0A:
- D 0 - I - 0x02D14F 0B:913F: 00        .byte $00   ; 
- D 0 - I - 0x02D150 0B:9140: 20        .byte $20   ; 
- D 0 - I - 0x02D151 0B:9141: 7E        .byte $7E   ; 
- D 0 - I - 0x02D152 0B:9142: 00        .byte $00   ; 
- D 0 - I - 0x02D153 0B:9143: 42        .byte $42   ; 
- D 0 - I - 0x02D154 0B:9144: 00        .byte $00   ; 
- D 0 - I - 0x02D155 0B:9145: C6        .byte $C6   ; 
- D 0 - I - 0x02D156 0B:9146: 01        .byte $01   ; 
- D 0 - I - 0x02D157 0B:9147: C9        .byte $C9   ; 
- D 0 - I - 0x02D158 0B:9148: 01        .byte $01   ; 
- D 0 - I - 0x02D159 0B:9149: 0A        .byte $0A   ; 
- D 0 - I - 0x02D15A 0B:914A: 09        .byte $09   ; 
- D 0 - I - 0x02D15B 0B:914B: 81        .byte $81   ; 
- D 0 - I - 0x02D15C 0B:914C: 3A        .byte $3A   ; 
- D 0 - I - 0x02D15D 0B:914D: 06        .byte $06   ; 
- D 0 - I - 0x02D15E 0B:914E: 09        .byte $09   ; 
- D 0 - I - 0x02D15F 0B:914F: C5        .byte $C5   ; 
- D 0 - I - 0x02D160 0B:9150: 0A        .byte $0A   ; 
- D 0 - I - 0x02D161 0B:9151: 81        .byte $81   ; 
- D 0 - I - 0x02D162 0B:9152: 01        .byte $01   ; 
- D 0 - I - 0x02D163 0B:9153: C5        .byte $C5   ; 
- D 0 - I - 0x02D164 0B:9154: 0A        .byte $0A   ; 
- D 0 - I - 0x02D165 0B:9155: 81        .byte $81   ; 
- D 0 - I - 0x02D166 0B:9156: 01        .byte $01   ; 
- D 0 - I - 0x02D167 0B:9157: C4        .byte $C4   ; 
- D 0 - I - 0x02D168 0B:9158: 0F        .byte $0F   ; 
- D 0 - I - 0x02D169 0B:9159: 91        .byte $91   ; 
- D 0 - I - 0x02D16A 0B:915A: 3B        .byte $3B   ; 
- D 0 - I - 0x02D16B 0B:915B: 3C        .byte $3C   ; 
- D 0 - I - 0x02D16C 0B:915C: 11        .byte $11   ; 
- D 0 - I - 0x02D16D 0B:915D: 12        .byte $12   ; 
- D 0 - I - 0x02D16E 0B:915E: 3B        .byte $3B   ; 
- D 0 - I - 0x02D16F 0B:915F: 3C        .byte $3C   ; 
- D 0 - I - 0x02D170 0B:9160: 11        .byte $11   ; 
- D 0 - I - 0x02D171 0B:9161: 12        .byte $12   ; 
- D 0 - I - 0x02D172 0B:9162: 3B        .byte $3B   ; 
- D 0 - I - 0x02D173 0B:9163: 18        .byte $18   ; 
- D 0 - I - 0x02D174 0B:9164: 11        .byte $11   ; 
- D 0 - I - 0x02D175 0B:9165: 12        .byte $12   ; 
- D 0 - I - 0x02D176 0B:9166: 3B        .byte $3B   ; 
- D 0 - I - 0x02D177 0B:9167: 3C        .byte $3C   ; 
- D 0 - I - 0x02D178 0B:9168: 11        .byte $11   ; 
- D 0 - I - 0x02D179 0B:9169: 12        .byte $12   ; 
- D 0 - I - 0x02D17A 0B:916A: 01        .byte $01   ; 
- D 0 - I - 0x02D17B 0B:916B: C5        .byte $C5   ; 
- D 0 - I - 0x02D17C 0B:916C: 13        .byte $13   ; 
- D 0 - I - 0x02D17D 0B:916D: 81        .byte $81   ; 
- D 0 - I - 0x02D17E 0B:916E: 01        .byte $01   ; 
- D 0 - I - 0x02D17F 0B:916F: C4        .byte $C4   ; 
- D 0 - I - 0x02D180 0B:9170: 13        .byte $13   ; 
- D 0 - I - 0x02D181 0B:9171: C3        .byte $C3   ; 
- D 0 - I - 0x02D182 0B:9172: 06        .byte $06   ; 
- D 0 - I - 0x02D183 0B:9173: 12        .byte $12   ; 
- D 0 - I - 0x02D184 0B:9174: 18        .byte $18   ; 
- D 0 - I - 0x02D185 0B:9175: 81        .byte $81   ; 
- D 0 - I - 0x02D186 0B:9176: 0A        .byte $0A   ; 
- D 0 - I - 0x02D187 0B:9177: C4        .byte $C4   ; 
- D 0 - I - 0x02D188 0B:9178: 19        .byte $19   ; 
- D 0 - I - 0x02D189 0B:9179: 82        .byte $82   ; 
- D 0 - I - 0x02D18A 0B:917A: 01        .byte $01   ; 
- D 0 - I - 0x02D18B 0B:917B: 0A        .byte $0A   ; 
- D 0 - I - 0x02D18C 0B:917C: C4        .byte $C4   ; 
- D 0 - I - 0x02D18D 0B:917D: 19        .byte $19   ; 
- D 0 - I - 0x02D18E 0B:917E: 83        .byte $83   ; 
- D 0 - I - 0x02D18F 0B:917F: 01        .byte $01   ; 
- D 0 - I - 0x02D190 0B:9180: 0F        .byte $0F   ; 
- D 0 - I - 0x02D191 0B:9181: 10        .byte $10   ; 
- D 0 - I - 0x02D192 0B:9182: 12        .byte $12   ; 
- D 0 - I - 0x02D193 0B:9183: 1D        .byte $1D   ; 
- D 0 - I - 0x02D194 0B:9184: 81        .byte $81   ; 
- D 0 - I - 0x02D195 0B:9185: 01        .byte $01   ; 
- D 0 - I - 0x02D196 0B:9186: C4        .byte $C4   ; 
- D 0 - I - 0x02D197 0B:9187: 1E        .byte $1E   ; 
- D 0 - I - 0x02D198 0B:9188: 82        .byte $82   ; 
- D 0 - I - 0x02D199 0B:9189: 06        .byte $06   ; 
- D 0 - I - 0x02D19A 0B:918A: 01        .byte $01   ; 
- D 0 - I - 0x02D19B 0B:918B: C4        .byte $C4   ; 
- D 0 - I - 0x02D19C 0B:918C: 1E        .byte $1E   ; 
- D 0 - I - 0x02D19D 0B:918D: 89        .byte $89   ; 
- D 0 - I - 0x02D19E 0B:918E: 17        .byte $17   ; 
- D 0 - I - 0x02D19F 0B:918F: 07        .byte $07   ; 
- D 0 - I - 0x02D1A0 0B:9190: 08        .byte $08   ; 
- D 0 - I - 0x02D1A1 0B:9191: 22        .byte $22   ; 
- D 0 - I - 0x02D1A2 0B:9192: 23        .byte $23   ; 
- D 0 - I - 0x02D1A3 0B:9193: 3D        .byte $3D   ; 
- D 0 - I - 0x02D1A4 0B:9194: 3E        .byte $3E   ; 
- D 0 - I - 0x02D1A5 0B:9195: 3E        .byte $3E   ; 
- D 0 - I - 0x02D1A6 0B:9196: 3F        .byte $3F   ; 
- D 0 - I - 0x02D1A7 0B:9197: 07        .byte $07   ; 
- D 0 - I - 0x02D1A8 0B:9198: 23        .byte $23   ; 
- D 0 - I - 0x02D1A9 0B:9199: C3        .byte $C3   ; 
- D 0 - I - 0x02D1AA 0B:919A: 3D        .byte $3D   ; 
- D 0 - I - 0x02D1AB 0B:919B: 83        .byte $83   ; 
- D 0 - I - 0x02D1AC 0B:919C: 23        .byte $23   ; 
- D 0 - I - 0x02D1AD 0B:919D: 23        .byte $23   ; 
- D 0 - I - 0x02D1AE 0B:919E: 0A        .byte $0A   ; 
- D 0 - I - 0x02D1AF 0B:919F: C4        .byte $C4   ; 
- D 0 - I - 0x02D1B0 0B:91A0: 24        .byte $24   ; 
- D 0 - I - 0x02D1B1 0B:91A1: 82        .byte $82   ; 
- D 0 - I - 0x02D1B2 0B:91A2: 01        .byte $01   ; 
- D 0 - I - 0x02D1B3 0B:91A3: 0A        .byte $0A   ; 
- D 0 - I - 0x02D1B4 0B:91A4: C4        .byte $C4   ; 
- D 0 - I - 0x02D1B5 0B:91A5: 24        .byte $24   ; 
- D 0 - I - 0x02D1B6 0B:91A6: 95        .byte $95   ; 
- D 0 - I - 0x02D1B7 0B:91A7: 01        .byte $01   ; 
- D 0 - I - 0x02D1B8 0B:91A8: 0F        .byte $0F   ; 
- D 0 - I - 0x02D1B9 0B:91A9: 10        .byte $10   ; 
- D 0 - I - 0x02D1BA 0B:91AA: 28        .byte $28   ; 
- D 0 - I - 0x02D1BB 0B:91AB: 29        .byte $29   ; 
- D 0 - I - 0x02D1BC 0B:91AC: 40        .byte $40   ; 
- D 0 - I - 0x02D1BD 0B:91AD: 41        .byte $41   ; 
- D 0 - I - 0x02D1BE 0B:91AE: 41        .byte $41   ; 
- D 0 - I - 0x02D1BF 0B:91AF: 42        .byte $42   ; 
- D 0 - I - 0x02D1C0 0B:91B0: 29        .byte $29   ; 
- D 0 - I - 0x02D1C1 0B:91B1: 40        .byte $40   ; 
- D 0 - I - 0x02D1C2 0B:91B2: 40        .byte $40   ; 
- D 0 - I - 0x02D1C3 0B:91B3: 43        .byte $43   ; 
- D 0 - I - 0x02D1C4 0B:91B4: 40        .byte $40   ; 
- D 0 - I - 0x02D1C5 0B:91B5: 40        .byte $40   ; 
- D 0 - I - 0x02D1C6 0B:91B6: 29        .byte $29   ; 
- D 0 - I - 0x02D1C7 0B:91B7: 44        .byte $44   ; 
- D 0 - I - 0x02D1C8 0B:91B8: 41        .byte $41   ; 
- D 0 - I - 0x02D1C9 0B:91B9: 42        .byte $42   ; 
- D 0 - I - 0x02D1CA 0B:91BA: 40        .byte $40   ; 
- D 0 - I - 0x02D1CB 0B:91BB: 43        .byte $43   ; 
- D 0 - I - 0x02D1CC 0B:91BC: C3        .byte $C3   ; 
- D 0 - I - 0x02D1CD 0B:91BD: 2A        .byte $2A   ; 
- D 0 - I - 0x02D1CE 0B:91BE: C3        .byte $C3   ; 
- D 0 - I - 0x02D1CF 0B:91BF: 2C        .byte $2C   ; 
- D 0 - I - 0x02D1D0 0B:91C0: C3        .byte $C3   ; 
- D 0 - I - 0x02D1D1 0B:91C1: 2A        .byte $2A   ; 
- D 0 - I - 0x02D1D2 0B:91C2: C3        .byte $C3   ; 
- D 0 - I - 0x02D1D3 0B:91C3: 2C        .byte $2C   ; 
- D 0 - I - 0x02D1D4 0B:91C4: 86        .byte $86   ; 
- D 0 - I - 0x02D1D5 0B:91C5: 07        .byte $07   ; 
- D 0 - I - 0x02D1D6 0B:91C6: 08        .byte $08   ; 
- D 0 - I - 0x02D1D7 0B:91C7: 2F        .byte $2F   ; 
- D 0 - I - 0x02D1D8 0B:91C8: 30        .byte $30   ; 
- D 0 - I - 0x02D1D9 0B:91C9: 45        .byte $45   ; 
- D 0 - I - 0x02D1DA 0B:91CA: 46        .byte $46   ; 
- D 0 - I - 0x02D1DB 0B:91CB: 04        .byte $04   ; 
- D 0 - I - 0x02D1DC 0B:91CC: 30        .byte $30   ; 
- D 0 - I - 0x02D1DD 0B:91CD: 9B        .byte $9B   ; 
- D 0 - I - 0x02D1DE 0B:91CE: 47        .byte $47   ; 
- D 0 - I - 0x02D1DF 0B:91CF: 48        .byte $48   ; 
- D 0 - I - 0x02D1E0 0B:91D0: 46        .byte $46   ; 
- D 0 - I - 0x02D1E1 0B:91D1: 45        .byte $45   ; 
- D 0 - I - 0x02D1E2 0B:91D2: 30        .byte $30   ; 
- D 0 - I - 0x02D1E3 0B:91D3: 30        .byte $30   ; 
- D 0 - I - 0x02D1E4 0B:91D4: 49        .byte $49   ; 
- D 0 - I - 0x02D1E5 0B:91D5: 4A        .byte $4A   ; 
- D 0 - I - 0x02D1E6 0B:91D6: 47        .byte $47   ; 
- D 0 - I - 0x02D1E7 0B:91D7: 48        .byte $48   ; 
- D 0 - I - 0x02D1E8 0B:91D8: 31        .byte $31   ; 
- D 0 - I - 0x02D1E9 0B:91D9: 2A        .byte $2A   ; 
- D 0 - I - 0x02D1EA 0B:91DA: 2E        .byte $2E   ; 
- D 0 - I - 0x02D1EB 0B:91DB: 2A        .byte $2A   ; 
- D 0 - I - 0x02D1EC 0B:91DC: 2E        .byte $2E   ; 
- D 0 - I - 0x02D1ED 0B:91DD: 2A        .byte $2A   ; 
- D 0 - I - 0x02D1EE 0B:91DE: 2E        .byte $2E   ; 
- D 0 - I - 0x02D1EF 0B:91DF: 2A        .byte $2A   ; 
- D 0 - I - 0x02D1F0 0B:91E0: 2E        .byte $2E   ; 
- D 0 - I - 0x02D1F1 0B:91E1: 2A        .byte $2A   ; 
- D 0 - I - 0x02D1F2 0B:91E2: 2E        .byte $2E   ; 
- D 0 - I - 0x02D1F3 0B:91E3: 2A        .byte $2A   ; 
- D 0 - I - 0x02D1F4 0B:91E4: 0F        .byte $0F   ; 
- D 0 - I - 0x02D1F5 0B:91E5: 10        .byte $10   ; 
- D 0 - I - 0x02D1F6 0B:91E6: 32        .byte $32   ; 
- D 0 - I - 0x02D1F7 0B:91E7: 18        .byte $18   ; 
- D 0 - I - 0x02D1F8 0B:91E8: 18        .byte $18   ; 
- D 0 - I - 0x02D1F9 0B:91E9: C7        .byte $C7   ; 
- D 0 - I - 0x02D1FA 0B:91EA: 4B        .byte $4B   ; 
- D 0 - I - 0x02D1FB 0B:91EB: 81        .byte $81   ; 
- D 0 - I - 0x02D1FC 0B:91EC: 4B        .byte $4B   ; 
- D 0 - I - 0x02D1FD 0B:91ED: 03        .byte $03   ; 
- D 0 - I - 0x02D1FE 0B:91EE: 18        .byte $18   ; 
- D 0 - I - 0x02D1FF 0B:91EF: 86        .byte $86   ; 
- D 0 - I - 0x02D200 0B:91F0: 52        .byte $52   ; 
- D 0 - I - 0x02D201 0B:91F1: 18        .byte $18   ; 
- D 0 - I - 0x02D202 0B:91F2: 53        .byte $53   ; 
- D 0 - I - 0x02D203 0B:91F3: 51        .byte $51   ; 
- D 0 - I - 0x02D204 0B:91F4: 33        .byte $33   ; 
- D 0 - I - 0x02D205 0B:91F5: 34        .byte $34   ; 
- D 0 - I - 0x02D206 0B:91F6: 05        .byte $05   ; 
- D 0 - I - 0x02D207 0B:91F7: 33        .byte $33   ; 
- D 0 - I - 0x02D208 0B:91F8: 81        .byte $81   ; 
- D 0 - I - 0x02D209 0B:91F9: 34        .byte $34   ; 
- D 0 - I - 0x02D20A 0B:91FA: 05        .byte $05   ; 
- D 0 - I - 0x02D20B 0B:91FB: 33        .byte $33   ; 
- D 0 - I - 0x02D20C 0B:91FC: C3        .byte $C3   ; 
- D 0 - I - 0x02D20D 0B:91FD: 34        .byte $34   ; 
- D 0 - I - 0x02D20E 0B:91FE: 83        .byte $83   ; 
- D 0 - I - 0x02D20F 0B:91FF: 46        .byte $46   ; 
- D 0 - I - 0x02D210 0B:9200: 30        .byte $30   ; 
- D 0 - I - 0x02D211 0B:9201: 30        .byte $30   ; 
- D 0 - I - 0x02D212 0B:9202: C4        .byte $C4   ; 
- D 0 - I - 0x02D213 0B:9203: 54        .byte $54   ; 
- D 0 - I - 0x02D214 0B:9204: 81        .byte $81   ; 
- D 0 - I - 0x02D215 0B:9205: 48        .byte $48   ; 
- D 0 - I - 0x02D216 0B:9206: 03        .byte $03   ; 
- D 0 - I - 0x02D217 0B:9207: 30        .byte $30   ; 
- D 0 - I - 0x02D218 0B:9208: 87        .byte $87   ; 
- D 0 - I - 0x02D219 0B:9209: 46        .byte $46   ; 
- D 0 - I - 0x02D21A 0B:920A: 58        .byte $58   ; 
- D 0 - I - 0x02D21B 0B:920B: 30        .byte $30   ; 
- D 0 - I - 0x02D21C 0B:920C: 47        .byte $47   ; 
- D 0 - I - 0x02D21D 0B:920D: 48        .byte $48   ; 
- D 0 - I - 0x02D21E 0B:920E: 37        .byte $37   ; 
- D 0 - I - 0x02D21F 0B:920F: 38        .byte $38   ; 
- D 0 - I - 0x02D220 0B:9210: 05        .byte $05   ; 
- D 0 - I - 0x02D221 0B:9211: 37        .byte $37   ; 
- D 0 - I - 0x02D222 0B:9212: 81        .byte $81   ; 
- D 0 - I - 0x02D223 0B:9213: 38        .byte $38   ; 
- D 0 - I - 0x02D224 0B:9214: 05        .byte $05   ; 
- D 0 - I - 0x02D225 0B:9215: 37        .byte $37   ; 
- D 0 - I - 0x02D226 0B:9216: 84        .byte $84   ; 
- D 0 - I - 0x02D227 0B:9217: 38        .byte $38   ; 
- D 0 - I - 0x02D228 0B:9218: 39        .byte $39   ; 
- D 0 - I - 0x02D229 0B:9219: 18        .byte $18   ; 
- D 0 - I - 0x02D22A 0B:921A: 4B        .byte $4B   ; 
- D 0 - I - 0x02D22B 0B:921B: C4        .byte $C4   ; 
- D 0 - I - 0x02D22C 0B:921C: 59        .byte $59   ; 
- D 0 - I - 0x02D22D 0B:921D: 83        .byte $83   ; 
- D 0 - I - 0x02D22E 0B:921E: 4B        .byte $4B   ; 
- D 0 - I - 0x02D22F 0B:921F: 53        .byte $53   ; 
- D 0 - I - 0x02D230 0B:9220: 51        .byte $51   ; 
- D 0 - I - 0x02D231 0B:9221: 03        .byte $03   ; 
- D 0 - I - 0x02D232 0B:9222: 18        .byte $18   ; 
- D 0 - I - 0x02D233 0B:9223: 87        .byte $87   ; 
- D 0 - I - 0x02D234 0B:9224: 4B        .byte $4B   ; 
- D 0 - I - 0x02D235 0B:9225: 18        .byte $18   ; 
- D 0 - I - 0x02D236 0B:9226: 18        .byte $18   ; 
- D 0 - I - 0x02D237 0B:9227: 53        .byte $53   ; 
- D 0 - I - 0x02D238 0B:9228: 51        .byte $51   ; 
- D 0 - I - 0x02D239 0B:9229: 37        .byte $37   ; 
- D 0 - I - 0x02D23A 0B:922A: 38        .byte $38   ; 
- D 0 - I - 0x02D23B 0B:922B: 05        .byte $05   ; 
- D 0 - I - 0x02D23C 0B:922C: 37        .byte $37   ; 
- D 0 - I - 0x02D23D 0B:922D: 81        .byte $81   ; 
- D 0 - I - 0x02D23E 0B:922E: 38        .byte $38   ; 
- D 0 - I - 0x02D23F 0B:922F: 05        .byte $05   ; 
- D 0 - I - 0x02D240 0B:9230: 37        .byte $37   ; 
- D 0 - I - 0x02D241 0B:9231: 82        .byte $82   ; 
- D 0 - I - 0x02D242 0B:9232: 38        .byte $38   ; 
- D 0 - I - 0x02D243 0B:9233: 83        .byte $83   ; 
- D 0 - I - 0x02D244 0B:9234: 07        .byte $07   ; 
- D 0 - I - 0x02D245 0B:9235: 84        .byte $84   ; 
- D 0 - I - 0x02D246 0B:9236: 82        .byte $82   ; 
- D 0 - I - 0x02D247 0B:9237: 99        .byte $99   ; 
- D 0 - I - 0x02D248 0B:9238: 9A        .byte $9A   ; 
- D 0 - I - 0x02D249 0B:9239: 06        .byte $06   ; 
- D 0 - I - 0x02D24A 0B:923A: 84        .byte $84   ; 
- D 0 - I - 0x02D24B 0B:923B: 84        .byte $84   ; 
- D 0 - I - 0x02D24C 0B:923C: 99        .byte $99   ; 
- D 0 - I - 0x02D24D 0B:923D: 9A        .byte $9A   ; 
- D 0 - I - 0x02D24E 0B:923E: 37        .byte $37   ; 
- D 0 - I - 0x02D24F 0B:923F: 38        .byte $38   ; 
- D 0 - I - 0x02D250 0B:9240: 05        .byte $05   ; 
- D 0 - I - 0x02D251 0B:9241: 37        .byte $37   ; 
- D 0 - I - 0x02D252 0B:9242: 81        .byte $81   ; 
- D 0 - I - 0x02D253 0B:9243: 38        .byte $38   ; 
- D 0 - I - 0x02D254 0B:9244: 05        .byte $05   ; 
- D 0 - I - 0x02D255 0B:9245: 37        .byte $37   ; 
- D 0 - I - 0x02D256 0B:9246: 83        .byte $83   ; 
- D 0 - I - 0x02D257 0B:9247: 38        .byte $38   ; 
- D 0 - I - 0x02D258 0B:9248: 85        .byte $85   ; 
- D 0 - I - 0x02D259 0B:9249: 86        .byte $86   ; 
- D 0 - I - 0x02D25A 0B:924A: C3        .byte $C3   ; 
- D 0 - I - 0x02D25B 0B:924B: 9B        .byte $9B   ; 
- D 0 - I - 0x02D25C 0B:924C: 82        .byte $82   ; 
- D 0 - I - 0x02D25D 0B:924D: 85        .byte $85   ; 
- D 0 - I - 0x02D25E 0B:924E: 86        .byte $86   ; 
- D 0 - I - 0x02D25F 0B:924F: C3        .byte $C3   ; 
- D 0 - I - 0x02D260 0B:9250: 9B        .byte $9B   ; 
- D 0 - I - 0x02D261 0B:9251: 82        .byte $82   ; 
- D 0 - I - 0x02D262 0B:9252: 85        .byte $85   ; 
- D 0 - I - 0x02D263 0B:9253: 86        .byte $86   ; 
- D 0 - I - 0x02D264 0B:9254: C3        .byte $C3   ; 
- D 0 - I - 0x02D265 0B:9255: 9B        .byte $9B   ; 
- D 0 - I - 0x02D266 0B:9256: 85        .byte $85   ; 
- D 0 - I - 0x02D267 0B:9257: 85        .byte $85   ; 
- D 0 - I - 0x02D268 0B:9258: 86        .byte $86   ; 
- D 0 - I - 0x02D269 0B:9259: 9B        .byte $9B   ; 
- D 0 - I - 0x02D26A 0B:925A: 37        .byte $37   ; 
- D 0 - I - 0x02D26B 0B:925B: 38        .byte $38   ; 
- D 0 - I - 0x02D26C 0B:925C: 05        .byte $05   ; 
- D 0 - I - 0x02D26D 0B:925D: 37        .byte $37   ; 
- D 0 - I - 0x02D26E 0B:925E: 82        .byte $82   ; 
- D 0 - I - 0x02D26F 0B:925F: 38        .byte $38   ; 
- D 0 - I - 0x02D270 0B:9260: 87        .byte $87   ; 
- D 0 - I - 0x02D271 0B:9261: 04        .byte $04   ; 
- D 0 - I - 0x02D272 0B:9262: 37        .byte $37   ; 
- D 0 - I - 0x02D273 0B:9263: 83        .byte $83   ; 
- D 0 - I - 0x02D274 0B:9264: 38        .byte $38   ; 
- D 0 - I - 0x02D275 0B:9265: 88        .byte $88   ; 
- D 0 - I - 0x02D276 0B:9266: 89        .byte $89   ; 
- D 0 - I - 0x02D277 0B:9267: C3        .byte $C3   ; 
- D 0 - I - 0x02D278 0B:9268: 9E        .byte $9E   ; 
- D 0 - I - 0x02D279 0B:9269: 82        .byte $82   ; 
- D 0 - I - 0x02D27A 0B:926A: 88        .byte $88   ; 
- D 0 - I - 0x02D27B 0B:926B: 89        .byte $89   ; 
- D 0 - I - 0x02D27C 0B:926C: C3        .byte $C3   ; 
- D 0 - I - 0x02D27D 0B:926D: 9E        .byte $9E   ; 
- D 0 - I - 0x02D27E 0B:926E: 82        .byte $82   ; 
- D 0 - I - 0x02D27F 0B:926F: 88        .byte $88   ; 
- D 0 - I - 0x02D280 0B:9270: 89        .byte $89   ; 
- D 0 - I - 0x02D281 0B:9271: C3        .byte $C3   ; 
- D 0 - I - 0x02D282 0B:9272: 9E        .byte $9E   ; 
- D 0 - I - 0x02D283 0B:9273: 85        .byte $85   ; 
- D 0 - I - 0x02D284 0B:9274: 88        .byte $88   ; 
- D 0 - I - 0x02D285 0B:9275: 89        .byte $89   ; 
- D 0 - I - 0x02D286 0B:9276: 9E        .byte $9E   ; 
- D 0 - I - 0x02D287 0B:9277: 8A        .byte $8A   ; 
- D 0 - I - 0x02D288 0B:9278: 8B        .byte $8B   ; 
- D 0 - I - 0x02D289 0B:9279: 05        .byte $05   ; 
- D 0 - I - 0x02D28A 0B:927A: 8A        .byte $8A   ; 
- D 0 - I - 0x02D28B 0B:927B: 82        .byte $82   ; 
- D 0 - I - 0x02D28C 0B:927C: 8B        .byte $8B   ; 
- D 0 - I - 0x02D28D 0B:927D: 8C        .byte $8C   ; 
- D 0 - I - 0x02D28E 0B:927E: 04        .byte $04   ; 
- D 0 - I - 0x02D28F 0B:927F: 8A        .byte $8A   ; 
- D 0 - I - 0x02D290 0B:9280: 83        .byte $83   ; 
- D 0 - I - 0x02D291 0B:9281: 8B        .byte $8B   ; 
- D 0 - I - 0x02D292 0B:9282: 8D        .byte $8D   ; 
- D 0 - I - 0x02D293 0B:9283: 8E        .byte $8E   ; 
- D 0 - I - 0x02D294 0B:9284: C3        .byte $C3   ; 
- D 0 - I - 0x02D295 0B:9285: A1        .byte $A1   ; 
- D 0 - I - 0x02D296 0B:9286: 82        .byte $82   ; 
- D 0 - I - 0x02D297 0B:9287: 8D        .byte $8D   ; 
- D 0 - I - 0x02D298 0B:9288: 8E        .byte $8E   ; 
- D 0 - I - 0x02D299 0B:9289: C3        .byte $C3   ; 
- D 0 - I - 0x02D29A 0B:928A: A1        .byte $A1   ; 
- D 0 - I - 0x02D29B 0B:928B: 82        .byte $82   ; 
- D 0 - I - 0x02D29C 0B:928C: 8D        .byte $8D   ; 
- D 0 - I - 0x02D29D 0B:928D: 8E        .byte $8E   ; 
- D 0 - I - 0x02D29E 0B:928E: C3        .byte $C3   ; 
- D 0 - I - 0x02D29F 0B:928F: A1        .byte $A1   ; 
- D 0 - I - 0x02D2A0 0B:9290: 83        .byte $83   ; 
- D 0 - I - 0x02D2A1 0B:9291: 8D        .byte $8D   ; 
- D 0 - I - 0x02D2A2 0B:9292: 8E        .byte $8E   ; 
- D 0 - I - 0x02D2A3 0B:9293: A1        .byte $A1   ; 
- D 0 - I - 0x02D2A4 0B:9294: 0A        .byte $0A   ; 
- D 0 - I - 0x02D2A5 0B:9295: 8F        .byte $8F   ; 
- D 0 - I - 0x02D2A6 0B:9296: C4        .byte $C4   ; 
- D 0 - I - 0x02D2A7 0B:9297: 90        .byte $90   ; 
- D 0 - I - 0x02D2A8 0B:9298: 05        .byte $05   ; 
- D 0 - I - 0x02D2A9 0B:9299: 8F        .byte $8F   ; 
- D 0 - I - 0x02D2AA 0B:929A: 82        .byte $82   ; 
- D 0 - I - 0x02D2AB 0B:929B: A4        .byte $A4   ; 
- D 0 - I - 0x02D2AC 0B:929C: A5        .byte $A5   ; 
- D 0 - I - 0x02D2AD 0B:929D: 07        .byte $07   ; 
- D 0 - I - 0x02D2AE 0B:929E: 8F        .byte $8F   ; 
- D 0 - I - 0x02D2AF 0B:929F: 81        .byte $81   ; 
- D 0 - I - 0x02D2B0 0B:92A0: A6        .byte $A6   ; 
- D 0 - I - 0x02D2B1 0B:92A1: 03        .byte $03   ; 
- D 0 - I - 0x02D2B2 0B:92A2: 8F        .byte $8F   ; 
- D 0 - I - 0x02D2B3 0B:92A3: 09        .byte $09   ; 
- D 0 - I - 0x02D2B4 0B:92A4: 94        .byte $94   ; 
- D 0 - I - 0x02D2B5 0B:92A5: 82        .byte $82   ; 
- D 0 - I - 0x02D2B6 0B:92A6: 95        .byte $95   ; 
- D 0 - I - 0x02D2B7 0B:92A7: 96        .byte $96   ; 
- D 0 - I - 0x02D2B8 0B:92A8: 04        .byte $04   ; 
- D 0 - I - 0x02D2B9 0B:92A9: 94        .byte $94   ; 
- D 0 - I - 0x02D2BA 0B:92AA: 81        .byte $81   ; 
- D 0 - I - 0x02D2BB 0B:92AB: 97        .byte $97   ; 
- D 0 - I - 0x02D2BC 0B:92AC: 03        .byte $03   ; 
- D 0 - I - 0x02D2BD 0B:92AD: 94        .byte $94   ; 
- D 0 - I - 0x02D2BE 0B:92AE: 81        .byte $81   ; 
- D 0 - I - 0x02D2BF 0B:92AF: A7        .byte $A7   ; 
- D 0 - I - 0x02D2C0 0B:92B0: 08        .byte $08   ; 
- D 0 - I - 0x02D2C1 0B:92B1: 94        .byte $94   ; 
- D 0 - I - 0x02D2C2 0B:92B2: 84        .byte $84   ; 
- D 0 - I - 0x02D2C3 0B:92B3: A8        .byte $A8   ; 
- D 0 - I - 0x02D2C4 0B:92B4: 97        .byte $97   ; 
- D 0 - I - 0x02D2C5 0B:92B5: 94        .byte $94   ; 
- D 0 - I - 0x02D2C6 0B:92B6: 94        .byte $94   ; 
- D 0 - I - 0x02D2C7 0B:92B7: 07        .byte $07   ; 
- D 0 - I - 0x02D2C8 0B:92B8: 8F        .byte $8F   ; 
- D 0 - I - 0x02D2C9 0B:92B9: C3        .byte $C3   ; 
- D 0 - I - 0x02D2CA 0B:92BA: 90        .byte $90   ; 
- D 0 - I - 0x02D2CB 0B:92BB: 07        .byte $07   ; 
- D 0 - I - 0x02D2CC 0B:92BC: 8F        .byte $8F   ; 
- D 0 - I - 0x02D2CD 0B:92BD: 83        .byte $83   ; 
- D 0 - I - 0x02D2CE 0B:92BE: 93        .byte $93   ; 
- D 0 - I - 0x02D2CF 0B:92BF: A9        .byte $A9   ; 
- D 0 - I - 0x02D2D0 0B:92C0: A5        .byte $A5   ; 
- D 0 - I - 0x02D2D1 0B:92C1: 08        .byte $08   ; 
- D 0 - I - 0x02D2D2 0B:92C2: 8F        .byte $8F   ; 
- D 0 - I - 0x02D2D3 0B:92C3: 84        .byte $84   ; 
- D 0 - I - 0x02D2D4 0B:92C4: A6        .byte $A6   ; 
- D 0 - I - 0x02D2D5 0B:92C5: 8F        .byte $8F   ; 
- D 0 - I - 0x02D2D6 0B:92C6: 93        .byte $93   ; 
- D 0 - I - 0x02D2D7 0B:92C7: 8F        .byte $8F   ; 
- D 0 - I - 0x02D2D8 0B:92C8: 06        .byte $06   ; 
- D 0 - I - 0x02D2D9 0B:92C9: 94        .byte $94   ; 
- D 0 - I - 0x02D2DA 0B:92CA: 84        .byte $84   ; 
- D 0 - I - 0x02D2DB 0B:92CB: 95        .byte $95   ; 
- D 0 - I - 0x02D2DC 0B:92CC: 96        .byte $96   ; 
- D 0 - I - 0x02D2DD 0B:92CD: 94        .byte $94   ; 
- D 0 - I - 0x02D2DE 0B:92CE: 98        .byte $98   ; 
- D 0 - I - 0x02D2DF 0B:92CF: 08        .byte $08   ; 
- D 0 - I - 0x02D2E0 0B:92D0: 94        .byte $94   ; 
- D 0 - I - 0x02D2E1 0B:92D1: 81        .byte $81   ; 
- D 0 - I - 0x02D2E2 0B:92D2: A7        .byte $A7   ; 
- D 0 - I - 0x02D2E3 0B:92D3: 09        .byte $09   ; 
- D 0 - I - 0x02D2E4 0B:92D4: 94        .byte $94   ; 
- D 0 - I - 0x02D2E5 0B:92D5: 81        .byte $81   ; 
- D 0 - I - 0x02D2E6 0B:92D6: A8        .byte $A8   ; 
- D 0 - I - 0x02D2E7 0B:92D7: 03        .byte $03   ; 
- D 0 - I - 0x02D2E8 0B:92D8: 94        .byte $94   ; 
- D 0 - I - 0x02D2E9 0B:92D9: 7E        .byte $7E   ; 
- D 0 - I - 0x02D2EA 0B:92DA: 00        .byte $00   ; 
- D 0 - I - 0x02D2EB 0B:92DB: 42        .byte $42   ; 
- D 0 - I - 0x02D2EC 0B:92DC: 00        .byte $00   ; 
- D 0 - I - 0x02D2ED 0B:92DD: 08        .byte $08   ; 
- D 0 - I - 0x02D2EE 0B:92DE: FF        .byte $FF   ; 
- D 0 - I - 0x02D2EF 0B:92DF: 08        .byte $08   ; 
- D 0 - I - 0x02D2F0 0B:92E0: 5F        .byte $5F   ; 
- D 0 - I - 0x02D2F1 0B:92E1: 84        .byte $84   ; 
- D 0 - I - 0x02D2F2 0B:92E2: 11        .byte $11   ; 
- D 0 - I - 0x02D2F3 0B:92E3: 55        .byte $55   ; 
- D 0 - I - 0x02D2F4 0B:92E4: 44        .byte $44   ; 
- D 0 - I - 0x02D2F5 0B:92E5: 15        .byte $15   ; 
- D 0 - I - 0x02D2F6 0B:92E6: 07        .byte $07   ; 
- D 0 - I - 0x02D2F7 0B:92E7: 05        .byte $05   ; 
- D 0 - I - 0x02D2F8 0B:92E8: 81        .byte $81   ; 
- D 0 - I - 0x02D2F9 0B:92E9: 01        .byte $01   ; 
- D 0 - I - 0x02D2FA 0B:92EA: 0C        .byte $0C   ; 
- D 0 - I - 0x02D2FB 0B:92EB: 00        .byte $00   ; 
- D 0 - I - 0x02D2FC 0B:92EC: 08        .byte $08   ; 
- D 0 - I - 0x02D2FD 0B:92ED: AA        .byte $AA   ; 
- D 0 - I - 0x02D2FE 0B:92EE: 10        .byte $10   ; 
- D 0 - I - 0x02D2FF 0B:92EF: FF        .byte $FF   ; 
- D 0 - I - 0x02D300 0B:92F0: 7F        .byte $7F   ; 
- D 0 - I - 0x02D301 0B:92F1: 00        .byte $00   ; 
- D 0 - I - 0x02D302 0B:92F2: 24        .byte $24   ; 
- D 0 - I - 0x02D303 0B:92F3: 7E        .byte $7E   ; 
- D 0 - I - 0x02D304 0B:92F4: 00        .byte $00   ; 
- D 0 - I - 0x02D305 0B:92F5: 42        .byte $42   ; 
- D 0 - I - 0x02D306 0B:92F6: 00        .byte $00   ; 
- D 0 - I - 0x02D307 0B:92F7: 84        .byte $84   ; 
- D 0 - I - 0x02D308 0B:92F8: 09        .byte $09   ; 
- D 0 - I - 0x02D309 0B:92F9: 3A        .byte $3A   ; 
- D 0 - I - 0x02D30A 0B:92FA: 09        .byte $09   ; 
- D 0 - I - 0x02D30B 0B:92FB: 09        .byte $09   ; 
- D 0 - I - 0x02D30C 0B:92FC: C4        .byte $C4   ; 
- D 0 - I - 0x02D30D 0B:92FD: 5D        .byte $5D   ; 
- D 0 - I - 0x02D30E 0B:92FE: 86        .byte $86   ; 
- D 0 - I - 0x02D30F 0B:92FF: 01        .byte $01   ; 
- D 0 - I - 0x02D310 0B:9300: 17        .byte $17   ; 
- D 0 - I - 0x02D311 0B:9301: 01        .byte $01   ; 
- D 0 - I - 0x02D312 0B:9302: 17        .byte $17   ; 
- D 0 - I - 0x02D313 0B:9303: 01        .byte $01   ; 
- D 0 - I - 0x02D314 0B:9304: 17        .byte $17   ; 
- D 0 - I - 0x02D315 0B:9305: C6        .byte $C6   ; 
- D 0 - I - 0x02D316 0B:9306: 01        .byte $01   ; 
- D 0 - I - 0x02D317 0B:9307: C4        .byte $C4   ; 
- D 0 - I - 0x02D318 0B:9308: 01        .byte $01   ; 
- D 0 - I - 0x02D319 0B:9309: 08        .byte $08   ; 
- D 0 - I - 0x02D31A 0B:930A: 00        .byte $00   ; 
- D 0 - I - 0x02D31B 0B:930B: 8E        .byte $8E   ; 
- D 0 - I - 0x02D31C 0B:930C: 3B        .byte $3B   ; 
- D 0 - I - 0x02D31D 0B:930D: 18        .byte $18   ; 
- D 0 - I - 0x02D31E 0B:930E: 11        .byte $11   ; 
- D 0 - I - 0x02D31F 0B:930F: 3C        .byte $3C   ; 
- D 0 - I - 0x02D320 0B:9310: 61        .byte $61   ; 
- D 0 - I - 0x02D321 0B:9311: 62        .byte $62   ; 
- D 0 - I - 0x02D322 0B:9312: 5F        .byte $5F   ; 
- D 0 - I - 0x02D323 0B:9313: 60        .byte $60   ; 
- D 0 - I - 0x02D324 0B:9314: 17        .byte $17   ; 
- D 0 - I - 0x02D325 0B:9315: 01        .byte $01   ; 
- D 0 - I - 0x02D326 0B:9316: 17        .byte $17   ; 
- D 0 - I - 0x02D327 0B:9317: 01        .byte $01   ; 
- D 0 - I - 0x02D328 0B:9318: 06        .byte $06   ; 
- D 0 - I - 0x02D329 0B:9319: 01        .byte $01   ; 
- D 0 - I - 0x02D32A 0B:931A: C5        .byte $C5   ; 
- D 0 - I - 0x02D32B 0B:931B: 0A        .byte $0A   ; 
- D 0 - I - 0x02D32C 0B:931C: 81        .byte $81   ; 
- D 0 - I - 0x02D32D 0B:931D: 01        .byte $01   ; 
- D 0 - I - 0x02D32E 0B:931E: C4        .byte $C4   ; 
- D 0 - I - 0x02D32F 0B:931F: 0A        .byte $0A   ; 
- D 0 - I - 0x02D330 0B:9320: 08        .byte $08   ; 
- D 0 - I - 0x02D331 0B:9321: 00        .byte $00   ; 
- D 0 - I - 0x02D332 0B:9322: 04        .byte $04   ; 
- D 0 - I - 0x02D333 0B:9323: 18        .byte $18   ; 
- D 0 - I - 0x02D334 0B:9324: C4        .byte $C4   ; 
- D 0 - I - 0x02D335 0B:9325: 5D        .byte $5D   ; 
- D 0 - I - 0x02D336 0B:9326: 81        .byte $81   ; 
- D 0 - I - 0x02D337 0B:9327: 01        .byte $01   ; 
- D 0 - I - 0x02D338 0B:9328: C5        .byte $C5   ; 
- D 0 - I - 0x02D339 0B:9329: 63        .byte $63   ; 
- D 0 - I - 0x02D33A 0B:932A: 81        .byte $81   ; 
- D 0 - I - 0x02D33B 0B:932B: 01        .byte $01   ; 
- D 0 - I - 0x02D33C 0B:932C: C5        .byte $C5   ; 
- D 0 - I - 0x02D33D 0B:932D: 13        .byte $13   ; 
- D 0 - I - 0x02D33E 0B:932E: 81        .byte $81   ; 
- D 0 - I - 0x02D33F 0B:932F: 01        .byte $01   ; 
- D 0 - I - 0x02D340 0B:9330: C3        .byte $C3   ; 
- D 0 - I - 0x02D341 0B:9331: 13        .byte $13   ; 
- D 0 - I - 0x02D342 0B:9332: 08        .byte $08   ; 
- D 0 - I - 0x02D343 0B:9333: 00        .byte $00   ; 
- D 0 - I - 0x02D344 0B:9334: 04        .byte $04   ; 
- D 0 - I - 0x02D345 0B:9335: 1D        .byte $1D   ; 
- D 0 - I - 0x02D346 0B:9336: 85        .byte $85   ; 
- D 0 - I - 0x02D347 0B:9337: 61        .byte $61   ; 
- D 0 - I - 0x02D348 0B:9338: 62        .byte $62   ; 
- D 0 - I - 0x02D349 0B:9339: 68        .byte $68   ; 
- D 0 - I - 0x02D34A 0B:933A: 69        .byte $69   ; 
- D 0 - I - 0x02D34B 0B:933B: 06        .byte $06   ; 
- D 0 - I - 0x02D34C 0B:933C: C5        .byte $C5   ; 
- D 0 - I - 0x02D34D 0B:933D: 6A        .byte $6A   ; 
- D 0 - I - 0x02D34E 0B:933E: 81        .byte $81   ; 
- D 0 - I - 0x02D34F 0B:933F: 0A        .byte $0A   ; 
- D 0 - I - 0x02D350 0B:9340: C4        .byte $C4   ; 
- D 0 - I - 0x02D351 0B:9341: 19        .byte $19   ; 
- D 0 - I - 0x02D352 0B:9342: 82        .byte $82   ; 
- D 0 - I - 0x02D353 0B:9343: 01        .byte $01   ; 
- D 0 - I - 0x02D354 0B:9344: 0A        .byte $0A   ; 
- D 0 - I - 0x02D355 0B:9345: C3        .byte $C3   ; 
- D 0 - I - 0x02D356 0B:9346: 19        .byte $19   ; 
- D 0 - I - 0x02D357 0B:9347: 08        .byte $08   ; 
- D 0 - I - 0x02D358 0B:9348: 00        .byte $00   ; 
- D 0 - I - 0x02D359 0B:9349: 84        .byte $84   ; 
- D 0 - I - 0x02D35A 0B:934A: 23        .byte $23   ; 
- D 0 - I - 0x02D35B 0B:934B: 23        .byte $23   ; 
- D 0 - I - 0x02D35C 0B:934C: 6F        .byte $6F   ; 
- D 0 - I - 0x02D35D 0B:934D: 00        .byte $00   ; 
- D 0 - I - 0x02D35E 0B:934E: C4        .byte $C4   ; 
- D 0 - I - 0x02D35F 0B:934F: 5D        .byte $5D   ; 
- D 0 - I - 0x02D360 0B:9350: 83        .byte $83   ; 
- D 0 - I - 0x02D361 0B:9351: 01        .byte $01   ; 
- D 0 - I - 0x02D362 0B:9352: 70        .byte $70   ; 
- D 0 - I - 0x02D363 0B:9353: 00        .byte $00   ; 
- D 0 - I - 0x02D364 0B:9354: C3        .byte $C3   ; 
- D 0 - I - 0x02D365 0B:9355: 71        .byte $71   ; 
- D 0 - I - 0x02D366 0B:9356: 81        .byte $81   ; 
- D 0 - I - 0x02D367 0B:9357: 01        .byte $01   ; 
- D 0 - I - 0x02D368 0B:9358: C4        .byte $C4   ; 
- D 0 - I - 0x02D369 0B:9359: 1E        .byte $1E   ; 
- D 0 - I - 0x02D36A 0B:935A: 82        .byte $82   ; 
- D 0 - I - 0x02D36B 0B:935B: 17        .byte $17   ; 
- D 0 - I - 0x02D36C 0B:935C: 01        .byte $01   ; 
- D 0 - I - 0x02D36D 0B:935D: C3        .byte $C3   ; 
- D 0 - I - 0x02D36E 0B:935E: 1E        .byte $1E   ; 
- D 0 - I - 0x02D36F 0B:935F: 08        .byte $08   ; 
- D 0 - I - 0x02D370 0B:9360: 00        .byte $00   ; 
- D 0 - I - 0x02D371 0B:9361: 89        .byte $89   ; 
- D 0 - I - 0x02D372 0B:9362: 40        .byte $40   ; 
- D 0 - I - 0x02D373 0B:9363: 29        .byte $29   ; 
- D 0 - I - 0x02D374 0B:9364: 74        .byte $74   ; 
- D 0 - I - 0x02D375 0B:9365: 00        .byte $00   ; 
- D 0 - I - 0x02D376 0B:9366: 61        .byte $61   ; 
- D 0 - I - 0x02D377 0B:9367: 62        .byte $62   ; 
- D 0 - I - 0x02D378 0B:9368: 5F        .byte $5F   ; 
- D 0 - I - 0x02D379 0B:9369: 60        .byte $60   ; 
- D 0 - I - 0x02D37A 0B:936A: 17        .byte $17   ; 
- D 0 - I - 0x02D37B 0B:936B: C3        .byte $C3   ; 
- D 0 - I - 0x02D37C 0B:936C: 75        .byte $75   ; 
- D 0 - I - 0x02D37D 0B:936D: 83        .byte $83   ; 
- D 0 - I - 0x02D37E 0B:936E: 72        .byte $72   ; 
- D 0 - I - 0x02D37F 0B:936F: 73        .byte $73   ; 
- D 0 - I - 0x02D380 0B:9370: 0A        .byte $0A   ; 
- D 0 - I - 0x02D381 0B:9371: C4        .byte $C4   ; 
- D 0 - I - 0x02D382 0B:9372: 24        .byte $24   ; 
- D 0 - I - 0x02D383 0B:9373: 82        .byte $82   ; 
- D 0 - I - 0x02D384 0B:9374: 01        .byte $01   ; 
- D 0 - I - 0x02D385 0B:9375: 0A        .byte $0A   ; 
- D 0 - I - 0x02D386 0B:9376: C3        .byte $C3   ; 
- D 0 - I - 0x02D387 0B:9377: 24        .byte $24   ; 
- D 0 - I - 0x02D388 0B:9378: 08        .byte $08   ; 
- D 0 - I - 0x02D389 0B:9379: 00        .byte $00   ; 
- D 0 - I - 0x02D38A 0B:937A: 84        .byte $84   ; 
- D 0 - I - 0x02D38B 0B:937B: 45        .byte $45   ; 
- D 0 - I - 0x02D38C 0B:937C: 46        .byte $46   ; 
- D 0 - I - 0x02D38D 0B:937D: 79        .byte $79   ; 
- D 0 - I - 0x02D38E 0B:937E: 00        .byte $00   ; 
- D 0 - I - 0x02D38F 0B:937F: C4        .byte $C4   ; 
- D 0 - I - 0x02D390 0B:9380: 5D        .byte $5D   ; 
- D 0 - I - 0x02D391 0B:9381: 82        .byte $82   ; 
- D 0 - I - 0x02D392 0B:9382: 01        .byte $01   ; 
- D 0 - I - 0x02D393 0B:9383: 70        .byte $70   ; 
- D 0 - I - 0x02D394 0B:9384: C3        .byte $C3   ; 
- D 0 - I - 0x02D395 0B:9385: 7A        .byte $7A   ; 
- D 0 - I - 0x02D396 0B:9386: 81        .byte $81   ; 
- D 0 - I - 0x02D397 0B:9387: 73        .byte $73   ; 
- D 0 - I - 0x02D398 0B:9388: C3        .byte $C3   ; 
- D 0 - I - 0x02D399 0B:9389: 2A        .byte $2A   ; 
- D 0 - I - 0x02D39A 0B:938A: C3        .byte $C3   ; 
- D 0 - I - 0x02D39B 0B:938B: 2C        .byte $2C   ; 
- D 0 - I - 0x02D39C 0B:938C: C3        .byte $C3   ; 
- D 0 - I - 0x02D39D 0B:938D: 2A        .byte $2A   ; 
- D 0 - I - 0x02D39E 0B:938E: 81        .byte $81   ; 
- D 0 - I - 0x02D39F 0B:938F: 2C        .byte $2C   ; 
- D 0 - I - 0x02D3A0 0B:9390: 08        .byte $08   ; 
- D 0 - I - 0x02D3A1 0B:9391: 00        .byte $00   ; 
- D 0 - I - 0x02D3A2 0B:9392: 98        .byte $98   ; 
- D 0 - I - 0x02D3A3 0B:9393: 18        .byte $18   ; 
- D 0 - I - 0x02D3A4 0B:9394: 4B        .byte $4B   ; 
- D 0 - I - 0x02D3A5 0B:9395: 53        .byte $53   ; 
- D 0 - I - 0x02D3A6 0B:9396: 00        .byte $00   ; 
- D 0 - I - 0x02D3A7 0B:9397: 61        .byte $61   ; 
- D 0 - I - 0x02D3A8 0B:9398: 62        .byte $62   ; 
- D 0 - I - 0x02D3A9 0B:9399: 5F        .byte $5F   ; 
- D 0 - I - 0x02D3AA 0B:939A: 60        .byte $60   ; 
- D 0 - I - 0x02D3AB 0B:939B: 17        .byte $17   ; 
- D 0 - I - 0x02D3AC 0B:939C: 70        .byte $70   ; 
- D 0 - I - 0x02D3AD 0B:939D: 77        .byte $77   ; 
- D 0 - I - 0x02D3AE 0B:939E: 77        .byte $77   ; 
- D 0 - I - 0x02D3AF 0B:939F: 78        .byte $78   ; 
- D 0 - I - 0x02D3B0 0B:93A0: 73        .byte $73   ; 
- D 0 - I - 0x02D3B1 0B:93A1: 31        .byte $31   ; 
- D 0 - I - 0x02D3B2 0B:93A2: 2A        .byte $2A   ; 
- D 0 - I - 0x02D3B3 0B:93A3: 2E        .byte $2E   ; 
- D 0 - I - 0x02D3B4 0B:93A4: 2A        .byte $2A   ; 
- D 0 - I - 0x02D3B5 0B:93A5: 2E        .byte $2E   ; 
- D 0 - I - 0x02D3B6 0B:93A6: 2A        .byte $2A   ; 
- D 0 - I - 0x02D3B7 0B:93A7: 2E        .byte $2E   ; 
- D 0 - I - 0x02D3B8 0B:93A8: 2A        .byte $2A   ; 
- D 0 - I - 0x02D3B9 0B:93A9: 2E        .byte $2E   ; 
- D 0 - I - 0x02D3BA 0B:93AA: 2A        .byte $2A   ; 
- D 0 - I - 0x02D3BB 0B:93AB: 08        .byte $08   ; 
- D 0 - I - 0x02D3BC 0B:93AC: 00        .byte $00   ; 
- D 0 - I - 0x02D3BD 0B:93AD: 84        .byte $84   ; 
- D 0 - I - 0x02D3BE 0B:93AE: 30        .byte $30   ; 
- D 0 - I - 0x02D3BF 0B:93AF: 30        .byte $30   ; 
- D 0 - I - 0x02D3C0 0B:93B0: 79        .byte $79   ; 
- D 0 - I - 0x02D3C1 0B:93B1: 00        .byte $00   ; 
- D 0 - I - 0x02D3C2 0B:93B2: C4        .byte $C4   ; 
- D 0 - I - 0x02D3C3 0B:93B3: 5D        .byte $5D   ; 
- D 0 - I - 0x02D3C4 0B:93B4: 84        .byte $84   ; 
- D 0 - I - 0x02D3C5 0B:93B5: 01        .byte $01   ; 
- D 0 - I - 0x02D3C6 0B:93B6: 70        .byte $70   ; 
- D 0 - I - 0x02D3C7 0B:93B7: 7A        .byte $7A   ; 
- D 0 - I - 0x02D3C8 0B:93B8: 7B        .byte $7B   ; 
- D 0 - I - 0x02D3C9 0B:93B9: C3        .byte $C3   ; 
- D 0 - I - 0x02D3CA 0B:93BA: 7D        .byte $7D   ; 
- D 0 - I - 0x02D3CB 0B:93BB: 05        .byte $05   ; 
- D 0 - I - 0x02D3CC 0B:93BC: 33        .byte $33   ; 
- D 0 - I - 0x02D3CD 0B:93BD: 81        .byte $81   ; 
- D 0 - I - 0x02D3CE 0B:93BE: 34        .byte $34   ; 
- D 0 - I - 0x02D3CF 0B:93BF: 03        .byte $03   ; 
- D 0 - I - 0x02D3D0 0B:93C0: 82        .byte $82   ; 
- D 0 - I - 0x02D3D1 0B:93C1: 08        .byte $08   ; 
- D 0 - I - 0x02D3D2 0B:93C2: 00        .byte $00   ; 
- D 0 - I - 0x02D3D3 0B:93C3: 8F        .byte $8F   ; 
- D 0 - I - 0x02D3D4 0B:93C4: 18        .byte $18   ; 
- D 0 - I - 0x02D3D5 0B:93C5: 18        .byte $18   ; 
- D 0 - I - 0x02D3D6 0B:93C6: 53        .byte $53   ; 
- D 0 - I - 0x02D3D7 0B:93C7: 00        .byte $00   ; 
- D 0 - I - 0x02D3D8 0B:93C8: 61        .byte $61   ; 
- D 0 - I - 0x02D3D9 0B:93C9: 62        .byte $62   ; 
- D 0 - I - 0x02D3DA 0B:93CA: 68        .byte $68   ; 
- D 0 - I - 0x02D3DB 0B:93CB: 69        .byte $69   ; 
- D 0 - I - 0x02D3DC 0B:93CC: 06        .byte $06   ; 
- D 0 - I - 0x02D3DD 0B:93CD: 70        .byte $70   ; 
- D 0 - I - 0x02D3DE 0B:93CE: 80        .byte $80   ; 
- D 0 - I - 0x02D3DF 0B:93CF: 77        .byte $77   ; 
- D 0 - I - 0x02D3E0 0B:93D0: 78        .byte $78   ; 
- D 0 - I - 0x02D3E1 0B:93D1: 00        .byte $00   ; 
- D 0 - I - 0x02D3E2 0B:93D2: 81        .byte $81   ; 
- D 0 - I - 0x02D3E3 0B:93D3: 05        .byte $05   ; 
- D 0 - I - 0x02D3E4 0B:93D4: 37        .byte $37   ; 
- D 0 - I - 0x02D3E5 0B:93D5: 81        .byte $81   ; 
- D 0 - I - 0x02D3E6 0B:93D6: 38        .byte $38   ; 
- D 0 - I - 0x02D3E7 0B:93D7: 03        .byte $03   ; 
- D 0 - I - 0x02D3E8 0B:93D8: 37        .byte $37   ; 
- D 0 - I - 0x02D3E9 0B:93D9: 08        .byte $08   ; 
- D 0 - I - 0x02D3EA 0B:93DA: 00        .byte $00   ; 
- D 0 - I - 0x02D3EB 0B:93DB: 84        .byte $84   ; 
- D 0 - I - 0x02D3EC 0B:93DC: 84        .byte $84   ; 
- D 0 - I - 0x02D3ED 0B:93DD: 84        .byte $84   ; 
- D 0 - I - 0x02D3EE 0B:93DE: 99        .byte $99   ; 
- D 0 - I - 0x02D3EF 0B:93DF: 00        .byte $00   ; 
- D 0 - I - 0x02D3F0 0B:93E0: C4        .byte $C4   ; 
- D 0 - I - 0x02D3F1 0B:93E1: 5D        .byte $5D   ; 
- D 0 - I - 0x02D3F2 0B:93E2: 87        .byte $87   ; 
- D 0 - I - 0x02D3F3 0B:93E3: 2A        .byte $2A   ; 
- D 0 - I - 0x02D3F4 0B:93E4: 70        .byte $70   ; 
- D 0 - I - 0x02D3F5 0B:93E5: 00        .byte $00   ; 
- D 0 - I - 0x02D3F6 0B:93E6: AA        .byte $AA   ; 
- D 0 - I - 0x02D3F7 0B:93E7: AB        .byte $AB   ; 
- D 0 - I - 0x02D3F8 0B:93E8: 00        .byte $00   ; 
- D 0 - I - 0x02D3F9 0B:93E9: 81        .byte $81   ; 
- D 0 - I - 0x02D3FA 0B:93EA: 05        .byte $05   ; 
- D 0 - I - 0x02D3FB 0B:93EB: 37        .byte $37   ; 
- D 0 - I - 0x02D3FC 0B:93EC: 81        .byte $81   ; 
- D 0 - I - 0x02D3FD 0B:93ED: 38        .byte $38   ; 
- D 0 - I - 0x02D3FE 0B:93EE: 03        .byte $03   ; 
- D 0 - I - 0x02D3FF 0B:93EF: 37        .byte $37   ; 
- D 0 - I - 0x02D400 0B:93F0: 08        .byte $08   ; 
- D 0 - I - 0x02D401 0B:93F1: 00        .byte $00   ; 
- D 0 - I - 0x02D402 0B:93F2: 89        .byte $89   ; 
- D 0 - I - 0x02D403 0B:93F3: 9C        .byte $9C   ; 
- D 0 - I - 0x02D404 0B:93F4: 9D        .byte $9D   ; 
- D 0 - I - 0x02D405 0B:93F5: AC        .byte $AC   ; 
- D 0 - I - 0x02D406 0B:93F6: 00        .byte $00   ; 
- D 0 - I - 0x02D407 0B:93F7: 61        .byte $61   ; 
- D 0 - I - 0x02D408 0B:93F8: 62        .byte $62   ; 
- D 0 - I - 0x02D409 0B:93F9: 5F        .byte $5F   ; 
- D 0 - I - 0x02D40A 0B:93FA: 60        .byte $60   ; 
- D 0 - I - 0x02D40B 0B:93FB: 31        .byte $31   ; 
- D 0 - I - 0x02D40C 0B:93FC: C3        .byte $C3   ; 
- D 0 - I - 0x02D40D 0B:93FD: AD        .byte $AD   ; 
- D 0 - I - 0x02D40E 0B:93FE: 83        .byte $83   ; 
- D 0 - I - 0x02D40F 0B:93FF: 00        .byte $00   ; 
- D 0 - I - 0x02D410 0B:9400: 00        .byte $00   ; 
- D 0 - I - 0x02D411 0B:9401: 81        .byte $81   ; 
- D 0 - I - 0x02D412 0B:9402: 05        .byte $05   ; 
- D 0 - I - 0x02D413 0B:9403: 37        .byte $37   ; 
- D 0 - I - 0x02D414 0B:9404: 81        .byte $81   ; 
- D 0 - I - 0x02D415 0B:9405: 38        .byte $38   ; 
- D 0 - I - 0x02D416 0B:9406: 03        .byte $03   ; 
- D 0 - I - 0x02D417 0B:9407: 37        .byte $37   ; 
- D 0 - I - 0x02D418 0B:9408: 08        .byte $08   ; 
- D 0 - I - 0x02D419 0B:9409: 00        .byte $00   ; 
- D 0 - I - 0x02D41A 0B:940A: 83        .byte $83   ; 
- D 0 - I - 0x02D41B 0B:940B: 9F        .byte $9F   ; 
- D 0 - I - 0x02D41C 0B:940C: A0        .byte $A0   ; 
- D 0 - I - 0x02D41D 0B:940D: B0        .byte $B0   ; 
- D 0 - I - 0x02D41E 0B:940E: 03        .byte $03   ; 
- D 0 - I - 0x02D41F 0B:940F: 00        .byte $00   ; 
- D 0 - I - 0x02D420 0B:9410: 83        .byte $83   ; 
- D 0 - I - 0x02D421 0B:9411: B1        .byte $B1   ; 
- D 0 - I - 0x02D422 0B:9412: B2        .byte $B2   ; 
- D 0 - I - 0x02D423 0B:9413: 00        .byte $00   ; 
- D 0 - I - 0x02D424 0B:9414: C3        .byte $C3   ; 
- D 0 - I - 0x02D425 0B:9415: B3        .byte $B3   ; 
- D 0 - I - 0x02D426 0B:9416: 84        .byte $84   ; 
- D 0 - I - 0x02D427 0B:9417: 00        .byte $00   ; 
- D 0 - I - 0x02D428 0B:9418: 00        .byte $00   ; 
- D 0 - I - 0x02D429 0B:9419: 81        .byte $81   ; 
- D 0 - I - 0x02D42A 0B:941A: 87        .byte $87   ; 
- D 0 - I - 0x02D42B 0B:941B: 04        .byte $04   ; 
- D 0 - I - 0x02D42C 0B:941C: 37        .byte $37   ; 
- D 0 - I - 0x02D42D 0B:941D: 81        .byte $81   ; 
- D 0 - I - 0x02D42E 0B:941E: 38        .byte $38   ; 
- D 0 - I - 0x02D42F 0B:941F: 03        .byte $03   ; 
- D 0 - I - 0x02D430 0B:9420: 37        .byte $37   ; 
- D 0 - I - 0x02D431 0B:9421: 08        .byte $08   ; 
- D 0 - I - 0x02D432 0B:9422: 00        .byte $00   ; 
- D 0 - I - 0x02D433 0B:9423: 83        .byte $83   ; 
- D 0 - I - 0x02D434 0B:9424: A2        .byte $A2   ; 
- D 0 - I - 0x02D435 0B:9425: A3        .byte $A3   ; 
- D 0 - I - 0x02D436 0B:9426: 8D        .byte $8D   ; 
- D 0 - I - 0x02D437 0B:9427: 0B        .byte $0B   ; 
- D 0 - I - 0x02D438 0B:9428: 00        .byte $00   ; 
- D 0 - I - 0x02D439 0B:9429: 82        .byte $82   ; 
- D 0 - I - 0x02D43A 0B:942A: B6        .byte $B6   ; 
- D 0 - I - 0x02D43B 0B:942B: 8C        .byte $8C   ; 
- D 0 - I - 0x02D43C 0B:942C: 04        .byte $04   ; 
- D 0 - I - 0x02D43D 0B:942D: 8A        .byte $8A   ; 
- D 0 - I - 0x02D43E 0B:942E: 81        .byte $81   ; 
- D 0 - I - 0x02D43F 0B:942F: 8B        .byte $8B   ; 
- D 0 - I - 0x02D440 0B:9430: 03        .byte $03   ; 
- D 0 - I - 0x02D441 0B:9431: 8A        .byte $8A   ; 
- D 0 - I - 0x02D442 0B:9432: 08        .byte $08   ; 
- D 0 - I - 0x02D443 0B:9433: 00        .byte $00   ; 
- D 0 - I - 0x02D444 0B:9434: 04        .byte $04   ; 
- D 0 - I - 0x02D445 0B:9435: 8F        .byte $8F   ; 
- D 0 - I - 0x02D446 0B:9436: 81        .byte $81   ; 
- D 0 - I - 0x02D447 0B:9437: B7        .byte $B7   ; 
- D 0 - I - 0x02D448 0B:9438: 07        .byte $07   ; 
- D 0 - I - 0x02D449 0B:9439: 8F        .byte $8F   ; 
- D 0 - I - 0x02D44A 0B:943A: 84        .byte $84   ; 
- D 0 - I - 0x02D44B 0B:943B: B8        .byte $B8   ; 
- D 0 - I - 0x02D44C 0B:943C: B9        .byte $B9   ; 
- D 0 - I - 0x02D44D 0B:943D: 8F        .byte $8F   ; 
- D 0 - I - 0x02D44E 0B:943E: 93        .byte $93   ; 
- D 0 - I - 0x02D44F 0B:943F: 10        .byte $10   ; 
- D 0 - I - 0x02D450 0B:9440: 8F        .byte $8F   ; 
- D 0 - I - 0x02D451 0B:9441: 04        .byte $04   ; 
- D 0 - I - 0x02D452 0B:9442: 94        .byte $94   ; 
- D 0 - I - 0x02D453 0B:9443: 82        .byte $82   ; 
- D 0 - I - 0x02D454 0B:9444: BA        .byte $BA   ; 
- D 0 - I - 0x02D455 0B:9445: BB        .byte $BB   ; 
- D 0 - I - 0x02D456 0B:9446: 05        .byte $05   ; 
- D 0 - I - 0x02D457 0B:9447: 94        .byte $94   ; 
- D 0 - I - 0x02D458 0B:9448: 84        .byte $84   ; 
- D 0 - I - 0x02D459 0B:9449: 97        .byte $97   ; 
- D 0 - I - 0x02D45A 0B:944A: 94        .byte $94   ; 
- D 0 - I - 0x02D45B 0B:944B: BC        .byte $BC   ; 
- D 0 - I - 0x02D45C 0B:944C: BD        .byte $BD   ; 
- D 0 - I - 0x02D45D 0B:944D: 06        .byte $06   ; 
- D 0 - I - 0x02D45E 0B:944E: 94        .byte $94   ; 
- D 0 - I - 0x02D45F 0B:944F: 81        .byte $81   ; 
- D 0 - I - 0x02D460 0B:9450: 97        .byte $97   ; 
- D 0 - I - 0x02D461 0B:9451: 03        .byte $03   ; 
- D 0 - I - 0x02D462 0B:9452: 94        .byte $94   ; 
- D 0 - I - 0x02D463 0B:9453: 81        .byte $81   ; 
- D 0 - I - 0x02D464 0B:9454: 97        .byte $97   ; 
- D 0 - I - 0x02D465 0B:9455: 03        .byte $03   ; 
- D 0 - I - 0x02D466 0B:9456: 94        .byte $94   ; 
- D 0 - I - 0x02D467 0B:9457: 83        .byte $83   ; 
- D 0 - I - 0x02D468 0B:9458: 97        .byte $97   ; 
- D 0 - I - 0x02D469 0B:9459: 94        .byte $94   ; 
- D 0 - I - 0x02D46A 0B:945A: 94        .byte $94   ; 
- D 0 - I - 0x02D46B 0B:945B: 05        .byte $05   ; 
- D 0 - I - 0x02D46C 0B:945C: 8F        .byte $8F   ; 
- D 0 - I - 0x02D46D 0B:945D: 81        .byte $81   ; 
- D 0 - I - 0x02D46E 0B:945E: B7        .byte $B7   ; 
- D 0 - I - 0x02D46F 0B:945F: 09        .byte $09   ; 
- D 0 - I - 0x02D470 0B:9460: 8F        .byte $8F   ; 
- D 0 - I - 0x02D471 0B:9461: 82        .byte $82   ; 
- D 0 - I - 0x02D472 0B:9462: B8        .byte $B8   ; 
- D 0 - I - 0x02D473 0B:9463: B9        .byte $B9   ; 
- D 0 - I - 0x02D474 0B:9464: 0F        .byte $0F   ; 
- D 0 - I - 0x02D475 0B:9465: 8F        .byte $8F   ; 
- D 0 - I - 0x02D476 0B:9466: 05        .byte $05   ; 
- D 0 - I - 0x02D477 0B:9467: 94        .byte $94   ; 
- D 0 - I - 0x02D478 0B:9468: 82        .byte $82   ; 
- D 0 - I - 0x02D479 0B:9469: BA        .byte $BA   ; 
- D 0 - I - 0x02D47A 0B:946A: BB        .byte $BB   ; 
- D 0 - I - 0x02D47B 0B:946B: 09        .byte $09   ; 
- D 0 - I - 0x02D47C 0B:946C: 94        .byte $94   ; 
- D 0 - I - 0x02D47D 0B:946D: 84        .byte $84   ; 
- D 0 - I - 0x02D47E 0B:946E: BC        .byte $BC   ; 
- D 0 - I - 0x02D47F 0B:946F: BD        .byte $BD   ; 
- D 0 - I - 0x02D480 0B:9470: 94        .byte $94   ; 
- D 0 - I - 0x02D481 0B:9471: 98        .byte $98   ; 
- D 0 - I - 0x02D482 0B:9472: 0C        .byte $0C   ; 
- D 0 - I - 0x02D483 0B:9473: 94        .byte $94   ; 
- D 0 - I - 0x02D484 0B:9474: 7E        .byte $7E   ; 
- D 0 - I - 0x02D485 0B:9475: 00        .byte $00   ; 
- D 0 - I - 0x02D486 0B:9476: 42        .byte $42   ; 
- D 0 - I - 0x02D487 0B:9477: 00        .byte $00   ; 
- D 0 - I - 0x02D488 0B:9478: 08        .byte $08   ; 
- D 0 - I - 0x02D489 0B:9479: FF        .byte $FF   ; 
- D 0 - I - 0x02D48A 0B:947A: 06        .byte $06   ; 
- D 0 - I - 0x02D48B 0B:947B: 5F        .byte $5F   ; 
- D 0 - I - 0x02D48C 0B:947C: 83        .byte $83   ; 
- D 0 - I - 0x02D48D 0B:947D: FF        .byte $FF   ; 
- D 0 - I - 0x02D48E 0B:947E: FF        .byte $FF   ; 
- D 0 - I - 0x02D48F 0B:947F: 05        .byte $05   ; 
- D 0 - I - 0x02D490 0B:9480: 03        .byte $03   ; 
- D 0 - I - 0x02D491 0B:9481: 55        .byte $55   ; 
- D 0 - I - 0x02D492 0B:9482: 94        .byte $94   ; 
- D 0 - I - 0x02D493 0B:9483: 44        .byte $44   ; 
- D 0 - I - 0x02D494 0B:9484: 11        .byte $11   ; 
- D 0 - I - 0x02D495 0B:9485: FF        .byte $FF   ; 
- D 0 - I - 0x02D496 0B:9486: FF        .byte $FF   ; 
- D 0 - I - 0x02D497 0B:9487: 00        .byte $00   ; 
- D 0 - I - 0x02D498 0B:9488: 55        .byte $55   ; 
- D 0 - I - 0x02D499 0B:9489: 55        .byte $55   ; 
- D 0 - I - 0x02D49A 0B:948A: 15        .byte $15   ; 
- D 0 - I - 0x02D49B 0B:948B: 05        .byte $05   ; 
- D 0 - I - 0x02D49C 0B:948C: 05        .byte $05   ; 
- D 0 - I - 0x02D49D 0B:948D: FF        .byte $FF   ; 
- D 0 - I - 0x02D49E 0B:948E: FF        .byte $FF   ; 
- D 0 - I - 0x02D49F 0B:948F: 00        .byte $00   ; 
- D 0 - I - 0x02D4A0 0B:9490: 65        .byte $65   ; 
- D 0 - I - 0x02D4A1 0B:9491: 55        .byte $55   ; 
- D 0 - I - 0x02D4A2 0B:9492: 11        .byte $11   ; 
- D 0 - I - 0x02D4A3 0B:9493: 00        .byte $00   ; 
- D 0 - I - 0x02D4A4 0B:9494: 00        .byte $00   ; 
- D 0 - I - 0x02D4A5 0B:9495: FF        .byte $FF   ; 
- D 0 - I - 0x02D4A6 0B:9496: FF        .byte $FF   ; 
- D 0 - I - 0x02D4A7 0B:9497: 08        .byte $08   ; 
- D 0 - I - 0x02D4A8 0B:9498: AA        .byte $AA   ; 
- D 0 - I - 0x02D4A9 0B:9499: 10        .byte $10   ; 
- D 0 - I - 0x02D4AA 0B:949A: FF        .byte $FF   ; 
- D 0 - I - 0x02D4AB 0B:949B: FF        .byte $FF   ; 



.export _off003_0x02D4AC_0B
_off003_0x02D4AC_0B:
- D 0 - I - 0x02D4AC 0B:949C: 00        .byte $00   ; 
- D 0 - I - 0x02D4AD 0B:949D: 20        .byte $20   ; 
- D 0 - I - 0x02D4AE 0B:949E: 40        .byte $40   ; 
- D 0 - I - 0x02D4AF 0B:949F: 00        .byte $00   ; 
- D 0 - I - 0x02D4B0 0B:94A0: 86        .byte $86   ; 
- D 0 - I - 0x02D4B1 0B:94A1: BB        .byte $BB   ; 
- D 0 - I - 0x02D4B2 0B:94A2: BA        .byte $BA   ; 
- D 0 - I - 0x02D4B3 0B:94A3: BB        .byte $BB   ; 
- D 0 - I - 0x02D4B4 0B:94A4: E6        .byte $E6   ; 
- D 0 - I - 0x02D4B5 0B:94A5: 00        .byte $00   ; 
- D 0 - I - 0x02D4B6 0B:94A6: 00        .byte $00   ; 
- D 0 - I - 0x02D4B7 0B:94A7: C4        .byte $C4   ; 
- D 0 - I - 0x02D4B8 0B:94A8: A0        .byte $A0   ; 
- D 0 - I - 0x02D4B9 0B:94A9: 9C        .byte $9C   ; 
- D 0 - I - 0x02D4BA 0B:94AA: 82        .byte $82   ; 
- D 0 - I - 0x02D4BB 0B:94AB: A5        .byte $A5   ; 
- D 0 - I - 0x02D4BC 0B:94AC: 80        .byte $80   ; 
- D 0 - I - 0x02D4BD 0B:94AD: 81        .byte $81   ; 
- D 0 - I - 0x02D4BE 0B:94AE: A6        .byte $A6   ; 
- D 0 - I - 0x02D4BF 0B:94AF: A7        .byte $A7   ; 
- D 0 - I - 0x02D4C0 0B:94B0: 84        .byte $84   ; 
- D 0 - I - 0x02D4C1 0B:94B1: 85        .byte $85   ; 
- D 0 - I - 0x02D4C2 0B:94B2: A8        .byte $A8   ; 
- D 0 - I - 0x02D4C3 0B:94B3: A9        .byte $A9   ; 
- D 0 - I - 0x02D4C4 0B:94B4: 88        .byte $88   ; 
- D 0 - I - 0x02D4C5 0B:94B5: 89        .byte $89   ; 
- D 0 - I - 0x02D4C6 0B:94B6: A6        .byte $A6   ; 
- D 0 - I - 0x02D4C7 0B:94B7: A7        .byte $A7   ; 
- D 0 - I - 0x02D4C8 0B:94B8: A0        .byte $A0   ; 
- D 0 - I - 0x02D4C9 0B:94B9: A1        .byte $A1   ; 
- D 0 - I - 0x02D4CA 0B:94BA: 00        .byte $00   ; 
- D 0 - I - 0x02D4CB 0B:94BB: 00        .byte $00   ; 
- D 0 - I - 0x02D4CC 0B:94BC: AC        .byte $AC   ; 
- D 0 - I - 0x02D4CD 0B:94BD: BA        .byte $BA   ; 
- D 0 - I - 0x02D4CE 0B:94BE: BB        .byte $BB   ; 
- D 0 - I - 0x02D4CF 0B:94BF: BA        .byte $BA   ; 
- D 0 - I - 0x02D4D0 0B:94C0: AA        .byte $AA   ; 
- D 0 - I - 0x02D4D1 0B:94C1: AB        .byte $AB   ; 
- D 0 - I - 0x02D4D2 0B:94C2: AA        .byte $AA   ; 
- D 0 - I - 0x02D4D3 0B:94C3: AB        .byte $AB   ; 
- D 0 - I - 0x02D4D4 0B:94C4: E7        .byte $E7   ; 
- D 0 - I - 0x02D4D5 0B:94C5: 00        .byte $00   ; 
- D 0 - I - 0x02D4D6 0B:94C6: C4        .byte $C4   ; 
- D 0 - I - 0x02D4D7 0B:94C7: B0        .byte $B0   ; 
- D 0 - I - 0x02D4D8 0B:94C8: 9C        .byte $9C   ; 
- D 0 - I - 0x02D4D9 0B:94C9: 9E        .byte $9E   ; 
- D 0 - I - 0x02D4DA 0B:94CA: B5        .byte $B5   ; 
- D 0 - I - 0x02D4DB 0B:94CB: 90        .byte $90   ; 
- D 0 - I - 0x02D4DC 0B:94CC: 9B        .byte $9B   ; 
- D 0 - I - 0x02D4DD 0B:94CD: B6        .byte $B6   ; 
- D 0 - I - 0x02D4DE 0B:94CE: B7        .byte $B7   ; 
- D 0 - I - 0x02D4DF 0B:94CF: 94        .byte $94   ; 
- D 0 - I - 0x02D4E0 0B:94D0: 95        .byte $95   ; 
- D 0 - I - 0x02D4E1 0B:94D1: B8        .byte $B8   ; 
- D 0 - I - 0x02D4E2 0B:94D2: B9        .byte $B9   ; 
- D 0 - I - 0x02D4E3 0B:94D3: 98        .byte $98   ; 
- D 0 - I - 0x02D4E4 0B:94D4: 99        .byte $99   ; 
- D 0 - I - 0x02D4E5 0B:94D5: B6        .byte $B6   ; 
- D 0 - I - 0x02D4E6 0B:94D6: B7        .byte $B7   ; 
- D 0 - I - 0x02D4E7 0B:94D7: B0        .byte $B0   ; 
- D 0 - I - 0x02D4E8 0B:94D8: B1        .byte $B1   ; 
- D 0 - I - 0x02D4E9 0B:94D9: 00        .byte $00   ; 
- D 0 - I - 0x02D4EA 0B:94DA: BC        .byte $BC   ; 
- D 0 - I - 0x02D4EB 0B:94DB: AA        .byte $AA   ; 
- D 0 - I - 0x02D4EC 0B:94DC: AB        .byte $AB   ; 
- D 0 - I - 0x02D4ED 0B:94DD: AA        .byte $AA   ; 
- D 0 - I - 0x02D4EE 0B:94DE: AB        .byte $AB   ; 
- D 0 - I - 0x02D4EF 0B:94DF: BA        .byte $BA   ; 
- D 0 - I - 0x02D4F0 0B:94E0: BB        .byte $BB   ; 
- D 0 - I - 0x02D4F1 0B:94E1: BA        .byte $BA   ; 
- D 0 - I - 0x02D4F2 0B:94E2: BB        .byte $BB   ; 
- D 0 - I - 0x02D4F3 0B:94E3: BA        .byte $BA   ; 
- D 0 - I - 0x02D4F4 0B:94E4: F6        .byte $F6   ; 
- D 0 - I - 0x02D4F5 0B:94E5: 04        .byte $04   ; 
- D 0 - I - 0x02D4F6 0B:94E6: 00        .byte $00   ; 
- D 0 - I - 0x02D4F7 0B:94E7: 8C        .byte $8C   ; 
- D 0 - I - 0x02D4F8 0B:94E8: 88        .byte $88   ; 
- D 0 - I - 0x02D4F9 0B:94E9: AF        .byte $AF   ; 
- D 0 - I - 0x02D4FA 0B:94EA: 84        .byte $84   ; 
- D 0 - I - 0x02D4FB 0B:94EB: 85        .byte $85   ; 
- D 0 - I - 0x02D4FC 0B:94EC: A0        .byte $A0   ; 
- D 0 - I - 0x02D4FD 0B:94ED: A1        .byte $A1   ; 
- D 0 - I - 0x02D4FE 0B:94EE: A0        .byte $A0   ; 
- D 0 - I - 0x02D4FF 0B:94EF: A1        .byte $A1   ; 
- D 0 - I - 0x02D500 0B:94F0: 82        .byte $82   ; 
- D 0 - I - 0x02D501 0B:94F1: 00        .byte $00   ; 
- D 0 - I - 0x02D502 0B:94F2: 88        .byte $88   ; 
- D 0 - I - 0x02D503 0B:94F3: 89        .byte $89   ; 
- D 0 - I - 0x02D504 0B:94F4: 04        .byte $04   ; 
- D 0 - I - 0x02D505 0B:94F5: 00        .byte $00   ; 
- D 0 - I - 0x02D506 0B:94F6: 8D        .byte $8D   ; 
- D 0 - I - 0x02D507 0B:94F7: AD        .byte $AD   ; 
- D 0 - I - 0x02D508 0B:94F8: BB        .byte $BB   ; 
- D 0 - I - 0x02D509 0B:94F9: BA        .byte $BA   ; 
- D 0 - I - 0x02D50A 0B:94FA: BB        .byte $BB   ; 
- D 0 - I - 0x02D50B 0B:94FB: BA        .byte $BA   ; 
- D 0 - I - 0x02D50C 0B:94FC: BB        .byte $BB   ; 
- D 0 - I - 0x02D50D 0B:94FD: AB        .byte $AB   ; 
- D 0 - I - 0x02D50E 0B:94FE: AA        .byte $AA   ; 
- D 0 - I - 0x02D50F 0B:94FF: AB        .byte $AB   ; 
- D 0 - I - 0x02D510 0B:9500: AA        .byte $AA   ; 
- D 0 - I - 0x02D511 0B:9501: AB        .byte $AB   ; 
- D 0 - I - 0x02D512 0B:9502: AA        .byte $AA   ; 
- D 0 - I - 0x02D513 0B:9503: F7        .byte $F7   ; 
- D 0 - I - 0x02D514 0B:9504: 03        .byte $03   ; 
- D 0 - I - 0x02D515 0B:9505: 00        .byte $00   ; 
- D 0 - I - 0x02D516 0B:9506: 8C        .byte $8C   ; 
- D 0 - I - 0x02D517 0B:9507: 98        .byte $98   ; 
- D 0 - I - 0x02D518 0B:9508: BF        .byte $BF   ; 
- D 0 - I - 0x02D519 0B:9509: 94        .byte $94   ; 
- D 0 - I - 0x02D51A 0B:950A: 95        .byte $95   ; 
- D 0 - I - 0x02D51B 0B:950B: B0        .byte $B0   ; 
- D 0 - I - 0x02D51C 0B:950C: B1        .byte $B1   ; 
- D 0 - I - 0x02D51D 0B:950D: B0        .byte $B0   ; 
- D 0 - I - 0x02D51E 0B:950E: B1        .byte $B1   ; 
- D 0 - I - 0x02D51F 0B:950F: 92        .byte $92   ; 
- D 0 - I - 0x02D520 0B:9510: 93        .byte $93   ; 
- D 0 - I - 0x02D521 0B:9511: 98        .byte $98   ; 
- D 0 - I - 0x02D522 0B:9512: 99        .byte $99   ; 
- D 0 - I - 0x02D523 0B:9513: 03        .byte $03   ; 
- D 0 - I - 0x02D524 0B:9514: 00        .byte $00   ; 
- D 0 - I - 0x02D525 0B:9515: 87        .byte $87   ; 
- D 0 - I - 0x02D526 0B:9516: BD        .byte $BD   ; 
- D 0 - I - 0x02D527 0B:9517: AB        .byte $AB   ; 
- D 0 - I - 0x02D528 0B:9518: AA        .byte $AA   ; 
- D 0 - I - 0x02D529 0B:9519: AB        .byte $AB   ; 
- D 0 - I - 0x02D52A 0B:951A: AA        .byte $AA   ; 
- D 0 - I - 0x02D52B 0B:951B: AB        .byte $AB   ; 
- D 0 - I - 0x02D52C 0B:951C: AA        .byte $AA   ; 
- D 0 - I - 0x02D52D 0B:951D: 0F        .byte $0F   ; 
- D 0 - I - 0x02D52E 0B:951E: 00        .byte $00   ; 
- D 0 - I - 0x02D52F 0B:951F: C3        .byte $C3   ; 
- D 0 - I - 0x02D530 0B:9520: CC        .byte $CC   ; 
- D 0 - I - 0x02D531 0B:9521: 1D        .byte $1D   ; 
- D 0 - I - 0x02D532 0B:9522: 00        .byte $00   ; 
- D 0 - I - 0x02D533 0B:9523: C4        .byte $C4   ; 
- D 0 - I - 0x02D534 0B:9524: DC        .byte $DC   ; 
- D 0 - I - 0x02D535 0B:9525: 1C        .byte $1C   ; 
- D 0 - I - 0x02D536 0B:9526: 00        .byte $00   ; 
- D 0 - I - 0x02D537 0B:9527: C3        .byte $C3   ; 
- D 0 - I - 0x02D538 0B:9528: E0        .byte $E0   ; 
- D 0 - I - 0x02D539 0B:9529: 1D        .byte $1D   ; 
- D 0 - I - 0x02D53A 0B:952A: 00        .byte $00   ; 
- D 0 - I - 0x02D53B 0B:952B: C3        .byte $C3   ; 
- D 0 - I - 0x02D53C 0B:952C: F0        .byte $F0   ; 
- D 0 - I - 0x02D53D 0B:952D: 3E        .byte $3E   ; 
- D 0 - I - 0x02D53E 0B:952E: 00        .byte $00   ; 
- D 0 - I - 0x02D53F 0B:952F: 81        .byte $81   ; 
- D 0 - I - 0x02D540 0B:9530: E3        .byte $E3   ; 
- D 0 - I - 0x02D541 0B:9531: 18        .byte $18   ; 
- D 0 - I - 0x02D542 0B:9532: 00        .byte $00   ; 
- D 0 - I - 0x02D543 0B:9533: 81        .byte $81   ; 
- D 0 - I - 0x02D544 0B:9534: E4        .byte $E4   ; 
- D 0 - I - 0x02D545 0B:9535: 06        .byte $06   ; 
- D 0 - I - 0x02D546 0B:9536: F4        .byte $F4   ; 
- D 0 - I - 0x02D547 0B:9537: 81        .byte $81   ; 
- D 0 - I - 0x02D548 0B:9538: F3        .byte $F3   ; 
- D 0 - I - 0x02D549 0B:9539: 06        .byte $06   ; 
- D 0 - I - 0x02D54A 0B:953A: F4        .byte $F4   ; 
- D 0 - I - 0x02D54B 0B:953B: 81        .byte $81   ; 
- D 0 - I - 0x02D54C 0B:953C: E5        .byte $E5   ; 
- D 0 - I - 0x02D54D 0B:953D: 11        .byte $11   ; 
- D 0 - I - 0x02D54E 0B:953E: 00        .byte $00   ; 
- D 0 - I - 0x02D54F 0B:953F: 81        .byte $81   ; 
- D 0 - I - 0x02D550 0B:9540: CF        .byte $CF   ; 
- D 0 - I - 0x02D551 0B:9541: 0D        .byte $0D   ; 
- D 0 - I - 0x02D552 0B:9542: 00        .byte $00   ; 
- D 0 - I - 0x02D553 0B:9543: 81        .byte $81   ; 
- D 0 - I - 0x02D554 0B:9544: CF        .byte $CF   ; 
- D 0 - I - 0x02D555 0B:9545: 11        .byte $11   ; 
- D 0 - I - 0x02D556 0B:9546: 00        .byte $00   ; 
- D 0 - I - 0x02D557 0B:9547: 81        .byte $81   ; 
- D 0 - I - 0x02D558 0B:9548: CF        .byte $CF   ; 
- D 0 - I - 0x02D559 0B:9549: 0D        .byte $0D   ; 
- D 0 - I - 0x02D55A 0B:954A: 00        .byte $00   ; 
- D 0 - I - 0x02D55B 0B:954B: 81        .byte $81   ; 
- D 0 - I - 0x02D55C 0B:954C: CF        .byte $CF   ; 
- D 0 - I - 0x02D55D 0B:954D: 11        .byte $11   ; 
- D 0 - I - 0x02D55E 0B:954E: 00        .byte $00   ; 
- D 0 - I - 0x02D55F 0B:954F: 81        .byte $81   ; 
- D 0 - I - 0x02D560 0B:9550: CF        .byte $CF   ; 
- D 0 - I - 0x02D561 0B:9551: 0D        .byte $0D   ; 
- D 0 - I - 0x02D562 0B:9552: 00        .byte $00   ; 
- D 0 - I - 0x02D563 0B:9553: 81        .byte $81   ; 
- D 0 - I - 0x02D564 0B:9554: CF        .byte $CF   ; 
- D 0 - I - 0x02D565 0B:9555: 0D        .byte $0D   ; 
- D 0 - I - 0x02D566 0B:9556: 00        .byte $00   ; 
- D 0 - I - 0x02D567 0B:9557: 81        .byte $81   ; 
- D 0 - I - 0x02D568 0B:9558: E4        .byte $E4   ; 
- D 0 - I - 0x02D569 0B:9559: 03        .byte $03   ; 
- D 0 - I - 0x02D56A 0B:955A: F4        .byte $F4   ; 
- D 0 - I - 0x02D56B 0B:955B: 81        .byte $81   ; 
- D 0 - I - 0x02D56C 0B:955C: F3        .byte $F3   ; 
- D 0 - I - 0x02D56D 0B:955D: 03        .byte $03   ; 
- D 0 - I - 0x02D56E 0B:955E: F4        .byte $F4   ; 
- D 0 - I - 0x02D56F 0B:955F: 81        .byte $81   ; 
- D 0 - I - 0x02D570 0B:9560: E5        .byte $E5   ; 
- D 0 - I - 0x02D571 0B:9561: 05        .byte $05   ; 
- D 0 - I - 0x02D572 0B:9562: 00        .byte $00   ; 
- D 0 - I - 0x02D573 0B:9563: 81        .byte $81   ; 
- D 0 - I - 0x02D574 0B:9564: E4        .byte $E4   ; 
- D 0 - I - 0x02D575 0B:9565: 03        .byte $03   ; 
- D 0 - I - 0x02D576 0B:9566: F4        .byte $F4   ; 
- D 0 - I - 0x02D577 0B:9567: 81        .byte $81   ; 
- D 0 - I - 0x02D578 0B:9568: F3        .byte $F3   ; 
- D 0 - I - 0x02D579 0B:9569: 03        .byte $03   ; 
- D 0 - I - 0x02D57A 0B:956A: F4        .byte $F4   ; 
- D 0 - I - 0x02D57B 0B:956B: 81        .byte $81   ; 
- D 0 - I - 0x02D57C 0B:956C: E5        .byte $E5   ; 
- D 0 - I - 0x02D57D 0B:956D: 09        .byte $09   ; 
- D 0 - I - 0x02D57E 0B:956E: 00        .byte $00   ; 
- D 0 - I - 0x02D57F 0B:956F: 81        .byte $81   ; 
- D 0 - I - 0x02D580 0B:9570: CF        .byte $CF   ; 
- D 0 - I - 0x02D581 0B:9571: 07        .byte $07   ; 
- D 0 - I - 0x02D582 0B:9572: 00        .byte $00   ; 
- D 0 - I - 0x02D583 0B:9573: 81        .byte $81   ; 
- D 0 - I - 0x02D584 0B:9574: CF        .byte $CF   ; 
- D 0 - I - 0x02D585 0B:9575: 05        .byte $05   ; 
- D 0 - I - 0x02D586 0B:9576: 00        .byte $00   ; 
- D 0 - I - 0x02D587 0B:9577: 81        .byte $81   ; 
- D 0 - I - 0x02D588 0B:9578: CF        .byte $CF   ; 
- D 0 - I - 0x02D589 0B:9579: 07        .byte $07   ; 
- D 0 - I - 0x02D58A 0B:957A: 00        .byte $00   ; 
- D 0 - I - 0x02D58B 0B:957B: 81        .byte $81   ; 
- D 0 - I - 0x02D58C 0B:957C: CF        .byte $CF   ; 
- D 0 - I - 0x02D58D 0B:957D: 09        .byte $09   ; 
- D 0 - I - 0x02D58E 0B:957E: 00        .byte $00   ; 
- D 0 - I - 0x02D58F 0B:957F: 81        .byte $81   ; 
- D 0 - I - 0x02D590 0B:9580: CF        .byte $CF   ; 
- D 0 - I - 0x02D591 0B:9581: 07        .byte $07   ; 
- D 0 - I - 0x02D592 0B:9582: 00        .byte $00   ; 
- D 0 - I - 0x02D593 0B:9583: 81        .byte $81   ; 
- D 0 - I - 0x02D594 0B:9584: CF        .byte $CF   ; 
- D 0 - I - 0x02D595 0B:9585: 05        .byte $05   ; 
- D 0 - I - 0x02D596 0B:9586: 00        .byte $00   ; 
- D 0 - I - 0x02D597 0B:9587: 81        .byte $81   ; 
- D 0 - I - 0x02D598 0B:9588: CF        .byte $CF   ; 
- D 0 - I - 0x02D599 0B:9589: 07        .byte $07   ; 
- D 0 - I - 0x02D59A 0B:958A: 00        .byte $00   ; 
- D 0 - I - 0x02D59B 0B:958B: 81        .byte $81   ; 
- D 0 - I - 0x02D59C 0B:958C: CF        .byte $CF   ; 
- D 0 - I - 0x02D59D 0B:958D: 09        .byte $09   ; 
- D 0 - I - 0x02D59E 0B:958E: 00        .byte $00   ; 
- D 0 - I - 0x02D59F 0B:958F: 81        .byte $81   ; 
- D 0 - I - 0x02D5A0 0B:9590: F5        .byte $F5   ; 
- D 0 - I - 0x02D5A1 0B:9591: 07        .byte $07   ; 
- D 0 - I - 0x02D5A2 0B:9592: 00        .byte $00   ; 
- D 0 - I - 0x02D5A3 0B:9593: 81        .byte $81   ; 
- D 0 - I - 0x02D5A4 0B:9594: F5        .byte $F5   ; 
- D 0 - I - 0x02D5A5 0B:9595: 05        .byte $05   ; 
- D 0 - I - 0x02D5A6 0B:9596: 00        .byte $00   ; 
- D 0 - I - 0x02D5A7 0B:9597: 81        .byte $81   ; 
- D 0 - I - 0x02D5A8 0B:9598: F5        .byte $F5   ; 
- D 0 - I - 0x02D5A9 0B:9599: 07        .byte $07   ; 
- D 0 - I - 0x02D5AA 0B:959A: 00        .byte $00   ; 
- D 0 - I - 0x02D5AB 0B:959B: 81        .byte $81   ; 
- D 0 - I - 0x02D5AC 0B:959C: F5        .byte $F5   ; 
- D 0 - I - 0x02D5AD 0B:959D: 7E        .byte $7E   ; 
- D 0 - I - 0x02D5AE 0B:959E: 00        .byte $00   ; 
- D 0 - I - 0x02D5AF 0B:959F: 46        .byte $46   ; 
- D 0 - I - 0x02D5B0 0B:95A0: 00        .byte $00   ; 
- D 0 - I - 0x02D5B1 0B:95A1: BE        .byte $BE   ; 
- D 0 - I - 0x02D5B2 0B:95A2: AA        .byte $AA   ; 
- D 0 - I - 0x02D5B3 0B:95A3: AB        .byte $AB   ; 
- D 0 - I - 0x02D5B4 0B:95A4: AA        .byte $AA   ; 
- D 0 - I - 0x02D5B5 0B:95A5: AB        .byte $AB   ; 
- D 0 - I - 0x02D5B6 0B:95A6: AA        .byte $AA   ; 
- D 0 - I - 0x02D5B7 0B:95A7: AB        .byte $AB   ; 
- D 0 - I - 0x02D5B8 0B:95A8: AA        .byte $AA   ; 
- D 0 - I - 0x02D5B9 0B:95A9: AB        .byte $AB   ; 
- D 0 - I - 0x02D5BA 0B:95AA: AA        .byte $AA   ; 
- D 0 - I - 0x02D5BB 0B:95AB: AB        .byte $AB   ; 
- D 0 - I - 0x02D5BC 0B:95AC: AA        .byte $AA   ; 
- D 0 - I - 0x02D5BD 0B:95AD: AB        .byte $AB   ; 
- D 0 - I - 0x02D5BE 0B:95AE: AA        .byte $AA   ; 
- D 0 - I - 0x02D5BF 0B:95AF: AB        .byte $AB   ; 
- D 0 - I - 0x02D5C0 0B:95B0: AA        .byte $AA   ; 
- D 0 - I - 0x02D5C1 0B:95B1: AB        .byte $AB   ; 
- D 0 - I - 0x02D5C2 0B:95B2: AA        .byte $AA   ; 
- D 0 - I - 0x02D5C3 0B:95B3: AB        .byte $AB   ; 
- D 0 - I - 0x02D5C4 0B:95B4: AA        .byte $AA   ; 
- D 0 - I - 0x02D5C5 0B:95B5: AB        .byte $AB   ; 
- D 0 - I - 0x02D5C6 0B:95B6: AA        .byte $AA   ; 
- D 0 - I - 0x02D5C7 0B:95B7: AB        .byte $AB   ; 
- D 0 - I - 0x02D5C8 0B:95B8: AA        .byte $AA   ; 
- D 0 - I - 0x02D5C9 0B:95B9: AB        .byte $AB   ; 
- D 0 - I - 0x02D5CA 0B:95BA: AA        .byte $AA   ; 
- D 0 - I - 0x02D5CB 0B:95BB: AB        .byte $AB   ; 
- D 0 - I - 0x02D5CC 0B:95BC: AA        .byte $AA   ; 
- D 0 - I - 0x02D5CD 0B:95BD: AB        .byte $AB   ; 
- D 0 - I - 0x02D5CE 0B:95BE: AA        .byte $AA   ; 
- D 0 - I - 0x02D5CF 0B:95BF: AB        .byte $AB   ; 
- D 0 - I - 0x02D5D0 0B:95C0: AA        .byte $AA   ; 
- D 0 - I - 0x02D5D1 0B:95C1: AB        .byte $AB   ; 
- D 0 - I - 0x02D5D2 0B:95C2: BA        .byte $BA   ; 
- D 0 - I - 0x02D5D3 0B:95C3: BB        .byte $BB   ; 
- D 0 - I - 0x02D5D4 0B:95C4: BA        .byte $BA   ; 
- D 0 - I - 0x02D5D5 0B:95C5: BB        .byte $BB   ; 
- D 0 - I - 0x02D5D6 0B:95C6: BA        .byte $BA   ; 
- D 0 - I - 0x02D5D7 0B:95C7: BB        .byte $BB   ; 
- D 0 - I - 0x02D5D8 0B:95C8: BA        .byte $BA   ; 
- D 0 - I - 0x02D5D9 0B:95C9: BB        .byte $BB   ; 
- D 0 - I - 0x02D5DA 0B:95CA: BA        .byte $BA   ; 
- D 0 - I - 0x02D5DB 0B:95CB: BB        .byte $BB   ; 
- D 0 - I - 0x02D5DC 0B:95CC: BA        .byte $BA   ; 
- D 0 - I - 0x02D5DD 0B:95CD: BB        .byte $BB   ; 
- D 0 - I - 0x02D5DE 0B:95CE: BA        .byte $BA   ; 
- D 0 - I - 0x02D5DF 0B:95CF: BB        .byte $BB   ; 
- D 0 - I - 0x02D5E0 0B:95D0: BA        .byte $BA   ; 
- D 0 - I - 0x02D5E1 0B:95D1: BB        .byte $BB   ; 
- D 0 - I - 0x02D5E2 0B:95D2: BA        .byte $BA   ; 
- D 0 - I - 0x02D5E3 0B:95D3: BB        .byte $BB   ; 
- D 0 - I - 0x02D5E4 0B:95D4: BA        .byte $BA   ; 
- D 0 - I - 0x02D5E5 0B:95D5: BB        .byte $BB   ; 
- D 0 - I - 0x02D5E6 0B:95D6: BA        .byte $BA   ; 
- D 0 - I - 0x02D5E7 0B:95D7: BB        .byte $BB   ; 
- D 0 - I - 0x02D5E8 0B:95D8: BA        .byte $BA   ; 
- D 0 - I - 0x02D5E9 0B:95D9: BB        .byte $BB   ; 
- D 0 - I - 0x02D5EA 0B:95DA: BA        .byte $BA   ; 
- D 0 - I - 0x02D5EB 0B:95DB: BB        .byte $BB   ; 
- D 0 - I - 0x02D5EC 0B:95DC: BA        .byte $BA   ; 
- D 0 - I - 0x02D5ED 0B:95DD: BB        .byte $BB   ; 
- D 0 - I - 0x02D5EE 0B:95DE: BA        .byte $BA   ; 
- D 0 - I - 0x02D5EF 0B:95DF: BB        .byte $BB   ; 
- D 0 - I - 0x02D5F0 0B:95E0: BE        .byte $BE   ; 
- D 0 - I - 0x02D5F1 0B:95E1: BA        .byte $BA   ; 
- D 0 - I - 0x02D5F2 0B:95E2: BB        .byte $BB   ; 
- D 0 - I - 0x02D5F3 0B:95E3: AB        .byte $AB   ; 
- D 0 - I - 0x02D5F4 0B:95E4: AA        .byte $AA   ; 
- D 0 - I - 0x02D5F5 0B:95E5: AB        .byte $AB   ; 
- D 0 - I - 0x02D5F6 0B:95E6: AA        .byte $AA   ; 
- D 0 - I - 0x02D5F7 0B:95E7: AB        .byte $AB   ; 
- D 0 - I - 0x02D5F8 0B:95E8: AA        .byte $AA   ; 
- D 0 - I - 0x02D5F9 0B:95E9: AB        .byte $AB   ; 
- D 0 - I - 0x02D5FA 0B:95EA: AA        .byte $AA   ; 
- D 0 - I - 0x02D5FB 0B:95EB: AB        .byte $AB   ; 
- D 0 - I - 0x02D5FC 0B:95EC: AA        .byte $AA   ; 
- D 0 - I - 0x02D5FD 0B:95ED: AB        .byte $AB   ; 
- D 0 - I - 0x02D5FE 0B:95EE: AA        .byte $AA   ; 
- D 0 - I - 0x02D5FF 0B:95EF: AB        .byte $AB   ; 
- D 0 - I - 0x02D600 0B:95F0: AA        .byte $AA   ; 
- D 0 - I - 0x02D601 0B:95F1: AB        .byte $AB   ; 
- D 0 - I - 0x02D602 0B:95F2: AA        .byte $AA   ; 
- D 0 - I - 0x02D603 0B:95F3: AB        .byte $AB   ; 
- D 0 - I - 0x02D604 0B:95F4: AA        .byte $AA   ; 
- D 0 - I - 0x02D605 0B:95F5: AB        .byte $AB   ; 
- D 0 - I - 0x02D606 0B:95F6: AA        .byte $AA   ; 
- D 0 - I - 0x02D607 0B:95F7: AB        .byte $AB   ; 
- D 0 - I - 0x02D608 0B:95F8: AA        .byte $AA   ; 
- D 0 - I - 0x02D609 0B:95F9: AB        .byte $AB   ; 
- D 0 - I - 0x02D60A 0B:95FA: AA        .byte $AA   ; 
- D 0 - I - 0x02D60B 0B:95FB: AB        .byte $AB   ; 
- D 0 - I - 0x02D60C 0B:95FC: AA        .byte $AA   ; 
- D 0 - I - 0x02D60D 0B:95FD: AB        .byte $AB   ; 
- D 0 - I - 0x02D60E 0B:95FE: AA        .byte $AA   ; 
- D 0 - I - 0x02D60F 0B:95FF: AB        .byte $AB   ; 
- D 0 - I - 0x02D610 0B:9600: AA        .byte $AA   ; 
- D 0 - I - 0x02D611 0B:9601: AB        .byte $AB   ; 
- D 0 - I - 0x02D612 0B:9602: AA        .byte $AA   ; 
- D 0 - I - 0x02D613 0B:9603: BB        .byte $BB   ; 
- D 0 - I - 0x02D614 0B:9604: BA        .byte $BA   ; 
- D 0 - I - 0x02D615 0B:9605: BB        .byte $BB   ; 
- D 0 - I - 0x02D616 0B:9606: BA        .byte $BA   ; 
- D 0 - I - 0x02D617 0B:9607: BB        .byte $BB   ; 
- D 0 - I - 0x02D618 0B:9608: BA        .byte $BA   ; 
- D 0 - I - 0x02D619 0B:9609: BB        .byte $BB   ; 
- D 0 - I - 0x02D61A 0B:960A: BA        .byte $BA   ; 
- D 0 - I - 0x02D61B 0B:960B: BB        .byte $BB   ; 
- D 0 - I - 0x02D61C 0B:960C: BA        .byte $BA   ; 
- D 0 - I - 0x02D61D 0B:960D: BB        .byte $BB   ; 
- D 0 - I - 0x02D61E 0B:960E: BA        .byte $BA   ; 
- D 0 - I - 0x02D61F 0B:960F: BB        .byte $BB   ; 
- D 0 - I - 0x02D620 0B:9610: BA        .byte $BA   ; 
- D 0 - I - 0x02D621 0B:9611: BB        .byte $BB   ; 
- D 0 - I - 0x02D622 0B:9612: BA        .byte $BA   ; 
- D 0 - I - 0x02D623 0B:9613: BB        .byte $BB   ; 
- D 0 - I - 0x02D624 0B:9614: BA        .byte $BA   ; 
- D 0 - I - 0x02D625 0B:9615: BB        .byte $BB   ; 
- D 0 - I - 0x02D626 0B:9616: BA        .byte $BA   ; 
- D 0 - I - 0x02D627 0B:9617: BB        .byte $BB   ; 
- D 0 - I - 0x02D628 0B:9618: BA        .byte $BA   ; 
- D 0 - I - 0x02D629 0B:9619: BB        .byte $BB   ; 
- D 0 - I - 0x02D62A 0B:961A: BA        .byte $BA   ; 
- D 0 - I - 0x02D62B 0B:961B: BB        .byte $BB   ; 
- D 0 - I - 0x02D62C 0B:961C: BA        .byte $BA   ; 
- D 0 - I - 0x02D62D 0B:961D: BB        .byte $BB   ; 
- D 0 - I - 0x02D62E 0B:961E: BA        .byte $BA   ; 
- D 0 - I - 0x02D62F 0B:961F: 84        .byte $84   ; 
- D 0 - I - 0x02D630 0B:9620: BB        .byte $BB   ; 
- D 0 - I - 0x02D631 0B:9621: BA        .byte $BA   ; 
- D 0 - I - 0x02D632 0B:9622: BB        .byte $BB   ; 
- D 0 - I - 0x02D633 0B:9623: BA        .byte $BA   ; 
- D 0 - I - 0x02D634 0B:9624: 0B        .byte $0B   ; 
- D 0 - I - 0x02D635 0B:9625: 00        .byte $00   ; 
- D 0 - I - 0x02D636 0B:9626: 82        .byte $82   ; 
- D 0 - I - 0x02D637 0B:9627: 40        .byte $40   ; 
- D 0 - I - 0x02D638 0B:9628: 50        .byte $50   ; 
- D 0 - I - 0x02D639 0B:9629: 06        .byte $06   ; 
- D 0 - I - 0x02D63A 0B:962A: 00        .byte $00   ; 
- D 0 - I - 0x02D63B 0B:962B: 82        .byte $82   ; 
- D 0 - I - 0x02D63C 0B:962C: 04        .byte $04   ; 
- D 0 - I - 0x02D63D 0B:962D: 25        .byte $25   ; 
- D 0 - I - 0x02D63E 0B:962E: 03        .byte $03   ; 
- D 0 - I - 0x02D63F 0B:962F: 00        .byte $00   ; 
- D 0 - I - 0x02D640 0B:9630: 10        .byte $10   ; 
- D 0 - I - 0x02D641 0B:9631: AA        .byte $AA   ; 
- D 0 - I - 0x02D642 0B:9632: 08        .byte $08   ; 
- D 0 - I - 0x02D643 0B:9633: FF        .byte $FF   ; 
- D 0 - I - 0x02D644 0B:9634: 08        .byte $08   ; 
- D 0 - I - 0x02D645 0B:9635: 0F        .byte $0F   ; 
- D 0 - I - 0x02D646 0B:9636: 08        .byte $08   ; 
- D 0 - I - 0x02D647 0B:9637: 00        .byte $00   ; 
- D 0 - I - 0x02D648 0B:9638: FF        .byte $FF   ; 



.export _off003_0x02D649_0E
_off003_0x02D649_0E:
- D 0 - I - 0x02D649 0B:9639: 00        .byte $00   ; 
- D 0 - I - 0x02D64A 0B:963A: 20        .byte $20   ; 
- D 0 - I - 0x02D64B 0B:963B: 7E        .byte $7E   ; 
- D 0 - I - 0x02D64C 0B:963C: 00        .byte $00   ; 
- D 0 - I - 0x02D64D 0B:963D: 43        .byte $43   ; 
- D 0 - I - 0x02D64E 0B:963E: 00        .byte $00   ; 
- D 0 - I - 0x02D64F 0B:963F: BE        .byte $BE   ; 
- D 0 - I - 0x02D650 0B:9640: 3A        .byte $3A   ; 
- D 0 - I - 0x02D651 0B:9641: 00        .byte $00   ; 
- D 0 - I - 0x02D652 0B:9642: 00        .byte $00   ; 
- D 0 - I - 0x02D653 0B:9643: 3B        .byte $3B   ; 
- D 0 - I - 0x02D654 0B:9644: 3A        .byte $3A   ; 
- D 0 - I - 0x02D655 0B:9645: 3C        .byte $3C   ; 
- D 0 - I - 0x02D656 0B:9646: 00        .byte $00   ; 
- D 0 - I - 0x02D657 0B:9647: 00        .byte $00   ; 
- D 0 - I - 0x02D658 0B:9648: 3A        .byte $3A   ; 
- D 0 - I - 0x02D659 0B:9649: 00        .byte $00   ; 
- D 0 - I - 0x02D65A 0B:964A: 00        .byte $00   ; 
- D 0 - I - 0x02D65B 0B:964B: 3B        .byte $3B   ; 
- D 0 - I - 0x02D65C 0B:964C: 3A        .byte $3A   ; 
- D 0 - I - 0x02D65D 0B:964D: 3C        .byte $3C   ; 
- D 0 - I - 0x02D65E 0B:964E: 00        .byte $00   ; 
- D 0 - I - 0x02D65F 0B:964F: 00        .byte $00   ; 
- D 0 - I - 0x02D660 0B:9650: 39        .byte $39   ; 
- D 0 - I - 0x02D661 0B:9651: 02        .byte $02   ; 
- D 0 - I - 0x02D662 0B:9652: 00        .byte $00   ; 
- D 0 - I - 0x02D663 0B:9653: 3B        .byte $3B   ; 
- D 0 - I - 0x02D664 0B:9654: 3A        .byte $3A   ; 
- D 0 - I - 0x02D665 0B:9655: 3C        .byte $3C   ; 
- D 0 - I - 0x02D666 0B:9656: 00        .byte $00   ; 
- D 0 - I - 0x02D667 0B:9657: 00        .byte $00   ; 
- D 0 - I - 0x02D668 0B:9658: 39        .byte $39   ; 
- D 0 - I - 0x02D669 0B:9659: 02        .byte $02   ; 
- D 0 - I - 0x02D66A 0B:965A: 00        .byte $00   ; 
- D 0 - I - 0x02D66B 0B:965B: 3B        .byte $3B   ; 
- D 0 - I - 0x02D66C 0B:965C: 3A        .byte $3A   ; 
- D 0 - I - 0x02D66D 0B:965D: 3C        .byte $3C   ; 
- D 0 - I - 0x02D66E 0B:965E: 00        .byte $00   ; 
- D 0 - I - 0x02D66F 0B:965F: 00        .byte $00   ; 
- D 0 - I - 0x02D670 0B:9660: 44        .byte $44   ; 
- D 0 - I - 0x02D671 0B:9661: 00        .byte $00   ; 
- D 0 - I - 0x02D672 0B:9662: 00        .byte $00   ; 
- D 0 - I - 0x02D673 0B:9663: 45        .byte $45   ; 
- D 0 - I - 0x02D674 0B:9664: 44        .byte $44   ; 
- D 0 - I - 0x02D675 0B:9665: 46        .byte $46   ; 
- D 0 - I - 0x02D676 0B:9666: 00        .byte $00   ; 
- D 0 - I - 0x02D677 0B:9667: 00        .byte $00   ; 
- D 0 - I - 0x02D678 0B:9668: 44        .byte $44   ; 
- D 0 - I - 0x02D679 0B:9669: 00        .byte $00   ; 
- D 0 - I - 0x02D67A 0B:966A: 00        .byte $00   ; 
- D 0 - I - 0x02D67B 0B:966B: 45        .byte $45   ; 
- D 0 - I - 0x02D67C 0B:966C: 44        .byte $44   ; 
- D 0 - I - 0x02D67D 0B:966D: 46        .byte $46   ; 
- D 0 - I - 0x02D67E 0B:966E: 00        .byte $00   ; 
- D 0 - I - 0x02D67F 0B:966F: 39        .byte $39   ; 
- D 0 - I - 0x02D680 0B:9670: 02        .byte $02   ; 
- D 0 - I - 0x02D681 0B:9671: 02        .byte $02   ; 
- D 0 - I - 0x02D682 0B:9672: 00        .byte $00   ; 
- D 0 - I - 0x02D683 0B:9673: 45        .byte $45   ; 
- D 0 - I - 0x02D684 0B:9674: 44        .byte $44   ; 
- D 0 - I - 0x02D685 0B:9675: 46        .byte $46   ; 
- D 0 - I - 0x02D686 0B:9676: 00        .byte $00   ; 
- D 0 - I - 0x02D687 0B:9677: 39        .byte $39   ; 
- D 0 - I - 0x02D688 0B:9678: 02        .byte $02   ; 
- D 0 - I - 0x02D689 0B:9679: 02        .byte $02   ; 
- D 0 - I - 0x02D68A 0B:967A: 00        .byte $00   ; 
- D 0 - I - 0x02D68B 0B:967B: 45        .byte $45   ; 
- D 0 - I - 0x02D68C 0B:967C: 44        .byte $44   ; 
- D 0 - I - 0x02D68D 0B:967D: 46        .byte $46   ; 
- D 0 - I - 0x02D68E 0B:967E: 82        .byte $82   ; 
- D 0 - I - 0x02D68F 0B:967F: 00        .byte $00   ; 
- D 0 - I - 0x02D690 0B:9680: 40        .byte $40   ; 
- D 0 - I - 0x02D691 0B:9681: C4        .byte $C4   ; 
- D 0 - I - 0x02D692 0B:9682: 3D        .byte $3D   ; 
- D 0 - I - 0x02D693 0B:9683: C4        .byte $C4   ; 
- D 0 - I - 0x02D694 0B:9684: 3D        .byte $3D   ; 
- D 0 - I - 0x02D695 0B:9685: C4        .byte $C4   ; 
- D 0 - I - 0x02D696 0B:9686: 3D        .byte $3D   ; 
- D 0 - I - 0x02D697 0B:9687: C3        .byte $C3   ; 
- D 0 - I - 0x02D698 0B:9688: 3D        .byte $3D   ; 
- D 0 - I - 0x02D699 0B:9689: 03        .byte $03   ; 
- D 0 - I - 0x02D69A 0B:968A: 02        .byte $02   ; 
- D 0 - I - 0x02D69B 0B:968B: 82        .byte $82   ; 
- D 0 - I - 0x02D69C 0B:968C: 00        .byte $00   ; 
- D 0 - I - 0x02D69D 0B:968D: 40        .byte $40   ; 
- D 0 - I - 0x02D69E 0B:968E: C3        .byte $C3   ; 
- D 0 - I - 0x02D69F 0B:968F: 3D        .byte $3D   ; 
- D 0 - I - 0x02D6A0 0B:9690: 03        .byte $03   ; 
- D 0 - I - 0x02D6A1 0B:9691: 02        .byte $02   ; 
- D 0 - I - 0x02D6A2 0B:9692: 82        .byte $82   ; 
- D 0 - I - 0x02D6A3 0B:9693: 00        .byte $00   ; 
- D 0 - I - 0x02D6A4 0B:9694: 40        .byte $40   ; 
- D 0 - I - 0x02D6A5 0B:9695: C3        .byte $C3   ; 
- D 0 - I - 0x02D6A6 0B:9696: 3D        .byte $3D   ; 
- D 0 - I - 0x02D6A7 0B:9697: 90        .byte $90   ; 
- D 0 - I - 0x02D6A8 0B:9698: 38        .byte $38   ; 
- D 0 - I - 0x02D6A9 0B:9699: 34        .byte $34   ; 
- D 0 - I - 0x02D6AA 0B:969A: 42        .byte $42   ; 
- D 0 - I - 0x02D6AB 0B:969B: 43        .byte $43   ; 
- D 0 - I - 0x02D6AC 0B:969C: 38        .byte $38   ; 
- D 0 - I - 0x02D6AD 0B:969D: 34        .byte $34   ; 
- D 0 - I - 0x02D6AE 0B:969E: 35        .byte $35   ; 
- D 0 - I - 0x02D6AF 0B:969F: 43        .byte $43   ; 
- D 0 - I - 0x02D6B0 0B:96A0: 38        .byte $38   ; 
- D 0 - I - 0x02D6B1 0B:96A1: 34        .byte $34   ; 
- D 0 - I - 0x02D6B2 0B:96A2: 42        .byte $42   ; 
- D 0 - I - 0x02D6B3 0B:96A3: 43        .byte $43   ; 
- D 0 - I - 0x02D6B4 0B:96A4: 38        .byte $38   ; 
- D 0 - I - 0x02D6B5 0B:96A5: 34        .byte $34   ; 
- D 0 - I - 0x02D6B6 0B:96A6: 35        .byte $35   ; 
- D 0 - I - 0x02D6B7 0B:96A7: 43        .byte $43   ; 
- D 0 - I - 0x02D6B8 0B:96A8: 03        .byte $03   ; 
- D 0 - I - 0x02D6B9 0B:96A9: 02        .byte $02   ; 
- D 0 - I - 0x02D6BA 0B:96AA: 85        .byte $85   ; 
- D 0 - I - 0x02D6BB 0B:96AB: 00        .byte $00   ; 
- D 0 - I - 0x02D6BC 0B:96AC: 38        .byte $38   ; 
- D 0 - I - 0x02D6BD 0B:96AD: 34        .byte $34   ; 
- D 0 - I - 0x02D6BE 0B:96AE: 35        .byte $35   ; 
- D 0 - I - 0x02D6BF 0B:96AF: 43        .byte $43   ; 
- D 0 - I - 0x02D6C0 0B:96B0: 03        .byte $03   ; 
- D 0 - I - 0x02D6C1 0B:96B1: 02        .byte $02   ; 
- D 0 - I - 0x02D6C2 0B:96B2: 85        .byte $85   ; 
- D 0 - I - 0x02D6C3 0B:96B3: 00        .byte $00   ; 
- D 0 - I - 0x02D6C4 0B:96B4: 38        .byte $38   ; 
- D 0 - I - 0x02D6C5 0B:96B5: 34        .byte $34   ; 
- D 0 - I - 0x02D6C6 0B:96B6: 35        .byte $35   ; 
- D 0 - I - 0x02D6C7 0B:96B7: 43        .byte $43   ; 
- D 0 - I - 0x02D6C8 0B:96B8: 10        .byte $10   ; 
- D 0 - I - 0x02D6C9 0B:96B9: 00        .byte $00   ; 
- D 0 - I - 0x02D6CA 0B:96BA: 03        .byte $03   ; 
- D 0 - I - 0x02D6CB 0B:96BB: 02        .byte $02   ; 
- D 0 - I - 0x02D6CC 0B:96BC: 05        .byte $05   ; 
- D 0 - I - 0x02D6CD 0B:96BD: 00        .byte $00   ; 
- D 0 - I - 0x02D6CE 0B:96BE: 03        .byte $03   ; 
- D 0 - I - 0x02D6CF 0B:96BF: 02        .byte $02   ; 
- D 0 - I - 0x02D6D0 0B:96C0: 05        .byte $05   ; 
- D 0 - I - 0x02D6D1 0B:96C1: 00        .byte $00   ; 
- D 0 - I - 0x02D6D2 0B:96C2: 05        .byte $05   ; 
- D 0 - I - 0x02D6D3 0B:96C3: 2A        .byte $2A   ; 
- D 0 - I - 0x02D6D4 0B:96C4: 81        .byte $81   ; 
- D 0 - I - 0x02D6D5 0B:96C5: 2B        .byte $2B   ; 
- D 0 - I - 0x02D6D6 0B:96C6: 0A        .byte $0A   ; 
- D 0 - I - 0x02D6D7 0B:96C7: 00        .byte $00   ; 
- D 0 - I - 0x02D6D8 0B:96C8: 03        .byte $03   ; 
- D 0 - I - 0x02D6D9 0B:96C9: 02        .byte $02   ; 
- D 0 - I - 0x02D6DA 0B:96CA: 05        .byte $05   ; 
- D 0 - I - 0x02D6DB 0B:96CB: 00        .byte $00   ; 
- D 0 - I - 0x02D6DC 0B:96CC: 03        .byte $03   ; 
- D 0 - I - 0x02D6DD 0B:96CD: 02        .byte $02   ; 
- D 0 - I - 0x02D6DE 0B:96CE: 05        .byte $05   ; 
- D 0 - I - 0x02D6DF 0B:96CF: 00        .byte $00   ; 
- D 0 - I - 0x02D6E0 0B:96D0: C4        .byte $C4   ; 
- D 0 - I - 0x02D6E1 0B:96D1: 30        .byte $30   ; 
- D 0 - I - 0x02D6E2 0B:96D2: 82        .byte $82   ; 
- D 0 - I - 0x02D6E3 0B:96D3: 30        .byte $30   ; 
- D 0 - I - 0x02D6E4 0B:96D4: 2C        .byte $2C   ; 
- D 0 - I - 0x02D6E5 0B:96D5: 0A        .byte $0A   ; 
- D 0 - I - 0x02D6E6 0B:96D6: 10        .byte $10   ; 
- D 0 - I - 0x02D6E7 0B:96D7: 03        .byte $03   ; 
- D 0 - I - 0x02D6E8 0B:96D8: 02        .byte $02   ; 
- D 0 - I - 0x02D6E9 0B:96D9: 81        .byte $81   ; 
- D 0 - I - 0x02D6EA 0B:96DA: 00        .byte $00   ; 
- D 0 - I - 0x02D6EB 0B:96DB: 04        .byte $04   ; 
- D 0 - I - 0x02D6EC 0B:96DC: 10        .byte $10   ; 
- D 0 - I - 0x02D6ED 0B:96DD: 03        .byte $03   ; 
- D 0 - I - 0x02D6EE 0B:96DE: 02        .byte $02   ; 
- D 0 - I - 0x02D6EF 0B:96DF: 81        .byte $81   ; 
- D 0 - I - 0x02D6F0 0B:96E0: 00        .byte $00   ; 
- D 0 - I - 0x02D6F1 0B:96E1: 04        .byte $04   ; 
- D 0 - I - 0x02D6F2 0B:96E2: 10        .byte $10   ; 
- D 0 - I - 0x02D6F3 0B:96E3: 81        .byte $81   ; 
- D 0 - I - 0x02D6F4 0B:96E4: 30        .byte $30   ; 
- D 0 - I - 0x02D6F5 0B:96E5: C3        .byte $C3   ; 
- D 0 - I - 0x02D6F6 0B:96E6: 2D        .byte $2D   ; 
- D 0 - I - 0x02D6F7 0B:96E7: 82        .byte $82   ; 
- D 0 - I - 0x02D6F8 0B:96E8: 1C        .byte $1C   ; 
- D 0 - I - 0x02D6F9 0B:96E9: 2C        .byte $2C   ; 
- D 0 - I - 0x02D6FA 0B:96EA: 0A        .byte $0A   ; 
- D 0 - I - 0x02D6FB 0B:96EB: 30        .byte $30   ; 
- D 0 - I - 0x02D6FC 0B:96EC: 03        .byte $03   ; 
- D 0 - I - 0x02D6FD 0B:96ED: 02        .byte $02   ; 
- D 0 - I - 0x02D6FE 0B:96EE: 81        .byte $81   ; 
- D 0 - I - 0x02D6FF 0B:96EF: 00        .byte $00   ; 
- D 0 - I - 0x02D700 0B:96F0: 04        .byte $04   ; 
- D 0 - I - 0x02D701 0B:96F1: 30        .byte $30   ; 
- D 0 - I - 0x02D702 0B:96F2: 03        .byte $03   ; 
- D 0 - I - 0x02D703 0B:96F3: 02        .byte $02   ; 
- D 0 - I - 0x02D704 0B:96F4: 81        .byte $81   ; 
- D 0 - I - 0x02D705 0B:96F5: 00        .byte $00   ; 
- D 0 - I - 0x02D706 0B:96F6: 05        .byte $05   ; 
- D 0 - I - 0x02D707 0B:96F7: 30        .byte $30   ; 
- D 0 - I - 0x02D708 0B:96F8: C4        .byte $C4   ; 
- D 0 - I - 0x02D709 0B:96F9: 1D        .byte $1D   ; 
- D 0 - I - 0x02D70A 0B:96FA: 9C        .byte $9C   ; 
- D 0 - I - 0x02D70B 0B:96FB: 2C        .byte $2C   ; 
- D 0 - I - 0x02D70C 0B:96FC: 11        .byte $11   ; 
- D 0 - I - 0x02D70D 0B:96FD: 12        .byte $12   ; 
- D 0 - I - 0x02D70E 0B:96FE: 30        .byte $30   ; 
- D 0 - I - 0x02D70F 0B:96FF: 30        .byte $30   ; 
- D 0 - I - 0x02D710 0B:9700: 11        .byte $11   ; 
- D 0 - I - 0x02D711 0B:9701: 12        .byte $12   ; 
- D 0 - I - 0x02D712 0B:9702: 30        .byte $30   ; 
- D 0 - I - 0x02D713 0B:9703: 30        .byte $30   ; 
- D 0 - I - 0x02D714 0B:9704: 11        .byte $11   ; 
- D 0 - I - 0x02D715 0B:9705: 12        .byte $12   ; 
- D 0 - I - 0x02D716 0B:9706: 03        .byte $03   ; 
- D 0 - I - 0x02D717 0B:9707: 01        .byte $01   ; 
- D 0 - I - 0x02D718 0B:9708: 02        .byte $02   ; 
- D 0 - I - 0x02D719 0B:9709: 00        .byte $00   ; 
- D 0 - I - 0x02D71A 0B:970A: 30        .byte $30   ; 
- D 0 - I - 0x02D71B 0B:970B: 30        .byte $30   ; 
- D 0 - I - 0x02D71C 0B:970C: 11        .byte $11   ; 
- D 0 - I - 0x02D71D 0B:970D: 12        .byte $12   ; 
- D 0 - I - 0x02D71E 0B:970E: 03        .byte $03   ; 
- D 0 - I - 0x02D71F 0B:970F: 01        .byte $01   ; 
- D 0 - I - 0x02D720 0B:9710: 02        .byte $02   ; 
- D 0 - I - 0x02D721 0B:9711: 00        .byte $00   ; 
- D 0 - I - 0x02D722 0B:9712: 30        .byte $30   ; 
- D 0 - I - 0x02D723 0B:9713: 30        .byte $30   ; 
- D 0 - I - 0x02D724 0B:9714: 11        .byte $11   ; 
- D 0 - I - 0x02D725 0B:9715: 12        .byte $12   ; 
- D 0 - I - 0x02D726 0B:9716: 30        .byte $30   ; 
- D 0 - I - 0x02D727 0B:9717: C3        .byte $C3   ; 
- D 0 - I - 0x02D728 0B:9718: 21        .byte $21   ; 
- D 0 - I - 0x02D729 0B:9719: 82        .byte $82   ; 
- D 0 - I - 0x02D72A 0B:971A: 20        .byte $20   ; 
- D 0 - I - 0x02D72B 0B:971B: 2C        .byte $2C   ; 
- D 0 - I - 0x02D72C 0B:971C: C4        .byte $C4   ; 
- D 0 - I - 0x02D72D 0B:971D: 13        .byte $13   ; 
- D 0 - I - 0x02D72E 0B:971E: C4        .byte $C4   ; 
- D 0 - I - 0x02D72F 0B:971F: 13        .byte $13   ; 
- D 0 - I - 0x02D730 0B:9720: 93        .byte $93   ; 
- D 0 - I - 0x02D731 0B:9721: 13        .byte $13   ; 
- D 0 - I - 0x02D732 0B:9722: 14        .byte $14   ; 
- D 0 - I - 0x02D733 0B:9723: 04        .byte $04   ; 
- D 0 - I - 0x02D734 0B:9724: 04        .byte $04   ; 
- D 0 - I - 0x02D735 0B:9725: 03        .byte $03   ; 
- D 0 - I - 0x02D736 0B:9726: 09        .byte $09   ; 
- D 0 - I - 0x02D737 0B:9727: 15        .byte $15   ; 
- D 0 - I - 0x02D738 0B:9728: 16        .byte $16   ; 
- D 0 - I - 0x02D739 0B:9729: 13        .byte $13   ; 
- D 0 - I - 0x02D73A 0B:972A: 14        .byte $14   ; 
- D 0 - I - 0x02D73B 0B:972B: 04        .byte $04   ; 
- D 0 - I - 0x02D73C 0B:972C: 04        .byte $04   ; 
- D 0 - I - 0x02D73D 0B:972D: 03        .byte $03   ; 
- D 0 - I - 0x02D73E 0B:972E: 09        .byte $09   ; 
- D 0 - I - 0x02D73F 0B:972F: 15        .byte $15   ; 
- D 0 - I - 0x02D740 0B:9730: 16        .byte $16   ; 
- D 0 - I - 0x02D741 0B:9731: 13        .byte $13   ; 
- D 0 - I - 0x02D742 0B:9732: 14        .byte $14   ; 
- D 0 - I - 0x02D743 0B:9733: 30        .byte $30   ; 
- D 0 - I - 0x02D744 0B:9734: C4        .byte $C4   ; 
- D 0 - I - 0x02D745 0B:9735: 26        .byte $26   ; 
- D 0 - I - 0x02D746 0B:9736: 81        .byte $81   ; 
- D 0 - I - 0x02D747 0B:9737: 2C        .byte $2C   ; 
- D 0 - I - 0x02D748 0B:9738: 0A        .byte $0A   ; 
- D 0 - I - 0x02D749 0B:9739: 00        .byte $00   ; 
- D 0 - I - 0x02D74A 0B:973A: 03        .byte $03   ; 
- D 0 - I - 0x02D74B 0B:973B: 04        .byte $04   ; 
- D 0 - I - 0x02D74C 0B:973C: 81        .byte $81   ; 
- D 0 - I - 0x02D74D 0B:973D: 0A        .byte $0A   ; 
- D 0 - I - 0x02D74E 0B:973E: 04        .byte $04   ; 
- D 0 - I - 0x02D74F 0B:973F: 00        .byte $00   ; 
- D 0 - I - 0x02D750 0B:9740: 03        .byte $03   ; 
- D 0 - I - 0x02D751 0B:9741: 04        .byte $04   ; 
- D 0 - I - 0x02D752 0B:9742: 81        .byte $81   ; 
- D 0 - I - 0x02D753 0B:9743: 0A        .byte $0A   ; 
- D 0 - I - 0x02D754 0B:9744: 04        .byte $04   ; 
- D 0 - I - 0x02D755 0B:9745: 00        .byte $00   ; 
- D 0 - I - 0x02D756 0B:9746: 05        .byte $05   ; 
- D 0 - I - 0x02D757 0B:9747: 30        .byte $30   ; 
- D 0 - I - 0x02D758 0B:9748: 84        .byte $84   ; 
- D 0 - I - 0x02D759 0B:9749: 2C        .byte $2C   ; 
- D 0 - I - 0x02D75A 0B:974A: 00        .byte $00   ; 
- D 0 - I - 0x02D75B 0B:974B: 00        .byte $00   ; 
- D 0 - I - 0x02D75C 0B:974C: 17        .byte $17   ; 
- D 0 - I - 0x02D75D 0B:974D: 03        .byte $03   ; 
- D 0 - I - 0x02D75E 0B:974E: 00        .byte $00   ; 
- D 0 - I - 0x02D75F 0B:974F: 81        .byte $81   ; 
- D 0 - I - 0x02D760 0B:9750: 17        .byte $17   ; 
- D 0 - I - 0x02D761 0B:9751: 03        .byte $03   ; 
- D 0 - I - 0x02D762 0B:9752: 00        .byte $00   ; 
- D 0 - I - 0x02D763 0B:9753: 03        .byte $03   ; 
- D 0 - I - 0x02D764 0B:9754: 04        .byte $04   ; 
- D 0 - I - 0x02D765 0B:9755: 82        .byte $82   ; 
- D 0 - I - 0x02D766 0B:9756: 0A        .byte $0A   ; 
- D 0 - I - 0x02D767 0B:9757: 17        .byte $17   ; 
- D 0 - I - 0x02D768 0B:9758: 03        .byte $03   ; 
- D 0 - I - 0x02D769 0B:9759: 00        .byte $00   ; 
- D 0 - I - 0x02D76A 0B:975A: 03        .byte $03   ; 
- D 0 - I - 0x02D76B 0B:975B: 04        .byte $04   ; 
- D 0 - I - 0x02D76C 0B:975C: 82        .byte $82   ; 
- D 0 - I - 0x02D76D 0B:975D: 0A        .byte $0A   ; 
- D 0 - I - 0x02D76E 0B:975E: 17        .byte $17   ; 
- D 0 - I - 0x02D76F 0B:975F: 03        .byte $03   ; 
- D 0 - I - 0x02D770 0B:9760: 00        .byte $00   ; 
- D 0 - I - 0x02D771 0B:9761: 05        .byte $05   ; 
- D 0 - I - 0x02D772 0B:9762: 30        .byte $30   ; 
- D 0 - I - 0x02D773 0B:9763: 82        .byte $82   ; 
- D 0 - I - 0x02D774 0B:9764: 2C        .byte $2C   ; 
- D 0 - I - 0x02D775 0B:9765: 18        .byte $18   ; 
- D 0 - I - 0x02D776 0B:9766: C3        .byte $C3   ; 
- D 0 - I - 0x02D777 0B:9767: 18        .byte $18   ; 
- D 0 - I - 0x02D778 0B:9768: 81        .byte $81   ; 
- D 0 - I - 0x02D779 0B:9769: 18        .byte $18   ; 
- D 0 - I - 0x02D77A 0B:976A: C3        .byte $C3   ; 
- D 0 - I - 0x02D77B 0B:976B: 18        .byte $18   ; 
- D 0 - I - 0x02D77C 0B:976C: 82        .byte $82   ; 
- D 0 - I - 0x02D77D 0B:976D: 18        .byte $18   ; 
- D 0 - I - 0x02D77E 0B:976E: 18        .byte $18   ; 
- D 0 - I - 0x02D77F 0B:976F: 03        .byte $03   ; 
- D 0 - I - 0x02D780 0B:9770: 04        .byte $04   ; 
- D 0 - I - 0x02D781 0B:9771: 85        .byte $85   ; 
- D 0 - I - 0x02D782 0B:9772: 0A        .byte $0A   ; 
- D 0 - I - 0x02D783 0B:9773: 19        .byte $19   ; 
- D 0 - I - 0x02D784 0B:9774: 1A        .byte $1A   ; 
- D 0 - I - 0x02D785 0B:9775: 18        .byte $18   ; 
- D 0 - I - 0x02D786 0B:9776: 18        .byte $18   ; 
- D 0 - I - 0x02D787 0B:9777: 03        .byte $03   ; 
- D 0 - I - 0x02D788 0B:9778: 04        .byte $04   ; 
- D 0 - I - 0x02D789 0B:9779: 85        .byte $85   ; 
- D 0 - I - 0x02D78A 0B:977A: 0A        .byte $0A   ; 
- D 0 - I - 0x02D78B 0B:977B: 19        .byte $19   ; 
- D 0 - I - 0x02D78C 0B:977C: 1A        .byte $1A   ; 
- D 0 - I - 0x02D78D 0B:977D: 18        .byte $18   ; 
- D 0 - I - 0x02D78E 0B:977E: 18        .byte $18   ; 
- D 0 - I - 0x02D78F 0B:977F: 05        .byte $05   ; 
- D 0 - I - 0x02D790 0B:9780: 30        .byte $30   ; 
- D 0 - I - 0x02D791 0B:9781: 84        .byte $84   ; 
- D 0 - I - 0x02D792 0B:9782: 2C        .byte $2C   ; 
- D 0 - I - 0x02D793 0B:9783: 00        .byte $00   ; 
- D 0 - I - 0x02D794 0B:9784: 00        .byte $00   ; 
- D 0 - I - 0x02D795 0B:9785: 1B        .byte $1B   ; 
- D 0 - I - 0x02D796 0B:9786: 03        .byte $03   ; 
- D 0 - I - 0x02D797 0B:9787: 00        .byte $00   ; 
- D 0 - I - 0x02D798 0B:9788: 81        .byte $81   ; 
- D 0 - I - 0x02D799 0B:9789: 1B        .byte $1B   ; 
- D 0 - I - 0x02D79A 0B:978A: 03        .byte $03   ; 
- D 0 - I - 0x02D79B 0B:978B: 00        .byte $00   ; 
- D 0 - I - 0x02D79C 0B:978C: 03        .byte $03   ; 
- D 0 - I - 0x02D79D 0B:978D: 04        .byte $04   ; 
- D 0 - I - 0x02D79E 0B:978E: 82        .byte $82   ; 
- D 0 - I - 0x02D79F 0B:978F: 0A        .byte $0A   ; 
- D 0 - I - 0x02D7A0 0B:9790: 1B        .byte $1B   ; 
- D 0 - I - 0x02D7A1 0B:9791: 03        .byte $03   ; 
- D 0 - I - 0x02D7A2 0B:9792: 00        .byte $00   ; 
- D 0 - I - 0x02D7A3 0B:9793: 03        .byte $03   ; 
- D 0 - I - 0x02D7A4 0B:9794: 04        .byte $04   ; 
- D 0 - I - 0x02D7A5 0B:9795: 82        .byte $82   ; 
- D 0 - I - 0x02D7A6 0B:9796: 0A        .byte $0A   ; 
- D 0 - I - 0x02D7A7 0B:9797: 1B        .byte $1B   ; 
- D 0 - I - 0x02D7A8 0B:9798: 03        .byte $03   ; 
- D 0 - I - 0x02D7A9 0B:9799: 00        .byte $00   ; 
- D 0 - I - 0x02D7AA 0B:979A: 10        .byte $10   ; 
- D 0 - I - 0x02D7AB 0B:979B: 05        .byte $05   ; 
- D 0 - I - 0x02D7AC 0B:979C: 84        .byte $84   ; 
- D 0 - I - 0x02D7AD 0B:979D: 07        .byte $07   ; 
- D 0 - I - 0x02D7AE 0B:979E: 04        .byte $04   ; 
- D 0 - I - 0x02D7AF 0B:979F: 04        .byte $04   ; 
- D 0 - I - 0x02D7B0 0B:97A0: 0A        .byte $0A   ; 
- D 0 - I - 0x02D7B1 0B:97A1: 04        .byte $04   ; 
- D 0 - I - 0x02D7B2 0B:97A2: 05        .byte $05   ; 
- D 0 - I - 0x02D7B3 0B:97A3: 84        .byte $84   ; 
- D 0 - I - 0x02D7B4 0B:97A4: 07        .byte $07   ; 
- D 0 - I - 0x02D7B5 0B:97A5: 04        .byte $04   ; 
- D 0 - I - 0x02D7B6 0B:97A6: 04        .byte $04   ; 
- D 0 - I - 0x02D7B7 0B:97A7: 0A        .byte $0A   ; 
- D 0 - I - 0x02D7B8 0B:97A8: 15        .byte $15   ; 
- D 0 - I - 0x02D7B9 0B:97A9: 05        .byte $05   ; 
- D 0 - I - 0x02D7BA 0B:97AA: 83        .byte $83   ; 
- D 0 - I - 0x02D7BB 0B:97AB: 07        .byte $07   ; 
- D 0 - I - 0x02D7BC 0B:97AC: 04        .byte $04   ; 
- D 0 - I - 0x02D7BD 0B:97AD: 0A        .byte $0A   ; 
- D 0 - I - 0x02D7BE 0B:97AE: 05        .byte $05   ; 
- D 0 - I - 0x02D7BF 0B:97AF: 05        .byte $05   ; 
- D 0 - I - 0x02D7C0 0B:97B0: 83        .byte $83   ; 
- D 0 - I - 0x02D7C1 0B:97B1: 07        .byte $07   ; 
- D 0 - I - 0x02D7C2 0B:97B2: 04        .byte $04   ; 
- D 0 - I - 0x02D7C3 0B:97B3: 0A        .byte $0A   ; 
- D 0 - I - 0x02D7C4 0B:97B4: 04        .byte $04   ; 
- D 0 - I - 0x02D7C5 0B:97B5: 05        .byte $05   ; 
- D 0 - I - 0x02D7C6 0B:97B6: 12        .byte $12   ; 
- D 0 - I - 0x02D7C7 0B:97B7: 06        .byte $06   ; 
- D 0 - I - 0x02D7C8 0B:97B8: 82        .byte $82   ; 
- D 0 - I - 0x02D7C9 0B:97B9: 08        .byte $08   ; 
- D 0 - I - 0x02D7CA 0B:97BA: 0A        .byte $0A   ; 
- D 0 - I - 0x02D7CB 0B:97BB: 06        .byte $06   ; 
- D 0 - I - 0x02D7CC 0B:97BC: 06        .byte $06   ; 
- D 0 - I - 0x02D7CD 0B:97BD: 82        .byte $82   ; 
- D 0 - I - 0x02D7CE 0B:97BE: 08        .byte $08   ; 
- D 0 - I - 0x02D7CF 0B:97BF: 0A        .byte $0A   ; 
- D 0 - I - 0x02D7D0 0B:97C0: 04        .byte $04   ; 
- D 0 - I - 0x02D7D1 0B:97C1: 06        .byte $06   ; 
- D 0 - I - 0x02D7D2 0B:97C2: 20        .byte $20   ; 
- D 0 - I - 0x02D7D3 0B:97C3: 0B        .byte $0B   ; 
- D 0 - I - 0x02D7D4 0B:97C4: 7E        .byte $7E   ; 
- D 0 - I - 0x02D7D5 0B:97C5: 00        .byte $00   ; 
- D 0 - I - 0x02D7D6 0B:97C6: 42        .byte $42   ; 
- D 0 - I - 0x02D7D7 0B:97C7: 00        .byte $00   ; 
- D 0 - I - 0x02D7D8 0B:97C8: 08        .byte $08   ; 
- D 0 - I - 0x02D7D9 0B:97C9: FF        .byte $FF   ; 
- D 0 - I - 0x02D7DA 0B:97CA: 08        .byte $08   ; 
- D 0 - I - 0x02D7DB 0B:97CB: 0F        .byte $0F   ; 
- D 0 - I - 0x02D7DC 0B:97CC: 82        .byte $82   ; 
- D 0 - I - 0x02D7DD 0B:97CD: A0        .byte $A0   ; 
- D 0 - I - 0x02D7DE 0B:97CE: 20        .byte $20   ; 
- D 0 - I - 0x02D7DF 0B:97CF: 06        .byte $06   ; 
- D 0 - I - 0x02D7E0 0B:97D0: 00        .byte $00   ; 
- D 0 - I - 0x02D7E1 0B:97D1: 8A        .byte $8A   ; 
- D 0 - I - 0x02D7E2 0B:97D2: AA        .byte $AA   ; 
- D 0 - I - 0x02D7E3 0B:97D3: 66        .byte $66   ; 
- D 0 - I - 0x02D7E4 0B:97D4: 55        .byte $55   ; 
- D 0 - I - 0x02D7E5 0B:97D5: 55        .byte $55   ; 
- D 0 - I - 0x02D7E6 0B:97D6: 00        .byte $00   ; 
- D 0 - I - 0x02D7E7 0B:97D7: 55        .byte $55   ; 
- D 0 - I - 0x02D7E8 0B:97D8: 00        .byte $00   ; 
- D 0 - I - 0x02D7E9 0B:97D9: 55        .byte $55   ; 
- D 0 - I - 0x02D7EA 0B:97DA: AA        .byte $AA   ; 
- D 0 - I - 0x02D7EB 0B:97DB: 22        .byte $22   ; 
- D 0 - I - 0x02D7EC 0B:97DC: 0E        .byte $0E   ; 
- D 0 - I - 0x02D7ED 0B:97DD: 00        .byte $00   ; 
- D 0 - I - 0x02D7EE 0B:97DE: 10        .byte $10   ; 
- D 0 - I - 0x02D7EF 0B:97DF: FF        .byte $FF   ; 
- D 0 - I - 0x02D7F0 0B:97E0: 7F        .byte $7F   ; 
- D 0 - I - 0x02D7F1 0B:97E1: 00        .byte $00   ; 
- D 0 - I - 0x02D7F2 0B:97E2: 24        .byte $24   ; 
- D 0 - I - 0x02D7F3 0B:97E3: 7E        .byte $7E   ; 
- D 0 - I - 0x02D7F4 0B:97E4: 00        .byte $00   ; 
- D 0 - I - 0x02D7F5 0B:97E5: 43        .byte $43   ; 
- D 0 - I - 0x02D7F6 0B:97E6: 00        .byte $00   ; 
- D 0 - I - 0x02D7F7 0B:97E7: BE        .byte $BE   ; 
- D 0 - I - 0x02D7F8 0B:97E8: 39        .byte $39   ; 
- D 0 - I - 0x02D7F9 0B:97E9: 02        .byte $02   ; 
- D 0 - I - 0x02D7FA 0B:97EA: 00        .byte $00   ; 
- D 0 - I - 0x02D7FB 0B:97EB: 3B        .byte $3B   ; 
- D 0 - I - 0x02D7FC 0B:97EC: 3A        .byte $3A   ; 
- D 0 - I - 0x02D7FD 0B:97ED: 3C        .byte $3C   ; 
- D 0 - I - 0x02D7FE 0B:97EE: 00        .byte $00   ; 
- D 0 - I - 0x02D7FF 0B:97EF: 00        .byte $00   ; 
- D 0 - I - 0x02D800 0B:97F0: 39        .byte $39   ; 
- D 0 - I - 0x02D801 0B:97F1: 02        .byte $02   ; 
- D 0 - I - 0x02D802 0B:97F2: 00        .byte $00   ; 
- D 0 - I - 0x02D803 0B:97F3: 3B        .byte $3B   ; 
- D 0 - I - 0x02D804 0B:97F4: 3A        .byte $3A   ; 
- D 0 - I - 0x02D805 0B:97F5: 3C        .byte $3C   ; 
- D 0 - I - 0x02D806 0B:97F6: 00        .byte $00   ; 
- D 0 - I - 0x02D807 0B:97F7: 00        .byte $00   ; 
- D 0 - I - 0x02D808 0B:97F8: 39        .byte $39   ; 
- D 0 - I - 0x02D809 0B:97F9: 02        .byte $02   ; 
- D 0 - I - 0x02D80A 0B:97FA: 00        .byte $00   ; 
- D 0 - I - 0x02D80B 0B:97FB: 3B        .byte $3B   ; 
- D 0 - I - 0x02D80C 0B:97FC: 3A        .byte $3A   ; 
- D 0 - I - 0x02D80D 0B:97FD: 3C        .byte $3C   ; 
- D 0 - I - 0x02D80E 0B:97FE: 00        .byte $00   ; 
- D 0 - I - 0x02D80F 0B:97FF: 00        .byte $00   ; 
- D 0 - I - 0x02D810 0B:9800: 3A        .byte $3A   ; 
- D 0 - I - 0x02D811 0B:9801: 00        .byte $00   ; 
- D 0 - I - 0x02D812 0B:9802: 00        .byte $00   ; 
- D 0 - I - 0x02D813 0B:9803: 3B        .byte $3B   ; 
- D 0 - I - 0x02D814 0B:9804: 3A        .byte $3A   ; 
- D 0 - I - 0x02D815 0B:9805: 3C        .byte $3C   ; 
- D 0 - I - 0x02D816 0B:9806: 00        .byte $00   ; 
- D 0 - I - 0x02D817 0B:9807: 39        .byte $39   ; 
- D 0 - I - 0x02D818 0B:9808: 02        .byte $02   ; 
- D 0 - I - 0x02D819 0B:9809: 02        .byte $02   ; 
- D 0 - I - 0x02D81A 0B:980A: 00        .byte $00   ; 
- D 0 - I - 0x02D81B 0B:980B: 45        .byte $45   ; 
- D 0 - I - 0x02D81C 0B:980C: 44        .byte $44   ; 
- D 0 - I - 0x02D81D 0B:980D: 46        .byte $46   ; 
- D 0 - I - 0x02D81E 0B:980E: 00        .byte $00   ; 
- D 0 - I - 0x02D81F 0B:980F: 39        .byte $39   ; 
- D 0 - I - 0x02D820 0B:9810: 02        .byte $02   ; 
- D 0 - I - 0x02D821 0B:9811: 02        .byte $02   ; 
- D 0 - I - 0x02D822 0B:9812: 00        .byte $00   ; 
- D 0 - I - 0x02D823 0B:9813: 45        .byte $45   ; 
- D 0 - I - 0x02D824 0B:9814: 44        .byte $44   ; 
- D 0 - I - 0x02D825 0B:9815: 46        .byte $46   ; 
- D 0 - I - 0x02D826 0B:9816: 00        .byte $00   ; 
- D 0 - I - 0x02D827 0B:9817: 39        .byte $39   ; 
- D 0 - I - 0x02D828 0B:9818: 02        .byte $02   ; 
- D 0 - I - 0x02D829 0B:9819: 02        .byte $02   ; 
- D 0 - I - 0x02D82A 0B:981A: 00        .byte $00   ; 
- D 0 - I - 0x02D82B 0B:981B: 45        .byte $45   ; 
- D 0 - I - 0x02D82C 0B:981C: 44        .byte $44   ; 
- D 0 - I - 0x02D82D 0B:981D: 46        .byte $46   ; 
- D 0 - I - 0x02D82E 0B:981E: 00        .byte $00   ; 
- D 0 - I - 0x02D82F 0B:981F: 00        .byte $00   ; 
- D 0 - I - 0x02D830 0B:9820: 44        .byte $44   ; 
- D 0 - I - 0x02D831 0B:9821: 00        .byte $00   ; 
- D 0 - I - 0x02D832 0B:9822: 00        .byte $00   ; 
- D 0 - I - 0x02D833 0B:9823: 45        .byte $45   ; 
- D 0 - I - 0x02D834 0B:9824: 44        .byte $44   ; 
- D 0 - I - 0x02D835 0B:9825: 46        .byte $46   ; 
- D 0 - I - 0x02D836 0B:9826: 81        .byte $81   ; 
- D 0 - I - 0x02D837 0B:9827: 00        .byte $00   ; 
- D 0 - I - 0x02D838 0B:9828: 03        .byte $03   ; 
- D 0 - I - 0x02D839 0B:9829: 02        .byte $02   ; 
- D 0 - I - 0x02D83A 0B:982A: 82        .byte $82   ; 
- D 0 - I - 0x02D83B 0B:982B: 00        .byte $00   ; 
- D 0 - I - 0x02D83C 0B:982C: 40        .byte $40   ; 
- D 0 - I - 0x02D83D 0B:982D: C3        .byte $C3   ; 
- D 0 - I - 0x02D83E 0B:982E: 3D        .byte $3D   ; 
- D 0 - I - 0x02D83F 0B:982F: 03        .byte $03   ; 
- D 0 - I - 0x02D840 0B:9830: 02        .byte $02   ; 
- D 0 - I - 0x02D841 0B:9831: 82        .byte $82   ; 
- D 0 - I - 0x02D842 0B:9832: 00        .byte $00   ; 
- D 0 - I - 0x02D843 0B:9833: 40        .byte $40   ; 
- D 0 - I - 0x02D844 0B:9834: C3        .byte $C3   ; 
- D 0 - I - 0x02D845 0B:9835: 3D        .byte $3D   ; 
- D 0 - I - 0x02D846 0B:9836: 03        .byte $03   ; 
- D 0 - I - 0x02D847 0B:9837: 02        .byte $02   ; 
- D 0 - I - 0x02D848 0B:9838: 82        .byte $82   ; 
- D 0 - I - 0x02D849 0B:9839: 00        .byte $00   ; 
- D 0 - I - 0x02D84A 0B:983A: 40        .byte $40   ; 
- D 0 - I - 0x02D84B 0B:983B: C4        .byte $C4   ; 
- D 0 - I - 0x02D84C 0B:983C: 3D        .byte $3D   ; 
- D 0 - I - 0x02D84D 0B:983D: 84        .byte $84   ; 
- D 0 - I - 0x02D84E 0B:983E: 3D        .byte $3D   ; 
- D 0 - I - 0x02D84F 0B:983F: 3E        .byte $3E   ; 
- D 0 - I - 0x02D850 0B:9840: 3E        .byte $3E   ; 
- D 0 - I - 0x02D851 0B:9841: 40        .byte $40   ; 
- D 0 - I - 0x02D852 0B:9842: C3        .byte $C3   ; 
- D 0 - I - 0x02D853 0B:9843: 3D        .byte $3D   ; 
- D 0 - I - 0x02D854 0B:9844: 03        .byte $03   ; 
- D 0 - I - 0x02D855 0B:9845: 02        .byte $02   ; 
- D 0 - I - 0x02D856 0B:9846: 85        .byte $85   ; 
- D 0 - I - 0x02D857 0B:9847: 00        .byte $00   ; 
- D 0 - I - 0x02D858 0B:9848: 38        .byte $38   ; 
- D 0 - I - 0x02D859 0B:9849: 34        .byte $34   ; 
- D 0 - I - 0x02D85A 0B:984A: 35        .byte $35   ; 
- D 0 - I - 0x02D85B 0B:984B: 43        .byte $43   ; 
- D 0 - I - 0x02D85C 0B:984C: 03        .byte $03   ; 
- D 0 - I - 0x02D85D 0B:984D: 02        .byte $02   ; 
- D 0 - I - 0x02D85E 0B:984E: 85        .byte $85   ; 
- D 0 - I - 0x02D85F 0B:984F: 00        .byte $00   ; 
- D 0 - I - 0x02D860 0B:9850: 38        .byte $38   ; 
- D 0 - I - 0x02D861 0B:9851: 34        .byte $34   ; 
- D 0 - I - 0x02D862 0B:9852: 35        .byte $35   ; 
- D 0 - I - 0x02D863 0B:9853: 43        .byte $43   ; 
- D 0 - I - 0x02D864 0B:9854: 03        .byte $03   ; 
- D 0 - I - 0x02D865 0B:9855: 02        .byte $02   ; 
- D 0 - I - 0x02D866 0B:9856: 8D        .byte $8D   ; 
- D 0 - I - 0x02D867 0B:9857: 00        .byte $00   ; 
- D 0 - I - 0x02D868 0B:9858: 38        .byte $38   ; 
- D 0 - I - 0x02D869 0B:9859: 34        .byte $34   ; 
- D 0 - I - 0x02D86A 0B:985A: 35        .byte $35   ; 
- D 0 - I - 0x02D86B 0B:985B: 43        .byte $43   ; 
- D 0 - I - 0x02D86C 0B:985C: 38        .byte $38   ; 
- D 0 - I - 0x02D86D 0B:985D: 34        .byte $34   ; 
- D 0 - I - 0x02D86E 0B:985E: 42        .byte $42   ; 
- D 0 - I - 0x02D86F 0B:985F: 42        .byte $42   ; 
- D 0 - I - 0x02D870 0B:9860: 38        .byte $38   ; 
- D 0 - I - 0x02D871 0B:9861: 34        .byte $34   ; 
- D 0 - I - 0x02D872 0B:9862: 35        .byte $35   ; 
- D 0 - I - 0x02D873 0B:9863: 43        .byte $43   ; 
- D 0 - I - 0x02D874 0B:9864: 03        .byte $03   ; 
- D 0 - I - 0x02D875 0B:9865: 02        .byte $02   ; 
- D 0 - I - 0x02D876 0B:9866: 05        .byte $05   ; 
- D 0 - I - 0x02D877 0B:9867: 00        .byte $00   ; 
- D 0 - I - 0x02D878 0B:9868: 03        .byte $03   ; 
- D 0 - I - 0x02D879 0B:9869: 02        .byte $02   ; 
- D 0 - I - 0x02D87A 0B:986A: 05        .byte $05   ; 
- D 0 - I - 0x02D87B 0B:986B: 00        .byte $00   ; 
- D 0 - I - 0x02D87C 0B:986C: 03        .byte $03   ; 
- D 0 - I - 0x02D87D 0B:986D: 02        .byte $02   ; 
- D 0 - I - 0x02D87E 0B:986E: 0D        .byte $0D   ; 
- D 0 - I - 0x02D87F 0B:986F: 00        .byte $00   ; 
- D 0 - I - 0x02D880 0B:9870: 03        .byte $03   ; 
- D 0 - I - 0x02D881 0B:9871: 02        .byte $02   ; 
- D 0 - I - 0x02D882 0B:9872: 05        .byte $05   ; 
- D 0 - I - 0x02D883 0B:9873: 00        .byte $00   ; 
- D 0 - I - 0x02D884 0B:9874: 03        .byte $03   ; 
- D 0 - I - 0x02D885 0B:9875: 02        .byte $02   ; 
- D 0 - I - 0x02D886 0B:9876: 05        .byte $05   ; 
- D 0 - I - 0x02D887 0B:9877: 00        .byte $00   ; 
- D 0 - I - 0x02D888 0B:9878: 03        .byte $03   ; 
- D 0 - I - 0x02D889 0B:9879: 02        .byte $02   ; 
- D 0 - I - 0x02D88A 0B:987A: 07        .byte $07   ; 
- D 0 - I - 0x02D88B 0B:987B: 00        .byte $00   ; 
- D 0 - I - 0x02D88C 0B:987C: 81        .byte $81   ; 
- D 0 - I - 0x02D88D 0B:987D: 24        .byte $24   ; 
- D 0 - I - 0x02D88E 0B:987E: 05        .byte $05   ; 
- D 0 - I - 0x02D88F 0B:987F: 2A        .byte $2A   ; 
- D 0 - I - 0x02D890 0B:9880: 03        .byte $03   ; 
- D 0 - I - 0x02D891 0B:9881: 02        .byte $02   ; 
- D 0 - I - 0x02D892 0B:9882: 81        .byte $81   ; 
- D 0 - I - 0x02D893 0B:9883: 00        .byte $00   ; 
- D 0 - I - 0x02D894 0B:9884: 04        .byte $04   ; 
- D 0 - I - 0x02D895 0B:9885: 10        .byte $10   ; 
- D 0 - I - 0x02D896 0B:9886: 03        .byte $03   ; 
- D 0 - I - 0x02D897 0B:9887: 02        .byte $02   ; 
- D 0 - I - 0x02D898 0B:9888: 81        .byte $81   ; 
- D 0 - I - 0x02D899 0B:9889: 00        .byte $00   ; 
- D 0 - I - 0x02D89A 0B:988A: 04        .byte $04   ; 
- D 0 - I - 0x02D89B 0B:988B: 10        .byte $10   ; 
- D 0 - I - 0x02D89C 0B:988C: 03        .byte $03   ; 
- D 0 - I - 0x02D89D 0B:988D: 02        .byte $02   ; 
- D 0 - I - 0x02D89E 0B:988E: 81        .byte $81   ; 
- D 0 - I - 0x02D89F 0B:988F: 00        .byte $00   ; 
- D 0 - I - 0x02D8A0 0B:9890: 06        .byte $06   ; 
- D 0 - I - 0x02D8A1 0B:9891: 10        .byte $10   ; 
- D 0 - I - 0x02D8A2 0B:9892: 81        .byte $81   ; 
- D 0 - I - 0x02D8A3 0B:9893: 25        .byte $25   ; 
- D 0 - I - 0x02D8A4 0B:9894: C3        .byte $C3   ; 
- D 0 - I - 0x02D8A5 0B:9895: 31        .byte $31   ; 
- D 0 - I - 0x02D8A6 0B:9896: 82        .byte $82   ; 
- D 0 - I - 0x02D8A7 0B:9897: 30        .byte $30   ; 
- D 0 - I - 0x02D8A8 0B:9898: 30        .byte $30   ; 
- D 0 - I - 0x02D8A9 0B:9899: 03        .byte $03   ; 
- D 0 - I - 0x02D8AA 0B:989A: 02        .byte $02   ; 
- D 0 - I - 0x02D8AB 0B:989B: 81        .byte $81   ; 
- D 0 - I - 0x02D8AC 0B:989C: 00        .byte $00   ; 
- D 0 - I - 0x02D8AD 0B:989D: 04        .byte $04   ; 
- D 0 - I - 0x02D8AE 0B:989E: 30        .byte $30   ; 
- D 0 - I - 0x02D8AF 0B:989F: 03        .byte $03   ; 
- D 0 - I - 0x02D8B0 0B:98A0: 02        .byte $02   ; 
- D 0 - I - 0x02D8B1 0B:98A1: 81        .byte $81   ; 
- D 0 - I - 0x02D8B2 0B:98A2: 00        .byte $00   ; 
- D 0 - I - 0x02D8B3 0B:98A3: 04        .byte $04   ; 
- D 0 - I - 0x02D8B4 0B:98A4: 30        .byte $30   ; 
- D 0 - I - 0x02D8B5 0B:98A5: 03        .byte $03   ; 
- D 0 - I - 0x02D8B6 0B:98A6: 02        .byte $02   ; 
- D 0 - I - 0x02D8B7 0B:98A7: 81        .byte $81   ; 
- D 0 - I - 0x02D8B8 0B:98A8: 00        .byte $00   ; 
- D 0 - I - 0x02D8B9 0B:98A9: 06        .byte $06   ; 
- D 0 - I - 0x02D8BA 0B:98AA: 30        .byte $30   ; 
- D 0 - I - 0x02D8BB 0B:98AB: 81        .byte $81   ; 
- D 0 - I - 0x02D8BC 0B:98AC: 25        .byte $25   ; 
- D 0 - I - 0x02D8BD 0B:98AD: C3        .byte $C3   ; 
- D 0 - I - 0x02D8BE 0B:98AE: 2D        .byte $2D   ; 
- D 0 - I - 0x02D8BF 0B:98AF: 9D        .byte $9D   ; 
- D 0 - I - 0x02D8C0 0B:98B0: 1C        .byte $1C   ; 
- D 0 - I - 0x02D8C1 0B:98B1: 30        .byte $30   ; 
- D 0 - I - 0x02D8C2 0B:98B2: 03        .byte $03   ; 
- D 0 - I - 0x02D8C3 0B:98B3: 01        .byte $01   ; 
- D 0 - I - 0x02D8C4 0B:98B4: 02        .byte $02   ; 
- D 0 - I - 0x02D8C5 0B:98B5: 00        .byte $00   ; 
- D 0 - I - 0x02D8C6 0B:98B6: 30        .byte $30   ; 
- D 0 - I - 0x02D8C7 0B:98B7: 30        .byte $30   ; 
- D 0 - I - 0x02D8C8 0B:98B8: 11        .byte $11   ; 
- D 0 - I - 0x02D8C9 0B:98B9: 12        .byte $12   ; 
- D 0 - I - 0x02D8CA 0B:98BA: 03        .byte $03   ; 
- D 0 - I - 0x02D8CB 0B:98BB: 01        .byte $01   ; 
- D 0 - I - 0x02D8CC 0B:98BC: 02        .byte $02   ; 
- D 0 - I - 0x02D8CD 0B:98BD: 00        .byte $00   ; 
- D 0 - I - 0x02D8CE 0B:98BE: 30        .byte $30   ; 
- D 0 - I - 0x02D8CF 0B:98BF: 30        .byte $30   ; 
- D 0 - I - 0x02D8D0 0B:98C0: 11        .byte $11   ; 
- D 0 - I - 0x02D8D1 0B:98C1: 12        .byte $12   ; 
- D 0 - I - 0x02D8D2 0B:98C2: 03        .byte $03   ; 
- D 0 - I - 0x02D8D3 0B:98C3: 01        .byte $01   ; 
- D 0 - I - 0x02D8D4 0B:98C4: 02        .byte $02   ; 
- D 0 - I - 0x02D8D5 0B:98C5: 00        .byte $00   ; 
- D 0 - I - 0x02D8D6 0B:98C6: 30        .byte $30   ; 
- D 0 - I - 0x02D8D7 0B:98C7: 30        .byte $30   ; 
- D 0 - I - 0x02D8D8 0B:98C8: 11        .byte $11   ; 
- D 0 - I - 0x02D8D9 0B:98C9: 12        .byte $12   ; 
- D 0 - I - 0x02D8DA 0B:98CA: 30        .byte $30   ; 
- D 0 - I - 0x02D8DB 0B:98CB: 30        .byte $30   ; 
- D 0 - I - 0x02D8DC 0B:98CC: 25        .byte $25   ; 
- D 0 - I - 0x02D8DD 0B:98CD: C4        .byte $C4   ; 
- D 0 - I - 0x02D8DE 0B:98CE: 1D        .byte $1D   ; 
- D 0 - I - 0x02D8DF 0B:98CF: 97        .byte $97   ; 
- D 0 - I - 0x02D8E0 0B:98D0: 30        .byte $30   ; 
- D 0 - I - 0x02D8E1 0B:98D1: 04        .byte $04   ; 
- D 0 - I - 0x02D8E2 0B:98D2: 04        .byte $04   ; 
- D 0 - I - 0x02D8E3 0B:98D3: 03        .byte $03   ; 
- D 0 - I - 0x02D8E4 0B:98D4: 09        .byte $09   ; 
- D 0 - I - 0x02D8E5 0B:98D5: 15        .byte $15   ; 
- D 0 - I - 0x02D8E6 0B:98D6: 16        .byte $16   ; 
- D 0 - I - 0x02D8E7 0B:98D7: 13        .byte $13   ; 
- D 0 - I - 0x02D8E8 0B:98D8: 14        .byte $14   ; 
- D 0 - I - 0x02D8E9 0B:98D9: 04        .byte $04   ; 
- D 0 - I - 0x02D8EA 0B:98DA: 04        .byte $04   ; 
- D 0 - I - 0x02D8EB 0B:98DB: 03        .byte $03   ; 
- D 0 - I - 0x02D8EC 0B:98DC: 09        .byte $09   ; 
- D 0 - I - 0x02D8ED 0B:98DD: 15        .byte $15   ; 
- D 0 - I - 0x02D8EE 0B:98DE: 16        .byte $16   ; 
- D 0 - I - 0x02D8EF 0B:98DF: 13        .byte $13   ; 
- D 0 - I - 0x02D8F0 0B:98E0: 14        .byte $14   ; 
- D 0 - I - 0x02D8F1 0B:98E1: 04        .byte $04   ; 
- D 0 - I - 0x02D8F2 0B:98E2: 04        .byte $04   ; 
- D 0 - I - 0x02D8F3 0B:98E3: 03        .byte $03   ; 
- D 0 - I - 0x02D8F4 0B:98E4: 09        .byte $09   ; 
- D 0 - I - 0x02D8F5 0B:98E5: 15        .byte $15   ; 
- D 0 - I - 0x02D8F6 0B:98E6: 16        .byte $16   ; 
- D 0 - I - 0x02D8F7 0B:98E7: C4        .byte $C4   ; 
- D 0 - I - 0x02D8F8 0B:98E8: 13        .byte $13   ; 
- D 0 - I - 0x02D8F9 0B:98E9: 81        .byte $81   ; 
- D 0 - I - 0x02D8FA 0B:98EA: 25        .byte $25   ; 
- D 0 - I - 0x02D8FB 0B:98EB: C3        .byte $C3   ; 
- D 0 - I - 0x02D8FC 0B:98EC: 21        .byte $21   ; 
- D 0 - I - 0x02D8FD 0B:98ED: 82        .byte $82   ; 
- D 0 - I - 0x02D8FE 0B:98EE: 20        .byte $20   ; 
- D 0 - I - 0x02D8FF 0B:98EF: 30        .byte $30   ; 
- D 0 - I - 0x02D900 0B:98F0: 03        .byte $03   ; 
- D 0 - I - 0x02D901 0B:98F1: 04        .byte $04   ; 
- D 0 - I - 0x02D902 0B:98F2: 81        .byte $81   ; 
- D 0 - I - 0x02D903 0B:98F3: 0A        .byte $0A   ; 
- D 0 - I - 0x02D904 0B:98F4: 04        .byte $04   ; 
- D 0 - I - 0x02D905 0B:98F5: 00        .byte $00   ; 
- D 0 - I - 0x02D906 0B:98F6: 03        .byte $03   ; 
- D 0 - I - 0x02D907 0B:98F7: 04        .byte $04   ; 
- D 0 - I - 0x02D908 0B:98F8: 81        .byte $81   ; 
- D 0 - I - 0x02D909 0B:98F9: 0A        .byte $0A   ; 
- D 0 - I - 0x02D90A 0B:98FA: 04        .byte $04   ; 
- D 0 - I - 0x02D90B 0B:98FB: 00        .byte $00   ; 
- D 0 - I - 0x02D90C 0B:98FC: 03        .byte $03   ; 
- D 0 - I - 0x02D90D 0B:98FD: 04        .byte $04   ; 
- D 0 - I - 0x02D90E 0B:98FE: 81        .byte $81   ; 
- D 0 - I - 0x02D90F 0B:98FF: 0A        .byte $0A   ; 
- D 0 - I - 0x02D910 0B:9900: 06        .byte $06   ; 
- D 0 - I - 0x02D911 0B:9901: 00        .byte $00   ; 
- D 0 - I - 0x02D912 0B:9902: C5        .byte $C5   ; 
- D 0 - I - 0x02D913 0B:9903: 25        .byte $25   ; 
- D 0 - I - 0x02D914 0B:9904: 81        .byte $81   ; 
- D 0 - I - 0x02D915 0B:9905: 30        .byte $30   ; 
- D 0 - I - 0x02D916 0B:9906: 03        .byte $03   ; 
- D 0 - I - 0x02D917 0B:9907: 04        .byte $04   ; 
- D 0 - I - 0x02D918 0B:9908: 82        .byte $82   ; 
- D 0 - I - 0x02D919 0B:9909: 0A        .byte $0A   ; 
- D 0 - I - 0x02D91A 0B:990A: 17        .byte $17   ; 
- D 0 - I - 0x02D91B 0B:990B: 03        .byte $03   ; 
- D 0 - I - 0x02D91C 0B:990C: 00        .byte $00   ; 
- D 0 - I - 0x02D91D 0B:990D: 03        .byte $03   ; 
- D 0 - I - 0x02D91E 0B:990E: 04        .byte $04   ; 
- D 0 - I - 0x02D91F 0B:990F: 82        .byte $82   ; 
- D 0 - I - 0x02D920 0B:9910: 0A        .byte $0A   ; 
- D 0 - I - 0x02D921 0B:9911: 17        .byte $17   ; 
- D 0 - I - 0x02D922 0B:9912: 03        .byte $03   ; 
- D 0 - I - 0x02D923 0B:9913: 00        .byte $00   ; 
- D 0 - I - 0x02D924 0B:9914: 03        .byte $03   ; 
- D 0 - I - 0x02D925 0B:9915: 04        .byte $04   ; 
- D 0 - I - 0x02D926 0B:9916: 82        .byte $82   ; 
- D 0 - I - 0x02D927 0B:9917: 0A        .byte $0A   ; 
- D 0 - I - 0x02D928 0B:9918: 17        .byte $17   ; 
- D 0 - I - 0x02D929 0B:9919: 03        .byte $03   ; 
- D 0 - I - 0x02D92A 0B:991A: 00        .byte $00   ; 
- D 0 - I - 0x02D92B 0B:991B: 83        .byte $83   ; 
- D 0 - I - 0x02D92C 0B:991C: 17        .byte $17   ; 
- D 0 - I - 0x02D92D 0B:991D: 00        .byte $00   ; 
- D 0 - I - 0x02D92E 0B:991E: 25        .byte $25   ; 
- D 0 - I - 0x02D92F 0B:991F: 05        .byte $05   ; 
- D 0 - I - 0x02D930 0B:9920: 30        .byte $30   ; 
- D 0 - I - 0x02D931 0B:9921: 03        .byte $03   ; 
- D 0 - I - 0x02D932 0B:9922: 04        .byte $04   ; 
- D 0 - I - 0x02D933 0B:9923: 85        .byte $85   ; 
- D 0 - I - 0x02D934 0B:9924: 0A        .byte $0A   ; 
- D 0 - I - 0x02D935 0B:9925: 19        .byte $19   ; 
- D 0 - I - 0x02D936 0B:9926: 1A        .byte $1A   ; 
- D 0 - I - 0x02D937 0B:9927: 18        .byte $18   ; 
- D 0 - I - 0x02D938 0B:9928: 18        .byte $18   ; 
- D 0 - I - 0x02D939 0B:9929: 03        .byte $03   ; 
- D 0 - I - 0x02D93A 0B:992A: 04        .byte $04   ; 
- D 0 - I - 0x02D93B 0B:992B: 85        .byte $85   ; 
- D 0 - I - 0x02D93C 0B:992C: 0A        .byte $0A   ; 
- D 0 - I - 0x02D93D 0B:992D: 19        .byte $19   ; 
- D 0 - I - 0x02D93E 0B:992E: 1A        .byte $1A   ; 
- D 0 - I - 0x02D93F 0B:992F: 18        .byte $18   ; 
- D 0 - I - 0x02D940 0B:9930: 18        .byte $18   ; 
- D 0 - I - 0x02D941 0B:9931: 03        .byte $03   ; 
- D 0 - I - 0x02D942 0B:9932: 04        .byte $04   ; 
- D 0 - I - 0x02D943 0B:9933: 84        .byte $84   ; 
- D 0 - I - 0x02D944 0B:9934: 0A        .byte $0A   ; 
- D 0 - I - 0x02D945 0B:9935: 19        .byte $19   ; 
- D 0 - I - 0x02D946 0B:9936: 1A        .byte $1A   ; 
- D 0 - I - 0x02D947 0B:9937: 18        .byte $18   ; 
- D 0 - I - 0x02D948 0B:9938: C3        .byte $C3   ; 
- D 0 - I - 0x02D949 0B:9939: 18        .byte $18   ; 
- D 0 - I - 0x02D94A 0B:993A: 81        .byte $81   ; 
- D 0 - I - 0x02D94B 0B:993B: 25        .byte $25   ; 
- D 0 - I - 0x02D94C 0B:993C: 05        .byte $05   ; 
- D 0 - I - 0x02D94D 0B:993D: 30        .byte $30   ; 
- D 0 - I - 0x02D94E 0B:993E: 03        .byte $03   ; 
- D 0 - I - 0x02D94F 0B:993F: 04        .byte $04   ; 
- D 0 - I - 0x02D950 0B:9940: 82        .byte $82   ; 
- D 0 - I - 0x02D951 0B:9941: 0A        .byte $0A   ; 
- D 0 - I - 0x02D952 0B:9942: 1B        .byte $1B   ; 
- D 0 - I - 0x02D953 0B:9943: 03        .byte $03   ; 
- D 0 - I - 0x02D954 0B:9944: 00        .byte $00   ; 
- D 0 - I - 0x02D955 0B:9945: 03        .byte $03   ; 
- D 0 - I - 0x02D956 0B:9946: 04        .byte $04   ; 
- D 0 - I - 0x02D957 0B:9947: 82        .byte $82   ; 
- D 0 - I - 0x02D958 0B:9948: 0A        .byte $0A   ; 
- D 0 - I - 0x02D959 0B:9949: 1B        .byte $1B   ; 
- D 0 - I - 0x02D95A 0B:994A: 03        .byte $03   ; 
- D 0 - I - 0x02D95B 0B:994B: 00        .byte $00   ; 
- D 0 - I - 0x02D95C 0B:994C: 03        .byte $03   ; 
- D 0 - I - 0x02D95D 0B:994D: 04        .byte $04   ; 
- D 0 - I - 0x02D95E 0B:994E: 82        .byte $82   ; 
- D 0 - I - 0x02D95F 0B:994F: 0A        .byte $0A   ; 
- D 0 - I - 0x02D960 0B:9950: 1B        .byte $1B   ; 
- D 0 - I - 0x02D961 0B:9951: 03        .byte $03   ; 
- D 0 - I - 0x02D962 0B:9952: 00        .byte $00   ; 
- D 0 - I - 0x02D963 0B:9953: 83        .byte $83   ; 
- D 0 - I - 0x02D964 0B:9954: 1B        .byte $1B   ; 
- D 0 - I - 0x02D965 0B:9955: 00        .byte $00   ; 
- D 0 - I - 0x02D966 0B:9956: 25        .byte $25   ; 
- D 0 - I - 0x02D967 0B:9957: 05        .byte $05   ; 
- D 0 - I - 0x02D968 0B:9958: 30        .byte $30   ; 
- D 0 - I - 0x02D969 0B:9959: 84        .byte $84   ; 
- D 0 - I - 0x02D96A 0B:995A: 07        .byte $07   ; 
- D 0 - I - 0x02D96B 0B:995B: 04        .byte $04   ; 
- D 0 - I - 0x02D96C 0B:995C: 04        .byte $04   ; 
- D 0 - I - 0x02D96D 0B:995D: 0A        .byte $0A   ; 
- D 0 - I - 0x02D96E 0B:995E: 04        .byte $04   ; 
- D 0 - I - 0x02D96F 0B:995F: 05        .byte $05   ; 
- D 0 - I - 0x02D970 0B:9960: 84        .byte $84   ; 
- D 0 - I - 0x02D971 0B:9961: 07        .byte $07   ; 
- D 0 - I - 0x02D972 0B:9962: 04        .byte $04   ; 
- D 0 - I - 0x02D973 0B:9963: 04        .byte $04   ; 
- D 0 - I - 0x02D974 0B:9964: 0A        .byte $0A   ; 
- D 0 - I - 0x02D975 0B:9965: 04        .byte $04   ; 
- D 0 - I - 0x02D976 0B:9966: 05        .byte $05   ; 
- D 0 - I - 0x02D977 0B:9967: 84        .byte $84   ; 
- D 0 - I - 0x02D978 0B:9968: 07        .byte $07   ; 
- D 0 - I - 0x02D979 0B:9969: 04        .byte $04   ; 
- D 0 - I - 0x02D97A 0B:996A: 04        .byte $04   ; 
- D 0 - I - 0x02D97B 0B:996B: 0A        .byte $0A   ; 
- D 0 - I - 0x02D97C 0B:996C: 0D        .byte $0D   ; 
- D 0 - I - 0x02D97D 0B:996D: 05        .byte $05   ; 
- D 0 - I - 0x02D97E 0B:996E: 83        .byte $83   ; 
- D 0 - I - 0x02D97F 0B:996F: 07        .byte $07   ; 
- D 0 - I - 0x02D980 0B:9970: 04        .byte $04   ; 
- D 0 - I - 0x02D981 0B:9971: 0A        .byte $0A   ; 
- D 0 - I - 0x02D982 0B:9972: 05        .byte $05   ; 
- D 0 - I - 0x02D983 0B:9973: 05        .byte $05   ; 
- D 0 - I - 0x02D984 0B:9974: 83        .byte $83   ; 
- D 0 - I - 0x02D985 0B:9975: 07        .byte $07   ; 
- D 0 - I - 0x02D986 0B:9976: 04        .byte $04   ; 
- D 0 - I - 0x02D987 0B:9977: 0A        .byte $0A   ; 
- D 0 - I - 0x02D988 0B:9978: 05        .byte $05   ; 
- D 0 - I - 0x02D989 0B:9979: 05        .byte $05   ; 
- D 0 - I - 0x02D98A 0B:997A: 83        .byte $83   ; 
- D 0 - I - 0x02D98B 0B:997B: 07        .byte $07   ; 
- D 0 - I - 0x02D98C 0B:997C: 04        .byte $04   ; 
- D 0 - I - 0x02D98D 0B:997D: 0A        .byte $0A   ; 
- D 0 - I - 0x02D98E 0B:997E: 0C        .byte $0C   ; 
- D 0 - I - 0x02D98F 0B:997F: 05        .byte $05   ; 
- D 0 - I - 0x02D990 0B:9980: 84        .byte $84   ; 
- D 0 - I - 0x02D991 0B:9981: 06        .byte $06   ; 
- D 0 - I - 0x02D992 0B:9982: 06        .byte $06   ; 
- D 0 - I - 0x02D993 0B:9983: 08        .byte $08   ; 
- D 0 - I - 0x02D994 0B:9984: 0A        .byte $0A   ; 
- D 0 - I - 0x02D995 0B:9985: 06        .byte $06   ; 
- D 0 - I - 0x02D996 0B:9986: 06        .byte $06   ; 
- D 0 - I - 0x02D997 0B:9987: 82        .byte $82   ; 
- D 0 - I - 0x02D998 0B:9988: 08        .byte $08   ; 
- D 0 - I - 0x02D999 0B:9989: 0A        .byte $0A   ; 
- D 0 - I - 0x02D99A 0B:998A: 06        .byte $06   ; 
- D 0 - I - 0x02D99B 0B:998B: 06        .byte $06   ; 
- D 0 - I - 0x02D99C 0B:998C: 82        .byte $82   ; 
- D 0 - I - 0x02D99D 0B:998D: 08        .byte $08   ; 
- D 0 - I - 0x02D99E 0B:998E: 0A        .byte $0A   ; 
- D 0 - I - 0x02D99F 0B:998F: 0C        .byte $0C   ; 
- D 0 - I - 0x02D9A0 0B:9990: 06        .byte $06   ; 
- D 0 - I - 0x02D9A1 0B:9991: 20        .byte $20   ; 
- D 0 - I - 0x02D9A2 0B:9992: 0B        .byte $0B   ; 
- D 0 - I - 0x02D9A3 0B:9993: 7E        .byte $7E   ; 
- D 0 - I - 0x02D9A4 0B:9994: 00        .byte $00   ; 
- D 0 - I - 0x02D9A5 0B:9995: 42        .byte $42   ; 
- D 0 - I - 0x02D9A6 0B:9996: 00        .byte $00   ; 
- D 0 - I - 0x02D9A7 0B:9997: 08        .byte $08   ; 
- D 0 - I - 0x02D9A8 0B:9998: FF        .byte $FF   ; 
- D 0 - I - 0x02D9A9 0B:9999: 08        .byte $08   ; 
- D 0 - I - 0x02D9AA 0B:999A: 0F        .byte $0F   ; 
- D 0 - I - 0x02D9AB 0B:999B: 06        .byte $06   ; 
- D 0 - I - 0x02D9AC 0B:999C: 00        .byte $00   ; 
- D 0 - I - 0x02D9AD 0B:999D: 8A        .byte $8A   ; 
- D 0 - I - 0x02D9AE 0B:999E: 80        .byte $80   ; 
- D 0 - I - 0x02D9AF 0B:999F: A0        .byte $A0   ; 
- D 0 - I - 0x02D9B0 0B:99A0: 00        .byte $00   ; 
- D 0 - I - 0x02D9B1 0B:99A1: 55        .byte $55   ; 
- D 0 - I - 0x02D9B2 0B:99A2: 00        .byte $00   ; 
- D 0 - I - 0x02D9B3 0B:99A3: 55        .byte $55   ; 
- D 0 - I - 0x02D9B4 0B:99A4: 00        .byte $00   ; 
- D 0 - I - 0x02D9B5 0B:99A5: 55        .byte $55   ; 
- D 0 - I - 0x02D9B6 0B:99A6: 99        .byte $99   ; 
- D 0 - I - 0x02D9B7 0B:99A7: AA        .byte $AA   ; 
- D 0 - I - 0x02D9B8 0B:99A8: 06        .byte $06   ; 
- D 0 - I - 0x02D9B9 0B:99A9: 00        .byte $00   ; 
- D 0 - I - 0x02D9BA 0B:99AA: 82        .byte $82   ; 
- D 0 - I - 0x02D9BB 0B:99AB: 88        .byte $88   ; 
- D 0 - I - 0x02D9BC 0B:99AC: AA        .byte $AA   ; 
- D 0 - I - 0x02D9BD 0B:99AD: 08        .byte $08   ; 
- D 0 - I - 0x02D9BE 0B:99AE: 00        .byte $00   ; 
- D 0 - I - 0x02D9BF 0B:99AF: 10        .byte $10   ; 
- D 0 - I - 0x02D9C0 0B:99B0: FF        .byte $FF   ; 
- D 0 - I - 0x02D9C1 0B:99B1: FF        .byte $FF   ; 



.export _off003_0x02D9C2_10
_off003_0x02D9C2_10:
- D 0 - I - 0x02D9C2 0B:99B2: 00        .byte $00   ; 
- D 0 - I - 0x02D9C3 0B:99B3: 20        .byte $20   ; 
- D 0 - I - 0x02D9C4 0B:99B4: 20        .byte $20   ; 
- D 0 - I - 0x02D9C5 0B:99B5: 00        .byte $00   ; 
- D 0 - I - 0x02D9C6 0B:99B6: 20        .byte $20   ; 
- D 0 - I - 0x02D9C7 0B:99B7: 26        .byte $26   ; 
- D 0 - I - 0x02D9C8 0B:99B8: 22        .byte $22   ; 
- D 0 - I - 0x02D9C9 0B:99B9: 00        .byte $00   ; 
- D 0 - I - 0x02D9CA 0B:99BA: 81        .byte $81   ; 
- D 0 - I - 0x02D9CB 0B:99BB: 02        .byte $02   ; 
- D 0 - I - 0x02D9CC 0B:99BC: 08        .byte $08   ; 
- D 0 - I - 0x02D9CD 0B:99BD: 03        .byte $03   ; 
- D 0 - I - 0x02D9CE 0B:99BE: 81        .byte $81   ; 
- D 0 - I - 0x02D9CF 0B:99BF: 04        .byte $04   ; 
- D 0 - I - 0x02D9D0 0B:99C0: 07        .byte $07   ; 
- D 0 - I - 0x02D9D1 0B:99C1: 00        .byte $00   ; 
- D 0 - I - 0x02D9D2 0B:99C2: 81        .byte $81   ; 
- D 0 - I - 0x02D9D3 0B:99C3: 1E        .byte $1E   ; 
- D 0 - I - 0x02D9D4 0B:99C4: 09        .byte $09   ; 
- D 0 - I - 0x02D9D5 0B:99C5: 1F        .byte $1F   ; 
- D 0 - I - 0x02D9D6 0B:99C6: 81        .byte $81   ; 
- D 0 - I - 0x02D9D7 0B:99C7: 20        .byte $20   ; 
- D 0 - I - 0x02D9D8 0B:99C8: 04        .byte $04   ; 
- D 0 - I - 0x02D9D9 0B:99C9: 00        .byte $00   ; 
- D 0 - I - 0x02D9DA 0B:99CA: 8A        .byte $8A   ; 
- D 0 - I - 0x02D9DB 0B:99CB: 05        .byte $05   ; 
- D 0 - I - 0x02D9DC 0B:99CC: 82        .byte $82   ; 
- D 0 - I - 0x02D9DD 0B:99CD: 01        .byte $01   ; 
- D 0 - I - 0x02D9DE 0B:99CE: 9A        .byte $9A   ; 
- D 0 - I - 0x02D9DF 0B:99CF: 96        .byte $96   ; 
- D 0 - I - 0x02D9E0 0B:99D0: 8B        .byte $8B   ; 
- D 0 - I - 0x02D9E1 0B:99D1: A3        .byte $A3   ; 
- D 0 - I - 0x02D9E2 0B:99D2: 8F        .byte $8F   ; 
- D 0 - I - 0x02D9E3 0B:99D3: 9C        .byte $9C   ; 
- D 0 - I - 0x02D9E4 0B:99D4: 06        .byte $06   ; 
- D 0 - I - 0x02D9E5 0B:99D5: 07        .byte $07   ; 
- D 0 - I - 0x02D9E6 0B:99D6: 00        .byte $00   ; 
- D 0 - I - 0x02D9E7 0B:99D7: 81        .byte $81   ; 
- D 0 - I - 0x02D9E8 0B:99D8: 21        .byte $21   ; 
- D 0 - I - 0x02D9E9 0B:99D9: 09        .byte $09   ; 
- D 0 - I - 0x02D9EA 0B:99DA: 01        .byte $01   ; 
- D 0 - I - 0x02D9EB 0B:99DB: 81        .byte $81   ; 
- D 0 - I - 0x02D9EC 0B:99DC: 22        .byte $22   ; 
- D 0 - I - 0x02D9ED 0B:99DD: 04        .byte $04   ; 
- D 0 - I - 0x02D9EE 0B:99DE: 00        .byte $00   ; 
- D 0 - I - 0x02D9EF 0B:99DF: 81        .byte $81   ; 
- D 0 - I - 0x02D9F0 0B:99E0: 07        .byte $07   ; 
- D 0 - I - 0x02D9F1 0B:99E1: 08        .byte $08   ; 
- D 0 - I - 0x02D9F2 0B:99E2: 08        .byte $08   ; 
- D 0 - I - 0x02D9F3 0B:99E3: 81        .byte $81   ; 
- D 0 - I - 0x02D9F4 0B:99E4: 09        .byte $09   ; 
- D 0 - I - 0x02D9F5 0B:99E5: 07        .byte $07   ; 
- D 0 - I - 0x02D9F6 0B:99E6: 00        .byte $00   ; 
- D 0 - I - 0x02D9F7 0B:99E7: 81        .byte $81   ; 
- D 0 - I - 0x02D9F8 0B:99E8: 21        .byte $21   ; 
- D 0 - I - 0x02D9F9 0B:99E9: 09        .byte $09   ; 
- D 0 - I - 0x02D9FA 0B:99EA: 01        .byte $01   ; 
- D 0 - I - 0x02D9FB 0B:99EB: 81        .byte $81   ; 
- D 0 - I - 0x02D9FC 0B:99EC: 22        .byte $22   ; 
- D 0 - I - 0x02D9FD 0B:99ED: 15        .byte $15   ; 
- D 0 - I - 0x02D9FE 0B:99EE: 00        .byte $00   ; 
- D 0 - I - 0x02D9FF 0B:99EF: 81        .byte $81   ; 
- D 0 - I - 0x02DA00 0B:99F0: 21        .byte $21   ; 
- D 0 - I - 0x02DA01 0B:99F1: 09        .byte $09   ; 
- D 0 - I - 0x02DA02 0B:99F2: 01        .byte $01   ; 
- D 0 - I - 0x02DA03 0B:99F3: 81        .byte $81   ; 
- D 0 - I - 0x02DA04 0B:99F4: 22        .byte $22   ; 
- D 0 - I - 0x02DA05 0B:99F5: 03        .byte $03   ; 
- D 0 - I - 0x02DA06 0B:99F6: 00        .byte $00   ; 
- D 0 - I - 0x02DA07 0B:99F7: 81        .byte $81   ; 
- D 0 - I - 0x02DA08 0B:99F8: 0A        .byte $0A   ; 
- D 0 - I - 0x02DA09 0B:99F9: 11        .byte $11   ; 
- D 0 - I - 0x02DA0A 0B:99FA: 0B        .byte $0B   ; 
- D 0 - I - 0x02DA0B 0B:99FB: 81        .byte $81   ; 
- D 0 - I - 0x02DA0C 0B:99FC: 23        .byte $23   ; 
- D 0 - I - 0x02DA0D 0B:99FD: 09        .byte $09   ; 
- D 0 - I - 0x02DA0E 0B:99FE: 01        .byte $01   ; 
- D 0 - I - 0x02DA0F 0B:99FF: 85        .byte $85   ; 
- D 0 - I - 0x02DA10 0B:9A00: 24        .byte $24   ; 
- D 0 - I - 0x02DA11 0B:9A01: 0B        .byte $0B   ; 
- D 0 - I - 0x02DA12 0B:9A02: 0B        .byte $0B   ; 
- D 0 - I - 0x02DA13 0B:9A03: 00        .byte $00   ; 
- D 0 - I - 0x02DA14 0B:9A04: 0C        .byte $0C   ; 
- D 0 - I - 0x02DA15 0B:9A05: 11        .byte $11   ; 
- D 0 - I - 0x02DA16 0B:9A06: 00        .byte $00   ; 
- D 0 - I - 0x02DA17 0B:9A07: 81        .byte $81   ; 
- D 0 - I - 0x02DA18 0B:9A08: 25        .byte $25   ; 
- D 0 - I - 0x02DA19 0B:9A09: 09        .byte $09   ; 
- D 0 - I - 0x02DA1A 0B:9A0A: 01        .byte $01   ; 
- D 0 - I - 0x02DA1B 0B:9A0B: 81        .byte $81   ; 
- D 0 - I - 0x02DA1C 0B:9A0C: 28        .byte $28   ; 
- D 0 - I - 0x02DA1D 0B:9A0D: 03        .byte $03   ; 
- D 0 - I - 0x02DA1E 0B:9A0E: 00        .byte $00   ; 
- D 0 - I - 0x02DA1F 0B:9A0F: 83        .byte $83   ; 
- D 0 - I - 0x02DA20 0B:9A10: 0C        .byte $0C   ; 
- D 0 - I - 0x02DA21 0B:9A11: 00        .byte $00   ; 
- D 0 - I - 0x02DA22 0B:9A12: 00        .byte $00   ; 
- D 0 - I - 0x02DA23 0B:9A13: C3        .byte $C3   ; 
- D 0 - I - 0x02DA24 0B:9A14: 0D        .byte $0D   ; 
- D 0 - I - 0x02DA25 0B:9A15: 89        .byte $89   ; 
- D 0 - I - 0x02DA26 0B:9A16: 00        .byte $00   ; 
- D 0 - I - 0x02DA27 0B:9A17: 00        .byte $00   ; 
- D 0 - I - 0x02DA28 0B:9A18: 11        .byte $11   ; 
- D 0 - I - 0x02DA29 0B:9A19: 00        .byte $00   ; 
- D 0 - I - 0x02DA2A 0B:9A1A: 12        .byte $12   ; 
- D 0 - I - 0x02DA2B 0B:9A1B: 00        .byte $00   ; 
- D 0 - I - 0x02DA2C 0B:9A1C: 13        .byte $13   ; 
- D 0 - I - 0x02DA2D 0B:9A1D: 14        .byte $14   ; 
- D 0 - I - 0x02DA2E 0B:9A1E: 10        .byte $10   ; 
- D 0 - I - 0x02DA2F 0B:9A1F: 03        .byte $03   ; 
- D 0 - I - 0x02DA30 0B:9A20: 00        .byte $00   ; 
- D 0 - I - 0x02DA31 0B:9A21: 81        .byte $81   ; 
- D 0 - I - 0x02DA32 0B:9A22: 25        .byte $25   ; 
- D 0 - I - 0x02DA33 0B:9A23: 09        .byte $09   ; 
- D 0 - I - 0x02DA34 0B:9A24: 01        .byte $01   ; 
- D 0 - I - 0x02DA35 0B:9A25: 81        .byte $81   ; 
- D 0 - I - 0x02DA36 0B:9A26: 28        .byte $28   ; 
- D 0 - I - 0x02DA37 0B:9A27: 03        .byte $03   ; 
- D 0 - I - 0x02DA38 0B:9A28: 00        .byte $00   ; 
- D 0 - I - 0x02DA39 0B:9A29: 81        .byte $81   ; 
- D 0 - I - 0x02DA3A 0B:9A2A: 15        .byte $15   ; 
- D 0 - I - 0x02DA3B 0B:9A2B: 11        .byte $11   ; 
- D 0 - I - 0x02DA3C 0B:9A2C: 26        .byte $26   ; 
- D 0 - I - 0x02DA3D 0B:9A2D: 81        .byte $81   ; 
- D 0 - I - 0x02DA3E 0B:9A2E: 29        .byte $29   ; 
- D 0 - I - 0x02DA3F 0B:9A2F: 09        .byte $09   ; 
- D 0 - I - 0x02DA40 0B:9A30: 01        .byte $01   ; 
- D 0 - I - 0x02DA41 0B:9A31: 83        .byte $83   ; 
- D 0 - I - 0x02DA42 0B:9A32: 2A        .byte $2A   ; 
- D 0 - I - 0x02DA43 0B:9A33: 26        .byte $26   ; 
- D 0 - I - 0x02DA44 0B:9A34: 26        .byte $26   ; 
- D 0 - I - 0x02DA45 0B:9A35: 13        .byte $13   ; 
- D 0 - I - 0x02DA46 0B:9A36: 00        .byte $00   ; 
- D 0 - I - 0x02DA47 0B:9A37: 81        .byte $81   ; 
- D 0 - I - 0x02DA48 0B:9A38: 21        .byte $21   ; 
- D 0 - I - 0x02DA49 0B:9A39: 09        .byte $09   ; 
- D 0 - I - 0x02DA4A 0B:9A3A: 01        .byte $01   ; 
- D 0 - I - 0x02DA4B 0B:9A3B: 81        .byte $81   ; 
- D 0 - I - 0x02DA4C 0B:9A3C: 22        .byte $22   ; 
- D 0 - I - 0x02DA4D 0B:9A3D: 07        .byte $07   ; 
- D 0 - I - 0x02DA4E 0B:9A3E: 00        .byte $00   ; 
- D 0 - I - 0x02DA4F 0B:9A3F: 81        .byte $81   ; 
- D 0 - I - 0x02DA50 0B:9A40: 16        .byte $16   ; 
- D 0 - I - 0x02DA51 0B:9A41: 06        .byte $06   ; 
- D 0 - I - 0x02DA52 0B:9A42: 17        .byte $17   ; 
- D 0 - I - 0x02DA53 0B:9A43: 81        .byte $81   ; 
- D 0 - I - 0x02DA54 0B:9A44: 18        .byte $18   ; 
- D 0 - I - 0x02DA55 0B:9A45: 03        .byte $03   ; 
- D 0 - I - 0x02DA56 0B:9A46: 00        .byte $00   ; 
- D 0 - I - 0x02DA57 0B:9A47: 84        .byte $84   ; 
- D 0 - I - 0x02DA58 0B:9A48: 71        .byte $71   ; 
- D 0 - I - 0x02DA59 0B:9A49: 71        .byte $71   ; 
- D 0 - I - 0x02DA5A 0B:9A4A: 72        .byte $72   ; 
- D 0 - I - 0x02DA5B 0B:9A4B: 21        .byte $21   ; 
- D 0 - I - 0x02DA5C 0B:9A4C: 09        .byte $09   ; 
- D 0 - I - 0x02DA5D 0B:9A4D: 01        .byte $01   ; 
- D 0 - I - 0x02DA5E 0B:9A4E: 81        .byte $81   ; 
- D 0 - I - 0x02DA5F 0B:9A4F: 22        .byte $22   ; 
- D 0 - I - 0x02DA60 0B:9A50: 07        .byte $07   ; 
- D 0 - I - 0x02DA61 0B:9A51: 00        .byte $00   ; 
- D 0 - I - 0x02DA62 0B:9A52: 81        .byte $81   ; 
- D 0 - I - 0x02DA63 0B:9A53: 19        .byte $19   ; 
- D 0 - I - 0x02DA64 0B:9A54: 06        .byte $06   ; 
- D 0 - I - 0x02DA65 0B:9A55: 01        .byte $01   ; 
- D 0 - I - 0x02DA66 0B:9A56: 81        .byte $81   ; 
- D 0 - I - 0x02DA67 0B:9A57: 1A        .byte $1A   ; 
- D 0 - I - 0x02DA68 0B:9A58: 03        .byte $03   ; 
- D 0 - I - 0x02DA69 0B:9A59: 00        .byte $00   ; 
- D 0 - I - 0x02DA6A 0B:9A5A: 84        .byte $84   ; 
- D 0 - I - 0x02DA6B 0B:9A5B: 71        .byte $71   ; 
- D 0 - I - 0x02DA6C 0B:9A5C: 71        .byte $71   ; 
- D 0 - I - 0x02DA6D 0B:9A5D: 72        .byte $72   ; 
- D 0 - I - 0x02DA6E 0B:9A5E: 21        .byte $21   ; 
- D 0 - I - 0x02DA6F 0B:9A5F: 09        .byte $09   ; 
- D 0 - I - 0x02DA70 0B:9A60: 01        .byte $01   ; 
- D 0 - I - 0x02DA71 0B:9A61: 81        .byte $81   ; 
- D 0 - I - 0x02DA72 0B:9A62: 22        .byte $22   ; 
- D 0 - I - 0x02DA73 0B:9A63: 07        .byte $07   ; 
- D 0 - I - 0x02DA74 0B:9A64: 00        .byte $00   ; 
- D 0 - I - 0x02DA75 0B:9A65: 81        .byte $81   ; 
- D 0 - I - 0x02DA76 0B:9A66: 1B        .byte $1B   ; 
- D 0 - I - 0x02DA77 0B:9A67: 06        .byte $06   ; 
- D 0 - I - 0x02DA78 0B:9A68: 1C        .byte $1C   ; 
- D 0 - I - 0x02DA79 0B:9A69: 81        .byte $81   ; 
- D 0 - I - 0x02DA7A 0B:9A6A: 1D        .byte $1D   ; 
- D 0 - I - 0x02DA7B 0B:9A6B: 03        .byte $03   ; 
- D 0 - I - 0x02DA7C 0B:9A6C: 00        .byte $00   ; 
- D 0 - I - 0x02DA7D 0B:9A6D: 84        .byte $84   ; 
- D 0 - I - 0x02DA7E 0B:9A6E: 71        .byte $71   ; 
- D 0 - I - 0x02DA7F 0B:9A6F: 71        .byte $71   ; 
- D 0 - I - 0x02DA80 0B:9A70: 72        .byte $72   ; 
- D 0 - I - 0x02DA81 0B:9A71: 21        .byte $21   ; 
- D 0 - I - 0x02DA82 0B:9A72: 09        .byte $09   ; 
- D 0 - I - 0x02DA83 0B:9A73: 01        .byte $01   ; 
- D 0 - I - 0x02DA84 0B:9A74: 81        .byte $81   ; 
- D 0 - I - 0x02DA85 0B:9A75: 22        .byte $22   ; 
- D 0 - I - 0x02DA86 0B:9A76: 15        .byte $15   ; 
- D 0 - I - 0x02DA87 0B:9A77: 00        .byte $00   ; 
- D 0 - I - 0x02DA88 0B:9A78: 81        .byte $81   ; 
- D 0 - I - 0x02DA89 0B:9A79: 2B        .byte $2B   ; 
- D 0 - I - 0x02DA8A 0B:9A7A: 09        .byte $09   ; 
- D 0 - I - 0x02DA8B 0B:9A7B: 2C        .byte $2C   ; 
- D 0 - I - 0x02DA8C 0B:9A7C: 81        .byte $81   ; 
- D 0 - I - 0x02DA8D 0B:9A7D: 2D        .byte $2D   ; 
- D 0 - I - 0x02DA8E 0B:9A7E: 23        .byte $23   ; 
- D 0 - I - 0x02DA8F 0B:9A7F: 00        .byte $00   ; 
- D 0 - I - 0x02DA90 0B:9A80: 81        .byte $81   ; 
- D 0 - I - 0x02DA91 0B:9A81: 2E        .byte $2E   ; 
- D 0 - I - 0x02DA92 0B:9A82: 1D        .byte $1D   ; 
- D 0 - I - 0x02DA93 0B:9A83: 2F        .byte $2F   ; 
- D 0 - I - 0x02DA94 0B:9A84: 82        .byte $82   ; 
- D 0 - I - 0x02DA95 0B:9A85: 40        .byte $40   ; 
- D 0 - I - 0x02DA96 0B:9A86: 00        .byte $00   ; 
- D 0 - I - 0x02DA97 0B:9A87: C4        .byte $C4   ; 
- D 0 - I - 0x02DA98 0B:9A88: 30        .byte $30   ; 
- D 0 - I - 0x02DA99 0B:9A89: BD        .byte $BD   ; 
- D 0 - I - 0x02DA9A 0B:9A8A: 32        .byte $32   ; 
- D 0 - I - 0x02DA9B 0B:9A8B: 33        .byte $33   ; 
- D 0 - I - 0x02DA9C 0B:9A8C: 32        .byte $32   ; 
- D 0 - I - 0x02DA9D 0B:9A8D: 33        .byte $33   ; 
- D 0 - I - 0x02DA9E 0B:9A8E: 32        .byte $32   ; 
- D 0 - I - 0x02DA9F 0B:9A8F: 33        .byte $33   ; 
- D 0 - I - 0x02DAA0 0B:9A90: 32        .byte $32   ; 
- D 0 - I - 0x02DAA1 0B:9A91: 33        .byte $33   ; 
- D 0 - I - 0x02DAA2 0B:9A92: 32        .byte $32   ; 
- D 0 - I - 0x02DAA3 0B:9A93: 33        .byte $33   ; 
- D 0 - I - 0x02DAA4 0B:9A94: 32        .byte $32   ; 
- D 0 - I - 0x02DAA5 0B:9A95: 33        .byte $33   ; 
- D 0 - I - 0x02DAA6 0B:9A96: 32        .byte $32   ; 
- D 0 - I - 0x02DAA7 0B:9A97: 33        .byte $33   ; 
- D 0 - I - 0x02DAA8 0B:9A98: 32        .byte $32   ; 
- D 0 - I - 0x02DAA9 0B:9A99: 33        .byte $33   ; 
- D 0 - I - 0x02DAAA 0B:9A9A: 32        .byte $32   ; 
- D 0 - I - 0x02DAAB 0B:9A9B: 33        .byte $33   ; 
- D 0 - I - 0x02DAAC 0B:9A9C: 32        .byte $32   ; 
- D 0 - I - 0x02DAAD 0B:9A9D: 33        .byte $33   ; 
- D 0 - I - 0x02DAAE 0B:9A9E: 32        .byte $32   ; 
- D 0 - I - 0x02DAAF 0B:9A9F: 33        .byte $33   ; 
- D 0 - I - 0x02DAB0 0B:9AA0: 32        .byte $32   ; 
- D 0 - I - 0x02DAB1 0B:9AA1: 33        .byte $33   ; 
- D 0 - I - 0x02DAB2 0B:9AA2: 32        .byte $32   ; 
- D 0 - I - 0x02DAB3 0B:9AA3: 41        .byte $41   ; 
- D 0 - I - 0x02DAB4 0B:9AA4: 42        .byte $42   ; 
- D 0 - I - 0x02DAB5 0B:9AA5: 00        .byte $00   ; 
- D 0 - I - 0x02DAB6 0B:9AA6: 30        .byte $30   ; 
- D 0 - I - 0x02DAB7 0B:9AA7: 34        .byte $34   ; 
- D 0 - I - 0x02DAB8 0B:9AA8: 47        .byte $47   ; 
- D 0 - I - 0x02DAB9 0B:9AA9: 35        .byte $35   ; 
- D 0 - I - 0x02DABA 0B:9AAA: 48        .byte $48   ; 
- D 0 - I - 0x02DABB 0B:9AAB: 35        .byte $35   ; 
- D 0 - I - 0x02DABC 0B:9AAC: 49        .byte $49   ; 
- D 0 - I - 0x02DABD 0B:9AAD: 35        .byte $35   ; 
- D 0 - I - 0x02DABE 0B:9AAE: 4A        .byte $4A   ; 
- D 0 - I - 0x02DABF 0B:9AAF: 35        .byte $35   ; 
- D 0 - I - 0x02DAC0 0B:9AB0: 4B        .byte $4B   ; 
- D 0 - I - 0x02DAC1 0B:9AB1: 35        .byte $35   ; 
- D 0 - I - 0x02DAC2 0B:9AB2: 4C        .byte $4C   ; 
- D 0 - I - 0x02DAC3 0B:9AB3: 35        .byte $35   ; 
- D 0 - I - 0x02DAC4 0B:9AB4: 4D        .byte $4D   ; 
- D 0 - I - 0x02DAC5 0B:9AB5: 35        .byte $35   ; 
- D 0 - I - 0x02DAC6 0B:9AB6: 4E        .byte $4E   ; 
- D 0 - I - 0x02DAC7 0B:9AB7: 35        .byte $35   ; 
- D 0 - I - 0x02DAC8 0B:9AB8: 4F        .byte $4F   ; 
- D 0 - I - 0x02DAC9 0B:9AB9: 35        .byte $35   ; 
- D 0 - I - 0x02DACA 0B:9ABA: 50        .byte $50   ; 
- D 0 - I - 0x02DACB 0B:9ABB: 35        .byte $35   ; 
- D 0 - I - 0x02DACC 0B:9ABC: 00        .byte $00   ; 
- D 0 - I - 0x02DACD 0B:9ABD: 35        .byte $35   ; 
- D 0 - I - 0x02DACE 0B:9ABE: 00        .byte $00   ; 
- D 0 - I - 0x02DACF 0B:9ABF: 35        .byte $35   ; 
- D 0 - I - 0x02DAD0 0B:9AC0: 00        .byte $00   ; 
- D 0 - I - 0x02DAD1 0B:9AC1: 35        .byte $35   ; 
- D 0 - I - 0x02DAD2 0B:9AC2: 00        .byte $00   ; 
- D 0 - I - 0x02DAD3 0B:9AC3: 43        .byte $43   ; 
- D 0 - I - 0x02DAD4 0B:9AC4: 42        .byte $42   ; 
- D 0 - I - 0x02DAD5 0B:9AC5: 00        .byte $00   ; 
- D 0 - I - 0x02DAD6 0B:9AC6: 30        .byte $30   ; 
- D 0 - I - 0x02DAD7 0B:9AC7: C3        .byte $C3   ; 
- D 0 - I - 0x02DAD8 0B:9AC8: 36        .byte $36   ; 
- D 0 - I - 0x02DAD9 0B:9AC9: BD        .byte $BD   ; 
- D 0 - I - 0x02DADA 0B:9ACA: 37        .byte $37   ; 
- D 0 - I - 0x02DADB 0B:9ACB: 38        .byte $38   ; 
- D 0 - I - 0x02DADC 0B:9ACC: 37        .byte $37   ; 
- D 0 - I - 0x02DADD 0B:9ACD: 38        .byte $38   ; 
- D 0 - I - 0x02DADE 0B:9ACE: 37        .byte $37   ; 
- D 0 - I - 0x02DADF 0B:9ACF: 38        .byte $38   ; 
- D 0 - I - 0x02DAE0 0B:9AD0: 37        .byte $37   ; 
- D 0 - I - 0x02DAE1 0B:9AD1: 38        .byte $38   ; 
- D 0 - I - 0x02DAE2 0B:9AD2: 37        .byte $37   ; 
- D 0 - I - 0x02DAE3 0B:9AD3: 38        .byte $38   ; 
- D 0 - I - 0x02DAE4 0B:9AD4: 37        .byte $37   ; 
- D 0 - I - 0x02DAE5 0B:9AD5: 38        .byte $38   ; 
- D 0 - I - 0x02DAE6 0B:9AD6: 37        .byte $37   ; 
- D 0 - I - 0x02DAE7 0B:9AD7: 38        .byte $38   ; 
- D 0 - I - 0x02DAE8 0B:9AD8: 37        .byte $37   ; 
- D 0 - I - 0x02DAE9 0B:9AD9: 38        .byte $38   ; 
- D 0 - I - 0x02DAEA 0B:9ADA: 37        .byte $37   ; 
- D 0 - I - 0x02DAEB 0B:9ADB: 38        .byte $38   ; 
- D 0 - I - 0x02DAEC 0B:9ADC: 37        .byte $37   ; 
- D 0 - I - 0x02DAED 0B:9ADD: 38        .byte $38   ; 
- D 0 - I - 0x02DAEE 0B:9ADE: 37        .byte $37   ; 
- D 0 - I - 0x02DAEF 0B:9ADF: 38        .byte $38   ; 
- D 0 - I - 0x02DAF0 0B:9AE0: 37        .byte $37   ; 
- D 0 - I - 0x02DAF1 0B:9AE1: 38        .byte $38   ; 
- D 0 - I - 0x02DAF2 0B:9AE2: 37        .byte $37   ; 
- D 0 - I - 0x02DAF3 0B:9AE3: 44        .byte $44   ; 
- D 0 - I - 0x02DAF4 0B:9AE4: 42        .byte $42   ; 
- D 0 - I - 0x02DAF5 0B:9AE5: 00        .byte $00   ; 
- D 0 - I - 0x02DAF6 0B:9AE6: 30        .byte $30   ; 
- D 0 - I - 0x02DAF7 0B:9AE7: 34        .byte $34   ; 
- D 0 - I - 0x02DAF8 0B:9AE8: 55        .byte $55   ; 
- D 0 - I - 0x02DAF9 0B:9AE9: 35        .byte $35   ; 
- D 0 - I - 0x02DAFA 0B:9AEA: 56        .byte $56   ; 
- D 0 - I - 0x02DAFB 0B:9AEB: 35        .byte $35   ; 
- D 0 - I - 0x02DAFC 0B:9AEC: 57        .byte $57   ; 
- D 0 - I - 0x02DAFD 0B:9AED: 35        .byte $35   ; 
- D 0 - I - 0x02DAFE 0B:9AEE: 58        .byte $58   ; 
- D 0 - I - 0x02DAFF 0B:9AEF: 35        .byte $35   ; 
- D 0 - I - 0x02DB00 0B:9AF0: 59        .byte $59   ; 
- D 0 - I - 0x02DB01 0B:9AF1: 35        .byte $35   ; 
- D 0 - I - 0x02DB02 0B:9AF2: 5A        .byte $5A   ; 
- D 0 - I - 0x02DB03 0B:9AF3: 35        .byte $35   ; 
- D 0 - I - 0x02DB04 0B:9AF4: 5B        .byte $5B   ; 
- D 0 - I - 0x02DB05 0B:9AF5: 35        .byte $35   ; 
- D 0 - I - 0x02DB06 0B:9AF6: 5C        .byte $5C   ; 
- D 0 - I - 0x02DB07 0B:9AF7: 35        .byte $35   ; 
- D 0 - I - 0x02DB08 0B:9AF8: 5D        .byte $5D   ; 
- D 0 - I - 0x02DB09 0B:9AF9: 35        .byte $35   ; 
- D 0 - I - 0x02DB0A 0B:9AFA: 5E        .byte $5E   ; 
- D 0 - I - 0x02DB0B 0B:9AFB: 35        .byte $35   ; 
- D 0 - I - 0x02DB0C 0B:9AFC: 5F        .byte $5F   ; 
- D 0 - I - 0x02DB0D 0B:9AFD: 35        .byte $35   ; 
- D 0 - I - 0x02DB0E 0B:9AFE: 60        .byte $60   ; 
- D 0 - I - 0x02DB0F 0B:9AFF: 35        .byte $35   ; 
- D 0 - I - 0x02DB10 0B:9B00: 61        .byte $61   ; 
- D 0 - I - 0x02DB11 0B:9B01: 35        .byte $35   ; 
- D 0 - I - 0x02DB12 0B:9B02: 62        .byte $62   ; 
- D 0 - I - 0x02DB13 0B:9B03: 43        .byte $43   ; 
- D 0 - I - 0x02DB14 0B:9B04: 42        .byte $42   ; 
- D 0 - I - 0x02DB15 0B:9B05: 00        .byte $00   ; 
- D 0 - I - 0x02DB16 0B:9B06: 30        .byte $30   ; 
- D 0 - I - 0x02DB17 0B:9B07: C3        .byte $C3   ; 
- D 0 - I - 0x02DB18 0B:9B08: 36        .byte $36   ; 
- D 0 - I - 0x02DB19 0B:9B09: BD        .byte $BD   ; 
- D 0 - I - 0x02DB1A 0B:9B0A: 37        .byte $37   ; 
- D 0 - I - 0x02DB1B 0B:9B0B: 38        .byte $38   ; 
- D 0 - I - 0x02DB1C 0B:9B0C: 37        .byte $37   ; 
- D 0 - I - 0x02DB1D 0B:9B0D: 38        .byte $38   ; 
- D 0 - I - 0x02DB1E 0B:9B0E: 37        .byte $37   ; 
- D 0 - I - 0x02DB1F 0B:9B0F: 38        .byte $38   ; 
- D 0 - I - 0x02DB20 0B:9B10: 37        .byte $37   ; 
- D 0 - I - 0x02DB21 0B:9B11: 38        .byte $38   ; 
- D 0 - I - 0x02DB22 0B:9B12: 37        .byte $37   ; 
- D 0 - I - 0x02DB23 0B:9B13: 38        .byte $38   ; 
- D 0 - I - 0x02DB24 0B:9B14: 37        .byte $37   ; 
- D 0 - I - 0x02DB25 0B:9B15: 38        .byte $38   ; 
- D 0 - I - 0x02DB26 0B:9B16: 37        .byte $37   ; 
- D 0 - I - 0x02DB27 0B:9B17: 38        .byte $38   ; 
- D 0 - I - 0x02DB28 0B:9B18: 37        .byte $37   ; 
- D 0 - I - 0x02DB29 0B:9B19: 45        .byte $45   ; 
- D 0 - I - 0x02DB2A 0B:9B1A: 37        .byte $37   ; 
- D 0 - I - 0x02DB2B 0B:9B1B: 38        .byte $38   ; 
- D 0 - I - 0x02DB2C 0B:9B1C: 37        .byte $37   ; 
- D 0 - I - 0x02DB2D 0B:9B1D: 38        .byte $38   ; 
- D 0 - I - 0x02DB2E 0B:9B1E: 37        .byte $37   ; 
- D 0 - I - 0x02DB2F 0B:9B1F: 38        .byte $38   ; 
- D 0 - I - 0x02DB30 0B:9B20: 37        .byte $37   ; 
- D 0 - I - 0x02DB31 0B:9B21: 38        .byte $38   ; 
- D 0 - I - 0x02DB32 0B:9B22: 37        .byte $37   ; 
- D 0 - I - 0x02DB33 0B:9B23: 44        .byte $44   ; 
- D 0 - I - 0x02DB34 0B:9B24: 42        .byte $42   ; 
- D 0 - I - 0x02DB35 0B:9B25: 00        .byte $00   ; 
- D 0 - I - 0x02DB36 0B:9B26: 30        .byte $30   ; 
- D 0 - I - 0x02DB37 0B:9B27: 34        .byte $34   ; 
- D 0 - I - 0x02DB38 0B:9B28: 63        .byte $63   ; 
- D 0 - I - 0x02DB39 0B:9B29: 35        .byte $35   ; 
- D 0 - I - 0x02DB3A 0B:9B2A: 64        .byte $64   ; 
- D 0 - I - 0x02DB3B 0B:9B2B: 35        .byte $35   ; 
- D 0 - I - 0x02DB3C 0B:9B2C: 65        .byte $65   ; 
- D 0 - I - 0x02DB3D 0B:9B2D: 35        .byte $35   ; 
- D 0 - I - 0x02DB3E 0B:9B2E: 66        .byte $66   ; 
- D 0 - I - 0x02DB3F 0B:9B2F: 35        .byte $35   ; 
- D 0 - I - 0x02DB40 0B:9B30: 67        .byte $67   ; 
- D 0 - I - 0x02DB41 0B:9B31: 35        .byte $35   ; 
- D 0 - I - 0x02DB42 0B:9B32: 68        .byte $68   ; 
- D 0 - I - 0x02DB43 0B:9B33: 35        .byte $35   ; 
- D 0 - I - 0x02DB44 0B:9B34: 69        .byte $69   ; 
- D 0 - I - 0x02DB45 0B:9B35: 35        .byte $35   ; 
- D 0 - I - 0x02DB46 0B:9B36: 6A        .byte $6A   ; 
- D 0 - I - 0x02DB47 0B:9B37: 35        .byte $35   ; 
- D 0 - I - 0x02DB48 0B:9B38: 6B        .byte $6B   ; 
- D 0 - I - 0x02DB49 0B:9B39: 35        .byte $35   ; 
- D 0 - I - 0x02DB4A 0B:9B3A: 6C        .byte $6C   ; 
- D 0 - I - 0x02DB4B 0B:9B3B: 35        .byte $35   ; 
- D 0 - I - 0x02DB4C 0B:9B3C: 6D        .byte $6D   ; 
- D 0 - I - 0x02DB4D 0B:9B3D: 35        .byte $35   ; 
- D 0 - I - 0x02DB4E 0B:9B3E: 6E        .byte $6E   ; 
- D 0 - I - 0x02DB4F 0B:9B3F: 35        .byte $35   ; 
- D 0 - I - 0x02DB50 0B:9B40: 6F        .byte $6F   ; 
- D 0 - I - 0x02DB51 0B:9B41: 35        .byte $35   ; 
- D 0 - I - 0x02DB52 0B:9B42: 70        .byte $70   ; 
- D 0 - I - 0x02DB53 0B:9B43: 43        .byte $43   ; 
- D 0 - I - 0x02DB54 0B:9B44: 42        .byte $42   ; 
- D 0 - I - 0x02DB55 0B:9B45: 00        .byte $00   ; 
- D 0 - I - 0x02DB56 0B:9B46: 30        .byte $30   ; 
- D 0 - I - 0x02DB57 0B:9B47: C3        .byte $C3   ; 
- D 0 - I - 0x02DB58 0B:9B48: 39        .byte $39   ; 
- D 0 - I - 0x02DB59 0B:9B49: 9D        .byte $9D   ; 
- D 0 - I - 0x02DB5A 0B:9B4A: 3A        .byte $3A   ; 
- D 0 - I - 0x02DB5B 0B:9B4B: 3B        .byte $3B   ; 
- D 0 - I - 0x02DB5C 0B:9B4C: 3A        .byte $3A   ; 
- D 0 - I - 0x02DB5D 0B:9B4D: 3B        .byte $3B   ; 
- D 0 - I - 0x02DB5E 0B:9B4E: 3A        .byte $3A   ; 
- D 0 - I - 0x02DB5F 0B:9B4F: 3B        .byte $3B   ; 
- D 0 - I - 0x02DB60 0B:9B50: 3A        .byte $3A   ; 
- D 0 - I - 0x02DB61 0B:9B51: 3B        .byte $3B   ; 
- D 0 - I - 0x02DB62 0B:9B52: 3A        .byte $3A   ; 
- D 0 - I - 0x02DB63 0B:9B53: 3B        .byte $3B   ; 
- D 0 - I - 0x02DB64 0B:9B54: 3A        .byte $3A   ; 
- D 0 - I - 0x02DB65 0B:9B55: 3B        .byte $3B   ; 
- D 0 - I - 0x02DB66 0B:9B56: 3A        .byte $3A   ; 
- D 0 - I - 0x02DB67 0B:9B57: 3B        .byte $3B   ; 
- D 0 - I - 0x02DB68 0B:9B58: 3A        .byte $3A   ; 
- D 0 - I - 0x02DB69 0B:9B59: 3B        .byte $3B   ; 
- D 0 - I - 0x02DB6A 0B:9B5A: 3A        .byte $3A   ; 
- D 0 - I - 0x02DB6B 0B:9B5B: 3B        .byte $3B   ; 
- D 0 - I - 0x02DB6C 0B:9B5C: 3A        .byte $3A   ; 
- D 0 - I - 0x02DB6D 0B:9B5D: 3B        .byte $3B   ; 
- D 0 - I - 0x02DB6E 0B:9B5E: 3A        .byte $3A   ; 
- D 0 - I - 0x02DB6F 0B:9B5F: 3B        .byte $3B   ; 
- D 0 - I - 0x02DB70 0B:9B60: 3A        .byte $3A   ; 
- D 0 - I - 0x02DB71 0B:9B61: 3B        .byte $3B   ; 
- D 0 - I - 0x02DB72 0B:9B62: 3A        .byte $3A   ; 
- D 0 - I - 0x02DB73 0B:9B63: 46        .byte $46   ; 
- D 0 - I - 0x02DB74 0B:9B64: 42        .byte $42   ; 
- D 0 - I - 0x02DB75 0B:9B65: 00        .byte $00   ; 
- D 0 - I - 0x02DB76 0B:9B66: 3C        .byte $3C   ; 
- D 0 - I - 0x02DB77 0B:9B67: 04        .byte $04   ; 
- D 0 - I - 0x02DB78 0B:9B68: 3D        .byte $3D   ; 
- D 0 - I - 0x02DB79 0B:9B69: 81        .byte $81   ; 
- D 0 - I - 0x02DB7A 0B:9B6A: 3E        .byte $3E   ; 
- D 0 - I - 0x02DB7B 0B:9B6B: 13        .byte $13   ; 
- D 0 - I - 0x02DB7C 0B:9B6C: 3D        .byte $3D   ; 
- D 0 - I - 0x02DB7D 0B:9B6D: 81        .byte $81   ; 
- D 0 - I - 0x02DB7E 0B:9B6E: 3E        .byte $3E   ; 
- D 0 - I - 0x02DB7F 0B:9B6F: 04        .byte $04   ; 
- D 0 - I - 0x02DB80 0B:9B70: 3D        .byte $3D   ; 
- D 0 - I - 0x02DB81 0B:9B71: 81        .byte $81   ; 
- D 0 - I - 0x02DB82 0B:9B72: 27        .byte $27   ; 
- D 0 - I - 0x02DB83 0B:9B73: 06        .byte $06   ; 
- D 0 - I - 0x02DB84 0B:9B74: 00        .byte $00   ; 
- D 0 - I - 0x02DB85 0B:9B75: 81        .byte $81   ; 
- D 0 - I - 0x02DB86 0B:9B76: 3F        .byte $3F   ; 
- D 0 - I - 0x02DB87 0B:9B77: 13        .byte $13   ; 
- D 0 - I - 0x02DB88 0B:9B78: 00        .byte $00   ; 
- D 0 - I - 0x02DB89 0B:9B79: 81        .byte $81   ; 
- D 0 - I - 0x02DB8A 0B:9B7A: 3F        .byte $3F   ; 
- D 0 - I - 0x02DB8B 0B:9B7B: 0B        .byte $0B   ; 
- D 0 - I - 0x02DB8C 0B:9B7C: 00        .byte $00   ; 
- D 0 - I - 0x02DB8D 0B:9B7D: 81        .byte $81   ; 
- D 0 - I - 0x02DB8E 0B:9B7E: 3F        .byte $3F   ; 
- D 0 - I - 0x02DB8F 0B:9B7F: 13        .byte $13   ; 
- D 0 - I - 0x02DB90 0B:9B80: 00        .byte $00   ; 
- D 0 - I - 0x02DB91 0B:9B81: 81        .byte $81   ; 
- D 0 - I - 0x02DB92 0B:9B82: 3F        .byte $3F   ; 
- D 0 - I - 0x02DB93 0B:9B83: 0B        .byte $0B   ; 
- D 0 - I - 0x02DB94 0B:9B84: 00        .byte $00   ; 
- D 0 - I - 0x02DB95 0B:9B85: 81        .byte $81   ; 
- D 0 - I - 0x02DB96 0B:9B86: 3F        .byte $3F   ; 
- D 0 - I - 0x02DB97 0B:9B87: 13        .byte $13   ; 
- D 0 - I - 0x02DB98 0B:9B88: 00        .byte $00   ; 
- D 0 - I - 0x02DB99 0B:9B89: 81        .byte $81   ; 
- D 0 - I - 0x02DB9A 0B:9B8A: 3F        .byte $3F   ; 
- D 0 - I - 0x02DB9B 0B:9B8B: 0B        .byte $0B   ; 
- D 0 - I - 0x02DB9C 0B:9B8C: 00        .byte $00   ; 
- D 0 - I - 0x02DB9D 0B:9B8D: 81        .byte $81   ; 
- D 0 - I - 0x02DB9E 0B:9B8E: 3F        .byte $3F   ; 
- D 0 - I - 0x02DB9F 0B:9B8F: 13        .byte $13   ; 
- D 0 - I - 0x02DBA0 0B:9B90: 00        .byte $00   ; 
- D 0 - I - 0x02DBA1 0B:9B91: 81        .byte $81   ; 
- D 0 - I - 0x02DBA2 0B:9B92: 3F        .byte $3F   ; 
- D 0 - I - 0x02DBA3 0B:9B93: 05        .byte $05   ; 
- D 0 - I - 0x02DBA4 0B:9B94: 00        .byte $00   ; 
- D 0 - I - 0x02DBA5 0B:9B95: 83        .byte $83   ; 
- D 0 - I - 0x02DBA6 0B:9B96: 2A        .byte $2A   ; 
- D 0 - I - 0x02DBA7 0B:9B97: 0A        .byte $0A   ; 
- D 0 - I - 0x02DBA8 0B:9B98: 0A        .byte $0A   ; 
- D 0 - I - 0x02DBA9 0B:9B99: 05        .byte $05   ; 
- D 0 - I - 0x02DBAA 0B:9B9A: AA        .byte $AA   ; 
- D 0 - I - 0x02DBAB 0B:9B9B: 83        .byte $83   ; 
- D 0 - I - 0x02DBAC 0B:9B9C: A2        .byte $A2   ; 
- D 0 - I - 0x02DBAD 0B:9B9D: A0        .byte $A0   ; 
- D 0 - I - 0x02DBAE 0B:9B9E: A0        .byte $A0   ; 
- D 0 - I - 0x02DBAF 0B:9B9F: 06        .byte $06   ; 
- D 0 - I - 0x02DBB0 0B:9BA0: AA        .byte $AA   ; 
- D 0 - I - 0x02DBB1 0B:9BA1: 81        .byte $81   ; 
- D 0 - I - 0x02DBB2 0B:9BA2: A5        .byte $A5   ; 
- D 0 - I - 0x02DBB3 0B:9BA3: 2E        .byte $2E   ; 
- D 0 - I - 0x02DBB4 0B:9BA4: AA        .byte $AA   ; 
- D 0 - I - 0x02DBB5 0B:9BA5: FF        .byte $FF   ; 



.export _off003_0x02DBB6_11
_off003_0x02DBB6_11:
- D 0 - I - 0x02DBB6 0B:9BA6: 00        .byte $00   ; 
- D 0 - I - 0x02DBB7 0B:9BA7: 20        .byte $20   ; 
- D 0 - I - 0x02DBB8 0B:9BA8: 7E        .byte $7E   ; 
- D 0 - I - 0x02DBB9 0B:9BA9: 00        .byte $00   ; 
- D 0 - I - 0x02DBBA 0B:9BAA: 0A        .byte $0A   ; 
- D 0 - I - 0x02DBBB 0B:9BAB: 00        .byte $00   ; 
- D 0 - I - 0x02DBBC 0B:9BAC: 08        .byte $08   ; 
- D 0 - I - 0x02DBBD 0B:9BAD: 01        .byte $01   ; 
- D 0 - I - 0x02DBBE 0B:9BAE: 81        .byte $81   ; 
- D 0 - I - 0x02DBBF 0B:9BAF: 8F        .byte $8F   ; 
- D 0 - I - 0x02DBC0 0B:9BB0: C7        .byte $C7   ; 
- D 0 - I - 0x02DBC1 0B:9BB1: 41        .byte $41   ; 
- D 0 - I - 0x02DBC2 0B:9BB2: 10        .byte $10   ; 
- D 0 - I - 0x02DBC3 0B:9BB3: 00        .byte $00   ; 
- D 0 - I - 0x02DBC4 0B:9BB4: 08        .byte $08   ; 
- D 0 - I - 0x02DBC5 0B:9BB5: 01        .byte $01   ; 
- D 0 - I - 0x02DBC6 0B:9BB6: 81        .byte $81   ; 
- D 0 - I - 0x02DBC7 0B:9BB7: 8F        .byte $8F   ; 
- D 0 - I - 0x02DBC8 0B:9BB8: C7        .byte $C7   ; 
- D 0 - I - 0x02DBC9 0B:9BB9: 48        .byte $48   ; 
- D 0 - I - 0x02DBCA 0B:9BBA: 10        .byte $10   ; 
- D 0 - I - 0x02DBCB 0B:9BBB: 00        .byte $00   ; 
- D 0 - I - 0x02DBCC 0B:9BBC: 81        .byte $81   ; 
- D 0 - I - 0x02DBCD 0B:9BBD: 01        .byte $01   ; 
- D 0 - I - 0x02DBCE 0B:9BBE: C4        .byte $C4   ; 
- D 0 - I - 0x02DBCF 0B:9BBF: 01        .byte $01   ; 
- D 0 - I - 0x02DBD0 0B:9BC0: 03        .byte $03   ; 
- D 0 - I - 0x02DBD1 0B:9BC1: 01        .byte $01   ; 
- D 0 - I - 0x02DBD2 0B:9BC2: 81        .byte $81   ; 
- D 0 - I - 0x02DBD3 0B:9BC3: 8F        .byte $8F   ; 
- D 0 - I - 0x02DBD4 0B:9BC4: C3        .byte $C3   ; 
- D 0 - I - 0x02DBD5 0B:9BC5: 4F        .byte $4F   ; 
- D 0 - I - 0x02DBD6 0B:9BC6: 81        .byte $81   ; 
- D 0 - I - 0x02DBD7 0B:9BC7: 01        .byte $01   ; 
- D 0 - I - 0x02DBD8 0B:9BC8: C3        .byte $C3   ; 
- D 0 - I - 0x02DBD9 0B:9BC9: 52        .byte $52   ; 
- D 0 - I - 0x02DBDA 0B:9BCA: 10        .byte $10   ; 
- D 0 - I - 0x02DBDB 0B:9BCB: 00        .byte $00   ; 
- D 0 - I - 0x02DBDC 0B:9BCC: 82        .byte $82   ; 
- D 0 - I - 0x02DBDD 0B:9BCD: 01        .byte $01   ; 
- D 0 - I - 0x02DBDE 0B:9BCE: 01        .byte $01   ; 
- D 0 - I - 0x02DBDF 0B:9BCF: C3        .byte $C3   ; 
- D 0 - I - 0x02DBE0 0B:9BD0: 05        .byte $05   ; 
- D 0 - I - 0x02DBE1 0B:9BD1: 03        .byte $03   ; 
- D 0 - I - 0x02DBE2 0B:9BD2: 01        .byte $01   ; 
- D 0 - I - 0x02DBE3 0B:9BD3: 81        .byte $81   ; 
- D 0 - I - 0x02DBE4 0B:9BD4: 8F        .byte $8F   ; 
- D 0 - I - 0x02DBE5 0B:9BD5: C7        .byte $C7   ; 
- D 0 - I - 0x02DBE6 0B:9BD6: 55        .byte $55   ; 
- D 0 - I - 0x02DBE7 0B:9BD7: 10        .byte $10   ; 
- D 0 - I - 0x02DBE8 0B:9BD8: 00        .byte $00   ; 
- D 0 - I - 0x02DBE9 0B:9BD9: 81        .byte $81   ; 
- D 0 - I - 0x02DBEA 0B:9BDA: 01        .byte $01   ; 
- D 0 - I - 0x02DBEB 0B:9BDB: C5        .byte $C5   ; 
- D 0 - I - 0x02DBEC 0B:9BDC: 08        .byte $08   ; 
- D 0 - I - 0x02DBED 0B:9BDD: 83        .byte $83   ; 
- D 0 - I - 0x02DBEE 0B:9BDE: 01        .byte $01   ; 
- D 0 - I - 0x02DBEF 0B:9BDF: 01        .byte $01   ; 
- D 0 - I - 0x02DBF0 0B:9BE0: 8F        .byte $8F   ; 
- D 0 - I - 0x02DBF1 0B:9BE1: C7        .byte $C7   ; 
- D 0 - I - 0x02DBF2 0B:9BE2: 5C        .byte $5C   ; 
- D 0 - I - 0x02DBF3 0B:9BE3: 10        .byte $10   ; 
- D 0 - I - 0x02DBF4 0B:9BE4: 00        .byte $00   ; 
- D 0 - I - 0x02DBF5 0B:9BE5: C8        .byte $C8   ; 
- D 0 - I - 0x02DBF6 0B:9BE6: 0D        .byte $0D   ; 
- D 0 - I - 0x02DBF7 0B:9BE7: 82        .byte $82   ; 
- D 0 - I - 0x02DBF8 0B:9BE8: 8F        .byte $8F   ; 
- D 0 - I - 0x02DBF9 0B:9BE9: 8F        .byte $8F   ; 
- D 0 - I - 0x02DBFA 0B:9BEA: C5        .byte $C5   ; 
- D 0 - I - 0x02DBFB 0B:9BEB: 63        .byte $63   ; 
- D 0 - I - 0x02DBFC 0B:9BEC: 81        .byte $81   ; 
- D 0 - I - 0x02DBFD 0B:9BED: 40        .byte $40   ; 
- D 0 - I - 0x02DBFE 0B:9BEE: 10        .byte $10   ; 
- D 0 - I - 0x02DBFF 0B:9BEF: 00        .byte $00   ; 
- D 0 - I - 0x02DC00 0B:9BF0: C8        .byte $C8   ; 
- D 0 - I - 0x02DC01 0B:9BF1: 15        .byte $15   ; 
- D 0 - I - 0x02DC02 0B:9BF2: 84        .byte $84   ; 
- D 0 - I - 0x02DC03 0B:9BF3: 68        .byte $68   ; 
- D 0 - I - 0x02DC04 0B:9BF4: 01        .byte $01   ; 
- D 0 - I - 0x02DC05 0B:9BF5: 69        .byte $69   ; 
- D 0 - I - 0x02DC06 0B:9BF6: 40        .byte $40   ; 
- D 0 - I - 0x02DC07 0B:9BF7: C4        .byte $C4   ; 
- D 0 - I - 0x02DC08 0B:9BF8: 6A        .byte $6A   ; 
- D 0 - I - 0x02DC09 0B:9BF9: 10        .byte $10   ; 
- D 0 - I - 0x02DC0A 0B:9BFA: 00        .byte $00   ; 
- D 0 - I - 0x02DC0B 0B:9BFB: C8        .byte $C8   ; 
- D 0 - I - 0x02DC0C 0B:9BFC: 1D        .byte $1D   ; 
- D 0 - I - 0x02DC0D 0B:9BFD: 82        .byte $82   ; 
- D 0 - I - 0x02DC0E 0B:9BFE: 6E        .byte $6E   ; 
- D 0 - I - 0x02DC0F 0B:9BFF: 01        .byte $01   ; 
- D 0 - I - 0x02DC10 0B:9C00: C4        .byte $C4   ; 
- D 0 - I - 0x02DC11 0B:9C01: 6F        .byte $6F   ; 
- D 0 - I - 0x02DC12 0B:9C02: 82        .byte $82   ; 
- D 0 - I - 0x02DC13 0B:9C03: 00        .byte $00   ; 
- D 0 - I - 0x02DC14 0B:9C04: 73        .byte $73   ; 
- D 0 - I - 0x02DC15 0B:9C05: 10        .byte $10   ; 
- D 0 - I - 0x02DC16 0B:9C06: 00        .byte $00   ; 
- D 0 - I - 0x02DC17 0B:9C07: C6        .byte $C6   ; 
- D 0 - I - 0x02DC18 0B:9C08: 25        .byte $25   ; 
- D 0 - I - 0x02DC19 0B:9C09: 03        .byte $03   ; 
- D 0 - I - 0x02DC1A 0B:9C0A: 01        .byte $01   ; 
- D 0 - I - 0x02DC1B 0B:9C0B: C7        .byte $C7   ; 
- D 0 - I - 0x02DC1C 0B:9C0C: 74        .byte $74   ; 
- D 0 - I - 0x02DC1D 0B:9C0D: 10        .byte $10   ; 
- D 0 - I - 0x02DC1E 0B:9C0E: 00        .byte $00   ; 
- D 0 - I - 0x02DC1F 0B:9C0F: 81        .byte $81   ; 
- D 0 - I - 0x02DC20 0B:9C10: 01        .byte $01   ; 
- D 0 - I - 0x02DC21 0B:9C11: C6        .byte $C6   ; 
- D 0 - I - 0x02DC22 0B:9C12: 2B        .byte $2B   ; 
- D 0 - I - 0x02DC23 0B:9C13: 03        .byte $03   ; 
- D 0 - I - 0x02DC24 0B:9C14: 01        .byte $01   ; 
- D 0 - I - 0x02DC25 0B:9C15: C5        .byte $C5   ; 
- D 0 - I - 0x02DC26 0B:9C16: 7B        .byte $7B   ; 
- D 0 - I - 0x02DC27 0B:9C17: 11        .byte $11   ; 
- D 0 - I - 0x02DC28 0B:9C18: 00        .byte $00   ; 
- D 0 - I - 0x02DC29 0B:9C19: C8        .byte $C8   ; 
- D 0 - I - 0x02DC2A 0B:9C1A: 31        .byte $31   ; 
- D 0 - I - 0x02DC2B 0B:9C1B: 82        .byte $82   ; 
- D 0 - I - 0x02DC2C 0B:9C1C: 80        .byte $80   ; 
- D 0 - I - 0x02DC2D 0B:9C1D: 01        .byte $01   ; 
- D 0 - I - 0x02DC2E 0B:9C1E: C6        .byte $C6   ; 
- D 0 - I - 0x02DC2F 0B:9C1F: 81        .byte $81   ; 
- D 0 - I - 0x02DC30 0B:9C20: 10        .byte $10   ; 
- D 0 - I - 0x02DC31 0B:9C21: 00        .byte $00   ; 
- D 0 - I - 0x02DC32 0B:9C22: C8        .byte $C8   ; 
- D 0 - I - 0x02DC33 0B:9C23: 39        .byte $39   ; 
- D 0 - I - 0x02DC34 0B:9C24: C8        .byte $C8   ; 
- D 0 - I - 0x02DC35 0B:9C25: 87        .byte $87   ; 
- D 0 - I - 0x02DC36 0B:9C26: 7E        .byte $7E   ; 
- D 0 - I - 0x02DC37 0B:9C27: 00        .byte $00   ; 
- D 0 - I - 0x02DC38 0B:9C28: 7E        .byte $7E   ; 
- D 0 - I - 0x02DC39 0B:9C29: 00        .byte $00   ; 
- D 0 - I - 0x02DC3A 0B:9C2A: 7E        .byte $7E   ; 
- D 0 - I - 0x02DC3B 0B:9C2B: 00        .byte $00   ; 
- D 0 - I - 0x02DC3C 0B:9C2C: 4E        .byte $4E   ; 
- D 0 - I - 0x02DC3D 0B:9C2D: 00        .byte $00   ; 
- D 0 - I - 0x02DC3E 0B:9C2E: 0A        .byte $0A   ; 
- D 0 - I - 0x02DC3F 0B:9C2F: AA        .byte $AA   ; 
- D 0 - I - 0x02DC40 0B:9C30: 82        .byte $82   ; 
- D 0 - I - 0x02DC41 0B:9C31: 00        .byte $00   ; 
- D 0 - I - 0x02DC42 0B:9C32: 00        .byte $00   ; 
- D 0 - I - 0x02DC43 0B:9C33: 06        .byte $06   ; 
- D 0 - I - 0x02DC44 0B:9C34: AA        .byte $AA   ; 
- D 0 - I - 0x02DC45 0B:9C35: 84        .byte $84   ; 
- D 0 - I - 0x02DC46 0B:9C36: 40        .byte $40   ; 
- D 0 - I - 0x02DC47 0B:9C37: 10        .byte $10   ; 
- D 0 - I - 0x02DC48 0B:9C38: CE        .byte $CE   ; 
- D 0 - I - 0x02DC49 0B:9C39: FF        .byte $FF   ; 
- D 0 - I - 0x02DC4A 0B:9C3A: 04        .byte $04   ; 
- D 0 - I - 0x02DC4B 0B:9C3B: AA        .byte $AA   ; 
- D 0 - I - 0x02DC4C 0B:9C3C: 84        .byte $84   ; 
- D 0 - I - 0x02DC4D 0B:9C3D: A0        .byte $A0   ; 
- D 0 - I - 0x02DC4E 0B:9C3E: F1        .byte $F1   ; 
- D 0 - I - 0x02DC4F 0B:9C3F: FF        .byte $FF   ; 
- D 0 - I - 0x02DC50 0B:9C40: BF        .byte $BF   ; 
- D 0 - I - 0x02DC51 0B:9C41: 22        .byte $22   ; 
- D 0 - I - 0x02DC52 0B:9C42: AA        .byte $AA   ; 
- D 0 - I - 0x02DC53 0B:9C43: FF        .byte $FF   ; 



.export _off003_0x02DC54_12
_off003_0x02DC54_12:
- D 0 - I - 0x02DC54 0B:9C44: 00        .byte $00   ; 
- D 0 - I - 0x02DC55 0B:9C45: 20        .byte $20   ; 
- D 0 - I - 0x02DC56 0B:9C46: 7E        .byte $7E   ; 
- D 0 - I - 0x02DC57 0B:9C47: 00        .byte $00   ; 
- D 0 - I - 0x02DC58 0B:9C48: 08        .byte $08   ; 
- D 0 - I - 0x02DC59 0B:9C49: 00        .byte $00   ; 
- D 0 - I - 0x02DC5A 0B:9C4A: 05        .byte $05   ; 
- D 0 - I - 0x02DC5B 0B:9C4B: 01        .byte $01   ; 
- D 0 - I - 0x02DC5C 0B:9C4C: C4        .byte $C4   ; 
- D 0 - I - 0x02DC5D 0B:9C4D: 02        .byte $02   ; 
- D 0 - I - 0x02DC5E 0B:9C4E: 0B        .byte $0B   ; 
- D 0 - I - 0x02DC5F 0B:9C4F: 01        .byte $01   ; 
- D 0 - I - 0x02DC60 0B:9C50: 0C        .byte $0C   ; 
- D 0 - I - 0x02DC61 0B:9C51: 00        .byte $00   ; 
- D 0 - I - 0x02DC62 0B:9C52: 03        .byte $03   ; 
- D 0 - I - 0x02DC63 0B:9C53: 01        .byte $01   ; 
- D 0 - I - 0x02DC64 0B:9C54: C7        .byte $C7   ; 
- D 0 - I - 0x02DC65 0B:9C55: 06        .byte $06   ; 
- D 0 - I - 0x02DC66 0B:9C56: 84        .byte $84   ; 
- D 0 - I - 0x02DC67 0B:9C57: 01        .byte $01   ; 
- D 0 - I - 0x02DC68 0B:9C58: 01        .byte $01   ; 
- D 0 - I - 0x02DC69 0B:9C59: 59        .byte $59   ; 
- D 0 - I - 0x02DC6A 0B:9C5A: 5A        .byte $5A   ; 
- D 0 - I - 0x02DC6B 0B:9C5B: 06        .byte $06   ; 
- D 0 - I - 0x02DC6C 0B:9C5C: 01        .byte $01   ; 
- D 0 - I - 0x02DC6D 0B:9C5D: 0C        .byte $0C   ; 
- D 0 - I - 0x02DC6E 0B:9C5E: 00        .byte $00   ; 
- D 0 - I - 0x02DC6F 0B:9C5F: 82        .byte $82   ; 
- D 0 - I - 0x02DC70 0B:9C60: 01        .byte $01   ; 
- D 0 - I - 0x02DC71 0B:9C61: 01        .byte $01   ; 
- D 0 - I - 0x02DC72 0B:9C62: C8        .byte $C8   ; 
- D 0 - I - 0x02DC73 0B:9C63: 0D        .byte $0D   ; 
- D 0 - I - 0x02DC74 0B:9C64: C4        .byte $C4   ; 
- D 0 - I - 0x02DC75 0B:9C65: 5B        .byte $5B   ; 
- D 0 - I - 0x02DC76 0B:9C66: 06        .byte $06   ; 
- D 0 - I - 0x02DC77 0B:9C67: 01        .byte $01   ; 
- D 0 - I - 0x02DC78 0B:9C68: 0C        .byte $0C   ; 
- D 0 - I - 0x02DC79 0B:9C69: 00        .byte $00   ; 
- D 0 - I - 0x02DC7A 0B:9C6A: 82        .byte $82   ; 
- D 0 - I - 0x02DC7B 0B:9C6B: 01        .byte $01   ; 
- D 0 - I - 0x02DC7C 0B:9C6C: 01        .byte $01   ; 
- D 0 - I - 0x02DC7D 0B:9C6D: C8        .byte $C8   ; 
- D 0 - I - 0x02DC7E 0B:9C6E: 15        .byte $15   ; 
- D 0 - I - 0x02DC7F 0B:9C6F: C5        .byte $C5   ; 
- D 0 - I - 0x02DC80 0B:9C70: 5F        .byte $5F   ; 
- D 0 - I - 0x02DC81 0B:9C71: 05        .byte $05   ; 
- D 0 - I - 0x02DC82 0B:9C72: 01        .byte $01   ; 
- D 0 - I - 0x02DC83 0B:9C73: 0C        .byte $0C   ; 
- D 0 - I - 0x02DC84 0B:9C74: 00        .byte $00   ; 
- D 0 - I - 0x02DC85 0B:9C75: 82        .byte $82   ; 
- D 0 - I - 0x02DC86 0B:9C76: 01        .byte $01   ; 
- D 0 - I - 0x02DC87 0B:9C77: 01        .byte $01   ; 
- D 0 - I - 0x02DC88 0B:9C78: C6        .byte $C6   ; 
- D 0 - I - 0x02DC89 0B:9C79: 1D        .byte $1D   ; 
- D 0 - I - 0x02DC8A 0B:9C7A: 82        .byte $82   ; 
- D 0 - I - 0x02DC8B 0B:9C7B: 01        .byte $01   ; 
- D 0 - I - 0x02DC8C 0B:9C7C: 23        .byte $23   ; 
- D 0 - I - 0x02DC8D 0B:9C7D: C7        .byte $C7   ; 
- D 0 - I - 0x02DC8E 0B:9C7E: 64        .byte $64   ; 
- D 0 - I - 0x02DC8F 0B:9C7F: 03        .byte $03   ; 
- D 0 - I - 0x02DC90 0B:9C80: 01        .byte $01   ; 
- D 0 - I - 0x02DC91 0B:9C81: 0C        .byte $0C   ; 
- D 0 - I - 0x02DC92 0B:9C82: 00        .byte $00   ; 
- D 0 - I - 0x02DC93 0B:9C83: 03        .byte $03   ; 
- D 0 - I - 0x02DC94 0B:9C84: 01        .byte $01   ; 
- D 0 - I - 0x02DC95 0B:9C85: C7        .byte $C7   ; 
- D 0 - I - 0x02DC96 0B:9C86: 24        .byte $24   ; 
- D 0 - I - 0x02DC97 0B:9C87: C8        .byte $C8   ; 
- D 0 - I - 0x02DC98 0B:9C88: 6B        .byte $6B   ; 
- D 0 - I - 0x02DC99 0B:9C89: 82        .byte $82   ; 
- D 0 - I - 0x02DC9A 0B:9C8A: 01        .byte $01   ; 
- D 0 - I - 0x02DC9B 0B:9C8B: 01        .byte $01   ; 
- D 0 - I - 0x02DC9C 0B:9C8C: 0C        .byte $0C   ; 
- D 0 - I - 0x02DC9D 0B:9C8D: 00        .byte $00   ; 
- D 0 - I - 0x02DC9E 0B:9C8E: 82        .byte $82   ; 
- D 0 - I - 0x02DC9F 0B:9C8F: 01        .byte $01   ; 
- D 0 - I - 0x02DCA0 0B:9C90: 01        .byte $01   ; 
- D 0 - I - 0x02DCA1 0B:9C91: C8        .byte $C8   ; 
- D 0 - I - 0x02DCA2 0B:9C92: 2B        .byte $2B   ; 
- D 0 - I - 0x02DCA3 0B:9C93: C8        .byte $C8   ; 
- D 0 - I - 0x02DCA4 0B:9C94: 73        .byte $73   ; 
- D 0 - I - 0x02DCA5 0B:9C95: 82        .byte $82   ; 
- D 0 - I - 0x02DCA6 0B:9C96: 01        .byte $01   ; 
- D 0 - I - 0x02DCA7 0B:9C97: 01        .byte $01   ; 
- D 0 - I - 0x02DCA8 0B:9C98: 0C        .byte $0C   ; 
- D 0 - I - 0x02DCA9 0B:9C99: 00        .byte $00   ; 
- D 0 - I - 0x02DCAA 0B:9C9A: 82        .byte $82   ; 
- D 0 - I - 0x02DCAB 0B:9C9B: 01        .byte $01   ; 
- D 0 - I - 0x02DCAC 0B:9C9C: 01        .byte $01   ; 
- D 0 - I - 0x02DCAD 0B:9C9D: C3        .byte $C3   ; 
- D 0 - I - 0x02DCAE 0B:9C9E: 33        .byte $33   ; 
- D 0 - I - 0x02DCAF 0B:9C9F: 81        .byte $81   ; 
- D 0 - I - 0x02DCB0 0B:9CA0: 01        .byte $01   ; 
- D 0 - I - 0x02DCB1 0B:9CA1: C4        .byte $C4   ; 
- D 0 - I - 0x02DCB2 0B:9CA2: 36        .byte $36   ; 
- D 0 - I - 0x02DCB3 0B:9CA3: C9        .byte $C9   ; 
- D 0 - I - 0x02DCB4 0B:9CA4: 7B        .byte $7B   ; 
- D 0 - I - 0x02DCB5 0B:9CA5: 81        .byte $81   ; 
- D 0 - I - 0x02DCB6 0B:9CA6: 01        .byte $01   ; 
- D 0 - I - 0x02DCB7 0B:9CA7: 0C        .byte $0C   ; 
- D 0 - I - 0x02DCB8 0B:9CA8: 00        .byte $00   ; 
- D 0 - I - 0x02DCB9 0B:9CA9: 82        .byte $82   ; 
- D 0 - I - 0x02DCBA 0B:9CAA: 01        .byte $01   ; 
- D 0 - I - 0x02DCBB 0B:9CAB: 01        .byte $01   ; 
- D 0 - I - 0x02DCBC 0B:9CAC: C8        .byte $C8   ; 
- D 0 - I - 0x02DCBD 0B:9CAD: 3A        .byte $3A   ; 
- D 0 - I - 0x02DCBE 0B:9CAE: CA        .byte $CA   ; 
- D 0 - I - 0x02DCBF 0B:9CAF: 84        .byte $84   ; 
- D 0 - I - 0x02DCC0 0B:9CB0: 0C        .byte $0C   ; 
- D 0 - I - 0x02DCC1 0B:9CB1: 00        .byte $00   ; 
- D 0 - I - 0x02DCC2 0B:9CB2: 82        .byte $82   ; 
- D 0 - I - 0x02DCC3 0B:9CB3: 01        .byte $01   ; 
- D 0 - I - 0x02DCC4 0B:9CB4: 01        .byte $01   ; 
- D 0 - I - 0x02DCC5 0B:9CB5: C8        .byte $C8   ; 
- D 0 - I - 0x02DCC6 0B:9CB6: 42        .byte $42   ; 
- D 0 - I - 0x02DCC7 0B:9CB7: CA        .byte $CA   ; 
- D 0 - I - 0x02DCC8 0B:9CB8: 8E        .byte $8E   ; 
- D 0 - I - 0x02DCC9 0B:9CB9: 0C        .byte $0C   ; 
- D 0 - I - 0x02DCCA 0B:9CBA: 00        .byte $00   ; 
- D 0 - I - 0x02DCCB 0B:9CBB: 82        .byte $82   ; 
- D 0 - I - 0x02DCCC 0B:9CBC: 01        .byte $01   ; 
- D 0 - I - 0x02DCCD 0B:9CBD: 01        .byte $01   ; 
- D 0 - I - 0x02DCCE 0B:9CBE: C8        .byte $C8   ; 
- D 0 - I - 0x02DCCF 0B:9CBF: 4A        .byte $4A   ; 
- D 0 - I - 0x02DCD0 0B:9CC0: CA        .byte $CA   ; 
- D 0 - I - 0x02DCD1 0B:9CC1: 98        .byte $98   ; 
- D 0 - I - 0x02DCD2 0B:9CC2: 0C        .byte $0C   ; 
- D 0 - I - 0x02DCD3 0B:9CC3: 00        .byte $00   ; 
- D 0 - I - 0x02DCD4 0B:9CC4: 82        .byte $82   ; 
- D 0 - I - 0x02DCD5 0B:9CC5: 01        .byte $01   ; 
- D 0 - I - 0x02DCD6 0B:9CC6: 01        .byte $01   ; 
- D 0 - I - 0x02DCD7 0B:9CC7: C4        .byte $C4   ; 
- D 0 - I - 0x02DCD8 0B:9CC8: 52        .byte $52   ; 
- D 0 - I - 0x02DCD9 0B:9CC9: 81        .byte $81   ; 
- D 0 - I - 0x02DCDA 0B:9CCA: 01        .byte $01   ; 
- D 0 - I - 0x02DCDB 0B:9CCB: C3        .byte $C3   ; 
- D 0 - I - 0x02DCDC 0B:9CCC: 56        .byte $56   ; 
- D 0 - I - 0x02DCDD 0B:9CCD: CA        .byte $CA   ; 
- D 0 - I - 0x02DCDE 0B:9CCE: A2        .byte $A2   ; 
- D 0 - I - 0x02DCDF 0B:9CCF: 0C        .byte $0C   ; 
- D 0 - I - 0x02DCE0 0B:9CD0: 00        .byte $00   ; 
- D 0 - I - 0x02DCE1 0B:9CD1: 81        .byte $81   ; 
- D 0 - I - 0x02DCE2 0B:9CD2: 01        .byte $01   ; 
- D 0 - I - 0x02DCE3 0B:9CD3: C5        .byte $C5   ; 
- D 0 - I - 0x02DCE4 0B:9CD4: AC        .byte $AC   ; 
- D 0 - I - 0x02DCE5 0B:9CD5: 81        .byte $81   ; 
- D 0 - I - 0x02DCE6 0B:9CD6: 01        .byte $01   ; 
- D 0 - I - 0x02DCE7 0B:9CD7: C3        .byte $C3   ; 
- D 0 - I - 0x02DCE8 0B:9CD8: B1        .byte $B1   ; 
- D 0 - I - 0x02DCE9 0B:9CD9: 82        .byte $82   ; 
- D 0 - I - 0x02DCEA 0B:9CDA: BE        .byte $BE   ; 
- D 0 - I - 0x02DCEB 0B:9CDB: 00        .byte $00   ; 
- D 0 - I - 0x02DCEC 0B:9CDC: C5        .byte $C5   ; 
- D 0 - I - 0x02DCED 0B:9CDD: BF        .byte $BF   ; 
- D 0 - I - 0x02DCEE 0B:9CDE: 03        .byte $03   ; 
- D 0 - I - 0x02DCEF 0B:9CDF: 01        .byte $01   ; 
- D 0 - I - 0x02DCF0 0B:9CE0: 0C        .byte $0C   ; 
- D 0 - I - 0x02DCF1 0B:9CE1: 00        .byte $00   ; 
- D 0 - I - 0x02DCF2 0B:9CE2: 81        .byte $81   ; 
- D 0 - I - 0x02DCF3 0B:9CE3: 01        .byte $01   ; 
- D 0 - I - 0x02DCF4 0B:9CE4: C9        .byte $C9   ; 
- D 0 - I - 0x02DCF5 0B:9CE5: B4        .byte $B4   ; 
- D 0 - I - 0x02DCF6 0B:9CE6: C7        .byte $C7   ; 
- D 0 - I - 0x02DCF7 0B:9CE7: C4        .byte $C4   ; 
- D 0 - I - 0x02DCF8 0B:9CE8: 03        .byte $03   ; 
- D 0 - I - 0x02DCF9 0B:9CE9: 01        .byte $01   ; 
- D 0 - I - 0x02DCFA 0B:9CEA: 7E        .byte $7E   ; 
- D 0 - I - 0x02DCFB 0B:9CEB: 00        .byte $00   ; 
- D 0 - I - 0x02DCFC 0B:9CEC: 7E        .byte $7E   ; 
- D 0 - I - 0x02DCFD 0B:9CED: 00        .byte $00   ; 
- D 0 - I - 0x02DCFE 0B:9CEE: 7E        .byte $7E   ; 
- D 0 - I - 0x02DCFF 0B:9CEF: 00        .byte $00   ; 
- D 0 - I - 0x02DD00 0B:9CF0: 20        .byte $20   ; 
- D 0 - I - 0x02DD01 0B:9CF1: 00        .byte $00   ; 
- D 0 - I - 0x02DD02 0B:9CF2: 81        .byte $81   ; 
- D 0 - I - 0x02DD03 0B:9CF3: 0C        .byte $0C   ; 
- D 0 - I - 0x02DD04 0B:9CF4: 05        .byte $05   ; 
- D 0 - I - 0x02DD05 0B:9CF5: 00        .byte $00   ; 
- D 0 - I - 0x02DD06 0B:9CF6: 84        .byte $84   ; 
- D 0 - I - 0x02DD07 0B:9CF7: 55        .byte $55   ; 
- D 0 - I - 0x02DD08 0B:9CF8: 45        .byte $45   ; 
- D 0 - I - 0x02DD09 0B:9CF9: 31        .byte $31   ; 
- D 0 - I - 0x02DD0A 0B:9CFA: 3D        .byte $3D   ; 
- D 0 - I - 0x02DD0B 0B:9CFB: 03        .byte $03   ; 
- D 0 - I - 0x02DD0C 0B:9CFC: 00        .byte $00   ; 
- D 0 - I - 0x02DD0D 0B:9CFD: 83        .byte $83   ; 
- D 0 - I - 0x02DD0E 0B:9CFE: 08        .byte $08   ; 
- D 0 - I - 0x02DD0F 0B:9CFF: 0A        .byte $0A   ; 
- D 0 - I - 0x02DD10 0B:9D00: 0C        .byte $0C   ; 
- D 0 - I - 0x02DD11 0B:9D01: 1C        .byte $1C   ; 
- D 0 - I - 0x02DD12 0B:9D02: 00        .byte $00   ; 
- D 0 - I - 0x02DD13 0B:9D03: FF        .byte $FF   ; 



.export _off003_0x02DD14_13
_off003_0x02DD14_13:
- D 0 - I - 0x02DD14 0B:9D04: 00        .byte $00   ; 
- D 0 - I - 0x02DD15 0B:9D05: 20        .byte $20   ; 
- D 0 - I - 0x02DD16 0B:9D06: 08        .byte $08   ; 
- D 0 - I - 0x02DD17 0B:9D07: 08        .byte $08   ; 
- D 0 - I - 0x02DD18 0B:9D08: 81        .byte $81   ; 
- D 0 - I - 0x02DD19 0B:9D09: C4        .byte $C4   ; 
- D 0 - I - 0x02DD1A 0B:9D0A: 04        .byte $04   ; 
- D 0 - I - 0x02DD1B 0B:9D0B: 24        .byte $24   ; 
- D 0 - I - 0x02DD1C 0B:9D0C: 05        .byte $05   ; 
- D 0 - I - 0x02DD1D 0B:9D0D: 08        .byte $08   ; 
- D 0 - I - 0x02DD1E 0B:9D0E: 81        .byte $81   ; 
- D 0 - I - 0x02DD1F 0B:9D0F: D8        .byte $D8   ; 
- D 0 - I - 0x02DD20 0B:9D10: 04        .byte $04   ; 
- D 0 - I - 0x02DD21 0B:9D11: D9        .byte $D9   ; 
- D 0 - I - 0x02DD22 0B:9D12: 81        .byte $81   ; 
- D 0 - I - 0x02DD23 0B:9D13: DA        .byte $DA   ; 
- D 0 - I - 0x02DD24 0B:9D14: 08        .byte $08   ; 
- D 0 - I - 0x02DD25 0B:9D15: 08        .byte $08   ; 
- D 0 - I - 0x02DD26 0B:9D16: 08        .byte $08   ; 
- D 0 - I - 0x02DD27 0B:9D17: C6        .byte $C6   ; 
- D 0 - I - 0x02DD28 0B:9D18: 82        .byte $82   ; 
- D 0 - I - 0x02DD29 0B:9D19: C7        .byte $C7   ; 
- D 0 - I - 0x02DD2A 0B:9D1A: C4        .byte $C4   ; 
- D 0 - I - 0x02DD2B 0B:9D1B: 03        .byte $03   ; 
- D 0 - I - 0x02DD2C 0B:9D1C: 24        .byte $24   ; 
- D 0 - I - 0x02DD2D 0B:9D1D: 04        .byte $04   ; 
- D 0 - I - 0x02DD2E 0B:9D1E: 08        .byte $08   ; 
- D 0 - I - 0x02DD2F 0B:9D1F: 82        .byte $82   ; 
- D 0 - I - 0x02DD30 0B:9D20: DB        .byte $DB   ; 
- D 0 - I - 0x02DD31 0B:9D21: D8        .byte $D8   ; 
- D 0 - I - 0x02DD32 0B:9D22: 03        .byte $03   ; 
- D 0 - I - 0x02DD33 0B:9D23: D9        .byte $D9   ; 
- D 0 - I - 0x02DD34 0B:9D24: 82        .byte $82   ; 
- D 0 - I - 0x02DD35 0B:9D25: DA        .byte $DA   ; 
- D 0 - I - 0x02DD36 0B:9D26: EB        .byte $EB   ; 
- D 0 - I - 0x02DD37 0B:9D27: 08        .byte $08   ; 
- D 0 - I - 0x02DD38 0B:9D28: C6        .byte $C6   ; 
- D 0 - I - 0x02DD39 0B:9D29: 87        .byte $87   ; 
- D 0 - I - 0x02DD3A 0B:9D2A: 08        .byte $08   ; 
- D 0 - I - 0x02DD3B 0B:9D2B: C8        .byte $C8   ; 
- D 0 - I - 0x02DD3C 0B:9D2C: C9        .byte $C9   ; 
- D 0 - I - 0x02DD3D 0B:9D2D: 08        .byte $08   ; 
- D 0 - I - 0x02DD3E 0B:9D2E: 08        .byte $08   ; 
- D 0 - I - 0x02DD3F 0B:9D2F: C8        .byte $C8   ; 
- D 0 - I - 0x02DD40 0B:9D30: C9        .byte $C9   ; 
- D 0 - I - 0x02DD41 0B:9D31: 03        .byte $03   ; 
- D 0 - I - 0x02DD42 0B:9D32: 08        .byte $08   ; 
- D 0 - I - 0x02DD43 0B:9D33: 8C        .byte $8C   ; 
- D 0 - I - 0x02DD44 0B:9D34: C4        .byte $C4   ; 
- D 0 - I - 0x02DD45 0B:9D35: 24        .byte $24   ; 
- D 0 - I - 0x02DD46 0B:9D36: 24        .byte $24   ; 
- D 0 - I - 0x02DD47 0B:9D37: CA        .byte $CA   ; 
- D 0 - I - 0x02DD48 0B:9D38: CB        .byte $CB   ; 
- D 0 - I - 0x02DD49 0B:9D39: C1        .byte $C1   ; 
- D 0 - I - 0x02DD4A 0B:9D3A: C2        .byte $C2   ; 
- D 0 - I - 0x02DD4B 0B:9D3B: F9        .byte $F9   ; 
- D 0 - I - 0x02DD4C 0B:9D3C: FA        .byte $FA   ; 
- D 0 - I - 0x02DD4D 0B:9D3D: D9        .byte $D9   ; 
- D 0 - I - 0x02DD4E 0B:9D3E: D9        .byte $D9   ; 
- D 0 - I - 0x02DD4F 0B:9D3F: DA        .byte $DA   ; 
- D 0 - I - 0x02DD50 0B:9D40: 03        .byte $03   ; 
- D 0 - I - 0x02DD51 0B:9D41: 08        .byte $08   ; 
- D 0 - I - 0x02DD52 0B:9D42: BE        .byte $BE   ; 
- D 0 - I - 0x02DD53 0B:9D43: C8        .byte $C8   ; 
- D 0 - I - 0x02DD54 0B:9D44: C9        .byte $C9   ; 
- D 0 - I - 0x02DD55 0B:9D45: 08        .byte $08   ; 
- D 0 - I - 0x02DD56 0B:9D46: 08        .byte $08   ; 
- D 0 - I - 0x02DD57 0B:9D47: C8        .byte $C8   ; 
- D 0 - I - 0x02DD58 0B:9D48: C9        .byte $C9   ; 
- D 0 - I - 0x02DD59 0B:9D49: 08        .byte $08   ; 
- D 0 - I - 0x02DD5A 0B:9D4A: C9        .byte $C9   ; 
- D 0 - I - 0x02DD5B 0B:9D4B: 08        .byte $08   ; 
- D 0 - I - 0x02DD5C 0B:9D4C: 08        .byte $08   ; 
- D 0 - I - 0x02DD5D 0B:9D4D: C8        .byte $C8   ; 
- D 0 - I - 0x02DD5E 0B:9D4E: C9        .byte $C9   ; 
- D 0 - I - 0x02DD5F 0B:9D4F: 08        .byte $08   ; 
- D 0 - I - 0x02DD60 0B:9D50: 08        .byte $08   ; 
- D 0 - I - 0x02DD61 0B:9D51: C8        .byte $C8   ; 
- D 0 - I - 0x02DD62 0B:9D52: C9        .byte $C9   ; 
- D 0 - I - 0x02DD63 0B:9D53: 08        .byte $08   ; 
- D 0 - I - 0x02DD64 0B:9D54: 08        .byte $08   ; 
- D 0 - I - 0x02DD65 0B:9D55: C4        .byte $C4   ; 
- D 0 - I - 0x02DD66 0B:9D56: 24        .byte $24   ; 
- D 0 - I - 0x02DD67 0B:9D57: E9        .byte $E9   ; 
- D 0 - I - 0x02DD68 0B:9D58: EA        .byte $EA   ; 
- D 0 - I - 0x02DD69 0B:9D59: D1        .byte $D1   ; 
- D 0 - I - 0x02DD6A 0B:9D5A: D2        .byte $D2   ; 
- D 0 - I - 0x02DD6B 0B:9D5B: FB        .byte $FB   ; 
- D 0 - I - 0x02DD6C 0B:9D5C: FC        .byte $FC   ; 
- D 0 - I - 0x02DD6D 0B:9D5D: D9        .byte $D9   ; 
- D 0 - I - 0x02DD6E 0B:9D5E: DA        .byte $DA   ; 
- D 0 - I - 0x02DD6F 0B:9D5F: 08        .byte $08   ; 
- D 0 - I - 0x02DD70 0B:9D60: 08        .byte $08   ; 
- D 0 - I - 0x02DD71 0B:9D61: C8        .byte $C8   ; 
- D 0 - I - 0x02DD72 0B:9D62: C9        .byte $C9   ; 
- D 0 - I - 0x02DD73 0B:9D63: 08        .byte $08   ; 
- D 0 - I - 0x02DD74 0B:9D64: 08        .byte $08   ; 
- D 0 - I - 0x02DD75 0B:9D65: C8        .byte $C8   ; 
- D 0 - I - 0x02DD76 0B:9D66: C9        .byte $C9   ; 
- D 0 - I - 0x02DD77 0B:9D67: 08        .byte $08   ; 
- D 0 - I - 0x02DD78 0B:9D68: 08        .byte $08   ; 
- D 0 - I - 0x02DD79 0B:9D69: C8        .byte $C8   ; 
- D 0 - I - 0x02DD7A 0B:9D6A: EB        .byte $EB   ; 
- D 0 - I - 0x02DD7B 0B:9D6B: C6        .byte $C6   ; 
- D 0 - I - 0x02DD7C 0B:9D6C: C6        .byte $C6   ; 
- D 0 - I - 0x02DD7D 0B:9D6D: C7        .byte $C7   ; 
- D 0 - I - 0x02DD7E 0B:9D6E: EC        .byte $EC   ; 
- D 0 - I - 0x02DD7F 0B:9D6F: ED        .byte $ED   ; 
- D 0 - I - 0x02DD80 0B:9D70: ED        .byte $ED   ; 
- D 0 - I - 0x02DD81 0B:9D71: D3        .byte $D3   ; 
- D 0 - I - 0x02DD82 0B:9D72: EB        .byte $EB   ; 
- D 0 - I - 0x02DD83 0B:9D73: C6        .byte $C6   ; 
- D 0 - I - 0x02DD84 0B:9D74: C6        .byte $C6   ; 
- D 0 - I - 0x02DD85 0B:9D75: C7        .byte $C7   ; 
- D 0 - I - 0x02DD86 0B:9D76: C4        .byte $C4   ; 
- D 0 - I - 0x02DD87 0B:9D77: 08        .byte $08   ; 
- D 0 - I - 0x02DD88 0B:9D78: 08        .byte $08   ; 
- D 0 - I - 0x02DD89 0B:9D79: D4        .byte $D4   ; 
- D 0 - I - 0x02DD8A 0B:9D7A: FD        .byte $FD   ; 
- D 0 - I - 0x02DD8B 0B:9D7B: 08        .byte $08   ; 
- D 0 - I - 0x02DD8C 0B:9D7C: D8        .byte $D8   ; 
- D 0 - I - 0x02DD8D 0B:9D7D: DA        .byte $DA   ; 
- D 0 - I - 0x02DD8E 0B:9D7E: EB        .byte $EB   ; 
- D 0 - I - 0x02DD8F 0B:9D7F: C6        .byte $C6   ; 
- D 0 - I - 0x02DD90 0B:9D80: C6        .byte $C6   ; 
- D 0 - I - 0x02DD91 0B:9D81: 89        .byte $89   ; 
- D 0 - I - 0x02DD92 0B:9D82: C7        .byte $C7   ; 
- D 0 - I - 0x02DD93 0B:9D83: EC        .byte $EC   ; 
- D 0 - I - 0x02DD94 0B:9D84: ED        .byte $ED   ; 
- D 0 - I - 0x02DD95 0B:9D85: ED        .byte $ED   ; 
- D 0 - I - 0x02DD96 0B:9D86: D3        .byte $D3   ; 
- D 0 - I - 0x02DD97 0B:9D87: EB        .byte $EB   ; 
- D 0 - I - 0x02DD98 0B:9D88: C6        .byte $C6   ; 
- D 0 - I - 0x02DD99 0B:9D89: C6        .byte $C6   ; 
- D 0 - I - 0x02DD9A 0B:9D8A: C7        .byte $C7   ; 
- D 0 - I - 0x02DD9B 0B:9D8B: 0C        .byte $0C   ; 
- D 0 - I - 0x02DD9C 0B:9D8C: D5        .byte $D5   ; 
- D 0 - I - 0x02DD9D 0B:9D8D: 81        .byte $81   ; 
- D 0 - I - 0x02DD9E 0B:9D8E: D6        .byte $D6   ; 
- D 0 - I - 0x02DD9F 0B:9D8F: 05        .byte $05   ; 
- D 0 - I - 0x02DDA0 0B:9D90: D5        .byte $D5   ; 
- D 0 - I - 0x02DDA1 0B:9D91: 81        .byte $81   ; 
- D 0 - I - 0x02DDA2 0B:9D92: EE        .byte $EE   ; 
- D 0 - I - 0x02DDA3 0B:9D93: 0D        .byte $0D   ; 
- D 0 - I - 0x02DDA4 0B:9D94: D5        .byte $D5   ; 
- D 0 - I - 0x02DDA5 0B:9D95: 83        .byte $83   ; 
- D 0 - I - 0x02DDA6 0B:9D96: 00        .byte $00   ; 
- D 0 - I - 0x02DDA7 0B:9D97: 6F        .byte $6F   ; 
- D 0 - I - 0x02DDA8 0B:9D98: 70        .byte $70   ; 
- D 0 - I - 0x02DDA9 0B:9D99: 1A        .byte $1A   ; 
- D 0 - I - 0x02DDAA 0B:9D9A: 00        .byte $00   ; 
- D 0 - I - 0x02DDAB 0B:9D9B: 85        .byte $85   ; 
- D 0 - I - 0x02DDAC 0B:9D9C: 6C        .byte $6C   ; 
- D 0 - I - 0x02DDAD 0B:9D9D: 6D        .byte $6D   ; 
- D 0 - I - 0x02DDAE 0B:9D9E: 00        .byte $00   ; 
- D 0 - I - 0x02DDAF 0B:9D9F: 00        .byte $00   ; 
- D 0 - I - 0x02DDB0 0B:9DA0: 71        .byte $71   ; 
- D 0 - I - 0x02DDB1 0B:9DA1: 1C        .byte $1C   ; 
- D 0 - I - 0x02DDB2 0B:9DA2: 00        .byte $00   ; 
- D 0 - I - 0x02DDB3 0B:9DA3: 81        .byte $81   ; 
- D 0 - I - 0x02DDB4 0B:9DA4: 6E        .byte $6E   ; 
- D 0 - I - 0x02DDB5 0B:9DA5: 04        .byte $04   ; 
- D 0 - I - 0x02DDB6 0B:9DA6: 00        .byte $00   ; 
- D 0 - I - 0x02DDB7 0B:9DA7: 84        .byte $84   ; 
- D 0 - I - 0x02DDB8 0B:9DA8: 82        .byte $82   ; 
- D 0 - I - 0x02DDB9 0B:9DA9: 9D        .byte $9D   ; 
- D 0 - I - 0x02DDBA 0B:9DAA: 9E        .byte $9E   ; 
- D 0 - I - 0x02DDBB 0B:9DAB: 80        .byte $80   ; 
- D 0 - I - 0x02DDBC 0B:9DAC: 53        .byte $53   ; 
- D 0 - I - 0x02DDBD 0B:9DAD: 00        .byte $00   ; 
- D 0 - I - 0x02DDBE 0B:9DAE: C3        .byte $C3   ; 
- D 0 - I - 0x02DDBF 0B:9DAF: 01        .byte $01   ; 
- D 0 - I - 0x02DDC0 0B:9DB0: 06        .byte $06   ; 
- D 0 - I - 0x02DDC1 0B:9DB1: 00        .byte $00   ; 
- D 0 - I - 0x02DDC2 0B:9DB2: 84        .byte $84   ; 
- D 0 - I - 0x02DDC3 0B:9DB3: 83        .byte $83   ; 
- D 0 - I - 0x02DDC4 0B:9DB4: 98        .byte $98   ; 
- D 0 - I - 0x02DDC5 0B:9DB5: 8E        .byte $8E   ; 
- D 0 - I - 0x02DDC6 0B:9DB6: 80        .byte $80   ; 
- D 0 - I - 0x02DDC7 0B:9DB7: 11        .byte $11   ; 
- D 0 - I - 0x02DDC8 0B:9DB8: 00        .byte $00   ; 
- D 0 - I - 0x02DDC9 0B:9DB9: C4        .byte $C4   ; 
- D 0 - I - 0x02DDCA 0B:9DBA: 04        .byte $04   ; 
- D 0 - I - 0x02DDCB 0B:9DBB: 82        .byte $82   ; 
- D 0 - I - 0x02DDCC 0B:9DBC: 75        .byte $75   ; 
- D 0 - I - 0x02DDCD 0B:9DBD: 09        .byte $09   ; 
- D 0 - I - 0x02DDCE 0B:9DBE: 04        .byte $04   ; 
- D 0 - I - 0x02DDCF 0B:9DBF: 00        .byte $00   ; 
- D 0 - I - 0x02DDD0 0B:9DC0: 83        .byte $83   ; 
- D 0 - I - 0x02DDD1 0B:9DC1: 80        .byte $80   ; 
- D 0 - I - 0x02DDD2 0B:9DC2: 00        .byte $00   ; 
- D 0 - I - 0x02DDD3 0B:9DC3: 80        .byte $80   ; 
- D 0 - I - 0x02DDD4 0B:9DC4: 13        .byte $13   ; 
- D 0 - I - 0x02DDD5 0B:9DC5: 00        .byte $00   ; 
- D 0 - I - 0x02DDD6 0B:9DC6: C6        .byte $C6   ; 
- D 0 - I - 0x02DDD7 0B:9DC7: 0A        .byte $0A   ; 
- D 0 - I - 0x02DDD8 0B:9DC8: 19        .byte $19   ; 
- D 0 - I - 0x02DDD9 0B:9DC9: 00        .byte $00   ; 
- D 0 - I - 0x02DDDA 0B:9DCA: C8        .byte $C8   ; 
- D 0 - I - 0x02DDDB 0B:9DCB: 10        .byte $10   ; 
- D 0 - I - 0x02DDDC 0B:9DCC: 04        .byte $04   ; 
- D 0 - I - 0x02DDDD 0B:9DCD: 00        .byte $00   ; 
- D 0 - I - 0x02DDDE 0B:9DCE: 83        .byte $83   ; 
- D 0 - I - 0x02DDDF 0B:9DCF: 84        .byte $84   ; 
- D 0 - I - 0x02DDE0 0B:9DD0: 9C        .byte $9C   ; 
- D 0 - I - 0x02DDE1 0B:9DD1: 8E        .byte $8E   ; 
- D 0 - I - 0x02DDE2 0B:9DD2: 11        .byte $11   ; 
- D 0 - I - 0x02DDE3 0B:9DD3: 00        .byte $00   ; 
- D 0 - I - 0x02DDE4 0B:9DD4: C8        .byte $C8   ; 
- D 0 - I - 0x02DDE5 0B:9DD5: 18        .byte $18   ; 
- D 0 - I - 0x02DDE6 0B:9DD6: 18        .byte $18   ; 
- D 0 - I - 0x02DDE7 0B:9DD7: 00        .byte $00   ; 
- D 0 - I - 0x02DDE8 0B:9DD8: C8        .byte $C8   ; 
- D 0 - I - 0x02DDE9 0B:9DD9: 20        .byte $20   ; 
- D 0 - I - 0x02DDEA 0B:9DDA: 19        .byte $19   ; 
- D 0 - I - 0x02DDEB 0B:9DDB: 00        .byte $00   ; 
- D 0 - I - 0x02DDEC 0B:9DDC: C6        .byte $C6   ; 
- D 0 - I - 0x02DDED 0B:9DDD: 28        .byte $28   ; 
- D 0 - I - 0x02DDEE 0B:9DDE: 05        .byte $05   ; 
- D 0 - I - 0x02DDEF 0B:9DDF: 00        .byte $00   ; 
- D 0 - I - 0x02DDF0 0B:9DE0: 83        .byte $83   ; 
- D 0 - I - 0x02DDF1 0B:9DE1: 85        .byte $85   ; 
- D 0 - I - 0x02DDF2 0B:9DE2: 9E        .byte $9E   ; 
- D 0 - I - 0x02DDF3 0B:9DE3: 92        .byte $92   ; 
- D 0 - I - 0x02DDF4 0B:9DE4: 10        .byte $10   ; 
- D 0 - I - 0x02DDF5 0B:9DE5: 00        .byte $00   ; 
- D 0 - I - 0x02DDF6 0B:9DE6: C7        .byte $C7   ; 
- D 0 - I - 0x02DDF7 0B:9DE7: 2E        .byte $2E   ; 
- D 0 - I - 0x02DDF8 0B:9DE8: 81        .byte $81   ; 
- D 0 - I - 0x02DDF9 0B:9DE9: 6B        .byte $6B   ; 
- D 0 - I - 0x02DDFA 0B:9DEA: 04        .byte $04   ; 
- D 0 - I - 0x02DDFB 0B:9DEB: 00        .byte $00   ; 
- D 0 - I - 0x02DDFC 0B:9DEC: 83        .byte $83   ; 
- D 0 - I - 0x02DDFD 0B:9DED: 80        .byte $80   ; 
- D 0 - I - 0x02DDFE 0B:9DEE: 00        .byte $00   ; 
- D 0 - I - 0x02DDFF 0B:9DEF: 80        .byte $80   ; 
- D 0 - I - 0x02DE00 0B:9DF0: 10        .byte $10   ; 
- D 0 - I - 0x02DE01 0B:9DF1: 00        .byte $00   ; 
- D 0 - I - 0x02DE02 0B:9DF2: C3        .byte $C3   ; 
- D 0 - I - 0x02DE03 0B:9DF3: 35        .byte $35   ; 
- D 0 - I - 0x02DE04 0B:9DF4: 81        .byte $81   ; 
- D 0 - I - 0x02DE05 0B:9DF5: 00        .byte $00   ; 
- D 0 - I - 0x02DE06 0B:9DF6: C5        .byte $C5   ; 
- D 0 - I - 0x02DE07 0B:9DF7: 38        .byte $38   ; 
- D 0 - I - 0x02DE08 0B:9DF8: 17        .byte $17   ; 
- D 0 - I - 0x02DE09 0B:9DF9: 00        .byte $00   ; 
- D 0 - I - 0x02DE0A 0B:9DFA: C9        .byte $C9   ; 
- D 0 - I - 0x02DE0B 0B:9DFB: 3D        .byte $3D   ; 
- D 0 - I - 0x02DE0C 0B:9DFC: 05        .byte $05   ; 
- D 0 - I - 0x02DE0D 0B:9DFD: 00        .byte $00   ; 
- D 0 - I - 0x02DE0E 0B:9DFE: 83        .byte $83   ; 
- D 0 - I - 0x02DE0F 0B:9DFF: 86        .byte $86   ; 
- D 0 - I - 0x02DE10 0B:9E00: 9E        .byte $9E   ; 
- D 0 - I - 0x02DE11 0B:9E01: 92        .byte $92   ; 
- D 0 - I - 0x02DE12 0B:9E02: 0F        .byte $0F   ; 
- D 0 - I - 0x02DE13 0B:9E03: 00        .byte $00   ; 
- D 0 - I - 0x02DE14 0B:9E04: C9        .byte $C9   ; 
- D 0 - I - 0x02DE15 0B:9E05: 46        .byte $46   ; 
- D 0 - I - 0x02DE16 0B:9E06: 17        .byte $17   ; 
- D 0 - I - 0x02DE17 0B:9E07: 00        .byte $00   ; 
- D 0 - I - 0x02DE18 0B:9E08: C9        .byte $C9   ; 
- D 0 - I - 0x02DE19 0B:9E09: 4F        .byte $4F   ; 
- D 0 - I - 0x02DE1A 0B:9E0A: 03        .byte $03   ; 
- D 0 - I - 0x02DE1B 0B:9E0B: 00        .byte $00   ; 
- D 0 - I - 0x02DE1C 0B:9E0C: 81        .byte $81   ; 
- D 0 - I - 0x02DE1D 0B:9E0D: 72        .byte $72   ; 
- D 0 - I - 0x02DE1E 0B:9E0E: 13        .byte $13   ; 
- D 0 - I - 0x02DE1F 0B:9E0F: 00        .byte $00   ; 
- D 0 - I - 0x02DE20 0B:9E10: C9        .byte $C9   ; 
- D 0 - I - 0x02DE21 0B:9E11: 58        .byte $58   ; 
- D 0 - I - 0x02DE22 0B:9E12: 03        .byte $03   ; 
- D 0 - I - 0x02DE23 0B:9E13: 00        .byte $00   ; 
- D 0 - I - 0x02DE24 0B:9E14: 82        .byte $82   ; 
- D 0 - I - 0x02DE25 0B:9E15: 73        .byte $73   ; 
- D 0 - I - 0x02DE26 0B:9E16: 70        .byte $70   ; 
- D 0 - I - 0x02DE27 0B:9E17: 12        .byte $12   ; 
- D 0 - I - 0x02DE28 0B:9E18: 00        .byte $00   ; 
- D 0 - I - 0x02DE29 0B:9E19: CA        .byte $CA   ; 
- D 0 - I - 0x02DE2A 0B:9E1A: 61        .byte $61   ; 
- D 0 - I - 0x02DE2B 0B:9E1B: 81        .byte $81   ; 
- D 0 - I - 0x02DE2C 0B:9E1C: 00        .byte $00   ; 
- D 0 - I - 0x02DE2D 0B:9E1D: 20        .byte $20   ; 
- D 0 - I - 0x02DE2E 0B:9E1E: D5        .byte $D5   ; 
- D 0 - I - 0x02DE2F 0B:9E1F: 81        .byte $81   ; 
- D 0 - I - 0x02DE30 0B:9E20: DB        .byte $DB   ; 
- D 0 - I - 0x02DE31 0B:9E21: 03        .byte $03   ; 
- D 0 - I - 0x02DE32 0B:9E22: 08        .byte $08   ; 
- D 0 - I - 0x02DE33 0B:9E23: 98        .byte $98   ; 
- D 0 - I - 0x02DE34 0B:9E24: EF        .byte $EF   ; 
- D 0 - I - 0x02DE35 0B:9E25: D4        .byte $D4   ; 
- D 0 - I - 0x02DE36 0B:9E26: FE        .byte $FE   ; 
- D 0 - I - 0x02DE37 0B:9E27: FD        .byte $FD   ; 
- D 0 - I - 0x02DE38 0B:9E28: FF        .byte $FF   ; 
- D 0 - I - 0x02DE39 0B:9E29: 08        .byte $08   ; 
- D 0 - I - 0x02DE3A 0B:9E2A: 08        .byte $08   ; 
- D 0 - I - 0x02DE3B 0B:9E2B: DB        .byte $DB   ; 
- D 0 - I - 0x02DE3C 0B:9E2C: 08        .byte $08   ; 
- D 0 - I - 0x02DE3D 0B:9E2D: 08        .byte $08   ; 
- D 0 - I - 0x02DE3E 0B:9E2E: DB        .byte $DB   ; 
- D 0 - I - 0x02DE3F 0B:9E2F: 08        .byte $08   ; 
- D 0 - I - 0x02DE40 0B:9E30: 08        .byte $08   ; 
- D 0 - I - 0x02DE41 0B:9E31: DB        .byte $DB   ; 
- D 0 - I - 0x02DE42 0B:9E32: 08        .byte $08   ; 
- D 0 - I - 0x02DE43 0B:9E33: 08        .byte $08   ; 
- D 0 - I - 0x02DE44 0B:9E34: DB        .byte $DB   ; 
- D 0 - I - 0x02DE45 0B:9E35: 08        .byte $08   ; 
- D 0 - I - 0x02DE46 0B:9E36: 08        .byte $08   ; 
- D 0 - I - 0x02DE47 0B:9E37: EF        .byte $EF   ; 
- D 0 - I - 0x02DE48 0B:9E38: D4        .byte $D4   ; 
- D 0 - I - 0x02DE49 0B:9E39: FE        .byte $FE   ; 
- D 0 - I - 0x02DE4A 0B:9E3A: FD        .byte $FD   ; 
- D 0 - I - 0x02DE4B 0B:9E3B: FF        .byte $FF   ; 
- D 0 - I - 0x02DE4C 0B:9E3C: 03        .byte $03   ; 
- D 0 - I - 0x02DE4D 0B:9E3D: 08        .byte $08   ; 
- D 0 - I - 0x02DE4E 0B:9E3E: 86        .byte $86   ; 
- D 0 - I - 0x02DE4F 0B:9E3F: DB        .byte $DB   ; 
- D 0 - I - 0x02DE50 0B:9E40: C6        .byte $C6   ; 
- D 0 - I - 0x02DE51 0B:9E41: C7        .byte $C7   ; 
- D 0 - I - 0x02DE52 0B:9E42: 08        .byte $08   ; 
- D 0 - I - 0x02DE53 0B:9E43: EF        .byte $EF   ; 
- D 0 - I - 0x02DE54 0B:9E44: 24        .byte $24   ; 
- D 0 - I - 0x02DE55 0B:9E45: 03        .byte $03   ; 
- D 0 - I - 0x02DE56 0B:9E46: 08        .byte $08   ; 
- D 0 - I - 0x02DE57 0B:9E47: 90        .byte $90   ; 
- D 0 - I - 0x02DE58 0B:9E48: D9        .byte $D9   ; 
- D 0 - I - 0x02DE59 0B:9E49: FF        .byte $FF   ; 
- D 0 - I - 0x02DE5A 0B:9E4A: EB        .byte $EB   ; 
- D 0 - I - 0x02DE5B 0B:9E4B: C6        .byte $C6   ; 
- D 0 - I - 0x02DE5C 0B:9E4C: C7        .byte $C7   ; 
- D 0 - I - 0x02DE5D 0B:9E4D: EC        .byte $EC   ; 
- D 0 - I - 0x02DE5E 0B:9E4E: ED        .byte $ED   ; 
- D 0 - I - 0x02DE5F 0B:9E4F: D3        .byte $D3   ; 
- D 0 - I - 0x02DE60 0B:9E50: EC        .byte $EC   ; 
- D 0 - I - 0x02DE61 0B:9E51: ED        .byte $ED   ; 
- D 0 - I - 0x02DE62 0B:9E52: D3        .byte $D3   ; 
- D 0 - I - 0x02DE63 0B:9E53: EB        .byte $EB   ; 
- D 0 - I - 0x02DE64 0B:9E54: C6        .byte $C6   ; 
- D 0 - I - 0x02DE65 0B:9E55: C7        .byte $C7   ; 
- D 0 - I - 0x02DE66 0B:9E56: EF        .byte $EF   ; 
- D 0 - I - 0x02DE67 0B:9E57: 24        .byte $24   ; 
- D 0 - I - 0x02DE68 0B:9E58: 03        .byte $03   ; 
- D 0 - I - 0x02DE69 0B:9E59: 08        .byte $08   ; 
- D 0 - I - 0x02DE6A 0B:9E5A: 92        .byte $92   ; 
- D 0 - I - 0x02DE6B 0B:9E5B: D9        .byte $D9   ; 
- D 0 - I - 0x02DE6C 0B:9E5C: FF        .byte $FF   ; 
- D 0 - I - 0x02DE6D 0B:9E5D: 08        .byte $08   ; 
- D 0 - I - 0x02DE6E 0B:9E5E: EB        .byte $EB   ; 
- D 0 - I - 0x02DE6F 0B:9E5F: C6        .byte $C6   ; 
- D 0 - I - 0x02DE70 0B:9E60: C7        .byte $C7   ; 
- D 0 - I - 0x02DE71 0B:9E61: 08        .byte $08   ; 
- D 0 - I - 0x02DE72 0B:9E62: EF        .byte $EF   ; 
- D 0 - I - 0x02DE73 0B:9E63: 24        .byte $24   ; 
- D 0 - I - 0x02DE74 0B:9E64: 24        .byte $24   ; 
- D 0 - I - 0x02DE75 0B:9E65: DB        .byte $DB   ; 
- D 0 - I - 0x02DE76 0B:9E66: 08        .byte $08   ; 
- D 0 - I - 0x02DE77 0B:9E67: 08        .byte $08   ; 
- D 0 - I - 0x02DE78 0B:9E68: D9        .byte $D9   ; 
- D 0 - I - 0x02DE79 0B:9E69: D9        .byte $D9   ; 
- D 0 - I - 0x02DE7A 0B:9E6A: FF        .byte $FF   ; 
- D 0 - I - 0x02DE7B 0B:9E6B: 08        .byte $08   ; 
- D 0 - I - 0x02DE7C 0B:9E6C: EB        .byte $EB   ; 
- D 0 - I - 0x02DE7D 0B:9E6D: 06        .byte $06   ; 
- D 0 - I - 0x02DE7E 0B:9E6E: C6        .byte $C6   ; 
- D 0 - I - 0x02DE7F 0B:9E6F: 8D        .byte $8D   ; 
- D 0 - I - 0x02DE80 0B:9E70: C7        .byte $C7   ; 
- D 0 - I - 0x02DE81 0B:9E71: 08        .byte $08   ; 
- D 0 - I - 0x02DE82 0B:9E72: EF        .byte $EF   ; 
- D 0 - I - 0x02DE83 0B:9E73: 24        .byte $24   ; 
- D 0 - I - 0x02DE84 0B:9E74: 24        .byte $24   ; 
- D 0 - I - 0x02DE85 0B:9E75: 08        .byte $08   ; 
- D 0 - I - 0x02DE86 0B:9E76: 08        .byte $08   ; 
- D 0 - I - 0x02DE87 0B:9E77: DB        .byte $DB   ; 
- D 0 - I - 0x02DE88 0B:9E78: D9        .byte $D9   ; 
- D 0 - I - 0x02DE89 0B:9E79: D9        .byte $D9   ; 
- D 0 - I - 0x02DE8A 0B:9E7A: FF        .byte $FF   ; 
- D 0 - I - 0x02DE8B 0B:9E7B: 08        .byte $08   ; 
- D 0 - I - 0x02DE8C 0B:9E7C: EB        .byte $EB   ; 
- D 0 - I - 0x02DE8D 0B:9E7D: 20        .byte $20   ; 
- D 0 - I - 0x02DE8E 0B:9E7E: D5        .byte $D5   ; 
- D 0 - I - 0x02DE8F 0B:9E7F: 20        .byte $20   ; 
- D 0 - I - 0x02DE90 0B:9E80: 00        .byte $00   ; 
- D 0 - I - 0x02DE91 0B:9E81: 88        .byte $88   ; 
- D 0 - I - 0x02DE92 0B:9E82: 50        .byte $50   ; 
- D 0 - I - 0x02DE93 0B:9E83: 50        .byte $50   ; 
- D 0 - I - 0x02DE94 0B:9E84: 10        .byte $10   ; 
- D 0 - I - 0x02DE95 0B:9E85: 00        .byte $00   ; 
- D 0 - I - 0x02DE96 0B:9E86: 00        .byte $00   ; 
- D 0 - I - 0x02DE97 0B:9E87: 40        .byte $40   ; 
- D 0 - I - 0x02DE98 0B:9E88: 50        .byte $50   ; 
- D 0 - I - 0x02DE99 0B:9E89: 50        .byte $50   ; 
- D 0 - I - 0x02DE9A 0B:9E8A: 05        .byte $05   ; 
- D 0 - I - 0x02DE9B 0B:9E8B: A0        .byte $A0   ; 
- D 0 - I - 0x02DE9C 0B:9E8C: 85        .byte $85   ; 
- D 0 - I - 0x02DE9D 0B:9E8D: 00        .byte $00   ; 
- D 0 - I - 0x02DE9E 0B:9E8E: 00        .byte $00   ; 
- D 0 - I - 0x02DE9F 0B:9E8F: A0        .byte $A0   ; 
- D 0 - I - 0x02DEA0 0B:9E90: 22        .byte $22   ; 
- D 0 - I - 0x02DEA1 0B:9E91: 00        .byte $00   ; 
- D 0 - I - 0x02DEA2 0B:9E92: 03        .byte $03   ; 
- D 0 - I - 0x02DEA3 0B:9E93: AA        .byte $AA   ; 
- D 0 - I - 0x02DEA4 0B:9E94: 03        .byte $03   ; 
- D 0 - I - 0x02DEA5 0B:9E95: FF        .byte $FF   ; 
- D 0 - I - 0x02DEA6 0B:9E96: 82        .byte $82   ; 
- D 0 - I - 0x02DEA7 0B:9E97: 22        .byte $22   ; 
- D 0 - I - 0x02DEA8 0B:9E98: 88        .byte $88   ; 
- D 0 - I - 0x02DEA9 0B:9E99: 03        .byte $03   ; 
- D 0 - I - 0x02DEAA 0B:9E9A: AA        .byte $AA   ; 
- D 0 - I - 0x02DEAB 0B:9E9B: 03        .byte $03   ; 
- D 0 - I - 0x02DEAC 0B:9E9C: FF        .byte $FF   ; 
- D 0 - I - 0x02DEAD 0B:9E9D: 82        .byte $82   ; 
- D 0 - I - 0x02DEAE 0B:9E9E: 22        .byte $22   ; 
- D 0 - I - 0x02DEAF 0B:9E9F: 88        .byte $88   ; 
- D 0 - I - 0x02DEB0 0B:9EA0: 03        .byte $03   ; 
- D 0 - I - 0x02DEB1 0B:9EA1: AA        .byte $AA   ; 
- D 0 - I - 0x02DEB2 0B:9EA2: 03        .byte $03   ; 
- D 0 - I - 0x02DEB3 0B:9EA3: FF        .byte $FF   ; 
- D 0 - I - 0x02DEB4 0B:9EA4: 82        .byte $82   ; 
- D 0 - I - 0x02DEB5 0B:9EA5: A2        .byte $A2   ; 
- D 0 - I - 0x02DEB6 0B:9EA6: A8        .byte $A8   ; 
- D 0 - I - 0x02DEB7 0B:9EA7: 03        .byte $03   ; 
- D 0 - I - 0x02DEB8 0B:9EA8: AA        .byte $AA   ; 
- D 0 - I - 0x02DEB9 0B:9EA9: 03        .byte $03   ; 
- D 0 - I - 0x02DEBA 0B:9EAA: FF        .byte $FF   ; 
- D 0 - I - 0x02DEBB 0B:9EAB: 10        .byte $10   ; 
- D 0 - I - 0x02DEBC 0B:9EAC: 00        .byte $00   ; 
- D 0 - I - 0x02DEBD 0B:9EAD: FF        .byte $FF   ; 



.export _off003_0x02DEBE_14
_off003_0x02DEBE_14:
- D 0 - I - 0x02DEBE 0B:9EAE: 00        .byte $00   ; 
- D 0 - I - 0x02DEBF 0B:9EAF: 24        .byte $24   ; 
- D 0 - I - 0x02DEC0 0B:9EB0: 21        .byte $21   ; 
- D 0 - I - 0x02DEC1 0B:9EB1: 00        .byte $00   ; 
- D 0 - I - 0x02DEC2 0B:9EB2: 81        .byte $81   ; 
- D 0 - I - 0x02DEC3 0B:9EB3: 77        .byte $77   ; 
- D 0 - I - 0x02DEC4 0B:9EB4: 08        .byte $08   ; 
- D 0 - I - 0x02DEC5 0B:9EB5: 7B        .byte $7B   ; 
- D 0 - I - 0x02DEC6 0B:9EB6: 81        .byte $81   ; 
- D 0 - I - 0x02DEC7 0B:9EB7: 78        .byte $78   ; 
- D 0 - I - 0x02DEC8 0B:9EB8: 16        .byte $16   ; 
- D 0 - I - 0x02DEC9 0B:9EB9: 00        .byte $00   ; 
- D 0 - I - 0x02DECA 0B:9EBA: 81        .byte $81   ; 
- D 0 - I - 0x02DECB 0B:9EBB: 7D        .byte $7D   ; 
- D 0 - I - 0x02DECC 0B:9EBC: 08        .byte $08   ; 
- D 0 - I - 0x02DECD 0B:9EBD: 00        .byte $00   ; 
- D 0 - I - 0x02DECE 0B:9EBE: 81        .byte $81   ; 
- D 0 - I - 0x02DECF 0B:9EBF: 7E        .byte $7E   ; 
- D 0 - I - 0x02DED0 0B:9EC0: 16        .byte $16   ; 
- D 0 - I - 0x02DED1 0B:9EC1: 00        .byte $00   ; 
- D 0 - I - 0x02DED2 0B:9EC2: 81        .byte $81   ; 
- D 0 - I - 0x02DED3 0B:9EC3: 7D        .byte $7D   ; 
- D 0 - I - 0x02DED4 0B:9EC4: 08        .byte $08   ; 
- D 0 - I - 0x02DED5 0B:9EC5: 00        .byte $00   ; 
- D 0 - I - 0x02DED6 0B:9EC6: 81        .byte $81   ; 
- D 0 - I - 0x02DED7 0B:9EC7: 7E        .byte $7E   ; 
- D 0 - I - 0x02DED8 0B:9EC8: 16        .byte $16   ; 
- D 0 - I - 0x02DED9 0B:9EC9: 00        .byte $00   ; 
- D 0 - I - 0x02DEDA 0B:9ECA: 81        .byte $81   ; 
- D 0 - I - 0x02DEDB 0B:9ECB: 7D        .byte $7D   ; 
- D 0 - I - 0x02DEDC 0B:9ECC: 08        .byte $08   ; 
- D 0 - I - 0x02DEDD 0B:9ECD: 00        .byte $00   ; 
- D 0 - I - 0x02DEDE 0B:9ECE: 81        .byte $81   ; 
- D 0 - I - 0x02DEDF 0B:9ECF: 7E        .byte $7E   ; 
- D 0 - I - 0x02DEE0 0B:9ED0: 16        .byte $16   ; 
- D 0 - I - 0x02DEE1 0B:9ED1: 00        .byte $00   ; 
- D 0 - I - 0x02DEE2 0B:9ED2: 81        .byte $81   ; 
- D 0 - I - 0x02DEE3 0B:9ED3: 7D        .byte $7D   ; 
- D 0 - I - 0x02DEE4 0B:9ED4: 08        .byte $08   ; 
- D 0 - I - 0x02DEE5 0B:9ED5: 00        .byte $00   ; 
- D 0 - I - 0x02DEE6 0B:9ED6: 81        .byte $81   ; 
- D 0 - I - 0x02DEE7 0B:9ED7: 7E        .byte $7E   ; 
- D 0 - I - 0x02DEE8 0B:9ED8: 16        .byte $16   ; 
- D 0 - I - 0x02DEE9 0B:9ED9: 00        .byte $00   ; 
- D 0 - I - 0x02DEEA 0B:9EDA: 81        .byte $81   ; 
- D 0 - I - 0x02DEEB 0B:9EDB: 7D        .byte $7D   ; 
- D 0 - I - 0x02DEEC 0B:9EDC: 08        .byte $08   ; 
- D 0 - I - 0x02DEED 0B:9EDD: 00        .byte $00   ; 
- D 0 - I - 0x02DEEE 0B:9EDE: 81        .byte $81   ; 
- D 0 - I - 0x02DEEF 0B:9EDF: 7E        .byte $7E   ; 
- D 0 - I - 0x02DEF0 0B:9EE0: 16        .byte $16   ; 
- D 0 - I - 0x02DEF1 0B:9EE1: 00        .byte $00   ; 
- D 0 - I - 0x02DEF2 0B:9EE2: 81        .byte $81   ; 
- D 0 - I - 0x02DEF3 0B:9EE3: 7D        .byte $7D   ; 
- D 0 - I - 0x02DEF4 0B:9EE4: 08        .byte $08   ; 
- D 0 - I - 0x02DEF5 0B:9EE5: 00        .byte $00   ; 
- D 0 - I - 0x02DEF6 0B:9EE6: 81        .byte $81   ; 
- D 0 - I - 0x02DEF7 0B:9EE7: 7E        .byte $7E   ; 
- D 0 - I - 0x02DEF8 0B:9EE8: 16        .byte $16   ; 
- D 0 - I - 0x02DEF9 0B:9EE9: 00        .byte $00   ; 
- D 0 - I - 0x02DEFA 0B:9EEA: 81        .byte $81   ; 
- D 0 - I - 0x02DEFB 0B:9EEB: 7D        .byte $7D   ; 
- D 0 - I - 0x02DEFC 0B:9EEC: 08        .byte $08   ; 
- D 0 - I - 0x02DEFD 0B:9EED: 00        .byte $00   ; 
- D 0 - I - 0x02DEFE 0B:9EEE: 81        .byte $81   ; 
- D 0 - I - 0x02DEFF 0B:9EEF: 7E        .byte $7E   ; 
- D 0 - I - 0x02DF00 0B:9EF0: 16        .byte $16   ; 
- D 0 - I - 0x02DF01 0B:9EF1: 00        .byte $00   ; 
- D 0 - I - 0x02DF02 0B:9EF2: 81        .byte $81   ; 
- D 0 - I - 0x02DF03 0B:9EF3: 7D        .byte $7D   ; 
- D 0 - I - 0x02DF04 0B:9EF4: 08        .byte $08   ; 
- D 0 - I - 0x02DF05 0B:9EF5: 00        .byte $00   ; 
- D 0 - I - 0x02DF06 0B:9EF6: 81        .byte $81   ; 
- D 0 - I - 0x02DF07 0B:9EF7: 7E        .byte $7E   ; 
- D 0 - I - 0x02DF08 0B:9EF8: 16        .byte $16   ; 
- D 0 - I - 0x02DF09 0B:9EF9: 00        .byte $00   ; 
- D 0 - I - 0x02DF0A 0B:9EFA: 81        .byte $81   ; 
- D 0 - I - 0x02DF0B 0B:9EFB: 79        .byte $79   ; 
- D 0 - I - 0x02DF0C 0B:9EFC: 08        .byte $08   ; 
- D 0 - I - 0x02DF0D 0B:9EFD: 7C        .byte $7C   ; 
- D 0 - I - 0x02DF0E 0B:9EFE: 81        .byte $81   ; 
- D 0 - I - 0x02DF0F 0B:9EFF: 7A        .byte $7A   ; 
- D 0 - I - 0x02DF10 0B:9F00: 42        .byte $42   ; 
- D 0 - I - 0x02DF11 0B:9F01: 00        .byte $00   ; 
- D 0 - I - 0x02DF12 0B:9F02: 82        .byte $82   ; 
- D 0 - I - 0x02DF13 0B:9F03: C0        .byte $C0   ; 
- D 0 - I - 0x02DF14 0B:9F04: 00        .byte $00   ; 
- D 0 - I - 0x02DF15 0B:9F05: C4        .byte $C4   ; 
- D 0 - I - 0x02DF16 0B:9F06: C1        .byte $C1   ; 
- D 0 - I - 0x02DF17 0B:9F07: 1A        .byte $1A   ; 
- D 0 - I - 0x02DF18 0B:9F08: 00        .byte $00   ; 
- D 0 - I - 0x02DF19 0B:9F09: C6        .byte $C6   ; 
- D 0 - I - 0x02DF1A 0B:9F0A: C5        .byte $C5   ; 
- D 0 - I - 0x02DF1B 0B:9F0B: 1A        .byte $1A   ; 
- D 0 - I - 0x02DF1C 0B:9F0C: 00        .byte $00   ; 
- D 0 - I - 0x02DF1D 0B:9F0D: C6        .byte $C6   ; 
- D 0 - I - 0x02DF1E 0B:9F0E: CB        .byte $CB   ; 
- D 0 - I - 0x02DF1F 0B:9F0F: 1A        .byte $1A   ; 
- D 0 - I - 0x02DF20 0B:9F10: 00        .byte $00   ; 
- D 0 - I - 0x02DF21 0B:9F11: C6        .byte $C6   ; 
- D 0 - I - 0x02DF22 0B:9F12: D1        .byte $D1   ; 
- D 0 - I - 0x02DF23 0B:9F13: 42        .byte $42   ; 
- D 0 - I - 0x02DF24 0B:9F14: 00        .byte $00   ; 
- D 0 - I - 0x02DF25 0B:9F15: 81        .byte $81   ; 
- D 0 - I - 0x02DF26 0B:9F16: 77        .byte $77   ; 
- D 0 - I - 0x02DF27 0B:9F17: 08        .byte $08   ; 
- D 0 - I - 0x02DF28 0B:9F18: 7B        .byte $7B   ; 
- D 0 - I - 0x02DF29 0B:9F19: 81        .byte $81   ; 
- D 0 - I - 0x02DF2A 0B:9F1A: 78        .byte $78   ; 
- D 0 - I - 0x02DF2B 0B:9F1B: 16        .byte $16   ; 
- D 0 - I - 0x02DF2C 0B:9F1C: 00        .byte $00   ; 
- D 0 - I - 0x02DF2D 0B:9F1D: 81        .byte $81   ; 
- D 0 - I - 0x02DF2E 0B:9F1E: 7D        .byte $7D   ; 
- D 0 - I - 0x02DF2F 0B:9F1F: 08        .byte $08   ; 
- D 0 - I - 0x02DF30 0B:9F20: 00        .byte $00   ; 
- D 0 - I - 0x02DF31 0B:9F21: 81        .byte $81   ; 
- D 0 - I - 0x02DF32 0B:9F22: 7E        .byte $7E   ; 
- D 0 - I - 0x02DF33 0B:9F23: 16        .byte $16   ; 
- D 0 - I - 0x02DF34 0B:9F24: 00        .byte $00   ; 
- D 0 - I - 0x02DF35 0B:9F25: 81        .byte $81   ; 
- D 0 - I - 0x02DF36 0B:9F26: 7D        .byte $7D   ; 
- D 0 - I - 0x02DF37 0B:9F27: 08        .byte $08   ; 
- D 0 - I - 0x02DF38 0B:9F28: 00        .byte $00   ; 
- D 0 - I - 0x02DF39 0B:9F29: 81        .byte $81   ; 
- D 0 - I - 0x02DF3A 0B:9F2A: 7E        .byte $7E   ; 
- D 0 - I - 0x02DF3B 0B:9F2B: 16        .byte $16   ; 
- D 0 - I - 0x02DF3C 0B:9F2C: 00        .byte $00   ; 
- D 0 - I - 0x02DF3D 0B:9F2D: 81        .byte $81   ; 
- D 0 - I - 0x02DF3E 0B:9F2E: 7D        .byte $7D   ; 
- D 0 - I - 0x02DF3F 0B:9F2F: 08        .byte $08   ; 
- D 0 - I - 0x02DF40 0B:9F30: 00        .byte $00   ; 
- D 0 - I - 0x02DF41 0B:9F31: 81        .byte $81   ; 
- D 0 - I - 0x02DF42 0B:9F32: 7E        .byte $7E   ; 
- D 0 - I - 0x02DF43 0B:9F33: 16        .byte $16   ; 
- D 0 - I - 0x02DF44 0B:9F34: 00        .byte $00   ; 
- D 0 - I - 0x02DF45 0B:9F35: 81        .byte $81   ; 
- D 0 - I - 0x02DF46 0B:9F36: 7D        .byte $7D   ; 
- D 0 - I - 0x02DF47 0B:9F37: 08        .byte $08   ; 
- D 0 - I - 0x02DF48 0B:9F38: 00        .byte $00   ; 
- D 0 - I - 0x02DF49 0B:9F39: 81        .byte $81   ; 
- D 0 - I - 0x02DF4A 0B:9F3A: 7E        .byte $7E   ; 
- D 0 - I - 0x02DF4B 0B:9F3B: 16        .byte $16   ; 
- D 0 - I - 0x02DF4C 0B:9F3C: 00        .byte $00   ; 
- D 0 - I - 0x02DF4D 0B:9F3D: 81        .byte $81   ; 
- D 0 - I - 0x02DF4E 0B:9F3E: 7D        .byte $7D   ; 
- D 0 - I - 0x02DF4F 0B:9F3F: 08        .byte $08   ; 
- D 0 - I - 0x02DF50 0B:9F40: 00        .byte $00   ; 
- D 0 - I - 0x02DF51 0B:9F41: 81        .byte $81   ; 
- D 0 - I - 0x02DF52 0B:9F42: 7E        .byte $7E   ; 
- D 0 - I - 0x02DF53 0B:9F43: 16        .byte $16   ; 
- D 0 - I - 0x02DF54 0B:9F44: 00        .byte $00   ; 
- D 0 - I - 0x02DF55 0B:9F45: 81        .byte $81   ; 
- D 0 - I - 0x02DF56 0B:9F46: 7D        .byte $7D   ; 
- D 0 - I - 0x02DF57 0B:9F47: 08        .byte $08   ; 
- D 0 - I - 0x02DF58 0B:9F48: 00        .byte $00   ; 
- D 0 - I - 0x02DF59 0B:9F49: 81        .byte $81   ; 
- D 0 - I - 0x02DF5A 0B:9F4A: 7E        .byte $7E   ; 
- D 0 - I - 0x02DF5B 0B:9F4B: 16        .byte $16   ; 
- D 0 - I - 0x02DF5C 0B:9F4C: 00        .byte $00   ; 
- D 0 - I - 0x02DF5D 0B:9F4D: 81        .byte $81   ; 
- D 0 - I - 0x02DF5E 0B:9F4E: 7D        .byte $7D   ; 
- D 0 - I - 0x02DF5F 0B:9F4F: 08        .byte $08   ; 
- D 0 - I - 0x02DF60 0B:9F50: 00        .byte $00   ; 
- D 0 - I - 0x02DF61 0B:9F51: 81        .byte $81   ; 
- D 0 - I - 0x02DF62 0B:9F52: 7E        .byte $7E   ; 
- D 0 - I - 0x02DF63 0B:9F53: 16        .byte $16   ; 
- D 0 - I - 0x02DF64 0B:9F54: 00        .byte $00   ; 
- D 0 - I - 0x02DF65 0B:9F55: 81        .byte $81   ; 
- D 0 - I - 0x02DF66 0B:9F56: 7D        .byte $7D   ; 
- D 0 - I - 0x02DF67 0B:9F57: 08        .byte $08   ; 
- D 0 - I - 0x02DF68 0B:9F58: 00        .byte $00   ; 
- D 0 - I - 0x02DF69 0B:9F59: 81        .byte $81   ; 
- D 0 - I - 0x02DF6A 0B:9F5A: 7E        .byte $7E   ; 
- D 0 - I - 0x02DF6B 0B:9F5B: 16        .byte $16   ; 
- D 0 - I - 0x02DF6C 0B:9F5C: 00        .byte $00   ; 
- D 0 - I - 0x02DF6D 0B:9F5D: 81        .byte $81   ; 
- D 0 - I - 0x02DF6E 0B:9F5E: 79        .byte $79   ; 
- D 0 - I - 0x02DF6F 0B:9F5F: 08        .byte $08   ; 
- D 0 - I - 0x02DF70 0B:9F60: 7C        .byte $7C   ; 
- D 0 - I - 0x02DF71 0B:9F61: 81        .byte $81   ; 
- D 0 - I - 0x02DF72 0B:9F62: 7A        .byte $7A   ; 
- D 0 - I - 0x02DF73 0B:9F63: 61        .byte $61   ; 
- D 0 - I - 0x02DF74 0B:9F64: 00        .byte $00   ; 
- D 0 - I - 0x02DF75 0B:9F65: 83        .byte $83   ; 
- D 0 - I - 0x02DF76 0B:9F66: 3F        .byte $3F   ; 
- D 0 - I - 0x02DF77 0B:9F67: 0F        .byte $0F   ; 
- D 0 - I - 0x02DF78 0B:9F68: CF        .byte $CF   ; 
- D 0 - I - 0x02DF79 0B:9F69: 05        .byte $05   ; 
- D 0 - I - 0x02DF7A 0B:9F6A: 00        .byte $00   ; 
- D 0 - I - 0x02DF7B 0B:9F6B: 83        .byte $83   ; 
- D 0 - I - 0x02DF7C 0B:9F6C: 33        .byte $33   ; 
- D 0 - I - 0x02DF7D 0B:9F6D: 00        .byte $00   ; 
- D 0 - I - 0x02DF7E 0B:9F6E: CC        .byte $CC   ; 
- D 0 - I - 0x02DF7F 0B:9F6F: 05        .byte $05   ; 
- D 0 - I - 0x02DF80 0B:9F70: 00        .byte $00   ; 
- D 0 - I - 0x02DF81 0B:9F71: 83        .byte $83   ; 
- D 0 - I - 0x02DF82 0B:9F72: F3        .byte $F3   ; 
- D 0 - I - 0x02DF83 0B:9F73: F0        .byte $F0   ; 
- D 0 - I - 0x02DF84 0B:9F74: FC        .byte $FC   ; 
- D 0 - I - 0x02DF85 0B:9F75: 05        .byte $05   ; 
- D 0 - I - 0x02DF86 0B:9F76: 00        .byte $00   ; 
- D 0 - I - 0x02DF87 0B:9F77: 08        .byte $08   ; 
- D 0 - I - 0x02DF88 0B:9F78: AA        .byte $AA   ; 
- D 0 - I - 0x02DF89 0B:9F79: 05        .byte $05   ; 
- D 0 - I - 0x02DF8A 0B:9F7A: 00        .byte $00   ; 
- D 0 - I - 0x02DF8B 0B:9F7B: 83        .byte $83   ; 
- D 0 - I - 0x02DF8C 0B:9F7C: 7F        .byte $7F   ; 
- D 0 - I - 0x02DF8D 0B:9F7D: 5F        .byte $5F   ; 
- D 0 - I - 0x02DF8E 0B:9F7E: DF        .byte $DF   ; 
- D 0 - I - 0x02DF8F 0B:9F7F: 05        .byte $05   ; 
- D 0 - I - 0x02DF90 0B:9F80: 00        .byte $00   ; 
- D 0 - I - 0x02DF91 0B:9F81: 83        .byte $83   ; 
- D 0 - I - 0x02DF92 0B:9F82: 77        .byte $77   ; 
- D 0 - I - 0x02DF93 0B:9F83: 55        .byte $55   ; 
- D 0 - I - 0x02DF94 0B:9F84: DD        .byte $DD   ; 
- D 0 - I - 0x02DF95 0B:9F85: 05        .byte $05   ; 
- D 0 - I - 0x02DF96 0B:9F86: 00        .byte $00   ; 
- D 0 - I - 0x02DF97 0B:9F87: 83        .byte $83   ; 
- D 0 - I - 0x02DF98 0B:9F88: F7        .byte $F7   ; 
- D 0 - I - 0x02DF99 0B:9F89: F5        .byte $F5   ; 
- D 0 - I - 0x02DF9A 0B:9F8A: FD        .byte $FD   ; 
- D 0 - I - 0x02DF9B 0B:9F8B: 08        .byte $08   ; 
- D 0 - I - 0x02DF9C 0B:9F8C: 00        .byte $00   ; 
- D 0 - I - 0x02DF9D 0B:9F8D: FF        .byte $FF   ; 



.export _off003_0x02DF9E_0C
_off003_0x02DF9E_0C:
- D 0 - I - 0x02DF9E 0B:9F8E: 00        .byte $00   ; 
- D 0 - I - 0x02DF9F 0B:9F8F: 20        .byte $20   ; 
- D 0 - I - 0x02DFA0 0B:9F90: 66        .byte $66   ; 
- D 0 - I - 0x02DFA1 0B:9F91: 00        .byte $00   ; 
- D 0 - I - 0x02DFA2 0B:9F92: 8A        .byte $8A   ; 
- D 0 - I - 0x02DFA3 0B:9F93: 8E        .byte $8E   ; 
- D 0 - I - 0x02DFA4 0B:9F94: 93        .byte $93   ; 
- D 0 - I - 0x02DFA5 0B:9F95: 90        .byte $90   ; 
- D 0 - I - 0x02DFA6 0B:9F96: 90        .byte $90   ; 
- D 0 - I - 0x02DFA7 0B:9F97: 93        .byte $93   ; 
- D 0 - I - 0x02DFA8 0B:9F98: 8D        .byte $8D   ; 
- D 0 - I - 0x02DFA9 0B:9F99: 9F        .byte $9F   ; 
- D 0 - I - 0x02DFAA 0B:9F9A: 96        .byte $96   ; 
- D 0 - I - 0x02DFAB 0B:9F9B: 9E        .byte $9E   ; 
- D 0 - I - 0x02DFAC 0B:9F9C: A3        .byte $A3   ; 
- D 0 - I - 0x02DFAD 0B:9F9D: 36        .byte $36   ; 
- D 0 - I - 0x02DFAE 0B:9F9E: 00        .byte $00   ; 
- D 0 - I - 0x02DFAF 0B:9F9F: 84        .byte $84   ; 
- D 0 - I - 0x02DFB0 0B:9FA0: 9D        .byte $9D   ; 
- D 0 - I - 0x02DFB1 0B:9FA1: 95        .byte $95   ; 
- D 0 - I - 0x02DFB2 0B:9FA2: 93        .byte $93   ; 
- D 0 - I - 0x02DFB3 0B:9FA3: 98        .byte $98   ; 
- D 0 - I - 0x02DFB4 0B:9FA4: 3C        .byte $3C   ; 
- D 0 - I - 0x02DFB5 0B:9FA5: 00        .byte $00   ; 
- D 0 - I - 0x02DFB6 0B:9FA6: 85        .byte $85   ; 
- D 0 - I - 0x02DFB7 0B:9FA7: 9D        .byte $9D   ; 
- D 0 - I - 0x02DFB8 0B:9FA8: 9A        .byte $9A   ; 
- D 0 - I - 0x02DFB9 0B:9FA9: 8F        .byte $8F   ; 
- D 0 - I - 0x02DFBA 0B:9FAA: 8F        .byte $8F   ; 
- D 0 - I - 0x02DFBB 0B:9FAB: 8E        .byte $8E   ; 
- D 0 - I - 0x02DFBC 0B:9FAC: 3B        .byte $3B   ; 
- D 0 - I - 0x02DFBD 0B:9FAD: 00        .byte $00   ; 
- D 0 - I - 0x02DFBE 0B:9FAE: 85        .byte $85   ; 
- D 0 - I - 0x02DFBF 0B:9FAF: 9E        .byte $9E   ; 
- D 0 - I - 0x02DFC0 0B:9FB0: 93        .byte $93   ; 
- D 0 - I - 0x02DFC1 0B:9FB1: 97        .byte $97   ; 
- D 0 - I - 0x02DFC2 0B:9FB2: 8F        .byte $8F   ; 
- D 0 - I - 0x02DFC3 0B:9FB3: 9C        .byte $9C   ; 
- D 0 - I - 0x02DFC4 0B:9FB4: 3B        .byte $3B   ; 
- D 0 - I - 0x02DFC5 0B:9FB5: 00        .byte $00   ; 
- D 0 - I - 0x02DFC6 0B:9FB6: 86        .byte $86   ; 
- D 0 - I - 0x02DFC7 0B:9FB7: 92        .byte $92   ; 
- D 0 - I - 0x02DFC8 0B:9FB8: 8F        .byte $8F   ; 
- D 0 - I - 0x02DFC9 0B:9FB9: 8B        .byte $8B   ; 
- D 0 - I - 0x02DFCA 0B:9FBA: 96        .byte $96   ; 
- D 0 - I - 0x02DFCB 0B:9FBB: 9E        .byte $9E   ; 
- D 0 - I - 0x02DFCC 0B:9FBC: 92        .byte $92   ; 
- D 0 - I - 0x02DFCD 0B:9FBD: 27        .byte $27   ; 
- D 0 - I - 0x02DFCE 0B:9FBE: 00        .byte $00   ; 
- D 0 - I - 0x02DFCF 0B:9FBF: 81        .byte $81   ; 
- D 0 - I - 0x02DFD0 0B:9FC0: 7D        .byte $7D   ; 
- D 0 - I - 0x02DFD1 0B:9FC1: 14        .byte $14   ; 
- D 0 - I - 0x02DFD2 0B:9FC2: 00        .byte $00   ; 
- D 0 - I - 0x02DFD3 0B:9FC3: C2        .byte $C2   ; 
- D 0 - I - 0x02DFD4 0B:9FC4: 61        .byte $61   ; 
- D 0 - I - 0x02DFD5 0B:9FC5: 09        .byte $09   ; 
- D 0 - I - 0x02DFD6 0B:9FC6: 00        .byte $00   ; 
- D 0 - I - 0x02DFD7 0B:9FC7: C3        .byte $C3   ; 
- D 0 - I - 0x02DFD8 0B:9FC8: 7E        .byte $7E   ; 
- D 0 - I - 0x02DFD9 0B:9FC9: 83        .byte $83   ; 
- D 0 - I - 0x02DFDA 0B:9FCA: 00        .byte $00   ; 
- D 0 - I - 0x02DFDB 0B:9FCB: 81        .byte $81   ; 
- D 0 - I - 0x02DFDC 0B:9FCC: 82        .byte $82   ; 
- D 0 - I - 0x02DFDD 0B:9FCD: 0E        .byte $0E   ; 
- D 0 - I - 0x02DFDE 0B:9FCE: 00        .byte $00   ; 
- D 0 - I - 0x02DFDF 0B:9FCF: C4        .byte $C4   ; 
- D 0 - I - 0x02DFE0 0B:9FD0: 63        .byte $63   ; 
- D 0 - I - 0x02DFE1 0B:9FD1: 08        .byte $08   ; 
- D 0 - I - 0x02DFE2 0B:9FD2: 00        .byte $00   ; 
- D 0 - I - 0x02DFE3 0B:9FD3: C7        .byte $C7   ; 
- D 0 - I - 0x02DFE4 0B:9FD4: 83        .byte $83   ; 
- D 0 - I - 0x02DFE5 0B:9FD5: 0D        .byte $0D   ; 
- D 0 - I - 0x02DFE6 0B:9FD6: 00        .byte $00   ; 
- D 0 - I - 0x02DFE7 0B:9FD7: C7        .byte $C7   ; 
- D 0 - I - 0x02DFE8 0B:9FD8: 67        .byte $67   ; 
- D 0 - I - 0x02DFE9 0B:9FD9: 07        .byte $07   ; 
- D 0 - I - 0x02DFEA 0B:9FDA: 00        .byte $00   ; 
- D 0 - I - 0x02DFEB 0B:9FDB: C5        .byte $C5   ; 
- D 0 - I - 0x02DFEC 0B:9FDC: 8A        .byte $8A   ; 
- D 0 - I - 0x02DFED 0B:9FDD: 0D        .byte $0D   ; 
- D 0 - I - 0x02DFEE 0B:9FDE: 00        .byte $00   ; 
- D 0 - I - 0x02DFEF 0B:9FDF: C7        .byte $C7   ; 
- D 0 - I - 0x02DFF0 0B:9FE0: 6E        .byte $6E   ; 
- D 0 - I - 0x02DFF1 0B:9FE1: 08        .byte $08   ; 
- D 0 - I - 0x02DFF2 0B:9FE2: 00        .byte $00   ; 
- D 0 - I - 0x02DFF3 0B:9FE3: C5        .byte $C5   ; 
- D 0 - I - 0x02DFF4 0B:9FE4: 8F        .byte $8F   ; 
- D 0 - I - 0x02DFF5 0B:9FE5: 0B        .byte $0B   ; 
- D 0 - I - 0x02DFF6 0B:9FE6: 00        .byte $00   ; 
- D 0 - I - 0x02DFF7 0B:9FE7: C8        .byte $C8   ; 
- D 0 - I - 0x02DFF8 0B:9FE8: 75        .byte $75   ; 
- D 0 - I - 0x02DFF9 0B:9FE9: 08        .byte $08   ; 
- D 0 - I - 0x02DFFA 0B:9FEA: 00        .byte $00   ; 
- D 0 - I - 0x02DFFB 0B:9FEB: C5        .byte $C5   ; 
- D 0 - I - 0x02DFFC 0B:9FEC: 94        .byte $94   ; 
- D 0 - I - 0x02DFFD 0B:9FED: 0B        .byte $0B   ; 
- D 0 - I - 0x02DFFE 0B:9FEE: 00        .byte $00   ; 
- D 0 - I - 0x02DFFF 0B:9FEF: C8        .byte $C8   ; 
- D 0 - I - 0x02E000 0B:9FF0: B6        .byte $B6   ; 
- D 0 - I - 0x02E001 0B:9FF1: 08        .byte $08   ; 
- D 0 - I - 0x02E002 0B:9FF2: 00        .byte $00   ; 
- D 0 - I - 0x02E003 0B:9FF3: C6        .byte $C6   ; 
- D 0 - I - 0x02E004 0B:9FF4: 99        .byte $99   ; 
- D 0 - I - 0x02E005 0B:9FF5: 0A        .byte $0A   ; 
- D 0 - I - 0x02E006 0B:9FF6: 00        .byte $00   ; 
- D 0 - I - 0x02E007 0B:9FF7: C8        .byte $C8   ; 
- D 0 - I - 0x02E008 0B:9FF8: BE        .byte $BE   ; 
- D 0 - I - 0x02E009 0B:9FF9: 07        .byte $07   ; 
- D 0 - I - 0x02E00A 0B:9FFA: 00        .byte $00   ; 
- D 0 - I - 0x02E00B 0B:9FFB: C7        .byte $C7   ; 
- D 0 - I - 0x02E00C 0B:9FFC: 9F        .byte $9F   ; 
- D 0 - I - 0x02E00D 0B:9FFD: 0A        .byte $0A   ; 
- D 0 - I - 0x02E00E 0B:9FFE: 00        .byte $00   ; 
- D 0 - I - 0x02E00F 0B:9FFF: C9        .byte $C9   ; 
- D 1 - - - 0x02E010 0B:A000: C6        .byte $C6   ; 
- D 1 - I - 0x02E011 0B:A001: 05        .byte $05   ; 
- D 1 - I - 0x02E012 0B:A002: 00        .byte $00   ; 
- D 1 - I - 0x02E013 0B:A003: C8        .byte $C8   ; 
- D 1 - I - 0x02E014 0B:A004: A6        .byte $A6   ; 
- D 1 - I - 0x02E015 0B:A005: 0A        .byte $0A   ; 
- D 1 - I - 0x02E016 0B:A006: 00        .byte $00   ; 
- D 1 - I - 0x02E017 0B:A007: C5        .byte $C5   ; 
- D 1 - I - 0x02E018 0B:A008: CF        .byte $CF   ; 
- D 1 - I - 0x02E019 0B:A009: 81        .byte $81   ; 
- D 1 - I - 0x02E01A 0B:A00A: 00        .byte $00   ; 
- D 1 - I - 0x02E01B 0B:A00B: C3        .byte $C3   ; 
- D 1 - I - 0x02E01C 0B:A00C: D4        .byte $D4   ; 
- D 1 - I - 0x02E01D 0B:A00D: 05        .byte $05   ; 
- D 1 - I - 0x02E01E 0B:A00E: 00        .byte $00   ; 
- D 1 - I - 0x02E01F 0B:A00F: C6        .byte $C6   ; 
- D 1 - I - 0x02E020 0B:A010: AE        .byte $AE   ; 
- D 1 - I - 0x02E021 0B:A011: 0E        .byte $0E   ; 
- D 1 - I - 0x02E022 0B:A012: 00        .byte $00   ; 
- D 1 - I - 0x02E023 0B:A013: C3        .byte $C3   ; 
- D 1 - I - 0x02E024 0B:A014: D7        .byte $D7   ; 
- D 1 - I - 0x02E025 0B:A015: 02        .byte $02   ; 
- D 1 - I - 0x02E026 0B:A016: 00        .byte $00   ; 
- D 1 - I - 0x02E027 0B:A017: C3        .byte $C3   ; 
- D 1 - I - 0x02E028 0B:A018: DA        .byte $DA   ; 
- D 1 - I - 0x02E029 0B:A019: 07        .byte $07   ; 
- D 1 - I - 0x02E02A 0B:A01A: 00        .byte $00   ; 
- D 1 - I - 0x02E02B 0B:A01B: C2        .byte $C2   ; 
- D 1 - I - 0x02E02C 0B:A01C: B4        .byte $B4   ; 
- D 1 - I - 0x02E02D 0B:A01D: 0F        .byte $0F   ; 
- D 1 - I - 0x02E02E 0B:A01E: 00        .byte $00   ; 
- D 1 - I - 0x02E02F 0B:A01F: C3        .byte $C3   ; 
- D 1 - I - 0x02E030 0B:A020: DD        .byte $DD   ; 
- D 1 - I - 0x02E031 0B:A021: 02        .byte $02   ; 
- D 1 - I - 0x02E032 0B:A022: 00        .byte $00   ; 
- D 1 - I - 0x02E033 0B:A023: C3        .byte $C3   ; 
- D 1 - I - 0x02E034 0B:A024: E0        .byte $E0   ; 
- D 1 - I - 0x02E035 0B:A025: 07        .byte $07   ; 
- D 1 - I - 0x02E036 0B:A026: 00        .byte $00   ; 
- D 1 - I - 0x02E037 0B:A027: C2        .byte $C2   ; 
- D 1 - I - 0x02E038 0B:A028: EC        .byte $EC   ; 
- D 1 - I - 0x02E039 0B:A029: 0F        .byte $0F   ; 
- D 1 - I - 0x02E03A 0B:A02A: 00        .byte $00   ; 
- D 1 - I - 0x02E03B 0B:A02B: C3        .byte $C3   ; 
- D 1 - I - 0x02E03C 0B:A02C: E3        .byte $E3   ; 
- D 1 - I - 0x02E03D 0B:A02D: 0C        .byte $0C   ; 
- D 1 - I - 0x02E03E 0B:A02E: 00        .byte $00   ; 
- D 1 - I - 0x02E03F 0B:A02F: C2        .byte $C2   ; 
- D 1 - I - 0x02E040 0B:A030: EE        .byte $EE   ; 
- D 1 - I - 0x02E041 0B:A031: 0F        .byte $0F   ; 
- D 1 - I - 0x02E042 0B:A032: 00        .byte $00   ; 
- D 1 - I - 0x02E043 0B:A033: C2        .byte $C2   ; 
- D 1 - I - 0x02E044 0B:A034: E6        .byte $E6   ; 
- D 1 - I - 0x02E045 0B:A035: 0C        .byte $0C   ; 
- D 1 - I - 0x02E046 0B:A036: 00        .byte $00   ; 
- D 1 - I - 0x02E047 0B:A037: C2        .byte $C2   ; 
- D 1 - I - 0x02E048 0B:A038: F0        .byte $F0   ; 
- D 1 - I - 0x02E049 0B:A039: 10        .byte $10   ; 
- D 1 - I - 0x02E04A 0B:A03A: 00        .byte $00   ; 
- D 1 - I - 0x02E04B 0B:A03B: C2        .byte $C2   ; 
- D 1 - I - 0x02E04C 0B:A03C: E8        .byte $E8   ; 
- D 1 - I - 0x02E04D 0B:A03D: 0B        .byte $0B   ; 
- D 1 - I - 0x02E04E 0B:A03E: 00        .byte $00   ; 
- D 1 - I - 0x02E04F 0B:A03F: C3        .byte $C3   ; 
- D 1 - I - 0x02E050 0B:A040: F2        .byte $F2   ; 
- D 1 - I - 0x02E051 0B:A041: 10        .byte $10   ; 
- D 1 - I - 0x02E052 0B:A042: 00        .byte $00   ; 
- D 1 - I - 0x02E053 0B:A043: C2        .byte $C2   ; 
- D 1 - I - 0x02E054 0B:A044: EA        .byte $EA   ; 
- D 1 - I - 0x02E055 0B:A045: 0C        .byte $0C   ; 
- D 1 - I - 0x02E056 0B:A046: 00        .byte $00   ; 
- D 1 - I - 0x02E057 0B:A047: C2        .byte $C2   ; 
- D 1 - I - 0x02E058 0B:A048: F5        .byte $F5   ; 
- D 1 - I - 0x02E059 0B:A049: 54        .byte $54   ; 
- D 1 - I - 0x02E05A 0B:A04A: 00        .byte $00   ; 
- D 1 - I - 0x02E05B 0B:A04B: 81        .byte $81   ; 
- D 1 - I - 0x02E05C 0B:A04C: 30        .byte $30   ; 
- D 1 - I - 0x02E05D 0B:A04D: 0B        .byte $0B   ; 
- D 1 - I - 0x02E05E 0B:A04E: 00        .byte $00   ; 
- D 1 - I - 0x02E05F 0B:A04F: 17        .byte $17   ; 
- D 1 - I - 0x02E060 0B:A050: 55        .byte $55   ; 
- D 1 - I - 0x02E061 0B:A051: 81        .byte $81   ; 
- D 1 - I - 0x02E062 0B:A052: 41        .byte $41   ; 
- D 1 - I - 0x02E063 0B:A053: 06        .byte $06   ; 
- D 1 - I - 0x02E064 0B:A054: 55        .byte $55   ; 
- D 1 - I - 0x02E065 0B:A055: 82        .byte $82   ; 
- D 1 - I - 0x02E066 0B:A056: 15        .byte $15   ; 
- D 1 - I - 0x02E067 0B:A057: 00        .byte $00   ; 
- D 1 - I - 0x02E068 0B:A058: 08        .byte $08   ; 
- D 1 - I - 0x02E069 0B:A059: 55        .byte $55   ; 
- D 1 - I - 0x02E06A 0B:A05A: FF        .byte $FF   ; 



.export _off003_0x02E085_15
_off003_0x02E085_15:
- D 1 - I - 0x02E085 0B:A075: 00        .byte $00   ; 
- D 1 - I - 0x02E086 0B:A076: 20        .byte $20   ; 
- D 1 - I - 0x02E087 0B:A077: 65        .byte $65   ; 
- D 1 - I - 0x02E088 0B:A078: 00        .byte $00   ; 
- D 1 - I - 0x02E089 0B:A079: 81        .byte $81   ; 
- D 1 - I - 0x02E08A 0B:A07A: 9F        .byte $9F   ; 
- D 1 - I - 0x02E08B 0B:A07B: 14        .byte $14   ; 
- D 1 - I - 0x02E08C 0B:A07C: A0        .byte $A0   ; 
- D 1 - I - 0x02E08D 0B:A07D: 81        .byte $81   ; 
- D 1 - I - 0x02E08E 0B:A07E: A1        .byte $A1   ; 
- D 1 - I - 0x02E08F 0B:A07F: 0A        .byte $0A   ; 
- D 1 - I - 0x02E090 0B:A080: 00        .byte $00   ; 
- D 1 - I - 0x02E091 0B:A081: 81        .byte $81   ; 
- D 1 - I - 0x02E092 0B:A082: A2        .byte $A2   ; 
- D 1 - I - 0x02E093 0B:A083: 0D        .byte $0D   ; 
- D 1 - I - 0x02E094 0B:A084: 02        .byte $02   ; 
- D 1 - I - 0x02E095 0B:A085: C3        .byte $C3   ; 
- D 1 - I - 0x02E096 0B:A086: CC        .byte $CC   ; 
- D 1 - I - 0x02E097 0B:A087: 04        .byte $04   ; 
- D 1 - I - 0x02E098 0B:A088: 02        .byte $02   ; 
- D 1 - I - 0x02E099 0B:A089: 81        .byte $81   ; 
- D 1 - I - 0x02E09A 0B:A08A: A3        .byte $A3   ; 
- D 1 - I - 0x02E09B 0B:A08B: 0A        .byte $0A   ; 
- D 1 - I - 0x02E09C 0B:A08C: 00        .byte $00   ; 
- D 1 - I - 0x02E09D 0B:A08D: 81        .byte $81   ; 
- D 1 - I - 0x02E09E 0B:A08E: A2        .byte $A2   ; 
- D 1 - I - 0x02E09F 0B:A08F: 0D        .byte $0D   ; 
- D 1 - I - 0x02E0A0 0B:A090: A7        .byte $A7   ; 
- D 1 - I - 0x02E0A1 0B:A091: 83        .byte $83   ; 
- D 1 - I - 0x02E0A2 0B:A092: CF        .byte $CF   ; 
- D 1 - I - 0x02E0A3 0B:A093: D0        .byte $D0   ; 
- D 1 - I - 0x02E0A4 0B:A094: 00        .byte $00   ; 
- D 1 - I - 0x02E0A5 0B:A095: 04        .byte $04   ; 
- D 1 - I - 0x02E0A6 0B:A096: A7        .byte $A7   ; 
- D 1 - I - 0x02E0A7 0B:A097: 81        .byte $81   ; 
- D 1 - I - 0x02E0A8 0B:A098: A3        .byte $A3   ; 
- D 1 - I - 0x02E0A9 0B:A099: 0A        .byte $0A   ; 
- D 1 - I - 0x02E0AA 0B:A09A: 00        .byte $00   ; 
- D 1 - I - 0x02E0AB 0B:A09B: 81        .byte $81   ; 
- D 1 - I - 0x02E0AC 0B:A09C: A2        .byte $A2   ; 
- D 1 - I - 0x02E0AD 0B:A09D: 04        .byte $04   ; 
- D 1 - I - 0x02E0AE 0B:A09E: 01        .byte $01   ; 
- D 1 - I - 0x02E0AF 0B:A09F: C3        .byte $C3   ; 
- D 1 - I - 0x02E0B0 0B:A0A0: A8        .byte $A8   ; 
- D 1 - I - 0x02E0B1 0B:A0A1: 04        .byte $04   ; 
- D 1 - I - 0x02E0B2 0B:A0A2: 01        .byte $01   ; 
- D 1 - I - 0x02E0B3 0B:A0A3: C4        .byte $C4   ; 
- D 1 - I - 0x02E0B4 0B:A0A4: D1        .byte $D1   ; 
- D 1 - I - 0x02E0B5 0B:A0A5: 81        .byte $81   ; 
- D 1 - I - 0x02E0B6 0B:A0A6: B1        .byte $B1   ; 
- D 1 - I - 0x02E0B7 0B:A0A7: 04        .byte $04   ; 
- D 1 - I - 0x02E0B8 0B:A0A8: 01        .byte $01   ; 
- D 1 - I - 0x02E0B9 0B:A0A9: 81        .byte $81   ; 
- D 1 - I - 0x02E0BA 0B:A0AA: A3        .byte $A3   ; 
- D 1 - I - 0x02E0BB 0B:A0AB: 0A        .byte $0A   ; 
- D 1 - I - 0x02E0BC 0B:A0AC: 00        .byte $00   ; 
- D 1 - I - 0x02E0BD 0B:A0AD: 81        .byte $81   ; 
- D 1 - I - 0x02E0BE 0B:A0AE: A2        .byte $A2   ; 
- D 1 - I - 0x02E0BF 0B:A0AF: 04        .byte $04   ; 
- D 1 - I - 0x02E0C0 0B:A0B0: 01        .byte $01   ; 
- D 1 - I - 0x02E0C1 0B:A0B1: C4        .byte $C4   ; 
- D 1 - I - 0x02E0C2 0B:A0B2: AB        .byte $AB   ; 
- D 1 - I - 0x02E0C3 0B:A0B3: 03        .byte $03   ; 
- D 1 - I - 0x02E0C4 0B:A0B4: 01        .byte $01   ; 
- D 1 - I - 0x02E0C5 0B:A0B5: C4        .byte $C4   ; 
- D 1 - I - 0x02E0C6 0B:A0B6: D5        .byte $D5   ; 
- D 1 - I - 0x02E0C7 0B:A0B7: 81        .byte $81   ; 
- D 1 - I - 0x02E0C8 0B:A0B8: 00        .byte $00   ; 
- D 1 - I - 0x02E0C9 0B:A0B9: 03        .byte $03   ; 
- D 1 - I - 0x02E0CA 0B:A0BA: 01        .byte $01   ; 
- D 1 - I - 0x02E0CB 0B:A0BB: 82        .byte $82   ; 
- D 1 - I - 0x02E0CC 0B:A0BC: D9        .byte $D9   ; 
- D 1 - I - 0x02E0CD 0B:A0BD: A3        .byte $A3   ; 
- D 1 - I - 0x02E0CE 0B:A0BE: 0A        .byte $0A   ; 
- D 1 - I - 0x02E0CF 0B:A0BF: 00        .byte $00   ; 
- D 1 - I - 0x02E0D0 0B:A0C0: 81        .byte $81   ; 
- D 1 - I - 0x02E0D1 0B:A0C1: A2        .byte $A2   ; 
- D 1 - I - 0x02E0D2 0B:A0C2: 04        .byte $04   ; 
- D 1 - I - 0x02E0D3 0B:A0C3: 01        .byte $01   ; 
- D 1 - I - 0x02E0D4 0B:A0C4: C4        .byte $C4   ; 
- D 1 - I - 0x02E0D5 0B:A0C5: AF        .byte $AF   ; 
- D 1 - I - 0x02E0D6 0B:A0C6: 03        .byte $03   ; 
- D 1 - I - 0x02E0D7 0B:A0C7: 01        .byte $01   ; 
- D 1 - I - 0x02E0D8 0B:A0C8: 8A        .byte $8A   ; 
- D 1 - I - 0x02E0D9 0B:A0C9: DA        .byte $DA   ; 
- D 1 - I - 0x02E0DA 0B:A0CA: DB        .byte $DB   ; 
- D 1 - I - 0x02E0DB 0B:A0CB: D7        .byte $D7   ; 
- D 1 - I - 0x02E0DC 0B:A0CC: D4        .byte $D4   ; 
- D 1 - I - 0x02E0DD 0B:A0CD: BD        .byte $BD   ; 
- D 1 - I - 0x02E0DE 0B:A0CE: 01        .byte $01   ; 
- D 1 - I - 0x02E0DF 0B:A0CF: 01        .byte $01   ; 
- D 1 - I - 0x02E0E0 0B:A0D0: DC        .byte $DC   ; 
- D 1 - I - 0x02E0E1 0B:A0D1: DD        .byte $DD   ; 
- D 1 - I - 0x02E0E2 0B:A0D2: A3        .byte $A3   ; 
- D 1 - I - 0x02E0E3 0B:A0D3: 0A        .byte $0A   ; 
- D 1 - I - 0x02E0E4 0B:A0D4: 00        .byte $00   ; 
- D 1 - I - 0x02E0E5 0B:A0D5: 81        .byte $81   ; 
- D 1 - I - 0x02E0E6 0B:A0D6: A2        .byte $A2   ; 
- D 1 - I - 0x02E0E7 0B:A0D7: 03        .byte $03   ; 
- D 1 - I - 0x02E0E8 0B:A0D8: 01        .byte $01   ; 
- D 1 - I - 0x02E0E9 0B:A0D9: C5        .byte $C5   ; 
- D 1 - I - 0x02E0EA 0B:A0DA: B3        .byte $B3   ; 
- D 1 - I - 0x02E0EB 0B:A0DB: 82        .byte $82   ; 
- D 1 - I - 0x02E0EC 0B:A0DC: 01        .byte $01   ; 
- D 1 - I - 0x02E0ED 0B:A0DD: 01        .byte $01   ; 
- D 1 - I - 0x02E0EE 0B:A0DE: C3        .byte $C3   ; 
- D 1 - I - 0x02E0EF 0B:A0DF: DE        .byte $DE   ; 
- D 1 - I - 0x02E0F0 0B:A0E0: 88        .byte $88   ; 
- D 1 - I - 0x02E0F1 0B:A0E1: D7        .byte $D7   ; 
- D 1 - I - 0x02E0F2 0B:A0E2: E1        .byte $E1   ; 
- D 1 - I - 0x02E0F3 0B:A0E3: 00        .byte $00   ; 
- D 1 - I - 0x02E0F4 0B:A0E4: E2        .byte $E2   ; 
- D 1 - I - 0x02E0F5 0B:A0E5: 01        .byte $01   ; 
- D 1 - I - 0x02E0F6 0B:A0E6: E3        .byte $E3   ; 
- D 1 - I - 0x02E0F7 0B:A0E7: E4        .byte $E4   ; 
- D 1 - I - 0x02E0F8 0B:A0E8: A3        .byte $A3   ; 
- D 1 - I - 0x02E0F9 0B:A0E9: 0A        .byte $0A   ; 
- D 1 - I - 0x02E0FA 0B:A0EA: 00        .byte $00   ; 
- D 1 - I - 0x02E0FB 0B:A0EB: 81        .byte $81   ; 
- D 1 - I - 0x02E0FC 0B:A0EC: A2        .byte $A2   ; 
- D 1 - I - 0x02E0FD 0B:A0ED: C5        .byte $C5   ; 
- D 1 - I - 0x02E0FE 0B:A0EE: B8        .byte $B8   ; 
- D 1 - I - 0x02E0FF 0B:A0EF: 81        .byte $81   ; 
- D 1 - I - 0x02E100 0B:A0F0: B5        .byte $B5   ; 
- D 1 - I - 0x02E101 0B:A0F1: C4        .byte $C4   ; 
- D 1 - I - 0x02E102 0B:A0F2: BD        .byte $BD   ; 
- D 1 - I - 0x02E103 0B:A0F3: 8B        .byte $8B   ; 
- D 1 - I - 0x02E104 0B:A0F4: E5        .byte $E5   ; 
- D 1 - I - 0x02E105 0B:A0F5: DA        .byte $DA   ; 
- D 1 - I - 0x02E106 0B:A0F6: DB        .byte $DB   ; 
- D 1 - I - 0x02E107 0B:A0F7: D7        .byte $D7   ; 
- D 1 - I - 0x02E108 0B:A0F8: E1        .byte $E1   ; 
- D 1 - I - 0x02E109 0B:A0F9: 00        .byte $00   ; 
- D 1 - I - 0x02E10A 0B:A0FA: B8        .byte $B8   ; 
- D 1 - I - 0x02E10B 0B:A0FB: B9        .byte $B9   ; 
- D 1 - I - 0x02E10C 0B:A0FC: E6        .byte $E6   ; 
- D 1 - I - 0x02E10D 0B:A0FD: E7        .byte $E7   ; 
- D 1 - I - 0x02E10E 0B:A0FE: A3        .byte $A3   ; 
- D 1 - I - 0x02E10F 0B:A0FF: 0A        .byte $0A   ; 
- D 1 - I - 0x02E110 0B:A100: 00        .byte $00   ; 
- D 1 - I - 0x02E111 0B:A101: 81        .byte $81   ; 
- D 1 - I - 0x02E112 0B:A102: A2        .byte $A2   ; 
- D 1 - I - 0x02E113 0B:A103: C3        .byte $C3   ; 
- D 1 - I - 0x02E114 0B:A104: C1        .byte $C1   ; 
- D 1 - I - 0x02E115 0B:A105: 92        .byte $92   ; 
- D 1 - I - 0x02E116 0B:A106: 00        .byte $00   ; 
- D 1 - I - 0x02E117 0B:A107: BC        .byte $BC   ; 
- D 1 - I - 0x02E118 0B:A108: B5        .byte $B5   ; 
- D 1 - I - 0x02E119 0B:A109: 00        .byte $00   ; 
- D 1 - I - 0x02E11A 0B:A10A: C4        .byte $C4   ; 
- D 1 - I - 0x02E11B 0B:A10B: C5        .byte $C5   ; 
- D 1 - I - 0x02E11C 0B:A10C: BD        .byte $BD   ; 
- D 1 - I - 0x02E11D 0B:A10D: E8        .byte $E8   ; 
- D 1 - I - 0x02E11E 0B:A10E: DF        .byte $DF   ; 
- D 1 - I - 0x02E11F 0B:A10F: E0        .byte $E0   ; 
- D 1 - I - 0x02E120 0B:A110: D7        .byte $D7   ; 
- D 1 - I - 0x02E121 0B:A111: D4        .byte $D4   ; 
- D 1 - I - 0x02E122 0B:A112: B1        .byte $B1   ; 
- D 1 - I - 0x02E123 0B:A113: C9        .byte $C9   ; 
- D 1 - I - 0x02E124 0B:A114: CA        .byte $CA   ; 
- D 1 - I - 0x02E125 0B:A115: E9        .byte $E9   ; 
- D 1 - I - 0x02E126 0B:A116: EA        .byte $EA   ; 
- D 1 - I - 0x02E127 0B:A117: A3        .byte $A3   ; 
- D 1 - I - 0x02E128 0B:A118: 0A        .byte $0A   ; 
- D 1 - I - 0x02E129 0B:A119: 00        .byte $00   ; 
- D 1 - I - 0x02E12A 0B:A11A: 90        .byte $90   ; 
- D 1 - I - 0x02E12B 0B:A11B: A2        .byte $A2   ; 
- D 1 - I - 0x02E12C 0B:A11C: C1        .byte $C1   ; 
- D 1 - I - 0x02E12D 0B:A11D: C2        .byte $C2   ; 
- D 1 - I - 0x02E12E 0B:A11E: B6        .byte $B6   ; 
- D 1 - I - 0x02E12F 0B:A11F: B1        .byte $B1   ; 
- D 1 - I - 0x02E130 0B:A120: C6        .byte $C6   ; 
- D 1 - I - 0x02E131 0B:A121: B5        .byte $B5   ; 
- D 1 - I - 0x02E132 0B:A122: C7        .byte $C7   ; 
- D 1 - I - 0x02E133 0B:A123: 00        .byte $00   ; 
- D 1 - I - 0x02E134 0B:A124: C8        .byte $C8   ; 
- D 1 - I - 0x02E135 0B:A125: 00        .byte $00   ; 
- D 1 - I - 0x02E136 0B:A126: E8        .byte $E8   ; 
- D 1 - I - 0x02E137 0B:A127: DA        .byte $DA   ; 
- D 1 - I - 0x02E138 0B:A128: E0        .byte $E0   ; 
- D 1 - I - 0x02E139 0B:A129: EB        .byte $EB   ; 
- D 1 - I - 0x02E13A 0B:A12A: EC        .byte $EC   ; 
- D 1 - I - 0x02E13B 0B:A12B: 03        .byte $03   ; 
- D 1 - I - 0x02E13C 0B:A12C: 00        .byte $00   ; 
- D 1 - I - 0x02E13D 0B:A12D: 83        .byte $83   ; 
- D 1 - I - 0x02E13E 0B:A12E: B6        .byte $B6   ; 
- D 1 - I - 0x02E13F 0B:A12F: 00        .byte $00   ; 
- D 1 - I - 0x02E140 0B:A130: A3        .byte $A3   ; 
- D 1 - I - 0x02E141 0B:A131: 0A        .byte $0A   ; 
- D 1 - I - 0x02E142 0B:A132: 00        .byte $00   ; 
- D 1 - I - 0x02E143 0B:A133: 83        .byte $83   ; 
- D 1 - I - 0x02E144 0B:A134: A2        .byte $A2   ; 
- D 1 - I - 0x02E145 0B:A135: C9        .byte $C9   ; 
- D 1 - I - 0x02E146 0B:A136: CA        .byte $CA   ; 
- D 1 - I - 0x02E147 0B:A137: 03        .byte $03   ; 
- D 1 - I - 0x02E148 0B:A138: 00        .byte $00   ; 
- D 1 - I - 0x02E149 0B:A139: 85        .byte $85   ; 
- D 1 - I - 0x02E14A 0B:A13A: CB        .byte $CB   ; 
- D 1 - I - 0x02E14B 0B:A13B: B6        .byte $B6   ; 
- D 1 - I - 0x02E14C 0B:A13C: 00        .byte $00   ; 
- D 1 - I - 0x02E14D 0B:A13D: 00        .byte $00   ; 
- D 1 - I - 0x02E14E 0B:A13E: C7        .byte $C7   ; 
- D 1 - I - 0x02E14F 0B:A13F: C3        .byte $C3   ; 
- D 1 - I - 0x02E150 0B:A140: ED        .byte $ED   ; 
- D 1 - I - 0x02E151 0B:A141: 07        .byte $07   ; 
- D 1 - I - 0x02E152 0B:A142: 00        .byte $00   ; 
- D 1 - I - 0x02E153 0B:A143: 81        .byte $81   ; 
- D 1 - I - 0x02E154 0B:A144: A3        .byte $A3   ; 
- D 1 - I - 0x02E155 0B:A145: 0A        .byte $0A   ; 
- D 1 - I - 0x02E156 0B:A146: 00        .byte $00   ; 
- D 1 - I - 0x02E157 0B:A147: 81        .byte $81   ; 
- D 1 - I - 0x02E158 0B:A148: A2        .byte $A2   ; 
- D 1 - I - 0x02E159 0B:A149: 14        .byte $14   ; 
- D 1 - I - 0x02E15A 0B:A14A: 00        .byte $00   ; 
- D 1 - I - 0x02E15B 0B:A14B: 81        .byte $81   ; 
- D 1 - I - 0x02E15C 0B:A14C: A3        .byte $A3   ; 
- D 1 - I - 0x02E15D 0B:A14D: 0A        .byte $0A   ; 
- D 1 - I - 0x02E15E 0B:A14E: 00        .byte $00   ; 
- D 1 - I - 0x02E15F 0B:A14F: 81        .byte $81   ; 
- D 1 - I - 0x02E160 0B:A150: A2        .byte $A2   ; 
- D 1 - I - 0x02E161 0B:A151: 14        .byte $14   ; 
- D 1 - I - 0x02E162 0B:A152: 00        .byte $00   ; 
- D 1 - I - 0x02E163 0B:A153: 81        .byte $81   ; 
- D 1 - I - 0x02E164 0B:A154: A3        .byte $A3   ; 
- D 1 - I - 0x02E165 0B:A155: 0A        .byte $0A   ; 
- D 1 - I - 0x02E166 0B:A156: 00        .byte $00   ; 
- D 1 - I - 0x02E167 0B:A157: 81        .byte $81   ; 
- D 1 - I - 0x02E168 0B:A158: A4        .byte $A4   ; 
- D 1 - I - 0x02E169 0B:A159: 14        .byte $14   ; 
- D 1 - I - 0x02E16A 0B:A15A: A5        .byte $A5   ; 
- D 1 - I - 0x02E16B 0B:A15B: 81        .byte $81   ; 
- D 1 - I - 0x02E16C 0B:A15C: A6        .byte $A6   ; 
- D 1 - I - 0x02E16D 0B:A15D: 7E        .byte $7E   ; 
- D 1 - I - 0x02E16E 0B:A15E: 00        .byte $00   ; 
- D 1 - I - 0x02E16F 0B:A15F: 7E        .byte $7E   ; 
- D 1 - I - 0x02E170 0B:A160: 00        .byte $00   ; 
- D 1 - I - 0x02E171 0B:A161: 7E        .byte $7E   ; 
- D 1 - I - 0x02E172 0B:A162: 00        .byte $00   ; 
- D 1 - I - 0x02E173 0B:A163: 2B        .byte $2B   ; 
- D 1 - I - 0x02E174 0B:A164: 00        .byte $00   ; 
- D 1 - I - 0x02E175 0B:A165: 09        .byte $09   ; 
- D 1 - I - 0x02E176 0B:A166: FF        .byte $FF   ; 
- D 1 - I - 0x02E177 0B:A167: 82        .byte $82   ; 
- D 1 - I - 0x02E178 0B:A168: 7B        .byte $7B   ; 
- D 1 - I - 0x02E179 0B:A169: 1A        .byte $1A   ; 
- D 1 - I - 0x02E17A 0B:A16A: 03        .byte $03   ; 
- D 1 - I - 0x02E17B 0B:A16B: 5A        .byte $5A   ; 
- D 1 - I - 0x02E17C 0B:A16C: 91        .byte $91   ; 
- D 1 - I - 0x02E17D 0B:A16D: CE        .byte $CE   ; 
- D 1 - I - 0x02E17E 0B:A16E: FF        .byte $FF   ; 
- D 1 - I - 0x02E17F 0B:A16F: FF        .byte $FF   ; 
- D 1 - I - 0x02E180 0B:A170: 77        .byte $77   ; 
- D 1 - I - 0x02E181 0B:A171: 21        .byte $21   ; 
- D 1 - I - 0x02E182 0B:A172: 95        .byte $95   ; 
- D 1 - I - 0x02E183 0B:A173: 55        .byte $55   ; 
- D 1 - I - 0x02E184 0B:A174: 55        .byte $55   ; 
- D 1 - I - 0x02E185 0B:A175: CC        .byte $CC   ; 
- D 1 - I - 0x02E186 0B:A176: FF        .byte $FF   ; 
- D 1 - I - 0x02E187 0B:A177: FF        .byte $FF   ; 
- D 1 - I - 0x02E188 0B:A178: 37        .byte $37   ; 
- D 1 - I - 0x02E189 0B:A179: 00        .byte $00   ; 
- D 1 - I - 0x02E18A 0B:A17A: 59        .byte $59   ; 
- D 1 - I - 0x02E18B 0B:A17B: 55        .byte $55   ; 
- D 1 - I - 0x02E18C 0B:A17C: 55        .byte $55   ; 
- D 1 - I - 0x02E18D 0B:A17D: DD        .byte $DD   ; 
- D 1 - I - 0x02E18E 0B:A17E: 21        .byte $21   ; 
- D 1 - I - 0x02E18F 0B:A17F: FF        .byte $FF   ; 
- D 1 - I - 0x02E190 0B:A180: FF        .byte $FF   ; 



.export _off003_0x02E191_16
_off003_0x02E191_16:
- D 1 - I - 0x02E191 0B:A181: 00        .byte $00   ; 
- D 1 - I - 0x02E192 0B:A182: 20        .byte $20   ; 
- D 1 - I - 0x02E193 0B:A183: 67        .byte $67   ; 
- D 1 - I - 0x02E194 0B:A184: 00        .byte $00   ; 
- D 1 - I - 0x02E195 0B:A185: 81        .byte $81   ; 
- D 1 - I - 0x02E196 0B:A186: 01        .byte $01   ; 
- D 1 - I - 0x02E197 0B:A187: 10        .byte $10   ; 
- D 1 - I - 0x02E198 0B:A188: 03        .byte $03   ; 
- D 1 - I - 0x02E199 0B:A189: 81        .byte $81   ; 
- D 1 - I - 0x02E19A 0B:A18A: 02        .byte $02   ; 
- D 1 - I - 0x02E19B 0B:A18B: 0E        .byte $0E   ; 
- D 1 - I - 0x02E19C 0B:A18C: 00        .byte $00   ; 
- D 1 - I - 0x02E19D 0B:A18D: 81        .byte $81   ; 
- D 1 - I - 0x02E19E 0B:A18E: 04        .byte $04   ; 
- D 1 - I - 0x02E19F 0B:A18F: 05        .byte $05   ; 
- D 1 - I - 0x02E1A0 0B:A190: 00        .byte $00   ; 
- D 1 - I - 0x02E1A1 0B:A191: 85        .byte $85   ; 
- D 1 - I - 0x02E1A2 0B:A192: 09        .byte $09   ; 
- D 1 - I - 0x02E1A3 0B:A193: 00        .byte $00   ; 
- D 1 - I - 0x02E1A4 0B:A194: 0A        .byte $0A   ; 
- D 1 - I - 0x02E1A5 0B:A195: 35        .byte $35   ; 
- D 1 - I - 0x02E1A6 0B:A196: 00        .byte $00   ; 
- D 1 - I - 0x02E1A7 0B:A197: C4        .byte $C4   ; 
- D 1 - I - 0x02E1A8 0B:A198: 36        .byte $36   ; 
- D 1 - I - 0x02E1A9 0B:A199: 83        .byte $83   ; 
- D 1 - I - 0x02E1AA 0B:A19A: 00        .byte $00   ; 
- D 1 - I - 0x02E1AB 0B:A19B: 00        .byte $00   ; 
- D 1 - I - 0x02E1AC 0B:A19C: 05        .byte $05   ; 
- D 1 - I - 0x02E1AD 0B:A19D: 0E        .byte $0E   ; 
- D 1 - I - 0x02E1AE 0B:A19E: 00        .byte $00   ; 
- D 1 - I - 0x02E1AF 0B:A19F: 83        .byte $83   ; 
- D 1 - I - 0x02E1B0 0B:A1A0: 04        .byte $04   ; 
- D 1 - I - 0x02E1B1 0B:A1A1: 00        .byte $00   ; 
- D 1 - I - 0x02E1B2 0B:A1A2: 00        .byte $00   ; 
- D 1 - I - 0x02E1B3 0B:A1A3: C6        .byte $C6   ; 
- D 1 - I - 0x02E1B4 0B:A1A4: 0B        .byte $0B   ; 
- D 1 - I - 0x02E1B5 0B:A1A5: 84        .byte $84   ; 
- D 1 - I - 0x02E1B6 0B:A1A6: 36        .byte $36   ; 
- D 1 - I - 0x02E1B7 0B:A1A7: 37        .byte $37   ; 
- D 1 - I - 0x02E1B8 0B:A1A8: 3A        .byte $3A   ; 
- D 1 - I - 0x02E1B9 0B:A1A9: 3B        .byte $3B   ; 
- D 1 - I - 0x02E1BA 0B:A1AA: 04        .byte $04   ; 
- D 1 - I - 0x02E1BB 0B:A1AB: 00        .byte $00   ; 
- D 1 - I - 0x02E1BC 0B:A1AC: 81        .byte $81   ; 
- D 1 - I - 0x02E1BD 0B:A1AD: 05        .byte $05   ; 
- D 1 - I - 0x02E1BE 0B:A1AE: 0E        .byte $0E   ; 
- D 1 - I - 0x02E1BF 0B:A1AF: 00        .byte $00   ; 
- D 1 - I - 0x02E1C0 0B:A1B0: 82        .byte $82   ; 
- D 1 - I - 0x02E1C1 0B:A1B1: 04        .byte $04   ; 
- D 1 - I - 0x02E1C2 0B:A1B2: 00        .byte $00   ; 
- D 1 - I - 0x02E1C3 0B:A1B3: C7        .byte $C7   ; 
- D 1 - I - 0x02E1C4 0B:A1B4: 11        .byte $11   ; 
- D 1 - I - 0x02E1C5 0B:A1B5: 83        .byte $83   ; 
- D 1 - I - 0x02E1C6 0B:A1B6: 3A        .byte $3A   ; 
- D 1 - I - 0x02E1C7 0B:A1B7: 3B        .byte $3B   ; 
- D 1 - I - 0x02E1C8 0B:A1B8: 00        .byte $00   ; 
- D 1 - I - 0x02E1C9 0B:A1B9: C3        .byte $C3   ; 
- D 1 - I - 0x02E1CA 0B:A1BA: 3C        .byte $3C   ; 
- D 1 - I - 0x02E1CB 0B:A1BB: 83        .byte $83   ; 
- D 1 - I - 0x02E1CC 0B:A1BC: 00        .byte $00   ; 
- D 1 - I - 0x02E1CD 0B:A1BD: 00        .byte $00   ; 
- D 1 - I - 0x02E1CE 0B:A1BE: 05        .byte $05   ; 
- D 1 - I - 0x02E1CF 0B:A1BF: 0E        .byte $0E   ; 
- D 1 - I - 0x02E1D0 0B:A1C0: 00        .byte $00   ; 
- D 1 - I - 0x02E1D1 0B:A1C1: 84        .byte $84   ; 
- D 1 - I - 0x02E1D2 0B:A1C2: 04        .byte $04   ; 
- D 1 - I - 0x02E1D3 0B:A1C3: 18        .byte $18   ; 
- D 1 - I - 0x02E1D4 0B:A1C4: 19        .byte $19   ; 
- D 1 - I - 0x02E1D5 0B:A1C5: 00        .byte $00   ; 
- D 1 - I - 0x02E1D6 0B:A1C6: C5        .byte $C5   ; 
- D 1 - I - 0x02E1D7 0B:A1C7: 1A        .byte $1A   ; 
- D 1 - I - 0x02E1D8 0B:A1C8: C8        .byte $C8   ; 
- D 1 - I - 0x02E1D9 0B:A1C9: 3F        .byte $3F   ; 
- D 1 - I - 0x02E1DA 0B:A1CA: 81        .byte $81   ; 
- D 1 - I - 0x02E1DB 0B:A1CB: 05        .byte $05   ; 
- D 1 - I - 0x02E1DC 0B:A1CC: 0E        .byte $0E   ; 
- D 1 - I - 0x02E1DD 0B:A1CD: 00        .byte $00   ; 
- D 1 - I - 0x02E1DE 0B:A1CE: 82        .byte $82   ; 
- D 1 - I - 0x02E1DF 0B:A1CF: 04        .byte $04   ; 
- D 1 - I - 0x02E1E0 0B:A1D0: 1F        .byte $1F   ; 
- D 1 - I - 0x02E1E1 0B:A1D1: 06        .byte $06   ; 
- D 1 - I - 0x02E1E2 0B:A1D2: 00        .byte $00   ; 
- D 1 - I - 0x02E1E3 0B:A1D3: 81        .byte $81   ; 
- D 1 - I - 0x02E1E4 0B:A1D4: 20        .byte $20   ; 
- D 1 - I - 0x02E1E5 0B:A1D5: C8        .byte $C8   ; 
- D 1 - I - 0x02E1E6 0B:A1D6: 47        .byte $47   ; 
- D 1 - I - 0x02E1E7 0B:A1D7: 81        .byte $81   ; 
- D 1 - I - 0x02E1E8 0B:A1D8: 05        .byte $05   ; 
- D 1 - I - 0x02E1E9 0B:A1D9: 0E        .byte $0E   ; 
- D 1 - I - 0x02E1EA 0B:A1DA: 00        .byte $00   ; 
- D 1 - I - 0x02E1EB 0B:A1DB: 82        .byte $82   ; 
- D 1 - I - 0x02E1EC 0B:A1DC: 04        .byte $04   ; 
- D 1 - I - 0x02E1ED 0B:A1DD: 21        .byte $21   ; 
- D 1 - I - 0x02E1EE 0B:A1DE: 04        .byte $04   ; 
- D 1 - I - 0x02E1EF 0B:A1DF: 00        .byte $00   ; 
- D 1 - I - 0x02E1F0 0B:A1E0: 83        .byte $83   ; 
- D 1 - I - 0x02E1F1 0B:A1E1: 22        .byte $22   ; 
- D 1 - I - 0x02E1F2 0B:A1E2: 00        .byte $00   ; 
- D 1 - I - 0x02E1F3 0B:A1E3: 23        .byte $23   ; 
- D 1 - I - 0x02E1F4 0B:A1E4: C8        .byte $C8   ; 
- D 1 - I - 0x02E1F5 0B:A1E5: 4F        .byte $4F   ; 
- D 1 - I - 0x02E1F6 0B:A1E6: 81        .byte $81   ; 
- D 1 - I - 0x02E1F7 0B:A1E7: 05        .byte $05   ; 
- D 1 - I - 0x02E1F8 0B:A1E8: 0E        .byte $0E   ; 
- D 1 - I - 0x02E1F9 0B:A1E9: 00        .byte $00   ; 
- D 1 - I - 0x02E1FA 0B:A1EA: 89        .byte $89   ; 
- D 1 - I - 0x02E1FB 0B:A1EB: 04        .byte $04   ; 
- D 1 - I - 0x02E1FC 0B:A1EC: 24        .byte $24   ; 
- D 1 - I - 0x02E1FD 0B:A1ED: 00        .byte $00   ; 
- D 1 - I - 0x02E1FE 0B:A1EE: 00        .byte $00   ; 
- D 1 - I - 0x02E1FF 0B:A1EF: 25        .byte $25   ; 
- D 1 - I - 0x02E200 0B:A1F0: 00        .byte $00   ; 
- D 1 - I - 0x02E201 0B:A1F1: 26        .byte $26   ; 
- D 1 - I - 0x02E202 0B:A1F2: 00        .byte $00   ; 
- D 1 - I - 0x02E203 0B:A1F3: 27        .byte $27   ; 
- D 1 - I - 0x02E204 0B:A1F4: C8        .byte $C8   ; 
- D 1 - I - 0x02E205 0B:A1F5: 57        .byte $57   ; 
- D 1 - I - 0x02E206 0B:A1F6: 81        .byte $81   ; 
- D 1 - I - 0x02E207 0B:A1F7: 05        .byte $05   ; 
- D 1 - I - 0x02E208 0B:A1F8: 0E        .byte $0E   ; 
- D 1 - I - 0x02E209 0B:A1F9: 00        .byte $00   ; 
- D 1 - I - 0x02E20A 0B:A1FA: 83        .byte $83   ; 
- D 1 - I - 0x02E20B 0B:A1FB: 04        .byte $04   ; 
- D 1 - I - 0x02E20C 0B:A1FC: 00        .byte $00   ; 
- D 1 - I - 0x02E20D 0B:A1FD: 28        .byte $28   ; 
- D 1 - I - 0x02E20E 0B:A1FE: 03        .byte $03   ; 
- D 1 - I - 0x02E20F 0B:A1FF: 00        .byte $00   ; 
- D 1 - I - 0x02E210 0B:A200: 83        .byte $83   ; 
- D 1 - I - 0x02E211 0B:A201: 29        .byte $29   ; 
- D 1 - I - 0x02E212 0B:A202: 00        .byte $00   ; 
- D 1 - I - 0x02E213 0B:A203: 2A        .byte $2A   ; 
- D 1 - I - 0x02E214 0B:A204: C5        .byte $C5   ; 
- D 1 - I - 0x02E215 0B:A205: 5F        .byte $5F   ; 
- D 1 - I - 0x02E216 0B:A206: 84        .byte $84   ; 
- D 1 - I - 0x02E217 0B:A207: 54        .byte $54   ; 
- D 1 - I - 0x02E218 0B:A208: 64        .byte $64   ; 
- D 1 - I - 0x02E219 0B:A209: 46        .byte $46   ; 
- D 1 - I - 0x02E21A 0B:A20A: 05        .byte $05   ; 
- D 1 - I - 0x02E21B 0B:A20B: 0E        .byte $0E   ; 
- D 1 - I - 0x02E21C 0B:A20C: 00        .byte $00   ; 
- D 1 - I - 0x02E21D 0B:A20D: 83        .byte $83   ; 
- D 1 - I - 0x02E21E 0B:A20E: 04        .byte $04   ; 
- D 1 - I - 0x02E21F 0B:A20F: 00        .byte $00   ; 
- D 1 - I - 0x02E220 0B:A210: 2B        .byte $2B   ; 
- D 1 - I - 0x02E221 0B:A211: 06        .byte $06   ; 
- D 1 - I - 0x02E222 0B:A212: 00        .byte $00   ; 
- D 1 - I - 0x02E223 0B:A213: 03        .byte $03   ; 
- D 1 - I - 0x02E224 0B:A214: 65        .byte $65   ; 
- D 1 - I - 0x02E225 0B:A215: C4        .byte $C4   ; 
- D 1 - I - 0x02E226 0B:A216: 66        .byte $66   ; 
- D 1 - I - 0x02E227 0B:A217: 82        .byte $82   ; 
- D 1 - I - 0x02E228 0B:A218: 00        .byte $00   ; 
- D 1 - I - 0x02E229 0B:A219: 05        .byte $05   ; 
- D 1 - I - 0x02E22A 0B:A21A: 0E        .byte $0E   ; 
- D 1 - I - 0x02E22B 0B:A21B: 00        .byte $00   ; 
- D 1 - I - 0x02E22C 0B:A21C: 81        .byte $81   ; 
- D 1 - I - 0x02E22D 0B:A21D: 04        .byte $04   ; 
- D 1 - I - 0x02E22E 0B:A21E: 03        .byte $03   ; 
- D 1 - I - 0x02E22F 0B:A21F: 00        .byte $00   ; 
- D 1 - I - 0x02E230 0B:A220: C4        .byte $C4   ; 
- D 1 - I - 0x02E231 0B:A221: 2C        .byte $2C   ; 
- D 1 - I - 0x02E232 0B:A222: 82        .byte $82   ; 
- D 1 - I - 0x02E233 0B:A223: 00        .byte $00   ; 
- D 1 - I - 0x02E234 0B:A224: 6A        .byte $6A   ; 
- D 1 - I - 0x02E235 0B:A225: 03        .byte $03   ; 
- D 1 - I - 0x02E236 0B:A226: 6B        .byte $6B   ; 
- D 1 - I - 0x02E237 0B:A227: 85        .byte $85   ; 
- D 1 - I - 0x02E238 0B:A228: 6C        .byte $6C   ; 
- D 1 - I - 0x02E239 0B:A229: 6D        .byte $6D   ; 
- D 1 - I - 0x02E23A 0B:A22A: 46        .byte $46   ; 
- D 1 - I - 0x02E23B 0B:A22B: 00        .byte $00   ; 
- D 1 - I - 0x02E23C 0B:A22C: 05        .byte $05   ; 
- D 1 - I - 0x02E23D 0B:A22D: 0E        .byte $0E   ; 
- D 1 - I - 0x02E23E 0B:A22E: 00        .byte $00   ; 
- D 1 - I - 0x02E23F 0B:A22F: 81        .byte $81   ; 
- D 1 - I - 0x02E240 0B:A230: 04        .byte $04   ; 
- D 1 - I - 0x02E241 0B:A231: 05        .byte $05   ; 
- D 1 - I - 0x02E242 0B:A232: 00        .byte $00   ; 
- D 1 - I - 0x02E243 0B:A233: C3        .byte $C3   ; 
- D 1 - I - 0x02E244 0B:A234: 30        .byte $30   ; 
- D 1 - I - 0x02E245 0B:A235: C3        .byte $C3   ; 
- D 1 - I - 0x02E246 0B:A236: 6E        .byte $6E   ; 
- D 1 - I - 0x02E247 0B:A237: C3        .byte $C3   ; 
- D 1 - I - 0x02E248 0B:A238: 6E        .byte $6E   ; 
- D 1 - I - 0x02E249 0B:A239: 83        .byte $83   ; 
- D 1 - I - 0x02E24A 0B:A23A: 32        .byte $32   ; 
- D 1 - I - 0x02E24B 0B:A23B: 6E        .byte $6E   ; 
- D 1 - I - 0x02E24C 0B:A23C: 05        .byte $05   ; 
- D 1 - I - 0x02E24D 0B:A23D: 0E        .byte $0E   ; 
- D 1 - I - 0x02E24E 0B:A23E: 00        .byte $00   ; 
- D 1 - I - 0x02E24F 0B:A23F: 81        .byte $81   ; 
- D 1 - I - 0x02E250 0B:A240: 04        .byte $04   ; 
- D 1 - I - 0x02E251 0B:A241: 06        .byte $06   ; 
- D 1 - I - 0x02E252 0B:A242: 00        .byte $00   ; 
- D 1 - I - 0x02E253 0B:A243: 8B        .byte $8B   ; 
- D 1 - I - 0x02E254 0B:A244: 33        .byte $33   ; 
- D 1 - I - 0x02E255 0B:A245: 34        .byte $34   ; 
- D 1 - I - 0x02E256 0B:A246: 33        .byte $33   ; 
- D 1 - I - 0x02E257 0B:A247: 71        .byte $71   ; 
- D 1 - I - 0x02E258 0B:A248: 34        .byte $34   ; 
- D 1 - I - 0x02E259 0B:A249: 33        .byte $33   ; 
- D 1 - I - 0x02E25A 0B:A24A: 71        .byte $71   ; 
- D 1 - I - 0x02E25B 0B:A24B: 34        .byte $34   ; 
- D 1 - I - 0x02E25C 0B:A24C: 71        .byte $71   ; 
- D 1 - I - 0x02E25D 0B:A24D: 34        .byte $34   ; 
- D 1 - I - 0x02E25E 0B:A24E: 05        .byte $05   ; 
- D 1 - I - 0x02E25F 0B:A24F: 0E        .byte $0E   ; 
- D 1 - I - 0x02E260 0B:A250: 00        .byte $00   ; 
- D 1 - I - 0x02E261 0B:A251: 81        .byte $81   ; 
- D 1 - I - 0x02E262 0B:A252: 06        .byte $06   ; 
- D 1 - I - 0x02E263 0B:A253: 10        .byte $10   ; 
- D 1 - I - 0x02E264 0B:A254: 07        .byte $07   ; 
- D 1 - I - 0x02E265 0B:A255: 81        .byte $81   ; 
- D 1 - I - 0x02E266 0B:A256: 08        .byte $08   ; 
- D 1 - I - 0x02E267 0B:A257: 7E        .byte $7E   ; 
- D 1 - I - 0x02E268 0B:A258: 00        .byte $00   ; 
- D 1 - I - 0x02E269 0B:A259: 7E        .byte $7E   ; 
- D 1 - I - 0x02E26A 0B:A25A: 00        .byte $00   ; 
- D 1 - I - 0x02E26B 0B:A25B: 7E        .byte $7E   ; 
- D 1 - I - 0x02E26C 0B:A25C: 00        .byte $00   ; 
- D 1 - I - 0x02E26D 0B:A25D: 2D        .byte $2D   ; 
- D 1 - I - 0x02E26E 0B:A25E: 00        .byte $00   ; 
- D 1 - I - 0x02E26F 0B:A25F: 0A        .byte $0A   ; 
- D 1 - I - 0x02E270 0B:A260: FF        .byte $FF   ; 
- D 1 - I - 0x02E271 0B:A261: 84        .byte $84   ; 
- D 1 - I - 0x02E272 0B:A262: 80        .byte $80   ; 
- D 1 - I - 0x02E273 0B:A263: AA        .byte $AA   ; 
- D 1 - I - 0x02E274 0B:A264: 6A        .byte $6A   ; 
- D 1 - I - 0x02E275 0B:A265: 12        .byte $12   ; 
- D 1 - I - 0x02E276 0B:A266: 04        .byte $04   ; 
- D 1 - I - 0x02E277 0B:A267: FF        .byte $FF   ; 
- D 1 - I - 0x02E278 0B:A268: 84        .byte $84   ; 
- D 1 - I - 0x02E279 0B:A269: 44        .byte $44   ; 
- D 1 - I - 0x02E27A 0B:A26A: 55        .byte $55   ; 
- D 1 - I - 0x02E27B 0B:A26B: 55        .byte $55   ; 
- D 1 - I - 0x02E27C 0B:A26C: 11        .byte $11   ; 
- D 1 - I - 0x02E27D 0B:A26D: 04        .byte $04   ; 
- D 1 - I - 0x02E27E 0B:A26E: FF        .byte $FF   ; 
- D 1 - I - 0x02E27F 0B:A26F: 84        .byte $84   ; 
- D 1 - I - 0x02E280 0B:A270: 08        .byte $08   ; 
- D 1 - I - 0x02E281 0B:A271: AA        .byte $AA   ; 
- D 1 - I - 0x02E282 0B:A272: A0        .byte $A0   ; 
- D 1 - I - 0x02E283 0B:A273: A0        .byte $A0   ; 
- D 1 - I - 0x02E284 0B:A274: 22        .byte $22   ; 
- D 1 - I - 0x02E285 0B:A275: FF        .byte $FF   ; 
- D 1 - I - 0x02E286 0B:A276: FF        .byte $FF   ; 



.export _off003_0x02E287_17
_off003_0x02E287_17:
- D 1 - I - 0x02E287 0B:A277: 00        .byte $00   ; 
- D 1 - I - 0x02E288 0B:A278: 20        .byte $20   ; 
- D 1 - I - 0x02E289 0B:A279: 7E        .byte $7E   ; 
- D 1 - I - 0x02E28A 0B:A27A: 00        .byte $00   ; 
- D 1 - I - 0x02E28B 0B:A27B: 4E        .byte $4E   ; 
- D 1 - I - 0x02E28C 0B:A27C: 00        .byte $00   ; 
- D 1 - I - 0x02E28D 0B:A27D: 81        .byte $81   ; 
- D 1 - I - 0x02E28E 0B:A27E: C1        .byte $C1   ; 
- D 1 - I - 0x02E28F 0B:A27F: C3        .byte $C3   ; 
- D 1 - I - 0x02E290 0B:A280: C1        .byte $C1   ; 
- D 1 - I - 0x02E291 0B:A281: C3        .byte $C3   ; 
- D 1 - I - 0x02E292 0B:A282: DD        .byte $DD   ; 
- D 1 - I - 0x02E293 0B:A283: 81        .byte $81   ; 
- D 1 - I - 0x02E294 0B:A284: C1        .byte $C1   ; 
- D 1 - I - 0x02E295 0B:A285: 18        .byte $18   ; 
- D 1 - I - 0x02E296 0B:A286: 00        .byte $00   ; 
- D 1 - I - 0x02E297 0B:A287: 88        .byte $88   ; 
- D 1 - I - 0x02E298 0B:A288: C1        .byte $C1   ; 
- D 1 - I - 0x02E299 0B:A289: C1        .byte $C1   ; 
- D 1 - I - 0x02E29A 0B:A28A: C4        .byte $C4   ; 
- D 1 - I - 0x02E29B 0B:A28B: C5        .byte $C5   ; 
- D 1 - I - 0x02E29C 0B:A28C: E0        .byte $E0   ; 
- D 1 - I - 0x02E29D 0B:A28D: E1        .byte $E1   ; 
- D 1 - I - 0x02E29E 0B:A28E: C1        .byte $C1   ; 
- D 1 - I - 0x02E29F 0B:A28F: C1        .byte $C1   ; 
- D 1 - I - 0x02E2A0 0B:A290: 18        .byte $18   ; 
- D 1 - I - 0x02E2A1 0B:A291: 00        .byte $00   ; 
- D 1 - I - 0x02E2A2 0B:A292: 81        .byte $81   ; 
- D 1 - I - 0x02E2A3 0B:A293: C1        .byte $C1   ; 
- D 1 - I - 0x02E2A4 0B:A294: C3        .byte $C3   ; 
- D 1 - I - 0x02E2A5 0B:A295: C6        .byte $C6   ; 
- D 1 - I - 0x02E2A6 0B:A296: C3        .byte $C3   ; 
- D 1 - I - 0x02E2A7 0B:A297: E2        .byte $E2   ; 
- D 1 - I - 0x02E2A8 0B:A298: 81        .byte $81   ; 
- D 1 - I - 0x02E2A9 0B:A299: C1        .byte $C1   ; 
- D 1 - I - 0x02E2AA 0B:A29A: 18        .byte $18   ; 
- D 1 - I - 0x02E2AB 0B:A29B: 00        .byte $00   ; 
- D 1 - I - 0x02E2AC 0B:A29C: C4        .byte $C4   ; 
- D 1 - I - 0x02E2AD 0B:A29D: C9        .byte $C9   ; 
- D 1 - I - 0x02E2AE 0B:A29E: C4        .byte $C4   ; 
- D 1 - I - 0x02E2AF 0B:A29F: E5        .byte $E5   ; 
- D 1 - I - 0x02E2B0 0B:A2A0: 18        .byte $18   ; 
- D 1 - I - 0x02E2B1 0B:A2A1: 00        .byte $00   ; 
- D 1 - I - 0x02E2B2 0B:A2A2: C4        .byte $C4   ; 
- D 1 - I - 0x02E2B3 0B:A2A3: CD        .byte $CD   ; 
- D 1 - I - 0x02E2B4 0B:A2A4: C4        .byte $C4   ; 
- D 1 - I - 0x02E2B5 0B:A2A5: E9        .byte $E9   ; 
- D 1 - I - 0x02E2B6 0B:A2A6: 18        .byte $18   ; 
- D 1 - I - 0x02E2B7 0B:A2A7: 00        .byte $00   ; 
- D 1 - I - 0x02E2B8 0B:A2A8: C4        .byte $C4   ; 
- D 1 - I - 0x02E2B9 0B:A2A9: D1        .byte $D1   ; 
- D 1 - I - 0x02E2BA 0B:A2AA: C4        .byte $C4   ; 
- D 1 - I - 0x02E2BB 0B:A2AB: ED        .byte $ED   ; 
- D 1 - I - 0x02E2BC 0B:A2AC: 18        .byte $18   ; 
- D 1 - I - 0x02E2BD 0B:A2AD: 00        .byte $00   ; 
- D 1 - I - 0x02E2BE 0B:A2AE: C4        .byte $C4   ; 
- D 1 - I - 0x02E2BF 0B:A2AF: D5        .byte $D5   ; 
- D 1 - I - 0x02E2C0 0B:A2B0: C3        .byte $C3   ; 
- D 1 - I - 0x02E2C1 0B:A2B1: F1        .byte $F1   ; 
- D 1 - I - 0x02E2C2 0B:A2B2: 81        .byte $81   ; 
- D 1 - I - 0x02E2C3 0B:A2B3: D5        .byte $D5   ; 
- D 1 - I - 0x02E2C4 0B:A2B4: 18        .byte $18   ; 
- D 1 - I - 0x02E2C5 0B:A2B5: 00        .byte $00   ; 
- D 1 - I - 0x02E2C6 0B:A2B6: C4        .byte $C4   ; 
- D 1 - I - 0x02E2C7 0B:A2B7: D9        .byte $D9   ; 
- D 1 - I - 0x02E2C8 0B:A2B8: C4        .byte $C4   ; 
- D 1 - I - 0x02E2C9 0B:A2B9: F4        .byte $F4   ; 
- D 1 - I - 0x02E2CA 0B:A2BA: 7E        .byte $7E   ; 
- D 1 - I - 0x02E2CB 0B:A2BB: 00        .byte $00   ; 
- D 1 - I - 0x02E2CC 0B:A2BC: 7E        .byte $7E   ; 
- D 1 - I - 0x02E2CD 0B:A2BD: 00        .byte $00   ; 
- D 1 - I - 0x02E2CE 0B:A2BE: 7E        .byte $7E   ; 
- D 1 - I - 0x02E2CF 0B:A2BF: 00        .byte $00   ; 
- D 1 - I - 0x02E2D0 0B:A2C0: 7E        .byte $7E   ; 
- D 1 - I - 0x02E2D1 0B:A2C1: 00        .byte $00   ; 
- D 1 - I - 0x02E2D2 0B:A2C2: 27        .byte $27   ; 
- D 1 - I - 0x02E2D3 0B:A2C3: 00        .byte $00   ; 
- D 1 - I - 0x02E2D4 0B:A2C4: 82        .byte $82   ; 
- D 1 - I - 0x02E2D5 0B:A2C5: 10        .byte $10   ; 
- D 1 - I - 0x02E2D6 0B:A2C6: 40        .byte $40   ; 
- D 1 - I - 0x02E2D7 0B:A2C7: 06        .byte $06   ; 
- D 1 - I - 0x02E2D8 0B:A2C8: 00        .byte $00   ; 
- D 1 - I - 0x02E2D9 0B:A2C9: 82        .byte $82   ; 
- D 1 - I - 0x02E2DA 0B:A2CA: 05        .byte $05   ; 
- D 1 - I - 0x02E2DB 0B:A2CB: 05        .byte $05   ; 
- D 1 - I - 0x02E2DC 0B:A2CC: 23        .byte $23   ; 
- D 1 - I - 0x02E2DD 0B:A2CD: 00        .byte $00   ; 
- D 1 - I - 0x02E2DE 0B:A2CE: FF        .byte $FF   ; 



.export _off003_0x02E2DF_18
_off003_0x02E2DF_18:
- D 1 - I - 0x02E2DF 0B:A2CF: 00        .byte $00   ; 
- D 1 - I - 0x02E2E0 0B:A2D0: 20        .byte $20   ; 
- D 1 - I - 0x02E2E1 0B:A2D1: 7E        .byte $7E   ; 
- D 1 - I - 0x02E2E2 0B:A2D2: 00        .byte $00   ; 
- D 1 - I - 0x02E2E3 0B:A2D3: 82        .byte $82   ; 
- D 1 - I - 0x02E2E4 0B:A2D4: 00        .byte $00   ; 
- D 1 - I - 0x02E2E5 0B:A2D5: 00        .byte $00   ; 
- D 1 - I - 0x02E2E6 0B:A2D6: 30        .byte $30   ; 
- D 1 - I - 0x02E2E7 0B:A2D7: 01        .byte $01   ; 
- D 1 - I - 0x02E2E8 0B:A2D8: C4        .byte $C4   ; 
- D 1 - I - 0x02E2E9 0B:A2D9: 1A        .byte $1A   ; 
- D 1 - I - 0x02E2EA 0B:A2DA: 0C        .byte $0C   ; 
- D 1 - I - 0x02E2EB 0B:A2DB: 01        .byte $01   ; 
- D 1 - I - 0x02E2EC 0B:A2DC: 0F        .byte $0F   ; 
- D 1 - I - 0x02E2ED 0B:A2DD: 02        .byte $02   ; 
- D 1 - I - 0x02E2EE 0B:A2DE: 81        .byte $81   ; 
- D 1 - I - 0x02E2EF 0B:A2DF: 04        .byte $04   ; 
- D 1 - I - 0x02E2F0 0B:A2E0: C5        .byte $C5   ; 
- D 1 - I - 0x02E2F1 0B:A2E1: 1E        .byte $1E   ; 
- D 1 - I - 0x02E2F2 0B:A2E2: 1A        .byte $1A   ; 
- D 1 - I - 0x02E2F3 0B:A2E3: 02        .byte $02   ; 
- D 1 - I - 0x02E2F4 0B:A2E4: 81        .byte $81   ; 
- D 1 - I - 0x02E2F5 0B:A2E5: 05        .byte $05   ; 
- D 1 - I - 0x02E2F6 0B:A2E6: C5        .byte $C5   ; 
- D 1 - I - 0x02E2F7 0B:A2E7: 23        .byte $23   ; 
- D 1 - I - 0x02E2F8 0B:A2E8: 0B        .byte $0B   ; 
- D 1 - I - 0x02E2F9 0B:A2E9: 02        .byte $02   ; 
- D 1 - I - 0x02E2FA 0B:A2EA: 0E        .byte $0E   ; 
- D 1 - I - 0x02E2FB 0B:A2EB: 01        .byte $01   ; 
- D 1 - I - 0x02E2FC 0B:A2EC: 85        .byte $85   ; 
- D 1 - I - 0x02E2FD 0B:A2ED: 06        .byte $06   ; 
- D 1 - I - 0x02E2FE 0B:A2EE: 07        .byte $07   ; 
- D 1 - I - 0x02E2FF 0B:A2EF: 28        .byte $28   ; 
- D 1 - I - 0x02E300 0B:A2F0: 00        .byte $00   ; 
- D 1 - I - 0x02E301 0B:A2F1: 29        .byte $29   ; 
- D 1 - I - 0x02E302 0B:A2F2: 0D        .byte $0D   ; 
- D 1 - I - 0x02E303 0B:A2F3: 01        .byte $01   ; 
- D 1 - I - 0x02E304 0B:A2F4: 0D        .byte $0D   ; 
- D 1 - I - 0x02E305 0B:A2F5: 02        .byte $02   ; 
- D 1 - I - 0x02E306 0B:A2F6: C3        .byte $C3   ; 
- D 1 - I - 0x02E307 0B:A2F7: 08        .byte $08   ; 
- D 1 - I - 0x02E308 0B:A2F8: 83        .byte $83   ; 
- D 1 - I - 0x02E309 0B:A2F9: 00        .byte $00   ; 
- D 1 - I - 0x02E30A 0B:A2FA: 00        .byte $00   ; 
- D 1 - I - 0x02E30B 0B:A2FB: 2A        .byte $2A   ; 
- D 1 - I - 0x02E30C 0B:A2FC: 0D        .byte $0D   ; 
- D 1 - I - 0x02E30D 0B:A2FD: 02        .byte $02   ; 
- D 1 - I - 0x02E30E 0B:A2FE: 0D        .byte $0D   ; 
- D 1 - I - 0x02E30F 0B:A2FF: 03        .byte $03   ; 
- D 1 - I - 0x02E310 0B:A300: C3        .byte $C3   ; 
- D 1 - I - 0x02E311 0B:A301: 0B        .byte $0B   ; 
- D 1 - I - 0x02E312 0B:A302: 82        .byte $82   ; 
- D 1 - I - 0x02E313 0B:A303: 2B        .byte $2B   ; 
- D 1 - I - 0x02E314 0B:A304: 00        .byte $00   ; 
- D 1 - I - 0x02E315 0B:A305: C3        .byte $C3   ; 
- D 1 - I - 0x02E316 0B:A306: 2C        .byte $2C   ; 
- D 1 - I - 0x02E317 0B:A307: 0B        .byte $0B   ; 
- D 1 - I - 0x02E318 0B:A308: 03        .byte $03   ; 
- D 1 - I - 0x02E319 0B:A309: 0D        .byte $0D   ; 
- D 1 - I - 0x02E31A 0B:A30A: 01        .byte $01   ; 
- D 1 - I - 0x02E31B 0B:A30B: C3        .byte $C3   ; 
- D 1 - I - 0x02E31C 0B:A30C: 0E        .byte $0E   ; 
- D 1 - I - 0x02E31D 0B:A30D: C5        .byte $C5   ; 
- D 1 - I - 0x02E31E 0B:A30E: 2F        .byte $2F   ; 
- D 1 - I - 0x02E31F 0B:A30F: 18        .byte $18   ; 
- D 1 - I - 0x02E320 0B:A310: 01        .byte $01   ; 
- D 1 - I - 0x02E321 0B:A311: C3        .byte $C3   ; 
- D 1 - I - 0x02E322 0B:A312: 11        .byte $11   ; 
- D 1 - I - 0x02E323 0B:A313: 82        .byte $82   ; 
- D 1 - I - 0x02E324 0B:A314: 34        .byte $34   ; 
- D 1 - I - 0x02E325 0B:A315: 01        .byte $01   ; 
- D 1 - I - 0x02E326 0B:A316: C3        .byte $C3   ; 
- D 1 - I - 0x02E327 0B:A317: 35        .byte $35   ; 
- D 1 - I - 0x02E328 0B:A318: 18        .byte $18   ; 
- D 1 - I - 0x02E329 0B:A319: 01        .byte $01   ; 
- D 1 - I - 0x02E32A 0B:A31A: 82        .byte $82   ; 
- D 1 - I - 0x02E32B 0B:A31B: 14        .byte $14   ; 
- D 1 - I - 0x02E32C 0B:A31C: 15        .byte $15   ; 
- D 1 - I - 0x02E32D 0B:A31D: 03        .byte $03   ; 
- D 1 - I - 0x02E32E 0B:A31E: 01        .byte $01   ; 
- D 1 - I - 0x02E32F 0B:A31F: 82        .byte $82   ; 
- D 1 - I - 0x02E330 0B:A320: 38        .byte $38   ; 
- D 1 - I - 0x02E331 0B:A321: 39        .byte $39   ; 
- D 1 - I - 0x02E332 0B:A322: 18        .byte $18   ; 
- D 1 - I - 0x02E333 0B:A323: 01        .byte $01   ; 
- D 1 - I - 0x02E334 0B:A324: 82        .byte $82   ; 
- D 1 - I - 0x02E335 0B:A325: 16        .byte $16   ; 
- D 1 - I - 0x02E336 0B:A326: 17        .byte $17   ; 
- D 1 - I - 0x02E337 0B:A327: 04        .byte $04   ; 
- D 1 - I - 0x02E338 0B:A328: 01        .byte $01   ; 
- D 1 - I - 0x02E339 0B:A329: C3        .byte $C3   ; 
- D 1 - I - 0x02E33A 0B:A32A: 3A        .byte $3A   ; 
- D 1 - I - 0x02E33B 0B:A32B: 17        .byte $17   ; 
- D 1 - I - 0x02E33C 0B:A32C: 01        .byte $01   ; 
- D 1 - I - 0x02E33D 0B:A32D: 82        .byte $82   ; 
- D 1 - I - 0x02E33E 0B:A32E: 18        .byte $18   ; 
- D 1 - I - 0x02E33F 0B:A32F: 19        .byte $19   ; 
- D 1 - I - 0x02E340 0B:A330: 12        .byte $12   ; 
- D 1 - I - 0x02E341 0B:A331: 01        .byte $01   ; 
- D 1 - I - 0x02E342 0B:A332: 7E        .byte $7E   ; 
- D 1 - I - 0x02E343 0B:A333: 00        .byte $00   ; 
- D 1 - I - 0x02E344 0B:A334: 7E        .byte $7E   ; 
- D 1 - I - 0x02E345 0B:A335: 00        .byte $00   ; 
- D 1 - I - 0x02E346 0B:A336: 7E        .byte $7E   ; 
- D 1 - I - 0x02E347 0B:A337: 00        .byte $00   ; 
- D 1 - I - 0x02E348 0B:A338: 7E        .byte $7E   ; 
- D 1 - I - 0x02E349 0B:A339: 00        .byte $00   ; 
- D 1 - I - 0x02E34A 0B:A33A: 08        .byte $08   ; 
- D 1 - I - 0x02E34B 0B:A33B: 00        .byte $00   ; 
- D 1 - I - 0x02E34C 0B:A33C: FF        .byte $FF   ; 



.export _off003_0x02E34D_19
_off003_0x02E34D_19:
- D 1 - I - 0x02E34D 0B:A33D: 00        .byte $00   ; 
- D 1 - I - 0x02E34E 0B:A33E: 20        .byte $20   ; 
- D 1 - I - 0x02E34F 0B:A33F: 7E        .byte $7E   ; 
- D 1 - I - 0x02E350 0B:A340: 00        .byte $00   ; 
- D 1 - I - 0x02E351 0B:A341: 82        .byte $82   ; 
- D 1 - I - 0x02E352 0B:A342: 00        .byte $00   ; 
- D 1 - I - 0x02E353 0B:A343: 00        .byte $00   ; 
- D 1 - I - 0x02E354 0B:A344: 0C        .byte $0C   ; 
- D 1 - I - 0x02E355 0B:A345: 01        .byte $01   ; 
- D 1 - I - 0x02E356 0B:A346: 8A        .byte $8A   ; 
- D 1 - I - 0x02E357 0B:A347: 3D        .byte $3D   ; 
- D 1 - I - 0x02E358 0B:A348: 3E        .byte $3E   ; 
- D 1 - I - 0x02E359 0B:A349: 01        .byte $01   ; 
- D 1 - I - 0x02E35A 0B:A34A: 3F        .byte $3F   ; 
- D 1 - I - 0x02E35B 0B:A34B: 55        .byte $55   ; 
- D 1 - I - 0x02E35C 0B:A34C: 56        .byte $56   ; 
- D 1 - I - 0x02E35D 0B:A34D: 01        .byte $01   ; 
- D 1 - I - 0x02E35E 0B:A34E: 01        .byte $01   ; 
- D 1 - I - 0x02E35F 0B:A34F: 57        .byte $57   ; 
- D 1 - I - 0x02E360 0B:A350: 58        .byte $58   ; 
- D 1 - I - 0x02E361 0B:A351: 16        .byte $16   ; 
- D 1 - I - 0x02E362 0B:A352: 01        .byte $01   ; 
- D 1 - I - 0x02E363 0B:A353: 84        .byte $84   ; 
- D 1 - I - 0x02E364 0B:A354: 40        .byte $40   ; 
- D 1 - I - 0x02E365 0B:A355: 41        .byte $41   ; 
- D 1 - I - 0x02E366 0B:A356: 01        .byte $01   ; 
- D 1 - I - 0x02E367 0B:A357: 42        .byte $42   ; 
- D 1 - I - 0x02E368 0B:A358: C3        .byte $C3   ; 
- D 1 - I - 0x02E369 0B:A359: 59        .byte $59   ; 
- D 1 - I - 0x02E36A 0B:A35A: 83        .byte $83   ; 
- D 1 - I - 0x02E36B 0B:A35B: 01        .byte $01   ; 
- D 1 - I - 0x02E36C 0B:A35C: 5C        .byte $5C   ; 
- D 1 - I - 0x02E36D 0B:A35D: 5D        .byte $5D   ; 
- D 1 - I - 0x02E36E 0B:A35E: 0A        .byte $0A   ; 
- D 1 - I - 0x02E36F 0B:A35F: 01        .byte $01   ; 
- D 1 - I - 0x02E370 0B:A360: 0C        .byte $0C   ; 
- D 1 - I - 0x02E371 0B:A361: 02        .byte $02   ; 
- D 1 - I - 0x02E372 0B:A362: C4        .byte $C4   ; 
- D 1 - I - 0x02E373 0B:A363: 43        .byte $43   ; 
- D 1 - I - 0x02E374 0B:A364: C5        .byte $C5   ; 
- D 1 - I - 0x02E375 0B:A365: 5E        .byte $5E   ; 
- D 1 - I - 0x02E376 0B:A366: 18        .byte $18   ; 
- D 1 - I - 0x02E377 0B:A367: 02        .byte $02   ; 
- D 1 - I - 0x02E378 0B:A368: C3        .byte $C3   ; 
- D 1 - I - 0x02E379 0B:A369: 47        .byte $47   ; 
- D 1 - I - 0x02E37A 0B:A36A: 82        .byte $82   ; 
- D 1 - I - 0x02E37B 0B:A36B: 00        .byte $00   ; 
- D 1 - I - 0x02E37C 0B:A36C: 00        .byte $00   ; 
- D 1 - I - 0x02E37D 0B:A36D: C3        .byte $C3   ; 
- D 1 - I - 0x02E37E 0B:A36E: 63        .byte $63   ; 
- D 1 - I - 0x02E37F 0B:A36F: 0B        .byte $0B   ; 
- D 1 - I - 0x02E380 0B:A370: 02        .byte $02   ; 
- D 1 - I - 0x02E381 0B:A371: 0D        .byte $0D   ; 
- D 1 - I - 0x02E382 0B:A372: 01        .byte $01   ; 
- D 1 - I - 0x02E383 0B:A373: C3        .byte $C3   ; 
- D 1 - I - 0x02E384 0B:A374: 4A        .byte $4A   ; 
- D 1 - I - 0x02E385 0B:A375: 84        .byte $84   ; 
- D 1 - I - 0x02E386 0B:A376: 66        .byte $66   ; 
- D 1 - I - 0x02E387 0B:A377: 00        .byte $00   ; 
- D 1 - I - 0x02E388 0B:A378: 67        .byte $67   ; 
- D 1 - I - 0x02E389 0B:A379: 68        .byte $68   ; 
- D 1 - I - 0x02E38A 0B:A37A: 0C        .byte $0C   ; 
- D 1 - I - 0x02E38B 0B:A37B: 01        .byte $01   ; 
- D 1 - I - 0x02E38C 0B:A37C: 0D        .byte $0D   ; 
- D 1 - I - 0x02E38D 0B:A37D: 02        .byte $02   ; 
- D 1 - I - 0x02E38E 0B:A37E: C3        .byte $C3   ; 
- D 1 - I - 0x02E38F 0B:A37F: 4D        .byte $4D   ; 
- D 1 - I - 0x02E390 0B:A380: 82        .byte $82   ; 
- D 1 - I - 0x02E391 0B:A381: 69        .byte $69   ; 
- D 1 - I - 0x02E392 0B:A382: 6A        .byte $6A   ; 
- D 1 - I - 0x02E393 0B:A383: 0E        .byte $0E   ; 
- D 1 - I - 0x02E394 0B:A384: 02        .byte $02   ; 
- D 1 - I - 0x02E395 0B:A385: 0D        .byte $0D   ; 
- D 1 - I - 0x02E396 0B:A386: 03        .byte $03   ; 
- D 1 - I - 0x02E397 0B:A387: C3        .byte $C3   ; 
- D 1 - I - 0x02E398 0B:A388: 50        .byte $50   ; 
- D 1 - I - 0x02E399 0B:A389: 82        .byte $82   ; 
- D 1 - I - 0x02E39A 0B:A38A: 6B        .byte $6B   ; 
- D 1 - I - 0x02E39B 0B:A38B: 6C        .byte $6C   ; 
- D 1 - I - 0x02E39C 0B:A38C: 0E        .byte $0E   ; 
- D 1 - I - 0x02E39D 0B:A38D: 03        .byte $03   ; 
- D 1 - I - 0x02E39E 0B:A38E: 0F        .byte $0F   ; 
- D 1 - I - 0x02E39F 0B:A38F: 01        .byte $01   ; 
- D 1 - I - 0x02E3A0 0B:A390: 81        .byte $81   ; 
- D 1 - I - 0x02E3A1 0B:A391: 53        .byte $53   ; 
- D 1 - I - 0x02E3A2 0B:A392: C3        .byte $C3   ; 
- D 1 - I - 0x02E3A3 0B:A393: 6D        .byte $6D   ; 
- D 1 - I - 0x02E3A4 0B:A394: 1D        .byte $1D   ; 
- D 1 - I - 0x02E3A5 0B:A395: 01        .byte $01   ; 
- D 1 - I - 0x02E3A6 0B:A396: C3        .byte $C3   ; 
- D 1 - I - 0x02E3A7 0B:A397: 70        .byte $70   ; 
- D 1 - I - 0x02E3A8 0B:A398: 1D        .byte $1D   ; 
- D 1 - I - 0x02E3A9 0B:A399: 01        .byte $01   ; 
- D 1 - I - 0x02E3AA 0B:A39A: C3        .byte $C3   ; 
- D 1 - I - 0x02E3AB 0B:A39B: 73        .byte $73   ; 
- D 1 - I - 0x02E3AC 0B:A39C: 1C        .byte $1C   ; 
- D 1 - I - 0x02E3AD 0B:A39D: 01        .byte $01   ; 
- D 1 - I - 0x02E3AE 0B:A39E: 83        .byte $83   ; 
- D 1 - I - 0x02E3AF 0B:A39F: 54        .byte $54   ; 
- D 1 - I - 0x02E3B0 0B:A3A0: 76        .byte $76   ; 
- D 1 - I - 0x02E3B1 0B:A3A1: 77        .byte $77   ; 
- D 1 - I - 0x02E3B2 0B:A3A2: 1E        .byte $1E   ; 
- D 1 - I - 0x02E3B3 0B:A3A3: 01        .byte $01   ; 
- D 1 - I - 0x02E3B4 0B:A3A4: 82        .byte $82   ; 
- D 1 - I - 0x02E3B5 0B:A3A5: 78        .byte $78   ; 
- D 1 - I - 0x02E3B6 0B:A3A6: 79        .byte $79   ; 
- D 1 - I - 0x02E3B7 0B:A3A7: 0E        .byte $0E   ; 
- D 1 - I - 0x02E3B8 0B:A3A8: 01        .byte $01   ; 
- D 1 - I - 0x02E3B9 0B:A3A9: 7E        .byte $7E   ; 
- D 1 - I - 0x02E3BA 0B:A3AA: 00        .byte $00   ; 
- D 1 - I - 0x02E3BB 0B:A3AB: 7E        .byte $7E   ; 
- D 1 - I - 0x02E3BC 0B:A3AC: 00        .byte $00   ; 
- D 1 - I - 0x02E3BD 0B:A3AD: 7E        .byte $7E   ; 
- D 1 - I - 0x02E3BE 0B:A3AE: 00        .byte $00   ; 
- D 1 - I - 0x02E3BF 0B:A3AF: 7E        .byte $7E   ; 
- D 1 - I - 0x02E3C0 0B:A3B0: 00        .byte $00   ; 
- D 1 - I - 0x02E3C1 0B:A3B1: 08        .byte $08   ; 
- D 1 - I - 0x02E3C2 0B:A3B2: 00        .byte $00   ; 
- D 1 - I - 0x02E3C3 0B:A3B3: FF        .byte $FF   ; 



.export _off003_0x02E3C4_1A
_off003_0x02E3C4_1A:
- D 1 - I - 0x02E3C4 0B:A3B4: 00        .byte $00   ; 
- D 1 - I - 0x02E3C5 0B:A3B5: 20        .byte $20   ; 
- D 1 - I - 0x02E3C6 0B:A3B6: 7E        .byte $7E   ; 
- D 1 - I - 0x02E3C7 0B:A3B7: 00        .byte $00   ; 
- D 1 - I - 0x02E3C8 0B:A3B8: 82        .byte $82   ; 
- D 1 - I - 0x02E3C9 0B:A3B9: 00        .byte $00   ; 
- D 1 - I - 0x02E3CA 0B:A3BA: 00        .byte $00   ; 
- D 1 - I - 0x02E3CB 0B:A3BB: 0D        .byte $0D   ; 
- D 1 - I - 0x02E3CC 0B:A3BC: 01        .byte $01   ; 
- D 1 - I - 0x02E3CD 0B:A3BD: 86        .byte $86   ; 
- D 1 - I - 0x02E3CE 0B:A3BE: 7A        .byte $7A   ; 
- D 1 - I - 0x02E3CF 0B:A3BF: 7B        .byte $7B   ; 
- D 1 - I - 0x02E3D0 0B:A3C0: 01        .byte $01   ; 
- D 1 - I - 0x02E3D1 0B:A3C1: 91        .byte $91   ; 
- D 1 - I - 0x02E3D2 0B:A3C2: 01        .byte $01   ; 
- D 1 - I - 0x02E3D3 0B:A3C3: 92        .byte $92   ; 
- D 1 - I - 0x02E3D4 0B:A3C4: 1A        .byte $1A   ; 
- D 1 - I - 0x02E3D5 0B:A3C5: 01        .byte $01   ; 
- D 1 - I - 0x02E3D6 0B:A3C6: C3        .byte $C3   ; 
- D 1 - I - 0x02E3D7 0B:A3C7: 7C        .byte $7C   ; 
- D 1 - I - 0x02E3D8 0B:A3C8: C3        .byte $C3   ; 
- D 1 - I - 0x02E3D9 0B:A3C9: 93        .byte $93   ; 
- D 1 - I - 0x02E3DA 0B:A3CA: 0D        .byte $0D   ; 
- D 1 - I - 0x02E3DB 0B:A3CB: 01        .byte $01   ; 
- D 1 - I - 0x02E3DC 0B:A3CC: 0D        .byte $0D   ; 
- D 1 - I - 0x02E3DD 0B:A3CD: 02        .byte $02   ; 
- D 1 - I - 0x02E3DE 0B:A3CE: 83        .byte $83   ; 
- D 1 - I - 0x02E3DF 0B:A3CF: 7F        .byte $7F   ; 
- D 1 - I - 0x02E3E0 0B:A3D0: 81        .byte $81   ; 
- D 1 - I - 0x02E3E1 0B:A3D1: 82        .byte $82   ; 
- D 1 - I - 0x02E3E2 0B:A3D2: C3        .byte $C3   ; 
- D 1 - I - 0x02E3E3 0B:A3D3: 96        .byte $96   ; 
- D 1 - I - 0x02E3E4 0B:A3D4: 1B        .byte $1B   ; 
- D 1 - I - 0x02E3E5 0B:A3D5: 02        .byte $02   ; 
- D 1 - I - 0x02E3E6 0B:A3D6: 85        .byte $85   ; 
- D 1 - I - 0x02E3E7 0B:A3D7: 83        .byte $83   ; 
- D 1 - I - 0x02E3E8 0B:A3D8: 84        .byte $84   ; 
- D 1 - I - 0x02E3E9 0B:A3D9: 99        .byte $99   ; 
- D 1 - I - 0x02E3EA 0B:A3DA: 00        .byte $00   ; 
- D 1 - I - 0x02E3EB 0B:A3DB: 9A        .byte $9A   ; 
- D 1 - I - 0x02E3EC 0B:A3DC: 0D        .byte $0D   ; 
- D 1 - I - 0x02E3ED 0B:A3DD: 02        .byte $02   ; 
- D 1 - I - 0x02E3EE 0B:A3DE: 0E        .byte $0E   ; 
- D 1 - I - 0x02E3EF 0B:A3DF: 01        .byte $01   ; 
- D 1 - I - 0x02E3F0 0B:A3E0: 85        .byte $85   ; 
- D 1 - I - 0x02E3F1 0B:A3E1: 85        .byte $85   ; 
- D 1 - I - 0x02E3F2 0B:A3E2: 86        .byte $86   ; 
- D 1 - I - 0x02E3F3 0B:A3E3: 00        .byte $00   ; 
- D 1 - I - 0x02E3F4 0B:A3E4: 00        .byte $00   ; 
- D 1 - I - 0x02E3F5 0B:A3E5: 9B        .byte $9B   ; 
- D 1 - I - 0x02E3F6 0B:A3E6: 0D        .byte $0D   ; 
- D 1 - I - 0x02E3F7 0B:A3E7: 01        .byte $01   ; 
- D 1 - I - 0x02E3F8 0B:A3E8: 0E        .byte $0E   ; 
- D 1 - I - 0x02E3F9 0B:A3E9: 02        .byte $02   ; 
- D 1 - I - 0x02E3FA 0B:A3EA: 85        .byte $85   ; 
- D 1 - I - 0x02E3FB 0B:A3EB: 87        .byte $87   ; 
- D 1 - I - 0x02E3FC 0B:A3EC: 88        .byte $88   ; 
- D 1 - I - 0x02E3FD 0B:A3ED: 9C        .byte $9C   ; 
- D 1 - I - 0x02E3FE 0B:A3EE: 00        .byte $00   ; 
- D 1 - I - 0x02E3FF 0B:A3EF: 9D        .byte $9D   ; 
- D 1 - I - 0x02E400 0B:A3F0: 0D        .byte $0D   ; 
- D 1 - I - 0x02E401 0B:A3F1: 02        .byte $02   ; 
- D 1 - I - 0x02E402 0B:A3F2: 0E        .byte $0E   ; 
- D 1 - I - 0x02E403 0B:A3F3: 03        .byte $03   ; 
- D 1 - I - 0x02E404 0B:A3F4: 82        .byte $82   ; 
- D 1 - I - 0x02E405 0B:A3F5: 89        .byte $89   ; 
- D 1 - I - 0x02E406 0B:A3F6: 8A        .byte $8A   ; 
- D 1 - I - 0x02E407 0B:A3F7: C3        .byte $C3   ; 
- D 1 - I - 0x02E408 0B:A3F8: 9E        .byte $9E   ; 
- D 1 - I - 0x02E409 0B:A3F9: 0D        .byte $0D   ; 
- D 1 - I - 0x02E40A 0B:A3FA: 03        .byte $03   ; 
- D 1 - I - 0x02E40B 0B:A3FB: 0E        .byte $0E   ; 
- D 1 - I - 0x02E40C 0B:A3FC: 01        .byte $01   ; 
- D 1 - I - 0x02E40D 0B:A3FD: 82        .byte $82   ; 
- D 1 - I - 0x02E40E 0B:A3FE: 8B        .byte $8B   ; 
- D 1 - I - 0x02E40F 0B:A3FF: 8C        .byte $8C   ; 
- D 1 - I - 0x02E410 0B:A400: C3        .byte $C3   ; 
- D 1 - I - 0x02E411 0B:A401: A1        .byte $A1   ; 
- D 1 - I - 0x02E412 0B:A402: 1B        .byte $1B   ; 
- D 1 - I - 0x02E413 0B:A403: 01        .byte $01   ; 
- D 1 - I - 0x02E414 0B:A404: 85        .byte $85   ; 
- D 1 - I - 0x02E415 0B:A405: 8D        .byte $8D   ; 
- D 1 - I - 0x02E416 0B:A406: 8E        .byte $8E   ; 
- D 1 - I - 0x02E417 0B:A407: 01        .byte $01   ; 
- D 1 - I - 0x02E418 0B:A408: A4        .byte $A4   ; 
- D 1 - I - 0x02E419 0B:A409: A5        .byte $A5   ; 
- D 1 - I - 0x02E41A 0B:A40A: 1B        .byte $1B   ; 
- D 1 - I - 0x02E41B 0B:A40B: 01        .byte $01   ; 
- D 1 - I - 0x02E41C 0B:A40C: 85        .byte $85   ; 
- D 1 - I - 0x02E41D 0B:A40D: 8F        .byte $8F   ; 
- D 1 - I - 0x02E41E 0B:A40E: 90        .byte $90   ; 
- D 1 - I - 0x02E41F 0B:A40F: 01        .byte $01   ; 
- D 1 - I - 0x02E420 0B:A410: A6        .byte $A6   ; 
- D 1 - I - 0x02E421 0B:A411: A7        .byte $A7   ; 
- D 1 - I - 0x02E422 0B:A412: 1E        .byte $1E   ; 
- D 1 - I - 0x02E423 0B:A413: 01        .byte $01   ; 
- D 1 - I - 0x02E424 0B:A414: 82        .byte $82   ; 
- D 1 - I - 0x02E425 0B:A415: A8        .byte $A8   ; 
- D 1 - I - 0x02E426 0B:A416: A9        .byte $A9   ; 
- D 1 - I - 0x02E427 0B:A417: 1E        .byte $1E   ; 
- D 1 - I - 0x02E428 0B:A418: 01        .byte $01   ; 
- D 1 - I - 0x02E429 0B:A419: 82        .byte $82   ; 
- D 1 - I - 0x02E42A 0B:A41A: AA        .byte $AA   ; 
- D 1 - I - 0x02E42B 0B:A41B: AB        .byte $AB   ; 
- D 1 - I - 0x02E42C 0B:A41C: 0D        .byte $0D   ; 
- D 1 - I - 0x02E42D 0B:A41D: 01        .byte $01   ; 
- D 1 - I - 0x02E42E 0B:A41E: 7E        .byte $7E   ; 
- D 1 - I - 0x02E42F 0B:A41F: 00        .byte $00   ; 
- D 1 - I - 0x02E430 0B:A420: 7E        .byte $7E   ; 
- D 1 - I - 0x02E431 0B:A421: 00        .byte $00   ; 
- D 1 - I - 0x02E432 0B:A422: 7E        .byte $7E   ; 
- D 1 - I - 0x02E433 0B:A423: 00        .byte $00   ; 
- D 1 - I - 0x02E434 0B:A424: 7E        .byte $7E   ; 
- D 1 - I - 0x02E435 0B:A425: 00        .byte $00   ; 
- D 1 - I - 0x02E436 0B:A426: 08        .byte $08   ; 
- D 1 - I - 0x02E437 0B:A427: 00        .byte $00   ; 
- D 1 - I - 0x02E438 0B:A428: FF        .byte $FF   ; 



.export _off003_0x02E439_1B
_off003_0x02E439_1B:
- D 1 - I - 0x02E439 0B:A429: 00        .byte $00   ; 
- D 1 - I - 0x02E43A 0B:A42A: 20        .byte $20   ; 
- D 1 - I - 0x02E43B 0B:A42B: 7E        .byte $7E   ; 
- D 1 - I - 0x02E43C 0B:A42C: 00        .byte $00   ; 
- D 1 - I - 0x02E43D 0B:A42D: 82        .byte $82   ; 
- D 1 - I - 0x02E43E 0B:A42E: 00        .byte $00   ; 
- D 1 - I - 0x02E43F 0B:A42F: 00        .byte $00   ; 
- D 1 - I - 0x02E440 0B:A430: 13        .byte $13   ; 
- D 1 - I - 0x02E441 0B:A431: 01        .byte $01   ; 
- D 1 - I - 0x02E442 0B:A432: 82        .byte $82   ; 
- D 1 - I - 0x02E443 0B:A433: CE        .byte $CE   ; 
- D 1 - I - 0x02E444 0B:A434: CF        .byte $CF   ; 
- D 1 - I - 0x02E445 0B:A435: 17        .byte $17   ; 
- D 1 - I - 0x02E446 0B:A436: 01        .byte $01   ; 
- D 1 - I - 0x02E447 0B:A437: C4        .byte $C4   ; 
- D 1 - I - 0x02E448 0B:A438: AC        .byte $AC   ; 
- D 1 - I - 0x02E449 0B:A439: 04        .byte $04   ; 
- D 1 - I - 0x02E44A 0B:A43A: 01        .byte $01   ; 
- D 1 - I - 0x02E44B 0B:A43B: 81        .byte $81   ; 
- D 1 - I - 0x02E44C 0B:A43C: D0        .byte $D0   ; 
- D 1 - I - 0x02E44D 0B:A43D: 0B        .byte $0B   ; 
- D 1 - I - 0x02E44E 0B:A43E: 01        .byte $01   ; 
- D 1 - I - 0x02E44F 0B:A43F: 0B        .byte $0B   ; 
- D 1 - I - 0x02E450 0B:A440: 02        .byte $02   ; 
- D 1 - I - 0x02E451 0B:A441: C5        .byte $C5   ; 
- D 1 - I - 0x02E452 0B:A442: B0        .byte $B0   ; 
- D 1 - I - 0x02E453 0B:A443: 85        .byte $85   ; 
- D 1 - I - 0x02E454 0B:A444: D1        .byte $D1   ; 
- D 1 - I - 0x02E455 0B:A445: D2        .byte $D2   ; 
- D 1 - I - 0x02E456 0B:A446: 02        .byte $02   ; 
- D 1 - I - 0x02E457 0B:A447: D3        .byte $D3   ; 
- D 1 - I - 0x02E458 0B:A448: D4        .byte $D4   ; 
- D 1 - I - 0x02E459 0B:A449: 17        .byte $17   ; 
- D 1 - I - 0x02E45A 0B:A44A: 02        .byte $02   ; 
- D 1 - I - 0x02E45B 0B:A44B: C4        .byte $C4   ; 
- D 1 - I - 0x02E45C 0B:A44C: B5        .byte $B5   ; 
- D 1 - I - 0x02E45D 0B:A44D: C5        .byte $C5   ; 
- D 1 - I - 0x02E45E 0B:A44E: D5        .byte $D5   ; 
- D 1 - I - 0x02E45F 0B:A44F: 0B        .byte $0B   ; 
- D 1 - I - 0x02E460 0B:A450: 02        .byte $02   ; 
- D 1 - I - 0x02E461 0B:A451: 0C        .byte $0C   ; 
- D 1 - I - 0x02E462 0B:A452: 01        .byte $01   ; 
- D 1 - I - 0x02E463 0B:A453: 82        .byte $82   ; 
- D 1 - I - 0x02E464 0B:A454: B9        .byte $B9   ; 
- D 1 - I - 0x02E465 0B:A455: BA        .byte $BA   ; 
- D 1 - I - 0x02E466 0B:A456: 03        .byte $03   ; 
- D 1 - I - 0x02E467 0B:A457: 00        .byte $00   ; 
- D 1 - I - 0x02E468 0B:A458: C3        .byte $C3   ; 
- D 1 - I - 0x02E469 0B:A459: DA        .byte $DA   ; 
- D 1 - I - 0x02E46A 0B:A45A: 0C        .byte $0C   ; 
- D 1 - I - 0x02E46B 0B:A45B: 01        .byte $01   ; 
- D 1 - I - 0x02E46C 0B:A45C: 0C        .byte $0C   ; 
- D 1 - I - 0x02E46D 0B:A45D: 02        .byte $02   ; 
- D 1 - I - 0x02E46E 0B:A45E: C4        .byte $C4   ; 
- D 1 - I - 0x02E46F 0B:A45F: BB        .byte $BB   ; 
- D 1 - I - 0x02E470 0B:A460: C4        .byte $C4   ; 
- D 1 - I - 0x02E471 0B:A461: DD        .byte $DD   ; 
- D 1 - I - 0x02E472 0B:A462: 0C        .byte $0C   ; 
- D 1 - I - 0x02E473 0B:A463: 02        .byte $02   ; 
- D 1 - I - 0x02E474 0B:A464: 0E        .byte $0E   ; 
- D 1 - I - 0x02E475 0B:A465: 03        .byte $03   ; 
- D 1 - I - 0x02E476 0B:A466: 82        .byte $82   ; 
- D 1 - I - 0x02E477 0B:A467: BF        .byte $BF   ; 
- D 1 - I - 0x02E478 0B:A468: C0        .byte $C0   ; 
- D 1 - I - 0x02E479 0B:A469: C4        .byte $C4   ; 
- D 1 - I - 0x02E47A 0B:A46A: E1        .byte $E1   ; 
- D 1 - I - 0x02E47B 0B:A46B: 0C        .byte $0C   ; 
- D 1 - I - 0x02E47C 0B:A46C: 03        .byte $03   ; 
- D 1 - I - 0x02E47D 0B:A46D: 0D        .byte $0D   ; 
- D 1 - I - 0x02E47E 0B:A46E: 01        .byte $01   ; 
- D 1 - I - 0x02E47F 0B:A46F: 85        .byte $85   ; 
- D 1 - I - 0x02E480 0B:A470: C1        .byte $C1   ; 
- D 1 - I - 0x02E481 0B:A471: C2        .byte $C2   ; 
- D 1 - I - 0x02E482 0B:A472: 00        .byte $00   ; 
- D 1 - I - 0x02E483 0B:A473: E5        .byte $E5   ; 
- D 1 - I - 0x02E484 0B:A474: E6        .byte $E6   ; 
- D 1 - I - 0x02E485 0B:A475: 1B        .byte $1B   ; 
- D 1 - I - 0x02E486 0B:A476: 01        .byte $01   ; 
- D 1 - I - 0x02E487 0B:A477: C3        .byte $C3   ; 
- D 1 - I - 0x02E488 0B:A478: C3        .byte $C3   ; 
- D 1 - I - 0x02E489 0B:A479: 81        .byte $81   ; 
- D 1 - I - 0x02E48A 0B:A47A: E7        .byte $E7   ; 
- D 1 - I - 0x02E48B 0B:A47B: 1C        .byte $1C   ; 
- D 1 - I - 0x02E48C 0B:A47C: 01        .byte $01   ; 
- D 1 - I - 0x02E48D 0B:A47D: C3        .byte $C3   ; 
- D 1 - I - 0x02E48E 0B:A47E: C6        .byte $C6   ; 
- D 1 - I - 0x02E48F 0B:A47F: 1D        .byte $1D   ; 
- D 1 - I - 0x02E490 0B:A480: 01        .byte $01   ; 
- D 1 - I - 0x02E491 0B:A481: C3        .byte $C3   ; 
- D 1 - I - 0x02E492 0B:A482: C9        .byte $C9   ; 
- D 1 - I - 0x02E493 0B:A483: 1E        .byte $1E   ; 
- D 1 - I - 0x02E494 0B:A484: 01        .byte $01   ; 
- D 1 - I - 0x02E495 0B:A485: 82        .byte $82   ; 
- D 1 - I - 0x02E496 0B:A486: CC        .byte $CC   ; 
- D 1 - I - 0x02E497 0B:A487: CD        .byte $CD   ; 
- D 1 - I - 0x02E498 0B:A488: 10        .byte $10   ; 
- D 1 - I - 0x02E499 0B:A489: 01        .byte $01   ; 
- D 1 - I - 0x02E49A 0B:A48A: 7E        .byte $7E   ; 
- D 1 - I - 0x02E49B 0B:A48B: 00        .byte $00   ; 
- D 1 - I - 0x02E49C 0B:A48C: 7E        .byte $7E   ; 
- D 1 - I - 0x02E49D 0B:A48D: 00        .byte $00   ; 
- D 1 - I - 0x02E49E 0B:A48E: 7E        .byte $7E   ; 
- D 1 - I - 0x02E49F 0B:A48F: 00        .byte $00   ; 
- D 1 - I - 0x02E4A0 0B:A490: 7E        .byte $7E   ; 
- D 1 - I - 0x02E4A1 0B:A491: 00        .byte $00   ; 
- D 1 - I - 0x02E4A2 0B:A492: 08        .byte $08   ; 
- D 1 - I - 0x02E4A3 0B:A493: 00        .byte $00   ; 
- D 1 - I - 0x02E4A4 0B:A494: FF        .byte $FF   ; 



.export _off003_0x02E4A5_1C
_off003_0x02E4A5_1C:
- D 1 - I - 0x02E4A5 0B:A495: 00        .byte $00   ; 
- D 1 - I - 0x02E4A6 0B:A496: 20        .byte $20   ; 
- D 1 - I - 0x02E4A7 0B:A497: 7E        .byte $7E   ; 
- D 1 - I - 0x02E4A8 0B:A498: 00        .byte $00   ; 
- D 1 - I - 0x02E4A9 0B:A499: 82        .byte $82   ; 
- D 1 - I - 0x02E4AA 0B:A49A: 00        .byte $00   ; 
- D 1 - I - 0x02E4AB 0B:A49B: 00        .byte $00   ; 
- D 1 - I - 0x02E4AC 0B:A49C: 0D        .byte $0D   ; 
- D 1 - I - 0x02E4AD 0B:A49D: 01        .byte $01   ; 
- D 1 - I - 0x02E4AE 0B:A49E: 87        .byte $87   ; 
- D 1 - I - 0x02E4AF 0B:A49F: 04        .byte $04   ; 
- D 1 - I - 0x02E4B0 0B:A4A0: 05        .byte $05   ; 
- D 1 - I - 0x02E4B1 0B:A4A1: 01        .byte $01   ; 
- D 1 - I - 0x02E4B2 0B:A4A2: 1E        .byte $1E   ; 
- D 1 - I - 0x02E4B3 0B:A4A3: 1F        .byte $1F   ; 
- D 1 - I - 0x02E4B4 0B:A4A4: 01        .byte $01   ; 
- D 1 - I - 0x02E4B5 0B:A4A5: 20        .byte $20   ; 
- D 1 - I - 0x02E4B6 0B:A4A6: 19        .byte $19   ; 
- D 1 - I - 0x02E4B7 0B:A4A7: 01        .byte $01   ; 
- D 1 - I - 0x02E4B8 0B:A4A8: C3        .byte $C3   ; 
- D 1 - I - 0x02E4B9 0B:A4A9: 06        .byte $06   ; 
- D 1 - I - 0x02E4BA 0B:A4AA: C4        .byte $C4   ; 
- D 1 - I - 0x02E4BB 0B:A4AB: 21        .byte $21   ; 
- D 1 - I - 0x02E4BC 0B:A4AC: 0C        .byte $0C   ; 
- D 1 - I - 0x02E4BD 0B:A4AD: 01        .byte $01   ; 
- D 1 - I - 0x02E4BE 0B:A4AE: 0D        .byte $0D   ; 
- D 1 - I - 0x02E4BF 0B:A4AF: 02        .byte $02   ; 
- D 1 - I - 0x02E4C0 0B:A4B0: C3        .byte $C3   ; 
- D 1 - I - 0x02E4C1 0B:A4B1: 09        .byte $09   ; 
- D 1 - I - 0x02E4C2 0B:A4B2: C4        .byte $C4   ; 
- D 1 - I - 0x02E4C3 0B:A4B3: 25        .byte $25   ; 
- D 1 - I - 0x02E4C4 0B:A4B4: 19        .byte $19   ; 
- D 1 - I - 0x02E4C5 0B:A4B5: 02        .byte $02   ; 
- D 1 - I - 0x02E4C6 0B:A4B6: 84        .byte $84   ; 
- D 1 - I - 0x02E4C7 0B:A4B7: 0C        .byte $0C   ; 
- D 1 - I - 0x02E4C8 0B:A4B8: 0D        .byte $0D   ; 
- D 1 - I - 0x02E4C9 0B:A4B9: 00        .byte $00   ; 
- D 1 - I - 0x02E4CA 0B:A4BA: 00        .byte $00   ; 
- D 1 - I - 0x02E4CB 0B:A4BB: C3        .byte $C3   ; 
- D 1 - I - 0x02E4CC 0B:A4BC: 29        .byte $29   ; 
- D 1 - I - 0x02E4CD 0B:A4BD: 0C        .byte $0C   ; 
- D 1 - I - 0x02E4CE 0B:A4BE: 02        .byte $02   ; 
- D 1 - I - 0x02E4CF 0B:A4BF: 0D        .byte $0D   ; 
- D 1 - I - 0x02E4D0 0B:A4C0: 01        .byte $01   ; 
- D 1 - I - 0x02E4D1 0B:A4C1: C3        .byte $C3   ; 
- D 1 - I - 0x02E4D2 0B:A4C2: 0E        .byte $0E   ; 
- D 1 - I - 0x02E4D3 0B:A4C3: 82        .byte $82   ; 
- D 1 - I - 0x02E4D4 0B:A4C4: 2C        .byte $2C   ; 
- D 1 - I - 0x02E4D5 0B:A4C5: 2D        .byte $2D   ; 
- D 1 - I - 0x02E4D6 0B:A4C6: 0E        .byte $0E   ; 
- D 1 - I - 0x02E4D7 0B:A4C7: 01        .byte $01   ; 
- D 1 - I - 0x02E4D8 0B:A4C8: 0D        .byte $0D   ; 
- D 1 - I - 0x02E4D9 0B:A4C9: 02        .byte $02   ; 
- D 1 - I - 0x02E4DA 0B:A4CA: 84        .byte $84   ; 
- D 1 - I - 0x02E4DB 0B:A4CB: 00        .byte $00   ; 
- D 1 - I - 0x02E4DC 0B:A4CC: 11        .byte $11   ; 
- D 1 - I - 0x02E4DD 0B:A4CD: 12        .byte $12   ; 
- D 1 - I - 0x02E4DE 0B:A4CE: 2E        .byte $2E   ; 
- D 1 - I - 0x02E4DF 0B:A4CF: 0F        .byte $0F   ; 
- D 1 - I - 0x02E4E0 0B:A4D0: 02        .byte $02   ; 
- D 1 - I - 0x02E4E1 0B:A4D1: 0D        .byte $0D   ; 
- D 1 - I - 0x02E4E2 0B:A4D2: 03        .byte $03   ; 
- D 1 - I - 0x02E4E3 0B:A4D3: C3        .byte $C3   ; 
- D 1 - I - 0x02E4E4 0B:A4D4: 13        .byte $13   ; 
- D 1 - I - 0x02E4E5 0B:A4D5: 81        .byte $81   ; 
- D 1 - I - 0x02E4E6 0B:A4D6: 2F        .byte $2F   ; 
- D 1 - I - 0x02E4E7 0B:A4D7: 0F        .byte $0F   ; 
- D 1 - I - 0x02E4E8 0B:A4D8: 03        .byte $03   ; 
- D 1 - I - 0x02E4E9 0B:A4D9: 0F        .byte $0F   ; 
- D 1 - I - 0x02E4EA 0B:A4DA: 01        .byte $01   ; 
- D 1 - I - 0x02E4EB 0B:A4DB: 83        .byte $83   ; 
- D 1 - I - 0x02E4EC 0B:A4DC: 16        .byte $16   ; 
- D 1 - I - 0x02E4ED 0B:A4DD: 30        .byte $30   ; 
- D 1 - I - 0x02E4EE 0B:A4DE: 31        .byte $31   ; 
- D 1 - I - 0x02E4EF 0B:A4DF: 1C        .byte $1C   ; 
- D 1 - I - 0x02E4F0 0B:A4E0: 01        .byte $01   ; 
- D 1 - I - 0x02E4F1 0B:A4E1: 84        .byte $84   ; 
- D 1 - I - 0x02E4F2 0B:A4E2: 17        .byte $17   ; 
- D 1 - I - 0x02E4F3 0B:A4E3: 18        .byte $18   ; 
- D 1 - I - 0x02E4F4 0B:A4E4: 32        .byte $32   ; 
- D 1 - I - 0x02E4F5 0B:A4E5: 33        .byte $33   ; 
- D 1 - I - 0x02E4F6 0B:A4E6: 1B        .byte $1B   ; 
- D 1 - I - 0x02E4F7 0B:A4E7: 01        .byte $01   ; 
- D 1 - I - 0x02E4F8 0B:A4E8: C3        .byte $C3   ; 
- D 1 - I - 0x02E4F9 0B:A4E9: 19        .byte $19   ; 
- D 1 - I - 0x02E4FA 0B:A4EA: 82        .byte $82   ; 
- D 1 - I - 0x02E4FB 0B:A4EB: 34        .byte $34   ; 
- D 1 - I - 0x02E4FC 0B:A4EC: 35        .byte $35   ; 
- D 1 - I - 0x02E4FD 0B:A4ED: 1B        .byte $1B   ; 
- D 1 - I - 0x02E4FE 0B:A4EE: 01        .byte $01   ; 
- D 1 - I - 0x02E4FF 0B:A4EF: 85        .byte $85   ; 
- D 1 - I - 0x02E500 0B:A4F0: 1C        .byte $1C   ; 
- D 1 - I - 0x02E501 0B:A4F1: 1D        .byte $1D   ; 
- D 1 - I - 0x02E502 0B:A4F2: 01        .byte $01   ; 
- D 1 - I - 0x02E503 0B:A4F3: 36        .byte $36   ; 
- D 1 - I - 0x02E504 0B:A4F4: 37        .byte $37   ; 
- D 1 - I - 0x02E505 0B:A4F5: 1E        .byte $1E   ; 
- D 1 - I - 0x02E506 0B:A4F6: 01        .byte $01   ; 
- D 1 - I - 0x02E507 0B:A4F7: C3        .byte $C3   ; 
- D 1 - I - 0x02E508 0B:A4F8: 38        .byte $38   ; 
- D 1 - I - 0x02E509 0B:A4F9: 0D        .byte $0D   ; 
- D 1 - I - 0x02E50A 0B:A4FA: 01        .byte $01   ; 
- D 1 - I - 0x02E50B 0B:A4FB: 7E        .byte $7E   ; 
- D 1 - I - 0x02E50C 0B:A4FC: 00        .byte $00   ; 
- D 1 - I - 0x02E50D 0B:A4FD: 7E        .byte $7E   ; 
- D 1 - I - 0x02E50E 0B:A4FE: 00        .byte $00   ; 
- D 1 - I - 0x02E50F 0B:A4FF: 7E        .byte $7E   ; 
- D 1 - I - 0x02E510 0B:A500: 00        .byte $00   ; 
- D 1 - I - 0x02E511 0B:A501: 59        .byte $59   ; 
- D 1 - I - 0x02E512 0B:A502: 00        .byte $00   ; 
- D 1 - I - 0x02E513 0B:A503: 82        .byte $82   ; 
- D 1 - I - 0x02E514 0B:A504: 55        .byte $55   ; 
- D 1 - I - 0x02E515 0B:A505: 11        .byte $11   ; 
- D 1 - I - 0x02E516 0B:A506: 06        .byte $06   ; 
- D 1 - I - 0x02E517 0B:A507: 00        .byte $00   ; 
- D 1 - I - 0x02E518 0B:A508: 82        .byte $82   ; 
- D 1 - I - 0x02E519 0B:A509: 55        .byte $55   ; 
- D 1 - I - 0x02E51A 0B:A50A: 51        .byte $51   ; 
- D 1 - I - 0x02E51B 0B:A50B: 23        .byte $23   ; 
- D 1 - I - 0x02E51C 0B:A50C: 00        .byte $00   ; 
- D 1 - I - 0x02E51D 0B:A50D: FF        .byte $FF   ; 



.export _off003_0x02E51E_1D
_off003_0x02E51E_1D:
- D 1 - I - 0x02E51E 0B:A50E: 00        .byte $00   ; 
- D 1 - I - 0x02E51F 0B:A50F: 20        .byte $20   ; 
- D 1 - I - 0x02E520 0B:A510: 7E        .byte $7E   ; 
- D 1 - I - 0x02E521 0B:A511: 00        .byte $00   ; 
- D 1 - I - 0x02E522 0B:A512: 82        .byte $82   ; 
- D 1 - I - 0x02E523 0B:A513: 00        .byte $00   ; 
- D 1 - I - 0x02E524 0B:A514: 00        .byte $00   ; 
- D 1 - I - 0x02E525 0B:A515: 0C        .byte $0C   ; 
- D 1 - I - 0x02E526 0B:A516: 01        .byte $01   ; 
- D 1 - I - 0x02E527 0B:A517: C5        .byte $C5   ; 
- D 1 - I - 0x02E528 0B:A518: 3B        .byte $3B   ; 
- D 1 - I - 0x02E529 0B:A519: 86        .byte $86   ; 
- D 1 - I - 0x02E52A 0B:A51A: 62        .byte $62   ; 
- D 1 - I - 0x02E52B 0B:A51B: 63        .byte $63   ; 
- D 1 - I - 0x02E52C 0B:A51C: 01        .byte $01   ; 
- D 1 - I - 0x02E52D 0B:A51D: 01        .byte $01   ; 
- D 1 - I - 0x02E52E 0B:A51E: 64        .byte $64   ; 
- D 1 - I - 0x02E52F 0B:A51F: 65        .byte $65   ; 
- D 1 - I - 0x02E530 0B:A520: 16        .byte $16   ; 
- D 1 - I - 0x02E531 0B:A521: 01        .byte $01   ; 
- D 1 - I - 0x02E532 0B:A522: C4        .byte $C4   ; 
- D 1 - I - 0x02E533 0B:A523: 40        .byte $40   ; 
- D 1 - I - 0x02E534 0B:A524: C5        .byte $C5   ; 
- D 1 - I - 0x02E535 0B:A525: 66        .byte $66   ; 
- D 1 - I - 0x02E536 0B:A526: 0A        .byte $0A   ; 
- D 1 - I - 0x02E537 0B:A527: 01        .byte $01   ; 
- D 1 - I - 0x02E538 0B:A528: 0D        .byte $0D   ; 
- D 1 - I - 0x02E539 0B:A529: 02        .byte $02   ; 
- D 1 - I - 0x02E53A 0B:A52A: C4        .byte $C4   ; 
- D 1 - I - 0x02E53B 0B:A52B: 44        .byte $44   ; 
- D 1 - I - 0x02E53C 0B:A52C: C5        .byte $C5   ; 
- D 1 - I - 0x02E53D 0B:A52D: 6B        .byte $6B   ; 
- D 1 - I - 0x02E53E 0B:A52E: 17        .byte $17   ; 
- D 1 - I - 0x02E53F 0B:A52F: 02        .byte $02   ; 
- D 1 - I - 0x02E540 0B:A530: C4        .byte $C4   ; 
- D 1 - I - 0x02E541 0B:A531: 48        .byte $48   ; 
- D 1 - I - 0x02E542 0B:A532: C6        .byte $C6   ; 
- D 1 - I - 0x02E543 0B:A533: 70        .byte $70   ; 
- D 1 - I - 0x02E544 0B:A534: 09        .byte $09   ; 
- D 1 - I - 0x02E545 0B:A535: 02        .byte $02   ; 
- D 1 - I - 0x02E546 0B:A536: 0E        .byte $0E   ; 
- D 1 - I - 0x02E547 0B:A537: 01        .byte $01   ; 
- D 1 - I - 0x02E548 0B:A538: C3        .byte $C3   ; 
- D 1 - I - 0x02E549 0B:A539: 4C        .byte $4C   ; 
- D 1 - I - 0x02E54A 0B:A53A: C6        .byte $C6   ; 
- D 1 - I - 0x02E54B 0B:A53B: 76        .byte $76   ; 
- D 1 - I - 0x02E54C 0B:A53C: 09        .byte $09   ; 
- D 1 - I - 0x02E54D 0B:A53D: 01        .byte $01   ; 
- D 1 - I - 0x02E54E 0B:A53E: 0E        .byte $0E   ; 
- D 1 - I - 0x02E54F 0B:A53F: 02        .byte $02   ; 
- D 1 - I - 0x02E550 0B:A540: 83        .byte $83   ; 
- D 1 - I - 0x02E551 0B:A541: 4F        .byte $4F   ; 
- D 1 - I - 0x02E552 0B:A542: 02        .byte $02   ; 
- D 1 - I - 0x02E553 0B:A543: 50        .byte $50   ; 
- D 1 - I - 0x02E554 0B:A544: C4        .byte $C4   ; 
- D 1 - I - 0x02E555 0B:A545: 7C        .byte $7C   ; 
- D 1 - I - 0x02E556 0B:A546: 82        .byte $82   ; 
- D 1 - I - 0x02E557 0B:A547: 81        .byte $81   ; 
- D 1 - I - 0x02E558 0B:A548: 82        .byte $82   ; 
- D 1 - I - 0x02E559 0B:A549: 09        .byte $09   ; 
- D 1 - I - 0x02E55A 0B:A54A: 02        .byte $02   ; 
- D 1 - I - 0x02E55B 0B:A54B: 0E        .byte $0E   ; 
- D 1 - I - 0x02E55C 0B:A54C: 03        .byte $03   ; 
- D 1 - I - 0x02E55D 0B:A54D: C3        .byte $C3   ; 
- D 1 - I - 0x02E55E 0B:A54E: 51        .byte $51   ; 
- D 1 - I - 0x02E55F 0B:A54F: C5        .byte $C5   ; 
- D 1 - I - 0x02E560 0B:A550: 83        .byte $83   ; 
- D 1 - I - 0x02E561 0B:A551: 0A        .byte $0A   ; 
- D 1 - I - 0x02E562 0B:A552: 03        .byte $03   ; 
- D 1 - I - 0x02E563 0B:A553: 0E        .byte $0E   ; 
- D 1 - I - 0x02E564 0B:A554: 01        .byte $01   ; 
- D 1 - I - 0x02E565 0B:A555: C3        .byte $C3   ; 
- D 1 - I - 0x02E566 0B:A556: 54        .byte $54   ; 
- D 1 - I - 0x02E567 0B:A557: C5        .byte $C5   ; 
- D 1 - I - 0x02E568 0B:A558: 88        .byte $88   ; 
- D 1 - I - 0x02E569 0B:A559: 18        .byte $18   ; 
- D 1 - I - 0x02E56A 0B:A55A: 01        .byte $01   ; 
- D 1 - I - 0x02E56B 0B:A55B: C3        .byte $C3   ; 
- D 1 - I - 0x02E56C 0B:A55C: 57        .byte $57   ; 
- D 1 - I - 0x02E56D 0B:A55D: C5        .byte $C5   ; 
- D 1 - I - 0x02E56E 0B:A55E: 8D        .byte $8D   ; 
- D 1 - I - 0x02E56F 0B:A55F: 18        .byte $18   ; 
- D 1 - I - 0x02E570 0B:A560: 01        .byte $01   ; 
- D 1 - I - 0x02E571 0B:A561: 83        .byte $83   ; 
- D 1 - I - 0x02E572 0B:A562: 5A        .byte $5A   ; 
- D 1 - I - 0x02E573 0B:A563: 5B        .byte $5B   ; 
- D 1 - I - 0x02E574 0B:A564: 01        .byte $01   ; 
- D 1 - I - 0x02E575 0B:A565: C6        .byte $C6   ; 
- D 1 - I - 0x02E576 0B:A566: 92        .byte $92   ; 
- D 1 - I - 0x02E577 0B:A567: 16        .byte $16   ; 
- D 1 - I - 0x02E578 0B:A568: 01        .byte $01   ; 
- D 1 - I - 0x02E579 0B:A569: C3        .byte $C3   ; 
- D 1 - I - 0x02E57A 0B:A56A: 5C        .byte $5C   ; 
- D 1 - I - 0x02E57B 0B:A56B: 03        .byte $03   ; 
- D 1 - I - 0x02E57C 0B:A56C: 01        .byte $01   ; 
- D 1 - I - 0x02E57D 0B:A56D: C4        .byte $C4   ; 
- D 1 - I - 0x02E57E 0B:A56E: 98        .byte $98   ; 
- D 1 - I - 0x02E57F 0B:A56F: 16        .byte $16   ; 
- D 1 - I - 0x02E580 0B:A570: 01        .byte $01   ; 
- D 1 - I - 0x02E581 0B:A571: C3        .byte $C3   ; 
- D 1 - I - 0x02E582 0B:A572: 5F        .byte $5F   ; 
- D 1 - I - 0x02E583 0B:A573: 04        .byte $04   ; 
- D 1 - I - 0x02E584 0B:A574: 01        .byte $01   ; 
- D 1 - I - 0x02E585 0B:A575: C3        .byte $C3   ; 
- D 1 - I - 0x02E586 0B:A576: 9C        .byte $9C   ; 
- D 1 - I - 0x02E587 0B:A577: 09        .byte $09   ; 
- D 1 - I - 0x02E588 0B:A578: 01        .byte $01   ; 
- D 1 - I - 0x02E589 0B:A579: 7E        .byte $7E   ; 
- D 1 - I - 0x02E58A 0B:A57A: 00        .byte $00   ; 
- D 1 - I - 0x02E58B 0B:A57B: 7E        .byte $7E   ; 
- D 1 - I - 0x02E58C 0B:A57C: 00        .byte $00   ; 
- D 1 - I - 0x02E58D 0B:A57D: 7E        .byte $7E   ; 
- D 1 - I - 0x02E58E 0B:A57E: 00        .byte $00   ; 
- D 1 - I - 0x02E58F 0B:A57F: 51        .byte $51   ; 
- D 1 - I - 0x02E590 0B:A580: 00        .byte $00   ; 
- D 1 - I - 0x02E591 0B:A581: 82        .byte $82   ; 
- D 1 - I - 0x02E592 0B:A582: 01        .byte $01   ; 
- D 1 - I - 0x02E593 0B:A583: 44        .byte $44   ; 
- D 1 - I - 0x02E594 0B:A584: 08        .byte $08   ; 
- D 1 - I - 0x02E595 0B:A585: 00        .byte $00   ; 
- D 1 - I - 0x02E596 0B:A586: 81        .byte $81   ; 
- D 1 - I - 0x02E597 0B:A587: 01        .byte $01   ; 
- D 1 - I - 0x02E598 0B:A588: 05        .byte $05   ; 
- D 1 - I - 0x02E599 0B:A589: 00        .byte $00   ; 
- D 1 - I - 0x02E59A 0B:A58A: 83        .byte $83   ; 
- D 1 - I - 0x02E59B 0B:A58B: 54        .byte $54   ; 
- D 1 - I - 0x02E59C 0B:A58C: 40        .byte $40   ; 
- D 1 - I - 0x02E59D 0B:A58D: 55        .byte $55   ; 
- D 1 - I - 0x02E59E 0B:A58E: 22        .byte $22   ; 
- D 1 - I - 0x02E59F 0B:A58F: 00        .byte $00   ; 
- D 1 - I - 0x02E5A0 0B:A590: FF        .byte $FF   ; 



sub_A591:
C - - - - - 0x02E5A1 0B:A591: A4 A9     LDY ram_object_index
C - - - - - 0x02E5A3 0B:A593: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x02E5A6 0B:A596: D9 40 04  CMP ram_X_pos_hi_object,Y
C - - - - - 0x02E5A9 0B:A599: A9 00     LDA #$00
C - - - - - 0x02E5AB 0B:A59B: 6A        ROR
C - - - - - 0x02E5AC 0B:A59C: 6A        ROR
C - - - - - 0x02E5AD 0B:A59D: DD 10 05  CMP ram_turn_side_object,X
C - - - - - 0x02E5B0 0B:A5A0: 60        RTS



ofs_A5A1:
.export ofs_0x02E5B1
ofs_0x02E5B1 = ofs_A5A1 - 1
C - - - - - 0x02E5B1 0B:A5A1: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x02E5B4 0B:A5A4: 9D 1C 04  STA ram_041C,X
C - - - - - 0x02E5B7 0B:A5A7: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x02E5BA 0B:A5AA: 9D 1C 05  STA ram_051C,X
C - - - - - 0x02E5BD 0B:A5AD: BD D0 04  LDA ram_04D0,X
C - - - - - 0x02E5C0 0B:A5B0: D0 1E     BNE bra_A5D0
C - - - - - 0x02E5C2 0B:A5B2: B5 8E     LDA ram_btn_press,X
C - - - - - 0x02E5C4 0B:A5B4: 29 08     AND #con_btn_Up
C - - - - - 0x02E5C6 0B:A5B6: F0 03     BEQ bra_A5BB
C - - - - - 0x02E5C8 0B:A5B8: 9D 33 06  STA ram_0633,X
bra_A5BB:
C - - - - - 0x02E5CB 0B:A5BB: 20 00 A8  JSR sub_A800
C - - - - - 0x02E5CE 0B:A5BE: F0 10     BEQ bra_A5D0
C - - - - - 0x02E5D0 0B:A5C0: AC 26 01  LDY ram_option_speed
C - - - - - 0x02E5D3 0B:A5C3: B9 FE BF  LDA tbl_BFFE,Y
C - - - - - 0x02E5D6 0B:A5C6: DD 60 05  CMP ram_0560,X
C - - - - - 0x02E5D9 0B:A5C9: 90 05     BCC bra_A5D0
C - - - - - 0x02E5DB 0B:A5CB: A9 00     LDA #$00
C - - - - - 0x02E5DD 0B:A5CD: 9D 60 05  STA ram_0560,X
bra_A5D0:
C - - - - - 0x02E5E0 0B:A5D0: A9 B7     LDA #> ofs_0x0277E7
C - - - - - 0x02E5E2 0B:A5D2: 48        PHA
C - - - - - 0x02E5E3 0B:A5D3: A9 D6     LDA #< ofs_0x0277E7
C - - - - - 0x02E5E5 0B:A5D5: 48        PHA
C - - - - - 0x02E5E6 0B:A5D6: 4C 17 F6  JMP loc_0x03F627_restore_prg_bank



ofs_A5D9:
.export ofs_0x02E5E9
ofs_0x02E5E9 = ofs_A5D9 - 1
C - - - - - 0x02E5E9 0B:A5D9: 8A        TXA
C - - - - - 0x02E5EA 0B:A5DA: 49 01     EOR #$01
C - - - - - 0x02E5EC 0B:A5DC: 29 01     AND #$01
C - - - - - 0x02E5EE 0B:A5DE: 09 02     ORA #$02
C - - - - - 0x02E5F0 0B:A5E0: 85 A9     STA ram_object_index
C - - - - - 0x02E5F2 0B:A5E2: E0 02     CPX #$02
C - - - - - 0x02E5F4 0B:A5E4: B0 1E     BCS bra_A604
C - - - - - 0x02E5F6 0B:A5E6: BC 50 05  LDY ram_id_object,X
C - - - - - 0x02E5F9 0B:A5E9: C0 05     CPY #$05
C - - - - - 0x02E5FB 0B:A5EB: F0 20     BEQ bra_A60D
C - - - - - 0x02E5FD 0B:A5ED: BD 54 05  LDA ram_id_special,X
C - - - - - 0x02E600 0B:A5F0: 49 33     EOR #$33
C - - - - - 0x02E602 0B:A5F2: D0 04     BNE bra_A5F8
C - - - - - 0x02E604 0B:A5F4: A9 10     LDA #$10
C - - - - - 0x02E606 0B:A5F6: 85 06     STA ram_0006
bra_A5F8:
C - - - - - 0x02E608 0B:A5F8: BD 00 04  LDA ram_anim_object,X
C - - - - - 0x02E60B 0B:A5FB: C9 DD     CMP #$DD
C - - - - - 0x02E60D 0B:A5FD: D0 05     BNE bra_A604
C - - - - - 0x02E60F 0B:A5FF: A9 CC     LDA #$CC
C - - - - - 0x02E611 0B:A601: 9D B2 04  STA ram_04B2,X
bra_A604:
loc_A604:
C D 1 - - - 0x02E614 0B:A604: A9 A9     LDA #> ofs_0x026A05
C - - - - - 0x02E616 0B:A606: 48        PHA
C - - - - - 0x02E617 0B:A607: A9 F4     LDA #< ofs_0x026A05
C - - - - - 0x02E619 0B:A609: 48        PHA
C - - - - - 0x02E61A 0B:A60A: 4C 17 F6  JMP loc_0x03F627_restore_prg_bank
bra_A60D:
C - - - - - 0x02E61D 0B:A60D: BD 20 05  LDA ram_0520,X
C - - - - - 0x02E620 0B:A610: C9 08     CMP #$08
C - - - - - 0x02E622 0B:A612: D0 08     BNE bra_A61C
C - - - - - 0x02E624 0B:A614: A9 98     LDA #$98
C - - - - - 0x02E626 0B:A616: 85 01     STA ram_0001
C - - - - - 0x02E628 0B:A618: A9 18     LDA #$18
C - - - - - 0x02E62A 0B:A61A: 85 06     STA ram_0006
bra_A61C:
C - - - - - 0x02E62C 0B:A61C: 8A        TXA
C - - - - - 0x02E62D 0B:A61D: 49 01     EOR #$01
C - - - - - 0x02E62F 0B:A61F: A8        TAY
C - - - - - 0x02E630 0B:A620: B9 42 04  LDA ram_X_pos_hi_blow,Y
C - - - - - 0x02E633 0B:A623: D0 0D     BNE bra_A632
C - - - - - 0x02E635 0B:A625: B9 44 04  LDA ram_X_pos_hi_special,Y
C - - - - - 0x02E638 0B:A628: D0 08     BNE bra_A632
C - - - - - 0x02E63A 0B:A62A: AD B6 05  LDA ram_05B6
C - - - - - 0x02E63D 0B:A62D: F0 1E     BEQ bra_A64D
C - - - - - 0x02E63F 0B:A62F: AD 46 04  LDA ram_0446
bra_A632:
C - - - - - 0x02E642 0B:A632: DD 40 04  CMP ram_X_pos_hi_object,X
C - - - - - 0x02E645 0B:A635: A9 00     LDA #$00
C - - - - - 0x02E647 0B:A637: 6A        ROR
C - - - - - 0x02E648 0B:A638: 6A        ROR
C - - - - - 0x02E649 0B:A639: DD 10 05  CMP ram_turn_side_object,X
C - - - - - 0x02E64C 0B:A63C: D0 16     BNE bra_A654
C - - - - - 0x02E64E 0B:A63E: BC 00 04  LDY ram_anim_object,X
C - - - - - 0x02E651 0B:A641: A9 19     LDA #$19
C - - - - - 0x02E653 0B:A643: C0 B8     CPY #$B8
C - - - - - 0x02E655 0B:A645: F0 08     BEQ bra_A64F
C - - - - - 0x02E657 0B:A647: A9 15     LDA #$15
C - - - - - 0x02E659 0B:A649: C0 8C     CPY #$8C
C - - - - - 0x02E65B 0B:A64B: F0 02     BEQ bra_A64F
bra_A64D:
C - - - - - 0x02E65D 0B:A64D: A9 11     LDA #$11
bra_A64F:
C - - - - - 0x02E65F 0B:A64F: 85 05     STA ram_0005
C - - - - - 0x02E661 0B:A651: 4C 04 A6  JMP loc_A604
bra_A654:
C - - - - - 0x02E664 0B:A654: B9 12 04  LDA ram_Y_pos_hi_blow,Y
C - - - - - 0x02E667 0B:A657: D0 0D     BNE bra_A666
C - - - - - 0x02E669 0B:A659: B9 14 04  LDA ram_Y_pos_hi_special,Y
C - - - - - 0x02E66C 0B:A65C: D0 08     BNE bra_A666
C - - - - - 0x02E66E 0B:A65E: AD B6 05  LDA ram_05B6
C - - - - - 0x02E671 0B:A661: F0 EA     BEQ bra_A64D
C - - - - - 0x02E673 0B:A663: AD 16 04  LDA ram_0416
bra_A666:
C - - - - - 0x02E676 0B:A666: BC 00 04  LDY ram_anim_object,X
C - - - - - 0x02E679 0B:A669: 38        SEC
C - - - - - 0x02E67A 0B:A66A: FD 10 04  SBC ram_Y_pos_hi_object,X
C - - - - - 0x02E67D 0B:A66D: B0 DE     BCS bra_A64D
C - - - - - 0x02E67F 0B:A66F: C0 A5     CPY #$A5
C - - - - - 0x02E681 0B:A671: D0 08     BNE bra_A67B
C - - - - - 0x02E683 0B:A673: AA        TAX
C - - - - - 0x02E684 0B:A674: E0 E1     CPX #$E1
C - - - - - 0x02E686 0B:A676: A9 22     LDA #$22
C - - - - - 0x02E688 0B:A678: 90 D5     BCC bra_A64F
C - - - - - 0x02E68A 0B:A67A: 8A        TXA
bra_A67B:
C - - - - - 0x02E68B 0B:A67B: D9 80 A8  CMP tbl_A900 - $80,Y
C - - - - - 0x02E68E 0B:A67E: B0 CD     BCS bra_A64D
C - - - - - 0x02E690 0B:A680: B9 C5 A8  LDA tbl_A945 - $80,Y
C - - - - - 0x02E693 0B:A683: 90 CA     BCC bra_A64F



.export loc_0x02E6E6
loc_0x02E6E6:
C D 1 - - - 0x02E6E6 0B:A6D6: 20 91 A5  JSR sub_A591
C - - - - - 0x02E6E9 0B:A6D9: D0 13     BNE bra_A6EE
C - - - - - 0x02E6EB 0B:A6DB: B9 10 04  LDA ram_Y_pos_hi_object,Y
C - - - - - 0x02E6EE 0B:A6DE: C9 B0     CMP #$B0
C - - - - - 0x02E6F0 0B:A6E0: 90 0C     BCC bra_A6EE
C - - - - - 0x02E6F2 0B:A6E2: B9 80 05  LDA ram_0580,Y
C - - - - - 0x02E6F5 0B:A6E5: D0 07     BNE bra_A6EE
C - - - - - 0x02E6F7 0B:A6E7: AC 38 06  LDY ram_dist_X_btw_plrs
C - - - - - 0x02E6FA 0B:A6EA: C0 10     CPY #$10
C - - - - - 0x02E6FC 0B:A6EC: 90 03     BCC bra_A6F1
bra_A6EE:
C - - - - - 0x02E6FE 0B:A6EE: A9 23     LDA #$23
C - - - - - 0x02E700 0B:A6F0: 18        CLC
bra_A6F1:
C - - - - - 0x02E701 0B:A6F1: 7D 50 05  ADC ram_id_object,X
C - - - - - 0x02E704 0B:A6F4: 85 12     STA ram_0012
C - - - - - 0x02E706 0B:A6F6: 4C 17 F6  JMP loc_0x03F627_restore_prg_bank



.export loc_0x02E709
loc_0x02E709:
C D 1 - - - 0x02E709 0B:A6F9: A9 08     LDA #$08
C - - - - - 0x02E70B 0B:A6FB: 9D 20 05  STA ram_0520,X
C - - - - - 0x02E70E 0B:A6FE: BD 40 05  LDA ram_0540,X
C - - - - - 0x02E711 0B:A701: D0 2D     BNE bra_A730
C - - - - - 0x02E713 0B:A703: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x02E716 0B:A706: BC 50 05  LDY ram_id_object,X
C - - - - - 0x02E719 0B:A709: C0 03     CPY #$03
C - - - - - 0x02E71B 0B:A70B: B0 23     BCS bra_A730
C - - - - - 0x02E71D 0B:A70D: D9 1C DF  CMP tbl_0x03DF2C,Y
C - - - - - 0x02E720 0B:A710: B0 1E     BCS bra_A730
C - - - - - 0x02E722 0B:A712: 20 91 A5  JSR sub_A591
C - - - - - 0x02E725 0B:A715: D0 19     BNE bra_A730
C - - - - - 0x02E727 0B:A717: B5 8E     LDA ram_btn_press,X
C - - - - - 0x02E729 0B:A719: 49 40     EOR #con_btn_B
C - - - - - 0x02E72B 0B:A71B: 1D 10 06  ORA ram_0610,X
C - - - - - 0x02E72E 0B:A71E: 19 80 05  ORA ram_0580,Y
C - - - - - 0x02E731 0B:A721: 19 F0 05  ORA ram_05F0,Y
C - - - - - 0x02E734 0B:A724: D0 0A     BNE bra_A730
C - - - - - 0x02E736 0B:A726: B9 10 04  LDA ram_Y_pos_hi_object,Y
C - - - - - 0x02E739 0B:A729: C9 B0     CMP #$B0
C - - - - - 0x02E73B 0B:A72B: 90 03     BCC bra_A730
C - - - - - 0x02E73D 0B:A72D: FE 20 05  INC ram_0520,X
bra_A730:
C - - - - - 0x02E740 0B:A730: A9 00     LDA #$00
C - - - - - 0x02E742 0B:A732: 9D 0C 04  STA ram_anim_special,X
C - - - - - 0x02E745 0B:A735: 9D 10 06  STA ram_0610,X
C - - - - - 0x02E748 0B:A738: 4C 17 F6  JMP loc_0x03F627_restore_prg_bank



.export sub_0x02E74B
sub_0x02E74B:
C - - - - - 0x02E74B 0B:A73B: 05 AF     ORA ram_00AF
C - - - - - 0x02E74D 0B:A73D: 8D 0F 01  STA ram_010F
C - - - - - 0x02E750 0B:A740: A5 B0     LDA ram_00B0
C - - - - - 0x02E752 0B:A742: 20 02 D2  JSR sub_0x03D212_multiply_by_10h
C - - - - - 0x02E755 0B:A745: 05 B1     ORA ram_00B1
C - - - - - 0x02E757 0B:A747: 8D 10 01  STA ram_0110
C - - - - - 0x02E75A 0B:A74A: 20 09 DE  JSR sub_0x03DE19
C - - - - - 0x02E75D 0B:A74D: 4C 17 F6  JMP loc_0x03F627_restore_prg_bank



.export sub_0x02E760
sub_0x02E760:
C - - - - - 0x02E760 0B:A750: BD 90 05  LDA ram_hp_lo,X
C - - - - - 0x02E763 0B:A753: 20 81 A7  JSR sub_A781
C - - - - - 0x02E766 0B:A756: 85 02     STA ram_0002
C - - - - - 0x02E768 0B:A758: BD 90 05  LDA ram_hp_lo,X
C - - - - - 0x02E76B 0B:A75B: 20 9C A7  JSR sub_A79C
C - - - - - 0x02E76E 0B:A75E: 85 05     STA ram_0005
C - - - - - 0x02E770 0B:A760: BC 0D 01  LDY ram_hp_hi,X
C - - - - - 0x02E773 0B:A763: F0 14     BEQ bra_A779
C - - - - - 0x02E775 0B:A765: 98        TYA
C - - - - - 0x02E776 0B:A766: 20 81 A7  JSR sub_A781
C - - - - - 0x02E779 0B:A769: 18        CLC
C - - - - - 0x02E77A 0B:A76A: 65 02     ADC ram_0002
C - - - - - 0x02E77C 0B:A76C: 85 02     STA ram_0002
C - - - - - 0x02E77E 0B:A76E: BD 0D 01  LDA ram_hp_hi,X
C - - - - - 0x02E781 0B:A771: 20 9C A7  JSR sub_A79C
C - - - - - 0x02E784 0B:A774: 18        CLC
C - - - - - 0x02E785 0B:A775: 65 05     ADC ram_0005
C - - - - - 0x02E787 0B:A777: 85 05     STA ram_0005
bra_A779:
C - - - - - 0x02E789 0B:A779: 29 0F     AND #$0F
C - - - - - 0x02E78B 0B:A77B: 4A        LSR
C - - - - - 0x02E78C 0B:A77C: 85 03     STA ram_0003
C - - - - - 0x02E78E 0B:A77E: 4C 17 F6  JMP loc_0x03F627_restore_prg_bank



sub_A781:
C - - - - - 0x02E791 0B:A781: AC 28 01  LDY ram_option_health
C - - - - - 0x02E794 0B:A784: F0 04     BEQ bra_A78A
C - - - - - 0x02E796 0B:A786: 4A        LSR
C - - - - - 0x02E797 0B:A787: 88        DEY
C - - - - - 0x02E798 0B:A788: F0 03     BEQ bra_A78D
bra_A78A:
C - - - - - 0x02E79A 0B:A78A: 4C 07 D2  JMP loc_0x03D217_divide_by_10h
bra_A78D:
C - - - - - 0x02E79D 0B:A78D: 4A        LSR
C - - - - - 0x02E79E 0B:A78E: 4A        LSR
C - - - - - 0x02E79F 0B:A78F: 85 03     STA ram_0003
C - - - - - 0x02E7A1 0B:A791: 4A        LSR
C - - - - - 0x02E7A2 0B:A792: 4A        LSR
C - - - - - 0x02E7A3 0B:A793: 65 03     ADC ram_0003
C - - - - - 0x02E7A5 0B:A795: 6A        ROR
C - - - - - 0x02E7A6 0B:A796: 4A        LSR
C - - - - - 0x02E7A7 0B:A797: 65 03     ADC ram_0003
C - - - - - 0x02E7A9 0B:A799: 6A        ROR
C - - - - - 0x02E7AA 0B:A79A: 4A        LSR
C - - - - - 0x02E7AB 0B:A79B: 60        RTS



sub_A79C:
C - - - - - 0x02E7AC 0B:A79C: AC 28 01  LDY ram_option_health
C - - - - - 0x02E7AF 0B:A79F: F0 16     BEQ bra_A7B7
C - - - - - 0x02E7B1 0B:A7A1: 88        DEY
C - - - - - 0x02E7B2 0B:A7A2: D0 12     BNE bra_A7B6
C - - - - - 0x02E7B4 0B:A7A4: 85 03     STA ram_0003
C - - - - - 0x02E7B6 0B:A7A6: 4A        LSR
C - - - - - 0x02E7B7 0B:A7A7: 69 21     ADC #$21
C - - - - - 0x02E7B9 0B:A7A9: 4A        LSR
C - - - - - 0x02E7BA 0B:A7AA: A0 03     LDY #$03
bra_A7AC:
C - - - - - 0x02E7BC 0B:A7AC: 18        CLC
C - - - - - 0x02E7BD 0B:A7AD: 65 03     ADC ram_0003
C - - - - - 0x02E7BF 0B:A7AF: 6A        ROR
C - - - - - 0x02E7C0 0B:A7B0: 4A        LSR
C - - - - - 0x02E7C1 0B:A7B1: 88        DEY
C - - - - - 0x02E7C2 0B:A7B2: D0 F8     BNE bra_A7AC
C - - - - - 0x02E7C4 0B:A7B4: 0A        ASL
C - - - - - 0x02E7C5 0B:A7B5: 60        RTS
bra_A7B6:
C - - - - - 0x02E7C6 0B:A7B6: 4A        LSR
bra_A7B7:
C - - - - - 0x02E7C7 0B:A7B7: 4A        LSR
C - - - - - 0x02E7C8 0B:A7B8: 0A        ASL
C - - - - - 0x02E7C9 0B:A7B9: 60        RTS



ofs_A7BA:
.export ofs_0x02E7CA
ofs_0x02E7CA = ofs_A7BA - 1
C - - - - - 0x02E7CA 0B:A7BA: BD C0 04  LDA ram_04C0,X
C - - - - - 0x02E7CD 0B:A7BD: C9 06     CMP #$06
C - - - - - 0x02E7CF 0B:A7BF: F0 20     BEQ bra_A7E1
C - - - - - 0x02E7D1 0B:A7C1: C9 03     CMP #$03
C - - - - - 0x02E7D3 0B:A7C3: A4 A9     LDY ram_object_index
C - - - - - 0x02E7D5 0B:A7C5: B9 12 06  LDA ram_0612,Y
C - - - - - 0x02E7D8 0B:A7C8: B0 10     BCS bra_A7DA
C - - - - - 0x02E7DA 0B:A7CA: C9 03     CMP #$03
C - - - - - 0x02E7DC 0B:A7CC: D0 05     BNE bra_A7D3
C - - - - - 0x02E7DE 0B:A7CE: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x02E7E1 0B:A7D1: 69 2D     ADC #$2D
bra_A7D3:
C - - - - - 0x02E7E3 0B:A7D3: A8        TAY
C - - - - - 0x02E7E4 0B:A7D4: B9 CA AB  LDA tbl_ABCA,Y
C - - - - - 0x02E7E7 0B:A7D7: 9D D0 04  STA ram_04D0,X
bra_A7DA:
C - - - - - 0x02E7EA 0B:A7DA: C9 20     CMP #$20
C - - - - - 0x02E7EC 0B:A7DC: D0 03     BNE bra_A7E1
C - - - - - 0x02E7EE 0B:A7DE: FE D0 04  INC ram_04D0,X
bra_A7E1:
C - - - - - 0x02E7F1 0B:A7E1: 4C 17 F6  JMP loc_0x03F627_restore_prg_bank



sub_A800:
C - - - - - 0x02E810 0B:A800: A5 2C     LDA ram_002C
C - - - - - 0x02E812 0B:A802: 4A        LSR
C - - - - - 0x02E813 0B:A803: 90 0C     BCC bra_A811
C - - - - - 0x02E815 0B:A805: AD 4E 01  LDA ram_014E
C - - - - - 0x02E818 0B:A808: D0 07     BNE bra_A811
C - - - - - 0x02E81A 0B:A80A: AD 2B 01  LDA ram_option_skin
C - - - - - 0x02E81D 0B:A80D: 29 10     AND #$10
C - - - - - 0x02E81F 0B:A80F: F0 03     BEQ bra_A814_RTS
bra_A811:
C - - - - - 0x02E821 0B:A811: BD 33 06  LDA ram_0633,X
bra_A814_RTS:
C - - - - - 0x02E824 0B:A814: 60        RTS



ofs_A820:
.export ofs_0x02E830
ofs_0x02E830 = ofs_A820 - 1
C - - - - - 0x02E830 0B:A820: 8A        TXA
C - - - - - 0x02E831 0B:A821: 49 05     EOR #$05
C - - - - - 0x02E833 0B:A823: A8        TAY
C - - - - - 0x02E834 0B:A824: B9 50 05  LDA ram_id_fighter,Y
C - - - - - 0x02E837 0B:A827: A8        TAY
C - - - - - 0x02E838 0B:A828: B9 31 A8  LDA tbl_A831,Y
C - - - - - 0x02E83B 0B:A82B: 9D B0 05  STA ram_05B0,X
C - - - - - 0x02E83E 0B:A82E: 4C 17 F6  JMP loc_0x03F627_restore_prg_bank



tbl_A831:
- D 1 - - - 0x02E841 0B:A831: 20        .byte $20   ; 00 Leo
- D 1 - - - 0x02E842 0B:A832: 20        .byte $20   ; 01 Raph
- D 1 - - - 0x02E843 0B:A833: 20        .byte $20   ; 02 Mike
- D 1 - - - 0x02E844 0B:A834: 20        .byte $20   ; 03 Don
- D 1 - - - 0x02E845 0B:A835: 24        .byte $24   ; 04 Casey
- D 1 - - - 0x02E846 0B:A836: 24        .byte $24   ; 05 Hot
- D 1 - - - 0x02E847 0B:A837: 22        .byte $22   ; 06 Shred



ofs_A85E:
.export ofs_0x02E86E
ofs_0x02E86E = ofs_A85E - 1
C - - - - - 0x02E86E 0B:A85E: B5 91     LDA ram_btn_hold,X
C - - - - - 0x02E870 0B:A860: 29 08     AND #con_btn_Up
C - - - - - 0x02E872 0B:A862: F0 1C     BEQ bra_A880
C - - - - - 0x02E874 0B:A864: A4 A9     LDY ram_object_index
C - - - - - 0x02E876 0B:A866: B9 20 05  LDA ram_0520,Y
C - - - - - 0x02E879 0B:A869: C9 03     CMP #$03
C - - - - - 0x02E87B 0B:A86B: D0 13     BNE bra_A880
C - - - - - 0x02E87D 0B:A86D: B9 C0 04  LDA ram_04C0,Y
C - - - - - 0x02E880 0B:A870: C9 04     CMP #$04
C - - - - - 0x02E882 0B:A872: B0 0C     BCS bra_A880
C - - - - - 0x02E884 0B:A874: C9 02     CMP #$02
C - - - - - 0x02E886 0B:A876: F0 08     BEQ bra_A880
C - - - - - 0x02E888 0B:A878: BC 50 05  LDY ram_id_fighter,X
C - - - - - 0x02E88B 0B:A87B: B9 9C A8  LDA tbl_A89C,Y
C - - - - - 0x02E88E 0B:A87E: D0 06     BNE bra_A886
bra_A880:
C - - - - - 0x02E890 0B:A880: BC 50 05  LDY ram_id_fighter,X
C - - - - - 0x02E893 0B:A883: B9 A6 A8  LDA tbl_A8A6,Y
bra_A886:
C - - - - - 0x02E896 0B:A886: 9D 60 05  STA ram_0560,X
C - - - - - 0x02E899 0B:A889: A9 86     LDA #> ofs_0x024635
C - - - - - 0x02E89B 0B:A88B: 48        PHA
C - - - - - 0x02E89C 0B:A88C: A9 24     LDA #< ofs_0x024635
C - - - - - 0x02E89E 0B:A88E: 48        PHA
C - - - - - 0x02E89F 0B:A88F: 4C 17 F6  JMP loc_0x03F627_restore_prg_bank



tbl_A89C:
- D 1 - - - 0x02E8AC 0B:A89C: 04        .byte $04   ; 00 Leo
- D 1 - - - 0x02E8AD 0B:A89D: 05        .byte $05   ; 01 Raph
- D 1 - - - 0x02E8AE 0B:A89E: 04        .byte $04   ; 02 Mike
- D 1 - - - 0x02E8AF 0B:A89F: 05        .byte $05   ; 03 Don
- D 1 - - - 0x02E8B0 0B:A8A0: 05        .byte $05   ; 04 Casey
- D 1 - - - 0x02E8B1 0B:A8A1: 09        .byte $09   ; 05 Hot
- D 1 - - - 0x02E8B2 0B:A8A2: 06        .byte $06   ; 06 Shred

tbl_A8A6:
- D 1 - - - 0x02E8B6 0B:A8A6: 05        .byte $05   ; 00 Leo
- D 1 - - - 0x02E8B7 0B:A8A7: 07        .byte $07   ; 01 Raph
- D 1 - - - 0x02E8B8 0B:A8A8: 05        .byte $05   ; 02 Mike
- D 1 - - - 0x02E8B9 0B:A8A9: 06        .byte $06   ; 03 Don
- D 1 - - - 0x02E8BA 0B:A8AA: 05        .byte $05   ; 04 Casey
- D 1 - - - 0x02E8BB 0B:A8AB: 09        .byte $09   ; 05 Hot
- D 1 - - - 0x02E8BC 0B:A8AC: 07        .byte $07   ; 06 Shred



tbl_A900:
- D 1 - - - 0x02E910 0B:A900: DD        .byte $DD   ; 
- D 1 - - - 0x02E911 0B:A901: DD        .byte $DD   ; 
- D 1 - - - 0x02E912 0B:A902: DD        .byte $DD   ; 
- D 1 - - - 0x02E913 0B:A903: DD        .byte $DD   ; 
- D 1 - - - 0x02E914 0B:A904: DD        .byte $DD   ; 
- D 1 - - - 0x02E915 0B:A905: DD        .byte $DD   ; 
- D 1 - - - 0x02E916 0B:A906: DD        .byte $DD   ; 
- D 1 - - - 0x02E917 0B:A907: DD        .byte $DD   ; 
- D 1 - - - 0x02E918 0B:A908: DD        .byte $DD   ; 
- D 1 - - - 0x02E919 0B:A909: DD        .byte $DD   ; 
- D 1 - - - 0x02E91A 0B:A90A: DD        .byte $DD   ; 
- D 1 - - - 0x02E91B 0B:A90B: 00        .byte $00   ; 
- D 1 - - - 0x02E91C 0B:A90C: 00        .byte $00   ; 
- D 1 - - - 0x02E91D 0B:A90D: 00        .byte $00   ; 
- D 1 - - - 0x02E91E 0B:A90E: 00        .byte $00   ; 
- D 1 - - - 0x02E91F 0B:A90F: DD        .byte $DD   ; 
- D 1 - - - 0x02E920 0B:A910: D2        .byte $D2   ; 
- - - - - - 0x02E921 0B:A911: DD        .byte $DD   ; 
- D 1 - - - 0x02E922 0B:A912: 00        .byte $00   ; 
- D 1 - - - 0x02E923 0B:A913: E9        .byte $E9   ; 
- D 1 - - - 0x02E924 0B:A914: DD        .byte $DD   ; 
- D 1 - - - 0x02E925 0B:A915: 00        .byte $00   ; 
- D 1 - - - 0x02E926 0B:A916: DD        .byte $DD   ; 
- D 1 - - - 0x02E927 0B:A917: 00        .byte $00   ; 
- D 1 - - - 0x02E928 0B:A918: 00        .byte $00   ; 
- D 1 - - - 0x02E929 0B:A919: E9        .byte $E9   ; 
- D 1 - - - 0x02E92A 0B:A91A: 00        .byte $00   ; 
- D 1 - - - 0x02E92B 0B:A91B: 00        .byte $00   ; 
- D 1 - - - 0x02E92C 0B:A91C: D2        .byte $D2   ; 
- D 1 - - - 0x02E92D 0B:A91D: E9        .byte $E9   ; 
- - - - - - 0x02E92E 0B:A91E: 00        .byte $00   ; 
- - - - - - 0x02E92F 0B:A91F: 00        .byte $00   ; 
- D 1 - - - 0x02E930 0B:A920: 00        .byte $00   ; 
- - - - - - 0x02E931 0B:A921: 00        .byte $00   ; 
- - - - - - 0x02E932 0B:A922: 00        .byte $00   ; 
- - - - - - 0x02E933 0B:A923: 00        .byte $00   ; 
- - - - - - 0x02E934 0B:A924: 00        .byte $00   ; 
- D 1 - - - 0x02E935 0B:A925: F2        .byte $F2   ; 
- - - - - - 0x02E936 0B:A926: 00        .byte $00   ; 
- - - - - - 0x02E937 0B:A927: 00        .byte $00   ; 
- - - - - - 0x02E938 0B:A928: 00        .byte $00   ; 
- - - - - - 0x02E939 0B:A929: 00        .byte $00   ; 
- - - - - - 0x02E93A 0B:A92A: 00        .byte $00   ; 
- - - - - - 0x02E93B 0B:A92B: 00        .byte $00   ; 
- - - - - - 0x02E93C 0B:A92C: 00        .byte $00   ; 
- - - - - - 0x02E93D 0B:A92D: 00        .byte $00   ; 
- - - - - - 0x02E93E 0B:A92E: 00        .byte $00   ; 
- - - - - - 0x02E93F 0B:A92F: 00        .byte $00   ; 
- - - - - - 0x02E940 0B:A930: 00        .byte $00   ; 
- - - - - - 0x02E941 0B:A931: 00        .byte $00   ; 
- D 1 - - - 0x02E942 0B:A932: 00        .byte $00   ; 
- D 1 - - - 0x02E943 0B:A933: E0        .byte $E0   ; 
- D 1 - - - 0x02E944 0B:A934: DD        .byte $DD   ; 
- D 1 - - - 0x02E945 0B:A935: FF        .byte $FF   ; 
- D 1 - - - 0x02E946 0B:A936: FF        .byte $FF   ; 
- D 1 - - - 0x02E947 0B:A937: DD        .byte $DD   ; 
- D 1 - - - 0x02E948 0B:A938: 00        .byte $00   ; 
- D 1 - - - 0x02E949 0B:A939: FF        .byte $FF   ; 
- - - - - - 0x02E94A 0B:A93A: 00        .byte $00   ; 
- - - - - - 0x02E94B 0B:A93B: 00        .byte $00   ; 
- - - - - - 0x02E94C 0B:A93C: 00        .byte $00   ; 
- - - - - - 0x02E94D 0B:A93D: 00        .byte $00   ; 
- - - - - - 0x02E94E 0B:A93E: 00        .byte $00   ; 
- - - - - - 0x02E94F 0B:A93F: 00        .byte $00   ; 
- - - - - - 0x02E950 0B:A940: 00        .byte $00   ; 
- - - - - - 0x02E951 0B:A941: 00        .byte $00   ; 
- - - - - - 0x02E952 0B:A942: 00        .byte $00   ; 
- D 1 - - - 0x02E953 0B:A943: DD        .byte $DD   ; 
- D 1 - - - 0x02E954 0B:A944: DD        .byte $DD   ; 



tbl_A945:
- D 1 - - - 0x02E955 0B:A945: 19        .byte $19   ; 
- D 1 - - - 0x02E956 0B:A946: 19        .byte $19   ; 
- D 1 - - - 0x02E957 0B:A947: 19        .byte $19   ; 
- D 1 - - - 0x02E958 0B:A948: 19        .byte $19   ; 
- D 1 - - - 0x02E959 0B:A949: 19        .byte $19   ; 
- D 1 - - - 0x02E95A 0B:A94A: 19        .byte $19   ; 
- D 1 - - - 0x02E95B 0B:A94B: 19        .byte $19   ; 
- D 1 - - - 0x02E95C 0B:A94C: 19        .byte $19   ; 
- D 1 - - - 0x02E95D 0B:A94D: 19        .byte $19   ; 
- D 1 - - - 0x02E95E 0B:A94E: 19        .byte $19   ; 
- D 1 - - - 0x02E95F 0B:A94F: 19        .byte $19   ; 
- - - - - - 0x02E960 0B:A950: 11        .byte $11   ; 
- - - - - - 0x02E961 0B:A951: 11        .byte $11   ; 
- - - - - - 0x02E962 0B:A952: 11        .byte $11   ; 
- - - - - - 0x02E963 0B:A953: 11        .byte $11   ; 
- D 1 - - - 0x02E964 0B:A954: 19        .byte $19   ; 
- D 1 - - - 0x02E965 0B:A955: 15        .byte $15   ; 
- - - - - - 0x02E966 0B:A956: 15        .byte $15   ; 
- - - - - - 0x02E967 0B:A957: 11        .byte $11   ; 
- - - - - - 0x02E968 0B:A958: 19        .byte $19   ; 
- D 1 - - - 0x02E969 0B:A959: 15        .byte $15   ; 
- - - - - - 0x02E96A 0B:A95A: 11        .byte $11   ; 
- D 1 - - - 0x02E96B 0B:A95B: 15        .byte $15   ; 
- - - - - - 0x02E96C 0B:A95C: 11        .byte $11   ; 
- - - - - - 0x02E96D 0B:A95D: 11        .byte $11   ; 
- D 1 - - - 0x02E96E 0B:A95E: 17        .byte $17   ; 
- - - - - - 0x02E96F 0B:A95F: 11        .byte $11   ; 
- - - - - - 0x02E970 0B:A960: 11        .byte $11   ; 
- D 1 - - - 0x02E971 0B:A961: 15        .byte $15   ; 
- D 1 - - - 0x02E972 0B:A962: 19        .byte $19   ; 
- - - - - - 0x02E973 0B:A963: 11        .byte $11   ; 
- - - - - - 0x02E974 0B:A964: 11        .byte $11   ; 
- - - - - - 0x02E975 0B:A965: 11        .byte $11   ; 
- - - - - - 0x02E976 0B:A966: 11        .byte $11   ; 
- - - - - - 0x02E977 0B:A967: 11        .byte $11   ; 
- - - - - - 0x02E978 0B:A968: 11        .byte $11   ; 
- - - - - - 0x02E979 0B:A969: 11        .byte $11   ; 
- D 1 - - - 0x02E97A 0B:A96A: 1C        .byte $1C   ; 
- - - - - - 0x02E97B 0B:A96B: 11        .byte $11   ; 
- - - - - - 0x02E97C 0B:A96C: 11        .byte $11   ; 
- - - - - - 0x02E97D 0B:A96D: 11        .byte $11   ; 
- - - - - - 0x02E97E 0B:A96E: 11        .byte $11   ; 
- - - - - - 0x02E97F 0B:A96F: 11        .byte $11   ; 
- - - - - - 0x02E980 0B:A970: 11        .byte $11   ; 
- - - - - - 0x02E981 0B:A971: 11        .byte $11   ; 
- - - - - - 0x02E982 0B:A972: 11        .byte $11   ; 
- - - - - - 0x02E983 0B:A973: 11        .byte $11   ; 
- - - - - - 0x02E984 0B:A974: 11        .byte $11   ; 
- - - - - - 0x02E985 0B:A975: 11        .byte $11   ; 
- - - - - - 0x02E986 0B:A976: 11        .byte $11   ; 
- - - - - - 0x02E987 0B:A977: 11        .byte $11   ; 
- D 1 - - - 0x02E988 0B:A978: 20        .byte $20   ; 
- D 1 - - - 0x02E989 0B:A979: 24        .byte $24   ; 
- D 1 - - - 0x02E98A 0B:A97A: 19        .byte $19   ; 
- D 1 - - - 0x02E98B 0B:A97B: 13        .byte $13   ; 
- D 1 - - - 0x02E98C 0B:A97C: 19        .byte $19   ; 
- - - - - - 0x02E98D 0B:A97D: 11        .byte $11   ; 
- D 1 - - - 0x02E98E 0B:A97E: 15        .byte $15   ; 
- - - - - - 0x02E98F 0B:A97F: 11        .byte $11   ; 
- - - - - - 0x02E990 0B:A980: 11        .byte $11   ; 
- - - - - - 0x02E991 0B:A981: 11        .byte $11   ; 
- - - - - - 0x02E992 0B:A982: 11        .byte $11   ; 
- - - - - - 0x02E993 0B:A983: 11        .byte $11   ; 
- - - - - - 0x02E994 0B:A984: 11        .byte $11   ; 
- - - - - - 0x02E995 0B:A985: 11        .byte $11   ; 
- - - - - - 0x02E996 0B:A986: 11        .byte $11   ; 
- - - - - - 0x02E997 0B:A987: 11        .byte $11   ; 
- D 1 - - - 0x02E998 0B:A988: 19        .byte $19   ; 
- D 1 - - - 0x02E999 0B:A989: 19        .byte $19   ; 



.export sub_0x02EA10
sub_0x02EA10:
C - - - - - 0x02EA10 0B:AA00: BD 6B E4  LDA tbl_E46B,X
C - - - - - 0x02EA13 0B:AA03: 9D 10 05  STA ram_turn_side_object,X
C - - - - - 0x02EA16 0B:AA06: A5 2C     LDA ram_002C
C - - - - - 0x02EA18 0B:AA08: 49 03     EOR #$03
C - - - - - 0x02EA1A 0B:AA0A: D0 20     BNE bra_AA2C
C - - - - - 0x02EA1C 0B:AA0C: AD 4E 01  LDA ram_014E
C - - - - - 0x02EA1F 0B:AA0F: 49 01     EOR #$01
C - - - - - 0x02EA21 0B:AA11: F0 19     BEQ bra_AA2C
C - - - - - 0x02EA23 0B:AA13: AD 2B 01  LDA ram_option_skin
C - - - - - 0x02EA26 0B:AA16: 29 08     AND #$08
C - - - - - 0x02EA28 0B:AA18: F0 12     BEQ bra_AA2C
C - - - - - 0x02EA2A 0B:AA1A: 8A        TXA
C - - - - - 0x02EA2B 0B:AA1B: 49 01     EOR #$01
C - - - - - 0x02EA2D 0B:AA1D: A8        TAY
C - - - - - 0x02EA2E 0B:AA1E: B9 A2 00  LDA ram_option_fighter,Y
C - - - - - 0x02EA31 0B:AA21: 0A        ASL
C - - - - - 0x02EA32 0B:AA22: 0A        ASL
C - - - - - 0x02EA33 0B:AA23: 0A        ASL
C - - - - - 0x02EA34 0B:AA24: 75 A2     ADC ram_option_fighter,X
C - - - - - 0x02EA36 0B:AA26: A8        TAY
C - - - - - 0x02EA37 0B:AA27: B9 90 AA  LDA tbl_AA90_vs_strength,Y
C - - - - - 0x02EA3A 0B:AA2A: 95 A0     STA ram_option_strength,X
bra_AA2C:
C - - - - - 0x02EA3C 0B:AA2C: A0 01     LDY #$01
C - - - - - 0x02EA3E 0B:AA2E: 4C 68 F7  JMP loc_0x03F778

tbl_E46B:
- D 3 - - - 0x03E47B 0F:E46B: 00        .byte $00   ; 00
- D 3 - - - 0x03E47C 0F:E46C: 40        .byte $40   ; 01



sub_AA50_preset_strength:
; bzk лучше чтобы код выполнялся разово при загрузке экрана с выбором арены
; нежели обновлять силу каждый раз при смене перса
; дублирование кода в 0x02EA10, оптимизировать
C - - - - - 0x02EA60 0B:AA50: 48        PHA
C - - - - - 0x02EA61 0B:AA51: AD 2B 01  LDA ram_option_skin
C - - - - - 0x02EA64 0B:AA54: 29 08     AND #$08
C - - - - - 0x02EA66 0B:AA56: C9 08     CMP #$08
C - - - - - 0x02EA68 0B:AA58: 68        PLA
C - - - - - 0x02EA69 0B:AA59: 90 31     BCC bra_AA8C
C - - - - - 0x02EA6B 0B:AA5B: A4 27     LDY ram_cursor_main_menu_index
C - - - - - 0x02EA6D 0B:AA5D: C0 01     CPY #$01
C - - - - - 0x02EA6F 0B:AA5F: D0 2B     BNE bra_AA8C
C - - - - - 0x02EA71 0B:AA61: 86 9C     STX ram_009C
C - - - - - 0x02EA73 0B:AA63: A0 01     LDY #$01
C - - - - - 0x02EA75 0B:AA65: 84 9D     STY ram_009D
C - - - - - 0x02EA77 0B:AA67: C9 FF     CMP #$FF
C - - - - - 0x02EA79 0B:AA69: D0 02     BNE bra_AA6D
C - - - - - 0x02EA7B 0B:AA6B: A9 06     LDA #$06
bra_AA6D:
C - - - - - 0x02EA7D 0B:AA6D: 95 A2     STA ram_option_fighter,X
bra_AA6F_loop:
C - - - - - 0x02EA7F 0B:AA6F: 8D 50 05  STA ram_id_object
C - - - - - 0x02EA82 0B:AA72: 8A        TXA
C - - - - - 0x02EA83 0B:AA73: 49 01     EOR #$01
C - - - - - 0x02EA85 0B:AA75: AA        TAX
C - - - - - 0x02EA86 0B:AA76: AD 50 05  LDA ram_id_object
C - - - - - 0x02EA89 0B:AA79: 0A        ASL
C - - - - - 0x02EA8A 0B:AA7A: 0A        ASL
C - - - - - 0x02EA8B 0B:AA7B: 0A        ASL
C - - - - - 0x02EA8C 0B:AA7C: 75 A2     ADC ram_option_fighter,X
C - - - - - 0x02EA8E 0B:AA7E: A8        TAY
C - - - - - 0x02EA8F 0B:AA7F: B9 90 AA  LDA tbl_AA90_vs_strength,Y
C - - - - - 0x02EA92 0B:AA82: 95 A0     STA ram_option_strength,X
C - - - - - 0x02EA94 0B:AA84: B5 A2     LDA ram_option_fighter,X
C - - - - - 0x02EA96 0B:AA86: C6 9D     DEC ram_009D
C - - - - - 0x02EA98 0B:AA88: 10 E5     BPL bra_AA6F_loop
C - - - - - 0x02EA9A 0B:AA8A: A6 9C     LDX ram_009C
bra_AA8C:
C - - - - - 0x02EA9C 0B:AA8C: AC E0 04  LDY ram_04E0
C - - - - - 0x02EA9F 0B:AA8F: 60        RTS



tbl_AA90_vs_strength:
;                                             Leo  Rap  Mik  Don  Cas  Hot  Shr  unused
- D 1 - - - 0x02EAA0 0B:AA90: 00        .byte $00, $00, $01, $00, $01, $FE, $FD, $00   ; 00 Leo
- D 1 - - - 0x02EAA8 0B:AA98: 00        .byte $00, $00, $01, $00, $01, $FE, $FD, $00   ; 01 Raph
- D 1 - - - 0x02EAB0 0B:AAA0: 00        .byte $00, $00, $00, $00, $00, $FD, $FD, $00   ; 02 Mike
- D 1 - - - 0x02EAB8 0B:AAA8: 00        .byte $00, $00, $01, $00, $01, $FE, $FD, $00   ; 03 Don
- D 1 - - - 0x02EAC0 0B:AAB0: 00        .byte $00, $00, $01, $00, $01, $FE, $FE, $00   ; 04 Casey
- D 1 - - - 0x02EAC8 0B:AAB8: 01        .byte $01, $01, $02, $02, $01, $FE, $FE, $01   ; 05 Hot
- D 1 - - - 0x02EAD0 0B:AAC0: 02        .byte $02, $02, $03, $03, $03, $00, $FE, $02   ; 06 Shred


; bzk мусор
- - - - - - 0x02EAD8 0B:AAC8: 00        .byte $00, $00, $01, $00, $01, $FE, $FD, $00   ; 07 



.export loc_0x02EB10
loc_0x02EB10:
C D 1 - - - 0x02EB10 0B:AB00: A9 00     LDA #$00
C - - - - - 0x02EB12 0B:AB02: 85 1C     STA ram_001C
C - - - - - 0x02EB14 0B:AB04: 8A        TXA
C - - - - - 0x02EB15 0B:AB05: 49 01     EOR #$01
C - - - - - 0x02EB17 0B:AB07: A8        TAY
C - - - - - 0x02EB18 0B:AB08: 84 1A     STY ram_001A
C - - - - - 0x02EB1A 0B:AB0A: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x02EB1D 0B:AB0D: 0A        ASL
C - - - - - 0x02EB1E 0B:AB0E: 0A        ASL
C - - - - - 0x02EB1F 0B:AB0F: 0A        ASL
C - - - - - 0x02EB20 0B:AB10: 38        SEC
C - - - - - 0x02EB21 0B:AB11: F9 50 05  SBC ram_id_object,Y
C - - - - - 0x02EB24 0B:AB14: 18        CLC
C - - - - - 0x02EB25 0B:AB15: 7D 50 05  ADC ram_id_object,X
C - - - - - 0x02EB28 0B:AB18: C9 21     CMP #$21
C - - - - - 0x02EB2A 0B:AB1A: D0 29     BNE bra_AB45
C - - - - - 0x02EB2C 0B:AB1C: 48        PHA
C - - - - - 0x02EB2D 0B:AB1D: B9 0D 01  LDA ram_hp_hi,Y
C - - - - - 0x02EB30 0B:AB20: F0 03     BEQ bra_AB25
C - - - - - 0x02EB32 0B:AB22: 20 9C A7  JSR sub_A79C
bra_AB25:
C - - - - - 0x02EB35 0B:AB25: 85 1B     STA ram_001B
C - - - - - 0x02EB37 0B:AB27: A4 1A     LDY ram_001A
C - - - - - 0x02EB39 0B:AB29: B9 90 05  LDA ram_hp_lo,Y
C - - - - - 0x02EB3C 0B:AB2C: 20 9C A7  JSR sub_A79C
C - - - - - 0x02EB3F 0B:AB2F: 18        CLC
C - - - - - 0x02EB40 0B:AB30: 65 1B     ADC ram_001B
C - - - - - 0x02EB42 0B:AB32: C9 90     CMP #$90
C - - - - - 0x02EB44 0B:AB34: B0 0E     BCS bra_AB44
C - - - - - 0x02EB46 0B:AB36: E6 1C     INC ram_001C
C - - - - - 0x02EB48 0B:AB38: C9 60     CMP #$60
C - - - - - 0x02EB4A 0B:AB3A: B0 08     BCS bra_AB44
C - - - - - 0x02EB4C 0B:AB3C: E6 1C     INC ram_001C
C - - - - - 0x02EB4E 0B:AB3E: C9 30     CMP #$30
C - - - - - 0x02EB50 0B:AB40: B0 02     BCS bra_AB44
C - - - - - 0x02EB52 0B:AB42: E6 1C     INC ram_001C
bra_AB44:
C - - - - - 0x02EB54 0B:AB44: 68        PLA
bra_AB45:
C - - - - - 0x02EB55 0B:AB45: A8        TAY
C - - - - - 0x02EB56 0B:AB46: 68        PLA
C - - - - - 0x02EB57 0B:AB47: 18        CLC
C - - - - - 0x02EB58 0B:AB48: 65 1C     ADC ram_001C
C - - - - - 0x02EB5A 0B:AB4A: 65 1C     ADC ram_001C
C - - - - - 0x02EB5C 0B:AB4C: 38        SEC
C - - - - - 0x02EB5D 0B:AB4D: F9 B6 DD  SBC tbl_DDB6,Y
C - - - - - 0x02EB60 0B:AB50: 48        PHA
C - - - - - 0x02EB61 0B:AB51: A9 DE     LDA #> ofs_0x03DE76
C - - - - - 0x02EB63 0B:AB53: 48        PHA
C - - - - - 0x02EB64 0B:AB54: A9 65     LDA #< ofs_0x03DE76
C - - - - - 0x02EB66 0B:AB56: 48        PHA
C - - - - - 0x02EB67 0B:AB57: 4C 17 F6  JMP loc_0x03F627_restore_prg_bank



tbl_DDB6:
- D 2 - - - 0x03DDC6 0F:DDB6: FC        .byte $FC   ; 
- D 2 - - - 0x03DDC7 0F:DDB7: FD        .byte $FD   ; 
- D 2 - - - 0x03DDC8 0F:DDB8: FC        .byte $FC   ; 
- D 2 - - - 0x03DDC9 0F:DDB9: FC        .byte $FC   ; 
- D 2 - - - 0x03DDCA 0F:DDBA: FE        .byte $FE   ; 
- D 2 - - - 0x03DDCB 0F:DDBB: 03        .byte $03   ; 
- D 2 - - - 0x03DDCC 0F:DDBC: FF        .byte $FF   ; 
- D 2 - - - 0x03DDCD 0F:DDBD: FE        .byte $FE   ; 
- D 2 - - - 0x03DDCE 0F:DDBE: FD        .byte $FD   ; 
- D 2 - - - 0x03DDCF 0F:DDBF: FC        .byte $FC   ; 
- D 2 - - - 0x03DDD0 0F:DDC0: FD        .byte $FD   ; 
- D 2 - - - 0x03DDD1 0F:DDC1: FE        .byte $FE   ; 
- D 2 - - - 0x03DDD2 0F:DDC2: 01        .byte $01   ; 
- D 2 - - - 0x03DDD3 0F:DDC3: 00        .byte $00   ; 
- D 2 - - - 0x03DDD4 0F:DDC4: FD        .byte $FD   ; 
- D 2 - - - 0x03DDD5 0F:DDC5: FE        .byte $FE   ; 
- D 2 - - - 0x03DDD6 0F:DDC6: FD        .byte $FD   ; 
- D 2 - - - 0x03DDD7 0F:DDC7: FD        .byte $FD   ; 
- D 2 - - - 0x03DDD8 0F:DDC8: FF        .byte $FF   ; 
- D 2 - - - 0x03DDD9 0F:DDC9: 05        .byte $05   ; 
- D 2 - - - 0x03DDDA 0F:DDCA: FF        .byte $FF   ; 
- D 2 - - - 0x03DDDB 0F:DDCB: FC        .byte $FC   ; 
- D 2 - - - 0x03DDDC 0F:DDCC: FD        .byte $FD   ; 
- D 2 - - - 0x03DDDD 0F:DDCD: FC        .byte $FC   ; 
- D 2 - - - 0x03DDDE 0F:DDCE: FC        .byte $FC   ; 
- D 2 - - - 0x03DDDF 0F:DDCF: FE        .byte $FE   ; 
- D 2 - - - 0x03DDE0 0F:DDD0: 03        .byte $03   ; 
- D 2 - - - 0x03DDE1 0F:DDD1: FF        .byte $FF   ; 
- D 2 - - - 0x03DDE2 0F:DDD2: FC        .byte $FC   ; 
- D 2 - - - 0x03DDE3 0F:DDD3: FD        .byte $FD   ; 
- D 2 - - - 0x03DDE4 0F:DDD4: FC        .byte $FC   ; 
- D 2 - - - 0x03DDE5 0F:DDD5: FC        .byte $FC   ; 
- D 2 - - - 0x03DDE6 0F:DDD6: FE        .byte $FE   ; 
- D 2 - - - 0x03DDE7 0F:DDD7: 01        .byte $01   ; 
- D 2 - - - 0x03DDE8 0F:DDD8: FF        .byte $FF   ; 
- D 2 - - - 0x03DDE9 0F:DDD9: FC        .byte $FC   ; 
- D 2 - - - 0x03DDEA 0F:DDDA: FD        .byte $FD   ; 
- D 2 - - - 0x03DDEB 0F:DDDB: FC        .byte $FC   ; 
- D 2 - - - 0x03DDEC 0F:DDDC: FC        .byte $FC   ; 
- D 2 - - - 0x03DDED 0F:DDDD: FE        .byte $FE   ; 
- D 2 - - - 0x03DDEE 0F:DDDE: 03        .byte $03   ; 
- D 2 - - - 0x03DDEF 0F:DDDF: 00        .byte $00   ; 
- D 2 - - - 0x03DDF0 0F:DDE0: FC        .byte $FC   ; 
- D 2 - - - 0x03DDF1 0F:DDE1: FD        .byte $FD   ; 
- D 2 - - - 0x03DDF2 0F:DDE2: FC        .byte $FC   ; 
- D 2 - - - 0x03DDF3 0F:DDE3: FC        .byte $FC   ; 
- D 2 - - - 0x03DDF4 0F:DDE4: FE        .byte $FE   ; 
- D 2 - - - 0x03DDF5 0F:DDE5: 00        .byte $00   ; 
- D 2 - - - 0x03DDF6 0F:DDE6: 00        .byte $00   ; 
- - - - - - 0x03DDF7 0F:DDE7: FF        .byte $FF   ; 
- - - - - - 0x03DDF8 0F:DDE8: FF        .byte $FF   ; 



tbl_ABCA:
- D 1 - - - 0x02EBDA 0B:ABCA: 0B        .byte $0B   ; 
- D 1 - - - 0x02EBDB 0B:ABCB: 0B        .byte $0B   ; 
- D 1 - - - 0x02EBDC 0B:ABCC: 0B        .byte $0B   ; 
- - - - - - 0x02EBDD 0B:ABCD: 0C        .byte $0C   ; 
- D 1 - - - 0x02EBDE 0B:ABCE: 0B        .byte $0B   ; 
- D 1 - - - 0x02EBDF 0B:ABCF: 0B        .byte $0B   ; 
- D 1 - - - 0x02EBE0 0B:ABD0: 0B        .byte $0B   ; 
- D 1 - - - 0x02EBE1 0B:ABD1: 0F        .byte $0F   ; 
- D 1 - - - 0x02EBE2 0B:ABD2: 0F        .byte $0F   ; 
- D 1 - - - 0x02EBE3 0B:ABD3: 0B        .byte $0B   ; 
- D 1 - - - 0x02EBE4 0B:ABD4: 0F        .byte $0F   ; 
- D 1 - - - 0x02EBE5 0B:ABD5: 0D        .byte $0D   ; 
- D 1 - - - 0x02EBE6 0B:ABD6: 0B        .byte $0B   ; 
- D 1 - - - 0x02EBE7 0B:ABD7: 0F        .byte $0F   ; 
- D 1 - - - 0x02EBE8 0B:ABD8: 0B        .byte $0B   ; 
- D 1 - - - 0x02EBE9 0B:ABD9: 0C        .byte $0C   ; 
- D 1 - - - 0x02EBEA 0B:ABDA: 0B        .byte $0B   ; 
- D 1 - - - 0x02EBEB 0B:ABDB: 0C        .byte $0C   ; 
- D 1 - - - 0x02EBEC 0B:ABDC: 0C        .byte $0C   ; 
- D 1 - - - 0x02EBED 0B:ABDD: 0B        .byte $0B   ; 
- D 1 - - - 0x02EBEE 0B:ABDE: 0F        .byte $0F   ; 
- D 1 - - - 0x02EBEF 0B:ABDF: 0E        .byte $0E   ; 
- D 1 - - - 0x02EBF0 0B:ABE0: 0B        .byte $0B   ; 
- D 1 - - - 0x02EBF1 0B:ABE1: 0F        .byte $0F   ; 
- D 1 - - - 0x02EBF2 0B:ABE2: 0C        .byte $0C   ; 
- D 1 - - - 0x02EBF3 0B:ABE3: 0F        .byte $0F   ; 
- D 1 - - - 0x02EBF4 0B:ABE4: 0F        .byte $0F   ; 
- D 1 - - - 0x02EBF5 0B:ABE5: 0C        .byte $0C   ; 
- D 1 - - - 0x02EBF6 0B:ABE6: 0F        .byte $0F   ; 
- D 1 - - - 0x02EBF7 0B:ABE7: 10        .byte $10   ; 
- D 1 - - - 0x02EBF8 0B:ABE8: 10        .byte $10   ; 
- D 1 - - - 0x02EBF9 0B:ABE9: 0F        .byte $0F   ; 
- D 1 - - - 0x02EBFA 0B:ABEA: 10        .byte $10   ; 
- D 1 - - - 0x02EBFB 0B:ABEB: 0F        .byte $0F   ; 
- D 1 - - - 0x02EBFC 0B:ABEC: 0F        .byte $0F   ; 
- D 1 - - - 0x02EBFD 0B:ABED: 0B        .byte $0B   ; 
- D 1 - - - 0x02EBFE 0B:ABEE: 0B        .byte $0B   ; 
- D 1 - - - 0x02EBFF 0B:ABEF: 0F        .byte $0F   ; 
- D 1 - - - 0x02EC00 0B:ABF0: 0C        .byte $0C   ; 
- D 1 - - - 0x02EC01 0B:ABF1: 0E        .byte $0E   ; 
- D 1 - - - 0x02EC02 0B:ABF2: 0B        .byte $0B   ; 
- D 1 - - - 0x02EC03 0B:ABF3: 0C        .byte $0C   ; 
- D 1 - - - 0x02EC04 0B:ABF4: 10        .byte $10   ; 
- D 1 - - - 0x02EC05 0B:ABF5: 0E        .byte $0E   ; 
- D 1 - - - 0x02EC06 0B:ABF6: 0B        .byte $0B   ; 
- D 1 - - - 0x02EC07 0B:ABF7: 0F        .byte $0F   ; 
- D 1 - - - 0x02EC08 0B:ABF8: 0C        .byte $0C   ; 
- D 1 - - - 0x02EC09 0B:ABF9: 0E        .byte $0E   ; 
- D 1 - - - 0x02EC0A 0B:ABFA: 0C        .byte $0C   ; 
- D 1 - - - 0x02EC0B 0B:ABFB: 0C        .byte $0C   ; 



tbl_ABFC:
- D 1 - - - 0x02EC0C 0B:ABFC: 58        .byte $58   ; 00
- D 1 - - - 0x02EC0D 0B:ABFD: 58        .byte $58   ; 01
- D 1 - - - 0x02EC0E 0B:ABFE: 58        .byte $58   ; 02
- D 1 - - - 0x02EC0F 0B:ABFF: 76        .byte $76   ; 03



sub_AC00:
C - - - - - 0x02EC10 0B:AC00: A4 2C     LDY ram_002C
C - - - - - 0x02EC12 0B:AC02: B9 FC AB  LDA tbl_ABFC,Y
C - - - - - 0x02EC15 0B:AC05: 85 33     STA ram_0033
C - - - - - 0x02EC17 0B:AC07: 60        RTS



tbl_ACB0:
- D 1 - - - 0x02ECC0 0B:ACB0: 00        .byte off_AD00 - tbl_AD00   ; 00
- D 1 - - - 0x02ECC1 0B:ACB1: 0C        .byte off_AD0C - tbl_AD00   ; 01
- D 1 - - - 0x02ECC2 0B:ACB2: 00        .byte off_AD00 - tbl_AD00   ; 02
- D 1 - - - 0x02ECC3 0B:ACB3: 0C        .byte off_AD0C - tbl_AD00   ; 03
- D 1 - - - 0x02ECC4 0B:ACB4: 18        .byte off_AD18 - tbl_AD00   ; 04
- D 1 - - - 0x02ECC5 0B:ACB5: 18        .byte off_AD18 - tbl_AD00   ; 05
- D 1 - - - 0x02ECC6 0B:ACB6: 24        .byte off_AD24 - tbl_AD00   ; 06
- D 1 - - - 0x02ECC7 0B:ACB7: 30        .byte off_AD30 - tbl_AD00   ; 07
; night mode
- D 1 - - - 0x02ECD0 0B:ACC0: 80        .byte off_AD80 - tbl_AD00   ; 00
- D 1 - - - 0x02ECD1 0B:ACC1: 8C        .byte off_AD8C - tbl_AD00   ; 01
- D 1 - - - 0x02ECD2 0B:ACC2: 80        .byte off_AD80 - tbl_AD00   ; 02
- D 1 - - - 0x02ECD3 0B:ACC3: 8C        .byte off_AD8C - tbl_AD00   ; 03
- D 1 - - - 0x02ECD4 0B:ACC4: 98        .byte off_AD98 - tbl_AD00   ; 04
- D 1 - - - 0x02ECD5 0B:ACC5: 98        .byte off_AD98 - tbl_AD00   ; 05
- D 1 - - - 0x02ECD6 0B:ACC6: A4        .byte off_ADA4 - tbl_AD00   ; 06
- D 1 - - - 0x02ECD7 0B:ACC7: B0        .byte off_ADB0 - tbl_AD00   ; 07



tbl_ACD0:
- D 1 - - - 0x02ECE0 0B:ACD0: 0F        .byte $0F   ; 
- D 1 - - - 0x02ECE1 0B:ACD1: 16        .byte $16   ; 
- D 1 - - - 0x02ECE2 0B:ACD2: 1A        .byte $1A   ; 
- D 1 - - - 0x02ECE3 0B:ACD3: 20        .byte $20   ; 
- D 1 - - - 0x02ECE4 0B:ACD4: 0F        .byte $0F   ; 
- D 1 - - - 0x02ECE5 0B:ACD5: 0B        .byte $0B   ; 
- D 1 - - - 0x02ECE6 0B:ACD6: 2A        .byte $2A   ; 
- D 1 - - - 0x02ECE7 0B:ACD7: 12        .byte $12   ; 
- D 1 - - - 0x02ECE8 0B:ACD8: 0F        .byte $0F   ; 
- D 1 - - - 0x02ECE9 0B:ACD9: 07        .byte $07   ; 
- D 1 - - - 0x02ECEA 0B:ACDA: 16        .byte $16   ; 
- D 1 - - - 0x02ECEB 0B:ACDB: 31        .byte $31   ; 
- D 1 - - - 0x02ECEC 0B:ACDC: 0F        .byte $0F   ; 
- D 1 - - - 0x02ECED 0B:ACDD: 04        .byte $04   ; 
- D 1 - - - 0x02ECEE 0B:ACDE: 16        .byte $16   ; 
- D 1 - - - 0x02ECEF 0B:ACDF: 37        .byte $37   ; 
- D 1 - - - 0x02ECF0 0B:ACE0: 0F        .byte $0F   ; 
- D 1 - - - 0x02ECF1 0B:ACE1: 11        .byte $11   ; 
- D 1 - - - 0x02ECF2 0B:ACE2: 21        .byte $21   ; 
- D 1 - - - 0x02ECF3 0B:ACE3: 20        .byte $20   ;



tbl_AD00:
off_AD00:
- D 1 - I - 0x02ED10 0B:AD00: 0F        .byte $0F   ; 
- D 1 - I - 0x02ED11 0B:AD01: 17        .byte $17   ; 
- D 1 - I - 0x02ED12 0B:AD02: 27        .byte $27   ; 
- D 1 - I - 0x02ED13 0B:AD03: 38        .byte $38   ; 
- D 1 - I - 0x02ED14 0B:AD04: 0F        .byte $0F   ; 
- D 1 - I - 0x02ED15 0B:AD05: 04        .byte $04   ; 
- D 1 - I - 0x02ED16 0B:AD06: 14        .byte $14   ; 
- D 1 - I - 0x02ED17 0B:AD07: 24        .byte $24   ; 
- D 1 - I - 0x02ED18 0B:AD08: 0F        .byte $0F   ; 
- D 1 - I - 0x02ED19 0B:AD09: 06        .byte $06   ; 
- D 1 - I - 0x02ED1A 0B:AD0A: 16        .byte $16   ; 
- D 1 - I - 0x02ED1B 0B:AD0B: 26        .byte $26   ; 

off_AD0C:
- D 1 - I - 0x02ED1C 0B:AD0C: 0F        .byte $0F   ; 
- D 1 - I - 0x02ED1D 0B:AD0D: 00        .byte $00   ; 
- D 1 - I - 0x02ED1E 0B:AD0E: 10        .byte $10   ; 
- D 1 - I - 0x02ED1F 0B:AD0F: 20        .byte $20   ; 
- D 1 - I - 0x02ED20 0B:AD10: 0F        .byte $0F   ; 
- D 1 - I - 0x02ED21 0B:AD11: 06        .byte $06   ; 
- D 1 - I - 0x02ED22 0B:AD12: 16        .byte $16   ; 
- D 1 - I - 0x02ED23 0B:AD13: 27        .byte $27   ; 
- D 1 - I - 0x02ED24 0B:AD14: 0F        .byte $0F   ; 
- D 1 - I - 0x02ED25 0B:AD15: 08        .byte $08   ; 
- D 1 - I - 0x02ED26 0B:AD16: 18        .byte $18   ; 
- D 1 - I - 0x02ED27 0B:AD17: 28        .byte $28   ; 

off_AD18:
- D 1 - I - 0x02ED28 0B:AD18: 0F        .byte $0F   ; 
- D 1 - I - 0x02ED29 0B:AD19: 07        .byte $07   ; 
- D 1 - I - 0x02ED2A 0B:AD1A: 17        .byte $17   ; 
- D 1 - I - 0x02ED2B 0B:AD1B: 27        .byte $27   ; 
- D 1 - I - 0x02ED2C 0B:AD1C: 0F        .byte $0F   ; 
- D 1 - I - 0x02ED2D 0B:AD1D: 06        .byte $06   ; 
- D 1 - I - 0x02ED2E 0B:AD1E: 16        .byte $16   ; 
- D 1 - I - 0x02ED2F 0B:AD1F: 26        .byte $26   ; 
- D 1 - I - 0x02ED30 0B:AD20: 0F        .byte $0F   ; 
- D 1 - I - 0x02ED31 0B:AD21: 05        .byte $05   ; 
- D 1 - I - 0x02ED32 0B:AD22: 07        .byte $07   ; 
- D 1 - I - 0x02ED33 0B:AD23: 10        .byte $10   ; 

off_AD24:
- D 1 - I - 0x02ED34 0B:AD24: 0F        .byte $0F   ; 
- D 1 - I - 0x02ED35 0B:AD25: 0C        .byte $0C   ; 
- D 1 - I - 0x02ED36 0B:AD26: 1C        .byte $1C   ; 
- D 1 - I - 0x02ED37 0B:AD27: 21        .byte $21   ; 
- D 1 - I - 0x02ED38 0B:AD28: 0F        .byte $0F   ; 
- D 1 - I - 0x02ED39 0B:AD29: 01        .byte $01   ; 
- D 1 - I - 0x02ED3A 0B:AD2A: 11        .byte $11   ; 
- D 1 - I - 0x02ED3B 0B:AD2B: 21        .byte $21   ; 
- D 1 - I - 0x02ED3C 0B:AD2C: 0F        .byte $0F   ; 
- D 1 - I - 0x02ED3D 0B:AD2D: 03        .byte $03   ; 
- D 1 - I - 0x02ED3E 0B:AD2E: 13        .byte $13   ; 
- D 1 - I - 0x02ED3F 0B:AD2F: 23        .byte $23   ; 

off_AD30:
- D 1 - I - 0x02ED40 0B:AD30: 0F        .byte $0F   ; 
- D 1 - I - 0x02ED41 0B:AD31: 20        .byte $20   ; 
- D 1 - I - 0x02ED42 0B:AD32: 10        .byte $10   ; 
- D 1 - I - 0x02ED43 0B:AD33: 00        .byte $00   ; 
- D 1 - I - 0x02ED44 0B:AD34: 0F        .byte $0F   ; 
- D 1 - I - 0x02ED45 0B:AD35: 37        .byte $37   ; 
- D 1 - I - 0x02ED46 0B:AD36: 27        .byte $27   ; 
- D 1 - I - 0x02ED47 0B:AD37: 17        .byte $17   ; 
- D 1 - I - 0x02ED48 0B:AD38: 0F        .byte $0F   ; 
- D 1 - I - 0x02ED49 0B:AD39: 06        .byte $06   ; 
- D 1 - I - 0x02ED4A 0B:AD3A: 16        .byte $16   ; 
- D 1 - I - 0x02ED4B 0B:AD3B: 26        .byte $26   ; 

off_AD80:
- D 1 - I - 0x02ED90 0B:AD80: 0F        .byte $0F   ; 
- D 1 - I - 0x02ED91 0B:AD81: 01        .byte $01   ; 
- D 1 - I - 0x02ED92 0B:AD82: 11        .byte $11   ; 
- D 1 - I - 0x02ED93 0B:AD83: 21        .byte $21   ; 
- D 1 - I - 0x02ED94 0B:AD84: 0F        .byte $0F   ; 
- D 1 - I - 0x02ED95 0B:AD85: 03        .byte $03   ; 
- D 1 - I - 0x02ED96 0B:AD86: 13        .byte $13   ; 
- D 1 - I - 0x02ED97 0B:AD87: 23        .byte $23   ; 
- D 1 - I - 0x02ED98 0B:AD88: 0F        .byte $0F   ; 
- D 1 - I - 0x02ED99 0B:AD89: 0C        .byte $0C   ; 
- D 1 - I - 0x02ED9A 0B:AD8A: 1C        .byte $1C   ; 
- D 1 - I - 0x02ED9B 0B:AD8B: 21        .byte $21   ; 

off_AD8C:
- D 1 - I - 0x02ED9C 0B:AD8C: 0F        .byte $0F   ; 
- D 1 - I - 0x02ED9D 0B:AD8D: 01        .byte $01   ; 
- D 1 - I - 0x02ED9E 0B:AD8E: 11        .byte $11   ; 
- D 1 - I - 0x02ED9F 0B:AD8F: 21        .byte $21   ; 
- D 1 - I - 0x02EDA0 0B:AD90: 0F        .byte $0F   ; 
- D 1 - I - 0x02EDA1 0B:AD91: 03        .byte $03   ; 
- D 1 - I - 0x02EDA2 0B:AD92: 13        .byte $13   ; 
- D 1 - I - 0x02EDA3 0B:AD93: 23        .byte $23   ; 
- D 1 - I - 0x02EDA4 0B:AD94: 0F        .byte $0F   ; 
- D 1 - I - 0x02EDA5 0B:AD95: 0C        .byte $0C   ; 
- D 1 - I - 0x02EDA6 0B:AD96: 1C        .byte $1C   ; 
- D 1 - I - 0x02EDA7 0B:AD97: 21        .byte $21   ; 

off_AD98:
- D 1 - I - 0x02EDA8 0B:AD98: 0F        .byte $0F   ; 
- D 1 - I - 0x02EDA9 0B:AD99: 01        .byte $01   ; 
- D 1 - I - 0x02EDAA 0B:AD9A: 11        .byte $11   ; 
- D 1 - I - 0x02EDAB 0B:AD9B: 21        .byte $21   ; 
- D 1 - I - 0x02EDAC 0B:AD9C: 0F        .byte $0F   ; 
- D 1 - I - 0x02EDAD 0B:AD9D: 0C        .byte $0C   ; 
- D 1 - I - 0x02EDAE 0B:AD9E: 1C        .byte $1C   ; 
- D 1 - I - 0x02EDAF 0B:AD9F: 21        .byte $21   ; 
- D 1 - I - 0x02EDB0 0B:ADA0: 0F        .byte $0F   ; 
- D 1 - I - 0x02EDB1 0B:ADA1: 03        .byte $03   ; 
- D 1 - I - 0x02EDB2 0B:ADA2: 02        .byte $02   ; 
- D 1 - I - 0x02EDB3 0B:ADA3: 23        .byte $23   ; 

off_ADA4:
- D 1 - I - 0x02EDB4 0B:ADA4: 0F        .byte $0F   ; 
- D 1 - I - 0x02EDB5 0B:ADA5: 0C        .byte $0C   ; 
- D 1 - I - 0x02EDB6 0B:ADA6: 1C        .byte $1C   ; 
- D 1 - I - 0x02EDB7 0B:ADA7: 21        .byte $21   ; 
- D 1 - I - 0x02EDB8 0B:ADA8: 0F        .byte $0F   ; 
- D 1 - I - 0x02EDB9 0B:ADA9: 01        .byte $01   ; 
- D 1 - I - 0x02EDBA 0B:ADAA: 11        .byte $11   ; 
- D 1 - I - 0x02EDBB 0B:ADAB: 21        .byte $21   ; 
- D 1 - I - 0x02EDBC 0B:ADAC: 0F        .byte $0F   ; 
- D 1 - I - 0x02EDBD 0B:ADAD: 03        .byte $03   ; 
- D 1 - I - 0x02EDBE 0B:ADAE: 13        .byte $13   ; 
- D 1 - I - 0x02EDBF 0B:ADAF: 23        .byte $23   ; 

off_ADB0:
- D 1 - I - 0x02EDC0 0B:ADB0: 0F        .byte $0F   ; 
- D 1 - I - 0x02EDC1 0B:ADB1: 20        .byte $20   ; 
- D 1 - I - 0x02EDC2 0B:ADB2: 10        .byte $10   ; 
- D 1 - I - 0x02EDC3 0B:ADB3: 00        .byte $00   ; 
- D 1 - I - 0x02EDC4 0B:ADB4: 0F        .byte $0F   ; 
- D 1 - I - 0x02EDC5 0B:ADB5: 2C        .byte $2C   ; 
- D 1 - I - 0x02EDC6 0B:ADB6: 1C        .byte $1C   ; 
- D 1 - I - 0x02EDC7 0B:ADB7: 0C        .byte $0C   ; 
- D 1 - I - 0x02EDC8 0B:ADB8: 0F        .byte $0F   ; 
- D 1 - I - 0x02EDC9 0B:ADB9: 03        .byte $03   ; 
- D 1 - I - 0x02EDCA 0B:ADBA: 13        .byte $13   ; 
- D 1 - I - 0x02EDCB 0B:ADBB: 23        .byte $23   ; 



tbl_AE20:
- D 1 - - - 0x02EE30 0B:AE20: 0A        .byte $0A   ; 00
- D 1 - - - 0x02EE31 0B:AE21: 14        .byte $14   ; 01
- D 1 - - - 0x02EE32 0B:AE22: 0A        .byte $0A   ; 02
- D 1 - - - 0x02EE33 0B:AE23: 14        .byte $14   ; 03
- D 1 - - - 0x02EE34 0B:AE24: 0E        .byte $0E   ; 04
- D 1 - - - 0x02EE35 0B:AE25: 0E        .byte $0E   ; 05
- D 1 - - - 0x02EE36 0B:AE26: 08        .byte $08   ; 06
- D 1 - - - 0x02EE37 0B:AE27: 3E        .byte $3E   ; 07



tbl_AE30:
- D 1 - - - 0x02EE40 0B:AE30: 68        .byte $68   ; 
tbl_AE31:
- D 1 - - - 0x02EE41 0B:AE31: 6A        .byte $6A   ; 
- D 1 - - - 0x02EE42 0B:AE32: 64        .byte $64   ; 
- D 1 - - - 0x02EE43 0B:AE33: 66        .byte $66   ; 
- D 1 - - - 0x02EE44 0B:AE34: 68        .byte $68   ; 
- D 1 - - - 0x02EE45 0B:AE35: 6A        .byte $6A   ; 
- D 1 - - - 0x02EE46 0B:AE36: 64        .byte $64   ; 
- D 1 - - - 0x02EE47 0B:AE37: 66        .byte $66   ; 
- D 1 - - - 0x02EE48 0B:AE38: 60        .byte $60   ; 
- D 1 - - - 0x02EE49 0B:AE39: 62        .byte $62   ; 
- D 1 - - - 0x02EE4A 0B:AE3A: 60        .byte $60   ; 
- D 1 - - - 0x02EE4B 0B:AE3B: 62        .byte $62   ; 
- D 1 - - - 0x02EE4C 0B:AE3C: 5C        .byte $5C   ; 
- D 1 - - - 0x02EE4D 0B:AE3D: 5E        .byte $5E   ; 
- D 1 - - - 0x02EE4E 0B:AE3E: 88        .byte $88   ; 
- D 1 - - - 0x02EE4F 0B:AE3F: 8A        .byte $8A   ; 



.export sub_0x02EE60
sub_0x02EE60:
C - - - - - 0x02EE60 0B:AE50: A5 9E     LDA ram_009E
C - - - - - 0x02EE62 0B:AE52: 8D 5C 01  STA ram_015C
C - - - - - 0x02EE65 0B:AE55: 20 8C FC  JSR sub_0x03FC9C
C - - - - - 0x02EE68 0B:AE58: 8D CA 06  STA ram_06CA
C - - - - - 0x02EE6B 0B:AE5B: 8D CB 06  STA ram_06CB
C - - - - - 0x02EE6E 0B:AE5E: 8D 71 06  STA ram_0671
C - - - - - 0x02EE71 0B:AE61: 85 AA     STA ram_00AA
C - - - - - 0x02EE73 0B:AE63: 85 86     STA ram_0086
C - - - - - 0x02EE75 0B:AE65: 85 4D     STA ram_004D
C - - - - - 0x02EE77 0B:AE67: A9 01     LDA #$01
C - - - - - 0x02EE79 0B:AE69: 85 48     STA ram_0048
C - - - - - 0x02EE7B 0B:AE6B: 85 49     STA ram_0049
C - - - - - 0x02EE7D 0B:AE6D: A5 9E     LDA ram_009E
C - - - - - 0x02EE7F 0B:AE6F: 0A        ASL
C - - - - - 0x02EE80 0B:AE70: A8        TAY
C - - - - - 0x02EE81 0B:AE71: A9 D0     LDA #< ofs_0x03F8E0
C - - - - - 0x02EE83 0B:AE73: 85 4B     STA ram_004B
C - - - - - 0x02EE85 0B:AE75: A9 F8     LDA #> ofs_0x03F8E0
C - - - - - 0x02EE87 0B:AE77: 85 4C     STA ram_004C
C - - - - - 0x02EE89 0B:AE79: B9 30 AE  LDA tbl_AE30,Y
C - - - - - 0x02EE8C 0B:AE7C: 85 4E     STA ram_004E
C - - - - - 0x02EE8E 0B:AE7E: B9 31 AE  LDA tbl_AE31,Y
C - - - - - 0x02EE91 0B:AE81: 85 4F     STA ram_004F
                                        LDA #< tbl_AD00
                                        STA ram_0000
C - - - - - 0x02EE93 0B:AE83: A9 AD     LDA #> tbl_AD00
C - - - - - 0x02EE95 0B:AE85: 85 01     STA ram_0001
C - - - - - 0x02EE97 0B:AE87: AD 2B 01  LDA ram_option_skin
C - - - - - 0x02EE9A 0B:AE8A: 29 02     AND #$02
C - - - - - 0x02EE9C 0B:AE8C: F0 02     BEQ bra_AE90_not_night_mode
C - - - - - 0x02EE9E 0B:AE8E: A9 10     LDA #$08
bra_AE90_not_night_mode:
C - - - - - 0x02EEA0 0B:AE90: 65 9E     ADC ram_009E
C - - - - - 0x02EEA2 0B:AE92: AA        TAX
C - - - - - 0x02EEA3 0B:AE93: BD B0 AC  LDA tbl_ACB0,X
                                        CLC
                                        ADC ram_0000
C - - - - - 0x02EEA6 0B:AE96: 85 00     STA ram_0000
                                        LDA #$00
                                        ADC ram_0001
                                        STA ram_0001
C - - - - - 0x02EEA8 0B:AE98: A0 0B     LDY #$0B
bra_AE9A_loop:
C - - - - - 0x02EEAA 0B:AE9A: B1 00     LDA (ram_0000),Y
C - - - - - 0x02EEAC 0B:AE9C: 99 4D 06  STA ram_064D,Y
C - - - - - 0x02EEAF 0B:AE9F: 88        DEY
C - - - - - 0x02EEB0 0B:AEA0: 10 F8     BPL bra_AE9A_loop
C - - - - - 0x02EEB2 0B:AEA2: A0 13     LDY #$13
bra_AEA4_loop:
C - - - - - 0x02EEB4 0B:AEA4: B9 D0 AC  LDA tbl_ACD0,Y
C - - - - - 0x02EEB7 0B:AEA7: 99 59 06  STA ram_0659,Y
C - - - - - 0x02EEBA 0B:AEAA: 88        DEY
C - - - - - 0x02EEBB 0B:AEAB: 10 F7     BPL bra_AEA4_loop
C - - - - - 0x02EEBD 0B:AEAD: 20 25 DC  JSR sub_0x03DC35
C - - - - - 0x02EEC0 0B:AEB0: 20 BE DA  JSR sub_0x03DACE
C - - - - - 0x02EEC3 0B:AEB3: E6 95     INC ram_0095
C - - - - - 0x02EEC5 0B:AEB5: A9 60     LDA #$60
C - - - - - 0x02EEC7 0B:AEB7: 85 A6     STA ram_00A6
C - - - - - 0x02EEC9 0B:AEB9: A4 9E     LDY ram_009E
C - - - - - 0x02EECB 0B:AEBB: BE 20 AE  LDX tbl_AE20,Y
C - - - - - 0x02EECE 0B:AEBE: 60        RTS



.export loc_0x02EFA0
loc_0x02EFA0:
C D 1 - - - 0x02EFA0 0B:AF90: 68        PLA
C - - - - - 0x02EFA1 0B:AF91: 8D 3F 06  STA ram_063F
C - - - - - 0x02EFA4 0B:AF94: 30 1D     BMI bra_AFB3_RTS
C - - - - - 0x02EFA6 0B:AF96: A4 2C     LDY ram_002C
C - - - - - 0x02EFA8 0B:AF98: C0 01     CPY #$01
C - - - - - 0x02EFAA 0B:AF9A: D0 17     BNE bra_AFB3_RTS
C - - - - - 0x02EFAC 0B:AF9C: AA        TAX
C - - - - - 0x02EFAD 0B:AF9D: BD 29 01  LDA ram_option_unknown,X
C - - - - - 0x02EFB0 0B:AFA0: 29 0F     AND #$0F
C - - - - - 0x02EFB2 0B:AFA2: 49 09     EOR #$09
C - - - - - 0x02EFB4 0B:AFA4: D0 0A     BNE bra_AFB0
C - - - - - 0x02EFB6 0B:AFA6: BD 29 01  LDA ram_option_unknown,X
C - - - - - 0x02EFB9 0B:AFA9: 29 F0     AND #$F0
C - - - - - 0x02EFBB 0B:AFAB: 69 0E     ADC #$0E
C - - - - - 0x02EFBD 0B:AFAD: 9D 29 01  STA ram_option_unknown,X
bra_AFB0:
C - - - - - 0x02EFC0 0B:AFB0: FE 29 01  INC ram_option_unknown,X
bra_AFB3_RTS:
C - - - - - 0x02EFC3 0B:AFB3: 60        RTS



.export tbl_0x02EFFA_night
tbl_0x02EFFA_night:
- D 1 - I - 0x02EFFA 0B:AFEA: 20        .byte $20, $20, $20   ; 00
- D 1 - I - 0x02EFFD 0B:AFED: 16        .byte $16, $1A, $20   ; 01
- D 1 - I - 0x02F000 0B:AFF0: 01        .byte $01, $11, $21   ; 02
- D 1 - I - 0x02F003 0B:AFF3: 0C        .byte $0C, $1C, $21   ; 03
- D 1 - I - 0x02F006 0B:AFF6: 01        .byte $01, $11, $21   ; 04
- D 1 - I - 0x02F009 0B:AFF9: 03        .byte $03, $13, $23   ; 05
- D 1 - I - 0x02F00C 0B:AFFC: 0A        .byte $0A, $1A, $2A   ; 06
- D 1 - I - 0x02F00F 0B:AFFF: 0F        .byte $0F, $06, $20   ; 07
- D 1 - I - 0x02F012 0B:B002: 06        .byte $06, $16, $20   ; 08
- - - - - - 0x02F015 0B:B005: 03        .byte $03, $13, $23   ; 09
- - - - - - 0x02F018 0B:B008: 07        .byte $07, $15, $28   ; 0A
- - - - - - 0x02F01B 0B:B00B: 01        .byte $01, $11, $21   ; 0B
- - - - - - 0x02F01E 0B:B00E: 0C        .byte $0C, $1C, $21   ; 0C
- D 1 - I - 0x02F021 0B:B011: 0F        .byte $0F, $1A, $12   ; 0D
- D 1 - I - 0x02F024 0B:B014: 0F        .byte $0F, $1A, $16   ; 0E
- D 1 - I - 0x02F027 0B:B017: 0F        .byte $0F, $1A, $27   ; 0F
- D 1 - I - 0x02F02A 0B:B01A: 0F        .byte $0F, $1A, $14   ; 10
- D 1 - I - 0x02F02D 0B:B01D: 0F        .byte $0F, $16, $33   ; 11
- D 1 - I - 0x02F030 0B:B020: 0F        .byte $0F, $27, $30   ; 12
- D 1 - I - 0x02F033 0B:B023: 0F        .byte $0F, $28, $20   ; 13
- D 1 - I - 0x02F036 0B:B026: 18        .byte $18, $28, $37   ; 14
- - - - - - 0x02F039 0B:B029: 00        .byte $00, $00, $00   ; 15
- - - - - - 0x02F03C 0B:B02C: 03        .byte $03, $02, $23   ; 16
- D 1 - I - 0x02F03F 0B:B02F: 0B        .byte $0B, $1A, $29   ; 17
- D 1 - I - 0x02F042 0B:B032: 06        .byte $06, $06, $06   ; 18
- - - - - - 0x02F045 0B:B035: 0F        .byte $0F, $2C, $12   ; 19
- - - - - - 0x02F048 0B:B038: 0F        .byte $0F, $2C, $16   ; 1A
- D 1 - I - 0x02F04B 0B:B03B: 0F        .byte $0F, $2C, $27   ; 1B
- D 1 - I - 0x02F04E 0B:B03E: 0F        .byte $0F, $2C, $14   ; 1C
- D 1 - I - 0x02F051 0B:B041: 0F        .byte $0F, $08, $39   ; 1D
- D 1 - I - 0x02F054 0B:B044: 0F        .byte $0F, $18, $30   ; 1E
- D 1 - I - 0x02F057 0B:B047: 0F        .byte $0F, $04, $30   ; 1F
- D 1 - I - 0x02F05A 0B:B04A: 05        .byte $05, $16, $26   ; 20
- - - - - - 0x02F05D 0B:B04D: 00        .byte $00, $00, $00   ; 21
- - - - - - 0x02F060 0B:B050: 20        .byte $20, $38, $20   ; 22
- D 1 - I - 0x02F063 0B:B053: 0F        .byte $0F, $0F, $00   ; 23
- D 1 - I - 0x02F066 0B:B056: 16        .byte $16, $0F, $26   ; 24
- D 1 - I - 0x02F069 0B:B059: 16        .byte $16, $20, $38   ; 25
- D 1 - I - 0x02F06C 0B:B05C: 13        .byte $13, $23, $02   ; 26
- D 1 - I - 0x02F06F 0B:B05F: 03        .byte $03, $13, $02   ; 27
- - - - - - 0x02F072 0B:B062: 0F        .byte $0F, $00, $10   ; 28
- - - - - - 0x02F075 0B:B065: 03        .byte $03, $13, $23   ; 29
- D 1 - I - 0x02F078 0B:B068: 1C        .byte $1C, $2C, $3C   ; 2A
- D 1 - I - 0x02F07B 0B:B06B: 01        .byte $01, $11, $21   ; 2B
- D 1 - I - 0x02F07E 0B:B06E: 11        .byte $11, $19, $29   ; 2C
- D 1 - I - 0x02F081 0B:B071: 01        .byte $01, $11, $21   ; 2D
- D 1 - I - 0x02F084 0B:B074: 05        .byte $05, $15, $20   ; 2E
- D 1 - I - 0x02F087 0B:B077: 18        .byte $18, $28, $20   ; 2F
- D 1 - I - 0x02F08A 0B:B07A: 03        .byte $03, $13, $20   ; 30
- D 1 - I - 0x02F08D 0B:B07D: 06        .byte $06, $16, $20   ; 31
- D 1 - I - 0x02F090 0B:B080: 12        .byte $12, $22, $32   ; 32
- D 1 - I - 0x02F093 0B:B083: 16        .byte $16, $26, $36   ; 33
- - - - - - 0x02F096 0B:B086: 13        .byte $13, $23, $33   ; 34
- D 1 - I - 0x02F099 0B:B089: 1A        .byte $1A, $2A, $23   ; 35
- D 1 - I - 0x02F09C 0B:B08C: 18        .byte $18, $28, $23   ; 36
- D 1 - I - 0x02F09F 0B:B08F: 10        .byte $10, $20, $23   ; 37
- D 1 - I - 0x02F0A2 0B:B092: 15        .byte $15, $25, $23   ; 38
- D 1 - I - 0x02F0A5 0B:B095: 14        .byte $14, $24, $23   ; 39
- D 1 - I - 0x02F0A8 0B:B098: 18        .byte $18, $28, $1A   ; 3A
- D 1 - I - 0x02F0AB 0B:B09B: 08        .byte $08, $24, $28   ; 3B
- - - - - - 0x02F0AE 0B:B09E: 0C        .byte $0C, $1C, $21   ; 3C
- D 1 - I - 0x02F0B1 0B:B0A1: 14        .byte $14, $24, $23   ; 3D
- - - - - - 0x02F0B4 0B:B0A4: 18        .byte $18, $28, $27   ; 3E
- D 1 - I - 0x02F0B7 0B:B0A7: 0F        .byte $0F, $38, $37   ; 3F
- D 1 - I - 0x02F0BA 0B:B0AA: 14        .byte $14, $24, $30   ; 40
- D 1 - I - 0x02F0BD 0B:B0AD: 0C        .byte $0C, $1C, $2C   ; 41
- D 1 - I - 0x02F0C0 0B:B0B0: 20        .byte $20, $1A, $21   ; 42
- D 1 - I - 0x02F0C3 0B:B0B3: 1A        .byte $1A, $2A, $11   ; 43
- D 1 - I - 0x02F0C6 0B:B0B6: 1A        .byte $1A, $2A, $16   ; 44
- D 1 - I - 0x02F0C9 0B:B0B9: 1A        .byte $1A, $2A, $27   ; 45
- D 1 - I - 0x02F0CC 0B:B0BC: 1A        .byte $1A, $2A, $14   ; 46
- D 1 - I - 0x02F0CF 0B:B0BF: 17        .byte $17, $27, $05   ; 47
- D 1 - I - 0x02F0D2 0B:B0C2: 18        .byte $18, $28, $20   ; 48
- D 1 - I - 0x02F0D5 0B:B0C5: 13        .byte $13, $23, $38   ; 49
- D 1 - I - 0x02F0D8 0B:B0C8: 17        .byte $17, $27, $28   ; 4A
- - - - - - 0x02F0DB 0B:B0CB: 01        .byte $01, $11, $38   ; 4B
- - - - - - 0x02F0DE 0B:B0CE: 16        .byte $16, $11, $20   ; 4C
- - - - - - 0x02F0E1 0B:B0D1: 1B        .byte $1B, $2B, $3B   ; 4D
- - - - - - 0x02F0E4 0B:B0D4: 17        .byte $17, $27, $37   ; 4E
- - - - - - 0x02F0E7 0B:B0D7: 13        .byte $13, $23, $20   ; 4F
- D 1 - I - 0x02F0EA 0B:B0DA: 23        .byte $23, $10, $20   ; 50
- - - - - - 0x02F0ED 0B:B0DD: 14        .byte $14, $23, $13   ; 51
- - - - - - 0x02F0F0 0B:B0E0: 13        .byte $13, $23, $13   ; 52
- - - - - - 0x02F0F3 0B:B0E3: 19        .byte $19, $29, $39   ; 53
- - - - - - 0x02F0F6 0B:B0E6: 0C        .byte $0C, $1C, $21   ; 54
- - - - - - 0x02F0F9 0B:B0E9: 02        .byte $02, $12, $32   ; 55
- D 1 - I - 0x02F0FC 0B:B0EC: 18        .byte $18, $14, $20   ; 56
- - - - - - 0x02F0FF 0B:B0EF: 03        .byte $03, $13, $23   ; 57
- - - - - - 0x02F102 0B:B0F2: 11        .byte $11, $2A, $20   ; 58
- - - - - - 0x02F105 0B:B0F5: 18        .byte $18, $28, $11   ; 59
- - - - - - 0x02F108 0B:B0F8: 16        .byte $16, $2A, $20   ; 5A
- - - - - - 0x02F10B 0B:B0FB: 18        .byte $18, $28, $16   ; 5B
- - - - - - 0x02F10E 0B:B0FE: 27        .byte $27, $2A, $20   ; 5C
- - - - - - 0x02F111 0B:B101: 14        .byte $14, $2A, $20   ; 5D
- - - - - - 0x02F114 0B:B104: 15        .byte $15, $27, $20   ; 5E
- - - - - - 0x02F117 0B:B107: 15        .byte $15, $10, $20   ; 5F
- - - - - - 0x02F11A 0B:B10A: 12        .byte $12, $15, $23   ; 60
- - - - - - 0x02F11D 0B:B10D: 13        .byte $13, $28, $20   ; 61
- - - - - - 0x02F120 0B:B110: 18        .byte $18, $28, $20   ; 62
- - - - - - 0x02F123 0B:B113: 18        .byte $18, $28, $16   ; 63
- D 1 - I - 0x02F126 0B:B116: 27        .byte $27, $13, $03   ; 64
- - - - - - 0x02F129 0B:B119: 18        .byte $18, $28, $14   ; 65
- D 1 - I - 0x02F12C 0B:B11C: 18        .byte $18, $28, $20   ; 66



.export tbl_0x02F1FA_original
tbl_0x02F1FA_original:
- D 1 - I - 0x02F1FA 0B:B1EA: 20        .byte $20, $20, $20   ; 00
- D 1 - I - 0x02F1FD 0B:B1ED: 16        .byte $16, $1A, $20   ; 01
- D 1 - I - 0x02F200 0B:B1F0: 00        .byte $00, $10, $20   ; 02
- D 1 - I - 0x02F203 0B:B1F3: 0C        .byte $0C, $1C, $21   ; 03
- D 1 - I - 0x02F206 0B:B1F6: 01        .byte $01, $11, $21   ; 04
- D 1 - I - 0x02F209 0B:B1F9: 03        .byte $03, $13, $23   ; 05
- D 1 - I - 0x02F20C 0B:B1FC: 0A        .byte $0A, $1A, $2A   ; 06
- D 1 - I - 0x02F20F 0B:B1FF: 04        .byte $04, $16, $37   ; 07
- D 1 - I - 0x02F212 0B:B202: 11        .byte $11, $21, $20   ; 08
- - - - - - 0x02F215 0B:B205: 06        .byte $06, $16, $27   ; 09
- - - - - - 0x02F218 0B:B208: 07        .byte $07, $15, $28   ; 0A
- - - - - - 0x02F21B 0B:B20B: 17        .byte $17, $27, $38   ; 0B
- - - - - - 0x02F21E 0B:B20E: 06        .byte $06, $16, $26   ; 0C
- D 1 - I - 0x02F221 0B:B211: 09        .byte $09, $2A, $11   ; 0D
- D 1 - I - 0x02F224 0B:B214: 0C        .byte $0C, $2C, $16   ; 0E
- D 1 - I - 0x02F227 0B:B217: 0B        .byte $0B, $2B, $27   ; 0F
- D 1 - I - 0x02F22A 0B:B21A: 08        .byte $08, $28, $14   ; 10
- D 1 - I - 0x02F22D 0B:B21D: 08        .byte $08, $27, $33   ; 11
- D 1 - I - 0x02F230 0B:B220: 08        .byte $08, $28, $20   ; 12
- D 1 - I - 0x02F233 0B:B223: 07        .byte $07, $16, $31   ; 13
- D 1 - I - 0x02F236 0B:B226: 18        .byte $18, $28, $37   ; 14
- - - - - - 0x02F239 0B:B229: 00        .byte $00, $00, $00   ; 15
- - - - - - 0x02F23C 0B:B22C: 05        .byte $05, $07, $10   ; 16
- D 1 - I - 0x02F23F 0B:B22F: 1B        .byte $1B, $21, $31   ; 17
- D 1 - I - 0x02F242 0B:B232: 01        .byte $01, $01, $01   ; 18
- D 1 - I - 0x02F245 0B:B235: 09        .byte $09, $1A, $11   ; 19
- D 1 - I - 0x02F248 0B:B238: 0A        .byte $0A, $1C, $15   ; 1A
- D 1 - I - 0x02F24B 0B:B23B: 0B        .byte $0B, $1B, $28   ; 1B
- D 1 - I - 0x02F24E 0B:B23E: 0A        .byte $0A, $19, $14   ; 1C
- D 1 - I - 0x02F251 0B:B241: 03        .byte $03, $27, $22   ; 1D
- D 1 - I - 0x02F254 0B:B244: 08        .byte $08, $27, $20   ; 1E
- D 1 - I - 0x02F257 0B:B247: 02        .byte $02, $22, $20   ; 1F
- D 1 - I - 0x02F25A 0B:B24A: 17        .byte $17, $28, $38   ; 20
- - - - - - 0x02F25D 0B:B24D: 00        .byte $00, $00, $00   ; 21
- - - - - - 0x02F260 0B:B250: 20        .byte $20, $38, $20   ; 22
- D 1 - I - 0x02F263 0B:B253: 0F        .byte $0F, $0F, $00   ; 23
- D 1 - I - 0x02F266 0B:B256: 16        .byte $16, $0F, $0F   ; 24
- D 1 - I - 0x02F269 0B:B259: 16        .byte $16, $20, $38   ; 25
- D 1 - I - 0x02F26C 0B:B25C: 16        .byte $16, $26, $02   ; 26
- D 1 - I - 0x02F26F 0B:B25F: 06        .byte $06, $16, $02   ; 27
- - - - - - 0x02F272 0B:B262: 0F        .byte $0F, $00, $10   ; 28
- - - - - - 0x02F275 0B:B265: 04        .byte $04, $14, $24   ; 29
- D 1 - I - 0x02F278 0B:B268: 1C        .byte $1C, $2C, $3C   ; 2A
- D 1 - I - 0x02F27B 0B:B26B: 07        .byte $07, $17, $27   ; 2B
- D 1 - I - 0x02F27E 0B:B26E: 11        .byte $11, $19, $29   ; 2C
- D 1 - I - 0x02F281 0B:B271: 01        .byte $01, $11, $20   ; 2D
- D 1 - I - 0x02F284 0B:B274: 05        .byte $05, $15, $20   ; 2E
- D 1 - I - 0x02F287 0B:B277: 18        .byte $18, $28, $20   ; 2F
- D 1 - I - 0x02F28A 0B:B27A: 03        .byte $03, $13, $20   ; 30
- D 1 - I - 0x02F28D 0B:B27D: 06        .byte $06, $16, $20   ; 31
- D 1 - I - 0x02F290 0B:B280: 12        .byte $12, $22, $32   ; 32
- D 1 - I - 0x02F293 0B:B283: 16        .byte $16, $26, $36   ; 33
- - - - - - 0x02F296 0B:B286: 13        .byte $13, $23, $33   ; 34
- D 1 - I - 0x02F299 0B:B289: 1A        .byte $1A, $2A, $23   ; 35
- D 1 - I - 0x02F29C 0B:B28C: 18        .byte $18, $28, $23   ; 36
- D 1 - I - 0x02F29F 0B:B28F: 10        .byte $10, $20, $23   ; 37
- D 1 - I - 0x02F2A2 0B:B292: 15        .byte $15, $25, $23   ; 38
- D 1 - I - 0x02F2A5 0B:B295: 14        .byte $14, $24, $23   ; 39
- D 1 - I - 0x02F2A8 0B:B298: 18        .byte $18, $28, $1A   ; 3A
- D 1 - I - 0x02F2AB 0B:B29B: 08        .byte $08, $24, $28   ; 3B
- - - - - - 0x02F2AE 0B:B29E: 08        .byte $08, $18, $28   ; 3C
- D 1 - I - 0x02F2B1 0B:B2A1: 14        .byte $14, $24, $23   ; 3D
- D 1 - I - 0x02F2B4 0B:B2A4: 18        .byte $18, $28, $27   ; 3E
- D 1 - I - 0x02F2B7 0B:B2A7: 0F        .byte $0F, $38, $37   ; 3F
- D 1 - I - 0x02F2BA 0B:B2AA: 16        .byte $16, $26, $20   ; 40
- D 1 - I - 0x02F2BD 0B:B2AD: 0C        .byte $0C, $1C, $2C   ; 41
- D 1 - I - 0x02F2C0 0B:B2B0: 20        .byte $20, $1A, $21   ; 42
- D 1 - I - 0x02F2C3 0B:B2B3: 1A        .byte $1A, $2A, $11   ; 43
- D 1 - I - 0x02F2C6 0B:B2B6: 1C        .byte $1C, $2C, $16   ; 44
- D 1 - I - 0x02F2C9 0B:B2B9: 1B        .byte $1B, $2B, $27   ; 45
- D 1 - I - 0x02F2CC 0B:B2BC: 18        .byte $18, $28, $14   ; 46
- D 1 - I - 0x02F2CF 0B:B2BF: 17        .byte $17, $27, $05   ; 47
- D 1 - I - 0x02F2D2 0B:B2C2: 18        .byte $18, $28, $20   ; 48
- D 1 - I - 0x02F2D5 0B:B2C5: 13        .byte $13, $23, $38   ; 49
- D 1 - I - 0x02F2D8 0B:B2C8: 17        .byte $17, $27, $16   ; 4A
- D 1 - I - 0x02F2DB 0B:B2CB: 00        .byte $00, $10, $38   ; 4B
- D 1 - I - 0x02F2DE 0B:B2CE: 16        .byte $16, $10, $20   ; 4C
- D 1 - I - 0x02F2E1 0B:B2D1: 1B        .byte $1B, $2B, $3B   ; 4D
- D 1 - I - 0x02F2E4 0B:B2D4: 17        .byte $17, $27, $37   ; 4E
- D 1 - I - 0x02F2E7 0B:B2D7: 13        .byte $13, $23, $20   ; 4F
- D 1 - I - 0x02F2EA 0B:B2DA: 23        .byte $23, $10, $20   ; 50
- D 1 - I - 0x02F2ED 0B:B2DD: 14        .byte $14, $24, $26   ; 51
- D 1 - I - 0x02F2F0 0B:B2E0: 13        .byte $13, $23, $26   ; 52
- D 1 - I - 0x02F2F3 0B:B2E3: 11        .byte $11, $21, $31   ; 53
- D 1 - I - 0x02F2F6 0B:B2E6: 05        .byte $05, $15, $25   ; 54
- D 1 - I - 0x02F2F9 0B:B2E9: 02        .byte $02, $12, $32   ; 55
- D 1 - I - 0x02F2FC 0B:B2EC: 18        .byte $18, $14, $20   ; 56
- D 1 - I - 0x02F2FF 0B:B2EF: 16        .byte $16, $26, $36   ; 57
- D 1 - I - 0x02F302 0B:B2F2: 11        .byte $11, $2A, $20   ; 58
- D 1 - I - 0x02F305 0B:B2F5: 17        .byte $17, $27, $11   ; 59
- D 1 - I - 0x02F308 0B:B2F8: 16        .byte $16, $2C, $20   ; 5A
- D 1 - I - 0x02F30B 0B:B2FB: 18        .byte $18, $28, $16   ; 5B
- D 1 - I - 0x02F30E 0B:B2FE: 27        .byte $27, $2B, $20   ; 5C
- D 1 - I - 0x02F311 0B:B301: 14        .byte $14, $28, $20   ; 5D
- D 1 - I - 0x02F314 0B:B304: 15        .byte $15, $27, $20   ; 5E
- D 1 - I - 0x02F317 0B:B307: 15        .byte $15, $10, $20   ; 5F
- D 1 - I - 0x02F31A 0B:B30A: 12        .byte $12, $15, $23   ; 60
- D 1 - I - 0x02F31D 0B:B30D: 13        .byte $13, $28, $20   ; 61
- D 1 - I - 0x02F320 0B:B310: 18        .byte $18, $28, $20   ; 62
- D 1 - I - 0x02F323 0B:B313: 18        .byte $18, $28, $16   ; 63
- D 1 - I - 0x02F326 0B:B316: 03        .byte $03, $13, $27   ; 64
- D 1 - I - 0x02F329 0B:B319: 17        .byte $17, $27, $14   ; 65
- D 1 - I - 0x02F32C 0B:B31C: 17        .byte $17, $27, $20   ; 66



.export tbl_0x02F3FA_green
tbl_0x02F3FA_green:
- D 1 - I - 0x02F3FA 0B:B3EA: 20        .byte $20, $20, $20   ; 00
- D 1 - I - 0x02F3FD 0B:B3ED: 16        .byte $16, $1A, $20   ; 01
- D 1 - I - 0x02F400 0B:B3F0: 00        .byte $00, $10, $20   ; 02
- D 1 - I - 0x02F403 0B:B3F3: 0C        .byte $0C, $1C, $21   ; 03
- D 1 - I - 0x02F406 0B:B3F6: 01        .byte $01, $11, $21   ; 04
- D 1 - I - 0x02F409 0B:B3F9: 03        .byte $03, $13, $23   ; 05
- D 1 - I - 0x02F40C 0B:B3FC: 0A        .byte $0A, $1A, $2A   ; 06
- D 1 - I - 0x02F40F 0B:B3FF: 04        .byte $04, $16, $37   ; 07
- D 1 - I - 0x02F412 0B:B402: 11        .byte $11, $21, $20   ; 08
- - - - - - 0x02F415 0B:B405: 06        .byte $06, $16, $27   ; 09
- - - - - - 0x02F418 0B:B408: 07        .byte $07, $15, $28   ; 0A
- - - - - - 0x02F41B 0B:B40B: 17        .byte $17, $27, $38   ; 0B
- - - - - - 0x02F41E 0B:B40E: 06        .byte $06, $16, $26   ; 0C
- D 1 - I - 0x02F421 0B:B411: 0B        .byte $0B, $2A, $12   ; 0D
- D 1 - I - 0x02F424 0B:B414: 0B        .byte $0B, $2A, $16   ; 0E
- D 1 - I - 0x02F427 0B:B417: 0B        .byte $0B, $2A, $27   ; 0F
- D 1 - I - 0x02F42A 0B:B41A: 0B        .byte $0B, $2A, $14   ; 10
- D 1 - I - 0x02F42D 0B:B41D: 08        .byte $08, $27, $33   ; 11
- D 1 - I - 0x02F430 0B:B420: 08        .byte $08, $28, $20   ; 12
- D 1 - I - 0x02F433 0B:B423: 07        .byte $07, $16, $31   ; 13
- D 1 - I - 0x02F436 0B:B426: 18        .byte $18, $28, $37   ; 14
- - - - - - 0x02F439 0B:B429: 00        .byte $00, $00, $00   ; 15
- - - - - - 0x02F43C 0B:B42C: 05        .byte $05, $07, $10   ; 16
- D 1 - I - 0x02F43F 0B:B42F: 1B        .byte $1B, $21, $31   ; 17
- D 1 - I - 0x02F442 0B:B432: 01        .byte $01, $01, $01   ; 18
- - - - - - 0x02F445 0B:B435: 0B        .byte $0B, $1A, $12   ; 19
- D 1 - I - 0x02F448 0B:B438: 0B        .byte $0B, $1A, $16   ; 1A
- - - - - - 0x02F44B 0B:B43B: 0B        .byte $0B, $1A, $27   ; 1B
- - - - - - 0x02F44E 0B:B43E: 0B        .byte $0B, $1A, $14   ; 1C
- D 1 - I - 0x02F451 0B:B441: 08        .byte $08, $27, $21   ; 1D
- - - - - - 0x02F454 0B:B444: 08        .byte $08, $27, $20   ; 1E
- D 1 - I - 0x02F457 0B:B447: 08        .byte $08, $22, $20   ; 1F
- D 1 - I - 0x02F45A 0B:B44A: 17        .byte $17, $28, $38   ; 20
- - - - - - 0x02F45D 0B:B44D: 00        .byte $00, $00, $00   ; 21
- - - - - - 0x02F460 0B:B450: 20        .byte $20, $38, $20   ; 22
- D 1 - I - 0x02F463 0B:B453: 0F        .byte $0F, $0F, $00   ; 23
- D 1 - I - 0x02F466 0B:B456: 16        .byte $16, $0F, $0F   ; 24
- D 1 - I - 0x02F469 0B:B459: 16        .byte $16, $20, $38   ; 25
- D 1 - I - 0x02F46C 0B:B45C: 16        .byte $16, $26, $02   ; 26
- D 1 - I - 0x02F46F 0B:B45F: 06        .byte $06, $16, $02   ; 27
- - - - - - 0x02F472 0B:B462: 0F        .byte $0F, $00, $10   ; 28
- - - - - - 0x02F475 0B:B465: 04        .byte $04, $14, $24   ; 29
- D 1 - I - 0x02F478 0B:B468: 1C        .byte $1C, $2C, $3C   ; 2A
- D 1 - I - 0x02F47B 0B:B46B: 07        .byte $07, $17, $27   ; 2B
- D 1 - I - 0x02F47E 0B:B46E: 11        .byte $11, $19, $29   ; 2C
- D 1 - I - 0x02F481 0B:B471: 01        .byte $01, $11, $20   ; 2D
- D 1 - I - 0x02F484 0B:B474: 05        .byte $05, $15, $20   ; 2E
- D 1 - I - 0x02F487 0B:B477: 18        .byte $18, $28, $20   ; 2F
- D 1 - I - 0x02F48A 0B:B47A: 03        .byte $03, $13, $20   ; 30
- D 1 - I - 0x02F48D 0B:B47D: 06        .byte $06, $16, $20   ; 31
- D 1 - I - 0x02F490 0B:B480: 12        .byte $12, $22, $32   ; 32
- D 1 - I - 0x02F493 0B:B483: 16        .byte $16, $26, $36   ; 33
- - - - - - 0x02F496 0B:B486: 13        .byte $13, $23, $33   ; 34
- D 1 - I - 0x02F499 0B:B489: 1A        .byte $1A, $2A, $23   ; 35
- D 1 - I - 0x02F49C 0B:B48C: 18        .byte $18, $28, $23   ; 36
- D 1 - I - 0x02F49F 0B:B48F: 10        .byte $10, $20, $23   ; 37
- D 1 - I - 0x02F4A2 0B:B492: 15        .byte $15, $25, $23   ; 38
- D 1 - I - 0x02F4A5 0B:B495: 14        .byte $14, $24, $23   ; 39
- D 1 - I - 0x02F4A8 0B:B498: 18        .byte $18, $28, $1A   ; 3A
- D 1 - I - 0x02F4AB 0B:B49B: 08        .byte $08, $24, $28   ; 3B
- - - - - - 0x02F4AE 0B:B49E: 08        .byte $08, $18, $28   ; 3C
- D 1 - I - 0x02F4B1 0B:B4A1: 14        .byte $14, $24, $23   ; 3D
- D 1 - I - 0x02F4B4 0B:B4A4: 18        .byte $18, $28, $27   ; 3E
- D 1 - I - 0x02F4B7 0B:B4A7: 0F        .byte $0F, $38, $37   ; 3F
- D 1 - I - 0x02F4BA 0B:B4AA: 16        .byte $16, $26, $20   ; 40
- D 1 - I - 0x02F4BD 0B:B4AD: 0C        .byte $0C, $1C, $2C   ; 41
- D 1 - I - 0x02F4C0 0B:B4B0: 20        .byte $20, $1A, $21   ; 42
- D 1 - I - 0x02F4C3 0B:B4B3: 1A        .byte $1A, $2A, $11   ; 43
- D 1 - I - 0x02F4C6 0B:B4B6: 1A        .byte $1A, $2A, $16   ; 44
- D 1 - I - 0x02F4C9 0B:B4B9: 1A        .byte $1A, $2A, $27   ; 45
- D 1 - I - 0x02F4CC 0B:B4BC: 1A        .byte $1A, $2A, $14   ; 46
- D 1 - I - 0x02F4CF 0B:B4BF: 17        .byte $17, $27, $05   ; 47
- D 1 - I - 0x02F4D2 0B:B4C2: 18        .byte $18, $28, $20   ; 48
- D 1 - I - 0x02F4D5 0B:B4C5: 13        .byte $13, $23, $38   ; 49
- D 1 - I - 0x02F4D8 0B:B4C8: 17        .byte $17, $27, $16   ; 4A
- D 1 - I - 0x02F4DB 0B:B4CB: 00        .byte $00, $10, $38   ; 4B
- D 1 - I - 0x02F4DE 0B:B4CE: 16        .byte $16, $10, $20   ; 4C
- D 1 - I - 0x02F4E1 0B:B4D1: 1B        .byte $1B, $2B, $3B   ; 4D
- D 1 - I - 0x02F4E4 0B:B4D4: 17        .byte $17, $27, $37   ; 4E
- D 1 - I - 0x02F4E7 0B:B4D7: 13        .byte $13, $23, $20   ; 4F
- D 1 - I - 0x02F4EA 0B:B4DA: 23        .byte $23, $10, $20   ; 50
- D 1 - I - 0x02F4ED 0B:B4DD: 14        .byte $14, $24, $26   ; 51
- D 1 - I - 0x02F4F0 0B:B4E0: 13        .byte $13, $23, $26   ; 52
- D 1 - I - 0x02F4F3 0B:B4E3: 11        .byte $11, $21, $31   ; 53
- D 1 - I - 0x02F4F6 0B:B4E6: 05        .byte $05, $15, $25   ; 54
- D 1 - I - 0x02F4F9 0B:B4E9: 02        .byte $02, $12, $32   ; 55
- D 1 - I - 0x02F4FC 0B:B4EC: 18        .byte $18, $14, $20   ; 56
- D 1 - I - 0x02F4FF 0B:B4EF: 16        .byte $16, $26, $36   ; 57
- D 1 - I - 0x02F502 0B:B4F2: 11        .byte $11, $2A, $20   ; 58
- D 1 - I - 0x02F505 0B:B4F5: 18        .byte $18, $28, $11   ; 59
- D 1 - I - 0x02F508 0B:B4F8: 16        .byte $16, $2A, $20   ; 5A
- D 1 - I - 0x02F50B 0B:B4FB: 18        .byte $18, $28, $16   ; 5B
- D 1 - I - 0x02F50E 0B:B4FE: 27        .byte $27, $2A, $20   ; 5C
- D 1 - I - 0x02F511 0B:B501: 14        .byte $14, $2A, $20   ; 5D
- D 1 - I - 0x02F514 0B:B504: 15        .byte $15, $27, $20   ; 5E
- D 1 - I - 0x02F517 0B:B507: 15        .byte $15, $10, $20   ; 5F
- D 1 - I - 0x02F51A 0B:B50A: 12        .byte $12, $15, $23   ; 60
- D 1 - I - 0x02F51D 0B:B50D: 13        .byte $13, $28, $20   ; 61
- D 1 - I - 0x02F520 0B:B510: 18        .byte $18, $28, $20   ; 62
- D 1 - I - 0x02F523 0B:B513: 18        .byte $18, $28, $16   ; 63
- D 1 - I - 0x02F526 0B:B516: 03        .byte $03, $13, $27   ; 64
- D 1 - I - 0x02F529 0B:B519: 18        .byte $18, $28, $14   ; 65
- D 1 - I - 0x02F52C 0B:B51C: 18        .byte $18, $28, $20   ; 66



.export sub_0x02FD10
sub_0x02FD10:
C - - - - - 0x02FD10 0B:BD00: A5 2C     LDA ram_002C
C - - - - - 0x02FD12 0B:BD02: 4A        LSR
C - - - - - 0x02FD13 0B:BD03: F0 03     BEQ bra_BD08
C - - - - - 0x02FD15 0B:BD05: 4C A0 BE  JMP loc_BEA0
bra_BD08:
C - - - - - 0x02FD18 0B:BD08: A4 00     LDY ram_0000
C - - - - - 0x02FD1A 0B:BD0A: B9 29 01  LDA ram_option_unknown,Y
C - - - - - 0x02FD1D 0B:BD0D: 29 F0     AND #$F0
C - - - - - 0x02FD1F 0B:BD0F: 4A        LSR
C - - - - - 0x02FD20 0B:BD10: 4A        LSR
C - - - - - 0x02FD21 0B:BD11: 4A        LSR
C - - - - - 0x02FD22 0B:BD12: 4A        LSR
C - - - - - 0x02FD23 0B:BD13: 18        CLC
C - - - - - 0x02FD24 0B:BD14: 69 81     ADC #$81
C - - - - - 0x02FD26 0B:BD16: 20 66 D2  JSR sub_0x03D276
C - - - - - 0x02FD29 0B:BD19: B9 29 01  LDA ram_option_unknown,Y
C - - - - - 0x02FD2C 0B:BD1C: 29 0F     AND #$0F
C - - - - - 0x02FD2E 0B:BD1E: 18        CLC
C - - - - - 0x02FD2F 0B:BD1F: 69 81     ADC #$81
C - - - - - 0x02FD31 0B:BD21: 20 5F D2  JSR sub_0x03D26F
C - - - - - 0x02FD34 0B:BD24: 98        TYA
C - - - - - 0x02FD35 0B:BD25: 49 01     EOR #$01
C - - - - - 0x02FD37 0B:BD27: AA        TAX
C - - - - - 0x02FD38 0B:BD28: B9 29 01  LDA ram_option_unknown,Y
C - - - - - 0x02FD3B 0B:BD2B: A0 75     LDY #$75
C - - - - - 0x02FD3D 0B:BD2D: DD 29 01  CMP ram_option_unknown,X
C - - - - - 0x02FD40 0B:BD30: 4C BC BE  JMP loc_BEBC



tbl_BD74:
- D 1 - - - 0x02FD84 0B:BD74: 00        .byte $00   ; 00
- D 1 - - - 0x02FD85 0B:BD75: 00        .byte $00   ; 01
- D 1 - - - 0x02FD86 0B:BD76: 80        .byte $80   ; 02

tbl_BD77:
- D 1 - - - 0x02FD87 0B:BD77: 01        .byte $01   ; 00
- D 1 - - - 0x02FD88 0B:BD78: 81        .byte $81   ; 01
- D 1 - - - 0x02FD89 0B:BD79: 81        .byte $81   ; 02

tbl_BD7A:
- D 1 - - - 0x02FD8A 0B:BD7A: 16        .byte $16   ; 00
- D 1 - - - 0x02FD8B 0B:BD7B: 16        .byte $16   ; 01
- D 1 - - - 0x02FD8C 0B:BD7C: 59        .byte $59   ; 02

tbl_BD7D:
- D 1 - - - 0x02FD8D 0B:BD7D: 17        .byte $17   ; 00
- D 1 - - - 0x02FD8E 0B:BD7E: 1A        .byte $1A   ; 01
- D 1 - - - 0x02FD8F 0B:BD7F: 1A        .byte $1A   ; 02



loc_BD80:
C D 1 - - - 0x02FD90 0B:BD80: C9 03     CMP #$03
C - - - - - 0x02FD92 0B:BD82: D0 70     BNE bra_BDF4
C - - - - - 0x02FD94 0B:BD84: AD 4E 01  LDA ram_014E
C - - - - - 0x02FD97 0B:BD87: F0 06     BEQ bra_BD8F
C - - - - - 0x02FD99 0B:BD89: AD 41 01  LDA ram_0141
C - - - - - 0x02FD9C 0B:BD8C: D0 15     BNE bra_BDA3
C - - - - - 0x02FD9E 0B:BD8E: CA        DEX
bra_BD8F:
C - - - - - 0x02FD9F 0B:BD8F: BD 30 05  LDA ram_0530,X
C - - - - - 0x02FDA2 0B:BD92: F0 0C     BEQ bra_BDA0
C - - - - - 0x02FDA4 0B:BD94: 4A        LSR
C - - - - - 0x02FDA5 0B:BD95: F0 55     BEQ bra_BDEC
C - - - - - 0x02FDA7 0B:BD97: B5 8E     LDA ram_btn_press,X
C - - - - - 0x02FDA9 0B:BD99: 49 40     EOR #con_btn_B
C - - - - - 0x02FDAB 0B:BD9B: D0 03     BNE bra_BDA0
C - - - - - 0x02FDAD 0B:BD9D: 9D 30 05  STA ram_0530,X
bra_BDA0:
C - - - - - 0x02FDB0 0B:BDA0: CA        DEX
C - - - - - 0x02FDB1 0B:BDA1: 10 EC     BPL bra_BD8F
bra_BDA3:
C - - - - - 0x02FDB3 0B:BDA3: AC 30 05  LDY ram_0530
C - - - - - 0x02FDB6 0B:BDA6: C0 04     CPY #$04
C - - - - - 0x02FDB8 0B:BDA8: B0 42     BCS bra_BDEC
C - - - - - 0x02FDBA 0B:BDAA: 88        DEY
C - - - - - 0x02FDBB 0B:BDAB: F0 3F     BEQ bra_BDEC
C - - - - - 0x02FDBD 0B:BDAD: A5 8E     LDA ram_btn_press
C - - - - - 0x02FDBF 0B:BDAF: 29 20     AND #con_btn_Select
C - - - - - 0x02FDC1 0B:BDB1: F0 39     BEQ bra_BDEC
C - - - - - 0x02FDC3 0B:BDB3: A9 01     LDA #$01
C - - - - - 0x02FDC5 0B:BDB5: 6D 4E 01  ADC ram_014E
C - - - - - 0x02FDC8 0B:BDB8: C9 03     CMP #$03
C - - - - - 0x02FDCA 0B:BDBA: 90 09     BCC bra_BDC5
C - - - - - 0x02FDCC 0B:BDBC: C0 02     CPY #$02
C - - - - - 0x02FDCE 0B:BDBE: D0 03     BNE bra_BDC3
C - - - - - 0x02FDD0 0B:BDC0: CE 30 05  DEC ram_0530
bra_BDC3:
C - - - - - 0x02FDD3 0B:BDC3: A9 00     LDA #$00
bra_BDC5:
C - - - - - 0x02FDD5 0B:BDC5: 8D 4E 01  STA ram_014E
C - - - - - 0x02FDD8 0B:BDC8: A8        TAY
C - - - - - 0x02FDD9 0B:BDC9: 4A        LSR
C - - - - - 0x02FDDA 0B:BDCA: 90 03     BCC bra_BDCF
C - - - - - 0x02FDDC 0B:BDCC: 8D 31 05  STA ram_0531
bra_BDCF:
C - - - - - 0x02FDDF 0B:BDCF: B9 74 BD  LDA tbl_BD74,Y
C - - - - - 0x02FDE2 0B:BDD2: 8D 55 01  STA ram_0155
C - - - - - 0x02FDE5 0B:BDD5: B9 77 BD  LDA tbl_BD77,Y
C - - - - - 0x02FDE8 0B:BDD8: 8D 56 01  STA ram_0156
C - - - - - 0x02FDEB 0B:BDDB: B9 7A BD  LDA tbl_BD7A,Y
C - - - - - 0x02FDEE 0B:BDDE: 8D 00 04  STA ram_anim_object
C - - - - - 0x02FDF1 0B:BDE1: B9 7D BD  LDA tbl_BD7D,Y
C - - - - - 0x02FDF4 0B:BDE4: 8D 01 04  STA ram_anim_object + 1
C - - - - - 0x02FDF7 0B:BDE7: A9 27     LDA #$27
C - - - - - 0x02FDF9 0B:BDE9: 20 90 F6  JSR sub_0x03F6A0
bra_BDEC:
C - - - - - 0x02FDFC 0B:BDEC: AD 4E 01  LDA ram_014E
C - - - - - 0x02FDFF 0B:BDEF: F0 03     BEQ bra_BDF4
C - - - - - 0x02FE01 0B:BDF1: 4C 84 81  JMP loc_8184
bra_BDF4:
C - - - - - 0x02FE04 0B:BDF4: AD E0 04  LDA ram_04E0
C - - - - - 0x02FE07 0B:BDF7: 4C 64 81  JMP loc_8164



loc_BE48:
C D 1 - - - 0x02FE58 0B:BE48: A5 2C     LDA ram_002C
C - - - - - 0x02FE5A 0B:BE4A: C9 03     CMP #$03
C - - - - - 0x02FE5C 0B:BE4C: D0 2A     BNE bra_BE78
C - - - - - 0x02FE5E 0B:BE4E: 98        TYA
C - - - - - 0x02FE5F 0B:BE4F: 29 10     AND #con_btn_Start
C - - - - - 0x02FE61 0B:BE51: F0 03     BEQ bra_BE56
C - - - - - 0x02FE63 0B:BE53: DE 42 01  DEC ram_0142,X
bra_BE56:
C - - - - - 0x02FE66 0B:BE56: 98        TYA
C - - - - - 0x02FE67 0B:BE57: 29 40     AND #con_btn_B
C - - - - - 0x02FE69 0B:BE59: D0 20     BNE bra_BE7B
C - - - - - 0x02FE6B 0B:BE5B: BD 40 01  LDA ram_0140,X
C - - - - - 0x02FE6E 0B:BE5E: C9 07     CMP #$07
C - - - - - 0x02FE70 0B:BE60: 90 03     BCC bra_BE65
- - - - - - 0x02FE72 0B:BE62: DE 40 01  DEC ram_0140,X
bra_BE65:
C - - - - - 0x02FE75 0B:BE65: 8A        TXA
C - - - - - 0x02FE76 0B:BE66: 0A        ASL
C - - - - - 0x02FE77 0B:BE67: 0A        ASL
C - - - - - 0x02FE78 0B:BE68: 0A        ASL
C - - - - - 0x02FE79 0B:BE69: 7D 40 01  ADC ram_0140,X
C - - - - - 0x02FE7C 0B:BE6C: A8        TAY
C - - - - - 0x02FE7D 0B:BE6D: FE 40 01  INC ram_0140,X
C - - - - - 0x02FE80 0B:BE70: DE 44 01  DEC ram_0144,X
C - - - - - 0x02FE83 0B:BE73: B5 A2     LDA ram_option_fighter,X
C - - - - - 0x02FE85 0B:BE75: 99 30 01  STA ram_name_letter_1,Y
bra_BE78:
C - - - - - 0x02FE88 0B:BE78: 4C 6F 82  JMP loc_826F
bra_BE7B:
C - - - - - 0x02FE8B 0B:BE7B: BD 40 01  LDA ram_0140,X
C - - - - - 0x02FE8E 0B:BE7E: F0 0A     BEQ bra_BE8A_RTS
C - - - - - 0x02FE90 0B:BE80: A9 FE     LDA #$FE
C - - - - - 0x02FE92 0B:BE82: 9D 44 01  STA ram_0144,X
C - - - - - 0x02FE95 0B:BE85: A9 0A     LDA #$0A
C - - - - - 0x02FE97 0B:BE87: 4C 90 F6  JMP loc_0x03F6A0
bra_BE8A_RTS:
C - - - - - 0x02FE9A 0B:BE8A: 60        RTS



loc_BEA0:
C D 1 - - - 0x02FEB0 0B:BEA0: A9 81     LDA #$81
C - - - - - 0x02FEB2 0B:BEA2: 20 66 D2  JSR sub_0x03D276
C - - - - - 0x02FEB5 0B:BEA5: A4 00     LDY ram_0000
C - - - - - 0x02FEB7 0B:BEA7: B9 42 01  LDA ram_0142,Y
C - - - - - 0x02FEBA 0B:BEAA: 18        CLC
C - - - - - 0x02FEBB 0B:BEAB: 69 81     ADC #$81
C - - - - - 0x02FEBD 0B:BEAD: 20 5F D2  JSR sub_0x03D26F
C - - - - - 0x02FEC0 0B:BEB0: 98        TYA
C - - - - - 0x02FEC1 0B:BEB1: 49 01     EOR #$01
C - - - - - 0x02FEC3 0B:BEB3: AA        TAX
C - - - - - 0x02FEC4 0B:BEB4: B9 42 01  LDA ram_0142,Y
C - - - - - 0x02FEC7 0B:BEB7: A0 75     LDY #$75
C - - - - - 0x02FEC9 0B:BEB9: DD 42 01  CMP ram_0142,X
loc_BEBC:
C D 1 - - - 0x02FECC 0B:BEBC: F0 04     BEQ bra_BEC2
C - - - - - 0x02FECE 0B:BEBE: B0 01     BCS bra_BEC1
C - - - - - 0x02FED0 0B:BEC0: C8        INY
bra_BEC1:
C - - - - - 0x02FED1 0B:BEC1: C8        INY
bra_BEC2:
C - - - - - 0x02FED2 0B:BEC2: 98        TYA
C - - - - - 0x02FED3 0B:BEC3: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x02FED6 0B:BEC6: 4C 17 F6  JMP loc_0x03F627_restore_prg_bank



.export sub_0x02FEF0
sub_0x02FEF0:
C - - - - - 0x02FEF0 0B:BEE0: A9 00     LDA #$00
C - - - - - 0x02FEF2 0B:BEE2: 85 A2     STA ram_option_fighter
C - - - - - 0x02FEF4 0B:BEE4: A0 01     LDY #$01
C - - - - - 0x02FEF6 0B:BEE6: 84 A3     STY ram_option_fighter + 1
C - - - - - 0x02FEF8 0B:BEE8: 84 98     STY ram_0098
C - - - - - 0x02FEFA 0B:BEEA: A4 2C     LDY ram_002C
C - - - - - 0x02FEFC 0B:BEEC: C0 04     CPY #$04
C - - - - - 0x02FEFE 0B:BEEE: F0 14     BEQ bra_BF04
C - - - - - 0x02FF00 0B:BEF0: A2 2D     LDX #$2D
bra_BEF2:
C - - - - - 0x02FF02 0B:BEF2: 9D 30 01  STA ram_name_letter_1,X
C - - - - - 0x02FF05 0B:BEF5: CA        DEX
C - - - - - 0x02FF06 0B:BEF6: 10 FA     BPL bra_BEF2
C - - - - - 0x02FF08 0B:BEF8: C0 03     CPY #$03
C - - - - - 0x02FF0A 0B:BEFA: D0 0D     BNE bra_BF09
C - - - - - 0x02FF0C 0B:BEFC: A9 01     LDA #$01
C - - - - - 0x02FF0E 0B:BEFE: 8D 06 01  STA ram_0106
C - - - - - 0x02FF11 0B:BF01: 8D 56 01  STA ram_0156
bra_BF04:
C - - - - - 0x02FF14 0B:BF04: A9 FF     LDA #$FF
C - - - - - 0x02FF16 0B:BF06: 8D 5C 01  STA ram_015C
bra_BF09:
C - - - - - 0x02FF19 0B:BF09: A2 80     LDX #$80
C - - - - - 0x02FF1B 0B:BF0B: A5 26     LDA ram_0026
C - - - - - 0x02FF1D 0B:BF0D: F0 03     BEQ bra_BF12
C - - - - - 0x02FF1F 0B:BF0F: 8E 55 01  STX ram_0155
bra_BF12:
C - - - - - 0x02FF22 0B:BF12: 98        TYA
C - - - - - 0x02FF23 0B:BF13: F0 04     BEQ bra_BF19
C - - - - - 0x02FF25 0B:BF15: C0 02     CPY #$02
C - - - - - 0x02FF27 0B:BF17: D0 03     BNE bra_BF1C_RTS
bra_BF19:
C - - - - - 0x02FF29 0B:BF19: 8E 56 01  STX ram_0156
bra_BF1C_RTS:
C - - - - - 0x02FF2C 0B:BF1C: 60        RTS



loc_BF2C:
C D 1 - - - 0x02FF3C 0B:BF2C: A4 2C     LDY ram_002C
C - - - - - 0x02FF3E 0B:BF2E: C0 03     CPY #$03
C - - - - - 0x02FF40 0B:BF30: D0 0D     BNE bra_BF3F
C - - - - - 0x02FF42 0B:BF32: 8A        TXA
C - - - - - 0x02FF43 0B:BF33: F0 02     BEQ bra_BF37
C - - - - - 0x02FF45 0B:BF35: A9 03     LDA #$03
bra_BF37:
C - - - - - 0x02FF47 0B:BF37: 18        CLC
C - - - - - 0x02FF48 0B:BF38: 6D 4E 01  ADC ram_014E
C - - - - - 0x02FF4B 0B:BF3B: A8        TAY
C - - - - - 0x02FF4C 0B:BF3C: B9 7A BD  LDA tbl_BD7A,Y
bra_BF3F:
C - - - - - 0x02FF4F 0B:BF3F: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x02FF52 0B:BF42: 60        RTS



sub_BF4C:
C - - - - - 0x02FF5C 0B:BF4C: A5 2C     LDA ram_002C
C - - - - - 0x02FF5E 0B:BF4E: C9 03     CMP #$03
C - - - - - 0x02FF60 0B:BF50: D0 13     BNE bra_BF65
C - - - - - 0x02FF62 0B:BF52: BD 42 01  LDA ram_0142,X
C - - - - - 0x02FF65 0B:BF55: D0 0B     BNE bra_BF62
C - - - - - 0x02FF67 0B:BF57: BD 40 01  LDA ram_0140,X
C - - - - - 0x02FF6A 0B:BF5A: C9 07     CMP #$07
C - - - - - 0x02FF6C 0B:BF5C: B0 07     BCS bra_BF65
C - - - - - 0x02FF6E 0B:BF5E: DE 30 05  DEC ram_0530,X
C - - - - - 0x02FF71 0B:BF61: 60        RTS
bra_BF62:
C - - - - - 0x02FF72 0B:BF62: FE 42 01  INC ram_0142,X
bra_BF65:
C - - - - - 0x02FF75 0B:BF65: FE 30 05  INC ram_0530,X
C - - - - - 0x02FF78 0B:BF68: 60        RTS



.export loc_0x02FF80
loc_0x02FF80:
C D 1 - - - 0x02FF80 0B:BF70: CA        DEX
C - - - - - 0x02FF81 0B:BF71: F0 06     BEQ bra_BF79
C - - - - - 0x02FF83 0B:BF73: AE 54 01  LDX ram_0154
C - - - - - 0x02FF86 0B:BF76: 4C 1D E6  JMP loc_0x03E62D
bra_BF79:
C - - - - - 0x02FF89 0B:BF79: A5 08     LDA ram_0008
C - - - - - 0x02FF8B 0B:BF7B: AA        TAX
C - - - - - 0x02FF8C 0B:BF7C: 49 01     EOR #$01
C - - - - - 0x02FF8E 0B:BF7E: A8        TAY
C - - - - - 0x02FF8F 0B:BF7F: FE 42 01  INC ram_0142,X
C - - - - - 0x02FF92 0B:BF82: BD 42 01  LDA ram_0142,X
C - - - - - 0x02FF95 0B:BF85: D9 40 01  CMP ram_0140,Y
C - - - - - 0x02FF98 0B:BF88: B0 03     BCS bra_BF8D
C - - - - - 0x02FF9A 0B:BF8A: 4C 6C E6  JMP loc_0x03E67C
bra_BF8D:
C - - - - - 0x02FF9D 0B:BF8D: AD 40 01  LDA ram_0140
C - - - - - 0x02FFA0 0B:BF90: 0D 41 01  ORA ram_0141
C - - - - - 0x02FFA3 0B:BF93: 49 01     EOR #$01
C - - - - - 0x02FFA5 0B:BF95: D0 0D     BNE bra_BFA4
C - - - - - 0x02FFA7 0B:BF97: A9 00     LDA #$00
C - - - - - 0x02FFA9 0B:BF99: A2 1D     LDX #$1D
bra_BF9B:
C - - - - - 0x02FFAB 0B:BF9B: 9D 30 01  STA ram_name_letter_1,X
C - - - - - 0x02FFAE 0B:BF9E: CA        DEX
C - - - - - 0x02FFAF 0B:BF9F: 10 FA     BPL bra_BF9B
C - - - - - 0x02FFB1 0B:BFA1: 4C 0C E6  JMP loc_0x03E61C
bra_BFA4:
C - - - - - 0x02FFB4 0B:BFA4: 8E 71 06  STX ram_0671
C - - - - - 0x02FFB7 0B:BFA7: 4C 8A E6  JMP loc_0x03E69A



.export loc_0x02FFC4
loc_0x02FFC4:
C D 1 - - - 0x02FFC4 0B:BFB4: A8        TAY
C - - - - - 0x02FFC5 0B:BFB5: B9 EA BF  LDA tbl_BFEA,Y
C - - - - - 0x02FFC8 0B:BFB8: CD 5C 01  CMP ram_015C
C - - - - - 0x02FFCB 0B:BFBB: D0 02     BNE bra_BFBF
C - - - - - 0x02FFCD 0B:BFBD: 49 01     EOR #$01
bra_BFBF:
C - - - - - 0x02FFCF 0B:BFBF: 85 9E     STA ram_009E
C - - - - - 0x02FFD1 0B:BFC1: E0 04     CPX #$04
C - - - - - 0x02FFD3 0B:BFC3: D0 03     BNE bra_BFC8
C - - - - - 0x02FFD5 0B:BFC5: 4C 19 E2  JMP loc_0x03E229
bra_BFC8:
C - - - - - 0x02FFD8 0B:BFC8: AC 43 01  LDY ram_0143
C - - - - - 0x02FFDB 0B:BFCB: B9 30 01  LDA ram_name_letter_1,Y
C - - - - - 0x02FFDE 0B:BFCE: 85 A2     STA ram_option_fighter
C - - - - - 0x02FFE0 0B:BFD0: AC 42 01  LDY ram_0142
C - - - - - 0x02FFE3 0B:BFD3: B9 38 01  LDA ram_0138,Y
C - - - - - 0x02FFE6 0B:BFD6: 85 A3     STA ram_option_fighter + 1
C - - - - - 0x02FFE8 0B:BFD8: 4C 46 E2  JMP loc_0x03E256



tbl_BFEA:
- D 1 - - - 0x02FFFA 0B:BFEA: 00        .byte $00   ; 
- D 1 - - - 0x02FFFB 0B:BFEB: 06        .byte $06   ; 
- D 1 - - - 0x02FFFC 0B:BFEC: 04        .byte $04   ; 
- D 1 - - - 0x02FFFD 0B:BFED: 07        .byte $07   ; 
- D 1 - - - 0x02FFFE 0B:BFEE: 00        .byte $00   ; 
- D 1 - - - 0x02FFFF 0B:BFEF: 07        .byte $07   ; 
- D 1 - - - 0x030000 0B:BFF0: 01        .byte $01   ; 
- D 1 - - - 0x030001 0B:BFF1: 06        .byte $06   ; 
- D 1 - - - 0x030002 0B:BFF2: 01        .byte $01   ; 
- D 1 - - - 0x030003 0B:BFF3: 04        .byte $04   ; 
- D 1 - - - 0x030004 0B:BFF4: 06        .byte $06   ; 
- D 1 - - - 0x030005 0B:BFF5: 00        .byte $00   ; 
- D 1 - - - 0x030006 0B:BFF6: 04        .byte $04   ; 
- D 1 - - - 0x030007 0B:BFF7: 01        .byte $01   ; 
- D 1 - - - 0x030008 0B:BFF8: 07        .byte $07   ; 
- D 1 - - - 0x030009 0B:BFF9: 06        .byte $06   ; 



tbl_BFFA:
- D 1 - - - 0x03000A 0B:BFFA: 10        .byte $10   ; 00
- D 1 - - - 0x03000B 0B:BFFB: 10        .byte $10   ; 01
- D 1 - - - 0x03000C 0B:BFFC: 10        .byte $10   ; 02
- D 1 - - - 0x03000D 0B:BFFD: 3C        .byte $3C   ; 03



tbl_BFFE:
- D 1 - - - 0x03000E 0B:BFFE: 28        .byte $28   ; 00
- D 1 - - - 0x03000F 0B:BFFF: 17        .byte $17   ; 01



