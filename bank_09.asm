.segment "BANK_09"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x024010-0x02800F

    .byte con_bank_id + $09 * 2   ; (!) байт должен находиться по адресу 8000, чтение из 0x03F67D



.export sub_0x024014
sub_0x024014:
C - - - - - 0x024014 09:8004: 20 3B FF  JSR sub_0x03FF4B
.export loc_0x024018
loc_0x024018:
C D 0 - - - 0x024018 09:8008: A6 AD     LDX ram_00AD
C - - - - - 0x02401A 09:800A: 86 A8     STX ram_00A8
C - - - - - 0x02401C 09:800C: 8A        TXA
C - - - - - 0x02401D 09:800D: 49 01     EOR #$01
C - - - - - 0x02401F 09:800F: 85 A9     STA ram_object_index
C - - - - - 0x024021 09:8011: B5 91     LDA ram_btn_hold,X
C - - - - - 0x024023 09:8013: 29 03     AND #con_btns_LR
C - - - - - 0x024025 09:8015: A8        TAY
C - - - - - 0x024026 09:8016: B9 B0 99  LDA tbl_99B0,Y
C - - - - - 0x024029 09:8019: 9D 1C 06  STA ram_061C,X
C - - - - - 0x02402C 09:801C: 20 D9 99  JSR sub_99D9
C - - - - - 0x02402F 09:801F: 20 96 BA  JSR sub_BA96
C - - - - - 0x024032 09:8022: BD 2A 06  LDA ram_knockout_cooldown,X
C - - - - - 0x024035 09:8025: F0 0A     BEQ bra_8031
C - - - - - 0x024037 09:8027: DE 2A 06  DEC ram_knockout_cooldown,X
C - - - - - 0x02403A 09:802A: D0 05     BNE bra_8031
C - - - - - 0x02403C 09:802C: A9 00     LDA #$00
C - - - - - 0x02403E 09:802E: 9D 2C 06  STA ram_knockout_hits,X
bra_8031:
C - - - - - 0x024041 09:8031: BD 45 06  LDA ram_0645,X
C - - - - - 0x024044 09:8034: F0 0B     BEQ bra_8041
C - - - - - 0x024046 09:8036: DE 45 06  DEC ram_0645,X
C - - - - - 0x024049 09:8039: BD 90 05  LDA ram_hp_lo,X
C - - - - - 0x02404C 09:803C: F0 03     BEQ bra_8041
C - - - - - 0x02404E 09:803E: 20 66 FE  JSR sub_0x03FE76
bra_8041:
C - - - - - 0x024051 09:8041: BD F0 05  LDA ram_05F0,X
C - - - - - 0x024054 09:8044: F0 03     BEQ bra_8049
C - - - - - 0x024056 09:8046: DE F0 05  DEC ram_05F0,X
bra_8049:
C - - - - - 0x024059 09:8049: 20 6C 80  JSR sub_806C
C - - - - - 0x02405C 09:804C: BD 20 05  LDA ram_0520,X
C - - - - - 0x02405F 09:804F: C9 03     CMP #$03
C - - - - - 0x024061 09:8051: D0 0E     BNE bra_8061
C - - - - - 0x024063 09:8053: BD C0 04  LDA ram_04C0,X
C - - - - - 0x024066 09:8056: C9 07     CMP #$07
C - - - - - 0x024068 09:8058: D0 07     BNE bra_8061
C - - - - - 0x02406A 09:805A: A5 22     LDA ram_frame_counter
C - - - - - 0x02406C 09:805C: 29 03     AND #$03
C - - - - - 0x02406E 09:805E: 4C 62 80  JMP loc_8062
bra_8061:
C - - - - - 0x024071 09:8061: 8A        TXA
loc_8062:
C D 0 - - - 0x024072 09:8062: 09 80     ORA #$80
C - - - - - 0x024074 09:8064: 9D 00 05  STA ram_0500,X
C - - - - - 0x024077 09:8067: 4C 28 FF  JMP loc_0x03FF38



sub_806C:
C - - - - - 0x02407C 09:806C: 20 7A FE  JSR sub_0x03FE8A
C - - - - - 0x02407F 09:806F: DD 47 06  CMP ram_0647,X
C - - - - - 0x024082 09:8072: F0 0C     BEQ bra_8080
C - - - - - 0x024084 09:8074: 9D 47 06  STA ram_0647,X
C - - - - - 0x024087 09:8077: A5 95     LDA ram_0095
C - - - - - 0x024089 09:8079: C9 10     CMP #$10
C - - - - - 0x02408B 09:807B: B0 03     BCS bra_8080
C - - - - - 0x02408D 09:807D: 20 32 EA  JSR sub_0x03EA42
bra_8080:
C - - - - - 0x024090 09:8080: BD 30 05  LDA ram_0530,X
C - - - - - 0x024093 09:8083: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x024096 09:8086: 90 80     .word ofs_8090_00
- D 0 - I - 0x024098 09:8088: D0 80     .word ofs_80D0_01
- D 0 - I - 0x02409A 09:808A: 56 81     .word ofs_8156_02
- D 0 - I - 0x02409C 09:808C: 82 81     .word ofs_8182_03
- D 0 - I - 0x02409E 09:808E: 81 89     .word ofs_8981_04



ofs_8090_00:
C - - J - - 0x0240A0 09:8090: BD 69 E4  LDA tbl_0x03E479,X
C - - - - - 0x0240A3 09:8093: 9D 40 04  STA ram_X_pos_hi_object,X
C - - - - - 0x0240A6 09:8096: A9 B0     LDA #$B0
C - - - - - 0x0240A8 09:8098: 9D 10 04  STA ram_Y_pos_hi_object,X
C - - - - - 0x0240AB 09:809B: FE 30 05  INC ram_0530,X
C - - - - - 0x0240AE 09:809E: A9 80     LDA #$80
C - - - - - 0x0240B0 09:80A0: 9D E0 05  STA ram_05E0,X
C - - - - - 0x0240B3 09:80A3: 0A        ASL
C - - - - - 0x0240B4 09:80A4: 9D 45 06  STA ram_0645,X
C - - - - - 0x0240B7 09:80A7: 9D 43 06  STA ram_0643,X
C - - - - - 0x0240BA 09:80AA: 9D 08 06  STA ram_0608,X
C - - - - - 0x0240BD 09:80AD: 9D 0A 06  STA ram_060A,X
C - - - - - 0x0240C0 09:80B0: 9D 0C 06  STA ram_060C,X
C - - - - - 0x0240C3 09:80B3: 9D 0E 06  STA ram_060E,X
C - - - - - 0x0240C6 09:80B6: 9D 06 06  STA ram_0606,X
C - - - - - 0x0240C9 09:80B9: 9D 04 06  STA ram_0604,X
C - - - - - 0x0240CC 09:80BC: AC 28 01  LDY ram_option_health
C - - - - - 0x0240CF 09:80BF: B9 A6 EF  LDA tbl_0x03EFB6_hp,Y
C - - - - - 0x0240D2 09:80C2: 20 59 FE  JSR sub_0x03FE69
C - - - - - 0x0240D5 09:80C5: B5 A2     LDA ram_option_fighter,X
C - - - - - 0x0240D7 09:80C7: 9D 50 05  STA ram_id_object,X
C - - - - - 0x0240DA 09:80CA: 20 18 D2  JSR sub_0x03D228
C - - - - - 0x0240DD 09:80CD: 4C 32 EA  JMP loc_0x03EA42



ofs_80D0_01:
C - - J - - 0x0240E0 09:80D0: A9 A0     LDA #$A0
C - - - - - 0x0240E2 09:80D2: 9D 60 05  STA ram_0560,X
C - - - - - 0x0240E5 09:80D5: FE 30 05  INC ram_0530,X
C - - - - - 0x0240E8 09:80D8: 4C 38 DB  JMP loc_0x03DB48



sub_80DB:
C - - - - - 0x0240EB 09:80DB: 20 01 81  JSR sub_8101
C - - - - - 0x0240EE 09:80DE: BC 50 05  LDY ram_id_object,X
C - - - - - 0x0240F1 09:80E1: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x0240F4 09:80E4: 0A        ASL
C - - - - - 0x0240F5 09:80E5: 5D 80 04  EOR ram_X_spd_hi_object,X
C - - - - - 0x0240F8 09:80E8: 10 05     BPL bra_80EF
C - - - - - 0x0240FA 09:80EA: 98        TYA
C - - - - - 0x0240FB 09:80EB: 18        CLC
C - - - - - 0x0240FC 09:80EC: 69 07     ADC #$07
C - - - - - 0x0240FE 09:80EE: A8        TAY
bra_80EF:
C - - - - - 0x0240FF 09:80EF: BD 26 06  LDA ram_0626,X
C - - - - - 0x024102 09:80F2: C9 02     CMP #$02
C - - - - - 0x024104 09:80F4: 90 04     BCC bra_80FA
C - - - - - 0x024106 09:80F6: 98        TYA
C - - - - - 0x024107 09:80F7: 69 0D     ADC #$0D
C - - - - - 0x024109 09:80F9: A8        TAY
bra_80FA:
C - - - - - 0x02410A 09:80FA: B9 0D 97  LDA tbl_970D,Y
C - - - - - 0x02410D 09:80FD: A8        TAY
C - - - - - 0x02410E 09:80FE: 4C 7C D0  JMP loc_0x03D08C



sub_8101:
C - - - - - 0x024111 09:8101: 20 6A D0  JSR sub_0x03D07A
C - - - - - 0x024114 09:8104: B5 91     LDA ram_btn_hold,X
C - - - - - 0x024116 09:8106: 29 03     AND #con_btns_LR
C - - - - - 0x024118 09:8108: F0 4B     BEQ bra_8155_RTS
C - - - - - 0x02411A 09:810A: 4A        LSR
C - - - - - 0x02411B 09:810B: 4A        LSR
C - - - - - 0x02411C 09:810C: 6A        ROR
C - - - - - 0x02411D 09:810D: 6A        ROR
C - - - - - 0x02411E 09:810E: 85 01     STA ram_0001
C - - - - - 0x024120 09:8110: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x024123 09:8113: 29 40     AND #$40
C - - - - - 0x024125 09:8115: 38        SEC
C - - - - - 0x024126 09:8116: E5 01     SBC ram_0001
C - - - - - 0x024128 09:8118: 85 01     STA ram_0001
C - - - - - 0x02412A 09:811A: BC 50 05  LDY ram_id_object,X
C - - - - - 0x02412D 09:811D: BD 26 06  LDA ram_0626,X
C - - - - - 0x024130 09:8120: C9 02     CMP #$02
C - - - - - 0x024132 09:8122: 90 0D     BCC bra_8131
C - - - - - 0x024134 09:8124: 98        TYA
C - - - - - 0x024135 09:8125: 69 06     ADC #$06
C - - - - - 0x024137 09:8127: A8        TAY
C - - - - - 0x024138 09:8128: A5 01     LDA ram_0001
C - - - - - 0x02413A 09:812A: F0 05     BEQ bra_8131
C - - - - - 0x02413C 09:812C: 98        TYA
C - - - - - 0x02413D 09:812D: 18        CLC
C - - - - - 0x02413E 09:812E: 69 07     ADC #$07
C - - - - - 0x024140 09:8130: A8        TAY
bra_8131:
C - - - - - 0x024141 09:8131: B9 F8 96  LDA tbl_96F8,Y
C - - - - - 0x024144 09:8134: 85 00     STA ram_0000
C - - - - - 0x024146 09:8136: A5 01     LDA ram_0001
C - - - - - 0x024148 09:8138: F0 05     BEQ bra_813F
C - - - - - 0x02414A 09:813A: A9 F0     LDA #$F0
C - - - - - 0x02414C 09:813C: 20 4E 81  JSR sub_814E
bra_813F:
C - - - - - 0x02414F 09:813F: BD 00 06  LDA ram_0600,X
C - - - - - 0x024152 09:8142: F0 05     BEQ bra_8149
C - - - - - 0x024154 09:8144: A9 F0     LDA #$F0
C - - - - - 0x024156 09:8146: 20 4E 81  JSR sub_814E
bra_8149:
C - - - - - 0x024159 09:8149: A5 00     LDA ram_0000
C - - - - - 0x02415B 09:814B: 4C D6 D1  JMP loc_0x03D1E6



sub_814E:
C - - - - - 0x02415E 09:814E: 18        CLC
C - - - - - 0x02415F 09:814F: 65 00     ADC ram_0000
C - - - - - 0x024161 09:8151: E9 00     SBC #$00
C - - - - - 0x024163 09:8153: 85 00     STA ram_0000
bra_8155_RTS:
C - - - - - 0x024165 09:8155: 60        RTS



ofs_8156_02:
C - - J - - 0x024166 09:8156: A0 01     LDY #$01
C - - - - - 0x024168 09:8158: 20 E7 8A  JSR sub_8AE7
C - - - - - 0x02416B 09:815B: A5 95     LDA ram_0095
C - - - - - 0x02416D 09:815D: C9 10     CMP #$10
C - - - - - 0x02416F 09:815F: B0 13     BCS bra_8174
C - - - - - 0x024171 09:8161: DE 60 05  DEC ram_0560,X
C - - - - - 0x024174 09:8164: F0 06     BEQ bra_816C
C - - - - - 0x024176 09:8166: 8A        TXA
C - - - - - 0x024177 09:8167: D0 EC     BNE bra_8155_RTS
C - - - - - 0x024179 09:8169: 4C 3A BB  JMP loc_BB3A
bra_816C:
C - - - - - 0x02417C 09:816C: 8A        TXA
C - - - - - 0x02417D 09:816D: D0 05     BNE bra_8174
C - - - - - 0x02417F 09:816F: A9 51     LDA #$51
C - - - - - 0x024181 09:8171: 20 94 F6  JSR sub_0x03F6A4_play_sound
bra_8174:
C - - - - - 0x024184 09:8174: FE 30 05  INC ram_0530,X
C - - - - - 0x024187 09:8177: A9 00     LDA #$00
C - - - - - 0x024189 09:8179: 9D 60 05  STA ram_0560,X
C - - - - - 0x02418C 09:817C: 85 98     STA ram_0098
C - - - - - 0x02418E 09:817E: 8D 0C 04  STA ram_anim_special
C - - - - - 0x024191 09:8181: 60        RTS



ofs_8182_03:
C - - J - - 0x024192 09:8182: 20 6A D0  JSR sub_0x03D07A
C - - - - - 0x024195 09:8185: 20 8B 81  JSR sub_818B
C - - - - - 0x024198 09:8188: 4C 50 AF  JMP loc_AF50



sub_818B:
C - - - - - 0x02419B 09:818B: BD 20 05  LDA ram_0520,X
C - - - - - 0x02419E 09:818E: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x0241A1 09:8191: AB 81     .word ofs_81AB_00
- D 0 - I - 0x0241A3 09:8193: FC 84     .word ofs_84FC_01
- D 0 - I - 0x0241A5 09:8195: 96 84     .word ofs_8496_02
- D 0 - I - 0x0241A7 09:8197: 18 8C     .word ofs_8C18_03
- D 0 - I - 0x0241A9 09:8199: C7 83     .word ofs_83C7_04
- D 0 - I - 0x0241AB 09:819B: 3B 86     .word ofs_863B_05
- D 0 - I - 0x0241AD 09:819D: DF 86     .word ofs_86DF_06
- D 0 - I - 0x0241AF 09:819F: 01 87     .word ofs_8701_07
- D 0 - I - 0x0241B1 09:81A1: 53 87     .word ofs_8753_08
- D 0 - I - 0x0241B3 09:81A3: C9 8F     .word ofs_8FC9_09
- D 0 - I - 0x0241B5 09:81A5: 08 92     .word ofs_9208_0A
- D 0 - I - 0x0241B7 09:81A7: 7D 87     .word ofs_877D_0B
- D 0 - I - 0x0241B9 09:81A9: A9 88     .word ofs_88A9_0C



ofs_81AB_00:
C - - J - - 0x0241BB 09:81AB: 20 01 8B  JSR sub_8B01
C - - - - - 0x0241BE 09:81AE: 20 52 89  JSR sub_8952
C - - - - - 0x0241C1 09:81B1: A9 AF     LDA #$AF
C - - - - - 0x0241C3 09:81B3: DD 10 04  CMP ram_Y_pos_hi_object,X
C - - - - - 0x0241C6 09:81B6: B0 58     BCS bra_8210
C - - - - - 0x0241C8 09:81B8: A9 B0     LDA #$B0
C - - - - - 0x0241CA 09:81BA: 9D 10 04  STA ram_Y_pos_hi_object,X
C - - - - - 0x0241CD 09:81BD: 20 6F 89  JSR sub_896F
C - - - - - 0x0241D0 09:81C0: A4 A9     LDY ram_object_index
C - - - - - 0x0241D2 09:81C2: B9 30 05  LDA ram_0530,Y
C - - - - - 0x0241D5 09:81C5: C9 04     CMP #$04
C - - - - - 0x0241D7 09:81C7: F0 24     BEQ bra_81ED
C - - - - - 0x0241D9 09:81C9: B5 8E     LDA ram_btn_press,X
C - - - - - 0x0241DB 09:81CB: A8        TAY     ; bzk вроде бы этот Y нигде не используется
C - - - - - 0x0241DC 09:81CC: 29 C0     AND #con_btns_AB
C - - - - - 0x0241DE 09:81CE: D0 51     BNE bra_8221
C - - - - - 0x0241E0 09:81D0: B5 91     LDA ram_btn_hold,X
C - - - - - 0x0241E2 09:81D2: 29 08     AND #con_btn_Up
C - - - - - 0x0241E4 09:81D4: D0 1D     BNE bra_81F3
C - - - - - 0x0241E6 09:81D6: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x0241E9 09:81D9: 85 01     STA ram_0001
C - - - - - 0x0241EB 09:81DB: B5 91     LDA ram_btn_hold,X
C - - - - - 0x0241ED 09:81DD: 29 04     AND #con_btn_Down
C - - - - - 0x0241EF 09:81DF: D0 0F     BNE bra_81F0
C - - - - - 0x0241F1 09:81E1: 20 0D 89  JSR sub_890D
C - - - - - 0x0241F4 09:81E4: B5 91     LDA ram_btn_hold,X
C - - - - - 0x0241F6 09:81E6: 29 03     AND #con_btns_LR
C - - - - - 0x0241F8 09:81E8: D0 0C     BNE bra_81F6
C - - - - - 0x0241FA 09:81EA: 20 F9 81  JSR sub_81F9
bra_81ED:
C - - - - - 0x0241FD 09:81ED: 4C 7E 83  JMP loc_837E
bra_81F0:
C - - - - - 0x024200 09:81F0: 4C 5B 83  JMP loc_835B
bra_81F3:
C - - - - - 0x024203 09:81F3: 4C 4F 83  JMP loc_834F
bra_81F6:
C - - - - - 0x024206 09:81F6: 20 DB 80  JSR sub_80DB
sub_81F9:
C - - - - - 0x024209 09:81F9: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x02420C 09:81FC: 9D 43 06  STA ram_0643,X
C - - - - - 0x02420F 09:81FF: 20 18 D2  JSR sub_0x03D228
C - - - - - 0x024212 09:8202: BD 43 06  LDA ram_0643,X
C - - - - - 0x024215 09:8205: DD 10 05  CMP ram_turn_side_object,X
C - - - - - 0x024218 09:8208: F0 16     BEQ bra_8220_RTS
C - - - - - 0x02421A 09:820A: 9D 10 05  STA ram_turn_side_object,X
C - - - - - 0x02421D 09:820D: 4C B2 83  JMP loc_83B2
bra_8210:
C - - - - - 0x024220 09:8210: A9 01     LDA #$01
C - - - - - 0x024222 09:8212: 20 7F 84  JSR sub_847F
C - - - - - 0x024225 09:8215: FE 40 05  INC ram_0540,X
C - - - - - 0x024228 09:8218: A9 00     LDA #$00
C - - - - - 0x02422A 09:821A: 9D A0 04  STA ram_04A0,X
C - - - - - 0x02422D 09:821D: 9D B0 04  STA ram_04B0,X
bra_8220_RTS:
C - - - - - 0x024230 09:8220: 60        RTS



bra_8221:
sub_8221:
loc_8221:
C D 0 - - - 0x024231 09:8221: A4 A9     LDY ram_object_index
C - - - - - 0x024233 09:8223: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x024236 09:8226: 85 13     STA ram_0013
C - - - - - 0x024238 09:8228: A0 02     LDY #$02
C - - - - - 0x02423A 09:822A: BD 20 05  LDA ram_0520,X
C - - - - - 0x02423D 09:822D: C9 01     CMP #$01
C - - - - - 0x02423F 09:822F: F0 06     BEQ bra_8237
C - - - - - 0x024241 09:8231: 88        DEY
C - - - - - 0x024242 09:8232: C9 07     CMP #$07
C - - - - - 0x024244 09:8234: F0 01     BEQ bra_8237
C - - - - - 0x024246 09:8236: 88        DEY
bra_8237:
C - - - - - 0x024247 09:8237: 84 10     STY ram_0010
C - - - - - 0x024249 09:8239: 98        TYA
C - - - - - 0x02424A 09:823A: F0 26     BEQ bra_8262
C - - - - - 0x02424C 09:823C: 4A        LSR
C - - - - - 0x02424D 09:823D: B0 1C     BCS bra_825B
C - - - - - 0x02424F 09:823F: BD 50 05  LDA ram_id_object,X
C - - - - - 0x024252 09:8242: C9 05     CMP #$05
C - - - - - 0x024254 09:8244: D0 12     BNE bra_8258
C - - - - - 0x024256 09:8246: B5 91     LDA ram_btn_hold,X
C - - - - - 0x024258 09:8248: 29 04     AND #con_btn_Down
C - - - - - 0x02425A 09:824A: F0 0C     BEQ bra_8258
C - - - - - 0x02425C 09:824C: BD 60 04  LDA ram_Y_spd_hi_object,X
C - - - - - 0x02425F 09:824F: 69 01     ADC #$01
C - - - - - 0x024261 09:8251: 9D 60 04  STA ram_Y_spd_hi_object,X
C - - - - - 0x024264 09:8254: A9 20     LDA #$20
C - - - - - 0x024266 09:8256: D0 36     BNE bra_828E
bra_8258:
C - - - - - 0x024268 09:8258: A9 0E     LDA #$0E
C - - - - - 0x02426A 09:825A: 2C        .byte $2C
bra_825B:
C - - - - - 0x02426B 09:825B: A9 15     LDA #$15
C - - - - - 0x02426D 09:825D: 18        CLC
C - - - - - 0x02426E 09:825E: 7D 50 05  ADC ram_id_object,X
C - - - - - 0x024271 09:8261: A8        TAY
bra_8262:
C - - - - - 0x024272 09:8262: B5 8E     LDA ram_btn_press,X
C - - - - - 0x024274 09:8264: 10 2B     BPL bra_8291
C - - - - - 0x024276 09:8266: A5 10     LDA ram_0010
C - - - - - 0x024278 09:8268: D0 21     BNE bra_828B
C - - - - - 0x02427A 09:826A: A9 01     LDA #$01
C - - - - - 0x02427C 09:826C: 20 C1 8A  JSR sub_8AC1
C - - - - - 0x02427F 09:826F: BD 50 05  LDA ram_id_object,X
C - - - - - 0x024282 09:8272: C9 04     CMP #$04
C - - - - - 0x024284 09:8274: B0 15     BCS bra_828B    ; это не черепахи
C - - - - - 0x024286 09:8276: BD 26 06  LDA ram_0626,X
C - - - - - 0x024289 09:8279: C9 02     CMP #$02
C - - - - - 0x02428B 09:827B: D0 0E     BNE bra_828B
C - - - - - 0x02428D 09:827D: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x024290 09:8280: DD 1C 06  CMP ram_061C,X
C - - - - - 0x024293 09:8283: D0 06     BNE bra_828B
C - - - - - 0x024295 09:8285: A9 22     LDA #$22
C - - - - - 0x024297 09:8287: 7D 50 05  ADC ram_id_object,X
C - - - - - 0x02429A 09:828A: A8        TAY
bra_828B:
C - - - - - 0x02429B 09:828B: B9 B2 93  LDA tbl_93B2,Y
bra_828E:
C - - - - - 0x02429E 09:828E: 4C 37 83  JMP loc_8337
bra_8291:
C - - - - - 0x0242A1 09:8291: A5 10     LDA ram_0010
C - - - - - 0x0242A3 09:8293: D0 6B     BNE bra_8300
C - - - - - 0x0242A5 09:8295: B5 91     LDA ram_btn_hold,X
C - - - - - 0x0242A7 09:8297: 29 03     AND #con_btns_LR
C - - - - - 0x0242A9 09:8299: F0 44     BEQ bra_82DF
C - - - - - 0x0242AB 09:829B: AC 70 05  LDY ram_0570
C - - - - - 0x0242AE 09:829E: B9 4C AD  LDA tbl_AD4C,Y
C - - - - - 0x0242B1 09:82A1: AC 71 05  LDY ram_0571
C - - - - - 0x0242B4 09:82A4: 18        CLC
C - - - - - 0x0242B5 09:82A5: 79 4C AD  ADC tbl_AD4C,Y
C - - - - - 0x0242B8 09:82A8: 85 01     STA ram_0001
C - - - - - 0x0242BA 09:82AA: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x0242BD 09:82AD: 48        PHA
C - - - - - 0x0242BE 09:82AE: 20 18 D2  JSR sub_0x03D228
C - - - - - 0x0242C1 09:82B1: 68        PLA
C - - - - - 0x0242C2 09:82B2: DD 10 05  CMP ram_turn_side_object,X
C - - - - - 0x0242C5 09:82B5: F0 06     BEQ bra_82BD
C - - - - - 0x0242C7 09:82B7: 9D 10 05  STA ram_turn_side_object,X
C - - - - - 0x0242CA 09:82BA: 4C DF 82  JMP loc_82DF
bra_82BD:
C - - - - - 0x0242CD 09:82BD: A5 13     LDA ram_0013
C - - - - - 0x0242CF 09:82BF: BC 50 05  LDY ram_id_fighter,X
C - - - - - 0x0242D2 09:82C2: D9 1C DF  CMP tbl_0x03DF2C,Y
C - - - - - 0x0242D5 09:82C5: B0 18     BCS bra_82DF
C - - - - - 0x0242D7 09:82C7: A4 A9     LDY ram_object_index
C - - - - - 0x0242D9 09:82C9: B9 10 04  LDA ram_Y_pos_hi_object,Y
C - - - - - 0x0242DC 09:82CC: C9 B0     CMP #$B0
C - - - - - 0x0242DE 09:82CE: 90 0F     BCC bra_82DF
C - - - - - 0x0242E0 09:82D0: B9 80 05  LDA ram_0580,Y
C - - - - - 0x0242E3 09:82D3: 29 A0     AND #$A0
C - - - - - 0x0242E5 09:82D5: D0 08     BNE bra_82DF
C - - - - - 0x0242E7 09:82D7: B9 F0 05  LDA ram_05F0,Y
C - - - - - 0x0242EA 09:82DA: D0 03     BNE bra_82DF
C - - - - - 0x0242EC 09:82DC: 4C C2 83  JMP loc_83C2
bra_82DF:
loc_82DF:
C D 0 - - - 0x0242EF 09:82DF: A9 00     LDA #$00
C - - - - - 0x0242F1 09:82E1: 20 C1 8A  JSR sub_8AC1
C - - - - - 0x0242F4 09:82E4: BD 50 05  LDA ram_id_object,X
C - - - - - 0x0242F7 09:82E7: C9 04     CMP #$04
C - - - - - 0x0242F9 09:82E9: B0 15     BCS bra_8300    ; это не черепахи
C - - - - - 0x0242FB 09:82EB: BD 26 06  LDA ram_0626,X
C - - - - - 0x0242FE 09:82EE: C9 02     CMP #$02
C - - - - - 0x024300 09:82F0: D0 0E     BNE bra_8300
C - - - - - 0x024302 09:82F2: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x024305 09:82F5: DD 1C 06  CMP ram_061C,X
C - - - - - 0x024308 09:82F8: D0 06     BNE bra_8300
C - - - - - 0x02430A 09:82FA: 20 0D FF  JSR sub_0x03FF1D
C - - - - - 0x02430D 09:82FD: A5 12     LDA ram_0012
C - - - - - 0x02430F 09:82FF: A8        TAY
bra_8300:
C - - - - - 0x024310 09:8300: 84 12     STY ram_0012
C - - - - - 0x024312 09:8302: B5 91     LDA ram_btn_hold,X
C - - - - - 0x024314 09:8304: 29 04     AND #con_btn_Down
C - - - - - 0x024316 09:8306: D0 25     BNE bra_832D
C - - - - - 0x024318 09:8308: BD 50 05  LDA ram_id_object,X
C - - - - - 0x02431B 09:830B: C9 06     CMP #$06
C - - - - - 0x02431D 09:830D: D0 23     BNE bra_8332
C - - - - - 0x02431F 09:830F: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x024322 09:8312: C9 B0     CMP #$B0
C - - - - - 0x024324 09:8314: 90 1C     BCC bra_8332
C - - - - - 0x024326 09:8316: 98        TYA
C - - - - - 0x024327 09:8317: 48        PHA
C - - - - - 0x024328 09:8318: A4 A9     LDY ram_object_index
C - - - - - 0x02432A 09:831A: B9 10 04  LDA ram_Y_pos_hi_object,Y
C - - - - - 0x02432D 09:831D: C9 B0     CMP #$B0
C - - - - - 0x02432F 09:831F: 68        PLA
C - - - - - 0x024330 09:8320: A8        TAY
C - - - - - 0x024331 09:8321: 90 0F     BCC bra_8332
C - - - - - 0x024333 09:8323: A5 13     LDA ram_0013
C - - - - - 0x024335 09:8325: C9 15     CMP #$15
C - - - - - 0x024337 09:8327: 90 09     BCC bra_8332
C - - - - - 0x024339 09:8329: A9 25     LDA #$25
C - - - - - 0x02433B 09:832B: B0 0A     BCS bra_8337
bra_832D:
C - - - - - 0x02433D 09:832D: 20 1A B1  JSR sub_B11A
C - - - - - 0x024340 09:8330: 90 38     BCC bra_836A
bra_8332:
C - - - - - 0x024342 09:8332: A4 12     LDY ram_0012
C - - - - - 0x024344 09:8334: B9 88 93  LDA tbl_9388,Y
bra_8337:
loc_8337:
C D 0 - - - 0x024347 09:8337: 9D 12 06  STA ram_0612,X
C - - - - - 0x02434A 09:833A: A9 80     LDA #$80
C - - - - - 0x02434C 09:833C: 9D 10 06  STA ram_0610,X
C - - - - - 0x02434F 09:833F: BD 20 05  LDA ram_0520,X
C - - - - - 0x024352 09:8342: D0 03     BNE bra_8347
C - - - - - 0x024354 09:8344: 20 3C DB  JSR sub_0x03DB4C
bra_8347:
C - - - - - 0x024357 09:8347: A9 00     LDA #$00
C - - - - - 0x024359 09:8349: 9D 16 06  STA ram_0616,X
C - - - - - 0x02435C 09:834C: 4C AA 8B  JMP loc_8BAA



loc_834F:
C D 0 - - - 0x02435F 09:834F: BC 50 05  LDY ram_id_object,X
C - - - - - 0x024362 09:8352: B9 D8 E3  LDA tbl_E3D8,Y
C - - - - - 0x024365 09:8355: A8        TAY
C - - - - - 0x024366 09:8356: A9 01     LDA #$01
C - - - - - 0x024368 09:8358: 4C 81 84  JMP loc_8481

tbl_E3D8:
- D 3 - - - 0x03E3E8 0F:E3D8: 04        .byte $04   ; 20
- D 3 - - - 0x03E3E9 0F:E3D9: 04        .byte $04   ; 21
- D 3 - - - 0x03E3EA 0F:E3DA: 04        .byte $04   ; 22
- D 3 - - - 0x03E3EB 0F:E3DB: 04        .byte $04   ; 23
- D 3 - - - 0x03E3EC 0F:E3DC: 04        .byte $04   ; 24
- D 3 - - - 0x03E3ED 0F:E3DD: 05        .byte $05   ; 25
- D 3 - - - 0x03E3EE 0F:E3DE: 04        .byte $04   ; 26



loc_835B:
C D 0 - - - 0x02436B 09:835B: A0 01     LDY #$01
C - - - - - 0x02436D 09:835D: 20 E7 8A  JSR sub_8AE7
C - - - - - 0x024370 09:8360: A9 07     LDA #$07
C - - - - - 0x024372 09:8362: A0 04     LDY #$04
C - - - - - 0x024374 09:8364: 20 81 84  JSR sub_8481
C - - - - - 0x024377 09:8367: 4C 3C DB  JMP loc_0x03DB4C



bra_836A:
C - - - - - 0x02437A 09:836A: 20 F4 FE  JSR sub_0x03FF04
C - - - - - 0x02437D 09:836D: C0 01     CPY #$01
C - - - - - 0x02437F 09:836F: F0 0A     BEQ bra_837B
C - - - - - 0x024381 09:8371: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x024384 09:8374: A9 02     LDA #$02
C - - - - - 0x024386 09:8376: A0 10     LDY #$10
C - - - - - 0x024388 09:8378: 4C 81 84  JMP loc_8481
bra_837B:
C - - - - - 0x02438B 09:837B: 4C B2 84  JMP loc_84B2



loc_837E:
C D 0 - - - 0x02438E 09:837E: 20 38 DB  JSR sub_0x03DB48
C - - - - - 0x024391 09:8381: DE 1A 06  DEC ram_061A,X
C - - - - - 0x024394 09:8384: 10 10     BPL bra_8396
C - - - - - 0x024396 09:8386: FE 18 06  INC ram_0618,X
C - - - - - 0x024399 09:8389: FE 18 06  INC ram_0618,X
C - - - - - 0x02439C 09:838C: 20 96 83  JSR sub_8396
C - - - - - 0x02439F 09:838F: B9 E4 93  LDA tbl_93E4,Y
C - - - - - 0x0243A2 09:8392: 9D 1A 06  STA ram_061A,X
C - - - - - 0x0243A5 09:8395: 60        RTS
bra_8396:
sub_8396:
C - - - - - 0x0243A6 09:8396: BC 50 05  LDY ram_id_object,X
C - - - - - 0x0243A9 09:8399: B9 DC 93  LDA tbl_93DC,Y
C - - - - - 0x0243AC 09:839C: 85 00     STA ram_0000
C - - - - - 0x0243AE 09:839E: 18        CLC
C - - - - - 0x0243AF 09:839F: 7D 18 06  ADC ram_0618,X
C - - - - - 0x0243B2 09:83A2: A8        TAY
C - - - - - 0x0243B3 09:83A3: B9 E3 93  LDA tbl_93E3,Y
C - - - - - 0x0243B6 09:83A6: F0 03     BEQ bra_83AB
C - - - - - 0x0243B8 09:83A8: 4C 94 DF  JMP loc_0x03DFA4
bra_83AB:
C - - - - - 0x0243BB 09:83AB: A9 00     LDA #$00
C - - - - - 0x0243BD 09:83AD: 9D 18 06  STA ram_0618,X
C - - - - - 0x0243C0 09:83B0: F0 E4     BEQ bra_8396



loc_83B2:
C D 0 - - - 0x0243C2 09:83B2: A9 06     LDA #$06
C - - - - - 0x0243C4 09:83B4: 9D 20 05  STA ram_0520,X
C - - - - - 0x0243C7 09:83B7: A9 06     LDA #$06
C - - - - - 0x0243C9 09:83B9: 20 0E E1  JSR sub_0x03E11E
C - - - - - 0x0243CC 09:83BC: 9D 60 05  STA ram_0560,X
C - - - - - 0x0243CF 09:83BF: 4C 3C DB  JMP loc_0x03DB4C



loc_83C2:
C D 0 - - - 0x0243D2 09:83C2: A9 09     LDA #$09
C - - - - - 0x0243D4 09:83C4: 4C 7F 84  JMP loc_847F



ofs_83C7_04:
C - - J - - 0x0243D7 09:83C7: BD 40 05  LDA ram_0540,X
C - - - - - 0x0243DA 09:83CA: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x0243DD 09:83CD: D7 83     .word ofs_83D7_00
- D 0 - I - 0x0243DF 09:83CF: F6 83     .word ofs_83F6_01
- D 0 - I - 0x0243E1 09:83D1: F6 83     .word ofs_83F6_02
- D 0 - I - 0x0243E3 09:83D3: 30 84     .word ofs_8430_03
- D 0 - I - 0x0243E5 09:83D5: 51 84     .word ofs_8451_04



ofs_83D7_00:
C - - J - - 0x0243E7 09:83D7: 20 18 D2  JSR sub_0x03D228
C - - - - - 0x0243EA 09:83DA: 20 DB 84  JSR sub_84DB
C - - - - - 0x0243ED 09:83DD: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x0243F0 09:83E0: A9 80     LDA #$80
C - - - - - 0x0243F2 09:83E2: 9D 80 05  STA ram_0580,X
C - - - - - 0x0243F5 09:83E5: A9 FB     LDA #$FB
bra_83E7:
C - - - - - 0x0243F7 09:83E7: 9D 60 04  STA ram_Y_spd_hi_object,X
C - - - - - 0x0243FA 09:83EA: A9 20     LDA #$20
C - - - - - 0x0243FC 09:83EC: 2C        .byte $2C
bra_83ED:
C - - - - - 0x0243FD 09:83ED: A9 10     LDA #$10
C - - - - - 0x0243FF 09:83EF: 9D 60 05  STA ram_0560,X
C - - - - - 0x024402 09:83F2: FE 40 05  INC ram_0540,X
C - - - - - 0x024405 09:83F5: 60        RTS



ofs_83F6_01:
ofs_83F6_02:
C - - J - - 0x024406 09:83F6: 20 65 DD  JSR sub_0x03DD75
C - - - - - 0x024409 09:83F9: A9 61     LDA #$61
C - - - - - 0x02440B 09:83FB: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x02440E 09:83FE: 20 65 DD  JSR sub_0x03DD75
C - - - - - 0x024411 09:8401: A0 02     LDY #$02
C - - - - - 0x024413 09:8403: 20 E7 8A  JSR sub_8AE7
C - - - - - 0x024416 09:8406: A9 68     LDA #$68
C - - - - - 0x024418 09:8408: DD 10 04  CMP ram_Y_pos_hi_object,X
C - - - - - 0x02441B 09:840B: 90 05     BCC bra_8412
C - - - - - 0x02441D 09:840D: A9 80     LDA #$80
C - - - - - 0x02441F 09:840F: 20 D3 DC  JSR sub_0x03DCE3
bra_8412:
C - - - - - 0x024422 09:8412: 20 92 DC  JSR sub_0x03DCA2
C - - - - - 0x024425 09:8415: BD 60 04  LDA ram_Y_spd_hi_object,X
C - - - - - 0x024428 09:8418: 30 15     BMI bra_842F_RTS
C - - - - - 0x02442A 09:841A: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x02442D 09:841D: C9 C0     CMP #$C0
C - - - - - 0x02442F 09:841F: 90 0E     BCC bra_842F_RTS
C - - - - - 0x024431 09:8421: 20 73 D0  JSR sub_0x03D083
C - - - - - 0x024434 09:8424: BD 40 05  LDA ram_0540,X
C - - - - - 0x024437 09:8427: C9 02     CMP #$02
C - - - - - 0x024439 09:8429: F0 C2     BEQ bra_83ED
C - - - - - 0x02443B 09:842B: A9 FD     LDA #$FD
C - - - - - 0x02443D 09:842D: D0 B8     BNE bra_83E7
bra_842F_RTS:
C - - - - - 0x02443F 09:842F: 60        RTS



ofs_8430_03:
C - - J - - 0x024440 09:8430: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x024443 09:8433: DE 60 05  DEC ram_0560,X
C - - - - - 0x024446 09:8436: D0 F7     BNE bra_842F_RTS
C - - - - - 0x024448 09:8438: A9 B0     LDA #$B0
C - - - - - 0x02444A 09:843A: 9D 10 04  STA ram_Y_pos_hi_fighter,X
C - - - - - 0x02444D 09:843D: BC 50 05  LDY ram_id_fighter,X
C - - - - - 0x024450 09:8440: B9 A9 99  LDA tbl_99A9,Y
C - - - - - 0x024453 09:8443: 9D 60 05  STA ram_0560,X
C - - - - - 0x024456 09:8446: FE 40 05  INC ram_0540,X
C - - - - - 0x024459 09:8449: A9 00     LDA #$00
C - - - - - 0x02445B 09:844B: 9D 80 05  STA ram_0580,X
C - - - - - 0x02445E 09:844E: 4C 38 DF  JMP loc_0x03DF48



ofs_8451_04:
C - - J - - 0x024461 09:8451: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x024464 09:8454: 20 23 DF  JSR sub_0x03DF33
C - - - - - 0x024467 09:8457: A9 FF     LDA #$FF
C - - - - - 0x024469 09:8459: B4 8E     LDY ram_btn_press,X
C - - - - - 0x02446B 09:845B: F0 02     BEQ bra_845F
C - - - - - 0x02446D 09:845D: A9 FD     LDA #$FD
bra_845F:
C - - - - - 0x02446F 09:845F: 18        CLC
C - - - - - 0x024470 09:8460: 7D 60 05  ADC ram_0560,X
C - - - - - 0x024473 09:8463: 9D 60 05  STA ram_0560,X
C - - - - - 0x024476 09:8466: 90 02     BCC bra_846A
C - - - - - 0x024478 09:8468: D0 70     BNE bra_84DA_RTS
bra_846A:
C - - - - - 0x02447A 09:846A: 20 18 D2  JSR sub_0x03D228
bra_846D:
loc_846D:
sub_846D:
C D 0 - - - 0x02447D 09:846D: A9 00     LDA #$00
C - - - - - 0x02447F 09:846F: 9D 7A 06  STA ram_067A,X
C - - - - - 0x024482 09:8472: B5 91     LDA ram_btn_hold,X
C - - - - - 0x024484 09:8474: 29 04     AND #con_btn_Down
C - - - - - 0x024486 09:8476: D0 1B     BNE bra_8493
C - - - - - 0x024488 09:8478: A0 01     LDY #$01
C - - - - - 0x02448A 09:847A: 20 E7 8A  JSR sub_8AE7
C - - - - - 0x02448D 09:847D: A9 00     LDA #$00
sub_847F:
loc_847F:
C D 0 - - - 0x02448F 09:847F: A0 00     LDY #$00
loc_8481:
sub_8481:
C D 0 - - - 0x024491 09:8481: 9D 20 05  STA ram_0520,X
loc_8484:
C D 0 - - - 0x024494 09:8484: 98        TYA
C - - - - - 0x024495 09:8485: 9D 60 05  STA ram_0560,X
C - - - - - 0x024498 09:8488: A9 00     LDA #$00
C - - - - - 0x02449A 09:848A: 9D 40 05  STA ram_0540,X
C - - - - - 0x02449D 09:848D: 20 38 DF  JSR sub_0x03DF48
C - - - - - 0x0244A0 09:8490: 4C 67 D0  JMP loc_0x03D077
bra_8493:
C - - - - - 0x0244A3 09:8493: 4C E9 DD  JMP loc_0x03DDF9



ofs_8496_02:
C - - J - - 0x0244A6 09:8496: BC 40 05  LDY ram_0540,X
C - - - - - 0x0244A9 09:8499: D0 0B     BNE bra_84A6
C - - - - - 0x0244AB 09:849B: A9 10     LDA #$10
C - - - - - 0x0244AD 09:849D: 9D 60 05  STA ram_0560,X
C - - - - - 0x0244B0 09:84A0: FE 40 05  INC ram_0540,X
C - - - - - 0x0244B3 09:84A3: 20 30 86  JSR sub_8630
bra_84A6:
C - - - - - 0x0244B6 09:84A6: DE 60 05  DEC ram_0560,X
C - - - - - 0x0244B9 09:84A9: F0 21     BEQ bra_84CC
C - - - - - 0x0244BB 09:84AB: BD 60 05  LDA ram_0560,X
C - - - - - 0x0244BE 09:84AE: C9 0C     CMP #$0C
C - - - - - 0x0244C0 09:84B0: D0 28     BNE bra_84DA_RTS
loc_84B2:
C D 0 - - - 0x0244C2 09:84B2: A9 03     LDA #$03
C - - - - - 0x0244C4 09:84B4: CD 36 05  CMP ram_0536
C - - - - - 0x0244C7 09:84B7: F0 21     BEQ bra_84DA_RTS
C - - - - - 0x0244C9 09:84B9: 8D 36 05  STA ram_0536
C - - - - - 0x0244CC 09:84BC: A9 80     LDA #$80
C - - - - - 0x0244CE 09:84BE: 9D 00 06  STA ram_0600,X
C - - - - - 0x0244D1 09:84C1: 8A        TXA
C - - - - - 0x0244D2 09:84C2: 09 40     ORA #$40
C - - - - - 0x0244D4 09:84C4: 8D A6 05  STA ram_05A6
C - - - - - 0x0244D7 09:84C7: A9 15     LDA #$15
C - - - - - 0x0244D9 09:84C9: 4C 94 F6  JMP loc_0x03F6A4_play_sound
bra_84CC:
C - - - - - 0x0244DC 09:84CC: B5 91     LDA ram_btn_hold,X
C - - - - - 0x0244DE 09:84CE: 29 04     AND #con_btn_Down
C - - - - - 0x0244E0 09:84D0: F0 9B     BEQ bra_846D
C - - - - - 0x0244E2 09:84D2: A9 07     LDA #$07
C - - - - - 0x0244E4 09:84D4: 20 7F 84  JSR sub_847F
C - - - - - 0x0244E7 09:84D7: FE 40 05  INC ram_0540,X
bra_84DA_RTS:
C - - - - - 0x0244EA 09:84DA: 60        RTS



sub_84DB:
loc_84DB:
C D 0 - - - 0x0244EB 09:84DB: BD 00 06  LDA ram_0600,X
C - - - - - 0x0244EE 09:84DE: F0 1B     BEQ bra_84FB_RTS
C - - - - - 0x0244F0 09:84E0: A9 00     LDA #$00
C - - - - - 0x0244F2 09:84E2: 9D 00 06  STA ram_0600,X
C - - - - - 0x0244F5 09:84E5: 20 AB DD  JSR sub_0x03DDBB
C - - - - - 0x0244F8 09:84E8: A9 02     LDA #$02
C - - - - - 0x0244FA 09:84EA: 8D A6 04  STA ram_04A6
C - - - - - 0x0244FD 09:84ED: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x024500 09:84F0: E9 28     SBC #$28
C - - - - - 0x024502 09:84F2: 8D 16 04  STA ram_0416
C - - - - - 0x024505 09:84F5: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x024508 09:84F8: 8D 46 04  STA ram_0446
bra_84FB_RTS:
C - - - - - 0x02450B 09:84FB: 60        RTS



ofs_84FC_01:
C - - J - - 0x02450C 09:84FC: BC 40 05  LDY ram_0540,X
C - - - - - 0x02450F 09:84FF: F0 06     BEQ bra_8507
C - - - - - 0x024511 09:8501: 88        DEY
C - - - - - 0x024512 09:8502: F0 61     BEQ bra_8565
C - - - - - 0x024514 09:8504: 4C 2B 86  JMP loc_862B
bra_8507:
C - - - - - 0x024517 09:8507: DE 60 05  DEC ram_0560,X
C - - - - - 0x02451A 09:850A: F0 03     BEQ bra_850F
C - - - - - 0x02451C 09:850C: 4C 30 86  JMP loc_8630
bra_850F:
C - - - - - 0x02451F 09:850F: A0 16     LDY #$16
C - - - - - 0x024521 09:8511: 20 E7 8A  JSR sub_8AE7
C - - - - - 0x024524 09:8514: FE 40 05  INC ram_0540,X
C - - - - - 0x024527 09:8517: BD 50 05  LDA ram_id_object,X
C - - - - - 0x02452A 09:851A: 0A        ASL
C - - - - - 0x02452B 09:851B: A8        TAY
C - - - - - 0x02452C 09:851C: B9 2A 97  LDA tbl_972A,Y
C - - - - - 0x02452F 09:851F: 9D 60 04  STA ram_Y_spd_hi_object,X
C - - - - - 0x024532 09:8522: B9 29 97  LDA tbl_9729,Y
C - - - - - 0x024535 09:8525: 9D 70 04  STA ram_Y_spd_lo_object,X
C - - - - - 0x024538 09:8528: AC 26 01  LDY ram_option_speed
C - - - - - 0x02453B 09:852B: F0 1F     BEQ bra_854C
C - - - - - 0x02453D 09:852D: BD 60 04  LDA ram_Y_spd_hi_object,X
C - - - - - 0x024540 09:8530: 85 00     STA ram_0000
C - - - - - 0x024542 09:8532: BD 70 04  LDA ram_Y_spd_lo_object,X
C - - - - - 0x024545 09:8535: 38        SEC
C - - - - - 0x024546 09:8536: 66 00     ROR ram_0000
C - - - - - 0x024548 09:8538: 6A        ROR
C - - - - - 0x024549 09:8539: 38        SEC
C - - - - - 0x02454A 09:853A: 66 00     ROR ram_0000
C - - - - - 0x02454C 09:853C: 6A        ROR
C - - - - - 0x02454D 09:853D: 18        CLC
C - - - - - 0x02454E 09:853E: 7D 70 04  ADC ram_Y_spd_lo_object,X
C - - - - - 0x024551 09:8541: 9D 70 04  STA ram_Y_spd_lo_object,X
C - - - - - 0x024554 09:8544: A5 00     LDA ram_0000
C - - - - - 0x024556 09:8546: 7D 60 04  ADC ram_Y_spd_hi_object,X
C - - - - - 0x024559 09:8549: 9D 60 04  STA ram_Y_spd_hi_object,X
bra_854C:
C - - - - - 0x02455C 09:854C: 20 01 81  JSR sub_8101
C - - - - - 0x02455F 09:854F: BD 80 04  LDA ram_X_spd_hi_object,X
C - - - - - 0x024562 09:8552: 9D A0 04  STA ram_04A0,X
C - - - - - 0x024565 09:8555: BD 90 04  LDA ram_X_spd_lo_object,X
C - - - - - 0x024568 09:8558: 9D B0 04  STA ram_04B0,X
C - - - - - 0x02456B 09:855B: A9 00     LDA #$00
C - - - - - 0x02456D 09:855D: 9D 39 06  STA ram_0639,X
C - - - - - 0x024570 09:8560: A9 07     LDA #$07
C - - - - - 0x024572 09:8562: 4C 94 F6  JMP loc_0x03F6A4_play_sound
bra_8565:
C - - - - - 0x024575 09:8565: BD 10 06  LDA ram_0610,X
C - - - - - 0x024578 09:8568: D0 4D     BNE bra_85B7
C - - - - - 0x02457A 09:856A: BD A0 04  LDA ram_04A0,X
C - - - - - 0x02457D 09:856D: 1D B0 04  ORA ram_04B0,X
C - - - - - 0x024580 09:8570: F0 2E     BEQ bra_85A0
C - - - - - 0x024582 09:8572: BD 50 05  LDA ram_id_object,X
C - - - - - 0x024585 09:8575: C9 05     CMP #$05
C - - - - - 0x024587 09:8577: B0 27     BCS bra_85A0
C - - - - - 0x024589 09:8579: BC 60 04  LDY ram_Y_spd_hi_object,X
C - - - - - 0x02458C 09:857C: C8        INY
C - - - - - 0x02458D 09:857D: C8        INY
C - - - - - 0x02458E 09:857E: C8        INY
C - - - - - 0x02458F 09:857F: C0 06     CPY #$06
C - - - - - 0x024591 09:8581: B0 1D     BCS bra_85A0
C - - - - - 0x024593 09:8583: A0 00     LDY #$00
C - - - - - 0x024595 09:8585: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x024598 09:8588: 0A        ASL
C - - - - - 0x024599 09:8589: 5D A0 04  EOR ram_04A0,X
C - - - - - 0x02459C 09:858C: 10 02     BPL bra_8590
C - - - - - 0x02459E 09:858E: A0 07     LDY #$07
bra_8590:
C - - - - - 0x0245A0 09:8590: 18        CLC
C - - - - - 0x0245A1 09:8591: 98        TYA
C - - - - - 0x0245A2 09:8592: 7D 50 05  ADC ram_id_object,X
C - - - - - 0x0245A5 09:8595: A8        TAY
C - - - - - 0x0245A6 09:8596: B9 BC 99  LDA tbl_99BC,Y
C - - - - - 0x0245A9 09:8599: A8        TAY
C - - - - - 0x0245AA 09:859A: 20 7C D0  JSR sub_0x03D08C
C - - - - - 0x0245AD 09:859D: 4C B7 85  JMP loc_85B7
bra_85A0:
C - - - - - 0x0245B0 09:85A0: A0 0C     LDY #$0C
C - - - - - 0x0245B2 09:85A2: BD 60 04  LDA ram_Y_spd_hi_object,X
C - - - - - 0x0245B5 09:85A5: C9 04     CMP #$04
C - - - - - 0x0245B7 09:85A7: 90 0B     BCC bra_85B4
C - - - - - 0x0245B9 09:85A9: C9 FC     CMP #$FC
C - - - - - 0x0245BB 09:85AB: B0 07     BCS bra_85B4
C - - - - - 0x0245BD 09:85AD: C8        INY
C - - - - - 0x0245BE 09:85AE: BD 60 04  LDA ram_Y_spd_hi_object,X
C - - - - - 0x0245C1 09:85B1: 30 01     BMI bra_85B4
C - - - - - 0x0245C3 09:85B3: C8        INY
bra_85B4:
C - - - - - 0x0245C4 09:85B4: 20 E7 8A  JSR sub_8AE7
bra_85B7:
loc_85B7:
C D 0 - - - 0x0245C7 09:85B7: BD A0 04  LDA ram_04A0,X
C - - - - - 0x0245CA 09:85BA: 0A        ASL
C - - - - - 0x0245CB 09:85BB: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x0245CE 09:85BE: B0 06     BCS bra_85C6
C - - - - - 0x0245D0 09:85C0: C9 E8     CMP #$E8
C - - - - - 0x0245D2 09:85C2: 90 0E     BCC bra_85D2
C - - - - - 0x0245D4 09:85C4: B0 04     BCS bra_85CA
bra_85C6:
C - - - - - 0x0245D6 09:85C6: C9 19     CMP #$19
C - - - - - 0x0245D8 09:85C8: B0 08     BCS bra_85D2
bra_85CA:
C - - - - - 0x0245DA 09:85CA: A9 00     LDA #$00
C - - - - - 0x0245DC 09:85CC: 9D A0 04  STA ram_04A0,X
C - - - - - 0x0245DF 09:85CF: 9D B0 04  STA ram_04B0,X
bra_85D2:
C - - - - - 0x0245E2 09:85D2: BD A0 04  LDA ram_04A0,X
C - - - - - 0x0245E5 09:85D5: 9D 80 04  STA ram_X_spd_hi_object,X
C - - - - - 0x0245E8 09:85D8: BD B0 04  LDA ram_04B0,X
C - - - - - 0x0245EB 09:85DB: 9D 90 04  STA ram_X_spd_lo_object,X
C - - - - - 0x0245EE 09:85DE: BC 50 05  LDY ram_id_fighter,X
C - - - - - 0x0245F1 09:85E1: B9 37 97  LDA tbl_9737,Y
C - - - - - 0x0245F4 09:85E4: 18        CLC
C - - - - - 0x0245F5 09:85E5: 69 50     ADC #$50
C - - - - - 0x0245F7 09:85E7: AC 26 01  LDY ram_option_speed
C - - - - - 0x0245FA 09:85EA: F0 06     BEQ bra_85F2
C - - - - - 0x0245FC 09:85EC: 85 00     STA ram_0000
C - - - - - 0x0245FE 09:85EE: 4A        LSR
C - - - - - 0x0245FF 09:85EF: 18        CLC
C - - - - - 0x024600 09:85F0: 65 00     ADC ram_0000
bra_85F2:
C - - - - - 0x024602 09:85F2: 20 58 DC  JSR sub_0x03DC68
C - - - - - 0x024605 09:85F5: BD 60 04  LDA ram_Y_spd_hi_object,X
C - - - - - 0x024608 09:85F8: 30 05     BMI bra_85FF
C - - - - - 0x02460A 09:85FA: 20 ED DC  JSR sub_0x03DCFD
C - - - - - 0x02460D 09:85FD: 90 15     BCC bra_8614
bra_85FF:
C - - - - - 0x02460F 09:85FF: 20 01 8B  JSR sub_8B01
C - - - - - 0x024612 09:8602: BD 39 06  LDA ram_0639,X
C - - - - - 0x024615 09:8605: D0 0C     BNE bra_8613_RTS
C - - - - - 0x024617 09:8607: B5 8E     LDA ram_btn_press,X
C - - - - - 0x024619 09:8609: 29 C0     AND #con_btns_AB
C - - - - - 0x02461B 09:860B: F0 06     BEQ bra_8613_RTS
C - - - - - 0x02461D 09:860D: 9D 39 06  STA ram_0639,X
C - - - - - 0x024620 09:8610: 20 21 82  JSR sub_8221
bra_8613_RTS:
C - - - - - 0x024623 09:8613: 60        RTS
bra_8614:
C - - - - - 0x024624 09:8614: FE 40 05  INC ram_0540,X
C - - - - - 0x024627 09:8617: A9 00     LDA #$00
C - - - - - 0x024629 09:8619: 9D 10 06  STA ram_0610,X
C - - - - - 0x02462C 09:861C: A9 A8     LDA #> ofs_0x02E86E
C - - - - - 0x02462E 09:861E: 48        PHA
C - - - - - 0x02462F 09:861F: A9 5D     LDA #< ofs_0x02E86E
C - - - - - 0x024631 09:8621: 48        PHA
C - - - - - 0x024632 09:8622: 4C E7 F5  JMP loc_0x03F5F7_prg_bank_0B



ofs_8625:
.export ofs_0x024635
ofs_0x024635 = ofs_8625 - 1
C - - - - - 0x024635 09:8625: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x024638 09:8628: 20 20 DE  JSR sub_0x03DE30
loc_862B:
C D 0 - - - 0x02463B 09:862B: DE 60 05  DEC ram_0560,X
bra_862E:
C - - - - - 0x02463E 09:862E: F0 05     BEQ bra_8635
sub_8630:
loc_8630:
C D 0 - - - 0x024640 09:8630: A0 00     LDY #$00
C - - - - - 0x024642 09:8632: 4C E7 8A  JMP loc_8AE7
bra_8635:
C - - - - - 0x024645 09:8635: 20 18 D2  JSR sub_0x03D228
C - - - - - 0x024648 09:8638: 4C 6D 84  JMP loc_846D



ofs_863B_05:
C - - J - - 0x02464B 09:863B: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x02464E 09:863E: BC 50 05  LDY ram_id_fighter,X
C - - - - - 0x024651 09:8641: B9 93 96  LDA tbl_9693,Y
C - - - - - 0x024654 09:8644: 85 00     STA ram_0000
C - - - - - 0x024656 09:8646: BD 40 05  LDA ram_0540,X
C - - - - - 0x024659 09:8649: D0 0A     BNE bra_8655
C - - - - - 0x02465B 09:864B: FE 40 05  INC ram_0540,X
C - - - - - 0x02465E 09:864E: A9 00     LDA #$00
C - - - - - 0x024660 09:8650: 9D D0 05  STA ram_05D0,X
C - - - - - 0x024663 09:8653: F0 0B     BEQ bra_8660
bra_8655:
C - - - - - 0x024665 09:8655: DE 60 05  DEC ram_0560,X
C - - - - - 0x024668 09:8658: 10 46     BPL bra_86A0_RTS
C - - - - - 0x02466A 09:865A: FE D0 05  INC ram_05D0,X
loc_865D:
C D 0 - - - 0x02466D 09:865D: FE D0 05  INC ram_05D0,X
bra_8660:
C - - - - - 0x024670 09:8660: BD D0 05  LDA ram_05D0,X
C - - - - - 0x024673 09:8663: 4A        LSR
C - - - - - 0x024674 09:8664: C9 06     CMP #$06
C - - - - - 0x024676 09:8666: B0 1C     BCS bra_8684
C - - - - - 0x024678 09:8668: BC 50 05  LDY ram_id_fighter,X
C - - - - - 0x02467B 09:866B: 79 D8 96  ADC tbl_96D8,Y
C - - - - - 0x02467E 09:866E: A8        TAY
C - - - - - 0x02467F 09:866F: B9 DF 96  LDA tbl_96DF,Y
C - - - - - 0x024682 09:8672: 9D 0C 04  STA ram_anim_special,X
C - - - - - 0x024685 09:8675: 18        CLC
C - - - - - 0x024686 09:8676: A9 0C     LDA #$0C
C - - - - - 0x024688 09:8678: 65 A8     ADC ram_00A8
C - - - - - 0x02468A 09:867A: A8        TAY
C - - - - - 0x02468B 09:867B: 20 B5 DB  JSR sub_0x03DBC5
C - - - - - 0x02468E 09:867E: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x024691 09:8681: 99 10 05  STA ram_turn_side_object,Y
bra_8684:
C - - - - - 0x024694 09:8684: 18        CLC
C - - - - - 0x024695 09:8685: BD D0 05  LDA ram_05D0,X
C - - - - - 0x024698 09:8688: 65 00     ADC ram_0000
C - - - - - 0x02469A 09:868A: A8        TAY
C - - - - - 0x02469B 09:868B: B9 9A 96  LDA tbl_969A,Y
C - - - - - 0x02469E 09:868E: F0 11     BEQ bra_86A1
C - - - - - 0x0246A0 09:8690: C9 FF     CMP #$FF
C - - - - - 0x0246A2 09:8692: F0 9A     BEQ bra_862E
C - - - - - 0x0246A4 09:8694: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x0246A7 09:8697: B9 9B 96  LDA tbl_969B,Y
C - - - - - 0x0246AA 09:869A: 20 0E E1  JSR sub_0x03E11E
C - - - - - 0x0246AD 09:869D: 9D 60 05  STA ram_0560,X
bra_86A0_RTS:
C - - - - - 0x0246B0 09:86A0: 60        RTS
bra_86A1:
C - - - - - 0x0246B1 09:86A1: A0 06     LDY #$06
C - - - - - 0x0246B3 09:86A3: AD A6 04  LDA ram_04A6
C - - - - - 0x0246B6 09:86A6: 48        PHA
C - - - - - 0x0246B7 09:86A7: 20 C7 DA  JSR sub_0x03DAD7
C - - - - - 0x0246BA 09:86AA: 68        PLA
C - - - - - 0x0246BB 09:86AB: 8D A6 04  STA ram_04A6
C - - - - - 0x0246BE 09:86AE: A9 80     LDA #$80
C - - - - - 0x0246C0 09:86B0: 8D 56 05  STA ram_0556
C - - - - - 0x0246C3 09:86B3: 8E 26 05  STX ram_0526
C - - - - - 0x0246C6 09:86B6: 8A        TXA
C - - - - - 0x0246C7 09:86B7: 09 80     ORA #$80
C - - - - - 0x0246C9 09:86B9: 8D A6 05  STA ram_05A6
C - - - - - 0x0246CC 09:86BC: A9 80     LDA #$80
C - - - - - 0x0246CE 09:86BE: 8D E6 05  STA ram_05E6
C - - - - - 0x0246D1 09:86C1: 0A        ASL
C - - - - - 0x0246D2 09:86C2: 8D 04 06  STA ram_0604
C - - - - - 0x0246D5 09:86C5: 8D 06 06  STA ram_0606
C - - - - - 0x0246D8 09:86C8: 9D 00 06  STA ram_0600,X
C - - - - - 0x0246DB 09:86CB: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x0246DE 09:86CE: 8D 46 04  STA ram_0446
C - - - - - 0x0246E1 09:86D1: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x0246E4 09:86D4: 8D 16 05  STA ram_0516
C - - - - - 0x0246E7 09:86D7: A9 04     LDA #$04
C - - - - - 0x0246E9 09:86D9: 8D 36 05  STA ram_0536
C - - - - - 0x0246EC 09:86DC: 4C 5D 86  JMP loc_865D



ofs_86DF_06:
C - - J - - 0x0246EF 09:86DF: 20 38 DB  JSR sub_0x03DB48
C - - - - - 0x0246F2 09:86E2: DE 60 05  DEC ram_0560,X
C - - - - - 0x0246F5 09:86E5: 10 3B     BPL bra_8722_RTS
C - - - - - 0x0246F7 09:86E7: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x0246FA 09:86EA: 49 40     EOR #$40
C - - - - - 0x0246FC 09:86EC: 9D 10 05  STA ram_turn_side_object,X
C - - - - - 0x0246FF 09:86EF: B5 91     LDA ram_btn_hold,X
C - - - - - 0x024701 09:86F1: 29 04     AND #con_btn_Down
C - - - - - 0x024703 09:86F3: D0 03     BNE bra_86F8
C - - - - - 0x024705 09:86F5: 4C 6D 84  JMP loc_846D
bra_86F8:
C - - - - - 0x024708 09:86F8: A9 07     LDA #$07
C - - - - - 0x02470A 09:86FA: 20 7F 84  JSR sub_847F
C - - - - - 0x02470D 09:86FD: FE 40 05  INC ram_0540,X
C - - - - - 0x024710 09:8700: 60        RTS



ofs_8701_07:
C - - J - - 0x024711 09:8701: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x024714 09:8704: 20 01 8B  JSR sub_8B01
C - - - - - 0x024717 09:8707: 20 52 89  JSR sub_8952
C - - - - - 0x02471A 09:870A: 20 6F 89  JSR sub_896F
C - - - - - 0x02471D 09:870D: 20 F9 81  JSR sub_81F9
C - - - - - 0x024720 09:8710: BC 40 05  LDY ram_0540,X
C - - - - - 0x024723 09:8713: F0 05     BEQ bra_871A
C - - - - - 0x024725 09:8715: 88        DEY
C - - - - - 0x024726 09:8716: F0 0B     BEQ bra_8723
C - - - - - 0x024728 09:8718: D0 2E     BNE bra_8748
bra_871A:
C - - - - - 0x02472A 09:871A: A9 04     LDA #$04
C - - - - - 0x02472C 09:871C: 9D 60 05  STA ram_0560,X
bra_871F:
C - - - - - 0x02472F 09:871F: FE 40 05  INC ram_0540,X
bra_8722_RTS:
C - - - - - 0x024732 09:8722: 60        RTS
bra_8723:
C - - - - - 0x024733 09:8723: BD 60 05  LDA ram_0560,X
C - - - - - 0x024736 09:8726: D0 19     BNE bra_8741
C - - - - - 0x024738 09:8728: 20 30 86  JSR sub_8630
C - - - - - 0x02473B 09:872B: B5 91     LDA ram_btn_hold,X
C - - - - - 0x02473D 09:872D: 29 04     AND #con_btn_Down
C - - - - - 0x02473F 09:872F: D0 07     BNE bra_8738
C - - - - - 0x024741 09:8731: A9 04     LDA #$04
C - - - - - 0x024743 09:8733: 9D 60 05  STA ram_0560,X
C - - - - - 0x024746 09:8736: D0 E7     BNE bra_871F
bra_8738:
C - - - - - 0x024748 09:8738: B5 8E     LDA ram_btn_press,X
C - - - - - 0x02474A 09:873A: 29 C0     AND #con_btns_AB
C - - - - - 0x02474C 09:873C: F0 06     BEQ bra_8744
C - - - - - 0x02474E 09:873E: 4C 21 82  JMP loc_8221
bra_8741:
C - - - - - 0x024751 09:8741: DE 60 05  DEC ram_0560,X
bra_8744:
C - - - - - 0x024754 09:8744: 20 0D 89  JSR sub_890D
C - - - - - 0x024757 09:8747: 60        RTS
bra_8748:
C - - - - - 0x024758 09:8748: DE 60 05  DEC ram_0560,X
C - - - - - 0x02475B 09:874B: D0 03     BNE bra_8750
C - - - - - 0x02475D 09:874D: 4C 6D 84  JMP loc_846D
bra_8750:
C - - - - - 0x024760 09:8750: 4C 30 86  JMP loc_8630



ofs_8753_08:
C - - J - - 0x024763 09:8753: BD 50 05  LDA ram_id_object,X
C - - - - - 0x024766 09:8756: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x024769 09:8759: 5C B3     .word ofs_B35C_00_Leo
- D 0 - I - 0x02476B 09:875B: A8 B4     .word ofs_B4A8_01_Raph
- D 0 - I - 0x02476D 09:875D: A5 B5     .word ofs_B5A5_02_Mike
- D 0 - I - 0x02476F 09:875F: 78 B6     .word ofs_B678_03_Don
- D 0 - I - 0x024771 09:8761: 72 87     .word ofs_8772_04_Casey
- D 0 - I - 0x024773 09:8763: DA B8     .word ofs_B8DA_05_Hot
- D 0 - I - 0x024775 09:8765: 67 87     .word ofs_8767_06_Shred



ofs_8767_06_Shred:
C - - J - - 0x024777 09:8767: BD A0 04  LDA ram_04A0,X
C - - - - - 0x02477A 09:876A: D0 03     BNE bra_876F
C - - - - - 0x02477C 09:876C: 4C 25 B9  JMP loc_B925
bra_876F:
C - - - - - 0x02477F 09:876F: 4C 5E B7  JMP loc_B75E



ofs_8772_04_Casey:
C - - J - - 0x024782 09:8772: BD A0 04  LDA ram_04A0,X
C - - - - - 0x024785 09:8775: D0 03     BNE bra_877A
C - - - - - 0x024787 09:8777: 4C 22 B8  JMP loc_B822
bra_877A:
C - - - - - 0x02478A 09:877A: 4C 66 B9  JMP loc_B966



ofs_877D_0B:
C - - - - - 0x02478D 09:877D: A0 03     LDY #$03
C - - - - - 0x02478F 09:877F: 20 E7 8A  JSR sub_8AE7
C - - - - - 0x024792 09:8782: 20 ED 87  JSR sub_87ED
C - - - - - 0x024795 09:8785: BD 30 05  LDA ram_0530,X
C - - - - - 0x024798 09:8788: C9 03     CMP #$03
C - - - - - 0x02479A 09:878A: D0 60     BNE bra_87EC_RTS
C - - - - - 0x02479C 09:878C: BC 40 05  LDY ram_0540,X
C - - - - - 0x02479F 09:878F: D0 40     BNE bra_87D1
C - - - - - 0x0247A1 09:8791: 20 20 DE  JSR sub_0x03DE30
C - - - - - 0x0247A4 09:8794: A9 80     LDA #$80
C - - - - - 0x0247A6 09:8796: 9D 80 05  STA ram_0580,X
C - - - - - 0x0247A9 09:8799: 20 18 D2  JSR sub_0x03D228
C - - - - - 0x0247AC 09:879C: FE 60 05  INC ram_0560,X
C - - - - - 0x0247AF 09:879F: BD 60 05  LDA ram_0560,X
C - - - - - 0x0247B2 09:87A2: 29 03     AND #$03
C - - - - - 0x0247B4 09:87A4: D0 04     BNE bra_87AA
C - - - - - 0x0247B6 09:87A6: A9 02     LDA #$02
C - - - - - 0x0247B8 09:87A8: 85 AA     STA ram_00AA
bra_87AA:
C - - - - - 0x0247BA 09:87AA: 20 C4 87  JSR sub_87C4
C - - - - - 0x0247BD 09:87AD: A4 A9     LDY ram_object_index
C - - - - - 0x0247BF 09:87AF: B9 20 05  LDA ram_0520,Y
C - - - - - 0x0247C2 09:87B2: C9 08     CMP #$08
C - - - - - 0x0247C4 09:87B4: D0 20     BNE bra_87D6
C - - - - - 0x0247C6 09:87B6: B9 40 05  LDA ram_0540,Y
C - - - - - 0x0247C9 09:87B9: 4A        LSR
C - - - - - 0x0247CA 09:87BA: F0 30     BEQ bra_87EC_RTS
C - - - - - 0x0247CC 09:87BC: FE 40 05  INC ram_0540,X
C - - - - - 0x0247CF 09:87BF: A9 08     LDA #$08
C - - - - - 0x0247D1 09:87C1: 9D 60 05  STA ram_0560,X
bra_87C4:
sub_87C4:
C - - - - - 0x0247D4 09:87C4: BD 60 05  LDA ram_0560,X
C - - - - - 0x0247D7 09:87C7: 29 04     AND #$04
C - - - - - 0x0247D9 09:87C9: 4A        LSR
C - - - - - 0x0247DA 09:87CA: 4A        LSR
C - - - - - 0x0247DB 09:87CB: 7D 00 04  ADC ram_anim_object,X
C - - - - - 0x0247DE 09:87CE: 4C 94 DF  JMP loc_0x03DFA4
bra_87D1:
C - - - - - 0x0247E1 09:87D1: DE 60 05  DEC ram_0560,X
C - - - - - 0x0247E4 09:87D4: D0 EE     BNE bra_87C4
bra_87D6:
C - - - - - 0x0247E6 09:87D6: A9 01     LDA #$01
C - - - - - 0x0247E8 09:87D8: 9D C0 04  STA ram_04C0,X
C - - - - - 0x0247EB 09:87DB: 4A        LSR
C - - - - - 0x0247EC 09:87DC: 8D 0E 04  STA ram_040E
C - - - - - 0x0247EF 09:87DF: 8D 0F 04  STA ram_040F
C - - - - - 0x0247F2 09:87E2: A9 03     LDA #$03
C - - - - - 0x0247F4 09:87E4: 20 7F 84  JSR sub_847F
C - - - - - 0x0247F7 09:87E7: A9 13     LDA #$13
C - - - - - 0x0247F9 09:87E9: 4C 94 F6  JMP loc_0x03F6A4_play_sound
bra_87EC_RTS:
C - - - - - 0x0247FC 09:87EC: 60        RTS



sub_87ED:
C - - - - - 0x0247FD 09:87ED: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x024800 09:87F0: A5 22     LDA ram_frame_counter
C - - - - - 0x024802 09:87F2: 29 03     AND #$03
C - - - - - 0x024804 09:87F4: D0 F6     BNE bra_87EC_RTS
C - - - - - 0x024806 09:87F6: A5 22     LDA ram_frame_counter
C - - - - - 0x024808 09:87F8: 29 07     AND #$07
C - - - - - 0x02480A 09:87FA: D0 63     BNE bra_885F
C - - - - - 0x02480C 09:87FC: A9 02     LDA #$02
C - - - - - 0x02480E 09:87FE: 85 AA     STA ram_00AA
C - - - - - 0x024810 09:8800: A9 04     LDA #$04
C - - - - - 0x024812 09:8802: 20 3C DE  JSR sub_0x03DE4C
C - - - - - 0x024815 09:8805: 20 77 DE  JSR sub_0x03DE87
C - - - - - 0x024818 09:8808: A9 1E     LDA #$1E
C - - - - - 0x02481A 09:880A: 20 94 F6  JSR sub_0x03F6A4_play_sound
C - - - - - 0x02481D 09:880D: A5 22     LDA ram_frame_counter
C - - - - - 0x02481F 09:880F: 29 18     AND #$18
C - - - - - 0x024821 09:8811: 4A        LSR
C - - - - - 0x024822 09:8812: 4A        LSR
C - - - - - 0x024823 09:8813: 4A        LSR
C - - - - - 0x024824 09:8814: A8        TAY
C - - - - - 0x024825 09:8815: B9 CA 99  LDA tbl_99CA,Y
C - - - - - 0x024828 09:8818: 85 00     STA ram_0000
C - - - - - 0x02482A 09:881A: B9 CE 99  LDA tbl_99CE,Y
C - - - - - 0x02482D 09:881D: 85 01     STA ram_0001
C - - - - - 0x02482F 09:881F: A5 A9     LDA ram_object_index
C - - - - - 0x024831 09:8821: 18        CLC
C - - - - - 0x024832 09:8822: 69 04     ADC #$04
C - - - - - 0x024834 09:8824: A8        TAY
C - - - - - 0x024835 09:8825: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x024838 09:8828: F0 35     BEQ bra_885F
C - - - - - 0x02483A 09:882A: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x02483D 09:882D: E9 10     SBC #$10
C - - - - - 0x02483F 09:882F: 79 10 04  ADC ram_Y_pos_hi_object,Y
C - - - - - 0x024842 09:8832: 6A        ROR
C - - - - - 0x024843 09:8833: 65 00     ADC ram_0000
C - - - - - 0x024845 09:8835: 48        PHA
C - - - - - 0x024846 09:8836: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x024849 09:8839: 79 40 04  ADC ram_X_pos_hi_object,Y
C - - - - - 0x02484C 09:883C: 6A        ROR
C - - - - - 0x02484D 09:883D: 65 01     ADC ram_0001
C - - - - - 0x02484F 09:883F: 48        PHA
C - - - - - 0x024850 09:8840: A5 22     LDA ram_frame_counter
C - - - - - 0x024852 09:8842: 29 08     AND #$08
C - - - - - 0x024854 09:8844: 4A        LSR
C - - - - - 0x024855 09:8845: 4A        LSR
C - - - - - 0x024856 09:8846: 4A        LSR
C - - - - - 0x024857 09:8847: 69 0E     ADC #$0E
C - - - - - 0x024859 09:8849: A8        TAY
C - - - - - 0x02485A 09:884A: 20 C7 DA  JSR sub_0x03DAD7
C - - - - - 0x02485D 09:884D: A9 01     LDA #$01
C - - - - - 0x02485F 09:884F: 99 50 05  STA ram_id_object,Y
C - - - - - 0x024862 09:8852: 68        PLA
C - - - - - 0x024863 09:8853: 99 40 04  STA ram_X_pos_hi_object,Y
C - - - - - 0x024866 09:8856: 68        PLA
C - - - - - 0x024867 09:8857: 99 10 04  STA ram_Y_pos_hi_object,Y
C - - - - - 0x02486A 09:885A: A9 03     LDA #$03
C - - - - - 0x02486C 09:885C: 99 00 04  STA ram_anim_object,Y
bra_885F:
C - - - - - 0x02486F 09:885F: A4 A9     LDY ram_object_index
C - - - - - 0x024871 09:8861: BD 60 05  LDA ram_0560,X
C - - - - - 0x024874 09:8864: C9 20     CMP #$20
C - - - - - 0x024876 09:8866: B0 0B     BCS bra_8873
C - - - - - 0x024878 09:8868: A5 22     LDA ram_frame_counter
C - - - - - 0x02487A 09:886A: 29 07     AND #$07
C - - - - - 0x02487C 09:886C: D0 16     BNE bra_8884
C - - - - - 0x02487E 09:886E: A9 FF     LDA #$FF
C - - - - - 0x024880 09:8870: 18        CLC
C - - - - - 0x024881 09:8871: 90 0B     BCC bra_887E
bra_8873:
C - - - - - 0x024883 09:8873: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x024886 09:8876: C9 9C     CMP #$9C
C - - - - - 0x024888 09:8878: A9 FD     LDA #$FD
C - - - - - 0x02488A 09:887A: B0 02     BCS bra_887E
C - - - - - 0x02488C 09:887C: A9 02     LDA #$02
bra_887E:
C - - - - - 0x02488E 09:887E: 7D 10 04  ADC ram_Y_pos_hi_object,X
C - - - - - 0x024891 09:8881: 9D 10 04  STA ram_Y_pos_hi_object,X
bra_8884:
C - - - - - 0x024894 09:8884: A4 A9     LDY ram_object_index
C - - - - - 0x024896 09:8886: 20 0C D2  JSR sub_0x03D21C
C - - - - - 0x024899 09:8889: C9 1C     CMP #$1C
C - - - - - 0x02489B 09:888B: B0 09     BCS bra_8896
C - - - - - 0x02489D 09:888D: B9 40 04  LDA ram_X_pos_hi_object,Y
C - - - - - 0x0248A0 09:8890: DD 40 04  CMP ram_X_pos_hi_object,X
C - - - - - 0x0248A3 09:8893: 4C 9C 88  JMP loc_889C
bra_8896:
C - - - - - 0x0248A6 09:8896: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x0248A9 09:8899: D9 40 04  CMP ram_X_pos_hi_object,Y
loc_889C:
C D 0 - - - 0x0248AC 09:889C: A9 02     LDA #$02
C - - - - - 0x0248AE 09:889E: 90 02     BCC bra_88A2
C - - - - - 0x0248B0 09:88A0: A9 FD     LDA #$FD
bra_88A2:
C - - - - - 0x0248B2 09:88A2: 7D 80 04  ADC ram_X_spd_hi_object,X
C - - - - - 0x0248B5 09:88A5: 9D 80 04  STA ram_X_spd_hi_object,X
C - - - - - 0x0248B8 09:88A8: 60        RTS



ofs_88A9_0C:
C - - J - - 0x0248B9 09:88A9: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x0248BC 09:88AC: BD 40 05  LDA ram_0540,X
C - - - - - 0x0248BF 09:88AF: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x0248C2 09:88B2: B8 88     .word ofs_88B8_00
- D 0 - I - 0x0248C4 09:88B4: D1 88     .word ofs_88D1_01
- D 0 - I - 0x0248C6 09:88B6: 00 89     .word ofs_8900_02



ofs_88B8_00:
C - - J - - 0x0248C8 09:88B8: A9 90     LDA #$90
C - - - - - 0x0248CA 09:88BA: 9D 60 05  STA ram_0560,X
C - - - - - 0x0248CD 09:88BD: A9 00     LDA #$00
C - - - - - 0x0248CF 09:88BF: 9D A0 04  STA ram_04A0,X
C - - - - - 0x0248D2 09:88C2: FE 40 05  INC ram_0540,X
C - - - - - 0x0248D5 09:88C5: 20 A3 DF  JSR sub_0x03DFB3
C - - - - - 0x0248D8 09:88C8: BC 50 05  LDY ram_id_fighter,X
C - - - - - 0x0248DB 09:88CB: B9 5E E1  LDA tbl_0x03E16E,Y
C - - - - - 0x0248DE 09:88CE: 4C 94 F6  JMP loc_0x03F6A4_play_sound



ofs_88D1_01:
C - - J - - 0x0248E1 09:88D1: DE 60 05  DEC ram_0560,X
C - - - - - 0x0248E4 09:88D4: F0 21     BEQ bra_88F7
C - - - - - 0x0248E6 09:88D6: BD 60 05  LDA ram_0560,X
C - - - - - 0x0248E9 09:88D9: C9 30     CMP #$30
C - - - - - 0x0248EB 09:88DB: D0 0D     BNE bra_88EA
C - - - - - 0x0248ED 09:88DD: A9 2B     LDA #$2B
C - - - - - 0x0248EF 09:88DF: A4 95     LDY ram_0095
C - - - - - 0x0248F1 09:88E1: C0 10     CPY #$10
C - - - - - 0x0248F3 09:88E3: 90 02     BCC bra_88E7
C - - - - - 0x0248F5 09:88E5: A9 3F     LDA #$3F
bra_88E7:
C - - - - - 0x0248F7 09:88E7: 20 90 F6  JSR sub_0x03F6A0_play_sound
bra_88EA:
C - - - - - 0x0248FA 09:88EA: 18        CLC
C - - - - - 0x0248FB 09:88EB: BD 50 05  LDA ram_id_object,X
C - - - - - 0x0248FE 09:88EE: 69 04     ADC #$04
C - - - - - 0x024900 09:88F0: A8        TAY
C - - - - - 0x024901 09:88F1: 20 4F DF  JSR sub_0x03DF5F
C - - - - - 0x024904 09:88F4: 4C 42 B1  JMP loc_B142
bra_88F7:
C - - - - - 0x024907 09:88F7: FE 40 05  INC ram_0540,X
C - - - - - 0x02490A 09:88FA: A9 80     LDA #$80
C - - - - - 0x02490C 09:88FC: 9D 60 05  STA ram_0560,X
C - - - - - 0x02490F 09:88FF: 60        RTS



ofs_8900_02:
C - - J - - 0x024910 09:8900: DE 60 05  DEC ram_0560,X
C - - - - - 0x024913 09:8903: D0 07     BNE bra_890C_RTS
C - - - - - 0x024915 09:8905: A9 00     LDA #$00
C - - - - - 0x024917 09:8907: 8D 24 06  STA ram_0624
C - - - - - 0x02491A 09:890A: E6 95     INC ram_0095
bra_890C_RTS:
C - - - - - 0x02491C 09:890C: 60        RTS



sub_890D:
C - - - - - 0x02491D 09:890D: A0 06     LDY #$06
C - - - - - 0x02491F 09:890F: AD A6 05  LDA ram_05A6
C - - - - - 0x024922 09:8912: 10 06     BPL bra_891A
C - - - - - 0x024924 09:8914: 29 01     AND #$01
C - - - - - 0x024926 09:8916: C5 AD     CMP ram_00AD
C - - - - - 0x024928 09:8918: D0 0E     BNE bra_8928
bra_891A:
C - - - - - 0x02492A 09:891A: A4 A9     LDY ram_object_index
C - - - - - 0x02492C 09:891C: B9 20 05  LDA ram_0520,Y
C - - - - - 0x02492F 09:891F: C9 08     CMP #$08
C - - - - - 0x024931 09:8921: F0 05     BEQ bra_8928
C - - - - - 0x024933 09:8923: B9 10 06  LDA ram_0610,Y
C - - - - - 0x024936 09:8926: F0 E4     BEQ bra_890C_RTS
bra_8928:
C - - - - - 0x024938 09:8928: 20 0C D2  JSR sub_0x03D21C
C - - - - - 0x02493B 09:892B: C9 30     CMP #$30
C - - - - - 0x02493D 09:892D: B0 DD     BCS bra_890C_RTS
C - - - - - 0x02493F 09:892F: B9 40 04  LDA ram_X_pos_hi_object,Y
C - - - - - 0x024942 09:8932: DD 40 04  CMP ram_X_pos_hi_object,X
C - - - - - 0x024945 09:8935: A9 00     LDA #$00
C - - - - - 0x024947 09:8937: 69 01     ADC #$01
C - - - - - 0x024949 09:8939: 85 00     STA ram_0000
C - - - - - 0x02494B 09:893B: B5 91     LDA ram_btn_hold,X
C - - - - - 0x02494D 09:893D: 29 03     AND #con_btns_LR
C - - - - - 0x02494F 09:893F: C5 00     CMP ram_0000
C - - - - - 0x024951 09:8941: D0 C9     BNE bra_890C_RTS
C - - - - - 0x024953 09:8943: 68        PLA
C - - - - - 0x024954 09:8944: 68        PLA
C - - - - - 0x024955 09:8945: A0 07     LDY #$07
C - - - - - 0x024957 09:8947: BD 20 05  LDA ram_0520,X
C - - - - - 0x02495A 09:894A: C9 07     CMP #$07
C - - - - - 0x02495C 09:894C: D0 01     BNE bra_894F
C - - - - - 0x02495E 09:894E: C8        INY
bra_894F:
C - - - - - 0x02495F 09:894F: 4C E7 8A  JMP loc_8AE7



sub_8952:
C - - - - - 0x024962 09:8952: A4 A9     LDY ram_object_index
C - - - - - 0x024964 09:8954: B9 30 05  LDA ram_0530,Y
C - - - - - 0x024967 09:8957: C9 04     CMP #$04
C - - - - - 0x024969 09:8959: D0 13     BNE bra_896E_RTS
C - - - - - 0x02496B 09:895B: B9 20 05  LDA ram_0520,Y
C - - - - - 0x02496E 09:895E: C9 05     CMP #$05
C - - - - - 0x024970 09:8960: 90 0C     BCC bra_896E_RTS
C - - - - - 0x024972 09:8962: 68        PLA
C - - - - - 0x024973 09:8963: 68        PLA
C - - - - - 0x024974 09:8964: A9 0C     LDA #$0C
C - - - - - 0x024976 09:8966: 9D 20 05  STA ram_0520,X
C - - - - - 0x024979 09:8969: A9 00     LDA #$00
C - - - - - 0x02497B 09:896B: 9D 40 05  STA ram_0540,X
bra_896E_RTS:
C - - - - - 0x02497E 09:896E: 60        RTS



sub_896F:
C - - - - - 0x02497F 09:896F: AD 27 01  LDA ram_option_timer
C - - - - - 0x024982 09:8972: C9 03     CMP #$03
C - - - - - 0x024984 09:8974: B0 F8     BCS bra_896E_RTS
C - - - - - 0x024986 09:8976: AD 72 06  LDA ram_game_time_tens
C - - - - - 0x024989 09:8979: 0D 73 06  ORA ram_game_time_ones
C - - - - - 0x02498C 09:897C: D0 F0     BNE bra_896E_RTS
C - - - - - 0x02498E 09:897E: 68        PLA
C - - - - - 0x02498F 09:897F: 68        PLA
C - - - - - 0x024990 09:8980: 60        RTS



ofs_8981_04:
C - - J - - 0x024991 09:8981: BD 20 05  LDA ram_0520,X
C - - - - - 0x024994 09:8984: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x024997 09:8987: 93 89     .word ofs_8993_00
- D 0 - I - 0x024999 09:8989: E8 89     .word ofs_89E8_01
- D 0 - I - 0x02499B 09:898B: E8 89     .word ofs_89E8_02
- D 0 - I - 0x02499D 09:898D: E8 89     .word ofs_89E8_03
- D 0 - I - 0x02499F 09:898F: 81 8A     .word ofs_8A81_04
- D 0 - I - 0x0249A1 09:8991: BC 8A     .word ofs_8ABC_05



ofs_8993_00:
C - - J - - 0x0249A3 09:8993: 20 20 DE  JSR sub_0x03DE30
C - - - - - 0x0249A6 09:8996: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x0249A9 09:8999: A9 80     LDA #$80
C - - - - - 0x0249AB 09:899B: 85 AA     STA ram_00AA
C - - - - - 0x0249AD 09:899D: 0A        ASL
C - - - - - 0x0249AE 09:899E: 9D C0 05  STA ram_05C0,X
C - - - - - 0x0249B1 09:89A1: A9 1E     LDA #$1E
C - - - - - 0x0249B3 09:89A3: 9D F0 04  STA ram_04F0,X
C - - - - - 0x0249B6 09:89A6: 20 18 D2  JSR sub_0x03D228
C - - - - - 0x0249B9 09:89A9: 20 65 DD  JSR sub_0x03DD75
C - - - - - 0x0249BC 09:89AC: A9 01     LDA #$01
C - - - - - 0x0249BE 09:89AE: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x0249C1 09:89B1: 20 65 DD  JSR sub_0x03DD75
C - - - - - 0x0249C4 09:89B4: BD 80 04  LDA ram_X_spd_hi_object,X
C - - - - - 0x0249C7 09:89B7: 9D B0 04  STA ram_04B0,X
C - - - - - 0x0249CA 09:89BA: BD 90 04  LDA ram_X_spd_lo_object,X
C - - - - - 0x0249CD 09:89BD: 9D C0 04  STA ram_04C0,X
C - - - - - 0x0249D0 09:89C0: A4 A9     LDY ram_object_index
C - - - - - 0x0249D2 09:89C2: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x0249D5 09:89C5: C9 01     CMP #$01
C - - - - - 0x0249D7 09:89C7: F0 08     BEQ bra_89D1
C - - - - - 0x0249D9 09:89C9: BD E0 04  LDA ram_04E0,X
C - - - - - 0x0249DC 09:89CC: 10 03     BPL bra_89D1
C - - - - - 0x0249DE 09:89CE: 20 65 DD  JSR sub_0x03DD75
bra_89D1:
loc_89D1:
C D 0 - - - 0x0249E1 09:89D1: BC 20 05  LDY ram_0520,X
C - - - - - 0x0249E4 09:89D4: B9 77 93  LDA tbl_9377,Y
C - - - - - 0x0249E7 09:89D7: 9D 60 04  STA ram_Y_spd_hi_object,X
C - - - - - 0x0249EA 09:89DA: A9 80     LDA #$80
C - - - - - 0x0249EC 09:89DC: 9D 80 05  STA ram_0580,X
C - - - - - 0x0249EF 09:89DF: FE 20 05  INC ram_0520,X
C - - - - - 0x0249F2 09:89E2: A9 82     LDA #$82
C - - - - - 0x0249F4 09:89E4: 9D 00 05  STA ram_0500,X
bra_89E7_RTS:
C - - - - - 0x0249F7 09:89E7: 60        RTS



ofs_89E8_01:
ofs_89E8_02:
ofs_89E8_03:
C - - J - - 0x0249F8 09:89E8: BD F0 04  LDA ram_04F0,X
C - - - - - 0x0249FB 09:89EB: F0 0E     BEQ bra_89FB
C - - - - - 0x0249FD 09:89ED: DE F0 04  DEC ram_04F0,X
C - - - - - 0x024A00 09:89F0: D0 09     BNE bra_89FB
C - - - - - 0x024A02 09:89F2: BC 50 05  LDY ram_id_fighter,X
C - - - - - 0x024A05 09:89F5: B9 D2 99  LDA tbl_99D2,Y
C - - - - - 0x024A08 09:89F8: 20 90 F6  JSR sub_0x03F6A0_play_sound
bra_89FB:
C - - - - - 0x024A0B 09:89FB: A9 50     LDA #$50
C - - - - - 0x024A0D 09:89FD: BC 10 04  LDY ram_Y_pos_hi_object,X
C - - - - - 0x024A10 09:8A00: C0 60     CPY #$60
C - - - - - 0x024A12 09:8A02: B0 02     BCS bra_8A06
C - - - - - 0x024A14 09:8A04: A9 60     LDA #$60
bra_8A06:
C - - - - - 0x024A16 09:8A06: 20 58 DC  JSR sub_0x03DC68
C - - - - - 0x024A19 09:8A09: A0 09     LDY #$09
C - - - - - 0x024A1B 09:8A0B: BD 20 05  LDA ram_0520,X
C - - - - - 0x024A1E 09:8A0E: 4A        LSR
C - - - - - 0x024A1F 09:8A0F: D0 09     BNE bra_8A1A
C - - - - - 0x024A21 09:8A11: BD 60 04  LDA ram_Y_spd_hi_object,X
C - - - - - 0x024A24 09:8A14: 69 00     ADC #$00
C - - - - - 0x024A26 09:8A16: C9 04     CMP #$04
C - - - - - 0x024A28 09:8A18: 90 08     BCC bra_8A22
bra_8A1A:
C - - - - - 0x024A2A 09:8A1A: BD C0 05  LDA ram_05C0,X
C - - - - - 0x024A2D 09:8A1D: F0 04     BEQ bra_8A23
C - - - - - 0x024A2F 09:8A1F: DE C0 05  DEC ram_05C0,X
bra_8A22:
C - - - - - 0x024A32 09:8A22: C8        INY
bra_8A23:
C - - - - - 0x024A33 09:8A23: 20 E7 8A  JSR sub_8AE7
C - - - - - 0x024A36 09:8A26: BD B0 04  LDA ram_04B0,X
C - - - - - 0x024A39 09:8A29: 9D 80 04  STA ram_X_spd_hi_object,X
C - - - - - 0x024A3C 09:8A2C: BD C0 04  LDA ram_04C0,X
C - - - - - 0x024A3F 09:8A2F: 9D 90 04  STA ram_X_spd_lo_object,X
C - - - - - 0x024A42 09:8A32: BD 60 04  LDA ram_Y_spd_hi_object,X
C - - - - - 0x024A45 09:8A35: 30 B0     BMI bra_89E7_RTS
C - - - - - 0x024A47 09:8A37: A9 C0     LDA #$C0
C - - - - - 0x024A49 09:8A39: DD 10 04  CMP ram_Y_pos_hi_object,X
C - - - - - 0x024A4C 09:8A3C: B0 7D     BCS bra_8ABB_RTS
C - - - - - 0x024A4E 09:8A3E: 9D 10 04  STA ram_Y_pos_hi_object,X
C - - - - - 0x024A51 09:8A41: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x024A54 09:8A44: 85 AA     STA ram_00AA
C - - - - - 0x024A56 09:8A46: A9 10     LDA #$10
C - - - - - 0x024A58 09:8A48: 9D C0 05  STA ram_05C0,X
C - - - - - 0x024A5B 09:8A4B: BC 20 05  LDY ram_0520,X
C - - - - - 0x024A5E 09:8A4E: C0 03     CPY #$03
C - - - - - 0x024A60 09:8A50: B0 0E     BCS bra_8A60
C - - - - - 0x024A62 09:8A52: B9 BE 8A  LDA tbl_8ABF - 1,Y
C - - - - - 0x024A65 09:8A55: 20 94 F6  JSR sub_0x03F6A4_play_sound
C - - - - - 0x024A68 09:8A58: A9 20     LDA #$20
C - - - - - 0x024A6A 09:8A5A: 8D 30 06  STA ram_0630
C - - - - - 0x024A6D 09:8A5D: 4C D1 89  JMP loc_89D1
bra_8A60:
C - - - - - 0x024A70 09:8A60: A9 40     LDA #$40
C - - - - - 0x024A72 09:8A62: 9D 60 05  STA ram_0560,X
C - - - - - 0x024A75 09:8A65: 85 98     STA ram_0098
C - - - - - 0x024A77 09:8A67: FE 20 05  INC ram_0520,X
C - - - - - 0x024A7A 09:8A6A: 8A        TXA
C - - - - - 0x024A7B 09:8A6B: 49 01     EOR #$01
C - - - - - 0x024A7D 09:8A6D: A8        TAY
C - - - - - 0x024A7E 09:8A6E: B9 30 05  LDA ram_0530,Y
C - - - - - 0x024A81 09:8A71: C9 04     CMP #$04
C - - - - - 0x024A83 09:8A73: F0 46     BEQ bra_8ABB_RTS
C - - - - - 0x024A85 09:8A75: 18        CLC
C - - - - - 0x024A86 09:8A76: B9 49 06  LDA ram_wins,Y
C - - - - - 0x024A89 09:8A79: 69 01     ADC #$01
C - - - - - 0x024A8B 09:8A7B: 99 49 06  STA ram_wins,Y
C - - - - - 0x024A8E 09:8A7E: 4C 3F EB  JMP loc_0x03EB4F



ofs_8A81_04:
C - - J - - 0x024A91 09:8A81: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x024A94 09:8A84: BD 60 05  LDA ram_0560,X
C - - - - - 0x024A97 09:8A87: F0 1D     BEQ bra_8AA6
C - - - - - 0x024A99 09:8A89: A4 A9     LDY ram_object_index
C - - - - - 0x024A9B 09:8A8B: B9 30 05  LDA ram_0530,Y
C - - - - - 0x024A9E 09:8A8E: C9 04     CMP #$04
C - - - - - 0x024AA0 09:8A90: F0 0C     BEQ bra_8A9E
C - - - - - 0x024AA2 09:8A92: BD 60 05  LDA ram_0560,X
C - - - - - 0x024AA5 09:8A95: C9 30     CMP #$30
C - - - - - 0x024AA7 09:8A97: D0 05     BNE bra_8A9E
C - - - - - 0x024AA9 09:8A99: A9 2A     LDA #$2A
C - - - - - 0x024AAB 09:8A9B: 20 90 F6  JSR sub_0x03F6A0_play_sound
bra_8A9E:
C - - - - - 0x024AAE 09:8A9E: DE 60 05  DEC ram_0560,X
C - - - - - 0x024AB1 09:8AA1: A0 0A     LDY #$0A
C - - - - - 0x024AB3 09:8AA3: 4C E7 8A  JMP loc_8AE7
bra_8AA6:
C - - - - - 0x024AB6 09:8AA6: A4 A9     LDY ram_object_index
C - - - - - 0x024AB8 09:8AA8: B9 30 05  LDA ram_0530,Y
C - - - - - 0x024ABB 09:8AAB: C9 04     CMP #$04
C - - - - - 0x024ABD 09:8AAD: D0 06     BNE bra_8AB5
C - - - - - 0x024ABF 09:8AAF: A0 04     LDY #$04
C - - - - - 0x024AC1 09:8AB1: A9 08     LDA #$08
C - - - - - 0x024AC3 09:8AB3: 85 95     STA ram_0095
bra_8AB5:
C - - - - - 0x024AC5 09:8AB5: 8C 71 06  STY ram_0671
C - - - - - 0x024AC8 09:8AB8: FE 20 05  INC ram_0520,X
bra_8ABB_RTS:
C - - - - - 0x024ACB 09:8ABB: 60        RTS



ofs_8ABC_05:
C - - J - - 0x024ACC 09:8ABC: 4C 67 D0  JMP loc_0x03D077



tbl_8ABF:
- D 0 - - - 0x024ACF 09:8ABF: 21        .byte $21   ; 
- D 0 - - - 0x024AD0 09:8AC0: 22        .byte $22   ; 



sub_8AC1:
C - - - - - 0x024AD1 09:8AC1: 85 14     STA ram_0014
C - - - - - 0x024AD3 09:8AC3: A4 A9     LDY ram_object_index
C - - - - - 0x024AD5 09:8AC5: B9 10 04  LDA ram_Y_pos_hi_object,Y
C - - - - - 0x024AD8 09:8AC8: C9 A6     CMP #$A6
C - - - - - 0x024ADA 09:8ACA: A9 1C     LDA #$1C
C - - - - - 0x024ADC 09:8ACC: 90 13     BCC bra_8AE1
C - - - - - 0x024ADE 09:8ACE: BC 50 05  LDY ram_id_fighter,X
C - - - - - 0x024AE1 09:8AD1: 46 14     LSR ram_0014
C - - - - - 0x024AE3 09:8AD3: B9 7A 93  LDA tbl_937A,Y
C - - - - - 0x024AE6 09:8AD6: B0 03     BCS bra_8ADB
C - - - - - 0x024AE8 09:8AD8: B9 81 93  LDA tbl_9381,Y
bra_8ADB:
C - - - - - 0x024AEB 09:8ADB: C5 13     CMP ram_0013
C - - - - - 0x024AED 09:8ADD: B0 07     BCS bra_8AE6_RTS
C - - - - - 0x024AEF 09:8ADF: A9 07     LDA #$07
bra_8AE1:
C - - - - - 0x024AF1 09:8AE1: 18        CLC
C - - - - - 0x024AF2 09:8AE2: 7D 50 05  ADC ram_id_object,X
C - - - - - 0x024AF5 09:8AE5: A8        TAY
bra_8AE6_RTS:
C - - - - - 0x024AF6 09:8AE6: 60        RTS



sub_8AE7:
loc_8AE7:
.export sub_0x024AF7
sub_0x024AF7:
C D 0 - - - 0x024AF7 09:8AE7: 98        TYA
C - - - - - 0x024AF8 09:8AE8: 85 00     STA ram_0000
C - - - - - 0x024AFA 09:8AEA: 0A        ASL
C - - - - - 0x024AFB 09:8AEB: 0A        ASL
C - - - - - 0x024AFC 09:8AEC: 0A        ASL
C - - - - - 0x024AFD 09:8AED: 38        SEC
C - - - - - 0x024AFE 09:8AEE: E5 00     SBC ram_0000
C - - - - - 0x024B00 09:8AF0: 18        CLC
C - - - - - 0x024B01 09:8AF1: 7D 50 05  ADC ram_id_object,X
C - - - - - 0x024B04 09:8AF4: A8        TAY
C - - - - - 0x024B05 09:8AF5: B9 E8 98  LDA tbl_98E8,Y
C - - - - - 0x024B08 09:8AF8: 4C 94 DF  JMP loc_0x03DFA4
- - - - - - 0x024B0B 09:8AFB: BD 10 06  LDA ram_0610,X
- - - - - - 0x024B0E 09:8AFE: D0 08     BNE bra_8B08
bra_8B00_RTS:
C - - - - - 0x024B10 09:8B00: 60        RTS



sub_8B01:
C - - - - - 0x024B11 09:8B01: BD 10 06  LDA ram_0610,X
C - - - - - 0x024B14 09:8B04: F0 FA     BEQ bra_8B00_RTS
C - - - - - 0x024B16 09:8B06: 68        PLA
C - - - - - 0x024B17 09:8B07: 68        PLA
bra_8B08:
C - - - - - 0x024B18 09:8B08: BD 20 05  LDA ram_0520,X
C - - - - - 0x024B1B 09:8B0B: C9 01     CMP #$01
C - - - - - 0x024B1D 09:8B0D: D0 0F     BNE bra_8B1E
C D 0 - - - 0x024B2B 09:8B1B: 4C A2 8B  JMP loc_8BA2
bra_8B1E:
C - - - - - 0x024B2E 09:8B1E: 20 6A D0  JSR sub_0x03D07A
C - - - - - 0x024B31 09:8B21: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x024B34 09:8B24: BC 16 06  LDY ram_0616,X
C - - - - - 0x024B37 09:8B27: BD 12 06  LDA ram_0612,X
C - - - - - 0x024B3A 09:8B2A: C9 09     CMP #$09
C - - - - - 0x024B3C 09:8B2C: D0 06     BNE bra_8B34
C - - - - - 0x024B3E 09:8B2E: B9 9C 99  LDA tbl_999C,Y
C - - - - - 0x024B41 09:8B31: 4C 9F 8B  JMP loc_8B9F
bra_8B34:
C - - - - - 0x024B44 09:8B34: C9 0D     CMP #$0D
C - - - - - 0x024B46 09:8B36: F0 04     BEQ bra_8B3C
C - - - - - 0x024B48 09:8B38: C9 0A     CMP #$0A
C - - - - - 0x024B4A 09:8B3A: D0 28     BNE bra_8B64
bra_8B3C:
C - - - - - 0x024B4C 09:8B3C: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x024B4F 09:8B3F: C9 B0     CMP #$B0
C - - - - - 0x024B51 09:8B41: B0 05     BCS bra_8B48
C - - - - - 0x024B53 09:8B43: A9 D8     LDA #$D8
C - - - - - 0x024B55 09:8B45: 20 54 DC  JSR sub_0x03DC64
bra_8B48:
C - - - - - 0x024B58 09:8B48: BC 16 06  LDY ram_0616,X
C - - - - - 0x024B5B 09:8B4B: C0 05     CPY #$05
C - - - - - 0x024B5D 09:8B4D: B0 53     BCS bra_8BA2
C - - - - - 0x024B5F 09:8B4F: 88        DEY
C - - - - - 0x024B60 09:8B50: D0 0E     BNE bra_8B60
C - - - - - 0x024B62 09:8B52: A9 FE     LDA #$FE
C - - - - - 0x024B64 09:8B54: AC 26 01  LDY ram_option_speed
C - - - - - 0x024B67 09:8B57: F0 02     BEQ bra_8B5B
C - - - - - 0x024B69 09:8B59: A9 FD     LDA #$FD
bra_8B5B:
C - - - - - 0x024B6B 09:8B5B: A0 C0     LDY #$C0
C - - - - - 0x024B6D 09:8B5D: 20 D6 DC  JSR sub_0x03DCE6
bra_8B60:
C - - - - - 0x024B70 09:8B60: A9 03     LDA #$03
C - - - - - 0x024B72 09:8B62: D0 3B     BNE bra_8B9F
bra_8B64:
C - - - - - 0x024B74 09:8B64: BD 50 05  LDA ram_id_object,X
C - - - - - 0x024B77 09:8B67: C9 01     CMP #$01
C - - - - - 0x024B79 09:8B69: D0 37     BNE bra_8BA2
C - - - - - 0x024B7B 09:8B6B: BD 12 06  LDA ram_0612,X
C - - - - - 0x024B7E 09:8B6E: F0 06     BEQ bra_8B76
C - - - - - 0x024B80 09:8B70: C9 08     CMP #$08
C - - - - - 0x024B82 09:8B72: D0 2E     BNE bra_8BA2
C - - - - - 0x024B84 09:8B74: F0 10     BEQ bra_8B86
bra_8B76:
C - - - - - 0x024B86 09:8B76: 88        DEY
C - - - - - 0x024B87 09:8B77: D0 29     BNE bra_8BA2
C - - - - - 0x024B89 09:8B79: BD 14 06  LDA ram_0614,X
C - - - - - 0x024B8C 09:8B7C: C9 04     CMP #$04
C - - - - - 0x024B8E 09:8B7E: A9 02     LDA #$02
C - - - - - 0x024B90 09:8B80: B0 1D     BCS bra_8B9F
C - - - - - 0x024B92 09:8B82: A9 01     LDA #$01
C - - - - - 0x024B94 09:8B84: D0 19     BNE bra_8B9F
bra_8B86:
C - - - - - 0x024B96 09:8B86: C0 03     CPY #$03
C - - - - - 0x024B98 09:8B88: B0 18     BCS bra_8BA2
C - - - - - 0x024B9A 09:8B8A: 88        DEY
C - - - - - 0x024B9B 09:8B8B: D0 0C     BNE bra_8B99
C - - - - - 0x024B9D 09:8B8D: BD 60 04  LDA ram_Y_spd_hi_object,X
C - - - - - 0x024BA0 09:8B90: D0 07     BNE bra_8B99
C - - - - - 0x024BA2 09:8B92: A9 FE     LDA #$FE
C - - - - - 0x024BA4 09:8B94: A0 C0     LDY #$C0
C - - - - - 0x024BA6 09:8B96: 20 D6 DC  JSR sub_0x03DCE6
bra_8B99:
C - - - - - 0x024BA9 09:8B99: BC 16 06  LDY ram_0616,X
C - - - - - 0x024BAC 09:8B9C: B9 96 99  LDA tbl_9996,Y
bra_8B9F:
loc_8B9F:
C D 0 - - - 0x024BAF 09:8B9F: 20 7D D1  JSR sub_0x03D18D
bra_8BA2:
loc_8BA2:
C D 0 - - - 0x024BB2 09:8BA2: DE 14 06  DEC ram_0614,X
C - - - - - 0x024BB5 09:8BA5: 10 1E     BPL bra_8BC5
C - - - - - 0x024BB7 09:8BA7: FE 16 06  INC ram_0616,X
loc_8BAA:
C D 0 - - - 0x024BBA 09:8BAA: 20 C5 8B  JSR sub_8BC5
C - - - - - 0x024BBD 09:8BAD: C8        INY
C - - - - - 0x024BBE 09:8BAE: B1 00     LDA (ram_0000),Y
C - - - - - 0x024BC0 09:8BB0: 20 B6 8B  JSR sub_8BB6
C - - - - - 0x024BC3 09:8BB3: 9D 14 06  STA ram_0614,X
sub_8BB6:
C - - - - - 0x024BC6 09:8BB6: AC 26 01  LDY ram_option_speed
C - - - - - 0x024BC9 09:8BB9: F0 09     BEQ bra_8BC4_RTS
C - - - - - 0x024BCB 09:8BBB: 85 18     STA ram_0018
C - - - - - 0x024BCD 09:8BBD: 46 18     LSR ram_0018
C - - - - - 0x024BCF 09:8BBF: 46 18     LSR ram_0018
C - - - - - 0x024BD1 09:8BC1: 38        SEC
C - - - - - 0x024BD2 09:8BC2: E5 18     SBC ram_0018
bra_8BC4_RTS:
C - - - - - 0x024BD4 09:8BC4: 60        RTS
bra_8BC5:
sub_8BC5:
C - - - - - 0x024BD5 09:8BC5: BD 12 06  LDA ram_0612,X
C - - - - - 0x024BD8 09:8BC8: 0A        ASL
C - - - - - 0x024BD9 09:8BC9: A8        TAY
C - - - - - 0x024BDA 09:8BCA: B9 01 94  LDA tbl_9401,Y
C - - - - - 0x024BDD 09:8BCD: 85 00     STA ram_0000
C - - - - - 0x024BDF 09:8BCF: B9 02 94  LDA tbl_9401 + 1,Y
C - - - - - 0x024BE2 09:8BD2: 85 01     STA ram_0001
bra_8BD4:
C - - - - - 0x024BE4 09:8BD4: BD 16 06  LDA ram_0616,X
C - - - - - 0x024BE7 09:8BD7: 0A        ASL
C - - - - - 0x024BE8 09:8BD8: A8        TAY
C - - - - - 0x024BE9 09:8BD9: B1 00     LDA (ram_0000),Y
C - - - - - 0x024BEB 09:8BDB: F0 2F     BEQ bra_8C0C_00
C - - - - - 0x024BED 09:8BDD: C9 FE     CMP #$FE
C - - - - - 0x024BEF 09:8BDF: F0 08     BEQ bra_8BE9_FE
C - - - - - 0x024BF1 09:8BE1: C9 FF     CMP #$FF
C - - - - - 0x024BF3 09:8BE3: F0 0D     BEQ bra_8BF2_FF
C - - - - - 0x024BF5 09:8BE5: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x024BF8 09:8BE8: 60        RTS
bra_8BE9_FE:
C - - - - - 0x024BF9 09:8BE9: C8        INY
C - - - - - 0x024BFA 09:8BEA: B1 00     LDA (ram_0000),Y
C - - - - - 0x024BFC 09:8BEC: 20 94 F6  JSR sub_0x03F6A4_play_sound
C - - - - - 0x024BFF 09:8BEF: 4C 07 8C  JMP loc_8C07
bra_8BF2_FF:
C - - - - - 0x024C02 09:8BF2: C8        INY
C - - - - - 0x024C03 09:8BF3: B1 00     LDA (ram_0000),Y
C - - - - - 0x024C05 09:8BF5: 9D 52 05  STA ram_id_blow,X
C - - - - - 0x024C08 09:8BF8: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x024C0B 09:8BFB: 9D 12 05  STA ram_0512,X
C - - - - - 0x024C0E 09:8BFE: A9 00     LDA #$00
C - - - - - 0x024C10 09:8C00: 9D 32 05  STA ram_0532,X
C - - - - - 0x024C13 09:8C03: 8A        TXA
C - - - - - 0x024C14 09:8C04: 9D 22 05  STA ram_0522,X
loc_8C07:
C D 0 - - - 0x024C17 09:8C07: FE 16 06  INC ram_0616,X
C - - - - - 0x024C1A 09:8C0A: D0 C8     BNE bra_8BD4
bra_8C0C_00:
C - - - - - 0x024C1C 09:8C0C: 9D 10 06  STA ram_0610,X
C - - - - - 0x024C1F 09:8C0F: 9D 14 06  STA ram_0614,X
C - - - - - 0x024C22 09:8C12: 9D 26 06  STA ram_0626,X
C - - - - - 0x024C25 09:8C15: 4C 18 D2  JMP loc_0x03D228



ofs_8C18_03:
C - - J - - 0x024C28 09:8C18: BC 40 05  LDY ram_0540,X
C - - - - - 0x024C2B 09:8C1B: D0 08     BNE bra_8C25
C - - - - - 0x024C2D 09:8C1D: A9 00     LDA #$00
C - - - - - 0x024C2F 09:8C1F: 9D 26 06  STA ram_0626,X
C - - - - - 0x024C32 09:8C22: 20 3A 8F  JSR sub_8F3A
bra_8C25:
C - - - - - 0x024C35 09:8C25: BC 40 05  LDY ram_0540,X
C - - - - - 0x024C38 09:8C28: BD C0 04  LDA ram_04C0,X
C - - - - - 0x024C3B 09:8C2B: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x024C3E 09:8C2E: 55 8C     .word ofs_8C55_00
- D 0 - I - 0x024C40 09:8C30: 72 8C     .word ofs_8C72_01
- D 0 - I - 0x024C42 09:8C32: D9 8C     .word ofs_8CD9_02
- D 0 - I - 0x024C44 09:8C34: E3 8C     .word ofs_8CE3_03
- D 0 - I - 0x024C46 09:8C36: 0E 8D     .word ofs_8D0E_04
- D 0 - I - 0x024C48 09:8C38: 45 8D     .word ofs_8D45_05
- D 0 - I - 0x024C4A 09:8C3A: 22 8E     .word ofs_8E22_06
- D 0 - I - 0x024C4C 09:8C3C: 38 8E     .word ofs_8E38_07
- D 0 - I - 0x024C4E 09:8C3E: CA 8E     .word ofs_8ECA_08



bra_8C44:
loc_8C44:
C D 0 - - - 0x024C54 09:8C44: A9 14     LDA #$14
C - - - - - 0x024C56 09:8C46: 9D F0 05  STA ram_05F0,X
sub_8C49:
C - - - - - 0x024C59 09:8C49: FE 40 05  INC ram_0540,X
C - - - - - 0x024C5C 09:8C4C: A9 A7     LDA #> ofs_0x02E7CA
C - - - - - 0x024C5E 09:8C4E: 48        PHA
C - - - - - 0x024C5F 09:8C4F: A9 B9     LDA #< ofs_0x02E7CA
C - - - - - 0x024C61 09:8C51: 48        PHA
C - - - - - 0x024C62 09:8C52: 4C E7 F5  JMP loc_0x03F5F7_prg_bank_0B



ofs_8C55_00:
C - - J - - 0x024C65 09:8C55: F0 ED     BEQ bra_8C44
C - - - - - 0x024C67 09:8C57: A0 0F     LDY #$0F
loc_8C59:
C D 0 - - - 0x024C69 09:8C59: 20 E7 8A  JSR sub_8AE7
C - - - - - 0x024C6C 09:8C5C: DE D0 04  DEC ram_04D0,X
C - - - - - 0x024C6F 09:8C5F: F0 0E     BEQ bra_8C6F
C - - - - - 0x024C71 09:8C61: BD D0 04  LDA ram_04D0,X
C - - - - - 0x024C74 09:8C64: C9 08     CMP #$08
C - - - - - 0x024C76 09:8C66: A9 C0     LDA #$C0
C - - - - - 0x024C78 09:8C68: B0 02     BCS bra_8C6C
C - - - - - 0x024C7A 09:8C6A: A9 30     LDA #$30
bra_8C6C:
C - - - - - 0x024C7C 09:8C6C: 4C 6A D1  JMP loc_0x03D17A
bra_8C6F:
C - - - - - 0x024C7F 09:8C6F: 4C 6E 8F  JMP loc_8F6E



ofs_8C72_01:
C - - J - - 0x024C82 09:8C72: D0 1F     BNE bra_8C93
loc_8C74:
C D 0 - - - 0x024C84 09:8C74: 20 63 8F  JSR sub_8F63
C - - - - - 0x024C87 09:8C77: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x024C8A 09:8C7A: 20 07 D2  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x024C8D 09:8C7D: 4A        LSR
C - - - - - 0x024C8E 09:8C7E: 4A        LSR
C - - - - - 0x024C8F 09:8C7F: A8        TAY
C - - - - - 0x024C90 09:8C80: B9 6B 8F  LDA tbl_8F6B,Y
C - - - - - 0x024C93 09:8C83: 9D 60 04  STA ram_Y_spd_hi_object,X
C - - - - - 0x024C96 09:8C86: A9 03     LDA #$03
C - - - - - 0x024C98 09:8C88: 9D D0 05  STA ram_05D0,X
C - - - - - 0x024C9B 09:8C8B: A9 00     LDA #$00
C - - - - - 0x024C9D 09:8C8D: 9D C0 05  STA ram_05C0,X
C - - - - - 0x024CA0 09:8C90: 4C 44 8C  JMP loc_8C44
bra_8C93:
C - - - - - 0x024CA3 09:8C93: A8        TAY
C - - - - - 0x024CA4 09:8C94: 88        DEY
C - - - - - 0x024CA5 09:8C95: D0 39     BNE bra_8CD0
C - - - - - 0x024CA7 09:8C97: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x024CAA 09:8C9A: B0 27     BCS bra_8CC3
C - - - - - 0x024CAC 09:8C9C: A9 81     LDA #$81
C - - - - - 0x024CAE 09:8C9E: 20 6A D1  JSR sub_0x03D17A
C - - - - - 0x024CB1 09:8CA1: A0 0F     LDY #$0F
C - - - - - 0x024CB3 09:8CA3: BD 60 04  LDA ram_Y_spd_hi_object,X
C - - - - - 0x024CB6 09:8CA6: 30 0C     BMI bra_8CB4
C - - - - - 0x024CB8 09:8CA8: A0 09     LDY #$09
C - - - - - 0x024CBA 09:8CAA: C9 02     CMP #$02
C - - - - - 0x024CBC 09:8CAC: 90 06     BCC bra_8CB4
C - - - - - 0x024CBE 09:8CAE: A0 06     LDY #$06
C - - - - - 0x024CC0 09:8CB0: C9 04     CMP #$04
C - - - - - 0x024CC2 09:8CB2: B0 03     BCS bra_8CB7
bra_8CB4:
C - - - - - 0x024CC4 09:8CB4: 4C E7 8A  JMP loc_8AE7
bra_8CB7:
C - - - - - 0x024CC7 09:8CB7: BD 50 05  LDA ram_id_object,X
C - - - - - 0x024CCA 09:8CBA: C9 04     CMP #$04
C - - - - - 0x024CCC 09:8CBC: B0 1A     BCS bra_8CD8_RTS    ; это не черепахи
C - - - - - 0x024CCE 09:8CBE: A0 00     LDY #$00
C - - - - - 0x024CD0 09:8CC0: 4C 4F DF  JMP loc_0x03DF5F
bra_8CC3:
C - - - - - 0x024CD3 09:8CC3: A9 08     LDA #$08
C - - - - - 0x024CD5 09:8CC5: 9D 60 05  STA ram_0560,X
C - - - - - 0x024CD8 09:8CC8: FE 40 05  INC ram_0540,X
C - - - - - 0x024CDB 09:8CCB: A0 00     LDY #$00
C - - - - - 0x024CDD 09:8CCD: 4C E7 8A  JMP loc_8AE7
bra_8CD0:
C - - - - - 0x024CE0 09:8CD0: DE 60 05  DEC ram_0560,X
C - - - - - 0x024CE3 09:8CD3: D0 03     BNE bra_8CD8_RTS
C - - - - - 0x024CE5 09:8CD5: 4C AB 8F  JMP loc_8FAB
bra_8CD8_RTS:
C - - - - - 0x024CE8 09:8CD8: 60        RTS



ofs_8CD9_02:
C - - J - - 0x024CE9 09:8CD9: D0 03     BNE bra_8CDE
C - - - - - 0x024CEB 09:8CDB: 4C 44 8C  JMP loc_8C44
bra_8CDE:
C - - - - - 0x024CEE 09:8CDE: A0 04     LDY #$04
C - - - - - 0x024CF0 09:8CE0: 4C 59 8C  JMP loc_8C59



ofs_8CE3_03:
C - - J - - 0x024CF3 09:8CE3: D0 08     BNE bra_8CED
loc_8CE5:
C D 0 - - - 0x024CF5 09:8CE5: A9 0C     LDA #$0C
C - - - - - 0x024CF7 09:8CE7: 9D D0 04  STA ram_04D0,X
C - - - - - 0x024CFA 09:8CEA: 20 49 8C  JSR sub_8C49
bra_8CED:
loc_8CED:
C D 0 - - - 0x024CFD 09:8CED: BD D0 04  LDA ram_04D0,X
C - - - - - 0x024D00 09:8CF0: A8        TAY
C - - - - - 0x024D01 09:8CF1: 29 03     AND #$03
C - - - - - 0x024D03 09:8CF3: D0 0D     BNE bra_8D02
C - - - - - 0x024D05 09:8CF5: 98        TYA
C - - - - - 0x024D06 09:8CF6: 29 04     AND #$04
C - - - - - 0x024D08 09:8CF8: 4A        LSR
C - - - - - 0x024D09 09:8CF9: E9 00     SBC #$00
C - - - - - 0x024D0B 09:8CFB: 18        CLC
C - - - - - 0x024D0C 09:8CFC: 7D 40 04  ADC ram_X_pos_hi_object,X
C - - - - - 0x024D0F 09:8CFF: 9D 40 04  STA ram_X_pos_hi_object,X
bra_8D02:
C - - - - - 0x024D12 09:8D02: A0 07     LDY #$07
C - - - - - 0x024D14 09:8D04: B5 91     LDA ram_btn_hold,X
C - - - - - 0x024D16 09:8D06: 29 04     AND #con_btn_Down
C - - - - - 0x024D18 09:8D08: F0 01     BEQ bra_8D0B
C - - - - - 0x024D1A 09:8D0A: C8        INY
bra_8D0B:
C - - - - - 0x024D1B 09:8D0B: 4C 59 8C  JMP loc_8C59



ofs_8D0E_04:
C - - J - - 0x024D1E 09:8D0E: D0 19     BNE bra_8D29
C - - - - - 0x024D20 09:8D10: 20 63 8F  JSR sub_8F63
C - - - - - 0x024D23 09:8D13: FE 40 05  INC ram_0540,X
C - - - - - 0x024D26 09:8D16: A9 3B     LDA #$3B
C - - - - - 0x024D28 09:8D18: 9D 60 05  STA ram_0560,X
C - - - - - 0x024D2B 09:8D1B: A9 23     LDA #$23
sub_8D1D:
C - - - - - 0x024D2D 09:8D1D: 48        PHA
C - - - - - 0x024D2E 09:8D1E: 8A        TXA
C - - - - - 0x024D2F 09:8D1F: 09 04     ORA #$04
C - - - - - 0x024D31 09:8D21: AA        TAX
C - - - - - 0x024D32 09:8D22: 68        PLA
C - - - - - 0x024D33 09:8D23: 20 46 D3  JSR sub_0x03D356
C - - - - - 0x024D36 09:8D26: A6 A8     LDX ram_00A8
bra_8D28_RTS:
C - - - - - 0x024D38 09:8D28: 60        RTS
bra_8D29:
C - - - - - 0x024D39 09:8D29: A5 22     LDA ram_frame_counter
C - - - - - 0x024D3B 09:8D2B: 4A        LSR
C - - - - - 0x024D3C 09:8D2C: A9 23     LDA #$23
C - - - - - 0x024D3E 09:8D2E: 90 02     BCC bra_8D32
C - - - - - 0x024D40 09:8D30: A9 24     LDA #$24
bra_8D32:
C - - - - - 0x024D42 09:8D32: 20 1D 8D  JSR sub_8D1D
C - - - - - 0x024D45 09:8D35: A0 0F     LDY #$0F
C - - - - - 0x024D47 09:8D37: 20 E7 8A  JSR sub_8AE7
C - - - - - 0x024D4A 09:8D3A: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x024D4D 09:8D3D: DE 60 05  DEC ram_0560,X
C - - - - - 0x024D50 09:8D40: D0 E6     BNE bra_8D28_RTS
C - - - - - 0x024D52 09:8D42: 4C 6E 8F  JMP loc_8F6E



ofs_8D45_05:
C - - J - - 0x024D55 09:8D45: D0 08     BNE bra_8D4F
sub_8D47:
C - - - - - 0x024D57 09:8D47: A9 02     LDA #$02
C - - - - - 0x024D59 09:8D49: 9D B0 04  STA ram_04B0,X
C - - - - - 0x024D5C 09:8D4C: 4C 74 8C  JMP loc_8C74
bra_8D4F:
C - - - - - 0x024D5F 09:8D4F: A8        TAY
C - - - - - 0x024D60 09:8D50: 88        DEY
C - - - - - 0x024D61 09:8D51: D0 5A     BNE bra_8DAD
C - - - - - 0x024D63 09:8D53: BC B0 04  LDY ram_04B0,X
C - - - - - 0x024D66 09:8D56: B9 B6 99  LDA tbl_99B6,Y
loc_8D59:
C D 0 - - - 0x024D69 09:8D59: C0 02     CPY #$02
C - - - - - 0x024D6B 09:8D5B: F0 0D     BEQ bra_8D6A
C - - - - - 0x024D6D 09:8D5D: A0 09     LDY #$09
C - - - - - 0x024D6F 09:8D5F: BD D0 04  LDA ram_04D0,X
C - - - - - 0x024D72 09:8D62: F0 24     BEQ bra_8D88
C - - - - - 0x024D74 09:8D64: DE D0 04  DEC ram_04D0,X
C - - - - - 0x024D77 09:8D67: C8        INY
C - - - - - 0x024D78 09:8D68: D0 1E     BNE bra_8D88
bra_8D6A:
C - - - - - 0x024D7A 09:8D6A: 20 6A D1  JSR sub_0x03D17A
C - - - - - 0x024D7D 09:8D6D: A0 0F     LDY #$0F
C - - - - - 0x024D7F 09:8D6F: BD 60 04  LDA ram_Y_spd_hi_object,X
C - - - - - 0x024D82 09:8D72: 30 14     BMI bra_8D88
C - - - - - 0x024D84 09:8D74: A0 15     LDY #$15
C - - - - - 0x024D86 09:8D76: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x024D89 09:8D79: C9 A8     CMP #$A8
C - - - - - 0x024D8B 09:8D7B: B0 0B     BCS bra_8D88
C - - - - - 0x024D8D 09:8D7D: BD 60 04  LDA ram_Y_spd_hi_object,X
C - - - - - 0x024D90 09:8D80: A0 09     LDY #$09
C - - - - - 0x024D92 09:8D82: C9 02     CMP #$02
C - - - - - 0x024D94 09:8D84: 90 02     BCC bra_8D88
C - - - - - 0x024D96 09:8D86: A0 06     LDY #$06
bra_8D88:
C - - - - - 0x024D98 09:8D88: 20 E7 8A  JSR sub_8AE7
C - - - - - 0x024D9B 09:8D8B: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x024D9E 09:8D8E: 90 72     BCC bra_8E02_RTS
C - - - - - 0x024DA0 09:8D90: BD 50 05  LDA ram_id_object,X
C - - - - - 0x024DA3 09:8D93: C9 04     CMP #$04
C - - - - - 0x024DA5 09:8D95: 90 0D     BCC bra_8DA4    
C - - - - - 0x024DA7 09:8D97: DE B0 04  DEC ram_04B0,X
C - - - - - 0x024DAA 09:8D9A: 30 31     BMI bra_8DCD
C - - - - - 0x024DAC 09:8D9C: A9 08     LDA #$08
C - - - - - 0x024DAE 09:8D9E: 9D D0 04  STA ram_04D0,X
C - - - - - 0x024DB1 09:8DA1: 4C BA 8F  JMP loc_8FBA
bra_8DA4:
C - - - - - 0x024DB4 09:8DA4: FE 40 05  INC ram_0540,X
C - - - - - 0x024DB7 09:8DA7: A9 1C     LDA #$1C
C - - - - - 0x024DB9 09:8DA9: 9D 60 05  STA ram_0560,X
C - - - - - 0x024DBC 09:8DAC: 60        RTS
bra_8DAD:
loc_8DAD:
C D 0 - - - 0x024DBD 09:8DAD: 88        DEY
C - - - - - 0x024DBE 09:8DAE: D0 37     BNE bra_8DE7
C - - - - - 0x024DC0 09:8DB0: DE 60 05  DEC ram_0560,X
C - - - - - 0x024DC3 09:8DB3: F0 18     BEQ bra_8DCD
C - - - - - 0x024DC5 09:8DB5: A9 B0     LDA #$B0
C - - - - - 0x024DC7 09:8DB7: 9D 10 04  STA ram_Y_pos_hi_object,X
C - - - - - 0x024DCA 09:8DBA: A0 14     LDY #$14
C - - - - - 0x024DCC 09:8DBC: 20 7C D0  JSR sub_0x03D08C
C - - - - - 0x024DCF 09:8DBF: BC 60 05  LDY ram_0560,X
C - - - - - 0x024DD2 09:8DC2: A9 02     LDA #$02
C - - - - - 0x024DD4 09:8DC4: C0 0E     CPY #$0E
C - - - - - 0x024DD6 09:8DC6: B0 02     BCS bra_8DCA
C - - - - - 0x024DD8 09:8DC8: A9 21     LDA #$21
bra_8DCA:
C - - - - - 0x024DDA 09:8DCA: 4C 6A D1  JMP loc_0x03D17A
bra_8DCD:
C - - - - - 0x024DDD 09:8DCD: A9 06     LDA #$06
C - - - - - 0x024DDF 09:8DCF: A0 00     LDY #$00
C - - - - - 0x024DE1 09:8DD1: 9D D0 05  STA ram_05D0,X
C - - - - - 0x024DE4 09:8DD4: 98        TYA
C - - - - - 0x024DE5 09:8DD5: 9D C0 05  STA ram_05C0,X
C - - - - - 0x024DE8 09:8DD8: A9 03     LDA #$03
C - - - - - 0x024DEA 09:8DDA: 9D 40 05  STA ram_0540,X
C - - - - - 0x024DED 09:8DDD: A9 B0     LDA #$B0
C - - - - - 0x024DEF 09:8DDF: 9D 10 04  STA ram_Y_pos_hi_object,X
C - - - - - 0x024DF2 09:8DE2: A4 A9     LDY ram_object_index
C - - - - - 0x024DF4 09:8DE4: 20 18 D2  JSR sub_0x03D228
bra_8DE7:
loc_8DE7:
C D 0 - - - 0x024DF7 09:8DE7: BD 50 05  LDA ram_id_object,X
C - - - - - 0x024DFA 09:8DEA: C9 06     CMP #$06
C - - - - - 0x024DFC 09:8DEC: F0 07     BEQ bra_8DF5_shred
C - - - - - 0x024DFE 09:8DEE: C9 04     CMP #$04
C - - - - - 0x024E00 09:8DF0: B0 11     BCS bra_8E03_casey_or_hot
C - - - - - 0x024E02 09:8DF2: A0 01     LDY #$01
C - - - - - 0x024E04 09:8DF4: 2C        .byte $2C
bra_8DF5_shred:
C - - - - - 0x024E06 09:8DF5: A0 0C     LDY #$0C
C - - - - - 0x024E07 09:8DF7: 20 4F DF  JSR sub_0x03DF5F
C - - - - - 0x024E0A 09:8DFA: BD C0 05  LDA ram_05C0,X
C - - - - - 0x024E0D 09:8DFD: 10 03     BPL bra_8E02_RTS
bra_8DFF:
C - - - - - 0x024E0F 09:8DFF: 4C 6E 8F  JMP loc_8F6E
bra_8E02_RTS:
C - - - - - 0x024E12 09:8E02: 60        RTS
bra_8E03_casey_or_hot:
C - - - - - 0x024E13 09:8E03: DE C0 05  DEC ram_05C0,X
C - - - - - 0x024E16 09:8E06: 10 0A     BPL bra_8E12
C - - - - - 0x024E18 09:8E08: DE D0 05  DEC ram_05D0,X
C - - - - - 0x024E1B 09:8E0B: 30 F2     BMI bra_8DFF
C - - - - - 0x024E1D 09:8E0D: A9 06     LDA #$06
C - - - - - 0x024E1F 09:8E0F: 9D C0 05  STA ram_05C0,X
bra_8E12:
C - - - - - 0x024E22 09:8E12: BC D0 05  LDY ram_05D0,X
C - - - - - 0x024E25 09:8E15: B9 1C 8E  LDA tbl_8E1C,Y
C - - - - - 0x024E28 09:8E18: A8        TAY
C - - - - - 0x024E29 09:8E19: 4C E7 8A  JMP loc_8AE7



tbl_8E1C:
- D 0 - - - 0x024E2C 09:8E1C: 00        .byte $00   ; 00
- D 0 - - - 0x024E2D 09:8E1D: 00        .byte $00   ; 01
- D 0 - - - 0x024E2E 09:8E1E: 09        .byte $09   ; 02
- D 0 - - - 0x024E2F 09:8E1F: 09        .byte $09   ; 03
- D 0 - - - 0x024E30 09:8E20: 0A        .byte $0A   ; 04
- D 0 - - - 0x024E31 09:8E21: 0A        .byte $0A   ; 05



ofs_8E22_06:
C - - J - - 0x024E32 09:8E22: D0 03     BNE bra_8E27
C - - - - - 0x024E34 09:8E24: 4C E5 8C  JMP loc_8CE5
bra_8E27:
C - - - - - 0x024E37 09:8E27: A5 22     LDA ram_frame_counter
C - - - - - 0x024E39 09:8E29: 29 02     AND #$02
C - - - - - 0x024E3B 09:8E2B: 38        SEC
C - - - - - 0x024E3C 09:8E2C: E9 01     SBC #$01
C - - - - - 0x024E3E 09:8E2E: 18        CLC
C - - - - - 0x024E3F 09:8E2F: 7D 10 04  ADC ram_Y_pos_hi_object,X
C - - - - - 0x024E42 09:8E32: 9D 10 04  STA ram_Y_pos_hi_object,X
C - - - - - 0x024E45 09:8E35: 4C ED 8C  JMP loc_8CED



ofs_8E38_07:
C - - J - - 0x024E48 09:8E38: A9 03     LDA #$03
C - - - - - 0x024E4A 09:8E3A: DD 50 05  CMP ram_id_object,X
C - - - - - 0x024E4D 09:8E3D: 90 09     BCC bra_8E48
C - - - - - 0x024E4F 09:8E3F: A4 A9     LDY ram_object_index
C - - - - - 0x024E51 09:8E41: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x024E54 09:8E44: C9 04     CMP #$04
C - - - - - 0x024E56 09:8E46: D0 29     BNE bra_8E71
bra_8E48:
C - - - - - 0x024E58 09:8E48: BC 40 05  LDY ram_0540,X
C - - - - - 0x024E5B 09:8E4B: D0 15     BNE bra_8E62
C - - - - - 0x024E5D 09:8E4D: 20 47 8D  JSR sub_8D47
C - - - - - 0x024E60 09:8E50: A4 A9     LDY ram_object_index
C - - - - - 0x024E62 09:8E52: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x024E65 09:8E55: A8        TAY
C - - - - - 0x024E66 09:8E56: A9 FE     LDA #$FE
C - - - - - 0x024E68 09:8E58: C0 04     CPY #$04
C - - - - - 0x024E6A 09:8E5A: D0 02     BNE bra_8E5E
C - - - - - 0x024E6C 09:8E5C: A9 FB     LDA #$FB
bra_8E5E:
C - - - - - 0x024E6E 09:8E5E: 9D 60 04  STA ram_Y_spd_hi_object,X
bra_8E61_RTS:
C - - - - - 0x024E71 09:8E61: 60        RTS
bra_8E62:
C - - - - - 0x024E72 09:8E62: 88        DEY
C - - - - - 0x024E73 09:8E63: F0 03     BEQ bra_8E68
C - - - - - 0x024E75 09:8E65: 4C AD 8D  JMP loc_8DAD
bra_8E68:
C - - - - - 0x024E78 09:8E68: BC B0 04  LDY ram_04B0,X
C - - - - - 0x024E7B 09:8E6B: B9 B9 99  LDA tbl_99B9,Y
C - - - - - 0x024E7E 09:8E6E: 4C 59 8D  JMP loc_8D59
bra_8E71:
C - - - - - 0x024E81 09:8E71: BC 40 05  LDY ram_0540,X
C - - - - - 0x024E84 09:8E74: D0 09     BNE bra_8E7F
C - - - - - 0x024E86 09:8E76: FE 40 05  INC ram_0540,X
C - - - - - 0x024E89 09:8E79: A9 2C     LDA #$2C
C - - - - - 0x024E8B 09:8E7B: 9D 60 05  STA ram_0560,X
C - - - - - 0x024E8E 09:8E7E: 60        RTS
bra_8E7F:
C - - - - - 0x024E8F 09:8E7F: 88        DEY
C - - - - - 0x024E90 09:8E80: D0 2F     BNE bra_8EB1
C - - - - - 0x024E92 09:8E82: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x024E95 09:8E85: A9 02     LDA #$02
C - - - - - 0x024E97 09:8E87: BC 60 05  LDY ram_0560,X
C - - - - - 0x024E9A 09:8E8A: C0 10     CPY #$10
C - - - - - 0x024E9C 09:8E8C: B0 01     BCS bra_8E8F
C - - - - - 0x024E9E 09:8E8E: 4A        LSR
bra_8E8F:
C - - - - - 0x024E9F 09:8E8F: 20 6A D1  JSR sub_0x03D17A
C - - - - - 0x024EA2 09:8E92: A0 14     LDY #$14
C - - - - - 0x024EA4 09:8E94: 20 7C D0  JSR sub_0x03D08C
C - - - - - 0x024EA7 09:8E97: DE 60 05  DEC ram_0560,X
C - - - - - 0x024EAA 09:8E9A: 10 C5     BPL bra_8E61_RTS
C - - - - - 0x024EAC 09:8E9C: FE 40 05  INC ram_0540,X
C - - - - - 0x024EAF 09:8E9F: A9 B0     LDA #$B0
C - - - - - 0x024EB1 09:8EA1: 9D 10 04  STA ram_Y_pos_hi_object,X
C - - - - - 0x024EB4 09:8EA4: A9 A6     LDA #$A6
C - - - - - 0x024EB6 09:8EA6: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x024EB9 09:8EA9: A9 10     LDA #$10
C - - - - - 0x024EBB 09:8EAB: 9D 60 05  STA ram_0560,X
C - - - - - 0x024EBE 09:8EAE: 4C 67 D0  JMP loc_0x03D077
bra_8EB1:
C - - - - - 0x024EC1 09:8EB1: 88        DEY
C - - - - - 0x024EC2 09:8EB2: D0 13     BNE bra_8EC7
C - - - - - 0x024EC4 09:8EB4: DE 60 05  DEC ram_0560,X
C - - - - - 0x024EC7 09:8EB7: D0 A8     BNE bra_8E61_RTS
C - - - - - 0x024EC9 09:8EB9: FE 40 05  INC ram_0540,X
C - - - - - 0x024ECC 09:8EBC: A9 05     LDA #$05
C - - - - - 0x024ECE 09:8EBE: 9D D0 05  STA ram_05D0,X
C - - - - - 0x024ED1 09:8EC1: A9 08     LDA #$08
C - - - - - 0x024ED3 09:8EC3: 9D C0 05  STA ram_05C0,X
C - - - - - 0x024ED6 09:8EC6: 60        RTS
bra_8EC7:
C - - - - - 0x024ED7 09:8EC7: 4C E7 8D  JMP loc_8DE7



ofs_8ECA_08:
C - - J - - 0x024EDA 09:8ECA: BC 40 05  LDY ram_0540,X
C - - - - - 0x024EDD 09:8ECD: D0 14     BNE bra_8EE3
C - - - - - 0x024EDF 09:8ECF: A9 00     LDA #$00
C - - - - - 0x024EE1 09:8ED1: 9D C0 05  STA ram_05C0,X
C - - - - - 0x024EE4 09:8ED4: 9D D0 05  STA ram_05D0,X
C - - - - - 0x024EE7 09:8ED7: FE 40 05  INC ram_0540,X
sub_8EDA:
C - - - - - 0x024EEA 09:8EDA: A9 05     LDA #$05
C - - - - - 0x024EEC 09:8EDC: 20 B6 8B  JSR sub_8BB6
C - - - - - 0x024EEF 09:8EDF: 9D 60 05  STA ram_0560,X
C - - - - - 0x024EF2 09:8EE2: 60        RTS
bra_8EE3:
C - - - - - 0x024EF3 09:8EE3: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x024EF6 09:8EE6: 20 23 DF  JSR sub_0x03DF33
C - - - - - 0x024EF9 09:8EE9: A4 A9     LDY ram_object_index
C - - - - - 0x024EFB 09:8EEB: B9 54 05  LDA ram_id_special,Y
C - - - - - 0x024EFE 09:8EEE: C9 39     CMP #$39
C - - - - - 0x024F00 09:8EF0: F0 15     BEQ bra_8F07
C - - - - - 0x024F02 09:8EF2: A9 04     LDA #$04
C - - - - - 0x024F04 09:8EF4: 9D 20 05  STA ram_0520,X
C - - - - - 0x024F07 09:8EF7: A9 30     LDA #$30
C - - - - - 0x024F09 09:8EF9: 9D 60 05  STA ram_0560,X
C - - - - - 0x024F0C 09:8EFC: A9 00     LDA #$00
C - - - - - 0x024F0E 09:8EFE: 9D 80 05  STA ram_0580,X
C - - - - - 0x024F11 09:8F01: A9 04     LDA #$04
C - - - - - 0x024F13 09:8F03: 9D 40 05  STA ram_0540,X
bra_8F06_RTS:
C - - - - - 0x024F16 09:8F06: 60        RTS
bra_8F07:
C - - - - - 0x024F17 09:8F07: DE 60 05  DEC ram_0560,X
C - - - - - 0x024F1A 09:8F0A: D0 10     BNE bra_8F1C
C - - - - - 0x024F1C 09:8F0C: 20 DA 8E  JSR sub_8EDA
C - - - - - 0x024F1F 09:8F0F: A9 04     LDA #$04
C - - - - - 0x024F21 09:8F11: 20 3C DE  JSR sub_0x03DE4C
C - - - - - 0x024F24 09:8F14: 20 77 DE  JSR sub_0x03DE87
C - - - - - 0x024F27 09:8F17: A9 0C     LDA #$0C
C - - - - - 0x024F29 09:8F19: 20 94 F6  JSR sub_0x03F6A4_play_sound
bra_8F1C:
C - - - - - 0x024F2C 09:8F1C: A4 A9     LDY ram_object_index
C - - - - - 0x024F2E 09:8F1E: B9 34 04  LDA ram_X_pos_max_object + 4,Y
C - - - - - 0x024F31 09:8F21: D0 E3     BNE bra_8F06_RTS
C - - - - - 0x024F33 09:8F23: B9 44 04  LDA ram_X_pos_hi_special,Y
C - - - - - 0x024F36 09:8F26: DD 40 04  CMP ram_X_pos_hi_object,X
C - - - - - 0x024F39 09:8F29: F0 DB     BEQ bra_8F06_RTS
C - - - - - 0x024F3B 09:8F2B: A9 FF     LDA #$FF
C - - - - - 0x024F3D 09:8F2D: 90 02     BCC bra_8F31
C - - - - - 0x024F3F 09:8F2F: A9 01     LDA #$01
bra_8F31:
C - - - - - 0x024F41 09:8F31: 9D 80 04  STA ram_X_spd_hi_object,X
C - - - - - 0x024F44 09:8F34: A9 00     LDA #$00
C - - - - - 0x024F46 09:8F36: 9D 90 04  STA ram_X_spd_lo_object,X
C - - - - - 0x024F49 09:8F39: 60        RTS



sub_8F3A:
C - - - - - 0x024F4A 09:8F3A: 20 20 DE  JSR sub_0x03DE30
C - - - - - 0x024F4D 09:8F3D: A9 00     LDA #$00
C - - - - - 0x024F4F 09:8F3F: 9D 10 06  STA ram_0610,X
C - - - - - 0x024F52 09:8F42: 9D D0 05  STA ram_05D0,X
C - - - - - 0x024F55 09:8F45: 9D 08 06  STA ram_0608,X
C - - - - - 0x024F58 09:8F48: 9D 0A 06  STA ram_060A,X
C - - - - - 0x024F5B 09:8F4B: 9D 7A 06  STA ram_067A,X
C - - - - - 0x024F5E 09:8F4E: A4 A9     LDY ram_object_index
C - - - - - 0x024F60 09:8F50: 20 18 D2  JSR sub_0x03D228
C - - - - - 0x024F63 09:8F53: A9 80     LDA #$80
C - - - - - 0x024F65 09:8F55: 1D 80 05  ORA ram_0580,X
C - - - - - 0x024F68 09:8F58: 9D 80 05  STA ram_0580,X
C - - - - - 0x024F70 09:8F60: 4C 73 D0  JMP loc_0x03D083



sub_8F63:
C - - - - - 0x024F73 09:8F63: BD 00 06  LDA ram_0600,X
C - - - - - 0x024F76 09:8F66: 10 3F     BPL bra_8FA7_RTS
C - - - - - 0x024F78 09:8F68: 4C DB 84  JMP loc_84DB



tbl_8F6B:
- - - - - - 0x024F7B 09:8F6B: 00        .byte $00   ; bzk возможно unused
- D 0 - - - 0x024F7C 09:8F6C: FD        .byte $FD   ; 
- D 0 - - - 0x024F7D 09:8F6D: FB        .byte $FB   ; 



loc_8F6E:
C D 0 - - - 0x024F7E 09:8F6E: A4 A9     LDY ram_object_index
C - - - - - 0x024F80 09:8F70: 20 18 D2  JSR sub_0x03D228
C - - - - - 0x024F83 09:8F73: A9 B0     LDA #$B0
C - - - - - 0x024F85 09:8F75: 9D 10 04  STA ram_Y_pos_hi_object,X
C - - - - - 0x024F88 09:8F78: 20 FB DE  JSR sub_0x03DF0B
C - - - - - 0x024F8B 09:8F7B: 20 B1 8F  JSR sub_8FB1
C - - - - - 0x024F8E 09:8F7E: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x024F91 09:8F81: 9D 60 05  STA ram_0560,X
C - - - - - 0x024F94 09:8F84: 9D D0 05  STA ram_05D0,X
C - - - - - 0x024F97 09:8F87: BC C0 04  LDY ram_04C0,X
C - - - - - 0x024F9A 09:8F8A: C0 04     CPY #$04
C - - - - - 0x024F9C 09:8F8C: F0 1A     BEQ bra_8FA8
C - - - - - 0x024F9E 09:8F8E: C0 02     CPY #$02
C - - - - - 0x024FA0 09:8F90: D0 19     BNE bra_8FAB
C - - - - - 0x024FA2 09:8F92: A9 07     LDA #$07
C - - - - - 0x024FA4 09:8F94: 20 7F 84  JSR sub_847F
C - - - - - 0x024FA7 09:8F97: A9 01     LDA #$01
C - - - - - 0x024FA9 09:8F99: 9D 40 05  STA ram_0540,X
sub_8F9C:
C - - - - - 0x024FAC 09:8F9C: A4 A9     LDY ram_object_index
C - - - - - 0x024FAE 09:8F9E: B9 54 05  LDA ram_id_special,Y
C - - - - - 0x024FB1 09:8FA1: 19 10 06  ORA ram_0610,Y
C - - - - - 0x024FB4 09:8FA4: 4C 9F FE  JMP loc_0x03FEAF
bra_8FA7_RTS:
C - - - - - 0x024FB7 09:8FA7: 60        RTS
bra_8FA8:
C - - - - - 0x024FB8 09:8FA8: 20 FC DD  JSR sub_0x03DE0C
bra_8FAB:
loc_8FAB:
C D 0 - - - 0x024FBB 09:8FAB: 20 9C 8F  JSR sub_8F9C
C - - - - - 0x024FBE 09:8FAE: 20 6D 84  JSR sub_846D
sub_8FB1:
C - - - - - 0x024FC1 09:8FB1: BD 80 05  LDA ram_0580,X
C - - - - - 0x024FC4 09:8FB4: 29 5F     AND #$5F
C - - - - - 0x024FC6 09:8FB6: 9D 80 05  STA ram_0580,X
C - - - - - 0x024FC9 09:8FB9: 60        RTS



loc_8FBA:
C D 0 - - - 0x024FCA 09:8FBA: BC B0 04  LDY ram_04B0,X
C - - - - - 0x024FCD 09:8FBD: B9 B4 99  LDA tbl_99B4,Y
C - - - - - 0x024FD0 09:8FC0: 9D 60 04  STA ram_Y_spd_hi_object,X
C - - - - - 0x024FD3 09:8FC3: A9 00     LDA #$00
C - - - - - 0x024FD5 09:8FC5: 9D 70 04  STA ram_Y_spd_lo_object,X
C - - - - - 0x024FD8 09:8FC8: 60        RTS



ofs_8FC9_09:
C - - J - - 0x024FD9 09:8FC9: 20 CF 8F  JSR sub_8FCF
C - - - - - 0x024FDC 09:8FCC: 4C 9A 91  JMP loc_919A



sub_8FCF:
C - - - - - 0x024FDF 09:8FCF: BD 50 05  LDA ram_id_object,X
C - - - - - 0x024FE2 09:8FD2: C9 01     CMP #$01
C - - - - - 0x024FE4 09:8FD4: F0 1F     BEQ bra_8FF5
C - - - - - 0x024FE6 09:8FD6: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x024FE9 09:8FD9: 0A        ASL
C - - - - - 0x024FEA 09:8FDA: 0A        ASL
C - - - - - 0x024FEB 09:8FDB: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x024FEE 09:8FDE: B0 08     BCS bra_8FE8
C - - - - - 0x024FF0 09:8FE0: C9 30     CMP #$30
C - - - - - 0x024FF2 09:8FE2: B0 11     BCS bra_8FF5
C - - - - - 0x024FF4 09:8FE4: A9 01     LDA #$01
C - - - - - 0x024FF6 09:8FE6: D0 06     BNE bra_8FEE
bra_8FE8:
C - - - - - 0x024FF8 09:8FE8: C9 D0     CMP #$D0
C - - - - - 0x024FFA 09:8FEA: 90 09     BCC bra_8FF5
C - - - - - 0x024FFC 09:8FEC: A9 FF     LDA #$FF
bra_8FEE:
C - - - - - 0x024FFE 09:8FEE: 18        CLC
C - - - - - 0x024FFF 09:8FEF: 7D 40 04  ADC ram_X_pos_hi_object,X
C - - - - - 0x025002 09:8FF2: 9D 40 04  STA ram_X_pos_hi_object,X
bra_8FF5:
C - - - - - 0x025005 09:8FF5: BC 40 05  LDY ram_0540,X
C - - - - - 0x025008 09:8FF8: D0 25     BNE bra_901F
C - - - - - 0x02500A 09:8FFA: A4 A9     LDY ram_object_index
C - - - - - 0x02500C 09:8FFC: A9 80     LDA #$80
C - - - - - 0x02500E 09:8FFE: 9D 80 05  STA ram_0580,X
C - - - - - 0x025011 09:9001: 99 80 05  STA ram_0580,Y
C - - - - - 0x025014 09:9004: 0A        ASL
C - - - - - 0x025015 09:9005: 9D D0 05  STA ram_05D0,X
C - - - - - 0x025018 09:9008: 9D D0 04  STA ram_04D0,X
C - - - - - 0x02501B 09:900B: A9 C0     LDA #$C0
C - - - - - 0x02501D 09:900D: 9D E0 04  STA ram_04E0,X
C - - - - - 0x025020 09:9010: A9 0A     LDA #$0A
C - - - - - 0x025022 09:9012: 99 20 05  STA ram_0520,Y
C - - - - - 0x025025 09:9015: A9 00     LDA #$00
C - - - - - 0x025027 09:9017: 99 40 05  STA ram_0540,Y
C - - - - - 0x02502A 09:901A: FE 40 05  INC ram_0540,X
C - - - - - 0x02502D 09:901D: D0 29     BNE bra_9048
bra_901F:
C - - - - - 0x02502F 09:901F: 88        DEY
C - - - - - 0x025030 09:9020: F0 03     BEQ bra_9025
C - - - - - 0x025032 09:9022: 4C 77 91  JMP loc_9177
bra_9025:
C - - - - - 0x025035 09:9025: BD 60 05  LDA ram_0560,X
C - - - - - 0x025038 09:9028: C9 80     CMP #$80
C - - - - - 0x02503A 09:902A: D0 14     BNE bra_9040
C - - - - - 0x02503C 09:902C: BD 50 05  LDA ram_id_object,X
C - - - - - 0x02503F 09:902F: C9 01     CMP #$01
C - - - - - 0x025041 09:9031: F0 03     BEQ bra_9036
C - - - - - 0x025043 09:9033: 4C 6B 91  JMP loc_916B
bra_9036:
C - - - - - 0x025046 09:9036: A9 08     LDA #$08
C - - - - - 0x025048 09:9038: 9D 60 05  STA ram_0560,X
C - - - - - 0x02504B 09:903B: A9 00     LDA #$00
C - - - - - 0x02504D 09:903D: 9D D0 05  STA ram_05D0,X
bra_9040:
C - - - - - 0x025050 09:9040: DE 60 05  DEC ram_0560,X
C - - - - - 0x025053 09:9043: D0 5F     BNE bra_90A4
C - - - - - 0x025055 09:9045: FE D0 05  INC ram_05D0,X
bra_9048:
C - - - - - 0x025058 09:9048: 20 A4 90  JSR sub_90A4
C - - - - - 0x02505B 09:904B: BD 40 05  LDA ram_0540,X
C - - - - - 0x02505E 09:904E: C9 02     CMP #$02
C - - - - - 0x025060 09:9050: F0 51     BEQ bra_90A3_RTS
C - - - - - 0x025062 09:9052: B9 4D 97  LDA tbl_974C + 1,Y
C - - - - - 0x025065 09:9055: 85 08     STA ram_0008
C - - - - - 0x025067 09:9057: 29 9F     AND #$9F
C - - - - - 0x025069 09:9059: 9D 60 05  STA ram_0560,X
C - - - - - 0x02506C 09:905C: AC 26 01  LDY ram_option_speed
C - - - - - 0x02506F 09:905F: F0 1A     BEQ bra_907B
C - - - - - 0x025071 09:9061: A8        TAY
C - - - - - 0x025072 09:9062: 29 80     AND #$80
C - - - - - 0x025074 09:9064: 85 09     STA ram_0009
C - - - - - 0x025076 09:9066: 98        TYA
C - - - - - 0x025077 09:9067: 29 1F     AND #$1F
C - - - - - 0x025079 09:9069: A8        TAY
C - - - - - 0x02507A 09:906A: 4A        LSR
C - - - - - 0x02507B 09:906B: 4A        LSR
C - - - - - 0x02507C 09:906C: 85 0A     STA ram_000A
C - - - - - 0x02507E 09:906E: 98        TYA
C - - - - - 0x02507F 09:906F: 38        SEC
C - - - - - 0x025080 09:9070: E5 0A     SBC ram_000A
C - - - - - 0x025082 09:9072: D0 02     BNE bra_9076
- - - - - - 0x025084 09:9074: A9 01     LDA #$01
bra_9076:
C - - - - - 0x025086 09:9076: 05 09     ORA ram_0009
C - - - - - 0x025088 09:9078: 9D 60 05  STA ram_0560,X
bra_907B:
C - - - - - 0x02508B 09:907B: A5 08     LDA ram_0008
C - - - - - 0x02508D 09:907D: 0A        ASL
C - - - - - 0x02508E 09:907E: 0A        ASL
C - - - - - 0x02508F 09:907F: 10 05     BPL bra_9086
C - - - - - 0x025091 09:9081: A9 20     LDA #$20
C - - - - - 0x025093 09:9083: 8D 30 06  STA ram_0630
bra_9086:
C - - - - - 0x025096 09:9086: 90 1B     BCC bra_90A3_RTS
C - - - - - 0x025098 09:9088: 20 03 FF  JSR sub_0x03FF13
C - - - - - 0x02509B 09:908B: A9 1C     LDA #$1C
C - - - - - 0x02509D 09:908D: 20 94 F6  JSR sub_0x03F6A4_play_sound
C - - - - - 0x0250A0 09:9090: A6 AD     LDX ram_00AD
C - - - - - 0x0250A2 09:9092: BD 50 05  LDA ram_id_object,X
C - - - - - 0x0250A5 09:9095: C9 04     CMP #$04
C - - - - - 0x0250A7 09:9097: D0 05     BNE bra_909E
C - - - - - 0x0250A9 09:9099: A9 B0     LDA #$B0
C - - - - - 0x0250AB 09:909B: 99 10 04  STA ram_Y_pos_hi_object,Y
bra_909E:
C - - - - - 0x0250AE 09:909E: A9 02     LDA #$02
C - - - - - 0x0250B0 09:90A0: 99 40 05  STA ram_0540,Y
bra_90A3_RTS:
C - - - - - 0x0250B3 09:90A3: 60        RTS



bra_90A4:
sub_90A4:
loc_90A4:
C D 0 - - - 0x0250B4 09:90A4: BC 50 05  LDY ram_id_fighter,X
C - - - - - 0x0250B7 09:90A7: BD D0 05  LDA ram_05D0,X
C - - - - - 0x0250BA 09:90AA: 0A        ASL
C - - - - - 0x0250BB 09:90AB: 0A        ASL
C - - - - - 0x0250BC 09:90AC: 79 45 97  ADC tbl_9745,Y
C - - - - - 0x0250BF 09:90AF: A8        TAY
C - - - - - 0x0250C0 09:90B0: 85 1F     STA ram_001F
C - - - - - 0x0250C2 09:90B2: B9 4C 97  LDA tbl_974C,Y
C - - - - - 0x0250C5 09:90B5: D0 06     BNE bra_90BD
C - - - - - 0x0250C7 09:90B7: 20 5D 91  JSR sub_915D
C - - - - - 0x0250CA 09:90BA: 4C 30 91  JMP loc_9130
bra_90BD:
C - - - - - 0x0250CD 09:90BD: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x0250D0 09:90C0: 18        CLC
C - - - - - 0x0250D1 09:90C1: B9 4E 97  LDA tbl_974C + 2,Y
C - - - - - 0x0250D4 09:90C4: 85 01     STA ram_0001
C - - - - - 0x0250D6 09:90C6: 18        CLC
C - - - - - 0x0250D7 09:90C7: B9 4F 97  LDA tbl_974C + 3,Y
C - - - - - 0x0250DA 09:90CA: 7D 10 04  ADC ram_Y_pos_hi_object,X
C - - - - - 0x0250DD 09:90CD: 85 02     STA ram_0002
C - - - - - 0x0250DF 09:90CF: 20 8C 91  JSR sub_918C
C - - - - - 0x0250E2 09:90D2: F0 03     BEQ bra_90D7
C - - - - - 0x0250E4 09:90D4: 4C 30 91  JMP loc_9130
bra_90D7:
C - - - - - 0x0250E7 09:90D7: A5 02     LDA ram_0002
C - - - - - 0x0250E9 09:90D9: 99 10 04  STA ram_Y_pos_hi_object,Y
C - - - - - 0x0250EC 09:90DC: BD 50 05  LDA ram_id_object,X
C - - - - - 0x0250EF 09:90DF: C9 01     CMP #$01
C - - - - - 0x0250F1 09:90E1: D0 3A     BNE bra_911D
C - - - - - 0x0250F3 09:90E3: DE D0 04  DEC ram_04D0,X
C - - - - - 0x0250F6 09:90E6: 10 1A     BPL bra_9102
C - - - - - 0x0250F8 09:90E8: A9 14     LDA #$14
C - - - - - 0x0250FA 09:90EA: 9D D0 04  STA ram_04D0,X
C - - - - - 0x0250FD 09:90ED: A9 17     LDA #$17
C - - - - - 0x0250FF 09:90EF: 20 94 F6  JSR sub_0x03F6A4_play_sound
C - - - - - 0x025102 09:90F2: A9 07     LDA #$07
C - - - - - 0x025104 09:90F4: A6 A9     LDX ram_object_index
C - - - - - 0x025106 09:90F6: 20 3C DE  JSR sub_0x03DE4C
C - - - - - 0x025109 09:90F9: 20 A2 DE  JSR sub_0x03DEB2
C - - - - - 0x02510C 09:90FC: 90 52     BCC bra_9150
C - - - - - 0x02510E 09:90FE: A6 A8     LDX ram_00A8
C - - - - - 0x025110 09:9100: A4 A9     LDY ram_object_index
bra_9102:
C - - - - - 0x025112 09:9102: B9 8E 00  LDA ram_btn_press,Y
C - - - - - 0x025115 09:9105: F0 0B     BEQ bra_9112
C - - - - - 0x025117 09:9107: BD E0 04  LDA ram_04E0,X
C - - - - - 0x02511A 09:910A: 38        SEC
C - - - - - 0x02511B 09:910B: E9 02     SBC #$02
C - - - - - 0x02511D 09:910D: 90 24     BCC bra_9133
C - - - - - 0x02511F 09:910F: 9D E0 04  STA ram_04E0,X
bra_9112:
C - - - - - 0x025122 09:9112: BD E0 04  LDA ram_04E0,X
C - - - - - 0x025125 09:9115: 38        SEC
C - - - - - 0x025126 09:9116: E9 01     SBC #$01
C - - - - - 0x025128 09:9118: 9D E0 04  STA ram_04E0,X
C - - - - - 0x02512B 09:911B: 90 16     BCC bra_9133
bra_911D:
C - - - - - 0x02512D 09:911D: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x025130 09:9120: 0A        ASL
C - - - - - 0x025131 09:9121: 0A        ASL
C - - - - - 0x025132 09:9122: A5 01     LDA ram_0001
C - - - - - 0x025134 09:9124: 90 03     BCC bra_9129
C - - - - - 0x025136 09:9126: 20 FC D1  JSR sub_0x03D20C_reverse_byte
bra_9129:
C - - - - - 0x025139 09:9129: 18        CLC
C - - - - - 0x02513A 09:912A: 7D 40 04  ADC ram_X_pos_hi_object,X
C - - - - - 0x02513D 09:912D: 99 40 04  STA ram_X_pos_hi_object,Y
loc_9130:
C D 0 - - - 0x025140 09:9130: A4 1F     LDY ram_001F
bra_9132_RTS:
C - - - - - 0x025142 09:9132: 60        RTS
bra_9133:
C - - - - - 0x025143 09:9133: 20 69 B0  JSR sub_B069
C - - - - - 0x025146 09:9136: A9 1C     LDA #$1C
C - - - - - 0x025148 09:9138: 20 94 F6  JSR sub_0x03F6A4_play_sound
C - - - - - 0x02514B 09:913B: A9 02     LDA #$02
C - - - - - 0x02514D 09:913D: 99 40 05  STA ram_0540,Y
sub_9140:
C - - - - - 0x025150 09:9140: A6 AD     LDX ram_00AD
C - - - - - 0x025152 09:9142: 20 6B 91  JSR sub_916B
C - - - - - 0x025155 09:9145: A9 28     LDA #$28
C - - - - - 0x025157 09:9147: 20 0E E1  JSR sub_0x03E11E
C - - - - - 0x02515A 09:914A: A9 A2     LDA #$A2
C - - - - - 0x02515C 09:914C: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x02515F 09:914F: 60        RTS
bra_9150:
C - - - - - 0x025160 09:9150: A6 A8     LDX ram_00A8
C - - - - - 0x025162 09:9152: 20 69 B0  JSR sub_B069
C - - - - - 0x025165 09:9155: 20 40 91  JSR sub_9140
C - - - - - 0x025168 09:9158: A6 A9     LDX ram_object_index
C - - - - - 0x02516A 09:915A: 20 7C DE  JSR sub_0x03DE8C
sub_915D:
C - - - - - 0x02516D 09:915D: B9 4D 97  LDA tbl_974C + 1,Y
C - - - - - 0x025170 09:9160: 20 94 F6  JSR sub_0x03F6A4_play_sound
C - - - - - 0x025173 09:9163: A6 AD     LDX ram_00AD
C - - - - - 0x025175 09:9165: FE D0 05  INC ram_05D0,X
C - - - - - 0x025178 09:9168: 4C A4 90  JMP loc_90A4



loc_916B:
sub_916B:
C D 0 - - - 0x02517B 09:916B: A9 14     LDA #$14
C - - - - - 0x02517D 09:916D: 20 0E E1  JSR sub_0x03E11E
C - - - - - 0x025180 09:9170: 9D 60 05  STA ram_0560,X
C - - - - - 0x025183 09:9173: FE 40 05  INC ram_0540,X
C - - - - - 0x025186 09:9176: 60        RTS



loc_9177:
C D 0 - - - 0x025187 09:9177: DE 60 05  DEC ram_0560,X
C - - - - - 0x02518A 09:917A: D0 B6     BNE bra_9132_RTS
C - - - - - 0x02518C 09:917C: A9 00     LDA #$00
C - - - - - 0x02518E 09:917E: 9D 80 05  STA ram_0580,X
C - - - - - 0x025191 09:9181: 20 18 D2  JSR sub_0x03D228
C - - - - - 0x025194 09:9184: A0 01     LDY #$01
C - - - - - 0x025196 09:9186: 20 E7 8A  JSR sub_8AE7
C - - - - - 0x025199 09:9189: 4C 6D 84  JMP loc_846D



sub_918C:
C - - - - - 0x02519C 09:918C: A4 A9     LDY ram_object_index
C - - - - - 0x02519E 09:918E: B9 20 05  LDA ram_0520,Y
C - - - - - 0x0251A1 09:9191: C9 0A     CMP #$0A
C - - - - - 0x0251A3 09:9193: D0 72     BNE bra_9207_RTS
C - - - - - 0x0251A5 09:9195: B9 40 05  LDA ram_0540,Y
C - - - - - 0x0251A8 09:9198: 4A        LSR
C - - - - - 0x0251A9 09:9199: 60        RTS



loc_919A:
C D 0 - - - 0x0251AA 09:919A: BD 20 05  LDA ram_0520,X
C - - - - - 0x0251AD 09:919D: C9 09     CMP #$09
C - - - - - 0x0251AF 09:919F: D0 66     BNE bra_9207_RTS
C - - - - - 0x0251B1 09:91A1: 20 8C 91  JSR sub_918C
C - - - - - 0x0251B4 09:91A4: D0 61     BNE bra_9207_RTS
C - - - - - 0x0251B6 09:91A6: BC 50 05  LDY ram_id_fighter,X
C - - - - - 0x0251B9 09:91A9: B9 3F 98  LDA tbl_983F,Y
C - - - - - 0x0251BC 09:91AC: 85 00     STA ram_0000
C - - - - - 0x0251BE 09:91AE: A4 A9     LDY ram_object_index
C - - - - - 0x0251C0 09:91B0: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x0251C3 09:91B3: 18        CLC
C - - - - - 0x0251C4 09:91B4: 65 00     ADC ram_0000
C - - - - - 0x0251C6 09:91B6: A8        TAY
C - - - - - 0x0251C7 09:91B7: B9 46 98  LDA tbl_9846,Y
C - - - - - 0x0251CA 09:91BA: 18        CLC
C - - - - - 0x0251CB 09:91BB: 7D D0 05  ADC ram_05D0,X
C - - - - - 0x0251CE 09:91BE: A8        TAY
C - - - - - 0x0251CF 09:91BF: B9 62 98  LDA tbl_9862,Y
C - - - - - 0x0251D2 09:91C2: A4 A9     LDY ram_object_index
C - - - - - 0x0251D4 09:91C4: 99 00 04  STA ram_anim_object,Y
C - - - - - 0x0251D7 09:91C7: BD 50 05  LDA ram_id_object,X
C - - - - - 0x0251DA 09:91CA: C9 04     CMP #$04
C - - - - - 0x0251DC 09:91CC: D0 19     BNE bra_91E7
C - - - - - 0x0251DE 09:91CE: BD D0 05  LDA ram_05D0,X
C - - - - - 0x0251E1 09:91D1: C9 05     CMP #$05
C - - - - - 0x0251E3 09:91D3: 90 12     BCC bra_91E7
C - - - - - 0x0251E5 09:91D5: B9 50 05  LDA ram_id_fighter,Y
C - - - - - 0x0251E8 09:91D8: A8        TAY
C - - - - - 0x0251E9 09:91D9: B9 E1 98  LDA tbl_98E1,Y
C - - - - - 0x0251EC 09:91DC: 85 00     STA ram_0000
C - - - - - 0x0251EE 09:91DE: A4 A9     LDY ram_object_index
C - - - - - 0x0251F0 09:91E0: 18        CLC
C - - - - - 0x0251F1 09:91E1: 79 10 04  ADC ram_Y_pos_hi_fighter,Y
C - - - - - 0x0251F4 09:91E4: 99 10 04  STA ram_Y_pos_hi_fighter,Y
bra_91E7:
C - - - - - 0x0251F7 09:91E7: BD 50 05  LDA ram_id_fighter,X
C - - - - - 0x0251FA 09:91EA: A8        TAY
C - - - - - 0x0251FB 09:91EB: BD D0 05  LDA ram_05D0,X
C - - - - - 0x0251FE 09:91EE: 18        CLC
C - - - - - 0x0251FF 09:91EF: 79 18 98  ADC tbl_9818,Y
C - - - - - 0x025202 09:91F2: A8        TAY
C - - - - - 0x025203 09:91F3: B9 1F 98  LDA tbl_981F,Y
C - - - - - 0x025206 09:91F6: 48        PHA
C - - - - - 0x025207 09:91F7: A6 A9     LDX ram_object_index
C - - - - - 0x025209 09:91F9: 20 18 D2  JSR sub_0x03D228
C - - - - - 0x02520C 09:91FC: 68        PLA
C - - - - - 0x02520D 09:91FD: A4 A9     LDY ram_object_index
C - - - - - 0x02520F 09:91FF: 59 10 05  EOR ram_turn_side_object,Y
C - - - - - 0x025212 09:9202: 99 10 05  STA ram_turn_side_object,Y
C - - - - - 0x025215 09:9205: A6 A8     LDX ram_00A8
bra_9207_RTS:
C - - - - - 0x025217 09:9207: 60        RTS



ofs_9208_0A:
C - - J - - 0x025218 09:9208: BD 40 05  LDA ram_0540,X
C - - - - - 0x02521B 09:920B: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x02521E 09:920E: 1A 92     .word ofs_921A_00
- D 0 - I - 0x025220 09:9210: 2A 92     .word ofs_922A_01
- D 0 - I - 0x025222 09:9212: 37 92     .word ofs_9237_02
- D 0 - I - 0x025224 09:9214: 83 92     .word ofs_9283_03
- D 0 - I - 0x025226 09:9216: 83 92     .word ofs_9283_04
- D 0 - I - 0x025228 09:9218: FB 92     .word ofs_92FB_05



ofs_921A_00:
C - - J - - 0x02522A 09:921A: 20 20 DE  JSR sub_0x03DE30
C - - - - - 0x02522D 09:921D: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x025230 09:9220: 9D 10 06  STA ram_0610,X
C - - - - - 0x025233 09:9223: 9D 7A 06  STA ram_067A,X
C - - - - - 0x025236 09:9226: FE 40 05  INC ram_0540,X
C - - - - - 0x025239 09:9229: 60        RTS



ofs_922A_01:
C - - J - - 0x02523A 09:922A: A4 A9     LDY ram_object_index
C - - - - - 0x02523C 09:922C: B9 20 05  LDA ram_0520,Y
C - - - - - 0x02523F 09:922F: C9 09     CMP #$09
C - - - - - 0x025241 09:9231: F0 03     BEQ bra_9236_RTS
- - - - - - 0x025243 09:9233: FE 40 05  INC ram_0540,X
bra_9236_RTS:
C - - - - - 0x025246 09:9236: 60        RTS



ofs_9237_02:
C - - J - - 0x025247 09:9237: 1E 10 05  ASL ram_turn_side_object,X
C - - - - - 0x02524A 09:923A: 5E 10 05  LSR ram_turn_side_object,X
C - - - - - 0x02524D 09:923D: A4 A9     LDY ram_object_index
C - - - - - 0x02524F 09:923F: B9 50 05  LDA ram_id_fighter,Y
C - - - - - 0x025252 09:9242: A8        TAY
C - - - - - 0x025253 09:9243: B9 DA 98  LDA tbl_98DA,Y
C - - - - - 0x025256 09:9246: A8        TAY
C - - - - - 0x025257 09:9247: A9 00     LDA #$00
loc_9249:
C D 0 - - - 0x025259 09:9249: 9D 60 05  STA ram_0560,X
C - - - - - 0x02525C 09:924C: 98        TYA
C - - - - - 0x02525D 09:924D: 9D 60 04  STA ram_Y_spd_hi_object,X
C - - - - - 0x025260 09:9250: FE 40 05  INC ram_0540,X
sub_9253:
C - - - - - 0x025263 09:9253: A0 0B     LDY #$0B
C - - - - - 0x025265 09:9255: BD 60 05  LDA ram_0560,X
C - - - - - 0x025268 09:9258: F0 04     BEQ bra_925E
C - - - - - 0x02526A 09:925A: 88        DEY
C - - - - - 0x02526B 09:925B: DE 60 05  DEC ram_0560,X
bra_925E:
C - - - - - 0x02526E 09:925E: 20 E7 8A  JSR sub_8AE7
C - - - - - 0x025271 09:9261: 20 18 D2  JSR sub_0x03D228
C - - - - - 0x025274 09:9264: 20 65 DD  JSR sub_0x03DD75
C - - - - - 0x025277 09:9267: A4 A9     LDY ram_object_index
C - - - - - 0x025279 09:9269: B9 50 05  LDA ram_id_fighter,Y
C - - - - - 0x02527C 09:926C: A8        TAY
C - - - - - 0x02527D 09:926D: B9 D3 98  LDA tbl_98D3,Y
C - - - - - 0x025280 09:9270: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x025283 09:9273: A4 A9     LDY ram_object_index
C - - - - - 0x025285 09:9275: B9 50 05  LDA ram_id_fighter,Y
C - - - - - 0x025288 09:9278: C9 01     CMP #$01
C - - - - - 0x02528A 09:927A: F0 04     BEQ bra_9280
C - - - - - 0x02528C 09:927C: C9 04     CMP #$04
C - - - - - 0x02528E 09:927E: D0 B6     BNE bra_9236_RTS
bra_9280:
C - - - - - 0x025290 09:9280: 4C 65 DD  JMP loc_0x03DD75



ofs_9283_03:
ofs_9283_04:
C - - J - - 0x025293 09:9283: 20 53 92  JSR sub_9253
C - - - - - 0x025296 09:9286: 20 92 DC  JSR sub_0x03DCA2
C - - - - - 0x025299 09:9289: BD 60 04  LDA ram_Y_spd_hi_object,X
C - - - - - 0x02529C 09:928C: 30 A8     BMI bra_9236_RTS
C - - - - - 0x02529E 09:928E: 20 ED DC  JSR sub_0x03DCFD
C - - - - - 0x0252A1 09:9291: B0 A3     BCS bra_9236_RTS
C - - - - - 0x0252A3 09:9293: 20 73 D0  JSR sub_0x03D083
C - - - - - 0x0252A6 09:9296: BC 40 05  LDY ram_0540,X
C - - - - - 0x0252A9 09:9299: C0 03     CPY #$03
C - - - - - 0x0252AB 09:929B: D0 0B     BNE bra_92A8
C - - - - - 0x0252AD 09:929D: 20 DB 84  JSR sub_84DB
C - - - - - 0x0252B0 09:92A0: A9 20     LDA #$20
C - - - - - 0x0252B2 09:92A2: 8D 30 06  STA ram_0630
C - - - - - 0x0252B5 09:92A5: BC 40 05  LDY ram_0540,X
bra_92A8:
C - - - - - 0x0252B8 09:92A8: B9 71 93  LDA tbl_9371,Y
C - - - - - 0x0252BB 09:92AB: 20 94 F6  JSR sub_0x03F6A4_play_sound
C - - - - - 0x0252BE 09:92AE: BD 40 05  LDA ram_0540,X
C - - - - - 0x0252C1 09:92B1: C9 04     CMP #$04
C - - - - - 0x0252C3 09:92B3: B0 16     BCS bra_92CB
C - - - - - 0x0252C5 09:92B5: A4 A9     LDY ram_object_index
C - - - - - 0x0252C7 09:92B7: B9 50 05  LDA ram_id_fighter,Y
C - - - - - 0x0252CA 09:92BA: A8        TAY
C - - - - - 0x0252CB 09:92BB: B9 3E 97  LDA tbl_973E,Y
C - - - - - 0x0252CE 09:92BE: 20 3C DE  JSR sub_0x03DE4C
C - - - - - 0x0252D1 09:92C1: 20 BA DE  JSR sub_0x03DECA
C - - - - - 0x0252D4 09:92C4: A0 FD     LDY #$FD
C - - - - - 0x0252D6 09:92C6: A9 0A     LDA #$0A
C - - - - - 0x0252D8 09:92C8: 4C 49 92  JMP loc_9249
bra_92CB:
C - - - - - 0x0252DB 09:92CB: FE 40 05  INC ram_0540,X
C - - - - - 0x0252DE 09:92CE: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x0252E1 09:92D1: 9D C0 05  STA ram_05C0,X
C - - - - - 0x0252E4 09:92D4: A9 06     LDA #$06
C - - - - - 0x0252E6 09:92D6: 9D D0 05  STA ram_05D0,X
C - - - - - 0x0252E9 09:92D9: BC 50 05  LDY ram_id_fighter,X
C - - - - - 0x0252EC 09:92DC: B9 A2 99  LDA tbl_99A2,Y
C - - - - - 0x0252EF 09:92DF: 20 0E E1  JSR sub_0x03E11E
C - - - - - 0x0252F2 09:92E2: 9D 60 05  STA ram_0560,X
C - - - - - 0x0252F5 09:92E5: BC 50 05  LDY ram_id_fighter,X
C - - - - - 0x0252F8 09:92E8: C0 05     CPY #$05
C - - - - - 0x0252FA 09:92EA: F0 04     BEQ bra_92F0
C - - - - - 0x0252FC 09:92EC: C0 04     CPY #$04
C - - - - - 0x0252FE 09:92EE: D0 0A     BNE bra_92FA_RTS
bra_92F0:
C - - - - - 0x025300 09:92F0: A9 03     LDA #$03
C - - - - - 0x025302 09:92F2: 9D D0 05  STA ram_05D0,X
C - - - - - 0x025305 09:92F5: A9 00     LDA #$00
C - - - - - 0x025307 09:92F7: 9D 60 05  STA ram_0560,X
bra_92FA_RTS:
C - - - - - 0x02530A 09:92FA: 60        RTS



ofs_92FB_05:
C - - J - - 0x02530B 09:92FB: BD 50 05  LDA ram_id_object,X
C - - - - - 0x02530E 09:92FE: C9 06     CMP #$06
C - - - - - 0x025310 09:9300: F0 5A     BEQ bra_935C_shred
C - - - - - 0x025312 09:9302: C9 04     CMP #$04
C - - - - - 0x025314 09:9304: 90 59     BCC bra_935F_turtles
C - - - - - 0x025316 09:9306: DE 60 05  DEC ram_0560,X
C - - - - - 0x025319 09:9309: 10 1A     BPL bra_9325
C - - - - - 0x02531B 09:930B: DE D0 05  DEC ram_05D0,X
C - - - - - 0x02531E 09:930E: 30 3C     BMI bra_934C
C - - - - - 0x025320 09:9310: 38        SEC
C - - - - - 0x025321 09:9311: BD 50 05  LDA ram_id_object,X
C - - - - - 0x025324 09:9314: E9 04     SBC #$04
C - - - - - 0x025326 09:9316: 0A        ASL
C - - - - - 0x025327 09:9317: 0A        ASL
C - - - - - 0x025328 09:9318: 7D D0 05  ADC ram_05D0,X
C - - - - - 0x02532B 09:931B: A8        TAY
C - - - - - 0x02532C 09:931C: B9 6D 93  LDA tbl_936D,Y
C - - - - - 0x02532F 09:931F: 20 0E E1  JSR sub_0x03E11E
C - - - - - 0x025332 09:9322: 9D 60 05  STA ram_0560,X
bra_9325:
C - - - - - 0x025335 09:9325: BC D0 05  LDY ram_05D0,X
C - - - - - 0x025338 09:9328: B9 6A 93  LDA tbl_936A,Y
C - - - - - 0x02533B 09:932B: A8        TAY
C - - - - - 0x02533C 09:932C: 20 E7 8A  JSR sub_8AE7
C - - - - - 0x02533F 09:932F: A4 A9     LDY ram_object_index
C - - - - - 0x025341 09:9331: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x025344 09:9334: C9 04     CMP #$04
C - - - - - 0x025346 09:9336: B0 31     BCS bra_9369_RTS
C - - - - - 0x025348 09:9338: C9 01     CMP #$01
C - - - - - 0x02534A 09:933A: F0 2D     BEQ bra_9369_RTS
C - - - - - 0x02534C 09:933C: 20 18 D2  JSR sub_0x03D228
C - - - - - 0x02534F 09:933F: 4C 65 DD  JMP loc_0x03DD75
- - - - - - 0x025352 09:9342: A0 0A     LDY #$0A
- - - - - - 0x025354 09:9344: 20 E7 8A  JSR sub_8AE7
- - - - - - 0x025357 09:9347: DE 60 05  DEC ram_0560,X
- - - - - - 0x02535A 09:934A: 10 1D     BPL bra_9369_RTS
bra_934C:
C - - - - - 0x02535C 09:934C: A9 00     LDA #$00
C - - - - - 0x02535E 09:934E: 9D 80 05  STA ram_0580,X
C - - - - - 0x025361 09:9351: 20 18 D2  JSR sub_0x03D228
C - - - - - 0x025364 09:9354: A9 04     LDA #$04
C - - - - - 0x025366 09:9356: 9D F0 05  STA ram_05F0,X
C - - - - - 0x025369 09:9359: 4C 6D 84  JMP loc_846D
bra_935C_shred:
C - - - - - 0x02536C 09:935C: A0 0C     LDY #$0C
C - - - - - 0x02536E 09:935E: 2C        .byte $2C
bra_935F_turtles:
C - - - - - 0x02536F 09:935F:    A0 01  LDY #$01
C - - - - - 0x025371 09:9361: 20 4F DF  JSR sub_0x03DF5F
C - - - - - 0x025374 09:9364: BD C0 05  LDA ram_05C0,X
C - - - - - 0x025377 09:9367: 30 E3     BMI bra_934C
bra_9369_RTS:
C - - - - - 0x025379 09:9369: 60        RTS



tbl_936A:
- D 0 - - - 0x02537A 09:936A: 00        .byte $00   ; 00
- D 0 - - - 0x02537B 09:936B: 09        .byte $09   ; 01
- D 0 - - - 0x02537C 09:936C: 0A        .byte $0A   ; 02



tbl_936D:
- D 0 - - - 0x02537D 09:936D: 0C        .byte $0C   ; 00
- D 0 - - - 0x02537E 09:936E: 0C        .byte $0C   ; 01
- D 0 - - - 0x02537F 09:936F: 10        .byte $10   ; 02
- - - - - - 0x025380 09:9370: 00        .byte $00   ; 03 bzk возможно unused



tbl_9371:
- D 0 - - - 0x025381 09:9371: 0E        .byte $0E   ; 00
- D 0 - - - 0x025382 09:9372: 0E        .byte $0E   ; 01
- D 0 - - - 0x025383 09:9373: 12        .byte $12   ; 02
- D 0 - - - 0x025384 09:9374: 21        .byte $21   ; 03
- D 0 - - - 0x025385 09:9375: 21        .byte $21   ; 04
- - - - - - 0x025386 09:9376: 22        .byte $22   ; 05



tbl_9377:
- D 0 - - - 0x025387 09:9377: FB        .byte $FB   ; 00
- D 0 - - - 0x025388 09:9378: FD        .byte $FD   ; 01
- D 0 - - - 0x025389 09:9379: FE        .byte $FE   ; 02



tbl_937A:
- D 0 - - - 0x02538A 09:937A: 0D        .byte $0D   ; 00 Leo
- D 0 - - - 0x02538B 09:937B: 16        .byte $16   ; 01 Raph
- D 0 - - - 0x02538C 09:937C: 0D        .byte $0D   ; 02 Mike
- D 0 - - - 0x02538D 09:937D: 0E        .byte $0E   ; 03 Don
- D 0 - - - 0x02538E 09:937E: 0D        .byte $0D   ; 04 Casey
- D 0 - - - 0x02538F 09:937F: 09        .byte $09   ; 05 Hot
- D 0 - - - 0x025390 09:9380: 0E        .byte $0E   ; 06 Shred



tbl_9381:
- D 0 - - - 0x025391 09:9381: 0D        .byte $0D   ; 00 Leo
- D 0 - - - 0x025392 09:9382: 0F        .byte $0F   ; 01 Raph
- D 0 - - - 0x025393 09:9383: 0D        .byte $0D   ; 02 Mike
- D 0 - - - 0x025394 09:9384: 0D        .byte $0D   ; 03 Don
- D 0 - - - 0x025395 09:9385: 0D        .byte $0D   ; 04 Casey
- D 0 - - - 0x025396 09:9386: 0B        .byte $0B   ; 05 Hot
- D 0 - - - 0x025397 09:9387: 0A        .byte $0A   ; 06 Shred



tbl_9388:
- D 0 - - - 0x025398 09:9388: 06        .byte $06   ; 
- D 0 - - - 0x025399 09:9389: 06        .byte $06   ; 
- D 0 - - - 0x02539A 09:938A: 06        .byte $06   ; 
- D 0 - - - 0x02539B 09:938B: 06        .byte $06   ; 
- D 0 - - - 0x02539C 09:938C: 11        .byte $11   ; 
- D 0 - - - 0x02539D 09:938D: 18        .byte $18   ; 
- D 0 - - - 0x02539E 09:938E: 23        .byte $23   ; 
- D 0 - - - 0x02539F 09:938F: 00        .byte $00   ; 
- D 0 - - - 0x0253A0 09:9390: 00        .byte $00   ; 
- D 0 - - - 0x0253A1 09:9391: 00        .byte $00   ; 
- D 0 - - - 0x0253A2 09:9392: 00        .byte $00   ; 
- D 0 - - - 0x0253A3 09:9393: 0E        .byte $0E   ; 
- D 0 - - - 0x0253A4 09:9394: 19        .byte $19   ; 
- D 0 - - - 0x0253A5 09:9395: 24        .byte $24   ; 
- D 0 - - - 0x0253A6 09:9396: 02        .byte $02   ; 
- D 0 - - - 0x0253A7 09:9397: 02        .byte $02   ; 
- D 0 - - - 0x0253A8 09:9398: 02        .byte $02   ; 
- D 0 - - - 0x0253A9 09:9399: 02        .byte $02   ; 
- D 0 - - - 0x0253AA 09:939A: 0F        .byte $0F   ; 
- D 0 - - - 0x0253AB 09:939B: 1A        .byte $1A   ; 
- D 0 - - - 0x0253AC 09:939C: 27        .byte $27   ; 
- D 0 - - - 0x0253AD 09:939D: 04        .byte $04   ; 
- D 0 - - - 0x0253AE 09:939E: 04        .byte $04   ; 
- D 0 - - - 0x0253AF 09:939F: 04        .byte $04   ; 
- D 0 - - - 0x0253B0 09:93A0: 04        .byte $04   ; 
- D 0 - - - 0x0253B1 09:93A1: 10        .byte $10   ; 
- D 0 - - - 0x0253B2 09:93A2: 1B        .byte $1B   ; 
- D 0 - - - 0x0253B3 09:93A3: 28        .byte $28   ; 
- D 0 - - - 0x0253B4 09:93A4: 0C        .byte $0C   ; 
- D 0 - - - 0x0253B5 09:93A5: 0C        .byte $0C   ; 
- D 0 - - - 0x0253B6 09:93A6: 0C        .byte $0C   ; 
- D 0 - - - 0x0253B7 09:93A7: 0C        .byte $0C   ; 
- D 0 - - - 0x0253B8 09:93A8: 12        .byte $12   ; 
- D 0 - - - 0x0253B9 09:93A9: 21        .byte $21   ; 
- D 0 - - - 0x0253BA 09:93AA: 26        .byte $26   ; 
- D 0 - - - 0x0253BB 09:93AB: 0A        .byte $0A   ; 
- D 0 - - - 0x0253BC 09:93AC: 0A        .byte $0A   ; 
- D 0 - - - 0x0253BD 09:93AD: 0A        .byte $0A   ; 
- D 0 - - - 0x0253BE 09:93AE: 0A        .byte $0A   ; 
- - - - - - 0x0253BF 09:93AF: 0E        .byte $0E   ; 
- - - - - - 0x0253C0 09:93B0: 19        .byte $19   ; 
- - - - - - 0x0253C1 09:93B1: 25        .byte $25   ; 



tbl_93B2:
- D 0 - - - 0x0253C2 09:93B2: 01        .byte $01   ; 
- D 0 - - - 0x0253C3 09:93B3: 01        .byte $01   ; 
- D 0 - - - 0x0253C4 09:93B4: 01        .byte $01   ; 
- D 0 - - - 0x0253C5 09:93B5: 01        .byte $01   ; 
- D 0 - - - 0x0253C6 09:93B6: 13        .byte $13   ; 
- D 0 - - - 0x0253C7 09:93B7: 1C        .byte $1C   ; 
- D 0 - - - 0x0253C8 09:93B8: 29        .byte $29   ; 
- D 0 - - - 0x0253C9 09:93B9: 07        .byte $07   ; 
- D 0 - - - 0x0253CA 09:93BA: 08        .byte $08   ; 
- D 0 - - - 0x0253CB 09:93BB: 07        .byte $07   ; 
- D 0 - - - 0x0253CC 09:93BC: 08        .byte $08   ; 
- D 0 - - - 0x0253CD 09:93BD: 14        .byte $14   ; 
- D 0 - - - 0x0253CE 09:93BE: 1D        .byte $1D   ; 
- D 0 - - - 0x0253CF 09:93BF: 2A        .byte $2A   ; 
- D 0 - - - 0x0253D0 09:93C0: 03        .byte $03   ; 
- D 0 - - - 0x0253D1 09:93C1: 03        .byte $03   ; 
- D 0 - - - 0x0253D2 09:93C2: 03        .byte $03   ; 
- D 0 - - - 0x0253D3 09:93C3: 03        .byte $03   ; 
- D 0 - - - 0x0253D4 09:93C4: 15        .byte $15   ; 
- D 0 - - - 0x0253D5 09:93C5: 1E        .byte $1E   ; 
- D 0 - - - 0x0253D6 09:93C6: 2B        .byte $2B   ; 
- D 0 - - - 0x0253D7 09:93C7: 09        .byte $09   ; 
- D 0 - - - 0x0253D8 09:93C8: 05        .byte $05   ; 
- D 0 - - - 0x0253D9 09:93C9: 05        .byte $05   ; 
- D 0 - - - 0x0253DA 09:93CA: 05        .byte $05   ; 
- D 0 - - - 0x0253DB 09:93CB: 16        .byte $16   ; 
- D 0 - - - 0x0253DC 09:93CC: 1F        .byte $1F   ; 
- D 0 - - - 0x0253DD 09:93CD: 2C        .byte $2C   ; 
- D 0 - - - 0x0253DE 09:93CE: 0B        .byte $0B   ; 
- D 0 - - - 0x0253DF 09:93CF: 0B        .byte $0B   ; 
- D 0 - - - 0x0253E0 09:93D0: 0B        .byte $0B   ; 
- D 0 - - - 0x0253E1 09:93D1: 0B        .byte $0B   ; 
- D 0 - - - 0x0253E2 09:93D2: 17        .byte $17   ; 
- D 0 - - - 0x0253E3 09:93D3: 22        .byte $22   ; 
- D 0 - - - 0x0253E4 09:93D4: 2D        .byte $2D   ; 
- D 0 - - - 0x0253E5 09:93D5: 0D        .byte $0D   ; 
- D 0 - - - 0x0253E6 09:93D6: 0D        .byte $0D   ; 
- D 0 - - - 0x0253E7 09:93D7: 0D        .byte $0D   ; 
- D 0 - - - 0x0253E8 09:93D8: 0D        .byte $0D   ; 
- - - - - - 0x0253E9 09:93D9: 14        .byte $14   ; 
- - - - - - 0x0253EA 09:93DA: 1D        .byte $1D   ; 
- - - - - - 0x0253EB 09:93DB: 29        .byte $29   ; 



tbl_93DC:
- D 0 - - - 0x0253EC 09:93DC: 00        .byte $00   ; 
- D 0 - - - 0x0253ED 09:93DD: 00        .byte $00   ; 
- D 0 - - - 0x0253EE 09:93DE: 00        .byte $00   ; 
- D 0 - - - 0x0253EF 09:93DF: 00        .byte $00   ; 
- D 0 - - - 0x0253F0 09:93E0: 09        .byte $09   ; 
- D 0 - - - 0x0253F1 09:93E1: 0E        .byte $0E   ; 
- D 0 - - - 0x0253F2 09:93E2: 15        .byte $15   ; 



tbl_93E3:
- D 0 - - - 0x0253F3 09:93E3: 80        .byte $80   ; 
tbl_93E4:
- D 0 - - - 0x0253F4 09:93E4: 06        .byte $06   ; 
- D 0 - - - 0x0253F5 09:93E5: 81        .byte $81   ; 
- D 0 - - - 0x0253F6 09:93E6: 06        .byte $06   ; 
- D 0 - - - 0x0253F7 09:93E7: 82        .byte $82   ; 
- D 0 - - - 0x0253F8 09:93E8: 06        .byte $06   ; 
- D 0 - - - 0x0253F9 09:93E9: 81        .byte $81   ; 
- D 0 - - - 0x0253FA 09:93EA: 06        .byte $06   ; 
- D 0 - - - 0x0253FB 09:93EB: 00        .byte $00   ; 
- D 0 - - - 0x0253FC 09:93EC: 80        .byte $80   ; 
- D 0 - - - 0x0253FD 09:93ED: 10        .byte $10   ; 
- D 0 - - - 0x0253FE 09:93EE: 81        .byte $81   ; 
- D 0 - - - 0x0253FF 09:93EF: 10        .byte $10   ; 
- D 0 - - - 0x025400 09:93F0: 00        .byte $00   ; 
- D 0 - - - 0x025401 09:93F1: 80        .byte $80   ; 
- D 0 - - - 0x025402 09:93F2: 0C        .byte $0C   ; 
- D 0 - - - 0x025403 09:93F3: 81        .byte $81   ; 
- D 0 - - - 0x025404 09:93F4: 0C        .byte $0C   ; 
- D 0 - - - 0x025405 09:93F5: 82        .byte $82   ; 
- D 0 - - - 0x025406 09:93F6: 0C        .byte $0C   ; 
- D 0 - - - 0x025407 09:93F7: 00        .byte $00   ; 
- D 0 - - - 0x025408 09:93F8: 80        .byte $80   ; 
- D 0 - - - 0x025409 09:93F9: 0A        .byte $0A   ; 
- D 0 - - - 0x02540A 09:93FA: 81        .byte $81   ; 
- D 0 - - - 0x02540B 09:93FB: 0A        .byte $0A   ; 
- D 0 - - - 0x02540C 09:93FC: 82        .byte $82   ; 
- D 0 - - - 0x02540D 09:93FD: 0A        .byte $0A   ; 
- D 0 - - - 0x02540E 09:93FE: 81        .byte $81   ; 
- D 0 - - - 0x02540F 09:93FF: 0A        .byte $0A   ; 
- D 0 - - - 0x025410 09:9400: 00        .byte $00   ; 



tbl_9401:
- D 0 - - - 0x025411 09:9401: 5D 94     .word _off005_945D_00
- D 0 - - - 0x025413 09:9403: 6A 94     .word _off005_946A_01
- D 0 - - - 0x025415 09:9405: 77 94     .word _off005_9477_02
- D 0 - - - 0x025417 09:9407: 7E 94     .word _off005_947E_03
- D 0 - - - 0x025419 09:9409: 89 94     .word _off005_9489_04
- D 0 - - - 0x02541B 09:940B: 92 94     .word _off005_9492_05
- D 0 - - - 0x02541D 09:940D: 9D 94     .word _off005_949D_06
- D 0 - - - 0x02541F 09:940F: A8 94     .word _off005_94A8_07
- D 0 - - - 0x025421 09:9411: B7 94     .word _off005_94B7_08
- D 0 - - - 0x025423 09:9413: C4 94     .word _off005_94C4_09
- D 0 - - - 0x025425 09:9415: D1 94     .word _off005_94D1_0A
- D 0 - - - 0x025427 09:9417: DE 94     .word _off005_94DE_0B
- D 0 - - - 0x025429 09:9419: ED 94     .word _off005_94ED_0C
- D 0 - - - 0x02542B 09:941B: FE 94     .word _off005_94FE_0D
- D 0 - - - 0x02542D 09:941D: 09 95     .word _off005_9509_0E
- D 0 - - - 0x02542F 09:941F: 18 95     .word _off005_9518_0F
- D 0 - - - 0x025431 09:9421: 21 95     .word _off005_9521_10
- D 0 - - - 0x025433 09:9423: 2C 95     .word _off005_952C_11
- D 0 - - - 0x025435 09:9425: 39 95     .word _off005_9539_12
- D 0 - - - 0x025437 09:9427: 4A 95     .word _off005_954A_13
- D 0 - - - 0x025439 09:9429: 59 95     .word _off005_9559_14
- D 0 - - - 0x02543B 09:942B: 68 95     .word _off005_9568_15
- D 0 - - - 0x02543D 09:942D: 71 95     .word _off005_9571_16
- D 0 - - - 0x02543F 09:942F: 7C 95     .word _off005_957C_17
- D 0 - - - 0x025441 09:9431: 8D 95     .word _off005_958D_18
- D 0 - - - 0x025443 09:9433: 9A 95     .word _off005_959A_19
- D 0 - - - 0x025445 09:9435: A9 95     .word _off005_95A9_1A
- D 0 - - - 0x025447 09:9437: B2 95     .word _off005_95B2_1B
- D 0 - - - 0x025449 09:9439: BD 95     .word _off005_95BD_1C
- D 0 - - - 0x02544B 09:943B: C8 95     .word _off005_95C8_1D
- D 0 - - - 0x02544D 09:943D: D5 95     .word _off005_95D5_1E
- D 0 - - - 0x02544F 09:943F: DE 95     .word _off005_95DE_1F
- D 0 - I - 0x025451 09:9441: E9 95     .word _off005_95E9_20   ; !!!
- D 0 - - - 0x025453 09:9443: F2 95     .word _off005_95F2_21
- D 0 - - - 0x025455 09:9445: 05 96     .word _off005_9605_22
- D 0 - - - 0x025457 09:9447: 12 96     .word _off005_9612_23
- D 0 - - - 0x025459 09:9449: 1F 96     .word _off005_961F_24
- D 0 - - - 0x02545B 09:944B: 2A 96     .word _off005_962A_25
- D 0 - - - 0x02545D 09:944D: 35 96     .word _off005_9635_26
- D 0 - - - 0x02545F 09:944F: 42 96     .word _off005_9642_27
- D 0 - - - 0x025461 09:9451: 4B 96     .word _off005_964B_28
- D 0 - - - 0x025463 09:9453: 56 96     .word _off005_9656_29
- D 0 - - - 0x025465 09:9455: 63 96     .word _off005_9663_2A
- D 0 - - - 0x025467 09:9457: 72 96     .word _off005_9672_2B
- D 0 - - - 0x025469 09:9459: 79 96     .word _off005_9679_2C
- D 0 - - - 0x02546B 09:945B: 84 96     .word _off005_9684_2D



_off005_945D_00:
- D 0 - I - 0x02546D 09:945D: FE        .byte $FE   ; 
- D 0 - I - 0x02546E 09:945E: 06        .byte $06   ; 
- D 0 - I - 0x02546F 09:945F: 8D        .byte $8D   ; 
- D 0 - I - 0x025470 09:9460: 05        .byte $05   ; 
- D 0 - I - 0x025471 09:9461: 8F        .byte $8F   ; 
- D 0 - I - 0x025472 09:9462: 00        .byte $00   ; 
- D 0 - I - 0x025473 09:9463: FF        .byte $FF   ; 
- D 0 - I - 0x025474 09:9464: 01        .byte $01   ; 
- D 0 - I - 0x025475 09:9465: 8F        .byte $8F   ; 
- D 0 - I - 0x025476 09:9466: 07        .byte $07   ; 
- D 0 - I - 0x025477 09:9467: 8D        .byte $8D   ; 
- D 0 - I - 0x025478 09:9468: 08        .byte $08   ; 
- D 0 - I - 0x025479 09:9469: 00        .byte $00   ; 



_off005_946A_01:
- D 0 - I - 0x02547A 09:946A: FE        .byte $FE   ; 
- D 0 - I - 0x02547B 09:946B: 06        .byte $06   ; 
- D 0 - I - 0x02547C 09:946C: 8B        .byte $8B   ; 
- D 0 - I - 0x02547D 09:946D: 02        .byte $02   ; 
- D 0 - I - 0x02547E 09:946E: 92        .byte $92   ; 
- D 0 - I - 0x02547F 09:946F: 04        .byte $04   ; 
- D 0 - I - 0x025480 09:9470: FF        .byte $FF   ; 
- D 0 - I - 0x025481 09:9471: 02        .byte $02   ; 
- D 0 - I - 0x025482 09:9472: 93        .byte $93   ; 
- D 0 - I - 0x025483 09:9473: 06        .byte $06   ; 
- D 0 - I - 0x025484 09:9474: 92        .byte $92   ; 
- D 0 - I - 0x025485 09:9475: 04        .byte $04   ; 
- D 0 - I - 0x025486 09:9476: 00        .byte $00   ; 



_off005_9477_02:
- D 0 - I - 0x025487 09:9477: FE        .byte $FE   ; 
- D 0 - I - 0x025488 09:9478: 06        .byte $06   ; 
- D 0 - I - 0x025489 09:9479: FF        .byte $FF   ; 
- D 0 - I - 0x02548A 09:947A: 03        .byte $03   ; 
- D 0 - I - 0x02548B 09:947B: DF        .byte $DF   ; 
- D 0 - I - 0x02548C 09:947C: 0C        .byte $0C   ; 
- D 0 - I - 0x02548D 09:947D: 00        .byte $00   ; 



_off005_947E_03:
- D 0 - I - 0x02548E 09:947E: FE        .byte $FE   ; 
- D 0 - I - 0x02548F 09:947F: 06        .byte $06   ; 
- D 0 - I - 0x025490 09:9480: 97        .byte $97   ; 
- D 0 - I - 0x025491 09:9481: 06        .byte $06   ; 
- D 0 - I - 0x025492 09:9482: E1        .byte $E1   ; 
- D 0 - I - 0x025493 09:9483: 00        .byte $00   ; 
- D 0 - I - 0x025494 09:9484: FF        .byte $FF   ; 
- D 0 - I - 0x025495 09:9485: 04        .byte $04   ; 
- D 0 - I - 0x025496 09:9486: E1        .byte $E1   ; 
- D 0 - I - 0x025497 09:9487: 0D        .byte $0D   ; 
- D 0 - I - 0x025498 09:9488: 00        .byte $00   ; 



_off005_9489_04:
- D 0 - I - 0x025499 09:9489: FE        .byte $FE   ; 
- D 0 - I - 0x02549A 09:948A: 07        .byte $07   ; 
- D 0 - I - 0x02549B 09:948B: FF        .byte $FF   ; 
- D 0 - I - 0x02549C 09:948C: 05        .byte $05   ; 
- D 0 - I - 0x02549D 09:948D: DE        .byte $DE   ; 
- D 0 - I - 0x02549E 09:948E: 0A        .byte $0A   ; 
- D 0 - I - 0x02549F 09:948F: 99        .byte $99   ; 
- D 0 - I - 0x0254A0 09:9490: 04        .byte $04   ; 
- D 0 - I - 0x0254A1 09:9491: 00        .byte $00   ; 



_off005_9492_05:
- D 0 - I - 0x0254A2 09:9492: FE        .byte $FE   ; 
- D 0 - I - 0x0254A3 09:9493: 07        .byte $07   ; 
- D 0 - I - 0x0254A4 09:9494: 99        .byte $99   ; 
- D 0 - I - 0x0254A5 09:9495: 03        .byte $03   ; 
- D 0 - I - 0x0254A6 09:9496: FF        .byte $FF   ; 
- D 0 - I - 0x0254A7 09:9497: 06        .byte $06   ; 
- D 0 - I - 0x0254A8 09:9498: 9A        .byte $9A   ; 
- D 0 - I - 0x0254A9 09:9499: 07        .byte $07   ; 
- D 0 - I - 0x0254AA 09:949A: 99        .byte $99   ; 
- D 0 - I - 0x0254AB 09:949B: 04        .byte $04   ; 
- D 0 - I - 0x0254AC 09:949C: 00        .byte $00   ; 



_off005_949D_06:
- D 0 - I - 0x0254AD 09:949D: FE        .byte $FE   ; 
- D 0 - I - 0x0254AE 09:949E: 07        .byte $07   ; 
- D 0 - I - 0x0254AF 09:949F: 90        .byte $90   ; 
- D 0 - I - 0x0254B0 09:94A0: 04        .byte $04   ; 
- D 0 - I - 0x0254B1 09:94A1: FF        .byte $FF   ; 
- D 0 - I - 0x0254B2 09:94A2: 07        .byte $07   ; 
- D 0 - I - 0x0254B3 09:94A3: 91        .byte $91   ; 
- D 0 - I - 0x0254B4 09:94A4: 05        .byte $05   ; 
- D 0 - I - 0x0254B5 09:94A5: 90        .byte $90   ; 
- D 0 - I - 0x0254B6 09:94A6: 03        .byte $03   ; 
- D 0 - I - 0x0254B7 09:94A7: 00        .byte $00   ; 



_off005_94A8_07:
- D 0 - I - 0x0254B8 09:94A8: FE        .byte $FE   ; 
- D 0 - I - 0x0254B9 09:94A9: 04        .byte $04   ; 
- D 0 - I - 0x0254BA 09:94AA: 95        .byte $95   ; 
- D 0 - I - 0x0254BB 09:94AB: 08        .byte $08   ; 
- D 0 - I - 0x0254BC 09:94AC: 93        .byte $93   ; 
- D 0 - I - 0x0254BD 09:94AD: 00        .byte $00   ; 
- D 0 - I - 0x0254BE 09:94AE: FF        .byte $FF   ; 
- D 0 - I - 0x0254BF 09:94AF: 08        .byte $08   ; 
- D 0 - I - 0x0254C0 09:94B0: 93        .byte $93   ; 
- D 0 - I - 0x0254C1 09:94B1: 04        .byte $04   ; 
- D 0 - I - 0x0254C2 09:94B2: 93        .byte $93   ; 
- D 0 - I - 0x0254C3 09:94B3: 04        .byte $04   ; 
- D 0 - I - 0x0254C4 09:94B4: 92        .byte $92   ; 
- D 0 - I - 0x0254C5 09:94B5: 0A        .byte $0A   ; 
- D 0 - I - 0x0254C6 09:94B6: 00        .byte $00   ; 



_off005_94B7_08:
- D 0 - I - 0x0254C7 09:94B7: FE        .byte $FE   ; 
- D 0 - I - 0x0254C8 09:94B8: 04        .byte $04   ; 
- D 0 - I - 0x0254C9 09:94B9: 8B        .byte $8B   ; 
- D 0 - I - 0x0254CA 09:94BA: 07        .byte $07   ; 
- D 0 - I - 0x0254CB 09:94BB: 94        .byte $94   ; 
- D 0 - I - 0x0254CC 09:94BC: 07        .byte $07   ; 
- D 0 - I - 0x0254CD 09:94BD: FF        .byte $FF   ; 
- D 0 - I - 0x0254CE 09:94BE: 09        .byte $09   ; 
- D 0 - I - 0x0254CF 09:94BF: 93        .byte $93   ; 
- D 0 - I - 0x0254D0 09:94C0: 07        .byte $07   ; 
- D 0 - I - 0x0254D1 09:94C1: 92        .byte $92   ; 
- D 0 - I - 0x0254D2 09:94C2: 0B        .byte $0B   ; 
- D 0 - I - 0x0254D3 09:94C3: 00        .byte $00   ; 



_off005_94C4_09:
- D 0 - I - 0x0254D4 09:94C4: FE        .byte $FE   ; 
- D 0 - I - 0x0254D5 09:94C5: 09        .byte $09   ; 
- D 0 - I - 0x0254D6 09:94C6: B9        .byte $B9   ; 
- D 0 - I - 0x0254D7 09:94C7: 06        .byte $06   ; 
- D 0 - I - 0x0254D8 09:94C8: FF        .byte $FF   ; 
- D 0 - I - 0x0254D9 09:94C9: 0A        .byte $0A   ; 
- D 0 - I - 0x0254DA 09:94CA: DA        .byte $DA   ; 
- D 0 - I - 0x0254DB 09:94CB: 0C        .byte $0C   ; 
- D 0 - I - 0x0254DC 09:94CC: 9A        .byte $9A   ; 
- D 0 - I - 0x0254DD 09:94CD: 06        .byte $06   ; 
- D 0 - I - 0x0254DE 09:94CE: 99        .byte $99   ; 
- D 0 - I - 0x0254DF 09:94CF: 0A        .byte $0A   ; 
- D 0 - I - 0x0254E0 09:94D0: 00        .byte $00   ; 



_off005_94D1_0A:
- D 0 - I - 0x0254E1 09:94D1: FE        .byte $FE   ; 
- D 0 - I - 0x0254E2 09:94D2: 53        .byte $53   ; 
- D 0 - I - 0x0254E3 09:94D3: 90        .byte $90   ; 
- D 0 - I - 0x0254E4 09:94D4: 04        .byte $04   ; 
- D 0 - I - 0x0254E5 09:94D5: FF        .byte $FF   ; 
- D 0 - I - 0x0254E6 09:94D6: 0B        .byte $0B   ; 
- D 0 - I - 0x0254E7 09:94D7: E2        .byte $E2   ; 
- D 0 - I - 0x0254E8 09:94D8: 0E        .byte $0E   ; 
- D 0 - I - 0x0254E9 09:94D9: 89        .byte $89   ; 
- D 0 - I - 0x0254EA 09:94DA: 06        .byte $06   ; 
- D 0 - I - 0x0254EB 09:94DB: 88        .byte $88   ; 
- D 0 - I - 0x0254EC 09:94DC: 04        .byte $04   ; 
- D 0 - I - 0x0254ED 09:94DD: 00        .byte $00   ; 



_off005_94DE_0B:
- D 0 - I - 0x0254EE 09:94DE: FE        .byte $FE   ; 
- D 0 - I - 0x0254EF 09:94DF: 04        .byte $04   ; 
- D 0 - I - 0x0254F0 09:94E0: D6        .byte $D6   ; 
- D 0 - I - 0x0254F1 09:94E1: 04        .byte $04   ; 
- D 0 - I - 0x0254F2 09:94E2: D7        .byte $D7   ; 
- D 0 - I - 0x0254F3 09:94E3: 04        .byte $04   ; 
- D 0 - I - 0x0254F4 09:94E4: D8        .byte $D8   ; 
- D 0 - I - 0x0254F5 09:94E5: 00        .byte $00   ; 
- D 0 - I - 0x0254F6 09:94E6: FF        .byte $FF   ; 
- D 0 - I - 0x0254F7 09:94E7: 0C        .byte $0C   ; 
- D 0 - I - 0x0254F8 09:94E8: D8        .byte $D8   ; 
- D 0 - I - 0x0254F9 09:94E9: 0B        .byte $0B   ; 
- D 0 - I - 0x0254FA 09:94EA: D7        .byte $D7   ; 
- D 0 - I - 0x0254FB 09:94EB: 0A        .byte $0A   ; 
- D 0 - I - 0x0254FC 09:94EC: 00        .byte $00   ; 



_off005_94ED_0C:
- D 0 - I - 0x0254FD 09:94ED: FE        .byte $FE   ; 
- D 0 - I - 0x0254FE 09:94EE: 06        .byte $06   ; 
- D 0 - I - 0x0254FF 09:94EF: 99        .byte $99   ; 
- D 0 - I - 0x025500 09:94F0: 05        .byte $05   ; 
- D 0 - I - 0x025501 09:94F1: DB        .byte $DB   ; 
- D 0 - I - 0x025502 09:94F2: 04        .byte $04   ; 
- D 0 - I - 0x025503 09:94F3: DC        .byte $DC   ; 
- D 0 - I - 0x025504 09:94F4: 00        .byte $00   ; 
- D 0 - I - 0x025505 09:94F5: FF        .byte $FF   ; 
- D 0 - I - 0x025506 09:94F6: 0D        .byte $0D   ; 
- D 0 - I - 0x025507 09:94F7: DC        .byte $DC   ; 
- D 0 - I - 0x025508 09:94F8: 03        .byte $03   ; 
- D 0 - I - 0x025509 09:94F9: DD        .byte $DD   ; 
- D 0 - I - 0x02550A 09:94FA: 0A        .byte $0A   ; 
- D 0 - I - 0x02550B 09:94FB: DC        .byte $DC   ; 
- D 0 - I - 0x02550C 09:94FC: 08        .byte $08   ; 
- D 0 - I - 0x02550D 09:94FD: 00        .byte $00   ; 



_off005_94FE_0D:
- D 0 - I - 0x02550E 09:94FE: FE        .byte $FE   ; 
- D 0 - I - 0x02550F 09:94FF: 09        .byte $09   ; 
- D 0 - I - 0x025510 09:9500: 97        .byte $97   ; 
- D 0 - I - 0x025511 09:9501: 04        .byte $04   ; 
- D 0 - I - 0x025512 09:9502: FF        .byte $FF   ; 
- D 0 - I - 0x025513 09:9503: 0E        .byte $0E   ; 
- D 0 - I - 0x025514 09:9504: 98        .byte $98   ; 
- D 0 - I - 0x025515 09:9505: 0E        .byte $0E   ; 
- D 0 - I - 0x025516 09:9506: 97        .byte $97   ; 
- D 0 - I - 0x025517 09:9507: 06        .byte $06   ; 
- D 0 - I - 0x025518 09:9508: 00        .byte $00   ; 



_off005_9509_0E:
- D 0 - I - 0x025519 09:9509: FE        .byte $FE   ; 
- D 0 - I - 0x02551A 09:950A: 06        .byte $06   ; 
- D 0 - I - 0x02551B 09:950B: 8E        .byte $8E   ; 
- D 0 - I - 0x02551C 09:950C: 03        .byte $03   ; 
- D 0 - I - 0x02551D 09:950D: 8F        .byte $8F   ; 
- D 0 - I - 0x02551E 09:950E: 03        .byte $03   ; 
- D 0 - I - 0x02551F 09:950F: 90        .byte $90   ; 
- D 0 - I - 0x025520 09:9510: 00        .byte $00   ; 
- D 0 - I - 0x025521 09:9511: FF        .byte $FF   ; 
- D 0 - I - 0x025522 09:9512: 0F        .byte $0F   ; 
- D 0 - I - 0x025523 09:9513: 90        .byte $90   ; 
- D 0 - I - 0x025524 09:9514: 07        .byte $07   ; 
- D 0 - I - 0x025525 09:9515: 8F        .byte $8F   ; 
- D 0 - I - 0x025526 09:9516: 07        .byte $07   ; 
- D 0 - I - 0x025527 09:9517: 00        .byte $00   ; 



_off005_9518_0F:
- D 0 - I - 0x025528 09:9518: FE        .byte $FE   ; 
- D 0 - I - 0x025529 09:9519: 07        .byte $07   ; 
- D 0 - I - 0x02552A 09:951A: 91        .byte $91   ; 
- D 0 - I - 0x02552B 09:951B: 06        .byte $06   ; 
- D 0 - I - 0x02552C 09:951C: FF        .byte $FF   ; 
- D 0 - I - 0x02552D 09:951D: 16        .byte $16   ; 
- D 0 - I - 0x02552E 09:951E: 92        .byte $92   ; 
- D 0 - I - 0x02552F 09:951F: 0A        .byte $0A   ; 
- D 0 - I - 0x025530 09:9520: 00        .byte $00   ; 



_off005_9521_10:
- D 0 - I - 0x025531 09:9521: FE        .byte $FE   ; 
- D 0 - I - 0x025532 09:9522: 06        .byte $06   ; 
- D 0 - I - 0x025533 09:9523: 93        .byte $93   ; 
- D 0 - I - 0x025534 09:9524: 06        .byte $06   ; 
- D 0 - I - 0x025535 09:9525: 94        .byte $94   ; 
- D 0 - I - 0x025536 09:9526: 00        .byte $00   ; 
- D 0 - I - 0x025537 09:9527: FF        .byte $FF   ; 
- D 0 - I - 0x025538 09:9528: 11        .byte $11   ; 
- D 0 - I - 0x025539 09:9529: 94        .byte $94   ; 
- D 0 - I - 0x02553A 09:952A: 07        .byte $07   ; 
- D 0 - I - 0x02553B 09:952B: 00        .byte $00   ; 



_off005_952C_11:
- D 0 - I - 0x02553C 09:952C: FE        .byte $FE   ; 
- D 0 - I - 0x02553D 09:952D: 04        .byte $04   ; 
- D 0 - I - 0x02553E 09:952E: 8E        .byte $8E   ; 
- D 0 - I - 0x02553F 09:952F: 04        .byte $04   ; 
- D 0 - I - 0x025540 09:9530: 95        .byte $95   ; 
- D 0 - I - 0x025541 09:9531: 04        .byte $04   ; 
- D 0 - I - 0x025542 09:9532: 96        .byte $96   ; 
- D 0 - I - 0x025543 09:9533: 00        .byte $00   ; 
- D 0 - I - 0x025544 09:9534: FF        .byte $FF   ; 
- D 0 - I - 0x025545 09:9535: 13        .byte $13   ; 
- D 0 - I - 0x025546 09:9536: 96        .byte $96   ; 
- D 0 - I - 0x025547 09:9537: 0A        .byte $0A   ; 
- D 0 - I - 0x025548 09:9538: 00        .byte $00   ; 



_off005_9539_12:
- D 0 - I - 0x025549 09:9539: FE        .byte $FE   ; 
- D 0 - I - 0x02554A 09:953A: 04        .byte $04   ; 
- D 0 - I - 0x02554B 09:953B: 8E        .byte $8E   ; 
- D 0 - I - 0x02554C 09:953C: 01        .byte $01   ; 
- D 0 - I - 0x02554D 09:953D: A2        .byte $A2   ; 
- D 0 - I - 0x02554E 09:953E: 04        .byte $04   ; 
- D 0 - I - 0x02554F 09:953F: 95        .byte $95   ; 
- D 0 - I - 0x025550 09:9540: 04        .byte $04   ; 
- D 0 - I - 0x025551 09:9541: FF        .byte $FF   ; 
- D 0 - I - 0x025552 09:9542: 15        .byte $15   ; 
- D 0 - I - 0x025553 09:9543: 97        .byte $97   ; 
- D 0 - I - 0x025554 09:9544: 03        .byte $03   ; 
- D 0 - I - 0x025555 09:9545: 98        .byte $98   ; 
- D 0 - I - 0x025556 09:9546: 0A        .byte $0A   ; 
- D 0 - I - 0x025557 09:9547: 80        .byte $80   ; 
- D 0 - I - 0x025558 09:9548: 05        .byte $05   ; 
- D 0 - I - 0x025559 09:9549: 00        .byte $00   ; 



_off005_954A_13:
- D 0 - I - 0x02555A 09:954A: FE        .byte $FE   ; 
- D 0 - I - 0x02555B 09:954B: 07        .byte $07   ; 
- D 0 - I - 0x02555C 09:954C: 86        .byte $86   ; 
- D 0 - I - 0x02555D 09:954D: 04        .byte $04   ; 
- D 0 - I - 0x02555E 09:954E: A1        .byte $A1   ; 
- D 0 - I - 0x02555F 09:954F: 04        .byte $04   ; 
- D 0 - I - 0x025560 09:9550: FF        .byte $FF   ; 
- D 0 - I - 0x025561 09:9551: 10        .byte $10   ; 
- D 0 - I - 0x025562 09:9552: 99        .byte $99   ; 
- D 0 - I - 0x025563 09:9553: 06        .byte $06   ; 
- D 0 - I - 0x025564 09:9554: 86        .byte $86   ; 
- D 0 - I - 0x025565 09:9555: 05        .byte $05   ; 
- D 0 - I - 0x025566 09:9556: 80        .byte $80   ; 
- D 0 - I - 0x025567 09:9557: 02        .byte $02   ; 
- D 0 - I - 0x025568 09:9558: 00        .byte $00   ; 



_off005_9559_14:
- D 0 - I - 0x025569 09:9559: FE        .byte $FE   ; 
- D 0 - I - 0x02556A 09:955A: 04        .byte $04   ; 
- D 0 - I - 0x02556B 09:955B: 8E        .byte $8E   ; 
- D 0 - I - 0x02556C 09:955C: 04        .byte $04   ; 
- D 0 - I - 0x02556D 09:955D: 9A        .byte $9A   ; 
- D 0 - I - 0x02556E 09:955E: 04        .byte $04   ; 
- D 0 - I - 0x02556F 09:955F: 9B        .byte $9B   ; 
- D 0 - I - 0x025570 09:9560: 00        .byte $00   ; 
- D 0 - I - 0x025571 09:9561: FF        .byte $FF   ; 
- D 0 - I - 0x025572 09:9562: 14        .byte $14   ; 
- D 0 - I - 0x025573 09:9563: 9B        .byte $9B   ; 
- D 0 - I - 0x025574 09:9564: 08        .byte $08   ; 
- D 0 - I - 0x025575 09:9565: 9A        .byte $9A   ; 
- D 0 - I - 0x025576 09:9566: 0A        .byte $0A   ; 
- D 0 - I - 0x025577 09:9567: 00        .byte $00   ; 



_off005_9568_15:
- D 0 - I - 0x025578 09:9568: FE        .byte $FE   ; 
- D 0 - I - 0x025579 09:9569: 05        .byte $05   ; 
- D 0 - I - 0x02557A 09:956A: 9C        .byte $9C   ; 
- D 0 - I - 0x02557B 09:956B: 06        .byte $06   ; 
- D 0 - I - 0x02557C 09:956C: FF        .byte $FF   ; 
- D 0 - I - 0x02557D 09:956D: 17        .byte $17   ; 
- D 0 - I - 0x02557E 09:956E: 9D        .byte $9D   ; 
- D 0 - I - 0x02557F 09:956F: 0A        .byte $0A   ; 
- D 0 - I - 0x025580 09:9570: 00        .byte $00   ; 



_off005_9571_16:
- D 0 - I - 0x025581 09:9571: FE        .byte $FE   ; 
- D 0 - I - 0x025582 09:9572: 06        .byte $06   ; 
- D 0 - I - 0x025583 09:9573: A2        .byte $A2   ; 
- D 0 - I - 0x025584 09:9574: 04        .byte $04   ; 
- D 0 - I - 0x025585 09:9575: FF        .byte $FF   ; 
- D 0 - I - 0x025586 09:9576: 12        .byte $12   ; 
- D 0 - I - 0x025587 09:9577: 9E        .byte $9E   ; 
- D 0 - I - 0x025588 09:9578: 07        .byte $07   ; 
- D 0 - I - 0x025589 09:9579: A2        .byte $A2   ; 
- D 0 - I - 0x02558A 09:957A: 05        .byte $05   ; 
- D 0 - I - 0x02558B 09:957B: 00        .byte $00   ; 



_off005_957C_17:
- D 0 - I - 0x02558C 09:957C: FE        .byte $FE   ; 
- D 0 - I - 0x02558D 09:957D: 04        .byte $04   ; 
- D 0 - I - 0x02558E 09:957E: A2        .byte $A2   ; 
- D 0 - I - 0x02558F 09:957F: 08        .byte $08   ; 
- D 0 - I - 0x025590 09:9580: D2        .byte $D2   ; 
- D 0 - I - 0x025591 09:9581: 04        .byte $04   ; 
- D 0 - I - 0x025592 09:9582: FF        .byte $FF   ; 
- D 0 - I - 0x025593 09:9583: 18        .byte $18   ; 
- D 0 - I - 0x025594 09:9584: D3        .byte $D3   ; 
- D 0 - I - 0x025595 09:9585: 03        .byte $03   ; 
- D 0 - I - 0x025596 09:9586: D4        .byte $D4   ; 
- D 0 - I - 0x025597 09:9587: 05        .byte $05   ; 
- D 0 - I - 0x025598 09:9588: D5        .byte $D5   ; 
- D 0 - I - 0x025599 09:9589: 08        .byte $08   ; 
- D 0 - I - 0x02559A 09:958A: A2        .byte $A2   ; 
- D 0 - I - 0x02559B 09:958B: 0E        .byte $0E   ; 
- D 0 - I - 0x02559C 09:958C: 00        .byte $00   ; 



_off005_958D_18:
- D 0 - I - 0x02559D 09:958D: FE        .byte $FE   ; 
- D 0 - I - 0x02559E 09:958E: 07        .byte $07   ; 
- D 0 - I - 0x02559F 09:958F: 8D        .byte $8D   ; 
- D 0 - I - 0x0255A0 09:9590: 08        .byte $08   ; 
- D 0 - I - 0x0255A1 09:9591: FF        .byte $FF   ; 
- D 0 - I - 0x0255A2 09:9592: 00        .byte $00   ; 
- D 0 - I - 0x0255A3 09:9593: FF        .byte $FF   ; 
- D 0 - I - 0x0255A4 09:9594: 19        .byte $19   ; 
- D 0 - I - 0x0255A5 09:9595: B7        .byte $B7   ; 
- D 0 - I - 0x0255A6 09:9596: 08        .byte $08   ; 
- D 0 - I - 0x0255A7 09:9597: 82        .byte $82   ; 
- D 0 - I - 0x0255A8 09:9598: 04        .byte $04   ; 
- D 0 - I - 0x0255A9 09:9599: 00        .byte $00   ; 



_off005_959A_19:
- D 0 - I - 0x0255AA 09:959A: FE        .byte $FE   ; 
- D 0 - I - 0x0255AB 09:959B: 06        .byte $06   ; 
- D 0 - I - 0x0255AC 09:959C: 8B        .byte $8B   ; 
- D 0 - I - 0x0255AD 09:959D: 04        .byte $04   ; 
- D 0 - I - 0x0255AE 09:959E: 8E        .byte $8E   ; 
- D 0 - I - 0x0255AF 09:959F: 06        .byte $06   ; 
- D 0 - I - 0x0255B0 09:95A0: 8F        .byte $8F   ; 
- D 0 - I - 0x0255B1 09:95A1: 00        .byte $00   ; 
- D 0 - I - 0x0255B2 09:95A2: FF        .byte $FF   ; 
- D 0 - I - 0x0255B3 09:95A3: 1A        .byte $1A   ; 
- D 0 - I - 0x0255B4 09:95A4: 8F        .byte $8F   ; 
- D 0 - I - 0x0255B5 09:95A5: 0B        .byte $0B   ; 
- D 0 - I - 0x0255B6 09:95A6: 8E        .byte $8E   ; 
- D 0 - I - 0x0255B7 09:95A7: 0A        .byte $0A   ; 
- D 0 - I - 0x0255B8 09:95A8: 00        .byte $00   ; 



_off005_95A9_1A:
- D 0 - I - 0x0255B9 09:95A9: FE        .byte $FE   ; 
- D 0 - I - 0x0255BA 09:95AA: 07        .byte $07   ; 
- D 0 - I - 0x0255BB 09:95AB: 90        .byte $90   ; 
- D 0 - I - 0x0255BC 09:95AC: 09        .byte $09   ; 
- D 0 - I - 0x0255BD 09:95AD: FF        .byte $FF   ; 
- D 0 - I - 0x0255BE 09:95AE: 1B        .byte $1B   ; 
- D 0 - I - 0x0255BF 09:95AF: 91        .byte $91   ; 
- D 0 - I - 0x0255C0 09:95B0: 0C        .byte $0C   ; 
- D 0 - I - 0x0255C1 09:95B1: 00        .byte $00   ; 



_off005_95B2_1B:
- D 0 - I - 0x0255C2 09:95B2: FE        .byte $FE   ; 
- D 0 - I - 0x0255C3 09:95B3: 06        .byte $06   ; 
- D 0 - I - 0x0255C4 09:95B4: 92        .byte $92   ; 
- D 0 - I - 0x0255C5 09:95B5: 08        .byte $08   ; 
- D 0 - I - 0x0255C6 09:95B6: FF        .byte $FF   ; 
- D 0 - I - 0x0255C7 09:95B7: 1C        .byte $1C   ; 
- D 0 - I - 0x0255C8 09:95B8: 93        .byte $93   ; 
- D 0 - I - 0x0255C9 09:95B9: 07        .byte $07   ; 
- D 0 - I - 0x0255CA 09:95BA: 9D        .byte $9D   ; 
- D 0 - I - 0x0255CB 09:95BB: 04        .byte $04   ; 
- D 0 - I - 0x0255CC 09:95BC: 00        .byte $00   ; 



_off005_95BD_1C:
- D 0 - I - 0x0255CD 09:95BD: FE        .byte $FE   ; 
- D 0 - I - 0x0255CE 09:95BE: 07        .byte $07   ; 
- D 0 - I - 0x0255CF 09:95BF: 94        .byte $94   ; 
- D 0 - I - 0x0255D0 09:95C0: 07        .byte $07   ; 
- D 0 - I - 0x0255D1 09:95C1: FF        .byte $FF   ; 
- D 0 - I - 0x0255D2 09:95C2: 1D        .byte $1D   ; 
- D 0 - I - 0x0255D3 09:95C3: 95        .byte $95   ; 
- D 0 - I - 0x0255D4 09:95C4: 08        .byte $08   ; 
- D 0 - I - 0x0255D5 09:95C5: 8D        .byte $8D   ; 
- D 0 - I - 0x0255D6 09:95C6: 09        .byte $09   ; 
- D 0 - I - 0x0255D7 09:95C7: 00        .byte $00   ; 



_off005_95C8_1D:
- D 0 - I - 0x0255D8 09:95C8: FE        .byte $FE   ; 
- D 0 - I - 0x0255D9 09:95C9: 04        .byte $04   ; 
- D 0 - I - 0x0255DA 09:95CA: 92        .byte $92   ; 
- D 0 - I - 0x0255DB 09:95CB: 05        .byte $05   ; 
- D 0 - I - 0x0255DC 09:95CC: 94        .byte $94   ; 
- D 0 - I - 0x0255DD 09:95CD: 06        .byte $06   ; 
- D 0 - I - 0x0255DE 09:95CE: FF        .byte $FF   ; 
- D 0 - I - 0x0255DF 09:95CF: 1E        .byte $1E   ; 
- D 0 - I - 0x0255E0 09:95D0: 96        .byte $96   ; 
- D 0 - I - 0x0255E1 09:95D1: 0C        .byte $0C   ; 
- D 0 - I - 0x0255E2 09:95D2: 8D        .byte $8D   ; 
- D 0 - I - 0x0255E3 09:95D3: 0C        .byte $0C   ; 
- D 0 - I - 0x0255E4 09:95D4: 00        .byte $00   ; 



_off005_95D5_1E:
- D 0 - I - 0x0255E5 09:95D5: FE        .byte $FE   ; 
- D 0 - I - 0x0255E6 09:95D6: 05        .byte $05   ; 
- D 0 - I - 0x0255E7 09:95D7: 97        .byte $97   ; 
- D 0 - I - 0x0255E8 09:95D8: 08        .byte $08   ; 
- D 0 - I - 0x0255E9 09:95D9: FF        .byte $FF   ; 
- D 0 - I - 0x0255EA 09:95DA: 1F        .byte $1F   ; 
- D 0 - I - 0x0255EB 09:95DB: 98        .byte $98   ; 
- D 0 - I - 0x0255EC 09:95DC: 0C        .byte $0C   ; 
- D 0 - I - 0x0255ED 09:95DD: 00        .byte $00   ; 



_off005_95DE_1F:
- D 0 - I - 0x0255EE 09:95DE: FE        .byte $FE   ; 
- D 0 - I - 0x0255EF 09:95DF: 06        .byte $06   ; 
- D 0 - I - 0x0255F0 09:95E0: 9D        .byte $9D   ; 
- D 0 - I - 0x0255F1 09:95E1: 08        .byte $08   ; 
- D 0 - I - 0x0255F2 09:95E2: FF        .byte $FF   ; 
- D 0 - I - 0x0255F3 09:95E3: 20        .byte $20   ; 
- D 0 - I - 0x0255F4 09:95E4: 99        .byte $99   ; 
- D 0 - I - 0x0255F5 09:95E5: 08        .byte $08   ; 
- D 0 - I - 0x0255F6 09:95E6: 9D        .byte $9D   ; 
- D 0 - I - 0x0255F7 09:95E7: 05        .byte $05   ; 
- D 0 - I - 0x0255F8 09:95E8: 00        .byte $00   ; 



_off005_95E9_20:
- D 0 - I - 0x0255F9 09:95E9: FE        .byte $FE   ; 
- D 0 - I - 0x0255FA 09:95EA: 59        .byte $59   ; 
- D 0 - I - 0x0255FB 09:95EB: B5        .byte $B5   ; 
- D 0 - I - 0x0255FC 09:95EC: 04        .byte $04   ; 
- D 0 - I - 0x0255FD 09:95ED: FF        .byte $FF   ; 
- D 0 - I - 0x0255FE 09:95EE: 21        .byte $21   ; 
- D 0 - I - 0x0255FF 09:95EF: B5        .byte $B5   ; 
- D 0 - I - 0x025600 09:95F0: 14        .byte $14   ; 
- D 0 - I - 0x025601 09:95F1: 00        .byte $00   ; 



_off005_95F2_21:
- D 0 - I - 0x025602 09:95F2: FE        .byte $FE   ; 
- D 0 - I - 0x025603 09:95F3: 04        .byte $04   ; 
- D 0 - I - 0x025604 09:95F4: 8B        .byte $8B   ; 
- D 0 - I - 0x025605 09:95F5: 03        .byte $03   ; 
- D 0 - I - 0x025606 09:95F6: 8E        .byte $8E   ; 
- D 0 - I - 0x025607 09:95F7: 04        .byte $04   ; 
- D 0 - I - 0x025608 09:95F8: 80        .byte $80   ; 
- D 0 - I - 0x025609 09:95F9: 03        .byte $03   ; 
- D 0 - I - 0x02560A 09:95FA: B6        .byte $B6   ; 
- D 0 - I - 0x02560B 09:95FB: 00        .byte $00   ; 
- D 0 - I - 0x02560C 09:95FC: FF        .byte $FF   ; 
- D 0 - I - 0x02560D 09:95FD: 22        .byte $22   ; 
- D 0 - I - 0x02560E 09:95FE: B6        .byte $B6   ; 
- D 0 - I - 0x02560F 09:95FF: 0B        .byte $0B   ; 
- D 0 - I - 0x025610 09:9600: 8E        .byte $8E   ; 
- D 0 - I - 0x025611 09:9601: 06        .byte $06   ; 
- D 0 - I - 0x025612 09:9602: 80        .byte $80   ; 
- D 0 - I - 0x025613 09:9603: 07        .byte $07   ; 
- D 0 - I - 0x025614 09:9604: 00        .byte $00   ; 



_off005_9605_22:
- D 0 - I - 0x025615 09:9605: 9D        .byte $9D   ; 
- D 0 - I - 0x025616 09:9606: 05        .byte $05   ; 
- D 0 - I - 0x025617 09:9607: 80        .byte $80   ; 
- D 0 - I - 0x025618 09:9608: 03        .byte $03   ; 
- D 0 - I - 0x025619 09:9609: C3        .byte $C3   ; 
- D 0 - I - 0x02561A 09:960A: 05        .byte $05   ; 
- D 0 - I - 0x02561B 09:960B: FF        .byte $FF   ; 
- D 0 - I - 0x02561C 09:960C: 23        .byte $23   ; 
- D 0 - I - 0x02561D 09:960D: C4        .byte $C4   ; 
- D 0 - I - 0x02561E 09:960E: 0A        .byte $0A   ; 
- D 0 - I - 0x02561F 09:960F: 80        .byte $80   ; 
- D 0 - I - 0x025620 09:9610: 08        .byte $08   ; 
- D 0 - I - 0x025621 09:9611: 00        .byte $00   ; 



_off005_9612_23:
- D 0 - I - 0x025622 09:9612: FE        .byte $FE   ; 
- D 0 - I - 0x025623 09:9613: 07        .byte $07   ; 
- D 0 - I - 0x025624 09:9614: 93        .byte $93   ; 
- D 0 - I - 0x025625 09:9615: 03        .byte $03   ; 
- D 0 - I - 0x025626 09:9616: 8E        .byte $8E   ; 
- D 0 - I - 0x025627 09:9617: 03        .byte $03   ; 
- D 0 - I - 0x025628 09:9618: FF        .byte $FF   ; 
- D 0 - I - 0x025629 09:9619: 24        .byte $24   ; 
- D 0 - I - 0x02562A 09:961A: 94        .byte $94   ; 
- D 0 - I - 0x02562B 09:961B: 04        .byte $04   ; 
- D 0 - I - 0x02562C 09:961C: 93        .byte $93   ; 
- D 0 - I - 0x02562D 09:961D: 03        .byte $03   ; 
- D 0 - I - 0x02562E 09:961E: 00        .byte $00   ; 



_off005_961F_24:
- D 0 - I - 0x02562F 09:961F: FE        .byte $FE   ; 
- D 0 - I - 0x025630 09:9620: 07        .byte $07   ; 
- D 0 - I - 0x025631 09:9621: 8E        .byte $8E   ; 
- D 0 - I - 0x025632 09:9622: 04        .byte $04   ; 
- D 0 - I - 0x025633 09:9623: FF        .byte $FF   ; 
- D 0 - I - 0x025634 09:9624: 25        .byte $25   ; 
- D 0 - I - 0x025635 09:9625: 8F        .byte $8F   ; 
- D 0 - I - 0x025636 09:9626: 05        .byte $05   ; 
- D 0 - I - 0x025637 09:9627: 8E        .byte $8E   ; 
- D 0 - I - 0x025638 09:9628: 02        .byte $02   ; 
- D 0 - I - 0x025639 09:9629: 00        .byte $00   ; 



_off005_962A_25:
- D 0 - I - 0x02563A 09:962A: FE        .byte $FE   ; 
- D 0 - I - 0x02563B 09:962B: 04        .byte $04   ; 
- D 0 - I - 0x02563C 09:962C: 8C        .byte $8C   ; 
- D 0 - I - 0x02563D 09:962D: 05        .byte $05   ; 
- D 0 - I - 0x02563E 09:962E: FF        .byte $FF   ; 
- D 0 - I - 0x02563F 09:962F: 26        .byte $26   ; 
- D 0 - I - 0x025640 09:9630: 8D        .byte $8D   ; 
- D 0 - I - 0x025641 09:9631: 07        .byte $07   ; 
- D 0 - I - 0x025642 09:9632: 8C        .byte $8C   ; 
- D 0 - I - 0x025643 09:9633: 08        .byte $08   ; 
- D 0 - I - 0x025644 09:9634: 00        .byte $00   ; 



_off005_9635_26:
- D 0 - I - 0x025645 09:9635: FE        .byte $FE   ; 
- D 0 - I - 0x025646 09:9636: 04        .byte $04   ; 
- D 0 - I - 0x025647 09:9637: 8E        .byte $8E   ; 
- D 0 - I - 0x025648 09:9638: 04        .byte $04   ; 
- D 0 - I - 0x025649 09:9639: FF        .byte $FF   ; 
- D 0 - I - 0x02564A 09:963A: 27        .byte $27   ; 
- D 0 - I - 0x02564B 09:963B: 95        .byte $95   ; 
- D 0 - I - 0x02564C 09:963C: 03        .byte $03   ; 
- D 0 - I - 0x02564D 09:963D: 96        .byte $96   ; 
- D 0 - I - 0x02564E 09:963E: 0A        .byte $0A   ; 
- D 0 - I - 0x02564F 09:963F: 95        .byte $95   ; 
- D 0 - I - 0x025650 09:9640: 04        .byte $04   ; 
- D 0 - I - 0x025651 09:9641: 00        .byte $00   ; 



_off005_9642_27:
- D 0 - I - 0x025652 09:9642: FE        .byte $FE   ; 
- D 0 - I - 0x025653 09:9643: 06        .byte $06   ; 
- D 0 - I - 0x025654 09:9644: 91        .byte $91   ; 
- D 0 - I - 0x025655 09:9645: 05        .byte $05   ; 
- D 0 - I - 0x025656 09:9646: FF        .byte $FF   ; 
- D 0 - I - 0x025657 09:9647: 28        .byte $28   ; 
- D 0 - I - 0x025658 09:9648: 90        .byte $90   ; 
- D 0 - I - 0x025659 09:9649: 0C        .byte $0C   ; 
- D 0 - I - 0x02565A 09:964A: 00        .byte $00   ; 



_off005_964B_28:
- D 0 - I - 0x02565B 09:964B: FE        .byte $FE   ; 
- D 0 - I - 0x02565C 09:964C: 06        .byte $06   ; 
- D 0 - I - 0x02565D 09:964D: 91        .byte $91   ; 
- D 0 - I - 0x02565E 09:964E: 04        .byte $04   ; 
- D 0 - I - 0x02565F 09:964F: FF        .byte $FF   ; 
- D 0 - I - 0x025660 09:9650: 29        .byte $29   ; 
- D 0 - I - 0x025661 09:9651: 92        .byte $92   ; 
- D 0 - I - 0x025662 09:9652: 05        .byte $05   ; 
- D 0 - I - 0x025663 09:9653: 91        .byte $91   ; 
- D 0 - I - 0x025664 09:9654: 04        .byte $04   ; 
- D 0 - I - 0x025665 09:9655: 00        .byte $00   ; 



_off005_9656_29:
- D 0 - I - 0x025666 09:9656: FE        .byte $FE   ; 
- D 0 - I - 0x025667 09:9657: 05        .byte $05   ; 
- D 0 - I - 0x025668 09:9658: 8A        .byte $8A   ; 
- D 0 - I - 0x025669 09:9659: 03        .byte $03   ; 
- D 0 - I - 0x02566A 09:965A: 97        .byte $97   ; 
- D 0 - I - 0x02566B 09:965B: 04        .byte $04   ; 
- D 0 - I - 0x02566C 09:965C: FF        .byte $FF   ; 
- D 0 - I - 0x02566D 09:965D: 2A        .byte $2A   ; 
- D 0 - I - 0x02566E 09:965E: 98        .byte $98   ; 
- D 0 - I - 0x02566F 09:965F: 06        .byte $06   ; 
- D 0 - I - 0x025670 09:9660: 97        .byte $97   ; 
- D 0 - I - 0x025671 09:9661: 06        .byte $06   ; 
- D 0 - I - 0x025672 09:9662: 00        .byte $00   ; 



_off005_9663_2A:
- D 0 - I - 0x025673 09:9663: FE        .byte $FE   ; 
- D 0 - I - 0x025674 09:9664: 04        .byte $04   ; 
- D 0 - I - 0x025675 09:9665: 88        .byte $88   ; 
- D 0 - I - 0x025676 09:9666: 05        .byte $05   ; 
- D 0 - I - 0x025677 09:9667: 99        .byte $99   ; 
- D 0 - I - 0x025678 09:9668: 04        .byte $04   ; 
- D 0 - I - 0x025679 09:9669: FF        .byte $FF   ; 
- D 0 - I - 0x02567A 09:966A: 2B        .byte $2B   ; 
- D 0 - I - 0x02567B 09:966B: 9A        .byte $9A   ; 
- D 0 - I - 0x02567C 09:966C: 06        .byte $06   ; 
- D 0 - I - 0x02567D 09:966D: 9B        .byte $9B   ; 
- D 0 - I - 0x02567E 09:966E: 05        .byte $05   ; 
- D 0 - I - 0x02567F 09:966F: 99        .byte $99   ; 
- D 0 - I - 0x025680 09:9670: 0A        .byte $0A   ; 
- D 0 - I - 0x025681 09:9671: 00        .byte $00   ; 



_off005_9672_2B:
- D 0 - I - 0x025682 09:9672: FE        .byte $FE   ; 
- D 0 - I - 0x025683 09:9673: 05        .byte $05   ; 
- D 0 - I - 0x025684 09:9674: FF        .byte $FF   ; 
- D 0 - I - 0x025685 09:9675: 2C        .byte $2C   ; 
- D 0 - I - 0x025686 09:9676: 9C        .byte $9C   ; 
- D 0 - I - 0x025687 09:9677: 10        .byte $10   ; 
- D 0 - I - 0x025688 09:9678: 00        .byte $00   ; 



_off005_9679_2C:
- D 0 - I - 0x025689 09:9679: FE        .byte $FE   ; 
- D 0 - I - 0x02568A 09:967A: 06        .byte $06   ; 
- D 0 - I - 0x02568B 09:967B: 9D        .byte $9D   ; 
- D 0 - I - 0x02568C 09:967C: 04        .byte $04   ; 
- D 0 - I - 0x02568D 09:967D: FF        .byte $FF   ; 
- D 0 - I - 0x02568E 09:967E: 2D        .byte $2D   ; 
- D 0 - I - 0x02568F 09:967F: 9E        .byte $9E   ; 
- D 0 - I - 0x025690 09:9680: 05        .byte $05   ; 
- D 0 - I - 0x025691 09:9681: 9D        .byte $9D   ; 
- D 0 - I - 0x025692 09:9682: 04        .byte $04   ; 
- D 0 - I - 0x025693 09:9683: 00        .byte $00   ; 



_off005_9684_2D:
- D 0 - I - 0x025694 09:9684: FE        .byte $FE   ; 
- D 0 - I - 0x025695 09:9685: 05        .byte $05   ; 
- D 0 - I - 0x025696 09:9686: 99        .byte $99   ; 
- D 0 - I - 0x025697 09:9687: 04        .byte $04   ; 
- D 0 - I - 0x025698 09:9688: C2        .byte $C2   ; 
- D 0 - I - 0x025699 09:9689: 04        .byte $04   ; 
- D 0 - I - 0x02569A 09:968A: FF        .byte $FF   ; 
- D 0 - I - 0x02569B 09:968B: 2E        .byte $2E   ; 
- D 0 - I - 0x02569C 09:968C: C3        .byte $C3   ; 
- D 0 - I - 0x02569D 09:968D: 0D        .byte $0D   ; 
- D 0 - I - 0x02569E 09:968E: C2        .byte $C2   ; 
- D 0 - I - 0x02569F 09:968F: 04        .byte $04   ; 
- D 0 - I - 0x0256A0 09:9690: 99        .byte $99   ; 
- D 0 - I - 0x0256A1 09:9691: 05        .byte $05   ; 
- D 0 - I - 0x0256A2 09:9692: 00        .byte $00   ; 



tbl_9693:
- D 0 - - - 0x0256A3 09:9693: 00        .byte $00   ; 00 Leo
- D 0 - - - 0x0256A4 09:9694: 00        .byte $00   ; 01 Raph
- D 0 - - - 0x0256A5 09:9695: 0A        .byte $0A   ; 02 Mike
- D 0 - - - 0x0256A6 09:9696: 0A        .byte $0A   ; 03 Don
- D 0 - - - 0x0256A7 09:9697: 16        .byte $16   ; 04 Casey
- D 0 - - - 0x0256A8 09:9698: 24        .byte $24   ; 05 Hot
- D 0 - - - 0x0256A9 09:9699: 2E        .byte $2E   ; 06 Shred



tbl_969A:
- D 0 - - - 0x0256AA 09:969A: C3        .byte $C3   ; 
tbl_969B:
- D 0 - - - 0x0256AB 09:969B: 03        .byte $03   ; 
- D 0 - - - 0x0256AC 09:969C: C4        .byte $C4   ; 
- D 0 - - - 0x0256AD 09:969D: 04        .byte $04   ; 
- D 0 - - - 0x0256AE 09:969E: 00        .byte $00   ; 
- D 0 - - - 0x0256AF 09:969F: C5        .byte $C5   ; 
- D 0 - - - 0x0256B0 09:96A0: 0D        .byte $0D   ; 
- D 0 - - - 0x0256B1 09:96A1: C6        .byte $C6   ; 
- D 0 - - - 0x0256B2 09:96A2: 0A        .byte $0A   ; 
- D 0 - - - 0x0256B3 09:96A3: FF        .byte $FF   ; 
- D 0 - - - 0x0256B4 09:96A4: 99        .byte $99   ; 
- D 0 - - - 0x0256B5 09:96A5: 03        .byte $03   ; 
- D 0 - - - 0x0256B6 09:96A6: C4        .byte $C4   ; 
- D 0 - - - 0x0256B7 09:96A7: 03        .byte $03   ; 
- D 0 - - - 0x0256B8 09:96A8: C6        .byte $C6   ; 
- D 0 - - - 0x0256B9 09:96A9: 04        .byte $04   ; 
- D 0 - - - 0x0256BA 09:96AA: 00        .byte $00   ; 
- D 0 - - - 0x0256BB 09:96AB: C8        .byte $C8   ; 
- D 0 - - - 0x0256BC 09:96AC: 0D        .byte $0D   ; 
- D 0 - - - 0x0256BD 09:96AD: C4        .byte $C4   ; 
- D 0 - - - 0x0256BE 09:96AE: 09        .byte $09   ; 
- D 0 - - - 0x0256BF 09:96AF: FF        .byte $FF   ; 
- D 0 - - - 0x0256C0 09:96B0: B9        .byte $B9   ; 
- D 0 - - - 0x0256C1 09:96B1: 04        .byte $04   ; 
- D 0 - - - 0x0256C2 09:96B2: BA        .byte $BA   ; 
- D 0 - - - 0x0256C3 09:96B3: 05        .byte $05   ; 
- D 0 - - - 0x0256C4 09:96B4: 00        .byte $00   ; 
- D 0 - - - 0x0256C5 09:96B5: BB        .byte $BB   ; 
- D 0 - - - 0x0256C6 09:96B6: 04        .byte $04   ; 
- D 0 - - - 0x0256C7 09:96B7: BB        .byte $BB   ; 
- D 0 - - - 0x0256C8 09:96B8: 06        .byte $06   ; 
- D 0 - - - 0x0256C9 09:96B9: BC        .byte $BC   ; 
- D 0 - - - 0x0256CA 09:96BA: 08        .byte $08   ; 
- D 0 - - - 0x0256CB 09:96BB: BB        .byte $BB   ; 
- D 0 - - - 0x0256CC 09:96BC: 09        .byte $09   ; 
- D 0 - - - 0x0256CD 09:96BD: FF        .byte $FF   ; 
- D 0 - - - 0x0256CE 09:96BE: B2        .byte $B2   ; 
- D 0 - - - 0x0256CF 09:96BF: 08        .byte $08   ; 
- D 0 - - - 0x0256D0 09:96C0: B3        .byte $B3   ; 
- D 0 - - - 0x0256D1 09:96C1: 06        .byte $06   ; 
- D 0 - - - 0x0256D2 09:96C2: 00        .byte $00   ; 
- D 0 - - - 0x0256D3 09:96C3: B4        .byte $B4   ; 
- D 0 - - - 0x0256D4 09:96C4: 12        .byte $12   ; 
- D 0 - - - 0x0256D5 09:96C5: B3        .byte $B3   ; 
- D 0 - - - 0x0256D6 09:96C6: 0B        .byte $0B   ; 
- D 0 - - - 0x0256D7 09:96C7: FF        .byte $FF   ; 
- D 0 - - - 0x0256D8 09:96C8: 8A        .byte $8A   ; 
- D 0 - - - 0x0256D9 09:96C9: 04        .byte $04   ; 
- D 0 - - - 0x0256DA 09:96CA: AF        .byte $AF   ; 
- D 0 - - - 0x0256DB 09:96CB: 03        .byte $03   ; 
- D 0 - - - 0x0256DC 09:96CC: B9        .byte $B9   ; 
- D 0 - - - 0x0256DD 09:96CD: 03        .byte $03   ; 
- D 0 - - - 0x0256DE 09:96CE: BA        .byte $BA   ; 
- D 0 - - - 0x0256DF 09:96CF: 03        .byte $03   ; 
- D 0 - - - 0x0256E0 09:96D0: 00        .byte $00   ; 
- D 0 - - - 0x0256E1 09:96D1: BB        .byte $BB   ; 
- D 0 - - - 0x0256E2 09:96D2: 08        .byte $08   ; 
- D 0 - - - 0x0256E3 09:96D3: BB        .byte $BB   ; 
- D 0 - - - 0x0256E4 09:96D4: 08        .byte $08   ; 
- D 0 - - - 0x0256E5 09:96D5: 87        .byte $87   ; 
- D 0 - - - 0x0256E6 09:96D6: 08        .byte $08   ; 
- D 0 - - - 0x0256E7 09:96D7: FF        .byte $FF   ; 



tbl_96D8:
- D 0 - - - 0x0256E8 09:96D8: 11        .byte off_96F0 - tbl_96DF   ; 00 Leo
- D 0 - - - 0x0256E9 09:96D9: 11        .byte off_96F0 - tbl_96DF   ; 01 Raph
- D 0 - - - 0x0256EA 09:96DA: 04        .byte off_96E3 - tbl_96DF   ; 02 Mike
- D 0 - - - 0x0256EB 09:96DB: 04        .byte off_96E3 - tbl_96DF   ; 03 Don
- D 0 - - - 0x0256EC 09:96DC: 00        .byte off_96DF - tbl_96DF   ; 04 Casey
- D 0 - - - 0x0256ED 09:96DD: 07        .byte off_96E6 - tbl_96DF   ; 05 Hot
- D 0 - - - 0x0256EE 09:96DE: 0B        .byte off_96EA - tbl_96DF   ; 06 Shred



tbl_96DF:
off_96DF:
- D 0 - - - 0x0256EF 09:96DF: BD        .byte $BD   ; 
- D 0 - - - 0x0256F0 09:96E0: BE        .byte $BE   ; 
- D 0 - - - 0x0256F1 09:96E1: BF        .byte $BF   ; 
- D 0 - - - 0x0256F2 09:96E2: 00        .byte $00   ; 

off_96E3:
- D 0 - - - 0x0256F3 09:96E3: 00        .byte $00   ; 
- D 0 - - - 0x0256F4 09:96E4: 00        .byte $00   ; 
- D 0 - - - 0x0256F5 09:96E5: C7        .byte $C7   ; 

off_96E6:
- D 0 - - - 0x0256F6 09:96E6: 00        .byte $00   ; 
- D 0 - - - 0x0256F7 09:96E7: 00        .byte $00   ; 
- D 0 - - - 0x0256F8 09:96E8: 00        .byte $00   ; 
- D 0 - - - 0x0256F9 09:96E9: 00        .byte $00   ; 

off_96EA:
- D 0 - - - 0x0256FA 09:96EA: 00        .byte $00   ; 
- D 0 - - - 0x0256FB 09:96EB: 00        .byte $00   ; 
- D 0 - - - 0x0256FC 09:96EC: BC        .byte $BC   ; 
- D 0 - - - 0x0256FD 09:96ED: BD        .byte $BD   ; 
- D 0 - - - 0x0256FE 09:96EE: BE        .byte $BE   ; 
- D 0 - - - 0x0256FF 09:96EF: 00        .byte $00   ; 

off_96F0:
- D 0 - - - 0x025700 09:96F0: 00        .byte $00   ; 
- D 0 - - - 0x025701 09:96F1: C9        .byte $C9   ; 
- D 0 - - - 0x025702 09:96F2: 00        .byte $00   ; 
- D 0 - - - 0x025703 09:96F3: 00        .byte $00   ; 
- D 0 - - - 0x025704 09:96F4: 00        .byte $00   ; 



tbl_96F8:
- D 0 - - - 0x025708 09:96F8: 01        .byte $01   ; 
- D 0 - - - 0x025709 09:96F9: F0        .byte $F0   ; 
- D 0 - - - 0x02570A 09:96FA: 11        .byte $11   ; 
- D 0 - - - 0x02570B 09:96FB: E0        .byte $E0   ; 
- D 0 - - - 0x02570C 09:96FC: 31        .byte $31   ; 
- D 0 - - - 0x02570D 09:96FD: C0        .byte $C0   ; 
- D 0 - - - 0x02570E 09:96FE: F0        .byte $F0   ; 
- D 0 - - - 0x02570F 09:96FF: B1        .byte $B1   ; 
- D 0 - - - 0x025710 09:9700: A1        .byte $A1   ; 
- D 0 - - - 0x025711 09:9701: D1        .byte $D1   ; 
- D 0 - - - 0x025712 09:9702: 91        .byte $91   ; 
- D 0 - - - 0x025713 09:9703: 02        .byte $02   ; 
- D 0 - - - 0x025714 09:9704: 71        .byte $71   ; 
- D 0 - - - 0x025715 09:9705: A1        .byte $A1   ; 
- D 0 - - - 0x025716 09:9706: 31        .byte $31   ; 
- D 0 - - - 0x025717 09:9707: 21        .byte $21   ; 
- D 0 - - - 0x025718 09:9708: 41        .byte $41   ; 
- D 0 - - - 0x025719 09:9709: 11        .byte $11   ; 
- D 0 - - - 0x02571A 09:970A: 61        .byte $61   ; 
- D 0 - - - 0x02571B 09:970B: E0        .byte $E0   ; 
- D 0 - - - 0x02571C 09:970C: 21        .byte $21   ; 



tbl_970D:
- D 0 - - - 0x02571D 09:970D: 00        .byte $00   ; 
- D 0 - - - 0x02571E 09:970E: 00        .byte $00   ; 
- D 0 - - - 0x02571F 09:970F: 00        .byte $00   ; 
- D 0 - - - 0x025720 09:9710: 00        .byte $00   ; 
- D 0 - - - 0x025721 09:9711: 06        .byte $06   ; 
- D 0 - - - 0x025722 09:9712: 0C        .byte $0C   ; 
- D 0 - - - 0x025723 09:9713: 10        .byte $10   ; 
- D 0 - - - 0x025724 09:9714: 02        .byte $02   ; 
- D 0 - - - 0x025725 09:9715: 02        .byte $02   ; 
- D 0 - - - 0x025726 09:9716: 02        .byte $02   ; 
- D 0 - - - 0x025727 09:9717: 02        .byte $02   ; 
- D 0 - - - 0x025728 09:9718: 07        .byte $07   ; 
- D 0 - - - 0x025729 09:9719: 0D        .byte $0D   ; 
- D 0 - - - 0x02572A 09:971A: 11        .byte $11   ; 
- D 0 - - - 0x02572B 09:971B: 04        .byte $04   ; 
- D 0 - - - 0x02572C 09:971C: 04        .byte $04   ; 
- D 0 - - - 0x02572D 09:971D: 04        .byte $04   ; 
- D 0 - - - 0x02572E 09:971E: 04        .byte $04   ; 
- D 0 - - - 0x02572F 09:971F: 05        .byte $05   ; 
- D 0 - - - 0x025730 09:9720: 0A        .byte $0A   ; 
- D 0 - - - 0x025731 09:9721: 0E        .byte $0E   ; 
- D 0 - - - 0x025732 09:9722: 09        .byte $09   ; 
- D 0 - - - 0x025733 09:9723: 09        .byte $09   ; 
- D 0 - - - 0x025734 09:9724: 09        .byte $09   ; 
- D 0 - - - 0x025735 09:9725: 09        .byte $09   ; 
- D 0 - - - 0x025736 09:9726: 08        .byte $08   ; 
- D 0 - - - 0x025737 09:9727: 0B        .byte $0B   ; 
- D 0 - - - 0x025738 09:9728: 0F        .byte $0F   ; 



tbl_9729:
- D 0 - - - 0x025739 09:9729: 3F        .byte $3F   ; 
tbl_972A:
- D 0 - - - 0x02573A 09:972A: F9        .byte $F9   ; 
- D 0 - - - 0x02573B 09:972B: 4F        .byte $4F   ; 
- D 0 - - - 0x02573C 09:972C: F9        .byte $F9   ; 
- D 0 - - - 0x02573D 09:972D: 10        .byte $10   ; 
- D 0 - - - 0x02573E 09:972E: F9        .byte $F9   ; 
- D 0 - - - 0x02573F 09:972F: C6        .byte $C6   ; 
- D 0 - - - 0x025740 09:9730: F9        .byte $F9   ; 
- D 0 - - - 0x025741 09:9731: 10        .byte $10   ; 
- D 0 - - - 0x025742 09:9732: F9        .byte $F9   ; 
- D 0 - - - 0x025743 09:9733: 99        .byte $99   ; 
- D 0 - - - 0x025744 09:9734: F9        .byte $F9   ; 
- D 0 - - - 0x025745 09:9735: 9A        .byte $9A   ; 
- D 0 - - - 0x025746 09:9736: F9        .byte $F9   ; 



tbl_9737:
- D 0 - - - 0x025747 09:9737: 00        .byte $00   ; 00 Leo
- D 0 - - - 0x025748 09:9738: FD        .byte $FD   ; 01 Raph
- D 0 - - - 0x025749 09:9739: 00        .byte $00   ; 02 Mike
- D 0 - - - 0x02574A 09:973A: F5        .byte $F5   ; 03 Don
- D 0 - - - 0x02574B 09:973B: 05        .byte $05   ; 04 Casey
- D 0 - - - 0x02574C 09:973C: FA        .byte $FA   ; 05 Hot
- D 0 - - - 0x02574D 09:973D: F8        .byte $F8   ; 06 Shred



tbl_973E:
- D 0 - - - 0x02574E 09:973E: 2B        .byte $2B   ; 00 Leo
- D 0 - - - 0x02574F 09:973F: 08        .byte $08   ; 01 Raph
- D 0 - - - 0x025750 09:9740: 22        .byte $22   ; 02 Mike
- D 0 - - - 0x025751 09:9741: 2B        .byte $2B   ; 03 Don
- D 0 - - - 0x025752 09:9742: 38        .byte $38   ; 04 Casey
- D 0 - - - 0x025753 09:9743: 40        .byte $40   ; 05 Hot
- D 0 - - - 0x025754 09:9744: 40        .byte $40   ; 06 Shred



tbl_9745:
- D 0 - - - 0x025755 09:9745: 00        .byte off_974C - tbl_974C   ; 00 Leo
- D 0 - - - 0x025756 09:9746: 48        .byte off_9794 - tbl_974C   ; 01 Raph
- D 0 - - - 0x025757 09:9747: 24        .byte off_9770 - tbl_974C   ; 02 Mike
- D 0 - - - 0x025758 09:9748: 00        .byte off_974C - tbl_974C   ; 03 Don
- D 0 - - - 0x025759 09:9749: 68        .byte off_97B4 - tbl_974C   ; 04 Casey
- D 0 - - - 0x02575A 09:974A: 90        .byte off_97DC - tbl_974C   ; 05 Hot
- D 0 - - - 0x02575B 09:974B: B2        .byte off_97FE - tbl_974C   ; 06 Shred



tbl_974C:
off_974C:
; по 4 байта
- D 0 - - - 0x02575C 09:974C: 00        .byte $00   ; 
- D 0 - - - 0x02575D 09:974D: 53        .byte $53   ; 
- - - - - - 0x02575E 09:974E: 00        .byte $00   ; 
- - - - - - 0x02575F 09:974F: 00        .byte $00   ; 
- D 0 - - - 0x025760 09:9750: 8B        .byte $8B   ; 
- D 0 - - - 0x025761 09:9751: 06        .byte $06   ; 
- D 0 - - - 0x025762 09:9752: 18        .byte $18   ; 
- D 0 - - - 0x025763 09:9753: 00        .byte $00   ; 
- D 0 - - - 0x025764 09:9754: 00        .byte $00   ; 
- D 0 - - - 0x025765 09:9755: 19        .byte $19   ; 
- - - - - - 0x025766 09:9756: 00        .byte $00   ; 
- - - - - - 0x025767 09:9757: 00        .byte $00   ; 
- D 0 - - - 0x025768 09:9758: B5        .byte $B5   ; 
- D 0 - - - 0x025769 09:9759: 06        .byte $06   ; 
- D 0 - - - 0x02576A 09:975A: 18        .byte $18   ; 
- D 0 - - - 0x02576B 09:975B: 00        .byte $00   ; 
- D 0 - - - 0x02576C 09:975C: B5        .byte $B5   ; 
- D 0 - - - 0x02576D 09:975D: 05        .byte $05   ; 
- D 0 - - - 0x02576E 09:975E: 14        .byte $14   ; 
- D 0 - - - 0x02576F 09:975F: F8        .byte $F8   ; 
- D 0 - - - 0x025770 09:9760: B6        .byte $B6   ; 
- D 0 - - - 0x025771 09:9761: 05        .byte $05   ; 
- D 0 - - - 0x025772 09:9762: 10        .byte $10   ; 
- D 0 - - - 0x025773 09:9763: F0        .byte $F0   ; 
- D 0 - - - 0x025774 09:9764: B6        .byte $B6   ; 
- D 0 - - - 0x025775 09:9765: 05        .byte $05   ; 
- D 0 - - - 0x025776 09:9766: 01        .byte $01   ; 
- D 0 - - - 0x025777 09:9767: EC        .byte $EC   ; 
- D 0 - - - 0x025778 09:9768: B7        .byte $B7   ; 
- D 0 - - - 0x025779 09:9769: 05        .byte $05   ; 
- D 0 - - - 0x02577A 09:976A: F8        .byte $F8   ; 
- D 0 - - - 0x02577B 09:976B: E8        .byte $E8   ; 
- D 0 - - - 0x02577C 09:976C: B7        .byte $B7   ; 
- D 0 - - - 0x02577D 09:976D: C5        .byte $C5   ; 
- D 0 - - - 0x02577E 09:976E: E8        .byte $E8   ; 
- D 0 - - - 0x02577F 09:976F: E8        .byte $E8   ; 

off_9770:
- D 0 - - - 0x025780 09:9770: 00        .byte $00   ; 
- D 0 - - - 0x025781 09:9771: 53        .byte $53   ; 
- - - - - - 0x025782 09:9772: 00        .byte $00   ; 
- - - - - - 0x025783 09:9773: 00        .byte $00   ; 
- D 0 - - - 0x025784 09:9774: B5        .byte $B5   ; 
- D 0 - - - 0x025785 09:9775: 05        .byte $05   ; 
- D 0 - - - 0x025786 09:9776: 14        .byte $14   ; 
- D 0 - - - 0x025787 09:9777: 00        .byte $00   ; 
- D 0 - - - 0x025788 09:9778: 00        .byte $00   ; 
- D 0 - - - 0x025789 09:9779: 19        .byte $19   ; 
- - - - - - 0x02578A 09:977A: 00        .byte $00   ; 
- - - - - - 0x02578B 09:977B: 00        .byte $00   ; 
- D 0 - - - 0x02578C 09:977C: B5        .byte $B5   ; 
- D 0 - - - 0x02578D 09:977D: 05        .byte $05   ; 
- D 0 - - - 0x02578E 09:977E: 12        .byte $12   ; 
- D 0 - - - 0x02578F 09:977F: FC        .byte $FC   ; 
- D 0 - - - 0x025790 09:9780: B8        .byte $B8   ; 
- D 0 - - - 0x025791 09:9781: 05        .byte $05   ; 
- D 0 - - - 0x025792 09:9782: 10        .byte $10   ; 
- D 0 - - - 0x025793 09:9783: FA        .byte $FA   ; 
- D 0 - - - 0x025794 09:9784: B9        .byte $B9   ; 
- D 0 - - - 0x025795 09:9785: 05        .byte $05   ; 
- D 0 - - - 0x025796 09:9786: 08        .byte $08   ; 
- D 0 - - - 0x025797 09:9787: 00        .byte $00   ; 
- D 0 - - - 0x025798 09:9788: B9        .byte $B9   ; 
- D 0 - - - 0x025799 09:9789: 05        .byte $05   ; 
- D 0 - - - 0x02579A 09:978A: FE        .byte $FE   ; 
- D 0 - - - 0x02579B 09:978B: 00        .byte $00   ; 
- D 0 - - - 0x02579C 09:978C: BA        .byte $BA   ; 
- D 0 - - - 0x02579D 09:978D: 05        .byte $05   ; 
- D 0 - - - 0x02579E 09:978E: F8        .byte $F8   ; 
- D 0 - - - 0x02579F 09:978F: 00        .byte $00   ; 
- D 0 - - - 0x0257A0 09:9790: BA        .byte $BA   ; 
- D 0 - - - 0x0257A1 09:9791: C5        .byte $C5   ; 
- D 0 - - - 0x0257A2 09:9792: F0        .byte $F0   ; 
- D 0 - - - 0x0257A3 09:9793: 00        .byte $00   ; 

off_9794:
- D 0 - - - 0x0257A4 09:9794: CC        .byte $CC   ; 
- D 0 - - - 0x0257A5 09:9795: 0C        .byte $0C   ; 
- D 0 - - - 0x0257A6 09:9796: 08        .byte $08   ; 
- D 0 - - - 0x0257A7 09:9797: 00        .byte $00   ; 
- D 0 - - - 0x0257A8 09:9798: CD        .byte $CD   ; 
- D 0 - - - 0x0257A9 09:9799: 0C        .byte $0C   ; 
- D 0 - - - 0x0257AA 09:979A: 0B        .byte $0B   ; 
- D 0 - - - 0x0257AB 09:979B: 00        .byte $00   ; 
- D 0 - - - 0x0257AC 09:979C: CC        .byte $CC   ; 
- D 0 - - - 0x0257AD 09:979D: 0C        .byte $0C   ; 
- D 0 - - - 0x0257AE 09:979E: 08        .byte $08   ; 
- D 0 - - - 0x0257AF 09:979F: 00        .byte $00   ; 
- D 0 - - - 0x0257B0 09:97A0: CD        .byte $CD   ; 
- D 0 - - - 0x0257B1 09:97A1: 0C        .byte $0C   ; 
- D 0 - - - 0x0257B2 09:97A2: 0B        .byte $0B   ; 
- D 0 - - - 0x0257B3 09:97A3: 00        .byte $00   ; 
- D 0 - - - 0x0257B4 09:97A4: CC        .byte $CC   ; 
- D 0 - - - 0x0257B5 09:97A5: 0C        .byte $0C   ; 
- D 0 - - - 0x0257B6 09:97A6: 08        .byte $08   ; 
- D 0 - - - 0x0257B7 09:97A7: 00        .byte $00   ; 
- D 0 - - - 0x0257B8 09:97A8: CD        .byte $CD   ; 
- D 0 - - - 0x0257B9 09:97A9: 0C        .byte $0C   ; 
- D 0 - - - 0x0257BA 09:97AA: 0B        .byte $0B   ; 
- D 0 - - - 0x0257BB 09:97AB: 00        .byte $00   ; 
- D 0 - - - 0x0257BC 09:97AC: CC        .byte $CC   ; 
- D 0 - - - 0x0257BD 09:97AD: 0C        .byte $0C   ; 
- D 0 - - - 0x0257BE 09:97AE: 08        .byte $08   ; 
- D 0 - - - 0x0257BF 09:97AF: 00        .byte $00   ; 
- D 0 - - - 0x0257C0 09:97B0: CD        .byte $CD   ; 
- D 0 - - - 0x0257C1 09:97B1: 8C        .byte $8C   ; 
- D 0 - - - 0x0257C2 09:97B2: 0B        .byte $0B   ; 
- D 0 - - - 0x0257C3 09:97B3: 00        .byte $00   ; 

off_97B4:
- D 0 - - - 0x0257C4 09:97B4: 00        .byte $00   ; 
- D 0 - - - 0x0257C5 09:97B5: 55        .byte $55   ; 
- - - - - - 0x0257C6 09:97B6: 00        .byte $00   ; 
- - - - - - 0x0257C7 09:97B7: 00        .byte $00   ; 
- D 0 - - - 0x0257C8 09:97B8: B2        .byte $B2   ; 
- D 0 - - - 0x0257C9 09:97B9: 0A        .byte $0A   ; 
- D 0 - - - 0x0257CA 09:97BA: 18        .byte $18   ; 
- D 0 - - - 0x0257CB 09:97BB: 00        .byte $00   ; 
- D 0 - - - 0x0257CC 09:97BC: 00        .byte $00   ; 
- D 0 - - - 0x0257CD 09:97BD: 19        .byte $19   ; 
- - - - - - 0x0257CE 09:97BE: 00        .byte $00   ; 
- - - - - - 0x0257CF 09:97BF: 00        .byte $00   ; 
- D 0 - - - 0x0257D0 09:97C0: B3        .byte $B3   ; 
- D 0 - - - 0x0257D1 09:97C1: 08        .byte $08   ; 
- D 0 - - - 0x0257D2 09:97C2: 1C        .byte $1C   ; 
- D 0 - - - 0x0257D3 09:97C3: EC        .byte $EC   ; 
- D 0 - - - 0x0257D4 09:97C4: B4        .byte $B4   ; 
- D 0 - - - 0x0257D5 09:97C5: 08        .byte $08   ; 
- D 0 - - - 0x0257D6 09:97C6: F0        .byte $F0   ; 
- D 0 - - - 0x0257D7 09:97C7: E8        .byte $E8   ; 
- D 0 - - - 0x0257D8 09:97C8: B5        .byte $B5   ; 
- D 0 - - - 0x0257D9 09:97C9: 30        .byte $30   ; 
- D 0 - - - 0x0257DA 09:97CA: E8        .byte $E8   ; 
- D 0 - - - 0x0257DB 09:97CB: 0C        .byte $0C   ; 
- D 0 - - - 0x0257DC 09:97CC: B5        .byte $B5   ; 
- D 0 - - - 0x0257DD 09:97CD: 50        .byte $50   ; 
- D 0 - - - 0x0257DE 09:97CE: F0        .byte $F0   ; 
- D 0 - - - 0x0257DF 09:97CF: 0C        .byte $0C   ; 
- D 0 - - - 0x0257E0 09:97D0: A8        .byte $A8   ; 
- D 0 - - - 0x0257E1 09:97D1: 05        .byte $05   ; 
- D 0 - - - 0x0257E2 09:97D2: 00        .byte $00   ; 
- D 0 - - - 0x0257E3 09:97D3: 00        .byte $00   ; 
- D 0 - - - 0x0257E4 09:97D4: A7        .byte $A7   ; 
- D 0 - - - 0x0257E5 09:97D5: 05        .byte $05   ; 
- D 0 - - - 0x0257E6 09:97D6: 00        .byte $00   ; 
- D 0 - - - 0x0257E7 09:97D7: 00        .byte $00   ; 
- D 0 - - - 0x0257E8 09:97D8: A2        .byte $A2   ; 
- D 0 - - - 0x0257E9 09:97D9: 85        .byte $85   ; 
- D 0 - - - 0x0257EA 09:97DA: 00        .byte $00   ; 
- D 0 - - - 0x0257EB 09:97DB: 00        .byte $00   ; 

off_97DC:
- D 0 - - - 0x0257EC 09:97DC: 00        .byte $00   ; 
- D 0 - - - 0x0257ED 09:97DD: 5A        .byte $5A   ; 
- - - - - - 0x0257EE 09:97DE: 00        .byte $00   ; 
- - - - - - 0x0257EF 09:97DF: 00        .byte $00   ; 
- D 0 - - - 0x0257F0 09:97E0: 92        .byte $92   ; 
- D 0 - - - 0x0257F1 09:97E1: 08        .byte $08   ; 
- D 0 - - - 0x0257F2 09:97E2: 18        .byte $18   ; 
- D 0 - - - 0x0257F3 09:97E3: 00        .byte $00   ; 
- D 0 - - - 0x0257F4 09:97E4: 00        .byte $00   ; 
- D 0 - - - 0x0257F5 09:97E5: 19        .byte $19   ; 
- - - - - - 0x0257F6 09:97E6: 00        .byte $00   ; 
- - - - - - 0x0257F7 09:97E7: 00        .byte $00   ; 
- D 0 - - - 0x0257F8 09:97E8: A5        .byte $A5   ; 
- D 0 - - - 0x0257F9 09:97E9: 08        .byte $08   ; 
- D 0 - - - 0x0257FA 09:97EA: 20        .byte $20   ; 
- D 0 - - - 0x0257FB 09:97EB: F8        .byte $F8   ; 
- D 0 - - - 0x0257FC 09:97EC: AF        .byte $AF   ; 
- D 0 - - - 0x0257FD 09:97ED: 08        .byte $08   ; 
- D 0 - - - 0x0257FE 09:97EE: 28        .byte $28   ; 
- D 0 - - - 0x0257FF 09:97EF: F0        .byte $F0   ; 
- D 0 - - - 0x025800 09:97F0: B0        .byte $B0   ; 
- D 0 - - - 0x025801 09:97F1: 08        .byte $08   ; 
- D 0 - - - 0x025802 09:97F2: 1C        .byte $1C   ; 
- D 0 - - - 0x025803 09:97F3: E0        .byte $E0   ; 
- D 0 - - - 0x025804 09:97F4: B1        .byte $B1   ; 
- D 0 - - - 0x025805 09:97F5: 02        .byte $02   ; 
- D 0 - - - 0x025806 09:97F6: F8        .byte $F8   ; 
- D 0 - - - 0x025807 09:97F7: D8        .byte $D8   ; 
- D 0 - - - 0x025808 09:97F8: B1        .byte $B1   ; 
- D 0 - - - 0x025809 09:97F9: 42        .byte $42   ; 
- D 0 - - - 0x02580A 09:97FA: F8        .byte $F8   ; 
- D 0 - - - 0x02580B 09:97FB: D8        .byte $D8   ; 
- D 0 - - - 0x02580C 09:97FC: B1        .byte $B1   ; 
- D 0 - - - 0x02580D 09:97FD: 88        .byte $88   ; 

off_97FE:
- D 0 - - - 0x02580E 09:97FE: 00        .byte $00   ; 
- D 0 - - - 0x02580F 09:97FF: 57        .byte $57   ; 
- - - - - - 0x025810 09:9800: 00        .byte $00   ; 
- - - - - - 0x025811 09:9801: 00        .byte $00   ; 
- D 0 - - - 0x025812 09:9802: B4        .byte $B4   ; 
- D 0 - - - 0x025813 09:9803: 0C        .byte $0C   ; 
- D 0 - - - 0x025814 09:9804: 18        .byte $18   ; 
- D 0 - - - 0x025815 09:9805: F8        .byte $F8   ; 
- D 0 - - - 0x025816 09:9806: 00        .byte $00   ; 
- D 0 - - - 0x025817 09:9807: 19        .byte $19   ; 
- - - - - - 0x025818 09:9808: 00        .byte $00   ; 
- - - - - - 0x025819 09:9809: 00        .byte $00   ; 
- D 0 - - - 0x02581A 09:980A: B5        .byte $B5   ; 
- D 0 - - - 0x02581B 09:980B: 08        .byte $08   ; 
- D 0 - - - 0x02581C 09:980C: 01        .byte $01   ; 
- D 0 - - - 0x02581D 09:980D: E0        .byte $E0   ; 
- D 0 - - - 0x02581E 09:980E: B6        .byte $B6   ; 
- D 0 - - - 0x02581F 09:980F: 08        .byte $08   ; 
- D 0 - - - 0x025820 09:9810: F8        .byte $F8   ; 
- D 0 - - - 0x025821 09:9811: F0        .byte $F0   ; 
- D 0 - - - 0x025822 09:9812: B7        .byte $B7   ; 
- D 0 - - - 0x025823 09:9813: 4C        .byte $4C   ; 
- D 0 - - - 0x025824 09:9814: F8        .byte $F8   ; 
- D 0 - - - 0x025825 09:9815: F0        .byte $F0   ; 
- D 0 - - - 0x025826 09:9816: B7        .byte $B7   ; 
- D 0 - - - 0x025827 09:9817: 8C        .byte $8C   ; 



tbl_9818:
- D 0 - - - 0x025828 09:9818: 00        .byte off_981F - tbl_981F   ; 00 Leo
- D 0 - - - 0x025829 09:9819: 09        .byte off_9828 - tbl_981F   ; 01 Raph
- D 0 - - - 0x02582A 09:981A: 01        .byte off_9820 - tbl_981F   ; 02 Mike
- D 0 - - - 0x02582B 09:981B: 00        .byte off_981F - tbl_981F   ; 03 Don
- D 0 - - - 0x02582C 09:981C: 13        .byte off_9832 - tbl_981F   ; 04 Casey
- D 0 - - - 0x02582D 09:981D: 0B        .byte off_982A - tbl_981F   ; 05 Hot
- D 0 - - - 0x02582E 09:981E: 1A        .byte off_9839 - tbl_981F   ; 06 Shred



tbl_981F:
off_981F:
- - - - - - 0x02582F 09:981F: 00        .byte $00   ; 

off_9820:
- D 0 - - - 0x025830 09:9820: 00        .byte $00   ; 
- D 0 - - - 0x025831 09:9821: 00        .byte $00   ; 
- D 0 - - - 0x025832 09:9822: 00        .byte $00   ; 
- D 0 - - - 0x025833 09:9823: 00        .byte $00   ; 
- D 0 - - - 0x025834 09:9824: 00        .byte $00   ; 
- D 0 - - - 0x025835 09:9825: 00        .byte $00   ; 
- D 0 - - - 0x025836 09:9826: 40        .byte $40   ; 
- D 0 - - - 0x025837 09:9827: 40        .byte $40   ; 

off_9828:
- D 0 - - - 0x025838 09:9828: 00        .byte $00   ; 
- D 0 - - - 0x025839 09:9829: 00        .byte $00   ; 

off_982A:
- D 0 - - - 0x02583A 09:982A: 00        .byte $00   ; 
- D 0 - - - 0x02583B 09:982B: 00        .byte $00   ; 
- D 0 - - - 0x02583C 09:982C: 00        .byte $00   ; 
- D 0 - - - 0x02583D 09:982D: 00        .byte $00   ; 
- D 0 - - - 0x02583E 09:982E: 00        .byte $00   ; 
- D 0 - - - 0x02583F 09:982F: 00        .byte $00   ; 
- D 0 - - - 0x025840 09:9830: 40        .byte $40   ; 
- - - - - - 0x025841 09:9831: 00        .byte $00   ; 

off_9832:
- - - - - - 0x025842 09:9832: 40        .byte $40   ; 
- D 0 - - - 0x025843 09:9833: 40        .byte $40   ; 
- - - - - - 0x025844 09:9834: 40        .byte $40   ; 
- D 0 - - - 0x025845 09:9835: 40        .byte $40   ; 
- D 0 - - - 0x025846 09:9836: 00        .byte $00   ; 
- D 0 - - - 0x025847 09:9837: 00        .byte $00   ; 
- - - - - - 0x025848 09:9838: 00        .byte $00   ; 

off_9839:
- - - - - - 0x025849 09:9839: 00        .byte $00   ; 
- D 0 - - - 0x02584A 09:983A: 00        .byte $00   ; 
- - - - - - 0x02584B 09:983B: 00        .byte $00   ; 
- D 0 - - - 0x02584C 09:983C: 00        .byte $00   ; 
- D 0 - - - 0x02584D 09:983D: 40        .byte $40   ; 
- - - - - - 0x02584E 09:983E: 40        .byte $40   ; 



tbl_983F:
- D 0 - - - 0x02584F 09:983F: 00        .byte off_9846 - tbl_9846   ; 00 Leo
- D 0 - - - 0x025850 09:9840: 0E        .byte off_9854 - tbl_9846   ; 01 Raph
- D 0 - - - 0x025851 09:9841: 00        .byte off_9846 - tbl_9846   ; 02 Mike
- D 0 - - - 0x025852 09:9842: 00        .byte off_9846 - tbl_9846   ; 03 Don
- D 0 - - - 0x025853 09:9843: 07        .byte off_984D - tbl_9846   ; 04 Casey
- D 0 - - - 0x025854 09:9844: 00        .byte off_9846 - tbl_9846   ; 05 Hot
- D 0 - - - 0x025855 09:9845: 15        .byte off_985B - tbl_9846   ; 06 Shred



tbl_9846:
off_9846:
- D 0 - - - 0x025856 09:9846: 00        .byte $00   ; 
- D 0 - - - 0x025857 09:9847: 00        .byte $00   ; 
- D 0 - - - 0x025858 09:9848: 00        .byte $00   ; 
- D 0 - - - 0x025859 09:9849: 00        .byte $00   ; 
- D 0 - - - 0x02585A 09:984A: 08        .byte $08   ; 
- D 0 - - - 0x02585B 09:984B: 10        .byte $10   ; 
- D 0 - - - 0x02585C 09:984C: 18        .byte $18   ; 

off_984D:
- D 0 - - - 0x02585D 09:984D: 20        .byte $20   ; 
- D 0 - - - 0x02585E 09:984E: 20        .byte $20   ; 
- D 0 - - - 0x02585F 09:984F: 20        .byte $20   ; 
- D 0 - - - 0x025860 09:9850: 20        .byte $20   ; 
- D 0 - - - 0x025861 09:9851: 26        .byte $26   ; 
- D 0 - - - 0x025862 09:9852: 2C        .byte $2C   ; 
- D 0 - - - 0x025863 09:9853: 32        .byte $32   ; 

off_9854:
- D 0 - - - 0x025864 09:9854: 38        .byte $38   ; 
- D 0 - - - 0x025865 09:9855: 38        .byte $38   ; 
- D 0 - - - 0x025866 09:9856: 38        .byte $38   ; 
- D 0 - - - 0x025867 09:9857: 38        .byte $38   ; 
- D 0 - - - 0x025868 09:9858: 40        .byte $40   ; 
- D 0 - - - 0x025869 09:9859: 48        .byte $48   ; 
- D 0 - - - 0x02586A 09:985A: 51        .byte $51   ; 

off_985B:
- D 0 - - - 0x02586B 09:985B: 59        .byte $59   ; 
- D 0 - - - 0x02586C 09:985C: 59        .byte $59   ; 
- D 0 - - - 0x02586D 09:985D: 59        .byte $59   ; 
- D 0 - - - 0x02586E 09:985E: 59        .byte $59   ; 
- D 0 - - - 0x02586F 09:985F: 5F        .byte $5F   ; 
- D 0 - - - 0x025870 09:9860: 65        .byte $65   ; 
- D 0 - - - 0x025871 09:9861: 6B        .byte $6B   ; 



tbl_9862:
- - - - - - 0x025872 09:9862: A2        .byte $A2   ; 
- D 0 - - - 0x025873 09:9863: A2        .byte $A2   ; 
- - - - - - 0x025874 09:9864: A2        .byte $A2   ; 
- D 0 - - - 0x025875 09:9865: A2        .byte $A2   ; 
- D 0 - - - 0x025876 09:9866: A2        .byte $A2   ; 
- D 0 - - - 0x025877 09:9867: A7        .byte $A7   ; 
- D 0 - - - 0x025878 09:9868: A7        .byte $A7   ; 
- D 0 - - - 0x025879 09:9869: A7        .byte $A7   ; 
- - - - - - 0x02587A 09:986A: A4        .byte $A4   ; 
- D 0 - - - 0x02587B 09:986B: A4        .byte $A4   ; 
- - - - - - 0x02587C 09:986C: A4        .byte $A4   ; 
- D 0 - - - 0x02587D 09:986D: A4        .byte $A4   ; 
- D 0 - - - 0x02587E 09:986E: A4        .byte $A4   ; 
- D 0 - - - 0x02587F 09:986F: A9        .byte $A9   ; 
- D 0 - - - 0x025880 09:9870: A9        .byte $A9   ; 
- D 0 - - - 0x025881 09:9871: A9        .byte $A9   ; 
- - - - - - 0x025882 09:9872: 9F        .byte $9F   ; 
- D 0 - - - 0x025883 09:9873: 9F        .byte $9F   ; 
- - - - - - 0x025884 09:9874: 9F        .byte $9F   ; 
- D 0 - - - 0x025885 09:9875: 9F        .byte $9F   ; 
- D 0 - - - 0x025886 09:9876: 9F        .byte $9F   ; 
- D 0 - - - 0x025887 09:9877: A3        .byte $A3   ; 
- D 0 - - - 0x025888 09:9878: A3        .byte $A3   ; 
- D 0 - - - 0x025889 09:9879: A3        .byte $A3   ; 
- - - - - - 0x02588A 09:987A: A4        .byte $A4   ; 
- D 0 - - - 0x02588B 09:987B: A4        .byte $A4   ; 
- - - - - - 0x02588C 09:987C: A4        .byte $A4   ; 
- D 0 - - - 0x02588D 09:987D: A4        .byte $A4   ; 
- D 0 - - - 0x02588E 09:987E: A4        .byte $A4   ; 
- D 0 - - - 0x02588F 09:987F: A8        .byte $A8   ; 
- D 0 - - - 0x025890 09:9880: A8        .byte $A8   ; 
- D 0 - - - 0x025891 09:9881: A8        .byte $A8   ; 
- - - - - - 0x025892 09:9882: A2        .byte $A2   ; 
- D 0 - - - 0x025893 09:9883: A2        .byte $A2   ; 
- - - - - - 0x025894 09:9884: A2        .byte $A2   ; 
- D 0 - - - 0x025895 09:9885: A2        .byte $A2   ; 
- D 0 - - - 0x025896 09:9886: A3        .byte $A3   ; 
- D 0 - - - 0x025897 09:9887: A4        .byte $A4   ; 
- - - - - - 0x025898 09:9888: A4        .byte $A4   ; 
- D 0 - - - 0x025899 09:9889: A4        .byte $A4   ; 
- - - - - - 0x02589A 09:988A: A4        .byte $A4   ; 
- D 0 - - - 0x02589B 09:988B: A4        .byte $A4   ; 
- D 0 - - - 0x02589C 09:988C: A5        .byte $A5   ; 
- D 0 - - - 0x02589D 09:988D: A6        .byte $A6   ; 
- - - - - - 0x02589E 09:988E: 9F        .byte $9F   ; 
- D 0 - - - 0x02589F 09:988F: 9F        .byte $9F   ; 
- - - - - - 0x0258A0 09:9890: 9F        .byte $9F   ; 
- D 0 - - - 0x0258A1 09:9891: 9F        .byte $9F   ; 
- D 0 - - - 0x0258A2 09:9892: A0        .byte $A0   ; 
- D 0 - - - 0x0258A3 09:9893: A0        .byte $A0   ; 
- - - - - - 0x0258A4 09:9894: A4        .byte $A4   ; 
- D 0 - - - 0x0258A5 09:9895: A4        .byte $A4   ; 
- - - - - - 0x0258A6 09:9896: A4        .byte $A4   ; 
- D 0 - - - 0x0258A7 09:9897: A4        .byte $A4   ; 
- D 0 - - - 0x0258A8 09:9898: A5        .byte $A5   ; 
- D 0 - - - 0x0258A9 09:9899: A5        .byte $A5   ; 
- D 0 - - - 0x0258AA 09:989A: A2        .byte $A2   ; 
- D 0 - - - 0x0258AB 09:989B: D1        .byte $D1   ; 
- D 0 - - - 0x0258AC 09:989C: A2        .byte $A2   ; 
- D 0 - - - 0x0258AD 09:989D: D1        .byte $D1   ; 
- D 0 - - - 0x0258AE 09:989E: A2        .byte $A2   ; 
- D 0 - - - 0x0258AF 09:989F: D1        .byte $D1   ; 
- D 0 - - - 0x0258B0 09:98A0: A2        .byte $A2   ; 
- D 0 - - - 0x0258B1 09:98A1: D1        .byte $D1   ; 
- D 0 - - - 0x0258B2 09:98A2: A3        .byte $A3   ; 
- D 0 - - - 0x0258B3 09:98A3: 8E        .byte $8E   ; 
- D 0 - - - 0x0258B4 09:98A4: A3        .byte $A3   ; 
- D 0 - - - 0x0258B5 09:98A5: 8E        .byte $8E   ; 
- D 0 - - - 0x0258B6 09:98A6: A3        .byte $A3   ; 
- D 0 - - - 0x0258B7 09:98A7: 8E        .byte $8E   ; 
- D 0 - - - 0x0258B8 09:98A8: A3        .byte $A3   ; 
- D 0 - - - 0x0258B9 09:98A9: 8E        .byte $8E   ; 
- D 0 - - - 0x0258BA 09:98AA: 9B        .byte $9B   ; 
- D 0 - - - 0x0258BB 09:98AB: 9B        .byte $9B   ; 
- D 0 - - - 0x0258BC 09:98AC: 9B        .byte $9B   ; 
- D 0 - - - 0x0258BD 09:98AD: 9B        .byte $9B   ; 
- D 0 - - - 0x0258BE 09:98AE: 9B        .byte $9B   ; 
- D 0 - - - 0x0258BF 09:98AF: 9B        .byte $9B   ; 
- D 0 - - - 0x0258C0 09:98B0: 9B        .byte $9B   ; 
- D 0 - - - 0x0258C1 09:98B1: 9B        .byte $9B   ; 
- - - - - - 0x0258C2 09:98B2: 9B        .byte $9B   ; 
- D 0 - - - 0x0258C3 09:98B3: A9        .byte $A9   ; 
- D 0 - - - 0x0258C4 09:98B4: A2        .byte $A2   ; 
- D 0 - - - 0x0258C5 09:98B5: A9        .byte $A9   ; 
- D 0 - - - 0x0258C6 09:98B6: A2        .byte $A2   ; 
- D 0 - - - 0x0258C7 09:98B7: A9        .byte $A9   ; 
- D 0 - - - 0x0258C8 09:98B8: A2        .byte $A2   ; 
- D 0 - - - 0x0258C9 09:98B9: A9        .byte $A9   ; 
- D 0 - - - 0x0258CA 09:98BA: A2        .byte $A2   ; 
- - - - - - 0x0258CB 09:98BB: A2        .byte $A2   ; 
- D 0 - - - 0x0258CC 09:98BC: A2        .byte $A2   ; 
- - - - - - 0x0258CD 09:98BD: A2        .byte $A2   ; 
- D 0 - - - 0x0258CE 09:98BE: A7        .byte $A7   ; 
- D 0 - - - 0x0258CF 09:98BF: A7        .byte $A7   ; 
- - - - - - 0x0258D0 09:98C0: A7        .byte $A7   ; 
- - - - - - 0x0258D1 09:98C1: A4        .byte $A4   ; 
- D 0 - - - 0x0258D2 09:98C2: A4        .byte $A4   ; 
- - - - - - 0x0258D3 09:98C3: A4        .byte $A4   ; 
- D 0 - - - 0x0258D4 09:98C4: A9        .byte $A9   ; 
- D 0 - - - 0x0258D5 09:98C5: A9        .byte $A9   ; 
- - - - - - 0x0258D6 09:98C6: A9        .byte $A9   ; 
- - - - - - 0x0258D7 09:98C7: 9F        .byte $9F   ; 
- D 0 - - - 0x0258D8 09:98C8: 9F        .byte $9F   ; 
- - - - - - 0x0258D9 09:98C9: 9F        .byte $9F   ; 
- D 0 - - - 0x0258DA 09:98CA: A3        .byte $A3   ; 
- D 0 - - - 0x0258DB 09:98CB: A3        .byte $A3   ; 
- - - - - - 0x0258DC 09:98CC: A3        .byte $A3   ; 
- - - - - - 0x0258DD 09:98CD: A4        .byte $A4   ; 
- D 0 - - - 0x0258DE 09:98CE: A4        .byte $A4   ; 
- - - - - - 0x0258DF 09:98CF: A4        .byte $A4   ; 
- D 0 - - - 0x0258E0 09:98D0: A8        .byte $A8   ; 
- D 0 - - - 0x0258E1 09:98D1: A8        .byte $A8   ; 
- - - - - - 0x0258E2 09:98D2: A8        .byte $A8   ; 



tbl_98D3:
- D 0 - - - 0x0258E3 09:98D3: 81        .byte $81   ; 00 Leo
- D 0 - - - 0x0258E4 09:98D4: 01        .byte $01   ; 01 Raph
- D 0 - - - 0x0258E5 09:98D5: 02        .byte $02   ; 02 Mike
- D 0 - - - 0x0258E6 09:98D6: 81        .byte $81   ; 03 Don
- D 0 - - - 0x0258E7 09:98D7: 01        .byte $01   ; 04 Casey
- D 0 - - - 0x0258E8 09:98D8: 02        .byte $02   ; 05 Hot
- D 0 - - - 0x0258E9 09:98D9: 04        .byte $04   ; 06 Shred



tbl_98DA:
- D 0 - - - 0x0258EA 09:98DA: FE        .byte $FE   ; 00 Leo
- D 0 - - - 0x0258EB 09:98DB: FE        .byte $FE   ; 01 Raph
- D 0 - - - 0x0258EC 09:98DC: FF        .byte $FF   ; 02 Mike
- D 0 - - - 0x0258ED 09:98DD: 01        .byte $01   ; 03 Don
- D 0 - - - 0x0258EE 09:98DE: 01        .byte $01   ; 04 Casey
- D 0 - - - 0x0258EF 09:98DF: FC        .byte $FC   ; 05 Hot
- D 0 - - - 0x0258F0 09:98E0: FF        .byte $FF   ; 06 Shred



tbl_98E1:
- D 0 - - - 0x0258F1 09:98E1: F1        .byte $F1   ; 00 Leo
- D 0 - - - 0x0258F2 09:98E2: F1        .byte $F1   ; 01 Raph
- D 0 - - - 0x0258F3 09:98E3: F1        .byte $F1   ; 02 Mike
- D 0 - - - 0x0258F4 09:98E4: F1        .byte $F1   ; 03 Don
- D 0 - - - 0x0258F5 09:98E5: F1        .byte $F1   ; 04 Casey
- D 0 - - - 0x0258F6 09:98E6: 00        .byte $00   ; 05 Hot
- D 0 - - - 0x0258F7 09:98E7: 08        .byte $08   ; 06 Shred



tbl_98E8:
- D 0 - - - 0x0258F8 09:98E8: 99        .byte $99   ; 
- D 0 - - - 0x0258F9 09:98E9: 99        .byte $99   ; 
- D 0 - - - 0x0258FA 09:98EA: 99        .byte $99   ; 
- D 0 - - - 0x0258FB 09:98EB: 99        .byte $99   ; 
- D 0 - - - 0x0258FC 09:98EC: A2        .byte $A2   ; 
- D 0 - - - 0x0258FD 09:98ED: 9D        .byte $9D   ; 
- D 0 - - - 0x0258FE 09:98EE: A2        .byte $A2   ; 
- D 0 - - - 0x0258FF 09:98EF: 80        .byte $80   ; 
- D 0 - - - 0x025900 09:98F0: 80        .byte $80   ; 
- D 0 - - - 0x025901 09:98F1: 80        .byte $80   ; 
- D 0 - - - 0x025902 09:98F2: 80        .byte $80   ; 
- D 0 - - - 0x025903 09:98F3: 81        .byte $81   ; 
- D 0 - - - 0x025904 09:98F4: 81        .byte $81   ; 
- D 0 - - - 0x025905 09:98F5: 80        .byte $80   ; 
- D 0 - - - 0x025906 09:98F6: A3        .byte $A3   ; 
- D 0 - - - 0x025907 09:98F7: A3        .byte $A3   ; 
- D 0 - - - 0x025908 09:98F8: A3        .byte $A3   ; 
- D 0 - - - 0x025909 09:98F9: A3        .byte $A3   ; 
- D 0 - - - 0x02590A 09:98FA: A5        .byte $A5   ; 
- D 0 - - - 0x02590B 09:98FB: A0        .byte $A0   ; 
- D 0 - - - 0x02590C 09:98FC: A5        .byte $A5   ; 
- D 0 - - - 0x02590D 09:98FD: A1        .byte $A1   ; 
- D 0 - - - 0x02590E 09:98FE: A1        .byte $A1   ; 
- D 0 - - - 0x02590F 09:98FF: A1        .byte $A1   ; 
- D 0 - - - 0x025910 09:9900: A1        .byte $A1   ; 
- D 0 - - - 0x025911 09:9901: A3        .byte $A3   ; 
- D 0 - - - 0x025912 09:9902: 9E        .byte $9E   ; 
- D 0 - - - 0x025913 09:9903: A3        .byte $A3   ; 
- D 0 - - - 0x025914 09:9904: D9        .byte $D9   ; 
- D 0 - - - 0x025915 09:9905: D9        .byte $D9   ; 
- D 0 - - - 0x025916 09:9906: D9        .byte $D9   ; 
- D 0 - - - 0x025917 09:9907: D9        .byte $D9   ; 
- D 0 - - - 0x025918 09:9908: AA        .byte $AA   ; 
- D 0 - - - 0x025919 09:9909: 9F        .byte $9F   ; 
- D 0 - - - 0x02591A 09:990A: A9        .byte $A9   ; 
- - - - - - 0x02591B 09:990B: A1        .byte $A1   ; 
- - - - - - 0x02591C 09:990C: A1        .byte $A1   ; 
- - - - - - 0x02591D 09:990D: A1        .byte $A1   ; 
- - - - - - 0x02591E 09:990E: A1        .byte $A1   ; 
- - - - - - 0x02591F 09:990F: A0        .byte $A0   ; 
- - - - - - 0x025920 09:9910: 9B        .byte $9B   ; 
- - - - - - 0x025921 09:9911: A3        .byte $A3   ; 
- D 0 - - - 0x025922 09:9912: A3        .byte $A3   ; 
- D 0 - - - 0x025923 09:9913: A3        .byte $A3   ; 
- D 0 - - - 0x025924 09:9914: A3        .byte $A3   ; 
- D 0 - - - 0x025925 09:9915: A3        .byte $A3   ; 
- D 0 - - - 0x025926 09:9916: A5        .byte $A5   ; 
- D 0 - - - 0x025927 09:9917: A0        .byte $A0   ; 
- D 0 - - - 0x025928 09:9918: A5        .byte $A5   ; 
- D 0 - - - 0x025929 09:9919: 9B        .byte $9B   ; 
- D 0 - - - 0x02592A 09:991A: 9B        .byte $9B   ; 
- D 0 - - - 0x02592B 09:991B: 9B        .byte $9B   ; 
- D 0 - - - 0x02592C 09:991C: 9B        .byte $9B   ; 
- D 0 - - - 0x02592D 09:991D: 9F        .byte $9F   ; 
- D 0 - - - 0x02592E 09:991E: 9A        .byte $9A   ; 
- D 0 - - - 0x02592F 09:991F: 9F        .byte $9F   ; 
- D 0 - - - 0x025930 09:9920: 9C        .byte $9C   ; 
- D 0 - - - 0x025931 09:9921: 9C        .byte $9C   ; 
- D 0 - - - 0x025932 09:9922: 9C        .byte $9C   ; 
- D 0 - - - 0x025933 09:9923: 9C        .byte $9C   ; 
- D 0 - - - 0x025934 09:9924: A0        .byte $A0   ; 
- D 0 - - - 0x025935 09:9925: 9B        .byte $9B   ; 
- D 0 - - - 0x025936 09:9926: A0        .byte $A0   ; 
- D 0 - - - 0x025937 09:9927: A5        .byte $A5   ; 
- D 0 - - - 0x025938 09:9928: A5        .byte $A5   ; 
- D 0 - - - 0x025939 09:9929: A5        .byte $A5   ; 
- D 0 - - - 0x02593A 09:992A: A5        .byte $A5   ; 
- D 0 - - - 0x02593B 09:992B: A7        .byte $A7   ; 
- D 0 - - - 0x02593C 09:992C: A1        .byte $A1   ; 
- D 0 - - - 0x02593D 09:992D: A6        .byte $A6   ; 
- D 0 - - - 0x02593E 09:992E: A6        .byte $A6   ; 
- D 0 - - - 0x02593F 09:992F: A6        .byte $A6   ; 
- D 0 - - - 0x025940 09:9930: A6        .byte $A6   ; 
- D 0 - - - 0x025941 09:9931: A6        .byte $A6   ; 
- D 0 - - - 0x025942 09:9932: A8        .byte $A8   ; 
- D 0 - - - 0x025943 09:9933: A2        .byte $A2   ; 
- D 0 - - - 0x025944 09:9934: A7        .byte $A7   ; 
- D 0 - - - 0x025945 09:9935: A3        .byte $A3   ; 
- D 0 - - - 0x025946 09:9936: A3        .byte $A3   ; 
- D 0 - - - 0x025947 09:9937: A3        .byte $A3   ; 
- D 0 - - - 0x025948 09:9938: A3        .byte $A3   ; 
- D 0 - - - 0x025949 09:9939: A5        .byte $A5   ; 
- D 0 - - - 0x02594A 09:993A: A0        .byte $A0   ; 
- D 0 - - - 0x02594B 09:993B: A5        .byte $A5   ; 
- D 0 - - - 0x02594C 09:993C: E0        .byte $E0   ; 
- D 0 - - - 0x02594D 09:993D: E0        .byte $E0   ; 
- D 0 - - - 0x02594E 09:993E: E0        .byte $E0   ; 
- D 0 - - - 0x02594F 09:993F: E0        .byte $E0   ; 
- D 0 - - - 0x025950 09:9940: B8        .byte $B8   ; 
- D 0 - - - 0x025951 09:9941: 9D        .byte $9D   ; 
- D 0 - - - 0x025952 09:9942: B8        .byte $B8   ; 
- D 0 - - - 0x025953 09:9943: C4        .byte $C4   ; 
- D 0 - - - 0x025954 09:9944: C4        .byte $C4   ; 
- D 0 - - - 0x025955 09:9945: C4        .byte $C4   ; 
- D 0 - - - 0x025956 09:9946: C4        .byte $C4   ; 
- D 0 - - - 0x025957 09:9947: A1        .byte $A1   ; 
- D 0 - - - 0x025958 09:9948: 9C        .byte $9C   ; 
- D 0 - - - 0x025959 09:9949: A1        .byte $A1   ; 
- D 0 - - - 0x02595A 09:994A: D1        .byte $D1   ; 
- D 0 - - - 0x02595B 09:994B: D1        .byte $D1   ; 
- D 0 - - - 0x02595C 09:994C: D1        .byte $D1   ; 
- D 0 - - - 0x02595D 09:994D: D1        .byte $D1   ; 
- D 0 - - - 0x02595E 09:994E: B1        .byte $B1   ; 
- D 0 - - - 0x02595F 09:994F: 9C        .byte $9C   ; 
- D 0 - - - 0x025960 09:9950: A4        .byte $A4   ; 
- D 0 - - - 0x025961 09:9951: A1        .byte $A1   ; 
- D 0 - - - 0x025962 09:9952: A1        .byte $A1   ; 
- D 0 - - - 0x025963 09:9953: A1        .byte $A1   ; 
- D 0 - - - 0x025964 09:9954: A1        .byte $A1   ; 
- D 0 - - - 0x025965 09:9955: A3        .byte $A3   ; 
- D 0 - - - 0x025966 09:9956: 9E        .byte $9E   ; 
- D 0 - - - 0x025967 09:9957: A3        .byte $A3   ; 
- - - - - - 0x025968 09:9958: 8F        .byte $8F   ; 
- - - - - - 0x025969 09:9959: 8D        .byte $8D   ; 
- - - - - - 0x02596A 09:995A: 93        .byte $93   ; 
- - - - - - 0x02596B 09:995B: 94        .byte $94   ; 
- - - - - - 0x02596C 09:995C: 96        .byte $96   ; 
- - - - - - 0x02596D 09:995D: 96        .byte $96   ; 
- - - - - - 0x02596E 09:995E: 93        .byte $93   ; 
- - - - - - 0x02596F 09:995F: D1        .byte $D1   ; 
- - - - - - 0x025970 09:9960: D1        .byte $D1   ; 
- - - - - - 0x025971 09:9961: D1        .byte $D1   ; 
- - - - - - 0x025972 09:9962: D1        .byte $D1   ; 
- - - - - - 0x025973 09:9963: CD        .byte $CD   ; 
- - - - - - 0x025974 09:9964: B9        .byte $B9   ; 
- - - - - - 0x025975 09:9965: C9        .byte $C9   ; 
- D 0 - - - 0x025976 09:9966: A2        .byte $A2   ; 
- D 0 - - - 0x025977 09:9967: A2        .byte $A2   ; 
- D 0 - - - 0x025978 09:9968: A2        .byte $A2   ; 
- D 0 - - - 0x025979 09:9969: A2        .byte $A2   ; 
- D 0 - - - 0x02597A 09:996A: A4        .byte $A4   ; 
- D 0 - - - 0x02597B 09:996B: 9F        .byte $9F   ; 
- D 0 - - - 0x02597C 09:996C: C8        .byte $C8   ; 
- D 0 - - - 0x02597D 09:996D: D1        .byte $D1   ; 
- D 0 - - - 0x02597E 09:996E: D1        .byte $D1   ; 
- D 0 - - - 0x02597F 09:996F: D1        .byte $D1   ; 
- D 0 - - - 0x025980 09:9970: D1        .byte $D1   ; 
- D 0 - - - 0x025981 09:9971: A4        .byte $A4   ; 
- D 0 - - - 0x025982 09:9972: 9F        .byte $9F   ; 
- D 0 - - - 0x025983 09:9973: C8        .byte $C8   ; 
- D 0 - - - 0x025984 09:9974: D0        .byte $D0   ; 
- D 0 - - - 0x025985 09:9975: D0        .byte $D0   ; 
- D 0 - - - 0x025986 09:9976: D0        .byte $D0   ; 
- D 0 - - - 0x025987 09:9977: D0        .byte $D0   ; 
- D 0 - - - 0x025988 09:9978: A4        .byte $A4   ; 
- D 0 - - - 0x025989 09:9979: 9F        .byte $9F   ; 
- D 0 - - - 0x02598A 09:997A: C8        .byte $C8   ; 
- D 0 - - - 0x02598B 09:997B: A4        .byte $A4   ; 
- D 0 - - - 0x02598C 09:997C: A4        .byte $A4   ; 
- D 0 - - - 0x02598D 09:997D: A4        .byte $A4   ; 
- D 0 - - - 0x02598E 09:997E: A4        .byte $A4   ; 
- D 0 - - - 0x02598F 09:997F: A8        .byte $A8   ; 
- D 0 - - - 0x025990 09:9980: A2        .byte $A2   ; 
- D 0 - - - 0x025991 09:9981: A7        .byte $A7   ; 
- D 0 - - - 0x025992 09:9982: C4        .byte $C4   ; 
- D 0 - - - 0x025993 09:9983: C4        .byte $C4   ; 
- D 0 - - - 0x025994 09:9984: C4        .byte $C4   ; 
- D 0 - - - 0x025995 09:9985: C4        .byte $C4   ; 
- D 0 - - - 0x025996 09:9986: A2        .byte $A2   ; 
- D 0 - - - 0x025997 09:9987: 9D        .byte $9D   ; 
- D 0 - - - 0x025998 09:9988: A2        .byte $A2   ; 
- - - - - - 0x025999 09:9989: 04        .byte $04   ; 
- - - - - - 0x02599A 09:998A: 04        .byte $04   ; 
- - - - - - 0x02599B 09:998B: 03        .byte $03   ; 
- - - - - - 0x02599C 09:998C: 04        .byte $04   ; 
- - - - - - 0x02599D 09:998D: 02        .byte $02   ; 
- - - - - - 0x02599E 09:998E: 05        .byte $05   ; 
- - - - - - 0x02599F 09:998F: 04        .byte $04   ; 
- - - - - - 0x0259A0 09:9990: FF        .byte $FF   ; 
- - - - - - 0x0259A1 09:9991: FF        .byte $FF   ; 
- - - - - - 0x0259A2 09:9992: FF        .byte $FF   ; 
- - - - - - 0x0259A3 09:9993: FF        .byte $FF   ; 
- - - - - - 0x0259A4 09:9994: FF        .byte $FF   ; 
- - - - - - 0x0259A5 09:9995: FF        .byte $FF   ; 



tbl_9996:
- - - - - - 0x0259A6 09:9996: FF        .byte $FF   ; 00
- D 0 - - - 0x0259A7 09:9997: 81        .byte $81   ; 01
- D 0 - - - 0x0259A8 09:9998: 01        .byte $01   ; 02
- - - - - - 0x0259A9 09:9999: 80        .byte $80   ; 03
- - - - - - 0x0259AA 09:999A: 00        .byte $00   ; 04
- - - - - - 0x0259AB 09:999B: 00        .byte $00   ; 05



tbl_999C:
- - - - - - 0x0259AC 09:999C: 00        .byte $00   ; 00
- D 0 - - - 0x0259AD 09:999D: 21        .byte $21   ; 01
- - - - - - 0x0259AE 09:999E: 21        .byte $21   ; 02
- D 0 - - - 0x0259AF 09:999F: C1        .byte $C1   ; 03
- D 0 - - - 0x0259B0 09:99A0: A0        .byte $A0   ; 04
- D 0 - - - 0x0259B1 09:99A1: 00        .byte $00   ; 05



tbl_99A2:
- D 0 - - - 0x0259B2 09:99A2: 28        .byte $28   ; 00 Leo
- D 0 - - - 0x0259B3 09:99A3: 20        .byte $20   ; 01 Raph
- D 0 - - - 0x0259B4 09:99A4: 18        .byte $18   ; 02 Mike
- D 0 - - - 0x0259B5 09:99A5: 2C        .byte $2C   ; 03 Don
- D 0 - - - 0x0259B6 09:99A6: 10        .byte $10   ; 04 Casey
- D 0 - - - 0x0259B7 09:99A7: 38        .byte $38   ; 05 Hot
- D 0 - - - 0x0259B8 09:99A8: 30        .byte $30   ; 06 Shred



tbl_99A9:
- D 0 - - - 0x0259B9 09:99A9: A0        .byte $A0   ; 00 Leo
- D 0 - - - 0x0259BA 09:99AA: 96        .byte $96   ; 01 Raph
- D 0 - - - 0x0259BB 09:99AB: AA        .byte $AA   ; 02 Mike
- D 0 - - - 0x0259BC 09:99AC: 8C        .byte $8C   ; 03 Don
- D 0 - - - 0x0259BD 09:99AD: B4        .byte $B4   ; 04 Casey
- D 0 - - - 0x0259BE 09:99AE: 78        .byte $78   ; 05 Hot
- D 0 - - - 0x0259BF 09:99AF: 82        .byte $82   ; 06 Shred



tbl_99B0:
- D 0 - - - 0x0259C0 09:99B0: FF        .byte $FF   ; 00
- D 0 - - - 0x0259C1 09:99B1: 00        .byte $00   ; 01
- D 0 - - - 0x0259C2 09:99B2: 40        .byte $40   ; 02
- D 0 - - - 0x0259C3 09:99B3: FF        .byte $FF   ; 03



tbl_99B4:
- D 0 - - - 0x0259C4 09:99B4: FF        .byte $FF   ; 00
- D 0 - - - 0x0259C5 09:99B5: FE        .byte $FE   ; 01



tbl_99B6:
- D 0 - - - 0x0259C6 09:99B6: 40        .byte $40   ; 00
- D 0 - - - 0x0259C7 09:99B7: 80        .byte $80   ; 01
- D 0 - - - 0x0259C8 09:99B8: 81        .byte $81   ; 02



tbl_99B9:
- D 0 - - - 0x0259C9 09:99B9: C0        .byte $C0   ; 00
- D 0 - - - 0x0259CA 09:99BA: C1        .byte $C1   ; 01
- D 0 - - - 0x0259CB 09:99BB: 23        .byte $23   ; 02



tbl_99BC:
- D 0 - - - 0x0259CC 09:99BC: 13        .byte $13   ; 
- D 0 - - - 0x0259CD 09:99BD: 13        .byte $13   ; 
- D 0 - - - 0x0259CE 09:99BE: 13        .byte $13   ; 
- D 0 - - - 0x0259CF 09:99BF: 13        .byte $13   ; 
- D 0 - - - 0x0259D0 09:99C0: 15        .byte $15   ; 
- - - - - - 0x0259D1 09:99C1: 13        .byte $13   ; 
- - - - - - 0x0259D2 09:99C2: 13        .byte $13   ; 
- D 0 - - - 0x0259D3 09:99C3: 14        .byte $14   ; 
- D 0 - - - 0x0259D4 09:99C4: 14        .byte $14   ; 
- D 0 - - - 0x0259D5 09:99C5: 14        .byte $14   ; 
- D 0 - - - 0x0259D6 09:99C6: 14        .byte $14   ; 
- D 0 - - - 0x0259D7 09:99C7: 16        .byte $16   ; 
- - - - - - 0x0259D8 09:99C8: 14        .byte $14   ; 
- - - - - - 0x0259D9 09:99C9: 14        .byte $14   ; 



tbl_99CA:
- D 0 - - - 0x0259DA 09:99CA: F8        .byte $F8   ; 00
- D 0 - - - 0x0259DB 09:99CB: F0        .byte $F0   ; 01
- D 0 - - - 0x0259DC 09:99CC: 00        .byte $00   ; 02
- D 0 - - - 0x0259DD 09:99CD: EA        .byte $EA   ; 03



tbl_99CE:
- D 0 - - - 0x0259DE 09:99CE: FA        .byte $FA   ; 00
- D 0 - - - 0x0259DF 09:99CF: 02        .byte $02   ; 01
- D 0 - - - 0x0259E0 09:99D0: 04        .byte $04   ; 02
- D 0 - - - 0x0259E1 09:99D1: FA        .byte $FA   ; 03



tbl_99D2:
- D 0 - - - 0x0259E2 09:99D2: 4D        .byte $4D   ; 00 Leo
- D 0 - - - 0x0259E3 09:99D3: 4D        .byte $4D   ; 01 Raph
- D 0 - - - 0x0259E4 09:99D4: 4D        .byte $4D   ; 02 Mike
- D 0 - - - 0x0259E5 09:99D5: 4D        .byte $4D   ; 03 Don
- D 0 - - - 0x0259E6 09:99D6: 4E        .byte $4E   ; 04 Casey
- D 0 - - - 0x0259E7 09:99D7: 50        .byte $50   ; 05 Hot
- D 0 - - - 0x0259E8 09:99D8: 4F        .byte $4F   ; 06 Shred



sub_99D9:
C - - - - - 0x0259E9 09:99D9: A4 A9     LDY ram_object_index
C - - - - - 0x0259EB 09:99DB: A5 95     LDA ram_0095
C - - - - - 0x0259ED 09:99DD: C9 10     CMP #$10
C - - - - - 0x0259EF 09:99DF: B0 07     BCS bra_99E8
C - - - - - 0x0259F1 09:99E1: B9 30 05  LDA ram_0530,Y
C - - - - - 0x0259F4 09:99E4: C9 04     CMP #$04
C - - - - - 0x0259F6 09:99E6: B0 67     BCS bra_9A4F_RTS
bra_99E8:
C - - - - - 0x0259F8 09:99E8: BD 30 05  LDA ram_0530,X
C - - - - - 0x0259FB 09:99EB: C9 04     CMP #$04
C - - - - - 0x0259FD 09:99ED: B0 60     BCS bra_9A4F_RTS
C - - - - - 0x0259FF 09:99EF: A0 01     LDY #$01
C - - - - - 0x025A01 09:99F1: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x025A04 09:99F4: 0A        ASL
C - - - - - 0x025A05 09:99F5: 10 01     BPL bra_99F8
C - - - - - 0x025A07 09:99F7: C8        INY
bra_99F8:
C - - - - - 0x025A08 09:99F8: 84 08     STY ram_0008
C - - - - - 0x025A0A 09:99FA: B5 91     LDA ram_btn_hold,X
C - - - - - 0x025A0C 09:99FC: 29 0F     AND #con_btns_Dpad
C - - - - - 0x025A0E 09:99FE: 85 09     STA ram_0009
C - - - - - 0x025A10 09:9A00: 20 1F 9D  JSR sub_9D1F
C - - - - - 0x025A13 09:9A03: BC 08 06  LDY ram_0608,X
C - - - - - 0x025A16 09:9A06: BD 50 05  LDA ram_id_object,X
C - - - - - 0x025A19 09:9A09: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x025A1C 09:9A0C: 1A 9A     .word ofs_9A1A_00_Leo
- D 0 - I - 0x025A1E 09:9A0E: DF 9A     .word ofs_9ADF_01_Raph
- D 0 - I - 0x025A20 09:9A10: 07 9B     .word ofs_9B07_02_Mike
- D 0 - I - 0x025A22 09:9A12: 74 9B     .word ofs_9B74_03_Don
- D 0 - I - 0x025A24 09:9A14: 7E 9B     .word ofs_9B7E_04_Casey
- D 0 - I - 0x025A26 09:9A16: DF 9B     .word ofs_9BDF_05_Hot
- D 0 - I - 0x025A28 09:9A18: 31 9C     .word ofs_9C31_06_Shred



ofs_9A1A_00_Leo:
C - - J - - 0x025A2A 09:9A1A: 98        TYA
C - - - - - 0x025A2B 09:9A1B: D0 09     BNE bra_9A26
C - - - - - 0x025A2D 09:9A1D: A5 09     LDA ram_0009
C - - - - - 0x025A2F 09:9A1F: C9 04     CMP #$04
C - - - - - 0x025A31 09:9A21: D0 2C     BNE bra_9A4F_RTS
C - - - - - 0x025A33 09:9A23: 4C D3 9A  JMP loc_9AD3
bra_9A26:
C - - - - - 0x025A36 09:9A26: 88        DEY
C - - - - - 0x025A37 09:9A27: D0 27     BNE bra_9A50
C - - - - - 0x025A39 09:9A29: A5 09     LDA ram_0009
C - - - - - 0x025A3B 09:9A2B: C9 04     CMP #$04
C - - - - - 0x025A3D 09:9A2D: D0 05     BNE bra_9A34
C - - - - - 0x025A3F 09:9A2F: A9 14     LDA #$14
C - - - - - 0x025A41 09:9A31: 9D 0C 06  STA ram_060C,X
bra_9A34:
C - - - - - 0x025A44 09:9A34: DE 0C 06  DEC ram_060C,X
C - - - - - 0x025A47 09:9A37: F0 1A     BEQ bra_9A53
C - - - - - 0x025A49 09:9A39: 20 AD 9A  JSR sub_9AAD
C - - - - - 0x025A4C 09:9A3C: B5 8E     LDA ram_btn_press,X
C - - - - - 0x025A4E 09:9A3E: 29 03     AND #con_btns_LR
C - - - - - 0x025A50 09:9A40: C5 08     CMP ram_0008
C - - - - - 0x025A52 09:9A42: D0 0B     BNE bra_9A4F_RTS
C - - - - - 0x025A54 09:9A44: B5 91     LDA ram_btn_hold,X
C - - - - - 0x025A56 09:9A46: 15 8E     ORA ram_btn_press,X
C - - - - - 0x025A58 09:9A48: 29 04     AND #con_btn_Down
C - - - - - 0x025A5A 09:9A4A: F0 03     BEQ bra_9A4F_RTS
C - - - - - 0x025A5C 09:9A4C: 4C D3 9A  JMP loc_9AD3
bra_9A4F_RTS:
C - - - - - 0x025A5F 09:9A4F: 60        RTS
bra_9A50:
C - - - - - 0x025A60 09:9A50: DE 0C 06  DEC ram_060C,X
bra_9A53:
C - - - - - 0x025A63 09:9A53: F0 68     BEQ bra_9ABD
C - - - - - 0x025A65 09:9A55: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x025A68 09:9A58: C9 AE     CMP #$AE
C - - - - - 0x025A6A 09:9A5A: 90 F3     BCC bra_9A4F_RTS
C - - - - - 0x025A6C 09:9A5C: 20 AD 9A  JSR sub_9AAD
C - - - - - 0x025A6F 09:9A5F: C5 09     CMP ram_0009
C - - - - - 0x025A71 09:9A61: D0 06     BNE bra_9A69
C - - - - - 0x025A73 09:9A63: 1D 31 06  ORA ram_0631,X
C - - - - - 0x025A76 09:9A66: 9D 31 06  STA ram_0631,X
bra_9A69:
C - - - - - 0x025A79 09:9A69: A9 80     LDA #con_btn_A
C - - - - - 0x025A7B 09:9A6B: 35 8E     AND ram_btn_press,X
C - - - - - 0x025A7D 09:9A6D: 1D 31 06  ORA ram_0631,X
C - - - - - 0x025A80 09:9A70: 9D 31 06  STA ram_0631,X
C - - - - - 0x025A83 09:9A73: A5 08     LDA ram_0008
C - - - - - 0x025A85 09:9A75: 09 80     ORA #con_btn_A
C - - - - - 0x025A87 09:9A77: DD 31 06  CMP ram_0631,X
C - - - - - 0x025A8A 09:9A7A: D0 D3     BNE bra_9A4F_RTS



loc_9A7C:
.export loc_0x025A8C
loc_0x025A8C:
C D 0 - - - 0x025A8C 09:9A7C: BD 20 05  LDA ram_0520,X
C - - - - - 0x025A8F 09:9A7F: F0 05     BEQ bra_9A86
C - - - - - 0x025A91 09:9A81: 4A        LSR
C - - - - - 0x025A92 09:9A82: C9 03     CMP #$03
C - - - - - 0x025A94 09:9A84: D0 C9     BNE bra_9A4F_RTS
bra_9A86:
loc_9A86:
C D 0 - - - 0x025A96 09:9A86: A9 00     LDA #$00
C - - - - - 0x025A98 09:9A88: 2C        .byte $2C
loc_9A89:
C - - - - - 0x025A99 09:9A89: A9 01     LDA #$01
C - - - - - 0x025A9B 09:9A8B: BC 30 05  LDY ram_0530,X
C - - - - - 0x025A9E 09:9A8E: C0 03     CPY #$03
C - - - - - 0x025AA0 09:9A90: D0 25     BNE bra_9AB7_RTS
C - - - - - 0x025AA2 09:9A92: 4C 83 FE  JMP loc_0x03FE93



.export loc_0x025AA5
loc_0x025AA5:
C D 0 - - - 0x025AA5 09:9A95: C0 04     CPY #$04
C - - - - - 0x025AA7 09:9A97: F0 1E     BEQ bra_9AB7_RTS
C - - - - - 0x025AA9 09:9A99: C0 03     CPY #$03
C - - - - - 0x025AAB 09:9A9B: F0 1A     BEQ bra_9AB7_RTS
C - - - - - 0x025AAD 09:9A9D: 9D A0 04  STA ram_04A0,X
C - - - - - 0x025AB0 09:9AA0: A9 00     LDA #$00
C - - - - - 0x025AB2 09:9AA2: 9D 7A 06  STA ram_067A,X
C - - - - - 0x025AB5 09:9AA5: 20 2C EA  JSR sub_0x03EA3C
C - - - - - 0x025AB8 09:9AA8: A0 00     LDY #$00
C - - - - - 0x025ABA 09:9AAA: 4C 84 84  JMP loc_8484



sub_9AAD:
C - - - - - 0x025ABD 09:9AAD: A9 02     LDA #con_btn_Left
C - - - - - 0x025ABF 09:9AAF: C6 08     DEC ram_0008
C - - - - - 0x025AC1 09:9AB1: F0 02     BEQ bra_9AB5
C - - - - - 0x025AC3 09:9AB3: A9 01     LDA #con_btn_Right
bra_9AB5:
C - - - - - 0x025AC5 09:9AB5: 85 08     STA ram_0008
bra_9AB7_RTS:
C - - - - - 0x025AC7 09:9AB7: 60        RTS



bra_9ABD:
loc_9ABD:
C D 0 - - - 0x025ACD 09:9ABD: A9 00     LDA #$00
C - - - - - 0x025ACF 09:9ABF: 9D 08 06  STA ram_0608,X
C - - - - - 0x025AD2 09:9AC2: 9D 31 06  STA ram_0631,X
bra_9AC5:
C - - - - - 0x025AD5 09:9AC5: 9D 0C 06  STA ram_060C,X
C - - - - - 0x025AD8 09:9AC8: 60        RTS



bra_9AC9:
loc_9AC9:
C D 0 - - - 0x025AD9 09:9AC9: FE 0C 06  INC ram_060C,X
C - - - - - 0x025ADC 09:9ACC: 60        RTS



sub_9ACD:
C - - - - - 0x025ADD 09:9ACD: BD 0C 06  LDA ram_060C,X
C - - - - - 0x025AE0 09:9AD0: 9D 41 06  STA ram_0641,X
loc_9AD3:
sub_9AD3:
C D 0 - - - 0x025AE3 09:9AD3: A9 00     LDA #$00
C - - - - - 0x025AE5 09:9AD5: 9D 31 06  STA ram_0631,X
C - - - - - 0x025AE8 09:9AD8: FE 08 06  INC ram_0608,X
loc_9ADB:
C D 0 - - - 0x025AEB 09:9ADB: A9 14     LDA #$14
C - - - - - 0x025AED 09:9ADD: D0 E6     BNE bra_9AC5



ofs_9ADF_01_Raph:
C - - J - - 0x025AEF 09:9ADF: 98        TYA
C - - - - - 0x025AF0 09:9AE0: D0 75     BNE bra_9B57
C - - - - - 0x025AF2 09:9AE2: 20 AD 9A  JSR sub_9AAD
C - - - - - 0x025AF5 09:9AE5: 35 91     AND ram_btn_hold,X
C - - - - - 0x025AF7 09:9AE7: F0 0B     BEQ bra_9AF4
C - - - - - 0x025AF9 09:9AE9: A9 76     LDA #$76
C - - - - - 0x025AFB 09:9AEB: 20 0E E1  JSR sub_0x03E11E
C - - - - - 0x025AFE 09:9AEE: DD 0C 06  CMP ram_060C,X
C - - - - - 0x025B01 09:9AF1: B0 D6     BCS bra_9AC9
C - - - - - 0x025B03 09:9AF3: 60        RTS
bra_9AF4:
C - - - - - 0x025B04 09:9AF4: BD 2E 01  LDA ram_012E,X
C - - - - - 0x025B07 09:9AF7: DD 0C 06  CMP ram_060C,X
C - - - - - 0x025B0A 09:9AFA: F0 02     BEQ bra_9AFE
C - - - - - 0x025B0C 09:9AFC: B0 BF     BCS bra_9ABD
bra_9AFE:
C - - - - - 0x025B0E 09:9AFE: 20 CD 9A  JSR sub_9ACD
C - - - - - 0x025B11 09:9B01: 20 AD 9A  JSR sub_9AAD
C - - - - - 0x025B14 09:9B04: 4C 57 9B  JMP loc_9B57



ofs_9B07_02_Mike:
C - - J - - 0x025B17 09:9B07: 98        TYA
C - - - - - 0x025B18 09:9B08: D0 26     BNE bra_9B30
C - - - - - 0x025B1A 09:9B0A: 20 AD 9A  JSR sub_9AAD
C - - - - - 0x025B1D 09:9B0D: B5 91     LDA ram_btn_hold,X
C - - - - - 0x025B1F 09:9B0F: 29 04     AND #con_btn_Down
C - - - - - 0x025B21 09:9B11: F0 0F     BEQ bra_9B22
C - - - - - 0x025B23 09:9B13: B5 91     LDA ram_btn_hold,X
C - - - - - 0x025B25 09:9B15: 25 08     AND ram_0008
C - - - - - 0x025B27 09:9B17: F0 09     BEQ bra_9B22
C - - - - - 0x025B29 09:9B19: BD 2E 01  LDA ram_012E,X
C - - - - - 0x025B2C 09:9B1C: DD 0C 06  CMP ram_060C,X
C - - - - - 0x025B2F 09:9B1F: B0 A8     BCS bra_9AC9
C - - - - - 0x025B31 09:9B21: 60        RTS
bra_9B22:
C - - - - - 0x025B32 09:9B22: BD 2E 01  LDA ram_012E,X
C - - - - - 0x025B35 09:9B25: DD 0C 06  CMP ram_060C,X
C - - - - - 0x025B38 09:9B28: B0 93     BCS bra_9ABD
C - - - - - 0x025B3A 09:9B2A: 20 D3 9A  JSR sub_9AD3
C - - - - - 0x025B3D 09:9B2D: 20 AD 9A  JSR sub_9AAD
bra_9B30:
C - - - - - 0x025B40 09:9B30: DE 0C 06  DEC ram_060C,X
C - - - - - 0x025B43 09:9B33: F0 88     BEQ bra_9ABD
C - - - - - 0x025B45 09:9B35: B5 8E     LDA ram_btn_press,X
C - - - - - 0x025B47 09:9B37: 25 08     AND ram_0008
C - - - - - 0x025B49 09:9B39: 1D 31 06  ORA ram_0631,X
C - - - - - 0x025B4C 09:9B3C: 9D 31 06  STA ram_0631,X
C - - - - - 0x025B4F 09:9B3F: B5 8E     LDA ram_btn_press,X
C - - - - - 0x025B51 09:9B41: 29 C0     AND #con_btns_AB
C - - - - - 0x025B53 09:9B43: 1D 31 06  ORA ram_0631,X
C - - - - - 0x025B56 09:9B46: 9D 31 06  STA ram_0631,X
C - - - - - 0x025B59 09:9B49: 29 C0     AND #con_btns_AB
C - - - - - 0x025B5B 09:9B4B: F0 60     BEQ bra_9BAD_RTS
C - - - - - 0x025B5D 09:9B4D: BD 31 06  LDA ram_0631,X
C - - - - - 0x025B60 09:9B50: 25 08     AND ram_0008
C - - - - - 0x025B62 09:9B52: F0 59     BEQ bra_9BAD_RTS
C - - - - - 0x025B64 09:9B54: 4C 7C 9A  JMP loc_9A7C



bra_9B57:
loc_9B57:
C D 0 - - - 0x025B67 09:9B57: A9 40     LDA #$40
C - - - - - 0x025B69 09:9B59: DE 0C 06  DEC ram_060C,X
C - - - - - 0x025B6C 09:9B5C: D0 03     BNE bra_9B61
C - - - - - 0x025B6E 09:9B5E: 4C BD 9A  JMP loc_9ABD
bra_9B61:
C - - - - - 0x025B71 09:9B61: 05 08     ORA ram_0008
C - - - - - 0x025B73 09:9B63: 85 00     STA ram_0000
C - - - - - 0x025B75 09:9B65: 35 8E     AND ram_btn_press,X
C - - - - - 0x025B77 09:9B67: 1D 31 06  ORA ram_0631,X
C - - - - - 0x025B7A 09:9B6A: 9D 31 06  STA ram_0631,X
C - - - - - 0x025B7D 09:9B6D: C5 00     CMP ram_0000
C - - - - - 0x025B7F 09:9B6F: D0 3C     BNE bra_9BAD_RTS
C - - - - - 0x025B81 09:9B71: 4C 8D FE  JMP loc_0x03FE9D



ofs_9B74_03_Don:
C - - J - - 0x025B84 09:9B74: BD 2E 01  LDA ram_012E,X
C - - - - - 0x025B87 09:9B77: 85 00     STA ram_0000
C - - - - - 0x025B89 09:9B79: 98        TYA
C - - - - - 0x025B8A 09:9B7A: F0 12     BEQ bra_9B8E
C - - - - - 0x025B8C 09:9B7C: D0 30     BNE bra_9BAE



ofs_9B7E_04_Casey:
C - - J - - 0x025B8E 09:9B7E: 20 84 9B  JSR sub_9B84
C - - - - - 0x025B91 09:9B81: 4C B9 9C  JMP loc_9CB9



sub_9B84:
C - - - - - 0x025B94 09:9B84: BD 2E 01  LDA ram_012E,X
C - - - - - 0x025B97 09:9B87: 85 00     STA ram_0000
C - - - - - 0x025B99 09:9B89: 98        TYA
C - - - - - 0x025B9A 09:9B8A: F0 02     BEQ bra_9B8E
C - - - - - 0x025B9C 09:9B8C: D0 23     BNE bra_9BB1
bra_9B8E:
C - - - - - 0x025B9E 09:9B8E: B5 91     LDA ram_btn_hold,X
C - - - - - 0x025BA0 09:9B90: 29 04     AND #con_btn_Down
C - - - - - 0x025BA2 09:9B92: F0 0A     BEQ bra_9B9E
C - - - - - 0x025BA4 09:9B94: BD 0C 06  LDA ram_060C,X
C - - - - - 0x025BA7 09:9B97: C5 00     CMP ram_0000
C - - - - - 0x025BA9 09:9B99: B0 12     BCS bra_9BAD_RTS
C - - - - - 0x025BAB 09:9B9B: 4C C9 9A  JMP loc_9AC9
bra_9B9E:
C - - - - - 0x025BAE 09:9B9E: BD 0C 06  LDA ram_060C,X
C - - - - - 0x025BB1 09:9BA1: C5 00     CMP ram_0000
C - - - - - 0x025BB3 09:9BA3: 90 62     BCC bra_9C07
C - - - - - 0x025BB5 09:9BA5: 20 D3 9A  JSR sub_9AD3
C - - - - - 0x025BB8 09:9BA8: A9 10     LDA #$10
C - - - - - 0x025BBA 09:9BAA: 9D 0C 06  STA ram_060C,X
bra_9BAD_RTS:
C - - - - - 0x025BBD 09:9BAD: 60        RTS
bra_9BAE:
C - - - - - 0x025BBE 09:9BAE: A9 88     LDA #$88
C - - - - - 0x025BC0 09:9BB0: 2C        .byte $2C
bra_9BB1:
C - - - - - 0x025BC1 09:9BB1: A9 48     LDA #$48
C - - - - - 0x025BC3 09:9BB3: 85 00     STA ram_0000
C - - - - - 0x025BC5 09:9BB5: DE 0C 06  DEC ram_060C,X
C - - - - - 0x025BC8 09:9BB8: D0 03     BNE bra_9BBD
C - - - - - 0x025BCA 09:9BBA: 4C BD 9A  JMP loc_9ABD
bra_9BBD:
C - - - - - 0x025BCD 09:9BBD: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x025BD0 09:9BC0: C9 AB     CMP #$AB
C - - - - - 0x025BD2 09:9BC2: 90 E9     BCC bra_9BAD_RTS
C - - - - - 0x025BD4 09:9BC4: BD 20 05  LDA ram_0520,X
C - - - - - 0x025BD7 09:9BC7: 4A        LSR
C - - - - - 0x025BD8 09:9BC8: F0 04     BEQ bra_9BCE
C - - - - - 0x025BDA 09:9BCA: C9 03     CMP #$03
C - - - - - 0x025BDC 09:9BCC: D0 DF     BNE bra_9BAD_RTS
bra_9BCE:
C - - - - - 0x025BDE 09:9BCE: A5 00     LDA ram_0000
C - - - - - 0x025BE0 09:9BD0: 35 8E     AND ram_btn_press,X
C - - - - - 0x025BE2 09:9BD2: 1D 31 06  ORA ram_0631,X
C - - - - - 0x025BE5 09:9BD5: 9D 31 06  STA ram_0631,X
C - - - - - 0x025BE8 09:9BD8: C5 00     CMP ram_0000
C - - - - - 0x025BEA 09:9BDA: D0 D1     BNE bra_9BAD_RTS
C - - - - - 0x025BEC 09:9BDC: 4C 86 9A  JMP loc_9A86



ofs_9BDF_05_Hot:
C - - J - - 0x025BEF 09:9BDF: 98        TYA
C - - - - - 0x025BF0 09:9BE0: D0 09     BNE bra_9BEB
C - - - - - 0x025BF2 09:9BE2: A5 09     LDA ram_0009
C - - - - - 0x025BF4 09:9BE4: C9 04     CMP #$04
C - - - - - 0x025BF6 09:9BE6: D0 48     BNE bra_9C30_RTS
C - - - - - 0x025BF8 09:9BE8: 4C D3 9A  JMP loc_9AD3
bra_9BEB:
C - - - - - 0x025BFB 09:9BEB: DE 0C 06  DEC ram_060C,X
C - - - - - 0x025BFE 09:9BEE: F0 17     BEQ bra_9C07
C - - - - - 0x025C00 09:9BF0: 88        DEY
C - - - - - 0x025C01 09:9BF1: D0 17     BNE bra_9C0A
C - - - - - 0x025C03 09:9BF3: A5 09     LDA ram_0009
C - - - - - 0x025C05 09:9BF5: 29 04     AND #$04
C - - - - - 0x025C07 09:9BF7: F0 37     BEQ bra_9C30_RTS
C - - - - - 0x025C09 09:9BF9: A9 04     LDA #$04
C - - - - - 0x025C0B 09:9BFB: 05 08     ORA ram_0008
C - - - - - 0x025C0D 09:9BFD: C5 09     CMP ram_0009
C - - - - - 0x025C0F 09:9BFF: F0 03     BEQ bra_9C04
C - - - - - 0x025C11 09:9C01: 4C DB 9A  JMP loc_9ADB
bra_9C04:
C - - - - - 0x025C14 09:9C04: 4C D3 9A  JMP loc_9AD3
bra_9C07:
C - - - - - 0x025C17 09:9C07: 4C BD 9A  JMP loc_9ABD
bra_9C0A:
C - - - - - 0x025C1A 09:9C0A: BD 00 06  LDA ram_0600,X
C - - - - - 0x025C1D 09:9C0D: 30 21     BMI bra_9C30_RTS
C - - - - - 0x025C1F 09:9C0F: A9 80     LDA #con_btn_A
C - - - - - 0x025C21 09:9C11: 05 08     ORA ram_0008
C - - - - - 0x025C23 09:9C13: 85 00     STA ram_0000
C - - - - - 0x025C25 09:9C15: B5 8E     LDA ram_btn_press,X
C - - - - - 0x025C27 09:9C17: 29 80     AND #con_btn_A
C - - - - - 0x025C29 09:9C19: 1D 31 06  ORA ram_0631,X
C - - - - - 0x025C2C 09:9C1C: 9D 31 06  STA ram_0631,X
C - - - - - 0x025C2F 09:9C1F: B5 91     LDA ram_btn_hold,X
C - - - - - 0x025C31 09:9C21: 25 08     AND ram_0008
C - - - - - 0x025C33 09:9C23: 1D 31 06  ORA ram_0631,X
C - - - - - 0x025C36 09:9C26: 9D 31 06  STA ram_0631,X
C - - - - - 0x025C39 09:9C29: C5 00     CMP ram_0000
C - - - - - 0x025C3B 09:9C2B: D0 03     BNE bra_9C30_RTS
C - - - - - 0x025C3D 09:9C2D: 4C 7C 9A  JMP loc_9A7C
bra_9C30_RTS:
C - - - - - 0x025C40 09:9C30: 60        RTS



ofs_9C31_06_Shred:
C - - J - - 0x025C41 09:9C31: 20 7B 9C  JSR sub_9C7B
C - - - - - 0x025C44 09:9C34: 98        TYA
C - - - - - 0x025C45 09:9C35: F0 05     BEQ bra_9C3C
C - - - - - 0x025C47 09:9C37: D0 0C     BNE bra_9C45



bra_9C3C:
C - - - - - 0x025C4C 09:9C3C: A5 08     LDA ram_0008
C - - - - - 0x025C4E 09:9C3E: C5 09     CMP ram_0009
C - - - - - 0x025C50 09:9C40: D0 EE     BNE bra_9C30_RTS
bra_9C42:
C - - - - - 0x025C52 09:9C42: 4C D3 9A  JMP loc_9AD3
bra_9C45:
C - - - - - 0x025C55 09:9C45: DE 0C 06  DEC ram_060C,X
C - - - - - 0x025C58 09:9C48: F0 BD     BEQ bra_9C07
C - - - - - 0x025C5A 09:9C4A: 88        DEY
C - - - - - 0x025C5B 09:9C4B: D0 11     BNE bra_9C5E
C - - - - - 0x025C5D 09:9C4D: A5 08     LDA ram_0008
C - - - - - 0x025C5F 09:9C4F: 25 09     AND ram_0009
C - - - - - 0x025C61 09:9C51: F0 DD     BEQ bra_9C30_RTS
C - - - - - 0x025C63 09:9C53: A9 04     LDA #$04
C - - - - - 0x025C65 09:9C55: 05 08     ORA ram_0008
C - - - - - 0x025C67 09:9C57: C5 09     CMP ram_0009
C - - - - - 0x025C69 09:9C59: F0 E7     BEQ bra_9C42
C - - - - - 0x025C6B 09:9C5B: 4C DB 9A  JMP loc_9ADB
bra_9C5E:
C - - - - - 0x025C6E 09:9C5E: A9 04     LDA #$04
C - - - - - 0x025C70 09:9C60: C5 09     CMP ram_0009
C - - - - - 0x025C72 09:9C62: D0 06     BNE bra_9C6A
C - - - - - 0x025C74 09:9C64: 1D 31 06  ORA ram_0631,X
C - - - - - 0x025C77 09:9C67: 9D 31 06  STA ram_0631,X
bra_9C6A:
C - - - - - 0x025C7A 09:9C6A: A9 40     LDA #con_btn_B
C - - - - - 0x025C7C 09:9C6C: 35 8E     AND ram_btn_press,X
C - - - - - 0x025C7E 09:9C6E: 1D 31 06  ORA ram_0631,X
C - - - - - 0x025C81 09:9C71: 9D 31 06  STA ram_0631,X
C - - - - - 0x025C84 09:9C74: C9 44     CMP #$44
C - - - - - 0x025C86 09:9C76: D0 B8     BNE bra_9C30_RTS
C - - - - - 0x025C88 09:9C78: 4C 7C 9A  JMP loc_9A7C



sub_9C7B:
C - - - - - 0x025C8B 09:9C7B: BD 20 05  LDA ram_0520,X
C - - - - - 0x025C8E 09:9C7E: C9 03     CMP #$03
C - - - - - 0x025C90 09:9C80: F0 22     BEQ bra_9CA4
C - - - - - 0x025C92 09:9C82: C9 08     CMP #$08
C - - - - - 0x025C94 09:9C84: F0 26     BEQ bra_9CAC_RTS
C - - - - - 0x025C96 09:9C86: A9 40     LDA #con_btn_B
C - - - - - 0x025C98 09:9C88: 35 8E     AND ram_btn_press,X
C - - - - - 0x025C9A 09:9C8A: F0 10     BEQ bra_9C9C
C - - - - - 0x025C9C 09:9C8C: A9 0A     LDA #$0A
C - - - - - 0x025C9E 09:9C8E: 9D 0E 06  STA ram_060E,X
C - - - - - 0x025CA1 09:9C91: BD 0A 06  LDA ram_060A,X
C - - - - - 0x025CA4 09:9C94: C9 02     CMP #$02
C - - - - - 0x025CA6 09:9C96: B0 15     BCS bra_9CAD
C - - - - - 0x025CA8 09:9C98: FE 0A 06  INC ram_060A,X
C - - - - - 0x025CAB 09:9C9B: 60        RTS
bra_9C9C:
C - - - - - 0x025CAC 09:9C9C: DE 0E 06  DEC ram_060E,X
C - - - - - 0x025CAF 09:9C9F: D0 0B     BNE bra_9CAC_RTS
C - - - - - 0x025CB1 09:9CA1: F0 01     BEQ bra_9CA4



bra_9CA4:
loc_9CA4:
C D 0 - - - 0x025CB4 09:9CA4: A9 00     LDA #$00
C - - - - - 0x025CB6 09:9CA6: 9D 0A 06  STA ram_060A,X
C - - - - - 0x025CB9 09:9CA9: 9D 0E 06  STA ram_060E,X
bra_9CAC_RTS:
C - - - - - 0x025CBC 09:9CAC: 60        RTS
bra_9CAD:
C - - - - - 0x025CBD 09:9CAD: BD 20 05  LDA ram_0520,X
C - - - - - 0x025CC0 09:9CB0: F0 04     BEQ bra_9CB6
C - - - - - 0x025CC2 09:9CB2: C9 06     CMP #$06
C - - - - - 0x025CC4 09:9CB4: D0 F6     BNE bra_9CAC_RTS
bra_9CB6:
C - - - - - 0x025CC6 09:9CB6: 4C 89 9A  JMP loc_9A89



loc_9CB9:
C D 0 - - - 0x025CC9 09:9CB9: 20 00 9D  JSR sub_9D00
C - - - - - 0x025CCC 09:9CBC: BC 0A 06  LDY ram_060A,X
C - - - - - 0x025CCF 09:9CBF: F0 16     BEQ bra_9CD7_RTS
C - - - - - 0x025CD1 09:9CC1: 88        DEY
C - - - - - 0x025CD2 09:9CC2: D0 14     BNE bra_9CD8
C - - - - - 0x025CD4 09:9CC4: A5 09     LDA ram_0009
C - - - - - 0x025CD6 09:9CC6: 29 04     AND #$04
C - - - - - 0x025CD8 09:9CC8: F0 0D     BEQ bra_9CD7_RTS
C - - - - - 0x025CDA 09:9CCA: FE 0A 06  INC ram_060A,X
C - - - - - 0x025CDD 09:9CCD: A9 00     LDA #$00
C - - - - - 0x025CDF 09:9CCF: 9D 33 06  STA ram_0633,X
C - - - - - 0x025CE2 09:9CD2: A9 14     LDA #$14
C - - - - - 0x025CE4 09:9CD4: 9D 0E 06  STA ram_060E,X
bra_9CD7_RTS:
C - - - - - 0x025CE7 09:9CD7: 60        RTS
bra_9CD8:
C - - - - - 0x025CE8 09:9CD8: 20 AD 9A  JSR sub_9AAD
C - - - - - 0x025CEB 09:9CDB: A5 08     LDA ram_0008
C - - - - - 0x025CED 09:9CDD: 25 09     AND ram_0009
C - - - - - 0x025CEF 09:9CDF: 85 00     STA ram_0000
C - - - - - 0x025CF1 09:9CE1: B5 8E     LDA ram_btn_press,X
C - - - - - 0x025CF3 09:9CE3: 29 40     AND #con_btn_B
C - - - - - 0x025CF5 09:9CE5: 05 00     ORA ram_0000
C - - - - - 0x025CF7 09:9CE7: 1D 33 06  ORA ram_0633,X
C - - - - - 0x025CFA 09:9CEA: 9D 33 06  STA ram_0633,X
C - - - - - 0x025CFD 09:9CED: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x025D00 09:9CF0: C9 AC     CMP #$AC
C - - - - - 0x025D02 09:9CF2: 90 E3     BCC bra_9CD7_RTS
C - - - - - 0x025D04 09:9CF4: A5 08     LDA ram_0008
C - - - - - 0x025D06 09:9CF6: 09 40     ORA #con_btn_B
C - - - - - 0x025D08 09:9CF8: DD 33 06  CMP ram_0633,X
C - - - - - 0x025D0B 09:9CFB: D0 DA     BNE bra_9CD7_RTS
C - - - - - 0x025D0D 09:9CFD: 4C 89 9A  JMP loc_9A89



sub_9D00:
C - - - - - 0x025D10 09:9D00: A5 08     LDA ram_0008
C - - - - - 0x025D12 09:9D02: 25 09     AND ram_0009
C - - - - - 0x025D14 09:9D04: F0 0A     BEQ bra_9D10
C - - - - - 0x025D16 09:9D06: A9 01     LDA #$01
C - - - - - 0x025D18 09:9D08: 9D 0A 06  STA ram_060A,X
C - - - - - 0x025D1B 09:9D0B: A9 14     LDA #$14
C - - - - - 0x025D1D 09:9D0D: 9D 0E 06  STA ram_060E,X
bra_9D10:
C - - - - - 0x025D20 09:9D10: BD 0E 06  LDA ram_060E,X
C - - - - - 0x025D23 09:9D13: F0 C2     BEQ bra_9CD7_RTS
C - - - - - 0x025D25 09:9D15: DE 0E 06  DEC ram_060E,X
C - - - - - 0x025D28 09:9D18: F0 02     BEQ bra_9D1C
C - - - - - 0x025D2A 09:9D1A: 10 BB     BPL bra_9CD7_RTS
bra_9D1C:
C - - - - - 0x025D2C 09:9D1C: 4C A4 9C  JMP loc_9CA4



sub_9D1F:
C - - - - - 0x025D2F 09:9D1F: BD 00 06  LDA ram_0600,X
C - - - - - 0x025D32 09:9D22: 30 03     BMI bra_9D27
C - - - - - 0x025D34 09:9D24: 4C D2 9D  JMP loc_9DD2
bra_9D27:
C - - - - - 0x025D37 09:9D27: 20 C7 9D  JSR sub_9DC7
C - - - - - 0x025D3A 09:9D2A: BC 04 06  LDY ram_0604,X
C - - - - - 0x025D3D 09:9D2D: F0 06     BEQ bra_9D35_RTS
C - - - - - 0x025D3F 09:9D2F: 88        DEY
C - - - - - 0x025D40 09:9D30: D0 04     BNE bra_9D36
C - - - - - 0x025D42 09:9D32: 4C BD 9D  JMP loc_9DBD
bra_9D35_RTS:
C - - - - - 0x025D45 09:9D35: 60        RTS
bra_9D36:
C - - - - - 0x025D46 09:9D36: BD 50 05  LDA ram_id_object,X
C - - - - - 0x025D49 09:9D39: C9 03     CMP #$03
C - - - - - 0x025D4B 09:9D3B: F0 0D     BEQ bra_9D4A
C - - - - - 0x025D4D 09:9D3D: BD 20 05  LDA ram_0520,X
C - - - - - 0x025D50 09:9D40: F0 08     BEQ bra_9D4A
C - - - - - 0x025D52 09:9D42: C9 07     CMP #$07
C - - - - - 0x025D54 09:9D44: F0 04     BEQ bra_9D4A
C - - - - - 0x025D56 09:9D46: C9 06     CMP #$06
C - - - - - 0x025D58 09:9D48: D0 EB     BNE bra_9D35_RTS
bra_9D4A:
C - - - - - 0x025D5A 09:9D4A: BD 50 05  LDA ram_id_object,X
C - - - - - 0x025D5D 09:9D4D: C9 02     CMP #$02
C - - - - - 0x025D5F 09:9D4F: D0 25     BNE bra_9D76
C - - - - - 0x025D61 09:9D51: A5 09     LDA ram_0009
C - - - - - 0x025D63 09:9D53: C5 08     CMP ram_0008
C - - - - - 0x025D65 09:9D55: D0 10     BNE bra_9D67
C - - - - - 0x025D67 09:9D57: 1D 4B 06  ORA ram_064B,X
C - - - - - 0x025D6A 09:9D5A: 9D 4B 06  STA ram_064B,X
C - - - - - 0x025D6D 09:9D5D: B5 8E     LDA ram_btn_press,X
C - - - - - 0x025D6F 09:9D5F: 29 C0     AND #con_btns_AB
C - - - - - 0x025D71 09:9D61: 1D 4B 06  ORA ram_064B,X
C - - - - - 0x025D74 09:9D64: 9D 4B 06  STA ram_064B,X
bra_9D67:
C - - - - - 0x025D77 09:9D67: BD 4B 06  LDA ram_064B,X
C - - - - - 0x025D7A 09:9D6A: A8        TAY
C - - - - - 0x025D7B 09:9D6B: 29 C0     AND #con_btns_AB
C - - - - - 0x025D7D 09:9D6D: F0 6B     BEQ bra_9DDA_RTS
C - - - - - 0x025D7F 09:9D6F: 98        TYA
C - - - - - 0x025D80 09:9D70: 25 08     AND ram_0008
C - - - - - 0x025D82 09:9D72: F0 66     BEQ bra_9DDA_RTS
C - - - - - 0x025D84 09:9D74: D0 1E     BNE bra_9D94
bra_9D76:
C - - - - - 0x025D86 09:9D76: A5 08     LDA ram_0008
C - - - - - 0x025D88 09:9D78: 09 40     ORA #con_btn_B
C - - - - - 0x025D8A 09:9D7A: 85 00     STA ram_0000
C - - - - - 0x025D8C 09:9D7C: B5 91     LDA ram_btn_hold,X
C - - - - - 0x025D8E 09:9D7E: 25 08     AND ram_0008
C - - - - - 0x025D90 09:9D80: 1D 4B 06  ORA ram_064B,X
C - - - - - 0x025D93 09:9D83: 9D 4B 06  STA ram_064B,X
C - - - - - 0x025D96 09:9D86: B5 8E     LDA ram_btn_press,X
C - - - - - 0x025D98 09:9D88: 29 40     AND #con_btn_B
C - - - - - 0x025D9A 09:9D8A: 1D 4B 06  ORA ram_064B,X
C - - - - - 0x025D9D 09:9D8D: 9D 4B 06  STA ram_064B,X
C - - - - - 0x025DA0 09:9D90: C5 00     CMP ram_0000
C - - - - - 0x025DA2 09:9D92: D0 46     BNE bra_9DDA_RTS
bra_9D94:
C - - - - - 0x025DA4 09:9D94: 20 DF FE  JSR sub_0x03FEEF
C - - - - - 0x025DA7 09:9D97: 90 02     BCC bra_9D9B
C - - - - - 0x025DA9 09:9D99: D0 3F     BNE bra_9DDA_RTS
bra_9D9B:
C - - - - - 0x025DAB 09:9D9B: A9 05     LDA #$05
C - - - - - 0x025DAD 09:9D9D: 9D 20 05  STA ram_0520,X
C - - - - - 0x025DB0 09:9DA0: BD 4B 06  LDA ram_064B,X
C - - - - - 0x025DB3 09:9DA3: 29 C0     AND #$C0
C - - - - - 0x025DB5 09:9DA5: 8D A6 04  STA ram_04A6
C - - - - - 0x025DB8 09:9DA8: A9 00     LDA #$00
C - - - - - 0x025DBA 09:9DAA: 9D 04 06  STA ram_0604,X
C - - - - - 0x025DBD 09:9DAD: 9D 06 06  STA ram_0606,X
C - - - - - 0x025DC0 09:9DB0: 9D 60 05  STA ram_0560,X
C - - - - - 0x025DC3 09:9DB3: 9D C0 05  STA ram_05C0,X
C - - - - - 0x025DC6 09:9DB6: 9D D0 05  STA ram_05D0,X
C - - - - - 0x025DC9 09:9DB9: 9D 40 05  STA ram_0540,X
C - - - - - 0x025DCC 09:9DBC: 60        RTS



loc_9DBD:
C D 0 - - - 0x025DCD 09:9DBD: A9 00     LDA #$00
C - - - - - 0x025DCF 09:9DBF: 9D 4B 06  STA ram_064B,X
C - - - - - 0x025DD2 09:9DC2: FE 04 06  INC ram_0604,X
C - - - - - 0x025DD5 09:9DC5: D0 19     BNE bra_9DE0
sub_9DC7:
C - - - - - 0x025DD7 09:9DC7: A5 09     LDA ram_0009
C - - - - - 0x025DD9 09:9DC9: C9 04     CMP #$04
C - - - - - 0x025DDB 09:9DCB: F0 0E     BEQ bra_9DDB
C - - - - - 0x025DDD 09:9DCD: DE 06 06  DEC ram_0606,X
C - - - - - 0x025DE0 09:9DD0: 10 08     BPL bra_9DDA_RTS
loc_9DD2:
C D 0 - - - 0x025DE2 09:9DD2: A9 00     LDA #$00
C - - - - - 0x025DE4 09:9DD4: 9D 06 06  STA ram_0606,X
C - - - - - 0x025DE7 09:9DD7: 9D 04 06  STA ram_0604,X
bra_9DDA_RTS:
C - - - - - 0x025DEA 09:9DDA: 60        RTS
bra_9DDB:
C - - - - - 0x025DEB 09:9DDB: A9 01     LDA #$01
C - - - - - 0x025DED 09:9DDD: 9D 04 06  STA ram_0604,X
bra_9DE0:
C - - - - - 0x025DF0 09:9DE0: A9 0C     LDA #$0C
C - - - - - 0x025DF2 09:9DE2: 9D 06 06  STA ram_0606,X
C - - - - - 0x025DF5 09:9DE5: 60        RTS



.export sub_0x025E5F
sub_0x025E5F:
C - - - - - 0x025E5F 09:9E4F: A2 06     LDX #$06
C - - - - - 0x025E61 09:9E51: 20 49 DB  JSR sub_0x03DB59
C - - - - - 0x025E64 09:9E54: AD 36 05  LDA ram_0536
C - - - - - 0x025E67 09:9E57: C9 06     CMP #$06
C - - - - - 0x025E69 09:9E59: B0 1B     BCS bra_9E76
C - - - - - 0x025E6B 09:9E5B: AD 46 04  LDA ram_0446
C - - - - - 0x025E6E 09:9E5E: 65 A6     ADC ram_00A6
C - - - - - 0x025E70 09:9E60: A9 00     LDA #$00
C - - - - - 0x025E72 09:9E62: 6D 36 04  ADC ram_X_pos_max_object + 6
C - - - - - 0x025E75 09:9E65: C9 02     CMP #$02
C - - - - - 0x025E77 09:9E67: 90 0D     BCC bra_9E76
- - - - - - 0x025E79 09:9E69: A9 AC     LDA #$AC
- - - - - - 0x025E7B 09:9E6B: 8D 16 04  STA ram_0416
- - - - - - 0x025E7E 09:9E6E: 20 67 D0  JSR sub_0x03D077
- - - - - - 0x025E81 09:9E71: A9 02     LDA #$02
- - - - - - 0x025E83 09:9E73: 8D 36 05  STA ram_0536
bra_9E76:
C - - - - - 0x025E86 09:9E76: AC 46 05  LDY ram_0546
C - - - - - 0x025E89 09:9E79: AD 36 05  LDA ram_0536
C - - - - - 0x025E8C 09:9E7C: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x025E8F 09:9E7F: 8D 9E     .word ofs_9E8D_00_Leo
- D 0 - I - 0x025E91 09:9E81: AD 9E     .word ofs_9EAD_01_Raph
- D 0 - I - 0x025E93 09:9E83: 0A 9F     .word ofs_9F0A_02_Mike
- D 0 - I - 0x025E95 09:9E85: 6C 9F     .word ofs_9F6C_03_Don
- D 0 - I - 0x025E97 09:9E87: A6 9F     .word ofs_9FA6_04_Casey
- D 0 - I - 0x025E99 09:9E89: C3 9F     .word ofs_9FC3_05_Hot
- D 0 - I - 0x025E9B 09:9E8B: 33 A2     .word ofs_A233_06_Shred



ofs_9E8D_00_Leo:
C - - J - - 0x025E9D 09:9E8D: 20 D3 DA  JSR sub_0x03DAE3
C - - - - - 0x025EA0 09:9E90: A9 80     LDA #$80
C - - - - - 0x025EA2 09:9E92: 8D E6 05  STA ram_05E6
C - - - - - 0x025EA5 09:9E95: 8D 46 04  STA ram_0446
C - - - - - 0x025EA8 09:9E98: 8D 56 05  STA ram_0556
C - - - - - 0x025EAB 09:9E9B: A9 50     LDA #$50
C - - - - - 0x025EAD 09:9E9D: 8D 16 04  STA ram_0416
C - - - - - 0x025EB0 09:9EA0: A9 02     LDA #$02
C - - - - - 0x025EB2 09:9EA2: 8D 66 04  STA ram_0466
C - - - - - 0x025EB5 09:9EA5: EE 36 05  INC ram_0536
C - - - - - 0x025EB8 09:9EA8: A9 04     LDA #$04
loc_9EAA:
C D 0 - - - 0x025EBA 09:9EAA: 8D B6 04  STA ram_04B6
ofs_9EAD_01_Raph:
C - - - - - 0x025EBD 09:9EAD: 20 2D 9F  JSR sub_9F2D
C - - - - - 0x025EC0 09:9EB0: 20 E8 A1  JSR sub_A1E8
C - - - - - 0x025EC3 09:9EB3: A9 00     LDA #$00
C - - - - - 0x025EC5 09:9EB5: 8D A6 05  STA ram_05A6
C - - - - - 0x025EC8 09:9EB8: A9 03     LDA #$03
C - - - - - 0x025ECA 09:9EBA: 8D 76 05  STA ram_0576
C - - - - - 0x025ECD 09:9EBD: A9 01     LDA #$01
C - - - - - 0x025ECF 09:9EBF: 8D 06 04  STA ram_0406
C - - - - - 0x025ED2 09:9EC2: AD 16 04  LDA ram_0416
C - - - - - 0x025ED5 09:9EC5: C9 AC     CMP #$AC
C - - - - - 0x025ED7 09:9EC7: B0 03     BCS bra_9ECC
C - - - - - 0x025ED9 09:9EC9: 4C A1 9F  JMP loc_9FA1
bra_9ECC:
C - - - - - 0x025EDC 09:9ECC: A9 04     LDA #$04
C - - - - - 0x025EDE 09:9ECE: CD 30 05  CMP ram_0530
C - - - - - 0x025EE1 09:9ED1: F0 0A     BEQ bra_9EDD
C - - - - - 0x025EE3 09:9ED3: CD 31 05  CMP ram_0531
C - - - - - 0x025EE6 09:9ED6: F0 05     BEQ bra_9EDD
C - - - - - 0x025EE8 09:9ED8: A9 0A     LDA #$0A
C - - - - - 0x025EEA 09:9EDA: 20 90 F6  JSR sub_0x03F6A0_play_sound
bra_9EDD:
C - - - - - 0x025EED 09:9EDD: A9 AC     LDA #$AC
C - - - - - 0x025EEF 09:9EDF: 8D 16 04  STA ram_0416
C - - - - - 0x025EF2 09:9EE2: AC B6 04  LDY ram_04B6
C - - - - - 0x025EF5 09:9EE5: B9 05 9F  LDA tbl_9F05,Y
C - - - - - 0x025EF8 09:9EE8: 8D 66 04  STA ram_0466
C - - - - - 0x025EFB 09:9EEB: A9 00     LDA #$00
C - - - - - 0x025EFD 09:9EED: 8D 76 04  STA ram_0476
C - - - - - 0x025F00 09:9EF0: CE B6 04  DEC ram_04B6
C - - - - - 0x025F03 09:9EF3: 10 5B     BPL bra_9F50_RTS
C - - - - - 0x025F05 09:9EF5: 20 38 DB  JSR sub_0x03DB48
C - - - - - 0x025F08 09:9EF8: A9 02     LDA #$02
C - - - - - 0x025F0A 09:9EFA: 8D 36 05  STA ram_0536
C - - - - - 0x025F0D 09:9EFD: A9 60     LDA #$60
C - - - - - 0x025F0F 09:9EFF: 8D 66 05  STA ram_0566
C - - - - - 0x025F12 09:9F02: 4C 67 D0  JMP loc_0x03D077



tbl_9F05:
- D 0 - - - 0x025F15 09:9F05: FE        .byte $FE   ; 00
- D 0 - - - 0x025F16 09:9F06: FE        .byte $FE   ; 01
- D 0 - - - 0x025F17 09:9F07: FD        .byte $FD   ; 02
- D 0 - - - 0x025F18 09:9F08: FC        .byte $FC   ; 03
- D 0 - - - 0x025F19 09:9F09: FB        .byte $FB   ; 04



ofs_9F0A_02_Mike:
C - - J - - 0x025F1A 09:9F0A: A5 22     LDA ram_frame_counter
C - - - - - 0x025F1C 09:9F0C: 29 03     AND #$03
C - - - - - 0x025F1E 09:9F0E: D0 05     BNE bra_9F15
C - - - - - 0x025F20 09:9F10: CE 66 05  DEC ram_0566
C - - - - - 0x025F23 09:9F13: F0 3C     BEQ bra_9F51
bra_9F15:
C - - - - - 0x025F25 09:9F15: A9 00     LDA #$00
C - - - - - 0x025F27 09:9F17: 8D A6 05  STA ram_05A6
C - - - - - 0x025F2A 09:9F1A: 8D 86 04  STA ram_0486
C - - - - - 0x025F2D 09:9F1D: 8D 96 04  STA ram_0496
C - - - - - 0x025F30 09:9F20: A2 01     LDX #$01
bra_9F22_loop:
C - - - - - 0x025F32 09:9F22: 38        SEC
C - - - - - 0x025F33 09:9F23: BD 30 05  LDA ram_0530,X
C - - - - - 0x025F36 09:9F26: E9 04     SBC #$04
C - - - - - 0x025F38 09:9F28: F0 23     BEQ bra_9F4D
C - - - - - 0x025F3A 09:9F2A: CA        DEX
C - - - - - 0x025F3B 09:9F2B: 10 F5     BPL bra_9F22_loop
sub_9F2D:
C - - - - - 0x025F3D 09:9F2D: 20 F0 9F  JSR sub_9FF0
C - - - - - 0x025F40 09:9F30: 90 0C     BCC bra_9F3E
C - - - - - 0x025F42 09:9F32: 98        TYA
C - - - - - 0x025F43 09:9F33: 10 06     BPL bra_9F3B
C - - - - - 0x025F45 09:9F35: CE 46 04  DEC ram_0446
C - - - - - 0x025F48 09:9F38: CE 46 04  DEC ram_0446
bra_9F3B:
C - - - - - 0x025F4B 09:9F3B: EE 46 04  INC ram_0446
bra_9F3E:
C - - - - - 0x025F4E 09:9F3E: AD 66 05  LDA ram_0566
C - - - - - 0x025F51 09:9F41: C9 30     CMP #$30
C - - - - - 0x025F53 09:9F43: B0 06     BCS bra_9F4B
C - - - - - 0x025F55 09:9F45: A5 22     LDA ram_frame_counter
C - - - - - 0x025F57 09:9F47: 29 04     AND #$04
C - - - - - 0x025F59 09:9F49: F0 02     BEQ bra_9F4D
bra_9F4B:
C - - - - - 0x025F5B 09:9F4B: A9 01     LDA #$01
bra_9F4D:
C - - - - - 0x025F5D 09:9F4D: 8D 06 04  STA ram_0406
bra_9F50_RTS:
C - - - - - 0x025F60 09:9F50: 60        RTS
bra_9F51:
C - - - - - 0x025F61 09:9F51: A9 01     LDA #$01
C - - - - - 0x025F63 09:9F53: 8D 37 05  STA ram_0537
C - - - - - 0x025F66 09:9F56: A9 E0     LDA #$E0
C - - - - - 0x025F68 09:9F58: 8D 67 05  STA ram_0567
C - - - - - 0x025F6B 09:9F5B: A9 00     LDA #$00
C - - - - - 0x025F6D 09:9F5D: 8D 46 04  STA ram_0446
C - - - - - 0x025F70 09:9F60: 8D 16 04  STA ram_0416
C - - - - - 0x025F73 09:9F63: 8D 06 04  STA ram_0406
C - - - - - 0x025F76 09:9F66: A9 06     LDA #$06
C - - - - - 0x025F78 09:9F68: 8D 36 05  STA ram_0536
C - - - - - 0x025F7B 09:9F6B: 60        RTS



ofs_9F6C_03_Don:
C - - J - - 0x025F7C 09:9F6C: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x025F7F 09:9F6F: AD A6 05  LDA ram_05A6
C - - - - - 0x025F82 09:9F72: 29 01     AND #$01
C - - - - - 0x025F84 09:9F74: A8        TAY
C - - - - - 0x025F85 09:9F75: B9 40 04  LDA ram_X_pos_hi_object,Y
C - - - - - 0x025F88 09:9F78: 8D 46 04  STA ram_0446
C - - - - - 0x025F8B 09:9F7B: B9 10 04  LDA ram_Y_pos_hi_object,Y
C - - - - - 0x025F8E 09:9F7E: 8D 16 04  STA ram_0416
C - - - - - 0x025F91 09:9F81: B9 10 05  LDA ram_turn_side_object,Y
C - - - - - 0x025F94 09:9F84: 8D 16 05  STA ram_0516
C - - - - - 0x025F97 09:9F87: B9 20 05  LDA ram_0520,Y
C - - - - - 0x025F9A 09:9F8A: F0 08     BEQ bra_9F94
C - - - - - 0x025F9C 09:9F8C: C9 07     CMP #$07
C - - - - - 0x025F9E 09:9F8E: F0 04     BEQ bra_9F94
C - - - - - 0x025FA0 09:9F90: A9 00     LDA #$00
C - - - - - 0x025FA2 09:9F92: F0 B9     BEQ bra_9F4D
bra_9F94:
C - - - - - 0x025FA4 09:9F94: A5 22     LDA ram_frame_counter
C - - - - - 0x025FA6 09:9F96: 4A        LSR
C - - - - - 0x025FA7 09:9F97: 4A        LSR
C - - - - - 0x025FA8 09:9F98: 4A        LSR
C - - - - - 0x025FA9 09:9F99: 29 01     AND #$01
C - - - - - 0x025FAB 09:9F9B: F0 B0     BEQ bra_9F4D
C - - - - - 0x025FAD 09:9F9D: A9 05     LDA #$05
C - - - - - 0x025FAF 09:9F9F: D0 AC     BNE bra_9F4D



loc_9FA1:
C D 0 - - - 0x025FB1 09:9FA1: A9 20     LDA #$20
C - - - - - 0x025FB3 09:9FA3: 4C 58 DC  JMP loc_0x03DC68



ofs_9FA6_04_Casey:
C - - J - - 0x025FB6 09:9FA6: 20 FA DC  JSR sub_0x03DD0A
C - - - - - 0x025FB9 09:9FA9: AC 26 05  LDY ram_0526
C - - - - - 0x025FBC 09:9FAC: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x025FBF 09:9FAF: AC 46 05  LDY ram_0546
C - - - - - 0x025FC2 09:9FB2: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 0 - I - 0x025FC5 09:9FB5: 0E A0     .word ofs_A00E_00_Leo
- D 0 - I - 0x025FC7 09:9FB7: 0E A0     .word ofs_A00E_01_Raph
- D 0 - I - 0x025FC9 09:9FB9: AC A1     .word ofs_A1AC_02_Mike
- D 0 - I - 0x025FCB 09:9FBB: 8C A1     .word ofs_A18C_03_Don
- D 0 - I - 0x025FCD 09:9FBD: 65 A0     .word ofs_A065_04_Casey
- D 0 - I - 0x025FCF 09:9FBF: 40 A1     .word ofs_A140_05_Hot
- D 0 - I - 0x025FD1 09:9FC1: BD A0     .word ofs_A0BD_06_Shred



ofs_9FC3_05_Hot:
C - - J - - 0x025FD3 09:9FC3: 20 E8 A1  JSR sub_A1E8
C - - - - - 0x025FD6 09:9FC6: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x025FD9 09:9FC9: A9 FD     LDA #$FD
C - - - - - 0x025FDB 09:9FCB: 9D 60 04  STA ram_Y_spd_hi_object,X
loc_9FCE:
C D 0 - - - 0x025FDE 09:9FCE: A9 00     LDA #$00
C - - - - - 0x025FE0 09:9FD0: 20 D3 DC  JSR sub_0x03DCE3
C - - - - - 0x025FE3 09:9FD3: A9 40     LDA #$40
loc_9FD5:
C D 0 - - - 0x025FE5 09:9FD5: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x025FE8 09:9FD8: A9 00     LDA #$00
C - - - - - 0x025FEA 09:9FDA: 8D A6 05  STA ram_05A6
C - - - - - 0x025FED 09:9FDD: 8D B6 05  STA ram_05B6
C - - - - - 0x025FF0 09:9FE0: 8D 06 05  STA ram_0506
C - - - - - 0x025FF3 09:9FE3: 20 65 DD  JSR sub_0x03DD75
C - - - - - 0x025FF6 09:9FE6: A9 01     LDA #$01
C - - - - - 0x025FF8 09:9FE8: 8D 36 05  STA ram_0536
C - - - - - 0x025FFB 09:9FEB: A9 02     LDA #$02
C - - - - - 0x025FFD 09:9FED: 4C AA 9E  JMP loc_9EAA



sub_9FF0:
C - - - - - 0x026000 09:9FF0: 18        CLC
C - - - - - 0x026001 09:9FF1: AD 46 04  LDA ram_0446
C - - - - - 0x026004 09:9FF4: 65 A6     ADC ram_00A6
C - - - - - 0x026006 09:9FF6: A8        TAY
C - - - - - 0x026007 09:9FF7: A9 00     LDA #$00
C - - - - - 0x026009 09:9FF9: 6D 36 04  ADC ram_X_pos_max_object + 6
C - - - - - 0x02600C 09:9FFC: 85 00     STA ram_0000
C - - - - - 0x02600E 09:9FFE: A5 00     LDA ram_0000
C - - - - - 0x026010 09:A000: D0 06     BNE bra_A008
C - - - - - 0x026012 09:A002: C0 28     CPY #$28
C D 1 - - - 0x026014 09:A004: 90 06     BCC bra_A00C
bra_A006:
C - - - - - 0x026016 09:A006: 18        CLC
C - - - - - 0x026017 09:A007: 60        RTS
bra_A008:
C - - - - - 0x026018 09:A008: C0 98     CPY #$98
C - - - - - 0x02601A 09:A00A: 90 FA     BCC bra_A006
bra_A00C:
C - - - - - 0x02601C 09:A00C: 38        SEC
C - - - - - 0x02601D 09:A00D: 60        RTS



ofs_A00E_00_Leo:
ofs_A00E_01_Raph:
C - - J - - 0x02601E 09:A00E: A9 CA     LDA #$CA
C - - - - - 0x026020 09:A010: 8D 06 04  STA ram_0406
C - - - - - 0x026023 09:A013: AC 46 05  LDY ram_0546
C - - - - - 0x026026 09:A016: D0 36     BNE bra_A04E
C - - - - - 0x026028 09:A018: A9 01     LDA #$01
sub_A01A:
C - - - - - 0x02602A 09:A01A: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x02602D 09:A01D: EE 46 05  INC ram_0546
C - - - - - 0x026030 09:A020: A9 03     LDA #$03
C - - - - - 0x026032 09:A022: 8D 76 05  STA ram_0576
C - - - - - 0x026035 09:A025: A9 30     LDA #$30
C - - - - - 0x026037 09:A027: 8D B6 05  STA ram_05B6
C - - - - - 0x02603A 09:A02A: 8D 96 05  STA ram_0596
C - - - - - 0x02603D 09:A02D: A9 90     LDA #$90
C - - - - - 0x02603F 09:A02F: 8D 16 04  STA ram_0416
C - - - - - 0x026042 09:A032: A9 01     LDA #$01
C - - - - - 0x026044 09:A034: 8D 06 04  STA ram_0406
C - - - - - 0x026047 09:A037: AD 16 05  LDA ram_0516
C - - - - - 0x02604A 09:A03A: 0A        ASL
C - - - - - 0x02604B 09:A03B: 0A        ASL
C - - - - - 0x02604C 09:A03C: A9 0C     LDA #$0C
C - - - - - 0x02604E 09:A03E: 90 02     BCC bra_A042
C - - - - - 0x026050 09:A040: A9 F4     LDA #$F4
bra_A042:
C - - - - - 0x026052 09:A042: 18        CLC
C - - - - - 0x026053 09:A043: 6D 46 04  ADC ram_0446
C - - - - - 0x026056 09:A046: 8D 46 04  STA ram_0446
C - - - - - 0x026059 09:A049: A9 18     LDA #$18
C - - - - - 0x02605B 09:A04B: 4C 90 F6  JMP loc_0x03F6A0_play_sound
bra_A04E:
C - - - - - 0x02605E 09:A04E: A0 00     LDY #$00
C - - - - - 0x026060 09:A050: AD 16 05  LDA ram_0516
C - - - - - 0x026063 09:A053: 0A        ASL
C - - - - - 0x026064 09:A054: 0A        ASL
C - - - - - 0x026065 09:A055: A9 28     LDA #$28
C - - - - - 0x026067 09:A057: 90 03     BCC bra_A05C
C - - - - - 0x026069 09:A059: 88        DEY
C - - - - - 0x02606A 09:A05A: A9 D8     LDA #$D8
bra_A05C:
C - - - - - 0x02606C 09:A05C: 20 B1 DC  JSR sub_0x03DCC1
C - - - - - 0x02606F 09:A05F: 20 C7 A1  JSR sub_A1C7
C - - - - - 0x026072 09:A062: 4C DD A1  JMP loc_A1DD



ofs_A065_04_Casey:
C - - J - - 0x026075 09:A065: A8        TAY
C - - - - - 0x026076 09:A066: D0 1C     BNE bra_A084
C - - - - - 0x026078 09:A068: A9 83     LDA #$83
C - - - - - 0x02607A 09:A06A: 20 1A A0  JSR sub_A01A
C - - - - - 0x02607D 09:A06D: A9 88     LDA #$88
C - - - - - 0x02607F 09:A06F: 8D 16 04  STA ram_0416
C - - - - - 0x026082 09:A072: A9 C0     LDA #$C0
C - - - - - 0x026084 09:A074: 8D 06 04  STA ram_0406
C - - - - - 0x026087 09:A077: A9 C0     LDA #$C0
C - - - - - 0x026089 09:A079: 8D 76 04  STA ram_0476
C - - - - - 0x02608C 09:A07C: A9 40     LDA #$40
C - - - - - 0x02608E 09:A07E: 8D B6 05  STA ram_05B6
C - - - - - 0x026091 09:A081: 8D 96 05  STA ram_0596
bra_A084:
C - - - - - 0x026094 09:A084: 20 C7 A1  JSR sub_A1C7
C - - - - - 0x026097 09:A087: AD 16 04  LDA ram_0416
C - - - - - 0x02609A 09:A08A: C9 45     CMP #$45
C - - - - - 0x02609C 09:A08C: 90 2C     BCC bra_A0BA
C - - - - - 0x02609E 09:A08E: AD 26 05  LDA ram_0526
C - - - - - 0x0260A1 09:A091: 49 01     EOR #$01
C - - - - - 0x0260A3 09:A093: A8        TAY
C - - - - - 0x0260A4 09:A094: 20 0C D2  JSR sub_0x03D21C
C - - - - - 0x0260A7 09:A097: C9 38     CMP #$38
C - - - - - 0x0260A9 09:A099: B0 13     BCS bra_A0AE
C - - - - - 0x0260AB 09:A09B: AD 66 04  LDA ram_0466
C - - - - - 0x0260AE 09:A09E: 10 09     BPL bra_A0A9
C - - - - - 0x0260B0 09:A0A0: C9 FD     CMP #$FD
C - - - - - 0x0260B2 09:A0A2: B0 05     BCS bra_A0A9
C - - - - - 0x0260B4 09:A0A4: A9 C1     LDA #$C1
C - - - - - 0x0260B6 09:A0A6: 8D 06 04  STA ram_0406
bra_A0A9:
C - - - - - 0x0260B9 09:A0A9: A9 B8     LDA #$B8
C - - - - - 0x0260BB 09:A0AB: 4C 54 DC  JMP loc_0x03DC64
bra_A0AE:
C - - - - - 0x0260BE 09:A0AE: AD 16 04  LDA ram_0416
C - - - - - 0x0260C1 09:A0B1: C9 A0     CMP #$A0
C - - - - - 0x0260C3 09:A0B3: 90 28     BCC bra_A0DD_RTS
- - - - - - 0x0260C5 09:A0B5: A2 06     LDX #$06
- - - - - - 0x0260C7 09:A0B7: 4C 40 DB  JMP loc_0x03DB50
bra_A0BA:
C - - - - - 0x0260CA 09:A0BA: 4C CE 9F  JMP loc_9FCE



ofs_A0BD_06_Shred:
C - - J - - 0x0260CD 09:A0BD: A8        TAY
C - - - - - 0x0260CE 09:A0BE: D0 1E     BNE bra_A0DE
C - - - - - 0x0260D0 09:A0C0: A9 03     LDA #$03
C - - - - - 0x0260D2 09:A0C2: 20 1A A0  JSR sub_A01A
C - - - - - 0x0260D5 09:A0C5: A9 84     LDA #$84
C - - - - - 0x0260D7 09:A0C7: 8D 16 04  STA ram_0416
C - - - - - 0x0260DA 09:A0CA: A9 01     LDA #$01
C - - - - - 0x0260DC 09:A0CC: 8D A6 04  STA ram_04A6
bra_A0CF_loop:
C - - - - - 0x0260DF 09:A0CF: A9 06     LDA #$06
C - - - - - 0x0260E1 09:A0D1: 8D 66 05  STA ram_0566
bra_A0D4:
C - - - - - 0x0260E4 09:A0D4: AC A6 04  LDY ram_04A6
C - - - - - 0x0260E7 09:A0D7: B9 3B A1  LDA tbl_A13B,Y
C - - - - - 0x0260EA 09:A0DA: 8D 06 04  STA ram_0406
bra_A0DD_RTS:
C - - - - - 0x0260ED 09:A0DD: 60        RTS
bra_A0DE:
C - - - - - 0x0260EE 09:A0DE: 88        DEY
C - - - - - 0x0260EF 09:A0DF: D0 1C     BNE bra_A0FD
C - - - - - 0x0260F1 09:A0E1: CE 66 05  DEC ram_0566
C - - - - - 0x0260F4 09:A0E4: D0 EE     BNE bra_A0D4
C - - - - - 0x0260F6 09:A0E6: CE A6 04  DEC ram_04A6
C - - - - - 0x0260F9 09:A0E9: 10 E4     BPL bra_A0CF_loop
C - - - - - 0x0260FB 09:A0EB: A9 C1     LDA #$C1
C - - - - - 0x0260FD 09:A0ED: 8D 06 04  STA ram_0406
C - - - - - 0x026100 09:A0F0: A9 14     LDA #$14
C - - - - - 0x026102 09:A0F2: 8D 66 05  STA ram_0566
C - - - - - 0x026105 09:A0F5: A9 02     LDA #$02
C - - - - - 0x026107 09:A0F7: 8D A6 04  STA ram_04A6
C - - - - - 0x02610A 09:A0FA: EE 46 05  INC ram_0546
bra_A0FD:
C - - - - - 0x02610D 09:A0FD: 88        DEY
C - - - - - 0x02610E 09:A0FE: D0 2B     BNE bra_A12B
C - - - - - 0x026110 09:A100: 20 C7 A1  JSR sub_A1C7
C - - - - - 0x026113 09:A103: 20 D6 A1  JSR sub_A1D6
C - - - - - 0x026116 09:A106: CE A6 04  DEC ram_04A6
C - - - - - 0x026119 09:A109: 10 05     BPL bra_A110
C - - - - - 0x02611B 09:A10B: A9 02     LDA #$02
C - - - - - 0x02611D 09:A10D: 8D A6 04  STA ram_04A6
bra_A110:
C - - - - - 0x026120 09:A110: AC A6 04  LDY ram_04A6
C - - - - - 0x026123 09:A113: B9 3D A1  LDA tbl_A13D,Y
C - - - - - 0x026126 09:A116: 8D 16 04  STA ram_0416
C - - - - - 0x026129 09:A119: CE 66 05  DEC ram_0566
C - - - - - 0x02612C 09:A11C: D0 BF     BNE bra_A0DD_RTS
C - - - - - 0x02612E 09:A11E: A9 90     LDA #$90
C - - - - - 0x026130 09:A120: 8D 16 04  STA ram_0416
C - - - - - 0x026133 09:A123: EE 46 05  INC ram_0546
C - - - - - 0x026136 09:A126: A9 01     LDA #$01
C - - - - - 0x026138 09:A128: 8D 06 04  STA ram_0406
bra_A12B:
C - - - - - 0x02613B 09:A12B: 20 C7 A1  JSR sub_A1C7
C - - - - - 0x02613E 09:A12E: 20 D6 A1  JSR sub_A1D6
C - - - - - 0x026141 09:A131: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x026144 09:A134: 90 A7     BCC bra_A0DD_RTS
C - - - - - 0x026146 09:A136: A9 80     LDA #$80
C - - - - - 0x026148 09:A138: 4C D5 9F  JMP loc_9FD5



tbl_A13B:
- D 1 - - - 0x02614B 09:A13B: C0        .byte $C0   ; 00
- D 1 - - - 0x02614C 09:A13C: BF        .byte $BF   ; 01



tbl_A13D:
- D 1 - - - 0x02614D 09:A13D: 9C        .byte $9C   ; 00
- D 1 - - - 0x02614E 09:A13E: 90        .byte $90   ; 01
- D 1 - - - 0x02614F 09:A13F: 84        .byte $84   ; 02



ofs_A140_05_Hot:
C - - J - - 0x026150 09:A140: A8        TAY
C - - - - - 0x026151 09:A141: D0 1A     BNE bra_A15D
C - - - - - 0x026153 09:A143: A9 03     LDA #$03
C - - - - - 0x026155 09:A145: 20 1A A0  JSR sub_A01A
C - - - - - 0x026158 09:A148: A9 08     LDA #$08
C - - - - - 0x02615A 09:A14A: 8D 66 04  STA ram_0466
C - - - - - 0x02615D 09:A14D: AD 86 04  LDA ram_0486
C - - - - - 0x026160 09:A150: 0A        ASL
C - - - - - 0x026161 09:A151: A9 18     LDA #$18
C - - - - - 0x026163 09:A153: 90 02     BCC bra_A157
C - - - - - 0x026165 09:A155: A9 E8     LDA #$E8
bra_A157:
C - - - - - 0x026167 09:A157: 6D 46 04  ADC ram_0446
C - - - - - 0x02616A 09:A15A: 8D 46 04  STA ram_0446
bra_A15D:
C - - - - - 0x02616D 09:A15D: A0 17     LDY #$17
C - - - - - 0x02616F 09:A15F: 20 7C D0  JSR sub_0x03D08C
C - - - - - 0x026172 09:A162: 20 D6 A1  JSR sub_A1D6
C - - - - - 0x026175 09:A165: 20 C7 A1  JSR sub_A1C7
C - - - - - 0x026178 09:A168: AD A6 04  LDA ram_04A6
C - - - - - 0x02617B 09:A16B: 4A        LSR
C - - - - - 0x02617C 09:A16C: AD 16 04  LDA ram_0416
C - - - - - 0x02617F 09:A16F: 90 14     BCC bra_A185
C - - - - - 0x026181 09:A171: C9 3D     CMP #$3D
C - - - - - 0x026183 09:A173: B0 14     BCS bra_A189_RTS
bra_A175_loop:
C - - - - - 0x026185 09:A175: EE A6 04  INC ram_04A6
C - - - - - 0x026188 09:A178: AD A6 04  LDA ram_04A6
C - - - - - 0x02618B 09:A17B: 29 01     AND #$01
C - - - - - 0x02618D 09:A17D: A8        TAY
C - - - - - 0x02618E 09:A17E: B9 8A A1  LDA tbl_A18A,Y
C - - - - - 0x026191 09:A181: 8D 66 04  STA ram_0466
C - - - - - 0x026194 09:A184: 60        RTS
bra_A185:
C - - - - - 0x026195 09:A185: C9 AC     CMP #$AC
C - - - - - 0x026197 09:A187: B0 EC     BCS bra_A175_loop
bra_A189_RTS:
C - - - - - 0x026199 09:A189: 60        RTS



tbl_A18A:
- D 1 - - - 0x02619A 09:A18A: 08        .byte $08   ; 00
- D 1 - - - 0x02619B 09:A18B: F8        .byte $F8   ; 01



ofs_A18C_03_Don:
C - - J - - 0x02619C 09:A18C: A8        TAY
C - - - - - 0x02619D 09:A18D: D0 16     BNE bra_A1A5
C - - - - - 0x02619F 09:A18F: A9 83     LDA #$83
C - - - - - 0x0261A1 09:A191: 20 1A A0  JSR sub_A01A
C - - - - - 0x0261A4 09:A194: AC 26 05  LDY ram_0526
C - - - - - 0x0261A7 09:A197: B9 10 04  LDA ram_Y_pos_hi_object,Y
C - - - - - 0x0261AA 09:A19A: 38        SEC
C - - - - - 0x0261AB 09:A19B: E9 18     SBC #$18
C - - - - - 0x0261AD 09:A19D: 8D 16 04  STA ram_0416
C - - - - - 0x0261B0 09:A1A0: A9 CB     LDA #$CB
C - - - - - 0x0261B2 09:A1A2: 8D 06 04  STA ram_0406
bra_A1A5:
C - - - - - 0x0261B5 09:A1A5: 20 D6 A1  JSR sub_A1D6
C - - - - - 0x0261B8 09:A1A8: 20 C7 A1  JSR sub_A1C7
C - - - - - 0x0261BB 09:A1AB: 60        RTS



ofs_A1AC_02_Mike:
C - - J - - 0x0261BC 09:A1AC: A8        TAY
C - - - - - 0x0261BD 09:A1AD: D0 F6     BNE bra_A1A5
C - - - - - 0x0261BF 09:A1AF: A9 C3     LDA #$C3
C - - - - - 0x0261C1 09:A1B1: 20 1A A0  JSR sub_A01A
C - - - - - 0x0261C4 09:A1B4: AD A6 04  LDA ram_04A6
C - - - - - 0x0261C7 09:A1B7: 0A        ASL
C - - - - - 0x0261C8 09:A1B8: A9 84     LDA #$84
C - - - - - 0x0261CA 09:A1BA: 90 02     BCC bra_A1BE
C - - - - - 0x0261CC 09:A1BC: A9 A0     LDA #$A0
bra_A1BE:
C - - - - - 0x0261CE 09:A1BE: 8D 16 04  STA ram_0416
C - - - - - 0x0261D1 09:A1C1: A9 CB     LDA #$CB
C - - - - - 0x0261D3 09:A1C3: 8D 06 04  STA ram_0406
C - - - - - 0x0261D6 09:A1C6: 60        RTS



sub_A1C7:
C - - - - - 0x0261D7 09:A1C7: 20 E8 A1  JSR sub_A1E8
C - - - - - 0x0261DA 09:A1CA: 90 1B     BCC bra_A1E7_RTS
C - - - - - 0x0261DC 09:A1CC: 68        PLA
C - - - - - 0x0261DD 09:A1CD: 68        PLA
C - - - - - 0x0261DE 09:A1CE: A2 06     LDX #$06
C - - - - - 0x0261E0 09:A1D0: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x0261E3 09:A1D3: 4C CE 9F  JMP loc_9FCE



sub_A1D6:
C - - - - - 0x0261E6 09:A1D6: AD F6 05  LDA ram_05F6
C - - - - - 0x0261E9 09:A1D9: F0 0C     BEQ bra_A1E7_RTS
C - - - - - 0x0261EB 09:A1DB: 68        PLA
C - - - - - 0x0261EC 09:A1DC: 68        PLA
loc_A1DD:
C D 1 - - - 0x0261ED 09:A1DD: AD F6 05  LDA ram_05F6
C - - - - - 0x0261F0 09:A1E0: F0 05     BEQ bra_A1E7_RTS
C - - - - - 0x0261F2 09:A1E2: A9 05     LDA #$05
C - - - - - 0x0261F4 09:A1E4: 8D 36 05  STA ram_0536
bra_A1E7_RTS:
C - - - - - 0x0261F7 09:A1E7: 60        RTS



sub_A1E8:
C - - - - - 0x0261F8 09:A1E8: 18        CLC
C - - - - - 0x0261F9 09:A1E9: AD 46 04  LDA ram_0446
C - - - - - 0x0261FC 09:A1EC: 65 A6     ADC ram_00A6
C - - - - - 0x0261FE 09:A1EE: A8        TAY
C - - - - - 0x0261FF 09:A1EF: A9 00     LDA #$00
C - - - - - 0x026201 09:A1F1: 6D 36 04  ADC ram_X_pos_max_object + 6
C - - - - - 0x026204 09:A1F4: 85 00     STA ram_0000
C - - - - - 0x026206 09:A1F6: AD 86 04  LDA ram_0486
C - - - - - 0x026209 09:A1F9: 10 12     BPL bra_A20D
C - - - - - 0x02620B 09:A1FB: A5 00     LDA ram_0000
C - - - - - 0x02620D 09:A1FD: 30 08     BMI bra_A207
C - - - - - 0x02620F 09:A1FF: D0 04     BNE bra_A205
C - - - - - 0x026211 09:A201: C0 19     CPY #$19
C - - - - - 0x026213 09:A203: 90 02     BCC bra_A207
bra_A205:
C - - - - - 0x026215 09:A205: 18        CLC
C - - - - - 0x026216 09:A206: 60        RTS
bra_A207:
C - - - - - 0x026217 09:A207: A9 18     LDA #$18
C - - - - - 0x026219 09:A209: A0 00     LDY #$00
C - - - - - 0x02621B 09:A20B: F0 10     BEQ bra_A21D
bra_A20D:
C - - - - - 0x02621D 09:A20D: A5 00     LDA ram_0000
C - - - - - 0x02621F 09:A20F: F0 F4     BEQ bra_A205
C - - - - - 0x026221 09:A211: C9 02     CMP #$02
C - - - - - 0x026223 09:A213: B0 04     BCS bra_A219
C - - - - - 0x026225 09:A215: C0 A8     CPY #$A8
C - - - - - 0x026227 09:A217: 90 EC     BCC bra_A205
bra_A219:
C - - - - - 0x026229 09:A219: A9 A8     LDA #$A8
C - - - - - 0x02622B 09:A21B: A0 01     LDY #$01
bra_A21D:
C - - - - - 0x02622D 09:A21D: 84 00     STY ram_0000
C - - - - - 0x02622F 09:A21F: 38        SEC
C - - - - - 0x026230 09:A220: E5 A6     SBC ram_00A6
C - - - - - 0x026232 09:A222: 8D 46 04  STA ram_0446
C - - - - - 0x026235 09:A225: A5 00     LDA ram_0000
C - - - - - 0x026237 09:A227: E9 00     SBC #$00
C - - - - - 0x026239 09:A229: 8D 36 04  STA ram_X_pos_max_object + 6
C - - - - - 0x02623C 09:A22C: A2 06     LDX #$06
C - - - - - 0x02623E 09:A22E: 20 3C DB  JSR sub_0x03DB4C
C - - - - - 0x026241 09:A231: 38        SEC
C - - - - - 0x026242 09:A232: 60        RTS



ofs_A233_06_Shred:
C - - J - - 0x026243 09:A233: A9 00     LDA #$00
C - - - - - 0x026245 09:A235: 8D 46 04  STA ram_0446
C - - - - - 0x026248 09:A238: 8D 16 04  STA ram_0416
C - - - - - 0x02624B 09:A23B: 8D 06 04  STA ram_0406
C - - - - - 0x02624E 09:A23E: 60        RTS



sub_A23F:
.export sub_0x02624F
sub_0x02624F:
C - - - - - 0x02624F 09:A23F: A5 AD     LDA ram_00AD
C - - - - - 0x026251 09:A241: 18        CLC
C - - - - - 0x026252 09:A242: 69 02     ADC #$02
C - - - - - 0x026254 09:A244: AA        TAX
bra_A245:
C - - - - - 0x026255 09:A245: 86 A8     STX ram_00A8
C - - - - - 0x026257 09:A247: BC 50 05  LDY ram_id_object,X
C - - - - - 0x02625A 09:A24A: F0 24     BEQ bra_A270
C - - - - - 0x02625C 09:A24C: B9 E1 A7  LDA tbl_A7E2 - 1,Y
C - - - - - 0x02625F 09:A24F: 9D 90 05  STA ram_hp_lo,X
C - - - - - 0x026262 09:A252: 98        TYA
C - - - - - 0x026263 09:A253: 0A        ASL
C - - - - - 0x026264 09:A254: A8        TAY
C - - - - - 0x026265 09:A255: B9 80 A2  LDA tbl_A282 - 2,Y
C - - - - - 0x026268 09:A258: 85 00     STA ram_0000
C - - - - - 0x02626A 09:A25A: B9 81 A2  LDA tbl_A282 - 1,Y
C - - - - - 0x02626D 09:A25D: 85 01     STA ram_0001
C - - - - - 0x02626F 09:A25F: BD 30 05  LDA ram_0530,X
C - - - - - 0x026272 09:A262: 0A        ASL
C - - - - - 0x026273 09:A263: A8        TAY
C - - - - - 0x026274 09:A264: B1 00     LDA (ram_0000),Y
C - - - - - 0x026276 09:A266: 85 02     STA ram_0002
C - - - - - 0x026278 09:A268: C8        INY
C - - - - - 0x026279 09:A269: B1 00     LDA (ram_0000),Y
C - - - - - 0x02627B 09:A26B: 85 03     STA ram_0003
C - - - - - 0x02627D 09:A26D: 20 79 A2  JSR sub_A279
bra_A270:
C - - - - - 0x026280 09:A270: E8        INX
C - - - - - 0x026281 09:A271: E8        INX
C - - - - - 0x026282 09:A272: E0 06     CPX #$06
C - - - - - 0x026284 09:A274: 90 CF     BCC bra_A245
C - - - - - 0x026286 09:A276: 4C 31 A8  JMP loc_A831



sub_A279:
C - - - - - 0x026289 09:A279: FE F0 04  INC ram_04F0,X
C - - - - - 0x02628C 09:A27C: BC 20 05  LDY ram_0520,X
C - - - - - 0x02628F 09:A27F: 6C 02 00  JMP (ram_0002)



tbl_A282:
- D 1 - - - 0x026292 09:A282: F4 A2     .word _off006_A2F4_00
- D 1 - - - 0x026294 09:A284: F4 A2     .word _off006_A2F4_01
- D 1 - - - 0x026296 09:A286: F4 A2     .word _off006_A2F4_02
- D 1 - - - 0x026298 09:A288: F4 A2     .word _off006_A2F4_03
- D 1 - - - 0x02629A 09:A28A: F4 A2     .word _off006_A2F4_04
- D 1 - - - 0x02629C 09:A28C: F4 A2     .word _off006_A2F4_05
- D 1 - - - 0x02629E 09:A28E: F4 A2     .word _off006_A2F4_06
- D 1 - - - 0x0262A0 09:A290: F4 A2     .word _off006_A2F4_07
- D 1 - - - 0x0262A2 09:A292: F4 A2     .word _off006_A2F4_08
- D 1 - - - 0x0262A4 09:A294: F4 A2     .word _off006_A2F4_09
- D 1 - - - 0x0262A6 09:A296: F4 A2     .word _off006_A2F4_0A
- D 1 - - - 0x0262A8 09:A298: F4 A2     .word _off006_A2F4_0B
- D 1 - - - 0x0262AA 09:A29A: F4 A2     .word _off006_A2F4_0C
- D 1 - - - 0x0262AC 09:A29C: F4 A2     .word _off006_A2F4_0D
- D 1 - - - 0x0262AE 09:A29E: F4 A2     .word _off006_A2F4_0E
- D 1 - - - 0x0262B0 09:A2A0: F4 A2     .word _off006_A2F4_0F
- D 1 - - - 0x0262B2 09:A2A2: F4 A2     .word _off006_A2F4_10
- D 1 - - - 0x0262B4 09:A2A4: F4 A2     .word _off006_A2F4_11
- D 1 - - - 0x0262B6 09:A2A6: F4 A2     .word _off006_A2F4_12
- D 1 - - - 0x0262B8 09:A2A8: F4 A2     .word _off006_A2F4_13
- D 1 - - - 0x0262BA 09:A2AA: B5 A3     .word _off006_A3B5_14
- D 1 - - - 0x0262BC 09:A2AC: F4 A2     .word _off006_A2F4_15
- D 1 - - - 0x0262BE 09:A2AE: F4 A2     .word _off006_A2F4_16
- D 1 - - - 0x0262C0 09:A2B0: 8F A3     .word _off006_A38F_17
- D 1 - - - 0x0262C2 09:A2B2: F4 A2     .word _off006_A2F4_18
- D 1 - - - 0x0262C4 09:A2B4: F4 A2     .word _off006_A2F4_19
- D 1 - - - 0x0262C6 09:A2B6: F4 A2     .word _off006_A2F4_1A
- D 1 - - - 0x0262C8 09:A2B8: F4 A2     .word _off006_A2F4_1B
- D 1 - - - 0x0262CA 09:A2BA: F4 A2     .word _off006_A2F4_1C
- D 1 - - - 0x0262CC 09:A2BC: F4 A2     .word _off006_A2F4_1D
- D 1 - - - 0x0262CE 09:A2BE: F4 A2     .word _off006_A2F4_1E
- D 1 - - - 0x0262D0 09:A2C0: F4 A2     .word _off006_A2F4_1F
- D 1 - - - 0x0262D2 09:A2C2: F4 A2     .word _off006_A2F4_20
- D 1 - - - 0x0262D4 09:A2C4: F4 A2     .word _off006_A2F4_21
- D 1 - - - 0x0262D6 09:A2C6: F4 A2     .word _off006_A2F4_22
- D 1 - - - 0x0262D8 09:A2C8: F4 A2     .word _off006_A2F4_23
- D 1 - - - 0x0262DA 09:A2CA: F4 A2     .word _off006_A2F4_24
- D 1 - - - 0x0262DC 09:A2CC: F4 A2     .word _off006_A2F4_25
- D 1 - - - 0x0262DE 09:A2CE: 69 A3     .word _off006_A369_26
- D 1 - - - 0x0262E0 09:A2D0: F4 A2     .word _off006_A2F4_27
- D 1 - - - 0x0262E2 09:A2D2: F4 A2     .word _off006_A2F4_28
- D 1 - - - 0x0262E4 09:A2D4: F4 A2     .word _off006_A2F4_29
- D 1 - - - 0x0262E6 09:A2D6: F4 A2     .word _off006_A2F4_2A
- D 1 - - - 0x0262E8 09:A2D8: F4 A2     .word _off006_A2F4_2B
- D 1 - - - 0x0262EA 09:A2DA: F4 A2     .word _off006_A2F4_2C
- D 1 - - - 0x0262EC 09:A2DC: F4 A2     .word _off006_A2F4_2D
- D 1 - - - 0x0262EE 09:A2DE: A8 A5     .word _off006_A5A8_2E
- D 1 - - - 0x0262F0 09:A2E0: CC A3     .word _off006_A3CC_2F
- D 1 - - - 0x0262F2 09:A2E2: 5F A4     .word _off006_A45F_30
- D 1 - - - 0x0262F4 09:A2E4: FF A4     .word _off006_A4FF_31
- D 1 - - - 0x0262F6 09:A2E6: 0A A5     .word _off006_A50A_32
- D 1 - - - 0x0262F8 09:A2E8: 0E A5     .word _off006_A50E_33
- D 1 - - - 0x0262FA 09:A2EA: 1E A5     .word _off006_A51E_34
- D 1 - - - 0x0262FC 09:A2EC: 29 A5     .word _off006_A529_35
- D 1 - - - 0x0262FE 09:A2EE: 7E A5     .word _off006_A57E_36
- D 1 - - - 0x026300 09:A2F0: 1F A6     .word _off006_A61F_37
- D 1 - - - 0x026302 09:A2F2: 3B A6     .word _off006_A63B_38



_off006_A2F4_00:
_off006_A2F4_01:
_off006_A2F4_02:
_off006_A2F4_03:
_off006_A2F4_04:
_off006_A2F4_05:
_off006_A2F4_06:
_off006_A2F4_07:
_off006_A2F4_08:
_off006_A2F4_09:
_off006_A2F4_0A:
_off006_A2F4_0B:
_off006_A2F4_0C:
_off006_A2F4_0D:
_off006_A2F4_0E:
_off006_A2F4_0F:
_off006_A2F4_10:
_off006_A2F4_11:
_off006_A2F4_12:
_off006_A2F4_13:
_off006_A2F4_15:
_off006_A2F4_16:
_off006_A2F4_18:
_off006_A2F4_19:
_off006_A2F4_1A:
_off006_A2F4_1B:
_off006_A2F4_1C:
_off006_A2F4_1D:
_off006_A2F4_1E:
_off006_A2F4_1F:
_off006_A2F4_20:
_off006_A2F4_21:
_off006_A2F4_22:
_off006_A2F4_23:
_off006_A2F4_24:
_off006_A2F4_25:
_off006_A2F4_27:
_off006_A2F4_28:
_off006_A2F4_29:
_off006_A2F4_2A:
_off006_A2F4_2B:
_off006_A2F4_2C:
_off006_A2F4_2D:
- D 1 - I - 0x026304 09:A2F4: F8 A2     .word ofs_A2F8_00
- D 1 - I - 0x026306 09:A2F6: 5E A3     .word ofs_A35E_01



sub_A2F8:
ofs_A2F8_00:
C - - J - - 0x026308 09:A2F8: FE 30 05  INC ram_0530,X
C - - - - - 0x02630B 09:A2FB: 20 36 A3  JSR sub_A336
C - - - - - 0x02630E 09:A2FE: B9 DE A6  LDA tbl_A6DF - 1,Y
C - - - - - 0x026311 09:A301: 9D A0 04  STA ram_04A0,X
C - - - - - 0x026314 09:A304: B9 0D A7  LDA tbl_A70E - 1,Y
C - - - - - 0x026317 09:A307: 9D B0 04  STA ram_04B0,X
C - - - - - 0x02631A 09:A30A: B9 3C A7  LDA tbl_A73D - 1,Y
C - - - - - 0x02631D 09:A30D: 20 B6 8B  JSR sub_8BB6
C - - - - - 0x026320 09:A310: 9D 60 05  STA ram_0560,X
sub_A313:
loc_A313:
C D 1 - - - 0x026323 09:A313: 8A        TXA
C - - - - - 0x026324 09:A314: 29 01     AND #$01
C - - - - - 0x026326 09:A316: A8        TAY
C - - - - - 0x026327 09:A317: B9 10 05  LDA ram_turn_side_object,Y
sub_A31A:
C - - - - - 0x02632A 09:A31A: 0A        ASL
C - - - - - 0x02632B 09:A31B: 0A        ASL
C - - - - - 0x02632C 09:A31C: BD A0 04  LDA ram_04A0,X
C - - - - - 0x02632F 09:A31F: 90 03     BCC bra_A324
C - - - - - 0x026331 09:A321: 20 FC D1  JSR sub_0x03D20C_reverse_byte
bra_A324:
C - - - - - 0x026334 09:A324: 18        CLC
C - - - - - 0x026335 09:A325: 79 40 04  ADC ram_X_pos_hi_object,Y
C - - - - - 0x026338 09:A328: 9D 40 04  STA ram_X_pos_hi_object,X
C - - - - - 0x02633B 09:A32B: 18        CLC
C - - - - - 0x02633C 09:A32C: B9 10 04  LDA ram_Y_pos_hi_object,Y
C - - - - - 0x02633F 09:A32F: 7D B0 04  ADC ram_04B0,X
C - - - - - 0x026342 09:A332: 9D 10 04  STA ram_Y_pos_hi_object,X
bra_A335_RTS:
C - - - - - 0x026345 09:A335: 60        RTS



sub_A336:
C - - - - - 0x026346 09:A336: BC 50 05  LDY ram_id_object,X
C - - - - - 0x026349 09:A339: B9 6B A7  LDA tbl_A76C - 1,Y
C - - - - - 0x02634C 09:A33C: 9D 70 05  STA ram_0570,X
C - - - - - 0x02634F 09:A33F: B9 A4 A7  LDA tbl_A7A5 - 1,Y
C - - - - - 0x026352 09:A342: 9D B0 05  STA ram_05B0,X
C - - - - - 0x026355 09:A345: C0 0F     CPY #$0F
C - - - - - 0x026357 09:A347: B0 14     BCS bra_A35D_RTS
C - - - - - 0x026359 09:A349: 8A        TXA
C - - - - - 0x02635A 09:A34A: 29 01     AND #$01
C - - - - - 0x02635C 09:A34C: A8        TAY
C - - - - - 0x02635D 09:A34D: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x026360 09:A350: A8        TAY
C - - - - - 0x026361 09:A351: B9 2D A8  LDA tbl_A82D,Y
C - - - - - 0x026364 09:A354: 7D B0 05  ADC ram_05B0,X
C - - - - - 0x026367 09:A357: 9D B0 05  STA ram_05B0,X
C - - - - - 0x02636A 09:A35A: BC 50 05  LDY ram_id_object,X
bra_A35D_RTS:
C - - - - - 0x02636D 09:A35D: 60        RTS



bra_A35E:
ofs_A35E_01:
C - - J - - 0x02636E 09:A35E: 20 13 A3  JSR sub_A313
C - - - - - 0x026371 09:A361: DE 60 05  DEC ram_0560,X
C - - - - - 0x026374 09:A364: D0 CF     BNE bra_A335_RTS
loc_A366:
C D 1 - - - 0x026376 09:A366: 4C 20 DE  JMP loc_0x03DE30



_off006_A369_26:
- D 1 - I - 0x026379 09:A369: 6D A3     .word ofs_A36D_00
- D 1 - I - 0x02637B 09:A36B: 79 A3     .word ofs_A379_01



ofs_A36D_00:
C - - J - - 0x02637D 09:A36D: 20 F8 A2  JSR sub_A2F8
C - - - - - 0x026380 09:A370: A9 06     LDA #$06
C - - - - - 0x026382 09:A372: 20 0E E1  JSR sub_0x03E11E
C - - - - - 0x026385 09:A375: 9D C0 05  STA ram_05C0,X
C - - - - - 0x026388 09:A378: 60        RTS



ofs_A379_01:
C - - J - - 0x026389 09:A379: BD C0 05  LDA ram_05C0,X
C - - - - - 0x02638C 09:A37C: F0 E0     BEQ bra_A35E
C - - - - - 0x02638E 09:A37E: DE C0 05  DEC ram_05C0,X
C - - - - - 0x026391 09:A381: D0 DB     BNE bra_A35E
C - - - - - 0x026393 09:A383: A9 1F     LDA #$1F
C - - - - - 0x026395 09:A385: 9D A0 04  STA ram_04A0,X
C - - - - - 0x026398 09:A388: A9 C1     LDA #$C1
loc_A38A:
C D 1 - - - 0x02639A 09:A38A: 9D B0 04  STA ram_04B0,X
C - - - - - 0x02639D 09:A38D: D0 CF     BNE bra_A35E



_off006_A38F_17:
- D 1 - I - 0x02639F 09:A38F: F8 A2     .word ofs_A2F8_00
- D 1 - I - 0x0263A1 09:A391: 93 A3     .word ofs_A393_01



ofs_A393_01:
C - - J - - 0x0263A3 09:A393: BC 20 05  LDY ram_0520,X
C - - - - - 0x0263A6 09:A396: B9 16 06  LDA ram_0616,Y
C - - - - - 0x0263A9 09:A399: C9 07     CMP #$07
C - - - - - 0x0263AB 09:A39B: B0 C1     BCS bra_A35E
C - - - - - 0x0263AD 09:A39D: C9 04     CMP #$04
C - - - - - 0x0263AF 09:A39F: 90 BD     BCC bra_A35E
C - - - - - 0x0263B1 09:A3A1: 0A        ASL
C - - - - - 0x0263B2 09:A3A2: A8        TAY
C - - - - - 0x0263B3 09:A3A3: B9 A7 A3  LDA tbl_A3AF - 8,Y
C - - - - - 0x0263B6 09:A3A6: 9D A0 04  STA ram_04A0,X
C - - - - - 0x0263B9 09:A3A9: B9 A8 A3  LDA tbl_A3B0 - 8,Y
bra_A3AC:
C - - - - - 0x0263BC 09:A3AC: 4C 8A A3  JMP loc_A38A



tbl_A3AF:
- D 1 - - - 0x0263BF 09:A3AF: 18        .byte $18   ; 
tbl_A3B0:
- D 1 - - - 0x0263C0 09:A3B0: D0        .byte $D0   ; 
- D 1 - - - 0x0263C1 09:A3B1: 13        .byte $13   ; 
- D 1 - - - 0x0263C2 09:A3B2: C4        .byte $C4   ; 
- D 1 - - - 0x0263C3 09:A3B3: 10        .byte $10   ; 
- D 1 - - - 0x0263C4 09:A3B4: D0        .byte $D0   ; 



_off006_A3B5_14:
- D 1 - I - 0x0263C5 09:A3B5: F8 A2     .word ofs_A2F8_00
- D 1 - I - 0x0263C7 09:A3B7: B9 A3     .word ofs_A3B9_01


ofs_A3B9_01:
C - - J - - 0x0263C9 09:A3B9: BC 20 05  LDY ram_0520,X
C - - - - - 0x0263CC 09:A3BC: B9 16 06  LDA ram_0616,Y
C - - - - - 0x0263CF 09:A3BF: C9 06     CMP #$06
C - - - - - 0x0263D1 09:A3C1: 90 9B     BCC bra_A35E
C - - - - - 0x0263D3 09:A3C3: A9 14     LDA #$14
C - - - - - 0x0263D5 09:A3C5: 9D A0 04  STA ram_04A0,X
C - - - - - 0x0263D8 09:A3C8: A9 C5     LDA #$C5
C - - - - - 0x0263DA 09:A3CA: D0 E0     BNE bra_A3AC



_off006_A3CC_2F:
- D 1 - I - 0x0263DC 09:A3CC: D2 A3     .word ofs_A3D2_00
- D 1 - I - 0x0263DE 09:A3CE: F2 A3     .word ofs_A3F2_01
- D 1 - I - 0x0263E0 09:A3D0: 0C A4     .word ofs_A40C_02



ofs_A3D2_00:
C - - J - - 0x0263E2 09:A3D2: A9 10     LDA #$10
C - - - - - 0x0263E4 09:A3D4: A0 00     LDY #$00
C - - - - - 0x0263E6 09:A3D6: 20 75 A4  JSR sub_A475
C - - - - - 0x0263E9 09:A3D9: A9 1D     LDA #$1D
C - - - - - 0x0263EB 09:A3DB: 20 90 F6  JSR sub_0x03F6A0_play_sound
C - - - - - 0x0263EE 09:A3DE: A9 06     LDA #$06
C - - - - - 0x0263F0 09:A3E0: 20 B6 8B  JSR sub_8BB6
C - - - - - 0x0263F3 09:A3E3: 9D 60 05  STA ram_0560,X
C - - - - - 0x0263F6 09:A3E6: A9 80     LDA #$80
C - - - - - 0x0263F8 09:A3E8: 9D E0 05  STA ram_05E0,X
C - - - - - 0x0263FB 09:A3EB: 4A        LSR
C - - - - - 0x0263FC 09:A3EC: 9D 80 05  STA ram_0580,X
C - - - - - 0x0263FF 09:A3EF: 4C 13 A3  JMP loc_A313



ofs_A3F2_01:
C - - J - - 0x026402 09:A3F2: DE 60 05  DEC ram_0560,X
C - - - - - 0x026405 09:A3F5: F0 05     BEQ bra_A3FC
bra_A3F7:
C - - - - - 0x026407 09:A3F7: A0 12     LDY #$12
C - - - - - 0x026409 09:A3F9: 4C 7C D0  JMP loc_0x03D08C
bra_A3FC:
C - - - - - 0x02640C 09:A3FC: A9 18     LDA #$18
C - - - - - 0x02640E 09:A3FE: 20 B6 8B  JSR sub_8BB6
C - - - - - 0x026411 09:A401: 9D 60 05  STA ram_0560,X
C - - - - - 0x026414 09:A404: FE 30 05  INC ram_0530,X
C - - - - - 0x026417 09:A407: A9 04     LDA #$04
C - - - - - 0x026419 09:A409: 4C EC EF  JMP loc_0x03EFFC



ofs_A40C_02:
C - - J - - 0x02641C 09:A40C: 8A        TXA
C - - - - - 0x02641D 09:A40D: 49 01     EOR #$01
C - - - - - 0x02641F 09:A40F: 29 01     AND #$01
C - - - - - 0x026421 09:A411: 18        CLC
C - - - - - 0x026422 09:A412: 69 04     ADC #$04
C - - - - - 0x026424 09:A414: A8        TAY
C - - - - - 0x026425 09:A415: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x026428 09:A418: C9 30     CMP #$30
C - - - - - 0x02642A 09:A41A: F0 04     BEQ bra_A420
C - - - - - 0x02642C 09:A41C: C9 2F     CMP #$2F
C - - - - - 0x02642E 09:A41E: D0 07     BNE bra_A427
bra_A420:
C - - - - - 0x026430 09:A420: 20 0C D2  JSR sub_0x03D21C
C - - - - - 0x026433 09:A423: C9 10     CMP #$10
C - - - - - 0x026435 09:A425: 90 0B     BCC bra_A432
bra_A427:
C - - - - - 0x026437 09:A427: 20 65 DB  JSR sub_0x03DB75
C - - - - - 0x02643A 09:A42A: DE 60 05  DEC ram_0560,X
C - - - - - 0x02643D 09:A42D: D0 C8     BNE bra_A3F7
C - - - - - 0x02643F 09:A42F: 4C 20 DE  JMP loc_0x03DE30
bra_A432:
C - - - - - 0x026442 09:A432: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x026445 09:A435: 79 40 04  ADC ram_X_pos_hi_object,Y
C - - - - - 0x026448 09:A438: 6A        ROR
C - - - - - 0x026449 09:A439: 48        PHA
C - - - - - 0x02644A 09:A43A: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x02644D 09:A43D: 79 10 04  ADC ram_Y_pos_hi_object,Y
C - - - - - 0x026450 09:A440: 6A        ROR
C - - - - - 0x026451 09:A441: 48        PHA
C - - - - - 0x026452 09:A442: 20 C7 DA  JSR sub_0x03DAD7
C - - - - - 0x026455 09:A445: 8A        TXA
C - - - - - 0x026456 09:A446: 29 01     AND #$01
C - - - - - 0x026458 09:A448: 18        CLC
C - - - - - 0x026459 09:A449: 69 0A     ADC #$0A
C - - - - - 0x02645B 09:A44B: A8        TAY
C - - - - - 0x02645C 09:A44C: 20 C7 DA  JSR sub_0x03DAD7
C - - - - - 0x02645F 09:A44F: 68        PLA
C - - - - - 0x026460 09:A450: 99 10 04  STA ram_Y_pos_hi_object,Y
C - - - - - 0x026463 09:A453: 68        PLA
C - - - - - 0x026464 09:A454: 99 40 04  STA ram_X_pos_hi_object,Y
C - - - - - 0x026467 09:A457: A9 01     LDA #$01
C - - - - - 0x026469 09:A459: 99 50 05  STA ram_id_object,Y
C - - - - - 0x02646C 09:A45C: 4C D3 DA  JMP loc_0x03DAE3



_off006_A45F_30:
- D 1 - I - 0x02646F 09:A45F: 63 A4     .word ofs_A463_00
- D 1 - I - 0x026471 09:A461: 8D A4     .word ofs_A48D_01



ofs_A463_00:
C - - J - - 0x026473 09:A463: A9 18     LDA #$18
C - - - - - 0x026475 09:A465: A0 D8     LDY #$D8
C - - - - - 0x026477 09:A467: 20 75 A4  JSR sub_A475
C - - - - - 0x02647A 09:A46A: A9 0C     LDA #$0C
C - - - - - 0x02647C 09:A46C: 9D D0 04  STA ram_04D0,X
C - - - - - 0x02647F 09:A46F: A9 80     LDA #$80
C - - - - - 0x026481 09:A471: 9D 80 05  STA ram_0580,X
C - - - - - 0x026484 09:A474: 60        RTS



sub_A475:
loc_A475:
C D 1 - - - 0x026485 09:A475: FE 30 05  INC ram_0530,X
C - - - - - 0x026488 09:A478: 9D A0 04  STA ram_04A0,X
C - - - - - 0x02648B 09:A47B: 98        TYA
C - - - - - 0x02648C 09:A47C: 9D B0 04  STA ram_04B0,X
C - - - - - 0x02648F 09:A47F: A9 80     LDA #$80
C - - - - - 0x026491 09:A481: 9D 60 05  STA ram_0560,X
C - - - - - 0x026494 09:A484: 20 C7 A4  JSR sub_A4C7
C - - - - - 0x026497 09:A487: A9 18     LDA #$18
C - - - - - 0x026499 09:A489: 4C 94 F6  JMP loc_0x03F6A4_play_sound
bra_A48C_RTS:
C - - - - - 0x02649C 09:A48C: 60        RTS



ofs_A48D_01:
C - - J - - 0x02649D 09:A48D: BD D0 04  LDA ram_04D0,X
C - - - - - 0x0264A0 09:A490: F0 0A     BEQ bra_A49C
C - - - - - 0x0264A2 09:A492: DE D0 04  DEC ram_04D0,X
C - - - - - 0x0264A5 09:A495: D0 F5     BNE bra_A48C_RTS
C - - - - - 0x0264A7 09:A497: A9 00     LDA #$00
C - - - - - 0x0264A9 09:A499: 9D 80 05  STA ram_0580,X
bra_A49C:
C - - - - - 0x0264AC 09:A49C: BD F0 05  LDA ram_05F0,X
C - - - - - 0x0264AF 09:A49F: F0 0B     BEQ bra_A4AC
C - - - - - 0x0264B1 09:A4A1: A9 00     LDA #$00
C - - - - - 0x0264B3 09:A4A3: 9D F0 05  STA ram_05F0,X
C - - - - - 0x0264B6 09:A4A6: 99 B0 04  STA ram_04B0,Y
C - - - - - 0x0264B9 09:A4A9: 99 C0 04  STA ram_04C0,Y
bra_A4AC:
C - - - - - 0x0264BC 09:A4AC: 4C DE A4  JMP loc_A4DE



bra_A4AF:
loc_A4AF:
C D 1 - - - 0x0264BF 09:A4AF: 20 D4 DE  JSR sub_0x03DEE4
C - - - - - 0x0264C2 09:A4B2: 4C DE A4  JMP loc_A4DE



ofs_A4B5_01:
C - - J - - 0x0264C5 09:A4B5: BD 08 04  LDA ram_0408,X
C - - - - - 0x0264C8 09:A4B8: D0 05     BNE bra_A4BF
C - - - - - 0x0264CA 09:A4BA: A9 A7     LDA #$A7
C - - - - - 0x0264CC 09:A4BC: 9D 0C 04  STA ram_anim_special,X
bra_A4BF:
C - - - - - 0x0264CF 09:A4BF: A9 E5     LDA #$E5
C - - - - - 0x0264D1 09:A4C1: D0 EC     BNE bra_A4AF



ofs_A4C3_01:
C - - J - - 0x0264D3 09:A4C3: A9 BE     LDA #$BE
C - - - - - 0x0264D5 09:A4C5: D0 E8     BNE bra_A4AF



sub_A4C7:
C - - - - - 0x0264D7 09:A4C7: 20 36 A3  JSR sub_A336
C - - - - - 0x0264DA 09:A4CA: C0 32     CPY #$32
C - - - - - 0x0264DC 09:A4CC: D0 BE     BNE bra_A48C_RTS
C - - - - - 0x0264DE 09:A4CE: A9 A8     LDA #> ofs_0x02E830
C - - - - - 0x0264E0 09:A4D0: 48        PHA
C - - - - - 0x0264E1 09:A4D1: A9 1F     LDA #< ofs_0x02E830
C - - - - - 0x0264E3 09:A4D3: 48        PHA
C - - - - - 0x0264E4 09:A4D4: 4C E7 F5  JMP loc_0x03F5F7_prg_bank_0B



ofs_A4D7_01:
C - - J - - 0x0264E7 09:A4D7: B9 00 04  LDA ram_anim_object,Y
C - - - - - 0x0264EA 09:A4DA: 69 0E     ADC #$0E
C - - - - - 0x0264EC 09:A4DC: D0 D1     BNE bra_A4AF



loc_A4DE:
ofs_A4DE_01:
C D 1 - - - 0x0264EE 09:A4DE: BC 20 05  LDY ram_0520,X
C - - - - - 0x0264F1 09:A4E1: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x0264F4 09:A4E4: 20 1A A3  JSR sub_A31A
C - - - - - 0x0264F7 09:A4E7: B9 20 05  LDA ram_0520,Y
C - - - - - 0x0264FA 09:A4EA: C9 08     CMP #$08
C - - - - - 0x0264FC 09:A4EC: D0 0E     BNE bra_A4FC
C - - - - - 0x0264FE 09:A4EE: A5 22     LDA ram_frame_counter
C - - - - - 0x026500 09:A4F0: 29 03     AND #$03
C - - - - - 0x026502 09:A4F2: 09 80     ORA #$80
C - - - - - 0x026504 09:A4F4: 9D 00 05  STA ram_0500,X
C - - - - - 0x026507 09:A4F7: DE 60 05  DEC ram_0560,X
C - - - - - 0x02650A 09:A4FA: D0 42     BNE bra_A53E_RTS
bra_A4FC:
C - - - - - 0x02650C 09:A4FC: 4C 66 A3  JMP loc_A366



_off006_A4FF_31:
- D 1 - I - 0x02650F 09:A4FF: 03 A5     .word ofs_A503_00
- D 1 - I - 0x026511 09:A501: DE A4     .word ofs_A4DE_01



ofs_A503_00:
C - - J - - 0x026513 09:A503: A9 00     LDA #$00
C - - - - - 0x026515 09:A505: A0 F7     LDY #$F7
C - - - - - 0x026517 09:A507: 4C 75 A4  JMP loc_A475


_off006_A50A_32:
- D 1 - I - 0x02651A 09:A50A: 18 A5     .word ofs_A518_00
- D 1 - I - 0x02651C 09:A50C: B5 A4     .word ofs_A4B5_01



_off006_A50E_33:
- D 1 - I - 0x02651E 09:A50E: 12 A5     .word ofs_A512_00
- D 1 - I - 0x026520 09:A510: C3 A4     .word ofs_A4C3_01



ofs_A512_00:
C - - J - - 0x026522 09:A512: A9 1D     LDA #$1D
C - - - - - 0x026524 09:A514: A0 CC     LDY #$CC
C - - - - - 0x026526 09:A516: D0 0E     JMP loc_A475



ofs_A518_00:
C - - J - - 0x026528 09:A518: A9 18     LDA #$18
C - - - - - 0x02652A 09:A51A: A0 E8     LDY #$E8
C - - - - - 0x02652C 09:A51C: D0 08     JMP loc_A475



_off006_A51E_34:
- D 1 - I - 0x02652E 09:A51E: 22 A5     .word ofs_A522_00
- D 1 - I - 0x026530 09:A520: D7 A4     .word ofs_A4D7_01



ofs_A522_00:
C - - J - - 0x026532 09:A522: A9 00     LDA #$00
C - - - - - 0x026534 09:A524: A0 F0     LDY #$F0
C - - - - - 0x026536 09:A526: 4C 75 A4  JMP loc_A475


_off006_A529_35:
- D 1 - I - 0x026539 09:A529: 2D A5     .word ofs_A52D_00
- D 1 - I - 0x02653B 09:A52B: 3F A5     .word ofs_A53F_01



ofs_A52D_00:
C - - J - - 0x02653D 09:A52D: A9 20     LDA #$20
C - - - - - 0x02653F 09:A52F: A0 D8     LDY #$D8
C - - - - - 0x026541 09:A531: 20 75 A4  JSR sub_A475
sub_A534:
C - - - - - 0x026544 09:A534: A9 04     LDA #$04
C - - - - - 0x026546 09:A536: 9D B0 05  STA ram_05B0,X
C - - - - - 0x026549 09:A539: A9 03     LDA #$03
C - - - - - 0x02654B 09:A53B: 9D C0 04  STA ram_04C0,X
bra_A53E_RTS:
C - - - - - 0x02654E 09:A53E: 60        RTS



ofs_A53F_01:
C - - J - - 0x02654F 09:A53F: BC 20 05  LDY ram_0520,X
C - - - - - 0x026552 09:A542: B9 20 05  LDA ram_0520,Y
C - - - - - 0x026555 09:A545: C9 08     CMP #$08
C - - - - - 0x026557 09:A547: D0 32     BNE bra_A57B
C - - - - - 0x026559 09:A549: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x02655C 09:A54C: 20 1A A3  JSR sub_A31A
C - - - - - 0x02655F 09:A54F: DE C0 04  DEC ram_04C0,X
C - - - - - 0x026562 09:A552: 10 EA     BPL bra_A53E_RTS
C - - - - - 0x026564 09:A554: DE D0 04  DEC ram_04D0,X
C - - - - - 0x026567 09:A557: BD D0 04  LDA ram_04D0,X
C - - - - - 0x02656A 09:A55A: 4A        LSR
C - - - - - 0x02656B 09:A55B: 90 05     BCC bra_A562
C - - - - - 0x02656D 09:A55D: A9 18     LDA #$18
C - - - - - 0x02656F 09:A55F: 20 94 F6  JSR sub_0x03F6A4_play_sound
bra_A562:
C - - - - - 0x026572 09:A562: BD D0 04  LDA ram_04D0,X
C - - - - - 0x026575 09:A565: 29 03     AND #$03
C - - - - - 0x026577 09:A567: A8        TAY
C - - - - - 0x026578 09:A568: A9 22     LDA #$22
C - - - - - 0x02657A 09:A56A: 9D A0 04  STA ram_04A0,X
C - - - - - 0x02657D 09:A56D: B9 DE A7  LDA tbl_A7DE,Y
C - - - - - 0x026580 09:A570: 9D B0 04  STA ram_04B0,X
C - - - - - 0x026583 09:A573: 20 34 A5  JSR sub_A534
C - - - - - 0x026586 09:A576: A9 06     LDA #$06
C - - - - - 0x026588 09:A578: 4C 90 F6  JMP loc_0x03F6A0_play_sound
bra_A57B:
C - - - - - 0x02658B 09:A57B: 4C 66 A3  JMP loc_A366



_off006_A57E_36:
- D 1 - I - 0x02658E 09:A57E: 82 A5     .word ofs_A582_00
- D 1 - I - 0x026590 09:A580: 8F A5     .word ofs_A58F_01



ofs_A582_00:
C - - J - - 0x026592 09:A582: A9 1E     LDA #$1E
C - - - - - 0x026594 09:A584: A0 D8     LDY #$D8
C - - - - - 0x026596 09:A586: 20 75 A4  JSR sub_A475
C - - - - - 0x026599 09:A589: A9 10     LDA #$10
C - - - - - 0x02659B 09:A58B: 9D 60 05  STA ram_0560,X
C - - - - - 0x02659E 09:A58E: 60        RTS



ofs_A58F_01:
C - - J - - 0x02659F 09:A58F: BC 20 05  LDY ram_0520,X
C - - - - - 0x0265A2 09:A592: B9 00 04  LDA ram_anim_object,Y
C - - - - - 0x0265A5 09:A595: C9 AE     CMP #$AE
C - - - - - 0x0265A7 09:A597: F0 07     BEQ bra_A5A0
C - - - - - 0x0265A9 09:A599: C9 AD     CMP #$AD
C - - - - - 0x0265AB 09:A59B: D0 06     BNE bra_A5A3
C - - - - - 0x0265AD 09:A59D: A9 B6     LDA #$B6
C - - - - - 0x0265AF 09:A59F: 2C        .byte $2C
bra_A5A0:
C - - - - - 0x0265B0 09:A5A0: A9 B7     LDA #$B7
C - - - - - 0x0265B2 09:A5A2: 2C        .byte $2C
bra_A5A3:
C - - - - - 0x0265B3 09:A5A3: A9 00     LDA #$00
C - - - - - 0x0265B5 09:A5A5: 4C AF A4  JMP loc_A4AF



_off006_A5A8_2E:
- D 1 - I - 0x0265B8 09:A5A8: AC A5     .word ofs_A5AC_00
- D 1 - I - 0x0265BA 09:A5AA: D9 A5     .word ofs_A5D9_01



ofs_A5AC_00:
C - - J - - 0x0265BC 09:A5AC: A9 2B     LDA #$2B
C - - - - - 0x0265BE 09:A5AE: A0 F8     LDY #$F8
C - - - - - 0x0265C0 09:A5B0: 20 75 A4  JSR sub_A475
C - - - - - 0x0265C3 09:A5B3: A9 A8     LDA #$A8
C - - - - - 0x0265C5 09:A5B5: 9D 10 04  STA ram_Y_pos_hi_object,X
C - - - - - 0x0265C8 09:A5B8: A9 28     LDA #$28
C - - - - - 0x0265CA 09:A5BA: 9D B0 05  STA ram_05B0,X
C - - - - - 0x0265CD 09:A5BD: A9 80     LDA #$80
C - - - - - 0x0265CF 09:A5BF: 9D E0 05  STA ram_05E0,X
C - - - - - 0x0265D2 09:A5C2: A9 04     LDA #$04
C - - - - - 0x0265D4 09:A5C4: 9D D0 05  STA ram_05D0,X
C - - - - - 0x0265D7 09:A5C7: A9 07     LDA #$07
C - - - - - 0x0265D9 09:A5C9: 9D 60 05  STA ram_0560,X
C - - - - - 0x0265DC 09:A5CC: A9 C0     LDA #$C0
C - - - - - 0x0265DE 09:A5CE: 9D 80 05  STA ram_0580,X
C - - - - - 0x0265E1 09:A5D1: A9 1B     LDA #$1B
C - - - - - 0x0265E3 09:A5D3: 20 90 F6  JSR sub_0x03F6A0_play_sound
C - - - - - 0x0265E6 09:A5D6: 4C 13 A3  JMP loc_A313



ofs_A5D9_01:
C - - J - - 0x0265E9 09:A5D9: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x0265EC 09:A5DC: BD D0 05  LDA ram_05D0,X
C - - - - - 0x0265EF 09:A5DF: 4A        LSR
C - - - - - 0x0265F0 09:A5E0: D0 08     BNE bra_A5EA
C - - - - - 0x0265F2 09:A5E2: A9 C0     LDA #$C0
C - - - - - 0x0265F4 09:A5E4: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x0265F7 09:A5E7: 20 65 DB  JSR sub_0x03DB75
bra_A5EA:
C - - - - - 0x0265FA 09:A5EA: DE 60 05  DEC ram_0560,X
C - - - - - 0x0265FD 09:A5ED: 10 0D     BPL bra_A5FC
C - - - - - 0x0265FF 09:A5EF: DE D0 05  DEC ram_05D0,X
C - - - - - 0x026602 09:A5F2: 30 87     BMI bra_A57B
C - - - - - 0x026604 09:A5F4: A9 06     LDA #$06
C - - - - - 0x026606 09:A5F6: 20 0E E1  JSR sub_0x03E11E
C - - - - - 0x026609 09:A5F9: 9D 60 05  STA ram_0560,X
bra_A5FC:
C - - - - - 0x02660C 09:A5FC: BC D0 05  LDY ram_05D0,X
C - - - - - 0x02660F 09:A5FF: B9 1B A8  LDA tbl_A81B,Y
C - - - - - 0x026612 09:A602: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x026615 09:A605: C9 AB     CMP #$AB
C - - - - - 0x026617 09:A607: D0 05     BNE bra_A60E
C - - - - - 0x026619 09:A609: A9 40     LDA #$40
C - - - - - 0x02661B 09:A60B: 9D 80 05  STA ram_0580,X
bra_A60E:
C - - - - - 0x02661E 09:A60E: B9 20 A8  LDA tbl_A820,Y
C - - - - - 0x026621 09:A611: 9D 70 05  STA ram_0570,X
C - - - - - 0x026624 09:A614: BC 20 05  LDY ram_0520,X
C - - - - - 0x026627 09:A617: B9 20 05  LDA ram_0520,Y
C - - - - - 0x02662A 09:A61A: C9 08     CMP #$08
C - - - - - 0x02662C 09:A61C: D0 1A     BNE bra_A638
C - - - - - 0x02662E 09:A61E: 60        RTS



_off006_A61F_37:
- D 1 - I - 0x02662F 09:A61F: 23 A6     .word ofs_A623_00
- D 1 - I - 0x026631 09:A621: 30 A6     .word ofs_A630_01



ofs_A623_00:
C - - J - - 0x026633 09:A623: A9 18     LDA #$18
C - - - - - 0x026635 09:A625: A0 FC     LDY #$FC
C - - - - - 0x026637 09:A627: 20 75 A4  JSR sub_A475
C - - - - - 0x02663A 09:A62A: A9 10     LDA #$10
C - - - - - 0x02663C 09:A62C: 9D 60 05  STA ram_0560,X
bra_A62F_RTS:
C - - - - - 0x02663F 09:A62F: 60        RTS



ofs_A630_01:
C - - J - - 0x026640 09:A630: 20 13 A3  JSR sub_A313
sub_A633:
C - - - - - 0x026643 09:A633: DE 60 05  DEC ram_0560,X
C - - - - - 0x026646 09:A636: 10 F7     BPL bra_A62F_RTS
bra_A638:
C - - - - - 0x026648 09:A638: 4C 66 A3  JMP loc_A366



_off006_A63B_38:
- D 1 - I - 0x02664B 09:A63B: 41 A6     .word ofs_A641_00
- D 1 - I - 0x02664D 09:A63D: 65 A6     .word ofs_A665_01
- D 1 - I - 0x02664F 09:A63F: B2 A6     .word ofs_A6B2_02



ofs_A641_00:
C - - J - - 0x026651 09:A641: A9 00     LDA #$00
C - - - - - 0x026653 09:A643: A8        TAY
C - - - - - 0x026654 09:A644: 20 75 A4  JSR sub_A475
C - - - - - 0x026657 09:A647: 20 13 A3  JSR sub_A313
C - - - - - 0x02665A 09:A64A: A9 30     LDA #$30
C - - - - - 0x02665C 09:A64C: 20 0E E1  JSR sub_0x03E11E
C - - - - - 0x02665F 09:A64F: 9D 60 05  STA ram_0560,X
C - - - - - 0x026662 09:A652: A9 90     LDA #$90
C - - - - - 0x026664 09:A654: 9D 10 04  STA ram_Y_pos_hi_object,X
C - - - - - 0x026667 09:A657: 20 18 D2  JSR sub_0x03D228
C - - - - - 0x02666A 09:A65A: A9 00     LDA #$00
C - - - - - 0x02666C 09:A65C: 9D B0 04  STA ram_04B0,X
C - - - - - 0x02666F 09:A65F: A9 80     LDA #$80
C - - - - - 0x026671 09:A661: 9D E0 05  STA ram_05E0,X
bra_A664_RTS:
C - - - - - 0x026674 09:A664: 60        RTS



ofs_A665_01:
C - - J - - 0x026675 09:A665: BD B0 04  LDA ram_04B0,X
C - - - - - 0x026678 09:A668: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x02667B 09:A66B: A9 08     LDA #$08
C - - - - - 0x02667D 09:A66D: AC 26 01  LDY ram_option_speed
C - - - - - 0x026680 09:A670: F0 02     BEQ bra_A674
C - - - - - 0x026682 09:A672: A9 10     LDA #$10
bra_A674:
C - - - - - 0x026684 09:A674: 18        CLC
C - - - - - 0x026685 09:A675: 7D B0 04  ADC ram_04B0,X
C - - - - - 0x026688 09:A678: 69 00     ADC #$00
C - - - - - 0x02668A 09:A67A: 9D B0 04  STA ram_04B0,X
C - - - - - 0x02668D 09:A67D: 8A        TXA
C - - - - - 0x02668E 09:A67E: 49 01     EOR #$01
C - - - - - 0x026690 09:A680: 29 01     AND #$01
C - - - - - 0x026692 09:A682: A8        TAY
C - - - - - 0x026693 09:A683: B9 20 05  LDA ram_0520,Y
C - - - - - 0x026696 09:A686: C9 03     CMP #$03
C - - - - - 0x026698 09:A688: D0 12     BNE bra_A69C
C - - - - - 0x02669A 09:A68A: B9 C0 04  LDA ram_04C0,Y
C - - - - - 0x02669D 09:A68D: C9 08     CMP #$08
C - - - - - 0x02669F 09:A68F: D0 0B     BNE bra_A69C
C - - - - - 0x0266A1 09:A691: FE 30 05  INC ram_0530,X
C - - - - - 0x0266A4 09:A694: A9 3C     LDA #$3C
C - - - - - 0x0266A6 09:A696: 20 B6 8B  JSR sub_8BB6
C - - - - - 0x0266A9 09:A699: 9D 60 05  STA ram_0560,X
bra_A69C:
C - - - - - 0x0266AC 09:A69C: 20 65 DB  JSR sub_0x03DB75
C - - - - - 0x0266AF 09:A69F: A0 18     LDY #$18
C - - - - - 0x0266B1 09:A6A1: 20 7C D0  JSR sub_0x03D08C
C - - - - - 0x0266B4 09:A6A4: 20 33 A6  JSR sub_A633
C - - - - - 0x0266B7 09:A6A7: A5 22     LDA ram_frame_counter
C - - - - - 0x0266B9 09:A6A9: 29 07     AND #$07
C - - - - - 0x0266BB 09:A6AB: D0 B7     BNE bra_A664_RTS
C - - - - - 0x0266BD 09:A6AD: A9 1A     LDA #$1A
C - - - - - 0x0266BF 09:A6AF: 4C 94 F6  JMP loc_0x03F6A4_play_sound



ofs_A6B2_02:
C - - J - - 0x0266C2 09:A6B2: 8A        TXA
C - - - - - 0x0266C3 09:A6B3: 49 01     EOR #$01
C - - - - - 0x0266C5 09:A6B5: 29 01     AND #$01
C - - - - - 0x0266C7 09:A6B7: A8        TAY
C - - - - - 0x0266C8 09:A6B8: B9 8E 00  LDA ram_btn_press,Y
C - - - - - 0x0266CB 09:A6BB: F0 09     BEQ bra_A6C6
C - - - - - 0x0266CD 09:A6BD: BD 60 05  LDA ram_0560,X
C - - - - - 0x0266D0 09:A6C0: 38        SEC
C - - - - - 0x0266D1 09:A6C1: E9 01     SBC #$01
C - - - - - 0x0266D3 09:A6C3: 9D 60 05  STA ram_0560,X
bra_A6C6:
C - - - - - 0x0266D6 09:A6C6: 38        SEC
C - - - - - 0x0266D7 09:A6C7: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x0266DA 09:A6CA: F9 40 04  SBC ram_X_pos_hi_object,Y
C - - - - - 0x0266DD 09:A6CD: F0 06     BEQ bra_A6D5
C - - - - - 0x0266DF 09:A6CF: A9 FF     LDA #$FF
C - - - - - 0x0266E1 09:A6D1: B0 02     BCS bra_A6D5
C - - - - - 0x0266E3 09:A6D3: A9 01     LDA #$01
bra_A6D5:
C - - - - - 0x0266E5 09:A6D5: 9D 80 04  STA ram_X_spd_hi_object,X
C - - - - - 0x0266E8 09:A6D8: A9 00     LDA #$00
C - - - - - 0x0266EA 09:A6DA: 9D 90 04  STA ram_X_spd_lo_object,X
C - - - - - 0x0266ED 09:A6DD: F0 BD     BEQ bra_A69C



tbl_A6DF:
- D 1 - - - 0x0266EF 09:A6DF: 1C        .byte $1C   ; 
- D 1 - - - 0x0266F0 09:A6E0: 1C        .byte $1C   ; 
- D 1 - - - 0x0266F1 09:A6E1: 17        .byte $17   ; 
- D 1 - - - 0x0266F2 09:A6E2: 17        .byte $17   ; 
- D 1 - - - 0x0266F3 09:A6E3: 16        .byte $16   ; 
- D 1 - - - 0x0266F4 09:A6E4: 1A        .byte $1A   ; 
- D 1 - - - 0x0266F5 09:A6E5: 1A        .byte $1A   ; 
- D 1 - - - 0x0266F6 09:A6E6: 1C        .byte $1C   ; 
- D 1 - - - 0x0266F7 09:A6E7: 1C        .byte $1C   ; 
- D 1 - - - 0x0266F8 09:A6E8: 18        .byte $18   ; 
- D 1 - - - 0x0266F9 09:A6E9: 17        .byte $17   ; 
- D 1 - - - 0x0266FA 09:A6EA: 12        .byte $12   ; 
- D 1 - - - 0x0266FB 09:A6EB: 16        .byte $16   ; 
- D 1 - - - 0x0266FC 09:A6EC: 1C        .byte $1C   ; 
- D 1 - - - 0x0266FD 09:A6ED: 1D        .byte $1D   ; 
- D 1 - - - 0x0266FE 09:A6EE: 1F        .byte $1F   ; 
- D 1 - - - 0x0266FF 09:A6EF: 18        .byte $18   ; 
- D 1 - - - 0x026700 09:A6F0: 1D        .byte $1D   ; 
- D 1 - - - 0x026701 09:A6F1: 1E        .byte $1E   ; 
- D 1 - - - 0x026702 09:A6F2: 1E        .byte $1E   ; 
- D 1 - - - 0x026703 09:A6F3: 1B        .byte $1B   ; 
- D 1 - - - 0x026704 09:A6F4: 18        .byte $18   ; 
- D 1 - - - 0x026705 09:A6F5: 1C        .byte $1C   ; 
- D 1 - - - 0x026706 09:A6F6: 18        .byte $18   ; 
- D 1 - - - 0x026707 09:A6F7: 22        .byte $22   ; 
- D 1 - - - 0x026708 09:A6F8: 20        .byte $20   ; 
- D 1 - - - 0x026709 09:A6F9: 1F        .byte $1F   ; 
- D 1 - - - 0x02670A 09:A6FA: 20        .byte $20   ; 
- D 1 - - - 0x02670B 09:A6FB: 22        .byte $22   ; 
- D 1 - - - 0x02670C 09:A6FC: 21        .byte $21   ; 
- D 1 - - - 0x02670D 09:A6FD: 20        .byte $20   ; 
- D 1 - - - 0x02670E 09:A6FE: 21        .byte $21   ; 
- D 1 - - - 0x02670F 09:A6FF: 02        .byte $02   ; 
- D 1 - - - 0x026710 09:A700: 26        .byte $26   ; 
- D 1 - - - 0x026711 09:A701: 1A        .byte $1A   ; 
- D 1 - - - 0x026712 09:A702: 18        .byte $18   ; 
- D 1 - - - 0x026713 09:A703: 1C        .byte $1C   ; 
- D 1 - - - 0x026714 09:A704: 1F        .byte $1F   ; 
- D 1 - - - 0x026715 09:A705: 18        .byte $18   ; 
- D 1 - - - 0x026716 09:A706: 19        .byte $19   ; 
- D 1 - - - 0x026717 09:A707: 18        .byte $18   ; 
- D 1 - - - 0x026718 09:A708: 1E        .byte $1E   ; 
- D 1 - - - 0x026719 09:A709: 28        .byte $28   ; 
- D 1 - - - 0x02671A 09:A70A: 1D        .byte $1D   ; 
- D 1 - - - 0x02671B 09:A70B: 25        .byte $25   ; 
- D 1 - - - 0x02671C 09:A70C: 1E        .byte $1E   ; 
- - - - - - 0x02671D 09:A70D: 10        .byte $10   ; 



tbl_A70E:
- D 1 - - - 0x02671E 09:A70E: DA        .byte $DA   ; 
- D 1 - - - 0x02671F 09:A70F: DC        .byte $DC   ; 
- D 1 - - - 0x026720 09:A710: E4        .byte $E4   ; 
- D 1 - - - 0x026721 09:A711: F2        .byte $F2   ; 
- D 1 - - - 0x026722 09:A712: E8        .byte $E8   ; 
- D 1 - - - 0x026723 09:A713: FC        .byte $FC   ; 
- D 1 - - - 0x026724 09:A714: D8        .byte $D8   ; 
- D 1 - - - 0x026725 09:A715: DC        .byte $DC   ; 
- D 1 - - - 0x026726 09:A716: DC        .byte $DC   ; 
- D 1 - - - 0x026727 09:A717: FC        .byte $FC   ; 
- D 1 - - - 0x026728 09:A718: DC        .byte $DC   ; 
- D 1 - - - 0x026729 09:A719: D0        .byte $D0   ; 
- D 1 - - - 0x02672A 09:A71A: D8        .byte $D8   ; 
- D 1 - - - 0x02672B 09:A71B: E0        .byte $E0   ; 
- D 1 - - - 0x02672C 09:A71C: D4        .byte $D4   ; 
- D 1 - - - 0x02672D 09:A71D: DC        .byte $DC   ; 
- D 1 - - - 0x02672E 09:A71E: E6        .byte $E6   ; 
- D 1 - - - 0x02672F 09:A71F: FC        .byte $FC   ; 
- D 1 - - - 0x026730 09:A720: D6        .byte $D6   ; 
- D 1 - - - 0x026731 09:A721: DA        .byte $DA   ; 
- D 1 - - - 0x026732 09:A722: D5        .byte $D5   ; 
- D 1 - - - 0x026733 09:A723: E0        .byte $E0   ; 
- D 1 - - - 0x026734 09:A724: EC        .byte $EC   ; 
- D 1 - - - 0x026735 09:A725: D8        .byte $D8   ; 
- D 1 - - - 0x026736 09:A726: DC        .byte $DC   ; 
- D 1 - - - 0x026737 09:A727: DC        .byte $DC   ; 
- D 1 - - - 0x026738 09:A728: DD        .byte $DD   ; 
- D 1 - - - 0x026739 09:A729: E8        .byte $E8   ; 
- D 1 - - - 0x02673A 09:A72A: E8        .byte $E8   ; 
- D 1 - - - 0x02673B 09:A72B: D0        .byte $D0   ; 
- D 1 - - - 0x02673C 09:A72C: FC        .byte $FC   ; 
- D 1 - - - 0x02673D 09:A72D: FC        .byte $FC   ; 
- D 1 - - - 0x02673E 09:A72E: FC        .byte $FC   ; 
- D 1 - - - 0x02673F 09:A72F: BC        .byte $BC   ; 
- D 1 - - - 0x026740 09:A730: B0        .byte $B0   ; 
- D 1 - - - 0x026741 09:A731: D8        .byte $D8   ; 
- D 1 - - - 0x026742 09:A732: D4        .byte $D4   ; 
- D 1 - - - 0x026743 09:A733: D7        .byte $D7   ; 
- D 1 - - - 0x026744 09:A734: D0        .byte $D0   ; 
- D 1 - - - 0x026745 09:A735: FC        .byte $FC   ; 
- D 1 - - - 0x026746 09:A736: E0        .byte $E0   ; 
- D 1 - - - 0x026747 09:A737: D8        .byte $D8   ; 
- D 1 - - - 0x026748 09:A738: CE        .byte $CE   ; 
- D 1 - - - 0x026749 09:A739: F6        .byte $F6   ; 
- D 1 - - - 0x02674A 09:A73A: EF        .byte $EF   ; 
- D 1 - - - 0x02674B 09:A73B: C0        .byte $C0   ; 
- - - - - - 0x02674C 09:A73C: E8        .byte $E8   ; 



tbl_A73D:
- D 1 - - - 0x02674D 09:A73D: 07        .byte $07   ; 
- D 1 - - - 0x02674E 09:A73E: 06        .byte $06   ; 
- D 1 - - - 0x02674F 09:A73F: 0C        .byte $0C   ; 
- D 1 - - - 0x026750 09:A740: 0D        .byte $0D   ; 
- D 1 - - - 0x026751 09:A741: 0A        .byte $0A   ; 
- D 1 - - - 0x026752 09:A742: 07        .byte $07   ; 
- D 1 - - - 0x026753 09:A743: 05        .byte $05   ; 
- D 1 - - - 0x026754 09:A744: 08        .byte $08   ; 
- D 1 - - - 0x026755 09:A745: 06        .byte $06   ; 
- D 1 - - - 0x026756 09:A746: 0C        .byte $0C   ; 
- D 1 - - - 0x026757 09:A747: 0E        .byte $0E   ; 
- D 1 - - - 0x026758 09:A748: 0B        .byte $0B   ; 
- D 1 - - - 0x026759 09:A749: 0D        .byte $0D   ; 
- D 1 - - - 0x02675A 09:A74A: 0E        .byte $0E   ; 
- D 1 - - - 0x02675B 09:A74B: 07        .byte $07   ; 
- D 1 - - - 0x02675C 09:A74C: 05        .byte $05   ; 
- D 1 - - - 0x02675D 09:A74D: 07        .byte $07   ; 
- D 1 - - - 0x02675E 09:A74E: 07        .byte $07   ; 
- D 1 - - - 0x02675F 09:A74F: 0A        .byte $0A   ; 
- D 1 - - - 0x026760 09:A750: 08        .byte $08   ; 
- D 1 - - - 0x026761 09:A751: 0D        .byte $0D   ; 
- D 1 - - - 0x026762 09:A752: 0A        .byte $0A   ; 
- D 1 - - - 0x026763 09:A753: 0A        .byte $0A   ; 
- D 1 - - - 0x026764 09:A754: 10        .byte $10   ; 
- D 1 - - - 0x026765 09:A755: 08        .byte $08   ; 
- D 1 - - - 0x026766 09:A756: 0B        .byte $0B   ; 
- D 1 - - - 0x026767 09:A757: 0C        .byte $0C   ; 
- D 1 - - - 0x026768 09:A758: 07        .byte $07   ; 
- D 1 - - - 0x026769 09:A759: 08        .byte $08   ; 
- D 1 - - - 0x02676A 09:A75A: 0B        .byte $0B   ; 
- D 1 - - - 0x02676B 09:A75B: 0C        .byte $0C   ; 
- D 1 - - - 0x02676C 09:A75C: 08        .byte $08   ; 
- D 1 - - - 0x02676D 09:A75D: 14        .byte $14   ; 
- D 1 - - - 0x02676E 09:A75E: 0B        .byte $0B   ; 
- D 1 - - - 0x02676F 09:A75F: 0A        .byte $0A   ; 
- D 1 - - - 0x026770 09:A760: 04        .byte $04   ; 
- D 1 - - - 0x026771 09:A761: 05        .byte $05   ; 
- D 1 - - - 0x026772 09:A762: 07        .byte $07   ; 
- D 1 - - - 0x026773 09:A763: 0D        .byte $0D   ; 
- D 1 - - - 0x026774 09:A764: 0C        .byte $0C   ; 
- D 1 - - - 0x026775 09:A765: 05        .byte $05   ; 
- D 1 - - - 0x026776 09:A766: 06        .byte $06   ; 
- D 1 - - - 0x026777 09:A767: 0B        .byte $0B   ; 
- D 1 - - - 0x026778 09:A768: 10        .byte $10   ; 
- D 1 - - - 0x026779 09:A769: 05        .byte $05   ; 
- D 1 - - - 0x02677A 09:A76A: 0D        .byte $0D   ; 
- - - - - - 0x02677B 09:A76B: 40        .byte $40   ; 



tbl_A76C:
- D 1 - - - 0x02677C 09:A76C: 02        .byte $02   ; 
- D 1 - - - 0x02677D 09:A76D: 02        .byte $02   ; 
- D 1 - - - 0x02677E 09:A76E: 02        .byte $02   ; 
- D 1 - - - 0x02677F 09:A76F: 20        .byte $20   ; 
- D 1 - - - 0x026780 09:A770: 02        .byte $02   ; 
- D 1 - - - 0x026781 09:A771: 02        .byte $02   ; 
- D 1 - - - 0x026782 09:A772: 02        .byte $02   ; 
- D 1 - - - 0x026783 09:A773: 02        .byte $02   ; 
- D 1 - - - 0x026784 09:A774: 02        .byte $02   ; 
- D 1 - - - 0x026785 09:A775: 02        .byte $02   ; 
- D 1 - - - 0x026786 09:A776: 1B        .byte $1B   ; 
- D 1 - - - 0x026787 09:A777: 02        .byte $02   ; 
- D 1 - - - 0x026788 09:A778: 02        .byte $02   ; 
- D 1 - - - 0x026789 09:A779: 02        .byte $02   ; 
- D 1 - - - 0x02678A 09:A77A: 02        .byte $02   ; 
- D 1 - - - 0x02678B 09:A77B: 02        .byte $02   ; 
- D 1 - - - 0x02678C 09:A77C: 02        .byte $02   ; 
- D 1 - - - 0x02678D 09:A77D: 02        .byte $02   ; 
- D 1 - - - 0x02678E 09:A77E: 04        .byte $04   ; 
- D 1 - - - 0x02678F 09:A77F: 02        .byte $02   ; 
- D 1 - - - 0x026790 09:A780: 04        .byte $04   ; 
- D 1 - - - 0x026791 09:A781: 02        .byte $02   ; 
- D 1 - - - 0x026792 09:A782: 20        .byte $20   ; 
- D 1 - - - 0x026793 09:A783: 17        .byte $17   ; 
- D 1 - - - 0x026794 09:A784: 02        .byte $02   ; 
- D 1 - - - 0x026795 09:A785: 02        .byte $02   ; 
- D 1 - - - 0x026796 09:A786: 02        .byte $02   ; 
- D 1 - - - 0x026797 09:A787: 02        .byte $02   ; 
- D 1 - - - 0x026798 09:A788: 02        .byte $02   ; 
- D 1 - - - 0x026799 09:A789: 02        .byte $02   ; 
- D 1 - - - 0x02679A 09:A78A: 20        .byte $20   ; 
- D 1 - - - 0x02679B 09:A78B: 02        .byte $02   ; 
- D 1 - - - 0x02679C 09:A78C: 0B        .byte $0B   ; 
- D 1 - - - 0x02679D 09:A78D: 1A        .byte $1A   ; 
- D 1 - - - 0x02679E 09:A78E: 1D        .byte $1D   ; 
- D 1 - - - 0x02679F 09:A78F: 02        .byte $02   ; 
- D 1 - - - 0x0267A0 09:A790: 02        .byte $02   ; 
- D 1 - - - 0x0267A1 09:A791: 02        .byte $02   ; 
- D 1 - - - 0x0267A2 09:A792: 02        .byte $02   ; 
- D 1 - - - 0x0267A3 09:A793: 02        .byte $02   ; 
- D 1 - - - 0x0267A4 09:A794: 02        .byte $02   ; 
- D 1 - - - 0x0267A5 09:A795: 02        .byte $02   ; 
- D 1 - - - 0x0267A6 09:A796: 20        .byte $20   ; 
- D 1 - - - 0x0267A7 09:A797: 20        .byte $20   ; 
- D 1 - - - 0x0267A8 09:A798: 1A        .byte $1A   ; 
- D 1 - - - 0x0267A9 09:A799: 21        .byte $21   ; 
- D 1 - - - 0x0267AA 09:A79A: 02        .byte $02   ; 
- D 1 - - - 0x0267AB 09:A79B: 02        .byte $02   ; 
- D 1 - - - 0x0267AC 09:A79C: 04        .byte $04   ; 
- D 1 - - - 0x0267AD 09:A79D: 13        .byte $13   ; 
- D 1 - - - 0x0267AE 09:A79E: 04        .byte $04   ; 
- D 1 - - - 0x0267AF 09:A79F: 03        .byte $03   ; 
- D 1 - - - 0x0267B0 09:A7A0: 15        .byte $15   ; 
- D 1 - - - 0x0267B1 09:A7A1: 0E        .byte $0E   ; 
- D 1 - - - 0x0267B2 09:A7A2: 05        .byte $05   ; 
- D 1 - - - 0x0267B3 09:A7A3: 02        .byte $02   ; 
- D 1 - - - 0x0267B4 09:A7A4: 1F        .byte $1F   ; 



tbl_A7A5:
- D 1 - - - 0x0267B5 09:A7A5: 0D        .byte $0D   ; 
- D 1 - - - 0x0267B6 09:A7A6: 0B        .byte $0B   ; 
- D 1 - - - 0x0267B7 09:A7A7: 0D        .byte $0D   ; 
- D 1 - - - 0x0267B8 09:A7A8: 11        .byte $11   ; 
- D 1 - - - 0x0267B9 09:A7A9: 06        .byte $06   ; 
- D 1 - - - 0x0267BA 09:A7AA: 07        .byte $07   ; 
- D 1 - - - 0x0267BB 09:A7AB: 07        .byte $07   ; 
- D 1 - - - 0x0267BC 09:A7AC: 11        .byte $11   ; 
- D 1 - - - 0x0267BD 09:A7AD: 15        .byte $15   ; 
- D 1 - - - 0x0267BE 09:A7AE: 06        .byte $06   ; 
- D 1 - - - 0x0267BF 09:A7AF: 14        .byte $14   ; 
- D 1 - - - 0x0267C0 09:A7B0: 0F        .byte $0F   ; 
- D 1 - - - 0x0267C1 09:A7B1: 0D        .byte $0D   ; 
- D 1 - - - 0x0267C2 09:A7B2: 12        .byte $12   ; 
- D 1 - - - 0x0267C3 09:A7B3: 09        .byte $09   ; 
- D 1 - - - 0x0267C4 09:A7B4: 0C        .byte $0C   ; 
- D 1 - - - 0x0267C5 09:A7B5: 06        .byte $06   ; 
- D 1 - - - 0x0267C6 09:A7B6: 08        .byte $08   ; 
- D 1 - - - 0x0267C7 09:A7B7: 0E        .byte $0E   ; 
- D 1 - - - 0x0267C8 09:A7B8: 12        .byte $12   ; 
- D 1 - - - 0x0267C9 09:A7B9: 0E        .byte $0E   ; 
- D 1 - - - 0x0267CA 09:A7BA: 0D        .byte $0D   ; 
- D 1 - - - 0x0267CB 09:A7BB: 12        .byte $12   ; 
- D 1 - - - 0x0267CC 09:A7BC: 11        .byte $11   ; 
- D 1 - - - 0x0267CD 09:A7BD: 0D        .byte $0D   ; 
- D 1 - - - 0x0267CE 09:A7BE: 18        .byte $18   ; 
- D 1 - - - 0x0267CF 09:A7BF: 14        .byte $14   ; 
- D 1 - - - 0x0267D0 09:A7C0: 0D        .byte $0D   ; 
- D 1 - - - 0x0267D1 09:A7C1: 11        .byte $11   ; 
- D 1 - - - 0x0267D2 09:A7C2: 1C        .byte $1C   ; 
- D 1 - - - 0x0267D3 09:A7C3: 19        .byte $19   ; 
- D 1 - - - 0x0267D4 09:A7C4: 0E        .byte $0E   ; 
- D 1 - - - 0x0267D5 09:A7C5: 20        .byte $20   ; 
- D 1 - - - 0x0267D6 09:A7C6: 16        .byte $16   ; 
- D 1 - - - 0x0267D7 09:A7C7: 15        .byte $15   ; 
- D 1 - - - 0x0267D8 09:A7C8: 0C        .byte $0C   ; 
- D 1 - - - 0x0267D9 09:A7C9: 08        .byte $08   ; 
- D 1 - - - 0x0267DA 09:A7CA: 13        .byte $13   ; 
- D 1 - - - 0x0267DB 09:A7CB: 0F        .byte $0F   ; 
- D 1 - - - 0x0267DC 09:A7CC: 14        .byte $14   ; 
- D 1 - - - 0x0267DD 09:A7CD: 09        .byte $09   ; 
- D 1 - - - 0x0267DE 09:A7CE: 10        .byte $10   ; 
- D 1 - - - 0x0267DF 09:A7CF: 1C        .byte $1C   ; 
- D 1 - - - 0x0267E0 09:A7D0: 15        .byte $15   ; 
- D 1 - - - 0x0267E1 09:A7D1: 0C        .byte $0C   ; 
- D 1 - - - 0x0267E2 09:A7D2: 16        .byte $16   ; 
- D 1 - - - 0x0267E3 09:A7D3: 38        .byte $38   ; 
- D 1 - - - 0x0267E4 09:A7D4: 38        .byte $38   ; 
- D 1 - - - 0x0267E5 09:A7D5: 15        .byte $15   ; 
- D 1 - - - 0x0267E6 09:A7D6: 20        .byte $20   ; 
- D 1 - - - 0x0267E7 09:A7D7: 22        .byte $22   ; 
- D 1 - - - 0x0267E8 09:A7D8: 22        .byte $22   ; 
- D 1 - - - 0x0267E9 09:A7D9: 19        .byte $19   ; 
- D 1 - - - 0x0267EA 09:A7DA: 02        .byte $02   ; 
- D 1 - - - 0x0267EB 09:A7DB: 2B        .byte $2B   ; 
- D 1 - - - 0x0267EC 09:A7DC: 19        .byte $19   ; 
- D 1 - - - 0x0267ED 09:A7DD: 01        .byte $01   ; 



tbl_A7DE:
- D 1 - - - 0x0267EE 09:A7DE: D6        .byte $D6   ; 00
- D 1 - - - 0x0267EF 09:A7DF: D8        .byte $D8   ; 01
- D 1 - - - 0x0267F0 09:A7E0: D5        .byte $D5   ; 02
- D 1 - - - 0x0267F1 09:A7E1: DC        .byte $DC   ; 03



tbl_A7E2:
- D 1 - - - 0x0267F2 09:A7E2: 03        .byte $03   ; 
- D 1 - - - 0x0267F3 09:A7E3: 04        .byte $04   ; 
- D 1 - - - 0x0267F4 09:A7E4: 01        .byte $01   ; 
- D 1 - - - 0x0267F5 09:A7E5: 01        .byte $01   ; 
- D 1 - - - 0x0267F6 09:A7E6: 04        .byte $04   ; 
- D 1 - - - 0x0267F7 09:A7E7: 04        .byte $04   ; 
- D 1 - - - 0x0267F8 09:A7E8: 04        .byte $04   ; 
- D 1 - - - 0x0267F9 09:A7E9: 03        .byte $03   ; 
- D 1 - - - 0x0267FA 09:A7EA: 03        .byte $03   ; 
- D 1 - - - 0x0267FB 09:A7EB: 01        .byte $01   ; 
- D 1 - - - 0x0267FC 09:A7EC: 01        .byte $01   ; 
- D 1 - - - 0x0267FD 09:A7ED: 01        .byte $01   ; 
- D 1 - - - 0x0267FE 09:A7EE: 01        .byte $01   ; 
- D 1 - - - 0x0267FF 09:A7EF: 01        .byte $01   ; 
- D 1 - - - 0x026800 09:A7F0: 04        .byte $04   ; 
- D 1 - - - 0x026801 09:A7F1: 04        .byte $04   ; 
- D 1 - - - 0x026802 09:A7F2: 04        .byte $04   ; 
- D 1 - - - 0x026803 09:A7F3: 04        .byte $04   ; 
- D 1 - - - 0x026804 09:A7F4: 03        .byte $03   ; 
- D 1 - - - 0x026805 09:A7F5: 03        .byte $03   ; 
- D 1 - - - 0x026806 09:A7F6: 01        .byte $01   ; 
- D 1 - - - 0x026807 09:A7F7: 01        .byte $01   ; 
- D 1 - - - 0x026808 09:A7F8: 01        .byte $01   ; 
- D 1 - - - 0x026809 09:A7F9: 01        .byte $01   ; 
- D 1 - - - 0x02680A 09:A7FA: 04        .byte $04   ; 
- D 1 - - - 0x02680B 09:A7FB: 03        .byte $03   ; 
- D 1 - - - 0x02680C 09:A7FC: 01        .byte $01   ; 
- D 1 - - - 0x02680D 09:A7FD: 04        .byte $04   ; 
- D 1 - - - 0x02680E 09:A7FE: 04        .byte $04   ; 
- D 1 - - - 0x02680F 09:A7FF: 03        .byte $03   ; 
- D 1 - - - 0x026810 09:A800: 01        .byte $01   ; 
- D 1 - - - 0x026811 09:A801: 04        .byte $04   ; 
- D 1 - - - 0x026812 09:A802: 01        .byte $01   ; 
- D 1 - - - 0x026813 09:A803: 01        .byte $01   ; 
- D 1 - - - 0x026814 09:A804: 01        .byte $01   ; 
- D 1 - - - 0x026815 09:A805: 05        .byte $05   ; 
- D 1 - - - 0x026816 09:A806: 04        .byte $04   ; 
- D 1 - - - 0x026817 09:A807: 03        .byte $03   ; 
- D 1 - - - 0x026818 09:A808: 01        .byte $01   ; 
- D 1 - - - 0x026819 09:A809: 01        .byte $01   ; 
- D 1 - - - 0x02681A 09:A80A: 04        .byte $04   ; 
- D 1 - - - 0x02681B 09:A80B: 04        .byte $04   ; 
- D 1 - - - 0x02681C 09:A80C: 03        .byte $03   ; 
- D 1 - - - 0x02681D 09:A80D: 01        .byte $01   ; 
- D 1 - - - 0x02681E 09:A80E: 04        .byte $04   ; 
- D 1 - - - 0x02681F 09:A80F: 01        .byte $01   ; 
- D 1 - - - 0x026820 09:A810: 10        .byte $10   ; 
- D 1 - - - 0x026821 09:A811: 10        .byte $10   ; 
- D 1 - - - 0x026822 09:A812: 10        .byte $10   ; 
- D 1 - - - 0x026823 09:A813: 01        .byte $01   ; 
- D 1 - - - 0x026824 09:A814: 10        .byte $10   ; 
- D 1 - - - 0x026825 09:A815: 10        .byte $10   ; 
- D 1 - - - 0x026826 09:A816: 10        .byte $10   ; 
- D 1 - - - 0x026827 09:A817: 10        .byte $10   ; 
- D 1 - - - 0x026828 09:A818: 10        .byte $10   ; 
- D 1 - - - 0x026829 09:A819: 10        .byte $10   ; 
- D 1 - - - 0x02682A 09:A81A: 10        .byte $10   ; 



tbl_A81B:
- D 1 - - - 0x02682B 09:A81B: AE        .byte $AE   ; 00
- D 1 - - - 0x02682C 09:A81C: AD        .byte $AD   ; 01
- D 1 - - - 0x02682D 09:A81D: AC        .byte $AC   ; 02
- D 1 - - - 0x02682E 09:A81E: AB        .byte $AB   ; 03
- D 1 - - - 0x02682F 09:A81F: AA        .byte $AA   ; 04

tbl_A820:
- D 1 - - - 0x026830 09:A820: 0D        .byte $0D   ; 00
- D 1 - - - 0x026831 09:A821: 0D        .byte $0D   ; 01
- D 1 - - - 0x026832 09:A822: 0D        .byte $0D   ; 02
- D 1 - - - 0x026833 09:A823: 0C        .byte $0C   ; 03
- D 1 - - - 0x026834 09:A824: 00        .byte $00   ; 04



tbl_A82D:
- D 1 - - - 0x02683D 09:A82D: 00        .byte $00   ; 00
- D 1 - - - 0x02683E 09:A82E: 01        .byte $01   ; 01
- D 1 - - - 0x02683F 09:A82F: 00        .byte $00   ; 02
- D 1 - - - 0x026840 09:A830: FF        .byte $FF   ; 03



loc_A831:
C D 1 - - - 0x026841 09:A831: A5 AD     LDA ram_00AD
C - - - - - 0x026843 09:A833: 18        CLC
C - - - - - 0x026844 09:A834: 69 02     ADC #$02
C - - - - - 0x026846 09:A836: A8        TAY
C - - - - - 0x026847 09:A837: 18        CLC
C - - - - - 0x026848 09:A838: 69 06     ADC #$06
C - - - - - 0x02684A 09:A83A: AA        TAX
C - - - - - 0x02684B 09:A83B: B9 52 05  LDA ram_id_blow,Y
C - - - - - 0x02684E 09:A83E: C9 36     CMP #$36
C - - - - - 0x026850 09:A840: F0 04     BEQ bra_A846
C - - - - - 0x026852 09:A842: C9 31     CMP #$31
C - - - - - 0x026854 09:A844: D0 02     BNE bra_A848
bra_A846:
C - - - - - 0x026856 09:A846: C8        INY
C - - - - - 0x026857 09:A847: C8        INY
bra_A848:
C - - - - - 0x026858 09:A848: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x02685B 09:A84B: F0 52     BEQ bra_A89F
C - - - - - 0x02685D 09:A84D: C9 21     CMP #$21
C - - - - - 0x02685F 09:A84F: F0 4E     BEQ bra_A89F
C - - - - - 0x026861 09:A851: 9D 50 05  STA ram_id_object,X
C - - - - - 0x026864 09:A854: FE F0 04  INC ram_04F0,X
C - - - - - 0x026867 09:A857: A9 06     LDA #$06
C - - - - - 0x026869 09:A859: 9D 70 05  STA ram_0570,X
C - - - - - 0x02686C 09:A85C: A9 08     LDA #$08
C - - - - - 0x02686E 09:A85E: 9D 60 05  STA ram_0560,X
C - - - - - 0x026871 09:A861: B9 10 04  LDA ram_Y_pos_hi_object,Y
C - - - - - 0x026874 09:A864: 9D 10 04  STA ram_Y_pos_hi_object,X
C - - - - - 0x026877 09:A867: B9 90 05  LDA ram_hp_lo,Y
C - - - - - 0x02687A 09:A86A: 9D 90 05  STA ram_hp_lo,X
C - - - - - 0x02687D 09:A86D: B9 10 05  LDA ram_turn_side_object,Y
C - - - - - 0x026880 09:A870: 9D 10 05  STA ram_turn_side_object,X
C - - - - - 0x026883 09:A873: 0A        ASL
C - - - - - 0x026884 09:A874: 0A        ASL
C - - - - - 0x026885 09:A875: A9 08     LDA #$08
C - - - - - 0x026887 09:A877: B0 02     BCS bra_A87B
C - - - - - 0x026889 09:A879: A9 F8     LDA #$F8
bra_A87B:
C - - - - - 0x02688B 09:A87B: 18        CLC
C - - - - - 0x02688C 09:A87C: 79 40 04  ADC ram_X_pos_hi_object,Y
C - - - - - 0x02688F 09:A87F: 9D 40 04  STA ram_X_pos_hi_object,X
C - - - - - 0x026892 09:A882: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x026895 09:A885: C9 18     CMP #$18
C - - - - - 0x026897 09:A887: F0 07     BEQ bra_A890
C - - - - - 0x026899 09:A889: C9 23     CMP #$23
C - - - - - 0x02689B 09:A88B: D0 11     BNE bra_A89E_RTS
C - - - - - 0x02689D 09:A88D: A9 00     LDA #$00
C - - - - - 0x02689F 09:A88F: 2C        .byte $2C
bra_A890:
C - - - - - 0x0268A0 09:A890: A9 06     LDA #$06
C - - - - - 0x0268A2 09:A892: 79 10 04  ADC ram_Y_pos_hi_object,Y
C - - - - - 0x0268A5 09:A895: 9D 10 04  STA ram_Y_pos_hi_object,X
C - - - - - 0x0268A8 09:A898: B9 40 04  LDA ram_X_pos_hi_object,Y
C - - - - - 0x0268AB 09:A89B: 9D 40 04  STA ram_X_pos_hi_object,X
bra_A89E_RTS:
C - - - - - 0x0268AE 09:A89E: 60        RTS
bra_A89F:
C - - - - - 0x0268AF 09:A89F: BD 60 05  LDA ram_0560,X
C - - - - - 0x0268B2 09:A8A2: F0 04     BEQ bra_A8A8
- - - - - - 0x0268B4 09:A8A4: DE 60 05  DEC ram_0560,X
- - - - - - 0x0268B7 09:A8A7: 60        RTS
bra_A8A8:
C - - - - - 0x0268B8 09:A8A8: 4C D3 DA  JMP loc_0x03DAE3



.export sub_0x0268BB
sub_0x0268BB:
C - - - - - 0x0268BB 09:A8AB: A2 07     LDX #$07
C - - - - - 0x0268BD 09:A8AD: A9 04     LDA #$04
C - - - - - 0x0268BF 09:A8AF: CD 30 05  CMP ram_0530
C - - - - - 0x0268C2 09:A8B2: F0 15     BEQ bra_A8C9
C - - - - - 0x0268C4 09:A8B4: CD 31 05  CMP ram_0531
C - - - - - 0x0268C7 09:A8B7: F0 10     BEQ bra_A8C9
C - - - - - 0x0268C9 09:A8B9: BD 30 05  LDA ram_0530,X
C - - - - - 0x0268CC 09:A8BC: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 1 - I - 0x0268CF 09:A8BF: CC A8     .word ofs_A8CC_00
- D 1 - I - 0x0268D1 09:A8C1: EF A8     .word ofs_A8EF_01
- D 1 - I - 0x0268D3 09:A8C3: 1D A9     .word ofs_A91D_02
- D 1 - I - 0x0268D5 09:A8C5: 45 A9     .word ofs_A945_03
- D 1 - I - 0x0268D7 09:A8C7: 78 A9     .word ofs_A978_04
bra_A8C9:
C - - - - - 0x0268D9 09:A8C9: 4C 87 A9  JMP loc_A987



ofs_A8CC_00:
C - - J - - 0x0268DC 09:A8CC: A9 58     LDA #$58
C - - - - - 0x0268DE 09:A8CE: CD 90 05  CMP ram_hp_lo
C - - - - - 0x0268E1 09:A8D1: B0 11     BCS bra_A8E4
C - - - - - 0x0268E3 09:A8D3: CD 91 05  CMP ram_hp_lo + 1
C - - - - - 0x0268E6 09:A8D6: B0 0C     BCS bra_A8E4
C - - - - - 0x0268E8 09:A8D8: AD 72 06  LDA ram_game_time_tens
C - - - - - 0x0268EB 09:A8DB: C9 03     CMP #$03
C - - - - - 0x0268ED 09:A8DD: D0 0F     BNE bra_A8EE_RTS
C - - - - - 0x0268EF 09:A8DF: AD 73 06  LDA ram_game_time_ones
C - - - - - 0x0268F2 09:A8E2: D0 0A     BNE bra_A8EE_RTS
bra_A8E4:
C - - - - - 0x0268F4 09:A8E4: AD 36 05  LDA ram_0536
C - - - - - 0x0268F7 09:A8E7: C9 06     CMP #$06
C - - - - - 0x0268F9 09:A8E9: D0 03     BNE bra_A8EE_RTS
bra_A8EB:
C - - - - - 0x0268FB 09:A8EB: FE 30 05  INC ram_0530,X
bra_A8EE_RTS:
C - - - - - 0x0268FE 09:A8EE: 60        RTS



ofs_A8EF_01:
C - - J - - 0x0268FF 09:A8EF: DE 60 05  DEC ram_0560,X
C - - - - - 0x026902 09:A8F2: D0 FA     BNE bra_A8EE_RTS
C - - - - - 0x026904 09:A8F4: A9 13     LDA #$13
C - - - - - 0x026906 09:A8F6: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x026909 09:A8F9: A5 28     LDA ram_random_1
C - - - - - 0x02690B 09:A8FB: 29 01     AND #$01
C - - - - - 0x02690D 09:A8FD: A8        TAY
C - - - - - 0x02690E 09:A8FE: B9 1B A9  LDA tbl_A91B,Y
C - - - - - 0x026911 09:A901: 9D 40 04  STA ram_X_pos_hi_object,X
C - - - - - 0x026914 09:A904: 20 04 DD  JSR sub_0x03DD14
C - - - - - 0x026917 09:A907: A9 C0     LDA #$C0
C - - - - - 0x026919 09:A909: 9D 80 05  STA ram_0580,X
C - - - - - 0x02691C 09:A90C: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x02691F 09:A90F: A9 20     LDA #$20
C - - - - - 0x026921 09:A911: 20 90 F6  JSR sub_0x03F6A0_play_sound
C - - - - - 0x026924 09:A914: A9 38     LDA #$38
C - - - - - 0x026926 09:A916: 9D 10 04  STA ram_Y_pos_hi_object,X
C - - - - - 0x026929 09:A919: D0 D0     BNE bra_A8EB



tbl_A91B:
- D 1 - - - 0x02692B 09:A91B: 10        .byte $10   ; 00
- D 1 - - - 0x02692C 09:A91C: F0        .byte $F0   ; 01



ofs_A91D_02:
C - - J - - 0x02692D 09:A91D: AD 36 05  LDA ram_0536
C - - - - - 0x026930 09:A920: C9 06     CMP #$06
C - - - - - 0x026932 09:A922: D0 63     BNE bra_A987
C - - - - - 0x026934 09:A924: 20 38 A9  JSR sub_A938
C - - - - - 0x026937 09:A927: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x02693A 09:A92A: 29 FC     AND #$FC
C - - - - - 0x02693C 09:A92C: C9 80     CMP #$80
C - - - - - 0x02693E 09:A92E: D0 5F     BNE bra_A98F_RTS
C - - - - - 0x026940 09:A930: FE 30 05  INC ram_0530,X
C - - - - - 0x026943 09:A933: A9 30     LDA #$30
C - - - - - 0x026945 09:A935: 9D 60 05  STA ram_0560,X
sub_A938:
C - - - - - 0x026948 09:A938: 20 65 DB  JSR sub_0x03DB75
sub_A93B:
C - - - - - 0x02694B 09:A93B: A9 42     LDA #$42
C - - - - - 0x02694D 09:A93D: A0 04     LDY #$04
C - - - - - 0x02694F 09:A93F: 20 0D DF  JSR sub_0x03DF1D
C - - - - - 0x026952 09:A942: 4C 4C DB  JMP loc_0x03DB5C



ofs_A945_03:
C - - J - - 0x026955 09:A945: 20 3B A9  JSR sub_A93B
C - - - - - 0x026958 09:A948: DE 60 05  DEC ram_0560,X
C - - - - - 0x02695B 09:A94B: F0 10     BEQ bra_A95D
C - - - - - 0x02695D 09:A94D: BD 60 05  LDA ram_0560,X
C - - - - - 0x026960 09:A950: C9 18     CMP #$18
C - - - - - 0x026962 09:A952: B0 3B     BCS bra_A98F_RTS
C - - - - - 0x026964 09:A954: 29 06     AND #$06
C - - - - - 0x026966 09:A956: 4A        LSR
C - - - - - 0x026967 09:A957: 09 80     ORA #$80
C - - - - - 0x026969 09:A959: 9D 00 05  STA ram_0500,X
C - - - - - 0x02696C 09:A95C: 60        RTS
bra_A95D:
C - - - - - 0x02696D 09:A95D: A9 60     LDA #$60
C - - - - - 0x02696F 09:A95F: 9D 60 05  STA ram_0560,X
C - - - - - 0x026972 09:A962: FE 30 05  INC ram_0530,X
C - - - - - 0x026975 09:A965: A9 00     LDA #$00
C - - - - - 0x026977 09:A967: 8D 36 05  STA ram_0536
C - - - - - 0x02697A 09:A96A: 8D 36 04  STA ram_X_pos_max_object + 6
C - - - - - 0x02697D 09:A96D: 9D 00 05  STA ram_0500,X
C - - - - - 0x026980 09:A970: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x026983 09:A973: 69 20     ADC #$20
C - - - - - 0x026985 09:A975: 8D 16 04  STA ram_0416
ofs_A978_04:
C - - - - - 0x026988 09:A978: 20 38 A9  JSR sub_A938
C - - - - - 0x02698B 09:A97B: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x02698E 09:A97E: 10 03     BPL bra_A983
C - - - - - 0x026990 09:A980: 20 FC D1  JSR sub_0x03D20C_reverse_byte
bra_A983:
C - - - - - 0x026993 09:A983: C9 16     CMP #$16
C - - - - - 0x026995 09:A985: B0 08     BCS bra_A98F_RTS
bra_A987:
loc_A987:
C D 1 - - - 0x026997 09:A987: A9 00     LDA #$00
C - - - - - 0x026999 09:A989: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x02699C 09:A98C: 9D 30 05  STA ram_0530,X
bra_A98F_RTS:
C - - - - - 0x02699F 09:A98F: 60        RTS



.export sub_0x0269A1
sub_0x0269A1:
C - - - - - 0x0269A1 09:A991: 86 0B     STX ram_000B
C - - - - - 0x0269A3 09:A993: 20 9D A9  JSR sub_A99D
C - - - - - 0x0269A6 09:A996: 18        CLC
C - - - - - 0x0269A7 09:A997: 18        CLC
C - - - - - 0x0269A8 09:A998: A5 0B     LDA ram_000B
C - - - - - 0x0269AA 09:A99A: 69 08     ADC #$08
C - - - - - 0x0269AC 09:A99C: AA        TAX
sub_A99D:
C - - - - - 0x0269AD 09:A99D: 86 A8     STX ram_00A8
C - - - - - 0x0269AF 09:A99F: 8A        TXA
C - - - - - 0x0269B0 09:A9A0: 29 01     AND #$01
C - - - - - 0x0269B2 09:A9A2: 85 AC     STA ram_00AC
C - - - - - 0x0269B4 09:A9A4: AA        TAX
C - - - - - 0x0269B5 09:A9A5: C5 A8     CMP ram_00A8
C - - - - - 0x0269B7 09:A9A7: D0 07     BNE bra_A9B0
C - - - - - 0x0269B9 09:A9A9: A9 00     LDA #$00
C - - - - - 0x0269BB 09:A9AB: 9D 1E 06  STA ram_061E,X
C - - - - - 0x0269BE 09:A9AE: F0 07     BEQ bra_A9B7
bra_A9B0:
C - - - - - 0x0269C0 09:A9B0: A6 A8     LDX ram_00A8
C - - - - - 0x0269C2 09:A9B2: BD 50 05  LDA ram_id_object,X
C - - - - - 0x0269C5 09:A9B5: F0 D9     BEQ bra_A9F1_RTS
bra_A9B7:
C - - - - - 0x0269C7 09:A9B7: A6 AC     LDX ram_00AC
C - - - - - 0x0269C9 09:A9B9: BD F0 05  LDA ram_05F0,X
C - - - - - 0x0269CC 09:A9BC: D0 D2     BNE bra_A9F1_RTS
C - - - - - 0x0269CE 09:A9BE: BD 80 05  LDA ram_0580,X
C - - - - - 0x0269D1 09:A9C1: 30 CD     BMI bra_A9F1_RTS
C - - - - - 0x0269D3 09:A9C3: BD 20 05  LDA ram_0520,X
C - - - - - 0x0269D6 09:A9C6: C9 03     CMP #$03
C - - - - - 0x0269D8 09:A9C8: F0 C6     BEQ bra_A9F1_RTS
C - - - - - 0x0269DA 09:A9CA: A6 A8     LDX ram_00A8
C - - - - - 0x0269DC 09:A9CC: BC 70 05  LDY ram_0570,X
C - - - - - 0x0269DF 09:A9CF: F0 BF     BEQ bra_A9F1_RTS
C - - - - - 0x0269E1 09:A9D1: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x0269E4 09:A9D4: 85 00     STA ram_0000
C - - - - - 0x0269E6 09:A9D6: 85 0E     STA ram_000E
C - - - - - 0x0269E8 09:A9D8: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x0269EB 09:A9DB: 38        SEC
C - - - - - 0x0269EC 09:A9DC: F9 6E AD  SBC tbl_AD6E,Y
C - - - - - 0x0269EF 09:A9DF: 85 01     STA ram_0001
C - - - - - 0x0269F1 09:A9E1: B9 4C AD  LDA tbl_AD4C,Y
C - - - - - 0x0269F4 09:A9E4: 85 05     STA ram_0005
C - - - - - 0x0269F6 09:A9E6: B9 6E AD  LDA tbl_AD6E,Y
C - - - - - 0x0269F9 09:A9E9: 85 06     STA ram_0006
C - - - - - 0x0269FB 09:A9EB: A9 A5     LDA #> ofs_0x02E5E9
C - - - - - 0x0269FD 09:A9ED: 48        PHA
C - - - - - 0x0269FE 09:A9EE: A9 D8     LDA #< ofs_0x02E5E9
C - - - - - 0x026A00 09:A9F0: 48        PHA
C - - - - - 0x026A01 09:A9F1: 4C E7 F5  JMP loc_0x03F5F7_prg_bank_0B
bra_A9F1_RTS:
                                        RTS



ofs_A9F5:
.export ofs_0x026A05
ofs_0x026A05 = ofs_A9F5 - 1
bra_A9F5_loop:
C - - - - - 0x026A05 09:A9F5: A6 AC     LDX ram_00AC
C - - - - - 0x026A07 09:A9F7: BD 80 05  LDA ram_0580,X
C - - - - - 0x026A0A 09:A9FA: 30 94     BPL bra_A9FC
                                        RTS
bra_A9FC:
C - - - - - 0x026A0C 09:A9FC: A4 A9     LDY ram_object_index
C - - - - - 0x026A0E 09:A9FE: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x026A11 09:AA01: F0 58     BEQ bra_AA5B_next_object
C - - - - - 0x026A13 09:AA03: B9 80 05  LDA ram_0580,Y
C - - - - - 0x026A16 09:AA06: 30 53     BMI bra_AA5B_next_object
C - - - - - 0x026A18 09:AA08: B9 20 05  LDA ram_0520,Y
C - - - - - 0x026A1B 09:AA0B: C5 AC     CMP ram_00AC
C - - - - - 0x026A1D 09:AA0D: F0 4C     BEQ bra_AA5B_next_object
C - - - - - 0x026A1F 09:AA0F: 85 09     STA ram_0009
C - - - - - 0x026A21 09:AA11: B9 B0 05  LDA ram_05B0,Y
C - - - - - 0x026A24 09:AA14: F0 45     BEQ bra_AA5B_next_object
C - - - - - 0x026A26 09:AA16: B9 30 04  LDA ram_X_pos_max_object,Y
C - - - - - 0x026A29 09:AA19: D0 40     BNE bra_AA5B_next_object
C - - - - - 0x026A2B 09:AA1B: BE 70 05  LDX ram_0570,Y
C - - - - - 0x026A2E 09:AA1E: F0 3B     BEQ bra_AA5B_next_object
C - - - - - 0x026A30 09:AA20: BD 4C AD  LDA tbl_AD4C,X
C - - - - - 0x026A33 09:AA23: 18        CLC
C - - - - - 0x026A34 09:AA24: 65 05     ADC ram_0005
C - - - - - 0x026A36 09:AA26: 85 02     STA ram_0002
C - - - - - 0x026A38 09:AA28: BD 6E AD  LDA tbl_AD6E,X
C - - - - - 0x026A3B 09:AA2B: 18        CLC
C - - - - - 0x026A3C 09:AA2C: 65 06     ADC ram_0006
C - - - - - 0x026A3E 09:AA2E: 85 03     STA ram_0003
C - - - - - 0x026A40 09:AA30: B9 10 04  LDA ram_Y_pos_hi_object,Y
C - - - - - 0x026A43 09:AA33: 85 04     STA ram_0004
C - - - - - 0x026A45 09:AA35: B9 40 04  LDA ram_X_pos_hi_object,Y
C - - - - - 0x026A48 09:AA38: 85 0D     STA ram_000D
C - - - - - 0x026A4A 09:AA3A: A6 A8     LDX ram_00A8
C - - - - - 0x026A4C 09:AA3C: 38        SEC
C - - - - - 0x026A4D 09:AA3D: A5 00     LDA ram_0000
C - - - - - 0x026A4F 09:AA3F: E5 0D     SBC ram_000D
C - - - - - 0x026A51 09:AA41: B0 03     BCS bra_AA46
C - - - - - 0x026A53 09:AA43: 20 FC D1  JSR sub_0x03D20C_reverse_byte
bra_AA46:
C - - - - - 0x026A56 09:AA46: C5 02     CMP ram_0002
C - - - - - 0x026A58 09:AA48: B0 11     BCS bra_AA5B_next_object
C - - - - - 0x026A5A 09:AA4A: 38        SEC
C - - - - - 0x026A5B 09:AA4B: A5 01     LDA ram_0001
C - - - - - 0x026A5D 09:AA4D: E5 04     SBC ram_0004
C - - - - - 0x026A5F 09:AA4F: B0 03     BCS bra_AA54
C - - - - - 0x026A61 09:AA51: 20 FC D1  JSR sub_0x03D20C_reverse_byte
bra_AA54:
C - - - - - 0x026A64 09:AA54: C5 03     CMP ram_0003
C - - - - - 0x026A66 09:AA56: B0 03     BCS bra_AA5B_next_object
C - - - - - 0x026A68 09:AA58: 4C 70 AA  JMP loc_AA70
bra_AA5B_next_object:
loc_AA5B:
C D 1 - - - 0x026A6B 09:AA5B: E6 A9     INC ram_object_index
C - - - - - 0x026A6D 09:AA5D: E6 A9     INC ram_object_index
C - - - - - 0x026A6F 09:AA5F: A6 A8     LDX ram_00A8
C - - - - - 0x026A71 09:AA61: A4 A9     LDY ram_object_index
C - - - - - 0x026A73 09:AA63: C0 07     CPY #$07
C - - - - - 0x026A75 09:AA65: 90 8E     BCC bra_A9F5_loop
C - - - - - 0x026A77 09:AA67: D0 06     BNE bra_AA6F_RTS
C - - - - - 0x026A79 09:AA69: A0 06     LDY #$06
C - - - - - 0x026A7B 09:AA6B: 84 A9     STY ram_object_index
C - - - - - 0x026A7D 09:AA6D: D0 86     BNE bra_A9F5_loop
bra_AA6F_RTS:
C - - - - - 0x026A7F 09:AA6F: 60        RTS



loc_AA70:
C D 1 - - - 0x026A80 09:AA70: A9 00     LDA #$00
C - - - - - 0x026A82 09:AA72: 8D 04 01  STA ram_0104
C - - - - - 0x026A85 09:AA75: A6 AC     LDX ram_00AC
C - - - - - 0x026A87 09:AA77: C0 06     CPY #$06
C - - - - - 0x026A89 09:AA79: F0 24     BEQ bra_AA9F
C - - - - - 0x026A8B 09:AA7B: B9 80 05  LDA ram_0580,Y
C - - - - - 0x026A8E 09:AA7E: 0A        ASL
C - - - - - 0x026A8F 09:AA7F: 30 23     BMI bra_AAA4
C - - - - - 0x026A91 09:AA81: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x026A94 09:AA84: C9 B0     CMP #$B0
C - - - - - 0x026A96 09:AA86: 90 1C     BCC bra_AAA4
C - - - - - 0x026A98 09:AA88: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x026A9B 09:AA8B: C9 E7     CMP #$E7
C - - - - - 0x026A9D 09:AA8D: B0 07     BCS bra_AA96
C - - - - - 0x026A9F 09:AA8F: C9 19     CMP #$19
C - - - - - 0x026AA1 09:AA91: 90 03     BCC bra_AA96
C - - - - - 0x026AA3 09:AA93: A9 03     LDA #$03
C - - - - - 0x026AA5 09:AA95: 2C        .byte $2C
bra_AA96:
C - - - - - 0x026AA6 09:AA96: A9 05     LDA #$05
C - - - - - 0x026AA8 09:AA98: A4 09     LDY ram_0009
C - - - - - 0x026AAA 09:AA9A: 99 36 06  STA ram_0636,Y
C - - - - - 0x026AAD 09:AA9D: 10 05     BPL bra_AAA4
bra_AA9F:
C - - - - - 0x026AAF 09:AA9F: A9 80     LDA #$80
C - - - - - 0x026AB1 09:AAA1: 8D 86 05  STA ram_0586
bra_AAA4:
C - - - - - 0x026AB4 09:AAA4: A9 0A     LDA #$0A
C - - - - - 0x026AB6 09:AAA6: 85 AA     STA ram_00AA
C - - - - - 0x026AB8 09:AAA8: A4 A9     LDY ram_object_index
C - - - - - 0x026ABA 09:AAAA: A6 A8     LDX ram_00A8
C - - - - - 0x026ABC 09:AAAC: B9 B0 05  LDA ram_05B0,Y
C - - - - - 0x026ABF 09:AAAF: 85 08     STA ram_0008
C - - - - - 0x026AC1 09:AAB1: E0 08     CPX #$08
C - - - - - 0x026AC3 09:AAB3: 90 03     BCC bra_AAB8
C - - - - - 0x026AC5 09:AAB5: 4C 6A AB  JMP loc_AB6A
bra_AAB8:
C - - - - - 0x026AC8 09:AAB8: A9 01     LDA #$01
C - - - - - 0x026ACA 09:AABA: 9D 1E 06  STA ram_061E,X
C - - - - - 0x026ACD 09:AABD: 99 F0 05  STA ram_05F0,Y
C - - - - - 0x026AD0 09:AAC0: BD 10 06  LDA ram_0610,X
C - - - - - 0x026AD3 09:AAC3: 10 03     BPL bra_AAC8
C - - - - - 0x026AD5 09:AAC5: 4C 84 AB  JMP loc_AB84
bra_AAC8:
C - - - - - 0x026AD8 09:AAC8: BD 20 05  LDA ram_0520,X
C - - - - - 0x026ADB 09:AACB: F0 04     BEQ bra_AAD1
C - - - - - 0x026ADD 09:AACD: C9 07     CMP #$07
C - - - - - 0x026ADF 09:AACF: D0 1A     BNE bra_AAEB
bra_AAD1:
C - - - - - 0x026AE1 09:AAD1: A4 09     LDY ram_0009
C - - - - - 0x026AE3 09:AAD3: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x026AE6 09:AAD6: D9 40 04  CMP ram_X_pos_hi_object,Y
C - - - - - 0x026AE9 09:AAD9: A9 01     LDA #$01
C - - - - - 0x026AEB 09:AADB: B0 02     BCS bra_AADF
C - - - - - 0x026AED 09:AADD: A9 02     LDA #$02
bra_AADF:
C - - - - - 0x026AEF 09:AADF: 85 09     STA ram_0009
C - - - - - 0x026AF1 09:AAE1: A4 A9     LDY ram_object_index
C - - - - - 0x026AF3 09:AAE3: B5 91     LDA ram_btn_hold,X
C - - - - - 0x026AF5 09:AAE5: 29 03     AND #con_btns_LR
C - - - - - 0x026AF7 09:AAE7: C5 09     CMP ram_0009
C - - - - - 0x026AF9 09:AAE9: F0 03     BEQ bra_AAEE
bra_AAEB:
C - - - - - 0x026AFB 09:AAEB: 4C 84 AB  JMP loc_AB84
bra_AAEE:
C - - - - - 0x026AFE 09:AAEE: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x026B01 09:AAF1: C9 2F     CMP #$2F
C - - - - - 0x026B03 09:AAF3: F0 27     BEQ bra_AB1C
C - - - - - 0x026B05 09:AAF5: C9 38     CMP #$38
C - - - - - 0x026B07 09:AAF7: F0 23     BEQ bra_AB1C
C - - - - - 0x026B09 09:AAF9: BD 20 05  LDA ram_0520,X
C - - - - - 0x026B0C 09:AAFC: C9 07     CMP #$07
C - - - - - 0x026B0E 09:AAFE: D0 15     BNE bra_AB15
C - - - - - 0x026B10 09:AB00: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x026B13 09:AB03: C9 04     CMP #$04
C - - - - - 0x026B15 09:AB05: F0 7D     BEQ bra_AB84
C - - - - - 0x026B17 09:AB07: C9 17     CMP #$17
C - - - - - 0x026B19 09:AB09: F0 79     BEQ bra_AB84
C - - - - - 0x026B1B 09:AB0B: C9 1F     CMP #$1F
C - - - - - 0x026B1D 09:AB0D: F0 75     BEQ bra_AB84
C - - - - - 0x026B1F 09:AB0F: C9 2C     CMP #$2C
C - - - - - 0x026B21 09:AB11: F0 71     BEQ bra_AB84
C - - - - - 0x026B23 09:AB13: D0 07     BNE bra_AB1C
bra_AB15:
C - - - - - 0x026B25 09:AB15: B9 10 04  LDA ram_Y_pos_hi_object,Y
C - - - - - 0x026B28 09:AB18: C9 9C     CMP #$9C
C - - - - - 0x026B2A 09:AB1A: B0 68     BCS bra_AB84
bra_AB1C:
C - - - - - 0x026B2C 09:AB1C: A9 80     LDA #$80
C - - - - - 0x026B2E 09:AB1E: 1D 1E 06  ORA ram_061E,X
C - - - - - 0x026B31 09:AB21: 9D 1E 06  STA ram_061E,X
C - - - - - 0x026B34 09:AB24: B9 E0 04  LDA ram_04E0,Y
C - - - - - 0x026B37 09:AB27: D0 17     BNE bra_AB40_RTS
C - - - - - 0x026B39 09:AB29: C0 04     CPY #$04
C - - - - - 0x026B3B 09:AB2B: B0 1B     BCS bra_AB48
C - - - - - 0x026B3D 09:AB2D: 20 0E AC  JSR sub_AC0E
C - - - - - 0x026B40 09:AB30: A9 08     LDA #$08
C - - - - - 0x026B42 09:AB32: 99 E0 04  STA ram_04E0,Y
C - - - - - 0x026B45 09:AB35: 20 94 F6  JSR sub_0x03F6A4_play_sound
C - - - - - 0x026B48 09:AB38: 20 E3 AC  JSR sub_ACE3
C - - - - - 0x026B4B 09:AB3B: A9 03     LDA #$03
C - - - - - 0x026B4D 09:AB3D: 4C F8 AB  JMP loc_ABF8
bra_AB40_RTS:
C - - - - - 0x026B50 09:AB40: 60        RTS
bra_AB41:
C - - - - - 0x026B51 09:AB41: A9 00     LDA #$00
C - - - - - 0x026B53 09:AB43: 85 AA     STA ram_00AA
C - - - - - 0x026B55 09:AB45: 4C 5B AA  JMP loc_AA5B
bra_AB48:
C - - - - - 0x026B58 09:AB48: A9 82     LDA #$82
C - - - - - 0x026B5A 09:AB4A: 85 08     STA ram_0008
C - - - - - 0x026B5C 09:AB4C: 8D 04 01  STA ram_0104
C - - - - - 0x026B5F 09:AB4F: A9 0D     LDA #$0D
C - - - - - 0x026B61 09:AB51: 20 24 AC  JSR sub_AC24
C - - - - - 0x026B64 09:AB54: A9 06     LDA #$06
C - - - - - 0x026B66 09:AB56: 20 F8 AB  JSR sub_ABF8
C - - - - - 0x026B69 09:AB59: A0 07     LDY #$07
C - - - - - 0x026B6B 09:AB5B: BD 20 05  LDA ram_0520,X
C - - - - - 0x026B6E 09:AB5E: C9 03     CMP #$03
C - - - - - 0x026B70 09:AB60: F0 DE     BEQ bra_AB40_RTS
- - - - - - 0x026B72 09:AB62: C9 07     CMP #$07
- - - - - - 0x026B74 09:AB64: D0 01     BNE bra_AB67
- - - - - - 0x026B76 09:AB66: C8        INY
bra_AB67:
- - - - - - 0x026B77 09:AB67: 4C E7 8A  JMP loc_8AE7



loc_AB6A:
C D 1 - - - 0x026B7A 09:AB6A: B9 90 05  LDA ram_hp_lo,Y
C - - - - - 0x026B7D 09:AB6D: DD 90 05  CMP ram_hp_lo,X
C - - - - - 0x026B80 09:AB70: 90 CF     BCC bra_AB41
C - - - - - 0x026B82 09:AB72: D0 08     BNE bra_AB7C
C - - - - - 0x026B84 09:AB74: BD F0 04  LDA ram_04F0,X
C - - - - - 0x026B87 09:AB77: D9 F0 04  CMP ram_04F0,Y
C - - - - - 0x026B8A 09:AB7A: 90 C5     BCC bra_AB41
bra_AB7C:
C - - - - - 0x026B8C 09:AB7C: A9 01     LDA #$01
C - - - - - 0x026B8E 09:AB7E: 9D 1E 06  STA ram_061E,X
C - - - - - 0x026B91 09:AB81: 99 F0 05  STA ram_05F0,Y
bra_AB84:
loc_AB84:
C D 1 - - - 0x026B94 09:AB84: A6 AC     LDX ram_00AC
C - - - - - 0x026B96 09:AB86: B9 B0 05  LDA ram_05B0,Y
C - - - - - 0x026B99 09:AB89: 9D E0 04  STA ram_04E0,X
C - - - - - 0x026B9C 09:AB8C: A9 00     LDA #$00
C - - - - - 0x026B9E 09:AB8E: 9D 0C 04  STA ram_anim_special,X
C - - - - - 0x026BA1 09:AB91: 20 88 B0  JSR sub_B088
C - - - - - 0x026BA4 09:AB94: A6 AC     LDX ram_00AC
C - - - - - 0x026BA6 09:AB96: A0 12     LDY #$12
C - - - - - 0x026BA8 09:AB98: 20 E7 8A  JSR sub_8AE7
C - - - - - 0x026BAB 09:AB9B: 20 0E AC  JSR sub_AC0E
C - - - - - 0x026BAE 09:AB9E: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x026BB1 09:ABA1: 29 7F     AND #$7F
C - - - - - 0x026BB3 09:ABA3: A8        TAY
C - - - - - 0x026BB4 09:ABA4: B9 BC AF  LDA tbl_AFBC,Y
C - - - - - 0x026BB7 09:ABA7: 20 1D AC  JSR sub_AC1D
C - - - - - 0x026BBA 09:ABAA: A6 AC     LDX ram_00AC
C - - - - - 0x026BBC 09:ABAC: A4 A9     LDY ram_object_index
C - - - - - 0x026BBE 09:ABAE: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x026BC1 09:ABB1: A8        TAY
C - - - - - 0x026BC2 09:ABB2: 08        PHP
C - - - - - 0x026BC3 09:ABB3: A9 07     LDA #$07
C - - - - - 0x026BC5 09:ABB5: 28        PLP
C - - - - - 0x026BC6 09:ABB6: 30 40     BMI bra_ABF8
C - - - - - 0x026BC8 09:ABB8: A9 04     LDA #$04
C - - - - - 0x026BCA 09:ABBA: C0 2F     CPY #$2F
C - - - - - 0x026BCC 09:ABBC: F0 3A     BEQ bra_ABF8
C - - - - - 0x026BCE 09:ABBE: 90 14     BCC bra_ABD4
C - - - - - 0x026BD0 09:ABC0: C0 36     CPY #$36
C - - - - - 0x026BD2 09:ABC2: F0 08     BEQ bra_ABCC
C - - - - - 0x026BD4 09:ABC4: C0 39     CPY #$39
C - - - - - 0x026BD6 09:ABC6: F0 08     BEQ bra_ABD0
C - - - - - 0x026BD8 09:ABC8: A9 0A     LDA #$0A
C - - - - - 0x026BDA 09:ABCA: 85 AA     STA ram_00AA
bra_ABCC:
C - - - - - 0x026BDC 09:ABCC: A9 05     LDA #$05
C - - - - - 0x026BDE 09:ABCE: D0 28     BNE bra_ABF8
bra_ABD0:
C - - - - - 0x026BE0 09:ABD0: A9 08     LDA #$08
C - - - - - 0x026BE2 09:ABD2: D0 24     BNE bra_ABF8
bra_ABD4:
C - - - - - 0x026BE4 09:ABD4: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x026BE7 09:ABD7: C9 B0     CMP #$B0
C - - - - - 0x026BE9 09:ABD9: A9 01     LDA #$01
C - - - - - 0x026BEB 09:ABDB: 90 1B     BCC bra_ABF8
C - - - - - 0x026BED 09:ABDD: BD 20 05  LDA ram_0520,X
C - - - - - 0x026BF0 09:ABE0: D0 10     BNE bra_ABF2
C - - - - - 0x026BF2 09:ABE2: A4 A9     LDY ram_object_index
C - - - - - 0x026BF4 09:ABE4: B9 10 04  LDA ram_Y_pos_hi_object,Y
C - - - - - 0x026BF7 09:ABE7: C9 9C     CMP #$9C
C - - - - - 0x026BF9 09:ABE9: A0 14     LDY #$14
C - - - - - 0x026BFB 09:ABEB: B0 02     BCS bra_ABEF
C - - - - - 0x026BFD 09:ABED: A0 13     LDY #$13
bra_ABEF:
C - - - - - 0x026BFF 09:ABEF: 20 E7 8A  JSR sub_8AE7
bra_ABF2:
C - - - - - 0x026C02 09:ABF2: BC 20 05  LDY ram_0520,X
C - - - - - 0x026C05 09:ABF5: B9 38 AD  LDA tbl_AD38,Y
bra_ABF8:
loc_ABF8:
sub_ABF8:
C D 1 - - - 0x026C08 09:ABF8: A6 AC     LDX ram_00AC
C - - - - - 0x026C0A 09:ABFA: 9D C0 04  STA ram_04C0,X
C - - - - - 0x026C0D 09:ABFD: A9 03     LDA #$03
loc_ABFF:
C D 1 - - - 0x026C0F 09:ABFF: 9D 20 05  STA ram_0520,X
C - - - - - 0x026C12 09:AC02: A9 00     LDA #$00
C - - - - - 0x026C14 09:AC04: 9D 40 05  STA ram_0540,X
C - - - - - 0x026C17 09:AC07: 9D 0C 04  STA ram_anim_special,X
C - - - - - 0x026C1A 09:AC0A: 9D 04 04  STA ram_0404,X
C - - - - - 0x026C1D 09:AC0D: 60        RTS



sub_AC0E:
C - - - - - 0x026C1E 09:AC0E: A4 A9     LDY ram_object_index
C - - - - - 0x026C20 09:AC10: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x026C23 09:AC13: C9 2F     CMP #$2F
C - - - - - 0x026C25 09:AC15: B0 05     BCS bra_AC1C_RTS
C - - - - - 0x026C27 09:AC17: A9 00     LDA #$00
C - - - - - 0x026C29 09:AC19: 99 B0 05  STA ram_05B0,Y
bra_AC1C_RTS:
C - - - - - 0x026C2C 09:AC1C: 60        RTS



sub_AC1D:
C - - - - - 0x026C2D 09:AC1D: 20 94 F6  JSR sub_0x03F6A4_play_sound
C - - - - - 0x026C30 09:AC20: A9 80     LDA #$80
C - - - - - 0x026C32 09:AC22: D0 05     BNE bra_AC29



sub_AC24:
C - - - - - 0x026C34 09:AC24: 20 94 F6  JSR sub_0x03F6A4_play_sound
C - - - - - 0x026C37 09:AC27: A9 00     LDA #$00
bra_AC29:
C - - - - - 0x026C39 09:AC29: 85 10     STA ram_0010
C - - - - - 0x026C3B 09:AC2B: A6 AC     LDX ram_00AC
C - - - - - 0x026C3D 09:AC2D: 20 E6 AC  JSR sub_ACE6
C - - - - - 0x026C40 09:AC30: A9 00     LDA #$00
C - - - - - 0x026C42 09:AC32: 9D C0 05  STA ram_05C0,X
C - - - - - 0x026C45 09:AC35: 9D D0 05  STA ram_05D0,X
C - - - - - 0x026C48 09:AC38: 9D 10 06  STA ram_0610,X
C - - - - - 0x026C4B 09:AC3B: 85 19     STA ram_0019
C - - - - - 0x026C4D 09:AC3D: A5 08     LDA ram_0008
C - - - - - 0x026C4F 09:AC3F: 10 09     BPL bra_AC4A
C - - - - - 0x026C51 09:AC41: 0A        ASL
C - - - - - 0x026C52 09:AC42: 4A        LSR
C - - - - - 0x026C53 09:AC43: 85 08     STA ram_0008
C - - - - - 0x026C55 09:AC45: 85 18     STA ram_0018
C - - - - - 0x026C57 09:AC47: 4C 4D AC  JMP loc_AC4D
bra_AC4A:
C - - - - - 0x026C5A 09:AC4A: 20 3C DE  JSR sub_0x03DE4C
loc_AC4D:
C D 1 - - - 0x026C5D 09:AC4D: 18        CLC
C - - - - - 0x026C5E 09:AC4E: 7D 45 06  ADC ram_0645,X
C - - - - - 0x026C61 09:AC51: 9D 45 06  STA ram_0645,X
C - - - - - 0x026C64 09:AC54: A9 20     LDA #$20
C - - - - - 0x026C66 09:AC56: 9D F0 05  STA ram_05F0,X
C - - - - - 0x026C69 09:AC59: BD 90 05  LDA ram_hp_lo,X
C - - - - - 0x026C6C 09:AC5C: 18        CLC
C - - - - - 0x026C6D 09:AC5D: FD 45 06  SBC ram_0645,X
C - - - - - 0x026C70 09:AC60: 90 5E     BCC bra_ACC0
C - - - - - 0x026C72 09:AC62: A4 A9     LDY ram_object_index
C - - - - - 0x026C74 09:AC64: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x026C77 09:AC67: A8        TAY
C - - - - - 0x026C78 09:AC68: A5 10     LDA ram_0010
C - - - - - 0x026C7A 09:AC6A: 10 04     BPL bra_AC70
C - - - - - 0x026C7C 09:AC6C: C0 36     CPY #$36
C - - - - - 0x026C7E 09:AC6E: F0 27     BEQ bra_AC97
bra_AC70:
C - - - - - 0x026C80 09:AC70: A9 42     LDA #$42
C - - - - - 0x026C82 09:AC72: 9D 2A 06  STA ram_knockout_cooldown,X
C - - - - - 0x026C85 09:AC75: AD B6 05  LDA ram_05B6
C - - - - - 0x026C88 09:AC78: 4A        LSR
C - - - - - 0x026C89 09:AC79: 4A        LSR
C - - - - - 0x026C8A 09:AC7A: C0 80     CPY #$80
C - - - - - 0x026C8C 09:AC7C: F0 03     BEQ bra_AC81
C - - - - - 0x026C8E 09:AC7E: 20 BC EF  JSR sub_0x03EFCC
bra_AC81:
C - - - - - 0x026C91 09:AC81: 18        CLC
C - - - - - 0x026C92 09:AC82: 7D 2C 06  ADC ram_knockout_hits,X
C - - - - - 0x026C95 09:AC85: BC 50 05  LDY ram_id_fighter,X
C - - - - - 0x026C98 09:AC88: D9 45 AD  CMP tbl_AD45_max_hits,Y
C - - - - - 0x026C9B 09:AC8B: 90 06     BCC bra_AC93
C - - - - - 0x026C9D 09:AC8D: 0E 04 01  ASL ram_0104
C - - - - - 0x026CA0 09:AC90: 90 18     BCC bra_ACAA
bra_AC93:
C - - - - - 0x026CA3 09:AC93: 9D 2C 06  STA ram_knockout_hits,X
bra_AC96_RTS:
C - - - - - 0x026CA6 09:AC96: 60        RTS
bra_AC97:
C - - - - - 0x026CA7 09:AC97: 68        PLA
C - - - - - 0x026CA8 09:AC98: 68        PLA
C - - - - - 0x026CA9 09:AC99: A6 AC     LDX ram_00AC
C - - - - - 0x026CAB 09:AC9B: A9 10     LDA #$10
C - - - - - 0x026CAD 09:AC9D: 9D F0 05  STA ram_05F0,X
C - - - - - 0x026CB0 09:ACA0: A9 0B     LDA #$0B
C - - - - - 0x026CB2 09:ACA2: DD 20 05  CMP ram_0520,X
C - - - - - 0x026CB5 09:ACA5: F0 EF     BEQ bra_AC96_RTS
C - - - - - 0x026CB7 09:ACA7: 4C FF AB  JMP loc_ABFF
bra_ACAA:
C - - - - - 0x026CBA 09:ACAA: 68        PLA
C - - - - - 0x026CBB 09:ACAB: 68        PLA
C - - - - - 0x026CBC 09:ACAC: A9 11     LDA #$11
C - - - - - 0x026CBE 09:ACAE: 20 94 F6  JSR sub_0x03F6A4_play_sound
C - - - - - 0x026CC1 09:ACB1: A6 AC     LDX ram_00AC
C - - - - - 0x026CC3 09:ACB3: A9 00     LDA #$00
C - - - - - 0x026CC5 09:ACB5: 9D 2C 06  STA ram_knockout_hits,X
C - - - - - 0x026CC8 09:ACB8: 9D 2A 06  STA ram_knockout_cooldown,X
C - - - - - 0x026CCB 09:ACBB: A9 04     LDA #$04
C - - - - - 0x026CCD 09:ACBD: 4C FF AB  JMP loc_ABFF
bra_ACC0:
C - - - - - 0x026CD0 09:ACC0: 68        PLA
C - - - - - 0x026CD1 09:ACC1: 68        PLA
C - - - - - 0x026CD2 09:ACC2: A6 AC     LDX ram_00AC
C - - - - - 0x026CD4 09:ACC4: 20 20 DE  JSR sub_0x03DE30
C - - - - - 0x026CD7 09:ACC7: A9 04     LDA #$04
C - - - - - 0x026CD9 09:ACC9: 9D 30 05  STA ram_0530,X
C - - - - - 0x026CDC 09:ACCC: A9 80     LDA #$80
C - - - - - 0x026CDE 09:ACCE: 9D 80 05  STA ram_0580,X
C - - - - - 0x026CE1 09:ACD1: 0A        ASL
C - - - - - 0x026CE2 09:ACD2: 9D 20 05  STA ram_0520,X
C - - - - - 0x026CE5 09:ACD5: 9D 40 05  STA ram_0540,X
C - - - - - 0x026CE8 09:ACD8: 8A        TXA
C - - - - - 0x026CE9 09:ACD9: 49 01     EOR #$01
C - - - - - 0x026CEB 09:ACDB: 8D 71 06  STA ram_0671
C - - - - - 0x026CEE 09:ACDE: A9 23     LDA #$23
C - - - - - 0x026CF0 09:ACE0: 4C 8B F6  JMP loc_0x03F69B_play_sound



sub_ACE3:
C - - - - - 0x026CF3 09:ACE3: A9 02     LDA #$02
C - - - - - 0x026CF5 09:ACE5: 2C        .byte $2C
sub_ACE6:
C - - - - - 0x026CF6 09:ACE6: A9 01     LDA #$01
C - - - - - 0x026CF8 09:ACE8: 85 0C     STA ram_000C
C - - - - - 0x026CFA 09:ACEA: A4 A9     LDY ram_object_index
C - - - - - 0x026CFC 09:ACEC: 8A        TXA
C - - - - - 0x026CFD 09:ACED: 48        PHA
C - - - - - 0x026CFE 09:ACEE: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x026D01 09:ACF1: C9 2F     CMP #$2F
C - - - - - 0x026D03 09:ACF3: F0 3E     BEQ bra_AD33
C - - - - - 0x026D05 09:ACF5: C9 30     CMP #$30
C - - - - - 0x026D07 09:ACF7: F0 3A     BEQ bra_AD33
C - - - - - 0x026D09 09:ACF9: C9 39     CMP #$39
C - - - - - 0x026D0B 09:ACFB: F0 36     BEQ bra_AD33
C - - - - - 0x026D0D 09:ACFD: A5 A9     LDA ram_object_index
C - - - - - 0x026D0F 09:ACFF: AA        TAX
C - - - - - 0x026D10 09:AD00: 29 01     AND #$01
C - - - - - 0x026D12 09:AD02: 18        CLC
C - - - - - 0x026D13 09:AD03: 69 0A     ADC #$0A
C - - - - - 0x026D15 09:AD05: A8        TAY
C - - - - - 0x026D16 09:AD06: 20 C7 DA  JSR sub_0x03DAD7
C - - - - - 0x026D19 09:AD09: A5 0C     LDA ram_000C
C - - - - - 0x026D1B 09:AD0B: 99 50 05  STA ram_id_object,Y
C - - - - - 0x026D1E 09:AD0E: BD 50 05  LDA ram_id_object,X
C - - - - - 0x026D21 09:AD11: C9 35     CMP #$35
C - - - - - 0x026D23 09:AD13: F0 08     BEQ bra_AD1D
C - - - - - 0x026D25 09:AD15: C9 21     CMP #$21
C - - - - - 0x026D27 09:AD17: F0 04     BEQ bra_AD1D
C - - - - - 0x026D29 09:AD19: C9 32     CMP #$32
C - - - - - 0x026D2B 09:AD1B: D0 13     BNE bra_AD30
bra_AD1D:
C - - - - - 0x026D2D 09:AD1D: A5 0E     LDA ram_000E
C - - - - - 0x026D2F 09:AD1F: 65 0D     ADC ram_000D
C - - - - - 0x026D31 09:AD21: 6A        ROR
C - - - - - 0x026D32 09:AD22: 99 40 04  STA ram_X_pos_hi_object,Y
C - - - - - 0x026D35 09:AD25: A5 01     LDA ram_0001
C - - - - - 0x026D37 09:AD27: 65 04     ADC ram_0004
C - - - - - 0x026D39 09:AD29: 6A        ROR
C - - - - - 0x026D3A 09:AD2A: 99 10 04  STA ram_Y_pos_hi_object,Y
C - - - - - 0x026D3D 09:AD2D: 4C 33 AD  JMP loc_AD33
bra_AD30:
C - - - - - 0x026D40 09:AD30: 20 B5 DB  JSR sub_0x03DBC5
bra_AD33:
loc_AD33:
C D 1 - - - 0x026D43 09:AD33: A4 A9     LDY ram_object_index
C - - - - - 0x026D45 09:AD35: 68        PLA
C - - - - - 0x026D46 09:AD36: AA        TAX
C - - - - - 0x026D47 09:AD37: 60        RTS



tbl_AD38:
- D 1 - - - 0x026D48 09:AD38: 00        .byte $00   ; 00
- D 1 - - - 0x026D49 09:AD39: 01        .byte $01   ; 01
- D 1 - - - 0x026D4A 09:AD3A: 02        .byte $02   ; 02
- - - - - - 0x026D4B 09:AD3B: 00        .byte $00   ; 03
- D 1 - - - 0x026D4C 09:AD3C: 00        .byte $00   ; 04
- D 1 - - - 0x026D4D 09:AD3D: 00        .byte $00   ; 05
- D 1 - - - 0x026D4E 09:AD3E: 00        .byte $00   ; 06
- D 1 - - - 0x026D4F 09:AD3F: 02        .byte $02   ; 07
- D 1 - - - 0x026D50 09:AD40: 00        .byte $00   ; 08
- D 1 - - - 0x026D51 09:AD41: 00        .byte $00   ; 09
- - - - - - 0x026D52 09:AD42: 00        .byte $00   ; 0A
- - - - - - 0x026D53 09:AD43: 00        .byte $00   ; 0B
- - - - - - 0x026D54 09:AD44: 00        .byte $00   ; 0C



tbl_AD45_max_hits:
- D 1 - - - 0x026D55 09:AD45: 26        .byte $26   ; 00 Leo
- D 1 - - - 0x026D56 09:AD46: 26        .byte $26   ; 01 Raph
- D 1 - - - 0x026D57 09:AD47: 26        .byte $26   ; 02 Mike
- D 1 - - - 0x026D58 09:AD48: 26        .byte $26   ; 03 Don
- D 1 - - - 0x026D59 09:AD49: 26        .byte $26   ; 04 Casey
- D 1 - - - 0x026D5A 09:AD4A: 28        .byte $28   ; 05 Hot
- D 1 - - - 0x026D5B 09:AD4B: 2E        .byte $2E   ; 06 Shred



tbl_AD4C:
.export tbl_0x026D5C
tbl_0x026D5C:
- D 1 - - - 0x026D5C 09:AD4C: 00        .byte $00   ; 
- D 1 - - - 0x026D5D 09:AD4D: 0C        .byte $0C   ; 
- D 1 - - - 0x026D5E 09:AD4E: 05        .byte $05   ; 
- D 1 - - - 0x026D5F 09:AD4F: 06        .byte $06   ; 
- D 1 - - - 0x026D60 09:AD50: 05        .byte $05   ; 
- D 1 - - - 0x026D61 09:AD51: 0C        .byte $0C   ; 
- D 1 - - - 0x026D62 09:AD52: 0D        .byte $0D   ; 
- D 1 - - - 0x026D63 09:AD53: 0A        .byte $0A   ; 
- - - - - - 0x026D64 09:AD54: 04        .byte $04   ; 
- D 1 - - - 0x026D65 09:AD55: 13        .byte $13   ; 
- D 1 - - - 0x026D66 09:AD56: 11        .byte $11   ; 
- D 1 - - - 0x026D67 09:AD57: 1E        .byte $1E   ; 
- D 1 - - - 0x026D68 09:AD58: 08        .byte $08   ; 
- D 1 - - - 0x026D69 09:AD59: 12        .byte $12   ; 
- D 1 - - - 0x026D6A 09:AD5A: 06        .byte $06   ; 
- D 1 - - - 0x026D6B 09:AD5B: 0E        .byte $0E   ; 
- - - - - - 0x026D6C 09:AD5C: 05        .byte $05   ; 
- D 1 - - - 0x026D6D 09:AD5D: 0E        .byte $0E   ; 
- - - - - - 0x026D6E 09:AD5E: 14        .byte $14   ; 
- D 1 - - - 0x026D6F 09:AD5F: 16        .byte $16   ; 
- - - - - - 0x026D70 09:AD60: 10        .byte $10   ; 
- D 1 - - - 0x026D71 09:AD61: 18        .byte $18   ; 
- D 1 - - - 0x026D72 09:AD62: 12        .byte $12   ; 
- D 1 - - - 0x026D73 09:AD63: 0A        .byte $0A   ; 
- D 1 - - - 0x026D74 09:AD64: 18        .byte $18   ; 
- D 1 - - - 0x026D75 09:AD65: 20        .byte $20   ; 
- D 1 - - - 0x026D76 09:AD66: 06        .byte $06   ; 
- D 1 - - - 0x026D77 09:AD67: 06        .byte $06   ; 
- D 1 - - - 0x026D78 09:AD68: 19        .byte $19   ; 
- D 1 - - - 0x026D79 09:AD69: 0E        .byte $0E   ; 
- D 1 - - - 0x026D7A 09:AD6A: 0C        .byte $0C   ; 
- D 1 - - - 0x026D7B 09:AD6B: 18        .byte $18   ; 
- D 1 - - - 0x026D7C 09:AD6C: 07        .byte $07   ; 
- D 1 - - - 0x026D7D 09:AD6D: 06        .byte $06   ; 



tbl_AD6E:
- D 1 - - - 0x026D7E 09:AD6E: 00        .byte $00   ; 
- D 1 - - - 0x026D7F 09:AD6F: 18        .byte $18   ; 
- D 1 - - - 0x026D80 09:AD70: 05        .byte $05   ; 
- D 1 - - - 0x026D81 09:AD71: 0A        .byte $0A   ; 
- D 1 - - - 0x026D82 09:AD72: 08        .byte $08   ; 
- D 1 - - - 0x026D83 09:AD73: 16        .byte $16   ; 
- D 1 - - - 0x026D84 09:AD74: 06        .byte $06   ; 
- D 1 - - - 0x026D85 09:AD75: 12        .byte $12   ; 
- - - - - - 0x026D86 09:AD76: 10        .byte $10   ; 
- D 1 - - - 0x026D87 09:AD77: 1D        .byte $1D   ; 
- D 1 - - - 0x026D88 09:AD78: 18        .byte $18   ; 
- D 1 - - - 0x026D89 09:AD79: 06        .byte $06   ; 
- D 1 - - - 0x026D8A 09:AD7A: 03        .byte $03   ; 
- D 1 - - - 0x026D8B 09:AD7B: 10        .byte $10   ; 
- D 1 - - - 0x026D8C 09:AD7C: 08        .byte $08   ; 
- D 1 - - - 0x026D8D 09:AD7D: 1A        .byte $1A   ; 
- - - - - - 0x026D8E 09:AD7E: 10        .byte $10   ; 
- D 1 - - - 0x026D8F 09:AD7F: 14        .byte $14   ; 
- - - - - - 0x026D90 09:AD80: 09        .byte $09   ; 
- D 1 - - - 0x026D91 09:AD81: 0B        .byte $0B   ; 
- - - - - - 0x026D92 09:AD82: 10        .byte $10   ; 
- D 1 - - - 0x026D93 09:AD83: 18        .byte $18   ; 
- D 1 - - - 0x026D94 09:AD84: 08        .byte $08   ; 
- D 1 - - - 0x026D95 09:AD85: 08        .byte $08   ; 
- D 1 - - - 0x026D96 09:AD86: 08        .byte $08   ; 
- D 1 - - - 0x026D97 09:AD87: 0C        .byte $0C   ; 
- D 1 - - - 0x026D98 09:AD88: 06        .byte $06   ; 
- D 1 - - - 0x026D99 09:AD89: 0C        .byte $0C   ; 
- D 1 - - - 0x026D9A 09:AD8A: 10        .byte $10   ; 
- D 1 - - - 0x026D9B 09:AD8B: 08        .byte $08   ; 
- - - - - - 0x026D9C 09:AD8C: 60        .byte $60   ; 
- D 1 - - - 0x026D9D 09:AD8D: 20        .byte $20   ; 
- D 1 - - - 0x026D9E 09:AD8E: 07        .byte $07   ; 
- D 1 - - - 0x026D9F 09:AD8F: 08        .byte $08   ; 



bra_AD90_RTS:
C - - - - - 0x026DA0 09:AD90: 60        RTS



.export sub_0x026DA1
sub_0x026DA1:
C - - - - - 0x026DA1 09:AD91: A2 01     LDX #$01
bra_AD93_loop:
C - - - - - 0x026DA3 09:AD93: BD 20 05  LDA ram_0520,X
C - - - - - 0x026DA6 09:AD96: C9 09     CMP #$09
C - - - - - 0x026DA8 09:AD98: F0 F6     BEQ bra_AD90_RTS
C - - - - - 0x026DAA 09:AD9A: C9 0B     CMP #$0B
C - - - - - 0x026DAC 09:AD9C: F0 F2     BEQ bra_AD90_RTS
C - - - - - 0x026DAE 09:AD9E: CA        DEX
C - - - - - 0x026DAF 09:AD9F: 10 F2     BPL bra_AD93_loop
C - - - - - 0x026DB1 09:ADA1: A2 00     LDX #$00
C - - - - - 0x026DB3 09:ADA3: 86 04     STX ram_0004
C - - - - - 0x026DB5 09:ADA5: 86 05     STX ram_0005
C - - - - - 0x026DB7 09:ADA7: E8        INX
bra_ADA8:
C - - - - - 0x026DB8 09:ADA8: BC 70 05  LDY ram_0570,X
C - - - - - 0x026DBB 09:ADAB: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x026DBE 09:ADAE: 38        SEC
C - - - - - 0x026DBF 09:ADAF: F9 6E AD  SBC tbl_AD6E,Y
C - - - - - 0x026DC2 09:ADB2: 95 02     STA ram_0002,X
C - - - - - 0x026DC4 09:ADB4: 18        CLC
C - - - - - 0x026DC5 09:ADB5: A5 04     LDA ram_0004
C - - - - - 0x026DC7 09:ADB7: 79 4C AD  ADC tbl_AD4C,Y
C - - - - - 0x026DCA 09:ADBA: 85 04     STA ram_0004
C - - - - - 0x026DCC 09:ADBC: 18        CLC
C - - - - - 0x026DCD 09:ADBD: A5 05     LDA ram_0005
C - - - - - 0x026DCF 09:ADBF: 79 6E AD  ADC tbl_AD6E,Y
C - - - - - 0x026DD2 09:ADC2: 38        SEC
C - - - - - 0x026DD3 09:ADC3: E9 06     SBC #$06
C - - - - - 0x026DD5 09:ADC5: 85 05     STA ram_0005
C - - - - - 0x026DD7 09:ADC7: CA        DEX
C - - - - - 0x026DD8 09:ADC8: 10 DE     BPL bra_ADA8
C - - - - - 0x026DDA 09:ADCA: A2 00     LDX #$00
C - - - - - 0x026DDC 09:ADCC: A0 01     LDY #$01
C - - - - - 0x026DDE 09:ADCE: 20 0C D2  JSR sub_0x03D21C
C - - - - - 0x026DE1 09:ADD1: C5 04     CMP ram_0004
C - - - - - 0x026DE3 09:ADD3: B0 51     BCS bra_AE26_RTS
C - - - - - 0x026DE5 09:ADD5: A5 02     LDA ram_0002
C - - - - - 0x026DE7 09:ADD7: 38        SEC
C - - - - - 0x026DE8 09:ADD8: E5 03     SBC ram_0003
C - - - - - 0x026DEA 09:ADDA: B0 03     BCS bra_ADDF
C - - - - - 0x026DEC 09:ADDC: 20 FC D1  JSR sub_0x03D20C_reverse_byte
bra_ADDF:
C - - - - - 0x026DEF 09:ADDF: C5 05     CMP ram_0005
C - - - - - 0x026DF1 09:ADE1: B0 43     BCS bra_AE26_RTS
C - - - - - 0x026DF3 09:ADE3: A9 B0     LDA #$B0
C - - - - - 0x026DF5 09:ADE5: DD 10 04  CMP ram_Y_pos_hi_object,X
C - - - - - 0x026DF8 09:ADE8: D0 06     BNE bra_ADF0
C - - - - - 0x026DFA 09:ADEA: E8        INX
C - - - - - 0x026DFB 09:ADEB: DD 10 04  CMP ram_Y_pos_hi_object,X
C - - - - - 0x026DFE 09:ADEE: F0 03     BEQ bra_ADF3
bra_ADF0:
C - - - - - 0x026E00 09:ADF0: 4C 8A AE  JMP loc_AE8A
bra_ADF3:
C - - - - - 0x026E03 09:ADF3: 20 E3 AE  JSR sub_AEE3
C - - - - - 0x026E06 09:ADF6: E8        INX
C - - - - - 0x026E07 09:ADF7: 88        DEY
C - - - - - 0x026E08 09:ADF8: B9 90 04  LDA ram_X_spd_lo_object,Y
C - - - - - 0x026E0B 09:ADFB: 19 80 04  ORA ram_X_spd_hi_object,Y
C - - - - - 0x026E0E 09:ADFE: F0 4B     BEQ bra_AE4B
C - - - - - 0x026E10 09:AE00: BD 90 04  LDA ram_X_spd_lo_object,X
C - - - - - 0x026E13 09:AE03: 1D 80 04  ORA ram_X_spd_hi_object,X
C - - - - - 0x026E16 09:AE06: F0 3F     BEQ bra_AE47
C - - - - - 0x026E18 09:AE08: 20 86 DD  JSR sub_0x03DD96
C - - - - - 0x026E1B 09:AE0B: 4C 78 EF  JMP loc_0x03EF88



.export loc_0x026E1E
loc_0x026E1E:
C D 1 - - - 0x026E1E 09:AE0E: BD 90 04  LDA ram_X_spd_lo_object,X
C - - - - - 0x026E21 09:AE11: 79 90 04  ADC ram_X_spd_lo_object,Y
C - - - - - 0x026E24 09:AE14: 99 90 04  STA ram_X_spd_lo_object,Y
C - - - - - 0x026E27 09:AE17: 9D 90 04  STA ram_X_spd_lo_object,X
C - - - - - 0x026E2A 09:AE1A: BD 80 04  LDA ram_X_spd_hi_object,X
C - - - - - 0x026E2D 09:AE1D: 79 80 04  ADC ram_X_spd_hi_object,Y
C - - - - - 0x026E30 09:AE20: 99 80 04  STA ram_X_spd_hi_object,Y
C - - - - - 0x026E33 09:AE23: 9D 80 04  STA ram_X_spd_hi_object,X
bra_AE26_RTS:
C - - - - - 0x026E36 09:AE26: 60        RTS



.export loc_0x026E37
loc_0x026E37:
C D 1 - - - 0x026E37 09:AE27: 90 0D     BCC bra_AE36
bra_AE29:
C - - - - - 0x026E39 09:AE29: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x026E3C 09:AE2C: D9 40 04  CMP ram_X_pos_hi_object,Y
C - - - - - 0x026E3F 09:AE2F: 6A        ROR
C - - - - - 0x026E40 09:AE30: 5D 80 04  EOR ram_X_spd_hi_object,X
C - - - - - 0x026E43 09:AE33: 10 05     BPL bra_AE3A
C - - - - - 0x026E45 09:AE35: 60        RTS
bra_AE36:
C - - - - - 0x026E46 09:AE36: E8        INX
C - - - - - 0x026E47 09:AE37: 88        DEY
C - - - - - 0x026E48 09:AE38: F0 EF     BEQ bra_AE29
bra_AE3A:
loc_AE3A:
C D 1 - - - 0x026E4A 09:AE3A: BD 80 04  LDA ram_X_spd_hi_object,X
C - - - - - 0x026E4D 09:AE3D: 99 80 04  STA ram_X_spd_hi_object,Y
C - - - - - 0x026E50 09:AE40: BD 90 04  LDA ram_X_spd_lo_object,X
C - - - - - 0x026E53 09:AE43: 99 90 04  STA ram_X_spd_lo_object,Y
C - - - - - 0x026E56 09:AE46: 60        RTS
bra_AE47:
C - - - - - 0x026E57 09:AE47: E8        INX
C - - - - - 0x026E58 09:AE48: 88        DEY
C - - - - - 0x026E59 09:AE49: F0 08     BEQ bra_AE53
bra_AE4B:
C - - - - - 0x026E5B 09:AE4B: BD 80 04  LDA ram_X_spd_hi_object,X
C - - - - - 0x026E5E 09:AE4E: 1D 90 04  ORA ram_X_spd_lo_object,X
C - - - - - 0x026E61 09:AE51: F0 0D     BEQ bra_AE60
bra_AE53:
C - - - - - 0x026E63 09:AE53: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x026E66 09:AE56: D9 40 04  CMP ram_X_pos_hi_object,Y
C - - - - - 0x026E69 09:AE59: 6A        ROR
C - - - - - 0x026E6A 09:AE5A: 5D 80 04  EOR ram_X_spd_hi_object,X
C - - - - - 0x026E6D 09:AE5D: 10 1E     BPL bra_AE7D
C - - - - - 0x026E6F 09:AE5F: 60        RTS
bra_AE60:
C - - - - - 0x026E70 09:AE60: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x026E73 09:AE63: D9 40 04  CMP ram_X_pos_hi_object,Y
C - - - - - 0x026E76 09:AE66: A9 00     LDA #$00
C - - - - - 0x026E78 09:AE68: B0 02     BCS bra_AE6C
C - - - - - 0x026E7A 09:AE6A: A9 FF     LDA #$FF
bra_AE6C:
C - - - - - 0x026E7C 09:AE6C: 9D 80 04  STA ram_X_spd_hi_object,X
C - - - - - 0x026E7F 09:AE6F: 49 FF     EOR #$FF
C - - - - - 0x026E81 09:AE71: 99 80 04  STA ram_X_spd_hi_object,Y
C - - - - - 0x026E84 09:AE74: A9 80     LDA #$80
C - - - - - 0x026E86 09:AE76: 9D 90 04  STA ram_X_spd_lo_object,X
C - - - - - 0x026E89 09:AE79: 99 90 04  STA ram_X_spd_lo_object,Y
C - - - - - 0x026E8C 09:AE7C: 60        RTS
bra_AE7D:
C - - - - - 0x026E8D 09:AE7D: BD 80 04  LDA ram_X_spd_hi_object,X
C - - - - - 0x026E90 09:AE80: 0A        ASL
C - - - - - 0x026E91 09:AE81: 7E 80 04  ROR ram_X_spd_hi_object,X
C - - - - - 0x026E94 09:AE84: 7E 90 04  ROR ram_X_spd_lo_object,X
C - - - - - 0x026E97 09:AE87: 4C 3A AE  JMP loc_AE3A



loc_AE8A:
C D 1 - - - 0x026E9A 09:AE8A: 20 E3 AE  JSR sub_AEE3
C - - - - - 0x026E9D 09:AE8D: 88        DEY
C - - - - - 0x026E9E 09:AE8E: E8        INX
C - - - - - 0x026E9F 09:AE8F: B9 40 04  LDA ram_X_pos_hi_object,Y
C - - - - - 0x026EA2 09:AE92: DD 40 04  CMP ram_X_pos_hi_object,X
C - - - - - 0x026EA5 09:AE95: B0 02     BCS bra_AE99
C - - - - - 0x026EA7 09:AE97: 88        DEY
C - - - - - 0x026EA8 09:AE98: E8        INX
bra_AE99:
C - - - - - 0x026EA9 09:AE99: A9 AF     LDA #$AF
C - - - - - 0x026EAB 09:AE9B: D9 10 04  CMP ram_Y_pos_hi_object,Y
C - - - - - 0x026EAE 09:AE9E: 90 05     BCC bra_AEA5
C - - - - - 0x026EB0 09:AEA0: DD 10 04  CMP ram_Y_pos_hi_object,X
C - - - - - 0x026EB3 09:AEA3: B0 12     BCS bra_AEB7
bra_AEA5:
C - - - - - 0x026EB5 09:AEA5: B9 80 04  LDA ram_X_spd_hi_object,Y
C - - - - - 0x026EB8 09:AEA8: 69 02     ADC #$02
C - - - - - 0x026EBA 09:AEAA: 99 80 04  STA ram_X_spd_hi_object,Y
C - - - - - 0x026EBD 09:AEAD: 38        SEC
C - - - - - 0x026EBE 09:AEAE: BD 80 04  LDA ram_X_spd_hi_object,X
C - - - - - 0x026EC1 09:AEB1: E9 02     SBC #$02
C - - - - - 0x026EC3 09:AEB3: 9D 80 04  STA ram_X_spd_hi_object,X
C - - - - - 0x026EC6 09:AEB6: 60        RTS
bra_AEB7:
C - - - - - 0x026EC7 09:AEB7: 18        CLC
C - - - - - 0x026EC8 09:AEB8: BD 90 04  LDA ram_X_spd_lo_object,X
C - - - - - 0x026ECB 09:AEBB: 79 90 04  ADC ram_X_spd_lo_object,Y
C - - - - - 0x026ECE 09:AEBE: 9D 90 04  STA ram_X_spd_lo_object,X
C - - - - - 0x026ED1 09:AEC1: 99 90 04  STA ram_X_spd_lo_object,Y
C - - - - - 0x026ED4 09:AEC4: BD 80 04  LDA ram_X_spd_hi_object,X
C - - - - - 0x026ED7 09:AEC7: 79 80 04  ADC ram_X_spd_hi_object,Y
C - - - - - 0x026EDA 09:AECA: 9D 80 04  STA ram_X_spd_hi_object,X
C - - - - - 0x026EDD 09:AECD: 99 80 04  STA ram_X_spd_hi_object,Y
C - - - - - 0x026EE0 09:AED0: 18        CLC
C - - - - - 0x026EE1 09:AED1: B9 80 04  LDA ram_X_spd_hi_object,Y
C - - - - - 0x026EE4 09:AED4: 69 01     ADC #$01
C - - - - - 0x026EE6 09:AED6: 99 80 04  STA ram_X_spd_hi_object,Y
C - - - - - 0x026EE9 09:AED9: 38        SEC
C - - - - - 0x026EEA 09:AEDA: BD 80 04  LDA ram_X_spd_hi_object,X
C - - - - - 0x026EED 09:AEDD: E9 01     SBC #$01
C - - - - - 0x026EEF 09:AEDF: 9D 80 04  STA ram_X_spd_hi_object,X
C - - - - - 0x026EF2 09:AEE2: 60        RTS



sub_AEE3:
C - - - - - 0x026EF3 09:AEE3: A2 01     LDX #$01
C - - - - - 0x026EF5 09:AEE5: A0 00     LDY #$00
bra_AEE7_loop:
C - - - - - 0x026EF7 09:AEE7: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x026EFA 09:AEEA: C9 E8     CMP #$E8
C - - - - - 0x026EFC 09:AEEC: B0 09     BCS bra_AEF7
C - - - - - 0x026EFE 09:AEEE: C9 19     CMP #$19
C - - - - - 0x026F00 09:AEF0: 90 2C     BCC bra_AF1E
C - - - - - 0x026F02 09:AEF2: C8        INY
C - - - - - 0x026F03 09:AEF3: CA        DEX
C - - - - - 0x026F04 09:AEF4: 10 F1     BPL bra_AEE7_loop
C - - - - - 0x026F06 09:AEF6: 60        RTS
bra_AEF7:
C - - - - - 0x026F07 09:AEF7: A9 B0     LDA #$B0
C - - - - - 0x026F09 09:AEF9: D9 10 04  CMP ram_Y_pos_hi_object,Y
C - - - - - 0x026F0C 09:AEFC: D0 0E     BNE bra_AF0C
C - - - - - 0x026F0E 09:AEFE: DD 10 04  CMP ram_Y_pos_hi_object,X
C - - - - - 0x026F11 09:AF01: F0 0D     BEQ bra_AF10
C - - - - - 0x026F13 09:AF03: B9 40 04  LDA ram_X_pos_hi_object,Y
C - - - - - 0x026F16 09:AF06: C9 E8     CMP #$E8
C - - - - - 0x026F18 09:AF08: 90 02     BCC bra_AF0C
C - - - - - 0x026F1A 09:AF0A: 8A        TXA
C - - - - - 0x026F1B 09:AF0B: A8        TAY
bra_AF0C:
C - - - - - 0x026F1C 09:AF0C: A9 FD     LDA #$FD
C - - - - - 0x026F1E 09:AF0E: D0 25     BNE bra_AF35
bra_AF10:
C - - - - - 0x026F20 09:AF10: 38        SEC
C - - - - - 0x026F21 09:AF11: A9 E9     LDA #$E9
C - - - - - 0x026F23 09:AF13: E5 04     SBC ram_0004
bra_AF15:
C - - - - - 0x026F25 09:AF15: 99 40 04  STA ram_X_pos_hi_object,Y
C - - - - - 0x026F28 09:AF18: A9 80     LDA #$80
C - - - - - 0x026F2A 09:AF1A: 99 50 04  STA ram_X_pos_lo_object,Y
C - - - - - 0x026F2D 09:AF1D: 60        RTS
bra_AF1E:
C - - - - - 0x026F2E 09:AF1E: A9 B0     LDA #$B0
C - - - - - 0x026F30 09:AF20: D9 10 04  CMP ram_Y_pos_hi_object,Y
C - - - - - 0x026F33 09:AF23: D0 0E     BNE bra_AF33
C - - - - - 0x026F35 09:AF25: DD 10 04  CMP ram_Y_pos_hi_object,X
C - - - - - 0x026F38 09:AF28: F0 1F     BEQ bra_AF49
C - - - - - 0x026F3A 09:AF2A: B9 40 04  LDA ram_X_pos_hi_object,Y
C - - - - - 0x026F3D 09:AF2D: C9 19     CMP #$19
C - - - - - 0x026F3F 09:AF2F: B0 02     BCS bra_AF33
C - - - - - 0x026F41 09:AF31: 8A        TXA
C - - - - - 0x026F42 09:AF32: A8        TAY
bra_AF33:
C - - - - - 0x026F43 09:AF33: A9 02     LDA #$02
bra_AF35:
C - - - - - 0x026F45 09:AF35: 48        PHA
C - - - - - 0x026F46 09:AF36: 18        CLC
C - - - - - 0x026F47 09:AF37: B9 90 04  LDA ram_X_spd_lo_object,Y
C - - - - - 0x026F4A 09:AF3A: 69 80     ADC #$80
C - - - - - 0x026F4C 09:AF3C: 99 90 04  STA ram_X_spd_lo_object,Y
C - - - - - 0x026F4F 09:AF3F: 68        PLA
C - - - - - 0x026F50 09:AF40: 79 80 04  ADC ram_X_spd_hi_object,Y
C - - - - - 0x026F53 09:AF43: 99 80 04  STA ram_X_spd_hi_object,Y
C - - - - - 0x026F56 09:AF46: 68        PLA
C - - - - - 0x026F57 09:AF47: 68        PLA
C - - - - - 0x026F58 09:AF48: 60        RTS
bra_AF49:
C - - - - - 0x026F59 09:AF49: 18        CLC
C - - - - - 0x026F5A 09:AF4A: A9 17     LDA #$17
C - - - - - 0x026F5C 09:AF4C: 65 04     ADC ram_0004
C - - - - - 0x026F5E 09:AF4E: D0 C5     BNE bra_AF15



loc_AF50:
C D 1 - - - 0x026F60 09:AF50: BC 50 05  LDY ram_id_fighter,X
C - - - - - 0x026F63 09:AF53: B9 7F AF  LDA tbl_AF7F,Y
C - - - - - 0x026F66 09:AF56: A8        TAY
bra_AF57:
C - - - - - 0x026F67 09:AF57: B9 86 AF  LDA tbl_AF86,Y
C - - - - - 0x026F6A 09:AF5A: F0 09     BEQ bra_AF65
C - - - - - 0x026F6C 09:AF5C: DD 00 04  CMP ram_anim_fighter,X
C - - - - - 0x026F6F 09:AF5F: F0 17     BEQ bra_AF78
C - - - - - 0x026F71 09:AF61: C8        INY
C - - - - - 0x026F72 09:AF62: C8        INY
C - - - - - 0x026F73 09:AF63: D0 F2     BNE bra_AF57
bra_AF65:
C - - - - - 0x026F75 09:AF65: BD 50 05  LDA ram_id_fighter,X
C - - - - - 0x026F78 09:AF68: 0A        ASL
C - - - - - 0x026F79 09:AF69: A8        TAY
C - - - - - 0x026F7A 09:AF6A: BD 20 05  LDA ram_0520,X
C - - - - - 0x026F7D 09:AF6D: C9 07     CMP #$07
C - - - - - 0x026F7F 09:AF6F: D0 01     BNE bra_AF72
C - - - - - 0x026F81 09:AF71: C8        INY
bra_AF72:
C - - - - - 0x026F82 09:AF72: B9 AE AF  LDA tbl_AFAE,Y
C - - - - - 0x026F85 09:AF75: 4C 7B AF  JMP loc_AF7B
bra_AF78:
C - - - - - 0x026F88 09:AF78: B9 87 AF  LDA tbl_AF87,Y
loc_AF7B:
C D 1 - - - 0x026F8B 09:AF7B: 9D 70 05  STA ram_0570,X
C - - - - - 0x026F8E 09:AF7E: 60        RTS



tbl_AF7F:
- D 1 - - - 0x026F8F 09:AF7F: 00        .byte $00   ; 00 Leo
- D 1 - - - 0x026F90 09:AF80: 00        .byte $00   ; 01 Raph
- D 1 - - - 0x026F91 09:AF81: 00        .byte $00   ; 02 Mike
- D 1 - - - 0x026F92 09:AF82: 00        .byte $00   ; 03 Don
- D 1 - - - 0x026F93 09:AF83: 09        .byte $09   ; 04 Casey
- D 1 - - - 0x026F94 09:AF84: 18        .byte $18   ; 05 Hot
- D 1 - - - 0x026F95 09:AF85: 21        .byte $21   ; 06 Shred



tbl_AF86:
- D 1 - - - 0x026F96 09:AF86: DA        .byte $DA   ; 
tbl_AF87:
- D 1 - - - 0x026F97 09:AF87: 16        .byte $16   ; 
- D 1 - - - 0x026F98 09:AF88: 99        .byte $99   ; 
- D 1 - - - 0x026F99 09:AF89: 07        .byte $07   ; 
- D 1 - - - 0x026F9A 09:AF8A: A5        .byte $A5   ; 
- D 1 - - - 0x026F9B 09:AF8B: 18        .byte $18   ; 
- D 1 - - - 0x026F9C 09:AF8C: A6        .byte $A6   ; 
- D 1 - - - 0x026F9D 09:AF8D: 18        .byte $18   ; 
- D 1 - - - 0x026F9E 09:AF8E: 00        .byte $00   ; 
- D 1 - - - 0x026F9F 09:AF8F: D2        .byte $D2   ; 
- D 1 - - - 0x026FA0 09:AF90: 17        .byte $17   ; 
- D 1 - - - 0x026FA1 09:AF91: D3        .byte $D3   ; 
- D 1 - - - 0x026FA2 09:AF92: 17        .byte $17   ; 
- D 1 - - - 0x026FA3 09:AF93: D4        .byte $D4   ; 
- D 1 - - - 0x026FA4 09:AF94: 17        .byte $17   ; 
- D 1 - - - 0x026FA5 09:AF95: D5        .byte $D5   ; 
- D 1 - - - 0x026FA6 09:AF96: 17        .byte $17   ; 
- D 1 - - - 0x026FA7 09:AF97: A7        .byte $A7   ; 
- D 1 - - - 0x026FA8 09:AF98: 18        .byte $18   ; 
- D 1 - - - 0x026FA9 09:AF99: A8        .byte $A8   ; 
- D 1 - - - 0x026FAA 09:AF9A: 18        .byte $18   ; 
- D 1 - - - 0x026FAB 09:AF9B: A9        .byte $A9   ; 
- D 1 - - - 0x026FAC 09:AF9C: 18        .byte $18   ; 
- D 1 - - - 0x026FAD 09:AF9D: 00        .byte $00   ; 
- D 1 - - - 0x026FAE 09:AF9E: A1        .byte $A1   ; 
- D 1 - - - 0x026FAF 09:AF9F: 19        .byte $19   ; 
- D 1 - - - 0x026FB0 09:AFA0: A2        .byte $A2   ; 
- D 1 - - - 0x026FB1 09:AFA1: 19        .byte $19   ; 
- D 1 - - - 0x026FB2 09:AFA2: A3        .byte $A3   ; 
- D 1 - - - 0x026FB3 09:AFA3: 19        .byte $19   ; 
- D 1 - - - 0x026FB4 09:AFA4: B5        .byte $B5   ; 
- D 1 - - - 0x026FB5 09:AFA5: 1C        .byte $1C   ; 
- D 1 - - - 0x026FB6 09:AFA6: 00        .byte $00   ; 
- D 1 - - - 0x026FB7 09:AFA7: A6        .byte $A6   ; 
- D 1 - - - 0x026FB8 09:AFA8: 18        .byte $18   ; 
- D 1 - - - 0x026FB9 09:AFA9: A7        .byte $A7   ; 
- D 1 - - - 0x026FBA 09:AFAA: 18        .byte $18   ; 
- D 1 - - - 0x026FBB 09:AFAB: A8        .byte $A8   ; 
- D 1 - - - 0x026FBC 09:AFAC: 18        .byte $18   ; 
- D 1 - - - 0x026FBD 09:AFAD: 00        .byte $00   ; 



tbl_AFAE:
- D 1 - - - 0x026FBE 09:AFAE: 01        .byte $01   ; 00
- D 1 - - - 0x026FBF 09:AFAF: 07        .byte $07   ; 01
- D 1 - - - 0x026FC0 09:AFB0: 01        .byte $01   ; 02
- D 1 - - - 0x026FC1 09:AFB1: 07        .byte $07   ; 03
- D 1 - - - 0x026FC2 09:AFB2: 01        .byte $01   ; 04
- D 1 - - - 0x026FC3 09:AFB3: 07        .byte $07   ; 05
- D 1 - - - 0x026FC4 09:AFB4: 01        .byte $01   ; 06
- D 1 - - - 0x026FC5 09:AFB5: 07        .byte $07   ; 07
- D 1 - - - 0x026FC6 09:AFB6: 01        .byte $01   ; 08
- D 1 - - - 0x026FC7 09:AFB7: 07        .byte $07   ; 09
- D 1 - - - 0x026FC8 09:AFB8: 09        .byte $09   ; 0A
- D 1 - - - 0x026FC9 09:AFB9: 0A        .byte $0A   ; 0B
- D 1 - - - 0x026FCA 09:AFBA: 0F        .byte $0F   ; 0C
- D 1 - - - 0x026FCB 09:AFBB: 11        .byte $11   ; 0D



tbl_AFBC:
- D 1 - - - 0x026FCC 09:AFBC: 13        .byte $13   ; 
- D 1 - - - 0x026FCD 09:AFBD: 10        .byte $10   ; 
- D 1 - - - 0x026FCE 09:AFBE: 0F        .byte $0F   ; 
- D 1 - - - 0x026FCF 09:AFBF: 10        .byte $10   ; 
- D 1 - - - 0x026FD0 09:AFC0: 21        .byte $21   ; 
- D 1 - - - 0x026FD1 09:AFC1: 0D        .byte $0D   ; 
- D 1 - - - 0x026FD2 09:AFC2: 0E        .byte $0E   ; 
- D 1 - - - 0x026FD3 09:AFC3: 0D        .byte $0D   ; 
- D 1 - - - 0x026FD4 09:AFC4: 21        .byte $21   ; 
- D 1 - - - 0x026FD5 09:AFC5: 21        .byte $21   ; 
- D 1 - - - 0x026FD6 09:AFC6: 0F        .byte $0F   ; 
- D 1 - - - 0x026FD7 09:AFC7: 13        .byte $13   ; 
- D 1 - - - 0x026FD8 09:AFC8: 13        .byte $13   ; 
- D 1 - - - 0x026FD9 09:AFC9: 12        .byte $12   ; 
- D 1 - - - 0x026FDA 09:AFCA: 13        .byte $13   ; 
- D 1 - - - 0x026FDB 09:AFCB: 0F        .byte $0F   ; 
- D 1 - - - 0x026FDC 09:AFCC: 0F        .byte $0F   ; 
- D 1 - - - 0x026FDD 09:AFCD: 0D        .byte $0D   ; 
- D 1 - - - 0x026FDE 09:AFCE: 0E        .byte $0E   ; 
- D 1 - - - 0x026FDF 09:AFCF: 10        .byte $10   ; 
- D 1 - - - 0x026FE0 09:AFD0: 21        .byte $21   ; 
- D 1 - - - 0x026FE1 09:AFD1: 12        .byte $12   ; 
- D 1 - - - 0x026FE2 09:AFD2: 10        .byte $10   ; 
- D 1 - - - 0x026FE3 09:AFD3: 21        .byte $21   ; 
- D 1 - - - 0x026FE4 09:AFD4: 13        .byte $13   ; 
- D 1 - - - 0x026FE5 09:AFD5: 0C        .byte $0C   ; 
- D 1 - - - 0x026FE6 09:AFD6: 10        .byte $10   ; 
- D 1 - - - 0x026FE7 09:AFD7: 10        .byte $10   ; 
- D 1 - - - 0x026FE8 09:AFD8: 0D        .byte $0D   ; 
- D 1 - - - 0x026FE9 09:AFD9: 0C        .byte $0C   ; 
- D 1 - - - 0x026FEA 09:AFDA: 13        .byte $13   ; 
- D 1 - - - 0x026FEB 09:AFDB: 13        .byte $13   ; 
- D 1 - - - 0x026FEC 09:AFDC: 21        .byte $21   ; 
- D 1 - - - 0x026FED 09:AFDD: 12        .byte $12   ; 
- D 1 - - - 0x026FEE 09:AFDE: 12        .byte $12   ; 
- D 1 - - - 0x026FEF 09:AFDF: 13        .byte $13   ; 
- D 1 - - - 0x026FF0 09:AFE0: 0C        .byte $0C   ; 
- D 1 - - - 0x026FF1 09:AFE1: 0D        .byte $0D   ; 
- D 1 - - - 0x026FF2 09:AFE2: 10        .byte $10   ; 
- D 1 - - - 0x026FF3 09:AFE3: 12        .byte $12   ; 
- D 1 - - - 0x026FF4 09:AFE4: 10        .byte $10   ; 
- D 1 - - - 0x026FF5 09:AFE5: 0D        .byte $0D   ; 
- D 1 - - - 0x026FF6 09:AFE6: 0E        .byte $0E   ; 
- D 1 - - - 0x026FF7 09:AFE7: 13        .byte $13   ; 
- D 1 - - - 0x026FF8 09:AFE8: 21        .byte $21   ; 
- D 1 - - - 0x026FF9 09:AFE9: 0E        .byte $0E   ; 
- D 1 - - - 0x026FFA 09:AFEA: 13        .byte $13   ; 
- D 1 - - - 0x026FFB 09:AFEB: 1F        .byte $1F   ; 
- D 1 - - - 0x026FFC 09:AFEC: 1F        .byte $1F   ; 
- D 1 - - - 0x026FFD 09:AFED: 1F        .byte $1F   ; 
- D 1 - - - 0x026FFE 09:AFEE: 1F        .byte $1F   ; 
- D 1 - - - 0x026FFF 09:AFEF: 1F        .byte $1F   ; 
- D 1 - - - 0x027000 09:AFF0: 1F        .byte $1F   ; 
- D 1 - - - 0x027001 09:AFF1: 1F        .byte $1F   ; 
- D 1 - - - 0x027002 09:AFF2: 12        .byte $12   ; 
- D 1 - - - 0x027003 09:AFF3: 1F        .byte $1F   ; 
- D 1 - - - 0x027004 09:AFF4: 1F        .byte $1F   ; 
- D 1 - - - 0x027005 09:AFF5: 12        .byte $12   ; 



sub_AFF6:
.export sub_0x027006
sub_0x027006:
C - - - - - 0x027006 09:AFF6: A2 00     LDX #$00
C - - - - - 0x027008 09:AFF8: A5 2C     LDA ram_002C
C - - - - - 0x02700A 09:AFFA: C9 03     CMP #$03
C - - - - - 0x02700C 09:AFFC: F0 0C     BEQ bra_B00A
C - - - - - 0x02700E 09:AFFE: B0 68     BCS bra_B068_RTS
C - - - - - 0x027010 09:B000: AD 56 01  LDA ram_0156
C - - - - - 0x027013 09:B003: 6D 55 01  ADC ram_0155
C - - - - - 0x027016 09:B006: B0 60     BCS bra_B068_RTS
C - - - - - 0x027018 09:B008: 30 01     BMI bra_B00B
bra_B00A:
C - - - - - 0x02701A 09:B00A: E8        INX
bra_B00B:
C - - - - - 0x02701B 09:B00B: 86 00     STX ram_0000
bra_B00D:
C - - - - - 0x02701D 09:B00D: A6 00     LDX ram_0000
C - - - - - 0x02701F 09:B00F: BD 18 B1  LDA tbl_B118,X
C - - - - - 0x027022 09:B012: A8        TAY
C - - - - - 0x027023 09:B013: 4C 0E E9  JMP loc_0x03E91E



.export loc_0x027026
loc_0x027026:
C D 1 - - - 0x027026 09:B016: A5 00     LDA ram_0000
C - - - - - 0x027028 09:B018: 18        CLC
C - - - - - 0x027029 09:B019: 69 82     ADC #$82
C - - - - - 0x02702B 09:B01B: 20 66 D2  JSR sub_0x03D276
C - - - - - 0x02702E 09:B01E: A9 9A     LDA #$9A
C - - - - - 0x027030 09:B020: 20 66 D2  JSR sub_0x03D276
.export loc_0x027033
loc_0x027033:
C D 1 - - - 0x027033 09:B023: A9 00     LDA #$00
C - - - - - 0x027035 09:B025: 20 5F D2  JSR sub_0x03D26F
C - - - - - 0x027038 09:B028: A9 00     LDA #$00
C - - - - - 0x02703A 09:B02A: 85 01     STA ram_0001
C - - - - - 0x02703C 09:B02C: A5 00     LDA ram_0000
C - - - - - 0x02703E 09:B02E: 0A        ASL
C - - - - - 0x02703F 09:B02F: 0A        ASL
C - - - - - 0x027040 09:B030: AA        TAX
C - - - - - 0x027041 09:B031: A0 03     LDY #$03
bra_B033:
C - - - - - 0x027043 09:B033: B5 AE     LDA ram_points_6,X
C - - - - - 0x027045 09:B035: 05 01     ORA ram_0001
C - - - - - 0x027047 09:B037: 85 01     STA ram_0001
C - - - - - 0x027049 09:B039: F0 05     BEQ bra_B040
C - - - - - 0x02704B 09:B03B: 18        CLC
C - - - - - 0x02704C 09:B03C: B5 AE     LDA ram_points_6,X
C - - - - - 0x02704E 09:B03E: 69 81     ADC #$81
bra_B040:
C - - - - - 0x027050 09:B040: 86 02     STX ram_0002
C - - - - - 0x027052 09:B042: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x027055 09:B045: A6 02     LDX ram_0002
C - - - - - 0x027057 09:B047: E8        INX
C - - - - - 0x027058 09:B048: 88        DEY
C - - - - - 0x027059 09:B049: 10 E8     BPL bra_B033
C - - - - - 0x02705B 09:B04B: A5 01     LDA ram_0001
C - - - - - 0x02705D 09:B04D: F0 12     BEQ bra_B061
C - - - - - 0x02705F 09:B04F: 18        CLC
C - - - - - 0x027060 09:B050: AD 12 01  LDA ram_0112
C - - - - - 0x027063 09:B053: 69 81     ADC #$81
C - - - - - 0x027065 09:B055: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x027068 09:B058: 18        CLC
C - - - - - 0x027069 09:B059: AD 11 01  LDA ram_0111
C - - - - - 0x02706C 09:B05C: 69 81     ADC #$81
.export loc_0x02706E
loc_0x02706E:
C D 1 - - - 0x02706E 09:B05E: 20 5F D2  JSR sub_0x03D26F
bra_B061:
C - - - - - 0x027071 09:B061: 20 5B D2  JSR sub_0x03D26B
C - - - - - 0x027074 09:B064: C6 00     DEC ram_0000
C - - - - - 0x027076 09:B066: 10 A5     BPL bra_B00D
bra_B068_RTS:
C - - - - - 0x027078 09:B068: 60        RTS



sub_B069:
.export loc_0x027079
loc_0x027079:
C D 1 - - - 0x027079 09:B069: 86 17     STX ram_0017
C - - - - - 0x02707B 09:B06B: 84 16     STY ram_0016
C - - - - - 0x02707D 09:B06D: BC 50 05  LDY ram_id_fighter,X
C - - - - - 0x027080 09:B070: B9 11 B1  LDA tbl_B111,Y
C - - - - - 0x027083 09:B073: 48        PHA
C - - - - - 0x027084 09:B074: 29 0F     AND #$0F
C - - - - - 0x027086 09:B076: 85 14     STA ram_0014
C - - - - - 0x027088 09:B078: 68        PLA
C - - - - - 0x027089 09:B079: 20 07 D2  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x02708C 09:B07C: 85 13     STA ram_0013
C - - - - - 0x02708E 09:B07E: A9 00     LDA #$00
C - - - - - 0x027090 09:B080: 85 12     STA ram_0012
C - - - - - 0x027092 09:B082: 85 11     STA ram_0011
C - - - - - 0x027094 09:B084: 8A        TXA
C - - - - - 0x027095 09:B085: 4C B3 B0  JMP loc_B0B3



sub_B088:
C - - - - - 0x027098 09:B088: 86 17     STX ram_0017
C - - - - - 0x02709A 09:B08A: 84 16     STY ram_0016
C - - - - - 0x02709C 09:B08C: A5 95     LDA ram_0095
C - - - - - 0x02709E 09:B08E: C9 10     CMP #$10
C - - - - - 0x0270A0 09:B090: 90 04     BCC bra_B096
C - - - - - 0x0270A2 09:B092: A9 01     LDA #$01
C - - - - - 0x0270A4 09:B094: D0 09     BNE bra_B09F
bra_B096:
C - - - - - 0x0270A6 09:B096: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x0270A9 09:B099: 29 7F     AND #$7F
C - - - - - 0x0270AB 09:B09B: AA        TAX
C - - - - - 0x0270AC 09:B09C: BD D7 B0  LDA tbl_B0D7,X
bra_B09F:
C - - - - - 0x0270AF 09:B09F: 48        PHA
C - - - - - 0x0270B0 09:B0A0: 29 0F     AND #$0F
C - - - - - 0x0270B2 09:B0A2: 85 14     STA ram_0014
C - - - - - 0x0270B4 09:B0A4: 68        PLA
C - - - - - 0x0270B5 09:B0A5: 20 07 D2  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x0270B8 09:B0A8: 85 13     STA ram_0013
C - - - - - 0x0270BA 09:B0AA: A9 00     LDA #$00
C - - - - - 0x0270BC 09:B0AC: 85 12     STA ram_0012
C - - - - - 0x0270BE 09:B0AE: 85 11     STA ram_0011
C - - - - - 0x0270C0 09:B0B0: B9 20 05  LDA ram_0520,Y
loc_B0B3:
.export sub_0x0270C3
sub_0x0270C3:
C D 1 - - - 0x0270C3 09:B0B3: 0A        ASL
C - - - - - 0x0270C4 09:B0B4: 0A        ASL
C - - - - - 0x0270C5 09:B0B5: 09 03     ORA #$03
C - - - - - 0x0270C7 09:B0B7: A8        TAY
C - - - - - 0x0270C8 09:B0B8: A2 03     LDX #$03
bra_B0BA:
C - - - - - 0x0270CA 09:B0BA: 18        CLC
C - - - - - 0x0270CB 09:B0BB: B9 AE 00  LDA ram_points_6,Y
C - - - - - 0x0270CE 09:B0BE: 75 11     ADC ram_0011,X
C - - - - - 0x0270D0 09:B0C0: C9 0A     CMP #$0A
C - - - - - 0x0270D2 09:B0C2: 90 04     BCC bra_B0C8
C - - - - - 0x0270D4 09:B0C4: E9 0A     SBC #$0A
C - - - - - 0x0270D6 09:B0C6: F6 10     INC ram_0010,X
bra_B0C8:
C - - - - - 0x0270D8 09:B0C8: 99 AE 00  STA ram_points_6,Y
C - - - - - 0x0270DB 09:B0CB: 88        DEY
C - - - - - 0x0270DC 09:B0CC: CA        DEX
C - - - - - 0x0270DD 09:B0CD: 10 EB     BPL bra_B0BA
C - - - - - 0x0270DF 09:B0CF: A6 17     LDX ram_0017
C - - - - - 0x0270E1 09:B0D1: A4 16     LDY ram_0016
C - - - - - 0x0270E3 09:B0D3: EE 35 06  INC ram_0635
C - - - - - 0x0270E6 09:B0D6: 60        RTS



tbl_B0D7:
- D 1 - - - 0x0270E7 09:B0D7: 10        .byte $10   ; 
- D 1 - - - 0x0270E8 09:B0D8: 02        .byte $02   ; 
- D 1 - - - 0x0270E9 09:B0D9: 01        .byte $01   ; 
- D 1 - - - 0x0270EA 09:B0DA: 02        .byte $02   ; 
- D 1 - - - 0x0270EB 09:B0DB: 02        .byte $02   ; 
- D 1 - - - 0x0270EC 09:B0DC: 01        .byte $01   ; 
- D 1 - - - 0x0270ED 09:B0DD: 01        .byte $01   ; 
- D 1 - - - 0x0270EE 09:B0DE: 01        .byte $01   ; 
- D 1 - - - 0x0270EF 09:B0DF: 02        .byte $02   ; 
- D 1 - - - 0x0270F0 09:B0E0: 02        .byte $02   ; 
- D 1 - - - 0x0270F1 09:B0E1: 01        .byte $01   ; 
- D 1 - - - 0x0270F2 09:B0E2: 01        .byte $01   ; 
- D 1 - - - 0x0270F3 09:B0E3: 02        .byte $02   ; 
- D 1 - - - 0x0270F4 09:B0E4: 02        .byte $02   ; 
- D 1 - - - 0x0270F5 09:B0E5: 02        .byte $02   ; 
- D 1 - - - 0x0270F6 09:B0E6: 01        .byte $01   ; 
- D 1 - - - 0x0270F7 09:B0E7: 01        .byte $01   ; 
- D 1 - - - 0x0270F8 09:B0E8: 01        .byte $01   ; 
- D 1 - - - 0x0270F9 09:B0E9: 01        .byte $01   ; 
- D 1 - - - 0x0270FA 09:B0EA: 02        .byte $02   ; 
- D 1 - - - 0x0270FB 09:B0EB: 02        .byte $02   ; 
- D 1 - - - 0x0270FC 09:B0EC: 03        .byte $03   ; 
- D 1 - - - 0x0270FD 09:B0ED: 02        .byte $02   ; 
- D 1 - - - 0x0270FE 09:B0EE: 02        .byte $02   ; 
- D 1 - - - 0x0270FF 09:B0EF: 02        .byte $02   ; 
- D 1 - - - 0x027100 09:B0F0: 01        .byte $01   ; 
- D 1 - - - 0x027101 09:B0F1: 02        .byte $02   ; 
- D 1 - - - 0x027102 09:B0F2: 02        .byte $02   ; 
- D 1 - - - 0x027103 09:B0F3: 01        .byte $01   ; 
- D 1 - - - 0x027104 09:B0F4: 01        .byte $01   ; 
- D 1 - - - 0x027105 09:B0F5: 02        .byte $02   ; 
- D 1 - - - 0x027106 09:B0F6: 02        .byte $02   ; 
- D 1 - - - 0x027107 09:B0F7: 01        .byte $01   ; 
- D 1 - - - 0x027108 09:B0F8: 03        .byte $03   ; 
- D 1 - - - 0x027109 09:B0F9: 02        .byte $02   ; 
- D 1 - - - 0x02710A 09:B0FA: 03        .byte $03   ; 
- D 1 - - - 0x02710B 09:B0FB: 01        .byte $01   ; 
- D 1 - - - 0x02710C 09:B0FC: 01        .byte $01   ; 
- D 1 - - - 0x02710D 09:B0FD: 02        .byte $02   ; 
- D 1 - - - 0x02710E 09:B0FE: 02        .byte $02   ; 
- D 1 - - - 0x02710F 09:B0FF: 02        .byte $02   ; 
- D 1 - - - 0x027110 09:B100: 01        .byte $01   ; 
- D 1 - - - 0x027111 09:B101: 01        .byte $01   ; 
- D 1 - - - 0x027112 09:B102: 02        .byte $02   ; 
- D 1 - - - 0x027113 09:B103: 02        .byte $02   ; 
- D 1 - - - 0x027114 09:B104: 01        .byte $01   ; 
- D 1 - - - 0x027115 09:B105: 02        .byte $02   ; 
- D 1 - - - 0x027116 09:B106: 10        .byte $10   ; 
- D 1 - - - 0x027117 09:B107: 10        .byte $10   ; 
- D 1 - - - 0x027118 09:B108: 10        .byte $10   ; 
- D 1 - - - 0x027119 09:B109: 10        .byte $10   ; 
- D 1 - - - 0x02711A 09:B10A: 10        .byte $10   ; 
- D 1 - - - 0x02711B 09:B10B: 10        .byte $10   ; 
- D 1 - - - 0x02711C 09:B10C: 10        .byte $10   ; 
- D 1 - - - 0x02711D 09:B10D: 10        .byte $10   ; 
- D 1 - - - 0x02711E 09:B10E: 10        .byte $10   ; 
- D 1 - - - 0x02711F 09:B10F: 10        .byte $10   ; 
- D 1 - - - 0x027120 09:B110: 10        .byte $10   ; 



tbl_B111:
- D 1 - - - 0x027121 09:B111: 10        .byte $10   ; 00 Leo
- D 1 - - - 0x027122 09:B112: 08        .byte $08   ; 01 Raph
- D 1 - - - 0x027123 09:B113: 10        .byte $10   ; 02 Mike
- D 1 - - - 0x027124 09:B114: 10        .byte $10   ; 03 Don
- D 1 - - - 0x027125 09:B115: 10        .byte $10   ; 04 Casey
- D 1 - - - 0x027126 09:B116: 10        .byte $10   ; 05 Hot
- D 1 - - - 0x027127 09:B117: 15        .byte $15   ; 06 Shred



tbl_B118:
- D 1 - - - 0x027128 09:B118: 44        .byte $44   ; 00
- D 1 - - - 0x027129 09:B119: 51        .byte $51   ; 01



sub_B11A:
C - - - - - 0x02712A 09:B11A: AD 36 04  LDA ram_X_pos_max_object + 6
C - - - - - 0x02712D 09:B11D: D0 21     BNE bra_B140
C - - - - - 0x02712F 09:B11F: AD A6 05  LDA ram_05A6
C - - - - - 0x027132 09:B122: 29 C0     AND #$C0
C - - - - - 0x027134 09:B124: D0 1A     BNE bra_B140
C - - - - - 0x027136 09:B126: A0 06     LDY #$06
C - - - - - 0x027138 09:B128: 20 0C D2  JSR sub_0x03D21C
C - - - - - 0x02713B 09:B12B: C9 14     CMP #$14
C - - - - - 0x02713D 09:B12D: B0 10     BCS bra_B13F_RTS
C - - - - - 0x02713F 09:B12F: AD 16 04  LDA ram_0416
C - - - - - 0x027142 09:B132: FD 10 04  SBC ram_Y_pos_hi_object,X
C - - - - - 0x027145 09:B135: 90 03     BCC bra_B13A
C - - - - - 0x027147 09:B137: C9 08     CMP #$08
C - - - - - 0x027149 09:B139: 60        RTS
bra_B13A:
C - - - - - 0x02714A 09:B13A: 20 FC D1  JSR sub_0x03D20C_reverse_byte
C - - - - - 0x02714D 09:B13D: C9 20     CMP #$20
bra_B13F_RTS:
C - - - - - 0x02714F 09:B13F: 60        RTS
bra_B140:
C - - - - - 0x027150 09:B140: 38        SEC
C - - - - - 0x027151 09:B141: 60        RTS



loc_B142:
sub_B142:
.export sub_0x027152
sub_0x027152:
C D 1 - - - 0x027152 09:B142: A2 02     LDX #$02
C - - - - - 0x027154 09:B144: 86 01     STX ram_0001
bra_B146_loop:
C - - - - - 0x027156 09:B146: A5 01     LDA ram_0001
C - - - - - 0x027158 09:B148: 4A        LSR
C - - - - - 0x027159 09:B149: AA        TAX
C - - - - - 0x02715A 09:B14A: BC 00 04  LDY ram_anim_object,X
C - - - - - 0x02715D 09:B14D: 10 25     BPL bra_B174
C - - - - - 0x02715F 09:B14F: BD 50 05  LDA ram_id_object,X
C - - - - - 0x027162 09:B152: 0A        ASL
C - - - - - 0x027163 09:B153: A8        TAY
C - - - - - 0x027164 09:B154: B9 4E B3  LDA tbl_B34E,Y
C - - - - - 0x027167 09:B157: 85 08     STA ram_0008
C - - - - - 0x027169 09:B159: B9 4F B3  LDA tbl_B34E + 1,Y
C - - - - - 0x02716C 09:B15C: 85 09     STA ram_0009
C - - - - - 0x02716E 09:B15E: BD 00 04  LDA ram_anim_object,X
C - - - - - 0x027171 09:B161: 29 7F     AND #$7F
C - - - - - 0x027173 09:B163: A8        TAY
C - - - - - 0x027174 09:B164: B1 08     LDA (ram_0008),Y
C - - - - - 0x027176 09:B166: 0A        ASL
C - - - - - 0x027177 09:B167: A8        TAY
C - - - - - 0x027178 09:B168: A6 01     LDX ram_0001
C - - - - - 0x02717A 09:B16A: AD 2B 01  LDA ram_option_skin
C - - - - - 0x02717D 09:B16D: 29 02     AND #$02
C - - - - - 0x02717F 09:B16F: 20 EA D5  JSR sub_0x03D5FA
bra_B174:
C - - - - - 0x027184 09:B174: C6 01     DEC ram_0001
C - - - - - 0x027186 09:B176: C6 01     DEC ram_0001
C - - - - - 0x027188 09:B178: 10 CC     BPL bra_B146_loop
C - - - - - 0x02718A 09:B17A: 60        RTS



off_B17B_00:
off_B17B_01:
off_B17B_02:
off_B17B_03:
- D 1 - I - 0x02718B 09:B17B: 03        .byte $03   ; 
- D 1 - I - 0x02718C 09:B17C: 03        .byte $03   ; 
- D 1 - I - 0x02718D 09:B17D: 03        .byte $03   ; 
- D 1 - I - 0x02718E 09:B17E: 04        .byte $04   ; 
- D 1 - I - 0x02718F 09:B17F: 04        .byte $04   ; 
- D 1 - I - 0x027190 09:B180: 04        .byte $04   ; 
- D 1 - I - 0x027191 09:B181: 04        .byte $04   ; 
- D 1 - I - 0x027192 09:B182: 04        .byte $04   ; 
- D 1 - I - 0x027193 09:B183: 00        .byte $00   ; 
- D 1 - I - 0x027194 09:B184: 00        .byte $00   ; 
- D 1 - I - 0x027195 09:B185: 00        .byte $00   ; 
- D 1 - I - 0x027196 09:B186: 00        .byte $00   ; 
- D 1 - I - 0x027197 09:B187: 00        .byte $00   ; 
- D 1 - I - 0x027198 09:B188: 00        .byte $00   ; 
- D 1 - I - 0x027199 09:B189: 00        .byte $00   ; 
- D 1 - I - 0x02719A 09:B18A: 01        .byte $01   ; 
- D 1 - I - 0x02719B 09:B18B: 03        .byte $03   ; 
- D 1 - I - 0x02719C 09:B18C: 03        .byte $03   ; 
- D 1 - I - 0x02719D 09:B18D: 01        .byte $01   ; 
- D 1 - I - 0x02719E 09:B18E: 01        .byte $01   ; 
- D 1 - I - 0x02719F 09:B18F: 01        .byte $01   ; 
- D 1 - I - 0x0271A0 09:B190: 01        .byte $01   ; 
- - - - - - 0x0271A1 09:B191: 01        .byte $01   ; 
- D 1 - I - 0x0271A2 09:B192: 06        .byte $06   ; 
- D 1 - I - 0x0271A3 09:B193: 06        .byte $06   ; 
- D 1 - I - 0x0271A4 09:B194: 00        .byte $00   ; 
- D 1 - I - 0x0271A5 09:B195: 06        .byte $06   ; 
- D 1 - I - 0x0271A6 09:B196: 00        .byte $00   ; 
- D 1 - I - 0x0271A7 09:B197: 00        .byte $00   ; 
- D 1 - I - 0x0271A8 09:B198: 02        .byte $02   ; 
- D 1 - I - 0x0271A9 09:B199: 01        .byte $01   ; 
- D 1 - I - 0x0271AA 09:B19A: 02        .byte $02   ; 
- D 1 - I - 0x0271AB 09:B19B: 01        .byte $01   ; 
- D 1 - I - 0x0271AC 09:B19C: 07        .byte $07   ; 
- D 1 - I - 0x0271AD 09:B19D: 07        .byte $07   ; 
- D 1 - I - 0x0271AE 09:B19E: 07        .byte $07   ; 
- D 1 - I - 0x0271AF 09:B19F: 03        .byte $03   ; 
- D 1 - I - 0x0271B0 09:B1A0: 07        .byte $07   ; 
- D 1 - I - 0x0271B1 09:B1A1: 06        .byte $06   ; 
- D 1 - I - 0x0271B2 09:B1A2: 07        .byte $07   ; 
- D 1 - I - 0x0271B3 09:B1A3: 01        .byte $01   ; 
- D 1 - I - 0x0271B4 09:B1A4: 01        .byte $01   ; 
- D 1 - I - 0x0271B5 09:B1A5: 01        .byte $01   ; 
- D 1 - I - 0x0271B6 09:B1A6: 05        .byte $05   ; 
- D 1 - I - 0x0271B7 09:B1A7: 05        .byte $05   ; 
- D 1 - I - 0x0271B8 09:B1A8: 05        .byte $05   ; 
- D 1 - I - 0x0271B9 09:B1A9: 03        .byte $03   ; 
- D 1 - I - 0x0271BA 09:B1AA: 05        .byte $05   ; 
- D 1 - I - 0x0271BB 09:B1AB: 05        .byte $05   ; 
- D 1 - I - 0x0271BC 09:B1AC: 02        .byte $02   ; 
- D 1 - I - 0x0271BD 09:B1AD: 01        .byte $01   ; 
- D 1 - I - 0x0271BE 09:B1AE: 02        .byte $02   ; 
- D 1 - I - 0x0271BF 09:B1AF: 01        .byte $01   ; 
- D 1 - I - 0x0271C0 09:B1B0: 07        .byte $07   ; 
- D 1 - I - 0x0271C1 09:B1B1: 02        .byte $02   ; 
- D 1 - I - 0x0271C2 09:B1B2: 02        .byte $02   ; 
- D 1 - I - 0x0271C3 09:B1B3: 01        .byte $01   ; 
- D 1 - I - 0x0271C4 09:B1B4: 02        .byte $02   ; 
- D 1 - I - 0x0271C5 09:B1B5: 02        .byte $02   ; 
- - - - - - 0x0271C6 09:B1B6: 00        .byte $00   ; 
- - - - - - 0x0271C7 09:B1B7: 00        .byte $00   ; 
- - - - - - 0x0271C8 09:B1B8: 00        .byte $00   ; 
- - - - - - 0x0271C9 09:B1B9: 00        .byte $00   ; 
- - - - - - 0x0271CA 09:B1BA: 00        .byte $00   ; 
- - - - - - 0x0271CB 09:B1BB: 00        .byte $00   ; 
- - - - - - 0x0271CC 09:B1BC: 00        .byte $00   ; 
- - - - - - 0x0271CD 09:B1BD: 00        .byte $00   ; 
- D 1 - I - 0x0271CE 09:B1BE: 2D        .byte $2D   ; 
- D 1 - I - 0x0271CF 09:B1BF: 2E        .byte $2E   ; 
- D 1 - I - 0x0271D0 09:B1C0: 2F        .byte $2F   ; 
- D 1 - I - 0x0271D1 09:B1C1: 2E        .byte $2E   ; 
- - - - - - 0x0271D2 09:B1C2: 2E        .byte $2E   ; 
- D 1 - I - 0x0271D3 09:B1C3: 2F        .byte $2F   ; 
- - - - - - 0x0271D4 09:B1C4: 2E        .byte $2E   ; 
- - - - - - 0x0271D5 09:B1C5: 00        .byte $00   ; 
- - - - - - 0x0271D6 09:B1C6: 00        .byte $00   ; 
- D 1 - I - 0x0271D7 09:B1C7: 2E        .byte $2E   ; 
- D 1 - I - 0x0271D8 09:B1C8: 2E        .byte $2E   ; 
- D 1 - I - 0x0271D9 09:B1C9: 2F        .byte $2F   ; 
- D 1 - I - 0x0271DA 09:B1CA: 2F        .byte $2F   ; 
- D 1 - I - 0x0271DB 09:B1CB: 2D        .byte $2D   ; 
- D 1 - I - 0x0271DC 09:B1CC: 2E        .byte $2E   ; 
- D 1 - I - 0x0271DD 09:B1CD: 2C        .byte $2C   ; 
- D 1 - I - 0x0271DE 09:B1CE: 2C        .byte $2C   ; 
- D 1 - I - 0x0271DF 09:B1CF: 2A        .byte $2A   ; 
- D 1 - I - 0x0271E0 09:B1D0: 2A        .byte $2A   ; 
- D 1 - I - 0x0271E1 09:B1D1: 2A        .byte $2A   ; 
- D 1 - I - 0x0271E2 09:B1D2: 2A        .byte $2A   ; 
- D 1 - I - 0x0271E3 09:B1D3: 2B        .byte $2B   ; 
- D 1 - I - 0x0271E4 09:B1D4: 2D        .byte $2D   ; 
- D 1 - I - 0x0271E5 09:B1D5: 2D        .byte $2D   ; 
- D 1 - I - 0x0271E6 09:B1D6: 2D        .byte $2D   ; 
- D 1 - I - 0x0271E7 09:B1D7: 2D        .byte $2D   ; 
- D 1 - I - 0x0271E8 09:B1D8: 2D        .byte $2D   ; 
- D 1 - I - 0x0271E9 09:B1D9: 31        .byte $31   ; 
- D 1 - I - 0x0271EA 09:B1DA: 30        .byte $30   ; 
- D 1 - I - 0x0271EB 09:B1DB: 40        .byte $40   ; 
- D 1 - I - 0x0271EC 09:B1DC: 2B        .byte $2B   ; 
- D 1 - I - 0x0271ED 09:B1DD: 40        .byte $40   ; 
- D 1 - I - 0x0271EE 09:B1DE: 40        .byte $40   ; 
- D 1 - I - 0x0271EF 09:B1DF: 40        .byte $40   ; 
- - - - - - 0x0271F0 09:B1E0: 00        .byte $00   ; 



off_B1E1_04:
- D 1 - I - 0x0271F1 09:B1E1: 09        .byte $09   ; 
- D 1 - I - 0x0271F2 09:B1E2: 09        .byte $09   ; 
- D 1 - I - 0x0271F3 09:B1E3: 0A        .byte $0A   ; 
- D 1 - I - 0x0271F4 09:B1E4: 0A        .byte $0A   ; 
- D 1 - I - 0x0271F5 09:B1E5: 0A        .byte $0A   ; 
- D 1 - I - 0x0271F6 09:B1E6: 0A        .byte $0A   ; 
- D 1 - I - 0x0271F7 09:B1E7: 0A        .byte $0A   ; 
- D 1 - I - 0x0271F8 09:B1E8: 09        .byte $09   ; 
- D 1 - I - 0x0271F9 09:B1E9: 09        .byte $09   ; 
- D 1 - I - 0x0271FA 09:B1EA: 09        .byte $09   ; 
- D 1 - I - 0x0271FB 09:B1EB: 09        .byte $09   ; 
- D 1 - I - 0x0271FC 09:B1EC: 09        .byte $09   ; 
- D 1 - I - 0x0271FD 09:B1ED: 09        .byte $09   ; 
- D 1 - I - 0x0271FE 09:B1EE: 09        .byte $09   ; 
- D 1 - I - 0x0271FF 09:B1EF: 0B        .byte $0B   ; 
- D 1 - I - 0x027200 09:B1F0: 09        .byte $09   ; 
- D 1 - I - 0x027201 09:B1F1: 09        .byte $09   ; 
- D 1 - I - 0x027202 09:B1F2: 0B        .byte $0B   ; 
- D 1 - I - 0x027203 09:B1F3: 0C        .byte $0C   ; 
- D 1 - I - 0x027204 09:B1F4: 0B        .byte $0B   ; 
- D 1 - I - 0x027205 09:B1F5: 0C        .byte $0C   ; 
- D 1 - I - 0x027206 09:B1F6: 0C        .byte $0C   ; 
- D 1 - I - 0x027207 09:B1F7: 0C        .byte $0C   ; 
- D 1 - I - 0x027208 09:B1F8: 09        .byte $09   ; 
- D 1 - I - 0x027209 09:B1F9: 09        .byte $09   ; 
- D 1 - I - 0x02720A 09:B1FA: 0B        .byte $0B   ; 
- D 1 - I - 0x02720B 09:B1FB: 0B        .byte $0B   ; 
- D 1 - I - 0x02720C 09:B1FC: 0D        .byte $0D   ; 
- D 1 - I - 0x02720D 09:B1FD: 0B        .byte $0B   ; 
- D 1 - I - 0x02720E 09:B1FE: 0D        .byte $0D   ; 
- D 1 - I - 0x02720F 09:B1FF: 0D        .byte $0D   ; 
- D 1 - I - 0x027210 09:B200: 0B        .byte $0B   ; 
- D 1 - I - 0x027211 09:B201: 0B        .byte $0B   ; 
- D 1 - I - 0x027212 09:B202: 0B        .byte $0B   ; 
- D 1 - I - 0x027213 09:B203: 0C        .byte $0C   ; 
- D 1 - I - 0x027214 09:B204: 0F        .byte $0F   ; 
- D 1 - I - 0x027215 09:B205: 0F        .byte $0F   ; 
- D 1 - I - 0x027216 09:B206: 0F        .byte $0F   ; 
- D 1 - I - 0x027217 09:B207: 0F        .byte $0F   ; 
- D 1 - I - 0x027218 09:B208: 0D        .byte $0D   ; 
- D 1 - I - 0x027219 09:B209: 0F        .byte $0F   ; 
- D 1 - I - 0x02721A 09:B20A: 0D        .byte $0D   ; 
- D 1 - I - 0x02721B 09:B20B: 0F        .byte $0F   ; 
- D 1 - I - 0x02721C 09:B20C: 0A        .byte $0A   ; 
- D 1 - I - 0x02721D 09:B20D: 0D        .byte $0D   ; 
- D 1 - I - 0x02721E 09:B20E: 09        .byte $09   ; 
- D 1 - I - 0x02721F 09:B20F: 0E        .byte $0E   ; 
- D 1 - I - 0x027220 09:B210: 0E        .byte $0E   ; 
- D 1 - I - 0x027221 09:B211: 0E        .byte $0E   ; 
- D 1 - I - 0x027222 09:B212: 0F        .byte $0F   ; 
- D 1 - I - 0x027223 09:B213: 0A        .byte $0A   ; 
- D 1 - I - 0x027224 09:B214: 0E        .byte $0E   ; 
- D 1 - I - 0x027225 09:B215: 0E        .byte $0E   ; 
- D 1 - I - 0x027226 09:B216: 0E        .byte $0E   ; 
- - - - - - 0x027227 09:B217: 00        .byte $00   ; 
- - - - - - 0x027228 09:B218: 00        .byte $00   ; 
- D 1 - I - 0x027229 09:B219: 0C        .byte $0C   ; 
- D 1 - I - 0x02722A 09:B21A: 32        .byte $32   ; 
- D 1 - I - 0x02722B 09:B21B: 32        .byte $32   ; 
- D 1 - I - 0x02722C 09:B21C: 32        .byte $32   ; 
- D 1 - I - 0x02722D 09:B21D: 32        .byte $32   ; 
- - - - - - 0x02722E 09:B21E: 32        .byte $32   ; 
- - - - - - 0x02722F 09:B21F: 32        .byte $32   ; 
- - - - - - 0x027230 09:B220: 32        .byte $32   ; 
- - - - - - 0x027231 09:B221: 00        .byte $00   ; 
- - - - - - 0x027232 09:B222: 00        .byte $00   ; 
- D 1 - I - 0x027233 09:B223: 33        .byte $33   ; 
- D 1 - I - 0x027234 09:B224: 33        .byte $33   ; 
- D 1 - I - 0x027235 09:B225: 33        .byte $33   ; 
- - - - - - 0x027236 09:B226: 33        .byte $33   ; 
- - - - - - 0x027237 09:B227: 33        .byte $33   ; 
- - - - - - 0x027238 09:B228: 33        .byte $33   ; 
- - - - - - 0x027239 09:B229: 00        .byte $00   ; 
- - - - - - 0x02723A 09:B22A: 00        .byte $00   ; 
- - - - - - 0x02723B 09:B22B: 00        .byte $00   ; 
- - - - - - 0x02723C 09:B22C: 00        .byte $00   ; 
- D 1 - I - 0x02723D 09:B22D: 34        .byte $34   ; 
- D 1 - I - 0x02723E 09:B22E: 34        .byte $34   ; 
- D 1 - I - 0x02723F 09:B22F: 34        .byte $34   ; 
- D 1 - I - 0x027240 09:B230: 33        .byte $33   ; 
- D 1 - I - 0x027241 09:B231: 34        .byte $34   ; 
- D 1 - I - 0x027242 09:B232: 34        .byte $34   ; 
- D 1 - I - 0x027243 09:B233: 35        .byte $35   ; 
- D 1 - I - 0x027244 09:B234: 35        .byte $35   ; 
- D 1 - I - 0x027245 09:B235: 35        .byte $35   ; 
- D 1 - I - 0x027246 09:B236: 35        .byte $35   ; 
- D 1 - I - 0x027247 09:B237: 35        .byte $35   ; 
- D 1 - I - 0x027248 09:B238: 33        .byte $33   ; 
- D 1 - I - 0x027249 09:B239: 35        .byte $35   ; 



off_B23A_05:
- D 1 - I - 0x02724A 09:B23A: 14        .byte $14   ; 
- D 1 - I - 0x02724B 09:B23B: 10        .byte $10   ; 
- D 1 - I - 0x02724C 09:B23C: 10        .byte $10   ; 
- D 1 - I - 0x02724D 09:B23D: 15        .byte $15   ; 
- D 1 - I - 0x02724E 09:B23E: 15        .byte $15   ; 
- D 1 - I - 0x02724F 09:B23F: 15        .byte $15   ; 
- D 1 - I - 0x027250 09:B240: 15        .byte $15   ; 
- D 1 - I - 0x027251 09:B241: 15        .byte $15   ; 
- D 1 - I - 0x027252 09:B242: 14        .byte $14   ; 
- D 1 - I - 0x027253 09:B243: 14        .byte $14   ; 
- D 1 - I - 0x027254 09:B244: 14        .byte $14   ; 
- D 1 - I - 0x027255 09:B245: 11        .byte $11   ; 
- D 1 - I - 0x027256 09:B246: 11        .byte $11   ; 
- D 1 - I - 0x027257 09:B247: 10        .byte $10   ; 
- D 1 - I - 0x027258 09:B248: 10        .byte $10   ; 
- D 1 - I - 0x027259 09:B249: 12        .byte $12   ; 
- D 1 - I - 0x02725A 09:B24A: 11        .byte $11   ; 
- D 1 - I - 0x02725B 09:B24B: 11        .byte $11   ; 
- D 1 - I - 0x02725C 09:B24C: 1A        .byte $1A   ; 
- D 1 - I - 0x02725D 09:B24D: 17        .byte $17   ; 
- D 1 - I - 0x02725E 09:B24E: 1A        .byte $1A   ; 
- D 1 - I - 0x02725F 09:B24F: 16        .byte $16   ; 
- D 1 - I - 0x027260 09:B250: 11        .byte $11   ; 
- D 1 - I - 0x027261 09:B251: 16        .byte $16   ; 
- D 1 - I - 0x027262 09:B252: 16        .byte $16   ; 
- D 1 - I - 0x027263 09:B253: 16        .byte $16   ; 
- D 1 - I - 0x027264 09:B254: 13        .byte $13   ; 
- D 1 - I - 0x027265 09:B255: 18        .byte $18   ; 
- D 1 - I - 0x027266 09:B256: 11        .byte $11   ; 
- D 1 - I - 0x027267 09:B257: 16        .byte $16   ; 
- D 1 - I - 0x027268 09:B258: 13        .byte $13   ; 
- D 1 - I - 0x027269 09:B259: 12        .byte $12   ; 
- D 1 - I - 0x02726A 09:B25A: 12        .byte $12   ; 
- D 1 - I - 0x02726B 09:B25B: 13        .byte $13   ; 
- D 1 - I - 0x02726C 09:B25C: 19        .byte $19   ; 
- D 1 - I - 0x02726D 09:B25D: 13        .byte $13   ; 
- - - - - - 0x02726E 09:B25E: 18        .byte $18   ; 
- D 1 - I - 0x02726F 09:B25F: 17        .byte $17   ; 
- - - - - - 0x027270 09:B260: 17        .byte $17   ; 
- - - - - - 0x027271 09:B261: 17        .byte $17   ; 
- - - - - - 0x027272 09:B262: 17        .byte $17   ; 
- - - - - - 0x027273 09:B263: 17        .byte $17   ; 
- - - - - - 0x027274 09:B264: 17        .byte $17   ; 
- - - - - - 0x027275 09:B265: 17        .byte $17   ; 
- - - - - - 0x027276 09:B266: 17        .byte $17   ; 
- - - - - - 0x027277 09:B267: 17        .byte $17   ; 
- - - - - - 0x027278 09:B268: 17        .byte $17   ; 
- D 1 - I - 0x027279 09:B269: 12        .byte $12   ; 
- D 1 - I - 0x02727A 09:B26A: 13        .byte $13   ; 
- D 1 - I - 0x02727B 09:B26B: 13        .byte $13   ; 
- D 1 - I - 0x02727C 09:B26C: 19        .byte $19   ; 
- D 1 - I - 0x02727D 09:B26D: 36        .byte $36   ; 
- D 1 - I - 0x02727E 09:B26E: 36        .byte $36   ; 
- D 1 - I - 0x02727F 09:B26F: 3A        .byte $3A   ; 
- D 1 - I - 0x027280 09:B270: 38        .byte $38   ; 
- D 1 - I - 0x027281 09:B271: 39        .byte $39   ; 
- D 1 - I - 0x027282 09:B272: 38        .byte $38   ; 
- D 1 - I - 0x027283 09:B273: 39        .byte $39   ; 
- D 1 - I - 0x027284 09:B274: 39        .byte $39   ; 
- D 1 - I - 0x027285 09:B275: 37        .byte $37   ; 
- D 1 - I - 0x027286 09:B276: 36        .byte $36   ; 
- D 1 - I - 0x027287 09:B277: 37        .byte $37   ; 
- D 1 - I - 0x027288 09:B278: 37        .byte $37   ; 
- D 1 - I - 0x027289 09:B279: 37        .byte $37   ; 
- - - - - - 0x02728A 09:B27A: 00        .byte $00   ; 
- - - - - - 0x02728B 09:B27B: 00        .byte $00   ; 
- - - - - - 0x02728C 09:B27C: 00        .byte $00   ; 
- D 1 - I - 0x02728D 09:B27D: 41        .byte $41   ; 
- D 1 - I - 0x02728E 09:B27E: 41        .byte $41   ; 



off_B27F_06:
- D 1 - I - 0x02728F 09:B27F: 27        .byte $27   ; 
- D 1 - I - 0x027290 09:B280: 27        .byte $27   ; 
- D 1 - I - 0x027291 09:B281: 27        .byte $27   ; 
- D 1 - I - 0x027292 09:B282: 20        .byte $20   ; 
- D 1 - I - 0x027293 09:B283: 20        .byte $20   ; 
- D 1 - I - 0x027294 09:B284: 20        .byte $20   ; 
- D 1 - I - 0x027295 09:B285: 20        .byte $20   ; 
- D 1 - I - 0x027296 09:B286: 20        .byte $20   ; 
- D 1 - I - 0x027297 09:B287: 27        .byte $27   ; 
- D 1 - I - 0x027298 09:B288: 27        .byte $27   ; 
- D 1 - I - 0x027299 09:B289: 27        .byte $27   ; 
- D 1 - I - 0x02729A 09:B28A: 27        .byte $27   ; 
- D 1 - I - 0x02729B 09:B28B: 29        .byte $29   ; 
- D 1 - I - 0x02729C 09:B28C: 25        .byte $25   ; 
- D 1 - I - 0x02729D 09:B28D: 1B        .byte $1B   ; 
- D 1 - I - 0x02729E 09:B28E: 27        .byte $27   ; 
- D 1 - I - 0x02729F 09:B28F: 20        .byte $20   ; 
- D 1 - I - 0x0272A0 09:B290: 24        .byte $24   ; 
- D 1 - I - 0x0272A1 09:B291: 26        .byte $26   ; 
- D 1 - I - 0x0272A2 09:B292: 1B        .byte $1B   ; 
- D 1 - I - 0x0272A3 09:B293: 25        .byte $25   ; 
- D 1 - I - 0x0272A4 09:B294: 27        .byte $27   ; 
- D 1 - I - 0x0272A5 09:B295: 22        .byte $22   ; 
- D 1 - I - 0x0272A6 09:B296: 1B        .byte $1B   ; 
- D 1 - I - 0x0272A7 09:B297: 1B        .byte $1B   ; 
- D 1 - I - 0x0272A8 09:B298: 1E        .byte $1E   ; 
- D 1 - I - 0x0272A9 09:B299: 1E        .byte $1E   ; 
- D 1 - I - 0x0272AA 09:B29A: 1E        .byte $1E   ; 
- D 1 - I - 0x0272AB 09:B29B: 1E        .byte $1E   ; 
- D 1 - I - 0x0272AC 09:B29C: 1E        .byte $1E   ; 
- D 1 - I - 0x0272AD 09:B29D: 1E        .byte $1E   ; 
- D 1 - I - 0x0272AE 09:B29E: 1B        .byte $1B   ; 
- D 1 - I - 0x0272AF 09:B29F: 1C        .byte $1C   ; 
- D 1 - I - 0x0272B0 09:B2A0: 24        .byte $24   ; 
- D 1 - I - 0x0272B1 09:B2A1: 28        .byte $28   ; 
- D 1 - I - 0x0272B2 09:B2A2: 22        .byte $22   ; 
- D 1 - I - 0x0272B3 09:B2A3: 1F        .byte $1F   ; 
- D 1 - I - 0x0272B4 09:B2A4: 1F        .byte $1F   ; 
- D 1 - I - 0x0272B5 09:B2A5: 29        .byte $29   ; 
- D 1 - I - 0x0272B6 09:B2A6: 29        .byte $29   ; 
- D 1 - I - 0x0272B7 09:B2A7: 29        .byte $29   ; 
- D 1 - I - 0x0272B8 09:B2A8: 23        .byte $23   ; 
- D 1 - I - 0x0272B9 09:B2A9: 21        .byte $21   ; 
- - - - - - 0x0272BA 09:B2AA: 21        .byte $21   ; 
- - - - - - 0x0272BB 09:B2AB: 21        .byte $21   ; 
- - - - - - 0x0272BC 09:B2AC: 21        .byte $21   ; 
- D 1 - I - 0x0272BD 09:B2AD: 25        .byte $25   ; 
- D 1 - I - 0x0272BE 09:B2AE: 25        .byte $25   ; 
- D 1 - I - 0x0272BF 09:B2AF: 25        .byte $25   ; 
- - - - - - 0x0272C0 09:B2B0: 25        .byte $25   ; 
- - - - - - 0x0272C1 09:B2B1: 25        .byte $25   ; 
- - - - - - 0x0272C2 09:B2B2: 25        .byte $25   ; 
- D 1 - I - 0x0272C3 09:B2B3: 1F        .byte $1F   ; 
- D 1 - I - 0x0272C4 09:B2B4: 22        .byte $22   ; 
- D 1 - I - 0x0272C5 09:B2B5: 1D        .byte $1D   ; 
- D 1 - I - 0x0272C6 09:B2B6: 21        .byte $21   ; 
- D 1 - I - 0x0272C7 09:B2B7: 21        .byte $21   ; 
- D 1 - I - 0x0272C8 09:B2B8: 3B        .byte $3B   ; 
- D 1 - I - 0x0272C9 09:B2B9: 3B        .byte $3B   ; 
- D 1 - I - 0x0272CA 09:B2BA: 3B        .byte $3B   ; 
- - - - - - 0x0272CB 09:B2BB: 3B        .byte $3B   ; 
- - - - - - 0x0272CC 09:B2BC: 3B        .byte $3B   ; 
- - - - - - 0x0272CD 09:B2BD: 3B        .byte $3B   ; 
- - - - - - 0x0272CE 09:B2BE: 00        .byte $00   ; 
- - - - - - 0x0272CF 09:B2BF: 00        .byte $00   ; 
- - - - - - 0x0272D0 09:B2C0: 00        .byte $00   ; 
- D 1 - I - 0x0272D1 09:B2C1: 3D        .byte $3D   ; 
- D 1 - I - 0x0272D2 09:B2C2: 3C        .byte $3C   ; 
- D 1 - I - 0x0272D3 09:B2C3: 3F        .byte $3F   ; 
- D 1 - I - 0x0272D4 09:B2C4: 3F        .byte $3F   ; 
- D 1 - I - 0x0272D5 09:B2C5: 3F        .byte $3F   ; 
- D 1 - I - 0x0272D6 09:B2C6: 3F        .byte $3F   ; 
- D 1 - I - 0x0272D7 09:B2C7: 3E        .byte $3E   ; 
- D 1 - I - 0x0272D8 09:B2C8: 3E        .byte $3E   ; 
- D 1 - I - 0x0272D9 09:B2C9: 3E        .byte $3E   ; 



.export tbl_0x0272DA
tbl_0x0272DA:
- D 1 - - - 0x0272DA 09:B2CA: 02        .byte $02   ; 
- D 1 - - - 0x0272DB 09:B2CB: 00        .byte $00   ; 
- D 1 - - - 0x0272DC 09:B2CC: 03        .byte $03   ; 
- D 1 - - - 0x0272DD 09:B2CD: 00        .byte $00   ; 
- D 1 - - - 0x0272DE 09:B2CE: 04        .byte $04   ; 
- D 1 - - - 0x0272DF 09:B2CF: 00        .byte $00   ; 
- D 1 - - - 0x0272E0 09:B2D0: 05        .byte $05   ; 
- D 1 - - - 0x0272E1 09:B2D1: 00        .byte $00   ; 
- D 1 - - - 0x0272E2 09:B2D2: 06        .byte $06   ; 
- D 1 - - - 0x0272E3 09:B2D3: 00        .byte $00   ; 
- D 1 - - - 0x0272E4 09:B2D4: 07        .byte $07   ; 
- D 1 - - - 0x0272E5 09:B2D5: 00        .byte $00   ; 
- D 1 - - - 0x0272E6 09:B2D6: 08        .byte $08   ; 
- D 1 - - - 0x0272E7 09:B2D7: 00        .byte $00   ; 
- D 1 - - - 0x0272E8 09:B2D8: 09        .byte $09   ; 
- D 1 - - - 0x0272E9 09:B2D9: 00        .byte $00   ; 
- - - - - - 0x0272EA 09:B2DA: 0A        .byte $0A   ; 
- - - - - - 0x0272EB 09:B2DB: 00        .byte $00   ; 
- D 1 - - - 0x0272EC 09:B2DC: 16        .byte $16   ; 
- D 1 - - - 0x0272ED 09:B2DD: 14        .byte $14   ; 
- D 1 - - - 0x0272EE 09:B2DE: 18        .byte $18   ; 
- D 1 - - - 0x0272EF 09:B2DF: 14        .byte $14   ; 
- D 1 - - - 0x0272F0 09:B2E0: 17        .byte $17   ; 
- D 1 - - - 0x0272F1 09:B2E1: 14        .byte $14   ; 
- D 1 - - - 0x0272F2 09:B2E2: 1A        .byte $1A   ; 
- D 1 - - - 0x0272F3 09:B2E3: 14        .byte $14   ; 
- D 1 - - - 0x0272F4 09:B2E4: 1B        .byte $1B   ; 
- D 1 - - - 0x0272F5 09:B2E5: 14        .byte $14   ; 
- D 1 - - - 0x0272F6 09:B2E6: 1C        .byte $1C   ; 
- D 1 - - - 0x0272F7 09:B2E7: 14        .byte $14   ; 
- D 1 - - - 0x0272F8 09:B2E8: 19        .byte $19   ; 
- D 1 - - - 0x0272F9 09:B2E9: 14        .byte $14   ; 
- D 1 - - - 0x0272FA 09:B2EA: 2A        .byte $2A   ; 
- D 1 - - - 0x0272FB 09:B2EB: 28        .byte $28   ; 
- D 1 - - - 0x0272FC 09:B2EC: 2B        .byte $2B   ; 
- D 1 - - - 0x0272FD 09:B2ED: 28        .byte $28   ; 
- D 1 - - - 0x0272FE 09:B2EE: 2C        .byte $2C   ; 
- D 1 - - - 0x0272FF 09:B2EF: 28        .byte $28   ; 
- D 1 - - - 0x027300 09:B2F0: 2D        .byte $2D   ; 
- D 1 - - - 0x027301 09:B2F1: 28        .byte $28   ; 
- D 1 - - - 0x027302 09:B2F2: 2E        .byte $2E   ; 
- D 1 - - - 0x027303 09:B2F3: 28        .byte $28   ; 
- D 1 - - - 0x027304 09:B2F4: 2F        .byte $2F   ; 
- D 1 - - - 0x027305 09:B2F5: 28        .byte $28   ; 
- D 1 - - - 0x027306 09:B2F6: 2A        .byte $2A   ; 
- D 1 - - - 0x027307 09:B2F7: 29        .byte $29   ; 
- D 1 - - - 0x027308 09:B2F8: 2C        .byte $2C   ; 
- D 1 - - - 0x027309 09:B2F9: 29        .byte $29   ; 
- D 1 - - - 0x02730A 09:B2FA: 2D        .byte $2D   ; 
- D 1 - - - 0x02730B 09:B2FB: 29        .byte $29   ; 
- D 1 - - - 0x02730C 09:B2FC: 30        .byte $30   ; 
- D 1 - - - 0x02730D 09:B2FD: 29        .byte $29   ; 
- D 1 - - - 0x02730E 09:B2FE: 2B        .byte $2B   ; 
- D 1 - - - 0x02730F 09:B2FF: 29        .byte $29   ; 
- D 1 - - - 0x027310 09:B300: 40        .byte $40   ; 
- D 1 - - - 0x027311 09:B301: 3C        .byte $3C   ; 
- D 1 - - - 0x027312 09:B302: 40        .byte $40   ; 
- D 1 - - - 0x027313 09:B303: 3D        .byte $3D   ; 
- D 1 - - - 0x027314 09:B304: 41        .byte $41   ; 
- D 1 - - - 0x027315 09:B305: 3C        .byte $3C   ; 
- D 1 - - - 0x027316 09:B306: 41        .byte $41   ; 
- D 1 - - - 0x027317 09:B307: 3D        .byte $3D   ; 
- D 1 - - - 0x027318 09:B308: 42        .byte $42   ; 
- D 1 - - - 0x027319 09:B309: 97        .byte $97   ; 
- D 1 - - - 0x02731A 09:B30A: 42        .byte $42   ; 
- D 1 - - - 0x02731B 09:B30B: 3D        .byte $3D   ; 
- D 1 - - - 0x02731C 09:B30C: 42        .byte $42   ; 
- D 1 - - - 0x02731D 09:B30D: 3E        .byte $3E   ; 
- D 1 - - - 0x02731E 09:B30E: 43        .byte $43   ; 
- D 1 - - - 0x02731F 09:B30F: 3C        .byte $3C   ; 
- D 1 - - - 0x027320 09:B310: 43        .byte $43   ; 
- D 1 - - - 0x027321 09:B311: 3E        .byte $3E   ; 
- D 1 - - - 0x027322 09:B312: 44        .byte $44   ; 
- D 1 - - - 0x027323 09:B313: 3D        .byte $3D   ; 
- D 1 - - - 0x027324 09:B314: 45        .byte $45   ; 
- D 1 - - - 0x027325 09:B315: 3C        .byte $3C   ; 
- D 1 - - - 0x027326 09:B316: 45        .byte $45   ; 
- D 1 - - - 0x027327 09:B317: 3D        .byte $3D   ; 
- D 1 - - - 0x027328 09:B318: 46        .byte $46   ; 
- D 1 - - - 0x027329 09:B319: 3C        .byte $3C   ; 
- D 1 - - - 0x02732A 09:B31A: 46        .byte $46   ; 
- D 1 - - - 0x02732B 09:B31B: 3E        .byte $3E   ; 
- D 1 - - - 0x02732C 09:B31C: 44        .byte $44   ; 
- D 1 - - - 0x02732D 09:B31D: 3C        .byte $3C   ; 
- D 1 - - - 0x02732E 09:B31E: 0D        .byte $0D   ; 
- D 1 - - - 0x02732F 09:B31F: 01        .byte $01   ; 
- D 1 - - - 0x027330 09:B320: 0E        .byte $0E   ; 
- D 1 - - - 0x027331 09:B321: 00        .byte $00   ; 
- D 1 - - - 0x027332 09:B322: 0C        .byte $0C   ; 
- D 1 - - - 0x027333 09:B323: 01        .byte $01   ; 
- D 1 - - - 0x027334 09:B324: 0A        .byte $0A   ; 
- D 1 - - - 0x027335 09:B325: 01        .byte $01   ; 
- D 1 - - - 0x027336 09:B326: 0B        .byte $0B   ; 
- D 1 - - - 0x027337 09:B327: 01        .byte $01   ; 
- D 1 - - - 0x027338 09:B328: 0C        .byte $0C   ; 
- D 1 - - - 0x027339 09:B329: 00        .byte $00   ; 
- D 1 - - - 0x02733A 09:B32A: 0B        .byte $0B   ; 
- D 1 - - - 0x02733B 09:B32B: 01        .byte $01   ; 
- D 1 - - - 0x02733C 09:B32C: 0B        .byte $0B   ; 
- D 1 - - - 0x02733D 09:B32D: 00        .byte $00   ; 
- D 1 - - - 0x02733E 09:B32E: 1D        .byte $1D   ; 
- D 1 - - - 0x02733F 09:B32F: 14        .byte $14   ; 
- D 1 - - - 0x027340 09:B330: 1E        .byte $1E   ; 
- D 1 - - - 0x027341 09:B331: 14        .byte $14   ; 
- D 1 - - - 0x027342 09:B332: 1F        .byte $1F   ; 
- D 1 - - - 0x027343 09:B333: 14        .byte $14   ; 
- D 1 - - - 0x027344 09:B334: 20        .byte $20   ; 
- D 1 - - - 0x027345 09:B335: 14        .byte $14   ; 
- D 1 - - - 0x027346 09:B336: 31        .byte $31   ; 
- D 1 - - - 0x027347 09:B337: 28        .byte $28   ; 
- D 1 - - - 0x027348 09:B338: 32        .byte $32   ; 
- D 1 - - - 0x027349 09:B339: 28        .byte $28   ; 
- D 1 - - - 0x02734A 09:B33A: 33        .byte $33   ; 
- D 1 - - - 0x02734B 09:B33B: 28        .byte $28   ; 
- D 1 - - - 0x02734C 09:B33C: 34        .byte $34   ; 
- D 1 - - - 0x02734D 09:B33D: 28        .byte $28   ; 
- D 1 - - - 0x02734E 09:B33E: 35        .byte $35   ; 
- D 1 - - - 0x02734F 09:B33F: 28        .byte $28   ; 
- D 1 - - - 0x027350 09:B340: 3F        .byte $3F   ; 
- D 1 - - - 0x027351 09:B341: 3C        .byte $3C   ; 
- D 1 - - - 0x027352 09:B342: 43        .byte $43   ; 
- D 1 - - - 0x027353 09:B343: 3D        .byte $3D   ; 
- D 1 - - - 0x027354 09:B344: 46        .byte $46   ; 
- D 1 - - - 0x027355 09:B345: 3D        .byte $3D   ; 
- D 1 - - - 0x027356 09:B346: 47        .byte $47   ; 
- D 1 - - - 0x027357 09:B347: 97        .byte $97   ; 
- D 1 - - - 0x027358 09:B348: 4B        .byte $4B   ; 
- D 1 - - - 0x027359 09:B349: 3C        .byte $3C   ; 
- D 1 - - - 0x02735A 09:B34A: 0F        .byte $0F   ; 
- D 1 - - - 0x02735B 09:B34B: 00        .byte $00   ; 
- D 1 - - - 0x02735C 09:B34C: 15        .byte $15   ; 
- D 1 - - - 0x02735D 09:B34D: 28        .byte $28   ; 



tbl_B34E:
- D 1 - - - 0x02735E 09:B34E: 7B B1     .word off_B17B_00
- D 1 - - - 0x027360 09:B350: 7B B1     .word off_B17B_01
- D 1 - - - 0x027362 09:B352: 7B B1     .word off_B17B_02
- D 1 - - - 0x027364 09:B354: 7B B1     .word off_B17B_03
- D 1 - - - 0x027366 09:B356: E1 B1     .word off_B1E1_04
- D 1 - - - 0x027368 09:B358: 3A B2     .word off_B23A_05
- D 1 - - - 0x02736A 09:B35A: 7F B2     .word off_B27F_06



ofs_B35C_00_Leo:
C - - J - - 0x02736C 09:B35C: BD 40 05  LDA ram_0540,X
C - - - - - 0x02736F 09:B35F: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 1 - I - 0x027372 09:B362: 6A B3     .word ofs_B36A_00
- D 1 - I - 0x027374 09:B364: 79 B3     .word ofs_B379_01
- D 1 - I - 0x027376 09:B366: ED B3     .word ofs_B3ED_02
- D 1 - I - 0x027378 09:B368: 52 B4     .word ofs_B452_03



ofs_B36A_00:
C - - J - - 0x02737A 09:B36A: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x02737D 09:B36D: A9 08     LDA #$08
C - - - - - 0x02737F 09:B36F: 20 0E E1  JSR sub_0x03E11E
C - - - - - 0x027382 09:B372: 9D 60 05  STA ram_0560,X
C - - - - - 0x027385 09:B375: FE 40 05  INC ram_0540,X
bra_B378_RTS:
C - - - - - 0x027388 09:B378: 60        RTS



ofs_B379_01:
C - - J - - 0x027389 09:B379: DE 60 05  DEC ram_0560,X
C - - - - - 0x02738C 09:B37C: D0 FA     BNE bra_B378_RTS
C - - - - - 0x02738E 09:B37E: FE 40 05  INC ram_0540,X
C - - - - - 0x027391 09:B381: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x027394 09:B384: 9D D0 04  STA ram_04D0,X
C - - - - - 0x027397 09:B387: A9 31     LDA #$31
C - - - - - 0x027399 09:B389: 20 CC B3  JSR sub_B3CC
C - - - - - 0x02739C 09:B38C: A9 03     LDA #$03
C - - - - - 0x02739E 09:B38E: 9D A0 04  STA ram_04A0,X
C - - - - - 0x0273A1 09:B391: A9 00     LDA #$00
C - - - - - 0x0273A3 09:B393: 9D B0 04  STA ram_04B0,X
C - - - - - 0x0273A6 09:B396: 9D C0 04  STA ram_04C0,X
C - - - - - 0x0273A9 09:B399: A9 20     LDA #$20
C - - - - - 0x0273AB 09:B39B: 9D 80 05  STA ram_0580,X
C - - - - - 0x0273AE 09:B39E: A9 54     LDA #$54
C - - - - - 0x0273B0 09:B3A0: 20 94 F6  JSR sub_0x03F6A4_play_sound
loc_B3A3:
C D 1 - - - 0x0273B3 09:B3A3: A9 04     LDA #$04
C - - - - - 0x0273B5 09:B3A5: 4C 38 DF  JMP loc_0x03DF48



sub_B3A8:
loc_B3A8:
C D 1 - - - 0x0273B8 09:B3A8: 20 EC EF  JSR sub_0x03EFFC
C - - - - - 0x0273BB 09:B3AB: BD 80 04  LDA ram_X_spd_hi_object,X
C - - - - - 0x0273BE 09:B3AE: 9D B0 04  STA ram_04B0,X
C - - - - - 0x0273C1 09:B3B1: BD 90 04  LDA ram_X_spd_lo_object,X
C - - - - - 0x0273C4 09:B3B4: 9D C0 04  STA ram_04C0,X
C - - - - - 0x0273C7 09:B3B7: 60        RTS



loc_B3B8:
sub_B3B8:
C D 1 - - - 0x0273C8 09:B3B8: BD B0 04  LDA ram_04B0,X
C - - - - - 0x0273CB 09:B3BB: 9D 80 04  STA ram_X_spd_hi_object,X
C - - - - - 0x0273CE 09:B3BE: BD C0 04  LDA ram_04C0,X
C - - - - - 0x0273D1 09:B3C1: 9D 90 04  STA ram_X_spd_lo_object,X
C - - - - - 0x0273D4 09:B3C4: 60        RTS



sub_B3C5:
C - - - - - 0x0273D5 09:B3C5: 48        PHA
C - - - - - 0x0273D6 09:B3C6: A9 16     LDA #$16
C - - - - - 0x0273D8 09:B3C8: 20 90 F6  JSR sub_0x03F6A0_play_sound
C - - - - - 0x0273DB 09:B3CB: 68        PLA
sub_B3CC:
C - - - - - 0x0273DC 09:B3CC: 48        PHA
C - - - - - 0x0273DD 09:B3CD: 20 DF B3  JSR sub_B3DF
C - - - - - 0x0273E0 09:B3D0: 68        PLA
C - - - - - 0x0273E1 09:B3D1: 99 50 05  STA ram_id_object,Y
C - - - - - 0x0273E4 09:B3D4: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x0273E7 09:B3D7: 99 10 05  STA ram_turn_side_object,Y
C - - - - - 0x0273EA 09:B3DA: 8A        TXA
C - - - - - 0x0273EB 09:B3DB: 99 20 05  STA ram_0520,Y
C - - - - - 0x0273EE 09:B3DE: 60        RTS



sub_B3DF:
loc_B3DF:
C D 1 - - - 0x0273EF 09:B3DF: 20 20 DE  JSR sub_0x03DE30
C - - - - - 0x0273F2 09:B3E2: 8A        TXA
C - - - - - 0x0273F3 09:B3E3: 29 01     AND #$01
C - - - - - 0x0273F5 09:B3E5: 18        CLC
C - - - - - 0x0273F6 09:B3E6: 69 04     ADC #$04
C - - - - - 0x0273F8 09:B3E8: 9D E0 04  STA ram_04E0,X
C - - - - - 0x0273FB 09:B3EB: A8        TAY
bra_B3EC_RTS:
C - - - - - 0x0273FC 09:B3EC: 60        RTS



ofs_B3ED_02:
C - - J - - 0x0273FD 09:B3ED: 20 5F B4  JSR sub_B45F
C - - - - - 0x027400 09:B3F0: DE C0 05  DEC ram_05C0,X
C - - - - - 0x027403 09:B3F3: 10 1F     BPL bra_B414
C - - - - - 0x027405 09:B3F5: A9 03     LDA #$03
C - - - - - 0x027407 09:B3F7: 20 0E E1  JSR sub_0x03E11E
C - - - - - 0x02740A 09:B3FA: 9D C0 05  STA ram_05C0,X
C - - - - - 0x02740D 09:B3FD: DE D0 05  DEC ram_05D0,X
C - - - - - 0x027410 09:B400: 30 32     BMI bra_B434
C - - - - - 0x027412 09:B402: BC D0 05  LDY ram_05D0,X
C - - - - - 0x027415 09:B405: B9 9D B4  LDA tbl_B49D,Y
C - - - - - 0x027418 09:B408: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x02741B 09:B40B: B9 A4 B4  LDA tbl_B4A4,Y
C - - - - - 0x02741E 09:B40E: 5D D0 04  EOR ram_04D0,X
C - - - - - 0x027421 09:B411: 9D 10 05  STA ram_turn_side_object,X
bra_B414:
C - - - - - 0x027424 09:B414: BC D0 05  LDY ram_05D0,X
C - - - - - 0x027427 09:B417: C0 03     CPY #$03
C - - - - - 0x027429 09:B419: B0 18     BCS bra_B433_RTS
C - - - - - 0x02742B 09:B41B: B9 A1 B4  LDA tbl_B4A1,Y
C - - - - - 0x02742E 09:B41E: 20 D4 DE  JSR sub_0x03DEE4
C - - - - - 0x027431 09:B421: BD 5C 04  LDA ram_045C,X
C - - - - - 0x027434 09:B424: 7D 90 04  ADC ram_X_spd_lo_object,X
C - - - - - 0x027437 09:B427: 9D 5C 04  STA ram_045C,X
C - - - - - 0x02743A 09:B42A: BD 4C 04  LDA ram_044C,X
C - - - - - 0x02743D 09:B42D: 7D 80 04  ADC ram_X_spd_hi_object,X
C - - - - - 0x027440 09:B430: 9D 4C 04  STA ram_044C,X
bra_B433_RTS:
C - - - - - 0x027443 09:B433: 60        RTS
bra_B434:
C - - - - - 0x027444 09:B434: DE A0 04  DEC ram_04A0,X
C - - - - - 0x027447 09:B437: 30 03     BMI bra_B43C
C - - - - - 0x027449 09:B439: 4C A3 B3  JMP loc_B3A3
bra_B43C:
C - - - - - 0x02744C 09:B43C: A9 00     LDA #$00
C - - - - - 0x02744E 09:B43E: 9D 80 05  STA ram_0580,X
C - - - - - 0x027451 09:B441: A9 0F     LDA #$0F
C - - - - - 0x027453 09:B443: 9D B0 04  STA ram_04B0,X
C - - - - - 0x027456 09:B446: 9D 7A 06  STA ram_067A,X
C - - - - - 0x027459 09:B449: FE 40 05  INC ram_0540,X
C - - - - - 0x02745C 09:B44C: 20 20 DE  JSR sub_0x03DE30
C - - - - - 0x02745F 09:B44F: 4C 67 D0  JMP loc_0x03D077



ofs_B452_03:
C - - J - - 0x027462 09:B452: A9 8D     LDA #$8D
C - - - - - 0x027464 09:B454: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x027467 09:B457: DE B0 04  DEC ram_04B0,X
C - - - - - 0x02746A 09:B45A: D0 90     BNE bra_B3EC_RTS
C - - - - - 0x02746C 09:B45C: 4C 6D 84  JMP loc_846D



sub_B45F:
C - - - - - 0x02746F 09:B45F: AC 26 01  LDY ram_option_speed
C - - - - - 0x027472 09:B462: BD D0 04  LDA ram_04D0,X
C - - - - - 0x027475 09:B465: 0A        ASL
C - - - - - 0x027476 09:B466: 0A        ASL
C - - - - - 0x027477 09:B467: BD B0 04  LDA ram_04B0,X
C - - - - - 0x02747A 09:B46A: B0 0C     BCS bra_B478
C - - - - - 0x02747C 09:B46C: D9 95 B4  CMP tbl_B495,Y
C - - - - - 0x02747F 09:B46F: B0 21     BCS bra_B492
C - - - - - 0x027481 09:B471: B9 99 B4  LDA tbl_B499,Y
C - - - - - 0x027484 09:B474: A0 00     LDY #$00
C - - - - - 0x027486 09:B476: F0 0C     BEQ bra_B484
bra_B478:
C - - - - - 0x027488 09:B478: 10 05     BPL bra_B47F
C - - - - - 0x02748A 09:B47A: D9 97 B4  CMP tbl_B497,Y
C - - - - - 0x02748D 09:B47D: 90 13     BCC bra_B492
bra_B47F:
C - - - - - 0x02748F 09:B47F: B9 9B B4  LDA tbl_B49B,Y
C - - - - - 0x027492 09:B482: A0 FF     LDY #$FF
bra_B484:
C - - - - - 0x027494 09:B484: 18        CLC
C - - - - - 0x027495 09:B485: 7D C0 04  ADC ram_04C0,X
C - - - - - 0x027498 09:B488: 9D C0 04  STA ram_04C0,X
C - - - - - 0x02749B 09:B48B: 98        TYA
C - - - - - 0x02749C 09:B48C: 7D B0 04  ADC ram_04B0,X
C - - - - - 0x02749F 09:B48F: 9D B0 04  STA ram_04B0,X
bra_B492:
C - - - - - 0x0274A2 09:B492: 4C B8 B3  JMP loc_B3B8



tbl_B495:
- D 1 - - - 0x0274A5 09:B495: 02        .byte $02   ; 00
- D 1 - - - 0x0274A6 09:B496: 03        .byte $03   ; 01

tbl_B497:
- D 1 - - - 0x0274A7 09:B497: FE        .byte $FE   ; 00
- D 1 - - - 0x0274A8 09:B498: FD        .byte $FD   ; 01

tbl_B499:
- D 1 - - - 0x0274A9 09:B499: 0A        .byte $0A   ; 00
- D 1 - - - 0x0274AA 09:B49A: 0F        .byte $0F   ; 01

tbl_B49B:
- D 1 - - - 0x0274AB 09:B49B: F6        .byte $F6   ; 00
- D 1 - - - 0x0274AC 09:B49C: F1        .byte $F1   ; 01



tbl_B49D:
- D 1 - - - 0x0274AD 09:B49D: AA        .byte $AA   ; 00
- D 1 - - - 0x0274AE 09:B49E: A9        .byte $A9   ; 01
- D 1 - - - 0x0274AF 09:B49F: A8        .byte $A8   ; 02
- D 1 - - - 0x0274B0 09:B4A0: 8D        .byte $8D   ; 03


tbl_B4A1:
- D 1 - - - 0x0274B1 09:B4A1: BD        .byte $BD   ; 00
- D 1 - - - 0x0274B2 09:B4A2: BC        .byte $BC   ; 01
- D 1 - - - 0x0274B3 09:B4A3: BB        .byte $BB   ; 02



tbl_B4A4:
- D 1 - - - 0x0274B4 09:B4A4: 00        .byte $00   ; 00
- D 1 - - - 0x0274B5 09:B4A5: 00        .byte $00   ; 01
- D 1 - - - 0x0274B6 09:B4A6: 00        .byte $00   ; 02
- D 1 - - - 0x0274B7 09:B4A7: 40        .byte $40   ; 03



ofs_B4A8_01_Raph:
C - - J - - 0x0274B8 09:B4A8: BD 40 05  LDA ram_0540,X
C - - - - - 0x0274BB 09:B4AB: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 1 - I - 0x0274BE 09:B4AE: BA B4     .word ofs_B4BA_00_Leo
- D 1 - I - 0x0274C0 09:B4B0: CE B4     .word ofs_B4CE_01
- D 1 - I - 0x0274C2 09:B4B2: 11 B5     .word ofs_B511_02
- D 1 - I - 0x0274C4 09:B4B4: 6F B5     .word ofs_B56F_03
- D 1 - I - 0x0274C6 09:B4B6: 9C B5     .word ofs_B59C_04
- D 1 - I - 0x0274C8 09:B4B8: 94 B5     .word ofs_B594_05



sub_B4BA:
ofs_B4BA_00_Leo:
C - - - - - 0x0274CA 09:B4BA: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x0274CD 09:B4BD: FE 40 05  INC ram_0540,X
C - - - - - 0x0274D0 09:B4C0: A9 01     LDA #$01
C - - - - - 0x0274D2 09:B4C2: 9D D0 05  STA ram_05D0,X
sub_B4C5:
C - - - - - 0x0274D5 09:B4C5: A9 06     LDA #$06
C - - - - - 0x0274D7 09:B4C7: 20 0E E1  JSR sub_0x03E11E
C - - - - - 0x0274DA 09:B4CA: 9D 60 05  STA ram_0560,X
bra_B4CD_RTS:
C - - - - - 0x0274DD 09:B4CD: 60        RTS



ofs_B4CE_01:
C - - J - - 0x0274DE 09:B4CE: DE 60 05  DEC ram_0560,X
C - - - - - 0x0274E1 09:B4D1: D0 0F     BNE bra_B4E2
C - - - - - 0x0274E3 09:B4D3: 20 C5 B4  JSR sub_B4C5
C - - - - - 0x0274E6 09:B4D6: DE D0 05  DEC ram_05D0,X
C - - - - - 0x0274E9 09:B4D9: 30 13     BMI bra_B4EE
C - - - - - 0x0274EB 09:B4DB: D0 05     BNE bra_B4E2
C - - - - - 0x0274ED 09:B4DD: A9 54     LDA #$54
C - - - - - 0x0274EF 09:B4DF: 20 94 F6  JSR sub_0x03F6A4_play_sound
bra_B4E2:
C - - - - - 0x0274F2 09:B4E2: A9 99     LDA #$99
C - - - - - 0x0274F4 09:B4E4: BC D0 05  LDY ram_05D0,X
C - - - - - 0x0274F7 09:B4E7: D0 02     BNE bra_B4EB
C - - - - - 0x0274F9 09:B4E9: A9 C4     LDA #$C4
bra_B4EB:
C - - - - - 0x0274FB 09:B4EB: 4C 0D B9  JMP loc_B90D
bra_B4EE:
C - - - - - 0x0274FE 09:B4EE: FE 40 05  INC ram_0540,X
C - - - - - 0x027501 09:B4F1: A9 63     LDA #$63
C - - - - - 0x027503 09:B4F3: 20 A8 B3  JSR sub_B3A8
C - - - - - 0x027506 09:B4F6: A9 32     LDA #$32
C - - - - - 0x027508 09:B4F8: 20 CC B3  JSR sub_B3CC
C - - - - - 0x02750B 09:B4FB: 38        SEC
C - - - - - 0x02750C 09:B4FC: BD 41 06  LDA ram_0641,X
C - - - - - 0x02750F 09:B4FF: E9 0A     SBC #$0A
C - - - - - 0x027511 09:B501: 4A        LSR
C - - - - - 0x027512 09:B502: 69 12     ADC #$12
C - - - - - 0x027514 09:B504: 9D A0 04  STA ram_04A0,X
C - - - - - 0x027517 09:B507: A9 98     LDA #$98
C - - - - - 0x027519 09:B509: 9D 10 04  STA ram_Y_pos_hi_object,X
C - - - - - 0x02751C 09:B50C: A9 0B     LDA #$0B
C - - - - - 0x02751E 09:B50E: 20 90 F6  JSR sub_0x03F6A0_play_sound
ofs_B511_02:
C - - - - - 0x027521 09:B511: A0 03     LDY #$03
C - - - - - 0x027523 09:B513: 20 7C D0  JSR sub_0x03D08C
C - - - - - 0x027526 09:B516: A9 12     LDA #$12
C - - - - - 0x027528 09:B518: 9D 70 05  STA ram_0570,X
C - - - - - 0x02752B 09:B51B: A4 A9     LDY ram_object_index
C - - - - - 0x02752D 09:B51D: B9 1E 06  LDA ram_061E,Y
C - - - - - 0x027530 09:B520: D0 1C     BNE bra_B53E
C - - - - - 0x027532 09:B522: 20 B8 B3  JSR sub_B3B8
C - - - - - 0x027535 09:B525: DE A0 04  DEC ram_04A0,X
C - - - - - 0x027538 09:B528: 10 A3     BPL bra_B4CD_RTS
C - - - - - 0x02753A 09:B52A: FE 40 05  INC ram_0540,X
C - - - - - 0x02753D 09:B52D: A9 00     LDA #$00
C - - - - - 0x02753F 09:B52F: 9D C0 05  STA ram_05C0,X
C - - - - - 0x027542 09:B532: A9 04     LDA #$04
C - - - - - 0x027544 09:B534: 9D D0 05  STA ram_05D0,X
C - - - - - 0x027547 09:B537: 9D 7A 06  STA ram_067A,X
C - - - - - 0x02754A 09:B53A: A9 03     LDA #$03
C - - - - - 0x02754C 09:B53C: D0 20     BNE bra_B55E
bra_B53E:
C - - - - - 0x02754E 09:B53E: A9 00     LDA #$00
C - - - - - 0x027550 09:B540: 9D 70 04  STA ram_Y_spd_lo_object,X
C - - - - - 0x027553 09:B543: A9 FD     LDA #$FD
C - - - - - 0x027555 09:B545: AC 26 01  LDY ram_option_speed
C - - - - - 0x027558 09:B548: F0 07     BEQ bra_B551
C - - - - - 0x02755A 09:B54A: A9 80     LDA #$80
C - - - - - 0x02755C 09:B54C: 9D 70 04  STA ram_Y_spd_lo_object,X
C - - - - - 0x02755F 09:B54F: A9 FB     LDA #$FB
bra_B551:
C - - - - - 0x027561 09:B551: 9D 60 04  STA ram_Y_spd_hi_object,X
C - - - - - 0x027564 09:B554: A9 06     LDA #$06
C - - - - - 0x027566 09:B556: 9D 7A 06  STA ram_067A,X
C - - - - - 0x027569 09:B559: 20 38 DF  JSR sub_0x03DF48
C - - - - - 0x02756C 09:B55C: A9 02     LDA #$02
bra_B55E:
C - - - - - 0x02756E 09:B55E: 48        PHA
C - - - - - 0x02756F 09:B55F: A9 AC     LDA #$AC
C - - - - - 0x027571 09:B561: 9D 10 04  STA ram_Y_pos_hi_object,X
C - - - - - 0x027574 09:B564: FE 40 05  INC ram_0540,X
C - - - - - 0x027577 09:B567: 20 20 DE  JSR sub_0x03DE30
C - - - - - 0x02757A 09:B56A: 68        PLA
C - - - - - 0x02757B 09:B56B: A8        TAY
C - - - - - 0x02757C 09:B56C: 4C 4F DF  JMP loc_0x03DF5F



ofs_B56F_03:
C - - J - - 0x02757F 09:B56F: 20 6A D0  JSR sub_0x03D07A
C - - - - - 0x027582 09:B572: A9 41     LDA #$41
C - - - - - 0x027584 09:B574: 20 D0 FE  JSR sub_0x03FEE0
C - - - - - 0x027587 09:B577: A0 02     LDY #$02
bra_B579:
C - - - - - 0x027589 09:B579: 20 4F DF  JSR sub_0x03DF5F
C - - - - - 0x02758C 09:B57C: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x02758F 09:B57F: 90 53     BCC bra_B5D4_RTS
C - - - - - 0x027591 09:B581: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x027594 09:B584: A9 05     LDA #$05
C - - - - - 0x027596 09:B586: 9D 40 05  STA ram_0540,X
C - - - - - 0x027599 09:B589: A9 08     LDA #$08
C - - - - - 0x02759B 09:B58B: 20 0E E1  JSR sub_0x03E11E
C - - - - - 0x02759E 09:B58E: 9D 60 05  STA ram_0560,X
C - - - - - 0x0275A1 09:B591: 4C 67 D0  JMP loc_0x03D077



ofs_B594_05:
C - - J - - 0x0275A4 09:B594: DE 60 05  DEC ram_0560,X
C - - - - - 0x0275A7 09:B597: 10 3B     BPL bra_B5D4_RTS
C - - - - - 0x0275A9 09:B599: 4C E9 DD  JMP loc_0x03DDF9



ofs_B59C_04:
C - - J - - 0x0275AC 09:B59C: A9 01     LDA #$01
C - - - - - 0x0275AE 09:B59E: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x0275B1 09:B5A1: A0 03     LDY #$03
C - - - - - 0x0275B3 09:B5A3: D0 D4     BNE bra_B579



ofs_B5A5_02_Mike:
C - - J - - 0x0275B5 09:B5A5: BD 40 05  LDA ram_0540,X
C - - - - - 0x0275B8 09:B5A8: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 1 - I - 0x0275BB 09:B5AB: B5 B5     .word ofs_B5B5_00
- D 1 - I - 0x0275BD 09:B5AD: D5 B5     .word ofs_B5D5_01
- D 1 - I - 0x0275BF 09:B5AF: 1F B6     .word ofs_B61F_02
- D 1 - I - 0x0275C1 09:B5B1: 42 B6     .word ofs_B642_03
- D 1 - I - 0x0275C3 09:B5B3: 6B B6     .word ofs_B66B_04



ofs_B5B5_00:
C - - J - - 0x0275C5 09:B5B5: 20 BA B4  JSR sub_B4BA
C - - - - - 0x0275C8 09:B5B8: A9 02     LDA #$02
C - - - - - 0x0275CA 09:B5BA: 9D D0 04  STA ram_04D0,X
C - - - - - 0x0275CD 09:B5BD: BC 31 06  LDY ram_0631,X
C - - - - - 0x0275D0 09:B5C0: 30 02     BMI bra_B5C4
C - - - - - 0x0275D2 09:B5C2: A9 00     LDA #$00
bra_B5C4:
C - - - - - 0x0275D4 09:B5C4: 9D E0 04  STA ram_04E0,X
C - - - - - 0x0275D7 09:B5C7: A9 54     LDA #$54
C - - - - - 0x0275D9 09:B5C9: 20 94 F6  JSR sub_0x03F6A4_play_sound
sub_B5CC:
C - - - - - 0x0275DC 09:B5CC: 20 F9 BF  JSR sub_BFF9
C - - - - - 0x0275DF 09:B5CF: 4C AA B8  JMP loc_B8AA



tbl_B5D2:
- D 1 - - - 0x0275E2 09:B5D2: 04        .byte $04   ; 00
- D 1 - - - 0x0275E3 09:B5D3: 06        .byte $06   ; 01



bra_B5D4_RTS:
C - - - - - 0x0275E4 09:B5D4: 60        RTS
ofs_B5D5_01:
C - - J - - 0x0275E5 09:B5D5: BD D0 04  LDA ram_04D0,X
C - - - - - 0x0275E8 09:B5D8: 0A        ASL
C - - - - - 0x0275E9 09:B5D9: A8        TAY
C - - - - - 0x0275EA 09:B5DA: BD E0 04  LDA ram_04E0,X
C - - - - - 0x0275ED 09:B5DD: F0 01     BEQ bra_B5E0
C - - - - - 0x0275EF 09:B5DF: C8        INY
bra_B5E0:
C - - - - - 0x0275F0 09:B5E0: B9 3F BA  LDA tbl_BA3F,Y
C - - - - - 0x0275F3 09:B5E3: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x0275F6 09:B5E6: DE 60 05  DEC ram_0560,X
C - - - - - 0x0275F9 09:B5E9: D0 E9     BNE bra_B5D4_RTS
C - - - - - 0x0275FB 09:B5EB: 20 CC B5  JSR sub_B5CC
C - - - - - 0x0275FE 09:B5EE: DE D0 04  DEC ram_04D0,X
C - - - - - 0x027601 09:B5F1: 10 E1     BPL bra_B5D4_RTS
C - - - - - 0x027603 09:B5F3: FE 40 05  INC ram_0540,X
C - - - - - 0x027606 09:B5F6: A9 83     LDA #$83
C - - - - - 0x027608 09:B5F8: 20 A8 B3  JSR sub_B3A8
C - - - - - 0x02760B 09:B5FB: A9 1A     LDA #$1A
C - - - - - 0x02760D 09:B5FD: 20 B6 8B  JSR sub_8BB6
C - - - - - 0x027610 09:B600: 9D A0 04  STA ram_04A0,X
C - - - - - 0x027613 09:B603: BC E0 04  LDY ram_04E0,X
C - - - - - 0x027616 09:B606: B9 3B BA  LDA tbl_BA3B,Y
C - - - - - 0x027619 09:B609: 9D 60 04  STA ram_Y_spd_hi_object,X
C - - - - - 0x02761C 09:B60C: B9 3C BA  LDA tbl_BA3C,Y
C - - - - - 0x02761F 09:B60F: 9D 70 04  STA ram_Y_spd_lo_object,X
C - - - - - 0x027622 09:B612: 98        TYA
C - - - - - 0x027623 09:B613: 48        PHA
C - - - - - 0x027624 09:B614: B9 38 BA  LDA tbl_BA38,Y
C - - - - - 0x027627 09:B617: 20 C5 B3  JSR sub_B3C5
C - - - - - 0x02762A 09:B61A: 68        PLA
C - - - - - 0x02762B 09:B61B: 9D E0 04  STA ram_04E0,X
C - - - - - 0x02762E 09:B61E: 60        RTS



ofs_B61F_02:
C - - J - - 0x02762F 09:B61F: BD E0 04  LDA ram_04E0,X
C - - - - - 0x027632 09:B622: F0 03     BEQ bra_B627
C - - - - - 0x027634 09:B624: A9 E4     LDA #$E4
C - - - - - 0x027636 09:B626: 2C        .byte $2C
bra_B627:
C - - - - - 0x027637 09:B627: A9 B0     LDA #$B0
C - - - - - 0x027639 09:B629: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x02763C 09:B62C: 20 B8 B3  JSR sub_B3B8
C - - - - - 0x02763F 09:B62F: DE A0 04  DEC ram_04A0,X
C - - - - - 0x027642 09:B632: 10 A0     BPL bra_B5D4_RTS
C - - - - - 0x027644 09:B634: FE 40 05  INC ram_0540,X
C - - - - - 0x027647 09:B637: A9 08     LDA #$08
C - - - - - 0x027649 09:B639: 20 0E E1  JSR sub_0x03E11E
C - - - - - 0x02764C 09:B63C: 9D 60 05  STA ram_0560,X
C - - - - - 0x02764F 09:B63F: 4C DF B3  JMP loc_B3DF



ofs_B642_03:
C - - J - - 0x027652 09:B642: A9 A1     LDA #$A1
C - - - - - 0x027654 09:B644: 9D 7A 06  STA ram_067A,X
C - - - - - 0x027657 09:B647: BC 60 05  LDY ram_0560,X
C - - - - - 0x02765A 09:B64A: F0 05     BEQ bra_B651
C - - - - - 0x02765C 09:B64C: DE 60 05  DEC ram_0560,X
C - - - - - 0x02765F 09:B64F: A9 A5     LDA #$A5
bra_B651:
C - - - - - 0x027661 09:B651: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x027664 09:B654: 20 B8 B3  JSR sub_B3B8
C - - - - - 0x027667 09:B657: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x02766A 09:B65A: 90 0E     BCC bra_B66A_RTS
C - - - - - 0x02766C 09:B65C: FE 40 05  INC ram_0540,X
C - - - - - 0x02766F 09:B65F: A9 08     LDA #$08
C - - - - - 0x027671 09:B661: 20 B6 8B  JSR sub_8BB6
C - - - - - 0x027674 09:B664: 9D 60 05  STA ram_0560,X
C - - - - - 0x027677 09:B667: 4C 67 D0  JMP loc_0x03D077
bra_B66A_RTS:
C - - - - - 0x02767A 09:B66A: 60        RTS



ofs_B66B_04:
ofs_B66B_06_Shred:
C - - J - - 0x02767B 09:B66B: A9 99     LDA #$99
C - - - - - 0x02767D 09:B66D: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x027680 09:B670: DE 60 05  DEC ram_0560,X
C - - - - - 0x027683 09:B673: D0 F5     BNE bra_B66A_RTS
C - - - - - 0x027685 09:B675: 4C 6D 84  JMP loc_846D



ofs_B678_03_Don:
C - - J - - 0x027688 09:B678: BD 40 05  LDA ram_0540,X
C - - - - - 0x02768B 09:B67B: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 1 - I - 0x02768E 09:B67E: BA B4     .word ofs_B4BA_00_Leo
- D 1 - I - 0x027690 09:B680: 8C B6     .word ofs_B68C_01_Raph
- D 1 - I - 0x027692 09:B682: AE B6     .word ofs_B6AE_02_Mike
- D 1 - I - 0x027694 09:B684: D9 B6     .word ofs_B6D9_03_Don
- D 1 - I - 0x027696 09:B686: F4 B6     .word ofs_B6F4_04_Casey
- D 1 - I - 0x027698 09:B688: 44 B7     .word ofs_B744_05_Hot
- D 1 - I - 0x02769A 09:B68A: 6B B6     .word ofs_B66B_06_Shred



ofs_B68C_01_Raph:
C - - J - - 0x02769C 09:B68C: A9 03     LDA #$03
C - - - - - 0x02769E 09:B68E: 20 38 DF  JSR sub_0x03DF48
C - - - - - 0x0276A1 09:B691: FE 40 05  INC ram_0540,X
C - - - - - 0x0276A4 09:B694: A9 F7     LDA #$F7
C - - - - - 0x0276A6 09:B696: AC 26 01  LDY ram_option_speed
C - - - - - 0x0276A9 09:B699: F0 02     BEQ bra_B69D
C - - - - - 0x0276AB 09:B69B: A9 F3     LDA #$F3
bra_B69D:
C - - - - - 0x0276AD 09:B69D: A0 00     LDY #$00
C - - - - - 0x0276AF 09:B69F: 20 D6 DC  JSR sub_0x03DCE6
C - - - - - 0x0276B2 09:B6A2: A9 35     LDA #$35
C - - - - - 0x0276B4 09:B6A4: 20 C5 B3  JSR sub_B3C5
C - - - - - 0x0276B7 09:B6A7: 1E 80 05  ASL ram_0580,X
C - - - - - 0x0276BA 09:B6AA: 38        SEC
C - - - - - 0x0276BB 09:B6AB: 7E 80 05  ROR ram_0580,X
ofs_B6AE_02_Mike:
C - - - - - 0x0276BE 09:B6AE: 20 EE B6  JSR sub_B6EE
C - - - - - 0x0276C1 09:B6B1: 20 09 B7  JSR sub_B709
C - - - - - 0x0276C4 09:B6B4: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x0276C7 09:B6B7: B0 07     BCS bra_B6C0
C - - - - - 0x0276C9 09:B6B9: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x0276CC 09:B6BC: C9 58     CMP #$58
C - - - - - 0x0276CE 09:B6BE: B0 AA     BCS bra_B66A_RTS
bra_B6C0:
C - - - - - 0x0276D0 09:B6C0: 20 73 D0  JSR sub_0x03D083
C - - - - - 0x0276D3 09:B6C3: A9 08     LDA #$08
C - - - - - 0x0276D5 09:B6C5: 20 0E E1  JSR sub_0x03E11E
C - - - - - 0x0276D8 09:B6C8: 9D 60 05  STA ram_0560,X
C - - - - - 0x0276DB 09:B6CB: FE 40 05  INC ram_0540,X
C - - - - - 0x0276DE 09:B6CE: 1E 80 05  ASL ram_0580,X
C - - - - - 0x0276E1 09:B6D1: 5E 80 05  LSR ram_0580,X
C - - - - - 0x0276E4 09:B6D4: A9 54     LDA #$54
C - - - - - 0x0276E6 09:B6D6: 4C 94 F6  JMP loc_0x03F6A4_play_sound



ofs_B6D9_03_Don:
C - - J - - 0x0276E9 09:B6D9: 20 EE B6  JSR sub_B6EE
C - - - - - 0x0276EC 09:B6DC: DE 60 05  DEC ram_0560,X
C - - - - - 0x0276EF 09:B6DF: D0 28     BNE bra_B709
C - - - - - 0x0276F1 09:B6E1: FE 40 05  INC ram_0540,X
C - - - - - 0x0276F4 09:B6E4: A9 81     LDA #$81
C - - - - - 0x0276F6 09:B6E6: 20 D3 DC  JSR sub_0x03DCE3
C - - - - - 0x0276F9 09:B6E9: A9 83     LDA #$83
C - - - - - 0x0276FB 09:B6EB: 4C A8 B3  JMP loc_B3A8



sub_B6EE:
C - - - - - 0x0276FE 09:B6EE: A9 14     LDA #$14
C - - - - - 0x027700 09:B6F0: 9D 70 05  STA ram_0570,X
C - - - - - 0x027703 09:B6F3: 60        RTS



ofs_B6F4_04_Casey:
C - - J - - 0x027704 09:B6F4: 20 EE B6  JSR sub_B6EE
C - - - - - 0x027707 09:B6F7: A9 50     LDA #$50
C - - - - - 0x027709 09:B6F9: 20 58 DC  JSR sub_0x03DC68
C - - - - - 0x02770C 09:B6FC: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x02770F 09:B6FF: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x027712 09:B702: C9 A8     CMP #$A8
C - - - - - 0x027714 09:B704: B0 23     BCS bra_B729
C - - - - - 0x027716 09:B706: 20 B8 B3  JSR sub_B3B8
bra_B709:
sub_B709:
C - - - - - 0x027719 09:B709: DE C0 05  DEC ram_05C0,X
C - - - - - 0x02771C 09:B70C: 10 35     BPL bra_B743_RTS
C - - - - - 0x02771E 09:B70E: DE D0 05  DEC ram_05D0,X
C - - - - - 0x027721 09:B711: BD D0 05  LDA ram_05D0,X
C - - - - - 0x027724 09:B714: 29 03     AND #$03
C - - - - - 0x027726 09:B716: 9D D0 05  STA ram_05D0,X
C - - - - - 0x027729 09:B719: A8        TAY
C - - - - - 0x02772A 09:B71A: B9 49 BA  LDA tbl_BA49,Y
C - - - - - 0x02772D 09:B71D: 20 0E E1  JSR sub_0x03E11E
C - - - - - 0x027730 09:B720: 9D C0 05  STA ram_05C0,X
C - - - - - 0x027733 09:B723: B9 45 BA  LDA tbl_BA45,Y
C - - - - - 0x027736 09:B726: 4C 94 DF  JMP loc_0x03DFA4
bra_B729:
C - - - - - 0x027739 09:B729: A9 38     LDA #$38
C - - - - - 0x02773B 09:B72B: 20 CC B3  JSR sub_B3CC
C - - - - - 0x02773E 09:B72E: A9 02     LDA #$02
C - - - - - 0x027740 09:B730: 20 38 DF  JSR sub_0x03DF48
C - - - - - 0x027743 09:B733: A0 0B     LDY #$0B
C - - - - - 0x027745 09:B735: 20 4F DF  JSR sub_0x03DF5F
C - - - - - 0x027748 09:B738: A9 0C     LDA #$0C
C - - - - - 0x02774A 09:B73A: 20 0E E1  JSR sub_0x03E11E
bra_B73D:
C - - - - - 0x02774D 09:B73D: 9D 60 05  STA ram_0560,X
C - - - - - 0x027750 09:B740: FE 40 05  INC ram_0540,X
bra_B743_RTS:
C - - - - - 0x027753 09:B743: 60        RTS



ofs_B744_05_Hot:
C - - J - - 0x027754 09:B744: 20 B8 B3  JSR sub_B3B8
C - - - - - 0x027757 09:B747: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x02775A 09:B74A: A0 0B     LDY #$0B
C - - - - - 0x02775C 09:B74C: 20 4F DF  JSR sub_0x03DF5F
C - - - - - 0x02775F 09:B74F: BD C0 05  LDA ram_05C0,X
C - - - - - 0x027762 09:B752: 10 EF     BPL bra_B743_RTS
C - - - - - 0x027764 09:B754: 20 DF B3  JSR sub_B3DF
C - - - - - 0x027767 09:B757: A9 08     LDA #$08
C - - - - - 0x027769 09:B759: 9D 7A 06  STA ram_067A,X
C - - - - - 0x02776C 09:B75C: D0 DF     BNE bra_B73D



loc_B75E:
C D 1 - - - 0x02776E 09:B75E: BD 40 05  LDA ram_0540,X
C - - - - - 0x027771 09:B761: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 1 - I - 0x027774 09:B764: 6A B7     .word ofs_B76A_00
- D 1 - I - 0x027776 09:B766: 8F B7     .word ofs_B78F_01
- D 1 - I - 0x027778 09:B768: EA B7     .word ofs_B7EA_02



ofs_B76A_00:
C - - J - - 0x02777A 09:B76A: A9 36     LDA #$36
C - - - - - 0x02777C 09:B76C: 20 CC B3  JSR sub_B3CC
C - - - - - 0x02777F 09:B76F: A9 01     LDA #$01
C - - - - - 0x027781 09:B771: 9D 40 05  STA ram_0540,X
C - - - - - 0x027784 09:B774: 4A        LSR
C - - - - - 0x027785 09:B775: 9D C0 05  STA ram_05C0,X
C - - - - - 0x027788 09:B778: 9D C0 04  STA ram_04C0,X
C - - - - - 0x02778B 09:B77B: 9D D0 04  STA ram_04D0,X
C - - - - - 0x02778E 09:B77E: 9D 33 06  STA ram_0633,X
C - - - - - 0x027791 09:B781: AC 26 01  LDY ram_option_speed
C - - - - - 0x027794 09:B784: B9 8D B7  LDA tbl_B78D,Y
C - - - - - 0x027797 09:B787: 9D 60 05  STA ram_0560,X
C - - - - - 0x02779A 09:B78A: 60        RTS



tbl_B78D:
- D 1 - - - 0x02779D 09:B78D: 3C        .byte $3C   ; 00
- D 1 - - - 0x02779E 09:B78E: 2B        .byte $2B   ; 01



ofs_B78F_01:
C - - J - - 0x02779F 09:B78F: BD D0 04  LDA ram_04D0,X
C - - - - - 0x0277A2 09:B792: D0 11     BNE bra_B7A5
C - - - - - 0x0277A4 09:B794: A4 A9     LDY ram_object_index
C - - - - - 0x0277A6 09:B796: B9 20 05  LDA ram_0520,Y
C - - - - - 0x0277A9 09:B799: C9 0B     CMP #$0B
C - - - - - 0x0277AB 09:B79B: D0 08     BNE bra_B7A5
C - - - - - 0x0277AD 09:B79D: A9 3C     LDA #$3C
; bzk шрушер пытался сделать зависимость от 0550 в 0x03EFA1
; но в итоге все считываемые байты каждого перса были 3C
C - - - - - 0x0277AF 09:B79F: 20 91 EF  STA ram_0560,X
C - - - - - 0x0277B2 09:B7A2: 9D D0 04  STA ram_04D0,X
bra_B7A5:
C - - - - - 0x0277B5 09:B7A5: DE C0 05  DEC ram_05C0,X
C - - - - - 0x0277B8 09:B7A8: 10 0F     BPL bra_B7B9
C - - - - - 0x0277BA 09:B7AA: A9 01     LDA #$01
C - - - - - 0x0277BC 09:B7AC: 9D C0 05  STA ram_05C0,X
C - - - - - 0x0277BF 09:B7AF: DE D0 05  DEC ram_05D0,X
C - - - - - 0x0277C2 09:B7B2: 10 05     BPL bra_B7B9
C - - - - - 0x0277C4 09:B7B4: A9 0A     LDA #$0A
C - - - - - 0x0277C6 09:B7B6: 9D D0 05  STA ram_05D0,X
bra_B7B9:
C - - - - - 0x0277C9 09:B7B9: BC D0 05  LDY ram_05D0,X
C - - - - - 0x0277CC 09:B7BC: B9 72 BA  LDA tbl_BA72,Y
C - - - - - 0x0277CF 09:B7BF: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x0277D2 09:B7C2: B9 7D BA  LDA tbl_BA7D,Y
C - - - - - 0x0277D5 09:B7C5: 9D 0C 04  STA ram_anim_special,X
C - - - - - 0x0277D8 09:B7C8: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x0277DB 09:B7CB: 9D 4C 04  STA ram_044C,X
C - - - - - 0x0277DE 09:B7CE: A9 A5     LDA #> ofs_0x02E5B1
C - - - - - 0x0277E0 09:B7D0: 48        PHA
C - - - - - 0x0277E1 09:B7D1: A9 A0     LDA #< ofs_0x02E5B1
C - - - - - 0x0277E3 09:B7D3: 48        PHA
C - - - - - 0x0277E4 09:B7D4: 4C E7 F5  JMP loc_0x03F5F7_prg_bank_0B



ofs_B7D7:
.export ofs_0x0277E7
ofs_0x0277E7 = ofs_B7D7 - 1
C - - - - - 0x0277E7 09:B7D7: DE 60 05  DEC ram_0560,X
C - - - - - 0x0277EA 09:B7DA: 10 34     BPL bra_B810_RTS
C - - - - - 0x0277EC 09:B7DC: A9 02     LDA #$02
C - - - - - 0x0277EE 09:B7DE: 9D D0 05  STA ram_05D0,X
C - - - - - 0x0277F1 09:B7E1: 9D 7A 06  STA ram_067A,X
C - - - - - 0x0277F4 09:B7E4: FE 40 05  INC ram_0540,X
C - - - - - 0x0277F7 09:B7E7: 4C 20 DE  JMP loc_0x03DE30



ofs_B7EA_02:
C - - J - - 0x0277FA 09:B7EA: DE 60 05  DEC ram_0560,X
C - - - - - 0x0277FD 09:B7ED: 10 18     BPL bra_B807
C - - - - - 0x0277FF 09:B7EF: DE D0 05  DEC ram_05D0,X
C - - - - - 0x027802 09:B7F2: 30 1D     BMI bra_B811
C - - - - - 0x027804 09:B7F4: D0 05     BNE bra_B7FB
C - - - - - 0x027806 09:B7F6: A9 57     LDA #$57
C - - - - - 0x027808 09:B7F8: 20 94 F6  JSR sub_0x03F6A4_play_sound
bra_B7FB:
C - - - - - 0x02780B 09:B7FB: BC D0 05  LDY ram_05D0,X
C - - - - - 0x02780E 09:B7FE: B9 88 BA  LDA tbl_BA88,Y
C - - - - - 0x027811 09:B801: 20 B6 8B  JSR sub_8BB6
C - - - - - 0x027814 09:B804: 9D 60 05  STA ram_0560,X
bra_B807:
C - - - - - 0x027817 09:B807: BC D0 05  LDY ram_05D0,X
C - - - - - 0x02781A 09:B80A: B9 8A BA  LDA tbl_BA8A,Y
C - - - - - 0x02781D 09:B80D: 9D 00 04  STA ram_anim_object,X
bra_B810_RTS:
C - - - - - 0x027820 09:B810: 60        RTS
bra_B811:
C - - - - - 0x027821 09:B811: A9 00     LDA #$00
C - - - - - 0x027823 09:B813: 9D 0A 06  STA ram_060A,X
C - - - - - 0x027826 09:B816: 9D 0E 06  STA ram_060E,X
C - - - - - 0x027829 09:B819: 20 DF B3  JSR sub_B3DF
C - - - - - 0x02782C 09:B81C: 20 18 D2  JSR sub_0x03D228
C - - - - - 0x02782F 09:B81F: 4C 6D 84  JMP loc_846D



loc_B822:
C D 1 - - - 0x027832 09:B822: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x027835 09:B825: BD 40 05  LDA ram_0540,X
C - - - - - 0x027838 09:B828: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 1 - I - 0x02783B 09:B82B: 31 B8     .word ofs_B831_00
- D 1 - I - 0x02783D 09:B82D: 48 B8     .word ofs_B848_01
- D 1 - I - 0x02783F 09:B82F: B1 B8     .word ofs_B8B1_02



ofs_B831_00:
C - - J - - 0x027841 09:B831: A9 B0     LDA #$B0
C - - - - - 0x027843 09:B833: 9D 10 04  STA ram_Y_pos_hi_object,X
C - - - - - 0x027846 09:B836: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x027849 09:B839: A9 08     LDA #$08
C - - - - - 0x02784B 09:B83B: 9D B0 04  STA ram_04B0,X
C - - - - - 0x02784E 09:B83E: A9 56     LDA #$56
C - - - - - 0x027850 09:B840: 20 94 F6  JSR sub_0x03F6A4_play_sound
C - - - - - 0x027853 09:B843: FE 40 05  INC ram_0540,X
C - - - - - 0x027856 09:B846: D0 1C     BNE bra_B864



ofs_B848_01:
C - - J - - 0x027858 09:B848: BC B0 04  LDY ram_04B0,X
C - - - - - 0x02785B 09:B84B: C0 04     CPY #$04
C - - - - - 0x02785D 09:B84D: A9 00     LDA #$00
C - - - - - 0x02785F 09:B84F: 90 02     BCC bra_B853
C - - - - - 0x027861 09:B851: A9 80     LDA #$80
bra_B853:
C - - - - - 0x027863 09:B853: 9D 80 05  STA ram_0580,X
C - - - - - 0x027866 09:B856: C0 06     CPY #$06
C - - - - - 0x027868 09:B858: B0 05     BCS bra_B85F
C - - - - - 0x02786A 09:B85A: A9 11     LDA #$11
C - - - - - 0x02786C 09:B85C: 20 7D D1  JSR sub_0x03D18D
bra_B85F:
C - - - - - 0x02786F 09:B85F: DE C0 05  DEC ram_05C0,X
C - - - - - 0x027872 09:B862: D0 4C     BNE bra_B8B0_RTS
bra_B864:
C - - - - - 0x027874 09:B864: DE B0 04  DEC ram_04B0,X
C - - - - - 0x027877 09:B867: 30 3C     BMI bra_B8A5
C - - - - - 0x027879 09:B869: BD B0 04  LDA ram_04B0,X
C - - - - - 0x02787C 09:B86C: 4A        LSR
C - - - - - 0x02787D 09:B86D: D0 05     BNE bra_B874
C - - - - - 0x02787F 09:B86F: A9 FF     LDA #$FF
C - - - - - 0x027881 09:B871: 9D 7A 06  STA ram_067A,X
bra_B874:
C - - - - - 0x027884 09:B874: BC B0 04  LDY ram_04B0,X
C - - - - - 0x027887 09:B877: B9 55 BA  LDA tbl_BA55,Y
C - - - - - 0x02788A 09:B87A: 20 0E E1  JSR sub_0x03E11E
C - - - - - 0x02788D 09:B87D: 9D C0 05  STA ram_05C0,X
C - - - - - 0x027890 09:B880: B9 4D BA  LDA tbl_BA4D,Y
C - - - - - 0x027893 09:B883: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x027896 09:B886: C9 AD     CMP #$AD
C - - - - - 0x027898 09:B888: D0 26     BNE bra_B8B0_RTS
C - - - - - 0x02789A 09:B88A: AD 26 01  LDA ram_option_speed
C - - - - - 0x02789D 09:B88D: 4A        LSR
C - - - - - 0x02789E 09:B88E: A9 F7     LDA #$F7
C - - - - - 0x0278A0 09:B890: A0 80     LDY #$80
C - - - - - 0x0278A2 09:B892: B0 04     BCS bra_B898
C - - - - - 0x0278A4 09:B894: A9 F9     LDA #$F9
C - - - - - 0x0278A6 09:B896: A0 C0     LDY #$C0
bra_B898:
C - - - - - 0x0278A8 09:B898: 20 D6 DC  JSR sub_0x03DCE6
C - - - - - 0x0278AB 09:B89B: A9 37     LDA #$37
C - - - - - 0x0278AD 09:B89D: 20 CC B3  JSR sub_B3CC
C - - - - - 0x0278B0 09:B8A0: A9 56     LDA #$56
C - - - - - 0x0278B2 09:B8A2: 4C 90 F6  JMP loc_0x03F6A0_play_sound
bra_B8A5:
C - - - - - 0x0278B5 09:B8A5: FE 40 05  INC ram_0540,X
C - - - - - 0x0278B8 09:B8A8: A9 0C     LDA #$0C
loc_B8AA:
C D 1 - - - 0x0278BA 09:B8AA: 20 0E E1  JSR sub_0x03E11E
C - - - - - 0x0278BD 09:B8AD: 9D 60 05  STA ram_0560,X
bra_B8B0_RTS:
C - - - - - 0x0278C0 09:B8B0: 60        RTS



ofs_B8B1_02:
C - - J - - 0x0278C1 09:B8B1: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x0278C4 09:B8B4: C9 B0     CMP #$B0
C - - - - - 0x0278C6 09:B8B6: 90 F8     BCC bra_B8B0_RTS
C - - - - - 0x0278C8 09:B8B8: 20 67 D0  JSR sub_0x03D077
ofs_B8BB_05:
C - - - - - 0x0278CB 09:B8BB: A9 A2     LDA #$A2
C - - - - - 0x0278CD 09:B8BD: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x0278D0 09:B8C0: DE 60 05  DEC ram_0560,X
C - - - - - 0x0278D3 09:B8C3: 10 EB     BPL bra_B8B0_RTS
C - - - - - 0x0278D5 09:B8C5: 20 18 D2  JSR sub_0x03D228
C - - - - - 0x0278D8 09:B8C8: B5 91     LDA ram_btn_hold,X
C - - - - - 0x0278DA 09:B8CA: 29 04     AND #con_btn_Down
C - - - - - 0x0278DC 09:B8CC: D0 03     BNE bra_B8D1
bra_B8CE:
C - - - - - 0x0278DE 09:B8CE: 4C 6D 84  JMP loc_846D
bra_B8D1:
C - - - - - 0x0278E1 09:B8D1: 20 E9 DD  JSR sub_0x03DDF9
C - - - - - 0x0278E4 09:B8D4: A9 01     LDA #$01
C - - - - - 0x0278E6 09:B8D6: 9D 60 05  STA ram_0560,X
C - - - - - 0x0278E9 09:B8D9: 60        RTS



ofs_B8DA_05_Hot:
C - - J - - 0x0278EA 09:B8DA: BC 40 05  LDY ram_0540,X
C - - - - - 0x0278ED 09:B8DD: D0 10     BNE bra_B8EF
C - - - - - 0x0278EF 09:B8DF: FE 40 05  INC ram_0540,X
C - - - - - 0x0278F2 09:B8E2: A9 07     LDA #$07
C - - - - - 0x0278F4 09:B8E4: 20 0E E1  JSR sub_0x03E11E
C - - - - - 0x0278F7 09:B8E7: 9D 60 05  STA ram_0560,X
C - - - - - 0x0278FA 09:B8EA: A9 04     LDA #$04
C - - - - - 0x0278FC 09:B8EC: 9D D0 05  STA ram_05D0,X
bra_B8EF:
C - - - - - 0x0278FF 09:B8EF: DE 60 05  DEC ram_0560,X
C - - - - - 0x027902 09:B8F2: 10 11     BPL bra_B905
C - - - - - 0x027904 09:B8F4: DE D0 05  DEC ram_05D0,X
C - - - - - 0x027907 09:B8F7: 30 D5     BMI bra_B8CE
loc_B8F9:
C D 1 - - - 0x027909 09:B8F9: BC D0 05  LDY ram_05D0,X
C - - - - - 0x02790C 09:B8FC: B9 62 BA  LDA tbl_BA62,Y
C - - - - - 0x02790F 09:B8FF: 20 B6 8B  JSR sub_8BB6
C - - - - - 0x027912 09:B902: 9D 60 05  STA ram_0560,X
bra_B905:
C - - - - - 0x027915 09:B905: BC D0 05  LDY ram_05D0,X
C - - - - - 0x027918 09:B908: B9 5D BA  LDA tbl_BA5D,Y
C - - - - - 0x02791B 09:B90B: F0 03     BEQ bra_B910
bra_B90D:
loc_B90D:
C D 1 - - - 0x02791D 09:B90D: 4C 94 DF  JMP loc_0x03DFA4
bra_B910:
C - - - - - 0x027920 09:B910: A9 2F     LDA #$2F
C - - - - - 0x027922 09:B912: 20 18 B9  JSR sub_B918
C - - - - - 0x027925 09:B915: 4C F9 B8  JMP loc_B8F9



sub_B918:
C - - - - - 0x027928 09:B918: 20 CC B3  JSR sub_B3CC
C - - - - - 0x02792B 09:B91B: BD 50 05  LDA ram_id_object,X
C - - - - - 0x02792E 09:B91E: 99 A0 04  STA ram_04A0,Y
C - - - - - 0x027931 09:B921: DE D0 05  DEC ram_05D0,X
C - - - - - 0x027934 09:B924: 60        RTS



loc_B925:
C D 1 - - - 0x027935 09:B925: BC 40 05  LDY ram_0540,X
C - - - - - 0x027938 09:B928: D0 0F     BNE bra_B939
C - - - - - 0x02793A 09:B92A: FE 40 05  INC ram_0540,X
C - - - - - 0x02793D 09:B92D: A9 58     LDA #$58
C - - - - - 0x02793F 09:B92F: 20 94 F6  JSR sub_0x03F6A4_play_sound
C - - - - - 0x027942 09:B932: A9 05     LDA #$05
C - - - - - 0x027944 09:B934: 9D D0 05  STA ram_05D0,X
C - - - - - 0x027947 09:B937: D0 0A     BNE bra_B943
bra_B939:
C - - - - - 0x027949 09:B939: DE 60 05  DEC ram_0560,X
C - - - - - 0x02794C 09:B93C: 10 15     BPL bra_B953
C - - - - - 0x02794E 09:B93E: DE D0 05  DEC ram_05D0,X
C - - - - - 0x027951 09:B941: 30 20     BMI bra_B963
bra_B943:
C - - - - - 0x027953 09:B943: 20 53 B9  JSR sub_B953
C - - - - - 0x027956 09:B946: BC D0 05  LDY ram_05D0,X
C - - - - - 0x027959 09:B949: B9 6C BA  LDA tbl_BA6C,Y
C - - - - - 0x02795C 09:B94C: 20 B6 8B  JSR sub_8BB6
C - - - - - 0x02795F 09:B94F: 9D 60 05  STA ram_0560,X
C - - - - - 0x027962 09:B952: 60        RTS
bra_B953:
sub_B953:
loc_B953:
C D 1 - - - 0x027963 09:B953: BC D0 05  LDY ram_05D0,X
C - - - - - 0x027966 09:B956: B9 66 BA  LDA tbl_BA66,Y
C - - - - - 0x027969 09:B959: D0 B2     BNE bra_B90D
C - - - - - 0x02796B 09:B95B: A9 30     LDA #$30
C - - - - - 0x02796D 09:B95D: 20 18 B9  JSR sub_B918
C - - - - - 0x027970 09:B960: 4C 53 B9  JMP loc_B953
bra_B963:
C - - - - - 0x027973 09:B963: 4C 6D 84  JMP loc_846D



loc_B966:
C D 1 - - - 0x027976 09:B966: BD 40 05  LDA ram_0540,X
C - - - - - 0x027979 09:B969: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 1 - I - 0x02797C 09:B96C: 78 B9     .word ofs_B978_00
- D 1 - I - 0x02797E 09:B96E: 89 B9     .word ofs_B989_01
- D 1 - I - 0x027980 09:B970: A7 B9     .word ofs_B9A7_02
- D 1 - I - 0x027982 09:B972: D6 B9     .word ofs_B9D6_03
- D 1 - I - 0x027984 09:B974: 1C BA     .word ofs_BA1C_04
- D 1 - I - 0x027986 09:B976: BB B8     .word ofs_B8BB_05



ofs_B978_00:
C - - J - - 0x027988 09:B978: A9 0C     LDA #$0C
loc_B97A:
C D 1 - - - 0x02798A 09:B97A: 20 0E E1  JSR sub_0x03E11E
C - - - - - 0x02798D 09:B97D: 9D 60 05  STA ram_0560,X
C - - - - - 0x027990 09:B980: A9 A2     LDA #$A2
C - - - - - 0x027992 09:B982: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x027995 09:B985: FE 40 05  INC ram_0540,X
bra_B988_RTS:
C - - - - - 0x027998 09:B988: 60        RTS



ofs_B989_01:
C - - J - - 0x027999 09:B989: DE 60 05  DEC ram_0560,X
C - - - - - 0x02799C 09:B98C: D0 FA     BNE bra_B988_RTS
C - - - - - 0x02799E 09:B98E: FE 40 05  INC ram_0540,X
C - - - - - 0x0279A1 09:B991: A9 56     LDA #$56
C - - - - - 0x0279A3 09:B993: 20 94 F6  JSR sub_0x03F6A4_play_sound
C - - - - - 0x0279A6 09:B996: A9 F9     LDA #$F9
C - - - - - 0x0279A8 09:B998: AC 26 01  LDY ram_option_speed
C - - - - - 0x0279AB 09:B99B: F0 02     BEQ bra_B99F
C - - - - - 0x0279AD 09:B99D: A9 F6     LDA #$F6
bra_B99F:
C - - - - - 0x0279AF 09:B99F: 9D 60 04  STA ram_Y_spd_hi_object,X
loc_B9A2:
C D 1 - - - 0x0279B2 09:B9A2: A9 41     LDA #$41
C - - - - - 0x0279B4 09:B9A4: 4C 7D D1  JMP loc_0x03D18D



ofs_B9A7_02:
C - - J - - 0x0279B7 09:B9A7: BC 10 04  LDY ram_Y_pos_hi_object,X
C - - - - - 0x0279BA 09:B9AA: C0 68     CPY #$68
C - - - - - 0x0279BC 09:B9AC: 90 16     BCC bra_B9C4
C - - - - - 0x0279BE 09:B9AE: A9 A1     LDA #$A1
C - - - - - 0x0279C0 09:B9B0: C0 80     CPY #$80
C - - - - - 0x0279C2 09:B9B2: B0 02     BCS bra_B9B6
C - - - - - 0x0279C4 09:B9B4: A9 D6     LDA #$D6
bra_B9B6:
C - - - - - 0x0279C6 09:B9B6: 9D 00 04  STA ram_anim_object,X
sub_B9B9:
C - - - - - 0x0279C9 09:B9B9: A9 48     LDA #$48
C - - - - - 0x0279CB 09:B9BB: 20 4C E1  JSR sub_0x03E15C
C - - - - - 0x0279CE 09:B9BE: 20 58 DC  JSR sub_0x03DC68
C - - - - - 0x0279D1 09:B9C1: 4C A2 B9  JMP loc_B9A2
bra_B9C4:
C - - - - - 0x0279D4 09:B9C4: FE 40 05  INC ram_0540,X
C - - - - - 0x0279D7 09:B9C7: 20 73 D0  JSR sub_0x03D083
C - - - - - 0x0279DA 09:B9CA: BD 54 05  LDA ram_id_special,X
C - - - - - 0x0279DD 09:B9CD: C9 39     CMP #$39
C - - - - - 0x0279DF 09:B9CF: F0 3E     BEQ bra_BA0F
C - - - - - 0x0279E1 09:B9D1: A9 06     LDA #$06
C - - - - - 0x0279E3 09:B9D3: 4C 38 DF  JMP loc_0x03DF48



ofs_B9D6_03:
C - - J - - 0x0279E6 09:B9D6: A9 C0     LDA #$C0
C - - - - - 0x0279E8 09:B9D8: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x0279EB 09:B9DB: A0 0D     LDY #$0D
C - - - - - 0x0279ED 09:B9DD: 20 4F DF  JSR sub_0x03DF5F
C - - - - - 0x0279F0 09:B9E0: BD C0 05  LDA ram_05C0,X
C - - - - - 0x0279F3 09:B9E3: 30 2A     BMI bra_BA0F
C - - - - - 0x0279F5 09:B9E5: D0 0C     BNE bra_B9F3
C - - - - - 0x0279F7 09:B9E7: BD D0 05  LDA ram_05D0,X
C - - - - - 0x0279FA 09:B9EA: C9 04     CMP #$04
C - - - - - 0x0279FC 09:B9EC: D0 05     BNE bra_B9F3
C - - - - - 0x0279FE 09:B9EE: A9 39     LDA #$39
C - - - - - 0x027A00 09:B9F0: 20 CC B3  JSR sub_B3CC
bra_B9F3:
C - - - - - 0x027A03 09:B9F3: BC D0 05  LDY ram_05D0,X
C - - - - - 0x027A06 09:B9F6: B9 90 BA  LDA tbl_BA90,Y
C - - - - - 0x027A09 09:B9F9: 9D 0C 04  STA ram_anim_special,X
C - - - - - 0x027A0C 09:B9FC: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x027A0F 09:B9FF: 9D 4C 04  STA ram_044C,X
C - - - - - 0x027A12 09:BA02: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x027A15 09:BA05: 9D 1C 04  STA ram_041C,X
C - - - - - 0x027A18 09:BA08: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x027A1B 09:BA0B: 9D 1C 05  STA ram_051C,X
bra_BA0E_RTS:
C - - - - - 0x027A1E 09:BA0E: 60        RTS
bra_BA0F:
C - - - - - 0x027A1F 09:BA0F: FE 40 05  INC ram_0540,X
C - - - - - 0x027A22 09:BA12: A9 00     LDA #$00
C - - - - - 0x027A24 09:BA14: 9D 0C 04  STA ram_anim_special,X
C - - - - - 0x027A27 09:BA17: A9 03     LDA #$03
C - - - - - 0x027A29 09:BA19: 4C 38 DF  JMP loc_0x03DF48



ofs_BA1C_04:
C - - J - - 0x027A2C 09:BA1C: 20 B9 B9  JSR sub_B9B9
C - - - - - 0x027A2F 09:BA1F: A0 12     LDY #$12
C - - - - - 0x027A31 09:BA21: 20 4F DF  JSR sub_0x03DF5F
C - - - - - 0x027A34 09:BA24: BD 60 04  LDA ram_Y_spd_hi_object,X
C - - - - - 0x027A37 09:BA27: 30 E5     BMI bra_BA0E_RTS
C - - - - - 0x027A39 09:BA29: BD 10 04  LDA ram_Y_pos_hi_object,X
C - - - - - 0x027A3C 09:BA2C: C9 B0     CMP #$B0
C - - - - - 0x027A3E 09:BA2E: 90 DE     BCC bra_BA0E_RTS
C - - - - - 0x027A40 09:BA30: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x027A43 09:BA33: A9 10     LDA #$10
C - - - - - 0x027A45 09:BA35: 4C 7A B9  JMP loc_B97A



tbl_BA38:
- D 1 - - - 0x027A48 09:BA38: 34        .byte $34   ; 00
- - - - - - 0x027A49 09:BA39: 00        .byte $00   ; 01
- D 1 - - - 0x027A4A 09:BA3A: 33        .byte $33   ; 02



tbl_BA3B:
- D 1 - - - 0x027A4B 09:BA3B: FD        .byte $FD   ; 
tbl_BA3C:
- D 1 - - - 0x027A4C 09:BA3C: B0        .byte $B0   ; 
- D 1 - - - 0x027A4D 09:BA3D: FF        .byte $FF   ; 
- D 1 - - - 0x027A4E 09:BA3E: 60        .byte $60   ; 



tbl_BA3F:
- D 1 - - - 0x027A4F 09:BA3F: AF        .byte $AF   ; 00
- D 1 - - - 0x027A50 09:BA40: E3        .byte $E3   ; 01
- D 1 - - - 0x027A51 09:BA41: AE        .byte $AE   ; 02
- D 1 - - - 0x027A52 09:BA42: AE        .byte $AE   ; 03
- D 1 - - - 0x027A53 09:BA43: A3        .byte $A3   ; 04
- D 1 - - - 0x027A54 09:BA44: A3        .byte $A3   ; 05



tbl_BA45:
- D 1 - - - 0x027A55 09:BA45: B4        .byte $B4   ; 00
- D 1 - - - 0x027A56 09:BA46: B3        .byte $B3   ; 01
- D 1 - - - 0x027A57 09:BA47: B2        .byte $B2   ; 02
- D 1 - - - 0x027A58 09:BA48: B1        .byte $B1   ; 03



tbl_BA49:
- D 1 - - - 0x027A59 09:BA49: 07        .byte $07   ; 00
- D 1 - - - 0x027A5A 09:BA4A: 04        .byte $04   ; 01
- D 1 - - - 0x027A5B 09:BA4B: 04        .byte $04   ; 02
- D 1 - - - 0x027A5C 09:BA4C: 04        .byte $04   ; 03



tbl_BA4D:
- D 1 - - - 0x027A5D 09:BA4D: B1        .byte $B1   ; 00
- D 1 - - - 0x027A5E 09:BA4E: A9        .byte $A9   ; 01
- D 1 - - - 0x027A5F 09:BA4F: B0        .byte $B0   ; 02
- D 1 - - - 0x027A60 09:BA50: AF        .byte $AF   ; 03
- D 1 - - - 0x027A61 09:BA51: AE        .byte $AE   ; 04
- D 1 - - - 0x027A62 09:BA52: AD        .byte $AD   ; 05
- D 1 - - - 0x027A63 09:BA53: AC        .byte $AC   ; 06
- D 1 - - - 0x027A64 09:BA54: AB        .byte $AB   ; 07



tbl_BA55:
- D 1 - - - 0x027A65 09:BA55: 05        .byte $05   ; 00
- D 1 - - - 0x027A66 09:BA56: 06        .byte $06   ; 01
- D 1 - - - 0x027A67 09:BA57: 05        .byte $05   ; 02
- D 1 - - - 0x027A68 09:BA58: 05        .byte $05   ; 03
- D 1 - - - 0x027A69 09:BA59: 05        .byte $05   ; 04
- D 1 - - - 0x027A6A 09:BA5A: 06        .byte $06   ; 05
- D 1 - - - 0x027A6B 09:BA5B: 06        .byte $06   ; 06
- D 1 - - - 0x027A6C 09:BA5C: 05        .byte $05   ; 07



tbl_BA5D:
- D 1 - - - 0x027A6D 09:BA5D: 97        .byte $97   ; 00
- D 1 - - - 0x027A6E 09:BA5E: A5        .byte $A5   ; 01
- D 1 - - - 0x027A6F 09:BA5F: 00        .byte $00   ; 02
- D 1 - - - 0x027A70 09:BA60: A5        .byte $A5   ; 03
- D 1 - - - 0x027A71 09:BA61: 97        .byte $97   ; 04



tbl_BA62:
- D 1 - - - 0x027A72 09:BA62: 10        .byte $10   ; 00
- D 1 - - - 0x027A73 09:BA63: 2D        .byte $2D   ; 01
- D 1 - - - 0x027A74 09:BA64: 00        .byte $00   ; 02
- D 1 - - - 0x027A75 09:BA65: 04        .byte $04   ; 03



tbl_BA66:
- D 1 - - - 0x027A76 09:BA66: A2        .byte $A2   ; 00
- D 1 - - - 0x027A77 09:BA67: AA        .byte $AA   ; 01
- D 1 - - - 0x027A78 09:BA68: 00        .byte $00   ; 02
- D 1 - - - 0x027A79 09:BA69: AA        .byte $AA   ; 03
- D 1 - - - 0x027A7A 09:BA6A: 8C        .byte $8C   ; 04
- D 1 - - - 0x027A7B 09:BA6B: 93        .byte $93   ; 05



tbl_BA6C:
- D 1 - - - 0x027A7C 09:BA6C: 16        .byte $16   ; 00
- D 1 - - - 0x027A7D 09:BA6D: 06        .byte $06   ; 01
- - - - - - 0x027A7E 09:BA6E: 01        .byte $01   ; 02
- D 1 - - - 0x027A7F 09:BA6F: 04        .byte $04   ; 03
- D 1 - - - 0x027A80 09:BA70: 04        .byte $04   ; 04
- D 1 - - - 0x027A81 09:BA71: 06        .byte $06   ; 05



tbl_BA72:
- D 1 - - - 0x027A82 09:BA72: AF        .byte $AF   ; 00
- D 1 - - - 0x027A83 09:BA73: AF        .byte $AF   ; 01
- D 1 - - - 0x027A84 09:BA74: AE        .byte $AE   ; 02
- D 1 - - - 0x027A85 09:BA75: AF        .byte $AF   ; 03
- D 1 - - - 0x027A86 09:BA76: B0        .byte $B0   ; 04
- D 1 - - - 0x027A87 09:BA77: AF        .byte $AF   ; 05
- D 1 - - - 0x027A88 09:BA78: AE        .byte $AE   ; 06
- D 1 - - - 0x027A89 09:BA79: AF        .byte $AF   ; 07
- D 1 - - - 0x027A8A 09:BA7A: AF        .byte $AF   ; 08
- D 1 - - - 0x027A8B 09:BA7B: B0        .byte $B0   ; 09
- D 1 - - - 0x027A8C 09:BA7C: AE        .byte $AE   ; 0A



tbl_BA7D:
- D 1 - - - 0x027A8D 09:BA7D: B3        .byte $B3   ; 00
- D 1 - - - 0x027A8E 09:BA7E: 00        .byte $00   ; 01
- D 1 - - - 0x027A8F 09:BA7F: B2        .byte $B2   ; 02
- D 1 - - - 0x027A90 09:BA80: 00        .byte $00   ; 03
- D 1 - - - 0x027A91 09:BA81: B1        .byte $B1   ; 04
- D 1 - - - 0x027A92 09:BA82: 00        .byte $00   ; 05
- D 1 - - - 0x027A93 09:BA83: B3        .byte $B3   ; 06
- D 1 - - - 0x027A94 09:BA84: 00        .byte $00   ; 07
- D 1 - - - 0x027A95 09:BA85: B2        .byte $B2   ; 08
- D 1 - - - 0x027A96 09:BA86: 00        .byte $00   ; 09
- D 1 - - - 0x027A97 09:BA87: B1        .byte $B1   ; 0A



tbl_BA88:
- D 1 - - - 0x027A98 09:BA88: 10        .byte $10   ; 
- D 1 - - - 0x027A99 09:BA89: 04        .byte $04   ; 
tbl_BA8A:
- D 1 - - - 0x027A9A 09:BA8A: 96        .byte $96   ; 
- D 1 - - - 0x027A9B 09:BA8B: 95        .byte $95   ; 
- - - - - - 0x027A9C 09:BA8C: 9D        .byte $9D   ; 
- - - - - - 0x027A9D 09:BA8D: 9E        .byte $9E   ; 
- - - - - - 0x027A9E 09:BA8E: 9F        .byte $9F   ; 
- - - - - - 0x027A9F 09:BA8F: A0        .byte $A0   ; 



tbl_BA90:
- D 1 - - - 0x027AA0 09:BA90: C7        .byte $C7   ; 00
- D 1 - - - 0x027AA1 09:BA91: C6        .byte $C6   ; 01
- D 1 - - - 0x027AA2 09:BA92: C5        .byte $C5   ; 02
- D 1 - - - 0x027AA3 09:BA93: C7        .byte $C7   ; 03
- D 1 - - - 0x027AA4 09:BA94: C6        .byte $C6   ; 04
- D 1 - - - 0x027AA5 09:BA95: C5        .byte $C5   ; 05



sub_BA96:
C - - - - - 0x027AA6 09:BA96: BC 26 06  LDY ram_0626,X
C - - - - - 0x027AA9 09:BA99: D0 23     BNE bra_BABE
bra_BA9B:
C - - - - - 0x027AAB 09:BA9B: B5 8E     LDA ram_btn_press,X
C - - - - - 0x027AAD 09:BA9D: 29 03     AND #con_btns_LR
C - - - - - 0x027AAF 09:BA9F: F0 0D     BEQ bra_BAAE_RTS
C - - - - - 0x027AB1 09:BAA1: 9D 24 06  STA ram_0624,X
C - - - - - 0x027AB4 09:BAA4: A9 01     LDA #$01
C - - - - - 0x027AB6 09:BAA6: 9D 26 06  STA ram_0626,X
C - - - - - 0x027AB9 09:BAA9: A9 1E     LDA #$1E
C - - - - - 0x027ABB 09:BAAB: 9D 28 06  STA ram_0628,X
bra_BAAE_RTS:
C - - - - - 0x027ABE 09:BAAE: 60        RTS



bra_BABE:
C - - - - - 0x027ACE 09:BABE: 88        DEY
C - - - - - 0x027ACF 09:BABF: D0 14     BNE bra_BAD5
C - - - - - 0x027AD1 09:BAC1: DE 28 06  DEC ram_0628,X
C - - - - - 0x027AD4 09:BAC4: F0 16     BEQ bra_BADC
C - - - - - 0x027AD6 09:BAC6: B5 8E     LDA ram_btn_press,X
C - - - - - 0x027AD8 09:BAC8: 29 03     AND #con_btns_LR
C - - - - - 0x027ADA 09:BACA: F0 E2     BEQ bra_BAAE_RTS
C - - - - - 0x027ADC 09:BACC: 3D 24 06  AND ram_0624,X
C - - - - - 0x027ADF 09:BACF: F0 CA     BEQ bra_BA9B
C - - - - - 0x027AE1 09:BAD1: FE 26 06  INC ram_0626,X
C - - - - - 0x027AE4 09:BAD4: 60        RTS
bra_BAD5:
C - - - - - 0x027AE5 09:BAD5: B5 91     LDA ram_btn_hold,X
C - - - - - 0x027AE7 09:BAD7: 3D 24 06  AND ram_0624,X
C - - - - - 0x027AEA 09:BADA: D0 D2     BNE bra_BAAE_RTS
bra_BADC:
C - - - - - 0x027AEC 09:BADC: A9 00     LDA #$00
C - - - - - 0x027AEE 09:BADE: 9D 26 06  STA ram_0626,X
C - - - - - 0x027AF1 09:BAE1: 9D 28 06  STA ram_0628,X
C - - - - - 0x027AF4 09:BAE4: 9D 24 06  STA ram_0624,X
C - - - - - 0x027AF7 09:BAE7: 60        RTS



sub_BAE8:
.export sub_0x027AF8
sub_0x027AF8:
C - - - - - 0x027AF8 09:BAE8: A2 0B     LDX #$0B
bra_BAEA_loop:
C - - - - - 0x027AFA 09:BAEA: BC 50 05  LDY ram_id_object,X
C - - - - - 0x027AFD 09:BAED: F0 03     BEQ bra_BAF2
C - - - - - 0x027AFF 09:BAEF: 20 F8 BA  JSR sub_BAF8
bra_BAF2:
C - - - - - 0x027B02 09:BAF2: CA        DEX
C - - - - - 0x027B03 09:BAF3: E0 0A     CPX #$0A
C - - - - - 0x027B05 09:BAF5: B0 F3     BCS bra_BAEA_loop
bra_BAF7_RTS:
C - - - - - 0x027B07 09:BAF7: 60        RTS



sub_BAF8:
C - - - - - 0x027B08 09:BAF8: 88        DEY
C - - - - - 0x027B09 09:BAF9: D0 2D     BNE bra_BB28
C - - - - - 0x027B0B 09:BAFB: BC 30 05  LDY ram_0530,X
C - - - - - 0x027B0E 09:BAFE: D0 14     BNE bra_BB14
C - - - - - 0x027B10 09:BB00: A9 0C     LDA #$0C
bra_BB02:
C - - - - - 0x027B12 09:BB02: BC 50 05  LDY ram_id_object,X
C - - - - - 0x027B15 09:BB05: F0 01     BEQ bra_BB08
C - - - - - 0x027B17 09:BB07: 4A        LSR
bra_BB08:
C - - - - - 0x027B18 09:BB08: 9D 60 05  STA ram_0560,X
C - - - - - 0x027B1B 09:BB0B: A9 80     LDA #$80
C - - - - - 0x027B1D 09:BB0D: 9D E0 05  STA ram_05E0,X
C - - - - - 0x027B20 09:BB10: FE 30 05  INC ram_0530,X
C - - - - - 0x027B23 09:BB13: 60        RTS
bra_BB14:
C - - - - - 0x027B24 09:BB14: A9 03     LDA #$03
C - - - - - 0x027B26 09:BB16: BC 60 05  LDY ram_0560,X
C - - - - - 0x027B29 09:BB19: C0 06     CPY #$06
C - - - - - 0x027B2B 09:BB1B: 69 00     ADC #$00
bra_BB1D:
C - - - - - 0x027B2D 09:BB1D: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x027B30 09:BB20: DE 60 05  DEC ram_0560,X
C - - - - - 0x027B33 09:BB23: 10 D2     BPL bra_BAF7_RTS
C - - - - - 0x027B35 09:BB25: 4C D3 DA  JMP loc_0x03DAE3
bra_BB28:
C - - - - - 0x027B38 09:BB28: A9 83     LDA #$83
C - - - - - 0x027B3A 09:BB2A: 9D 00 05  STA ram_0500,X
C - - - - - 0x027B3D 09:BB2D: BC 30 05  LDY ram_0530,X
C - - - - - 0x027B40 09:BB30: D0 04     BNE bra_BB36
C - - - - - 0x027B42 09:BB32: A9 0C     LDA #$0C
C - - - - - 0x027B44 09:BB34: D0 CC     BNE bra_BB02
bra_BB36:
C - - - - - 0x027B46 09:BB36: A9 04     LDA #$04
C - - - - - 0x027B48 09:BB38: D0 E3     BNE bra_BB1D



loc_BB3A:
C D 1 - - - 0x027B4A 09:BB3A: A9 05     LDA #$05
C - - - - - 0x027B4C 09:BB3C: A4 2C     LDY ram_002C
C - - - - - 0x027B4E 09:BB3E: C0 03     CPY #$03
C - - - - - 0x027B50 09:BB40: B0 41     BCS bra_BB83
C - - - - - 0x027B52 09:BB42: AC 60 05  LDY ram_0560
C - - - - - 0x027B55 09:BB45: C0 40     CPY #$40
C - - - - - 0x027B57 09:BB47: 90 3A     BCC bra_BB83
C - - - - - 0x027B59 09:BB49: 18        CLC
C - - - - - 0x027B5A 09:BB4A: AD 40 06  LDA ram_round
C - - - - - 0x027B5D 09:BB4D: 69 06     ADC #$06
C - - - - - 0x027B5F 09:BB4F: D0 32     BNE bra_BB83



.export sub_0x027B61
sub_0x027B61:
C - - - - - 0x027B61 09:BB51: AD 71 06  LDA ram_0671
C - - - - - 0x027B64 09:BB54: A4 2C     LDY ram_002C
C - - - - - 0x027B66 09:BB56: F0 25     BEQ bra_BB7D
C - - - - - 0x027B68 09:BB58: 88        DEY
C - - - - - 0x027B69 09:BB59: F0 28     BEQ bra_BB83
C - - - - - 0x027B6B 09:BB5B: 88        DEY
C - - - - - 0x027B6C 09:BB5C: F0 1F     BEQ bra_BB7D
C - - - - - 0x027B6E 09:BB5E: AD 71 06  LDA ram_0671
C - - - - - 0x027B71 09:BB61: C9 03     CMP #$03
C - - - - - 0x027B73 09:BB63: B0 1E     BCS bra_BB83
C - - - - - 0x027B75 09:BB65: AD 54 01  LDA ram_0154
C - - - - - 0x027B78 09:BB68: 0A        ASL
C - - - - - 0x027B79 09:BB69: 6D 71 06  ADC ram_0671
C - - - - - 0x027B7C 09:BB6C: A8        TAY
C - - - - - 0x027B7D 09:BB6D: B9 55 01  LDA ram_0155,Y
C - - - - - 0x027B80 09:BB70: 10 04     BPL bra_BB76
C - - - - - 0x027B82 09:BB72: A9 0E     LDA #$0E
C - - - - - 0x027B84 09:BB74: D0 0D     BNE bra_BB83
bra_BB76:
C - - - - - 0x027B86 09:BB76: A8        TAY
C - - - - - 0x027B87 09:BB77: B9 05 01  LDA ram_0105,Y
C - - - - - 0x027B8A 09:BB7A: 18        CLC
C - - - - - 0x027B8B 09:BB7B: 69 0A     ADC #$0A
bra_BB7D:
C - - - - - 0x027B8D 09:BB7D: C9 01     CMP #$01
C - - - - - 0x027B8F 09:BB7F: D0 02     BNE bra_BB83
C - - - - - 0x027B91 09:BB81: 69 00     ADC #$00
bra_BB83:
C - - - - - 0x027B93 09:BB83: A8        TAY
C - - - - - 0x027B94 09:BB84: A5 95     LDA ram_0095
C - - - - - 0x027B96 09:BB86: C9 10     CMP #$10
C - - - - - 0x027B98 09:BB88: A9 00     LDA #$00
C - - - - - 0x027B9A 09:BB8A: B0 03     BCS bra_BB8F
C - - - - - 0x027B9C 09:BB8C: B9 A8 BB  LDA tbl_BBA8,Y
bra_BB8F:
C - - - - - 0x027B9F 09:BB8F: 8D 0C 04  STA ram_anim_special
C - - - - - 0x027BA2 09:BB92: A9 40     LDA #$40
C - - - - - 0x027BA4 09:BB94: 8D 1C 04  STA ram_041C
C - - - - - 0x027BA7 09:BB97: A9 68     LDA #$68
C - - - - - 0x027BA9 09:BB99: 8D 4C 04  STA ram_044C
C - - - - - 0x027BAC 09:BB9C: A9 00     LDA #$00
C - - - - - 0x027BAE 09:BB9E: 8D 0C 05  STA ram_050C
C - - - - - 0x027BB1 09:BBA1: 8D 1C 05  STA ram_051C
C - - - - - 0x027BB4 09:BBA4: 8D 06 04  STA ram_0406
C - - - - - 0x027BB7 09:BBA7: 60        RTS



tbl_BBA8:
- D 1 - - - 0x027BB8 09:BBA8: 0C        .byte $0C   ; 00
- D 1 - - - 0x027BB9 09:BBA9: 0D        .byte $0D   ; 01
- D 1 - - - 0x027BBA 09:BBAA: 0E        .byte $0E   ; 02
- D 1 - - - 0x027BBB 09:BBAB: 0F        .byte $0F   ; 03
- D 1 - - - 0x027BBC 09:BBAC: 10        .byte $10   ; 04
- D 1 - - - 0x027BBD 09:BBAD: 0B        .byte $0B   ; 05
- D 1 - - - 0x027BBE 09:BBAE: 07        .byte $07   ; 06
- D 1 - - - 0x027BBF 09:BBAF: 08        .byte $08   ; 07
- D 1 - - - 0x027BC0 09:BBB0: 09        .byte $09   ; 08
- D 1 - - - 0x027BC1 09:BBB1: 0A        .byte $0A   ; 09
- D 1 - - - 0x027BC2 09:BBB2: 0C        .byte $0C   ; 0A
- D 1 - - - 0x027BC3 09:BBB3: 0D        .byte $0D   ; 0B
- D 1 - - - 0x027BC4 09:BBB4: 11        .byte $11   ; 0C
- D 1 - - - 0x027BC5 09:BBB5: 12        .byte $12   ; 0D
- D 1 - - - 0x027BC6 09:BBB6: 0E        .byte $0E   ; 0E



.export sub_0x027BC7
sub_0x027BC7:
C - - - - - 0x027BC7 09:BBB7: A5 AA     LDA ram_00AA
C - - - - - 0x027BC9 09:BBB9: F0 12     BEQ bra_BBCD
C - - - - - 0x027BCB 09:BBBB: 30 05     BMI bra_BBC2
C - - - - - 0x027BCD 09:BBBD: C6 AA     DEC ram_00AA
bra_BBBF:
C - - - - - 0x027BCF 09:BBBF: 4C 2E BC  JMP loc_BC2E
bra_BBC2:
- - - - - - 0x027BD2 09:BBC2: E6 AB     INC ram_00AB
- - - - - - 0x027BD4 09:BBC4: 38        SEC
- - - - - - 0x027BD5 09:BBC5: A5 AB     LDA ram_00AB
- - - - - - 0x027BD7 09:BBC7: E9 04     SBC #$04
- - - - - - 0x027BD9 09:BBC9: 90 F4     BCC bra_BBBF
- - - - - - 0x027BDB 09:BBCB: 85 AB     STA ram_00AB
bra_BBCD:
C - - - - - 0x027BDD 09:BBCD: E6 2A     INC ram_002A
C - - - - - 0x027BDF 09:BBCF: 20 96 EA  JSR sub_0x03EAA6
C - - - - - 0x027BE2 09:BBD2: 20 75 F7  JSR sub_0x03F785
C - - - - - 0x027BE5 09:BBD5: 20 6C EF  JSR sub_0x03EF7C
C - - - - - 0x027BE8 09:BBD8: 20 7C BD  JSR sub_BD7C
C - - - - - 0x027BEB 09:BBDB: A2 00     LDX #$00
C - - - - - 0x027BED 09:BBDD: 86 AD     STX ram_00AD
C - - - - - 0x027BEF 09:BBDF: A6 AD     LDX ram_00AD
C - - - - - 0x027BF1 09:BBE1: BD 36 06  LDA ram_0636,X
C - - - - - 0x027BF4 09:BBE4: F0 14     BEQ bra_BBFA
C - - - - - 0x027BF6 09:BBE6: DE 36 06  DEC ram_0636,X
C - - - - - 0x027BF9 09:BBE9: BD 10 05  LDA ram_turn_side_object,X
C - - - - - 0x027BFC 09:BBEC: 0A        ASL
C - - - - - 0x027BFD 09:BBED: 0A        ASL
C - - - - - 0x027BFE 09:BBEE: A9 FF     LDA #$FF
C - - - - - 0x027C00 09:BBF0: 90 02     BCC bra_BBF4
C - - - - - 0x027C02 09:BBF2: A9 00     LDA #$00
bra_BBF4:
C - - - - - 0x027C04 09:BBF4: 7D 80 04  ADC ram_X_spd_hi_object,X
C - - - - - 0x027C07 09:BBF7: 9D 80 04  STA ram_X_spd_hi_object,X
bra_BBFA:
C - - - - - 0x027C0A 09:BBFA: A6 AD     LDX ram_00AD
C - - - - - 0x027C0C 09:BBFC: BD 80 04  LDA ram_X_spd_hi_object,X
C - - - - - 0x027C0F 09:BBFF: 0A        ASL
C - - - - - 0x027C10 09:BC00: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x027C13 09:BC03: B0 06     BCS bra_BC0B
C - - - - - 0x027C15 09:BC05: C9 E8     CMP #$E8
C - - - - - 0x027C17 09:BC07: B0 09     BCS bra_BC12
C - - - - - 0x027C19 09:BC09: 90 04     BCC bra_BC0F
bra_BC0B:
C - - - - - 0x027C1B 09:BC0B: C9 18     CMP #$18
C - - - - - 0x027C1D 09:BC0D: 90 03     BCC bra_BC12
bra_BC0F:
C - - - - - 0x027C1F 09:BC0F: 20 65 DB  JSR sub_0x03DB75
bra_BC12:
C - - - - - 0x027C22 09:BC12: 20 4C DB  JSR sub_0x03DB5C
C - - - - - 0x027C25 09:BC15: 20 3F A2  JSR sub_A23F
C - - - - - 0x027C28 09:BC18: 20 4F BD  JSR sub_BD4F
C - - - - - 0x027C2B 09:BC1B: 20 64 BC  JSR sub_BC64
C - - - - - 0x027C2E 09:BC1E: AD 35 06  LDA ram_0635
C - - - - - 0x027C31 09:BC21: F0 08     BEQ bra_BC2B
C - - - - - 0x027C33 09:BC23: A9 00     LDA #$00
C - - - - - 0x027C35 09:BC25: 8D 35 06  STA ram_0635
C - - - - - 0x027C38 09:BC28: 20 F6 AF  JSR sub_AFF6
bra_BC2B:
C - - - - - 0x027C3B 09:BC2B: 20 42 B1  JSR sub_B142
loc_BC2E:
C D 1 - - - 0x027C3E 09:BC2E: 20 E8 BA  JSR sub_BAE8
C - - - - - 0x027C41 09:BC31: A2 0F     LDX #$0F
bra_BC33:
C - - - - - 0x027C43 09:BC33: BD E0 05  LDA ram_05E0,X
C - - - - - 0x027C46 09:BC36: 10 27     BPL bra_BC5F
C - - - - - 0x027C48 09:BC38: 38        SEC
C - - - - - 0x027C49 09:BC39: BD 50 04  LDA ram_X_pos_lo_object,X
C - - - - - 0x027C4C 09:BC3C: ED 3D 06  SBC ram_063D
C - - - - - 0x027C4F 09:BC3F: 9D 50 04  STA ram_X_pos_lo_object,X
C - - - - - 0x027C52 09:BC42: A0 00     LDY #$00
C - - - - - 0x027C54 09:BC44: 84 00     STY ram_0000
C - - - - - 0x027C56 09:BC46: 38        SEC
C - - - - - 0x027C57 09:BC47: AD 3C 06  LDA ram_063C
C - - - - - 0x027C5A 09:BC4A: 10 02     BPL bra_BC4E
- - - - - - 0x027C5C 09:BC4C: C6 00     DEC ram_0000
bra_BC4E:
C - - - - - 0x027C5E 09:BC4E: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x027C61 09:BC51: ED 3C 06  SBC ram_063C
C - - - - - 0x027C64 09:BC54: 9D 40 04  STA ram_X_pos_hi_object,X
C - - - - - 0x027C67 09:BC57: BD 30 04  LDA ram_X_pos_max_object,X
C - - - - - 0x027C6A 09:BC5A: E5 00     SBC ram_0000
C - - - - - 0x027C6C 09:BC5C: 9D 30 04  STA ram_X_pos_max_object,X
bra_BC5F:
C - - - - - 0x027C6F 09:BC5F: CA        DEX
C - - - - - 0x027C70 09:BC60: 10 D1     BPL bra_BC33
C - - - - - 0x027C72 09:BC62: 60        RTS
bra_BC63_RTS:
C - - - - - 0x027C73 09:BC63: 60        RTS



sub_BC64:
C - - - - - 0x027C74 09:BC64: A2 01     LDX #$01
C - - - - - 0x027C76 09:BC66: 86 A8     STX ram_00A8
C - - - - - 0x027C78 09:BC68: 86 AC     STX ram_00AC
C - - - - - 0x027C7A 09:BC6A: BD F0 05  LDA ram_05F0,X
C - - - - - 0x027C7D 09:BC6D: D0 F4     BNE bra_BC63_RTS
C - - - - - 0x027C7F 09:BC6F: BD 80 05  LDA ram_0580,X
C - - - - - 0x027C82 09:BC72: 30 EF     BMI bra_BC63_RTS
C - - - - - 0x027C84 09:BC74: BD 40 04  LDA ram_X_pos_hi_object,X
C - - - - - 0x027C87 09:BC77: 85 00     STA ram_0000
C - - - - - 0x027C89 09:BC79: 85 0E     STA ram_000E
C - - - - - 0x027C8B 09:BC7B: A0 00     LDY #$00
C - - - - - 0x027C8D 09:BC7D: 84 A9     STY ram_object_index
bra_BC7F_loop:
C - - - - - 0x027C8F 09:BC7F: A6 A8     LDX ram_00A8
C - - - - - 0x027C91 09:BC81: A4 A9     LDY ram_object_index
C - - - - - 0x027C93 09:BC83: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x027C96 09:BC86: F0 2D     BEQ bra_BCB5
C - - - - - 0x027C98 09:BC88: B9 80 05  LDA ram_0580,Y
C - - - - - 0x027C9B 09:BC8B: 30 28     BMI bra_BCB5
C - - - - - 0x027C9D 09:BC8D: B9 B0 05  LDA ram_05B0,Y
C - - - - - 0x027CA0 09:BC90: F0 23     BEQ bra_BCB5
C - - - - - 0x027CA2 09:BC92: B9 30 04  LDA ram_X_pos_max_object,Y
C - - - - - 0x027CA5 09:BC95: D0 1E     BNE bra_BCB5
C - - - - - 0x027CA7 09:BC97: BE 70 05  LDX ram_0570,Y
C - - - - - 0x027CAA 09:BC9A: F0 19     BEQ bra_BCB5
C - - - - - 0x027CAC 09:BC9C: BD 4C AD  LDA tbl_AD4C,X
C - - - - - 0x027CAF 09:BC9F: 18        CLC
C - - - - - 0x027CB0 09:BCA0: 69 0C     ADC #$0C
C - - - - - 0x027CB2 09:BCA2: 85 02     STA ram_0002
C - - - - - 0x027CB4 09:BCA4: B9 40 04  LDA ram_X_pos_hi_object,Y
C - - - - - 0x027CB7 09:BCA7: 85 0D     STA ram_000D
C - - - - - 0x027CB9 09:BCA9: A6 A8     LDX ram_00A8
C - - - - - 0x027CBB 09:BCAB: 20 0C D2  JSR sub_0x03D21C
C - - - - - 0x027CBE 09:BCAE: C5 02     CMP ram_0002
C - - - - - 0x027CC0 09:BCB0: B0 03     BCS bra_BCB5
C - - - - - 0x027CC2 09:BCB2: 4C C0 BC  JMP loc_BCC0
bra_BCB5:
C - - - - - 0x027CC5 09:BCB5: E6 A9     INC ram_object_index
C - - - - - 0x027CC7 09:BCB7: E6 A9     INC ram_object_index
C - - - - - 0x027CC9 09:BCB9: A4 A9     LDY ram_object_index
C - - - - - 0x027CCB 09:BCBB: C0 07     CPY #$07
C - - - - - 0x027CCD 09:BCBD: 90 C0     BCC bra_BC7F_loop
C - - - - - 0x027CCF 09:BCBF: 60        RTS



loc_BCC0:
C D 1 - - - 0x027CD0 09:BCC0: A9 01     LDA #$01
C - - - - - 0x027CD2 09:BCC2: 9D 1E 06  STA ram_061E,X
C - - - - - 0x027CD5 09:BCC5: 99 F0 05  STA ram_05F0,Y
C - - - - - 0x027CD8 09:BCC8: B9 80 05  LDA ram_0580,Y
C - - - - - 0x027CDB 09:BCCB: 0A        ASL
C - - - - - 0x027CDC 09:BCCC: 30 05     BMI bra_BCD3
C - - - - - 0x027CDE 09:BCCE: A9 06     LDA #$06
C - - - - - 0x027CE0 09:BCD0: 8D 36 06  STA ram_0636
bra_BCD3:
C - - - - - 0x027CE3 09:BCD3: A9 0A     LDA #$0A
C - - - - - 0x027CE5 09:BCD5: 85 AA     STA ram_00AA
C - - - - - 0x027CE7 09:BCD7: B9 B0 05  LDA ram_05B0,Y
C - - - - - 0x027CEA 09:BCDA: 85 08     STA ram_0008
C - - - - - 0x027CEC 09:BCDC: 20 88 B0  JSR sub_B088
C - - - - - 0x027CEF 09:BCDF: A4 A9     LDY ram_object_index
C - - - - - 0x027CF1 09:BCE1: B9 50 05  LDA ram_id_object,Y
C - - - - - 0x027CF4 09:BCE4: C9 36     CMP #$36
C - - - - - 0x027CF6 09:BCE6: F0 0C     BEQ bra_BCF4
C - - - - - 0x027CF8 09:BCE8: C9 2F     CMP #$2F
C - - - - - 0x027CFA 09:BCEA: B0 0B     BCS bra_BCF7
C - - - - - 0x027CFC 09:BCEC: A9 00     LDA #$00
C - - - - - 0x027CFE 09:BCEE: 99 B0 05  STA ram_05B0,Y
C - - - - - 0x027D01 09:BCF1: A9 0D     LDA #$0D
C - - - - - 0x027D03 09:BCF3: 2C        .byte $2C
bra_BCF4:
C - - - - - 0x027D04 09:BCF4: A9 0E     LDA #$0E
C - - - - - 0x027D06 09:BCF6: 2C        .byte $2C
bra_BCF7:
C - - - - - 0x027D07 09:BCF7: A9 1F     LDA #$1F
C - - - - - 0x027D09 09:BCF9: A9 10     LDA #$10
C - - - - - 0x027D0B 09:BCFB: 9D F0 05  STA ram_05F0,X
C - - - - - 0x027D0E 09:BCFE: A9 12     LDA #$12
C - - - - - 0x027D10 09:BD00: 20 94 F6  JSR sub_0x03F6A4_play_sound
C - - - - - 0x027D13 09:BD03: 20 1D BD  JSR sub_BD1D
C - - - - - 0x027D16 09:BD06: BD 90 05  LDA ram_hp_lo,X
C - - - - - 0x027D19 09:BD09: 38        SEC
C - - - - - 0x027D1A 09:BD0A: E5 08     SBC ram_0008
C - - - - - 0x027D1C 09:BD0C: 9D 90 05  STA ram_hp_lo,X
C - - - - - 0x027D1F 09:BD0F: 90 01     BCC bra_BD12
C - - - - - 0x027D21 09:BD11: 60        RTS
bra_BD12:
C - - - - - 0x027D22 09:BD12: A9 00     LDA #$00
C - - - - - 0x027D24 09:BD14: 9D 90 05  STA ram_hp_lo,X
C - - - - - 0x027D27 09:BD17: A9 02     LDA #$02
C - - - - - 0x027D29 09:BD19: 8D 31 05  STA ram_0531
C - - - - - 0x027D2C 09:BD1C: 60        RTS



sub_BD1D:
C - - - - - 0x027D2D 09:BD1D: A9 01     LDA #$01
C - - - - - 0x027D2F 09:BD1F: 85 0C     STA ram_000C
C - - - - - 0x027D31 09:BD21: 8A        TXA
C - - - - - 0x027D32 09:BD22: 48        PHA
C - - - - - 0x027D33 09:BD23: A5 A9     LDA ram_object_index
C - - - - - 0x027D35 09:BD25: AA        TAX
C - - - - - 0x027D36 09:BD26: 29 01     AND #$01
C - - - - - 0x027D38 09:BD28: 18        CLC
C - - - - - 0x027D39 09:BD29: 69 0A     ADC #$0A
C - - - - - 0x027D3B 09:BD2B: A8        TAY
C - - - - - 0x027D3C 09:BD2C: 20 C7 DA  JSR sub_0x03DAD7
C - - - - - 0x027D3F 09:BD2F: A5 0C     LDA ram_000C
C - - - - - 0x027D41 09:BD31: 99 50 05  STA ram_id_object,Y
C - - - - - 0x027D44 09:BD34: 20 B5 DB  JSR sub_0x03DBC5
C - - - - - 0x027D47 09:BD37: BD 50 05  LDA ram_id_object,X
C - - - - - 0x027D4A 09:BD3A: C9 35     CMP #$35
C - - - - - 0x027D4C 09:BD3C: F0 04     BEQ bra_BD42
C - - - - - 0x027D4E 09:BD3E: C9 32     CMP #$32
C - - - - - 0x027D50 09:BD40: D0 08     BNE bra_BD4A
bra_BD42:
C - - - - - 0x027D52 09:BD42: A5 0E     LDA ram_000E
C - - - - - 0x027D54 09:BD44: 65 0D     ADC ram_000D
C - - - - - 0x027D56 09:BD46: 6A        ROR
C - - - - - 0x027D57 09:BD47: 99 40 04  STA ram_X_pos_hi_object,Y
bra_BD4A:
C - - - - - 0x027D5A 09:BD4A: A4 A9     LDY ram_object_index
C - - - - - 0x027D5C 09:BD4C: 68        PLA
C - - - - - 0x027D5D 09:BD4D: AA        TAX
C - - - - - 0x027D5E 09:BD4E: 60        RTS



sub_BD4F:
C - - - - - 0x027D5F 09:BD4F: AC 70 05  LDY ram_0570
C - - - - - 0x027D62 09:BD52: 18        CLC
C - - - - - 0x027D63 09:BD53: B9 4C AD  LDA tbl_AD4C,Y
C - - - - - 0x027D66 09:BD56: 69 0C     ADC #$0C
C - - - - - 0x027D68 09:BD58: 85 04     STA ram_0004
C - - - - - 0x027D6A 09:BD5A: A2 00     LDX #$00
C - - - - - 0x027D6C 09:BD5C: A0 01     LDY #$01
C - - - - - 0x027D6E 09:BD5E: 20 0C D2  JSR sub_0x03D21C
C - - - - - 0x027D71 09:BD61: C5 04     CMP ram_0004
C - - - - - 0x027D73 09:BD63: B0 16     BCS bra_BD7B_RTS
C - - - - - 0x027D75 09:BD65: AD 41 04  LDA ram_X_pos_hi_object + 1
C - - - - - 0x027D78 09:BD68: E5 04     SBC ram_0004
C - - - - - 0x027D7A 09:BD6A: 8D 40 04  STA ram_X_pos_hi_object
C - - - - - 0x027D7D 09:BD6D: AD 51 04  LDA ram_X_pos_lo_object + 1
C - - - - - 0x027D80 09:BD70: 8D 50 04  STA ram_X_pos_lo_object
C - - - - - 0x027D83 09:BD73: A9 00     LDA #$00
C - - - - - 0x027D85 09:BD75: 8D 80 04  STA ram_X_spd_hi_object
C - - - - - 0x027D88 09:BD78: 8D 90 04  STA ram_X_spd_lo_object
bra_BD7B_RTS:
C - - - - - 0x027D8B 09:BD7B: 60        RTS



sub_BD7C:
C - - - - - 0x027D8C 09:BD7C: 20 11 BF  JSR sub_BF11
C - - - - - 0x027D8F 09:BD7F: A2 01     LDX #$01
C - - - - - 0x027D91 09:BD81: AD 31 05  LDA ram_0531
C - - - - - 0x027D94 09:BD84: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- D 1 - I - 0x027D97 09:BD87: 91 BD     .word ofs_BD91_00
- D 1 - I - 0x027D99 09:BD89: C4 BD     .word ofs_BDC4_01
- D 1 - I - 0x027D9B 09:BD8B: 46 BE     .word ofs_BE46_02
- D 1 - I - 0x027D9D 09:BD8D: B4 BE     .word ofs_BEB4_03
- D 1 - I - 0x027D9F 09:BD8F: C2 BE     .word _common_RTS   ; 04



ofs_BD91_00:
C - - J - - 0x027DA1 09:BD91: A9 90     LDA #$90
C - - - - - 0x027DA3 09:BD93: 8D 41 04  STA ram_X_pos_hi_object + 1
C - - - - - 0x027DA6 09:BD96: A9 00     LDA #$00
C - - - - - 0x027DA8 09:BD98: 8D A1 04  STA ram_04A1
loc_BD9B:
C D 1 - - - 0x027DAB 09:BD9B: AC 50 05  LDY ram_id_object
C - - - - - 0x027DAE 09:BD9E: B9 CE BF  LDA tbl_BFCE,Y
C - - - - - 0x027DB1 09:BDA1: 8D 91 05  STA ram_hp_lo + 1
C - - - - - 0x027DB4 09:BDA4: EE 31 05  INC ram_0531
C - - - - - 0x027DB7 09:BDA7: A9 80     LDA #$80
C - - - - - 0x027DB9 09:BDA9: 8D E1 05  STA ram_05E1
C - - - - - 0x027DBC 09:BDAC: 0A        ASL
C - - - - - 0x027DBD 09:BDAD: 8D B1 04  STA ram_04B1
C - - - - - 0x027DC0 09:BDB0: A9 01     LDA #$01
C - - - - - 0x027DC2 09:BDB2: 8D 31 05  STA ram_0531
C - - - - - 0x027DC5 09:BDB5: A9 B0     LDA #$B0
C - - - - - 0x027DC7 09:BDB7: 8D 11 04  STA ram_Y_pos_hi_object + 1
C - - - - - 0x027DCA 09:BDBA: A9 09     LDA #$09
C - - - - - 0x027DCC 09:BDBC: 8D 71 05  STA ram_0571
C - - - - - 0x027DCF 09:BDBF: A9 20     LDA #$20
C - - - - - 0x027DD1 09:BDC1: 8D 81 05  STA ram_0581
ofs_BDC4_01:
C - - - - - 0x027DD4 09:BDC4: AD 61 05  LDA ram_0561
C - - - - - 0x027DD7 09:BDC7: F0 0A     BEQ bra_BDD3
- - - - - - 0x027DD9 09:BDC9: CE 61 05  DEC ram_0561
- - - - - - 0x027DDC 09:BDCC: D0 0F     BNE bra_BDDD
- - - - - - 0x027DDE 09:BDCE: A9 00     LDA #$00
- - - - - - 0x027DE0 09:BDD0: 8D 1F 06  STA ram_061F
bra_BDD3:
C - - - - - 0x027DE3 09:BDD3: AD 1F 06  LDA ram_061F
C - - - - - 0x027DE6 09:BDD6: F0 05     BEQ bra_BDDD
C - - - - - 0x027DE8 09:BDD8: A9 03     LDA #$03
C - - - - - 0x027DEA 09:BDDA: 8D 60 05  STA ram_0560
bra_BDDD:
C - - - - - 0x027DED 09:BDDD: A9 1E     LDA #$1E
C - - - - - 0x027DEF 09:BDDF: 8D 71 05  STA ram_0571
C - - - - - 0x027DF2 09:BDE2: AD F1 05  LDA ram_05F1
C - - - - - 0x027DF5 09:BDE5: F0 0A     BEQ bra_BDF1
C - - - - - 0x027DF7 09:BDE7: CE F1 05  DEC ram_05F1
C - - - - - 0x027DFA 09:BDEA: D0 05     BNE bra_BDF1
C - - - - - 0x027DFC 09:BDEC: A9 00     LDA #$00
C - - - - - 0x027DFE 09:BDEE: 8D 1F 06  STA ram_061F
bra_BDF1:
C - - - - - 0x027E01 09:BDF1: AD 91 05  LDA ram_hp_lo + 1
C - - - - - 0x027E04 09:BDF4: AC B1 04  LDY ram_04B1
C - - - - - 0x027E07 09:BDF7: D9 E2 BF  CMP tbl_BFE2,Y
C - - - - - 0x027E0A 09:BDFA: B0 49     BCS bra_BE45_RTS
C - - - - - 0x027E0C 09:BDFC: A9 01     LDA #$01
C - - - - - 0x027E0E 09:BDFE: 85 04     STA ram_0004
C - - - - - 0x027E10 09:BE00: AD B1 04  LDA ram_04B1
C - - - - - 0x027E13 09:BE03: 0A        ASL
C - - - - - 0x027E14 09:BE04: 0A        ASL
C - - - - - 0x027E15 09:BE05: 0A        ASL
C - - - - - 0x027E16 09:BE06: 85 02     STA ram_0002
C - - - - - 0x027E18 09:BE08: AD A1 04  LDA ram_04A1
C - - - - - 0x027E1B 09:BE0B: 0A        ASL
C - - - - - 0x027E1C 09:BE0C: A8        TAY
C - - - - - 0x027E1D 09:BE0D: B9 86 BF  LDA tbl_BF86,Y
C - - - - - 0x027E20 09:BE10: 85 00     STA ram_0000
C - - - - - 0x027E22 09:BE12: B9 87 BF  LDA tbl_BF87,Y
C - - - - - 0x027E25 09:BE15: 18        CLC
C - - - - - 0x027E26 09:BE16: 69 80     ADC #$80
C - - - - - 0x027E28 09:BE18: 85 01     STA ram_0001
bra_BE1A:
C - - - - - 0x027E2A 09:BE1A: A5 00     LDA ram_0000
C - - - - - 0x027E2C 09:BE1C: A4 01     LDY ram_0001
C - - - - - 0x027E2E 09:BE1E: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x027E31 09:BE21: A9 03     LDA #$03
C - - - - - 0x027E33 09:BE23: 85 03     STA ram_0003
bra_BE25:
C - - - - - 0x027E35 09:BE25: A4 02     LDY ram_0002
C - - - - - 0x027E37 09:BE27: B9 D2 BF  LDA tbl_BFD2,Y
C - - - - - 0x027E3A 09:BE2A: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x027E3D 09:BE2D: E6 02     INC ram_0002
C - - - - - 0x027E3F 09:BE2F: C6 03     DEC ram_0003
C - - - - - 0x027E41 09:BE31: 10 F2     BPL bra_BE25
C - - - - - 0x027E43 09:BE33: 18        CLC
C - - - - - 0x027E44 09:BE34: A5 01     LDA ram_0001
C - - - - - 0x027E46 09:BE36: 69 20     ADC #$20
C - - - - - 0x027E48 09:BE38: 85 01     STA ram_0001
C - - - - - 0x027E4A 09:BE3A: 90 02     BCC bra_BE3E
C - - - - - 0x027E4C 09:BE3C: E6 00     INC ram_0000
bra_BE3E:
C - - - - - 0x027E4E 09:BE3E: C6 04     DEC ram_0004
C - - - - - 0x027E50 09:BE40: 10 D8     BPL bra_BE1A
C - - - - - 0x027E52 09:BE42: EE B1 04  INC ram_04B1
bra_BE45_RTS:
C - - - - - 0x027E55 09:BE45: 60        RTS



ofs_BE46_02:
C - - J - - 0x027E56 09:BE46: A9 14     LDA #$14
C - - - - - 0x027E58 09:BE48: 20 90 F6  JSR sub_0x03F6A0_play_sound
C - - - - - 0x027E5B 09:BE4B: 20 C3 BE  JSR sub_BEC3
C - - - - - 0x027E5E 09:BE4E: A9 04     LDA #$04
C - - - - - 0x027E60 09:BE50: 85 00     STA ram_0000
C - - - - - 0x027E62 09:BE52: A0 03     LDY #$03
bra_BE54:
C - - - - - 0x027E64 09:BE54: AD 41 04  LDA ram_X_pos_hi_object + 1
C - - - - - 0x027E67 09:BE57: 99 40 04  STA ram_X_pos_hi_object,Y
C - - - - - 0x027E6A 09:BE5A: A9 80     LDA #$80
C - - - - - 0x027E6C 09:BE5C: 99 10 04  STA ram_Y_pos_hi_object,Y
C - - - - - 0x027E6F 09:BE5F: A9 01     LDA #$01
C - - - - - 0x027E71 09:BE61: 99 30 05  STA ram_0530,Y
C - - - - - 0x027E74 09:BE64: C8        INY
C - - - - - 0x027E75 09:BE65: C8        INY
C - - - - - 0x027E76 09:BE66: C6 00     DEC ram_0000
C - - - - - 0x027E78 09:BE68: 10 EA     BPL bra_BE54
C - - - - - 0x027E7A 09:BE6A: EE A1 04  INC ram_04A1
C - - - - - 0x027E7D 09:BE6D: AD A1 04  LDA ram_04A1
C - - - - - 0x027E80 09:BE70: C9 05     CMP #$05
C - - - - - 0x027E82 09:BE72: B0 28     BCS bra_BE9C
C - - - - - 0x027E84 09:BE74: 18        CLC
C - - - - - 0x027E85 09:BE75: AD 41 04  LDA ram_X_pos_hi_object + 1
C - - - - - 0x027E88 09:BE78: 69 40     ADC #$40
C - - - - - 0x027E8A 09:BE7A: 8D 46 04  STA ram_0446
C - - - - - 0x027E8D 09:BE7D: AD 31 04  LDA ram_X_pos_max_object + 1
C - - - - - 0x027E90 09:BE80: 69 00     ADC #$00
C - - - - - 0x027E92 09:BE82: 8D 36 04  STA ram_X_pos_max_object + 6
C - - - - - 0x027E95 09:BE85: A9 80     LDA #$80
C - - - - - 0x027E97 09:BE87: 8D E6 05  STA ram_05E6
C - - - - - 0x027E9A 09:BE8A: EE 31 05  INC ram_0531
C - - - - - 0x027E9D 09:BE8D: A9 80     LDA #$80
C - - - - - 0x027E9F 09:BE8F: 8D 81 05  STA ram_0581
C - - - - - 0x027EA2 09:BE92: 0A        ASL
C - - - - - 0x027EA3 09:BE93: 8D E1 05  STA ram_05E1
C - - - - - 0x027EA6 09:BE96: A9 FF     LDA #$FF
C - - - - - 0x027EA8 09:BE98: 8D 41 04  STA ram_X_pos_hi_object + 1
C - - - - - 0x027EAB 09:BE9B: 60        RTS
bra_BE9C:
C - - - - - 0x027EAC 09:BE9C: A9 04     LDA #$04
C - - - - - 0x027EAE 09:BE9E: 8D 31 05  STA ram_0531
C - - - - - 0x027EB1 09:BEA1: A0 00     LDY #$00
C - - - - - 0x027EB3 09:BEA3: 8C E1 05  STY ram_05E1
C - - - - - 0x027EB6 09:BEA6: 88        DEY
C - - - - - 0x027EB7 09:BEA7: 8C 41 04  STY ram_X_pos_hi_object + 1
C - - - - - 0x027EBA 09:BEAA: A9 05     LDA #$05
C - - - - - 0x027EBC 09:BEAC: 8D 21 05  STA ram_0521
C - - - - - 0x027EBF 09:BEAF: A9 1D     LDA #$1D
C - - - - - 0x027EC1 09:BEB1: 4C 8B F6  JMP loc_0x03F69B_play_sound



ofs_BEB4_03:
C - - J - - 0x027EC4 09:BEB4: AD 36 04  LDA ram_X_pos_max_object + 6
C - - - - - 0x027EC7 09:BEB7: D0 8C     BEQ bra_BEB9
                                        RTS
bra_BEB9:
C - - - - - 0x027EC9 09:BEB9: AD 46 04  LDA ram_0446
C - - - - - 0x027ECC 09:BEBC: 8D 41 04  STA ram_X_pos_hi_object + 1
C - - - - - 0x027ECF 09:BEBF: 4C 9B BD  JMP loc_BD9B



sub_BEC3:
C - - - - - 0x027ED3 09:BEC3: AD A1 04  LDA ram_04A1
C - - - - - 0x027ED6 09:BEC6: 0A        ASL
C - - - - - 0x027ED7 09:BEC7: A8        TAY
C - - - - - 0x027ED8 09:BEC8: B9 86 BF  LDA tbl_BF86,Y
C - - - - - 0x027EDB 09:BECB: 85 00     STA ram_0000
C - - - - - 0x027EDD 09:BECD: B9 87 BF  LDA tbl_BF87,Y
C - - - - - 0x027EE0 09:BED0: 85 01     STA ram_0001
C - - - - - 0x027EE2 09:BED2: A0 00     LDY #$00
C - - - - - 0x027EE4 09:BED4: A9 03     LDA #$03
C - - - - - 0x027EE6 09:BED6: 85 02     STA ram_0002
loc_BED8:
C D 1 - - - 0x027EE8 09:BED8: A9 02     LDA #$02
C - - - - - 0x027EEA 09:BEDA: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x027EED 09:BEDD: A5 01     LDA ram_0001
C - - - - - 0x027EEF 09:BEDF: 20 5F D2  JSR sub_0x03D26F
C - - - - - 0x027EF2 09:BEE2: A5 00     LDA ram_0000
C - - - - - 0x027EF4 09:BEE4: 20 5F D2  JSR sub_0x03D26F
bra_BEE7:
C - - - - - 0x027EF7 09:BEE7: B9 90 BF  LDA tbl_BF90,Y
C - - - - - 0x027EFA 09:BEEA: 20 5F D2  JSR sub_0x03D26F
C - - - - - 0x027EFD 09:BEED: C8        INY
C - - - - - 0x027EFE 09:BEEE: C9 FF     CMP #$FF
C - - - - - 0x027F00 09:BEF0: D0 F5     BNE bra_BEE7
C - - - - - 0x027F02 09:BEF2: C6 02     DEC ram_0002
C - - - - - 0x027F04 09:BEF4: 30 05     BMI bra_BEFB
C - - - - - 0x027F06 09:BEF6: E6 01     INC ram_0001
C - - - - - 0x027F08 09:BEF8: 4C D8 BE  JMP loc_BED8
bra_BEFB:
C - - - - - 0x027F0B 09:BEFB: AD A1 04  LDA ram_04A1
C - - - - - 0x027F0E 09:BEFE: 0A        ASL
C - - - - - 0x027F0F 09:BEFF: AA        TAX
C - - - - - 0x027F10 09:BF00: BD C4 BF  LDA tbl_BFC4,X
C - - - - - 0x027F13 09:BF03: BC C5 BF  LDY tbl_BFC5,X
C - - - - - 0x027F16 09:BF06: 20 6B D2  JSR sub_0x03D27B
C - - - - - 0x027F19 09:BF09: A9 55     LDA #$55
C - - - - - 0x027F1B 09:BF0B: 20 5F D2  JSR sub_0x03D26F
C - - - - - 0x027F1E 09:BF0E: 4C 5B D2  JMP loc_0x03D26B



sub_BF11:
.export sub_0x027F21
sub_0x027F21:
C - - - - - 0x027F21 09:BF11: A2 03     LDX #$03
bra_BF13:
C - - - - - 0x027F23 09:BF13: BD 30 05  LDA ram_0530,X
C - - - - - 0x027F26 09:BF16: F0 03     BEQ bra_BF1B
C - - - - - 0x027F28 09:BF18: 20 22 BF  JSR sub_BF22
bra_BF1B:
C - - - - - 0x027F2B 09:BF1B: E8        INX
C - - - - - 0x027F2C 09:BF1C: E8        INX
C - - - - - 0x027F2D 09:BF1D: E0 10     CPX #$10
C - - - - - 0x027F2F 09:BF1F: 90 F2     BCC bra_BF13
C - - - - - 0x027F31 09:BF21: 60        RTS



sub_BF22:
C - - - - - 0x027F32 09:BF22: 20 49 DB  JSR sub_0x03DB59
C - - - - - 0x027F35 09:BF25: BD 30 05  LDA ram_0530,X
C - - - - - 0x027F38 09:BF28: 20 32 D0  JSR sub_0x03D042_read_pointers_after_jsr
- - - - - - 0x027F3B 09:BF2B: 35 BF     .word ofs_BF35_00
- D 1 - I - 0x027F3D 09:BF2D: 35 BF     .word ofs_BF35_01
- D 1 - I - 0x027F3F 09:BF2F: 61 BF     .word ofs_BF61_02
- D 1 - I - 0x027F41 09:BF31: 6E BF     .word ofs_BF6E_03
- D 1 - I - 0x027F43 09:BF33: 7E BF     .word ofs_BF7E_04



ofs_BF35_00:
ofs_BF35_01:
C - - J - - 0x027F45 09:BF35: 8A        TXA
C - - - - - 0x027F46 09:BF36: 4A        LSR
C - - - - - 0x027F47 09:BF37: A8        TAY
C - - - - - 0x027F48 09:BF38: 88        DEY
C - - - - - 0x027F49 09:BF39: B9 E5 BF  LDA tbl_BFE5,Y
C - - - - - 0x027F4C 09:BF3C: 9D 60 04  STA ram_Y_spd_hi_object,X
C - - - - - 0x027F4F 09:BF3F: B9 EA BF  LDA tbl_BFEA,Y
C - - - - - 0x027F52 09:BF42: 9D 80 04  STA ram_X_spd_hi_object,X
C - - - - - 0x027F55 09:BF45: B9 EF BF  LDA tbl_BFEF,Y
C - - - - - 0x027F58 09:BF48: 9D 00 04  STA ram_anim_object,X
C - - - - - 0x027F5B 09:BF4B: B9 F4 BF  LDA tbl_BFF4,Y
C - - - - - 0x027F5E 09:BF4E: 9D 10 05  STA ram_turn_side_object,X
C - - - - - 0x027F61 09:BF51: FE 30 05  INC ram_0530,X
C - - - - - 0x027F64 09:BF54: A9 80     LDA #$80
C - - - - - 0x027F66 09:BF56: 9D E0 05  STA ram_05E0,X
C - - - - - 0x027F69 09:BF59: 9D 80 05  STA ram_0580,X
C - - - - - 0x027F6C 09:BF5C: 0A        ASL
C - - - - - 0x027F6D 09:BF5D: 9D B0 05  STA ram_05B0,X
bra_BF60_RTS:
C - - - - - 0x027F70 09:BF60: 60        RTS



ofs_BF61_02:
C - - J - - 0x027F71 09:BF61: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x027F74 09:BF64: 90 FA     BCC bra_BF60_RTS
C - - - - - 0x027F76 09:BF66: A9 FC     LDA #$FC
C - - - - - 0x027F78 09:BF68: 9D 60 04  STA ram_Y_spd_hi_object,X
C - - - - - 0x027F7B 09:BF6B: FE 30 05  INC ram_0530,X
ofs_BF6E_03:
C - - - - - 0x027F7E 09:BF6E: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x027F81 09:BF71: 90 ED     BCC bra_BF60_RTS
C - - - - - 0x027F83 09:BF73: 20 67 D0  JSR sub_0x03D077
C - - - - - 0x027F86 09:BF76: A9 20     LDA #$20
C - - - - - 0x027F88 09:BF78: 9D 60 05  STA ram_0560,X
C - - - - - 0x027F8B 09:BF7B: FE 30 05  INC ram_0530,X
ofs_BF7E_04:
C - - - - - 0x027F8E 09:BF7E: DE 60 05  DEC ram_0560,X
C - - - - - 0x027F91 09:BF81: D0 DD     BNE bra_BF60_RTS
C - - - - - 0x027F93 09:BF83: 4C D3 DA  JMP loc_0x03DAE3



tbl_BF86:
- D 1 - - - 0x027F96 09:BF86: 21        .byte $21   ; 
tbl_BF87:
- D 1 - - - 0x027F97 09:BF87: 70        .byte $70   ; 
- D 1 - - - 0x027F98 09:BF88: 21        .byte $21   ; 
- D 1 - - - 0x027F99 09:BF89: 78        .byte $78   ; 
- D 1 - - - 0x027F9A 09:BF8A: 25        .byte $25   ; 
- D 1 - - - 0x027F9B 09:BF8B: 60        .byte $60   ; 
- D 1 - - - 0x027F9C 09:BF8C: 25        .byte $25   ; 
- D 1 - - - 0x027F9D 09:BF8D: 68        .byte $68   ; 
- D 1 - - - 0x027F9E 09:BF8E: 25        .byte $25   ; 
- D 1 - - - 0x027F9F 09:BF8F: 70        .byte $70   ; 



tbl_BF90:
- D 1 - - - 0x027FA0 09:BF90: 0C        .byte $0C   ; 
- D 1 - - - 0x027FA1 09:BF91: 10        .byte $10   ; 
- D 1 - - - 0x027FA2 09:BF92: 30        .byte $30   ; 
- D 1 - - - 0x027FA3 09:BF93: 11        .byte $11   ; 
- D 1 - - - 0x027FA4 09:BF94: 13        .byte $13   ; 
- D 1 - - - 0x027FA5 09:BF95: 00        .byte $00   ; 
- D 1 - - - 0x027FA6 09:BF96: 17        .byte $17   ; 
- D 1 - - - 0x027FA7 09:BF97: 19        .byte $19   ; 
- D 1 - - - 0x027FA8 09:BF98: 1B        .byte $1B   ; 
- D 1 - - - 0x027FA9 09:BF99: 05        .byte $05   ; 
- D 1 - - - 0x027FAA 09:BF9A: 05        .byte $05   ; 
- D 1 - - - 0x027FAB 09:BF9B: 06        .byte $06   ; 
- D 1 - - - 0x027FAC 09:BF9C: FF        .byte $FF   ; 
- D 1 - - - 0x027FAD 09:BF9D: 0D        .byte $0D   ; 
- D 1 - - - 0x027FAE 09:BF9E: 10        .byte $10   ; 
- D 1 - - - 0x027FAF 09:BF9F: 30        .byte $30   ; 
- D 1 - - - 0x027FB0 09:BFA0: 12        .byte $12   ; 
- D 1 - - - 0x027FB1 09:BFA1: 14        .byte $14   ; 
- D 1 - - - 0x027FB2 09:BFA2: 00        .byte $00   ; 
- D 1 - - - 0x027FB3 09:BFA3: 00        .byte $00   ; 
- D 1 - - - 0x027FB4 09:BFA4: 1A        .byte $1A   ; 
- D 1 - - - 0x027FB5 09:BFA5: 00        .byte $00   ; 
- D 1 - - - 0x027FB6 09:BFA6: 05        .byte $05   ; 
- D 1 - - - 0x027FB7 09:BFA7: 05        .byte $05   ; 
- D 1 - - - 0x027FB8 09:BFA8: 06        .byte $06   ; 
- D 1 - - - 0x027FB9 09:BFA9: FF        .byte $FF   ; 
- D 1 - - - 0x027FBA 09:BFAA: 0E        .byte $0E   ; 
- D 1 - - - 0x027FBB 09:BFAB: 10        .byte $10   ; 
- D 1 - - - 0x027FBC 09:BFAC: 30        .byte $30   ; 
- D 1 - - - 0x027FBD 09:BFAD: 30        .byte $30   ; 
- D 1 - - - 0x027FBE 09:BFAE: 15        .byte $15   ; 
- D 1 - - - 0x027FBF 09:BFAF: 00        .byte $00   ; 
- D 1 - - - 0x027FC0 09:BFB0: 00        .byte $00   ; 
- D 1 - - - 0x027FC1 09:BFB1: 18        .byte $18   ; 
- D 1 - - - 0x027FC2 09:BFB2: 00        .byte $00   ; 
- D 1 - - - 0x027FC3 09:BFB3: 05        .byte $05   ; 
- D 1 - - - 0x027FC4 09:BFB4: 05        .byte $05   ; 
- D 1 - - - 0x027FC5 09:BFB5: 06        .byte $06   ; 
- D 1 - - - 0x027FC6 09:BFB6: FF        .byte $FF   ; 
- D 1 - - - 0x027FC7 09:BFB7: 0F        .byte $0F   ; 
- D 1 - - - 0x027FC8 09:BFB8: 10        .byte $10   ; 
- D 1 - - - 0x027FC9 09:BFB9: 30        .byte $30   ; 
- D 1 - - - 0x027FCA 09:BFBA: 30        .byte $30   ; 
- D 1 - - - 0x027FCB 09:BFBB: 16        .byte $16   ; 
- D 1 - - - 0x027FCC 09:BFBC: 00        .byte $00   ; 
- D 1 - - - 0x027FCD 09:BFBD: 00        .byte $00   ; 
- D 1 - - - 0x027FCE 09:BFBE: 18        .byte $18   ; 
- D 1 - - - 0x027FCF 09:BFBF: 00        .byte $00   ; 
- D 1 - - - 0x027FD0 09:BFC0: 05        .byte $05   ; 
- D 1 - - - 0x027FD1 09:BFC1: 05        .byte $05   ; 
- D 1 - - - 0x027FD2 09:BFC2: 06        .byte $06   ; 
- D 1 - - - 0x027FD3 09:BFC3: FF        .byte $FF   ; 



tbl_BFC4:
- D 1 - - - 0x027FD4 09:BFC4: 23        .byte $23   ; 
tbl_BFC5:
- D 1 - - - 0x027FD5 09:BFC5: DC        .byte $DC   ; 
- D 1 - - - 0x027FD6 09:BFC6: 23        .byte $23   ; 
- D 1 - - - 0x027FD7 09:BFC7: DE        .byte $DE   ; 
- D 1 - - - 0x027FD8 09:BFC8: 27        .byte $27   ; 
- D 1 - - - 0x027FD9 09:BFC9: D8        .byte $D8   ; 
- D 1 - - - 0x027FDA 09:BFCA: 27        .byte $27   ; 
- D 1 - - - 0x027FDB 09:BFCB: DA        .byte $DA   ; 
- D 1 - - - 0x027FDC 09:BFCC: 27        .byte $27   ; 
- D 1 - - - 0x027FDD 09:BFCD: DC        .byte $DC   ; 



tbl_BFCE:
- D 1 - - - 0x027FDE 09:BFCE: 90        .byte $90   ; 00
- D 1 - - - 0x027FDF 09:BFCF: 72        .byte $72   ; 01
- D 1 - - - 0x027FE0 09:BFD0: B0        .byte $B0   ; 02
- D 1 - - - 0x027FE1 09:BFD1: B0        .byte $B0   ; 03



tbl_BFD2:
- D 1 - - - 0x027FE2 09:BFD2: 47        .byte $47   ; 00
- D 1 - - - 0x027FE3 09:BFD3: 48        .byte $48   ; 01
- D 1 - - - 0x027FE4 09:BFD4: 03        .byte $03   ; 02
- D 1 - - - 0x027FE5 09:BFD5: FF        .byte $FF   ; 03
- D 1 - - - 0x027FE6 09:BFD6: 49        .byte $49   ; 04
- D 1 - - - 0x027FE7 09:BFD7: 4A        .byte $4A   ; 05
- D 1 - - - 0x027FE8 09:BFD8: 4B        .byte $4B   ; 06
- D 1 - - - 0x027FE9 09:BFD9: FF        .byte $FF   ; 07
- D 1 - - - 0x027FEA 09:BFDA: 4C        .byte $4C   ; 08
- D 1 - - - 0x027FEB 09:BFDB: 4D        .byte $4D   ; 09
- D 1 - - - 0x027FEC 09:BFDC: 4E        .byte $4E   ; 0A
- D 1 - - - 0x027FED 09:BFDD: FF        .byte $FF   ; 0B
- D 1 - - - 0x027FEE 09:BFDE: 4F        .byte $4F   ; 0C
- D 1 - - - 0x027FEF 09:BFDF: 50        .byte $50   ; 0D
- D 1 - - - 0x027FF0 09:BFE0: 51        .byte $51   ; 0E
- D 1 - - - 0x027FF1 09:BFE1: FF        .byte $FF   ; 0F



tbl_BFE2:
- D 1 - - - 0x027FF2 09:BFE2: 50        .byte $50   ; 00
- D 1 - - - 0x027FF3 09:BFE3: 20        .byte $20   ; 01
- D 1 - - - 0x027FF4 09:BFE4: 00        .byte $00   ; 02



tbl_BFE5:
- D 1 - - - 0x027FF5 09:BFE5: FD        .byte $FD   ; 00
- D 1 - - - 0x027FF6 09:BFE6: FC        .byte $FC   ; 01
- D 1 - - - 0x027FF7 09:BFE7: FB        .byte $FB   ; 02
- D 1 - - - 0x027FF8 09:BFE8: FC        .byte $FC   ; 03
- D 1 - - - 0x027FF9 09:BFE9: FD        .byte $FD   ; 04

tbl_BFEA:
- D 1 - - - 0x027FFA 09:BFEA: FE        .byte $FE   ; 00
- D 1 - - - 0x027FFB 09:BFEB: FF        .byte $FF   ; 01
- D 1 - - - 0x027FFC 09:BFEC: 00        .byte $00   ; 02
- D 1 - - - 0x027FFD 09:BFED: 01        .byte $01   ; 03
- D 1 - - - 0x027FFE 09:BFEE: 02        .byte $02   ; 04

tbl_BFEF:
- D 1 - - - 0x027FFF 09:BFEF: 25        .byte $25   ; 00
- D 1 - - - 0x028000 09:BFF0: 26        .byte $26   ; 01
- D 1 - - - 0x028001 09:BFF1: 27        .byte $27   ; 02
- D 1 - - - 0x028002 09:BFF2: 26        .byte $26   ; 03
- D 1 - - - 0x028003 09:BFF3: 25        .byte $25   ; 04

tbl_BFF4:
- D 1 - - - 0x028004 09:BFF4: 00        .byte $00   ; 00
- D 1 - - - 0x028005 09:BFF5: 00        .byte $00   ; 01
- D 1 - - - 0x028006 09:BFF6: 00        .byte $00   ; 02
- D 1 - - - 0x028007 09:BFF7: 40        .byte $40   ; 03
- D 1 - - - 0x028008 09:BFF8: C0        .byte $C0   ; 04



sub_BFF9:
C - - - - - 0x028009 09:BFF9: BC D0 04  LDY ram_04D0,X
C - - - - - 0x02800C 09:BFFC: B9 D1 B5  LDA tbl_B5D2 - 1,Y
C - - - - - 0x02800F 09:BFFF: 60        RTS



