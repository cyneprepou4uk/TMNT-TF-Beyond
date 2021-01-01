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
C - - - - - 0x035E87 0D:9E77: 4C 75 9C  JMP loc_BFA4
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
C - - - - - 0x035F99 0D:9F89: 4C 75 9C  JMP loc_BFA4
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
C - - - - - 0x035FDA 0D:9FCA: 4C F7 A0  JMP loc_A39F
bra_9FCD:
C - - - - - 0x035FDD 0D:9FCD: C9 0A     CMP #$0A
C - - - - - 0x035FDF 0D:9FCF: D0 03     BNE bra_9FD4
C - - - - - 0x035FE1 0D:9FD1: 4C F7 A0  JMP loc_A39F
bra_9FD4:
C - - - - - 0x035FE4 0D:9FD4: A5 13     LDA ram_0013
C - - - - - 0x035FE6 0D:9FD6: C9 02     CMP #$02
C - - - - - 0x035FE8 0D:9FD8: B0 1F     BCS bra_9FF9
C - - - - - 0x035FEA 0D:9FDA: BD E2 06  LDA ram_06E2,X
C - - - - - 0x035FED 0D:9FDD: C9 25     CMP #$25
C - - - - - 0x035FEF 0D:9FDF: D0 05     BNE bra_9FE6
loc_9FE1:
C D 0 - - - 0x035FF1 0D:9FE1: 4C 3E BF  JMP loc_BF3E



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
C - - - - - 0x03607F 0D:A06F: 4C 75 9C  JMP loc_BFA4
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
bra_A0F7:
C D 1 - - - 0x036107 0D:A0F7: 4C 9F A3  JMP loc_A39F



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
ofs_9C75_01:
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



