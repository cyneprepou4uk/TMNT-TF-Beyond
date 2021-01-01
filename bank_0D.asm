.segment "BANK_0D"
.include "copy_bank_ram.inc"
; 0x034010-0x03800F

- D 0 - - - 0x034010 0D:8000: 0A        .byte $0A   ; 



.export sub_0x034011
sub_0x034011:
C D 0 - - - 0x034011 0D:8001: A2 01     LDX #$01
bra_8003:
C - - - - - 0x034013 0D:8003: 86 00     STX ram_0000
C - - - - - 0x034015 0D:8005: AD 54 01  LDA ram_0154
C - - - - - 0x034018 0D:8008: 0A        ASL
C - - - - - 0x034019 0D:8009: 65 00     ADC ram_0000
C - - - - - 0x03401B 0D:800B: A8        TAY
C - - - - - 0x03401C 0D:800C: B9 55 01  LDA ram_0155,Y
C - - - - - 0x03401F 0D:800F: 10 03     BPL bra_8014
C - - - - - 0x034021 0D:8011: 20 F2 A1  JSR sub_A1F2
bra_8014:
C - - - - - 0x034024 0D:8014: CA        DEX
C - - - - - 0x034025 0D:8015: 10 EC     BPL bra_8003
C - - - - - 0x034027 0D:8017: 60        RTS



sub_8036:
C - - - - - 0x034046 0D:8036: 20 04 F2  JSR sub_0x03F214_roll_rng
C - - - - - 0x034049 0D:8039: 20 5B EC  JSR sub_0x03EC6B
C - - - - - 0x03404C 0D:803C: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03404F 0D:803F: 20 26 EF  JSR sub_0x03EF36
C - - - - - 0x034052 0D:8042: 85 13     STA ram_0013
C - - - - - 0x034054 0D:8044: 20 B9 EE  JSR sub_0x03EEC9
C - - - - - 0x034057 0D:8047: 85 12     STA ram_0012
C - - - - - 0x034059 0D:8049: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03405C 0D:804C: 20 66 EE  JSR sub_0x03EE76
C - - - - - 0x03405F 0D:804F: 85 10     STA ram_0010
C - - - - - 0x034061 0D:8051: B9 20 05  LDA ram_0520,Y
C - - - - - 0x034064 0D:8054: 85 11     STA ram_0011
C - - - - - 0x034066 0D:8056: 60        RTS



loc_8057:
C D 0 - - - 0x034067 0D:8057: A9 00     LDA #$00
loc_8059:
C D 0 - - - 0x034069 0D:8059: 95 8E     STA ram_008E,X
loc_805B:
C D 0 - - - 0x03406B 0D:805B: 95 91     STA ram_0091,X
C - - - - - 0x03406D 0D:805D: BD CA 06  LDA ram_06CA,X
C - - - - - 0x034070 0D:8060: 20 32 D0  JSR sub_0x03D042
- D 0 - I - 0x034073 0D:8063: 69 80     .word ofs_8069_00
- D 0 - I - 0x034075 0D:8065: 74 81     .word ofs_8174_01
- D 0 - I - 0x034077 0D:8067: 16 81     .word ofs_8116_02



ofs_8069_00:
C - - J - - 0x034079 0D:8069: A9 FF     LDA #$FF
C - - - - - 0x03407B 0D:806B: 8D 9F 06  STA ram_069F
C - - - - - 0x03407E 0D:806E: 8D BF 06  STA ram_06BF
C - - - - - 0x034081 0D:8071: A9 00     LDA #$00
C - - - - - 0x034083 0D:8073: 9D C6 06  STA ram_06C6,X
C - - - - - 0x034086 0D:8076: 9D C8 06  STA ram_06C8,X
C - - - - - 0x034089 0D:8079: 9D D2 06  STA ram_06D2,X
C - - - - - 0x03408C 0D:807C: 9D D4 06  STA ram_06D4,X
C - - - - - 0x03408F 0D:807F: 9D E2 06  STA ram_06E2,X
C - - - - - 0x034092 0D:8082: 9D CC 06  STA ram_06CC,X
C - - - - - 0x034095 0D:8085: 8D F3 06  STA ram_06F3
C - - - - - 0x034098 0D:8088: 9D F4 06  STA ram_06F4,X
C - - - - - 0x03409B 0D:808B: 9D F6 06  STA ram_06F6,X
C - - - - - 0x03409E 0D:808E: 9D F1 06  STA ram_06F1,X
C - - - - - 0x0340A1 0D:8091: 9D E4 06  STA ram_06E4,X
C - - - - - 0x0340A4 0D:8094: 9D DC 06  STA ram_06DC,X
C - - - - - 0x0340A7 0D:8097: 9D DA 06  STA ram_06DA,X
C - - - - - 0x0340AA 0D:809A: 9D C0 06  STA ram_06C0,X
C - - - - - 0x0340AD 0D:809D: 9D C2 06  STA ram_06C2,X
C - - - - - 0x0340B0 0D:80A0: 9D C4 06  STA ram_06C4,X
C - - - - - 0x0340B3 0D:80A3: 9D CE 06  STA ram_06CE,X
C - - - - - 0x0340B6 0D:80A6: 9D E2 06  STA ram_06E2,X
C - - - - - 0x0340B9 0D:80A9: 9D E4 06  STA ram_06E4,X
C - - - - - 0x0340BC 0D:80AC: 9D E6 06  STA ram_06E6,X
C - - - - - 0x0340BF 0D:80AF: 9D F8 06  STA ram_06F8,X
C - - - - - 0x0340C2 0D:80B2: A9 C0     LDA #$C0
C - - - - - 0x0340C4 0D:80B4: 9D E0 06  STA ram_06E0,X
C - - - - - 0x0340C7 0D:80B7: 8A        TXA
C - - - - - 0x0340C8 0D:80B8: 49 01     EOR #$01
C - - - - - 0x0340CA 0D:80BA: 9D DE 06  STA ram_06DE,X
C - - - - - 0x0340CD 0D:80BD: 8A        TXA
C - - - - - 0x0340CE 0D:80BE: 0A        ASL
C - - - - - 0x0340CF 0D:80BF: 0A        ASL
C - - - - - 0x0340D0 0D:80C0: 85 10     STA ram_0010
C - - - - - 0x0340D2 0D:80C2: BC 50 05  LDY ram_0550,X
C - - - - - 0x0340D5 0D:80C5: B9 1C DF  LDA tbl_0x03DF2C,Y
C - - - - - 0x0340D8 0D:80C8: 38        SEC
C - - - - - 0x0340D9 0D:80C9: E9 01     SBC #$01
C - - - - - 0x0340DB 0D:80CB: A4 10     LDY ram_0010
C - - - - - 0x0340DD 0D:80CD: 99 E8 06  STA ram_06E8,Y
C - - - - - 0x0340E0 0D:80D0: BD 50 05  LDA ram_0550,X
C - - - - - 0x0340E3 0D:80D3: 0A        ASL
C - - - - - 0x0340E4 0D:80D4: 0A        ASL
C - - - - - 0x0340E5 0D:80D5: 85 11     STA ram_0011
C - - - - - 0x0340E7 0D:80D7: A8        TAY
C - - - - - 0x0340E8 0D:80D8: B9 FB 80  LDA tbl_80FB,Y
C - - - - - 0x0340EB 0D:80DB: A4 10     LDY ram_0010
C - - - - - 0x0340ED 0D:80DD: 99 E9 06  STA ram_06E9,Y
C - - - - - 0x0340F0 0D:80E0: A4 11     LDY ram_0011
C - - - - - 0x0340F2 0D:80E2: B9 FC 80  LDA tbl_80FC,Y
C - - - - - 0x0340F5 0D:80E5: A4 10     LDY ram_0010
C - - - - - 0x0340F7 0D:80E7: 99 EA 06  STA ram_06EA,Y
C - - - - - 0x0340FA 0D:80EA: A4 11     LDY ram_0011
C - - - - - 0x0340FC 0D:80EC: B9 FD 80  LDA tbl_80FD,Y
C - - - - - 0x0340FF 0D:80EF: A4 10     LDY ram_0010
C - - - - - 0x034101 0D:80F1: 99 EB 06  STA ram_06EB,Y
C - - - - - 0x034104 0D:80F4: A9 01     LDA #$01
C - - - - - 0x034106 0D:80F6: 9D CA 06  STA ram_06CA,X
C - - - - - 0x034109 0D:80F9: 60        RTS



tbl_80FB:
- D 0 - - - 0x03410B 0D:80FB: 1C        .byte $1C   ; 
tbl_80FC:
- D 0 - - - 0x03410C 0D:80FC: 38        .byte $38   ; 
tbl_80FD:
- D 0 - - - 0x03410D 0D:80FD: 8C        .byte $8C   ; 
- - - - - - 0x03410E 0D:80FE: 00        .byte $00   ; 
- D 0 - - - 0x03410F 0D:80FF: 1C        .byte $1C   ; 
- D 0 - - - 0x034110 0D:8100: 54        .byte $54   ; 
- D 0 - - - 0x034111 0D:8101: 8C        .byte $8C   ; 
- - - - - - 0x034112 0D:8102: 00        .byte $00   ; 
- D 0 - - - 0x034113 0D:8103: 1C        .byte $1C   ; 
- D 0 - - - 0x034114 0D:8104: 54        .byte $54   ; 
- D 0 - - - 0x034115 0D:8105: 8C        .byte $8C   ; 
- - - - - - 0x034116 0D:8106: 00        .byte $00   ; 
- D 0 - - - 0x034117 0D:8107: 1C        .byte $1C   ; 
- D 0 - - - 0x034118 0D:8108: 3C        .byte $3C   ; 
- D 0 - - - 0x034119 0D:8109: 8C        .byte $8C   ; 
- - - - - - 0x03411A 0D:810A: 00        .byte $00   ; 
- D 0 - - - 0x03411B 0D:810B: 20        .byte $20   ; 
- D 0 - - - 0x03411C 0D:810C: 60        .byte $60   ; 
- D 0 - - - 0x03411D 0D:810D: A0        .byte $A0   ; 
- - - - - - 0x03411E 0D:810E: 00        .byte $00   ; 
- D 0 - - - 0x03411F 0D:810F: 24        .byte $24   ; 
- D 0 - - - 0x034120 0D:8110: 6C        .byte $6C   ; 
- D 0 - - - 0x034121 0D:8111: B4        .byte $B4   ; 
- - - - - - 0x034122 0D:8112: 00        .byte $00   ; 
- D 0 - - - 0x034123 0D:8113: 1E        .byte $1E   ; 
- D 0 - - - 0x034124 0D:8114: 5A        .byte $5A   ; 
- D 0 - - - 0x034125 0D:8115: 96        .byte $96   ; 



ofs_8116_02:
C - - J - - 0x034126 0D:8116: 20 36 80  JSR sub_8036
C - - - - - 0x034129 0D:8119: 20 BB 81  JSR sub_81BB
C - - - - - 0x03412C 0D:811C: BD C0 06  LDA ram_06C0,X
C - - - - - 0x03412F 0D:811F: C9 FF     CMP #$FF
C - - - - - 0x034131 0D:8121: D0 04     BNE bra_8127
C - - - - - 0x034133 0D:8123: DE CA 06  DEC ram_06CA,X
C - - - - - 0x034136 0D:8126: 60        RTS
bra_8127:
C - - - - - 0x034137 0D:8127: BD E6 06  LDA ram_06E6,X
C - - - - - 0x03413A 0D:812A: D0 19     BNE bra_8145_RTS
C - - - - - 0x03413C 0D:812C: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03413F 0D:812F: BD 20 05  LDA ram_0520,X
C - - - - - 0x034142 0D:8132: 45 11     EOR ram_0011
C - - - - - 0x034144 0D:8134: 45 13     EOR ram_0013
C - - - - - 0x034146 0D:8136: 59 10 06  EOR ram_0610,Y
C - - - - - 0x034149 0D:8139: 4D A6 05  EOR ram_05A6
C - - - - - 0x03414C 0D:813C: 45 12     EOR ram_0012
C - - - - - 0x03414E 0D:813E: 85 08     STA ram_0008
C - - - - - 0x034150 0D:8140: 5D CE 06  EOR ram_06CE,X
C - - - - - 0x034153 0D:8143: D0 01     BNE bra_8146
bra_8145_RTS:
C - - - - - 0x034155 0D:8145: 60        RTS
bra_8146:
C - - - - - 0x034156 0D:8146: A5 08     LDA ram_0008
C - - - - - 0x034158 0D:8148: 9D CE 06  STA ram_06CE,X
C - - - - - 0x03415B 0D:814B: BD E4 06  LDA ram_06E4,X
C - - - - - 0x03415E 0D:814E: D0 F5     BNE bra_8145_RTS
C - - - - - 0x034160 0D:8150: A9 FF     LDA #$FF
C - - - - - 0x034162 0D:8152: 8D F0 06  STA ram_06F0
C - - - - - 0x034165 0D:8155: 20 93 81  JSR sub_8193
C - - - - - 0x034168 0D:8158: A5 17     LDA ram_0017
C - - - - - 0x03416A 0D:815A: F0 0A     BEQ bra_8166
C - - - - - 0x03416C 0D:815C: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x03416F 0D:815F: A5 17     LDA ram_0017
C - - - - - 0x034171 0D:8161: 9D E6 06  STA ram_06E6,X
C - - - - - 0x034174 0D:8164: D0 14     BNE bra_817A
bra_8166:
C - - - - - 0x034176 0D:8166: 20 A7 81  JSR sub_81A7
C - - - - - 0x034179 0D:8169: AC F0 06  LDY ram_06F0
C - - - - - 0x03417C 0D:816C: D0 05     BNE bra_8173_RTS
C - - - - - 0x03417E 0D:816E: FE E4 06  INC ram_06E4,X
C - - - - - 0x034181 0D:8171: D0 07     BNE bra_817A
bra_8173_RTS:
C - - - - - 0x034183 0D:8173: 60        RTS



ofs_8174_01:
C - - J - - 0x034184 0D:8174: 20 36 80  JSR sub_8036
C - - - - - 0x034187 0D:8177: 20 A7 81  JSR sub_81A7
bra_817A:
C - - - - - 0x03418A 0D:817A: 9D C0 06  STA ram_06C0,X
C - - - - - 0x03418D 0D:817D: 20 27 A4  JSR sub_A427
C - - - - - 0x034190 0D:8180: C9 46     CMP #$46
C - - - - - 0x034192 0D:8182: B0 0B     BCS bra_818F
C - - - - - 0x034194 0D:8184: A9 00     LDA #$00
C - - - - - 0x034196 0D:8186: 9D D2 06  STA ram_06D2,X
C - - - - - 0x034199 0D:8189: A9 02     LDA #$02
C - - - - - 0x03419B 0D:818B: 9D CA 06  STA ram_06CA,X
C - - - - - 0x03419E 0D:818E: 60        RTS
bra_818F:
C - - - - - 0x03419F 0D:818F: A9 41     LDA #$41
C - - - - - 0x0341A1 0D:8191: D0 E7     BNE bra_817A



sub_8193:
C - - - - - 0x0341A3 0D:8193: BD 50 05  LDA ram_0550,X
C - - - - - 0x0341A6 0D:8196: 20 32 D0  JSR sub_0x03D042
- D 0 - I - 0x0341A9 0D:8199: 11 9C     .word ofs_9C11_00
- D 0 - I - 0x0341AB 0D:819B: F6 9C     .word ofs_9CF6_01
- D 0 - I - 0x0341AD 0D:819D: 1C 9D     .word ofs_9D1C_02
- D 0 - I - 0x0341AF 0D:819F: 64 9D     .word ofs_9D64_03
- D 0 - I - 0x0341B1 0D:81A1: AF 9D     .word ofs_9DAF_04
- D 0 - I - 0x0341B3 0D:81A3: E4 9E     .word ofs_9EE4_05
- D 0 - I - 0x0341B5 0D:81A5: AF 9F     .word ofs_9FAF_06



sub_81A7:
C - - - - - 0x0341B7 0D:81A7: BD 50 05  LDA ram_0550,X
C - - - - - 0x0341BA 0D:81AA: 20 32 D0  JSR sub_0x03D042
- D 0 - I - 0x0341BD 0D:81AD: EB 8D     .word ofs_8DEB_00
- D 0 - I - 0x0341BF 0D:81AF: BC 90     .word ofs_90BC_01
- D 0 - I - 0x0341C1 0D:81B1: BD 93     .word ofs_93BD_02
- D 0 - I - 0x0341C3 0D:81B3: A4 92     .word ofs_92A4_03
- D 0 - I - 0x0341C5 0D:81B5: 97 95     .word ofs_9597_04
- D 0 - I - 0x0341C7 0D:81B7: 5C 98     .word ofs_985C_05
- D 0 - I - 0x0341C9 0D:81B9: CA 99     .word ofs_99CA_06



sub_81BB:
C - - - - - 0x0341CB 0D:81BB: BD 20 05  LDA ram_0520,X
C - - - - - 0x0341CE 0D:81BE: C9 01     CMP #$01
C - - - - - 0x0341D0 0D:81C0: D0 14     BNE bra_81D6
C - - - - - 0x0341D2 0D:81C2: AD 40 05  LDA ram_0540
C - - - - - 0x0341D5 0D:81C5: C9 01     CMP #$01
C - - - - - 0x0341D7 0D:81C7: D0 0D     BNE bra_81D6
C - - - - - 0x0341D9 0D:81C9: A5 13     LDA ram_0013
C - - - - - 0x0341DB 0D:81CB: C9 02     CMP #$02
C - - - - - 0x0341DD 0D:81CD: B0 07     BCS bra_81D6
C - - - - - 0x0341DF 0D:81CF: A9 80     LDA #$80
C - - - - - 0x0341E1 0D:81D1: 95 91     STA ram_0091,X
C - - - - - 0x0341E3 0D:81D3: 95 8E     STA ram_008E,X
C - - - - - 0x0341E5 0D:81D5: 60        RTS
bra_81D6:
C - - - - - 0x0341E6 0D:81D6: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x0341E9 0D:81D9: 9D F1 06  STA ram_06F1,X
C - - - - - 0x0341EC 0D:81DC: BD DC 06  LDA ram_06DC,X
C - - - - - 0x0341EF 0D:81DF: D0 1E     BNE bra_81FF
C - - - - - 0x0341F1 0D:81E1: BD D2 06  LDA ram_06D2,X
C - - - - - 0x0341F4 0D:81E4: C9 03     CMP #$03
C - - - - - 0x0341F6 0D:81E6: F0 17     BEQ bra_81FF
C - - - - - 0x0341F8 0D:81E8: 20 C6 ED  JSR sub_0x03EDD6
C - - - - - 0x0341FB 0D:81EB: C9 60     CMP #$60
C - - - - - 0x0341FD 0D:81ED: B0 0A     BCS bra_81F9
C - - - - - 0x0341FF 0D:81EF: BC DE 06  LDY ram_06DE,X
C - - - - - 0x034202 0D:81F2: B9 20 05  LDA ram_0520,Y
C - - - - - 0x034205 0D:81F5: C9 03     CMP #$03
C - - - - - 0x034207 0D:81F7: F0 06     BEQ bra_81FF
bra_81F9:
C - - - - - 0x034209 0D:81F9: BD 10 06  LDA ram_0610,X
C - - - - - 0x03420C 0D:81FC: F0 01     BEQ bra_81FF
C - - - - - 0x03420E 0D:81FE: 60        RTS
bra_81FF:
C - - - - - 0x03420F 0D:81FF: BD D2 06  LDA ram_06D2,X
C - - - - - 0x034212 0D:8202: 20 32 D0  JSR sub_0x03D042
- D 0 - I - 0x034215 0D:8205: 43 82     .word ofs_8243_00
- D 0 - I - 0x034217 0D:8207: 0D 82     .word ofs_820D_01
- D 0 - I - 0x034219 0D:8209: 28 82     .word ofs_8228_02
- D 0 - I - 0x03421B 0D:820B: 97 84     .word ofs_8497_03



ofs_820D_01:
C - - J - - 0x03421D 0D:820D: BD C4 06  LDA ram_06C4,X
C - - - - - 0x034220 0D:8210: D0 07     BNE bra_8219
C - - - - - 0x034222 0D:8212: A9 00     LDA #$00
C - - - - - 0x034224 0D:8214: 9D D2 06  STA ram_06D2,X
C - - - - - 0x034227 0D:8217: F0 03     BEQ bra_821C
bra_8219:
C - - - - - 0x034229 0D:8219: DE C4 06  DEC ram_06C4,X
bra_821C:
C - - - - - 0x03422C 0D:821C: BD C6 06  LDA ram_06C6,X
C - - - - - 0x03422F 0D:821F: 1D C8 06  ORA ram_06C8,X
C - - - - - 0x034232 0D:8222: 95 91     STA ram_0091,X
C - - - - - 0x034234 0D:8224: 9D C6 06  STA ram_06C6,X
C - - - - - 0x034237 0D:8227: 60        RTS



ofs_8228_02:
C - - J - - 0x034238 0D:8228: BD CC 06  LDA ram_06CC,X
C - - - - - 0x03423B 0D:822B: D0 0D     BNE bra_823A
C - - - - - 0x03423D 0D:822D: A9 00     LDA #$00
C - - - - - 0x03423F 0D:822F: 9D D2 06  STA ram_06D2,X
C - - - - - 0x034242 0D:8232: 9D C6 06  STA ram_06C6,X
C - - - - - 0x034245 0D:8235: 9D C8 06  STA ram_06C8,X
C - - - - - 0x034248 0D:8238: F0 09     BEQ bra_8243
bra_823A:
C - - - - - 0x03424A 0D:823A: DE CC 06  DEC ram_06CC,X
C - - - - - 0x03424D 0D:823D: BD C6 06  LDA ram_06C6,X
C - - - - - 0x034250 0D:8240: 95 91     STA ram_0091,X
C - - - - - 0x034252 0D:8242: 60        RTS



bra_8243:
ofs_8243_00:
C - - J - - 0x034253 0D:8243: 20 B8 A3  JSR sub_A3B8
C - - - - - 0x034256 0D:8246: F0 26     BEQ bra_826E
sub_8248:
C - - - - - 0x034258 0D:8248: EA        NOP
C - - - - - 0x034259 0D:8249: 0A        ASL
C - - - - - 0x03425A 0D:824A: A8        TAY
C - - - - - 0x03425B 0D:824B: B9 0B 8B  LDA tbl_8B0B,Y
C - - - - - 0x03425E 0D:824E: 85 0A     STA ram_000A
C - - - - - 0x034260 0D:8250: B9 0C 8B  LDA tbl_8B0B + 1,Y
C - - - - - 0x034263 0D:8253: 85 0B     STA ram_000B
C - - - - - 0x034265 0D:8255: A0 00     LDY #$00
bra_8257_loop:
C - - - - - 0x034267 0D:8257: B1 0A     LDA (ram_000A),Y
C - - - - - 0x034269 0D:8259: 20 E3 83  JSR sub_83E3
C - - - - - 0x03426C 0D:825C: 20 14 ED  JSR sub_0x03ED24
C - - - - - 0x03426F 0D:825F: C8        INY
C - - - - - 0x034270 0D:8260: C9 FF     CMP #$FF
C - - - - - 0x034272 0D:8262: D0 F3     BNE bra_8257_loop
C - - - - - 0x034274 0D:8264: A9 00     LDA #$00
C - - - - - 0x034276 0D:8266: 9D C0 06  STA ram_06C0,X
C - - - - - 0x034279 0D:8269: 9D C2 06  STA ram_06C2,X
C - - - - - 0x03427C 0D:826C: 85 17     STA ram_0017
bra_826E:
loc_826E:
C D 0 - - - 0x03427E 0D:826E: BD C2 06  LDA ram_06C2,X
C - - - - - 0x034281 0D:8271: A8        TAY
C - - - - - 0x034282 0D:8272: FE C2 06  INC ram_06C2,X
C - - - - - 0x034285 0D:8275: 20 20 ED  JSR sub_0x03ED30
C - - - - - 0x034288 0D:8278: C9 D0     CMP #$D0
C - - - - - 0x03428A 0D:827A: B0 25     BCS bra_82A1
C - - - - - 0x03428C 0D:827C: 85 10     STA ram_0010
C - - - - - 0x03428E 0D:827E: 3D C6 06  AND ram_06C6,X
C - - - - - 0x034291 0D:8281: 45 10     EOR ram_0010
C - - - - - 0x034293 0D:8283: 95 8E     STA ram_008E,X
C - - - - - 0x034295 0D:8285: A5 10     LDA ram_0010
C - - - - - 0x034297 0D:8287: 29 CF     AND #$CF
C - - - - - 0x034299 0D:8289: 1D C8 06  ORA ram_06C8,X
C - - - - - 0x03429C 0D:828C: 95 91     STA ram_0091,X
C - - - - - 0x03429E 0D:828E: 9D C6 06  STA ram_06C6,X
C - - - - - 0x0342A1 0D:8291: BD D2 06  LDA ram_06D2,X
C - - - - - 0x0342A4 0D:8294: D0 0A     BNE bra_82A0_RTS
C - - - - - 0x0342A6 0D:8296: A9 01     LDA #$01
C - - - - - 0x0342A8 0D:8298: 9D D2 06  STA ram_06D2,X
C - - - - - 0x0342AB 0D:829B: A9 00     LDA #$00
C - - - - - 0x0342AD 0D:829D: 9D C4 06  STA ram_06C4,X
bra_82A0_RTS:
C - - - - - 0x0342B0 0D:82A0: 60        RTS
bra_82A1:
C - - - - - 0x0342B1 0D:82A1: C9 FF     CMP #$FF
C - - - - - 0x0342B3 0D:82A3: D0 09     BNE bra_82AE
C - - - - - 0x0342B5 0D:82A5: A9 00     LDA #$00
C - - - - - 0x0342B7 0D:82A7: 9D E6 06  STA ram_06E6,X
C - - - - - 0x0342BA 0D:82AA: 4C 96 ED  JMP loc_0x03EDA6
- - - - - - 0x0342BD 0D:82AD: 60        RTS
bra_82AE:
C - - - - - 0x0342BE 0D:82AE: C9 FC     CMP #$FC
C - - - - - 0x0342C0 0D:82B0: D0 0B     BNE bra_82BD
- - - - - - 0x0342C2 0D:82B2: A9 01     LDA #$01
- - - - - - 0x0342C4 0D:82B4: 9D D2 06  STA ram_06D2,X
- - - - - - 0x0342C7 0D:82B7: A9 00     LDA #$00
- - - - - - 0x0342C9 0D:82B9: 9D C4 06  STA ram_06C4,X
- - - - - - 0x0342CC 0D:82BC: 60        RTS
bra_82BD:
C - - - - - 0x0342CD 0D:82BD: C9 D9     CMP #$D9
C - - - - - 0x0342CF 0D:82BF: D0 0D     BNE bra_82CE
C - - - - - 0x0342D1 0D:82C1: A9 00     LDA #$00
C - - - - - 0x0342D3 0D:82C3: 95 91     STA ram_0091,X
C - - - - - 0x0342D5 0D:82C5: 95 8E     STA ram_008E,X
C - - - - - 0x0342D7 0D:82C7: 9D C6 06  STA ram_06C6,X
C - - - - - 0x0342DA 0D:82CA: 9D C8 06  STA ram_06C8,X
C - - - - - 0x0342DD 0D:82CD: 60        RTS
bra_82CE:
C - - - - - 0x0342DE 0D:82CE: C9 FD     CMP #$FD
C - - - - - 0x0342E0 0D:82D0: D0 17     BNE bra_82E9
C - - - - - 0x0342E2 0D:82D2: FE C2 06  INC ram_06C2,X
C - - - - - 0x0342E5 0D:82D5: C8        INY
C - - - - - 0x0342E6 0D:82D6: 20 20 ED  JSR sub_0x03ED30
C - - - - - 0x0342E9 0D:82D9: 9D D4 06  STA ram_06D4,X
C - - - - - 0x0342EC 0D:82DC: A9 00     LDA #$00
C - - - - - 0x0342EE 0D:82DE: 9D DA 06  STA ram_06DA,X
C - - - - - 0x0342F1 0D:82E1: A9 03     LDA #$03
C - - - - - 0x0342F3 0D:82E3: 9D D2 06  STA ram_06D2,X
C - - - - - 0x0342F6 0D:82E6: 4C 6E 82  JMP loc_826E
bra_82E9:
C - - - - - 0x0342F9 0D:82E9: C9 D4     CMP #$D4
C - - - - - 0x0342FB 0D:82EB: D0 1B     BNE bra_8308
C - - - - - 0x0342FD 0D:82ED: 20 9A A1  JSR sub_A19A
C - - - - - 0x034300 0D:82F0: 0A        ASL
C - - - - - 0x034301 0D:82F1: 0A        ASL
C - - - - - 0x034302 0D:82F2: 18        CLC
C - - - - - 0x034303 0D:82F3: 6D 25 01  ADC ram_option_difficulty
C - - - - - 0x034306 0D:82F6: A8        TAY
C - - - - - 0x034307 0D:82F7: B9 B5 8D  LDA tbl_8DB5,Y
C - - - - - 0x03430A 0D:82FA: F0 09     BEQ bra_8305
C - - - - - 0x03430C 0D:82FC: 9D C4 06  STA ram_06C4,X
C - - - - - 0x03430F 0D:82FF: A9 01     LDA #$01
C - - - - - 0x034311 0D:8301: 9D D2 06  STA ram_06D2,X
C - - - - - 0x034314 0D:8304: 60        RTS
bra_8305:
C - - - - - 0x034315 0D:8305: 4C 6E 82  JMP loc_826E
bra_8308:
C - - - - - 0x034318 0D:8308: C9 D3     CMP #$D3
C - - - - - 0x03431A 0D:830A: F0 04     BEQ bra_8310
C - - - - - 0x03431C 0D:830C: C9 FE     CMP #$FE
C - - - - - 0x03431E 0D:830E: D0 18     BNE bra_8328
bra_8310:
C - - - - - 0x034320 0D:8310: 48        PHA
C - - - - - 0x034321 0D:8311: A9 17     LDA #$17
C - - - - - 0x034323 0D:8313: 9D D4 06  STA ram_06D4,X
C - - - - - 0x034326 0D:8316: 68        PLA
C - - - - - 0x034327 0D:8317: C9 D3     CMP #$D3
C - - - - - 0x034329 0D:8319: D0 05     BNE bra_8320
- - - - - - 0x03432B 0D:831B: A9 18     LDA #$18
- - - - - - 0x03432D 0D:831D: 9D D4 06  STA ram_06D4,X
bra_8320:
C - - - - - 0x034330 0D:8320: A9 03     LDA #$03
C - - - - - 0x034332 0D:8322: 9D D2 06  STA ram_06D2,X
C - - - - - 0x034335 0D:8325: 4C 6E 82  JMP loc_826E
bra_8328:
C - - - - - 0x034338 0D:8328: C9 D5     CMP #$D5
C - - - - - 0x03433A 0D:832A: D0 16     BNE bra_8342
C - - - - - 0x03433C 0D:832C: BD C6 06  LDA ram_06C6,X
C - - - - - 0x03433F 0D:832F: 29 03     AND #$03
C - - - - - 0x034341 0D:8331: 9D C6 06  STA ram_06C6,X
C - - - - - 0x034344 0D:8334: 9D C8 06  STA ram_06C8,X
C - - - - - 0x034347 0D:8337: 9D 24 06  STA ram_0624,X
C - - - - - 0x03434A 0D:833A: A9 02     LDA #$02
C - - - - - 0x03434C 0D:833C: 9D 26 06  STA ram_0626,X
C - - - - - 0x03434F 0D:833F: 4C 6E 82  JMP loc_826E
bra_8342:
C - - - - - 0x034352 0D:8342: C9 DD     CMP #$DD
C - - - - - 0x034354 0D:8344: D0 0A     BNE bra_8350
C - - - - - 0x034356 0D:8346: FE DC 06  INC ram_06DC,X
C - - - - - 0x034359 0D:8349: A9 40     LDA #$40
C - - - - - 0x03435B 0D:834B: 95 8E     STA ram_008E,X
C - - - - - 0x03435D 0D:834D: 95 91     STA ram_0091,X
C - - - - - 0x03435F 0D:834F: 60        RTS
bra_8350:
C - - - - - 0x034360 0D:8350: C9 DA     CMP #$DA
C - - - - - 0x034362 0D:8352: F0 06     BEQ bra_835A
C - - - - - 0x034364 0D:8354: C9 DB     CMP #$DB
C - - - - - 0x034366 0D:8356: D0 08     BNE bra_8360
C - - - - - 0x034368 0D:8358: A9 00     LDA #$00
bra_835A:
C - - - - - 0x03436A 0D:835A: 9D E6 06  STA ram_06E6,X
C - - - - - 0x03436D 0D:835D: 4C 6E 82  JMP loc_826E
bra_8360:
C - - - - - 0x034370 0D:8360: C9 DC     CMP #$DC
C - - - - - 0x034372 0D:8362: D0 15     BNE bra_8379
C - - - - - 0x034374 0D:8364: FE C2 06  INC ram_06C2,X
C - - - - - 0x034377 0D:8367: C8        INY
C - - - - - 0x034378 0D:8368: 20 20 ED  JSR sub_0x03ED30
C - - - - - 0x03437B 0D:836B: 9D DA 06  STA ram_06DA,X
C - - - - - 0x03437E 0D:836E: A9 0A     LDA #$0A
bra_8370:
loc_8370:
C D 0 - - - 0x034380 0D:8370: 9D D4 06  STA ram_06D4,X
C - - - - - 0x034383 0D:8373: A9 03     LDA #$03
C - - - - - 0x034385 0D:8375: 9D D2 06  STA ram_06D2,X
C - - - - - 0x034388 0D:8378: 60        RTS
bra_8379:
C - - - - - 0x034389 0D:8379: C9 D6     CMP #$D6
C - - - - - 0x03438B 0D:837B: D0 1E     BNE bra_839B
C - - - - - 0x03438D 0D:837D: FE C2 06  INC ram_06C2,X
C - - - - - 0x034390 0D:8380: C8        INY
C - - - - - 0x034391 0D:8381: 20 20 ED  JSR sub_0x03ED30
C - - - - - 0x034394 0D:8384: 84 17     STY ram_0017
C - - - - - 0x034396 0D:8386: 85 16     STA ram_0016
C - - - - - 0x034398 0D:8388: 8A        TXA
C - - - - - 0x034399 0D:8389: 0A        ASL
C - - - - - 0x03439A 0D:838A: 0A        ASL
C - - - - - 0x03439B 0D:838B: 18        CLC
C - - - - - 0x03439C 0D:838C: 65 16     ADC ram_0016
C - - - - - 0x03439E 0D:838E: A8        TAY
C - - - - - 0x03439F 0D:838F: B9 E8 06  LDA ram_06E8,Y
C - - - - - 0x0343A2 0D:8392: 9D DA 06  STA ram_06DA,X
C - - - - - 0x0343A5 0D:8395: A4 17     LDY ram_0017
C - - - - - 0x0343A7 0D:8397: A9 0A     LDA #$0A
C - - - - - 0x0343A9 0D:8399: D0 D5     BNE bra_8370
bra_839B:
C - - - - - 0x0343AB 0D:839B: C9 D7     CMP #$D7
C - - - - - 0x0343AD 0D:839D: D0 0F     BNE bra_83AE
C - - - - - 0x0343AF 0D:839F: FE C2 06  INC ram_06C2,X
C - - - - - 0x0343B2 0D:83A2: C8        INY
C - - - - - 0x0343B3 0D:83A3: 20 20 ED  JSR sub_0x03ED30
C - - - - - 0x0343B6 0D:83A6: 9D DA 06  STA ram_06DA,X
C - - - - - 0x0343B9 0D:83A9: A9 15     LDA #$15
C - - - - - 0x0343BB 0D:83AB: 4C 70 83  JMP loc_8370
bra_83AE:
C - - - - - 0x0343BE 0D:83AE: C9 D8     CMP #$D8
C - - - - - 0x0343C0 0D:83B0: D0 13     BNE bra_83C5
C - - - - - 0x0343C2 0D:83B2: FE C2 06  INC ram_06C2,X
C - - - - - 0x0343C5 0D:83B5: C8        INY
C - - - - - 0x0343C6 0D:83B6: 20 20 ED  JSR sub_0x03ED30
C - - - - - 0x0343C9 0D:83B9: 9D C0 06  STA ram_06C0,X
C - - - - - 0x0343CC 0D:83BC: 9D E2 06  STA ram_06E2,X
C - - - - - 0x0343CF 0D:83BF: 20 48 82  JSR sub_8248
C - - - - - 0x0343D2 0D:83C2: 4C 05 ED  JMP loc_0x03ED15
bra_83C5:
- - - - - - 0x0343D5 0D:83C5: 60        RTS



loc_83C6:
- - - - - - 0x0343D6 0D:83C6: 0A        ASL
- - - - - - 0x0343D7 0D:83C7: A8        TAY
- - - - - - 0x0343D8 0D:83C8: B9 0B 8B  LDA tbl_8B0B,Y
- - - - - - 0x0343DB 0D:83CB: 85 08     STA ram_0008
- - - - - - 0x0343DD 0D:83CD: B9 0C 8B  LDA tbl_8B0B + 1,Y
- - - - - - 0x0343E0 0D:83D0: 85 09     STA ram_0009
- - - - - - 0x0343E2 0D:83D2: A4 17     LDY ram_0017
- - - - - - 0x0343E4 0D:83D4: 88        DEY
bra_83D5:
- - - - - - 0x0343E5 0D:83D5: B1 08     LDA (ram_0008),Y
- - - - - - 0x0343E7 0D:83D7: 20 E3 83  JSR sub_83E3
- - - - - - 0x0343EA 0D:83DA: 20 14 ED  JSR sub_0x03ED24
- - - - - - 0x0343ED 0D:83DD: C8        INY
- - - - - - 0x0343EE 0D:83DE: C9 FF     CMP #$FF
- - - - - - 0x0343F0 0D:83E0: D0 F3     BNE bra_83D5
bra_83E2_RTS:
C - - - - - 0x0343F2 0D:83E2: 60        RTS



sub_83E3:
C - - - - - 0x0343F3 0D:83E3: C9 FF     CMP #$FF
C - - - - - 0x0343F5 0D:83E5: F0 FB     BEQ bra_83E2_RTS
C - - - - - 0x0343F7 0D:83E7: C9 FC     CMP #$FC
C - - - - - 0x0343F9 0D:83E9: F0 F7     BEQ bra_83E2_RTS
C - - - - - 0x0343FB 0D:83EB: C9 DE     CMP #$DE
C - - - - - 0x0343FD 0D:83ED: D0 0C     BNE bra_83FB
sub_83EF:
loc_83EF:
C D 0 - - - 0x0343FF 0D:83EF: AD D6 06  LDA ram_06D6
loc_83F2:
C D 0 - - - 0x034402 0D:83F2: 0A        ASL
C - - - - - 0x034403 0D:83F3: B0 03     BCS bra_83F8
C - - - - - 0x034405 0D:83F5: A9 01     LDA #$01
C - - - - - 0x034407 0D:83F7: 60        RTS
bra_83F8:
C - - - - - 0x034408 0D:83F8: A9 02     LDA #$02
C - - - - - 0x03440A 0D:83FA: 60        RTS
bra_83FB:
C - - - - - 0x03440B 0D:83FB: C9 F0     CMP #$F0
C - - - - - 0x03440D 0D:83FD: D0 06     BNE bra_8405
C - - - - - 0x03440F 0D:83FF: 20 EF 83  JSR sub_83EF
C - - - - - 0x034412 0D:8402: 09 08     ORA #$08
C - - - - - 0x034414 0D:8404: 60        RTS
bra_8405:
C - - - - - 0x034415 0D:8405: C9 F2     CMP #$F2
C - - - - - 0x034417 0D:8407: D0 06     BNE bra_840F
C - - - - - 0x034419 0D:8409: 20 EF 83  JSR sub_83EF
C - - - - - 0x03441C 0D:840C: 09 04     ORA #$04
C - - - - - 0x03441E 0D:840E: 60        RTS
bra_840F:
C - - - - - 0x03441F 0D:840F: C9 F8     CMP #$F8
C - - - - - 0x034421 0D:8411: D0 03     BNE bra_8416
- - - - - - 0x034423 0D:8413: 4C C6 83  JMP loc_83C6
bra_8416:
C - - - - - 0x034426 0D:8416: C9 DF     CMP #$DF
C - - - - - 0x034428 0D:8418: D0 0C     BNE bra_8426
sub_841A:
C - - - - - 0x03442A 0D:841A: 4C 9D A4  JMP loc_A49D



loc_841D:
C D 0 - - - 0x03442D 0D:841D: 0A        ASL
C - - - - - 0x03442E 0D:841E: B0 03     BCS bra_8423
C - - - - - 0x034430 0D:8420: A9 02     LDA #$02
C - - - - - 0x034432 0D:8422: 60        RTS
bra_8423:
C - - - - - 0x034433 0D:8423: A9 01     LDA #$01
C - - - - - 0x034435 0D:8425: 60        RTS
bra_8426:
C - - - - - 0x034436 0D:8426: C9 F3     CMP #$F3
C - - - - - 0x034438 0D:8428: D0 06     BNE bra_8430
C - - - - - 0x03443A 0D:842A: 20 1A 84  JSR sub_841A
C - - - - - 0x03443D 0D:842D: 09 04     ORA #$04
C - - - - - 0x03443F 0D:842F: 60        RTS
bra_8430:
C - - - - - 0x034440 0D:8430: C9 F1     CMP #$F1
C - - - - - 0x034442 0D:8432: D0 06     BNE bra_843A
C - - - - - 0x034444 0D:8434: 20 1A 84  JSR sub_841A
C - - - - - 0x034447 0D:8437: 09 08     ORA #$08
C - - - - - 0x034449 0D:8439: 60        RTS
bra_843A:
C - - - - - 0x03444A 0D:843A: C9 F9     CMP #$F9
C - - - - - 0x03444C 0D:843C: D0 03     BNE bra_8441
- - - - - - 0x03444E 0D:843E: 4C C6 83  JMP loc_83C6
bra_8441:
C - - - - - 0x034451 0D:8441: C9 F4     CMP #$F4
C - - - - - 0x034453 0D:8443: D0 06     BNE bra_844B
C - - - - - 0x034455 0D:8445: AD D8 06  LDA ram_06D8
C - - - - - 0x034458 0D:8448: 4C F2 83  JMP loc_83F2
bra_844B:
C - - - - - 0x03445B 0D:844B: C9 FA     CMP #$FA
C - - - - - 0x03445D 0D:844D: D0 03     BNE bra_8452
- - - - - - 0x03445F 0D:844F: 4C C6 83  JMP loc_83C6
bra_8452:
C - - - - - 0x034462 0D:8452: C9 F5     CMP #$F5
C - - - - - 0x034464 0D:8454: D0 06     BNE bra_845C
C - - - - - 0x034466 0D:8456: AD D8 06  LDA ram_06D8
C - - - - - 0x034469 0D:8459: 4C 1D 84  JMP loc_841D
bra_845C:
C - - - - - 0x03446C 0D:845C: C9 F6     CMP #$F6
C - - - - - 0x03446E 0D:845E: D0 06     BNE bra_8466
C - - - - - 0x034470 0D:8460: 20 EF 83  JSR sub_83EF
C - - - - - 0x034473 0D:8463: 09 80     ORA #$80
C - - - - - 0x034475 0D:8465: 60        RTS
bra_8466:
C - - - - - 0x034476 0D:8466: C9 F7     CMP #$F7
C - - - - - 0x034478 0D:8468: D0 06     BNE bra_8470
C - - - - - 0x03447A 0D:846A: 20 EF 83  JSR sub_83EF
C - - - - - 0x03447D 0D:846D: 09 40     ORA #$40
C - - - - - 0x03447F 0D:846F: 60        RTS
bra_8470:
C - - - - - 0x034480 0D:8470: C9 FB     CMP #$FB
C - - - - - 0x034482 0D:8472: D0 03     BNE bra_8477
- - - - - - 0x034484 0D:8474: 4C C6 83  JMP loc_83C6
bra_8477:
C - - - - - 0x034487 0D:8477: C9 FD     CMP #$FD
C - - - - - 0x034489 0D:8479: D0 05     BNE bra_8480_RTS
C - - - - - 0x03448B 0D:847B: 20 14 ED  JSR sub_0x03ED24
C - - - - - 0x03448E 0D:847E: B1 0A     LDA (ram_000A),Y
bra_8480_RTS:
C - - - - - 0x034490 0D:8480: 60        RTS



sub_8481:
C - - - - - 0x034491 0D:8481: 20 86 EC  JSR sub_0x03EC96
C - - - - - 0x034494 0D:8484: 85 17     STA ram_0017
C - - - - - 0x034496 0D:8486: BD C6 06  LDA ram_06C6,X
C - - - - - 0x034499 0D:8489: 1D C8 06  ORA ram_06C8,X
C - - - - - 0x03449C 0D:848C: 29 C4     AND #$C4
C - - - - - 0x03449E 0D:848E: 05 17     ORA ram_0017
C - - - - - 0x0344A0 0D:8490: 9D C8 06  STA ram_06C8,X
C - - - - - 0x0344A3 0D:8493: 9D C6 06  STA ram_06C6,X
C - - - - - 0x0344A6 0D:8496: 60        RTS



ofs_8497_03:
C - - J - - 0x0344A7 0D:8497: 8A        TXA
C - - - - - 0x0344A8 0D:8498: 0A        ASL
C - - - - - 0x0344A9 0D:8499: 0A        ASL
C - - - - - 0x0344AA 0D:849A: 65 13     ADC ram_0013
C - - - - - 0x0344AC 0D:849C: A8        TAY
C - - - - - 0x0344AD 0D:849D: B9 E8 06  LDA ram_06E8,Y
C - - - - - 0x0344B0 0D:84A0: 85 0C     STA ram_000C
C - - - - - 0x0344B2 0D:84A2: AD D6 06  LDA ram_06D6
C - - - - - 0x0344B5 0D:84A5: 85 0F     STA ram_000F
C - - - - - 0x0344B7 0D:84A7: AD D7 06  LDA ram_06D7
C - - - - - 0x0344BA 0D:84AA: 85 0E     STA ram_000E
C - - - - - 0x0344BC 0D:84AC: BD D4 06  LDA ram_06D4,X
C - - - - - 0x0344BF 0D:84AF: 20 32 D0  JSR sub_0x03D042
- D 0 - I - 0x0344C2 0D:84B2: 6F 89     .word ofs_896F_00
- D 0 - I - 0x0344C4 0D:84B4: 2A 8A     .word ofs_8A2A_01
- D 0 - I - 0x0344C6 0D:84B6: 3C 8A     .word ofs_8A3C_02
- D 0 - I - 0x0344C8 0D:84B8: 73 8A     .word ofs_8A73_03
- D 0 - I - 0x0344CA 0D:84BA: A2 88     .word ofs_88A2_04
- D 0 - I - 0x0344CC 0D:84BC: 6F 88     .word ofs_886F_05
- D 0 - I - 0x0344CE 0D:84BE: AC 8A     .word ofs_8AAC_06
- D 0 - I - 0x0344D0 0D:84C0: 07 89     .word ofs_8907_07
- D 0 - I - 0x0344D2 0D:84C2: 2D 89     .word ofs_892D_08
- - - - - - 0x0344D4 0D:84C4: 23 8A     .word ofs_8A23_09
- D 0 - I - 0x0344D6 0D:84C6: ED 87     .word ofs_87ED_0A
- D 0 - I - 0x0344D8 0D:84C8: 66 8A     .word ofs_8A66_0B
- D 0 - I - 0x0344DA 0D:84CA: DC 8A     .word ofs_8ADC_0C
- D 0 - I - 0x0344DC 0D:84CC: 9D 89     .word ofs_899D_0D
- - - - - - 0x0344DE 0D:84CE: CE 87     .word ofs_87CE_0E
- D 0 - I - 0x0344E0 0D:84D0: AD 87     .word ofs_87AD_0F
- D 0 - I - 0x0344E2 0D:84D2: 9E 87     .word ofs_879E_10
- D 0 - I - 0x0344E4 0D:84D4: 96 87     .word ofs_8796_11
- - - - - - 0x0344E6 0D:84D6: 7C 87     .word ofs_877C_12
- D 0 - I - 0x0344E8 0D:84D8: 5E 87     .word ofs_875E_13
- D 0 - I - 0x0344EA 0D:84DA: 37 87     .word ofs_8737_14
- D 0 - I - 0x0344EC 0D:84DC: 0A 86     .word ofs_860A_15
- D 0 - I - 0x0344EE 0D:84DE: EC 85     .word ofs_85EC_16
- D 0 - I - 0x0344F0 0D:84E0: B5 85     .word ofs_85B5_17
- - - - - - 0x0344F2 0D:84E2: 43 85     .word ofs_8543_18
- D 0 - I - 0x0344F4 0D:84E4: E6 84     .word ofs_84E6_19



ofs_84E6_19:
C - - J - - 0x0344F6 0D:84E6: BC DE 06  LDY ram_06DE,X
C - - - - - 0x0344F9 0D:84E9: BD 7A 06  LDA ram_067A,X
C - - - - - 0x0344FC 0D:84EC: D0 06     BNE bra_84F4
C - - - - - 0x0344FE 0D:84EE: A5 11     LDA ram_0011
C - - - - - 0x034500 0D:84F0: C9 08     CMP #$08
C - - - - - 0x034502 0D:84F2: F0 03     BEQ bra_84F7
bra_84F4:
C - - - - - 0x034504 0D:84F4: 4C FB 89  JMP loc_89FB
bra_84F7:
C - - - - - 0x034507 0D:84F7: BD DA 06  LDA ram_06DA,X
C - - - - - 0x03450A 0D:84FA: D0 14     BNE bra_8510
C - - - - - 0x03450C 0D:84FC: FE DA 06  INC ram_06DA,X
C - - - - - 0x03450F 0D:84FF: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x034512 0D:8502: C9 10     CMP #$10
C - - - - - 0x034514 0D:8504: B0 03     BCS bra_8509
C - - - - - 0x034516 0D:8506: FE DA 06  INC ram_06DA,X
bra_8509:
C - - - - - 0x034519 0D:8509: C9 20     CMP #$20
C - - - - - 0x03451B 0D:850B: 90 03     BCC bra_8510
C - - - - - 0x03451D 0D:850D: FE DA 06  INC ram_06DA,X
bra_8510:
C - - - - - 0x034520 0D:8510: BC DE 06  LDY ram_06DE,X
C - - - - - 0x034523 0D:8513: B9 40 05  LDA ram_0540,Y
C - - - - - 0x034526 0D:8516: C9 05     CMP #$05
C - - - - - 0x034528 0D:8518: F0 11     BEQ bra_852B
C - - - - - 0x03452A 0D:851A: C9 06     CMP #$06
C - - - - - 0x03452C 0D:851C: F0 03     BEQ bra_8521
C - - - - - 0x03452E 0D:851E: 4C 9A 89  JMP loc_899A
bra_8521:
C - - - - - 0x034531 0D:8521: BD DA 06  LDA ram_06DA,X
C - - - - - 0x034534 0D:8524: C9 03     CMP #$03
C - - - - - 0x034536 0D:8526: D0 0D     BNE bra_8535
- - - - - - 0x034538 0D:8528: 4C FB 89  JMP loc_89FB
bra_852B:
C - - - - - 0x03453B 0D:852B: BD DA 06  LDA ram_06DA,X
C - - - - - 0x03453E 0D:852E: C9 02     CMP #$02
C - - - - - 0x034540 0D:8530: D0 03     BNE bra_8535
C - - - - - 0x034542 0D:8532: 4C FB 89  JMP loc_89FB
bra_8535:
C - - - - - 0x034545 0D:8535: 20 86 EC  JSR sub_0x03EC96
C - - - - - 0x034548 0D:8538: 09 04     ORA #$04
C - - - - - 0x03454A 0D:853A: 9D C8 06  STA ram_06C8,X
C - - - - - 0x03454D 0D:853D: 9D C6 06  STA ram_06C6,X
C - - - - - 0x034550 0D:8540: 4C 9A 89  JMP loc_899A



ofs_8543_18:
- - - - - - 0x034553 0D:8543: 20 8E EC  JSR sub_0x03EC9E
- - - - - - 0x034556 0D:8546: 90 00     BCC bra_8548
bra_8548:
- - - - - - 0x034558 0D:8548: 20 81 84  JSR sub_8481
- - - - - - 0x03455B 0D:854B: BD 20 05  LDA ram_0520,X
- - - - - - 0x03455E 0D:854E: C9 03     CMP #$03
- - - - - - 0x034560 0D:8550: F0 0A     BEQ bra_855C
- - - - - - 0x034562 0D:8552: BD 0C 06  LDA ram_060C,X
- - - - - - 0x034565 0D:8555: DD 2E 01  CMP ram_012E,X
- - - - - - 0x034568 0D:8558: F0 34     BEQ bra_858E
- - - - - - 0x03456A 0D:855A: B0 32     BCS bra_858E
bra_855C:
- - - - - - 0x03456C 0D:855C: A5 13     LDA ram_0013
- - - - - - 0x03456E 0D:855E: D0 03     BNE bra_8563
- - - - - - 0x034570 0D:8560: 4C CF 85  JMP loc_85CF
bra_8563:
- - - - - - 0x034573 0D:8563: C9 01     CMP #$01
- - - - - - 0x034575 0D:8565: D0 37     BNE bra_859E
- - - - - - 0x034577 0D:8567: 20 8E EC  JSR sub_0x03EC9E
- - - - - - 0x03457A 0D:856A: B0 32     BCS bra_859E
- - - - - - 0x03457C 0D:856C: A5 11     LDA ram_0011
- - - - - - 0x03457E 0D:856E: C9 01     CMP #$01
- - - - - - 0x034580 0D:8570: D0 2C     BNE bra_859E
- - - - - - 0x034582 0D:8572: F0 2D     BEQ bra_85A1
- - - - - - 0x034584 0D:8574: BD 20 05  LDA ram_0520,X
- - - - - - 0x034587 0D:8577: C9 08     CMP #$08
- - - - - - 0x034589 0D:8579: F0 23     BEQ bra_859E
- - - - - - 0x03458B 0D:857B: C9 07     CMP #$07
- - - - - - 0x03458D 0D:857D: F0 25     BEQ bra_85A4
- - - - - - 0x03458F 0D:857F: AD 38 06  LDA ram_dist_X_btw_plrs
- - - - - - 0x034592 0D:8582: C9 26     CMP #$26
- - - - - - 0x034594 0D:8584: B0 03     BCS bra_8589
- - - - - - 0x034596 0D:8586: 4C FB 89  JMP loc_89FB
bra_8589:
- - - - - - 0x034599 0D:8589: 20 8E EC  JSR sub_0x03EC9E
- - - - - - 0x03459C 0D:858C: 90 10     BCC bra_859E
bra_858E:
- - - - - - 0x03459E 0D:858E: A5 13     LDA ram_0013
- - - - - - 0x0345A0 0D:8590: C9 02     CMP #$02
- - - - - - 0x0345A2 0D:8592: B0 0D     BCS bra_85A1
- - - - - - 0x0345A4 0D:8594: F0 0B     BEQ bra_85A1
- - - - - - 0x0345A6 0D:8596: 20 8E EC  JSR sub_0x03EC9E
- - - - - - 0x0345A9 0D:8599: B0 03     BCS bra_859E
- - - - - - 0x0345AB 0D:859B: 4C FB 89  JMP loc_89FB
bra_859E:
- - - - - - 0x0345AE 0D:859E: 4C 0E 8A  JMP loc_8A0E
bra_85A1:
- - - - - - 0x0345B1 0D:85A1: 4C FB 89  JMP loc_89FB
bra_85A4:
- - - - - - 0x0345B4 0D:85A4: 20 86 EC  JSR sub_0x03EC96
- - - - - - 0x0345B7 0D:85A7: 09 08     ORA #$08
- - - - - - 0x0345B9 0D:85A9: 9D C6 06  STA ram_06C6,X
- - - - - - 0x0345BC 0D:85AC: 9D C8 06  STA ram_06C8,X
- - - - - - 0x0345BF 0D:85AF: 20 8F ED  JSR sub_0x03ED9F
- - - - - - 0x0345C2 0D:85B2: 4C FB 89  JMP loc_89FB



ofs_85B5_17:
C - - J - - 0x0345C5 0D:85B5: A5 11     LDA ram_0011
C - - - - - 0x0345C7 0D:85B7: D0 06     BNE bra_85BF
C - - - - - 0x0345C9 0D:85B9: A5 13     LDA ram_0013
C - - - - - 0x0345CB 0D:85BB: C9 02     CMP #$02
C - - - - - 0x0345CD 0D:85BD: 90 10     BCC bra_85CF
bra_85BF:
C - - - - - 0x0345CF 0D:85BF: 20 81 84  JSR sub_8481
C - - - - - 0x0345D2 0D:85C2: BD 0C 06  LDA ram_060C,X
C - - - - - 0x0345D5 0D:85C5: DD 2E 01  CMP ram_012E,X
C - - - - - 0x0345D8 0D:85C8: F0 05     BEQ bra_85CF
C - - - - - 0x0345DA 0D:85CA: B0 03     BCS bra_85CF
bra_85CC:
C - - - - - 0x0345DC 0D:85CC: 4C 0E 8A  JMP loc_8A0E
bra_85CF:
loc_85CF:
C - - - - - 0x0345DF 0D:85CF: BC DE 06  LDY ram_06DE,X
C - - - - - 0x0345E2 0D:85D2: B9 7A 06  LDA ram_067A,Y
C - - - - - 0x0345E5 0D:85D5: D0 06     BNE bra_85DD
C - - - - - 0x0345E7 0D:85D7: A5 11     LDA ram_0011
C - - - - - 0x0345E9 0D:85D9: C9 08     CMP #$08
C - - - - - 0x0345EB 0D:85DB: F0 EF     BEQ bra_85CC
bra_85DD:
C - - - - - 0x0345ED 0D:85DD: B9 10 06  LDA ram_0610,Y
C - - - - - 0x0345F0 0D:85E0: D0 EA     BNE bra_85CC
C - - - - - 0x0345F2 0D:85E2: AD F8 06  LDA ram_06F8
C - - - - - 0x0345F5 0D:85E5: C9 02     CMP #$02
C - - - - - 0x0345F7 0D:85E7: 90 E3     BCC bra_85CC
C - - - - - 0x0345F9 0D:85E9: 4C FB 89  JMP loc_89FB



ofs_85EC_16:
C - - J - - 0x0345FC 0D:85EC: BD 20 05  LDA ram_0520,X
C - - - - - 0x0345FF 0D:85EF: D0 16     BNE bra_8607
C - - - - - 0x034601 0D:85F1: BD C6 06  LDA ram_06C6,X
C - - - - - 0x034604 0D:85F4: 09 40     ORA #$40
C - - - - - 0x034606 0D:85F6: 29 C3     AND #$C3
C - - - - - 0x034608 0D:85F8: 95 91     STA ram_0091,X
C - - - - - 0x03460A 0D:85FA: 9D C6 06  STA ram_06C6,X
C - - - - - 0x03460D 0D:85FD: 9D C8 06  STA ram_06C8,X
C - - - - - 0x034610 0D:8600: A9 40     LDA #$40
C - - - - - 0x034612 0D:8602: 95 8E     STA ram_008E,X
C - - - - - 0x034614 0D:8604: 4C FB 89  JMP loc_89FB
bra_8607:
C - - - - - 0x034617 0D:8607: 4C 0E 8A  JMP loc_8A0E



ofs_860A_15:
C - - J - - 0x03461A 0D:860A: BD DA 06  LDA ram_06DA,X
C - - - - - 0x03461D 0D:860D: 20 32 D0  JSR sub_0x03D042
- D 0 - I - 0x034620 0D:8610: 08 87     .word ofs_8708_00
- D 0 - I - 0x034622 0D:8612: D8 86     .word ofs_86D8_01
- D 0 - I - 0x034624 0D:8614: CB 86     .word ofs_86CB_02
- D 0 - I - 0x034626 0D:8616: B2 86     .word ofs_86B2_03
- D 0 - I - 0x034628 0D:8618: A9 86     .word ofs_86A9_04
- D 0 - I - 0x03462A 0D:861A: 9C 86     .word ofs_869C_05
- D 0 - I - 0x03462C 0D:861C: 7F 86     .word ofs_867F_06
- D 0 - I - 0x03462E 0D:861E: 6C 86     .word ofs_866C_07
- D 0 - I - 0x034630 0D:8620: 31 86     .word ofs_8631_08
- D 0 - I - 0x034632 0D:8622: 24 86     .word ofs_8624_09



ofs_8624_09:
C - - J - - 0x034634 0D:8624: BD 20 05  LDA ram_0520,X
C - - - - - 0x034637 0D:8627: C9 03     CMP #$03
C - - - - - 0x034639 0D:8629: D0 03     BNE bra_862E
C - - - - - 0x03463B 0D:862B: 20 96 ED  JSR sub_0x03EDA6
bra_862E:
C - - - - - 0x03463E 0D:862E: 4C FB 89  JMP loc_89FB



ofs_8631_08:
C - - J - - 0x034641 0D:8631: BD C6 06  LDA ram_06C6,X
C - - - - - 0x034644 0D:8634: 1D C8 06  ORA ram_06C8,X
C - - - - - 0x034647 0D:8637: 29 00     AND #$00
C - - - - - 0x034649 0D:8639: 9D C6 06  STA ram_06C6,X
C - - - - - 0x03464C 0D:863C: 9D C8 06  STA ram_06C8,X
C - - - - - 0x03464F 0D:863F: DE FA 06  DEC ram_06FA,X
C - - - - - 0x034652 0D:8642: F0 20     BEQ bra_8664
C - - - - - 0x034654 0D:8644: 20 2F EE  JSR sub_0x03EE3F
C - - - - - 0x034657 0D:8647: 90 1B     BCC bra_8664
C - - - - - 0x034659 0D:8649: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03465C 0D:864C: B9 7A 06  LDA ram_067A,Y
C - - - - - 0x03465F 0D:864F: D0 06     BNE bra_8657
C - - - - - 0x034661 0D:8651: A5 11     LDA ram_0011
C - - - - - 0x034663 0D:8653: C9 08     CMP #$08
C - - - - - 0x034665 0D:8655: F0 0D     BEQ bra_8664
bra_8657:
C - - - - - 0x034667 0D:8657: 20 8E EC  JSR sub_0x03EC9E
C - - - - - 0x03466A 0D:865A: 90 08     BCC bra_8664
C - - - - - 0x03466C 0D:865C: 20 14 EE  JSR sub_0x03EE24
C - - - - - 0x03466F 0D:865F: 90 03     BCC bra_8664
C - - - - - 0x034671 0D:8661: 4C 0E 8A  JMP loc_8A0E
bra_8664:
C - - - - - 0x034674 0D:8664: A9 00     LDA #$00
C - - - - - 0x034676 0D:8666: 9D FA 06  STA ram_06FA,X
C - - - - - 0x034679 0D:8669: 4C FB 89  JMP loc_89FB



ofs_866C_07:
C - - J - - 0x03467C 0D:866C: BD 20 05  LDA ram_0520,X
C - - - - - 0x03467F 0D:866F: C9 08     CMP #$08
C - - - - - 0x034681 0D:8671: D0 03     BNE bra_8676
C - - - - - 0x034683 0D:8673: 4C FB 89  JMP loc_89FB
bra_8676:
C - - - - - 0x034686 0D:8676: A9 00     LDA #$00
C - - - - - 0x034688 0D:8678: 9D C2 06  STA ram_06C2,X
C - - - - - 0x03468B 0D:867B: 4C FB 89  JMP loc_89FB



ofs_867F_06:
C - - J - - 0x03468F 0D:867F: BD 20 05  LDA ram_0520,X
C - - - - - 0x034692 0D:8682: C9 08     CMP #$08
C - - - - - 0x034694 0D:8684: F0 07     BEQ bra_868D
C - - - - - 0x034696 0D:8686: C9 06     CMP #$06
C - - - - - 0x034698 0D:8688: F0 03     BEQ bra_868D
C - - - - - 0x03469A 0D:868A: 4C FB 89  JMP loc_89FB
bra_868D:
C - - - - - 0x03469D 0D:868D: A9 00     LDA #$00
C - - - - - 0x03469F 0D:868F: 9D C6 06  STA ram_06C6,X
C - - - - - 0x0346A2 0D:8692: 9D C8 06  STA ram_06C8,X
C - - - - - 0x0346A5 0D:8695: 95 91     STA ram_0091,X
C - - - - - 0x0346A7 0D:8697: 95 8E     STA ram_008E,X
C - - - - - 0x0346A9 0D:8699: 4C 0E 8A  JMP loc_8A0E



ofs_869C_05:
C - - J - - 0x0346AC 0D:869C: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x0346AF 0D:869F: C9 3C     CMP #$3C
C - - - - - 0x0346B1 0D:86A1: 90 03     BCC bra_86A6
C - - - - - 0x0346B3 0D:86A3: 4C FB 89  JMP loc_89FB
bra_86A6:
C - - - - - 0x0346B6 0D:86A6: 4C 96 ED  JMP loc_0x03EDA6



ofs_86A9_04:
C - - J - - 0x0346B9 0D:86A9: BD 20 05  LDA ram_0520,X
C - - - - - 0x0346BC 0D:86AC: F0 01     BEQ bra_86AF
C - - - - - 0x0346BE 0D:86AE: 60        RTS
bra_86AF:
C - - - - - 0x0346BF 0D:86AF: 4C FB 89  JMP loc_89FB



ofs_86B2_03:
C - - J - - 0x0346C2 0D:86B2: BD 20 05  LDA ram_0520,X
C - - - - - 0x0346C5 0D:86B5: C9 01     CMP #$01
C - - - - - 0x0346C7 0D:86B7: D0 0A     BNE bra_86C3
C - - - - - 0x0346C9 0D:86B9: BD 10 04  LDA ram_0410,X
C - - - - - 0x0346CC 0D:86BC: C9 90     CMP #$90
C - - - - - 0x0346CE 0D:86BE: B0 03     BCS bra_86C3
C - - - - - 0x0346D0 0D:86C0: 4C FB 89  JMP loc_89FB
bra_86C3:
C - - - - - 0x0346D3 0D:86C3: 20 7B EC  JSR sub_0x03EC8B
C - - - - - 0x0346D6 0D:86C6: 09 08     ORA #$08
C - - - - - 0x0346D8 0D:86C8: 95 91     STA ram_0091,X
C - - - - - 0x0346DA 0D:86CA: 60        RTS



ofs_86CB_02:
C - - J - - 0x0346DB 0D:86CB: BD 20 05  LDA ram_0520,X
C - - - - - 0x0346DE 0D:86CE: C9 08     CMP #$08
C - - - - - 0x0346E0 0D:86D0: D0 03     BNE bra_86D5
C - - - - - 0x0346E2 0D:86D2: 20 96 ED  JSR sub_0x03EDA6
bra_86D5:
C - - - - - 0x0346E5 0D:86D5: 4C FB 89  JMP loc_89FB



ofs_86D8_01:
C - - J - - 0x0346E8 0D:86D8: BD F6 06  LDA ram_06F6,X
C - - - - - 0x0346EB 0D:86DB: F0 12     BEQ bra_86EF
C - - - - - 0x0346ED 0D:86DD: DE C4 06  DEC ram_06C4,X
C - - - - - 0x0346F0 0D:86E0: BD 20 05  LDA ram_0520,X
C - - - - - 0x0346F3 0D:86E3: C9 0A     CMP #$0A
C - - - - - 0x0346F5 0D:86E5: D0 4A     BNE bra_8731
C - - - - - 0x0346F7 0D:86E7: A9 00     LDA #$00
C - - - - - 0x0346F9 0D:86E9: 9D C2 06  STA ram_06C2,X
C - - - - - 0x0346FC 0D:86EC: 4C FB 89  JMP loc_89FB
bra_86EF:
C - - - - - 0x0346FF 0D:86EF: A9 00     LDA #$00
C - - - - - 0x034701 0D:86F1: 9D C8 06  STA ram_06C8,X
C - - - - - 0x034704 0D:86F4: 9D C6 06  STA ram_06C6,X
C - - - - - 0x034707 0D:86F7: 20 9A A1  JSR sub_A19A
C - - - - - 0x03470A 0D:86FA: 0A        ASL
C - - - - - 0x03470B 0D:86FB: 0A        ASL
C - - - - - 0x03470C 0D:86FC: 18        CLC
C - - - - - 0x03470D 0D:86FD: 6D 25 01  ADC ram_option_difficulty
C - - - - - 0x034710 0D:8700: A8        TAY
C - - - - - 0x034711 0D:8701: B9 D0 8D  LDA tbl_8DD0,Y
C - - - - - 0x034714 0D:8704: 9D F6 06  STA ram_06F6,X
C - - - - - 0x034717 0D:8707: 60        RTS



ofs_8708_00:
C - - J - - 0x034718 0D:8708: BD 20 05  LDA ram_0520,X
C - - - - - 0x03471B 0D:870B: D0 21     BNE bra_872E
C - - - - - 0x03471D 0D:870D: BC DE 06  LDY ram_06DE,X
C - - - - - 0x034720 0D:8710: 20 66 EE  JSR sub_0x03EE76
C - - - - - 0x034723 0D:8713: B0 09     BCS bra_871E
C - - - - - 0x034725 0D:8715: 10 07     BPL bra_871E
C - - - - - 0x034727 0D:8717: B9 20 05  LDA ram_0520,Y
C - - - - - 0x03472A 0D:871A: C9 04     CMP #$04
C - - - - - 0x03472C 0D:871C: D0 16     BNE bra_8734
bra_871E:
C - - - - - 0x03472E 0D:871E: B9 40 05  LDA ram_0540,Y
C - - - - - 0x034731 0D:8721: C9 04     CMP #$04
C - - - - - 0x034733 0D:8723: D0 09     BNE bra_872E
C - - - - - 0x034735 0D:8725: FE C2 06  INC ram_06C2,X
C - - - - - 0x034738 0D:8728: FE C2 06  INC ram_06C2,X
C - - - - - 0x03473B 0D:872B: 4C FB 89  JMP loc_89FB
bra_872E:
C - - - - - 0x03473E 0D:872E: 4C 0E 8A  JMP loc_8A0E
bra_8731:
C - - - - - 0x034741 0D:8731: 20 96 ED  JSR sub_0x03EDA6
bra_8734:
C - - - - - 0x034744 0D:8734: 4C FB 89  JMP loc_89FB



ofs_8737_14:
C - - J - - 0x034747 0D:8737: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03474A 0D:873A: B9 20 05  LDA ram_0520,Y
C - - - - - 0x03474D 0D:873D: C9 03     CMP #$03
C - - - - - 0x03474F 0D:873F: F0 52     BEQ bra_8793
C - - - - - 0x034751 0D:8741: BD 20 05  LDA ram_0520,X
C - - - - - 0x034754 0D:8744: C9 01     CMP #$01
C - - - - - 0x034756 0D:8746: F0 4B     BEQ bra_8793
C - - - - - 0x034758 0D:8748: BD C6 06  LDA ram_06C6,X
C - - - - - 0x03475B 0D:874B: 09 40     ORA #$40
C - - - - - 0x03475D 0D:874D: 29 C3     AND #$C3
C - - - - - 0x03475F 0D:874F: 95 91     STA ram_0091,X
C - - - - - 0x034761 0D:8751: 9D C6 06  STA ram_06C6,X
C - - - - - 0x034764 0D:8754: 9D C8 06  STA ram_06C8,X
C - - - - - 0x034767 0D:8757: A9 40     LDA #$40
C - - - - - 0x034769 0D:8759: 95 8E     STA ram_008E,X
C - - - - - 0x03476B 0D:875B: 4C 97 88  JMP loc_8897



ofs_875E_13:
C - - J - - 0x03476E 0D:875E: 20 E8 EC  JSR sub_0x03ECF8
C - - - - - 0x034771 0D:8761: 90 CE     BCC bra_8731
C - - - - - 0x034773 0D:8763: BC DE 06  LDY ram_06DE,X
C - - - - - 0x034776 0D:8766: B9 10 06  LDA ram_0610,Y
C - - - - - 0x034779 0D:8769: D0 C6     BNE bra_8731
C - - - - - 0x03477B 0D:876B: B9 20 05  LDA ram_0520,Y
C - - - - - 0x03477E 0D:876E: C9 01     CMP #$01
C - - - - - 0x034780 0D:8770: F0 BF     BEQ bra_8731
C - - - - - 0x034782 0D:8772: C9 03     CMP #$03
C - - - - - 0x034784 0D:8774: F0 03     BEQ bra_8779
C - - - - - 0x034786 0D:8776: 4C FB 89  JMP loc_89FB
bra_8779:
C - - - - - 0x034789 0D:8779: 4C 0E 8A  JMP loc_8A0E



ofs_877C_12:
- - - - - - 0x03478C 0D:877C: BD 10 04  LDA ram_0410,X
- - - - - - 0x03478F 0D:877F: C9 B0     CMP #$B0
- - - - - - 0x034791 0D:8781: D0 10     BNE bra_8793
- - - - - - 0x034793 0D:8783: A9 00     LDA #$00
- - - - - - 0x034795 0D:8785: 9D C8 06  STA ram_06C8,X
- - - - - - 0x034798 0D:8788: 9D C6 06  STA ram_06C6,X
- - - - - - 0x03479B 0D:878B: BD 80 04  LDA ram_0480,X
- - - - - - 0x03479E 0D:878E: 1D 90 04  ORA ram_0490,X
- - - - - - 0x0347A1 0D:8791: F0 57     BEQ bra_87EA
bra_8793:
C - - - - - 0x0347A3 0D:8793: 4C 0E 8A  JMP loc_8A0E



ofs_8796_11:
C - - J - - 0x0347A6 0D:8796: 20 2F EE  JSR sub_0x03EE3F
C - - - - - 0x0347A9 0D:8799: B0 4F     BCS bra_87EA
C - - - - - 0x0347AB 0D:879B: 4C 0E 8A  JMP loc_8A0E



ofs_879E_10:
C - - J - - 0x0347AE 0D:879E: BD 20 05  LDA ram_0520,X
C - - - - - 0x0347B1 0D:87A1: C9 07     CMP #$07
C - - - - - 0x0347B3 0D:87A3: F0 45     BEQ bra_87EA
C - - - - - 0x0347B5 0D:87A5: BD C6 06  LDA ram_06C6,X
C - - - - - 0x0347B8 0D:87A8: 09 40     ORA #$40
C - - - - - 0x0347BA 0D:87AA: 4C 8B 88  JMP loc_888B



ofs_87AD_0F:
C - - J - - 0x0347BD 0D:87AD: BD C8 06  LDA ram_06C8,X
C - - - - - 0x0347C0 0D:87B0: 29 CB     AND #$CB
C - - - - - 0x0347C2 0D:87B2: 9D C8 06  STA ram_06C8,X
C - - - - - 0x0347C5 0D:87B5: BD C6 06  LDA ram_06C6,X
C - - - - - 0x0347C8 0D:87B8: 29 CB     AND #$CB
C - - - - - 0x0347CA 0D:87BA: 9D C6 06  STA ram_06C6,X
C - - - - - 0x0347CD 0D:87BD: BD 10 04  LDA ram_0410,X
C - - - - - 0x0347D0 0D:87C0: C9 B0     CMP #$B0
C - - - - - 0x0347D2 0D:87C2: D0 26     BNE bra_87EA
C - - - - - 0x0347D4 0D:87C4: BD 20 05  LDA ram_0520,X
C - - - - - 0x0347D7 0D:87C7: C9 01     CMP #$01
C - - - - - 0x0347D9 0D:87C9: D0 1F     BNE bra_87EA
C - - - - - 0x0347DB 0D:87CB: 4C 0E 8A  JMP loc_8A0E



ofs_87CE_0E:
- - - - - - 0x0347DE 0D:87CE: BD 10 04  LDA ram_0410,X
- - - - - - 0x0347E1 0D:87D1: C9 B0     CMP #$B0
- - - - - - 0x0347E3 0D:87D3: D0 12     BNE bra_87E7
- - - - - - 0x0347E5 0D:87D5: AD 38 06  LDA ram_dist_X_btw_plrs
- - - - - - 0x0347E8 0D:87D8: F0 10     BEQ bra_87EA
- - - - - - 0x0347EA 0D:87DA: BD 80 04  LDA ram_0480,X
- - - - - - 0x0347ED 0D:87DD: 1D 90 04  ORA ram_0490,X
- - - - - - 0x0347F0 0D:87E0: F0 05     BEQ bra_87E7
- - - - - - 0x0347F2 0D:87E2: BD 20 05  LDA ram_0520,X
- - - - - - 0x0347F5 0D:87E5: F0 03     BEQ bra_87EA
bra_87E7:
- - - - - - 0x0347F7 0D:87E7: 4C 0E 8A  JMP loc_8A0E
bra_87EA:
loc_87EA:
C D 0 - - - 0x0347FA 0D:87EA: 4C FB 89  JMP loc_89FB



ofs_87ED_0A:
C - - J - - 0x0347FD 0D:87ED: BC DE 06  LDY ram_06DE,X
C - - - - - 0x034800 0D:87F0: B9 30 05  LDA ram_0530,Y
C - - - - - 0x034803 0D:87F3: C9 05     CMP #$05
C - - - - - 0x034805 0D:87F5: D0 03     BNE bra_87FA
- - - - - - 0x034807 0D:87F7: 4C FB 89  JMP loc_89FB
bra_87FA:
C - - - - - 0x03480A 0D:87FA: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03480D 0D:87FD: A9 00     LDA #$00
C - - - - - 0x03480F 0D:87FF: 85 0D     STA ram_000D
C - - - - - 0x034811 0D:8801: AD D6 06  LDA ram_06D6
C - - - - - 0x034814 0D:8804: 30 04     BMI bra_880A
C - - - - - 0x034816 0D:8806: A9 02     LDA #$02
C - - - - - 0x034818 0D:8808: 85 0D     STA ram_000D
bra_880A:
C - - - - - 0x03481A 0D:880A: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x03481D 0D:880D: DD DA 06  CMP ram_06DA,X
C - - - - - 0x034820 0D:8810: F0 D8     BEQ bra_87EA
C - - - - - 0x034822 0D:8812: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x034825 0D:8815: F0 1B     BEQ bra_8832
C - - - - - 0x034827 0D:8817: 18        CLC
C - - - - - 0x034828 0D:8818: 69 01     ADC #$01
C - - - - - 0x03482A 0D:881A: DD DA 06  CMP ram_06DA,X
C - - - - - 0x03482D 0D:881D: F0 CB     BEQ bra_87EA
C - - - - - 0x03482F 0D:881F: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x034832 0D:8822: 38        SEC
C - - - - - 0x034833 0D:8823: E9 01     SBC #$01
C - - - - - 0x034835 0D:8825: DD DA 06  CMP ram_06DA,X
C - - - - - 0x034838 0D:8828: F0 C0     BEQ bra_87EA
C - - - - - 0x03483A 0D:882A: 90 06     BCC bra_8832
C - - - - - 0x03483C 0D:882C: A5 0D     LDA ram_000D
C - - - - - 0x03483E 0D:882E: 09 01     ORA #$01
C - - - - - 0x034840 0D:8830: 85 0D     STA ram_000D
bra_8832:
C - - - - - 0x034842 0D:8832: A4 0D     LDY ram_000D
C - - - - - 0x034844 0D:8834: B9 6B 88  LDA tbl_886B,Y
C - - - - - 0x034847 0D:8837: 95 91     STA ram_0091,X
C - - - - - 0x034849 0D:8839: 29 03     AND #$03
C - - - - - 0x03484B 0D:883B: C9 03     CMP #$03
C - - - - - 0x03484D 0D:883D: 9D C8 06  STA ram_06C8,X
C - - - - - 0x034850 0D:8840: 9D C6 06  STA ram_06C6,X
C - - - - - 0x034853 0D:8843: BD 80 04  LDA ram_0480,X
C - - - - - 0x034856 0D:8846: 30 10     BMI bra_8858
C - - - - - 0x034858 0D:8848: B5 91     LDA ram_0091,X
C - - - - - 0x03485A 0D:884A: 29 03     AND #$03
C - - - - - 0x03485C 0D:884C: C9 02     CMP #$02
C - - - - - 0x03485E 0D:884E: F0 08     BEQ bra_8858
C - - - - - 0x034860 0D:8850: BD 40 04  LDA ram_0440,X
C - - - - - 0x034863 0D:8853: C9 E7     CMP #$E7
C - - - - - 0x034865 0D:8855: B0 93     BCS bra_87EA
C - - - - - 0x034867 0D:8857: 60        RTS
bra_8858:
C - - - - - 0x034868 0D:8858: B5 91     LDA ram_0091,X
C - - - - - 0x03486A 0D:885A: 29 03     AND #$03
C - - - - - 0x03486C 0D:885C: C9 01     CMP #$01
C - - - - - 0x03486E 0D:885E: F0 0A     BEQ bra_886A_RTS
C - - - - - 0x034870 0D:8860: BD 40 04  LDA ram_0440,X
C - - - - - 0x034873 0D:8863: C9 19     CMP #$19
C - - - - - 0x034875 0D:8865: B0 03     BCS bra_886A_RTS
C - - - - - 0x034877 0D:8867: 4C EA 87  JMP loc_87EA
bra_886A_RTS:
C - - - - - 0x03487A 0D:886A: 60        RTS



tbl_886B:
- D 0 - - - 0x03487B 0D:886B: 01        .byte $01   ; 00
- D 0 - - - 0x03487C 0D:886C: 02        .byte $02   ; 01
- D 0 - - - 0x03487D 0D:886D: 02        .byte $02   ; 02
- D 0 - - - 0x03487E 0D:886E: 01        .byte $01   ; 03



ofs_886F_05:
C - - J - - 0x03487F 0D:886F: BD C6 06  LDA ram_06C6,X
C - - - - - 0x034882 0D:8872: 29 C3     AND #$C3
C - - - - - 0x034884 0D:8874: 9D C6 06  STA ram_06C6,X
C - - - - - 0x034887 0D:8877: A9 00     LDA #$00
C - - - - - 0x034889 0D:8879: 9D C8 06  STA ram_06C8,X
C - - - - - 0x03488C 0D:887C: BD 20 05  LDA ram_0520,X
C - - - - - 0x03488F 0D:887F: F0 03     BEQ bra_8884
C - - - - - 0x034891 0D:8881: 4C 04 89  JMP loc_8904
bra_8884:
C - - - - - 0x034894 0D:8884: BD C6 06  LDA ram_06C6,X
C - - - - - 0x034897 0D:8887: 09 40     ORA #$40
C - - - - - 0x034899 0D:8889: 29 C3     AND #$C3
loc_888B:
C D 0 - - - 0x03489B 0D:888B: 95 91     STA ram_0091,X
C - - - - - 0x03489D 0D:888D: 9D C6 06  STA ram_06C6,X
C - - - - - 0x0348A0 0D:8890: 9D C8 06  STA ram_06C8,X
C - - - - - 0x0348A3 0D:8893: A9 40     LDA #$40
loc_8895:
C D 0 - - - 0x0348A5 0D:8895: 95 8E     STA ram_008E,X
loc_8897:
C D 0 - - - 0x0348A7 0D:8897: A9 30     LDA #$30
C - - - - - 0x0348A9 0D:8899: 9D C4 06  STA ram_06C4,X
C - - - - - 0x0348AC 0D:889C: A9 02     LDA #$02
C - - - - - 0x0348AE 0D:889E: 9D D2 06  STA ram_06D2,X
C - - - - - 0x0348B1 0D:88A1: 60        RTS



ofs_88A2_04:
C - - J - - 0x0348B2 0D:88A2: BD 20 05  LDA ram_0520,X
C - - - - - 0x0348B5 0D:88A5: C9 03     CMP #$03
C - - - - - 0x0348B7 0D:88A7: F0 1E     BEQ bra_88C7
C - - - - - 0x0348B9 0D:88A9: BD DA 06  LDA ram_06DA,X
C - - - - - 0x0348BC 0D:88AC: 20 32 D0  JSR sub_0x03D042
- D 0 - I - 0x0348BF 0D:88AF: B5 88     .word ofs_88B5_00
- D 0 - I - 0x0348C1 0D:88B1: CA 88     .word ofs_88CA_01
- D 0 - I - 0x0348C3 0D:88B3: E0 88     .word ofs_88E0_02



ofs_88B5_00:
C - - J - - 0x0348C5 0D:88B5: A9 05     LDA #$05
C - - - - - 0x0348C7 0D:88B7: 9D E0 06  STA ram_06E0,X
C - - - - - 0x0348CA 0D:88BA: A9 04     LDA #$04
C - - - - - 0x0348CC 0D:88BC: 9D C8 06  STA ram_06C8,X
C - - - - - 0x0348CF 0D:88BF: 95 8E     STA ram_008E,X
C - - - - - 0x0348D1 0D:88C1: 95 91     STA ram_0091,X
C - - - - - 0x0348D3 0D:88C3: FE DA 06  INC ram_06DA,X
C - - - - - 0x0348D6 0D:88C6: 60        RTS



bra_88C7:
C - - - - - 0x0348D7 0D:88C7: 4C 96 ED  JMP loc_0x03EDA6



bra_88CA:
loc_88CA:
ofs_88CA_01:
C D 0 J - - 0x0348DA 0D:88CA: BC C2 06  LDY ram_06C2,X
C - - - - - 0x0348DD 0D:88CD: 20 20 ED  JSR sub_0x03ED30
C - - - - - 0x0348E0 0D:88D0: 95 8E     STA ram_008E,X
C - - - - - 0x0348E2 0D:88D2: 1D C8 06  ORA ram_06C8,X
C - - - - - 0x0348E5 0D:88D5: 95 91     STA ram_0091,X
C - - - - - 0x0348E7 0D:88D7: 9D C6 06  STA ram_06C6,X
C - - - - - 0x0348EA 0D:88DA: A9 02     LDA #$02
C - - - - - 0x0348EC 0D:88DC: 9D DA 06  STA ram_06DA,X
C - - - - - 0x0348EF 0D:88DF: 60        RTS



ofs_88E0_02:
C - - J - - 0x0348F0 0D:88E0: DE E0 06  DEC ram_06E0,X
C - - - - - 0x0348F3 0D:88E3: BD E0 06  LDA ram_06E0,X
C - - - - - 0x0348F6 0D:88E6: D0 E2     BNE bra_88CA
C - - - - - 0x0348F8 0D:88E8: A9 C0     LDA #$C0
C - - - - - 0x0348FA 0D:88EA: 9D E0 06  STA ram_06E0,X
C - - - - - 0x0348FD 0D:88ED: A9 FF     LDA #$FF
C - - - - - 0x0348FF 0D:88EF: 9D C0 06  STA ram_06C0,X
C - - - - - 0x034902 0D:88F2: A9 01     LDA #$01
C - - - - - 0x034904 0D:88F4: 9D CC 06  STA ram_06CC,X
C - - - - - 0x034907 0D:88F7: A9 02     LDA #$02
C - - - - - 0x034909 0D:88F9: 9D D2 06  STA ram_06D2,X
C - - - - - 0x03490C 0D:88FC: A9 00     LDA #$00
C - - - - - 0x03490E 0D:88FE: 9D DA 06  STA ram_06DA,X
C - - - - - 0x034911 0D:8901: 9D C4 06  STA ram_06C4,X
loc_8904:
C D 0 - - - 0x034914 0D:8904: 4C 0E 8A  JMP loc_8A0E



ofs_8907_07:
C - - J - - 0x034917 0D:8907: BD 10 04  LDA ram_0410,X
C - - - - - 0x03491A 0D:890A: C9 A0     CMP #$A0
C - - - - - 0x03491C 0D:890C: B0 08     BCS bra_8916
C - - - - - 0x03491E 0D:890E: BD 60 04  LDA ram_0460,X
C - - - - - 0x034921 0D:8911: 30 03     BMI bra_8916
C - - - - - 0x034923 0D:8913: 4C 96 ED  JMP loc_0x03EDA6
bra_8916:
C - - - - - 0x034926 0D:8916: BC DE 06  LDY ram_06DE,X
C - - - - - 0x034929 0D:8919: 20 A9 EE  JSR sub_0x03EEB9
C - - - - - 0x03492C 0D:891C: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03492F 0D:891F: B9 04 8B  LDA tbl_8B04,Y
C - - - - - 0x034932 0D:8922: 20 3E EE  JSR sub_0x03EE4E
C - - - - - 0x034935 0D:8925: 90 03     BCC bra_892A
C - - - - - 0x034937 0D:8927: 4C 0E 8A  JMP loc_8A0E
bra_892A:
C - - - - - 0x03493A 0D:892A: 4C FB 89  JMP loc_89FB



bra_892D:
ofs_892D_08:
C - - J - - 0x03493D 0D:892D: BD 20 05  LDA ram_0520,X
C - - - - - 0x034940 0D:8930: C9 03     CMP #$03
C - - - - - 0x034942 0D:8932: F0 93     BEQ bra_88C7
C - - - - - 0x034944 0D:8934: BD DA 06  LDA ram_06DA,X
C - - - - - 0x034947 0D:8937: C9 04     CMP #$04
C - - - - - 0x034949 0D:8939: B0 0B     BCS bra_8946
C - - - - - 0x03494B 0D:893B: 20 32 D0  JSR sub_0x03D042
- D 0 - I - 0x03494E 0D:893E: B5 88     .word ofs_88B5_00
- D 0 - I - 0x034950 0D:8940: CA 88     .word ofs_88CA_01
- D 0 - I - 0x034952 0D:8942: 4D 89     .word ofs_894D_02
- D 0 - I - 0x034954 0D:8944: 59 89     .word ofs_8959_03
bra_8946:
- - - - - - 0x034956 0D:8946: A9 00     LDA #$00
- - - - - - 0x034958 0D:8948: 9D DA 06  STA ram_06DA,X
- - - - - - 0x03495B 0D:894B: F0 E0     BEQ bra_892D



ofs_894D_02:
C - - J - - 0x03495D 0D:894D: BD 10 06  LDA ram_0610,X
C - - - - - 0x034960 0D:8950: D0 03     BNE bra_8955
C - - - - - 0x034962 0D:8952: 4C CA 88  JMP loc_88CA
bra_8955:
C - - - - - 0x034965 0D:8955: FE DA 06  INC ram_06DA,X
C - - - - - 0x034968 0D:8958: 60        RTS



ofs_8959_03:
C - - J - - 0x034969 0D:8959: BD 10 06  LDA ram_0610,X
C - - - - - 0x03496C 0D:895C: F0 03     BEQ bra_8961
C - - - - - 0x03496E 0D:895E: 4C 0E 8A  JMP loc_8A0E
bra_8961:
C - - - - - 0x034971 0D:8961: 9D DA 06  STA ram_06DA,X
C - - - - - 0x034974 0D:8964: A9 04     LDA #$04
C - - - - - 0x034976 0D:8966: 9D C8 06  STA ram_06C8,X
C - - - - - 0x034979 0D:8969: 9D C6 06  STA ram_06C6,X
C - - - - - 0x03497C 0D:896C: 4C FB 89  JMP loc_89FB



ofs_896F_00:
C - - J - - 0x03497F 0D:896F: BD DA 06  LDA ram_06DA,X
C - - - - - 0x034982 0D:8972: D0 59     BNE bra_89CD
C - - - - - 0x034984 0D:8974: A5 11     LDA ram_0011
C - - - - - 0x034986 0D:8976: C9 08     CMP #$08
C - - - - - 0x034988 0D:8978: D0 0B     BNE bra_8985
C - - - - - 0x03498A 0D:897A: AC 25 01  LDY ram_option_difficulty
C - - - - - 0x03498D 0D:897D: B9 91 A1  LDA tbl_A191,Y
C - - - - - 0x034990 0D:8980: 9D DA 06  STA ram_06DA,X
C - - - - - 0x034993 0D:8983: D0 09     BNE bra_898E
bra_8985:
C - - - - - 0x034995 0D:8985: AC 25 01  LDY ram_option_difficulty
C - - - - - 0x034998 0D:8988: B9 8D A1  LDA tbl_A18D,Y
C - - - - - 0x03499B 0D:898B: 9D DA 06  STA ram_06DA,X
bra_898E:
C - - - - - 0x03499E 0D:898E: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x0349A1 0D:8991: 8A        TXA
C - - - - - 0x0349A2 0D:8992: 0A        ASL
C - - - - - 0x0349A3 0D:8993: 0A        ASL
C - - - - - 0x0349A4 0D:8994: A8        TAY
C - - - - - 0x0349A5 0D:8995: D9 EA 06  CMP ram_06EA,Y
C - - - - - 0x0349A8 0D:8998: B0 61     BCS bra_89FB
bra_899A:
loc_899A:
C D 0 - - - 0x0349AA 0D:899A: 4C F9 EC  JMP loc_0x03ED09



ofs_899D_0D:
C - - J - - 0x0349AD 0D:899D: BD DA 06  LDA ram_06DA,X
C - - - - - 0x0349B0 0D:89A0: D0 2B     BNE bra_89CD
C - - - - - 0x0349B2 0D:89A2: AC 25 01  LDY ram_option_difficulty
C - - - - - 0x0349B5 0D:89A5: B9 91 A1  LDA tbl_A191,Y
C - - - - - 0x0349B8 0D:89A8: 9D DA 06  STA ram_06DA,X
C - - - - - 0x0349BB 0D:89AB: BC DE 06  LDY ram_06DE,X
C - - - - - 0x0349BE 0D:89AE: B9 50 05  LDA ram_0550,Y
C - - - - - 0x0349C1 0D:89B1: C9 03     CMP #$03
C - - - - - 0x0349C3 0D:89B3: D0 18     BNE bra_89CD
C - - - - - 0x0349C5 0D:89B5: B9 7A 06  LDA ram_067A,Y
C - - - - - 0x0349C8 0D:89B8: D0 13     BNE bra_89CD
C - - - - - 0x0349CA 0D:89BA: A5 11     LDA ram_0011
C - - - - - 0x0349CC 0D:89BC: C9 08     CMP #$08
C - - - - - 0x0349CE 0D:89BE: D0 0D     BNE bra_89CD
C - - - - - 0x0349D0 0D:89C0: A9 19     LDA #$19
C - - - - - 0x0349D2 0D:89C2: 9D D4 06  STA ram_06D4,X
C - - - - - 0x0349D5 0D:89C5: A9 00     LDA #$00
C - - - - - 0x0349D7 0D:89C7: 9D DA 06  STA ram_06DA,X
C - - - - - 0x0349DA 0D:89CA: 4C F9 EC  JMP loc_0x03ED09
bra_89CD:
C - - - - - 0x0349DD 0D:89CD: BC DE 06  LDY ram_06DE,X
C - - - - - 0x0349E0 0D:89D0: B9 7A 06  LDA ram_067A,Y
C - - - - - 0x0349E3 0D:89D3: D0 08     BNE bra_89DD
C - - - - - 0x0349E5 0D:89D5: A5 11     LDA ram_0011
C - - - - - 0x0349E7 0D:89D7: C9 08     CMP #$08
C - - - - - 0x0349E9 0D:89D9: D0 02     BNE bra_89DD
C - - - - - 0x0349EB 0D:89DB: F0 BD     BEQ bra_899A
bra_89DD:
C - - - - - 0x0349ED 0D:89DD: BC DE 06  LDY ram_06DE,X
C - - - - - 0x0349F0 0D:89E0: B9 10 06  LDA ram_0610,Y
C - - - - - 0x0349F3 0D:89E3: D0 B5     BNE bra_899A
C - - - - - 0x0349F5 0D:89E5: AD F8 06  LDA ram_06F8
C - - - - - 0x0349F8 0D:89E8: 10 B0     BPL bra_899A
C - - - - - 0x0349FA 0D:89EA: BD 20 05  LDA ram_0520,X
C - - - - - 0x0349FD 0D:89ED: C9 03     CMP #$03
C - - - - - 0x0349FF 0D:89EF: F0 A9     BEQ bra_899A
C - - - - - 0x034A01 0D:89F1: 20 2F EE  JSR sub_0x03EE3F
C - - - - - 0x034A04 0D:89F4: 90 A4     BCC bra_899A
C - - - - - 0x034A06 0D:89F6: DE DA 06  DEC ram_06DA,X
C - - - - - 0x034A09 0D:89F9: D0 9F     BNE bra_899A
bra_89FB:
loc_89FB:
C D 0 - - - 0x034A0B 0D:89FB: A9 00     LDA #$00
C - - - - - 0x034A0D 0D:89FD: 9D D2 06  STA ram_06D2,X
C - - - - - 0x034A10 0D:8A00: 9D C4 06  STA ram_06C4,X
C - - - - - 0x034A13 0D:8A03: 9D C6 06  STA ram_06C6,X
C - - - - - 0x034A16 0D:8A06: 9D DA 06  STA ram_06DA,X
C - - - - - 0x034A19 0D:8A09: A9 C0     LDA #$C0
C - - - - - 0x034A1B 0D:8A0B: 9D E0 06  STA ram_06E0,X
bra_8A0E:
loc_8A0E:
C D 0 - - - 0x034A1E 0D:8A0E: BD C6 06  LDA ram_06C6,X
C - - - - - 0x034A21 0D:8A11: 1D C8 06  ORA ram_06C8,X
C - - - - - 0x034A24 0D:8A14: 95 91     STA ram_0091,X
C - - - - - 0x034A26 0D:8A16: 9D C6 06  STA ram_06C6,X
C - - - - - 0x034A29 0D:8A19: 4C BF A1  JMP loc_A1BF



ofs_8A23_09:
- - - - - - 0x034A33 0D:8A23: BD 10 06  LDA ram_0610,X
- - - - - - 0x034A36 0D:8A26: D0 E6     BNE bra_8A0E
- - - - - - 0x034A38 0D:8A28: F0 D1     BEQ bra_89FB



ofs_8A2A_01:
C - - J - - 0x034A3A 0D:8A2A: 20 E8 EC  JSR sub_0x03ECF8
C - - - - - 0x034A3D 0D:8A2D: 90 CC     BCC bra_89FB
C - - - - - 0x034A3F 0D:8A2F: 20 8E EC  JSR sub_0x03EC9E
C - - - - - 0x034A42 0D:8A32: 90 C7     BCC bra_89FB
C - - - - - 0x034A44 0D:8A34: A5 13     LDA ram_0013
C - - - - - 0x034A46 0D:8A36: C9 03     CMP #$03
C - - - - - 0x034A48 0D:8A38: F0 C1     BEQ bra_89FB
C - - - - - 0x034A4A 0D:8A3A: D0 D2     BNE bra_8A0E



ofs_8A3C_02:
C - - J - - 0x034A4C 0D:8A3C: A5 11     LDA ram_0011
C - - - - - 0x034A4E 0D:8A3E: C9 05     CMP #$05
C - - - - - 0x034A50 0D:8A40: F0 B9     BEQ bra_89FB
C - - - - - 0x034A52 0D:8A42: BD 20 05  LDA ram_0520,X
C - - - - - 0x034A55 0D:8A45: C9 03     CMP #$03
C - - - - - 0x034A57 0D:8A47: F0 B2     BEQ bra_89FB
C - - - - - 0x034A59 0D:8A49: 20 E8 EC  JSR sub_0x03ECF8
C - - - - - 0x034A5C 0D:8A4C: 90 AD     BCC bra_89FB
C - - - - - 0x034A5E 0D:8A4E: BD C6 06  LDA ram_06C6,X
C - - - - - 0x034A61 0D:8A51: 1D C8 06  ORA ram_06C8,X
C - - - - - 0x034A64 0D:8A54: 29 03     AND #$03
C - - - - - 0x034A66 0D:8A56: D0 06     BNE bra_8A5E
C - - - - - 0x034A68 0D:8A58: 20 7B EC  JSR sub_0x03EC8B
C - - - - - 0x034A6B 0D:8A5B: 9D C6 06  STA ram_06C6,X
bra_8A5E:
C - - - - - 0x034A6E 0D:8A5E: A5 13     LDA ram_0013
C - - - - - 0x034A70 0D:8A60: C9 01     CMP #$01
C - - - - - 0x034A72 0D:8A62: B0 AA     BCS bra_8A0E
C - - - - - 0x034A74 0D:8A64: F0 95     BEQ bra_89FB



ofs_8A66_0B:
C - - J - - 0x034A76 0D:8A66: BD C6 06  LDA ram_06C6,X
C - - - - - 0x034A79 0D:8A69: 29 0C     AND #$0C
C - - - - - 0x034A7B 0D:8A6B: D0 8E     BNE bra_89FB
C - - - - - 0x034A7D 0D:8A6D: A5 13     LDA ram_0013
C - - - - - 0x034A7F 0D:8A6F: C9 03     CMP #$03
C - - - - - 0x034A81 0D:8A71: 30 88     BMI bra_89FB
ofs_8A73_03:
C - - J - - 0x034A83 0D:8A73: BC DE 06  LDY ram_06DE,X
C - - - - - 0x034A86 0D:8A76: B9 30 05  LDA ram_0530,Y
C - - - - - 0x034A89 0D:8A79: C9 05     CMP #$05
C - - - - - 0x034A8B 0D:8A7B: D0 03     BNE bra_8A80
- - - - - - 0x034A8D 0D:8A7D: 4C FB 89  JMP loc_89FB
bra_8A80:
C - - - - - 0x034A90 0D:8A80: BD 20 05  LDA ram_0520,X
C - - - - - 0x034A93 0D:8A83: C9 03     CMP #$03
C - - - - - 0x034A95 0D:8A85: D0 03     BNE bra_8A8A
C - - - - - 0x034A97 0D:8A87: 4C FB 89  JMP loc_89FB
bra_8A8A:
C - - - - - 0x034A9A 0D:8A8A: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x034A9D 0D:8A8D: C9 09     CMP #$09
C - - - - - 0x034A9F 0D:8A8F: B0 03     BCS bra_8A94
C - - - - - 0x034AA1 0D:8A91: 4C FB 89  JMP loc_89FB
bra_8A94:
C - - - - - 0x034AA4 0D:8A94: A9 00     LDA #$00
C - - - - - 0x034AA6 0D:8A96: 9D C6 06  STA ram_06C6,X
C - - - - - 0x034AA9 0D:8A99: 20 7B EC  JSR sub_0x03EC8B
C - - - - - 0x034AAC 0D:8A9C: 9D C8 06  STA ram_06C8,X
C - - - - - 0x034AAF 0D:8A9F: A5 13     LDA ram_0013
C - - - - - 0x034AB1 0D:8AA1: F0 03     BEQ bra_8AA6
C - - - - - 0x034AB3 0D:8AA3: 4C 0E 8A  JMP loc_8A0E
bra_8AA6:
- - - - - - 0x034AB6 0D:8AA6: 4C FB 89  JMP loc_89FB
bra_8AA9:
C - - - - - 0x034AB9 0D:8AA9: 4C 96 ED  JMP loc_0x03EDA6



ofs_8AAC_06:
C - - J - - 0x034ABC 0D:8AAC: A5 13     LDA ram_0013
C - - - - - 0x034ABE 0D:8AAE: D0 03     BNE bra_8AB3
C - - - - - 0x034AC0 0D:8AB0: 4C FB 89  JMP loc_89FB
bra_8AB3:
C - - - - - 0x034AC3 0D:8AB3: 20 E8 EC  JSR sub_0x03ECF8
C - - - - - 0x034AC6 0D:8AB6: 90 F1     BCC bra_8AA9
C - - - - - 0x034AC8 0D:8AB8: DE E0 06  DEC ram_06E0,X
C - - - - - 0x034ACB 0D:8ABB: D0 03     BNE bra_8AC0
C - - - - - 0x034ACD 0D:8ABD: 4C 96 ED  JMP loc_0x03EDA6
bra_8AC0:
C - - - - - 0x034AD0 0D:8AC0: 20 14 EE  JSR sub_0x03EE24
C - - - - - 0x034AD3 0D:8AC3: B0 11     BCS bra_8AD6
C - - - - - 0x034AD5 0D:8AC5: AD D8 06  LDA ram_06D8
C - - - - - 0x034AD8 0D:8AC8: 85 0F     STA ram_000F
C - - - - - 0x034ADA 0D:8ACA: AD D9 06  LDA ram_06D9
C - - - - - 0x034ADD 0D:8ACD: 85 0E     STA ram_000E
C - - - - - 0x034ADF 0D:8ACF: A9 06     LDA #$06
C - - - - - 0x034AE1 0D:8AD1: 20 3E EE  JSR sub_0x03EE4E
C - - - - - 0x034AE4 0D:8AD4: B0 03     BCS bra_8AD9
bra_8AD6:
C - - - - - 0x034AE6 0D:8AD6: 4C FB 89  JMP loc_89FB
bra_8AD9:
C - - - - - 0x034AE9 0D:8AD9: 4C 0E 8A  JMP loc_8A0E



ofs_8ADC_0C:
C - - J - - 0x034AEC 0D:8ADC: BD C6 06  LDA ram_06C6,X
C - - - - - 0x034AEF 0D:8ADF: 29 C3     AND #$C3
C - - - - - 0x034AF1 0D:8AE1: 9D C6 06  STA ram_06C6,X
C - - - - - 0x034AF4 0D:8AE4: 9D C8 06  STA ram_06C8,X
C - - - - - 0x034AF7 0D:8AE7: BD 10 04  LDA ram_0410,X
C - - - - - 0x034AFA 0D:8AEA: C9 B0     CMP #$B0
C - - - - - 0x034AFC 0D:8AEC: D0 EB     BNE bra_8AD9
C - - - - - 0x034AFE 0D:8AEE: BD 20 05  LDA ram_0520,X
C - - - - - 0x034B01 0D:8AF1: C9 00     CMP #$00
C - - - - - 0x034B03 0D:8AF3: D0 E4     BNE bra_8AD9
C - - - - - 0x034B05 0D:8AF5: BD C6 06  LDA ram_06C6,X
C - - - - - 0x034B08 0D:8AF8: 09 80     ORA #$80
C - - - - - 0x034B0A 0D:8AFA: 95 91     STA ram_0091,X
C - - - - - 0x034B0C 0D:8AFC: 9D C6 06  STA ram_06C6,X
C - - - - - 0x034B0F 0D:8AFF: A9 80     LDA #$80
C - - - - - 0x034B11 0D:8B01: 4C 95 88  JMP loc_8895



tbl_8B04:
- D 0 - - - 0x034B14 0D:8B04: 30        .byte $30   ; 00
- D 0 - - - 0x034B15 0D:8B05: 30        .byte $30   ; 01
- - - - - - 0x034B16 0D:8B06: 30        .byte $30   ; 02
- - - - - - 0x034B17 0D:8B07: 30        .byte $30   ; 03
- - - - - - 0x034B18 0D:8B08: 38        .byte $38   ; 04
- - - - - - 0x034B19 0D:8B09: 30        .byte $30   ; 05
- - - - - - 0x034B1A 0D:8B0A: 38        .byte $38   ; 06



tbl_8B0B:
- - - - - - 0x034B1B 0D:8B0B: AB 8B     .word _off0118BAB_00
- D 0 - - - 0x034B1D 0D:8B0D: 1E 8C     .word _off0118C1E_01
- D 0 - - - 0x034B1F 0D:8B0F: 24 8C     .word _off0118C24_02
- D 0 - - - 0x034B21 0D:8B11: 3F 8C     .word _off0118C3F_03
- D 0 - - - 0x034B23 0D:8B13: 32 8C     .word _off0118C32_04
- D 0 - - - 0x034B25 0D:8B15: 0D 8C     .word _off0118C0D_05
- D 0 - - - 0x034B27 0D:8B17: 14 8C     .word _off0118C14_06
- D 0 - - - 0x034B29 0D:8B19: 4E 8C     .word _off0118C4E_07
- D 0 - - - 0x034B2B 0D:8B1B: 3A 8C     .word _off0118C3A_08
- D 0 - - - 0x034B2D 0D:8B1D: 6A 8C     .word _off0118C6A_09
- D 0 - - - 0x034B2F 0D:8B1F: 43 8C     .word _off0118C43_0A
- D 0 - - - 0x034B31 0D:8B21: 2B 8C     .word _off0118C2B_0B
- D 0 - - - 0x034B33 0D:8B23: 29 8C     .word _off0118C29_0C
- D 0 - - - 0x034B35 0D:8B25: 64 8C     .word _off0118C64_0D
- D 0 - - - 0x034B37 0D:8B27: 7B 8C     .word _off0118C7B_0E
- D 0 - - - 0x034B39 0D:8B29: 70 8C     .word _off0118C70_0F
- D 0 - - - 0x034B3B 0D:8B2B: AD 8B     .word _off0118BAD_10
- D 0 - - - 0x034B3D 0D:8B2D: AF 8B     .word _off0118BAF_11
- D 0 - - - 0x034B3F 0D:8B2F: B4 8B     .word _off0118BB4_12
- D 0 - - - 0x034B41 0D:8B31: B8 8B     .word _off0118BB8_13
- D 0 - - - 0x034B43 0D:8B33: BF 8B     .word _off0118BBF_14
- D 0 - - - 0x034B45 0D:8B35: C9 8B     .word _off0118BC9_15
- D 0 - - - 0x034B47 0D:8B37: D1 8B     .word _off0118BD1_16
- D 0 - - - 0x034B49 0D:8B39: E1 8B     .word _off0118BE1_17
- D 0 - - - 0x034B4B 0D:8B3B: E3 8B     .word _off0118BE3_18
- D 0 - - - 0x034B4D 0D:8B3D: EB 8B     .word _off0118BEB_19
- D 0 - - - 0x034B4F 0D:8B3F: F1 8B     .word _off0118BF1_1A
- D 0 - - - 0x034B51 0D:8B41: F8 8B     .word _off0118BF8_1B
- D 0 - - - 0x034B53 0D:8B43: 02 8C     .word _off0118C02_1C
- D 0 - - - 0x034B55 0D:8B45: 81 8C     .word _off0118C81_1D
- D 0 - - - 0x034B57 0D:8B47: 9B 8C     .word _off0118C9B_1E
- D 0 - - - 0x034B59 0D:8B49: A1 8C     .word _off0118CA1_1F
- D 0 - - - 0x034B5B 0D:8B4B: BB 8C     .word _off0118CBB_20
- D 0 - - - 0x034B5D 0D:8B4D: C0 8C     .word _off0118CC0_21
- D 0 - - - 0x034B5F 0D:8B4F: C8 8C     .word _off0118CC8_22
- D 0 - - - 0x034B61 0D:8B51: CD 8C     .word _off0118CCD_23
- D 0 - - - 0x034B63 0D:8B53: D3 8C     .word _off0118CD3_24
- D 0 - - - 0x034B65 0D:8B55: E3 8C     .word _off0118CE3_25
- D 0 - - - 0x034B67 0D:8B57: F2 8C     .word _off0118CF2_26
- D 0 - - - 0x034B69 0D:8B59: F7 8C     .word _off0118CF7_27
- D 0 - - - 0x034B6B 0D:8B5B: FC 8C     .word _off0118CFC_28
- D 0 - - - 0x034B6D 0D:8B5D: 04 8D     .word _off0118D04_29
- D 0 - - - 0x034B6F 0D:8B5F: 32 8D     .word _off0118D32_2A
- D 0 - - - 0x034B71 0D:8B61: 44 8D     .word _off0118D44_2B
- D 0 - - - 0x034B73 0D:8B63: 6A 8D     .word _off0118D6A_2C
- D 0 - - - 0x034B75 0D:8B65: 6F 8D     .word _off0118D6F_2D
- D 0 - - - 0x034B77 0D:8B67: D9 8B     .word _off0118BD9_2E
- D 0 - - - 0x034B79 0D:8B69: 3C 8D     .word _off0118D3C_2F
- D 0 - - - 0x034B7B 0D:8B6B: 8A 8C     .word _off0118C8A_30
- D 0 - - - 0x034B7D 0D:8B6D: 75 8D     .word _off0118D75_31
- D 0 - - - 0x034B7F 0D:8B6F: 60 8D     .word _off0118D60_32
- D 0 - - - 0x034B81 0D:8B71: DE 8C     .word _off0118CDE_33
- D 0 - - - 0x034B83 0D:8B73: 7B 8D     .word _off0118D7B_34
- D 0 - - - 0x034B85 0D:8B75: 8F 8D     .word _off0118D8F_35
- D 0 - - - 0x034B87 0D:8B77: 9E 8D     .word _off0118D9E_36
- D 0 - - - 0x034B89 0D:8B79: 58 8C     .word _off0118C58_37
- D 0 - - - 0x034B8B 0D:8B7B: 0D 8D     .word _off0118D0D_38
- - - - - - 0x034B8D 0D:8B7D: 18 8D     .word _off0118D18_39
- D 0 - - - 0x034B8F 0D:8B7F: 8F 8C     .word _off0118C8F_3A
- D 0 - - - 0x034B91 0D:8B81: 1E 8D     .word _off0118D1E_3B
- D 0 - - - 0x034B93 0D:8B83: A4 8D     .word _off0118DA4_3C
- D 0 - - - 0x034B95 0D:8B85: 51 8D     .word _off0118D51_3D
- D 0 - - - 0x034B97 0D:8B87: 9B 8B     .word _off0118B9B_3E
- D 0 - - - 0x034B99 0D:8B89: A8 8C     .word _off0118CA8_3F
- D 0 - - - 0x034B9B 0D:8B8B: 24 8D     .word _off0118D24_40
- D 0 - - - 0x034B9D 0D:8B8D: A7 8B     .word _off0118BA7_41
- D 0 - - - 0x034B9F 0D:8B8F: A8 8D     .word _off0118DA8_42
- D 0 - - - 0x034BA1 0D:8B91: B3 8C     .word _off0118CB3_43
- D 0 - - - 0x034BA3 0D:8B93: 97 8B     .word _off0118B97_44
- D 0 - - - 0x034BA5 0D:8B95: E8 8C     .word _off0118CE8_45



_off0118B97_44:
- D 0 - I - 0x034BA7 0D:8B97: DA        .byte $DA   ; 
- D 0 - I - 0x034BA8 0D:8B98: D7        .byte $D7   ; 
- D 0 - I - 0x034BA9 0D:8B99: 08        .byte $08   ; 
- D 0 - I - 0x034BAA 0D:8B9A: FF        .byte $FF   ; 



_off0118B9B_3E:
- D 0 - I - 0x034BAB 0D:8B9B: DA        .byte $DA   ; 
- D 0 - I - 0x034BAC 0D:8B9C: D9        .byte $D9   ; 
- D 0 - I - 0x034BAD 0D:8B9D: 00        .byte $00   ; 
- D 0 - I - 0x034BAE 0D:8B9E: 00        .byte $00   ; 
- D 0 - I - 0x034BAF 0D:8B9F: 00        .byte $00   ; 
- D 0 - I - 0x034BB0 0D:8BA0: 00        .byte $00   ; 
- D 0 - I - 0x034BB1 0D:8BA1: 00        .byte $00   ; 
- D 0 - I - 0x034BB2 0D:8BA2: 00        .byte $00   ; 
- D 0 - I - 0x034BB3 0D:8BA3: 00        .byte $00   ; 
- D 0 - I - 0x034BB4 0D:8BA4: 00        .byte $00   ; 
- D 0 - I - 0x034BB5 0D:8BA5: 00        .byte $00   ; 
- D 0 - I - 0x034BB6 0D:8BA6: FF        .byte $FF   ; 



_off0118BA7_41:
- D 0 - I - 0x034BB7 0D:8BA7: DA        .byte $DA   ; 
- D 0 - I - 0x034BB8 0D:8BA8: D9        .byte $D9   ; 
- D 0 - I - 0x034BB9 0D:8BA9: 00        .byte $00   ; 
- D 0 - I - 0x034BBA 0D:8BAA: FF        .byte $FF   ; 



_off0118BAB_00:
- - - - - - 0x034BBB 0D:8BAB: FF        .byte $FF   ; 
- - - - - - 0x034BBC 0D:8BAC: FF        .byte $FF   ; 



_off0118BAD_10:
- D 0 - I - 0x034BBD 0D:8BAD: 40        .byte $40   ; 
- D 0 - I - 0x034BBE 0D:8BAE: FF        .byte $FF   ; 



_off0118BAF_11:
- D 0 - I - 0x034BBF 0D:8BAF: FD        .byte $FD   ; 
- D 0 - I - 0x034BC0 0D:8BB0: 08        .byte $08   ; 
- D 0 - I - 0x034BC1 0D:8BB1: 04        .byte $04   ; 
- D 0 - I - 0x034BC2 0D:8BB2: 40        .byte $40   ; 
- D 0 - I - 0x034BC3 0D:8BB3: FF        .byte $FF   ; 



_off0118BB4_12:
- D 0 - I - 0x034BC4 0D:8BB4: FD        .byte $FD   ; 
- D 0 - I - 0x034BC5 0D:8BB5: 0F        .byte $0F   ; 
- D 0 - I - 0x034BC6 0D:8BB6: F0        .byte $F0   ; 
- D 0 - I - 0x034BC7 0D:8BB7: FF        .byte $FF   ; 



_off0118BB8_13:
- D 0 - I - 0x034BC8 0D:8BB8: DE        .byte $DE   ; 
- D 0 - I - 0x034BC9 0D:8BB9: D5        .byte $D5   ; 
- D 0 - I - 0x034BCA 0D:8BBA: FD        .byte $FD   ; 
- D 0 - I - 0x034BCB 0D:8BBB: 02        .byte $02   ; 
- D 0 - I - 0x034BCC 0D:8BBC: DE        .byte $DE   ; 
- D 0 - I - 0x034BCD 0D:8BBD: F7        .byte $F7   ; 
- D 0 - I - 0x034BCE 0D:8BBE: FF        .byte $FF   ; 



_off0118BBF_14:
- D 0 - I - 0x034BCF 0D:8BBF: DE        .byte $DE   ; 
- D 0 - I - 0x034BD0 0D:8BC0: D5        .byte $D5   ; 
- D 0 - I - 0x034BD1 0D:8BC1: FD        .byte $FD   ; 
- D 0 - I - 0x034BD2 0D:8BC2: 03        .byte $03   ; 
- D 0 - I - 0x034BD3 0D:8BC3: DE        .byte $DE   ; 
- D 0 - I - 0x034BD4 0D:8BC4: FD        .byte $FD   ; 
- D 0 - I - 0x034BD5 0D:8BC5: 08        .byte $08   ; 
- D 0 - I - 0x034BD6 0D:8BC6: 04        .byte $04   ; 
- D 0 - I - 0x034BD7 0D:8BC7: 40        .byte $40   ; 
- D 0 - I - 0x034BD8 0D:8BC8: FF        .byte $FF   ; 



_off0118BC9_15:
- D 0 - I - 0x034BD9 0D:8BC9: D7        .byte $D7   ; 
- D 0 - I - 0x034BDA 0D:8BCA: 04        .byte $04   ; 
- D 0 - I - 0x034BDB 0D:8BCB: DE        .byte $DE   ; 
- D 0 - I - 0x034BDC 0D:8BCC: D5        .byte $D5   ; 
- D 0 - I - 0x034BDD 0D:8BCD: FD        .byte $FD   ; 
- D 0 - I - 0x034BDE 0D:8BCE: 0F        .byte $0F   ; 
- D 0 - I - 0x034BDF 0D:8BCF: F0        .byte $F0   ; 
- D 0 - I - 0x034BE0 0D:8BD0: FF        .byte $FF   ; 



_off0118BD1_16:
- D 0 - I - 0x034BE1 0D:8BD1: DA        .byte $DA   ; 
- D 0 - I - 0x034BE2 0D:8BD2: 04        .byte $04   ; 
- D 0 - I - 0x034BE3 0D:8BD3: F2        .byte $F2   ; 
- D 0 - I - 0x034BE4 0D:8BD4: DE        .byte $DE   ; 
- D 0 - I - 0x034BE5 0D:8BD5: FD        .byte $FD   ; 
- D 0 - I - 0x034BE6 0D:8BD6: 05        .byte $05   ; 
- D 0 - I - 0x034BE7 0D:8BD7: DE        .byte $DE   ; 
- D 0 - I - 0x034BE8 0D:8BD8: FF        .byte $FF   ; 



_off0118BD9_2E:
- D 0 - I - 0x034BE9 0D:8BD9: DA        .byte $DA   ; 
- D 0 - I - 0x034BEA 0D:8BDA: 04        .byte $04   ; 
- D 0 - I - 0x034BEB 0D:8BDB: F2        .byte $F2   ; 
- D 0 - I - 0x034BEC 0D:8BDC: DE        .byte $DE   ; 
- D 0 - I - 0x034BED 0D:8BDD: FD        .byte $FD   ; 
- D 0 - I - 0x034BEE 0D:8BDE: 0C        .byte $0C   ; 
- D 0 - I - 0x034BEF 0D:8BDF: DE        .byte $DE   ; 
- D 0 - I - 0x034BF0 0D:8BE0: FF        .byte $FF   ; 



_off0118BE1_17:
- D 0 - I - 0x034BF1 0D:8BE1: 80        .byte $80   ; 
- D 0 - I - 0x034BF2 0D:8BE2: FF        .byte $FF   ; 



_off0118BE3_18:
- D 0 - I - 0x034BF3 0D:8BE3: FD        .byte $FD   ; 
- D 0 - I - 0x034BF4 0D:8BE4: 0F        .byte $0F   ; 
- D 0 - I - 0x034BF5 0D:8BE5: F0        .byte $F0   ; 
- D 0 - I - 0x034BF6 0D:8BE6: FD        .byte $FD   ; 
- D 0 - I - 0x034BF7 0D:8BE7: 0F        .byte $0F   ; 
- D 0 - I - 0x034BF8 0D:8BE8: F0        .byte $F0   ; 
- D 0 - I - 0x034BF9 0D:8BE9: 80        .byte $80   ; 
- D 0 - I - 0x034BFA 0D:8BEA: FF        .byte $FF   ; 



_off0118BEB_19:
- D 0 - I - 0x034BFB 0D:8BEB: FD        .byte $FD   ; 
- D 0 - I - 0x034BFC 0D:8BEC: 08        .byte $08   ; 
- D 0 - I - 0x034BFD 0D:8BED: F3        .byte $F3   ; 
- D 0 - I - 0x034BFE 0D:8BEE: 80        .byte $80   ; 
- D 0 - I - 0x034BFF 0D:8BEF: F3        .byte $F3   ; 
- D 0 - I - 0x034C00 0D:8BF0: FF        .byte $FF   ; 



_off0118BF1_1A:
- D 0 - I - 0x034C01 0D:8BF1: DE        .byte $DE   ; 
- D 0 - I - 0x034C02 0D:8BF2: D5        .byte $D5   ; 
- D 0 - I - 0x034C03 0D:8BF3: FD        .byte $FD   ; 
- D 0 - I - 0x034C04 0D:8BF4: 02        .byte $02   ; 
- D 0 - I - 0x034C05 0D:8BF5: DE        .byte $DE   ; 
- D 0 - I - 0x034C06 0D:8BF6: F6        .byte $F6   ; 
- D 0 - I - 0x034C07 0D:8BF7: FF        .byte $FF   ; 



_off0118BF8_1B:
- D 0 - I - 0x034C08 0D:8BF8: DE        .byte $DE   ; 
- D 0 - I - 0x034C09 0D:8BF9: D5        .byte $D5   ; 
- D 0 - I - 0x034C0A 0D:8BFA: FD        .byte $FD   ; 
- D 0 - I - 0x034C0B 0D:8BFB: 02        .byte $02   ; 
- D 0 - I - 0x034C0C 0D:8BFC: DE        .byte $DE   ; 
- D 0 - I - 0x034C0D 0D:8BFD: FD        .byte $FD   ; 
- D 0 - I - 0x034C0E 0D:8BFE: 08        .byte $08   ; 
- D 0 - I - 0x034C0F 0D:8BFF: 04        .byte $04   ; 
- D 0 - I - 0x034C10 0D:8C00: 80        .byte $80   ; 
- D 0 - I - 0x034C11 0D:8C01: FF        .byte $FF   ; 



_off0118C02_1C:
- D 0 - I - 0x034C12 0D:8C02: DE        .byte $DE   ; 
- D 0 - I - 0x034C13 0D:8C03: FD        .byte $FD   ; 
- D 0 - I - 0x034C14 0D:8C04: 0E        .byte $0E   ; 
- D 0 - I - 0x034C15 0D:8C05: D5        .byte $D5   ; 
- D 0 - I - 0x034C16 0D:8C06: FD        .byte $FD   ; 
- D 0 - I - 0x034C17 0D:8C07: 0B        .byte $0B   ; 
- D 0 - I - 0x034C18 0D:8C08: DE        .byte $DE   ; 
- D 0 - I - 0x034C19 0D:8C09: FD        .byte $FD   ; 
- D 0 - I - 0x034C1A 0D:8C0A: 0F        .byte $0F   ; 
- D 0 - I - 0x034C1B 0D:8C0B: F0        .byte $F0   ; 
- D 0 - I - 0x034C1C 0D:8C0C: FF        .byte $FF   ; 



_off0118C0D_05:
- D 0 - I - 0x034C1D 0D:8C0D: DA        .byte $DA   ; 
- D 0 - I - 0x034C1E 0D:8C0E: DF        .byte $DF   ; 
- D 0 - I - 0x034C1F 0D:8C0F: D5        .byte $D5   ; 
- D 0 - I - 0x034C20 0D:8C10: FD        .byte $FD   ; 
- D 0 - I - 0x034C21 0D:8C11: 01        .byte $01   ; 
- D 0 - I - 0x034C22 0D:8C12: DF        .byte $DF   ; 
- D 0 - I - 0x034C23 0D:8C13: FF        .byte $FF   ; 



_off0118C14_06:
- D 0 - I - 0x034C24 0D:8C14: DF        .byte $DF   ; 
- D 0 - I - 0x034C25 0D:8C15: D5        .byte $D5   ; 
- D 0 - I - 0x034C26 0D:8C16: FD        .byte $FD   ; 
- D 0 - I - 0x034C27 0D:8C17: 0F        .byte $0F   ; 
- D 0 - I - 0x034C28 0D:8C18: F1        .byte $F1   ; 
- D 0 - I - 0x034C29 0D:8C19: D9        .byte $D9   ; 
- D 0 - I - 0x034C2A 0D:8C1A: FD        .byte $FD   ; 
- D 0 - I - 0x034C2B 0D:8C1B: 07        .byte $07   ; 
- D 0 - I - 0x034C2C 0D:8C1C: F3        .byte $F3   ; 
- D 0 - I - 0x034C2D 0D:8C1D: FF        .byte $FF   ; 



_off0118C1E_01:
- D 0 - I - 0x034C2E 0D:8C1E: DA        .byte $DA   ; 
- D 0 - I - 0x034C2F 0D:8C1F: DF        .byte $DF   ; 
- D 0 - I - 0x034C30 0D:8C20: FD        .byte $FD   ; 
- D 0 - I - 0x034C31 0D:8C21: 0D        .byte $0D   ; 
- D 0 - I - 0x034C32 0D:8C22: DF        .byte $DF   ; 
- D 0 - I - 0x034C33 0D:8C23: FF        .byte $FF   ; 



_off0118C24_02:
- D 0 - I - 0x034C34 0D:8C24: DA        .byte $DA   ; 
- D 0 - I - 0x034C35 0D:8C25: FD        .byte $FD   ; 
- D 0 - I - 0x034C36 0D:8C26: 0D        .byte $0D   ; 
- D 0 - I - 0x034C37 0D:8C27: F3        .byte $F3   ; 
- D 0 - I - 0x034C38 0D:8C28: FF        .byte $FF   ; 



_off0118C29_0C:
- D 0 - I - 0x034C39 0D:8C29: DE        .byte $DE   ; 
- D 0 - I - 0x034C3A 0D:8C2A: D5        .byte $D5   ; 



_off0118C2B_0B:
- D 0 - I - 0x034C3B 0D:8C2B: FD        .byte $FD   ; 
- D 0 - I - 0x034C3C 0D:8C2C: 0F        .byte $0F   ; 
- D 0 - I - 0x034C3D 0D:8C2D: F0        .byte $F0   ; 
- D 0 - I - 0x034C3E 0D:8C2E: FD        .byte $FD   ; 
- D 0 - I - 0x034C3F 0D:8C2F: 07        .byte $07   ; 
- D 0 - I - 0x034C40 0D:8C30: 04        .byte $04   ; 
- D 0 - I - 0x034C41 0D:8C31: FF        .byte $FF   ; 



_off0118C32_04:
- D 0 - I - 0x034C42 0D:8C32: DA        .byte $DA   ; 
- D 0 - I - 0x034C43 0D:8C33: FD        .byte $FD   ; 
- D 0 - I - 0x034C44 0D:8C34: 0D        .byte $0D   ; 
- D 0 - I - 0x034C45 0D:8C35: DF        .byte $DF   ; 
- D 0 - I - 0x034C46 0D:8C36: FD        .byte $FD   ; 
- D 0 - I - 0x034C47 0D:8C37: 05        .byte $05   ; 
- D 0 - I - 0x034C48 0D:8C38: DF        .byte $DF   ; 
- D 0 - I - 0x034C49 0D:8C39: FF        .byte $FF   ; 



_off0118C3A_08:
- D 0 - I - 0x034C4A 0D:8C3A: DA        .byte $DA   ; 
- D 0 - I - 0x034C4B 0D:8C3B: FD        .byte $FD   ; 
- D 0 - I - 0x034C4C 0D:8C3C: 11        .byte $11   ; 
- D 0 - I - 0x034C4D 0D:8C3D: DF        .byte $DF   ; 
- D 0 - I - 0x034C4E 0D:8C3E: FF        .byte $FF   ; 



_off0118C3F_03:
- D 0 - I - 0x034C4F 0D:8C3F: DA        .byte $DA   ; 
- D 0 - I - 0x034C50 0D:8C40: D6        .byte $D6   ; 
- D 0 - I - 0x034C51 0D:8C41: 02        .byte $02   ; 
- D 0 - I - 0x034C52 0D:8C42: FF        .byte $FF   ; 



_off0118C43_0A:
- D 0 - I - 0x034C53 0D:8C43: D6        .byte $D6   ; 
- D 0 - I - 0x034C54 0D:8C44: 01        .byte $01   ; 
- D 0 - I - 0x034C55 0D:8C45: FF        .byte $FF   ; 



_off0118C4E_07:
- D 0 - I - 0x034C5E 0D:8C4E: DE        .byte $DE   ; 
- D 0 - I - 0x034C5F 0D:8C4F: D9        .byte $D9   ; 
- D 0 - I - 0x034C60 0D:8C50: FD        .byte $FD   ; 
- D 0 - I - 0x034C61 0D:8C51: 03        .byte $03   ; 
- D 0 - I - 0x034C62 0D:8C52: DE        .byte $DE   ; 
- D 0 - I - 0x034C63 0D:8C53: D4        .byte $D4   ; 
- D 0 - I - 0x034C64 0D:8C54: FD        .byte $FD   ; 
- D 0 - I - 0x034C65 0D:8C55: 16        .byte $16   ; 
- D 0 - I - 0x034C66 0D:8C56: DF        .byte $DF   ; 
- D 0 - I - 0x034C67 0D:8C57: FF        .byte $FF   ; 



_off0118C58_37:
- D 0 - I - 0x034C68 0D:8C58: DE        .byte $DE   ; 
- D 0 - I - 0x034C69 0D:8C59: D9        .byte $D9   ; 
- D 0 - I - 0x034C6A 0D:8C5A: FD        .byte $FD   ; 
- D 0 - I - 0x034C6B 0D:8C5B: 03        .byte $03   ; 
- D 0 - I - 0x034C6C 0D:8C5C: DE        .byte $DE   ; 
- D 0 - I - 0x034C6D 0D:8C5D: D4        .byte $D4   ; 
- D 0 - I - 0x034C6E 0D:8C5E: FD        .byte $FD   ; 
- D 0 - I - 0x034C6F 0D:8C5F: 16        .byte $16   ; 
- D 0 - I - 0x034C70 0D:8C60: DF        .byte $DF   ; 
- D 0 - I - 0x034C71 0D:8C61: DC        .byte $DC   ; 
- D 0 - I - 0x034C72 0D:8C62: 50        .byte $50   ; 
- D 0 - I - 0x034C73 0D:8C63: FF        .byte $FF   ; 



_off0118C64_0D:
- D 0 - I - 0x034C74 0D:8C64: DE        .byte $DE   ; 
- D 0 - I - 0x034C75 0D:8C65: D5        .byte $D5   ; 
- D 0 - I - 0x034C76 0D:8C66: FD        .byte $FD   ; 
- D 0 - I - 0x034C77 0D:8C67: 02        .byte $02   ; 
- D 0 - I - 0x034C78 0D:8C68: DE        .byte $DE   ; 
- D 0 - I - 0x034C79 0D:8C69: FF        .byte $FF   ; 



_off0118C6A_09:
- D 0 - I - 0x034C7A 0D:8C6A: DF        .byte $DF   ; 
- D 0 - I - 0x034C7B 0D:8C6B: D9        .byte $D9   ; 
- D 0 - I - 0x034C7C 0D:8C6C: FD        .byte $FD   ; 
- D 0 - I - 0x034C7D 0D:8C6D: 01        .byte $01   ; 
- D 0 - I - 0x034C7E 0D:8C6E: DF        .byte $DF   ; 
- D 0 - I - 0x034C7F 0D:8C6F: FF        .byte $FF   ; 



_off0118C70_0F:
- D 0 - I - 0x034C80 0D:8C70: F4        .byte $F4   ; 
- D 0 - I - 0x034C81 0D:8C71: D5        .byte $D5   ; 
- D 0 - I - 0x034C82 0D:8C72: FD        .byte $FD   ; 
- D 0 - I - 0x034C83 0D:8C73: 06        .byte $06   ; 
- D 0 - I - 0x034C84 0D:8C74: F4        .byte $F4   ; 
- D 0 - I - 0x034C85 0D:8C75: DA        .byte $DA   ; 
- D 0 - I - 0x034C86 0D:8C76: FD        .byte $FD   ; 
- D 0 - I - 0x034C87 0D:8C77: 04        .byte $04   ; 
- D 0 - I - 0x034C88 0D:8C78: 04        .byte $04   ; 
- D 0 - I - 0x034C89 0D:8C79: 40        .byte $40   ; 
- D 0 - I - 0x034C8A 0D:8C7A: FF        .byte $FF   ; 



_off0118C7B_0E:
- D 0 - I - 0x034C8B 0D:8C7B: F5        .byte $F5   ; 
- D 0 - I - 0x034C8C 0D:8C7C: D5        .byte $D5   ; 
- D 0 - I - 0x034C8D 0D:8C7D: FD        .byte $FD   ; 
- D 0 - I - 0x034C8E 0D:8C7E: 06        .byte $06   ; 
- D 0 - I - 0x034C8F 0D:8C7F: F5        .byte $F5   ; 
- D 0 - I - 0x034C90 0D:8C80: FF        .byte $FF   ; 



_off0118C81_1D:
- D 0 - I - 0x034C91 0D:8C81: DA        .byte $DA   ; 
- D 0 - I - 0x034C92 0D:8C82: FE        .byte $FE   ; 
- D 0 - I - 0x034C93 0D:8C83: F3        .byte $F3   ; 
- D 0 - I - 0x034C94 0D:8C84: D9        .byte $D9   ; 
- D 0 - I - 0x034C95 0D:8C85: FD        .byte $FD   ; 
- D 0 - I - 0x034C96 0D:8C86: 0F        .byte $0F   ; 
- D 0 - I - 0x034C97 0D:8C87: 08        .byte $08   ; 
- D 0 - I - 0x034C98 0D:8C88: 40        .byte $40   ; 
- D 0 - I - 0x034C99 0D:8C89: FF        .byte $FF   ; 



_off0118C8A_30:
- D 0 - I - 0x034C9A 0D:8C8A: DA        .byte $DA   ; 
- D 0 - I - 0x034C9B 0D:8C8B: DF        .byte $DF   ; 
- D 0 - I - 0x034C9C 0D:8C8C: FD        .byte $FD   ; 
- D 0 - I - 0x034C9D 0D:8C8D: 0D        .byte $0D   ; 
- D 0 - I - 0x034C9E 0D:8C8E: DF        .byte $DF   ; 



_off0118C8F_3A:
- D 0 - I - 0x034C9F 0D:8C8F: D7        .byte $D7   ; 
- D 0 - I - 0x034CA0 0D:8C90: 02        .byte $02   ; 
- D 0 - I - 0x034CA1 0D:8C91: DA        .byte $DA   ; 
- D 0 - I - 0x034CA2 0D:8C92: DE        .byte $DE   ; 
- D 0 - I - 0x034CA3 0D:8C93: F2        .byte $F2   ; 
- D 0 - I - 0x034CA4 0D:8C94: 04        .byte $04   ; 
- D 0 - I - 0x034CA5 0D:8C95: F3        .byte $F3   ; 
- D 0 - I - 0x034CA6 0D:8C96: DF        .byte $DF   ; 
- D 0 - I - 0x034CA7 0D:8C97: FD        .byte $FD   ; 
- D 0 - I - 0x034CA8 0D:8C98: 14        .byte $14   ; 
- D 0 - I - 0x034CA9 0D:8C99: DF        .byte $DF   ; 
- D 0 - I - 0x034CAA 0D:8C9A: FF        .byte $FF   ; 



_off0118C9B_1E:
- D 0 - I - 0x034CAB 0D:8C9B: FE        .byte $FE   ; 
- D 0 - I - 0x034CAC 0D:8C9C: 04        .byte $04   ; 
- D 0 - I - 0x034CAD 0D:8C9D: D9        .byte $D9   ; 
- D 0 - I - 0x034CAE 0D:8C9E: 08        .byte $08   ; 
- D 0 - I - 0x034CAF 0D:8C9F: 80        .byte $80   ; 
- D 0 - I - 0x034CB0 0D:8CA0: FF        .byte $FF   ; 



_off0118CA1_1F:
- D 0 - I - 0x034CB1 0D:8CA1: F3        .byte $F3   ; 
- D 0 - I - 0x034CB2 0D:8CA2: FE        .byte $FE   ; 
- D 0 - I - 0x034CB3 0D:8CA3: F3        .byte $F3   ; 
- D 0 - I - 0x034CB4 0D:8CA4: D9        .byte $D9   ; 
- D 0 - I - 0x034CB5 0D:8CA5: DE        .byte $DE   ; 
- D 0 - I - 0x034CB6 0D:8CA6: 40        .byte $40   ; 
- D 0 - I - 0x034CB7 0D:8CA7: FF        .byte $FF   ; 



_off0118CA8_3F:
- D 0 - I - 0x034CB8 0D:8CA8: DA        .byte $DA   ; 
- D 0 - I - 0x034CB9 0D:8CA9: DF        .byte $DF   ; 
- D 0 - I - 0x034CBA 0D:8CAA: FD        .byte $FD   ; 
- D 0 - I - 0x034CBB 0D:8CAB: 00        .byte $00   ; 
- D 0 - I - 0x034CBC 0D:8CAC: DF        .byte $DF   ; 
- D 0 - I - 0x034CBD 0D:8CAD: FE        .byte $FE   ; 
- D 0 - I - 0x034CBE 0D:8CAE: DF        .byte $DF   ; 
- D 0 - I - 0x034CBF 0D:8CAF: D9        .byte $D9   ; 
- D 0 - I - 0x034CC0 0D:8CB0: DE        .byte $DE   ; 
- D 0 - I - 0x034CC1 0D:8CB1: 40        .byte $40   ; 
- D 0 - I - 0x034CC2 0D:8CB2: FF        .byte $FF   ; 



_off0118CB3_43:
- D 0 - I - 0x034CC3 0D:8CB3: DF        .byte $DF   ; 
- D 0 - I - 0x034CC4 0D:8CB4: FD        .byte $FD   ; 
- D 0 - I - 0x034CC5 0D:8CB5: 07        .byte $07   ; 
- D 0 - I - 0x034CC6 0D:8CB6: DF        .byte $DF   ; 
- D 0 - I - 0x034CC7 0D:8CB7: D9        .byte $D9   ; 
- D 0 - I - 0x034CC8 0D:8CB8: DE        .byte $DE   ; 
- D 0 - I - 0x034CC9 0D:8CB9: 40        .byte $40   ; 
- D 0 - I - 0x034CCA 0D:8CBA: FF        .byte $FF   ; 



_off0118CBB_20:
- D 0 - I - 0x034CCB 0D:8CBB: 04        .byte $04   ; 
- D 0 - I - 0x034CCC 0D:8CBC: F3        .byte $F3   ; 
- D 0 - I - 0x034CCD 0D:8CBD: DF        .byte $DF   ; 
- D 0 - I - 0x034CCE 0D:8CBE: 80        .byte $80   ; 
- D 0 - I - 0x034CCF 0D:8CBF: FF        .byte $FF   ; 



_off0118CC0_21:
- D 0 - I - 0x034CD0 0D:8CC0: D7        .byte $D7   ; 
- D 0 - I - 0x034CD1 0D:8CC1: 06        .byte $06   ; 
- D 0 - I - 0x034CD2 0D:8CC2: DA        .byte $DA   ; 
- D 0 - I - 0x034CD3 0D:8CC3: FE        .byte $FE   ; 
- D 0 - I - 0x034CD4 0D:8CC4: F3        .byte $F3   ; 
- D 0 - I - 0x034CD5 0D:8CC5: D9        .byte $D9   ; 
- D 0 - I - 0x034CD6 0D:8CC6: F6        .byte $F6   ; 
- D 0 - I - 0x034CD7 0D:8CC7: FF        .byte $FF   ; 



_off0118CC8_22:
- D 0 - I - 0x034CD8 0D:8CC8: FE        .byte $FE   ; 
- D 0 - I - 0x034CD9 0D:8CC9: F3        .byte $F3   ; 
- D 0 - I - 0x034CDA 0D:8CCA: D9        .byte $D9   ; 
- D 0 - I - 0x034CDB 0D:8CCB: F7        .byte $F7   ; 
- D 0 - I - 0x034CDC 0D:8CCC: FF        .byte $FF   ; 



_off0118CCD_23:
- D 0 - I - 0x034CDD 0D:8CCD: D9        .byte $D9   ; 
- D 0 - I - 0x034CDE 0D:8CCE: 04        .byte $04   ; 
- D 0 - I - 0x034CDF 0D:8CCF: F2        .byte $F2   ; 
- D 0 - I - 0x034CE0 0D:8CD0: DE        .byte $DE   ; 
- D 0 - I - 0x034CE1 0D:8CD1: 80        .byte $80   ; 
- D 0 - I - 0x034CE2 0D:8CD2: FF        .byte $FF   ; 



_off0118CD3_24:
- D 0 - I - 0x034CE3 0D:8CD3: D7        .byte $D7   ; 
- D 0 - I - 0x034CE4 0D:8CD4: 09        .byte $09   ; 
- D 0 - I - 0x034CE5 0D:8CD5: D7        .byte $D7   ; 
- D 0 - I - 0x034CE6 0D:8CD6: 06        .byte $06   ; 
- D 0 - I - 0x034CE7 0D:8CD7: DD        .byte $DD   ; 
- D 0 - I - 0x034CE8 0D:8CD8: DD        .byte $DD   ; 
- D 0 - I - 0x034CE9 0D:8CD9: DD        .byte $DD   ; 
- D 0 - I - 0x034CEA 0D:8CDA: DD        .byte $DD   ; 
- D 0 - I - 0x034CEB 0D:8CDB: D7        .byte $D7   ; 
- D 0 - I - 0x034CEC 0D:8CDC: 07        .byte $07   ; 
- D 0 - I - 0x034CED 0D:8CDD: FF        .byte $FF   ; 



_off0118CDE_33:
- D 0 - I - 0x034CEE 0D:8CDE: DC        .byte $DC   ; 
- D 0 - I - 0x034CEF 0D:8CDF: 20        .byte $20   ; 
- D 0 - I - 0x034CF0 0D:8CE0: FD        .byte $FD   ; 
- D 0 - I - 0x034CF1 0D:8CE1: 0F        .byte $0F   ; 
- D 0 - I - 0x034CF2 0D:8CE2: D9        .byte $D9   ; 



_off0118CE3_25:
- D 0 - I - 0x034CF3 0D:8CE3: DE        .byte $DE   ; 
- D 0 - I - 0x034CF4 0D:8CE4: F2        .byte $F2   ; 
- D 0 - I - 0x034CF5 0D:8CE5: 04        .byte $04   ; 
- D 0 - I - 0x034CF6 0D:8CE6: 40        .byte $40   ; 
- D 0 - I - 0x034CF7 0D:8CE7: FF        .byte $FF   ; 



_off0118CE8_45:
- D 0 - I - 0x034CF8 0D:8CE8: DC        .byte $DC   ; 
- D 0 - I - 0x034CF9 0D:8CE9: 68        .byte $68   ; 
- D 0 - I - 0x034CFA 0D:8CEA: FD        .byte $FD   ; 
- D 0 - I - 0x034CFB 0D:8CEB: 0F        .byte $0F   ; 
- D 0 - I - 0x034CFC 0D:8CEC: D9        .byte $D9   ; 
- D 0 - I - 0x034CFD 0D:8CED: DE        .byte $DE   ; 
- D 0 - I - 0x034CFE 0D:8CEE: F2        .byte $F2   ; 
- D 0 - I - 0x034CFF 0D:8CEF: 04        .byte $04   ; 
- D 0 - I - 0x034D00 0D:8CF0: 40        .byte $40   ; 
- D 0 - I - 0x034D01 0D:8CF1: FF        .byte $FF   ; 



_off0118CF2_26:
- D 0 - I - 0x034D02 0D:8CF2: 80        .byte $80   ; 
- D 0 - I - 0x034D03 0D:8CF3: 80        .byte $80   ; 
- D 0 - I - 0x034D04 0D:8CF4: 80        .byte $80   ; 
- D 0 - I - 0x034D05 0D:8CF5: 80        .byte $80   ; 
- D 0 - I - 0x034D06 0D:8CF6: FF        .byte $FF   ; 



_off0118CF7_27:
- D 0 - I - 0x034D07 0D:8CF7: 40        .byte $40   ; 
- D 0 - I - 0x034D08 0D:8CF8: 40        .byte $40   ; 
- D 0 - I - 0x034D09 0D:8CF9: 80        .byte $80   ; 
- D 0 - I - 0x034D0A 0D:8CFA: 40        .byte $40   ; 
- D 0 - I - 0x034D0B 0D:8CFB: FF        .byte $FF   ; 



_off0118CFC_28:
- D 0 - I - 0x034D0C 0D:8CFC: DA        .byte $DA   ; 
- D 0 - I - 0x034D0D 0D:8CFD: FD        .byte $FD   ; 
- D 0 - I - 0x034D0E 0D:8CFE: 00        .byte $00   ; 
- D 0 - I - 0x034D0F 0D:8CFF: F3        .byte $F3   ; 
- D 0 - I - 0x034D10 0D:8D00: D9        .byte $D9   ; 
- D 0 - I - 0x034D11 0D:8D01: DE        .byte $DE   ; 
- D 0 - I - 0x034D12 0D:8D02: 40        .byte $40   ; 
- D 0 - I - 0x034D13 0D:8D03: FF        .byte $FF   ; 



_off0118D04_29:
- D 0 - I - 0x034D14 0D:8D04: FD        .byte $FD   ; 
- D 0 - I - 0x034D15 0D:8D05: 08        .byte $08   ; 
- D 0 - I - 0x034D16 0D:8D06: 04        .byte $04   ; 
- D 0 - I - 0x034D17 0D:8D07: 80        .byte $80   ; 
- D 0 - I - 0x034D18 0D:8D08: FD        .byte $FD   ; 
- D 0 - I - 0x034D19 0D:8D09: 08        .byte $08   ; 
- D 0 - I - 0x034D1A 0D:8D0A: 04        .byte $04   ; 
- D 0 - I - 0x034D1B 0D:8D0B: 80        .byte $80   ; 
- D 0 - I - 0x034D1C 0D:8D0C: FF        .byte $FF   ; 



_off0118D0D_38:
- D 0 - I - 0x034D1D 0D:8D0D: D7        .byte $D7   ; 
- D 0 - I - 0x034D1E 0D:8D0E: 04        .byte $04   ; 
- D 0 - I - 0x034D1F 0D:8D0F: DE        .byte $DE   ; 
- D 0 - I - 0x034D20 0D:8D10: D5        .byte $D5   ; 
- D 0 - I - 0x034D21 0D:8D11: F6        .byte $F6   ; 
- D 0 - I - 0x034D22 0D:8D12: FD        .byte $FD   ; 
- D 0 - I - 0x034D23 0D:8D13: 07        .byte $07   ; 
- D 0 - I - 0x034D24 0D:8D14: DA        .byte $DA   ; 
- D 0 - I - 0x034D25 0D:8D15: D8        .byte $D8   ; 
- D 0 - I - 0x034D26 0D:8D16: 06        .byte $06   ; 
- D 0 - I - 0x034D27 0D:8D17: FF        .byte $FF   ; 



_off0118D18_39:
- - - - - - 0x034D28 0D:8D18: DF        .byte $DF   ; 
- - - - - - 0x034D29 0D:8D19: D7        .byte $D7   ; 
- - - - - - 0x034D2A 0D:8D1A: 03        .byte $03   ; 
- - - - - - 0x034D2B 0D:8D1B: D8        .byte $D8   ; 
- - - - - - 0x034D2C 0D:8D1C: 39        .byte $39   ; 
- - - - - - 0x034D2D 0D:8D1D: FF        .byte $FF   ; 



_off0118D1E_3B:
- D 0 - I - 0x034D2E 0D:8D1E: FD        .byte $FD   ; 
- D 0 - I - 0x034D2F 0D:8D1F: 00        .byte $00   ; 
- D 0 - I - 0x034D30 0D:8D20: DF        .byte $DF   ; 
- D 0 - I - 0x034D31 0D:8D21: DE        .byte $DE   ; 
- D 0 - I - 0x034D32 0D:8D22: 40        .byte $40   ; 
- D 0 - I - 0x034D33 0D:8D23: FF        .byte $FF   ; 



_off0118D24_40:
- D 0 - I - 0x034D34 0D:8D24: DE        .byte $DE   ; 
- D 0 - I - 0x034D35 0D:8D25: D5        .byte $D5   ; 
- D 0 - I - 0x034D36 0D:8D26: FD        .byte $FD   ; 
- D 0 - I - 0x034D37 0D:8D27: 03        .byte $03   ; 
- D 0 - I - 0x034D38 0D:8D28: DE        .byte $DE   ; 
- D 0 - I - 0x034D39 0D:8D29: D4        .byte $D4   ; 
- D 0 - I - 0x034D3A 0D:8D2A: FD        .byte $FD   ; 
- D 0 - I - 0x034D3B 0D:8D2B: 16        .byte $16   ; 
- D 0 - I - 0x034D3C 0D:8D2C: DF        .byte $DF   ; 
- D 0 - I - 0x034D3D 0D:8D2D: D7        .byte $D7   ; 
- D 0 - I - 0x034D3E 0D:8D2E: 05        .byte $05   ; 
- D 0 - I - 0x034D3F 0D:8D2F: D8        .byte $D8   ; 
- D 0 - I - 0x034D40 0D:8D30: 07        .byte $07   ; 
- D 0 - I - 0x034D41 0D:8D31: FF        .byte $FF   ; 



_off0118D32_2A:
- D 0 - I - 0x034D42 0D:8D32: DA        .byte $DA   ; 
- D 0 - I - 0x034D43 0D:8D33: FD        .byte $FD   ; 
- D 0 - I - 0x034D44 0D:8D34: 08        .byte $08   ; 
- D 0 - I - 0x034D45 0D:8D35: 04        .byte $04   ; 
- D 0 - I - 0x034D46 0D:8D36: 80        .byte $80   ; 
- D 0 - I - 0x034D47 0D:8D37: DB        .byte $DB   ; 
- D 0 - I - 0x034D48 0D:8D38: D9        .byte $D9   ; 
- D 0 - I - 0x034D49 0D:8D39: D8        .byte $D8   ; 
- D 0 - I - 0x034D4A 0D:8D3A: 20        .byte $20   ; 
- D 0 - I - 0x034D4B 0D:8D3B: FF        .byte $FF   ; 



_off0118D3C_2F:
- D 0 - I - 0x034D4C 0D:8D3C: DA        .byte $DA   ; 
- D 0 - I - 0x034D4D 0D:8D3D: FD        .byte $FD   ; 
- D 0 - I - 0x034D4E 0D:8D3E: 00        .byte $00   ; 
- D 0 - I - 0x034D4F 0D:8D3F: F3        .byte $F3   ; 
- D 0 - I - 0x034D50 0D:8D40: DB        .byte $DB   ; 
- D 0 - I - 0x034D51 0D:8D41: D8        .byte $D8   ; 
- D 0 - I - 0x034D52 0D:8D42: 1A        .byte $1A   ; 
- D 0 - I - 0x034D53 0D:8D43: FF        .byte $FF   ; 



_off0118D44_2B:
- D 0 - I - 0x034D54 0D:8D44: DA        .byte $DA   ; 
- D 0 - I - 0x034D55 0D:8D45: FD        .byte $FD   ; 
- D 0 - I - 0x034D56 0D:8D46: 00        .byte $00   ; 
- D 0 - I - 0x034D57 0D:8D47: F3        .byte $F3   ; 
- D 0 - I - 0x034D58 0D:8D48: FE        .byte $FE   ; 
- D 0 - I - 0x034D59 0D:8D49: F3        .byte $F3   ; 
- D 0 - I - 0x034D5A 0D:8D4A: D9        .byte $D9   ; 
- D 0 - I - 0x034D5B 0D:8D4B: F6        .byte $F6   ; 
- D 0 - I - 0x034D5C 0D:8D4C: D7        .byte $D7   ; 
- D 0 - I - 0x034D5D 0D:8D4D: 05        .byte $05   ; 
- D 0 - I - 0x034D5E 0D:8D4E: D8        .byte $D8   ; 
- D 0 - I - 0x034D5F 0D:8D4F: 07        .byte $07   ; 
- D 0 - I - 0x034D60 0D:8D50: FF        .byte $FF   ; 



_off0118D51_3D:
- D 0 - I - 0x034D61 0D:8D51: DA        .byte $DA   ; 
- D 0 - I - 0x034D62 0D:8D52: FD        .byte $FD   ; 
- D 0 - I - 0x034D63 0D:8D53: 00        .byte $00   ; 
- D 0 - I - 0x034D64 0D:8D54: DF        .byte $DF   ; 
- D 0 - I - 0x034D65 0D:8D55: DE        .byte $DE   ; 
- D 0 - I - 0x034D66 0D:8D56: D5        .byte $D5   ; 
- D 0 - I - 0x034D67 0D:8D57: FD        .byte $FD   ; 
- D 0 - I - 0x034D68 0D:8D58: 0B        .byte $0B   ; 
- D 0 - I - 0x034D69 0D:8D59: DE        .byte $DE   ; 
- D 0 - I - 0x034D6A 0D:8D5A: F7        .byte $F7   ; 
- D 0 - I - 0x034D6B 0D:8D5B: D7        .byte $D7   ; 
- D 0 - I - 0x034D6C 0D:8D5C: 05        .byte $05   ; 
- D 0 - I - 0x034D6D 0D:8D5D: D8        .byte $D8   ; 
- D 0 - I - 0x034D6E 0D:8D5E: 07        .byte $07   ; 
- D 0 - I - 0x034D6F 0D:8D5F: FF        .byte $FF   ; 



_off0118D60_32:
- D 0 - I - 0x034D70 0D:8D60: D9        .byte $D9   ; 
- D 0 - I - 0x034D71 0D:8D61: 04        .byte $04   ; 
- D 0 - I - 0x034D72 0D:8D62: F2        .byte $F2   ; 
- D 0 - I - 0x034D73 0D:8D63: DE        .byte $DE   ; 
- D 0 - I - 0x034D74 0D:8D64: 80        .byte $80   ; 
- D 0 - I - 0x034D75 0D:8D65: D7        .byte $D7   ; 
- D 0 - I - 0x034D76 0D:8D66: 04        .byte $04   ; 
- D 0 - I - 0x034D77 0D:8D67: D8        .byte $D8   ; 
- D 0 - I - 0x034D78 0D:8D68: 07        .byte $07   ; 
- D 0 - I - 0x034D79 0D:8D69: FF        .byte $FF   ; 



_off0118D6A_2C:
- D 0 - I - 0x034D7A 0D:8D6A: 04        .byte $04   ; 
- D 0 - I - 0x034D7B 0D:8D6B: FD        .byte $FD   ; 
- D 0 - I - 0x034D7C 0D:8D6C: 10        .byte $10   ; 
- D 0 - I - 0x034D7D 0D:8D6D: 04        .byte $04   ; 
- D 0 - I - 0x034D7E 0D:8D6E: FF        .byte $FF   ; 



_off0118D6F_2D:
- D 0 - I - 0x034D7F 0D:8D6F: DC        .byte $DC   ; 
- D 0 - I - 0x034D80 0D:8D70: 48        .byte $48   ; 
- D 0 - I - 0x034D81 0D:8D71: FD        .byte $FD   ; 
- D 0 - I - 0x034D82 0D:8D72: 0F        .byte $0F   ; 
- D 0 - I - 0x034D83 0D:8D73: F0        .byte $F0   ; 
- D 0 - I - 0x034D84 0D:8D74: FF        .byte $FF   ; 



_off0118D75_31:
- D 0 - I - 0x034D85 0D:8D75: DC        .byte $DC   ; 
- D 0 - I - 0x034D86 0D:8D76: 48        .byte $48   ; 
- D 0 - I - 0x034D87 0D:8D77: FD        .byte $FD   ; 
- D 0 - I - 0x034D88 0D:8D78: 0F        .byte $0F   ; 
- D 0 - I - 0x034D89 0D:8D79: F0        .byte $F0   ; 
- D 0 - I - 0x034D8A 0D:8D7A: FF        .byte $FF   ; 



_off0118D7B_34:
- D 0 - I - 0x034D8B 0D:8D7B: DC        .byte $DC   ; 
- D 0 - I - 0x034D8C 0D:8D7C: 35        .byte $35   ; 
- D 0 - I - 0x034D8D 0D:8D7D: DE        .byte $DE   ; 
- D 0 - I - 0x034D8E 0D:8D7E: D5        .byte $D5   ; 
- D 0 - I - 0x034D8F 0D:8D7F: FD        .byte $FD   ; 
- D 0 - I - 0x034D90 0D:8D80: 0C        .byte $0C   ; 
- D 0 - I - 0x034D91 0D:8D81: DE        .byte $DE   ; 
- D 0 - I - 0x034D92 0D:8D82: FD        .byte $FD   ; 
- D 0 - I - 0x034D93 0D:8D83: 13        .byte $13   ; 
- D 0 - I - 0x034D94 0D:8D84: DE        .byte $DE   ; 
- D 0 - I - 0x034D95 0D:8D85: D5        .byte $D5   ; 
- D 0 - I - 0x034D96 0D:8D86: FD        .byte $FD   ; 
- D 0 - I - 0x034D97 0D:8D87: 0C        .byte $0C   ; 
- D 0 - I - 0x034D98 0D:8D88: F7        .byte $F7   ; 
- D 0 - I - 0x034D99 0D:8D89: FD        .byte $FD   ; 
- D 0 - I - 0x034D9A 0D:8D8A: 13        .byte $13   ; 
- D 0 - I - 0x034D9B 0D:8D8B: DE        .byte $DE   ; 
- D 0 - I - 0x034D9C 0D:8D8C: D8        .byte $D8   ; 
- D 0 - I - 0x034D9D 0D:8D8D: 35        .byte $35   ; 
- D 0 - I - 0x034D9E 0D:8D8E: FF        .byte $FF   ; 



_off0118D8F_35:
- D 0 - I - 0x034D9F 0D:8D8F: DE        .byte $DE   ; 
- D 0 - I - 0x034DA0 0D:8D90: D5        .byte $D5   ; 
- D 0 - I - 0x034DA1 0D:8D91: FD        .byte $FD   ; 
- D 0 - I - 0x034DA2 0D:8D92: 0C        .byte $0C   ; 
- D 0 - I - 0x034DA3 0D:8D93: F6        .byte $F6   ; 
- D 0 - I - 0x034DA4 0D:8D94: FD        .byte $FD   ; 
- D 0 - I - 0x034DA5 0D:8D95: 13        .byte $13   ; 
- D 0 - I - 0x034DA6 0D:8D96: DE        .byte $DE   ; 
- D 0 - I - 0x034DA7 0D:8D97: D7        .byte $D7   ; 
- D 0 - I - 0x034DA8 0D:8D98: 00        .byte $00   ; 
- D 0 - I - 0x034DA9 0D:8D99: D8        .byte $D8   ; 
- D 0 - I - 0x034DAA 0D:8D9A: 35        .byte $35   ; 
- D 0 - I - 0x034DAB 0D:8D9B: D8        .byte $D8   ; 
- D 0 - I - 0x034DAC 0D:8D9C: 37        .byte $37   ; 
- D 0 - I - 0x034DAD 0D:8D9D: FF        .byte $FF   ; 



_off0118D9E_36:
- D 0 - I - 0x034DAE 0D:8D9E: DA        .byte $DA   ; 
- D 0 - I - 0x034DAF 0D:8D9F: DF        .byte $DF   ; 
- D 0 - I - 0x034DB0 0D:8DA0: DE        .byte $DE   ; 
- D 0 - I - 0x034DB1 0D:8DA1: D7        .byte $D7   ; 
- D 0 - I - 0x034DB2 0D:8DA2: 01        .byte $01   ; 
- D 0 - I - 0x034DB3 0D:8DA3: FF        .byte $FF   ; 



_off0118DA4_3C:
- D 0 - I - 0x034DB4 0D:8DA4: DA        .byte $DA   ; 
- D 0 - I - 0x034DB5 0D:8DA5: D7        .byte $D7   ; 
- D 0 - I - 0x034DB6 0D:8DA6: 03        .byte $03   ; 
- D 0 - I - 0x034DB7 0D:8DA7: FF        .byte $FF   ; 



_off0118DA8_42:
- D 0 - I - 0x034DB8 0D:8DA8: DD        .byte $DD   ; 
- D 0 - I - 0x034DB9 0D:8DA9: DD        .byte $DD   ; 
- D 0 - I - 0x034DBA 0D:8DAA: DD        .byte $DD   ; 
- D 0 - I - 0x034DBB 0D:8DAB: DD        .byte $DD   ; 
- D 0 - I - 0x034DBC 0D:8DAC: D9        .byte $D9   ; 
- D 0 - I - 0x034DBD 0D:8DAD: FF        .byte $FF   ; 



tbl_8DB5:
- D 0 - - - 0x034DC5 0D:8DB5: 40        .byte $40   ; 
- D 0 - - - 0x034DC6 0D:8DB6: 20        .byte $20   ; 
- D 0 - - - 0x034DC7 0D:8DB7: 00        .byte $00   ; 
- D 0 - - - 0x034DC8 0D:8DB8: 00        .byte $00   ; 
- - - - - - 0x034DC9 0D:8DB9: 10        .byte $10   ; 
- D 0 - - - 0x034DCA 0D:8DBA: 08        .byte $08   ; 
- D 0 - - - 0x034DCB 0D:8DBB: 00        .byte $00   ; 
- - - - - - 0x034DCC 0D:8DBC: 00        .byte $00   ; 
- D 0 - - - 0x034DCD 0D:8DBD: 10        .byte $10   ; 
- D 0 - - - 0x034DCE 0D:8DBE: 08        .byte $08   ; 
- D 0 - - - 0x034DCF 0D:8DBF: 00        .byte $00   ; 
- - - - - - 0x034DD0 0D:8DC0: 00        .byte $00   ; 
- D 0 - - - 0x034DD1 0D:8DC1: 10        .byte $10   ; 
- D 0 - - - 0x034DD2 0D:8DC2: 08        .byte $08   ; 
- D 0 - - - 0x034DD3 0D:8DC3: 00        .byte $00   ; 
- - - - - - 0x034DD4 0D:8DC4: 00        .byte $00   ; 
- D 0 - - - 0x034DD5 0D:8DC5: 10        .byte $10   ; 
- D 0 - - - 0x034DD6 0D:8DC6: 08        .byte $08   ; 
- D 0 - - - 0x034DD7 0D:8DC7: 00        .byte $00   ; 
- - - - - - 0x034DD8 0D:8DC8: 00        .byte $00   ; 
- D 0 - - - 0x034DD9 0D:8DC9: 20        .byte $20   ; 
- D 0 - - - 0x034DDA 0D:8DCA: 10        .byte $10   ; 
- D 0 - - - 0x034DDB 0D:8DCB: 00        .byte $00   ; 
- - - - - - 0x034DDC 0D:8DCC: 00        .byte $00   ; 
- D 0 - - - 0x034DDD 0D:8DCD: 08        .byte $08   ; 
- D 0 - - - 0x034DDE 0D:8DCE: 04        .byte $04   ; 
- D 0 - - - 0x034DDF 0D:8DCF: 00        .byte $00   ; 



tbl_8DD0:
- - - - - - 0x034DE0 0D:8DD0: 14        .byte $14   ; 
- - - - - - 0x034DE1 0D:8DD1: 08        .byte $08   ; 
- - - - - - 0x034DE2 0D:8DD2: 03        .byte $03   ; 
- - - - - - 0x034DE3 0D:8DD3: 01        .byte $01   ; 
- - - - - - 0x034DE4 0D:8DD4: 14        .byte $14   ; 
- - - - - - 0x034DE5 0D:8DD5: 08        .byte $08   ; 
- - - - - - 0x034DE6 0D:8DD6: 03        .byte $03   ; 
- - - - - - 0x034DE7 0D:8DD7: 00        .byte $00   ; 
- - - - - - 0x034DE8 0D:8DD8: 14        .byte $14   ; 
- - - - - - 0x034DE9 0D:8DD9: 08        .byte $08   ; 
- - - - - - 0x034DEA 0D:8DDA: 03        .byte $03   ; 
- - - - - - 0x034DEB 0D:8DDB: 00        .byte $00   ; 
- D 0 - - - 0x034DEC 0D:8DDC: 14        .byte $14   ; 
- - - - - - 0x034DED 0D:8DDD: 08        .byte $08   ; 
- D 0 - - - 0x034DEE 0D:8DDE: 03        .byte $03   ; 
- - - - - - 0x034DEF 0D:8DDF: 00        .byte $00   ; 
- - - - - - 0x034DF0 0D:8DE0: 08        .byte $08   ; 
- D 0 - - - 0x034DF1 0D:8DE1: 04        .byte $04   ; 
- D 0 - - - 0x034DF2 0D:8DE2: 01        .byte $01   ; 
- - - - - - 0x034DF3 0D:8DE3: 00        .byte $00   ; 
- - - - - - 0x034DF4 0D:8DE4: 18        .byte $18   ; 
- - - - - - 0x034DF5 0D:8DE5: 0A        .byte $0A   ; 
- D 0 - - - 0x034DF6 0D:8DE6: 05        .byte $05   ; 
- - - - - - 0x034DF7 0D:8DE7: 00        .byte $00   ; 
- D 0 - - - 0x034DF8 0D:8DE8: 10        .byte $10   ; 
- D 0 - - - 0x034DF9 0D:8DE9: 05        .byte $05   ; 
- - - - - - 0x034DFA 0D:8DEA: 01        .byte $01   ; 



ofs_8DEB_00:
C - - J - - 0x034DFB 0D:8DEB: A5 11     LDA ram_0011
C - - - - - 0x034DFD 0D:8DED: C9 03     CMP #$03
C - - - - - 0x034DFF 0D:8DEF: D0 0A     BNE bra_8DFB
C - - - - - 0x034E01 0D:8DF1: 20 C6 ED  JSR sub_0x03EDD6
C - - - - - 0x034E04 0D:8DF4: C9 20     CMP #$20
C - - - - - 0x034E06 0D:8DF6: B0 03     BCS bra_8DFB
C - - - - - 0x034E08 0D:8DF8: A9 20     LDA #$20
C - - - - - 0x034E0A 0D:8DFA: 60        RTS
bra_8DFB:
C - - - - - 0x034E0B 0D:8DFB: A5 13     LDA ram_0013
C - - - - - 0x034E0D 0D:8DFD: 20 32 D0  JSR sub_0x03D042
- D 0 - I - 0x034E10 0D:8E00: 17 8E     .word ofs_8E17_00
- D 0 - I - 0x034E12 0D:8E02: C4 8E     .word ofs_8EC4_01
- D 0 - I - 0x034E14 0D:8E04: 94 8F     .word ofs_8F94_02
- D 0 - I - 0x034E16 0D:8E06: 1E 90     .word ofs_901E_03



bra_8E08:
loc_8E08:
C D 0 - - - 0x034E18 0D:8E08: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x034E1B 0D:8E0B: A5 11     LDA ram_0011
C - - - - - 0x034E1D 0D:8E0D: C9 07     CMP #$07
C - - - - - 0x034E1F 0D:8E0F: F0 03     BEQ bra_8E14
C - - - - - 0x034E21 0D:8E11: A9 04     LDA #$04
C - - - - - 0x034E23 0D:8E13: 60        RTS
bra_8E14:
C - - - - - 0x034E24 0D:8E14: A9 02     LDA #$02
C - - - - - 0x034E26 0D:8E16: 60        RTS



ofs_8E17_00:
C - - J - - 0x034E27 0D:8E17: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x034E2A 0D:8E1A: B0 03     BCS bra_8E1F
- - - - - - 0x034E2C 0D:8E1C: 4C BE 8E  JMP loc_8EBE
bra_8E1F:
C - - - - - 0x034E2F 0D:8E1F: 20 8E EC  JSR sub_0x03EC9E
C - - - - - 0x034E32 0D:8E22: B0 05     BCS bra_8E29
C - - - - - 0x034E34 0D:8E24: 20 5A ED  JSR sub_0x03ED6A
C - - - - - 0x034E37 0D:8E27: 90 2F     BCC bra_8E58
bra_8E29:
C - - - - - 0x034E39 0D:8E29: A5 11     LDA ram_0011
C - - - - - 0x034E3B 0D:8E2B: C9 08     CMP #$08
C - - - - - 0x034E3D 0D:8E2D: F0 D9     BEQ bra_8E08
C - - - - - 0x034E3F 0D:8E2F: BC DE 06  LDY ram_06DE,X
C - - - - - 0x034E42 0D:8E32: B9 10 06  LDA ram_0610,Y
C - - - - - 0x034E45 0D:8E35: D0 D1     BNE bra_8E08
C - - - - - 0x034E47 0D:8E37: A5 11     LDA ram_0011
C - - - - - 0x034E49 0D:8E39: C9 01     CMP #$01
C - - - - - 0x034E4B 0D:8E3B: D0 0B     BNE bra_8E48
C - - - - - 0x034E4D 0D:8E3D: B9 10 04  LDA ram_0410,Y
C - - - - - 0x034E50 0D:8E40: 30 06     BMI bra_8E48
C - - - - - 0x034E52 0D:8E42: A5 28     LDA ram_random_1
C - - - - - 0x034E54 0D:8E44: 30 31     BMI bra_8E77
C - - - - - 0x034E56 0D:8E46: 10 5A     BPL bra_8EA2
bra_8E48:
C - - - - - 0x034E58 0D:8E48: A5 11     LDA ram_0011
C - - - - - 0x034E5A 0D:8E4A: C9 04     CMP #$04
C - - - - - 0x034E5C 0D:8E4C: D0 2F     BNE bra_8E7D
C - - - - - 0x034E5E 0D:8E4E: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x034E61 0D:8E51: 20 CD EC  JSR sub_0x03ECDD_random_00_07
C - - - - - 0x034E64 0D:8E54: B9 B4 90  LDA tbl_90B4,Y
C - - - - - 0x034E67 0D:8E57: 60        RTS



bra_8E58:
loc_8E58:
C D 0 - - - 0x034E68 0D:8E58: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x034E6B 0D:8E5B: 20 CD EC  JSR sub_0x03ECDD_random_00_07
C - - - - - 0x034E6E 0D:8E5E: B9 AC 90  LDA tbl_90AC,Y
C - - - - - 0x034E71 0D:8E61: 60        RTS



loc_8E62:
C D 0 - - - 0x034E72 0D:8E62: 20 CD EC  JSR sub_0x03ECDD_random_00_07
C - - - - - 0x034E75 0D:8E65: B9 69 8E  LDA tbl_8E69,Y
C - - - - - 0x034E78 0D:8E68: 60        RTS



tbl_8E69:
- D 0 - - - 0x034E79 0D:8E69: 0C        .byte $0C   ; 00
- D 0 - - - 0x034E7A 0D:8E6A: 19        .byte $19   ; 01
- D 0 - - - 0x034E7B 0D:8E6B: 11        .byte $11   ; 02
- D 0 - - - 0x034E7C 0D:8E6C: 06        .byte $06   ; 03
- D 0 - - - 0x034E7D 0D:8E6D: 05        .byte $05   ; 04
- D 0 - - - 0x034E7E 0D:8E6E: 20        .byte $20   ; 05
- D 0 - - - 0x034E7F 0D:8E6F: 15        .byte $15   ; 06
- D 0 - - - 0x034E80 0D:8E70: 03        .byte $03   ; 07



bra_8E77:
C - - - - - 0x034E87 0D:8E77: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x034E8A 0D:8E7A: A9 10     LDA #$10
C - - - - - 0x034E8C 0D:8E7C: 60        RTS
bra_8E7D:
C - - - - - 0x034E8D 0D:8E7D: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x034E90 0D:8E80: C9 30     CMP #$30
C - - - - - 0x034E92 0D:8E82: 90 2B     BCC bra_8EAF
C - - - - - 0x034E94 0D:8E84: C9 D0     CMP #$D0
C - - - - - 0x034E96 0D:8E86: 90 24     BCC bra_8EAC
C - - - - - 0x034E98 0D:8E88: 20 04 F2  JSR sub_0x03F214_roll_rng
C - - - - - 0x034E9B 0D:8E8B: 29 01     AND #$01
C - - - - - 0x034E9D 0D:8E8D: D0 03     BNE bra_8E92
C - - - - - 0x034E9F 0D:8E8F: A9 20     LDA #$20
C - - - - - 0x034EA1 0D:8E91: 60        RTS
bra_8E92:
C - - - - - 0x034EA2 0D:8E92: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x034EA5 0D:8E95: F0 03     BEQ bra_8E9A
C - - - - - 0x034EA7 0D:8E97: A9 13     LDA #$13
C - - - - - 0x034EA9 0D:8E99: 60        RTS
bra_8E9A:
- - - - - - 0x034EAA 0D:8E9A: A9 10     LDA #$10
- - - - - - 0x034EAC 0D:8E9C: 60        RTS
bra_8E9D:
- - - - - - 0x034EAD 0D:8E9D: A9 40     LDA #$40
- - - - - - 0x034EAF 0D:8E9F: 4C 8F ED  JMP loc_0x03ED9F
bra_8EA2:
C - - - - - 0x034EB2 0D:8EA2: 20 5A ED  JSR sub_0x03ED6A
C - - - - - 0x034EB5 0D:8EA5: B0 F6     BCS bra_8E9D
C - - - - - 0x034EB7 0D:8EA7: A9 84     LDA #$84
C - - - - - 0x034EB9 0D:8EA9: 4C 8F ED  JMP loc_0x03ED9F
bra_8EAC:
C - - - - - 0x034EBC 0D:8EAC: A9 07     LDA #$07
C - - - - - 0x034EBE 0D:8EAE: 60        RTS
bra_8EAF:
loc_8EAF:
C D 0 - - - 0x034EBF 0D:8EAF: A5 28     LDA ram_random_1
C - - - - - 0x034EC1 0D:8EB1: 69 01     ADC #$01
C - - - - - 0x034EC3 0D:8EB3: 29 0F     AND #$0F
C - - - - - 0x034EC5 0D:8EB5: C9 0E     CMP #$0E
C - - - - - 0x034EC7 0D:8EB7: 90 02     BCC bra_8EBB
C - - - - - 0x034EC9 0D:8EB9: 49 0F     EOR #$0F
bra_8EBB:
C - - - - - 0x034ECB 0D:8EBB: 09 10     ORA #$10
C - - - - - 0x034ECD 0D:8EBD: 60        RTS
bra_8EBE:
loc_8EBE:
C - - - - - 0x034ECE 0D:8EBE: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x034ED1 0D:8EC1: A9 08     LDA #$08
C - - - - - 0x034ED3 0D:8EC3: 60        RTS



ofs_8EC4_01:
C - - J - - 0x034ED4 0D:8EC4: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x034ED7 0D:8EC7: 90 F5     BCC bra_8EBE
C - - - - - 0x034ED9 0D:8EC9: 20 5A ED  JSR sub_0x03ED6A
C - - - - - 0x034EDC 0D:8ECC: 90 03     BCC bra_8ED1
C - - - - - 0x034EDE 0D:8ECE: 4C 58 8E  JMP loc_8E58
bra_8ED1:
C - - - - - 0x034EE1 0D:8ED1: 20 8E EC  JSR sub_0x03EC9E
C - - - - - 0x034EE4 0D:8ED4: B0 09     BCS bra_8EDF
C - - - - - 0x034EE6 0D:8ED6: A5 11     LDA ram_0011
C - - - - - 0x034EE8 0D:8ED8: C9 08     CMP #$08
C - - - - - 0x034EEA 0D:8EDA: D0 03     BNE bra_8EDF
- - - - - - 0x034EEC 0D:8EDC: 4C 08 8E  JMP loc_8E08
bra_8EDF:
C - - - - - 0x034EEF 0D:8EDF: B9 10 06  LDA ram_0610,Y
C - - - - - 0x034EF2 0D:8EE2: D0 30     BNE bra_8F14
C - - - - - 0x034EF4 0D:8EE4: C9 01     CMP #$01
C - - - - - 0x034EF6 0D:8EE6: D0 03     BNE bra_8EEB
- - - - - - 0x034EF8 0D:8EE8: 4C 64 8F  JMP loc_8F64
bra_8EEB:
C - - - - - 0x034EFB 0D:8EEB: 20 E8 EC  JSR sub_0x03ECF8
C - - - - - 0x034EFE 0D:8EEE: 90 1E     BCC bra_8F0E
C - - - - - 0x034F00 0D:8EF0: A5 11     LDA ram_0011
C - - - - - 0x034F02 0D:8EF2: C9 07     CMP #$07
C - - - - - 0x034F04 0D:8EF4: D0 0A     BNE bra_8F00
C - - - - - 0x034F06 0D:8EF6: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x034F09 0D:8EF9: C9 04     CMP #$04
C - - - - - 0x034F0B 0D:8EFB: B0 03     BCS bra_8F00
C - - - - - 0x034F0D 0D:8EFD: A9 19     LDA #$19
C - - - - - 0x034F0F 0D:8EFF: 60        RTS
bra_8F00:
C - - - - - 0x034F10 0D:8F00: A5 28     LDA ram_random_1
C - - - - - 0x034F12 0D:8F02: 29 10     AND #$10
C - - - - - 0x034F14 0D:8F04: F0 31     BEQ bra_8F37
C - - - - - 0x034F16 0D:8F06: 20 FE ED  JSR sub_0x03EE0E
C - - - - - 0x034F19 0D:8F09: B0 2C     BCS bra_8F37
loc_8F0B:
C D 0 - - - 0x034F1B 0D:8F0B: A9 16     LDA #$16
C - - - - - 0x034F1D 0D:8F0D: 60        RTS
bra_8F0E:
C - - - - - 0x034F1E 0D:8F0E: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x034F21 0D:8F11: A9 34     LDA #$34
C - - - - - 0x034F23 0D:8F13: 60        RTS
bra_8F14:
C - - - - - 0x034F24 0D:8F14: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x034F27 0D:8F17: A5 11     LDA ram_0011
C - - - - - 0x034F29 0D:8F19: C9 01     CMP #$01
C - - - - - 0x034F2B 0D:8F1B: F0 0D     BEQ bra_8F2A
C - - - - - 0x034F2D 0D:8F1D: 20 C6 ED  JSR sub_0x03EDD6
C - - - - - 0x034F30 0D:8F20: C9 30     CMP #$30
C - - - - - 0x034F32 0D:8F22: B0 03     BCS bra_8F27
C - - - - - 0x034F34 0D:8F24: 4C 08 8E  JMP loc_8E08
bra_8F27:
C - - - - - 0x034F37 0D:8F27: A9 06     LDA #$06
C - - - - - 0x034F39 0D:8F29: 60        RTS
bra_8F2A:
C - - - - - 0x034F3A 0D:8F2A: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x034F3D 0D:8F2D: C9 30     CMP #$30
C - - - - - 0x034F3F 0D:8F2F: 90 03     BCC bra_8F34
C - - - - - 0x034F41 0D:8F31: 4C 08 8E  JMP loc_8E08
bra_8F34:
C - - - - - 0x034F44 0D:8F34: A9 19     LDA #$19
C - - - - - 0x034F46 0D:8F36: 60        RTS
bra_8F37:
C - - - - - 0x034F47 0D:8F37: A5 11     LDA ram_0011
C - - - - - 0x034F49 0D:8F39: C9 04     CMP #$04
C - - - - - 0x034F4B 0D:8F3B: D0 03     BNE bra_8F40
C - - - - - 0x034F4D 0D:8F3D: 4C AF 8E  JMP loc_8EAF
bra_8F40:
C - - - - - 0x034F50 0D:8F40: 4C 62 8E  JMP loc_8E62



loc_8F64:
- - - - - - 0x034F74 0D:8F64: 20 8E EC  JSR sub_0x03EC9E
- - - - - - 0x034F77 0D:8F67: B0 21     BCS bra_8F8A
- - - - - - 0x034F79 0D:8F69: B9 60 04  LDA ram_0460,Y
- - - - - - 0x034F7C 0D:8F6C: 30 0D     BMI bra_8F7B
- - - - - - 0x034F7E 0D:8F6E: B9 10 04  LDA ram_0410,Y
- - - - - - 0x034F81 0D:8F71: C9 80     CMP #$80
- - - - - - 0x034F83 0D:8F73: 90 06     BCC bra_8F7B
loc_8F75:
- - - - - - 0x034F85 0D:8F75: A9 19     LDA #$19
- - - - - - 0x034F87 0D:8F77: 9D E6 06  STA ram_06E6,X
- - - - - - 0x034F8A 0D:8F7A: 60        RTS
bra_8F7B:
- - - - - - 0x034F8B 0D:8F7B: A5 28     LDA ram_random_1
- - - - - - 0x034F8D 0D:8F7D: C9 20     CMP #$20
- - - - - - 0x034F8F 0D:8F7F: B0 03     BCS bra_8F84
- - - - - - 0x034F91 0D:8F81: A9 3E     LDA #$3E
- - - - - - 0x034F93 0D:8F83: 60        RTS
bra_8F84:
- - - - - - 0x034F94 0D:8F84: A9 10     LDA #$10
- - - - - - 0x034F96 0D:8F86: 9D E6 06  STA ram_06E6,X
- - - - - - 0x034F99 0D:8F89: 60        RTS
bra_8F8A:
- - - - - - 0x034F9A 0D:8F8A: B9 10 04  LDA ram_0410,Y
- - - - - - 0x034F9D 0D:8F8D: C9 98     CMP #$98
- - - - - - 0x034F9F 0D:8F8F: B0 EA     BCS bra_8F7B
- - - - - - 0x034FA1 0D:8F91: 4C 75 8F  JMP loc_8F75



ofs_8F94_02:
C - - J - - 0x034FA4 0D:8F94: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x034FA7 0D:8F97: B0 03     BCS bra_8F9C
- - - - - - 0x034FA9 0D:8F99: 4C BE 8E  JMP loc_8EBE
bra_8F9C:
C - - - - - 0x034FAC 0D:8F9C: A5 11     LDA ram_0011
C - - - - - 0x034FAE 0D:8F9E: C9 08     CMP #$08
C - - - - - 0x034FB0 0D:8FA0: F0 73     BEQ bra_9015
C - - - - - 0x034FB2 0D:8FA2: 20 FE ED  JSR sub_0x03EE0E
C - - - - - 0x034FB5 0D:8FA5: B0 1B     BCS bra_8FC2
C - - - - - 0x034FB7 0D:8FA7: A5 28     LDA ram_random_1
C - - - - - 0x034FB9 0D:8FA9: 29 10     AND #$10
C - - - - - 0x034FBB 0D:8FAB: F0 03     BEQ bra_8FB0
C - - - - - 0x034FBD 0D:8FAD: 4C 0B 8F  JMP loc_8F0B
bra_8FB0:
C - - - - - 0x034FC0 0D:8FB0: 20 A9 EE  JSR sub_0x03EEB9
C - - - - - 0x034FC3 0D:8FB3: A9 70     LDA #$70
C - - - - - 0x034FC5 0D:8FB5: 20 3E EE  JSR sub_0x03EE4E
C - - - - - 0x034FC8 0D:8FB8: B0 08     BCS bra_8FC2
C - - - - - 0x034FCA 0D:8FBA: 20 5E 90  JSR sub_905E
C - - - - - 0x034FCD 0D:8FBD: B0 03     BCS bra_8FC2
C - - - - - 0x034FCF 0D:8FBF: 4C 0B 8F  JMP loc_8F0B
bra_8FC2:
C - - - - - 0x034FD2 0D:8FC2: 20 14 EE  JSR sub_0x03EE24
C - - - - - 0x034FD5 0D:8FC5: B0 10     BCS bra_8FD7
C - - - - - 0x034FD7 0D:8FC7: A5 12     LDA ram_0012
C - - - - - 0x034FD9 0D:8FC9: D0 03     BNE bra_8FCE
C - - - - - 0x034FDB 0D:8FCB: 4C 55 90  JMP loc_9055
bra_8FCE:
C - - - - - 0x034FDE 0D:8FCE: A5 11     LDA ram_0011
C - - - - - 0x034FE0 0D:8FD0: C9 04     CMP #$04
C - - - - - 0x034FE2 0D:8FD2: D0 03     BNE bra_8FD7
C - - - - - 0x034FE4 0D:8FD4: 4C 6D 90  JMP loc_906D
bra_8FD7:
C - - - - - 0x034FE7 0D:8FD7: 20 5A ED  JSR sub_0x03ED6A
C - - - - - 0x034FEA 0D:8FDA: 90 03     BCC bra_8FDF
- - - - - - 0x034FEC 0D:8FDC: 4C 08 8E  JMP loc_8E08
bra_8FDF:
C - - - - - 0x034FEF 0D:8FDF: B9 10 06  LDA ram_0610,Y
C - - - - - 0x034FF2 0D:8FE2: D0 2E     BNE bra_9012
C - - - - - 0x034FF4 0D:8FE4: 20 FE ED  JSR sub_0x03EE0E
C - - - - - 0x034FF7 0D:8FE7: 90 32     BCC bra_901B
C - - - - - 0x034FF9 0D:8FE9: A5 12     LDA ram_0012
C - - - - - 0x034FFB 0D:8FEB: D0 12     BNE bra_8FFF
C - - - - - 0x034FFD 0D:8FED: 20 14 EE  JSR sub_0x03EE24
C - - - - - 0x035000 0D:8FF0: B0 0D     BCS bra_8FFF
- - - - - - 0x035002 0D:8FF2: 20 C6 ED  JSR sub_0x03EDD6
- - - - - - 0x035005 0D:8FF5: C9 3C     CMP #$3C
- - - - - - 0x035007 0D:8FF7: 90 06     BCC bra_8FFF
- - - - - - 0x035009 0D:8FF9: A5 11     LDA ram_0011
- - - - - - 0x03500B 0D:8FFB: C9 07     CMP #$07
- - - - - - 0x03500D 0D:8FFD: F0 56     BEQ bra_9055
bra_8FFF:
C - - - - - 0x03500F 0D:8FFF: C9 00     CMP #$00
C - - - - - 0x035011 0D:9001: D0 03     BNE bra_9006
- - - - - - 0x035013 0D:9003: 4C A3 90  JMP loc_90A3
bra_9006:
C - - - - - 0x035016 0D:9006: A5 28     LDA ram_random_1
C - - - - - 0x035018 0D:9008: 29 01     AND #$01
C - - - - - 0x03501A 0D:900A: D0 03     BNE bra_900F
C - - - - - 0x03501C 0D:900C: A9 1A     LDA #$1A
C - - - - - 0x03501E 0D:900E: 60        RTS
bra_900F:
C - - - - - 0x03501F 0D:900F: A9 05     LDA #$05
C - - - - - 0x035021 0D:9011: 60        RTS
bra_9012:
C - - - - - 0x035022 0D:9012: A9 01     LDA #$01
C - - - - - 0x035024 0D:9014: 60        RTS
bra_9015:
C - - - - - 0x035025 0D:9015: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x035028 0D:9018: A9 2F     LDA #$2F
C - - - - - 0x03502A 0D:901A: 60        RTS
bra_901B:
- - - - - - 0x03502B 0D:901B: A9 16     LDA #$16
- - - - - - 0x03502D 0D:901D: 60        RTS



ofs_901E_03:
C - - J - - 0x03502E 0D:901E: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x035031 0D:9021: B0 03     BCS bra_9026
- - - - - - 0x035033 0D:9023: 4C BE 8E  JMP loc_8EBE
bra_9026:
C - - - - - 0x035036 0D:9026: A5 11     LDA ram_0011
C - - - - - 0x035038 0D:9028: C9 08     CMP #$08
C - - - - - 0x03503A 0D:902A: F0 E9     BEQ bra_9015
C - - - - - 0x03503C 0D:902C: C9 04     CMP #$04
C - - - - - 0x03503E 0D:902E: F0 3D     BEQ bra_906D
C - - - - - 0x035040 0D:9030: 20 FE ED  JSR sub_0x03EE0E
C - - - - - 0x035043 0D:9033: B0 15     BCS bra_904A
C - - - - - 0x035045 0D:9035: A5 28     LDA ram_random_1
C - - - - - 0x035047 0D:9037: 29 20     AND #$20
C - - - - - 0x035049 0D:9039: D0 20     BNE bra_905B
C - - - - - 0x03504B 0D:903B: 20 A9 EE  JSR sub_0x03EEB9
C - - - - - 0x03504E 0D:903E: A9 30     LDA #$30
C - - - - - 0x035050 0D:9040: 20 3E EE  JSR sub_0x03EE4E
C - - - - - 0x035053 0D:9043: B0 05     BCS bra_904A
C - - - - - 0x035055 0D:9045: 20 5E 90  JSR sub_905E
C - - - - - 0x035058 0D:9048: 90 11     BCC bra_905B
bra_904A:
C - - - - - 0x03505A 0D:904A: 20 14 EE  JSR sub_0x03EE24
C - - - - - 0x03505D 0D:904D: B0 09     BCS bra_9058
C - - - - - 0x03505F 0D:904F: A5 12     LDA ram_0012
C - - - - - 0x035061 0D:9051: C9 03     CMP #$03
C - - - - - 0x035063 0D:9053: B0 03     BCS bra_9058
loc_9055:
bra_9055:
C D 0 - - - 0x035065 0D:9055: A9 0F     LDA #$0F
C - - - - - 0x035067 0D:9057: 60        RTS
bra_9058:
C - - - - - 0x035068 0D:9058: A9 0A     LDA #$0A
C - - - - - 0x03506A 0D:905A: 60        RTS
bra_905B:
C - - - - - 0x03506B 0D:905B: A9 16     LDA #$16
C - - - - - 0x03506D 0D:905D: 60        RTS



sub_905E:
C - - - - - 0x03506E 0D:905E: A5 11     LDA ram_0011
C - - - - - 0x035070 0D:9060: C9 08     CMP #$08
C - - - - - 0x035072 0D:9062: D0 02     BNE bra_9066
- - - - - - 0x035074 0D:9064: 38        SEC
- - - - - - 0x035075 0D:9065: 60        RTS
bra_9066:
loc_9066:
C - - - - - 0x035076 0D:9066: 18        CLC
C - - - - - 0x035077 0D:9067: 60        RTS
- - - - - - 0x035078 0D:9068: 4C 66 90  JMP loc_9066
- - - - - - 0x03507B 0D:906B: 38        SEC
- - - - - - 0x03507C 0D:906C: 60        RTS



bra_906D:
loc_906D:
C D 0 - - - 0x03507D 0D:906D: A5 28     LDA ram_random_1
C - - - - - 0x03507F 0D:906F: E6 28     INC ram_random_1
C - - - - - 0x035081 0D:9071: 29 07     AND #$07
C - - - - - 0x035083 0D:9073: A8        TAY
C - - - - - 0x035084 0D:9074: B9 7D 90  LDA tbl_907D,Y
C - - - - - 0x035087 0D:9077: DD E2 06  CMP ram_06E2,X
C - - - - - 0x03508A 0D:907A: F0 F1     BEQ bra_906D
C - - - - - 0x03508C 0D:907C: 60        RTS



tbl_907D:
- D 0 - - - 0x03508D 0D:907D: 13        .byte $13   ; 00
- D 0 - - - 0x03508E 0D:907E: 14        .byte $14   ; 01
- D 0 - - - 0x03508F 0D:907F: 15        .byte $15   ; 02
- D 0 - - - 0x035090 0D:9080: 1A        .byte $1A   ; 03
- D 0 - - - 0x035091 0D:9081: 1B        .byte $1B   ; 04
- D 0 - - - 0x035092 0D:9082: 1C        .byte $1C   ; 05
- D 0 - - - 0x035093 0D:9083: 13        .byte $13   ; 06
- D 0 - - - 0x035094 0D:9084: 1A        .byte $1A   ; 07



tbl_909F:
- - - - - - 0x0350AF 0D:909F: 0B        .byte $0B   ; 00
- - - - - - 0x0350B0 0D:90A0: 0C        .byte $0C   ; 01
- - - - - - 0x0350B1 0D:90A1: 05        .byte $05   ; 02
- - - - - - 0x0350B2 0D:90A2: 06        .byte $06   ; 03



loc_90A3:
- - - - - - 0x0350B3 0D:90A3: A5 28     LDA ram_random_1
- - - - - - 0x0350B5 0D:90A5: 29 03     AND #$03
- - - - - - 0x0350B7 0D:90A7: A8        TAY
- - - - - - 0x0350B8 0D:90A8: B9 9F 90  LDA tbl_909F,Y
- - - - - - 0x0350BB 0D:90AB: 60        RTS



tbl_90AC:
- D 0 - - - 0x0350BC 0D:90AC: 10        .byte $10   ; 00
- D 0 - - - 0x0350BD 0D:90AD: 17        .byte $17   ; 01
- D 0 - - - 0x0350BE 0D:90AE: 12        .byte $12   ; 02
- D 0 - - - 0x0350BF 0D:90AF: 20        .byte $20   ; 03
- D 0 - - - 0x0350C0 0D:90B0: 13        .byte $13   ; 04
- D 0 - - - 0x0350C1 0D:90B1: 37        .byte $37   ; 05
- D 0 - - - 0x0350C2 0D:90B2: 12        .byte $12   ; 06
- D 0 - - - 0x0350C3 0D:90B3: 20        .byte $20   ; 07



tbl_90B4:
- D 0 - - - 0x0350C4 0D:90B4: 17        .byte $17   ; 00
- D 0 - - - 0x0350C5 0D:90B5: 42        .byte $42   ; 01
- D 0 - - - 0x0350C6 0D:90B6: 1A        .byte $1A   ; 02
- D 0 - - - 0x0350C7 0D:90B7: 13        .byte $13   ; 03
- D 0 - - - 0x0350C8 0D:90B8: 07        .byte $07   ; 04
- D 0 - - - 0x0350C9 0D:90B9: 34        .byte $34   ; 05
- D 0 - - - 0x0350CA 0D:90BA: 20        .byte $20   ; 06
- D 0 - - - 0x0350CB 0D:90BB: 03        .byte $03   ; 07



ofs_90BC_01:
C - - J - - 0x0350CC 0D:90BC: A5 13     LDA ram_0013
C - - - - - 0x0350CE 0D:90BE: 20 32 D0  JSR sub_0x03D042
- D 0 - I - 0x0350D1 0D:90C1: C9 90     .word ofs_90C9_00
- D 0 - I - 0x0350D3 0D:90C3: 34 91     .word ofs_9134_01
- D 0 - I - 0x0350D5 0D:90C5: AB 91     .word ofs_91AB_02
- D 0 - I - 0x0350D7 0D:90C7: 31 92     .word ofs_9231_03



ofs_90C9_00:
C - - J - - 0x0350D9 0D:90C9: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x0350DC 0D:90CC: 90 60     BCC bra_912E
C - - - - - 0x0350DE 0D:90CE: 20 5A ED  JSR sub_0x03ED6A
C - - - - - 0x0350E1 0D:90D1: 90 07     BCC bra_90DA
C - - - - - 0x0350E3 0D:90D3: 20 CD EC  JSR sub_0x03ECDD_random_00_07
C - - - - - 0x0350E6 0D:90D6: B9 90 92  LDA tbl_9290,Y
C - - - - - 0x0350E9 0D:90D9: 60        RTS
bra_90DA:
C - - - - - 0x0350EA 0D:90DA: BC DE 06  LDY ram_06DE,X
C - - - - - 0x0350ED 0D:90DD: B9 10 06  LDA ram_0610,Y
C - - - - - 0x0350F0 0D:90E0: D0 7F     BNE bra_9161
C - - - - - 0x0350F2 0D:90E2: A5 11     LDA ram_0011
C - - - - - 0x0350F4 0D:90E4: C9 01     CMP #$01
C - - - - - 0x0350F6 0D:90E6: F0 28     BEQ bra_9110
C - - - - - 0x0350F8 0D:90E8: C9 08     CMP #$08
C - - - - - 0x0350FA 0D:90EA: F0 11     BEQ bra_90FD
C - - - - - 0x0350FC 0D:90EC: C9 04     CMP #$04
C - - - - - 0x0350FE 0D:90EE: D0 13     BNE bra_9103
C - - - - - 0x035100 0D:90F0: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x035103 0D:90F3: C9 60     CMP #$60
C - - - - - 0x035105 0D:90F5: B0 22     BCS bra_9119
C - - - - - 0x035107 0D:90F7: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x03510A 0D:90FA: A9 1F     LDA #$1F
C - - - - - 0x03510C 0D:90FC: 60        RTS
bra_90FD:
C - - - - - 0x03510D 0D:90FD: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x035110 0D:9100: A9 3F     LDA #$3F
C - - - - - 0x035112 0D:9102: 60        RTS
bra_9103:
C - - - - - 0x035113 0D:9103: A5 28     LDA ram_random_1
C - - - - - 0x035115 0D:9105: C9 40     CMP #$40
C - - - - - 0x035117 0D:9107: 90 13     BCC bra_911C
C - - - - - 0x035119 0D:9109: 20 C2 EC  JSR sub_0x03ECD2_random_00_03
C - - - - - 0x03511C 0D:910C: B9 98 92  LDA tbl_9298,Y
C - - - - - 0x03511F 0D:910F: 60        RTS
bra_9110:
C - - - - - 0x035120 0D:9110: A5 28     LDA ram_random_1
C - - - - - 0x035122 0D:9112: 29 03     AND #$03
C - - - - - 0x035124 0D:9114: A8        TAY
C - - - - - 0x035125 0D:9115: B9 9C 92  LDA tbl_929C,Y
C - - - - - 0x035128 0D:9118: 60        RTS
bra_9119:
C - - - - - 0x035129 0D:9119: A9 28     LDA #$28
C - - - - - 0x03512B 0D:911B: 60        RTS
bra_911C:
C - - - - - 0x03512C 0D:911C: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x03512F 0D:911F: A9 40     LDA #$40
C - - - - - 0x035131 0D:9121: 60        RTS
bra_9122:
C - - - - - 0x035132 0D:9122: A5 11     LDA ram_0011
C - - - - - 0x035134 0D:9124: C9 07     CMP #$07
C - - - - - 0x035136 0D:9126: F0 03     BEQ bra_912B
C - - - - - 0x035138 0D:9128: A9 3B     LDA #$3B
C - - - - - 0x03513A 0D:912A: 60        RTS
bra_912B:
- - - - - - 0x03513B 0D:912B: A9 28     LDA #$28
- - - - - - 0x03513D 0D:912D: 60        RTS



bra_912E:
loc_912E:
- - - - - - 0x03513E 0D:912E: 20 96 ED  JSR sub_0x03EDA6
- - - - - - 0x035141 0D:9131: A9 08     LDA #$08
- - - - - - 0x035143 0D:9133: 60        RTS



ofs_9134_01:
C - - J - - 0x035144 0D:9134: BD 20 05  LDA ram_0520,X
C - - - - - 0x035147 0D:9137: C9 01     CMP #$01
C - - - - - 0x035149 0D:9139: D0 0F     BNE bra_914A
C - - - - - 0x03514B 0D:913B: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x03514E 0D:913E: C9 10     CMP #$10
C - - - - - 0x035150 0D:9140: B0 08     BCS bra_914A
C - - - - - 0x035152 0D:9142: 20 8E EC  JSR sub_0x03EC9E
C - - - - - 0x035155 0D:9145: B0 03     BCS bra_914A
C - - - - - 0x035157 0D:9147: A9 13     LDA #$13
C - - - - - 0x035159 0D:9149: 60        RTS
bra_914A:
C - - - - - 0x03515A 0D:914A: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x03515D 0D:914D: 90 DF     BCC bra_912E
C - - - - - 0x03515F 0D:914F: A5 11     LDA ram_0011
C - - - - - 0x035161 0D:9151: C9 08     CMP #$08
C - - - - - 0x035163 0D:9153: F0 A8     BEQ bra_90FD
C - - - - - 0x035165 0D:9155: C9 07     CMP #$07
C - - - - - 0x035167 0D:9157: D0 17     BNE bra_9170
C - - - - - 0x035169 0D:9159: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03516C 0D:915C: B9 10 06  LDA ram_0610,Y
C - - - - - 0x03516F 0D:915F: F0 14     BEQ bra_9175
bra_9161:
C - - - - - 0x035171 0D:9161: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x035174 0D:9164: A5 11     LDA ram_0011
C - - - - - 0x035176 0D:9166: C9 07     CMP #$07
C - - - - - 0x035178 0D:9168: F0 03     BEQ bra_916D
C - - - - - 0x03517A 0D:916A: A9 04     LDA #$04
C - - - - - 0x03517C 0D:916C: 60        RTS
bra_916D:
C - - - - - 0x03517D 0D:916D: A9 02     LDA #$02
C - - - - - 0x03517F 0D:916F: 60        RTS
bra_9170:
C - - - - - 0x035180 0D:9170: B9 10 06  LDA ram_0610,Y
C - - - - - 0x035183 0D:9173: D0 EC     BNE bra_9161
bra_9175:
C - - - - - 0x035185 0D:9175: A5 11     LDA ram_0011
C - - - - - 0x035187 0D:9177: C9 01     CMP #$01
C - - - - - 0x035189 0D:9179: F0 95     BEQ bra_9110
C - - - - - 0x03518B 0D:917B: BD 20 05  LDA ram_0520,X
C - - - - - 0x03518E 0D:917E: C9 03     CMP #$03
C - - - - - 0x035190 0D:9180: F0 A0     BEQ bra_9122
C - - - - - 0x035192 0D:9182: A5 28     LDA ram_random_1
C - - - - - 0x035194 0D:9184: 29 08     AND #$08
C - - - - - 0x035196 0D:9186: D0 03     BNE bra_918B
C - - - - - 0x035198 0D:9188: A9 1F     LDA #$1F
C - - - - - 0x03519A 0D:918A: 60        RTS
bra_918B:
C - - - - - 0x03519B 0D:918B: A5 11     LDA ram_0011
C - - - - - 0x03519D 0D:918D: C9 04     CMP #$04
C - - - - - 0x03519F 0D:918F: D0 0C     BNE bra_919D
C - - - - - 0x0351A1 0D:9191: A5 28     LDA ram_random_1
C - - - - - 0x0351A3 0D:9193: 29 01     AND #$01
C - - - - - 0x0351A5 0D:9195: D0 03     BNE bra_919A
C - - - - - 0x0351A7 0D:9197: A9 26     LDA #$26
C - - - - - 0x0351A9 0D:9199: 60        RTS
bra_919A:
C - - - - - 0x0351AA 0D:919A: A9 1F     LDA #$1F
C - - - - - 0x0351AC 0D:919C: 60        RTS
bra_919D:
C - - - - - 0x0351AD 0D:919D: A5 28     LDA ram_random_1
C - - - - - 0x0351AF 0D:919F: 30 07     BMI bra_91A8
C - - - - - 0x0351B1 0D:91A1: 29 03     AND #$03
C - - - - - 0x0351B3 0D:91A3: A8        TAY
C - - - - - 0x0351B4 0D:91A4: B9 78 92  LDA tbl_9278,Y
C - - - - - 0x0351B7 0D:91A7: 60        RTS
bra_91A8:
C - - - - - 0x0351B8 0D:91A8: A9 27     LDA #$27
C - - - - - 0x0351BA 0D:91AA: 60        RTS



ofs_91AB_02:
C - - J - - 0x0351BB 0D:91AB: BD E2 06  LDA ram_06E2,X
C - - - - - 0x0351BE 0D:91AE: C9 06     CMP #$06
C - - - - - 0x0351C0 0D:91B0: D0 0A     BNE bra_91BC
C - - - - - 0x0351C2 0D:91B2: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x0351C5 0D:91B5: C9 10     CMP #$10
C - - - - - 0x0351C7 0D:91B7: B0 03     BCS bra_91BC
C - - - - - 0x0351C9 0D:91B9: A9 43     LDA #$43
C - - - - - 0x0351CB 0D:91BB: 60        RTS
bra_91BC:
C - - - - - 0x0351CC 0D:91BC: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x0351CF 0D:91BF: B0 03     BCS bra_91C4
- - - - - - 0x0351D1 0D:91C1: 4C 2E 91  JMP loc_912E
bra_91C4:
C - - - - - 0x0351D4 0D:91C4: A5 11     LDA ram_0011
C - - - - - 0x0351D6 0D:91C6: C9 04     CMP #$04
C - - - - - 0x0351D8 0D:91C8: D0 09     BNE bra_91D3
C - - - - - 0x0351DA 0D:91CA: A5 28     LDA ram_random_1
C - - - - - 0x0351DC 0D:91CC: 29 07     AND #$07
C - - - - - 0x0351DE 0D:91CE: A8        TAY
C - - - - - 0x0351DF 0D:91CF: B9 7C 92  LDA tbl_927C,Y
C - - - - - 0x0351E2 0D:91D2: 60        RTS
bra_91D3:
C - - - - - 0x0351E3 0D:91D3: C9 08     CMP #$08
C - - - - - 0x0351E5 0D:91D5: D0 15     BNE bra_91EC
C - - - - - 0x0351E7 0D:91D7: 20 FE ED  JSR sub_0x03EE0E
C - - - - - 0x0351EA 0D:91DA: B0 10     BCS bra_91EC
C - - - - - 0x0351EC 0D:91DC: 20 A9 EE  JSR sub_0x03EEB9
C - - - - - 0x0351EF 0D:91DF: A9 30     LDA #$30
C - - - - - 0x0351F1 0D:91E1: 20 3E EE  JSR sub_0x03EE4E
C - - - - - 0x0351F4 0D:91E4: B0 06     BCS bra_91EC
C - - - - - 0x0351F6 0D:91E6: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x0351F9 0D:91E9: A9 16     LDA #$16
C - - - - - 0x0351FB 0D:91EB: 60        RTS
bra_91EC:
C - - - - - 0x0351FC 0D:91EC: A5 11     LDA ram_0011
C - - - - - 0x0351FE 0D:91EE: C9 07     CMP #$07
C - - - - - 0x035200 0D:91F0: F0 1D     BEQ bra_920F
C - - - - - 0x035202 0D:91F2: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035205 0D:91F5: B9 10 06  LDA ram_0610,Y
C - - - - - 0x035208 0D:91F8: D0 34     BNE bra_922E
C - - - - - 0x03520A 0D:91FA: 20 14 EE  JSR sub_0x03EE24
C - - - - - 0x03520D 0D:91FD: B0 04     BCS bra_9203
C - - - - - 0x03520F 0D:91FF: A5 12     LDA ram_0012
C - - - - - 0x035211 0D:9201: F0 65     BEQ bra_9268
bra_9203:
C - - - - - 0x035213 0D:9203: 20 8E EC  JSR sub_0x03EC9E
C - - - - - 0x035216 0D:9206: 90 0E     BCC bra_9216
C - - - - - 0x035218 0D:9208: 20 CD EC  JSR sub_0x03ECDD_random_00_07
C - - - - - 0x03521B 0D:920B: B9 88 92  LDA tbl_9288,Y
C - - - - - 0x03521E 0D:920E: 60        RTS
bra_920F:
C - - - - - 0x03521F 0D:920F: 20 C2 EC  JSR sub_0x03ECD2_random_00_03
C - - - - - 0x035222 0D:9212: B9 19 92  LDA tbl_9219,Y
C - - - - - 0x035225 0D:9215: 60        RTS
bra_9216:
C - - - - - 0x035226 0D:9216: A9 06     LDA #$06
C - - - - - 0x035228 0D:9218: 60        RTS



tbl_9219:
- D 0 - - - 0x035229 0D:9219: 1A        .byte $1A   ; 00
- D 0 - - - 0x03522A 0D:921A: 13        .byte $13   ; 01
- D 0 - - - 0x03522B 0D:921B: 07        .byte $07   ; 02
- D 0 - - - 0x03522C 0D:921C: 1F        .byte $1F   ; 03



bra_922E:
C - - - - - 0x03523E 0D:922E: A9 06     LDA #$06
C - - - - - 0x035240 0D:9230: 60        RTS



ofs_9231_03:
C - - J - - 0x035241 0D:9231: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x035244 0D:9234: B0 03     BCS bra_9239
- - - - - - 0x035246 0D:9236: 4C 2E 91  JMP loc_912E
bra_9239:
C - - - - - 0x035249 0D:9239: 20 FE ED  JSR sub_0x03EE0E
C - - - - - 0x03524C 0D:923C: B0 1F     BCS bra_925D
C - - - - - 0x03524E 0D:923E: A5 28     LDA ram_random_1
C - - - - - 0x035250 0D:9240: 29 10     AND #$10
C - - - - - 0x035252 0D:9242: D0 16     BNE bra_925A
C - - - - - 0x035254 0D:9244: A5 11     LDA ram_0011
C - - - - - 0x035256 0D:9246: C9 04     CMP #$04
C - - - - - 0x035258 0D:9248: F0 10     BEQ bra_925A
C - - - - - 0x03525A 0D:924A: A5 11     LDA ram_0011
C - - - - - 0x03525C 0D:924C: C9 08     CMP #$08
C - - - - - 0x03525E 0D:924E: D0 0D     BNE bra_925D
C - - - - - 0x035260 0D:9250: 20 A9 EE  JSR sub_0x03EEB9
C - - - - - 0x035263 0D:9253: A9 30     LDA #$30
C - - - - - 0x035265 0D:9255: 20 3E EE  JSR sub_0x03EE4E
C - - - - - 0x035268 0D:9258: B0 03     BCS bra_925D
bra_925A:
C - - - - - 0x03526A 0D:925A: A9 16     LDA #$16
C - - - - - 0x03526C 0D:925C: 60        RTS
bra_925D:
C - - - - - 0x03526D 0D:925D: 20 14 EE  JSR sub_0x03EE24
C - - - - - 0x035270 0D:9260: B0 0C     BCS bra_926E
C - - - - - 0x035272 0D:9262: A5 12     LDA ram_0012
C - - - - - 0x035274 0D:9264: C9 02     CMP #$02
C - - - - - 0x035276 0D:9266: B0 06     BCS bra_926E
bra_9268:
C - - - - - 0x035278 0D:9268: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x03527B 0D:926B: A9 0F     LDA #$0F
C - - - - - 0x03527D 0D:926D: 60        RTS
bra_926E:
C - - - - - 0x03527E 0D:926E: 20 CD EC  JSR sub_0x03ECDD_random_00_07
C - - - - - 0x035281 0D:9271: B9 84 92  LDA tbl_9284,Y
C - - - - - 0x035284 0D:9274: 60        RTS



tbl_9278:
- D 0 - - - 0x035288 0D:9278: 12        .byte $12   ; 00
- D 0 - - - 0x035289 0D:9279: 29        .byte $29   ; 01
- D 0 - - - 0x03528A 0D:927A: 18        .byte $18   ; 02
- D 0 - - - 0x03528B 0D:927B: 13        .byte $13   ; 03



tbl_927C:
- D 0 - - - 0x03528C 0D:927C: 0D        .byte $0D   ; 00
- D 0 - - - 0x03528D 0D:927D: 0B        .byte $0B   ; 01
- D 0 - - - 0x03528E 0D:927E: 0C        .byte $0C   ; 02
- D 0 - - - 0x03528F 0D:927F: 13        .byte $13   ; 03
- D 0 - - - 0x035290 0D:9280: 14        .byte $14   ; 04
- D 0 - - - 0x035291 0D:9281: 15        .byte $15   ; 05
- D 0 - - - 0x035292 0D:9282: 1A        .byte $1A   ; 06
- D 0 - - - 0x035293 0D:9283: 1B        .byte $1B   ; 07



tbl_9284:
- D 0 - - - 0x035294 0D:9284: 1C        .byte $1C   ; 00
- D 0 - - - 0x035295 0D:9285: 15        .byte $15   ; 01
- D 0 - - - 0x035296 0D:9286: 12        .byte $12   ; 02
- D 0 - - - 0x035297 0D:9287: 18        .byte $18   ; 03



tbl_9288:
- D 0 - - - 0x035298 0D:9288: 3E        .byte $3E   ; 00
- D 0 - - - 0x035299 0D:9289: 41        .byte $41   ; 01
- D 0 - - - 0x03529A 0D:928A: 37        .byte $37   ; 02
- D 0 - - - 0x03529B 0D:928B: 1A        .byte $1A   ; 03
- D 0 - - - 0x03529C 0D:928C: 10        .byte $10   ; 04
- D 0 - - - 0x03529D 0D:928D: 34        .byte $34   ; 05
- D 0 - - - 0x03529E 0D:928E: 29        .byte $29   ; 06
- D 0 - - - 0x03529F 0D:928F: 26        .byte $26   ; 07



tbl_9290:
- D 0 - - - 0x0352A0 0D:9290: 29        .byte $29   ; 00
- D 0 - - - 0x0352A1 0D:9291: 19        .byte $19   ; 01
- D 0 - - - 0x0352A2 0D:9292: 10        .byte $10   ; 02
- D 0 - - - 0x0352A3 0D:9293: 17        .byte $17   ; 03
- D 0 - - - 0x0352A4 0D:9294: 42        .byte $42   ; 04
- D 0 - - - 0x0352A5 0D:9295: 34        .byte $34   ; 05
- D 0 - - - 0x0352A6 0D:9296: 29        .byte $29   ; 06
- D 0 - - - 0x0352A7 0D:9297: 26        .byte $26   ; 07



tbl_9298:
- D 0 - - - 0x0352A8 0D:9298: 05        .byte $05   ; 00
- D 0 - - - 0x0352A9 0D:9299: 29        .byte $29   ; 01
- D 0 - - - 0x0352AA 0D:929A: 34        .byte $34   ; 02
- D 0 - - - 0x0352AB 0D:929B: 1A        .byte $1A   ; 03



tbl_929C:
- D 0 - - - 0x0352AC 0D:929C: 3F        .byte $3F   ; 00
- D 0 - - - 0x0352AD 0D:929D: 18        .byte $18   ; 01
- D 0 - - - 0x0352AE 0D:929E: 10        .byte $10   ; 02
- D 0 - - - 0x0352AF 0D:929F: 17        .byte $17   ; 03



ofs_92A4_03:
C - - J - - 0x0352B4 0D:92A4: A5 13     LDA ram_0013
C - - - - - 0x0352B6 0D:92A6: 20 32 D0  JSR sub_0x03D042
- D 0 - I - 0x0352B9 0D:92A9: B1 92     .word ofs_92B1_00
- D 0 - I - 0x0352BB 0D:92AB: 0D 93     .word ofs_930D_01
- D 0 - I - 0x0352BD 0D:92AD: 6F 93     .word ofs_936F_02
- D 0 - I - 0x0352BF 0D:92AF: 53 93     .word ofs_9353_03



ofs_92B1_00:
C - - J - - 0x0352C1 0D:92B1: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x0352C4 0D:92B4: 90 2D     BCC bra_92E3
C - - - - - 0x0352C6 0D:92B6: 20 5A ED  JSR sub_0x03ED6A
C - - - - - 0x0352C9 0D:92B9: 90 2E     BCC bra_92E9
C - - - - - 0x0352CB 0D:92BB: C9 08     CMP #$08
C - - - - - 0x0352CD 0D:92BD: F0 3F     BEQ bra_92FE
C - - - - - 0x0352CF 0D:92BF: BC DE 06  LDY ram_06DE,X
C - - - - - 0x0352D2 0D:92C2: B9 10 06  LDA ram_0610,Y
C - - - - - 0x0352D5 0D:92C5: D0 37     BNE bra_92FE
C - - - - - 0x0352D7 0D:92C7: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x0352DA 0D:92CA: A5 28     LDA ram_random_1
C - - - - - 0x0352DC 0D:92CC: 30 03     BMI bra_92D1
C - - - - - 0x0352DE 0D:92CE: A9 07     LDA #$07
C - - - - - 0x0352E0 0D:92D0: 60        RTS
bra_92D1:
C - - - - - 0x0352E1 0D:92D1: A9 26     LDA #$26
C - - - - - 0x0352E3 0D:92D3: 60        RTS



loc_92D4:
C D 0 - - - 0x0352E4 0D:92D4: BD 60 04  LDA ram_0460,X
C - - - - - 0x0352E7 0D:92D7: 10 07     BPL bra_92E0
C - - - - - 0x0352E9 0D:92D9: BD 10 04  LDA ram_0410,X
C - - - - - 0x0352EC 0D:92DC: C9 80     CMP #$80
C - - - - - 0x0352EE 0D:92DE: 90 09     BCC bra_92E9
bra_92E0:
C - - - - - 0x0352F0 0D:92E0: A9 1E     LDA #$1E
C - - - - - 0x0352F2 0D:92E2: 60        RTS
bra_92E3:
- - - - - - 0x0352F3 0D:92E3: 20 96 ED  JSR sub_0x03EDA6
- - - - - - 0x0352F6 0D:92E6: A9 08     LDA #$08
- - - - - - 0x0352F8 0D:92E8: 60        RTS
bra_92E9:
C - - - - - 0x0352F9 0D:92E9: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x0352FC 0D:92EC: 20 CD EC  JSR sub_0x03ECDD_random_00_07
C - - - - - 0x0352FF 0D:92EF: B9 F3 92  LDA tbl_92F3,Y
C - - - - - 0x035302 0D:92F2: 60        RTS



tbl_92F3:
- D 0 - - - 0x035303 0D:92F3: 1A        .byte $1A   ; 00
- D 0 - - - 0x035304 0D:92F4: 19        .byte $19   ; 01
- D 0 - - - 0x035305 0D:92F5: 07        .byte $07   ; 02
- D 0 - - - 0x035306 0D:92F6: 13        .byte $13   ; 03
- D 0 - - - 0x035307 0D:92F7: 1A        .byte $1A   ; 04
- D 0 - - - 0x035308 0D:92F8: 19        .byte $19   ; 05
- D 0 - - - 0x035309 0D:92F9: 07        .byte $07   ; 06
- D 0 - - - 0x03530A 0D:92FA: 13        .byte $13   ; 07



bra_92FB:
C - - - - - 0x03530B 0D:92FB: A9 03     LDA #$03
C - - - - - 0x03530D 0D:92FD: 60        RTS
bra_92FE:
C - - - - - 0x03530E 0D:92FE: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x035311 0D:9301: A5 11     LDA ram_0011
C - - - - - 0x035313 0D:9303: C9 07     CMP #$07
C - - - - - 0x035315 0D:9305: F0 03     BEQ bra_930A
C - - - - - 0x035317 0D:9307: A9 04     LDA #$04
C - - - - - 0x035319 0D:9309: 60        RTS
bra_930A:
C - - - - - 0x03531A 0D:930A: A9 02     LDA #$02
C - - - - - 0x03531C 0D:930C: 60        RTS



ofs_930D_01:
C - - J - - 0x03531D 0D:930D: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x035320 0D:9310: 90 D1     BCC bra_92E3
C - - - - - 0x035322 0D:9312: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035325 0D:9315: B9 10 06  LDA ram_0610,Y
C - - - - - 0x035328 0D:9318: D0 E4     BNE bra_92FE
C - - - - - 0x03532A 0D:931A: A5 11     LDA ram_0011
C - - - - - 0x03532C 0D:931C: C9 07     CMP #$07
C - - - - - 0x03532E 0D:931E: F0 DB     BEQ bra_92FB
C - - - - - 0x035330 0D:9320: C9 08     CMP #$08
C - - - - - 0x035332 0D:9322: F0 DA     BEQ bra_92FE
C - - - - - 0x035334 0D:9324: 20 FE ED  JSR sub_0x03EE0E
C - - - - - 0x035337 0D:9327: B0 03     BCS bra_932C
C - - - - - 0x035339 0D:9329: A9 16     LDA #$16
C - - - - - 0x03533B 0D:932B: 60        RTS
bra_932C:
C - - - - - 0x03533C 0D:932C: A5 12     LDA ram_0012
C - - - - - 0x03533E 0D:932E: C9 03     CMP #$03
C - - - - - 0x035340 0D:9330: B0 3A     BCS bra_936C
C - - - - - 0x035342 0D:9332: 20 CD EC  JSR sub_0x03ECDD_random_00_07
C - - - - - 0x035345 0D:9335: B9 AD 93  LDA tbl_93AD,Y
C - - - - - 0x035348 0D:9338: 60        RTS



sub_9339:
C - - - - - 0x035349 0D:9339: 20 14 EE  JSR sub_0x03EE24
C - - - - - 0x03534C 0D:933C: B0 12     BCS bra_9350
C - - - - - 0x03534E 0D:933E: A5 12     LDA ram_0012
C - - - - - 0x035350 0D:9340: C9 02     CMP #$02
C - - - - - 0x035352 0D:9342: B0 0C     BCS bra_9350
C - - - - - 0x035354 0D:9344: F0 07     BEQ bra_934D
C - - - - - 0x035356 0D:9346: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x035359 0D:9349: C9 3C     CMP #$3C
C - - - - - 0x03535B 0D:934B: B0 03     BCS bra_9350
bra_934D:
C - - - - - 0x03535D 0D:934D: A9 0F     LDA #$0F
C - - - - - 0x03535F 0D:934F: 60        RTS
bra_9350:
C - - - - - 0x035360 0D:9350: A9 00     LDA #$00
C - - - - - 0x035362 0D:9352: 60        RTS



ofs_9353_03:
C - - J - - 0x035363 0D:9353: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x035366 0D:9356: 90 8B     BCC bra_92E3
C - - - - - 0x035368 0D:9358: 20 39 93  JSR sub_9339
C - - - - - 0x03536B 0D:935B: F0 01     BEQ bra_935E
C - - - - - 0x03536D 0D:935D: 60        RTS
bra_935E:
C - - - - - 0x03536E 0D:935E: 20 14 EE  JSR sub_0x03EE24
C - - - - - 0x035371 0D:9361: B0 0C     BCS bra_936F
C - - - - - 0x035373 0D:9363: A5 12     LDA ram_0012
C - - - - - 0x035375 0D:9365: C9 03     CMP #$03
C - - - - - 0x035377 0D:9367: B0 03     BCS bra_936C
C - - - - - 0x035379 0D:9369: A9 0F     LDA #$0F
C - - - - - 0x03537B 0D:936B: 60        RTS
bra_936C:
C - - - - - 0x03537C 0D:936C: A9 13     LDA #$13
C - - - - - 0x03537E 0D:936E: 60        RTS



bra_936F:
ofs_936F_02:
C - - - - - 0x03537F 0D:936F: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x035382 0D:9372: B0 06     BCS bra_937A
- - - - - - 0x035384 0D:9374: 20 96 ED  JSR sub_0x03EDA6
- - - - - - 0x035387 0D:9377: A9 06     LDA #$06
- - - - - - 0x035389 0D:9379: 60        RTS
bra_937A:
C - - - - - 0x03538A 0D:937A: 20 39 93  JSR sub_9339
C - - - - - 0x03538D 0D:937D: F0 01     BEQ bra_9380
C - - - - - 0x03538F 0D:937F: 60        RTS
bra_9380:
C - - - - - 0x035390 0D:9380: BD 20 05  LDA ram_0520,X
C - - - - - 0x035393 0D:9383: C9 01     CMP #$01
C - - - - - 0x035395 0D:9385: F0 0E     BEQ bra_9395
bra_9387:
C - - - - - 0x035397 0D:9387: A5 28     LDA ram_random_1
C - - - - - 0x035399 0D:9389: 10 03     BPL bra_938E
C - - - - - 0x03539B 0D:938B: 4C D4 92  JMP loc_92D4
bra_938E:
C - - - - - 0x03539E 0D:938E: 29 07     AND #$07
C - - - - - 0x0353A0 0D:9390: A8        TAY
C - - - - - 0x0353A1 0D:9391: B9 B5 93  LDA tbl_93B5,Y
C - - - - - 0x0353A4 0D:9394: 60        RTS
bra_9395:
C - - - - - 0x0353A5 0D:9395: BD 10 04  LDA ram_0410,X
C - - - - - 0x0353A8 0D:9398: C9 A0     CMP #$A0
C - - - - - 0x0353AA 0D:939A: B0 EB     BCS bra_9387
C - - - - - 0x0353AC 0D:939C: 20 A9 EE  JSR sub_0x03EEB9
C - - - - - 0x0353AF 0D:939F: A9 20     LDA #$20
C - - - - - 0x0353B1 0D:93A1: 20 3E EE  JSR sub_0x03EE4E
C - - - - - 0x0353B4 0D:93A4: EA        NOP
C - - - - - 0x0353B5 0D:93A5: B0 E0     BCS bra_9387
C - - - - - 0x0353B7 0D:93A7: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x0353BA 0D:93AA: A9 16     LDA #$16
C - - - - - 0x0353BC 0D:93AC: 60        RTS



tbl_93AD:
- D 0 - - - 0x0353BD 0D:93AD: 10        .byte $10   ; 00
- D 0 - - - 0x0353BE 0D:93AE: 11        .byte $11   ; 01
- D 0 - - - 0x0353BF 0D:93AF: 06        .byte $06   ; 02
- D 0 - - - 0x0353C0 0D:93B0: 17        .byte $17   ; 03
- D 0 - - - 0x0353C1 0D:93B1: 18        .byte $18   ; 04
- D 0 - - - 0x0353C2 0D:93B2: 07        .byte $07   ; 05
- D 0 - - - 0x0353C3 0D:93B3: 14        .byte $14   ; 06
- D 0 - - - 0x0353C4 0D:93B4: 1A        .byte $1A   ; 07



tbl_93B5:
- D 0 - - - 0x0353C5 0D:93B5: 06        .byte $06   ; 00
- D 0 - - - 0x0353C6 0D:93B6: 0D        .byte $0D   ; 01
- D 0 - - - 0x0353C7 0D:93B7: 0B        .byte $0B   ; 02
- D 0 - - - 0x0353C8 0D:93B8: 0C        .byte $0C   ; 03
- D 0 - - - 0x0353C9 0D:93B9: 14        .byte $14   ; 04
- D 0 - - - 0x0353CA 0D:93BA: 15        .byte $15   ; 05
- D 0 - - - 0x0353CB 0D:93BB: 1A        .byte $1A   ; 06
- D 0 - - - 0x0353CC 0D:93BC: 1B        .byte $1B   ; 07



ofs_93BD_02:
C - - J - - 0x0353CD 0D:93BD: A5 13     LDA ram_0013
C - - - - - 0x0353CF 0D:93BF: 20 32 D0  JSR sub_0x03D042
- D 0 - I - 0x0353D2 0D:93C2: CA 93     .word ofs_93CA_00
- D 0 - I - 0x0353D4 0D:93C4: 41 94     .word ofs_9441_01
- D 0 - I - 0x0353D6 0D:93C6: 1E 95     .word ofs_951E_02
- D 0 - I - 0x0353D8 0D:93C8: EC 94     .word ofs_94EC_03



ofs_93CA_00:
C - - J - - 0x0353DA 0D:93CA: BD 2E 01  LDA ram_012E,X
C - - - - - 0x0353DD 0D:93CD: DD 0C 06  CMP ram_060C,X
C - - - - - 0x0353E0 0D:93D0: F0 0C     BEQ bra_93DE
C - - - - - 0x0353E2 0D:93D2: A5 28     LDA ram_random_1
C - - - - - 0x0353E4 0D:93D4: 29 03     AND #$03
C - - - - - 0x0353E6 0D:93D6: F0 03     BEQ bra_93DB
C - - - - - 0x0353E8 0D:93D8: 4C B5 94  JMP loc_94B5
bra_93DB:
C - - - - - 0x0353EB 0D:93DB: 4C C1 94  JMP loc_94C1
bra_93DE:
- - - - - - 0x0353EE 0D:93DE: A5 11     LDA ram_0011
- - - - - - 0x0353F0 0D:93E0: C9 01     CMP #$01
- - - - - - 0x0353F2 0D:93E2: F0 30     BEQ bra_9414
- - - - - - 0x0353F4 0D:93E4: 20 5A ED  JSR sub_0x03ED6A
- - - - - - 0x0353F7 0D:93E7: 90 1E     BCC bra_9407
- - - - - - 0x0353F9 0D:93E9: BC DE 06  LDY ram_06DE,X
- - - - - - 0x0353FC 0D:93EC: B9 40 05  LDA ram_0540,Y
- - - - - - 0x0353FF 0D:93EF: C9 03     CMP #$03
- - - - - - 0x035401 0D:93F1: B0 06     BCS bra_93F9
- - - - - - 0x035403 0D:93F3: A5 11     LDA ram_0011
- - - - - - 0x035405 0D:93F5: C9 08     CMP #$08
- - - - - - 0x035407 0D:93F7: F0 33     BEQ bra_942C
bra_93F9:
- - - - - - 0x035409 0D:93F9: B9 10 06  LDA ram_0610,Y
- - - - - - 0x03540C 0D:93FC: D0 2E     BNE bra_942C
- - - - - - 0x03540E 0D:93FE: A5 28     LDA ram_random_1
- - - - - - 0x035410 0D:9400: C9 40     CMP #$40
- - - - - - 0x035412 0D:9402: B0 03     BCS bra_9407
- - - - - - 0x035414 0D:9404: A9 37     LDA #$37
- - - - - - 0x035416 0D:9406: 60        RTS
bra_9407:
C - - - - - 0x035417 0D:9407: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x03541A 0D:940A: 20 CD EC  JSR sub_0x03ECDD_random_00_07
C - - - - - 0x03541D 0D:940D: B9 8F 95  LDA tbl_958F,Y
C - - - - - 0x035420 0D:9410: 9D E6 06  STA ram_06E6,X
C - - - - - 0x035423 0D:9413: 60        RTS
bra_9414:
C - - - - - 0x035424 0D:9414: BD 60 04  LDA ram_0460,X
C - - - - - 0x035427 0D:9417: 30 0C     BMI bra_9425
C - - - - - 0x035429 0D:9419: BD 10 06  LDA ram_0610,X
C - - - - - 0x03542C 0D:941C: D0 0E     BNE bra_942C
C - - - - - 0x03542E 0D:941E: 20 C2 EC  JSR sub_0x03ECD2_random_00_03
C - - - - - 0x035431 0D:9421: AD 28 94  LDA tbl_9428
C - - - - - 0x035434 0D:9424: 60        RTS
bra_9425:
C - - - - - 0x035435 0D:9425: A9 3D     LDA #$3D
C - - - - - 0x035437 0D:9427: 60        RTS



tbl_9428:
- D 0 - - - 0x035438 0D:9428: 10        .byte $10   ; 
; bzk мусор, предположительно баг, тут должен был быть выбор через Y
- - - - - - 0x035439 0D:9429: 02        .byte $02   ; 
- - - - - - 0x03543A 0D:942A: 17        .byte $17   ; 
- - - - - - 0x03543B 0D:942B: 04        .byte $04   ; 



bra_942C:
C - - - - - 0x03543C 0D:942C: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x03543F 0D:942F: A5 11     LDA ram_0011
C - - - - - 0x035441 0D:9431: C9 07     CMP #$07
C - - - - - 0x035443 0D:9433: F0 03     BEQ bra_9438
C - - - - - 0x035445 0D:9435: A9 3D     LDA #$3D
C - - - - - 0x035447 0D:9437: 60        RTS
bra_9438:
C - - - - - 0x035448 0D:9438: A9 2B     LDA #$2B
C - - - - - 0x03544A 0D:943A: 60        RTS



bra_943B:
loc_943B:
- - - - - - 0x03544B 0D:943B: 20 96 ED  JSR sub_0x03EDA6
- - - - - - 0x03544E 0D:943E: A9 08     LDA #$08
- - - - - - 0x035450 0D:9440: 60        RTS



ofs_9441_01:
C - - J - - 0x035451 0D:9441: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x035454 0D:9444: C9 28     CMP #$28
C - - - - - 0x035456 0D:9446: B0 11     BCS bra_9459
C - - - - - 0x035458 0D:9448: A5 11     LDA ram_0011
C - - - - - 0x03545A 0D:944A: C9 01     CMP #$01
C - - - - - 0x03545C 0D:944C: F0 C6     BEQ bra_9414
C - - - - - 0x03545E 0D:944E: C9 03     CMP #$03
C - - - - - 0x035460 0D:9450: F0 04     BEQ bra_9456
C - - - - - 0x035462 0D:9452: C9 04     CMP #$04
C - - - - - 0x035464 0D:9454: D0 03     BNE bra_9459
bra_9456:
C - - - - - 0x035466 0D:9456: 4C 75 95  JMP loc_9575
bra_9459:
C - - - - - 0x035469 0D:9459: 20 5A ED  JSR sub_0x03ED6A
C - - - - - 0x03546C 0D:945C: B0 A9     BCS bra_9407
C - - - - - 0x03546E 0D:945E: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x035471 0D:9461: 90 D8     BCC bra_943B
C - - - - - 0x035473 0D:9463: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035476 0D:9466: B9 10 06  LDA ram_0610,Y
C - - - - - 0x035479 0D:9469: D0 C1     BNE bra_942C
C - - - - - 0x03547B 0D:946B: A5 11     LDA ram_0011
C - - - - - 0x03547D 0D:946D: C9 08     CMP #$08
C - - - - - 0x03547F 0D:946F: F0 41     BEQ bra_94B2
C - - - - - 0x035481 0D:9471: A5 12     LDA ram_0012
C - - - - - 0x035483 0D:9473: D0 21     BNE bra_9496
C - - - - - 0x035485 0D:9475: 20 14 EE  JSR sub_0x03EE24
C - - - - - 0x035488 0D:9478: B0 1C     BCS bra_9496
C - - - - - 0x03548A 0D:947A: 20 8E EC  JSR sub_0x03EC9E
C - - - - - 0x03548D 0D:947D: B0 17     BCS bra_9496
- - - - - - 0x03548F 0D:947F: AD D9 06  LDA ram_06D9
- - - - - - 0x035492 0D:9482: 85 0E     STA ram_000E
- - - - - - 0x035494 0D:9484: AD D8 06  LDA ram_06D8
- - - - - - 0x035497 0D:9487: 85 0F     STA ram_000F
- - - - - - 0x035499 0D:9489: A9 30     LDA #$30
- - - - - - 0x03549B 0D:948B: 20 3E EE  JSR sub_0x03EE4E
- - - - - - 0x03549E 0D:948E: B0 06     BCS bra_9496
- - - - - - 0x0354A0 0D:9490: 20 96 ED  JSR sub_0x03EDA6
- - - - - - 0x0354A3 0D:9493: A9 0F     LDA #$0F
- - - - - - 0x0354A5 0D:9495: 60        RTS
bra_9496:
C - - - - - 0x0354A6 0D:9496: A5 11     LDA ram_0011
C - - - - - 0x0354A8 0D:9498: C9 07     CMP #$07
C - - - - - 0x0354AA 0D:949A: F0 0B     BEQ bra_94A7
C - - - - - 0x0354AC 0D:949C: 20 C2 EC  JSR sub_0x03ECD2_random_00_03
C - - - - - 0x0354AF 0D:949F: B9 A3 94  LDA tbl_94A3,Y
C - - - - - 0x0354B2 0D:94A2: 60        RTS



tbl_94A3:
- D 0 - - - 0x0354B3 0D:94A3: 07        .byte $07   ; 00
- D 0 - - - 0x0354B4 0D:94A4: 17        .byte $17   ; 01
- D 0 - - - 0x0354B5 0D:94A5: 10        .byte $10   ; 02
- D 0 - - - 0x0354B6 0D:94A6: 18        .byte $18   ; 03



bra_94A7:
C - - - - - 0x0354B7 0D:94A7: 20 C2 EC  JSR sub_0x03ECD2_random_00_03
C - - - - - 0x0354BA 0D:94AA: B9 AE 94  LDA tbl_94AE,Y
C - - - - - 0x0354BD 0D:94AD: 60        RTS



tbl_94AE:
- D 0 - - - 0x0354BE 0D:94AE: 19        .byte $19   ; 00
- D 0 - - - 0x0354BF 0D:94AF: 11        .byte $11   ; 01
- D 0 - - - 0x0354C0 0D:94B0: 17        .byte $17   ; 02
- D 0 - - - 0x0354C1 0D:94B1: 2B        .byte $2B   ; 03



bra_94B2:
C - - - - - 0x0354C2 0D:94B2: A9 2B     LDA #$2B
C - - - - - 0x0354C4 0D:94B4: 60        RTS



loc_94B5:
C D 0 - - - 0x0354C5 0D:94B5: A9 21     LDA #$21
C - - - - - 0x0354C7 0D:94B7: 60        RTS



loc_94C1:
C D 0 - - - 0x0354D1 0D:94C1: A9 07     LDA #$07
C - - - - - 0x0354D3 0D:94C3: 60        RTS



bra_94DC:
C - - - - - 0x0354EC 0D:94DC: BC DE 06  LDY ram_06DE,X
C - - - - - 0x0354EF 0D:94DF: B9 20 05  LDA ram_0520,Y
C - - - - - 0x0354F2 0D:94E2: C9 07     CMP #$07
C - - - - - 0x0354F4 0D:94E4: F0 03     BEQ bra_94E9
bra_94E6:
C - - - - - 0x0354F6 0D:94E6: A9 2E     LDA #$2E
C - - - - - 0x0354F8 0D:94E8: 60        RTS
bra_94E9:
- - - - - - 0x0354F9 0D:94E9: A9 16     LDA #$16
- - - - - - 0x0354FB 0D:94EB: 60        RTS



ofs_94EC_03:
C - - J - - 0x0354FC 0D:94EC: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x0354FF 0D:94EF: B0 03     BCS bra_94F4
- - - - - - 0x035501 0D:94F1: 4C 3B 94  JMP loc_943B
bra_94F4:
C - - - - - 0x035504 0D:94F4: 20 14 EE  JSR sub_0x03EE24
C - - - - - 0x035507 0D:94F7: B0 06     BCS bra_94FF
C - - - - - 0x035509 0D:94F9: A5 12     LDA ram_0012
C - - - - - 0x03550B 0D:94FB: C9 02     CMP #$02
C - - - - - 0x03550D 0D:94FD: 90 19     BCC bra_9518
bra_94FF:
C - - - - - 0x03550F 0D:94FF: 20 FE ED  JSR sub_0x03EE0E
C - - - - - 0x035512 0D:9502: B0 0D     BCS bra_9511
C - - - - - 0x035514 0D:9504: 20 66 EE  JSR sub_0x03EE76
C - - - - - 0x035517 0D:9507: 90 DD     BCC bra_94E6
C - - - - - 0x035519 0D:9509: 30 DB     BMI bra_94E6
C - - - - - 0x03551B 0D:950B: A5 13     LDA ram_0013
C - - - - - 0x03551D 0D:950D: C9 04     CMP #$04
C - - - - - 0x03551F 0D:950F: F0 D8     BEQ bra_94E9
bra_9511:
C - - - - - 0x035521 0D:9511: 20 CD EC  JSR sub_0x03ECDD_random_00_07
C - - - - - 0x035524 0D:9514: B9 87 95  LDA tbl_9587,Y
C - - - - - 0x035527 0D:9517: 60        RTS
bra_9518:
C - - - - - 0x035528 0D:9518: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x03552B 0D:951B: A9 0F     LDA #$0F
C - - - - - 0x03552D 0D:951D: 60        RTS



ofs_951E_02:
C - - J - - 0x03552E 0D:951E: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x035531 0D:9521: B0 03     BCS bra_9526
- - - - - - 0x035533 0D:9523: 4C 3B 94  JMP loc_943B
bra_9526:
C - - - - - 0x035536 0D:9526: 20 14 EE  JSR sub_0x03EE24
C - - - - - 0x035539 0D:9529: B0 06     BCS bra_9531
C - - - - - 0x03553B 0D:952B: A5 12     LDA ram_0012
C - - - - - 0x03553D 0D:952D: C9 02     CMP #$02
C - - - - - 0x03553F 0D:952F: 90 E7     BCC bra_9518
bra_9531:
C - - - - - 0x035541 0D:9531: 20 FE ED  JSR sub_0x03EE0E
C - - - - - 0x035544 0D:9534: B0 0E     BCS bra_9544
C - - - - - 0x035546 0D:9536: A5 11     LDA ram_0011
C - - - - - 0x035548 0D:9538: C9 03     CMP #$03
C - - - - - 0x03554A 0D:953A: F0 A0     BEQ bra_94DC
C - - - - - 0x03554C 0D:953C: C9 04     CMP #$04
C - - - - - 0x03554E 0D:953E: F0 9C     BEQ bra_94DC
C - - - - - 0x035550 0D:9540: C9 00     CMP #$00
C - - - - - 0x035552 0D:9542: F0 98     BEQ bra_94DC
bra_9544:
C - - - - - 0x035554 0D:9544: A5 11     LDA ram_0011
C - - - - - 0x035556 0D:9546: C9 01     CMP #$01
C - - - - - 0x035558 0D:9548: D0 0C     BNE bra_9556
C - - - - - 0x03555A 0D:954A: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03555D 0D:954D: B9 40 05  LDA ram_0540,Y
C - - - - - 0x035560 0D:9550: F0 1D     BEQ bra_956F
C - - - - - 0x035562 0D:9552: C9 01     CMP #$01
C - - - - - 0x035564 0D:9554: F0 1F     BEQ bra_9575
bra_9556:
C - - - - - 0x035566 0D:9556: 20 2F EE  JSR sub_0x03EE3F
C - - - - - 0x035569 0D:9559: 90 0E     BCC bra_9569
C - - - - - 0x03556B 0D:955B: 20 FE ED  JSR sub_0x03EE0E
C - - - - - 0x03556E 0D:955E: 90 86     BCC bra_94E6
C - - - - - 0x035570 0D:9560: A5 28     LDA ram_random_1
C - - - - - 0x035572 0D:9562: 29 07     AND #$07
C - - - - - 0x035574 0D:9564: A8        TAY
C - - - - - 0x035575 0D:9565: B9 7F 95  LDA tbl_957F,Y
C - - - - - 0x035578 0D:9568: 60        RTS
bra_9569:
- - - - - - 0x035579 0D:9569: 20 96 ED  JSR sub_0x03EDA6
- - - - - - 0x03557C 0D:956C: A9 3D     LDA #$3D
- - - - - - 0x03557E 0D:956E: 60        RTS
bra_956F:
C - - - - - 0x03557F 0D:956F: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x035582 0D:9572: A9 22     LDA #$22
C - - - - - 0x035584 0D:9574: 60        RTS
bra_9575:
loc_9575:
C D 0 - - - 0x035585 0D:9575: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x035588 0D:9578: A9 21     LDA #$21
C - - - - - 0x03558A 0D:957A: 60        RTS



tbl_957F:
- D 0 - - - 0x03558F 0D:957F: 09        .byte $09   ; 00
- D 0 - - - 0x035590 0D:9580: 0B        .byte $0B   ; 01
- D 0 - - - 0x035591 0D:9581: 0C        .byte $0C   ; 02
- D 0 - - - 0x035592 0D:9582: 13        .byte $13   ; 03
- D 0 - - - 0x035593 0D:9583: 14        .byte $14   ; 04
- D 0 - - - 0x035594 0D:9584: 15        .byte $15   ; 05
- D 0 - - - 0x035595 0D:9585: 1A        .byte $1A   ; 06
- D 0 - - - 0x035596 0D:9586: 1B        .byte $1B   ; 07



tbl_9587:
- D 0 - - - 0x035597 0D:9587: 1A        .byte $1A   ; 00
- D 0 - - - 0x035598 0D:9588: 0C        .byte $0C   ; 01
- D 0 - - - 0x035599 0D:9589: 0B        .byte $0B   ; 02
- D 0 - - - 0x03559A 0D:958A: 13        .byte $13   ; 03
- D 0 - - - 0x03559B 0D:958B: 14        .byte $14   ; 04
- D 0 - - - 0x03559C 0D:958C: 15        .byte $15   ; 05
- D 0 - - - 0x03559D 0D:958D: 1A        .byte $1A   ; 06
- D 0 - - - 0x03559E 0D:958E: 1B        .byte $1B   ; 07



tbl_958F:
- D 0 - - - 0x03559F 0D:958F: 19        .byte $19   ; 00
- D 0 - - - 0x0355A0 0D:9590: 42        .byte $42   ; 01
- D 0 - - - 0x0355A1 0D:9591: 17        .byte $17   ; 02
- D 0 - - - 0x0355A2 0D:9592: 13        .byte $13   ; 03
- D 0 - - - 0x0355A3 0D:9593: 07        .byte $07   ; 04
- D 0 - - - 0x0355A4 0D:9594: 10        .byte $10   ; 05
- D 0 - - - 0x0355A5 0D:9595: 07        .byte $07   ; 06
- D 0 - - - 0x0355A6 0D:9596: 1A        .byte $1A   ; 07



ofs_9597_04:
C - - J - - 0x0355A7 0D:9597: A5 11     LDA ram_0011
C - - - - - 0x0355A9 0D:9599: C9 03     CMP #$03
C - - - - - 0x0355AB 0D:959B: D0 0A     BNE bra_95A7
C - - - - - 0x0355AD 0D:959D: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x0355B0 0D:95A0: C9 38     CMP #$38
C - - - - - 0x0355B2 0D:95A2: 90 03     BCC bra_95A7
C - - - - - 0x0355B4 0D:95A4: A9 3A     LDA #$3A
C - - - - - 0x0355B6 0D:95A6: 60        RTS
bra_95A7:
C - - - - - 0x0355B7 0D:95A7: A5 13     LDA ram_0013
C - - - - - 0x0355B9 0D:95A9: 20 32 D0  JSR sub_0x03D042
- D 0 - I - 0x0355BC 0D:95AC: B4 95     .word ofs_95B4_00
- D 0 - I - 0x0355BE 0D:95AE: 6F 96     .word ofs_966F_01
- D 0 - I - 0x0355C0 0D:95B0: A6 97     .word ofs_97A6_02
- D 0 - I - 0x0355C2 0D:95B2: 7D 97     .word ofs_977D_03



ofs_95B4_00:
C - - J - - 0x0355C4 0D:95B4: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x0355C7 0D:95B7: B0 03     BCS bra_95BC
- - - - - - 0x0355C9 0D:95B9: 4C 53 97  JMP loc_9753
bra_95BC:
C - - - - - 0x0355CC 0D:95BC: BD 20 05  LDA ram_0520,X
C - - - - - 0x0355CF 0D:95BF: C9 03     CMP #$03
C - - - - - 0x0355D1 0D:95C1: F0 33     BEQ bra_95F6
C - - - - - 0x0355D3 0D:95C3: A5 11     LDA ram_0011
C - - - - - 0x0355D5 0D:95C5: C9 08     CMP #$08
C - - - - - 0x0355D7 0D:95C7: D0 2D     BNE bra_95F6
C - - - - - 0x0355D9 0D:95C9: 20 5A ED  JSR sub_0x03ED6A
C - - - - - 0x0355DC 0D:95CC: B0 03     BCS bra_95D1
C - - - - - 0x0355DE 0D:95CE: 4C 5E 96  JMP loc_965E
bra_95D1:
loc_95D1:
C D 0 - - - 0x0355E1 0D:95D1: A5 11     LDA ram_0011
C - - - - - 0x0355E3 0D:95D3: C9 07     CMP #$07
C - - - - - 0x0355E5 0D:95D5: F0 0A     BEQ bra_95E1
C - - - - - 0x0355E7 0D:95D7: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x0355EA 0D:95DA: 20 C2 EC  JSR sub_0x03ECD2_random_00_03
C - - - - - 0x0355ED 0D:95DD: B9 54 98  LDA tbl_9854,Y
C - - - - - 0x0355F0 0D:95E0: 60        RTS
bra_95E1:
- - - - - - 0x0355F1 0D:95E1: A9 04     LDA #$04
- - - - - - 0x0355F3 0D:95E3: 9D C6 06  STA ram_06C6,X
- - - - - - 0x0355F6 0D:95E6: 9D C8 06  STA ram_06C8,X
- - - - - - 0x0355F9 0D:95E9: 20 8F ED  JSR sub_0x03ED9F
- - - - - - 0x0355FC 0D:95EC: 20 96 ED  JSR sub_0x03EDA6
- - - - - - 0x0355FF 0D:95EF: 20 C2 EC  JSR sub_0x03ECD2_random_00_03
- - - - - - 0x035602 0D:95F2: B9 58 98  LDA tbl_9858,Y
- - - - - - 0x035605 0D:95F5: 60        RTS
bra_95F6:
C - - - - - 0x035606 0D:95F6: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035609 0D:95F9: B9 10 06  LDA ram_0610,Y
C - - - - - 0x03560C 0D:95FC: D0 60     BNE bra_965E
C - - - - - 0x03560E 0D:95FE: A5 11     LDA ram_0011
C - - - - - 0x035610 0D:9600: C9 04     CMP #$04
C - - - - - 0x035612 0D:9602: F0 43     BEQ bra_9647
C - - - - - 0x035614 0D:9604: C9 01     CMP #$01
C - - - - - 0x035616 0D:9606: F0 4B     BEQ bra_9653
C - - - - - 0x035618 0D:9608: BD 20 05  LDA ram_0520,X
C - - - - - 0x03561B 0D:960B: C9 01     CMP #$01
C - - - - - 0x03561D 0D:960D: D0 19     BNE bra_9628
C - - - - - 0x03561F 0D:960F: 20 A9 EE  JSR sub_0x03EEB9
C - - - - - 0x035622 0D:9612: A9 50     LDA #$50
C - - - - - 0x035624 0D:9614: 20 3E EE  JSR sub_0x03EE4E
C - - - - - 0x035627 0D:9617: B0 0F     BCS bra_9628
C - - - - - 0x035629 0D:9619: 20 A9 EE  JSR sub_0x03EEB9
C - - - - - 0x03562C 0D:961C: A9 30     LDA #$30
C - - - - - 0x03562E 0D:961E: 20 3E EE  JSR sub_0x03EE4E
C - - - - - 0x035631 0D:9621: 90 05     BCC bra_9628
C - - - - - 0x035633 0D:9623: A9 80     LDA #$80
C - - - - - 0x035635 0D:9625: 4C 8F ED  JMP loc_0x03ED9F
bra_9628:
C - - - - - 0x035638 0D:9628: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x03563B 0D:962B: C9 80     CMP #$80
C - - - - - 0x03563D 0D:962D: 90 03     BCC bra_9632
C - - - - - 0x03563F 0D:962F: A9 07     LDA #$07
C - - - - - 0x035641 0D:9631: 60        RTS
bra_9632:
C - - - - - 0x035642 0D:9632: A5 11     LDA ram_0011
C - - - - - 0x035644 0D:9634: C9 01     CMP #$01
C - - - - - 0x035646 0D:9636: D0 08     BNE bra_9640
- - - - - - 0x035648 0D:9638: BC DE 06  LDY ram_06DE,X
- - - - - - 0x03564B 0D:963B: B9 40 05  LDA ram_0540,Y
- - - - - - 0x03564E 0D:963E: F0 07     BEQ bra_9647
bra_9640:
C - - - - - 0x035650 0D:9640: 20 CD EC  JSR sub_0x03ECDD_random_00_07
C - - - - - 0x035653 0D:9643: B9 3C 98  LDA tbl_983C,Y
C - - - - - 0x035656 0D:9646: 60        RTS
bra_9647:
C - - - - - 0x035657 0D:9647: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x03565A 0D:964A: A9 1D     LDA #$1D
C - - - - - 0x03565C 0D:964C: 60        RTS



bra_9653:
C - - - - - 0x035663 0D:9653: A9 40     LDA #$40
C - - - - - 0x035665 0D:9655: 20 8F ED  JSR sub_0x03ED9F
C - - - - - 0x035668 0D:9658: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x03566B 0D:965B: A9 10     LDA #$10
C - - - - - 0x03566D 0D:965D: 60        RTS
bra_965E:
loc_965E:
C D 0 - - - 0x03566E 0D:965E: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x035671 0D:9661: BD 20 05  LDA ram_0520,X
C - - - - - 0x035674 0D:9664: C9 07     CMP #$07
C - - - - - 0x035676 0D:9666: F0 03     BEQ bra_966B
C - - - - - 0x035678 0D:9668: A9 04     LDA #$04
C - - - - - 0x03567A 0D:966A: 60        RTS
bra_966B:
C - - - - - 0x03567B 0D:966B: A9 02     LDA #$02
C - - - - - 0x03567D 0D:966D: 60        RTS



ofs_966F_01:
C - - J - - 0x03567F 0D:966F: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x035682 0D:9672: B0 03     BCS bra_9677
C - - - - - 0x035684 0D:9674: 4C 53 97  JMP loc_9753
bra_9677:
C - - - - - 0x035687 0D:9677: BD 10 04  LDA ram_0410,X
C - - - - - 0x03568A 0D:967A: C9 80     CMP #$80
C - - - - - 0x03568C 0D:967C: 90 2A     BCC bra_96A8
C - - - - - 0x03568E 0D:967E: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035691 0D:9681: B9 10 06  LDA ram_0610,Y
C - - - - - 0x035694 0D:9684: D0 D8     BNE bra_965E
C - - - - - 0x035696 0D:9686: A5 11     LDA ram_0011
C - - - - - 0x035698 0D:9688: C9 08     CMP #$08
C - - - - - 0x03569A 0D:968A: D0 08     BNE bra_9694
C - - - - - 0x03569C 0D:968C: 20 5A ED  JSR sub_0x03ED6A
C - - - - - 0x03569F 0D:968F: B0 CD     BCS bra_965E
C - - - - - 0x0356A1 0D:9691: 4C D1 95  JMP loc_95D1
bra_9694:
C - - - - - 0x0356A4 0D:9694: A5 11     LDA ram_0011
C - - - - - 0x0356A6 0D:9696: C9 04     CMP #$04
C - - - - - 0x0356A8 0D:9698: F0 AD     BEQ bra_9647
C - - - - - 0x0356AA 0D:969A: BD 20 05  LDA ram_0520,X
C - - - - - 0x0356AD 0D:969D: C9 03     CMP #$03
C - - - - - 0x0356AF 0D:969F: F0 BD     BEQ bra_965E
C - - - - - 0x0356B1 0D:96A1: C9 07     CMP #$07
C - - - - - 0x0356B3 0D:96A3: F0 1C     BEQ bra_96C1
C - - - - - 0x0356B5 0D:96A5: 4C D9 96  JMP loc_96D9
bra_96A8:
C - - - - - 0x0356B8 0D:96A8: 20 A9 EE  JSR sub_0x03EEB9
C - - - - - 0x0356BB 0D:96AB: A9 50     LDA #$50
C - - - - - 0x0356BD 0D:96AD: 20 3E EE  JSR sub_0x03EE4E
C - - - - - 0x0356C0 0D:96B0: B0 27     BCS bra_96D9
C - - - - - 0x0356C2 0D:96B2: 20 A9 EE  JSR sub_0x03EEB9
C - - - - - 0x0356C5 0D:96B5: A9 30     LDA #$30
C - - - - - 0x0356C7 0D:96B7: 20 3E EE  JSR sub_0x03EE4E
C - - - - - 0x0356CA 0D:96BA: 90 1D     BCC bra_96D9
C - - - - - 0x0356CC 0D:96BC: A9 80     LDA #$80
C - - - - - 0x0356CE 0D:96BE: 4C 8F ED  JMP loc_0x03ED9F
bra_96C1:
C - - - - - 0x0356D1 0D:96C1: A5 28     LDA ram_random_1
C - - - - - 0x0356D3 0D:96C3: 30 11     BMI bra_96D6
C - - - - - 0x0356D5 0D:96C5: 20 14 EE  JSR sub_0x03EE24
C - - - - - 0x0356D8 0D:96C8: B0 09     BCS bra_96D3
- - - - - - 0x0356DA 0D:96CA: A5 28     LDA ram_random_1
- - - - - - 0x0356DC 0D:96CC: C9 20     CMP #$20
- - - - - - 0x0356DE 0D:96CE: B0 03     BCS bra_96D3
- - - - - - 0x0356E0 0D:96D0: A9 0F     LDA #$0F
- - - - - - 0x0356E2 0D:96D2: 60        RTS
bra_96D3:
C - - - - - 0x0356E3 0D:96D3: A9 06     LDA #$06
C - - - - - 0x0356E5 0D:96D5: 60        RTS
bra_96D6:
C - - - - - 0x0356E6 0D:96D6: A9 3A     LDA #$3A
C - - - - - 0x0356E8 0D:96D8: 60        RTS
bra_96D9:
loc_96D9:
C D 0 - - - 0x0356E9 0D:96D9: 20 5A ED  JSR sub_0x03ED6A
C - - - - - 0x0356EC 0D:96DC: B0 80     BCS bra_965E
C - - - - - 0x0356EE 0D:96DE: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x0356F1 0D:96E1: C9 40     CMP #$40
C - - - - - 0x0356F3 0D:96E3: 90 0E     BCC bra_96F3
C - - - - - 0x0356F5 0D:96E5: A5 11     LDA ram_0011
C - - - - - 0x0356F7 0D:96E7: C9 01     CMP #$01
C - - - - - 0x0356F9 0D:96E9: D0 28     BNE bra_9713
C - - - - - 0x0356FB 0D:96EB: BC DE 06  LDY ram_06DE,X
C - - - - - 0x0356FE 0D:96EE: B9 40 05  LDA ram_0540,Y
C - - - - - 0x035701 0D:96F1: F0 37     BEQ bra_972A
bra_96F3:
C - - - - - 0x035703 0D:96F3: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035706 0D:96F6: B9 60 04  LDA ram_0460,Y
C - - - - - 0x035709 0D:96F9: 30 18     BMI bra_9713
C - - - - - 0x03570B 0D:96FB: 20 A9 EE  JSR sub_0x03EEB9
C - - - - - 0x03570E 0D:96FE: A9 40     LDA #$40
C - - - - - 0x035710 0D:9700: 20 3E EE  JSR sub_0x03EE4E
C - - - - - 0x035713 0D:9703: B0 0E     BCS bra_9713
C - - - - - 0x035715 0D:9705: A9 80     LDA #$80
C - - - - - 0x035717 0D:9707: 9D C6 06  STA ram_06C6,X
C - - - - - 0x03571A 0D:970A: 9D C8 06  STA ram_06C8,X
C - - - - - 0x03571D 0D:970D: 20 8F ED  JSR sub_0x03ED9F
C - - - - - 0x035720 0D:9710: A9 11     LDA #$11
C - - - - - 0x035722 0D:9712: 60        RTS
bra_9713:
C - - - - - 0x035723 0D:9713: A5 11     LDA ram_0011
C - - - - - 0x035725 0D:9715: C9 07     CMP #$07
C - - - - - 0x035727 0D:9717: F0 50     BEQ bra_9769
C - - - - - 0x035729 0D:9719: A5 11     LDA ram_0011
C - - - - - 0x03572B 0D:971B: D0 2B     BNE bra_9748
C - - - - - 0x03572D 0D:971D: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x035730 0D:9720: C9 38     CMP #$38
C - - - - - 0x035732 0D:9722: B0 24     BCS bra_9748
loc_9724:
C D 0 - - - 0x035734 0D:9724: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x035737 0D:9727: A9 1D     LDA #$1D
C - - - - - 0x035739 0D:9729: 60        RTS
bra_972A:
C - - - - - 0x03573A 0D:972A: A9 48     LDA #$48
C - - - - - 0x03573C 0D:972C: 20 8F ED  JSR sub_0x03ED9F
C - - - - - 0x03573F 0D:972F: 9D C8 06  STA ram_06C8,X
C - - - - - 0x035742 0D:9732: 60        RTS



bra_9748:
C - - - - - 0x035758 0D:9748: 20 FE ED  JSR sub_0x03EE0E
C - - - - - 0x03575B 0D:974B: B0 0D     BCS bra_975A
bra_974D:
C - - - - - 0x03575D 0D:974D: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x035760 0D:9750: A9 16     LDA #$16
C - - - - - 0x035762 0D:9752: 60        RTS
bra_9753:
loc_9753:
C D 0 - - - 0x035763 0D:9753: EA        NOP
C - - - - - 0x035764 0D:9754: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x035767 0D:9757: A9 08     LDA #$08
C - - - - - 0x035769 0D:9759: 60        RTS
bra_975A:
C - - - - - 0x03576A 0D:975A: A5 12     LDA ram_0012
C - - - - - 0x03576C 0D:975C: C9 03     CMP #$03
C - - - - - 0x03576E 0D:975E: B0 40     BCS bra_97A0
C - - - - - 0x035770 0D:9760: A5 28     LDA ram_random_1
C - - - - - 0x035772 0D:9762: 29 07     AND #$07
C - - - - - 0x035774 0D:9764: A8        TAY
C - - - - - 0x035775 0D:9765: B9 44 98  LDA tbl_9844,Y
C - - - - - 0x035778 0D:9768: 60        RTS
bra_9769:
C - - - - - 0x035779 0D:9769: BD E4 06  LDA ram_06E4,X
C - - - - - 0x03577C 0D:976C: D0 03     BNE bra_9771
C - - - - - 0x03577E 0D:976E: 20 96 ED  JSR sub_0x03EDA6
bra_9771:
C - - - - - 0x035781 0D:9771: A5 28     LDA ram_random_1
C - - - - - 0x035783 0D:9773: 29 01     AND #$01
C - - - - - 0x035785 0D:9775: D0 03     BNE bra_977A
C - - - - - 0x035787 0D:9777: A9 06     LDA #$06
C - - - - - 0x035789 0D:9779: 60        RTS
bra_977A:
C - - - - - 0x03578A 0D:977A: A9 19     LDA #$19
C - - - - - 0x03578C 0D:977C: 60        RTS



ofs_977D_03:
C - - J - - 0x03578D 0D:977D: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x035790 0D:9780: 90 D1     BCC bra_9753
C - - - - - 0x035792 0D:9782: A5 11     LDA ram_0011
C - - - - - 0x035794 0D:9784: C9 05     CMP #$05
C - - - - - 0x035796 0D:9786: F0 1B     BEQ bra_97A3
C - - - - - 0x035798 0D:9788: 20 14 EE  JSR sub_0x03EE24
C - - - - - 0x03579B 0D:978B: B0 09     BCS bra_9796
C - - - - - 0x03579D 0D:978D: A5 12     LDA ram_0012
C - - - - - 0x03579F 0D:978F: C9 02     CMP #$02
C - - - - - 0x0357A1 0D:9791: B0 0D     BCS bra_97A0
C - - - - - 0x0357A3 0D:9793: A9 0F     LDA #$0F
C - - - - - 0x0357A5 0D:9795: 60        RTS
bra_9796:
C - - - - - 0x0357A6 0D:9796: BD E2 06  LDA ram_06E2,X
C - - - - - 0x0357A9 0D:9799: C9 2D     CMP #$2D
C - - - - - 0x0357AB 0D:979B: F0 03     BEQ bra_97A0
C - - - - - 0x0357AD 0D:979D: A9 2D     LDA #$2D
C - - - - - 0x0357AF 0D:979F: 60        RTS
bra_97A0:
C - - - - - 0x0357B0 0D:97A0: A9 3A     LDA #$3A
C - - - - - 0x0357B2 0D:97A2: 60        RTS
bra_97A3:
C - - - - - 0x0357B3 0D:97A3: A9 0B     LDA #$0B
C - - - - - 0x0357B5 0D:97A5: 60        RTS



ofs_97A6_02:
C - - J - - 0x0357B6 0D:97A6: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x0357B9 0D:97A9: 90 BE     BCC bra_9769
C - - - - - 0x0357BB 0D:97AB: 20 FE ED  JSR sub_0x03EE0E
C - - - - - 0x0357BE 0D:97AE: 90 9D     BCC bra_974D
C - - - - - 0x0357C0 0D:97B0: 20 5A ED  JSR sub_0x03ED6A
C - - - - - 0x0357C3 0D:97B3: 90 14     BCC bra_97C9
C - - - - - 0x0357C5 0D:97B5: BC DE 06  LDY ram_06DE,X
C - - - - - 0x0357C8 0D:97B8: A5 11     LDA ram_0011
C - - - - - 0x0357CA 0D:97BA: C9 08     CMP #$08
C - - - - - 0x0357CC 0D:97BC: D0 0B     BNE bra_97C9
C - - - - - 0x0357CE 0D:97BE: BD 10 06  LDA ram_0610,X
C - - - - - 0x0357D1 0D:97C1: F0 03     BEQ bra_97C6
C - - - - - 0x0357D3 0D:97C3: 4C 5E 96  JMP loc_965E
bra_97C6:
C - - - - - 0x0357D6 0D:97C6: 4C 26 98  JMP loc_9826
bra_97C9:
C - - - - - 0x0357D9 0D:97C9: C9 05     CMP #$05
C - - - - - 0x0357DB 0D:97CB: F0 56     BEQ bra_9823
C - - - - - 0x0357DD 0D:97CD: 20 8E EC  JSR sub_0x03EC9E
C - - - - - 0x0357E0 0D:97D0: 90 3E     BCC bra_9810
C - - - - - 0x0357E2 0D:97D2: A5 11     LDA ram_0011
C - - - - - 0x0357E4 0D:97D4: C9 01     CMP #$01
C - - - - - 0x0357E6 0D:97D6: D0 10     BNE bra_97E8
C - - - - - 0x0357E8 0D:97D8: B9 60 04  LDA ram_0460,Y
C - - - - - 0x0357EB 0D:97DB: 10 0B     BPL bra_97E8
C - - - - - 0x0357ED 0D:97DD: BC DE 06  LDY ram_06DE,X
C - - - - - 0x0357F0 0D:97E0: B9 2E 01  LDA ram_012E,Y
C - - - - - 0x0357F3 0D:97E3: D9 0C 06  CMP ram_060C,Y
C - - - - - 0x0357F6 0D:97E6: F0 3E     BEQ bra_9826
bra_97E8:
C - - - - - 0x0357F8 0D:97E8: B9 12 06  LDA ram_0612,Y
C - - - - - 0x0357FB 0D:97EB: C9 0D     CMP #$0D
C - - - - - 0x0357FD 0D:97ED: F0 2A     BEQ bra_9819
C - - - - - 0x0357FF 0D:97EF: C9 0A     CMP #$0A
C - - - - - 0x035801 0D:97F1: F0 26     BEQ bra_9819
C - - - - - 0x035803 0D:97F3: B9 26 06  LDA ram_0626,Y
C - - - - - 0x035806 0D:97F6: C9 02     CMP #$02
C - - - - - 0x035808 0D:97F8: F0 2C     BEQ bra_9826
C - - - - - 0x03580A 0D:97FA: B9 10 06  LDA ram_0610,Y
C - - - - - 0x03580D 0D:97FD: D0 24     BNE bra_9823
C - - - - - 0x03580F 0D:97FF: 20 14 EE  JSR sub_0x03EE24
C - - - - - 0x035812 0D:9802: B0 0C     BCS bra_9810
C - - - - - 0x035814 0D:9804: A5 12     LDA ram_0012
C - - - - - 0x035816 0D:9806: C9 01     CMP #$01
C - - - - - 0x035818 0D:9808: B0 1C     BCS bra_9826
C - - - - - 0x03581A 0D:980A: A9 0F     LDA #$0F
C - - - - - 0x03581C 0D:980C: 60        RTS



bra_9810:
C - - - - - 0x035820 0D:9810: A5 28     LDA ram_random_1
C - - - - - 0x035822 0D:9812: 29 07     AND #$07
C - - - - - 0x035824 0D:9814: A8        TAY
C - - - - - 0x035825 0D:9815: B9 4C 98  LDA tbl_984C,Y
C - - - - - 0x035828 0D:9818: 60        RTS
bra_9819:
C - - - - - 0x035829 0D:9819: A5 28     LDA ram_random_1
C - - - - - 0x03582B 0D:981B: 30 03     BMI bra_9820
C - - - - - 0x03582D 0D:981D: 4C 24 97  JMP loc_9724
bra_9820:
C - - - - - 0x035830 0D:9820: 4C 26 98  JMP loc_9826
bra_9823:
C - - - - - 0x035833 0D:9823: A9 0B     LDA #$0B
C - - - - - 0x035835 0D:9825: 60        RTS
bra_9826:
loc_9826:
C D 0 - - - 0x035836 0D:9826: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035839 0D:9829: B9 50 05  LDA ram_0550,Y
C - - - - - 0x03583C 0D:982C: C9 01     CMP #$01
C - - - - - 0x03583E 0D:982E: F0 06     BEQ bra_9836
C - - - - - 0x035840 0D:9830: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x035843 0D:9833: A9 3A     LDA #$3A
C - - - - - 0x035845 0D:9835: 60        RTS
bra_9836:
C - - - - - 0x035846 0D:9836: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x035849 0D:9839: A9 42     LDA #$42
C - - - - - 0x03584B 0D:983B: 60        RTS



tbl_983C:
- D 0 - - - 0x03584C 0D:983C: 11        .byte $11   ; 00
- D 0 - - - 0x03584D 0D:983D: 10        .byte $10   ; 01
- D 0 - - - 0x03584E 0D:983E: 17        .byte $17   ; 02
- D 0 - - - 0x03584F 0D:983F: 19        .byte $19   ; 03
- D 0 - - - 0x035850 0D:9840: 19        .byte $19   ; 04
- D 0 - - - 0x035851 0D:9841: 07        .byte $07   ; 05
- D 0 - - - 0x035852 0D:9842: 11        .byte $11   ; 06
- D 0 - - - 0x035853 0D:9843: 37        .byte $37   ; 07



tbl_9844:
- D 0 - - - 0x035854 0D:9844: 10        .byte $10   ; 00
- D 0 - - - 0x035855 0D:9845: 11        .byte $11   ; 01
- D 0 - - - 0x035856 0D:9846: 12        .byte $12   ; 02
- D 0 - - - 0x035857 0D:9847: 17        .byte $17   ; 03
- D 0 - - - 0x035858 0D:9848: 18        .byte $18   ; 04
- D 0 - - - 0x035859 0D:9849: 19        .byte $19   ; 05
- D 0 - - - 0x03585A 0D:984A: 14        .byte $14   ; 06
- D 0 - - - 0x03585B 0D:984B: 3A        .byte $3A   ; 07



tbl_984C:
- D 0 - - - 0x03585C 0D:984C: 0D        .byte $0D   ; 00
- D 0 - - - 0x03585D 0D:984D: 0B        .byte $0B   ; 01
- D 0 - - - 0x03585E 0D:984E: 0C        .byte $0C   ; 02
- D 0 - - - 0x03585F 0D:984F: 13        .byte $13   ; 03
- D 0 - - - 0x035860 0D:9850: 14        .byte $14   ; 04
- D 0 - - - 0x035861 0D:9851: 15        .byte $15   ; 05
- D 0 - - - 0x035862 0D:9852: 31        .byte $31   ; 06
- D 0 - - - 0x035863 0D:9853: 2D        .byte $2D   ; 07



tbl_9854:
- D 0 - - - 0x035864 0D:9854: 42        .byte $42   ; 00
- D 0 - - - 0x035865 0D:9855: 07        .byte $07   ; 01
- D 0 - - - 0x035866 0D:9856: 19        .byte $19   ; 02
- D 0 - - - 0x035867 0D:9857: 37        .byte $37   ; 03



tbl_9858:
- - - - - - 0x035868 0D:9858: 19        .byte $19   ; 00
- - - - - - 0x035869 0D:9859: 07        .byte $07   ; 01
- - - - - - 0x03586A 0D:985A: 11        .byte $11   ; 02
- - - - - - 0x03586B 0D:985B: 1D        .byte $1D   ; 03



ofs_985C_05:
C - - J - - 0x03586C 0D:985C: A5 12     LDA ram_0012
C - - - - - 0x03586E 0D:985E: C9 03     CMP #$03
C - - - - - 0x035870 0D:9860: B0 05     BCS bra_9867
C - - - - - 0x035872 0D:9862: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x035875 0D:9865: 90 69     BCC bra_98D0
bra_9867:
C - - - - - 0x035877 0D:9867: A5 11     LDA ram_0011
C - - - - - 0x035879 0D:9869: C9 03     CMP #$03
C - - - - - 0x03587B 0D:986B: D0 0A     BNE bra_9877
C - - - - - 0x03587D 0D:986D: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x035880 0D:9870: C9 3C     CMP #$3C
C - - - - - 0x035882 0D:9872: 90 03     BCC bra_9877
C - - - - - 0x035884 0D:9874: A9 23     LDA #$23
C - - - - - 0x035886 0D:9876: 60        RTS
bra_9877:
C - - - - - 0x035887 0D:9877: A5 13     LDA ram_0013
C - - - - - 0x035889 0D:9879: 20 32 D0  JSR sub_0x03D042
- D 0 - I - 0x03588C 0D:987C: 84 98     .word ofs_9884_00
- D 0 - I - 0x03588E 0D:987E: E8 98     .word ofs_98E8_01
- D 0 - I - 0x035890 0D:9880: 5D 99     .word ofs_995D_02
- D 0 - I - 0x035892 0D:9882: 3D 99     .word ofs_993D_03



ofs_9884_00:
C - - J - - 0x035894 0D:9884: BD 20 05  LDA ram_0520,X
C - - - - - 0x035897 0D:9887: C9 01     CMP #$01
C - - - - - 0x035899 0D:9889: D0 07     BNE bra_9892
C - - - - - 0x03589B 0D:988B: BD 10 04  LDA ram_0410,X
C - - - - - 0x03589E 0D:988E: C9 80     CMP #$80
C - - - - - 0x0358A0 0D:9890: 90 26     BCC bra_98B8
bra_9892:
C - - - - - 0x0358A2 0D:9892: BC DE 06  LDY ram_06DE,X
C - - - - - 0x0358A5 0D:9895: B9 10 06  LDA ram_0610,Y
C - - - - - 0x0358A8 0D:9898: D0 3C     BNE bra_98D6
C - - - - - 0x0358AA 0D:989A: A5 11     LDA ram_0011
C - - - - - 0x0358AC 0D:989C: C9 08     CMP #$08
C - - - - - 0x0358AE 0D:989E: F0 42     BEQ bra_98E2
C - - - - - 0x0358B0 0D:98A0: C9 03     CMP #$03
C - - - - - 0x0358B2 0D:98A2: F0 1A     BEQ bra_98BE
C - - - - - 0x0358B4 0D:98A4: C9 01     CMP #$01
C - - - - - 0x0358B6 0D:98A6: F0 1C     BEQ bra_98C4
C - - - - - 0x0358B8 0D:98A8: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x0358BB 0D:98AB: C9 50     CMP #$50
C - - - - - 0x0358BD 0D:98AD: B0 03     BCS bra_98B2
C - - - - - 0x0358BF 0D:98AF: A9 07     LDA #$07
C - - - - - 0x0358C1 0D:98B1: 60        RTS
bra_98B2:
C - - - - - 0x0358C2 0D:98B2: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x0358C5 0D:98B5: A9 10     LDA #$10
C - - - - - 0x0358C7 0D:98B7: 60        RTS
bra_98B8:
C - - - - - 0x0358C8 0D:98B8: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x0358CB 0D:98BB: A9 2C     LDA #$2C
C - - - - - 0x0358CD 0D:98BD: 60        RTS
bra_98BE:
C - - - - - 0x0358CE 0D:98BE: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x0358D1 0D:98C1: A9 32     LDA #$32
C - - - - - 0x0358D3 0D:98C3: 60        RTS
bra_98C4:
C - - - - - 0x0358D4 0D:98C4: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x0358D7 0D:98C7: A9 17     LDA #$17
C - - - - - 0x0358D9 0D:98C9: 60        RTS


; bzk мусор
- - - - - - 0x0358DA 0D:98CA: 20 96 ED  JSR sub_0x03EDA6
- - - - - - 0x0358DD 0D:98CD: A9 0B     LDA #$0B
- - - - - - 0x0358DF 0D:98CF: 60        RTS



bra_98D0:
- - - - - - 0x0358E0 0D:98D0: 20 96 ED  JSR sub_0x03EDA6
- - - - - - 0x0358E3 0D:98D3: A9 08     LDA #$08
- - - - - - 0x0358E5 0D:98D5: 60        RTS
bra_98D6:
loc_98D6:
C D 0 - - - 0x0358E6 0D:98D6: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x0358E9 0D:98D9: 20 86 EC  JSR sub_0x03EC96
C - - - - - 0x0358EC 0D:98DC: A5 11     LDA ram_0011
C - - - - - 0x0358EE 0D:98DE: C9 07     CMP #$07
C - - - - - 0x0358F0 0D:98E0: F0 03     BEQ bra_98E5
bra_98E2:
C - - - - - 0x0358F2 0D:98E2: A9 04     LDA #$04
C - - - - - 0x0358F4 0D:98E4: 60        RTS
bra_98E5:
C - - - - - 0x0358F5 0D:98E5: A9 02     LDA #$02
C - - - - - 0x0358F7 0D:98E7: 60        RTS



ofs_98E8_01:
C - - J - - 0x0358F8 0D:98E8: BD 10 04  LDA ram_0410,X
C - - - - - 0x0358FB 0D:98EB: C9 70     CMP #$70
C - - - - - 0x0358FD 0D:98ED: 90 07     BCC bra_98F6
C - - - - - 0x0358FF 0D:98EF: BD 20 05  LDA ram_0520,X
C - - - - - 0x035902 0D:98F2: C9 01     CMP #$01
C - - - - - 0x035904 0D:98F4: F0 C2     BEQ bra_98B8
bra_98F6:
C - - - - - 0x035906 0D:98F6: A5 11     LDA ram_0011
C - - - - - 0x035908 0D:98F8: C9 08     CMP #$08
C - - - - - 0x03590A 0D:98FA: F0 E6     BEQ bra_98E2
C - - - - - 0x03590C 0D:98FC: C9 01     CMP #$01
C - - - - - 0x03590E 0D:98FE: F0 C4     BEQ bra_98C4
C - - - - - 0x035910 0D:9900: C9 04     CMP #$04
C - - - - - 0x035912 0D:9902: F0 2F     BEQ bra_9933
C - - - - - 0x035914 0D:9904: A5 28     LDA ram_random_1
C - - - - - 0x035916 0D:9906: 29 04     AND #$04
C - - - - - 0x035918 0D:9908: D0 09     BNE bra_9913
C - - - - - 0x03591A 0D:990A: A9 23     LDA #$23
C - - - - - 0x03591C 0D:990C: 60        RTS
bra_990D:
C - - - - - 0x03591D 0D:990D: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x035920 0D:9910: A9 23     LDA #$23
C - - - - - 0x035922 0D:9912: 60        RTS
bra_9913:
C - - - - - 0x035923 0D:9913: 20 FE ED  JSR sub_0x03EE0E
C - - - - - 0x035926 0D:9916: B0 06     BCS bra_991E
bra_9918:
C - - - - - 0x035928 0D:9918: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x03592B 0D:991B: A9 16     LDA #$16
C - - - - - 0x03592D 0D:991D: 60        RTS
bra_991E:
C - - - - - 0x03592E 0D:991E: A5 11     LDA ram_0011
C - - - - - 0x035930 0D:9920: C9 07     CMP #$07
C - - - - - 0x035932 0D:9922: F0 E9     BEQ bra_990D
C - - - - - 0x035934 0D:9924: A5 12     LDA ram_0012
C - - - - - 0x035936 0D:9926: C9 03     CMP #$03
C - - - - - 0x035938 0D:9928: B0 2D     BCS bra_9957
C - - - - - 0x03593A 0D:992A: A5 28     LDA ram_random_1
C - - - - - 0x03593C 0D:992C: 29 03     AND #$03
C - - - - - 0x03593E 0D:992E: A8        TAY
C - - - - - 0x03593F 0D:992F: B9 BA 99  LDA tbl_99BA,Y
C - - - - - 0x035942 0D:9932: 60        RTS
bra_9933:
C - - - - - 0x035943 0D:9933: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x035946 0D:9936: 20 C2 EC  JSR sub_0x03ECD2_random_00_03
C - - - - - 0x035949 0D:9939: B9 C6 99  LDA tbl_99C6,Y
C - - - - - 0x03594C 0D:993C: 60        RTS



ofs_993D_03:
C - - J - - 0x03594D 0D:993D: 20 FE ED  JSR sub_0x03EE0E
C - - - - - 0x035950 0D:9940: 90 D6     BCC bra_9918
C - - - - - 0x035952 0D:9942: 20 14 EE  JSR sub_0x03EE24
C - - - - - 0x035955 0D:9945: B0 09     BCS bra_9950
C - - - - - 0x035957 0D:9947: A5 12     LDA ram_0012
C - - - - - 0x035959 0D:9949: C9 03     CMP #$03
C - - - - - 0x03595B 0D:994B: B0 0A     BCS bra_9957
C - - - - - 0x03595D 0D:994D: A9 0F     LDA #$0F
C - - - - - 0x03595F 0D:994F: 60        RTS
bra_9950:
C - - - - - 0x035960 0D:9950: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x035963 0D:9953: C9 30     CMP #$30
C - - - - - 0x035965 0D:9955: 90 03     BCC bra_995A
bra_9957:
C - - - - - 0x035967 0D:9957: A9 13     LDA #$13
C - - - - - 0x035969 0D:9959: 60        RTS
bra_995A:
C - - - - - 0x03596A 0D:995A: A9 44     LDA #$44
C - - - - - 0x03596C 0D:995C: 60        RTS



ofs_995D_02:
C - - J - - 0x03596D 0D:995D: A5 11     LDA ram_0011
C - - - - - 0x03596F 0D:995F: C9 08     CMP #$08
C - - - - - 0x035971 0D:9961: D0 12     BNE bra_9975
C - - - - - 0x035973 0D:9963: 20 FE ED  JSR sub_0x03EE0E
C - - - - - 0x035976 0D:9966: 90 B0     BCC bra_9918
C - - - - - 0x035978 0D:9968: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x03597B 0D:996B: C9 38     CMP #$38
C - - - - - 0x03597D 0D:996D: B0 03     BCS bra_9972
C - - - - - 0x03597F 0D:996F: 4C D6 98  JMP loc_98D6
bra_9972:
C - - - - - 0x035982 0D:9972: 4C A7 99  JMP loc_99A7
bra_9975:
C - - - - - 0x035985 0D:9975: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035988 0D:9978: B9 10 06  LDA ram_0610,Y
C - - - - - 0x03598B 0D:997B: F0 03     BEQ bra_9980
C - - - - - 0x03598D 0D:997D: 4C AD 99  JMP loc_99AD
bra_9980:
C - - - - - 0x035990 0D:9980: 20 FE ED  JSR sub_0x03EE0E
C - - - - - 0x035993 0D:9983: 90 93     BCC bra_9918
C - - - - - 0x035995 0D:9985: 20 14 EE  JSR sub_0x03EE24
C - - - - - 0x035998 0D:9988: B0 29     BCS bra_99B3
C - - - - - 0x03599A 0D:998A: A5 12     LDA ram_0012
C - - - - - 0x03599C 0D:998C: C9 01     CMP #$01
C - - - - - 0x03599E 0D:998E: B0 23     BCS bra_99B3
C - - - - - 0x0359A0 0D:9990: AD D8 06  LDA ram_06D8
C - - - - - 0x0359A3 0D:9993: 85 0F     STA ram_000F
C - - - - - 0x0359A5 0D:9995: AD D9 06  LDA ram_06D9
C - - - - - 0x0359A8 0D:9998: 85 0E     STA ram_000E
C - - - - - 0x0359AA 0D:999A: A9 40     LDA #$40
C - - - - - 0x0359AC 0D:999C: 20 3E EE  JSR sub_0x03EE4E
C - - - - - 0x0359AF 0D:999F: B0 12     BCS bra_99B3
C - - - - - 0x0359B1 0D:99A1: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x0359B4 0D:99A4: A9 0F     LDA #$0F
C - - - - - 0x0359B6 0D:99A6: 60        RTS



loc_99A7:
C D 0 - - - 0x0359B7 0D:99A7: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x0359BA 0D:99AA: A9 06     LDA #$06
C - - - - - 0x0359BC 0D:99AC: 60        RTS



loc_99AD:
C D 0 - - - 0x0359BD 0D:99AD: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x0359C0 0D:99B0: A9 3E     LDA #$3E
C - - - - - 0x0359C2 0D:99B2: 60        RTS



bra_99B3:
C - - - - - 0x0359C3 0D:99B3: 20 CD EC  JSR sub_0x03ECDD_random_00_07
C - - - - - 0x0359C6 0D:99B6: B9 BE 99  LDA tbl_99BE,Y
C - - - - - 0x0359C9 0D:99B9: 60        RTS



tbl_99BA:
- D 0 - - - 0x0359CA 0D:99BA: 12        .byte $12   ; 00
- D 0 - - - 0x0359CB 0D:99BB: 31        .byte $31   ; 01
- D 0 - - - 0x0359CC 0D:99BC: 18        .byte $18   ; 02
- D 0 - - - 0x0359CD 0D:99BD: 32        .byte $32   ; 03



tbl_99BE:
- D 0 - - - 0x0359CE 0D:99BE: 0D        .byte $0D   ; 00
- D 0 - - - 0x0359CF 0D:99BF: 0B        .byte $0B   ; 01
- D 0 - - - 0x0359D0 0D:99C0: 0C        .byte $0C   ; 02
- D 0 - - - 0x0359D1 0D:99C1: 13        .byte $13   ; 03
- D 0 - - - 0x0359D2 0D:99C2: 14        .byte $14   ; 04
- D 0 - - - 0x0359D3 0D:99C3: 15        .byte $15   ; 05
- D 0 - - - 0x0359D4 0D:99C4: 1A        .byte $1A   ; 06
- D 0 - - - 0x0359D5 0D:99C5: 1B        .byte $1B   ; 07



tbl_99C6:
- D 0 - - - 0x0359D6 0D:99C6: 11        .byte $11   ; 00
- D 0 - - - 0x0359D7 0D:99C7: 1A        .byte $1A   ; 01
- D 0 - - - 0x0359D8 0D:99C8: 12        .byte $12   ; 02
- D 0 - - - 0x0359D9 0D:99C9: 23        .byte $23   ; 03



ofs_99CA_06:
C - - J - - 0x0359DA 0D:99CA: BC DE 06  LDY ram_06DE,X
C - - - - - 0x0359DD 0D:99CD: B9 10 06  LDA ram_0610,Y
C - - - - - 0x0359E0 0D:99D0: F0 17     BEQ bra_99E9
C - - - - - 0x0359E2 0D:99D2: A5 13     LDA ram_0013
C - - - - - 0x0359E4 0D:99D4: C9 03     CMP #$03
C - - - - - 0x0359E6 0D:99D6: F0 11     BEQ bra_99E9
C - - - - - 0x0359E8 0D:99D8: B9 12 06  LDA ram_0612,Y
C - - - - - 0x0359EB 0D:99DB: C9 0D     CMP #$0D
C - - - - - 0x0359ED 0D:99DD: D0 03     BNE bra_99E2
C - - - - - 0x0359EF 0D:99DF: 4C E2 9A  JMP loc_9AE2
bra_99E2:
C - - - - - 0x0359F2 0D:99E2: C9 0A     CMP #$0A
C - - - - - 0x0359F4 0D:99E4: D0 03     BNE bra_99E9
C - - - - - 0x0359F6 0D:99E6: 4C E2 9A  JMP loc_9AE2
bra_99E9:
C - - - - - 0x0359F9 0D:99E9: A5 13     LDA ram_0013
C - - - - - 0x0359FB 0D:99EB: 20 32 D0  JSR sub_0x03D042
- D 0 - I - 0x0359FE 0D:99EE: F6 99     .word ofs_99F6_00
- D 0 - I - 0x035A00 0D:99F0: 88 9A     .word ofs_9A88_01
- D 0 - I - 0x035A02 0D:99F2: 61 9B     .word ofs_9B61_02
- D 0 - I - 0x035A04 0D:99F4: 2B 9B     .word ofs_9B2B_03



ofs_99F6_00:
C - - J - - 0x035A06 0D:99F6: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x035A09 0D:99F9: B0 03     BCS bra_99FE
- - - - - - 0x035A0B 0D:99FB: 4C 82 9A  JMP loc_9A82
bra_99FE:
C - - - - - 0x035A0E 0D:99FE: 20 5A ED  JSR sub_0x03ED6A
C - - - - - 0x035A11 0D:9A01: B0 63     BCS bra_9A66
C - - - - - 0x035A13 0D:9A03: A5 11     LDA ram_0011
C - - - - - 0x035A15 0D:9A05: C9 08     CMP #$08
C - - - - - 0x035A17 0D:9A07: F0 67     BEQ bra_9A70
C - - - - - 0x035A19 0D:9A09: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035A1C 0D:9A0C: B9 60 04  LDA ram_0460,Y
C - - - - - 0x035A1F 0D:9A0F: 10 08     BPL bra_9A19
C - - - - - 0x035A21 0D:9A11: 20 8E EC  JSR sub_0x03EC9E
C - - - - - 0x035A24 0D:9A14: 90 03     BCC bra_9A19
C - - - - - 0x035A26 0D:9A16: 4C 59 9A  JMP loc_9A59
bra_9A19:
C - - - - - 0x035A29 0D:9A19: B9 10 06  LDA ram_0610,Y
C - - - - - 0x035A2C 0D:9A1C: D0 52     BNE bra_9A70
C - - - - - 0x035A2E 0D:9A1E: BD 20 05  LDA ram_0520,X
C - - - - - 0x035A31 0D:9A21: C9 03     CMP #$03
C - - - - - 0x035A33 0D:9A23: F0 4B     BEQ bra_9A70
C - - - - - 0x035A35 0D:9A25: A5 11     LDA ram_0011
C - - - - - 0x035A37 0D:9A27: C9 07     CMP #$07
C - - - - - 0x035A39 0D:9A29: D0 03     BNE bra_9A2E
C - - - - - 0x035A3B 0D:9A2B: 4C F0 9A  JMP loc_9AF0
bra_9A2E:
C - - - - - 0x035A3E 0D:9A2E: C9 01     CMP #$01
C - - - - - 0x035A40 0D:9A30: F0 0A     BEQ bra_9A3C
C - - - - - 0x035A42 0D:9A32: A5 28     LDA ram_random_1
C - - - - - 0x035A44 0D:9A34: 10 03     BPL bra_9A39
C - - - - - 0x035A46 0D:9A36: 4C E2 9A  JMP loc_9AE2
bra_9A39:
loc_9A39:
C D 0 - - - 0x035A49 0D:9A39: A9 07     LDA #$07
C - - - - - 0x035A4B 0D:9A3B: 60        RTS
bra_9A3C:
C - - - - - 0x035A4C 0D:9A3C: 20 C6 ED  JSR sub_0x03EDD6
C - - - - - 0x035A4F 0D:9A3F: C9 60     CMP #$60
C - - - - - 0x035A51 0D:9A41: 90 0C     BCC bra_9A4F_RTS
C - - - - - 0x035A53 0D:9A43: A9 00     LDA #$00
C - - - - - 0x035A55 0D:9A45: 20 8E EC  JSR sub_0x03EC9E
C - - - - - 0x035A58 0D:9A48: B0 06     BCS bra_9A50
C - - - - - 0x035A5A 0D:9A4A: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x035A5D 0D:9A4D: A9 12     LDA #$12
bra_9A4F_RTS:
C - - - - - 0x035A5F 0D:9A4F: 60        RTS
bra_9A50:
C - - - - - 0x035A60 0D:9A50: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x035A63 0D:9A53: A9 18     LDA #$18
C - - - - - 0x035A65 0D:9A55: 60        RTS



loc_9A56:
C D 0 - - - 0x035A66 0D:9A56: A9 45     LDA #$45
C - - - - - 0x035A68 0D:9A58: 60        RTS



loc_9A59:
C D 0 - - - 0x035A69 0D:9A59: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x035A6C 0D:9A5C: C9 60     CMP #$60
C - - - - - 0x035A6E 0D:9A5E: B0 03     BCS bra_9A63
C - - - - - 0x035A70 0D:9A60: 20 96 ED  JSR sub_0x03EDA6
bra_9A63:
C - - - - - 0x035A73 0D:9A63: A9 25     LDA #$25
C - - - - - 0x035A75 0D:9A65: 60        RTS



bra_9A66:
C - - - - - 0x035A76 0D:9A66: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x035A79 0D:9A69: 20 C2 EC  JSR sub_0x03ECD2_random_00_03
C - - - - - 0x035A7C 0D:9A6C: B9 D2 9B  LDA tbl_9BD2,Y
C - - - - - 0x035A7F 0D:9A6F: 60        RTS
bra_9A70:
C - - - - - 0x035A80 0D:9A70: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x035A83 0D:9A73: A5 11     LDA ram_0011
C - - - - - 0x035A85 0D:9A75: C9 07     CMP #$07
C - - - - - 0x035A87 0D:9A77: F0 03     BEQ bra_9A7C
C - - - - - 0x035A89 0D:9A79: A9 04     LDA #$04
C - - - - - 0x035A8B 0D:9A7B: 60        RTS
bra_9A7C:
C - - - - - 0x035A8C 0D:9A7C: A9 02     LDA #$02
C - - - - - 0x035A8E 0D:9A7E: 60        RTS
bra_9A7F:
loc_9A7F:
C D 0 - - - 0x035A8F 0D:9A7F: A9 13     LDA #$13
C - - - - - 0x035A91 0D:9A81: 60        RTS
bra_9A82:
loc_9A82:
C D 0 - - - 0x035A92 0D:9A82: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x035A95 0D:9A85: A9 08     LDA #$08
C - - - - - 0x035A97 0D:9A87: 60        RTS



ofs_9A88_01:
C - - J - - 0x035A98 0D:9A88: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x035A9B 0D:9A8B: 90 F5     BCC bra_9A82
C - - - - - 0x035A9D 0D:9A8D: 20 5A ED  JSR sub_0x03ED6A
C - - - - - 0x035AA0 0D:9A90: B0 D4     BCS bra_9A66
C - - - - - 0x035AA2 0D:9A92: A5 11     LDA ram_0011
C - - - - - 0x035AA4 0D:9A94: C9 08     CMP #$08
C - - - - - 0x035AA6 0D:9A96: F0 D8     BEQ bra_9A70
C - - - - - 0x035AA8 0D:9A98: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035AAB 0D:9A9B: B9 60 04  LDA ram_0460,Y
C - - - - - 0x035AAE 0D:9A9E: 10 12     BPL bra_9AB2
C - - - - - 0x035AB0 0D:9AA0: 20 8E EC  JSR sub_0x03EC9E
C - - - - - 0x035AB3 0D:9AA3: B0 03     BCS bra_9AA8
C - - - - - 0x035AB5 0D:9AA5: 4C B2 9A  JMP loc_9AB2
bra_9AA8:
C - - - - - 0x035AB8 0D:9AA8: B9 10 04  LDA ram_0410,Y
C - - - - - 0x035ABB 0D:9AAB: C9 98     CMP #$98
C - - - - - 0x035ABD 0D:9AAD: B0 03     BCS bra_9AB2
C - - - - - 0x035ABF 0D:9AAF: 4C 59 9A  JMP loc_9A59
bra_9AB2:
loc_9AB2:
C D 0 - - - 0x035AC2 0D:9AB2: B9 10 06  LDA ram_0610,Y
C - - - - - 0x035AC5 0D:9AB5: D0 B9     BNE bra_9A70
C - - - - - 0x035AC7 0D:9AB7: BD 20 05  LDA ram_0520,X
C - - - - - 0x035ACA 0D:9ABA: C9 03     CMP #$03
C - - - - - 0x035ACC 0D:9ABC: F0 B2     BEQ bra_9A70
C - - - - - 0x035ACE 0D:9ABE: A5 11     LDA ram_0011
C - - - - - 0x035AD0 0D:9AC0: C9 07     CMP #$07
C - - - - - 0x035AD2 0D:9AC2: F0 2C     BEQ bra_9AF0
C - - - - - 0x035AD4 0D:9AC4: A5 12     LDA ram_0012
C - - - - - 0x035AD6 0D:9AC6: D0 08     BNE bra_9AD0
C - - - - - 0x035AD8 0D:9AC8: 20 14 EE  JSR sub_0x03EE24
C - - - - - 0x035ADB 0D:9ACB: B0 03     BCS bra_9AD0
C - - - - - 0x035ADD 0D:9ACD: 4C 5B 9B  JMP loc_9B5B
bra_9AD0:
C - - - - - 0x035AE0 0D:9AD0: A5 11     LDA ram_0011
C - - - - - 0x035AE2 0D:9AD2: C9 03     CMP #$03
C - - - - - 0x035AE4 0D:9AD4: F0 0F     BEQ bra_9AE5
C - - - - - 0x035AE6 0D:9AD6: A5 28     LDA ram_random_1
C - - - - - 0x035AE8 0D:9AD8: 10 03     BPL bra_9ADD
C - - - - - 0x035AEA 0D:9ADA: 4C 39 9A  JMP loc_9A39
bra_9ADD:
C - - - - - 0x035AED 0D:9ADD: 20 8E EC  JSR sub_0x03EC9E
C - - - - - 0x035AF0 0D:9AE0: B0 30     BCS bra_9B12
loc_9AE2:
C D 0 - - - 0x035AF2 0D:9AE2: A9 33     LDA #$33
C - - - - - 0x035AF4 0D:9AE4: 60        RTS
bra_9AE5:
C - - - - - 0x035AF5 0D:9AE5: 20 CD EC  JSR sub_0x03ECDD_random_00_07
C - - - - - 0x035AF8 0D:9AE8: B9 EC 9A  LDA tbl_9AEC,Y
C - - - - - 0x035AFB 0D:9AEB: 60        RTS



tbl_9AEC:
- D 0 - - - 0x035AFC 0D:9AEC: 17        .byte $17   ; 00
- D 0 - - - 0x035AFD 0D:9AED: 07        .byte $07   ; 01
- D 0 - - - 0x035AFE 0D:9AEE: 19        .byte $19   ; 02
- D 0 - - - 0x035AFF 0D:9AEF: 07        .byte $07   ; 03
; !!! bzk баг, должно было быть 8 байтов в таблице

bra_9AF0:
loc_9AF0:
C D 0 - - - 0x035B00 0D:9AF0: A5 28     LDA ram_random_1
C D 0 - - - 0x035B02 0D:9AF2: 30 8B     BMI bra_9A7F
C - - - - - 0x035B04 0D:9AF4: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x035B07 0D:9AF7: 20 C2 EC  JSR sub_0x03ECD2_random_00_03
C - - - - - 0x035B0A 0D:9AFA: B9 C6 9B  LDA tbl_9BC6,Y
C - - - - - 0x035B0D 0D:9AFD: 60        RTS


; bzk мусор
- - - - - - 0x035B0E 0D:9AFE: BD E4 06  LDA ram_06E4,X
- - - - - - 0x035B11 0D:9B01: D0 03     BNE bra_9B06
- - - - - - 0x035B13 0D:9B03: 20 96 ED  JSR sub_0x03EDA6
bra_9B06:
- - - - - - 0x035B16 0D:9B06: A5 28     LDA ram_random_1
- - - - - - 0x035B18 0D:9B08: 29 01     AND #$01
- - - - - - 0x035B1A 0D:9B0A: D0 03     BNE bra_9B0F
- - - - - - 0x035B1C 0D:9B0C: A9 06     LDA #$06
- - - - - - 0x035B1E 0D:9B0E: 60        RTS
bra_9B0F:
- - - - - - 0x035B1F 0D:9B0F: A9 0C     LDA #$0C
- - - - - - 0x035B21 0D:9B11: 60        RTS
bra_9B12:
C - - - - - 0x035B22 0D:9B12: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035B25 0D:9B15: 20 FE ED  JSR sub_0x03EE0E
C - - - - - 0x035B28 0D:9B18: B0 03     BCS bra_9B1D
C - - - - - 0x035B2A 0D:9B1A: A9 16     LDA #$16
C - - - - - 0x035B2C 0D:9B1C: 60        RTS
bra_9B1D:
C - - - - - 0x035B2D 0D:9B1D: A5 28     LDA ram_random_1
C - - - - - 0x035B2F 0D:9B1F: 10 03     BPL bra_9B24
- - - - - - 0x035B31 0D:9B21: 4C 7F 9A  JMP loc_9A7F
bra_9B24:
C - - - - - 0x035B34 0D:9B24: 29 03     AND #$03
C - - - - - 0x035B36 0D:9B26: A8        TAY
C - - - - - 0x035B37 0D:9B27: B9 C2 9B  LDA tbl_9BC2,Y
C - - - - - 0x035B3A 0D:9B2A: 60        RTS



ofs_9B2B_03:
C - - J - - 0x035B3B 0D:9B2B: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x035B3E 0D:9B2E: B0 03     BCS bra_9B33
C - - - - - 0x035B40 0D:9B30: 4C 82 9A  JMP loc_9A82
bra_9B33:
C - - - - - 0x035B43 0D:9B33: 20 8E EC  JSR sub_0x03EC9E
C - - - - - 0x035B46 0D:9B36: B0 15     BCS bra_9B4D
C - - - - - 0x035B48 0D:9B38: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035B4B 0D:9B3B: B9 60 04  LDA ram_0460,Y
C - - - - - 0x035B4E 0D:9B3E: 10 0D     BPL bra_9B4D
C - - - - - 0x035B50 0D:9B40: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x035B53 0D:9B43: C9 10     CMP #$10
C - - - - - 0x035B55 0D:9B45: B0 03     BCS bra_9B4A
C - - - - - 0x035B57 0D:9B47: 4C 56 9A  JMP loc_9A56
bra_9B4A:
C - - - - - 0x035B5A 0D:9B4A: 4C 59 9A  JMP loc_9A59
bra_9B4D:
C - - - - - 0x035B5D 0D:9B4D: 20 14 EE  JSR sub_0x03EE24
C - - - - - 0x035B60 0D:9B50: B0 57     BCS bra_9BA9
C - - - - - 0x035B62 0D:9B52: A5 12     LDA ram_0012
C - - - - - 0x035B64 0D:9B54: C9 03     CMP #$03
C - - - - - 0x035B66 0D:9B56: 90 03     BCC bra_9B5B
C - - - - - 0x035B68 0D:9B58: 4C 7F 9A  JMP loc_9A7F
bra_9B5B:
loc_9B5B:
C D 0 - - - 0x035B6B 0D:9B5B: 20 96 ED  JSR sub_0x03EDA6
C - - - - - 0x035B6E 0D:9B5E: A9 0F     LDA #$0F
C - - - - - 0x035B70 0D:9B60: 60        RTS



ofs_9B61_02:
C - - J - - 0x035B71 0D:9B61: 20 2C ED  JSR sub_0x03ED3C
C - - - - - 0x035B74 0D:9B64: B0 03     BCS bra_9B69
C - - - - - 0x035B76 0D:9B66: 4C 82 9A  JMP loc_9A82
bra_9B69:
C - - - - - 0x035B79 0D:9B69: 20 8E EC  JSR sub_0x03EC9E
C - - - - - 0x035B7C 0D:9B6C: B0 10     BCS bra_9B7E
C - - - - - 0x035B7E 0D:9B6E: A5 13     LDA ram_0013
C - - - - - 0x035B80 0D:9B70: C9 08     CMP #$08
C - - - - - 0x035B82 0D:9B72: D0 03     BNE bra_9B77
- - - - - - 0x035B84 0D:9B74: A9 01     LDA #$01
- - - - - - 0x035B86 0D:9B76: 60        RTS
bra_9B77:
C - - - - - 0x035B87 0D:9B77: C9 01     CMP #$01
C - - - - - 0x035B89 0D:9B79: D0 03     BNE bra_9B7E
- - - - - - 0x035B8B 0D:9B7B: A9 05     LDA #$05
- - - - - - 0x035B8D 0D:9B7D: 60        RTS
bra_9B7E:
C - - - - - 0x035B8E 0D:9B7E: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035B91 0D:9B81: B9 60 04  LDA ram_0460,Y
C - - - - - 0x035B94 0D:9B84: 30 18     BMI bra_9B9E
C - - - - - 0x035B96 0D:9B86: F0 16     BEQ bra_9B9E
C - - - - - 0x035B98 0D:9B88: B9 10 04  LDA ram_0410,Y
C - - - - - 0x035B9B 0D:9B8B: C9 88     CMP #$88
C - - - - - 0x035B9D 0D:9B8D: B0 0F     BCS bra_9B9E
C - - - - - 0x035B9F 0D:9B8F: 20 8E EC  JSR sub_0x03EC9E
C - - - - - 0x035BA2 0D:9B92: B0 0A     BCS bra_9B9E
C - - - - - 0x035BA4 0D:9B94: BD 26 06  LDA ram_0626,X
C - - - - - 0x035BA7 0D:9B97: C9 02     CMP #$02
C - - - - - 0x035BA9 0D:9B99: F0 03     BEQ bra_9B9E
C - - - - - 0x035BAB 0D:9B9B: 4C 59 9A  JMP loc_9A59
bra_9B9E:
C - - - - - 0x035BAE 0D:9B9E: 20 14 EE  JSR sub_0x03EE24
C - - - - - 0x035BB1 0D:9BA1: B0 06     BCS bra_9BA9
C - - - - - 0x035BB3 0D:9BA3: A5 12     LDA ram_0012
C - - - - - 0x035BB5 0D:9BA5: C9 02     CMP #$02
C - - - - - 0x035BB7 0D:9BA7: 90 B2     BCC bra_9B5B
bra_9BA9:
C - - - - - 0x035BB9 0D:9BA9: A5 28     LDA ram_random_1
C - - - - - 0x035BBB 0D:9BAB: 30 07     BMI bra_9BB4
C - - - - - 0x035BBD 0D:9BAD: 29 07     AND #$07
C - - - - - 0x035BBF 0D:9BAF: A8        TAY
C - - - - - 0x035BC0 0D:9BB0: 4C 00 A8  JMP loc_A800
- - - - - - 0x035BC3 0D:9BB3: 60        RTS
bra_9BB4:
C - - - - - 0x035BC4 0D:9BB4: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035BC7 0D:9BB7: 20 FE ED  JSR sub_0x03EE0E
C - - - - - 0x035BCA 0D:9BBA: 90 03     BCC bra_9BBF
C - - - - - 0x035BCC 0D:9BBC: 4C 75 A4  JMP loc_A475
bra_9BBF:
C - - - - - 0x035BCF 0D:9BBF: A9 16     LDA #$16
C - - - - - 0x035BD1 0D:9BC1: 60        RTS



tbl_9BC2:
- D 0 - - - 0x035BD2 0D:9BC2: 12        .byte $12   ; 00
- D 0 - - - 0x035BD3 0D:9BC3: 27        .byte $27   ; 01
- D 0 - - - 0x035BD4 0D:9BC4: 18        .byte $18   ; 02
- D 0 - - - 0x035BD5 0D:9BC5: 33        .byte $33   ; 03



tbl_9BC6:
- D 0 - - - 0x035BD6 0D:9BC6: 19        .byte $19   ; 00
- D 0 - - - 0x035BD7 0D:9BC7: 11        .byte $11   ; 01
- D 0 - - - 0x035BD8 0D:9BC8: 1B        .byte $1B   ; 02
- D 0 - - - 0x035BD9 0D:9BC9: 06        .byte $06   ; 03



tbl_9BCA:
- D 0 - - - 0x035BDA 0D:9BCA: 0D        .byte $0D   ; 00
- D 0 - - - 0x035BDB 0D:9BCB: 0B        .byte $0B   ; 01
- D 0 - - - 0x035BDC 0D:9BCC: 0C        .byte $0C   ; 02
- D 0 - - - 0x035BDD 0D:9BCD: 13        .byte $13   ; 03
- D 0 - - - 0x035BDE 0D:9BCE: 14        .byte $14   ; 04
- D 0 - - - 0x035BDF 0D:9BCF: 15        .byte $15   ; 05
- D 0 - - - 0x035BE0 0D:9BD0: 1A        .byte $1A   ; 06
- D 0 - - - 0x035BE1 0D:9BD1: 1B        .byte $1B   ; 07



tbl_9BD2:
- D 0 - - - 0x035BE2 0D:9BD2: 1C        .byte $1C   ; 00
- D 0 - - - 0x035BE3 0D:9BD3: 24        .byte $24   ; 01
- D 0 - - - 0x035BE4 0D:9BD4: 24        .byte $24   ; 02
- D 0 - - - 0x035BE5 0D:9BD5: 07        .byte $07   ; 03



sub_9BD6:
C - - - - - 0x035BE6 0D:9BD6: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035BE9 0D:9BD9: B9 50 05  LDA ram_0550,Y
C - - - - - 0x035BEC 0D:9BDC: C9 04     CMP #$04
C - - - - - 0x035BEE 0D:9BDE: B0 29     BCS bra_9C09
C - - - - - 0x035BF0 0D:9BE0: A5 13     LDA ram_0013
C - - - - - 0x035BF2 0D:9BE2: C9 01     CMP #$01
C - - - - - 0x035BF4 0D:9BE4: D0 10     BNE bra_9BF6
C - - - - - 0x035BF6 0D:9BE6: BD 20 05  LDA ram_0520,X
C - - - - - 0x035BF9 0D:9BE9: C9 07     CMP #$07
C - - - - - 0x035BFB 0D:9BEB: D0 09     BNE bra_9BF6
C - - - - - 0x035BFD 0D:9BED: B9 10 06  LDA ram_0610,Y
C - - - - - 0x035C00 0D:9BF0: F0 04     BEQ bra_9BF6
C - - - - - 0x035C02 0D:9BF2: A9 19     LDA #$19
C - - - - - 0x035C04 0D:9BF4: D0 18     BNE bra_9C0E
bra_9BF6:
C - - - - - 0x035C06 0D:9BF6: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035C09 0D:9BF9: B9 10 06  LDA ram_0610,Y
C - - - - - 0x035C0C 0D:9BFC: F0 0B     BEQ bra_9C09
C - - - - - 0x035C0E 0D:9BFE: B9 12 06  LDA ram_0612,Y
C - - - - - 0x035C11 0D:9C01: C9 0D     CMP #$0D
C - - - - - 0x035C13 0D:9C03: F0 07     BEQ bra_9C0C
C - - - - - 0x035C15 0D:9C05: C9 0A     CMP #$0A
C - - - - - 0x035C17 0D:9C07: F0 03     BEQ bra_9C0C
bra_9C09:
C - - - - - 0x035C19 0D:9C09: A9 00     LDA #$00
C - - - - - 0x035C1B 0D:9C0B: 60        RTS
bra_9C0C:
C - - - - - 0x035C1C 0D:9C0C: A9 04     LDA #$04
bra_9C0E:
C - - - - - 0x035C1E 0D:9C0E: 85 17     STA ram_0017
C - - - - - 0x035C20 0D:9C10: 60        RTS



ofs_9C11_00:
C - - J - - 0x035C21 0D:9C11: A9 00     LDA #$00
C - - - - - 0x035C23 0D:9C13: 85 17     STA ram_0017
C - - - - - 0x035C25 0D:9C15: 20 D6 9B  JSR sub_9BD6
C - - - - - 0x035C28 0D:9C18: F0 01     BEQ bra_9C1B
C - - - - - 0x035C2A 0D:9C1A: 60        RTS
bra_9C1B:
C - - - - - 0x035C2B 0D:9C1B: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035C2E 0D:9C1E: B9 50 05  LDA ram_0550,Y
C - - - - - 0x035C31 0D:9C21: 20 32 D0  JSR sub_0x03D042
- D 0 - I - 0x035C34 0D:9C24: 32 9C     .word ofs_9C32_00
- D 0 - I - 0x035C36 0D:9C26: 75 9C     .word ofs_9C75_01
- D 0 - I - 0x035C38 0D:9C28: B2 9C     .word ofs_9CB2_02_RTS
- D 0 - I - 0x035C3A 0D:9C2A: B3 9C     .word ofs_9CB3_03
- D 0 - I - 0x035C3C 0D:9C2C: C4 9C     .word ofs_9CC4_04_RTS
- D 0 - I - 0x035C3E 0D:9C2E: C5 9C     .word ofs_9CC5_05
- D 0 - I - 0x035C40 0D:9C30: D0 9C     .word ofs_9CD0_06



loc_9C32:
ofs_9C32_00:
C D 0 J - - 0x035C42 0D:9C32: A5 11     LDA ram_0011
C - - - - - 0x035C44 0D:9C34: C9 08     CMP #$08
C - - - - - 0x035C46 0D:9C36: D0 37     BNE bra_9C6F_RTS
C - - - - - 0x035C48 0D:9C38: EA        NOP
C - - - - - 0x035C49 0D:9C39: A5 13     LDA ram_0013
C - - - - - 0x035C4B 0D:9C3B: C9 03     CMP #$03
C - - - - - 0x035C4D 0D:9C3D: F0 21     BEQ bra_9C60
C - - - - - 0x035C4F 0D:9C3F: 20 D9 EC  JSR sub_0x03ECE9
C - - - - - 0x035C52 0D:9C42: B0 1C     BCS bra_9C60
C - - - - - 0x035C54 0D:9C44: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035C57 0D:9C47: B9 40 05  LDA ram_0540,Y
C - - - - - 0x035C5A 0D:9C4A: C9 02     CMP #$02
C - - - - - 0x035C5C 0D:9C4C: F0 22     BEQ bra_9C70
C - - - - - 0x035C5E 0D:9C4E: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x035C61 0D:9C51: C9 2C     CMP #$2C
C - - - - - 0x035C63 0D:9C53: 90 1B     BCC bra_9C70
C - - - - - 0x035C65 0D:9C55: 20 7B EC  JSR sub_0x03EC8B
C - - - - - 0x035C68 0D:9C58: 09 08     ORA #$08
C - - - - - 0x035C6A 0D:9C5A: 95 8E     STA ram_008E,X
C - - - - - 0x035C6C 0D:9C5C: 95 91     STA ram_0091,X
C - - - - - 0x035C6E 0D:9C5E: D0 0B     BNE bra_9C6B
bra_9C60:
C - - - - - 0x035C70 0D:9C60: A5 13     LDA ram_0013
C - - - - - 0x035C72 0D:9C62: C9 02     CMP #$02
C - - - - - 0x035C74 0D:9C64: 90 09     BCC bra_9C6F_RTS
C - - - - - 0x035C76 0D:9C66: A9 41     LDA #$41
C - - - - - 0x035C78 0D:9C68: 85 17     STA ram_0017
C - - - - - 0x035C7A 0D:9C6A: 60        RTS
bra_9C6B:
C - - - - - 0x035C7B 0D:9C6B: A9 3C     LDA #$3C
C - - - - - 0x035C7D 0D:9C6D: 85 17     STA ram_0017
bra_9C6F_RTS:
C - - - - - 0x035C7F 0D:9C6F: 60        RTS
bra_9C70:
C - - - - - 0x035C80 0D:9C70: A9 01     LDA #$01
C - - - - - 0x035C82 0D:9C72: 85 17     STA ram_0017
C - - - - - 0x035C84 0D:9C74: 60        RTS



loc_9C75:
ofs_9C75_01:
C D 0 J - - 0x035C85 0D:9C75: 4C A4 BF  JMP loc_BFA4


; bzk мусор
- - - - - - 0x035C88 0D:9C78: EA        NOP



loc_9C79:
C D 0 - - - 0x035C89 0D:9C79: D0 1D     BNE bra_9C98
C - - - - - 0x035C8B 0D:9C7B: 20 C6 ED  JSR sub_0x03EDD6
C - - - - - 0x035C8E 0D:9C7E: C9 10     CMP #$10
C - - - - - 0x035C90 0D:9C80: 90 28     BCC bra_9CAA_RTS
C - - - - - 0x035C92 0D:9C82: 20 FE ED  JSR sub_0x03EE0E
C - - - - - 0x035C95 0D:9C85: B0 11     BCS bra_9C98
- - - - - - 0x035C97 0D:9C87: BD 50 05  LDA ram_0550,X
- - - - - - 0x035C9A 0D:9C8A: A8        TAY
- - - - - - 0x035C9B 0D:9C8B: B9 AB 9C  LDA tbl_9CAB,Y
- - - - - - 0x035C9E 0D:9C8E: CD 38 06  CMP ram_dist_X_btw_plrs
- - - - - - 0x035CA1 0D:9C91: 90 17     BCC bra_9CAA_RTS
- - - - - - 0x035CA3 0D:9C93: A9 16     LDA #$16
- - - - - - 0x035CA5 0D:9C95: 85 17     STA ram_0017
- - - - - - 0x035CA7 0D:9C97: 60        RTS
bra_9C98:
C - - - - - 0x035CA8 0D:9C98: BD 20 05  LDA ram_0520,X
C - - - - - 0x035CAB 0D:9C9B: C9 0A     CMP #$0A
C - - - - - 0x035CAD 0D:9C9D: D0 0B     BNE bra_9CAA_RTS
C - - - - - 0x035CAF 0D:9C9F: BD C6 06  LDA ram_06C6,X
C - - - - - 0x035CB2 0D:9CA2: C9 36     CMP #$36
C - - - - - 0x035CB4 0D:9CA4: F0 04     BEQ bra_9CAA_RTS
C - - - - - 0x035CB6 0D:9CA6: A9 36     LDA #$36
C - - - - - 0x035CB8 0D:9CA8: 85 17     STA ram_0017
bra_9CAA_RTS:
C - - - - - 0x035CBA 0D:9CAA: 60        RTS



tbl_9CAB:
- - - - - - 0x035CBB 0D:9CAB: 30        .byte $30   ; 00
- - - - - - 0x035CBC 0D:9CAC: 30        .byte $30   ; 01
- - - - - - 0x035CBD 0D:9CAD: 40        .byte $40   ; 02
- - - - - - 0x035CBE 0D:9CAE: 40        .byte $40   ; 03
- - - - - - 0x035CBF 0D:9CAF: 18        .byte $18   ; 04
- - - - - - 0x035CC0 0D:9CB0: 20        .byte $20   ; 05
- - - - - - 0x035CC1 0D:9CB1: 10        .byte $10   ; 06



ofs_9CB2_02_RTS:
C - - J - - 0x035CC2 0D:9CB2: 60        RTS



ofs_9CB3_03:
C - - J - - 0x035CC3 0D:9CB3: A5 11     LDA ram_0011
C - - - - - 0x035CC5 0D:9CB5: C9 08     CMP #$08
C - - - - - 0x035CC7 0D:9CB7: D0 0A     BNE bra_9CC3_RTS
C - - - - - 0x035CC9 0D:9CB9: 4C 5F BF  JMP loc_BF5F


; bzk мусор
- - - - - - 0x035CCC 0D:9CBC: EA        NOP



loc_9CBD:
C D 0 - - - 0x035CCD 0D:9CBD: B0 04     BCS bra_9CC3_RTS
loc_9CBF:
C D 0 - - - 0x035CCF 0D:9CBF: A9 01     LDA #$01
C - - - - - 0x035CD1 0D:9CC1: 85 17     STA ram_0017
bra_9CC3_RTS:
C - - - - - 0x035CD3 0D:9CC3: 60        RTS



ofs_9CC4_04_RTS:
C - - J - - 0x035CD4 0D:9CC4: 60        RTS



ofs_9CC5_05:
C - - J - - 0x035CD5 0D:9CC5: A5 11     LDA ram_0011
C - - - - - 0x035CD7 0D:9CC7: C9 08     CMP #$08
C - - - - - 0x035CD9 0D:9CC9: D0 04     BNE bra_9CCF_RTS
C - - - - - 0x035CDB 0D:9CCB: A9 34     LDA #$34
C - - - - - 0x035CDD 0D:9CCD: 85 17     STA ram_0017
bra_9CCF_RTS:
C - - - - - 0x035CDF 0D:9CCF: 60        RTS



ofs_9CD0_06:
C - - J - - 0x035CE0 0D:9CD0: A5 13     LDA ram_0013
C - - - - - 0x035CE2 0D:9CD2: C9 02     CMP #$02
C - - - - - 0x035CE4 0D:9CD4: B0 12     BCS bra_9CE8_RTS
C - - - - - 0x035CE6 0D:9CD6: 20 D9 EC  JSR sub_0x03ECE9
C - - - - - 0x035CE9 0D:9CD9: B0 0D     BCS bra_9CE8_RTS
C - - - - - 0x035CEB 0D:9CDB: BD 10 06  LDA ram_0610,X
C - - - - - 0x035CEE 0D:9CDE: D0 09     BNE bra_9CE9
C - - - - - 0x035CF0 0D:9CE0: 20 CD EC  JSR sub_0x03ECDD_random_00_07
C - - - - - 0x035CF3 0D:9CE3: B9 EE 9C  LDA tbl_9CEE,Y
C - - - - - 0x035CF6 0D:9CE6: 85 17     STA ram_0017
bra_9CE8_RTS:
C - - - - - 0x035CF8 0D:9CE8: 60        RTS
bra_9CE9:
C - - - - - 0x035CF9 0D:9CE9: A9 01     LDA #$01
C - - - - - 0x035CFB 0D:9CEB: 85 17     STA ram_0017
C - - - - - 0x035CFD 0D:9CED: 60        RTS



tbl_9CEE:
- D 0 - - - 0x035CFE 0D:9CEE: 11        .byte $11   ; 00
- D 0 - - - 0x035CFF 0D:9CEF: 29        .byte $29   ; 01
- D 0 - - - 0x035D00 0D:9CF0: 37        .byte $37   ; 02
- D 0 - - - 0x035D01 0D:9CF1: 42        .byte $42   ; 03
- D 0 - - - 0x035D02 0D:9CF2: 20        .byte $20   ; 04
- D 0 - - - 0x035D03 0D:9CF3: 0C        .byte $0C   ; 05
- D 0 - - - 0x035D04 0D:9CF4: 2A        .byte $2A   ; 06
- D 0 - - - 0x035D05 0D:9CF5: 3F        .byte $3F   ; 07



ofs_9CF6_01:
C - - J - - 0x035D06 0D:9CF6: A9 00     LDA #$00
C - - - - - 0x035D08 0D:9CF8: 85 17     STA ram_0017
C - - - - - 0x035D0A 0D:9CFA: 20 D6 9B  JSR sub_9BD6
C - - - - - 0x035D0D 0D:9CFD: F0 01     BEQ bra_9D00
C - - - - - 0x035D0F 0D:9CFF: 60        RTS
bra_9D00:
C - - - - - 0x035D10 0D:9D00: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035D13 0D:9D03: B9 50 05  LDA ram_0550,Y
C - - - - - 0x035D16 0D:9D06: 20 32 D0  JSR sub_0x03D042
- D 0 - I - 0x035D19 0D:9D09: 32 9C     .word ofs_9C32_00
- D 0 - I - 0x035D1B 0D:9D0B: 75 9C     .word ofs_9C75_01
- D 0 - I - 0x035D1D 0D:9D0D: 17 9D     .word ofs_9D17_02_RTS
- D 0 - I - 0x035D1F 0D:9D0F: B3 9C     .word ofs_9CB3_03
- D 0 - I - 0x035D21 0D:9D11: 19 9D     .word ofs_9D19_04_RTS
- D 0 - I - 0x035D23 0D:9D13: 1A 9D     .word ofs_9D1A_05_RTS
- D 0 - I - 0x035D25 0D:9D15: 1B 9D     .word ofs_9D1B_06_RTS



ofs_9D17_02_RTS:
C - - J - - 0x035D27 0D:9D17: 60        RTS
- - - - - - 0x035D28 0D:9D18: 60        RTS
ofs_9D19_04_RTS:
C - - J - - 0x035D29 0D:9D19: 60        RTS
ofs_9D1A_05_RTS:
C - - J - - 0x035D2A 0D:9D1A: 60        RTS
ofs_9D1B_06_RTS:
C - - J - - 0x035D2B 0D:9D1B: 60        RTS



ofs_9D1C_02:
C - - J - - 0x035D2C 0D:9D1C: A9 00     LDA #$00
C - - - - - 0x035D2E 0D:9D1E: 85 17     STA ram_0017
C - - - - - 0x035D30 0D:9D20: 20 D6 9B  JSR sub_9BD6
C - - - - - 0x035D33 0D:9D23: F0 01     BEQ bra_9D26
C - - - - - 0x035D35 0D:9D25: 60        RTS
bra_9D26:
C - - - - - 0x035D36 0D:9D26: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035D39 0D:9D29: B9 50 05  LDA ram_0550,Y
C - - - - - 0x035D3C 0D:9D2C: 20 32 D0  JSR sub_0x03D042
- D 0 - I - 0x035D3F 0D:9D2F: 3D 9D     .word ofs_9D3D_00
- D 0 - I - 0x035D41 0D:9D31: 75 9C     .word ofs_9C75_01
- D 0 - I - 0x035D43 0D:9D33: 5F 9D     .word ofs_9D5F_02_RTS
- D 0 - I - 0x035D45 0D:9D35: B3 9C     .word ofs_9CB3_03
- D 0 - I - 0x035D47 0D:9D37: 61 9D     .word ofs_9D61_04_RTS
- D 0 - I - 0x035D49 0D:9D39: 62 9D     .word ofs_9D62_05_RTS
- D 0 - I - 0x035D4B 0D:9D3B: 63 9D     .word ofs_9D63_06_RTS



ofs_9D3D_00:
C - - J - - 0x035D4D 0D:9D3D: A5 11     LDA ram_0011
C - - - - - 0x035D4F 0D:9D3F: C9 08     CMP #$08
C - - - - - 0x035D51 0D:9D41: D0 19     BNE bra_9D5C
C - - - - - 0x035D53 0D:9D43: BD 20 05  LDA ram_0520,X
C - - - - - 0x035D56 0D:9D46: C9 07     CMP #$07
C - - - - - 0x035D58 0D:9D48: D0 12     BNE bra_9D5C
- - - - - - 0x035D5A 0D:9D4A: 20 C6 ED  JSR sub_0x03EDD6
- - - - - - 0x035D5D 0D:9D4D: C9 40     CMP #$40
- - - - - - 0x035D5F 0D:9D4F: B0 0B     BCS bra_9D5C
- - - - - - 0x035D61 0D:9D51: A5 13     LDA ram_0013
- - - - - - 0x035D63 0D:9D53: C9 02     CMP #$02
- - - - - - 0x035D65 0D:9D55: 90 05     BCC bra_9D5C
- - - - - - 0x035D67 0D:9D57: A9 29     LDA #$29
- - - - - - 0x035D69 0D:9D59: 85 17     STA ram_0017
- - - - - - 0x035D6B 0D:9D5B: 60        RTS
bra_9D5C:
C - - - - - 0x035D6C 0D:9D5C: 4C 32 9C  JMP loc_9C32



ofs_9D5F_02_RTS:
C - - J - - 0x035D6F 0D:9D5F: 60        RTS
- - - - - - 0x035D70 0D:9D60: 60        RTS
ofs_9D61_04_RTS:
C - - J - - 0x035D71 0D:9D61: 60        RTS
ofs_9D62_05_RTS:
C - - J - - 0x035D72 0D:9D62: 60        RTS
ofs_9D63_06_RTS:
C - - J - - 0x035D73 0D:9D63: 60        RTS



ofs_9D64_03:
C - - J - - 0x035D74 0D:9D64: A9 00     LDA #$00
C - - - - - 0x035D76 0D:9D66: 85 17     STA ram_0017
C - - - - - 0x035D78 0D:9D68: 20 D6 9B  JSR sub_9BD6
C - - - - - 0x035D7B 0D:9D6B: F0 01     BEQ bra_9D6E
C - - - - - 0x035D7D 0D:9D6D: 60        RTS
bra_9D6E:
C - - - - - 0x035D7E 0D:9D6E: BD 20 05  LDA ram_0520,X
C - - - - - 0x035D81 0D:9D71: C9 01     CMP #$01
C - - - - - 0x035D83 0D:9D73: D0 1E     BNE bra_9D93
C - - - - - 0x035D85 0D:9D75: 20 FE ED  JSR sub_0x03EE0E
C - - - - - 0x035D88 0D:9D78: B0 19     BCS bra_9D93
C - - - - - 0x035D8A 0D:9D7A: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x035D8D 0D:9D7D: C9 30     CMP #$30
C - - - - - 0x035D8F 0D:9D7F: 90 12     BCC bra_9D93
C - - - - - 0x035D91 0D:9D81: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035D94 0D:9D84: 20 A9 EE  JSR sub_0x03EEB9
C - - - - - 0x035D97 0D:9D87: A9 20     LDA #$20
C - - - - - 0x035D99 0D:9D89: 20 3E EE  JSR sub_0x03EE4E
C - - - - - 0x035D9C 0D:9D8C: B0 05     BCS bra_9D93
C - - - - - 0x035D9E 0D:9D8E: A9 16     LDA #$16
C - - - - - 0x035DA0 0D:9D90: 85 17     STA ram_0017
C - - - - - 0x035DA2 0D:9D92: 60        RTS
bra_9D93:
C - - - - - 0x035DA3 0D:9D93: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035DA6 0D:9D96: B9 50 05  LDA ram_0550,Y
C - - - - - 0x035DA9 0D:9D99: 20 32 D0  JSR sub_0x03D042
- D 0 - I - 0x035DAC 0D:9D9C: 32 9C     .word ofs_9C32_00
- D 0 - I - 0x035DAE 0D:9D9E: 75 9C     .word ofs_9C75_01
- D 0 - I - 0x035DB0 0D:9DA0: AA 9D     .word ofs_9DAA_02_RTS
- D 0 - I - 0x035DB2 0D:9DA2: B3 9C     .word ofs_9CB3_03
- D 0 - I - 0x035DB4 0D:9DA4: AC 9D     .word ofs_9DAC_04_RTS
- D 0 - I - 0x035DB6 0D:9DA6: AD 9D     .word ofs_9DAD_05_RTS
- D 0 - I - 0x035DB8 0D:9DA8: AE 9D     .word ofs_9DAE_06_RTS



ofs_9DAA_02_RTS:
C - - J - - 0x035DBA 0D:9DAA: 60        RTS
- - - - - - 0x035DBB 0D:9DAB: 60        RTS
ofs_9DAC_04_RTS:
C - - J - - 0x035DBC 0D:9DAC: 60        RTS
ofs_9DAD_05_RTS:
C - - J - - 0x035DBD 0D:9DAD: 60        RTS
ofs_9DAE_06_RTS:
C - - J - - 0x035DBE 0D:9DAE: 60        RTS



ofs_9DAF_04:
C - - J - - 0x035DBF 0D:9DAF: A9 00     LDA #$00
C - - - - - 0x035DC1 0D:9DB1: 85 17     STA ram_0017
C - - - - - 0x035DC3 0D:9DB3: 20 D6 9B  JSR sub_9BD6
C - - - - - 0x035DC6 0D:9DB6: F0 01     BEQ bra_9DB9
C - - - - - 0x035DC8 0D:9DB8: 60        RTS
bra_9DB9:
C - - - - - 0x035DC9 0D:9DB9: A5 13     LDA ram_0013
C - - - - - 0x035DCB 0D:9DBB: C9 02     CMP #$02
C - - - - - 0x035DCD 0D:9DBD: D0 19     BNE bra_9DD8
C - - - - - 0x035DCF 0D:9DBF: 20 C6 ED  JSR sub_0x03EDD6
C - - - - - 0x035DD2 0D:9DC2: C9 20     CMP #$20
C - - - - - 0x035DD4 0D:9DC4: B0 12     BCS bra_9DD8
C - - - - - 0x035DD6 0D:9DC6: 20 8E EC  JSR sub_0x03EC9E
C - - - - - 0x035DD9 0D:9DC9: B0 0D     BCS bra_9DD8
C - - - - - 0x035DDB 0D:9DCB: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035DDE 0D:9DCE: B9 26 06  LDA ram_0626,Y
C - - - - - 0x035DE1 0D:9DD1: C9 02     CMP #$02
C - - - - - 0x035DE3 0D:9DD3: D0 03     BNE bra_9DD8
C - - - - - 0x035DE5 0D:9DD5: 4C 31 9E  JMP loc_9E31
bra_9DD8:
C - - - - - 0x035DE8 0D:9DD8: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035DEB 0D:9DDB: B9 50 05  LDA ram_0550,Y
C - - - - - 0x035DEE 0D:9DDE: 20 32 D0  JSR sub_0x03D042
- D 0 - I - 0x035DF1 0D:9DE1: EF 9D     .word ofs_9DEF_00
- D 0 - I - 0x035DF3 0D:9DE3: 36 9E     .word ofs_9E36_01
- D 0 - I - 0x035DF5 0D:9DE5: 7F 9E     .word ofs_9E7F_02
- D 0 - I - 0x035DF7 0D:9DE7: B3 9C     .word ofs_9CB3_03
- D 0 - I - 0x035DF9 0D:9DE9: B1 9E     .word ofs_9EB1_04_RTS
- D 0 - I - 0x035DFB 0D:9DEB: B2 9E     .word ofs_9EB2_05
- D 0 - I - 0x035DFD 0D:9DED: E3 9E     .word ofs_9EE3_06_RTS



ofs_9DEF_00:
C - - J - - 0x035DFF 0D:9DEF: BD 20 05  LDA ram_0520,X
C - - - - - 0x035E02 0D:9DF2: C9 08     CMP #$08
C - - - - - 0x035E04 0D:9DF4: F0 07     BEQ bra_9DFD
C - - - - - 0x035E06 0D:9DF6: BD 20 05  LDA ram_0520,X
C - - - - - 0x035E09 0D:9DF9: C9 03     CMP #$03
C - - - - - 0x035E0B 0D:9DFB: D0 2E     BNE bra_9E2B_RTS
bra_9DFD:
C - - - - - 0x035E0D 0D:9DFD: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x035E10 0D:9E00: C9 40     CMP #$40
C - - - - - 0x035E12 0D:9E02: B0 27     BCS bra_9E2B_RTS
C - - - - - 0x035E14 0D:9E04: C9 38     CMP #$38
C - - - - - 0x035E16 0D:9E06: 90 05     BCC bra_9E0D
bra_9E08:
C - - - - - 0x035E18 0D:9E08: A9 01     LDA #$01
C - - - - - 0x035E1A 0D:9E0A: 85 17     STA ram_0017
C - - - - - 0x035E1C 0D:9E0C: 60        RTS
bra_9E0D:
C - - - - - 0x035E1D 0D:9E0D: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035E20 0D:9E10: B9 08 06  LDA ram_0608,Y
C - - - - - 0x035E23 0D:9E13: C9 02     CMP #$02
C - - - - - 0x035E25 0D:9E15: F0 F1     BEQ bra_9E08
C - - - - - 0x035E27 0D:9E17: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x035E2A 0D:9E1A: C9 20     CMP #$20
C - - - - - 0x035E2C 0D:9E1C: 90 09     BCC bra_9E27
C - - - - - 0x035E2E 0D:9E1E: 20 7B EC  JSR sub_0x03EC8B
C - - - - - 0x035E31 0D:9E21: 09 08     ORA #$08
C - - - - - 0x035E33 0D:9E23: 95 91     STA ram_0091,X
C - - - - - 0x035E35 0D:9E25: 95 8E     STA ram_008E,X
bra_9E27:
C - - - - - 0x035E37 0D:9E27: A9 06     LDA #$06
C - - - - - 0x035E39 0D:9E29: 85 17     STA ram_0017
bra_9E2B_RTS:
C - - - - - 0x035E3B 0D:9E2B: 60        RTS


; bzk мусор
- - - - - - 0x035E3C 0D:9E2C: A9 01     LDA #$01
- - - - - - 0x035E3E 0D:9E2E: 85 17     STA ram_0017
- - - - - - 0x035E40 0D:9E30: 60        RTS



loc_9E31:
C D 0 - - - 0x035E41 0D:9E31: A9 1C     LDA #$1C
C - - - - - 0x035E43 0D:9E33: 85 17     STA ram_0017
C - - - - - 0x035E45 0D:9E35: 60        RTS



ofs_9E36_01:
C - - J - - 0x035E46 0D:9E36: BD 20 05  LDA ram_0520,X
C - - - - - 0x035E49 0D:9E39: C9 08     CMP #$08
C - - - - - 0x035E4B 0D:9E3B: D0 3A     BNE bra_9E77
C - - - - - 0x035E4D 0D:9E3D: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x035E50 0D:9E40: C9 60     CMP #$60
C - - - - - 0x035E52 0D:9E42: B0 09     BCS bra_9E4D
C - - - - - 0x035E54 0D:9E44: C9 40     CMP #$40
C - - - - - 0x035E56 0D:9E46: 90 05     BCC bra_9E4D
C - - - - - 0x035E58 0D:9E48: A9 3A     LDA #$3A
C - - - - - 0x035E5A 0D:9E4A: 85 17     STA ram_0017
C - - - - - 0x035E5C 0D:9E4C: 60        RTS
bra_9E4D:
C - - - - - 0x035E5D 0D:9E4D: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x035E60 0D:9E50: C9 40     CMP #$40
C - - - - - 0x035E62 0D:9E52: B0 23     BCS bra_9E77
C - - - - - 0x035E64 0D:9E54: C9 30     CMP #$30
C - - - - - 0x035E66 0D:9E56: B0 22     BCS bra_9E7A
C - - - - - 0x035E68 0D:9E58: BD C8 06  LDA ram_06C8,X
C - - - - - 0x035E6B 0D:9E5B: 1D C6 06  ORA ram_06C6,X
C - - - - - 0x035E6E 0D:9E5E: 29 04     AND #$04
C - - - - - 0x035E70 0D:9E60: 85 17     STA ram_0017
C - - - - - 0x035E72 0D:9E62: 20 86 EC  JSR sub_0x03EC96
C - - - - - 0x035E75 0D:9E65: 05 17     ORA ram_0017
C - - - - - 0x035E77 0D:9E67: 09 40     ORA #$40
C - - - - - 0x035E79 0D:9E69: 9D C6 06  STA ram_06C6,X
C - - - - - 0x035E7C 0D:9E6C: 9D C8 06  STA ram_06C8,X
C - - - - - 0x035E7F 0D:9E6F: 20 8F ED  JSR sub_0x03ED9F
C - - - - - 0x035E82 0D:9E72: A9 42     LDA #$42
C - - - - - 0x035E84 0D:9E74: 85 17     STA ram_0017
C - - - - - 0x035E86 0D:9E76: 60        RTS
bra_9E77:
C - - - - - 0x035E87 0D:9E77: 4C 75 9C  JMP loc_9C75
bra_9E7A:
C - - - - - 0x035E8A 0D:9E7A: A9 1D     LDA #$1D
C - - - - - 0x035E8C 0D:9E7C: 85 17     STA ram_0017
C - - - - - 0x035E8E 0D:9E7E: 60        RTS



ofs_9E7F_02:
C - - J - - 0x035E8F 0D:9E7F: A5 11     LDA ram_0011
C - - - - - 0x035E91 0D:9E81: C9 08     CMP #$08
C - - - - - 0x035E93 0D:9E83: D0 1C     BNE bra_9EA1_RTS
C - - - - - 0x035E95 0D:9E85: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035E98 0D:9E88: B9 60 04  LDA ram_0460,Y
C - - - - - 0x035E9B 0D:9E8B: C9 FF     CMP #$FF
C - - - - - 0x035E9D 0D:9E8D: F0 12     BEQ bra_9EA1_RTS
C - - - - - 0x035E9F 0D:9E8F: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x035EA2 0D:9E92: C9 28     CMP #$28
C - - - - - 0x035EA4 0D:9E94: 90 0C     BCC bra_9EA2
C - - - - - 0x035EA6 0D:9E96: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x035EA9 0D:9E99: C9 20     CMP #$20
C - - - - - 0x035EAB 0D:9E9B: B0 05     BCS bra_9EA2
C - - - - - 0x035EAD 0D:9E9D: A9 3A     LDA #$3A
C - - - - - 0x035EAF 0D:9E9F: 85 17     STA ram_0017
bra_9EA1_RTS:
C - - - - - 0x035EB1 0D:9EA1: 60        RTS
bra_9EA2:
C - - - - - 0x035EB2 0D:9EA2: A5 28     LDA ram_random_1
C - - - - - 0x035EB4 0D:9EA4: 30 05     BMI bra_9EAB
C - - - - - 0x035EB6 0D:9EA6: A9 37     LDA #$37
C - - - - - 0x035EB8 0D:9EA8: 85 17     STA ram_0017
C - - - - - 0x035EBA 0D:9EAA: 60        RTS
bra_9EAB:
C - - - - - 0x035EBB 0D:9EAB: A9 1D     LDA #$1D
C - - - - - 0x035EBD 0D:9EAD: 85 17     STA ram_0017
C - - - - - 0x035EBF 0D:9EAF: 60        RTS


; bzk мусор
- - - - - - 0x035EC0 0D:9EB0: 60        RTS



ofs_9EB1_04_RTS:
C - - J - - 0x035EC1 0D:9EB1: 60        RTS



ofs_9EB2_05:
C - - J - - 0x035EC2 0D:9EB2: A5 11     LDA ram_0011
C - - - - - 0x035EC4 0D:9EB4: C9 08     CMP #$08
C - - - - - 0x035EC6 0D:9EB6: F0 0B     BEQ bra_9EC3
C - - - - - 0x035EC8 0D:9EB8: A5 11     LDA ram_0011
C - - - - - 0x035ECA 0D:9EBA: C9 0A     CMP #$0A
C - - - - - 0x035ECC 0D:9EBC: D0 04     BNE bra_9EC2_RTS
C - - - - - 0x035ECE 0D:9EBE: A9 17     LDA #$17
C - - - - - 0x035ED0 0D:9EC0: 85 17     STA ram_0017
bra_9EC2_RTS:
C - - - - - 0x035ED2 0D:9EC2: 60        RTS
bra_9EC3:
C - - - - - 0x035ED3 0D:9EC3: 20 D8 ED  JSR sub_0x03EDE8
C - - - - - 0x035ED6 0D:9EC6: C9 60     CMP #$60
C - - - - - 0x035ED8 0D:9EC8: B0 F8     BCS bra_9EC2_RTS
C - - - - - 0x035EDA 0D:9ECA: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035EDD 0D:9ECD: B9 40 05  LDA ram_0540,Y
C - - - - - 0x035EE0 0D:9ED0: D0 F0     BNE bra_9EC2_RTS
- - - - - - 0x035EE2 0D:9ED2: AD 38 06  LDA ram_dist_X_btw_plrs
- - - - - - 0x035EE5 0D:9ED5: C9 30     CMP #$30
- - - - - - 0x035EE7 0D:9ED7: B0 05     BCS bra_9EDE
- - - - - - 0x035EE9 0D:9ED9: A9 06     LDA #$06
- - - - - - 0x035EEB 0D:9EDB: 85 17     STA ram_0017
- - - - - - 0x035EED 0D:9EDD: 60        RTS
bra_9EDE:
- - - - - - 0x035EEE 0D:9EDE: A9 05     LDA #$05
- - - - - - 0x035EF0 0D:9EE0: 85 17     STA ram_0017
- - - - - - 0x035EF2 0D:9EE2: 60        RTS



ofs_9EE3_06_RTS:
C - - J - - 0x035EF3 0D:9EE3: 60        RTS



ofs_9EE4_05:
C - - J - - 0x035EF4 0D:9EE4: A9 00     LDA #$00
C - - - - - 0x035EF6 0D:9EE6: 85 17     STA ram_0017
C - - - - - 0x035EF8 0D:9EE8: A5 13     LDA ram_0013
C - - - - - 0x035EFA 0D:9EEA: D0 13     BNE bra_9EFF
C - - - - - 0x035EFC 0D:9EEC: BD 20 05  LDA ram_0520,X
C - - - - - 0x035EFF 0D:9EEF: C9 01     CMP #$01
C - - - - - 0x035F01 0D:9EF1: D0 0C     BNE bra_9EFF
C - - - - - 0x035F03 0D:9EF3: BD 10 04  LDA ram_0410,X
C - - - - - 0x035F06 0D:9EF6: C9 60     CMP #$60
C - - - - - 0x035F08 0D:9EF8: B0 05     BCS bra_9EFF
- - - - - - 0x035F0A 0D:9EFA: A9 2C     LDA #$2C
- - - - - - 0x035F0C 0D:9EFC: 85 17     STA ram_0017
- - - - - - 0x035F0E 0D:9EFE: 60        RTS
bra_9EFF:
C - - - - - 0x035F0F 0D:9EFF: 20 D6 9B  JSR sub_9BD6
C - - - - - 0x035F12 0D:9F02: F0 01     BEQ bra_9F05
C - - - - - 0x035F14 0D:9F04: 60        RTS
bra_9F05:
C - - - - - 0x035F15 0D:9F05: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035F18 0D:9F08: B9 50 05  LDA ram_0550,Y
C - - - - - 0x035F1B 0D:9F0B: 20 32 D0  JSR sub_0x03D042
- D 0 - I - 0x035F1E 0D:9F0E: 1C 9F     .word ofs_9F1C_00
- D 0 - I - 0x035F20 0D:9F10: 68 9F     .word ofs_9F68_01
- D 0 - I - 0x035F22 0D:9F12: 84 A0     .word ofs_A084_02
- D 0 - I - 0x035F24 0D:9F14: B3 9C     .word ofs_9CB3_03
- D 0 - I - 0x035F26 0D:9F16: 15 A1     .word ofs_A115_04
- D 0 - I - 0x035F28 0D:9F18: 9D 9F     .word ofs_9F9D_05_RTS
- D 0 - I - 0x035F2A 0D:9F1A: 9E 9F     .word ofs_9F9E_06



ofs_9F1C_00:
C - - J - - 0x035F2C 0D:9F1C: BD 20 05  LDA ram_0520,X
C - - - - - 0x035F2F 0D:9F1F: C9 01     CMP #$01
C - - - - - 0x035F31 0D:9F21: D0 09     BNE bra_9F2C
C - - - - - 0x035F33 0D:9F23: A5 13     LDA ram_0013
C - - - - - 0x035F35 0D:9F25: D0 05     BNE bra_9F2C
C - - - - - 0x035F37 0D:9F27: A9 2C     LDA #$2C
C - - - - - 0x035F39 0D:9F29: 85 17     STA ram_0017
C - - - - - 0x035F3B 0D:9F2B: 60        RTS
bra_9F2C:
C - - - - - 0x035F3C 0D:9F2C: A5 13     LDA ram_0013
C - - - - - 0x035F3E 0D:9F2E: C9 01     CMP #$01
C - - - - - 0x035F40 0D:9F30: D0 14     BNE bra_9F46
C - - - - - 0x035F42 0D:9F32: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035F45 0D:9F35: B9 10 04  LDA ram_0410,Y
C - - - - - 0x035F48 0D:9F38: C9 70     CMP #$70
C - - - - - 0x035F4A 0D:9F3A: B0 0A     BCS bra_9F46
C - - - - - 0x035F4C 0D:9F3C: 20 8E EC  JSR sub_0x03EC9E
C - - - - - 0x035F4F 0D:9F3F: B0 1D     BCS bra_9F5E
C - - - - - 0x035F51 0D:9F41: A9 17     LDA #$17
C - - - - - 0x035F53 0D:9F43: 85 17     STA ram_0017
C - - - - - 0x035F55 0D:9F45: 60        RTS
bra_9F46:
C - - - - - 0x035F56 0D:9F46: A5 11     LDA ram_0011
C - - - - - 0x035F58 0D:9F48: C9 08     CMP #$08
C - - - - - 0x035F5A 0D:9F4A: D0 11     BNE bra_9F5D_RTS
C - - - - - 0x035F5C 0D:9F4C: A5 13     LDA ram_0013
C - - - - - 0x035F5E 0D:9F4E: C9 02     CMP #$02
C - - - - - 0x035F60 0D:9F50: 90 0B     BCC bra_9F5D_RTS
C - - - - - 0x035F62 0D:9F52: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x035F65 0D:9F55: C9 50     CMP #$50
C - - - - - 0x035F67 0D:9F57: B0 0A     BCS bra_9F63
C - - - - - 0x035F69 0D:9F59: A9 0C     LDA #$0C
C - - - - - 0x035F6B 0D:9F5B: 85 17     STA ram_0017
bra_9F5D_RTS:
C - - - - - 0x035F6D 0D:9F5D: 60        RTS
bra_9F5E:
C - - - - - 0x035F6E 0D:9F5E: A9 10     LDA #$10
C - - - - - 0x035F70 0D:9F60: 85 17     STA ram_0017
C - - - - - 0x035F72 0D:9F62: 60        RTS
bra_9F63:
- - - - - - 0x035F73 0D:9F63: A9 23     LDA #$23
- - - - - - 0x035F75 0D:9F65: 85 17     STA ram_0017
- - - - - - 0x035F77 0D:9F67: 60        RTS



ofs_9F68_01:
C - - J - - 0x035F78 0D:9F68: A5 11     LDA ram_0011
C - - - - - 0x035F7A 0D:9F6A: C9 08     CMP #$08
C - - - - - 0x035F7C 0D:9F6C: D0 1B     BNE bra_9F89
C - - - - - 0x035F7E 0D:9F6E: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x035F81 0D:9F71: C9 40     CMP #$40
C - - - - - 0x035F83 0D:9F73: B0 14     BCS bra_9F89
C - - - - - 0x035F85 0D:9F75: C9 20     CMP #$20
C - - - - - 0x035F87 0D:9F77: 90 13     BCC bra_9F8C
C - - - - - 0x035F89 0D:9F79: A9 40     LDA #$40
C - - - - - 0x035F8B 0D:9F7B: 9D C6 06  STA ram_06C6,X
C - - - - - 0x035F8E 0D:9F7E: 9D C8 06  STA ram_06C8,X
C - - - - - 0x035F91 0D:9F81: 20 8F ED  JSR sub_0x03ED9F
C - - - - - 0x035F94 0D:9F84: A9 42     LDA #$42
C - - - - - 0x035F96 0D:9F86: 85 17     STA ram_0017
C - - - - - 0x035F98 0D:9F88: 60        RTS
bra_9F89:
C - - - - - 0x035F99 0D:9F89: 4C 75 9C  JMP loc_9C75
bra_9F8C:
C - - - - - 0x035F9C 0D:9F8C: A5 28     LDA ram_random_1
C - - - - - 0x035F9E 0D:9F8E: 30 05     BMI bra_9F95
C - - - - - 0x035FA0 0D:9F90: A9 04     LDA #$04
C - - - - - 0x035FA2 0D:9F92: 85 17     STA ram_0017
C - - - - - 0x035FA4 0D:9F94: 60        RTS
bra_9F95:
loc_9F95:
C D 0 - - - 0x035FA5 0D:9F95: A9 01     LDA #$01
C - - - - - 0x035FA7 0D:9F97: 85 17     STA ram_0017
C - - - - - 0x035FA9 0D:9F99: 60        RTS


; bzk мусор
- - - - - - 0x035FAA 0D:9F9A: 60        RTS
- - - - - - 0x035FAB 0D:9F9B: 60        RTS
- - - - - - 0x035FAC 0D:9F9C: 60        RTS



ofs_9F9D_05_RTS:
C - - J - - 0x035FAD 0D:9F9D: 60        RTS



ofs_9F9E_06:
C - - J - - 0x035FAE 0D:9F9E: A5 11     LDA ram_0011
C - - - - - 0x035FB0 0D:9FA0: C9 08     CMP #$08
C - - - - - 0x035FB2 0D:9FA2: D0 0A     BNE bra_9FAE_RTS
C - - - - - 0x035FB4 0D:9FA4: A5 13     LDA ram_0013
C - - - - - 0x035FB6 0D:9FA6: C9 03     CMP #$03
C - - - - - 0x035FB8 0D:9FA8: B0 04     BCS bra_9FAE_RTS
C - - - - - 0x035FBA 0D:9FAA: A9 02     LDA #$02
C - - - - - 0x035FBC 0D:9FAC: 85 17     STA ram_0017
bra_9FAE_RTS:
C - - - - - 0x035FBE 0D:9FAE: 60        RTS



ofs_9FAF_06:
C - - J - - 0x035FBF 0D:9FAF: A9 00     LDA #$00
C - - - - - 0x035FC1 0D:9FB1: 85 17     STA ram_0017
C - - - - - 0x035FC3 0D:9FB3: BC DE 06  LDY ram_06DE,X
C - - - - - 0x035FC6 0D:9FB6: B9 10 06  LDA ram_0610,Y
C - - - - - 0x035FC9 0D:9FB9: F0 19     BEQ bra_9FD4
C - - - - - 0x035FCB 0D:9FBB: A5 13     LDA ram_0013
C - - - - - 0x035FCD 0D:9FBD: F0 15     BEQ bra_9FD4
C - - - - - 0x035FCF 0D:9FBF: C9 03     CMP #$03
C - - - - - 0x035FD1 0D:9FC1: B0 11     BCS bra_9FD4
C - - - - - 0x035FD3 0D:9FC3: B9 12 06  LDA ram_0612,Y
C - - - - - 0x035FD6 0D:9FC6: C9 0D     CMP #$0D
C - - - - - 0x035FD8 0D:9FC8: D0 03     BNE bra_9FCD
C - - - - - 0x035FDA 0D:9FCA: 4C F7 A0  JMP loc_A0F7
bra_9FCD:
C - - - - - 0x035FDD 0D:9FCD: C9 0A     CMP #$0A
C - - - - - 0x035FDF 0D:9FCF: D0 03     BNE bra_9FD4
C - - - - - 0x035FE1 0D:9FD1: 4C F7 A0  JMP loc_A0F7
bra_9FD4:
C - - - - - 0x035FE4 0D:9FD4: A5 13     LDA ram_0013
C - - - - - 0x035FE6 0D:9FD6: C9 02     CMP #$02
C - - - - - 0x035FE8 0D:9FD8: B0 1F     BCS bra_9FF9
C - - - - - 0x035FEA 0D:9FDA: BD E2 06  LDA ram_06E2,X
C - - - - - 0x035FED 0D:9FDD: C9 25     CMP #$25
C - - - - - 0x035FEF 0D:9FDF: D0 05     BNE bra_9FE6
loc_9FE1:
C D 0 - - - 0x035FF1 0D:9FE1: 4C 3E BF  JMP loc_BF3E


; bzk мусор
- - - - - - 0x035FF4 0D:9FE4: EA        NOP
- - - - - - 0x035FF5 0D:9FE5: 60        RTS



bra_9FE6:
C - - - - - 0x035FF6 0D:9FE6: A5 11     LDA ram_0011
C - - - - - 0x035FF8 0D:9FE8: C9 01     CMP #$01
C - - - - - 0x035FFA 0D:9FEA: D0 0D     BNE bra_9FF9
C - - - - - 0x035FFC 0D:9FEC: 20 C2 EC  JSR sub_0x03ECD2_random_00_03
C - - - - - 0x035FFF 0D:9FEF: B9 F5 9F  LDA tbl_9FF5,Y
C - - - - - 0x036002 0D:9FF2: 4C B1 BE  JMP loc_BEB1



tbl_9FF5:
- D 0 - - - 0x036005 0D:9FF5: 12        .byte $12   ; 00
- D 0 - - - 0x036006 0D:9FF6: 18        .byte $18   ; 01
- D 0 - - - 0x036007 0D:9FF7: 10        .byte $10   ; 02
- D 0 - - - 0x036008 0D:9FF8: 17        .byte $17   ; 03



bra_9FF9:
C - - - - - 0x036009 0D:9FF9: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03600C 0D:9FFC: B9 50 05  LDA ram_0550,Y
C - - - - - 0x03600F 0D:9FFF: 20 32 D0  JSR sub_0x03D042
- D 1 - I - 0x036012 0D:A002: 10 A0     .word ofs_A010_00
- D 1 - I - 0x036014 0D:A004: 46 A0     .word ofs_A046_01
- D 1 - I - 0x036016 0D:A006: 84 A0     .word ofs_A084_02
- D 1 - I - 0x036018 0D:A008: B3 9C     .word ofs_9CB3_03
- D 1 - I - 0x03601A 0D:A00A: 15 A1     .word ofs_A115_04
- D 1 - I - 0x03601C 0D:A00C: 30 A1     .word ofs_A130_05
- D 1 - I - 0x03601E 0D:A00E: 67 A1     .word ofs_A167_06



ofs_A010_00:
C - - J - - 0x036020 0D:A010: 20 8E EC  JSR sub_0x03EC9E
C - - - - - 0x036023 0D:A013: B0 2D     BCS bra_A042_RTS
C - - - - - 0x036025 0D:A015: A5 11     LDA ram_0011
C - - - - - 0x036027 0D:A017: C9 08     CMP #$08
C - - - - - 0x036029 0D:A019: D0 28     BNE bra_A043
C - - - - - 0x03602B 0D:A01B: A5 13     LDA ram_0013
C - - - - - 0x03602D 0D:A01D: C9 03     CMP #$03
C - - - - - 0x03602F 0D:A01F: D0 05     BNE bra_A026
- - - - - - 0x036031 0D:A021: A9 25     LDA #$25
- - - - - - 0x036033 0D:A023: 85 17     STA ram_0017
- - - - - - 0x036035 0D:A025: 60        RTS
bra_A026:
C - - - - - 0x036036 0D:A026: C9 02     CMP #$02
C - - - - - 0x036038 0D:A028: D0 19     BNE bra_A043
C - - - - - 0x03603A 0D:A02A: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x03603D 0D:A02D: C9 38     CMP #$38
C - - - - - 0x03603F 0D:A02F: B0 07     BCS bra_A038
C - - - - - 0x036041 0D:A031: BD 20 05  LDA ram_0520,X
C - - - - - 0x036044 0D:A034: C9 07     CMP #$07
C - - - - - 0x036046 0D:A036: D0 05     BNE bra_A03D
bra_A038:
C - - - - - 0x036048 0D:A038: A9 29     LDA #$29
C - - - - - 0x03604A 0D:A03A: 85 17     STA ram_0017
C - - - - - 0x03604C 0D:A03C: 60        RTS
bra_A03D:
loc_A03D:
C D 1 - - - 0x03604D 0D:A03D: A9 02     LDA #$02
C - - - - - 0x03604F 0D:A03F: 85 17     STA ram_0017
C - - - - - 0x036051 0D:A041: 60        RTS
bra_A042_RTS:
C - - - - - 0x036052 0D:A042: 60        RTS
bra_A043:
C - - - - - 0x036053 0D:A043: 4C 32 9C  JMP loc_9C32



ofs_A046_01:
C - - J - - 0x036056 0D:A046: A5 11     LDA ram_0011
C - - - - - 0x036058 0D:A048: C9 08     CMP #$08
C - - - - - 0x03605A 0D:A04A: D0 23     BNE bra_A06F
C - - - - - 0x03605C 0D:A04C: 4C B3 BF  JMP loc_BFB3



loc_A04F:
C D 1 - - - 0x03605F 0D:A04F: C9 10     CMP #$10
C - - - - - 0x036061 0D:A051: 90 1C     BCC bra_A06F
- - - - - - 0x036063 0D:A053: C9 20     CMP #$20
- - - - - - 0x036065 0D:A055: B0 1B     BCS bra_A072
- - - - - - 0x036067 0D:A057: A5 28     LDA ram_random_1
- - - - - - 0x036069 0D:A059: D0 0A     BNE bra_A065
loc_A05B:
C D 1 - - - 0x03606B 0D:A05B: A9 80     LDA #$80
C - - - - - 0x03606D 0D:A05D: 20 8F ED  JSR sub_0x03ED9F
C - - - - - 0x036070 0D:A060: A9 17     LDA #$17
C - - - - - 0x036072 0D:A062: 85 17     STA ram_0017
C - - - - - 0x036074 0D:A064: 60        RTS
bra_A065:
- - - - - - 0x036075 0D:A065: A9 40     LDA #$40
- - - - - - 0x036077 0D:A067: 20 8F ED  JSR sub_0x03ED9F
loc_A06A:
C D 1 - - - 0x03607A 0D:A06A: A9 42     LDA #$42
C - - - - - 0x03607C 0D:A06C: 85 17     STA ram_0017
C - - - - - 0x03607E 0D:A06E: 60        RTS
bra_A06F:
C - - - - - 0x03607F 0D:A06F: 4C 75 9C  JMP loc_9C75
loc_A072:
bra_A072:
C D 1 - - - 0x036082 0D:A072: 20 FE ED  JSR sub_0x03EE0E
C - - - - - 0x036085 0D:A075: B0 05     BCS bra_A07C
- - - - - - 0x036087 0D:A077: A9 16     LDA #$16
- - - - - - 0x036089 0D:A079: 85 17     STA ram_0017
- - - - - - 0x03608B 0D:A07B: 60        RTS
bra_A07C:
C - - - - - 0x03608C 0D:A07C: A5 13     LDA ram_0013
C - - - - - 0x03608E 0D:A07E: C9 02     CMP #$02
C - - - - - 0x036090 0D:A080: 90 75     BCC bra_A0F7
C - - - - - 0x036092 0D:A082: B0 EB     BCS bra_A06F



ofs_A084_02:
C - - J - - 0x036094 0D:A084: A5 11     LDA ram_0011
C - - - - - 0x036096 0D:A086: C9 08     CMP #$08
C - - - - - 0x036098 0D:A088: F0 05     BEQ bra_A08F
C - - - - - 0x03609A 0D:A08A: D0 02     BNE bra_A08E_RTS
bra_A08C:
C - - - - - 0x03609C 0D:A08C: 85 17     STA ram_0017
bra_A08E_RTS:
C - - - - - 0x03609E 0D:A08E: 60        RTS
bra_A08F:
C - - - - - 0x03609F 0D:A08F: A5 13     LDA ram_0013
C - - - - - 0x0360A1 0D:A091: C9 02     CMP #$02
C - - - - - 0x0360A3 0D:A093: B0 1B     BCS bra_A0B0
C - - - - - 0x0360A5 0D:A095: BC DE 06  LDY ram_06DE,X
C - - - - - 0x0360A8 0D:A098: B9 60 04  LDA ram_0460,Y
C - - - - - 0x0360AB 0D:A09B: 30 F1     BMI bra_A08E_RTS
C - - - - - 0x0360AD 0D:A09D: B9 10 04  LDA ram_0410,Y
C - - - - - 0x0360B0 0D:A0A0: C9 68     CMP #$68
C - - - - - 0x0360B2 0D:A0A2: 90 EA     BCC bra_A08E_RTS
C - - - - - 0x0360B4 0D:A0A4: A5 28     LDA ram_random_1
C - - - - - 0x0360B6 0D:A0A6: 30 04     BMI bra_A0AC
C - - - - - 0x0360B8 0D:A0A8: A9 17     LDA #$17
C - - - - - 0x0360BA 0D:A0AA: D0 E0     BNE bra_A08C
bra_A0AC:
C - - - - - 0x0360BC 0D:A0AC: A9 10     LDA #$10
C - - - - - 0x0360BE 0D:A0AE: D0 DC     BNE bra_A08C
bra_A0B0:
C - - - - - 0x0360C0 0D:A0B0: A9 04     LDA #$04
C - - - - - 0x0360C2 0D:A0B2: 85 17     STA ram_0017
C - - - - - 0x0360C4 0D:A0B4: 60        RTS


; bzk мусор
- - - - - - 0x0360C5 0D:A0B5: A5 13     LDA ram_0013
- - - - - - 0x0360C7 0D:A0B7: F0 2E     BEQ bra_A0E7
- - - - - - 0x0360C9 0D:A0B9: A5 11     LDA ram_0011
- - - - - - 0x0360CB 0D:A0BB: C9 08     CMP #$08
- - - - - - 0x0360CD 0D:A0BD: D0 13     BNE bra_A0D2_RTS
- - - - - - 0x0360CF 0D:A0BF: BC DE 06  LDY ram_06DE,X
- - - - - - 0x0360D2 0D:A0C2: A5 13     LDA ram_0013
- - - - - - 0x0360D4 0D:A0C4: F0 0D     BEQ bra_A0D3
- - - - - - 0x0360D6 0D:A0C6: C9 02     CMP #$02
- - - - - - 0x0360D8 0D:A0C8: F0 22     BEQ bra_A0EC
- - - - - - 0x0360DA 0D:A0CA: C9 03     CMP #$03
- - - - - - 0x0360DC 0D:A0CC: D0 2E     BNE bra_A0FC
- - - - - - 0x0360DE 0D:A0CE: A9 25     LDA #$25
- - - - - - 0x0360E0 0D:A0D0: 85 17     STA ram_0017
bra_A0D2_RTS:
- - - - - - 0x0360E2 0D:A0D2: 60        RTS
bra_A0D3:
- - - - - - 0x0360E3 0D:A0D3: 20 86 EC  JSR sub_0x03EC96
- - - - - - 0x0360E6 0D:A0D6: 09 04     ORA #$04
- - - - - - 0x0360E8 0D:A0D8: 95 8E     STA ram_008E,X
- - - - - - 0x0360EA 0D:A0DA: 95 91     STA ram_0091,X
- - - - - - 0x0360EC 0D:A0DC: 9D C6 06  STA ram_06C6,X
- - - - - - 0x0360EF 0D:A0DF: 9D C8 06  STA ram_06C8,X
- - - - - - 0x0360F2 0D:A0E2: A9 02     LDA #$02
- - - - - - 0x0360F4 0D:A0E4: 85 17     STA ram_0017
- - - - - - 0x0360F6 0D:A0E6: 60        RTS
bra_A0E7:
- - - - - - 0x0360F7 0D:A0E7: A9 03     LDA #$03
- - - - - - 0x0360F9 0D:A0E9: 85 17     STA ram_0017
- - - - - - 0x0360FB 0D:A0EB: 60        RTS
bra_A0EC:
- - - - - - 0x0360FC 0D:A0EC: B9 40 05  LDA ram_0540,Y
- - - - - - 0x0360FF 0D:A0EF: C9 02     CMP #$02
- - - - - - 0x036101 0D:A0F1: 90 09     BCC bra_A0FC
- - - - - - 0x036103 0D:A0F3: C9 04     CMP #$04
- - - - - - 0x036105 0D:A0F5: B0 0A     BCS bra_A101



bra_A0F7:
loc_A0F7:
C D 1 - - - 0x036107 0D:A0F7: 4C 9F A3  JMP loc_A39F


; bzk мусор
- - - - - - 0x03610A 0D:A0FA: EA        NOP
- - - - - - 0x03610B 0D:A0FB: 60        RTS


; bzk мусор
bra_A0FC:
- - - - - - 0x03610C 0D:A0FC: A9 41     LDA #$41
- - - - - - 0x03610E 0D:A0FE: 85 17     STA ram_0017
- - - - - - 0x036110 0D:A100: 60        RTS
bra_A101:
- - - - - - 0x036111 0D:A101: 20 86 EC  JSR sub_0x03EC96
- - - - - - 0x036114 0D:A104: 09 08     ORA #$08
- - - - - - 0x036116 0D:A106: 95 8E     STA ram_008E,X
- - - - - - 0x036118 0D:A108: 95 91     STA ram_0091,X
- - - - - - 0x03611A 0D:A10A: 9D C6 06  STA ram_06C6,X
- - - - - - 0x03611D 0D:A10D: 9D C8 06  STA ram_06C8,X
- - - - - - 0x036120 0D:A110: A9 06     LDA #$06
- - - - - - 0x036122 0D:A112: 85 17     STA ram_0017
- - - - - - 0x036124 0D:A114: 60        RTS



ofs_A115_04:
C - - J - - 0x036125 0D:A115: A5 11     LDA ram_0011
C - - - - - 0x036127 0D:A117: C9 08     CMP #$08
C - - - - - 0x036129 0D:A119: D0 14     BNE bra_A12F_RTS
C - - - - - 0x03612B 0D:A11B: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03612E 0D:A11E: B9 E2 06  LDA ram_06E2,Y
C - - - - - 0x036131 0D:A121: C9 3A     CMP #$3A
C - - - - - 0x036133 0D:A123: F0 06     BEQ bra_A12B
C - - - - - 0x036135 0D:A125: A5 13     LDA ram_0013
C - - - - - 0x036137 0D:A127: C9 02     CMP #$02
C - - - - - 0x036139 0D:A129: B0 04     BCS bra_A12F_RTS
bra_A12B:
C - - - - - 0x03613B 0D:A12B: A9 01     LDA #$01
C - - - - - 0x03613D 0D:A12D: 85 17     STA ram_0017
bra_A12F_RTS:
C - - - - - 0x03613F 0D:A12F: 60        RTS



ofs_A130_05:
C - - J - - 0x036140 0D:A130: A5 11     LDA ram_0011
C - - - - - 0x036142 0D:A132: C9 08     CMP #$08
C - - - - - 0x036144 0D:A134: D0 2B     BNE bra_A161_RTS
C - - - - - 0x036146 0D:A136: BC DE 06  LDY ram_06DE,X
C - - - - - 0x036149 0D:A139: B9 40 05  LDA ram_0540,Y
C - - - - - 0x03614C 0D:A13C: D0 23     BNE bra_A161_RTS
- - - - - - 0x03614E 0D:A13E: A5 13     LDA ram_0013
- - - - - - 0x036150 0D:A140: C9 02     CMP #$02
- - - - - - 0x036152 0D:A142: B0 04     BCS bra_A148
- - - - - - 0x036154 0D:A144: A9 04     LDA #$04
- - - - - - 0x036156 0D:A146: 85 17     STA ram_0017
bra_A148:
- - - - - - 0x036158 0D:A148: A5 13     LDA ram_0013
- - - - - - 0x03615A 0D:A14A: C9 01     CMP #$01
- - - - - - 0x03615C 0D:A14C: D0 13     BNE bra_A161_RTS
- - - - - - 0x03615E 0D:A14E: BD 20 05  LDA ram_0520,X
- - - - - - 0x036161 0D:A151: C9 03     CMP #$03
- - - - - - 0x036163 0D:A153: F0 0C     BEQ bra_A161_RTS
- - - - - - 0x036165 0D:A155: 20 D8 ED  JSR sub_0x03EDE8
- - - - - - 0x036168 0D:A158: EA        NOP
- - - - - - 0x036169 0D:A159: C9 50     CMP #$50
- - - - - - 0x03616B 0D:A15B: B0 05     BCS bra_A162
- - - - - - 0x03616D 0D:A15D: A9 25     LDA #$25
- - - - - - 0x03616F 0D:A15F: 85 17     STA ram_0017
bra_A161_RTS:
C - - - - - 0x036171 0D:A161: 60        RTS
bra_A162:
- - - - - - 0x036172 0D:A162: A9 0C     LDA #$0C
- - - - - - 0x036174 0D:A164: 85 17     STA ram_0017
- - - - - - 0x036176 0D:A166: 60        RTS



ofs_A167_06:
C - - J - - 0x036177 0D:A167: AD F8 06  LDA ram_06F8
C - - - - - 0x03617A 0D:A16A: 30 12     BMI bra_A17E_RTS
C - - - - - 0x03617C 0D:A16C: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x03617F 0D:A16F: C9 11     CMP #$11
C - - - - - 0x036181 0D:A171: 90 0C     BCC bra_A17F
C - - - - - 0x036183 0D:A173: C9 30     CMP #$30
C - - - - - 0x036185 0D:A175: B0 03     BCS bra_A17A
C - - - - - 0x036187 0D:A177: 4C 3D A0  JMP loc_A03D
bra_A17A:
C - - - - - 0x03618A 0D:A17A: A9 18     LDA #$18
C - - - - - 0x03618C 0D:A17C: 85 17     STA ram_0017
bra_A17E_RTS:
C - - - - - 0x03618E 0D:A17E: 60        RTS
bra_A17F:
C - - - - - 0x03618F 0D:A17F: A5 13     LDA ram_0013
C - - - - - 0x036191 0D:A181: D0 FB     BNE bra_A17E_RTS
C - - - - - 0x036193 0D:A183: A9 40     LDA #$40
C - - - - - 0x036195 0D:A185: 20 8F ED  JSR sub_0x03ED9F
C - - - - - 0x036198 0D:A188: A9 24     LDA #$24
C - - - - - 0x03619A 0D:A18A: 85 17     STA ram_0017
C - - - - - 0x03619C 0D:A18C: 60        RTS



tbl_A18D:
- D 1 - - - 0x03619D 0D:A18D: 0A        .byte $0A   ; 00
- D 1 - - - 0x03619E 0D:A18E: 08        .byte $08   ; 01
- D 1 - - - 0x03619F 0D:A18F: 01        .byte $01   ; 02
- D 1 - - - 0x0361A0 0D:A190: 01        .byte $01   ; 03



tbl_A191:
- D 1 - - - 0x0361A1 0D:A191: 10        .byte $10   ; 00
- D 1 - - - 0x0361A2 0D:A192: 0A        .byte $0A   ; 01
- D 1 - - - 0x0361A3 0D:A193: 01        .byte $01   ; 02
- D 1 - - - 0x0361A4 0D:A194: 01        .byte $01   ; 03



tbl_A195:
- D 1 - - - 0x0361A5 0D:A195: 16        .byte $16   ; 00
- D 1 - - - 0x0361A6 0D:A196: 19        .byte $19   ; 01


; bzk мусор
- - - - - - 0x0361A7 0D:A197: EA        .byte $EA   ; 
- - - - - - 0x0361A8 0D:A198: EA        .byte $EA   ; 
- - - - - - 0x0361A9 0D:A199: EA        .byte $EA   ; 



sub_A19A:
C - - - - - 0x0361AA 0D:A19A: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x0361AD 0D:A19D: 49 03     EOR #$03
C - - - - - 0x0361AF 0D:A19F: F0 03     BEQ bra_A1A4_RTS
C - - - - - 0x0361B1 0D:A1A1: BD 50 05  LDA ram_0550,X
bra_A1A4_RTS:
C - - - - - 0x0361B4 0D:A1A4: 60        RTS



.export sub_0x0361B5
sub_0x0361B5:
C - - - - - 0x0361B5 0D:A1A5: CC 25 01  CPY ram_option_difficulty
C - - - - - 0x0361B8 0D:A1A8: B0 02     BCS bra_A1AC_RTS
C - - - - - 0x0361BA 0D:A1AA: A0 00     LDY #$00
bra_A1AC_RTS:
C - - - - - 0x0361BC 0D:A1AC: 60        RTS



sub_A1AD:
C - - - - - 0x0361BD 0D:A1AD: BD 40 04  LDA ram_0440,X
C - - - - - 0x0361C0 0D:A1B0: D9 40 04  CMP ram_0440,Y
C - - - - - 0x0361C3 0D:A1B3: BD 10 05  LDA ram_0510,X
C - - - - - 0x0361C6 0D:A1B6: 90 02     BCC bra_A1BA
C - - - - - 0x0361C8 0D:A1B8: B0 02     BCS bra_A1BC
bra_A1BA:
C - - - - - 0x0361CA 0D:A1BA: F0 02     BEQ bra_A1BE_RTS
bra_A1BC:
C - - - - - 0x0361CC 0D:A1BC: E9 40     SBC #$40
bra_A1BE_RTS:
C - - - - - 0x0361CE 0D:A1BE: 60        RTS



loc_A1BF:
C D 1 - - - 0x0361CF 0D:A1BF: 9D C8 06  STA ram_06C8,X
C - - - - - 0x0361D2 0D:A1C2: BC DE 06  LDY ram_06DE,X
C - - - - - 0x0361D5 0D:A1C5: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x0361D8 0D:A1C8: C9 03     CMP #$03
C - - - - - 0x0361DA 0D:A1CA: D0 25     BNE bra_A1F1_RTS
C - - - - - 0x0361DC 0D:A1CC: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x0361DF 0D:A1CF: C9 07     CMP #$07
C - - - - - 0x0361E1 0D:A1D1: B0 1E     BCS bra_A1F1_RTS
C - - - - - 0x0361E3 0D:A1D3: B9 10 04  LDA ram_0410,Y
C - - - - - 0x0361E6 0D:A1D6: C9 B0     CMP #$B0
C - - - - - 0x0361E8 0D:A1D8: 90 17     BCC bra_A1F1_RTS
C - - - - - 0x0361EA 0D:A1DA: BD 20 05  LDA ram_0520,X
C - - - - - 0x0361ED 0D:A1DD: 19 62 05  ORA ram_0562,Y
C - - - - - 0x0361F0 0D:A1E0: 19 64 05  ORA ram_0564,Y
C - - - - - 0x0361F3 0D:A1E3: 19 80 05  ORA ram_0580,Y
C - - - - - 0x0361F6 0D:A1E6: D0 09     BNE bra_A1F1_RTS
C - - - - - 0x0361F8 0D:A1E8: 20 AD A1  JSR sub_A1AD
C - - - - - 0x0361FB 0D:A1EB: D0 04     BNE bra_A1F1_RTS
C - - - - - 0x0361FD 0D:A1ED: 69 01     ADC #$01
C - - - - - 0x0361FF 0D:A1EF: 95 91     STA ram_0091,X
bra_A1F1_RTS:
C - - - - - 0x036201 0D:A1F1: 60        RTS



sub_A1F2:
C - - - - - 0x036202 0D:A1F2: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x036205 0D:A1F5: C9 03     CMP #$03
C - - - - - 0x036207 0D:A1F7: F0 03     BEQ bra_A1FC
C - - - - - 0x036209 0D:A1F9: 4C 57 80  JMP loc_8057
bra_A1FC:
C - - - - - 0x03620C 0D:A1FC: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03620F 0D:A1FF: BD 54 05  LDA ram_0554,X
C - - - - - 0x036212 0D:A202: C9 36     CMP #$36
C - - - - - 0x036214 0D:A204: D0 20     BNE bra_A226
C - - - - - 0x036216 0D:A206: AD 26 01  LDA ram_option_speed
C - - - - - 0x036219 0D:A209: F0 0E     BEQ bra_A219
C - - - - - 0x03621B 0D:A20B: B9 20 05  LDA ram_0520,Y
C - - - - - 0x03621E 0D:A20E: C9 03     CMP #$03
C - - - - - 0x036220 0D:A210: D0 07     BNE bra_A219
C - - - - - 0x036222 0D:A212: BD 60 05  LDA ram_0560,X
C - - - - - 0x036225 0D:A215: C9 0A     CMP #$0A
C - - - - - 0x036227 0D:A217: 90 05     BCC bra_A21E
bra_A219:
C - - - - - 0x036229 0D:A219: 20 AD A1  JSR sub_A1AD
C - - - - - 0x03622C 0D:A21C: F0 08     BEQ bra_A226
bra_A21E:
C - - - - - 0x03622E 0D:A21E: A9 08     LDA #$08
C - - - - - 0x036230 0D:A220: 9D 33 06  STA ram_0633,X
C - - - - - 0x036233 0D:A223: 4C 59 80  JMP loc_8059
bra_A226:
C - - - - - 0x036236 0D:A226: BD 50 05  LDA ram_0550,X
C - - - - - 0x036239 0D:A229: C9 06     CMP #$06
C - - - - - 0x03623B 0D:A22B: D0 51     BNE bra_A27E
C - - - - - 0x03623D 0D:A22D: 20 B4 A4  JSR sub_A4B4
C - - - - - 0x036240 0D:A230: D0 32     BNE bra_A264
C - - - - - 0x036242 0D:A232: B9 50 05  LDA ram_0550,Y
C - - - - - 0x036245 0D:A235: C9 04     CMP #$04
C - - - - - 0x036247 0D:A237: D0 1A     BNE bra_A253
C - - - - - 0x036249 0D:A239: B9 20 05  LDA ram_0520,Y
C - - - - - 0x03624C 0D:A23C: C9 08     CMP #$08
C - - - - - 0x03624E 0D:A23E: D0 5A     BNE bra_A29A
C - - - - - 0x036250 0D:A240: B9 A0 04  LDA ram_04A0,Y
C - - - - - 0x036253 0D:A243: D0 55     BNE bra_A29A
C - - - - - 0x036255 0D:A245: B9 40 05  LDA ram_0540,Y
C - - - - - 0x036258 0D:A248: C9 02     CMP #$02
C - - - - - 0x03625A 0D:A24A: D0 4E     BNE bra_A29A
C - - - - - 0x03625C 0D:A24C: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x03625F 0D:A24F: C9 18     CMP #$18
C - - - - - 0x036261 0D:A251: 90 27     BCC bra_A27A
bra_A253:
C - - - - - 0x036263 0D:A253: B9 54 05  LDA ram_0554,Y
C - - - - - 0x036266 0D:A256: C9 32     CMP #$32
C - - - - - 0x036268 0D:A258: D0 0A     BNE bra_A264
C - - - - - 0x03626A 0D:A25A: BD 12 06  LDA ram_0612,X
C - - - - - 0x03626D 0D:A25D: 1D 10 06  ORA ram_0610,X
C - - - - - 0x036270 0D:A260: C9 A5     CMP #$A5
C - - - - - 0x036272 0D:A262: F0 16     BEQ bra_A27A
bra_A264:
C - - - - - 0x036274 0D:A264: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x036277 0D:A267: C9 1A     CMP #$1A
C - - - - - 0x036279 0D:A269: B0 13     BCS bra_A27E
C - - - - - 0x03627B 0D:A26B: B9 12 06  LDA ram_0612,Y
C - - - - - 0x03627E 0D:A26E: 19 10 06  ORA ram_0610,Y
C - - - - - 0x036281 0D:A271: C9 88     CMP #$88
C - - - - - 0x036283 0D:A273: D0 09     BNE bra_A27E
C - - - - - 0x036285 0D:A275: BD 2C 06  LDA ram_062C,X
C - - - - - 0x036288 0D:A278: F0 04     BEQ bra_A27E
bra_A27A:
C - - - - - 0x03628A 0D:A27A: A9 40     LDA #$40
C - - - - - 0x03628C 0D:A27C: D0 19     BNE bra_A297
bra_A27E:
C - - - - - 0x03628E 0D:A27E: B9 54 05  LDA ram_0554,Y
C - - - - - 0x036291 0D:A281: C9 38     CMP #$38
C - - - - - 0x036293 0D:A283: D0 15     BNE bra_A29A
C - - - - - 0x036295 0D:A285: BD 10 04  LDA ram_0410,X
C - - - - - 0x036298 0D:A288: C9 AF     CMP #$AF
C - - - - - 0x03629A 0D:A28A: B0 0E     BCS bra_A29A
C - - - - - 0x03629C 0D:A28C: C9 70     CMP #$70
C - - - - - 0x03629E 0D:A28E: 90 0A     BCC bra_A29A
C - - - - - 0x0362A0 0D:A290: BD 60 04  LDA ram_0460,X
C - - - - - 0x0362A3 0D:A293: 30 05     BMI bra_A29A
C - - - - - 0x0362A5 0D:A295: A9 80     LDA #$80
bra_A297:
C - - - - - 0x0362A7 0D:A297: 4C 59 80  JMP loc_8059
bra_A29A:
C - - - - - 0x0362AA 0D:A29A: BC 20 05  LDY ram_0520,X
C - - - - - 0x0362AD 0D:A29D: C0 0A     CPY #$0A
C - - - - - 0x0362AF 0D:A29F: F0 26     BEQ bra_A2C7
C - - - - - 0x0362B1 0D:A2A1: C0 04     CPY #$04
C - - - - - 0x0362B3 0D:A2A3: F0 22     BEQ bra_A2C7
C - - - - - 0x0362B5 0D:A2A5: C0 03     CPY #$03
C - - - - - 0x0362B7 0D:A2A7: D0 2B     BNE bra_A2D4
C - - - - - 0x0362B9 0D:A2A9: BD C0 04  LDA ram_04C0,X
C - - - - - 0x0362BC 0D:A2AC: C9 08     CMP #$08
C - - - - - 0x0362BE 0D:A2AE: F0 17     BEQ bra_A2C7
C - - - - - 0x0362C0 0D:A2B0: C9 07     CMP #$07
C - - - - - 0x0362C2 0D:A2B2: F0 08     BEQ bra_A2BC
C - - - - - 0x0362C4 0D:A2B4: C9 05     CMP #$05
C - - - - - 0x0362C6 0D:A2B6: F0 04     BEQ bra_A2BC
C - - - - - 0x0362C8 0D:A2B8: C9 04     CMP #$04
C - - - - - 0x0362CA 0D:A2BA: D0 18     BNE bra_A2D4
bra_A2BC:
C - - - - - 0x0362CC 0D:A2BC: BC DE 06  LDY ram_06DE,X
C - - - - - 0x0362CF 0D:A2BF: A9 01     LDA #$01
C - - - - - 0x0362D1 0D:A2C1: 9D C0 06  STA ram_06C0,X
C - - - - - 0x0362D4 0D:A2C4: 20 7C A3  JSR sub_A37C
bra_A2C7:
C - - - - - 0x0362D7 0D:A2C7: BD 50 05  LDA ram_0550,X
C - - - - - 0x0362DA 0D:A2CA: 49 06     EOR #$06
C - - - - - 0x0362DC 0D:A2CC: F0 61     BEQ bra_A32F
C - - - - - 0x0362DE 0D:A2CE: A5 8C     LDA ram_random_2
C - - - - - 0x0362E0 0D:A2D0: 29 C0     AND #$C0
C - - - - - 0x0362E2 0D:A2D2: F0 5B     BEQ bra_A32F
bra_A2D4:
C - - - - - 0x0362E4 0D:A2D4: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x0362E7 0D:A2D7: D9 F2 BF  CMP tbl_BFF2,Y
C - - - - - 0x0362EA 0D:A2DA: B0 6D     BCS bra_A349
C - - - - - 0x0362EC 0D:A2DC: BC DE 06  LDY ram_06DE,X
C - - - - - 0x0362EF 0D:A2DF: B9 10 04  LDA ram_0410,Y
C - - - - - 0x0362F2 0D:A2E2: C9 B0     CMP #$B0
C - - - - - 0x0362F4 0D:A2E4: 90 63     BCC bra_A349
C - - - - - 0x0362F6 0D:A2E6: B9 62 05  LDA ram_0562,Y
C - - - - - 0x0362F9 0D:A2E9: 19 64 05  ORA ram_0564,Y
C - - - - - 0x0362FC 0D:A2EC: 19 80 05  ORA ram_0580,Y
C - - - - - 0x0362FF 0D:A2EF: D0 58     BNE bra_A349
C - - - - - 0x036301 0D:A2F1: 20 AD A1  JSR sub_A1AD
C - - - - - 0x036304 0D:A2F4: D0 53     BNE bra_A349
C - - - - - 0x036306 0D:A2F6: BD 20 05  LDA ram_0520,X
C - - - - - 0x036309 0D:A2F9: F0 14     BEQ bra_A30F
C - - - - - 0x03630B 0D:A2FB: C9 01     CMP #$01
C - - - - - 0x03630D 0D:A2FD: F0 35     BEQ bra_A334
C - - - - - 0x03630F 0D:A2FF: C9 07     CMP #$07
C - - - - - 0x036311 0D:A301: D0 46     BNE bra_A349
C - - - - - 0x036313 0D:A303: B9 50 05  LDA ram_0550,Y
C - - - - - 0x036316 0D:A306: D0 41     BNE bra_A349
C - - - - - 0x036318 0D:A308: B9 00 04  LDA ram_0400,Y
C - - - - - 0x03631B 0D:A30B: C9 9A     CMP #$9A
C - - - - - 0x03631D 0D:A30D: F0 20     BEQ bra_A32F
bra_A30F:
C - - - - - 0x03631F 0D:A30F: BD 50 05  LDA ram_0550,X
C - - - - - 0x036322 0D:A312: 49 06     EOR #$06
C - - - - - 0x036324 0D:A314: F0 10     BEQ bra_A326
C - - - - - 0x036326 0D:A316: EA        NOP
C - - - - - 0x036327 0D:A317: EA        NOP
C - - - - - 0x036328 0D:A318: EA        NOP
C - - - - - 0x036329 0D:A319: EA        NOP
C - - - - - 0x03632A 0D:A31A: EA        NOP
C - - - - - 0x03632B 0D:A31B: EA        NOP
C - - - - - 0x03632C 0D:A31C: EA        NOP
C - - - - - 0x03632D 0D:A31D: A5 8C     LDA ram_random_2
C - - - - - 0x03632F 0D:A31F: 1D 10 06  ORA ram_0610,X
C - - - - - 0x036332 0D:A322: 29 80     AND #$80
C - - - - - 0x036334 0D:A324: D0 23     BNE bra_A349
bra_A326:
C - - - - - 0x036336 0D:A326: A9 40     LDA #$40
C - - - - - 0x036338 0D:A328: 95 8E     STA ram_008E,X
C - - - - - 0x03633A 0D:A32A: 69 01     ADC #$01
C - - - - - 0x03633C 0D:A32C: 4C 5B 80  JMP loc_805B
bra_A32F:
C - - - - - 0x03633F 0D:A32F: A9 80     LDA #$80
C - - - - - 0x036341 0D:A331: 4C 59 80  JMP loc_8059
bra_A334:
C - - - - - 0x036344 0D:A334: B9 20 05  LDA ram_0520,Y
C - - - - - 0x036347 0D:A337: C9 04     CMP #$04
C - - - - - 0x036349 0D:A339: F0 0E     BEQ bra_A349
C - - - - - 0x03634B 0D:A33B: BD 50 05  LDA ram_0550,X
C - - - - - 0x03634E 0D:A33E: C9 06     CMP #$06
C - - - - - 0x036350 0D:A340: D0 07     BNE bra_A349
C - - - - - 0x036352 0D:A342: BD 10 04  LDA ram_0410,X
C - - - - - 0x036355 0D:A345: C9 A0     CMP #$A0
C - - - - - 0x036357 0D:A347: B0 E6     BCS bra_A32F
bra_A349:
C - - - - - 0x036359 0D:A349: 4C 57 80  JMP loc_8057



.export loc_0x03635C
loc_0x03635C:
C D 1 - - - 0x03635C 0D:A34C: 9D C6 06  STA ram_06C6,X
C - - - - - 0x03635F 0D:A34F: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x036362 0D:A352: C9 03     CMP #$03
C - - - - - 0x036364 0D:A354: D0 48     BNE bra_A39E_RTS
C - - - - - 0x036366 0D:A356: B9 54 05  LDA ram_0554,Y
C - - - - - 0x036369 0D:A359: C9 30     CMP #$30
C - - - - - 0x03636B 0D:A35B: D0 13     BNE bra_A370
C - - - - - 0x03636D 0D:A35D: 20 AD A1  JSR sub_A1AD
C - - - - - 0x036370 0D:A360: D0 3C     BNE bra_A39E_RTS
C - - - - - 0x036372 0D:A362: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x036375 0D:A365: C9 64     CMP #$64
C - - - - - 0x036377 0D:A367: B0 13     BCS bra_A37C
C - - - - - 0x036379 0D:A369: BD C6 06  LDA ram_06C6,X
C - - - - - 0x03637C 0D:A36C: 09 04     ORA #$04
C - - - - - 0x03637E 0D:A36E: D0 26     BNE bra_A396
bra_A370:
C - - - - - 0x036380 0D:A370: C9 35     CMP #$35
C - - - - - 0x036382 0D:A372: D0 08     BNE bra_A37C
sub_A374:
C - - - - - 0x036384 0D:A374: BD C6 06  LDA ram_06C6,X
C - - - - - 0x036387 0D:A377: 29 03     AND #$03
C - - - - - 0x036389 0D:A379: 9D C6 06  STA ram_06C6,X
bra_A37C:
sub_A37C:
C - - - - - 0x03638C 0D:A37C: B9 44 04  LDA ram_0444,Y
C - - - - - 0x03638F 0D:A37F: F0 1D     BEQ bra_A39E_RTS
C - - - - - 0x036391 0D:A381: BD 40 04  LDA ram_0440,X
C - - - - - 0x036394 0D:A384: D9 40 04  CMP ram_0440,Y
C - - - - - 0x036397 0D:A387: BD C6 06  LDA ram_06C6,X
C - - - - - 0x03639A 0D:A38A: 90 06     BCC bra_A392
C - - - - - 0x03639C 0D:A38C: 29 FD     AND #$FD
C - - - - - 0x03639E 0D:A38E: 09 01     ORA #$01
C - - - - - 0x0363A0 0D:A390: D0 04     BNE bra_A396
bra_A392:
C - - - - - 0x0363A2 0D:A392: 29 FE     AND #$FE
C - - - - - 0x0363A4 0D:A394: 09 02     ORA #$02
bra_A396:
sub_A396:
C - - - - - 0x0363A6 0D:A396: 95 91     STA ram_0091,X
C - - - - - 0x0363A8 0D:A398: 9D C6 06  STA ram_06C6,X
C - - - - - 0x0363AB 0D:A39B: 9D C8 06  STA ram_06C8,X
bra_A39E_RTS:
C - - - - - 0x0363AE 0D:A39E: 60        RTS



loc_A39F:
C D 1 - - - 0x0363AF 0D:A39F: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x0363B2 0D:A3A2: C9 03     CMP #$03
C - - - - - 0x0363B4 0D:A3A4: D0 0D     BNE bra_A3B3
C - - - - - 0x0363B6 0D:A3A6: AC 26 01  LDY ram_option_speed
C - - - - - 0x0363B9 0D:A3A9: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x0363BC 0D:A3AC: D9 FE BF  CMP tbl_BFFE,Y
C - - - - - 0x0363BF 0D:A3AF: A9 04     LDA #$04
C - - - - - 0x0363C1 0D:A3B1: 90 02     BCC bra_A3B5
bra_A3B3:
C - - - - - 0x0363C3 0D:A3B3: A9 24     LDA #$24
bra_A3B5:
C - - - - - 0x0363C5 0D:A3B5: 85 17     STA ram_0017
C - - - - - 0x0363C7 0D:A3B7: 60        RTS



sub_A3B8:
C - - - - - 0x0363C8 0D:A3B8: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x0363CB 0D:A3BB: C9 03     CMP #$03
C - - - - - 0x0363CD 0D:A3BD: D0 41     BNE bra_A400
C - - - - - 0x0363CF 0D:A3BF: BC DE 06  LDY ram_06DE,X
C - - - - - 0x0363D2 0D:A3C2: 20 2B BF  JSR sub_BF2B
C - - - - - 0x0363D5 0D:A3C5: D0 1C     BNE bra_A3E3
C - - - - - 0x0363D7 0D:A3C7: B9 50 05  LDA ram_0550,Y
C - - - - - 0x0363DA 0D:A3CA: C9 02     CMP #$02
C - - - - - 0x0363DC 0D:A3CC: F0 04     BEQ bra_A3D2
C - - - - - 0x0363DE 0D:A3CE: C9 05     CMP #$05
C - - - - - 0x0363E0 0D:A3D0: 90 3B     BCC bra_A40D
bra_A3D2:
C - - - - - 0x0363E2 0D:A3D2: AD 46 04  LDA ram_0446
C - - - - - 0x0363E5 0D:A3D5: DD 40 04  CMP ram_0440,X
C - - - - - 0x0363E8 0D:A3D8: A9 00     LDA #$00
C - - - - - 0x0363EA 0D:A3DA: 6A        ROR
C - - - - - 0x0363EB 0D:A3DB: 6A        ROR
C - - - - - 0x0363EC 0D:A3DC: DD 10 05  CMP ram_0510,X
C - - - - - 0x0363EF 0D:A3DF: D0 23     BNE bra_A404
C - - - - - 0x0363F1 0D:A3E1: F0 2A     BEQ bra_A40D
bra_A3E3:
C - - - - - 0x0363F3 0D:A3E3: B9 54 05  LDA ram_0554,Y
C - - - - - 0x0363F6 0D:A3E6: C9 38     CMP #$38
C - - - - - 0x0363F8 0D:A3E8: F0 30     BEQ bra_A41A
C - - - - - 0x0363FA 0D:A3EA: C9 35     CMP #$35
C - - - - - 0x0363FC 0D:A3EC: F0 2C     BEQ bra_A41A
C - - - - - 0x0363FE 0D:A3EE: C9 30     CMP #$30
C - - - - - 0x036400 0D:A3F0: F0 12     BEQ bra_A404
C - - - - - 0x036402 0D:A3F2: BD 20 05  LDA ram_0520,X
C - - - - - 0x036405 0D:A3F5: C9 03     CMP #$03
C - - - - - 0x036407 0D:A3F7: D0 07     BNE bra_A400
C - - - - - 0x036409 0D:A3F9: BD C0 04  LDA ram_04C0,X
C - - - - - 0x03640C 0D:A3FC: C9 04     CMP #$04
C - - - - - 0x03640E 0D:A3FE: F0 0D     BEQ bra_A40D
bra_A400:
C - - - - - 0x036410 0D:A400: BD C0 06  LDA ram_06C0,X
C - - - - - 0x036413 0D:A403: 60        RTS
bra_A404:
C - - - - - 0x036414 0D:A404: A9 00     LDA #$00
C - - - - - 0x036416 0D:A406: DD 10 05  CMP ram_0510,X
C - - - - - 0x036419 0D:A409: 69 05     ADC #$05
C - - - - - 0x03641B 0D:A40B: D0 07     BNE bra_A414
bra_A40D:
C - - - - - 0x03641D 0D:A40D: A9 00     LDA #$00
C - - - - - 0x03641F 0D:A40F: DD 10 05  CMP ram_0510,X
C - - - - - 0x036422 0D:A412: 69 01     ADC #$01
bra_A414:
C - - - - - 0x036424 0D:A414: 20 96 A3  JSR sub_A396
C - - - - - 0x036427 0D:A417: A9 01     LDA #$01
C - - - - - 0x036429 0D:A419: 60        RTS
bra_A41A:
C - - - - - 0x03642A 0D:A41A: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x03642D 0D:A41D: C9 20     CMP #$20
C - - - - - 0x03642F 0D:A41F: B0 DF     BCS bra_A400
C - - - - - 0x036431 0D:A421: 20 74 A3  JSR sub_A374
C - - - - - 0x036434 0D:A424: A9 01     LDA #$01
C - - - - - 0x036436 0D:A426: 60        RTS



sub_A427:
C - - - - - 0x036437 0D:A427: 9D E2 06  STA ram_06E2,X
C - - - - - 0x03643A 0D:A42A: AC 25 01  LDY ram_option_difficulty
C - - - - - 0x03643D 0D:A42D: C0 03     CPY #$03
C - - - - - 0x03643F 0D:A42F: D0 43     BNE bra_A474_RTS
C - - - - - 0x036441 0D:A431: BC DE 06  LDY ram_06DE,X
C - - - - - 0x036444 0D:A434: BD 50 05  LDA ram_0550,X
C - - - - - 0x036447 0D:A437: C9 06     CMP #$06
C - - - - - 0x036449 0D:A439: D0 39     BNE bra_A474_RTS
C - - - - - 0x03644B 0D:A43B: B9 20 05  LDA ram_0520,Y
C - - - - - 0x03644E 0D:A43E: C9 08     CMP #$08
C - - - - - 0x036450 0D:A440: D0 1F     BNE bra_A461
C - - - - - 0x036452 0D:A442: B9 50 05  LDA ram_0550,Y
C - - - - - 0x036455 0D:A445: C9 05     CMP #$05
C - - - - - 0x036457 0D:A447: D0 2B     BNE bra_A474_RTS
C - - - - - 0x036459 0D:A449: B9 D0 05  LDA ram_05D0,Y
C - - - - - 0x03645C 0D:A44C: F0 26     BEQ bra_A474_RTS
C - - - - - 0x03645E 0D:A44E: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x036461 0D:A451: C9 29     CMP #$29
C - - - - - 0x036463 0D:A453: 90 08     BCC bra_A45D
C - - - - - 0x036465 0D:A455: C9 30     CMP #$30
C - - - - - 0x036467 0D:A457: 90 13     BCC bra_A46C
C - - - - - 0x036469 0D:A459: A9 00     LDA #$00
C - - - - - 0x03646B 0D:A45B: F0 17     BEQ bra_A474_RTS
bra_A45D:
C - - - - - 0x03646D 0D:A45D: A9 42     LDA #$42
C - - - - - 0x03646F 0D:A45F: D0 0D     BNE bra_A46E
bra_A461:
C - - - - - 0x036471 0D:A461: C9 01     CMP #$01
C - - - - - 0x036473 0D:A463: D0 0F     BNE bra_A474_RTS
C - - - - - 0x036475 0D:A465: A9 42     LDA #$42
C - - - - - 0x036477 0D:A467: DD E6 06  CMP ram_06E6,X
C - - - - - 0x03647A 0D:A46A: D0 08     BNE bra_A474_RTS
bra_A46C:
C - - - - - 0x03647C 0D:A46C: A9 17     LDA #$17
bra_A46E:
C - - - - - 0x03647E 0D:A46E: 9D C0 06  STA ram_06C0,X
C - - - - - 0x036481 0D:A471: 9D E2 06  STA ram_06E2,X
bra_A474_RTS:
C - - - - - 0x036484 0D:A474: 60        RTS



loc_A475:
C D 1 - - - 0x036485 0D:A475: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x036488 0D:A478: C9 03     CMP #$03
C - - - - - 0x03648A 0D:A47A: D0 1E     BNE bra_A49A
C - - - - - 0x03648C 0D:A47C: B9 50 05  LDA ram_0550,Y
C - - - - - 0x03648F 0D:A47F: C9 01     CMP #$01
C - - - - - 0x036491 0D:A481: D0 17     BNE bra_A49A
C - - - - - 0x036493 0D:A483: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x036496 0D:A486: C9 60     CMP #$60
C - - - - - 0x036498 0D:A488: B0 10     BCS bra_A49A
C - - - - - 0x03649A 0D:A48A: B9 0C 06  LDA ram_060C,Y
C - - - - - 0x03649D 0D:A48D: C9 08     CMP #$08
C - - - - - 0x03649F 0D:A48F: 90 09     BCC bra_A49A
C - - - - - 0x0364A1 0D:A491: A5 8C     LDA ram_random_2
C - - - - - 0x0364A3 0D:A493: 29 80     AND #$80
C - - - - - 0x0364A5 0D:A495: D0 03     BNE bra_A49A
C - - - - - 0x0364A7 0D:A497: A9 37     LDA #$37
C - - - - - 0x0364A9 0D:A499: 60        RTS
bra_A49A:
C - - - - - 0x0364AA 0D:A49A: A9 25     LDA #$25
C - - - - - 0x0364AC 0D:A49C: 60        RTS



loc_A49D:
C D 1 - - - 0x0364AD 0D:A49D: BD 50 05  LDA ram_0550,X
C - - - - - 0x0364B0 0D:A4A0: C9 06     CMP #$06
C - - - - - 0x0364B2 0D:A4A2: D0 0A     BNE bra_A4AE
C - - - - - 0x0364B4 0D:A4A4: BD C0 06  LDA ram_06C0,X
C - - - - - 0x0364B7 0D:A4A7: C9 40     CMP #$40
C - - - - - 0x0364B9 0D:A4A9: D0 03     BNE bra_A4AE
C - - - - - 0x0364BB 0D:A4AB: 4C EF 83  JMP loc_83EF
bra_A4AE:
C - - - - - 0x0364BE 0D:A4AE: AD D6 06  LDA ram_06D6
C - - - - - 0x0364C1 0D:A4B1: 4C 1D 84  JMP loc_841D



sub_A4B4:
C - - - - - 0x0364C4 0D:A4B4: BD E6 06  LDA ram_06E6,X
C - - - - - 0x0364C7 0D:A4B7: C9 24     CMP #$24
C - - - - - 0x0364C9 0D:A4B9: D0 4C     BNE bra_A507
C - - - - - 0x0364CB 0D:A4BB: BD 20 05  LDA ram_0520,X
C - - - - - 0x0364CE 0D:A4BE: C9 09     CMP #$09
C - - - - - 0x0364D0 0D:A4C0: F0 19     BEQ bra_A4DB
C - - - - - 0x0364D2 0D:A4C2: C9 03     CMP #$03
C - - - - - 0x0364D4 0D:A4C4: D0 41     BNE bra_A507
C - - - - - 0x0364D6 0D:A4C6: BD C0 04  LDA ram_04C0,X
C - - - - - 0x0364D9 0D:A4C9: D0 3C     BNE bra_A507
C - - - - - 0x0364DB 0D:A4CB: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x0364DE 0D:A4CE: C9 18     CMP #$18
C - - - - - 0x0364E0 0D:A4D0: 90 0D     BCC bra_A4DF
C - - - - - 0x0364E2 0D:A4D2: BD 2C 06  LDA ram_062C,X
C - - - - - 0x0364E5 0D:A4D5: C9 14     CMP #$14
C - - - - - 0x0364E7 0D:A4D7: A9 13     LDA #$13
C - - - - - 0x0364E9 0D:A4D9: 90 5C     BCC bra_A537
bra_A4DB:
C - - - - - 0x0364EB 0D:A4DB: A9 01     LDA #$01
C - - - - - 0x0364ED 0D:A4DD: D0 58     BNE bra_A537
bra_A4DF:
C - - - - - 0x0364EF 0D:A4DF: B9 20 05  LDA ram_0520,Y
C - - - - - 0x0364F2 0D:A4E2: C9 01     CMP #$01
C - - - - - 0x0364F4 0D:A4E4: D0 21     BNE bra_A507
C - - - - - 0x0364F6 0D:A4E6: B9 50 05  LDA ram_0550,Y
C - - - - - 0x0364F9 0D:A4E9: C9 04     CMP #$04
C - - - - - 0x0364FB 0D:A4EB: B0 1A     BCS bra_A507
C - - - - - 0x0364FD 0D:A4ED: B9 80 04  LDA ram_0480,Y
C - - - - - 0x036500 0D:A4F0: D0 04     BNE bra_A4F6
C - - - - - 0x036502 0D:A4F2: A9 24     LDA #$24
C - - - - - 0x036504 0D:A4F4: D0 41     BNE bra_A537
bra_A4F6:
C - - - - - 0x036506 0D:A4F6: 7D 10 05  ADC ram_0510,X
C - - - - - 0x036509 0D:A4F9: 30 08     BMI bra_A503
C - - - - - 0x03650B 0D:A4FB: C9 41     CMP #$41
C - - - - - 0x03650D 0D:A4FD: B0 04     BCS bra_A503
C - - - - - 0x03650F 0D:A4FF: A9 25     LDA #$25
C - - - - - 0x036511 0D:A501: D0 34     BNE bra_A537
bra_A503:
C - - - - - 0x036513 0D:A503: A9 0A     LDA #$0A
C - - - - - 0x036515 0D:A505: D0 30     BNE bra_A537
bra_A507:
C - - - - - 0x036517 0D:A507: B9 50 05  LDA ram_0550,Y
C - - - - - 0x03651A 0D:A50A: C9 01     CMP #$01
C - - - - - 0x03651C 0D:A50C: D0 2C     BNE bra_A53A
C - - - - - 0x03651E 0D:A50E: BD F0 05  LDA ram_05F0,X
C - - - - - 0x036521 0D:A511: C9 16     CMP #$16
C - - - - - 0x036523 0D:A513: D0 25     BNE bra_A53A
C - - - - - 0x036525 0D:A515: BD C0 04  LDA ram_04C0,X
C - - - - - 0x036528 0D:A518: C9 06     CMP #$06
C - - - - - 0x03652A 0D:A51A: D0 1E     BNE bra_A53A
C - - - - - 0x03652C 0D:A51C: AD 16 04  LDA ram_0416
C - - - - - 0x03652F 0D:A51F: C9 90     CMP #$90
C - - - - - 0x036531 0D:A521: 90 04     BCC bra_A527
C - - - - - 0x036533 0D:A523: C9 97     CMP #$97
C - - - - - 0x036535 0D:A525: 90 13     BCC bra_A53A
bra_A527:
C - - - - - 0x036537 0D:A527: AC 26 01  LDY ram_option_speed
C - - - - - 0x03653A 0D:A52A: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x03653D 0D:A52D: D9 95 A1  CMP tbl_A195,Y
C - - - - - 0x036540 0D:A530: B0 08     BCS bra_A53A
C - - - - - 0x036542 0D:A532: 20 9B ED  JSR sub_0x03EDAB
C - - - - - 0x036545 0D:A535: A9 40     LDA #$40
bra_A537:
C - - - - - 0x036547 0D:A537: 9D C0 06  STA ram_06C0,X
bra_A53A:
C - - - - - 0x03654A 0D:A53A: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03654D 0D:A53D: BD 20 05  LDA ram_0520,X
C - - - - - 0x036550 0D:A540: 60        RTS


; bzk мусор
- - - - - - 0x036551 0D:A541: FF        .byte $FF   ; 
- - - - - - 0x036552 0D:A542: FF        .byte $FF   ; 
- - - - - - 0x036553 0D:A543: FF        .byte $FF   ; 
- - - - - - 0x036554 0D:A544: FF        .byte $FF   ; 
- - - - - - 0x036555 0D:A545: FF        .byte $FF   ; 
- - - - - - 0x036556 0D:A546: FF        .byte $FF   ; 
- - - - - - 0x036557 0D:A547: FF        .byte $FF   ; 
- - - - - - 0x036558 0D:A548: FF        .byte $FF   ; 
- - - - - - 0x036559 0D:A549: FF        .byte $FF   ; 
- - - - - - 0x03655A 0D:A54A: FF        .byte $FF   ; 
- - - - - - 0x03655B 0D:A54B: FF        .byte $FF   ; 
- - - - - - 0x03655C 0D:A54C: FF        .byte $FF   ; 
- - - - - - 0x03655D 0D:A54D: FF        .byte $FF   ; 
- - - - - - 0x03655E 0D:A54E: FF        .byte $FF   ; 
- - - - - - 0x03655F 0D:A54F: FF        .byte $FF   ; 
- - - - - - 0x036560 0D:A550: FF        .byte $FF   ; 
- - - - - - 0x036561 0D:A551: FF        .byte $FF   ; 
- - - - - - 0x036562 0D:A552: FF        .byte $FF   ; 
- - - - - - 0x036563 0D:A553: FF        .byte $FF   ; 
- - - - - - 0x036564 0D:A554: FF        .byte $FF   ; 
- - - - - - 0x036565 0D:A555: FF        .byte $FF   ; 
- - - - - - 0x036566 0D:A556: FF        .byte $FF   ; 
- - - - - - 0x036567 0D:A557: FF        .byte $FF   ; 
- - - - - - 0x036568 0D:A558: FF        .byte $FF   ; 
- - - - - - 0x036569 0D:A559: FF        .byte $FF   ; 
- - - - - - 0x03656A 0D:A55A: FF        .byte $FF   ; 
- - - - - - 0x03656B 0D:A55B: FF        .byte $FF   ; 
- - - - - - 0x03656C 0D:A55C: FF        .byte $FF   ; 
- - - - - - 0x03656D 0D:A55D: FF        .byte $FF   ; 
- - - - - - 0x03656E 0D:A55E: FF        .byte $FF   ; 
- - - - - - 0x03656F 0D:A55F: FF        .byte $FF   ; 
- - - - - - 0x036570 0D:A560: FF        .byte $FF   ; 
- - - - - - 0x036571 0D:A561: FF        .byte $FF   ; 
- - - - - - 0x036572 0D:A562: FF        .byte $FF   ; 
- - - - - - 0x036573 0D:A563: FF        .byte $FF   ; 
- - - - - - 0x036574 0D:A564: FF        .byte $FF   ; 
- - - - - - 0x036575 0D:A565: FF        .byte $FF   ; 
- - - - - - 0x036576 0D:A566: FF        .byte $FF   ; 
- - - - - - 0x036577 0D:A567: FF        .byte $FF   ; 
- - - - - - 0x036578 0D:A568: FF        .byte $FF   ; 
- - - - - - 0x036579 0D:A569: FF        .byte $FF   ; 
- - - - - - 0x03657A 0D:A56A: FF        .byte $FF   ; 
- - - - - - 0x03657B 0D:A56B: FF        .byte $FF   ; 
- - - - - - 0x03657C 0D:A56C: FF        .byte $FF   ; 
- - - - - - 0x03657D 0D:A56D: FF        .byte $FF   ; 
- - - - - - 0x03657E 0D:A56E: FF        .byte $FF   ; 
- - - - - - 0x03657F 0D:A56F: FF        .byte $FF   ; 
- - - - - - 0x036580 0D:A570: FF        .byte $FF   ; 
- - - - - - 0x036581 0D:A571: FF        .byte $FF   ; 
- - - - - - 0x036582 0D:A572: FF        .byte $FF   ; 
- - - - - - 0x036583 0D:A573: FF        .byte $FF   ; 
- - - - - - 0x036584 0D:A574: FF        .byte $FF   ; 
- - - - - - 0x036585 0D:A575: FF        .byte $FF   ; 
- - - - - - 0x036586 0D:A576: FF        .byte $FF   ; 
- - - - - - 0x036587 0D:A577: FF        .byte $FF   ; 
- - - - - - 0x036588 0D:A578: FF        .byte $FF   ; 
- - - - - - 0x036589 0D:A579: FF        .byte $FF   ; 
- - - - - - 0x03658A 0D:A57A: FF        .byte $FF   ; 
- - - - - - 0x03658B 0D:A57B: FF        .byte $FF   ; 
- - - - - - 0x03658C 0D:A57C: FF        .byte $FF   ; 
- - - - - - 0x03658D 0D:A57D: FF        .byte $FF   ; 
- - - - - - 0x03658E 0D:A57E: FF        .byte $FF   ; 
- - - - - - 0x03658F 0D:A57F: FF        .byte $FF   ; 
- - - - - - 0x036590 0D:A580: FF        .byte $FF   ; 
- - - - - - 0x036591 0D:A581: FF        .byte $FF   ; 
- - - - - - 0x036592 0D:A582: FF        .byte $FF   ; 
- - - - - - 0x036593 0D:A583: FF        .byte $FF   ; 
- - - - - - 0x036594 0D:A584: FF        .byte $FF   ; 
- - - - - - 0x036595 0D:A585: FF        .byte $FF   ; 
- - - - - - 0x036596 0D:A586: FF        .byte $FF   ; 
- - - - - - 0x036597 0D:A587: FF        .byte $FF   ; 
- - - - - - 0x036598 0D:A588: FF        .byte $FF   ; 
- - - - - - 0x036599 0D:A589: FF        .byte $FF   ; 
- - - - - - 0x03659A 0D:A58A: FF        .byte $FF   ; 
- - - - - - 0x03659B 0D:A58B: FF        .byte $FF   ; 
- - - - - - 0x03659C 0D:A58C: FF        .byte $FF   ; 
- - - - - - 0x03659D 0D:A58D: FF        .byte $FF   ; 
- - - - - - 0x03659E 0D:A58E: FF        .byte $FF   ; 
- - - - - - 0x03659F 0D:A58F: FF        .byte $FF   ; 
- - - - - - 0x0365A0 0D:A590: FF        .byte $FF   ; 
- - - - - - 0x0365A1 0D:A591: FF        .byte $FF   ; 
- - - - - - 0x0365A2 0D:A592: FF        .byte $FF   ; 
- - - - - - 0x0365A3 0D:A593: FF        .byte $FF   ; 
- - - - - - 0x0365A4 0D:A594: FF        .byte $FF   ; 
- - - - - - 0x0365A5 0D:A595: FF        .byte $FF   ; 
- - - - - - 0x0365A6 0D:A596: FF        .byte $FF   ; 
- - - - - - 0x0365A7 0D:A597: FF        .byte $FF   ; 
- - - - - - 0x0365A8 0D:A598: FF        .byte $FF   ; 
- - - - - - 0x0365A9 0D:A599: FF        .byte $FF   ; 
- - - - - - 0x0365AA 0D:A59A: FF        .byte $FF   ; 
- - - - - - 0x0365AB 0D:A59B: FF        .byte $FF   ; 
- - - - - - 0x0365AC 0D:A59C: FF        .byte $FF   ; 
- - - - - - 0x0365AD 0D:A59D: FF        .byte $FF   ; 
- - - - - - 0x0365AE 0D:A59E: FF        .byte $FF   ; 
- - - - - - 0x0365AF 0D:A59F: FF        .byte $FF   ; 
- - - - - - 0x0365B0 0D:A5A0: FF        .byte $FF   ; 
- - - - - - 0x0365B1 0D:A5A1: FF        .byte $FF   ; 
- - - - - - 0x0365B2 0D:A5A2: FF        .byte $FF   ; 
- - - - - - 0x0365B3 0D:A5A3: FF        .byte $FF   ; 
- - - - - - 0x0365B4 0D:A5A4: FF        .byte $FF   ; 
- - - - - - 0x0365B5 0D:A5A5: FF        .byte $FF   ; 
- - - - - - 0x0365B6 0D:A5A6: FF        .byte $FF   ; 
- - - - - - 0x0365B7 0D:A5A7: FF        .byte $FF   ; 
- - - - - - 0x0365B8 0D:A5A8: FF        .byte $FF   ; 
- - - - - - 0x0365B9 0D:A5A9: FF        .byte $FF   ; 
- - - - - - 0x0365BA 0D:A5AA: FF        .byte $FF   ; 
- - - - - - 0x0365BB 0D:A5AB: FF        .byte $FF   ; 
- - - - - - 0x0365BC 0D:A5AC: FF        .byte $FF   ; 
- - - - - - 0x0365BD 0D:A5AD: FF        .byte $FF   ; 
- - - - - - 0x0365BE 0D:A5AE: FF        .byte $FF   ; 
- - - - - - 0x0365BF 0D:A5AF: FF        .byte $FF   ; 
- - - - - - 0x0365C0 0D:A5B0: FF        .byte $FF   ; 
- - - - - - 0x0365C1 0D:A5B1: FF        .byte $FF   ; 
- - - - - - 0x0365C2 0D:A5B2: FF        .byte $FF   ; 
- - - - - - 0x0365C3 0D:A5B3: FF        .byte $FF   ; 
- - - - - - 0x0365C4 0D:A5B4: FF        .byte $FF   ; 
- - - - - - 0x0365C5 0D:A5B5: FF        .byte $FF   ; 
- - - - - - 0x0365C6 0D:A5B6: FF        .byte $FF   ; 
- - - - - - 0x0365C7 0D:A5B7: FF        .byte $FF   ; 
- - - - - - 0x0365C8 0D:A5B8: FF        .byte $FF   ; 
- - - - - - 0x0365C9 0D:A5B9: FF        .byte $FF   ; 
- - - - - - 0x0365CA 0D:A5BA: FF        .byte $FF   ; 
- - - - - - 0x0365CB 0D:A5BB: FF        .byte $FF   ; 
- - - - - - 0x0365CC 0D:A5BC: FF        .byte $FF   ; 
- - - - - - 0x0365CD 0D:A5BD: FF        .byte $FF   ; 
- - - - - - 0x0365CE 0D:A5BE: FF        .byte $FF   ; 
- - - - - - 0x0365CF 0D:A5BF: FF        .byte $FF   ; 
- - - - - - 0x0365D0 0D:A5C0: FF        .byte $FF   ; 
- - - - - - 0x0365D1 0D:A5C1: FF        .byte $FF   ; 
- - - - - - 0x0365D2 0D:A5C2: FF        .byte $FF   ; 
- - - - - - 0x0365D3 0D:A5C3: FF        .byte $FF   ; 
- - - - - - 0x0365D4 0D:A5C4: FF        .byte $FF   ; 
- - - - - - 0x0365D5 0D:A5C5: FF        .byte $FF   ; 
- - - - - - 0x0365D6 0D:A5C6: FF        .byte $FF   ; 
- - - - - - 0x0365D7 0D:A5C7: FF        .byte $FF   ; 
- - - - - - 0x0365D8 0D:A5C8: FF        .byte $FF   ; 
- - - - - - 0x0365D9 0D:A5C9: FF        .byte $FF   ; 
- - - - - - 0x0365DA 0D:A5CA: FF        .byte $FF   ; 
- - - - - - 0x0365DB 0D:A5CB: FF        .byte $FF   ; 
- - - - - - 0x0365DC 0D:A5CC: FF        .byte $FF   ; 
- - - - - - 0x0365DD 0D:A5CD: FF        .byte $FF   ; 
- - - - - - 0x0365DE 0D:A5CE: FF        .byte $FF   ; 
- - - - - - 0x0365DF 0D:A5CF: FF        .byte $FF   ; 
- - - - - - 0x0365E0 0D:A5D0: FF        .byte $FF   ; 
- - - - - - 0x0365E1 0D:A5D1: FF        .byte $FF   ; 
- - - - - - 0x0365E2 0D:A5D2: FF        .byte $FF   ; 
- - - - - - 0x0365E3 0D:A5D3: FF        .byte $FF   ; 
- - - - - - 0x0365E4 0D:A5D4: FF        .byte $FF   ; 
- - - - - - 0x0365E5 0D:A5D5: FF        .byte $FF   ; 
- - - - - - 0x0365E6 0D:A5D6: FF        .byte $FF   ; 
- - - - - - 0x0365E7 0D:A5D7: FF        .byte $FF   ; 
- - - - - - 0x0365E8 0D:A5D8: FF        .byte $FF   ; 
- - - - - - 0x0365E9 0D:A5D9: FF        .byte $FF   ; 
- - - - - - 0x0365EA 0D:A5DA: FF        .byte $FF   ; 
- - - - - - 0x0365EB 0D:A5DB: FF        .byte $FF   ; 
- - - - - - 0x0365EC 0D:A5DC: FF        .byte $FF   ; 
- - - - - - 0x0365ED 0D:A5DD: FF        .byte $FF   ; 
- - - - - - 0x0365EE 0D:A5DE: FF        .byte $FF   ; 
- - - - - - 0x0365EF 0D:A5DF: FF        .byte $FF   ; 
- - - - - - 0x0365F0 0D:A5E0: FF        .byte $FF   ; 
- - - - - - 0x0365F1 0D:A5E1: FF        .byte $FF   ; 
- - - - - - 0x0365F2 0D:A5E2: FF        .byte $FF   ; 
- - - - - - 0x0365F3 0D:A5E3: FF        .byte $FF   ; 
- - - - - - 0x0365F4 0D:A5E4: FF        .byte $FF   ; 
- - - - - - 0x0365F5 0D:A5E5: FF        .byte $FF   ; 
- - - - - - 0x0365F6 0D:A5E6: FF        .byte $FF   ; 
- - - - - - 0x0365F7 0D:A5E7: FF        .byte $FF   ; 
- - - - - - 0x0365F8 0D:A5E8: FF        .byte $FF   ; 
- - - - - - 0x0365F9 0D:A5E9: FF        .byte $FF   ; 
- - - - - - 0x0365FA 0D:A5EA: FF        .byte $FF   ; 
- - - - - - 0x0365FB 0D:A5EB: FF        .byte $FF   ; 
- - - - - - 0x0365FC 0D:A5EC: FF        .byte $FF   ; 
- - - - - - 0x0365FD 0D:A5ED: FF        .byte $FF   ; 
- - - - - - 0x0365FE 0D:A5EE: FF        .byte $FF   ; 
- - - - - - 0x0365FF 0D:A5EF: FF        .byte $FF   ; 
- - - - - - 0x036600 0D:A5F0: FF        .byte $FF   ; 
- - - - - - 0x036601 0D:A5F1: FF        .byte $FF   ; 
- - - - - - 0x036602 0D:A5F2: FF        .byte $FF   ; 
- - - - - - 0x036603 0D:A5F3: FF        .byte $FF   ; 
- - - - - - 0x036604 0D:A5F4: FF        .byte $FF   ; 
- - - - - - 0x036605 0D:A5F5: FF        .byte $FF   ; 
- - - - - - 0x036606 0D:A5F6: FF        .byte $FF   ; 
- - - - - - 0x036607 0D:A5F7: FF        .byte $FF   ; 
- - - - - - 0x036608 0D:A5F8: FF        .byte $FF   ; 
- - - - - - 0x036609 0D:A5F9: FF        .byte $FF   ; 
- - - - - - 0x03660A 0D:A5FA: FF        .byte $FF   ; 
- - - - - - 0x03660B 0D:A5FB: FF        .byte $FF   ; 
- - - - - - 0x03660C 0D:A5FC: FF        .byte $FF   ; 
- - - - - - 0x03660D 0D:A5FD: FF        .byte $FF   ; 
- - - - - - 0x03660E 0D:A5FE: FF        .byte $FF   ; 
- - - - - - 0x03660F 0D:A5FF: FF        .byte $FF   ; 
- - - - - - 0x036610 0D:A600: FF        .byte $FF   ; 
- - - - - - 0x036611 0D:A601: FF        .byte $FF   ; 
- - - - - - 0x036612 0D:A602: FF        .byte $FF   ; 
- - - - - - 0x036613 0D:A603: FF        .byte $FF   ; 
- - - - - - 0x036614 0D:A604: FF        .byte $FF   ; 
- - - - - - 0x036615 0D:A605: FF        .byte $FF   ; 
- - - - - - 0x036616 0D:A606: FF        .byte $FF   ; 
- - - - - - 0x036617 0D:A607: FF        .byte $FF   ; 
- - - - - - 0x036618 0D:A608: FF        .byte $FF   ; 
- - - - - - 0x036619 0D:A609: FF        .byte $FF   ; 
- - - - - - 0x03661A 0D:A60A: FF        .byte $FF   ; 
- - - - - - 0x03661B 0D:A60B: FF        .byte $FF   ; 
- - - - - - 0x03661C 0D:A60C: FF        .byte $FF   ; 
- - - - - - 0x03661D 0D:A60D: FF        .byte $FF   ; 
- - - - - - 0x03661E 0D:A60E: FF        .byte $FF   ; 
- - - - - - 0x03661F 0D:A60F: FF        .byte $FF   ; 
- - - - - - 0x036620 0D:A610: FF        .byte $FF   ; 
- - - - - - 0x036621 0D:A611: FF        .byte $FF   ; 
- - - - - - 0x036622 0D:A612: FF        .byte $FF   ; 
- - - - - - 0x036623 0D:A613: FF        .byte $FF   ; 
- - - - - - 0x036624 0D:A614: FF        .byte $FF   ; 
- - - - - - 0x036625 0D:A615: FF        .byte $FF   ; 
- - - - - - 0x036626 0D:A616: FF        .byte $FF   ; 
- - - - - - 0x036627 0D:A617: FF        .byte $FF   ; 
- - - - - - 0x036628 0D:A618: FF        .byte $FF   ; 
- - - - - - 0x036629 0D:A619: FF        .byte $FF   ; 
- - - - - - 0x03662A 0D:A61A: FF        .byte $FF   ; 
- - - - - - 0x03662B 0D:A61B: FF        .byte $FF   ; 
- - - - - - 0x03662C 0D:A61C: FF        .byte $FF   ; 
- - - - - - 0x03662D 0D:A61D: FF        .byte $FF   ; 
- - - - - - 0x03662E 0D:A61E: FF        .byte $FF   ; 
- - - - - - 0x03662F 0D:A61F: FF        .byte $FF   ; 
- - - - - - 0x036630 0D:A620: FF        .byte $FF   ; 
- - - - - - 0x036631 0D:A621: FF        .byte $FF   ; 
- - - - - - 0x036632 0D:A622: FF        .byte $FF   ; 
- - - - - - 0x036633 0D:A623: FF        .byte $FF   ; 
- - - - - - 0x036634 0D:A624: FF        .byte $FF   ; 
- - - - - - 0x036635 0D:A625: FF        .byte $FF   ; 
- - - - - - 0x036636 0D:A626: FF        .byte $FF   ; 
- - - - - - 0x036637 0D:A627: FF        .byte $FF   ; 
- - - - - - 0x036638 0D:A628: FF        .byte $FF   ; 
- - - - - - 0x036639 0D:A629: FF        .byte $FF   ; 
- - - - - - 0x03663A 0D:A62A: FF        .byte $FF   ; 
- - - - - - 0x03663B 0D:A62B: FF        .byte $FF   ; 
- - - - - - 0x03663C 0D:A62C: FF        .byte $FF   ; 
- - - - - - 0x03663D 0D:A62D: FF        .byte $FF   ; 
- - - - - - 0x03663E 0D:A62E: FF        .byte $FF   ; 
- - - - - - 0x03663F 0D:A62F: FF        .byte $FF   ; 
- - - - - - 0x036640 0D:A630: FF        .byte $FF   ; 
- - - - - - 0x036641 0D:A631: FF        .byte $FF   ; 
- - - - - - 0x036642 0D:A632: FF        .byte $FF   ; 
- - - - - - 0x036643 0D:A633: FF        .byte $FF   ; 
- - - - - - 0x036644 0D:A634: FF        .byte $FF   ; 
- - - - - - 0x036645 0D:A635: FF        .byte $FF   ; 
- - - - - - 0x036646 0D:A636: FF        .byte $FF   ; 
- - - - - - 0x036647 0D:A637: FF        .byte $FF   ; 
- - - - - - 0x036648 0D:A638: FF        .byte $FF   ; 
- - - - - - 0x036649 0D:A639: FF        .byte $FF   ; 
- - - - - - 0x03664A 0D:A63A: FF        .byte $FF   ; 
- - - - - - 0x03664B 0D:A63B: FF        .byte $FF   ; 
- - - - - - 0x03664C 0D:A63C: FF        .byte $FF   ; 
- - - - - - 0x03664D 0D:A63D: FF        .byte $FF   ; 
- - - - - - 0x03664E 0D:A63E: FF        .byte $FF   ; 
- - - - - - 0x03664F 0D:A63F: FF        .byte $FF   ; 
- - - - - - 0x036650 0D:A640: FF        .byte $FF   ; 
- - - - - - 0x036651 0D:A641: FF        .byte $FF   ; 
- - - - - - 0x036652 0D:A642: FF        .byte $FF   ; 
- - - - - - 0x036653 0D:A643: FF        .byte $FF   ; 
- - - - - - 0x036654 0D:A644: FF        .byte $FF   ; 
- - - - - - 0x036655 0D:A645: FF        .byte $FF   ; 
- - - - - - 0x036656 0D:A646: FF        .byte $FF   ; 
- - - - - - 0x036657 0D:A647: FF        .byte $FF   ; 
- - - - - - 0x036658 0D:A648: FF        .byte $FF   ; 
- - - - - - 0x036659 0D:A649: FF        .byte $FF   ; 
- - - - - - 0x03665A 0D:A64A: FF        .byte $FF   ; 
- - - - - - 0x03665B 0D:A64B: FF        .byte $FF   ; 
- - - - - - 0x03665C 0D:A64C: FF        .byte $FF   ; 
- - - - - - 0x03665D 0D:A64D: FF        .byte $FF   ; 
- - - - - - 0x03665E 0D:A64E: FF        .byte $FF   ; 
- - - - - - 0x03665F 0D:A64F: FF        .byte $FF   ; 
- - - - - - 0x036660 0D:A650: FF        .byte $FF   ; 
- - - - - - 0x036661 0D:A651: FF        .byte $FF   ; 
- - - - - - 0x036662 0D:A652: FF        .byte $FF   ; 
- - - - - - 0x036663 0D:A653: FF        .byte $FF   ; 
- - - - - - 0x036664 0D:A654: FF        .byte $FF   ; 
- - - - - - 0x036665 0D:A655: FF        .byte $FF   ; 
- - - - - - 0x036666 0D:A656: FF        .byte $FF   ; 
- - - - - - 0x036667 0D:A657: FF        .byte $FF   ; 
- - - - - - 0x036668 0D:A658: FF        .byte $FF   ; 
- - - - - - 0x036669 0D:A659: FF        .byte $FF   ; 
- - - - - - 0x03666A 0D:A65A: FF        .byte $FF   ; 
- - - - - - 0x03666B 0D:A65B: FF        .byte $FF   ; 
- - - - - - 0x03666C 0D:A65C: FF        .byte $FF   ; 
- - - - - - 0x03666D 0D:A65D: FF        .byte $FF   ; 
- - - - - - 0x03666E 0D:A65E: FF        .byte $FF   ; 
- - - - - - 0x03666F 0D:A65F: FF        .byte $FF   ; 
- - - - - - 0x036670 0D:A660: FF        .byte $FF   ; 
- - - - - - 0x036671 0D:A661: FF        .byte $FF   ; 
- - - - - - 0x036672 0D:A662: FF        .byte $FF   ; 
- - - - - - 0x036673 0D:A663: FF        .byte $FF   ; 
- - - - - - 0x036674 0D:A664: FF        .byte $FF   ; 
- - - - - - 0x036675 0D:A665: FF        .byte $FF   ; 
- - - - - - 0x036676 0D:A666: FF        .byte $FF   ; 
- - - - - - 0x036677 0D:A667: FF        .byte $FF   ; 
- - - - - - 0x036678 0D:A668: FF        .byte $FF   ; 
- - - - - - 0x036679 0D:A669: FF        .byte $FF   ; 
- - - - - - 0x03667A 0D:A66A: FF        .byte $FF   ; 
- - - - - - 0x03667B 0D:A66B: FF        .byte $FF   ; 
- - - - - - 0x03667C 0D:A66C: FF        .byte $FF   ; 
- - - - - - 0x03667D 0D:A66D: FF        .byte $FF   ; 
- - - - - - 0x03667E 0D:A66E: FF        .byte $FF   ; 
- - - - - - 0x03667F 0D:A66F: FF        .byte $FF   ; 
- - - - - - 0x036680 0D:A670: FF        .byte $FF   ; 
- - - - - - 0x036681 0D:A671: FF        .byte $FF   ; 
- - - - - - 0x036682 0D:A672: FF        .byte $FF   ; 
- - - - - - 0x036683 0D:A673: FF        .byte $FF   ; 
- - - - - - 0x036684 0D:A674: FF        .byte $FF   ; 
- - - - - - 0x036685 0D:A675: FF        .byte $FF   ; 
- - - - - - 0x036686 0D:A676: FF        .byte $FF   ; 
- - - - - - 0x036687 0D:A677: FF        .byte $FF   ; 
- - - - - - 0x036688 0D:A678: FF        .byte $FF   ; 
- - - - - - 0x036689 0D:A679: FF        .byte $FF   ; 
- - - - - - 0x03668A 0D:A67A: FF        .byte $FF   ; 
- - - - - - 0x03668B 0D:A67B: FF        .byte $FF   ; 
- - - - - - 0x03668C 0D:A67C: FF        .byte $FF   ; 
- - - - - - 0x03668D 0D:A67D: FF        .byte $FF   ; 
- - - - - - 0x03668E 0D:A67E: FF        .byte $FF   ; 
- - - - - - 0x03668F 0D:A67F: FF        .byte $FF   ; 
- - - - - - 0x036690 0D:A680: FF        .byte $FF   ; 
- - - - - - 0x036691 0D:A681: FF        .byte $FF   ; 
- - - - - - 0x036692 0D:A682: FF        .byte $FF   ; 
- - - - - - 0x036693 0D:A683: FF        .byte $FF   ; 
- - - - - - 0x036694 0D:A684: FF        .byte $FF   ; 
- - - - - - 0x036695 0D:A685: FF        .byte $FF   ; 
- - - - - - 0x036696 0D:A686: FF        .byte $FF   ; 
- - - - - - 0x036697 0D:A687: FF        .byte $FF   ; 
- - - - - - 0x036698 0D:A688: FF        .byte $FF   ; 
- - - - - - 0x036699 0D:A689: FF        .byte $FF   ; 
- - - - - - 0x03669A 0D:A68A: FF        .byte $FF   ; 
- - - - - - 0x03669B 0D:A68B: FF        .byte $FF   ; 
- - - - - - 0x03669C 0D:A68C: FF        .byte $FF   ; 
- - - - - - 0x03669D 0D:A68D: FF        .byte $FF   ; 
- - - - - - 0x03669E 0D:A68E: FF        .byte $FF   ; 
- - - - - - 0x03669F 0D:A68F: FF        .byte $FF   ; 
- - - - - - 0x0366A0 0D:A690: FF        .byte $FF   ; 
- - - - - - 0x0366A1 0D:A691: FF        .byte $FF   ; 
- - - - - - 0x0366A2 0D:A692: FF        .byte $FF   ; 
- - - - - - 0x0366A3 0D:A693: FF        .byte $FF   ; 
- - - - - - 0x0366A4 0D:A694: FF        .byte $FF   ; 
- - - - - - 0x0366A5 0D:A695: FF        .byte $FF   ; 
- - - - - - 0x0366A6 0D:A696: FF        .byte $FF   ; 
- - - - - - 0x0366A7 0D:A697: FF        .byte $FF   ; 
- - - - - - 0x0366A8 0D:A698: FF        .byte $FF   ; 
- - - - - - 0x0366A9 0D:A699: FF        .byte $FF   ; 
- - - - - - 0x0366AA 0D:A69A: FF        .byte $FF   ; 
- - - - - - 0x0366AB 0D:A69B: FF        .byte $FF   ; 
- - - - - - 0x0366AC 0D:A69C: FF        .byte $FF   ; 
- - - - - - 0x0366AD 0D:A69D: FF        .byte $FF   ; 
- - - - - - 0x0366AE 0D:A69E: FF        .byte $FF   ; 
- - - - - - 0x0366AF 0D:A69F: FF        .byte $FF   ; 
- - - - - - 0x0366B0 0D:A6A0: FF        .byte $FF   ; 
- - - - - - 0x0366B1 0D:A6A1: FF        .byte $FF   ; 
- - - - - - 0x0366B2 0D:A6A2: FF        .byte $FF   ; 
- - - - - - 0x0366B3 0D:A6A3: FF        .byte $FF   ; 
- - - - - - 0x0366B4 0D:A6A4: FF        .byte $FF   ; 
- - - - - - 0x0366B5 0D:A6A5: FF        .byte $FF   ; 
- - - - - - 0x0366B6 0D:A6A6: FF        .byte $FF   ; 
- - - - - - 0x0366B7 0D:A6A7: FF        .byte $FF   ; 
- - - - - - 0x0366B8 0D:A6A8: FF        .byte $FF   ; 
- - - - - - 0x0366B9 0D:A6A9: FF        .byte $FF   ; 
- - - - - - 0x0366BA 0D:A6AA: FF        .byte $FF   ; 
- - - - - - 0x0366BB 0D:A6AB: FF        .byte $FF   ; 
- - - - - - 0x0366BC 0D:A6AC: FF        .byte $FF   ; 
- - - - - - 0x0366BD 0D:A6AD: FF        .byte $FF   ; 
- - - - - - 0x0366BE 0D:A6AE: FF        .byte $FF   ; 
- - - - - - 0x0366BF 0D:A6AF: FF        .byte $FF   ; 
- - - - - - 0x0366C0 0D:A6B0: FF        .byte $FF   ; 
- - - - - - 0x0366C1 0D:A6B1: FF        .byte $FF   ; 
- - - - - - 0x0366C2 0D:A6B2: FF        .byte $FF   ; 
- - - - - - 0x0366C3 0D:A6B3: FF        .byte $FF   ; 
- - - - - - 0x0366C4 0D:A6B4: FF        .byte $FF   ; 
- - - - - - 0x0366C5 0D:A6B5: FF        .byte $FF   ; 
- - - - - - 0x0366C6 0D:A6B6: FF        .byte $FF   ; 
- - - - - - 0x0366C7 0D:A6B7: FF        .byte $FF   ; 
- - - - - - 0x0366C8 0D:A6B8: FF        .byte $FF   ; 
- - - - - - 0x0366C9 0D:A6B9: FF        .byte $FF   ; 
- - - - - - 0x0366CA 0D:A6BA: FF        .byte $FF   ; 
- - - - - - 0x0366CB 0D:A6BB: FF        .byte $FF   ; 
- - - - - - 0x0366CC 0D:A6BC: FF        .byte $FF   ; 
- - - - - - 0x0366CD 0D:A6BD: FF        .byte $FF   ; 
- - - - - - 0x0366CE 0D:A6BE: FF        .byte $FF   ; 
- - - - - - 0x0366CF 0D:A6BF: FF        .byte $FF   ; 
- - - - - - 0x0366D0 0D:A6C0: FF        .byte $FF   ; 
- - - - - - 0x0366D1 0D:A6C1: FF        .byte $FF   ; 
- - - - - - 0x0366D2 0D:A6C2: FF        .byte $FF   ; 
- - - - - - 0x0366D3 0D:A6C3: FF        .byte $FF   ; 
- - - - - - 0x0366D4 0D:A6C4: FF        .byte $FF   ; 
- - - - - - 0x0366D5 0D:A6C5: FF        .byte $FF   ; 
- - - - - - 0x0366D6 0D:A6C6: FF        .byte $FF   ; 
- - - - - - 0x0366D7 0D:A6C7: FF        .byte $FF   ; 
- - - - - - 0x0366D8 0D:A6C8: FF        .byte $FF   ; 
- - - - - - 0x0366D9 0D:A6C9: FF        .byte $FF   ; 
- - - - - - 0x0366DA 0D:A6CA: FF        .byte $FF   ; 
- - - - - - 0x0366DB 0D:A6CB: FF        .byte $FF   ; 
- - - - - - 0x0366DC 0D:A6CC: FF        .byte $FF   ; 
- - - - - - 0x0366DD 0D:A6CD: FF        .byte $FF   ; 
- - - - - - 0x0366DE 0D:A6CE: FF        .byte $FF   ; 
- - - - - - 0x0366DF 0D:A6CF: FF        .byte $FF   ; 
- - - - - - 0x0366E0 0D:A6D0: FF        .byte $FF   ; 
- - - - - - 0x0366E1 0D:A6D1: FF        .byte $FF   ; 
- - - - - - 0x0366E2 0D:A6D2: FF        .byte $FF   ; 
- - - - - - 0x0366E3 0D:A6D3: FF        .byte $FF   ; 
- - - - - - 0x0366E4 0D:A6D4: FF        .byte $FF   ; 
- - - - - - 0x0366E5 0D:A6D5: FF        .byte $FF   ; 
- - - - - - 0x0366E6 0D:A6D6: FF        .byte $FF   ; 
- - - - - - 0x0366E7 0D:A6D7: FF        .byte $FF   ; 
- - - - - - 0x0366E8 0D:A6D8: FF        .byte $FF   ; 
- - - - - - 0x0366E9 0D:A6D9: FF        .byte $FF   ; 
- - - - - - 0x0366EA 0D:A6DA: FF        .byte $FF   ; 
- - - - - - 0x0366EB 0D:A6DB: FF        .byte $FF   ; 
- - - - - - 0x0366EC 0D:A6DC: FF        .byte $FF   ; 
- - - - - - 0x0366ED 0D:A6DD: FF        .byte $FF   ; 
- - - - - - 0x0366EE 0D:A6DE: FF        .byte $FF   ; 
- - - - - - 0x0366EF 0D:A6DF: FF        .byte $FF   ; 
- - - - - - 0x0366F0 0D:A6E0: FF        .byte $FF   ; 
- - - - - - 0x0366F1 0D:A6E1: FF        .byte $FF   ; 
- - - - - - 0x0366F2 0D:A6E2: FF        .byte $FF   ; 
- - - - - - 0x0366F3 0D:A6E3: FF        .byte $FF   ; 
- - - - - - 0x0366F4 0D:A6E4: FF        .byte $FF   ; 
- - - - - - 0x0366F5 0D:A6E5: FF        .byte $FF   ; 
- - - - - - 0x0366F6 0D:A6E6: FF        .byte $FF   ; 
- - - - - - 0x0366F7 0D:A6E7: FF        .byte $FF   ; 
- - - - - - 0x0366F8 0D:A6E8: FF        .byte $FF   ; 
- - - - - - 0x0366F9 0D:A6E9: FF        .byte $FF   ; 
- - - - - - 0x0366FA 0D:A6EA: FF        .byte $FF   ; 
- - - - - - 0x0366FB 0D:A6EB: FF        .byte $FF   ; 
- - - - - - 0x0366FC 0D:A6EC: FF        .byte $FF   ; 
- - - - - - 0x0366FD 0D:A6ED: FF        .byte $FF   ; 
- - - - - - 0x0366FE 0D:A6EE: FF        .byte $FF   ; 
- - - - - - 0x0366FF 0D:A6EF: FF        .byte $FF   ; 
- - - - - - 0x036700 0D:A6F0: FF        .byte $FF   ; 
- - - - - - 0x036701 0D:A6F1: FF        .byte $FF   ; 
- - - - - - 0x036702 0D:A6F2: FF        .byte $FF   ; 
- - - - - - 0x036703 0D:A6F3: FF        .byte $FF   ; 
- - - - - - 0x036704 0D:A6F4: FF        .byte $FF   ; 
- - - - - - 0x036705 0D:A6F5: FF        .byte $FF   ; 
- - - - - - 0x036706 0D:A6F6: FF        .byte $FF   ; 
- - - - - - 0x036707 0D:A6F7: FF        .byte $FF   ; 
- - - - - - 0x036708 0D:A6F8: FF        .byte $FF   ; 
- - - - - - 0x036709 0D:A6F9: FF        .byte $FF   ; 
- - - - - - 0x03670A 0D:A6FA: FF        .byte $FF   ; 
- - - - - - 0x03670B 0D:A6FB: FF        .byte $FF   ; 
- - - - - - 0x03670C 0D:A6FC: FF        .byte $FF   ; 
- - - - - - 0x03670D 0D:A6FD: FF        .byte $FF   ; 
- - - - - - 0x03670E 0D:A6FE: FF        .byte $FF   ; 
- - - - - - 0x03670F 0D:A6FF: FF        .byte $FF   ; 
- - - - - - 0x036710 0D:A700: FF        .byte $FF   ; 
- - - - - - 0x036711 0D:A701: FF        .byte $FF   ; 
- - - - - - 0x036712 0D:A702: FF        .byte $FF   ; 
- - - - - - 0x036713 0D:A703: FF        .byte $FF   ; 
- - - - - - 0x036714 0D:A704: FF        .byte $FF   ; 
- - - - - - 0x036715 0D:A705: FF        .byte $FF   ; 
- - - - - - 0x036716 0D:A706: FF        .byte $FF   ; 
- - - - - - 0x036717 0D:A707: FF        .byte $FF   ; 
- - - - - - 0x036718 0D:A708: FF        .byte $FF   ; 
- - - - - - 0x036719 0D:A709: FF        .byte $FF   ; 
- - - - - - 0x03671A 0D:A70A: FF        .byte $FF   ; 
- - - - - - 0x03671B 0D:A70B: FF        .byte $FF   ; 
- - - - - - 0x03671C 0D:A70C: FF        .byte $FF   ; 
- - - - - - 0x03671D 0D:A70D: FF        .byte $FF   ; 
- - - - - - 0x03671E 0D:A70E: FF        .byte $FF   ; 
- - - - - - 0x03671F 0D:A70F: FF        .byte $FF   ; 
- - - - - - 0x036720 0D:A710: FF        .byte $FF   ; 
- - - - - - 0x036721 0D:A711: FF        .byte $FF   ; 
- - - - - - 0x036722 0D:A712: FF        .byte $FF   ; 
- - - - - - 0x036723 0D:A713: FF        .byte $FF   ; 
- - - - - - 0x036724 0D:A714: FF        .byte $FF   ; 
- - - - - - 0x036725 0D:A715: FF        .byte $FF   ; 
- - - - - - 0x036726 0D:A716: FF        .byte $FF   ; 
- - - - - - 0x036727 0D:A717: FF        .byte $FF   ; 
- - - - - - 0x036728 0D:A718: FF        .byte $FF   ; 
- - - - - - 0x036729 0D:A719: FF        .byte $FF   ; 
- - - - - - 0x03672A 0D:A71A: FF        .byte $FF   ; 
- - - - - - 0x03672B 0D:A71B: FF        .byte $FF   ; 
- - - - - - 0x03672C 0D:A71C: FF        .byte $FF   ; 
- - - - - - 0x03672D 0D:A71D: FF        .byte $FF   ; 
- - - - - - 0x03672E 0D:A71E: FF        .byte $FF   ; 
- - - - - - 0x03672F 0D:A71F: FF        .byte $FF   ; 
- - - - - - 0x036730 0D:A720: FF        .byte $FF   ; 
- - - - - - 0x036731 0D:A721: FF        .byte $FF   ; 
- - - - - - 0x036732 0D:A722: FF        .byte $FF   ; 
- - - - - - 0x036733 0D:A723: FF        .byte $FF   ; 
- - - - - - 0x036734 0D:A724: FF        .byte $FF   ; 
- - - - - - 0x036735 0D:A725: FF        .byte $FF   ; 
- - - - - - 0x036736 0D:A726: FF        .byte $FF   ; 
- - - - - - 0x036737 0D:A727: FF        .byte $FF   ; 
- - - - - - 0x036738 0D:A728: FF        .byte $FF   ; 
- - - - - - 0x036739 0D:A729: FF        .byte $FF   ; 
- - - - - - 0x03673A 0D:A72A: FF        .byte $FF   ; 
- - - - - - 0x03673B 0D:A72B: FF        .byte $FF   ; 
- - - - - - 0x03673C 0D:A72C: FF        .byte $FF   ; 
- - - - - - 0x03673D 0D:A72D: FF        .byte $FF   ; 
- - - - - - 0x03673E 0D:A72E: FF        .byte $FF   ; 
- - - - - - 0x03673F 0D:A72F: FF        .byte $FF   ; 
- - - - - - 0x036740 0D:A730: FF        .byte $FF   ; 
- - - - - - 0x036741 0D:A731: FF        .byte $FF   ; 
- - - - - - 0x036742 0D:A732: FF        .byte $FF   ; 
- - - - - - 0x036743 0D:A733: FF        .byte $FF   ; 
- - - - - - 0x036744 0D:A734: FF        .byte $FF   ; 
- - - - - - 0x036745 0D:A735: FF        .byte $FF   ; 
- - - - - - 0x036746 0D:A736: FF        .byte $FF   ; 
- - - - - - 0x036747 0D:A737: FF        .byte $FF   ; 
- - - - - - 0x036748 0D:A738: FF        .byte $FF   ; 
- - - - - - 0x036749 0D:A739: FF        .byte $FF   ; 
- - - - - - 0x03674A 0D:A73A: FF        .byte $FF   ; 
- - - - - - 0x03674B 0D:A73B: FF        .byte $FF   ; 
- - - - - - 0x03674C 0D:A73C: FF        .byte $FF   ; 
- - - - - - 0x03674D 0D:A73D: FF        .byte $FF   ; 
- - - - - - 0x03674E 0D:A73E: FF        .byte $FF   ; 
- - - - - - 0x03674F 0D:A73F: FF        .byte $FF   ; 
- - - - - - 0x036750 0D:A740: FF        .byte $FF   ; 
- - - - - - 0x036751 0D:A741: FF        .byte $FF   ; 
- - - - - - 0x036752 0D:A742: FF        .byte $FF   ; 
- - - - - - 0x036753 0D:A743: FF        .byte $FF   ; 
- - - - - - 0x036754 0D:A744: FF        .byte $FF   ; 
- - - - - - 0x036755 0D:A745: FF        .byte $FF   ; 
- - - - - - 0x036756 0D:A746: FF        .byte $FF   ; 
- - - - - - 0x036757 0D:A747: FF        .byte $FF   ; 
- - - - - - 0x036758 0D:A748: FF        .byte $FF   ; 
- - - - - - 0x036759 0D:A749: FF        .byte $FF   ; 
- - - - - - 0x03675A 0D:A74A: FF        .byte $FF   ; 
- - - - - - 0x03675B 0D:A74B: FF        .byte $FF   ; 
- - - - - - 0x03675C 0D:A74C: FF        .byte $FF   ; 
- - - - - - 0x03675D 0D:A74D: FF        .byte $FF   ; 
- - - - - - 0x03675E 0D:A74E: FF        .byte $FF   ; 
- - - - - - 0x03675F 0D:A74F: FF        .byte $FF   ; 
- - - - - - 0x036760 0D:A750: FF        .byte $FF   ; 
- - - - - - 0x036761 0D:A751: FF        .byte $FF   ; 
- - - - - - 0x036762 0D:A752: FF        .byte $FF   ; 
- - - - - - 0x036763 0D:A753: FF        .byte $FF   ; 
- - - - - - 0x036764 0D:A754: FF        .byte $FF   ; 
- - - - - - 0x036765 0D:A755: FF        .byte $FF   ; 
- - - - - - 0x036766 0D:A756: FF        .byte $FF   ; 
- - - - - - 0x036767 0D:A757: FF        .byte $FF   ; 
- - - - - - 0x036768 0D:A758: FF        .byte $FF   ; 
- - - - - - 0x036769 0D:A759: FF        .byte $FF   ; 
- - - - - - 0x03676A 0D:A75A: FF        .byte $FF   ; 
- - - - - - 0x03676B 0D:A75B: FF        .byte $FF   ; 
- - - - - - 0x03676C 0D:A75C: FF        .byte $FF   ; 
- - - - - - 0x03676D 0D:A75D: FF        .byte $FF   ; 
- - - - - - 0x03676E 0D:A75E: FF        .byte $FF   ; 
- - - - - - 0x03676F 0D:A75F: FF        .byte $FF   ; 
- - - - - - 0x036770 0D:A760: FF        .byte $FF   ; 
- - - - - - 0x036771 0D:A761: FF        .byte $FF   ; 
- - - - - - 0x036772 0D:A762: FF        .byte $FF   ; 
- - - - - - 0x036773 0D:A763: FF        .byte $FF   ; 
- - - - - - 0x036774 0D:A764: FF        .byte $FF   ; 
- - - - - - 0x036775 0D:A765: FF        .byte $FF   ; 
- - - - - - 0x036776 0D:A766: FF        .byte $FF   ; 
- - - - - - 0x036777 0D:A767: FF        .byte $FF   ; 
- - - - - - 0x036778 0D:A768: FF        .byte $FF   ; 
- - - - - - 0x036779 0D:A769: FF        .byte $FF   ; 
- - - - - - 0x03677A 0D:A76A: FF        .byte $FF   ; 
- - - - - - 0x03677B 0D:A76B: FF        .byte $FF   ; 
- - - - - - 0x03677C 0D:A76C: FF        .byte $FF   ; 
- - - - - - 0x03677D 0D:A76D: FF        .byte $FF   ; 
- - - - - - 0x03677E 0D:A76E: FF        .byte $FF   ; 
- - - - - - 0x03677F 0D:A76F: FF        .byte $FF   ; 
- - - - - - 0x036780 0D:A770: FF        .byte $FF   ; 
- - - - - - 0x036781 0D:A771: FF        .byte $FF   ; 
- - - - - - 0x036782 0D:A772: FF        .byte $FF   ; 
- - - - - - 0x036783 0D:A773: FF        .byte $FF   ; 
- - - - - - 0x036784 0D:A774: FF        .byte $FF   ; 
- - - - - - 0x036785 0D:A775: FF        .byte $FF   ; 
- - - - - - 0x036786 0D:A776: FF        .byte $FF   ; 
- - - - - - 0x036787 0D:A777: FF        .byte $FF   ; 
- - - - - - 0x036788 0D:A778: FF        .byte $FF   ; 
- - - - - - 0x036789 0D:A779: FF        .byte $FF   ; 
- - - - - - 0x03678A 0D:A77A: FF        .byte $FF   ; 
- - - - - - 0x03678B 0D:A77B: FF        .byte $FF   ; 
- - - - - - 0x03678C 0D:A77C: FF        .byte $FF   ; 
- - - - - - 0x03678D 0D:A77D: FF        .byte $FF   ; 
- - - - - - 0x03678E 0D:A77E: FF        .byte $FF   ; 
- - - - - - 0x03678F 0D:A77F: FF        .byte $FF   ; 
- - - - - - 0x036790 0D:A780: FF        .byte $FF   ; 
- - - - - - 0x036791 0D:A781: FF        .byte $FF   ; 
- - - - - - 0x036792 0D:A782: FF        .byte $FF   ; 
- - - - - - 0x036793 0D:A783: FF        .byte $FF   ; 
- - - - - - 0x036794 0D:A784: FF        .byte $FF   ; 
- - - - - - 0x036795 0D:A785: FF        .byte $FF   ; 
- - - - - - 0x036796 0D:A786: FF        .byte $FF   ; 
- - - - - - 0x036797 0D:A787: FF        .byte $FF   ; 
- - - - - - 0x036798 0D:A788: FF        .byte $FF   ; 
- - - - - - 0x036799 0D:A789: FF        .byte $FF   ; 
- - - - - - 0x03679A 0D:A78A: FF        .byte $FF   ; 
- - - - - - 0x03679B 0D:A78B: FF        .byte $FF   ; 
- - - - - - 0x03679C 0D:A78C: FF        .byte $FF   ; 
- - - - - - 0x03679D 0D:A78D: FF        .byte $FF   ; 
- - - - - - 0x03679E 0D:A78E: FF        .byte $FF   ; 
- - - - - - 0x03679F 0D:A78F: FF        .byte $FF   ; 
- - - - - - 0x0367A0 0D:A790: FF        .byte $FF   ; 
- - - - - - 0x0367A1 0D:A791: FF        .byte $FF   ; 
- - - - - - 0x0367A2 0D:A792: FF        .byte $FF   ; 
- - - - - - 0x0367A3 0D:A793: FF        .byte $FF   ; 
- - - - - - 0x0367A4 0D:A794: FF        .byte $FF   ; 
- - - - - - 0x0367A5 0D:A795: FF        .byte $FF   ; 
- - - - - - 0x0367A6 0D:A796: FF        .byte $FF   ; 
- - - - - - 0x0367A7 0D:A797: FF        .byte $FF   ; 
- - - - - - 0x0367A8 0D:A798: FF        .byte $FF   ; 
- - - - - - 0x0367A9 0D:A799: FF        .byte $FF   ; 
- - - - - - 0x0367AA 0D:A79A: FF        .byte $FF   ; 
- - - - - - 0x0367AB 0D:A79B: FF        .byte $FF   ; 
- - - - - - 0x0367AC 0D:A79C: FF        .byte $FF   ; 
- - - - - - 0x0367AD 0D:A79D: FF        .byte $FF   ; 
- - - - - - 0x0367AE 0D:A79E: FF        .byte $FF   ; 
- - - - - - 0x0367AF 0D:A79F: FF        .byte $FF   ; 
- - - - - - 0x0367B0 0D:A7A0: FF        .byte $FF   ; 
- - - - - - 0x0367B1 0D:A7A1: FF        .byte $FF   ; 
- - - - - - 0x0367B2 0D:A7A2: FF        .byte $FF   ; 
- - - - - - 0x0367B3 0D:A7A3: FF        .byte $FF   ; 
- - - - - - 0x0367B4 0D:A7A4: FF        .byte $FF   ; 
- - - - - - 0x0367B5 0D:A7A5: FF        .byte $FF   ; 
- - - - - - 0x0367B6 0D:A7A6: FF        .byte $FF   ; 
- - - - - - 0x0367B7 0D:A7A7: FF        .byte $FF   ; 
- - - - - - 0x0367B8 0D:A7A8: FF        .byte $FF   ; 
- - - - - - 0x0367B9 0D:A7A9: FF        .byte $FF   ; 
- - - - - - 0x0367BA 0D:A7AA: FF        .byte $FF   ; 
- - - - - - 0x0367BB 0D:A7AB: FF        .byte $FF   ; 
- - - - - - 0x0367BC 0D:A7AC: FF        .byte $FF   ; 
- - - - - - 0x0367BD 0D:A7AD: FF        .byte $FF   ; 
- - - - - - 0x0367BE 0D:A7AE: FF        .byte $FF   ; 
- - - - - - 0x0367BF 0D:A7AF: FF        .byte $FF   ; 
- - - - - - 0x0367C0 0D:A7B0: FF        .byte $FF   ; 
- - - - - - 0x0367C1 0D:A7B1: FF        .byte $FF   ; 
- - - - - - 0x0367C2 0D:A7B2: FF        .byte $FF   ; 
- - - - - - 0x0367C3 0D:A7B3: FF        .byte $FF   ; 
- - - - - - 0x0367C4 0D:A7B4: FF        .byte $FF   ; 
- - - - - - 0x0367C5 0D:A7B5: FF        .byte $FF   ; 
- - - - - - 0x0367C6 0D:A7B6: FF        .byte $FF   ; 
- - - - - - 0x0367C7 0D:A7B7: FF        .byte $FF   ; 
- - - - - - 0x0367C8 0D:A7B8: FF        .byte $FF   ; 
- - - - - - 0x0367C9 0D:A7B9: FF        .byte $FF   ; 
- - - - - - 0x0367CA 0D:A7BA: FF        .byte $FF   ; 
- - - - - - 0x0367CB 0D:A7BB: FF        .byte $FF   ; 
- - - - - - 0x0367CC 0D:A7BC: FF        .byte $FF   ; 
- - - - - - 0x0367CD 0D:A7BD: FF        .byte $FF   ; 
- - - - - - 0x0367CE 0D:A7BE: FF        .byte $FF   ; 
- - - - - - 0x0367CF 0D:A7BF: FF        .byte $FF   ; 
- - - - - - 0x0367D0 0D:A7C0: FF        .byte $FF   ; 
- - - - - - 0x0367D1 0D:A7C1: FF        .byte $FF   ; 
- - - - - - 0x0367D2 0D:A7C2: FF        .byte $FF   ; 
- - - - - - 0x0367D3 0D:A7C3: FF        .byte $FF   ; 
- - - - - - 0x0367D4 0D:A7C4: FF        .byte $FF   ; 
- - - - - - 0x0367D5 0D:A7C5: FF        .byte $FF   ; 
- - - - - - 0x0367D6 0D:A7C6: FF        .byte $FF   ; 
- - - - - - 0x0367D7 0D:A7C7: FF        .byte $FF   ; 
- - - - - - 0x0367D8 0D:A7C8: FF        .byte $FF   ; 
- - - - - - 0x0367D9 0D:A7C9: FF        .byte $FF   ; 
- - - - - - 0x0367DA 0D:A7CA: FF        .byte $FF   ; 
- - - - - - 0x0367DB 0D:A7CB: FF        .byte $FF   ; 
- - - - - - 0x0367DC 0D:A7CC: FF        .byte $FF   ; 
- - - - - - 0x0367DD 0D:A7CD: FF        .byte $FF   ; 
- - - - - - 0x0367DE 0D:A7CE: FF        .byte $FF   ; 
- - - - - - 0x0367DF 0D:A7CF: FF        .byte $FF   ; 
- - - - - - 0x0367E0 0D:A7D0: FF        .byte $FF   ; 
- - - - - - 0x0367E1 0D:A7D1: FF        .byte $FF   ; 
- - - - - - 0x0367E2 0D:A7D2: FF        .byte $FF   ; 
- - - - - - 0x0367E3 0D:A7D3: FF        .byte $FF   ; 
- - - - - - 0x0367E4 0D:A7D4: FF        .byte $FF   ; 
- - - - - - 0x0367E5 0D:A7D5: FF        .byte $FF   ; 
- - - - - - 0x0367E6 0D:A7D6: FF        .byte $FF   ; 
- - - - - - 0x0367E7 0D:A7D7: FF        .byte $FF   ; 
- - - - - - 0x0367E8 0D:A7D8: FF        .byte $FF   ; 
- - - - - - 0x0367E9 0D:A7D9: FF        .byte $FF   ; 
- - - - - - 0x0367EA 0D:A7DA: FF        .byte $FF   ; 
- - - - - - 0x0367EB 0D:A7DB: FF        .byte $FF   ; 
- - - - - - 0x0367EC 0D:A7DC: FF        .byte $FF   ; 
- - - - - - 0x0367ED 0D:A7DD: FF        .byte $FF   ; 
- - - - - - 0x0367EE 0D:A7DE: FF        .byte $FF   ; 
- - - - - - 0x0367EF 0D:A7DF: FF        .byte $FF   ; 
- - - - - - 0x0367F0 0D:A7E0: FF        .byte $FF   ; 
- - - - - - 0x0367F1 0D:A7E1: FF        .byte $FF   ; 
- - - - - - 0x0367F2 0D:A7E2: FF        .byte $FF   ; 
- - - - - - 0x0367F3 0D:A7E3: FF        .byte $FF   ; 
- - - - - - 0x0367F4 0D:A7E4: FF        .byte $FF   ; 
- - - - - - 0x0367F5 0D:A7E5: FF        .byte $FF   ; 
- - - - - - 0x0367F6 0D:A7E6: FF        .byte $FF   ; 
- - - - - - 0x0367F7 0D:A7E7: FF        .byte $FF   ; 
- - - - - - 0x0367F8 0D:A7E8: FF        .byte $FF   ; 
- - - - - - 0x0367F9 0D:A7E9: FF        .byte $FF   ; 
- - - - - - 0x0367FA 0D:A7EA: FF        .byte $FF   ; 
- - - - - - 0x0367FB 0D:A7EB: FF        .byte $FF   ; 
- - - - - - 0x0367FC 0D:A7EC: FF        .byte $FF   ; 
- - - - - - 0x0367FD 0D:A7ED: FF        .byte $FF   ; 
- - - - - - 0x0367FE 0D:A7EE: FF        .byte $FF   ; 
- - - - - - 0x0367FF 0D:A7EF: FF        .byte $FF   ; 
- - - - - - 0x036800 0D:A7F0: FF        .byte $FF   ; 
- - - - - - 0x036801 0D:A7F1: FF        .byte $FF   ; 
- - - - - - 0x036802 0D:A7F2: FF        .byte $FF   ; 
- - - - - - 0x036803 0D:A7F3: FF        .byte $FF   ; 
- - - - - - 0x036804 0D:A7F4: FF        .byte $FF   ; 
- - - - - - 0x036805 0D:A7F5: FF        .byte $FF   ; 
- - - - - - 0x036806 0D:A7F6: FF        .byte $FF   ; 
- - - - - - 0x036807 0D:A7F7: FF        .byte $FF   ; 
- - - - - - 0x036808 0D:A7F8: FF        .byte $FF   ; 
- - - - - - 0x036809 0D:A7F9: FF        .byte $FF   ; 
- - - - - - 0x03680A 0D:A7FA: FF        .byte $FF   ; 
- - - - - - 0x03680B 0D:A7FB: FF        .byte $FF   ; 
- - - - - - 0x03680C 0D:A7FC: FF        .byte $FF   ; 
- - - - - - 0x03680D 0D:A7FD: FF        .byte $FF   ; 
- - - - - - 0x03680E 0D:A7FE: FF        .byte $FF   ; 
- - - - - - 0x03680F 0D:A7FF: FF        .byte $FF   ; 



loc_A800:
C D 1 - - - 0x036810 0D:A800: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x036813 0D:A803: 49 03     EOR #$03
C - - - - - 0x036815 0D:A805: D0 05     BNE bra_A80C
C - - - - - 0x036817 0D:A807: C0 03     CPY #$03
C - - - - - 0x036819 0D:A809: B0 01     BCS bra_A80C
C - - - - - 0x03681B 0D:A80B: A8        TAY
bra_A80C:
C - - - - - 0x03681C 0D:A80C: B9 CA 9B  LDA tbl_9BCA,Y
C - - - - - 0x03681F 0D:A80F: 60        RTS


; bzk мусор
- - - - - - 0x036820 0D:A810: FF        .byte $FF   ; 
- - - - - - 0x036821 0D:A811: FF        .byte $FF   ; 
- - - - - - 0x036822 0D:A812: FF        .byte $FF   ; 
- - - - - - 0x036823 0D:A813: FF        .byte $FF   ; 
- - - - - - 0x036824 0D:A814: FF        .byte $FF   ; 
- - - - - - 0x036825 0D:A815: FF        .byte $FF   ; 
- - - - - - 0x036826 0D:A816: FF        .byte $FF   ; 
- - - - - - 0x036827 0D:A817: FF        .byte $FF   ; 
- - - - - - 0x036828 0D:A818: FF        .byte $FF   ; 
- - - - - - 0x036829 0D:A819: FF        .byte $FF   ; 
- - - - - - 0x03682A 0D:A81A: FF        .byte $FF   ; 
- - - - - - 0x03682B 0D:A81B: FF        .byte $FF   ; 
- - - - - - 0x03682C 0D:A81C: FF        .byte $FF   ; 
- - - - - - 0x03682D 0D:A81D: FF        .byte $FF   ; 
- - - - - - 0x03682E 0D:A81E: FF        .byte $FF   ; 
- - - - - - 0x03682F 0D:A81F: FF        .byte $FF   ; 
- - - - - - 0x036830 0D:A820: FF        .byte $FF   ; 
- - - - - - 0x036831 0D:A821: FF        .byte $FF   ; 
- - - - - - 0x036832 0D:A822: FF        .byte $FF   ; 
- - - - - - 0x036833 0D:A823: FF        .byte $FF   ; 
- - - - - - 0x036834 0D:A824: FF        .byte $FF   ; 
- - - - - - 0x036835 0D:A825: FF        .byte $FF   ; 
- - - - - - 0x036836 0D:A826: FF        .byte $FF   ; 
- - - - - - 0x036837 0D:A827: FF        .byte $FF   ; 
- - - - - - 0x036838 0D:A828: FF        .byte $FF   ; 
- - - - - - 0x036839 0D:A829: FF        .byte $FF   ; 
- - - - - - 0x03683A 0D:A82A: FF        .byte $FF   ; 
- - - - - - 0x03683B 0D:A82B: FF        .byte $FF   ; 
- - - - - - 0x03683C 0D:A82C: FF        .byte $FF   ; 
- - - - - - 0x03683D 0D:A82D: FF        .byte $FF   ; 
- - - - - - 0x03683E 0D:A82E: FF        .byte $FF   ; 
- - - - - - 0x03683F 0D:A82F: FF        .byte $FF   ; 
- - - - - - 0x036840 0D:A830: FF        .byte $FF   ; 
- - - - - - 0x036841 0D:A831: FF        .byte $FF   ; 
- - - - - - 0x036842 0D:A832: FF        .byte $FF   ; 
- - - - - - 0x036843 0D:A833: FF        .byte $FF   ; 
- - - - - - 0x036844 0D:A834: FF        .byte $FF   ; 
- - - - - - 0x036845 0D:A835: FF        .byte $FF   ; 
- - - - - - 0x036846 0D:A836: FF        .byte $FF   ; 
- - - - - - 0x036847 0D:A837: FF        .byte $FF   ; 
- - - - - - 0x036848 0D:A838: FF        .byte $FF   ; 
- - - - - - 0x036849 0D:A839: FF        .byte $FF   ; 
- - - - - - 0x03684A 0D:A83A: FF        .byte $FF   ; 
- - - - - - 0x03684B 0D:A83B: FF        .byte $FF   ; 
- - - - - - 0x03684C 0D:A83C: FF        .byte $FF   ; 
- - - - - - 0x03684D 0D:A83D: FF        .byte $FF   ; 
- - - - - - 0x03684E 0D:A83E: FF        .byte $FF   ; 
- - - - - - 0x03684F 0D:A83F: FF        .byte $FF   ; 
- - - - - - 0x036850 0D:A840: FF        .byte $FF   ; 
- - - - - - 0x036851 0D:A841: FF        .byte $FF   ; 
- - - - - - 0x036852 0D:A842: FF        .byte $FF   ; 
- - - - - - 0x036853 0D:A843: FF        .byte $FF   ; 
- - - - - - 0x036854 0D:A844: FF        .byte $FF   ; 
- - - - - - 0x036855 0D:A845: FF        .byte $FF   ; 
- - - - - - 0x036856 0D:A846: FF        .byte $FF   ; 
- - - - - - 0x036857 0D:A847: FF        .byte $FF   ; 
- - - - - - 0x036858 0D:A848: FF        .byte $FF   ; 
- - - - - - 0x036859 0D:A849: FF        .byte $FF   ; 
- - - - - - 0x03685A 0D:A84A: FF        .byte $FF   ; 
- - - - - - 0x03685B 0D:A84B: FF        .byte $FF   ; 
- - - - - - 0x03685C 0D:A84C: FF        .byte $FF   ; 
- - - - - - 0x03685D 0D:A84D: FF        .byte $FF   ; 
- - - - - - 0x03685E 0D:A84E: FF        .byte $FF   ; 
- - - - - - 0x03685F 0D:A84F: FF        .byte $FF   ; 
- - - - - - 0x036860 0D:A850: FF        .byte $FF   ; 
- - - - - - 0x036861 0D:A851: FF        .byte $FF   ; 
- - - - - - 0x036862 0D:A852: FF        .byte $FF   ; 
- - - - - - 0x036863 0D:A853: FF        .byte $FF   ; 
- - - - - - 0x036864 0D:A854: FF        .byte $FF   ; 
- - - - - - 0x036865 0D:A855: FF        .byte $FF   ; 
- - - - - - 0x036866 0D:A856: FF        .byte $FF   ; 
- - - - - - 0x036867 0D:A857: FF        .byte $FF   ; 
- - - - - - 0x036868 0D:A858: FF        .byte $FF   ; 
- - - - - - 0x036869 0D:A859: FF        .byte $FF   ; 
- - - - - - 0x03686A 0D:A85A: FF        .byte $FF   ; 
- - - - - - 0x03686B 0D:A85B: FF        .byte $FF   ; 
- - - - - - 0x03686C 0D:A85C: FF        .byte $FF   ; 
- - - - - - 0x03686D 0D:A85D: FF        .byte $FF   ; 
- - - - - - 0x03686E 0D:A85E: FF        .byte $FF   ; 
- - - - - - 0x03686F 0D:A85F: FF        .byte $FF   ; 
- - - - - - 0x036870 0D:A860: FF        .byte $FF   ; 
- - - - - - 0x036871 0D:A861: FF        .byte $FF   ; 
- - - - - - 0x036872 0D:A862: FF        .byte $FF   ; 
- - - - - - 0x036873 0D:A863: FF        .byte $FF   ; 
- - - - - - 0x036874 0D:A864: FF        .byte $FF   ; 
- - - - - - 0x036875 0D:A865: FF        .byte $FF   ; 
- - - - - - 0x036876 0D:A866: FF        .byte $FF   ; 
- - - - - - 0x036877 0D:A867: FF        .byte $FF   ; 
- - - - - - 0x036878 0D:A868: FF        .byte $FF   ; 
- - - - - - 0x036879 0D:A869: FF        .byte $FF   ; 
- - - - - - 0x03687A 0D:A86A: FF        .byte $FF   ; 
- - - - - - 0x03687B 0D:A86B: FF        .byte $FF   ; 
- - - - - - 0x03687C 0D:A86C: FF        .byte $FF   ; 
- - - - - - 0x03687D 0D:A86D: FF        .byte $FF   ; 
- - - - - - 0x03687E 0D:A86E: FF        .byte $FF   ; 
- - - - - - 0x03687F 0D:A86F: FF        .byte $FF   ; 
- - - - - - 0x036880 0D:A870: FF        .byte $FF   ; 
- - - - - - 0x036881 0D:A871: FF        .byte $FF   ; 
- - - - - - 0x036882 0D:A872: FF        .byte $FF   ; 
- - - - - - 0x036883 0D:A873: FF        .byte $FF   ; 
- - - - - - 0x036884 0D:A874: FF        .byte $FF   ; 
- - - - - - 0x036885 0D:A875: FF        .byte $FF   ; 
- - - - - - 0x036886 0D:A876: FF        .byte $FF   ; 
- - - - - - 0x036887 0D:A877: FF        .byte $FF   ; 
- - - - - - 0x036888 0D:A878: FF        .byte $FF   ; 
- - - - - - 0x036889 0D:A879: FF        .byte $FF   ; 
- - - - - - 0x03688A 0D:A87A: FF        .byte $FF   ; 
- - - - - - 0x03688B 0D:A87B: FF        .byte $FF   ; 
- - - - - - 0x03688C 0D:A87C: FF        .byte $FF   ; 
- - - - - - 0x03688D 0D:A87D: FF        .byte $FF   ; 
- - - - - - 0x03688E 0D:A87E: FF        .byte $FF   ; 
- - - - - - 0x03688F 0D:A87F: FF        .byte $FF   ; 
- - - - - - 0x036890 0D:A880: FF        .byte $FF   ; 
- - - - - - 0x036891 0D:A881: FF        .byte $FF   ; 
- - - - - - 0x036892 0D:A882: FF        .byte $FF   ; 
- - - - - - 0x036893 0D:A883: FF        .byte $FF   ; 
- - - - - - 0x036894 0D:A884: FF        .byte $FF   ; 
- - - - - - 0x036895 0D:A885: FF        .byte $FF   ; 
- - - - - - 0x036896 0D:A886: FF        .byte $FF   ; 
- - - - - - 0x036897 0D:A887: FF        .byte $FF   ; 
- - - - - - 0x036898 0D:A888: FF        .byte $FF   ; 
- - - - - - 0x036899 0D:A889: FF        .byte $FF   ; 
- - - - - - 0x03689A 0D:A88A: FF        .byte $FF   ; 
- - - - - - 0x03689B 0D:A88B: FF        .byte $FF   ; 
- - - - - - 0x03689C 0D:A88C: FF        .byte $FF   ; 
- - - - - - 0x03689D 0D:A88D: FF        .byte $FF   ; 
- - - - - - 0x03689E 0D:A88E: FF        .byte $FF   ; 
- - - - - - 0x03689F 0D:A88F: FF        .byte $FF   ; 
- - - - - - 0x0368A0 0D:A890: FF        .byte $FF   ; 
- - - - - - 0x0368A1 0D:A891: FF        .byte $FF   ; 
- - - - - - 0x0368A2 0D:A892: FF        .byte $FF   ; 
- - - - - - 0x0368A3 0D:A893: FF        .byte $FF   ; 
- - - - - - 0x0368A4 0D:A894: FF        .byte $FF   ; 
- - - - - - 0x0368A5 0D:A895: FF        .byte $FF   ; 
- - - - - - 0x0368A6 0D:A896: FF        .byte $FF   ; 
- - - - - - 0x0368A7 0D:A897: FF        .byte $FF   ; 
- - - - - - 0x0368A8 0D:A898: FF        .byte $FF   ; 
- - - - - - 0x0368A9 0D:A899: FF        .byte $FF   ; 
- - - - - - 0x0368AA 0D:A89A: FF        .byte $FF   ; 
- - - - - - 0x0368AB 0D:A89B: FF        .byte $FF   ; 
- - - - - - 0x0368AC 0D:A89C: FF        .byte $FF   ; 
- - - - - - 0x0368AD 0D:A89D: FF        .byte $FF   ; 
- - - - - - 0x0368AE 0D:A89E: FF        .byte $FF   ; 
- - - - - - 0x0368AF 0D:A89F: FF        .byte $FF   ; 
- - - - - - 0x0368B0 0D:A8A0: FF        .byte $FF   ; 
- - - - - - 0x0368B1 0D:A8A1: FF        .byte $FF   ; 
- - - - - - 0x0368B2 0D:A8A2: FF        .byte $FF   ; 
- - - - - - 0x0368B3 0D:A8A3: FF        .byte $FF   ; 
- - - - - - 0x0368B4 0D:A8A4: FF        .byte $FF   ; 
- - - - - - 0x0368B5 0D:A8A5: FF        .byte $FF   ; 
- - - - - - 0x0368B6 0D:A8A6: FF        .byte $FF   ; 
- - - - - - 0x0368B7 0D:A8A7: FF        .byte $FF   ; 
- - - - - - 0x0368B8 0D:A8A8: FF        .byte $FF   ; 
- - - - - - 0x0368B9 0D:A8A9: FF        .byte $FF   ; 
- - - - - - 0x0368BA 0D:A8AA: FF        .byte $FF   ; 
- - - - - - 0x0368BB 0D:A8AB: FF        .byte $FF   ; 
- - - - - - 0x0368BC 0D:A8AC: FF        .byte $FF   ; 
- - - - - - 0x0368BD 0D:A8AD: FF        .byte $FF   ; 
- - - - - - 0x0368BE 0D:A8AE: FF        .byte $FF   ; 
- - - - - - 0x0368BF 0D:A8AF: FF        .byte $FF   ; 
- - - - - - 0x0368C0 0D:A8B0: FF        .byte $FF   ; 
- - - - - - 0x0368C1 0D:A8B1: FF        .byte $FF   ; 
- - - - - - 0x0368C2 0D:A8B2: FF        .byte $FF   ; 
- - - - - - 0x0368C3 0D:A8B3: FF        .byte $FF   ; 
- - - - - - 0x0368C4 0D:A8B4: FF        .byte $FF   ; 
- - - - - - 0x0368C5 0D:A8B5: FF        .byte $FF   ; 
- - - - - - 0x0368C6 0D:A8B6: FF        .byte $FF   ; 
- - - - - - 0x0368C7 0D:A8B7: FF        .byte $FF   ; 
- - - - - - 0x0368C8 0D:A8B8: FF        .byte $FF   ; 
- - - - - - 0x0368C9 0D:A8B9: FF        .byte $FF   ; 
- - - - - - 0x0368CA 0D:A8BA: FF        .byte $FF   ; 
- - - - - - 0x0368CB 0D:A8BB: FF        .byte $FF   ; 
- - - - - - 0x0368CC 0D:A8BC: FF        .byte $FF   ; 
- - - - - - 0x0368CD 0D:A8BD: FF        .byte $FF   ; 
- - - - - - 0x0368CE 0D:A8BE: FF        .byte $FF   ; 
- - - - - - 0x0368CF 0D:A8BF: FF        .byte $FF   ; 
- - - - - - 0x0368D0 0D:A8C0: FF        .byte $FF   ; 
- - - - - - 0x0368D1 0D:A8C1: FF        .byte $FF   ; 
- - - - - - 0x0368D2 0D:A8C2: FF        .byte $FF   ; 
- - - - - - 0x0368D3 0D:A8C3: FF        .byte $FF   ; 
- - - - - - 0x0368D4 0D:A8C4: FF        .byte $FF   ; 
- - - - - - 0x0368D5 0D:A8C5: FF        .byte $FF   ; 
- - - - - - 0x0368D6 0D:A8C6: FF        .byte $FF   ; 
- - - - - - 0x0368D7 0D:A8C7: FF        .byte $FF   ; 
- - - - - - 0x0368D8 0D:A8C8: FF        .byte $FF   ; 
- - - - - - 0x0368D9 0D:A8C9: FF        .byte $FF   ; 
- - - - - - 0x0368DA 0D:A8CA: FF        .byte $FF   ; 
- - - - - - 0x0368DB 0D:A8CB: FF        .byte $FF   ; 
- - - - - - 0x0368DC 0D:A8CC: FF        .byte $FF   ; 
- - - - - - 0x0368DD 0D:A8CD: FF        .byte $FF   ; 
- - - - - - 0x0368DE 0D:A8CE: FF        .byte $FF   ; 
- - - - - - 0x0368DF 0D:A8CF: FF        .byte $FF   ; 
- - - - - - 0x0368E0 0D:A8D0: FF        .byte $FF   ; 
- - - - - - 0x0368E1 0D:A8D1: FF        .byte $FF   ; 
- - - - - - 0x0368E2 0D:A8D2: FF        .byte $FF   ; 
- - - - - - 0x0368E3 0D:A8D3: FF        .byte $FF   ; 
- - - - - - 0x0368E4 0D:A8D4: FF        .byte $FF   ; 
- - - - - - 0x0368E5 0D:A8D5: FF        .byte $FF   ; 
- - - - - - 0x0368E6 0D:A8D6: FF        .byte $FF   ; 
- - - - - - 0x0368E7 0D:A8D7: FF        .byte $FF   ; 
- - - - - - 0x0368E8 0D:A8D8: FF        .byte $FF   ; 
- - - - - - 0x0368E9 0D:A8D9: FF        .byte $FF   ; 
- - - - - - 0x0368EA 0D:A8DA: FF        .byte $FF   ; 
- - - - - - 0x0368EB 0D:A8DB: FF        .byte $FF   ; 
- - - - - - 0x0368EC 0D:A8DC: FF        .byte $FF   ; 
- - - - - - 0x0368ED 0D:A8DD: FF        .byte $FF   ; 
- - - - - - 0x0368EE 0D:A8DE: FF        .byte $FF   ; 
- - - - - - 0x0368EF 0D:A8DF: FF        .byte $FF   ; 
- - - - - - 0x0368F0 0D:A8E0: FF        .byte $FF   ; 
- - - - - - 0x0368F1 0D:A8E1: FF        .byte $FF   ; 
- - - - - - 0x0368F2 0D:A8E2: FF        .byte $FF   ; 
- - - - - - 0x0368F3 0D:A8E3: FF        .byte $FF   ; 
- - - - - - 0x0368F4 0D:A8E4: FF        .byte $FF   ; 
- - - - - - 0x0368F5 0D:A8E5: FF        .byte $FF   ; 
- - - - - - 0x0368F6 0D:A8E6: FF        .byte $FF   ; 
- - - - - - 0x0368F7 0D:A8E7: FF        .byte $FF   ; 
- - - - - - 0x0368F8 0D:A8E8: FF        .byte $FF   ; 
- - - - - - 0x0368F9 0D:A8E9: FF        .byte $FF   ; 
- - - - - - 0x0368FA 0D:A8EA: FF        .byte $FF   ; 
- - - - - - 0x0368FB 0D:A8EB: FF        .byte $FF   ; 
- - - - - - 0x0368FC 0D:A8EC: FF        .byte $FF   ; 
- - - - - - 0x0368FD 0D:A8ED: FF        .byte $FF   ; 
- - - - - - 0x0368FE 0D:A8EE: FF        .byte $FF   ; 
- - - - - - 0x0368FF 0D:A8EF: FF        .byte $FF   ; 
- - - - - - 0x036900 0D:A8F0: FF        .byte $FF   ; 
- - - - - - 0x036901 0D:A8F1: FF        .byte $FF   ; 
- - - - - - 0x036902 0D:A8F2: FF        .byte $FF   ; 
- - - - - - 0x036903 0D:A8F3: FF        .byte $FF   ; 
- - - - - - 0x036904 0D:A8F4: FF        .byte $FF   ; 
- - - - - - 0x036905 0D:A8F5: FF        .byte $FF   ; 
- - - - - - 0x036906 0D:A8F6: FF        .byte $FF   ; 
- - - - - - 0x036907 0D:A8F7: FF        .byte $FF   ; 
- - - - - - 0x036908 0D:A8F8: FF        .byte $FF   ; 
- - - - - - 0x036909 0D:A8F9: FF        .byte $FF   ; 
- - - - - - 0x03690A 0D:A8FA: FF        .byte $FF   ; 
- - - - - - 0x03690B 0D:A8FB: FF        .byte $FF   ; 
- - - - - - 0x03690C 0D:A8FC: FF        .byte $FF   ; 
- - - - - - 0x03690D 0D:A8FD: FF        .byte $FF   ; 
- - - - - - 0x03690E 0D:A8FE: FF        .byte $FF   ; 
- - - - - - 0x03690F 0D:A8FF: FF        .byte $FF   ; 
- - - - - - 0x036910 0D:A900: FF        .byte $FF   ; 
- - - - - - 0x036911 0D:A901: FF        .byte $FF   ; 
- - - - - - 0x036912 0D:A902: FF        .byte $FF   ; 
- - - - - - 0x036913 0D:A903: FF        .byte $FF   ; 
- - - - - - 0x036914 0D:A904: FF        .byte $FF   ; 
- - - - - - 0x036915 0D:A905: FF        .byte $FF   ; 
- - - - - - 0x036916 0D:A906: FF        .byte $FF   ; 
- - - - - - 0x036917 0D:A907: FF        .byte $FF   ; 
- - - - - - 0x036918 0D:A908: FF        .byte $FF   ; 
- - - - - - 0x036919 0D:A909: FF        .byte $FF   ; 
- - - - - - 0x03691A 0D:A90A: FF        .byte $FF   ; 
- - - - - - 0x03691B 0D:A90B: FF        .byte $FF   ; 
- - - - - - 0x03691C 0D:A90C: FF        .byte $FF   ; 
- - - - - - 0x03691D 0D:A90D: FF        .byte $FF   ; 
- - - - - - 0x03691E 0D:A90E: FF        .byte $FF   ; 
- - - - - - 0x03691F 0D:A90F: FF        .byte $FF   ; 
- - - - - - 0x036920 0D:A910: FF        .byte $FF   ; 
- - - - - - 0x036921 0D:A911: FF        .byte $FF   ; 
- - - - - - 0x036922 0D:A912: FF        .byte $FF   ; 
- - - - - - 0x036923 0D:A913: FF        .byte $FF   ; 
- - - - - - 0x036924 0D:A914: FF        .byte $FF   ; 
- - - - - - 0x036925 0D:A915: FF        .byte $FF   ; 
- - - - - - 0x036926 0D:A916: FF        .byte $FF   ; 
- - - - - - 0x036927 0D:A917: FF        .byte $FF   ; 
- - - - - - 0x036928 0D:A918: FF        .byte $FF   ; 
- - - - - - 0x036929 0D:A919: FF        .byte $FF   ; 
- - - - - - 0x03692A 0D:A91A: FF        .byte $FF   ; 
- - - - - - 0x03692B 0D:A91B: FF        .byte $FF   ; 
- - - - - - 0x03692C 0D:A91C: FF        .byte $FF   ; 
- - - - - - 0x03692D 0D:A91D: FF        .byte $FF   ; 
- - - - - - 0x03692E 0D:A91E: FF        .byte $FF   ; 
- - - - - - 0x03692F 0D:A91F: FF        .byte $FF   ; 
- - - - - - 0x036930 0D:A920: FF        .byte $FF   ; 
- - - - - - 0x036931 0D:A921: FF        .byte $FF   ; 
- - - - - - 0x036932 0D:A922: FF        .byte $FF   ; 
- - - - - - 0x036933 0D:A923: FF        .byte $FF   ; 
- - - - - - 0x036934 0D:A924: FF        .byte $FF   ; 
- - - - - - 0x036935 0D:A925: FF        .byte $FF   ; 
- - - - - - 0x036936 0D:A926: FF        .byte $FF   ; 
- - - - - - 0x036937 0D:A927: FF        .byte $FF   ; 
- - - - - - 0x036938 0D:A928: FF        .byte $FF   ; 
- - - - - - 0x036939 0D:A929: FF        .byte $FF   ; 
- - - - - - 0x03693A 0D:A92A: FF        .byte $FF   ; 
- - - - - - 0x03693B 0D:A92B: FF        .byte $FF   ; 
- - - - - - 0x03693C 0D:A92C: FF        .byte $FF   ; 
- - - - - - 0x03693D 0D:A92D: FF        .byte $FF   ; 
- - - - - - 0x03693E 0D:A92E: FF        .byte $FF   ; 
- - - - - - 0x03693F 0D:A92F: FF        .byte $FF   ; 
- - - - - - 0x036940 0D:A930: FF        .byte $FF   ; 
- - - - - - 0x036941 0D:A931: FF        .byte $FF   ; 
- - - - - - 0x036942 0D:A932: FF        .byte $FF   ; 
- - - - - - 0x036943 0D:A933: FF        .byte $FF   ; 
- - - - - - 0x036944 0D:A934: FF        .byte $FF   ; 
- - - - - - 0x036945 0D:A935: FF        .byte $FF   ; 
- - - - - - 0x036946 0D:A936: FF        .byte $FF   ; 
- - - - - - 0x036947 0D:A937: FF        .byte $FF   ; 
- - - - - - 0x036948 0D:A938: FF        .byte $FF   ; 
- - - - - - 0x036949 0D:A939: FF        .byte $FF   ; 
- - - - - - 0x03694A 0D:A93A: FF        .byte $FF   ; 
- - - - - - 0x03694B 0D:A93B: FF        .byte $FF   ; 
- - - - - - 0x03694C 0D:A93C: FF        .byte $FF   ; 
- - - - - - 0x03694D 0D:A93D: FF        .byte $FF   ; 
- - - - - - 0x03694E 0D:A93E: FF        .byte $FF   ; 
- - - - - - 0x03694F 0D:A93F: FF        .byte $FF   ; 
- - - - - - 0x036950 0D:A940: FF        .byte $FF   ; 
- - - - - - 0x036951 0D:A941: FF        .byte $FF   ; 
- - - - - - 0x036952 0D:A942: FF        .byte $FF   ; 
- - - - - - 0x036953 0D:A943: FF        .byte $FF   ; 
- - - - - - 0x036954 0D:A944: FF        .byte $FF   ; 
- - - - - - 0x036955 0D:A945: FF        .byte $FF   ; 
- - - - - - 0x036956 0D:A946: FF        .byte $FF   ; 
- - - - - - 0x036957 0D:A947: FF        .byte $FF   ; 
- - - - - - 0x036958 0D:A948: FF        .byte $FF   ; 
- - - - - - 0x036959 0D:A949: FF        .byte $FF   ; 
- - - - - - 0x03695A 0D:A94A: FF        .byte $FF   ; 
- - - - - - 0x03695B 0D:A94B: FF        .byte $FF   ; 
- - - - - - 0x03695C 0D:A94C: FF        .byte $FF   ; 
- - - - - - 0x03695D 0D:A94D: FF        .byte $FF   ; 
- - - - - - 0x03695E 0D:A94E: FF        .byte $FF   ; 
- - - - - - 0x03695F 0D:A94F: FF        .byte $FF   ; 
- - - - - - 0x036960 0D:A950: FF        .byte $FF   ; 
- - - - - - 0x036961 0D:A951: FF        .byte $FF   ; 
- - - - - - 0x036962 0D:A952: FF        .byte $FF   ; 
- - - - - - 0x036963 0D:A953: FF        .byte $FF   ; 
- - - - - - 0x036964 0D:A954: FF        .byte $FF   ; 
- - - - - - 0x036965 0D:A955: FF        .byte $FF   ; 
- - - - - - 0x036966 0D:A956: FF        .byte $FF   ; 
- - - - - - 0x036967 0D:A957: FF        .byte $FF   ; 
- - - - - - 0x036968 0D:A958: FF        .byte $FF   ; 
- - - - - - 0x036969 0D:A959: FF        .byte $FF   ; 
- - - - - - 0x03696A 0D:A95A: FF        .byte $FF   ; 
- - - - - - 0x03696B 0D:A95B: FF        .byte $FF   ; 
- - - - - - 0x03696C 0D:A95C: FF        .byte $FF   ; 
- - - - - - 0x03696D 0D:A95D: FF        .byte $FF   ; 
- - - - - - 0x03696E 0D:A95E: FF        .byte $FF   ; 
- - - - - - 0x03696F 0D:A95F: FF        .byte $FF   ; 
- - - - - - 0x036970 0D:A960: FF        .byte $FF   ; 
- - - - - - 0x036971 0D:A961: FF        .byte $FF   ; 
- - - - - - 0x036972 0D:A962: FF        .byte $FF   ; 
- - - - - - 0x036973 0D:A963: FF        .byte $FF   ; 
- - - - - - 0x036974 0D:A964: FF        .byte $FF   ; 
- - - - - - 0x036975 0D:A965: FF        .byte $FF   ; 
- - - - - - 0x036976 0D:A966: FF        .byte $FF   ; 
- - - - - - 0x036977 0D:A967: FF        .byte $FF   ; 
- - - - - - 0x036978 0D:A968: FF        .byte $FF   ; 
- - - - - - 0x036979 0D:A969: FF        .byte $FF   ; 
- - - - - - 0x03697A 0D:A96A: FF        .byte $FF   ; 
- - - - - - 0x03697B 0D:A96B: FF        .byte $FF   ; 
- - - - - - 0x03697C 0D:A96C: FF        .byte $FF   ; 
- - - - - - 0x03697D 0D:A96D: FF        .byte $FF   ; 
- - - - - - 0x03697E 0D:A96E: FF        .byte $FF   ; 
- - - - - - 0x03697F 0D:A96F: FF        .byte $FF   ; 
- - - - - - 0x036980 0D:A970: FF        .byte $FF   ; 
- - - - - - 0x036981 0D:A971: FF        .byte $FF   ; 
- - - - - - 0x036982 0D:A972: FF        .byte $FF   ; 
- - - - - - 0x036983 0D:A973: FF        .byte $FF   ; 
- - - - - - 0x036984 0D:A974: FF        .byte $FF   ; 
- - - - - - 0x036985 0D:A975: FF        .byte $FF   ; 
- - - - - - 0x036986 0D:A976: FF        .byte $FF   ; 
- - - - - - 0x036987 0D:A977: FF        .byte $FF   ; 
- - - - - - 0x036988 0D:A978: FF        .byte $FF   ; 
- - - - - - 0x036989 0D:A979: FF        .byte $FF   ; 
- - - - - - 0x03698A 0D:A97A: FF        .byte $FF   ; 
- - - - - - 0x03698B 0D:A97B: FF        .byte $FF   ; 
- - - - - - 0x03698C 0D:A97C: FF        .byte $FF   ; 
- - - - - - 0x03698D 0D:A97D: FF        .byte $FF   ; 
- - - - - - 0x03698E 0D:A97E: FF        .byte $FF   ; 
- - - - - - 0x03698F 0D:A97F: FF        .byte $FF   ; 
- - - - - - 0x036990 0D:A980: FF        .byte $FF   ; 
- - - - - - 0x036991 0D:A981: FF        .byte $FF   ; 
- - - - - - 0x036992 0D:A982: FF        .byte $FF   ; 
- - - - - - 0x036993 0D:A983: FF        .byte $FF   ; 
- - - - - - 0x036994 0D:A984: FF        .byte $FF   ; 
- - - - - - 0x036995 0D:A985: FF        .byte $FF   ; 
- - - - - - 0x036996 0D:A986: FF        .byte $FF   ; 
- - - - - - 0x036997 0D:A987: FF        .byte $FF   ; 
- - - - - - 0x036998 0D:A988: FF        .byte $FF   ; 
- - - - - - 0x036999 0D:A989: FF        .byte $FF   ; 
- - - - - - 0x03699A 0D:A98A: FF        .byte $FF   ; 
- - - - - - 0x03699B 0D:A98B: FF        .byte $FF   ; 
- - - - - - 0x03699C 0D:A98C: FF        .byte $FF   ; 
- - - - - - 0x03699D 0D:A98D: FF        .byte $FF   ; 
- - - - - - 0x03699E 0D:A98E: FF        .byte $FF   ; 
- - - - - - 0x03699F 0D:A98F: FF        .byte $FF   ; 
- - - - - - 0x0369A0 0D:A990: FF        .byte $FF   ; 
- - - - - - 0x0369A1 0D:A991: FF        .byte $FF   ; 
- - - - - - 0x0369A2 0D:A992: FF        .byte $FF   ; 
- - - - - - 0x0369A3 0D:A993: FF        .byte $FF   ; 
- - - - - - 0x0369A4 0D:A994: FF        .byte $FF   ; 
- - - - - - 0x0369A5 0D:A995: FF        .byte $FF   ; 
- - - - - - 0x0369A6 0D:A996: FF        .byte $FF   ; 
- - - - - - 0x0369A7 0D:A997: FF        .byte $FF   ; 
- - - - - - 0x0369A8 0D:A998: FF        .byte $FF   ; 
- - - - - - 0x0369A9 0D:A999: FF        .byte $FF   ; 
- - - - - - 0x0369AA 0D:A99A: FF        .byte $FF   ; 
- - - - - - 0x0369AB 0D:A99B: FF        .byte $FF   ; 
- - - - - - 0x0369AC 0D:A99C: FF        .byte $FF   ; 
- - - - - - 0x0369AD 0D:A99D: FF        .byte $FF   ; 
- - - - - - 0x0369AE 0D:A99E: FF        .byte $FF   ; 
- - - - - - 0x0369AF 0D:A99F: FF        .byte $FF   ; 
- - - - - - 0x0369B0 0D:A9A0: FF        .byte $FF   ; 
- - - - - - 0x0369B1 0D:A9A1: FF        .byte $FF   ; 
- - - - - - 0x0369B2 0D:A9A2: FF        .byte $FF   ; 
- - - - - - 0x0369B3 0D:A9A3: FF        .byte $FF   ; 
- - - - - - 0x0369B4 0D:A9A4: FF        .byte $FF   ; 
- - - - - - 0x0369B5 0D:A9A5: FF        .byte $FF   ; 
- - - - - - 0x0369B6 0D:A9A6: FF        .byte $FF   ; 
- - - - - - 0x0369B7 0D:A9A7: FF        .byte $FF   ; 
- - - - - - 0x0369B8 0D:A9A8: FF        .byte $FF   ; 
- - - - - - 0x0369B9 0D:A9A9: FF        .byte $FF   ; 
- - - - - - 0x0369BA 0D:A9AA: FF        .byte $FF   ; 
- - - - - - 0x0369BB 0D:A9AB: FF        .byte $FF   ; 
- - - - - - 0x0369BC 0D:A9AC: FF        .byte $FF   ; 
- - - - - - 0x0369BD 0D:A9AD: FF        .byte $FF   ; 
- - - - - - 0x0369BE 0D:A9AE: FF        .byte $FF   ; 
- - - - - - 0x0369BF 0D:A9AF: FF        .byte $FF   ; 
- - - - - - 0x0369C0 0D:A9B0: FF        .byte $FF   ; 
- - - - - - 0x0369C1 0D:A9B1: FF        .byte $FF   ; 
- - - - - - 0x0369C2 0D:A9B2: FF        .byte $FF   ; 
- - - - - - 0x0369C3 0D:A9B3: FF        .byte $FF   ; 
- - - - - - 0x0369C4 0D:A9B4: FF        .byte $FF   ; 
- - - - - - 0x0369C5 0D:A9B5: FF        .byte $FF   ; 
- - - - - - 0x0369C6 0D:A9B6: FF        .byte $FF   ; 
- - - - - - 0x0369C7 0D:A9B7: FF        .byte $FF   ; 
- - - - - - 0x0369C8 0D:A9B8: FF        .byte $FF   ; 
- - - - - - 0x0369C9 0D:A9B9: FF        .byte $FF   ; 
- - - - - - 0x0369CA 0D:A9BA: FF        .byte $FF   ; 
- - - - - - 0x0369CB 0D:A9BB: FF        .byte $FF   ; 
- - - - - - 0x0369CC 0D:A9BC: FF        .byte $FF   ; 
- - - - - - 0x0369CD 0D:A9BD: FF        .byte $FF   ; 
- - - - - - 0x0369CE 0D:A9BE: FF        .byte $FF   ; 
- - - - - - 0x0369CF 0D:A9BF: FF        .byte $FF   ; 
- - - - - - 0x0369D0 0D:A9C0: FF        .byte $FF   ; 
- - - - - - 0x0369D1 0D:A9C1: FF        .byte $FF   ; 
- - - - - - 0x0369D2 0D:A9C2: FF        .byte $FF   ; 
- - - - - - 0x0369D3 0D:A9C3: FF        .byte $FF   ; 
- - - - - - 0x0369D4 0D:A9C4: FF        .byte $FF   ; 
- - - - - - 0x0369D5 0D:A9C5: FF        .byte $FF   ; 
- - - - - - 0x0369D6 0D:A9C6: FF        .byte $FF   ; 
- - - - - - 0x0369D7 0D:A9C7: FF        .byte $FF   ; 
- - - - - - 0x0369D8 0D:A9C8: FF        .byte $FF   ; 
- - - - - - 0x0369D9 0D:A9C9: FF        .byte $FF   ; 
- - - - - - 0x0369DA 0D:A9CA: FF        .byte $FF   ; 
- - - - - - 0x0369DB 0D:A9CB: FF        .byte $FF   ; 
- - - - - - 0x0369DC 0D:A9CC: FF        .byte $FF   ; 
- - - - - - 0x0369DD 0D:A9CD: FF        .byte $FF   ; 
- - - - - - 0x0369DE 0D:A9CE: FF        .byte $FF   ; 
- - - - - - 0x0369DF 0D:A9CF: FF        .byte $FF   ; 
- - - - - - 0x0369E0 0D:A9D0: FF        .byte $FF   ; 
- - - - - - 0x0369E1 0D:A9D1: FF        .byte $FF   ; 
- - - - - - 0x0369E2 0D:A9D2: FF        .byte $FF   ; 
- - - - - - 0x0369E3 0D:A9D3: FF        .byte $FF   ; 
- - - - - - 0x0369E4 0D:A9D4: FF        .byte $FF   ; 
- - - - - - 0x0369E5 0D:A9D5: FF        .byte $FF   ; 
- - - - - - 0x0369E6 0D:A9D6: FF        .byte $FF   ; 
- - - - - - 0x0369E7 0D:A9D7: FF        .byte $FF   ; 
- - - - - - 0x0369E8 0D:A9D8: FF        .byte $FF   ; 
- - - - - - 0x0369E9 0D:A9D9: FF        .byte $FF   ; 
- - - - - - 0x0369EA 0D:A9DA: FF        .byte $FF   ; 
- - - - - - 0x0369EB 0D:A9DB: FF        .byte $FF   ; 
- - - - - - 0x0369EC 0D:A9DC: FF        .byte $FF   ; 
- - - - - - 0x0369ED 0D:A9DD: FF        .byte $FF   ; 
- - - - - - 0x0369EE 0D:A9DE: FF        .byte $FF   ; 
- - - - - - 0x0369EF 0D:A9DF: FF        .byte $FF   ; 
- - - - - - 0x0369F0 0D:A9E0: FF        .byte $FF   ; 
- - - - - - 0x0369F1 0D:A9E1: FF        .byte $FF   ; 
- - - - - - 0x0369F2 0D:A9E2: FF        .byte $FF   ; 
- - - - - - 0x0369F3 0D:A9E3: FF        .byte $FF   ; 
- - - - - - 0x0369F4 0D:A9E4: FF        .byte $FF   ; 
- - - - - - 0x0369F5 0D:A9E5: FF        .byte $FF   ; 
- - - - - - 0x0369F6 0D:A9E6: FF        .byte $FF   ; 
- - - - - - 0x0369F7 0D:A9E7: FF        .byte $FF   ; 
- - - - - - 0x0369F8 0D:A9E8: FF        .byte $FF   ; 
- - - - - - 0x0369F9 0D:A9E9: FF        .byte $FF   ; 
- - - - - - 0x0369FA 0D:A9EA: FF        .byte $FF   ; 
- - - - - - 0x0369FB 0D:A9EB: FF        .byte $FF   ; 
- - - - - - 0x0369FC 0D:A9EC: FF        .byte $FF   ; 
- - - - - - 0x0369FD 0D:A9ED: FF        .byte $FF   ; 
- - - - - - 0x0369FE 0D:A9EE: FF        .byte $FF   ; 
- - - - - - 0x0369FF 0D:A9EF: FF        .byte $FF   ; 
- - - - - - 0x036A00 0D:A9F0: FF        .byte $FF   ; 
- - - - - - 0x036A01 0D:A9F1: FF        .byte $FF   ; 
- - - - - - 0x036A02 0D:A9F2: FF        .byte $FF   ; 
- - - - - - 0x036A03 0D:A9F3: FF        .byte $FF   ; 
- - - - - - 0x036A04 0D:A9F4: FF        .byte $FF   ; 
- - - - - - 0x036A05 0D:A9F5: FF        .byte $FF   ; 
- - - - - - 0x036A06 0D:A9F6: FF        .byte $FF   ; 
- - - - - - 0x036A07 0D:A9F7: FF        .byte $FF   ; 
- - - - - - 0x036A08 0D:A9F8: FF        .byte $FF   ; 
- - - - - - 0x036A09 0D:A9F9: FF        .byte $FF   ; 
- - - - - - 0x036A0A 0D:A9FA: FF        .byte $FF   ; 
- - - - - - 0x036A0B 0D:A9FB: FF        .byte $FF   ; 
- - - - - - 0x036A0C 0D:A9FC: FF        .byte $FF   ; 
- - - - - - 0x036A0D 0D:A9FD: FF        .byte $FF   ; 
- - - - - - 0x036A0E 0D:A9FE: FF        .byte $FF   ; 
- - - - - - 0x036A0F 0D:A9FF: FF        .byte $FF   ; 
- - - - - - 0x036A10 0D:AA00: FF        .byte $FF   ; 
- - - - - - 0x036A11 0D:AA01: FF        .byte $FF   ; 
- - - - - - 0x036A12 0D:AA02: FF        .byte $FF   ; 
- - - - - - 0x036A13 0D:AA03: FF        .byte $FF   ; 
- - - - - - 0x036A14 0D:AA04: FF        .byte $FF   ; 
- - - - - - 0x036A15 0D:AA05: FF        .byte $FF   ; 
- - - - - - 0x036A16 0D:AA06: FF        .byte $FF   ; 
- - - - - - 0x036A17 0D:AA07: FF        .byte $FF   ; 
- - - - - - 0x036A18 0D:AA08: FF        .byte $FF   ; 
- - - - - - 0x036A19 0D:AA09: FF        .byte $FF   ; 
- - - - - - 0x036A1A 0D:AA0A: FF        .byte $FF   ; 
- - - - - - 0x036A1B 0D:AA0B: FF        .byte $FF   ; 
- - - - - - 0x036A1C 0D:AA0C: FF        .byte $FF   ; 
- - - - - - 0x036A1D 0D:AA0D: FF        .byte $FF   ; 
- - - - - - 0x036A1E 0D:AA0E: FF        .byte $FF   ; 
- - - - - - 0x036A1F 0D:AA0F: FF        .byte $FF   ; 
- - - - - - 0x036A20 0D:AA10: FF        .byte $FF   ; 
- - - - - - 0x036A21 0D:AA11: FF        .byte $FF   ; 
- - - - - - 0x036A22 0D:AA12: FF        .byte $FF   ; 
- - - - - - 0x036A23 0D:AA13: FF        .byte $FF   ; 
- - - - - - 0x036A24 0D:AA14: FF        .byte $FF   ; 
- - - - - - 0x036A25 0D:AA15: FF        .byte $FF   ; 
- - - - - - 0x036A26 0D:AA16: FF        .byte $FF   ; 
- - - - - - 0x036A27 0D:AA17: FF        .byte $FF   ; 
- - - - - - 0x036A28 0D:AA18: FF        .byte $FF   ; 
- - - - - - 0x036A29 0D:AA19: FF        .byte $FF   ; 
- - - - - - 0x036A2A 0D:AA1A: FF        .byte $FF   ; 
- - - - - - 0x036A2B 0D:AA1B: FF        .byte $FF   ; 
- - - - - - 0x036A2C 0D:AA1C: FF        .byte $FF   ; 
- - - - - - 0x036A2D 0D:AA1D: FF        .byte $FF   ; 
- - - - - - 0x036A2E 0D:AA1E: FF        .byte $FF   ; 
- - - - - - 0x036A2F 0D:AA1F: FF        .byte $FF   ; 
- - - - - - 0x036A30 0D:AA20: FF        .byte $FF   ; 
- - - - - - 0x036A31 0D:AA21: FF        .byte $FF   ; 
- - - - - - 0x036A32 0D:AA22: FF        .byte $FF   ; 
- - - - - - 0x036A33 0D:AA23: FF        .byte $FF   ; 
- - - - - - 0x036A34 0D:AA24: FF        .byte $FF   ; 
- - - - - - 0x036A35 0D:AA25: FF        .byte $FF   ; 
- - - - - - 0x036A36 0D:AA26: FF        .byte $FF   ; 
- - - - - - 0x036A37 0D:AA27: FF        .byte $FF   ; 
- - - - - - 0x036A38 0D:AA28: FF        .byte $FF   ; 
- - - - - - 0x036A39 0D:AA29: FF        .byte $FF   ; 
- - - - - - 0x036A3A 0D:AA2A: FF        .byte $FF   ; 
- - - - - - 0x036A3B 0D:AA2B: FF        .byte $FF   ; 
- - - - - - 0x036A3C 0D:AA2C: FF        .byte $FF   ; 
- - - - - - 0x036A3D 0D:AA2D: FF        .byte $FF   ; 
- - - - - - 0x036A3E 0D:AA2E: FF        .byte $FF   ; 
- - - - - - 0x036A3F 0D:AA2F: FF        .byte $FF   ; 
- - - - - - 0x036A40 0D:AA30: FF        .byte $FF   ; 
- - - - - - 0x036A41 0D:AA31: FF        .byte $FF   ; 
- - - - - - 0x036A42 0D:AA32: FF        .byte $FF   ; 
- - - - - - 0x036A43 0D:AA33: FF        .byte $FF   ; 
- - - - - - 0x036A44 0D:AA34: FF        .byte $FF   ; 
- - - - - - 0x036A45 0D:AA35: FF        .byte $FF   ; 
- - - - - - 0x036A46 0D:AA36: FF        .byte $FF   ; 
- - - - - - 0x036A47 0D:AA37: FF        .byte $FF   ; 
- - - - - - 0x036A48 0D:AA38: FF        .byte $FF   ; 
- - - - - - 0x036A49 0D:AA39: FF        .byte $FF   ; 
- - - - - - 0x036A4A 0D:AA3A: FF        .byte $FF   ; 
- - - - - - 0x036A4B 0D:AA3B: FF        .byte $FF   ; 
- - - - - - 0x036A4C 0D:AA3C: FF        .byte $FF   ; 
- - - - - - 0x036A4D 0D:AA3D: FF        .byte $FF   ; 
- - - - - - 0x036A4E 0D:AA3E: FF        .byte $FF   ; 
- - - - - - 0x036A4F 0D:AA3F: FF        .byte $FF   ; 
- - - - - - 0x036A50 0D:AA40: FF        .byte $FF   ; 
- - - - - - 0x036A51 0D:AA41: FF        .byte $FF   ; 
- - - - - - 0x036A52 0D:AA42: FF        .byte $FF   ; 
- - - - - - 0x036A53 0D:AA43: FF        .byte $FF   ; 
- - - - - - 0x036A54 0D:AA44: FF        .byte $FF   ; 
- - - - - - 0x036A55 0D:AA45: FF        .byte $FF   ; 
- - - - - - 0x036A56 0D:AA46: FF        .byte $FF   ; 
- - - - - - 0x036A57 0D:AA47: FF        .byte $FF   ; 
- - - - - - 0x036A58 0D:AA48: FF        .byte $FF   ; 
- - - - - - 0x036A59 0D:AA49: FF        .byte $FF   ; 
- - - - - - 0x036A5A 0D:AA4A: FF        .byte $FF   ; 
- - - - - - 0x036A5B 0D:AA4B: FF        .byte $FF   ; 
- - - - - - 0x036A5C 0D:AA4C: FF        .byte $FF   ; 
- - - - - - 0x036A5D 0D:AA4D: FF        .byte $FF   ; 
- - - - - - 0x036A5E 0D:AA4E: FF        .byte $FF   ; 
- - - - - - 0x036A5F 0D:AA4F: FF        .byte $FF   ; 
- - - - - - 0x036A60 0D:AA50: FF        .byte $FF   ; 
- - - - - - 0x036A61 0D:AA51: FF        .byte $FF   ; 
- - - - - - 0x036A62 0D:AA52: FF        .byte $FF   ; 
- - - - - - 0x036A63 0D:AA53: FF        .byte $FF   ; 
- - - - - - 0x036A64 0D:AA54: FF        .byte $FF   ; 
- - - - - - 0x036A65 0D:AA55: FF        .byte $FF   ; 
- - - - - - 0x036A66 0D:AA56: FF        .byte $FF   ; 
- - - - - - 0x036A67 0D:AA57: FF        .byte $FF   ; 
- - - - - - 0x036A68 0D:AA58: FF        .byte $FF   ; 
- - - - - - 0x036A69 0D:AA59: FF        .byte $FF   ; 
- - - - - - 0x036A6A 0D:AA5A: FF        .byte $FF   ; 
- - - - - - 0x036A6B 0D:AA5B: FF        .byte $FF   ; 
- - - - - - 0x036A6C 0D:AA5C: FF        .byte $FF   ; 
- - - - - - 0x036A6D 0D:AA5D: FF        .byte $FF   ; 
- - - - - - 0x036A6E 0D:AA5E: FF        .byte $FF   ; 
- - - - - - 0x036A6F 0D:AA5F: FF        .byte $FF   ; 
- - - - - - 0x036A70 0D:AA60: FF        .byte $FF   ; 
- - - - - - 0x036A71 0D:AA61: FF        .byte $FF   ; 
- - - - - - 0x036A72 0D:AA62: FF        .byte $FF   ; 
- - - - - - 0x036A73 0D:AA63: FF        .byte $FF   ; 
- - - - - - 0x036A74 0D:AA64: FF        .byte $FF   ; 
- - - - - - 0x036A75 0D:AA65: FF        .byte $FF   ; 
- - - - - - 0x036A76 0D:AA66: FF        .byte $FF   ; 
- - - - - - 0x036A77 0D:AA67: FF        .byte $FF   ; 
- - - - - - 0x036A78 0D:AA68: FF        .byte $FF   ; 
- - - - - - 0x036A79 0D:AA69: FF        .byte $FF   ; 
- - - - - - 0x036A7A 0D:AA6A: FF        .byte $FF   ; 
- - - - - - 0x036A7B 0D:AA6B: FF        .byte $FF   ; 
- - - - - - 0x036A7C 0D:AA6C: FF        .byte $FF   ; 
- - - - - - 0x036A7D 0D:AA6D: FF        .byte $FF   ; 
- - - - - - 0x036A7E 0D:AA6E: FF        .byte $FF   ; 
- - - - - - 0x036A7F 0D:AA6F: FF        .byte $FF   ; 
- - - - - - 0x036A80 0D:AA70: FF        .byte $FF   ; 
- - - - - - 0x036A81 0D:AA71: FF        .byte $FF   ; 
- - - - - - 0x036A82 0D:AA72: FF        .byte $FF   ; 
- - - - - - 0x036A83 0D:AA73: FF        .byte $FF   ; 
- - - - - - 0x036A84 0D:AA74: FF        .byte $FF   ; 
- - - - - - 0x036A85 0D:AA75: FF        .byte $FF   ; 
- - - - - - 0x036A86 0D:AA76: FF        .byte $FF   ; 
- - - - - - 0x036A87 0D:AA77: FF        .byte $FF   ; 
- - - - - - 0x036A88 0D:AA78: FF        .byte $FF   ; 
- - - - - - 0x036A89 0D:AA79: FF        .byte $FF   ; 
- - - - - - 0x036A8A 0D:AA7A: FF        .byte $FF   ; 
- - - - - - 0x036A8B 0D:AA7B: FF        .byte $FF   ; 
- - - - - - 0x036A8C 0D:AA7C: FF        .byte $FF   ; 
- - - - - - 0x036A8D 0D:AA7D: FF        .byte $FF   ; 
- - - - - - 0x036A8E 0D:AA7E: FF        .byte $FF   ; 
- - - - - - 0x036A8F 0D:AA7F: FF        .byte $FF   ; 
- - - - - - 0x036A90 0D:AA80: FF        .byte $FF   ; 
- - - - - - 0x036A91 0D:AA81: FF        .byte $FF   ; 
- - - - - - 0x036A92 0D:AA82: FF        .byte $FF   ; 
- - - - - - 0x036A93 0D:AA83: FF        .byte $FF   ; 
- - - - - - 0x036A94 0D:AA84: FF        .byte $FF   ; 
- - - - - - 0x036A95 0D:AA85: FF        .byte $FF   ; 
- - - - - - 0x036A96 0D:AA86: FF        .byte $FF   ; 
- - - - - - 0x036A97 0D:AA87: FF        .byte $FF   ; 
- - - - - - 0x036A98 0D:AA88: FF        .byte $FF   ; 
- - - - - - 0x036A99 0D:AA89: FF        .byte $FF   ; 
- - - - - - 0x036A9A 0D:AA8A: FF        .byte $FF   ; 
- - - - - - 0x036A9B 0D:AA8B: FF        .byte $FF   ; 
- - - - - - 0x036A9C 0D:AA8C: FF        .byte $FF   ; 
- - - - - - 0x036A9D 0D:AA8D: FF        .byte $FF   ; 
- - - - - - 0x036A9E 0D:AA8E: FF        .byte $FF   ; 
- - - - - - 0x036A9F 0D:AA8F: FF        .byte $FF   ; 
- - - - - - 0x036AA0 0D:AA90: FF        .byte $FF   ; 
- - - - - - 0x036AA1 0D:AA91: FF        .byte $FF   ; 
- - - - - - 0x036AA2 0D:AA92: FF        .byte $FF   ; 
- - - - - - 0x036AA3 0D:AA93: FF        .byte $FF   ; 
- - - - - - 0x036AA4 0D:AA94: FF        .byte $FF   ; 
- - - - - - 0x036AA5 0D:AA95: FF        .byte $FF   ; 
- - - - - - 0x036AA6 0D:AA96: FF        .byte $FF   ; 
- - - - - - 0x036AA7 0D:AA97: FF        .byte $FF   ; 
- - - - - - 0x036AA8 0D:AA98: FF        .byte $FF   ; 
- - - - - - 0x036AA9 0D:AA99: FF        .byte $FF   ; 
- - - - - - 0x036AAA 0D:AA9A: FF        .byte $FF   ; 
- - - - - - 0x036AAB 0D:AA9B: FF        .byte $FF   ; 
- - - - - - 0x036AAC 0D:AA9C: FF        .byte $FF   ; 
- - - - - - 0x036AAD 0D:AA9D: FF        .byte $FF   ; 
- - - - - - 0x036AAE 0D:AA9E: FF        .byte $FF   ; 
- - - - - - 0x036AAF 0D:AA9F: FF        .byte $FF   ; 
- - - - - - 0x036AB0 0D:AAA0: FF        .byte $FF   ; 
- - - - - - 0x036AB1 0D:AAA1: FF        .byte $FF   ; 
- - - - - - 0x036AB2 0D:AAA2: FF        .byte $FF   ; 
- - - - - - 0x036AB3 0D:AAA3: FF        .byte $FF   ; 
- - - - - - 0x036AB4 0D:AAA4: FF        .byte $FF   ; 
- - - - - - 0x036AB5 0D:AAA5: FF        .byte $FF   ; 
- - - - - - 0x036AB6 0D:AAA6: FF        .byte $FF   ; 
- - - - - - 0x036AB7 0D:AAA7: FF        .byte $FF   ; 
- - - - - - 0x036AB8 0D:AAA8: FF        .byte $FF   ; 
- - - - - - 0x036AB9 0D:AAA9: FF        .byte $FF   ; 
- - - - - - 0x036ABA 0D:AAAA: FF        .byte $FF   ; 
- - - - - - 0x036ABB 0D:AAAB: FF        .byte $FF   ; 
- - - - - - 0x036ABC 0D:AAAC: FF        .byte $FF   ; 
- - - - - - 0x036ABD 0D:AAAD: FF        .byte $FF   ; 
- - - - - - 0x036ABE 0D:AAAE: FF        .byte $FF   ; 
- - - - - - 0x036ABF 0D:AAAF: FF        .byte $FF   ; 
- - - - - - 0x036AC0 0D:AAB0: FF        .byte $FF   ; 
- - - - - - 0x036AC1 0D:AAB1: FF        .byte $FF   ; 
- - - - - - 0x036AC2 0D:AAB2: FF        .byte $FF   ; 
- - - - - - 0x036AC3 0D:AAB3: FF        .byte $FF   ; 
- - - - - - 0x036AC4 0D:AAB4: FF        .byte $FF   ; 
- - - - - - 0x036AC5 0D:AAB5: FF        .byte $FF   ; 
- - - - - - 0x036AC6 0D:AAB6: FF        .byte $FF   ; 
- - - - - - 0x036AC7 0D:AAB7: FF        .byte $FF   ; 
- - - - - - 0x036AC8 0D:AAB8: FF        .byte $FF   ; 
- - - - - - 0x036AC9 0D:AAB9: FF        .byte $FF   ; 
- - - - - - 0x036ACA 0D:AABA: FF        .byte $FF   ; 
- - - - - - 0x036ACB 0D:AABB: FF        .byte $FF   ; 
- - - - - - 0x036ACC 0D:AABC: FF        .byte $FF   ; 
- - - - - - 0x036ACD 0D:AABD: FF        .byte $FF   ; 
- - - - - - 0x036ACE 0D:AABE: FF        .byte $FF   ; 
- - - - - - 0x036ACF 0D:AABF: FF        .byte $FF   ; 
- - - - - - 0x036AD0 0D:AAC0: FF        .byte $FF   ; 
- - - - - - 0x036AD1 0D:AAC1: FF        .byte $FF   ; 
- - - - - - 0x036AD2 0D:AAC2: FF        .byte $FF   ; 
- - - - - - 0x036AD3 0D:AAC3: FF        .byte $FF   ; 
- - - - - - 0x036AD4 0D:AAC4: FF        .byte $FF   ; 
- - - - - - 0x036AD5 0D:AAC5: FF        .byte $FF   ; 
- - - - - - 0x036AD6 0D:AAC6: FF        .byte $FF   ; 
- - - - - - 0x036AD7 0D:AAC7: FF        .byte $FF   ; 
- - - - - - 0x036AD8 0D:AAC8: FF        .byte $FF   ; 
- - - - - - 0x036AD9 0D:AAC9: FF        .byte $FF   ; 
- - - - - - 0x036ADA 0D:AACA: FF        .byte $FF   ; 
- - - - - - 0x036ADB 0D:AACB: FF        .byte $FF   ; 
- - - - - - 0x036ADC 0D:AACC: FF        .byte $FF   ; 
- - - - - - 0x036ADD 0D:AACD: FF        .byte $FF   ; 
- - - - - - 0x036ADE 0D:AACE: FF        .byte $FF   ; 
- - - - - - 0x036ADF 0D:AACF: FF        .byte $FF   ; 
- - - - - - 0x036AE0 0D:AAD0: FF        .byte $FF   ; 
- - - - - - 0x036AE1 0D:AAD1: FF        .byte $FF   ; 
- - - - - - 0x036AE2 0D:AAD2: FF        .byte $FF   ; 
- - - - - - 0x036AE3 0D:AAD3: FF        .byte $FF   ; 
- - - - - - 0x036AE4 0D:AAD4: FF        .byte $FF   ; 
- - - - - - 0x036AE5 0D:AAD5: FF        .byte $FF   ; 
- - - - - - 0x036AE6 0D:AAD6: FF        .byte $FF   ; 
- - - - - - 0x036AE7 0D:AAD7: FF        .byte $FF   ; 
- - - - - - 0x036AE8 0D:AAD8: FF        .byte $FF   ; 
- - - - - - 0x036AE9 0D:AAD9: FF        .byte $FF   ; 
- - - - - - 0x036AEA 0D:AADA: FF        .byte $FF   ; 
- - - - - - 0x036AEB 0D:AADB: FF        .byte $FF   ; 
- - - - - - 0x036AEC 0D:AADC: FF        .byte $FF   ; 
- - - - - - 0x036AED 0D:AADD: FF        .byte $FF   ; 
- - - - - - 0x036AEE 0D:AADE: FF        .byte $FF   ; 
- - - - - - 0x036AEF 0D:AADF: FF        .byte $FF   ; 
- - - - - - 0x036AF0 0D:AAE0: FF        .byte $FF   ; 
- - - - - - 0x036AF1 0D:AAE1: FF        .byte $FF   ; 
- - - - - - 0x036AF2 0D:AAE2: FF        .byte $FF   ; 
- - - - - - 0x036AF3 0D:AAE3: FF        .byte $FF   ; 
- - - - - - 0x036AF4 0D:AAE4: FF        .byte $FF   ; 
- - - - - - 0x036AF5 0D:AAE5: FF        .byte $FF   ; 
- - - - - - 0x036AF6 0D:AAE6: FF        .byte $FF   ; 
- - - - - - 0x036AF7 0D:AAE7: FF        .byte $FF   ; 
- - - - - - 0x036AF8 0D:AAE8: FF        .byte $FF   ; 
- - - - - - 0x036AF9 0D:AAE9: FF        .byte $FF   ; 
- - - - - - 0x036AFA 0D:AAEA: FF        .byte $FF   ; 
- - - - - - 0x036AFB 0D:AAEB: FF        .byte $FF   ; 
- - - - - - 0x036AFC 0D:AAEC: FF        .byte $FF   ; 
- - - - - - 0x036AFD 0D:AAED: FF        .byte $FF   ; 
- - - - - - 0x036AFE 0D:AAEE: FF        .byte $FF   ; 
- - - - - - 0x036AFF 0D:AAEF: FF        .byte $FF   ; 
- - - - - - 0x036B00 0D:AAF0: FF        .byte $FF   ; 
- - - - - - 0x036B01 0D:AAF1: FF        .byte $FF   ; 
- - - - - - 0x036B02 0D:AAF2: FF        .byte $FF   ; 
- - - - - - 0x036B03 0D:AAF3: FF        .byte $FF   ; 
- - - - - - 0x036B04 0D:AAF4: FF        .byte $FF   ; 
- - - - - - 0x036B05 0D:AAF5: FF        .byte $FF   ; 
- - - - - - 0x036B06 0D:AAF6: FF        .byte $FF   ; 
- - - - - - 0x036B07 0D:AAF7: FF        .byte $FF   ; 
- - - - - - 0x036B08 0D:AAF8: FF        .byte $FF   ; 
- - - - - - 0x036B09 0D:AAF9: FF        .byte $FF   ; 
- - - - - - 0x036B0A 0D:AAFA: FF        .byte $FF   ; 
- - - - - - 0x036B0B 0D:AAFB: FF        .byte $FF   ; 
- - - - - - 0x036B0C 0D:AAFC: FF        .byte $FF   ; 
- - - - - - 0x036B0D 0D:AAFD: FF        .byte $FF   ; 
- - - - - - 0x036B0E 0D:AAFE: FF        .byte $FF   ; 
- - - - - - 0x036B0F 0D:AAFF: FF        .byte $FF   ; 
- - - - - - 0x036B10 0D:AB00: FF        .byte $FF   ; 
- - - - - - 0x036B11 0D:AB01: FF        .byte $FF   ; 
- - - - - - 0x036B12 0D:AB02: FF        .byte $FF   ; 
- - - - - - 0x036B13 0D:AB03: FF        .byte $FF   ; 
- - - - - - 0x036B14 0D:AB04: FF        .byte $FF   ; 
- - - - - - 0x036B15 0D:AB05: FF        .byte $FF   ; 
- - - - - - 0x036B16 0D:AB06: FF        .byte $FF   ; 
- - - - - - 0x036B17 0D:AB07: FF        .byte $FF   ; 
- - - - - - 0x036B18 0D:AB08: FF        .byte $FF   ; 
- - - - - - 0x036B19 0D:AB09: FF        .byte $FF   ; 
- - - - - - 0x036B1A 0D:AB0A: FF        .byte $FF   ; 
- - - - - - 0x036B1B 0D:AB0B: FF        .byte $FF   ; 
- - - - - - 0x036B1C 0D:AB0C: FF        .byte $FF   ; 
- - - - - - 0x036B1D 0D:AB0D: FF        .byte $FF   ; 
- - - - - - 0x036B1E 0D:AB0E: FF        .byte $FF   ; 
- - - - - - 0x036B1F 0D:AB0F: FF        .byte $FF   ; 
- - - - - - 0x036B20 0D:AB10: FF        .byte $FF   ; 
- - - - - - 0x036B21 0D:AB11: FF        .byte $FF   ; 
- - - - - - 0x036B22 0D:AB12: FF        .byte $FF   ; 
- - - - - - 0x036B23 0D:AB13: FF        .byte $FF   ; 
- - - - - - 0x036B24 0D:AB14: FF        .byte $FF   ; 
- - - - - - 0x036B25 0D:AB15: FF        .byte $FF   ; 
- - - - - - 0x036B26 0D:AB16: FF        .byte $FF   ; 
- - - - - - 0x036B27 0D:AB17: FF        .byte $FF   ; 
- - - - - - 0x036B28 0D:AB18: FF        .byte $FF   ; 
- - - - - - 0x036B29 0D:AB19: FF        .byte $FF   ; 
- - - - - - 0x036B2A 0D:AB1A: FF        .byte $FF   ; 
- - - - - - 0x036B2B 0D:AB1B: FF        .byte $FF   ; 
- - - - - - 0x036B2C 0D:AB1C: FF        .byte $FF   ; 
- - - - - - 0x036B2D 0D:AB1D: FF        .byte $FF   ; 
- - - - - - 0x036B2E 0D:AB1E: FF        .byte $FF   ; 
- - - - - - 0x036B2F 0D:AB1F: FF        .byte $FF   ; 
- - - - - - 0x036B30 0D:AB20: FF        .byte $FF   ; 
- - - - - - 0x036B31 0D:AB21: FF        .byte $FF   ; 
- - - - - - 0x036B32 0D:AB22: FF        .byte $FF   ; 
- - - - - - 0x036B33 0D:AB23: FF        .byte $FF   ; 
- - - - - - 0x036B34 0D:AB24: FF        .byte $FF   ; 
- - - - - - 0x036B35 0D:AB25: FF        .byte $FF   ; 
- - - - - - 0x036B36 0D:AB26: FF        .byte $FF   ; 
- - - - - - 0x036B37 0D:AB27: FF        .byte $FF   ; 
- - - - - - 0x036B38 0D:AB28: FF        .byte $FF   ; 
- - - - - - 0x036B39 0D:AB29: FF        .byte $FF   ; 
- - - - - - 0x036B3A 0D:AB2A: FF        .byte $FF   ; 
- - - - - - 0x036B3B 0D:AB2B: FF        .byte $FF   ; 
- - - - - - 0x036B3C 0D:AB2C: FF        .byte $FF   ; 
- - - - - - 0x036B3D 0D:AB2D: FF        .byte $FF   ; 
- - - - - - 0x036B3E 0D:AB2E: FF        .byte $FF   ; 
- - - - - - 0x036B3F 0D:AB2F: FF        .byte $FF   ; 
- - - - - - 0x036B40 0D:AB30: FF        .byte $FF   ; 
- - - - - - 0x036B41 0D:AB31: FF        .byte $FF   ; 
- - - - - - 0x036B42 0D:AB32: FF        .byte $FF   ; 
- - - - - - 0x036B43 0D:AB33: FF        .byte $FF   ; 
- - - - - - 0x036B44 0D:AB34: FF        .byte $FF   ; 
- - - - - - 0x036B45 0D:AB35: FF        .byte $FF   ; 
- - - - - - 0x036B46 0D:AB36: FF        .byte $FF   ; 
- - - - - - 0x036B47 0D:AB37: FF        .byte $FF   ; 
- - - - - - 0x036B48 0D:AB38: FF        .byte $FF   ; 
- - - - - - 0x036B49 0D:AB39: FF        .byte $FF   ; 
- - - - - - 0x036B4A 0D:AB3A: FF        .byte $FF   ; 
- - - - - - 0x036B4B 0D:AB3B: FF        .byte $FF   ; 
- - - - - - 0x036B4C 0D:AB3C: FF        .byte $FF   ; 
- - - - - - 0x036B4D 0D:AB3D: FF        .byte $FF   ; 
- - - - - - 0x036B4E 0D:AB3E: FF        .byte $FF   ; 
- - - - - - 0x036B4F 0D:AB3F: FF        .byte $FF   ; 
- - - - - - 0x036B50 0D:AB40: FF        .byte $FF   ; 
- - - - - - 0x036B51 0D:AB41: FF        .byte $FF   ; 
- - - - - - 0x036B52 0D:AB42: FF        .byte $FF   ; 
- - - - - - 0x036B53 0D:AB43: FF        .byte $FF   ; 
- - - - - - 0x036B54 0D:AB44: FF        .byte $FF   ; 
- - - - - - 0x036B55 0D:AB45: FF        .byte $FF   ; 
- - - - - - 0x036B56 0D:AB46: FF        .byte $FF   ; 
- - - - - - 0x036B57 0D:AB47: FF        .byte $FF   ; 
- - - - - - 0x036B58 0D:AB48: FF        .byte $FF   ; 
- - - - - - 0x036B59 0D:AB49: FF        .byte $FF   ; 
- - - - - - 0x036B5A 0D:AB4A: FF        .byte $FF   ; 
- - - - - - 0x036B5B 0D:AB4B: FF        .byte $FF   ; 
- - - - - - 0x036B5C 0D:AB4C: FF        .byte $FF   ; 
- - - - - - 0x036B5D 0D:AB4D: FF        .byte $FF   ; 
- - - - - - 0x036B5E 0D:AB4E: FF        .byte $FF   ; 
- - - - - - 0x036B5F 0D:AB4F: FF        .byte $FF   ; 
- - - - - - 0x036B60 0D:AB50: FF        .byte $FF   ; 
- - - - - - 0x036B61 0D:AB51: FF        .byte $FF   ; 
- - - - - - 0x036B62 0D:AB52: FF        .byte $FF   ; 
- - - - - - 0x036B63 0D:AB53: FF        .byte $FF   ; 
- - - - - - 0x036B64 0D:AB54: FF        .byte $FF   ; 
- - - - - - 0x036B65 0D:AB55: FF        .byte $FF   ; 
- - - - - - 0x036B66 0D:AB56: FF        .byte $FF   ; 
- - - - - - 0x036B67 0D:AB57: FF        .byte $FF   ; 
- - - - - - 0x036B68 0D:AB58: FF        .byte $FF   ; 
- - - - - - 0x036B69 0D:AB59: FF        .byte $FF   ; 
- - - - - - 0x036B6A 0D:AB5A: FF        .byte $FF   ; 
- - - - - - 0x036B6B 0D:AB5B: FF        .byte $FF   ; 
- - - - - - 0x036B6C 0D:AB5C: FF        .byte $FF   ; 
- - - - - - 0x036B6D 0D:AB5D: FF        .byte $FF   ; 
- - - - - - 0x036B6E 0D:AB5E: FF        .byte $FF   ; 
- - - - - - 0x036B6F 0D:AB5F: FF        .byte $FF   ; 
- - - - - - 0x036B70 0D:AB60: FF        .byte $FF   ; 
- - - - - - 0x036B71 0D:AB61: FF        .byte $FF   ; 
- - - - - - 0x036B72 0D:AB62: FF        .byte $FF   ; 
- - - - - - 0x036B73 0D:AB63: FF        .byte $FF   ; 
- - - - - - 0x036B74 0D:AB64: FF        .byte $FF   ; 
- - - - - - 0x036B75 0D:AB65: FF        .byte $FF   ; 
- - - - - - 0x036B76 0D:AB66: FF        .byte $FF   ; 
- - - - - - 0x036B77 0D:AB67: FF        .byte $FF   ; 
- - - - - - 0x036B78 0D:AB68: FF        .byte $FF   ; 
- - - - - - 0x036B79 0D:AB69: FF        .byte $FF   ; 
- - - - - - 0x036B7A 0D:AB6A: FF        .byte $FF   ; 
- - - - - - 0x036B7B 0D:AB6B: FF        .byte $FF   ; 
- - - - - - 0x036B7C 0D:AB6C: FF        .byte $FF   ; 
- - - - - - 0x036B7D 0D:AB6D: FF        .byte $FF   ; 
- - - - - - 0x036B7E 0D:AB6E: FF        .byte $FF   ; 
- - - - - - 0x036B7F 0D:AB6F: FF        .byte $FF   ; 
- - - - - - 0x036B80 0D:AB70: FF        .byte $FF   ; 
- - - - - - 0x036B81 0D:AB71: FF        .byte $FF   ; 
- - - - - - 0x036B82 0D:AB72: FF        .byte $FF   ; 
- - - - - - 0x036B83 0D:AB73: FF        .byte $FF   ; 
- - - - - - 0x036B84 0D:AB74: FF        .byte $FF   ; 
- - - - - - 0x036B85 0D:AB75: FF        .byte $FF   ; 
- - - - - - 0x036B86 0D:AB76: FF        .byte $FF   ; 
- - - - - - 0x036B87 0D:AB77: FF        .byte $FF   ; 
- - - - - - 0x036B88 0D:AB78: FF        .byte $FF   ; 
- - - - - - 0x036B89 0D:AB79: FF        .byte $FF   ; 
- - - - - - 0x036B8A 0D:AB7A: FF        .byte $FF   ; 
- - - - - - 0x036B8B 0D:AB7B: FF        .byte $FF   ; 
- - - - - - 0x036B8C 0D:AB7C: FF        .byte $FF   ; 
- - - - - - 0x036B8D 0D:AB7D: FF        .byte $FF   ; 
- - - - - - 0x036B8E 0D:AB7E: FF        .byte $FF   ; 
- - - - - - 0x036B8F 0D:AB7F: FF        .byte $FF   ; 
- - - - - - 0x036B90 0D:AB80: FF        .byte $FF   ; 
- - - - - - 0x036B91 0D:AB81: FF        .byte $FF   ; 
- - - - - - 0x036B92 0D:AB82: FF        .byte $FF   ; 
- - - - - - 0x036B93 0D:AB83: FF        .byte $FF   ; 
- - - - - - 0x036B94 0D:AB84: FF        .byte $FF   ; 
- - - - - - 0x036B95 0D:AB85: FF        .byte $FF   ; 
- - - - - - 0x036B96 0D:AB86: FF        .byte $FF   ; 
- - - - - - 0x036B97 0D:AB87: FF        .byte $FF   ; 
- - - - - - 0x036B98 0D:AB88: FF        .byte $FF   ; 
- - - - - - 0x036B99 0D:AB89: FF        .byte $FF   ; 
- - - - - - 0x036B9A 0D:AB8A: FF        .byte $FF   ; 
- - - - - - 0x036B9B 0D:AB8B: FF        .byte $FF   ; 
- - - - - - 0x036B9C 0D:AB8C: FF        .byte $FF   ; 
- - - - - - 0x036B9D 0D:AB8D: FF        .byte $FF   ; 
- - - - - - 0x036B9E 0D:AB8E: FF        .byte $FF   ; 
- - - - - - 0x036B9F 0D:AB8F: FF        .byte $FF   ; 
- - - - - - 0x036BA0 0D:AB90: FF        .byte $FF   ; 
- - - - - - 0x036BA1 0D:AB91: FF        .byte $FF   ; 
- - - - - - 0x036BA2 0D:AB92: FF        .byte $FF   ; 
- - - - - - 0x036BA3 0D:AB93: FF        .byte $FF   ; 
- - - - - - 0x036BA4 0D:AB94: FF        .byte $FF   ; 
- - - - - - 0x036BA5 0D:AB95: FF        .byte $FF   ; 
- - - - - - 0x036BA6 0D:AB96: FF        .byte $FF   ; 
- - - - - - 0x036BA7 0D:AB97: FF        .byte $FF   ; 
- - - - - - 0x036BA8 0D:AB98: FF        .byte $FF   ; 
- - - - - - 0x036BA9 0D:AB99: FF        .byte $FF   ; 
- - - - - - 0x036BAA 0D:AB9A: FF        .byte $FF   ; 
- - - - - - 0x036BAB 0D:AB9B: FF        .byte $FF   ; 
- - - - - - 0x036BAC 0D:AB9C: FF        .byte $FF   ; 
- - - - - - 0x036BAD 0D:AB9D: FF        .byte $FF   ; 
- - - - - - 0x036BAE 0D:AB9E: FF        .byte $FF   ; 
- - - - - - 0x036BAF 0D:AB9F: FF        .byte $FF   ; 
- - - - - - 0x036BB0 0D:ABA0: FF        .byte $FF   ; 
- - - - - - 0x036BB1 0D:ABA1: FF        .byte $FF   ; 
- - - - - - 0x036BB2 0D:ABA2: FF        .byte $FF   ; 
- - - - - - 0x036BB3 0D:ABA3: FF        .byte $FF   ; 
- - - - - - 0x036BB4 0D:ABA4: FF        .byte $FF   ; 
- - - - - - 0x036BB5 0D:ABA5: FF        .byte $FF   ; 
- - - - - - 0x036BB6 0D:ABA6: FF        .byte $FF   ; 
- - - - - - 0x036BB7 0D:ABA7: FF        .byte $FF   ; 
- - - - - - 0x036BB8 0D:ABA8: FF        .byte $FF   ; 
- - - - - - 0x036BB9 0D:ABA9: FF        .byte $FF   ; 
- - - - - - 0x036BBA 0D:ABAA: FF        .byte $FF   ; 
- - - - - - 0x036BBB 0D:ABAB: FF        .byte $FF   ; 
- - - - - - 0x036BBC 0D:ABAC: FF        .byte $FF   ; 
- - - - - - 0x036BBD 0D:ABAD: FF        .byte $FF   ; 
- - - - - - 0x036BBE 0D:ABAE: FF        .byte $FF   ; 
- - - - - - 0x036BBF 0D:ABAF: FF        .byte $FF   ; 
- - - - - - 0x036BC0 0D:ABB0: FF        .byte $FF   ; 
- - - - - - 0x036BC1 0D:ABB1: FF        .byte $FF   ; 
- - - - - - 0x036BC2 0D:ABB2: FF        .byte $FF   ; 
- - - - - - 0x036BC3 0D:ABB3: FF        .byte $FF   ; 
- - - - - - 0x036BC4 0D:ABB4: FF        .byte $FF   ; 
- - - - - - 0x036BC5 0D:ABB5: FF        .byte $FF   ; 
- - - - - - 0x036BC6 0D:ABB6: FF        .byte $FF   ; 
- - - - - - 0x036BC7 0D:ABB7: FF        .byte $FF   ; 
- - - - - - 0x036BC8 0D:ABB8: FF        .byte $FF   ; 
- - - - - - 0x036BC9 0D:ABB9: FF        .byte $FF   ; 
- - - - - - 0x036BCA 0D:ABBA: FF        .byte $FF   ; 
- - - - - - 0x036BCB 0D:ABBB: FF        .byte $FF   ; 
- - - - - - 0x036BCC 0D:ABBC: FF        .byte $FF   ; 
- - - - - - 0x036BCD 0D:ABBD: FF        .byte $FF   ; 
- - - - - - 0x036BCE 0D:ABBE: FF        .byte $FF   ; 
- - - - - - 0x036BCF 0D:ABBF: FF        .byte $FF   ; 
- - - - - - 0x036BD0 0D:ABC0: FF        .byte $FF   ; 
- - - - - - 0x036BD1 0D:ABC1: FF        .byte $FF   ; 
- - - - - - 0x036BD2 0D:ABC2: FF        .byte $FF   ; 
- - - - - - 0x036BD3 0D:ABC3: FF        .byte $FF   ; 
- - - - - - 0x036BD4 0D:ABC4: FF        .byte $FF   ; 
- - - - - - 0x036BD5 0D:ABC5: FF        .byte $FF   ; 
- - - - - - 0x036BD6 0D:ABC6: FF        .byte $FF   ; 
- - - - - - 0x036BD7 0D:ABC7: FF        .byte $FF   ; 
- - - - - - 0x036BD8 0D:ABC8: FF        .byte $FF   ; 
- - - - - - 0x036BD9 0D:ABC9: FF        .byte $FF   ; 
- - - - - - 0x036BDA 0D:ABCA: FF        .byte $FF   ; 
- - - - - - 0x036BDB 0D:ABCB: FF        .byte $FF   ; 
- - - - - - 0x036BDC 0D:ABCC: FF        .byte $FF   ; 
- - - - - - 0x036BDD 0D:ABCD: FF        .byte $FF   ; 
- - - - - - 0x036BDE 0D:ABCE: FF        .byte $FF   ; 
- - - - - - 0x036BDF 0D:ABCF: FF        .byte $FF   ; 
- - - - - - 0x036BE0 0D:ABD0: FF        .byte $FF   ; 
- - - - - - 0x036BE1 0D:ABD1: FF        .byte $FF   ; 
- - - - - - 0x036BE2 0D:ABD2: FF        .byte $FF   ; 
- - - - - - 0x036BE3 0D:ABD3: FF        .byte $FF   ; 
- - - - - - 0x036BE4 0D:ABD4: FF        .byte $FF   ; 
- - - - - - 0x036BE5 0D:ABD5: FF        .byte $FF   ; 
- - - - - - 0x036BE6 0D:ABD6: FF        .byte $FF   ; 
- - - - - - 0x036BE7 0D:ABD7: FF        .byte $FF   ; 
- - - - - - 0x036BE8 0D:ABD8: FF        .byte $FF   ; 
- - - - - - 0x036BE9 0D:ABD9: FF        .byte $FF   ; 
- - - - - - 0x036BEA 0D:ABDA: FF        .byte $FF   ; 
- - - - - - 0x036BEB 0D:ABDB: FF        .byte $FF   ; 
- - - - - - 0x036BEC 0D:ABDC: FF        .byte $FF   ; 
- - - - - - 0x036BED 0D:ABDD: FF        .byte $FF   ; 
- - - - - - 0x036BEE 0D:ABDE: FF        .byte $FF   ; 
- - - - - - 0x036BEF 0D:ABDF: FF        .byte $FF   ; 
- - - - - - 0x036BF0 0D:ABE0: FF        .byte $FF   ; 
- - - - - - 0x036BF1 0D:ABE1: FF        .byte $FF   ; 
- - - - - - 0x036BF2 0D:ABE2: FF        .byte $FF   ; 
- - - - - - 0x036BF3 0D:ABE3: FF        .byte $FF   ; 
- - - - - - 0x036BF4 0D:ABE4: FF        .byte $FF   ; 
- - - - - - 0x036BF5 0D:ABE5: FF        .byte $FF   ; 
- - - - - - 0x036BF6 0D:ABE6: FF        .byte $FF   ; 
- - - - - - 0x036BF7 0D:ABE7: FF        .byte $FF   ; 
- - - - - - 0x036BF8 0D:ABE8: FF        .byte $FF   ; 
- - - - - - 0x036BF9 0D:ABE9: FF        .byte $FF   ; 
- - - - - - 0x036BFA 0D:ABEA: FF        .byte $FF   ; 
- - - - - - 0x036BFB 0D:ABEB: FF        .byte $FF   ; 
- - - - - - 0x036BFC 0D:ABEC: FF        .byte $FF   ; 
- - - - - - 0x036BFD 0D:ABED: FF        .byte $FF   ; 
- - - - - - 0x036BFE 0D:ABEE: FF        .byte $FF   ; 
- - - - - - 0x036BFF 0D:ABEF: FF        .byte $FF   ; 
- - - - - - 0x036C00 0D:ABF0: FF        .byte $FF   ; 
- - - - - - 0x036C01 0D:ABF1: FF        .byte $FF   ; 
- - - - - - 0x036C02 0D:ABF2: FF        .byte $FF   ; 
- - - - - - 0x036C03 0D:ABF3: FF        .byte $FF   ; 
- - - - - - 0x036C04 0D:ABF4: FF        .byte $FF   ; 
- - - - - - 0x036C05 0D:ABF5: FF        .byte $FF   ; 
- - - - - - 0x036C06 0D:ABF6: FF        .byte $FF   ; 
- - - - - - 0x036C07 0D:ABF7: FF        .byte $FF   ; 
- - - - - - 0x036C08 0D:ABF8: FF        .byte $FF   ; 
- - - - - - 0x036C09 0D:ABF9: FF        .byte $FF   ; 
- - - - - - 0x036C0A 0D:ABFA: FF        .byte $FF   ; 
- - - - - - 0x036C0B 0D:ABFB: FF        .byte $FF   ; 
- - - - - - 0x036C0C 0D:ABFC: FF        .byte $FF   ; 
- - - - - - 0x036C0D 0D:ABFD: FF        .byte $FF   ; 
- - - - - - 0x036C0E 0D:ABFE: FF        .byte $FF   ; 
- - - - - - 0x036C0F 0D:ABFF: FF        .byte $FF   ; 
- - - - - - 0x036C10 0D:AC00: FF        .byte $FF   ; 
- - - - - - 0x036C11 0D:AC01: FF        .byte $FF   ; 
- - - - - - 0x036C12 0D:AC02: FF        .byte $FF   ; 
- - - - - - 0x036C13 0D:AC03: FF        .byte $FF   ; 
- - - - - - 0x036C14 0D:AC04: FF        .byte $FF   ; 
- - - - - - 0x036C15 0D:AC05: FF        .byte $FF   ; 
- - - - - - 0x036C16 0D:AC06: FF        .byte $FF   ; 
- - - - - - 0x036C17 0D:AC07: FF        .byte $FF   ; 
- - - - - - 0x036C18 0D:AC08: FF        .byte $FF   ; 
- - - - - - 0x036C19 0D:AC09: FF        .byte $FF   ; 
- - - - - - 0x036C1A 0D:AC0A: FF        .byte $FF   ; 
- - - - - - 0x036C1B 0D:AC0B: FF        .byte $FF   ; 
- - - - - - 0x036C1C 0D:AC0C: FF        .byte $FF   ; 
- - - - - - 0x036C1D 0D:AC0D: FF        .byte $FF   ; 
- - - - - - 0x036C1E 0D:AC0E: FF        .byte $FF   ; 
- - - - - - 0x036C1F 0D:AC0F: FF        .byte $FF   ; 
- - - - - - 0x036C20 0D:AC10: FF        .byte $FF   ; 
- - - - - - 0x036C21 0D:AC11: FF        .byte $FF   ; 
- - - - - - 0x036C22 0D:AC12: FF        .byte $FF   ; 
- - - - - - 0x036C23 0D:AC13: FF        .byte $FF   ; 
- - - - - - 0x036C24 0D:AC14: FF        .byte $FF   ; 
- - - - - - 0x036C25 0D:AC15: FF        .byte $FF   ; 
- - - - - - 0x036C26 0D:AC16: FF        .byte $FF   ; 
- - - - - - 0x036C27 0D:AC17: FF        .byte $FF   ; 
- - - - - - 0x036C28 0D:AC18: FF        .byte $FF   ; 
- - - - - - 0x036C29 0D:AC19: FF        .byte $FF   ; 
- - - - - - 0x036C2A 0D:AC1A: FF        .byte $FF   ; 
- - - - - - 0x036C2B 0D:AC1B: FF        .byte $FF   ; 
- - - - - - 0x036C2C 0D:AC1C: FF        .byte $FF   ; 
- - - - - - 0x036C2D 0D:AC1D: FF        .byte $FF   ; 
- - - - - - 0x036C2E 0D:AC1E: FF        .byte $FF   ; 
- - - - - - 0x036C2F 0D:AC1F: FF        .byte $FF   ; 
- - - - - - 0x036C30 0D:AC20: FF        .byte $FF   ; 
- - - - - - 0x036C31 0D:AC21: FF        .byte $FF   ; 
- - - - - - 0x036C32 0D:AC22: FF        .byte $FF   ; 
- - - - - - 0x036C33 0D:AC23: FF        .byte $FF   ; 
- - - - - - 0x036C34 0D:AC24: FF        .byte $FF   ; 
- - - - - - 0x036C35 0D:AC25: FF        .byte $FF   ; 
- - - - - - 0x036C36 0D:AC26: FF        .byte $FF   ; 
- - - - - - 0x036C37 0D:AC27: FF        .byte $FF   ; 
- - - - - - 0x036C38 0D:AC28: FF        .byte $FF   ; 
- - - - - - 0x036C39 0D:AC29: FF        .byte $FF   ; 
- - - - - - 0x036C3A 0D:AC2A: FF        .byte $FF   ; 
- - - - - - 0x036C3B 0D:AC2B: FF        .byte $FF   ; 
- - - - - - 0x036C3C 0D:AC2C: FF        .byte $FF   ; 
- - - - - - 0x036C3D 0D:AC2D: FF        .byte $FF   ; 
- - - - - - 0x036C3E 0D:AC2E: FF        .byte $FF   ; 
- - - - - - 0x036C3F 0D:AC2F: FF        .byte $FF   ; 
- - - - - - 0x036C40 0D:AC30: FF        .byte $FF   ; 
- - - - - - 0x036C41 0D:AC31: FF        .byte $FF   ; 
- - - - - - 0x036C42 0D:AC32: FF        .byte $FF   ; 
- - - - - - 0x036C43 0D:AC33: FF        .byte $FF   ; 
- - - - - - 0x036C44 0D:AC34: FF        .byte $FF   ; 
- - - - - - 0x036C45 0D:AC35: FF        .byte $FF   ; 
- - - - - - 0x036C46 0D:AC36: FF        .byte $FF   ; 
- - - - - - 0x036C47 0D:AC37: FF        .byte $FF   ; 
- - - - - - 0x036C48 0D:AC38: FF        .byte $FF   ; 
- - - - - - 0x036C49 0D:AC39: FF        .byte $FF   ; 
- - - - - - 0x036C4A 0D:AC3A: FF        .byte $FF   ; 
- - - - - - 0x036C4B 0D:AC3B: FF        .byte $FF   ; 
- - - - - - 0x036C4C 0D:AC3C: FF        .byte $FF   ; 
- - - - - - 0x036C4D 0D:AC3D: FF        .byte $FF   ; 
- - - - - - 0x036C4E 0D:AC3E: FF        .byte $FF   ; 
- - - - - - 0x036C4F 0D:AC3F: FF        .byte $FF   ; 
- - - - - - 0x036C50 0D:AC40: FF        .byte $FF   ; 
- - - - - - 0x036C51 0D:AC41: FF        .byte $FF   ; 
- - - - - - 0x036C52 0D:AC42: FF        .byte $FF   ; 
- - - - - - 0x036C53 0D:AC43: FF        .byte $FF   ; 
- - - - - - 0x036C54 0D:AC44: FF        .byte $FF   ; 
- - - - - - 0x036C55 0D:AC45: FF        .byte $FF   ; 
- - - - - - 0x036C56 0D:AC46: FF        .byte $FF   ; 
- - - - - - 0x036C57 0D:AC47: FF        .byte $FF   ; 
- - - - - - 0x036C58 0D:AC48: FF        .byte $FF   ; 
- - - - - - 0x036C59 0D:AC49: FF        .byte $FF   ; 
- - - - - - 0x036C5A 0D:AC4A: FF        .byte $FF   ; 
- - - - - - 0x036C5B 0D:AC4B: FF        .byte $FF   ; 
- - - - - - 0x036C5C 0D:AC4C: FF        .byte $FF   ; 
- - - - - - 0x036C5D 0D:AC4D: FF        .byte $FF   ; 
- - - - - - 0x036C5E 0D:AC4E: FF        .byte $FF   ; 
- - - - - - 0x036C5F 0D:AC4F: FF        .byte $FF   ; 
- - - - - - 0x036C60 0D:AC50: FF        .byte $FF   ; 
- - - - - - 0x036C61 0D:AC51: FF        .byte $FF   ; 
- - - - - - 0x036C62 0D:AC52: FF        .byte $FF   ; 
- - - - - - 0x036C63 0D:AC53: FF        .byte $FF   ; 
- - - - - - 0x036C64 0D:AC54: FF        .byte $FF   ; 
- - - - - - 0x036C65 0D:AC55: FF        .byte $FF   ; 
- - - - - - 0x036C66 0D:AC56: FF        .byte $FF   ; 
- - - - - - 0x036C67 0D:AC57: FF        .byte $FF   ; 
- - - - - - 0x036C68 0D:AC58: FF        .byte $FF   ; 
- - - - - - 0x036C69 0D:AC59: FF        .byte $FF   ; 
- - - - - - 0x036C6A 0D:AC5A: FF        .byte $FF   ; 
- - - - - - 0x036C6B 0D:AC5B: FF        .byte $FF   ; 
- - - - - - 0x036C6C 0D:AC5C: FF        .byte $FF   ; 
- - - - - - 0x036C6D 0D:AC5D: FF        .byte $FF   ; 
- - - - - - 0x036C6E 0D:AC5E: FF        .byte $FF   ; 
- - - - - - 0x036C6F 0D:AC5F: FF        .byte $FF   ; 
- - - - - - 0x036C70 0D:AC60: FF        .byte $FF   ; 
- - - - - - 0x036C71 0D:AC61: FF        .byte $FF   ; 
- - - - - - 0x036C72 0D:AC62: FF        .byte $FF   ; 
- - - - - - 0x036C73 0D:AC63: FF        .byte $FF   ; 
- - - - - - 0x036C74 0D:AC64: FF        .byte $FF   ; 
- - - - - - 0x036C75 0D:AC65: FF        .byte $FF   ; 
- - - - - - 0x036C76 0D:AC66: FF        .byte $FF   ; 
- - - - - - 0x036C77 0D:AC67: FF        .byte $FF   ; 
- - - - - - 0x036C78 0D:AC68: FF        .byte $FF   ; 
- - - - - - 0x036C79 0D:AC69: FF        .byte $FF   ; 
- - - - - - 0x036C7A 0D:AC6A: FF        .byte $FF   ; 
- - - - - - 0x036C7B 0D:AC6B: FF        .byte $FF   ; 
- - - - - - 0x036C7C 0D:AC6C: FF        .byte $FF   ; 
- - - - - - 0x036C7D 0D:AC6D: FF        .byte $FF   ; 
- - - - - - 0x036C7E 0D:AC6E: FF        .byte $FF   ; 
- - - - - - 0x036C7F 0D:AC6F: FF        .byte $FF   ; 
- - - - - - 0x036C80 0D:AC70: FF        .byte $FF   ; 
- - - - - - 0x036C81 0D:AC71: FF        .byte $FF   ; 
- - - - - - 0x036C82 0D:AC72: FF        .byte $FF   ; 
- - - - - - 0x036C83 0D:AC73: FF        .byte $FF   ; 
- - - - - - 0x036C84 0D:AC74: FF        .byte $FF   ; 
- - - - - - 0x036C85 0D:AC75: FF        .byte $FF   ; 
- - - - - - 0x036C86 0D:AC76: FF        .byte $FF   ; 
- - - - - - 0x036C87 0D:AC77: FF        .byte $FF   ; 
- - - - - - 0x036C88 0D:AC78: FF        .byte $FF   ; 
- - - - - - 0x036C89 0D:AC79: FF        .byte $FF   ; 
- - - - - - 0x036C8A 0D:AC7A: FF        .byte $FF   ; 
- - - - - - 0x036C8B 0D:AC7B: FF        .byte $FF   ; 
- - - - - - 0x036C8C 0D:AC7C: FF        .byte $FF   ; 
- - - - - - 0x036C8D 0D:AC7D: FF        .byte $FF   ; 
- - - - - - 0x036C8E 0D:AC7E: FF        .byte $FF   ; 
- - - - - - 0x036C8F 0D:AC7F: FF        .byte $FF   ; 
- - - - - - 0x036C90 0D:AC80: FF        .byte $FF   ; 
- - - - - - 0x036C91 0D:AC81: FF        .byte $FF   ; 
- - - - - - 0x036C92 0D:AC82: FF        .byte $FF   ; 
- - - - - - 0x036C93 0D:AC83: FF        .byte $FF   ; 
- - - - - - 0x036C94 0D:AC84: FF        .byte $FF   ; 
- - - - - - 0x036C95 0D:AC85: FF        .byte $FF   ; 
- - - - - - 0x036C96 0D:AC86: FF        .byte $FF   ; 
- - - - - - 0x036C97 0D:AC87: FF        .byte $FF   ; 
- - - - - - 0x036C98 0D:AC88: FF        .byte $FF   ; 
- - - - - - 0x036C99 0D:AC89: FF        .byte $FF   ; 
- - - - - - 0x036C9A 0D:AC8A: FF        .byte $FF   ; 
- - - - - - 0x036C9B 0D:AC8B: FF        .byte $FF   ; 
- - - - - - 0x036C9C 0D:AC8C: FF        .byte $FF   ; 
- - - - - - 0x036C9D 0D:AC8D: FF        .byte $FF   ; 
- - - - - - 0x036C9E 0D:AC8E: FF        .byte $FF   ; 
- - - - - - 0x036C9F 0D:AC8F: FF        .byte $FF   ; 
- - - - - - 0x036CA0 0D:AC90: FF        .byte $FF   ; 
- - - - - - 0x036CA1 0D:AC91: FF        .byte $FF   ; 
- - - - - - 0x036CA2 0D:AC92: FF        .byte $FF   ; 
- - - - - - 0x036CA3 0D:AC93: FF        .byte $FF   ; 
- - - - - - 0x036CA4 0D:AC94: FF        .byte $FF   ; 
- - - - - - 0x036CA5 0D:AC95: FF        .byte $FF   ; 
- - - - - - 0x036CA6 0D:AC96: FF        .byte $FF   ; 
- - - - - - 0x036CA7 0D:AC97: FF        .byte $FF   ; 
- - - - - - 0x036CA8 0D:AC98: FF        .byte $FF   ; 
- - - - - - 0x036CA9 0D:AC99: FF        .byte $FF   ; 
- - - - - - 0x036CAA 0D:AC9A: FF        .byte $FF   ; 
- - - - - - 0x036CAB 0D:AC9B: FF        .byte $FF   ; 
- - - - - - 0x036CAC 0D:AC9C: FF        .byte $FF   ; 
- - - - - - 0x036CAD 0D:AC9D: FF        .byte $FF   ; 
- - - - - - 0x036CAE 0D:AC9E: FF        .byte $FF   ; 
- - - - - - 0x036CAF 0D:AC9F: FF        .byte $FF   ; 
- - - - - - 0x036CB0 0D:ACA0: FF        .byte $FF   ; 
- - - - - - 0x036CB1 0D:ACA1: FF        .byte $FF   ; 
- - - - - - 0x036CB2 0D:ACA2: FF        .byte $FF   ; 
- - - - - - 0x036CB3 0D:ACA3: FF        .byte $FF   ; 
- - - - - - 0x036CB4 0D:ACA4: FF        .byte $FF   ; 
- - - - - - 0x036CB5 0D:ACA5: FF        .byte $FF   ; 
- - - - - - 0x036CB6 0D:ACA6: FF        .byte $FF   ; 
- - - - - - 0x036CB7 0D:ACA7: FF        .byte $FF   ; 
- - - - - - 0x036CB8 0D:ACA8: FF        .byte $FF   ; 
- - - - - - 0x036CB9 0D:ACA9: FF        .byte $FF   ; 
- - - - - - 0x036CBA 0D:ACAA: FF        .byte $FF   ; 
- - - - - - 0x036CBB 0D:ACAB: FF        .byte $FF   ; 
- - - - - - 0x036CBC 0D:ACAC: FF        .byte $FF   ; 
- - - - - - 0x036CBD 0D:ACAD: FF        .byte $FF   ; 
- - - - - - 0x036CBE 0D:ACAE: FF        .byte $FF   ; 
- - - - - - 0x036CBF 0D:ACAF: FF        .byte $FF   ; 
- - - - - - 0x036CC0 0D:ACB0: FF        .byte $FF   ; 
- - - - - - 0x036CC1 0D:ACB1: FF        .byte $FF   ; 
- - - - - - 0x036CC2 0D:ACB2: FF        .byte $FF   ; 
- - - - - - 0x036CC3 0D:ACB3: FF        .byte $FF   ; 
- - - - - - 0x036CC4 0D:ACB4: FF        .byte $FF   ; 
- - - - - - 0x036CC5 0D:ACB5: FF        .byte $FF   ; 
- - - - - - 0x036CC6 0D:ACB6: FF        .byte $FF   ; 
- - - - - - 0x036CC7 0D:ACB7: FF        .byte $FF   ; 
- - - - - - 0x036CC8 0D:ACB8: FF        .byte $FF   ; 
- - - - - - 0x036CC9 0D:ACB9: FF        .byte $FF   ; 
- - - - - - 0x036CCA 0D:ACBA: FF        .byte $FF   ; 
- - - - - - 0x036CCB 0D:ACBB: FF        .byte $FF   ; 
- - - - - - 0x036CCC 0D:ACBC: FF        .byte $FF   ; 
- - - - - - 0x036CCD 0D:ACBD: FF        .byte $FF   ; 
- - - - - - 0x036CCE 0D:ACBE: FF        .byte $FF   ; 
- - - - - - 0x036CCF 0D:ACBF: FF        .byte $FF   ; 
- - - - - - 0x036CD0 0D:ACC0: FF        .byte $FF   ; 
- - - - - - 0x036CD1 0D:ACC1: FF        .byte $FF   ; 
- - - - - - 0x036CD2 0D:ACC2: FF        .byte $FF   ; 
- - - - - - 0x036CD3 0D:ACC3: FF        .byte $FF   ; 
- - - - - - 0x036CD4 0D:ACC4: FF        .byte $FF   ; 
- - - - - - 0x036CD5 0D:ACC5: FF        .byte $FF   ; 
- - - - - - 0x036CD6 0D:ACC6: FF        .byte $FF   ; 
- - - - - - 0x036CD7 0D:ACC7: FF        .byte $FF   ; 
- - - - - - 0x036CD8 0D:ACC8: FF        .byte $FF   ; 
- - - - - - 0x036CD9 0D:ACC9: FF        .byte $FF   ; 
- - - - - - 0x036CDA 0D:ACCA: FF        .byte $FF   ; 
- - - - - - 0x036CDB 0D:ACCB: FF        .byte $FF   ; 
- - - - - - 0x036CDC 0D:ACCC: FF        .byte $FF   ; 
- - - - - - 0x036CDD 0D:ACCD: FF        .byte $FF   ; 
- - - - - - 0x036CDE 0D:ACCE: FF        .byte $FF   ; 
- - - - - - 0x036CDF 0D:ACCF: FF        .byte $FF   ; 
- - - - - - 0x036CE0 0D:ACD0: FF        .byte $FF   ; 
- - - - - - 0x036CE1 0D:ACD1: FF        .byte $FF   ; 
- - - - - - 0x036CE2 0D:ACD2: FF        .byte $FF   ; 
- - - - - - 0x036CE3 0D:ACD3: FF        .byte $FF   ; 
- - - - - - 0x036CE4 0D:ACD4: FF        .byte $FF   ; 
- - - - - - 0x036CE5 0D:ACD5: FF        .byte $FF   ; 
- - - - - - 0x036CE6 0D:ACD6: FF        .byte $FF   ; 
- - - - - - 0x036CE7 0D:ACD7: FF        .byte $FF   ; 
- - - - - - 0x036CE8 0D:ACD8: FF        .byte $FF   ; 
- - - - - - 0x036CE9 0D:ACD9: FF        .byte $FF   ; 
- - - - - - 0x036CEA 0D:ACDA: FF        .byte $FF   ; 
- - - - - - 0x036CEB 0D:ACDB: FF        .byte $FF   ; 
- - - - - - 0x036CEC 0D:ACDC: FF        .byte $FF   ; 
- - - - - - 0x036CED 0D:ACDD: FF        .byte $FF   ; 
- - - - - - 0x036CEE 0D:ACDE: FF        .byte $FF   ; 
- - - - - - 0x036CEF 0D:ACDF: FF        .byte $FF   ; 
- - - - - - 0x036CF0 0D:ACE0: FF        .byte $FF   ; 
- - - - - - 0x036CF1 0D:ACE1: FF        .byte $FF   ; 
- - - - - - 0x036CF2 0D:ACE2: FF        .byte $FF   ; 
- - - - - - 0x036CF3 0D:ACE3: FF        .byte $FF   ; 
- - - - - - 0x036CF4 0D:ACE4: FF        .byte $FF   ; 
- - - - - - 0x036CF5 0D:ACE5: FF        .byte $FF   ; 
- - - - - - 0x036CF6 0D:ACE6: FF        .byte $FF   ; 
- - - - - - 0x036CF7 0D:ACE7: FF        .byte $FF   ; 
- - - - - - 0x036CF8 0D:ACE8: FF        .byte $FF   ; 
- - - - - - 0x036CF9 0D:ACE9: FF        .byte $FF   ; 
- - - - - - 0x036CFA 0D:ACEA: FF        .byte $FF   ; 
- - - - - - 0x036CFB 0D:ACEB: FF        .byte $FF   ; 
- - - - - - 0x036CFC 0D:ACEC: FF        .byte $FF   ; 
- - - - - - 0x036CFD 0D:ACED: FF        .byte $FF   ; 
- - - - - - 0x036CFE 0D:ACEE: FF        .byte $FF   ; 
- - - - - - 0x036CFF 0D:ACEF: FF        .byte $FF   ; 
- - - - - - 0x036D00 0D:ACF0: FF        .byte $FF   ; 
- - - - - - 0x036D01 0D:ACF1: FF        .byte $FF   ; 
- - - - - - 0x036D02 0D:ACF2: FF        .byte $FF   ; 
- - - - - - 0x036D03 0D:ACF3: FF        .byte $FF   ; 
- - - - - - 0x036D04 0D:ACF4: FF        .byte $FF   ; 
- - - - - - 0x036D05 0D:ACF5: FF        .byte $FF   ; 
- - - - - - 0x036D06 0D:ACF6: FF        .byte $FF   ; 
- - - - - - 0x036D07 0D:ACF7: FF        .byte $FF   ; 
- - - - - - 0x036D08 0D:ACF8: FF        .byte $FF   ; 
- - - - - - 0x036D09 0D:ACF9: FF        .byte $FF   ; 
- - - - - - 0x036D0A 0D:ACFA: FF        .byte $FF   ; 
- - - - - - 0x036D0B 0D:ACFB: FF        .byte $FF   ; 
- - - - - - 0x036D0C 0D:ACFC: FF        .byte $FF   ; 
- - - - - - 0x036D0D 0D:ACFD: FF        .byte $FF   ; 
- - - - - - 0x036D0E 0D:ACFE: FF        .byte $FF   ; 
- - - - - - 0x036D0F 0D:ACFF: FF        .byte $FF   ; 
- - - - - - 0x036D10 0D:AD00: FF        .byte $FF   ; 
- - - - - - 0x036D11 0D:AD01: FF        .byte $FF   ; 
- - - - - - 0x036D12 0D:AD02: FF        .byte $FF   ; 
- - - - - - 0x036D13 0D:AD03: FF        .byte $FF   ; 
- - - - - - 0x036D14 0D:AD04: FF        .byte $FF   ; 
- - - - - - 0x036D15 0D:AD05: FF        .byte $FF   ; 
- - - - - - 0x036D16 0D:AD06: FF        .byte $FF   ; 
- - - - - - 0x036D17 0D:AD07: FF        .byte $FF   ; 
- - - - - - 0x036D18 0D:AD08: FF        .byte $FF   ; 
- - - - - - 0x036D19 0D:AD09: FF        .byte $FF   ; 
- - - - - - 0x036D1A 0D:AD0A: FF        .byte $FF   ; 
- - - - - - 0x036D1B 0D:AD0B: FF        .byte $FF   ; 
- - - - - - 0x036D1C 0D:AD0C: FF        .byte $FF   ; 
- - - - - - 0x036D1D 0D:AD0D: FF        .byte $FF   ; 
- - - - - - 0x036D1E 0D:AD0E: FF        .byte $FF   ; 
- - - - - - 0x036D1F 0D:AD0F: FF        .byte $FF   ; 
- - - - - - 0x036D20 0D:AD10: FF        .byte $FF   ; 
- - - - - - 0x036D21 0D:AD11: FF        .byte $FF   ; 
- - - - - - 0x036D22 0D:AD12: FF        .byte $FF   ; 
- - - - - - 0x036D23 0D:AD13: FF        .byte $FF   ; 
- - - - - - 0x036D24 0D:AD14: FF        .byte $FF   ; 
- - - - - - 0x036D25 0D:AD15: FF        .byte $FF   ; 
- - - - - - 0x036D26 0D:AD16: FF        .byte $FF   ; 
- - - - - - 0x036D27 0D:AD17: FF        .byte $FF   ; 
- - - - - - 0x036D28 0D:AD18: FF        .byte $FF   ; 
- - - - - - 0x036D29 0D:AD19: FF        .byte $FF   ; 
- - - - - - 0x036D2A 0D:AD1A: FF        .byte $FF   ; 
- - - - - - 0x036D2B 0D:AD1B: FF        .byte $FF   ; 
- - - - - - 0x036D2C 0D:AD1C: FF        .byte $FF   ; 
- - - - - - 0x036D2D 0D:AD1D: FF        .byte $FF   ; 
- - - - - - 0x036D2E 0D:AD1E: FF        .byte $FF   ; 
- - - - - - 0x036D2F 0D:AD1F: FF        .byte $FF   ; 
- - - - - - 0x036D30 0D:AD20: FF        .byte $FF   ; 
- - - - - - 0x036D31 0D:AD21: FF        .byte $FF   ; 
- - - - - - 0x036D32 0D:AD22: FF        .byte $FF   ; 
- - - - - - 0x036D33 0D:AD23: FF        .byte $FF   ; 
- - - - - - 0x036D34 0D:AD24: FF        .byte $FF   ; 
- - - - - - 0x036D35 0D:AD25: FF        .byte $FF   ; 
- - - - - - 0x036D36 0D:AD26: FF        .byte $FF   ; 
- - - - - - 0x036D37 0D:AD27: FF        .byte $FF   ; 
- - - - - - 0x036D38 0D:AD28: FF        .byte $FF   ; 
- - - - - - 0x036D39 0D:AD29: FF        .byte $FF   ; 
- - - - - - 0x036D3A 0D:AD2A: FF        .byte $FF   ; 
- - - - - - 0x036D3B 0D:AD2B: FF        .byte $FF   ; 
- - - - - - 0x036D3C 0D:AD2C: FF        .byte $FF   ; 
- - - - - - 0x036D3D 0D:AD2D: FF        .byte $FF   ; 
- - - - - - 0x036D3E 0D:AD2E: FF        .byte $FF   ; 
- - - - - - 0x036D3F 0D:AD2F: FF        .byte $FF   ; 
- - - - - - 0x036D40 0D:AD30: FF        .byte $FF   ; 
- - - - - - 0x036D41 0D:AD31: FF        .byte $FF   ; 
- - - - - - 0x036D42 0D:AD32: FF        .byte $FF   ; 
- - - - - - 0x036D43 0D:AD33: FF        .byte $FF   ; 
- - - - - - 0x036D44 0D:AD34: FF        .byte $FF   ; 
- - - - - - 0x036D45 0D:AD35: FF        .byte $FF   ; 
- - - - - - 0x036D46 0D:AD36: FF        .byte $FF   ; 
- - - - - - 0x036D47 0D:AD37: FF        .byte $FF   ; 
- - - - - - 0x036D48 0D:AD38: FF        .byte $FF   ; 
- - - - - - 0x036D49 0D:AD39: FF        .byte $FF   ; 
- - - - - - 0x036D4A 0D:AD3A: FF        .byte $FF   ; 
- - - - - - 0x036D4B 0D:AD3B: FF        .byte $FF   ; 
- - - - - - 0x036D4C 0D:AD3C: FF        .byte $FF   ; 
- - - - - - 0x036D4D 0D:AD3D: FF        .byte $FF   ; 
- - - - - - 0x036D4E 0D:AD3E: FF        .byte $FF   ; 
- - - - - - 0x036D4F 0D:AD3F: FF        .byte $FF   ; 
- - - - - - 0x036D50 0D:AD40: FF        .byte $FF   ; 
- - - - - - 0x036D51 0D:AD41: FF        .byte $FF   ; 
- - - - - - 0x036D52 0D:AD42: FF        .byte $FF   ; 
- - - - - - 0x036D53 0D:AD43: FF        .byte $FF   ; 
- - - - - - 0x036D54 0D:AD44: FF        .byte $FF   ; 
- - - - - - 0x036D55 0D:AD45: FF        .byte $FF   ; 
- - - - - - 0x036D56 0D:AD46: FF        .byte $FF   ; 
- - - - - - 0x036D57 0D:AD47: FF        .byte $FF   ; 
- - - - - - 0x036D58 0D:AD48: FF        .byte $FF   ; 
- - - - - - 0x036D59 0D:AD49: FF        .byte $FF   ; 
- - - - - - 0x036D5A 0D:AD4A: FF        .byte $FF   ; 
- - - - - - 0x036D5B 0D:AD4B: FF        .byte $FF   ; 
- - - - - - 0x036D5C 0D:AD4C: FF        .byte $FF   ; 
- - - - - - 0x036D5D 0D:AD4D: FF        .byte $FF   ; 
- - - - - - 0x036D5E 0D:AD4E: FF        .byte $FF   ; 
- - - - - - 0x036D5F 0D:AD4F: FF        .byte $FF   ; 
- - - - - - 0x036D60 0D:AD50: FF        .byte $FF   ; 
- - - - - - 0x036D61 0D:AD51: FF        .byte $FF   ; 
- - - - - - 0x036D62 0D:AD52: FF        .byte $FF   ; 
- - - - - - 0x036D63 0D:AD53: FF        .byte $FF   ; 
- - - - - - 0x036D64 0D:AD54: FF        .byte $FF   ; 
- - - - - - 0x036D65 0D:AD55: FF        .byte $FF   ; 
- - - - - - 0x036D66 0D:AD56: FF        .byte $FF   ; 
- - - - - - 0x036D67 0D:AD57: FF        .byte $FF   ; 
- - - - - - 0x036D68 0D:AD58: FF        .byte $FF   ; 
- - - - - - 0x036D69 0D:AD59: FF        .byte $FF   ; 
- - - - - - 0x036D6A 0D:AD5A: FF        .byte $FF   ; 
- - - - - - 0x036D6B 0D:AD5B: FF        .byte $FF   ; 
- - - - - - 0x036D6C 0D:AD5C: FF        .byte $FF   ; 
- - - - - - 0x036D6D 0D:AD5D: FF        .byte $FF   ; 
- - - - - - 0x036D6E 0D:AD5E: FF        .byte $FF   ; 
- - - - - - 0x036D6F 0D:AD5F: FF        .byte $FF   ; 
- - - - - - 0x036D70 0D:AD60: FF        .byte $FF   ; 
- - - - - - 0x036D71 0D:AD61: FF        .byte $FF   ; 
- - - - - - 0x036D72 0D:AD62: FF        .byte $FF   ; 
- - - - - - 0x036D73 0D:AD63: FF        .byte $FF   ; 
- - - - - - 0x036D74 0D:AD64: FF        .byte $FF   ; 
- - - - - - 0x036D75 0D:AD65: FF        .byte $FF   ; 
- - - - - - 0x036D76 0D:AD66: FF        .byte $FF   ; 
- - - - - - 0x036D77 0D:AD67: FF        .byte $FF   ; 
- - - - - - 0x036D78 0D:AD68: FF        .byte $FF   ; 
- - - - - - 0x036D79 0D:AD69: FF        .byte $FF   ; 
- - - - - - 0x036D7A 0D:AD6A: FF        .byte $FF   ; 
- - - - - - 0x036D7B 0D:AD6B: FF        .byte $FF   ; 
- - - - - - 0x036D7C 0D:AD6C: FF        .byte $FF   ; 
- - - - - - 0x036D7D 0D:AD6D: FF        .byte $FF   ; 
- - - - - - 0x036D7E 0D:AD6E: FF        .byte $FF   ; 
- - - - - - 0x036D7F 0D:AD6F: FF        .byte $FF   ; 
- - - - - - 0x036D80 0D:AD70: FF        .byte $FF   ; 
- - - - - - 0x036D81 0D:AD71: FF        .byte $FF   ; 
- - - - - - 0x036D82 0D:AD72: FF        .byte $FF   ; 
- - - - - - 0x036D83 0D:AD73: FF        .byte $FF   ; 
- - - - - - 0x036D84 0D:AD74: FF        .byte $FF   ; 
- - - - - - 0x036D85 0D:AD75: FF        .byte $FF   ; 
- - - - - - 0x036D86 0D:AD76: FF        .byte $FF   ; 
- - - - - - 0x036D87 0D:AD77: FF        .byte $FF   ; 
- - - - - - 0x036D88 0D:AD78: FF        .byte $FF   ; 
- - - - - - 0x036D89 0D:AD79: FF        .byte $FF   ; 
- - - - - - 0x036D8A 0D:AD7A: FF        .byte $FF   ; 
- - - - - - 0x036D8B 0D:AD7B: FF        .byte $FF   ; 
- - - - - - 0x036D8C 0D:AD7C: FF        .byte $FF   ; 
- - - - - - 0x036D8D 0D:AD7D: FF        .byte $FF   ; 
- - - - - - 0x036D8E 0D:AD7E: FF        .byte $FF   ; 
- - - - - - 0x036D8F 0D:AD7F: FF        .byte $FF   ; 
- - - - - - 0x036D90 0D:AD80: FF        .byte $FF   ; 
- - - - - - 0x036D91 0D:AD81: FF        .byte $FF   ; 
- - - - - - 0x036D92 0D:AD82: FF        .byte $FF   ; 
- - - - - - 0x036D93 0D:AD83: FF        .byte $FF   ; 
- - - - - - 0x036D94 0D:AD84: FF        .byte $FF   ; 
- - - - - - 0x036D95 0D:AD85: FF        .byte $FF   ; 
- - - - - - 0x036D96 0D:AD86: FF        .byte $FF   ; 
- - - - - - 0x036D97 0D:AD87: FF        .byte $FF   ; 
- - - - - - 0x036D98 0D:AD88: FF        .byte $FF   ; 
- - - - - - 0x036D99 0D:AD89: FF        .byte $FF   ; 
- - - - - - 0x036D9A 0D:AD8A: FF        .byte $FF   ; 
- - - - - - 0x036D9B 0D:AD8B: FF        .byte $FF   ; 
- - - - - - 0x036D9C 0D:AD8C: FF        .byte $FF   ; 
- - - - - - 0x036D9D 0D:AD8D: FF        .byte $FF   ; 
- - - - - - 0x036D9E 0D:AD8E: FF        .byte $FF   ; 
- - - - - - 0x036D9F 0D:AD8F: FF        .byte $FF   ; 
- - - - - - 0x036DA0 0D:AD90: FF        .byte $FF   ; 
- - - - - - 0x036DA1 0D:AD91: FF        .byte $FF   ; 
- - - - - - 0x036DA2 0D:AD92: FF        .byte $FF   ; 
- - - - - - 0x036DA3 0D:AD93: FF        .byte $FF   ; 
- - - - - - 0x036DA4 0D:AD94: FF        .byte $FF   ; 
- - - - - - 0x036DA5 0D:AD95: FF        .byte $FF   ; 
- - - - - - 0x036DA6 0D:AD96: FF        .byte $FF   ; 
- - - - - - 0x036DA7 0D:AD97: FF        .byte $FF   ; 
- - - - - - 0x036DA8 0D:AD98: FF        .byte $FF   ; 
- - - - - - 0x036DA9 0D:AD99: FF        .byte $FF   ; 
- - - - - - 0x036DAA 0D:AD9A: FF        .byte $FF   ; 
- - - - - - 0x036DAB 0D:AD9B: FF        .byte $FF   ; 
- - - - - - 0x036DAC 0D:AD9C: FF        .byte $FF   ; 
- - - - - - 0x036DAD 0D:AD9D: FF        .byte $FF   ; 
- - - - - - 0x036DAE 0D:AD9E: FF        .byte $FF   ; 
- - - - - - 0x036DAF 0D:AD9F: FF        .byte $FF   ; 
- - - - - - 0x036DB0 0D:ADA0: FF        .byte $FF   ; 
- - - - - - 0x036DB1 0D:ADA1: FF        .byte $FF   ; 
- - - - - - 0x036DB2 0D:ADA2: FF        .byte $FF   ; 
- - - - - - 0x036DB3 0D:ADA3: FF        .byte $FF   ; 
- - - - - - 0x036DB4 0D:ADA4: FF        .byte $FF   ; 
- - - - - - 0x036DB5 0D:ADA5: FF        .byte $FF   ; 
- - - - - - 0x036DB6 0D:ADA6: FF        .byte $FF   ; 
- - - - - - 0x036DB7 0D:ADA7: FF        .byte $FF   ; 
- - - - - - 0x036DB8 0D:ADA8: FF        .byte $FF   ; 
- - - - - - 0x036DB9 0D:ADA9: FF        .byte $FF   ; 
- - - - - - 0x036DBA 0D:ADAA: FF        .byte $FF   ; 
- - - - - - 0x036DBB 0D:ADAB: FF        .byte $FF   ; 
- - - - - - 0x036DBC 0D:ADAC: FF        .byte $FF   ; 
- - - - - - 0x036DBD 0D:ADAD: FF        .byte $FF   ; 
- - - - - - 0x036DBE 0D:ADAE: FF        .byte $FF   ; 
- - - - - - 0x036DBF 0D:ADAF: FF        .byte $FF   ; 
- - - - - - 0x036DC0 0D:ADB0: FF        .byte $FF   ; 
- - - - - - 0x036DC1 0D:ADB1: FF        .byte $FF   ; 
- - - - - - 0x036DC2 0D:ADB2: FF        .byte $FF   ; 
- - - - - - 0x036DC3 0D:ADB3: FF        .byte $FF   ; 
- - - - - - 0x036DC4 0D:ADB4: FF        .byte $FF   ; 
- - - - - - 0x036DC5 0D:ADB5: FF        .byte $FF   ; 
- - - - - - 0x036DC6 0D:ADB6: FF        .byte $FF   ; 
- - - - - - 0x036DC7 0D:ADB7: FF        .byte $FF   ; 
- - - - - - 0x036DC8 0D:ADB8: FF        .byte $FF   ; 
- - - - - - 0x036DC9 0D:ADB9: FF        .byte $FF   ; 
- - - - - - 0x036DCA 0D:ADBA: FF        .byte $FF   ; 
- - - - - - 0x036DCB 0D:ADBB: FF        .byte $FF   ; 
- - - - - - 0x036DCC 0D:ADBC: FF        .byte $FF   ; 
- - - - - - 0x036DCD 0D:ADBD: FF        .byte $FF   ; 
- - - - - - 0x036DCE 0D:ADBE: FF        .byte $FF   ; 
- - - - - - 0x036DCF 0D:ADBF: FF        .byte $FF   ; 
- - - - - - 0x036DD0 0D:ADC0: FF        .byte $FF   ; 
- - - - - - 0x036DD1 0D:ADC1: FF        .byte $FF   ; 
- - - - - - 0x036DD2 0D:ADC2: FF        .byte $FF   ; 
- - - - - - 0x036DD3 0D:ADC3: FF        .byte $FF   ; 
- - - - - - 0x036DD4 0D:ADC4: FF        .byte $FF   ; 
- - - - - - 0x036DD5 0D:ADC5: FF        .byte $FF   ; 
- - - - - - 0x036DD6 0D:ADC6: FF        .byte $FF   ; 
- - - - - - 0x036DD7 0D:ADC7: FF        .byte $FF   ; 
- - - - - - 0x036DD8 0D:ADC8: FF        .byte $FF   ; 
- - - - - - 0x036DD9 0D:ADC9: FF        .byte $FF   ; 
- - - - - - 0x036DDA 0D:ADCA: FF        .byte $FF   ; 
- - - - - - 0x036DDB 0D:ADCB: FF        .byte $FF   ; 
- - - - - - 0x036DDC 0D:ADCC: FF        .byte $FF   ; 
- - - - - - 0x036DDD 0D:ADCD: FF        .byte $FF   ; 
- - - - - - 0x036DDE 0D:ADCE: FF        .byte $FF   ; 
- - - - - - 0x036DDF 0D:ADCF: FF        .byte $FF   ; 
- - - - - - 0x036DE0 0D:ADD0: FF        .byte $FF   ; 
- - - - - - 0x036DE1 0D:ADD1: FF        .byte $FF   ; 
- - - - - - 0x036DE2 0D:ADD2: FF        .byte $FF   ; 
- - - - - - 0x036DE3 0D:ADD3: FF        .byte $FF   ; 
- - - - - - 0x036DE4 0D:ADD4: FF        .byte $FF   ; 
- - - - - - 0x036DE5 0D:ADD5: FF        .byte $FF   ; 
- - - - - - 0x036DE6 0D:ADD6: FF        .byte $FF   ; 
- - - - - - 0x036DE7 0D:ADD7: FF        .byte $FF   ; 
- - - - - - 0x036DE8 0D:ADD8: FF        .byte $FF   ; 
- - - - - - 0x036DE9 0D:ADD9: FF        .byte $FF   ; 
- - - - - - 0x036DEA 0D:ADDA: FF        .byte $FF   ; 
- - - - - - 0x036DEB 0D:ADDB: FF        .byte $FF   ; 
- - - - - - 0x036DEC 0D:ADDC: FF        .byte $FF   ; 
- - - - - - 0x036DED 0D:ADDD: FF        .byte $FF   ; 
- - - - - - 0x036DEE 0D:ADDE: FF        .byte $FF   ; 
- - - - - - 0x036DEF 0D:ADDF: FF        .byte $FF   ; 
- - - - - - 0x036DF0 0D:ADE0: FF        .byte $FF   ; 
- - - - - - 0x036DF1 0D:ADE1: FF        .byte $FF   ; 
- - - - - - 0x036DF2 0D:ADE2: FF        .byte $FF   ; 
- - - - - - 0x036DF3 0D:ADE3: FF        .byte $FF   ; 
- - - - - - 0x036DF4 0D:ADE4: FF        .byte $FF   ; 
- - - - - - 0x036DF5 0D:ADE5: FF        .byte $FF   ; 
- - - - - - 0x036DF6 0D:ADE6: FF        .byte $FF   ; 
- - - - - - 0x036DF7 0D:ADE7: FF        .byte $FF   ; 
- - - - - - 0x036DF8 0D:ADE8: FF        .byte $FF   ; 
- - - - - - 0x036DF9 0D:ADE9: FF        .byte $FF   ; 
- - - - - - 0x036DFA 0D:ADEA: FF        .byte $FF   ; 
- - - - - - 0x036DFB 0D:ADEB: FF        .byte $FF   ; 
- - - - - - 0x036DFC 0D:ADEC: FF        .byte $FF   ; 
- - - - - - 0x036DFD 0D:ADED: FF        .byte $FF   ; 
- - - - - - 0x036DFE 0D:ADEE: FF        .byte $FF   ; 
- - - - - - 0x036DFF 0D:ADEF: FF        .byte $FF   ; 
- - - - - - 0x036E00 0D:ADF0: FF        .byte $FF   ; 
- - - - - - 0x036E01 0D:ADF1: FF        .byte $FF   ; 
- - - - - - 0x036E02 0D:ADF2: FF        .byte $FF   ; 
- - - - - - 0x036E03 0D:ADF3: FF        .byte $FF   ; 
- - - - - - 0x036E04 0D:ADF4: FF        .byte $FF   ; 
- - - - - - 0x036E05 0D:ADF5: FF        .byte $FF   ; 
- - - - - - 0x036E06 0D:ADF6: FF        .byte $FF   ; 
- - - - - - 0x036E07 0D:ADF7: FF        .byte $FF   ; 
- - - - - - 0x036E08 0D:ADF8: FF        .byte $FF   ; 
- - - - - - 0x036E09 0D:ADF9: FF        .byte $FF   ; 
- - - - - - 0x036E0A 0D:ADFA: FF        .byte $FF   ; 
- - - - - - 0x036E0B 0D:ADFB: FF        .byte $FF   ; 
- - - - - - 0x036E0C 0D:ADFC: FF        .byte $FF   ; 
- - - - - - 0x036E0D 0D:ADFD: FF        .byte $FF   ; 
- - - - - - 0x036E0E 0D:ADFE: FF        .byte $FF   ; 
- - - - - - 0x036E0F 0D:ADFF: FF        .byte $FF   ; 
- - - - - - 0x036E10 0D:AE00: FF        .byte $FF   ; 
- - - - - - 0x036E11 0D:AE01: FF        .byte $FF   ; 
- - - - - - 0x036E12 0D:AE02: FF        .byte $FF   ; 
- - - - - - 0x036E13 0D:AE03: FF        .byte $FF   ; 
- - - - - - 0x036E14 0D:AE04: FF        .byte $FF   ; 
- - - - - - 0x036E15 0D:AE05: FF        .byte $FF   ; 
- - - - - - 0x036E16 0D:AE06: FF        .byte $FF   ; 
- - - - - - 0x036E17 0D:AE07: FF        .byte $FF   ; 
- - - - - - 0x036E18 0D:AE08: FF        .byte $FF   ; 
- - - - - - 0x036E19 0D:AE09: FF        .byte $FF   ; 
- - - - - - 0x036E1A 0D:AE0A: FF        .byte $FF   ; 
- - - - - - 0x036E1B 0D:AE0B: FF        .byte $FF   ; 
- - - - - - 0x036E1C 0D:AE0C: FF        .byte $FF   ; 
- - - - - - 0x036E1D 0D:AE0D: FF        .byte $FF   ; 
- - - - - - 0x036E1E 0D:AE0E: FF        .byte $FF   ; 
- - - - - - 0x036E1F 0D:AE0F: FF        .byte $FF   ; 
- - - - - - 0x036E20 0D:AE10: FF        .byte $FF   ; 
- - - - - - 0x036E21 0D:AE11: FF        .byte $FF   ; 
- - - - - - 0x036E22 0D:AE12: FF        .byte $FF   ; 
- - - - - - 0x036E23 0D:AE13: FF        .byte $FF   ; 
- - - - - - 0x036E24 0D:AE14: FF        .byte $FF   ; 
- - - - - - 0x036E25 0D:AE15: FF        .byte $FF   ; 
- - - - - - 0x036E26 0D:AE16: FF        .byte $FF   ; 
- - - - - - 0x036E27 0D:AE17: FF        .byte $FF   ; 
- - - - - - 0x036E28 0D:AE18: FF        .byte $FF   ; 
- - - - - - 0x036E29 0D:AE19: FF        .byte $FF   ; 
- - - - - - 0x036E2A 0D:AE1A: FF        .byte $FF   ; 
- - - - - - 0x036E2B 0D:AE1B: FF        .byte $FF   ; 
- - - - - - 0x036E2C 0D:AE1C: FF        .byte $FF   ; 
- - - - - - 0x036E2D 0D:AE1D: FF        .byte $FF   ; 
- - - - - - 0x036E2E 0D:AE1E: FF        .byte $FF   ; 
- - - - - - 0x036E2F 0D:AE1F: FF        .byte $FF   ; 
- - - - - - 0x036E30 0D:AE20: FF        .byte $FF   ; 
- - - - - - 0x036E31 0D:AE21: FF        .byte $FF   ; 
- - - - - - 0x036E32 0D:AE22: FF        .byte $FF   ; 
- - - - - - 0x036E33 0D:AE23: FF        .byte $FF   ; 
- - - - - - 0x036E34 0D:AE24: FF        .byte $FF   ; 
- - - - - - 0x036E35 0D:AE25: FF        .byte $FF   ; 
- - - - - - 0x036E36 0D:AE26: FF        .byte $FF   ; 
- - - - - - 0x036E37 0D:AE27: FF        .byte $FF   ; 
- - - - - - 0x036E38 0D:AE28: FF        .byte $FF   ; 
- - - - - - 0x036E39 0D:AE29: FF        .byte $FF   ; 
- - - - - - 0x036E3A 0D:AE2A: FF        .byte $FF   ; 
- - - - - - 0x036E3B 0D:AE2B: FF        .byte $FF   ; 
- - - - - - 0x036E3C 0D:AE2C: FF        .byte $FF   ; 
- - - - - - 0x036E3D 0D:AE2D: FF        .byte $FF   ; 
- - - - - - 0x036E3E 0D:AE2E: FF        .byte $FF   ; 
- - - - - - 0x036E3F 0D:AE2F: FF        .byte $FF   ; 
- - - - - - 0x036E40 0D:AE30: FF        .byte $FF   ; 
- - - - - - 0x036E41 0D:AE31: FF        .byte $FF   ; 
- - - - - - 0x036E42 0D:AE32: FF        .byte $FF   ; 
- - - - - - 0x036E43 0D:AE33: FF        .byte $FF   ; 
- - - - - - 0x036E44 0D:AE34: FF        .byte $FF   ; 
- - - - - - 0x036E45 0D:AE35: FF        .byte $FF   ; 
- - - - - - 0x036E46 0D:AE36: FF        .byte $FF   ; 
- - - - - - 0x036E47 0D:AE37: FF        .byte $FF   ; 
- - - - - - 0x036E48 0D:AE38: FF        .byte $FF   ; 
- - - - - - 0x036E49 0D:AE39: FF        .byte $FF   ; 
- - - - - - 0x036E4A 0D:AE3A: FF        .byte $FF   ; 
- - - - - - 0x036E4B 0D:AE3B: FF        .byte $FF   ; 
- - - - - - 0x036E4C 0D:AE3C: FF        .byte $FF   ; 
- - - - - - 0x036E4D 0D:AE3D: FF        .byte $FF   ; 
- - - - - - 0x036E4E 0D:AE3E: FF        .byte $FF   ; 
- - - - - - 0x036E4F 0D:AE3F: FF        .byte $FF   ; 
- - - - - - 0x036E50 0D:AE40: FF        .byte $FF   ; 
- - - - - - 0x036E51 0D:AE41: FF        .byte $FF   ; 
- - - - - - 0x036E52 0D:AE42: FF        .byte $FF   ; 
- - - - - - 0x036E53 0D:AE43: FF        .byte $FF   ; 
- - - - - - 0x036E54 0D:AE44: FF        .byte $FF   ; 
- - - - - - 0x036E55 0D:AE45: FF        .byte $FF   ; 
- - - - - - 0x036E56 0D:AE46: FF        .byte $FF   ; 
- - - - - - 0x036E57 0D:AE47: FF        .byte $FF   ; 
- - - - - - 0x036E58 0D:AE48: FF        .byte $FF   ; 
- - - - - - 0x036E59 0D:AE49: FF        .byte $FF   ; 
- - - - - - 0x036E5A 0D:AE4A: FF        .byte $FF   ; 
- - - - - - 0x036E5B 0D:AE4B: FF        .byte $FF   ; 
- - - - - - 0x036E5C 0D:AE4C: FF        .byte $FF   ; 
- - - - - - 0x036E5D 0D:AE4D: FF        .byte $FF   ; 
- - - - - - 0x036E5E 0D:AE4E: FF        .byte $FF   ; 
- - - - - - 0x036E5F 0D:AE4F: FF        .byte $FF   ; 
- - - - - - 0x036E60 0D:AE50: FF        .byte $FF   ; 
- - - - - - 0x036E61 0D:AE51: FF        .byte $FF   ; 
- - - - - - 0x036E62 0D:AE52: FF        .byte $FF   ; 
- - - - - - 0x036E63 0D:AE53: FF        .byte $FF   ; 
- - - - - - 0x036E64 0D:AE54: FF        .byte $FF   ; 
- - - - - - 0x036E65 0D:AE55: FF        .byte $FF   ; 
- - - - - - 0x036E66 0D:AE56: FF        .byte $FF   ; 
- - - - - - 0x036E67 0D:AE57: FF        .byte $FF   ; 
- - - - - - 0x036E68 0D:AE58: FF        .byte $FF   ; 
- - - - - - 0x036E69 0D:AE59: FF        .byte $FF   ; 
- - - - - - 0x036E6A 0D:AE5A: FF        .byte $FF   ; 
- - - - - - 0x036E6B 0D:AE5B: FF        .byte $FF   ; 
- - - - - - 0x036E6C 0D:AE5C: FF        .byte $FF   ; 
- - - - - - 0x036E6D 0D:AE5D: FF        .byte $FF   ; 
- - - - - - 0x036E6E 0D:AE5E: FF        .byte $FF   ; 
- - - - - - 0x036E6F 0D:AE5F: FF        .byte $FF   ; 
- - - - - - 0x036E70 0D:AE60: FF        .byte $FF   ; 
- - - - - - 0x036E71 0D:AE61: FF        .byte $FF   ; 
- - - - - - 0x036E72 0D:AE62: FF        .byte $FF   ; 
- - - - - - 0x036E73 0D:AE63: FF        .byte $FF   ; 
- - - - - - 0x036E74 0D:AE64: FF        .byte $FF   ; 
- - - - - - 0x036E75 0D:AE65: FF        .byte $FF   ; 
- - - - - - 0x036E76 0D:AE66: FF        .byte $FF   ; 
- - - - - - 0x036E77 0D:AE67: FF        .byte $FF   ; 
- - - - - - 0x036E78 0D:AE68: FF        .byte $FF   ; 
- - - - - - 0x036E79 0D:AE69: FF        .byte $FF   ; 
- - - - - - 0x036E7A 0D:AE6A: FF        .byte $FF   ; 
- - - - - - 0x036E7B 0D:AE6B: FF        .byte $FF   ; 
- - - - - - 0x036E7C 0D:AE6C: FF        .byte $FF   ; 
- - - - - - 0x036E7D 0D:AE6D: FF        .byte $FF   ; 
- - - - - - 0x036E7E 0D:AE6E: FF        .byte $FF   ; 
- - - - - - 0x036E7F 0D:AE6F: FF        .byte $FF   ; 
- - - - - - 0x036E80 0D:AE70: FF        .byte $FF   ; 
- - - - - - 0x036E81 0D:AE71: FF        .byte $FF   ; 
- - - - - - 0x036E82 0D:AE72: FF        .byte $FF   ; 
- - - - - - 0x036E83 0D:AE73: FF        .byte $FF   ; 
- - - - - - 0x036E84 0D:AE74: FF        .byte $FF   ; 
- - - - - - 0x036E85 0D:AE75: FF        .byte $FF   ; 
- - - - - - 0x036E86 0D:AE76: FF        .byte $FF   ; 
- - - - - - 0x036E87 0D:AE77: FF        .byte $FF   ; 
- - - - - - 0x036E88 0D:AE78: FF        .byte $FF   ; 
- - - - - - 0x036E89 0D:AE79: FF        .byte $FF   ; 
- - - - - - 0x036E8A 0D:AE7A: FF        .byte $FF   ; 
- - - - - - 0x036E8B 0D:AE7B: FF        .byte $FF   ; 
- - - - - - 0x036E8C 0D:AE7C: FF        .byte $FF   ; 
- - - - - - 0x036E8D 0D:AE7D: FF        .byte $FF   ; 
- - - - - - 0x036E8E 0D:AE7E: FF        .byte $FF   ; 
- - - - - - 0x036E8F 0D:AE7F: FF        .byte $FF   ; 
- - - - - - 0x036E90 0D:AE80: FF        .byte $FF   ; 
- - - - - - 0x036E91 0D:AE81: FF        .byte $FF   ; 
- - - - - - 0x036E92 0D:AE82: FF        .byte $FF   ; 
- - - - - - 0x036E93 0D:AE83: FF        .byte $FF   ; 
- - - - - - 0x036E94 0D:AE84: FF        .byte $FF   ; 
- - - - - - 0x036E95 0D:AE85: FF        .byte $FF   ; 
- - - - - - 0x036E96 0D:AE86: FF        .byte $FF   ; 
- - - - - - 0x036E97 0D:AE87: FF        .byte $FF   ; 
- - - - - - 0x036E98 0D:AE88: FF        .byte $FF   ; 
- - - - - - 0x036E99 0D:AE89: FF        .byte $FF   ; 
- - - - - - 0x036E9A 0D:AE8A: FF        .byte $FF   ; 
- - - - - - 0x036E9B 0D:AE8B: FF        .byte $FF   ; 
- - - - - - 0x036E9C 0D:AE8C: FF        .byte $FF   ; 
- - - - - - 0x036E9D 0D:AE8D: FF        .byte $FF   ; 
- - - - - - 0x036E9E 0D:AE8E: FF        .byte $FF   ; 
- - - - - - 0x036E9F 0D:AE8F: FF        .byte $FF   ; 
- - - - - - 0x036EA0 0D:AE90: FF        .byte $FF   ; 
- - - - - - 0x036EA1 0D:AE91: FF        .byte $FF   ; 
- - - - - - 0x036EA2 0D:AE92: FF        .byte $FF   ; 
- - - - - - 0x036EA3 0D:AE93: FF        .byte $FF   ; 
- - - - - - 0x036EA4 0D:AE94: FF        .byte $FF   ; 
- - - - - - 0x036EA5 0D:AE95: FF        .byte $FF   ; 
- - - - - - 0x036EA6 0D:AE96: FF        .byte $FF   ; 
- - - - - - 0x036EA7 0D:AE97: FF        .byte $FF   ; 
- - - - - - 0x036EA8 0D:AE98: FF        .byte $FF   ; 
- - - - - - 0x036EA9 0D:AE99: FF        .byte $FF   ; 
- - - - - - 0x036EAA 0D:AE9A: FF        .byte $FF   ; 
- - - - - - 0x036EAB 0D:AE9B: FF        .byte $FF   ; 
- - - - - - 0x036EAC 0D:AE9C: FF        .byte $FF   ; 
- - - - - - 0x036EAD 0D:AE9D: FF        .byte $FF   ; 
- - - - - - 0x036EAE 0D:AE9E: FF        .byte $FF   ; 
- - - - - - 0x036EAF 0D:AE9F: FF        .byte $FF   ; 
- - - - - - 0x036EB0 0D:AEA0: FF        .byte $FF   ; 
- - - - - - 0x036EB1 0D:AEA1: FF        .byte $FF   ; 
- - - - - - 0x036EB2 0D:AEA2: FF        .byte $FF   ; 
- - - - - - 0x036EB3 0D:AEA3: FF        .byte $FF   ; 
- - - - - - 0x036EB4 0D:AEA4: FF        .byte $FF   ; 
- - - - - - 0x036EB5 0D:AEA5: FF        .byte $FF   ; 
- - - - - - 0x036EB6 0D:AEA6: FF        .byte $FF   ; 
- - - - - - 0x036EB7 0D:AEA7: FF        .byte $FF   ; 
- - - - - - 0x036EB8 0D:AEA8: FF        .byte $FF   ; 
- - - - - - 0x036EB9 0D:AEA9: FF        .byte $FF   ; 
- - - - - - 0x036EBA 0D:AEAA: FF        .byte $FF   ; 
- - - - - - 0x036EBB 0D:AEAB: FF        .byte $FF   ; 
- - - - - - 0x036EBC 0D:AEAC: FF        .byte $FF   ; 
- - - - - - 0x036EBD 0D:AEAD: FF        .byte $FF   ; 
- - - - - - 0x036EBE 0D:AEAE: FF        .byte $FF   ; 
- - - - - - 0x036EBF 0D:AEAF: FF        .byte $FF   ; 
- - - - - - 0x036EC0 0D:AEB0: FF        .byte $FF   ; 
- - - - - - 0x036EC1 0D:AEB1: FF        .byte $FF   ; 
- - - - - - 0x036EC2 0D:AEB2: FF        .byte $FF   ; 
- - - - - - 0x036EC3 0D:AEB3: FF        .byte $FF   ; 
- - - - - - 0x036EC4 0D:AEB4: FF        .byte $FF   ; 
- - - - - - 0x036EC5 0D:AEB5: FF        .byte $FF   ; 
- - - - - - 0x036EC6 0D:AEB6: FF        .byte $FF   ; 
- - - - - - 0x036EC7 0D:AEB7: FF        .byte $FF   ; 
- - - - - - 0x036EC8 0D:AEB8: FF        .byte $FF   ; 
- - - - - - 0x036EC9 0D:AEB9: FF        .byte $FF   ; 
- - - - - - 0x036ECA 0D:AEBA: FF        .byte $FF   ; 
- - - - - - 0x036ECB 0D:AEBB: FF        .byte $FF   ; 
- - - - - - 0x036ECC 0D:AEBC: FF        .byte $FF   ; 
- - - - - - 0x036ECD 0D:AEBD: FF        .byte $FF   ; 
- - - - - - 0x036ECE 0D:AEBE: FF        .byte $FF   ; 
- - - - - - 0x036ECF 0D:AEBF: FF        .byte $FF   ; 
- - - - - - 0x036ED0 0D:AEC0: FF        .byte $FF   ; 
- - - - - - 0x036ED1 0D:AEC1: FF        .byte $FF   ; 
- - - - - - 0x036ED2 0D:AEC2: FF        .byte $FF   ; 
- - - - - - 0x036ED3 0D:AEC3: FF        .byte $FF   ; 
- - - - - - 0x036ED4 0D:AEC4: FF        .byte $FF   ; 
- - - - - - 0x036ED5 0D:AEC5: FF        .byte $FF   ; 
- - - - - - 0x036ED6 0D:AEC6: FF        .byte $FF   ; 
- - - - - - 0x036ED7 0D:AEC7: FF        .byte $FF   ; 
- - - - - - 0x036ED8 0D:AEC8: FF        .byte $FF   ; 
- - - - - - 0x036ED9 0D:AEC9: FF        .byte $FF   ; 
- - - - - - 0x036EDA 0D:AECA: FF        .byte $FF   ; 
- - - - - - 0x036EDB 0D:AECB: FF        .byte $FF   ; 
- - - - - - 0x036EDC 0D:AECC: FF        .byte $FF   ; 
- - - - - - 0x036EDD 0D:AECD: FF        .byte $FF   ; 
- - - - - - 0x036EDE 0D:AECE: FF        .byte $FF   ; 
- - - - - - 0x036EDF 0D:AECF: FF        .byte $FF   ; 
- - - - - - 0x036EE0 0D:AED0: FF        .byte $FF   ; 
- - - - - - 0x036EE1 0D:AED1: FF        .byte $FF   ; 
- - - - - - 0x036EE2 0D:AED2: FF        .byte $FF   ; 
- - - - - - 0x036EE3 0D:AED3: FF        .byte $FF   ; 
- - - - - - 0x036EE4 0D:AED4: FF        .byte $FF   ; 
- - - - - - 0x036EE5 0D:AED5: FF        .byte $FF   ; 
- - - - - - 0x036EE6 0D:AED6: FF        .byte $FF   ; 
- - - - - - 0x036EE7 0D:AED7: FF        .byte $FF   ; 
- - - - - - 0x036EE8 0D:AED8: FF        .byte $FF   ; 
- - - - - - 0x036EE9 0D:AED9: FF        .byte $FF   ; 
- - - - - - 0x036EEA 0D:AEDA: FF        .byte $FF   ; 
- - - - - - 0x036EEB 0D:AEDB: FF        .byte $FF   ; 
- - - - - - 0x036EEC 0D:AEDC: FF        .byte $FF   ; 
- - - - - - 0x036EED 0D:AEDD: FF        .byte $FF   ; 
- - - - - - 0x036EEE 0D:AEDE: FF        .byte $FF   ; 
- - - - - - 0x036EEF 0D:AEDF: FF        .byte $FF   ; 
- - - - - - 0x036EF0 0D:AEE0: FF        .byte $FF   ; 
- - - - - - 0x036EF1 0D:AEE1: FF        .byte $FF   ; 
- - - - - - 0x036EF2 0D:AEE2: FF        .byte $FF   ; 
- - - - - - 0x036EF3 0D:AEE3: FF        .byte $FF   ; 
- - - - - - 0x036EF4 0D:AEE4: FF        .byte $FF   ; 
- - - - - - 0x036EF5 0D:AEE5: FF        .byte $FF   ; 
- - - - - - 0x036EF6 0D:AEE6: FF        .byte $FF   ; 
- - - - - - 0x036EF7 0D:AEE7: FF        .byte $FF   ; 
- - - - - - 0x036EF8 0D:AEE8: FF        .byte $FF   ; 
- - - - - - 0x036EF9 0D:AEE9: FF        .byte $FF   ; 
- - - - - - 0x036EFA 0D:AEEA: FF        .byte $FF   ; 
- - - - - - 0x036EFB 0D:AEEB: FF        .byte $FF   ; 
- - - - - - 0x036EFC 0D:AEEC: FF        .byte $FF   ; 
- - - - - - 0x036EFD 0D:AEED: FF        .byte $FF   ; 
- - - - - - 0x036EFE 0D:AEEE: FF        .byte $FF   ; 
- - - - - - 0x036EFF 0D:AEEF: FF        .byte $FF   ; 
- - - - - - 0x036F00 0D:AEF0: FF        .byte $FF   ; 
- - - - - - 0x036F01 0D:AEF1: FF        .byte $FF   ; 
- - - - - - 0x036F02 0D:AEF2: FF        .byte $FF   ; 
- - - - - - 0x036F03 0D:AEF3: FF        .byte $FF   ; 
- - - - - - 0x036F04 0D:AEF4: FF        .byte $FF   ; 
- - - - - - 0x036F05 0D:AEF5: FF        .byte $FF   ; 
- - - - - - 0x036F06 0D:AEF6: FF        .byte $FF   ; 
- - - - - - 0x036F07 0D:AEF7: FF        .byte $FF   ; 
- - - - - - 0x036F08 0D:AEF8: FF        .byte $FF   ; 
- - - - - - 0x036F09 0D:AEF9: FF        .byte $FF   ; 
- - - - - - 0x036F0A 0D:AEFA: FF        .byte $FF   ; 
- - - - - - 0x036F0B 0D:AEFB: FF        .byte $FF   ; 
- - - - - - 0x036F0C 0D:AEFC: FF        .byte $FF   ; 
- - - - - - 0x036F0D 0D:AEFD: FF        .byte $FF   ; 
- - - - - - 0x036F0E 0D:AEFE: FF        .byte $FF   ; 
- - - - - - 0x036F0F 0D:AEFF: FF        .byte $FF   ; 
- - - - - - 0x036F10 0D:AF00: FF        .byte $FF   ; 
- - - - - - 0x036F11 0D:AF01: FF        .byte $FF   ; 
- - - - - - 0x036F12 0D:AF02: FF        .byte $FF   ; 
- - - - - - 0x036F13 0D:AF03: FF        .byte $FF   ; 
- - - - - - 0x036F14 0D:AF04: FF        .byte $FF   ; 
- - - - - - 0x036F15 0D:AF05: FF        .byte $FF   ; 
- - - - - - 0x036F16 0D:AF06: FF        .byte $FF   ; 
- - - - - - 0x036F17 0D:AF07: FF        .byte $FF   ; 
- - - - - - 0x036F18 0D:AF08: FF        .byte $FF   ; 
- - - - - - 0x036F19 0D:AF09: FF        .byte $FF   ; 
- - - - - - 0x036F1A 0D:AF0A: FF        .byte $FF   ; 
- - - - - - 0x036F1B 0D:AF0B: FF        .byte $FF   ; 
- - - - - - 0x036F1C 0D:AF0C: FF        .byte $FF   ; 
- - - - - - 0x036F1D 0D:AF0D: FF        .byte $FF   ; 
- - - - - - 0x036F1E 0D:AF0E: FF        .byte $FF   ; 
- - - - - - 0x036F1F 0D:AF0F: FF        .byte $FF   ; 
- - - - - - 0x036F20 0D:AF10: FF        .byte $FF   ; 
- - - - - - 0x036F21 0D:AF11: FF        .byte $FF   ; 
- - - - - - 0x036F22 0D:AF12: FF        .byte $FF   ; 
- - - - - - 0x036F23 0D:AF13: FF        .byte $FF   ; 
- - - - - - 0x036F24 0D:AF14: FF        .byte $FF   ; 
- - - - - - 0x036F25 0D:AF15: FF        .byte $FF   ; 
- - - - - - 0x036F26 0D:AF16: FF        .byte $FF   ; 
- - - - - - 0x036F27 0D:AF17: FF        .byte $FF   ; 
- - - - - - 0x036F28 0D:AF18: FF        .byte $FF   ; 
- - - - - - 0x036F29 0D:AF19: FF        .byte $FF   ; 
- - - - - - 0x036F2A 0D:AF1A: FF        .byte $FF   ; 
- - - - - - 0x036F2B 0D:AF1B: FF        .byte $FF   ; 
- - - - - - 0x036F2C 0D:AF1C: FF        .byte $FF   ; 
- - - - - - 0x036F2D 0D:AF1D: FF        .byte $FF   ; 
- - - - - - 0x036F2E 0D:AF1E: FF        .byte $FF   ; 
- - - - - - 0x036F2F 0D:AF1F: FF        .byte $FF   ; 
- - - - - - 0x036F30 0D:AF20: FF        .byte $FF   ; 
- - - - - - 0x036F31 0D:AF21: FF        .byte $FF   ; 
- - - - - - 0x036F32 0D:AF22: FF        .byte $FF   ; 
- - - - - - 0x036F33 0D:AF23: FF        .byte $FF   ; 
- - - - - - 0x036F34 0D:AF24: FF        .byte $FF   ; 
- - - - - - 0x036F35 0D:AF25: FF        .byte $FF   ; 
- - - - - - 0x036F36 0D:AF26: FF        .byte $FF   ; 
- - - - - - 0x036F37 0D:AF27: FF        .byte $FF   ; 
- - - - - - 0x036F38 0D:AF28: FF        .byte $FF   ; 
- - - - - - 0x036F39 0D:AF29: FF        .byte $FF   ; 
- - - - - - 0x036F3A 0D:AF2A: FF        .byte $FF   ; 
- - - - - - 0x036F3B 0D:AF2B: FF        .byte $FF   ; 
- - - - - - 0x036F3C 0D:AF2C: FF        .byte $FF   ; 
- - - - - - 0x036F3D 0D:AF2D: FF        .byte $FF   ; 
- - - - - - 0x036F3E 0D:AF2E: FF        .byte $FF   ; 
- - - - - - 0x036F3F 0D:AF2F: FF        .byte $FF   ; 
- - - - - - 0x036F40 0D:AF30: FF        .byte $FF   ; 
- - - - - - 0x036F41 0D:AF31: FF        .byte $FF   ; 
- - - - - - 0x036F42 0D:AF32: FF        .byte $FF   ; 
- - - - - - 0x036F43 0D:AF33: FF        .byte $FF   ; 
- - - - - - 0x036F44 0D:AF34: FF        .byte $FF   ; 
- - - - - - 0x036F45 0D:AF35: FF        .byte $FF   ; 
- - - - - - 0x036F46 0D:AF36: FF        .byte $FF   ; 
- - - - - - 0x036F47 0D:AF37: FF        .byte $FF   ; 
- - - - - - 0x036F48 0D:AF38: FF        .byte $FF   ; 
- - - - - - 0x036F49 0D:AF39: FF        .byte $FF   ; 
- - - - - - 0x036F4A 0D:AF3A: FF        .byte $FF   ; 
- - - - - - 0x036F4B 0D:AF3B: FF        .byte $FF   ; 
- - - - - - 0x036F4C 0D:AF3C: FF        .byte $FF   ; 
- - - - - - 0x036F4D 0D:AF3D: FF        .byte $FF   ; 
- - - - - - 0x036F4E 0D:AF3E: FF        .byte $FF   ; 
- - - - - - 0x036F4F 0D:AF3F: FF        .byte $FF   ; 
- - - - - - 0x036F50 0D:AF40: FF        .byte $FF   ; 
- - - - - - 0x036F51 0D:AF41: FF        .byte $FF   ; 
- - - - - - 0x036F52 0D:AF42: FF        .byte $FF   ; 
- - - - - - 0x036F53 0D:AF43: FF        .byte $FF   ; 
- - - - - - 0x036F54 0D:AF44: FF        .byte $FF   ; 
- - - - - - 0x036F55 0D:AF45: FF        .byte $FF   ; 
- - - - - - 0x036F56 0D:AF46: FF        .byte $FF   ; 
- - - - - - 0x036F57 0D:AF47: FF        .byte $FF   ; 
- - - - - - 0x036F58 0D:AF48: FF        .byte $FF   ; 
- - - - - - 0x036F59 0D:AF49: FF        .byte $FF   ; 
- - - - - - 0x036F5A 0D:AF4A: FF        .byte $FF   ; 
- - - - - - 0x036F5B 0D:AF4B: FF        .byte $FF   ; 
- - - - - - 0x036F5C 0D:AF4C: FF        .byte $FF   ; 
- - - - - - 0x036F5D 0D:AF4D: FF        .byte $FF   ; 
- - - - - - 0x036F5E 0D:AF4E: FF        .byte $FF   ; 
- - - - - - 0x036F5F 0D:AF4F: FF        .byte $FF   ; 
- - - - - - 0x036F60 0D:AF50: FF        .byte $FF   ; 
- - - - - - 0x036F61 0D:AF51: FF        .byte $FF   ; 
- - - - - - 0x036F62 0D:AF52: FF        .byte $FF   ; 
- - - - - - 0x036F63 0D:AF53: FF        .byte $FF   ; 
- - - - - - 0x036F64 0D:AF54: FF        .byte $FF   ; 
- - - - - - 0x036F65 0D:AF55: FF        .byte $FF   ; 
- - - - - - 0x036F66 0D:AF56: FF        .byte $FF   ; 
- - - - - - 0x036F67 0D:AF57: FF        .byte $FF   ; 
- - - - - - 0x036F68 0D:AF58: FF        .byte $FF   ; 
- - - - - - 0x036F69 0D:AF59: FF        .byte $FF   ; 
- - - - - - 0x036F6A 0D:AF5A: FF        .byte $FF   ; 
- - - - - - 0x036F6B 0D:AF5B: FF        .byte $FF   ; 
- - - - - - 0x036F6C 0D:AF5C: FF        .byte $FF   ; 
- - - - - - 0x036F6D 0D:AF5D: FF        .byte $FF   ; 
- - - - - - 0x036F6E 0D:AF5E: FF        .byte $FF   ; 
- - - - - - 0x036F6F 0D:AF5F: FF        .byte $FF   ; 
- - - - - - 0x036F70 0D:AF60: FF        .byte $FF   ; 
- - - - - - 0x036F71 0D:AF61: FF        .byte $FF   ; 
- - - - - - 0x036F72 0D:AF62: FF        .byte $FF   ; 
- - - - - - 0x036F73 0D:AF63: FF        .byte $FF   ; 
- - - - - - 0x036F74 0D:AF64: FF        .byte $FF   ; 
- - - - - - 0x036F75 0D:AF65: FF        .byte $FF   ; 
- - - - - - 0x036F76 0D:AF66: FF        .byte $FF   ; 
- - - - - - 0x036F77 0D:AF67: FF        .byte $FF   ; 
- - - - - - 0x036F78 0D:AF68: FF        .byte $FF   ; 
- - - - - - 0x036F79 0D:AF69: FF        .byte $FF   ; 
- - - - - - 0x036F7A 0D:AF6A: FF        .byte $FF   ; 
- - - - - - 0x036F7B 0D:AF6B: FF        .byte $FF   ; 
- - - - - - 0x036F7C 0D:AF6C: FF        .byte $FF   ; 
- - - - - - 0x036F7D 0D:AF6D: FF        .byte $FF   ; 
- - - - - - 0x036F7E 0D:AF6E: FF        .byte $FF   ; 
- - - - - - 0x036F7F 0D:AF6F: FF        .byte $FF   ; 
- - - - - - 0x036F80 0D:AF70: FF        .byte $FF   ; 
- - - - - - 0x036F81 0D:AF71: FF        .byte $FF   ; 
- - - - - - 0x036F82 0D:AF72: FF        .byte $FF   ; 
- - - - - - 0x036F83 0D:AF73: FF        .byte $FF   ; 
- - - - - - 0x036F84 0D:AF74: FF        .byte $FF   ; 
- - - - - - 0x036F85 0D:AF75: FF        .byte $FF   ; 
- - - - - - 0x036F86 0D:AF76: FF        .byte $FF   ; 
- - - - - - 0x036F87 0D:AF77: FF        .byte $FF   ; 
- - - - - - 0x036F88 0D:AF78: FF        .byte $FF   ; 
- - - - - - 0x036F89 0D:AF79: FF        .byte $FF   ; 
- - - - - - 0x036F8A 0D:AF7A: FF        .byte $FF   ; 
- - - - - - 0x036F8B 0D:AF7B: FF        .byte $FF   ; 
- - - - - - 0x036F8C 0D:AF7C: FF        .byte $FF   ; 
- - - - - - 0x036F8D 0D:AF7D: FF        .byte $FF   ; 
- - - - - - 0x036F8E 0D:AF7E: FF        .byte $FF   ; 
- - - - - - 0x036F8F 0D:AF7F: FF        .byte $FF   ; 
- - - - - - 0x036F90 0D:AF80: FF        .byte $FF   ; 
- - - - - - 0x036F91 0D:AF81: FF        .byte $FF   ; 
- - - - - - 0x036F92 0D:AF82: FF        .byte $FF   ; 
- - - - - - 0x036F93 0D:AF83: FF        .byte $FF   ; 
- - - - - - 0x036F94 0D:AF84: FF        .byte $FF   ; 
- - - - - - 0x036F95 0D:AF85: FF        .byte $FF   ; 
- - - - - - 0x036F96 0D:AF86: FF        .byte $FF   ; 
- - - - - - 0x036F97 0D:AF87: FF        .byte $FF   ; 
- - - - - - 0x036F98 0D:AF88: FF        .byte $FF   ; 
- - - - - - 0x036F99 0D:AF89: FF        .byte $FF   ; 
- - - - - - 0x036F9A 0D:AF8A: FF        .byte $FF   ; 
- - - - - - 0x036F9B 0D:AF8B: FF        .byte $FF   ; 
- - - - - - 0x036F9C 0D:AF8C: FF        .byte $FF   ; 
- - - - - - 0x036F9D 0D:AF8D: FF        .byte $FF   ; 
- - - - - - 0x036F9E 0D:AF8E: FF        .byte $FF   ; 
- - - - - - 0x036F9F 0D:AF8F: FF        .byte $FF   ; 
- - - - - - 0x036FA0 0D:AF90: FF        .byte $FF   ; 
- - - - - - 0x036FA1 0D:AF91: FF        .byte $FF   ; 
- - - - - - 0x036FA2 0D:AF92: FF        .byte $FF   ; 
- - - - - - 0x036FA3 0D:AF93: FF        .byte $FF   ; 
- - - - - - 0x036FA4 0D:AF94: FF        .byte $FF   ; 
- - - - - - 0x036FA5 0D:AF95: FF        .byte $FF   ; 
- - - - - - 0x036FA6 0D:AF96: FF        .byte $FF   ; 
- - - - - - 0x036FA7 0D:AF97: FF        .byte $FF   ; 
- - - - - - 0x036FA8 0D:AF98: FF        .byte $FF   ; 
- - - - - - 0x036FA9 0D:AF99: FF        .byte $FF   ; 
- - - - - - 0x036FAA 0D:AF9A: FF        .byte $FF   ; 
- - - - - - 0x036FAB 0D:AF9B: FF        .byte $FF   ; 
- - - - - - 0x036FAC 0D:AF9C: FF        .byte $FF   ; 
- - - - - - 0x036FAD 0D:AF9D: FF        .byte $FF   ; 
- - - - - - 0x036FAE 0D:AF9E: FF        .byte $FF   ; 
- - - - - - 0x036FAF 0D:AF9F: FF        .byte $FF   ; 
- - - - - - 0x036FB0 0D:AFA0: FF        .byte $FF   ; 
- - - - - - 0x036FB1 0D:AFA1: FF        .byte $FF   ; 
- - - - - - 0x036FB2 0D:AFA2: FF        .byte $FF   ; 
- - - - - - 0x036FB3 0D:AFA3: FF        .byte $FF   ; 
- - - - - - 0x036FB4 0D:AFA4: FF        .byte $FF   ; 
- - - - - - 0x036FB5 0D:AFA5: FF        .byte $FF   ; 
- - - - - - 0x036FB6 0D:AFA6: FF        .byte $FF   ; 
- - - - - - 0x036FB7 0D:AFA7: FF        .byte $FF   ; 
- - - - - - 0x036FB8 0D:AFA8: FF        .byte $FF   ; 
- - - - - - 0x036FB9 0D:AFA9: FF        .byte $FF   ; 
- - - - - - 0x036FBA 0D:AFAA: FF        .byte $FF   ; 
- - - - - - 0x036FBB 0D:AFAB: FF        .byte $FF   ; 
- - - - - - 0x036FBC 0D:AFAC: FF        .byte $FF   ; 
- - - - - - 0x036FBD 0D:AFAD: FF        .byte $FF   ; 
- - - - - - 0x036FBE 0D:AFAE: FF        .byte $FF   ; 
- - - - - - 0x036FBF 0D:AFAF: FF        .byte $FF   ; 
- - - - - - 0x036FC0 0D:AFB0: FF        .byte $FF   ; 
- - - - - - 0x036FC1 0D:AFB1: FF        .byte $FF   ; 
- - - - - - 0x036FC2 0D:AFB2: FF        .byte $FF   ; 
- - - - - - 0x036FC3 0D:AFB3: FF        .byte $FF   ; 
- - - - - - 0x036FC4 0D:AFB4: FF        .byte $FF   ; 
- - - - - - 0x036FC5 0D:AFB5: FF        .byte $FF   ; 
- - - - - - 0x036FC6 0D:AFB6: FF        .byte $FF   ; 
- - - - - - 0x036FC7 0D:AFB7: FF        .byte $FF   ; 
- - - - - - 0x036FC8 0D:AFB8: FF        .byte $FF   ; 
- - - - - - 0x036FC9 0D:AFB9: FF        .byte $FF   ; 
- - - - - - 0x036FCA 0D:AFBA: FF        .byte $FF   ; 
- - - - - - 0x036FCB 0D:AFBB: FF        .byte $FF   ; 
- - - - - - 0x036FCC 0D:AFBC: FF        .byte $FF   ; 
- - - - - - 0x036FCD 0D:AFBD: FF        .byte $FF   ; 
- - - - - - 0x036FCE 0D:AFBE: FF        .byte $FF   ; 
- - - - - - 0x036FCF 0D:AFBF: FF        .byte $FF   ; 
- - - - - - 0x036FD0 0D:AFC0: FF        .byte $FF   ; 
- - - - - - 0x036FD1 0D:AFC1: FF        .byte $FF   ; 
- - - - - - 0x036FD2 0D:AFC2: FF        .byte $FF   ; 
- - - - - - 0x036FD3 0D:AFC3: FF        .byte $FF   ; 
- - - - - - 0x036FD4 0D:AFC4: FF        .byte $FF   ; 
- - - - - - 0x036FD5 0D:AFC5: FF        .byte $FF   ; 
- - - - - - 0x036FD6 0D:AFC6: FF        .byte $FF   ; 
- - - - - - 0x036FD7 0D:AFC7: FF        .byte $FF   ; 
- - - - - - 0x036FD8 0D:AFC8: FF        .byte $FF   ; 
- - - - - - 0x036FD9 0D:AFC9: FF        .byte $FF   ; 
- - - - - - 0x036FDA 0D:AFCA: FF        .byte $FF   ; 
- - - - - - 0x036FDB 0D:AFCB: FF        .byte $FF   ; 
- - - - - - 0x036FDC 0D:AFCC: FF        .byte $FF   ; 
- - - - - - 0x036FDD 0D:AFCD: FF        .byte $FF   ; 
- - - - - - 0x036FDE 0D:AFCE: FF        .byte $FF   ; 
- - - - - - 0x036FDF 0D:AFCF: FF        .byte $FF   ; 
- - - - - - 0x036FE0 0D:AFD0: FF        .byte $FF   ; 
- - - - - - 0x036FE1 0D:AFD1: FF        .byte $FF   ; 
- - - - - - 0x036FE2 0D:AFD2: FF        .byte $FF   ; 
- - - - - - 0x036FE3 0D:AFD3: FF        .byte $FF   ; 
- - - - - - 0x036FE4 0D:AFD4: FF        .byte $FF   ; 
- - - - - - 0x036FE5 0D:AFD5: FF        .byte $FF   ; 
- - - - - - 0x036FE6 0D:AFD6: FF        .byte $FF   ; 
- - - - - - 0x036FE7 0D:AFD7: FF        .byte $FF   ; 
- - - - - - 0x036FE8 0D:AFD8: FF        .byte $FF   ; 
- - - - - - 0x036FE9 0D:AFD9: FF        .byte $FF   ; 
- - - - - - 0x036FEA 0D:AFDA: FF        .byte $FF   ; 
- - - - - - 0x036FEB 0D:AFDB: FF        .byte $FF   ; 
- - - - - - 0x036FEC 0D:AFDC: FF        .byte $FF   ; 
- - - - - - 0x036FED 0D:AFDD: FF        .byte $FF   ; 
- - - - - - 0x036FEE 0D:AFDE: FF        .byte $FF   ; 
- - - - - - 0x036FEF 0D:AFDF: FF        .byte $FF   ; 
- - - - - - 0x036FF0 0D:AFE0: FF        .byte $FF   ; 
- - - - - - 0x036FF1 0D:AFE1: FF        .byte $FF   ; 
- - - - - - 0x036FF2 0D:AFE2: FF        .byte $FF   ; 
- - - - - - 0x036FF3 0D:AFE3: FF        .byte $FF   ; 
- - - - - - 0x036FF4 0D:AFE4: FF        .byte $FF   ; 
- - - - - - 0x036FF5 0D:AFE5: FF        .byte $FF   ; 
- - - - - - 0x036FF6 0D:AFE6: FF        .byte $FF   ; 
- - - - - - 0x036FF7 0D:AFE7: FF        .byte $FF   ; 
- - - - - - 0x036FF8 0D:AFE8: FF        .byte $FF   ; 
- - - - - - 0x036FF9 0D:AFE9: FF        .byte $FF   ; 
- - - - - - 0x036FFA 0D:AFEA: FF        .byte $FF   ; 
- - - - - - 0x036FFB 0D:AFEB: FF        .byte $FF   ; 
- - - - - - 0x036FFC 0D:AFEC: FF        .byte $FF   ; 
- - - - - - 0x036FFD 0D:AFED: FF        .byte $FF   ; 
- - - - - - 0x036FFE 0D:AFEE: FF        .byte $FF   ; 
- - - - - - 0x036FFF 0D:AFEF: FF        .byte $FF   ; 
- - - - - - 0x037000 0D:AFF0: FF        .byte $FF   ; 
- - - - - - 0x037001 0D:AFF1: FF        .byte $FF   ; 
- - - - - - 0x037002 0D:AFF2: FF        .byte $FF   ; 
- - - - - - 0x037003 0D:AFF3: FF        .byte $FF   ; 
- - - - - - 0x037004 0D:AFF4: FF        .byte $FF   ; 
- - - - - - 0x037005 0D:AFF5: FF        .byte $FF   ; 
- - - - - - 0x037006 0D:AFF6: FF        .byte $FF   ; 
- - - - - - 0x037007 0D:AFF7: FF        .byte $FF   ; 
- - - - - - 0x037008 0D:AFF8: FF        .byte $FF   ; 
- - - - - - 0x037009 0D:AFF9: FF        .byte $FF   ; 
- - - - - - 0x03700A 0D:AFFA: FF        .byte $FF   ; 
- - - - - - 0x03700B 0D:AFFB: FF        .byte $FF   ; 
- - - - - - 0x03700C 0D:AFFC: FF        .byte $FF   ; 
- - - - - - 0x03700D 0D:AFFD: FF        .byte $FF   ; 
- - - - - - 0x03700E 0D:AFFE: FF        .byte $FF   ; 
- - - - - - 0x03700F 0D:AFFF: FF        .byte $FF   ; 
- - - - - - 0x037010 0D:B000: FF        .byte $FF   ; 
- - - - - - 0x037011 0D:B001: FF        .byte $FF   ; 
- - - - - - 0x037012 0D:B002: FF        .byte $FF   ; 
- - - - - - 0x037013 0D:B003: FF        .byte $FF   ; 
- - - - - - 0x037014 0D:B004: FF        .byte $FF   ; 
- - - - - - 0x037015 0D:B005: FF        .byte $FF   ; 
- - - - - - 0x037016 0D:B006: FF        .byte $FF   ; 
- - - - - - 0x037017 0D:B007: FF        .byte $FF   ; 
- - - - - - 0x037018 0D:B008: FF        .byte $FF   ; 
- - - - - - 0x037019 0D:B009: FF        .byte $FF   ; 
- - - - - - 0x03701A 0D:B00A: FF        .byte $FF   ; 
- - - - - - 0x03701B 0D:B00B: FF        .byte $FF   ; 
- - - - - - 0x03701C 0D:B00C: FF        .byte $FF   ; 
- - - - - - 0x03701D 0D:B00D: FF        .byte $FF   ; 
- - - - - - 0x03701E 0D:B00E: FF        .byte $FF   ; 
- - - - - - 0x03701F 0D:B00F: FF        .byte $FF   ; 
- - - - - - 0x037020 0D:B010: FF        .byte $FF   ; 
- - - - - - 0x037021 0D:B011: FF        .byte $FF   ; 
- - - - - - 0x037022 0D:B012: FF        .byte $FF   ; 
- - - - - - 0x037023 0D:B013: FF        .byte $FF   ; 
- - - - - - 0x037024 0D:B014: FF        .byte $FF   ; 
- - - - - - 0x037025 0D:B015: FF        .byte $FF   ; 
- - - - - - 0x037026 0D:B016: FF        .byte $FF   ; 
- - - - - - 0x037027 0D:B017: FF        .byte $FF   ; 
- - - - - - 0x037028 0D:B018: FF        .byte $FF   ; 
- - - - - - 0x037029 0D:B019: FF        .byte $FF   ; 
- - - - - - 0x03702A 0D:B01A: FF        .byte $FF   ; 
- - - - - - 0x03702B 0D:B01B: FF        .byte $FF   ; 
- - - - - - 0x03702C 0D:B01C: FF        .byte $FF   ; 
- - - - - - 0x03702D 0D:B01D: FF        .byte $FF   ; 
- - - - - - 0x03702E 0D:B01E: FF        .byte $FF   ; 
- - - - - - 0x03702F 0D:B01F: FF        .byte $FF   ; 
- - - - - - 0x037030 0D:B020: FF        .byte $FF   ; 
- - - - - - 0x037031 0D:B021: FF        .byte $FF   ; 
- - - - - - 0x037032 0D:B022: FF        .byte $FF   ; 
- - - - - - 0x037033 0D:B023: FF        .byte $FF   ; 
- - - - - - 0x037034 0D:B024: FF        .byte $FF   ; 
- - - - - - 0x037035 0D:B025: FF        .byte $FF   ; 
- - - - - - 0x037036 0D:B026: FF        .byte $FF   ; 
- - - - - - 0x037037 0D:B027: FF        .byte $FF   ; 
- - - - - - 0x037038 0D:B028: FF        .byte $FF   ; 
- - - - - - 0x037039 0D:B029: FF        .byte $FF   ; 
- - - - - - 0x03703A 0D:B02A: FF        .byte $FF   ; 
- - - - - - 0x03703B 0D:B02B: FF        .byte $FF   ; 
- - - - - - 0x03703C 0D:B02C: FF        .byte $FF   ; 
- - - - - - 0x03703D 0D:B02D: FF        .byte $FF   ; 
- - - - - - 0x03703E 0D:B02E: FF        .byte $FF   ; 
- - - - - - 0x03703F 0D:B02F: FF        .byte $FF   ; 
- - - - - - 0x037040 0D:B030: FF        .byte $FF   ; 
- - - - - - 0x037041 0D:B031: FF        .byte $FF   ; 
- - - - - - 0x037042 0D:B032: FF        .byte $FF   ; 
- - - - - - 0x037043 0D:B033: FF        .byte $FF   ; 
- - - - - - 0x037044 0D:B034: FF        .byte $FF   ; 
- - - - - - 0x037045 0D:B035: FF        .byte $FF   ; 
- - - - - - 0x037046 0D:B036: FF        .byte $FF   ; 
- - - - - - 0x037047 0D:B037: FF        .byte $FF   ; 
- - - - - - 0x037048 0D:B038: FF        .byte $FF   ; 
- - - - - - 0x037049 0D:B039: FF        .byte $FF   ; 
- - - - - - 0x03704A 0D:B03A: FF        .byte $FF   ; 
- - - - - - 0x03704B 0D:B03B: FF        .byte $FF   ; 
- - - - - - 0x03704C 0D:B03C: FF        .byte $FF   ; 
- - - - - - 0x03704D 0D:B03D: FF        .byte $FF   ; 
- - - - - - 0x03704E 0D:B03E: FF        .byte $FF   ; 
- - - - - - 0x03704F 0D:B03F: FF        .byte $FF   ; 
- - - - - - 0x037050 0D:B040: FF        .byte $FF   ; 
- - - - - - 0x037051 0D:B041: FF        .byte $FF   ; 
- - - - - - 0x037052 0D:B042: FF        .byte $FF   ; 
- - - - - - 0x037053 0D:B043: FF        .byte $FF   ; 
- - - - - - 0x037054 0D:B044: FF        .byte $FF   ; 
- - - - - - 0x037055 0D:B045: FF        .byte $FF   ; 
- - - - - - 0x037056 0D:B046: FF        .byte $FF   ; 
- - - - - - 0x037057 0D:B047: FF        .byte $FF   ; 
- - - - - - 0x037058 0D:B048: FF        .byte $FF   ; 
- - - - - - 0x037059 0D:B049: FF        .byte $FF   ; 
- - - - - - 0x03705A 0D:B04A: FF        .byte $FF   ; 
- - - - - - 0x03705B 0D:B04B: FF        .byte $FF   ; 
- - - - - - 0x03705C 0D:B04C: FF        .byte $FF   ; 
- - - - - - 0x03705D 0D:B04D: FF        .byte $FF   ; 
- - - - - - 0x03705E 0D:B04E: FF        .byte $FF   ; 
- - - - - - 0x03705F 0D:B04F: FF        .byte $FF   ; 
- - - - - - 0x037060 0D:B050: FF        .byte $FF   ; 
- - - - - - 0x037061 0D:B051: FF        .byte $FF   ; 
- - - - - - 0x037062 0D:B052: FF        .byte $FF   ; 
- - - - - - 0x037063 0D:B053: FF        .byte $FF   ; 
- - - - - - 0x037064 0D:B054: FF        .byte $FF   ; 
- - - - - - 0x037065 0D:B055: FF        .byte $FF   ; 
- - - - - - 0x037066 0D:B056: FF        .byte $FF   ; 
- - - - - - 0x037067 0D:B057: FF        .byte $FF   ; 
- - - - - - 0x037068 0D:B058: FF        .byte $FF   ; 
- - - - - - 0x037069 0D:B059: FF        .byte $FF   ; 
- - - - - - 0x03706A 0D:B05A: FF        .byte $FF   ; 
- - - - - - 0x03706B 0D:B05B: FF        .byte $FF   ; 
- - - - - - 0x03706C 0D:B05C: FF        .byte $FF   ; 
- - - - - - 0x03706D 0D:B05D: FF        .byte $FF   ; 
- - - - - - 0x03706E 0D:B05E: FF        .byte $FF   ; 
- - - - - - 0x03706F 0D:B05F: FF        .byte $FF   ; 
- - - - - - 0x037070 0D:B060: FF        .byte $FF   ; 
- - - - - - 0x037071 0D:B061: FF        .byte $FF   ; 
- - - - - - 0x037072 0D:B062: FF        .byte $FF   ; 
- - - - - - 0x037073 0D:B063: FF        .byte $FF   ; 
- - - - - - 0x037074 0D:B064: FF        .byte $FF   ; 
- - - - - - 0x037075 0D:B065: FF        .byte $FF   ; 
- - - - - - 0x037076 0D:B066: FF        .byte $FF   ; 
- - - - - - 0x037077 0D:B067: FF        .byte $FF   ; 
- - - - - - 0x037078 0D:B068: FF        .byte $FF   ; 
- - - - - - 0x037079 0D:B069: FF        .byte $FF   ; 
- - - - - - 0x03707A 0D:B06A: FF        .byte $FF   ; 
- - - - - - 0x03707B 0D:B06B: FF        .byte $FF   ; 
- - - - - - 0x03707C 0D:B06C: FF        .byte $FF   ; 
- - - - - - 0x03707D 0D:B06D: FF        .byte $FF   ; 
- - - - - - 0x03707E 0D:B06E: FF        .byte $FF   ; 
- - - - - - 0x03707F 0D:B06F: FF        .byte $FF   ; 
- - - - - - 0x037080 0D:B070: FF        .byte $FF   ; 
- - - - - - 0x037081 0D:B071: FF        .byte $FF   ; 
- - - - - - 0x037082 0D:B072: FF        .byte $FF   ; 
- - - - - - 0x037083 0D:B073: FF        .byte $FF   ; 
- - - - - - 0x037084 0D:B074: FF        .byte $FF   ; 
- - - - - - 0x037085 0D:B075: FF        .byte $FF   ; 
- - - - - - 0x037086 0D:B076: FF        .byte $FF   ; 
- - - - - - 0x037087 0D:B077: FF        .byte $FF   ; 
- - - - - - 0x037088 0D:B078: FF        .byte $FF   ; 
- - - - - - 0x037089 0D:B079: FF        .byte $FF   ; 
- - - - - - 0x03708A 0D:B07A: FF        .byte $FF   ; 
- - - - - - 0x03708B 0D:B07B: FF        .byte $FF   ; 
- - - - - - 0x03708C 0D:B07C: FF        .byte $FF   ; 
- - - - - - 0x03708D 0D:B07D: FF        .byte $FF   ; 
- - - - - - 0x03708E 0D:B07E: FF        .byte $FF   ; 
- - - - - - 0x03708F 0D:B07F: FF        .byte $FF   ; 
- - - - - - 0x037090 0D:B080: FF        .byte $FF   ; 
- - - - - - 0x037091 0D:B081: FF        .byte $FF   ; 
- - - - - - 0x037092 0D:B082: FF        .byte $FF   ; 
- - - - - - 0x037093 0D:B083: FF        .byte $FF   ; 
- - - - - - 0x037094 0D:B084: FF        .byte $FF   ; 
- - - - - - 0x037095 0D:B085: FF        .byte $FF   ; 
- - - - - - 0x037096 0D:B086: FF        .byte $FF   ; 
- - - - - - 0x037097 0D:B087: FF        .byte $FF   ; 
- - - - - - 0x037098 0D:B088: FF        .byte $FF   ; 
- - - - - - 0x037099 0D:B089: FF        .byte $FF   ; 
- - - - - - 0x03709A 0D:B08A: FF        .byte $FF   ; 
- - - - - - 0x03709B 0D:B08B: FF        .byte $FF   ; 
- - - - - - 0x03709C 0D:B08C: FF        .byte $FF   ; 
- - - - - - 0x03709D 0D:B08D: FF        .byte $FF   ; 
- - - - - - 0x03709E 0D:B08E: FF        .byte $FF   ; 
- - - - - - 0x03709F 0D:B08F: FF        .byte $FF   ; 
- - - - - - 0x0370A0 0D:B090: FF        .byte $FF   ; 
- - - - - - 0x0370A1 0D:B091: FF        .byte $FF   ; 
- - - - - - 0x0370A2 0D:B092: FF        .byte $FF   ; 
- - - - - - 0x0370A3 0D:B093: FF        .byte $FF   ; 
- - - - - - 0x0370A4 0D:B094: FF        .byte $FF   ; 
- - - - - - 0x0370A5 0D:B095: FF        .byte $FF   ; 
- - - - - - 0x0370A6 0D:B096: FF        .byte $FF   ; 
- - - - - - 0x0370A7 0D:B097: FF        .byte $FF   ; 
- - - - - - 0x0370A8 0D:B098: FF        .byte $FF   ; 
- - - - - - 0x0370A9 0D:B099: FF        .byte $FF   ; 
- - - - - - 0x0370AA 0D:B09A: FF        .byte $FF   ; 
- - - - - - 0x0370AB 0D:B09B: FF        .byte $FF   ; 
- - - - - - 0x0370AC 0D:B09C: FF        .byte $FF   ; 
- - - - - - 0x0370AD 0D:B09D: FF        .byte $FF   ; 
- - - - - - 0x0370AE 0D:B09E: FF        .byte $FF   ; 
- - - - - - 0x0370AF 0D:B09F: FF        .byte $FF   ; 
- - - - - - 0x0370B0 0D:B0A0: FF        .byte $FF   ; 
- - - - - - 0x0370B1 0D:B0A1: FF        .byte $FF   ; 
- - - - - - 0x0370B2 0D:B0A2: FF        .byte $FF   ; 
- - - - - - 0x0370B3 0D:B0A3: FF        .byte $FF   ; 
- - - - - - 0x0370B4 0D:B0A4: FF        .byte $FF   ; 
- - - - - - 0x0370B5 0D:B0A5: FF        .byte $FF   ; 
- - - - - - 0x0370B6 0D:B0A6: FF        .byte $FF   ; 
- - - - - - 0x0370B7 0D:B0A7: FF        .byte $FF   ; 
- - - - - - 0x0370B8 0D:B0A8: FF        .byte $FF   ; 
- - - - - - 0x0370B9 0D:B0A9: FF        .byte $FF   ; 
- - - - - - 0x0370BA 0D:B0AA: FF        .byte $FF   ; 
- - - - - - 0x0370BB 0D:B0AB: FF        .byte $FF   ; 
- - - - - - 0x0370BC 0D:B0AC: FF        .byte $FF   ; 
- - - - - - 0x0370BD 0D:B0AD: FF        .byte $FF   ; 
- - - - - - 0x0370BE 0D:B0AE: FF        .byte $FF   ; 
- - - - - - 0x0370BF 0D:B0AF: FF        .byte $FF   ; 
- - - - - - 0x0370C0 0D:B0B0: FF        .byte $FF   ; 
- - - - - - 0x0370C1 0D:B0B1: FF        .byte $FF   ; 
- - - - - - 0x0370C2 0D:B0B2: FF        .byte $FF   ; 
- - - - - - 0x0370C3 0D:B0B3: FF        .byte $FF   ; 
- - - - - - 0x0370C4 0D:B0B4: FF        .byte $FF   ; 
- - - - - - 0x0370C5 0D:B0B5: FF        .byte $FF   ; 
- - - - - - 0x0370C6 0D:B0B6: FF        .byte $FF   ; 
- - - - - - 0x0370C7 0D:B0B7: FF        .byte $FF   ; 
- - - - - - 0x0370C8 0D:B0B8: FF        .byte $FF   ; 
- - - - - - 0x0370C9 0D:B0B9: FF        .byte $FF   ; 
- - - - - - 0x0370CA 0D:B0BA: FF        .byte $FF   ; 
- - - - - - 0x0370CB 0D:B0BB: FF        .byte $FF   ; 
- - - - - - 0x0370CC 0D:B0BC: FF        .byte $FF   ; 
- - - - - - 0x0370CD 0D:B0BD: FF        .byte $FF   ; 
- - - - - - 0x0370CE 0D:B0BE: FF        .byte $FF   ; 
- - - - - - 0x0370CF 0D:B0BF: FF        .byte $FF   ; 
- - - - - - 0x0370D0 0D:B0C0: FF        .byte $FF   ; 
- - - - - - 0x0370D1 0D:B0C1: FF        .byte $FF   ; 
- - - - - - 0x0370D2 0D:B0C2: FF        .byte $FF   ; 
- - - - - - 0x0370D3 0D:B0C3: FF        .byte $FF   ; 
- - - - - - 0x0370D4 0D:B0C4: FF        .byte $FF   ; 
- - - - - - 0x0370D5 0D:B0C5: FF        .byte $FF   ; 
- - - - - - 0x0370D6 0D:B0C6: FF        .byte $FF   ; 
- - - - - - 0x0370D7 0D:B0C7: FF        .byte $FF   ; 
- - - - - - 0x0370D8 0D:B0C8: FF        .byte $FF   ; 
- - - - - - 0x0370D9 0D:B0C9: FF        .byte $FF   ; 
- - - - - - 0x0370DA 0D:B0CA: FF        .byte $FF   ; 
- - - - - - 0x0370DB 0D:B0CB: FF        .byte $FF   ; 
- - - - - - 0x0370DC 0D:B0CC: FF        .byte $FF   ; 
- - - - - - 0x0370DD 0D:B0CD: FF        .byte $FF   ; 
- - - - - - 0x0370DE 0D:B0CE: FF        .byte $FF   ; 
- - - - - - 0x0370DF 0D:B0CF: FF        .byte $FF   ; 
- - - - - - 0x0370E0 0D:B0D0: FF        .byte $FF   ; 
- - - - - - 0x0370E1 0D:B0D1: FF        .byte $FF   ; 
- - - - - - 0x0370E2 0D:B0D2: FF        .byte $FF   ; 
- - - - - - 0x0370E3 0D:B0D3: FF        .byte $FF   ; 
- - - - - - 0x0370E4 0D:B0D4: FF        .byte $FF   ; 
- - - - - - 0x0370E5 0D:B0D5: FF        .byte $FF   ; 
- - - - - - 0x0370E6 0D:B0D6: FF        .byte $FF   ; 
- - - - - - 0x0370E7 0D:B0D7: FF        .byte $FF   ; 
- - - - - - 0x0370E8 0D:B0D8: FF        .byte $FF   ; 
- - - - - - 0x0370E9 0D:B0D9: FF        .byte $FF   ; 
- - - - - - 0x0370EA 0D:B0DA: FF        .byte $FF   ; 
- - - - - - 0x0370EB 0D:B0DB: FF        .byte $FF   ; 
- - - - - - 0x0370EC 0D:B0DC: FF        .byte $FF   ; 
- - - - - - 0x0370ED 0D:B0DD: FF        .byte $FF   ; 
- - - - - - 0x0370EE 0D:B0DE: FF        .byte $FF   ; 
- - - - - - 0x0370EF 0D:B0DF: FF        .byte $FF   ; 
- - - - - - 0x0370F0 0D:B0E0: FF        .byte $FF   ; 
- - - - - - 0x0370F1 0D:B0E1: FF        .byte $FF   ; 
- - - - - - 0x0370F2 0D:B0E2: FF        .byte $FF   ; 
- - - - - - 0x0370F3 0D:B0E3: FF        .byte $FF   ; 
- - - - - - 0x0370F4 0D:B0E4: FF        .byte $FF   ; 
- - - - - - 0x0370F5 0D:B0E5: FF        .byte $FF   ; 
- - - - - - 0x0370F6 0D:B0E6: FF        .byte $FF   ; 
- - - - - - 0x0370F7 0D:B0E7: FF        .byte $FF   ; 
- - - - - - 0x0370F8 0D:B0E8: FF        .byte $FF   ; 
- - - - - - 0x0370F9 0D:B0E9: FF        .byte $FF   ; 
- - - - - - 0x0370FA 0D:B0EA: FF        .byte $FF   ; 
- - - - - - 0x0370FB 0D:B0EB: FF        .byte $FF   ; 
- - - - - - 0x0370FC 0D:B0EC: FF        .byte $FF   ; 
- - - - - - 0x0370FD 0D:B0ED: FF        .byte $FF   ; 
- - - - - - 0x0370FE 0D:B0EE: FF        .byte $FF   ; 
- - - - - - 0x0370FF 0D:B0EF: FF        .byte $FF   ; 
- - - - - - 0x037100 0D:B0F0: FF        .byte $FF   ; 
- - - - - - 0x037101 0D:B0F1: FF        .byte $FF   ; 
- - - - - - 0x037102 0D:B0F2: FF        .byte $FF   ; 
- - - - - - 0x037103 0D:B0F3: FF        .byte $FF   ; 
- - - - - - 0x037104 0D:B0F4: FF        .byte $FF   ; 
- - - - - - 0x037105 0D:B0F5: FF        .byte $FF   ; 
- - - - - - 0x037106 0D:B0F6: FF        .byte $FF   ; 
- - - - - - 0x037107 0D:B0F7: FF        .byte $FF   ; 
- - - - - - 0x037108 0D:B0F8: FF        .byte $FF   ; 
- - - - - - 0x037109 0D:B0F9: FF        .byte $FF   ; 
- - - - - - 0x03710A 0D:B0FA: FF        .byte $FF   ; 
- - - - - - 0x03710B 0D:B0FB: FF        .byte $FF   ; 
- - - - - - 0x03710C 0D:B0FC: FF        .byte $FF   ; 
- - - - - - 0x03710D 0D:B0FD: FF        .byte $FF   ; 
- - - - - - 0x03710E 0D:B0FE: FF        .byte $FF   ; 
- - - - - - 0x03710F 0D:B0FF: FF        .byte $FF   ; 
- - - - - - 0x037110 0D:B100: FF        .byte $FF   ; 
- - - - - - 0x037111 0D:B101: FF        .byte $FF   ; 
- - - - - - 0x037112 0D:B102: FF        .byte $FF   ; 
- - - - - - 0x037113 0D:B103: FF        .byte $FF   ; 
- - - - - - 0x037114 0D:B104: FF        .byte $FF   ; 
- - - - - - 0x037115 0D:B105: FF        .byte $FF   ; 
- - - - - - 0x037116 0D:B106: FF        .byte $FF   ; 
- - - - - - 0x037117 0D:B107: FF        .byte $FF   ; 
- - - - - - 0x037118 0D:B108: FF        .byte $FF   ; 
- - - - - - 0x037119 0D:B109: FF        .byte $FF   ; 
- - - - - - 0x03711A 0D:B10A: FF        .byte $FF   ; 
- - - - - - 0x03711B 0D:B10B: FF        .byte $FF   ; 
- - - - - - 0x03711C 0D:B10C: FF        .byte $FF   ; 
- - - - - - 0x03711D 0D:B10D: FF        .byte $FF   ; 
- - - - - - 0x03711E 0D:B10E: FF        .byte $FF   ; 
- - - - - - 0x03711F 0D:B10F: FF        .byte $FF   ; 
- - - - - - 0x037120 0D:B110: FF        .byte $FF   ; 
- - - - - - 0x037121 0D:B111: FF        .byte $FF   ; 
- - - - - - 0x037122 0D:B112: FF        .byte $FF   ; 
- - - - - - 0x037123 0D:B113: FF        .byte $FF   ; 
- - - - - - 0x037124 0D:B114: FF        .byte $FF   ; 
- - - - - - 0x037125 0D:B115: FF        .byte $FF   ; 
- - - - - - 0x037126 0D:B116: FF        .byte $FF   ; 
- - - - - - 0x037127 0D:B117: FF        .byte $FF   ; 
- - - - - - 0x037128 0D:B118: FF        .byte $FF   ; 
- - - - - - 0x037129 0D:B119: FF        .byte $FF   ; 
- - - - - - 0x03712A 0D:B11A: FF        .byte $FF   ; 
- - - - - - 0x03712B 0D:B11B: FF        .byte $FF   ; 
- - - - - - 0x03712C 0D:B11C: FF        .byte $FF   ; 
- - - - - - 0x03712D 0D:B11D: FF        .byte $FF   ; 
- - - - - - 0x03712E 0D:B11E: FF        .byte $FF   ; 
- - - - - - 0x03712F 0D:B11F: FF        .byte $FF   ; 
- - - - - - 0x037130 0D:B120: FF        .byte $FF   ; 
- - - - - - 0x037131 0D:B121: FF        .byte $FF   ; 
- - - - - - 0x037132 0D:B122: FF        .byte $FF   ; 
- - - - - - 0x037133 0D:B123: FF        .byte $FF   ; 
- - - - - - 0x037134 0D:B124: FF        .byte $FF   ; 
- - - - - - 0x037135 0D:B125: FF        .byte $FF   ; 
- - - - - - 0x037136 0D:B126: FF        .byte $FF   ; 
- - - - - - 0x037137 0D:B127: FF        .byte $FF   ; 
- - - - - - 0x037138 0D:B128: FF        .byte $FF   ; 
- - - - - - 0x037139 0D:B129: FF        .byte $FF   ; 
- - - - - - 0x03713A 0D:B12A: FF        .byte $FF   ; 
- - - - - - 0x03713B 0D:B12B: FF        .byte $FF   ; 
- - - - - - 0x03713C 0D:B12C: FF        .byte $FF   ; 
- - - - - - 0x03713D 0D:B12D: FF        .byte $FF   ; 
- - - - - - 0x03713E 0D:B12E: FF        .byte $FF   ; 
- - - - - - 0x03713F 0D:B12F: FF        .byte $FF   ; 
- - - - - - 0x037140 0D:B130: FF        .byte $FF   ; 
- - - - - - 0x037141 0D:B131: FF        .byte $FF   ; 
- - - - - - 0x037142 0D:B132: FF        .byte $FF   ; 
- - - - - - 0x037143 0D:B133: FF        .byte $FF   ; 
- - - - - - 0x037144 0D:B134: FF        .byte $FF   ; 
- - - - - - 0x037145 0D:B135: FF        .byte $FF   ; 
- - - - - - 0x037146 0D:B136: FF        .byte $FF   ; 
- - - - - - 0x037147 0D:B137: FF        .byte $FF   ; 
- - - - - - 0x037148 0D:B138: FF        .byte $FF   ; 
- - - - - - 0x037149 0D:B139: FF        .byte $FF   ; 
- - - - - - 0x03714A 0D:B13A: FF        .byte $FF   ; 
- - - - - - 0x03714B 0D:B13B: FF        .byte $FF   ; 
- - - - - - 0x03714C 0D:B13C: FF        .byte $FF   ; 
- - - - - - 0x03714D 0D:B13D: FF        .byte $FF   ; 
- - - - - - 0x03714E 0D:B13E: FF        .byte $FF   ; 
- - - - - - 0x03714F 0D:B13F: FF        .byte $FF   ; 
- - - - - - 0x037150 0D:B140: FF        .byte $FF   ; 
- - - - - - 0x037151 0D:B141: FF        .byte $FF   ; 
- - - - - - 0x037152 0D:B142: FF        .byte $FF   ; 
- - - - - - 0x037153 0D:B143: FF        .byte $FF   ; 
- - - - - - 0x037154 0D:B144: FF        .byte $FF   ; 
- - - - - - 0x037155 0D:B145: FF        .byte $FF   ; 
- - - - - - 0x037156 0D:B146: FF        .byte $FF   ; 
- - - - - - 0x037157 0D:B147: FF        .byte $FF   ; 
- - - - - - 0x037158 0D:B148: FF        .byte $FF   ; 
- - - - - - 0x037159 0D:B149: FF        .byte $FF   ; 
- - - - - - 0x03715A 0D:B14A: FF        .byte $FF   ; 
- - - - - - 0x03715B 0D:B14B: FF        .byte $FF   ; 
- - - - - - 0x03715C 0D:B14C: FF        .byte $FF   ; 
- - - - - - 0x03715D 0D:B14D: FF        .byte $FF   ; 
- - - - - - 0x03715E 0D:B14E: FF        .byte $FF   ; 
- - - - - - 0x03715F 0D:B14F: FF        .byte $FF   ; 
- - - - - - 0x037160 0D:B150: FF        .byte $FF   ; 
- - - - - - 0x037161 0D:B151: FF        .byte $FF   ; 
- - - - - - 0x037162 0D:B152: FF        .byte $FF   ; 
- - - - - - 0x037163 0D:B153: FF        .byte $FF   ; 
- - - - - - 0x037164 0D:B154: FF        .byte $FF   ; 
- - - - - - 0x037165 0D:B155: FF        .byte $FF   ; 
- - - - - - 0x037166 0D:B156: FF        .byte $FF   ; 
- - - - - - 0x037167 0D:B157: FF        .byte $FF   ; 
- - - - - - 0x037168 0D:B158: FF        .byte $FF   ; 
- - - - - - 0x037169 0D:B159: FF        .byte $FF   ; 
- - - - - - 0x03716A 0D:B15A: FF        .byte $FF   ; 
- - - - - - 0x03716B 0D:B15B: FF        .byte $FF   ; 
- - - - - - 0x03716C 0D:B15C: FF        .byte $FF   ; 
- - - - - - 0x03716D 0D:B15D: FF        .byte $FF   ; 
- - - - - - 0x03716E 0D:B15E: FF        .byte $FF   ; 
- - - - - - 0x03716F 0D:B15F: FF        .byte $FF   ; 
- - - - - - 0x037170 0D:B160: FF        .byte $FF   ; 
- - - - - - 0x037171 0D:B161: FF        .byte $FF   ; 
- - - - - - 0x037172 0D:B162: FF        .byte $FF   ; 
- - - - - - 0x037173 0D:B163: FF        .byte $FF   ; 
- - - - - - 0x037174 0D:B164: FF        .byte $FF   ; 
- - - - - - 0x037175 0D:B165: FF        .byte $FF   ; 
- - - - - - 0x037176 0D:B166: FF        .byte $FF   ; 
- - - - - - 0x037177 0D:B167: FF        .byte $FF   ; 
- - - - - - 0x037178 0D:B168: FF        .byte $FF   ; 
- - - - - - 0x037179 0D:B169: FF        .byte $FF   ; 
- - - - - - 0x03717A 0D:B16A: FF        .byte $FF   ; 
- - - - - - 0x03717B 0D:B16B: FF        .byte $FF   ; 
- - - - - - 0x03717C 0D:B16C: FF        .byte $FF   ; 
- - - - - - 0x03717D 0D:B16D: FF        .byte $FF   ; 
- - - - - - 0x03717E 0D:B16E: FF        .byte $FF   ; 
- - - - - - 0x03717F 0D:B16F: FF        .byte $FF   ; 
- - - - - - 0x037180 0D:B170: FF        .byte $FF   ; 
- - - - - - 0x037181 0D:B171: FF        .byte $FF   ; 
- - - - - - 0x037182 0D:B172: FF        .byte $FF   ; 
- - - - - - 0x037183 0D:B173: FF        .byte $FF   ; 
- - - - - - 0x037184 0D:B174: FF        .byte $FF   ; 
- - - - - - 0x037185 0D:B175: FF        .byte $FF   ; 
- - - - - - 0x037186 0D:B176: FF        .byte $FF   ; 
- - - - - - 0x037187 0D:B177: FF        .byte $FF   ; 
- - - - - - 0x037188 0D:B178: FF        .byte $FF   ; 
- - - - - - 0x037189 0D:B179: FF        .byte $FF   ; 
- - - - - - 0x03718A 0D:B17A: FF        .byte $FF   ; 
- - - - - - 0x03718B 0D:B17B: FF        .byte $FF   ; 
- - - - - - 0x03718C 0D:B17C: FF        .byte $FF   ; 
- - - - - - 0x03718D 0D:B17D: FF        .byte $FF   ; 
- - - - - - 0x03718E 0D:B17E: FF        .byte $FF   ; 
- - - - - - 0x03718F 0D:B17F: FF        .byte $FF   ; 
- - - - - - 0x037190 0D:B180: FF        .byte $FF   ; 
- - - - - - 0x037191 0D:B181: FF        .byte $FF   ; 
- - - - - - 0x037192 0D:B182: FF        .byte $FF   ; 
- - - - - - 0x037193 0D:B183: FF        .byte $FF   ; 
- - - - - - 0x037194 0D:B184: FF        .byte $FF   ; 
- - - - - - 0x037195 0D:B185: FF        .byte $FF   ; 
- - - - - - 0x037196 0D:B186: FF        .byte $FF   ; 
- - - - - - 0x037197 0D:B187: FF        .byte $FF   ; 
- - - - - - 0x037198 0D:B188: FF        .byte $FF   ; 
- - - - - - 0x037199 0D:B189: FF        .byte $FF   ; 
- - - - - - 0x03719A 0D:B18A: FF        .byte $FF   ; 
- - - - - - 0x03719B 0D:B18B: FF        .byte $FF   ; 
- - - - - - 0x03719C 0D:B18C: FF        .byte $FF   ; 
- - - - - - 0x03719D 0D:B18D: FF        .byte $FF   ; 
- - - - - - 0x03719E 0D:B18E: FF        .byte $FF   ; 
- - - - - - 0x03719F 0D:B18F: FF        .byte $FF   ; 
- - - - - - 0x0371A0 0D:B190: FF        .byte $FF   ; 
- - - - - - 0x0371A1 0D:B191: FF        .byte $FF   ; 
- - - - - - 0x0371A2 0D:B192: FF        .byte $FF   ; 
- - - - - - 0x0371A3 0D:B193: FF        .byte $FF   ; 
- - - - - - 0x0371A4 0D:B194: FF        .byte $FF   ; 
- - - - - - 0x0371A5 0D:B195: FF        .byte $FF   ; 
- - - - - - 0x0371A6 0D:B196: FF        .byte $FF   ; 
- - - - - - 0x0371A7 0D:B197: FF        .byte $FF   ; 
- - - - - - 0x0371A8 0D:B198: FF        .byte $FF   ; 
- - - - - - 0x0371A9 0D:B199: FF        .byte $FF   ; 
- - - - - - 0x0371AA 0D:B19A: FF        .byte $FF   ; 
- - - - - - 0x0371AB 0D:B19B: FF        .byte $FF   ; 
- - - - - - 0x0371AC 0D:B19C: FF        .byte $FF   ; 
- - - - - - 0x0371AD 0D:B19D: FF        .byte $FF   ; 
- - - - - - 0x0371AE 0D:B19E: FF        .byte $FF   ; 
- - - - - - 0x0371AF 0D:B19F: FF        .byte $FF   ; 
- - - - - - 0x0371B0 0D:B1A0: FF        .byte $FF   ; 
- - - - - - 0x0371B1 0D:B1A1: FF        .byte $FF   ; 
- - - - - - 0x0371B2 0D:B1A2: FF        .byte $FF   ; 
- - - - - - 0x0371B3 0D:B1A3: FF        .byte $FF   ; 
- - - - - - 0x0371B4 0D:B1A4: FF        .byte $FF   ; 
- - - - - - 0x0371B5 0D:B1A5: FF        .byte $FF   ; 
- - - - - - 0x0371B6 0D:B1A6: FF        .byte $FF   ; 
- - - - - - 0x0371B7 0D:B1A7: FF        .byte $FF   ; 
- - - - - - 0x0371B8 0D:B1A8: FF        .byte $FF   ; 
- - - - - - 0x0371B9 0D:B1A9: FF        .byte $FF   ; 
- - - - - - 0x0371BA 0D:B1AA: FF        .byte $FF   ; 
- - - - - - 0x0371BB 0D:B1AB: FF        .byte $FF   ; 
- - - - - - 0x0371BC 0D:B1AC: FF        .byte $FF   ; 
- - - - - - 0x0371BD 0D:B1AD: FF        .byte $FF   ; 
- - - - - - 0x0371BE 0D:B1AE: FF        .byte $FF   ; 
- - - - - - 0x0371BF 0D:B1AF: FF        .byte $FF   ; 
- - - - - - 0x0371C0 0D:B1B0: FF        .byte $FF   ; 
- - - - - - 0x0371C1 0D:B1B1: FF        .byte $FF   ; 
- - - - - - 0x0371C2 0D:B1B2: FF        .byte $FF   ; 
- - - - - - 0x0371C3 0D:B1B3: FF        .byte $FF   ; 
- - - - - - 0x0371C4 0D:B1B4: FF        .byte $FF   ; 
- - - - - - 0x0371C5 0D:B1B5: FF        .byte $FF   ; 
- - - - - - 0x0371C6 0D:B1B6: FF        .byte $FF   ; 
- - - - - - 0x0371C7 0D:B1B7: FF        .byte $FF   ; 
- - - - - - 0x0371C8 0D:B1B8: FF        .byte $FF   ; 
- - - - - - 0x0371C9 0D:B1B9: FF        .byte $FF   ; 
- - - - - - 0x0371CA 0D:B1BA: FF        .byte $FF   ; 
- - - - - - 0x0371CB 0D:B1BB: FF        .byte $FF   ; 
- - - - - - 0x0371CC 0D:B1BC: FF        .byte $FF   ; 
- - - - - - 0x0371CD 0D:B1BD: FF        .byte $FF   ; 
- - - - - - 0x0371CE 0D:B1BE: FF        .byte $FF   ; 
- - - - - - 0x0371CF 0D:B1BF: FF        .byte $FF   ; 
- - - - - - 0x0371D0 0D:B1C0: FF        .byte $FF   ; 
- - - - - - 0x0371D1 0D:B1C1: FF        .byte $FF   ; 
- - - - - - 0x0371D2 0D:B1C2: FF        .byte $FF   ; 
- - - - - - 0x0371D3 0D:B1C3: FF        .byte $FF   ; 
- - - - - - 0x0371D4 0D:B1C4: FF        .byte $FF   ; 
- - - - - - 0x0371D5 0D:B1C5: FF        .byte $FF   ; 
- - - - - - 0x0371D6 0D:B1C6: FF        .byte $FF   ; 
- - - - - - 0x0371D7 0D:B1C7: FF        .byte $FF   ; 
- - - - - - 0x0371D8 0D:B1C8: FF        .byte $FF   ; 
- - - - - - 0x0371D9 0D:B1C9: FF        .byte $FF   ; 
- - - - - - 0x0371DA 0D:B1CA: FF        .byte $FF   ; 
- - - - - - 0x0371DB 0D:B1CB: FF        .byte $FF   ; 
- - - - - - 0x0371DC 0D:B1CC: FF        .byte $FF   ; 
- - - - - - 0x0371DD 0D:B1CD: FF        .byte $FF   ; 
- - - - - - 0x0371DE 0D:B1CE: FF        .byte $FF   ; 
- - - - - - 0x0371DF 0D:B1CF: FF        .byte $FF   ; 
- - - - - - 0x0371E0 0D:B1D0: FF        .byte $FF   ; 
- - - - - - 0x0371E1 0D:B1D1: FF        .byte $FF   ; 
- - - - - - 0x0371E2 0D:B1D2: FF        .byte $FF   ; 
- - - - - - 0x0371E3 0D:B1D3: FF        .byte $FF   ; 
- - - - - - 0x0371E4 0D:B1D4: FF        .byte $FF   ; 
- - - - - - 0x0371E5 0D:B1D5: FF        .byte $FF   ; 
- - - - - - 0x0371E6 0D:B1D6: FF        .byte $FF   ; 
- - - - - - 0x0371E7 0D:B1D7: FF        .byte $FF   ; 
- - - - - - 0x0371E8 0D:B1D8: FF        .byte $FF   ; 
- - - - - - 0x0371E9 0D:B1D9: FF        .byte $FF   ; 
- - - - - - 0x0371EA 0D:B1DA: FF        .byte $FF   ; 
- - - - - - 0x0371EB 0D:B1DB: FF        .byte $FF   ; 
- - - - - - 0x0371EC 0D:B1DC: FF        .byte $FF   ; 
- - - - - - 0x0371ED 0D:B1DD: FF        .byte $FF   ; 
- - - - - - 0x0371EE 0D:B1DE: FF        .byte $FF   ; 
- - - - - - 0x0371EF 0D:B1DF: FF        .byte $FF   ; 
- - - - - - 0x0371F0 0D:B1E0: FF        .byte $FF   ; 
- - - - - - 0x0371F1 0D:B1E1: FF        .byte $FF   ; 
- - - - - - 0x0371F2 0D:B1E2: FF        .byte $FF   ; 
- - - - - - 0x0371F3 0D:B1E3: FF        .byte $FF   ; 
- - - - - - 0x0371F4 0D:B1E4: FF        .byte $FF   ; 
- - - - - - 0x0371F5 0D:B1E5: FF        .byte $FF   ; 
- - - - - - 0x0371F6 0D:B1E6: FF        .byte $FF   ; 
- - - - - - 0x0371F7 0D:B1E7: FF        .byte $FF   ; 
- - - - - - 0x0371F8 0D:B1E8: FF        .byte $FF   ; 
- - - - - - 0x0371F9 0D:B1E9: FF        .byte $FF   ; 
- - - - - - 0x0371FA 0D:B1EA: FF        .byte $FF   ; 
- - - - - - 0x0371FB 0D:B1EB: FF        .byte $FF   ; 
- - - - - - 0x0371FC 0D:B1EC: FF        .byte $FF   ; 
- - - - - - 0x0371FD 0D:B1ED: FF        .byte $FF   ; 
- - - - - - 0x0371FE 0D:B1EE: FF        .byte $FF   ; 
- - - - - - 0x0371FF 0D:B1EF: FF        .byte $FF   ; 
- - - - - - 0x037200 0D:B1F0: FF        .byte $FF   ; 
- - - - - - 0x037201 0D:B1F1: FF        .byte $FF   ; 
- - - - - - 0x037202 0D:B1F2: FF        .byte $FF   ; 
- - - - - - 0x037203 0D:B1F3: FF        .byte $FF   ; 
- - - - - - 0x037204 0D:B1F4: FF        .byte $FF   ; 
- - - - - - 0x037205 0D:B1F5: FF        .byte $FF   ; 
- - - - - - 0x037206 0D:B1F6: FF        .byte $FF   ; 
- - - - - - 0x037207 0D:B1F7: FF        .byte $FF   ; 
- - - - - - 0x037208 0D:B1F8: FF        .byte $FF   ; 
- - - - - - 0x037209 0D:B1F9: FF        .byte $FF   ; 
- - - - - - 0x03720A 0D:B1FA: FF        .byte $FF   ; 
- - - - - - 0x03720B 0D:B1FB: FF        .byte $FF   ; 
- - - - - - 0x03720C 0D:B1FC: FF        .byte $FF   ; 
- - - - - - 0x03720D 0D:B1FD: FF        .byte $FF   ; 
- - - - - - 0x03720E 0D:B1FE: FF        .byte $FF   ; 
- - - - - - 0x03720F 0D:B1FF: FF        .byte $FF   ; 
- - - - - - 0x037210 0D:B200: FF        .byte $FF   ; 
- - - - - - 0x037211 0D:B201: FF        .byte $FF   ; 
- - - - - - 0x037212 0D:B202: FF        .byte $FF   ; 
- - - - - - 0x037213 0D:B203: FF        .byte $FF   ; 
- - - - - - 0x037214 0D:B204: FF        .byte $FF   ; 
- - - - - - 0x037215 0D:B205: FF        .byte $FF   ; 
- - - - - - 0x037216 0D:B206: FF        .byte $FF   ; 
- - - - - - 0x037217 0D:B207: FF        .byte $FF   ; 
- - - - - - 0x037218 0D:B208: FF        .byte $FF   ; 
- - - - - - 0x037219 0D:B209: FF        .byte $FF   ; 
- - - - - - 0x03721A 0D:B20A: FF        .byte $FF   ; 
- - - - - - 0x03721B 0D:B20B: FF        .byte $FF   ; 
- - - - - - 0x03721C 0D:B20C: FF        .byte $FF   ; 
- - - - - - 0x03721D 0D:B20D: FF        .byte $FF   ; 
- - - - - - 0x03721E 0D:B20E: FF        .byte $FF   ; 
- - - - - - 0x03721F 0D:B20F: FF        .byte $FF   ; 
- - - - - - 0x037220 0D:B210: FF        .byte $FF   ; 
- - - - - - 0x037221 0D:B211: FF        .byte $FF   ; 
- - - - - - 0x037222 0D:B212: FF        .byte $FF   ; 
- - - - - - 0x037223 0D:B213: FF        .byte $FF   ; 
- - - - - - 0x037224 0D:B214: FF        .byte $FF   ; 
- - - - - - 0x037225 0D:B215: FF        .byte $FF   ; 
- - - - - - 0x037226 0D:B216: FF        .byte $FF   ; 
- - - - - - 0x037227 0D:B217: FF        .byte $FF   ; 
- - - - - - 0x037228 0D:B218: FF        .byte $FF   ; 
- - - - - - 0x037229 0D:B219: FF        .byte $FF   ; 
- - - - - - 0x03722A 0D:B21A: FF        .byte $FF   ; 
- - - - - - 0x03722B 0D:B21B: FF        .byte $FF   ; 
- - - - - - 0x03722C 0D:B21C: FF        .byte $FF   ; 
- - - - - - 0x03722D 0D:B21D: FF        .byte $FF   ; 
- - - - - - 0x03722E 0D:B21E: FF        .byte $FF   ; 
- - - - - - 0x03722F 0D:B21F: FF        .byte $FF   ; 
- - - - - - 0x037230 0D:B220: FF        .byte $FF   ; 
- - - - - - 0x037231 0D:B221: FF        .byte $FF   ; 
- - - - - - 0x037232 0D:B222: FF        .byte $FF   ; 
- - - - - - 0x037233 0D:B223: FF        .byte $FF   ; 
- - - - - - 0x037234 0D:B224: FF        .byte $FF   ; 
- - - - - - 0x037235 0D:B225: FF        .byte $FF   ; 
- - - - - - 0x037236 0D:B226: FF        .byte $FF   ; 
- - - - - - 0x037237 0D:B227: FF        .byte $FF   ; 
- - - - - - 0x037238 0D:B228: FF        .byte $FF   ; 
- - - - - - 0x037239 0D:B229: FF        .byte $FF   ; 
- - - - - - 0x03723A 0D:B22A: FF        .byte $FF   ; 
- - - - - - 0x03723B 0D:B22B: FF        .byte $FF   ; 
- - - - - - 0x03723C 0D:B22C: FF        .byte $FF   ; 
- - - - - - 0x03723D 0D:B22D: FF        .byte $FF   ; 
- - - - - - 0x03723E 0D:B22E: FF        .byte $FF   ; 
- - - - - - 0x03723F 0D:B22F: FF        .byte $FF   ; 
- - - - - - 0x037240 0D:B230: FF        .byte $FF   ; 
- - - - - - 0x037241 0D:B231: FF        .byte $FF   ; 
- - - - - - 0x037242 0D:B232: FF        .byte $FF   ; 
- - - - - - 0x037243 0D:B233: FF        .byte $FF   ; 
- - - - - - 0x037244 0D:B234: FF        .byte $FF   ; 
- - - - - - 0x037245 0D:B235: FF        .byte $FF   ; 
- - - - - - 0x037246 0D:B236: FF        .byte $FF   ; 
- - - - - - 0x037247 0D:B237: FF        .byte $FF   ; 
- - - - - - 0x037248 0D:B238: FF        .byte $FF   ; 
- - - - - - 0x037249 0D:B239: FF        .byte $FF   ; 
- - - - - - 0x03724A 0D:B23A: FF        .byte $FF   ; 
- - - - - - 0x03724B 0D:B23B: FF        .byte $FF   ; 
- - - - - - 0x03724C 0D:B23C: FF        .byte $FF   ; 
- - - - - - 0x03724D 0D:B23D: FF        .byte $FF   ; 
- - - - - - 0x03724E 0D:B23E: FF        .byte $FF   ; 
- - - - - - 0x03724F 0D:B23F: FF        .byte $FF   ; 
- - - - - - 0x037250 0D:B240: FF        .byte $FF   ; 
- - - - - - 0x037251 0D:B241: FF        .byte $FF   ; 
- - - - - - 0x037252 0D:B242: FF        .byte $FF   ; 
- - - - - - 0x037253 0D:B243: FF        .byte $FF   ; 
- - - - - - 0x037254 0D:B244: FF        .byte $FF   ; 
- - - - - - 0x037255 0D:B245: FF        .byte $FF   ; 
- - - - - - 0x037256 0D:B246: FF        .byte $FF   ; 
- - - - - - 0x037257 0D:B247: FF        .byte $FF   ; 
- - - - - - 0x037258 0D:B248: FF        .byte $FF   ; 
- - - - - - 0x037259 0D:B249: FF        .byte $FF   ; 
- - - - - - 0x03725A 0D:B24A: FF        .byte $FF   ; 
- - - - - - 0x03725B 0D:B24B: FF        .byte $FF   ; 
- - - - - - 0x03725C 0D:B24C: FF        .byte $FF   ; 
- - - - - - 0x03725D 0D:B24D: FF        .byte $FF   ; 
- - - - - - 0x03725E 0D:B24E: FF        .byte $FF   ; 
- - - - - - 0x03725F 0D:B24F: FF        .byte $FF   ; 
- - - - - - 0x037260 0D:B250: FF        .byte $FF   ; 
- - - - - - 0x037261 0D:B251: FF        .byte $FF   ; 
- - - - - - 0x037262 0D:B252: FF        .byte $FF   ; 
- - - - - - 0x037263 0D:B253: FF        .byte $FF   ; 
- - - - - - 0x037264 0D:B254: FF        .byte $FF   ; 
- - - - - - 0x037265 0D:B255: FF        .byte $FF   ; 
- - - - - - 0x037266 0D:B256: FF        .byte $FF   ; 
- - - - - - 0x037267 0D:B257: FF        .byte $FF   ; 
- - - - - - 0x037268 0D:B258: FF        .byte $FF   ; 
- - - - - - 0x037269 0D:B259: FF        .byte $FF   ; 
- - - - - - 0x03726A 0D:B25A: FF        .byte $FF   ; 
- - - - - - 0x03726B 0D:B25B: FF        .byte $FF   ; 
- - - - - - 0x03726C 0D:B25C: FF        .byte $FF   ; 
- - - - - - 0x03726D 0D:B25D: FF        .byte $FF   ; 
- - - - - - 0x03726E 0D:B25E: FF        .byte $FF   ; 
- - - - - - 0x03726F 0D:B25F: FF        .byte $FF   ; 
- - - - - - 0x037270 0D:B260: FF        .byte $FF   ; 
- - - - - - 0x037271 0D:B261: FF        .byte $FF   ; 
- - - - - - 0x037272 0D:B262: FF        .byte $FF   ; 
- - - - - - 0x037273 0D:B263: FF        .byte $FF   ; 
- - - - - - 0x037274 0D:B264: FF        .byte $FF   ; 
- - - - - - 0x037275 0D:B265: FF        .byte $FF   ; 
- - - - - - 0x037276 0D:B266: FF        .byte $FF   ; 
- - - - - - 0x037277 0D:B267: FF        .byte $FF   ; 
- - - - - - 0x037278 0D:B268: FF        .byte $FF   ; 
- - - - - - 0x037279 0D:B269: FF        .byte $FF   ; 
- - - - - - 0x03727A 0D:B26A: FF        .byte $FF   ; 
- - - - - - 0x03727B 0D:B26B: FF        .byte $FF   ; 
- - - - - - 0x03727C 0D:B26C: FF        .byte $FF   ; 
- - - - - - 0x03727D 0D:B26D: FF        .byte $FF   ; 
- - - - - - 0x03727E 0D:B26E: FF        .byte $FF   ; 
- - - - - - 0x03727F 0D:B26F: FF        .byte $FF   ; 
- - - - - - 0x037280 0D:B270: FF        .byte $FF   ; 
- - - - - - 0x037281 0D:B271: FF        .byte $FF   ; 
- - - - - - 0x037282 0D:B272: FF        .byte $FF   ; 
- - - - - - 0x037283 0D:B273: FF        .byte $FF   ; 
- - - - - - 0x037284 0D:B274: FF        .byte $FF   ; 
- - - - - - 0x037285 0D:B275: FF        .byte $FF   ; 
- - - - - - 0x037286 0D:B276: FF        .byte $FF   ; 
- - - - - - 0x037287 0D:B277: FF        .byte $FF   ; 
- - - - - - 0x037288 0D:B278: FF        .byte $FF   ; 
- - - - - - 0x037289 0D:B279: FF        .byte $FF   ; 
- - - - - - 0x03728A 0D:B27A: FF        .byte $FF   ; 
- - - - - - 0x03728B 0D:B27B: FF        .byte $FF   ; 
- - - - - - 0x03728C 0D:B27C: FF        .byte $FF   ; 
- - - - - - 0x03728D 0D:B27D: FF        .byte $FF   ; 
- - - - - - 0x03728E 0D:B27E: FF        .byte $FF   ; 
- - - - - - 0x03728F 0D:B27F: FF        .byte $FF   ; 
- - - - - - 0x037290 0D:B280: FF        .byte $FF   ; 
- - - - - - 0x037291 0D:B281: FF        .byte $FF   ; 
- - - - - - 0x037292 0D:B282: FF        .byte $FF   ; 
- - - - - - 0x037293 0D:B283: FF        .byte $FF   ; 
- - - - - - 0x037294 0D:B284: FF        .byte $FF   ; 
- - - - - - 0x037295 0D:B285: FF        .byte $FF   ; 
- - - - - - 0x037296 0D:B286: FF        .byte $FF   ; 
- - - - - - 0x037297 0D:B287: FF        .byte $FF   ; 
- - - - - - 0x037298 0D:B288: FF        .byte $FF   ; 
- - - - - - 0x037299 0D:B289: FF        .byte $FF   ; 
- - - - - - 0x03729A 0D:B28A: FF        .byte $FF   ; 
- - - - - - 0x03729B 0D:B28B: FF        .byte $FF   ; 
- - - - - - 0x03729C 0D:B28C: FF        .byte $FF   ; 
- - - - - - 0x03729D 0D:B28D: FF        .byte $FF   ; 
- - - - - - 0x03729E 0D:B28E: FF        .byte $FF   ; 
- - - - - - 0x03729F 0D:B28F: FF        .byte $FF   ; 
- - - - - - 0x0372A0 0D:B290: FF        .byte $FF   ; 
- - - - - - 0x0372A1 0D:B291: FF        .byte $FF   ; 
- - - - - - 0x0372A2 0D:B292: FF        .byte $FF   ; 
- - - - - - 0x0372A3 0D:B293: FF        .byte $FF   ; 
- - - - - - 0x0372A4 0D:B294: FF        .byte $FF   ; 
- - - - - - 0x0372A5 0D:B295: FF        .byte $FF   ; 
- - - - - - 0x0372A6 0D:B296: FF        .byte $FF   ; 
- - - - - - 0x0372A7 0D:B297: FF        .byte $FF   ; 
- - - - - - 0x0372A8 0D:B298: FF        .byte $FF   ; 
- - - - - - 0x0372A9 0D:B299: FF        .byte $FF   ; 
- - - - - - 0x0372AA 0D:B29A: FF        .byte $FF   ; 
- - - - - - 0x0372AB 0D:B29B: FF        .byte $FF   ; 
- - - - - - 0x0372AC 0D:B29C: FF        .byte $FF   ; 
- - - - - - 0x0372AD 0D:B29D: FF        .byte $FF   ; 
- - - - - - 0x0372AE 0D:B29E: FF        .byte $FF   ; 
- - - - - - 0x0372AF 0D:B29F: FF        .byte $FF   ; 
- - - - - - 0x0372B0 0D:B2A0: FF        .byte $FF   ; 
- - - - - - 0x0372B1 0D:B2A1: FF        .byte $FF   ; 
- - - - - - 0x0372B2 0D:B2A2: FF        .byte $FF   ; 
- - - - - - 0x0372B3 0D:B2A3: FF        .byte $FF   ; 
- - - - - - 0x0372B4 0D:B2A4: FF        .byte $FF   ; 
- - - - - - 0x0372B5 0D:B2A5: FF        .byte $FF   ; 
- - - - - - 0x0372B6 0D:B2A6: FF        .byte $FF   ; 
- - - - - - 0x0372B7 0D:B2A7: FF        .byte $FF   ; 
- - - - - - 0x0372B8 0D:B2A8: FF        .byte $FF   ; 
- - - - - - 0x0372B9 0D:B2A9: FF        .byte $FF   ; 
- - - - - - 0x0372BA 0D:B2AA: FF        .byte $FF   ; 
- - - - - - 0x0372BB 0D:B2AB: FF        .byte $FF   ; 
- - - - - - 0x0372BC 0D:B2AC: FF        .byte $FF   ; 
- - - - - - 0x0372BD 0D:B2AD: FF        .byte $FF   ; 
- - - - - - 0x0372BE 0D:B2AE: FF        .byte $FF   ; 
- - - - - - 0x0372BF 0D:B2AF: FF        .byte $FF   ; 
- - - - - - 0x0372C0 0D:B2B0: FF        .byte $FF   ; 
- - - - - - 0x0372C1 0D:B2B1: FF        .byte $FF   ; 
- - - - - - 0x0372C2 0D:B2B2: FF        .byte $FF   ; 
- - - - - - 0x0372C3 0D:B2B3: FF        .byte $FF   ; 
- - - - - - 0x0372C4 0D:B2B4: FF        .byte $FF   ; 
- - - - - - 0x0372C5 0D:B2B5: FF        .byte $FF   ; 
- - - - - - 0x0372C6 0D:B2B6: FF        .byte $FF   ; 
- - - - - - 0x0372C7 0D:B2B7: FF        .byte $FF   ; 
- - - - - - 0x0372C8 0D:B2B8: FF        .byte $FF   ; 
- - - - - - 0x0372C9 0D:B2B9: FF        .byte $FF   ; 
- - - - - - 0x0372CA 0D:B2BA: FF        .byte $FF   ; 
- - - - - - 0x0372CB 0D:B2BB: FF        .byte $FF   ; 
- - - - - - 0x0372CC 0D:B2BC: FF        .byte $FF   ; 
- - - - - - 0x0372CD 0D:B2BD: FF        .byte $FF   ; 
- - - - - - 0x0372CE 0D:B2BE: FF        .byte $FF   ; 
- - - - - - 0x0372CF 0D:B2BF: FF        .byte $FF   ; 
- - - - - - 0x0372D0 0D:B2C0: FF        .byte $FF   ; 
- - - - - - 0x0372D1 0D:B2C1: FF        .byte $FF   ; 
- - - - - - 0x0372D2 0D:B2C2: FF        .byte $FF   ; 
- - - - - - 0x0372D3 0D:B2C3: FF        .byte $FF   ; 
- - - - - - 0x0372D4 0D:B2C4: FF        .byte $FF   ; 
- - - - - - 0x0372D5 0D:B2C5: FF        .byte $FF   ; 
- - - - - - 0x0372D6 0D:B2C6: FF        .byte $FF   ; 
- - - - - - 0x0372D7 0D:B2C7: FF        .byte $FF   ; 
- - - - - - 0x0372D8 0D:B2C8: FF        .byte $FF   ; 
- - - - - - 0x0372D9 0D:B2C9: FF        .byte $FF   ; 
- - - - - - 0x0372DA 0D:B2CA: FF        .byte $FF   ; 
- - - - - - 0x0372DB 0D:B2CB: FF        .byte $FF   ; 
- - - - - - 0x0372DC 0D:B2CC: FF        .byte $FF   ; 
- - - - - - 0x0372DD 0D:B2CD: FF        .byte $FF   ; 
- - - - - - 0x0372DE 0D:B2CE: FF        .byte $FF   ; 
- - - - - - 0x0372DF 0D:B2CF: FF        .byte $FF   ; 
- - - - - - 0x0372E0 0D:B2D0: FF        .byte $FF   ; 
- - - - - - 0x0372E1 0D:B2D1: FF        .byte $FF   ; 
- - - - - - 0x0372E2 0D:B2D2: FF        .byte $FF   ; 
- - - - - - 0x0372E3 0D:B2D3: FF        .byte $FF   ; 
- - - - - - 0x0372E4 0D:B2D4: FF        .byte $FF   ; 
- - - - - - 0x0372E5 0D:B2D5: FF        .byte $FF   ; 
- - - - - - 0x0372E6 0D:B2D6: FF        .byte $FF   ; 
- - - - - - 0x0372E7 0D:B2D7: FF        .byte $FF   ; 
- - - - - - 0x0372E8 0D:B2D8: FF        .byte $FF   ; 
- - - - - - 0x0372E9 0D:B2D9: FF        .byte $FF   ; 
- - - - - - 0x0372EA 0D:B2DA: FF        .byte $FF   ; 
- - - - - - 0x0372EB 0D:B2DB: FF        .byte $FF   ; 
- - - - - - 0x0372EC 0D:B2DC: FF        .byte $FF   ; 
- - - - - - 0x0372ED 0D:B2DD: FF        .byte $FF   ; 
- - - - - - 0x0372EE 0D:B2DE: FF        .byte $FF   ; 
- - - - - - 0x0372EF 0D:B2DF: FF        .byte $FF   ; 
- - - - - - 0x0372F0 0D:B2E0: FF        .byte $FF   ; 
- - - - - - 0x0372F1 0D:B2E1: FF        .byte $FF   ; 
- - - - - - 0x0372F2 0D:B2E2: FF        .byte $FF   ; 
- - - - - - 0x0372F3 0D:B2E3: FF        .byte $FF   ; 
- - - - - - 0x0372F4 0D:B2E4: FF        .byte $FF   ; 
- - - - - - 0x0372F5 0D:B2E5: FF        .byte $FF   ; 
- - - - - - 0x0372F6 0D:B2E6: FF        .byte $FF   ; 
- - - - - - 0x0372F7 0D:B2E7: FF        .byte $FF   ; 
- - - - - - 0x0372F8 0D:B2E8: FF        .byte $FF   ; 
- - - - - - 0x0372F9 0D:B2E9: FF        .byte $FF   ; 
- - - - - - 0x0372FA 0D:B2EA: FF        .byte $FF   ; 
- - - - - - 0x0372FB 0D:B2EB: FF        .byte $FF   ; 
- - - - - - 0x0372FC 0D:B2EC: FF        .byte $FF   ; 
- - - - - - 0x0372FD 0D:B2ED: FF        .byte $FF   ; 
- - - - - - 0x0372FE 0D:B2EE: FF        .byte $FF   ; 
- - - - - - 0x0372FF 0D:B2EF: FF        .byte $FF   ; 
- - - - - - 0x037300 0D:B2F0: FF        .byte $FF   ; 
- - - - - - 0x037301 0D:B2F1: FF        .byte $FF   ; 
- - - - - - 0x037302 0D:B2F2: FF        .byte $FF   ; 
- - - - - - 0x037303 0D:B2F3: FF        .byte $FF   ; 
- - - - - - 0x037304 0D:B2F4: FF        .byte $FF   ; 
- - - - - - 0x037305 0D:B2F5: FF        .byte $FF   ; 
- - - - - - 0x037306 0D:B2F6: FF        .byte $FF   ; 
- - - - - - 0x037307 0D:B2F7: FF        .byte $FF   ; 
- - - - - - 0x037308 0D:B2F8: FF        .byte $FF   ; 
- - - - - - 0x037309 0D:B2F9: FF        .byte $FF   ; 
- - - - - - 0x03730A 0D:B2FA: FF        .byte $FF   ; 
- - - - - - 0x03730B 0D:B2FB: FF        .byte $FF   ; 
- - - - - - 0x03730C 0D:B2FC: FF        .byte $FF   ; 
- - - - - - 0x03730D 0D:B2FD: FF        .byte $FF   ; 
- - - - - - 0x03730E 0D:B2FE: FF        .byte $FF   ; 
- - - - - - 0x03730F 0D:B2FF: FF        .byte $FF   ; 
- - - - - - 0x037310 0D:B300: FF        .byte $FF   ; 
- - - - - - 0x037311 0D:B301: FF        .byte $FF   ; 
- - - - - - 0x037312 0D:B302: FF        .byte $FF   ; 
- - - - - - 0x037313 0D:B303: FF        .byte $FF   ; 
- - - - - - 0x037314 0D:B304: FF        .byte $FF   ; 
- - - - - - 0x037315 0D:B305: FF        .byte $FF   ; 
- - - - - - 0x037316 0D:B306: FF        .byte $FF   ; 
- - - - - - 0x037317 0D:B307: FF        .byte $FF   ; 
- - - - - - 0x037318 0D:B308: FF        .byte $FF   ; 
- - - - - - 0x037319 0D:B309: FF        .byte $FF   ; 
- - - - - - 0x03731A 0D:B30A: FF        .byte $FF   ; 
- - - - - - 0x03731B 0D:B30B: FF        .byte $FF   ; 
- - - - - - 0x03731C 0D:B30C: FF        .byte $FF   ; 
- - - - - - 0x03731D 0D:B30D: FF        .byte $FF   ; 
- - - - - - 0x03731E 0D:B30E: FF        .byte $FF   ; 
- - - - - - 0x03731F 0D:B30F: FF        .byte $FF   ; 
- - - - - - 0x037320 0D:B310: FF        .byte $FF   ; 
- - - - - - 0x037321 0D:B311: FF        .byte $FF   ; 
- - - - - - 0x037322 0D:B312: FF        .byte $FF   ; 
- - - - - - 0x037323 0D:B313: FF        .byte $FF   ; 
- - - - - - 0x037324 0D:B314: FF        .byte $FF   ; 
- - - - - - 0x037325 0D:B315: FF        .byte $FF   ; 
- - - - - - 0x037326 0D:B316: FF        .byte $FF   ; 
- - - - - - 0x037327 0D:B317: FF        .byte $FF   ; 
- - - - - - 0x037328 0D:B318: FF        .byte $FF   ; 
- - - - - - 0x037329 0D:B319: FF        .byte $FF   ; 
- - - - - - 0x03732A 0D:B31A: FF        .byte $FF   ; 
- - - - - - 0x03732B 0D:B31B: FF        .byte $FF   ; 
- - - - - - 0x03732C 0D:B31C: FF        .byte $FF   ; 
- - - - - - 0x03732D 0D:B31D: FF        .byte $FF   ; 
- - - - - - 0x03732E 0D:B31E: FF        .byte $FF   ; 
- - - - - - 0x03732F 0D:B31F: FF        .byte $FF   ; 
- - - - - - 0x037330 0D:B320: FF        .byte $FF   ; 
- - - - - - 0x037331 0D:B321: FF        .byte $FF   ; 
- - - - - - 0x037332 0D:B322: FF        .byte $FF   ; 
- - - - - - 0x037333 0D:B323: FF        .byte $FF   ; 
- - - - - - 0x037334 0D:B324: FF        .byte $FF   ; 
- - - - - - 0x037335 0D:B325: FF        .byte $FF   ; 
- - - - - - 0x037336 0D:B326: FF        .byte $FF   ; 
- - - - - - 0x037337 0D:B327: FF        .byte $FF   ; 
- - - - - - 0x037338 0D:B328: FF        .byte $FF   ; 
- - - - - - 0x037339 0D:B329: FF        .byte $FF   ; 
- - - - - - 0x03733A 0D:B32A: FF        .byte $FF   ; 
- - - - - - 0x03733B 0D:B32B: FF        .byte $FF   ; 
- - - - - - 0x03733C 0D:B32C: FF        .byte $FF   ; 
- - - - - - 0x03733D 0D:B32D: FF        .byte $FF   ; 
- - - - - - 0x03733E 0D:B32E: FF        .byte $FF   ; 
- - - - - - 0x03733F 0D:B32F: FF        .byte $FF   ; 
- - - - - - 0x037340 0D:B330: FF        .byte $FF   ; 
- - - - - - 0x037341 0D:B331: FF        .byte $FF   ; 
- - - - - - 0x037342 0D:B332: FF        .byte $FF   ; 
- - - - - - 0x037343 0D:B333: FF        .byte $FF   ; 
- - - - - - 0x037344 0D:B334: FF        .byte $FF   ; 
- - - - - - 0x037345 0D:B335: FF        .byte $FF   ; 
- - - - - - 0x037346 0D:B336: FF        .byte $FF   ; 
- - - - - - 0x037347 0D:B337: FF        .byte $FF   ; 
- - - - - - 0x037348 0D:B338: FF        .byte $FF   ; 
- - - - - - 0x037349 0D:B339: FF        .byte $FF   ; 
- - - - - - 0x03734A 0D:B33A: FF        .byte $FF   ; 
- - - - - - 0x03734B 0D:B33B: FF        .byte $FF   ; 
- - - - - - 0x03734C 0D:B33C: FF        .byte $FF   ; 
- - - - - - 0x03734D 0D:B33D: FF        .byte $FF   ; 
- - - - - - 0x03734E 0D:B33E: FF        .byte $FF   ; 
- - - - - - 0x03734F 0D:B33F: FF        .byte $FF   ; 
- - - - - - 0x037350 0D:B340: FF        .byte $FF   ; 
- - - - - - 0x037351 0D:B341: FF        .byte $FF   ; 
- - - - - - 0x037352 0D:B342: FF        .byte $FF   ; 
- - - - - - 0x037353 0D:B343: FF        .byte $FF   ; 
- - - - - - 0x037354 0D:B344: FF        .byte $FF   ; 
- - - - - - 0x037355 0D:B345: FF        .byte $FF   ; 
- - - - - - 0x037356 0D:B346: FF        .byte $FF   ; 
- - - - - - 0x037357 0D:B347: FF        .byte $FF   ; 
- - - - - - 0x037358 0D:B348: FF        .byte $FF   ; 
- - - - - - 0x037359 0D:B349: FF        .byte $FF   ; 
- - - - - - 0x03735A 0D:B34A: FF        .byte $FF   ; 
- - - - - - 0x03735B 0D:B34B: FF        .byte $FF   ; 
- - - - - - 0x03735C 0D:B34C: FF        .byte $FF   ; 
- - - - - - 0x03735D 0D:B34D: FF        .byte $FF   ; 
- - - - - - 0x03735E 0D:B34E: FF        .byte $FF   ; 
- - - - - - 0x03735F 0D:B34F: FF        .byte $FF   ; 
- - - - - - 0x037360 0D:B350: FF        .byte $FF   ; 
- - - - - - 0x037361 0D:B351: FF        .byte $FF   ; 
- - - - - - 0x037362 0D:B352: FF        .byte $FF   ; 
- - - - - - 0x037363 0D:B353: FF        .byte $FF   ; 
- - - - - - 0x037364 0D:B354: FF        .byte $FF   ; 
- - - - - - 0x037365 0D:B355: FF        .byte $FF   ; 
- - - - - - 0x037366 0D:B356: FF        .byte $FF   ; 
- - - - - - 0x037367 0D:B357: FF        .byte $FF   ; 
- - - - - - 0x037368 0D:B358: FF        .byte $FF   ; 
- - - - - - 0x037369 0D:B359: FF        .byte $FF   ; 
- - - - - - 0x03736A 0D:B35A: FF        .byte $FF   ; 
- - - - - - 0x03736B 0D:B35B: FF        .byte $FF   ; 
- - - - - - 0x03736C 0D:B35C: FF        .byte $FF   ; 
- - - - - - 0x03736D 0D:B35D: FF        .byte $FF   ; 
- - - - - - 0x03736E 0D:B35E: FF        .byte $FF   ; 
- - - - - - 0x03736F 0D:B35F: FF        .byte $FF   ; 
- - - - - - 0x037370 0D:B360: FF        .byte $FF   ; 
- - - - - - 0x037371 0D:B361: FF        .byte $FF   ; 
- - - - - - 0x037372 0D:B362: FF        .byte $FF   ; 
- - - - - - 0x037373 0D:B363: FF        .byte $FF   ; 
- - - - - - 0x037374 0D:B364: FF        .byte $FF   ; 
- - - - - - 0x037375 0D:B365: FF        .byte $FF   ; 
- - - - - - 0x037376 0D:B366: FF        .byte $FF   ; 
- - - - - - 0x037377 0D:B367: FF        .byte $FF   ; 
- - - - - - 0x037378 0D:B368: FF        .byte $FF   ; 
- - - - - - 0x037379 0D:B369: FF        .byte $FF   ; 
- - - - - - 0x03737A 0D:B36A: FF        .byte $FF   ; 
- - - - - - 0x03737B 0D:B36B: FF        .byte $FF   ; 
- - - - - - 0x03737C 0D:B36C: FF        .byte $FF   ; 
- - - - - - 0x03737D 0D:B36D: FF        .byte $FF   ; 
- - - - - - 0x03737E 0D:B36E: FF        .byte $FF   ; 
- - - - - - 0x03737F 0D:B36F: FF        .byte $FF   ; 
- - - - - - 0x037380 0D:B370: FF        .byte $FF   ; 
- - - - - - 0x037381 0D:B371: FF        .byte $FF   ; 
- - - - - - 0x037382 0D:B372: FF        .byte $FF   ; 
- - - - - - 0x037383 0D:B373: FF        .byte $FF   ; 
- - - - - - 0x037384 0D:B374: FF        .byte $FF   ; 
- - - - - - 0x037385 0D:B375: FF        .byte $FF   ; 
- - - - - - 0x037386 0D:B376: FF        .byte $FF   ; 
- - - - - - 0x037387 0D:B377: FF        .byte $FF   ; 
- - - - - - 0x037388 0D:B378: FF        .byte $FF   ; 
- - - - - - 0x037389 0D:B379: FF        .byte $FF   ; 
- - - - - - 0x03738A 0D:B37A: FF        .byte $FF   ; 
- - - - - - 0x03738B 0D:B37B: FF        .byte $FF   ; 
- - - - - - 0x03738C 0D:B37C: FF        .byte $FF   ; 
- - - - - - 0x03738D 0D:B37D: FF        .byte $FF   ; 
- - - - - - 0x03738E 0D:B37E: FF        .byte $FF   ; 
- - - - - - 0x03738F 0D:B37F: FF        .byte $FF   ; 
- - - - - - 0x037390 0D:B380: FF        .byte $FF   ; 
- - - - - - 0x037391 0D:B381: FF        .byte $FF   ; 
- - - - - - 0x037392 0D:B382: FF        .byte $FF   ; 
- - - - - - 0x037393 0D:B383: FF        .byte $FF   ; 
- - - - - - 0x037394 0D:B384: FF        .byte $FF   ; 
- - - - - - 0x037395 0D:B385: FF        .byte $FF   ; 
- - - - - - 0x037396 0D:B386: FF        .byte $FF   ; 
- - - - - - 0x037397 0D:B387: FF        .byte $FF   ; 
- - - - - - 0x037398 0D:B388: FF        .byte $FF   ; 
- - - - - - 0x037399 0D:B389: FF        .byte $FF   ; 
- - - - - - 0x03739A 0D:B38A: FF        .byte $FF   ; 
- - - - - - 0x03739B 0D:B38B: FF        .byte $FF   ; 
- - - - - - 0x03739C 0D:B38C: FF        .byte $FF   ; 
- - - - - - 0x03739D 0D:B38D: FF        .byte $FF   ; 
- - - - - - 0x03739E 0D:B38E: FF        .byte $FF   ; 
- - - - - - 0x03739F 0D:B38F: FF        .byte $FF   ; 
- - - - - - 0x0373A0 0D:B390: FF        .byte $FF   ; 
- - - - - - 0x0373A1 0D:B391: FF        .byte $FF   ; 
- - - - - - 0x0373A2 0D:B392: FF        .byte $FF   ; 
- - - - - - 0x0373A3 0D:B393: FF        .byte $FF   ; 
- - - - - - 0x0373A4 0D:B394: FF        .byte $FF   ; 
- - - - - - 0x0373A5 0D:B395: FF        .byte $FF   ; 
- - - - - - 0x0373A6 0D:B396: FF        .byte $FF   ; 
- - - - - - 0x0373A7 0D:B397: FF        .byte $FF   ; 
- - - - - - 0x0373A8 0D:B398: FF        .byte $FF   ; 
- - - - - - 0x0373A9 0D:B399: FF        .byte $FF   ; 
- - - - - - 0x0373AA 0D:B39A: FF        .byte $FF   ; 
- - - - - - 0x0373AB 0D:B39B: FF        .byte $FF   ; 
- - - - - - 0x0373AC 0D:B39C: FF        .byte $FF   ; 
- - - - - - 0x0373AD 0D:B39D: FF        .byte $FF   ; 
- - - - - - 0x0373AE 0D:B39E: FF        .byte $FF   ; 
- - - - - - 0x0373AF 0D:B39F: FF        .byte $FF   ; 
- - - - - - 0x0373B0 0D:B3A0: FF        .byte $FF   ; 
- - - - - - 0x0373B1 0D:B3A1: FF        .byte $FF   ; 
- - - - - - 0x0373B2 0D:B3A2: FF        .byte $FF   ; 
- - - - - - 0x0373B3 0D:B3A3: FF        .byte $FF   ; 
- - - - - - 0x0373B4 0D:B3A4: FF        .byte $FF   ; 
- - - - - - 0x0373B5 0D:B3A5: FF        .byte $FF   ; 
- - - - - - 0x0373B6 0D:B3A6: FF        .byte $FF   ; 
- - - - - - 0x0373B7 0D:B3A7: FF        .byte $FF   ; 
- - - - - - 0x0373B8 0D:B3A8: FF        .byte $FF   ; 
- - - - - - 0x0373B9 0D:B3A9: FF        .byte $FF   ; 
- - - - - - 0x0373BA 0D:B3AA: FF        .byte $FF   ; 
- - - - - - 0x0373BB 0D:B3AB: FF        .byte $FF   ; 
- - - - - - 0x0373BC 0D:B3AC: FF        .byte $FF   ; 
- - - - - - 0x0373BD 0D:B3AD: FF        .byte $FF   ; 
- - - - - - 0x0373BE 0D:B3AE: FF        .byte $FF   ; 
- - - - - - 0x0373BF 0D:B3AF: FF        .byte $FF   ; 
- - - - - - 0x0373C0 0D:B3B0: FF        .byte $FF   ; 
- - - - - - 0x0373C1 0D:B3B1: FF        .byte $FF   ; 
- - - - - - 0x0373C2 0D:B3B2: FF        .byte $FF   ; 
- - - - - - 0x0373C3 0D:B3B3: FF        .byte $FF   ; 
- - - - - - 0x0373C4 0D:B3B4: FF        .byte $FF   ; 
- - - - - - 0x0373C5 0D:B3B5: FF        .byte $FF   ; 
- - - - - - 0x0373C6 0D:B3B6: FF        .byte $FF   ; 
- - - - - - 0x0373C7 0D:B3B7: FF        .byte $FF   ; 
- - - - - - 0x0373C8 0D:B3B8: FF        .byte $FF   ; 
- - - - - - 0x0373C9 0D:B3B9: FF        .byte $FF   ; 
- - - - - - 0x0373CA 0D:B3BA: FF        .byte $FF   ; 
- - - - - - 0x0373CB 0D:B3BB: FF        .byte $FF   ; 
- - - - - - 0x0373CC 0D:B3BC: FF        .byte $FF   ; 
- - - - - - 0x0373CD 0D:B3BD: FF        .byte $FF   ; 
- - - - - - 0x0373CE 0D:B3BE: FF        .byte $FF   ; 
- - - - - - 0x0373CF 0D:B3BF: FF        .byte $FF   ; 
- - - - - - 0x0373D0 0D:B3C0: FF        .byte $FF   ; 
- - - - - - 0x0373D1 0D:B3C1: FF        .byte $FF   ; 
- - - - - - 0x0373D2 0D:B3C2: FF        .byte $FF   ; 
- - - - - - 0x0373D3 0D:B3C3: FF        .byte $FF   ; 
- - - - - - 0x0373D4 0D:B3C4: FF        .byte $FF   ; 
- - - - - - 0x0373D5 0D:B3C5: FF        .byte $FF   ; 
- - - - - - 0x0373D6 0D:B3C6: FF        .byte $FF   ; 
- - - - - - 0x0373D7 0D:B3C7: FF        .byte $FF   ; 
- - - - - - 0x0373D8 0D:B3C8: FF        .byte $FF   ; 
- - - - - - 0x0373D9 0D:B3C9: FF        .byte $FF   ; 
- - - - - - 0x0373DA 0D:B3CA: FF        .byte $FF   ; 
- - - - - - 0x0373DB 0D:B3CB: FF        .byte $FF   ; 
- - - - - - 0x0373DC 0D:B3CC: FF        .byte $FF   ; 
- - - - - - 0x0373DD 0D:B3CD: FF        .byte $FF   ; 
- - - - - - 0x0373DE 0D:B3CE: FF        .byte $FF   ; 
- - - - - - 0x0373DF 0D:B3CF: FF        .byte $FF   ; 
- - - - - - 0x0373E0 0D:B3D0: FF        .byte $FF   ; 
- - - - - - 0x0373E1 0D:B3D1: FF        .byte $FF   ; 
- - - - - - 0x0373E2 0D:B3D2: FF        .byte $FF   ; 
- - - - - - 0x0373E3 0D:B3D3: FF        .byte $FF   ; 
- - - - - - 0x0373E4 0D:B3D4: FF        .byte $FF   ; 
- - - - - - 0x0373E5 0D:B3D5: FF        .byte $FF   ; 
- - - - - - 0x0373E6 0D:B3D6: FF        .byte $FF   ; 
- - - - - - 0x0373E7 0D:B3D7: FF        .byte $FF   ; 
- - - - - - 0x0373E8 0D:B3D8: FF        .byte $FF   ; 
- - - - - - 0x0373E9 0D:B3D9: FF        .byte $FF   ; 
- - - - - - 0x0373EA 0D:B3DA: FF        .byte $FF   ; 
- - - - - - 0x0373EB 0D:B3DB: FF        .byte $FF   ; 
- - - - - - 0x0373EC 0D:B3DC: FF        .byte $FF   ; 
- - - - - - 0x0373ED 0D:B3DD: FF        .byte $FF   ; 
- - - - - - 0x0373EE 0D:B3DE: FF        .byte $FF   ; 
- - - - - - 0x0373EF 0D:B3DF: FF        .byte $FF   ; 
- - - - - - 0x0373F0 0D:B3E0: FF        .byte $FF   ; 
- - - - - - 0x0373F1 0D:B3E1: FF        .byte $FF   ; 
- - - - - - 0x0373F2 0D:B3E2: FF        .byte $FF   ; 
- - - - - - 0x0373F3 0D:B3E3: FF        .byte $FF   ; 
- - - - - - 0x0373F4 0D:B3E4: FF        .byte $FF   ; 
- - - - - - 0x0373F5 0D:B3E5: FF        .byte $FF   ; 
- - - - - - 0x0373F6 0D:B3E6: FF        .byte $FF   ; 
- - - - - - 0x0373F7 0D:B3E7: FF        .byte $FF   ; 
- - - - - - 0x0373F8 0D:B3E8: FF        .byte $FF   ; 
- - - - - - 0x0373F9 0D:B3E9: FF        .byte $FF   ; 
- - - - - - 0x0373FA 0D:B3EA: FF        .byte $FF   ; 
- - - - - - 0x0373FB 0D:B3EB: FF        .byte $FF   ; 
- - - - - - 0x0373FC 0D:B3EC: FF        .byte $FF   ; 
- - - - - - 0x0373FD 0D:B3ED: FF        .byte $FF   ; 
- - - - - - 0x0373FE 0D:B3EE: FF        .byte $FF   ; 
- - - - - - 0x0373FF 0D:B3EF: FF        .byte $FF   ; 
- - - - - - 0x037400 0D:B3F0: FF        .byte $FF   ; 
- - - - - - 0x037401 0D:B3F1: FF        .byte $FF   ; 
- - - - - - 0x037402 0D:B3F2: FF        .byte $FF   ; 
- - - - - - 0x037403 0D:B3F3: FF        .byte $FF   ; 
- - - - - - 0x037404 0D:B3F4: FF        .byte $FF   ; 
- - - - - - 0x037405 0D:B3F5: FF        .byte $FF   ; 
- - - - - - 0x037406 0D:B3F6: FF        .byte $FF   ; 
- - - - - - 0x037407 0D:B3F7: FF        .byte $FF   ; 
- - - - - - 0x037408 0D:B3F8: FF        .byte $FF   ; 
- - - - - - 0x037409 0D:B3F9: FF        .byte $FF   ; 
- - - - - - 0x03740A 0D:B3FA: FF        .byte $FF   ; 
- - - - - - 0x03740B 0D:B3FB: FF        .byte $FF   ; 
- - - - - - 0x03740C 0D:B3FC: FF        .byte $FF   ; 
- - - - - - 0x03740D 0D:B3FD: FF        .byte $FF   ; 
- - - - - - 0x03740E 0D:B3FE: FF        .byte $FF   ; 
- - - - - - 0x03740F 0D:B3FF: FF        .byte $FF   ; 
- - - - - - 0x037410 0D:B400: FF        .byte $FF   ; 
- - - - - - 0x037411 0D:B401: FF        .byte $FF   ; 
- - - - - - 0x037412 0D:B402: FF        .byte $FF   ; 
- - - - - - 0x037413 0D:B403: FF        .byte $FF   ; 
- - - - - - 0x037414 0D:B404: FF        .byte $FF   ; 
- - - - - - 0x037415 0D:B405: FF        .byte $FF   ; 
- - - - - - 0x037416 0D:B406: FF        .byte $FF   ; 
- - - - - - 0x037417 0D:B407: FF        .byte $FF   ; 
- - - - - - 0x037418 0D:B408: FF        .byte $FF   ; 
- - - - - - 0x037419 0D:B409: FF        .byte $FF   ; 
- - - - - - 0x03741A 0D:B40A: FF        .byte $FF   ; 
- - - - - - 0x03741B 0D:B40B: FF        .byte $FF   ; 
- - - - - - 0x03741C 0D:B40C: FF        .byte $FF   ; 
- - - - - - 0x03741D 0D:B40D: FF        .byte $FF   ; 
- - - - - - 0x03741E 0D:B40E: FF        .byte $FF   ; 
- - - - - - 0x03741F 0D:B40F: FF        .byte $FF   ; 
- - - - - - 0x037420 0D:B410: FF        .byte $FF   ; 
- - - - - - 0x037421 0D:B411: FF        .byte $FF   ; 
- - - - - - 0x037422 0D:B412: FF        .byte $FF   ; 
- - - - - - 0x037423 0D:B413: FF        .byte $FF   ; 
- - - - - - 0x037424 0D:B414: FF        .byte $FF   ; 
- - - - - - 0x037425 0D:B415: FF        .byte $FF   ; 
- - - - - - 0x037426 0D:B416: FF        .byte $FF   ; 
- - - - - - 0x037427 0D:B417: FF        .byte $FF   ; 
- - - - - - 0x037428 0D:B418: FF        .byte $FF   ; 
- - - - - - 0x037429 0D:B419: FF        .byte $FF   ; 
- - - - - - 0x03742A 0D:B41A: FF        .byte $FF   ; 
- - - - - - 0x03742B 0D:B41B: FF        .byte $FF   ; 
- - - - - - 0x03742C 0D:B41C: FF        .byte $FF   ; 
- - - - - - 0x03742D 0D:B41D: FF        .byte $FF   ; 
- - - - - - 0x03742E 0D:B41E: FF        .byte $FF   ; 
- - - - - - 0x03742F 0D:B41F: FF        .byte $FF   ; 
- - - - - - 0x037430 0D:B420: FF        .byte $FF   ; 
- - - - - - 0x037431 0D:B421: FF        .byte $FF   ; 
- - - - - - 0x037432 0D:B422: FF        .byte $FF   ; 
- - - - - - 0x037433 0D:B423: FF        .byte $FF   ; 
- - - - - - 0x037434 0D:B424: FF        .byte $FF   ; 
- - - - - - 0x037435 0D:B425: FF        .byte $FF   ; 
- - - - - - 0x037436 0D:B426: FF        .byte $FF   ; 
- - - - - - 0x037437 0D:B427: FF        .byte $FF   ; 
- - - - - - 0x037438 0D:B428: FF        .byte $FF   ; 
- - - - - - 0x037439 0D:B429: FF        .byte $FF   ; 
- - - - - - 0x03743A 0D:B42A: FF        .byte $FF   ; 
- - - - - - 0x03743B 0D:B42B: FF        .byte $FF   ; 
- - - - - - 0x03743C 0D:B42C: FF        .byte $FF   ; 
- - - - - - 0x03743D 0D:B42D: FF        .byte $FF   ; 
- - - - - - 0x03743E 0D:B42E: FF        .byte $FF   ; 
- - - - - - 0x03743F 0D:B42F: FF        .byte $FF   ; 
- - - - - - 0x037440 0D:B430: FF        .byte $FF   ; 
- - - - - - 0x037441 0D:B431: FF        .byte $FF   ; 
- - - - - - 0x037442 0D:B432: FF        .byte $FF   ; 
- - - - - - 0x037443 0D:B433: FF        .byte $FF   ; 
- - - - - - 0x037444 0D:B434: FF        .byte $FF   ; 
- - - - - - 0x037445 0D:B435: FF        .byte $FF   ; 
- - - - - - 0x037446 0D:B436: FF        .byte $FF   ; 
- - - - - - 0x037447 0D:B437: FF        .byte $FF   ; 
- - - - - - 0x037448 0D:B438: FF        .byte $FF   ; 
- - - - - - 0x037449 0D:B439: FF        .byte $FF   ; 
- - - - - - 0x03744A 0D:B43A: FF        .byte $FF   ; 
- - - - - - 0x03744B 0D:B43B: FF        .byte $FF   ; 
- - - - - - 0x03744C 0D:B43C: FF        .byte $FF   ; 
- - - - - - 0x03744D 0D:B43D: FF        .byte $FF   ; 
- - - - - - 0x03744E 0D:B43E: FF        .byte $FF   ; 
- - - - - - 0x03744F 0D:B43F: FF        .byte $FF   ; 
- - - - - - 0x037450 0D:B440: FF        .byte $FF   ; 
- - - - - - 0x037451 0D:B441: FF        .byte $FF   ; 
- - - - - - 0x037452 0D:B442: FF        .byte $FF   ; 
- - - - - - 0x037453 0D:B443: FF        .byte $FF   ; 
- - - - - - 0x037454 0D:B444: FF        .byte $FF   ; 
- - - - - - 0x037455 0D:B445: FF        .byte $FF   ; 
- - - - - - 0x037456 0D:B446: FF        .byte $FF   ; 
- - - - - - 0x037457 0D:B447: FF        .byte $FF   ; 
- - - - - - 0x037458 0D:B448: FF        .byte $FF   ; 
- - - - - - 0x037459 0D:B449: FF        .byte $FF   ; 
- - - - - - 0x03745A 0D:B44A: FF        .byte $FF   ; 
- - - - - - 0x03745B 0D:B44B: FF        .byte $FF   ; 
- - - - - - 0x03745C 0D:B44C: FF        .byte $FF   ; 
- - - - - - 0x03745D 0D:B44D: FF        .byte $FF   ; 
- - - - - - 0x03745E 0D:B44E: FF        .byte $FF   ; 
- - - - - - 0x03745F 0D:B44F: FF        .byte $FF   ; 
- - - - - - 0x037460 0D:B450: FF        .byte $FF   ; 
- - - - - - 0x037461 0D:B451: FF        .byte $FF   ; 
- - - - - - 0x037462 0D:B452: FF        .byte $FF   ; 
- - - - - - 0x037463 0D:B453: FF        .byte $FF   ; 
- - - - - - 0x037464 0D:B454: FF        .byte $FF   ; 
- - - - - - 0x037465 0D:B455: FF        .byte $FF   ; 
- - - - - - 0x037466 0D:B456: FF        .byte $FF   ; 
- - - - - - 0x037467 0D:B457: FF        .byte $FF   ; 
- - - - - - 0x037468 0D:B458: FF        .byte $FF   ; 
- - - - - - 0x037469 0D:B459: FF        .byte $FF   ; 
- - - - - - 0x03746A 0D:B45A: FF        .byte $FF   ; 
- - - - - - 0x03746B 0D:B45B: FF        .byte $FF   ; 
- - - - - - 0x03746C 0D:B45C: FF        .byte $FF   ; 
- - - - - - 0x03746D 0D:B45D: FF        .byte $FF   ; 
- - - - - - 0x03746E 0D:B45E: FF        .byte $FF   ; 
- - - - - - 0x03746F 0D:B45F: FF        .byte $FF   ; 
- - - - - - 0x037470 0D:B460: FF        .byte $FF   ; 
- - - - - - 0x037471 0D:B461: FF        .byte $FF   ; 
- - - - - - 0x037472 0D:B462: FF        .byte $FF   ; 
- - - - - - 0x037473 0D:B463: FF        .byte $FF   ; 
- - - - - - 0x037474 0D:B464: FF        .byte $FF   ; 
- - - - - - 0x037475 0D:B465: FF        .byte $FF   ; 
- - - - - - 0x037476 0D:B466: FF        .byte $FF   ; 
- - - - - - 0x037477 0D:B467: FF        .byte $FF   ; 
- - - - - - 0x037478 0D:B468: FF        .byte $FF   ; 
- - - - - - 0x037479 0D:B469: FF        .byte $FF   ; 
- - - - - - 0x03747A 0D:B46A: FF        .byte $FF   ; 
- - - - - - 0x03747B 0D:B46B: FF        .byte $FF   ; 
- - - - - - 0x03747C 0D:B46C: FF        .byte $FF   ; 
- - - - - - 0x03747D 0D:B46D: FF        .byte $FF   ; 
- - - - - - 0x03747E 0D:B46E: FF        .byte $FF   ; 
- - - - - - 0x03747F 0D:B46F: FF        .byte $FF   ; 
- - - - - - 0x037480 0D:B470: FF        .byte $FF   ; 
- - - - - - 0x037481 0D:B471: FF        .byte $FF   ; 
- - - - - - 0x037482 0D:B472: FF        .byte $FF   ; 
- - - - - - 0x037483 0D:B473: FF        .byte $FF   ; 
- - - - - - 0x037484 0D:B474: FF        .byte $FF   ; 
- - - - - - 0x037485 0D:B475: FF        .byte $FF   ; 
- - - - - - 0x037486 0D:B476: FF        .byte $FF   ; 
- - - - - - 0x037487 0D:B477: FF        .byte $FF   ; 
- - - - - - 0x037488 0D:B478: FF        .byte $FF   ; 
- - - - - - 0x037489 0D:B479: FF        .byte $FF   ; 
- - - - - - 0x03748A 0D:B47A: FF        .byte $FF   ; 
- - - - - - 0x03748B 0D:B47B: FF        .byte $FF   ; 
- - - - - - 0x03748C 0D:B47C: FF        .byte $FF   ; 
- - - - - - 0x03748D 0D:B47D: FF        .byte $FF   ; 
- - - - - - 0x03748E 0D:B47E: FF        .byte $FF   ; 
- - - - - - 0x03748F 0D:B47F: FF        .byte $FF   ; 
- - - - - - 0x037490 0D:B480: FF        .byte $FF   ; 
- - - - - - 0x037491 0D:B481: FF        .byte $FF   ; 
- - - - - - 0x037492 0D:B482: FF        .byte $FF   ; 
- - - - - - 0x037493 0D:B483: FF        .byte $FF   ; 
- - - - - - 0x037494 0D:B484: FF        .byte $FF   ; 
- - - - - - 0x037495 0D:B485: FF        .byte $FF   ; 
- - - - - - 0x037496 0D:B486: FF        .byte $FF   ; 
- - - - - - 0x037497 0D:B487: FF        .byte $FF   ; 
- - - - - - 0x037498 0D:B488: FF        .byte $FF   ; 
- - - - - - 0x037499 0D:B489: FF        .byte $FF   ; 
- - - - - - 0x03749A 0D:B48A: FF        .byte $FF   ; 
- - - - - - 0x03749B 0D:B48B: FF        .byte $FF   ; 
- - - - - - 0x03749C 0D:B48C: FF        .byte $FF   ; 
- - - - - - 0x03749D 0D:B48D: FF        .byte $FF   ; 
- - - - - - 0x03749E 0D:B48E: FF        .byte $FF   ; 
- - - - - - 0x03749F 0D:B48F: FF        .byte $FF   ; 
- - - - - - 0x0374A0 0D:B490: FF        .byte $FF   ; 
- - - - - - 0x0374A1 0D:B491: FF        .byte $FF   ; 
- - - - - - 0x0374A2 0D:B492: FF        .byte $FF   ; 
- - - - - - 0x0374A3 0D:B493: FF        .byte $FF   ; 
- - - - - - 0x0374A4 0D:B494: FF        .byte $FF   ; 
- - - - - - 0x0374A5 0D:B495: FF        .byte $FF   ; 
- - - - - - 0x0374A6 0D:B496: FF        .byte $FF   ; 
- - - - - - 0x0374A7 0D:B497: FF        .byte $FF   ; 
- - - - - - 0x0374A8 0D:B498: FF        .byte $FF   ; 
- - - - - - 0x0374A9 0D:B499: FF        .byte $FF   ; 
- - - - - - 0x0374AA 0D:B49A: FF        .byte $FF   ; 
- - - - - - 0x0374AB 0D:B49B: FF        .byte $FF   ; 
- - - - - - 0x0374AC 0D:B49C: FF        .byte $FF   ; 
- - - - - - 0x0374AD 0D:B49D: FF        .byte $FF   ; 
- - - - - - 0x0374AE 0D:B49E: FF        .byte $FF   ; 
- - - - - - 0x0374AF 0D:B49F: FF        .byte $FF   ; 
- - - - - - 0x0374B0 0D:B4A0: FF        .byte $FF   ; 
- - - - - - 0x0374B1 0D:B4A1: FF        .byte $FF   ; 
- - - - - - 0x0374B2 0D:B4A2: FF        .byte $FF   ; 
- - - - - - 0x0374B3 0D:B4A3: FF        .byte $FF   ; 
- - - - - - 0x0374B4 0D:B4A4: FF        .byte $FF   ; 
- - - - - - 0x0374B5 0D:B4A5: FF        .byte $FF   ; 
- - - - - - 0x0374B6 0D:B4A6: FF        .byte $FF   ; 
- - - - - - 0x0374B7 0D:B4A7: FF        .byte $FF   ; 
- - - - - - 0x0374B8 0D:B4A8: FF        .byte $FF   ; 
- - - - - - 0x0374B9 0D:B4A9: FF        .byte $FF   ; 
- - - - - - 0x0374BA 0D:B4AA: FF        .byte $FF   ; 
- - - - - - 0x0374BB 0D:B4AB: FF        .byte $FF   ; 
- - - - - - 0x0374BC 0D:B4AC: FF        .byte $FF   ; 
- - - - - - 0x0374BD 0D:B4AD: FF        .byte $FF   ; 
- - - - - - 0x0374BE 0D:B4AE: FF        .byte $FF   ; 
- - - - - - 0x0374BF 0D:B4AF: FF        .byte $FF   ; 
- - - - - - 0x0374C0 0D:B4B0: FF        .byte $FF   ; 
- - - - - - 0x0374C1 0D:B4B1: FF        .byte $FF   ; 
- - - - - - 0x0374C2 0D:B4B2: FF        .byte $FF   ; 
- - - - - - 0x0374C3 0D:B4B3: FF        .byte $FF   ; 
- - - - - - 0x0374C4 0D:B4B4: FF        .byte $FF   ; 
- - - - - - 0x0374C5 0D:B4B5: FF        .byte $FF   ; 
- - - - - - 0x0374C6 0D:B4B6: FF        .byte $FF   ; 
- - - - - - 0x0374C7 0D:B4B7: FF        .byte $FF   ; 
- - - - - - 0x0374C8 0D:B4B8: FF        .byte $FF   ; 
- - - - - - 0x0374C9 0D:B4B9: FF        .byte $FF   ; 
- - - - - - 0x0374CA 0D:B4BA: FF        .byte $FF   ; 
- - - - - - 0x0374CB 0D:B4BB: FF        .byte $FF   ; 
- - - - - - 0x0374CC 0D:B4BC: FF        .byte $FF   ; 
- - - - - - 0x0374CD 0D:B4BD: FF        .byte $FF   ; 
- - - - - - 0x0374CE 0D:B4BE: FF        .byte $FF   ; 
- - - - - - 0x0374CF 0D:B4BF: FF        .byte $FF   ; 
- - - - - - 0x0374D0 0D:B4C0: FF        .byte $FF   ; 
- - - - - - 0x0374D1 0D:B4C1: FF        .byte $FF   ; 
- - - - - - 0x0374D2 0D:B4C2: FF        .byte $FF   ; 
- - - - - - 0x0374D3 0D:B4C3: FF        .byte $FF   ; 
- - - - - - 0x0374D4 0D:B4C4: FF        .byte $FF   ; 
- - - - - - 0x0374D5 0D:B4C5: FF        .byte $FF   ; 
- - - - - - 0x0374D6 0D:B4C6: FF        .byte $FF   ; 
- - - - - - 0x0374D7 0D:B4C7: FF        .byte $FF   ; 
- - - - - - 0x0374D8 0D:B4C8: FF        .byte $FF   ; 
- - - - - - 0x0374D9 0D:B4C9: FF        .byte $FF   ; 
- - - - - - 0x0374DA 0D:B4CA: FF        .byte $FF   ; 
- - - - - - 0x0374DB 0D:B4CB: FF        .byte $FF   ; 
- - - - - - 0x0374DC 0D:B4CC: FF        .byte $FF   ; 
- - - - - - 0x0374DD 0D:B4CD: FF        .byte $FF   ; 
- - - - - - 0x0374DE 0D:B4CE: FF        .byte $FF   ; 
- - - - - - 0x0374DF 0D:B4CF: FF        .byte $FF   ; 
- - - - - - 0x0374E0 0D:B4D0: FF        .byte $FF   ; 
- - - - - - 0x0374E1 0D:B4D1: FF        .byte $FF   ; 
- - - - - - 0x0374E2 0D:B4D2: FF        .byte $FF   ; 
- - - - - - 0x0374E3 0D:B4D3: FF        .byte $FF   ; 
- - - - - - 0x0374E4 0D:B4D4: FF        .byte $FF   ; 
- - - - - - 0x0374E5 0D:B4D5: FF        .byte $FF   ; 
- - - - - - 0x0374E6 0D:B4D6: FF        .byte $FF   ; 
- - - - - - 0x0374E7 0D:B4D7: FF        .byte $FF   ; 
- - - - - - 0x0374E8 0D:B4D8: FF        .byte $FF   ; 
- - - - - - 0x0374E9 0D:B4D9: FF        .byte $FF   ; 
- - - - - - 0x0374EA 0D:B4DA: FF        .byte $FF   ; 
- - - - - - 0x0374EB 0D:B4DB: FF        .byte $FF   ; 
- - - - - - 0x0374EC 0D:B4DC: FF        .byte $FF   ; 
- - - - - - 0x0374ED 0D:B4DD: FF        .byte $FF   ; 
- - - - - - 0x0374EE 0D:B4DE: FF        .byte $FF   ; 
- - - - - - 0x0374EF 0D:B4DF: FF        .byte $FF   ; 
- - - - - - 0x0374F0 0D:B4E0: FF        .byte $FF   ; 
- - - - - - 0x0374F1 0D:B4E1: FF        .byte $FF   ; 
- - - - - - 0x0374F2 0D:B4E2: FF        .byte $FF   ; 
- - - - - - 0x0374F3 0D:B4E3: FF        .byte $FF   ; 
- - - - - - 0x0374F4 0D:B4E4: FF        .byte $FF   ; 
- - - - - - 0x0374F5 0D:B4E5: FF        .byte $FF   ; 
- - - - - - 0x0374F6 0D:B4E6: FF        .byte $FF   ; 
- - - - - - 0x0374F7 0D:B4E7: FF        .byte $FF   ; 
- - - - - - 0x0374F8 0D:B4E8: FF        .byte $FF   ; 
- - - - - - 0x0374F9 0D:B4E9: FF        .byte $FF   ; 
- - - - - - 0x0374FA 0D:B4EA: FF        .byte $FF   ; 
- - - - - - 0x0374FB 0D:B4EB: FF        .byte $FF   ; 
- - - - - - 0x0374FC 0D:B4EC: FF        .byte $FF   ; 
- - - - - - 0x0374FD 0D:B4ED: FF        .byte $FF   ; 
- - - - - - 0x0374FE 0D:B4EE: FF        .byte $FF   ; 
- - - - - - 0x0374FF 0D:B4EF: FF        .byte $FF   ; 
- - - - - - 0x037500 0D:B4F0: FF        .byte $FF   ; 
- - - - - - 0x037501 0D:B4F1: FF        .byte $FF   ; 
- - - - - - 0x037502 0D:B4F2: FF        .byte $FF   ; 
- - - - - - 0x037503 0D:B4F3: FF        .byte $FF   ; 
- - - - - - 0x037504 0D:B4F4: FF        .byte $FF   ; 
- - - - - - 0x037505 0D:B4F5: FF        .byte $FF   ; 
- - - - - - 0x037506 0D:B4F6: FF        .byte $FF   ; 
- - - - - - 0x037507 0D:B4F7: FF        .byte $FF   ; 
- - - - - - 0x037508 0D:B4F8: FF        .byte $FF   ; 
- - - - - - 0x037509 0D:B4F9: FF        .byte $FF   ; 
- - - - - - 0x03750A 0D:B4FA: FF        .byte $FF   ; 
- - - - - - 0x03750B 0D:B4FB: FF        .byte $FF   ; 
- - - - - - 0x03750C 0D:B4FC: FF        .byte $FF   ; 
- - - - - - 0x03750D 0D:B4FD: FF        .byte $FF   ; 
- - - - - - 0x03750E 0D:B4FE: FF        .byte $FF   ; 
- - - - - - 0x03750F 0D:B4FF: FF        .byte $FF   ; 
- - - - - - 0x037510 0D:B500: FF        .byte $FF   ; 
- - - - - - 0x037511 0D:B501: FF        .byte $FF   ; 
- - - - - - 0x037512 0D:B502: FF        .byte $FF   ; 
- - - - - - 0x037513 0D:B503: FF        .byte $FF   ; 
- - - - - - 0x037514 0D:B504: FF        .byte $FF   ; 
- - - - - - 0x037515 0D:B505: FF        .byte $FF   ; 
- - - - - - 0x037516 0D:B506: FF        .byte $FF   ; 
- - - - - - 0x037517 0D:B507: FF        .byte $FF   ; 
- - - - - - 0x037518 0D:B508: FF        .byte $FF   ; 
- - - - - - 0x037519 0D:B509: FF        .byte $FF   ; 
- - - - - - 0x03751A 0D:B50A: FF        .byte $FF   ; 
- - - - - - 0x03751B 0D:B50B: FF        .byte $FF   ; 
- - - - - - 0x03751C 0D:B50C: FF        .byte $FF   ; 
- - - - - - 0x03751D 0D:B50D: FF        .byte $FF   ; 
- - - - - - 0x03751E 0D:B50E: FF        .byte $FF   ; 
- - - - - - 0x03751F 0D:B50F: FF        .byte $FF   ; 
- - - - - - 0x037520 0D:B510: FF        .byte $FF   ; 
- - - - - - 0x037521 0D:B511: FF        .byte $FF   ; 
- - - - - - 0x037522 0D:B512: FF        .byte $FF   ; 
- - - - - - 0x037523 0D:B513: FF        .byte $FF   ; 
- - - - - - 0x037524 0D:B514: FF        .byte $FF   ; 
- - - - - - 0x037525 0D:B515: FF        .byte $FF   ; 
- - - - - - 0x037526 0D:B516: FF        .byte $FF   ; 
- - - - - - 0x037527 0D:B517: FF        .byte $FF   ; 
- - - - - - 0x037528 0D:B518: FF        .byte $FF   ; 
- - - - - - 0x037529 0D:B519: FF        .byte $FF   ; 
- - - - - - 0x03752A 0D:B51A: FF        .byte $FF   ; 
- - - - - - 0x03752B 0D:B51B: FF        .byte $FF   ; 
- - - - - - 0x03752C 0D:B51C: FF        .byte $FF   ; 
- - - - - - 0x03752D 0D:B51D: FF        .byte $FF   ; 
- - - - - - 0x03752E 0D:B51E: FF        .byte $FF   ; 
- - - - - - 0x03752F 0D:B51F: FF        .byte $FF   ; 
- - - - - - 0x037530 0D:B520: FF        .byte $FF   ; 
- - - - - - 0x037531 0D:B521: FF        .byte $FF   ; 
- - - - - - 0x037532 0D:B522: FF        .byte $FF   ; 
- - - - - - 0x037533 0D:B523: FF        .byte $FF   ; 
- - - - - - 0x037534 0D:B524: FF        .byte $FF   ; 
- - - - - - 0x037535 0D:B525: FF        .byte $FF   ; 
- - - - - - 0x037536 0D:B526: FF        .byte $FF   ; 
- - - - - - 0x037537 0D:B527: FF        .byte $FF   ; 
- - - - - - 0x037538 0D:B528: FF        .byte $FF   ; 
- - - - - - 0x037539 0D:B529: FF        .byte $FF   ; 
- - - - - - 0x03753A 0D:B52A: FF        .byte $FF   ; 
- - - - - - 0x03753B 0D:B52B: FF        .byte $FF   ; 
- - - - - - 0x03753C 0D:B52C: FF        .byte $FF   ; 
- - - - - - 0x03753D 0D:B52D: FF        .byte $FF   ; 
- - - - - - 0x03753E 0D:B52E: FF        .byte $FF   ; 
- - - - - - 0x03753F 0D:B52F: FF        .byte $FF   ; 
- - - - - - 0x037540 0D:B530: FF        .byte $FF   ; 
- - - - - - 0x037541 0D:B531: FF        .byte $FF   ; 
- - - - - - 0x037542 0D:B532: FF        .byte $FF   ; 
- - - - - - 0x037543 0D:B533: FF        .byte $FF   ; 
- - - - - - 0x037544 0D:B534: FF        .byte $FF   ; 
- - - - - - 0x037545 0D:B535: FF        .byte $FF   ; 
- - - - - - 0x037546 0D:B536: FF        .byte $FF   ; 
- - - - - - 0x037547 0D:B537: FF        .byte $FF   ; 
- - - - - - 0x037548 0D:B538: FF        .byte $FF   ; 
- - - - - - 0x037549 0D:B539: FF        .byte $FF   ; 
- - - - - - 0x03754A 0D:B53A: FF        .byte $FF   ; 
- - - - - - 0x03754B 0D:B53B: FF        .byte $FF   ; 
- - - - - - 0x03754C 0D:B53C: FF        .byte $FF   ; 
- - - - - - 0x03754D 0D:B53D: FF        .byte $FF   ; 
- - - - - - 0x03754E 0D:B53E: FF        .byte $FF   ; 
- - - - - - 0x03754F 0D:B53F: FF        .byte $FF   ; 
- - - - - - 0x037550 0D:B540: FF        .byte $FF   ; 
- - - - - - 0x037551 0D:B541: FF        .byte $FF   ; 
- - - - - - 0x037552 0D:B542: FF        .byte $FF   ; 
- - - - - - 0x037553 0D:B543: FF        .byte $FF   ; 
- - - - - - 0x037554 0D:B544: FF        .byte $FF   ; 
- - - - - - 0x037555 0D:B545: FF        .byte $FF   ; 
- - - - - - 0x037556 0D:B546: FF        .byte $FF   ; 
- - - - - - 0x037557 0D:B547: FF        .byte $FF   ; 
- - - - - - 0x037558 0D:B548: FF        .byte $FF   ; 
- - - - - - 0x037559 0D:B549: FF        .byte $FF   ; 
- - - - - - 0x03755A 0D:B54A: FF        .byte $FF   ; 
- - - - - - 0x03755B 0D:B54B: FF        .byte $FF   ; 
- - - - - - 0x03755C 0D:B54C: FF        .byte $FF   ; 
- - - - - - 0x03755D 0D:B54D: FF        .byte $FF   ; 
- - - - - - 0x03755E 0D:B54E: FF        .byte $FF   ; 
- - - - - - 0x03755F 0D:B54F: FF        .byte $FF   ; 
- - - - - - 0x037560 0D:B550: FF        .byte $FF   ; 
- - - - - - 0x037561 0D:B551: FF        .byte $FF   ; 
- - - - - - 0x037562 0D:B552: FF        .byte $FF   ; 
- - - - - - 0x037563 0D:B553: FF        .byte $FF   ; 
- - - - - - 0x037564 0D:B554: FF        .byte $FF   ; 
- - - - - - 0x037565 0D:B555: FF        .byte $FF   ; 
- - - - - - 0x037566 0D:B556: FF        .byte $FF   ; 
- - - - - - 0x037567 0D:B557: FF        .byte $FF   ; 
- - - - - - 0x037568 0D:B558: FF        .byte $FF   ; 
- - - - - - 0x037569 0D:B559: FF        .byte $FF   ; 
- - - - - - 0x03756A 0D:B55A: FF        .byte $FF   ; 
- - - - - - 0x03756B 0D:B55B: FF        .byte $FF   ; 
- - - - - - 0x03756C 0D:B55C: FF        .byte $FF   ; 
- - - - - - 0x03756D 0D:B55D: FF        .byte $FF   ; 
- - - - - - 0x03756E 0D:B55E: FF        .byte $FF   ; 
- - - - - - 0x03756F 0D:B55F: FF        .byte $FF   ; 
- - - - - - 0x037570 0D:B560: FF        .byte $FF   ; 
- - - - - - 0x037571 0D:B561: FF        .byte $FF   ; 
- - - - - - 0x037572 0D:B562: FF        .byte $FF   ; 
- - - - - - 0x037573 0D:B563: FF        .byte $FF   ; 
- - - - - - 0x037574 0D:B564: FF        .byte $FF   ; 
- - - - - - 0x037575 0D:B565: FF        .byte $FF   ; 
- - - - - - 0x037576 0D:B566: FF        .byte $FF   ; 
- - - - - - 0x037577 0D:B567: FF        .byte $FF   ; 
- - - - - - 0x037578 0D:B568: FF        .byte $FF   ; 
- - - - - - 0x037579 0D:B569: FF        .byte $FF   ; 
- - - - - - 0x03757A 0D:B56A: FF        .byte $FF   ; 
- - - - - - 0x03757B 0D:B56B: FF        .byte $FF   ; 
- - - - - - 0x03757C 0D:B56C: FF        .byte $FF   ; 
- - - - - - 0x03757D 0D:B56D: FF        .byte $FF   ; 
- - - - - - 0x03757E 0D:B56E: FF        .byte $FF   ; 
- - - - - - 0x03757F 0D:B56F: FF        .byte $FF   ; 
- - - - - - 0x037580 0D:B570: FF        .byte $FF   ; 
- - - - - - 0x037581 0D:B571: FF        .byte $FF   ; 
- - - - - - 0x037582 0D:B572: FF        .byte $FF   ; 
- - - - - - 0x037583 0D:B573: FF        .byte $FF   ; 
- - - - - - 0x037584 0D:B574: FF        .byte $FF   ; 
- - - - - - 0x037585 0D:B575: FF        .byte $FF   ; 
- - - - - - 0x037586 0D:B576: FF        .byte $FF   ; 
- - - - - - 0x037587 0D:B577: FF        .byte $FF   ; 
- - - - - - 0x037588 0D:B578: FF        .byte $FF   ; 
- - - - - - 0x037589 0D:B579: FF        .byte $FF   ; 
- - - - - - 0x03758A 0D:B57A: FF        .byte $FF   ; 
- - - - - - 0x03758B 0D:B57B: FF        .byte $FF   ; 
- - - - - - 0x03758C 0D:B57C: FF        .byte $FF   ; 
- - - - - - 0x03758D 0D:B57D: FF        .byte $FF   ; 
- - - - - - 0x03758E 0D:B57E: FF        .byte $FF   ; 
- - - - - - 0x03758F 0D:B57F: FF        .byte $FF   ; 
- - - - - - 0x037590 0D:B580: FF        .byte $FF   ; 
- - - - - - 0x037591 0D:B581: FF        .byte $FF   ; 
- - - - - - 0x037592 0D:B582: FF        .byte $FF   ; 
- - - - - - 0x037593 0D:B583: FF        .byte $FF   ; 
- - - - - - 0x037594 0D:B584: FF        .byte $FF   ; 
- - - - - - 0x037595 0D:B585: FF        .byte $FF   ; 
- - - - - - 0x037596 0D:B586: FF        .byte $FF   ; 
- - - - - - 0x037597 0D:B587: FF        .byte $FF   ; 
- - - - - - 0x037598 0D:B588: FF        .byte $FF   ; 
- - - - - - 0x037599 0D:B589: FF        .byte $FF   ; 
- - - - - - 0x03759A 0D:B58A: FF        .byte $FF   ; 
- - - - - - 0x03759B 0D:B58B: FF        .byte $FF   ; 
- - - - - - 0x03759C 0D:B58C: FF        .byte $FF   ; 
- - - - - - 0x03759D 0D:B58D: FF        .byte $FF   ; 
- - - - - - 0x03759E 0D:B58E: FF        .byte $FF   ; 
- - - - - - 0x03759F 0D:B58F: FF        .byte $FF   ; 
- - - - - - 0x0375A0 0D:B590: FF        .byte $FF   ; 
- - - - - - 0x0375A1 0D:B591: FF        .byte $FF   ; 
- - - - - - 0x0375A2 0D:B592: FF        .byte $FF   ; 
- - - - - - 0x0375A3 0D:B593: FF        .byte $FF   ; 
- - - - - - 0x0375A4 0D:B594: FF        .byte $FF   ; 
- - - - - - 0x0375A5 0D:B595: FF        .byte $FF   ; 
- - - - - - 0x0375A6 0D:B596: FF        .byte $FF   ; 
- - - - - - 0x0375A7 0D:B597: FF        .byte $FF   ; 
- - - - - - 0x0375A8 0D:B598: FF        .byte $FF   ; 
- - - - - - 0x0375A9 0D:B599: FF        .byte $FF   ; 
- - - - - - 0x0375AA 0D:B59A: FF        .byte $FF   ; 
- - - - - - 0x0375AB 0D:B59B: FF        .byte $FF   ; 
- - - - - - 0x0375AC 0D:B59C: FF        .byte $FF   ; 
- - - - - - 0x0375AD 0D:B59D: FF        .byte $FF   ; 
- - - - - - 0x0375AE 0D:B59E: FF        .byte $FF   ; 
- - - - - - 0x0375AF 0D:B59F: FF        .byte $FF   ; 
- - - - - - 0x0375B0 0D:B5A0: FF        .byte $FF   ; 
- - - - - - 0x0375B1 0D:B5A1: FF        .byte $FF   ; 
- - - - - - 0x0375B2 0D:B5A2: FF        .byte $FF   ; 
- - - - - - 0x0375B3 0D:B5A3: FF        .byte $FF   ; 
- - - - - - 0x0375B4 0D:B5A4: FF        .byte $FF   ; 
- - - - - - 0x0375B5 0D:B5A5: FF        .byte $FF   ; 
- - - - - - 0x0375B6 0D:B5A6: FF        .byte $FF   ; 
- - - - - - 0x0375B7 0D:B5A7: FF        .byte $FF   ; 
- - - - - - 0x0375B8 0D:B5A8: FF        .byte $FF   ; 
- - - - - - 0x0375B9 0D:B5A9: FF        .byte $FF   ; 
- - - - - - 0x0375BA 0D:B5AA: FF        .byte $FF   ; 
- - - - - - 0x0375BB 0D:B5AB: FF        .byte $FF   ; 
- - - - - - 0x0375BC 0D:B5AC: FF        .byte $FF   ; 
- - - - - - 0x0375BD 0D:B5AD: FF        .byte $FF   ; 
- - - - - - 0x0375BE 0D:B5AE: FF        .byte $FF   ; 
- - - - - - 0x0375BF 0D:B5AF: FF        .byte $FF   ; 
- - - - - - 0x0375C0 0D:B5B0: FF        .byte $FF   ; 
- - - - - - 0x0375C1 0D:B5B1: FF        .byte $FF   ; 
- - - - - - 0x0375C2 0D:B5B2: FF        .byte $FF   ; 
- - - - - - 0x0375C3 0D:B5B3: FF        .byte $FF   ; 
- - - - - - 0x0375C4 0D:B5B4: FF        .byte $FF   ; 
- - - - - - 0x0375C5 0D:B5B5: FF        .byte $FF   ; 
- - - - - - 0x0375C6 0D:B5B6: FF        .byte $FF   ; 
- - - - - - 0x0375C7 0D:B5B7: FF        .byte $FF   ; 
- - - - - - 0x0375C8 0D:B5B8: FF        .byte $FF   ; 
- - - - - - 0x0375C9 0D:B5B9: FF        .byte $FF   ; 
- - - - - - 0x0375CA 0D:B5BA: FF        .byte $FF   ; 
- - - - - - 0x0375CB 0D:B5BB: FF        .byte $FF   ; 
- - - - - - 0x0375CC 0D:B5BC: FF        .byte $FF   ; 
- - - - - - 0x0375CD 0D:B5BD: FF        .byte $FF   ; 
- - - - - - 0x0375CE 0D:B5BE: FF        .byte $FF   ; 
- - - - - - 0x0375CF 0D:B5BF: FF        .byte $FF   ; 
- - - - - - 0x0375D0 0D:B5C0: FF        .byte $FF   ; 
- - - - - - 0x0375D1 0D:B5C1: FF        .byte $FF   ; 
- - - - - - 0x0375D2 0D:B5C2: FF        .byte $FF   ; 
- - - - - - 0x0375D3 0D:B5C3: FF        .byte $FF   ; 
- - - - - - 0x0375D4 0D:B5C4: FF        .byte $FF   ; 
- - - - - - 0x0375D5 0D:B5C5: FF        .byte $FF   ; 
- - - - - - 0x0375D6 0D:B5C6: FF        .byte $FF   ; 
- - - - - - 0x0375D7 0D:B5C7: FF        .byte $FF   ; 
- - - - - - 0x0375D8 0D:B5C8: FF        .byte $FF   ; 
- - - - - - 0x0375D9 0D:B5C9: FF        .byte $FF   ; 
- - - - - - 0x0375DA 0D:B5CA: FF        .byte $FF   ; 
- - - - - - 0x0375DB 0D:B5CB: FF        .byte $FF   ; 
- - - - - - 0x0375DC 0D:B5CC: FF        .byte $FF   ; 
- - - - - - 0x0375DD 0D:B5CD: FF        .byte $FF   ; 
- - - - - - 0x0375DE 0D:B5CE: FF        .byte $FF   ; 
- - - - - - 0x0375DF 0D:B5CF: FF        .byte $FF   ; 
- - - - - - 0x0375E0 0D:B5D0: FF        .byte $FF   ; 
- - - - - - 0x0375E1 0D:B5D1: FF        .byte $FF   ; 
- - - - - - 0x0375E2 0D:B5D2: FF        .byte $FF   ; 
- - - - - - 0x0375E3 0D:B5D3: FF        .byte $FF   ; 
- - - - - - 0x0375E4 0D:B5D4: FF        .byte $FF   ; 
- - - - - - 0x0375E5 0D:B5D5: FF        .byte $FF   ; 
- - - - - - 0x0375E6 0D:B5D6: FF        .byte $FF   ; 
- - - - - - 0x0375E7 0D:B5D7: FF        .byte $FF   ; 
- - - - - - 0x0375E8 0D:B5D8: FF        .byte $FF   ; 
- - - - - - 0x0375E9 0D:B5D9: FF        .byte $FF   ; 
- - - - - - 0x0375EA 0D:B5DA: FF        .byte $FF   ; 
- - - - - - 0x0375EB 0D:B5DB: FF        .byte $FF   ; 
- - - - - - 0x0375EC 0D:B5DC: FF        .byte $FF   ; 
- - - - - - 0x0375ED 0D:B5DD: FF        .byte $FF   ; 
- - - - - - 0x0375EE 0D:B5DE: FF        .byte $FF   ; 
- - - - - - 0x0375EF 0D:B5DF: FF        .byte $FF   ; 
- - - - - - 0x0375F0 0D:B5E0: FF        .byte $FF   ; 
- - - - - - 0x0375F1 0D:B5E1: FF        .byte $FF   ; 
- - - - - - 0x0375F2 0D:B5E2: FF        .byte $FF   ; 
- - - - - - 0x0375F3 0D:B5E3: FF        .byte $FF   ; 
- - - - - - 0x0375F4 0D:B5E4: FF        .byte $FF   ; 
- - - - - - 0x0375F5 0D:B5E5: FF        .byte $FF   ; 
- - - - - - 0x0375F6 0D:B5E6: FF        .byte $FF   ; 
- - - - - - 0x0375F7 0D:B5E7: FF        .byte $FF   ; 
- - - - - - 0x0375F8 0D:B5E8: FF        .byte $FF   ; 
- - - - - - 0x0375F9 0D:B5E9: FF        .byte $FF   ; 
- - - - - - 0x0375FA 0D:B5EA: FF        .byte $FF   ; 
- - - - - - 0x0375FB 0D:B5EB: FF        .byte $FF   ; 
- - - - - - 0x0375FC 0D:B5EC: FF        .byte $FF   ; 
- - - - - - 0x0375FD 0D:B5ED: FF        .byte $FF   ; 
- - - - - - 0x0375FE 0D:B5EE: FF        .byte $FF   ; 
- - - - - - 0x0375FF 0D:B5EF: FF        .byte $FF   ; 
- - - - - - 0x037600 0D:B5F0: FF        .byte $FF   ; 
- - - - - - 0x037601 0D:B5F1: FF        .byte $FF   ; 
- - - - - - 0x037602 0D:B5F2: FF        .byte $FF   ; 
- - - - - - 0x037603 0D:B5F3: FF        .byte $FF   ; 
- - - - - - 0x037604 0D:B5F4: FF        .byte $FF   ; 
- - - - - - 0x037605 0D:B5F5: FF        .byte $FF   ; 
- - - - - - 0x037606 0D:B5F6: FF        .byte $FF   ; 
- - - - - - 0x037607 0D:B5F7: FF        .byte $FF   ; 
- - - - - - 0x037608 0D:B5F8: FF        .byte $FF   ; 
- - - - - - 0x037609 0D:B5F9: FF        .byte $FF   ; 
- - - - - - 0x03760A 0D:B5FA: FF        .byte $FF   ; 
- - - - - - 0x03760B 0D:B5FB: FF        .byte $FF   ; 
- - - - - - 0x03760C 0D:B5FC: FF        .byte $FF   ; 
- - - - - - 0x03760D 0D:B5FD: FF        .byte $FF   ; 
- - - - - - 0x03760E 0D:B5FE: FF        .byte $FF   ; 
- - - - - - 0x03760F 0D:B5FF: FF        .byte $FF   ; 
- - - - - - 0x037610 0D:B600: FF        .byte $FF   ; 
- - - - - - 0x037611 0D:B601: FF        .byte $FF   ; 
- - - - - - 0x037612 0D:B602: FF        .byte $FF   ; 
- - - - - - 0x037613 0D:B603: FF        .byte $FF   ; 
- - - - - - 0x037614 0D:B604: FF        .byte $FF   ; 
- - - - - - 0x037615 0D:B605: FF        .byte $FF   ; 
- - - - - - 0x037616 0D:B606: FF        .byte $FF   ; 
- - - - - - 0x037617 0D:B607: FF        .byte $FF   ; 
- - - - - - 0x037618 0D:B608: FF        .byte $FF   ; 
- - - - - - 0x037619 0D:B609: FF        .byte $FF   ; 
- - - - - - 0x03761A 0D:B60A: FF        .byte $FF   ; 
- - - - - - 0x03761B 0D:B60B: FF        .byte $FF   ; 
- - - - - - 0x03761C 0D:B60C: FF        .byte $FF   ; 
- - - - - - 0x03761D 0D:B60D: FF        .byte $FF   ; 
- - - - - - 0x03761E 0D:B60E: FF        .byte $FF   ; 
- - - - - - 0x03761F 0D:B60F: FF        .byte $FF   ; 
- - - - - - 0x037620 0D:B610: FF        .byte $FF   ; 
- - - - - - 0x037621 0D:B611: FF        .byte $FF   ; 
- - - - - - 0x037622 0D:B612: FF        .byte $FF   ; 
- - - - - - 0x037623 0D:B613: FF        .byte $FF   ; 
- - - - - - 0x037624 0D:B614: FF        .byte $FF   ; 
- - - - - - 0x037625 0D:B615: FF        .byte $FF   ; 
- - - - - - 0x037626 0D:B616: FF        .byte $FF   ; 
- - - - - - 0x037627 0D:B617: FF        .byte $FF   ; 
- - - - - - 0x037628 0D:B618: FF        .byte $FF   ; 
- - - - - - 0x037629 0D:B619: FF        .byte $FF   ; 
- - - - - - 0x03762A 0D:B61A: FF        .byte $FF   ; 
- - - - - - 0x03762B 0D:B61B: FF        .byte $FF   ; 
- - - - - - 0x03762C 0D:B61C: FF        .byte $FF   ; 
- - - - - - 0x03762D 0D:B61D: FF        .byte $FF   ; 
- - - - - - 0x03762E 0D:B61E: FF        .byte $FF   ; 
- - - - - - 0x03762F 0D:B61F: FF        .byte $FF   ; 
- - - - - - 0x037630 0D:B620: FF        .byte $FF   ; 
- - - - - - 0x037631 0D:B621: FF        .byte $FF   ; 
- - - - - - 0x037632 0D:B622: FF        .byte $FF   ; 
- - - - - - 0x037633 0D:B623: FF        .byte $FF   ; 
- - - - - - 0x037634 0D:B624: FF        .byte $FF   ; 
- - - - - - 0x037635 0D:B625: FF        .byte $FF   ; 
- - - - - - 0x037636 0D:B626: FF        .byte $FF   ; 
- - - - - - 0x037637 0D:B627: FF        .byte $FF   ; 
- - - - - - 0x037638 0D:B628: FF        .byte $FF   ; 
- - - - - - 0x037639 0D:B629: FF        .byte $FF   ; 
- - - - - - 0x03763A 0D:B62A: FF        .byte $FF   ; 
- - - - - - 0x03763B 0D:B62B: FF        .byte $FF   ; 
- - - - - - 0x03763C 0D:B62C: FF        .byte $FF   ; 
- - - - - - 0x03763D 0D:B62D: FF        .byte $FF   ; 
- - - - - - 0x03763E 0D:B62E: FF        .byte $FF   ; 
- - - - - - 0x03763F 0D:B62F: FF        .byte $FF   ; 
- - - - - - 0x037640 0D:B630: FF        .byte $FF   ; 
- - - - - - 0x037641 0D:B631: FF        .byte $FF   ; 
- - - - - - 0x037642 0D:B632: FF        .byte $FF   ; 
- - - - - - 0x037643 0D:B633: FF        .byte $FF   ; 
- - - - - - 0x037644 0D:B634: FF        .byte $FF   ; 
- - - - - - 0x037645 0D:B635: FF        .byte $FF   ; 
- - - - - - 0x037646 0D:B636: FF        .byte $FF   ; 
- - - - - - 0x037647 0D:B637: FF        .byte $FF   ; 
- - - - - - 0x037648 0D:B638: FF        .byte $FF   ; 
- - - - - - 0x037649 0D:B639: FF        .byte $FF   ; 
- - - - - - 0x03764A 0D:B63A: FF        .byte $FF   ; 
- - - - - - 0x03764B 0D:B63B: FF        .byte $FF   ; 
- - - - - - 0x03764C 0D:B63C: FF        .byte $FF   ; 
- - - - - - 0x03764D 0D:B63D: FF        .byte $FF   ; 
- - - - - - 0x03764E 0D:B63E: FF        .byte $FF   ; 
- - - - - - 0x03764F 0D:B63F: FF        .byte $FF   ; 
- - - - - - 0x037650 0D:B640: FF        .byte $FF   ; 
- - - - - - 0x037651 0D:B641: FF        .byte $FF   ; 
- - - - - - 0x037652 0D:B642: FF        .byte $FF   ; 
- - - - - - 0x037653 0D:B643: FF        .byte $FF   ; 
- - - - - - 0x037654 0D:B644: FF        .byte $FF   ; 
- - - - - - 0x037655 0D:B645: FF        .byte $FF   ; 
- - - - - - 0x037656 0D:B646: FF        .byte $FF   ; 
- - - - - - 0x037657 0D:B647: FF        .byte $FF   ; 
- - - - - - 0x037658 0D:B648: FF        .byte $FF   ; 
- - - - - - 0x037659 0D:B649: FF        .byte $FF   ; 
- - - - - - 0x03765A 0D:B64A: FF        .byte $FF   ; 
- - - - - - 0x03765B 0D:B64B: FF        .byte $FF   ; 
- - - - - - 0x03765C 0D:B64C: FF        .byte $FF   ; 
- - - - - - 0x03765D 0D:B64D: FF        .byte $FF   ; 
- - - - - - 0x03765E 0D:B64E: FF        .byte $FF   ; 
- - - - - - 0x03765F 0D:B64F: FF        .byte $FF   ; 
- - - - - - 0x037660 0D:B650: FF        .byte $FF   ; 
- - - - - - 0x037661 0D:B651: FF        .byte $FF   ; 
- - - - - - 0x037662 0D:B652: FF        .byte $FF   ; 
- - - - - - 0x037663 0D:B653: FF        .byte $FF   ; 
- - - - - - 0x037664 0D:B654: FF        .byte $FF   ; 
- - - - - - 0x037665 0D:B655: FF        .byte $FF   ; 
- - - - - - 0x037666 0D:B656: FF        .byte $FF   ; 
- - - - - - 0x037667 0D:B657: FF        .byte $FF   ; 
- - - - - - 0x037668 0D:B658: FF        .byte $FF   ; 
- - - - - - 0x037669 0D:B659: FF        .byte $FF   ; 
- - - - - - 0x03766A 0D:B65A: FF        .byte $FF   ; 
- - - - - - 0x03766B 0D:B65B: FF        .byte $FF   ; 
- - - - - - 0x03766C 0D:B65C: FF        .byte $FF   ; 
- - - - - - 0x03766D 0D:B65D: FF        .byte $FF   ; 
- - - - - - 0x03766E 0D:B65E: FF        .byte $FF   ; 
- - - - - - 0x03766F 0D:B65F: FF        .byte $FF   ; 
- - - - - - 0x037670 0D:B660: FF        .byte $FF   ; 
- - - - - - 0x037671 0D:B661: FF        .byte $FF   ; 
- - - - - - 0x037672 0D:B662: FF        .byte $FF   ; 
- - - - - - 0x037673 0D:B663: FF        .byte $FF   ; 
- - - - - - 0x037674 0D:B664: FF        .byte $FF   ; 
- - - - - - 0x037675 0D:B665: FF        .byte $FF   ; 
- - - - - - 0x037676 0D:B666: FF        .byte $FF   ; 
- - - - - - 0x037677 0D:B667: FF        .byte $FF   ; 
- - - - - - 0x037678 0D:B668: FF        .byte $FF   ; 
- - - - - - 0x037679 0D:B669: FF        .byte $FF   ; 
- - - - - - 0x03767A 0D:B66A: FF        .byte $FF   ; 
- - - - - - 0x03767B 0D:B66B: FF        .byte $FF   ; 
- - - - - - 0x03767C 0D:B66C: FF        .byte $FF   ; 
- - - - - - 0x03767D 0D:B66D: FF        .byte $FF   ; 
- - - - - - 0x03767E 0D:B66E: FF        .byte $FF   ; 
- - - - - - 0x03767F 0D:B66F: FF        .byte $FF   ; 
- - - - - - 0x037680 0D:B670: FF        .byte $FF   ; 
- - - - - - 0x037681 0D:B671: FF        .byte $FF   ; 
- - - - - - 0x037682 0D:B672: FF        .byte $FF   ; 
- - - - - - 0x037683 0D:B673: FF        .byte $FF   ; 
- - - - - - 0x037684 0D:B674: FF        .byte $FF   ; 
- - - - - - 0x037685 0D:B675: FF        .byte $FF   ; 
- - - - - - 0x037686 0D:B676: FF        .byte $FF   ; 
- - - - - - 0x037687 0D:B677: FF        .byte $FF   ; 
- - - - - - 0x037688 0D:B678: FF        .byte $FF   ; 
- - - - - - 0x037689 0D:B679: FF        .byte $FF   ; 
- - - - - - 0x03768A 0D:B67A: FF        .byte $FF   ; 
- - - - - - 0x03768B 0D:B67B: FF        .byte $FF   ; 
- - - - - - 0x03768C 0D:B67C: FF        .byte $FF   ; 
- - - - - - 0x03768D 0D:B67D: FF        .byte $FF   ; 
- - - - - - 0x03768E 0D:B67E: FF        .byte $FF   ; 
- - - - - - 0x03768F 0D:B67F: FF        .byte $FF   ; 
- - - - - - 0x037690 0D:B680: FF        .byte $FF   ; 
- - - - - - 0x037691 0D:B681: FF        .byte $FF   ; 
- - - - - - 0x037692 0D:B682: FF        .byte $FF   ; 
- - - - - - 0x037693 0D:B683: FF        .byte $FF   ; 
- - - - - - 0x037694 0D:B684: FF        .byte $FF   ; 
- - - - - - 0x037695 0D:B685: FF        .byte $FF   ; 
- - - - - - 0x037696 0D:B686: FF        .byte $FF   ; 
- - - - - - 0x037697 0D:B687: FF        .byte $FF   ; 
- - - - - - 0x037698 0D:B688: FF        .byte $FF   ; 
- - - - - - 0x037699 0D:B689: FF        .byte $FF   ; 
- - - - - - 0x03769A 0D:B68A: FF        .byte $FF   ; 
- - - - - - 0x03769B 0D:B68B: FF        .byte $FF   ; 
- - - - - - 0x03769C 0D:B68C: FF        .byte $FF   ; 
- - - - - - 0x03769D 0D:B68D: FF        .byte $FF   ; 
- - - - - - 0x03769E 0D:B68E: FF        .byte $FF   ; 
- - - - - - 0x03769F 0D:B68F: FF        .byte $FF   ; 
- - - - - - 0x0376A0 0D:B690: FF        .byte $FF   ; 
- - - - - - 0x0376A1 0D:B691: FF        .byte $FF   ; 
- - - - - - 0x0376A2 0D:B692: FF        .byte $FF   ; 
- - - - - - 0x0376A3 0D:B693: FF        .byte $FF   ; 
- - - - - - 0x0376A4 0D:B694: FF        .byte $FF   ; 
- - - - - - 0x0376A5 0D:B695: FF        .byte $FF   ; 
- - - - - - 0x0376A6 0D:B696: FF        .byte $FF   ; 
- - - - - - 0x0376A7 0D:B697: FF        .byte $FF   ; 
- - - - - - 0x0376A8 0D:B698: FF        .byte $FF   ; 
- - - - - - 0x0376A9 0D:B699: FF        .byte $FF   ; 
- - - - - - 0x0376AA 0D:B69A: FF        .byte $FF   ; 
- - - - - - 0x0376AB 0D:B69B: FF        .byte $FF   ; 
- - - - - - 0x0376AC 0D:B69C: FF        .byte $FF   ; 
- - - - - - 0x0376AD 0D:B69D: FF        .byte $FF   ; 
- - - - - - 0x0376AE 0D:B69E: FF        .byte $FF   ; 
- - - - - - 0x0376AF 0D:B69F: FF        .byte $FF   ; 
- - - - - - 0x0376B0 0D:B6A0: FF        .byte $FF   ; 
- - - - - - 0x0376B1 0D:B6A1: FF        .byte $FF   ; 
- - - - - - 0x0376B2 0D:B6A2: FF        .byte $FF   ; 
- - - - - - 0x0376B3 0D:B6A3: FF        .byte $FF   ; 
- - - - - - 0x0376B4 0D:B6A4: FF        .byte $FF   ; 
- - - - - - 0x0376B5 0D:B6A5: FF        .byte $FF   ; 
- - - - - - 0x0376B6 0D:B6A6: FF        .byte $FF   ; 
- - - - - - 0x0376B7 0D:B6A7: FF        .byte $FF   ; 
- - - - - - 0x0376B8 0D:B6A8: FF        .byte $FF   ; 
- - - - - - 0x0376B9 0D:B6A9: FF        .byte $FF   ; 
- - - - - - 0x0376BA 0D:B6AA: FF        .byte $FF   ; 
- - - - - - 0x0376BB 0D:B6AB: FF        .byte $FF   ; 
- - - - - - 0x0376BC 0D:B6AC: FF        .byte $FF   ; 
- - - - - - 0x0376BD 0D:B6AD: FF        .byte $FF   ; 
- - - - - - 0x0376BE 0D:B6AE: FF        .byte $FF   ; 
- - - - - - 0x0376BF 0D:B6AF: FF        .byte $FF   ; 
- - - - - - 0x0376C0 0D:B6B0: FF        .byte $FF   ; 
- - - - - - 0x0376C1 0D:B6B1: FF        .byte $FF   ; 
- - - - - - 0x0376C2 0D:B6B2: FF        .byte $FF   ; 
- - - - - - 0x0376C3 0D:B6B3: FF        .byte $FF   ; 
- - - - - - 0x0376C4 0D:B6B4: FF        .byte $FF   ; 
- - - - - - 0x0376C5 0D:B6B5: FF        .byte $FF   ; 
- - - - - - 0x0376C6 0D:B6B6: FF        .byte $FF   ; 
- - - - - - 0x0376C7 0D:B6B7: FF        .byte $FF   ; 
- - - - - - 0x0376C8 0D:B6B8: FF        .byte $FF   ; 
- - - - - - 0x0376C9 0D:B6B9: FF        .byte $FF   ; 
- - - - - - 0x0376CA 0D:B6BA: FF        .byte $FF   ; 
- - - - - - 0x0376CB 0D:B6BB: FF        .byte $FF   ; 
- - - - - - 0x0376CC 0D:B6BC: FF        .byte $FF   ; 
- - - - - - 0x0376CD 0D:B6BD: FF        .byte $FF   ; 
- - - - - - 0x0376CE 0D:B6BE: FF        .byte $FF   ; 
- - - - - - 0x0376CF 0D:B6BF: FF        .byte $FF   ; 
- - - - - - 0x0376D0 0D:B6C0: FF        .byte $FF   ; 
- - - - - - 0x0376D1 0D:B6C1: FF        .byte $FF   ; 
- - - - - - 0x0376D2 0D:B6C2: FF        .byte $FF   ; 
- - - - - - 0x0376D3 0D:B6C3: FF        .byte $FF   ; 
- - - - - - 0x0376D4 0D:B6C4: FF        .byte $FF   ; 
- - - - - - 0x0376D5 0D:B6C5: FF        .byte $FF   ; 
- - - - - - 0x0376D6 0D:B6C6: FF        .byte $FF   ; 
- - - - - - 0x0376D7 0D:B6C7: FF        .byte $FF   ; 
- - - - - - 0x0376D8 0D:B6C8: FF        .byte $FF   ; 
- - - - - - 0x0376D9 0D:B6C9: FF        .byte $FF   ; 
- - - - - - 0x0376DA 0D:B6CA: FF        .byte $FF   ; 
- - - - - - 0x0376DB 0D:B6CB: FF        .byte $FF   ; 
- - - - - - 0x0376DC 0D:B6CC: FF        .byte $FF   ; 
- - - - - - 0x0376DD 0D:B6CD: FF        .byte $FF   ; 
- - - - - - 0x0376DE 0D:B6CE: FF        .byte $FF   ; 
- - - - - - 0x0376DF 0D:B6CF: FF        .byte $FF   ; 
- - - - - - 0x0376E0 0D:B6D0: FF        .byte $FF   ; 
- - - - - - 0x0376E1 0D:B6D1: FF        .byte $FF   ; 
- - - - - - 0x0376E2 0D:B6D2: FF        .byte $FF   ; 
- - - - - - 0x0376E3 0D:B6D3: FF        .byte $FF   ; 
- - - - - - 0x0376E4 0D:B6D4: FF        .byte $FF   ; 
- - - - - - 0x0376E5 0D:B6D5: FF        .byte $FF   ; 
- - - - - - 0x0376E6 0D:B6D6: FF        .byte $FF   ; 
- - - - - - 0x0376E7 0D:B6D7: FF        .byte $FF   ; 
- - - - - - 0x0376E8 0D:B6D8: FF        .byte $FF   ; 
- - - - - - 0x0376E9 0D:B6D9: FF        .byte $FF   ; 
- - - - - - 0x0376EA 0D:B6DA: FF        .byte $FF   ; 
- - - - - - 0x0376EB 0D:B6DB: FF        .byte $FF   ; 
- - - - - - 0x0376EC 0D:B6DC: FF        .byte $FF   ; 
- - - - - - 0x0376ED 0D:B6DD: FF        .byte $FF   ; 
- - - - - - 0x0376EE 0D:B6DE: FF        .byte $FF   ; 
- - - - - - 0x0376EF 0D:B6DF: FF        .byte $FF   ; 
- - - - - - 0x0376F0 0D:B6E0: FF        .byte $FF   ; 
- - - - - - 0x0376F1 0D:B6E1: FF        .byte $FF   ; 
- - - - - - 0x0376F2 0D:B6E2: FF        .byte $FF   ; 
- - - - - - 0x0376F3 0D:B6E3: FF        .byte $FF   ; 
- - - - - - 0x0376F4 0D:B6E4: FF        .byte $FF   ; 
- - - - - - 0x0376F5 0D:B6E5: FF        .byte $FF   ; 
- - - - - - 0x0376F6 0D:B6E6: FF        .byte $FF   ; 
- - - - - - 0x0376F7 0D:B6E7: FF        .byte $FF   ; 
- - - - - - 0x0376F8 0D:B6E8: FF        .byte $FF   ; 
- - - - - - 0x0376F9 0D:B6E9: FF        .byte $FF   ; 
- - - - - - 0x0376FA 0D:B6EA: FF        .byte $FF   ; 
- - - - - - 0x0376FB 0D:B6EB: FF        .byte $FF   ; 
- - - - - - 0x0376FC 0D:B6EC: FF        .byte $FF   ; 
- - - - - - 0x0376FD 0D:B6ED: FF        .byte $FF   ; 
- - - - - - 0x0376FE 0D:B6EE: FF        .byte $FF   ; 
- - - - - - 0x0376FF 0D:B6EF: FF        .byte $FF   ; 
- - - - - - 0x037700 0D:B6F0: FF        .byte $FF   ; 
- - - - - - 0x037701 0D:B6F1: FF        .byte $FF   ; 
- - - - - - 0x037702 0D:B6F2: FF        .byte $FF   ; 
- - - - - - 0x037703 0D:B6F3: FF        .byte $FF   ; 
- - - - - - 0x037704 0D:B6F4: FF        .byte $FF   ; 
- - - - - - 0x037705 0D:B6F5: FF        .byte $FF   ; 
- - - - - - 0x037706 0D:B6F6: FF        .byte $FF   ; 
- - - - - - 0x037707 0D:B6F7: FF        .byte $FF   ; 
- - - - - - 0x037708 0D:B6F8: FF        .byte $FF   ; 
- - - - - - 0x037709 0D:B6F9: FF        .byte $FF   ; 
- - - - - - 0x03770A 0D:B6FA: FF        .byte $FF   ; 
- - - - - - 0x03770B 0D:B6FB: FF        .byte $FF   ; 
- - - - - - 0x03770C 0D:B6FC: FF        .byte $FF   ; 
- - - - - - 0x03770D 0D:B6FD: FF        .byte $FF   ; 
- - - - - - 0x03770E 0D:B6FE: FF        .byte $FF   ; 
- - - - - - 0x03770F 0D:B6FF: FF        .byte $FF   ; 
- - - - - - 0x037710 0D:B700: FF        .byte $FF   ; 
- - - - - - 0x037711 0D:B701: FF        .byte $FF   ; 
- - - - - - 0x037712 0D:B702: FF        .byte $FF   ; 
- - - - - - 0x037713 0D:B703: FF        .byte $FF   ; 
- - - - - - 0x037714 0D:B704: FF        .byte $FF   ; 
- - - - - - 0x037715 0D:B705: FF        .byte $FF   ; 
- - - - - - 0x037716 0D:B706: FF        .byte $FF   ; 
- - - - - - 0x037717 0D:B707: FF        .byte $FF   ; 
- - - - - - 0x037718 0D:B708: FF        .byte $FF   ; 
- - - - - - 0x037719 0D:B709: FF        .byte $FF   ; 
- - - - - - 0x03771A 0D:B70A: FF        .byte $FF   ; 
- - - - - - 0x03771B 0D:B70B: FF        .byte $FF   ; 
- - - - - - 0x03771C 0D:B70C: FF        .byte $FF   ; 
- - - - - - 0x03771D 0D:B70D: FF        .byte $FF   ; 
- - - - - - 0x03771E 0D:B70E: FF        .byte $FF   ; 
- - - - - - 0x03771F 0D:B70F: FF        .byte $FF   ; 
- - - - - - 0x037720 0D:B710: FF        .byte $FF   ; 
- - - - - - 0x037721 0D:B711: FF        .byte $FF   ; 
- - - - - - 0x037722 0D:B712: FF        .byte $FF   ; 
- - - - - - 0x037723 0D:B713: FF        .byte $FF   ; 
- - - - - - 0x037724 0D:B714: FF        .byte $FF   ; 
- - - - - - 0x037725 0D:B715: FF        .byte $FF   ; 
- - - - - - 0x037726 0D:B716: FF        .byte $FF   ; 
- - - - - - 0x037727 0D:B717: FF        .byte $FF   ; 
- - - - - - 0x037728 0D:B718: FF        .byte $FF   ; 
- - - - - - 0x037729 0D:B719: FF        .byte $FF   ; 
- - - - - - 0x03772A 0D:B71A: FF        .byte $FF   ; 
- - - - - - 0x03772B 0D:B71B: FF        .byte $FF   ; 
- - - - - - 0x03772C 0D:B71C: FF        .byte $FF   ; 
- - - - - - 0x03772D 0D:B71D: FF        .byte $FF   ; 
- - - - - - 0x03772E 0D:B71E: FF        .byte $FF   ; 
- - - - - - 0x03772F 0D:B71F: FF        .byte $FF   ; 
- - - - - - 0x037730 0D:B720: FF        .byte $FF   ; 
- - - - - - 0x037731 0D:B721: FF        .byte $FF   ; 
- - - - - - 0x037732 0D:B722: FF        .byte $FF   ; 
- - - - - - 0x037733 0D:B723: FF        .byte $FF   ; 
- - - - - - 0x037734 0D:B724: FF        .byte $FF   ; 
- - - - - - 0x037735 0D:B725: FF        .byte $FF   ; 
- - - - - - 0x037736 0D:B726: FF        .byte $FF   ; 
- - - - - - 0x037737 0D:B727: FF        .byte $FF   ; 
- - - - - - 0x037738 0D:B728: FF        .byte $FF   ; 
- - - - - - 0x037739 0D:B729: FF        .byte $FF   ; 
- - - - - - 0x03773A 0D:B72A: FF        .byte $FF   ; 
- - - - - - 0x03773B 0D:B72B: FF        .byte $FF   ; 
- - - - - - 0x03773C 0D:B72C: FF        .byte $FF   ; 
- - - - - - 0x03773D 0D:B72D: FF        .byte $FF   ; 
- - - - - - 0x03773E 0D:B72E: FF        .byte $FF   ; 
- - - - - - 0x03773F 0D:B72F: FF        .byte $FF   ; 
- - - - - - 0x037740 0D:B730: FF        .byte $FF   ; 
- - - - - - 0x037741 0D:B731: FF        .byte $FF   ; 
- - - - - - 0x037742 0D:B732: FF        .byte $FF   ; 
- - - - - - 0x037743 0D:B733: FF        .byte $FF   ; 
- - - - - - 0x037744 0D:B734: FF        .byte $FF   ; 
- - - - - - 0x037745 0D:B735: FF        .byte $FF   ; 
- - - - - - 0x037746 0D:B736: FF        .byte $FF   ; 
- - - - - - 0x037747 0D:B737: FF        .byte $FF   ; 
- - - - - - 0x037748 0D:B738: FF        .byte $FF   ; 
- - - - - - 0x037749 0D:B739: FF        .byte $FF   ; 
- - - - - - 0x03774A 0D:B73A: FF        .byte $FF   ; 
- - - - - - 0x03774B 0D:B73B: FF        .byte $FF   ; 
- - - - - - 0x03774C 0D:B73C: FF        .byte $FF   ; 
- - - - - - 0x03774D 0D:B73D: FF        .byte $FF   ; 
- - - - - - 0x03774E 0D:B73E: FF        .byte $FF   ; 
- - - - - - 0x03774F 0D:B73F: FF        .byte $FF   ; 
- - - - - - 0x037750 0D:B740: FF        .byte $FF   ; 
- - - - - - 0x037751 0D:B741: FF        .byte $FF   ; 
- - - - - - 0x037752 0D:B742: FF        .byte $FF   ; 
- - - - - - 0x037753 0D:B743: FF        .byte $FF   ; 
- - - - - - 0x037754 0D:B744: FF        .byte $FF   ; 
- - - - - - 0x037755 0D:B745: FF        .byte $FF   ; 
- - - - - - 0x037756 0D:B746: FF        .byte $FF   ; 
- - - - - - 0x037757 0D:B747: FF        .byte $FF   ; 
- - - - - - 0x037758 0D:B748: FF        .byte $FF   ; 
- - - - - - 0x037759 0D:B749: FF        .byte $FF   ; 
- - - - - - 0x03775A 0D:B74A: FF        .byte $FF   ; 
- - - - - - 0x03775B 0D:B74B: FF        .byte $FF   ; 
- - - - - - 0x03775C 0D:B74C: FF        .byte $FF   ; 
- - - - - - 0x03775D 0D:B74D: FF        .byte $FF   ; 
- - - - - - 0x03775E 0D:B74E: FF        .byte $FF   ; 
- - - - - - 0x03775F 0D:B74F: FF        .byte $FF   ; 
- - - - - - 0x037760 0D:B750: FF        .byte $FF   ; 
- - - - - - 0x037761 0D:B751: FF        .byte $FF   ; 
- - - - - - 0x037762 0D:B752: FF        .byte $FF   ; 
- - - - - - 0x037763 0D:B753: FF        .byte $FF   ; 
- - - - - - 0x037764 0D:B754: FF        .byte $FF   ; 
- - - - - - 0x037765 0D:B755: FF        .byte $FF   ; 
- - - - - - 0x037766 0D:B756: FF        .byte $FF   ; 
- - - - - - 0x037767 0D:B757: FF        .byte $FF   ; 
- - - - - - 0x037768 0D:B758: FF        .byte $FF   ; 
- - - - - - 0x037769 0D:B759: FF        .byte $FF   ; 
- - - - - - 0x03776A 0D:B75A: FF        .byte $FF   ; 
- - - - - - 0x03776B 0D:B75B: FF        .byte $FF   ; 
- - - - - - 0x03776C 0D:B75C: FF        .byte $FF   ; 
- - - - - - 0x03776D 0D:B75D: FF        .byte $FF   ; 
- - - - - - 0x03776E 0D:B75E: FF        .byte $FF   ; 
- - - - - - 0x03776F 0D:B75F: FF        .byte $FF   ; 
- - - - - - 0x037770 0D:B760: FF        .byte $FF   ; 
- - - - - - 0x037771 0D:B761: FF        .byte $FF   ; 
- - - - - - 0x037772 0D:B762: FF        .byte $FF   ; 
- - - - - - 0x037773 0D:B763: FF        .byte $FF   ; 
- - - - - - 0x037774 0D:B764: FF        .byte $FF   ; 
- - - - - - 0x037775 0D:B765: FF        .byte $FF   ; 
- - - - - - 0x037776 0D:B766: FF        .byte $FF   ; 
- - - - - - 0x037777 0D:B767: FF        .byte $FF   ; 
- - - - - - 0x037778 0D:B768: FF        .byte $FF   ; 
- - - - - - 0x037779 0D:B769: FF        .byte $FF   ; 
- - - - - - 0x03777A 0D:B76A: FF        .byte $FF   ; 
- - - - - - 0x03777B 0D:B76B: FF        .byte $FF   ; 
- - - - - - 0x03777C 0D:B76C: FF        .byte $FF   ; 
- - - - - - 0x03777D 0D:B76D: FF        .byte $FF   ; 
- - - - - - 0x03777E 0D:B76E: FF        .byte $FF   ; 
- - - - - - 0x03777F 0D:B76F: FF        .byte $FF   ; 
- - - - - - 0x037780 0D:B770: FF        .byte $FF   ; 
- - - - - - 0x037781 0D:B771: FF        .byte $FF   ; 
- - - - - - 0x037782 0D:B772: FF        .byte $FF   ; 
- - - - - - 0x037783 0D:B773: FF        .byte $FF   ; 
- - - - - - 0x037784 0D:B774: FF        .byte $FF   ; 
- - - - - - 0x037785 0D:B775: FF        .byte $FF   ; 
- - - - - - 0x037786 0D:B776: FF        .byte $FF   ; 
- - - - - - 0x037787 0D:B777: FF        .byte $FF   ; 
- - - - - - 0x037788 0D:B778: FF        .byte $FF   ; 
- - - - - - 0x037789 0D:B779: FF        .byte $FF   ; 
- - - - - - 0x03778A 0D:B77A: FF        .byte $FF   ; 
- - - - - - 0x03778B 0D:B77B: FF        .byte $FF   ; 
- - - - - - 0x03778C 0D:B77C: FF        .byte $FF   ; 
- - - - - - 0x03778D 0D:B77D: FF        .byte $FF   ; 
- - - - - - 0x03778E 0D:B77E: FF        .byte $FF   ; 
- - - - - - 0x03778F 0D:B77F: FF        .byte $FF   ; 
- - - - - - 0x037790 0D:B780: FF        .byte $FF   ; 
- - - - - - 0x037791 0D:B781: FF        .byte $FF   ; 
- - - - - - 0x037792 0D:B782: FF        .byte $FF   ; 
- - - - - - 0x037793 0D:B783: FF        .byte $FF   ; 
- - - - - - 0x037794 0D:B784: FF        .byte $FF   ; 
- - - - - - 0x037795 0D:B785: FF        .byte $FF   ; 
- - - - - - 0x037796 0D:B786: FF        .byte $FF   ; 
- - - - - - 0x037797 0D:B787: FF        .byte $FF   ; 
- - - - - - 0x037798 0D:B788: FF        .byte $FF   ; 
- - - - - - 0x037799 0D:B789: FF        .byte $FF   ; 
- - - - - - 0x03779A 0D:B78A: FF        .byte $FF   ; 
- - - - - - 0x03779B 0D:B78B: FF        .byte $FF   ; 
- - - - - - 0x03779C 0D:B78C: FF        .byte $FF   ; 
- - - - - - 0x03779D 0D:B78D: FF        .byte $FF   ; 
- - - - - - 0x03779E 0D:B78E: FF        .byte $FF   ; 
- - - - - - 0x03779F 0D:B78F: FF        .byte $FF   ; 
- - - - - - 0x0377A0 0D:B790: FF        .byte $FF   ; 
- - - - - - 0x0377A1 0D:B791: FF        .byte $FF   ; 
- - - - - - 0x0377A2 0D:B792: FF        .byte $FF   ; 
- - - - - - 0x0377A3 0D:B793: FF        .byte $FF   ; 
- - - - - - 0x0377A4 0D:B794: FF        .byte $FF   ; 
- - - - - - 0x0377A5 0D:B795: FF        .byte $FF   ; 
- - - - - - 0x0377A6 0D:B796: FF        .byte $FF   ; 
- - - - - - 0x0377A7 0D:B797: FF        .byte $FF   ; 
- - - - - - 0x0377A8 0D:B798: FF        .byte $FF   ; 
- - - - - - 0x0377A9 0D:B799: FF        .byte $FF   ; 
- - - - - - 0x0377AA 0D:B79A: FF        .byte $FF   ; 
- - - - - - 0x0377AB 0D:B79B: FF        .byte $FF   ; 
- - - - - - 0x0377AC 0D:B79C: FF        .byte $FF   ; 
- - - - - - 0x0377AD 0D:B79D: FF        .byte $FF   ; 
- - - - - - 0x0377AE 0D:B79E: FF        .byte $FF   ; 
- - - - - - 0x0377AF 0D:B79F: FF        .byte $FF   ; 
- - - - - - 0x0377B0 0D:B7A0: FF        .byte $FF   ; 
- - - - - - 0x0377B1 0D:B7A1: FF        .byte $FF   ; 
- - - - - - 0x0377B2 0D:B7A2: FF        .byte $FF   ; 
- - - - - - 0x0377B3 0D:B7A3: FF        .byte $FF   ; 
- - - - - - 0x0377B4 0D:B7A4: FF        .byte $FF   ; 
- - - - - - 0x0377B5 0D:B7A5: FF        .byte $FF   ; 
- - - - - - 0x0377B6 0D:B7A6: FF        .byte $FF   ; 
- - - - - - 0x0377B7 0D:B7A7: FF        .byte $FF   ; 
- - - - - - 0x0377B8 0D:B7A8: FF        .byte $FF   ; 
- - - - - - 0x0377B9 0D:B7A9: FF        .byte $FF   ; 
- - - - - - 0x0377BA 0D:B7AA: FF        .byte $FF   ; 
- - - - - - 0x0377BB 0D:B7AB: FF        .byte $FF   ; 
- - - - - - 0x0377BC 0D:B7AC: FF        .byte $FF   ; 
- - - - - - 0x0377BD 0D:B7AD: FF        .byte $FF   ; 
- - - - - - 0x0377BE 0D:B7AE: FF        .byte $FF   ; 
- - - - - - 0x0377BF 0D:B7AF: FF        .byte $FF   ; 
- - - - - - 0x0377C0 0D:B7B0: FF        .byte $FF   ; 
- - - - - - 0x0377C1 0D:B7B1: FF        .byte $FF   ; 
- - - - - - 0x0377C2 0D:B7B2: FF        .byte $FF   ; 
- - - - - - 0x0377C3 0D:B7B3: FF        .byte $FF   ; 
- - - - - - 0x0377C4 0D:B7B4: FF        .byte $FF   ; 
- - - - - - 0x0377C5 0D:B7B5: FF        .byte $FF   ; 
- - - - - - 0x0377C6 0D:B7B6: FF        .byte $FF   ; 
- - - - - - 0x0377C7 0D:B7B7: FF        .byte $FF   ; 
- - - - - - 0x0377C8 0D:B7B8: FF        .byte $FF   ; 
- - - - - - 0x0377C9 0D:B7B9: FF        .byte $FF   ; 
- - - - - - 0x0377CA 0D:B7BA: FF        .byte $FF   ; 
- - - - - - 0x0377CB 0D:B7BB: FF        .byte $FF   ; 
- - - - - - 0x0377CC 0D:B7BC: FF        .byte $FF   ; 
- - - - - - 0x0377CD 0D:B7BD: FF        .byte $FF   ; 
- - - - - - 0x0377CE 0D:B7BE: FF        .byte $FF   ; 
- - - - - - 0x0377CF 0D:B7BF: FF        .byte $FF   ; 
- - - - - - 0x0377D0 0D:B7C0: FF        .byte $FF   ; 
- - - - - - 0x0377D1 0D:B7C1: FF        .byte $FF   ; 
- - - - - - 0x0377D2 0D:B7C2: FF        .byte $FF   ; 
- - - - - - 0x0377D3 0D:B7C3: FF        .byte $FF   ; 
- - - - - - 0x0377D4 0D:B7C4: FF        .byte $FF   ; 
- - - - - - 0x0377D5 0D:B7C5: FF        .byte $FF   ; 
- - - - - - 0x0377D6 0D:B7C6: FF        .byte $FF   ; 
- - - - - - 0x0377D7 0D:B7C7: FF        .byte $FF   ; 
- - - - - - 0x0377D8 0D:B7C8: FF        .byte $FF   ; 
- - - - - - 0x0377D9 0D:B7C9: FF        .byte $FF   ; 
- - - - - - 0x0377DA 0D:B7CA: FF        .byte $FF   ; 
- - - - - - 0x0377DB 0D:B7CB: FF        .byte $FF   ; 
- - - - - - 0x0377DC 0D:B7CC: FF        .byte $FF   ; 
- - - - - - 0x0377DD 0D:B7CD: FF        .byte $FF   ; 
- - - - - - 0x0377DE 0D:B7CE: FF        .byte $FF   ; 
- - - - - - 0x0377DF 0D:B7CF: FF        .byte $FF   ; 
- - - - - - 0x0377E0 0D:B7D0: FF        .byte $FF   ; 
- - - - - - 0x0377E1 0D:B7D1: FF        .byte $FF   ; 
- - - - - - 0x0377E2 0D:B7D2: FF        .byte $FF   ; 
- - - - - - 0x0377E3 0D:B7D3: FF        .byte $FF   ; 
- - - - - - 0x0377E4 0D:B7D4: FF        .byte $FF   ; 
- - - - - - 0x0377E5 0D:B7D5: FF        .byte $FF   ; 
- - - - - - 0x0377E6 0D:B7D6: FF        .byte $FF   ; 
- - - - - - 0x0377E7 0D:B7D7: FF        .byte $FF   ; 
- - - - - - 0x0377E8 0D:B7D8: FF        .byte $FF   ; 
- - - - - - 0x0377E9 0D:B7D9: FF        .byte $FF   ; 
- - - - - - 0x0377EA 0D:B7DA: FF        .byte $FF   ; 
- - - - - - 0x0377EB 0D:B7DB: FF        .byte $FF   ; 
- - - - - - 0x0377EC 0D:B7DC: FF        .byte $FF   ; 
- - - - - - 0x0377ED 0D:B7DD: FF        .byte $FF   ; 
- - - - - - 0x0377EE 0D:B7DE: FF        .byte $FF   ; 
- - - - - - 0x0377EF 0D:B7DF: FF        .byte $FF   ; 
- - - - - - 0x0377F0 0D:B7E0: FF        .byte $FF   ; 
- - - - - - 0x0377F1 0D:B7E1: FF        .byte $FF   ; 
- - - - - - 0x0377F2 0D:B7E2: FF        .byte $FF   ; 
- - - - - - 0x0377F3 0D:B7E3: FF        .byte $FF   ; 
- - - - - - 0x0377F4 0D:B7E4: FF        .byte $FF   ; 
- - - - - - 0x0377F5 0D:B7E5: FF        .byte $FF   ; 
- - - - - - 0x0377F6 0D:B7E6: FF        .byte $FF   ; 
- - - - - - 0x0377F7 0D:B7E7: FF        .byte $FF   ; 
- - - - - - 0x0377F8 0D:B7E8: FF        .byte $FF   ; 
- - - - - - 0x0377F9 0D:B7E9: FF        .byte $FF   ; 
- - - - - - 0x0377FA 0D:B7EA: FF        .byte $FF   ; 
- - - - - - 0x0377FB 0D:B7EB: FF        .byte $FF   ; 
- - - - - - 0x0377FC 0D:B7EC: FF        .byte $FF   ; 
- - - - - - 0x0377FD 0D:B7ED: FF        .byte $FF   ; 
- - - - - - 0x0377FE 0D:B7EE: FF        .byte $FF   ; 
- - - - - - 0x0377FF 0D:B7EF: FF        .byte $FF   ; 
- - - - - - 0x037800 0D:B7F0: FF        .byte $FF   ; 
- - - - - - 0x037801 0D:B7F1: FF        .byte $FF   ; 
- - - - - - 0x037802 0D:B7F2: FF        .byte $FF   ; 
- - - - - - 0x037803 0D:B7F3: FF        .byte $FF   ; 
- - - - - - 0x037804 0D:B7F4: FF        .byte $FF   ; 
- - - - - - 0x037805 0D:B7F5: FF        .byte $FF   ; 
- - - - - - 0x037806 0D:B7F6: FF        .byte $FF   ; 
- - - - - - 0x037807 0D:B7F7: FF        .byte $FF   ; 
- - - - - - 0x037808 0D:B7F8: FF        .byte $FF   ; 
- - - - - - 0x037809 0D:B7F9: FF        .byte $FF   ; 
- - - - - - 0x03780A 0D:B7FA: FF        .byte $FF   ; 
- - - - - - 0x03780B 0D:B7FB: FF        .byte $FF   ; 
- - - - - - 0x03780C 0D:B7FC: FF        .byte $FF   ; 
- - - - - - 0x03780D 0D:B7FD: FF        .byte $FF   ; 
- - - - - - 0x03780E 0D:B7FE: FF        .byte $FF   ; 
- - - - - - 0x03780F 0D:B7FF: FF        .byte $FF   ; 
- - - - - - 0x037810 0D:B800: FF        .byte $FF   ; 
- - - - - - 0x037811 0D:B801: FF        .byte $FF   ; 
- - - - - - 0x037812 0D:B802: FF        .byte $FF   ; 
- - - - - - 0x037813 0D:B803: FF        .byte $FF   ; 
- - - - - - 0x037814 0D:B804: FF        .byte $FF   ; 
- - - - - - 0x037815 0D:B805: FF        .byte $FF   ; 
- - - - - - 0x037816 0D:B806: FF        .byte $FF   ; 
- - - - - - 0x037817 0D:B807: FF        .byte $FF   ; 
- - - - - - 0x037818 0D:B808: FF        .byte $FF   ; 
- - - - - - 0x037819 0D:B809: FF        .byte $FF   ; 
- - - - - - 0x03781A 0D:B80A: FF        .byte $FF   ; 
- - - - - - 0x03781B 0D:B80B: FF        .byte $FF   ; 
- - - - - - 0x03781C 0D:B80C: FF        .byte $FF   ; 
- - - - - - 0x03781D 0D:B80D: FF        .byte $FF   ; 
- - - - - - 0x03781E 0D:B80E: FF        .byte $FF   ; 
- - - - - - 0x03781F 0D:B80F: FF        .byte $FF   ; 
- - - - - - 0x037820 0D:B810: FF        .byte $FF   ; 
- - - - - - 0x037821 0D:B811: FF        .byte $FF   ; 
- - - - - - 0x037822 0D:B812: FF        .byte $FF   ; 
- - - - - - 0x037823 0D:B813: FF        .byte $FF   ; 
- - - - - - 0x037824 0D:B814: FF        .byte $FF   ; 
- - - - - - 0x037825 0D:B815: FF        .byte $FF   ; 
- - - - - - 0x037826 0D:B816: FF        .byte $FF   ; 
- - - - - - 0x037827 0D:B817: FF        .byte $FF   ; 
- - - - - - 0x037828 0D:B818: FF        .byte $FF   ; 
- - - - - - 0x037829 0D:B819: FF        .byte $FF   ; 
- - - - - - 0x03782A 0D:B81A: FF        .byte $FF   ; 
- - - - - - 0x03782B 0D:B81B: FF        .byte $FF   ; 
- - - - - - 0x03782C 0D:B81C: FF        .byte $FF   ; 
- - - - - - 0x03782D 0D:B81D: FF        .byte $FF   ; 
- - - - - - 0x03782E 0D:B81E: FF        .byte $FF   ; 
- - - - - - 0x03782F 0D:B81F: FF        .byte $FF   ; 
- - - - - - 0x037830 0D:B820: FF        .byte $FF   ; 
- - - - - - 0x037831 0D:B821: FF        .byte $FF   ; 
- - - - - - 0x037832 0D:B822: FF        .byte $FF   ; 
- - - - - - 0x037833 0D:B823: FF        .byte $FF   ; 
- - - - - - 0x037834 0D:B824: FF        .byte $FF   ; 
- - - - - - 0x037835 0D:B825: FF        .byte $FF   ; 
- - - - - - 0x037836 0D:B826: FF        .byte $FF   ; 
- - - - - - 0x037837 0D:B827: FF        .byte $FF   ; 
- - - - - - 0x037838 0D:B828: FF        .byte $FF   ; 
- - - - - - 0x037839 0D:B829: FF        .byte $FF   ; 
- - - - - - 0x03783A 0D:B82A: FF        .byte $FF   ; 
- - - - - - 0x03783B 0D:B82B: FF        .byte $FF   ; 
- - - - - - 0x03783C 0D:B82C: FF        .byte $FF   ; 
- - - - - - 0x03783D 0D:B82D: FF        .byte $FF   ; 
- - - - - - 0x03783E 0D:B82E: FF        .byte $FF   ; 
- - - - - - 0x03783F 0D:B82F: FF        .byte $FF   ; 
- - - - - - 0x037840 0D:B830: FF        .byte $FF   ; 
- - - - - - 0x037841 0D:B831: FF        .byte $FF   ; 
- - - - - - 0x037842 0D:B832: FF        .byte $FF   ; 
- - - - - - 0x037843 0D:B833: FF        .byte $FF   ; 
- - - - - - 0x037844 0D:B834: FF        .byte $FF   ; 
- - - - - - 0x037845 0D:B835: FF        .byte $FF   ; 
- - - - - - 0x037846 0D:B836: FF        .byte $FF   ; 
- - - - - - 0x037847 0D:B837: FF        .byte $FF   ; 
- - - - - - 0x037848 0D:B838: FF        .byte $FF   ; 
- - - - - - 0x037849 0D:B839: FF        .byte $FF   ; 
- - - - - - 0x03784A 0D:B83A: FF        .byte $FF   ; 
- - - - - - 0x03784B 0D:B83B: FF        .byte $FF   ; 
- - - - - - 0x03784C 0D:B83C: FF        .byte $FF   ; 
- - - - - - 0x03784D 0D:B83D: FF        .byte $FF   ; 
- - - - - - 0x03784E 0D:B83E: FF        .byte $FF   ; 
- - - - - - 0x03784F 0D:B83F: FF        .byte $FF   ; 
- - - - - - 0x037850 0D:B840: FF        .byte $FF   ; 
- - - - - - 0x037851 0D:B841: FF        .byte $FF   ; 
- - - - - - 0x037852 0D:B842: FF        .byte $FF   ; 
- - - - - - 0x037853 0D:B843: FF        .byte $FF   ; 
- - - - - - 0x037854 0D:B844: FF        .byte $FF   ; 
- - - - - - 0x037855 0D:B845: FF        .byte $FF   ; 
- - - - - - 0x037856 0D:B846: FF        .byte $FF   ; 
- - - - - - 0x037857 0D:B847: FF        .byte $FF   ; 
- - - - - - 0x037858 0D:B848: FF        .byte $FF   ; 
- - - - - - 0x037859 0D:B849: FF        .byte $FF   ; 
- - - - - - 0x03785A 0D:B84A: FF        .byte $FF   ; 
- - - - - - 0x03785B 0D:B84B: FF        .byte $FF   ; 
- - - - - - 0x03785C 0D:B84C: FF        .byte $FF   ; 
- - - - - - 0x03785D 0D:B84D: FF        .byte $FF   ; 
- - - - - - 0x03785E 0D:B84E: FF        .byte $FF   ; 
- - - - - - 0x03785F 0D:B84F: FF        .byte $FF   ; 
- - - - - - 0x037860 0D:B850: FF        .byte $FF   ; 
- - - - - - 0x037861 0D:B851: FF        .byte $FF   ; 
- - - - - - 0x037862 0D:B852: FF        .byte $FF   ; 
- - - - - - 0x037863 0D:B853: FF        .byte $FF   ; 
- - - - - - 0x037864 0D:B854: FF        .byte $FF   ; 
- - - - - - 0x037865 0D:B855: FF        .byte $FF   ; 
- - - - - - 0x037866 0D:B856: FF        .byte $FF   ; 
- - - - - - 0x037867 0D:B857: FF        .byte $FF   ; 
- - - - - - 0x037868 0D:B858: FF        .byte $FF   ; 
- - - - - - 0x037869 0D:B859: FF        .byte $FF   ; 
- - - - - - 0x03786A 0D:B85A: FF        .byte $FF   ; 
- - - - - - 0x03786B 0D:B85B: FF        .byte $FF   ; 
- - - - - - 0x03786C 0D:B85C: FF        .byte $FF   ; 
- - - - - - 0x03786D 0D:B85D: FF        .byte $FF   ; 
- - - - - - 0x03786E 0D:B85E: FF        .byte $FF   ; 
- - - - - - 0x03786F 0D:B85F: FF        .byte $FF   ; 
- - - - - - 0x037870 0D:B860: FF        .byte $FF   ; 
- - - - - - 0x037871 0D:B861: FF        .byte $FF   ; 
- - - - - - 0x037872 0D:B862: FF        .byte $FF   ; 
- - - - - - 0x037873 0D:B863: FF        .byte $FF   ; 
- - - - - - 0x037874 0D:B864: FF        .byte $FF   ; 
- - - - - - 0x037875 0D:B865: FF        .byte $FF   ; 
- - - - - - 0x037876 0D:B866: FF        .byte $FF   ; 
- - - - - - 0x037877 0D:B867: FF        .byte $FF   ; 
- - - - - - 0x037878 0D:B868: FF        .byte $FF   ; 
- - - - - - 0x037879 0D:B869: FF        .byte $FF   ; 
- - - - - - 0x03787A 0D:B86A: FF        .byte $FF   ; 
- - - - - - 0x03787B 0D:B86B: FF        .byte $FF   ; 
- - - - - - 0x03787C 0D:B86C: FF        .byte $FF   ; 
- - - - - - 0x03787D 0D:B86D: FF        .byte $FF   ; 
- - - - - - 0x03787E 0D:B86E: FF        .byte $FF   ; 
- - - - - - 0x03787F 0D:B86F: FF        .byte $FF   ; 
- - - - - - 0x037880 0D:B870: FF        .byte $FF   ; 
- - - - - - 0x037881 0D:B871: FF        .byte $FF   ; 
- - - - - - 0x037882 0D:B872: FF        .byte $FF   ; 
- - - - - - 0x037883 0D:B873: FF        .byte $FF   ; 
- - - - - - 0x037884 0D:B874: FF        .byte $FF   ; 
- - - - - - 0x037885 0D:B875: FF        .byte $FF   ; 
- - - - - - 0x037886 0D:B876: FF        .byte $FF   ; 
- - - - - - 0x037887 0D:B877: FF        .byte $FF   ; 
- - - - - - 0x037888 0D:B878: FF        .byte $FF   ; 
- - - - - - 0x037889 0D:B879: FF        .byte $FF   ; 
- - - - - - 0x03788A 0D:B87A: FF        .byte $FF   ; 
- - - - - - 0x03788B 0D:B87B: FF        .byte $FF   ; 
- - - - - - 0x03788C 0D:B87C: FF        .byte $FF   ; 
- - - - - - 0x03788D 0D:B87D: FF        .byte $FF   ; 
- - - - - - 0x03788E 0D:B87E: FF        .byte $FF   ; 
- - - - - - 0x03788F 0D:B87F: FF        .byte $FF   ; 
- - - - - - 0x037890 0D:B880: FF        .byte $FF   ; 
- - - - - - 0x037891 0D:B881: FF        .byte $FF   ; 
- - - - - - 0x037892 0D:B882: FF        .byte $FF   ; 
- - - - - - 0x037893 0D:B883: FF        .byte $FF   ; 
- - - - - - 0x037894 0D:B884: FF        .byte $FF   ; 
- - - - - - 0x037895 0D:B885: FF        .byte $FF   ; 
- - - - - - 0x037896 0D:B886: FF        .byte $FF   ; 
- - - - - - 0x037897 0D:B887: FF        .byte $FF   ; 
- - - - - - 0x037898 0D:B888: FF        .byte $FF   ; 
- - - - - - 0x037899 0D:B889: FF        .byte $FF   ; 
- - - - - - 0x03789A 0D:B88A: FF        .byte $FF   ; 
- - - - - - 0x03789B 0D:B88B: FF        .byte $FF   ; 
- - - - - - 0x03789C 0D:B88C: FF        .byte $FF   ; 
- - - - - - 0x03789D 0D:B88D: FF        .byte $FF   ; 
- - - - - - 0x03789E 0D:B88E: FF        .byte $FF   ; 
- - - - - - 0x03789F 0D:B88F: FF        .byte $FF   ; 
- - - - - - 0x0378A0 0D:B890: FF        .byte $FF   ; 
- - - - - - 0x0378A1 0D:B891: FF        .byte $FF   ; 
- - - - - - 0x0378A2 0D:B892: FF        .byte $FF   ; 
- - - - - - 0x0378A3 0D:B893: FF        .byte $FF   ; 
- - - - - - 0x0378A4 0D:B894: FF        .byte $FF   ; 
- - - - - - 0x0378A5 0D:B895: FF        .byte $FF   ; 
- - - - - - 0x0378A6 0D:B896: FF        .byte $FF   ; 
- - - - - - 0x0378A7 0D:B897: FF        .byte $FF   ; 
- - - - - - 0x0378A8 0D:B898: FF        .byte $FF   ; 
- - - - - - 0x0378A9 0D:B899: FF        .byte $FF   ; 
- - - - - - 0x0378AA 0D:B89A: FF        .byte $FF   ; 
- - - - - - 0x0378AB 0D:B89B: FF        .byte $FF   ; 
- - - - - - 0x0378AC 0D:B89C: FF        .byte $FF   ; 
- - - - - - 0x0378AD 0D:B89D: FF        .byte $FF   ; 
- - - - - - 0x0378AE 0D:B89E: FF        .byte $FF   ; 
- - - - - - 0x0378AF 0D:B89F: FF        .byte $FF   ; 
- - - - - - 0x0378B0 0D:B8A0: FF        .byte $FF   ; 
- - - - - - 0x0378B1 0D:B8A1: FF        .byte $FF   ; 
- - - - - - 0x0378B2 0D:B8A2: FF        .byte $FF   ; 
- - - - - - 0x0378B3 0D:B8A3: FF        .byte $FF   ; 
- - - - - - 0x0378B4 0D:B8A4: FF        .byte $FF   ; 
- - - - - - 0x0378B5 0D:B8A5: FF        .byte $FF   ; 
- - - - - - 0x0378B6 0D:B8A6: FF        .byte $FF   ; 
- - - - - - 0x0378B7 0D:B8A7: FF        .byte $FF   ; 
- - - - - - 0x0378B8 0D:B8A8: FF        .byte $FF   ; 
- - - - - - 0x0378B9 0D:B8A9: FF        .byte $FF   ; 
- - - - - - 0x0378BA 0D:B8AA: FF        .byte $FF   ; 
- - - - - - 0x0378BB 0D:B8AB: FF        .byte $FF   ; 
- - - - - - 0x0378BC 0D:B8AC: FF        .byte $FF   ; 
- - - - - - 0x0378BD 0D:B8AD: FF        .byte $FF   ; 
- - - - - - 0x0378BE 0D:B8AE: FF        .byte $FF   ; 
- - - - - - 0x0378BF 0D:B8AF: FF        .byte $FF   ; 
- - - - - - 0x0378C0 0D:B8B0: FF        .byte $FF   ; 
- - - - - - 0x0378C1 0D:B8B1: FF        .byte $FF   ; 
- - - - - - 0x0378C2 0D:B8B2: FF        .byte $FF   ; 
- - - - - - 0x0378C3 0D:B8B3: FF        .byte $FF   ; 
- - - - - - 0x0378C4 0D:B8B4: FF        .byte $FF   ; 
- - - - - - 0x0378C5 0D:B8B5: FF        .byte $FF   ; 
- - - - - - 0x0378C6 0D:B8B6: FF        .byte $FF   ; 
- - - - - - 0x0378C7 0D:B8B7: FF        .byte $FF   ; 
- - - - - - 0x0378C8 0D:B8B8: FF        .byte $FF   ; 
- - - - - - 0x0378C9 0D:B8B9: FF        .byte $FF   ; 
- - - - - - 0x0378CA 0D:B8BA: FF        .byte $FF   ; 
- - - - - - 0x0378CB 0D:B8BB: FF        .byte $FF   ; 
- - - - - - 0x0378CC 0D:B8BC: FF        .byte $FF   ; 
- - - - - - 0x0378CD 0D:B8BD: FF        .byte $FF   ; 
- - - - - - 0x0378CE 0D:B8BE: FF        .byte $FF   ; 
- - - - - - 0x0378CF 0D:B8BF: FF        .byte $FF   ; 
- - - - - - 0x0378D0 0D:B8C0: FF        .byte $FF   ; 
- - - - - - 0x0378D1 0D:B8C1: FF        .byte $FF   ; 
- - - - - - 0x0378D2 0D:B8C2: FF        .byte $FF   ; 
- - - - - - 0x0378D3 0D:B8C3: FF        .byte $FF   ; 
- - - - - - 0x0378D4 0D:B8C4: FF        .byte $FF   ; 
- - - - - - 0x0378D5 0D:B8C5: FF        .byte $FF   ; 
- - - - - - 0x0378D6 0D:B8C6: FF        .byte $FF   ; 
- - - - - - 0x0378D7 0D:B8C7: FF        .byte $FF   ; 
- - - - - - 0x0378D8 0D:B8C8: FF        .byte $FF   ; 
- - - - - - 0x0378D9 0D:B8C9: FF        .byte $FF   ; 
- - - - - - 0x0378DA 0D:B8CA: FF        .byte $FF   ; 
- - - - - - 0x0378DB 0D:B8CB: FF        .byte $FF   ; 
- - - - - - 0x0378DC 0D:B8CC: FF        .byte $FF   ; 
- - - - - - 0x0378DD 0D:B8CD: FF        .byte $FF   ; 
- - - - - - 0x0378DE 0D:B8CE: FF        .byte $FF   ; 
- - - - - - 0x0378DF 0D:B8CF: FF        .byte $FF   ; 
- - - - - - 0x0378E0 0D:B8D0: FF        .byte $FF   ; 
- - - - - - 0x0378E1 0D:B8D1: FF        .byte $FF   ; 
- - - - - - 0x0378E2 0D:B8D2: FF        .byte $FF   ; 
- - - - - - 0x0378E3 0D:B8D3: FF        .byte $FF   ; 
- - - - - - 0x0378E4 0D:B8D4: FF        .byte $FF   ; 
- - - - - - 0x0378E5 0D:B8D5: FF        .byte $FF   ; 
- - - - - - 0x0378E6 0D:B8D6: FF        .byte $FF   ; 
- - - - - - 0x0378E7 0D:B8D7: FF        .byte $FF   ; 
- - - - - - 0x0378E8 0D:B8D8: FF        .byte $FF   ; 
- - - - - - 0x0378E9 0D:B8D9: FF        .byte $FF   ; 
- - - - - - 0x0378EA 0D:B8DA: FF        .byte $FF   ; 
- - - - - - 0x0378EB 0D:B8DB: FF        .byte $FF   ; 
- - - - - - 0x0378EC 0D:B8DC: FF        .byte $FF   ; 
- - - - - - 0x0378ED 0D:B8DD: FF        .byte $FF   ; 
- - - - - - 0x0378EE 0D:B8DE: FF        .byte $FF   ; 
- - - - - - 0x0378EF 0D:B8DF: FF        .byte $FF   ; 
- - - - - - 0x0378F0 0D:B8E0: FF        .byte $FF   ; 
- - - - - - 0x0378F1 0D:B8E1: FF        .byte $FF   ; 
- - - - - - 0x0378F2 0D:B8E2: FF        .byte $FF   ; 
- - - - - - 0x0378F3 0D:B8E3: FF        .byte $FF   ; 
- - - - - - 0x0378F4 0D:B8E4: FF        .byte $FF   ; 
- - - - - - 0x0378F5 0D:B8E5: FF        .byte $FF   ; 
- - - - - - 0x0378F6 0D:B8E6: FF        .byte $FF   ; 
- - - - - - 0x0378F7 0D:B8E7: FF        .byte $FF   ; 
- - - - - - 0x0378F8 0D:B8E8: FF        .byte $FF   ; 
- - - - - - 0x0378F9 0D:B8E9: FF        .byte $FF   ; 
- - - - - - 0x0378FA 0D:B8EA: FF        .byte $FF   ; 
- - - - - - 0x0378FB 0D:B8EB: FF        .byte $FF   ; 
- - - - - - 0x0378FC 0D:B8EC: FF        .byte $FF   ; 
- - - - - - 0x0378FD 0D:B8ED: FF        .byte $FF   ; 
- - - - - - 0x0378FE 0D:B8EE: FF        .byte $FF   ; 
- - - - - - 0x0378FF 0D:B8EF: FF        .byte $FF   ; 
- - - - - - 0x037900 0D:B8F0: FF        .byte $FF   ; 
- - - - - - 0x037901 0D:B8F1: FF        .byte $FF   ; 
- - - - - - 0x037902 0D:B8F2: FF        .byte $FF   ; 
- - - - - - 0x037903 0D:B8F3: FF        .byte $FF   ; 
- - - - - - 0x037904 0D:B8F4: FF        .byte $FF   ; 
- - - - - - 0x037905 0D:B8F5: FF        .byte $FF   ; 
- - - - - - 0x037906 0D:B8F6: FF        .byte $FF   ; 
- - - - - - 0x037907 0D:B8F7: FF        .byte $FF   ; 
- - - - - - 0x037908 0D:B8F8: FF        .byte $FF   ; 
- - - - - - 0x037909 0D:B8F9: FF        .byte $FF   ; 
- - - - - - 0x03790A 0D:B8FA: FF        .byte $FF   ; 
- - - - - - 0x03790B 0D:B8FB: FF        .byte $FF   ; 
- - - - - - 0x03790C 0D:B8FC: FF        .byte $FF   ; 
- - - - - - 0x03790D 0D:B8FD: FF        .byte $FF   ; 
- - - - - - 0x03790E 0D:B8FE: FF        .byte $FF   ; 
- - - - - - 0x03790F 0D:B8FF: FF        .byte $FF   ; 
- - - - - - 0x037910 0D:B900: FF        .byte $FF   ; 
- - - - - - 0x037911 0D:B901: FF        .byte $FF   ; 
- - - - - - 0x037912 0D:B902: FF        .byte $FF   ; 
- - - - - - 0x037913 0D:B903: FF        .byte $FF   ; 
- - - - - - 0x037914 0D:B904: FF        .byte $FF   ; 
- - - - - - 0x037915 0D:B905: FF        .byte $FF   ; 
- - - - - - 0x037916 0D:B906: FF        .byte $FF   ; 
- - - - - - 0x037917 0D:B907: FF        .byte $FF   ; 
- - - - - - 0x037918 0D:B908: FF        .byte $FF   ; 
- - - - - - 0x037919 0D:B909: FF        .byte $FF   ; 
- - - - - - 0x03791A 0D:B90A: FF        .byte $FF   ; 
- - - - - - 0x03791B 0D:B90B: FF        .byte $FF   ; 
- - - - - - 0x03791C 0D:B90C: FF        .byte $FF   ; 
- - - - - - 0x03791D 0D:B90D: FF        .byte $FF   ; 
- - - - - - 0x03791E 0D:B90E: FF        .byte $FF   ; 
- - - - - - 0x03791F 0D:B90F: FF        .byte $FF   ; 
- - - - - - 0x037920 0D:B910: FF        .byte $FF   ; 
- - - - - - 0x037921 0D:B911: FF        .byte $FF   ; 
- - - - - - 0x037922 0D:B912: FF        .byte $FF   ; 
- - - - - - 0x037923 0D:B913: FF        .byte $FF   ; 
- - - - - - 0x037924 0D:B914: FF        .byte $FF   ; 
- - - - - - 0x037925 0D:B915: FF        .byte $FF   ; 
- - - - - - 0x037926 0D:B916: FF        .byte $FF   ; 
- - - - - - 0x037927 0D:B917: FF        .byte $FF   ; 
- - - - - - 0x037928 0D:B918: FF        .byte $FF   ; 
- - - - - - 0x037929 0D:B919: FF        .byte $FF   ; 
- - - - - - 0x03792A 0D:B91A: FF        .byte $FF   ; 
- - - - - - 0x03792B 0D:B91B: FF        .byte $FF   ; 
- - - - - - 0x03792C 0D:B91C: FF        .byte $FF   ; 
- - - - - - 0x03792D 0D:B91D: FF        .byte $FF   ; 
- - - - - - 0x03792E 0D:B91E: FF        .byte $FF   ; 
- - - - - - 0x03792F 0D:B91F: FF        .byte $FF   ; 
- - - - - - 0x037930 0D:B920: FF        .byte $FF   ; 
- - - - - - 0x037931 0D:B921: FF        .byte $FF   ; 
- - - - - - 0x037932 0D:B922: FF        .byte $FF   ; 
- - - - - - 0x037933 0D:B923: FF        .byte $FF   ; 
- - - - - - 0x037934 0D:B924: FF        .byte $FF   ; 
- - - - - - 0x037935 0D:B925: FF        .byte $FF   ; 
- - - - - - 0x037936 0D:B926: FF        .byte $FF   ; 
- - - - - - 0x037937 0D:B927: FF        .byte $FF   ; 
- - - - - - 0x037938 0D:B928: FF        .byte $FF   ; 
- - - - - - 0x037939 0D:B929: FF        .byte $FF   ; 
- - - - - - 0x03793A 0D:B92A: FF        .byte $FF   ; 
- - - - - - 0x03793B 0D:B92B: FF        .byte $FF   ; 
- - - - - - 0x03793C 0D:B92C: FF        .byte $FF   ; 
- - - - - - 0x03793D 0D:B92D: FF        .byte $FF   ; 
- - - - - - 0x03793E 0D:B92E: FF        .byte $FF   ; 
- - - - - - 0x03793F 0D:B92F: FF        .byte $FF   ; 
- - - - - - 0x037940 0D:B930: FF        .byte $FF   ; 
- - - - - - 0x037941 0D:B931: FF        .byte $FF   ; 
- - - - - - 0x037942 0D:B932: FF        .byte $FF   ; 
- - - - - - 0x037943 0D:B933: FF        .byte $FF   ; 
- - - - - - 0x037944 0D:B934: FF        .byte $FF   ; 
- - - - - - 0x037945 0D:B935: FF        .byte $FF   ; 
- - - - - - 0x037946 0D:B936: FF        .byte $FF   ; 
- - - - - - 0x037947 0D:B937: FF        .byte $FF   ; 
- - - - - - 0x037948 0D:B938: FF        .byte $FF   ; 
- - - - - - 0x037949 0D:B939: FF        .byte $FF   ; 
- - - - - - 0x03794A 0D:B93A: FF        .byte $FF   ; 
- - - - - - 0x03794B 0D:B93B: FF        .byte $FF   ; 
- - - - - - 0x03794C 0D:B93C: FF        .byte $FF   ; 
- - - - - - 0x03794D 0D:B93D: FF        .byte $FF   ; 
- - - - - - 0x03794E 0D:B93E: FF        .byte $FF   ; 
- - - - - - 0x03794F 0D:B93F: FF        .byte $FF   ; 
- - - - - - 0x037950 0D:B940: FF        .byte $FF   ; 
- - - - - - 0x037951 0D:B941: FF        .byte $FF   ; 
- - - - - - 0x037952 0D:B942: FF        .byte $FF   ; 
- - - - - - 0x037953 0D:B943: FF        .byte $FF   ; 
- - - - - - 0x037954 0D:B944: FF        .byte $FF   ; 
- - - - - - 0x037955 0D:B945: FF        .byte $FF   ; 
- - - - - - 0x037956 0D:B946: FF        .byte $FF   ; 
- - - - - - 0x037957 0D:B947: FF        .byte $FF   ; 
- - - - - - 0x037958 0D:B948: FF        .byte $FF   ; 
- - - - - - 0x037959 0D:B949: FF        .byte $FF   ; 
- - - - - - 0x03795A 0D:B94A: FF        .byte $FF   ; 
- - - - - - 0x03795B 0D:B94B: FF        .byte $FF   ; 
- - - - - - 0x03795C 0D:B94C: FF        .byte $FF   ; 
- - - - - - 0x03795D 0D:B94D: FF        .byte $FF   ; 
- - - - - - 0x03795E 0D:B94E: FF        .byte $FF   ; 
- - - - - - 0x03795F 0D:B94F: FF        .byte $FF   ; 
- - - - - - 0x037960 0D:B950: FF        .byte $FF   ; 
- - - - - - 0x037961 0D:B951: FF        .byte $FF   ; 
- - - - - - 0x037962 0D:B952: FF        .byte $FF   ; 
- - - - - - 0x037963 0D:B953: FF        .byte $FF   ; 
- - - - - - 0x037964 0D:B954: FF        .byte $FF   ; 
- - - - - - 0x037965 0D:B955: FF        .byte $FF   ; 
- - - - - - 0x037966 0D:B956: FF        .byte $FF   ; 
- - - - - - 0x037967 0D:B957: FF        .byte $FF   ; 
- - - - - - 0x037968 0D:B958: FF        .byte $FF   ; 
- - - - - - 0x037969 0D:B959: FF        .byte $FF   ; 
- - - - - - 0x03796A 0D:B95A: FF        .byte $FF   ; 
- - - - - - 0x03796B 0D:B95B: FF        .byte $FF   ; 
- - - - - - 0x03796C 0D:B95C: FF        .byte $FF   ; 
- - - - - - 0x03796D 0D:B95D: FF        .byte $FF   ; 
- - - - - - 0x03796E 0D:B95E: FF        .byte $FF   ; 
- - - - - - 0x03796F 0D:B95F: FF        .byte $FF   ; 
- - - - - - 0x037970 0D:B960: FF        .byte $FF   ; 
- - - - - - 0x037971 0D:B961: FF        .byte $FF   ; 
- - - - - - 0x037972 0D:B962: FF        .byte $FF   ; 
- - - - - - 0x037973 0D:B963: FF        .byte $FF   ; 
- - - - - - 0x037974 0D:B964: FF        .byte $FF   ; 
- - - - - - 0x037975 0D:B965: FF        .byte $FF   ; 
- - - - - - 0x037976 0D:B966: FF        .byte $FF   ; 
- - - - - - 0x037977 0D:B967: FF        .byte $FF   ; 
- - - - - - 0x037978 0D:B968: FF        .byte $FF   ; 
- - - - - - 0x037979 0D:B969: FF        .byte $FF   ; 
- - - - - - 0x03797A 0D:B96A: FF        .byte $FF   ; 
- - - - - - 0x03797B 0D:B96B: FF        .byte $FF   ; 
- - - - - - 0x03797C 0D:B96C: FF        .byte $FF   ; 
- - - - - - 0x03797D 0D:B96D: FF        .byte $FF   ; 
- - - - - - 0x03797E 0D:B96E: FF        .byte $FF   ; 
- - - - - - 0x03797F 0D:B96F: FF        .byte $FF   ; 
- - - - - - 0x037980 0D:B970: FF        .byte $FF   ; 
- - - - - - 0x037981 0D:B971: FF        .byte $FF   ; 
- - - - - - 0x037982 0D:B972: FF        .byte $FF   ; 
- - - - - - 0x037983 0D:B973: FF        .byte $FF   ; 
- - - - - - 0x037984 0D:B974: FF        .byte $FF   ; 
- - - - - - 0x037985 0D:B975: FF        .byte $FF   ; 
- - - - - - 0x037986 0D:B976: FF        .byte $FF   ; 
- - - - - - 0x037987 0D:B977: FF        .byte $FF   ; 
- - - - - - 0x037988 0D:B978: FF        .byte $FF   ; 
- - - - - - 0x037989 0D:B979: FF        .byte $FF   ; 
- - - - - - 0x03798A 0D:B97A: FF        .byte $FF   ; 
- - - - - - 0x03798B 0D:B97B: FF        .byte $FF   ; 
- - - - - - 0x03798C 0D:B97C: FF        .byte $FF   ; 
- - - - - - 0x03798D 0D:B97D: FF        .byte $FF   ; 
- - - - - - 0x03798E 0D:B97E: FF        .byte $FF   ; 
- - - - - - 0x03798F 0D:B97F: FF        .byte $FF   ; 
- - - - - - 0x037990 0D:B980: FF        .byte $FF   ; 
- - - - - - 0x037991 0D:B981: FF        .byte $FF   ; 
- - - - - - 0x037992 0D:B982: FF        .byte $FF   ; 
- - - - - - 0x037993 0D:B983: FF        .byte $FF   ; 
- - - - - - 0x037994 0D:B984: FF        .byte $FF   ; 
- - - - - - 0x037995 0D:B985: FF        .byte $FF   ; 
- - - - - - 0x037996 0D:B986: FF        .byte $FF   ; 
- - - - - - 0x037997 0D:B987: FF        .byte $FF   ; 
- - - - - - 0x037998 0D:B988: FF        .byte $FF   ; 
- - - - - - 0x037999 0D:B989: FF        .byte $FF   ; 
- - - - - - 0x03799A 0D:B98A: FF        .byte $FF   ; 
- - - - - - 0x03799B 0D:B98B: FF        .byte $FF   ; 
- - - - - - 0x03799C 0D:B98C: FF        .byte $FF   ; 
- - - - - - 0x03799D 0D:B98D: FF        .byte $FF   ; 
- - - - - - 0x03799E 0D:B98E: FF        .byte $FF   ; 
- - - - - - 0x03799F 0D:B98F: FF        .byte $FF   ; 
- - - - - - 0x0379A0 0D:B990: FF        .byte $FF   ; 
- - - - - - 0x0379A1 0D:B991: FF        .byte $FF   ; 
- - - - - - 0x0379A2 0D:B992: FF        .byte $FF   ; 
- - - - - - 0x0379A3 0D:B993: FF        .byte $FF   ; 
- - - - - - 0x0379A4 0D:B994: FF        .byte $FF   ; 
- - - - - - 0x0379A5 0D:B995: FF        .byte $FF   ; 
- - - - - - 0x0379A6 0D:B996: FF        .byte $FF   ; 
- - - - - - 0x0379A7 0D:B997: FF        .byte $FF   ; 
- - - - - - 0x0379A8 0D:B998: FF        .byte $FF   ; 
- - - - - - 0x0379A9 0D:B999: FF        .byte $FF   ; 
- - - - - - 0x0379AA 0D:B99A: FF        .byte $FF   ; 
- - - - - - 0x0379AB 0D:B99B: FF        .byte $FF   ; 
- - - - - - 0x0379AC 0D:B99C: FF        .byte $FF   ; 
- - - - - - 0x0379AD 0D:B99D: FF        .byte $FF   ; 
- - - - - - 0x0379AE 0D:B99E: FF        .byte $FF   ; 
- - - - - - 0x0379AF 0D:B99F: FF        .byte $FF   ; 
- - - - - - 0x0379B0 0D:B9A0: FF        .byte $FF   ; 
- - - - - - 0x0379B1 0D:B9A1: FF        .byte $FF   ; 
- - - - - - 0x0379B2 0D:B9A2: FF        .byte $FF   ; 
- - - - - - 0x0379B3 0D:B9A3: FF        .byte $FF   ; 
- - - - - - 0x0379B4 0D:B9A4: FF        .byte $FF   ; 
- - - - - - 0x0379B5 0D:B9A5: FF        .byte $FF   ; 
- - - - - - 0x0379B6 0D:B9A6: FF        .byte $FF   ; 
- - - - - - 0x0379B7 0D:B9A7: FF        .byte $FF   ; 
- - - - - - 0x0379B8 0D:B9A8: FF        .byte $FF   ; 
- - - - - - 0x0379B9 0D:B9A9: FF        .byte $FF   ; 
- - - - - - 0x0379BA 0D:B9AA: FF        .byte $FF   ; 
- - - - - - 0x0379BB 0D:B9AB: FF        .byte $FF   ; 
- - - - - - 0x0379BC 0D:B9AC: FF        .byte $FF   ; 
- - - - - - 0x0379BD 0D:B9AD: FF        .byte $FF   ; 
- - - - - - 0x0379BE 0D:B9AE: FF        .byte $FF   ; 
- - - - - - 0x0379BF 0D:B9AF: FF        .byte $FF   ; 
- - - - - - 0x0379C0 0D:B9B0: FF        .byte $FF   ; 
- - - - - - 0x0379C1 0D:B9B1: FF        .byte $FF   ; 
- - - - - - 0x0379C2 0D:B9B2: FF        .byte $FF   ; 
- - - - - - 0x0379C3 0D:B9B3: FF        .byte $FF   ; 
- - - - - - 0x0379C4 0D:B9B4: FF        .byte $FF   ; 
- - - - - - 0x0379C5 0D:B9B5: FF        .byte $FF   ; 
- - - - - - 0x0379C6 0D:B9B6: FF        .byte $FF   ; 
- - - - - - 0x0379C7 0D:B9B7: FF        .byte $FF   ; 
- - - - - - 0x0379C8 0D:B9B8: FF        .byte $FF   ; 
- - - - - - 0x0379C9 0D:B9B9: FF        .byte $FF   ; 
- - - - - - 0x0379CA 0D:B9BA: FF        .byte $FF   ; 
- - - - - - 0x0379CB 0D:B9BB: FF        .byte $FF   ; 
- - - - - - 0x0379CC 0D:B9BC: FF        .byte $FF   ; 
- - - - - - 0x0379CD 0D:B9BD: FF        .byte $FF   ; 
- - - - - - 0x0379CE 0D:B9BE: FF        .byte $FF   ; 
- - - - - - 0x0379CF 0D:B9BF: FF        .byte $FF   ; 
- - - - - - 0x0379D0 0D:B9C0: FF        .byte $FF   ; 
- - - - - - 0x0379D1 0D:B9C1: FF        .byte $FF   ; 
- - - - - - 0x0379D2 0D:B9C2: FF        .byte $FF   ; 
- - - - - - 0x0379D3 0D:B9C3: FF        .byte $FF   ; 
- - - - - - 0x0379D4 0D:B9C4: FF        .byte $FF   ; 
- - - - - - 0x0379D5 0D:B9C5: FF        .byte $FF   ; 
- - - - - - 0x0379D6 0D:B9C6: FF        .byte $FF   ; 
- - - - - - 0x0379D7 0D:B9C7: FF        .byte $FF   ; 
- - - - - - 0x0379D8 0D:B9C8: FF        .byte $FF   ; 
- - - - - - 0x0379D9 0D:B9C9: FF        .byte $FF   ; 
- - - - - - 0x0379DA 0D:B9CA: FF        .byte $FF   ; 
- - - - - - 0x0379DB 0D:B9CB: FF        .byte $FF   ; 
- - - - - - 0x0379DC 0D:B9CC: FF        .byte $FF   ; 
- - - - - - 0x0379DD 0D:B9CD: FF        .byte $FF   ; 
- - - - - - 0x0379DE 0D:B9CE: FF        .byte $FF   ; 
- - - - - - 0x0379DF 0D:B9CF: FF        .byte $FF   ; 
- - - - - - 0x0379E0 0D:B9D0: FF        .byte $FF   ; 
- - - - - - 0x0379E1 0D:B9D1: FF        .byte $FF   ; 
- - - - - - 0x0379E2 0D:B9D2: FF        .byte $FF   ; 
- - - - - - 0x0379E3 0D:B9D3: FF        .byte $FF   ; 
- - - - - - 0x0379E4 0D:B9D4: FF        .byte $FF   ; 
- - - - - - 0x0379E5 0D:B9D5: FF        .byte $FF   ; 
- - - - - - 0x0379E6 0D:B9D6: FF        .byte $FF   ; 
- - - - - - 0x0379E7 0D:B9D7: FF        .byte $FF   ; 
- - - - - - 0x0379E8 0D:B9D8: FF        .byte $FF   ; 
- - - - - - 0x0379E9 0D:B9D9: FF        .byte $FF   ; 
- - - - - - 0x0379EA 0D:B9DA: FF        .byte $FF   ; 
- - - - - - 0x0379EB 0D:B9DB: FF        .byte $FF   ; 
- - - - - - 0x0379EC 0D:B9DC: FF        .byte $FF   ; 
- - - - - - 0x0379ED 0D:B9DD: FF        .byte $FF   ; 
- - - - - - 0x0379EE 0D:B9DE: FF        .byte $FF   ; 
- - - - - - 0x0379EF 0D:B9DF: FF        .byte $FF   ; 
- - - - - - 0x0379F0 0D:B9E0: FF        .byte $FF   ; 
- - - - - - 0x0379F1 0D:B9E1: FF        .byte $FF   ; 
- - - - - - 0x0379F2 0D:B9E2: FF        .byte $FF   ; 
- - - - - - 0x0379F3 0D:B9E3: FF        .byte $FF   ; 
- - - - - - 0x0379F4 0D:B9E4: FF        .byte $FF   ; 
- - - - - - 0x0379F5 0D:B9E5: FF        .byte $FF   ; 
- - - - - - 0x0379F6 0D:B9E6: FF        .byte $FF   ; 
- - - - - - 0x0379F7 0D:B9E7: FF        .byte $FF   ; 
- - - - - - 0x0379F8 0D:B9E8: FF        .byte $FF   ; 
- - - - - - 0x0379F9 0D:B9E9: FF        .byte $FF   ; 
- - - - - - 0x0379FA 0D:B9EA: FF        .byte $FF   ; 
- - - - - - 0x0379FB 0D:B9EB: FF        .byte $FF   ; 
- - - - - - 0x0379FC 0D:B9EC: FF        .byte $FF   ; 
- - - - - - 0x0379FD 0D:B9ED: FF        .byte $FF   ; 
- - - - - - 0x0379FE 0D:B9EE: FF        .byte $FF   ; 
- - - - - - 0x0379FF 0D:B9EF: FF        .byte $FF   ; 
- - - - - - 0x037A00 0D:B9F0: FF        .byte $FF   ; 
- - - - - - 0x037A01 0D:B9F1: FF        .byte $FF   ; 
- - - - - - 0x037A02 0D:B9F2: FF        .byte $FF   ; 
- - - - - - 0x037A03 0D:B9F3: FF        .byte $FF   ; 
- - - - - - 0x037A04 0D:B9F4: FF        .byte $FF   ; 
- - - - - - 0x037A05 0D:B9F5: FF        .byte $FF   ; 
- - - - - - 0x037A06 0D:B9F6: FF        .byte $FF   ; 
- - - - - - 0x037A07 0D:B9F7: FF        .byte $FF   ; 
- - - - - - 0x037A08 0D:B9F8: FF        .byte $FF   ; 
- - - - - - 0x037A09 0D:B9F9: FF        .byte $FF   ; 
- - - - - - 0x037A0A 0D:B9FA: FF        .byte $FF   ; 
- - - - - - 0x037A0B 0D:B9FB: FF        .byte $FF   ; 
- - - - - - 0x037A0C 0D:B9FC: FF        .byte $FF   ; 
- - - - - - 0x037A0D 0D:B9FD: FF        .byte $FF   ; 
- - - - - - 0x037A0E 0D:B9FE: FF        .byte $FF   ; 
- - - - - - 0x037A0F 0D:B9FF: FF        .byte $FF   ; 
- - - - - - 0x037A10 0D:BA00: FF        .byte $FF   ; 
- - - - - - 0x037A11 0D:BA01: FF        .byte $FF   ; 
- - - - - - 0x037A12 0D:BA02: FF        .byte $FF   ; 
- - - - - - 0x037A13 0D:BA03: FF        .byte $FF   ; 
- - - - - - 0x037A14 0D:BA04: FF        .byte $FF   ; 
- - - - - - 0x037A15 0D:BA05: FF        .byte $FF   ; 
- - - - - - 0x037A16 0D:BA06: FF        .byte $FF   ; 
- - - - - - 0x037A17 0D:BA07: FF        .byte $FF   ; 
- - - - - - 0x037A18 0D:BA08: FF        .byte $FF   ; 
- - - - - - 0x037A19 0D:BA09: FF        .byte $FF   ; 
- - - - - - 0x037A1A 0D:BA0A: FF        .byte $FF   ; 
- - - - - - 0x037A1B 0D:BA0B: FF        .byte $FF   ; 
- - - - - - 0x037A1C 0D:BA0C: FF        .byte $FF   ; 
- - - - - - 0x037A1D 0D:BA0D: FF        .byte $FF   ; 
- - - - - - 0x037A1E 0D:BA0E: FF        .byte $FF   ; 
- - - - - - 0x037A1F 0D:BA0F: FF        .byte $FF   ; 
- - - - - - 0x037A20 0D:BA10: FF        .byte $FF   ; 
- - - - - - 0x037A21 0D:BA11: FF        .byte $FF   ; 
- - - - - - 0x037A22 0D:BA12: FF        .byte $FF   ; 
- - - - - - 0x037A23 0D:BA13: FF        .byte $FF   ; 
- - - - - - 0x037A24 0D:BA14: FF        .byte $FF   ; 
- - - - - - 0x037A25 0D:BA15: FF        .byte $FF   ; 
- - - - - - 0x037A26 0D:BA16: FF        .byte $FF   ; 
- - - - - - 0x037A27 0D:BA17: FF        .byte $FF   ; 
- - - - - - 0x037A28 0D:BA18: FF        .byte $FF   ; 
- - - - - - 0x037A29 0D:BA19: FF        .byte $FF   ; 
- - - - - - 0x037A2A 0D:BA1A: FF        .byte $FF   ; 
- - - - - - 0x037A2B 0D:BA1B: FF        .byte $FF   ; 
- - - - - - 0x037A2C 0D:BA1C: FF        .byte $FF   ; 
- - - - - - 0x037A2D 0D:BA1D: FF        .byte $FF   ; 
- - - - - - 0x037A2E 0D:BA1E: FF        .byte $FF   ; 
- - - - - - 0x037A2F 0D:BA1F: FF        .byte $FF   ; 
- - - - - - 0x037A30 0D:BA20: FF        .byte $FF   ; 
- - - - - - 0x037A31 0D:BA21: FF        .byte $FF   ; 
- - - - - - 0x037A32 0D:BA22: FF        .byte $FF   ; 
- - - - - - 0x037A33 0D:BA23: FF        .byte $FF   ; 
- - - - - - 0x037A34 0D:BA24: FF        .byte $FF   ; 
- - - - - - 0x037A35 0D:BA25: FF        .byte $FF   ; 
- - - - - - 0x037A36 0D:BA26: FF        .byte $FF   ; 
- - - - - - 0x037A37 0D:BA27: FF        .byte $FF   ; 
- - - - - - 0x037A38 0D:BA28: FF        .byte $FF   ; 
- - - - - - 0x037A39 0D:BA29: FF        .byte $FF   ; 
- - - - - - 0x037A3A 0D:BA2A: FF        .byte $FF   ; 
- - - - - - 0x037A3B 0D:BA2B: FF        .byte $FF   ; 
- - - - - - 0x037A3C 0D:BA2C: FF        .byte $FF   ; 
- - - - - - 0x037A3D 0D:BA2D: FF        .byte $FF   ; 
- - - - - - 0x037A3E 0D:BA2E: FF        .byte $FF   ; 
- - - - - - 0x037A3F 0D:BA2F: FF        .byte $FF   ; 
- - - - - - 0x037A40 0D:BA30: FF        .byte $FF   ; 
- - - - - - 0x037A41 0D:BA31: FF        .byte $FF   ; 
- - - - - - 0x037A42 0D:BA32: FF        .byte $FF   ; 
- - - - - - 0x037A43 0D:BA33: FF        .byte $FF   ; 
- - - - - - 0x037A44 0D:BA34: FF        .byte $FF   ; 
- - - - - - 0x037A45 0D:BA35: FF        .byte $FF   ; 
- - - - - - 0x037A46 0D:BA36: FF        .byte $FF   ; 
- - - - - - 0x037A47 0D:BA37: FF        .byte $FF   ; 
- - - - - - 0x037A48 0D:BA38: FF        .byte $FF   ; 
- - - - - - 0x037A49 0D:BA39: FF        .byte $FF   ; 
- - - - - - 0x037A4A 0D:BA3A: FF        .byte $FF   ; 
- - - - - - 0x037A4B 0D:BA3B: FF        .byte $FF   ; 
- - - - - - 0x037A4C 0D:BA3C: FF        .byte $FF   ; 
- - - - - - 0x037A4D 0D:BA3D: FF        .byte $FF   ; 
- - - - - - 0x037A4E 0D:BA3E: FF        .byte $FF   ; 
- - - - - - 0x037A4F 0D:BA3F: FF        .byte $FF   ; 
- - - - - - 0x037A50 0D:BA40: FF        .byte $FF   ; 
- - - - - - 0x037A51 0D:BA41: FF        .byte $FF   ; 
- - - - - - 0x037A52 0D:BA42: FF        .byte $FF   ; 
- - - - - - 0x037A53 0D:BA43: FF        .byte $FF   ; 
- - - - - - 0x037A54 0D:BA44: FF        .byte $FF   ; 
- - - - - - 0x037A55 0D:BA45: FF        .byte $FF   ; 
- - - - - - 0x037A56 0D:BA46: FF        .byte $FF   ; 
- - - - - - 0x037A57 0D:BA47: FF        .byte $FF   ; 
- - - - - - 0x037A58 0D:BA48: FF        .byte $FF   ; 
- - - - - - 0x037A59 0D:BA49: FF        .byte $FF   ; 
- - - - - - 0x037A5A 0D:BA4A: FF        .byte $FF   ; 
- - - - - - 0x037A5B 0D:BA4B: FF        .byte $FF   ; 
- - - - - - 0x037A5C 0D:BA4C: FF        .byte $FF   ; 
- - - - - - 0x037A5D 0D:BA4D: FF        .byte $FF   ; 
- - - - - - 0x037A5E 0D:BA4E: FF        .byte $FF   ; 
- - - - - - 0x037A5F 0D:BA4F: FF        .byte $FF   ; 
- - - - - - 0x037A60 0D:BA50: FF        .byte $FF   ; 
- - - - - - 0x037A61 0D:BA51: FF        .byte $FF   ; 
- - - - - - 0x037A62 0D:BA52: FF        .byte $FF   ; 
- - - - - - 0x037A63 0D:BA53: FF        .byte $FF   ; 
- - - - - - 0x037A64 0D:BA54: FF        .byte $FF   ; 
- - - - - - 0x037A65 0D:BA55: FF        .byte $FF   ; 
- - - - - - 0x037A66 0D:BA56: FF        .byte $FF   ; 
- - - - - - 0x037A67 0D:BA57: FF        .byte $FF   ; 
- - - - - - 0x037A68 0D:BA58: FF        .byte $FF   ; 
- - - - - - 0x037A69 0D:BA59: FF        .byte $FF   ; 
- - - - - - 0x037A6A 0D:BA5A: FF        .byte $FF   ; 
- - - - - - 0x037A6B 0D:BA5B: FF        .byte $FF   ; 
- - - - - - 0x037A6C 0D:BA5C: FF        .byte $FF   ; 
- - - - - - 0x037A6D 0D:BA5D: FF        .byte $FF   ; 
- - - - - - 0x037A6E 0D:BA5E: FF        .byte $FF   ; 
- - - - - - 0x037A6F 0D:BA5F: FF        .byte $FF   ; 
- - - - - - 0x037A70 0D:BA60: FF        .byte $FF   ; 
- - - - - - 0x037A71 0D:BA61: FF        .byte $FF   ; 
- - - - - - 0x037A72 0D:BA62: FF        .byte $FF   ; 
- - - - - - 0x037A73 0D:BA63: FF        .byte $FF   ; 
- - - - - - 0x037A74 0D:BA64: FF        .byte $FF   ; 
- - - - - - 0x037A75 0D:BA65: FF        .byte $FF   ; 
- - - - - - 0x037A76 0D:BA66: FF        .byte $FF   ; 
- - - - - - 0x037A77 0D:BA67: FF        .byte $FF   ; 
- - - - - - 0x037A78 0D:BA68: FF        .byte $FF   ; 
- - - - - - 0x037A79 0D:BA69: FF        .byte $FF   ; 
- - - - - - 0x037A7A 0D:BA6A: FF        .byte $FF   ; 
- - - - - - 0x037A7B 0D:BA6B: FF        .byte $FF   ; 
- - - - - - 0x037A7C 0D:BA6C: FF        .byte $FF   ; 
- - - - - - 0x037A7D 0D:BA6D: FF        .byte $FF   ; 
- - - - - - 0x037A7E 0D:BA6E: FF        .byte $FF   ; 
- - - - - - 0x037A7F 0D:BA6F: FF        .byte $FF   ; 
- - - - - - 0x037A80 0D:BA70: FF        .byte $FF   ; 
- - - - - - 0x037A81 0D:BA71: FF        .byte $FF   ; 
- - - - - - 0x037A82 0D:BA72: FF        .byte $FF   ; 
- - - - - - 0x037A83 0D:BA73: FF        .byte $FF   ; 
- - - - - - 0x037A84 0D:BA74: FF        .byte $FF   ; 
- - - - - - 0x037A85 0D:BA75: FF        .byte $FF   ; 
- - - - - - 0x037A86 0D:BA76: FF        .byte $FF   ; 
- - - - - - 0x037A87 0D:BA77: FF        .byte $FF   ; 
- - - - - - 0x037A88 0D:BA78: FF        .byte $FF   ; 
- - - - - - 0x037A89 0D:BA79: FF        .byte $FF   ; 
- - - - - - 0x037A8A 0D:BA7A: FF        .byte $FF   ; 
- - - - - - 0x037A8B 0D:BA7B: FF        .byte $FF   ; 
- - - - - - 0x037A8C 0D:BA7C: FF        .byte $FF   ; 
- - - - - - 0x037A8D 0D:BA7D: FF        .byte $FF   ; 
- - - - - - 0x037A8E 0D:BA7E: FF        .byte $FF   ; 
- - - - - - 0x037A8F 0D:BA7F: FF        .byte $FF   ; 
- - - - - - 0x037A90 0D:BA80: FF        .byte $FF   ; 
- - - - - - 0x037A91 0D:BA81: FF        .byte $FF   ; 
- - - - - - 0x037A92 0D:BA82: FF        .byte $FF   ; 
- - - - - - 0x037A93 0D:BA83: FF        .byte $FF   ; 
- - - - - - 0x037A94 0D:BA84: FF        .byte $FF   ; 
- - - - - - 0x037A95 0D:BA85: FF        .byte $FF   ; 
- - - - - - 0x037A96 0D:BA86: FF        .byte $FF   ; 
- - - - - - 0x037A97 0D:BA87: FF        .byte $FF   ; 
- - - - - - 0x037A98 0D:BA88: FF        .byte $FF   ; 
- - - - - - 0x037A99 0D:BA89: FF        .byte $FF   ; 
- - - - - - 0x037A9A 0D:BA8A: FF        .byte $FF   ; 
- - - - - - 0x037A9B 0D:BA8B: FF        .byte $FF   ; 
- - - - - - 0x037A9C 0D:BA8C: FF        .byte $FF   ; 
- - - - - - 0x037A9D 0D:BA8D: FF        .byte $FF   ; 
- - - - - - 0x037A9E 0D:BA8E: FF        .byte $FF   ; 
- - - - - - 0x037A9F 0D:BA8F: FF        .byte $FF   ; 
- - - - - - 0x037AA0 0D:BA90: FF        .byte $FF   ; 
- - - - - - 0x037AA1 0D:BA91: FF        .byte $FF   ; 
- - - - - - 0x037AA2 0D:BA92: FF        .byte $FF   ; 
- - - - - - 0x037AA3 0D:BA93: FF        .byte $FF   ; 
- - - - - - 0x037AA4 0D:BA94: FF        .byte $FF   ; 
- - - - - - 0x037AA5 0D:BA95: FF        .byte $FF   ; 
- - - - - - 0x037AA6 0D:BA96: FF        .byte $FF   ; 
- - - - - - 0x037AA7 0D:BA97: FF        .byte $FF   ; 
- - - - - - 0x037AA8 0D:BA98: FF        .byte $FF   ; 
- - - - - - 0x037AA9 0D:BA99: FF        .byte $FF   ; 
- - - - - - 0x037AAA 0D:BA9A: FF        .byte $FF   ; 
- - - - - - 0x037AAB 0D:BA9B: FF        .byte $FF   ; 
- - - - - - 0x037AAC 0D:BA9C: FF        .byte $FF   ; 
- - - - - - 0x037AAD 0D:BA9D: FF        .byte $FF   ; 
- - - - - - 0x037AAE 0D:BA9E: FF        .byte $FF   ; 
- - - - - - 0x037AAF 0D:BA9F: FF        .byte $FF   ; 
- - - - - - 0x037AB0 0D:BAA0: FF        .byte $FF   ; 
- - - - - - 0x037AB1 0D:BAA1: FF        .byte $FF   ; 
- - - - - - 0x037AB2 0D:BAA2: FF        .byte $FF   ; 
- - - - - - 0x037AB3 0D:BAA3: FF        .byte $FF   ; 
- - - - - - 0x037AB4 0D:BAA4: FF        .byte $FF   ; 
- - - - - - 0x037AB5 0D:BAA5: FF        .byte $FF   ; 
- - - - - - 0x037AB6 0D:BAA6: FF        .byte $FF   ; 
- - - - - - 0x037AB7 0D:BAA7: FF        .byte $FF   ; 
- - - - - - 0x037AB8 0D:BAA8: FF        .byte $FF   ; 
- - - - - - 0x037AB9 0D:BAA9: FF        .byte $FF   ; 
- - - - - - 0x037ABA 0D:BAAA: FF        .byte $FF   ; 
- - - - - - 0x037ABB 0D:BAAB: FF        .byte $FF   ; 
- - - - - - 0x037ABC 0D:BAAC: FF        .byte $FF   ; 
- - - - - - 0x037ABD 0D:BAAD: FF        .byte $FF   ; 
- - - - - - 0x037ABE 0D:BAAE: FF        .byte $FF   ; 
- - - - - - 0x037ABF 0D:BAAF: FF        .byte $FF   ; 
- - - - - - 0x037AC0 0D:BAB0: FF        .byte $FF   ; 
- - - - - - 0x037AC1 0D:BAB1: FF        .byte $FF   ; 
- - - - - - 0x037AC2 0D:BAB2: FF        .byte $FF   ; 
- - - - - - 0x037AC3 0D:BAB3: FF        .byte $FF   ; 
- - - - - - 0x037AC4 0D:BAB4: FF        .byte $FF   ; 
- - - - - - 0x037AC5 0D:BAB5: FF        .byte $FF   ; 
- - - - - - 0x037AC6 0D:BAB6: FF        .byte $FF   ; 
- - - - - - 0x037AC7 0D:BAB7: FF        .byte $FF   ; 
- - - - - - 0x037AC8 0D:BAB8: FF        .byte $FF   ; 
- - - - - - 0x037AC9 0D:BAB9: FF        .byte $FF   ; 
- - - - - - 0x037ACA 0D:BABA: FF        .byte $FF   ; 
- - - - - - 0x037ACB 0D:BABB: FF        .byte $FF   ; 
- - - - - - 0x037ACC 0D:BABC: FF        .byte $FF   ; 
- - - - - - 0x037ACD 0D:BABD: FF        .byte $FF   ; 
- - - - - - 0x037ACE 0D:BABE: FF        .byte $FF   ; 
- - - - - - 0x037ACF 0D:BABF: FF        .byte $FF   ; 
- - - - - - 0x037AD0 0D:BAC0: FF        .byte $FF   ; 
- - - - - - 0x037AD1 0D:BAC1: FF        .byte $FF   ; 
- - - - - - 0x037AD2 0D:BAC2: FF        .byte $FF   ; 
- - - - - - 0x037AD3 0D:BAC3: FF        .byte $FF   ; 
- - - - - - 0x037AD4 0D:BAC4: FF        .byte $FF   ; 
- - - - - - 0x037AD5 0D:BAC5: FF        .byte $FF   ; 
- - - - - - 0x037AD6 0D:BAC6: FF        .byte $FF   ; 
- - - - - - 0x037AD7 0D:BAC7: FF        .byte $FF   ; 
- - - - - - 0x037AD8 0D:BAC8: FF        .byte $FF   ; 
- - - - - - 0x037AD9 0D:BAC9: FF        .byte $FF   ; 
- - - - - - 0x037ADA 0D:BACA: FF        .byte $FF   ; 
- - - - - - 0x037ADB 0D:BACB: FF        .byte $FF   ; 
- - - - - - 0x037ADC 0D:BACC: FF        .byte $FF   ; 
- - - - - - 0x037ADD 0D:BACD: FF        .byte $FF   ; 
- - - - - - 0x037ADE 0D:BACE: FF        .byte $FF   ; 
- - - - - - 0x037ADF 0D:BACF: FF        .byte $FF   ; 
- - - - - - 0x037AE0 0D:BAD0: FF        .byte $FF   ; 
- - - - - - 0x037AE1 0D:BAD1: FF        .byte $FF   ; 
- - - - - - 0x037AE2 0D:BAD2: FF        .byte $FF   ; 
- - - - - - 0x037AE3 0D:BAD3: FF        .byte $FF   ; 
- - - - - - 0x037AE4 0D:BAD4: FF        .byte $FF   ; 
- - - - - - 0x037AE5 0D:BAD5: FF        .byte $FF   ; 
- - - - - - 0x037AE6 0D:BAD6: FF        .byte $FF   ; 
- - - - - - 0x037AE7 0D:BAD7: FF        .byte $FF   ; 
- - - - - - 0x037AE8 0D:BAD8: FF        .byte $FF   ; 
- - - - - - 0x037AE9 0D:BAD9: FF        .byte $FF   ; 
- - - - - - 0x037AEA 0D:BADA: FF        .byte $FF   ; 
- - - - - - 0x037AEB 0D:BADB: FF        .byte $FF   ; 
- - - - - - 0x037AEC 0D:BADC: FF        .byte $FF   ; 
- - - - - - 0x037AED 0D:BADD: FF        .byte $FF   ; 
- - - - - - 0x037AEE 0D:BADE: FF        .byte $FF   ; 
- - - - - - 0x037AEF 0D:BADF: FF        .byte $FF   ; 
- - - - - - 0x037AF0 0D:BAE0: FF        .byte $FF   ; 
- - - - - - 0x037AF1 0D:BAE1: FF        .byte $FF   ; 
- - - - - - 0x037AF2 0D:BAE2: FF        .byte $FF   ; 
- - - - - - 0x037AF3 0D:BAE3: FF        .byte $FF   ; 
- - - - - - 0x037AF4 0D:BAE4: FF        .byte $FF   ; 
- - - - - - 0x037AF5 0D:BAE5: FF        .byte $FF   ; 
- - - - - - 0x037AF6 0D:BAE6: FF        .byte $FF   ; 
- - - - - - 0x037AF7 0D:BAE7: FF        .byte $FF   ; 
- - - - - - 0x037AF8 0D:BAE8: FF        .byte $FF   ; 
- - - - - - 0x037AF9 0D:BAE9: FF        .byte $FF   ; 
- - - - - - 0x037AFA 0D:BAEA: FF        .byte $FF   ; 
- - - - - - 0x037AFB 0D:BAEB: FF        .byte $FF   ; 
- - - - - - 0x037AFC 0D:BAEC: FF        .byte $FF   ; 
- - - - - - 0x037AFD 0D:BAED: FF        .byte $FF   ; 
- - - - - - 0x037AFE 0D:BAEE: FF        .byte $FF   ; 
- - - - - - 0x037AFF 0D:BAEF: FF        .byte $FF   ; 
- - - - - - 0x037B00 0D:BAF0: FF        .byte $FF   ; 
- - - - - - 0x037B01 0D:BAF1: FF        .byte $FF   ; 
- - - - - - 0x037B02 0D:BAF2: FF        .byte $FF   ; 
- - - - - - 0x037B03 0D:BAF3: FF        .byte $FF   ; 
- - - - - - 0x037B04 0D:BAF4: FF        .byte $FF   ; 
- - - - - - 0x037B05 0D:BAF5: FF        .byte $FF   ; 
- - - - - - 0x037B06 0D:BAF6: FF        .byte $FF   ; 
- - - - - - 0x037B07 0D:BAF7: FF        .byte $FF   ; 
- - - - - - 0x037B08 0D:BAF8: FF        .byte $FF   ; 
- - - - - - 0x037B09 0D:BAF9: FF        .byte $FF   ; 
- - - - - - 0x037B0A 0D:BAFA: FF        .byte $FF   ; 
- - - - - - 0x037B0B 0D:BAFB: FF        .byte $FF   ; 
- - - - - - 0x037B0C 0D:BAFC: FF        .byte $FF   ; 
- - - - - - 0x037B0D 0D:BAFD: FF        .byte $FF   ; 
- - - - - - 0x037B0E 0D:BAFE: FF        .byte $FF   ; 
- - - - - - 0x037B0F 0D:BAFF: FF        .byte $FF   ; 
- - - - - - 0x037B10 0D:BB00: FF        .byte $FF   ; 
- - - - - - 0x037B11 0D:BB01: FF        .byte $FF   ; 
- - - - - - 0x037B12 0D:BB02: FF        .byte $FF   ; 
- - - - - - 0x037B13 0D:BB03: FF        .byte $FF   ; 
- - - - - - 0x037B14 0D:BB04: FF        .byte $FF   ; 
- - - - - - 0x037B15 0D:BB05: FF        .byte $FF   ; 
- - - - - - 0x037B16 0D:BB06: FF        .byte $FF   ; 
- - - - - - 0x037B17 0D:BB07: FF        .byte $FF   ; 
- - - - - - 0x037B18 0D:BB08: FF        .byte $FF   ; 
- - - - - - 0x037B19 0D:BB09: FF        .byte $FF   ; 
- - - - - - 0x037B1A 0D:BB0A: FF        .byte $FF   ; 
- - - - - - 0x037B1B 0D:BB0B: FF        .byte $FF   ; 
- - - - - - 0x037B1C 0D:BB0C: FF        .byte $FF   ; 
- - - - - - 0x037B1D 0D:BB0D: FF        .byte $FF   ; 
- - - - - - 0x037B1E 0D:BB0E: FF        .byte $FF   ; 
- - - - - - 0x037B1F 0D:BB0F: FF        .byte $FF   ; 
- - - - - - 0x037B20 0D:BB10: FF        .byte $FF   ; 
- - - - - - 0x037B21 0D:BB11: FF        .byte $FF   ; 
- - - - - - 0x037B22 0D:BB12: FF        .byte $FF   ; 
- - - - - - 0x037B23 0D:BB13: FF        .byte $FF   ; 
- - - - - - 0x037B24 0D:BB14: FF        .byte $FF   ; 
- - - - - - 0x037B25 0D:BB15: FF        .byte $FF   ; 
- - - - - - 0x037B26 0D:BB16: FF        .byte $FF   ; 
- - - - - - 0x037B27 0D:BB17: FF        .byte $FF   ; 
- - - - - - 0x037B28 0D:BB18: FF        .byte $FF   ; 
- - - - - - 0x037B29 0D:BB19: FF        .byte $FF   ; 
- - - - - - 0x037B2A 0D:BB1A: FF        .byte $FF   ; 
- - - - - - 0x037B2B 0D:BB1B: FF        .byte $FF   ; 
- - - - - - 0x037B2C 0D:BB1C: FF        .byte $FF   ; 
- - - - - - 0x037B2D 0D:BB1D: FF        .byte $FF   ; 
- - - - - - 0x037B2E 0D:BB1E: FF        .byte $FF   ; 
- - - - - - 0x037B2F 0D:BB1F: FF        .byte $FF   ; 
- - - - - - 0x037B30 0D:BB20: FF        .byte $FF   ; 
- - - - - - 0x037B31 0D:BB21: FF        .byte $FF   ; 
- - - - - - 0x037B32 0D:BB22: FF        .byte $FF   ; 
- - - - - - 0x037B33 0D:BB23: FF        .byte $FF   ; 
- - - - - - 0x037B34 0D:BB24: FF        .byte $FF   ; 
- - - - - - 0x037B35 0D:BB25: FF        .byte $FF   ; 
- - - - - - 0x037B36 0D:BB26: FF        .byte $FF   ; 
- - - - - - 0x037B37 0D:BB27: FF        .byte $FF   ; 
- - - - - - 0x037B38 0D:BB28: FF        .byte $FF   ; 
- - - - - - 0x037B39 0D:BB29: FF        .byte $FF   ; 
- - - - - - 0x037B3A 0D:BB2A: FF        .byte $FF   ; 
- - - - - - 0x037B3B 0D:BB2B: FF        .byte $FF   ; 
- - - - - - 0x037B3C 0D:BB2C: FF        .byte $FF   ; 
- - - - - - 0x037B3D 0D:BB2D: FF        .byte $FF   ; 
- - - - - - 0x037B3E 0D:BB2E: FF        .byte $FF   ; 
- - - - - - 0x037B3F 0D:BB2F: FF        .byte $FF   ; 
- - - - - - 0x037B40 0D:BB30: FF        .byte $FF   ; 
- - - - - - 0x037B41 0D:BB31: FF        .byte $FF   ; 
- - - - - - 0x037B42 0D:BB32: FF        .byte $FF   ; 
- - - - - - 0x037B43 0D:BB33: FF        .byte $FF   ; 
- - - - - - 0x037B44 0D:BB34: FF        .byte $FF   ; 
- - - - - - 0x037B45 0D:BB35: FF        .byte $FF   ; 
- - - - - - 0x037B46 0D:BB36: FF        .byte $FF   ; 
- - - - - - 0x037B47 0D:BB37: FF        .byte $FF   ; 
- - - - - - 0x037B48 0D:BB38: FF        .byte $FF   ; 
- - - - - - 0x037B49 0D:BB39: FF        .byte $FF   ; 
- - - - - - 0x037B4A 0D:BB3A: FF        .byte $FF   ; 
- - - - - - 0x037B4B 0D:BB3B: FF        .byte $FF   ; 
- - - - - - 0x037B4C 0D:BB3C: FF        .byte $FF   ; 
- - - - - - 0x037B4D 0D:BB3D: FF        .byte $FF   ; 
- - - - - - 0x037B4E 0D:BB3E: FF        .byte $FF   ; 
- - - - - - 0x037B4F 0D:BB3F: FF        .byte $FF   ; 
- - - - - - 0x037B50 0D:BB40: FF        .byte $FF   ; 
- - - - - - 0x037B51 0D:BB41: FF        .byte $FF   ; 
- - - - - - 0x037B52 0D:BB42: FF        .byte $FF   ; 
- - - - - - 0x037B53 0D:BB43: FF        .byte $FF   ; 
- - - - - - 0x037B54 0D:BB44: FF        .byte $FF   ; 
- - - - - - 0x037B55 0D:BB45: FF        .byte $FF   ; 
- - - - - - 0x037B56 0D:BB46: FF        .byte $FF   ; 
- - - - - - 0x037B57 0D:BB47: FF        .byte $FF   ; 
- - - - - - 0x037B58 0D:BB48: FF        .byte $FF   ; 
- - - - - - 0x037B59 0D:BB49: FF        .byte $FF   ; 
- - - - - - 0x037B5A 0D:BB4A: FF        .byte $FF   ; 
- - - - - - 0x037B5B 0D:BB4B: FF        .byte $FF   ; 
- - - - - - 0x037B5C 0D:BB4C: FF        .byte $FF   ; 
- - - - - - 0x037B5D 0D:BB4D: FF        .byte $FF   ; 
- - - - - - 0x037B5E 0D:BB4E: FF        .byte $FF   ; 
- - - - - - 0x037B5F 0D:BB4F: FF        .byte $FF   ; 
- - - - - - 0x037B60 0D:BB50: FF        .byte $FF   ; 
- - - - - - 0x037B61 0D:BB51: FF        .byte $FF   ; 
- - - - - - 0x037B62 0D:BB52: FF        .byte $FF   ; 
- - - - - - 0x037B63 0D:BB53: FF        .byte $FF   ; 
- - - - - - 0x037B64 0D:BB54: FF        .byte $FF   ; 
- - - - - - 0x037B65 0D:BB55: FF        .byte $FF   ; 
- - - - - - 0x037B66 0D:BB56: FF        .byte $FF   ; 
- - - - - - 0x037B67 0D:BB57: FF        .byte $FF   ; 
- - - - - - 0x037B68 0D:BB58: FF        .byte $FF   ; 
- - - - - - 0x037B69 0D:BB59: FF        .byte $FF   ; 
- - - - - - 0x037B6A 0D:BB5A: FF        .byte $FF   ; 
- - - - - - 0x037B6B 0D:BB5B: FF        .byte $FF   ; 
- - - - - - 0x037B6C 0D:BB5C: FF        .byte $FF   ; 
- - - - - - 0x037B6D 0D:BB5D: FF        .byte $FF   ; 
- - - - - - 0x037B6E 0D:BB5E: FF        .byte $FF   ; 
- - - - - - 0x037B6F 0D:BB5F: FF        .byte $FF   ; 
- - - - - - 0x037B70 0D:BB60: FF        .byte $FF   ; 
- - - - - - 0x037B71 0D:BB61: FF        .byte $FF   ; 
- - - - - - 0x037B72 0D:BB62: FF        .byte $FF   ; 
- - - - - - 0x037B73 0D:BB63: FF        .byte $FF   ; 
- - - - - - 0x037B74 0D:BB64: FF        .byte $FF   ; 
- - - - - - 0x037B75 0D:BB65: FF        .byte $FF   ; 
- - - - - - 0x037B76 0D:BB66: FF        .byte $FF   ; 
- - - - - - 0x037B77 0D:BB67: FF        .byte $FF   ; 
- - - - - - 0x037B78 0D:BB68: FF        .byte $FF   ; 
- - - - - - 0x037B79 0D:BB69: FF        .byte $FF   ; 
- - - - - - 0x037B7A 0D:BB6A: FF        .byte $FF   ; 
- - - - - - 0x037B7B 0D:BB6B: FF        .byte $FF   ; 
- - - - - - 0x037B7C 0D:BB6C: FF        .byte $FF   ; 
- - - - - - 0x037B7D 0D:BB6D: FF        .byte $FF   ; 
- - - - - - 0x037B7E 0D:BB6E: FF        .byte $FF   ; 
- - - - - - 0x037B7F 0D:BB6F: FF        .byte $FF   ; 
- - - - - - 0x037B80 0D:BB70: FF        .byte $FF   ; 
- - - - - - 0x037B81 0D:BB71: FF        .byte $FF   ; 
- - - - - - 0x037B82 0D:BB72: FF        .byte $FF   ; 
- - - - - - 0x037B83 0D:BB73: FF        .byte $FF   ; 
- - - - - - 0x037B84 0D:BB74: FF        .byte $FF   ; 
- - - - - - 0x037B85 0D:BB75: FF        .byte $FF   ; 
- - - - - - 0x037B86 0D:BB76: FF        .byte $FF   ; 
- - - - - - 0x037B87 0D:BB77: FF        .byte $FF   ; 
- - - - - - 0x037B88 0D:BB78: FF        .byte $FF   ; 
- - - - - - 0x037B89 0D:BB79: FF        .byte $FF   ; 
- - - - - - 0x037B8A 0D:BB7A: FF        .byte $FF   ; 
- - - - - - 0x037B8B 0D:BB7B: FF        .byte $FF   ; 
- - - - - - 0x037B8C 0D:BB7C: FF        .byte $FF   ; 
- - - - - - 0x037B8D 0D:BB7D: FF        .byte $FF   ; 
- - - - - - 0x037B8E 0D:BB7E: FF        .byte $FF   ; 
- - - - - - 0x037B8F 0D:BB7F: FF        .byte $FF   ; 
- - - - - - 0x037B90 0D:BB80: FF        .byte $FF   ; 
- - - - - - 0x037B91 0D:BB81: FF        .byte $FF   ; 
- - - - - - 0x037B92 0D:BB82: FF        .byte $FF   ; 
- - - - - - 0x037B93 0D:BB83: FF        .byte $FF   ; 
- - - - - - 0x037B94 0D:BB84: FF        .byte $FF   ; 
- - - - - - 0x037B95 0D:BB85: FF        .byte $FF   ; 
- - - - - - 0x037B96 0D:BB86: FF        .byte $FF   ; 
- - - - - - 0x037B97 0D:BB87: FF        .byte $FF   ; 
- - - - - - 0x037B98 0D:BB88: FF        .byte $FF   ; 
- - - - - - 0x037B99 0D:BB89: FF        .byte $FF   ; 
- - - - - - 0x037B9A 0D:BB8A: FF        .byte $FF   ; 
- - - - - - 0x037B9B 0D:BB8B: FF        .byte $FF   ; 
- - - - - - 0x037B9C 0D:BB8C: FF        .byte $FF   ; 
- - - - - - 0x037B9D 0D:BB8D: FF        .byte $FF   ; 
- - - - - - 0x037B9E 0D:BB8E: FF        .byte $FF   ; 
- - - - - - 0x037B9F 0D:BB8F: FF        .byte $FF   ; 
- - - - - - 0x037BA0 0D:BB90: FF        .byte $FF   ; 
- - - - - - 0x037BA1 0D:BB91: FF        .byte $FF   ; 
- - - - - - 0x037BA2 0D:BB92: FF        .byte $FF   ; 
- - - - - - 0x037BA3 0D:BB93: FF        .byte $FF   ; 
- - - - - - 0x037BA4 0D:BB94: FF        .byte $FF   ; 
- - - - - - 0x037BA5 0D:BB95: FF        .byte $FF   ; 
- - - - - - 0x037BA6 0D:BB96: FF        .byte $FF   ; 
- - - - - - 0x037BA7 0D:BB97: FF        .byte $FF   ; 
- - - - - - 0x037BA8 0D:BB98: FF        .byte $FF   ; 
- - - - - - 0x037BA9 0D:BB99: FF        .byte $FF   ; 
- - - - - - 0x037BAA 0D:BB9A: FF        .byte $FF   ; 
- - - - - - 0x037BAB 0D:BB9B: FF        .byte $FF   ; 
- - - - - - 0x037BAC 0D:BB9C: FF        .byte $FF   ; 
- - - - - - 0x037BAD 0D:BB9D: FF        .byte $FF   ; 
- - - - - - 0x037BAE 0D:BB9E: FF        .byte $FF   ; 
- - - - - - 0x037BAF 0D:BB9F: FF        .byte $FF   ; 
- - - - - - 0x037BB0 0D:BBA0: FF        .byte $FF   ; 
- - - - - - 0x037BB1 0D:BBA1: FF        .byte $FF   ; 
- - - - - - 0x037BB2 0D:BBA2: FF        .byte $FF   ; 
- - - - - - 0x037BB3 0D:BBA3: FF        .byte $FF   ; 
- - - - - - 0x037BB4 0D:BBA4: FF        .byte $FF   ; 
- - - - - - 0x037BB5 0D:BBA5: FF        .byte $FF   ; 
- - - - - - 0x037BB6 0D:BBA6: FF        .byte $FF   ; 
- - - - - - 0x037BB7 0D:BBA7: FF        .byte $FF   ; 
- - - - - - 0x037BB8 0D:BBA8: FF        .byte $FF   ; 
- - - - - - 0x037BB9 0D:BBA9: FF        .byte $FF   ; 
- - - - - - 0x037BBA 0D:BBAA: FF        .byte $FF   ; 
- - - - - - 0x037BBB 0D:BBAB: FF        .byte $FF   ; 
- - - - - - 0x037BBC 0D:BBAC: FF        .byte $FF   ; 
- - - - - - 0x037BBD 0D:BBAD: FF        .byte $FF   ; 
- - - - - - 0x037BBE 0D:BBAE: FF        .byte $FF   ; 
- - - - - - 0x037BBF 0D:BBAF: FF        .byte $FF   ; 
- - - - - - 0x037BC0 0D:BBB0: FF        .byte $FF   ; 
- - - - - - 0x037BC1 0D:BBB1: FF        .byte $FF   ; 
- - - - - - 0x037BC2 0D:BBB2: FF        .byte $FF   ; 
- - - - - - 0x037BC3 0D:BBB3: FF        .byte $FF   ; 
- - - - - - 0x037BC4 0D:BBB4: FF        .byte $FF   ; 
- - - - - - 0x037BC5 0D:BBB5: FF        .byte $FF   ; 
- - - - - - 0x037BC6 0D:BBB6: FF        .byte $FF   ; 
- - - - - - 0x037BC7 0D:BBB7: FF        .byte $FF   ; 
- - - - - - 0x037BC8 0D:BBB8: FF        .byte $FF   ; 
- - - - - - 0x037BC9 0D:BBB9: FF        .byte $FF   ; 
- - - - - - 0x037BCA 0D:BBBA: FF        .byte $FF   ; 
- - - - - - 0x037BCB 0D:BBBB: FF        .byte $FF   ; 
- - - - - - 0x037BCC 0D:BBBC: FF        .byte $FF   ; 
- - - - - - 0x037BCD 0D:BBBD: FF        .byte $FF   ; 
- - - - - - 0x037BCE 0D:BBBE: FF        .byte $FF   ; 
- - - - - - 0x037BCF 0D:BBBF: FF        .byte $FF   ; 
- - - - - - 0x037BD0 0D:BBC0: FF        .byte $FF   ; 
- - - - - - 0x037BD1 0D:BBC1: FF        .byte $FF   ; 
- - - - - - 0x037BD2 0D:BBC2: FF        .byte $FF   ; 
- - - - - - 0x037BD3 0D:BBC3: FF        .byte $FF   ; 
- - - - - - 0x037BD4 0D:BBC4: FF        .byte $FF   ; 
- - - - - - 0x037BD5 0D:BBC5: FF        .byte $FF   ; 
- - - - - - 0x037BD6 0D:BBC6: FF        .byte $FF   ; 
- - - - - - 0x037BD7 0D:BBC7: FF        .byte $FF   ; 
- - - - - - 0x037BD8 0D:BBC8: FF        .byte $FF   ; 
- - - - - - 0x037BD9 0D:BBC9: FF        .byte $FF   ; 
- - - - - - 0x037BDA 0D:BBCA: FF        .byte $FF   ; 
- - - - - - 0x037BDB 0D:BBCB: FF        .byte $FF   ; 
- - - - - - 0x037BDC 0D:BBCC: FF        .byte $FF   ; 
- - - - - - 0x037BDD 0D:BBCD: FF        .byte $FF   ; 
- - - - - - 0x037BDE 0D:BBCE: FF        .byte $FF   ; 
- - - - - - 0x037BDF 0D:BBCF: FF        .byte $FF   ; 
- - - - - - 0x037BE0 0D:BBD0: FF        .byte $FF   ; 
- - - - - - 0x037BE1 0D:BBD1: FF        .byte $FF   ; 
- - - - - - 0x037BE2 0D:BBD2: FF        .byte $FF   ; 
- - - - - - 0x037BE3 0D:BBD3: FF        .byte $FF   ; 
- - - - - - 0x037BE4 0D:BBD4: FF        .byte $FF   ; 
- - - - - - 0x037BE5 0D:BBD5: FF        .byte $FF   ; 
- - - - - - 0x037BE6 0D:BBD6: FF        .byte $FF   ; 
- - - - - - 0x037BE7 0D:BBD7: FF        .byte $FF   ; 
- - - - - - 0x037BE8 0D:BBD8: FF        .byte $FF   ; 
- - - - - - 0x037BE9 0D:BBD9: FF        .byte $FF   ; 
- - - - - - 0x037BEA 0D:BBDA: FF        .byte $FF   ; 
- - - - - - 0x037BEB 0D:BBDB: FF        .byte $FF   ; 
- - - - - - 0x037BEC 0D:BBDC: FF        .byte $FF   ; 
- - - - - - 0x037BED 0D:BBDD: FF        .byte $FF   ; 
- - - - - - 0x037BEE 0D:BBDE: FF        .byte $FF   ; 
- - - - - - 0x037BEF 0D:BBDF: FF        .byte $FF   ; 
- - - - - - 0x037BF0 0D:BBE0: FF        .byte $FF   ; 
- - - - - - 0x037BF1 0D:BBE1: FF        .byte $FF   ; 
- - - - - - 0x037BF2 0D:BBE2: FF        .byte $FF   ; 
- - - - - - 0x037BF3 0D:BBE3: FF        .byte $FF   ; 
- - - - - - 0x037BF4 0D:BBE4: FF        .byte $FF   ; 
- - - - - - 0x037BF5 0D:BBE5: FF        .byte $FF   ; 
- - - - - - 0x037BF6 0D:BBE6: FF        .byte $FF   ; 
- - - - - - 0x037BF7 0D:BBE7: FF        .byte $FF   ; 
- - - - - - 0x037BF8 0D:BBE8: FF        .byte $FF   ; 
- - - - - - 0x037BF9 0D:BBE9: FF        .byte $FF   ; 
- - - - - - 0x037BFA 0D:BBEA: FF        .byte $FF   ; 
- - - - - - 0x037BFB 0D:BBEB: FF        .byte $FF   ; 
- - - - - - 0x037BFC 0D:BBEC: FF        .byte $FF   ; 
- - - - - - 0x037BFD 0D:BBED: FF        .byte $FF   ; 
- - - - - - 0x037BFE 0D:BBEE: FF        .byte $FF   ; 
- - - - - - 0x037BFF 0D:BBEF: FF        .byte $FF   ; 
- - - - - - 0x037C00 0D:BBF0: FF        .byte $FF   ; 
- - - - - - 0x037C01 0D:BBF1: FF        .byte $FF   ; 
- - - - - - 0x037C02 0D:BBF2: FF        .byte $FF   ; 
- - - - - - 0x037C03 0D:BBF3: FF        .byte $FF   ; 
- - - - - - 0x037C04 0D:BBF4: FF        .byte $FF   ; 
- - - - - - 0x037C05 0D:BBF5: FF        .byte $FF   ; 
- - - - - - 0x037C06 0D:BBF6: FF        .byte $FF   ; 
- - - - - - 0x037C07 0D:BBF7: FF        .byte $FF   ; 
- - - - - - 0x037C08 0D:BBF8: FF        .byte $FF   ; 
- - - - - - 0x037C09 0D:BBF9: FF        .byte $FF   ; 
- - - - - - 0x037C0A 0D:BBFA: FF        .byte $FF   ; 
- - - - - - 0x037C0B 0D:BBFB: FF        .byte $FF   ; 
- - - - - - 0x037C0C 0D:BBFC: FF        .byte $FF   ; 
- - - - - - 0x037C0D 0D:BBFD: FF        .byte $FF   ; 
- - - - - - 0x037C0E 0D:BBFE: FF        .byte $FF   ; 
- - - - - - 0x037C0F 0D:BBFF: FF        .byte $FF   ; 
- - - - - - 0x037C10 0D:BC00: FF        .byte $FF   ; 
- - - - - - 0x037C11 0D:BC01: FF        .byte $FF   ; 
- - - - - - 0x037C12 0D:BC02: FF        .byte $FF   ; 
- - - - - - 0x037C13 0D:BC03: FF        .byte $FF   ; 
- - - - - - 0x037C14 0D:BC04: FF        .byte $FF   ; 
- - - - - - 0x037C15 0D:BC05: FF        .byte $FF   ; 
- - - - - - 0x037C16 0D:BC06: FF        .byte $FF   ; 
- - - - - - 0x037C17 0D:BC07: FF        .byte $FF   ; 
- - - - - - 0x037C18 0D:BC08: FF        .byte $FF   ; 
- - - - - - 0x037C19 0D:BC09: FF        .byte $FF   ; 
- - - - - - 0x037C1A 0D:BC0A: FF        .byte $FF   ; 
- - - - - - 0x037C1B 0D:BC0B: FF        .byte $FF   ; 
- - - - - - 0x037C1C 0D:BC0C: FF        .byte $FF   ; 
- - - - - - 0x037C1D 0D:BC0D: FF        .byte $FF   ; 
- - - - - - 0x037C1E 0D:BC0E: FF        .byte $FF   ; 
- - - - - - 0x037C1F 0D:BC0F: FF        .byte $FF   ; 
- - - - - - 0x037C20 0D:BC10: FF        .byte $FF   ; 
- - - - - - 0x037C21 0D:BC11: FF        .byte $FF   ; 
- - - - - - 0x037C22 0D:BC12: FF        .byte $FF   ; 
- - - - - - 0x037C23 0D:BC13: FF        .byte $FF   ; 
- - - - - - 0x037C24 0D:BC14: FF        .byte $FF   ; 
- - - - - - 0x037C25 0D:BC15: FF        .byte $FF   ; 
- - - - - - 0x037C26 0D:BC16: FF        .byte $FF   ; 
- - - - - - 0x037C27 0D:BC17: FF        .byte $FF   ; 
- - - - - - 0x037C28 0D:BC18: FF        .byte $FF   ; 
- - - - - - 0x037C29 0D:BC19: FF        .byte $FF   ; 
- - - - - - 0x037C2A 0D:BC1A: FF        .byte $FF   ; 
- - - - - - 0x037C2B 0D:BC1B: FF        .byte $FF   ; 
- - - - - - 0x037C2C 0D:BC1C: FF        .byte $FF   ; 
- - - - - - 0x037C2D 0D:BC1D: FF        .byte $FF   ; 
- - - - - - 0x037C2E 0D:BC1E: FF        .byte $FF   ; 
- - - - - - 0x037C2F 0D:BC1F: FF        .byte $FF   ; 
- - - - - - 0x037C30 0D:BC20: FF        .byte $FF   ; 
- - - - - - 0x037C31 0D:BC21: FF        .byte $FF   ; 
- - - - - - 0x037C32 0D:BC22: FF        .byte $FF   ; 
- - - - - - 0x037C33 0D:BC23: FF        .byte $FF   ; 
- - - - - - 0x037C34 0D:BC24: FF        .byte $FF   ; 
- - - - - - 0x037C35 0D:BC25: FF        .byte $FF   ; 
- - - - - - 0x037C36 0D:BC26: FF        .byte $FF   ; 
- - - - - - 0x037C37 0D:BC27: FF        .byte $FF   ; 
- - - - - - 0x037C38 0D:BC28: FF        .byte $FF   ; 
- - - - - - 0x037C39 0D:BC29: FF        .byte $FF   ; 
- - - - - - 0x037C3A 0D:BC2A: FF        .byte $FF   ; 
- - - - - - 0x037C3B 0D:BC2B: FF        .byte $FF   ; 
- - - - - - 0x037C3C 0D:BC2C: FF        .byte $FF   ; 
- - - - - - 0x037C3D 0D:BC2D: FF        .byte $FF   ; 
- - - - - - 0x037C3E 0D:BC2E: FF        .byte $FF   ; 
- - - - - - 0x037C3F 0D:BC2F: FF        .byte $FF   ; 
- - - - - - 0x037C40 0D:BC30: FF        .byte $FF   ; 
- - - - - - 0x037C41 0D:BC31: FF        .byte $FF   ; 
- - - - - - 0x037C42 0D:BC32: FF        .byte $FF   ; 
- - - - - - 0x037C43 0D:BC33: FF        .byte $FF   ; 
- - - - - - 0x037C44 0D:BC34: FF        .byte $FF   ; 
- - - - - - 0x037C45 0D:BC35: FF        .byte $FF   ; 
- - - - - - 0x037C46 0D:BC36: FF        .byte $FF   ; 
- - - - - - 0x037C47 0D:BC37: FF        .byte $FF   ; 
- - - - - - 0x037C48 0D:BC38: FF        .byte $FF   ; 
- - - - - - 0x037C49 0D:BC39: FF        .byte $FF   ; 
- - - - - - 0x037C4A 0D:BC3A: FF        .byte $FF   ; 
- - - - - - 0x037C4B 0D:BC3B: FF        .byte $FF   ; 
- - - - - - 0x037C4C 0D:BC3C: FF        .byte $FF   ; 
- - - - - - 0x037C4D 0D:BC3D: FF        .byte $FF   ; 
- - - - - - 0x037C4E 0D:BC3E: FF        .byte $FF   ; 
- - - - - - 0x037C4F 0D:BC3F: FF        .byte $FF   ; 
- - - - - - 0x037C50 0D:BC40: FF        .byte $FF   ; 
- - - - - - 0x037C51 0D:BC41: FF        .byte $FF   ; 
- - - - - - 0x037C52 0D:BC42: FF        .byte $FF   ; 
- - - - - - 0x037C53 0D:BC43: FF        .byte $FF   ; 
- - - - - - 0x037C54 0D:BC44: FF        .byte $FF   ; 
- - - - - - 0x037C55 0D:BC45: FF        .byte $FF   ; 
- - - - - - 0x037C56 0D:BC46: FF        .byte $FF   ; 
- - - - - - 0x037C57 0D:BC47: FF        .byte $FF   ; 
- - - - - - 0x037C58 0D:BC48: FF        .byte $FF   ; 
- - - - - - 0x037C59 0D:BC49: FF        .byte $FF   ; 
- - - - - - 0x037C5A 0D:BC4A: FF        .byte $FF   ; 
- - - - - - 0x037C5B 0D:BC4B: FF        .byte $FF   ; 
- - - - - - 0x037C5C 0D:BC4C: FF        .byte $FF   ; 
- - - - - - 0x037C5D 0D:BC4D: FF        .byte $FF   ; 
- - - - - - 0x037C5E 0D:BC4E: FF        .byte $FF   ; 
- - - - - - 0x037C5F 0D:BC4F: FF        .byte $FF   ; 
- - - - - - 0x037C60 0D:BC50: FF        .byte $FF   ; 
- - - - - - 0x037C61 0D:BC51: FF        .byte $FF   ; 
- - - - - - 0x037C62 0D:BC52: FF        .byte $FF   ; 
- - - - - - 0x037C63 0D:BC53: FF        .byte $FF   ; 
- - - - - - 0x037C64 0D:BC54: FF        .byte $FF   ; 
- - - - - - 0x037C65 0D:BC55: FF        .byte $FF   ; 
- - - - - - 0x037C66 0D:BC56: FF        .byte $FF   ; 
- - - - - - 0x037C67 0D:BC57: FF        .byte $FF   ; 
- - - - - - 0x037C68 0D:BC58: FF        .byte $FF   ; 
- - - - - - 0x037C69 0D:BC59: FF        .byte $FF   ; 
- - - - - - 0x037C6A 0D:BC5A: FF        .byte $FF   ; 
- - - - - - 0x037C6B 0D:BC5B: FF        .byte $FF   ; 
- - - - - - 0x037C6C 0D:BC5C: FF        .byte $FF   ; 
- - - - - - 0x037C6D 0D:BC5D: FF        .byte $FF   ; 
- - - - - - 0x037C6E 0D:BC5E: FF        .byte $FF   ; 
- - - - - - 0x037C6F 0D:BC5F: FF        .byte $FF   ; 
- - - - - - 0x037C70 0D:BC60: FF        .byte $FF   ; 
- - - - - - 0x037C71 0D:BC61: FF        .byte $FF   ; 
- - - - - - 0x037C72 0D:BC62: FF        .byte $FF   ; 
- - - - - - 0x037C73 0D:BC63: FF        .byte $FF   ; 
- - - - - - 0x037C74 0D:BC64: FF        .byte $FF   ; 
- - - - - - 0x037C75 0D:BC65: FF        .byte $FF   ; 
- - - - - - 0x037C76 0D:BC66: FF        .byte $FF   ; 
- - - - - - 0x037C77 0D:BC67: FF        .byte $FF   ; 
- - - - - - 0x037C78 0D:BC68: FF        .byte $FF   ; 
- - - - - - 0x037C79 0D:BC69: FF        .byte $FF   ; 
- - - - - - 0x037C7A 0D:BC6A: FF        .byte $FF   ; 
- - - - - - 0x037C7B 0D:BC6B: FF        .byte $FF   ; 
- - - - - - 0x037C7C 0D:BC6C: FF        .byte $FF   ; 
- - - - - - 0x037C7D 0D:BC6D: FF        .byte $FF   ; 
- - - - - - 0x037C7E 0D:BC6E: FF        .byte $FF   ; 
- - - - - - 0x037C7F 0D:BC6F: FF        .byte $FF   ; 
- - - - - - 0x037C80 0D:BC70: FF        .byte $FF   ; 
- - - - - - 0x037C81 0D:BC71: FF        .byte $FF   ; 
- - - - - - 0x037C82 0D:BC72: FF        .byte $FF   ; 
- - - - - - 0x037C83 0D:BC73: FF        .byte $FF   ; 
- - - - - - 0x037C84 0D:BC74: FF        .byte $FF   ; 
- - - - - - 0x037C85 0D:BC75: FF        .byte $FF   ; 
- - - - - - 0x037C86 0D:BC76: FF        .byte $FF   ; 
- - - - - - 0x037C87 0D:BC77: FF        .byte $FF   ; 
- - - - - - 0x037C88 0D:BC78: FF        .byte $FF   ; 
- - - - - - 0x037C89 0D:BC79: FF        .byte $FF   ; 
- - - - - - 0x037C8A 0D:BC7A: FF        .byte $FF   ; 
- - - - - - 0x037C8B 0D:BC7B: FF        .byte $FF   ; 
- - - - - - 0x037C8C 0D:BC7C: FF        .byte $FF   ; 
- - - - - - 0x037C8D 0D:BC7D: FF        .byte $FF   ; 
- - - - - - 0x037C8E 0D:BC7E: FF        .byte $FF   ; 
- - - - - - 0x037C8F 0D:BC7F: FF        .byte $FF   ; 
- - - - - - 0x037C90 0D:BC80: FF        .byte $FF   ; 
- - - - - - 0x037C91 0D:BC81: FF        .byte $FF   ; 
- - - - - - 0x037C92 0D:BC82: FF        .byte $FF   ; 
- - - - - - 0x037C93 0D:BC83: FF        .byte $FF   ; 
- - - - - - 0x037C94 0D:BC84: FF        .byte $FF   ; 
- - - - - - 0x037C95 0D:BC85: FF        .byte $FF   ; 
- - - - - - 0x037C96 0D:BC86: FF        .byte $FF   ; 
- - - - - - 0x037C97 0D:BC87: FF        .byte $FF   ; 
- - - - - - 0x037C98 0D:BC88: FF        .byte $FF   ; 
- - - - - - 0x037C99 0D:BC89: FF        .byte $FF   ; 
- - - - - - 0x037C9A 0D:BC8A: FF        .byte $FF   ; 
- - - - - - 0x037C9B 0D:BC8B: FF        .byte $FF   ; 
- - - - - - 0x037C9C 0D:BC8C: FF        .byte $FF   ; 
- - - - - - 0x037C9D 0D:BC8D: FF        .byte $FF   ; 
- - - - - - 0x037C9E 0D:BC8E: FF        .byte $FF   ; 
- - - - - - 0x037C9F 0D:BC8F: FF        .byte $FF   ; 
- - - - - - 0x037CA0 0D:BC90: FF        .byte $FF   ; 
- - - - - - 0x037CA1 0D:BC91: FF        .byte $FF   ; 
- - - - - - 0x037CA2 0D:BC92: FF        .byte $FF   ; 
- - - - - - 0x037CA3 0D:BC93: FF        .byte $FF   ; 
- - - - - - 0x037CA4 0D:BC94: FF        .byte $FF   ; 
- - - - - - 0x037CA5 0D:BC95: FF        .byte $FF   ; 
- - - - - - 0x037CA6 0D:BC96: FF        .byte $FF   ; 
- - - - - - 0x037CA7 0D:BC97: FF        .byte $FF   ; 
- - - - - - 0x037CA8 0D:BC98: FF        .byte $FF   ; 
- - - - - - 0x037CA9 0D:BC99: FF        .byte $FF   ; 
- - - - - - 0x037CAA 0D:BC9A: FF        .byte $FF   ; 
- - - - - - 0x037CAB 0D:BC9B: FF        .byte $FF   ; 
- - - - - - 0x037CAC 0D:BC9C: FF        .byte $FF   ; 
- - - - - - 0x037CAD 0D:BC9D: FF        .byte $FF   ; 
- - - - - - 0x037CAE 0D:BC9E: FF        .byte $FF   ; 
- - - - - - 0x037CAF 0D:BC9F: FF        .byte $FF   ; 
- - - - - - 0x037CB0 0D:BCA0: FF        .byte $FF   ; 
- - - - - - 0x037CB1 0D:BCA1: FF        .byte $FF   ; 
- - - - - - 0x037CB2 0D:BCA2: FF        .byte $FF   ; 
- - - - - - 0x037CB3 0D:BCA3: FF        .byte $FF   ; 
- - - - - - 0x037CB4 0D:BCA4: FF        .byte $FF   ; 
- - - - - - 0x037CB5 0D:BCA5: FF        .byte $FF   ; 
- - - - - - 0x037CB6 0D:BCA6: FF        .byte $FF   ; 
- - - - - - 0x037CB7 0D:BCA7: FF        .byte $FF   ; 
- - - - - - 0x037CB8 0D:BCA8: FF        .byte $FF   ; 
- - - - - - 0x037CB9 0D:BCA9: FF        .byte $FF   ; 
- - - - - - 0x037CBA 0D:BCAA: FF        .byte $FF   ; 
- - - - - - 0x037CBB 0D:BCAB: FF        .byte $FF   ; 
- - - - - - 0x037CBC 0D:BCAC: FF        .byte $FF   ; 
- - - - - - 0x037CBD 0D:BCAD: FF        .byte $FF   ; 
- - - - - - 0x037CBE 0D:BCAE: FF        .byte $FF   ; 
- - - - - - 0x037CBF 0D:BCAF: FF        .byte $FF   ; 
- - - - - - 0x037CC0 0D:BCB0: FF        .byte $FF   ; 
- - - - - - 0x037CC1 0D:BCB1: FF        .byte $FF   ; 
- - - - - - 0x037CC2 0D:BCB2: FF        .byte $FF   ; 
- - - - - - 0x037CC3 0D:BCB3: FF        .byte $FF   ; 
- - - - - - 0x037CC4 0D:BCB4: FF        .byte $FF   ; 
- - - - - - 0x037CC5 0D:BCB5: FF        .byte $FF   ; 
- - - - - - 0x037CC6 0D:BCB6: FF        .byte $FF   ; 
- - - - - - 0x037CC7 0D:BCB7: FF        .byte $FF   ; 
- - - - - - 0x037CC8 0D:BCB8: FF        .byte $FF   ; 
- - - - - - 0x037CC9 0D:BCB9: FF        .byte $FF   ; 
- - - - - - 0x037CCA 0D:BCBA: FF        .byte $FF   ; 
- - - - - - 0x037CCB 0D:BCBB: FF        .byte $FF   ; 
- - - - - - 0x037CCC 0D:BCBC: FF        .byte $FF   ; 
- - - - - - 0x037CCD 0D:BCBD: FF        .byte $FF   ; 
- - - - - - 0x037CCE 0D:BCBE: FF        .byte $FF   ; 
- - - - - - 0x037CCF 0D:BCBF: FF        .byte $FF   ; 
- - - - - - 0x037CD0 0D:BCC0: FF        .byte $FF   ; 
- - - - - - 0x037CD1 0D:BCC1: FF        .byte $FF   ; 
- - - - - - 0x037CD2 0D:BCC2: FF        .byte $FF   ; 
- - - - - - 0x037CD3 0D:BCC3: FF        .byte $FF   ; 
- - - - - - 0x037CD4 0D:BCC4: FF        .byte $FF   ; 
- - - - - - 0x037CD5 0D:BCC5: FF        .byte $FF   ; 
- - - - - - 0x037CD6 0D:BCC6: FF        .byte $FF   ; 
- - - - - - 0x037CD7 0D:BCC7: FF        .byte $FF   ; 
- - - - - - 0x037CD8 0D:BCC8: FF        .byte $FF   ; 
- - - - - - 0x037CD9 0D:BCC9: FF        .byte $FF   ; 
- - - - - - 0x037CDA 0D:BCCA: FF        .byte $FF   ; 
- - - - - - 0x037CDB 0D:BCCB: FF        .byte $FF   ; 
- - - - - - 0x037CDC 0D:BCCC: FF        .byte $FF   ; 
- - - - - - 0x037CDD 0D:BCCD: FF        .byte $FF   ; 
- - - - - - 0x037CDE 0D:BCCE: FF        .byte $FF   ; 
- - - - - - 0x037CDF 0D:BCCF: FF        .byte $FF   ; 
- - - - - - 0x037CE0 0D:BCD0: FF        .byte $FF   ; 
- - - - - - 0x037CE1 0D:BCD1: FF        .byte $FF   ; 
- - - - - - 0x037CE2 0D:BCD2: FF        .byte $FF   ; 
- - - - - - 0x037CE3 0D:BCD3: FF        .byte $FF   ; 
- - - - - - 0x037CE4 0D:BCD4: FF        .byte $FF   ; 
- - - - - - 0x037CE5 0D:BCD5: FF        .byte $FF   ; 
- - - - - - 0x037CE6 0D:BCD6: FF        .byte $FF   ; 
- - - - - - 0x037CE7 0D:BCD7: FF        .byte $FF   ; 
- - - - - - 0x037CE8 0D:BCD8: FF        .byte $FF   ; 
- - - - - - 0x037CE9 0D:BCD9: FF        .byte $FF   ; 
- - - - - - 0x037CEA 0D:BCDA: FF        .byte $FF   ; 
- - - - - - 0x037CEB 0D:BCDB: FF        .byte $FF   ; 
- - - - - - 0x037CEC 0D:BCDC: FF        .byte $FF   ; 
- - - - - - 0x037CED 0D:BCDD: FF        .byte $FF   ; 
- - - - - - 0x037CEE 0D:BCDE: FF        .byte $FF   ; 
- - - - - - 0x037CEF 0D:BCDF: FF        .byte $FF   ; 
- - - - - - 0x037CF0 0D:BCE0: FF        .byte $FF   ; 
- - - - - - 0x037CF1 0D:BCE1: FF        .byte $FF   ; 
- - - - - - 0x037CF2 0D:BCE2: FF        .byte $FF   ; 
- - - - - - 0x037CF3 0D:BCE3: FF        .byte $FF   ; 
- - - - - - 0x037CF4 0D:BCE4: FF        .byte $FF   ; 
- - - - - - 0x037CF5 0D:BCE5: FF        .byte $FF   ; 
- - - - - - 0x037CF6 0D:BCE6: FF        .byte $FF   ; 
- - - - - - 0x037CF7 0D:BCE7: FF        .byte $FF   ; 
- - - - - - 0x037CF8 0D:BCE8: FF        .byte $FF   ; 
- - - - - - 0x037CF9 0D:BCE9: FF        .byte $FF   ; 
- - - - - - 0x037CFA 0D:BCEA: FF        .byte $FF   ; 
- - - - - - 0x037CFB 0D:BCEB: FF        .byte $FF   ; 
- - - - - - 0x037CFC 0D:BCEC: FF        .byte $FF   ; 
- - - - - - 0x037CFD 0D:BCED: FF        .byte $FF   ; 
- - - - - - 0x037CFE 0D:BCEE: FF        .byte $FF   ; 
- - - - - - 0x037CFF 0D:BCEF: FF        .byte $FF   ; 
- - - - - - 0x037D00 0D:BCF0: FF        .byte $FF   ; 
- - - - - - 0x037D01 0D:BCF1: FF        .byte $FF   ; 
- - - - - - 0x037D02 0D:BCF2: FF        .byte $FF   ; 
- - - - - - 0x037D03 0D:BCF3: FF        .byte $FF   ; 
- - - - - - 0x037D04 0D:BCF4: FF        .byte $FF   ; 
- - - - - - 0x037D05 0D:BCF5: FF        .byte $FF   ; 
- - - - - - 0x037D06 0D:BCF6: FF        .byte $FF   ; 
- - - - - - 0x037D07 0D:BCF7: FF        .byte $FF   ; 
- - - - - - 0x037D08 0D:BCF8: FF        .byte $FF   ; 
- - - - - - 0x037D09 0D:BCF9: FF        .byte $FF   ; 
- - - - - - 0x037D0A 0D:BCFA: FF        .byte $FF   ; 
- - - - - - 0x037D0B 0D:BCFB: FF        .byte $FF   ; 
- - - - - - 0x037D0C 0D:BCFC: FF        .byte $FF   ; 
- - - - - - 0x037D0D 0D:BCFD: FF        .byte $FF   ; 
- - - - - - 0x037D0E 0D:BCFE: FF        .byte $FF   ; 
- - - - - - 0x037D0F 0D:BCFF: FF        .byte $FF   ; 
- - - - - - 0x037D10 0D:BD00: FF        .byte $FF   ; 
- - - - - - 0x037D11 0D:BD01: FF        .byte $FF   ; 
- - - - - - 0x037D12 0D:BD02: FF        .byte $FF   ; 
- - - - - - 0x037D13 0D:BD03: FF        .byte $FF   ; 
- - - - - - 0x037D14 0D:BD04: FF        .byte $FF   ; 
- - - - - - 0x037D15 0D:BD05: FF        .byte $FF   ; 
- - - - - - 0x037D16 0D:BD06: FF        .byte $FF   ; 
- - - - - - 0x037D17 0D:BD07: FF        .byte $FF   ; 
- - - - - - 0x037D18 0D:BD08: FF        .byte $FF   ; 
- - - - - - 0x037D19 0D:BD09: FF        .byte $FF   ; 
- - - - - - 0x037D1A 0D:BD0A: FF        .byte $FF   ; 
- - - - - - 0x037D1B 0D:BD0B: FF        .byte $FF   ; 
- - - - - - 0x037D1C 0D:BD0C: FF        .byte $FF   ; 
- - - - - - 0x037D1D 0D:BD0D: FF        .byte $FF   ; 
- - - - - - 0x037D1E 0D:BD0E: FF        .byte $FF   ; 
- - - - - - 0x037D1F 0D:BD0F: FF        .byte $FF   ; 
- - - - - - 0x037D20 0D:BD10: FF        .byte $FF   ; 
- - - - - - 0x037D21 0D:BD11: FF        .byte $FF   ; 
- - - - - - 0x037D22 0D:BD12: FF        .byte $FF   ; 
- - - - - - 0x037D23 0D:BD13: FF        .byte $FF   ; 
- - - - - - 0x037D24 0D:BD14: FF        .byte $FF   ; 
- - - - - - 0x037D25 0D:BD15: FF        .byte $FF   ; 
- - - - - - 0x037D26 0D:BD16: FF        .byte $FF   ; 
- - - - - - 0x037D27 0D:BD17: FF        .byte $FF   ; 
- - - - - - 0x037D28 0D:BD18: FF        .byte $FF   ; 
- - - - - - 0x037D29 0D:BD19: FF        .byte $FF   ; 
- - - - - - 0x037D2A 0D:BD1A: FF        .byte $FF   ; 
- - - - - - 0x037D2B 0D:BD1B: FF        .byte $FF   ; 
- - - - - - 0x037D2C 0D:BD1C: FF        .byte $FF   ; 
- - - - - - 0x037D2D 0D:BD1D: FF        .byte $FF   ; 
- - - - - - 0x037D2E 0D:BD1E: FF        .byte $FF   ; 
- - - - - - 0x037D2F 0D:BD1F: FF        .byte $FF   ; 
- - - - - - 0x037D30 0D:BD20: FF        .byte $FF   ; 
- - - - - - 0x037D31 0D:BD21: FF        .byte $FF   ; 
- - - - - - 0x037D32 0D:BD22: FF        .byte $FF   ; 
- - - - - - 0x037D33 0D:BD23: FF        .byte $FF   ; 
- - - - - - 0x037D34 0D:BD24: FF        .byte $FF   ; 
- - - - - - 0x037D35 0D:BD25: FF        .byte $FF   ; 
- - - - - - 0x037D36 0D:BD26: FF        .byte $FF   ; 
- - - - - - 0x037D37 0D:BD27: FF        .byte $FF   ; 
- - - - - - 0x037D38 0D:BD28: FF        .byte $FF   ; 
- - - - - - 0x037D39 0D:BD29: FF        .byte $FF   ; 
- - - - - - 0x037D3A 0D:BD2A: FF        .byte $FF   ; 
- - - - - - 0x037D3B 0D:BD2B: FF        .byte $FF   ; 
- - - - - - 0x037D3C 0D:BD2C: FF        .byte $FF   ; 
- - - - - - 0x037D3D 0D:BD2D: FF        .byte $FF   ; 
- - - - - - 0x037D3E 0D:BD2E: FF        .byte $FF   ; 
- - - - - - 0x037D3F 0D:BD2F: FF        .byte $FF   ; 
- - - - - - 0x037D40 0D:BD30: FF        .byte $FF   ; 
- - - - - - 0x037D41 0D:BD31: FF        .byte $FF   ; 
- - - - - - 0x037D42 0D:BD32: FF        .byte $FF   ; 
- - - - - - 0x037D43 0D:BD33: FF        .byte $FF   ; 
- - - - - - 0x037D44 0D:BD34: FF        .byte $FF   ; 
- - - - - - 0x037D45 0D:BD35: FF        .byte $FF   ; 
- - - - - - 0x037D46 0D:BD36: FF        .byte $FF   ; 
- - - - - - 0x037D47 0D:BD37: FF        .byte $FF   ; 
- - - - - - 0x037D48 0D:BD38: FF        .byte $FF   ; 
- - - - - - 0x037D49 0D:BD39: FF        .byte $FF   ; 
- - - - - - 0x037D4A 0D:BD3A: FF        .byte $FF   ; 
- - - - - - 0x037D4B 0D:BD3B: FF        .byte $FF   ; 
- - - - - - 0x037D4C 0D:BD3C: FF        .byte $FF   ; 
- - - - - - 0x037D4D 0D:BD3D: FF        .byte $FF   ; 
- - - - - - 0x037D4E 0D:BD3E: FF        .byte $FF   ; 
- - - - - - 0x037D4F 0D:BD3F: FF        .byte $FF   ; 
- - - - - - 0x037D50 0D:BD40: FF        .byte $FF   ; 
- - - - - - 0x037D51 0D:BD41: FF        .byte $FF   ; 
- - - - - - 0x037D52 0D:BD42: FF        .byte $FF   ; 
- - - - - - 0x037D53 0D:BD43: FF        .byte $FF   ; 
- - - - - - 0x037D54 0D:BD44: FF        .byte $FF   ; 
- - - - - - 0x037D55 0D:BD45: FF        .byte $FF   ; 
- - - - - - 0x037D56 0D:BD46: FF        .byte $FF   ; 
- - - - - - 0x037D57 0D:BD47: FF        .byte $FF   ; 
- - - - - - 0x037D58 0D:BD48: FF        .byte $FF   ; 
- - - - - - 0x037D59 0D:BD49: FF        .byte $FF   ; 
- - - - - - 0x037D5A 0D:BD4A: FF        .byte $FF   ; 
- - - - - - 0x037D5B 0D:BD4B: FF        .byte $FF   ; 
- - - - - - 0x037D5C 0D:BD4C: FF        .byte $FF   ; 
- - - - - - 0x037D5D 0D:BD4D: FF        .byte $FF   ; 
- - - - - - 0x037D5E 0D:BD4E: FF        .byte $FF   ; 
- - - - - - 0x037D5F 0D:BD4F: FF        .byte $FF   ; 
- - - - - - 0x037D60 0D:BD50: FF        .byte $FF   ; 
- - - - - - 0x037D61 0D:BD51: FF        .byte $FF   ; 
- - - - - - 0x037D62 0D:BD52: FF        .byte $FF   ; 
- - - - - - 0x037D63 0D:BD53: FF        .byte $FF   ; 
- - - - - - 0x037D64 0D:BD54: FF        .byte $FF   ; 
- - - - - - 0x037D65 0D:BD55: FF        .byte $FF   ; 
- - - - - - 0x037D66 0D:BD56: FF        .byte $FF   ; 
- - - - - - 0x037D67 0D:BD57: FF        .byte $FF   ; 
- - - - - - 0x037D68 0D:BD58: FF        .byte $FF   ; 
- - - - - - 0x037D69 0D:BD59: FF        .byte $FF   ; 
- - - - - - 0x037D6A 0D:BD5A: FF        .byte $FF   ; 
- - - - - - 0x037D6B 0D:BD5B: FF        .byte $FF   ; 
- - - - - - 0x037D6C 0D:BD5C: FF        .byte $FF   ; 
- - - - - - 0x037D6D 0D:BD5D: FF        .byte $FF   ; 
- - - - - - 0x037D6E 0D:BD5E: FF        .byte $FF   ; 
- - - - - - 0x037D6F 0D:BD5F: FF        .byte $FF   ; 
- - - - - - 0x037D70 0D:BD60: FF        .byte $FF   ; 
- - - - - - 0x037D71 0D:BD61: FF        .byte $FF   ; 
- - - - - - 0x037D72 0D:BD62: FF        .byte $FF   ; 
- - - - - - 0x037D73 0D:BD63: FF        .byte $FF   ; 
- - - - - - 0x037D74 0D:BD64: FF        .byte $FF   ; 
- - - - - - 0x037D75 0D:BD65: FF        .byte $FF   ; 
- - - - - - 0x037D76 0D:BD66: FF        .byte $FF   ; 
- - - - - - 0x037D77 0D:BD67: FF        .byte $FF   ; 
- - - - - - 0x037D78 0D:BD68: FF        .byte $FF   ; 
- - - - - - 0x037D79 0D:BD69: FF        .byte $FF   ; 
- - - - - - 0x037D7A 0D:BD6A: FF        .byte $FF   ; 
- - - - - - 0x037D7B 0D:BD6B: FF        .byte $FF   ; 
- - - - - - 0x037D7C 0D:BD6C: FF        .byte $FF   ; 
- - - - - - 0x037D7D 0D:BD6D: FF        .byte $FF   ; 
- - - - - - 0x037D7E 0D:BD6E: FF        .byte $FF   ; 
- - - - - - 0x037D7F 0D:BD6F: FF        .byte $FF   ; 
- - - - - - 0x037D80 0D:BD70: FF        .byte $FF   ; 
- - - - - - 0x037D81 0D:BD71: FF        .byte $FF   ; 
- - - - - - 0x037D82 0D:BD72: FF        .byte $FF   ; 
- - - - - - 0x037D83 0D:BD73: FF        .byte $FF   ; 
- - - - - - 0x037D84 0D:BD74: FF        .byte $FF   ; 
- - - - - - 0x037D85 0D:BD75: FF        .byte $FF   ; 
- - - - - - 0x037D86 0D:BD76: FF        .byte $FF   ; 
- - - - - - 0x037D87 0D:BD77: FF        .byte $FF   ; 
- - - - - - 0x037D88 0D:BD78: FF        .byte $FF   ; 
- - - - - - 0x037D89 0D:BD79: FF        .byte $FF   ; 
- - - - - - 0x037D8A 0D:BD7A: FF        .byte $FF   ; 
- - - - - - 0x037D8B 0D:BD7B: FF        .byte $FF   ; 
- - - - - - 0x037D8C 0D:BD7C: FF        .byte $FF   ; 
- - - - - - 0x037D8D 0D:BD7D: FF        .byte $FF   ; 
- - - - - - 0x037D8E 0D:BD7E: FF        .byte $FF   ; 
- - - - - - 0x037D8F 0D:BD7F: FF        .byte $FF   ; 
- - - - - - 0x037D90 0D:BD80: FF        .byte $FF   ; 
- - - - - - 0x037D91 0D:BD81: FF        .byte $FF   ; 
- - - - - - 0x037D92 0D:BD82: FF        .byte $FF   ; 
- - - - - - 0x037D93 0D:BD83: FF        .byte $FF   ; 
- - - - - - 0x037D94 0D:BD84: FF        .byte $FF   ; 
- - - - - - 0x037D95 0D:BD85: FF        .byte $FF   ; 
- - - - - - 0x037D96 0D:BD86: FF        .byte $FF   ; 
- - - - - - 0x037D97 0D:BD87: FF        .byte $FF   ; 
- - - - - - 0x037D98 0D:BD88: FF        .byte $FF   ; 
- - - - - - 0x037D99 0D:BD89: FF        .byte $FF   ; 
- - - - - - 0x037D9A 0D:BD8A: FF        .byte $FF   ; 
- - - - - - 0x037D9B 0D:BD8B: FF        .byte $FF   ; 
- - - - - - 0x037D9C 0D:BD8C: FF        .byte $FF   ; 
- - - - - - 0x037D9D 0D:BD8D: FF        .byte $FF   ; 
- - - - - - 0x037D9E 0D:BD8E: FF        .byte $FF   ; 
- - - - - - 0x037D9F 0D:BD8F: FF        .byte $FF   ; 
- - - - - - 0x037DA0 0D:BD90: FF        .byte $FF   ; 
- - - - - - 0x037DA1 0D:BD91: FF        .byte $FF   ; 
- - - - - - 0x037DA2 0D:BD92: FF        .byte $FF   ; 
- - - - - - 0x037DA3 0D:BD93: FF        .byte $FF   ; 
- - - - - - 0x037DA4 0D:BD94: FF        .byte $FF   ; 
- - - - - - 0x037DA5 0D:BD95: FF        .byte $FF   ; 
- - - - - - 0x037DA6 0D:BD96: FF        .byte $FF   ; 
- - - - - - 0x037DA7 0D:BD97: FF        .byte $FF   ; 
- - - - - - 0x037DA8 0D:BD98: FF        .byte $FF   ; 
- - - - - - 0x037DA9 0D:BD99: FF        .byte $FF   ; 
- - - - - - 0x037DAA 0D:BD9A: FF        .byte $FF   ; 
- - - - - - 0x037DAB 0D:BD9B: FF        .byte $FF   ; 
- - - - - - 0x037DAC 0D:BD9C: FF        .byte $FF   ; 
- - - - - - 0x037DAD 0D:BD9D: FF        .byte $FF   ; 
- - - - - - 0x037DAE 0D:BD9E: FF        .byte $FF   ; 
- - - - - - 0x037DAF 0D:BD9F: FF        .byte $FF   ; 
- - - - - - 0x037DB0 0D:BDA0: FF        .byte $FF   ; 
- - - - - - 0x037DB1 0D:BDA1: FF        .byte $FF   ; 
- - - - - - 0x037DB2 0D:BDA2: FF        .byte $FF   ; 
- - - - - - 0x037DB3 0D:BDA3: FF        .byte $FF   ; 
- - - - - - 0x037DB4 0D:BDA4: FF        .byte $FF   ; 
- - - - - - 0x037DB5 0D:BDA5: FF        .byte $FF   ; 
- - - - - - 0x037DB6 0D:BDA6: FF        .byte $FF   ; 
- - - - - - 0x037DB7 0D:BDA7: FF        .byte $FF   ; 
- - - - - - 0x037DB8 0D:BDA8: FF        .byte $FF   ; 
- - - - - - 0x037DB9 0D:BDA9: FF        .byte $FF   ; 
- - - - - - 0x037DBA 0D:BDAA: FF        .byte $FF   ; 
- - - - - - 0x037DBB 0D:BDAB: FF        .byte $FF   ; 
- - - - - - 0x037DBC 0D:BDAC: FF        .byte $FF   ; 
- - - - - - 0x037DBD 0D:BDAD: FF        .byte $FF   ; 
- - - - - - 0x037DBE 0D:BDAE: FF        .byte $FF   ; 
- - - - - - 0x037DBF 0D:BDAF: FF        .byte $FF   ; 
- - - - - - 0x037DC0 0D:BDB0: FF        .byte $FF   ; 
- - - - - - 0x037DC1 0D:BDB1: FF        .byte $FF   ; 
- - - - - - 0x037DC2 0D:BDB2: FF        .byte $FF   ; 
- - - - - - 0x037DC3 0D:BDB3: FF        .byte $FF   ; 
- - - - - - 0x037DC4 0D:BDB4: FF        .byte $FF   ; 
- - - - - - 0x037DC5 0D:BDB5: FF        .byte $FF   ; 
- - - - - - 0x037DC6 0D:BDB6: FF        .byte $FF   ; 
- - - - - - 0x037DC7 0D:BDB7: FF        .byte $FF   ; 
- - - - - - 0x037DC8 0D:BDB8: FF        .byte $FF   ; 
- - - - - - 0x037DC9 0D:BDB9: FF        .byte $FF   ; 
- - - - - - 0x037DCA 0D:BDBA: FF        .byte $FF   ; 
- - - - - - 0x037DCB 0D:BDBB: FF        .byte $FF   ; 
- - - - - - 0x037DCC 0D:BDBC: FF        .byte $FF   ; 
- - - - - - 0x037DCD 0D:BDBD: FF        .byte $FF   ; 
- - - - - - 0x037DCE 0D:BDBE: FF        .byte $FF   ; 
- - - - - - 0x037DCF 0D:BDBF: FF        .byte $FF   ; 
- - - - - - 0x037DD0 0D:BDC0: FF        .byte $FF   ; 
- - - - - - 0x037DD1 0D:BDC1: FF        .byte $FF   ; 
- - - - - - 0x037DD2 0D:BDC2: FF        .byte $FF   ; 
- - - - - - 0x037DD3 0D:BDC3: FF        .byte $FF   ; 
- - - - - - 0x037DD4 0D:BDC4: FF        .byte $FF   ; 
- - - - - - 0x037DD5 0D:BDC5: FF        .byte $FF   ; 
- - - - - - 0x037DD6 0D:BDC6: FF        .byte $FF   ; 
- - - - - - 0x037DD7 0D:BDC7: FF        .byte $FF   ; 
- - - - - - 0x037DD8 0D:BDC8: FF        .byte $FF   ; 
- - - - - - 0x037DD9 0D:BDC9: FF        .byte $FF   ; 
- - - - - - 0x037DDA 0D:BDCA: FF        .byte $FF   ; 
- - - - - - 0x037DDB 0D:BDCB: FF        .byte $FF   ; 
- - - - - - 0x037DDC 0D:BDCC: FF        .byte $FF   ; 
- - - - - - 0x037DDD 0D:BDCD: FF        .byte $FF   ; 
- - - - - - 0x037DDE 0D:BDCE: FF        .byte $FF   ; 
- - - - - - 0x037DDF 0D:BDCF: FF        .byte $FF   ; 
- - - - - - 0x037DE0 0D:BDD0: FF        .byte $FF   ; 
- - - - - - 0x037DE1 0D:BDD1: FF        .byte $FF   ; 
- - - - - - 0x037DE2 0D:BDD2: FF        .byte $FF   ; 
- - - - - - 0x037DE3 0D:BDD3: FF        .byte $FF   ; 
- - - - - - 0x037DE4 0D:BDD4: FF        .byte $FF   ; 
- - - - - - 0x037DE5 0D:BDD5: FF        .byte $FF   ; 
- - - - - - 0x037DE6 0D:BDD6: FF        .byte $FF   ; 
- - - - - - 0x037DE7 0D:BDD7: FF        .byte $FF   ; 
- - - - - - 0x037DE8 0D:BDD8: FF        .byte $FF   ; 
- - - - - - 0x037DE9 0D:BDD9: FF        .byte $FF   ; 
- - - - - - 0x037DEA 0D:BDDA: FF        .byte $FF   ; 
- - - - - - 0x037DEB 0D:BDDB: FF        .byte $FF   ; 
- - - - - - 0x037DEC 0D:BDDC: FF        .byte $FF   ; 
- - - - - - 0x037DED 0D:BDDD: FF        .byte $FF   ; 
- - - - - - 0x037DEE 0D:BDDE: FF        .byte $FF   ; 
- - - - - - 0x037DEF 0D:BDDF: FF        .byte $FF   ; 
- - - - - - 0x037DF0 0D:BDE0: FF        .byte $FF   ; 
- - - - - - 0x037DF1 0D:BDE1: FF        .byte $FF   ; 
- - - - - - 0x037DF2 0D:BDE2: FF        .byte $FF   ; 
- - - - - - 0x037DF3 0D:BDE3: FF        .byte $FF   ; 
- - - - - - 0x037DF4 0D:BDE4: FF        .byte $FF   ; 
- - - - - - 0x037DF5 0D:BDE5: FF        .byte $FF   ; 
- - - - - - 0x037DF6 0D:BDE6: FF        .byte $FF   ; 
- - - - - - 0x037DF7 0D:BDE7: FF        .byte $FF   ; 
- - - - - - 0x037DF8 0D:BDE8: FF        .byte $FF   ; 
- - - - - - 0x037DF9 0D:BDE9: FF        .byte $FF   ; 
- - - - - - 0x037DFA 0D:BDEA: FF        .byte $FF   ; 
- - - - - - 0x037DFB 0D:BDEB: FF        .byte $FF   ; 
- - - - - - 0x037DFC 0D:BDEC: FF        .byte $FF   ; 
- - - - - - 0x037DFD 0D:BDED: FF        .byte $FF   ; 
- - - - - - 0x037DFE 0D:BDEE: FF        .byte $FF   ; 
- - - - - - 0x037DFF 0D:BDEF: FF        .byte $FF   ; 
- - - - - - 0x037E00 0D:BDF0: FF        .byte $FF   ; 
- - - - - - 0x037E01 0D:BDF1: FF        .byte $FF   ; 
- - - - - - 0x037E02 0D:BDF2: FF        .byte $FF   ; 
- - - - - - 0x037E03 0D:BDF3: FF        .byte $FF   ; 
- - - - - - 0x037E04 0D:BDF4: FF        .byte $FF   ; 
- - - - - - 0x037E05 0D:BDF5: FF        .byte $FF   ; 
- - - - - - 0x037E06 0D:BDF6: FF        .byte $FF   ; 
- - - - - - 0x037E07 0D:BDF7: FF        .byte $FF   ; 
- - - - - - 0x037E08 0D:BDF8: FF        .byte $FF   ; 
- - - - - - 0x037E09 0D:BDF9: FF        .byte $FF   ; 
- - - - - - 0x037E0A 0D:BDFA: FF        .byte $FF   ; 
- - - - - - 0x037E0B 0D:BDFB: FF        .byte $FF   ; 
- - - - - - 0x037E0C 0D:BDFC: FF        .byte $FF   ; 
- - - - - - 0x037E0D 0D:BDFD: FF        .byte $FF   ; 
- - - - - - 0x037E0E 0D:BDFE: FF        .byte $FF   ; 
- - - - - - 0x037E0F 0D:BDFF: FF        .byte $FF   ; 
- - - - - - 0x037E10 0D:BE00: FF        .byte $FF   ; 
- - - - - - 0x037E11 0D:BE01: FF        .byte $FF   ; 
- - - - - - 0x037E12 0D:BE02: FF        .byte $FF   ; 
- - - - - - 0x037E13 0D:BE03: FF        .byte $FF   ; 
- - - - - - 0x037E14 0D:BE04: FF        .byte $FF   ; 
- - - - - - 0x037E15 0D:BE05: FF        .byte $FF   ; 
- - - - - - 0x037E16 0D:BE06: FF        .byte $FF   ; 
- - - - - - 0x037E17 0D:BE07: FF        .byte $FF   ; 
- - - - - - 0x037E18 0D:BE08: FF        .byte $FF   ; 
- - - - - - 0x037E19 0D:BE09: FF        .byte $FF   ; 
- - - - - - 0x037E1A 0D:BE0A: FF        .byte $FF   ; 
- - - - - - 0x037E1B 0D:BE0B: FF        .byte $FF   ; 
- - - - - - 0x037E1C 0D:BE0C: FF        .byte $FF   ; 
- - - - - - 0x037E1D 0D:BE0D: FF        .byte $FF   ; 
- - - - - - 0x037E1E 0D:BE0E: FF        .byte $FF   ; 
- - - - - - 0x037E1F 0D:BE0F: FF        .byte $FF   ; 
- - - - - - 0x037E20 0D:BE10: FF        .byte $FF   ; 
- - - - - - 0x037E21 0D:BE11: FF        .byte $FF   ; 
- - - - - - 0x037E22 0D:BE12: FF        .byte $FF   ; 
- - - - - - 0x037E23 0D:BE13: FF        .byte $FF   ; 
- - - - - - 0x037E24 0D:BE14: FF        .byte $FF   ; 
- - - - - - 0x037E25 0D:BE15: FF        .byte $FF   ; 
- - - - - - 0x037E26 0D:BE16: FF        .byte $FF   ; 
- - - - - - 0x037E27 0D:BE17: FF        .byte $FF   ; 
- - - - - - 0x037E28 0D:BE18: FF        .byte $FF   ; 
- - - - - - 0x037E29 0D:BE19: FF        .byte $FF   ; 
- - - - - - 0x037E2A 0D:BE1A: FF        .byte $FF   ; 
- - - - - - 0x037E2B 0D:BE1B: FF        .byte $FF   ; 
- - - - - - 0x037E2C 0D:BE1C: FF        .byte $FF   ; 
- - - - - - 0x037E2D 0D:BE1D: FF        .byte $FF   ; 
- - - - - - 0x037E2E 0D:BE1E: FF        .byte $FF   ; 
- - - - - - 0x037E2F 0D:BE1F: FF        .byte $FF   ; 
- - - - - - 0x037E30 0D:BE20: FF        .byte $FF   ; 
- - - - - - 0x037E31 0D:BE21: FF        .byte $FF   ; 
- - - - - - 0x037E32 0D:BE22: FF        .byte $FF   ; 
- - - - - - 0x037E33 0D:BE23: FF        .byte $FF   ; 
- - - - - - 0x037E34 0D:BE24: FF        .byte $FF   ; 
- - - - - - 0x037E35 0D:BE25: FF        .byte $FF   ; 
- - - - - - 0x037E36 0D:BE26: FF        .byte $FF   ; 
- - - - - - 0x037E37 0D:BE27: FF        .byte $FF   ; 
- - - - - - 0x037E38 0D:BE28: FF        .byte $FF   ; 
- - - - - - 0x037E39 0D:BE29: FF        .byte $FF   ; 
- - - - - - 0x037E3A 0D:BE2A: FF        .byte $FF   ; 
- - - - - - 0x037E3B 0D:BE2B: FF        .byte $FF   ; 
- - - - - - 0x037E3C 0D:BE2C: FF        .byte $FF   ; 
- - - - - - 0x037E3D 0D:BE2D: FF        .byte $FF   ; 
- - - - - - 0x037E3E 0D:BE2E: FF        .byte $FF   ; 
- - - - - - 0x037E3F 0D:BE2F: FF        .byte $FF   ; 
- - - - - - 0x037E40 0D:BE30: FF        .byte $FF   ; 
- - - - - - 0x037E41 0D:BE31: FF        .byte $FF   ; 
- - - - - - 0x037E42 0D:BE32: FF        .byte $FF   ; 
- - - - - - 0x037E43 0D:BE33: FF        .byte $FF   ; 
- - - - - - 0x037E44 0D:BE34: FF        .byte $FF   ; 
- - - - - - 0x037E45 0D:BE35: FF        .byte $FF   ; 
- - - - - - 0x037E46 0D:BE36: FF        .byte $FF   ; 
- - - - - - 0x037E47 0D:BE37: FF        .byte $FF   ; 
- - - - - - 0x037E48 0D:BE38: FF        .byte $FF   ; 
- - - - - - 0x037E49 0D:BE39: FF        .byte $FF   ; 
- - - - - - 0x037E4A 0D:BE3A: FF        .byte $FF   ; 
- - - - - - 0x037E4B 0D:BE3B: FF        .byte $FF   ; 
- - - - - - 0x037E4C 0D:BE3C: FF        .byte $FF   ; 
- - - - - - 0x037E4D 0D:BE3D: FF        .byte $FF   ; 
- - - - - - 0x037E4E 0D:BE3E: FF        .byte $FF   ; 
- - - - - - 0x037E4F 0D:BE3F: FF        .byte $FF   ; 
- - - - - - 0x037E50 0D:BE40: FF        .byte $FF   ; 
- - - - - - 0x037E51 0D:BE41: FF        .byte $FF   ; 
- - - - - - 0x037E52 0D:BE42: FF        .byte $FF   ; 
- - - - - - 0x037E53 0D:BE43: FF        .byte $FF   ; 
- - - - - - 0x037E54 0D:BE44: FF        .byte $FF   ; 
- - - - - - 0x037E55 0D:BE45: FF        .byte $FF   ; 
- - - - - - 0x037E56 0D:BE46: FF        .byte $FF   ; 
- - - - - - 0x037E57 0D:BE47: FF        .byte $FF   ; 
- - - - - - 0x037E58 0D:BE48: FF        .byte $FF   ; 
- - - - - - 0x037E59 0D:BE49: FF        .byte $FF   ; 
- - - - - - 0x037E5A 0D:BE4A: FF        .byte $FF   ; 
- - - - - - 0x037E5B 0D:BE4B: FF        .byte $FF   ; 
- - - - - - 0x037E5C 0D:BE4C: FF        .byte $FF   ; 
- - - - - - 0x037E5D 0D:BE4D: FF        .byte $FF   ; 
- - - - - - 0x037E5E 0D:BE4E: FF        .byte $FF   ; 
- - - - - - 0x037E5F 0D:BE4F: FF        .byte $FF   ; 
- - - - - - 0x037E60 0D:BE50: FF        .byte $FF   ; 
- - - - - - 0x037E61 0D:BE51: FF        .byte $FF   ; 
- - - - - - 0x037E62 0D:BE52: FF        .byte $FF   ; 
- - - - - - 0x037E63 0D:BE53: FF        .byte $FF   ; 
- - - - - - 0x037E64 0D:BE54: FF        .byte $FF   ; 
- - - - - - 0x037E65 0D:BE55: FF        .byte $FF   ; 
- - - - - - 0x037E66 0D:BE56: FF        .byte $FF   ; 
- - - - - - 0x037E67 0D:BE57: FF        .byte $FF   ; 
- - - - - - 0x037E68 0D:BE58: FF        .byte $FF   ; 
- - - - - - 0x037E69 0D:BE59: FF        .byte $FF   ; 
- - - - - - 0x037E6A 0D:BE5A: FF        .byte $FF   ; 
- - - - - - 0x037E6B 0D:BE5B: FF        .byte $FF   ; 
- - - - - - 0x037E6C 0D:BE5C: FF        .byte $FF   ; 
- - - - - - 0x037E6D 0D:BE5D: FF        .byte $FF   ; 
- - - - - - 0x037E6E 0D:BE5E: FF        .byte $FF   ; 
- - - - - - 0x037E6F 0D:BE5F: FF        .byte $FF   ; 
- - - - - - 0x037E70 0D:BE60: FF        .byte $FF   ; 
- - - - - - 0x037E71 0D:BE61: FF        .byte $FF   ; 
- - - - - - 0x037E72 0D:BE62: FF        .byte $FF   ; 
- - - - - - 0x037E73 0D:BE63: FF        .byte $FF   ; 
- - - - - - 0x037E74 0D:BE64: FF        .byte $FF   ; 
- - - - - - 0x037E75 0D:BE65: FF        .byte $FF   ; 
- - - - - - 0x037E76 0D:BE66: FF        .byte $FF   ; 
- - - - - - 0x037E77 0D:BE67: FF        .byte $FF   ; 
- - - - - - 0x037E78 0D:BE68: FF        .byte $FF   ; 
- - - - - - 0x037E79 0D:BE69: FF        .byte $FF   ; 
- - - - - - 0x037E7A 0D:BE6A: FF        .byte $FF   ; 
- - - - - - 0x037E7B 0D:BE6B: FF        .byte $FF   ; 
- - - - - - 0x037E7C 0D:BE6C: FF        .byte $FF   ; 
- - - - - - 0x037E7D 0D:BE6D: FF        .byte $FF   ; 
- - - - - - 0x037E7E 0D:BE6E: FF        .byte $FF   ; 
- - - - - - 0x037E7F 0D:BE6F: FF        .byte $FF   ; 
- - - - - - 0x037E80 0D:BE70: FF        .byte $FF   ; 
- - - - - - 0x037E81 0D:BE71: FF        .byte $FF   ; 
- - - - - - 0x037E82 0D:BE72: FF        .byte $FF   ; 
- - - - - - 0x037E83 0D:BE73: FF        .byte $FF   ; 
- - - - - - 0x037E84 0D:BE74: FF        .byte $FF   ; 
- - - - - - 0x037E85 0D:BE75: FF        .byte $FF   ; 
- - - - - - 0x037E86 0D:BE76: FF        .byte $FF   ; 
- - - - - - 0x037E87 0D:BE77: FF        .byte $FF   ; 
- - - - - - 0x037E88 0D:BE78: FF        .byte $FF   ; 
- - - - - - 0x037E89 0D:BE79: FF        .byte $FF   ; 
- - - - - - 0x037E8A 0D:BE7A: FF        .byte $FF   ; 
- - - - - - 0x037E8B 0D:BE7B: FF        .byte $FF   ; 
- - - - - - 0x037E8C 0D:BE7C: FF        .byte $FF   ; 
- - - - - - 0x037E8D 0D:BE7D: FF        .byte $FF   ; 
- - - - - - 0x037E8E 0D:BE7E: FF        .byte $FF   ; 
- - - - - - 0x037E8F 0D:BE7F: FF        .byte $FF   ; 
- - - - - - 0x037E90 0D:BE80: FF        .byte $FF   ; 
- - - - - - 0x037E91 0D:BE81: FF        .byte $FF   ; 
- - - - - - 0x037E92 0D:BE82: FF        .byte $FF   ; 
- - - - - - 0x037E93 0D:BE83: FF        .byte $FF   ; 
- - - - - - 0x037E94 0D:BE84: FF        .byte $FF   ; 
- - - - - - 0x037E95 0D:BE85: FF        .byte $FF   ; 
- - - - - - 0x037E96 0D:BE86: FF        .byte $FF   ; 
- - - - - - 0x037E97 0D:BE87: FF        .byte $FF   ; 
- - - - - - 0x037E98 0D:BE88: FF        .byte $FF   ; 
- - - - - - 0x037E99 0D:BE89: FF        .byte $FF   ; 
- - - - - - 0x037E9A 0D:BE8A: FF        .byte $FF   ; 
- - - - - - 0x037E9B 0D:BE8B: FF        .byte $FF   ; 
- - - - - - 0x037E9C 0D:BE8C: FF        .byte $FF   ; 
- - - - - - 0x037E9D 0D:BE8D: FF        .byte $FF   ; 
- - - - - - 0x037E9E 0D:BE8E: FF        .byte $FF   ; 
- - - - - - 0x037E9F 0D:BE8F: FF        .byte $FF   ; 
- - - - - - 0x037EA0 0D:BE90: FF        .byte $FF   ; 
- - - - - - 0x037EA1 0D:BE91: FF        .byte $FF   ; 
- - - - - - 0x037EA2 0D:BE92: FF        .byte $FF   ; 
- - - - - - 0x037EA3 0D:BE93: FF        .byte $FF   ; 
- - - - - - 0x037EA4 0D:BE94: FF        .byte $FF   ; 
- - - - - - 0x037EA5 0D:BE95: FF        .byte $FF   ; 
- - - - - - 0x037EA6 0D:BE96: FF        .byte $FF   ; 
- - - - - - 0x037EA7 0D:BE97: FF        .byte $FF   ; 
- - - - - - 0x037EA8 0D:BE98: FF        .byte $FF   ; 
- - - - - - 0x037EA9 0D:BE99: FF        .byte $FF   ; 
- - - - - - 0x037EAA 0D:BE9A: FF        .byte $FF   ; 
- - - - - - 0x037EAB 0D:BE9B: FF        .byte $FF   ; 
- - - - - - 0x037EAC 0D:BE9C: FF        .byte $FF   ; 
- - - - - - 0x037EAD 0D:BE9D: FF        .byte $FF   ; 
- - - - - - 0x037EAE 0D:BE9E: FF        .byte $FF   ; 
- - - - - - 0x037EAF 0D:BE9F: FF        .byte $FF   ; 
- - - - - - 0x037EB0 0D:BEA0: FF        .byte $FF   ; 
- - - - - - 0x037EB1 0D:BEA1: FF        .byte $FF   ; 
- - - - - - 0x037EB2 0D:BEA2: FF        .byte $FF   ; 
- - - - - - 0x037EB3 0D:BEA3: FF        .byte $FF   ; 
- - - - - - 0x037EB4 0D:BEA4: FF        .byte $FF   ; 
- - - - - - 0x037EB5 0D:BEA5: FF        .byte $FF   ; 
- - - - - - 0x037EB6 0D:BEA6: FF        .byte $FF   ; 
- - - - - - 0x037EB7 0D:BEA7: FF        .byte $FF   ; 
- - - - - - 0x037EB8 0D:BEA8: FF        .byte $FF   ; 
- - - - - - 0x037EB9 0D:BEA9: FF        .byte $FF   ; 
- - - - - - 0x037EBA 0D:BEAA: FF        .byte $FF   ; 
- - - - - - 0x037EBB 0D:BEAB: FF        .byte $FF   ; 
- - - - - - 0x037EBC 0D:BEAC: FF        .byte $FF   ; 
- - - - - - 0x037EBD 0D:BEAD: FF        .byte $FF   ; 
- - - - - - 0x037EBE 0D:BEAE: FF        .byte $FF   ; 
- - - - - - 0x037EBF 0D:BEAF: FF        .byte $FF   ; 
- - - - - - 0x037EC0 0D:BEB0: FF        .byte $FF   ; 



loc_BEB1:
C D 1 - - - 0x037EC1 0D:BEB1: 85 17     STA ram_0017
C - - - - - 0x037EC3 0D:BEB3: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x037EC6 0D:BEB6: C9 03     CMP #$03
C - - - - - 0x037EC8 0D:BEB8: D0 70     BNE bra_BF2A_RTS
C - - - - - 0x037ECA 0D:BEBA: BC DE 06  LDY ram_06DE,X
C - - - - - 0x037ECD 0D:BEBD: 20 AD A1  JSR sub_A1AD
C - - - - - 0x037ED0 0D:BEC0: D0 68     BNE bra_BF2A_RTS
C - - - - - 0x037ED2 0D:BEC2: 20 2B BF  JSR sub_BF2B
C - - - - - 0x037ED5 0D:BEC5: D0 04     BNE bra_BECB
- - - - - - 0x037ED7 0D:BEC7: A9 01     LDA #$01
- - - - - - 0x037ED9 0D:BEC9: D0 5D     BNE bra_BF28
bra_BECB:
C - - - - - 0x037EDB 0D:BECB: B9 20 05  LDA ram_0520,Y
C - - - - - 0x037EDE 0D:BECE: C9 01     CMP #$01
C - - - - - 0x037EE0 0D:BED0: D0 58     BNE bra_BF2A_RTS
C - - - - - 0x037EE2 0D:BED2: A9 16     LDA #$16
C - - - - - 0x037EE4 0D:BED4: CD 38 06  CMP ram_dist_X_btw_plrs
C - - - - - 0x037EE7 0D:BED7: B0 2B     BCS bra_BF04
C - - - - - 0x037EE9 0D:BED9: BD 10 05  LDA ram_0510,X
C - - - - - 0x037EEC 0D:BEDC: 79 80 04  ADC ram_0480,Y
C - - - - - 0x037EEF 0D:BEDF: 30 23     BMI bra_BF04
C - - - - - 0x037EF1 0D:BEE1: C9 41     CMP #$41
C - - - - - 0x037EF3 0D:BEE3: B0 1F     BCS bra_BF04
C - - - - - 0x037EF5 0D:BEE5: B9 60 04  LDA ram_0460,Y
C - - - - - 0x037EF8 0D:BEE8: 10 04     BPL bra_BEEE
C - - - - - 0x037EFA 0D:BEEA: A9 25     LDA #$25
C - - - - - 0x037EFC 0D:BEEC: D0 3A     BNE bra_BF28
bra_BEEE:
C - - - - - 0x037EFE 0D:BEEE: F0 0B     BEQ bra_BEFB
C - - - - - 0x037F00 0D:BEF0: B9 50 05  LDA ram_0550,Y
C - - - - - 0x037F03 0D:BEF3: C9 04     CMP #$04
C - - - - - 0x037F05 0D:BEF5: D0 04     BNE bra_BEFB
C - - - - - 0x037F07 0D:BEF7: A9 00     LDA #$00
C - - - - - 0x037F09 0D:BEF9: F0 2D     BEQ bra_BF28
bra_BEFB:
C - - - - - 0x037F0B 0D:BEFB: B9 80 04  LDA ram_0480,Y
C - - - - - 0x037F0E 0D:BEFE: D0 2A     BNE bra_BF2A_RTS
C - - - - - 0x037F10 0D:BF00: A9 10     LDA #$10
C - - - - - 0x037F12 0D:BF02: D0 24     BNE bra_BF28
bra_BF04:
C - - - - - 0x037F14 0D:BF04: B9 50 05  LDA ram_0550,Y
C - - - - - 0x037F17 0D:BF07: C9 05     CMP #$05
C - - - - - 0x037F19 0D:BF09: D0 0F     BNE bra_BF1A
C - - - - - 0x037F1B 0D:BF0B: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x037F1E 0D:BF0E: C9 12     CMP #$12
C - - - - - 0x037F20 0D:BF10: 90 08     BCC bra_BF1A
C - - - - - 0x037F22 0D:BF12: 20 C2 EC  JSR sub_0x03ECD2_random_00_03
C - - - - - 0x037F25 0D:BF15: B9 EE BF  LDA tbl_BFEE,Y
C - - - - - 0x037F28 0D:BF18: D0 0E     BNE bra_BF28
bra_BF1A:
C - - - - - 0x037F2A 0D:BF1A: B9 60 04  LDA ram_0460,Y
C - - - - - 0x037F2D 0D:BF1D: 30 0B     BMI bra_BF2A_RTS
C - - - - - 0x037F2F 0D:BF1F: B9 10 04  LDA ram_0410,Y
C - - - - - 0x037F32 0D:BF22: C9 8C     CMP #$8C
C - - - - - 0x037F34 0D:BF24: B0 04     BCS bra_BF2A_RTS
C - - - - - 0x037F36 0D:BF26: A9 42     LDA #$42
bra_BF28:
C - - - - - 0x037F38 0D:BF28: 85 17     STA ram_0017
bra_BF2A_RTS:
C - - - - - 0x037F3A 0D:BF2A: 60        RTS



sub_BF2B:
C - - - - - 0x037F3B 0D:BF2B: B9 20 05  LDA ram_0520,Y
C - - - - - 0x037F3E 0D:BF2E: C9 05     CMP #$05
C - - - - - 0x037F40 0D:BF30: F0 0B     BEQ bra_BF3D_RTS
C - - - - - 0x037F42 0D:BF32: 98        TYA
C - - - - - 0x037F43 0D:BF33: 09 80     ORA #$80
C - - - - - 0x037F45 0D:BF35: CD A6 05  CMP ram_05A6
C - - - - - 0x037F48 0D:BF38: D0 03     BNE bra_BF3D_RTS
C - - - - - 0x037F4A 0D:BF3A: AD 36 04  LDA ram_0436
bra_BF3D_RTS:
C - - - - - 0x037F4D 0D:BF3D: 60        RTS



loc_BF3E:
C D 1 - - - 0x037F4E 0D:BF3E: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x037F51 0D:BF41: C9 03     CMP #$03
C - - - - - 0x037F53 0D:BF43: D0 15     BNE bra_BF5A
C - - - - - 0x037F55 0D:BF45: BD 20 05  LDA ram_0520,X
C - - - - - 0x037F58 0D:BF48: C9 08     CMP #$08
C - - - - - 0x037F5A 0D:BF4A: B0 12     BCS bra_BF5E_RTS
C - - - - - 0x037F5C 0D:BF4C: B9 20 05  LDA ram_0520,Y
C - - - - - 0x037F5F 0D:BF4F: C9 03     CMP #$03
C - - - - - 0x037F61 0D:BF51: D0 07     BNE bra_BF5A
C - - - - - 0x037F63 0D:BF53: B9 C0 04  LDA ram_04C0,Y
C - - - - - 0x037F66 0D:BF56: C9 01     CMP #$01
C - - - - - 0x037F68 0D:BF58: F0 04     BEQ bra_BF5E_RTS
bra_BF5A:
C - - - - - 0x037F6A 0D:BF5A: A9 24     LDA #$24
C - - - - - 0x037F6C 0D:BF5C: 85 17     STA ram_0017
bra_BF5E_RTS:
C - - - - - 0x037F6E 0D:BF5E: 60        RTS



loc_BF5F:
C D 1 - - - 0x037F6F 0D:BF5F: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x037F72 0D:BF62: C9 03     CMP #$03
C - - - - - 0x037F74 0D:BF64: D0 34     BNE bra_BF9A
C - - - - - 0x037F76 0D:BF66: BD 50 05  LDA ram_0550,X
C - - - - - 0x037F79 0D:BF69: C9 06     CMP #$06
C - - - - - 0x037F7B 0D:BF6B: D0 2D     BNE bra_BF9A
C - - - - - 0x037F7D 0D:BF6D: BD 10 05  LDA ram_0510,X
C - - - - - 0x037F80 0D:BF70: D9 10 05  CMP ram_0510,Y
C - - - - - 0x037F83 0D:BF73: F0 24     BEQ bra_BF99_RTS
C - - - - - 0x037F85 0D:BF75: 20 AD A1  JSR sub_A1AD
C - - - - - 0x037F88 0D:BF78: D0 20     BNE bra_BF9A
C - - - - - 0x037F8A 0D:BF7A: BD 20 05  LDA ram_0520,X
C - - - - - 0x037F8D 0D:BF7D: F0 04     BEQ bra_BF83
C - - - - - 0x037F8F 0D:BF7F: C9 07     CMP #$07
C - - - - - 0x037F91 0D:BF81: D0 16     BNE bra_BF99_RTS
bra_BF83:
C - - - - - 0x037F93 0D:BF83: AC 26 01  LDY ram_option_speed
C - - - - - 0x037F96 0D:BF86: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x037F99 0D:BF89: D9 FA BF  CMP tbl_BFFA,Y
C - - - - - 0x037F9C 0D:BF8C: 90 13     BCC bra_BFA1
C - - - - - 0x037F9E 0D:BF8E: D9 FC BF  CMP tbl_BFFC,Y
C - - - - - 0x037FA1 0D:BF91: A9 24     LDA #$24
C - - - - - 0x037FA3 0D:BF93: 90 02     BCC bra_BF97
C - - - - - 0x037FA5 0D:BF95: A9 25     LDA #$25
bra_BF97:
C - - - - - 0x037FA7 0D:BF97: 85 17     STA ram_0017
bra_BF99_RTS:
C - - - - - 0x037FA9 0D:BF99: 60        RTS
bra_BF9A:
C - - - - - 0x037FAA 0D:BF9A: A5 13     LDA ram_0013
C - - - - - 0x037FAC 0D:BF9C: C9 02     CMP #$02
C - - - - - 0x037FAE 0D:BF9E: 4C BD 9C  JMP loc_9CBD
bra_BFA1:
C - - - - - 0x037FB1 0D:BFA1: 4C BF 9C  JMP loc_9CBF



loc_BFA4:
C D 1 - - - 0x037FB4 0D:BFA4: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x037FB7 0D:BFA7: C9 03     CMP #$03
C - - - - - 0x037FB9 0D:BFA9: F0 07     BEQ bra_BFB2_RTS
C - - - - - 0x037FBB 0D:BFAB: A5 11     LDA ram_0011
C - - - - - 0x037FBD 0D:BFAD: C9 08     CMP #$08
C - - - - - 0x037FBF 0D:BFAF: 4C 79 9C  JMP loc_9C79
bra_BFB2_RTS:
C - - - - - 0x037FC2 0D:BFB2: 60        RTS



loc_BFB3:
C D 1 - - - 0x037FC3 0D:BFB3: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x037FC6 0D:BFB6: C9 03     CMP #$03
C - - - - - 0x037FC8 0D:BFB8: 90 31     BCC bra_BFEB
C - - - - - 0x037FCA 0D:BFBA: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x037FCD 0D:BFBD: C9 10     CMP #$10
C - - - - - 0x037FCF 0D:BFBF: 90 21     BCC bra_BFE2
C - - - - - 0x037FD1 0D:BFC1: C9 1E     CMP #$1E
C - - - - - 0x037FD3 0D:BFC3: 90 18     BCC bra_BFDD
C - - - - - 0x037FD5 0D:BFC5: C9 32     CMP #$32
C - - - - - 0x037FD7 0D:BFC7: 90 0C     BCC bra_BFD5
C - - - - - 0x037FD9 0D:BFC9: C9 58     CMP #$58
C - - - - - 0x037FDB 0D:BFCB: B0 0D     BCS bra_BFDA
C - - - - - 0x037FDD 0D:BFCD: B9 54 05  LDA ram_0554,Y
C - - - - - 0x037FE0 0D:BFD0: D0 13     BNE bra_BFE5
C - - - - - 0x037FE2 0D:BFD2: 4C E1 9F  JMP loc_9FE1
bra_BFD5:
C - - - - - 0x037FE5 0D:BFD5: B9 60 04  LDA ram_0460,Y
C - - - - - 0x037FE8 0D:BFD8: F0 0E     BEQ bra_BFE8
bra_BFDA:
C - - - - - 0x037FEA 0D:BFDA: 4C 72 A0  JMP loc_A072
bra_BFDD:
C - - - - - 0x037FED 0D:BFDD: B9 54 05  LDA ram_0554,Y
C - - - - - 0x037FF0 0D:BFE0: F0 03     BEQ bra_BFE5
bra_BFE2:
C - - - - - 0x037FF2 0D:BFE2: 4C 95 9F  JMP loc_9F95
bra_BFE5:
C - - - - - 0x037FF5 0D:BFE5: 4C 5B A0  JMP loc_A05B
bra_BFE8:
C - - - - - 0x037FF8 0D:BFE8: 4C 6A A0  JMP loc_A06A
bra_BFEB:
C - - - - - 0x037FFB 0D:BFEB: 4C 4F A0  JMP loc_A04F



tbl_BFEE:
- D 1 - - - 0x037FFE 0D:BFEE: 17        .byte $17   ; 00
- D 1 - - - 0x037FFF 0D:BFEF: 07        .byte $07   ; 01
- D 1 - - - 0x038000 0D:BFF0: 07        .byte $07   ; 02
- D 1 - - - 0x038001 0D:BFF1: 17        .byte $17   ; 03



tbl_BFF2:
- D 1 - - - 0x038002 0D:BFF2: 07        .byte $07   ; 00
- D 1 - - - 0x038003 0D:BFF3: 16        .byte $16   ; 01
- D 1 - - - 0x038004 0D:BFF4: 07        .byte $07   ; 02
- D 1 - - - 0x038005 0D:BFF5: 07        .byte $07   ; 03
- D 1 - - - 0x038006 0D:BFF6: 07        .byte $07   ; 04
- D 1 - - - 0x038007 0D:BFF7: 07        .byte $07   ; 05
- D 1 - - - 0x038008 0D:BFF8: 07        .byte $07   ; 06
- D 1 - - - 0x038009 0D:BFF9: 07        .byte $07   ; 07



tbl_BFFA:
- D 1 - - - 0x03800A 0D:BFFA: 30        .byte $30   ; 00
- D 1 - - - 0x03800B 0D:BFFB: 38        .byte $38   ; 01



tbl_BFFC:
- D 1 - - - 0x03800C 0D:BFFC: 46        .byte $46   ; 00
- D 1 - - - 0x03800D 0D:BFFD: 50        .byte $50   ; 01



tbl_BFFE:
- D 1 - - - 0x03800E 0D:BFFE: 2D        .byte $2D   ; 00
- D 1 - - - 0x03800F 0D:BFFF: 38        .byte $38   ; 01



