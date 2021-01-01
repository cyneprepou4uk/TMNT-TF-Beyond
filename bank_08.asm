.segment "BANK_08"
.include "copy_bank_ram.inc"
; 0x020010-0x02400F

- D 0 - - - 0x020010 08:8000: 00        .byte $00   ; 



.export sub_0x020011
sub_0x020011:
C D 0 - - - 0x020011 08:8001: AD F4 07  LDA ram_07F4
C - - - - - 0x020014 08:8004: F0 03     BEQ bra_8009
C - - - - - 0x020016 08:8006: CE F4 07  DEC ram_07F4
bra_8009:
C - - - - - 0x020019 08:8009: A5 97     LDA ram_0097
C - - - - - 0x02001B 08:800B: CD C4 07  CMP ram_07C4
C - - - - - 0x02001E 08:800E: F0 0D     BEQ bra_801D
C - - - - - 0x020020 08:8010: 8D C4 07  STA ram_07C4
C - - - - - 0x020023 08:8013: C9 00     CMP #$00
C - - - - - 0x020025 08:8015: F0 03     BEQ bra_801A
C - - - - - 0x020027 08:8017: 4C 6E 90  JMP loc_906E
bra_801A:
C - - - - - 0x02002A 08:801A: 20 0C 8C  JSR sub_8C0C
bra_801D:
C - - - - - 0x02002D 08:801D: AD 66 07  LDA ram_0766
C - - - - - 0x020030 08:8020: F0 03     BEQ bra_8025
C - - - - - 0x020032 08:8022: 20 62 80  JSR sub_8062
bra_8025:
C - - - - - 0x020035 08:8025: AD F1 07  LDA ram_07F1
C - - - - - 0x020038 08:8028: F0 19     BEQ bra_8043
C - - - - - 0x02003A 08:802A: EE F2 07  INC ram_07F2
C - - - - - 0x02003D 08:802D: AD F1 07  LDA ram_07F1
C - - - - - 0x020040 08:8030: CD F2 07  CMP ram_07F2
C - - - - - 0x020043 08:8033: D0 09     BNE bra_803E
C - - - - - 0x020045 08:8035: A9 00     LDA #$00
C - - - - - 0x020047 08:8037: 8D F2 07  STA ram_07F2
C - - - - - 0x02004A 08:803A: A9 01     LDA #$01
C - - - - - 0x02004C 08:803C: D0 02     BNE bra_8040
bra_803E:
C - - - - - 0x02004E 08:803E: A9 00     LDA #$00
bra_8040:
C - - - - - 0x020050 08:8040: 8D F3 07  STA ram_07F3
bra_8043:
C - - - - - 0x020053 08:8043: A2 00     LDX #$00
bra_8045_loop:
C - - - - - 0x020055 08:8045: BD 5C 80  LDA tbl_805C,X
C - - - - - 0x020058 08:8048: 8E 61 07  STX ram_0761
C - - - - - 0x02005B 08:804B: 8D B2 07  STA ram_07B2
C - - - - - 0x02005E 08:804E: BD 0C 07  LDA ram_070C,X
C - - - - - 0x020061 08:8051: F0 03     BEQ bra_8056
C - - - - - 0x020063 08:8053: 20 8F 80  JSR sub_808F
bra_8056:
C - - - - - 0x020066 08:8056: E8        INX
C - - - - - 0x020067 08:8057: E0 06     CPX #$06
C - - - - - 0x020069 08:8059: D0 EA     BNE bra_8045_loop
C - - - - - 0x02006B 08:805B: 60        RTS



tbl_805C:
- D 0 - - - 0x02006C 08:805C: 00        .byte $00   ; 
- D 0 - - - 0x02006D 08:805D: 04        .byte $04   ; 
- D 0 - - - 0x02006E 08:805E: 08        .byte $08   ; 
- D 0 - - - 0x02006F 08:805F: 0C        .byte $0C   ; 
- D 0 - - - 0x020070 08:8060: 00        .byte $00   ; 
- D 0 - - - 0x020071 08:8061: 0C        .byte $0C   ; 



sub_8062:
C - - - - - 0x020072 08:8062: C9 01     CMP #$01
C - - - - - 0x020074 08:8064: D0 03     BNE bra_8069
C - - - - - 0x020076 08:8066: 4C 5D 90  JMP loc_905D
bra_8069:
C - - - - - 0x020079 08:8069: C9 02     CMP #$02
C - - - - - 0x02007B 08:806B: D0 0B     BNE bra_8078
C - - - - - 0x02007D 08:806D: 20 DE 8B  JSR sub_8BDE
C - - - - - 0x020080 08:8070: A9 00     LDA #$00
C - - - - - 0x020082 08:8072: 8D 0E 07  STA ram_070E
C - - - - - 0x020085 08:8075: 8D 0F 07  STA ram_070F
bra_8078:
C - - - - - 0x020088 08:8078: EE D6 07  INC ram_07D6
C - - - - - 0x02008B 08:807B: AD 7A 07  LDA ram_077A
C - - - - - 0x02008E 08:807E: CD D6 07  CMP ram_07D6
C - - - - - 0x020091 08:8081: D0 0B     BNE bra_808E_RTS
C - - - - - 0x020093 08:8083: A9 00     LDA #$00
C - - - - - 0x020095 08:8085: 8D D6 07  STA ram_07D6
C - - - - - 0x020098 08:8088: EE 6B 07  INC ram_076B
C - - - - - 0x02009B 08:808B: CE 66 07  DEC ram_0766
bra_808E_RTS:
C - - - - - 0x02009E 08:808E: 60        RTS



sub_808F:
C - - - - - 0x02009F 08:808F: A5 97     LDA ram_0097
C - - - - - 0x0200A1 08:8091: F0 08     BEQ bra_809B
C - - - - - 0x0200A3 08:8093: BD 0C 07  LDA ram_070C,X
C - - - - - 0x0200A6 08:8096: C9 2D     CMP #$2D
C - - - - - 0x0200A8 08:8098: F0 0B     BEQ bra_80A5
bra_809A_RTS:
C - - - - - 0x0200AA 08:809A: 60        RTS
bra_809B:
C - - - - - 0x0200AB 08:809B: B5 EA     LDA ram_00EA,X
C - - - - - 0x0200AD 08:809D: 4A        LSR
C - - - - - 0x0200AE 08:809E: B0 05     BCS bra_80A5
C - - - - - 0x0200B0 08:80A0: AD F3 07  LDA ram_07F3
C - - - - - 0x0200B3 08:80A3: D0 F5     BNE bra_809A_RTS
bra_80A5:
C - - - - - 0x0200B5 08:80A5: DE 06 07  DEC ram_0706,X
C - - - - - 0x0200B8 08:80A8: D0 03     BNE bra_80AD
C - - - - - 0x0200BA 08:80AA: 4C 95 8B  JMP loc_8B95
bra_80AD:
C - - - - - 0x0200BD 08:80AD: B5 EA     LDA ram_00EA,X
C - - - - - 0x0200BF 08:80AF: 29 03     AND #$03
C - - - - - 0x0200C1 08:80B1: D0 E7     BNE bra_809A_RTS
C - - - - - 0x0200C3 08:80B3: E0 03     CPX #$03
C - - - - - 0x0200C5 08:80B5: F0 E3     BEQ bra_809A_RTS
C - - - - - 0x0200C7 08:80B7: E0 02     CPX #$02
C - - - - - 0x0200C9 08:80B9: D0 18     BNE bra_80D3
C - - - - - 0x0200CB 08:80BB: BD D7 07  LDA ram_07D7,X
C - - - - - 0x0200CE 08:80BE: C9 10     CMP #$10
C - - - - - 0x0200D0 08:80C0: B0 21     BCS bra_80E3
C - - - - - 0x0200D2 08:80C2: BD 06 07  LDA ram_0706,X
C - - - - - 0x0200D5 08:80C5: DD DA 07  CMP ram_07DA,X
C - - - - - 0x0200D8 08:80C8: D0 19     BNE bra_80E3
C - - - - - 0x0200DA 08:80CA: A9 00     LDA #$00
C - - - - - 0x0200DC 08:80CC: 9D DA 07  STA ram_07DA,X
C - - - - - 0x0200DF 08:80CF: 8D 08 40  STA $4008
C - - - - - 0x0200E2 08:80D2: 60        RTS
bra_80D3:
C - - - - - 0x0200E3 08:80D3: BD 74 07  LDA ram_0774,X
C - - - - - 0x0200E6 08:80D6: 10 0B     BPL bra_80E3
C - - - - - 0x0200E8 08:80D8: 20 E1 82  JSR sub_82E1
C - - - - - 0x0200EB 08:80DB: BD DA 07  LDA ram_07DA,X
C - - - - - 0x0200EE 08:80DE: DD 06 07  CMP ram_0706,X
C - - - - - 0x0200F1 08:80E1: B0 1D     BCS bra_8100
bra_80E3:
C - - - - - 0x0200F3 08:80E3: BD 68 07  LDA ram_0768,X
C - - - - - 0x0200F6 08:80E6: 10 18     BPL bra_8100
C - - - - - 0x0200F8 08:80E8: DE B3 07  DEC ram_07B3,X
C - - - - - 0x0200FB 08:80EB: D0 13     BNE bra_8100
C - - - - - 0x0200FD 08:80ED: 20 5F 82  JSR sub_825F
C - - - - - 0x020100 08:80F0: BD B3 07  LDA ram_07B3,X
C - - - - - 0x020103 08:80F3: C9 FF     CMP #$FF
C - - - - - 0x020105 08:80F5: F0 09     BEQ bra_8100
C - - - - - 0x020107 08:80F7: 20 D9 85  JSR sub_85D9
C - - - - - 0x02010A 08:80FA: 20 26 86  JSR sub_8626
C - - - - - 0x02010D 08:80FD: 20 BB 89  JSR sub_89BB
bra_8100:
C - - - - - 0x020110 08:8100: E0 02     CPX #$02
C - - - - - 0x020112 08:8102: F0 40     BEQ bra_8144_RTS
C - - - - - 0x020114 08:8104: BD 06 07  LDA ram_0706,X
C - - - - - 0x020117 08:8107: DD DA 07  CMP ram_07DA,X
C - - - - - 0x02011A 08:810A: F0 5C     BEQ bra_8168
C - - - - - 0x02011C 08:810C: B0 02     BCS bra_8110
C - - - - - 0x02011E 08:810E: 90 74     BCC bra_8184
bra_8110:
C - - - - - 0x020120 08:8110: BD D4 07  LDA ram_07D4,X
C - - - - - 0x020123 08:8113: 10 20     BPL bra_8135
C - - - - - 0x020125 08:8115: B5 EA     LDA ram_00EA,X
C - - - - - 0x020127 08:8117: 30 2C     BMI bra_8145
C - - - - - 0x020129 08:8119: BD 4E 07  LDA ram_074E,X
C - - - - - 0x02012C 08:811C: F0 26     BEQ bra_8144_RTS
C - - - - - 0x02012E 08:811E: DE B0 07  DEC ram_07B0,X
C - - - - - 0x020131 08:8121: 10 21     BPL bra_8144_RTS
C - - - - - 0x020133 08:8123: 20 4C 85  JSR sub_854C
C - - - - - 0x020136 08:8126: B5 F0     LDA ram_00F0,X
C - - - - - 0x020138 08:8128: F0 1A     BEQ bra_8144_RTS
C - - - - - 0x02013A 08:812A: DE 4E 07  DEC ram_074E,X
C - - - - - 0x02013D 08:812D: D6 F0     DEC ram_00F0,X
bra_812F:
C - - - - - 0x02013F 08:812F: 20 90 83  JSR sub_8390
C - - - - - 0x020142 08:8132: 4C BB 81  JMP loc_81BB
bra_8135:
- - - - - - 0x020145 08:8135: DE B0 07  DEC ram_07B0,X
- - - - - - 0x020148 08:8138: D0 0A     BNE bra_8144_RTS
- - - - - - 0x02014A 08:813A: 20 EF 81  JSR sub_81EF
- - - - - - 0x02014D 08:813D: BD B0 07  LDA ram_07B0,X
- - - - - - 0x020150 08:8140: C9 FF     CMP #$FF
- - - - - - 0x020152 08:8142: D0 EB     BNE bra_812F
bra_8144_RTS:
C - - - - - 0x020154 08:8144: 60        RTS
bra_8145:
C - - - - - 0x020155 08:8145: DE B0 07  DEC ram_07B0,X
C - - - - - 0x020158 08:8148: D0 FA     BNE bra_8144_RTS
C - - - - - 0x02015A 08:814A: BD 97 07  LDA ram_0797,X
C - - - - - 0x02015D 08:814D: 29 0F     AND #$0F
C - - - - - 0x02015F 08:814F: 9D B0 07  STA ram_07B0,X
C - - - - - 0x020162 08:8152: FE 4E 07  INC ram_074E,X
C - - - - - 0x020165 08:8155: BD 56 07  LDA ram_0756,X
C - - - - - 0x020168 08:8158: DD 4E 07  CMP ram_074E,X
C - - - - - 0x02016B 08:815B: D0 D2     BNE bra_812F
C - - - - - 0x02016D 08:815D: 20 45 85  JSR sub_8545
C - - - - - 0x020170 08:8160: B5 EA     LDA ram_00EA,X
C - - - - - 0x020172 08:8162: 29 7F     AND #$7F
C - - - - - 0x020174 08:8164: 95 EA     STA ram_00EA,X
C - - - - - 0x020176 08:8166: 10 C7     BPL bra_812F
bra_8168:
C - - - - - 0x020178 08:8168: B5 EA     LDA ram_00EA,X
C - - - - - 0x02017A 08:816A: 10 04     BPL bra_8170
- - - - - - 0x02017C 08:816C: 29 7F     AND #$7F
- - - - - - 0x02017E 08:816E: 95 EA     STA ram_00EA,X
bra_8170:
C - - - - - 0x020180 08:8170: BD 4E 07  LDA ram_074E,X
C - - - - - 0x020183 08:8173: F0 CF     BEQ bra_8144_RTS
C - - - - - 0x020185 08:8175: BD 74 07  LDA ram_0774,X
C - - - - - 0x020188 08:8178: 29 0C     AND #$0C
C - - - - - 0x02018A 08:817A: F0 19     BEQ bra_8195
C - - - - - 0x02018C 08:817C: 4A        LSR
C - - - - - 0x02018D 08:817D: 4A        LSR
C - - - - - 0x02018E 08:817E: 9D 4E 07  STA ram_074E,X
C - - - - - 0x020191 08:8181: 4C A1 81  JMP loc_81A1
bra_8184:
C - - - - - 0x020194 08:8184: BD 4E 07  LDA ram_074E,X
C - - - - - 0x020197 08:8187: F0 BB     BEQ bra_8144_RTS
C - - - - - 0x020199 08:8189: BD 74 07  LDA ram_0774,X
C - - - - - 0x02019C 08:818C: 29 0C     AND #$0C
C - - - - - 0x02019E 08:818E: D0 B4     BNE bra_8144_RTS
C - - - - - 0x0201A0 08:8190: DE B0 07  DEC ram_07B0,X
C - - - - - 0x0201A3 08:8193: D0 AF     BNE bra_8144_RTS
bra_8195:
C - - - - - 0x0201A5 08:8195: DE 4E 07  DEC ram_074E,X
C - - - - - 0x0201A8 08:8198: BD D7 07  LDA ram_07D7,X
C - - - - - 0x0201AB 08:819B: 20 37 8D  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x0201AE 08:819E: 9D B0 07  STA ram_07B0,X
loc_81A1:
C D 0 - - - 0x0201B1 08:81A1: 20 90 83  JSR sub_8390
C - - - - - 0x0201B4 08:81A4: BD 50 07  LDA ram_0750,X
C - - - - - 0x0201B7 08:81A7: 29 02     AND #$02
C - - - - - 0x0201B9 08:81A9: F0 02     BEQ bra_81AD
C - - - - - 0x0201BB 08:81AB: D0 05     BNE bra_81B2
bra_81AD:
C - - - - - 0x0201BD 08:81AD: A5 E2     LDA ram_00E2
C - - - - - 0x0201BF 08:81AF: 4C BB 81  JMP loc_81BB
bra_81B2:
sub_81B2:
C - - - - - 0x0201C2 08:81B2: BD 50 07  LDA ram_0750,X
C - - - - - 0x0201C5 08:81B5: 29 F0     AND #$F0
C - - - - - 0x0201C7 08:81B7: 05 E2     ORA ram_00E2
C - - - - - 0x0201C9 08:81B9: D0 03     BNE bra_81BE
loc_81BB:
sub_81BB:
C D 0 - - - 0x0201CB 08:81BB: 1D 54 07  ORA ram_0754,X
bra_81BE:
sub_81BE:
loc_81BE:
C D 0 - - - 0x0201CE 08:81BE: 20 07 8A  JSR sub_8A07
C - - - - - 0x0201D1 08:81C1: B0 03     BCS bra_81C6
C - - - - - 0x0201D3 08:81C3: 9D 00 40  STA $4000,X
bra_81C6:
C - - - - - 0x0201D6 08:81C6: AE 61 07  LDX ram_0761
C - - - - - 0x0201D9 08:81C9: 60        RTS



sub_81CA:
C - - - - - 0x0201DA 08:81CA: 20 07 8A  JSR sub_8A07
C - - - - - 0x0201DD 08:81CD: B0 F7     BCS bra_81C6
C - - - - - 0x0201DF 08:81CF: 9D 01 40  STA $4001,X
C - - - - - 0x0201E2 08:81D2: 90 F2     BCC bra_81C6



loc_81D4:
C D 0 - - - 0x0201E4 08:81D4: 20 07 8A  JSR sub_8A07
C - - - - - 0x0201E7 08:81D7: B0 ED     BCS bra_81C6
C - - - - - 0x0201E9 08:81D9: 9D 02 40  STA $4002,X
C - - - - - 0x0201EC 08:81DC: 90 E8     BCC bra_81C6



sub_81DE:
C - - - - - 0x0201EE 08:81DE: 09 08     ORA #$08
C - - - - - 0x0201F0 08:81E0: 20 07 8A  JSR sub_8A07
C - - - - - 0x0201F3 08:81E3: B0 E1     BCS bra_81C6
C - - - - - 0x0201F5 08:81E5: 9D 03 40  STA $4003,X
C - - - - - 0x0201F8 08:81E8: 90 DC     BCC bra_81C6



loc_81EA:
- - - - - - 0x0201FA 08:81EA: A9 00     LDA #$00
- - - - - - 0x0201FC 08:81EC: 9D B6 07  STA ram_07B6,X
sub_81EF:
- - - - - - 0x0201FF 08:81EF: 98        TYA
- - - - - - 0x020200 08:81F0: 48        PHA
- - - - - - 0x020201 08:81F1: BD D4 07  LDA ram_07D4,X
- - - - - - 0x020204 08:81F4: A8        TAY
- - - - - - 0x020205 08:81F5: B9 41 95  LDA tbl_9541,Y
- - - - - - 0x020208 08:81F8: 85 E2     STA ram_00E2
- - - - - - 0x02020A 08:81FA: B9 42 95  LDA tbl_9541 + 1,Y
- - - - - - 0x02020D 08:81FD: 85 E3     STA ram_00E3
bra_81FF:
- - - - - - 0x02020F 08:81FF: BD B6 07  LDA ram_07B6,X
- - - - - - 0x020212 08:8202: A8        TAY
- - - - - - 0x020213 08:8203: B1 E2     LDA (ram_00E2),Y
- - - - - - 0x020215 08:8205: C9 FB     CMP #$FB
- - - - - - 0x020217 08:8207: 90 07     BCC bra_8210
- - - - - - 0x020219 08:8209: 20 24 82  JSR sub_8224
- - - - - - 0x02021C 08:820C: 90 13     BCC bra_8221
- - - - - - 0x02021E 08:820E: B0 EF     BCS bra_81FF
bra_8210:
- - - - - - 0x020220 08:8210: FE B6 07  INC ram_07B6,X
- - - - - - 0x020223 08:8213: 48        PHA
- - - - - - 0x020224 08:8214: 4A        LSR
- - - - - - 0x020225 08:8215: 4A        LSR
- - - - - - 0x020226 08:8216: 4A        LSR
- - - - - - 0x020227 08:8217: 4A        LSR
- - - - - - 0x020228 08:8218: 9D B0 07  STA ram_07B0,X
- - - - - - 0x02022B 08:821B: 68        PLA
- - - - - - 0x02022C 08:821C: 29 0F     AND #$0F
- - - - - - 0x02022E 08:821E: 9D 4E 07  STA ram_074E,X
bra_8221:
- - - - - - 0x020231 08:8221: 68        PLA
- - - - - - 0x020232 08:8222: A8        TAY
- - - - - - 0x020233 08:8223: 60        RTS



sub_8224:
C - - - - - 0x020234 08:8224: C9 FE     CMP #$FE
C - - - - - 0x020236 08:8226: F0 19     BEQ bra_8241
C - - - - - 0x020238 08:8228: 90 07     BCC bra_8231
C - - - - - 0x02023A 08:822A: A9 FF     LDA #$FF
C - - - - - 0x02023C 08:822C: 9D B0 07  STA ram_07B0,X
C - - - - - 0x02023F 08:822F: 18        CLC
C - - - - - 0x020240 08:8230: 60        RTS
bra_8231:
C - - - - - 0x020241 08:8231: FE B6 07  INC ram_07B6,X
C - - - - - 0x020244 08:8234: BD B6 07  LDA ram_07B6,X
C - - - - - 0x020247 08:8237: 9D BC 07  STA ram_07BC,X
C - - - - - 0x02024A 08:823A: A9 00     LDA #$00
C - - - - - 0x02024C 08:823C: 9D C2 07  STA ram_07C2,X
C - - - - - 0x02024F 08:823F: 38        SEC
C - - - - - 0x020250 08:8240: 60        RTS
bra_8241:
C - - - - - 0x020251 08:8241: FE C2 07  INC ram_07C2,X
C - - - - - 0x020254 08:8244: FE B6 07  INC ram_07B6,X
C - - - - - 0x020257 08:8247: BD B6 07  LDA ram_07B6,X
C - - - - - 0x02025A 08:824A: A8        TAY
C - - - - - 0x02025B 08:824B: B1 E2     LDA (ram_00E2),Y
C - - - - - 0x02025D 08:824D: DD C2 07  CMP ram_07C2,X
C - - - - - 0x020260 08:8250: D0 05     BNE bra_8257
- - - - - - 0x020262 08:8252: FE B6 07  INC ram_07B6,X
- - - - - - 0x020265 08:8255: 38        SEC
- - - - - - 0x020266 08:8256: 60        RTS
bra_8257:
C - - - - - 0x020267 08:8257: BD BC 07  LDA ram_07BC,X
C - - - - - 0x02026A 08:825A: 9D B6 07  STA ram_07B6,X
C - - - - - 0x02026D 08:825D: 38        SEC
C - - - - - 0x02026E 08:825E: 60        RTS



sub_825F:
C - - - - - 0x02026F 08:825F: 98        TYA
C - - - - - 0x020270 08:8260: 48        PHA
C - - - - - 0x020271 08:8261: BD C8 07  LDA ram_07C8,X
C - - - - - 0x020274 08:8264: A8        TAY
C - - - - - 0x020275 08:8265: B9 41 95  LDA tbl_9541,Y
C - - - - - 0x020278 08:8268: 85 E2     STA ram_00E2
C - - - - - 0x02027A 08:826A: B9 42 95  LDA tbl_9541 + 1,Y
C - - - - - 0x02027D 08:826D: 85 E3     STA ram_00E3
bra_826F:
C - - - - - 0x02027F 08:826F: BD B9 07  LDA ram_07B9,X
C - - - - - 0x020282 08:8272: A8        TAY
C - - - - - 0x020283 08:8273: B1 E2     LDA (ram_00E2),Y
C - - - - - 0x020285 08:8275: C9 FB     CMP #$FB
C - - - - - 0x020287 08:8277: 90 0D     BCC bra_8286
C - - - - - 0x020289 08:8279: E8        INX
C - - - - - 0x02028A 08:827A: E8        INX
C - - - - - 0x02028B 08:827B: E8        INX
C - - - - - 0x02028C 08:827C: 20 24 82  JSR sub_8224
C - - - - - 0x02028F 08:827F: AE 61 07  LDX ram_0761
C - - - - - 0x020292 08:8282: 90 36     BCC bra_82BA
C - - - - - 0x020294 08:8284: B0 E9     BCS bra_826F
bra_8286:
C - - - - - 0x020296 08:8286: FE B9 07  INC ram_07B9,X
C - - - - - 0x020299 08:8289: BD B3 07  LDA ram_07B3,X
C - - - - - 0x02029C 08:828C: D0 08     BNE bra_8296
C - - - - - 0x02029E 08:828E: B1 E2     LDA (ram_00E2),Y
C - - - - - 0x0202A0 08:8290: 20 37 8D  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x0202A3 08:8293: 9D B3 07  STA ram_07B3,X
bra_8296:
C - - - - - 0x0202A6 08:8296: BD CB 07  LDA ram_07CB,X
C - - - - - 0x0202A9 08:8299: 29 0F     AND #$0F
C - - - - - 0x0202AB 08:829B: F0 1D     BEQ bra_82BA
C - - - - - 0x0202AD 08:829D: B1 E2     LDA (ram_00E2),Y
C - - - - - 0x0202AF 08:829F: 29 0F     AND #$0F
C - - - - - 0x0202B1 08:82A1: 85 E4     STA ram_00E4
C - - - - - 0x0202B3 08:82A3: F0 1F     BEQ bra_82C4
C - - - - - 0x0202B5 08:82A5: C9 08     CMP #$08
C - - - - - 0x0202B7 08:82A7: B0 14     BCS bra_82BD
C - - - - - 0x0202B9 08:82A9: 20 CB 82  JSR sub_82CB
C - - - - - 0x0202BC 08:82AC: A9 00     LDA #$00
C - - - - - 0x0202BE 08:82AE: 38        SEC
C - - - - - 0x0202BF 08:82AF: FD CE 07  SBC ram_07CE,X
C - - - - - 0x0202C2 08:82B2: 9D CE 07  STA ram_07CE,X
C - - - - - 0x0202C5 08:82B5: A9 FF     LDA #$FF
bra_82B7:
C - - - - - 0x0202C7 08:82B7: 9D D1 07  STA ram_07D1,X
bra_82BA:
C - - - - - 0x0202CA 08:82BA: 68        PLA
C - - - - - 0x0202CB 08:82BB: A8        TAY
C - - - - - 0x0202CC 08:82BC: 60        RTS
bra_82BD:
C - - - - - 0x0202CD 08:82BD: A9 10     LDA #$10
C - - - - - 0x0202CF 08:82BF: 38        SEC
C - - - - - 0x0202D0 08:82C0: E5 E4     SBC ram_00E4
C - - - - - 0x0202D2 08:82C2: 85 E4     STA ram_00E4
bra_82C4:
C - - - - - 0x0202D4 08:82C4: 20 CB 82  JSR sub_82CB
C - - - - - 0x0202D7 08:82C7: A9 00     LDA #$00
C - - - - - 0x0202D9 08:82C9: F0 EC     BEQ bra_82B7



sub_82CB:
C - - - - - 0x0202DB 08:82CB: BD CB 07  LDA ram_07CB,X
C - - - - - 0x0202DE 08:82CE: 29 0F     AND #$0F
C - - - - - 0x0202E0 08:82D0: F0 0B     BEQ bra_82DD
C - - - - - 0x0202E2 08:82D2: 85 E2     STA ram_00E2
C - - - - - 0x0202E4 08:82D4: A9 00     LDA #$00
bra_82D6:
C - - - - - 0x0202E6 08:82D6: 18        CLC
C - - - - - 0x0202E7 08:82D7: 65 E4     ADC ram_00E4
C - - - - - 0x0202E9 08:82D9: C6 E2     DEC ram_00E2
C - - - - - 0x0202EB 08:82DB: D0 F9     BNE bra_82D6
bra_82DD:
C - - - - - 0x0202ED 08:82DD: 9D CE 07  STA ram_07CE,X
C - - - - - 0x0202F0 08:82E0: 60        RTS



sub_82E1:
C - - - - - 0x0202F1 08:82E1: BD DA 07  LDA ram_07DA,X
C - - - - - 0x0202F4 08:82E4: DD 06 07  CMP ram_0706,X
C - - - - - 0x0202F7 08:82E7: F0 08     BEQ bra_82F1
C - - - - - 0x0202F9 08:82E9: 90 0F     BCC bra_82FA
C - - - - - 0x0202FB 08:82EB: 20 FA 82  JSR sub_82FA
C - - - - - 0x0202FE 08:82EE: B0 04     BCS bra_82F4
bra_82F0_RTS:
C - - - - - 0x020300 08:82F0: 60        RTS
bra_82F1:
C - - - - - 0x020301 08:82F1: 20 FA 82  JSR sub_82FA
bra_82F4:
C - - - - - 0x020304 08:82F4: 20 1A 83  JSR sub_831A
C - - - - - 0x020307 08:82F7: 4C B0 89  JMP loc_89B0
bra_82FA:
sub_82FA:
C - - - - - 0x02030A 08:82FA: BD 00 07  LDA ram_0700,X
C - - - - - 0x02030D 08:82FD: 85 E2     STA ram_00E2
C - - - - - 0x02030F 08:82FF: BD 74 07  LDA ram_0774,X
C - - - - - 0x020312 08:8302: 29 10     AND #$10
C - - - - - 0x020314 08:8304: F0 05     BEQ bra_830B
C - - - - - 0x020316 08:8306: A5 E2     LDA ram_00E2
C - - - - - 0x020318 08:8308: 0A        ASL
C - - - - - 0x020319 08:8309: 85 E2     STA ram_00E2
bra_830B:
C - - - - - 0x02031B 08:830B: BD 06 07  LDA ram_0706,X
bra_830E:
C - - - - - 0x02031E 08:830E: 38        SEC
C - - - - - 0x02031F 08:830F: E5 E2     SBC ram_00E2
C - - - - - 0x020321 08:8311: 90 DD     BCC bra_82F0_RTS
C - - - - - 0x020323 08:8313: D0 F9     BNE bra_830E
C - - - - - 0x020325 08:8315: 20 3F 83  JSR sub_833F
C - - - - - 0x020328 08:8318: 38        SEC
C - - - - - 0x020329 08:8319: 60        RTS



sub_831A:
C - - - - - 0x02032A 08:831A: 98        TYA
C - - - - - 0x02032B 08:831B: 48        PHA
C - - - - - 0x02032C 08:831C: BD 74 07  LDA ram_0774,X
C - - - - - 0x02032F 08:831F: 29 03     AND #$03
C - - - - - 0x020331 08:8321: 85 E4     STA ram_00E4
C - - - - - 0x020333 08:8323: BD 8D 07  LDA ram_078D,X
C - - - - - 0x020336 08:8326: 38        SEC
C - - - - - 0x020337 08:8327: E5 E4     SBC ram_00E4
C - - - - - 0x020339 08:8329: 29 03     AND #$03
C - - - - - 0x02033B 08:832B: E0 01     CPX #$01
C - - - - - 0x02033D 08:832D: D0 02     BNE bra_8331
C - - - - - 0x02033F 08:832F: 09 04     ORA #$04
bra_8331:
C - - - - - 0x020341 08:8331: A8        TAY
C - - - - - 0x020342 08:8332: B9 DD 07  LDA ram_07DD,Y
C - - - - - 0x020345 08:8335: 85 E8     STA ram_00E8
C - - - - - 0x020347 08:8337: B9 E5 07  LDA ram_07E5,Y
C - - - - - 0x02034A 08:833A: 85 E9     STA ram_00E9
C - - - - - 0x02034C 08:833C: 68        PLA
C - - - - - 0x02034D 08:833D: A8        TAY
C - - - - - 0x02034E 08:833E: 60        RTS



sub_833F:
C - - - - - 0x02034F 08:833F: 98        TYA
C - - - - - 0x020350 08:8340: 48        PHA
C - - - - - 0x020351 08:8341: BD 74 07  LDA ram_0774,X
C - - - - - 0x020354 08:8344: 29 20     AND #$20
C - - - - - 0x020356 08:8346: F0 27     BEQ bra_836F
C - - - - - 0x020358 08:8348: A9 04     LDA #$04
C - - - - - 0x02035A 08:834A: 85 E2     STA ram_00E2
C - - - - - 0x02035C 08:834C: A0 00     LDY #$00
C - - - - - 0x02035E 08:834E: E0 01     CPX #$01
C - - - - - 0x020360 08:8350: D0 02     BNE bra_8354
C - - - - - 0x020362 08:8352: A0 04     LDY #$04
bra_8354:
C - - - - - 0x020364 08:8354: BD AA 07  LDA ram_07AA,X
C - - - - - 0x020367 08:8357: 99 DD 07  STA ram_07DD,Y
C - - - - - 0x02036A 08:835A: BD AD 07  LDA ram_07AD,X
C - - - - - 0x02036D 08:835D: 99 E5 07  STA ram_07E5,Y
C - - - - - 0x020370 08:8360: C8        INY
C - - - - - 0x020371 08:8361: C6 E2     DEC ram_00E2
C - - - - - 0x020373 08:8363: D0 EF     BNE bra_8354
C - - - - - 0x020375 08:8365: BD 74 07  LDA ram_0774,X
C - - - - - 0x020378 08:8368: 29 DF     AND #$DF
C - - - - - 0x02037A 08:836A: 9D 74 07  STA ram_0774,X
C - - - - - 0x02037D 08:836D: D0 1E     BNE bra_838D
bra_836F:
C - - - - - 0x02037F 08:836F: FE 8D 07  INC ram_078D,X
C - - - - - 0x020382 08:8372: BD 8D 07  LDA ram_078D,X
C - - - - - 0x020385 08:8375: 29 03     AND #$03
C - - - - - 0x020387 08:8377: 9D 8D 07  STA ram_078D,X
C - - - - - 0x02038A 08:837A: E0 01     CPX #$01
C - - - - - 0x02038C 08:837C: D0 02     BNE bra_8380
C - - - - - 0x02038E 08:837E: 09 04     ORA #$04
bra_8380:
C - - - - - 0x020390 08:8380: A8        TAY
C - - - - - 0x020391 08:8381: BD AA 07  LDA ram_07AA,X
C - - - - - 0x020394 08:8384: 99 DD 07  STA ram_07DD,Y
C - - - - - 0x020397 08:8387: BD AD 07  LDA ram_07AD,X
C - - - - - 0x02039A 08:838A: 99 E5 07  STA ram_07E5,Y
bra_838D:
C - - - - - 0x02039D 08:838D: 68        PLA
C - - - - - 0x02039E 08:838E: A8        TAY
C - - - - - 0x02039F 08:838F: 60        RTS



sub_8390:
C - - - - - 0x0203A0 08:8390: BD 6D 07  LDA ram_076D,X
C - - - - - 0x0203A3 08:8393: 85 E4     STA ram_00E4
C - - - - - 0x0203A5 08:8395: B5 EA     LDA ram_00EA,X
C - - - - - 0x0203A7 08:8397: 4A        LSR
C - - - - - 0x0203A8 08:8398: 90 26     BCC bra_83C0
C - - - - - 0x0203AA 08:839A: B5 EA     LDA ram_00EA,X
C - - - - - 0x0203AC 08:839C: 29 40     AND #$40
C - - - - - 0x0203AE 08:839E: F0 20     BEQ bra_83C0
C - - - - - 0x0203B0 08:83A0: BD 8B 07  LDA ram_078B,X
C - - - - - 0x0203B3 08:83A3: 29 08     AND #$08
C - - - - - 0x0203B5 08:83A5: D0 11     BNE bra_83B8
C - - - - - 0x0203B7 08:83A7: BD 4E 07  LDA ram_074E,X
C - - - - - 0x0203BA 08:83AA: F0 17     BEQ bra_83C3
C - - - - - 0x0203BC 08:83AC: 18        CLC
C - - - - - 0x0203BD 08:83AD: 7D 95 07  ADC ram_0795,X
C - - - - - 0x0203C0 08:83B0: C9 10     CMP #$10
C - - - - - 0x0203C2 08:83B2: 90 0F     BCC bra_83C3
- - - - - - 0x0203C4 08:83B4: A9 0F     LDA #$0F
- - - - - - 0x0203C6 08:83B6: D0 0B     BNE bra_83C3
bra_83B8:
C - - - - - 0x0203C8 08:83B8: BD 95 07  LDA ram_0795,X
C - - - - - 0x0203CB 08:83BB: 18        CLC
C - - - - - 0x0203CC 08:83BC: 65 E4     ADC ram_00E4
C - - - - - 0x0203CE 08:83BE: 85 E4     STA ram_00E4
bra_83C0:
C - - - - - 0x0203D0 08:83C0: BD 4E 07  LDA ram_074E,X
bra_83C3:
C - - - - - 0x0203D3 08:83C3: 85 E2     STA ram_00E2
C - - - - - 0x0203D5 08:83C5: 38        SEC
C - - - - - 0x0203D6 08:83C6: E5 E4     SBC ram_00E4
C - - - - - 0x0203D8 08:83C8: 85 E2     STA ram_00E2
C - - - - - 0x0203DA 08:83CA: D0 06     BNE bra_83D2
C - - - - - 0x0203DC 08:83CC: A5 E4     LDA ram_00E4
C - - - - - 0x0203DE 08:83CE: D0 09     BNE bra_83D9
C - - - - - 0x0203E0 08:83D0: F0 10     BEQ bra_83E2
bra_83D2:
C - - - - - 0x0203E2 08:83D2: B0 07     BCS bra_83DB
C - - - - - 0x0203E4 08:83D4: BD 4E 07  LDA ram_074E,X
C - - - - - 0x0203E7 08:83D7: F0 02     BEQ bra_83DB
bra_83D9:
C - - - - - 0x0203E9 08:83D9: A9 01     LDA #$01
bra_83DB:
C - - - - - 0x0203EB 08:83DB: 85 E2     STA ram_00E2
C - - - - - 0x0203ED 08:83DD: B5 EA     LDA ram_00EA,X
C - - - - - 0x0203EF 08:83DF: 4A        LSR
C - - - - - 0x0203F0 08:83E0: B0 1F     BCS bra_8401
bra_83E2:
C - - - - - 0x0203F2 08:83E2: A5 E2     LDA ram_00E2
C - - - - - 0x0203F4 08:83E4: DD 6F 07  CMP ram_076F,X
C - - - - - 0x0203F7 08:83E7: B0 05     BCS bra_83EE
- - - - - - 0x0203F9 08:83E9: BD 6F 07  LDA ram_076F,X
- - - - - - 0x0203FC 08:83EC: 85 E2     STA ram_00E2
bra_83EE:
C - - - - - 0x0203FE 08:83EE: A5 E2     LDA ram_00E2
C - - - - - 0x020400 08:83F0: 38        SEC
C - - - - - 0x020401 08:83F1: ED 6B 07  SBC ram_076B
C - - - - - 0x020404 08:83F4: F0 02     BEQ bra_83F8
C - - - - - 0x020406 08:83F6: B0 07     BCS bra_83FF
bra_83F8:
C - - - - - 0x020408 08:83F8: BD 4E 07  LDA ram_074E,X
C - - - - - 0x02040B 08:83FB: F0 02     BEQ bra_83FF
C - - - - - 0x02040D 08:83FD: A9 01     LDA #$01
bra_83FF:
C - - - - - 0x02040F 08:83FF: 85 E2     STA ram_00E2
bra_8401:
C - - - - - 0x020411 08:8401: A5 E2     LDA ram_00E2
C - - - - - 0x020413 08:8403: 60        RTS



loc_8404:
C D 0 - - - 0x020414 08:8404: A0 00     LDY #$00
loc_8406:
C D 0 - - - 0x020416 08:8406: B5 EA     LDA ram_00EA,X
C - - - - - 0x020418 08:8408: 4A        LSR
C - - - - - 0x020419 08:8409: 90 04     BCC bra_840F
C - - - - - 0x02041B 08:840B: 4C 73 88  JMP loc_8873
loc_840E:
C D 0 - - - 0x02041E 08:840E: C8        INY
bra_840F:
loc_840F:
C D 0 - - - 0x02041F 08:840F: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x020421 08:8411: 29 F0     AND #$F0
C - - - - - 0x020423 08:8413: 38        SEC
C - - - - - 0x020424 08:8414: E9 C0     SBC #$C0
C - - - - - 0x020426 08:8416: 90 11     BCC bra_8429
C - - - - - 0x020428 08:8418: 20 37 8D  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x02042B 08:841B: 20 59 8C  JSR sub_8C59
- D 0 - I - 0x02042E 08:841E: D6 86     .word ofs_86D6_00
- D 0 - I - 0x020430 08:8420: 0B 87     .word ofs_870B_01
- D 0 - I - 0x020432 08:8422: 7C 87     .word ofs_877C_02
- D 0 - I - 0x020434 08:8424: 1A 8A     .word ofs_8A1A_03



bra_8426:
C - - - - - 0x020436 08:8426: 4C E0 86  JMP loc_86E0
bra_8429:
loc_8429:
C D 0 - - - 0x020439 08:8429: B5 EA     LDA ram_00EA,X
C - - - - - 0x02043B 08:842B: 29 FD     AND #$FD
C - - - - - 0x02043D 08:842D: 95 EA     STA ram_00EA,X
C - - - - - 0x02043F 08:842F: 20 8F 84  JSR sub_848F
C - - - - - 0x020442 08:8432: AD 86 07  LDA ram_0786
C - - - - - 0x020445 08:8435: C9 C0     CMP #$C0
C - - - - - 0x020447 08:8437: B0 ED     BCS bra_8426
C - - - - - 0x020449 08:8439: E0 03     CPX #$03
C - - - - - 0x02044B 08:843B: D0 03     BNE bra_8440
C - - - - - 0x02044D 08:843D: 4C 5B 86  JMP loc_865B
bra_8440:
C - - - - - 0x020450 08:8440: E0 02     CPX #$02
C - - - - - 0x020452 08:8442: F0 03     BEQ bra_8447
C - - - - - 0x020454 08:8444: 20 25 85  JSR sub_8525
bra_8447:
C - - - - - 0x020457 08:8447: BD D7 07  LDA ram_07D7,X
C - - - - - 0x02045A 08:844A: 20 02 85  JSR sub_8502
C - - - - - 0x02045D 08:844D: 9D DA 07  STA ram_07DA,X
C - - - - - 0x020460 08:8450: 20 6D 85  JSR sub_856D
C - - - - - 0x020463 08:8453: BD 68 07  LDA ram_0768,X
C - - - - - 0x020466 08:8456: 10 0B     BPL bra_8463
C - - - - - 0x020468 08:8458: 20 F9 85  JSR sub_85F9
C - - - - - 0x02046B 08:845B: BD B3 07  LDA ram_07B3,X
C - - - - - 0x02046E 08:845E: D0 03     BNE bra_8463
C - - - - - 0x020470 08:8460: 20 5F 82  JSR sub_825F
bra_8463:
C - - - - - 0x020473 08:8463: E0 02     CPX #$02
C - - - - - 0x020475 08:8465: D0 06     BNE bra_846D
C - - - - - 0x020477 08:8467: 20 49 86  JSR sub_8649
C - - - - - 0x02047A 08:846A: 4C 89 84  JMP loc_8489
bra_846D:
C - - - - - 0x02047D 08:846D: BD 74 07  LDA ram_0774,X
C - - - - - 0x020480 08:8470: 10 03     BPL bra_8475
C - - - - - 0x020482 08:8472: 20 3F 83  JSR sub_833F
bra_8475:
C - - - - - 0x020485 08:8475: 20 90 83  JSR sub_8390
C - - - - - 0x020488 08:8478: BD 50 07  LDA ram_0750,X
C - - - - - 0x02048B 08:847B: 4A        LSR
C - - - - - 0x02048C 08:847C: 90 06     BCC bra_8484
C - - - - - 0x02048E 08:847E: 20 B2 81  JSR sub_81B2
C - - - - - 0x020491 08:8481: 4C 89 84  JMP loc_8489
bra_8484:
C - - - - - 0x020494 08:8484: A5 E2     LDA ram_00E2
C - - - - - 0x020496 08:8486: 20 BB 81  JSR sub_81BB
loc_8489:
C D 0 - - - 0x020499 08:8489: 20 D9 85  JSR sub_85D9
C - - - - - 0x02049C 08:848C: 4C 8C 89  JMP loc_898C



sub_848F:
C - - - - - 0x02049F 08:848F: BD ED 07  LDA ram_07ED,X
C - - - - - 0x0204A2 08:8492: F0 41     BEQ bra_84D5
C - - - - - 0x0204A4 08:8494: 48        PHA
C - - - - - 0x0204A5 08:8495: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0204A7 08:8497: 8D 86 07  STA ram_0786
C - - - - - 0x0204AA 08:849A: 68        PLA
C - - - - - 0x0204AB 08:849B: 48        PHA
C - - - - - 0x0204AC 08:849C: 29 10     AND #$10
C - - - - - 0x0204AE 08:849E: F0 1A     BEQ bra_84BA
C - - - - - 0x0204B0 08:84A0: AD 86 07  LDA ram_0786
C - - - - - 0x0204B3 08:84A3: 29 0F     AND #$0F
C - - - - - 0x0204B5 08:84A5: C9 0D     CMP #$0D
C - - - - - 0x0204B7 08:84A7: B0 49     BCS bra_84F2
C - - - - - 0x0204B9 08:84A9: 0E 86 07  ASL ram_0786
C - - - - - 0x0204BC 08:84AC: 0E 86 07  ASL ram_0786
C - - - - - 0x0204BF 08:84AF: 0E 86 07  ASL ram_0786
C - - - - - 0x0204C2 08:84B2: 0E 86 07  ASL ram_0786
C - - - - - 0x0204C5 08:84B5: 68        PLA
C - - - - - 0x0204C6 08:84B6: 29 81     AND #$81
C - - - - - 0x0204C8 08:84B8: D0 03     BNE bra_84BD
bra_84BA:
C - - - - - 0x0204CA 08:84BA: 68        PLA
C - - - - - 0x0204CB 08:84BB: 09 10     ORA #$10
bra_84BD:
C - - - - - 0x0204CD 08:84BD: 9D ED 07  STA ram_07ED,X
C - - - - - 0x0204D0 08:84C0: 29 01     AND #$01
C - - - - - 0x0204D2 08:84C2: F0 04     BEQ bra_84C8
C - - - - - 0x0204D4 08:84C4: A9 02     LDA #$02
C - - - - - 0x0204D6 08:84C6: D0 02     BNE bra_84CA
bra_84C8:
C - - - - - 0x0204D8 08:84C8: A9 01     LDA #$01
bra_84CA:
C - - - - - 0x0204DA 08:84CA: 8D 7C 07  STA ram_077C
C - - - - - 0x0204DD 08:84CD: AD 86 07  LDA ram_0786
C - - - - - 0x0204E0 08:84D0: 29 F0     AND #$F0
C - - - - - 0x0204E2 08:84D2: 0D 7C 07  ORA ram_077C
bra_84D5:
C - - - - - 0x0204E5 08:84D5: 8D 86 07  STA ram_0786
C - - - - - 0x0204E8 08:84D8: D0 02     BNE bra_84DC
C - - - - - 0x0204EA 08:84DA: B1 E0     LDA (ram_00E0),Y
bra_84DC:
C - - - - - 0x0204EC 08:84DC: 29 0F     AND #$0F
C - - - - - 0x0204EE 08:84DE: D0 02     BNE bra_84E2
C - - - - - 0x0204F0 08:84E0: 09 10     ORA #$10
bra_84E2:
C - - - - - 0x0204F2 08:84E2: 85 E2     STA ram_00E2
C - - - - - 0x0204F4 08:84E4: A9 00     LDA #$00
bra_84E6:
C - - - - - 0x0204F6 08:84E6: 18        CLC
C - - - - - 0x0204F7 08:84E7: 7D 00 07  ADC ram_0700,X
C - - - - - 0x0204FA 08:84EA: C6 E2     DEC ram_00E2
C - - - - - 0x0204FC 08:84EC: D0 F8     BNE bra_84E6
C - - - - - 0x0204FE 08:84EE: 9D 06 07  STA ram_0706,X
C - - - - - 0x020501 08:84F1: 60        RTS
bra_84F2:
C - - - - - 0x020502 08:84F2: 68        PLA
C - - - - - 0x020503 08:84F3: 29 81     AND #$81
C - - - - - 0x020505 08:84F5: 9D ED 07  STA ram_07ED,X
C - - - - - 0x020508 08:84F8: 20 B0 8B  JSR sub_8BB0
C - - - - - 0x02050B 08:84FB: A0 00     LDY #$00
C - - - - - 0x02050D 08:84FD: 68        PLA
C - - - - - 0x02050E 08:84FE: 68        PLA
C - - - - - 0x02050F 08:84FF: 4C 0F 84  JMP loc_840F



sub_8502:
C - - - - - 0x020512 08:8502: 29 0F     AND #$0F
C - - - - - 0x020514 08:8504: F0 1E     BEQ bra_8524_RTS
C - - - - - 0x020516 08:8506: 85 E2     STA ram_00E2
C - - - - - 0x020518 08:8508: A9 00     LDA #$00
C - - - - - 0x02051A 08:850A: 85 E4     STA ram_00E4
bra_850C:
C - - - - - 0x02051C 08:850C: 18        CLC
C - - - - - 0x02051D 08:850D: 7D 06 07  ADC ram_0706,X
C - - - - - 0x020520 08:8510: 90 02     BCC bra_8514
C - - - - - 0x020522 08:8512: E6 E4     INC ram_00E4
bra_8514:
C - - - - - 0x020524 08:8514: C6 E2     DEC ram_00E2
C - - - - - 0x020526 08:8516: D0 F4     BNE bra_850C
C - - - - - 0x020528 08:8518: 46 E4     LSR ram_00E4
C - - - - - 0x02052A 08:851A: 6A        ROR
C - - - - - 0x02052B 08:851B: 46 E4     LSR ram_00E4
C - - - - - 0x02052D 08:851D: 6A        ROR
C - - - - - 0x02052E 08:851E: 46 E4     LSR ram_00E4
C - - - - - 0x020530 08:8520: 6A        ROR
C - - - - - 0x020531 08:8521: 46 E4     LSR ram_00E4
C - - - - - 0x020533 08:8523: 6A        ROR
bra_8524_RTS:
C - - - - - 0x020534 08:8524: 60        RTS



sub_8525:
C - - - - - 0x020535 08:8525: BD 56 07  LDA ram_0756,X
C - - - - - 0x020538 08:8528: 9D 4E 07  STA ram_074E,X
C - - - - - 0x02053B 08:852B: BD D4 07  LDA ram_07D4,X
C - - - - - 0x02053E 08:852E: 30 03     BMI bra_8533
- - - - - - 0x020540 08:8530: 4C EA 81  JMP loc_81EA
bra_8533:
C - - - - - 0x020543 08:8533: BD 97 07  LDA ram_0797,X
C - - - - - 0x020546 08:8536: F0 0D     BEQ bra_8545
C - - - - - 0x020548 08:8538: 20 37 8D  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x02054B 08:853B: DD 56 07  CMP ram_0756,X
C - - - - - 0x02054E 08:853E: 90 15     BCC bra_8555
C - - - - - 0x020550 08:8540: A9 00     LDA #$00
C - - - - - 0x020552 08:8542: 9D 97 07  STA ram_0797,X
bra_8545:
sub_8545:
C - - - - - 0x020555 08:8545: BD D4 07  LDA ram_07D4,X
C - - - - - 0x020558 08:8548: 29 0F     AND #$0F
C - - - - - 0x02055A 08:854A: 95 F0     STA ram_00F0,X
sub_854C:
C - - - - - 0x02055C 08:854C: A9 00     LDA #$00
C - - - - - 0x02055E 08:854E: 9D 92 07  STA ram_0792,X
C - - - - - 0x020561 08:8551: 9D B0 07  STA ram_07B0,X
C - - - - - 0x020564 08:8554: 60        RTS
bra_8555:
C - - - - - 0x020565 08:8555: BD 97 07  LDA ram_0797,X
C - - - - - 0x020568 08:8558: 48        PHA
C - - - - - 0x020569 08:8559: 4A        LSR
C - - - - - 0x02056A 08:855A: 4A        LSR
C - - - - - 0x02056B 08:855B: 4A        LSR
C - - - - - 0x02056C 08:855C: 4A        LSR
C - - - - - 0x02056D 08:855D: 9D 4E 07  STA ram_074E,X
C - - - - - 0x020570 08:8560: 68        PLA
C - - - - - 0x020571 08:8561: 29 0F     AND #$0F
C - - - - - 0x020573 08:8563: 9D B0 07  STA ram_07B0,X
C - - - - - 0x020576 08:8566: B5 EA     LDA ram_00EA,X
C - - - - - 0x020578 08:8568: 09 80     ORA #$80
C - - - - - 0x02057A 08:856A: 95 EA     STA ram_00EA,X
C - - - - - 0x02057C 08:856C: 60        RTS



sub_856D:
C - - - - - 0x02057D 08:856D: AD 86 07  LDA ram_0786
C - - - - - 0x020580 08:8570: D0 02     BNE bra_8574
C - - - - - 0x020582 08:8572: B1 E0     LDA (ram_00E0),Y
bra_8574:
C - - - - - 0x020584 08:8574: 29 F0     AND #$F0
C - - - - - 0x020586 08:8576: 4A        LSR
C - - - - - 0x020587 08:8577: 4A        LSR
C - - - - - 0x020588 08:8578: 4A        LSR
C - - - - - 0x020589 08:8579: 85 E2     STA ram_00E2
C - - - - - 0x02058B 08:857B: BD A7 07  LDA ram_07A7,X
C - - - - - 0x02058E 08:857E: 10 16     BPL bra_8596
C - - - - - 0x020590 08:8580: 20 C7 85  JSR sub_85C7
loc_8583:
C D 0 - - - 0x020593 08:8583: BD A4 07  LDA ram_07A4,X
C - - - - - 0x020596 08:8586: 85 E3     STA ram_00E3
C - - - - - 0x020598 08:8588: A5 E2     LDA ram_00E2
loc_858A_loop:
C D 0 - - - 0x02059A 08:858A: C6 E3     DEC ram_00E3
C - - - - - 0x02059C 08:858C: 30 0E     BMI bra_859C
C - - - - - 0x02059E 08:858E: 18        CLC
C - - - - - 0x02059F 08:858F: 69 18     ADC #$18
C - - - - - 0x0205A1 08:8591: 85 E2     STA ram_00E2
C - - - - - 0x0205A3 08:8593: 4C 8A 85  JMP loc_858A_loop
bra_8596:
C - - - - - 0x0205A6 08:8596: 20 D3 85  JSR sub_85D3
C - - - - - 0x0205A9 08:8599: 4C 83 85  JMP loc_8583
bra_859C:
; в оригинале была проверка на превышение E0, тогда читалось из отдельной таблицы
; однако она никогда не использовалось, думаю безопасно было ее удалить
C - - - - - 0x0205B0 08:85A0: AA        TAX
C - - - - - 0x0205B1 08:85A1: BD 8F 8C  LDA tbl_8C8F,X
C - - - - - 0x0205B4 08:85A4: 85 E8     STA ram_00E8
C - - - - - 0x0205B6 08:85A6: 48        PHA
C - - - - - 0x0205B7 08:85A7: BD 90 8C  LDA tbl_8C8F + 1,X
C - - - - - 0x0205BA 08:85AA: 85 E9     STA ram_00E9
C - - - - - 0x0205BC 08:85AC: AE 61 07  LDX ram_0761
C - - - - - 0x0205BF 08:85AF: 9D AD 07  STA ram_07AD,X
C - - - - - 0x0205C2 08:85B2: 68        PLA
C - - - - - 0x0205C3 08:85B3: 9D AA 07  STA ram_07AA,X
C - - - - - 0x0205C6 08:85B6: 60        RTS



sub_85C7:
C - - - - - 0x0205D7 08:85C7: 29 7F     AND #$7F
C - - - - - 0x0205D9 08:85C9: 85 E3     STA ram_00E3
C - - - - - 0x0205DB 08:85CB: A5 E2     LDA ram_00E2
C - - - - - 0x0205DD 08:85CD: 38        SEC
C - - - - - 0x0205DE 08:85CE: E5 E3     SBC ram_00E3
C - - - - - 0x0205E0 08:85D0: 85 E2     STA ram_00E2
C - - - - - 0x0205E2 08:85D2: 60        RTS



sub_85D3:
C - - - - - 0x0205E3 08:85D3: 18        CLC
C - - - - - 0x0205E4 08:85D4: 65 E2     ADC ram_00E2
C - - - - - 0x0205E6 08:85D6: 85 E2     STA ram_00E2
C - - - - - 0x0205E8 08:85D8: 60        RTS



sub_85D9:
C - - - - - 0x0205E9 08:85D9: BD AA 07  LDA ram_07AA,X
C - - - - - 0x0205EC 08:85DC: 85 E8     STA ram_00E8
C - - - - - 0x0205EE 08:85DE: BD AD 07  LDA ram_07AD,X
C - - - - - 0x0205F1 08:85E1: 85 E9     STA ram_00E9
C - - - - - 0x0205F3 08:85E3: BD 68 07  LDA ram_0768,X
C - - - - - 0x0205F6 08:85E6: 30 01     BMI bra_85E9
C - - - - - 0x0205F8 08:85E8: 60        RTS
bra_85E9:
C - - - - - 0x0205F9 08:85E9: A5 E8     LDA ram_00E8
C - - - - - 0x0205FB 08:85EB: 18        CLC
C - - - - - 0x0205FC 08:85EC: 7D CE 07  ADC ram_07CE,X
C - - - - - 0x0205FF 08:85EF: 85 E8     STA ram_00E8
C - - - - - 0x020601 08:85F1: A5 E9     LDA ram_00E9
C - - - - - 0x020603 08:85F3: 7D D1 07  ADC ram_07D1,X
C - - - - - 0x020606 08:85F6: 85 E9     STA ram_00E9
C - - - - - 0x020608 08:85F8: 60        RTS



sub_85F9:
C - - - - - 0x020609 08:85F9: BD CB 07  LDA ram_07CB,X
C - - - - - 0x02060C 08:85FC: 20 37 8D  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x02060F 08:85FF: F0 16     BEQ bra_8617
C - - - - - 0x020611 08:8601: 85 E2     STA ram_00E2
C - - - - - 0x020613 08:8603: C6 E2     DEC ram_00E2
C - - - - - 0x020615 08:8605: F0 0D     BEQ bra_8614
C - - - - - 0x020617 08:8607: BD 00 07  LDA ram_0700,X
bra_860A:
C - - - - - 0x02061A 08:860A: 18        CLC
C - - - - - 0x02061B 08:860B: 7D 00 07  ADC ram_0700,X
C - - - - - 0x02061E 08:860E: C6 E2     DEC ram_00E2
C - - - - - 0x020620 08:8610: D0 F8     BNE bra_860A
C - - - - - 0x020622 08:8612: F0 03     BEQ bra_8617
bra_8614:
C - - - - - 0x020624 08:8614: BD 00 07  LDA ram_0700,X
bra_8617:
C - - - - - 0x020627 08:8617: 9D B3 07  STA ram_07B3,X
C - - - - - 0x02062A 08:861A: A9 00     LDA #$00
C - - - - - 0x02062C 08:861C: 9D B9 07  STA ram_07B9,X
C - - - - - 0x02062F 08:861F: 9D CE 07  STA ram_07CE,X
C - - - - - 0x020632 08:8622: 9D D1 07  STA ram_07D1,X
C - - - - - 0x020635 08:8625: 60        RTS



sub_8626:
C - - - - - 0x020636 08:8626: BD 63 07  LDA ram_0763,X
C - - - - - 0x020639 08:8629: F0 1D     BEQ bra_8648_RTS
C - - - - - 0x02063B 08:862B: 30 0D     BMI bra_863A
- - - - - - 0x02063D 08:862D: A5 E8     LDA ram_00E8
- - - - - - 0x02063F 08:862F: 38        SEC
- - - - - - 0x020640 08:8630: FD 63 07  SBC ram_0763,X
- - - - - - 0x020643 08:8633: 85 E8     STA ram_00E8
- - - - - - 0x020645 08:8635: B0 11     BCS bra_8648_RTS
- - - - - - 0x020647 08:8637: C6 E9     DEC ram_00E9
- - - - - - 0x020649 08:8639: 60        RTS
bra_863A:
C - - - - - 0x02064A 08:863A: BD 63 07  LDA ram_0763,X
C - - - - - 0x02064D 08:863D: 29 7F     AND #$7F
C - - - - - 0x02064F 08:863F: 18        CLC
C - - - - - 0x020650 08:8640: 65 E8     ADC ram_00E8
C - - - - - 0x020652 08:8642: 85 E8     STA ram_00E8
C - - - - - 0x020654 08:8644: 90 02     BCC bra_8648_RTS
C - - - - - 0x020656 08:8646: E6 E9     INC ram_00E9
bra_8648_RTS:
C - - - - - 0x020658 08:8648: 60        RTS



sub_8649:
C - - - - - 0x020659 08:8649: BD D7 07  LDA ram_07D7,X
C - - - - - 0x02065C 08:864C: C9 10     CMP #$10
C - - - - - 0x02065E 08:864E: B0 04     BCS bra_8654
C - - - - - 0x020660 08:8650: A9 90     LDA #$90
C - - - - - 0x020662 08:8652: D0 03     BNE bra_8657
bra_8654:
C - - - - - 0x020664 08:8654: 38        SEC
C - - - - - 0x020665 08:8655: E9 10     SBC #$10
bra_8657:
C - - - - - 0x020667 08:8657: 8D 08 40  STA $4008
C - - - - - 0x02066A 08:865A: 60        RTS



loc_865B:
C D 0 - - - 0x02066B 08:865B: AD 86 07  LDA ram_0786
C - - - - - 0x02066E 08:865E: D0 02     BNE bra_8662
C - - - - - 0x020670 08:8660: B1 E0     LDA (ram_00E0),Y
bra_8662:
C - - - - - 0x020672 08:8662: 20 37 8D  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x020675 08:8665: AA        TAX
C - - - - - 0x020676 08:8666: BD 7C 86  LDA tbl_867C,X
C - - - - - 0x020679 08:8669: C9 47     CMP #$47
C - - - - - 0x02067B 08:866B: B0 06     BCS bra_8673
C - - - - - 0x02067D 08:866D: 20 8D 8E  JSR sub_8E8D
C - - - - - 0x020680 08:8670: 4C 76 86  JMP loc_8676
bra_8673:
C - - - - - 0x020683 08:8673: 20 88 86  JSR sub_8688
loc_8676:
C D 0 - - - 0x020686 08:8676: AE 61 07  LDX ram_0761
C - - - - - 0x020689 08:8679: 4C A4 8B  JMP loc_8BA4



tbl_867C:
- - - - - - 0x02068C 08:867C: 01        .byte $01   ; 00
- D 0 - - - 0x02068D 08:867D: 01        .byte $01   ; 01
- D 0 - - - 0x02068E 08:867E: 02        .byte $02   ; 02
- D 0 - - - 0x02068F 08:867F: 03        .byte $03   ; 03
- D 0 - - - 0x020690 08:8680: 03        .byte $03   ; 04
- - - - - - 0x020691 08:8681: 47        .byte $47   ; 05
- D 0 - - - 0x020692 08:8682: 47        .byte $47   ; 06
- D 0 - - - 0x020693 08:8683: 48        .byte $48   ; 07
- D 0 - - - 0x020694 08:8684: 49        .byte $49   ; 08
- D 0 - - - 0x020695 08:8685: 4A        .byte $4A   ; 09
- D 0 - - - 0x020696 08:8686: 4B        .byte $4B   ; 0A
- D 0 - - - 0x020697 08:8687: 4C        .byte $4C   ; 0B



sub_8688:
C - - - - - 0x020698 08:8688: 48        PHA
C - - - - - 0x020699 08:8689: AD F4 07  LDA ram_07F4
C - - - - - 0x02069C 08:868C: F0 02     BEQ bra_8690
C - - - - - 0x02069E 08:868E: 68        PLA
C - - - - - 0x02069F 08:868F: 60        RTS
bra_8690:
C - - - - - 0x0206A0 08:8690: 68        PLA
C - - - - - 0x0206A1 08:8691: 38        SEC
C - - - - - 0x0206A2 08:8692: E9 47     SBC #$47
C - - - - - 0x0206A4 08:8694: 8D F4 07  STA ram_07F4
C - - - - - 0x0206A7 08:8697: 18        CLC
C - - - - - 0x0206A8 08:8698: 6D F4 07  ADC ram_07F4
C - - - - - 0x0206AB 08:869B: 6D F4 07  ADC ram_07F4
C - - - - - 0x0206AE 08:869E: 6D F4 07  ADC ram_07F4
C - - - - - 0x0206B1 08:86A1: 6D F4 07  ADC ram_07F4
C - - - - - 0x0206B4 08:86A4: AA        TAX
C - - - - - 0x0206B5 08:86A5: A9 00     LDA #$00
C - - - - - 0x0206B7 08:86A7: 8D F4 07  STA ram_07F4
C - - - - - 0x0206BA 08:86AA: A9 0F     LDA #$0F
C - - - - - 0x0206BC 08:86AC: 8D 15 40  STA $4015
C - - - - - 0x0206BF 08:86AF: BD 9B 95  LDA tbl_959B,X
C - - - - - 0x0206C2 08:86B2: 8D 10 40  STA $4010
C - - - - - 0x0206C5 08:86B5: BD 9C 95  LDA tbl_959B + 1,X
C - - - - - 0x0206C8 08:86B8: 8D 11 40  STA $4011
C - - - - - 0x0206CB 08:86BB: BD 9D 95  LDA tbl_959B + 2,X
C - - - - - 0x0206CE 08:86BE: 8D 12 40  STA $4012
C - - - - - 0x0206D1 08:86C1: BD 9E 95  LDA tbl_959B + 3,X
C - - - - - 0x0206D4 08:86C4: 8D 13 40  STA $4013
C - - - - - 0x0206D7 08:86C7: BD 9F 95  LDA tbl_959B + 4,X
C - - - - - 0x0206DA 08:86CA: 8D F4 07  STA ram_07F4
C - - - - - 0x0206DD 08:86CD: A9 1F     LDA #$1F
C - - - - - 0x0206DF 08:86CF: 8D 15 40  STA $4015
C - - - - - 0x0206E2 08:86D2: 60        RTS



bra_86D3:
C - - - - - 0x0206E3 08:86D3: 4C 29 84  JMP loc_8429
ofs_86D6_00:
C - - J - - 0x0206E6 08:86D6: BD ED 07  LDA ram_07ED,X
C - - - - - 0x0206E9 08:86D9: 29 10     AND #$10
C - - - - - 0x0206EB 08:86DB: D0 F6     BNE bra_86D3
C - - - - - 0x0206ED 08:86DD: 20 8F 84  JSR sub_848F
loc_86E0:
C D 0 - - - 0x0206F0 08:86E0: B5 EA     LDA ram_00EA,X
C - - - - - 0x0206F2 08:86E2: 09 02     ORA #$02
C - - - - - 0x0206F4 08:86E4: 95 EA     STA ram_00EA,X
C - - - - - 0x0206F6 08:86E6: A9 00     LDA #$00
C - - - - - 0x0206F8 08:86E8: E0 02     CPX #$02
C - - - - - 0x0206FA 08:86EA: F0 0B     BEQ bra_86F7
C - - - - - 0x0206FC 08:86EC: E0 03     CPX #$03
C - - - - - 0x0206FE 08:86EE: F0 0D     BEQ bra_86FD
C - - - - - 0x020700 08:86F0: A9 7F     LDA #$7F
C - - - - - 0x020702 08:86F2: 20 CA 81  JSR sub_81CA
bra_86F5:
C - - - - - 0x020705 08:86F5: A9 30     LDA #$30
bra_86F7:
C - - - - - 0x020707 08:86F7: 20 BE 81  JSR sub_81BE
bra_86FA:
C - - - - - 0x02070A 08:86FA: 4C A4 8B  JMP loc_8BA4
bra_86FD:
C - - - - - 0x02070D 08:86FD: AD 11 07  LDA ram_0711
C - - - - - 0x020710 08:8700: C9 04     CMP #$04
C - - - - - 0x020712 08:8702: B0 F6     BCS bra_86FA
C - - - - - 0x020714 08:8704: A9 00     LDA #$00
C - - - - - 0x020716 08:8706: 8D 11 07  STA ram_0711
C - - - - - 0x020719 08:8709: F0 EA     BEQ bra_86F5



ofs_870B_01:
C - - J - - 0x02071B 08:870B: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x02071D 08:870D: C9 DE     CMP #$DE
C - - - - - 0x02071F 08:870F: B0 3F     BCS bra_8750
C - - - - - 0x020721 08:8711: 29 0F     AND #$0F
C - - - - - 0x020723 08:8713: 9D 00 07  STA ram_0700,X
C - - - - - 0x020726 08:8716: E0 03     CPX #$03
C - - - - - 0x020728 08:8718: F0 30     BEQ bra_874A
C - - - - - 0x02072A 08:871A: E0 02     CPX #$02
C - - - - - 0x02072C 08:871C: F0 26     BEQ bra_8744
C - - - - - 0x02072E 08:871E: C8        INY
C - - - - - 0x02072F 08:871F: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x020731 08:8721: 48        PHA
C - - - - - 0x020732 08:8722: 29 0F     AND #$0F
C - - - - - 0x020734 08:8724: 9D 56 07  STA ram_0756,X
C - - - - - 0x020737 08:8727: 68        PLA
C - - - - - 0x020738 08:8728: 29 F0     AND #$F0
C - - - - - 0x02073A 08:872A: 9D 54 07  STA ram_0754,X
C - - - - - 0x02073D 08:872D: A9 00     LDA #$00
C - - - - - 0x02073F 08:872F: 9D 6D 07  STA ram_076D,X
C - - - - - 0x020742 08:8732: C8        INY
C - - - - - 0x020743 08:8733: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x020745 08:8735: 9D D4 07  STA ram_07D4,X
C - - - - - 0x020748 08:8738: 30 13     BMI bra_874D
- - - - - - 0x02074A 08:873A: 0A        ASL
- - - - - - 0x02074B 08:873B: 9D D4 07  STA ram_07D4,X
- - - - - - 0x02074E 08:873E: BD 56 07  LDA ram_0756,X
- - - - - - 0x020751 08:8741: 9D 6D 07  STA ram_076D,X
bra_8744:
loc_8744:
C D 0 - - - 0x020754 08:8744: C8        INY
C - - - - - 0x020755 08:8745: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x020757 08:8747: 9D D7 07  STA ram_07D7,X
bra_874A:
C - - - - - 0x02075A 08:874A: 4C 0E 84  JMP loc_840E
bra_874D:
C - - - - - 0x02075D 08:874D: 4C 44 87  JMP loc_8744
bra_8750:
C - - - - - 0x020760 08:8750: 8D 81 07  STA ram_0781
C - - - - - 0x020763 08:8753: BD ED 07  LDA ram_07ED,X
C - - - - - 0x020766 08:8756: C9 80     CMP #$80
C - - - - - 0x020768 08:8758: 90 13     BCC bra_876D
C - - - - - 0x02076A 08:875A: 29 01     AND #$01
C - - - - - 0x02076C 08:875C: 8D 7C 07  STA ram_077C
C - - - - - 0x02076F 08:875F: AD 81 07  LDA ram_0781
C - - - - - 0x020772 08:8762: 29 01     AND #$01
C - - - - - 0x020774 08:8764: CD 7C 07  CMP ram_077C
C - - - - - 0x020777 08:8767: D0 04     BNE bra_876D
C - - - - - 0x020779 08:8769: A9 00     LDA #$00
C - - - - - 0x02077B 08:876B: F0 05     BEQ bra_8772
bra_876D:
C - - - - - 0x02077D 08:876D: AD 81 07  LDA ram_0781
C - - - - - 0x020780 08:8770: 29 81     AND #$81
bra_8772:
C - - - - - 0x020782 08:8772: 9D ED 07  STA ram_07ED,X
C - - - - - 0x020785 08:8775: 20 B0 8B  JSR sub_8BB0
C - - - - - 0x020788 08:8778: A0 FF     LDY #$FF
C - - - - - 0x02078A 08:877A: D0 CE     BNE bra_874A



ofs_877C_02:
C - - J - - 0x02078C 08:877C: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x02078E 08:877E: C9 E6     CMP #$E6
C - - - - - 0x020790 08:8780: B0 07     BCS bra_8789_E6_and_higher
C - - - - - 0x020792 08:8782: 29 0F     AND #$0F
C - - - - - 0x020794 08:8784: 9D A4 07  STA ram_07A4,X
C - - - - - 0x020797 08:8787: 10 C1     BPL bra_874A
bra_8789_E6_and_higher:
C - - - - - 0x020799 08:8789: 38        SEC
C - - - - - 0x02079A 08:878A: E9 E6     SBC #$E6
C - - - - - 0x02079C 08:878C: 20 59 8C  JSR sub_8C59
- D 0 - I - 0x02079F 08:878F: A3 87     .word ofs_87A3_E6
- D 0 - I - 0x0207A1 08:8791: B5 87     .word ofs_87B5_E7
- D 0 - I - 0x0207A3 08:8793: BE 87     .word ofs_87BE_E8
- D 0 - I - 0x0207A5 08:8795: C8 87     .word ofs_87C8_E9
- D 0 - I - 0x0207A7 08:8797: E2 87     .word ofs_87E2_EA
- D 0 - I - 0x0207A9 08:8799: EB 87     .word ofs_87EB_EB
- D 0 - I - 0x0207AB 08:879B: 0F 88     .word ofs_880F_EC
- D 0 - I - 0x0207AD 08:879D: 47 88     .word ofs_8847_ED
- D 0 - I - 0x0207AF 08:879F: 50 88     .word ofs_8850_EE
- D 0 - I - 0x0207B1 08:87A1: 61 88     .word ofs_8861_EF



ofs_87A3_E6:
C - - J - - 0x0207B3 08:87A3: C8        INY
C - - - - - 0x0207B4 08:87A4: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0207B6 08:87A6: 9D D4 07  STA ram_07D4,X
C - - - - - 0x0207B9 08:87A9: 30 07     BMI bra_87B2
- - - - - - 0x0207BB 08:87AB: 0A        ASL
- - - - - - 0x0207BC 08:87AC: 9D D4 07  STA ram_07D4,X
- - - - - - 0x0207BF 08:87AF: 4C 0E 84  JMP loc_840E
bra_87B2:
C - - - - - 0x0207C2 08:87B2: 4C 0E 84  JMP loc_840E



ofs_87B5_E7:
C - - J - - 0x0207C5 08:87B5: C8        INY
C - - - - - 0x0207C6 08:87B6: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0207C8 08:87B8: 9D D7 07  STA ram_07D7,X
C - - - - - 0x0207CB 08:87BB: 4C 0E 84  JMP loc_840E



ofs_87BE_E8:
C - - J - - 0x0207CE 08:87BE: C8        INY
C - - - - - 0x0207CF 08:87BF: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0207D1 08:87C1: 9D 00 07  STA ram_0700,X
loc_87C4:
C D 0 - - - 0x0207D4 08:87C4: C8        INY
C - - - - - 0x0207D5 08:87C5: 4C 06 84  JMP loc_8406



ofs_87C8_E9:
C - - J - - 0x0207D8 08:87C8: C8        INY
C - - - - - 0x0207D9 08:87C9: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0207DB 08:87CB: F0 06     BEQ bra_87D3
C - - - - - 0x0207DD 08:87CD: 29 0F     AND #$0F
C - - - - - 0x0207DF 08:87CF: F0 09     BEQ bra_87DA
C - - - - - 0x0207E1 08:87D1: B1 E0     LDA (ram_00E0),Y
bra_87D3:
C - - - - - 0x0207E3 08:87D3: 9D 50 07  STA ram_0750,X
C - - - - - 0x0207E6 08:87D6: 4C 0E 84  JMP loc_840E



ofs_87D9_E9:
- - - - - - 0x0207E9 08:87D9: C8        INY
bra_87DA:
- - - - - - 0x0207EA 08:87DA: B1 E0     LDA (ram_00E0),Y
- - - - - - 0x0207EC 08:87DC: 9D 54 07  STA ram_0754,X
- - - - - - 0x0207EF 08:87DF: 4C C4 87  JMP loc_87C4



ofs_87E2_EA:
C - - J - - 0x0207F2 08:87E2: C8        INY
C - - - - - 0x0207F3 08:87E3: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0207F5 08:87E5: 9D 97 07  STA ram_0797,X
C - - - - - 0x0207F8 08:87E8: 4C 0E 84  JMP loc_840E



ofs_87EB_EB:
C - - J - - 0x0207FB 08:87EB: C8        INY
C - - - - - 0x0207FC 08:87EC: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0207FE 08:87EE: F0 18     BEQ bra_8808
C - - - - - 0x020800 08:87F0: 38        SEC
C - - - - - 0x020801 08:87F1: E9 50     SBC #$50
C - - - - - 0x020803 08:87F3: 0A        ASL
C - - - - - 0x020804 08:87F4: 9D C8 07  STA ram_07C8,X
C - - - - - 0x020807 08:87F7: C8        INY
C - - - - - 0x020808 08:87F8: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x02080A 08:87FA: 9D CB 07  STA ram_07CB,X
C - - - - - 0x02080D 08:87FD: BD 68 07  LDA ram_0768,X
C - - - - - 0x020810 08:8800: 09 80     ORA #$80
bra_8802:
C - - - - - 0x020812 08:8802: 9D 68 07  STA ram_0768,X
C - - - - - 0x020815 08:8805: 4C 0E 84  JMP loc_840E
bra_8808:
C - - - - - 0x020818 08:8808: BD 68 07  LDA ram_0768,X
C - - - - - 0x02081B 08:880B: 29 7F     AND #$7F
C - - - - - 0x02081D 08:880D: 10 F3     BPL bra_8802



ofs_880F_EC:
C - - J - - 0x02081F 08:880F: C8        INY
C - - - - - 0x020820 08:8810: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x020822 08:8812: 48        PHA
C - - - - - 0x020823 08:8813: 48        PHA
C - - - - - 0x020824 08:8814: 29 0F     AND #$0F
C - - - - - 0x020826 08:8816: F0 0B     BEQ bra_8823
C - - - - - 0x020828 08:8818: C9 04     CMP #$04
C - - - - - 0x02082A 08:881A: 90 05     BCC bra_8821
C - - - - - 0x02082C 08:881C: 38        SEC
C - - - - - 0x02082D 08:881D: E9 03     SBC #$03
C - - - - - 0x02082F 08:881F: 09 10     ORA #$10
bra_8821:
C - - - - - 0x020831 08:8821: 09 A0     ORA #$A0
bra_8823:
C - - - - - 0x020833 08:8823: 9D 74 07  STA ram_0774,X
C - - - - - 0x020836 08:8826: A9 00     LDA #$00
C - - - - - 0x020838 08:8828: 9D 8D 07  STA ram_078D,X
C - - - - - 0x02083B 08:882B: 9D 6F 07  STA ram_076F,X
C - - - - - 0x02083E 08:882E: 68        PLA
C - - - - - 0x02083F 08:882F: 29 30     AND #$30
C - - - - - 0x020841 08:8831: 4A        LSR
C - - - - - 0x020842 08:8832: 4A        LSR
C - - - - - 0x020843 08:8833: 1D 74 07  ORA ram_0774,X
C - - - - - 0x020846 08:8836: 9D 74 07  STA ram_0774,X
C - - - - - 0x020849 08:8839: 68        PLA
C - - - - - 0x02084A 08:883A: 29 C0     AND #$C0
C - - - - - 0x02084C 08:883C: 0A        ASL
C - - - - - 0x02084D 08:883D: 3E 6F 07  ROL ram_076F,X
C - - - - - 0x020850 08:8840: 0A        ASL
C - - - - - 0x020851 08:8841: 3E 6F 07  ROL ram_076F,X
C - - - - - 0x020854 08:8844: 4C 0E 84  JMP loc_840E



ofs_8847_ED:
C - - J - - 0x020857 08:8847: C8        INY
C - - - - - 0x020858 08:8848: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x02085A 08:884A: 9D 63 07  STA ram_0763,X
C - - - - - 0x02085D 08:884D: 4C C4 87  JMP loc_87C4



ofs_8850_EE:
C - - J - - 0x020860 08:8850: C8        INY
C - - - - - 0x020861 08:8851: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x020863 08:8853: 30 07     BMI bra_885C
C - - - - - 0x020865 08:8855: 0A        ASL
bra_8856:
C - - - - - 0x020866 08:8856: 9D A7 07  STA ram_07A7,X
C - - - - - 0x020869 08:8859: 4C 0E 84  JMP loc_840E
bra_885C:
C - - - - - 0x02086C 08:885C: 0A        ASL
C - - - - - 0x02086D 08:885D: 09 80     ORA #$80
C - - - - - 0x02086F 08:885F: D0 F5     BNE bra_8856



ofs_8861_EF:
C - - J - - 0x020871 08:8861: C8        INY
C - - - - - 0x020872 08:8862: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x020874 08:8864: 8D F1 07  STA ram_07F1
C - - - - - 0x020877 08:8867: A9 00     LDA #$00
C - - - - - 0x020879 08:8869: 8D F2 07  STA ram_07F2
C - - - - - 0x02087C 08:886C: 8D F3 07  STA ram_07F3
C - - - - - 0x02087F 08:886F: 4C 0E 84  JMP loc_840E



loc_8872:
C D 0 - - - 0x020882 08:8872: C8        INY
bra_8873:
loc_8873:
C D 0 - - - 0x020883 08:8873: 20 36 8F  JSR sub_8F36
C - - - - - 0x020886 08:8876: AD 90 07  LDA ram_0790
C - - - - - 0x020889 08:8879: 2D 95 07  AND ram_0795
C - - - - - 0x02088C 08:887C: D0 40     BNE bra_88BE
C - - - - - 0x02088E 08:887E: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x020890 08:8880: C9 F9     CMP #$F9
C - - - - - 0x020892 08:8882: 90 03     BCC bra_8887
C - - - - - 0x020894 08:8884: 4C 1A 8A  JMP loc_8A1A
bra_8887:
C - - - - - 0x020897 08:8887: C9 E8     CMP #$E8
C - - - - - 0x020899 08:8889: 90 23     BCC bra_88AE_E7_and_less
C - - - - - 0x02089B 08:888B: C9 F0     CMP #$F0
C - - - - - 0x02089D 08:888D: B0 07     BCS bra_8896
C - - - - - 0x02089F 08:888F: E0 05     CPX #$05
C - - - - - 0x0208A1 08:8891: F0 03     BEQ bra_8896
C - - - - - 0x0208A3 08:8893: 4C A4 89  JMP loc_89A4
bra_8896:
C - - - - - 0x0208A6 08:8896: 4C 0D 89  JMP loc_890D
bra_8899:
- - - - - - 0x0208A9 08:8899: AD 90 07  LDA ram_0790
- - - - - - 0x0208AC 08:889C: 0A        ASL
- - - - - - 0x0208AD 08:889D: 90 07     BCC bra_88A6
- - - - - - 0x0208AF 08:889F: E0 04     CPX #$04
- - - - - - 0x0208B1 08:88A1: F0 03     BEQ bra_88A6
- - - - - - 0x0208B3 08:88A3: 4C 6F 8B  JMP loc_8B6F
bra_88A6:
- - - - - - 0x0208B6 08:88A6: A9 00     LDA #$00
- - - - - - 0x0208B8 08:88A8: 8D 90 07  STA ram_0790
- - - - - - 0x0208BB 08:88AB: 4C 6F 8B  JMP loc_8B6F
bra_88AE_E7_and_less:
C - - - - - 0x0208BE 08:88AE: 29 F0     AND #$F0
C - - - - - 0x0208C0 08:88B0: D0 5B     BNE bra_890D
C - - - - - 0x0208C2 08:88B2: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0208C4 08:88B4: 29 0F     AND #$0F
C - - - - - 0x0208C6 08:88B6: F0 55     BEQ bra_890D
C - - - - - 0x0208C8 08:88B8: 9D 00 07  STA ram_0700,X
C - - - - - 0x0208CB 08:88BB: C8        INY
C - - - - - 0x0208CC 08:88BC: D0 13     BNE bra_88D1
bra_88BE:
C - - - - - 0x0208CE 08:88BE: A9 FF     LDA #$FF
C - - - - - 0x0208D0 08:88C0: 38        SEC
C - - - - - 0x0208D1 08:88C1: ED 95 07  SBC ram_0795
C - - - - - 0x0208D4 08:88C4: 2D 90 07  AND ram_0790
C - - - - - 0x0208D7 08:88C7: 8D 90 07  STA ram_0790
C - - - - - 0x0208DA 08:88CA: AD 9F 07  LDA ram_079F
C - - - - - 0x0208DD 08:88CD: 29 0F     AND #$0F
C - - - - - 0x0208DF 08:88CF: F0 C8     BEQ bra_8899
bra_88D1:
C - - - - - 0x0208E1 08:88D1: E0 05     CPX #$05
C - - - - - 0x0208E3 08:88D3: F0 9E     BEQ bra_8873
C - - - - - 0x0208E5 08:88D5: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0208E7 08:88D7: E0 02     CPX #$02
C - - - - - 0x0208E9 08:88D9: D0 06     BNE bra_88E1
- - - - - - 0x0208EB 08:88DB: 9D D7 07  STA ram_07D7,X
bra_88DE:
C - - - - - 0x0208EE 08:88DE: 4C 72 88  JMP loc_8872
bra_88E1:
C - - - - - 0x0208F1 08:88E1: 29 F0     AND #$F0
C - - - - - 0x0208F3 08:88E3: 9D 54 07  STA ram_0754,X
C - - - - - 0x0208F6 08:88E6: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0208F8 08:88E8: 29 0F     AND #$0F
C - - - - - 0x0208FA 08:88EA: F0 08     BEQ bra_88F4
C - - - - - 0x0208FC 08:88EC: 09 80     ORA #$80
C - - - - - 0x0208FE 08:88EE: C9 88     CMP #$88
C - - - - - 0x020900 08:88F0: F0 12     BEQ bra_8904
C - - - - - 0x020902 08:88F2: D0 03     BNE bra_88F7



bra_88F4:
ofs_88F4_EA:
C - - - - - 0x020904 08:88F4: C8        INY
C - - - - - 0x020905 08:88F5: B1 E0     LDA (ram_00E0),Y
bra_88F7:
C - - - - - 0x020907 08:88F7: 9D 72 07  STA ram_0772,X
C - - - - - 0x02090A 08:88FA: BD 68 07  LDA ram_0768,X
C - - - - - 0x02090D 08:88FD: 09 20     ORA #$20
C - - - - - 0x02090F 08:88FF: 9D 68 07  STA ram_0768,X
C - - - - - 0x020912 08:8902: D0 DA     BNE bra_88DE
bra_8904:
C - - - - - 0x020914 08:8904: A9 7F     LDA #$7F
C - - - - - 0x020916 08:8906: DD 72 07  CMP ram_0772,X
C - - - - - 0x020919 08:8909: F0 D3     BEQ bra_88DE
- - - - - - 0x02091B 08:890B: D0 EA     BNE bra_88F7



bra_890D:
loc_890D:
C D 0 - - - 0x02091D 08:890D: B5 EA     LDA ram_00EA,X
C - - - - - 0x02091F 08:890F: 29 FD     AND #$FD
C - - - - - 0x020921 08:8911: 95 EA     STA ram_00EA,X
C - - - - - 0x020923 08:8913: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x020925 08:8915: E0 05     CPX #$05
C - - - - - 0x020927 08:8917: D0 05     BNE bra_891E
C - - - - - 0x020929 08:8919: C9 10     CMP #$10
C - - - - - 0x02092B 08:891B: D0 01     BNE bra_891E
- - - - - - 0x02092D 08:891D: C8        INY
bra_891E:
C - - - - - 0x02092E 08:891E: BD 00 07  LDA ram_0700,X
C - - - - - 0x020931 08:8921: 9D 06 07  STA ram_0706,X
C - - - - - 0x020934 08:8924: E0 02     CPX #$02
C - - - - - 0x020936 08:8926: D0 0A     BNE bra_8932
- - - - - - 0x020938 08:8928: BD D7 07  LDA ram_07D7,X
- - - - - - 0x02093B 08:892B: 4C 53 89  JMP loc_8953
bra_892E:
C - - - - - 0x02093E 08:892E: 09 30     ORA #$30
C - - - - - 0x020940 08:8930: D0 21     BNE bra_8953
bra_8932:
C - - - - - 0x020942 08:8932: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x020944 08:8934: 20 37 8D  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x020947 08:8937: D0 03     BNE bra_893C
C - - - - - 0x020949 08:8939: 4C E0 86  JMP loc_86E0
bra_893C:
C - - - - - 0x02094C 08:893C: E0 05     CPX #$05
C - - - - - 0x02094E 08:893E: F0 EE     BEQ bra_892E
C - - - - - 0x020950 08:8940: 9D 4E 07  STA ram_074E,X
C - - - - - 0x020953 08:8943: BD 72 07  LDA ram_0772,X
C - - - - - 0x020956 08:8946: 20 CA 81  JSR sub_81CA
C - - - - - 0x020959 08:8949: BD 54 07  LDA ram_0754,X
C - - - - - 0x02095C 08:894C: 29 10     AND #$10
C - - - - - 0x02095E 08:894E: D0 09     BNE bra_8959
- - - - - - 0x020960 08:8950: BD 54 07  LDA ram_0754,X
bra_8953:
loc_8953:
C - - - - - 0x020963 08:8953: 20 BE 81  JSR sub_81BE
C - - - - - 0x020966 08:8956: 4C 5F 89  JMP loc_895F
bra_8959:
C - - - - - 0x020969 08:8959: 20 90 83  JSR sub_8390
C - - - - - 0x02096C 08:895C: 20 BB 81  JSR sub_81BB
loc_895F:
C D 0 - - - 0x02096F 08:895F: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x020971 08:8961: 29 0F     AND #$0F
C - - - - - 0x020973 08:8963: E0 05     CPX #$05
C - - - - - 0x020975 08:8965: D0 04     BNE bra_896B
C - - - - - 0x020977 08:8967: 85 E8     STA ram_00E8
C - - - - - 0x020979 08:8969: F0 21     BEQ bra_898C
bra_896B:
C - - - - - 0x02097B 08:896B: 85 E9     STA ram_00E9
C - - - - - 0x02097D 08:896D: C8        INY
C - - - - - 0x02097E 08:896E: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x020980 08:8970: 85 E8     STA ram_00E8
C - - - - - 0x020982 08:8972: B5 EA     LDA ram_00EA,X
C - - - - - 0x020984 08:8974: 29 40     AND #$40
C - - - - - 0x020986 08:8976: F0 14     BEQ bra_898C
C - - - - - 0x020988 08:8978: BD 77 07  LDA ram_0777,X
C - - - - - 0x02098B 08:897B: 10 15     BPL bra_8992
C - - - - - 0x02098D 08:897D: A5 E8     LDA ram_00E8
C - - - - - 0x02098F 08:897F: 18        CLC
C - - - - - 0x020990 08:8980: 7D 7C 07  ADC ram_077C,X
C - - - - - 0x020993 08:8983: 85 E8     STA ram_00E8
C - - - - - 0x020995 08:8985: A5 E9     LDA ram_00E9
C - - - - - 0x020997 08:8987: 7D 81 07  ADC ram_0781,X
C - - - - - 0x02099A 08:898A: 85 E9     STA ram_00E9
bra_898C:
loc_898C:
C D 0 - - - 0x02099C 08:898C: 20 B0 89  JSR sub_89B0
C - - - - - 0x02099F 08:898F: 4C A4 8B  JMP loc_8BA4
bra_8992:
C - - - - - 0x0209A2 08:8992: A5 E8     LDA ram_00E8
C - - - - - 0x0209A4 08:8994: 38        SEC
C - - - - - 0x0209A5 08:8995: FD 7C 07  SBC ram_077C,X
C - - - - - 0x0209A8 08:8998: 85 E8     STA ram_00E8
C - - - - - 0x0209AA 08:899A: A5 E9     LDA ram_00E9
C - - - - - 0x0209AC 08:899C: FD 81 07  SBC ram_0781,X
C - - - - - 0x0209AF 08:899F: 85 E9     STA ram_00E9
C - - - - - 0x0209B1 08:89A1: 4C 8C 89  JMP loc_898C



loc_89A4:
C D 0 - - - 0x0209B4 08:89A4: 38        SEC
C - - - - - 0x0209B5 08:89A5: E9 E8     SBC #$E8
C - - - - - 0x0209B7 08:89A7: 20 59 8C  JSR sub_8C59
- D 0 - I - 0x0209BA 08:89AA: BE 87     .word ofs_87BE_E8
- - - - - - 0x0209BC 08:89AC: D9 87     .word ofs_87D9_E9
- - - - - - 0x0209BE 08:89AE: F4 88     .word ofs_88F4_EA



loc_89B0:
sub_89B0:
C D 0 - - - 0x0209C0 08:89B0: E0 05     CPX #$05
C - - - - - 0x0209C2 08:89B2: F0 3D     BEQ bra_89F1
C - - - - - 0x0209C4 08:89B4: 20 26 86  JSR sub_8626
C - - - - - 0x0209C7 08:89B7: E0 02     CPX #$02
C - - - - - 0x0209C9 08:89B9: F0 1E     BEQ bra_89D9
sub_89BB:
C - - - - - 0x0209CB 08:89BB: A5 E9     LDA ram_00E9
C - - - - - 0x0209CD 08:89BD: DD 59 07  CMP ram_0759,X
C - - - - - 0x0209D0 08:89C0: D0 19     BNE bra_89DB
C - - - - - 0x0209D2 08:89C2: E0 02     CPX #$02
C - - - - - 0x0209D4 08:89C4: F0 23     BEQ bra_89E9
C - - - - - 0x0209D6 08:89C6: BD 72 07  LDA ram_0772,X
C - - - - - 0x0209D9 08:89C9: 30 0E     BMI bra_89D9
C - - - - - 0x0209DB 08:89CB: BD 68 07  LDA ram_0768,X
C - - - - - 0x0209DE 08:89CE: 29 20     AND #$20
C - - - - - 0x0209E0 08:89D0: D0 07     BNE bra_89D9
C - - - - - 0x0209E2 08:89D2: BD 54 07  LDA ram_0754,X
C - - - - - 0x0209E5 08:89D5: 29 10     AND #$10
C - - - - - 0x0209E7 08:89D7: D0 10     BNE bra_89E9
bra_89D9:
C - - - - - 0x0209E9 08:89D9: A5 E9     LDA ram_00E9
bra_89DB:
C - - - - - 0x0209EB 08:89DB: 9D 59 07  STA ram_0759,X
C - - - - - 0x0209EE 08:89DE: 20 DE 81  JSR sub_81DE
C - - - - - 0x0209F1 08:89E1: BD 68 07  LDA ram_0768,X
C - - - - - 0x0209F4 08:89E4: 29 DF     AND #$DF
C - - - - - 0x0209F6 08:89E6: 9D 68 07  STA ram_0768,X
bra_89E9:
C - - - - - 0x0209F9 08:89E9: A5 E8     LDA ram_00E8
C - - - - - 0x0209FB 08:89EB: 9D 5E 07  STA ram_075E,X
C - - - - - 0x0209FE 08:89EE: 4C D4 81  JMP loc_81D4
bra_89F1:
C - - - - - 0x020A01 08:89F1: A9 08     LDA #$08
C - - - - - 0x020A03 08:89F3: 8D 0F 40  STA $400F
C - - - - - 0x020A06 08:89F6: A5 E8     LDA ram_00E8
C - - - - - 0x020A08 08:89F8: 48        PHA
C - - - - - 0x020A09 08:89F9: B5 EA     LDA ram_00EA,X
C - - - - - 0x020A0B 08:89FB: 10 05     BPL bra_8A02
- - - - - - 0x020A0D 08:89FD: 68        PLA
- - - - - - 0x020A0E 08:89FE: 09 80     ORA #$80
- - - - - - 0x020A10 08:8A00: D0 01     BNE bra_8A03
bra_8A02:
C - - - - - 0x020A12 08:8A02: 68        PLA
bra_8A03:
C - - - - - 0x020A13 08:8A03: 8D 0E 40  STA $400E
C - - - - - 0x020A16 08:8A06: 60        RTS



sub_8A07:
C - - - - - 0x020A17 08:8A07: 48        PHA
C - - - - - 0x020A18 08:8A08: E0 00     CPX #$00
C - - - - - 0x020A1A 08:8A0A: D0 08     BNE bra_8A14
C - - - - - 0x020A1C 08:8A0C: AD 10 07  LDA ram_0710
C - - - - - 0x020A1F 08:8A0F: F0 03     BEQ bra_8A14
C - - - - - 0x020A21 08:8A11: 38        SEC
C - - - - - 0x020A22 08:8A12: B0 01     BCS bra_8A15
bra_8A14:
C - - - - - 0x020A24 08:8A14: 18        CLC
bra_8A15:
C - - - - - 0x020A25 08:8A15: 68        PLA
C - - - - - 0x020A26 08:8A16: AE B2 07  LDX ram_07B2
C - - - - - 0x020A29 08:8A19: 60        RTS



loc_8A1A:
ofs_8A1A_03:
C D 0 J - - 0x020A2A 08:8A1A: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x020A2C 08:8A1C: C9 F9     CMP #$F9
C - - - - - 0x020A2E 08:8A1E: B0 08     BCS bra_8A28
C - - - - - 0x020A30 08:8A20: 29 0F     AND #$0F
C - - - - - 0x020A32 08:8A22: 9D 6D 07  STA ram_076D,X
C - - - - - 0x020A35 08:8A25: 4C 0E 84  JMP loc_840E
bra_8A28:
C - - - - - 0x020A38 08:8A28: 38        SEC
C - - - - - 0x020A39 08:8A29: E9 FA     SBC #$FA
C - - - - - 0x020A3B 08:8A2B: 20 59 8C  JSR sub_8C59
- D 0 - I - 0x020A3E 08:8A2E: 3A 8A     .word ofs_8A3A_FA
- D 0 - I - 0x020A40 08:8A30: D4 8A     .word ofs_8AD4_FB
- D 0 - I - 0x020A42 08:8A32: F0 8A     .word ofs_8AF0_FC
- D 0 - I - 0x020A44 08:8A34: 04 8B     .word ofs_8B04_FD
- D 0 - I - 0x020A46 08:8A36: 1E 8B     .word ofs_8B1E_FE
- D 0 - I - 0x020A48 08:8A38: 6F 8B     .word ofs_8B6F_FF



ofs_8A3A_FA:
C - - J - - 0x020A4A 08:8A3A: B5 EA     LDA ram_00EA,X
C - - - - - 0x020A4C 08:8A3C: 29 40     AND #$40
C - - - - - 0x020A4E 08:8A3E: D0 3F     BNE bra_8A7F
C - - - - - 0x020A50 08:8A40: C8        INY
C - - - - - 0x020A51 08:8A41: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x020A53 08:8A43: 9D 86 07  STA ram_0786,X
C - - - - - 0x020A56 08:8A46: C8        INY
C - - - - - 0x020A57 08:8A47: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x020A59 08:8A49: 9D 77 07  STA ram_0777,X
C - - - - - 0x020A5C 08:8A4C: E0 02     CPX #$02
C - - - - - 0x020A5E 08:8A4E: F0 11     BEQ bra_8A61
C - - - - - 0x020A60 08:8A50: C8        INY
C - - - - - 0x020A61 08:8A51: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x020A63 08:8A53: 9D 8B 07  STA ram_078B,X
C - - - - - 0x020A66 08:8A56: 20 37 8D  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x020A69 08:8A59: 9D 90 07  STA ram_0790,X
C - - - - - 0x020A6C 08:8A5C: A9 00     LDA #$00
C - - - - - 0x020A6E 08:8A5E: 9D 95 07  STA ram_0795,X
bra_8A61:
C - - - - - 0x020A71 08:8A61: B5 EA     LDA ram_00EA,X
C - - - - - 0x020A73 08:8A63: 09 40     ORA #$40
C - - - - - 0x020A75 08:8A65: 95 EA     STA ram_00EA,X
C - - - - - 0x020A77 08:8A67: C8        INY
C - - - - - 0x020A78 08:8A68: 98        TYA
C - - - - - 0x020A79 08:8A69: 18        CLC
C - - - - - 0x020A7A 08:8A6A: 65 E0     ADC ram_00E0
C - - - - - 0x020A7C 08:8A6C: 9D 9A 07  STA ram_079A,X
C - - - - - 0x020A7F 08:8A6F: A9 00     LDA #$00
C - - - - - 0x020A81 08:8A71: 9D 7C 07  STA ram_077C,X
C - - - - - 0x020A84 08:8A74: 9D 81 07  STA ram_0781,X
C - - - - - 0x020A87 08:8A77: 65 E1     ADC ram_00E1
C - - - - - 0x020A89 08:8A79: 9D 9F 07  STA ram_079F,X
C - - - - - 0x020A8C 08:8A7C: 4C 06 84  JMP loc_8406
bra_8A7F:
C - - - - - 0x020A8F 08:8A7F: DE 86 07  DEC ram_0786,X
C - - - - - 0x020A92 08:8A82: F0 41     BEQ bra_8AC5
C - - - - - 0x020A94 08:8A84: E0 02     CPX #$02
C - - - - - 0x020A96 08:8A86: F0 1F     BEQ bra_8AA7
C - - - - - 0x020A98 08:8A88: DE 90 07  DEC ram_0790,X
C - - - - - 0x020A9B 08:8A8B: D0 1A     BNE bra_8AA7
C - - - - - 0x020A9D 08:8A8D: BD 8B 07  LDA ram_078B,X
C - - - - - 0x020AA0 08:8A90: 48        PHA
C - - - - - 0x020AA1 08:8A91: 20 37 8D  JSR sub_0x03D217_divide_by_10h
C - - - - - 0x020AA4 08:8A94: 9D 90 07  STA ram_0790,X
C - - - - - 0x020AA7 08:8A97: 68        PLA
C - - - - - 0x020AA8 08:8A98: 29 07     AND #$07
C - - - - - 0x020AAA 08:8A9A: 18        CLC
C - - - - - 0x020AAB 08:8A9B: 7D 95 07  ADC ram_0795,X
C - - - - - 0x020AAE 08:8A9E: C9 10     CMP #$10
C - - - - - 0x020AB0 08:8AA0: 90 02     BCC bra_8AA4
- - - - - - 0x020AB2 08:8AA2: A9 0F     LDA #$0F
bra_8AA4:
C - - - - - 0x020AB4 08:8AA4: 9D 95 07  STA ram_0795,X
bra_8AA7:
C - - - - - 0x020AB7 08:8AA7: BD 77 07  LDA ram_0777,X
C - - - - - 0x020ABA 08:8AAA: 29 7F     AND #$7F
C - - - - - 0x020ABC 08:8AAC: 18        CLC
C - - - - - 0x020ABD 08:8AAD: 7D 7C 07  ADC ram_077C,X
C - - - - - 0x020AC0 08:8AB0: 9D 7C 07  STA ram_077C,X
C - - - - - 0x020AC3 08:8AB3: 90 03     BCC bra_8AB8
- - - - - - 0x020AC5 08:8AB5: FE 81 07  INC ram_0781,X
bra_8AB8:
C - - - - - 0x020AC8 08:8AB8: BD 9A 07  LDA ram_079A,X
C - - - - - 0x020ACB 08:8ABB: 85 E0     STA ram_00E0
C - - - - - 0x020ACD 08:8ABD: BD 9F 07  LDA ram_079F,X
C - - - - - 0x020AD0 08:8AC0: 85 E1     STA ram_00E1
C - - - - - 0x020AD2 08:8AC2: 4C 04 84  JMP loc_8404
bra_8AC5:
C - - - - - 0x020AD5 08:8AC5: B5 EA     LDA ram_00EA,X
C - - - - - 0x020AD7 08:8AC7: 29 BF     AND #$BF
C - - - - - 0x020AD9 08:8AC9: 95 EA     STA ram_00EA,X
C - - - - - 0x020ADB 08:8ACB: A9 00     LDA #$00
C - - - - - 0x020ADD 08:8ACD: 9D 7C 07  STA ram_077C,X
C - - - - - 0x020AE0 08:8AD0: C8        INY
C - - - - - 0x020AE1 08:8AD1: 4C 06 84  JMP loc_8406



ofs_8AD4_FB:
C - - J - - 0x020AE4 08:8AD4: 20 DD 8A  JSR sub_8ADD
C - - - - - 0x020AE7 08:8AD7: B5 EA     LDA ram_00EA,X
C - - - - - 0x020AE9 08:8AD9: 09 04     ORA #$04
C - - - - - 0x020AEB 08:8ADB: D0 22     BNE bra_8AFF



sub_8ADD:
C - - - - - 0x020AED 08:8ADD: C8        INY
C - - - - - 0x020AEE 08:8ADE: 98        TYA
C - - - - - 0x020AEF 08:8ADF: 18        CLC
C - - - - - 0x020AF0 08:8AE0: 65 E0     ADC ram_00E0
C - - - - - 0x020AF2 08:8AE2: 9D 1E 07  STA ram_071E,X
C - - - - - 0x020AF5 08:8AE5: A9 00     LDA #$00
C - - - - - 0x020AF7 08:8AE7: 9D 36 07  STA ram_0736,X
C - - - - - 0x020AFA 08:8AEA: 65 E1     ADC ram_00E1
C - - - - - 0x020AFC 08:8AEC: 9D 2A 07  STA ram_072A,X
C - - - - - 0x020AFF 08:8AEF: 60        RTS



ofs_8AF0_FC:
C - - J - - 0x020B00 08:8AF0: 8A        TXA
C - - - - - 0x020B01 08:8AF1: 18        CLC
C - - - - - 0x020B02 08:8AF2: 69 06     ADC #$06
C - - - - - 0x020B04 08:8AF4: AA        TAX
C - - - - - 0x020B05 08:8AF5: 20 DD 8A  JSR sub_8ADD
C - - - - - 0x020B08 08:8AF8: AE 61 07  LDX ram_0761
C - - - - - 0x020B0B 08:8AFB: B5 EA     LDA ram_00EA,X
C - - - - - 0x020B0D 08:8AFD: 09 08     ORA #$08
bra_8AFF:
C - - - - - 0x020B0F 08:8AFF: 95 EA     STA ram_00EA,X
C - - - - - 0x020B11 08:8B01: 4C 06 84  JMP loc_8406



ofs_8B04_FD:
C - - J - - 0x020B14 08:8B04: 20 88 8B  JSR sub_8B88
C - - - - - 0x020B17 08:8B07: C8        INY
C - - - - - 0x020B18 08:8B08: 98        TYA
C - - - - - 0x020B19 08:8B09: 18        CLC
C - - - - - 0x020B1A 08:8B0A: 65 E0     ADC ram_00E0
C - - - - - 0x020B1C 08:8B0C: 9D 42 07  STA ram_0742,X
C - - - - - 0x020B1F 08:8B0F: A9 00     LDA #$00
C - - - - - 0x020B21 08:8B11: 65 E1     ADC ram_00E1
C - - - - - 0x020B23 08:8B13: 9D 48 07  STA ram_0748,X
C - - - - - 0x020B26 08:8B16: B5 EA     LDA ram_00EA,X
C - - - - - 0x020B28 08:8B18: 09 10     ORA #$10
C - - - - - 0x020B2A 08:8B1A: 95 EA     STA ram_00EA,X
C - - - - - 0x020B2C 08:8B1C: D0 77     JMP loc_8B95



ofs_8B1E_FE:
C - - J - - 0x020B2E 08:8B1E: C8        INY
C - - - - - 0x020B2F 08:8B1F: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x020B31 08:8B21: C9 FF     CMP #$FF
C - - - - - 0x020B33 08:8B23: D0 06     BNE bra_8B2B
C - - - - - 0x020B35 08:8B25: 20 88 8B  JSR sub_8B88
C - - - - - 0x020B38 08:8B28: 4C 95 8B  JMP loc_8B95
bra_8B2B:
C - - - - - 0x020B3B 08:8B2B: B5 EA     LDA ram_00EA,X
C - - - - - 0x020B3D 08:8B2D: 29 04     AND #$04
C - - - - - 0x020B3F 08:8B2F: F0 20     BEQ bra_8B51
C - - - - - 0x020B41 08:8B31: FE 36 07  INC ram_0736,X
C - - - - - 0x020B44 08:8B34: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x020B46 08:8B36: DD 36 07  CMP ram_0736,X
C - - - - - 0x020B49 08:8B39: D0 09     BNE bra_8B44
C - - - - - 0x020B4B 08:8B3B: B5 EA     LDA ram_00EA,X
C - - - - - 0x020B4D 08:8B3D: 29 FB     AND #$FB
C - - - - - 0x020B4F 08:8B3F: 95 EA     STA ram_00EA,X
C - - - - - 0x020B51 08:8B41: 4C C4 87  JMP loc_87C4
bra_8B44:
C - - - - - 0x020B54 08:8B44: BD 1E 07  LDA ram_071E,X
C - - - - - 0x020B57 08:8B47: 85 E0     STA ram_00E0
C - - - - - 0x020B59 08:8B49: BD 2A 07  LDA ram_072A,X
loc_8B4C:
C D 0 - - - 0x020B5C 08:8B4C: 85 E1     STA ram_00E1
C - - - - - 0x020B5E 08:8B4E: 4C 04 84  JMP loc_8404
bra_8B51:
C - - - - - 0x020B61 08:8B51: FE 3C 07  INC ram_073C,X
C - - - - - 0x020B64 08:8B54: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x020B66 08:8B56: DD 3C 07  CMP ram_073C,X
C - - - - - 0x020B69 08:8B59: D0 09     BNE bra_8B64
C - - - - - 0x020B6B 08:8B5B: B5 EA     LDA ram_00EA,X
C - - - - - 0x020B6D 08:8B5D: 29 F7     AND #$F7
C - - - - - 0x020B6F 08:8B5F: 95 EA     STA ram_00EA,X
C - - - - - 0x020B71 08:8B61: 4C C4 87  JMP loc_87C4
bra_8B64:
C - - - - - 0x020B74 08:8B64: BD 24 07  LDA ram_0724,X
C - - - - - 0x020B77 08:8B67: 85 E0     STA ram_00E0
C - - - - - 0x020B79 08:8B69: BD 30 07  LDA ram_0730,X
C - - - - - 0x020B7C 08:8B6C: 4C 4C 8B  JMP loc_8B4C



ofs_8B6F_FF:
loc_8B6F:
C - - J - - 0x020B7F 08:8B6F: B5 EA     LDA ram_00EA,X
C - - - - - 0x020B81 08:8B71: 29 10     AND #$10
C - - - - - 0x020B83 08:8B73: F0 4F     BEQ bra_8BC4
C - - - - - 0x020B85 08:8B75: BD 42 07  LDA ram_0742,X
C - - - - - 0x020B88 08:8B78: 85 E0     STA ram_00E0
C - - - - - 0x020B8A 08:8B7A: BD 48 07  LDA ram_0748,X
C - - - - - 0x020B8D 08:8B7D: 85 E1     STA ram_00E1
C - - - - - 0x020B8F 08:8B7F: B5 EA     LDA ram_00EA,X
C - - - - - 0x020B91 08:8B81: 29 EF     AND #$EF
C - - - - - 0x020B93 08:8B83: 95 EA     STA ram_00EA,X
C - - - - - 0x020B95 08:8B85: 4C 04 84  JMP loc_8404



sub_8B88:
C - - - - - 0x020B98 08:8B88: C8        INY
C - - - - - 0x020B99 08:8B89: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x020B9B 08:8B8B: 9D 12 07  STA ram_0712,X
C - - - - - 0x020B9E 08:8B8E: C8        INY
C - - - - - 0x020B9F 08:8B8F: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x020BA1 08:8B91: 9D 18 07  STA ram_0718,X
C - - - - - 0x020BA4 08:8B94: 60        RTS



loc_8B95:
C D 0 - - - 0x020BA5 08:8B95: A0 00     LDY #$00
C - - - - - 0x020BA7 08:8B97: BD 12 07  LDA ram_0712,X
C - - - - - 0x020BAA 08:8B9A: 85 E0     STA ram_00E0
C - - - - - 0x020BAC 08:8B9C: BD 18 07  LDA ram_0718,X
C - - - - - 0x020BAF 08:8B9F: 85 E1     STA ram_00E1
C - - - - - 0x020BB1 08:8BA1: 4C 06 84  JMP loc_8406



loc_8BA4:
C D 0 - - - 0x020BB4 08:8BA4: B5 EA     LDA ram_00EA,X
C - - - - - 0x020BB6 08:8BA6: 4A        LSR
C - - - - - 0x020BB7 08:8BA7: B0 07     BCS bra_8BB0
C - - - - - 0x020BB9 08:8BA9: BD ED 07  LDA ram_07ED,X
C - - - - - 0x020BBC 08:8BAC: 29 10     AND #$10
C - - - - - 0x020BBE 08:8BAE: D0 13     BNE bra_8BC3_RTS
bra_8BB0:
sub_8BB0:
C - - - - - 0x020BC0 08:8BB0: C8        INY
C - - - - - 0x020BC1 08:8BB1: 98        TYA
C - - - - - 0x020BC2 08:8BB2: 18        CLC
C - - - - - 0x020BC3 08:8BB3: 65 E0     ADC ram_00E0
C - - - - - 0x020BC5 08:8BB5: 9D 12 07  STA ram_0712,X
C - - - - - 0x020BC8 08:8BB8: 85 E0     STA ram_00E0
C - - - - - 0x020BCA 08:8BBA: A9 00     LDA #$00
C - - - - - 0x020BCC 08:8BBC: 65 E1     ADC ram_00E1
C - - - - - 0x020BCE 08:8BBE: 9D 18 07  STA ram_0718,X
C - - - - - 0x020BD1 08:8BC1: 85 E1     STA ram_00E1
bra_8BC3_RTS:
C - - - - - 0x020BD3 08:8BC3: 60        RTS
bra_8BC4:
C - - - - - 0x020BD4 08:8BC4: A9 00     LDA #$00
C - - - - - 0x020BD6 08:8BC6: 9D 0C 07  STA ram_070C,X
C - - - - - 0x020BD9 08:8BC9: 8A        TXA
C - - - - - 0x020BDA 08:8BCA: 20 59 8C  JSR sub_8C59
- D 0 - I - 0x020BDD 08:8BCD: D9 8B     .word ofs_8BD9_00
- D 0 - I - 0x020BDF 08:8BCF: D9 8B     .word ofs_8BD9_01
- D 0 - I - 0x020BE1 08:8BD1: DE 8B     .word ofs_8BDE_02
- D 0 - I - 0x020BE3 08:8BD3: 0B 8C     .word ofs_8C0B_03_RTS
- D 0 - I - 0x020BE5 08:8BD5: E9 8B     .word ofs_8BE9_04
- D 0 - I - 0x020BE7 08:8BD7: D9 8B     .word ofs_8BD9_05



ofs_8BD9_00:
ofs_8BD9_01:
ofs_8BD9_05:
C - - J - - 0x020BE9 08:8BD9: A9 30     LDA #$30
C - - - - - 0x020BEB 08:8BDB: 4C BE 81  JMP loc_81BE



sub_8BDE:
ofs_8BDE_02:
C - - - - - 0x020BEE 08:8BDE: A9 0B     LDA #$0B    ; bzk нахрена тут 2 записи
C - - - - - 0x020BF0 08:8BE0: 8D 15 40  STA $4015
C - - - - - 0x020BF3 08:8BE3: A9 0F     LDA #$0F
C - - - - - 0x020BF5 08:8BE5: 8D 15 40  STA $4015
C - - - - - 0x020BF8 08:8BE8: 60        RTS



ofs_8BE9_04:
C - - J - - 0x020BF9 08:8BE9: 86 E4     STX ram_00E4
C - - - - - 0x020BFB 08:8BEB: A2 00     LDX #$00
C - - - - - 0x020BFD 08:8BED: 8E 61 07  STX ram_0761
C - - - - - 0x020C00 08:8BF0: A9 30     LDA #$30
C - - - - - 0x020C02 08:8BF2: 8D 00 40  STA $4000
C - - - - - 0x020C05 08:8BF5: A9 7F     LDA #$7F
C - - - - - 0x020C07 08:8BF7: 8D 01 40  STA $4001
C - - - - - 0x020C0A 08:8BFA: A5 97     LDA ram_0097
C - - - - - 0x020C0C 08:8BFC: D0 0D     BNE bra_8C0B_RTS
C - - - - - 0x020C0E 08:8BFE: AD 0C 07  LDA ram_070C
C - - - - - 0x020C11 08:8C01: F0 08     BEQ bra_8C0B_RTS
C - - - - - 0x020C13 08:8C03: 20 25 8C  JSR sub_8C25
C - - - - - 0x020C16 08:8C06: A6 E4     LDX ram_00E4
C - - - - - 0x020C18 08:8C08: 8E 61 07  STX ram_0761
bra_8C0B_RTS:
ofs_8C0B_03_RTS:
C - - - - - 0x020C1B 08:8C0B: 60        RTS



sub_8C0C:
C - - - - - 0x020C1C 08:8C0C: A2 00     LDX #$00
bra_8C0E_loop:
C - - - - - 0x020C1E 08:8C0E: BD 5C 80  LDA tbl_805C,X
C - - - - - 0x020C21 08:8C11: 8E 61 07  STX ram_0761
C - - - - - 0x020C24 08:8C14: 8D B2 07  STA ram_07B2
C - - - - - 0x020C27 08:8C17: BD 0C 07  LDA ram_070C,X
C - - - - - 0x020C2A 08:8C1A: F0 03     BEQ bra_8C1F
C - - - - - 0x020C2C 08:8C1C: 20 25 8C  JSR sub_8C25
bra_8C1F:
C - - - - - 0x020C2F 08:8C1F: E8        INX
C - - - - - 0x020C30 08:8C20: E0 03     CPX #$03
C - - - - - 0x020C32 08:8C22: D0 EA     BNE bra_8C0E_loop
C - - - - - 0x020C34 08:8C24: 60        RTS



sub_8C25:
C - - - - - 0x020C35 08:8C25: B5 EA     LDA ram_00EA,X
C - - - - - 0x020C37 08:8C27: 29 02     AND #$02
C - - - - - 0x020C39 08:8C29: D0 19     BNE bra_8C44
C - - - - - 0x020C3B 08:8C2B: E0 02     CPX #$02
C - - - - - 0x020C3D 08:8C2D: F0 23     BEQ bra_8C52
C - - - - - 0x020C3F 08:8C2F: 20 BB 81  JSR sub_81BB
C - - - - - 0x020C42 08:8C32: BD 72 07  LDA ram_0772,X
C - - - - - 0x020C45 08:8C35: 20 CA 81  JSR sub_81CA
bra_8C38:
loc_8C38:
C D 0 - - - 0x020C48 08:8C38: BD 59 07  LDA ram_0759,X
C - - - - - 0x020C4B 08:8C3B: 20 DE 81  JSR sub_81DE
C - - - - - 0x020C4E 08:8C3E: BD 5E 07  LDA ram_075E,X
C - - - - - 0x020C51 08:8C41: 4C D4 81  JMP loc_81D4
bra_8C44:
C - - - - - 0x020C54 08:8C44: A9 00     LDA #$00
C - - - - - 0x020C56 08:8C46: E0 02     CPX #$02
C - - - - - 0x020C58 08:8C48: F0 02     BEQ bra_8C4C
C - - - - - 0x020C5A 08:8C4A: A9 30     LDA #$30
bra_8C4C:
C - - - - - 0x020C5C 08:8C4C: 20 BE 81  JSR sub_81BE
C - - - - - 0x020C5F 08:8C4F: 4C 38 8C  JMP loc_8C38
bra_8C52:
C - - - - - 0x020C62 08:8C52: A9 90     LDA #$90
C - - - - - 0x020C64 08:8C54: 8D 08 40  STA $4008
C - - - - - 0x020C67 08:8C57: D0 DF     BNE bra_8C38



sub_8C59:
C - - - - - 0x020C69 08:8C59: 86 E4     STX ram_00E4
C - - - - - 0x020C6B 08:8C5B: 84 E5     STY ram_00E5
C - - - - - 0x020C6D 08:8C5D: 0A        ASL
C - - - - - 0x020C6E 08:8C5E: A8        TAY
C - - - - - 0x020C6F 08:8C5F: C8        INY
C - - - - - 0x020C70 08:8C60: 68        PLA
C - - - - - 0x020C71 08:8C61: 85 E2     STA ram_00E2
C - - - - - 0x020C73 08:8C63: 68        PLA
C - - - - - 0x020C74 08:8C64: 85 E3     STA ram_00E3
C - - - - - 0x020C76 08:8C66: B1 E2     LDA (ram_00E2),Y
C - - - - - 0x020C78 08:8C68: AA        TAX
C - - - - - 0x020C79 08:8C69: C8        INY
C - - - - - 0x020C7A 08:8C6A: B1 E2     LDA (ram_00E2),Y
C - - - - - 0x020C7C 08:8C6C: 85 E3     STA ram_00E3
C - - - - - 0x020C7E 08:8C6E: 86 E2     STX ram_00E2
C - - - - - 0x020C80 08:8C70: A6 E4     LDX ram_00E4
C - - - - - 0x020C82 08:8C72: A4 E5     LDY ram_00E5
C - - - - - 0x020C84 08:8C74: 6C E2 00  JMP (ram_00E2)



tbl_8C8F:
; по 24 байта
; 00
- - - - - - 0x020C9F 08:8C8F: AE        .byte $AE   ; 
- - - - - - 0x020CA0 08:8C90: 06        .byte $06   ; 
- - - - - - 0x020CA1 08:8C91: 4E        .byte $4E   ; 
- - - - - - 0x020CA2 08:8C92: 06        .byte $06   ; 
- - - - - - 0x020CA3 08:8C93: F4        .byte $F4   ; 
- - - - - - 0x020CA4 08:8C94: 05        .byte $05   ; 
- - - - - - 0x020CA5 08:8C95: 9E        .byte $9E   ; 
- - - - - - 0x020CA6 08:8C96: 05        .byte $05   ; 
- D 0 - - - 0x020CA7 08:8C97: 4D        .byte $4D   ; 
- D 0 - - - 0x020CA8 08:8C98: 05        .byte $05   ; 
- D 0 - - - 0x020CA9 08:8C99: 01        .byte $01   ; 
- D 0 - - - 0x020CAA 08:8C9A: 05        .byte $05   ; 
- D 0 - - - 0x020CAB 08:8C9B: B9        .byte $B9   ; 
- D 0 - - - 0x020CAC 08:8C9C: 04        .byte $04   ; 
- D 0 - - - 0x020CAD 08:8C9D: 75        .byte $75   ; 
- D 0 - - - 0x020CAE 08:8C9E: 04        .byte $04   ; 
- D 0 - - - 0x020CAF 08:8C9F: 35        .byte $35   ; 
- D 0 - - - 0x020CB0 08:8CA0: 04        .byte $04   ; 
- D 0 - - - 0x020CB1 08:8CA1: F9        .byte $F9   ; 
- D 0 - - - 0x020CB2 08:8CA2: 03        .byte $03   ; 
- D 0 - - - 0x020CB3 08:8CA3: C0        .byte $C0   ; 
- D 0 - - - 0x020CB4 08:8CA4: 03        .byte $03   ; 
- D 0 - - - 0x020CB5 08:8CA5: 8A        .byte $8A   ; 
- D 0 - - - 0x020CB6 08:8CA6: 03        .byte $03   ; 
; 01
- D 0 - - - 0x020CB7 08:8CA7: 57        .byte $57   ; 
- D 0 - - - 0x020CB8 08:8CA8: 03        .byte $03   ; 
- D 0 - - - 0x020CB9 08:8CA9: 27        .byte $27   ; 
- D 0 - - - 0x020CBA 08:8CAA: 03        .byte $03   ; 
- D 0 - - - 0x020CBB 08:8CAB: FA        .byte $FA   ; 
- D 0 - - - 0x020CBC 08:8CAC: 02        .byte $02   ; 
- D 0 - - - 0x020CBD 08:8CAD: CF        .byte $CF   ; 
- D 0 - - - 0x020CBE 08:8CAE: 02        .byte $02   ; 
- D 0 - - - 0x020CBF 08:8CAF: A7        .byte $A7   ; 
- D 0 - - - 0x020CC0 08:8CB0: 02        .byte $02   ; 
- D 0 - - - 0x020CC1 08:8CB1: 81        .byte $81   ; 
- D 0 - - - 0x020CC2 08:8CB2: 02        .byte $02   ; 
- D 0 - - - 0x020CC3 08:8CB3: 5D        .byte $5D   ; 
- D 0 - - - 0x020CC4 08:8CB4: 02        .byte $02   ; 
- D 0 - - - 0x020CC5 08:8CB5: 3A        .byte $3A   ; 
- D 0 - - - 0x020CC6 08:8CB6: 02        .byte $02   ; 
- D 0 - - - 0x020CC7 08:8CB7: 1A        .byte $1A   ; 
- D 0 - - - 0x020CC8 08:8CB8: 02        .byte $02   ; 
- D 0 - - - 0x020CC9 08:8CB9: FC        .byte $FC   ; 
- D 0 - - - 0x020CCA 08:8CBA: 01        .byte $01   ; 
- D 0 - - - 0x020CCB 08:8CBB: E0        .byte $E0   ; 
- D 0 - - - 0x020CCC 08:8CBC: 01        .byte $01   ; 
- D 0 - - - 0x020CCD 08:8CBD: C5        .byte $C5   ; 
- D 0 - - - 0x020CCE 08:8CBE: 01        .byte $01   ; 
; 02
- D 0 - - - 0x020CCF 08:8CBF: AC        .byte $AC   ; 
- D 0 - - - 0x020CD0 08:8CC0: 01        .byte $01   ; 
- D 0 - - - 0x020CD1 08:8CC1: 94        .byte $94   ; 
- D 0 - - - 0x020CD2 08:8CC2: 01        .byte $01   ; 
- D 0 - - - 0x020CD3 08:8CC3: 7D        .byte $7D   ; 
- D 0 - - - 0x020CD4 08:8CC4: 01        .byte $01   ; 
- D 0 - - - 0x020CD5 08:8CC5: 68        .byte $68   ; 
- D 0 - - - 0x020CD6 08:8CC6: 01        .byte $01   ; 
- D 0 - - - 0x020CD7 08:8CC7: 53        .byte $53   ; 
- D 0 - - - 0x020CD8 08:8CC8: 01        .byte $01   ; 
- D 0 - - - 0x020CD9 08:8CC9: 40        .byte $40   ; 
- D 0 - - - 0x020CDA 08:8CCA: 01        .byte $01   ; 
- D 0 - - - 0x020CDB 08:8CCB: 2E        .byte $2E   ; 
- D 0 - - - 0x020CDC 08:8CCC: 01        .byte $01   ; 
- D 0 - - - 0x020CDD 08:8CCD: 1D        .byte $1D   ; 
- D 0 - - - 0x020CDE 08:8CCE: 01        .byte $01   ; 
- D 0 - - - 0x020CDF 08:8CCF: 0D        .byte $0D   ; 
- D 0 - - - 0x020CE0 08:8CD0: 01        .byte $01   ; 
- D 0 - - - 0x020CE1 08:8CD1: FE        .byte $FE   ; 
- D 0 - - - 0x020CE2 08:8CD2: 00        .byte $00   ; 
- D 0 - - - 0x020CE3 08:8CD3: F0        .byte $F0   ; 
- D 0 - - - 0x020CE4 08:8CD4: 00        .byte $00   ; 
- D 0 - - - 0x020CE5 08:8CD5: E2        .byte $E2   ; 
- D 0 - - - 0x020CE6 08:8CD6: 00        .byte $00   ; 
; 03
- D 0 - - - 0x020CE7 08:8CD7: D6        .byte $D6   ; 
- D 0 - - - 0x020CE8 08:8CD8: 00        .byte $00   ; 
- D 0 - - - 0x020CE9 08:8CD9: CA        .byte $CA   ; 
- D 0 - - - 0x020CEA 08:8CDA: 00        .byte $00   ; 
- D 0 - - - 0x020CEB 08:8CDB: BE        .byte $BE   ; 
- D 0 - - - 0x020CEC 08:8CDC: 00        .byte $00   ; 
- D 0 - - - 0x020CED 08:8CDD: B4        .byte $B4   ; 
- D 0 - - - 0x020CEE 08:8CDE: 00        .byte $00   ; 
- D 0 - - - 0x020CEF 08:8CDF: AA        .byte $AA   ; 
- D 0 - - - 0x020CF0 08:8CE0: 00        .byte $00   ; 
- D 0 - - - 0x020CF1 08:8CE1: A0        .byte $A0   ; 
- D 0 - - - 0x020CF2 08:8CE2: 00        .byte $00   ; 
- D 0 - - - 0x020CF3 08:8CE3: 97        .byte $97   ; 
- D 0 - - - 0x020CF4 08:8CE4: 00        .byte $00   ; 
- D 0 - - - 0x020CF5 08:8CE5: 8F        .byte $8F   ; 
- D 0 - - - 0x020CF6 08:8CE6: 00        .byte $00   ; 
- D 0 - - - 0x020CF7 08:8CE7: 87        .byte $87   ; 
- D 0 - - - 0x020CF8 08:8CE8: 00        .byte $00   ; 
- D 0 - - - 0x020CF9 08:8CE9: 7F        .byte $7F   ; 
- D 0 - - - 0x020CFA 08:8CEA: 00        .byte $00   ; 
- D 0 - - - 0x020CFB 08:8CEB: 77        .byte $77   ; 
- D 0 - - - 0x020CFC 08:8CEC: 00        .byte $00   ; 
- D 0 - - - 0x020CFD 08:8CED: 71        .byte $71   ; 
- D 0 - - - 0x020CFE 08:8CEE: 00        .byte $00   ; 
; 04
- D 0 - - - 0x020CFF 08:8CEF: 6B        .byte $6B   ; 
- D 0 - - - 0x020D00 08:8CF0: 00        .byte $00   ; 
- D 0 - - - 0x020D01 08:8CF1: 65        .byte $65   ; 
- D 0 - - - 0x020D02 08:8CF2: 00        .byte $00   ; 
- D 0 - - - 0x020D03 08:8CF3: 5F        .byte $5F   ; 
- D 0 - - - 0x020D04 08:8CF4: 00        .byte $00   ; 
- D 0 - - - 0x020D05 08:8CF5: 59        .byte $59   ; 
- D 0 - - - 0x020D06 08:8CF6: 00        .byte $00   ; 
- D 0 - - - 0x020D07 08:8CF7: 55        .byte $55   ; 
- D 0 - - - 0x020D08 08:8CF8: 00        .byte $00   ; 
- D 0 - - - 0x020D09 08:8CF9: 50        .byte $50   ; 
- D 0 - - - 0x020D0A 08:8CFA: 00        .byte $00   ; 
- D 0 - - - 0x020D0B 08:8CFB: 4B        .byte $4B   ; 
- D 0 - - - 0x020D0C 08:8CFC: 00        .byte $00   ; 
- D 0 - - - 0x020D0D 08:8CFD: 47        .byte $47   ; 
- D 0 - - - 0x020D0E 08:8CFE: 00        .byte $00   ; 
- D 0 - - - 0x020D0F 08:8CFF: 43        .byte $43   ; 
- D 0 - - - 0x020D10 08:8D00: 00        .byte $00   ; 
- D 0 - - - 0x020D11 08:8D01: 3F        .byte $3F   ; 
- D 0 - - - 0x020D12 08:8D02: 00        .byte $00   ; 
- D 0 - - - 0x020D13 08:8D03: 3B        .byte $3B   ; 
- D 0 - - - 0x020D14 08:8D04: 00        .byte $00   ; 
- D 0 - - - 0x020D15 08:8D05: 38        .byte $38   ; 
- D 0 - - - 0x020D16 08:8D06: 00        .byte $00   ; 
; 05
- D 0 - - - 0x020D17 08:8D07: 35        .byte $35   ; 
- D 0 - - - 0x020D18 08:8D08: 00        .byte $00   ; 
- D 0 - - - 0x020D19 08:8D09: 32        .byte $32   ; 
- D 0 - - - 0x020D1A 08:8D0A: 00        .byte $00   ; 
- D 0 - - - 0x020D1B 08:8D0B: 2F        .byte $2F   ; 
- D 0 - - - 0x020D1C 08:8D0C: 00        .byte $00   ; 
- D 0 - - - 0x020D1D 08:8D0D: 2C        .byte $2C   ; 
- D 0 - - - 0x020D1E 08:8D0E: 00        .byte $00   ; 
- D 0 - - - 0x020D1F 08:8D0F: 2A        .byte $2A   ; 
- D 0 - - - 0x020D20 08:8D10: 00        .byte $00   ; 
- D 0 - - - 0x020D21 08:8D11: 28        .byte $28   ; 
- D 0 - - - 0x020D22 08:8D12: 00        .byte $00   ; 
- D 0 - - - 0x020D23 08:8D13: 25        .byte $25   ; 
- D 0 - - - 0x020D24 08:8D14: 00        .byte $00   ; 
- D 0 - - - 0x020D25 08:8D15: 23        .byte $23   ; 
- D 0 - - - 0x020D26 08:8D16: 00        .byte $00   ; 
- D 0 - - - 0x020D27 08:8D17: 21        .byte $21   ; 
- D 0 - - - 0x020D28 08:8D18: 00        .byte $00   ; 
- D 0 - - - 0x020D29 08:8D19: 1F        .byte $1F   ; 
- D 0 - - - 0x020D2A 08:8D1A: 00        .byte $00   ; 
- - - - - - 0x020D2B 08:8D1B: 1D        .byte $1D   ; 
- - - - - - 0x020D2C 08:8D1C: 00        .byte $00   ; 
- - - - - - 0x020D2D 08:8D1D: 1B        .byte $1B   ; 
- - - - - - 0x020D2E 08:8D1E: 00        .byte $00   ; 
; 06 bzk вероятно мусор
- - - - - - 0x020D2F 08:8D1F: 1A        .byte $1A   ; 
- - - - - - 0x020D30 08:8D20: 00        .byte $00   ; 
- - - - - - 0x020D31 08:8D21: 19        .byte $19   ; 
- - - - - - 0x020D32 08:8D22: 00        .byte $00   ; 
- - - - - - 0x020D33 08:8D23: 17        .byte $17   ; 
- - - - - - 0x020D34 08:8D24: 00        .byte $00   ; 
- - - - - - 0x020D35 08:8D25: 16        .byte $16   ; 
- - - - - - 0x020D36 08:8D26: 00        .byte $00   ; 
- - - - - - 0x020D37 08:8D27: 15        .byte $15   ; 
- - - - - - 0x020D38 08:8D28: 00        .byte $00   ; 
- - - - - - 0x020D39 08:8D29: 14        .byte $14   ; 
- - - - - - 0x020D3A 08:8D2A: 00        .byte $00   ; 
- - - - - - 0x020D3B 08:8D2B: 13        .byte $13   ; 
- - - - - - 0x020D3C 08:8D2C: 00        .byte $00   ; 
- - - - - - 0x020D3D 08:8D2D: 12        .byte $12   ; 
- - - - - - 0x020D3E 08:8D2E: 00        .byte $00   ; 
- - - - - - 0x020D3F 08:8D2F: 11        .byte $11   ; 
- - - - - - 0x020D40 08:8D30: 00        .byte $00   ; 
- - - - - - 0x020D41 08:8D31: 10        .byte $10   ; 
- - - - - - 0x020D42 08:8D32: 00        .byte $00   ; 
- - - - - - 0x020D43 08:8D33: 0F        .byte $0F   ; 
- - - - - - 0x020D44 08:8D34: 00        .byte $00   ; 
- - - - - - 0x020D45 08:8D35: 0E        .byte $0E   ; 
- - - - - - 0x020D46 08:8D36: 00        .byte $00   ; 



tbl_8D3C:
- D 0 - - - 0x020D4C 08:8D3C: 5B CF     .word _off002_0x03CF6B_01
- D 0 - - - 0x020D4E 08:8D3E: 5F CF     .word _off002_0x03CF6F_02
- D 0 - - - 0x020D50 08:8D40: 68 CF     .word _off002_0x03CF78_03
- D 0 - - - 0x020D52 08:8D42: 74 91     .word _off002_9174_04
- D 0 - - - 0x020D54 08:8D44: 7C 91     .word _off002_917C_05
- D 0 - - - 0x020D56 08:8D46: 84 91     .word _off002_9184_06
- D 0 - - - 0x020D58 08:8D48: 8C 91     .word _off002_918C_07
- D 0 - - - 0x020D5A 08:8D4A: 97 91     .word _off002_9197_08
- D 0 - - - 0x020D5C 08:8D4C: A0 91     .word _off002_91A0_09
- D 0 - - - 0x020D5E 08:8D4E: CA 91     .word _off002_91CA_0A
- D 0 - - - 0x020D60 08:8D50: D7 91     .word _off002_91D7_0B
- D 0 - - - 0x020D62 08:8D52: 9E 90     .word _off002_909E_0C
- D 0 - - - 0x020D64 08:8D54: AE 90     .word _off002_90AE_0D
- D 0 - - - 0x020D66 08:8D56: C3 90     .word _off002_90C3_0E
- D 0 - - - 0x020D68 08:8D58: D0 90     .word _off002_90D0_0F
- D 0 - - - 0x020D6A 08:8D5A: E4 90     .word _off002_90E4_10
- D 0 - - - 0x020D6C 08:8D5C: 3C 91     .word _off002_913C_11
- D 0 - - - 0x020D6E 08:8D5E: 86 94     .word _off002_9486_12
- D 0 - - - 0x020D70 08:8D60: 9A 94     .word _off002_949A_13
- D 0 - - - 0x020D72 08:8D62: AF 94     .word _off002_94AF_14
- D 0 - - - 0x020D74 08:8D64: 17 94     .word _off002_9417_15
- D 0 - - - 0x020D76 08:8D66: 63 94     .word _off002_9463_16
- D 0 - - - 0x020D78 08:8D68: 5F 92     .word _off002_925F_17
- D 0 - - - 0x020D7A 08:8D6A: AD 91     .word _off002_91AD_18
- D 0 - - - 0x020D7C 08:8D6C: A8 92     .word _off002_92A8_19
- D 0 - - - 0x020D7E 08:8D6E: D3 94     .word _off002_94D3_1A
- D 0 - - - 0x020D80 08:8D70: 6E 93     .word _off002_936E_1B
- D 0 - - - 0x020D82 08:8D72: 57 91     .word _off002_9157_1C
- D 0 - - - 0x020D84 08:8D74: 05 92     .word _off002_9205_1D
- D 0 - - - 0x020D86 08:8D76: 23 94     .word _off002_9423_1E
- D 0 - - - 0x020D88 08:8D78: BC 92     .word _off002_92BC_1F
- D 0 - - - 0x020D8A 08:8D7A: 71 94     .word _off002_9471_20
- D 0 - - - 0x020D8C 08:8D7C: 00 91     .word _off002_9100_21
- D 0 - - - 0x020D8E 08:8D7E: 1E 91     .word _off002_911E_22
- D 0 - - - 0x020D90 08:8D80: 72 CF     .word _off002_0x03CF82_23
- D 0 - - - 0x020D92 08:8D82: E5 94     .word _off002_94E5_24
- D 0 - - - 0x020D94 08:8D84: 4A 92     .word _off002_924A_25
- D 0 - - - 0x020D96 08:8D86: 4A 92     .word _off002_924A_26
- D 0 - - - 0x020D98 08:8D88: 2C 92     .word _off002_922C_27
- D 0 - - - 0x020D9A 08:8D8A: E5 CF     .word _off002_0x03CFF5_28
- D 0 - - - 0x020D9C 08:8D8C: E5 CF     .word _off002_0x03CFF5_29
- D 0 - - - 0x020D9E 08:8D8E: 7D 92     .word _off002_927D_2A
- D 0 - - - 0x020DA0 08:8D90: FA 92     .word _off002_92FA_2B
- D 0 - - - 0x020DA2 08:8D92: 99 93     .word _off002_9399_2C
- D 0 - - - 0x020DA4 08:8D94: 40 CF     .word _off002_0x03CF50_2D



tbl_8D96:
- D 0 - I - 0x020DA6 08:8D96: BA 96     .word _off001_96BA_00
- D 0 - I - 0x020DA8 08:8D98: FF 95     .word _off001_95FF_01
- D 0 - I - 0x020DAA 08:8D9A: 8F 97     .word _off001_978F_02
- D 0 - I - 0x020DAC 08:8D9C: E3 97     .word _off001_97E3_03
- D 0 - I - 0x020DAE 08:8D9E: 72 9C     .word _off001_9C72_04
- D 0 - I - 0x020DB0 08:8DA0: D9 9B     .word _off001_9BD9_05
- D 0 - I - 0x020DB2 08:8DA2: 60 9D     .word _off001_9D60_06
- D 0 - I - 0x020DB4 08:8DA4: F8 9D     .word _off001_9DF8_07
- D 0 - I - 0x020DB6 08:8DA6: DC A0     .word _off001_A0DC_08
- D 0 - I - 0x020DB8 08:8DA8: 3F A0     .word _off001_A03F_09
- D 0 - I - 0x020DBA 08:8DAA: A4 A1     .word _off001_A1A4_0A
- D 0 - I - 0x020DBC 08:8DAC: EE A1     .word _off001_A1EE_0B
- D 0 - I - 0x020DBE 08:8DAE: E0 A5     .word _off001_A5E0_0C
- D 0 - I - 0x020DC0 08:8DB0: 1A A5     .word _off001_A51A_0D
- D 0 - I - 0x020DC2 08:8DB2: 8B A6     .word _off001_A68B_0E
- D 0 - I - 0x020DC4 08:8DB4: 34 A7     .word _off001_A734_0F
- D 0 - I - 0x020DC6 08:8DB6: E4 A9     .word _off001_A9E4_10
- D 0 - I - 0x020DC8 08:8DB8: C5 A9     .word _off001_A9C5_11
- D 0 - I - 0x020DCA 08:8DBA: 12 AA     .word _off001_AA12_12
- D 0 - I - 0x020DCC 08:8DBC: 33 AA     .word _off001_AA33_13
- D 0 - I - 0x020DCE 08:8DBE: 9F AA     .word _off001_AA9F_14
- D 0 - I - 0x020DD0 08:8DC0: 7C AA     .word _off001_AA7C_15
- D 0 - I - 0x020DD2 08:8DC2: B5 AA     .word _off001_AAB5_16
- D 0 - I - 0x020DD4 08:8DC4: DD AA     .word _off001_AADD_17
- D 0 - I - 0x020DD6 08:8DC6: AC AB     .word _off001_ABAC_18
- D 0 - I - 0x020DD8 08:8DC8: 4D AB     .word _off001_AB4D_19
- D 0 - I - 0x020DDA 08:8DCA: E4 AB     .word _off001_ABE4_1A
- D 0 - I - 0x020DDC 08:8DCC: 25 AC     .word _off001_AC25_1B
- D 0 - I - 0x020DDE 08:8DCE: CA AC     .word _off001_ACCA_1C
- D 0 - I - 0x020DE0 08:8DD0: AC AC     .word _off001_ACAC_1D
- D 0 - I - 0x020DE2 08:8DD2: E6 AC     .word _off001_ACE6_1E
- D 0 - I - 0x020DE4 08:8DD4: 00 AD     .word _off001_AD00_1F
- D 0 - I - 0x020DE6 08:8DD6: 62 AD     .word _off001_AD62_20
- D 0 - I - 0x020DE8 08:8DD8: 3A AD     .word _off001_AD3A_21
- D 0 - I - 0x020DEA 08:8DDA: 8C AD     .word _off001_AD8C_22
- D 0 - I - 0x020DEC 08:8DDC: B0 AD     .word _off001_ADB0_23
- D 0 - I - 0x020DEE 08:8DDE: 2F A9     .word _off001_A92F_24
- D 0 - I - 0x020DF0 08:8DE0: 15 A9     .word _off001_A915_25
- D 0 - I - 0x020DF2 08:8DE2: 59 A9     .word _off001_A959_26
- D 0 - I - 0x020DF4 08:8DE4: 75 A9     .word _off001_A975_27
- D 0 - I - 0x020DF6 08:8DE6: 11 AE     .word _off001_AE11_28
- D 0 - I - 0x020DF8 08:8DE8: F1 AD     .word _off001_ADF1_29
- D 0 - I - 0x020DFA 08:8DEA: 28 AE     .word _off001_AE28_2A
- D 0 - I - 0x020DFC 08:8DEC: 53 AE     .word _off001_AE53_2B
- D 0 - I - 0x020DFE 08:8DEE: 15 AF     .word _off001_AF15_2C
- D 0 - I - 0x020E00 08:8DF0: FB AE     .word _off001_AEFB_2D
- D 0 - I - 0x020E02 08:8DF2: 2F AF     .word _off001_AF2F_2E
- D 0 - I - 0x020E04 08:8DF4: 43 AF     .word _off001_AF43_2F
- D 0 - I - 0x020E06 08:8DF6: 99 AF     .word _off001_AF99_30
- D 0 - I - 0x020E08 08:8DF8: 80 AF     .word _off001_AF80_31
- D 0 - I - 0x020E0A 08:8DFA: B1 AF     .word _off001_AFB1_32
- D 0 - I - 0x020E0C 08:8DFC: C2 AF     .word _off001_AFC2_33
- D 0 - I - 0x020E0E 08:8DFE: 3E B0     .word _off001_B03E_34
- D 0 - I - 0x020E10 08:8E00: FE AF     .word _off001_AFFE_35
- D 0 - I - 0x020E12 08:8E02: 86 B0     .word _off001_B086_36
- D 0 - I - 0x020E14 08:8E04: A3 B0     .word _off001_B0A3_37
- D 0 - I - 0x020E16 08:8E06: 53 B2     .word _off001_B253_38
- D 0 - I - 0x020E18 08:8E08: 17 B2     .word _off001_B217_39
- D 0 - I - 0x020E1A 08:8E0A: CF B2     .word _off001_B2CF_3A
- D 0 - I - 0x020E1C 08:8E0C: 40 B3     .word _off001_B340_3B
- D 0 - I - 0x020E1E 08:8E0E: 28 B5     .word _off001_B528_3C
- D 0 - I - 0x020E20 08:8E10: 05 B5     .word _off001_B505_3D
- D 0 - I - 0x020E22 08:8E12: 57 B5     .word _off001_B557_3E
- D 0 - I - 0x020E24 08:8E14: A3 B5     .word _off001_B5A3_3F
- D 0 - I - 0x020E26 08:8E16: 32 B8     .word _off001_B832_40
- D 0 - I - 0x020E28 08:8E18: 28 B8     .word _off001_B828_41
- D 0 - I - 0x020E2A 08:8E1A: 3C B8     .word _off001_B83C_42
- D 0 - I - 0x020E2C 08:8E1C: 44 B8     .word _off001_B844_43
- D 0 - I - 0x020E2E 08:8E1E: 64 B8     .word _off001_B864_44
- D 0 - I - 0x020E30 08:8E20: 59 B8     .word _off001_B859_45
- D 0 - I - 0x020E32 08:8E22: 9E B8     .word _off001_B89E_46
- D 0 - I - 0x020E34 08:8E24: CA B8     .word _off001_B8CA_47
- D 0 - I - 0x020E36 08:8E26: EE B8     .word _off001_B8EE_48
- D 0 - I - 0x020E38 08:8E28: E3 B8     .word _off001_B8E3_49
- D 0 - I - 0x020E3A 08:8E2A: 1B B9     .word _off001_B91B_4A
- D 0 - I - 0x020E3C 08:8E2C: 26 B9     .word _off001_B926_4B
- D 0 - I - 0x020E3E 08:8E2E: CC B9     .word _off001_B9CC_4C
- D 0 - I - 0x020E40 08:8E30: 96 B9     .word _off001_B996_4D
- D 0 - I - 0x020E42 08:8E32: 04 BA     .word _off001_BA04_4E
- D 0 - I - 0x020E44 08:8E34: 67 BA     .word _off001_BA67_4F
- D 0 - I - 0x020E46 08:8E36: C4 BC     .word _off001_BCC4_50
- D 0 - I - 0x020E48 08:8E38: 8A BC     .word _off001_BC8A_51
- D 0 - I - 0x020E4A 08:8E3A: 14 BD     .word _off001_BD14_52
- D 0 - I - 0x020E4C 08:8E3C: 2C BD     .word _off001_BD2C_53
- D 0 - I - 0x020E4E 08:8E3E: 50 B9     .word _off001_B950_54
- D 0 - I - 0x020E50 08:8E40: 27 B9     .word _off001_B927_55
- D 0 - I - 0x020E52 08:8E42: 5A B9     .word _off001_B95A_56
- D 0 - I - 0x020E54 08:8E44: 7A B9     .word _off001_B97A_57
- D 0 - I - 0x020E56 08:8E46: CF BE     .word _off001_BECF_58
- D 0 - I - 0x020E58 08:8E48: C4 BE     .word _off001_BEC4_59
- D 0 - I - 0x020E5A 08:8E4A: DC BE     .word _off001_BEDC_5A
- D 0 - I - 0x020E5C 08:8E4C: E3 BE     .word _off001_BEE3_5B
- D 0 - I - 0x020E5E 08:8E4E: FD BE     .word _off001_BEFD_5C
- D 0 - I - 0x020E60 08:8E50: EA BE     .word _off001_BEEA_5D
- D 0 - I - 0x020E62 08:8E52: 12 BF     .word _off001_BF12_5E
- D 0 - I - 0x020E64 08:8E54: 23 BF     .word _off001_BF23_5F
- D 0 - I - 0x020E66 08:8E56: 9D BF     .word _off001_BF9D_60
- D 0 - I - 0x020E68 08:8E58: 67 BF     .word _off001_BF67_61
- D 0 - I - 0x020E6A 08:8E5A: A3 BF     .word _off001_BFA3_62
- D 0 - I - 0x020E6C 08:8E5C: E1 BF     .word _off001_BFE1_63



tbl_8E88:
- D 0 - - - 0x020E98 08:8E88: 04        .byte $04   ; 00
- D 0 - - - 0x020E99 08:8E89: 01        .byte $01   ; 01
- - - - - - 0x020E9A 08:8E8A: 02        .byte $02   ; 02
- D 0 - - - 0x020E9B 08:8E8B: 05        .byte $05   ; 03
- - - - - - 0x020E9C 08:8E8C: 09        .byte $09   ; 04



sub_8E8D:
.export sub_0x020E9D_play_music
sub_0x020E9D_play_music:
C - - - - - 0x020E9D 08:8E8D: 86 E4     STX ram_00E4
C - - - - - 0x020E9F 08:8E8F: 84 E5     STY ram_00E5
C - - - - - 0x020EA1 08:8E91: A0 00     LDY #$00
C - - - - - 0x020EA3 08:8E93: 8C 77 07  STY ram_0777
C - - - - - 0x020EA6 08:8E96: 8D 5C 07  STA ram_music_id
C - - - - - 0x020EA9 08:8E99: C9 2E     CMP #$2E
C - - - - - 0x020EAB 08:8E9B: 90 03     BCC bra_8EA0_2D_or_less
C - - - - - 0x020EAD 08:8E9D: 4C F6 8F  JMP loc_8FF6_2E_or_higher
bra_8EA0_2D_or_less:
C - - - - - 0x020EB0 08:8EA0: 0A        ASL
C - - - - - 0x020EB1 08:8EA1: AA        TAX
C - - - - - 0x020EB2 08:8EA2: BD 3A 8D  LDA tbl_8D3C - 2,X
C - - - - - 0x020EB5 08:8EA5: 85 E6     STA ram_00E6
C - - - - - 0x020EB7 08:8EA7: BD 3B 8D  LDA tbl_8D3C - 1,X
C - - - - - 0x020EBA 08:8EAA: 85 E7     STA ram_00E7
C - - - - - 0x020EBC 08:8EAC: A9 03     LDA #$03
C - - - - - 0x020EBE 08:8EAE: 8D B8 07  STA ram_07B8
C - - - - - 0x020EC1 08:8EB1: B1 E6     LDA (ram_00E6),Y
C - - - - - 0x020EC3 08:8EB3: 29 F0     AND #$F0
C - - - - - 0x020EC5 08:8EB5: 8D 8B 07  STA ram_078B
C - - - - - 0x020EC8 08:8EB8: 8D 86 07  STA ram_0786
C - - - - - 0x020ECB 08:8EBB: 8C 81 07  STY ram_0781
C - - - - - 0x020ECE 08:8EBE: D0 08     BNE bra_8EC8
loc_8EC0:
C D 0 - - - 0x020ED0 08:8EC0: AD 81 07  LDA ram_0781
C - - - - - 0x020ED3 08:8EC3: A8        TAY
bra_8EC4:
C - - - - - 0x020ED4 08:8EC4: C8        INY
C - - - - - 0x020ED5 08:8EC5: 8C 81 07  STY ram_0781
bra_8EC8:
C - - - - - 0x020ED8 08:8EC8: 0E 8B 07  ASL ram_078B
C - - - - - 0x020EDB 08:8ECB: 90 05     BCC bra_8ED2
C - - - - - 0x020EDD 08:8ECD: B9 88 8E  LDA tbl_8E88,Y
C - - - - - 0x020EE0 08:8ED0: D0 08     BNE bra_8EDA
bra_8ED2:
C - - - - - 0x020EE2 08:8ED2: CE B8 07  DEC ram_07B8
C - - - - - 0x020EE5 08:8ED5: 10 ED     BPL bra_8EC4
C - - - - - 0x020EE7 08:8ED7: 4C 01 90  JMP loc_9001
bra_8EDA:
C - - - - - 0x020EEA 08:8EDA: A0 00     LDY #$00
C - - - - - 0x020EEC 08:8EDC: AA        TAX
C - - - - - 0x020EED 08:8EDD: AD 5C 07  LDA ram_music_id
C - - - - - 0x020EF0 08:8EE0: C9 04     CMP #$04
C - - - - - 0x020EF2 08:8EE2: B0 07     BCS bra_8EEB
C - - - - - 0x020EF4 08:8EE4: BD 0C 07  LDA ram_070C,X
C - - - - - 0x020EF7 08:8EE7: C9 04     CMP #$04
C - - - - - 0x020EF9 08:8EE9: 90 2D     BCC bra_8F18
bra_8EEB:
C - - - - - 0x020EFB 08:8EEB: AD 5C 07  LDA ram_music_id
C - - - - - 0x020EFE 08:8EEE: DD 0C 07  CMP ram_070C,X
C - - - - - 0x020F01 08:8EF1: B0 25     BCS bra_8F18
C - - - - - 0x020F03 08:8EF3: AD 86 07  LDA ram_0786
C - - - - - 0x020F06 08:8EF6: F0 1A     BEQ bra_8F12
bra_8EF8:
C - - - - - 0x020F08 08:8EF8: 0A        ASL
C - - - - - 0x020F09 08:8EF9: 90 08     BCC bra_8F03
C - - - - - 0x020F0B 08:8EFB: B9 88 8E  LDA tbl_8E88,Y
C - - - - - 0x020F0E 08:8EFE: 8D 7C 07  STA ram_077C
C - - - - - 0x020F11 08:8F01: D0 03     BNE bra_8F06
bra_8F03:
C - - - - - 0x020F13 08:8F03: C8        INY
C - - - - - 0x020F14 08:8F04: D0 F2     BNE bra_8EF8
bra_8F06:
C - - - - - 0x020F16 08:8F06: EC 7C 07  CPX ram_077C
C - - - - - 0x020F19 08:8F09: D0 0A     BNE bra_8F15
C - - - - - 0x020F1B 08:8F0B: A9 00     LDA #$00
C - - - - - 0x020F1D 08:8F0D: 8D 86 07  STA ram_0786
C - - - - - 0x020F20 08:8F10: F0 03     BEQ bra_8F15
bra_8F12:
C - - - - - 0x020F22 08:8F12: EE 77 07  INC ram_0777
bra_8F15:
C - - - - - 0x020F25 08:8F15: 4C E2 8F  JMP loc_8FE2
bra_8F18:
C - - - - - 0x020F28 08:8F18: A9 01     LDA #$01
C - - - - - 0x020F2A 08:8F1A: 8D 7C 07  STA ram_077C
C - - - - - 0x020F2D 08:8F1D: AD 86 07  LDA ram_0786
C - - - - - 0x020F30 08:8F20: D0 27     BNE bra_8F49
C - - - - - 0x020F32 08:8F22: A0 FF     LDY #$FF
bra_8F24_loop:
C - - - - - 0x020F34 08:8F24: C8        INY
C - - - - - 0x020F35 08:8F25: B1 E6     LDA (ram_00E6),Y
C - - - - - 0x020F37 08:8F27: C9 FF     CMP #$FF
C - - - - - 0x020F39 08:8F29: D0 F9     BNE bra_8F24_loop
C - - - - - 0x020F3B 08:8F2B: CE 77 07  DEC ram_0777
C - - - - - 0x020F3E 08:8F2E: 10 F4     BPL bra_8F24_loop
C - - - - - 0x020F40 08:8F30: C8        INY
C - - - - - 0x020F41 08:8F31: 8C 7C 07  STY ram_077C
C - - - - - 0x020F44 08:8F34: D0 29     BNE bra_8F5F
sub_8F36:
C - - - - - 0x020F46 08:8F36: A9 80     LDA #$80
C - - - - - 0x020F48 08:8F38: 8D 95 07  STA ram_0795
C - - - - - 0x020F4B 08:8F3B: 8E 9A 07  STX ram_079A
bra_8F3E:
C - - - - - 0x020F4E 08:8F3E: CE 9A 07  DEC ram_079A
C - - - - - 0x020F51 08:8F41: 30 05     BMI bra_8F48_RTS
C - - - - - 0x020F53 08:8F43: 4E 95 07  LSR ram_0795
C - - - - - 0x020F56 08:8F46: 10 F6     BPL bra_8F3E
bra_8F48_RTS:
C - - - - - 0x020F58 08:8F48: 60        RTS
bra_8F49:
C - - - - - 0x020F59 08:8F49: 20 36 8F  JSR sub_8F36
C - - - - - 0x020F5C 08:8F4C: AD 90 07  LDA ram_0790
C - - - - - 0x020F5F 08:8F4F: 0D 95 07  ORA ram_0795
C - - - - - 0x020F62 08:8F52: 8D 90 07  STA ram_0790
C - - - - - 0x020F65 08:8F55: B1 E6     LDA (ram_00E6),Y
C - - - - - 0x020F67 08:8F57: 8D 9F 07  STA ram_079F
C - - - - - 0x020F6A 08:8F5A: 29 0F     AND #$0F
C - - - - - 0x020F6C 08:8F5C: 9D 00 07  STA ram_0700,X
bra_8F5F:
C - - - - - 0x020F6F 08:8F5F: A0 00     LDY #$00
C - - - - - 0x020F71 08:8F61: B9 E6 00  LDA ram_00E6,Y
C - - - - - 0x020F74 08:8F64: 18        CLC
C - - - - - 0x020F75 08:8F65: 6D 7C 07  ADC ram_077C
C - - - - - 0x020F78 08:8F68: 99 E6 00  STA ram_00E6,Y
C - - - - - 0x020F7B 08:8F6B: 9D 12 07  STA ram_0712,X
C - - - - - 0x020F7E 08:8F6E: B9 E7 00  LDA ram_00E7,Y
C - - - - - 0x020F81 08:8F71: 69 00     ADC #$00
C - - - - - 0x020F83 08:8F73: 99 E7 00  STA ram_00E7,Y
C - - - - - 0x020F86 08:8F76: 9D 18 07  STA ram_0718,X
C - - - - - 0x020F89 08:8F79: A9 00     LDA #$00
C - - - - - 0x020F8B 08:8F7B: 8D 86 07  STA ram_0786
C - - - - - 0x020F8E 08:8F7E: F0 0B     BEQ bra_8F8B
loc_8F80:
C D 0 - - - 0x020F90 08:8F80: B1 E6     LDA (ram_00E6),Y
C - - - - - 0x020F92 08:8F82: 9D 12 07  STA ram_0712,X
C - - - - - 0x020F95 08:8F85: C8        INY
C - - - - - 0x020F96 08:8F86: B1 E6     LDA (ram_00E6),Y
C - - - - - 0x020F98 08:8F88: 9D 18 07  STA ram_0718,X
bra_8F8B:
C - - - - - 0x020F9B 08:8F8B: A9 01     LDA #$01
C - - - - - 0x020F9D 08:8F8D: 9D 06 07  STA ram_0706,X
C - - - - - 0x020FA0 08:8F90: E0 03     CPX #$03
C - - - - - 0x020FA2 08:8F92: F0 72     BEQ bra_9006
C - - - - - 0x020FA4 08:8F94: E0 05     CPX #$05
C - - - - - 0x020FA6 08:8F96: F0 38     BEQ bra_8FD0
C - - - - - 0x020FA8 08:8F98: A9 F8     LDA #$F8
C - - - - - 0x020FAA 08:8F9A: 9D 59 07  STA ram_0759,X
C - - - - - 0x020FAD 08:8F9D: A9 00     LDA #$00
C - - - - - 0x020FAF 08:8F9F: 9D 68 07  STA ram_0768,X
C - - - - - 0x020FB2 08:8FA2: 9D 63 07  STA ram_0763,X
C - - - - - 0x020FB5 08:8FA5: E0 02     CPX #$02
C - - - - - 0x020FB7 08:8FA7: F0 0C     BEQ bra_8FB5
C - - - - - 0x020FB9 08:8FA9: 9D 6D 07  STA ram_076D,X
C - - - - - 0x020FBC 08:8FAC: A9 7F     LDA #$7F
C - - - - - 0x020FBE 08:8FAE: 9D 72 07  STA ram_0772,X
C - - - - - 0x020FC1 08:8FB1: E0 04     CPX #$04
C - - - - - 0x020FC3 08:8FB3: F0 1B     BEQ bra_8FD0
bra_8FB5:
C - - - - - 0x020FC5 08:8FB5: A9 00     LDA #$00
C - - - - - 0x020FC7 08:8FB7: 9D A7 07  STA ram_07A7,X
C - - - - - 0x020FCA 08:8FBA: 9D ED 07  STA ram_07ED,X
C - - - - - 0x020FCD 08:8FBD: E0 02     CPX #$02
C - - - - - 0x020FCF 08:8FBF: F0 0F     BEQ bra_8FD0
C - - - - - 0x020FD1 08:8FC1: 9D 97 07  STA ram_0797,X
C - - - - - 0x020FD4 08:8FC4: 9D 50 07  STA ram_0750,X
C - - - - - 0x020FD7 08:8FC7: 9D 74 07  STA ram_0774,X
C - - - - - 0x020FDA 08:8FCA: 9D 92 07  STA ram_0792,X
C - - - - - 0x020FDD 08:8FCD: 9D 6F 07  STA ram_076F,X
bra_8FD0:
C - - - - - 0x020FE0 08:8FD0: AD 5C 07  LDA ram_music_id
C - - - - - 0x020FE3 08:8FD3: 9D 0C 07  STA ram_070C,X
C - - - - - 0x020FE6 08:8FD6: C9 2E     CMP #$2E
C - - - - - 0x020FE8 08:8FD8: 90 04     BCC bra_8FDE
C - - - - - 0x020FEA 08:8FDA: A9 00     LDA #$00
C - - - - - 0x020FEC 08:8FDC: F0 02     BEQ bra_8FE0
bra_8FDE:
C - - - - - 0x020FEE 08:8FDE: A9 01     LDA #$01
bra_8FE0:
C - - - - - 0x020FF0 08:8FE0: 95 EA     STA ram_00EA,X
loc_8FE2:
C D 0 - - - 0x020FF2 08:8FE2: CE B8 07  DEC ram_07B8
C - - - - - 0x020FF5 08:8FE5: 30 1A     BMI bra_9001
C - - - - - 0x020FF7 08:8FE7: C8        INY
C - - - - - 0x020FF8 08:8FE8: AD 5C 07  LDA ram_music_id
C - - - - - 0x020FFB 08:8FEB: C9 2E     CMP #$2E
C - - - - - 0x020FFD 08:8FED: 90 04     BCC bra_8FF3
C - - - - - 0x020FFF 08:8FEF: E8        INX
C - - - - - 0x021000 08:8FF0: 4C 80 8F  JMP loc_8F80
bra_8FF3:
C - - - - - 0x021003 08:8FF3: 4C C0 8E  JMP loc_8EC0
loc_8FF6_2E_or_higher:
C D 0 - - - 0x021006 08:8FF6: C9 5B     CMP #$5B
C - - - - - 0x021008 08:8FF8: B0 4C     BCS bra_9046_5B_or_higher
C - - - - - 0x02100A 08:8FFA: C9 47     CMP #$47
C - - - - - 0x02100C 08:8FFC: 90 18     BCC bra_9016_46_or_less
C - - - - - 0x02100E 08:8FFE: 20 88 86  JSR sub_8688
bra_9001:
loc_9001:
C D 0 - - - 0x021011 08:9001: A6 E4     LDX ram_00E4
C - - - - - 0x021013 08:9003: A4 E5     LDY ram_00E5
C - - - - - 0x021015 08:9005: 60        RTS
bra_9006:
C - - - - - 0x021016 08:9006: A9 00     LDA #$00
C - - - - - 0x021018 08:9008: 9D ED 07  STA ram_07ED,X
C - - - - - 0x02101B 08:900B: 8D F1 07  STA ram_07F1
C - - - - - 0x02101E 08:900E: 8D F2 07  STA ram_07F2
C - - - - - 0x021021 08:9011: 8D F3 07  STA ram_07F3
C - - - - - 0x021024 08:9014: F0 BA     BEQ bra_8FD0
bra_9016_46_or_less:
C - - - - - 0x021026 08:9016: 20 5D 90  JSR sub_905D
C - - - - - 0x021029 08:9019: AD 44 90  LDA #< tbl_8D96
C - - - - - 0x02102C 08:901C: 85 E6     STA ram_00E6
C - - - - - 0x02102E 08:901E: AD 45 90  LDA #> tbl_8D96
C - - - - - 0x021031 08:9021: 85 E7     STA ram_00E7
C - - - - - 0x021033 08:9023: A2 08     LDX #$08
C - - - - - 0x021035 08:9025: AD 5C 07  LDA ram_music_id
C - - - - - 0x021038 08:9028: 38        SEC
C - - - - - 0x021039 08:9029: E9 2E     SBC #$2E
C - - - - - 0x02103B 08:902B: A8        TAY
bra_902C:
C - - - - - 0x02103C 08:902C: 98        TYA
C - - - - - 0x02103D 08:902D: 18        CLC
C - - - - - 0x02103E 08:902E: 65 E6     ADC ram_00E6
C - - - - - 0x021040 08:9030: 85 E6     STA ram_00E6
C - - - - - 0x021042 08:9032: 90 02     BCC bra_9036
C - - - - - 0x021044 08:9034: E6 E7     INC ram_00E7
bra_9036:
C - - - - - 0x021046 08:9036: CA        DEX
C - - - - - 0x021047 08:9037: D0 F3     BNE bra_902C
C - - - - - 0x021049 08:9039: 20 85 90  JSR sub_9085
C - - - - - 0x02104C 08:903C: A9 03     LDA #$03
C - - - - - 0x02104E 08:903E: 8D B8 07  STA ram_07B8
C - - - - - 0x021051 08:9041: 4C 80 8F  JMP loc_8F80



bra_9046_5B_or_higher:
; bzk видимо байт всегда 5B, раз таблица всего на 2 байта
C - - - - - 0x021056 08:9046: 38        SEC
C - - - - - 0x021057 08:9047: E9 5B     SBC #$5B
C - - - - - 0x021059 08:9049: 0A        ASL
C - - - - - 0x02105A 08:904A: A8        TAY
C - - - - - 0x02105B 08:904B: B9 5B 90  LDA tbl_905B,Y
C - - - - - 0x02105E 08:904E: 8D 66 07  STA ram_0766
C - - - - - 0x021061 08:9051: C8        INY
C - - - - - 0x021062 08:9052: B9 5B 90  LDA tbl_905B,Y
C - - - - - 0x021065 08:9055: 8D 7A 07  STA ram_077A
C - - - - - 0x021068 08:9058: 4C 01 90  JMP loc_9001



tbl_905B:
- D 0 - - - 0x02106B 08:905B: 07        .byte $07   ; 
- D 0 - - - 0x02106C 08:905C: 18        .byte $18   ; 



loc_905D:
sub_905D:
.export sub_0x02106D
sub_0x02106D:
C D 0 - - - 0x02106D 08:905D: A2 00     LDX #$00
C - - - - - 0x02106F 08:905F: 8A        TXA
C - - - - - 0x021070 08:9060: 8D 90 07  STA ram_0790
bra_9063:
C - - - - - 0x021073 08:9063: 9D 0C 07  STA ram_070C,X
C - - - - - 0x021076 08:9066: E8        INX
C - - - - - 0x021077 08:9067: E0 06     CPX #$06
C - - - - - 0x021079 08:9069: D0 F8     BNE bra_9063
C - - - - - 0x02107B 08:906B: 20 94 90  JSR sub_9094
loc_906E:
C D 0 - - - 0x02107E 08:906E: 20 DE 8B  JSR sub_8BDE
C - - - - - 0x021081 08:9071: A9 30     LDA #$30
C - - - - - 0x021083 08:9073: 8D 00 40  STA $4000
C - - - - - 0x021086 08:9076: 8D 04 40  STA $4004
C - - - - - 0x021089 08:9079: 8D 0C 40  STA $400C
C - - - - - 0x02108C 08:907C: A9 7F     LDA #$7F
C - - - - - 0x02108E 08:907E: 8D 01 40  STA $4001
C - - - - - 0x021091 08:9081: 8D 05 40  STA $4005
C - - - - - 0x021094 08:9084: 60        RTS



sub_9085:
C - - - - - 0x021095 08:9085: A0 7F     LDY #$7F
C - - - - - 0x021097 08:9087: AD 10 07  LDA ram_0710
C - - - - - 0x02109A 08:908A: D0 03     BNE bra_908F
C - - - - - 0x02109C 08:908C: 8C 01 40  STY $4001
bra_908F:
C - - - - - 0x02109F 08:908F: 8C 05 40  STY $4005
C - - - - - 0x0210A2 08:9092: 8A        TXA
C - - - - - 0x0210A3 08:9093: A8        TAY
sub_9094:
C - - - - - 0x0210A4 08:9094: 8D D6 07  STA ram_07D6
C - - - - - 0x0210A7 08:9097: 8D 66 07  STA ram_0766
C - - - - - 0x0210AA 08:909A: 8D 6B 07  STA ram_076B
C - - - - - 0x0210AD 08:909D: 60        RTS



_off002_909E_0C:
- D 0 - I - 0x0210AE 08:909E: 12        .byte $12   ; 
- D 0 - I - 0x0210AF 08:909F: 6B        .byte $6B   ; 
- D 0 - I - 0x0210B0 08:90A0: CF        .byte $CF   ; 
- D 0 - I - 0x0210B1 08:90A1: 03        .byte $03   ; 
- D 0 - I - 0x0210B2 08:90A2: 64        .byte $64   ; 
- D 0 - I - 0x0210B3 08:90A3: 02        .byte $02   ; 
- D 0 - I - 0x0210B4 08:90A4: 3B        .byte $3B   ; 
- D 0 - I - 0x0210B5 08:90A5: 3F        .byte $3F   ; 
- D 0 - I - 0x0210B6 08:90A6: 03        .byte $03   ; 
- D 0 - I - 0x0210B7 08:90A7: 34        .byte $34   ; 
- D 0 - I - 0x0210B8 08:90A8: 02        .byte $02   ; 
- D 0 - I - 0x0210B9 08:90A9: 1B        .byte $1B   ; 
- D 0 - I - 0x0210BA 08:90AA: 1F        .byte $1F   ; 
- D 0 - I - 0x0210BB 08:90AB: 03        .byte $03   ; 
- D 0 - I - 0x0210BC 08:90AC: 14        .byte $14   ; 
- D 0 - I - 0x0210BD 08:90AD: FF        .byte $FF   ; 



_off002_90AE_0D:
- D 0 - I - 0x0210BE 08:90AE: 92        .byte $92   ; 
- D 0 - I - 0x0210BF 08:90AF: B1        .byte $B1   ; 
- D 0 - I - 0x0210C0 08:90B0: 62        .byte $62   ; 
- D 0 - I - 0x0210C1 08:90B1: 00        .byte $00   ; 
- D 0 - I - 0x0210C2 08:90B2: 62        .byte $62   ; 
- D 0 - I - 0x0210C3 08:90B3: 10        .byte $10   ; 
- D 0 - I - 0x0210C4 08:90B4: 61        .byte $61   ; 
- D 0 - I - 0x0210C5 08:90B5: F0        .byte $F0   ; 
- D 0 - I - 0x0210C6 08:90B6: 62        .byte $62   ; 
- D 0 - I - 0x0210C7 08:90B7: 20        .byte $20   ; 
- D 0 - I - 0x0210C8 08:90B8: 62        .byte $62   ; 
- D 0 - I - 0x0210C9 08:90B9: 00        .byte $00   ; 
- D 0 - I - 0x0210CA 08:90BA: 08        .byte $08   ; 
- D 0 - I - 0x0210CB 08:90BB: B2        .byte $B2   ; 
- D 0 - I - 0x0210CC 08:90BC: 60        .byte $60   ; 
- D 0 - I - 0x0210CD 08:90BD: 40        .byte $40   ; 
- D 0 - I - 0x0210CE 08:90BE: FF        .byte $FF   ; 
- D 0 - I - 0x0210CF 08:90BF: 06        .byte $06   ; 
- D 0 - I - 0x0210D0 08:90C0: 6B        .byte $6B   ; 
- D 0 - I - 0x0210D1 08:90C1: 65        .byte $65   ; 
- D 0 - I - 0x0210D2 08:90C2: FF        .byte $FF   ; 



_off002_90C3_0E:
- D 0 - I - 0x0210D3 08:90C3: 13        .byte $13   ; 
- D 0 - I - 0x0210D4 08:90C4: 6B        .byte $6B   ; 
- D 0 - I - 0x0210D5 08:90C5: 6F        .byte $6F   ; 
- D 0 - I - 0x0210D6 08:90C6: 02        .byte $02   ; 
- D 0 - I - 0x0210D7 08:90C7: 67        .byte $67   ; 
- D 0 - I - 0x0210D8 08:90C8: 57        .byte $57   ; 
- D 0 - I - 0x0210D9 08:90C9: 46        .byte $46   ; 
- D 0 - I - 0x0210DA 08:90CA: 36        .byte $36   ; 
- D 0 - I - 0x0210DB 08:90CB: 25        .byte $25   ; 
- D 0 - I - 0x0210DC 08:90CC: 15        .byte $15   ; 
- D 0 - I - 0x0210DD 08:90CD: 14        .byte $14   ; 
- D 0 - I - 0x0210DE 08:90CE: 14        .byte $14   ; 
- D 0 - I - 0x0210DF 08:90CF: FF        .byte $FF   ; 



_off002_90D0_0F:
- D 0 - I - 0x0210E0 08:90D0: 93        .byte $93   ; 
- D 0 - I - 0x0210E1 08:90D1: B2        .byte $B2   ; 
- D 0 - I - 0x0210E2 08:90D2: D2        .byte $D2   ; 
- D 0 - I - 0x0210E3 08:90D3: 00        .byte $00   ; 
- D 0 - I - 0x0210E4 08:90D4: D3        .byte $D3   ; 
- D 0 - I - 0x0210E5 08:90D5: 00        .byte $00   ; 
- D 0 - I - 0x0210E6 08:90D6: FF        .byte $FF   ; 
- D 0 - I - 0x0210E7 08:90D7: 03        .byte $03   ; 
- D 0 - I - 0x0210E8 08:90D8: 6B        .byte $6B   ; 
- D 0 - I - 0x0210E9 08:90D9: 6F        .byte $6F   ; 
- D 0 - I - 0x0210EA 08:90DA: 02        .byte $02   ; 
- D 0 - I - 0x0210EB 08:90DB: 67        .byte $67   ; 
- D 0 - I - 0x0210EC 08:90DC: 57        .byte $57   ; 
- D 0 - I - 0x0210ED 08:90DD: 46        .byte $46   ; 
- D 0 - I - 0x0210EE 08:90DE: 36        .byte $36   ; 
- D 0 - I - 0x0210EF 08:90DF: 25        .byte $25   ; 
- D 0 - I - 0x0210F0 08:90E0: 15        .byte $15   ; 
- D 0 - I - 0x0210F1 08:90E1: 14        .byte $14   ; 
- D 0 - I - 0x0210F2 08:90E2: 14        .byte $14   ; 
- D 0 - I - 0x0210F3 08:90E3: FF        .byte $FF   ; 



_off002_90E4_10:
- D 0 - I - 0x0210F4 08:90E4: 93        .byte $93   ; 
- D 0 - I - 0x0210F5 08:90E5: B2        .byte $B2   ; 
- D 0 - I - 0x0210F6 08:90E6: D2        .byte $D2   ; 
- D 0 - I - 0x0210F7 08:90E7: 00        .byte $00   ; 
- D 0 - I - 0x0210F8 08:90E8: D3        .byte $D3   ; 
- D 0 - I - 0x0210F9 08:90E9: 00        .byte $00   ; 
- D 0 - I - 0x0210FA 08:90EA: 06        .byte $06   ; 
- D 0 - I - 0x0210FB 08:90EB: 34        .byte $34   ; 
- D 0 - I - 0x0210FC 08:90EC: 60        .byte $60   ; 
- D 0 - I - 0x0210FD 08:90ED: 40        .byte $40   ; 
- D 0 - I - 0x0210FE 08:90EE: 30        .byte $30   ; 
- D 0 - I - 0x0210FF 08:90EF: 40        .byte $40   ; 
- D 0 - I - 0x021100 08:90F0: 10        .byte $10   ; 
- D 0 - I - 0x021101 08:90F1: 40        .byte $40   ; 
- D 0 - I - 0x021102 08:90F2: FF        .byte $FF   ; 
- D 0 - I - 0x021103 08:90F3: 03        .byte $03   ; 
- D 0 - I - 0x021104 08:90F4: 6B        .byte $6B   ; 
- D 0 - I - 0x021105 08:90F5: 6F        .byte $6F   ; 
- D 0 - I - 0x021106 08:90F6: 02        .byte $02   ; 
- D 0 - I - 0x021107 08:90F7: 67        .byte $67   ; 
- D 0 - I - 0x021108 08:90F8: 57        .byte $57   ; 
- D 0 - I - 0x021109 08:90F9: 46        .byte $46   ; 
- D 0 - I - 0x02110A 08:90FA: 36        .byte $36   ; 
- D 0 - I - 0x02110B 08:90FB: 25        .byte $25   ; 
- D 0 - I - 0x02110C 08:90FC: 15        .byte $15   ; 
- D 0 - I - 0x02110D 08:90FD: 14        .byte $14   ; 
- D 0 - I - 0x02110E 08:90FE: 14        .byte $14   ; 
- D 0 - I - 0x02110F 08:90FF: FF        .byte $FF   ; 



_off002_9100_21:
- D 0 - I - 0x021110 08:9100: 93        .byte $93   ; 
- D 0 - I - 0x021111 08:9101: B2        .byte $B2   ; 
- D 0 - I - 0x021112 08:9102: D2        .byte $D2   ; 
- D 0 - I - 0x021113 08:9103: 00        .byte $00   ; 
- D 0 - I - 0x021114 08:9104: D3        .byte $D3   ; 
- D 0 - I - 0x021115 08:9105: 00        .byte $00   ; 
- D 0 - I - 0x021116 08:9106: 06        .byte $06   ; 
- D 0 - I - 0x021117 08:9107: 31        .byte $31   ; 
- D 0 - I - 0x021118 08:9108: A0        .byte $A0   ; 
- D 0 - I - 0x021119 08:9109: 80        .byte $80   ; 
- D 0 - I - 0x02111A 08:910A: 60        .byte $60   ; 
- D 0 - I - 0x02111B 08:910B: 80        .byte $80   ; 
- D 0 - I - 0x02111C 08:910C: 30        .byte $30   ; 
- D 0 - I - 0x02111D 08:910D: 80        .byte $80   ; 
- D 0 - I - 0x02111E 08:910E: 10        .byte $10   ; 
- D 0 - I - 0x02111F 08:910F: 80        .byte $80   ; 
- D 0 - I - 0x021120 08:9110: FF        .byte $FF   ; 
- D 0 - I - 0x021121 08:9111: 03        .byte $03   ; 
- D 0 - I - 0x021122 08:9112: 6B        .byte $6B   ; 
- D 0 - I - 0x021123 08:9113: 6F        .byte $6F   ; 
- D 0 - I - 0x021124 08:9114: 02        .byte $02   ; 
- D 0 - I - 0x021125 08:9115: 67        .byte $67   ; 
- D 0 - I - 0x021126 08:9116: 57        .byte $57   ; 
- D 0 - I - 0x021127 08:9117: 46        .byte $46   ; 
- D 0 - I - 0x021128 08:9118: 36        .byte $36   ; 
- D 0 - I - 0x021129 08:9119: 25        .byte $25   ; 
- D 0 - I - 0x02112A 08:911A: 15        .byte $15   ; 
- D 0 - I - 0x02112B 08:911B: 14        .byte $14   ; 
- D 0 - I - 0x02112C 08:911C: 14        .byte $14   ; 
- D 0 - I - 0x02112D 08:911D: FF        .byte $FF   ; 



_off002_911E_22:
- D 0 - I - 0x02112E 08:911E: 93        .byte $93   ; 
- D 0 - I - 0x02112F 08:911F: B2        .byte $B2   ; 
- D 0 - I - 0x021130 08:9120: 62        .byte $62   ; 
- D 0 - I - 0x021131 08:9121: 00        .byte $00   ; 
- D 0 - I - 0x021132 08:9122: 63        .byte $63   ; 
- D 0 - I - 0x021133 08:9123: 00        .byte $00   ; 
- D 0 - I - 0x021134 08:9124: 06        .byte $06   ; 
- D 0 - I - 0x021135 08:9125: 31        .byte $31   ; 
- D 0 - I - 0x021136 08:9126: 40        .byte $40   ; 
- D 0 - I - 0x021137 08:9127: 80        .byte $80   ; 
- D 0 - I - 0x021138 08:9128: 30        .byte $30   ; 
- D 0 - I - 0x021139 08:9129: 80        .byte $80   ; 
- D 0 - I - 0x02113A 08:912A: 20        .byte $20   ; 
- D 0 - I - 0x02113B 08:912B: 80        .byte $80   ; 
- D 0 - I - 0x02113C 08:912C: 10        .byte $10   ; 
- D 0 - I - 0x02113D 08:912D: 80        .byte $80   ; 
- D 0 - I - 0x02113E 08:912E: FF        .byte $FF   ; 
- D 0 - I - 0x02113F 08:912F: 03        .byte $03   ; 
- D 0 - I - 0x021140 08:9130: 3B        .byte $3B   ; 
- D 0 - I - 0x021141 08:9131: 3F        .byte $3F   ; 
- D 0 - I - 0x021142 08:9132: 02        .byte $02   ; 
- D 0 - I - 0x021143 08:9133: 27        .byte $27   ; 
- D 0 - I - 0x021144 08:9134: 27        .byte $27   ; 
- D 0 - I - 0x021145 08:9135: 26        .byte $26   ; 
- D 0 - I - 0x021146 08:9136: 16        .byte $16   ; 
- D 0 - I - 0x021147 08:9137: 15        .byte $15   ; 
- D 0 - I - 0x021148 08:9138: 15        .byte $15   ; 
- D 0 - I - 0x021149 08:9139: 14        .byte $14   ; 
- D 0 - I - 0x02114A 08:913A: 14        .byte $14   ; 
- D 0 - I - 0x02114B 08:913B: FF        .byte $FF   ; 



_off002_913C_11:
- D 0 - I - 0x02114C 08:913C: 94        .byte $94   ; 
- D 0 - I - 0x02114D 08:913D: B2        .byte $B2   ; 
- D 0 - I - 0x02114E 08:913E: 62        .byte $62   ; 
- D 0 - I - 0x02114F 08:913F: 00        .byte $00   ; 
- D 0 - I - 0x021150 08:9140: 08        .byte $08   ; 
- D 0 - I - 0x021151 08:9141: 72        .byte $72   ; 
- D 0 - I - 0x021152 08:9142: FA        .byte $FA   ; 
- D 0 - I - 0x021153 08:9143: 04        .byte $04   ; 
- D 0 - I - 0x021154 08:9144: 00        .byte $00   ; 
- D 0 - I - 0x021155 08:9145: 1B        .byte $1B   ; 
- D 0 - I - 0x021156 08:9146: 60        .byte $60   ; 
- D 0 - I - 0x021157 08:9147: 40        .byte $40   ; 
- D 0 - I - 0x021158 08:9148: FA        .byte $FA   ; 
- D 0 - I - 0x021159 08:9149: FF        .byte $FF   ; 
- D 0 - I - 0x02115A 08:914A: 04        .byte $04   ; 
- D 0 - I - 0x02115B 08:914B: 6F        .byte $6F   ; 
- D 0 - I - 0x02115C 08:914C: 68        .byte $68   ; 
- D 0 - I - 0x02115D 08:914D: 63        .byte $63   ; 
- D 0 - I - 0x02115E 08:914E: 13        .byte $13   ; 
- D 0 - I - 0x02115F 08:914F: 4F        .byte $4F   ; 
- D 0 - I - 0x021160 08:9150: 38        .byte $38   ; 
- D 0 - I - 0x021161 08:9151: 33        .byte $33   ; 
- D 0 - I - 0x021162 08:9152: 13        .byte $13   ; 
- D 0 - I - 0x021163 08:9153: 1F        .byte $1F   ; 
- D 0 - I - 0x021164 08:9154: 18        .byte $18   ; 
- D 0 - I - 0x021165 08:9155: 13        .byte $13   ; 
- D 0 - I - 0x021166 08:9156: FF        .byte $FF   ; 



_off002_9157_1C:
- D 0 - I - 0x021167 08:9157: 99        .byte $99   ; 
- D 0 - I - 0x021168 08:9158: B4        .byte $B4   ; 
- D 0 - I - 0x021169 08:9159: 00        .byte $00   ; 
- D 0 - I - 0x02116A 08:915A: 00        .byte $00   ; 
- D 0 - I - 0x02116B 08:915B: E8        .byte $E8   ; 
- D 0 - I - 0x02116C 08:915C: 08        .byte $08   ; 
- D 0 - I - 0x02116D 08:915D: E3        .byte $E3   ; 
- D 0 - I - 0x02116E 08:915E: 00        .byte $00   ; 
- D 0 - I - 0x02116F 08:915F: A3        .byte $A3   ; 
- D 0 - I - 0x021170 08:9160: 00        .byte $00   ; 
- D 0 - I - 0x021171 08:9161: 83        .byte $83   ; 
- D 0 - I - 0x021172 08:9162: 00        .byte $00   ; 
- D 0 - I - 0x021173 08:9163: 63        .byte $63   ; 
- D 0 - I - 0x021174 08:9164: 00        .byte $00   ; 
- D 0 - I - 0x021175 08:9165: FF        .byte $FF   ; 
- D 0 - I - 0x021176 08:9166: 06        .byte $06   ; 
- D 0 - I - 0x021177 08:9167: 63        .byte $63   ; 
- D 0 - I - 0x021178 08:9168: A8        .byte $A8   ; 
- D 0 - I - 0x021179 08:9169: 8B        .byte $8B   ; 
- D 0 - I - 0x02117A 08:916A: 07        .byte $07   ; 
- D 0 - I - 0x02117B 08:916B: CE        .byte $CE   ; 
- D 0 - I - 0x02117C 08:916C: 5F        .byte $5F   ; 
- D 0 - I - 0x02117D 08:916D: 4E        .byte $4E   ; 
- D 0 - I - 0x02117E 08:916E: 3D        .byte $3D   ; 
- D 0 - I - 0x02117F 08:916F: 2E        .byte $2E   ; 
- D 0 - I - 0x021180 08:9170: 1C        .byte $1C   ; 
- D 0 - I - 0x021181 08:9171: 1D        .byte $1D   ; 
- D 0 - I - 0x021182 08:9172: 1B        .byte $1B   ; 
- D 0 - I - 0x021183 08:9173: FF        .byte $FF   ; 



_off002_9174_04:
- D 0 - I - 0x021184 08:9174: 12        .byte $12   ; 
- D 0 - I - 0x021185 08:9175: 36        .byte $36   ; 
- D 0 - I - 0x021186 08:9176: 66        .byte $66   ; 
- D 0 - I - 0x021187 08:9177: 46        .byte $46   ; 
- D 0 - I - 0x021188 08:9178: 35        .byte $35   ; 
- D 0 - I - 0x021189 08:9179: 24        .byte $24   ; 
- D 0 - I - 0x02118A 08:917A: 13        .byte $13   ; 
- D 0 - I - 0x02118B 08:917B: FF        .byte $FF   ; 



_off002_917C_05:
- D 0 - I - 0x02118C 08:917C: 12        .byte $12   ; 
- D 0 - I - 0x02118D 08:917D: 38        .byte $38   ; 
- D 0 - I - 0x02118E 08:917E: 69        .byte $69   ; 
- D 0 - I - 0x02118F 08:917F: 48        .byte $48   ; 
- D 0 - I - 0x021190 08:9180: 31        .byte $31   ; 
- D 0 - I - 0x021191 08:9181: 21        .byte $21   ; 
- D 0 - I - 0x021192 08:9182: 11        .byte $11   ; 
- D 0 - I - 0x021193 08:9183: FF        .byte $FF   ; 



_off002_9184_06:
- D 0 - I - 0x021194 08:9184: 12        .byte $12   ; 
- D 0 - I - 0x021195 08:9185: 38        .byte $38   ; 
- D 0 - I - 0x021196 08:9186: 6C        .byte $6C   ; 
- D 0 - I - 0x021197 08:9187: 48        .byte $48   ; 
- D 0 - I - 0x021198 08:9188: 31        .byte $31   ; 
- D 0 - I - 0x021199 08:9189: 21        .byte $21   ; 
- D 0 - I - 0x02119A 08:918A: 11        .byte $11   ; 
- D 0 - I - 0x02119B 08:918B: FF        .byte $FF   ; 



_off002_918C_07:
- D 0 - I - 0x02119C 08:918C: 11        .byte $11   ; 
- D 0 - I - 0x02119D 08:918D: 21        .byte $21   ; 
- D 0 - I - 0x02119E 08:918E: 32        .byte $32   ; 
- D 0 - I - 0x02119F 08:918F: 43        .byte $43   ; 
- D 0 - I - 0x0211A0 08:9190: 54        .byte $54   ; 
- D 0 - I - 0x0211A1 08:9191: 65        .byte $65   ; 
- D 0 - I - 0x0211A2 08:9192: 15        .byte $15   ; 
- D 0 - I - 0x0211A3 08:9193: 35        .byte $35   ; 
- D 0 - I - 0x0211A4 08:9194: 25        .byte $25   ; 
- D 0 - I - 0x0211A5 08:9195: 15        .byte $15   ; 
- D 0 - I - 0x0211A6 08:9196: FF        .byte $FF   ; 



_off002_9197_08:
- D 0 - I - 0x0211A7 08:9197: 12        .byte $12   ; 
- D 0 - I - 0x0211A8 08:9198: CE        .byte $CE   ; 
- D 0 - I - 0x0211A9 08:9199: A4        .byte $A4   ; 
- D 0 - I - 0x0211AA 08:919A: AB        .byte $AB   ; 
- D 0 - I - 0x0211AB 08:919B: 6B        .byte $6B   ; 
- D 0 - I - 0x0211AC 08:919C: 06        .byte $06   ; 
- D 0 - I - 0x0211AD 08:919D: 2B        .byte $2B   ; 
- D 0 - I - 0x0211AE 08:919E: 1B        .byte $1B   ; 
- D 0 - I - 0x0211AF 08:919F: FF        .byte $FF   ; 



_off002_91A0_09:
- D 0 - I - 0x0211B0 08:91A0: 13        .byte $13   ; 
- D 0 - I - 0x0211B1 08:91A1: 82        .byte $82   ; 
- D 0 - I - 0x0211B2 08:91A2: 75        .byte $75   ; 
- D 0 - I - 0x0211B3 08:91A3: AA        .byte $AA   ; 
- D 0 - I - 0x0211B4 08:91A4: 65        .byte $65   ; 
- D 0 - I - 0x0211B5 08:91A5: 59        .byte $59   ; 
- D 0 - I - 0x0211B6 08:91A6: 06        .byte $06   ; 
- D 0 - I - 0x0211B7 08:91A7: 45        .byte $45   ; 
- D 0 - I - 0x0211B8 08:91A8: 38        .byte $38   ; 
- D 0 - I - 0x0211B9 08:91A9: 25        .byte $25   ; 
- D 0 - I - 0x0211BA 08:91AA: 17        .byte $17   ; 
- D 0 - I - 0x0211BB 08:91AB: 14        .byte $14   ; 
- D 0 - I - 0x0211BC 08:91AC: FF        .byte $FF   ; 



_off002_91AD_18:
- D 0 - I - 0x0211BD 08:91AD: 11        .byte $11   ; 
- D 0 - I - 0x0211BE 08:91AE: 11        .byte $11   ; 
- D 0 - I - 0x0211BF 08:91AF: 12        .byte $12   ; 
- D 0 - I - 0x0211C0 08:91B0: 23        .byte $23   ; 
- D 0 - I - 0x0211C1 08:91B1: 24        .byte $24   ; 
- D 0 - I - 0x0211C2 08:91B2: 35        .byte $35   ; 
- D 0 - I - 0x0211C3 08:91B3: 46        .byte $46   ; 
- D 0 - I - 0x0211C4 08:91B4: 57        .byte $57   ; 
- D 0 - I - 0x0211C5 08:91B5: 68        .byte $68   ; 
- D 0 - I - 0x0211C6 08:91B6: 79        .byte $79   ; 
- D 0 - I - 0x0211C7 08:91B7: 8A        .byte $8A   ; 
- D 0 - I - 0x0211C8 08:91B8: 9B        .byte $9B   ; 
- D 0 - I - 0x0211C9 08:91B9: AC        .byte $AC   ; 
- D 0 - I - 0x0211CA 08:91BA: AE        .byte $AE   ; 
- D 0 - I - 0x0211CB 08:91BB: AD        .byte $AD   ; 
- D 0 - I - 0x0211CC 08:91BC: AC        .byte $AC   ; 
- D 0 - I - 0x0211CD 08:91BD: AB        .byte $AB   ; 
- D 0 - I - 0x0211CE 08:91BE: 9A        .byte $9A   ; 
- D 0 - I - 0x0211CF 08:91BF: 89        .byte $89   ; 
- D 0 - I - 0x0211D0 08:91C0: 78        .byte $78   ; 
- D 0 - I - 0x0211D1 08:91C1: 67        .byte $67   ; 
- D 0 - I - 0x0211D2 08:91C2: 56        .byte $56   ; 
- D 0 - I - 0x0211D3 08:91C3: 45        .byte $45   ; 
- D 0 - I - 0x0211D4 08:91C4: 34        .byte $34   ; 
- D 0 - I - 0x0211D5 08:91C5: 23        .byte $23   ; 
- D 0 - I - 0x0211D6 08:91C6: 22        .byte $22   ; 
- D 0 - I - 0x0211D7 08:91C7: 11        .byte $11   ; 
- D 0 - I - 0x0211D8 08:91C8: 11        .byte $11   ; 
- D 0 - I - 0x0211D9 08:91C9: FF        .byte $FF   ; 



_off002_91CA_0A:
- D 0 - I - 0x0211DA 08:91CA: 86        .byte $86   ; 
- D 0 - I - 0x0211DB 08:91CB: B3        .byte $B3   ; 
- D 0 - I - 0x0211DC 08:91CC: 82        .byte $82   ; 
- D 0 - I - 0x0211DD 08:91CD: 00        .byte $00   ; 
- D 0 - I - 0x0211DE 08:91CE: 05        .byte $05   ; 
- D 0 - I - 0x0211DF 08:91CF: 35        .byte $35   ; 
- D 0 - I - 0x0211E0 08:91D0: 30        .byte $30   ; 
- D 0 - I - 0x0211E1 08:91D1: 80        .byte $80   ; 
- D 0 - I - 0x0211E2 08:91D2: 20        .byte $20   ; 
- D 0 - I - 0x0211E3 08:91D3: 80        .byte $80   ; 
- D 0 - I - 0x0211E4 08:91D4: 10        .byte $10   ; 
- D 0 - I - 0x0211E5 08:91D5: 80        .byte $80   ; 
- D 0 - I - 0x0211E6 08:91D6: FF        .byte $FF   ; 



_off002_91D7_0B:
- D 0 - I - 0x0211E7 08:91D7: 91        .byte $91   ; 
- D 0 - I - 0x0211E8 08:91D8: B2        .byte $B2   ; 
- D 0 - I - 0x0211E9 08:91D9: FA        .byte $FA   ; 
- D 0 - I - 0x0211EA 08:91DA: 08        .byte $08   ; 
- D 0 - I - 0x0211EB 08:91DB: 08        .byte $08   ; 
- D 0 - I - 0x0211EC 08:91DC: 12        .byte $12   ; 
- D 0 - I - 0x0211ED 08:91DD: 11        .byte $11   ; 
- D 0 - I - 0x0211EE 08:91DE: 00        .byte $00   ; 
- D 0 - I - 0x0211EF 08:91DF: 12        .byte $12   ; 
- D 0 - I - 0x0211F0 08:91E0: 00        .byte $00   ; 
- D 0 - I - 0x0211F1 08:91E1: FA        .byte $FA   ; 
- D 0 - I - 0x0211F2 08:91E2: 02        .byte $02   ; 
- D 0 - I - 0x0211F3 08:91E3: 73        .byte $73   ; 
- D 0 - I - 0x0211F4 08:91E4: FA        .byte $FA   ; 
- D 0 - I - 0x0211F5 08:91E5: 06        .byte $06   ; 
- D 0 - I - 0x0211F6 08:91E6: 90        .byte $90   ; 
- D 0 - I - 0x0211F7 08:91E7: 1A        .byte $1A   ; 
- D 0 - I - 0x0211F8 08:91E8: 80        .byte $80   ; 
- D 0 - I - 0x0211F9 08:91E9: 10        .byte $10   ; 
- D 0 - I - 0x0211FA 08:91EA: 80        .byte $80   ; 
- D 0 - I - 0x0211FB 08:91EB: 80        .byte $80   ; 
- D 0 - I - 0x0211FC 08:91EC: FA        .byte $FA   ; 
- D 0 - I - 0x0211FD 08:91ED: FF        .byte $FF   ; 


; bzk вероятно мусор
- - - - - - 0x0211FE 08:91EE: 02        .byte $02   ; 
- - - - - - 0x0211FF 08:91EF: 11        .byte $11   ; 
- - - - - - 0x021200 08:91F0: 24        .byte $24   ; 
- - - - - - 0x021201 08:91F1: 32        .byte $32   ; 
- - - - - - 0x021202 08:91F2: 45        .byte $45   ; 
- - - - - - 0x021203 08:91F3: 53        .byte $53   ; 
- - - - - - 0x021204 08:91F4: 66        .byte $66   ; 
- - - - - - 0x021205 08:91F5: 74        .byte $74   ; 
- - - - - - 0x021206 08:91F6: 87        .byte $87   ; 
- - - - - - 0x021207 08:91F7: 02        .byte $02   ; 
- - - - - - 0x021208 08:91F8: 65        .byte $65   ; 
- - - - - - 0x021209 08:91F9: 6E        .byte $6E   ; 
- - - - - - 0x02120A 08:91FA: 55        .byte $55   ; 
- - - - - - 0x02120B 08:91FB: 5E        .byte $5E   ; 
- - - - - - 0x02120C 08:91FC: 45        .byte $45   ; 
- - - - - - 0x02120D 08:91FD: 4E        .byte $4E   ; 
- - - - - - 0x02120E 08:91FE: 35        .byte $35   ; 
- - - - - - 0x02120F 08:91FF: 3E        .byte $3E   ; 
- - - - - - 0x021210 08:9200: 25        .byte $25   ; 
- - - - - - 0x021211 08:9201: 2E        .byte $2E   ; 
- - - - - - 0x021212 08:9202: 15        .byte $15   ; 
- - - - - - 0x021213 08:9203: 1E        .byte $1E   ; 
- - - - - - 0x021214 08:9204: FF        .byte $FF   ; 



_off002_9205_1D:
- D 0 - I - 0x021215 08:9205: 96        .byte $96   ; 
- D 0 - I - 0x021216 08:9206: B3        .byte $B3   ; 
- D 0 - I - 0x021217 08:9207: D2        .byte $D2   ; 
- D 0 - I - 0x021218 08:9208: 00        .byte $00   ; 
- D 0 - I - 0x021219 08:9209: 0F        .byte $0F   ; 
- D 0 - I - 0x02121A 08:920A: 73        .byte $73   ; 
- D 0 - I - 0x02121B 08:920B: FA        .byte $FA   ; 
- D 0 - I - 0x02121C 08:920C: 04        .byte $04   ; 
- D 0 - I - 0x02121D 08:920D: 00        .byte $00   ; 
- D 0 - I - 0x02121E 08:920E: 1B        .byte $1B   ; 
- D 0 - I - 0x02121F 08:920F: 70        .byte $70   ; 
- D 0 - I - 0x021220 08:9210: 60        .byte $60   ; 
- D 0 - I - 0x021221 08:9211: FA        .byte $FA   ; 
- D 0 - I - 0x021222 08:9212: FF        .byte $FF   ; 
- D 0 - I - 0x021223 08:9213: 03        .byte $03   ; 
- D 0 - I - 0x021224 08:9214: 64        .byte $64   ; 
- D 0 - I - 0x021225 08:9215: 67        .byte $67   ; 
- D 0 - I - 0x021226 08:9216: 6F        .byte $6F   ; 
- D 0 - I - 0x021227 08:9217: 6E        .byte $6E   ; 
- D 0 - I - 0x021228 08:9218: 7F        .byte $7F   ; 
- D 0 - I - 0x021229 08:9219: 7E        .byte $7E   ; 
- D 0 - I - 0x02122A 08:921A: 8F        .byte $8F   ; 
- D 0 - I - 0x02122B 08:921B: 8E        .byte $8E   ; 
- D 0 - I - 0x02122C 08:921C: 9F        .byte $9F   ; 
- D 0 - I - 0x02122D 08:921D: 9E        .byte $9E   ; 
- D 0 - I - 0x02122E 08:921E: AF        .byte $AF   ; 
- D 0 - I - 0x02122F 08:921F: AE        .byte $AE   ; 
- D 0 - I - 0x021230 08:9220: 9F        .byte $9F   ; 
- D 0 - I - 0x021231 08:9221: 7E        .byte $7E   ; 
- D 0 - I - 0x021232 08:9222: 7F        .byte $7F   ; 
- D 0 - I - 0x021233 08:9223: 6E        .byte $6E   ; 
- D 0 - I - 0x021234 08:9224: 5F        .byte $5F   ; 
- D 0 - I - 0x021235 08:9225: 4E        .byte $4E   ; 
- D 0 - I - 0x021236 08:9226: 3F        .byte $3F   ; 
- D 0 - I - 0x021237 08:9227: 2E        .byte $2E   ; 
- D 0 - I - 0x021238 08:9228: 1F        .byte $1F   ; 
- D 0 - I - 0x021239 08:9229: 1E        .byte $1E   ; 
- D 0 - I - 0x02123A 08:922A: 1F        .byte $1F   ; 
- D 0 - I - 0x02123B 08:922B: FF        .byte $FF   ; 



_off002_922C_27:
- D 0 - I - 0x02123C 08:922C: 83        .byte $83   ; 
- D 0 - I - 0x02123D 08:922D: 78        .byte $78   ; 
- D 0 - I - 0x02123E 08:922E: 80        .byte $80   ; 
- D 0 - I - 0x02123F 08:922F: 3F        .byte $3F   ; 
- D 0 - I - 0x021240 08:9230: 10        .byte $10   ; 
- D 0 - I - 0x021241 08:9231: 3F        .byte $3F   ; 
- D 0 - I - 0x021242 08:9232: 80        .byte $80   ; 
- D 0 - I - 0x021243 08:9233: 2A        .byte $2A   ; 
- D 0 - I - 0x021244 08:9234: 10        .byte $10   ; 
- D 0 - I - 0x021245 08:9235: 3F        .byte $3F   ; 
- D 0 - I - 0x021246 08:9236: 80        .byte $80   ; 
- D 0 - I - 0x021247 08:9237: 1F        .byte $1F   ; 
- D 0 - I - 0x021248 08:9238: 10        .byte $10   ; 
- D 0 - I - 0x021249 08:9239: 2A        .byte $2A   ; 
- D 0 - I - 0x02124A 08:923A: 20        .byte $20   ; 
- D 0 - I - 0x02124B 08:923B: 3F        .byte $3F   ; 
- D 0 - I - 0x02124C 08:923C: 10        .byte $10   ; 
- D 0 - I - 0x02124D 08:923D: 1F        .byte $1F   ; 
- D 0 - I - 0x02124E 08:923E: 20        .byte $20   ; 
- D 0 - I - 0x02124F 08:923F: 2A        .byte $2A   ; 
- D 0 - I - 0x021250 08:9240: 10        .byte $10   ; 
- D 0 - I - 0x021251 08:9241: 3F        .byte $3F   ; 
- D 0 - I - 0x021252 08:9242: 20        .byte $20   ; 
- D 0 - I - 0x021253 08:9243: 1F        .byte $1F   ; 
- D 0 - I - 0x021254 08:9244: 10        .byte $10   ; 
- D 0 - I - 0x021255 08:9245: 2A        .byte $2A   ; 
- D 0 - I - 0x021256 08:9246: 00        .byte $00   ; 
- D 0 - I - 0x021257 08:9247: 10        .byte $10   ; 
- D 0 - I - 0x021258 08:9248: 1F        .byte $1F   ; 
- D 0 - I - 0x021259 08:9249: FF        .byte $FF   ; 



_off002_924A_25:
_off002_924A_26:
- D 0 - I - 0x02125A 08:924A: 83        .byte $83   ; 
- D 0 - I - 0x02125B 08:924B: 78        .byte $78   ; 
- D 0 - I - 0x02125C 08:924C: 80        .byte $80   ; 
- D 0 - I - 0x02125D 08:924D: 50        .byte $50   ; 
- D 0 - I - 0x02125E 08:924E: 10        .byte $10   ; 
- D 0 - I - 0x02125F 08:924F: 50        .byte $50   ; 
- D 0 - I - 0x021260 08:9250: 80        .byte $80   ; 
- D 0 - I - 0x021261 08:9251: 3B        .byte $3B   ; 
- D 0 - I - 0x021262 08:9252: 10        .byte $10   ; 
- D 0 - I - 0x021263 08:9253: 50        .byte $50   ; 
- D 0 - I - 0x021264 08:9254: 80        .byte $80   ; 
- D 0 - I - 0x021265 08:9255: 2C        .byte $2C   ; 
- D 0 - I - 0x021266 08:9256: 10        .byte $10   ; 
- D 0 - I - 0x021267 08:9257: 3B        .byte $3B   ; 
- D 0 - I - 0x021268 08:9258: 30        .byte $30   ; 
- D 0 - I - 0x021269 08:9259: 2C        .byte $2C   ; 
- D 0 - I - 0x02126A 08:925A: 10        .byte $10   ; 
- D 0 - I - 0x02126B 08:925B: 3B        .byte $3B   ; 
- D 0 - I - 0x02126C 08:925C: 10        .byte $10   ; 
- D 0 - I - 0x02126D 08:925D: 2C        .byte $2C   ; 
- D 0 - I - 0x02126E 08:925E: FF        .byte $FF   ; 



_off002_925F_17:
- D 0 - I - 0x02126F 08:925F: 92        .byte $92   ; 
- D 0 - I - 0x021270 08:9260: B1        .byte $B1   ; 
- D 0 - I - 0x021271 08:9261: FA        .byte $FA   ; 
- D 0 - I - 0x021272 08:9262: 03        .byte $03   ; 
- D 0 - I - 0x021273 08:9263: 00        .byte $00   ; 
- D 0 - I - 0x021274 08:9264: 00        .byte $00   ; 
- D 0 - I - 0x021275 08:9265: 61        .byte $61   ; 
- D 0 - I - 0x021276 08:9266: 80        .byte $80   ; 
- D 0 - I - 0x021277 08:9267: FA        .byte $FA   ; 
- D 0 - I - 0x021278 08:9268: 02        .byte $02   ; 
- D 0 - I - 0x021279 08:9269: 73        .byte $73   ; 
- D 0 - I - 0x02127A 08:926A: FA        .byte $FA   ; 
- D 0 - I - 0x02127B 08:926B: 03        .byte $03   ; 
- D 0 - I - 0x02127C 08:926C: 00        .byte $00   ; 
- D 0 - I - 0x02127D 08:926D: 1C        .byte $1C   ; 
- D 0 - I - 0x02127E 08:926E: 60        .byte $60   ; 
- D 0 - I - 0x02127F 08:926F: 40        .byte $40   ; 
- D 0 - I - 0x021280 08:9270: FA        .byte $FA   ; 
- D 0 - I - 0x021281 08:9271: 06        .byte $06   ; 
- D 0 - I - 0x021282 08:9272: B0        .byte $B0   ; 
- D 0 - I - 0x021283 08:9273: 95        .byte $95   ; 
- D 0 - I - 0x021284 08:9274: 20        .byte $20   ; 
- D 0 - I - 0x021285 08:9275: 20        .byte $20   ; 
- D 0 - I - 0x021286 08:9276: 10        .byte $10   ; 
- D 0 - I - 0x021287 08:9277: 20        .byte $20   ; 
- D 0 - I - 0x021288 08:9278: FF        .byte $FF   ; 
- D 0 - I - 0x021289 08:9279: 03        .byte $03   ; 
- D 0 - I - 0x02128A 08:927A: 6A        .byte $6A   ; 
- D 0 - I - 0x02128B 08:927B: 6C        .byte $6C   ; 
- D 0 - I - 0x02128C 08:927C: FF        .byte $FF   ; 



_off002_927D_2A:
- D 0 - I - 0x02128D 08:927D: 82        .byte $82   ; 
- D 0 - I - 0x02128E 08:927E: B8        .byte $B8   ; 
- D 0 - I - 0x02128F 08:927F: 60        .byte $60   ; 
- D 0 - I - 0x021290 08:9280: 50        .byte $50   ; 
- D 0 - I - 0x021291 08:9281: 00        .byte $00   ; 
- D 0 - I - 0x021292 08:9282: 20        .byte $20   ; 
- D 0 - I - 0x021293 08:9283: 50        .byte $50   ; 
- D 0 - I - 0x021294 08:9284: 60        .byte $60   ; 
- D 0 - I - 0x021295 08:9285: 35        .byte $35   ; 
- D 0 - I - 0x021296 08:9286: 10        .byte $10   ; 
- D 0 - I - 0x021297 08:9287: 50        .byte $50   ; 
- D 0 - I - 0x021298 08:9288: 20        .byte $20   ; 
- D 0 - I - 0x021299 08:9289: 35        .byte $35   ; 
- D 0 - I - 0x02129A 08:928A: 60        .byte $60   ; 
- D 0 - I - 0x02129B 08:928B: 3F        .byte $3F   ; 
- D 0 - I - 0x02129C 08:928C: 10        .byte $10   ; 
- D 0 - I - 0x02129D 08:928D: 35        .byte $35   ; 
- D 0 - I - 0x02129E 08:928E: 20        .byte $20   ; 
- D 0 - I - 0x02129F 08:928F: 3F        .byte $3F   ; 
- D 0 - I - 0x0212A0 08:9290: 60        .byte $60   ; 
- D 0 - I - 0x0212A1 08:9291: 28        .byte $28   ; 
- D 0 - I - 0x0212A2 08:9292: 10        .byte $10   ; 
- D 0 - I - 0x0212A3 08:9293: 3F        .byte $3F   ; 
- D 0 - I - 0x0212A4 08:9294: 20        .byte $20   ; 
- D 0 - I - 0x0212A5 08:9295: 28        .byte $28   ; 
- D 0 - I - 0x0212A6 08:9296: 60        .byte $60   ; 
- D 0 - I - 0x0212A7 08:9297: 35        .byte $35   ; 
- D 0 - I - 0x0212A8 08:9298: 10        .byte $10   ; 
- D 0 - I - 0x0212A9 08:9299: 28        .byte $28   ; 
- D 0 - I - 0x0212AA 08:929A: 20        .byte $20   ; 
- D 0 - I - 0x0212AB 08:929B: 35        .byte $35   ; 
- D 0 - I - 0x0212AC 08:929C: E8        .byte $E8   ; 
- D 0 - I - 0x0212AD 08:929D: 03        .byte $03   ; 
- D 0 - I - 0x0212AE 08:929E: 60        .byte $60   ; 
- D 0 - I - 0x0212AF 08:929F: 1F        .byte $1F   ; 
- D 0 - I - 0x0212B0 08:92A0: 10        .byte $10   ; 
- D 0 - I - 0x0212B1 08:92A1: 35        .byte $35   ; 
- D 0 - I - 0x0212B2 08:92A2: 20        .byte $20   ; 
- D 0 - I - 0x0212B3 08:92A3: 1F        .byte $1F   ; 
- D 0 - I - 0x0212B4 08:92A4: 00        .byte $00   ; 
- D 0 - I - 0x0212B5 08:92A5: 10        .byte $10   ; 
- D 0 - I - 0x0212B6 08:92A6: 1F        .byte $1F   ; 
- D 0 - I - 0x0212B7 08:92A7: FF        .byte $FF   ; 



_off002_92A8_19:
- D 0 - I - 0x0212B8 08:92A8: 12        .byte $12   ; 
- D 0 - I - 0x0212B9 08:92A9: 11        .byte $11   ; 
- D 0 - I - 0x0212BA 08:92AA: 03        .byte $03   ; 
- D 0 - I - 0x0212BB 08:92AB: 21        .byte $21   ; 
- D 0 - I - 0x0212BC 08:92AC: 02        .byte $02   ; 
- D 0 - I - 0x0212BD 08:92AD: 31        .byte $31   ; 
- D 0 - I - 0x0212BE 08:92AE: 01        .byte $01   ; 
- D 0 - I - 0x0212BF 08:92AF: 41        .byte $41   ; 
- D 0 - I - 0x0212C0 08:92B0: 51        .byte $51   ; 
- D 0 - I - 0x0212C1 08:92B1: 71        .byte $71   ; 
- D 0 - I - 0x0212C2 08:92B2: 91        .byte $91   ; 
- D 0 - I - 0x0212C3 08:92B3: B1        .byte $B1   ; 
- D 0 - I - 0x0212C4 08:92B4: C1        .byte $C1   ; 
- D 0 - I - 0x0212C5 08:92B5: D1        .byte $D1   ; 
- D 0 - I - 0x0212C6 08:92B6: 04        .byte $04   ; 
- D 0 - I - 0x0212C7 08:92B7: CA        .byte $CA   ; 
- D 0 - I - 0x0212C8 08:92B8: 67        .byte $67   ; 
- D 0 - I - 0x0212C9 08:92B9: 34        .byte $34   ; 
- D 0 - I - 0x0212CA 08:92BA: 14        .byte $14   ; 
- D 0 - I - 0x0212CB 08:92BB: FF        .byte $FF   ; 



_off002_92BC_1F:
- D 0 - I - 0x0212CC 08:92BC: 94        .byte $94   ; 
- D 0 - I - 0x0212CD 08:92BD: B4        .byte $B4   ; 
- D 0 - I - 0x0212CE 08:92BE: A3        .byte $A3   ; 
- D 0 - I - 0x0212CF 08:92BF: 00        .byte $00   ; 
- D 0 - I - 0x0212D0 08:92C0: A4        .byte $A4   ; 
- D 0 - I - 0x0212D1 08:92C1: 00        .byte $00   ; 
- D 0 - I - 0x0212D2 08:92C2: A5        .byte $A5   ; 
- D 0 - I - 0x0212D3 08:92C3: 00        .byte $00   ; 
- D 0 - I - 0x0212D4 08:92C4: 0E        .byte $0E   ; 
- D 0 - I - 0x0212D5 08:92C5: 30        .byte $30   ; 
- D 0 - I - 0x0212D6 08:92C6: 84        .byte $84   ; 
- D 0 - I - 0x0212D7 08:92C7: 60        .byte $60   ; 
- D 0 - I - 0x0212D8 08:92C8: 40        .byte $40   ; 
- D 0 - I - 0x0212D9 08:92C9: 10        .byte $10   ; 
- D 0 - I - 0x0212DA 08:92CA: 40        .byte $40   ; 
- D 0 - I - 0x0212DB 08:92CB: 40        .byte $40   ; 
- D 0 - I - 0x0212DC 08:92CC: 40        .byte $40   ; 
- D 0 - I - 0x0212DD 08:92CD: 10        .byte $10   ; 
- D 0 - I - 0x0212DE 08:92CE: 40        .byte $40   ; 
- D 0 - I - 0x0212DF 08:92CF: 20        .byte $20   ; 
- D 0 - I - 0x0212E0 08:92D0: 40        .byte $40   ; 
- D 0 - I - 0x0212E1 08:92D1: 10        .byte $10   ; 
- D 0 - I - 0x0212E2 08:92D2: 40        .byte $40   ; 
- D 0 - I - 0x0212E3 08:92D3: FF        .byte $FF   ; 
- D 0 - I - 0x0212E4 08:92D4: 04        .byte $04   ; 
- D 0 - I - 0x0212E5 08:92D5: B4        .byte $B4   ; 
- D 0 - I - 0x0212E6 08:92D6: BF        .byte $BF   ; 
- D 0 - I - 0x0212E7 08:92D7: B7        .byte $B7   ; 
- D 0 - I - 0x0212E8 08:92D8: 02        .byte $02   ; 
- D 0 - I - 0x0212E9 08:92D9: 61        .byte $61   ; 
- D 0 - I - 0x0212EA 08:92DA: 62        .byte $62   ; 
- D 0 - I - 0x0212EB 08:92DB: 63        .byte $63   ; 
- D 0 - I - 0x0212EC 08:92DC: 64        .byte $64   ; 
- D 0 - I - 0x0212ED 08:92DD: 65        .byte $65   ; 
- D 0 - I - 0x0212EE 08:92DE: 66        .byte $66   ; 
- D 0 - I - 0x0212EF 08:92DF: 67        .byte $67   ; 
- D 0 - I - 0x0212F0 08:92E0: 68        .byte $68   ; 
- D 0 - I - 0x0212F1 08:92E1: 0C        .byte $0C   ; 
- D 0 - I - 0x0212F2 08:92E2: 18        .byte $18   ; 
- D 0 - I - 0x0212F3 08:92E3: 31        .byte $31   ; 
- D 0 - I - 0x0212F4 08:92E4: 02        .byte $02   ; 
- D 0 - I - 0x0212F5 08:92E5: 32        .byte $32   ; 
- D 0 - I - 0x0212F6 08:92E6: 33        .byte $33   ; 
- D 0 - I - 0x0212F7 08:92E7: 34        .byte $34   ; 
- D 0 - I - 0x0212F8 08:92E8: 35        .byte $35   ; 
- D 0 - I - 0x0212F9 08:92E9: 36        .byte $36   ; 
- D 0 - I - 0x0212FA 08:92EA: 37        .byte $37   ; 
- D 0 - I - 0x0212FB 08:92EB: 38        .byte $38   ; 
- D 0 - I - 0x0212FC 08:92EC: 0C        .byte $0C   ; 
- D 0 - I - 0x0212FD 08:92ED: 18        .byte $18   ; 
- D 0 - I - 0x0212FE 08:92EE: 02        .byte $02   ; 
- D 0 - I - 0x0212FF 08:92EF: 21        .byte $21   ; 
- D 0 - I - 0x021300 08:92F0: 22        .byte $22   ; 
- D 0 - I - 0x021301 08:92F1: 23        .byte $23   ; 
- D 0 - I - 0x021302 08:92F2: 24        .byte $24   ; 
- D 0 - I - 0x021303 08:92F3: 25        .byte $25   ; 
- D 0 - I - 0x021304 08:92F4: 26        .byte $26   ; 
- D 0 - I - 0x021305 08:92F5: 27        .byte $27   ; 
- D 0 - I - 0x021306 08:92F6: 28        .byte $28   ; 
- D 0 - I - 0x021307 08:92F7: 0C        .byte $0C   ; 
- D 0 - I - 0x021308 08:92F8: 18        .byte $18   ; 
- D 0 - I - 0x021309 08:92F9: FF        .byte $FF   ; 



_off002_92FA_2B:
- D 0 - I - 0x02130A 08:92FA: DF        .byte $DF   ; 
- D 0 - I - 0x02130B 08:92FB: B0        .byte $B0   ; 
- D 0 - I - 0x02130C 08:92FC: 88        .byte $88   ; 
- D 0 - I - 0x02130D 08:92FD: 00        .byte $00   ; 
- D 0 - I - 0x02130E 08:92FE: 00        .byte $00   ; 
- D 0 - I - 0x02130F 08:92FF: E8        .byte $E8   ; 
- D 0 - I - 0x021310 08:9300: 01        .byte $01   ; 
- D 0 - I - 0x021311 08:9301: E8        .byte $E8   ; 
- D 0 - I - 0x021312 08:9302: 01        .byte $01   ; 
- D 0 - I - 0x021313 08:9303: FA        .byte $FA   ; 
- D 0 - I - 0x021314 08:9304: 06        .byte $06   ; 
- D 0 - I - 0x021315 08:9305: 04        .byte $04   ; 
- D 0 - I - 0x021316 08:9306: 11        .byte $11   ; 
- D 0 - I - 0x021317 08:9307: 10        .byte $10   ; 
- D 0 - I - 0x021318 08:9308: 40        .byte $40   ; 
- D 0 - I - 0x021319 08:9309: FA        .byte $FA   ; 
- D 0 - I - 0x02131A 08:930A: FA        .byte $FA   ; 
- D 0 - I - 0x02131B 08:930B: 04        .byte $04   ; 
- D 0 - I - 0x02131C 08:930C: 82        .byte $82   ; 
- D 0 - I - 0x02131D 08:930D: 19        .byte $19   ; 
- D 0 - I - 0x02131E 08:930E: 60        .byte $60   ; 
- D 0 - I - 0x02131F 08:930F: 20        .byte $20   ; 
- D 0 - I - 0x021320 08:9310: FA        .byte $FA   ; 
- D 0 - I - 0x021321 08:9311: E8        .byte $E8   ; 
- D 0 - I - 0x021322 08:9312: 01        .byte $01   ; 
- D 0 - I - 0x021323 08:9313: FA        .byte $FA   ; 
- D 0 - I - 0x021324 08:9314: 06        .byte $06   ; 
- D 0 - I - 0x021325 08:9315: 04        .byte $04   ; 
- D 0 - I - 0x021326 08:9316: 11        .byte $11   ; 
- D 0 - I - 0x021327 08:9317: 10        .byte $10   ; 
- D 0 - I - 0x021328 08:9318: 40        .byte $40   ; 
- D 0 - I - 0x021329 08:9319: FA        .byte $FA   ; 
- D 0 - I - 0x02132A 08:931A: E8        .byte $E8   ; 
- D 0 - I - 0x02132B 08:931B: 0D        .byte $0D   ; 
- D 0 - I - 0x02132C 08:931C: 60        .byte $60   ; 
- D 0 - I - 0x02132D 08:931D: 20        .byte $20   ; 
- D 0 - I - 0x02132E 08:931E: 60        .byte $60   ; 
- D 0 - I - 0x02132F 08:931F: 20        .byte $20   ; 
- D 0 - I - 0x021330 08:9320: E8        .byte $E8   ; 
- D 0 - I - 0x021331 08:9321: 02        .byte $02   ; 
- D 0 - I - 0x021332 08:9322: FA        .byte $FA   ; 
- D 0 - I - 0x021333 08:9323: 06        .byte $06   ; 
- D 0 - I - 0x021334 08:9324: 82        .byte $82   ; 
- D 0 - I - 0x021335 08:9325: 19        .byte $19   ; 
- D 0 - I - 0x021336 08:9326: 60        .byte $60   ; 
- D 0 - I - 0x021337 08:9327: 20        .byte $20   ; 
- D 0 - I - 0x021338 08:9328: FA        .byte $FA   ; 
- D 0 - I - 0x021339 08:9329: FF        .byte $FF   ; 
- D 0 - I - 0x02133A 08:932A: 0F        .byte $0F   ; 
- D 0 - I - 0x02133B 08:932B: B0        .byte $B0   ; 
- D 0 - I - 0x02133C 08:932C: 88        .byte $88   ; 
- D 0 - I - 0x02133D 08:932D: 00        .byte $00   ; 
- D 0 - I - 0x02133E 08:932E: 00        .byte $00   ; 
- D 0 - I - 0x02133F 08:932F: E8        .byte $E8   ; 
- D 0 - I - 0x021340 08:9330: 07        .byte $07   ; 
- D 0 - I - 0x021341 08:9331: 00        .byte $00   ; 
- D 0 - I - 0x021342 08:9332: E8        .byte $E8   ; 
- D 0 - I - 0x021343 08:9333: 01        .byte $01   ; 
- D 0 - I - 0x021344 08:9334: E8        .byte $E8   ; 
- D 0 - I - 0x021345 08:9335: 01        .byte $01   ; 
- D 0 - I - 0x021346 08:9336: FA        .byte $FA   ; 
- D 0 - I - 0x021347 08:9337: 06        .byte $06   ; 
- D 0 - I - 0x021348 08:9338: 04        .byte $04   ; 
- D 0 - I - 0x021349 08:9339: 21        .byte $21   ; 
- D 0 - I - 0x02134A 08:933A: 10        .byte $10   ; 
- D 0 - I - 0x02134B 08:933B: 41        .byte $41   ; 
- D 0 - I - 0x02134C 08:933C: FA        .byte $FA   ; 
- D 0 - I - 0x02134D 08:933D: FA        .byte $FA   ; 
- D 0 - I - 0x02134E 08:933E: 04        .byte $04   ; 
- D 0 - I - 0x02134F 08:933F: 82        .byte $82   ; 
- D 0 - I - 0x021350 08:9340: 29        .byte $29   ; 
- D 0 - I - 0x021351 08:9341: 30        .byte $30   ; 
- D 0 - I - 0x021352 08:9342: 21        .byte $21   ; 
- D 0 - I - 0x021353 08:9343: FA        .byte $FA   ; 
- D 0 - I - 0x021354 08:9344: E8        .byte $E8   ; 
- D 0 - I - 0x021355 08:9345: 01        .byte $01   ; 
- D 0 - I - 0x021356 08:9346: FA        .byte $FA   ; 
- D 0 - I - 0x021357 08:9347: 06        .byte $06   ; 
- D 0 - I - 0x021358 08:9348: 04        .byte $04   ; 
- D 0 - I - 0x021359 08:9349: 21        .byte $21   ; 
- D 0 - I - 0x02135A 08:934A: 10        .byte $10   ; 
- D 0 - I - 0x02135B 08:934B: 41        .byte $41   ; 
- D 0 - I - 0x02135C 08:934C: FA        .byte $FA   ; 
- D 0 - I - 0x02135D 08:934D: E8        .byte $E8   ; 
- D 0 - I - 0x02135E 08:934E: 0D        .byte $0D   ; 
- D 0 - I - 0x02135F 08:934F: 30        .byte $30   ; 
- D 0 - I - 0x021360 08:9350: 21        .byte $21   ; 
- D 0 - I - 0x021361 08:9351: 30        .byte $30   ; 
- D 0 - I - 0x021362 08:9352: 21        .byte $21   ; 
- D 0 - I - 0x021363 08:9353: E8        .byte $E8   ; 
- D 0 - I - 0x021364 08:9354: 02        .byte $02   ; 
- D 0 - I - 0x021365 08:9355: FA        .byte $FA   ; 
- D 0 - I - 0x021366 08:9356: 06        .byte $06   ; 
- D 0 - I - 0x021367 08:9357: 82        .byte $82   ; 
- D 0 - I - 0x021368 08:9358: 29        .byte $29   ; 
- D 0 - I - 0x021369 08:9359: 30        .byte $30   ; 
- D 0 - I - 0x02136A 08:935A: 21        .byte $21   ; 
- D 0 - I - 0x02136B 08:935B: FA        .byte $FA   ; 
- D 0 - I - 0x02136C 08:935C: FF        .byte $FF   ; 
- D 0 - I - 0x02136D 08:935D: 06        .byte $06   ; 
- D 0 - I - 0x02136E 08:935E: 1D        .byte $1D   ; 
- D 0 - I - 0x02136F 08:935F: 2D        .byte $2D   ; 
- D 0 - I - 0x021370 08:9360: 3D        .byte $3D   ; 
- D 0 - I - 0x021371 08:9361: 4D        .byte $4D   ; 
- D 0 - I - 0x021372 08:9362: 5D        .byte $5D   ; 
- D 0 - I - 0x021373 08:9363: 6D        .byte $6D   ; 
- D 0 - I - 0x021374 08:9364: 7D        .byte $7D   ; 
- D 0 - I - 0x021375 08:9365: 8D        .byte $8D   ; 
- D 0 - I - 0x021376 08:9366: 0C        .byte $0C   ; 
- D 0 - I - 0x021377 08:9367: 8D        .byte $8D   ; 
- D 0 - I - 0x021378 08:9368: 7D        .byte $7D   ; 
- D 0 - I - 0x021379 08:9369: 6D        .byte $6D   ; 
- D 0 - I - 0x02137A 08:936A: 5D        .byte $5D   ; 
- D 0 - I - 0x02137B 08:936B: 3D        .byte $3D   ; 
- D 0 - I - 0x02137C 08:936C: 1D        .byte $1D   ; 
- D 0 - I - 0x02137D 08:936D: FF        .byte $FF   ; 



_off002_936E_1B:
- D 0 - I - 0x02137E 08:936E: 11        .byte $11   ; 
- D 0 - I - 0x02137F 08:936F: 36        .byte $36   ; 
- D 0 - I - 0x021380 08:9370: 46        .byte $46   ; 
- D 0 - I - 0x021381 08:9371: 56        .byte $56   ; 
- D 0 - I - 0x021382 08:9372: 66        .byte $66   ; 
- D 0 - I - 0x021383 08:9373: 76        .byte $76   ; 
- D 0 - I - 0x021384 08:9374: 87        .byte $87   ; 
- D 0 - I - 0x021385 08:9375: 98        .byte $98   ; 
- D 0 - I - 0x021386 08:9376: A9        .byte $A9   ; 
- D 0 - I - 0x021387 08:9377: BA        .byte $BA   ; 
- D 0 - I - 0x021388 08:9378: 04        .byte $04   ; 
- D 0 - I - 0x021389 08:9379: AF        .byte $AF   ; 
- D 0 - I - 0x02138A 08:937A: BF        .byte $BF   ; 
- D 0 - I - 0x02138B 08:937B: CF        .byte $CF   ; 
- D 0 - I - 0x02138C 08:937C: DF        .byte $DF   ; 
- D 0 - I - 0x02138D 08:937D: 01        .byte $01   ; 
- D 0 - I - 0x02138E 08:937E: EF        .byte $EF   ; 
- D 0 - I - 0x02138F 08:937F: AF        .byte $AF   ; 
- D 0 - I - 0x021390 08:9380: DF        .byte $DF   ; 
- D 0 - I - 0x021391 08:9381: 9F        .byte $9F   ; 
- D 0 - I - 0x021392 08:9382: CF        .byte $CF   ; 
- D 0 - I - 0x021393 08:9383: 8F        .byte $8F   ; 
- D 0 - I - 0x021394 08:9384: BF        .byte $BF   ; 
- D 0 - I - 0x021395 08:9385: 7F        .byte $7F   ; 
- D 0 - I - 0x021396 08:9386: AF        .byte $AF   ; 
- D 0 - I - 0x021397 08:9387: 6F        .byte $6F   ; 
- D 0 - I - 0x021398 08:9388: 9F        .byte $9F   ; 
- D 0 - I - 0x021399 08:9389: 5F        .byte $5F   ; 
- D 0 - I - 0x02139A 08:938A: 8F        .byte $8F   ; 
- D 0 - I - 0x02139B 08:938B: 4F        .byte $4F   ; 
- D 0 - I - 0x02139C 08:938C: 7F        .byte $7F   ; 
- D 0 - I - 0x02139D 08:938D: 3F        .byte $3F   ; 
- D 0 - I - 0x02139E 08:938E: 6F        .byte $6F   ; 
- D 0 - I - 0x02139F 08:938F: 2F        .byte $2F   ; 
- D 0 - I - 0x0213A0 08:9390: 5F        .byte $5F   ; 
- D 0 - I - 0x0213A1 08:9391: 1F        .byte $1F   ; 
- D 0 - I - 0x0213A2 08:9392: 4F        .byte $4F   ; 
- D 0 - I - 0x0213A3 08:9393: 1F        .byte $1F   ; 
- D 0 - I - 0x0213A4 08:9394: 3F        .byte $3F   ; 
- D 0 - I - 0x0213A5 08:9395: 1F        .byte $1F   ; 
- D 0 - I - 0x0213A6 08:9396: 2F        .byte $2F   ; 
- D 0 - I - 0x0213A7 08:9397: 1F        .byte $1F   ; 
- D 0 - I - 0x0213A8 08:9398: FF        .byte $FF   ; 



_off002_9399_2C:
- D 0 - I - 0x0213A9 08:9399: 81        .byte $81   ; 
- D 0 - I - 0x0213AA 08:939A: B8        .byte $B8   ; 
- D 0 - I - 0x0213AB 08:939B: 60        .byte $60   ; 
- D 0 - I - 0x0213AC 08:939C: 20        .byte $20   ; 
- D 0 - I - 0x0213AD 08:939D: 60        .byte $60   ; 
- D 0 - I - 0x0213AE 08:939E: 23        .byte $23   ; 
- D 0 - I - 0x0213AF 08:939F: 60        .byte $60   ; 
- D 0 - I - 0x0213B0 08:93A0: 20        .byte $20   ; 
- D 0 - I - 0x0213B1 08:93A1: 60        .byte $60   ; 
- D 0 - I - 0x0213B2 08:93A2: 23        .byte $23   ; 
- D 0 - I - 0x0213B3 08:93A3: 60        .byte $60   ; 
- D 0 - I - 0x0213B4 08:93A4: 44        .byte $44   ; 
- D 0 - I - 0x0213B5 08:93A5: 60        .byte $60   ; 
- D 0 - I - 0x0213B6 08:93A6: 47        .byte $47   ; 
- D 0 - I - 0x0213B7 08:93A7: 60        .byte $60   ; 
- D 0 - I - 0x0213B8 08:93A8: 44        .byte $44   ; 
- D 0 - I - 0x0213B9 08:93A9: 60        .byte $60   ; 
- D 0 - I - 0x0213BA 08:93AA: 47        .byte $47   ; 
- D 0 - I - 0x0213BB 08:93AB: 60        .byte $60   ; 
- D 0 - I - 0x0213BC 08:93AC: 20        .byte $20   ; 
- D 0 - I - 0x0213BD 08:93AD: 60        .byte $60   ; 
- D 0 - I - 0x0213BE 08:93AE: 23        .byte $23   ; 
- D 0 - I - 0x0213BF 08:93AF: 60        .byte $60   ; 
- D 0 - I - 0x0213C0 08:93B0: 20        .byte $20   ; 
- D 0 - I - 0x0213C1 08:93B1: 60        .byte $60   ; 
- D 0 - I - 0x0213C2 08:93B2: 23        .byte $23   ; 
- D 0 - I - 0x0213C3 08:93B3: 60        .byte $60   ; 
- D 0 - I - 0x0213C4 08:93B4: 44        .byte $44   ; 
- D 0 - I - 0x0213C5 08:93B5: 60        .byte $60   ; 
- D 0 - I - 0x0213C6 08:93B6: 47        .byte $47   ; 
- D 0 - I - 0x0213C7 08:93B7: 60        .byte $60   ; 
- D 0 - I - 0x0213C8 08:93B8: 44        .byte $44   ; 
- D 0 - I - 0x0213C9 08:93B9: 60        .byte $60   ; 
- D 0 - I - 0x0213CA 08:93BA: 47        .byte $47   ; 
- D 0 - I - 0x0213CB 08:93BB: FA        .byte $FA   ; 
- D 0 - I - 0x0213CC 08:93BC: 08        .byte $08   ; 
- D 0 - I - 0x0213CD 08:93BD: 00        .byte $00   ; 
- D 0 - I - 0x0213CE 08:93BE: 29        .byte $29   ; 
- D 0 - I - 0x0213CF 08:93BF: 60        .byte $60   ; 
- D 0 - I - 0x0213D0 08:93C0: 1C        .byte $1C   ; 
- D 0 - I - 0x0213D1 08:93C1: 60        .byte $60   ; 
- D 0 - I - 0x0213D2 08:93C2: 1D        .byte $1D   ; 
- D 0 - I - 0x0213D3 08:93C3: FA        .byte $FA   ; 
- D 0 - I - 0x0213D4 08:93C4: 60        .byte $60   ; 
- D 0 - I - 0x0213D5 08:93C5: 20        .byte $20   ; 
- D 0 - I - 0x0213D6 08:93C6: 60        .byte $60   ; 
- D 0 - I - 0x0213D7 08:93C7: 23        .byte $23   ; 
- D 0 - I - 0x0213D8 08:93C8: 60        .byte $60   ; 
- D 0 - I - 0x0213D9 08:93C9: 20        .byte $20   ; 
- D 0 - I - 0x0213DA 08:93CA: 60        .byte $60   ; 
- D 0 - I - 0x0213DB 08:93CB: 23        .byte $23   ; 
- D 0 - I - 0x0213DC 08:93CC: 60        .byte $60   ; 
- D 0 - I - 0x0213DD 08:93CD: 44        .byte $44   ; 
- D 0 - I - 0x0213DE 08:93CE: 60        .byte $60   ; 
- D 0 - I - 0x0213DF 08:93CF: 47        .byte $47   ; 
- D 0 - I - 0x0213E0 08:93D0: 60        .byte $60   ; 
- D 0 - I - 0x0213E1 08:93D1: 44        .byte $44   ; 
- D 0 - I - 0x0213E2 08:93D2: 60        .byte $60   ; 
- D 0 - I - 0x0213E3 08:93D3: 47        .byte $47   ; 
- D 0 - I - 0x0213E4 08:93D4: 60        .byte $60   ; 
- D 0 - I - 0x0213E5 08:93D5: 20        .byte $20   ; 
- D 0 - I - 0x0213E6 08:93D6: 60        .byte $60   ; 
- D 0 - I - 0x0213E7 08:93D7: 23        .byte $23   ; 
- D 0 - I - 0x0213E8 08:93D8: 60        .byte $60   ; 
- D 0 - I - 0x0213E9 08:93D9: 20        .byte $20   ; 
- D 0 - I - 0x0213EA 08:93DA: 60        .byte $60   ; 
- D 0 - I - 0x0213EB 08:93DB: 23        .byte $23   ; 
- D 0 - I - 0x0213EC 08:93DC: 60        .byte $60   ; 
- D 0 - I - 0x0213ED 08:93DD: 44        .byte $44   ; 
- D 0 - I - 0x0213EE 08:93DE: 60        .byte $60   ; 
- D 0 - I - 0x0213EF 08:93DF: 47        .byte $47   ; 
- D 0 - I - 0x0213F0 08:93E0: 60        .byte $60   ; 
- D 0 - I - 0x0213F1 08:93E1: 44        .byte $44   ; 
- D 0 - I - 0x0213F2 08:93E2: 60        .byte $60   ; 
- D 0 - I - 0x0213F3 08:93E3: 47        .byte $47   ; 
- D 0 - I - 0x0213F4 08:93E4: FA        .byte $FA   ; 
- D 0 - I - 0x0213F5 08:93E5: 08        .byte $08   ; 
- D 0 - I - 0x0213F6 08:93E6: 00        .byte $00   ; 
- D 0 - I - 0x0213F7 08:93E7: 29        .byte $29   ; 
- D 0 - I - 0x0213F8 08:93E8: 60        .byte $60   ; 
- D 0 - I - 0x0213F9 08:93E9: 1C        .byte $1C   ; 
- D 0 - I - 0x0213FA 08:93EA: 60        .byte $60   ; 
- D 0 - I - 0x0213FB 08:93EB: 1D        .byte $1D   ; 
- D 0 - I - 0x0213FC 08:93EC: FA        .byte $FA   ; 
- D 0 - I - 0x0213FD 08:93ED: 60        .byte $60   ; 
- D 0 - I - 0x0213FE 08:93EE: 20        .byte $20   ; 
- D 0 - I - 0x0213FF 08:93EF: 60        .byte $60   ; 
- D 0 - I - 0x021400 08:93F0: 23        .byte $23   ; 
- D 0 - I - 0x021401 08:93F1: 60        .byte $60   ; 
- D 0 - I - 0x021402 08:93F2: 20        .byte $20   ; 
- D 0 - I - 0x021403 08:93F3: 60        .byte $60   ; 
- D 0 - I - 0x021404 08:93F4: 23        .byte $23   ; 
- D 0 - I - 0x021405 08:93F5: 60        .byte $60   ; 
- D 0 - I - 0x021406 08:93F6: 44        .byte $44   ; 
- D 0 - I - 0x021407 08:93F7: 60        .byte $60   ; 
- D 0 - I - 0x021408 08:93F8: 47        .byte $47   ; 
- D 0 - I - 0x021409 08:93F9: 60        .byte $60   ; 
- D 0 - I - 0x02140A 08:93FA: 44        .byte $44   ; 
- D 0 - I - 0x02140B 08:93FB: 60        .byte $60   ; 
- D 0 - I - 0x02140C 08:93FC: 47        .byte $47   ; 
- D 0 - I - 0x02140D 08:93FD: 60        .byte $60   ; 
- D 0 - I - 0x02140E 08:93FE: 20        .byte $20   ; 
- D 0 - I - 0x02140F 08:93FF: 60        .byte $60   ; 
- D 0 - I - 0x021410 08:9400: 23        .byte $23   ; 
- D 0 - I - 0x021411 08:9401: 60        .byte $60   ; 
- D 0 - I - 0x021412 08:9402: 20        .byte $20   ; 
- D 0 - I - 0x021413 08:9403: 60        .byte $60   ; 
- D 0 - I - 0x021414 08:9404: 23        .byte $23   ; 
- D 0 - I - 0x021415 08:9405: 60        .byte $60   ; 
- D 0 - I - 0x021416 08:9406: 44        .byte $44   ; 
- D 0 - I - 0x021417 08:9407: 60        .byte $60   ; 
- D 0 - I - 0x021418 08:9408: 47        .byte $47   ; 
- D 0 - I - 0x021419 08:9409: 60        .byte $60   ; 
- D 0 - I - 0x02141A 08:940A: 44        .byte $44   ; 
- - - - - - 0x02141B 08:940B: 60        .byte $60   ; 
- - - - - - 0x02141C 08:940C: 47        .byte $47   ; 
- - - - - - 0x02141D 08:940D: FA        .byte $FA   ; 
- - - - - - 0x02141E 08:940E: 10        .byte $10   ; 
- - - - - - 0x02141F 08:940F: 00        .byte $00   ; 
- - - - - - 0x021420 08:9410: 29        .byte $29   ; 
- - - - - - 0x021421 08:9411: 60        .byte $60   ; 
- - - - - - 0x021422 08:9412: 1C        .byte $1C   ; 
- - - - - - 0x021423 08:9413: 60        .byte $60   ; 
- - - - - - 0x021424 08:9414: 1D        .byte $1D   ; 
- - - - - - 0x021425 08:9415: FA        .byte $FA   ; 
- - - - - - 0x021426 08:9416: FF        .byte $FF   ; 



_off002_9417_15:
- D 0 - I - 0x021427 08:9417: 86        .byte $86   ; 
- D 0 - I - 0x021428 08:9418: 7C        .byte $7C   ; 
- D 0 - I - 0x021429 08:9419: 60        .byte $60   ; 
- D 0 - I - 0x02142A 08:941A: 40        .byte $40   ; 
- D 0 - I - 0x02142B 08:941B: 0C        .byte $0C   ; 
- D 0 - I - 0x02142C 08:941C: 70        .byte $70   ; 
- D 0 - I - 0x02142D 08:941D: 8D        .byte $8D   ; 
- D 0 - I - 0x02142E 08:941E: 61        .byte $61   ; 
- D 0 - I - 0x02142F 08:941F: 00        .byte $00   ; 
- D 0 - I - 0x021430 08:9420: 11        .byte $11   ; 
- D 0 - I - 0x021431 08:9421: 00        .byte $00   ; 
- D 0 - I - 0x021432 08:9422: FF        .byte $FF   ; 



_off002_9423_1E:
- D 0 - I - 0x021433 08:9423: 96        .byte $96   ; 
- D 0 - I - 0x021434 08:9424: B3        .byte $B3   ; 
- D 0 - I - 0x021435 08:9425: 62        .byte $62   ; 
- D 0 - I - 0x021436 08:9426: 80        .byte $80   ; 
- D 0 - I - 0x021437 08:9427: 0F        .byte $0F   ; 
- D 0 - I - 0x021438 08:9428: 30        .byte $30   ; 
- D 0 - I - 0x021439 08:9429: 93        .byte $93   ; 
- D 0 - I - 0x02143A 08:942A: 60        .byte $60   ; 
- D 0 - I - 0x02143B 08:942B: 1C        .byte $1C   ; 
- D 0 - I - 0x02143C 08:942C: 30        .byte $30   ; 
- D 0 - I - 0x02143D 08:942D: 1C        .byte $1C   ; 
- D 0 - I - 0x02143E 08:942E: 10        .byte $10   ; 
- D 0 - I - 0x02143F 08:942F: 1C        .byte $1C   ; 
- D 0 - I - 0x021440 08:9430: FF        .byte $FF   ; 
- D 0 - I - 0x021441 08:9431: 03        .byte $03   ; 
- D 0 - I - 0x021442 08:9432: CF        .byte $CF   ; 
- D 0 - I - 0x021443 08:9433: 6D        .byte $6D   ; 
- D 0 - I - 0x021444 08:9434: 01        .byte $01   ; 
- D 0 - I - 0x021445 08:9435: 61        .byte $61   ; 
- D 0 - I - 0x021446 08:9436: 62        .byte $62   ; 
- D 0 - I - 0x021447 08:9437: 53        .byte $53   ; 
- D 0 - I - 0x021448 08:9438: 54        .byte $54   ; 
- D 0 - I - 0x021449 08:9439: 45        .byte $45   ; 
- D 0 - I - 0x02144A 08:943A: 46        .byte $46   ; 
- D 0 - I - 0x02144B 08:943B: 37        .byte $37   ; 
- D 0 - I - 0x02144C 08:943C: 38        .byte $38   ; 
- D 0 - I - 0x02144D 08:943D: 39        .byte $39   ; 
- D 0 - I - 0x02144E 08:943E: 2A        .byte $2A   ; 
- D 0 - I - 0x02144F 08:943F: 2B        .byte $2B   ; 
- D 0 - I - 0x021450 08:9440: 2C        .byte $2C   ; 
- D 0 - I - 0x021451 08:9441: 1D        .byte $1D   ; 
- D 0 - I - 0x021452 08:9442: 1E        .byte $1E   ; 
- D 0 - I - 0x021453 08:9443: 1F        .byte $1F   ; 
- D 0 - I - 0x021454 08:9444: 31        .byte $31   ; 
- D 0 - I - 0x021455 08:9445: 22        .byte $22   ; 
- D 0 - I - 0x021456 08:9446: 23        .byte $23   ; 
- D 0 - I - 0x021457 08:9447: 24        .byte $24   ; 
- D 0 - I - 0x021458 08:9448: 26        .byte $26   ; 
- D 0 - I - 0x021459 08:9449: 26        .byte $26   ; 
- D 0 - I - 0x02145A 08:944A: 27        .byte $27   ; 
- D 0 - I - 0x02145B 08:944B: 28        .byte $28   ; 
- D 0 - I - 0x02145C 08:944C: 29        .byte $29   ; 
- D 0 - I - 0x02145D 08:944D: 2A        .byte $2A   ; 
- D 0 - I - 0x02145E 08:944E: 2B        .byte $2B   ; 
- D 0 - I - 0x02145F 08:944F: 2C        .byte $2C   ; 
- D 0 - I - 0x021460 08:9450: 2D        .byte $2D   ; 
- D 0 - I - 0x021461 08:9451: 2E        .byte $2E   ; 
- D 0 - I - 0x021462 08:9452: 1F        .byte $1F   ; 
- D 0 - I - 0x021463 08:9453: 11        .byte $11   ; 
- D 0 - I - 0x021464 08:9454: 12        .byte $12   ; 
- D 0 - I - 0x021465 08:9455: 13        .byte $13   ; 
- D 0 - I - 0x021466 08:9456: 14        .byte $14   ; 
- D 0 - I - 0x021467 08:9457: 15        .byte $15   ; 
- D 0 - I - 0x021468 08:9458: 16        .byte $16   ; 
- D 0 - I - 0x021469 08:9459: 17        .byte $17   ; 
- D 0 - I - 0x02146A 08:945A: 18        .byte $18   ; 
- D 0 - I - 0x02146B 08:945B: 19        .byte $19   ; 
- D 0 - I - 0x02146C 08:945C: 1A        .byte $1A   ; 
- D 0 - I - 0x02146D 08:945D: 1B        .byte $1B   ; 
- D 0 - I - 0x02146E 08:945E: 1C        .byte $1C   ; 
- D 0 - I - 0x02146F 08:945F: 1D        .byte $1D   ; 
- D 0 - I - 0x021470 08:9460: 1E        .byte $1E   ; 
- D 0 - I - 0x021471 08:9461: 1F        .byte $1F   ; 
- D 0 - I - 0x021472 08:9462: FF        .byte $FF   ; 



_off002_9463_16:
- D 0 - I - 0x021473 08:9463: 86        .byte $86   ; 
- D 0 - I - 0x021474 08:9464: B3        .byte $B3   ; 
- D 0 - I - 0x021475 08:9465: 82        .byte $82   ; 
- D 0 - I - 0x021476 08:9466: 00        .byte $00   ; 
- D 0 - I - 0x021477 08:9467: 01        .byte $01   ; 
- D 0 - I - 0x021478 08:9468: 79        .byte $79   ; 
- D 0 - I - 0x021479 08:9469: FA        .byte $FA   ; 
- D 0 - I - 0x02147A 08:946A: 1C        .byte $1C   ; 
- D 0 - I - 0x02147B 08:946B: 88        .byte $88   ; 
- D 0 - I - 0x02147C 08:946C: 00        .byte $00   ; 
- D 0 - I - 0x02147D 08:946D: 90        .byte $90   ; 
- D 0 - I - 0x02147E 08:946E: 10        .byte $10   ; 
- D 0 - I - 0x02147F 08:946F: FA        .byte $FA   ; 
- D 0 - I - 0x021480 08:9470: FF        .byte $FF   ; 



_off002_9471_20:
- D 0 - I - 0x021481 08:9471: 82        .byte $82   ; 
- D 0 - I - 0x021482 08:9472: B8        .byte $B8   ; 
- D 0 - I - 0x021483 08:9473: FA        .byte $FA   ; 
- D 0 - I - 0x021484 08:9474: 18        .byte $18   ; 
- D 0 - I - 0x021485 08:9475: 82        .byte $82   ; 
- D 0 - I - 0x021486 08:9476: 00        .byte $00   ; 
- D 0 - I - 0x021487 08:9477: 80        .byte $80   ; 
- D 0 - I - 0x021488 08:9478: 10        .byte $10   ; 
- D 0 - I - 0x021489 08:9479: 10        .byte $10   ; 
- D 0 - I - 0x02148A 08:947A: 10        .byte $10   ; 
- D 0 - I - 0x02148B 08:947B: FA        .byte $FA   ; 
- D 0 - I - 0x02148C 08:947C: FA        .byte $FA   ; 
- D 0 - I - 0x02148D 08:947D: 08        .byte $08   ; 
- D 0 - I - 0x02148E 08:947E: 82        .byte $82   ; 
- D 0 - I - 0x02148F 08:947F: 19        .byte $19   ; 
- D 0 - I - 0x021490 08:9480: 80        .byte $80   ; 
- D 0 - I - 0x021491 08:9481: 40        .byte $40   ; 
- D 0 - I - 0x021492 08:9482: 10        .byte $10   ; 
- D 0 - I - 0x021493 08:9483: 40        .byte $40   ; 
- D 0 - I - 0x021494 08:9484: FA        .byte $FA   ; 
- D 0 - I - 0x021495 08:9485: FF        .byte $FF   ; 



_off002_9486_12:
- D 0 - I - 0x021496 08:9486: 94        .byte $94   ; 
- D 0 - I - 0x021497 08:9487: B2        .byte $B2   ; 
- D 0 - I - 0x021498 08:9488: FA        .byte $FA   ; 
- D 0 - I - 0x021499 08:9489: 04        .byte $04   ; 
- D 0 - I - 0x02149A 08:948A: 81        .byte $81   ; 
- D 0 - I - 0x02149B 08:948B: 1B        .byte $1B   ; 
- D 0 - I - 0x02149C 08:948C: 91        .byte $91   ; 
- D 0 - I - 0x02149D 08:948D: 00        .byte $00   ; 
- D 0 - I - 0x02149E 08:948E: 90        .byte $90   ; 
- D 0 - I - 0x02149F 08:948F: 80        .byte $80   ; 
- D 0 - I - 0x0214A0 08:9490: FA        .byte $FA   ; 
- D 0 - I - 0x0214A1 08:9491: FF        .byte $FF   ; 
- D 0 - I - 0x0214A2 08:9492: 04        .byte $04   ; 
- D 0 - I - 0x0214A3 08:9493: 6B        .byte $6B   ; 
- D 0 - I - 0x0214A4 08:9494: 6F        .byte $6F   ; 
- D 0 - I - 0x0214A5 08:9495: 38        .byte $38   ; 
- D 0 - I - 0x0214A6 08:9496: 2F        .byte $2F   ; 
- D 0 - I - 0x0214A7 08:9497: 18        .byte $18   ; 
- D 0 - I - 0x0214A8 08:9498: 1F        .byte $1F   ; 
- D 0 - I - 0x0214A9 08:9499: FF        .byte $FF   ; 



_off002_949A_13:
- D 0 - I - 0x0214AA 08:949A: 95        .byte $95   ; 
- D 0 - I - 0x0214AB 08:949B: B0        .byte $B0   ; 
- D 0 - I - 0x0214AC 08:949C: C3        .byte $C3   ; 
- D 0 - I - 0x0214AD 08:949D: 63        .byte $63   ; 
- D 0 - I - 0x0214AE 08:949E: 00        .byte $00   ; 
- D 0 - I - 0x0214AF 08:949F: 08        .byte $08   ; 
- D 0 - I - 0x0214B0 08:94A0: B2        .byte $B2   ; 
- D 0 - I - 0x0214B1 08:94A1: FA        .byte $FA   ; 
- D 0 - I - 0x0214B2 08:94A2: 04        .byte $04   ; 
- D 0 - I - 0x0214B3 08:94A3: 88        .byte $88   ; 
- D 0 - I - 0x0214B4 08:94A4: 1C        .byte $1C   ; 
- D 0 - I - 0x0214B5 08:94A5: 80        .byte $80   ; 
- D 0 - I - 0x0214B6 08:94A6: 1C        .byte $1C   ; 
- D 0 - I - 0x0214B7 08:94A7: FA        .byte $FA   ; 
- D 0 - I - 0x0214B8 08:94A8: FF        .byte $FF   ; 
- D 0 - I - 0x0214B9 08:94A9: 05        .byte $05   ; 
- D 0 - I - 0x0214BA 08:94AA: AD        .byte $AD   ; 
- D 0 - I - 0x0214BB 08:94AB: 69        .byte $69   ; 
- D 0 - I - 0x0214BC 08:94AC: 29        .byte $29   ; 
- D 0 - I - 0x0214BD 08:94AD: 19        .byte $19   ; 
- D 0 - I - 0x0214BE 08:94AE: FF        .byte $FF   ; 



_off002_94AF_14:
- D 0 - I - 0x0214BF 08:94AF: 96        .byte $96   ; 
- D 0 - I - 0x0214C0 08:94B0: B3        .byte $B3   ; 
- D 0 - I - 0x0214C1 08:94B1: D2        .byte $D2   ; 
- D 0 - I - 0x0214C2 08:94B2: 00        .byte $00   ; 
- D 0 - I - 0x0214C3 08:94B3: 04        .byte $04   ; 
- D 0 - I - 0x0214C4 08:94B4: 72        .byte $72   ; 
- D 0 - I - 0x0214C5 08:94B5: A0        .byte $A0   ; 
- D 0 - I - 0x0214C6 08:94B6: 20        .byte $20   ; 
- D 0 - I - 0x0214C7 08:94B7: 0C        .byte $0C   ; 
- D 0 - I - 0x0214C8 08:94B8: B4        .byte $B4   ; 
- D 0 - I - 0x0214C9 08:94B9: B2        .byte $B2   ; 
- D 0 - I - 0x0214CA 08:94BA: 00        .byte $00   ; 
- D 0 - I - 0x0214CB 08:94BB: 82        .byte $82   ; 
- D 0 - I - 0x0214CC 08:94BC: 00        .byte $00   ; 
- D 0 - I - 0x0214CD 08:94BD: 42        .byte $42   ; 
- D 0 - I - 0x0214CE 08:94BE: 00        .byte $00   ; 
- D 0 - I - 0x0214CF 08:94BF: 22        .byte $22   ; 
- D 0 - I - 0x0214D0 08:94C0: 00        .byte $00   ; 
- D 0 - I - 0x0214D1 08:94C1: 12        .byte $12   ; 
- D 0 - I - 0x0214D2 08:94C2: 00        .byte $00   ; 
- D 0 - I - 0x0214D3 08:94C3: FF        .byte $FF   ; 
- D 0 - I - 0x0214D4 08:94C4: 06        .byte $06   ; 
- D 0 - I - 0x0214D5 08:94C5: 8F        .byte $8F   ; 
- D 0 - I - 0x0214D6 08:94C6: 02        .byte $02   ; 
- D 0 - I - 0x0214D7 08:94C7: 88        .byte $88   ; 
- D 0 - I - 0x0214D8 08:94C8: 84        .byte $84   ; 
- D 0 - I - 0x0214D9 08:94C9: 03        .byte $03   ; 
- D 0 - I - 0x0214DA 08:94CA: 8F        .byte $8F   ; 
- D 0 - I - 0x0214DB 08:94CB: 7E        .byte $7E   ; 
- D 0 - I - 0x0214DC 08:94CC: 6F        .byte $6F   ; 
- D 0 - I - 0x0214DD 08:94CD: 5E        .byte $5E   ; 
- D 0 - I - 0x0214DE 08:94CE: 4F        .byte $4F   ; 
- D 0 - I - 0x0214DF 08:94CF: 3E        .byte $3E   ; 
- D 0 - I - 0x0214E0 08:94D0: 2F        .byte $2F   ; 
- D 0 - I - 0x0214E1 08:94D1: 1E        .byte $1E   ; 
- D 0 - I - 0x0214E2 08:94D2: FF        .byte $FF   ; 



_off002_94D3_1A:
- D 0 - I - 0x0214E3 08:94D3: 11        .byte $11   ; 
- D 0 - I - 0x0214E4 08:94D4: 16        .byte $16   ; 
- D 0 - I - 0x0214E5 08:94D5: 26        .byte $26   ; 
- D 0 - I - 0x0214E6 08:94D6: 36        .byte $36   ; 
- D 0 - I - 0x0214E7 08:94D7: 46        .byte $46   ; 
- D 0 - I - 0x0214E8 08:94D8: 56        .byte $56   ; 
- D 0 - I - 0x0214E9 08:94D9: 66        .byte $66   ; 
- D 0 - I - 0x0214EA 08:94DA: 76        .byte $76   ; 
- D 0 - I - 0x0214EB 08:94DB: 86        .byte $86   ; 
- D 0 - I - 0x0214EC 08:94DC: 86        .byte $86   ; 
- D 0 - I - 0x0214ED 08:94DD: 76        .byte $76   ; 
- D 0 - I - 0x0214EE 08:94DE: 66        .byte $66   ; 
- D 0 - I - 0x0214EF 08:94DF: 56        .byte $56   ; 
- D 0 - I - 0x0214F0 08:94E0: 46        .byte $46   ; 
- D 0 - I - 0x0214F1 08:94E1: 36        .byte $36   ; 
- D 0 - I - 0x0214F2 08:94E2: 26        .byte $26   ; 
- D 0 - I - 0x0214F3 08:94E3: 16        .byte $16   ; 
- D 0 - I - 0x0214F4 08:94E4: FF        .byte $FF   ; 



_off002_94E5_24:
- D 0 - I - 0x0214F5 08:94E5: D1        .byte $D1   ; 
- D 0 - I - 0x0214F6 08:94E6: 38        .byte $38   ; 
- D 0 - I - 0x0214F7 08:94E7: FA        .byte $FA   ; 
- D 0 - I - 0x0214F8 08:94E8: 10        .byte $10   ; 
- D 0 - I - 0x0214F9 08:94E9: 00        .byte $00   ; 
- D 0 - I - 0x0214FA 08:94EA: 21        .byte $21   ; 
- D 0 - I - 0x0214FB 08:94EB: 10        .byte $10   ; 
- D 0 - I - 0x0214FC 08:94EC: 3F        .byte $3F   ; 
- D 0 - I - 0x0214FD 08:94ED: FA        .byte $FA   ; 
- D 0 - I - 0x0214FE 08:94EE: 02        .byte $02   ; 
- D 0 - I - 0x0214FF 08:94EF: B8        .byte $B8   ; 
- D 0 - I - 0x021500 08:94F0: 80        .byte $80   ; 
- D 0 - I - 0x021501 08:94F1: 2F        .byte $2F   ; 
- D 0 - I - 0x021502 08:94F2: 00        .byte $00   ; 
- D 0 - I - 0x021503 08:94F3: E8        .byte $E8   ; 
- D 0 - I - 0x021504 08:94F4: 08        .byte $08   ; 
- D 0 - I - 0x021505 08:94F5: 80        .byte $80   ; 
- D 0 - I - 0x021506 08:94F6: 23        .byte $23   ; 
- D 0 - I - 0x021507 08:94F7: E8        .byte $E8   ; 
- D 0 - I - 0x021508 08:94F8: 04        .byte $04   ; 
- D 0 - I - 0x021509 08:94F9: 40        .byte $40   ; 
- D 0 - I - 0x02150A 08:94FA: 23        .byte $23   ; 
- D 0 - I - 0x02150B 08:94FB: 30        .byte $30   ; 
- D 0 - I - 0x02150C 08:94FC: 23        .byte $23   ; 
- D 0 - I - 0x02150D 08:94FD: 20        .byte $20   ; 
- D 0 - I - 0x02150E 08:94FE: 23        .byte $23   ; 
- D 0 - I - 0x02150F 08:94FF: 10        .byte $10   ; 
- D 0 - I - 0x021510 08:9500: 23        .byte $23   ; 
- D 0 - I - 0x021511 08:9501: FF        .byte $FF   ; 
- D 0 - I - 0x021512 08:9502: 04        .byte $04   ; 
- D 0 - I - 0x021513 08:9503: B8        .byte $B8   ; 
- D 0 - I - 0x021514 08:9504: 00        .byte $00   ; 
- D 0 - I - 0x021515 08:9505: 01        .byte $01   ; 
- D 0 - I - 0x021516 08:9506: 38        .byte $38   ; 
- D 0 - I - 0x021517 08:9507: FA        .byte $FA   ; 
- D 0 - I - 0x021518 08:9508: 10        .byte $10   ; 
- D 0 - I - 0x021519 08:9509: 00        .byte $00   ; 
- D 0 - I - 0x02151A 08:950A: 21        .byte $21   ; 
- D 0 - I - 0x02151B 08:950B: 10        .byte $10   ; 
- D 0 - I - 0x02151C 08:950C: 3F        .byte $3F   ; 
- D 0 - I - 0x02151D 08:950D: FA        .byte $FA   ; 
- D 0 - I - 0x02151E 08:950E: 02        .byte $02   ; 
- D 0 - I - 0x02151F 08:950F: B8        .byte $B8   ; 
- D 0 - I - 0x021520 08:9510: 80        .byte $80   ; 
- D 0 - I - 0x021521 08:9511: 2F        .byte $2F   ; 
- D 0 - I - 0x021522 08:9512: 00        .byte $00   ; 
- D 0 - I - 0x021523 08:9513: E8        .byte $E8   ; 
- D 0 - I - 0x021524 08:9514: 08        .byte $08   ; 
- D 0 - I - 0x021525 08:9515: 80        .byte $80   ; 
- D 0 - I - 0x021526 08:9516: 23        .byte $23   ; 
- D 0 - I - 0x021527 08:9517: E8        .byte $E8   ; 
- D 0 - I - 0x021528 08:9518: 04        .byte $04   ; 
- D 0 - I - 0x021529 08:9519: 40        .byte $40   ; 
- D 0 - I - 0x02152A 08:951A: 23        .byte $23   ; 
- D 0 - I - 0x02152B 08:951B: 30        .byte $30   ; 
- D 0 - I - 0x02152C 08:951C: 23        .byte $23   ; 
- D 0 - I - 0x02152D 08:951D: 20        .byte $20   ; 
- D 0 - I - 0x02152E 08:951E: 23        .byte $23   ; 
- D 0 - I - 0x02152F 08:951F: 10        .byte $10   ; 
- D 0 - I - 0x021530 08:9520: 23        .byte $23   ; 
- D 0 - I - 0x021531 08:9521: FF        .byte $FF   ; 
- D 0 - I - 0x021532 08:9522: 01        .byte $01   ; 
- D 0 - I - 0x021533 08:9523: 11        .byte $11   ; 
- D 0 - I - 0x021534 08:9524: 21        .byte $21   ; 
- D 0 - I - 0x021535 08:9525: 32        .byte $32   ; 
- D 0 - I - 0x021536 08:9526: 42        .byte $42   ; 
- D 0 - I - 0x021537 08:9527: 53        .byte $53   ; 
- D 0 - I - 0x021538 08:9528: 63        .byte $63   ; 
- D 0 - I - 0x021539 08:9529: 74        .byte $74   ; 
- D 0 - I - 0x02153A 08:952A: 84        .byte $84   ; 
- D 0 - I - 0x02153B 08:952B: 95        .byte $95   ; 
- D 0 - I - 0x02153C 08:952C: A5        .byte $A5   ; 
- D 0 - I - 0x02153D 08:952D: B6        .byte $B6   ; 
- D 0 - I - 0x02153E 08:952E: C6        .byte $C6   ; 
- D 0 - I - 0x02153F 08:952F: D7        .byte $D7   ; 
- D 0 - I - 0x021540 08:9530: E7        .byte $E7   ; 
- D 0 - I - 0x021541 08:9531: CF        .byte $CF   ; 
- D 0 - I - 0x021542 08:9532: CF        .byte $CF   ; 
- D 0 - I - 0x021543 08:9533: CF        .byte $CF   ; 
- D 0 - I - 0x021544 08:9534: BA        .byte $BA   ; 
- D 0 - I - 0x021545 08:9535: AB        .byte $AB   ; 
- D 0 - I - 0x021546 08:9536: 9C        .byte $9C   ; 
- D 0 - I - 0x021547 08:9537: 8A        .byte $8A   ; 
- D 0 - I - 0x021548 08:9538: 7B        .byte $7B   ; 
- D 0 - I - 0x021549 08:9539: 6C        .byte $6C   ; 
- D 0 - I - 0x02154A 08:953A: 5A        .byte $5A   ; 
- D 0 - I - 0x02154B 08:953B: 4B        .byte $4B   ; 
- D 0 - I - 0x02154C 08:953C: 3C        .byte $3C   ; 
- D 0 - I - 0x02154D 08:953D: 2A        .byte $2A   ; 
- D 0 - I - 0x02154E 08:953E: 1B        .byte $1B   ; 
- D 0 - I - 0x02154F 08:953F: 1C        .byte $1C   ; 
- D 0 - I - 0x021550 08:9540: FF        .byte $FF   ; 



tbl_9541:
- D 0 - - - 0x021551 08:9541: 53 95     .word off_9553_00
- D 0 - - - 0x021553 08:9543: 5D 95     .word off_955D_01
- D 0 - - - 0x021555 08:9545: 68 95     .word off_9568_02
- D 0 - - - 0x021557 08:9547: 73 95     .word off_9573_03
- D 0 - - - 0x021559 08:9549: 7E 95     .word off_957E_04
- D 0 - - - 0x02155B 08:954B: 87 95     .word off_9587_05
- - - - - - 0x02155D 08:954D: 8D 95     .word off_958D_06
- D 0 - - - 0x02155F 08:954F: 8D 95     .word off_958D_07
- D 0 - - - 0x021561 08:9551: 94 95     .word off_9594_08

off_9553_00:
- D 0 - I - 0x021563 08:9553: FB        .byte $FB   ; 
- D 0 - I - 0x021564 08:9554: 10        .byte $10   ; 
- D 0 - I - 0x021565 08:9555: 11        .byte $11   ; 
- D 0 - I - 0x021566 08:9556: 10        .byte $10   ; 
- D 0 - I - 0x021567 08:9557: 11        .byte $11   ; 
- D 0 - I - 0x021568 08:9558: 1F        .byte $1F   ; 
- D 0 - I - 0x021569 08:9559: 1E        .byte $1E   ; 
- D 0 - I - 0x02156A 08:955A: 1F        .byte $1F   ; 
- D 0 - I - 0x02156B 08:955B: FE        .byte $FE   ; 
- D 0 - I - 0x02156C 08:955C: FF        .byte $FF   ; 

off_955D_01:
- D 0 - I - 0x02156D 08:955D: FB        .byte $FB   ; 
- D 0 - I - 0x02156E 08:955E: 11        .byte $11   ; 
- D 0 - I - 0x02156F 08:955F: 21        .byte $21   ; 
- D 0 - I - 0x021570 08:9560: 11        .byte $11   ; 
- D 0 - I - 0x021571 08:9561: 10        .byte $10   ; 
- D 0 - I - 0x021572 08:9562: 1F        .byte $1F   ; 
- D 0 - I - 0x021573 08:9563: 1E        .byte $1E   ; 
- D 0 - I - 0x021574 08:9564: 1F        .byte $1F   ; 
- D 0 - I - 0x021575 08:9565: 10        .byte $10   ; 
- D 0 - I - 0x021576 08:9566: FE        .byte $FE   ; 
- D 0 - I - 0x021577 08:9567: FF        .byte $FF   ; 

off_9568_02:
- D 0 - I - 0x021578 08:9568: FB        .byte $FB   ; 
- D 0 - I - 0x021579 08:9569: 20        .byte $20   ; 
- D 0 - I - 0x02157A 08:956A: 21        .byte $21   ; 
- D 0 - I - 0x02157B 08:956B: 22        .byte $22   ; 
- D 0 - I - 0x02157C 08:956C: 21        .byte $21   ; 
- - - - - - 0x02157D 08:956D: 20        .byte $20   ; 
- - - - - - 0x02157E 08:956E: 2F        .byte $2F   ; 
- - - - - - 0x02157F 08:956F: 2E        .byte $2E   ; 
- - - - - - 0x021580 08:9570: 2F        .byte $2F   ; 
- - - - - - 0x021581 08:9571: FE        .byte $FE   ; 
- - - - - - 0x021582 08:9572: FF        .byte $FF   ; 

off_9573_03:
- D 0 - I - 0x021583 08:9573: FB        .byte $FB   ; 
- D 0 - I - 0x021584 08:9574: 10        .byte $10   ; 
- D 0 - I - 0x021585 08:9575: 11        .byte $11   ; 
- D 0 - I - 0x021586 08:9576: 12        .byte $12   ; 
- D 0 - I - 0x021587 08:9577: 11        .byte $11   ; 
- D 0 - I - 0x021588 08:9578: 10        .byte $10   ; 
- D 0 - I - 0x021589 08:9579: 1F        .byte $1F   ; 
- D 0 - I - 0x02158A 08:957A: 1E        .byte $1E   ; 
- D 0 - I - 0x02158B 08:957B: 1F        .byte $1F   ; 
- D 0 - I - 0x02158C 08:957C: FE        .byte $FE   ; 
- D 0 - I - 0x02158D 08:957D: FF        .byte $FF   ; 

off_957E_04:
- D 0 - I - 0x02158E 08:957E: 19        .byte $19   ; 
- D 0 - I - 0x02158F 08:957F: 1A        .byte $1A   ; 
- D 0 - I - 0x021590 08:9580: 1B        .byte $1B   ; 
- D 0 - I - 0x021591 08:9581: 1C        .byte $1C   ; 
- D 0 - I - 0x021592 08:9582: 1D        .byte $1D   ; 
- D 0 - I - 0x021593 08:9583: 1E        .byte $1E   ; 
- D 0 - I - 0x021594 08:9584: 1F        .byte $1F   ; 
- D 0 - I - 0x021595 08:9585: 10        .byte $10   ; 
- D 0 - I - 0x021596 08:9586: FF        .byte $FF   ; 

off_9587_05:
- D 0 - I - 0x021597 08:9587: 1C        .byte $1C   ; 
- D 0 - I - 0x021598 08:9588: 1D        .byte $1D   ; 
- D 0 - I - 0x021599 08:9589: 1E        .byte $1E   ; 
- D 0 - I - 0x02159A 08:958A: 1F        .byte $1F   ; 
- D 0 - I - 0x02159B 08:958B: 10        .byte $10   ; 
- D 0 - I - 0x02159C 08:958C: FF        .byte $FF   ; 

off_958D_06:
off_958D_07:
- D 0 - I - 0x02159D 08:958D: FB        .byte $FB   ; 
- D 0 - I - 0x02159E 08:958E: 20        .byte $20   ; 
- D 0 - I - 0x02159F 08:958F: E1        .byte $E1   ; 
- - - - - - 0x0215A0 08:9590: 20        .byte $20   ; 
- - - - - - 0x0215A1 08:9591: EF        .byte $EF   ; 
- - - - - - 0x0215A2 08:9592: FE        .byte $FE   ; 
- - - - - - 0x0215A3 08:9593: FF        .byte $FF   ; 

off_9594_08:
- D 0 - I - 0x0215A4 08:9594: FB        .byte $FB   ; 
- D 0 - I - 0x0215A5 08:9595: 31        .byte $31   ; 
- D 0 - I - 0x0215A6 08:9596: 30        .byte $30   ; 
- D 0 - I - 0x0215A7 08:9597: 3F        .byte $3F   ; 
- D 0 - I - 0x0215A8 08:9598: 30        .byte $30   ; 
- D 0 - I - 0x0215A9 08:9599: FE        .byte $FE   ; 
- D 0 - I - 0x0215AA 08:959A: FF        .byte $FF   ; 



tbl_959B:
- D 0 - - - 0x0215AB 08:959B: 0C        .byte $0C, $7F, $00, $1C, $00   ; 
- D 0 - - - 0x0215B0 08:95A0: 0D        .byte $0D, $7F, $00, $1C, $00   ; 
- D 0 - - - 0x0215B5 08:95A5: 0E        .byte $0E, $7F, $00, $1C, $00   ; 
- D 0 - - - 0x0215BA 08:95AA: 0F        .byte $0F, $7F, $00, $1C, $00   ; 
- D 0 - - - 0x0215BF 08:95AF: 0F        .byte $0F, $7F, $07, $10, $00   ; 
- D 0 - - - 0x0215C4 08:95B4: 0F        .byte $0F, $00, $0B, $08, $00   ; 
- D 0 - - - 0x0215C9 08:95B9: 0A        .byte $0A, $00, $0D, $2C, $18   ; 
- D 0 - - - 0x0215CE 08:95BE: 08        .byte $08, $00, $0D, $2C, $21   ; 
- D 0 - - - 0x0215D3 08:95C3: 05        .byte $05, $00, $0D, $2C, $2A   ; 
- D 0 - - - 0x0215D8 08:95C8: 01        .byte $01, $00, $0D, $2C, $46   ; 
- D 0 - - - 0x0215DD 08:95CD: 07        .byte $07, $00, $18, $0C, $0D   ; 
- D 0 - - - 0x0215E2 08:95D2: 05        .byte $05, $00, $1B, $38, $3E   ; 
- D 0 - - - 0x0215E7 08:95D7: 0C        .byte $0C, $00, $29, $30, $19   ; 
- D 0 - - - 0x0215EC 08:95DC: 0D        .byte $0D, $00, $35, $20, $0E   ; 
- D 0 - - - 0x0215F1 08:95E1: 0B        .byte $0B, $00, $29, $30, $1E   ; 
- D 0 - - - 0x0215F6 08:95E6: 0C        .byte $0C, $00, $35, $20, $13   ; 
- D 0 - - - 0x0215FB 08:95EB: 09        .byte $09, $00, $29, $30, $20   ; 
- D 0 - - - 0x021600 08:95F0: 09        .byte $09, $00, $35, $20, $16   ; 
- D 0 - - - 0x021605 08:95F5: 06        .byte $06, $00, $29, $30, $2C   ; 
- D 0 - - - 0x02160A 08:95FA: 04        .byte $04, $00, $35, $20, $23   ; 



_off001_95FF_01:
- D 0 - I - 0x02160F 08:95FF: D6        .byte $D6   ; 
- D 0 - I - 0x021610 08:9600: 36        .byte $36   ; 
- D 0 - I - 0x021611 08:9601: 83        .byte $83   ; 
- D 0 - I - 0x021612 08:9602: 87        .byte $87   ; 
- D 0 - I - 0x021613 08:9603: FD        .byte $FD   ; 
- D 0 - I - 0x021614 08:9604: 24 98     .word off_FD_9824
- D 0 - I - 0x021616 08:9606: FD        .byte $FD   ; 
- D 0 - I - 0x021617 08:9607: 35 98     .word off_FD_9835
- D 0 - I - 0x021619 08:9609: D6        .byte $D6   ; 
- D 0 - I - 0x02161A 08:960A: 77        .byte $77   ; 
- D 0 - I - 0x02161B 08:960B: 83        .byte $83   ; 
- D 0 - I - 0x02161C 08:960C: 83        .byte $83   ; 
- D 0 - I - 0x02161D 08:960D: 51        .byte $51   ; 
- D 0 - I - 0x02161E 08:960E: 81        .byte $81   ; 
- D 0 - I - 0x02161F 08:960F: A1        .byte $A1   ; 
- D 0 - I - 0x021620 08:9610: E3        .byte $E3   ; 
- D 0 - I - 0x021621 08:9611: 01        .byte $01   ; 
off_FF_9612:
- D 0 - I - 0x021622 08:9612: FD        .byte $FD   ; 
- D 0 - I - 0x021623 08:9613: 43 98     .word off_FD_9843
- D 0 - I - 0x021625 08:9615: E2        .byte $E2   ; 
- D 0 - I - 0x021626 08:9616: 81        .byte $81   ; 
- D 0 - I - 0x021627 08:9617: F4        .byte $F4   ; 
- D 0 - I - 0x021628 08:9618: 81        .byte $81   ; 
- D 0 - I - 0x021629 08:9619: F0        .byte $F0   ; 
- D 0 - I - 0x02162A 08:961A: EB        .byte $EB   ; 
- D 0 - I - 0x02162B 08:961B: 51        .byte $51   ; 
- D 0 - I - 0x02162C 08:961C: 34        .byte $34   ; 
- D 0 - I - 0x02162D 08:961D: E7        .byte $E7   ; 
- D 0 - I - 0x02162E 08:961E: 55        .byte $55   ; 
- D 0 - I - 0x02162F 08:961F: 36        .byte $36   ; 
- D 0 - I - 0x021630 08:9620: EB        .byte $EB   ; 
- D 0 - I - 0x021631 08:9621: 00        .byte $00   ; 
- D 0 - I - 0x021632 08:9622: E3        .byte $E3   ; 
- D 0 - I - 0x021633 08:9623: 01        .byte $01   ; 
- D 0 - I - 0x021634 08:9624: 11        .byte $11   ; 
- D 0 - I - 0x021635 08:9625: 01        .byte $01   ; 
- D 0 - I - 0x021636 08:9626: E2        .byte $E2   ; 
- D 0 - I - 0x021637 08:9627: A1        .byte $A1   ; 
- D 0 - I - 0x021638 08:9628: F3        .byte $F3   ; 
- D 0 - I - 0x021639 08:9629: E3        .byte $E3   ; 
- D 0 - I - 0x02163A 08:962A: 01        .byte $01   ; 
- D 0 - I - 0x02163B 08:962B: E2        .byte $E2   ; 
- D 0 - I - 0x02163C 08:962C: A1        .byte $A1   ; 
- D 0 - I - 0x02163D 08:962D: FD        .byte $FD   ; 
- D 0 - I - 0x02163E 08:962E: 63 98     .word off_FD_9863
- D 0 - I - 0x021640 08:9630: FD        .byte $FD   ; 
- D 0 - I - 0x021641 08:9631: 8C 98     .word off_FD_988C
- D 0 - I - 0x021643 08:9633: FD        .byte $FD   ; 
- D 0 - I - 0x021644 08:9634: 63 98     .word off_FD_9863
- D 0 - I - 0x021646 08:9636: FD        .byte $FD   ; 
- D 0 - I - 0x021647 08:9637: A4 98     .word off_FD_98A4
- D 0 - I - 0x021649 08:9639: FD        .byte $FD   ; 
- D 0 - I - 0x02164A 08:963A: 43 98     .word off_FD_9843
- D 0 - I - 0x02164C 08:963C: 11        .byte $11   ; 
- D 0 - I - 0x02164D 08:963D: F3        .byte $F3   ; 
- D 0 - I - 0x02164E 08:963E: 11        .byte $11   ; 
- D 0 - I - 0x02164F 08:963F: E7        .byte $E7   ; 
- D 0 - I - 0x021650 08:9640: 55        .byte $55   ; 
- D 0 - I - 0x021651 08:9641: EB        .byte $EB   ; 
- D 0 - I - 0x021652 08:9642: 51        .byte $51   ; 
- D 0 - I - 0x021653 08:9643: 34        .byte $34   ; 
- D 0 - I - 0x021654 08:9644: F0        .byte $F0   ; 
- D 0 - I - 0x021655 08:9645: 36        .byte $36   ; 
- D 0 - I - 0x021656 08:9646: E7        .byte $E7   ; 
- D 0 - I - 0x021657 08:9647: 83        .byte $83   ; 
- D 0 - I - 0x021658 08:9648: EB        .byte $EB   ; 
- D 0 - I - 0x021659 08:9649: 00        .byte $00   ; 
- D 0 - I - 0x02165A 08:964A: 82        .byte $82   ; 
- D 0 - I - 0x02165B 08:964B: 62        .byte $62   ; 
- D 0 - I - 0x02165C 08:964C: F3        .byte $F3   ; 
- D 0 - I - 0x02165D 08:964D: 81        .byte $81   ; 
- D 0 - I - 0x02165E 08:964E: 61        .byte $61   ; 
- D 0 - I - 0x02165F 08:964F: FD        .byte $FD   ; 
- D 0 - I - 0x021660 08:9650: 63 98     .word off_FD_9863
- D 0 - I - 0x021662 08:9652: FD        .byte $FD   ; 
- D 0 - I - 0x021663 08:9653: 8C 98     .word off_FD_988C
- D 0 - I - 0x021665 08:9655: FD        .byte $FD   ; 
- D 0 - I - 0x021666 08:9656: 63 98     .word off_FD_9863
- D 0 - I - 0x021668 08:9658: FD        .byte $FD   ; 
- D 0 - I - 0x021669 08:9659: B7 98     .word off_FD_98B7
- D 0 - I - 0x02166B 08:965B: FD        .byte $FD   ; 
- D 0 - I - 0x02166C 08:965C: CC 98     .word off_FD_98CC
- D 0 - I - 0x02166E 08:965E: FD        .byte $FD   ; 
- D 0 - I - 0x02166F 08:965F: FC 98     .word off_FD_98FC
- D 0 - I - 0x021671 08:9661: FD        .byte $FD   ; 
- D 0 - I - 0x021672 08:9662: 30 99     .word off_FD_9930
- D 0 - I - 0x021674 08:9664: E3        .byte $E3   ; 
- D 0 - I - 0x021675 08:9665: 13        .byte $13   ; 
- D 0 - I - 0x021676 08:9666: 03        .byte $03   ; 
- D 0 - I - 0x021677 08:9667: E7        .byte $E7   ; 
- D 0 - I - 0x021678 08:9668: 43        .byte $43   ; 
- D 0 - I - 0x021679 08:9669: E2        .byte $E2   ; 
- D 0 - I - 0x02167A 08:966A: 86        .byte $86   ; 
- D 0 - I - 0x02167B 08:966B: FD        .byte $FD   ; 
- D 0 - I - 0x02167C 08:966C: 49 99     .word off_FD_9949
- D 0 - I - 0x02167E 08:966E: FD        .byte $FD   ; 
- D 0 - I - 0x02167F 08:966F: 30 99     .word off_FD_9930
- D 0 - I - 0x021681 08:9671: E3        .byte $E3   ; 
- D 0 - I - 0x021682 08:9672: 13        .byte $13   ; 
- D 0 - I - 0x021683 08:9673: 33        .byte $33   ; 
- D 0 - I - 0x021684 08:9674: 02        .byte $02   ; 
- D 0 - I - 0x021685 08:9675: F3        .byte $F3   ; 
- D 0 - I - 0x021686 08:9676: 01        .byte $01   ; 
- D 0 - I - 0x021687 08:9677: F0        .byte $F0   ; 
- D 0 - I - 0x021688 08:9678: FD        .byte $FD   ; 
- D 0 - I - 0x021689 08:9679: 65 99     .word off_FD_9965
- D 0 - I - 0x02168B 08:967B: FD        .byte $FD   ; 
- D 0 - I - 0x02168C 08:967C: 30 99     .word off_FD_9930
- D 0 - I - 0x02168E 08:967E: E3        .byte $E3   ; 
- D 0 - I - 0x02168F 08:967F: 13        .byte $13   ; 
- D 0 - I - 0x021690 08:9680: 13        .byte $13   ; 
- D 0 - I - 0x021691 08:9681: E7        .byte $E7   ; 
- D 0 - I - 0x021692 08:9682: 43        .byte $43   ; 
- D 0 - I - 0x021693 08:9683: 06        .byte $06   ; 
- D 0 - I - 0x021694 08:9684: E2        .byte $E2   ; 
- D 0 - I - 0x021695 08:9685: 31        .byte $31   ; 
- D 0 - I - 0x021696 08:9686: 81        .byte $81   ; 
- D 0 - I - 0x021697 08:9687: A1        .byte $A1   ; 
- D 0 - I - 0x021698 08:9688: E3        .byte $E3   ; 
- D 0 - I - 0x021699 08:9689: 31        .byte $31   ; 
- D 0 - I - 0x02169A 08:968A: FD        .byte $FD   ; 
- D 0 - I - 0x02169B 08:968B: 79 99     .word off_FD_9979
- D 0 - I - 0x02169D 08:968D: EE        .byte $EE   ; 
- D 0 - I - 0x02169E 08:968E: 82        .byte $82   ; 
- D 0 - I - 0x02169F 08:968F: FD        .byte $FD   ; 
- D 0 - I - 0x0216A0 08:9690: 79 99     .word off_FD_9979
- D 0 - I - 0x0216A2 08:9692: EE        .byte $EE   ; 
- D 0 - I - 0x0216A3 08:9693: 84        .byte $84   ; 
- D 0 - I - 0x0216A4 08:9694: FD        .byte $FD   ; 
- D 0 - I - 0x0216A5 08:9695: 79 99     .word off_FD_9979
- D 0 - I - 0x0216A7 08:9697: EE        .byte $EE   ; 
- D 0 - I - 0x0216A8 08:9698: 86        .byte $86   ; 
- D 0 - I - 0x0216A9 08:9699: FD        .byte $FD   ; 
- D 0 - I - 0x0216AA 08:969A: 79 99     .word off_FD_9979
- D 0 - I - 0x0216AC 08:969C: EE        .byte $EE   ; 
- D 0 - I - 0x0216AD 08:969D: 00        .byte $00   ; 
- D 0 - I - 0x0216AE 08:969E: E2        .byte $E2   ; 
- D 0 - I - 0x0216AF 08:969F: 11        .byte $11   ; 
- D 0 - I - 0x0216B0 08:96A0: 31        .byte $31   ; 
- D 0 - I - 0x0216B1 08:96A1: 61        .byte $61   ; 
- D 0 - I - 0x0216B2 08:96A2: EB        .byte $EB   ; 
- D 0 - I - 0x0216B3 08:96A3: 58        .byte $58   ; 
- D 0 - I - 0x0216B4 08:96A4: 53        .byte $53   ; 
- D 0 - I - 0x0216B5 08:96A5: 80        .byte $80   ; 
- D 0 - I - 0x0216B6 08:96A6: F3        .byte $F3   ; 
- D 0 - I - 0x0216B7 08:96A7: 81        .byte $81   ; 
- D 0 - I - 0x0216B8 08:96A8: F0        .byte $F0   ; 
- D 0 - I - 0x0216B9 08:96A9: AC        .byte $AC   ; 
- D 0 - I - 0x0216BA 08:96AA: EB        .byte $EB   ; 
- D 0 - I - 0x0216BB 08:96AB: 00        .byte $00   ; 
- D 0 - I - 0x0216BC 08:96AC: E3        .byte $E3   ; 
- D 0 - I - 0x0216BD 08:96AD: 01        .byte $01   ; 
- D 0 - I - 0x0216BE 08:96AE: F2        .byte $F2   ; 
- D 0 - I - 0x0216BF 08:96AF: 01        .byte $01   ; 
- D 0 - I - 0x0216C0 08:96B0: F3        .byte $F3   ; 
- D 0 - I - 0x0216C1 08:96B1: 01        .byte $01   ; 
- D 0 - I - 0x0216C2 08:96B2: F4        .byte $F4   ; 
- D 0 - I - 0x0216C3 08:96B3: 01        .byte $01   ; 
- D 0 - I - 0x0216C4 08:96B4: EC        .byte $EC   ; 
- D 0 - I - 0x0216C5 08:96B5: 00        .byte $00   ; 
- D 0 - I - 0x0216C6 08:96B6: FE        .byte $FE   ; 
- D 0 - I - 0x0216C7 08:96B7: FF        .byte $FF   ; 
- D 0 - I - 0x0216C8 08:96B8: 12 96     .word off_FF_9612



_off001_96BA_00:
- D 0 - I - 0x0216CA 08:96BA: FD        .byte $FD   ; 
- D 0 - I - 0x0216CB 08:96BB: 97 99     .word off_FD_9997
off_FF_96BD:
- D 0 - I - 0x0216CD 08:96BD: FD        .byte $FD   ; 
- D 0 - I - 0x0216CE 08:96BE: B6 99     .word off_FD_99B6
- D 0 - I - 0x0216D0 08:96C0: FD        .byte $FD   ; 
- D 0 - I - 0x0216D1 08:96C1: D0 99     .word off_FD_99D0
- D 0 - I - 0x0216D3 08:96C3: FD        .byte $FD   ; 
- D 0 - I - 0x0216D4 08:96C4: ED 99     .word off_FD_99ED
- D 0 - I - 0x0216D6 08:96C6: FD        .byte $FD   ; 
- D 0 - I - 0x0216D7 08:96C7: D0 99     .word off_FD_99D0
- D 0 - I - 0x0216D9 08:96C9: FD        .byte $FD   ; 
- D 0 - I - 0x0216DA 08:96CA: F3 99     .word off_FD_99F3
- D 0 - I - 0x0216DC 08:96CC: FD        .byte $FD   ; 
- D 0 - I - 0x0216DD 08:96CD: B6 99     .word off_FD_99B6
- D 0 - I - 0x0216DF 08:96CF: FD        .byte $FD   ; 
- D 0 - I - 0x0216E0 08:96D0: D0 99     .word off_FD_99D0
- D 0 - I - 0x0216E2 08:96D2: FD        .byte $FD   ; 
- D 0 - I - 0x0216E3 08:96D3: ED 99     .word off_FD_99ED
- D 0 - I - 0x0216E5 08:96D5: FD        .byte $FD   ; 
- D 0 - I - 0x0216E6 08:96D6: D0 99     .word off_FD_99D0
- D 0 - I - 0x0216E8 08:96D8: E2        .byte $E2   ; 
- D 0 - I - 0x0216E9 08:96D9: 36        .byte $36   ; 
- D 0 - I - 0x0216EA 08:96DA: 56        .byte $56   ; 
- D 0 - I - 0x0216EB 08:96DB: 66        .byte $66   ; 
- D 0 - I - 0x0216EC 08:96DC: F3        .byte $F3   ; 
- D 0 - I - 0x0216ED 08:96DD: 66        .byte $66   ; 
- D 0 - I - 0x0216EE 08:96DE: F0        .byte $F0   ; 
- D 0 - I - 0x0216EF 08:96DF: EC        .byte $EC   ; 
- D 0 - I - 0x0216F0 08:96E0: 00        .byte $00   ; 
- D 0 - I - 0x0216F1 08:96E1: FD        .byte $FD   ; 
- D 0 - I - 0x0216F2 08:96E2: FB 99     .word off_FD_99FB
- D 0 - I - 0x0216F4 08:96E4: FD        .byte $FD   ; 
- D 0 - I - 0x0216F5 08:96E5: 0E 9A     .word off_FD_9A0E
- D 0 - I - 0x0216F7 08:96E7: FD        .byte $FD   ; 
- D 0 - I - 0x0216F8 08:96E8: 26 9A     .word off_FD_9A26
- D 0 - I - 0x0216FA 08:96EA: E8        .byte $E8   ; 
- D 0 - I - 0x0216FB 08:96EB: 06        .byte $06   ; 
- D 0 - I - 0x0216FC 08:96EC: ED        .byte $ED   ; 
- D 0 - I - 0x0216FD 08:96ED: 81        .byte $81   ; 
- D 0 - I - 0x0216FE 08:96EE: D6        .byte $D6   ; 
- D 0 - I - 0x0216FF 08:96EF: 35        .byte $35   ; 
- D 0 - I - 0x021700 08:96F0: 83        .byte $83   ; 
- D 0 - I - 0x021701 08:96F1: 84        .byte $84   ; 
- D 0 - I - 0x021702 08:96F2: E2        .byte $E2   ; 
- D 0 - I - 0x021703 08:96F3: 01        .byte $01   ; 
- D 0 - I - 0x021704 08:96F4: E1        .byte $E1   ; 
- D 0 - I - 0x021705 08:96F5: 51        .byte $51   ; 
- D 0 - I - 0x021706 08:96F6: 81        .byte $81   ; 
- D 0 - I - 0x021707 08:96F7: A1        .byte $A1   ; 
- D 0 - I - 0x021708 08:96F8: E2        .byte $E2   ; 
- D 0 - I - 0x021709 08:96F9: 01        .byte $01   ; 
- D 0 - I - 0x02170A 08:96FA: 31        .byte $31   ; 
- D 0 - I - 0x02170B 08:96FB: 41        .byte $41   ; 
- D 0 - I - 0x02170C 08:96FC: EB        .byte $EB   ; 
- D 0 - I - 0x02170D 08:96FD: 54        .byte $54   ; 
- D 0 - I - 0x02170E 08:96FE: 01        .byte $01   ; 
- D 0 - I - 0x02170F 08:96FF: 55        .byte $55   ; 
- D 0 - I - 0x021710 08:9700: EB        .byte $EB   ; 
- D 0 - I - 0x021711 08:9701: 00        .byte $00   ; 
- D 0 - I - 0x021712 08:9702: ED        .byte $ED   ; 
- D 0 - I - 0x021713 08:9703: 00        .byte $00   ; 
- D 0 - I - 0x021714 08:9704: F1        .byte $F1   ; 
- D 0 - I - 0x021715 08:9705: E2        .byte $E2   ; 
- D 0 - I - 0x021716 08:9706: 31        .byte $31   ; 
- D 0 - I - 0x021717 08:9707: 51        .byte $51   ; 
- D 0 - I - 0x021718 08:9708: 81        .byte $81   ; 
- D 0 - I - 0x021719 08:9709: A1        .byte $A1   ; 
- D 0 - I - 0x02171A 08:970A: FD        .byte $FD   ; 
- D 0 - I - 0x02171B 08:970B: 3E 9A     .word off_FD_9A3E
- D 0 - I - 0x02171D 08:970D: 53        .byte $53   ; 
- D 0 - I - 0x02171E 08:970E: 33        .byte $33   ; 
- D 0 - I - 0x02171F 08:970F: E7        .byte $E7   ; 
- D 0 - I - 0x021720 08:9710: 43        .byte $43   ; 
- D 0 - I - 0x021721 08:9711: 06        .byte $06   ; 
- D 0 - I - 0x021722 08:9712: FD        .byte $FD   ; 
- D 0 - I - 0x021723 08:9713: 56 9A     .word off_FD_9A56
- D 0 - I - 0x021725 08:9715: FD        .byte $FD   ; 
- D 0 - I - 0x021726 08:9716: 3E 9A     .word off_FD_9A3E
- D 0 - I - 0x021728 08:9718: E3        .byte $E3   ; 
- D 0 - I - 0x021729 08:9719: A3        .byte $A3   ; 
- D 0 - I - 0x02172A 08:971A: E4        .byte $E4   ; 
- D 0 - I - 0x02172B 08:971B: 03        .byte $03   ; 
- D 0 - I - 0x02172C 08:971C: E3        .byte $E3   ; 
- D 0 - I - 0x02172D 08:971D: 82        .byte $82   ; 
- D 0 - I - 0x02172E 08:971E: F3        .byte $F3   ; 
- D 0 - I - 0x02172F 08:971F: 81        .byte $81   ; 
- D 0 - I - 0x021730 08:9720: F0        .byte $F0   ; 
- D 0 - I - 0x021731 08:9721: EE        .byte $EE   ; 
- D 0 - I - 0x021732 08:9722: 85        .byte $85   ; 
- D 0 - I - 0x021733 08:9723: FD        .byte $FD   ; 
- D 0 - I - 0x021734 08:9724: 65 99     .word off_FD_9965
- D 0 - I - 0x021736 08:9726: EE        .byte $EE   ; 
- D 0 - I - 0x021737 08:9727: 00        .byte $00   ; 
- D 0 - I - 0x021738 08:9728: FD        .byte $FD   ; 
- D 0 - I - 0x021739 08:9729: 3E 9A     .word off_FD_9A3E
- D 0 - I - 0x02173B 08:972B: 83        .byte $83   ; 
- D 0 - I - 0x02173C 08:972C: 83        .byte $83   ; 
- D 0 - I - 0x02173D 08:972D: E7        .byte $E7   ; 
- D 0 - I - 0x02173E 08:972E: 43        .byte $43   ; 
- D 0 - I - 0x02173F 08:972F: 86        .byte $86   ; 
- D 0 - I - 0x021740 08:9730: E1        .byte $E1   ; 
- D 0 - I - 0x021741 08:9731: A1        .byte $A1   ; 
- D 0 - I - 0x021742 08:9732: E2        .byte $E2   ; 
- D 0 - I - 0x021743 08:9733: 31        .byte $31   ; 
- D 0 - I - 0x021744 08:9734: 51        .byte $51   ; 
- D 0 - I - 0x021745 08:9735: A1        .byte $A1   ; 
- D 0 - I - 0x021746 08:9736: EE        .byte $EE   ; 
- D 0 - I - 0x021747 08:9737: 0C        .byte $0C   ; 
- D 0 - I - 0x021748 08:9738: FD        .byte $FD   ; 
- D 0 - I - 0x021749 08:9739: 72 9A     .word off_FD_9A72
- D 0 - I - 0x02174B 08:973B: EE        .byte $EE   ; 
- D 0 - I - 0x02174C 08:973C: 07        .byte $07   ; 
- D 0 - I - 0x02174D 08:973D: FD        .byte $FD   ; 
- D 0 - I - 0x02174E 08:973E: 72 9A     .word off_FD_9A72
- D 0 - I - 0x021750 08:9740: EE        .byte $EE   ; 
- D 0 - I - 0x021751 08:9741: 09        .byte $09   ; 
- D 0 - I - 0x021752 08:9742: FD        .byte $FD   ; 
- D 0 - I - 0x021753 08:9743: 72 9A     .word off_FD_9A72
- D 0 - I - 0x021755 08:9745: EE        .byte $EE   ; 
- D 0 - I - 0x021756 08:9746: 05        .byte $05   ; 
- D 0 - I - 0x021757 08:9747: FD        .byte $FD   ; 
- D 0 - I - 0x021758 08:9748: 72 9A     .word off_FD_9A72
- D 0 - I - 0x02175A 08:974A: EE        .byte $EE   ; 
- D 0 - I - 0x02175B 08:974B: 0A        .byte $0A   ; 
- D 0 - I - 0x02175C 08:974C: FD        .byte $FD   ; 
- D 0 - I - 0x02175D 08:974D: 72 9A     .word off_FD_9A72
- D 0 - I - 0x02175F 08:974F: EE        .byte $EE   ; 
- D 0 - I - 0x021760 08:9750: 05        .byte $05   ; 
- D 0 - I - 0x021761 08:9751: FD        .byte $FD   ; 
- D 0 - I - 0x021762 08:9752: 72 9A     .word off_FD_9A72
- D 0 - I - 0x021764 08:9754: EE        .byte $EE   ; 
- D 0 - I - 0x021765 08:9755: 07        .byte $07   ; 
- D 0 - I - 0x021766 08:9756: FD        .byte $FD   ; 
- D 0 - I - 0x021767 08:9757: 72 9A     .word off_FD_9A72
- D 0 - I - 0x021769 08:9759: EE        .byte $EE   ; 
- D 0 - I - 0x02176A 08:975A: 03        .byte $03   ; 
- D 0 - I - 0x02176B 08:975B: FD        .byte $FD   ; 
- D 0 - I - 0x02176C 08:975C: 72 9A     .word off_FD_9A72
- D 0 - I - 0x02176E 08:975E: EE        .byte $EE   ; 
- D 0 - I - 0x02176F 08:975F: 08        .byte $08   ; 
- D 0 - I - 0x021770 08:9760: FD        .byte $FD   ; 
- D 0 - I - 0x021771 08:9761: 72 9A     .word off_FD_9A72
- D 0 - I - 0x021773 08:9763: EE        .byte $EE   ; 
- D 0 - I - 0x021774 08:9764: 03        .byte $03   ; 
- D 0 - I - 0x021775 08:9765: FD        .byte $FD   ; 
- D 0 - I - 0x021776 08:9766: 72 9A     .word off_FD_9A72
- D 0 - I - 0x021778 08:9768: EE        .byte $EE   ; 
- D 0 - I - 0x021779 08:9769: 05        .byte $05   ; 
- D 0 - I - 0x02177A 08:976A: FD        .byte $FD   ; 
- D 0 - I - 0x02177B 08:976B: 72 9A     .word off_FD_9A72
- D 0 - I - 0x02177D 08:976D: EE        .byte $EE   ; 
- D 0 - I - 0x02177E 08:976E: 01        .byte $01   ; 
- D 0 - I - 0x02177F 08:976F: FD        .byte $FD   ; 
- D 0 - I - 0x021780 08:9770: 72 9A     .word off_FD_9A72
- D 0 - I - 0x021782 08:9772: EE        .byte $EE   ; 
- D 0 - I - 0x021783 08:9773: 06        .byte $06   ; 
- D 0 - I - 0x021784 08:9774: FD        .byte $FD   ; 
- D 0 - I - 0x021785 08:9775: 72 9A     .word off_FD_9A72
- D 0 - I - 0x021787 08:9777: EE        .byte $EE   ; 
- D 0 - I - 0x021788 08:9778: 01        .byte $01   ; 
- D 0 - I - 0x021789 08:9779: FD        .byte $FD   ; 
- D 0 - I - 0x02178A 08:977A: 72 9A     .word off_FD_9A72
- D 0 - I - 0x02178C 08:977C: EE        .byte $EE   ; 
- D 0 - I - 0x02178D 08:977D: 03        .byte $03   ; 
- D 0 - I - 0x02178E 08:977E: FD        .byte $FD   ; 
- D 0 - I - 0x02178F 08:977F: 72 9A     .word off_FD_9A72
- D 0 - I - 0x021791 08:9781: EE        .byte $EE   ; 
- D 0 - I - 0x021792 08:9782: 81        .byte $81   ; 
- D 0 - I - 0x021793 08:9783: FD        .byte $FD   ; 
- D 0 - I - 0x021794 08:9784: 72 9A     .word off_FD_9A72
- D 0 - I - 0x021796 08:9786: EE        .byte $EE   ; 
- D 0 - I - 0x021797 08:9787: 00        .byte $00   ; 
- D 0 - I - 0x021798 08:9788: FD        .byte $FD   ; 
- D 0 - I - 0x021799 08:9789: 7E 9A     .word off_FD_9A7E
- D 0 - I - 0x02179B 08:978B: FE        .byte $FE   ; 
- D 0 - I - 0x02179C 08:978C: FF        .byte $FF   ; 
- D 0 - I - 0x02179D 08:978D: BD 96     .word off_FF_96BD



_off001_978F_02:
- D 0 - I - 0x02179F 08:978F: D6        .byte $D6   ; 
- D 0 - I - 0x0217A0 08:9790: 05        .byte $05   ; 
- D 0 - I - 0x0217A1 08:9791: FD        .byte $FD   ; 
- D 0 - I - 0x0217A2 08:9792: B0 9A     .word off_FD_9AB0
off_FF_9794:
- D 0 - I - 0x0217A4 08:9794: FD        .byte $FD   ; 
- D 0 - I - 0x0217A5 08:9795: B0 9A     .word off_FD_9AB0
- D 0 - I - 0x0217A7 08:9797: FD        .byte $FD   ; 
- D 0 - I - 0x0217A8 08:9798: C4 9A     .word off_FD_9AC4
- D 0 - I - 0x0217AA 08:979A: FD        .byte $FD   ; 
- D 0 - I - 0x0217AB 08:979B: B0 9A     .word off_FD_9AB0
- D 0 - I - 0x0217AD 08:979D: FD        .byte $FD   ; 
- D 0 - I - 0x0217AE 08:979E: C4 9A     .word off_FD_9AC4
- D 0 - I - 0x0217B0 08:97A0: FD        .byte $FD   ; 
- D 0 - I - 0x0217B1 08:97A1: D4 9A     .word off_FD_9AD4
- D 0 - I - 0x0217B3 08:97A3: 92        .byte $92   ; 
- D 0 - I - 0x0217B4 08:97A4: EE        .byte $EE   ; 
- D 0 - I - 0x0217B5 08:97A5: 82        .byte $82   ; 
- D 0 - I - 0x0217B6 08:97A6: FD        .byte $FD   ; 
- D 0 - I - 0x0217B7 08:97A7: D4 9A     .word off_FD_9AD4
- D 0 - I - 0x0217B9 08:97A9: 92        .byte $92   ; 
- D 0 - I - 0x0217BA 08:97AA: EE        .byte $EE   ; 
- D 0 - I - 0x0217BB 08:97AB: 84        .byte $84   ; 
- D 0 - I - 0x0217BC 08:97AC: FD        .byte $FD   ; 
- D 0 - I - 0x0217BD 08:97AD: D4 9A     .word off_FD_9AD4
- D 0 - I - 0x0217BF 08:97AF: A2        .byte $A2   ; 
- D 0 - I - 0x0217C0 08:97B0: EE        .byte $EE   ; 
- D 0 - I - 0x0217C1 08:97B1: 00        .byte $00   ; 
- D 0 - I - 0x0217C2 08:97B2: 53        .byte $53   ; 
- D 0 - I - 0x0217C3 08:97B3: 52        .byte $52   ; 
- D 0 - I - 0x0217C4 08:97B4: 31        .byte $31   ; 
- D 0 - I - 0x0217C5 08:97B5: 41        .byte $41   ; 
- D 0 - I - 0x0217C6 08:97B6: EB        .byte $EB   ; 
- D 0 - I - 0x0217C7 08:97B7: 50        .byte $50   ; 
- D 0 - I - 0x0217C8 08:97B8: 13        .byte $13   ; 
- D 0 - I - 0x0217C9 08:97B9: A5        .byte $A5   ; 
- D 0 - I - 0x0217CA 08:97BA: EB        .byte $EB   ; 
- D 0 - I - 0x0217CB 08:97BB: 00        .byte $00   ; 
- D 0 - I - 0x0217CC 08:97BC: 81        .byte $81   ; 
- D 0 - I - 0x0217CD 08:97BD: A1        .byte $A1   ; 
- D 0 - I - 0x0217CE 08:97BE: E2        .byte $E2   ; 
- D 0 - I - 0x0217CF 08:97BF: 11        .byte $11   ; 
- D 0 - I - 0x0217D0 08:97C0: 31        .byte $31   ; 
- D 0 - I - 0x0217D1 08:97C1: FD        .byte $FD   ; 
- D 0 - I - 0x0217D2 08:97C2: E2 9A     .word off_FD_9AE2
- D 0 - I - 0x0217D4 08:97C4: 82        .byte $82   ; 
- D 0 - I - 0x0217D5 08:97C5: 81        .byte $81   ; 
- D 0 - I - 0x0217D6 08:97C6: 81        .byte $81   ; 
- D 0 - I - 0x0217D7 08:97C7: 81        .byte $81   ; 
- D 0 - I - 0x0217D8 08:97C8: 81        .byte $81   ; 
- D 0 - I - 0x0217D9 08:97C9: FD        .byte $FD   ; 
- D 0 - I - 0x0217DA 08:97CA: E2 9A     .word off_FD_9AE2
- D 0 - I - 0x0217DC 08:97CC: 82        .byte $82   ; 
- D 0 - I - 0x0217DD 08:97CD: 81        .byte $81   ; 
- D 0 - I - 0x0217DE 08:97CE: 82        .byte $82   ; 
- D 0 - I - 0x0217DF 08:97CF: 81        .byte $81   ; 
- D 0 - I - 0x0217E0 08:97D0: FD        .byte $FD   ; 
- D 0 - I - 0x0217E1 08:97D1: E2 9A     .word off_FD_9AE2
- D 0 - I - 0x0217E3 08:97D3: 82        .byte $82   ; 
- D 0 - I - 0x0217E4 08:97D4: 31        .byte $31   ; 
- D 0 - I - 0x0217E5 08:97D5: 81        .byte $81   ; 
- D 0 - I - 0x0217E6 08:97D6: A1        .byte $A1   ; 
- D 0 - I - 0x0217E7 08:97D7: E2        .byte $E2   ; 
- D 0 - I - 0x0217E8 08:97D8: 31        .byte $31   ; 
- D 0 - I - 0x0217E9 08:97D9: FD        .byte $FD   ; 
- D 0 - I - 0x0217EA 08:97DA: F8 9A     .word off_FD_9AF8
- D 0 - I - 0x0217EC 08:97DC: FD        .byte $FD   ; 
- D 0 - I - 0x0217ED 08:97DD: 3E 9B     .word off_FD_9B3E
- D 0 - I - 0x0217EF 08:97DF: FE        .byte $FE   ; 
- D 0 - I - 0x0217F0 08:97E0: FF        .byte $FF   ; 
- D 0 - I - 0x0217F1 08:97E1: 94 97     .word off_FF_9794



_off001_97E3_03:
- D 0 - I - 0x0217F3 08:97E3: FD        .byte $FD   ; 
- D 0 - I - 0x0217F4 08:97E4: 59 9B     .word off_FD_9B59
off_FF_97E6:
- D 0 - I - 0x0217F6 08:97E6: FB        .byte $FB   ; 
- D 0 - I - 0x0217F7 08:97E7: FD        .byte $FD   ; 
- D 0 - I - 0x0217F8 08:97E8: 59 9B     .word off_FD_9B59
- D 0 - I - 0x0217FA 08:97EA: FD        .byte $FD   ; 
- D 0 - I - 0x0217FB 08:97EB: 7B 9B     .word off_FD_9B7B
- D 0 - I - 0x0217FD 08:97ED: FD        .byte $FD   ; 
- D 0 - I - 0x0217FE 08:97EE: 7B 9B     .word off_FD_9B7B
- D 0 - I - 0x021800 08:97F0: FE        .byte $FE   ; 
- D 0 - I - 0x021801 08:97F1: 02        .byte $02   ; 
- D 0 - I - 0x021802 08:97F2: FD        .byte $FD   ; 
- D 0 - I - 0x021803 08:97F3: 89 9B     .word off_FD_9B89
- D 0 - I - 0x021805 08:97F5: 93        .byte $93   ; 
- D 0 - I - 0x021806 08:97F6: 93        .byte $93   ; 
- D 0 - I - 0x021807 08:97F7: 86        .byte $86   ; 
- D 0 - I - 0x021808 08:97F8: 76        .byte $76   ; 
- D 0 - I - 0x021809 08:97F9: 66        .byte $66   ; 
- D 0 - I - 0x02180A 08:97FA: B6        .byte $B6   ; 
- D 0 - I - 0x02180B 08:97FB: B6        .byte $B6   ; 
- D 0 - I - 0x02180C 08:97FC: B6        .byte $B6   ; 
- D 0 - I - 0x02180D 08:97FD: 2C        .byte $2C   ; 
- D 0 - I - 0x02180E 08:97FE: 2C        .byte $2C   ; 
- D 0 - I - 0x02180F 08:97FF: 2C        .byte $2C   ; 
- D 0 - I - 0x021810 08:9800: 16        .byte $16   ; 
- D 0 - I - 0x021811 08:9801: 16        .byte $16   ; 
- D 0 - I - 0x021812 08:9802: 16        .byte $16   ; 
- D 0 - I - 0x021813 08:9803: FD        .byte $FD   ; 
- D 0 - I - 0x021814 08:9804: 9F 9B     .word off_FD_9B9F
- D 0 - I - 0x021816 08:9806: 41        .byte $41   ; 
- D 0 - I - 0x021817 08:9807: 42        .byte $42   ; 
- D 0 - I - 0x021818 08:9808: 11        .byte $11   ; 
- D 0 - I - 0x021819 08:9809: 11        .byte $11   ; 
- D 0 - I - 0x02181A 08:980A: 11        .byte $11   ; 
- D 0 - I - 0x02181B 08:980B: 11        .byte $11   ; 
- D 0 - I - 0x02181C 08:980C: FD        .byte $FD   ; 
- D 0 - I - 0x02181D 08:980D: 9F 9B     .word off_FD_9B9F
- D 0 - I - 0x02181F 08:980F: 41        .byte $41   ; 
- D 0 - I - 0x021820 08:9810: 42        .byte $42   ; 
- D 0 - I - 0x021821 08:9811: 41        .byte $41   ; 
- D 0 - I - 0x021822 08:9812: 42        .byte $42   ; 
- D 0 - I - 0x021823 08:9813: 41        .byte $41   ; 
- D 0 - I - 0x021824 08:9814: FD        .byte $FD   ; 
- D 0 - I - 0x021825 08:9815: 9F 9B     .word off_FD_9B9F
- D 0 - I - 0x021827 08:9817: 41        .byte $41   ; 
- D 0 - I - 0x021828 08:9818: 42        .byte $42   ; 
- D 0 - I - 0x021829 08:9819: 91        .byte $91   ; 
- D 0 - I - 0x02182A 08:981A: 81        .byte $81   ; 
- D 0 - I - 0x02182B 08:981B: 71        .byte $71   ; 
- D 0 - I - 0x02182C 08:981C: 61        .byte $61   ; 
- D 0 - I - 0x02182D 08:981D: FD        .byte $FD   ; 
- D 0 - I - 0x02182E 08:981E: B7 9B     .word off_FD_9BB7
- D 0 - I - 0x021830 08:9820: FE        .byte $FE   ; 
- D 0 - I - 0x021831 08:9821: FF        .byte $FF   ; 
- D 0 - I - 0x021832 08:9822: E6 97     .word off_FF_97E6
off_FD_9824:
- D 0 - I - 0x021834 08:9824: E2        .byte $E2   ; 
- D 0 - I - 0x021835 08:9825: 31        .byte $31   ; 
- D 0 - I - 0x021836 08:9826: 32        .byte $32   ; 
- D 0 - I - 0x021837 08:9827: 31        .byte $31   ; 
- D 0 - I - 0x021838 08:9828: EB        .byte $EB   ; 
- D 0 - I - 0x021839 08:9829: 54        .byte $54   ; 
- D 0 - I - 0x02183A 08:982A: 03        .byte $03   ; 
- D 0 - I - 0x02183B 08:982B: 62        .byte $62   ; 
- D 0 - I - 0x02183C 08:982C: EB        .byte $EB   ; 
- D 0 - I - 0x02183D 08:982D: 00        .byte $00   ; 
- D 0 - I - 0x02183E 08:982E: 31        .byte $31   ; 
- D 0 - I - 0x02183F 08:982F: 62        .byte $62   ; 
- D 0 - I - 0x021840 08:9830: 61        .byte $61   ; 
- D 0 - I - 0x021841 08:9831: 32        .byte $32   ; 
- D 0 - I - 0x021842 08:9832: 82        .byte $82   ; 
- D 0 - I - 0x021843 08:9833: 12        .byte $12   ; 
- D 0 - I - 0x021844 08:9834: FF        .byte $FF   ; 
off_FD_9835:
- D 0 - I - 0x021845 08:9835: 31        .byte $31   ; 
- D 0 - I - 0x021846 08:9836: 32        .byte $32   ; 
- D 0 - I - 0x021847 08:9837: 31        .byte $31   ; 
- D 0 - I - 0x021848 08:9838: EB        .byte $EB   ; 
- D 0 - I - 0x021849 08:9839: 54        .byte $54   ; 
- D 0 - I - 0x02184A 08:983A: 03        .byte $03   ; 
- D 0 - I - 0x02184B 08:983B: 62        .byte $62   ; 
- D 0 - I - 0x02184C 08:983C: EB        .byte $EB   ; 
- D 0 - I - 0x02184D 08:983D: 00        .byte $00   ; 
- D 0 - I - 0x02184E 08:983E: 31        .byte $31   ; 
- D 0 - I - 0x02184F 08:983F: 62        .byte $62   ; 
- D 0 - I - 0x021850 08:9840: 61        .byte $61   ; 
- D 0 - I - 0x021851 08:9841: 32        .byte $32   ; 
- D 0 - I - 0x021852 08:9842: FF        .byte $FF   ; 
off_FD_9843:
- D 0 - I - 0x021853 08:9843: D6        .byte $D6   ; 
- D 0 - I - 0x021854 08:9844: 77        .byte $77   ; 
- D 0 - I - 0x021855 08:9845: 83        .byte $83   ; 
- D 0 - I - 0x021856 08:9846: 00        .byte $00   ; 
- D 0 - I - 0x021857 08:9847: EB        .byte $EB   ; 
- D 0 - I - 0x021858 08:9848: 54        .byte $54   ; 
- D 0 - I - 0x021859 08:9849: 03        .byte $03   ; 
- D 0 - I - 0x02185A 08:984A: E3        .byte $E3   ; 
- D 0 - I - 0x02185B 08:984B: 15        .byte $15   ; 
- D 0 - I - 0x02185C 08:984C: E6        .byte $E6   ; 
- D 0 - I - 0x02185D 08:984D: 80        .byte $80   ; 
- D 0 - I - 0x02185E 08:984E: E7        .byte $E7   ; 
- D 0 - I - 0x02185F 08:984F: 65        .byte $65   ; 
- D 0 - I - 0x021860 08:9850: F3        .byte $F3   ; 
- D 0 - I - 0x021861 08:9851: EB        .byte $EB   ; 
- D 0 - I - 0x021862 08:9852: 51        .byte $51   ; 
- D 0 - I - 0x021863 08:9853: 04        .byte $04   ; 
- D 0 - I - 0x021864 08:9854: 19        .byte $19   ; 
- D 0 - I - 0x021865 08:9855: EB        .byte $EB   ; 
- D 0 - I - 0x021866 08:9856: 00        .byte $00   ; 
- D 0 - I - 0x021867 08:9857: E6        .byte $E6   ; 
- D 0 - I - 0x021868 08:9858: 83        .byte $83   ; 
- D 0 - I - 0x021869 08:9859: F0        .byte $F0   ; 
- D 0 - I - 0x02186A 08:985A: 01        .byte $01   ; 
- D 0 - I - 0x02186B 08:985B: 11        .byte $11   ; 
- D 0 - I - 0x02186C 08:985C: EB        .byte $EB   ; 
- D 0 - I - 0x02186D 08:985D: 51        .byte $51   ; 
- D 0 - I - 0x02186E 08:985E: 22        .byte $22   ; 
- D 0 - I - 0x02186F 08:985F: 04        .byte $04   ; 
- D 0 - I - 0x021870 08:9860: EB        .byte $EB   ; 
- D 0 - I - 0x021871 08:9861: 00        .byte $00   ; 
- D 0 - I - 0x021872 08:9862: FF        .byte $FF   ; 
off_FD_9863:
- D 0 - I - 0x021873 08:9863: E9        .byte $E9   ; 
- D 0 - I - 0x021874 08:9864: B2        .byte $B2   ; 
- D 0 - I - 0x021875 08:9865: D1        .byte $D1   ; 
- D 0 - I - 0x021876 08:9866: 37        .byte $37   ; 
- D 0 - I - 0x021877 08:9867: 83        .byte $83   ; 
- D 0 - I - 0x021878 08:9868: 48        .byte $48   ; 
- D 0 - I - 0x021879 08:9869: E3        .byte $E3   ; 
- D 0 - I - 0x02187A 08:986A: 64        .byte $64   ; 
- D 0 - I - 0x02187B 08:986B: F3        .byte $F3   ; 
- D 0 - I - 0x02187C 08:986C: E4        .byte $E4   ; 
- D 0 - I - 0x02187D 08:986D: 62        .byte $62   ; 
- D 0 - I - 0x02187E 08:986E: E3        .byte $E3   ; 
- D 0 - I - 0x02187F 08:986F: 66        .byte $66   ; 
- D 0 - I - 0x021880 08:9870: F0        .byte $F0   ; 
- D 0 - I - 0x021881 08:9871: 54        .byte $54   ; 
- D 0 - I - 0x021882 08:9872: F3        .byte $F3   ; 
- D 0 - I - 0x021883 08:9873: E4        .byte $E4   ; 
- D 0 - I - 0x021884 08:9874: 52        .byte $52   ; 
- D 0 - I - 0x021885 08:9875: E3        .byte $E3   ; 
- D 0 - I - 0x021886 08:9876: 66        .byte $66   ; 
- D 0 - I - 0x021887 08:9877: 56        .byte $56   ; 
- D 0 - I - 0x021888 08:9878: F0        .byte $F0   ; 
- D 0 - I - 0x021889 08:9879: 64        .byte $64   ; 
- D 0 - I - 0x02188A 08:987A: F3        .byte $F3   ; 
- D 0 - I - 0x02188B 08:987B: E4        .byte $E4   ; 
- D 0 - I - 0x02188C 08:987C: 62        .byte $62   ; 
- D 0 - I - 0x02188D 08:987D: E3        .byte $E3   ; 
- D 0 - I - 0x02188E 08:987E: 66        .byte $66   ; 
- D 0 - I - 0x02188F 08:987F: F0        .byte $F0   ; 
- D 0 - I - 0x021890 08:9880: 64        .byte $64   ; 
- D 0 - I - 0x021891 08:9881: F3        .byte $F3   ; 
- D 0 - I - 0x021892 08:9882: E4        .byte $E4   ; 
- D 0 - I - 0x021893 08:9883: 62        .byte $62   ; 
- D 0 - I - 0x021894 08:9884: E3        .byte $E3   ; 
- D 0 - I - 0x021895 08:9885: 66        .byte $66   ; 
- D 0 - I - 0x021896 08:9886: F0        .byte $F0   ; 
- D 0 - I - 0x021897 08:9887: 53        .byte $53   ; 
- D 0 - I - 0x021898 08:9888: F3        .byte $F3   ; 
- D 0 - I - 0x021899 08:9889: E4        .byte $E4   ; 
- D 0 - I - 0x02189A 08:988A: 53        .byte $53   ; 
- D 0 - I - 0x02189B 08:988B: FF        .byte $FF   ; 
off_FD_988C:
- D 0 - I - 0x02189C 08:988C: F0        .byte $F0   ; 
- D 0 - I - 0x02189D 08:988D: E3        .byte $E3   ; 
- D 0 - I - 0x02189E 08:988E: 34        .byte $34   ; 
- D 0 - I - 0x02189F 08:988F: F3        .byte $F3   ; 
- D 0 - I - 0x0218A0 08:9890: E4        .byte $E4   ; 
- D 0 - I - 0x0218A1 08:9891: 32        .byte $32   ; 
- D 0 - I - 0x0218A2 08:9892: E3        .byte $E3   ; 
- D 0 - I - 0x0218A3 08:9893: 36        .byte $36   ; 
- D 0 - I - 0x0218A4 08:9894: F0        .byte $F0   ; 
- D 0 - I - 0x0218A5 08:9895: 14        .byte $14   ; 
- D 0 - I - 0x0218A6 08:9896: F3        .byte $F3   ; 
- D 0 - I - 0x0218A7 08:9897: E4        .byte $E4   ; 
- D 0 - I - 0x0218A8 08:9898: 12        .byte $12   ; 
- D 0 - I - 0x0218A9 08:9899: F0        .byte $F0   ; 
- D 0 - I - 0x0218AA 08:989A: E3        .byte $E3   ; 
- D 0 - I - 0x0218AB 08:989B: 34        .byte $34   ; 
- D 0 - I - 0x0218AC 08:989C: F3        .byte $F3   ; 
- D 0 - I - 0x0218AD 08:989D: E4        .byte $E4   ; 
- D 0 - I - 0x0218AE 08:989E: 32        .byte $32   ; 
- D 0 - I - 0x0218AF 08:989F: E3        .byte $E3   ; 
- D 0 - I - 0x0218B0 08:98A0: F4        .byte $F4   ; 
- D 0 - I - 0x0218B1 08:98A1: 16        .byte $16   ; 
- D 0 - I - 0x0218B2 08:98A2: 36        .byte $36   ; 
- D 0 - I - 0x0218B3 08:98A3: FF        .byte $FF   ; 
off_FD_98A4:
- D 0 - I - 0x0218B4 08:98A4: F0        .byte $F0   ; 
- D 0 - I - 0x0218B5 08:98A5: E3        .byte $E3   ; 
- D 0 - I - 0x0218B6 08:98A6: 64        .byte $64   ; 
- D 0 - I - 0x0218B7 08:98A7: F3        .byte $F3   ; 
- D 0 - I - 0x0218B8 08:98A8: 68        .byte $68   ; 
- D 0 - I - 0x0218B9 08:98A9: F0        .byte $F0   ; 
- D 0 - I - 0x0218BA 08:98AA: E3        .byte $E3   ; 
- D 0 - I - 0x0218BB 08:98AB: 84        .byte $84   ; 
- D 0 - I - 0x0218BC 08:98AC: E4        .byte $E4   ; 
- D 0 - I - 0x0218BD 08:98AD: F3        .byte $F3   ; 
- D 0 - I - 0x0218BE 08:98AE: 82        .byte $82   ; 
- D 0 - I - 0x0218BF 08:98AF: E3        .byte $E3   ; 
- D 0 - I - 0x0218C0 08:98B0: F0        .byte $F0   ; 
- D 0 - I - 0x0218C1 08:98B1: A4        .byte $A4   ; 
- D 0 - I - 0x0218C2 08:98B2: F3        .byte $F3   ; 
- D 0 - I - 0x0218C3 08:98B3: A2        .byte $A2   ; 
- D 0 - I - 0x0218C4 08:98B4: E9        .byte $E9   ; 
- D 0 - I - 0x0218C5 08:98B5: 00        .byte $00   ; 
- D 0 - I - 0x0218C6 08:98B6: FF        .byte $FF   ; 
off_FD_98B7:
- D 0 - I - 0x0218C7 08:98B7: F0        .byte $F0   ; 
- D 0 - I - 0x0218C8 08:98B8: E3        .byte $E3   ; 
- D 0 - I - 0x0218C9 08:98B9: 64        .byte $64   ; 
- D 0 - I - 0x0218CA 08:98BA: F3        .byte $F3   ; 
- D 0 - I - 0x0218CB 08:98BB: 62        .byte $62   ; 
- D 0 - I - 0x0218CC 08:98BC: F0        .byte $F0   ; 
- D 0 - I - 0x0218CD 08:98BD: E3        .byte $E3   ; 
- D 0 - I - 0x0218CE 08:98BE: 84        .byte $84   ; 
- D 0 - I - 0x0218CF 08:98BF: E4        .byte $E4   ; 
- D 0 - I - 0x0218D0 08:98C0: F3        .byte $F3   ; 
- D 0 - I - 0x0218D1 08:98C1: 82        .byte $82   ; 
- D 0 - I - 0x0218D2 08:98C2: E3        .byte $E3   ; 
- D 0 - I - 0x0218D3 08:98C3: F0        .byte $F0   ; 
- D 0 - I - 0x0218D4 08:98C4: A4        .byte $A4   ; 
- D 0 - I - 0x0218D5 08:98C5: F2        .byte $F2   ; 
- D 0 - I - 0x0218D6 08:98C6: A4        .byte $A4   ; 
- D 0 - I - 0x0218D7 08:98C7: F3        .byte $F3   ; 
- D 0 - I - 0x0218D8 08:98C8: A4        .byte $A4   ; 
- D 0 - I - 0x0218D9 08:98C9: E9        .byte $E9   ; 
- D 0 - I - 0x0218DA 08:98CA: 00        .byte $00   ; 
- D 0 - I - 0x0218DB 08:98CB: FF        .byte $FF   ; 
off_FD_98CC:
- D 0 - I - 0x0218DC 08:98CC: EB        .byte $EB   ; 
- D 0 - I - 0x0218DD 08:98CD: 58        .byte $58   ; 
- D 0 - I - 0x0218DE 08:98CE: 01        .byte $01   ; 
- D 0 - I - 0x0218DF 08:98CF: D6        .byte $D6   ; 
- D 0 - I - 0x0218E0 08:98D0: 77        .byte $77   ; 
- D 0 - I - 0x0218E1 08:98D1: 83        .byte $83   ; 
- D 0 - I - 0x0218E2 08:98D2: 23        .byte $23   ; 
- D 0 - I - 0x0218E3 08:98D3: E2        .byte $E2   ; 
- D 0 - I - 0x0218E4 08:98D4: 81        .byte $81   ; 
- D 0 - I - 0x0218E5 08:98D5: A1        .byte $A1   ; 
- D 0 - I - 0x0218E6 08:98D6: E3        .byte $E3   ; 
- D 0 - I - 0x0218E7 08:98D7: 11        .byte $11   ; 
- D 0 - I - 0x0218E8 08:98D8: 31        .byte $31   ; 
- D 0 - I - 0x0218E9 08:98D9: F3        .byte $F3   ; 
- D 0 - I - 0x0218EA 08:98DA: 11        .byte $11   ; 
- D 0 - I - 0x0218EB 08:98DB: 31        .byte $31   ; 
- D 0 - I - 0x0218EC 08:98DC: EB        .byte $EB   ; 
- D 0 - I - 0x0218ED 08:98DD: 00        .byte $00   ; 
- D 0 - I - 0x0218EE 08:98DE: F0        .byte $F0   ; 
- D 0 - I - 0x0218EF 08:98DF: 81        .byte $81   ; 
- D 0 - I - 0x0218F0 08:98E0: 62        .byte $62   ; 
- D 0 - I - 0x0218F1 08:98E1: 52        .byte $52   ; 
- D 0 - I - 0x0218F2 08:98E2: 32        .byte $32   ; 
- D 0 - I - 0x0218F3 08:98E3: 11        .byte $11   ; 
- D 0 - I - 0x0218F4 08:98E4: E2        .byte $E2   ; 
- D 0 - I - 0x0218F5 08:98E5: A1        .byte $A1   ; 
- D 0 - I - 0x0218F6 08:98E6: 61        .byte $61   ; 
- D 0 - I - 0x0218F7 08:98E7: 81        .byte $81   ; 
- D 0 - I - 0x0218F8 08:98E8: 31        .byte $31   ; 
- D 0 - I - 0x0218F9 08:98E9: 61        .byte $61   ; 
- D 0 - I - 0x0218FA 08:98EA: EB        .byte $EB   ; 
- D 0 - I - 0x0218FB 08:98EB: 58        .byte $58   ; 
- D 0 - I - 0x0218FC 08:98EC: 11        .byte $11   ; 
- D 0 - I - 0x0218FD 08:98ED: 82        .byte $82   ; 
- D 0 - I - 0x0218FE 08:98EE: EB        .byte $EB   ; 
- D 0 - I - 0x0218FF 08:98EF: 00        .byte $00   ; 
- D 0 - I - 0x021900 08:98F0: 31        .byte $31   ; 
- D 0 - I - 0x021901 08:98F1: F0        .byte $F0   ; 
- D 0 - I - 0x021902 08:98F2: E3        .byte $E3   ; 
- D 0 - I - 0x021903 08:98F3: 11        .byte $11   ; 
- D 0 - I - 0x021904 08:98F4: EB        .byte $EB   ; 
- D 0 - I - 0x021905 08:98F5: 51        .byte $51   ; 
- D 0 - I - 0x021906 08:98F6: 23        .byte $23   ; 
- D 0 - I - 0x021907 08:98F7: E7        .byte $E7   ; 
- D 0 - I - 0x021908 08:98F8: 43        .byte $43   ; 
- D 0 - I - 0x021909 08:98F9: E2        .byte $E2   ; 
- D 0 - I - 0x02190A 08:98FA: A9        .byte $A9   ; 
- D 0 - I - 0x02190B 08:98FB: FF        .byte $FF   ; 
off_FD_98FC:
- D 0 - I - 0x02190C 08:98FC: EB        .byte $EB   ; 
- D 0 - I - 0x02190D 08:98FD: 57        .byte $57   ; 
- D 0 - I - 0x02190E 08:98FE: 03        .byte $03   ; 
- D 0 - I - 0x02190F 08:98FF: D6        .byte $D6   ; 
- D 0 - I - 0x021910 08:9900: 37        .byte $37   ; 
- D 0 - I - 0x021911 08:9901: 83        .byte $83   ; 
- D 0 - I - 0x021912 08:9902: 24        .byte $24   ; 
- D 0 - I - 0x021913 08:9903: E1        .byte $E1   ; 
- D 0 - I - 0x021914 08:9904: A1        .byte $A1   ; 
- D 0 - I - 0x021915 08:9905: 81        .byte $81   ; 
- D 0 - I - 0x021916 08:9906: 91        .byte $91   ; 
- D 0 - I - 0x021917 08:9907: A2        .byte $A2   ; 
- D 0 - I - 0x021918 08:9908: E2        .byte $E2   ; 
- D 0 - I - 0x021919 08:9909: 11        .byte $11   ; 
- D 0 - I - 0x02191A 08:990A: E1        .byte $E1   ; 
- D 0 - I - 0x02191B 08:990B: A1        .byte $A1   ; 
- D 0 - I - 0x02191C 08:990C: E2        .byte $E2   ; 
- D 0 - I - 0x02191D 08:990D: 42        .byte $42   ; 
- D 0 - I - 0x02191E 08:990E: 32        .byte $32   ; 
- D 0 - I - 0x02191F 08:990F: 12        .byte $12   ; 
- D 0 - I - 0x021920 08:9910: E1        .byte $E1   ; 
- D 0 - I - 0x021921 08:9911: DE        .byte $DE   ; 
- D 0 - I - 0x021922 08:9912: A8        .byte $A8   ; 
- D 0 - I - 0x021923 08:9913: AF        .byte $AF   ; 
- D 0 - I - 0x021924 08:9914: E2        .byte $E2   ; 
- D 0 - I - 0x021925 08:9915: 0F        .byte $0F   ; 
- D 0 - I - 0x021926 08:9916: E1        .byte $E1   ; 
- D 0 - I - 0x021927 08:9917: 58        .byte $58   ; 
- D 0 - I - 0x021928 08:9918: AF        .byte $AF   ; 
- D 0 - I - 0x021929 08:9919: E2        .byte $E2   ; 
- D 0 - I - 0x02192A 08:991A: 03        .byte $03   ; 
- D 0 - I - 0x02192B 08:991B: DE        .byte $DE   ; 
- D 0 - I - 0x02192C 08:991C: 41        .byte $41   ; 
- D 0 - I - 0x02192D 08:991D: E7        .byte $E7   ; 
- D 0 - I - 0x02192E 08:991E: 83        .byte $83   ; 
- D 0 - I - 0x02192F 08:991F: EB        .byte $EB   ; 
- D 0 - I - 0x021930 08:9920: 54        .byte $54   ; 
- D 0 - I - 0x021931 08:9921: 02        .byte $02   ; 
- D 0 - I - 0x021932 08:9922: 55        .byte $55   ; 
- D 0 - I - 0x021933 08:9923: EB        .byte $EB   ; 
- D 0 - I - 0x021934 08:9924: 00        .byte $00   ; 
- D 0 - I - 0x021935 08:9925: D6        .byte $D6   ; 
- D 0 - I - 0x021936 08:9926: 77        .byte $77   ; 
- D 0 - I - 0x021937 08:9927: 84        .byte $84   ; 
- D 0 - I - 0x021938 08:9928: 34        .byte $34   ; 
- D 0 - I - 0x021939 08:9929: E1        .byte $E1   ; 
- D 0 - I - 0x02193A 08:992A: 81        .byte $81   ; 
- D 0 - I - 0x02193B 08:992B: A1        .byte $A1   ; 
- D 0 - I - 0x02193C 08:992C: E2        .byte $E2   ; 
- D 0 - I - 0x02193D 08:992D: 11        .byte $11   ; 
- D 0 - I - 0x02193E 08:992E: 31        .byte $31   ; 
- D 0 - I - 0x02193F 08:992F: FF        .byte $FF   ; 
off_FD_9930:
- D 0 - I - 0x021940 08:9930: D6        .byte $D6   ; 
- D 0 - I - 0x021941 08:9931: 77        .byte $77   ; 
- D 0 - I - 0x021942 08:9932: 83        .byte $83   ; 
- D 0 - I - 0x021943 08:9933: 33        .byte $33   ; 
- D 0 - I - 0x021944 08:9934: E2        .byte $E2   ; 
- D 0 - I - 0x021945 08:9935: 62        .byte $62   ; 
- D 0 - I - 0x021946 08:9936: 51        .byte $51   ; 
- D 0 - I - 0x021947 08:9937: EB        .byte $EB   ; 
- D 0 - I - 0x021948 08:9938: 51        .byte $51   ; 
- D 0 - I - 0x021949 08:9939: 62        .byte $62   ; 
- D 0 - I - 0x02194A 08:993A: 32        .byte $32   ; 
- D 0 - I - 0x02194B 08:993B: EB        .byte $EB   ; 
- D 0 - I - 0x02194C 08:993C: 00        .byte $00   ; 
- D 0 - I - 0x02194D 08:993D: E1        .byte $E1   ; 
- D 0 - I - 0x02194E 08:993E: A1        .byte $A1   ; 
- D 0 - I - 0x02194F 08:993F: E2        .byte $E2   ; 
- D 0 - I - 0x021950 08:9940: 11        .byte $11   ; 
- D 0 - I - 0x021951 08:9941: 32        .byte $32   ; 
- D 0 - I - 0x021952 08:9942: 62        .byte $62   ; 
- D 0 - I - 0x021953 08:9943: 81        .byte $81   ; 
- D 0 - I - 0x021954 08:9944: F3        .byte $F3   ; 
- D 0 - I - 0x021955 08:9945: 81        .byte $81   ; 
- D 0 - I - 0x021956 08:9946: F0        .byte $F0   ; 
- D 0 - I - 0x021957 08:9947: A3        .byte $A3   ; 
- D 0 - I - 0x021958 08:9948: FF        .byte $FF   ; 
off_FD_9949:
- D 0 - I - 0x021959 08:9949: E9        .byte $E9   ; 
- D 0 - I - 0x02195A 08:994A: B2        .byte $B2   ; 
- D 0 - I - 0x02195B 08:994B: D1        .byte $D1   ; 
- D 0 - I - 0x02195C 08:994C: 37        .byte $37   ; 
- D 0 - I - 0x02195D 08:994D: 83        .byte $83   ; 
- D 0 - I - 0x02195E 08:994E: 88        .byte $88   ; 
- D 0 - I - 0x02195F 08:994F: E3        .byte $E3   ; 
- D 0 - I - 0x021960 08:9950: 83        .byte $83   ; 
- D 0 - I - 0x021961 08:9951: F3        .byte $F3   ; 
- D 0 - I - 0x021962 08:9952: E4        .byte $E4   ; 
- D 0 - I - 0x021963 08:9953: 83        .byte $83   ; 
- D 0 - I - 0x021964 08:9954: E3        .byte $E3   ; 
- D 0 - I - 0x021965 08:9955: F0        .byte $F0   ; 
- D 0 - I - 0x021966 08:9956: 33        .byte $33   ; 
- D 0 - I - 0x021967 08:9957: F3        .byte $F3   ; 
- D 0 - I - 0x021968 08:9958: 33        .byte $33   ; 
- D 0 - I - 0x021969 08:9959: F0        .byte $F0   ; 
- D 0 - I - 0x02196A 08:995A: 63        .byte $63   ; 
- D 0 - I - 0x02196B 08:995B: F3        .byte $F3   ; 
- D 0 - I - 0x02196C 08:995C: 63        .byte $63   ; 
- D 0 - I - 0x02196D 08:995D: F0        .byte $F0   ; 
- D 0 - I - 0x02196E 08:995E: 83        .byte $83   ; 
- D 0 - I - 0x02196F 08:995F: F3        .byte $F3   ; 
- D 0 - I - 0x021970 08:9960: 83        .byte $83   ; 
- D 0 - I - 0x021971 08:9961: F0        .byte $F0   ; 
- D 0 - I - 0x021972 08:9962: E9        .byte $E9   ; 
- D 0 - I - 0x021973 08:9963: 00        .byte $00   ; 
- D 0 - I - 0x021974 08:9964: FF        .byte $FF   ; 
off_FD_9965:
- D 0 - I - 0x021975 08:9965: D1        .byte $D1   ; 
- D 0 - I - 0x021976 08:9966: 77        .byte $77   ; 
- D 0 - I - 0x021977 08:9967: 83        .byte $83   ; 
- D 0 - I - 0x021978 08:9968: 45        .byte $45   ; 
- D 0 - I - 0x021979 08:9969: E3        .byte $E3   ; 
- D 0 - I - 0x02197A 08:996A: 86        .byte $86   ; 
- D 0 - I - 0x02197B 08:996B: 86        .byte $86   ; 
- D 0 - I - 0x02197C 08:996C: F4        .byte $F4   ; 
- D 0 - I - 0x02197D 08:996D: 86        .byte $86   ; 
- D 0 - I - 0x02197E 08:996E: F0        .byte $F0   ; 
- D 0 - I - 0x02197F 08:996F: 86        .byte $86   ; 
- D 0 - I - 0x021980 08:9970: 86        .byte $86   ; 
- D 0 - I - 0x021981 08:9971: F4        .byte $F4   ; 
- D 0 - I - 0x021982 08:9972: 86        .byte $86   ; 
- D 0 - I - 0x021983 08:9973: F0        .byte $F0   ; 
- D 0 - I - 0x021984 08:9974: 83        .byte $83   ; 
- D 0 - I - 0x021985 08:9975: F3        .byte $F3   ; 
- D 0 - I - 0x021986 08:9976: 83        .byte $83   ; 
- D 0 - I - 0x021987 08:9977: F0        .byte $F0   ; 
- D 0 - I - 0x021988 08:9978: FF        .byte $FF   ; 
off_FD_9979:
- D 0 - I - 0x021989 08:9979: EB        .byte $EB   ; 
- D 0 - I - 0x02198A 08:997A: 57        .byte $57   ; 
- D 0 - I - 0x02198B 08:997B: 01        .byte $01   ; 
- D 0 - I - 0x02198C 08:997C: EC        .byte $EC   ; 
- D 0 - I - 0x02198D 08:997D: 11        .byte $11   ; 
- D 0 - I - 0x02198E 08:997E: D6        .byte $D6   ; 
- D 0 - I - 0x02198F 08:997F: 77        .byte $77   ; 
- D 0 - I - 0x021990 08:9980: 83        .byte $83   ; 
- D 0 - I - 0x021991 08:9981: 83        .byte $83   ; 
- D 0 - I - 0x021992 08:9982: E3        .byte $E3   ; 
- D 0 - I - 0x021993 08:9983: 12        .byte $12   ; 
- D 0 - I - 0x021994 08:9984: F3        .byte $F3   ; 
- D 0 - I - 0x021995 08:9985: 11        .byte $11   ; 
- D 0 - I - 0x021996 08:9986: F0        .byte $F0   ; 
- D 0 - I - 0x021997 08:9987: E2        .byte $E2   ; 
- D 0 - I - 0x021998 08:9988: 82        .byte $82   ; 
- D 0 - I - 0x021999 08:9989: F3        .byte $F3   ; 
- D 0 - I - 0x02199A 08:998A: 81        .byte $81   ; 
- D 0 - I - 0x02199B 08:998B: F0        .byte $F0   ; 
- D 0 - I - 0x02199C 08:998C: A2        .byte $A2   ; 
- D 0 - I - 0x02199D 08:998D: F3        .byte $F3   ; 
- D 0 - I - 0x02199E 08:998E: A1        .byte $A1   ; 
- D 0 - I - 0x02199F 08:998F: F0        .byte $F0   ; 
- D 0 - I - 0x0219A0 08:9990: 62        .byte $62   ; 
- D 0 - I - 0x0219A1 08:9991: F3        .byte $F3   ; 
- D 0 - I - 0x0219A2 08:9992: 61        .byte $61   ; 
- D 0 - I - 0x0219A3 08:9993: F0        .byte $F0   ; 
- D 0 - I - 0x0219A4 08:9994: EB        .byte $EB   ; 
- D 0 - I - 0x0219A5 08:9995: 00        .byte $00   ; 
- D 0 - I - 0x0219A6 08:9996: FF        .byte $FF   ; 
off_FD_9997:
- D 0 - I - 0x0219A7 08:9997: E9        .byte $E9   ; 
- D 0 - I - 0x0219A8 08:9998: B2        .byte $B2   ; 
- D 0 - I - 0x0219A9 08:9999: D1        .byte $D1   ; 
- D 0 - I - 0x0219AA 08:999A: 36        .byte $36   ; 
- D 0 - I - 0x0219AB 08:999B: 86        .byte $86   ; 
- D 0 - I - 0x0219AC 08:999C: 3A        .byte $3A   ; 
- D 0 - I - 0x0219AD 08:999D: FB        .byte $FB   ; 
- D 0 - I - 0x0219AE 08:999E: F2        .byte $F2   ; 
- D 0 - I - 0x0219AF 08:999F: E2        .byte $E2   ; 
- D 0 - I - 0x0219B0 08:99A0: 36        .byte $36   ; 
- D 0 - I - 0x0219B1 08:99A1: 36        .byte $36   ; 
- D 0 - I - 0x0219B2 08:99A2: F0        .byte $F0   ; 
- D 0 - I - 0x0219B3 08:99A3: A2        .byte $A2   ; 
- D 0 - I - 0x0219B4 08:99A4: F2        .byte $F2   ; 
- D 0 - I - 0x0219B5 08:99A5: A4        .byte $A4   ; 
- D 0 - I - 0x0219B6 08:99A6: FE        .byte $FE   ; 
- D 0 - I - 0x0219B7 08:99A7: 05        .byte $05   ; 
- D 0 - I - 0x0219B8 08:99A8: 36        .byte $36   ; 
- D 0 - I - 0x0219B9 08:99A9: FB        .byte $FB   ; 
- D 0 - I - 0x0219BA 08:99AA: 36        .byte $36   ; 
- D 0 - I - 0x0219BB 08:99AB: 36        .byte $36   ; 
- D 0 - I - 0x0219BC 08:99AC: F0        .byte $F0   ; 
- D 0 - I - 0x0219BD 08:99AD: E3        .byte $E3   ; 
- D 0 - I - 0x0219BE 08:99AE: 02        .byte $02   ; 
- D 0 - I - 0x0219BF 08:99AF: F2        .byte $F2   ; 
- D 0 - I - 0x0219C0 08:99B0: 04        .byte $04   ; 
- D 0 - I - 0x0219C1 08:99B1: E2        .byte $E2   ; 
- D 0 - I - 0x0219C2 08:99B2: FE        .byte $FE   ; 
- D 0 - I - 0x0219C3 08:99B3: 05        .byte $05   ; 
- D 0 - I - 0x0219C4 08:99B4: 36        .byte $36   ; 
- D 0 - I - 0x0219C5 08:99B5: FF        .byte $FF   ; 
off_FD_99B6:
- D 0 - I - 0x0219C6 08:99B6: E9        .byte $E9   ; 
- D 0 - I - 0x0219C7 08:99B7: B2        .byte $B2   ; 
- D 0 - I - 0x0219C8 08:99B8: D1        .byte $D1   ; 
- D 0 - I - 0x0219C9 08:99B9: 34        .byte $34   ; 
- D 0 - I - 0x0219CA 08:99BA: 86        .byte $86   ; 
- D 0 - I - 0x0219CB 08:99BB: 3A        .byte $3A   ; 
- D 0 - I - 0x0219CC 08:99BC: FB        .byte $FB   ; 
- D 0 - I - 0x0219CD 08:99BD: E1        .byte $E1   ; 
- D 0 - I - 0x0219CE 08:99BE: 36        .byte $36   ; 
- D 0 - I - 0x0219CF 08:99BF: 36        .byte $36   ; 
- D 0 - I - 0x0219D0 08:99C0: 62        .byte $62   ; 
- D 0 - I - 0x0219D1 08:99C1: A4        .byte $A4   ; 
- D 0 - I - 0x0219D2 08:99C2: FE        .byte $FE   ; 
- D 0 - I - 0x0219D3 08:99C3: 05        .byte $05   ; 
- D 0 - I - 0x0219D4 08:99C4: 36        .byte $36   ; 
- D 0 - I - 0x0219D5 08:99C5: FB        .byte $FB   ; 
- D 0 - I - 0x0219D6 08:99C6: 36        .byte $36   ; 
- D 0 - I - 0x0219D7 08:99C7: 36        .byte $36   ; 
- D 0 - I - 0x0219D8 08:99C8: 62        .byte $62   ; 
- D 0 - I - 0x0219D9 08:99C9: 84        .byte $84   ; 
- D 0 - I - 0x0219DA 08:99CA: FE        .byte $FE   ; 
- D 0 - I - 0x0219DB 08:99CB: 05        .byte $05   ; 
- D 0 - I - 0x0219DC 08:99CC: 36        .byte $36   ; 
- D 0 - I - 0x0219DD 08:99CD: E9        .byte $E9   ; 
- D 0 - I - 0x0219DE 08:99CE: 00        .byte $00   ; 
- D 0 - I - 0x0219DF 08:99CF: FF        .byte $FF   ; 
off_FD_99D0:
- D 0 - I - 0x0219E0 08:99D0: EC        .byte $EC   ; 
- D 0 - I - 0x0219E1 08:99D1: 22        .byte $22   ; 
- D 0 - I - 0x0219E2 08:99D2: D1        .byte $D1   ; 
- D 0 - I - 0x0219E3 08:99D3: B4        .byte $B4   ; 
- D 0 - I - 0x0219E4 08:99D4: 83        .byte $83   ; 
- D 0 - I - 0x0219E5 08:99D5: 85        .byte $85   ; 
- D 0 - I - 0x0219E6 08:99D6: E1        .byte $E1   ; 
- D 0 - I - 0x0219E7 08:99D7: 36        .byte $36   ; 
- D 0 - I - 0x0219E8 08:99D8: 36        .byte $36   ; 
- D 0 - I - 0x0219E9 08:99D9: E2        .byte $E2   ; 
- D 0 - I - 0x0219EA 08:99DA: 36        .byte $36   ; 
- D 0 - I - 0x0219EB 08:99DB: E1        .byte $E1   ; 
- D 0 - I - 0x0219EC 08:99DC: 36        .byte $36   ; 
- D 0 - I - 0x0219ED 08:99DD: E2        .byte $E2   ; 
- D 0 - I - 0x0219EE 08:99DE: 16        .byte $16   ; 
- D 0 - I - 0x0219EF 08:99DF: E1        .byte $E1   ; 
- D 0 - I - 0x0219F0 08:99E0: 36        .byte $36   ; 
- D 0 - I - 0x0219F1 08:99E1: 36        .byte $36   ; 
- D 0 - I - 0x0219F2 08:99E2: E2        .byte $E2   ; 
- D 0 - I - 0x0219F3 08:99E3: 36        .byte $36   ; 
- D 0 - I - 0x0219F4 08:99E4: E1        .byte $E1   ; 
- D 0 - I - 0x0219F5 08:99E5: 36        .byte $36   ; 
- D 0 - I - 0x0219F6 08:99E6: E2        .byte $E2   ; 
- D 0 - I - 0x0219F7 08:99E7: 36        .byte $36   ; 
- D 0 - I - 0x0219F8 08:99E8: E1        .byte $E1   ; 
- D 0 - I - 0x0219F9 08:99E9: 36        .byte $36   ; 
- D 0 - I - 0x0219FA 08:99EA: E2        .byte $E2   ; 
- D 0 - I - 0x0219FB 08:99EB: 16        .byte $16   ; 
- D 0 - I - 0x0219FC 08:99EC: FF        .byte $FF   ; 
off_FD_99ED:
- D 0 - I - 0x0219FD 08:99ED: E1        .byte $E1   ; 
- D 0 - I - 0x0219FE 08:99EE: A6        .byte $A6   ; 
- D 0 - I - 0x0219FF 08:99EF: 36        .byte $36   ; 
- D 0 - I - 0x021A00 08:99F0: 86        .byte $86   ; 
- D 0 - I - 0x021A01 08:99F1: A6        .byte $A6   ; 
- D 0 - I - 0x021A02 08:99F2: FF        .byte $FF   ; 
off_FD_99F3:
- D 0 - I - 0x021A03 08:99F3: E2        .byte $E2   ; 
- D 0 - I - 0x021A04 08:99F4: 36        .byte $36   ; 
- D 0 - I - 0x021A05 08:99F5: E1        .byte $E1   ; 
- D 0 - I - 0x021A06 08:99F6: 36        .byte $36   ; 
- D 0 - I - 0x021A07 08:99F7: E2        .byte $E2   ; 
- D 0 - I - 0x021A08 08:99F8: 56        .byte $56   ; 
- D 0 - I - 0x021A09 08:99F9: 66        .byte $66   ; 
- D 0 - I - 0x021A0A 08:99FA: FF        .byte $FF   ; 
off_FD_99FB:
- D 0 - I - 0x021A0B 08:99FB: D1        .byte $D1   ; 
- D 0 - I - 0x021A0C 08:99FC: 34        .byte $34   ; 
- D 0 - I - 0x021A0D 08:99FD: 86        .byte $86   ; 
- D 0 - I - 0x021A0E 08:99FE: 3A        .byte $3A   ; 
- D 0 - I - 0x021A0F 08:99FF: FB        .byte $FB   ; 
- D 0 - I - 0x021A10 08:9A00: F0        .byte $F0   ; 
- D 0 - I - 0x021A11 08:9A01: E1        .byte $E1   ; 
- D 0 - I - 0x021A12 08:9A02: 53        .byte $53   ; 
- D 0 - I - 0x021A13 08:9A03: A9        .byte $A9   ; 
- D 0 - I - 0x021A14 08:9A04: F3        .byte $F3   ; 
- D 0 - I - 0x021A15 08:9A05: A6        .byte $A6   ; 
- D 0 - I - 0x021A16 08:9A06: FE        .byte $FE   ; 
- D 0 - I - 0x021A17 08:9A07: 04        .byte $04   ; 
- D 0 - I - 0x021A18 08:9A08: F0        .byte $F0   ; 
- D 0 - I - 0x021A19 08:9A09: 53        .byte $53   ; 
- D 0 - I - 0x021A1A 08:9A0A: A9        .byte $A9   ; 
- D 0 - I - 0x021A1B 08:9A0B: 53        .byte $53   ; 
- D 0 - I - 0x021A1C 08:9A0C: A9        .byte $A9   ; 
- D 0 - I - 0x021A1D 08:9A0D: FF        .byte $FF   ; 
off_FD_9A0E:
- D 0 - I - 0x021A1E 08:9A0E: D1        .byte $D1   ; 
- D 0 - I - 0x021A1F 08:9A0F: 34        .byte $34   ; 
- D 0 - I - 0x021A20 08:9A10: 86        .byte $86   ; 
- D 0 - I - 0x021A21 08:9A11: 3A        .byte $3A   ; 
- D 0 - I - 0x021A22 08:9A12: FB        .byte $FB   ; 
- D 0 - I - 0x021A23 08:9A13: F0        .byte $F0   ; 
- D 0 - I - 0x021A24 08:9A14: E1        .byte $E1   ; 
- D 0 - I - 0x021A25 08:9A15: 83        .byte $83   ; 
- D 0 - I - 0x021A26 08:9A16: E2        .byte $E2   ; 
- D 0 - I - 0x021A27 08:9A17: 09        .byte $09   ; 
- D 0 - I - 0x021A28 08:9A18: F3        .byte $F3   ; 
- D 0 - I - 0x021A29 08:9A19: 06        .byte $06   ; 
- D 0 - I - 0x021A2A 08:9A1A: FE        .byte $FE   ; 
- D 0 - I - 0x021A2B 08:9A1B: 04        .byte $04   ; 
- D 0 - I - 0x021A2C 08:9A1C: F0        .byte $F0   ; 
- D 0 - I - 0x021A2D 08:9A1D: E1        .byte $E1   ; 
- D 0 - I - 0x021A2E 08:9A1E: 83        .byte $83   ; 
- D 0 - I - 0x021A2F 08:9A1F: E2        .byte $E2   ; 
- D 0 - I - 0x021A30 08:9A20: 09        .byte $09   ; 
- D 0 - I - 0x021A31 08:9A21: E1        .byte $E1   ; 
- D 0 - I - 0x021A32 08:9A22: 83        .byte $83   ; 
- D 0 - I - 0x021A33 08:9A23: E2        .byte $E2   ; 
- D 0 - I - 0x021A34 08:9A24: 09        .byte $09   ; 
- D 0 - I - 0x021A35 08:9A25: FF        .byte $FF   ; 
off_FD_9A26:
- D 0 - I - 0x021A36 08:9A26: D1        .byte $D1   ; 
- D 0 - I - 0x021A37 08:9A27: 34        .byte $34   ; 
- D 0 - I - 0x021A38 08:9A28: 86        .byte $86   ; 
- D 0 - I - 0x021A39 08:9A29: 3A        .byte $3A   ; 
- D 0 - I - 0x021A3A 08:9A2A: FB        .byte $FB   ; 
- D 0 - I - 0x021A3B 08:9A2B: F0        .byte $F0   ; 
- D 0 - I - 0x021A3C 08:9A2C: E1        .byte $E1   ; 
- D 0 - I - 0x021A3D 08:9A2D: A3        .byte $A3   ; 
- D 0 - I - 0x021A3E 08:9A2E: E2        .byte $E2   ; 
- D 0 - I - 0x021A3F 08:9A2F: 19        .byte $19   ; 
- D 0 - I - 0x021A40 08:9A30: F3        .byte $F3   ; 
- D 0 - I - 0x021A41 08:9A31: 16        .byte $16   ; 
- D 0 - I - 0x021A42 08:9A32: F0        .byte $F0   ; 
- D 0 - I - 0x021A43 08:9A33: FE        .byte $FE   ; 
- D 0 - I - 0x021A44 08:9A34: 04        .byte $04   ; 
- D 0 - I - 0x021A45 08:9A35: E1        .byte $E1   ; 
- D 0 - I - 0x021A46 08:9A36: A3        .byte $A3   ; 
- D 0 - I - 0x021A47 08:9A37: E2        .byte $E2   ; 
- D 0 - I - 0x021A48 08:9A38: 19        .byte $19   ; 
- D 0 - I - 0x021A49 08:9A39: E1        .byte $E1   ; 
- D 0 - I - 0x021A4A 08:9A3A: A3        .byte $A3   ; 
- D 0 - I - 0x021A4B 08:9A3B: E2        .byte $E2   ; 
- D 0 - I - 0x021A4C 08:9A3C: 19        .byte $19   ; 
- D 0 - I - 0x021A4D 08:9A3D: FF        .byte $FF   ; 
off_FD_9A3E:
- D 0 - I - 0x021A4E 08:9A3E: D6        .byte $D6   ; 
- D 0 - I - 0x021A4F 08:9A3F: 75        .byte $75   ; 
- D 0 - I - 0x021A50 08:9A40: 83        .byte $83   ; 
- D 0 - I - 0x021A51 08:9A41: 33        .byte $33   ; 
- D 0 - I - 0x021A52 08:9A42: E2        .byte $E2   ; 
- D 0 - I - 0x021A53 08:9A43: A2        .byte $A2   ; 
- D 0 - I - 0x021A54 08:9A44: 81        .byte $81   ; 
- D 0 - I - 0x021A55 08:9A45: EB        .byte $EB   ; 
- D 0 - I - 0x021A56 08:9A46: 51        .byte $51   ; 
- D 0 - I - 0x021A57 08:9A47: 62        .byte $62   ; 
- D 0 - I - 0x021A58 08:9A48: 62        .byte $62   ; 
- D 0 - I - 0x021A59 08:9A49: EB        .byte $EB   ; 
- D 0 - I - 0x021A5A 08:9A4A: 00        .byte $00   ; 
- D 0 - I - 0x021A5B 08:9A4B: 11        .byte $11   ; 
- D 0 - I - 0x021A5C 08:9A4C: 51        .byte $51   ; 
- D 0 - I - 0x021A5D 08:9A4D: 62        .byte $62   ; 
- D 0 - I - 0x021A5E 08:9A4E: A2        .byte $A2   ; 
- D 0 - I - 0x021A5F 08:9A4F: E3        .byte $E3   ; 
- D 0 - I - 0x021A60 08:9A50: 01        .byte $01   ; 
- D 0 - I - 0x021A61 08:9A51: F3        .byte $F3   ; 
- D 0 - I - 0x021A62 08:9A52: 01        .byte $01   ; 
- D 0 - I - 0x021A63 08:9A53: F0        .byte $F0   ; 
- D 0 - I - 0x021A64 08:9A54: 13        .byte $13   ; 
- D 0 - I - 0x021A65 08:9A55: FF        .byte $FF   ; 
off_FD_9A56:
- D 0 - I - 0x021A66 08:9A56: E9        .byte $E9   ; 
- D 0 - I - 0x021A67 08:9A57: B2        .byte $B2   ; 
- D 0 - I - 0x021A68 08:9A58: D1        .byte $D1   ; 
- D 0 - I - 0x021A69 08:9A59: 35        .byte $35   ; 
- D 0 - I - 0x021A6A 08:9A5A: 83        .byte $83   ; 
- D 0 - I - 0x021A6B 08:9A5B: 88        .byte $88   ; 
- D 0 - I - 0x021A6C 08:9A5C: E3        .byte $E3   ; 
- D 0 - I - 0x021A6D 08:9A5D: 33        .byte $33   ; 
- D 0 - I - 0x021A6E 08:9A5E: F3        .byte $F3   ; 
- D 0 - I - 0x021A6F 08:9A5F: 33        .byte $33   ; 
- D 0 - I - 0x021A70 08:9A60: E2        .byte $E2   ; 
- D 0 - I - 0x021A71 08:9A61: F0        .byte $F0   ; 
- D 0 - I - 0x021A72 08:9A62: A3        .byte $A3   ; 
- D 0 - I - 0x021A73 08:9A63: F3        .byte $F3   ; 
- D 0 - I - 0x021A74 08:9A64: A3        .byte $A3   ; 
- D 0 - I - 0x021A75 08:9A65: E3        .byte $E3   ; 
- D 0 - I - 0x021A76 08:9A66: F0        .byte $F0   ; 
- D 0 - I - 0x021A77 08:9A67: 13        .byte $13   ; 
- D 0 - I - 0x021A78 08:9A68: F3        .byte $F3   ; 
- D 0 - I - 0x021A79 08:9A69: 13        .byte $13   ; 
- D 0 - I - 0x021A7A 08:9A6A: F0        .byte $F0   ; 
- D 0 - I - 0x021A7B 08:9A6B: 33        .byte $33   ; 
- D 0 - I - 0x021A7C 08:9A6C: F3        .byte $F3   ; 
- D 0 - I - 0x021A7D 08:9A6D: 33        .byte $33   ; 
- D 0 - I - 0x021A7E 08:9A6E: F0        .byte $F0   ; 
- D 0 - I - 0x021A7F 08:9A6F: E9        .byte $E9   ; 
- D 0 - I - 0x021A80 08:9A70: 00        .byte $00   ; 
- D 0 - I - 0x021A81 08:9A71: FF        .byte $FF   ; 
off_FD_9A72:
- D 0 - I - 0x021A82 08:9A72: D1        .byte $D1   ; 
- D 0 - I - 0x021A83 08:9A73: 35        .byte $35   ; 
- D 0 - I - 0x021A84 08:9A74: 83        .byte $83   ; 
- D 0 - I - 0x021A85 08:9A75: 83        .byte $83   ; 
- D 0 - I - 0x021A86 08:9A76: FB        .byte $FB   ; 
- D 0 - I - 0x021A87 08:9A77: E3        .byte $E3   ; 
- D 0 - I - 0x021A88 08:9A78: 13        .byte $13   ; 
- D 0 - I - 0x021A89 08:9A79: E2        .byte $E2   ; 
- D 0 - I - 0x021A8A 08:9A7A: 83        .byte $83   ; 
- D 0 - I - 0x021A8B 08:9A7B: FE        .byte $FE   ; 
- D 0 - I - 0x021A8C 08:9A7C: 03        .byte $03   ; 
- D 0 - I - 0x021A8D 08:9A7D: FF        .byte $FF   ; 
off_FD_9A7E:
- D 0 - I - 0x021A8E 08:9A7E: D1        .byte $D1   ; 
- D 0 - I - 0x021A8F 08:9A7F: 35        .byte $35   ; 
- D 0 - I - 0x021A90 08:9A80: 83        .byte $83   ; 
- D 0 - I - 0x021A91 08:9A81: 33        .byte $33   ; 
- D 0 - I - 0x021A92 08:9A82: E1        .byte $E1   ; 
- D 0 - I - 0x021A93 08:9A83: 86        .byte $86   ; 
- D 0 - I - 0x021A94 08:9A84: A6        .byte $A6   ; 
- D 0 - I - 0x021A95 08:9A85: E2        .byte $E2   ; 
- D 0 - I - 0x021A96 08:9A86: 16        .byte $16   ; 
- D 0 - I - 0x021A97 08:9A87: EB        .byte $EB   ; 
- D 0 - I - 0x021A98 08:9A88: 52        .byte $52   ; 
- D 0 - I - 0x021A99 08:9A89: 62        .byte $62   ; 
- D 0 - I - 0x021A9A 08:9A8A: FB        .byte $FB   ; 
- D 0 - I - 0x021A9B 08:9A8B: F2        .byte $F2   ; 
- D 0 - I - 0x021A9C 08:9A8C: E2        .byte $E2   ; 
- D 0 - I - 0x021A9D 08:9A8D: 32        .byte $32   ; 
- D 0 - I - 0x021A9E 08:9A8E: E3        .byte $E3   ; 
- D 0 - I - 0x021A9F 08:9A8F: 32        .byte $32   ; 
- D 0 - I - 0x021AA0 08:9A90: F3        .byte $F3   ; 
- D 0 - I - 0x021AA1 08:9A91: E4        .byte $E4   ; 
- D 0 - I - 0x021AA2 08:9A92: 32        .byte $32   ; 
- D 0 - I - 0x021AA3 08:9A93: F0        .byte $F0   ; 
- D 0 - I - 0x021AA4 08:9A94: FE        .byte $FE   ; 
- D 0 - I - 0x021AA5 08:9A95: 10        .byte $10   ; 
- D 0 - I - 0x021AA6 08:9A96: C6        .byte $C6   ; 
- D 0 - I - 0x021AA7 08:9A97: FB        .byte $FB   ; 
- D 0 - I - 0x021AA8 08:9A98: F2        .byte $F2   ; 
- D 0 - I - 0x021AA9 08:9A99: E2        .byte $E2   ; 
- D 0 - I - 0x021AAA 08:9A9A: 52        .byte $52   ; 
- D 0 - I - 0x021AAB 08:9A9B: E3        .byte $E3   ; 
- D 0 - I - 0x021AAC 08:9A9C: 52        .byte $52   ; 
- D 0 - I - 0x021AAD 08:9A9D: F3        .byte $F3   ; 
- D 0 - I - 0x021AAE 08:9A9E: E4        .byte $E4   ; 
- D 0 - I - 0x021AAF 08:9A9F: 52        .byte $52   ; 
- D 0 - I - 0x021AB0 08:9AA0: F0        .byte $F0   ; 
- D 0 - I - 0x021AB1 08:9AA1: FE        .byte $FE   ; 
- D 0 - I - 0x021AB2 08:9AA2: 0C        .byte $0C   ; 
- D 0 - I - 0x021AB3 08:9AA3: E8        .byte $E8   ; 
- D 0 - I - 0x021AB4 08:9AA4: 06        .byte $06   ; 
- D 0 - I - 0x021AB5 08:9AA5: EB        .byte $EB   ; 
- D 0 - I - 0x021AB6 08:9AA6: 00        .byte $00   ; 
- D 0 - I - 0x021AB7 08:9AA7: E3        .byte $E3   ; 
- D 0 - I - 0x021AB8 08:9AA8: 81        .byte $81   ; 
- D 0 - I - 0x021AB9 08:9AA9: F2        .byte $F2   ; 
- D 0 - I - 0x021ABA 08:9AAA: 81        .byte $81   ; 
- D 0 - I - 0x021ABB 08:9AAB: F3        .byte $F3   ; 
- D 0 - I - 0x021ABC 08:9AAC: 81        .byte $81   ; 
- D 0 - I - 0x021ABD 08:9AAD: F4        .byte $F4   ; 
- D 0 - I - 0x021ABE 08:9AAE: 81        .byte $81   ; 
- D 0 - I - 0x021ABF 08:9AAF: FF        .byte $FF   ; 
off_FD_9AB0:
- D 0 - I - 0x021AC0 08:9AB0: FB        .byte $FB   ; 
- D 0 - I - 0x021AC1 08:9AB1: E1        .byte $E1   ; 
- D 0 - I - 0x021AC2 08:9AB2: 31        .byte $31   ; 
- D 0 - I - 0x021AC3 08:9AB3: 32        .byte $32   ; 
- D 0 - I - 0x021AC4 08:9AB4: 31        .byte $31   ; 
- D 0 - I - 0x021AC5 08:9AB5: EB        .byte $EB   ; 
- D 0 - I - 0x021AC6 08:9AB6: 54        .byte $54   ; 
- D 0 - I - 0x021AC7 08:9AB7: 03        .byte $03   ; 
- D 0 - I - 0x021AC8 08:9AB8: 62        .byte $62   ; 
- D 0 - I - 0x021AC9 08:9AB9: EB        .byte $EB   ; 
- D 0 - I - 0x021ACA 08:9ABA: 00        .byte $00   ; 
- D 0 - I - 0x021ACB 08:9ABB: 31        .byte $31   ; 
- D 0 - I - 0x021ACC 08:9ABC: 62        .byte $62   ; 
- D 0 - I - 0x021ACD 08:9ABD: 61        .byte $61   ; 
- D 0 - I - 0x021ACE 08:9ABE: 32        .byte $32   ; 
- D 0 - I - 0x021ACF 08:9ABF: 82        .byte $82   ; 
- D 0 - I - 0x021AD0 08:9AC0: 12        .byte $12   ; 
- D 0 - I - 0x021AD1 08:9AC1: FE        .byte $FE   ; 
- D 0 - I - 0x021AD2 08:9AC2: 02        .byte $02   ; 
- D 0 - I - 0x021AD3 08:9AC3: FF        .byte $FF   ; 
off_FD_9AC4:
- D 0 - I - 0x021AD4 08:9AC4: FB        .byte $FB   ; 
- D 0 - I - 0x021AD5 08:9AC5: E1        .byte $E1   ; 
- D 0 - I - 0x021AD6 08:9AC6: 32        .byte $32   ; 
- D 0 - I - 0x021AD7 08:9AC7: 31        .byte $31   ; 
- D 0 - I - 0x021AD8 08:9AC8: 31        .byte $31   ; 
- D 0 - I - 0x021AD9 08:9AC9: 31        .byte $31   ; 
- D 0 - I - 0x021ADA 08:9ACA: 32        .byte $32   ; 
- D 0 - I - 0x021ADB 08:9ACB: 32        .byte $32   ; 
- D 0 - I - 0x021ADC 08:9ACC: 32        .byte $32   ; 
- D 0 - I - 0x021ADD 08:9ACD: 32        .byte $32   ; 
- D 0 - I - 0x021ADE 08:9ACE: 31        .byte $31   ; 
- D 0 - I - 0x021ADF 08:9ACF: 31        .byte $31   ; 
- D 0 - I - 0x021AE0 08:9AD0: 31        .byte $31   ; 
- D 0 - I - 0x021AE1 08:9AD1: FE        .byte $FE   ; 
- D 0 - I - 0x021AE2 08:9AD2: 02        .byte $02   ; 
- D 0 - I - 0x021AE3 08:9AD3: FF        .byte $FF   ; 
off_FD_9AD4:
- D 0 - I - 0x021AE4 08:9AD4: E1        .byte $E1   ; 
- D 0 - I - 0x021AE5 08:9AD5: A1        .byte $A1   ; 
- D 0 - I - 0x021AE6 08:9AD6: A1        .byte $A1   ; 
- D 0 - I - 0x021AE7 08:9AD7: A1        .byte $A1   ; 
- D 0 - I - 0x021AE8 08:9AD8: A1        .byte $A1   ; 
- D 0 - I - 0x021AE9 08:9AD9: E2        .byte $E2   ; 
- D 0 - I - 0x021AEA 08:9ADA: A1        .byte $A1   ; 
- D 0 - I - 0x021AEB 08:9ADB: E1        .byte $E1   ; 
- D 0 - I - 0x021AEC 08:9ADC: A2        .byte $A2   ; 
- D 0 - I - 0x021AED 08:9ADD: A2        .byte $A2   ; 
- D 0 - I - 0x021AEE 08:9ADE: A2        .byte $A2   ; 
- D 0 - I - 0x021AEF 08:9ADF: A1        .byte $A1   ; 
- D 0 - I - 0x021AF0 08:9AE0: A2        .byte $A2   ; 
- D 0 - I - 0x021AF1 08:9AE1: FF        .byte $FF   ; 
off_FD_9AE2:
- D 0 - I - 0x021AF2 08:9AE2: E1        .byte $E1   ; 
- D 0 - I - 0x021AF3 08:9AE3: 31        .byte $31   ; 
- D 0 - I - 0x021AF4 08:9AE4: 81        .byte $81   ; 
- D 0 - I - 0x021AF5 08:9AE5: E2        .byte $E2   ; 
- D 0 - I - 0x021AF6 08:9AE6: 11        .byte $11   ; 
- D 0 - I - 0x021AF7 08:9AE7: 32        .byte $32   ; 
- D 0 - I - 0x021AF8 08:9AE8: E1        .byte $E1   ; 
- D 0 - I - 0x021AF9 08:9AE9: 31        .byte $31   ; 
- D 0 - I - 0x021AFA 08:9AEA: 11        .byte $11   ; 
- D 0 - I - 0x021AFB 08:9AEB: 32        .byte $32   ; 
- D 0 - I - 0x021AFC 08:9AEC: 62        .byte $62   ; 
- D 0 - I - 0x021AFD 08:9AED: 82        .byte $82   ; 
- D 0 - I - 0x021AFE 08:9AEE: A3        .byte $A3   ; 
- D 0 - I - 0x021AFF 08:9AEF: 81        .byte $81   ; 
- D 0 - I - 0x021B00 08:9AF0: 31        .byte $31   ; 
- D 0 - I - 0x021B01 08:9AF1: 61        .byte $61   ; 
- D 0 - I - 0x021B02 08:9AF2: 82        .byte $82   ; 
- D 0 - I - 0x021B03 08:9AF3: 31        .byte $31   ; 
- D 0 - I - 0x021B04 08:9AF4: 61        .byte $61   ; 
- D 0 - I - 0x021B05 08:9AF5: 82        .byte $82   ; 
- D 0 - I - 0x021B06 08:9AF6: 31        .byte $31   ; 
- D 0 - I - 0x021B07 08:9AF7: FF        .byte $FF   ; 
off_FD_9AF8:
- D 0 - I - 0x021B08 08:9AF8: E1        .byte $E1   ; 
- D 0 - I - 0x021B09 08:9AF9: DE        .byte $DE   ; 
- D 0 - I - 0x021B0A 08:9AFA: 18        .byte $18   ; 
- D 0 - I - 0x021B0B 08:9AFB: E2        .byte $E2   ; 
- D 0 - I - 0x021B0C 08:9AFC: 1F        .byte $1F   ; 
- D 0 - I - 0x021B0D 08:9AFD: E1        .byte $E1   ; 
- D 0 - I - 0x021B0E 08:9AFE: 8F        .byte $8F   ; 
- D 0 - I - 0x021B0F 08:9AFF: E2        .byte $E2   ; 
- D 0 - I - 0x021B10 08:9B00: 38        .byte $38   ; 
- D 0 - I - 0x021B11 08:9B01: E1        .byte $E1   ; 
- D 0 - I - 0x021B12 08:9B02: AF        .byte $AF   ; 
- D 0 - I - 0x021B13 08:9B03: E2        .byte $E2   ; 
- D 0 - I - 0x021B14 08:9B04: 5A        .byte $5A   ; 
- D 0 - I - 0x021B15 08:9B05: E1        .byte $E1   ; 
- D 0 - I - 0x021B16 08:9B06: 6F        .byte $6F   ; 
- D 0 - I - 0x021B17 08:9B07: E2        .byte $E2   ; 
- D 0 - I - 0x021B18 08:9B08: 16        .byte $16   ; 
- D 0 - I - 0x021B19 08:9B09: E1        .byte $E1   ; 
- D 0 - I - 0x021B1A 08:9B0A: BF        .byte $BF   ; 
- D 0 - I - 0x021B1B 08:9B0B: E2        .byte $E2   ; 
- D 0 - I - 0x021B1C 08:9B0C: 6B        .byte $6B   ; 
- D 0 - I - 0x021B1D 08:9B0D: E1        .byte $E1   ; 
- D 0 - I - 0x021B1E 08:9B0E: 6F        .byte $6F   ; 
- D 0 - I - 0x021B1F 08:9B0F: E2        .byte $E2   ; 
- D 0 - I - 0x021B20 08:9B10: 16        .byte $16   ; 
- D 0 - I - 0x021B21 08:9B11: E1        .byte $E1   ; 
- D 0 - I - 0x021B22 08:9B12: 8F        .byte $8F   ; 
- D 0 - I - 0x021B23 08:9B13: E2        .byte $E2   ; 
- D 0 - I - 0x021B24 08:9B14: 38        .byte $38   ; 
- D 0 - I - 0x021B25 08:9B15: E1        .byte $E1   ; 
- D 0 - I - 0x021B26 08:9B16: 4B        .byte $4B   ; 
- D 0 - I - 0x021B27 08:9B17: E2        .byte $E2   ; 
- D 0 - I - 0x021B28 08:9B18: 4F        .byte $4F   ; 
- D 0 - I - 0x021B29 08:9B19: E1        .byte $E1   ; 
- D 0 - I - 0x021B2A 08:9B1A: 9F        .byte $9F   ; 
- D 0 - I - 0x021B2B 08:9B1B: E2        .byte $E2   ; 
- D 0 - I - 0x021B2C 08:9B1C: 49        .byte $49   ; 
- D 0 - I - 0x021B2D 08:9B1D: E1        .byte $E1   ; 
- D 0 - I - 0x021B2E 08:9B1E: 4B        .byte $4B   ; 
- D 0 - I - 0x021B2F 08:9B1F: E2        .byte $E2   ; 
- D 0 - I - 0x021B30 08:9B20: 4F        .byte $4F   ; 
- D 0 - I - 0x021B31 08:9B21: E1        .byte $E1   ; 
- D 0 - I - 0x021B32 08:9B22: 6F        .byte $6F   ; 
- D 0 - I - 0x021B33 08:9B23: E2        .byte $E2   ; 
- D 0 - I - 0x021B34 08:9B24: 16        .byte $16   ; 
- D 0 - I - 0x021B35 08:9B25: E1        .byte $E1   ; 
- D 0 - I - 0x021B36 08:9B26: 29        .byte $29   ; 
- D 0 - I - 0x021B37 08:9B27: E2        .byte $E2   ; 
- D 0 - I - 0x021B38 08:9B28: 2F        .byte $2F   ; 
- D 0 - I - 0x021B39 08:9B29: E1        .byte $E1   ; 
- D 0 - I - 0x021B3A 08:9B2A: 7F        .byte $7F   ; 
- D 0 - I - 0x021B3B 08:9B2B: E2        .byte $E2   ; 
- D 0 - I - 0x021B3C 08:9B2C: 27        .byte $27   ; 
- D 0 - I - 0x021B3D 08:9B2D: E1        .byte $E1   ; 
- D 0 - I - 0x021B3E 08:9B2E: 29        .byte $29   ; 
- D 0 - I - 0x021B3F 08:9B2F: E2        .byte $E2   ; 
- D 0 - I - 0x021B40 08:9B30: 2F        .byte $2F   ; 
- D 0 - I - 0x021B41 08:9B31: E1        .byte $E1   ; 
- D 0 - I - 0x021B42 08:9B32: 4B        .byte $4B   ; 
- D 0 - I - 0x021B43 08:9B33: E2        .byte $E2   ; 
- D 0 - I - 0x021B44 08:9B34: 4F        .byte $4F   ; 
- D 0 - I - 0x021B45 08:9B35: E1        .byte $E1   ; 
- D 0 - I - 0x021B46 08:9B36: 07        .byte $07   ; 
- D 0 - I - 0x021B47 08:9B37: E2        .byte $E2   ; 
- D 0 - I - 0x021B48 08:9B38: 0F        .byte $0F   ; 
- D 0 - I - 0x021B49 08:9B39: E2        .byte $E2   ; 
- D 0 - I - 0x021B4A 08:9B3A: 13        .byte $13   ; 
- D 0 - I - 0x021B4B 08:9B3B: 67        .byte $67   ; 
- D 0 - I - 0x021B4C 08:9B3C: DE        .byte $DE   ; 
- D 0 - I - 0x021B4D 08:9B3D: FF        .byte $FF   ; 
off_FD_9B3E:
- D 0 - I - 0x021B4E 08:9B3E: D6        .byte $D6   ; 
- D 0 - I - 0x021B4F 08:9B3F: 04        .byte $04   ; 
- D 0 - I - 0x021B50 08:9B40: E1        .byte $E1   ; 
- D 0 - I - 0x021B51 08:9B41: 81        .byte $81   ; 
- D 0 - I - 0x021B52 08:9B42: 31        .byte $31   ; 
- D 0 - I - 0x021B53 08:9B43: 61        .byte $61   ; 
- D 0 - I - 0x021B54 08:9B44: 82        .byte $82   ; 
- D 0 - I - 0x021B55 08:9B45: 31        .byte $31   ; 
- D 0 - I - 0x021B56 08:9B46: 61        .byte $61   ; 
- D 0 - I - 0x021B57 08:9B47: 82        .byte $82   ; 
- D 0 - I - 0x021B58 08:9B48: DE        .byte $DE   ; 
- D 0 - I - 0x021B59 08:9B49: 36        .byte $36   ; 
- D 0 - I - 0x021B5A 08:9B4A: 83        .byte $83   ; 
- D 0 - I - 0x021B5B 08:9B4B: 68        .byte $68   ; 
- D 0 - I - 0x021B5C 08:9B4C: 3A        .byte $3A   ; 
- D 0 - I - 0x021B5D 08:9B4D: 58        .byte $58   ; 
- D 0 - I - 0x021B5E 08:9B4E: DE        .byte $DE   ; 
- D 0 - I - 0x021B5F 08:9B4F: A2        .byte $A2   ; 
- D 0 - I - 0x021B60 08:9B50: 51        .byte $51   ; 
- D 0 - I - 0x021B61 08:9B51: 81        .byte $81   ; 
- D 0 - I - 0x021B62 08:9B52: 91        .byte $91   ; 
- D 0 - I - 0x021B63 08:9B53: A1        .byte $A1   ; 
- D 0 - I - 0x021B64 08:9B54: C3        .byte $C3   ; 
- D 0 - I - 0x021B65 08:9B55: E2        .byte $E2   ; 
- D 0 - I - 0x021B66 08:9B56: 02        .byte $02   ; 
- D 0 - I - 0x021B67 08:9B57: C2        .byte $C2   ; 
- D 0 - I - 0x021B68 08:9B58: FF        .byte $FF   ; 
off_FD_9B59:
- D 0 - I - 0x021B69 08:9B59: D1        .byte $D1   ; 
- D 0 - I - 0x021B6A 08:9B5A: B6        .byte $B6   ; 
- D 0 - I - 0x021B6B 08:9B5B: 16        .byte $16   ; 
- D 0 - I - 0x021B6C 08:9B5C: 16        .byte $16   ; 
- D 0 - I - 0x021B6D 08:9B5D: 16        .byte $16   ; 
- D 0 - I - 0x021B6E 08:9B5E: 46        .byte $46   ; 
- D 0 - I - 0x021B6F 08:9B5F: 16        .byte $16   ; 
- D 0 - I - 0x021B70 08:9B60: B6        .byte $B6   ; 
- D 0 - I - 0x021B71 08:9B61: 16        .byte $16   ; 
- D 0 - I - 0x021B72 08:9B62: 16        .byte $16   ; 
- D 0 - I - 0x021B73 08:9B63: B6        .byte $B6   ; 
- D 0 - I - 0x021B74 08:9B64: 16        .byte $16   ; 
- D 0 - I - 0x021B75 08:9B65: 16        .byte $16   ; 
- D 0 - I - 0x021B76 08:9B66: 46        .byte $46   ; 
- D 0 - I - 0x021B77 08:9B67: 16        .byte $16   ; 
- D 0 - I - 0x021B78 08:9B68: B6        .byte $B6   ; 
- D 0 - I - 0x021B79 08:9B69: 16        .byte $16   ; 
- D 0 - I - 0x021B7A 08:9B6A: B6        .byte $B6   ; 
- D 0 - I - 0x021B7B 08:9B6B: 16        .byte $16   ; 
- D 0 - I - 0x021B7C 08:9B6C: 16        .byte $16   ; 
- D 0 - I - 0x021B7D 08:9B6D: 16        .byte $16   ; 
- D 0 - I - 0x021B7E 08:9B6E: 46        .byte $46   ; 
- D 0 - I - 0x021B7F 08:9B6F: 16        .byte $16   ; 
- D 0 - I - 0x021B80 08:9B70: B6        .byte $B6   ; 
- D 0 - I - 0x021B81 08:9B71: 46        .byte $46   ; 
- D 0 - I - 0x021B82 08:9B72: 16        .byte $16   ; 
- D 0 - I - 0x021B83 08:9B73: 46        .byte $46   ; 
- D 0 - I - 0x021B84 08:9B74: 16        .byte $16   ; 
- D 0 - I - 0x021B85 08:9B75: 16        .byte $16   ; 
- D 0 - I - 0x021B86 08:9B76: 46        .byte $46   ; 
- D 0 - I - 0x021B87 08:9B77: 16        .byte $16   ; 
- D 0 - I - 0x021B88 08:9B78: B6        .byte $B6   ; 
- D 0 - I - 0x021B89 08:9B79: 16        .byte $16   ; 
- D 0 - I - 0x021B8A 08:9B7A: FF        .byte $FF   ; 
off_FD_9B7B:
- D 0 - I - 0x021B8B 08:9B7B: D6        .byte $D6   ; 
- D 0 - I - 0x021B8C 08:9B7C: B2        .byte $B2   ; 
- D 0 - I - 0x021B8D 08:9B7D: B2        .byte $B2   ; 
- D 0 - I - 0x021B8E 08:9B7E: 42        .byte $42   ; 
- D 0 - I - 0x021B8F 08:9B7F: B1        .byte $B1   ; 
- D 0 - I - 0x021B90 08:9B80: 41        .byte $41   ; 
- D 0 - I - 0x021B91 08:9B81: B1        .byte $B1   ; 
- D 0 - I - 0x021B92 08:9B82: 41        .byte $41   ; 
- D 0 - I - 0x021B93 08:9B83: B2        .byte $B2   ; 
- D 0 - I - 0x021B94 08:9B84: 42        .byte $42   ; 
- D 0 - I - 0x021B95 08:9B85: B1        .byte $B1   ; 
- D 0 - I - 0x021B96 08:9B86: 41        .byte $41   ; 
- D 0 - I - 0x021B97 08:9B87: D1        .byte $D1   ; 
- D 0 - I - 0x021B98 08:9B88: FF        .byte $FF   ; 
off_FD_9B89:
- D 0 - I - 0x021B99 08:9B89: FB        .byte $FB   ; 
- D 0 - I - 0x021B9A 08:9B8A: B6        .byte $B6   ; 
- D 0 - I - 0x021B9B 08:9B8B: 16        .byte $16   ; 
- D 0 - I - 0x021B9C 08:9B8C: 16        .byte $16   ; 
- D 0 - I - 0x021B9D 08:9B8D: 16        .byte $16   ; 
- D 0 - I - 0x021B9E 08:9B8E: 46        .byte $46   ; 
- D 0 - I - 0x021B9F 08:9B8F: 16        .byte $16   ; 
- D 0 - I - 0x021BA0 08:9B90: B6        .byte $B6   ; 
- D 0 - I - 0x021BA1 08:9B91: B1        .byte $B1   ; 
- D 0 - I - 0x021BA2 08:9B92: 15        .byte $15   ; 
- D 0 - I - 0x021BA3 08:9B93: 16        .byte $16   ; 
- D 0 - I - 0x021BA4 08:9B94: 16        .byte $16   ; 
- D 0 - I - 0x021BA5 08:9B95: 16        .byte $16   ; 
- D 0 - I - 0x021BA6 08:9B96: 16        .byte $16   ; 
- D 0 - I - 0x021BA7 08:9B97: 46        .byte $46   ; 
- D 0 - I - 0x021BA8 08:9B98: 16        .byte $16   ; 
- D 0 - I - 0x021BA9 08:9B99: B1        .byte $B1   ; 
- D 0 - I - 0x021BAA 08:9B9A: 15        .byte $15   ; 
- D 0 - I - 0x021BAB 08:9B9B: 16        .byte $16   ; 
- D 0 - I - 0x021BAC 08:9B9C: FE        .byte $FE   ; 
- D 0 - I - 0x021BAD 08:9B9D: 03        .byte $03   ; 
- D 0 - I - 0x021BAE 08:9B9E: FF        .byte $FF   ; 
off_FD_9B9F:
- D 0 - I - 0x021BAF 08:9B9F: D6        .byte $D6   ; 
- D 0 - I - 0x021BB0 08:9BA0: DE        .byte $DE   ; 
- D 0 - I - 0x021BB1 08:9BA1: B1        .byte $B1   ; 
- D 0 - I - 0x021BB2 08:9BA2: B1        .byte $B1   ; 
- D 0 - I - 0x021BB3 08:9BA3: 41        .byte $41   ; 
- D 0 - I - 0x021BB4 08:9BA4: BB        .byte $BB   ; 
- D 0 - I - 0x021BB5 08:9BA5: 1B        .byte $1B   ; 
- D 0 - I - 0x021BB6 08:9BA6: 14        .byte $14   ; 
- D 0 - I - 0x021BB7 08:9BA7: DE        .byte $DE   ; 
- D 0 - I - 0x021BB8 08:9BA8: B1        .byte $B1   ; 
- D 0 - I - 0x021BB9 08:9BA9: D1        .byte $D1   ; 
- D 0 - I - 0x021BBA 08:9BAA: 12        .byte $12   ; 
- D 0 - I - 0x021BBB 08:9BAB: 12        .byte $12   ; 
- D 0 - I - 0x021BBC 08:9BAC: 12        .byte $12   ; 
- D 0 - I - 0x021BBD 08:9BAD: D6        .byte $D6   ; 
- D 0 - I - 0x021BBE 08:9BAE: DE        .byte $DE   ; 
- D 0 - I - 0x021BBF 08:9BAF: 2B        .byte $2B   ; 
- D 0 - I - 0x021BC0 08:9BB0: 44        .byte $44   ; 
- D 0 - I - 0x021BC1 08:9BB1: 14        .byte $14   ; 
- D 0 - I - 0x021BC2 08:9BB2: 41        .byte $41   ; 
- D 0 - I - 0x021BC3 08:9BB3: DE        .byte $DE   ; 
- D 0 - I - 0x021BC4 08:9BB4: 41        .byte $41   ; 
- D 0 - I - 0x021BC5 08:9BB5: 42        .byte $42   ; 
- D 0 - I - 0x021BC6 08:9BB6: FF        .byte $FF   ; 
off_FD_9BB7:
- D 0 - I - 0x021BC7 08:9BB7: D1        .byte $D1   ; 
- D 0 - I - 0x021BC8 08:9BB8: FB        .byte $FB   ; 
- D 0 - I - 0x021BC9 08:9BB9: B1        .byte $B1   ; 
- D 0 - I - 0x021BCA 08:9BBA: 25        .byte $25   ; 
- D 0 - I - 0x021BCB 08:9BBB: 16        .byte $16   ; 
- D 0 - I - 0x021BCC 08:9BBC: 16        .byte $16   ; 
- D 0 - I - 0x021BCD 08:9BBD: FE        .byte $FE   ; 
- D 0 - I - 0x021BCE 08:9BBE: 10        .byte $10   ; 
- D 0 - I - 0x021BCF 08:9BBF: D6        .byte $D6   ; 
- D 0 - I - 0x021BD0 08:9BC0: 41        .byte $41   ; 
- D 0 - I - 0x021BD1 08:9BC1: 41        .byte $41   ; 
- D 0 - I - 0x021BD2 08:9BC2: 41        .byte $41   ; 
- D 0 - I - 0x021BD3 08:9BC3: 41        .byte $41   ; 
- D 0 - I - 0x021BD4 08:9BC4: B2        .byte $B2   ; 
- D 0 - I - 0x021BD5 08:9BC5: B2        .byte $B2   ; 
- D 0 - I - 0x021BD6 08:9BC6: 42        .byte $42   ; 
- D 0 - I - 0x021BD7 08:9BC7: B1        .byte $B1   ; 
- D 0 - I - 0x021BD8 08:9BC8: 41        .byte $41   ; 
- D 0 - I - 0x021BD9 08:9BC9: B1        .byte $B1   ; 
- D 0 - I - 0x021BDA 08:9BCA: 41        .byte $41   ; 
- D 0 - I - 0x021BDB 08:9BCB: B2        .byte $B2   ; 
- D 0 - I - 0x021BDC 08:9BCC: 42        .byte $42   ; 
- D 0 - I - 0x021BDD 08:9BCD: B2        .byte $B2   ; 
- D 0 - I - 0x021BDE 08:9BCE: 42        .byte $42   ; 
- D 0 - I - 0x021BDF 08:9BCF: 41        .byte $41   ; 
- D 0 - I - 0x021BE0 08:9BD0: 42        .byte $42   ; 
- D 0 - I - 0x021BE1 08:9BD1: 41        .byte $41   ; 
- D 0 - I - 0x021BE2 08:9BD2: 42        .byte $42   ; 
- D 0 - I - 0x021BE3 08:9BD3: 44        .byte $44   ; 
- D 0 - I - 0x021BE4 08:9BD4: 11        .byte $11   ; 
- D 0 - I - 0x021BE5 08:9BD5: 11        .byte $11   ; 
- D 0 - I - 0x021BE6 08:9BD6: 21        .byte $21   ; 
- D 0 - I - 0x021BE7 08:9BD7: 11        .byte $11   ; 
- D 0 - I - 0x021BE8 08:9BD8: FF        .byte $FF   ; 



_off001_9BD9_05:
- D 0 - I - 0x021BE9 08:9BD9: EC        .byte $EC   ; 
- D 0 - I - 0x021BEA 08:9BDA: 22        .byte $22   ; 
- D 0 - I - 0x021BEB 08:9BDB: D6        .byte $D6   ; 
- D 0 - I - 0x021BEC 08:9BDC: 36        .byte $36   ; 
- D 0 - I - 0x021BED 08:9BDD: 83        .byte $83   ; 
- D 0 - I - 0x021BEE 08:9BDE: 83        .byte $83   ; 
- D 0 - I - 0x021BEF 08:9BDF: EE        .byte $EE   ; 
- D 0 - I - 0x021BF0 08:9BE0: 0C        .byte $0C   ; 
- D 0 - I - 0x021BF1 08:9BE1: FD        .byte $FD   ; 
- D 0 - I - 0x021BF2 08:9BE2: 1D 9E     .word off_FD_9E1D
- D 0 - I - 0x021BF4 08:9BE4: 41        .byte $41   ; 
- D 0 - I - 0x021BF5 08:9BE5: 71        .byte $71   ; 
- D 0 - I - 0x021BF6 08:9BE6: 81        .byte $81   ; 
- D 0 - I - 0x021BF7 08:9BE7: FD        .byte $FD   ; 
- D 0 - I - 0x021BF8 08:9BE8: 1D 9E     .word off_FD_9E1D
- D 0 - I - 0x021BFA 08:9BEA: E2        .byte $E2   ; 
- D 0 - I - 0x021BFB 08:9BEB: 91        .byte $91   ; 
- D 0 - I - 0x021BFC 08:9BEC: F3        .byte $F3   ; 
- D 0 - I - 0x021BFD 08:9BED: 91        .byte $91   ; 
- D 0 - I - 0x021BFE 08:9BEE: F0        .byte $F0   ; 
- D 0 - I - 0x021BFF 08:9BEF: 91        .byte $91   ; 
- D 0 - I - 0x021C00 08:9BF0: F0        .byte $F0   ; 
- D 0 - I - 0x021C01 08:9BF1: FD        .byte $FD   ; 
- D 0 - I - 0x021C02 08:9BF2: 1D 9E     .word off_FD_9E1D
- D 0 - I - 0x021C04 08:9BF4: FD        .byte $FD   ; 
- D 0 - I - 0x021C05 08:9BF5: 2E 9E     .word off_FD_9E2E
- D 0 - I - 0x021C07 08:9BF7: 92        .byte $92   ; 
- D 0 - I - 0x021C08 08:9BF8: FD        .byte $FD   ; 
- D 0 - I - 0x021C09 08:9BF9: 3B 9E     .word off_FD_9E3B
- D 0 - I - 0x021C0B 08:9BFB: 41        .byte $41   ; 
- D 0 - I - 0x021C0C 08:9BFC: EE        .byte $EE   ; 
- D 0 - I - 0x021C0D 08:9BFD: 00        .byte $00   ; 
off_FF_9BFE:
- D 0 - I - 0x021C0E 08:9BFE: D6        .byte $D6   ; 
- D 0 - I - 0x021C0F 08:9BFF: 78        .byte $78   ; 
- D 0 - I - 0x021C10 08:9C00: 83        .byte $83   ; 
- D 0 - I - 0x021C11 08:9C01: 85        .byte $85   ; 
- D 0 - I - 0x021C12 08:9C02: FD        .byte $FD   ; 
- D 0 - I - 0x021C13 08:9C03: 44 9E     .word off_FD_9E44
- D 0 - I - 0x021C15 08:9C05: D6        .byte $D6   ; 
- D 0 - I - 0x021C16 08:9C06: 38        .byte $38   ; 
- D 0 - I - 0x021C17 08:9C07: 83        .byte $83   ; 
- D 0 - I - 0x021C18 08:9C08: 85        .byte $85   ; 
- D 0 - I - 0x021C19 08:9C09: FD        .byte $FD   ; 
- D 0 - I - 0x021C1A 08:9C0A: 65 9E     .word off_FD_9E65
- D 0 - I - 0x021C1C 08:9C0C: D6        .byte $D6   ; 
- D 0 - I - 0x021C1D 08:9C0D: 78        .byte $78   ; 
- D 0 - I - 0x021C1E 08:9C0E: 85        .byte $85   ; 
- D 0 - I - 0x021C1F 08:9C0F: 85        .byte $85   ; 
- D 0 - I - 0x021C20 08:9C10: FD        .byte $FD   ; 
- D 0 - I - 0x021C21 08:9C11: 7E 9E     .word off_FD_9E7E
- D 0 - I - 0x021C23 08:9C13: FD        .byte $FD   ; 
- D 0 - I - 0x021C24 08:9C14: 98 9E     .word off_FD_9E98
- D 0 - I - 0x021C26 08:9C16: EC        .byte $EC   ; 
- D 0 - I - 0x021C27 08:9C17: 00        .byte $00   ; 
- D 0 - I - 0x021C28 08:9C18: E6        .byte $E6   ; 
- D 0 - I - 0x021C29 08:9C19: 84        .byte $84   ; 
- D 0 - I - 0x021C2A 08:9C1A: EB        .byte $EB   ; 
- D 0 - I - 0x021C2B 08:9C1B: 50        .byte $50   ; 
- D 0 - I - 0x021C2C 08:9C1C: 23        .byte $23   ; 
- D 0 - I - 0x021C2D 08:9C1D: 99        .byte $99   ; 
- D 0 - I - 0x021C2E 08:9C1E: EB        .byte $EB   ; 
- D 0 - I - 0x021C2F 08:9C1F: 00        .byte $00   ; 
- D 0 - I - 0x021C30 08:9C20: EE        .byte $EE   ; 
- D 0 - I - 0x021C31 08:9C21: 01        .byte $01   ; 
- D 0 - I - 0x021C32 08:9C22: D6        .byte $D6   ; 
- D 0 - I - 0x021C33 08:9C23: 78        .byte $78   ; 
- D 0 - I - 0x021C34 08:9C24: 83        .byte $83   ; 
- D 0 - I - 0x021C35 08:9C25: 85        .byte $85   ; 
- D 0 - I - 0x021C36 08:9C26: FD        .byte $FD   ; 
- D 0 - I - 0x021C37 08:9C27: 44 9E     .word off_FD_9E44
- D 0 - I - 0x021C39 08:9C29: D6        .byte $D6   ; 
- D 0 - I - 0x021C3A 08:9C2A: 38        .byte $38   ; 
- D 0 - I - 0x021C3B 08:9C2B: 83        .byte $83   ; 
- D 0 - I - 0x021C3C 08:9C2C: 85        .byte $85   ; 
- D 0 - I - 0x021C3D 08:9C2D: FD        .byte $FD   ; 
- D 0 - I - 0x021C3E 08:9C2E: 65 9E     .word off_FD_9E65
- D 0 - I - 0x021C40 08:9C30: D6        .byte $D6   ; 
- D 0 - I - 0x021C41 08:9C31: 78        .byte $78   ; 
- D 0 - I - 0x021C42 08:9C32: 85        .byte $85   ; 
- D 0 - I - 0x021C43 08:9C33: 85        .byte $85   ; 
- D 0 - I - 0x021C44 08:9C34: EE        .byte $EE   ; 
- D 0 - I - 0x021C45 08:9C35: 00        .byte $00   ; 
- D 0 - I - 0x021C46 08:9C36: FD        .byte $FD   ; 
- D 0 - I - 0x021C47 08:9C37: A9 9E     .word off_FD_9EA9
- D 0 - I - 0x021C49 08:9C39: D6        .byte $D6   ; 
- D 0 - I - 0x021C4A 08:9C3A: 78        .byte $78   ; 
- D 0 - I - 0x021C4B 08:9C3B: 83        .byte $83   ; 
- D 0 - I - 0x021C4C 08:9C3C: 85        .byte $85   ; 
- D 0 - I - 0x021C4D 08:9C3D: FD        .byte $FD   ; 
- D 0 - I - 0x021C4E 08:9C3E: D3 9E     .word off_FD_9ED3
- D 0 - I - 0x021C50 08:9C40: EE        .byte $EE   ; 
- D 0 - I - 0x021C51 08:9C41: 01        .byte $01   ; 
- D 0 - I - 0x021C52 08:9C42: FD        .byte $FD   ; 
- D 0 - I - 0x021C53 08:9C43: FE 9E     .word off_FD_9EFE
- D 0 - I - 0x021C55 08:9C45: D6        .byte $D6   ; 
- D 0 - I - 0x021C56 08:9C46: 36        .byte $36   ; 
- D 0 - I - 0x021C57 08:9C47: 83        .byte $83   ; 
- D 0 - I - 0x021C58 08:9C48: 83        .byte $83   ; 
- D 0 - I - 0x021C59 08:9C49: EE        .byte $EE   ; 
- D 0 - I - 0x021C5A 08:9C4A: 0D        .byte $0D   ; 
- D 0 - I - 0x021C5B 08:9C4B: FD        .byte $FD   ; 
- D 0 - I - 0x021C5C 08:9C4C: 1D 9E     .word off_FD_9E1D
- D 0 - I - 0x021C5E 08:9C4E: 41        .byte $41   ; 
- D 0 - I - 0x021C5F 08:9C4F: 71        .byte $71   ; 
- D 0 - I - 0x021C60 08:9C50: 81        .byte $81   ; 
- D 0 - I - 0x021C61 08:9C51: FD        .byte $FD   ; 
- D 0 - I - 0x021C62 08:9C52: 1D 9E     .word off_FD_9E1D
- D 0 - I - 0x021C64 08:9C54: EB        .byte $EB   ; 
- D 0 - I - 0x021C65 08:9C55: 00        .byte $00   ; 
- D 0 - I - 0x021C66 08:9C56: E2        .byte $E2   ; 
- D 0 - I - 0x021C67 08:9C57: 91        .byte $91   ; 
- D 0 - I - 0x021C68 08:9C58: F3        .byte $F3   ; 
- D 0 - I - 0x021C69 08:9C59: 91        .byte $91   ; 
- D 0 - I - 0x021C6A 08:9C5A: EE        .byte $EE   ; 
- D 0 - I - 0x021C6B 08:9C5B: 0C        .byte $0C   ; 
- D 0 - I - 0x021C6C 08:9C5C: F0        .byte $F0   ; 
- D 0 - I - 0x021C6D 08:9C5D: F0        .byte $F0   ; 
- D 0 - I - 0x021C6E 08:9C5E: 91        .byte $91   ; 
- D 0 - I - 0x021C6F 08:9C5F: FD        .byte $FD   ; 
- D 0 - I - 0x021C70 08:9C60: 1D 9E     .word off_FD_9E1D
- D 0 - I - 0x021C72 08:9C62: FD        .byte $FD   ; 
- D 0 - I - 0x021C73 08:9C63: 2E 9E     .word off_FD_9E2E
- D 0 - I - 0x021C75 08:9C65: 92        .byte $92   ; 
- D 0 - I - 0x021C76 08:9C66: EB        .byte $EB   ; 
- D 0 - I - 0x021C77 08:9C67: 00        .byte $00   ; 
- D 0 - I - 0x021C78 08:9C68: FD        .byte $FD   ; 
- D 0 - I - 0x021C79 08:9C69: 3B 9E     .word off_FD_9E3B
- D 0 - I - 0x021C7B 08:9C6B: 41        .byte $41   ; 
- D 0 - I - 0x021C7C 08:9C6C: EE        .byte $EE   ; 
- D 0 - I - 0x021C7D 08:9C6D: 00        .byte $00   ; 
- D 0 - I - 0x021C7E 08:9C6E: FE        .byte $FE   ; 
- D 0 - I - 0x021C7F 08:9C6F: FF        .byte $FF   ; 
- D 0 - I - 0x021C80 08:9C70: FE 9B     .word off_FF_9BFE



_off001_9C72_04:
- D 0 - I - 0x021C82 08:9C72: EC        .byte $EC   ; 
- D 0 - I - 0x021C83 08:9C73: 22        .byte $22   ; 
- D 0 - I - 0x021C84 08:9C74: D6        .byte $D6   ; 
- D 0 - I - 0x021C85 08:9C75: 36        .byte $36   ; 
- D 0 - I - 0x021C86 08:9C76: 83        .byte $83   ; 
- D 0 - I - 0x021C87 08:9C77: 83        .byte $83   ; 
- D 0 - I - 0x021C88 08:9C78: E3        .byte $E3   ; 
- D 0 - I - 0x021C89 08:9C79: 91        .byte $91   ; 
- D 0 - I - 0x021C8A 08:9C7A: F3        .byte $F3   ; 
- D 0 - I - 0x021C8B 08:9C7B: 91        .byte $91   ; 
- D 0 - I - 0x021C8C 08:9C7C: F4        .byte $F4   ; 
- D 0 - I - 0x021C8D 08:9C7D: 91        .byte $91   ; 
- D 0 - I - 0x021C8E 08:9C7E: F5        .byte $F5   ; 
- D 0 - I - 0x021C8F 08:9C7F: 91        .byte $91   ; 
- D 0 - I - 0x021C90 08:9C80: F0        .byte $F0   ; 
- D 0 - I - 0x021C91 08:9C81: E8        .byte $E8   ; 
- D 0 - I - 0x021C92 08:9C82: 01        .byte $01   ; 
- D 0 - I - 0x021C93 08:9C83: C3        .byte $C3   ; 
- D 0 - I - 0x021C94 08:9C84: ED        .byte $ED   ; 
- D 0 - I - 0x021C95 08:9C85: 81        .byte $81   ; 
- D 0 - I - 0x021C96 08:9C86: E8        .byte $E8   ; 
- D 0 - I - 0x021C97 08:9C87: 06        .byte $06   ; 
- D 0 - I - 0x021C98 08:9C88: EE        .byte $EE   ; 
- D 0 - I - 0x021C99 08:9C89: 0C        .byte $0C   ; 
- D 0 - I - 0x021C9A 08:9C8A: EB        .byte $EB   ; 
- D 0 - I - 0x021C9B 08:9C8B: 51        .byte $51   ; 
- D 0 - I - 0x021C9C 08:9C8C: 01        .byte $01   ; 
- D 0 - I - 0x021C9D 08:9C8D: E1        .byte $E1   ; 
- D 0 - I - 0x021C9E 08:9C8E: 22        .byte $22   ; 
- D 0 - I - 0x021C9F 08:9C8F: E0        .byte $E0   ; 
- D 0 - I - 0x021CA0 08:9C90: 91        .byte $91   ; 
- D 0 - I - 0x021CA1 08:9C91: E1        .byte $E1   ; 
- D 0 - I - 0x021CA2 08:9C92: 32        .byte $32   ; 
- D 0 - I - 0x021CA3 08:9C93: 21        .byte $21   ; 
- D 0 - I - 0x021CA4 08:9C94: 01        .byte $01   ; 
- D 0 - I - 0x021CA5 08:9C95: E0        .byte $E0   ; 
- D 0 - I - 0x021CA6 08:9C96: 92        .byte $92   ; 
- D 0 - I - 0x021CA7 08:9C97: 41        .byte $41   ; 
- D 0 - I - 0x021CA8 08:9C98: 71        .byte $71   ; 
- D 0 - I - 0x021CA9 08:9C99: 81        .byte $81   ; 
- D 0 - I - 0x021CAA 08:9C9A: FD        .byte $FD   ; 
- D 0 - I - 0x021CAB 08:9C9B: 1D 9E     .word off_FD_9E1D
- D 0 - I - 0x021CAD 08:9C9D: EB        .byte $EB   ; 
- D 0 - I - 0x021CAE 08:9C9E: 00        .byte $00   ; 
- D 0 - I - 0x021CAF 08:9C9F: E2        .byte $E2   ; 
- D 0 - I - 0x021CB0 08:9CA0: 91        .byte $91   ; 
- D 0 - I - 0x021CB1 08:9CA1: F3        .byte $F3   ; 
- D 0 - I - 0x021CB2 08:9CA2: 91        .byte $91   ; 
- D 0 - I - 0x021CB3 08:9CA3: F0        .byte $F0   ; 
- D 0 - I - 0x021CB4 08:9CA4: 91        .byte $91   ; 
- D 0 - I - 0x021CB5 08:9CA5: F3        .byte $F3   ; 
- D 0 - I - 0x021CB6 08:9CA6: 91        .byte $91   ; 
- D 0 - I - 0x021CB7 08:9CA7: F4        .byte $F4   ; 
- D 0 - I - 0x021CB8 08:9CA8: 91        .byte $91   ; 
- D 0 - I - 0x021CB9 08:9CA9: F0        .byte $F0   ; 
- D 0 - I - 0x021CBA 08:9CAA: FD        .byte $FD   ; 
- D 0 - I - 0x021CBB 08:9CAB: 3A 9F     .word off_FD_9F3A
- D 0 - I - 0x021CBD 08:9CAD: FD        .byte $FD   ; 
- D 0 - I - 0x021CBE 08:9CAE: 2E 9E     .word off_FD_9E2E
- D 0 - I - 0x021CC0 08:9CB0: 92        .byte $92   ; 
- D 0 - I - 0x021CC1 08:9CB1: EB        .byte $EB   ; 
- D 0 - I - 0x021CC2 08:9CB2: 00        .byte $00   ; 
- D 0 - I - 0x021CC3 08:9CB3: FD        .byte $FD   ; 
- D 0 - I - 0x021CC4 08:9CB4: 3B 9E     .word off_FD_9E3B
- D 0 - I - 0x021CC6 08:9CB6: EE        .byte $EE   ; 
- D 0 - I - 0x021CC7 08:9CB7: 00        .byte $00   ; 
- D 0 - I - 0x021CC8 08:9CB8: E8        .byte $E8   ; 
- D 0 - I - 0x021CC9 08:9CB9: 01        .byte $01   ; 
- D 0 - I - 0x021CCA 08:9CBA: 43        .byte $43   ; 
off_FF_9CBB:
- D 0 - I - 0x021CCB 08:9CBB: D6        .byte $D6   ; 
- D 0 - I - 0x021CCC 08:9CBC: 36        .byte $36   ; 
- D 0 - I - 0x021CCD 08:9CBD: 83        .byte $83   ; 
- D 0 - I - 0x021CCE 08:9CBE: 83        .byte $83   ; 
- D 0 - I - 0x021CCF 08:9CBF: FD        .byte $FD   ; 
- D 0 - I - 0x021CD0 08:9CC0: 4C 9F     .word off_FD_9F4C
- D 0 - I - 0x021CD2 08:9CC2: D6        .byte $D6   ; 
- D 0 - I - 0x021CD3 08:9CC3: 35        .byte $35   ; 
- D 0 - I - 0x021CD4 08:9CC4: 83        .byte $83   ; 
- D 0 - I - 0x021CD5 08:9CC5: 46        .byte $46   ; 
- D 0 - I - 0x021CD6 08:9CC6: EE        .byte $EE   ; 
- D 0 - I - 0x021CD7 08:9CC7: 85        .byte $85   ; 
- D 0 - I - 0x021CD8 08:9CC8: FD        .byte $FD   ; 
- D 0 - I - 0x021CD9 08:9CC9: 65 9E     .word off_FD_9E65
- D 0 - I - 0x021CDB 08:9CCB: D6        .byte $D6   ; 
- D 0 - I - 0x021CDC 08:9CCC: 35        .byte $35   ; 
- D 0 - I - 0x021CDD 08:9CCD: 83        .byte $83   ; 
- D 0 - I - 0x021CDE 08:9CCE: 84        .byte $84   ; 
- D 0 - I - 0x021CDF 08:9CCF: FD        .byte $FD   ; 
- D 0 - I - 0x021CE0 08:9CD0: 7E 9E     .word off_FD_9E7E
- D 0 - I - 0x021CE2 08:9CD2: FD        .byte $FD   ; 
- D 0 - I - 0x021CE3 08:9CD3: 98 9E     .word off_FD_9E98
- D 0 - I - 0x021CE5 08:9CD5: E9        .byte $E9   ; 
- D 0 - I - 0x021CE6 08:9CD6: B1        .byte $B1   ; 
- D 0 - I - 0x021CE7 08:9CD7: E1        .byte $E1   ; 
- D 0 - I - 0x021CE8 08:9CD8: 92        .byte $92   ; 
- D 0 - I - 0x021CE9 08:9CD9: 91        .byte $91   ; 
- D 0 - I - 0x021CEA 08:9CDA: E2        .byte $E2   ; 
- D 0 - I - 0x021CEB 08:9CDB: 01        .byte $01   ; 
- D 0 - I - 0x021CEC 08:9CDC: E1        .byte $E1   ; 
- D 0 - I - 0x021CED 08:9CDD: 91        .byte $91   ; 
- D 0 - I - 0x021CEE 08:9CDE: E2        .byte $E2   ; 
- D 0 - I - 0x021CEF 08:9CDF: 31        .byte $31   ; 
- D 0 - I - 0x021CF0 08:9CE0: 21        .byte $21   ; 
- D 0 - I - 0x021CF1 08:9CE1: 01        .byte $01   ; 
- D 0 - I - 0x021CF2 08:9CE2: E1        .byte $E1   ; 
- D 0 - I - 0x021CF3 08:9CE3: 91        .byte $91   ; 
- D 0 - I - 0x021CF4 08:9CE4: E9        .byte $E9   ; 
- D 0 - I - 0x021CF5 08:9CE5: 00        .byte $00   ; 
- D 0 - I - 0x021CF6 08:9CE6: EE        .byte $EE   ; 
- D 0 - I - 0x021CF7 08:9CE7: 01        .byte $01   ; 
- D 0 - I - 0x021CF8 08:9CE8: FD        .byte $FD   ; 
- D 0 - I - 0x021CF9 08:9CE9: 4C 9F     .word off_FD_9F4C
- D 0 - I - 0x021CFB 08:9CEB: D6        .byte $D6   ; 
- D 0 - I - 0x021CFC 08:9CEC: 36        .byte $36   ; 
- D 0 - I - 0x021CFD 08:9CED: 83        .byte $83   ; 
- D 0 - I - 0x021CFE 08:9CEE: 46        .byte $46   ; 
- D 0 - I - 0x021CFF 08:9CEF: EE        .byte $EE   ; 
- D 0 - I - 0x021D00 08:9CF0: 84        .byte $84   ; 
- D 0 - I - 0x021D01 08:9CF1: FD        .byte $FD   ; 
- D 0 - I - 0x021D02 08:9CF2: 65 9E     .word off_FD_9E65
- D 0 - I - 0x021D04 08:9CF4: EE        .byte $EE   ; 
- D 0 - I - 0x021D05 08:9CF5: 85        .byte $85   ; 
- D 0 - I - 0x021D06 08:9CF6: D6        .byte $D6   ; 
- D 0 - I - 0x021D07 08:9CF7: 35        .byte $35   ; 
- D 0 - I - 0x021D08 08:9CF8: 83        .byte $83   ; 
- D 0 - I - 0x021D09 08:9CF9: 84        .byte $84   ; 
- D 0 - I - 0x021D0A 08:9CFA: FD        .byte $FD   ; 
- D 0 - I - 0x021D0B 08:9CFB: A9 9E     .word off_FD_9EA9
- D 0 - I - 0x021D0D 08:9CFD: EE        .byte $EE   ; 
- D 0 - I - 0x021D0E 08:9CFE: 85        .byte $85   ; 
- D 0 - I - 0x021D0F 08:9CFF: D6        .byte $D6   ; 
- D 0 - I - 0x021D10 08:9D00: B5        .byte $B5   ; 
- D 0 - I - 0x021D11 08:9D01: 83        .byte $83   ; 
- D 0 - I - 0x021D12 08:9D02: 83        .byte $83   ; 
- D 0 - I - 0x021D13 08:9D03: FD        .byte $FD   ; 
- D 0 - I - 0x021D14 08:9D04: D3 9E     .word off_FD_9ED3
- D 0 - I - 0x021D16 08:9D06: EE        .byte $EE   ; 
- D 0 - I - 0x021D17 08:9D07: 84        .byte $84   ; 
- D 0 - I - 0x021D18 08:9D08: D6        .byte $D6   ; 
- D 0 - I - 0x021D19 08:9D09: B5        .byte $B5   ; 
- D 0 - I - 0x021D1A 08:9D0A: 83        .byte $83   ; 
- D 0 - I - 0x021D1B 08:9D0B: 83        .byte $83   ; 
- D 0 - I - 0x021D1C 08:9D0C: FD        .byte $FD   ; 
- D 0 - I - 0x021D1D 08:9D0D: FE 9E     .word off_FD_9EFE
- D 0 - I - 0x021D1F 08:9D0F: EE        .byte $EE   ; 
- D 0 - I - 0x021D20 08:9D10: 00        .byte $00   ; 
- D 0 - I - 0x021D21 08:9D11: D6        .byte $D6   ; 
- D 0 - I - 0x021D22 08:9D12: 36        .byte $36   ; 
- D 0 - I - 0x021D23 08:9D13: 83        .byte $83   ; 
- D 0 - I - 0x021D24 08:9D14: 83        .byte $83   ; 
- D 0 - I - 0x021D25 08:9D15: EE        .byte $EE   ; 
- D 0 - I - 0x021D26 08:9D16: 01        .byte $01   ; 
- D 0 - I - 0x021D27 08:9D17: E3        .byte $E3   ; 
- D 0 - I - 0x021D28 08:9D18: 91        .byte $91   ; 
- D 0 - I - 0x021D29 08:9D19: F3        .byte $F3   ; 
- D 0 - I - 0x021D2A 08:9D1A: 91        .byte $91   ; 
- D 0 - I - 0x021D2B 08:9D1B: F4        .byte $F4   ; 
- D 0 - I - 0x021D2C 08:9D1C: 91        .byte $91   ; 
- D 0 - I - 0x021D2D 08:9D1D: F5        .byte $F5   ; 
- D 0 - I - 0x021D2E 08:9D1E: 91        .byte $91   ; 
- D 0 - I - 0x021D2F 08:9D1F: F0        .byte $F0   ; 
- D 0 - I - 0x021D30 08:9D20: E8        .byte $E8   ; 
- D 0 - I - 0x021D31 08:9D21: 01        .byte $01   ; 
- D 0 - I - 0x021D32 08:9D22: C3        .byte $C3   ; 
- D 0 - I - 0x021D33 08:9D23: ED        .byte $ED   ; 
- D 0 - I - 0x021D34 08:9D24: 81        .byte $81   ; 
- D 0 - I - 0x021D35 08:9D25: E8        .byte $E8   ; 
- D 0 - I - 0x021D36 08:9D26: 06        .byte $06   ; 
- D 0 - I - 0x021D37 08:9D27: EE        .byte $EE   ; 
- D 0 - I - 0x021D38 08:9D28: 0D        .byte $0D   ; 
- D 0 - I - 0x021D39 08:9D29: EB        .byte $EB   ; 
- D 0 - I - 0x021D3A 08:9D2A: 51        .byte $51   ; 
- D 0 - I - 0x021D3B 08:9D2B: 01        .byte $01   ; 
- D 0 - I - 0x021D3C 08:9D2C: E1        .byte $E1   ; 
- D 0 - I - 0x021D3D 08:9D2D: 22        .byte $22   ; 
- D 0 - I - 0x021D3E 08:9D2E: E0        .byte $E0   ; 
- D 0 - I - 0x021D3F 08:9D2F: 91        .byte $91   ; 
- D 0 - I - 0x021D40 08:9D30: E1        .byte $E1   ; 
- D 0 - I - 0x021D41 08:9D31: 32        .byte $32   ; 
- D 0 - I - 0x021D42 08:9D32: 21        .byte $21   ; 
- D 0 - I - 0x021D43 08:9D33: 01        .byte $01   ; 
- D 0 - I - 0x021D44 08:9D34: E0        .byte $E0   ; 
- D 0 - I - 0x021D45 08:9D35: 92        .byte $92   ; 
- D 0 - I - 0x021D46 08:9D36: 41        .byte $41   ; 
- D 0 - I - 0x021D47 08:9D37: 71        .byte $71   ; 
- D 0 - I - 0x021D48 08:9D38: 81        .byte $81   ; 
- D 0 - I - 0x021D49 08:9D39: FD        .byte $FD   ; 
- D 0 - I - 0x021D4A 08:9D3A: 1D 9E     .word off_FD_9E1D
- D 0 - I - 0x021D4C 08:9D3C: EB        .byte $EB   ; 
- D 0 - I - 0x021D4D 08:9D3D: 00        .byte $00   ; 
- D 0 - I - 0x021D4E 08:9D3E: E2        .byte $E2   ; 
- D 0 - I - 0x021D4F 08:9D3F: 91        .byte $91   ; 
- D 0 - I - 0x021D50 08:9D40: F3        .byte $F3   ; 
- D 0 - I - 0x021D51 08:9D41: 91        .byte $91   ; 
- D 0 - I - 0x021D52 08:9D42: EE        .byte $EE   ; 
- D 0 - I - 0x021D53 08:9D43: 0C        .byte $0C   ; 
- D 0 - I - 0x021D54 08:9D44: F0        .byte $F0   ; 
- D 0 - I - 0x021D55 08:9D45: 91        .byte $91   ; 
- D 0 - I - 0x021D56 08:9D46: F3        .byte $F3   ; 
- D 0 - I - 0x021D57 08:9D47: 91        .byte $91   ; 
- D 0 - I - 0x021D58 08:9D48: F4        .byte $F4   ; 
- D 0 - I - 0x021D59 08:9D49: 91        .byte $91   ; 
- D 0 - I - 0x021D5A 08:9D4A: F0        .byte $F0   ; 
- D 0 - I - 0x021D5B 08:9D4B: FD        .byte $FD   ; 
- D 0 - I - 0x021D5C 08:9D4C: 3A 9F     .word off_FD_9F3A
- D 0 - I - 0x021D5E 08:9D4E: FD        .byte $FD   ; 
- D 0 - I - 0x021D5F 08:9D4F: 2E 9E     .word off_FD_9E2E
- D 0 - I - 0x021D61 08:9D51: 92        .byte $92   ; 
- D 0 - I - 0x021D62 08:9D52: EB        .byte $EB   ; 
- D 0 - I - 0x021D63 08:9D53: 00        .byte $00   ; 
- D 0 - I - 0x021D64 08:9D54: FD        .byte $FD   ; 
- D 0 - I - 0x021D65 08:9D55: 3B 9E     .word off_FD_9E3B
- D 0 - I - 0x021D67 08:9D57: EE        .byte $EE   ; 
- D 0 - I - 0x021D68 08:9D58: 00        .byte $00   ; 
- D 0 - I - 0x021D69 08:9D59: E8        .byte $E8   ; 
- D 0 - I - 0x021D6A 08:9D5A: 01        .byte $01   ; 
- D 0 - I - 0x021D6B 08:9D5B: 43        .byte $43   ; 
- D 0 - I - 0x021D6C 08:9D5C: FE        .byte $FE   ; 
- D 0 - I - 0x021D6D 08:9D5D: FF        .byte $FF   ; 
- D 0 - I - 0x021D6E 08:9D5E: BB 9C     .word off_FF_9CBB



_off001_9D60_06:
- D 0 - I - 0x021D70 08:9D60: D6        .byte $D6   ; 
- D 0 - I - 0x021D71 08:9D61: 03        .byte $03   ; 
- D 0 - I - 0x021D72 08:9D62: FD        .byte $FD   ; 
- D 0 - I - 0x021D73 08:9D63: 1D 9E     .word off_FD_9E1D
- D 0 - I - 0x021D75 08:9D65: 41        .byte $41   ; 
- D 0 - I - 0x021D76 08:9D66: 71        .byte $71   ; 
- D 0 - I - 0x021D77 08:9D67: 81        .byte $81   ; 
- D 0 - I - 0x021D78 08:9D68: FD        .byte $FD   ; 
- D 0 - I - 0x021D79 08:9D69: 1D 9E     .word off_FD_9E1D
- D 0 - I - 0x021D7B 08:9D6B: E2        .byte $E2   ; 
- D 0 - I - 0x021D7C 08:9D6C: 91        .byte $91   ; 
- D 0 - I - 0x021D7D 08:9D6D: C1        .byte $C1   ; 
- D 0 - I - 0x021D7E 08:9D6E: 91        .byte $91   ; 
- D 0 - I - 0x021D7F 08:9D6F: FD        .byte $FD   ; 
- D 0 - I - 0x021D80 08:9D70: 1D 9E     .word off_FD_9E1D
- D 0 - I - 0x021D82 08:9D72: FD        .byte $FD   ; 
- D 0 - I - 0x021D83 08:9D73: 2E 9E     .word off_FD_9E2E
- D 0 - I - 0x021D85 08:9D75: 93        .byte $93   ; 
- D 0 - I - 0x021D86 08:9D76: 41        .byte $41   ; 
- D 0 - I - 0x021D87 08:9D77: 41        .byte $41   ; 
- D 0 - I - 0x021D88 08:9D78: D4        .byte $D4   ; 
- D 0 - I - 0x021D89 08:9D79: 02        .byte $02   ; 
- D 0 - I - 0x021D8A 08:9D7A: E2        .byte $E2   ; 
- D 0 - I - 0x021D8B 08:9D7B: 41        .byte $41   ; 
- D 0 - I - 0x021D8C 08:9D7C: 31        .byte $31   ; 
- D 0 - I - 0x021D8D 08:9D7D: 21        .byte $21   ; 
- D 0 - I - 0x021D8E 08:9D7E: 11        .byte $11   ; 
- D 0 - I - 0x021D8F 08:9D7F: 01        .byte $01   ; 
- D 0 - I - 0x021D90 08:9D80: E1        .byte $E1   ; 
- D 0 - I - 0x021D91 08:9D81: B1        .byte $B1   ; 
off_FF_9D82:
- D 0 - I - 0x021D92 08:9D82: FD        .byte $FD   ; 
- D 0 - I - 0x021D93 08:9D83: 60 9F     .word off_FD_9F60
- D 0 - I - 0x021D95 08:9D85: FD        .byte $FD   ; 
- D 0 - I - 0x021D96 08:9D86: 92 9F     .word off_FD_9F92
- D 0 - I - 0x021D98 08:9D88: FD        .byte $FD   ; 
- D 0 - I - 0x021D99 08:9D89: A8 9F     .word off_FD_9FA8
- D 0 - I - 0x021D9B 08:9D8B: EE        .byte $EE   ; 
- D 0 - I - 0x021D9C 08:9D8C: 01        .byte $01   ; 
- D 0 - I - 0x021D9D 08:9D8D: FD        .byte $FD   ; 
- D 0 - I - 0x021D9E 08:9D8E: 60 9F     .word off_FD_9F60
- D 0 - I - 0x021DA0 08:9D90: EE        .byte $EE   ; 
- D 0 - I - 0x021DA1 08:9D91: 00        .byte $00   ; 
- D 0 - I - 0x021DA2 08:9D92: FD        .byte $FD   ; 
- D 0 - I - 0x021DA3 08:9D93: AF 9F     .word off_FD_9FAF
- D 0 - I - 0x021DA5 08:9D95: E1        .byte $E1   ; 
- D 0 - I - 0x021DA6 08:9D96: FB        .byte $FB   ; 
- D 0 - I - 0x021DA7 08:9D97: A2        .byte $A2   ; 
- D 0 - I - 0x021DA8 08:9D98: 81        .byte $81   ; 
- D 0 - I - 0x021DA9 08:9D99: FE        .byte $FE   ; 
- D 0 - I - 0x021DAA 08:9D9A: 05        .byte $05   ; 
- D 0 - I - 0x021DAB 08:9D9B: A1        .byte $A1   ; 
- D 0 - I - 0x021DAC 08:9D9C: E1        .byte $E1   ; 
- D 0 - I - 0x021DAD 08:9D9D: D2        .byte $D2   ; 
- D 0 - I - 0x021DAE 08:9D9E: 06        .byte $06   ; 
- D 0 - I - 0x021DAF 08:9D9F: DE        .byte $DE   ; 
- D 0 - I - 0x021DB0 08:9DA0: 54        .byte $54   ; 
- D 0 - I - 0x021DB1 08:9DA1: 32        .byte $32   ; 
- D 0 - I - 0x021DB2 08:9DA2: 0F        .byte $0F   ; 
- D 0 - I - 0x021DB3 08:9DA3: E0        .byte $E0   ; 
- D 0 - I - 0x021DB4 08:9DA4: BA        .byte $BA   ; 
- D 0 - I - 0x021DB5 08:9DA5: 98        .byte $98   ; 
- D 0 - I - 0x021DB6 08:9DA6: 76        .byte $76   ; 
- D 0 - I - 0x021DB7 08:9DA7: DE        .byte $DE   ; 
- D 0 - I - 0x021DB8 08:9DA8: 51        .byte $51   ; 
- D 0 - I - 0x021DB9 08:9DA9: D6        .byte $D6   ; 
- D 0 - I - 0x021DBA 08:9DAA: 03        .byte $03   ; 
- D 0 - I - 0x021DBB 08:9DAB: 82        .byte $82   ; 
- D 0 - I - 0x021DBC 08:9DAC: 91        .byte $91   ; 
- D 0 - I - 0x021DBD 08:9DAD: A2        .byte $A2   ; 
- D 0 - I - 0x021DBE 08:9DAE: A1        .byte $A1   ; 
- D 0 - I - 0x021DBF 08:9DAF: E1        .byte $E1   ; 
- D 0 - I - 0x021DC0 08:9DB0: 11        .byte $11   ; 
- D 0 - I - 0x021DC1 08:9DB1: E0        .byte $E0   ; 
- D 0 - I - 0x021DC2 08:9DB2: A1        .byte $A1   ; 
- D 0 - I - 0x021DC3 08:9DB3: E1        .byte $E1   ; 
- D 0 - I - 0x021DC4 08:9DB4: 41        .byte $41   ; 
- D 0 - I - 0x021DC5 08:9DB5: 31        .byte $31   ; 
- D 0 - I - 0x021DC6 08:9DB6: 11        .byte $11   ; 
- D 0 - I - 0x021DC7 08:9DB7: E0        .byte $E0   ; 
- D 0 - I - 0x021DC8 08:9DB8: A1        .byte $A1   ; 
- D 0 - I - 0x021DC9 08:9DB9: FB        .byte $FB   ; 
- D 0 - I - 0x021DCA 08:9DBA: E1        .byte $E1   ; 
- D 0 - I - 0x021DCB 08:9DBB: B2        .byte $B2   ; 
- D 0 - I - 0x021DCC 08:9DBC: 91        .byte $91   ; 
- D 0 - I - 0x021DCD 08:9DBD: FE        .byte $FE   ; 
- D 0 - I - 0x021DCE 08:9DBE: 05        .byte $05   ; 
- D 0 - I - 0x021DCF 08:9DBF: B1        .byte $B1   ; 
- D 0 - I - 0x021DD0 08:9DC0: FB        .byte $FB   ; 
- D 0 - I - 0x021DD1 08:9DC1: E0        .byte $E0   ; 
- D 0 - I - 0x021DD2 08:9DC2: 61        .byte $61   ; 
- D 0 - I - 0x021DD3 08:9DC3: E1        .byte $E1   ; 
- D 0 - I - 0x021DD4 08:9DC4: 11        .byte $11   ; 
- D 0 - I - 0x021DD5 08:9DC5: 61        .byte $61   ; 
- D 0 - I - 0x021DD6 08:9DC6: E0        .byte $E0   ; 
- D 0 - I - 0x021DD7 08:9DC7: 41        .byte $41   ; 
- D 0 - I - 0x021DD8 08:9DC8: B1        .byte $B1   ; 
- D 0 - I - 0x021DD9 08:9DC9: E1        .byte $E1   ; 
- D 0 - I - 0x021DDA 08:9DCA: 41        .byte $41   ; 
- D 0 - I - 0x021DDB 08:9DCB: FE        .byte $FE   ; 
- D 0 - I - 0x021DDC 08:9DCC: 02        .byte $02   ; 
- D 0 - I - 0x021DDD 08:9DCD: 61        .byte $61   ; 
- D 0 - I - 0x021DDE 08:9DCE: C1        .byte $C1   ; 
- D 0 - I - 0x021DDF 08:9DCF: 91        .byte $91   ; 
- D 0 - I - 0x021DE0 08:9DD0: C1        .byte $C1   ; 
- D 0 - I - 0x021DE1 08:9DD1: EE        .byte $EE   ; 
- D 0 - I - 0x021DE2 08:9DD2: 01        .byte $01   ; 
- D 0 - I - 0x021DE3 08:9DD3: FD        .byte $FD   ; 
- D 0 - I - 0x021DE4 08:9DD4: 1D 9E     .word off_FD_9E1D
- D 0 - I - 0x021DE6 08:9DD6: 41        .byte $41   ; 
- D 0 - I - 0x021DE7 08:9DD7: 71        .byte $71   ; 
- D 0 - I - 0x021DE8 08:9DD8: 81        .byte $81   ; 
- D 0 - I - 0x021DE9 08:9DD9: FD        .byte $FD   ; 
- D 0 - I - 0x021DEA 08:9DDA: 1D 9E     .word off_FD_9E1D
- D 0 - I - 0x021DEC 08:9DDC: 91        .byte $91   ; 
- D 0 - I - 0x021DED 08:9DDD: C1        .byte $C1   ; 
- D 0 - I - 0x021DEE 08:9DDE: EE        .byte $EE   ; 
- D 0 - I - 0x021DEF 08:9DDF: 00        .byte $00   ; 
- D 0 - I - 0x021DF0 08:9DE0: 91        .byte $91   ; 
- D 0 - I - 0x021DF1 08:9DE1: FD        .byte $FD   ; 
- D 0 - I - 0x021DF2 08:9DE2: 1D 9E     .word off_FD_9E1D
- D 0 - I - 0x021DF4 08:9DE4: FD        .byte $FD   ; 
- D 0 - I - 0x021DF5 08:9DE5: 2E 9E     .word off_FD_9E2E
- D 0 - I - 0x021DF7 08:9DE7: 93        .byte $93   ; 
- D 0 - I - 0x021DF8 08:9DE8: 41        .byte $41   ; 
- D 0 - I - 0x021DF9 08:9DE9: 41        .byte $41   ; 
- D 0 - I - 0x021DFA 08:9DEA: D4        .byte $D4   ; 
- D 0 - I - 0x021DFB 08:9DEB: 02        .byte $02   ; 
- D 0 - I - 0x021DFC 08:9DEC: E2        .byte $E2   ; 
- D 0 - I - 0x021DFD 08:9DED: 41        .byte $41   ; 
- D 0 - I - 0x021DFE 08:9DEE: 31        .byte $31   ; 
- D 0 - I - 0x021DFF 08:9DEF: 21        .byte $21   ; 
- D 0 - I - 0x021E00 08:9DF0: 11        .byte $11   ; 
- D 0 - I - 0x021E01 08:9DF1: 01        .byte $01   ; 
- D 0 - I - 0x021E02 08:9DF2: E1        .byte $E1   ; 
- D 0 - I - 0x021E03 08:9DF3: B1        .byte $B1   ; 
- D 0 - I - 0x021E04 08:9DF4: FE        .byte $FE   ; 
- D 0 - I - 0x021E05 08:9DF5: FF        .byte $FF   ; 
- D 0 - I - 0x021E06 08:9DF6: 82 9D     .word off_FF_9D82



_off001_9DF8_07:
- D 0 - I - 0x021E08 08:9DF8: FD        .byte $FD   ; 
- D 0 - I - 0x021E09 08:9DF9: CA 9F     .word off_FD_9FCA
off_FF_9DFB:
- D 0 - I - 0x021E0B 08:9DFB: FD        .byte $FD   ; 
- D 0 - I - 0x021E0C 08:9DFC: EA 9F     .word off_FD_9FEA
- D 0 - I - 0x021E0E 08:9DFE: FD        .byte $FD   ; 
- D 0 - I - 0x021E0F 08:9DFF: F8 9F     .word off_FD_9FF8
- D 0 - I - 0x021E11 08:9E01: FD        .byte $FD   ; 
- D 0 - I - 0x021E12 08:9E02: 03 A0     .word off_FD_A003
- D 0 - I - 0x021E14 08:9E04: FD        .byte $FD   ; 
- D 0 - I - 0x021E15 08:9E05: 13 A0     .word off_FD_A013
- D 0 - I - 0x021E17 08:9E07: FD        .byte $FD   ; 
- D 0 - I - 0x021E18 08:9E08: F8 9F     .word off_FD_9FF8
- D 0 - I - 0x021E1A 08:9E0A: FD        .byte $FD   ; 
- D 0 - I - 0x021E1B 08:9E0B: 1E A0     .word off_FD_A01E
- D 0 - I - 0x021E1D 08:9E0D: FD        .byte $FD   ; 
- D 0 - I - 0x021E1E 08:9E0E: 29 A0     .word off_FD_A029
- D 0 - I - 0x021E20 08:9E10: FD        .byte $FD   ; 
- D 0 - I - 0x021E21 08:9E11: 1E A0     .word off_FD_A01E
- D 0 - I - 0x021E23 08:9E13: FD        .byte $FD   ; 
- D 0 - I - 0x021E24 08:9E14: 34 A0     .word off_FD_A034
- D 0 - I - 0x021E26 08:9E16: FD        .byte $FD   ; 
- D 0 - I - 0x021E27 08:9E17: CA 9F     .word off_FD_9FCA
- D 0 - I - 0x021E29 08:9E19: FE        .byte $FE   ; 
- D 0 - I - 0x021E2A 08:9E1A: FF        .byte $FF   ; 
- D 0 - I - 0x021E2B 08:9E1B: FB 9D     .word off_FF_9DFB
off_FD_9E1D:
- D 0 - I - 0x021E2D 08:9E1D: E0        .byte $E0   ; 
- D 0 - I - 0x021E2E 08:9E1E: 92        .byte $92   ; 
- D 0 - I - 0x021E2F 08:9E1F: E1        .byte $E1   ; 
- D 0 - I - 0x021E30 08:9E20: 01        .byte $01   ; 
- D 0 - I - 0x021E31 08:9E21: E0        .byte $E0   ; 
- D 0 - I - 0x021E32 08:9E22: 91        .byte $91   ; 
- D 0 - I - 0x021E33 08:9E23: E1        .byte $E1   ; 
- D 0 - I - 0x021E34 08:9E24: 22        .byte $22   ; 
- D 0 - I - 0x021E35 08:9E25: E0        .byte $E0   ; 
- D 0 - I - 0x021E36 08:9E26: 91        .byte $91   ; 
- D 0 - I - 0x021E37 08:9E27: E1        .byte $E1   ; 
- D 0 - I - 0x021E38 08:9E28: 32        .byte $32   ; 
- D 0 - I - 0x021E39 08:9E29: 21        .byte $21   ; 
- D 0 - I - 0x021E3A 08:9E2A: 01        .byte $01   ; 
- D 0 - I - 0x021E3B 08:9E2B: E0        .byte $E0   ; 
- D 0 - I - 0x021E3C 08:9E2C: 92        .byte $92   ; 
- D 0 - I - 0x021E3D 08:9E2D: FF        .byte $FF   ; 
off_FD_9E2E:
- D 0 - I - 0x021E3E 08:9E2E: 41        .byte $41   ; 
- D 0 - I - 0x021E3F 08:9E2F: 71        .byte $71   ; 
- D 0 - I - 0x021E40 08:9E30: 92        .byte $92   ; 
- D 0 - I - 0x021E41 08:9E31: 41        .byte $41   ; 
- D 0 - I - 0x021E42 08:9E32: E1        .byte $E1   ; 
- D 0 - I - 0x021E43 08:9E33: 01        .byte $01   ; 
- D 0 - I - 0x021E44 08:9E34: E1        .byte $E1   ; 
- D 0 - I - 0x021E45 08:9E35: 21        .byte $21   ; 
- D 0 - I - 0x021E46 08:9E36: 31        .byte $31   ; 
- D 0 - I - 0x021E47 08:9E37: 21        .byte $21   ; 
- D 0 - I - 0x021E48 08:9E38: 01        .byte $01   ; 
- D 0 - I - 0x021E49 08:9E39: E0        .byte $E0   ; 
- D 0 - I - 0x021E4A 08:9E3A: FF        .byte $FF   ; 
off_FD_9E3B:
- D 0 - I - 0x021E4B 08:9E3B: E2        .byte $E2   ; 
- D 0 - I - 0x021E4C 08:9E3C: 91        .byte $91   ; 
- D 0 - I - 0x021E4D 08:9E3D: 71        .byte $71   ; 
- D 0 - I - 0x021E4E 08:9E3E: 41        .byte $41   ; 
- D 0 - I - 0x021E4F 08:9E3F: 21        .byte $21   ; 
- D 0 - I - 0x021E50 08:9E40: 01        .byte $01   ; 
- D 0 - I - 0x021E51 08:9E41: E1        .byte $E1   ; 
- D 0 - I - 0x021E52 08:9E42: 91        .byte $91   ; 
- D 0 - I - 0x021E53 08:9E43: FF        .byte $FF   ; 
off_FD_9E44:
- D 0 - I - 0x021E54 08:9E44: EB        .byte $EB   ; 
- D 0 - I - 0x021E55 08:9E45: 51        .byte $51   ; 
- D 0 - I - 0x021E56 08:9E46: 01        .byte $01   ; 
- D 0 - I - 0x021E57 08:9E47: E2        .byte $E2   ; 
- D 0 - I - 0x021E58 08:9E48: 71        .byte $71   ; 
- D 0 - I - 0x021E59 08:9E49: 91        .byte $91   ; 
- D 0 - I - 0x021E5A 08:9E4A: F3        .byte $F3   ; 
- D 0 - I - 0x021E5B 08:9E4B: 91        .byte $91   ; 
- D 0 - I - 0x021E5C 08:9E4C: F0        .byte $F0   ; 
- D 0 - I - 0x021E5D 08:9E4D: 91        .byte $91   ; 
- D 0 - I - 0x021E5E 08:9E4E: F3        .byte $F3   ; 
- D 0 - I - 0x021E5F 08:9E4F: 91        .byte $91   ; 
- D 0 - I - 0x021E60 08:9E50: F0        .byte $F0   ; 
- D 0 - I - 0x021E61 08:9E51: 71        .byte $71   ; 
- D 0 - I - 0x021E62 08:9E52: 91        .byte $91   ; 
- D 0 - I - 0x021E63 08:9E53: E7        .byte $E7   ; 
- D 0 - I - 0x021E64 08:9E54: 00        .byte $00   ; 
- D 0 - I - 0x021E65 08:9E55: EB        .byte $EB   ; 
- D 0 - I - 0x021E66 08:9E56: 54        .byte $54   ; 
- D 0 - I - 0x021E67 08:9E57: 03        .byte $03   ; 
- D 0 - I - 0x021E68 08:9E58: E3        .byte $E3   ; 
- D 0 - I - 0x021E69 08:9E59: 03        .byte $03   ; 
- D 0 - I - 0x021E6A 08:9E5A: D6        .byte $D6   ; 
- D 0 - I - 0x021E6B 08:9E5B: 75        .byte $75   ; 
- D 0 - I - 0x021E6C 08:9E5C: 80        .byte $80   ; 
- D 0 - I - 0x021E6D 08:9E5D: 85        .byte $85   ; 
- D 0 - I - 0x021E6E 08:9E5E: EB        .byte $EB   ; 
- D 0 - I - 0x021E6F 08:9E5F: 51        .byte $51   ; 
- D 0 - I - 0x021E70 08:9E60: 03        .byte $03   ; 
- D 0 - I - 0x021E71 08:9E61: 06        .byte $06   ; 
- D 0 - I - 0x021E72 08:9E62: EB        .byte $EB   ; 
- D 0 - I - 0x021E73 08:9E63: 00        .byte $00   ; 
- D 0 - I - 0x021E74 08:9E64: FF        .byte $FF   ; 
off_FD_9E65:
- D 0 - I - 0x021E75 08:9E65: FB        .byte $FB   ; 
- D 0 - I - 0x021E76 08:9E66: E7        .byte $E7   ; 
- D 0 - I - 0x021E77 08:9E67: 85        .byte $85   ; 
- D 0 - I - 0x021E78 08:9E68: E3        .byte $E3   ; 
- D 0 - I - 0x021E79 08:9E69: EB        .byte $EB   ; 
- D 0 - I - 0x021E7A 08:9E6A: 54        .byte $54   ; 
- D 0 - I - 0x021E7B 08:9E6B: 03        .byte $03   ; 
- D 0 - I - 0x021E7C 08:9E6C: 22        .byte $22   ; 
- D 0 - I - 0x021E7D 08:9E6D: E7        .byte $E7   ; 
- D 0 - I - 0x021E7E 08:9E6E: 87        .byte $87   ; 
- D 0 - I - 0x021E7F 08:9E6F: EB        .byte $EB   ; 
- D 0 - I - 0x021E80 08:9E70: 00        .byte $00   ; 
- D 0 - I - 0x021E81 08:9E71: 02        .byte $02   ; 
- D 0 - I - 0x021E82 08:9E72: FE        .byte $FE   ; 
- D 0 - I - 0x021E83 08:9E73: 02        .byte $02   ; 
- D 0 - I - 0x021E84 08:9E74: 21        .byte $21   ; 
- D 0 - I - 0x021E85 08:9E75: 31        .byte $31   ; 
- D 0 - I - 0x021E86 08:9E76: 21        .byte $21   ; 
- D 0 - I - 0x021E87 08:9E77: 02        .byte $02   ; 
- D 0 - I - 0x021E88 08:9E78: E2        .byte $E2   ; 
- D 0 - I - 0x021E89 08:9E79: 91        .byte $91   ; 
- D 0 - I - 0x021E8A 08:9E7A: 71        .byte $71   ; 
- D 0 - I - 0x021E8B 08:9E7B: E3        .byte $E3   ; 
- D 0 - I - 0x021E8C 08:9E7C: 01        .byte $01   ; 
- D 0 - I - 0x021E8D 08:9E7D: FF        .byte $FF   ; 
off_FD_9E7E:
- D 0 - I - 0x021E8E 08:9E7E: EC        .byte $EC   ; 
- D 0 - I - 0x021E8F 08:9E7F: 13        .byte $13   ; 
- D 0 - I - 0x021E90 08:9E80: E2        .byte $E2   ; 
- D 0 - I - 0x021E91 08:9E81: 91        .byte $91   ; 
- D 0 - I - 0x021E92 08:9E82: 41        .byte $41   ; 
- D 0 - I - 0x021E93 08:9E83: 71        .byte $71   ; 
- D 0 - I - 0x021E94 08:9E84: 91        .byte $91   ; 
- D 0 - I - 0x021E95 08:9E85: E3        .byte $E3   ; 
- D 0 - I - 0x021E96 08:9E86: 01        .byte $01   ; 
- D 0 - I - 0x021E97 08:9E87: 22        .byte $22   ; 
- D 0 - I - 0x021E98 08:9E88: EB        .byte $EB   ; 
- D 0 - I - 0x021E99 08:9E89: 54        .byte $54   ; 
- D 0 - I - 0x021E9A 08:9E8A: 02        .byte $02   ; 
- D 0 - I - 0x021E9B 08:9E8B: 32        .byte $32   ; 
- D 0 - I - 0x021E9C 08:9E8C: EB        .byte $EB   ; 
- D 0 - I - 0x021E9D 08:9E8D: 00        .byte $00   ; 
- D 0 - I - 0x021E9E 08:9E8E: 21        .byte $21   ; 
- D 0 - I - 0x021E9F 08:9E8F: 02        .byte $02   ; 
- D 0 - I - 0x021EA0 08:9E90: E2        .byte $E2   ; 
- D 0 - I - 0x021EA1 08:9E91: 91        .byte $91   ; 
- D 0 - I - 0x021EA2 08:9E92: 41        .byte $41   ; 
- D 0 - I - 0x021EA3 08:9E93: 71        .byte $71   ; 
- D 0 - I - 0x021EA4 08:9E94: 91        .byte $91   ; 
- D 0 - I - 0x021EA5 08:9E95: EC        .byte $EC   ; 
- D 0 - I - 0x021EA6 08:9E96: 00        .byte $00   ; 
- D 0 - I - 0x021EA7 08:9E97: FF        .byte $FF   ; 
off_FD_9E98:
- D 0 - I - 0x021EA8 08:9E98: F0        .byte $F0   ; 
- D 0 - I - 0x021EA9 08:9E99: E3        .byte $E3   ; 
- D 0 - I - 0x021EAA 08:9E9A: 01        .byte $01   ; 
- D 0 - I - 0x021EAB 08:9E9B: E2        .byte $E2   ; 
- D 0 - I - 0x021EAC 08:9E9C: 91        .byte $91   ; 
- D 0 - I - 0x021EAD 08:9E9D: F3        .byte $F3   ; 
- D 0 - I - 0x021EAE 08:9E9E: 91        .byte $91   ; 
- D 0 - I - 0x021EAF 08:9E9F: F0        .byte $F0   ; 
- D 0 - I - 0x021EB0 08:9EA0: 91        .byte $91   ; 
- D 0 - I - 0x021EB1 08:9EA1: F3        .byte $F3   ; 
- D 0 - I - 0x021EB2 08:9EA2: 91        .byte $91   ; 
- D 0 - I - 0x021EB3 08:9EA3: F0        .byte $F0   ; 
- D 0 - I - 0x021EB4 08:9EA4: 41        .byte $41   ; 
- D 0 - I - 0x021EB5 08:9EA5: 71        .byte $71   ; 
- D 0 - I - 0x021EB6 08:9EA6: EC        .byte $EC   ; 
- D 0 - I - 0x021EB7 08:9EA7: 00        .byte $00   ; 
- D 0 - I - 0x021EB8 08:9EA8: FF        .byte $FF   ; 
off_FD_9EA9:
- D 0 - I - 0x021EB9 08:9EA9: EC        .byte $EC   ; 
- D 0 - I - 0x021EBA 08:9EAA: 13        .byte $13   ; 
- D 0 - I - 0x021EBB 08:9EAB: E2        .byte $E2   ; 
- D 0 - I - 0x021EBC 08:9EAC: A1        .byte $A1   ; 
- D 0 - I - 0x021EBD 08:9EAD: 51        .byte $51   ; 
- D 0 - I - 0x021EBE 08:9EAE: 81        .byte $81   ; 
- D 0 - I - 0x021EBF 08:9EAF: A1        .byte $A1   ; 
- D 0 - I - 0x021EC0 08:9EB0: E3        .byte $E3   ; 
- D 0 - I - 0x021EC1 08:9EB1: 11        .byte $11   ; 
- D 0 - I - 0x021EC2 08:9EB2: 32        .byte $32   ; 
- D 0 - I - 0x021EC3 08:9EB3: EB        .byte $EB   ; 
- D 0 - I - 0x021EC4 08:9EB4: 54        .byte $54   ; 
- D 0 - I - 0x021EC5 08:9EB5: 02        .byte $02   ; 
- D 0 - I - 0x021EC6 08:9EB6: 42        .byte $42   ; 
- D 0 - I - 0x021EC7 08:9EB7: 42        .byte $42   ; 
- D 0 - I - 0x021EC8 08:9EB8: 42        .byte $42   ; 
- D 0 - I - 0x021EC9 08:9EB9: EB        .byte $EB   ; 
- D 0 - I - 0x021ECA 08:9EBA: 00        .byte $00   ; 
- D 0 - I - 0x021ECB 08:9EBB: 31        .byte $31   ; 
- D 0 - I - 0x021ECC 08:9EBC: 11        .byte $11   ; 
- D 0 - I - 0x021ECD 08:9EBD: E2        .byte $E2   ; 
- D 0 - I - 0x021ECE 08:9EBE: A1        .byte $A1   ; 
- D 0 - I - 0x021ECF 08:9EBF: E3        .byte $E3   ; 
- D 0 - I - 0x021ED0 08:9EC0: 51        .byte $51   ; 
- D 0 - I - 0x021ED1 08:9EC1: 51        .byte $51   ; 
- D 0 - I - 0x021ED2 08:9EC2: F3        .byte $F3   ; 
- D 0 - I - 0x021ED3 08:9EC3: 51        .byte $51   ; 
- D 0 - I - 0x021ED4 08:9EC4: F0        .byte $F0   ; 
- D 0 - I - 0x021ED5 08:9EC5: 32        .byte $32   ; 
- D 0 - I - 0x021ED6 08:9EC6: 01        .byte $01   ; 
- D 0 - I - 0x021ED7 08:9EC7: 31        .byte $31   ; 
- D 0 - I - 0x021ED8 08:9EC8: EB        .byte $EB   ; 
- D 0 - I - 0x021ED9 08:9EC9: 54        .byte $54   ; 
- D 0 - I - 0x021EDA 08:9ECA: 01        .byte $01   ; 
- D 0 - I - 0x021EDB 08:9ECB: 55        .byte $55   ; 
- D 0 - I - 0x021EDC 08:9ECC: EB        .byte $EB   ; 
- D 0 - I - 0x021EDD 08:9ECD: 50        .byte $50   ; 
- D 0 - I - 0x021EDE 08:9ECE: 01        .byte $01   ; 
- D 0 - I - 0x021EDF 08:9ECF: 84        .byte $84   ; 
- D 0 - I - 0x021EE0 08:9ED0: EB        .byte $EB   ; 
- D 0 - I - 0x021EE1 08:9ED1: 00        .byte $00   ; 
- D 0 - I - 0x021EE2 08:9ED2: FF        .byte $FF   ; 
off_FD_9ED3:
- D 0 - I - 0x021EE3 08:9ED3: E3        .byte $E3   ; 
- D 0 - I - 0x021EE4 08:9ED4: A1        .byte $A1   ; 
- D 0 - I - 0x021EE5 08:9ED5: 51        .byte $51   ; 
- D 0 - I - 0x021EE6 08:9ED6: F3        .byte $F3   ; 
- D 0 - I - 0x021EE7 08:9ED7: 51        .byte $51   ; 
- D 0 - I - 0x021EE8 08:9ED8: F0        .byte $F0   ; 
- D 0 - I - 0x021EE9 08:9ED9: 82        .byte $82   ; 
- D 0 - I - 0x021EEA 08:9EDA: 71        .byte $71   ; 
- D 0 - I - 0x021EEB 08:9EDB: 31        .byte $31   ; 
- D 0 - I - 0x021EEC 08:9EDC: E2        .byte $E2   ; 
- D 0 - I - 0x021EED 08:9EDD: A1        .byte $A1   ; 
- D 0 - I - 0x021EEE 08:9EDE: E3        .byte $E3   ; 
- D 0 - I - 0x021EEF 08:9EDF: 11        .byte $11   ; 
- D 0 - I - 0x021EF0 08:9EE0: 31        .byte $31   ; 
- D 0 - I - 0x021EF1 08:9EE1: F3        .byte $F3   ; 
- D 0 - I - 0x021EF2 08:9EE2: 31        .byte $31   ; 
- D 0 - I - 0x021EF3 08:9EE3: F0        .byte $F0   ; 
- D 0 - I - 0x021EF4 08:9EE4: EB        .byte $EB   ; 
- D 0 - I - 0x021EF5 08:9EE5: 54        .byte $54   ; 
- D 0 - I - 0x021EF6 08:9EE6: 02        .byte $02   ; 
- D 0 - I - 0x021EF7 08:9EE7: 32        .byte $32   ; 
- D 0 - I - 0x021EF8 08:9EE8: EB        .byte $EB   ; 
- D 0 - I - 0x021EF9 08:9EE9: 00        .byte $00   ; 
- D 0 - I - 0x021EFA 08:9EEA: 11        .byte $11   ; 
- D 0 - I - 0x021EFB 08:9EEB: 32        .byte $32   ; 
- D 0 - I - 0x021EFC 08:9EEC: 51        .byte $51   ; 
- D 0 - I - 0x021EFD 08:9EED: F2        .byte $F2   ; 
- D 0 - I - 0x021EFE 08:9EEE: 51        .byte $51   ; 
- D 0 - I - 0x021EFF 08:9EEF: F3        .byte $F3   ; 
- D 0 - I - 0x021F00 08:9EF0: 51        .byte $51   ; 
- D 0 - I - 0x021F01 08:9EF1: F4        .byte $F4   ; 
- D 0 - I - 0x021F02 08:9EF2: 51        .byte $51   ; 
- D 0 - I - 0x021F03 08:9EF3: F0        .byte $F0   ; 
- D 0 - I - 0x021F04 08:9EF4: E2        .byte $E2   ; 
- D 0 - I - 0x021F05 08:9EF5: 82        .byte $82   ; 
- D 0 - I - 0x021F06 08:9EF6: 91        .byte $91   ; 
- D 0 - I - 0x021F07 08:9EF7: EB        .byte $EB   ; 
- D 0 - I - 0x021F08 08:9EF8: 58        .byte $58   ; 
- D 0 - I - 0x021F09 08:9EF9: 45        .byte $45   ; 
- D 0 - I - 0x021F0A 08:9EFA: A9        .byte $A9   ; 
- D 0 - I - 0x021F0B 08:9EFB: EB        .byte $EB   ; 
- D 0 - I - 0x021F0C 08:9EFC: 00        .byte $00   ; 
- D 0 - I - 0x021F0D 08:9EFD: FF        .byte $FF   ; 
off_FD_9EFE:
- D 0 - I - 0x021F0E 08:9EFE: E3        .byte $E3   ; 
- D 0 - I - 0x021F0F 08:9EFF: A1        .byte $A1   ; 
- D 0 - I - 0x021F10 08:9F00: 51        .byte $51   ; 
- D 0 - I - 0x021F11 08:9F01: F3        .byte $F3   ; 
- D 0 - I - 0x021F12 08:9F02: 51        .byte $51   ; 
- D 0 - I - 0x021F13 08:9F03: F0        .byte $F0   ; 
- D 0 - I - 0x021F14 08:9F04: EB        .byte $EB   ; 
- D 0 - I - 0x021F15 08:9F05: 54        .byte $54   ; 
- D 0 - I - 0x021F16 08:9F06: 02        .byte $02   ; 
- D 0 - I - 0x021F17 08:9F07: 82        .byte $82   ; 
- D 0 - I - 0x021F18 08:9F08: EB        .byte $EB   ; 
- D 0 - I - 0x021F19 08:9F09: 00        .byte $00   ; 
- D 0 - I - 0x021F1A 08:9F0A: 71        .byte $71   ; 
- D 0 - I - 0x021F1B 08:9F0B: 31        .byte $31   ; 
- D 0 - I - 0x021F1C 08:9F0C: E2        .byte $E2   ; 
- D 0 - I - 0x021F1D 08:9F0D: A1        .byte $A1   ; 
- D 0 - I - 0x021F1E 08:9F0E: E3        .byte $E3   ; 
- D 0 - I - 0x021F1F 08:9F0F: 11        .byte $11   ; 
- D 0 - I - 0x021F20 08:9F10: 31        .byte $31   ; 
- D 0 - I - 0x021F21 08:9F11: F3        .byte $F3   ; 
- D 0 - I - 0x021F22 08:9F12: 31        .byte $31   ; 
- D 0 - I - 0x021F23 08:9F13: F0        .byte $F0   ; 
- D 0 - I - 0x021F24 08:9F14: EB        .byte $EB   ; 
- D 0 - I - 0x021F25 08:9F15: 50        .byte $50   ; 
- D 0 - I - 0x021F26 08:9F16: 01        .byte $01   ; 
- D 0 - I - 0x021F27 08:9F17: 32        .byte $32   ; 
- D 0 - I - 0x021F28 08:9F18: EB        .byte $EB   ; 
- D 0 - I - 0x021F29 08:9F19: 00        .byte $00   ; 
- D 0 - I - 0x021F2A 08:9F1A: 11        .byte $11   ; 
- D 0 - I - 0x021F2B 08:9F1B: 32        .byte $32   ; 
- D 0 - I - 0x021F2C 08:9F1C: 51        .byte $51   ; 
- D 0 - I - 0x021F2D 08:9F1D: F3        .byte $F3   ; 
- D 0 - I - 0x021F2E 08:9F1E: 51        .byte $51   ; 
- D 0 - I - 0x021F2F 08:9F1F: 51        .byte $51   ; 
- D 0 - I - 0x021F30 08:9F20: F0        .byte $F0   ; 
- D 0 - I - 0x021F31 08:9F21: 31        .byte $31   ; 
- D 0 - I - 0x021F32 08:9F22: F3        .byte $F3   ; 
- D 0 - I - 0x021F33 08:9F23: 31        .byte $31   ; 
- D 0 - I - 0x021F34 08:9F24: 31        .byte $31   ; 
- D 0 - I - 0x021F35 08:9F25: F0        .byte $F0   ; 
- D 0 - I - 0x021F36 08:9F26: 51        .byte $51   ; 
- D 0 - I - 0x021F37 08:9F27: F3        .byte $F3   ; 
- D 0 - I - 0x021F38 08:9F28: 51        .byte $51   ; 
- D 0 - I - 0x021F39 08:9F29: 51        .byte $51   ; 
- D 0 - I - 0x021F3A 08:9F2A: F0        .byte $F0   ; 
- D 0 - I - 0x021F3B 08:9F2B: 31        .byte $31   ; 
- D 0 - I - 0x021F3C 08:9F2C: F3        .byte $F3   ; 
- D 0 - I - 0x021F3D 08:9F2D: 31        .byte $31   ; 
- D 0 - I - 0x021F3E 08:9F2E: 31        .byte $31   ; 
- D 0 - I - 0x021F3F 08:9F2F: F0        .byte $F0   ; 
- D 0 - I - 0x021F40 08:9F30: 51        .byte $51   ; 
- D 0 - I - 0x021F41 08:9F31: F3        .byte $F3   ; 
- D 0 - I - 0x021F42 08:9F32: 51        .byte $51   ; 
- D 0 - I - 0x021F43 08:9F33: F0        .byte $F0   ; 
- D 0 - I - 0x021F44 08:9F34: 81        .byte $81   ; 
- D 0 - I - 0x021F45 08:9F35: F3        .byte $F3   ; 
- D 0 - I - 0x021F46 08:9F36: 81        .byte $81   ; 
- D 0 - I - 0x021F47 08:9F37: EC        .byte $EC   ; 
- D 0 - I - 0x021F48 08:9F38: 00        .byte $00   ; 
- D 0 - I - 0x021F49 08:9F39: FF        .byte $FF   ; 
off_FD_9F3A:
- D 0 - I - 0x021F4A 08:9F3A: EB        .byte $EB   ; 
- D 0 - I - 0x021F4B 08:9F3B: 51        .byte $51   ; 
- D 0 - I - 0x021F4C 08:9F3C: 01        .byte $01   ; 
- D 0 - I - 0x021F4D 08:9F3D: E1        .byte $E1   ; 
- D 0 - I - 0x021F4E 08:9F3E: 01        .byte $01   ; 
- D 0 - I - 0x021F4F 08:9F3F: E0        .byte $E0   ; 
- D 0 - I - 0x021F50 08:9F40: 91        .byte $91   ; 
- D 0 - I - 0x021F51 08:9F41: E1        .byte $E1   ; 
- D 0 - I - 0x021F52 08:9F42: 22        .byte $22   ; 
- D 0 - I - 0x021F53 08:9F43: E0        .byte $E0   ; 
- D 0 - I - 0x021F54 08:9F44: 91        .byte $91   ; 
- D 0 - I - 0x021F55 08:9F45: E1        .byte $E1   ; 
- D 0 - I - 0x021F56 08:9F46: 32        .byte $32   ; 
- D 0 - I - 0x021F57 08:9F47: 21        .byte $21   ; 
- D 0 - I - 0x021F58 08:9F48: 01        .byte $01   ; 
- D 0 - I - 0x021F59 08:9F49: E0        .byte $E0   ; 
- D 0 - I - 0x021F5A 08:9F4A: 92        .byte $92   ; 
- D 0 - I - 0x021F5B 08:9F4B: FF        .byte $FF   ; 
off_FD_9F4C:
- D 0 - I - 0x021F5C 08:9F4C: E1        .byte $E1   ; 
- D 0 - I - 0x021F5D 08:9F4D: 92        .byte $92   ; 
- D 0 - I - 0x021F5E 08:9F4E: E2        .byte $E2   ; 
- D 0 - I - 0x021F5F 08:9F4F: 01        .byte $01   ; 
- D 0 - I - 0x021F60 08:9F50: E1        .byte $E1   ; 
- D 0 - I - 0x021F61 08:9F51: 91        .byte $91   ; 
- D 0 - I - 0x021F62 08:9F52: E2        .byte $E2   ; 
- D 0 - I - 0x021F63 08:9F53: 22        .byte $22   ; 
- D 0 - I - 0x021F64 08:9F54: E1        .byte $E1   ; 
- D 0 - I - 0x021F65 08:9F55: 91        .byte $91   ; 
- D 0 - I - 0x021F66 08:9F56: E2        .byte $E2   ; 
- D 0 - I - 0x021F67 08:9F57: 32        .byte $32   ; 
- D 0 - I - 0x021F68 08:9F58: 21        .byte $21   ; 
- D 0 - I - 0x021F69 08:9F59: 01        .byte $01   ; 
- D 0 - I - 0x021F6A 08:9F5A: E1        .byte $E1   ; 
- D 0 - I - 0x021F6B 08:9F5B: 92        .byte $92   ; 
- D 0 - I - 0x021F6C 08:9F5C: 41        .byte $41   ; 
- D 0 - I - 0x021F6D 08:9F5D: 71        .byte $71   ; 
- D 0 - I - 0x021F6E 08:9F5E: 81        .byte $81   ; 
- D 0 - I - 0x021F6F 08:9F5F: FF        .byte $FF   ; 
off_FD_9F60:
- D 0 - I - 0x021F70 08:9F60: D6        .byte $D6   ; 
- D 0 - I - 0x021F71 08:9F61: 03        .byte $03   ; 
- D 0 - I - 0x021F72 08:9F62: E0        .byte $E0   ; 
- D 0 - I - 0x021F73 08:9F63: 92        .byte $92   ; 
- D 0 - I - 0x021F74 08:9F64: E1        .byte $E1   ; 
- D 0 - I - 0x021F75 08:9F65: 01        .byte $01   ; 
- D 0 - I - 0x021F76 08:9F66: E0        .byte $E0   ; 
- D 0 - I - 0x021F77 08:9F67: 91        .byte $91   ; 
- D 0 - I - 0x021F78 08:9F68: E1        .byte $E1   ; 
- D 0 - I - 0x021F79 08:9F69: 22        .byte $22   ; 
- D 0 - I - 0x021F7A 08:9F6A: E0        .byte $E0   ; 
- D 0 - I - 0x021F7B 08:9F6B: 91        .byte $91   ; 
- D 0 - I - 0x021F7C 08:9F6C: EB        .byte $EB   ; 
- D 0 - I - 0x021F7D 08:9F6D: 54        .byte $54   ; 
- D 0 - I - 0x021F7E 08:9F6E: 06        .byte $06   ; 
- D 0 - I - 0x021F7F 08:9F6F: E1        .byte $E1   ; 
- D 0 - I - 0x021F80 08:9F70: 32        .byte $32   ; 
- D 0 - I - 0x021F81 08:9F71: EB        .byte $EB   ; 
- D 0 - I - 0x021F82 08:9F72: 00        .byte $00   ; 
- D 0 - I - 0x021F83 08:9F73: 21        .byte $21   ; 
- D 0 - I - 0x021F84 08:9F74: 01        .byte $01   ; 
- D 0 - I - 0x021F85 08:9F75: E0        .byte $E0   ; 
- D 0 - I - 0x021F86 08:9F76: 92        .byte $92   ; 
- D 0 - I - 0x021F87 08:9F77: 41        .byte $41   ; 
- D 0 - I - 0x021F88 08:9F78: 71        .byte $71   ; 
- D 0 - I - 0x021F89 08:9F79: 81        .byte $81   ; 
- D 0 - I - 0x021F8A 08:9F7A: E7        .byte $E7   ; 
- D 0 - I - 0x021F8B 08:9F7B: 06        .byte $06   ; 
- D 0 - I - 0x021F8C 08:9F7C: E1        .byte $E1   ; 
- D 0 - I - 0x021F8D 08:9F7D: 22        .byte $22   ; 
- D 0 - I - 0x021F8E 08:9F7E: 02        .byte $02   ; 
- D 0 - I - 0x021F8F 08:9F7F: 22        .byte $22   ; 
- D 0 - I - 0x021F90 08:9F80: 02        .byte $02   ; 
- D 0 - I - 0x021F91 08:9F81: 21        .byte $21   ; 
- D 0 - I - 0x021F92 08:9F82: 31        .byte $31   ; 
- D 0 - I - 0x021F93 08:9F83: 21        .byte $21   ; 
- D 0 - I - 0x021F94 08:9F84: 02        .byte $02   ; 
- D 0 - I - 0x021F95 08:9F85: E0        .byte $E0   ; 
- D 0 - I - 0x021F96 08:9F86: 91        .byte $91   ; 
- D 0 - I - 0x021F97 08:9F87: 71        .byte $71   ; 
- D 0 - I - 0x021F98 08:9F88: 41        .byte $41   ; 
- D 0 - I - 0x021F99 08:9F89: 91        .byte $91   ; 
- D 0 - I - 0x021F9A 08:9F8A: 41        .byte $41   ; 
- D 0 - I - 0x021F9B 08:9F8B: 71        .byte $71   ; 
- D 0 - I - 0x021F9C 08:9F8C: 91        .byte $91   ; 
- D 0 - I - 0x021F9D 08:9F8D: E1        .byte $E1   ; 
- D 0 - I - 0x021F9E 08:9F8E: 01        .byte $01   ; 
- D 0 - I - 0x021F9F 08:9F8F: 22        .byte $22   ; 
- D 0 - I - 0x021FA0 08:9F90: 32        .byte $32   ; 
- D 0 - I - 0x021FA1 08:9F91: FF        .byte $FF   ; 
off_FD_9F92:
- D 0 - I - 0x021FA2 08:9F92: E1        .byte $E1   ; 
- D 0 - I - 0x021FA3 08:9F93: 21        .byte $21   ; 
- D 0 - I - 0x021FA4 08:9F94: 02        .byte $02   ; 
- D 0 - I - 0x021FA5 08:9F95: E0        .byte $E0   ; 
- D 0 - I - 0x021FA6 08:9F96: 91        .byte $91   ; 
- D 0 - I - 0x021FA7 08:9F97: 41        .byte $41   ; 
- D 0 - I - 0x021FA8 08:9F98: 71        .byte $71   ; 
- D 0 - I - 0x021FA9 08:9F99: 91        .byte $91   ; 
- D 0 - I - 0x021FAA 08:9F9A: E1        .byte $E1   ; 
- D 0 - I - 0x021FAB 08:9F9B: 01        .byte $01   ; 
- D 0 - I - 0x021FAC 08:9F9C: E0        .byte $E0   ; 
- D 0 - I - 0x021FAD 08:9F9D: 92        .byte $92   ; 
- D 0 - I - 0x021FAE 08:9F9E: 92        .byte $92   ; 
- D 0 - I - 0x021FAF 08:9F9F: 41        .byte $41   ; 
- D 0 - I - 0x021FB0 08:9FA0: 71        .byte $71   ; 
- D 0 - I - 0x021FB1 08:9FA1: 92        .byte $92   ; 
- D 0 - I - 0x021FB2 08:9FA2: 91        .byte $91   ; 
- D 0 - I - 0x021FB3 08:9FA3: E1        .byte $E1   ; 
- D 0 - I - 0x021FB4 08:9FA4: 01        .byte $01   ; 
- D 0 - I - 0x021FB5 08:9FA5: E0        .byte $E0   ; 
- D 0 - I - 0x021FB6 08:9FA6: 91        .byte $91   ; 
- D 0 - I - 0x021FB7 08:9FA7: FF        .byte $FF   ; 
off_FD_9FA8:
- D 0 - I - 0x021FB8 08:9FA8: E1        .byte $E1   ; 
- D 0 - I - 0x021FB9 08:9FA9: 31        .byte $31   ; 
- D 0 - I - 0x021FBA 08:9FAA: 21        .byte $21   ; 
- D 0 - I - 0x021FBB 08:9FAB: 01        .byte $01   ; 
- D 0 - I - 0x021FBC 08:9FAC: E0        .byte $E0   ; 
- D 0 - I - 0x021FBD 08:9FAD: 91        .byte $91   ; 
- D 0 - I - 0x021FBE 08:9FAE: FF        .byte $FF   ; 
off_FD_9FAF:
- D 0 - I - 0x021FBF 08:9FAF: E1        .byte $E1   ; 
- D 0 - I - 0x021FC0 08:9FB0: 42        .byte $42   ; 
- D 0 - I - 0x021FC1 08:9FB1: 42        .byte $42   ; 
- D 0 - I - 0x021FC2 08:9FB2: 31        .byte $31   ; 
- D 0 - I - 0x021FC3 08:9FB3: 11        .byte $11   ; 
- D 0 - I - 0x021FC4 08:9FB4: E0        .byte $E0   ; 
- D 0 - I - 0x021FC5 08:9FB5: A1        .byte $A1   ; 
- D 0 - I - 0x021FC6 08:9FB6: E1        .byte $E1   ; 
- D 0 - I - 0x021FC7 08:9FB7: 51        .byte $51   ; 
- D 0 - I - 0x021FC8 08:9FB8: 51        .byte $51   ; 
- D 0 - I - 0x021FC9 08:9FB9: C1        .byte $C1   ; 
- D 0 - I - 0x021FCA 08:9FBA: 32        .byte $32   ; 
- D 0 - I - 0x021FCB 08:9FBB: 01        .byte $01   ; 
- D 0 - I - 0x021FCC 08:9FBC: 31        .byte $31   ; 
- D 0 - I - 0x021FCD 08:9FBD: EB        .byte $EB   ; 
- D 0 - I - 0x021FCE 08:9FBE: 54        .byte $54   ; 
- D 0 - I - 0x021FCF 08:9FBF: 01        .byte $01   ; 
- D 0 - I - 0x021FD0 08:9FC0: 55        .byte $55   ; 
- D 0 - I - 0x021FD1 08:9FC1: EB        .byte $EB   ; 
- D 0 - I - 0x021FD2 08:9FC2: 00        .byte $00   ; 
- D 0 - I - 0x021FD3 08:9FC3: E0        .byte $E0   ; 
- D 0 - I - 0x021FD4 08:9FC4: 81        .byte $81   ; 
- D 0 - I - 0x021FD5 08:9FC5: A1        .byte $A1   ; 
- D 0 - I - 0x021FD6 08:9FC6: E1        .byte $E1   ; 
- D 0 - I - 0x021FD7 08:9FC7: 11        .byte $11   ; 
- D 0 - I - 0x021FD8 08:9FC8: 31        .byte $31   ; 
- D 0 - I - 0x021FD9 08:9FC9: FF        .byte $FF   ; 
off_FD_9FCA:
- D 0 - I - 0x021FDA 08:9FCA: D6        .byte $D6   ; 
- D 0 - I - 0x021FDB 08:9FCB: FB        .byte $FB   ; 
- D 0 - I - 0x021FDC 08:9FCC: B1        .byte $B1   ; 
- D 0 - I - 0x021FDD 08:9FCD: 11        .byte $11   ; 
- D 0 - I - 0x021FDE 08:9FCE: 11        .byte $11   ; 
- D 0 - I - 0x021FDF 08:9FCF: 11        .byte $11   ; 
- D 0 - I - 0x021FE0 08:9FD0: FE        .byte $FE   ; 
- D 0 - I - 0x021FE1 08:9FD1: 07        .byte $07   ; 
- D 0 - I - 0x021FE2 08:9FD2: B1        .byte $B1   ; 
- D 0 - I - 0x021FE3 08:9FD3: A1        .byte $A1   ; 
- D 0 - I - 0x021FE4 08:9FD4: B1        .byte $B1   ; 
- D 0 - I - 0x021FE5 08:9FD5: A1        .byte $A1   ; 
- D 0 - I - 0x021FE6 08:9FD6: FB        .byte $FB   ; 
- D 0 - I - 0x021FE7 08:9FD7: B1        .byte $B1   ; 
- D 0 - I - 0x021FE8 08:9FD8: 11        .byte $11   ; 
- D 0 - I - 0x021FE9 08:9FD9: 11        .byte $11   ; 
- D 0 - I - 0x021FEA 08:9FDA: 11        .byte $11   ; 
- D 0 - I - 0x021FEB 08:9FDB: FE        .byte $FE   ; 
- D 0 - I - 0x021FEC 08:9FDC: 06        .byte $06   ; 
- D 0 - I - 0x021FED 08:9FDD: B1        .byte $B1   ; 
- D 0 - I - 0x021FEE 08:9FDE: 11        .byte $11   ; 
- D 0 - I - 0x021FEF 08:9FDF: A1        .byte $A1   ; 
- D 0 - I - 0x021FF0 08:9FE0: A1        .byte $A1   ; 
- D 0 - I - 0x021FF1 08:9FE1: D1        .byte $D1   ; 
- D 0 - I - 0x021FF2 08:9FE2: 92        .byte $92   ; 
- D 0 - I - 0x021FF3 08:9FE3: 92        .byte $92   ; 
- D 0 - I - 0x021FF4 08:9FE4: 92        .byte $92   ; 
- D 0 - I - 0x021FF5 08:9FE5: D6        .byte $D6   ; 
- D 0 - I - 0x021FF6 08:9FE6: 81        .byte $81   ; 
- D 0 - I - 0x021FF7 08:9FE7: 71        .byte $71   ; 
- D 0 - I - 0x021FF8 08:9FE8: 61        .byte $61   ; 
- D 0 - I - 0x021FF9 08:9FE9: FF        .byte $FF   ; 
off_FD_9FEA:
- D 0 - I - 0x021FFA 08:9FEA: FB        .byte $FB   ; 
- D 0 - I - 0x021FFB 08:9FEB: DE        .byte $DE   ; 
- D 0 - I - 0x021FFC 08:9FEC: B1        .byte $B1   ; 
- D 0 - I - 0x021FFD 08:9FED: 11        .byte $11   ; 
- D 0 - I - 0x021FFE 08:9FEE: A1        .byte $A1   ; 
- D 0 - I - 0x021FFF 08:9FEF: 1A        .byte $1A   ; 
- D 0 - I - 0x022000 08:9FF0: BA        .byte $BA   ; 
- D 0 - I - 0x022001 08:9FF1: 11        .byte $11   ; 
- D 0 - I - 0x022002 08:9FF2: A1        .byte $A1   ; 
- D 0 - I - 0x022003 08:9FF3: BA        .byte $BA   ; 
- D 0 - I - 0x022004 08:9FF4: DE        .byte $DE   ; 
- D 0 - I - 0x022005 08:9FF5: FE        .byte $FE   ; 
- D 0 - I - 0x022006 08:9FF6: 03        .byte $03   ; 
- D 0 - I - 0x022007 08:9FF7: FF        .byte $FF   ; 
off_FD_9FF8:
- D 0 - I - 0x022008 08:9FF8: DE        .byte $DE   ; 
- D 0 - I - 0x022009 08:9FF9: B1        .byte $B1   ; 
- D 0 - I - 0x02200A 08:9FFA: 11        .byte $11   ; 
- D 0 - I - 0x02200B 08:9FFB: A1        .byte $A1   ; 
- D 0 - I - 0x02200C 08:9FFC: 1A        .byte $1A   ; 
- D 0 - I - 0x02200D 08:9FFD: BA        .byte $BA   ; 
- D 0 - I - 0x02200E 08:9FFE: 11        .byte $11   ; 
- D 0 - I - 0x02200F 08:9FFF: 98        .byte $98   ; 
- D 1 - - - 0x022010 08:A000: 76        .byte $76   ; 
- D 1 - I - 0x022011 08:A001: DE        .byte $DE   ; 
- D 1 - I - 0x022012 08:A002: FF        .byte $FF   ; 
off_FD_A003:
- D 1 - I - 0x022013 08:A003: FB        .byte $FB   ; 
- D 1 - I - 0x022014 08:A004: DE        .byte $DE   ; 
- D 1 - I - 0x022015 08:A005: B1        .byte $B1   ; 
- D 1 - I - 0x022016 08:A006: 1B        .byte $1B   ; 
- D 1 - I - 0x022017 08:A007: A1        .byte $A1   ; 
- D 1 - I - 0x022018 08:A008: 1A        .byte $1A   ; 
- D 1 - I - 0x022019 08:A009: BA        .byte $BA   ; 
- D 1 - I - 0x02201A 08:A00A: DE        .byte $DE   ; 
- D 1 - I - 0x02201B 08:A00B: B2        .byte $B2   ; 
- D 1 - I - 0x02201C 08:A00C: A1        .byte $A1   ; 
- D 1 - I - 0x02201D 08:A00D: 11        .byte $11   ; 
- D 1 - I - 0x02201E 08:A00E: B1        .byte $B1   ; 
- D 1 - I - 0x02201F 08:A00F: A1        .byte $A1   ; 
- D 1 - I - 0x022020 08:A010: FE        .byte $FE   ; 
- D 1 - I - 0x022021 08:A011: 02        .byte $02   ; 
- D 1 - I - 0x022022 08:A012: FF        .byte $FF   ; 
off_FD_A013:
- D 1 - I - 0x022023 08:A013: DE        .byte $DE   ; 
- D 1 - I - 0x022024 08:A014: B1        .byte $B1   ; 
- D 1 - I - 0x022025 08:A015: 1B        .byte $1B   ; 
- D 1 - I - 0x022026 08:A016: A1        .byte $A1   ; 
- D 1 - I - 0x022027 08:A017: 1A        .byte $1A   ; 
- D 1 - I - 0x022028 08:A018: BA        .byte $BA   ; 
- D 1 - I - 0x022029 08:A019: B1        .byte $B1   ; 
- D 1 - I - 0x02202A 08:A01A: A1        .byte $A1   ; 
- D 1 - I - 0x02202B 08:A01B: 11        .byte $11   ; 
- D 1 - I - 0x02202C 08:A01C: DE        .byte $DE   ; 
- D 1 - I - 0x02202D 08:A01D: FF        .byte $FF   ; 
off_FD_A01E:
- D 1 - I - 0x02202E 08:A01E: DE        .byte $DE   ; 
- D 1 - I - 0x02202F 08:A01F: B1        .byte $B1   ; 
- D 1 - I - 0x022030 08:A020: 11        .byte $11   ; 
- D 1 - I - 0x022031 08:A021: A1        .byte $A1   ; 
- D 1 - I - 0x022032 08:A022: 1A        .byte $1A   ; 
- D 1 - I - 0x022033 08:A023: BA        .byte $BA   ; 
- D 1 - I - 0x022034 08:A024: 11        .byte $11   ; 
- D 1 - I - 0x022035 08:A025: A1        .byte $A1   ; 
- D 1 - I - 0x022036 08:A026: 11        .byte $11   ; 
- D 1 - I - 0x022037 08:A027: DE        .byte $DE   ; 
- D 1 - I - 0x022038 08:A028: FF        .byte $FF   ; 
off_FD_A029:
- D 1 - I - 0x022039 08:A029: DE        .byte $DE   ; 
- D 1 - I - 0x02203A 08:A02A: B1        .byte $B1   ; 
- D 1 - I - 0x02203B 08:A02B: 11        .byte $11   ; 
- D 1 - I - 0x02203C 08:A02C: A1        .byte $A1   ; 
- D 1 - I - 0x02203D 08:A02D: 1A        .byte $1A   ; 
- D 1 - I - 0x02203E 08:A02E: BA        .byte $BA   ; 
- D 1 - I - 0x02203F 08:A02F: 11        .byte $11   ; 
- D 1 - I - 0x022040 08:A030: AA        .byte $AA   ; 
- D 1 - I - 0x022041 08:A031: 2A        .byte $2A   ; 
- D 1 - I - 0x022042 08:A032: DE        .byte $DE   ; 
- D 1 - I - 0x022043 08:A033: FF        .byte $FF   ; 
off_FD_A034:
- D 1 - I - 0x022044 08:A034: DE        .byte $DE   ; 
- D 1 - I - 0x022045 08:A035: 99        .byte $99   ; 
- D 1 - I - 0x022046 08:A036: 98        .byte $98   ; 
- D 1 - I - 0x022047 08:A037: 88        .byte $88   ; 
- D 1 - I - 0x022048 08:A038: 77        .byte $77   ; 
- D 1 - I - 0x022049 08:A039: 76        .byte $76   ; 
- D 1 - I - 0x02204A 08:A03A: 66        .byte $66   ; 
- D 1 - I - 0x02204B 08:A03B: DE        .byte $DE   ; 
- D 1 - I - 0x02204C 08:A03C: A2        .byte $A2   ; 
- D 1 - I - 0x02204D 08:A03D: A2        .byte $A2   ; 
- D 1 - I - 0x02204E 08:A03E: FF        .byte $FF   ; 



_off001_A03F_09:
- D 1 - I - 0x02204F 08:A03F: D6        .byte $D6   ; 
- D 1 - I - 0x022050 08:A040: B7        .byte $B7   ; 
- D 1 - I - 0x022051 08:A041: 83        .byte $83   ; 
- D 1 - I - 0x022052 08:A042: 8A        .byte $8A   ; 
- D 1 - I - 0x022053 08:A043: FD        .byte $FD   ; 
- D 1 - I - 0x022054 08:A044: 41 A2     .word off_FD_A241
- D 1 - I - 0x022056 08:A046: D1        .byte $D1   ; 
- D 1 - I - 0x022057 08:A047: 77        .byte $77   ; 
- D 1 - I - 0x022058 08:A048: 83        .byte $83   ; 
- D 1 - I - 0x022059 08:A049: 86        .byte $86   ; 
- D 1 - I - 0x02205A 08:A04A: FD        .byte $FD   ; 
- D 1 - I - 0x02205B 08:A04B: 59 A2     .word off_FD_A259
- D 1 - I - 0x02205D 08:A04D: D6        .byte $D6   ; 
- D 1 - I - 0x02205E 08:A04E: 36        .byte $36   ; 
- D 1 - I - 0x02205F 08:A04F: 83        .byte $83   ; 
- D 1 - I - 0x022060 08:A050: 83        .byte $83   ; 
- D 1 - I - 0x022061 08:A051: FD        .byte $FD   ; 
- D 1 - I - 0x022062 08:A052: 6D A2     .word off_FD_A26D
- D 1 - I - 0x022064 08:A054: D4        .byte $D4   ; 
- D 1 - I - 0x022065 08:A055: B7        .byte $B7   ; 
- D 1 - I - 0x022066 08:A056: 83        .byte $83   ; 
- D 1 - I - 0x022067 08:A057: 86        .byte $86   ; 
- D 1 - I - 0x022068 08:A058: FD        .byte $FD   ; 
- D 1 - I - 0x022069 08:A059: 79 A2     .word off_FD_A279
- D 1 - I - 0x02206B 08:A05B: D6        .byte $D6   ; 
- D 1 - I - 0x02206C 08:A05C: 36        .byte $36   ; 
- D 1 - I - 0x02206D 08:A05D: 83        .byte $83   ; 
- D 1 - I - 0x02206E 08:A05E: 83        .byte $83   ; 
- D 1 - I - 0x02206F 08:A05F: FD        .byte $FD   ; 
- D 1 - I - 0x022070 08:A060: 90 A2     .word off_FD_A290
off_FF_A062:
- D 1 - I - 0x022072 08:A062: D1        .byte $D1   ; 
- D 1 - I - 0x022073 08:A063: 77        .byte $77   ; 
- D 1 - I - 0x022074 08:A064: 83        .byte $83   ; 
- D 1 - I - 0x022075 08:A065: 83        .byte $83   ; 
- D 1 - I - 0x022076 08:A066: FD        .byte $FD   ; 
- D 1 - I - 0x022077 08:A067: 96 A2     .word off_FD_A296
- D 1 - I - 0x022079 08:A069: FD        .byte $FD   ; 
- D 1 - I - 0x02207A 08:A06A: C1 A2     .word off_FD_A2C1
- D 1 - I - 0x02207C 08:A06C: D1        .byte $D1   ; 
- D 1 - I - 0x02207D 08:A06D: 77        .byte $77   ; 
- D 1 - I - 0x02207E 08:A06E: 83        .byte $83   ; 
- D 1 - I - 0x02207F 08:A06F: 83        .byte $83   ; 
- D 1 - I - 0x022080 08:A070: FD        .byte $FD   ; 
- D 1 - I - 0x022081 08:A071: 96 A2     .word off_FD_A296
- D 1 - I - 0x022083 08:A073: FD        .byte $FD   ; 
- D 1 - I - 0x022084 08:A074: C1 A2     .word off_FD_A2C1
- D 1 - I - 0x022086 08:A076: FD        .byte $FD   ; 
- D 1 - I - 0x022087 08:A077: F0 A2     .word off_FD_A2F0
- D 1 - I - 0x022089 08:A079: FD        .byte $FD   ; 
- D 1 - I - 0x02208A 08:A07A: 41 A3     .word off_FD_A341
- D 1 - I - 0x02208C 08:A07C: D1        .byte $D1   ; 
- D 1 - I - 0x02208D 08:A07D: 77        .byte $77   ; 
- D 1 - I - 0x02208E 08:A07E: 83        .byte $83   ; 
- D 1 - I - 0x02208F 08:A07F: 83        .byte $83   ; 
- D 1 - I - 0x022090 08:A080: FD        .byte $FD   ; 
- D 1 - I - 0x022091 08:A081: 96 A2     .word off_FD_A296
- D 1 - I - 0x022093 08:A083: FD        .byte $FD   ; 
- D 1 - I - 0x022094 08:A084: C1 A2     .word off_FD_A2C1
- D 1 - I - 0x022096 08:A086: D1        .byte $D1   ; 
- D 1 - I - 0x022097 08:A087: 77        .byte $77   ; 
- D 1 - I - 0x022098 08:A088: 83        .byte $83   ; 
- D 1 - I - 0x022099 08:A089: 83        .byte $83   ; 
- D 1 - I - 0x02209A 08:A08A: FD        .byte $FD   ; 
- D 1 - I - 0x02209B 08:A08B: 96 A2     .word off_FD_A296
- D 1 - I - 0x02209D 08:A08D: FD        .byte $FD   ; 
- D 1 - I - 0x02209E 08:A08E: C1 A2     .word off_FD_A2C1
- D 1 - I - 0x0220A0 08:A090: FD        .byte $FD   ; 
- D 1 - I - 0x0220A1 08:A091: F0 A2     .word off_FD_A2F0
- D 1 - I - 0x0220A3 08:A093: FD        .byte $FD   ; 
- D 1 - I - 0x0220A4 08:A094: 72 A3     .word off_FD_A372
- D 1 - I - 0x0220A6 08:A096: D1        .byte $D1   ; 
- D 1 - I - 0x0220A7 08:A097: 77        .byte $77   ; 
- D 1 - I - 0x0220A8 08:A098: 83        .byte $83   ; 
- D 1 - I - 0x0220A9 08:A099: 85        .byte $85   ; 
- D 1 - I - 0x0220AA 08:A09A: FD        .byte $FD   ; 
- D 1 - I - 0x0220AB 08:A09B: 8C A3     .word off_FD_A38C
- D 1 - I - 0x0220AD 08:A09D: 41        .byte $41   ; 
- D 1 - I - 0x0220AE 08:A09E: F3        .byte $F3   ; 
- D 1 - I - 0x0220AF 08:A09F: 41        .byte $41   ; 
- D 1 - I - 0x0220B0 08:A0A0: F4        .byte $F4   ; 
- D 1 - I - 0x0220B1 08:A0A1: 41        .byte $41   ; 
- D 1 - I - 0x0220B2 08:A0A2: F5        .byte $F5   ; 
- D 1 - I - 0x0220B3 08:A0A3: 41        .byte $41   ; 
- D 1 - I - 0x0220B4 08:A0A4: F0        .byte $F0   ; 
- D 1 - I - 0x0220B5 08:A0A5: E9        .byte $E9   ; 
- D 1 - I - 0x0220B6 08:A0A6: 31        .byte $31   ; 
- D 1 - I - 0x0220B7 08:A0A7: FD        .byte $FD   ; 
- D 1 - I - 0x0220B8 08:A0A8: 9F A3     .word off_FD_A39F
- D 1 - I - 0x0220BA 08:A0AA: E9        .byte $E9   ; 
- D 1 - I - 0x0220BB 08:A0AB: 00        .byte $00   ; 
- D 1 - I - 0x0220BC 08:A0AC: E8        .byte $E8   ; 
- D 1 - I - 0x0220BD 08:A0AD: 01        .byte $01   ; 
- D 1 - I - 0x0220BE 08:A0AE: FD        .byte $FD   ; 
- D 1 - I - 0x0220BF 08:A0AF: 8C A3     .word off_FD_A38C
- D 1 - I - 0x0220C1 08:A0B1: F3        .byte $F3   ; 
- D 1 - I - 0x0220C2 08:A0B2: 21        .byte $21   ; 
- D 1 - I - 0x0220C3 08:A0B3: D4        .byte $D4   ; 
- D 1 - I - 0x0220C4 08:A0B4: 37        .byte $37   ; 
- D 1 - I - 0x0220C5 08:A0B5: 83        .byte $83   ; 
- D 1 - I - 0x0220C6 08:A0B6: 85        .byte $85   ; 
- D 1 - I - 0x0220C7 08:A0B7: FD        .byte $FD   ; 
- D 1 - I - 0x0220C8 08:A0B8: B5 A3     .word off_FD_A3B5
- D 1 - I - 0x0220CA 08:A0BA: C8        .byte $C8   ; 
- D 1 - I - 0x0220CB 08:A0BB: CC        .byte $CC   ; 
- D 1 - I - 0x0220CC 08:A0BC: D1        .byte $D1   ; 
- D 1 - I - 0x0220CD 08:A0BD: 77        .byte $77   ; 
- D 1 - I - 0x0220CE 08:A0BE: 83        .byte $83   ; 
- D 1 - I - 0x0220CF 08:A0BF: 86        .byte $86   ; 
- D 1 - I - 0x0220D0 08:A0C0: FD        .byte $FD   ; 
- D 1 - I - 0x0220D1 08:A0C1: 59 A2     .word off_FD_A259
- D 1 - I - 0x0220D3 08:A0C3: D6        .byte $D6   ; 
- D 1 - I - 0x0220D4 08:A0C4: 36        .byte $36   ; 
- D 1 - I - 0x0220D5 08:A0C5: 83        .byte $83   ; 
- D 1 - I - 0x0220D6 08:A0C6: 83        .byte $83   ; 
- D 1 - I - 0x0220D7 08:A0C7: FD        .byte $FD   ; 
- D 1 - I - 0x0220D8 08:A0C8: 6D A2     .word off_FD_A26D
- D 1 - I - 0x0220DA 08:A0CA: D4        .byte $D4   ; 
- D 1 - I - 0x0220DB 08:A0CB: B7        .byte $B7   ; 
- D 1 - I - 0x0220DC 08:A0CC: 83        .byte $83   ; 
- D 1 - I - 0x0220DD 08:A0CD: 86        .byte $86   ; 
- D 1 - I - 0x0220DE 08:A0CE: FD        .byte $FD   ; 
- D 1 - I - 0x0220DF 08:A0CF: 79 A2     .word off_FD_A279
- D 1 - I - 0x0220E1 08:A0D1: D6        .byte $D6   ; 
- D 1 - I - 0x0220E2 08:A0D2: 36        .byte $36   ; 
- D 1 - I - 0x0220E3 08:A0D3: 83        .byte $83   ; 
- D 1 - I - 0x0220E4 08:A0D4: 83        .byte $83   ; 
- D 1 - I - 0x0220E5 08:A0D5: FD        .byte $FD   ; 
- D 1 - I - 0x0220E6 08:A0D6: 90 A2     .word off_FD_A290
- D 1 - I - 0x0220E8 08:A0D8: FE        .byte $FE   ; 
- D 1 - I - 0x0220E9 08:A0D9: FF        .byte $FF   ; 
- D 1 - I - 0x0220EA 08:A0DA: 62 A0     .word off_FF_A062



_off001_A0DC_08:
- D 1 - I - 0x0220EC 08:A0DC: EE        .byte $EE   ; 
- D 1 - I - 0x0220ED 08:A0DD: 85        .byte $85   ; 
- D 1 - I - 0x0220EE 08:A0DE: D6        .byte $D6   ; 
- D 1 - I - 0x0220EF 08:A0DF: B5        .byte $B5   ; 
- D 1 - I - 0x0220F0 08:A0E0: 83        .byte $83   ; 
- D 1 - I - 0x0220F1 08:A0E1: 8A        .byte $8A   ; 
- D 1 - I - 0x0220F2 08:A0E2: FD        .byte $FD   ; 
- D 1 - I - 0x0220F3 08:A0E3: 41 A2     .word off_FD_A241
- D 1 - I - 0x0220F5 08:A0E5: D1        .byte $D1   ; 
- D 1 - I - 0x0220F6 08:A0E6: 75        .byte $75   ; 
- D 1 - I - 0x0220F7 08:A0E7: 83        .byte $83   ; 
- D 1 - I - 0x0220F8 08:A0E8: 86        .byte $86   ; 
- D 1 - I - 0x0220F9 08:A0E9: FD        .byte $FD   ; 
- D 1 - I - 0x0220FA 08:A0EA: 59 A2     .word off_FD_A259
- D 1 - I - 0x0220FC 08:A0EC: FD        .byte $FD   ; 
- D 1 - I - 0x0220FD 08:A0ED: 38 A2     .word off_FD_A238
- D 1 - I - 0x0220FF 08:A0EF: FD        .byte $FD   ; 
- D 1 - I - 0x022100 08:A0F0: 6D A2     .word off_FD_A26D
- D 1 - I - 0x022102 08:A0F2: EE        .byte $EE   ; 
- D 1 - I - 0x022103 08:A0F3: 85        .byte $85   ; 
- D 1 - I - 0x022104 08:A0F4: ED        .byte $ED   ; 
- D 1 - I - 0x022105 08:A0F5: 81        .byte $81   ; 
- D 1 - I - 0x022106 08:A0F6: D4        .byte $D4   ; 
- D 1 - I - 0x022107 08:A0F7: B5        .byte $B5   ; 
- D 1 - I - 0x022108 08:A0F8: 83        .byte $83   ; 
- D 1 - I - 0x022109 08:A0F9: 86        .byte $86   ; 
- D 1 - I - 0x02210A 08:A0FA: FD        .byte $FD   ; 
- D 1 - I - 0x02210B 08:A0FB: 79 A2     .word off_FD_A279
- D 1 - I - 0x02210D 08:A0FD: FD        .byte $FD   ; 
- D 1 - I - 0x02210E 08:A0FE: 38 A2     .word off_FD_A238
- D 1 - I - 0x022110 08:A100: FD        .byte $FD   ; 
- D 1 - I - 0x022111 08:A101: 90 A2     .word off_FD_A290
- D 1 - I - 0x022113 08:A103: ED        .byte $ED   ; 
- D 1 - I - 0x022114 08:A104: 00        .byte $00   ; 
- D 1 - I - 0x022115 08:A105: EE        .byte $EE   ; 
- D 1 - I - 0x022116 08:A106: 85        .byte $85   ; 
off_FF_A107:
- D 1 - I - 0x022117 08:A107: D1        .byte $D1   ; 
- D 1 - I - 0x022118 08:A108: 75        .byte $75   ; 
- D 1 - I - 0x022119 08:A109: 83        .byte $83   ; 
- D 1 - I - 0x02211A 08:A10A: 83        .byte $83   ; 
- D 1 - I - 0x02211B 08:A10B: EE        .byte $EE   ; 
- D 1 - I - 0x02211C 08:A10C: 85        .byte $85   ; 
- D 1 - I - 0x02211D 08:A10D: FD        .byte $FD   ; 
- D 1 - I - 0x02211E 08:A10E: 96 A2     .word off_FD_A296
- D 1 - I - 0x022120 08:A110: FD        .byte $FD   ; 
- D 1 - I - 0x022121 08:A111: C1 A2     .word off_FD_A2C1
- D 1 - I - 0x022123 08:A113: D1        .byte $D1   ; 
- D 1 - I - 0x022124 08:A114: 75        .byte $75   ; 
- D 1 - I - 0x022125 08:A115: 83        .byte $83   ; 
- D 1 - I - 0x022126 08:A116: 83        .byte $83   ; 
- D 1 - I - 0x022127 08:A117: FD        .byte $FD   ; 
- D 1 - I - 0x022128 08:A118: 96 A2     .word off_FD_A296
- D 1 - I - 0x02212A 08:A11A: FD        .byte $FD   ; 
- D 1 - I - 0x02212B 08:A11B: C1 A2     .word off_FD_A2C1
- D 1 - I - 0x02212D 08:A11D: EE        .byte $EE   ; 
- D 1 - I - 0x02212E 08:A11E: 00        .byte $00   ; 
- D 1 - I - 0x02212F 08:A11F: FD        .byte $FD   ; 
- D 1 - I - 0x022130 08:A120: CC A3     .word off_FD_A3CC
- D 1 - I - 0x022132 08:A122: EE        .byte $EE   ; 
- D 1 - I - 0x022133 08:A123: 85        .byte $85   ; 
- D 1 - I - 0x022134 08:A124: FD        .byte $FD   ; 
- D 1 - I - 0x022135 08:A125: 41 A3     .word off_FD_A341
- D 1 - I - 0x022137 08:A127: D1        .byte $D1   ; 
- D 1 - I - 0x022138 08:A128: 75        .byte $75   ; 
- D 1 - I - 0x022139 08:A129: 83        .byte $83   ; 
- D 1 - I - 0x02213A 08:A12A: 83        .byte $83   ; 
- D 1 - I - 0x02213B 08:A12B: FD        .byte $FD   ; 
- D 1 - I - 0x02213C 08:A12C: 96 A2     .word off_FD_A296
- D 1 - I - 0x02213E 08:A12E: FD        .byte $FD   ; 
- D 1 - I - 0x02213F 08:A12F: C1 A2     .word off_FD_A2C1
- D 1 - I - 0x022141 08:A131: D1        .byte $D1   ; 
- D 1 - I - 0x022142 08:A132: 75        .byte $75   ; 
- D 1 - I - 0x022143 08:A133: 83        .byte $83   ; 
- D 1 - I - 0x022144 08:A134: 83        .byte $83   ; 
- D 1 - I - 0x022145 08:A135: FD        .byte $FD   ; 
- D 1 - I - 0x022146 08:A136: 96 A2     .word off_FD_A296
- D 1 - I - 0x022148 08:A138: FD        .byte $FD   ; 
- D 1 - I - 0x022149 08:A139: C1 A2     .word off_FD_A2C1
- D 1 - I - 0x02214B 08:A13B: EE        .byte $EE   ; 
- D 1 - I - 0x02214C 08:A13C: 00        .byte $00   ; 
- D 1 - I - 0x02214D 08:A13D: FD        .byte $FD   ; 
- D 1 - I - 0x02214E 08:A13E: CC A3     .word off_FD_A3CC
- D 1 - I - 0x022150 08:A140: EE        .byte $EE   ; 
- D 1 - I - 0x022151 08:A141: 85        .byte $85   ; 
- D 1 - I - 0x022152 08:A142: FD        .byte $FD   ; 
- D 1 - I - 0x022153 08:A143: 72 A3     .word off_FD_A372
- D 1 - I - 0x022155 08:A145: EE        .byte $EE   ; 
- D 1 - I - 0x022156 08:A146: 00        .byte $00   ; 
- D 1 - I - 0x022157 08:A147: EC        .byte $EC   ; 
- D 1 - I - 0x022158 08:A148: 00        .byte $00   ; 
- D 1 - I - 0x022159 08:A149: FD        .byte $FD   ; 
- D 1 - I - 0x02215A 08:A14A: 32 A4     .word off_FD_A432
- D 1 - I - 0x02215C 08:A14C: E1        .byte $E1   ; 
- D 1 - I - 0x02215D 08:A14D: B2        .byte $B2   ; 
- D 1 - I - 0x02215E 08:A14E: E2        .byte $E2   ; 
- D 1 - I - 0x02215F 08:A14F: 61        .byte $61   ; 
- D 1 - I - 0x022160 08:A150: 92        .byte $92   ; 
- D 1 - I - 0x022161 08:A151: B1        .byte $B1   ; 
- D 1 - I - 0x022162 08:A152: F3        .byte $F3   ; 
- D 1 - I - 0x022163 08:A153: 92        .byte $92   ; 
- D 1 - I - 0x022164 08:A154: B1        .byte $B1   ; 
- D 1 - I - 0x022165 08:A155: D4        .byte $D4   ; 
- D 1 - I - 0x022166 08:A156: 35        .byte $35   ; 
- D 1 - I - 0x022167 08:A157: 83        .byte $83   ; 
- D 1 - I - 0x022168 08:A158: 85        .byte $85   ; 
- D 1 - I - 0x022169 08:A159: EE        .byte $EE   ; 
- D 1 - I - 0x02216A 08:A15A: 85        .byte $85   ; 
- D 1 - I - 0x02216B 08:A15B: FD        .byte $FD   ; 
- D 1 - I - 0x02216C 08:A15C: 9F A3     .word off_FD_A39F
- D 1 - I - 0x02216E 08:A15E: EE        .byte $EE   ; 
- D 1 - I - 0x02216F 08:A15F: 00        .byte $00   ; 
- D 1 - I - 0x022170 08:A160: FD        .byte $FD   ; 
- D 1 - I - 0x022171 08:A161: 32 A4     .word off_FD_A432
- D 1 - I - 0x022173 08:A163: B2        .byte $B2   ; 
- D 1 - I - 0x022174 08:A164: E2        .byte $E2   ; 
- D 1 - I - 0x022175 08:A165: 61        .byte $61   ; 
- D 1 - I - 0x022176 08:A166: 92        .byte $92   ; 
- D 1 - I - 0x022177 08:A167: F3        .byte $F3   ; 
- D 1 - I - 0x022178 08:A168: 91        .byte $91   ; 
- D 1 - I - 0x022179 08:A169: EE        .byte $EE   ; 
- D 1 - I - 0x02217A 08:A16A: 85        .byte $85   ; 
- D 1 - I - 0x02217B 08:A16B: D4        .byte $D4   ; 
- D 1 - I - 0x02217C 08:A16C: 75        .byte $75   ; 
- D 1 - I - 0x02217D 08:A16D: 83        .byte $83   ; 
- D 1 - I - 0x02217E 08:A16E: 85        .byte $85   ; 
- D 1 - I - 0x02217F 08:A16F: FD        .byte $FD   ; 
- D 1 - I - 0x022180 08:A170: B5 A3     .word off_FD_A3B5
- D 1 - I - 0x022182 08:A172: C8        .byte $C8   ; 
- D 1 - I - 0x022183 08:A173: CC        .byte $CC   ; 
- D 1 - I - 0x022184 08:A174: D1        .byte $D1   ; 
- D 1 - I - 0x022185 08:A175: 75        .byte $75   ; 
- D 1 - I - 0x022186 08:A176: 83        .byte $83   ; 
- D 1 - I - 0x022187 08:A177: 86        .byte $86   ; 
- D 1 - I - 0x022188 08:A178: FD        .byte $FD   ; 
- D 1 - I - 0x022189 08:A179: 59 A2     .word off_FD_A259
- D 1 - I - 0x02218B 08:A17B: ED        .byte $ED   ; 
- D 1 - I - 0x02218C 08:A17C: 81        .byte $81   ; 
- D 1 - I - 0x02218D 08:A17D: EE        .byte $EE   ; 
- D 1 - I - 0x02218E 08:A17E: 00        .byte $00   ; 
- D 1 - I - 0x02218F 08:A17F: D6        .byte $D6   ; 
- D 1 - I - 0x022190 08:A180: 34        .byte $34   ; 
- D 1 - I - 0x022191 08:A181: 83        .byte $83   ; 
- D 1 - I - 0x022192 08:A182: 83        .byte $83   ; 
- D 1 - I - 0x022193 08:A183: FD        .byte $FD   ; 
- D 1 - I - 0x022194 08:A184: 6D A2     .word off_FD_A26D
- D 1 - I - 0x022196 08:A186: ED        .byte $ED   ; 
- D 1 - I - 0x022197 08:A187: 00        .byte $00   ; 
- D 1 - I - 0x022198 08:A188: EE        .byte $EE   ; 
- D 1 - I - 0x022199 08:A189: 85        .byte $85   ; 
- D 1 - I - 0x02219A 08:A18A: D4        .byte $D4   ; 
- D 1 - I - 0x02219B 08:A18B: B5        .byte $B5   ; 
- D 1 - I - 0x02219C 08:A18C: 83        .byte $83   ; 
- D 1 - I - 0x02219D 08:A18D: 86        .byte $86   ; 
- D 1 - I - 0x02219E 08:A18E: FD        .byte $FD   ; 
- D 1 - I - 0x02219F 08:A18F: 79 A2     .word off_FD_A279
- D 1 - I - 0x0221A1 08:A191: D6        .byte $D6   ; 
- D 1 - I - 0x0221A2 08:A192: 34        .byte $34   ; 
- D 1 - I - 0x0221A3 08:A193: 83        .byte $83   ; 
- D 1 - I - 0x0221A4 08:A194: 83        .byte $83   ; 
- D 1 - I - 0x0221A5 08:A195: ED        .byte $ED   ; 
- D 1 - I - 0x0221A6 08:A196: 81        .byte $81   ; 
- D 1 - I - 0x0221A7 08:A197: EE        .byte $EE   ; 
- D 1 - I - 0x0221A8 08:A198: 00        .byte $00   ; 
- D 1 - I - 0x0221A9 08:A199: FD        .byte $FD   ; 
- D 1 - I - 0x0221AA 08:A19A: 90 A2     .word off_FD_A290
- D 1 - I - 0x0221AC 08:A19C: EE        .byte $EE   ; 
- D 1 - I - 0x0221AD 08:A19D: 85        .byte $85   ; 
- D 1 - I - 0x0221AE 08:A19E: ED        .byte $ED   ; 
- D 1 - I - 0x0221AF 08:A19F: 00        .byte $00   ; 
- D 1 - I - 0x0221B0 08:A1A0: FE        .byte $FE   ; 
- D 1 - I - 0x0221B1 08:A1A1: FF        .byte $FF   ; 
- D 1 - I - 0x0221B2 08:A1A2: 07 A1     .word off_FF_A107



_off001_A1A4_0A:
- D 1 - I - 0x0221B4 08:A1A4: D6        .byte $D6   ; 
- D 1 - I - 0x0221B5 08:A1A5: 03        .byte $03   ; 
- D 1 - I - 0x0221B6 08:A1A6: FD        .byte $FD   ; 
- D 1 - I - 0x0221B7 08:A1A7: 4B A4     .word off_FD_A44B
off_FF_A1A9:
- D 1 - I - 0x0221B9 08:A1A9: FD        .byte $FD   ; 
- D 1 - I - 0x0221BA 08:A1AA: 4B A4     .word off_FD_A44B
- D 1 - I - 0x0221BC 08:A1AC: FD        .byte $FD   ; 
- D 1 - I - 0x0221BD 08:A1AD: 5A A4     .word off_FD_A45A
- D 1 - I - 0x0221BF 08:A1AF: FD        .byte $FD   ; 
- D 1 - I - 0x0221C0 08:A1B0: 6B A4     .word off_FD_A46B
- D 1 - I - 0x0221C2 08:A1B2: D6        .byte $D6   ; 
- D 1 - I - 0x0221C3 08:A1B3: 04        .byte $04   ; 
- D 1 - I - 0x0221C4 08:A1B4: FD        .byte $FD   ; 
- D 1 - I - 0x0221C5 08:A1B5: 4B A4     .word off_FD_A44B
- D 1 - I - 0x0221C7 08:A1B7: FD        .byte $FD   ; 
- D 1 - I - 0x0221C8 08:A1B8: 5A A4     .word off_FD_A45A
- D 1 - I - 0x0221CA 08:A1BA: FD        .byte $FD   ; 
- D 1 - I - 0x0221CB 08:A1BB: 7A A4     .word off_FD_A47A
- D 1 - I - 0x0221CD 08:A1BD: D6        .byte $D6   ; 
- D 1 - I - 0x0221CE 08:A1BE: 04        .byte $04   ; 
- D 1 - I - 0x0221CF 08:A1BF: E1        .byte $E1   ; 
- D 1 - I - 0x0221D0 08:A1C0: DF        .byte $DF   ; 
- D 1 - I - 0x0221D1 08:A1C1: 01        .byte $01   ; 
- D 1 - I - 0x0221D2 08:A1C2: 20        .byte $20   ; 
- D 1 - I - 0x0221D3 08:A1C3: 36        .byte $36   ; 
- D 1 - I - 0x0221D4 08:A1C4: DF        .byte $DF   ; 
- D 1 - I - 0x0221D5 08:A1C5: B2        .byte $B2   ; 
- D 1 - I - 0x0221D6 08:A1C6: E1        .byte $E1   ; 
- D 1 - I - 0x0221D7 08:A1C7: 32        .byte $32   ; 
- D 1 - I - 0x0221D8 08:A1C8: D4        .byte $D4   ; 
- D 1 - I - 0x0221D9 08:A1C9: 03        .byte $03   ; 
- D 1 - I - 0x0221DA 08:A1CA: 43        .byte $43   ; 
- D 1 - I - 0x0221DB 08:A1CB: E2        .byte $E2   ; 
- D 1 - I - 0x0221DC 08:A1CC: 42        .byte $42   ; 
- D 1 - I - 0x0221DD 08:A1CD: E1        .byte $E1   ; 
- D 1 - I - 0x0221DE 08:A1CE: B1        .byte $B1   ; 
- D 1 - I - 0x0221DF 08:A1CF: E2        .byte $E2   ; 
- D 1 - I - 0x0221E0 08:A1D0: 23        .byte $23   ; 
- D 1 - I - 0x0221E1 08:A1D1: 43        .byte $43   ; 
- D 1 - I - 0x0221E2 08:A1D2: 43        .byte $43   ; 
- D 1 - I - 0x0221E3 08:A1D3: 42        .byte $42   ; 
- D 1 - I - 0x0221E4 08:A1D4: E1        .byte $E1   ; 
- D 1 - I - 0x0221E5 08:A1D5: B1        .byte $B1   ; 
- D 1 - I - 0x0221E6 08:A1D6: E2        .byte $E2   ; 
- D 1 - I - 0x0221E7 08:A1D7: 22        .byte $22   ; 
- D 1 - I - 0x0221E8 08:A1D8: 44        .byte $44   ; 
- D 1 - I - 0x0221E9 08:A1D9: E8        .byte $E8   ; 
- D 1 - I - 0x0221EA 08:A1DA: 06        .byte $06   ; 
- D 1 - I - 0x0221EB 08:A1DB: E1        .byte $E1   ; 
- D 1 - I - 0x0221EC 08:A1DC: DF        .byte $DF   ; 
- D 1 - I - 0x0221ED 08:A1DD: 01        .byte $01   ; 
- D 1 - I - 0x0221EE 08:A1DE: 20        .byte $20   ; 
- D 1 - I - 0x0221EF 08:A1DF: 33        .byte $33   ; 
- D 1 - I - 0x0221F0 08:A1E0: 46        .byte $46   ; 
- D 1 - I - 0x0221F1 08:A1E1: DF        .byte $DF   ; 
- D 1 - I - 0x0221F2 08:A1E2: FD        .byte $FD   ; 
- D 1 - I - 0x0221F3 08:A1E3: 87 A4     .word off_FD_A487
- D 1 - I - 0x0221F5 08:A1E5: D6        .byte $D6   ; 
- D 1 - I - 0x0221F6 08:A1E6: 03        .byte $03   ; 
- D 1 - I - 0x0221F7 08:A1E7: FD        .byte $FD   ; 
- D 1 - I - 0x0221F8 08:A1E8: 4B A4     .word off_FD_A44B
- D 1 - I - 0x0221FA 08:A1EA: FE        .byte $FE   ; 
- D 1 - I - 0x0221FB 08:A1EB: FF        .byte $FF   ; 
- D 1 - I - 0x0221FC 08:A1EC: A9 A1     .word off_FF_A1A9



_off001_A1EE_0B:
off_FF_A1EE:
- D 1 - I - 0x0221FE 08:A1EE: EF        .byte $EF   ; 
- D 1 - I - 0x0221FF 08:A1EF: 06        .byte $06   ; 
- D 1 - I - 0x022200 08:A1F0: D4        .byte $D4   ; 
- D 1 - I - 0x022201 08:A1F1: FD        .byte $FD   ; 
- D 1 - I - 0x022202 08:A1F2: 9A A4     .word off_FD_A49A
- D 1 - I - 0x022204 08:A1F4: 23        .byte $23   ; 
- D 1 - I - 0x022205 08:A1F5: 23        .byte $23   ; 
- D 1 - I - 0x022206 08:A1F6: 12        .byte $12   ; 
- D 1 - I - 0x022207 08:A1F7: 11        .byte $11   ; 
- D 1 - I - 0x022208 08:A1F8: 23        .byte $23   ; 
- D 1 - I - 0x022209 08:A1F9: 12        .byte $12   ; 
- D 1 - I - 0x02220A 08:A1FA: 11        .byte $11   ; 
- D 1 - I - 0x02220B 08:A1FB: 12        .byte $12   ; 
- D 1 - I - 0x02220C 08:A1FC: 11        .byte $11   ; 
- D 1 - I - 0x02220D 08:A1FD: 23        .byte $23   ; 
- D 1 - I - 0x02220E 08:A1FE: FD        .byte $FD   ; 
- D 1 - I - 0x02220F 08:A1FF: 9A A4     .word off_FD_A49A
- D 1 - I - 0x022211 08:A201: 23        .byte $23   ; 
- D 1 - I - 0x022212 08:A202: 23        .byte $23   ; 
- D 1 - I - 0x022213 08:A203: 12        .byte $12   ; 
- D 1 - I - 0x022214 08:A204: 11        .byte $11   ; 
- D 1 - I - 0x022215 08:A205: 23        .byte $23   ; 
- D 1 - I - 0x022216 08:A206: 12        .byte $12   ; 
- D 1 - I - 0x022217 08:A207: DE        .byte $DE   ; 
- D 1 - I - 0x022218 08:A208: 14        .byte $14   ; 
- D 1 - I - 0x022219 08:A209: 44        .byte $44   ; 
- D 1 - I - 0x02221A 08:A20A: 44        .byte $44   ; 
- D 1 - I - 0x02221B 08:A20B: DE        .byte $DE   ; 
- D 1 - I - 0x02221C 08:A20C: 41        .byte $41   ; 
- D 1 - I - 0x02221D 08:A20D: FD        .byte $FD   ; 
- D 1 - I - 0x02221E 08:A20E: A9 A4     .word off_FD_A4A9
- D 1 - I - 0x022220 08:A210: FD        .byte $FD   ; 
- D 1 - I - 0x022221 08:A211: A9 A4     .word off_FD_A4A9
- D 1 - I - 0x022223 08:A213: FD        .byte $FD   ; 
- D 1 - I - 0x022224 08:A214: C8 A4     .word off_FD_A4C8
- D 1 - I - 0x022226 08:A216: FD        .byte $FD   ; 
- D 1 - I - 0x022227 08:A217: A9 A4     .word off_FD_A4A9
- D 1 - I - 0x022229 08:A219: FD        .byte $FD   ; 
- D 1 - I - 0x02222A 08:A21A: D7 A4     .word off_FD_A4D7
- D 1 - I - 0x02222C 08:A21C: FD        .byte $FD   ; 
- D 1 - I - 0x02222D 08:A21D: A9 A4     .word off_FD_A4A9
- D 1 - I - 0x02222F 08:A21F: FD        .byte $FD   ; 
- D 1 - I - 0x022230 08:A220: A9 A4     .word off_FD_A4A9
- D 1 - I - 0x022232 08:A222: FD        .byte $FD   ; 
- D 1 - I - 0x022233 08:A223: C8 A4     .word off_FD_A4C8
- D 1 - I - 0x022235 08:A225: FD        .byte $FD   ; 
- D 1 - I - 0x022236 08:A226: A9 A4     .word off_FD_A4A9
- D 1 - I - 0x022238 08:A228: FD        .byte $FD   ; 
- D 1 - I - 0x022239 08:A229: E9 A4     .word off_FD_A4E9
- D 1 - I - 0x02223B 08:A22B: FD        .byte $FD   ; 
- D 1 - I - 0x02223C 08:A22C: F8 A4     .word off_FD_A4F8
- D 1 - I - 0x02223E 08:A22E: FD        .byte $FD   ; 
- D 1 - I - 0x02223F 08:A22F: A9 A4     .word off_FD_A4A9
- D 1 - I - 0x022241 08:A231: FD        .byte $FD   ; 
- D 1 - I - 0x022242 08:A232: 08 A5     .word off_FD_A508
- D 1 - I - 0x022244 08:A234: FE        .byte $FE   ; 
- D 1 - I - 0x022245 08:A235: FF        .byte $FF   ; 
- D 1 - I - 0x022246 08:A236: EE A1     .word off_FF_A1EE
off_FD_A238:
- D 1 - I - 0x022248 08:A238: EE        .byte $EE   ; 
- D 1 - I - 0x022249 08:A239: 00        .byte $00   ; 
- D 1 - I - 0x02224A 08:A23A: ED        .byte $ED   ; 
- D 1 - I - 0x02224B 08:A23B: 81        .byte $81   ; 
- D 1 - I - 0x02224C 08:A23C: D6        .byte $D6   ; 
- D 1 - I - 0x02224D 08:A23D: 34        .byte $34   ; 
- D 1 - I - 0x02224E 08:A23E: 83        .byte $83   ; 
- D 1 - I - 0x02224F 08:A23F: 83        .byte $83   ; 
- D 1 - I - 0x022250 08:A240: FF        .byte $FF   ; 
off_FD_A241:
- D 1 - I - 0x022251 08:A241: E9        .byte $E9   ; 
- D 1 - I - 0x022252 08:A242: 71        .byte $71   ; 
- D 1 - I - 0x022253 08:A243: E3        .byte $E3   ; 
- D 1 - I - 0x022254 08:A244: 44        .byte $44   ; 
- D 1 - I - 0x022255 08:A245: E9        .byte $E9   ; 
- D 1 - I - 0x022256 08:A246: 00        .byte $00   ; 
- D 1 - I - 0x022257 08:A247: F4        .byte $F4   ; 
- D 1 - I - 0x022258 08:A248: E8        .byte $E8   ; 
- D 1 - I - 0x022259 08:A249: 02        .byte $02   ; 
- D 1 - I - 0x02225A 08:A24A: 21        .byte $21   ; 
- D 1 - I - 0x02225B 08:A24B: E2        .byte $E2   ; 
- D 1 - I - 0x02225C 08:A24C: DE        .byte $DE   ; 
- D 1 - I - 0x02225D 08:A24D: B9        .byte $B9   ; 
- D 1 - I - 0x02225E 08:A24E: 74        .byte $74   ; 
- D 1 - I - 0x02225F 08:A24F: 2F        .byte $2F   ; 
- D 1 - I - 0x022260 08:A250: E1        .byte $E1   ; 
- D 1 - I - 0x022261 08:A251: B9        .byte $B9   ; 
- D 1 - I - 0x022262 08:A252: DE        .byte $DE   ; 
- D 1 - I - 0x022263 08:A253: 71        .byte $71   ; 
- D 1 - I - 0x022264 08:A254: E8        .byte $E8   ; 
- D 1 - I - 0x022265 08:A255: 06        .byte $06   ; 
- D 1 - I - 0x022266 08:A256: CC        .byte $CC   ; 
- D 1 - I - 0x022267 08:A257: C5        .byte $C5   ; 
- D 1 - I - 0x022268 08:A258: FF        .byte $FF   ; 
off_FD_A259:
- D 1 - I - 0x022269 08:A259: EB        .byte $EB   ; 
- D 1 - I - 0x02226A 08:A25A: 51        .byte $51   ; 
- D 1 - I - 0x02226B 08:A25B: 12        .byte $12   ; 
- D 1 - I - 0x02226C 08:A25C: E2        .byte $E2   ; 
- D 1 - I - 0x02226D 08:A25D: 51        .byte $51   ; 
- D 1 - I - 0x02226E 08:A25E: 61        .byte $61   ; 
- D 1 - I - 0x02226F 08:A25F: 76        .byte $76   ; 
- D 1 - I - 0x022270 08:A260: E8        .byte $E8   ; 
- D 1 - I - 0x022271 08:A261: 04        .byte $04   ; 
- D 1 - I - 0x022272 08:A262: 71        .byte $71   ; 
- D 1 - I - 0x022273 08:A263: 72        .byte $72   ; 
- D 1 - I - 0x022274 08:A264: 71        .byte $71   ; 
- D 1 - I - 0x022275 08:A265: 72        .byte $72   ; 
- D 1 - I - 0x022276 08:A266: 71        .byte $71   ; 
- D 1 - I - 0x022277 08:A267: 43        .byte $43   ; 
- D 1 - I - 0x022278 08:A268: F3        .byte $F3   ; 
- D 1 - I - 0x022279 08:A269: 43        .byte $43   ; 
- D 1 - I - 0x02227A 08:A26A: EB        .byte $EB   ; 
- D 1 - I - 0x02227B 08:A26B: 00        .byte $00   ; 
- D 1 - I - 0x02227C 08:A26C: FF        .byte $FF   ; 
off_FD_A26D:
- D 1 - I - 0x02227D 08:A26D: ED        .byte $ED   ; 
- D 1 - I - 0x02227E 08:A26E: 81        .byte $81   ; 
- D 1 - I - 0x02227F 08:A26F: E1        .byte $E1   ; 
- D 1 - I - 0x022280 08:A270: 32        .byte $32   ; 
- D 1 - I - 0x022281 08:A271: 22        .byte $22   ; 
- D 1 - I - 0x022282 08:A272: 12        .byte $12   ; 
- D 1 - I - 0x022283 08:A273: 02        .byte $02   ; 
- D 1 - I - 0x022284 08:A274: 62        .byte $62   ; 
- D 1 - I - 0x022285 08:A275: 52        .byte $52   ; 
- D 1 - I - 0x022286 08:A276: ED        .byte $ED   ; 
- D 1 - I - 0x022287 08:A277: 00        .byte $00   ; 
- D 1 - I - 0x022288 08:A278: FF        .byte $FF   ; 
off_FD_A279:
- D 1 - I - 0x022289 08:A279: EC        .byte $EC   ; 
- D 1 - I - 0x02228A 08:A27A: 11        .byte $11   ; 
- D 1 - I - 0x02228B 08:A27B: E4        .byte $E4   ; 
- D 1 - I - 0x02228C 08:A27C: DE        .byte $DE   ; 
- D 1 - I - 0x02228D 08:A27D: 42        .byte $42   ; 
- D 1 - I - 0x02228E 08:A27E: E3        .byte $E3   ; 
- D 1 - I - 0x02228F 08:A27F: B9        .byte $B9   ; 
- D 1 - I - 0x022290 08:A280: 74        .byte $74   ; 
- D 1 - I - 0x022291 08:A281: 2F        .byte $2F   ; 
- D 1 - I - 0x022292 08:A282: E2        .byte $E2   ; 
- D 1 - I - 0x022293 08:A283: B9        .byte $B9   ; 
- D 1 - I - 0x022294 08:A284: 74        .byte $74   ; 
- D 1 - I - 0x022295 08:A285: DE        .byte $DE   ; 
- D 1 - I - 0x022296 08:A286: 21        .byte $21   ; 
- D 1 - I - 0x022297 08:A287: F2        .byte $F2   ; 
- D 1 - I - 0x022298 08:A288: 21        .byte $21   ; 
- D 1 - I - 0x022299 08:A289: F3        .byte $F3   ; 
- D 1 - I - 0x02229A 08:A28A: 21        .byte $21   ; 
- D 1 - I - 0x02229B 08:A28B: F4        .byte $F4   ; 
- D 1 - I - 0x02229C 08:A28C: 21        .byte $21   ; 
- D 1 - I - 0x02229D 08:A28D: EC        .byte $EC   ; 
- D 1 - I - 0x02229E 08:A28E: 00        .byte $00   ; 
- D 1 - I - 0x02229F 08:A28F: FF        .byte $FF   ; 
off_FD_A290:
- D 1 - I - 0x0222A0 08:A290: E1        .byte $E1   ; 
- D 1 - I - 0x0222A1 08:A291: 62        .byte $62   ; 
- D 1 - I - 0x0222A2 08:A292: 52        .byte $52   ; 
- D 1 - I - 0x0222A3 08:A293: 42        .byte $42   ; 
- D 1 - I - 0x0222A4 08:A294: 32        .byte $32   ; 
- D 1 - I - 0x0222A5 08:A295: FF        .byte $FF   ; 
off_FD_A296:
- D 1 - I - 0x0222A6 08:A296: E2        .byte $E2   ; 
- D 1 - I - 0x0222A7 08:A297: B1        .byte $B1   ; 
- D 1 - I - 0x0222A8 08:A298: A1        .byte $A1   ; 
- D 1 - I - 0x0222A9 08:A299: B6        .byte $B6   ; 
- D 1 - I - 0x0222AA 08:A29A: E8        .byte $E8   ; 
- D 1 - I - 0x0222AB 08:A29B: 04        .byte $04   ; 
- D 1 - I - 0x0222AC 08:A29C: A1        .byte $A1   ; 
- D 1 - I - 0x0222AD 08:A29D: B2        .byte $B2   ; 
- D 1 - I - 0x0222AE 08:A29E: 41        .byte $41   ; 
- D 1 - I - 0x0222AF 08:A29F: F3        .byte $F3   ; 
- D 1 - I - 0x0222B0 08:A2A0: 42        .byte $42   ; 
- D 1 - I - 0x0222B1 08:A2A1: F0        .byte $F0   ; 
- D 1 - I - 0x0222B2 08:A2A2: 21        .byte $21   ; 
- D 1 - I - 0x0222B3 08:A2A3: 42        .byte $42   ; 
- D 1 - I - 0x0222B4 08:A2A4: 71        .byte $71   ; 
- D 1 - I - 0x0222B5 08:A2A5: F3        .byte $F3   ; 
- D 1 - I - 0x0222B6 08:A2A6: 71        .byte $71   ; 
- D 1 - I - 0x0222B7 08:A2A7: F4        .byte $F4   ; 
- D 1 - I - 0x0222B8 08:A2A8: 71        .byte $71   ; 
- D 1 - I - 0x0222B9 08:A2A9: F0        .byte $F0   ; 
- D 1 - I - 0x0222BA 08:A2AA: 91        .byte $91   ; 
- D 1 - I - 0x0222BB 08:A2AB: F3        .byte $F3   ; 
- D 1 - I - 0x0222BC 08:A2AC: 91        .byte $91   ; 
- D 1 - I - 0x0222BD 08:A2AD: F4        .byte $F4   ; 
- D 1 - I - 0x0222BE 08:A2AE: 91        .byte $91   ; 
- D 1 - I - 0x0222BF 08:A2AF: F0        .byte $F0   ; 
- D 1 - I - 0x0222C0 08:A2B0: A1        .byte $A1   ; 
- D 1 - I - 0x0222C1 08:A2B1: B1        .byte $B1   ; 
- D 1 - I - 0x0222C2 08:A2B2: E3        .byte $E3   ; 
- D 1 - I - 0x0222C3 08:A2B3: 01        .byte $01   ; 
- D 1 - I - 0x0222C4 08:A2B4: E2        .byte $E2   ; 
- D 1 - I - 0x0222C5 08:A2B5: B1        .byte $B1   ; 
- D 1 - I - 0x0222C6 08:A2B6: 92        .byte $92   ; 
- D 1 - I - 0x0222C7 08:A2B7: 71        .byte $71   ; 
- D 1 - I - 0x0222C8 08:A2B8: 92        .byte $92   ; 
- D 1 - I - 0x0222C9 08:A2B9: 41        .byte $41   ; 
- D 1 - I - 0x0222CA 08:A2BA: F2        .byte $F2   ; 
- D 1 - I - 0x0222CB 08:A2BB: 41        .byte $41   ; 
- D 1 - I - 0x0222CC 08:A2BC: F3        .byte $F3   ; 
- D 1 - I - 0x0222CD 08:A2BD: 41        .byte $41   ; 
- D 1 - I - 0x0222CE 08:A2BE: F4        .byte $F4   ; 
- D 1 - I - 0x0222CF 08:A2BF: 41        .byte $41   ; 
- D 1 - I - 0x0222D0 08:A2C0: FF        .byte $FF   ; 
off_FD_A2C1:
- D 1 - I - 0x0222D1 08:A2C1: E9        .byte $E9   ; 
- D 1 - I - 0x0222D2 08:A2C2: 00        .byte $00   ; 
- D 1 - I - 0x0222D3 08:A2C3: EC        .byte $EC   ; 
- D 1 - I - 0x0222D4 08:A2C4: 00        .byte $00   ; 
- D 1 - I - 0x0222D5 08:A2C5: D4        .byte $D4   ; 
- D 1 - I - 0x0222D6 08:A2C6: 37        .byte $37   ; 
- D 1 - I - 0x0222D7 08:A2C7: 83        .byte $83   ; 
- D 1 - I - 0x0222D8 08:A2C8: 8A        .byte $8A   ; 
- D 1 - I - 0x0222D9 08:A2C9: EB        .byte $EB   ; 
- D 1 - I - 0x0222DA 08:A2CA: 58        .byte $58   ; 
- D 1 - I - 0x0222DB 08:A2CB: 01        .byte $01   ; 
- D 1 - I - 0x0222DC 08:A2CC: E3        .byte $E3   ; 
- D 1 - I - 0x0222DD 08:A2CD: 42        .byte $42   ; 
- D 1 - I - 0x0222DE 08:A2CE: F3        .byte $F3   ; 
- D 1 - I - 0x0222DF 08:A2CF: 41        .byte $41   ; 
- D 1 - I - 0x0222E0 08:A2D0: F4        .byte $F4   ; 
- D 1 - I - 0x0222E1 08:A2D1: 41        .byte $41   ; 
- D 1 - I - 0x0222E2 08:A2D2: F5        .byte $F5   ; 
- D 1 - I - 0x0222E3 08:A2D3: 41        .byte $41   ; 
- D 1 - I - 0x0222E4 08:A2D4: F6        .byte $F6   ; 
- D 1 - I - 0x0222E5 08:A2D5: 41        .byte $41   ; 
- D 1 - I - 0x0222E6 08:A2D6: F0        .byte $F0   ; 
- D 1 - I - 0x0222E7 08:A2D7: 21        .byte $21   ; 
- D 1 - I - 0x0222E8 08:A2D8: F3        .byte $F3   ; 
- D 1 - I - 0x0222E9 08:A2D9: 21        .byte $21   ; 
- D 1 - I - 0x0222EA 08:A2DA: F4        .byte $F4   ; 
- D 1 - I - 0x0222EB 08:A2DB: 21        .byte $21   ; 
- D 1 - I - 0x0222EC 08:A2DC: F0        .byte $F0   ; 
- D 1 - I - 0x0222ED 08:A2DD: 21        .byte $21   ; 
- D 1 - I - 0x0222EE 08:A2DE: F4        .byte $F4   ; 
- D 1 - I - 0x0222EF 08:A2DF: 21        .byte $21   ; 
- D 1 - I - 0x0222F0 08:A2E0: F0        .byte $F0   ; 
- D 1 - I - 0x0222F1 08:A2E1: 41        .byte $41   ; 
- D 1 - I - 0x0222F2 08:A2E2: F4        .byte $F4   ; 
- D 1 - I - 0x0222F3 08:A2E3: 21        .byte $21   ; 
- D 1 - I - 0x0222F4 08:A2E4: F5        .byte $F5   ; 
- D 1 - I - 0x0222F5 08:A2E5: 21        .byte $21   ; 
- D 1 - I - 0x0222F6 08:A2E6: F0        .byte $F0   ; 
- D 1 - I - 0x0222F7 08:A2E7: 21        .byte $21   ; 
- D 1 - I - 0x0222F8 08:A2E8: 41        .byte $41   ; 
- D 1 - I - 0x0222F9 08:A2E9: F3        .byte $F3   ; 
- D 1 - I - 0x0222FA 08:A2EA: 41        .byte $41   ; 
- D 1 - I - 0x0222FB 08:A2EB: F4        .byte $F4   ; 
- D 1 - I - 0x0222FC 08:A2EC: 41        .byte $41   ; 
- D 1 - I - 0x0222FD 08:A2ED: EB        .byte $EB   ; 
- D 1 - I - 0x0222FE 08:A2EE: 00        .byte $00   ; 
- D 1 - I - 0x0222FF 08:A2EF: FF        .byte $FF   ; 
off_FD_A2F0:
- D 1 - I - 0x022300 08:A2F0: FB        .byte $FB   ; 
- D 1 - I - 0x022301 08:A2F1: D1        .byte $D1   ; 
- D 1 - I - 0x022302 08:A2F2: 37        .byte $37   ; 
- D 1 - I - 0x022303 08:A2F3: 83        .byte $83   ; 
- D 1 - I - 0x022304 08:A2F4: 85        .byte $85   ; 
- D 1 - I - 0x022305 08:A2F5: E2        .byte $E2   ; 
- D 1 - I - 0x022306 08:A2F6: 51        .byte $51   ; 
- D 1 - I - 0x022307 08:A2F7: 61        .byte $61   ; 
- D 1 - I - 0x022308 08:A2F8: 76        .byte $76   ; 
- D 1 - I - 0x022309 08:A2F9: E8        .byte $E8   ; 
- D 1 - I - 0x02230A 08:A2FA: 04        .byte $04   ; 
- D 1 - I - 0x02230B 08:A2FB: 61        .byte $61   ; 
- D 1 - I - 0x02230C 08:A2FC: 72        .byte $72   ; 
- D 1 - I - 0x02230D 08:A2FD: 41        .byte $41   ; 
- D 1 - I - 0x02230E 08:A2FE: F3        .byte $F3   ; 
- D 1 - I - 0x02230F 08:A2FF: 41        .byte $41   ; 
- D 1 - I - 0x022310 08:A300: F4        .byte $F4   ; 
- D 1 - I - 0x022311 08:A301: 41        .byte $41   ; 
- D 1 - I - 0x022312 08:A302: F5        .byte $F5   ; 
- D 1 - I - 0x022313 08:A303: 41        .byte $41   ; 
- D 1 - I - 0x022314 08:A304: F0        .byte $F0   ; 
- D 1 - I - 0x022315 08:A305: FE        .byte $FE   ; 
- D 1 - I - 0x022316 08:A306: 02        .byte $02   ; 
- D 1 - I - 0x022317 08:A307: 72        .byte $72   ; 
- D 1 - I - 0x022318 08:A308: F3        .byte $F3   ; 
- D 1 - I - 0x022319 08:A309: 71        .byte $71   ; 
- D 1 - I - 0x02231A 08:A30A: F0        .byte $F0   ; 
- D 1 - I - 0x02231B 08:A30B: 92        .byte $92   ; 
- D 1 - I - 0x02231C 08:A30C: F3        .byte $F3   ; 
- D 1 - I - 0x02231D 08:A30D: 91        .byte $91   ; 
- D 1 - I - 0x02231E 08:A30E: F0        .byte $F0   ; 
- D 1 - I - 0x02231F 08:A30F: A1        .byte $A1   ; 
- D 1 - I - 0x022320 08:A310: 91        .byte $91   ; 
- D 1 - I - 0x022321 08:A311: 71        .byte $71   ; 
- D 1 - I - 0x022322 08:A312: 92        .byte $92   ; 
- D 1 - I - 0x022323 08:A313: E7        .byte $E7   ; 
- D 1 - I - 0x022324 08:A314: 8A        .byte $8A   ; 
- D 1 - I - 0x022325 08:A315: EB        .byte $EB   ; 
- D 1 - I - 0x022326 08:A316: 58        .byte $58   ; 
- D 1 - I - 0x022327 08:A317: 12        .byte $12   ; 
- D 1 - I - 0x022328 08:A318: 43        .byte $43   ; 
- D 1 - I - 0x022329 08:A319: E7        .byte $E7   ; 
- D 1 - I - 0x02232A 08:A31A: 85        .byte $85   ; 
- D 1 - I - 0x02232B 08:A31B: EB        .byte $EB   ; 
- D 1 - I - 0x02232C 08:A31C: 00        .byte $00   ; 
- D 1 - I - 0x02232D 08:A31D: 21        .byte $21   ; 
- D 1 - I - 0x02232E 08:A31E: 42        .byte $42   ; 
- D 1 - I - 0x02232F 08:A31F: E8        .byte $E8   ; 
- D 1 - I - 0x022330 08:A320: 01        .byte $01   ; 
- D 1 - I - 0x022331 08:A321: 51        .byte $51   ; 
- D 1 - I - 0x022332 08:A322: 61        .byte $61   ; 
- D 1 - I - 0x022333 08:A323: 7A        .byte $7A   ; 
- D 1 - I - 0x022334 08:A324: D4        .byte $D4   ; 
- D 1 - I - 0x022335 08:A325: 37        .byte $37   ; 
- D 1 - I - 0x022336 08:A326: 84        .byte $84   ; 
- D 1 - I - 0x022337 08:A327: 87        .byte $87   ; 
- D 1 - I - 0x022338 08:A328: EB        .byte $EB   ; 
- D 1 - I - 0x022339 08:A329: 52        .byte $52   ; 
- D 1 - I - 0x02233A 08:A32A: 21        .byte $21   ; 
- D 1 - I - 0x02233B 08:A32B: 44        .byte $44   ; 
- D 1 - I - 0x02233C 08:A32C: EB        .byte $EB   ; 
- D 1 - I - 0x02233D 08:A32D: 00        .byte $00   ; 
- D 1 - I - 0x02233E 08:A32E: E6        .byte $E6   ; 
- D 1 - I - 0x02233F 08:A32F: 83        .byte $83   ; 
- D 1 - I - 0x022340 08:A330: 73        .byte $73   ; 
- D 1 - I - 0x022341 08:A331: 83        .byte $83   ; 
- D 1 - I - 0x022342 08:A332: E7        .byte $E7   ; 
- D 1 - I - 0x022343 08:A333: 00        .byte $00   ; 
- D 1 - I - 0x022344 08:A334: EB        .byte $EB   ; 
- D 1 - I - 0x022345 08:A335: 58        .byte $58   ; 
- D 1 - I - 0x022346 08:A336: 33        .byte $33   ; 
- D 1 - I - 0x022347 08:A337: 90        .byte $90   ; 
- D 1 - I - 0x022348 08:A338: E6        .byte $E6   ; 
- D 1 - I - 0x022349 08:A339: 80        .byte $80   ; 
- D 1 - I - 0x02234A 08:A33A: F3        .byte $F3   ; 
- D 1 - I - 0x02234B 08:A33B: E7        .byte $E7   ; 
- D 1 - I - 0x02234C 08:A33C: DD        .byte $DD   ; 
- D 1 - I - 0x02234D 08:A33D: 98        .byte $98   ; 
- D 1 - I - 0x02234E 08:A33E: EB        .byte $EB   ; 
- D 1 - I - 0x02234F 08:A33F: 00        .byte $00   ; 
- D 1 - I - 0x022350 08:A340: FF        .byte $FF   ; 
off_FD_A341:
- D 1 - I - 0x022351 08:A341: EC        .byte $EC   ; 
- D 1 - I - 0x022352 08:A342: 25        .byte $25   ; 
- D 1 - I - 0x022353 08:A343: D2        .byte $D2   ; 
- D 1 - I - 0x022354 08:A344: 37        .byte $37   ; 
- D 1 - I - 0x022355 08:A345: 83        .byte $83   ; 
- D 1 - I - 0x022356 08:A346: 84        .byte $84   ; 
- D 1 - I - 0x022357 08:A347: E2        .byte $E2   ; 
- D 1 - I - 0x022358 08:A348: 91        .byte $91   ; 
- D 1 - I - 0x022359 08:A349: A1        .byte $A1   ; 
- D 1 - I - 0x02235A 08:A34A: B2        .byte $B2   ; 
- D 1 - I - 0x02235B 08:A34B: B2        .byte $B2   ; 
- D 1 - I - 0x02235C 08:A34C: B4        .byte $B4   ; 
- D 1 - I - 0x02235D 08:A34D: B2        .byte $B2   ; 
- D 1 - I - 0x02235E 08:A34E: F3        .byte $F3   ; 
- D 1 - I - 0x02235F 08:A34F: B2        .byte $B2   ; 
- D 1 - I - 0x022360 08:A350: F4        .byte $F4   ; 
- D 1 - I - 0x022361 08:A351: B2        .byte $B2   ; 
- D 1 - I - 0x022362 08:A352: F5        .byte $F5   ; 
- D 1 - I - 0x022363 08:A353: B2        .byte $B2   ; 
- D 1 - I - 0x022364 08:A354: F0        .byte $F0   ; 
- D 1 - I - 0x022365 08:A355: FB        .byte $FB   ; 
- D 1 - I - 0x022366 08:A356: B4        .byte $B4   ; 
- D 1 - I - 0x022367 08:A357: B2        .byte $B2   ; 
- D 1 - I - 0x022368 08:A358: FE        .byte $FE   ; 
- D 1 - I - 0x022369 08:A359: 02        .byte $02   ; 
- D 1 - I - 0x02236A 08:A35A: E8        .byte $E8   ; 
- D 1 - I - 0x02236B 08:A35B: 04        .byte $04   ; 
- D 1 - I - 0x02236C 08:A35C: F3        .byte $F3   ; 
- D 1 - I - 0x02236D 08:A35D: B1        .byte $B1   ; 
- D 1 - I - 0x02236E 08:A35E: F4        .byte $F4   ; 
- D 1 - I - 0x02236F 08:A35F: B1        .byte $B1   ; 
- D 1 - I - 0x022370 08:A360: F5        .byte $F5   ; 
- D 1 - I - 0x022371 08:A361: B1        .byte $B1   ; 
- D 1 - I - 0x022372 08:A362: C2        .byte $C2   ; 
- D 1 - I - 0x022373 08:A363: F0        .byte $F0   ; 
- D 1 - I - 0x022374 08:A364: E2        .byte $E2   ; 
- D 1 - I - 0x022375 08:A365: B1        .byte $B1   ; 
- D 1 - I - 0x022376 08:A366: EC        .byte $EC   ; 
- D 1 - I - 0x022377 08:A367: 24        .byte $24   ; 
- D 1 - I - 0x022378 08:A368: E7        .byte $E7   ; 
- D 1 - I - 0x022379 08:A369: 16        .byte $16   ; 
- D 1 - I - 0x02237A 08:A36A: EB        .byte $EB   ; 
- D 1 - I - 0x02237B 08:A36B: 58        .byte $58   ; 
- D 1 - I - 0x02237C 08:A36C: 03        .byte $03   ; 
- D 1 - I - 0x02237D 08:A36D: E3        .byte $E3   ; 
- D 1 - I - 0x02237E 08:A36E: 23        .byte $23   ; 
- D 1 - I - 0x02237F 08:A36F: EB        .byte $EB   ; 
- D 1 - I - 0x022380 08:A370: 00        .byte $00   ; 
- D 1 - I - 0x022381 08:A371: FF        .byte $FF   ; 
off_FD_A372:
- D 1 - I - 0x022382 08:A372: D4        .byte $D4   ; 
- D 1 - I - 0x022383 08:A373: 37        .byte $37   ; 
- D 1 - I - 0x022384 08:A374: 83        .byte $83   ; 
- D 1 - I - 0x022385 08:A375: 85        .byte $85   ; 
- D 1 - I - 0x022386 08:A376: E3        .byte $E3   ; 
- D 1 - I - 0x022387 08:A377: 22        .byte $22   ; 
- D 1 - I - 0x022388 08:A378: 21        .byte $21   ; 
- D 1 - I - 0x022389 08:A379: E2        .byte $E2   ; 
- D 1 - I - 0x02238A 08:A37A: B2        .byte $B2   ; 
- D 1 - I - 0x02238B 08:A37B: B1        .byte $B1   ; 
- D 1 - I - 0x02238C 08:A37C: F3        .byte $F3   ; 
- D 1 - I - 0x02238D 08:A37D: B1        .byte $B1   ; 
- D 1 - I - 0x02238E 08:A37E: F4        .byte $F4   ; 
- D 1 - I - 0x02238F 08:A37F: B1        .byte $B1   ; 
- D 1 - I - 0x022390 08:A380: F0        .byte $F0   ; 
- D 1 - I - 0x022391 08:A381: B1        .byte $B1   ; 
- D 1 - I - 0x022392 08:A382: 92        .byte $92   ; 
- D 1 - I - 0x022393 08:A383: B1        .byte $B1   ; 
- D 1 - I - 0x022394 08:A384: F3        .byte $F3   ; 
- D 1 - I - 0x022395 08:A385: 92        .byte $92   ; 
- D 1 - I - 0x022396 08:A386: B1        .byte $B1   ; 
- D 1 - I - 0x022397 08:A387: F4        .byte $F4   ; 
- D 1 - I - 0x022398 08:A388: 92        .byte $92   ; 
- D 1 - I - 0x022399 08:A389: B1        .byte $B1   ; 
- D 1 - I - 0x02239A 08:A38A: C6        .byte $C6   ; 
- D 1 - I - 0x02239B 08:A38B: FF        .byte $FF   ; 
off_FD_A38C:
- D 1 - I - 0x02239C 08:A38C: E2        .byte $E2   ; 
- D 1 - I - 0x02239D 08:A38D: 71        .byte $71   ; 
- D 1 - I - 0x02239E 08:A38E: 81        .byte $81   ; 
- D 1 - I - 0x02239F 08:A38F: 9A        .byte $9A   ; 
- D 1 - I - 0x0223A0 08:A390: E8        .byte $E8   ; 
- D 1 - I - 0x0223A1 08:A391: 04        .byte $04   ; 
- D 1 - I - 0x0223A2 08:A392: 42        .byte $42   ; 
- D 1 - I - 0x0223A3 08:A393: 73        .byte $73   ; 
- D 1 - I - 0x0223A4 08:A394: 91        .byte $91   ; 
- D 1 - I - 0x0223A5 08:A395: B2        .byte $B2   ; 
- D 1 - I - 0x0223A6 08:A396: E3        .byte $E3   ; 
- D 1 - I - 0x0223A7 08:A397: 01        .byte $01   ; 
- D 1 - I - 0x0223A8 08:A398: E2        .byte $E2   ; 
- D 1 - I - 0x0223A9 08:A399: B3        .byte $B3   ; 
- D 1 - I - 0x0223AA 08:A39A: B3        .byte $B3   ; 
- D 1 - I - 0x0223AB 08:A39B: 92        .byte $92   ; 
- D 1 - I - 0x0223AC 08:A39C: 41        .byte $41   ; 
- D 1 - I - 0x0223AD 08:A39D: 22        .byte $22   ; 
- D 1 - I - 0x0223AE 08:A39E: FF        .byte $FF   ; 
off_FD_A39F:
- D 1 - I - 0x0223AF 08:A39F: E3        .byte $E3   ; 
- D 1 - I - 0x0223B0 08:A3A0: 42        .byte $42   ; 
- D 1 - I - 0x0223B1 08:A3A1: E2        .byte $E2   ; 
- D 1 - I - 0x0223B2 08:A3A2: B1        .byte $B1   ; 
- D 1 - I - 0x0223B3 08:A3A3: E3        .byte $E3   ; 
- D 1 - I - 0x0223B4 08:A3A4: 23        .byte $23   ; 
- D 1 - I - 0x0223B5 08:A3A5: 43        .byte $43   ; 
- D 1 - I - 0x0223B6 08:A3A6: 43        .byte $43   ; 
- D 1 - I - 0x0223B7 08:A3A7: 42        .byte $42   ; 
- D 1 - I - 0x0223B8 08:A3A8: E2        .byte $E2   ; 
- D 1 - I - 0x0223B9 08:A3A9: B1        .byte $B1   ; 
- D 1 - I - 0x0223BA 08:A3AA: E3        .byte $E3   ; 
- D 1 - I - 0x0223BB 08:A3AB: 22        .byte $22   ; 
- D 1 - I - 0x0223BC 08:A3AC: EB        .byte $EB   ; 
- D 1 - I - 0x0223BD 08:A3AD: 58        .byte $58   ; 
- D 1 - I - 0x0223BE 08:A3AE: 12        .byte $12   ; 
- D 1 - I - 0x0223BF 08:A3AF: 44        .byte $44   ; 
- D 1 - I - 0x0223C0 08:A3B0: EB        .byte $EB   ; 
- D 1 - I - 0x0223C1 08:A3B1: 00        .byte $00   ; 
- D 1 - I - 0x0223C2 08:A3B2: E9        .byte $E9   ; 
- D 1 - I - 0x0223C3 08:A3B3: 00        .byte $00   ; 
- D 1 - I - 0x0223C4 08:A3B4: FF        .byte $FF   ; 
off_FD_A3B5:
- D 1 - I - 0x0223C5 08:A3B5: FB        .byte $FB   ; 
- D 1 - I - 0x0223C6 08:A3B6: E3        .byte $E3   ; 
- D 1 - I - 0x0223C7 08:A3B7: 42        .byte $42   ; 
- D 1 - I - 0x0223C8 08:A3B8: 21        .byte $21   ; 
- D 1 - I - 0x0223C9 08:A3B9: E2        .byte $E2   ; 
- D 1 - I - 0x0223CA 08:A3BA: B2        .byte $B2   ; 
- D 1 - I - 0x0223CB 08:A3BB: E3        .byte $E3   ; 
- D 1 - I - 0x0223CC 08:A3BC: 41        .byte $41   ; 
- D 1 - I - 0x0223CD 08:A3BD: 22        .byte $22   ; 
- D 1 - I - 0x0223CE 08:A3BE: E2        .byte $E2   ; 
- D 1 - I - 0x0223CF 08:A3BF: B1        .byte $B1   ; 
- D 1 - I - 0x0223D0 08:A3C0: FE        .byte $FE   ; 
- D 1 - I - 0x0223D1 08:A3C1: 02        .byte $02   ; 
- D 1 - I - 0x0223D2 08:A3C2: E3        .byte $E3   ; 
- D 1 - I - 0x0223D3 08:A3C3: 23        .byte $23   ; 
- D 1 - I - 0x0223D4 08:A3C4: 33        .byte $33   ; 
- D 1 - I - 0x0223D5 08:A3C5: EB        .byte $EB   ; 
- D 1 - I - 0x0223D6 08:A3C6: 58        .byte $58   ; 
- D 1 - I - 0x0223D7 08:A3C7: 83        .byte $83   ; 
- D 1 - I - 0x0223D8 08:A3C8: 40        .byte $40   ; 
- D 1 - I - 0x0223D9 08:A3C9: EB        .byte $EB   ; 
- D 1 - I - 0x0223DA 08:A3CA: 00        .byte $00   ; 
- D 1 - I - 0x0223DB 08:A3CB: FF        .byte $FF   ; 
off_FD_A3CC:
- D 1 - I - 0x0223DC 08:A3CC: FB        .byte $FB   ; 
- D 1 - I - 0x0223DD 08:A3CD: D4        .byte $D4   ; 
- D 1 - I - 0x0223DE 08:A3CE: B5        .byte $B5   ; 
- D 1 - I - 0x0223DF 08:A3CF: 82        .byte $82   ; 
- D 1 - I - 0x0223E0 08:A3D0: 85        .byte $85   ; 
- D 1 - I - 0x0223E1 08:A3D1: EC        .byte $EC   ; 
- D 1 - I - 0x0223E2 08:A3D2: 11        .byte $11   ; 
- D 1 - I - 0x0223E3 08:A3D3: E2        .byte $E2   ; 
- D 1 - I - 0x0223E4 08:A3D4: 01        .byte $01   ; 
- D 1 - I - 0x0223E5 08:A3D5: F3        .byte $F3   ; 
- D 1 - I - 0x0223E6 08:A3D6: 01        .byte $01   ; 
- D 1 - I - 0x0223E7 08:A3D7: F0        .byte $F0   ; 
- D 1 - I - 0x0223E8 08:A3D8: 41        .byte $41   ; 
- D 1 - I - 0x0223E9 08:A3D9: 71        .byte $71   ; 
- D 1 - I - 0x0223EA 08:A3DA: F3        .byte $F3   ; 
- D 1 - I - 0x0223EB 08:A3DB: 71        .byte $71   ; 
- D 1 - I - 0x0223EC 08:A3DC: F0        .byte $F0   ; 
- D 1 - I - 0x0223ED 08:A3DD: E3        .byte $E3   ; 
- D 1 - I - 0x0223EE 08:A3DE: 01        .byte $01   ; 
- D 1 - I - 0x0223EF 08:A3DF: F3        .byte $F3   ; 
- D 1 - I - 0x0223F0 08:A3E0: 01        .byte $01   ; 
- D 1 - I - 0x0223F1 08:A3E1: F4        .byte $F4   ; 
- D 1 - I - 0x0223F2 08:A3E2: 01        .byte $01   ; 
- D 1 - I - 0x0223F3 08:A3E3: F5        .byte $F5   ; 
- D 1 - I - 0x0223F4 08:A3E4: 01        .byte $01   ; 
- D 1 - I - 0x0223F5 08:A3E5: F0        .byte $F0   ; 
- D 1 - I - 0x0223F6 08:A3E6: FE        .byte $FE   ; 
- D 1 - I - 0x0223F7 08:A3E7: 02        .byte $02   ; 
- D 1 - I - 0x0223F8 08:A3E8: E1        .byte $E1   ; 
- D 1 - I - 0x0223F9 08:A3E9: A2        .byte $A2   ; 
- D 1 - I - 0x0223FA 08:A3EA: F3        .byte $F3   ; 
- D 1 - I - 0x0223FB 08:A3EB: A1        .byte $A1   ; 
- D 1 - I - 0x0223FC 08:A3EC: E2        .byte $E2   ; 
- D 1 - I - 0x0223FD 08:A3ED: F0        .byte $F0   ; 
- D 1 - I - 0x0223FE 08:A3EE: 02        .byte $02   ; 
- D 1 - I - 0x0223FF 08:A3EF: F3        .byte $F3   ; 
- D 1 - I - 0x022400 08:A3F0: 01        .byte $01   ; 
- D 1 - I - 0x022401 08:A3F1: F0        .byte $F0   ; 
- D 1 - I - 0x022402 08:A3F2: 11        .byte $11   ; 
- D 1 - I - 0x022403 08:A3F3: 01        .byte $01   ; 
- D 1 - I - 0x022404 08:A3F4: E1        .byte $E1   ; 
- D 1 - I - 0x022405 08:A3F5: A1        .byte $A1   ; 
- D 1 - I - 0x022406 08:A3F6: E2        .byte $E2   ; 
- D 1 - I - 0x022407 08:A3F7: 02        .byte $02   ; 
- D 1 - I - 0x022408 08:A3F8: E7        .byte $E7   ; 
- D 1 - I - 0x022409 08:A3F9: 88        .byte $88   ; 
- D 1 - I - 0x02240A 08:A3FA: EB        .byte $EB   ; 
- D 1 - I - 0x02240B 08:A3FB: 58        .byte $58   ; 
- D 1 - I - 0x02240C 08:A3FC: 12        .byte $12   ; 
- D 1 - I - 0x02240D 08:A3FD: E1        .byte $E1   ; 
- D 1 - I - 0x02240E 08:A3FE: 73        .byte $73   ; 
- D 1 - I - 0x02240F 08:A3FF: E7        .byte $E7   ; 
- D 1 - I - 0x022410 08:A400: 83        .byte $83   ; 
- D 1 - I - 0x022411 08:A401: EB        .byte $EB   ; 
- D 1 - I - 0x022412 08:A402: 00        .byte $00   ; 
- D 1 - I - 0x022413 08:A403: 51        .byte $51   ; 
- D 1 - I - 0x022414 08:A404: 72        .byte $72   ; 
- D 1 - I - 0x022415 08:A405: E8        .byte $E8   ; 
- D 1 - I - 0x022416 08:A406: 01        .byte $01   ; 
- D 1 - I - 0x022417 08:A407: 81        .byte $81   ; 
- D 1 - I - 0x022418 08:A408: 91        .byte $91   ; 
- D 1 - I - 0x022419 08:A409: AA        .byte $AA   ; 
- D 1 - I - 0x02241A 08:A40A: D4        .byte $D4   ; 
- D 1 - I - 0x02241B 08:A40B: B5        .byte $B5   ; 
- D 1 - I - 0x02241C 08:A40C: 82        .byte $82   ; 
- D 1 - I - 0x02241D 08:A40D: 83        .byte $83   ; 
- D 1 - I - 0x02241E 08:A40E: EB        .byte $EB   ; 
- D 1 - I - 0x02241F 08:A40F: 52        .byte $52   ; 
- D 1 - I - 0x022420 08:A410: 21        .byte $21   ; 
- D 1 - I - 0x022421 08:A411: E1        .byte $E1   ; 
- D 1 - I - 0x022422 08:A412: 74        .byte $74   ; 
- D 1 - I - 0x022423 08:A413: EB        .byte $EB   ; 
- D 1 - I - 0x022424 08:A414: 00        .byte $00   ; 
- D 1 - I - 0x022425 08:A415: E6        .byte $E6   ; 
- D 1 - I - 0x022426 08:A416: 83        .byte $83   ; 
- D 1 - I - 0x022427 08:A417: A3        .byte $A3   ; 
- D 1 - I - 0x022428 08:A418: B3        .byte $B3   ; 
- D 1 - I - 0x022429 08:A419: E9        .byte $E9   ; 
- D 1 - I - 0x02242A 08:A41A: B1        .byte $B1   ; 
- D 1 - I - 0x02242B 08:A41B: E4        .byte $E4   ; 
- D 1 - I - 0x02242C 08:A41C: DE        .byte $DE   ; 
- D 1 - I - 0x02242D 08:A41D: 42        .byte $42   ; 
- D 1 - I - 0x02242E 08:A41E: 0F        .byte $0F   ; 
- D 1 - I - 0x02242F 08:A41F: E3        .byte $E3   ; 
- D 1 - I - 0x022430 08:A420: 98        .byte $98   ; 
- D 1 - I - 0x022431 08:A421: 74        .byte $74   ; 
- D 1 - I - 0x022432 08:A422: 20        .byte $20   ; 
- D 1 - I - 0x022433 08:A423: E2        .byte $E2   ; 
- D 1 - I - 0x022434 08:A424: 98        .byte $98   ; 
- D 1 - I - 0x022435 08:A425: 74        .byte $74   ; 
- D 1 - I - 0x022436 08:A426: 20        .byte $20   ; 
- D 1 - I - 0x022437 08:A427: E1        .byte $E1   ; 
- D 1 - I - 0x022438 08:A428: 98        .byte $98   ; 
- D 1 - I - 0x022439 08:A429: 74        .byte $74   ; 
- D 1 - I - 0x02243A 08:A42A: 20        .byte $20   ; 
- D 1 - I - 0x02243B 08:A42B: E0        .byte $E0   ; 
- D 1 - I - 0x02243C 08:A42C: 98        .byte $98   ; 
- D 1 - I - 0x02243D 08:A42D: DE        .byte $DE   ; 
- D 1 - I - 0x02243E 08:A42E: 71        .byte $71   ; 
- D 1 - I - 0x02243F 08:A42F: E9        .byte $E9   ; 
- D 1 - I - 0x022440 08:A430: 00        .byte $00   ; 
- D 1 - I - 0x022441 08:A431: FF        .byte $FF   ; 
off_FD_A432:
- D 1 - I - 0x022442 08:A432: D4        .byte $D4   ; 
- D 1 - I - 0x022443 08:A433: B5        .byte $B5   ; 
- D 1 - I - 0x022444 08:A434: 83        .byte $83   ; 
- D 1 - I - 0x022445 08:A435: 14        .byte $14   ; 
- D 1 - I - 0x022446 08:A436: F1        .byte $F1   ; 
- D 1 - I - 0x022447 08:A437: E2        .byte $E2   ; 
- D 1 - I - 0x022448 08:A438: 02        .byte $02   ; 
- D 1 - I - 0x022449 08:A439: 41        .byte $41   ; 
- D 1 - I - 0x02244A 08:A43A: 92        .byte $92   ; 
- D 1 - I - 0x02244B 08:A43B: 41        .byte $41   ; 
- D 1 - I - 0x02244C 08:A43C: E3        .byte $E3   ; 
- D 1 - I - 0x02244D 08:A43D: 02        .byte $02   ; 
- D 1 - I - 0x02244E 08:A43E: E2        .byte $E2   ; 
- D 1 - I - 0x02244F 08:A43F: 41        .byte $41   ; 
- D 1 - I - 0x022450 08:A440: 92        .byte $92   ; 
- D 1 - I - 0x022451 08:A441: 41        .byte $41   ; 
- D 1 - I - 0x022452 08:A442: E1        .byte $E1   ; 
- D 1 - I - 0x022453 08:A443: B2        .byte $B2   ; 
- D 1 - I - 0x022454 08:A444: E2        .byte $E2   ; 
- D 1 - I - 0x022455 08:A445: 31        .byte $31   ; 
- D 1 - I - 0x022456 08:A446: E3        .byte $E3   ; 
- D 1 - I - 0x022457 08:A447: 32        .byte $32   ; 
- D 1 - I - 0x022458 08:A448: E2        .byte $E2   ; 
- D 1 - I - 0x022459 08:A449: 61        .byte $61   ; 
- D 1 - I - 0x02245A 08:A44A: FF        .byte $FF   ; 
off_FD_A44B:
- D 1 - I - 0x02245B 08:A44B: FB        .byte $FB   ; 
- D 1 - I - 0x02245C 08:A44C: E1        .byte $E1   ; 
- D 1 - I - 0x02245D 08:A44D: DF        .byte $DF   ; 
- D 1 - I - 0x02245E 08:A44E: 43        .byte $43   ; 
- D 1 - I - 0x02245F 08:A44F: 21        .byte $21   ; 
- D 1 - I - 0x022460 08:A450: 06        .byte $06   ; 
- D 1 - I - 0x022461 08:A451: 54        .byte $54   ; 
- D 1 - I - 0x022462 08:A452: 39        .byte $39   ; 
- D 1 - I - 0x022463 08:A453: 87        .byte $87   ; 
- D 1 - I - 0x022464 08:A454: 65        .byte $65   ; 
- D 1 - I - 0x022465 08:A455: 43        .byte $43   ; 
- D 1 - I - 0x022466 08:A456: DF        .byte $DF   ; 
- D 1 - I - 0x022467 08:A457: FE        .byte $FE   ; 
- D 1 - I - 0x022468 08:A458: 02        .byte $02   ; 
- D 1 - I - 0x022469 08:A459: FF        .byte $FF   ; 
off_FD_A45A:
- D 1 - I - 0x02246A 08:A45A: FB        .byte $FB   ; 
- D 1 - I - 0x02246B 08:A45B: 02        .byte $02   ; 
- D 1 - I - 0x02246C 08:A45C: E0        .byte $E0   ; 
- D 1 - I - 0x02246D 08:A45D: B2        .byte $B2   ; 
- D 1 - I - 0x02246E 08:A45E: A2        .byte $A2   ; 
- D 1 - I - 0x02246F 08:A45F: E1        .byte $E1   ; 
- D 1 - I - 0x022470 08:A460: FE        .byte $FE   ; 
- D 1 - I - 0x022471 08:A461: 05        .byte $05   ; 
- D 1 - I - 0x022472 08:A462: DF        .byte $DF   ; 
- D 1 - I - 0x022473 08:A463: 02        .byte $02   ; 
- D 1 - I - 0x022474 08:A464: 10        .byte $10   ; 
- D 1 - I - 0x022475 08:A465: E0        .byte $E0   ; 
- D 1 - I - 0x022476 08:A466: B9        .byte $B9   ; 
- D 1 - I - 0x022477 08:A467: 87        .byte $87   ; 
- D 1 - I - 0x022478 08:A468: DF        .byte $DF   ; 
- D 1 - I - 0x022479 08:A469: 62        .byte $62   ; 
- D 1 - I - 0x02247A 08:A46A: FF        .byte $FF   ; 
off_FD_A46B:
- D 1 - I - 0x02247B 08:A46B: D4        .byte $D4   ; 
- D 1 - I - 0x02247C 08:A46C: 04        .byte $04   ; 
- D 1 - I - 0x02247D 08:A46D: FB        .byte $FB   ; 
- D 1 - I - 0x02247E 08:A46E: B2        .byte $B2   ; 
- D 1 - I - 0x02247F 08:A46F: B1        .byte $B1   ; 
- D 1 - I - 0x022480 08:A470: B2        .byte $B2   ; 
- D 1 - I - 0x022481 08:A471: B1        .byte $B1   ; 
- D 1 - I - 0x022482 08:A472: C3        .byte $C3   ; 
- D 1 - I - 0x022483 08:A473: FE        .byte $FE   ; 
- D 1 - I - 0x022484 08:A474: 02        .byte $02   ; 
- D 1 - I - 0x022485 08:A475: C2        .byte $C2   ; 
- D 1 - I - 0x022486 08:A476: B1        .byte $B1   ; 
- D 1 - I - 0x022487 08:A477: E1        .byte $E1   ; 
- D 1 - I - 0x022488 08:A478: 23        .byte $23   ; 
- D 1 - I - 0x022489 08:A479: FF        .byte $FF   ; 
off_FD_A47A:
- D 1 - I - 0x02248A 08:A47A: D4        .byte $D4   ; 
- D 1 - I - 0x02248B 08:A47B: 04        .byte $04   ; 
- D 1 - I - 0x02248C 08:A47C: E1        .byte $E1   ; 
- D 1 - I - 0x02248D 08:A47D: 22        .byte $22   ; 
- D 1 - I - 0x02248E 08:A47E: 21        .byte $21   ; 
- D 1 - I - 0x02248F 08:A47F: E0        .byte $E0   ; 
- D 1 - I - 0x022490 08:A480: B2        .byte $B2   ; 
- D 1 - I - 0x022491 08:A481: B3        .byte $B3   ; 
- D 1 - I - 0x022492 08:A482: B1        .byte $B1   ; 
- D 1 - I - 0x022493 08:A483: 92        .byte $92   ; 
- D 1 - I - 0x022494 08:A484: B1        .byte $B1   ; 
- D 1 - I - 0x022495 08:A485: CC        .byte $CC   ; 
- D 1 - I - 0x022496 08:A486: FF        .byte $FF   ; 
off_FD_A487:
- D 1 - I - 0x022497 08:A487: D4        .byte $D4   ; 
- D 1 - I - 0x022498 08:A488: 04        .byte $04   ; 
- D 1 - I - 0x022499 08:A489: FB        .byte $FB   ; 
- D 1 - I - 0x02249A 08:A48A: E2        .byte $E2   ; 
- D 1 - I - 0x02249B 08:A48B: 42        .byte $42   ; 
- D 1 - I - 0x02249C 08:A48C: 21        .byte $21   ; 
- D 1 - I - 0x02249D 08:A48D: E1        .byte $E1   ; 
- D 1 - I - 0x02249E 08:A48E: B2        .byte $B2   ; 
- D 1 - I - 0x02249F 08:A48F: E2        .byte $E2   ; 
- D 1 - I - 0x0224A0 08:A490: 41        .byte $41   ; 
- D 1 - I - 0x0224A1 08:A491: 22        .byte $22   ; 
- D 1 - I - 0x0224A2 08:A492: E1        .byte $E1   ; 
- D 1 - I - 0x0224A3 08:A493: B1        .byte $B1   ; 
- D 1 - I - 0x0224A4 08:A494: FE        .byte $FE   ; 
- D 1 - I - 0x0224A5 08:A495: 02        .byte $02   ; 
- D 1 - I - 0x0224A6 08:A496: E2        .byte $E2   ; 
- D 1 - I - 0x0224A7 08:A497: 23        .byte $23   ; 
- D 1 - I - 0x0224A8 08:A498: 33        .byte $33   ; 
- D 1 - I - 0x0224A9 08:A499: FF        .byte $FF   ; 
off_FD_A49A:
- D 1 - I - 0x0224AA 08:A49A: B2        .byte $B2   ; 
- D 1 - I - 0x0224AB 08:A49B: 11        .byte $11   ; 
- D 1 - I - 0x0224AC 08:A49C: 23        .byte $23   ; 
- D 1 - I - 0x0224AD 08:A49D: 23        .byte $23   ; 
- D 1 - I - 0x0224AE 08:A49E: 12        .byte $12   ; 
- D 1 - I - 0x0224AF 08:A49F: 11        .byte $11   ; 
- D 1 - I - 0x0224B0 08:A4A0: 23        .byte $23   ; 
- D 1 - I - 0x0224B1 08:A4A1: 12        .byte $12   ; 
- D 1 - I - 0x0224B2 08:A4A2: 11        .byte $11   ; 
- D 1 - I - 0x0224B3 08:A4A3: 12        .byte $12   ; 
- D 1 - I - 0x0224B4 08:A4A4: B1        .byte $B1   ; 
- D 1 - I - 0x0224B5 08:A4A5: 23        .byte $23   ; 
- D 1 - I - 0x0224B6 08:A4A6: B2        .byte $B2   ; 
- D 1 - I - 0x0224B7 08:A4A7: 11        .byte $11   ; 
- D 1 - I - 0x0224B8 08:A4A8: FF        .byte $FF   ; 
off_FD_A4A9:
- D 1 - I - 0x0224B9 08:A4A9: B2        .byte $B2   ; 
- D 1 - I - 0x0224BA 08:A4AA: 11        .byte $11   ; 
- D 1 - I - 0x0224BB 08:A4AB: 22        .byte $22   ; 
- D 1 - I - 0x0224BC 08:A4AC: 11        .byte $11   ; 
- D 1 - I - 0x0224BD 08:A4AD: 12        .byte $12   ; 
- D 1 - I - 0x0224BE 08:A4AE: 11        .byte $11   ; 
- D 1 - I - 0x0224BF 08:A4AF: 23        .byte $23   ; 
- D 1 - I - 0x0224C0 08:A4B0: 12        .byte $12   ; 
- D 1 - I - 0x0224C1 08:A4B1: 11        .byte $11   ; 
- D 1 - I - 0x0224C2 08:A4B2: 22        .byte $22   ; 
- D 1 - I - 0x0224C3 08:A4B3: 11        .byte $11   ; 
- D 1 - I - 0x0224C4 08:A4B4: 12        .byte $12   ; 
- D 1 - I - 0x0224C5 08:A4B5: B1        .byte $B1   ; 
- D 1 - I - 0x0224C6 08:A4B6: 22        .byte $22   ; 
- D 1 - I - 0x0224C7 08:A4B7: 11        .byte $11   ; 
- D 1 - I - 0x0224C8 08:A4B8: B2        .byte $B2   ; 
- D 1 - I - 0x0224C9 08:A4B9: 11        .byte $11   ; 
- D 1 - I - 0x0224CA 08:A4BA: 22        .byte $22   ; 
- D 1 - I - 0x0224CB 08:A4BB: 11        .byte $11   ; 
- D 1 - I - 0x0224CC 08:A4BC: 12        .byte $12   ; 
- D 1 - I - 0x0224CD 08:A4BD: 11        .byte $11   ; 
- D 1 - I - 0x0224CE 08:A4BE: 23        .byte $23   ; 
- D 1 - I - 0x0224CF 08:A4BF: 12        .byte $12   ; 
- D 1 - I - 0x0224D0 08:A4C0: 11        .byte $11   ; 
- D 1 - I - 0x0224D1 08:A4C1: 22        .byte $22   ; 
- D 1 - I - 0x0224D2 08:A4C2: 11        .byte $11   ; 
- D 1 - I - 0x0224D3 08:A4C3: 12        .byte $12   ; 
- D 1 - I - 0x0224D4 08:A4C4: 11        .byte $11   ; 
- D 1 - I - 0x0224D5 08:A4C5: 22        .byte $22   ; 
- D 1 - I - 0x0224D6 08:A4C6: 11        .byte $11   ; 
- D 1 - I - 0x0224D7 08:A4C7: FF        .byte $FF   ; 
off_FD_A4C8:
- D 1 - I - 0x0224D8 08:A4C8: FB        .byte $FB   ; 
- D 1 - I - 0x0224D9 08:A4C9: B2        .byte $B2   ; 
- D 1 - I - 0x0224DA 08:A4CA: 11        .byte $11   ; 
- D 1 - I - 0x0224DB 08:A4CB: 22        .byte $22   ; 
- D 1 - I - 0x0224DC 08:A4CC: 11        .byte $11   ; 
- D 1 - I - 0x0224DD 08:A4CD: 12        .byte $12   ; 
- D 1 - I - 0x0224DE 08:A4CE: 11        .byte $11   ; 
- D 1 - I - 0x0224DF 08:A4CF: FE        .byte $FE   ; 
- D 1 - I - 0x0224E0 08:A4D0: 02        .byte $02   ; 
- D 1 - I - 0x0224E1 08:A4D1: DE        .byte $DE   ; 
- D 1 - I - 0x0224E2 08:A4D2: 21        .byte $21   ; 
- D 1 - I - 0x0224E3 08:A4D3: 12        .byte $12   ; 
- D 1 - I - 0x0224E4 08:A4D4: 11        .byte $11   ; 
- D 1 - I - 0x0224E5 08:A4D5: DE        .byte $DE   ; 
- D 1 - I - 0x0224E6 08:A4D6: FF        .byte $FF   ; 
off_FD_A4D7:
- D 1 - I - 0x0224E7 08:A4D7: 22        .byte $22   ; 
- D 1 - I - 0x0224E8 08:A4D8: 11        .byte $11   ; 
- D 1 - I - 0x0224E9 08:A4D9: 22        .byte $22   ; 
- D 1 - I - 0x0224EA 08:A4DA: 11        .byte $11   ; 
- D 1 - I - 0x0224EB 08:A4DB: 41        .byte $41   ; 
- D 1 - I - 0x0224EC 08:A4DC: 41        .byte $41   ; 
- D 1 - I - 0x0224ED 08:A4DD: 41        .byte $41   ; 
- D 1 - I - 0x0224EE 08:A4DE: 22        .byte $22   ; 
- D 1 - I - 0x0224EF 08:A4DF: 11        .byte $11   ; 
- D 1 - I - 0x0224F0 08:A4E0: 22        .byte $22   ; 
- D 1 - I - 0x0224F1 08:A4E1: DE        .byte $DE   ; 
- D 1 - I - 0x0224F2 08:A4E2: 19        .byte $19   ; 
- D 1 - I - 0x0224F3 08:A4E3: 99        .byte $99   ; 
- D 1 - I - 0x0224F4 08:A4E4: 88        .byte $88   ; 
- D 1 - I - 0x0224F5 08:A4E5: 87        .byte $87   ; 
- D 1 - I - 0x0224F6 08:A4E6: 77        .byte $77   ; 
- D 1 - I - 0x0224F7 08:A4E7: DE        .byte $DE   ; 
- D 1 - I - 0x0224F8 08:A4E8: FF        .byte $FF   ; 
off_FD_A4E9:
- D 1 - I - 0x0224F9 08:A4E9: 22        .byte $22   ; 
- D 1 - I - 0x0224FA 08:A4EA: 11        .byte $11   ; 
- D 1 - I - 0x0224FB 08:A4EB: 22        .byte $22   ; 
- D 1 - I - 0x0224FC 08:A4EC: 11        .byte $11   ; 
- D 1 - I - 0x0224FD 08:A4ED: 41        .byte $41   ; 
- D 1 - I - 0x0224FE 08:A4EE: 41        .byte $41   ; 
- D 1 - I - 0x0224FF 08:A4EF: 41        .byte $41   ; 
- D 1 - I - 0x022500 08:A4F0: 22        .byte $22   ; 
- D 1 - I - 0x022501 08:A4F1: 11        .byte $11   ; 
- D 1 - I - 0x022502 08:A4F2: 22        .byte $22   ; 
- D 1 - I - 0x022503 08:A4F3: 11        .byte $11   ; 
- D 1 - I - 0x022504 08:A4F4: B3        .byte $B3   ; 
- D 1 - I - 0x022505 08:A4F5: B3        .byte $B3   ; 
- D 1 - I - 0x022506 08:A4F6: B3        .byte $B3   ; 
- D 1 - I - 0x022507 08:A4F7: FF        .byte $FF   ; 
off_FD_A4F8:
- D 1 - I - 0x022508 08:A4F8: B2        .byte $B2   ; 
- D 1 - I - 0x022509 08:A4F9: 11        .byte $11   ; 
- D 1 - I - 0x02250A 08:A4FA: 22        .byte $22   ; 
- D 1 - I - 0x02250B 08:A4FB: 11        .byte $11   ; 
- D 1 - I - 0x02250C 08:A4FC: 12        .byte $12   ; 
- D 1 - I - 0x02250D 08:A4FD: 11        .byte $11   ; 
- D 1 - I - 0x02250E 08:A4FE: 23        .byte $23   ; 
- D 1 - I - 0x02250F 08:A4FF: 12        .byte $12   ; 
- D 1 - I - 0x022510 08:A500: 11        .byte $11   ; 
- D 1 - I - 0x022511 08:A501: 22        .byte $22   ; 
- D 1 - I - 0x022512 08:A502: 11        .byte $11   ; 
- D 1 - I - 0x022513 08:A503: 12        .byte $12   ; 
- D 1 - I - 0x022514 08:A504: 11        .byte $11   ; 
- D 1 - I - 0x022515 08:A505: 22        .byte $22   ; 
- D 1 - I - 0x022516 08:A506: 11        .byte $11   ; 
- D 1 - I - 0x022517 08:A507: FF        .byte $FF   ; 
off_FD_A508:
- D 1 - I - 0x022518 08:A508: B2        .byte $B2   ; 
- D 1 - I - 0x022519 08:A509: 11        .byte $11   ; 
- D 1 - I - 0x02251A 08:A50A: 22        .byte $22   ; 
- D 1 - I - 0x02251B 08:A50B: B1        .byte $B1   ; 
- D 1 - I - 0x02251C 08:A50C: 12        .byte $12   ; 
- D 1 - I - 0x02251D 08:A50D: 11        .byte $11   ; 
- D 1 - I - 0x02251E 08:A50E: B2        .byte $B2   ; 
- D 1 - I - 0x02251F 08:A50F: 11        .byte $11   ; 
- D 1 - I - 0x022520 08:A510: 22        .byte $22   ; 
- D 1 - I - 0x022521 08:A511: B1        .byte $B1   ; 
- D 1 - I - 0x022522 08:A512: 22        .byte $22   ; 
- D 1 - I - 0x022523 08:A513: DE        .byte $DE   ; 
- D 1 - I - 0x022524 08:A514: 19        .byte $19   ; 
- D 1 - I - 0x022525 08:A515: 98        .byte $98   ; 
- D 1 - I - 0x022526 08:A516: 87        .byte $87   ; 
- D 1 - I - 0x022527 08:A517: DE        .byte $DE   ; 
- D 1 - I - 0x022528 08:A518: 61        .byte $61   ; 
- D 1 - I - 0x022529 08:A519: FF        .byte $FF   ; 



_off001_A51A_0D:
- D 1 - I - 0x02252A 08:A51A: EC        .byte $EC   ; 
- D 1 - I - 0x02252B 08:A51B: 11        .byte $11   ; 
- D 1 - I - 0x02252C 08:A51C: D6        .byte $D6   ; 
- D 1 - I - 0x02252D 08:A51D: 37        .byte $37   ; 
- D 1 - I - 0x02252E 08:A51E: 93        .byte $93   ; 
- D 1 - I - 0x02252F 08:A51F: 88        .byte $88   ; 
- D 1 - I - 0x022530 08:A520: E1        .byte $E1   ; 
- D 1 - I - 0x022531 08:A521: FD        .byte $FD   ; 
- D 1 - I - 0x022532 08:A522: B0 A7     .word off_FD_A7B0
- D 1 - I - 0x022534 08:A524: CC        .byte $CC   ; 
off_FF_A525:
- D 1 - I - 0x022535 08:A525: D6        .byte $D6   ; 
- D 1 - I - 0x022536 08:A526: B7        .byte $B7   ; 
- D 1 - I - 0x022537 08:A527: 95        .byte $95   ; 
- D 1 - I - 0x022538 08:A528: 8A        .byte $8A   ; 
- D 1 - I - 0x022539 08:A529: FD        .byte $FD   ; 
- D 1 - I - 0x02253A 08:A52A: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x02253C 08:A52C: A1        .byte $A1   ; 
- D 1 - I - 0x02253D 08:A52D: FD        .byte $FD   ; 
- D 1 - I - 0x02253E 08:A52E: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x022540 08:A530: 71        .byte $71   ; 
- D 1 - I - 0x022541 08:A531: FD        .byte $FD   ; 
- D 1 - I - 0x022542 08:A532: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x022544 08:A534: A1        .byte $A1   ; 
- D 1 - I - 0x022545 08:A535: EC        .byte $EC   ; 
- D 1 - I - 0x022546 08:A536: 00        .byte $00   ; 
- D 1 - I - 0x022547 08:A537: EE        .byte $EE   ; 
- D 1 - I - 0x022548 08:A538: 8C        .byte $8C   ; 
- D 1 - I - 0x022549 08:A539: D6        .byte $D6   ; 
- D 1 - I - 0x02254A 08:A53A: 77        .byte $77   ; 
- D 1 - I - 0x02254B 08:A53B: 93        .byte $93   ; 
- D 1 - I - 0x02254C 08:A53C: A8        .byte $A8   ; 
- D 1 - I - 0x02254D 08:A53D: FD        .byte $FD   ; 
- D 1 - I - 0x02254E 08:A53E: DB A7     .word off_FD_A7DB
- D 1 - I - 0x022550 08:A540: EE        .byte $EE   ; 
- D 1 - I - 0x022551 08:A541: 00        .byte $00   ; 
- D 1 - I - 0x022552 08:A542: D6        .byte $D6   ; 
- D 1 - I - 0x022553 08:A543: B7        .byte $B7   ; 
- D 1 - I - 0x022554 08:A544: 95        .byte $95   ; 
- D 1 - I - 0x022555 08:A545: 8A        .byte $8A   ; 
- D 1 - I - 0x022556 08:A546: FD        .byte $FD   ; 
- D 1 - I - 0x022557 08:A547: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x022559 08:A549: A1        .byte $A1   ; 
- D 1 - I - 0x02255A 08:A54A: FD        .byte $FD   ; 
- D 1 - I - 0x02255B 08:A54B: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x02255D 08:A54D: 71        .byte $71   ; 
- D 1 - I - 0x02255E 08:A54E: EE        .byte $EE   ; 
- D 1 - I - 0x02255F 08:A54F: 01        .byte $01   ; 
- D 1 - I - 0x022560 08:A550: FD        .byte $FD   ; 
- D 1 - I - 0x022561 08:A551: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x022563 08:A553: A1        .byte $A1   ; 
- D 1 - I - 0x022564 08:A554: EE        .byte $EE   ; 
- D 1 - I - 0x022565 08:A555: 8C        .byte $8C   ; 
- D 1 - I - 0x022566 08:A556: D6        .byte $D6   ; 
- D 1 - I - 0x022567 08:A557: 77        .byte $77   ; 
- D 1 - I - 0x022568 08:A558: 93        .byte $93   ; 
- D 1 - I - 0x022569 08:A559: A8        .byte $A8   ; 
- D 1 - I - 0x02256A 08:A55A: FD        .byte $FD   ; 
- D 1 - I - 0x02256B 08:A55B: F7 A7     .word off_FD_A7F7
- D 1 - I - 0x02256D 08:A55D: EC        .byte $EC   ; 
- D 1 - I - 0x02256E 08:A55E: 00        .byte $00   ; 
- D 1 - I - 0x02256F 08:A55F: EE        .byte $EE   ; 
- D 1 - I - 0x022570 08:A560: 03        .byte $03   ; 
- D 1 - I - 0x022571 08:A561: D6        .byte $D6   ; 
- D 1 - I - 0x022572 08:A562: 37        .byte $37   ; 
- D 1 - I - 0x022573 08:A563: 95        .byte $95   ; 
- D 1 - I - 0x022574 08:A564: 8A        .byte $8A   ; 
- D 1 - I - 0x022575 08:A565: FD        .byte $FD   ; 
- D 1 - I - 0x022576 08:A566: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x022578 08:A568: A1        .byte $A1   ; 
- D 1 - I - 0x022579 08:A569: FD        .byte $FD   ; 
- D 1 - I - 0x02257A 08:A56A: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x02257C 08:A56C: 71        .byte $71   ; 
- D 1 - I - 0x02257D 08:A56D: FD        .byte $FD   ; 
- D 1 - I - 0x02257E 08:A56E: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x022580 08:A570: A1        .byte $A1   ; 
- D 1 - I - 0x022581 08:A571: EE        .byte $EE   ; 
- D 1 - I - 0x022582 08:A572: 89        .byte $89   ; 
- D 1 - I - 0x022583 08:A573: EC        .byte $EC   ; 
- D 1 - I - 0x022584 08:A574: 00        .byte $00   ; 
- D 1 - I - 0x022585 08:A575: D6        .byte $D6   ; 
- D 1 - I - 0x022586 08:A576: 77        .byte $77   ; 
- D 1 - I - 0x022587 08:A577: 93        .byte $93   ; 
- D 1 - I - 0x022588 08:A578: A8        .byte $A8   ; 
- D 1 - I - 0x022589 08:A579: FD        .byte $FD   ; 
- D 1 - I - 0x02258A 08:A57A: DB A7     .word off_FD_A7DB
- D 1 - I - 0x02258C 08:A57C: EE        .byte $EE   ; 
- D 1 - I - 0x02258D 08:A57D: 03        .byte $03   ; 
- D 1 - I - 0x02258E 08:A57E: D6        .byte $D6   ; 
- D 1 - I - 0x02258F 08:A57F: 37        .byte $37   ; 
- D 1 - I - 0x022590 08:A580: 95        .byte $95   ; 
- D 1 - I - 0x022591 08:A581: 8A        .byte $8A   ; 
- D 1 - I - 0x022592 08:A582: FD        .byte $FD   ; 
- D 1 - I - 0x022593 08:A583: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x022595 08:A585: A1        .byte $A1   ; 
- D 1 - I - 0x022596 08:A586: FD        .byte $FD   ; 
- D 1 - I - 0x022597 08:A587: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x022599 08:A589: 71        .byte $71   ; 
- D 1 - I - 0x02259A 08:A58A: EE        .byte $EE   ; 
- D 1 - I - 0x02259B 08:A58B: 04        .byte $04   ; 
- D 1 - I - 0x02259C 08:A58C: FD        .byte $FD   ; 
- D 1 - I - 0x02259D 08:A58D: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x02259F 08:A58F: A1        .byte $A1   ; 
- D 1 - I - 0x0225A0 08:A590: EE        .byte $EE   ; 
- D 1 - I - 0x0225A1 08:A591: 00        .byte $00   ; 
- D 1 - I - 0x0225A2 08:A592: D6        .byte $D6   ; 
- D 1 - I - 0x0225A3 08:A593: 77        .byte $77   ; 
- D 1 - I - 0x0225A4 08:A594: 93        .byte $93   ; 
- D 1 - I - 0x0225A5 08:A595: 88        .byte $88   ; 
- D 1 - I - 0x0225A6 08:A596: FD        .byte $FD   ; 
- D 1 - I - 0x0225A7 08:A597: F7 A7     .word off_FD_A7F7
- D 1 - I - 0x0225A9 08:A599: FE        .byte $FE   ; 
- D 1 - I - 0x0225AA 08:A59A: FF        .byte $FF   ; 
- D 1 - I - 0x0225AB 08:A59B: 9D A5     .word off_FF_A59D   ; bzk бесполезно
off_FF_A59D:
- D 1 - I - 0x0225AD 08:A59D: D6        .byte $D6   ; 
- D 1 - I - 0x0225AE 08:A59E: 77        .byte $77   ; 
- D 1 - I - 0x0225AF 08:A59F: 83        .byte $83   ; 
- D 1 - I - 0x0225B0 08:A5A0: 83        .byte $83   ; 
- D 1 - I - 0x0225B1 08:A5A1: EE        .byte $EE   ; 
- D 1 - I - 0x0225B2 08:A5A2: 00        .byte $00   ; 
- D 1 - I - 0x0225B3 08:A5A3: FD        .byte $FD   ; 
- D 1 - I - 0x0225B4 08:A5A4: A8 A8     .word off_FD_A8A8
- D 1 - I - 0x0225B6 08:A5A6: EE        .byte $EE   ; 
- D 1 - I - 0x0225B7 08:A5A7: 01        .byte $01   ; 
- D 1 - I - 0x0225B8 08:A5A8: FD        .byte $FD   ; 
- D 1 - I - 0x0225B9 08:A5A9: A8 A8     .word off_FD_A8A8
- D 1 - I - 0x0225BB 08:A5AB: EE        .byte $EE   ; 
- D 1 - I - 0x0225BC 08:A5AC: 02        .byte $02   ; 
- D 1 - I - 0x0225BD 08:A5AD: FD        .byte $FD   ; 
- D 1 - I - 0x0225BE 08:A5AE: A8 A8     .word off_FD_A8A8
- D 1 - I - 0x0225C0 08:A5B0: EE        .byte $EE   ; 
- D 1 - I - 0x0225C1 08:A5B1: 00        .byte $00   ; 
- D 1 - I - 0x0225C2 08:A5B2: EB        .byte $EB   ; 
- D 1 - I - 0x0225C3 08:A5B3: 53        .byte $53   ; 
- D 1 - I - 0x0225C4 08:A5B4: 43        .byte $43   ; 
- D 1 - I - 0x0225C5 08:A5B5: E3        .byte $E3   ; 
- D 1 - I - 0x0225C6 08:A5B6: 08        .byte $08   ; 
- D 1 - I - 0x0225C7 08:A5B7: EB        .byte $EB   ; 
- D 1 - I - 0x0225C8 08:A5B8: 00        .byte $00   ; 
- D 1 - I - 0x0225C9 08:A5B9: 01        .byte $01   ; 
- D 1 - I - 0x0225CA 08:A5BA: F3        .byte $F3   ; 
- D 1 - I - 0x0225CB 08:A5BB: 01        .byte $01   ; 
- D 1 - I - 0x0225CC 08:A5BC: F0        .byte $F0   ; 
- D 1 - I - 0x0225CD 08:A5BD: 11        .byte $11   ; 
- D 1 - I - 0x0225CE 08:A5BE: F3        .byte $F3   ; 
- D 1 - I - 0x0225CF 08:A5BF: 11        .byte $11   ; 
- D 1 - I - 0x0225D0 08:A5C0: F0        .byte $F0   ; 
- D 1 - I - 0x0225D1 08:A5C1: 01        .byte $01   ; 
- D 1 - I - 0x0225D2 08:A5C2: F3        .byte $F3   ; 
- D 1 - I - 0x0225D3 08:A5C3: 01        .byte $01   ; 
- D 1 - I - 0x0225D4 08:A5C4: F0        .byte $F0   ; 
- D 1 - I - 0x0225D5 08:A5C5: E2        .byte $E2   ; 
- D 1 - I - 0x0225D6 08:A5C6: B1        .byte $B1   ; 
- D 1 - I - 0x0225D7 08:A5C7: F3        .byte $F3   ; 
- D 1 - I - 0x0225D8 08:A5C8: B1        .byte $B1   ; 
- D 1 - I - 0x0225D9 08:A5C9: F0        .byte $F0   ; 
- D 1 - I - 0x0225DA 08:A5CA: FD        .byte $FD   ; 
- D 1 - I - 0x0225DB 08:A5CB: A8 A8     .word off_FD_A8A8
- D 1 - I - 0x0225DD 08:A5CD: EE        .byte $EE   ; 
- D 1 - I - 0x0225DE 08:A5CE: 01        .byte $01   ; 
- D 1 - I - 0x0225DF 08:A5CF: FD        .byte $FD   ; 
- D 1 - I - 0x0225E0 08:A5D0: A8 A8     .word off_FD_A8A8
- D 1 - I - 0x0225E2 08:A5D2: EE        .byte $EE   ; 
- D 1 - I - 0x0225E3 08:A5D3: 02        .byte $02   ; 
- D 1 - I - 0x0225E4 08:A5D4: FD        .byte $FD   ; 
- D 1 - I - 0x0225E5 08:A5D5: A8 A8     .word off_FD_A8A8
- D 1 - I - 0x0225E7 08:A5D7: EE        .byte $EE   ; 
- D 1 - I - 0x0225E8 08:A5D8: 00        .byte $00   ; 
- D 1 - I - 0x0225E9 08:A5D9: FD        .byte $FD   ; 
- D 1 - I - 0x0225EA 08:A5DA: D2 A8     .word off_FD_A8D2
- D 1 - I - 0x0225EC 08:A5DC: FE        .byte $FE   ; 
- D 1 - I - 0x0225ED 08:A5DD: FF        .byte $FF   ; 
- D 1 - I - 0x0225EE 08:A5DE: 25 A5     .word off_FF_A525



_off001_A5E0_0C:
- D 1 - I - 0x0225F0 08:A5E0: EC        .byte $EC   ; 
- D 1 - I - 0x0225F1 08:A5E1: 11        .byte $11   ; 
- D 1 - I - 0x0225F2 08:A5E2: D6        .byte $D6   ; 
- D 1 - I - 0x0225F3 08:A5E3: 35        .byte $35   ; 
- D 1 - I - 0x0225F4 08:A5E4: 93        .byte $93   ; 
- D 1 - I - 0x0225F5 08:A5E5: 86        .byte $86   ; 
- D 1 - I - 0x0225F6 08:A5E6: E1        .byte $E1   ; 
- D 1 - I - 0x0225F7 08:A5E7: EE        .byte $EE   ; 
- D 1 - I - 0x0225F8 08:A5E8: 85        .byte $85   ; 
- D 1 - I - 0x0225F9 08:A5E9: FD        .byte $FD   ; 
- D 1 - I - 0x0225FA 08:A5EA: B0 A7     .word off_FD_A7B0
- D 1 - I - 0x0225FC 08:A5EC: CC        .byte $CC   ; 
- D 1 - I - 0x0225FD 08:A5ED: EE        .byte $EE   ; 
- D 1 - I - 0x0225FE 08:A5EE: 00        .byte $00   ; 
off_FF_A5EF:
- D 1 - I - 0x0225FF 08:A5EF: EE        .byte $EE   ; 
- D 1 - I - 0x022600 08:A5F0: 85        .byte $85   ; 
- D 1 - I - 0x022601 08:A5F1: D6        .byte $D6   ; 
- D 1 - I - 0x022602 08:A5F2: B5        .byte $B5   ; 
- D 1 - I - 0x022603 08:A5F3: 94        .byte $94   ; 
- D 1 - I - 0x022604 08:A5F4: 8A        .byte $8A   ; 
- D 1 - I - 0x022605 08:A5F5: FD        .byte $FD   ; 
- D 1 - I - 0x022606 08:A5F6: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x022608 08:A5F8: A1        .byte $A1   ; 
- D 1 - I - 0x022609 08:A5F9: FD        .byte $FD   ; 
- D 1 - I - 0x02260A 08:A5FA: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x02260C 08:A5FC: 71        .byte $71   ; 
- D 1 - I - 0x02260D 08:A5FD: FD        .byte $FD   ; 
- D 1 - I - 0x02260E 08:A5FE: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x022610 08:A600: A1        .byte $A1   ; 
- D 1 - I - 0x022611 08:A601: EC        .byte $EC   ; 
- D 1 - I - 0x022612 08:A602: 00        .byte $00   ; 
- D 1 - I - 0x022613 08:A603: D6        .byte $D6   ; 
- D 1 - I - 0x022614 08:A604: 75        .byte $75   ; 
- D 1 - I - 0x022615 08:A605: 93        .byte $93   ; 
- D 1 - I - 0x022616 08:A606: A8        .byte $A8   ; 
- D 1 - I - 0x022617 08:A607: FD        .byte $FD   ; 
- D 1 - I - 0x022618 08:A608: DB A7     .word off_FD_A7DB
- D 1 - I - 0x02261A 08:A60A: D6        .byte $D6   ; 
- D 1 - I - 0x02261B 08:A60B: B5        .byte $B5   ; 
- D 1 - I - 0x02261C 08:A60C: 94        .byte $94   ; 
- D 1 - I - 0x02261D 08:A60D: 8A        .byte $8A   ; 
- D 1 - I - 0x02261E 08:A60E: FD        .byte $FD   ; 
- D 1 - I - 0x02261F 08:A60F: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x022621 08:A611: A1        .byte $A1   ; 
- D 1 - I - 0x022622 08:A612: FD        .byte $FD   ; 
- D 1 - I - 0x022623 08:A613: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x022625 08:A615: 71        .byte $71   ; 
- D 1 - I - 0x022626 08:A616: EE        .byte $EE   ; 
- D 1 - I - 0x022627 08:A617: 84        .byte $84   ; 
- D 1 - I - 0x022628 08:A618: FD        .byte $FD   ; 
- D 1 - I - 0x022629 08:A619: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x02262B 08:A61B: A1        .byte $A1   ; 
- D 1 - I - 0x02262C 08:A61C: EE        .byte $EE   ; 
- D 1 - I - 0x02262D 08:A61D: 85        .byte $85   ; 
- D 1 - I - 0x02262E 08:A61E: D6        .byte $D6   ; 
- D 1 - I - 0x02262F 08:A61F: 75        .byte $75   ; 
- D 1 - I - 0x022630 08:A620: 93        .byte $93   ; 
- D 1 - I - 0x022631 08:A621: A8        .byte $A8   ; 
- D 1 - I - 0x022632 08:A622: FD        .byte $FD   ; 
- D 1 - I - 0x022633 08:A623: F7 A7     .word off_FD_A7F7
- D 1 - I - 0x022635 08:A625: EE        .byte $EE   ; 
- D 1 - I - 0x022636 08:A626: 82        .byte $82   ; 
- D 1 - I - 0x022637 08:A627: D6        .byte $D6   ; 
- D 1 - I - 0x022638 08:A628: 35        .byte $35   ; 
- D 1 - I - 0x022639 08:A629: 94        .byte $94   ; 
- D 1 - I - 0x02263A 08:A62A: 8A        .byte $8A   ; 
- D 1 - I - 0x02263B 08:A62B: FD        .byte $FD   ; 
- D 1 - I - 0x02263C 08:A62C: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x02263E 08:A62E: A1        .byte $A1   ; 
- D 1 - I - 0x02263F 08:A62F: FD        .byte $FD   ; 
- D 1 - I - 0x022640 08:A630: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x022642 08:A632: 71        .byte $71   ; 
- D 1 - I - 0x022643 08:A633: FD        .byte $FD   ; 
- D 1 - I - 0x022644 08:A634: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x022646 08:A636: A1        .byte $A1   ; 
- D 1 - I - 0x022647 08:A637: EC        .byte $EC   ; 
- D 1 - I - 0x022648 08:A638: 00        .byte $00   ; 
- D 1 - I - 0x022649 08:A639: D6        .byte $D6   ; 
- D 1 - I - 0x02264A 08:A63A: 75        .byte $75   ; 
- D 1 - I - 0x02264B 08:A63B: 93        .byte $93   ; 
- D 1 - I - 0x02264C 08:A63C: A8        .byte $A8   ; 
- D 1 - I - 0x02264D 08:A63D: FD        .byte $FD   ; 
- D 1 - I - 0x02264E 08:A63E: DB A7     .word off_FD_A7DB
- D 1 - I - 0x022650 08:A640: D6        .byte $D6   ; 
- D 1 - I - 0x022651 08:A641: 35        .byte $35   ; 
- D 1 - I - 0x022652 08:A642: 94        .byte $94   ; 
- D 1 - I - 0x022653 08:A643: 8A        .byte $8A   ; 
- D 1 - I - 0x022654 08:A644: FD        .byte $FD   ; 
- D 1 - I - 0x022655 08:A645: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x022657 08:A647: A1        .byte $A1   ; 
- D 1 - I - 0x022658 08:A648: FD        .byte $FD   ; 
- D 1 - I - 0x022659 08:A649: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x02265B 08:A64B: 71        .byte $71   ; 
- D 1 - I - 0x02265C 08:A64C: EE        .byte $EE   ; 
- D 1 - I - 0x02265D 08:A64D: 81        .byte $81   ; 
- D 1 - I - 0x02265E 08:A64E: FD        .byte $FD   ; 
- D 1 - I - 0x02265F 08:A64F: C9 A7     .word off_FD_A7C9
- D 1 - I - 0x022661 08:A651: A1        .byte $A1   ; 
- D 1 - I - 0x022662 08:A652: EE        .byte $EE   ; 
- D 1 - I - 0x022663 08:A653: 85        .byte $85   ; 
- D 1 - I - 0x022664 08:A654: D6        .byte $D6   ; 
- D 1 - I - 0x022665 08:A655: 75        .byte $75   ; 
- D 1 - I - 0x022666 08:A656: 93        .byte $93   ; 
- D 1 - I - 0x022667 08:A657: 88        .byte $88   ; 
- D 1 - I - 0x022668 08:A658: FD        .byte $FD   ; 
- D 1 - I - 0x022669 08:A659: F7 A7     .word off_FD_A7F7
- D 1 - I - 0x02266B 08:A65B: FE        .byte $FE   ; 
- D 1 - I - 0x02266C 08:A65C: FF        .byte $FF   ; 
- D 1 - I - 0x02266D 08:A65D: 5F A6     .word off_FF_A65F   ; bzk бесполезно
off_FF_A65F:
- D 1 - I - 0x02266F 08:A65F: EE        .byte $EE   ; 
- D 1 - I - 0x022670 08:A660: 00        .byte $00   ; 
- D 1 - I - 0x022671 08:A661: FD        .byte $FD   ; 
- D 1 - I - 0x022672 08:A662: 7F A7     .word off_FD_A77F
- D 1 - I - 0x022674 08:A664: EE        .byte $EE   ; 
- D 1 - I - 0x022675 08:A665: 01        .byte $01   ; 
- D 1 - I - 0x022676 08:A666: FD        .byte $FD   ; 
- D 1 - I - 0x022677 08:A667: 7F A7     .word off_FD_A77F
- D 1 - I - 0x022679 08:A669: EE        .byte $EE   ; 
- D 1 - I - 0x02267A 08:A66A: 02        .byte $02   ; 
- D 1 - I - 0x02267B 08:A66B: FD        .byte $FD   ; 
- D 1 - I - 0x02267C 08:A66C: 7F A7     .word off_FD_A77F
- D 1 - I - 0x02267E 08:A66E: EE        .byte $EE   ; 
- D 1 - I - 0x02267F 08:A66F: 00        .byte $00   ; 
- D 1 - I - 0x022680 08:A670: FD        .byte $FD   ; 
- D 1 - I - 0x022681 08:A671: 99 A7     .word off_FD_A799
- D 1 - I - 0x022683 08:A673: FD        .byte $FD   ; 
- D 1 - I - 0x022684 08:A674: 7F A7     .word off_FD_A77F
- D 1 - I - 0x022686 08:A676: EE        .byte $EE   ; 
- D 1 - I - 0x022687 08:A677: 01        .byte $01   ; 
- D 1 - I - 0x022688 08:A678: FD        .byte $FD   ; 
- D 1 - I - 0x022689 08:A679: 7F A7     .word off_FD_A77F
- D 1 - I - 0x02268B 08:A67B: EE        .byte $EE   ; 
- D 1 - I - 0x02268C 08:A67C: 02        .byte $02   ; 
- D 1 - I - 0x02268D 08:A67D: FD        .byte $FD   ; 
- D 1 - I - 0x02268E 08:A67E: 7F A7     .word off_FD_A77F
- D 1 - I - 0x022690 08:A680: EE        .byte $EE   ; 
- D 1 - I - 0x022691 08:A681: 85        .byte $85   ; 
- D 1 - I - 0x022692 08:A682: E9        .byte $E9   ; 
- D 1 - I - 0x022693 08:A683: B1        .byte $B1   ; 
- D 1 - I - 0x022694 08:A684: FD        .byte $FD   ; 
- D 1 - I - 0x022695 08:A685: D2 A8     .word off_FD_A8D2
- D 1 - I - 0x022697 08:A687: FE        .byte $FE   ; 
- D 1 - I - 0x022698 08:A688: FF        .byte $FF   ; 
- D 1 - I - 0x022699 08:A689: EF A5     .word off_FF_A5EF



_off001_A68B_0E:
- D 1 - I - 0x02269B 08:A68B: D6        .byte $D6   ; 
- D 1 - I - 0x02269C 08:A68C: 07        .byte $07   ; 
- D 1 - I - 0x02269D 08:A68D: E0        .byte $E0   ; 
- D 1 - I - 0x02269E 08:A68E: FD        .byte $FD   ; 
- D 1 - I - 0x02269F 08:A68F: B0 A7     .word off_FD_A7B0
- D 1 - I - 0x0226A1 08:A691: D1        .byte $D1   ; 
- D 1 - I - 0x0226A2 08:A692: 00        .byte $00   ; 
- D 1 - I - 0x0226A3 08:A693: E2        .byte $E2   ; 
- D 1 - I - 0x0226A4 08:A694: 01        .byte $01   ; 
- D 1 - I - 0x0226A5 08:A695: E1        .byte $E1   ; 
- D 1 - I - 0x0226A6 08:A696: DE        .byte $DE   ; 
- D 1 - I - 0x0226A7 08:A697: BA        .byte $BA   ; 
- D 1 - I - 0x0226A8 08:A698: 98        .byte $98   ; 
- D 1 - I - 0x0226A9 08:A699: 76        .byte $76   ; 
- D 1 - I - 0x0226AA 08:A69A: 54        .byte $54   ; 
- D 1 - I - 0x0226AB 08:A69B: 32        .byte $32   ; 
- D 1 - I - 0x0226AC 08:A69C: DE        .byte $DE   ; 
- D 1 - I - 0x0226AD 08:A69D: 01        .byte $01   ; 
- D 1 - I - 0x0226AE 08:A69E: D6        .byte $D6   ; 
- D 1 - I - 0x0226AF 08:A69F: 00        .byte $00   ; 
- D 1 - I - 0x0226B0 08:A6A0: CA        .byte $CA   ; 
off_FF_A6A1:
- D 1 - I - 0x0226B1 08:A6A1: D6        .byte $D6   ; 
- D 1 - I - 0x0226B2 08:A6A2: 06        .byte $06   ; 
- D 1 - I - 0x0226B3 08:A6A3: E0        .byte $E0   ; 
- D 1 - I - 0x0226B4 08:A6A4: FD        .byte $FD   ; 
- D 1 - I - 0x0226B5 08:A6A5: 1C A8     .word off_FD_A81C
- D 1 - I - 0x0226B7 08:A6A7: A2        .byte $A2   ; 
- D 1 - I - 0x0226B8 08:A6A8: FD        .byte $FD   ; 
- D 1 - I - 0x0226B9 08:A6A9: 1C A8     .word off_FD_A81C
- D 1 - I - 0x0226BB 08:A6AB: 72        .byte $72   ; 
- D 1 - I - 0x0226BC 08:A6AC: FD        .byte $FD   ; 
- D 1 - I - 0x0226BD 08:A6AD: 1C A8     .word off_FD_A81C
- D 1 - I - 0x0226BF 08:A6AF: A2        .byte $A2   ; 
- D 1 - I - 0x0226C0 08:A6B0: FD        .byte $FD   ; 
- D 1 - I - 0x0226C1 08:A6B1: 22 A8     .word off_FD_A822
- D 1 - I - 0x0226C3 08:A6B3: FD        .byte $FD   ; 
- D 1 - I - 0x0226C4 08:A6B4: 1C A8     .word off_FD_A81C
- D 1 - I - 0x0226C6 08:A6B6: A2        .byte $A2   ; 
- D 1 - I - 0x0226C7 08:A6B7: FD        .byte $FD   ; 
- D 1 - I - 0x0226C8 08:A6B8: 1C A8     .word off_FD_A81C
- D 1 - I - 0x0226CA 08:A6BA: 72        .byte $72   ; 
- D 1 - I - 0x0226CB 08:A6BB: FD        .byte $FD   ; 
- D 1 - I - 0x0226CC 08:A6BC: 2B A8     .word off_FD_A82B
- D 1 - I - 0x0226CE 08:A6BE: EE        .byte $EE   ; 
- D 1 - I - 0x0226CF 08:A6BF: 03        .byte $03   ; 
- D 1 - I - 0x0226D0 08:A6C0: D6        .byte $D6   ; 
- D 1 - I - 0x0226D1 08:A6C1: 06        .byte $06   ; 
- D 1 - I - 0x0226D2 08:A6C2: E0        .byte $E0   ; 
- D 1 - I - 0x0226D3 08:A6C3: FD        .byte $FD   ; 
- D 1 - I - 0x0226D4 08:A6C4: 1C A8     .word off_FD_A81C
- D 1 - I - 0x0226D6 08:A6C6: A2        .byte $A2   ; 
- D 1 - I - 0x0226D7 08:A6C7: FD        .byte $FD   ; 
- D 1 - I - 0x0226D8 08:A6C8: 1C A8     .word off_FD_A81C
- D 1 - I - 0x0226DA 08:A6CA: 72        .byte $72   ; 
- D 1 - I - 0x0226DB 08:A6CB: FD        .byte $FD   ; 
- D 1 - I - 0x0226DC 08:A6CC: 1C A8     .word off_FD_A81C
- D 1 - I - 0x0226DE 08:A6CE: A2        .byte $A2   ; 
- D 1 - I - 0x0226DF 08:A6CF: FD        .byte $FD   ; 
- D 1 - I - 0x0226E0 08:A6D0: 22 A8     .word off_FD_A822
- D 1 - I - 0x0226E2 08:A6D2: FD        .byte $FD   ; 
- D 1 - I - 0x0226E3 08:A6D3: 1C A8     .word off_FD_A81C
- D 1 - I - 0x0226E5 08:A6D5: A2        .byte $A2   ; 
- D 1 - I - 0x0226E6 08:A6D6: FD        .byte $FD   ; 
- D 1 - I - 0x0226E7 08:A6D7: 1C A8     .word off_FD_A81C
- D 1 - I - 0x0226E9 08:A6D9: 72        .byte $72   ; 
- D 1 - I - 0x0226EA 08:A6DA: FD        .byte $FD   ; 
- D 1 - I - 0x0226EB 08:A6DB: 2B A8     .word off_FD_A82B
- D 1 - I - 0x0226ED 08:A6DD: EE        .byte $EE   ; 
- D 1 - I - 0x0226EE 08:A6DE: 00        .byte $00   ; 
- D 1 - I - 0x0226EF 08:A6DF: D6        .byte $D6   ; 
- D 1 - I - 0x0226F0 08:A6E0: 04        .byte $04   ; 
- D 1 - I - 0x0226F1 08:A6E1: EB        .byte $EB   ; 
- D 1 - I - 0x0226F2 08:A6E2: 54        .byte $54   ; 
- D 1 - I - 0x0226F3 08:A6E3: 03        .byte $03   ; 
- D 1 - I - 0x0226F4 08:A6E4: FD        .byte $FD   ; 
- D 1 - I - 0x0226F5 08:A6E5: 39 A8     .word off_FD_A839
- D 1 - I - 0x0226F7 08:A6E7: EE        .byte $EE   ; 
- D 1 - I - 0x0226F8 08:A6E8: 01        .byte $01   ; 
- D 1 - I - 0x0226F9 08:A6E9: FD        .byte $FD   ; 
- D 1 - I - 0x0226FA 08:A6EA: 39 A8     .word off_FD_A839
- D 1 - I - 0x0226FC 08:A6EC: EE        .byte $EE   ; 
- D 1 - I - 0x0226FD 08:A6ED: 02        .byte $02   ; 
- D 1 - I - 0x0226FE 08:A6EE: FD        .byte $FD   ; 
- D 1 - I - 0x0226FF 08:A6EF: 39 A8     .word off_FD_A839
- D 1 - I - 0x022701 08:A6F1: EE        .byte $EE   ; 
- D 1 - I - 0x022702 08:A6F2: 00        .byte $00   ; 
- D 1 - I - 0x022703 08:A6F3: E2        .byte $E2   ; 
- D 1 - I - 0x022704 08:A6F4: 01        .byte $01   ; 
- D 1 - I - 0x022705 08:A6F5: 02        .byte $02   ; 
- D 1 - I - 0x022706 08:A6F6: 01        .byte $01   ; 
- D 1 - I - 0x022707 08:A6F7: D1        .byte $D1   ; 
- D 1 - I - 0x022708 08:A6F8: 00        .byte $00   ; 
- D 1 - I - 0x022709 08:A6F9: 02        .byte $02   ; 
- D 1 - I - 0x02270A 08:A6FA: E1        .byte $E1   ; 
- D 1 - I - 0x02270B 08:A6FB: DE        .byte $DE   ; 
- D 1 - I - 0x02270C 08:A6FC: BA        .byte $BA   ; 
- D 1 - I - 0x02270D 08:A6FD: 98        .byte $98   ; 
- D 1 - I - 0x02270E 08:A6FE: 76        .byte $76   ; 
- D 1 - I - 0x02270F 08:A6FF: 54        .byte $54   ; 
- D 1 - I - 0x022710 08:A700: 32        .byte $32   ; 
- D 1 - I - 0x022711 08:A701: DE        .byte $DE   ; 
- D 1 - I - 0x022712 08:A702: D6        .byte $D6   ; 
- D 1 - I - 0x022713 08:A703: 08        .byte $08   ; 
- D 1 - I - 0x022714 08:A704: C2        .byte $C2   ; 
- D 1 - I - 0x022715 08:A705: 02        .byte $02   ; 
- D 1 - I - 0x022716 08:A706: 12        .byte $12   ; 
- D 1 - I - 0x022717 08:A707: 02        .byte $02   ; 
- D 1 - I - 0x022718 08:A708: E0        .byte $E0   ; 
- D 1 - I - 0x022719 08:A709: B2        .byte $B2   ; 
- D 1 - I - 0x02271A 08:A70A: FD        .byte $FD   ; 
- D 1 - I - 0x02271B 08:A70B: 39 A8     .word off_FD_A839
- D 1 - I - 0x02271D 08:A70D: EE        .byte $EE   ; 
- D 1 - I - 0x02271E 08:A70E: 01        .byte $01   ; 
- D 1 - I - 0x02271F 08:A70F: FD        .byte $FD   ; 
- D 1 - I - 0x022720 08:A710: 39 A8     .word off_FD_A839
- D 1 - I - 0x022722 08:A712: EE        .byte $EE   ; 
- D 1 - I - 0x022723 08:A713: 02        .byte $02   ; 
- D 1 - I - 0x022724 08:A714: FD        .byte $FD   ; 
- D 1 - I - 0x022725 08:A715: 39 A8     .word off_FD_A839
- D 1 - I - 0x022727 08:A717: EE        .byte $EE   ; 
- D 1 - I - 0x022728 08:A718: 00        .byte $00   ; 
- D 1 - I - 0x022729 08:A719: D2        .byte $D2   ; 
- D 1 - I - 0x02272A 08:A71A: 04        .byte $04   ; 
- D 1 - I - 0x02272B 08:A71B: E2        .byte $E2   ; 
- D 1 - I - 0x02272C 08:A71C: 64        .byte $64   ; 
- D 1 - I - 0x02272D 08:A71D: 54        .byte $54   ; 
- D 1 - I - 0x02272E 08:A71E: 04        .byte $04   ; 
- D 1 - I - 0x02272F 08:A71F: E1        .byte $E1   ; 
- D 1 - I - 0x022730 08:A720: B4        .byte $B4   ; 
- D 1 - I - 0x022731 08:A721: E2        .byte $E2   ; 
- D 1 - I - 0x022732 08:A722: 24        .byte $24   ; 
- D 1 - I - 0x022733 08:A723: E1        .byte $E1   ; 
- D 1 - I - 0x022734 08:A724: 94        .byte $94   ; 
- D 1 - I - 0x022735 08:A725: E2        .byte $E2   ; 
- D 1 - I - 0x022736 08:A726: 44        .byte $44   ; 
- D 1 - I - 0x022737 08:A727: E1        .byte $E1   ; 
- D 1 - I - 0x022738 08:A728: B4        .byte $B4   ; 
- D 1 - I - 0x022739 08:A729: 64        .byte $64   ; 
- D 1 - I - 0x02273A 08:A72A: E2        .byte $E2   ; 
- D 1 - I - 0x02273B 08:A72B: 14        .byte $14   ; 
- D 1 - I - 0x02273C 08:A72C: E1        .byte $E1   ; 
- D 1 - I - 0x02273D 08:A72D: 84        .byte $84   ; 
- D 1 - I - 0x02273E 08:A72E: E2        .byte $E2   ; 
- D 1 - I - 0x02273F 08:A72F: 24        .byte $24   ; 
- D 1 - I - 0x022740 08:A730: FE        .byte $FE   ; 
- D 1 - I - 0x022741 08:A731: FF        .byte $FF   ; 
- D 1 - I - 0x022742 08:A732: A1 A6     .word off_FF_A6A1



_off001_A734_0F:
- D 1 - I - 0x022744 08:A734: FB        .byte $FB   ; 
- D 1 - I - 0x022745 08:A735: D6        .byte $D6   ; 
- D 1 - I - 0x022746 08:A736: DE        .byte $DE   ; 
- D 1 - I - 0x022747 08:A737: B1        .byte $B1   ; 
- D 1 - I - 0x022748 08:A738: 1B        .byte $1B   ; 
- D 1 - I - 0x022749 08:A739: 11        .byte $11   ; 
- D 1 - I - 0x02274A 08:A73A: B1        .byte $B1   ; 
- D 1 - I - 0x02274B 08:A73B: 1B        .byte $1B   ; 
- D 1 - I - 0x02274C 08:A73C: 11        .byte $11   ; 
- D 1 - I - 0x02274D 08:A73D: B1        .byte $B1   ; 
- D 1 - I - 0x02274E 08:A73E: B1        .byte $B1   ; 
- D 1 - I - 0x02274F 08:A73F: DE        .byte $DE   ; 
- D 1 - I - 0x022750 08:A740: FE        .byte $FE   ; 
- D 1 - I - 0x022751 08:A741: 03        .byte $03   ; 
- D 1 - I - 0x022752 08:A742: FD        .byte $FD   ; 
- D 1 - I - 0x022753 08:A743: 48 A8     .word off_FD_A848
off_FF_A745:
- D 1 - I - 0x022755 08:A745: FB        .byte $FB   ; 
- D 1 - I - 0x022756 08:A746: FD        .byte $FD   ; 
- D 1 - I - 0x022757 08:A747: 60 A8     .word off_FD_A860
- D 1 - I - 0x022759 08:A749: FE        .byte $FE   ; 
- D 1 - I - 0x02275A 08:A74A: 03        .byte $03   ; 
- D 1 - I - 0x02275B 08:A74B: FD        .byte $FD   ; 
- D 1 - I - 0x02275C 08:A74C: 6F A8     .word off_FD_A86F
- D 1 - I - 0x02275E 08:A74E: FB        .byte $FB   ; 
- D 1 - I - 0x02275F 08:A74F: FD        .byte $FD   ; 
- D 1 - I - 0x022760 08:A750: 60 A8     .word off_FD_A860
- D 1 - I - 0x022762 08:A752: FE        .byte $FE   ; 
- D 1 - I - 0x022763 08:A753: 03        .byte $03   ; 
- D 1 - I - 0x022764 08:A754: FD        .byte $FD   ; 
- D 1 - I - 0x022765 08:A755: 6F A8     .word off_FD_A86F
- D 1 - I - 0x022767 08:A757: FB        .byte $FB   ; 
- D 1 - I - 0x022768 08:A758: FD        .byte $FD   ; 
- D 1 - I - 0x022769 08:A759: 60 A8     .word off_FD_A860
- D 1 - I - 0x02276B 08:A75B: FE        .byte $FE   ; 
- D 1 - I - 0x02276C 08:A75C: 03        .byte $03   ; 
- D 1 - I - 0x02276D 08:A75D: FD        .byte $FD   ; 
- D 1 - I - 0x02276E 08:A75E: 6F A8     .word off_FD_A86F
- D 1 - I - 0x022770 08:A760: FB        .byte $FB   ; 
- D 1 - I - 0x022771 08:A761: FD        .byte $FD   ; 
- D 1 - I - 0x022772 08:A762: 60 A8     .word off_FD_A860
- D 1 - I - 0x022774 08:A764: FE        .byte $FE   ; 
- D 1 - I - 0x022775 08:A765: 03        .byte $03   ; 
- D 1 - I - 0x022776 08:A766: FD        .byte $FD   ; 
- D 1 - I - 0x022777 08:A767: 7D A8     .word off_FD_A87D
- D 1 - I - 0x022779 08:A769: FD        .byte $FD   ; 
- D 1 - I - 0x02277A 08:A76A: 9D A8     .word off_FD_A89D
- D 1 - I - 0x02277C 08:A76C: FD        .byte $FD   ; 
- D 1 - I - 0x02277D 08:A76D: 8F A8     .word off_FD_A88F
- D 1 - I - 0x02277F 08:A76F: FD        .byte $FD   ; 
- D 1 - I - 0x022780 08:A770: 9D A8     .word off_FD_A89D
- D 1 - I - 0x022782 08:A772: D4        .byte $D4   ; 
- D 1 - I - 0x022783 08:A773: DF        .byte $DF   ; 
- D 1 - I - 0x022784 08:A774: 99        .byte $99   ; 
- D 1 - I - 0x022785 08:A775: 98        .byte $98   ; 
- D 1 - I - 0x022786 08:A776: 88        .byte $88   ; 
- D 1 - I - 0x022787 08:A777: 77        .byte $77   ; 
- D 1 - I - 0x022788 08:A778: 76        .byte $76   ; 
- D 1 - I - 0x022789 08:A779: 66        .byte $66   ; 
- D 1 - I - 0x02278A 08:A77A: DF        .byte $DF   ; 
- D 1 - I - 0x02278B 08:A77B: FE        .byte $FE   ; 
- D 1 - I - 0x02278C 08:A77C: FF        .byte $FF   ; 
- D 1 - I - 0x02278D 08:A77D: 45 A7     .word off_FF_A745
off_FD_A77F:
- D 1 - I - 0x02278F 08:A77F: FB        .byte $FB   ; 
- D 1 - I - 0x022790 08:A780: D6        .byte $D6   ; 
- D 1 - I - 0x022791 08:A781: 75        .byte $75   ; 
- D 1 - I - 0x022792 08:A782: 83        .byte $83   ; 
- D 1 - I - 0x022793 08:A783: 8A        .byte $8A   ; 
- D 1 - I - 0x022794 08:A784: EC        .byte $EC   ; 
- D 1 - I - 0x022795 08:A785: 13        .byte $13   ; 
- D 1 - I - 0x022796 08:A786: E9        .byte $E9   ; 
- D 1 - I - 0x022797 08:A787: B1        .byte $B1   ; 
- D 1 - I - 0x022798 08:A788: E1        .byte $E1   ; 
- D 1 - I - 0x022799 08:A789: DE        .byte $DE   ; 
- D 1 - I - 0x02279A 08:A78A: 99        .byte $99   ; 
- D 1 - I - 0x02279B 08:A78B: E1        .byte $E1   ; 
- D 1 - I - 0x02279C 08:A78C: 9F        .byte $9F   ; 
- D 1 - I - 0x02279D 08:A78D: E2        .byte $E2   ; 
- D 1 - I - 0x02279E 08:A78E: 00        .byte $00   ; 
- D 1 - I - 0x02279F 08:A78F: 02        .byte $02   ; 
- D 1 - I - 0x0227A0 08:A790: DE        .byte $DE   ; 
- D 1 - I - 0x0227A1 08:A791: 21        .byte $21   ; 
- D 1 - I - 0x0227A2 08:A792: E9        .byte $E9   ; 
- D 1 - I - 0x0227A3 08:A793: 00        .byte $00   ; 
- D 1 - I - 0x0227A4 08:A794: EC        .byte $EC   ; 
- D 1 - I - 0x0227A5 08:A795: 00        .byte $00   ; 
- D 1 - I - 0x0227A6 08:A796: FE        .byte $FE   ; 
- D 1 - I - 0x0227A7 08:A797: 02        .byte $02   ; 
- D 1 - I - 0x0227A8 08:A798: FF        .byte $FF   ; 
off_FD_A799:
- D 1 - I - 0x0227A9 08:A799: EC        .byte $EC   ; 
- D 1 - I - 0x0227AA 08:A79A: 11        .byte $11   ; 
- D 1 - I - 0x0227AB 08:A79B: D6        .byte $D6   ; 
- D 1 - I - 0x0227AC 08:A79C: B6        .byte $B6   ; 
- D 1 - I - 0x0227AD 08:A79D: 83        .byte $83   ; 
- D 1 - I - 0x0227AE 08:A79E: 8A        .byte $8A   ; 
- D 1 - I - 0x0227AF 08:A79F: E1        .byte $E1   ; 
- D 1 - I - 0x0227B0 08:A7A0: 01        .byte $01   ; 
- D 1 - I - 0x0227B1 08:A7A1: 41        .byte $41   ; 
- D 1 - I - 0x0227B2 08:A7A2: 71        .byte $71   ; 
- D 1 - I - 0x0227B3 08:A7A3: 91        .byte $91   ; 
- D 1 - I - 0x0227B4 08:A7A4: E2        .byte $E2   ; 
- D 1 - I - 0x0227B5 08:A7A5: 01        .byte $01   ; 
- D 1 - I - 0x0227B6 08:A7A6: 21        .byte $21   ; 
- D 1 - I - 0x0227B7 08:A7A7: 41        .byte $41   ; 
- D 1 - I - 0x0227B8 08:A7A8: 01        .byte $01   ; 
- D 1 - I - 0x0227B9 08:A7A9: E2        .byte $E2   ; 
- D 1 - I - 0x0227BA 08:A7AA: E2        .byte $E2   ; 
- D 1 - I - 0x0227BB 08:A7AB: 72        .byte $72   ; 
- D 1 - I - 0x0227BC 08:A7AC: 82        .byte $82   ; 
- D 1 - I - 0x0227BD 08:A7AD: 72        .byte $72   ; 
- D 1 - I - 0x0227BE 08:A7AE: 62        .byte $62   ; 
- D 1 - I - 0x0227BF 08:A7AF: FF        .byte $FF   ; 
off_FD_A7B0:
- D 1 - I - 0x0227C0 08:A7B0: EB        .byte $EB   ; 
- D 1 - I - 0x0227C1 08:A7B1: 51        .byte $51   ; 
- D 1 - I - 0x0227C2 08:A7B2: 02        .byte $02   ; 
- D 1 - I - 0x0227C3 08:A7B3: 93        .byte $93   ; 
- D 1 - I - 0x0227C4 08:A7B4: 93        .byte $93   ; 
- D 1 - I - 0x0227C5 08:A7B5: 93        .byte $93   ; 
- D 1 - I - 0x0227C6 08:A7B6: 93        .byte $93   ; 
- D 1 - I - 0x0227C7 08:A7B7: 92        .byte $92   ; 
- D 1 - I - 0x0227C8 08:A7B8: A2        .byte $A2   ; 
- D 1 - I - 0x0227C9 08:A7B9: 93        .byte $93   ; 
- D 1 - I - 0x0227CA 08:A7BA: 93        .byte $93   ; 
- D 1 - I - 0x0227CB 08:A7BB: 93        .byte $93   ; 
- D 1 - I - 0x0227CC 08:A7BC: 93        .byte $93   ; 
- D 1 - I - 0x0227CD 08:A7BD: 92        .byte $92   ; 
- D 1 - I - 0x0227CE 08:A7BE: 72        .byte $72   ; 
- D 1 - I - 0x0227CF 08:A7BF: 93        .byte $93   ; 
- D 1 - I - 0x0227D0 08:A7C0: 93        .byte $93   ; 
- D 1 - I - 0x0227D1 08:A7C1: 93        .byte $93   ; 
- D 1 - I - 0x0227D2 08:A7C2: 93        .byte $93   ; 
- D 1 - I - 0x0227D3 08:A7C3: 92        .byte $92   ; 
- D 1 - I - 0x0227D4 08:A7C4: A2        .byte $A2   ; 
- D 1 - I - 0x0227D5 08:A7C5: 94        .byte $94   ; 
- D 1 - I - 0x0227D6 08:A7C6: EB        .byte $EB   ; 
- D 1 - I - 0x0227D7 08:A7C7: 00        .byte $00   ; 
- D 1 - I - 0x0227D8 08:A7C8: FF        .byte $FF   ; 
off_FD_A7C9:
- D 1 - I - 0x0227D9 08:A7C9: E9        .byte $E9   ; 
- D 1 - I - 0x0227DA 08:A7CA: B1        .byte $B1   ; 
- D 1 - I - 0x0227DB 08:A7CB: EC        .byte $EC   ; 
- D 1 - I - 0x0227DC 08:A7CC: 11        .byte $11   ; 
- D 1 - I - 0x0227DD 08:A7CD: FB        .byte $FB   ; 
- D 1 - I - 0x0227DE 08:A7CE: E1        .byte $E1   ; 
- D 1 - I - 0x0227DF 08:A7CF: 91        .byte $91   ; 
- D 1 - I - 0x0227E0 08:A7D0: E2        .byte $E2   ; 
- D 1 - I - 0x0227E1 08:A7D1: 71        .byte $71   ; 
- D 1 - I - 0x0227E2 08:A7D2: 91        .byte $91   ; 
- D 1 - I - 0x0227E3 08:A7D3: FE        .byte $FE   ; 
- D 1 - I - 0x0227E4 08:A7D4: 04        .byte $04   ; 
- D 1 - I - 0x0227E5 08:A7D5: E1        .byte $E1   ; 
- D 1 - I - 0x0227E6 08:A7D6: 91        .byte $91   ; 
- D 1 - I - 0x0227E7 08:A7D7: E2        .byte $E2   ; 
- D 1 - I - 0x0227E8 08:A7D8: 71        .byte $71   ; 
- D 1 - I - 0x0227E9 08:A7D9: 91        .byte $91   ; 
- D 1 - I - 0x0227EA 08:A7DA: FF        .byte $FF   ; 
off_FD_A7DB:
- D 1 - I - 0x0227EB 08:A7DB: FB        .byte $FB   ; 
- D 1 - I - 0x0227EC 08:A7DC: E3        .byte $E3   ; 
- D 1 - I - 0x0227ED 08:A7DD: 01        .byte $01   ; 
- D 1 - I - 0x0227EE 08:A7DE: F3        .byte $F3   ; 
- D 1 - I - 0x0227EF 08:A7DF: 01        .byte $01   ; 
- D 1 - I - 0x0227F0 08:A7E0: F4        .byte $F4   ; 
- D 1 - I - 0x0227F1 08:A7E1: 01        .byte $01   ; 
- D 1 - I - 0x0227F2 08:A7E2: F0        .byte $F0   ; 
- D 1 - I - 0x0227F3 08:A7E3: FE        .byte $FE   ; 
- D 1 - I - 0x0227F4 08:A7E4: 02        .byte $02   ; 
- D 1 - I - 0x0227F5 08:A7E5: FB        .byte $FB   ; 
- D 1 - I - 0x0227F6 08:A7E6: 21        .byte $21   ; 
- D 1 - I - 0x0227F7 08:A7E7: F3        .byte $F3   ; 
- D 1 - I - 0x0227F8 08:A7E8: 21        .byte $21   ; 
- D 1 - I - 0x0227F9 08:A7E9: F4        .byte $F4   ; 
- D 1 - I - 0x0227FA 08:A7EA: 21        .byte $21   ; 
- D 1 - I - 0x0227FB 08:A7EB: F0        .byte $F0   ; 
- D 1 - I - 0x0227FC 08:A7EC: FE        .byte $FE   ; 
- D 1 - I - 0x0227FD 08:A7ED: 02        .byte $02   ; 
- D 1 - I - 0x0227FE 08:A7EE: 31        .byte $31   ; 
- D 1 - I - 0x0227FF 08:A7EF: F3        .byte $F3   ; 
- D 1 - I - 0x022800 08:A7F0: 31        .byte $31   ; 
- D 1 - I - 0x022801 08:A7F1: F0        .byte $F0   ; 
- D 1 - I - 0x022802 08:A7F2: E2        .byte $E2   ; 
- D 1 - I - 0x022803 08:A7F3: A1        .byte $A1   ; 
- D 1 - I - 0x022804 08:A7F4: F3        .byte $F3   ; 
- D 1 - I - 0x022805 08:A7F5: A1        .byte $A1   ; 
- D 1 - I - 0x022806 08:A7F6: FF        .byte $FF   ; 
off_FD_A7F7:
- D 1 - I - 0x022807 08:A7F7: E9        .byte $E9   ; 
- D 1 - I - 0x022808 08:A7F8: B1        .byte $B1   ; 
- D 1 - I - 0x022809 08:A7F9: EC        .byte $EC   ; 
- D 1 - I - 0x02280A 08:A7FA: 00        .byte $00   ; 
- D 1 - I - 0x02280B 08:A7FB: FB        .byte $FB   ; 
- D 1 - I - 0x02280C 08:A7FC: E3        .byte $E3   ; 
- D 1 - I - 0x02280D 08:A7FD: 11        .byte $11   ; 
- D 1 - I - 0x02280E 08:A7FE: F3        .byte $F3   ; 
- D 1 - I - 0x02280F 08:A7FF: 11        .byte $11   ; 
- D 1 - I - 0x022810 08:A800: F4        .byte $F4   ; 
- D 1 - I - 0x022811 08:A801: 11        .byte $11   ; 
- D 1 - I - 0x022812 08:A802: F0        .byte $F0   ; 
- D 1 - I - 0x022813 08:A803: FE        .byte $FE   ; 
- D 1 - I - 0x022814 08:A804: 02        .byte $02   ; 
- D 1 - I - 0x022815 08:A805: FB        .byte $FB   ; 
- D 1 - I - 0x022816 08:A806: 01        .byte $01   ; 
- D 1 - I - 0x022817 08:A807: F3        .byte $F3   ; 
- D 1 - I - 0x022818 08:A808: 01        .byte $01   ; 
- D 1 - I - 0x022819 08:A809: F4        .byte $F4   ; 
- D 1 - I - 0x02281A 08:A80A: 01        .byte $01   ; 
- D 1 - I - 0x02281B 08:A80B: F0        .byte $F0   ; 
- D 1 - I - 0x02281C 08:A80C: FE        .byte $FE   ; 
- D 1 - I - 0x02281D 08:A80D: 02        .byte $02   ; 
- D 1 - I - 0x02281E 08:A80E: FB        .byte $FB   ; 
- D 1 - I - 0x02281F 08:A80F: E2        .byte $E2   ; 
- D 1 - I - 0x022820 08:A810: B1        .byte $B1   ; 
- D 1 - I - 0x022821 08:A811: F3        .byte $F3   ; 
- D 1 - I - 0x022822 08:A812: B1        .byte $B1   ; 
- D 1 - I - 0x022823 08:A813: F0        .byte $F0   ; 
- D 1 - I - 0x022824 08:A814: A1        .byte $A1   ; 
- D 1 - I - 0x022825 08:A815: F3        .byte $F3   ; 
- D 1 - I - 0x022826 08:A816: A1        .byte $A1   ; 
- D 1 - I - 0x022827 08:A817: E9        .byte $E9   ; 
- D 1 - I - 0x022828 08:A818: 00        .byte $00   ; 
- D 1 - I - 0x022829 08:A819: EC        .byte $EC   ; 
- D 1 - I - 0x02282A 08:A81A: 00        .byte $00   ; 
- D 1 - I - 0x02282B 08:A81B: FF        .byte $FF   ; 
off_FD_A81C:
- D 1 - I - 0x02282C 08:A81C: 93        .byte $93   ; 
- D 1 - I - 0x02282D 08:A81D: 93        .byte $93   ; 
- D 1 - I - 0x02282E 08:A81E: 93        .byte $93   ; 
- D 1 - I - 0x02282F 08:A81F: 93        .byte $93   ; 
- D 1 - I - 0x022830 08:A820: 92        .byte $92   ; 
- D 1 - I - 0x022831 08:A821: FF        .byte $FF   ; 
off_FD_A822:
- D 1 - I - 0x022832 08:A822: E1        .byte $E1   ; 
- D 1 - I - 0x022833 08:A823: 03        .byte $03   ; 
- D 1 - I - 0x022834 08:A824: 03        .byte $03   ; 
- D 1 - I - 0x022835 08:A825: 23        .byte $23   ; 
- D 1 - I - 0x022836 08:A826: 23        .byte $23   ; 
- D 1 - I - 0x022837 08:A827: 32        .byte $32   ; 
- D 1 - I - 0x022838 08:A828: E0        .byte $E0   ; 
- D 1 - I - 0x022839 08:A829: A2        .byte $A2   ; 
- D 1 - I - 0x02283A 08:A82A: FF        .byte $FF   ; 
off_FD_A82B:
- D 1 - I - 0x02283B 08:A82B: E0        .byte $E0   ; 
- D 1 - I - 0x02283C 08:A82C: A3        .byte $A3   ; 
- D 1 - I - 0x02283D 08:A82D: A3        .byte $A3   ; 
- D 1 - I - 0x02283E 08:A82E: A3        .byte $A3   ; 
- D 1 - I - 0x02283F 08:A82F: A3        .byte $A3   ; 
- D 1 - I - 0x022840 08:A830: A2        .byte $A2   ; 
- D 1 - I - 0x022841 08:A831: B2        .byte $B2   ; 
- D 1 - I - 0x022842 08:A832: 83        .byte $83   ; 
- D 1 - I - 0x022843 08:A833: 83        .byte $83   ; 
- D 1 - I - 0x022844 08:A834: 73        .byte $73   ; 
- D 1 - I - 0x022845 08:A835: 73        .byte $73   ; 
- D 1 - I - 0x022846 08:A836: 62        .byte $62   ; 
- D 1 - I - 0x022847 08:A837: 52        .byte $52   ; 
- D 1 - I - 0x022848 08:A838: FF        .byte $FF   ; 
off_FD_A839:
- D 1 - I - 0x022849 08:A839: FB        .byte $FB   ; 
- D 1 - I - 0x02284A 08:A83A: E0        .byte $E0   ; 
- D 1 - I - 0x02284B 08:A83B: DE        .byte $DE   ; 
- D 1 - I - 0x02284C 08:A83C: 99        .byte $99   ; 
- D 1 - I - 0x02284D 08:A83D: 9F        .byte $9F   ; 
- D 1 - I - 0x02284E 08:A83E: E1        .byte $E1   ; 
- D 1 - I - 0x02284F 08:A83F: 00        .byte $00   ; 
- D 1 - I - 0x022850 08:A840: 02        .byte $02   ; 
- D 1 - I - 0x022851 08:A841: DE        .byte $DE   ; 
- D 1 - I - 0x022852 08:A842: 21        .byte $21   ; 
- D 1 - I - 0x022853 08:A843: FE        .byte $FE   ; 
- D 1 - I - 0x022854 08:A844: 02        .byte $02   ; 
- D 1 - I - 0x022855 08:A845: EB        .byte $EB   ; 
- D 1 - I - 0x022856 08:A846: 00        .byte $00   ; 
- D 1 - I - 0x022857 08:A847: FF        .byte $FF   ; 
off_FD_A848:
- D 1 - I - 0x022858 08:A848: D3        .byte $D3   ; 
- D 1 - I - 0x022859 08:A849: DE        .byte $DE   ; 
- D 1 - I - 0x02285A 08:A84A: B1        .byte $B1   ; 
- D 1 - I - 0x02285B 08:A84B: 11        .byte $11   ; 
- D 1 - I - 0x02285C 08:A84C: 11        .byte $11   ; 
- D 1 - I - 0x02285D 08:A84D: DE        .byte $DE   ; 
- D 1 - I - 0x02285E 08:A84E: 22        .byte $22   ; 
- D 1 - I - 0x02285F 08:A84F: B1        .byte $B1   ; 
- D 1 - I - 0x022860 08:A850: 11        .byte $11   ; 
- D 1 - I - 0x022861 08:A851: 12        .byte $12   ; 
- D 1 - I - 0x022862 08:A852: 12        .byte $12   ; 
- D 1 - I - 0x022863 08:A853: 12        .byte $12   ; 
- D 1 - I - 0x022864 08:A854: 91        .byte $91   ; 
- D 1 - I - 0x022865 08:A855: 91        .byte $91   ; 
- D 1 - I - 0x022866 08:A856: 92        .byte $92   ; 
- D 1 - I - 0x022867 08:A857: 92        .byte $92   ; 
- D 1 - I - 0x022868 08:A858: 81        .byte $81   ; 
- D 1 - I - 0x022869 08:A859: 81        .byte $81   ; 
- D 1 - I - 0x02286A 08:A85A: 82        .byte $82   ; 
- D 1 - I - 0x02286B 08:A85B: 82        .byte $82   ; 
- D 1 - I - 0x02286C 08:A85C: 71        .byte $71   ; 
- D 1 - I - 0x02286D 08:A85D: 71        .byte $71   ; 
- D 1 - I - 0x02286E 08:A85E: 62        .byte $62   ; 
- D 1 - I - 0x02286F 08:A85F: FF        .byte $FF   ; 
off_FD_A860:
- D 1 - I - 0x022870 08:A860: D6        .byte $D6   ; 
- D 1 - I - 0x022871 08:A861: DE        .byte $DE   ; 
- D 1 - I - 0x022872 08:A862: B1        .byte $B1   ; 
- D 1 - I - 0x022873 08:A863: 1B        .byte $1B   ; 
- D 1 - I - 0x022874 08:A864: 41        .byte $41   ; 
- D 1 - I - 0x022875 08:A865: B4        .byte $B4   ; 
- D 1 - I - 0x022876 08:A866: 14        .byte $14   ; 
- D 1 - I - 0x022877 08:A867: 11        .byte $11   ; 
- D 1 - I - 0x022878 08:A868: 41        .byte $41   ; 
- D 1 - I - 0x022879 08:A869: DE        .byte $DE   ; 
- D 1 - I - 0x02287A 08:A86A: B1        .byte $B1   ; 
- D 1 - I - 0x02287B 08:A86B: D3        .byte $D3   ; 
- D 1 - I - 0x02287C 08:A86C: 11        .byte $11   ; 
- D 1 - I - 0x02287D 08:A86D: 11        .byte $11   ; 
- D 1 - I - 0x02287E 08:A86E: FF        .byte $FF   ; 
off_FD_A86F:
- D 1 - I - 0x02287F 08:A86F: D6        .byte $D6   ; 
- D 1 - I - 0x022880 08:A870: FB        .byte $FB   ; 
- D 1 - I - 0x022881 08:A871: B1        .byte $B1   ; 
- D 1 - I - 0x022882 08:A872: 11        .byte $11   ; 
- D 1 - I - 0x022883 08:A873: 11        .byte $11   ; 
- D 1 - I - 0x022884 08:A874: FE        .byte $FE   ; 
- D 1 - I - 0x022885 08:A875: 04        .byte $04   ; 
- D 1 - I - 0x022886 08:A876: D3        .byte $D3   ; 
- D 1 - I - 0x022887 08:A877: 41        .byte $41   ; 
- D 1 - I - 0x022888 08:A878: 41        .byte $41   ; 
- D 1 - I - 0x022889 08:A879: 42        .byte $42   ; 
- D 1 - I - 0x02288A 08:A87A: 42        .byte $42   ; 
- D 1 - I - 0x02288B 08:A87B: 42        .byte $42   ; 
- D 1 - I - 0x02288C 08:A87C: FF        .byte $FF   ; 
off_FD_A87D:
- D 1 - I - 0x02288D 08:A87D: D6        .byte $D6   ; 
- D 1 - I - 0x02288E 08:A87E: FB        .byte $FB   ; 
- D 1 - I - 0x02288F 08:A87F: B1        .byte $B1   ; 
- D 1 - I - 0x022890 08:A880: 41        .byte $41   ; 
- D 1 - I - 0x022891 08:A881: 41        .byte $41   ; 
- D 1 - I - 0x022892 08:A882: FE        .byte $FE   ; 
- D 1 - I - 0x022893 08:A883: 03        .byte $03   ; 
- D 1 - I - 0x022894 08:A884: B1        .byte $B1   ; 
- D 1 - I - 0x022895 08:A885: B1        .byte $B1   ; 
- D 1 - I - 0x022896 08:A886: 21        .byte $21   ; 
- D 1 - I - 0x022897 08:A887: D3        .byte $D3   ; 
- D 1 - I - 0x022898 08:A888: DE        .byte $DE   ; 
- D 1 - I - 0x022899 08:A889: 99        .byte $99   ; 
- D 1 - I - 0x02289A 08:A88A: 88        .byte $88   ; 
- D 1 - I - 0x02289B 08:A88B: 77        .byte $77   ; 
- D 1 - I - 0x02289C 08:A88C: 66        .byte $66   ; 
- D 1 - I - 0x02289D 08:A88D: DE        .byte $DE   ; 
- D 1 - I - 0x02289E 08:A88E: FF        .byte $FF   ; 
off_FD_A88F:
- D 1 - I - 0x02289F 08:A88F: D6        .byte $D6   ; 
- D 1 - I - 0x0228A0 08:A890: 41        .byte $41   ; 
- D 1 - I - 0x0228A1 08:A891: 41        .byte $41   ; 
- D 1 - I - 0x0228A2 08:A892: 41        .byte $41   ; 
- D 1 - I - 0x0228A3 08:A893: 41        .byte $41   ; 
- D 1 - I - 0x0228A4 08:A894: 22        .byte $22   ; 
- D 1 - I - 0x0228A5 08:A895: DE        .byte $DE   ; 
- D 1 - I - 0x0228A6 08:A896: 76        .byte $76   ; 
- D 1 - I - 0x0228A7 08:A897: 4B        .byte $4B   ; 
- D 1 - I - 0x0228A8 08:A898: 4B        .byte $4B   ; 
- D 1 - I - 0x0228A9 08:A899: 4B        .byte $4B   ; 
- D 1 - I - 0x0228AA 08:A89A: 4B        .byte $4B   ; 
- D 1 - I - 0x0228AB 08:A89B: DE        .byte $DE   ; 
- D 1 - I - 0x0228AC 08:A89C: FF        .byte $FF   ; 
off_FD_A89D:
- D 1 - I - 0x0228AD 08:A89D: D6        .byte $D6   ; 
- D 1 - I - 0x0228AE 08:A89E: FB        .byte $FB   ; 
- D 1 - I - 0x0228AF 08:A89F: DE        .byte $DE   ; 
- D 1 - I - 0x0228B0 08:A8A0: B1        .byte $B1   ; 
- D 1 - I - 0x0228B1 08:A8A1: 14        .byte $14   ; 
- D 1 - I - 0x0228B2 08:A8A2: 11        .byte $11   ; 
- D 1 - I - 0x0228B3 08:A8A3: B1        .byte $B1   ; 
- D 1 - I - 0x0228B4 08:A8A4: DE        .byte $DE   ; 
- D 1 - I - 0x0228B5 08:A8A5: FE        .byte $FE   ; 
- D 1 - I - 0x0228B6 08:A8A6: 06        .byte $06   ; 
- D 1 - I - 0x0228B7 08:A8A7: FF        .byte $FF   ; 
off_FD_A8A8:
- D 1 - I - 0x0228B8 08:A8A8: D6        .byte $D6   ; 
- D 1 - I - 0x0228B9 08:A8A9: 77        .byte $77   ; 
- D 1 - I - 0x0228BA 08:A8AA: 83        .byte $83   ; 
- D 1 - I - 0x0228BB 08:A8AB: 00        .byte $00   ; 
- D 1 - I - 0x0228BC 08:A8AC: EB        .byte $EB   ; 
- D 1 - I - 0x0228BD 08:A8AD: 54        .byte $54   ; 
- D 1 - I - 0x0228BE 08:A8AE: 03        .byte $03   ; 
- D 1 - I - 0x0228BF 08:A8AF: E2        .byte $E2   ; 
- D 1 - I - 0x0228C0 08:A8B0: 94        .byte $94   ; 
- D 1 - I - 0x0228C1 08:A8B1: D6        .byte $D6   ; 
- D 1 - I - 0x0228C2 08:A8B2: 77        .byte $77   ; 
- D 1 - I - 0x0228C3 08:A8B3: 80        .byte $80   ; 
- D 1 - I - 0x0228C4 08:A8B4: 68        .byte $68   ; 
- D 1 - I - 0x0228C5 08:A8B5: F3        .byte $F3   ; 
- D 1 - I - 0x0228C6 08:A8B6: EB        .byte $EB   ; 
- D 1 - I - 0x0228C7 08:A8B7: 51        .byte $51   ; 
- D 1 - I - 0x0228C8 08:A8B8: 03        .byte $03   ; 
- D 1 - I - 0x0228C9 08:A8B9: 95        .byte $95   ; 
- D 1 - I - 0x0228CA 08:A8BA: D6        .byte $D6   ; 
- D 1 - I - 0x0228CB 08:A8BB: 77        .byte $77   ; 
- D 1 - I - 0x0228CC 08:A8BC: 83        .byte $83   ; 
- D 1 - I - 0x0228CD 08:A8BD: 86        .byte $86   ; 
- D 1 - I - 0x0228CE 08:A8BE: EC        .byte $EC   ; 
- D 1 - I - 0x0228CF 08:A8BF: 11        .byte $11   ; 
- D 1 - I - 0x0228D0 08:A8C0: EB        .byte $EB   ; 
- D 1 - I - 0x0228D1 08:A8C1: 00        .byte $00   ; 
- D 1 - I - 0x0228D2 08:A8C2: 91        .byte $91   ; 
- D 1 - I - 0x0228D3 08:A8C3: 71        .byte $71   ; 
- D 1 - I - 0x0228D4 08:A8C4: 91        .byte $91   ; 
- D 1 - I - 0x0228D5 08:A8C5: E3        .byte $E3   ; 
- D 1 - I - 0x0228D6 08:A8C6: EB        .byte $EB   ; 
- D 1 - I - 0x0228D7 08:A8C7: 54        .byte $54   ; 
- D 1 - I - 0x0228D8 08:A8C8: 03        .byte $03   ; 
- D 1 - I - 0x0228D9 08:A8C9: 22        .byte $22   ; 
- D 1 - I - 0x0228DA 08:A8CA: EB        .byte $EB   ; 
- D 1 - I - 0x0228DB 08:A8CB: 00        .byte $00   ; 
- D 1 - I - 0x0228DC 08:A8CC: E2        .byte $E2   ; 
- D 1 - I - 0x0228DD 08:A8CD: 72        .byte $72   ; 
- D 1 - I - 0x0228DE 08:A8CE: EC        .byte $EC   ; 
- D 1 - I - 0x0228DF 08:A8CF: 00        .byte $00   ; 
- D 1 - I - 0x0228E0 08:A8D0: F0        .byte $F0   ; 
- D 1 - I - 0x0228E1 08:A8D1: FF        .byte $FF   ; 
off_FD_A8D2:
- D 1 - I - 0x0228E2 08:A8D2: E9        .byte $E9   ; 
- D 1 - I - 0x0228E3 08:A8D3: B1        .byte $B1   ; 
- D 1 - I - 0x0228E4 08:A8D4: E8        .byte $E8   ; 
- D 1 - I - 0x0228E5 08:A8D5: 02        .byte $02   ; 
- D 1 - I - 0x0228E6 08:A8D6: E3        .byte $E3   ; 
- D 1 - I - 0x0228E7 08:A8D7: 62        .byte $62   ; 
- D 1 - I - 0x0228E8 08:A8D8: F3        .byte $F3   ; 
- D 1 - I - 0x0228E9 08:A8D9: 62        .byte $62   ; 
- D 1 - I - 0x0228EA 08:A8DA: F0        .byte $F0   ; 
- D 1 - I - 0x0228EB 08:A8DB: 52        .byte $52   ; 
- D 1 - I - 0x0228EC 08:A8DC: F3        .byte $F3   ; 
- D 1 - I - 0x0228ED 08:A8DD: 52        .byte $52   ; 
- D 1 - I - 0x0228EE 08:A8DE: F0        .byte $F0   ; 
- D 1 - I - 0x0228EF 08:A8DF: 02        .byte $02   ; 
- D 1 - I - 0x0228F0 08:A8E0: F3        .byte $F3   ; 
- D 1 - I - 0x0228F1 08:A8E1: 02        .byte $02   ; 
- D 1 - I - 0x0228F2 08:A8E2: F0        .byte $F0   ; 
- D 1 - I - 0x0228F3 08:A8E3: E2        .byte $E2   ; 
- D 1 - I - 0x0228F4 08:A8E4: B2        .byte $B2   ; 
- D 1 - I - 0x0228F5 08:A8E5: F3        .byte $F3   ; 
- D 1 - I - 0x0228F6 08:A8E6: B2        .byte $B2   ; 
- D 1 - I - 0x0228F7 08:A8E7: F0        .byte $F0   ; 
- D 1 - I - 0x0228F8 08:A8E8: E3        .byte $E3   ; 
- D 1 - I - 0x0228F9 08:A8E9: 22        .byte $22   ; 
- D 1 - I - 0x0228FA 08:A8EA: F3        .byte $F3   ; 
- D 1 - I - 0x0228FB 08:A8EB: 22        .byte $22   ; 
- D 1 - I - 0x0228FC 08:A8EC: F0        .byte $F0   ; 
- D 1 - I - 0x0228FD 08:A8ED: E2        .byte $E2   ; 
- D 1 - I - 0x0228FE 08:A8EE: 92        .byte $92   ; 
- D 1 - I - 0x0228FF 08:A8EF: F3        .byte $F3   ; 
- D 1 - I - 0x022900 08:A8F0: 92        .byte $92   ; 
- D 1 - I - 0x022901 08:A8F1: F0        .byte $F0   ; 
- D 1 - I - 0x022902 08:A8F2: E3        .byte $E3   ; 
- D 1 - I - 0x022903 08:A8F3: 42        .byte $42   ; 
- D 1 - I - 0x022904 08:A8F4: F3        .byte $F3   ; 
- D 1 - I - 0x022905 08:A8F5: 42        .byte $42   ; 
- D 1 - I - 0x022906 08:A8F6: F0        .byte $F0   ; 
- D 1 - I - 0x022907 08:A8F7: E2        .byte $E2   ; 
- D 1 - I - 0x022908 08:A8F8: B2        .byte $B2   ; 
- D 1 - I - 0x022909 08:A8F9: F3        .byte $F3   ; 
- D 1 - I - 0x02290A 08:A8FA: B2        .byte $B2   ; 
- D 1 - I - 0x02290B 08:A8FB: F0        .byte $F0   ; 
- D 1 - I - 0x02290C 08:A8FC: 62        .byte $62   ; 
- D 1 - I - 0x02290D 08:A8FD: F3        .byte $F3   ; 
- D 1 - I - 0x02290E 08:A8FE: 62        .byte $62   ; 
- D 1 - I - 0x02290F 08:A8FF: F0        .byte $F0   ; 
- D 1 - I - 0x022910 08:A900: E2        .byte $E2   ; 
- D 1 - I - 0x022911 08:A901: 12        .byte $12   ; 
- D 1 - I - 0x022912 08:A902: F3        .byte $F3   ; 
- D 1 - I - 0x022913 08:A903: 12        .byte $12   ; 
- D 1 - I - 0x022914 08:A904: F0        .byte $F0   ; 
- D 1 - I - 0x022915 08:A905: B2        .byte $B2   ; 
- D 1 - I - 0x022916 08:A906: F3        .byte $F3   ; 
- D 1 - I - 0x022917 08:A907: B2        .byte $B2   ; 
- D 1 - I - 0x022918 08:A908: F0        .byte $F0   ; 
- D 1 - I - 0x022919 08:A909: E8        .byte $E8   ; 
- D 1 - I - 0x02291A 08:A90A: 01        .byte $01   ; 
- D 1 - I - 0x02291B 08:A90B: E3        .byte $E3   ; 
- D 1 - I - 0x02291C 08:A90C: 13        .byte $13   ; 
- D 1 - I - 0x02291D 08:A90D: F3        .byte $F3   ; 
- D 1 - I - 0x02291E 08:A90E: 01        .byte $01   ; 
- D 1 - I - 0x02291F 08:A90F: E2        .byte $E2   ; 
- D 1 - I - 0x022920 08:A910: B1        .byte $B1   ; 
- D 1 - I - 0x022921 08:A911: A1        .byte $A1   ; 
- D 1 - I - 0x022922 08:A912: 91        .byte $91   ; 
- D 1 - I - 0x022923 08:A913: 81        .byte $81   ; 
- D 1 - I - 0x022924 08:A914: FF        .byte $FF   ; 



_off001_A915_25:
off_FF_A915:
- D 1 - I - 0x022925 08:A915: FB        .byte $FB   ; 
- D 1 - I - 0x022926 08:A916: FD        .byte $FD   ; 
- D 1 - I - 0x022927 08:A917: 83 A9     .word off_FD_A983
- D 1 - I - 0x022929 08:A919: FD        .byte $FD   ; 
- D 1 - I - 0x02292A 08:A91A: 9A A9     .word off_FD_A99A
- D 1 - I - 0x02292C 08:A91C: FE        .byte $FE   ; 
- D 1 - I - 0x02292D 08:A91D: 02        .byte $02   ; 
- D 1 - I - 0x02292E 08:A91E: EE        .byte $EE   ; 
- D 1 - I - 0x02292F 08:A91F: 02        .byte $02   ; 
- D 1 - I - 0x022930 08:A920: FB        .byte $FB   ; 
- D 1 - I - 0x022931 08:A921: FD        .byte $FD   ; 
- D 1 - I - 0x022932 08:A922: 83 A9     .word off_FD_A983
- D 1 - I - 0x022934 08:A924: FD        .byte $FD   ; 
- D 1 - I - 0x022935 08:A925: 9A A9     .word off_FD_A99A
- D 1 - I - 0x022937 08:A927: FE        .byte $FE   ; 
- D 1 - I - 0x022938 08:A928: 02        .byte $02   ; 
- D 1 - I - 0x022939 08:A929: EE        .byte $EE   ; 
- D 1 - I - 0x02293A 08:A92A: 00        .byte $00   ; 
- D 1 - I - 0x02293B 08:A92B: FE        .byte $FE   ; 
- D 1 - I - 0x02293C 08:A92C: FF        .byte $FF   ; 
- D 1 - I - 0x02293D 08:A92D: 15 A9     .word off_FF_A915



_off001_A92F_24:
off_FF_A92F:
- D 1 - I - 0x02293F 08:A92F: FB        .byte $FB   ; 
- D 1 - I - 0x022940 08:A930: EC        .byte $EC   ; 
- D 1 - I - 0x022941 08:A931: 11        .byte $11   ; 
- D 1 - I - 0x022942 08:A932: D6        .byte $D6   ; 
- D 1 - I - 0x022943 08:A933: 37        .byte $37   ; 
- D 1 - I - 0x022944 08:A934: 83        .byte $83   ; 
- D 1 - I - 0x022945 08:A935: 88        .byte $88   ; 
- D 1 - I - 0x022946 08:A936: FD        .byte $FD   ; 
- D 1 - I - 0x022947 08:A937: AA A9     .word off_FD_A9AA
- D 1 - I - 0x022949 08:A939: EE        .byte $EE   ; 
- D 1 - I - 0x02294A 08:A93A: 85        .byte $85   ; 
- D 1 - I - 0x02294B 08:A93B: FD        .byte $FD   ; 
- D 1 - I - 0x02294C 08:A93C: 9A A9     .word off_FD_A99A
- D 1 - I - 0x02294E 08:A93E: EE        .byte $EE   ; 
- D 1 - I - 0x02294F 08:A93F: 00        .byte $00   ; 
- D 1 - I - 0x022950 08:A940: FE        .byte $FE   ; 
- D 1 - I - 0x022951 08:A941: 02        .byte $02   ; 
- D 1 - I - 0x022952 08:A942: FB        .byte $FB   ; 
- D 1 - I - 0x022953 08:A943: D6        .byte $D6   ; 
- D 1 - I - 0x022954 08:A944: 37        .byte $37   ; 
- D 1 - I - 0x022955 08:A945: 83        .byte $83   ; 
- D 1 - I - 0x022956 08:A946: 88        .byte $88   ; 
- D 1 - I - 0x022957 08:A947: EE        .byte $EE   ; 
- D 1 - I - 0x022958 08:A948: 02        .byte $02   ; 
- D 1 - I - 0x022959 08:A949: FD        .byte $FD   ; 
- D 1 - I - 0x02295A 08:A94A: AA A9     .word off_FD_A9AA
- D 1 - I - 0x02295C 08:A94C: EE        .byte $EE   ; 
- D 1 - I - 0x02295D 08:A94D: 83        .byte $83   ; 
- D 1 - I - 0x02295E 08:A94E: FD        .byte $FD   ; 
- D 1 - I - 0x02295F 08:A94F: 9A A9     .word off_FD_A99A
- D 1 - I - 0x022961 08:A951: EE        .byte $EE   ; 
- D 1 - I - 0x022962 08:A952: 00        .byte $00   ; 
- D 1 - I - 0x022963 08:A953: FE        .byte $FE   ; 
- D 1 - I - 0x022964 08:A954: 02        .byte $02   ; 
- D 1 - I - 0x022965 08:A955: FE        .byte $FE   ; 
- D 1 - I - 0x022966 08:A956: FF        .byte $FF   ; 
- D 1 - I - 0x022967 08:A957: 2F A9     .word off_FF_A92F



_off001_A959_26:
off_FF_A959:
- D 1 - I - 0x022969 08:A959: D6        .byte $D6   ; 
- D 1 - I - 0x02296A 08:A95A: 06        .byte $06   ; 
- D 1 - I - 0x02296B 08:A95B: FB        .byte $FB   ; 
- D 1 - I - 0x02296C 08:A95C: FD        .byte $FD   ; 
- D 1 - I - 0x02296D 08:A95D: AA A9     .word off_FD_A9AA
- D 1 - I - 0x02296F 08:A95F: FD        .byte $FD   ; 
- D 1 - I - 0x022970 08:A960: B6 A9     .word off_FD_A9B6
- D 1 - I - 0x022972 08:A962: FE        .byte $FE   ; 
- D 1 - I - 0x022973 08:A963: 02        .byte $02   ; 
- D 1 - I - 0x022974 08:A964: EE        .byte $EE   ; 
- D 1 - I - 0x022975 08:A965: 02        .byte $02   ; 
- D 1 - I - 0x022976 08:A966: FB        .byte $FB   ; 
- D 1 - I - 0x022977 08:A967: FD        .byte $FD   ; 
- D 1 - I - 0x022978 08:A968: AA A9     .word off_FD_A9AA
- D 1 - I - 0x02297A 08:A96A: FD        .byte $FD   ; 
- D 1 - I - 0x02297B 08:A96B: B6 A9     .word off_FD_A9B6
- D 1 - I - 0x02297D 08:A96D: FE        .byte $FE   ; 
- D 1 - I - 0x02297E 08:A96E: 02        .byte $02   ; 
- D 1 - I - 0x02297F 08:A96F: EE        .byte $EE   ; 
- D 1 - I - 0x022980 08:A970: 00        .byte $00   ; 
- D 1 - I - 0x022981 08:A971: FE        .byte $FE   ; 
- D 1 - I - 0x022982 08:A972: FF        .byte $FF   ; 
- D 1 - I - 0x022983 08:A973: 59 A9     .word off_FF_A959



_off001_A975_27:
off_FF_A975:
- D 1 - I - 0x022985 08:A975: D6        .byte $D6   ; 
- D 1 - I - 0x022986 08:A976: B2        .byte $B2   ; 
- D 1 - I - 0x022987 08:A977: B2        .byte $B2   ; 
- D 1 - I - 0x022988 08:A978: 42        .byte $42   ; 
- D 1 - I - 0x022989 08:A979: B1        .byte $B1   ; 
- D 1 - I - 0x02298A 08:A97A: B1        .byte $B1   ; 
- D 1 - I - 0x02298B 08:A97B: FB        .byte $FB   ; 
- D 1 - I - 0x02298C 08:A97C: 11        .byte $11   ; 
- D 1 - I - 0x02298D 08:A97D: FE        .byte $FE   ; 
- D 1 - I - 0x02298E 08:A97E: 08        .byte $08   ; 
- D 1 - I - 0x02298F 08:A97F: FE        .byte $FE   ; 
- D 1 - I - 0x022990 08:A980: FF        .byte $FF   ; 
- D 1 - I - 0x022991 08:A981: 75 A9     .word off_FF_A975
off_FD_A983:
- D 1 - I - 0x022993 08:A983: E9        .byte $E9   ; 
- D 1 - I - 0x022994 08:A984: 71        .byte $71   ; 
- D 1 - I - 0x022995 08:A985: EC        .byte $EC   ; 
- D 1 - I - 0x022996 08:A986: 11        .byte $11   ; 
- D 1 - I - 0x022997 08:A987: D6        .byte $D6   ; 
- D 1 - I - 0x022998 08:A988: B7        .byte $B7   ; 
- D 1 - I - 0x022999 08:A989: 83        .byte $83   ; 
- D 1 - I - 0x02299A 08:A98A: 88        .byte $88   ; 
- D 1 - I - 0x02299B 08:A98B: E3        .byte $E3   ; 
- D 1 - I - 0x02299C 08:A98C: 41        .byte $41   ; 
- D 1 - I - 0x02299D 08:A98D: E2        .byte $E2   ; 
- D 1 - I - 0x02299E 08:A98E: B1        .byte $B1   ; 
- D 1 - I - 0x02299F 08:A98F: E3        .byte $E3   ; 
- D 1 - I - 0x0229A0 08:A990: 21        .byte $21   ; 
- D 1 - I - 0x0229A1 08:A991: 41        .byte $41   ; 
- D 1 - I - 0x0229A2 08:A992: E2        .byte $E2   ; 
- D 1 - I - 0x0229A3 08:A993: A1        .byte $A1   ; 
- D 1 - I - 0x0229A4 08:A994: B1        .byte $B1   ; 
- D 1 - I - 0x0229A5 08:A995: E3        .byte $E3   ; 
- D 1 - I - 0x0229A6 08:A996: 21        .byte $21   ; 
- D 1 - I - 0x0229A7 08:A997: E9        .byte $E9   ; 
- D 1 - I - 0x0229A8 08:A998: 00        .byte $00   ; 
- D 1 - I - 0x0229A9 08:A999: FF        .byte $FF   ; 
off_FD_A99A:
- D 1 - I - 0x0229AA 08:A99A: EC        .byte $EC   ; 
- D 1 - I - 0x0229AB 08:A99B: 11        .byte $11   ; 
- D 1 - I - 0x0229AC 08:A99C: D6        .byte $D6   ; 
- D 1 - I - 0x0229AD 08:A99D: 37        .byte $37   ; 
- D 1 - I - 0x0229AE 08:A99E: 83        .byte $83   ; 
- D 1 - I - 0x0229AF 08:A99F: 88        .byte $88   ; 
- D 1 - I - 0x0229B0 08:A9A0: E2        .byte $E2   ; 
- D 1 - I - 0x0229B1 08:A9A1: 72        .byte $72   ; 
- D 1 - I - 0x0229B2 08:A9A2: 71        .byte $71   ; 
- D 1 - I - 0x0229B3 08:A9A3: 92        .byte $92   ; 
- D 1 - I - 0x0229B4 08:A9A4: 71        .byte $71   ; 
- D 1 - I - 0x0229B5 08:A9A5: 91        .byte $91   ; 
- D 1 - I - 0x0229B6 08:A9A6: B1        .byte $B1   ; 
- D 1 - I - 0x0229B7 08:A9A7: E3        .byte $E3   ; 
- D 1 - I - 0x0229B8 08:A9A8: 21        .byte $21   ; 
- D 1 - I - 0x0229B9 08:A9A9: FF        .byte $FF   ; 
off_FD_A9AA:
- D 1 - I - 0x0229BA 08:A9AA: E1        .byte $E1   ; 
- D 1 - I - 0x0229BB 08:A9AB: 41        .byte $41   ; 
- D 1 - I - 0x0229BC 08:A9AC: 41        .byte $41   ; 
- D 1 - I - 0x0229BD 08:A9AD: E2        .byte $E2   ; 
- D 1 - I - 0x0229BE 08:A9AE: 41        .byte $41   ; 
- D 1 - I - 0x0229BF 08:A9AF: E1        .byte $E1   ; 
- D 1 - I - 0x0229C0 08:A9B0: 41        .byte $41   ; 
- D 1 - I - 0x0229C1 08:A9B1: 41        .byte $41   ; 
- D 1 - I - 0x0229C2 08:A9B2: 41        .byte $41   ; 
- D 1 - I - 0x0229C3 08:A9B3: E2        .byte $E2   ; 
- D 1 - I - 0x0229C4 08:A9B4: 41        .byte $41   ; 
- D 1 - I - 0x0229C5 08:A9B5: FF        .byte $FF   ; 
off_FD_A9B6:
- D 1 - I - 0x0229C6 08:A9B6: EB        .byte $EB   ; 
- D 1 - I - 0x0229C7 08:A9B7: 54        .byte $54   ; 
- D 1 - I - 0x0229C8 08:A9B8: 03        .byte $03   ; 
- D 1 - I - 0x0229C9 08:A9B9: E1        .byte $E1   ; 
- D 1 - I - 0x0229CA 08:A9BA: 72        .byte $72   ; 
- D 1 - I - 0x0229CB 08:A9BB: EB        .byte $EB   ; 
- D 1 - I - 0x0229CC 08:A9BC: 00        .byte $00   ; 
- D 1 - I - 0x0229CD 08:A9BD: 71        .byte $71   ; 
- D 1 - I - 0x0229CE 08:A9BE: 92        .byte $92   ; 
- D 1 - I - 0x0229CF 08:A9BF: 71        .byte $71   ; 
- D 1 - I - 0x0229D0 08:A9C0: 91        .byte $91   ; 
- D 1 - I - 0x0229D1 08:A9C1: B1        .byte $B1   ; 
- D 1 - I - 0x0229D2 08:A9C2: E2        .byte $E2   ; 
- D 1 - I - 0x0229D3 08:A9C3: 21        .byte $21   ; 
- D 1 - I - 0x0229D4 08:A9C4: FF        .byte $FF   ; 



_off001_A9C5_11:
- D 1 - I - 0x0229D5 08:A9C5: FD        .byte $FD   ; 
- D 1 - I - 0x0229D6 08:A9C6: 4C AA     .word off_FD_AA4C
- D 1 - I - 0x0229D8 08:A9C8: E8        .byte $E8   ; 
- D 1 - I - 0x0229D9 08:A9C9: 04        .byte $04   ; 
- D 1 - I - 0x0229DA 08:A9CA: E2        .byte $E2   ; 
- D 1 - I - 0x0229DB 08:A9CB: DE        .byte $DE   ; 
- D 1 - I - 0x0229DC 08:A9CC: 25        .byte $25   ; 
- D 1 - I - 0x0229DD 08:A9CD: 75        .byte $75   ; 
- D 1 - I - 0x0229DE 08:A9CE: 7A        .byte $7A   ; 
- D 1 - I - 0x0229DF 08:A9CF: 7A        .byte $7A   ; 
- D 1 - I - 0x0229E0 08:A9D0: DE        .byte $DE   ; 
- D 1 - I - 0x0229E1 08:A9D1: E3        .byte $E3   ; 
- D 1 - I - 0x0229E2 08:A9D2: 01        .byte $01   ; 
- D 1 - I - 0x0229E3 08:A9D3: EB        .byte $EB   ; 
- D 1 - I - 0x0229E4 08:A9D4: 00        .byte $00   ; 
- D 1 - I - 0x0229E5 08:A9D5: 52        .byte $52   ; 
- D 1 - I - 0x0229E6 08:A9D6: 71        .byte $71   ; 
- D 1 - I - 0x0229E7 08:A9D7: F3        .byte $F3   ; 
- D 1 - I - 0x0229E8 08:A9D8: 71        .byte $71   ; 
- D 1 - I - 0x0229E9 08:A9D9: F4        .byte $F4   ; 
- D 1 - I - 0x0229EA 08:A9DA: 71        .byte $71   ; 
- D 1 - I - 0x0229EB 08:A9DB: F5        .byte $F5   ; 
- D 1 - I - 0x0229EC 08:A9DC: 71        .byte $71   ; 
- D 1 - I - 0x0229ED 08:A9DD: F6        .byte $F6   ; 
- D 1 - I - 0x0229EE 08:A9DE: 71        .byte $71   ; 
- D 1 - I - 0x0229EF 08:A9DF: F7        .byte $F7   ; 
- D 1 - I - 0x0229F0 08:A9E0: 71        .byte $71   ; 
- D 1 - I - 0x0229F1 08:A9E1: F8        .byte $F8   ; 
- D 1 - I - 0x0229F2 08:A9E2: 71        .byte $71   ; 
- D 1 - I - 0x0229F3 08:A9E3: FF        .byte $FF   ; 



_off001_A9E4_10:
- D 1 - I - 0x0229F4 08:A9E4: EE        .byte $EE   ; 
- D 1 - I - 0x0229F5 08:A9E5: 85        .byte $85   ; 
- D 1 - I - 0x0229F6 08:A9E6: FD        .byte $FD   ; 
- D 1 - I - 0x0229F7 08:A9E7: 4C AA     .word off_FD_AA4C
- D 1 - I - 0x0229F9 08:A9E9: E8        .byte $E8   ; 
- D 1 - I - 0x0229FA 08:A9EA: 01        .byte $01   ; 
- D 1 - I - 0x0229FB 08:A9EB: C2        .byte $C2   ; 
- D 1 - I - 0x0229FC 08:A9EC: EE        .byte $EE   ; 
- D 1 - I - 0x0229FD 08:A9ED: 00        .byte $00   ; 
- D 1 - I - 0x0229FE 08:A9EE: E8        .byte $E8   ; 
- D 1 - I - 0x0229FF 08:A9EF: 04        .byte $04   ; 
- D 1 - I - 0x022A00 08:A9F0: E2        .byte $E2   ; 
- D 1 - I - 0x022A01 08:A9F1: F1        .byte $F1   ; 
- D 1 - I - 0x022A02 08:A9F2: DE        .byte $DE   ; 
- D 1 - I - 0x022A03 08:A9F3: 25        .byte $25   ; 
- D 1 - I - 0x022A04 08:A9F4: 75        .byte $75   ; 
- D 1 - I - 0x022A05 08:A9F5: 7A        .byte $7A   ; 
- D 1 - I - 0x022A06 08:A9F6: 7A        .byte $7A   ; 
- D 1 - I - 0x022A07 08:A9F7: DE        .byte $DE   ; 
- D 1 - I - 0x022A08 08:A9F8: E8        .byte $E8   ; 
- D 1 - I - 0x022A09 08:A9F9: 01        .byte $01   ; 
- D 1 - I - 0x022A0A 08:A9FA: E3        .byte $E3   ; 
- D 1 - I - 0x022A0B 08:A9FB: 02        .byte $02   ; 
- D 1 - I - 0x022A0C 08:A9FC: E9        .byte $E9   ; 
- D 1 - I - 0x022A0D 08:A9FD: 31        .byte $31   ; 
- D 1 - I - 0x022A0E 08:A9FE: E4        .byte $E4   ; 
- D 1 - I - 0x022A0F 08:A9FF: E8        .byte $E8   ; 
- D 1 - I - 0x022A10 08:AA00: 04        .byte $04   ; 
- D 1 - I - 0x022A11 08:AA01: EB        .byte $EB   ; 
- D 1 - I - 0x022A12 08:AA02: 00        .byte $00   ; 
- D 1 - I - 0x022A13 08:AA03: 02        .byte $02   ; 
- D 1 - I - 0x022A14 08:AA04: 21        .byte $21   ; 
- D 1 - I - 0x022A15 08:AA05: F3        .byte $F3   ; 
- D 1 - I - 0x022A16 08:AA06: 21        .byte $21   ; 
- D 1 - I - 0x022A17 08:AA07: F4        .byte $F4   ; 
- D 1 - I - 0x022A18 08:AA08: 21        .byte $21   ; 
- D 1 - I - 0x022A19 08:AA09: F5        .byte $F5   ; 
- D 1 - I - 0x022A1A 08:AA0A: 21        .byte $21   ; 
- D 1 - I - 0x022A1B 08:AA0B: F6        .byte $F6   ; 
- D 1 - I - 0x022A1C 08:AA0C: 21        .byte $21   ; 
- D 1 - I - 0x022A1D 08:AA0D: F7        .byte $F7   ; 
- D 1 - I - 0x022A1E 08:AA0E: 21        .byte $21   ; 
- D 1 - I - 0x022A1F 08:AA0F: F8        .byte $F8   ; 
- D 1 - I - 0x022A20 08:AA10: 21        .byte $21   ; 
- D 1 - I - 0x022A21 08:AA11: FF        .byte $FF   ; 



_off001_AA12_12:
- D 1 - I - 0x022A22 08:AA12: D6        .byte $D6   ; 
- D 1 - I - 0x022A23 08:AA13: 07        .byte $07   ; 
- D 1 - I - 0x022A24 08:AA14: E1        .byte $E1   ; 
- D 1 - I - 0x022A25 08:AA15: 72        .byte $72   ; 
- D 1 - I - 0x022A26 08:AA16: 72        .byte $72   ; 
- D 1 - I - 0x022A27 08:AA17: A2        .byte $A2   ; 
- D 1 - I - 0x022A28 08:AA18: 72        .byte $72   ; 
- D 1 - I - 0x022A29 08:AA19: D4        .byte $D4   ; 
- D 1 - I - 0x022A2A 08:AA1A: 02        .byte $02   ; 
- D 1 - I - 0x022A2B 08:AA1B: E2        .byte $E2   ; 
- D 1 - I - 0x022A2C 08:AA1C: 05        .byte $05   ; 
- D 1 - I - 0x022A2D 08:AA1D: E1        .byte $E1   ; 
- D 1 - I - 0x022A2E 08:AA1E: A1        .byte $A1   ; 
- D 1 - I - 0x022A2F 08:AA1F: D6        .byte $D6   ; 
- D 1 - I - 0x022A30 08:AA20: 06        .byte $06   ; 
- D 1 - I - 0x022A31 08:AA21: C2        .byte $C2   ; 
- D 1 - I - 0x022A32 08:AA22: 74        .byte $74   ; 
- D 1 - I - 0x022A33 08:AA23: 52        .byte $52   ; 
- D 1 - I - 0x022A34 08:AA24: 74        .byte $74   ; 
- D 1 - I - 0x022A35 08:AA25: D4        .byte $D4   ; 
- D 1 - I - 0x022A36 08:AA26: 07        .byte $07   ; 
- D 1 - I - 0x022A37 08:AA27: 72        .byte $72   ; 
- D 1 - I - 0x022A38 08:AA28: 71        .byte $71   ; 
- D 1 - I - 0x022A39 08:AA29: D6        .byte $D6   ; 
- D 1 - I - 0x022A3A 08:AA2A: 03        .byte $03   ; 
- D 1 - I - 0x022A3B 08:AA2B: 72        .byte $72   ; 
- D 1 - I - 0x022A3C 08:AA2C: 72        .byte $72   ; 
- D 1 - I - 0x022A3D 08:AA2D: E2        .byte $E2   ; 
- D 1 - I - 0x022A3E 08:AA2E: D2        .byte $D2   ; 
- D 1 - I - 0x022A3F 08:AA2F: 03        .byte $03   ; 
- D 1 - I - 0x022A40 08:AA30: 54        .byte $54   ; 
- D 1 - I - 0x022A41 08:AA31: 72        .byte $72   ; 
- D 1 - I - 0x022A42 08:AA32: FF        .byte $FF   ; 



_off001_AA33_13:
- D 1 - I - 0x022A43 08:AA33: EF        .byte $EF   ; 
- D 1 - I - 0x022A44 08:AA34: 05        .byte $05   ; 
- D 1 - I - 0x022A45 08:AA35: D4        .byte $D4   ; 
- D 1 - I - 0x022A46 08:AA36: B3        .byte $B3   ; 
- D 1 - I - 0x022A47 08:AA37: B3        .byte $B3   ; 
- D 1 - I - 0x022A48 08:AA38: 45        .byte $45   ; 
- D 1 - I - 0x022A49 08:AA39: B1        .byte $B1   ; 
- D 1 - I - 0x022A4A 08:AA3A: B2        .byte $B2   ; 
- D 1 - I - 0x022A4B 08:AA3B: B1        .byte $B1   ; 
- D 1 - I - 0x022A4C 08:AA3C: B3        .byte $B3   ; 
- D 1 - I - 0x022A4D 08:AA3D: 45        .byte $45   ; 
- D 1 - I - 0x022A4E 08:AA3E: B1        .byte $B1   ; 
- D 1 - I - 0x022A4F 08:AA3F: B3        .byte $B3   ; 
- D 1 - I - 0x022A50 08:AA40: B3        .byte $B3   ; 
- D 1 - I - 0x022A51 08:AA41: 45        .byte $45   ; 
- D 1 - I - 0x022A52 08:AA42: DE        .byte $DE   ; 
- D 1 - I - 0x022A53 08:AA43: B9        .byte $B9   ; 
- D 1 - I - 0x022A54 08:AA44: 99        .byte $99   ; 
- D 1 - I - 0x022A55 08:AA45: 88        .byte $88   ; 
- D 1 - I - 0x022A56 08:AA46: 87        .byte $87   ; 
- D 1 - I - 0x022A57 08:AA47: 77        .byte $77   ; 
- D 1 - I - 0x022A58 08:AA48: DE        .byte $DE   ; 
- D 1 - I - 0x022A59 08:AA49: B2        .byte $B2   ; 
- D 1 - I - 0x022A5A 08:AA4A: B1        .byte $B1   ; 
- D 1 - I - 0x022A5B 08:AA4B: FF        .byte $FF   ; 
off_FD_AA4C:
- D 1 - I - 0x022A5C 08:AA4C: EB        .byte $EB   ; 
- D 1 - I - 0x022A5D 08:AA4D: 50        .byte $50   ; 
- D 1 - I - 0x022A5E 08:AA4E: 02        .byte $02   ; 
- D 1 - I - 0x022A5F 08:AA4F: D6        .byte $D6   ; 
- D 1 - I - 0x022A60 08:AA50: 78        .byte $78   ; 
- D 1 - I - 0x022A61 08:AA51: 86        .byte $86   ; 
- D 1 - I - 0x022A62 08:AA52: 3A        .byte $3A   ; 
- D 1 - I - 0x022A63 08:AA53: E1        .byte $E1   ; 
- D 1 - I - 0x022A64 08:AA54: 72        .byte $72   ; 
- D 1 - I - 0x022A65 08:AA55: 72        .byte $72   ; 
- D 1 - I - 0x022A66 08:AA56: A2        .byte $A2   ; 
- D 1 - I - 0x022A67 08:AA57: 72        .byte $72   ; 
- D 1 - I - 0x022A68 08:AA58: D4        .byte $D4   ; 
- D 1 - I - 0x022A69 08:AA59: 78        .byte $78   ; 
- D 1 - I - 0x022A6A 08:AA5A: 83        .byte $83   ; 
- D 1 - I - 0x022A6B 08:AA5B: 87        .byte $87   ; 
- D 1 - I - 0x022A6C 08:AA5C: EB        .byte $EB   ; 
- D 1 - I - 0x022A6D 08:AA5D: 54        .byte $54   ; 
- D 1 - I - 0x022A6E 08:AA5E: 03        .byte $03   ; 
- D 1 - I - 0x022A6F 08:AA5F: E2        .byte $E2   ; 
- D 1 - I - 0x022A70 08:AA60: 05        .byte $05   ; 
- D 1 - I - 0x022A71 08:AA61: EB        .byte $EB   ; 
- D 1 - I - 0x022A72 08:AA62: 50        .byte $50   ; 
- D 1 - I - 0x022A73 08:AA63: 02        .byte $02   ; 
- D 1 - I - 0x022A74 08:AA64: E1        .byte $E1   ; 
- D 1 - I - 0x022A75 08:AA65: A1        .byte $A1   ; 
- D 1 - I - 0x022A76 08:AA66: E8        .byte $E8   ; 
- D 1 - I - 0x022A77 08:AA67: 06        .byte $06   ; 
- D 1 - I - 0x022A78 08:AA68: F3        .byte $F3   ; 
- D 1 - I - 0x022A79 08:AA69: A2        .byte $A2   ; 
- D 1 - I - 0x022A7A 08:AA6A: E7        .byte $E7   ; 
- D 1 - I - 0x022A7B 08:AA6B: 88        .byte $88   ; 
- D 1 - I - 0x022A7C 08:AA6C: F0        .byte $F0   ; 
- D 1 - I - 0x022A7D 08:AA6D: 74        .byte $74   ; 
- D 1 - I - 0x022A7E 08:AA6E: D6        .byte $D6   ; 
- D 1 - I - 0x022A7F 08:AA6F: 78        .byte $78   ; 
- D 1 - I - 0x022A80 08:AA70: 84        .byte $84   ; 
- D 1 - I - 0x022A81 08:AA71: 3A        .byte $3A   ; 
- D 1 - I - 0x022A82 08:AA72: 52        .byte $52   ; 
- D 1 - I - 0x022A83 08:AA73: E7        .byte $E7   ; 
- D 1 - I - 0x022A84 08:AA74: 43        .byte $43   ; 
- D 1 - I - 0x022A85 08:AA75: EB        .byte $EB   ; 
- D 1 - I - 0x022A86 08:AA76: 58        .byte $58   ; 
- D 1 - I - 0x022A87 08:AA77: 22        .byte $22   ; 
- D 1 - I - 0x022A88 08:AA78: 74        .byte $74   ; 
- D 1 - I - 0x022A89 08:AA79: EB        .byte $EB   ; 
- D 1 - I - 0x022A8A 08:AA7A: 00        .byte $00   ; 
- D 1 - I - 0x022A8B 08:AA7B: FF        .byte $FF   ; 



_off001_AA7C_15:
- D 1 - I - 0x022A8C 08:AA7C: D4        .byte $D4   ; 
- D 1 - I - 0x022A8D 08:AA7D: 36        .byte $36   ; 
- D 1 - I - 0x022A8E 08:AA7E: 83        .byte $83   ; 
- D 1 - I - 0x022A8F 08:AA7F: 87        .byte $87   ; 
- D 1 - I - 0x022A90 08:AA80: FB        .byte $FB   ; 
- D 1 - I - 0x022A91 08:AA81: FD        .byte $FD   ; 
- D 1 - I - 0x022A92 08:AA82: 24 98     .word off_FD_9824
- D 1 - I - 0x022A94 08:AA84: FE        .byte $FE   ; 
- D 1 - I - 0x022A95 08:AA85: 04        .byte $04   ; 
- D 1 - I - 0x022A96 08:AA86: EE        .byte $EE   ; 
- D 1 - I - 0x022A97 08:AA87: 01        .byte $01   ; 
- D 1 - I - 0x022A98 08:AA88: FB        .byte $FB   ; 
- D 1 - I - 0x022A99 08:AA89: FD        .byte $FD   ; 
- D 1 - I - 0x022A9A 08:AA8A: 24 98     .word off_FD_9824
- D 1 - I - 0x022A9C 08:AA8C: FE        .byte $FE   ; 
- D 1 - I - 0x022A9D 08:AA8D: 04        .byte $04   ; 
- D 1 - I - 0x022A9E 08:AA8E: EE        .byte $EE   ; 
- D 1 - I - 0x022A9F 08:AA8F: 02        .byte $02   ; 
- D 1 - I - 0x022AA0 08:AA90: FB        .byte $FB   ; 
- D 1 - I - 0x022AA1 08:AA91: FD        .byte $FD   ; 
- D 1 - I - 0x022AA2 08:AA92: 24 98     .word off_FD_9824
- D 1 - I - 0x022AA4 08:AA94: FE        .byte $FE   ; 
- D 1 - I - 0x022AA5 08:AA95: 04        .byte $04   ; 
- D 1 - I - 0x022AA6 08:AA96: EE        .byte $EE   ; 
- D 1 - I - 0x022AA7 08:AA97: 03        .byte $03   ; 
- D 1 - I - 0x022AA8 08:AA98: FB        .byte $FB   ; 
- D 1 - I - 0x022AA9 08:AA99: FD        .byte $FD   ; 
- D 1 - I - 0x022AAA 08:AA9A: 24 98     .word off_FD_9824
- D 1 - I - 0x022AAC 08:AA9C: FE        .byte $FE   ; 
- D 1 - I - 0x022AAD 08:AA9D: 08        .byte $08   ; 
- - - - - - 0x022AAE 08:AA9E: FF        .byte $FF   ; 



_off001_AA9F_14:
- D 1 - I - 0x022AAF 08:AA9F: FD        .byte $FD   ; 
- D 1 - I - 0x022AB0 08:AAA0: F5 AA     .word off_FD_AAF5
- D 1 - I - 0x022AB2 08:AAA2: EE        .byte $EE   ; 
- D 1 - I - 0x022AB3 08:AAA3: 01        .byte $01   ; 
- D 1 - I - 0x022AB4 08:AAA4: FD        .byte $FD   ; 
- D 1 - I - 0x022AB5 08:AAA5: F5 AA     .word off_FD_AAF5
- D 1 - I - 0x022AB7 08:AAA7: EE        .byte $EE   ; 
- D 1 - I - 0x022AB8 08:AAA8: 02        .byte $02   ; 
- D 1 - I - 0x022AB9 08:AAA9: FD        .byte $FD   ; 
- D 1 - I - 0x022ABA 08:AAAA: F5 AA     .word off_FD_AAF5
- D 1 - I - 0x022ABC 08:AAAC: EE        .byte $EE   ; 
- D 1 - I - 0x022ABD 08:AAAD: 03        .byte $03   ; 
- D 1 - I - 0x022ABE 08:AAAE: FD        .byte $FD   ; 
- D 1 - I - 0x022ABF 08:AAAF: F5 AA     .word off_FD_AAF5
- D 1 - I - 0x022AC1 08:AAB1: FE        .byte $FE   ; 
- D 1 - I - 0x022AC2 08:AAB2: FF        .byte $FF   ; 
- D 1 - I - 0x022AC3 08:AAB3: F5 AA     .word off_FF_AAF5



_off001_AAB5_16:
- D 1 - I - 0x022AC5 08:AAB5: D4        .byte $D4   ; 
- D 1 - I - 0x022AC6 08:AAB6: 04        .byte $04   ; 
- D 1 - I - 0x022AC7 08:AAB7: E1        .byte $E1   ; 
- D 1 - I - 0x022AC8 08:AAB8: FD        .byte $FD   ; 
- D 1 - I - 0x022AC9 08:AAB9: 2E AB     .word off_FD_AB2E
- D 1 - I - 0x022ACB 08:AABB: FD        .byte $FD   ; 
- D 1 - I - 0x022ACC 08:AABC: 2E AB     .word off_FD_AB2E
- D 1 - I - 0x022ACE 08:AABE: EE        .byte $EE   ; 
- D 1 - I - 0x022ACF 08:AABF: 01        .byte $01   ; 
- D 1 - I - 0x022AD0 08:AAC0: FD        .byte $FD   ; 
- D 1 - I - 0x022AD1 08:AAC1: 2E AB     .word off_FD_AB2E
- D 1 - I - 0x022AD3 08:AAC3: FD        .byte $FD   ; 
- D 1 - I - 0x022AD4 08:AAC4: 2E AB     .word off_FD_AB2E
- D 1 - I - 0x022AD6 08:AAC6: EE        .byte $EE   ; 
- D 1 - I - 0x022AD7 08:AAC7: 02        .byte $02   ; 
- D 1 - I - 0x022AD8 08:AAC8: FD        .byte $FD   ; 
- D 1 - I - 0x022AD9 08:AAC9: 2E AB     .word off_FD_AB2E
- D 1 - I - 0x022ADB 08:AACB: FD        .byte $FD   ; 
- D 1 - I - 0x022ADC 08:AACC: 2E AB     .word off_FD_AB2E
- D 1 - I - 0x022ADE 08:AACE: EE        .byte $EE   ; 
- D 1 - I - 0x022ADF 08:AACF: 03        .byte $03   ; 
- D 1 - I - 0x022AE0 08:AAD0: FD        .byte $FD   ; 
- D 1 - I - 0x022AE1 08:AAD1: 2E AB     .word off_FD_AB2E
- D 1 - I - 0x022AE3 08:AAD3: FD        .byte $FD   ; 
- D 1 - I - 0x022AE4 08:AAD4: 2E AB     .word off_FD_AB2E
- D 1 - I - 0x022AE6 08:AAD6: FD        .byte $FD   ; 
- D 1 - I - 0x022AE7 08:AAD7: 2E AB     .word off_FD_AB2E
- D 1 - I - 0x022AE9 08:AAD9: FE        .byte $FE   ; 
- D 1 - I - 0x022AEA 08:AADA: FF        .byte $FF   ; 
- D 1 - I - 0x022AEB 08:AADB: 2E AB     .word off_FF_AB2E



_off001_AADD_17:
- D 1 - I - 0x022AED 08:AADD: EF        .byte $EF   ; 
- D 1 - I - 0x022AEE 08:AADE: 03        .byte $03   ; 
- D 1 - I - 0x022AEF 08:AADF: FD        .byte $FD   ; 
- D 1 - I - 0x022AF0 08:AAE0: 41 AB     .word off_FD_AB41
- D 1 - I - 0x022AF2 08:AAE2: EF        .byte $EF   ; 
- D 1 - I - 0x022AF3 08:AAE3: 04        .byte $04   ; 
- D 1 - I - 0x022AF4 08:AAE4: FD        .byte $FD   ; 
- D 1 - I - 0x022AF5 08:AAE5: 41 AB     .word off_FD_AB41
- D 1 - I - 0x022AF7 08:AAE7: EF        .byte $EF   ; 
- D 1 - I - 0x022AF8 08:AAE8: 05        .byte $05   ; 
- D 1 - I - 0x022AF9 08:AAE9: FD        .byte $FD   ; 
- D 1 - I - 0x022AFA 08:AAEA: 41 AB     .word off_FD_AB41
- D 1 - I - 0x022AFC 08:AAEC: EF        .byte $EF   ; 
- D 1 - I - 0x022AFD 08:AAED: 06        .byte $06   ; 
- D 1 - I - 0x022AFE 08:AAEE: FD        .byte $FD   ; 
- D 1 - I - 0x022AFF 08:AAEF: 41 AB     .word off_FD_AB41
- D 1 - I - 0x022B01 08:AAF1: FE        .byte $FE   ; 
- D 1 - I - 0x022B02 08:AAF2: FF        .byte $FF   ; 
- D 1 - I - 0x022B03 08:AAF3: 41 AB     .word off_FF_AB41
off_FD_AAF5:
off_FF_AAF5:
- D 1 - I - 0x022B05 08:AAF5: E9        .byte $E9   ; 
- D 1 - I - 0x022B06 08:AAF6: B1        .byte $B1   ; 
- D 1 - I - 0x022B07 08:AAF7: D4        .byte $D4   ; 
- D 1 - I - 0x022B08 08:AAF8: 34        .byte $34   ; 
- D 1 - I - 0x022B09 08:AAF9: 82        .byte $82   ; 
- D 1 - I - 0x022B0A 08:AAFA: 3A        .byte $3A   ; 
- D 1 - I - 0x022B0B 08:AAFB: FB        .byte $FB   ; 
- D 1 - I - 0x022B0C 08:AAFC: E2        .byte $E2   ; 
- D 1 - I - 0x022B0D 08:AAFD: 31        .byte $31   ; 
- D 1 - I - 0x022B0E 08:AAFE: 31        .byte $31   ; 
- D 1 - I - 0x022B0F 08:AAFF: A1        .byte $A1   ; 
- D 1 - I - 0x022B10 08:AB00: FE        .byte $FE   ; 
- D 1 - I - 0x022B11 08:AB01: 05        .byte $05   ; 
- D 1 - I - 0x022B12 08:AB02: 31        .byte $31   ; 
- D 1 - I - 0x022B13 08:AB03: 31        .byte $31   ; 
- D 1 - I - 0x022B14 08:AB04: 31        .byte $31   ; 
- D 1 - I - 0x022B15 08:AB05: E3        .byte $E3   ; 
- D 1 - I - 0x022B16 08:AB06: 01        .byte $01   ; 
- D 1 - I - 0x022B17 08:AB07: E2        .byte $E2   ; 
- D 1 - I - 0x022B18 08:AB08: 21        .byte $21   ; 
- D 1 - I - 0x022B19 08:AB09: 31        .byte $31   ; 
- D 1 - I - 0x022B1A 08:AB0A: FB        .byte $FB   ; 
- D 1 - I - 0x022B1B 08:AB0B: E3        .byte $E3   ; 
- D 1 - I - 0x022B1C 08:AB0C: 01        .byte $01   ; 
- D 1 - I - 0x022B1D 08:AB0D: E2        .byte $E2   ; 
- D 1 - I - 0x022B1E 08:AB0E: 31        .byte $31   ; 
- D 1 - I - 0x022B1F 08:AB0F: 31        .byte $31   ; 
- D 1 - I - 0x022B20 08:AB10: FE        .byte $FE   ; 
- D 1 - I - 0x022B21 08:AB11: 04        .byte $04   ; 
- D 1 - I - 0x022B22 08:AB12: 31        .byte $31   ; 
- D 1 - I - 0x022B23 08:AB13: E3        .byte $E3   ; 
- D 1 - I - 0x022B24 08:AB14: 11        .byte $11   ; 
- D 1 - I - 0x022B25 08:AB15: FB        .byte $FB   ; 
- D 1 - I - 0x022B26 08:AB16: E2        .byte $E2   ; 
- D 1 - I - 0x022B27 08:AB17: 31        .byte $31   ; 
- D 1 - I - 0x022B28 08:AB18: 31        .byte $31   ; 
- D 1 - I - 0x022B29 08:AB19: E3        .byte $E3   ; 
- D 1 - I - 0x022B2A 08:AB1A: 11        .byte $11   ; 
- D 1 - I - 0x022B2B 08:AB1B: FE        .byte $FE   ; 
- D 1 - I - 0x022B2C 08:AB1C: 04        .byte $04   ; 
- D 1 - I - 0x022B2D 08:AB1D: E2        .byte $E2   ; 
- D 1 - I - 0x022B2E 08:AB1E: 31        .byte $31   ; 
- D 1 - I - 0x022B2F 08:AB1F: 31        .byte $31   ; 
- D 1 - I - 0x022B30 08:AB20: 31        .byte $31   ; 
- D 1 - I - 0x022B31 08:AB21: FB        .byte $FB   ; 
- D 1 - I - 0x022B32 08:AB22: E3        .byte $E3   ; 
- D 1 - I - 0x022B33 08:AB23: 01        .byte $01   ; 
- D 1 - I - 0x022B34 08:AB24: E2        .byte $E2   ; 
- D 1 - I - 0x022B35 08:AB25: 31        .byte $31   ; 
- D 1 - I - 0x022B36 08:AB26: 31        .byte $31   ; 
- D 1 - I - 0x022B37 08:AB27: FE        .byte $FE   ; 
- D 1 - I - 0x022B38 08:AB28: 04        .byte $04   ; 
- D 1 - I - 0x022B39 08:AB29: E3        .byte $E3   ; 
- D 1 - I - 0x022B3A 08:AB2A: 01        .byte $01   ; 
- D 1 - I - 0x022B3B 08:AB2B: E2        .byte $E2   ; 
- D 1 - I - 0x022B3C 08:AB2C: 31        .byte $31   ; 
- D 1 - I - 0x022B3D 08:AB2D: FF        .byte $FF   ; 
off_FD_AB2E:
off_FF_AB2E:
- D 1 - I - 0x022B3E 08:AB2E: FB        .byte $FB   ; 
- D 1 - I - 0x022B3F 08:AB2F: 31        .byte $31   ; 
- D 1 - I - 0x022B40 08:AB30: 32        .byte $32   ; 
- D 1 - I - 0x022B41 08:AB31: 31        .byte $31   ; 
- D 1 - I - 0x022B42 08:AB32: EB        .byte $EB   ; 
- D 1 - I - 0x022B43 08:AB33: 54        .byte $54   ; 
- D 1 - I - 0x022B44 08:AB34: 03        .byte $03   ; 
- D 1 - I - 0x022B45 08:AB35: 62        .byte $62   ; 
- D 1 - I - 0x022B46 08:AB36: EB        .byte $EB   ; 
- D 1 - I - 0x022B47 08:AB37: 00        .byte $00   ; 
- D 1 - I - 0x022B48 08:AB38: 31        .byte $31   ; 
- D 1 - I - 0x022B49 08:AB39: 62        .byte $62   ; 
- D 1 - I - 0x022B4A 08:AB3A: 61        .byte $61   ; 
- D 1 - I - 0x022B4B 08:AB3B: 32        .byte $32   ; 
- D 1 - I - 0x022B4C 08:AB3C: 82        .byte $82   ; 
- D 1 - I - 0x022B4D 08:AB3D: 12        .byte $12   ; 
- D 1 - I - 0x022B4E 08:AB3E: FE        .byte $FE   ; 
- D 1 - I - 0x022B4F 08:AB3F: 02        .byte $02   ; 
- D 1 - I - 0x022B50 08:AB40: FF        .byte $FF   ; 
off_FD_AB41:
off_FF_AB41:
- D 1 - I - 0x022B51 08:AB41: FB        .byte $FB   ; 
- D 1 - I - 0x022B52 08:AB42: D4        .byte $D4   ; 
- D 1 - I - 0x022B53 08:AB43: B4        .byte $B4   ; 
- D 1 - I - 0x022B54 08:AB44: A3        .byte $A3   ; 
- D 1 - I - 0x022B55 08:AB45: A1        .byte $A1   ; 
- D 1 - I - 0x022B56 08:AB46: B1        .byte $B1   ; 
- D 1 - I - 0x022B57 08:AB47: A3        .byte $A3   ; 
- D 1 - I - 0x022B58 08:AB48: A2        .byte $A2   ; 
- D 1 - I - 0x022B59 08:AB49: B2        .byte $B2   ; 
- D 1 - I - 0x022B5A 08:AB4A: FE        .byte $FE   ; 
- D 1 - I - 0x022B5B 08:AB4B: 04        .byte $04   ; 
- D 1 - I - 0x022B5C 08:AB4C: FF        .byte $FF   ; 



_off001_AB4D_19:
- D 1 - I - 0x022B5D 08:AB4D: D4        .byte $D4   ; 
- D 1 - I - 0x022B5E 08:AB4E: 36        .byte $36   ; 
- D 1 - I - 0x022B5F 08:AB4F: 83        .byte $83   ; 
- D 1 - I - 0x022B60 08:AB50: 83        .byte $83   ; 
- D 1 - I - 0x022B61 08:AB51: EE        .byte $EE   ; 
- D 1 - I - 0x022B62 08:AB52: 0C        .byte $0C   ; 
- D 1 - I - 0x022B63 08:AB53: FB        .byte $FB   ; 
- D 1 - I - 0x022B64 08:AB54: FD        .byte $FD   ; 
- D 1 - I - 0x022B65 08:AB55: 1D 9E     .word off_FD_9E1D
- D 1 - I - 0x022B67 08:AB57: 41        .byte $41   ; 
- D 1 - I - 0x022B68 08:AB58: 71        .byte $71   ; 
- D 1 - I - 0x022B69 08:AB59: 81        .byte $81   ; 
- D 1 - I - 0x022B6A 08:AB5A: FD        .byte $FD   ; 
- D 1 - I - 0x022B6B 08:AB5B: 1D 9E     .word off_FD_9E1D
- D 1 - I - 0x022B6D 08:AB5D: E2        .byte $E2   ; 
- D 1 - I - 0x022B6E 08:AB5E: 91        .byte $91   ; 
- D 1 - I - 0x022B6F 08:AB5F: F3        .byte $F3   ; 
- D 1 - I - 0x022B70 08:AB60: 91        .byte $91   ; 
- D 1 - I - 0x022B71 08:AB61: F0        .byte $F0   ; 
- D 1 - I - 0x022B72 08:AB62: 91        .byte $91   ; 
- D 1 - I - 0x022B73 08:AB63: FD        .byte $FD   ; 
- D 1 - I - 0x022B74 08:AB64: 1D 9E     .word off_FD_9E1D
- D 1 - I - 0x022B76 08:AB66: 41        .byte $41   ; 
- D 1 - I - 0x022B77 08:AB67: 71        .byte $71   ; 
- D 1 - I - 0x022B78 08:AB68: 81        .byte $81   ; 
- D 1 - I - 0x022B79 08:AB69: FD        .byte $FD   ; 
- D 1 - I - 0x022B7A 08:AB6A: 1D 9E     .word off_FD_9E1D
- D 1 - I - 0x022B7C 08:AB6C: E2        .byte $E2   ; 
- D 1 - I - 0x022B7D 08:AB6D: 91        .byte $91   ; 
- D 1 - I - 0x022B7E 08:AB6E: F3        .byte $F3   ; 
- D 1 - I - 0x022B7F 08:AB6F: 91        .byte $91   ; 
- D 1 - I - 0x022B80 08:AB70: F0        .byte $F0   ; 
- D 1 - I - 0x022B81 08:AB71: A1        .byte $A1   ; 
- D 1 - I - 0x022B82 08:AB72: EE        .byte $EE   ; 
- D 1 - I - 0x022B83 08:AB73: 0D        .byte $0D   ; 
- D 1 - I - 0x022B84 08:AB74: FE        .byte $FE   ; 
- D 1 - I - 0x022B85 08:AB75: 02        .byte $02   ; 
- D 1 - I - 0x022B86 08:AB76: EE        .byte $EE   ; 
- D 1 - I - 0x022B87 08:AB77: 0E        .byte $0E   ; 
- D 1 - I - 0x022B88 08:AB78: FD        .byte $FD   ; 
- D 1 - I - 0x022B89 08:AB79: 1D 9E     .word off_FD_9E1D
- D 1 - I - 0x022B8B 08:AB7B: 41        .byte $41   ; 
- D 1 - I - 0x022B8C 08:AB7C: 71        .byte $71   ; 
- D 1 - I - 0x022B8D 08:AB7D: 81        .byte $81   ; 
- D 1 - I - 0x022B8E 08:AB7E: FD        .byte $FD   ; 
- D 1 - I - 0x022B8F 08:AB7F: 1D 9E     .word off_FD_9E1D
- D 1 - I - 0x022B91 08:AB81: E2        .byte $E2   ; 
- D 1 - I - 0x022B92 08:AB82: 91        .byte $91   ; 
- D 1 - I - 0x022B93 08:AB83: F3        .byte $F3   ; 
- D 1 - I - 0x022B94 08:AB84: 91        .byte $91   ; 
- D 1 - I - 0x022B95 08:AB85: F0        .byte $F0   ; 
- D 1 - I - 0x022B96 08:AB86: 91        .byte $91   ; 
- D 1 - I - 0x022B97 08:AB87: FD        .byte $FD   ; 
- D 1 - I - 0x022B98 08:AB88: 1D 9E     .word off_FD_9E1D
- D 1 - I - 0x022B9A 08:AB8A: 41        .byte $41   ; 
- D 1 - I - 0x022B9B 08:AB8B: 71        .byte $71   ; 
- D 1 - I - 0x022B9C 08:AB8C: 81        .byte $81   ; 
- D 1 - I - 0x022B9D 08:AB8D: FD        .byte $FD   ; 
- D 1 - I - 0x022B9E 08:AB8E: 1D 9E     .word off_FD_9E1D
- D 1 - I - 0x022BA0 08:AB90: E2        .byte $E2   ; 
- D 1 - I - 0x022BA1 08:AB91: 91        .byte $91   ; 
- D 1 - I - 0x022BA2 08:AB92: F3        .byte $F3   ; 
- D 1 - I - 0x022BA3 08:AB93: 91        .byte $91   ; 
- D 1 - I - 0x022BA4 08:AB94: F0        .byte $F0   ; 
- D 1 - I - 0x022BA5 08:AB95: A1        .byte $A1   ; 
- D 1 - I - 0x022BA6 08:AB96: EE        .byte $EE   ; 
- D 1 - I - 0x022BA7 08:AB97: 0F        .byte $0F   ; 
- D 1 - I - 0x022BA8 08:AB98: FB        .byte $FB   ; 
- D 1 - I - 0x022BA9 08:AB99: FB        .byte $FB   ; 
- D 1 - I - 0x022BAA 08:AB9A: FD        .byte $FD   ; 
- D 1 - I - 0x022BAB 08:AB9B: 1D 9E     .word off_FD_9E1D
- D 1 - I - 0x022BAD 08:AB9D: 41        .byte $41   ; 
- D 1 - I - 0x022BAE 08:AB9E: 71        .byte $71   ; 
- D 1 - I - 0x022BAF 08:AB9F: 81        .byte $81   ; 
- D 1 - I - 0x022BB0 08:ABA0: FD        .byte $FD   ; 
- D 1 - I - 0x022BB1 08:ABA1: 1D 9E     .word off_FD_9E1D
- D 1 - I - 0x022BB3 08:ABA3: E2        .byte $E2   ; 
- D 1 - I - 0x022BB4 08:ABA4: 91        .byte $91   ; 
- D 1 - I - 0x022BB5 08:ABA5: F3        .byte $F3   ; 
- D 1 - I - 0x022BB6 08:ABA6: 91        .byte $91   ; 
- D 1 - I - 0x022BB7 08:ABA7: F0        .byte $F0   ; 
- D 1 - I - 0x022BB8 08:ABA8: 91        .byte $91   ; 
- D 1 - I - 0x022BB9 08:ABA9: FE        .byte $FE   ; 
- D 1 - I - 0x022BBA 08:ABAA: 04        .byte $04   ; 
- - - - - - 0x022BBB 08:ABAB: FF        .byte $FF   ; 



_off001_ABAC_18:
- D 1 - I - 0x022BBC 08:ABAC: FD        .byte $FD   ; 
- D 1 - I - 0x022BBD 08:ABAD: 3D AC     .word off_FD_AC3D
- D 1 - I - 0x022BBF 08:ABAF: FD        .byte $FD   ; 
- D 1 - I - 0x022BC0 08:ABB0: 4A AC     .word off_FD_AC4A
- D 1 - I - 0x022BC2 08:ABB2: FD        .byte $FD   ; 
- D 1 - I - 0x022BC3 08:ABB3: 78 AC     .word off_FD_AC78
- D 1 - I - 0x022BC5 08:ABB5: FD        .byte $FD   ; 
- D 1 - I - 0x022BC6 08:ABB6: 4A AC     .word off_FD_AC4A
- D 1 - I - 0x022BC8 08:ABB8: FD        .byte $FD   ; 
- D 1 - I - 0x022BC9 08:ABB9: 87 AC     .word off_FD_AC87
- D 1 - I - 0x022BCB 08:ABBB: EE        .byte $EE   ; 
- D 1 - I - 0x022BCC 08:ABBC: 01        .byte $01   ; 
- D 1 - I - 0x022BCD 08:ABBD: FD        .byte $FD   ; 
- D 1 - I - 0x022BCE 08:ABBE: 4A AC     .word off_FD_AC4A
- D 1 - I - 0x022BD0 08:ABC0: FD        .byte $FD   ; 
- D 1 - I - 0x022BD1 08:ABC1: 78 AC     .word off_FD_AC78
- D 1 - I - 0x022BD3 08:ABC3: FD        .byte $FD   ; 
- D 1 - I - 0x022BD4 08:ABC4: 4A AC     .word off_FD_AC4A
- D 1 - I - 0x022BD6 08:ABC6: FD        .byte $FD   ; 
- D 1 - I - 0x022BD7 08:ABC7: 87 AC     .word off_FD_AC87
- D 1 - I - 0x022BD9 08:ABC9: EE        .byte $EE   ; 
- D 1 - I - 0x022BDA 08:ABCA: 02        .byte $02   ; 
- D 1 - I - 0x022BDB 08:ABCB: FB        .byte $FB   ; 
- D 1 - I - 0x022BDC 08:ABCC: FD        .byte $FD   ; 
- D 1 - I - 0x022BDD 08:ABCD: 4A AC     .word off_FD_AC4A
- D 1 - I - 0x022BDF 08:ABCF: FD        .byte $FD   ; 
- D 1 - I - 0x022BE0 08:ABD0: 78 AC     .word off_FD_AC78
- D 1 - I - 0x022BE2 08:ABD2: FD        .byte $FD   ; 
- D 1 - I - 0x022BE3 08:ABD3: 4A AC     .word off_FD_AC4A
- D 1 - I - 0x022BE5 08:ABD5: FD        .byte $FD   ; 
- D 1 - I - 0x022BE6 08:ABD6: 87 AC     .word off_FD_AC87
- D 1 - I - 0x022BE8 08:ABD8: EE        .byte $EE   ; 
- D 1 - I - 0x022BE9 08:ABD9: 03        .byte $03   ; 
- D 1 - I - 0x022BEA 08:ABDA: FB        .byte $FB   ; 
- D 1 - I - 0x022BEB 08:ABDB: FD        .byte $FD   ; 
- D 1 - I - 0x022BEC 08:ABDC: 4A AC     .word off_FD_AC4A
- D 1 - I - 0x022BEE 08:ABDE: FD        .byte $FD   ; 
- D 1 - I - 0x022BEF 08:ABDF: 78 AC     .word off_FD_AC78
- D 1 - I - 0x022BF1 08:ABE1: FE        .byte $FE   ; 
- D 1 - I - 0x022BF2 08:ABE2: 04        .byte $04   ; 
- - - - - - 0x022BF3 08:ABE3: FF        .byte $FF   ; 



_off001_ABE4_1A:
- D 1 - I - 0x022BF4 08:ABE4: D4        .byte $D4   ; 
- D 1 - I - 0x022BF5 08:ABE5: 05        .byte $05   ; 
- D 1 - I - 0x022BF6 08:ABE6: FB        .byte $FB   ; 
- D 1 - I - 0x022BF7 08:ABE7: FD        .byte $FD   ; 
- D 1 - I - 0x022BF8 08:ABE8: 1D 9E     .word off_FD_9E1D
- D 1 - I - 0x022BFA 08:ABEA: 41        .byte $41   ; 
- D 1 - I - 0x022BFB 08:ABEB: 71        .byte $71   ; 
- D 1 - I - 0x022BFC 08:ABEC: 81        .byte $81   ; 
- D 1 - I - 0x022BFD 08:ABED: FD        .byte $FD   ; 
- D 1 - I - 0x022BFE 08:ABEE: 1D 9E     .word off_FD_9E1D
- D 1 - I - 0x022C00 08:ABF0: 91        .byte $91   ; 
- D 1 - I - 0x022C01 08:ABF1: C2        .byte $C2   ; 
- D 1 - I - 0x022C02 08:ABF2: FE        .byte $FE   ; 
- D 1 - I - 0x022C03 08:ABF3: 02        .byte $02   ; 
- D 1 - I - 0x022C04 08:ABF4: EE        .byte $EE   ; 
- D 1 - I - 0x022C05 08:ABF5: 01        .byte $01   ; 
- D 1 - I - 0x022C06 08:ABF6: FB        .byte $FB   ; 
- D 1 - I - 0x022C07 08:ABF7: FD        .byte $FD   ; 
- D 1 - I - 0x022C08 08:ABF8: 1D 9E     .word off_FD_9E1D
- D 1 - I - 0x022C0A 08:ABFA: 41        .byte $41   ; 
- D 1 - I - 0x022C0B 08:ABFB: 71        .byte $71   ; 
- D 1 - I - 0x022C0C 08:ABFC: 91        .byte $91   ; 
- D 1 - I - 0x022C0D 08:ABFD: FD        .byte $FD   ; 
- D 1 - I - 0x022C0E 08:ABFE: 1D 9E     .word off_FD_9E1D
- D 1 - I - 0x022C10 08:AC00: 91        .byte $91   ; 
- D 1 - I - 0x022C11 08:AC01: C2        .byte $C2   ; 
- D 1 - I - 0x022C12 08:AC02: FE        .byte $FE   ; 
- D 1 - I - 0x022C13 08:AC03: 02        .byte $02   ; 
- D 1 - I - 0x022C14 08:AC04: EE        .byte $EE   ; 
- D 1 - I - 0x022C15 08:AC05: 02        .byte $02   ; 
- D 1 - I - 0x022C16 08:AC06: FB        .byte $FB   ; 
- D 1 - I - 0x022C17 08:AC07: FD        .byte $FD   ; 
- D 1 - I - 0x022C18 08:AC08: 1D 9E     .word off_FD_9E1D
- D 1 - I - 0x022C1A 08:AC0A: 41        .byte $41   ; 
- D 1 - I - 0x022C1B 08:AC0B: 71        .byte $71   ; 
- D 1 - I - 0x022C1C 08:AC0C: 91        .byte $91   ; 
- D 1 - I - 0x022C1D 08:AC0D: FD        .byte $FD   ; 
- D 1 - I - 0x022C1E 08:AC0E: 1D 9E     .word off_FD_9E1D
- D 1 - I - 0x022C20 08:AC10: 91        .byte $91   ; 
- D 1 - I - 0x022C21 08:AC11: C2        .byte $C2   ; 
- D 1 - I - 0x022C22 08:AC12: FE        .byte $FE   ; 
- D 1 - I - 0x022C23 08:AC13: 02        .byte $02   ; 
- D 1 - I - 0x022C24 08:AC14: EE        .byte $EE   ; 
- D 1 - I - 0x022C25 08:AC15: 03        .byte $03   ; 
- D 1 - I - 0x022C26 08:AC16: FB        .byte $FB   ; 
- D 1 - I - 0x022C27 08:AC17: FD        .byte $FD   ; 
- D 1 - I - 0x022C28 08:AC18: 1D 9E     .word off_FD_9E1D
- D 1 - I - 0x022C2A 08:AC1A: 41        .byte $41   ; 
- D 1 - I - 0x022C2B 08:AC1B: 71        .byte $71   ; 
- D 1 - I - 0x022C2C 08:AC1C: 81        .byte $81   ; 
- D 1 - I - 0x022C2D 08:AC1D: FD        .byte $FD   ; 
- D 1 - I - 0x022C2E 08:AC1E: 1D 9E     .word off_FD_9E1D
- D 1 - I - 0x022C30 08:AC20: 91        .byte $91   ; 
- D 1 - I - 0x022C31 08:AC21: C2        .byte $C2   ; 
- D 1 - I - 0x022C32 08:AC22: FE        .byte $FE   ; 
- D 1 - I - 0x022C33 08:AC23: 04        .byte $04   ; 
- - - - - - 0x022C34 08:AC24: FF        .byte $FF   ; 



_off001_AC25_1B:
- D 1 - I - 0x022C35 08:AC25: EF        .byte $EF   ; 
- D 1 - I - 0x022C36 08:AC26: 03        .byte $03   ; 
- D 1 - I - 0x022C37 08:AC27: FD        .byte $FD   ; 
- D 1 - I - 0x022C38 08:AC28: 96 AC     .word off_FD_AC96
- D 1 - I - 0x022C3A 08:AC2A: EF        .byte $EF   ; 
- D 1 - I - 0x022C3B 08:AC2B: 04        .byte $04   ; 
- D 1 - I - 0x022C3C 08:AC2C: FD        .byte $FD   ; 
- D 1 - I - 0x022C3D 08:AC2D: 96 AC     .word off_FD_AC96
- D 1 - I - 0x022C3F 08:AC2F: EF        .byte $EF   ; 
- D 1 - I - 0x022C40 08:AC30: 05        .byte $05   ; 
- D 1 - I - 0x022C41 08:AC31: FD        .byte $FD   ; 
- D 1 - I - 0x022C42 08:AC32: 96 AC     .word off_FD_AC96
- D 1 - I - 0x022C44 08:AC34: EF        .byte $EF   ; 
- D 1 - I - 0x022C45 08:AC35: 06        .byte $06   ; 
- D 1 - I - 0x022C46 08:AC36: FD        .byte $FD   ; 
- D 1 - I - 0x022C47 08:AC37: 96 AC     .word off_FD_AC96
- D 1 - I - 0x022C49 08:AC39: FD        .byte $FD   ; 
- D 1 - I - 0x022C4A 08:AC3A: 96 AC     .word off_FD_AC96
- - - - - - 0x022C4C 08:AC3C: FF        .byte $FF   ; 
off_FD_AC3D:
- D 1 - I - 0x022C4D 08:AC3D: D4        .byte $D4   ; 
- D 1 - I - 0x022C4E 08:AC3E: 36        .byte $36   ; 
- D 1 - I - 0x022C4F 08:AC3F: 83        .byte $83   ; 
- D 1 - I - 0x022C50 08:AC40: 83        .byte $83   ; 
- D 1 - I - 0x022C51 08:AC41: E3        .byte $E3   ; 
- D 1 - I - 0x022C52 08:AC42: 91        .byte $91   ; 
- D 1 - I - 0x022C53 08:AC43: F3        .byte $F3   ; 
- D 1 - I - 0x022C54 08:AC44: 91        .byte $91   ; 
- D 1 - I - 0x022C55 08:AC45: F4        .byte $F4   ; 
- D 1 - I - 0x022C56 08:AC46: 91        .byte $91   ; 
- D 1 - I - 0x022C57 08:AC47: F5        .byte $F5   ; 
- D 1 - I - 0x022C58 08:AC48: 91        .byte $91   ; 
- D 1 - I - 0x022C59 08:AC49: FF        .byte $FF   ; 
off_FD_AC4A:
- D 1 - I - 0x022C5A 08:AC4A: F0        .byte $F0   ; 
- D 1 - I - 0x022C5B 08:AC4B: ED        .byte $ED   ; 
- D 1 - I - 0x022C5C 08:AC4C: 81        .byte $81   ; 
- D 1 - I - 0x022C5D 08:AC4D: E8        .byte $E8   ; 
- D 1 - I - 0x022C5E 08:AC4E: 01        .byte $01   ; 
- D 1 - I - 0x022C5F 08:AC4F: C2        .byte $C2   ; 
- D 1 - I - 0x022C60 08:AC50: E8        .byte $E8   ; 
- D 1 - I - 0x022C61 08:AC51: 04        .byte $04   ; 
- D 1 - I - 0x022C62 08:AC52: EB        .byte $EB   ; 
- D 1 - I - 0x022C63 08:AC53: 51        .byte $51   ; 
- D 1 - I - 0x022C64 08:AC54: 01        .byte $01   ; 
- D 1 - I - 0x022C65 08:AC55: E2        .byte $E2   ; 
- D 1 - I - 0x022C66 08:AC56: 22        .byte $22   ; 
- D 1 - I - 0x022C67 08:AC57: E1        .byte $E1   ; 
- D 1 - I - 0x022C68 08:AC58: 91        .byte $91   ; 
- D 1 - I - 0x022C69 08:AC59: E2        .byte $E2   ; 
- D 1 - I - 0x022C6A 08:AC5A: 32        .byte $32   ; 
- D 1 - I - 0x022C6B 08:AC5B: 21        .byte $21   ; 
- D 1 - I - 0x022C6C 08:AC5C: 01        .byte $01   ; 
- D 1 - I - 0x022C6D 08:AC5D: E1        .byte $E1   ; 
- D 1 - I - 0x022C6E 08:AC5E: 92        .byte $92   ; 
- D 1 - I - 0x022C6F 08:AC5F: 41        .byte $41   ; 
- D 1 - I - 0x022C70 08:AC60: 71        .byte $71   ; 
- D 1 - I - 0x022C71 08:AC61: 81        .byte $81   ; 
- D 1 - I - 0x022C72 08:AC62: E1        .byte $E1   ; 
- D 1 - I - 0x022C73 08:AC63: 92        .byte $92   ; 
- D 1 - I - 0x022C74 08:AC64: E2        .byte $E2   ; 
- D 1 - I - 0x022C75 08:AC65: 01        .byte $01   ; 
- D 1 - I - 0x022C76 08:AC66: E1        .byte $E1   ; 
- D 1 - I - 0x022C77 08:AC67: 91        .byte $91   ; 
- D 1 - I - 0x022C78 08:AC68: E2        .byte $E2   ; 
- D 1 - I - 0x022C79 08:AC69: 22        .byte $22   ; 
- D 1 - I - 0x022C7A 08:AC6A: E1        .byte $E1   ; 
- D 1 - I - 0x022C7B 08:AC6B: 91        .byte $91   ; 
- D 1 - I - 0x022C7C 08:AC6C: E2        .byte $E2   ; 
- D 1 - I - 0x022C7D 08:AC6D: 32        .byte $32   ; 
- D 1 - I - 0x022C7E 08:AC6E: 21        .byte $21   ; 
- D 1 - I - 0x022C7F 08:AC6F: 01        .byte $01   ; 
- D 1 - I - 0x022C80 08:AC70: E1        .byte $E1   ; 
- D 1 - I - 0x022C81 08:AC71: 91        .byte $91   ; 
- D 1 - I - 0x022C82 08:AC72: E8        .byte $E8   ; 
- D 1 - I - 0x022C83 08:AC73: 01        .byte $01   ; 
- D 1 - I - 0x022C84 08:AC74: C2        .byte $C2   ; 
- D 1 - I - 0x022C85 08:AC75: E8        .byte $E8   ; 
- D 1 - I - 0x022C86 08:AC76: 04        .byte $04   ; 
- D 1 - I - 0x022C87 08:AC77: FF        .byte $FF   ; 
off_FD_AC78:
- D 1 - I - 0x022C88 08:AC78: EB        .byte $EB   ; 
- D 1 - I - 0x022C89 08:AC79: 00        .byte $00   ; 
- D 1 - I - 0x022C8A 08:AC7A: E3        .byte $E3   ; 
- D 1 - I - 0x022C8B 08:AC7B: 91        .byte $91   ; 
- D 1 - I - 0x022C8C 08:AC7C: F3        .byte $F3   ; 
- D 1 - I - 0x022C8D 08:AC7D: 91        .byte $91   ; 
- D 1 - I - 0x022C8E 08:AC7E: F0        .byte $F0   ; 
- D 1 - I - 0x022C8F 08:AC7F: 91        .byte $91   ; 
- D 1 - I - 0x022C90 08:AC80: F3        .byte $F3   ; 
- D 1 - I - 0x022C91 08:AC81: 91        .byte $91   ; 
- D 1 - I - 0x022C92 08:AC82: F4        .byte $F4   ; 
- D 1 - I - 0x022C93 08:AC83: 91        .byte $91   ; 
- D 1 - I - 0x022C94 08:AC84: 91        .byte $91   ; 
- D 1 - I - 0x022C95 08:AC85: 91        .byte $91   ; 
- D 1 - I - 0x022C96 08:AC86: FF        .byte $FF   ; 
off_FD_AC87:
- D 1 - I - 0x022C97 08:AC87: EB        .byte $EB   ; 
- D 1 - I - 0x022C98 08:AC88: 00        .byte $00   ; 
- D 1 - I - 0x022C99 08:AC89: E3        .byte $E3   ; 
- D 1 - I - 0x022C9A 08:AC8A: 91        .byte $91   ; 
- D 1 - I - 0x022C9B 08:AC8B: F3        .byte $F3   ; 
- D 1 - I - 0x022C9C 08:AC8C: 91        .byte $91   ; 
- D 1 - I - 0x022C9D 08:AC8D: F0        .byte $F0   ; 
- D 1 - I - 0x022C9E 08:AC8E: A1        .byte $A1   ; 
- D 1 - I - 0x022C9F 08:AC8F: F3        .byte $F3   ; 
- D 1 - I - 0x022CA0 08:AC90: A1        .byte $A1   ; 
- D 1 - I - 0x022CA1 08:AC91: F4        .byte $F4   ; 
- D 1 - I - 0x022CA2 08:AC92: A1        .byte $A1   ; 
- D 1 - I - 0x022CA3 08:AC93: A1        .byte $A1   ; 
- D 1 - I - 0x022CA4 08:AC94: A1        .byte $A1   ; 
- D 1 - I - 0x022CA5 08:AC95: FF        .byte $FF   ; 
off_FD_AC96:
- D 1 - I - 0x022CA6 08:AC96: D4        .byte $D4   ; 
- D 1 - I - 0x022CA7 08:AC97: FB        .byte $FB   ; 
- D 1 - I - 0x022CA8 08:AC98: B2        .byte $B2   ; 
- D 1 - I - 0x022CA9 08:AC99: 12        .byte $12   ; 
- D 1 - I - 0x022CAA 08:AC9A: FE        .byte $FE   ; 
- D 1 - I - 0x022CAB 08:AC9B: 07        .byte $07   ; 
- D 1 - I - 0x022CAC 08:AC9C: B1        .byte $B1   ; 
- D 1 - I - 0x022CAD 08:AC9D: A1        .byte $A1   ; 
- D 1 - I - 0x022CAE 08:AC9E: B1        .byte $B1   ; 
- D 1 - I - 0x022CAF 08:AC9F: A1        .byte $A1   ; 
- D 1 - I - 0x022CB0 08:ACA0: FB        .byte $FB   ; 
- D 1 - I - 0x022CB1 08:ACA1: B2        .byte $B2   ; 
- D 1 - I - 0x022CB2 08:ACA2: 12        .byte $12   ; 
- D 1 - I - 0x022CB3 08:ACA3: FE        .byte $FE   ; 
- D 1 - I - 0x022CB4 08:ACA4: 06        .byte $06   ; 
- D 1 - I - 0x022CB5 08:ACA5: B2        .byte $B2   ; 
- D 1 - I - 0x022CB6 08:ACA6: 12        .byte $12   ; 
- D 1 - I - 0x022CB7 08:ACA7: 91        .byte $91   ; 
- D 1 - I - 0x022CB8 08:ACA8: 81        .byte $81   ; 
- D 1 - I - 0x022CB9 08:ACA9: 71        .byte $71   ; 
- D 1 - I - 0x022CBA 08:ACAA: 61        .byte $61   ; 
- D 1 - I - 0x022CBB 08:ACAB: FF        .byte $FF   ; 



_off001_ACAC_1D:
- D 1 - I - 0x022CBC 08:ACAC: EE        .byte $EE   ; 
- D 1 - I - 0x022CBD 08:ACAD: 85        .byte $85   ; 
- D 1 - I - 0x022CBE 08:ACAE: D4        .byte $D4   ; 
- D 1 - I - 0x022CBF 08:ACAF: 77        .byte $77   ; 
- D 1 - I - 0x022CC0 08:ACB0: 83        .byte $83   ; 
- D 1 - I - 0x022CC1 08:ACB1: 88        .byte $88   ; 
- D 1 - I - 0x022CC2 08:ACB2: FD        .byte $FD   ; 
- D 1 - I - 0x022CC3 08:ACB3: 4B A4     .word off_FD_A44B
- D 1 - I - 0x022CC5 08:ACB5: EE        .byte $EE   ; 
- D 1 - I - 0x022CC6 08:ACB6: 83        .byte $83   ; 
- D 1 - I - 0x022CC7 08:ACB7: FD        .byte $FD   ; 
- D 1 - I - 0x022CC8 08:ACB8: 4B A4     .word off_FD_A44B
- D 1 - I - 0x022CCA 08:ACBA: EE        .byte $EE   ; 
- D 1 - I - 0x022CCB 08:ACBB: 81        .byte $81   ; 
- D 1 - I - 0x022CCC 08:ACBC: FD        .byte $FD   ; 
- D 1 - I - 0x022CCD 08:ACBD: 4B A4     .word off_FD_A44B
- D 1 - I - 0x022CCF 08:ACBF: EE        .byte $EE   ; 
- D 1 - I - 0x022CD0 08:ACC0: 01        .byte $01   ; 
- D 1 - I - 0x022CD1 08:ACC1: FD        .byte $FD   ; 
- D 1 - I - 0x022CD2 08:ACC2: 4B A4     .word off_FD_A44B
- - - - - - 0x022CD4 08:ACC4: EE        .byte $EE   ; 
- - - - - - 0x022CD5 08:ACC5: 03        .byte $03   ; 
- - - - - - 0x022CD6 08:ACC6: FD        .byte $FD   ; 
- - - - - - 0x022CD7 08:ACC7: 4B A4     .word off_FD_A44B
- - - - - - 0x022CD9 08:ACC9: FF        .byte $FF   ; 



_off001_ACCA_1C:
- D 1 - I - 0x022CDA 08:ACCA: D4        .byte $D4   ; 
- D 1 - I - 0x022CDB 08:ACCB: 37        .byte $37   ; 
- D 1 - I - 0x022CDC 08:ACCC: 83        .byte $83   ; 
- D 1 - I - 0x022CDD 08:ACCD: 88        .byte $88   ; 
- D 1 - I - 0x022CDE 08:ACCE: FD        .byte $FD   ; 
- D 1 - I - 0x022CDF 08:ACCF: 4B A4     .word off_FD_A44B
- D 1 - I - 0x022CE1 08:ACD1: EE        .byte $EE   ; 
- D 1 - I - 0x022CE2 08:ACD2: 02        .byte $02   ; 
- D 1 - I - 0x022CE3 08:ACD3: FD        .byte $FD   ; 
- D 1 - I - 0x022CE4 08:ACD4: 4B A4     .word off_FD_A44B
- D 1 - I - 0x022CE6 08:ACD6: EE        .byte $EE   ; 
- D 1 - I - 0x022CE7 08:ACD7: 04        .byte $04   ; 
- D 1 - I - 0x022CE8 08:ACD8: FD        .byte $FD   ; 
- D 1 - I - 0x022CE9 08:ACD9: 4B A4     .word off_FD_A44B
- D 1 - I - 0x022CEB 08:ACDB: EE        .byte $EE   ; 
- D 1 - I - 0x022CEC 08:ACDC: 06        .byte $06   ; 
- D 1 - I - 0x022CED 08:ACDD: FD        .byte $FD   ; 
- D 1 - I - 0x022CEE 08:ACDE: 4B A4     .word off_FD_A44B
- - - - - - 0x022CF0 08:ACE0: EE        .byte $EE   ; 
- - - - - - 0x022CF1 08:ACE1: 08        .byte $08   ; 
- - - - - - 0x022CF2 08:ACE2: FD        .byte $FD   ; 
- - - - - - 0x022CF3 08:ACE3: 4B A4     .word off_FD_A44B
- - - - - - 0x022CF5 08:ACE5: FF        .byte $FF   ; 



_off001_ACE6_1E:
- D 1 - I - 0x022CF6 08:ACE6: D4        .byte $D4   ; 
- D 1 - I - 0x022CF7 08:ACE7: 03        .byte $03   ; 
- D 1 - I - 0x022CF8 08:ACE8: FD        .byte $FD   ; 
- D 1 - I - 0x022CF9 08:ACE9: 4B A4     .word off_FD_A44B
- D 1 - I - 0x022CFB 08:ACEB: EE        .byte $EE   ; 
- D 1 - I - 0x022CFC 08:ACEC: 02        .byte $02   ; 
- D 1 - I - 0x022CFD 08:ACED: FD        .byte $FD   ; 
- D 1 - I - 0x022CFE 08:ACEE: 4B A4     .word off_FD_A44B
- D 1 - I - 0x022D00 08:ACF0: EE        .byte $EE   ; 
- D 1 - I - 0x022D01 08:ACF1: 04        .byte $04   ; 
- D 1 - I - 0x022D02 08:ACF2: FD        .byte $FD   ; 
- D 1 - I - 0x022D03 08:ACF3: 4B A4     .word off_FD_A44B
- D 1 - I - 0x022D05 08:ACF5: EE        .byte $EE   ; 
- D 1 - I - 0x022D06 08:ACF6: 06        .byte $06   ; 
- D 1 - I - 0x022D07 08:ACF7: FD        .byte $FD   ; 
- D 1 - I - 0x022D08 08:ACF8: 4B A4     .word off_FD_A44B
- - - - - - 0x022D0A 08:ACFA: EE        .byte $EE   ; 
- - - - - - 0x022D0B 08:ACFB: 08        .byte $08   ; 
- - - - - - 0x022D0C 08:ACFC: FD        .byte $FD   ; 
- - - - - - 0x022D0D 08:ACFD: 4B A4     .word off_FD_A44B
- - - - - - 0x022D0F 08:ACFF: FF        .byte $FF   ; 



_off001_AD00_1F:
- D 1 - I - 0x022D10 08:AD00: EF        .byte $EF   ; 
- D 1 - I - 0x022D11 08:AD01: 03        .byte $03   ; 
- D 1 - I - 0x022D12 08:AD02: FB        .byte $FB   ; 
- D 1 - I - 0x022D13 08:AD03: D1        .byte $D1   ; 
- D 1 - I - 0x022D14 08:AD04: B3        .byte $B3   ; 
- D 1 - I - 0x022D15 08:AD05: 15        .byte $15   ; 
- D 1 - I - 0x022D16 08:AD06: 28        .byte $28   ; 
- D 1 - I - 0x022D17 08:AD07: 28        .byte $28   ; 
- D 1 - I - 0x022D18 08:AD08: 13        .byte $13   ; 
- D 1 - I - 0x022D19 08:AD09: 15        .byte $15   ; 
- D 1 - I - 0x022D1A 08:AD0A: 28        .byte $28   ; 
- D 1 - I - 0x022D1B 08:AD0B: 15        .byte $15   ; 
- D 1 - I - 0x022D1C 08:AD0C: 13        .byte $13   ; 
- D 1 - I - 0x022D1D 08:AD0D: 15        .byte $15   ; 
- D 1 - I - 0x022D1E 08:AD0E: B3        .byte $B3   ; 
- D 1 - I - 0x022D1F 08:AD0F: 28        .byte $28   ; 
- D 1 - I - 0x022D20 08:AD10: B5        .byte $B5   ; 
- D 1 - I - 0x022D21 08:AD11: 13        .byte $13   ; 
- D 1 - I - 0x022D22 08:AD12: 28        .byte $28   ; 
- D 1 - I - 0x022D23 08:AD13: 28        .byte $28   ; 
- D 1 - I - 0x022D24 08:AD14: 15        .byte $15   ; 
- D 1 - I - 0x022D25 08:AD15: 13        .byte $13   ; 
- D 1 - I - 0x022D26 08:AD16: 28        .byte $28   ; 
- D 1 - I - 0x022D27 08:AD17: 15        .byte $15   ; 
- D 1 - I - 0x022D28 08:AD18: 13        .byte $13   ; 
- D 1 - I - 0x022D29 08:AD19: 15        .byte $15   ; 
- D 1 - I - 0x022D2A 08:AD1A: 13        .byte $13   ; 
- D 1 - I - 0x022D2B 08:AD1B: 28        .byte $28   ; 
- D 1 - I - 0x022D2C 08:AD1C: B3        .byte $B3   ; 
- D 1 - I - 0x022D2D 08:AD1D: 15        .byte $15   ; 
- D 1 - I - 0x022D2E 08:AD1E: 28        .byte $28   ; 
- D 1 - I - 0x022D2F 08:AD1F: 28        .byte $28   ; 
- D 1 - I - 0x022D30 08:AD20: 13        .byte $13   ; 
- D 1 - I - 0x022D31 08:AD21: 15        .byte $15   ; 
- D 1 - I - 0x022D32 08:AD22: 28        .byte $28   ; 
- D 1 - I - 0x022D33 08:AD23: 15        .byte $15   ; 
- D 1 - I - 0x022D34 08:AD24: 13        .byte $13   ; 
- D 1 - I - 0x022D35 08:AD25: 15        .byte $15   ; 
- D 1 - I - 0x022D36 08:AD26: B3        .byte $B3   ; 
- D 1 - I - 0x022D37 08:AD27: 28        .byte $28   ; 
- D 1 - I - 0x022D38 08:AD28: B5        .byte $B5   ; 
- D 1 - I - 0x022D39 08:AD29: 13        .byte $13   ; 
- D 1 - I - 0x022D3A 08:AD2A: 28        .byte $28   ; 
- D 1 - I - 0x022D3B 08:AD2B: 28        .byte $28   ; 
- D 1 - I - 0x022D3C 08:AD2C: 15        .byte $15   ; 
- D 1 - I - 0x022D3D 08:AD2D: 13        .byte $13   ; 
- D 1 - I - 0x022D3E 08:AD2E: 28        .byte $28   ; 
- D 1 - I - 0x022D3F 08:AD2F: 15        .byte $15   ; 
- D 1 - I - 0x022D40 08:AD30: 13        .byte $13   ; 
- D 1 - I - 0x022D41 08:AD31: 43        .byte $43   ; 
- D 1 - I - 0x022D42 08:AD32: 43        .byte $43   ; 
- D 1 - I - 0x022D43 08:AD33: 42        .byte $42   ; 
- D 1 - I - 0x022D44 08:AD34: 43        .byte $43   ; 
- D 1 - I - 0x022D45 08:AD35: 43        .byte $43   ; 
- D 1 - I - 0x022D46 08:AD36: 42        .byte $42   ; 
- D 1 - I - 0x022D47 08:AD37: FE        .byte $FE   ; 
- D 1 - I - 0x022D48 08:AD38: 05        .byte $05   ; 
- - - - - - 0x022D49 08:AD39: FF        .byte $FF   ; 



_off001_AD3A_21:
- D 1 - I - 0x022D4A 08:AD3A: EC        .byte $EC   ; 
- D 1 - I - 0x022D4B 08:AD3B: 11        .byte $11   ; 
- D 1 - I - 0x022D4C 08:AD3C: D4        .byte $D4   ; 
- D 1 - I - 0x022D4D 08:AD3D: 37        .byte $37   ; 
- D 1 - I - 0x022D4E 08:AD3E: 93        .byte $93   ; 
- D 1 - I - 0x022D4F 08:AD3F: 86        .byte $86   ; 
- D 1 - I - 0x022D50 08:AD40: E1        .byte $E1   ; 
- D 1 - I - 0x022D51 08:AD41: FD        .byte $FD   ; 
- D 1 - I - 0x022D52 08:AD42: C5 AD     .word off_FD_ADC5
- D 1 - I - 0x022D54 08:AD44: EE        .byte $EE   ; 
- D 1 - I - 0x022D55 08:AD45: 01        .byte $01   ; 
- D 1 - I - 0x022D56 08:AD46: FD        .byte $FD   ; 
- D 1 - I - 0x022D57 08:AD47: C5 AD     .word off_FD_ADC5
- D 1 - I - 0x022D59 08:AD49: EE        .byte $EE   ; 
- D 1 - I - 0x022D5A 08:AD4A: 02        .byte $02   ; 
- D 1 - I - 0x022D5B 08:AD4B: FD        .byte $FD   ; 
- D 1 - I - 0x022D5C 08:AD4C: C5 AD     .word off_FD_ADC5
- D 1 - I - 0x022D5E 08:AD4E: EE        .byte $EE   ; 
- D 1 - I - 0x022D5F 08:AD4F: 03        .byte $03   ; 
- D 1 - I - 0x022D60 08:AD50: FD        .byte $FD   ; 
- D 1 - I - 0x022D61 08:AD51: C5 AD     .word off_FD_ADC5
- D 1 - I - 0x022D63 08:AD53: EE        .byte $EE   ; 
- D 1 - I - 0x022D64 08:AD54: 04        .byte $04   ; 
- D 1 - I - 0x022D65 08:AD55: FD        .byte $FD   ; 
- D 1 - I - 0x022D66 08:AD56: C5 AD     .word off_FD_ADC5
- - - - - - 0x022D68 08:AD58: FD        .byte $FD   ; 
- - - - - - 0x022D69 08:AD59: C5 AD     .word off_FD_ADC5
- - - - - - 0x022D6B 08:AD5B: FD        .byte $FD   ; 
- - - - - - 0x022D6C 08:AD5C: C5 AD     .word off_FD_ADC5
- - - - - - 0x022D6E 08:AD5E: FD        .byte $FD   ; 
- - - - - - 0x022D6F 08:AD5F: C5 AD     .word off_FD_ADC5
- - - - - - 0x022D71 08:AD61: FF        .byte $FF   ; 



_off001_AD62_20:
- D 1 - I - 0x022D72 08:AD62: EC        .byte $EC   ; 
- D 1 - I - 0x022D73 08:AD63: 11        .byte $11   ; 
- D 1 - I - 0x022D74 08:AD64: D4        .byte $D4   ; 
- D 1 - I - 0x022D75 08:AD65: 34        .byte $34   ; 
- D 1 - I - 0x022D76 08:AD66: 93        .byte $93   ; 
- D 1 - I - 0x022D77 08:AD67: 86        .byte $86   ; 
- D 1 - I - 0x022D78 08:AD68: EE        .byte $EE   ; 
- D 1 - I - 0x022D79 08:AD69: 85        .byte $85   ; 
- D 1 - I - 0x022D7A 08:AD6A: E1        .byte $E1   ; 
- D 1 - I - 0x022D7B 08:AD6B: FD        .byte $FD   ; 
- D 1 - I - 0x022D7C 08:AD6C: C5 AD     .word off_FD_ADC5
- D 1 - I - 0x022D7E 08:AD6E: EE        .byte $EE   ; 
- D 1 - I - 0x022D7F 08:AD6F: 84        .byte $84   ; 
- D 1 - I - 0x022D80 08:AD70: FD        .byte $FD   ; 
- D 1 - I - 0x022D81 08:AD71: C5 AD     .word off_FD_ADC5
- D 1 - I - 0x022D83 08:AD73: EE        .byte $EE   ; 
- D 1 - I - 0x022D84 08:AD74: 83        .byte $83   ; 
- D 1 - I - 0x022D85 08:AD75: FD        .byte $FD   ; 
- D 1 - I - 0x022D86 08:AD76: C5 AD     .word off_FD_ADC5
- D 1 - I - 0x022D88 08:AD78: EE        .byte $EE   ; 
- D 1 - I - 0x022D89 08:AD79: 82        .byte $82   ; 
- D 1 - I - 0x022D8A 08:AD7A: FD        .byte $FD   ; 
- D 1 - I - 0x022D8B 08:AD7B: C5 AD     .word off_FD_ADC5
- D 1 - I - 0x022D8D 08:AD7D: EE        .byte $EE   ; 
- D 1 - I - 0x022D8E 08:AD7E: 81        .byte $81   ; 
- D 1 - I - 0x022D8F 08:AD7F: FD        .byte $FD   ; 
- D 1 - I - 0x022D90 08:AD80: C5 AD     .word off_FD_ADC5
- - - - - - 0x022D92 08:AD82: FD        .byte $FD   ; 
- - - - - - 0x022D93 08:AD83: C5 AD     .word off_FD_ADC5
- - - - - - 0x022D95 08:AD85: FD        .byte $FD   ; 
- - - - - - 0x022D96 08:AD86: C5 AD     .word off_FD_ADC5
- - - - - - 0x022D98 08:AD88: FD        .byte $FD   ; 
- - - - - - 0x022D99 08:AD89: C5 AD     .word off_FD_ADC5
- - - - - - 0x022D9B 08:AD8B: FF        .byte $FF   ; 



_off001_AD8C_22:
- D 1 - I - 0x022D9C 08:AD8C: D4        .byte $D4   ; 
- D 1 - I - 0x022D9D 08:AD8D: 04        .byte $04   ; 
- D 1 - I - 0x022D9E 08:AD8E: E1        .byte $E1   ; 
- D 1 - I - 0x022D9F 08:AD8F: FD        .byte $FD   ; 
- D 1 - I - 0x022DA0 08:AD90: D8 AD     .word off_FD_ADD8
- D 1 - I - 0x022DA2 08:AD92: EE        .byte $EE   ; 
- D 1 - I - 0x022DA3 08:AD93: 01        .byte $01   ; 
- D 1 - I - 0x022DA4 08:AD94: FD        .byte $FD   ; 
- D 1 - I - 0x022DA5 08:AD95: D8 AD     .word off_FD_ADD8
- D 1 - I - 0x022DA7 08:AD97: EE        .byte $EE   ; 
- D 1 - I - 0x022DA8 08:AD98: 02        .byte $02   ; 
- D 1 - I - 0x022DA9 08:AD99: FD        .byte $FD   ; 
- D 1 - I - 0x022DAA 08:AD9A: D8 AD     .word off_FD_ADD8
- D 1 - I - 0x022DAC 08:AD9C: EE        .byte $EE   ; 
- D 1 - I - 0x022DAD 08:AD9D: 03        .byte $03   ; 
- D 1 - I - 0x022DAE 08:AD9E: FD        .byte $FD   ; 
- D 1 - I - 0x022DAF 08:AD9F: D8 AD     .word off_FD_ADD8
- D 1 - I - 0x022DB1 08:ADA1: EE        .byte $EE   ; 
- D 1 - I - 0x022DB2 08:ADA2: 04        .byte $04   ; 
- D 1 - I - 0x022DB3 08:ADA3: FD        .byte $FD   ; 
- D 1 - I - 0x022DB4 08:ADA4: D8 AD     .word off_FD_ADD8
- - - - - - 0x022DB6 08:ADA6: FD        .byte $FD   ; 
- - - - - - 0x022DB7 08:ADA7: D8 AD     .word off_FD_ADD8
- - - - - - 0x022DB9 08:ADA9: FD        .byte $FD   ; 
- - - - - - 0x022DBA 08:ADAA: D8 AD     .word off_FD_ADD8
- - - - - - 0x022DBC 08:ADAC: FD        .byte $FD   ; 
- - - - - - 0x022DBD 08:ADAD: D8 AD     .word off_FD_ADD8
- - - - - - 0x022DBF 08:ADAF: FF        .byte $FF   ; 



_off001_ADB0_23:
- D 1 - I - 0x022DC0 08:ADB0: EF        .byte $EF   ; 
- D 1 - I - 0x022DC1 08:ADB1: 04        .byte $04   ; 
- D 1 - I - 0x022DC2 08:ADB2: FD        .byte $FD   ; 
- D 1 - I - 0x022DC3 08:ADB3: E4 AD     .word off_FD_ADE4
- D 1 - I - 0x022DC5 08:ADB5: EF        .byte $EF   ; 
- D 1 - I - 0x022DC6 08:ADB6: 05        .byte $05   ; 
- D 1 - I - 0x022DC7 08:ADB7: FD        .byte $FD   ; 
- D 1 - I - 0x022DC8 08:ADB8: E4 AD     .word off_FD_ADE4
- D 1 - I - 0x022DCA 08:ADBA: EF        .byte $EF   ; 
- D 1 - I - 0x022DCB 08:ADBB: 06        .byte $06   ; 
- D 1 - I - 0x022DCC 08:ADBC: FD        .byte $FD   ; 
- D 1 - I - 0x022DCD 08:ADBD: E4 AD     .word off_FD_ADE4
- - - - - - 0x022DCF 08:ADBF: EF        .byte $EF   ; 
- - - - - - 0x022DD0 08:ADC0: 07        .byte $07   ; 
- - - - - - 0x022DD1 08:ADC1: FD        .byte $FD   ; 
- - - - - - 0x022DD2 08:ADC2: E4 AD     .word off_FD_ADE4
- - - - - - 0x022DD4 08:ADC4: FF        .byte $FF   ; 
off_FD_ADC5:
- D 1 - I - 0x022DD5 08:ADC5: FB        .byte $FB   ; 
- D 1 - I - 0x022DD6 08:ADC6: EB        .byte $EB   ; 
- D 1 - I - 0x022DD7 08:ADC7: 51        .byte $51   ; 
- D 1 - I - 0x022DD8 08:ADC8: 02        .byte $02   ; 
- D 1 - I - 0x022DD9 08:ADC9: 93        .byte $93   ; 
- D 1 - I - 0x022DDA 08:ADCA: 93        .byte $93   ; 
- D 1 - I - 0x022DDB 08:ADCB: 93        .byte $93   ; 
- D 1 - I - 0x022DDC 08:ADCC: 93        .byte $93   ; 
- D 1 - I - 0x022DDD 08:ADCD: 92        .byte $92   ; 
- D 1 - I - 0x022DDE 08:ADCE: A2        .byte $A2   ; 
- D 1 - I - 0x022DDF 08:ADCF: 93        .byte $93   ; 
- D 1 - I - 0x022DE0 08:ADD0: 93        .byte $93   ; 
- D 1 - I - 0x022DE1 08:ADD1: 93        .byte $93   ; 
- D 1 - I - 0x022DE2 08:ADD2: 93        .byte $93   ; 
- D 1 - I - 0x022DE3 08:ADD3: 92        .byte $92   ; 
- D 1 - I - 0x022DE4 08:ADD4: 72        .byte $72   ; 
- D 1 - I - 0x022DE5 08:ADD5: FE        .byte $FE   ; 
- D 1 - I - 0x022DE6 08:ADD6: 02        .byte $02   ; 
- D 1 - I - 0x022DE7 08:ADD7: FF        .byte $FF   ; 
off_FD_ADD8:
- D 1 - I - 0x022DE8 08:ADD8: FB        .byte $FB   ; 
- D 1 - I - 0x022DE9 08:ADD9: EB        .byte $EB   ; 
- D 1 - I - 0x022DEA 08:ADDA: 51        .byte $51   ; 
- D 1 - I - 0x022DEB 08:ADDB: 02        .byte $02   ; 
- D 1 - I - 0x022DEC 08:ADDC: E0        .byte $E0   ; 
- D 1 - I - 0x022DED 08:ADDD: 93        .byte $93   ; 
- D 1 - I - 0x022DEE 08:ADDE: E1        .byte $E1   ; 
- D 1 - I - 0x022DEF 08:ADDF: 03        .byte $03   ; 
- D 1 - I - 0x022DF0 08:ADE0: 22        .byte $22   ; 
- D 1 - I - 0x022DF1 08:ADE1: FE        .byte $FE   ; 
- D 1 - I - 0x022DF2 08:ADE2: 08        .byte $08   ; 
- D 1 - I - 0x022DF3 08:ADE3: FF        .byte $FF   ; 
off_FD_ADE4:
- D 1 - I - 0x022DF4 08:ADE4: D4        .byte $D4   ; 
- D 1 - I - 0x022DF5 08:ADE5: FB        .byte $FB   ; 
- D 1 - I - 0x022DF6 08:ADE6: B4        .byte $B4   ; 
- D 1 - I - 0x022DF7 08:ADE7: 43        .byte $43   ; 
- D 1 - I - 0x022DF8 08:ADE8: 41        .byte $41   ; 
- D 1 - I - 0x022DF9 08:ADE9: B1        .byte $B1   ; 
- D 1 - I - 0x022DFA 08:ADEA: 41        .byte $41   ; 
- D 1 - I - 0x022DFB 08:ADEB: B2        .byte $B2   ; 
- D 1 - I - 0x022DFC 08:ADEC: 42        .byte $42   ; 
- D 1 - I - 0x022DFD 08:ADED: 42        .byte $42   ; 
- D 1 - I - 0x022DFE 08:ADEE: FE        .byte $FE   ; 
- D 1 - I - 0x022DFF 08:ADEF: 08        .byte $08   ; 
- D 1 - I - 0x022E00 08:ADF0: FF        .byte $FF   ; 



_off001_ADF1_29:
off_FF_ADF1:
- D 1 - I - 0x022E01 08:ADF1: EC        .byte $EC   ; 
- D 1 - I - 0x022E02 08:ADF2: 12        .byte $12   ; 
- D 1 - I - 0x022E03 08:ADF3: D6        .byte $D6   ; 
- D 1 - I - 0x022E04 08:ADF4: B8        .byte $B8   ; 
- D 1 - I - 0x022E05 08:ADF5: 83        .byte $83   ; 
- D 1 - I - 0x022E06 08:ADF6: 83        .byte $83   ; 
- D 1 - I - 0x022E07 08:ADF7: EE        .byte $EE   ; 
- D 1 - I - 0x022E08 08:ADF8: 82        .byte $82   ; 
- D 1 - I - 0x022E09 08:ADF9: FD        .byte $FD   ; 
- D 1 - I - 0x022E0A 08:ADFA: 71 AE     .word off_FD_AE71
- D 1 - I - 0x022E0C 08:ADFC: EE        .byte $EE   ; 
- D 1 - I - 0x022E0D 08:ADFD: 03        .byte $03   ; 
- D 1 - I - 0x022E0E 08:ADFE: FD        .byte $FD   ; 
- D 1 - I - 0x022E0F 08:ADFF: 71 AE     .word off_FD_AE71
- D 1 - I - 0x022E11 08:AE01: EE        .byte $EE   ; 
- D 1 - I - 0x022E12 08:AE02: 82        .byte $82   ; 
- D 1 - I - 0x022E13 08:AE03: FD        .byte $FD   ; 
- D 1 - I - 0x022E14 08:AE04: 91 AE     .word off_FD_AE91
- D 1 - I - 0x022E16 08:AE06: D6        .byte $D6   ; 
- D 1 - I - 0x022E17 08:AE07: B8        .byte $B8   ; 
- D 1 - I - 0x022E18 08:AE08: 83        .byte $83   ; 
- D 1 - I - 0x022E19 08:AE09: 83        .byte $83   ; 
- D 1 - I - 0x022E1A 08:AE0A: FD        .byte $FD   ; 
- D 1 - I - 0x022E1B 08:AE0B: B0 AE     .word off_FD_AEB0
- D 1 - I - 0x022E1D 08:AE0D: FE        .byte $FE   ; 
- D 1 - I - 0x022E1E 08:AE0E: FF        .byte $FF   ; 
- D 1 - I - 0x022E1F 08:AE0F: F1 AD     .word off_FF_ADF1



_off001_AE11_28:
off_FF_AE11:
- D 1 - I - 0x022E21 08:AE11: EE        .byte $EE   ; 
- D 1 - I - 0x022E22 08:AE12: 82        .byte $82   ; 
- D 1 - I - 0x022E23 08:AE13: FD        .byte $FD   ; 
- D 1 - I - 0x022E24 08:AE14: CE AE     .word off_FD_AECE
- D 1 - I - 0x022E26 08:AE16: EE        .byte $EE   ; 
- D 1 - I - 0x022E27 08:AE17: 03        .byte $03   ; 
- D 1 - I - 0x022E28 08:AE18: FD        .byte $FD   ; 
- D 1 - I - 0x022E29 08:AE19: CE AE     .word off_FD_AECE
- D 1 - I - 0x022E2B 08:AE1B: EE        .byte $EE   ; 
- D 1 - I - 0x022E2C 08:AE1C: 05        .byte $05   ; 
- D 1 - I - 0x022E2D 08:AE1D: FD        .byte $FD   ; 
- D 1 - I - 0x022E2E 08:AE1E: 91 AE     .word off_FD_AE91
- D 1 - I - 0x022E30 08:AE20: F0        .byte $F0   ; 
- D 1 - I - 0x022E31 08:AE21: FD        .byte $FD   ; 
- D 1 - I - 0x022E32 08:AE22: B0 AE     .word off_FD_AEB0
- D 1 - I - 0x022E34 08:AE24: FE        .byte $FE   ; 
- D 1 - I - 0x022E35 08:AE25: FF        .byte $FF   ; 
- D 1 - I - 0x022E36 08:AE26: 11 AE     .word off_FF_AE11



_off001_AE28_2A:
off_FF_AE28:
- D 1 - I - 0x022E38 08:AE28: EE        .byte $EE   ; 
- D 1 - I - 0x022E39 08:AE29: 82        .byte $82   ; 
- D 1 - I - 0x022E3A 08:AE2A: FD        .byte $FD   ; 
- D 1 - I - 0x022E3B 08:AE2B: EA AE     .word off_FD_AEEA
- D 1 - I - 0x022E3D 08:AE2D: EE        .byte $EE   ; 
- D 1 - I - 0x022E3E 08:AE2E: 84        .byte $84   ; 
- D 1 - I - 0x022E3F 08:AE2F: FD        .byte $FD   ; 
- D 1 - I - 0x022E40 08:AE30: EA AE     .word off_FD_AEEA
- D 1 - I - 0x022E42 08:AE32: EE        .byte $EE   ; 
- D 1 - I - 0x022E43 08:AE33: 82        .byte $82   ; 
- D 1 - I - 0x022E44 08:AE34: 53        .byte $53   ; 
- D 1 - I - 0x022E45 08:AE35: 53        .byte $53   ; 
- D 1 - I - 0x022E46 08:AE36: 51        .byte $51   ; 
- D 1 - I - 0x022E47 08:AE37: A2        .byte $A2   ; 
- D 1 - I - 0x022E48 08:AE38: A2        .byte $A2   ; 
- D 1 - I - 0x022E49 08:AE39: A2        .byte $A2   ; 
- D 1 - I - 0x022E4A 08:AE3A: A1        .byte $A1   ; 
- D 1 - I - 0x022E4B 08:AE3B: B2        .byte $B2   ; 
- D 1 - I - 0x022E4C 08:AE3C: E2        .byte $E2   ; 
- D 1 - I - 0x022E4D 08:AE3D: DE        .byte $DE   ; 
- D 1 - I - 0x022E4E 08:AE3E: 00        .byte $00   ; 
- D 1 - I - 0x022E4F 08:AE3F: 00        .byte $00   ; 
- D 1 - I - 0x022E50 08:AE40: E1        .byte $E1   ; 
- D 1 - I - 0x022E51 08:AE41: AC        .byte $AC   ; 
- D 1 - I - 0x022E52 08:AE42: DE        .byte $DE   ; 
- D 1 - I - 0x022E53 08:AE43: E2        .byte $E2   ; 
- D 1 - I - 0x022E54 08:AE44: 01        .byte $01   ; 
- D 1 - I - 0x022E55 08:AE45: C3        .byte $C3   ; 
- D 1 - I - 0x022E56 08:AE46: 01        .byte $01   ; 
- D 1 - I - 0x022E57 08:AE47: E1        .byte $E1   ; 
- D 1 - I - 0x022E58 08:AE48: 71        .byte $71   ; 
- D 1 - I - 0x022E59 08:AE49: A1        .byte $A1   ; 
- D 1 - I - 0x022E5A 08:AE4A: E2        .byte $E2   ; 
- D 1 - I - 0x022E5B 08:AE4B: 01        .byte $01   ; 
- D 1 - I - 0x022E5C 08:AE4C: E1        .byte $E1   ; 
- D 1 - I - 0x022E5D 08:AE4D: 71        .byte $71   ; 
- D 1 - I - 0x022E5E 08:AE4E: 81        .byte $81   ; 
- D 1 - I - 0x022E5F 08:AE4F: FE        .byte $FE   ; 
- D 1 - I - 0x022E60 08:AE50: FF        .byte $FF   ; 
- D 1 - I - 0x022E61 08:AE51: 28 AE     .word off_FF_AE28



_off001_AE53_2B:
off_FF_AE53:
- D 1 - I - 0x022E63 08:AE53: EF        .byte $EF   ; 
- D 1 - I - 0x022E64 08:AE54: 0B        .byte $0B   ; 
- D 1 - I - 0x022E65 08:AE55: FB        .byte $FB   ; 
- D 1 - I - 0x022E66 08:AE56: D6        .byte $D6   ; 
- D 1 - I - 0x022E67 08:AE57: DE        .byte $DE   ; 
- D 1 - I - 0x022E68 08:AE58: B1        .byte $B1   ; 
- D 1 - I - 0x022E69 08:AE59: 2B        .byte $2B   ; 
- D 1 - I - 0x022E6A 08:AE5A: A1        .byte $A1   ; 
- D 1 - I - 0x022E6B 08:AE5B: BA        .byte $BA   ; 
- D 1 - I - 0x022E6C 08:AE5C: BA        .byte $BA   ; 
- D 1 - I - 0x022E6D 08:AE5D: B1        .byte $B1   ; 
- D 1 - I - 0x022E6E 08:AE5E: AB        .byte $AB   ; 
- D 1 - I - 0x022E6F 08:AE5F: 1B        .byte $1B   ; 
- D 1 - I - 0x022E70 08:AE60: DE        .byte $DE   ; 
- D 1 - I - 0x022E71 08:AE61: FE        .byte $FE   ; 
- D 1 - I - 0x022E72 08:AE62: 03        .byte $03   ; 
- D 1 - I - 0x022E73 08:AE63: DE        .byte $DE   ; 
- D 1 - I - 0x022E74 08:AE64: BA        .byte $BA   ; 
- D 1 - I - 0x022E75 08:AE65: 2A        .byte $2A   ; 
- D 1 - I - 0x022E76 08:AE66: AA        .byte $AA   ; 
- D 1 - I - 0x022E77 08:AE67: 1A        .byte $1A   ; 
- D 1 - I - 0x022E78 08:AE68: 1B        .byte $1B   ; 
- D 1 - I - 0x022E79 08:AE69: B1        .byte $B1   ; 
- D 1 - I - 0x022E7A 08:AE6A: BA        .byte $BA   ; 
- D 1 - I - 0x022E7B 08:AE6B: AA        .byte $AA   ; 
- D 1 - I - 0x022E7C 08:AE6C: DE        .byte $DE   ; 
- D 1 - I - 0x022E7D 08:AE6D: FE        .byte $FE   ; 
- D 1 - I - 0x022E7E 08:AE6E: FF        .byte $FF   ; 
- D 1 - I - 0x022E7F 08:AE6F: 53 AE     .word off_FF_AE53
off_FD_AE71:
- D 1 - I - 0x022E81 08:AE71: E2        .byte $E2   ; 
- D 1 - I - 0x022E82 08:AE72: 71        .byte $71   ; 
- D 1 - I - 0x022E83 08:AE73: F3        .byte $F3   ; 
- D 1 - I - 0x022E84 08:AE74: 71        .byte $71   ; 
- D 1 - I - 0x022E85 08:AE75: F0        .byte $F0   ; 
- D 1 - I - 0x022E86 08:AE76: 91        .byte $91   ; 
- D 1 - I - 0x022E87 08:AE77: F3        .byte $F3   ; 
- D 1 - I - 0x022E88 08:AE78: 91        .byte $91   ; 
- D 1 - I - 0x022E89 08:AE79: F0        .byte $F0   ; 
- D 1 - I - 0x022E8A 08:AE7A: 71        .byte $71   ; 
- D 1 - I - 0x022E8B 08:AE7B: F3        .byte $F3   ; 
- D 1 - I - 0x022E8C 08:AE7C: 71        .byte $71   ; 
- D 1 - I - 0x022E8D 08:AE7D: F0        .byte $F0   ; 
- D 1 - I - 0x022E8E 08:AE7E: 91        .byte $91   ; 
- D 1 - I - 0x022E8F 08:AE7F: 71        .byte $71   ; 
- D 1 - I - 0x022E90 08:AE80: F3        .byte $F3   ; 
- D 1 - I - 0x022E91 08:AE81: 71        .byte $71   ; 
- D 1 - I - 0x022E92 08:AE82: F0        .byte $F0   ; 
- D 1 - I - 0x022E93 08:AE83: 71        .byte $71   ; 
- D 1 - I - 0x022E94 08:AE84: 91        .byte $91   ; 
- D 1 - I - 0x022E95 08:AE85: F3        .byte $F3   ; 
- D 1 - I - 0x022E96 08:AE86: 91        .byte $91   ; 
- D 1 - I - 0x022E97 08:AE87: F0        .byte $F0   ; 
- D 1 - I - 0x022E98 08:AE88: 71        .byte $71   ; 
- D 1 - I - 0x022E99 08:AE89: F3        .byte $F3   ; 
- D 1 - I - 0x022E9A 08:AE8A: 71        .byte $71   ; 
- D 1 - I - 0x022E9B 08:AE8B: F0        .byte $F0   ; 
- D 1 - I - 0x022E9C 08:AE8C: 91        .byte $91   ; 
- D 1 - I - 0x022E9D 08:AE8D: F3        .byte $F3   ; 
- D 1 - I - 0x022E9E 08:AE8E: 91        .byte $91   ; 
- D 1 - I - 0x022E9F 08:AE8F: F0        .byte $F0   ; 
- D 1 - I - 0x022EA0 08:AE90: FF        .byte $FF   ; 
off_FD_AE91:
- D 1 - I - 0x022EA1 08:AE91: E3        .byte $E3   ; 
- D 1 - I - 0x022EA2 08:AE92: 31        .byte $31   ; 
- D 1 - I - 0x022EA3 08:AE93: F3        .byte $F3   ; 
- D 1 - I - 0x022EA4 08:AE94: 31        .byte $31   ; 
- D 1 - I - 0x022EA5 08:AE95: F0        .byte $F0   ; 
- D 1 - I - 0x022EA6 08:AE96: 51        .byte $51   ; 
- D 1 - I - 0x022EA7 08:AE97: F3        .byte $F3   ; 
- D 1 - I - 0x022EA8 08:AE98: 51        .byte $51   ; 
- D 1 - I - 0x022EA9 08:AE99: F0        .byte $F0   ; 
- D 1 - I - 0x022EAA 08:AE9A: 31        .byte $31   ; 
- D 1 - I - 0x022EAB 08:AE9B: F3        .byte $F3   ; 
- D 1 - I - 0x022EAC 08:AE9C: 31        .byte $31   ; 
- D 1 - I - 0x022EAD 08:AE9D: F0        .byte $F0   ; 
- D 1 - I - 0x022EAE 08:AE9E: 51        .byte $51   ; 
- D 1 - I - 0x022EAF 08:AE9F: 81        .byte $81   ; 
- D 1 - I - 0x022EB0 08:AEA0: F3        .byte $F3   ; 
- D 1 - I - 0x022EB1 08:AEA1: 81        .byte $81   ; 
- D 1 - I - 0x022EB2 08:AEA2: F0        .byte $F0   ; 
- D 1 - I - 0x022EB3 08:AEA3: 81        .byte $81   ; 
- D 1 - I - 0x022EB4 08:AEA4: A1        .byte $A1   ; 
- D 1 - I - 0x022EB5 08:AEA5: F3        .byte $F3   ; 
- D 1 - I - 0x022EB6 08:AEA6: A1        .byte $A1   ; 
- D 1 - I - 0x022EB7 08:AEA7: F0        .byte $F0   ; 
- D 1 - I - 0x022EB8 08:AEA8: 81        .byte $81   ; 
- D 1 - I - 0x022EB9 08:AEA9: F3        .byte $F3   ; 
- D 1 - I - 0x022EBA 08:AEAA: 81        .byte $81   ; 
- D 1 - I - 0x022EBB 08:AEAB: F0        .byte $F0   ; 
- D 1 - I - 0x022EBC 08:AEAC: A1        .byte $A1   ; 
- D 1 - I - 0x022EBD 08:AEAD: F3        .byte $F3   ; 
- D 1 - I - 0x022EBE 08:AEAE: A1        .byte $A1   ; 
- D 1 - I - 0x022EBF 08:AEAF: FF        .byte $FF   ; 
off_FD_AEB0:
- D 1 - I - 0x022EC0 08:AEB0: E4        .byte $E4   ; 
- D 1 - I - 0x022EC1 08:AEB1: 01        .byte $01   ; 
- D 1 - I - 0x022EC2 08:AEB2: 01        .byte $01   ; 
- D 1 - I - 0x022EC3 08:AEB3: 01        .byte $01   ; 
- D 1 - I - 0x022EC4 08:AEB4: 01        .byte $01   ; 
- D 1 - I - 0x022EC5 08:AEB5: E3        .byte $E3   ; 
- D 1 - I - 0x022EC6 08:AEB6: A1        .byte $A1   ; 
- D 1 - I - 0x022EC7 08:AEB7: F3        .byte $F3   ; 
- D 1 - I - 0x022EC8 08:AEB8: A1        .byte $A1   ; 
- D 1 - I - 0x022EC9 08:AEB9: F0        .byte $F0   ; 
- D 1 - I - 0x022ECA 08:AEBA: E4        .byte $E4   ; 
- D 1 - I - 0x022ECB 08:AEBB: 01        .byte $01   ; 
- D 1 - I - 0x022ECC 08:AEBC: F3        .byte $F3   ; 
- D 1 - I - 0x022ECD 08:AEBD: 01        .byte $01   ; 
- D 1 - I - 0x022ECE 08:AEBE: F4        .byte $F4   ; 
- D 1 - I - 0x022ECF 08:AEBF: 01        .byte $01   ; 
- D 1 - I - 0x022ED0 08:AEC0: F5        .byte $F5   ; 
- D 1 - I - 0x022ED1 08:AEC1: 01        .byte $01   ; 
- D 1 - I - 0x022ED2 08:AEC2: F0        .byte $F0   ; 
- D 1 - I - 0x022ED3 08:AEC3: 01        .byte $01   ; 
- D 1 - I - 0x022ED4 08:AEC4: E3        .byte $E3   ; 
- D 1 - I - 0x022ED5 08:AEC5: 71        .byte $71   ; 
- D 1 - I - 0x022ED6 08:AEC6: A1        .byte $A1   ; 
- D 1 - I - 0x022ED7 08:AEC7: E4        .byte $E4   ; 
- D 1 - I - 0x022ED8 08:AEC8: 01        .byte $01   ; 
- D 1 - I - 0x022ED9 08:AEC9: F3        .byte $F3   ; 
- D 1 - I - 0x022EDA 08:AECA: 01        .byte $01   ; 
- D 1 - I - 0x022EDB 08:AECB: F4        .byte $F4   ; 
- D 1 - I - 0x022EDC 08:AECC: 01        .byte $01   ; 
- D 1 - I - 0x022EDD 08:AECD: FF        .byte $FF   ; 
off_FD_AECE:
- D 1 - I - 0x022EDE 08:AECE: FB        .byte $FB   ; 
- D 1 - I - 0x022EDF 08:AECF: E9        .byte $E9   ; 
- D 1 - I - 0x022EE0 08:AED0: B1        .byte $B1   ; 
- D 1 - I - 0x022EE1 08:AED1: EC        .byte $EC   ; 
- D 1 - I - 0x022EE2 08:AED2: 12        .byte $12   ; 
- D 1 - I - 0x022EE3 08:AED3: D6        .byte $D6   ; 
- D 1 - I - 0x022EE4 08:AED4: 76        .byte $76   ; 
- D 1 - I - 0x022EE5 08:AED5: 83        .byte $83   ; 
- D 1 - I - 0x022EE6 08:AED6: 8A        .byte $8A   ; 
- D 1 - I - 0x022EE7 08:AED7: E2        .byte $E2   ; 
- D 1 - I - 0x022EE8 08:AED8: 91        .byte $91   ; 
- D 1 - I - 0x022EE9 08:AED9: E3        .byte $E3   ; 
- D 1 - I - 0x022EEA 08:AEDA: 21        .byte $21   ; 
- D 1 - I - 0x022EEB 08:AEDB: 71        .byte $71   ; 
- D 1 - I - 0x022EEC 08:AEDC: FE        .byte $FE   ; 
- D 1 - I - 0x022EED 08:AEDD: 04        .byte $04   ; 
- D 1 - I - 0x022EEE 08:AEDE: E8        .byte $E8   ; 
- D 1 - I - 0x022EEF 08:AEDF: 06        .byte $06   ; 
- D 1 - I - 0x022EF0 08:AEE0: E3        .byte $E3   ; 
- D 1 - I - 0x022EF1 08:AEE1: 01        .byte $01   ; 
- D 1 - I - 0x022EF2 08:AEE2: F3        .byte $F3   ; 
- D 1 - I - 0x022EF3 08:AEE3: 01        .byte $01   ; 
- D 1 - I - 0x022EF4 08:AEE4: F0        .byte $F0   ; 
- D 1 - I - 0x022EF5 08:AEE5: 21        .byte $21   ; 
- D 1 - I - 0x022EF6 08:AEE6: F3        .byte $F3   ; 
- D 1 - I - 0x022EF7 08:AEE7: 21        .byte $21   ; 
- D 1 - I - 0x022EF8 08:AEE8: F0        .byte $F0   ; 
- D 1 - I - 0x022EF9 08:AEE9: FF        .byte $FF   ; 
off_FD_AEEA:
- D 1 - I - 0x022EFA 08:AEEA: D6        .byte $D6   ; 
- D 1 - I - 0x022EFB 08:AEEB: 06        .byte $06   ; 
- D 1 - I - 0x022EFC 08:AEEC: E1        .byte $E1   ; 
- D 1 - I - 0x022EFD 08:AEED: 93        .byte $93   ; 
- D 1 - I - 0x022EFE 08:AEEE: 91        .byte $91   ; 
- D 1 - I - 0x022EFF 08:AEEF: C1        .byte $C1   ; 
- D 1 - I - 0x022F00 08:AEF0: C1        .byte $C1   ; 
- D 1 - I - 0x022F01 08:AEF1: E2        .byte $E2   ; 
- D 1 - I - 0x022F02 08:AEF2: 71        .byte $71   ; 
- D 1 - I - 0x022F03 08:AEF3: 91        .byte $91   ; 
- D 1 - I - 0x022F04 08:AEF4: E1        .byte $E1   ; 
- D 1 - I - 0x022F05 08:AEF5: C1        .byte $C1   ; 
- D 1 - I - 0x022F06 08:AEF6: 92        .byte $92   ; 
- D 1 - I - 0x022F07 08:AEF7: 91        .byte $91   ; 
- D 1 - I - 0x022F08 08:AEF8: 92        .byte $92   ; 
- D 1 - I - 0x022F09 08:AEF9: 82        .byte $82   ; 
- D 1 - I - 0x022F0A 08:AEFA: FF        .byte $FF   ; 



_off001_AEFB_2D:
- D 1 - I - 0x022F0B 08:AEFB: EC        .byte $EC   ; 
- D 1 - I - 0x022F0C 08:AEFC: 11        .byte $11   ; 
- D 1 - I - 0x022F0D 08:AEFD: D7        .byte $D7   ; 
- D 1 - I - 0x022F0E 08:AEFE: 77        .byte $77   ; 
- D 1 - I - 0x022F0F 08:AEFF: 83        .byte $83   ; 
- D 1 - I - 0x022F10 08:AF00: 83        .byte $83   ; 
- D 1 - I - 0x022F11 08:AF01: FD        .byte $FD   ; 
- D 1 - I - 0x022F12 08:AF02: 5E AF     .word off_FD_AF5E
- D 1 - I - 0x022F14 08:AF04: 01        .byte $01   ; 
- D 1 - I - 0x022F15 08:AF05: E2        .byte $E2   ; 
- D 1 - I - 0x022F16 08:AF06: B1        .byte $B1   ; 
- D 1 - I - 0x022F17 08:AF07: A1        .byte $A1   ; 
- D 1 - I - 0x022F18 08:AF08: E1        .byte $E1   ; 
- D 1 - I - 0x022F19 08:AF09: D9        .byte $D9   ; 
- D 1 - I - 0x022F1A 08:AF0A: 37        .byte $37   ; 
- D 1 - I - 0x022F1B 08:AF0B: 93        .byte $93   ; 
- D 1 - I - 0x022F1C 08:AF0C: 93        .byte $93   ; 
- D 1 - I - 0x022F1D 08:AF0D: EA        .byte $EA   ; 
- D 1 - I - 0x022F1E 08:AF0E: 43        .byte $43   ; 
- D 1 - I - 0x022F1F 08:AF0F: EB        .byte $EB   ; 
- D 1 - I - 0x022F20 08:AF10: 50        .byte $50   ; 
- D 1 - I - 0x022F21 08:AF11: 02        .byte $02   ; 
- D 1 - I - 0x022F22 08:AF12: E1        .byte $E1   ; 
- D 1 - I - 0x022F23 08:AF13: 5C        .byte $5C   ; 
- D 1 - I - 0x022F24 08:AF14: FF        .byte $FF   ; 



_off001_AF15_2C:
- D 1 - I - 0x022F25 08:AF15: ED        .byte $ED   ; 
- D 1 - I - 0x022F26 08:AF16: 81        .byte $81   ; 
- D 1 - I - 0x022F27 08:AF17: EC        .byte $EC   ; 
- D 1 - I - 0x022F28 08:AF18: 11        .byte $11   ; 
- D 1 - I - 0x022F29 08:AF19: D1        .byte $D1   ; 
- D 1 - I - 0x022F2A 08:AF1A: 75        .byte $75   ; 
- D 1 - I - 0x022F2B 08:AF1B: 83        .byte $83   ; 
- D 1 - I - 0x022F2C 08:AF1C: 83        .byte $83   ; 
- D 1 - I - 0x022F2D 08:AF1D: C3        .byte $C3   ; 
- D 1 - I - 0x022F2E 08:AF1E: E8        .byte $E8   ; 
- D 1 - I - 0x022F2F 08:AF1F: 07        .byte $07   ; 
- D 1 - I - 0x022F30 08:AF20: FD        .byte $FD   ; 
- D 1 - I - 0x022F31 08:AF21: 5E AF     .word off_FD_AF5E
- D 1 - I - 0x022F33 08:AF23: D9        .byte $D9   ; 
- D 1 - I - 0x022F34 08:AF24: 36        .byte $36   ; 
- D 1 - I - 0x022F35 08:AF25: 92        .byte $92   ; 
- D 1 - I - 0x022F36 08:AF26: 93        .byte $93   ; 
- D 1 - I - 0x022F37 08:AF27: EA        .byte $EA   ; 
- D 1 - I - 0x022F38 08:AF28: 43        .byte $43   ; 
- D 1 - I - 0x022F39 08:AF29: EB        .byte $EB   ; 
- D 1 - I - 0x022F3A 08:AF2A: 50        .byte $50   ; 
- D 1 - I - 0x022F3B 08:AF2B: 02        .byte $02   ; 
- D 1 - I - 0x022F3C 08:AF2C: E1        .byte $E1   ; 
- D 1 - I - 0x022F3D 08:AF2D: 0C        .byte $0C   ; 
- D 1 - I - 0x022F3E 08:AF2E: FF        .byte $FF   ; 



_off001_AF2F_2E:
- D 1 - I - 0x022F3F 08:AF2F: D7        .byte $D7   ; 
- D 1 - I - 0x022F40 08:AF30: 05        .byte $05   ; 
- D 1 - I - 0x022F41 08:AF31: E1        .byte $E1   ; 
- D 1 - I - 0x022F42 08:AF32: 54        .byte $54   ; 
- D 1 - I - 0x022F43 08:AF33: 33        .byte $33   ; 
- D 1 - I - 0x022F44 08:AF34: 22        .byte $22   ; 
- D 1 - I - 0x022F45 08:AF35: 22        .byte $22   ; 
- D 1 - I - 0x022F46 08:AF36: 02        .byte $02   ; 
- D 1 - I - 0x022F47 08:AF37: 01        .byte $01   ; 
- D 1 - I - 0x022F48 08:AF38: 31        .byte $31   ; 
- D 1 - I - 0x022F49 08:AF39: 51        .byte $51   ; 
- D 1 - I - 0x022F4A 08:AF3A: C2        .byte $C2   ; 
- D 1 - I - 0x022F4B 08:AF3B: E0        .byte $E0   ; 
- D 1 - I - 0x022F4C 08:AF3C: D9        .byte $D9   ; 
- D 1 - I - 0x022F4D 08:AF3D: 07        .byte $07   ; 
- D 1 - I - 0x022F4E 08:AF3E: EB        .byte $EB   ; 
- D 1 - I - 0x022F4F 08:AF3F: 50        .byte $50   ; 
- D 1 - I - 0x022F50 08:AF40: 04        .byte $04   ; 
- D 1 - I - 0x022F51 08:AF41: 5C        .byte $5C   ; 
- D 1 - I - 0x022F52 08:AF42: FF        .byte $FF   ; 



_off001_AF43_2F:
- D 1 - I - 0x022F53 08:AF43: D1        .byte $D1   ; 
- D 1 - I - 0x022F54 08:AF44: B7        .byte $B7   ; 
- D 1 - I - 0x022F55 08:AF45: 17        .byte $17   ; 
- D 1 - I - 0x022F56 08:AF46: 17        .byte $17   ; 
- D 1 - I - 0x022F57 08:AF47: B7        .byte $B7   ; 
- D 1 - I - 0x022F58 08:AF48: 47        .byte $47   ; 
- D 1 - I - 0x022F59 08:AF49: 17        .byte $17   ; 
- D 1 - I - 0x022F5A 08:AF4A: 17        .byte $17   ; 
- D 1 - I - 0x022F5B 08:AF4B: 47        .byte $47   ; 
- D 1 - I - 0x022F5C 08:AF4C: 17        .byte $17   ; 
- D 1 - I - 0x022F5D 08:AF4D: 47        .byte $47   ; 
- D 1 - I - 0x022F5E 08:AF4E: 17        .byte $17   ; 
- D 1 - I - 0x022F5F 08:AF4F: 47        .byte $47   ; 
- D 1 - I - 0x022F60 08:AF50: 12        .byte $12   ; 
- D 1 - I - 0x022F61 08:AF51: 12        .byte $12   ; 
- D 1 - I - 0x022F62 08:AF52: 13        .byte $13   ; 
- D 1 - I - 0x022F63 08:AF53: B3        .byte $B3   ; 
- D 1 - I - 0x022F64 08:AF54: 14        .byte $14   ; 
- D 1 - I - 0x022F65 08:AF55: B7        .byte $B7   ; 
- D 1 - I - 0x022F66 08:AF56: B7        .byte $B7   ; 
- D 1 - I - 0x022F67 08:AF57: 17        .byte $17   ; 
- D 1 - I - 0x022F68 08:AF58: 17        .byte $17   ; 
- D 1 - I - 0x022F69 08:AF59: 16        .byte $16   ; 
- D 1 - I - 0x022F6A 08:AF5A: B1        .byte $B1   ; 
- D 1 - I - 0x022F6B 08:AF5B: D9        .byte $D9   ; 
- D 1 - I - 0x022F6C 08:AF5C: 20        .byte $20   ; 
- D 1 - I - 0x022F6D 08:AF5D: FF        .byte $FF   ; 
off_FD_AF5E:
- D 1 - I - 0x022F6E 08:AF5E: E2        .byte $E2   ; 
- D 1 - I - 0x022F6F 08:AF5F: DE        .byte $DE   ; 
- D 1 - I - 0x022F70 08:AF60: 50        .byte $50   ; 
- D 1 - I - 0x022F71 08:AF61: 35        .byte $35   ; 
- D 1 - I - 0x022F72 08:AF62: 85        .byte $85   ; 
- D 1 - I - 0x022F73 08:AF63: 8A        .byte $8A   ; 
- D 1 - I - 0x022F74 08:AF64: DE        .byte $DE   ; 
- D 1 - I - 0x022F75 08:AF65: F3        .byte $F3   ; 
- D 1 - I - 0x022F76 08:AF66: A1        .byte $A1   ; 
- D 1 - I - 0x022F77 08:AF67: F0        .byte $F0   ; 
- D 1 - I - 0x022F78 08:AF68: B1        .byte $B1   ; 
- D 1 - I - 0x022F79 08:AF69: F3        .byte $F3   ; 
- D 1 - I - 0x022F7A 08:AF6A: B1        .byte $B1   ; 
- D 1 - I - 0x022F7B 08:AF6B: F0        .byte $F0   ; 
- D 1 - I - 0x022F7C 08:AF6C: E3        .byte $E3   ; 
- D 1 - I - 0x022F7D 08:AF6D: 02        .byte $02   ; 
- D 1 - I - 0x022F7E 08:AF6E: E2        .byte $E2   ; 
- D 1 - I - 0x022F7F 08:AF6F: A1        .byte $A1   ; 
- D 1 - I - 0x022F80 08:AF70: E3        .byte $E3   ; 
- D 1 - I - 0x022F81 08:AF71: 31        .byte $31   ; 
- D 1 - I - 0x022F82 08:AF72: 51        .byte $51   ; 
- D 1 - I - 0x022F83 08:AF73: E3        .byte $E3   ; 
- D 1 - I - 0x022F84 08:AF74: F3        .byte $F3   ; 
- D 1 - I - 0x022F85 08:AF75: 51        .byte $51   ; 
- D 1 - I - 0x022F86 08:AF76: F4        .byte $F4   ; 
- D 1 - I - 0x022F87 08:AF77: 51        .byte $51   ; 
- D 1 - I - 0x022F88 08:AF78: F3        .byte $F3   ; 
- D 1 - I - 0x022F89 08:AF79: E8        .byte $E8   ; 
- D 1 - I - 0x022F8A 08:AF7A: 01        .byte $01   ; 
- D 1 - I - 0x022F8B 08:AF7B: 41        .byte $41   ; 
- D 1 - I - 0x022F8C 08:AF7C: 31        .byte $31   ; 
- D 1 - I - 0x022F8D 08:AF7D: 21        .byte $21   ; 
- D 1 - I - 0x022F8E 08:AF7E: 11        .byte $11   ; 
- D 1 - I - 0x022F8F 08:AF7F: FF        .byte $FF   ; 



_off001_AF80_31:
- D 1 - I - 0x022F90 08:AF80: FB        .byte $FB   ; 
- D 1 - I - 0x022F91 08:AF81: D8        .byte $D8   ; 
- D 1 - I - 0x022F92 08:AF82: 33        .byte $33   ; 
- D 1 - I - 0x022F93 08:AF83: 81        .byte $81   ; 
- D 1 - I - 0x022F94 08:AF84: 00        .byte $00   ; 
- D 1 - I - 0x022F95 08:AF85: C2        .byte $C2   ; 
- D 1 - I - 0x022F96 08:AF86: FD        .byte $FD   ; 
- D 1 - I - 0x022F97 08:AF87: E2 AF     .word off_FD_AFE2
- D 1 - I - 0x022F99 08:AF89: C1        .byte $C1   ; 
- D 1 - I - 0x022F9A 08:AF8A: E0        .byte $E0   ; 
- D 1 - I - 0x022F9B 08:AF8B: B1        .byte $B1   ; 
- D 1 - I - 0x022F9C 08:AF8C: E1        .byte $E1   ; 
- D 1 - I - 0x022F9D 08:AF8D: FE        .byte $FE   ; 
- D 1 - I - 0x022F9E 08:AF8E: 03        .byte $03   ; 
- D 1 - I - 0x022F9F 08:AF8F: C2        .byte $C2   ; 
- D 1 - I - 0x022FA0 08:AF90: E8        .byte $E8   ; 
- D 1 - I - 0x022FA1 08:AF91: 08        .byte $08   ; 
- D 1 - I - 0x022FA2 08:AF92: FD        .byte $FD   ; 
- D 1 - I - 0x022FA3 08:AF93: E2 AF     .word off_FD_AFE2
- D 1 - I - 0x022FA5 08:AF95: FE        .byte $FE   ; 
- D 1 - I - 0x022FA6 08:AF96: FF        .byte $FF   ; 
- D 1 - I - 0x022FA7 08:AF97: F6 AF     .word off_FF_AFF6



_off001_AF99_30:
- D 1 - I - 0x022FA9 08:AF99: FB        .byte $FB   ; 
- D 1 - I - 0x022FAA 08:AF9A: D8        .byte $D8   ; 
- D 1 - I - 0x022FAB 08:AF9B: 36        .byte $36   ; 
- D 1 - I - 0x022FAC 08:AF9C: 83        .byte $83   ; 
- D 1 - I - 0x022FAD 08:AF9D: 85        .byte $85   ; 
- D 1 - I - 0x022FAE 08:AF9E: FD        .byte $FD   ; 
- D 1 - I - 0x022FAF 08:AF9F: E2 AF     .word off_FD_AFE2
- D 1 - I - 0x022FB1 08:AFA1: C1        .byte $C1   ; 
- D 1 - I - 0x022FB2 08:AFA2: E0        .byte $E0   ; 
- D 1 - I - 0x022FB3 08:AFA3: B1        .byte $B1   ; 
- D 1 - I - 0x022FB4 08:AFA4: E1        .byte $E1   ; 
- D 1 - I - 0x022FB5 08:AFA5: 22        .byte $22   ; 
- D 1 - I - 0x022FB6 08:AFA6: FE        .byte $FE   ; 
- D 1 - I - 0x022FB7 08:AFA7: 03        .byte $03   ; 
- D 1 - I - 0x022FB8 08:AFA8: FD        .byte $FD   ; 
- D 1 - I - 0x022FB9 08:AFA9: E2 AF     .word off_FD_AFE2
- D 1 - I - 0x022FBB 08:AFAB: FD        .byte $FD   ; 
- D 1 - I - 0x022FBC 08:AFAC: F6 AF     .word off_FD_AFF6
- D 1 - I - 0x022FBE 08:AFAE: 91        .byte $91   ; 
- D 1 - I - 0x022FBF 08:AFAF: B1        .byte $B1   ; 
- D 1 - I - 0x022FC0 08:AFB0: FF        .byte $FF   ; 



_off001_AFB1_32:
- D 1 - I - 0x022FC1 08:AFB1: FB        .byte $FB   ; 
- D 1 - I - 0x022FC2 08:AFB2: D8        .byte $D8   ; 
- D 1 - I - 0x022FC3 08:AFB3: 05        .byte $05   ; 
- D 1 - I - 0x022FC4 08:AFB4: FD        .byte $FD   ; 
- D 1 - I - 0x022FC5 08:AFB5: E2 AF     .word off_FD_AFE2
- D 1 - I - 0x022FC7 08:AFB7: C1        .byte $C1   ; 
- D 1 - I - 0x022FC8 08:AFB8: E0        .byte $E0   ; 
- D 1 - I - 0x022FC9 08:AFB9: B1        .byte $B1   ; 
- D 1 - I - 0x022FCA 08:AFBA: E1        .byte $E1   ; 
- D 1 - I - 0x022FCB 08:AFBB: 22        .byte $22   ; 
- D 1 - I - 0x022FCC 08:AFBC: FE        .byte $FE   ; 
- D 1 - I - 0x022FCD 08:AFBD: 03        .byte $03   ; 
- D 1 - I - 0x022FCE 08:AFBE: FE        .byte $FE   ; 
- D 1 - I - 0x022FCF 08:AFBF: FF        .byte $FF   ; 
- D 1 - I - 0x022FD0 08:AFC0: E2 AF     .word off_FF_AFE2



_off001_AFC2_33:
- D 1 - I - 0x022FD2 08:AFC2: FC        .byte $FC   ; 
- D 1 - I - 0x022FD3 08:AFC3: D8        .byte $D8   ; 
- D 1 - I - 0x022FD4 08:AFC4: FB        .byte $FB   ; 
- D 1 - I - 0x022FD5 08:AFC5: B2        .byte $B2   ; 
- D 1 - I - 0x022FD6 08:AFC6: 12        .byte $12   ; 
- D 1 - I - 0x022FD7 08:AFC7: FE        .byte $FE   ; 
- D 1 - I - 0x022FD8 08:AFC8: 03        .byte $03   ; 
- D 1 - I - 0x022FD9 08:AFC9: B2        .byte $B2   ; 
- D 1 - I - 0x022FDA 08:AFCA: 22        .byte $22   ; 
- D 1 - I - 0x022FDB 08:AFCB: FB        .byte $FB   ; 
- D 1 - I - 0x022FDC 08:AFCC: B2        .byte $B2   ; 
- D 1 - I - 0x022FDD 08:AFCD: 12        .byte $12   ; 
- D 1 - I - 0x022FDE 08:AFCE: FE        .byte $FE   ; 
- D 1 - I - 0x022FDF 08:AFCF: 04        .byte $04   ; 
- D 1 - I - 0x022FE0 08:AFD0: FE        .byte $FE   ; 
- D 1 - I - 0x022FE1 08:AFD1: 03        .byte $03   ; 
- D 1 - I - 0x022FE2 08:AFD2: FB        .byte $FB   ; 
- D 1 - I - 0x022FE3 08:AFD3: B2        .byte $B2   ; 
- D 1 - I - 0x022FE4 08:AFD4: 12        .byte $12   ; 
- D 1 - I - 0x022FE5 08:AFD5: FE        .byte $FE   ; 
- D 1 - I - 0x022FE6 08:AFD6: 03        .byte $03   ; 
- D 1 - I - 0x022FE7 08:AFD7: B2        .byte $B2   ; 
- D 1 - I - 0x022FE8 08:AFD8: 22        .byte $22   ; 
- D 1 - I - 0x022FE9 08:AFD9: B2        .byte $B2   ; 
- D 1 - I - 0x022FEA 08:AFDA: 12        .byte $12   ; 
- D 1 - I - 0x022FEB 08:AFDB: B2        .byte $B2   ; 
- D 1 - I - 0x022FEC 08:AFDC: 12        .byte $12   ; 
- D 1 - I - 0x022FED 08:AFDD: A1        .byte $A1   ; 
- D 1 - I - 0x022FEE 08:AFDE: A1        .byte $A1   ; 
- D 1 - I - 0x022FEF 08:AFDF: A1        .byte $A1   ; 
- D 1 - I - 0x022FF0 08:AFE0: A1        .byte $A1   ; 
- D 1 - I - 0x022FF1 08:AFE1: FF        .byte $FF   ; 
off_FD_AFE2:
off_FF_AFE2:
- D 1 - I - 0x022FF2 08:AFE2: DE        .byte $DE   ; 
- D 1 - I - 0x022FF3 08:AFE3: E1        .byte $E1   ; 
- D 1 - I - 0x022FF4 08:AFE4: 44        .byte $44   ; 
- D 1 - I - 0x022FF5 08:AFE5: E2        .byte $E2   ; 
- D 1 - I - 0x022FF6 08:AFE6: 4F        .byte $4F   ; 
- D 1 - I - 0x022FF7 08:AFE7: E1        .byte $E1   ; 
- D 1 - I - 0x022FF8 08:AFE8: 44        .byte $44   ; 
- D 1 - I - 0x022FF9 08:AFE9: 42        .byte $42   ; 
- D 1 - I - 0x022FFA 08:AFEA: DE        .byte $DE   ; 
- D 1 - I - 0x022FFB 08:AFEB: 41        .byte $41   ; 
- D 1 - I - 0x022FFC 08:AFEC: C6        .byte $C6   ; 
- D 1 - I - 0x022FFD 08:AFED: 42        .byte $42   ; 
- D 1 - I - 0x022FFE 08:AFEE: 93        .byte $93   ; 
- D 1 - I - 0x022FFF 08:AFEF: 93        .byte $93   ; 
- D 1 - I - 0x023000 08:AFF0: 92        .byte $92   ; 
- D 1 - I - 0x023001 08:AFF1: B1        .byte $B1   ; 
- D 1 - I - 0x023002 08:AFF2: B1        .byte $B1   ; 
- D 1 - I - 0x023003 08:AFF3: 91        .byte $91   ; 
- D 1 - I - 0x023004 08:AFF4: B1        .byte $B1   ; 
- D 1 - I - 0x023005 08:AFF5: FF        .byte $FF   ; 
off_FD_AFF6:
off_FF_AFF6:
- D 1 - I - 0x023006 08:AFF6: F3        .byte $F3   ; 
- D 1 - I - 0x023007 08:AFF7: 91        .byte $91   ; 
- D 1 - I - 0x023008 08:AFF8: B1        .byte $B1   ; 
- D 1 - I - 0x023009 08:AFF9: F4        .byte $F4   ; 
- D 1 - I - 0x02300A 08:AFFA: 91        .byte $91   ; 
- D 1 - I - 0x02300B 08:AFFB: B1        .byte $B1   ; 
- D 1 - I - 0x02300C 08:AFFC: F5        .byte $F5   ; 
- D 1 - I - 0x02300D 08:AFFD: FF        .byte $FF   ; 



_off001_AFFE_35:
- D 1 - I - 0x02300E 08:AFFE: D8        .byte $D8   ; 
- D 1 - I - 0x02300F 08:AFFF: 77        .byte $77   ; 
- D 1 - I - 0x023010 08:B000: 83        .byte $83   ; 
- D 1 - I - 0x023011 08:B001: C8        .byte $C8   ; 
- D 1 - I - 0x023012 08:B002: FD        .byte $FD   ; 
- D 1 - I - 0x023013 08:B003: E7 B0     .word off_FD_B0E7
- D 1 - I - 0x023015 08:B005: D8        .byte $D8   ; 
- D 1 - I - 0x023016 08:B006: 77        .byte $77   ; 
- D 1 - I - 0x023017 08:B007: 83        .byte $83   ; 
- D 1 - I - 0x023018 08:B008: 43        .byte $43   ; 
- D 1 - I - 0x023019 08:B009: FD        .byte $FD   ; 
- D 1 - I - 0x02301A 08:B00A: FA B0     .word off_FD_B0FA
- D 1 - I - 0x02301C 08:B00C: FD        .byte $FD   ; 
- D 1 - I - 0x02301D 08:B00D: 11 B1     .word off_FD_B111
- D 1 - I - 0x02301F 08:B00F: D8        .byte $D8   ; 
- D 1 - I - 0x023020 08:B010: 37        .byte $37   ; 
- D 1 - I - 0x023021 08:B011: 83        .byte $83   ; 
- D 1 - I - 0x023022 08:B012: 16        .byte $16   ; 
- D 1 - I - 0x023023 08:B013: FD        .byte $FD   ; 
- D 1 - I - 0x023024 08:B014: 2A B1     .word off_FD_B12A
- D 1 - I - 0x023026 08:B016: D8        .byte $D8   ; 
- D 1 - I - 0x023027 08:B017: 77        .byte $77   ; 
- D 1 - I - 0x023028 08:B018: 83        .byte $83   ; 
- D 1 - I - 0x023029 08:B019: 43        .byte $43   ; 
- D 1 - I - 0x02302A 08:B01A: FD        .byte $FD   ; 
- D 1 - I - 0x02302B 08:B01B: FA B0     .word off_FD_B0FA
- D 1 - I - 0x02302D 08:B01D: FD        .byte $FD   ; 
- D 1 - I - 0x02302E 08:B01E: 44 B1     .word off_FD_B144
- D 1 - I - 0x023030 08:B020: D8        .byte $D8   ; 
- D 1 - I - 0x023031 08:B021: 37        .byte $37   ; 
- D 1 - I - 0x023032 08:B022: 83        .byte $83   ; 
- D 1 - I - 0x023033 08:B023: 86        .byte $86   ; 
- D 1 - I - 0x023034 08:B024: FD        .byte $FD   ; 
- D 1 - I - 0x023035 08:B025: 5E B1     .word off_FD_B15E
- D 1 - I - 0x023037 08:B027: D8        .byte $D8   ; 
- D 1 - I - 0x023038 08:B028: 77        .byte $77   ; 
- D 1 - I - 0x023039 08:B029: 83        .byte $83   ; 
- D 1 - I - 0x02303A 08:B02A: 18        .byte $18   ; 
- D 1 - I - 0x02303B 08:B02B: FD        .byte $FD   ; 
- D 1 - I - 0x02303C 08:B02C: 70 B1     .word off_FD_B170
- D 1 - I - 0x02303E 08:B02E: E7        .byte $E7   ; 
- D 1 - I - 0x02303F 08:B02F: 17        .byte $17   ; 
- D 1 - I - 0x023040 08:B030: FD        .byte $FD   ; 
- D 1 - I - 0x023041 08:B031: 8A B1     .word off_FD_B18A
off_FF_B033:
- D 1 - I - 0x023043 08:B033: D8        .byte $D8   ; 
- D 1 - I - 0x023044 08:B034: 77        .byte $77   ; 
- D 1 - I - 0x023045 08:B035: 83        .byte $83   ; 
- D 1 - I - 0x023046 08:B036: C8        .byte $C8   ; 
- D 1 - I - 0x023047 08:B037: FD        .byte $FD   ; 
- D 1 - I - 0x023048 08:B038: E7 B0     .word off_FD_B0E7
- D 1 - I - 0x02304A 08:B03A: FE        .byte $FE   ; 
- D 1 - I - 0x02304B 08:B03B: FF        .byte $FF   ; 
- D 1 - I - 0x02304C 08:B03C: 33 B0     .word off_FF_B033



_off001_B03E_34:
- D 1 - I - 0x02304E 08:B03E: D8        .byte $D8   ; 
- D 1 - I - 0x02304F 08:B03F: 75        .byte $75   ; 
- D 1 - I - 0x023050 08:B040: 83        .byte $83   ; 
- D 1 - I - 0x023051 08:B041: 88        .byte $88   ; 
- D 1 - I - 0x023052 08:B042: EE        .byte $EE   ; 
- D 1 - I - 0x023053 08:B043: 85        .byte $85   ; 
- D 1 - I - 0x023054 08:B044: FD        .byte $FD   ; 
- D 1 - I - 0x023055 08:B045: E7 B0     .word off_FD_B0E7
- D 1 - I - 0x023057 08:B047: EE        .byte $EE   ; 
- D 1 - I - 0x023058 08:B048: 85        .byte $85   ; 
- D 1 - I - 0x023059 08:B049: D8        .byte $D8   ; 
- D 1 - I - 0x02305A 08:B04A: 75        .byte $75   ; 
- D 1 - I - 0x02305B 08:B04B: 83        .byte $83   ; 
- D 1 - I - 0x02305C 08:B04C: 43        .byte $43   ; 
- D 1 - I - 0x02305D 08:B04D: FD        .byte $FD   ; 
- D 1 - I - 0x02305E 08:B04E: FA B0     .word off_FD_B0FA
- D 1 - I - 0x023060 08:B050: FD        .byte $FD   ; 
- D 1 - I - 0x023061 08:B051: 11 B1     .word off_FD_B111
- D 1 - I - 0x023063 08:B053: D8        .byte $D8   ; 
- D 1 - I - 0x023064 08:B054: 35        .byte $35   ; 
- D 1 - I - 0x023065 08:B055: 83        .byte $83   ; 
- D 1 - I - 0x023066 08:B056: 15        .byte $15   ; 
- D 1 - I - 0x023067 08:B057: FD        .byte $FD   ; 
- D 1 - I - 0x023068 08:B058: 2A B1     .word off_FD_B12A
- D 1 - I - 0x02306A 08:B05A: D8        .byte $D8   ; 
- D 1 - I - 0x02306B 08:B05B: 75        .byte $75   ; 
- D 1 - I - 0x02306C 08:B05C: 83        .byte $83   ; 
- D 1 - I - 0x02306D 08:B05D: 43        .byte $43   ; 
- D 1 - I - 0x02306E 08:B05E: FD        .byte $FD   ; 
- D 1 - I - 0x02306F 08:B05F: FA B0     .word off_FD_B0FA
- D 1 - I - 0x023071 08:B061: FD        .byte $FD   ; 
- D 1 - I - 0x023072 08:B062: 44 B1     .word off_FD_B144
- D 1 - I - 0x023074 08:B064: D8        .byte $D8   ; 
- D 1 - I - 0x023075 08:B065: 35        .byte $35   ; 
- D 1 - I - 0x023076 08:B066: 83        .byte $83   ; 
- D 1 - I - 0x023077 08:B067: 88        .byte $88   ; 
- D 1 - I - 0x023078 08:B068: FD        .byte $FD   ; 
- D 1 - I - 0x023079 08:B069: 5E B1     .word off_FD_B15E
- D 1 - I - 0x02307B 08:B06B: EE        .byte $EE   ; 
- D 1 - I - 0x02307C 08:B06C: 85        .byte $85   ; 
- D 1 - I - 0x02307D 08:B06D: D8        .byte $D8   ; 
- D 1 - I - 0x02307E 08:B06E: 75        .byte $75   ; 
- D 1 - I - 0x02307F 08:B06F: 83        .byte $83   ; 
- D 1 - I - 0x023080 08:B070: 18        .byte $18   ; 
- D 1 - I - 0x023081 08:B071: FD        .byte $FD   ; 
- D 1 - I - 0x023082 08:B072: 70 B1     .word off_FD_B170
- D 1 - I - 0x023084 08:B074: E7        .byte $E7   ; 
- D 1 - I - 0x023085 08:B075: 17        .byte $17   ; 
- D 1 - I - 0x023086 08:B076: FD        .byte $FD   ; 
- D 1 - I - 0x023087 08:B077: 8A B1     .word off_FD_B18A
off_FF_B079:
- D 1 - I - 0x023089 08:B079: D8        .byte $D8   ; 
- D 1 - I - 0x02308A 08:B07A: 75        .byte $75   ; 
- D 1 - I - 0x02308B 08:B07B: 83        .byte $83   ; 
- D 1 - I - 0x02308C 08:B07C: 88        .byte $88   ; 
- D 1 - I - 0x02308D 08:B07D: EE        .byte $EE   ; 
- D 1 - I - 0x02308E 08:B07E: 85        .byte $85   ; 
- D 1 - I - 0x02308F 08:B07F: FD        .byte $FD   ; 
- D 1 - I - 0x023090 08:B080: E7 B0     .word off_FD_B0E7
- D 1 - I - 0x023092 08:B082: FE        .byte $FE   ; 
- D 1 - I - 0x023093 08:B083: FF        .byte $FF   ; 
- D 1 - I - 0x023094 08:B084: 79 B0     .word off_FF_B079



_off001_B086_36:
- D 1 - I - 0x023096 08:B086: FD        .byte $FD   ; 
- D 1 - I - 0x023097 08:B087: BB B1     .word off_FD_B1BB
- D 1 - I - 0x023099 08:B089: FD        .byte $FD   ; 
- D 1 - I - 0x02309A 08:B08A: BB B1     .word off_FD_B1BB
- D 1 - I - 0x02309C 08:B08C: FD        .byte $FD   ; 
- D 1 - I - 0x02309D 08:B08D: BB B1     .word off_FD_B1BB
- D 1 - I - 0x02309F 08:B08F: FD        .byte $FD   ; 
- D 1 - I - 0x0230A0 08:B090: C8 B1     .word off_FD_B1C8
- D 1 - I - 0x0230A2 08:B092: EE        .byte $EE   ; 
- D 1 - I - 0x0230A3 08:B093: 82        .byte $82   ; 
- D 1 - I - 0x0230A4 08:B094: FD        .byte $FD   ; 
- D 1 - I - 0x0230A5 08:B095: C8 B1     .word off_FD_B1C8
- D 1 - I - 0x0230A7 08:B097: EE        .byte $EE   ; 
- D 1 - I - 0x0230A8 08:B098: 00        .byte $00   ; 
- D 1 - I - 0x0230A9 08:B099: FD        .byte $FD   ; 
- D 1 - I - 0x0230AA 08:B09A: E9 B1     .word off_FD_B1E9
off_FF_B09C:
- D 1 - I - 0x0230AC 08:B09C: FD        .byte $FD   ; 
- D 1 - I - 0x0230AD 08:B09D: BB B1     .word off_FD_B1BB
- D 1 - I - 0x0230AF 08:B09F: FE        .byte $FE   ; 
- D 1 - I - 0x0230B0 08:B0A0: FF        .byte $FF   ; 
- D 1 - I - 0x0230B1 08:B0A1: 9C B0     .word off_FF_B09C



_off001_B0A3_37:
- D 1 - I - 0x0230B3 08:B0A3: FD        .byte $FD   ; 
- D 1 - I - 0x0230B4 08:B0A4: 06 B2     .word off_FD_B206
- D 1 - I - 0x0230B6 08:B0A6: FD        .byte $FD   ; 
- D 1 - I - 0x0230B7 08:B0A7: 0F B2     .word off_FD_B20F
- D 1 - I - 0x0230B9 08:B0A9: FD        .byte $FD   ; 
- D 1 - I - 0x0230BA 08:B0AA: 06 B2     .word off_FD_B206
- D 1 - I - 0x0230BC 08:B0AC: B1        .byte $B1   ; 
- D 1 - I - 0x0230BD 08:B0AD: A1        .byte $A1   ; 
- D 1 - I - 0x0230BE 08:B0AE: A1        .byte $A1   ; 
- D 1 - I - 0x0230BF 08:B0AF: A1        .byte $A1   ; 
- D 1 - I - 0x0230C0 08:B0B0: FD        .byte $FD   ; 
- D 1 - I - 0x0230C1 08:B0B1: 06 B2     .word off_FD_B206
- D 1 - I - 0x0230C3 08:B0B3: FD        .byte $FD   ; 
- D 1 - I - 0x0230C4 08:B0B4: 0F B2     .word off_FD_B20F
- D 1 - I - 0x0230C6 08:B0B6: FB        .byte $FB   ; 
- D 1 - I - 0x0230C7 08:B0B7: D8        .byte $D8   ; 
- D 1 - I - 0x0230C8 08:B0B8: DE        .byte $DE   ; 
- D 1 - I - 0x0230C9 08:B0B9: B1        .byte $B1   ; 
- D 1 - I - 0x0230CA 08:B0BA: A1        .byte $A1   ; 
- D 1 - I - 0x0230CB 08:B0BB: BB        .byte $BB   ; 
- D 1 - I - 0x0230CC 08:B0BC: AB        .byte $AB   ; 
- D 1 - I - 0x0230CD 08:B0BD: 1B        .byte $1B   ; 
- D 1 - I - 0x0230CE 08:B0BE: A1        .byte $A1   ; 
- D 1 - I - 0x0230CF 08:B0BF: DE        .byte $DE   ; 
- D 1 - I - 0x0230D0 08:B0C0: D1        .byte $D1   ; 
- D 1 - I - 0x0230D1 08:B0C1: 94        .byte $94   ; 
- D 1 - I - 0x0230D2 08:B0C2: 94        .byte $94   ; 
- D 1 - I - 0x0230D3 08:B0C3: 84        .byte $84   ; 
- D 1 - I - 0x0230D4 08:B0C4: 84        .byte $84   ; 
- D 1 - I - 0x0230D5 08:B0C5: 74        .byte $74   ; 
- D 1 - I - 0x0230D6 08:B0C6: 74        .byte $74   ; 
- D 1 - I - 0x0230D7 08:B0C7: 64        .byte $64   ; 
- D 1 - I - 0x0230D8 08:B0C8: 64        .byte $64   ; 
- D 1 - I - 0x0230D9 08:B0C9: FE        .byte $FE   ; 
- D 1 - I - 0x0230DA 08:B0CA: 02        .byte $02   ; 
- D 1 - I - 0x0230DB 08:B0CB: D8        .byte $D8   ; 
- D 1 - I - 0x0230DC 08:B0CC: B2        .byte $B2   ; 
- D 1 - I - 0x0230DD 08:B0CD: A2        .byte $A2   ; 
- D 1 - I - 0x0230DE 08:B0CE: B1        .byte $B1   ; 
- D 1 - I - 0x0230DF 08:B0CF: B1        .byte $B1   ; 
- D 1 - I - 0x0230E0 08:B0D0: A1        .byte $A1   ; 
- D 1 - I - 0x0230E1 08:B0D1: B2        .byte $B2   ; 
- D 1 - I - 0x0230E2 08:B0D2: B1        .byte $B1   ; 
- D 1 - I - 0x0230E3 08:B0D3: A2        .byte $A2   ; 
- D 1 - I - 0x0230E4 08:B0D4: DE        .byte $DE   ; 
- D 1 - I - 0x0230E5 08:B0D5: B1        .byte $B1   ; 
- D 1 - I - 0x0230E6 08:B0D6: A1        .byte $A1   ; 
- D 1 - I - 0x0230E7 08:B0D7: BB        .byte $BB   ; 
- D 1 - I - 0x0230E8 08:B0D8: AB        .byte $AB   ; 
- D 1 - I - 0x0230E9 08:B0D9: BA        .byte $BA   ; 
- D 1 - I - 0x0230EA 08:B0DA: BA        .byte $BA   ; 
- D 1 - I - 0x0230EB 08:B0DB: 11        .byte $11   ; 
- D 1 - I - 0x0230EC 08:B0DC: 11        .byte $11   ; 
- D 1 - I - 0x0230ED 08:B0DD: 1A        .byte $1A   ; 
- D 1 - I - 0x0230EE 08:B0DE: AA        .byte $AA   ; 
- D 1 - I - 0x0230EF 08:B0DF: DE        .byte $DE   ; 
off_FF_B0E0:
- D 1 - I - 0x0230F0 08:B0E0: FD        .byte $FD   ; 
- D 1 - I - 0x0230F1 08:B0E1: 06 B2     .word off_FD_B206
- D 1 - I - 0x0230F3 08:B0E3: FE        .byte $FE   ; 
- D 1 - I - 0x0230F4 08:B0E4: FF        .byte $FF   ; 
- D 1 - I - 0x0230F5 08:B0E5: E0 B0     .word off_FF_B0E0
off_FD_B0E7:
- D 1 - I - 0x0230F7 08:B0E7: E9        .byte $E9   ; 
- D 1 - I - 0x0230F8 08:B0E8: 31        .byte $31   ; 
- D 1 - I - 0x0230F9 08:B0E9: EC        .byte $EC   ; 
- D 1 - I - 0x0230FA 08:B0EA: 11        .byte $11   ; 
- D 1 - I - 0x0230FB 08:B0EB: FB        .byte $FB   ; 
- D 1 - I - 0x0230FC 08:B0EC: E1        .byte $E1   ; 
- D 1 - I - 0x0230FD 08:B0ED: DE        .byte $DE   ; 
- D 1 - I - 0x0230FE 08:B0EE: 64        .byte $64   ; 
- D 1 - I - 0x0230FF 08:B0EF: 74        .byte $74   ; 
- D 1 - I - 0x023100 08:B0F0: B4        .byte $B4   ; 
- D 1 - I - 0x023101 08:B0F1: 64        .byte $64   ; 
- D 1 - I - 0x023102 08:B0F2: DE        .byte $DE   ; 
- D 1 - I - 0x023103 08:B0F3: FE        .byte $FE   ; 
- D 1 - I - 0x023104 08:B0F4: 04        .byte $04   ; 
- D 1 - I - 0x023105 08:B0F5: EC        .byte $EC   ; 
- D 1 - I - 0x023106 08:B0F6: 00        .byte $00   ; 
- D 1 - I - 0x023107 08:B0F7: E9        .byte $E9   ; 
- D 1 - I - 0x023108 08:B0F8: 00        .byte $00   ; 
- D 1 - I - 0x023109 08:B0F9: FF        .byte $FF   ; 
off_FD_B0FA:
- D 1 - I - 0x02310A 08:B0FA: EA        .byte $EA   ; 
- D 1 - I - 0x02310B 08:B0FB: 51        .byte $51   ; 
- D 1 - I - 0x02310C 08:B0FC: EB        .byte $EB   ; 
- D 1 - I - 0x02310D 08:B0FD: 50        .byte $50   ; 
- D 1 - I - 0x02310E 08:B0FE: 11        .byte $11   ; 
- D 1 - I - 0x02310F 08:B0FF: E8        .byte $E8   ; 
- D 1 - I - 0x023110 08:B100: 02        .byte $02   ; 
- D 1 - I - 0x023111 08:B101: E2        .byte $E2   ; 
- D 1 - I - 0x023112 08:B102: 91        .byte $91   ; 
- D 1 - I - 0x023113 08:B103: A1        .byte $A1   ; 
- D 1 - I - 0x023114 08:B104: BA        .byte $BA   ; 
- D 1 - I - 0x023115 08:B105: E8        .byte $E8   ; 
- D 1 - I - 0x023116 08:B106: 08        .byte $08   ; 
- D 1 - I - 0x023117 08:B107: EB        .byte $EB   ; 
- D 1 - I - 0x023118 08:B108: 51        .byte $51   ; 
- D 1 - I - 0x023119 08:B109: 22        .byte $22   ; 
- D 1 - I - 0x02311A 08:B10A: E3        .byte $E3   ; 
- D 1 - I - 0x02311B 08:B10B: 25        .byte $25   ; 
- D 1 - I - 0x02311C 08:B10C: EB        .byte $EB   ; 
- D 1 - I - 0x02311D 08:B10D: 50        .byte $50   ; 
- D 1 - I - 0x02311E 08:B10E: 11        .byte $11   ; 
- D 1 - I - 0x02311F 08:B10F: 13        .byte $13   ; 
- D 1 - I - 0x023120 08:B110: FF        .byte $FF   ; 
off_FD_B111:
- D 1 - I - 0x023121 08:B111: EB        .byte $EB   ; 
- D 1 - I - 0x023122 08:B112: 51        .byte $51   ; 
- D 1 - I - 0x023123 08:B113: 12        .byte $12   ; 
- D 1 - I - 0x023124 08:B114: E2        .byte $E2   ; 
- D 1 - I - 0x023125 08:B115: 93        .byte $93   ; 
- D 1 - I - 0x023126 08:B116: E3        .byte $E3   ; 
- D 1 - I - 0x023127 08:B117: 11        .byte $11   ; 
- D 1 - I - 0x023128 08:B118: E2        .byte $E2   ; 
- D 1 - I - 0x023129 08:B119: B1        .byte $B1   ; 
- D 1 - I - 0x02312A 08:B11A: F3        .byte $F3   ; 
- D 1 - I - 0x02312B 08:B11B: B1        .byte $B1   ; 
- D 1 - I - 0x02312C 08:B11C: F0        .byte $F0   ; 
- D 1 - I - 0x02312D 08:B11D: EA        .byte $EA   ; 
- D 1 - I - 0x02312E 08:B11E: 00        .byte $00   ; 
- D 1 - I - 0x02312F 08:B11F: EB        .byte $EB   ; 
- D 1 - I - 0x023130 08:B120: 00        .byte $00   ; 
- D 1 - I - 0x023131 08:B121: E7        .byte $E7   ; 
- D 1 - I - 0x023132 08:B122: 88        .byte $88   ; 
- D 1 - I - 0x023133 08:B123: EC        .byte $EC   ; 
- D 1 - I - 0x023134 08:B124: 11        .byte $11   ; 
- D 1 - I - 0x023135 08:B125: E4        .byte $E4   ; 
- D 1 - I - 0x023136 08:B126: 41        .byte $41   ; 
- D 1 - I - 0x023137 08:B127: F3        .byte $F3   ; 
- D 1 - I - 0x023138 08:B128: 41        .byte $41   ; 
- D 1 - I - 0x023139 08:B129: FF        .byte $FF   ; 
off_FD_B12A:
- D 1 - I - 0x02313A 08:B12A: EB        .byte $EB   ; 
- D 1 - I - 0x02313B 08:B12B: 54        .byte $54   ; 
- D 1 - I - 0x02313C 08:B12C: 02        .byte $02   ; 
- D 1 - I - 0x02313D 08:B12D: E2        .byte $E2   ; 
- D 1 - I - 0x02313E 08:B12E: A2        .byte $A2   ; 
- D 1 - I - 0x02313F 08:B12F: EB        .byte $EB   ; 
- D 1 - I - 0x023140 08:B130: 00        .byte $00   ; 
- D 1 - I - 0x023141 08:B131: 91        .byte $91   ; 
- D 1 - I - 0x023142 08:B132: 71        .byte $71   ; 
- D 1 - I - 0x023143 08:B133: 42        .byte $42   ; 
- D 1 - I - 0x023144 08:B134: 41        .byte $41   ; 
- D 1 - I - 0x023145 08:B135: 21        .byte $21   ; 
- D 1 - I - 0x023146 08:B136: E1        .byte $E1   ; 
- D 1 - I - 0x023147 08:B137: A2        .byte $A2   ; 
- D 1 - I - 0x023148 08:B138: 91        .byte $91   ; 
- D 1 - I - 0x023149 08:B139: E7        .byte $E7   ; 
- D 1 - I - 0x02314A 08:B13A: 44        .byte $44   ; 
- D 1 - I - 0x02314B 08:B13B: EB        .byte $EB   ; 
- D 1 - I - 0x02314C 08:B13C: 51        .byte $51   ; 
- D 1 - I - 0x02314D 08:B13D: 02        .byte $02   ; 
- D 1 - I - 0x02314E 08:B13E: 72        .byte $72   ; 
- D 1 - I - 0x02314F 08:B13F: EB        .byte $EB   ; 
- D 1 - I - 0x023150 08:B140: 00        .byte $00   ; 
- D 1 - I - 0x023151 08:B141: EC        .byte $EC   ; 
- D 1 - I - 0x023152 08:B142: 00        .byte $00   ; 
- D 1 - I - 0x023153 08:B143: FF        .byte $FF   ; 
off_FD_B144:
- D 1 - I - 0x023154 08:B144: EB        .byte $EB   ; 
- D 1 - I - 0x023155 08:B145: 51        .byte $51   ; 
- D 1 - I - 0x023156 08:B146: 12        .byte $12   ; 
- D 1 - I - 0x023157 08:B147: E2        .byte $E2   ; 
- D 1 - I - 0x023158 08:B148: 92        .byte $92   ; 
- D 1 - I - 0x023159 08:B149: B1        .byte $B1   ; 
- D 1 - I - 0x02315A 08:B14A: EB        .byte $EB   ; 
- D 1 - I - 0x02315B 08:B14B: 51        .byte $51   ; 
- D 1 - I - 0x02315C 08:B14C: 03        .byte $03   ; 
- D 1 - I - 0x02315D 08:B14D: E3        .byte $E3   ; 
- D 1 - I - 0x02315E 08:B14E: 13        .byte $13   ; 
- D 1 - I - 0x02315F 08:B14F: EB        .byte $EB   ; 
- D 1 - I - 0x023160 08:B150: 00        .byte $00   ; 
- D 1 - I - 0x023161 08:B151: EA        .byte $EA   ; 
- D 1 - I - 0x023162 08:B152: 00        .byte $00   ; 
- D 1 - I - 0x023163 08:B153: EB        .byte $EB   ; 
- D 1 - I - 0x023164 08:B154: 00        .byte $00   ; 
- D 1 - I - 0x023165 08:B155: E7        .byte $E7   ; 
- D 1 - I - 0x023166 08:B156: 88        .byte $88   ; 
- D 1 - I - 0x023167 08:B157: EC        .byte $EC   ; 
- D 1 - I - 0x023168 08:B158: 11        .byte $11   ; 
- D 1 - I - 0x023169 08:B159: E4        .byte $E4   ; 
- D 1 - I - 0x02316A 08:B15A: 41        .byte $41   ; 
- D 1 - I - 0x02316B 08:B15B: F3        .byte $F3   ; 
- D 1 - I - 0x02316C 08:B15C: 41        .byte $41   ; 
- D 1 - I - 0x02316D 08:B15D: FF        .byte $FF   ; 
off_FD_B15E:
- D 1 - I - 0x02316E 08:B15E: EB        .byte $EB   ; 
- D 1 - I - 0x02316F 08:B15F: 54        .byte $54   ; 
- D 1 - I - 0x023170 08:B160: 02        .byte $02   ; 
- D 1 - I - 0x023171 08:B161: E2        .byte $E2   ; 
- D 1 - I - 0x023172 08:B162: A2        .byte $A2   ; 
- D 1 - I - 0x023173 08:B163: EB        .byte $EB   ; 
- D 1 - I - 0x023174 08:B164: 00        .byte $00   ; 
- D 1 - I - 0x023175 08:B165: 91        .byte $91   ; 
- D 1 - I - 0x023176 08:B166: 71        .byte $71   ; 
- D 1 - I - 0x023177 08:B167: 42        .byte $42   ; 
- D 1 - I - 0x023178 08:B168: 21        .byte $21   ; 
- D 1 - I - 0x023179 08:B169: 41        .byte $41   ; 
- D 1 - I - 0x02317A 08:B16A: 72        .byte $72   ; 
- D 1 - I - 0x02317B 08:B16B: 91        .byte $91   ; 
- D 1 - I - 0x02317C 08:B16C: B1        .byte $B1   ; 
- D 1 - I - 0x02317D 08:B16D: E3        .byte $E3   ; 
- D 1 - I - 0x02317E 08:B16E: 21        .byte $21   ; 
- D 1 - I - 0x02317F 08:B16F: FF        .byte $FF   ; 
off_FD_B170:
- D 1 - I - 0x023180 08:B170: E2        .byte $E2   ; 
- D 1 - I - 0x023181 08:B171: B3        .byte $B3   ; 
- D 1 - I - 0x023182 08:B172: 93        .byte $93   ; 
- D 1 - I - 0x023183 08:B173: 73        .byte $73   ; 
- D 1 - I - 0x023184 08:B174: 63        .byte $63   ; 
- D 1 - I - 0x023185 08:B175: 41        .byte $41   ; 
- D 1 - I - 0x023186 08:B176: F3        .byte $F3   ; 
- D 1 - I - 0x023187 08:B177: 41        .byte $41   ; 
- D 1 - I - 0x023188 08:B178: F0        .byte $F0   ; 
- D 1 - I - 0x023189 08:B179: 21        .byte $21   ; 
- D 1 - I - 0x02318A 08:B17A: F3        .byte $F3   ; 
- D 1 - I - 0x02318B 08:B17B: 21        .byte $21   ; 
- D 1 - I - 0x02318C 08:B17C: F0        .byte $F0   ; 
- D 1 - I - 0x02318D 08:B17D: 93        .byte $93   ; 
- D 1 - I - 0x02318E 08:B17E: 73        .byte $73   ; 
- D 1 - I - 0x02318F 08:B17F: 63        .byte $63   ; 
- D 1 - I - 0x023190 08:B180: 43        .byte $43   ; 
- D 1 - I - 0x023191 08:B181: 21        .byte $21   ; 
- D 1 - I - 0x023192 08:B182: F3        .byte $F3   ; 
- D 1 - I - 0x023193 08:B183: 21        .byte $21   ; 
- D 1 - I - 0x023194 08:B184: F0        .byte $F0   ; 
- D 1 - I - 0x023195 08:B185: 01        .byte $01   ; 
- D 1 - I - 0x023196 08:B186: F3        .byte $F3   ; 
- D 1 - I - 0x023197 08:B187: 01        .byte $01   ; 
- D 1 - I - 0x023198 08:B188: F0        .byte $F0   ; 
- D 1 - I - 0x023199 08:B189: FF        .byte $FF   ; 
off_FD_B18A:
- D 1 - I - 0x02319A 08:B18A: E1        .byte $E1   ; 
- D 1 - I - 0x02319B 08:B18B: DE        .byte $DE   ; 
- D 1 - I - 0x02319C 08:B18C: 44        .byte $44   ; 
- D 1 - I - 0x02319D 08:B18D: E2        .byte $E2   ; 
- D 1 - I - 0x02319E 08:B18E: 4F        .byte $4F   ; 
- D 1 - I - 0x02319F 08:B18F: E1        .byte $E1   ; 
- D 1 - I - 0x0231A0 08:B190: 44        .byte $44   ; 
- D 1 - I - 0x0231A1 08:B191: B4        .byte $B4   ; 
- D 1 - I - 0x0231A2 08:B192: A9        .byte $A9   ; 
- D 1 - I - 0x0231A3 08:B193: B7        .byte $B7   ; 
- D 1 - I - 0x0231A4 08:B194: 96        .byte $96   ; 
- D 1 - I - 0x0231A5 08:B195: 74        .byte $74   ; 
- D 1 - I - 0x0231A6 08:B196: 24        .byte $24   ; 
- D 1 - I - 0x0231A7 08:B197: 4F        .byte $4F   ; 
- D 1 - I - 0x0231A8 08:B198: E2        .byte $E2   ; 
- D 1 - I - 0x0231A9 08:B199: 4F        .byte $4F   ; 
- D 1 - I - 0x0231AA 08:B19A: E1        .byte $E1   ; 
- D 1 - I - 0x0231AB 08:B19B: 44        .byte $44   ; 
- D 1 - I - 0x0231AC 08:B19C: DE        .byte $DE   ; 
- D 1 - I - 0x0231AD 08:B19D: E2        .byte $E2   ; 
- D 1 - I - 0x0231AE 08:B19E: 21        .byte $21   ; 
- D 1 - I - 0x0231AF 08:B19F: E1        .byte $E1   ; 
- D 1 - I - 0x0231B0 08:B1A0: 41        .byte $41   ; 
- D 1 - I - 0x0231B1 08:B1A1: E7        .byte $E7   ; 
- D 1 - I - 0x0231B2 08:B1A2: 1A        .byte $1A   ; 
- D 1 - I - 0x0231B3 08:B1A3: EC        .byte $EC   ; 
- D 1 - I - 0x0231B4 08:B1A4: 00        .byte $00   ; 
- D 1 - I - 0x0231B5 08:B1A5: EB        .byte $EB   ; 
- D 1 - I - 0x0231B6 08:B1A6: 00        .byte $00   ; 
- D 1 - I - 0x0231B7 08:B1A7: E2        .byte $E2   ; 
- D 1 - I - 0x0231B8 08:B1A8: 41        .byte $41   ; 
- D 1 - I - 0x0231B9 08:B1A9: F2        .byte $F2   ; 
- D 1 - I - 0x0231BA 08:B1AA: 41        .byte $41   ; 
- D 1 - I - 0x0231BB 08:B1AB: F3        .byte $F3   ; 
- D 1 - I - 0x0231BC 08:B1AC: 41        .byte $41   ; 
- D 1 - I - 0x0231BD 08:B1AD: F4        .byte $F4   ; 
- D 1 - I - 0x0231BE 08:B1AE: 41        .byte $41   ; 
- D 1 - I - 0x0231BF 08:B1AF: F0        .byte $F0   ; 
- D 1 - I - 0x0231C0 08:B1B0: E4        .byte $E4   ; 
- D 1 - I - 0x0231C1 08:B1B1: 41        .byte $41   ; 
- D 1 - I - 0x0231C2 08:B1B2: F2        .byte $F2   ; 
- D 1 - I - 0x0231C3 08:B1B3: 41        .byte $41   ; 
- D 1 - I - 0x0231C4 08:B1B4: F3        .byte $F3   ; 
- D 1 - I - 0x0231C5 08:B1B5: 41        .byte $41   ; 
- D 1 - I - 0x0231C6 08:B1B6: F4        .byte $F4   ; 
- D 1 - I - 0x0231C7 08:B1B7: 41        .byte $41   ; 
- D 1 - I - 0x0231C8 08:B1B8: F5        .byte $F5   ; 
- D 1 - I - 0x0231C9 08:B1B9: 41        .byte $41   ; 
- D 1 - I - 0x0231CA 08:B1BA: FF        .byte $FF   ; 
off_FD_B1BB:
- D 1 - I - 0x0231CB 08:B1BB: D8        .byte $D8   ; 
- D 1 - I - 0x0231CC 08:B1BC: 04        .byte $04   ; 
- D 1 - I - 0x0231CD 08:B1BD: FB        .byte $FB   ; 
- D 1 - I - 0x0231CE 08:B1BE: E1        .byte $E1   ; 
- D 1 - I - 0x0231CF 08:B1BF: DE        .byte $DE   ; 
- D 1 - I - 0x0231D0 08:B1C0: 64        .byte $64   ; 
- D 1 - I - 0x0231D1 08:B1C1: 74        .byte $74   ; 
- D 1 - I - 0x0231D2 08:B1C2: B4        .byte $B4   ; 
- D 1 - I - 0x0231D3 08:B1C3: 64        .byte $64   ; 
- D 1 - I - 0x0231D4 08:B1C4: DE        .byte $DE   ; 
- D 1 - I - 0x0231D5 08:B1C5: FE        .byte $FE   ; 
- D 1 - I - 0x0231D6 08:B1C6: 04        .byte $04   ; 
- D 1 - I - 0x0231D7 08:B1C7: FF        .byte $FF   ; 
off_FD_B1C8:
- D 1 - I - 0x0231D8 08:B1C8: D8        .byte $D8   ; 
- D 1 - I - 0x0231D9 08:B1C9: 04        .byte $04   ; 
- D 1 - I - 0x0231DA 08:B1CA: E0        .byte $E0   ; 
- D 1 - I - 0x0231DB 08:B1CB: B1        .byte $B1   ; 
- D 1 - I - 0x0231DC 08:B1CC: E1        .byte $E1   ; 
- D 1 - I - 0x0231DD 08:B1CD: B1        .byte $B1   ; 
- D 1 - I - 0x0231DE 08:B1CE: E0        .byte $E0   ; 
- D 1 - I - 0x0231DF 08:B1CF: B1        .byte $B1   ; 
- D 1 - I - 0x0231E0 08:B1D0: E1        .byte $E1   ; 
- D 1 - I - 0x0231E1 08:B1D1: 91        .byte $91   ; 
- D 1 - I - 0x0231E2 08:B1D2: E0        .byte $E0   ; 
- D 1 - I - 0x0231E3 08:B1D3: B1        .byte $B1   ; 
- D 1 - I - 0x0231E4 08:B1D4: E1        .byte $E1   ; 
- D 1 - I - 0x0231E5 08:B1D5: B1        .byte $B1   ; 
- D 1 - I - 0x0231E6 08:B1D6: E0        .byte $E0   ; 
- D 1 - I - 0x0231E7 08:B1D7: B1        .byte $B1   ; 
- D 1 - I - 0x0231E8 08:B1D8: E1        .byte $E1   ; 
- D 1 - I - 0x0231E9 08:B1D9: 21        .byte $21   ; 
- D 1 - I - 0x0231EA 08:B1DA: E0        .byte $E0   ; 
- D 1 - I - 0x0231EB 08:B1DB: B1        .byte $B1   ; 
- D 1 - I - 0x0231EC 08:B1DC: E1        .byte $E1   ; 
- D 1 - I - 0x0231ED 08:B1DD: B1        .byte $B1   ; 
- D 1 - I - 0x0231EE 08:B1DE: E0        .byte $E0   ; 
- D 1 - I - 0x0231EF 08:B1DF: B1        .byte $B1   ; 
- D 1 - I - 0x0231F0 08:B1E0: E1        .byte $E1   ; 
- D 1 - I - 0x0231F1 08:B1E1: 91        .byte $91   ; 
- D 1 - I - 0x0231F2 08:B1E2: E0        .byte $E0   ; 
- D 1 - I - 0x0231F3 08:B1E3: B1        .byte $B1   ; 
- D 1 - I - 0x0231F4 08:B1E4: E1        .byte $E1   ; 
- D 1 - I - 0x0231F5 08:B1E5: B1        .byte $B1   ; 
- D 1 - I - 0x0231F6 08:B1E6: B1        .byte $B1   ; 
- D 1 - I - 0x0231F7 08:B1E7: B1        .byte $B1   ; 
- D 1 - I - 0x0231F8 08:B1E8: FF        .byte $FF   ; 
off_FD_B1E9:
- D 1 - I - 0x0231F9 08:B1E9: D8        .byte $D8   ; 
- D 1 - I - 0x0231FA 08:B1EA: 04        .byte $04   ; 
- D 1 - I - 0x0231FB 08:B1EB: E1        .byte $E1   ; 
- D 1 - I - 0x0231FC 08:B1EC: DE        .byte $DE   ; 
- D 1 - I - 0x0231FD 08:B1ED: 44        .byte $44   ; 
- D 1 - I - 0x0231FE 08:B1EE: E2        .byte $E2   ; 
- D 1 - I - 0x0231FF 08:B1EF: 4F        .byte $4F   ; 
- D 1 - I - 0x023200 08:B1F0: E1        .byte $E1   ; 
- D 1 - I - 0x023201 08:B1F1: 44        .byte $44   ; 
- D 1 - I - 0x023202 08:B1F2: B4        .byte $B4   ; 
- D 1 - I - 0x023203 08:B1F3: A9        .byte $A9   ; 
- D 1 - I - 0x023204 08:B1F4: B7        .byte $B7   ; 
- D 1 - I - 0x023205 08:B1F5: 96        .byte $96   ; 
- D 1 - I - 0x023206 08:B1F6: 74        .byte $74   ; 
- D 1 - I - 0x023207 08:B1F7: 24        .byte $24   ; 
- D 1 - I - 0x023208 08:B1F8: 4F        .byte $4F   ; 
- D 1 - I - 0x023209 08:B1F9: E2        .byte $E2   ; 
- D 1 - I - 0x02320A 08:B1FA: 4F        .byte $4F   ; 
- D 1 - I - 0x02320B 08:B1FB: E1        .byte $E1   ; 
- D 1 - I - 0x02320C 08:B1FC: 44        .byte $44   ; 
- D 1 - I - 0x02320D 08:B1FD: E2        .byte $E2   ; 
- D 1 - I - 0x02320E 08:B1FE: DE        .byte $DE   ; 
- D 1 - I - 0x02320F 08:B1FF: 21        .byte $21   ; 
- D 1 - I - 0x023210 08:B200: E1        .byte $E1   ; 
- D 1 - I - 0x023211 08:B201: 41        .byte $41   ; 
- D 1 - I - 0x023212 08:B202: E2        .byte $E2   ; 
- D 1 - I - 0x023213 08:B203: 41        .byte $41   ; 
- D 1 - I - 0x023214 08:B204: C8        .byte $C8   ; 
- D 1 - I - 0x023215 08:B205: FF        .byte $FF   ; 
off_FD_B206:
- D 1 - I - 0x023216 08:B206: D8        .byte $D8   ; 
- D 1 - I - 0x023217 08:B207: FB        .byte $FB   ; 
- D 1 - I - 0x023218 08:B208: B1        .byte $B1   ; 
- D 1 - I - 0x023219 08:B209: 11        .byte $11   ; 
- D 1 - I - 0x02321A 08:B20A: A1        .byte $A1   ; 
- D 1 - I - 0x02321B 08:B20B: 11        .byte $11   ; 
- D 1 - I - 0x02321C 08:B20C: FE        .byte $FE   ; 
- D 1 - I - 0x02321D 08:B20D: 07        .byte $07   ; 
- D 1 - I - 0x02321E 08:B20E: FF        .byte $FF   ; 
off_FD_B20F:
- D 1 - I - 0x02321F 08:B20F: D4        .byte $D4   ; 
- D 1 - I - 0x023220 08:B210: DE        .byte $DE   ; 
- D 1 - I - 0x023221 08:B211: 99        .byte $99   ; 
- D 1 - I - 0x023222 08:B212: 88        .byte $88   ; 
- D 1 - I - 0x023223 08:B213: 77        .byte $77   ; 
- D 1 - I - 0x023224 08:B214: 66        .byte $66   ; 
- D 1 - I - 0x023225 08:B215: DE        .byte $DE   ; 
- D 1 - I - 0x023226 08:B216: FF        .byte $FF   ; 



_off001_B217_39:
- D 1 - I - 0x023227 08:B217: E9        .byte $E9   ; 
- D 1 - I - 0x023228 08:B218: 31        .byte $31   ; 
- D 1 - I - 0x023229 08:B219: D6        .byte $D6   ; 
- D 1 - I - 0x02322A 08:B21A: 77        .byte $77   ; 
- D 1 - I - 0x02322B 08:B21B: 83        .byte $83   ; 
- D 1 - I - 0x02322C 08:B21C: 43        .byte $43   ; 
- D 1 - I - 0x02322D 08:B21D: FD        .byte $FD   ; 
- D 1 - I - 0x02322E 08:B21E: 7B B3     .word off_FD_B37B
- D 1 - I - 0x023230 08:B220: EB        .byte $EB   ; 
- D 1 - I - 0x023231 08:B221: 58        .byte $58   ; 
- D 1 - I - 0x023232 08:B222: 33        .byte $33   ; 
- D 1 - I - 0x023233 08:B223: 39        .byte $39   ; 
- D 1 - I - 0x023234 08:B224: EB        .byte $EB   ; 
- D 1 - I - 0x023235 08:B225: 00        .byte $00   ; 
- D 1 - I - 0x023236 08:B226: EE        .byte $EE   ; 
- D 1 - I - 0x023237 08:B227: 05        .byte $05   ; 
- D 1 - I - 0x023238 08:B228: FD        .byte $FD   ; 
- D 1 - I - 0x023239 08:B229: 88 B3     .word off_FD_B388
- D 1 - I - 0x02323B 08:B22B: EE        .byte $EE   ; 
- D 1 - I - 0x02323C 08:B22C: 00        .byte $00   ; 
- D 1 - I - 0x02323D 08:B22D: EB        .byte $EB   ; 
- D 1 - I - 0x02323E 08:B22E: 58        .byte $58   ; 
- D 1 - I - 0x02323F 08:B22F: 01        .byte $01   ; 
- D 1 - I - 0x023240 08:B230: 82        .byte $82   ; 
- D 1 - I - 0x023241 08:B231: EB        .byte $EB   ; 
- D 1 - I - 0x023242 08:B232: 00        .byte $00   ; 
- D 1 - I - 0x023243 08:B233: 31        .byte $31   ; 
- D 1 - I - 0x023244 08:B234: 81        .byte $81   ; 
- D 1 - I - 0x023245 08:B235: EB        .byte $EB   ; 
- D 1 - I - 0x023246 08:B236: 58        .byte $58   ; 
- D 1 - I - 0x023247 08:B237: 01        .byte $01   ; 
- D 1 - I - 0x023248 08:B238: A2        .byte $A2   ; 
- D 1 - I - 0x023249 08:B239: EB        .byte $EB   ; 
- D 1 - I - 0x02324A 08:B23A: 00        .byte $00   ; 
- D 1 - I - 0x02324B 08:B23B: 51        .byte $51   ; 
- D 1 - I - 0x02324C 08:B23C: 81        .byte $81   ; 
- D 1 - I - 0x02324D 08:B23D: A1        .byte $A1   ; 
- D 1 - I - 0x02324E 08:B23E: FD        .byte $FD   ; 
- D 1 - I - 0x02324F 08:B23F: 95 B3     .word off_FD_B395
- D 1 - I - 0x023251 08:B241: E9        .byte $E9   ; 
- D 1 - I - 0x023252 08:B242: 00        .byte $00   ; 
- D 1 - I - 0x023253 08:B243: FD        .byte $FD   ; 
- D 1 - I - 0x023254 08:B244: B9 B3     .word off_FD_B3B9
- D 1 - I - 0x023256 08:B246: E3        .byte $E3   ; 
- D 1 - I - 0x023257 08:B247: 04        .byte $04   ; 
- D 1 - I - 0x023258 08:B248: FD        .byte $FD   ; 
- D 1 - I - 0x023259 08:B249: 04 B4     .word off_FD_B404
- D 1 - I - 0x02325B 08:B24B: FD        .byte $FD   ; 
- D 1 - I - 0x02325C 08:B24C: B9 B3     .word off_FD_B3B9
- D 1 - I - 0x02325E 08:B24E: B4        .byte $B4   ; 
- D 1 - I - 0x02325F 08:B24F: FE        .byte $FE   ; 
- D 1 - I - 0x023260 08:B250: FF        .byte $FF   ; 
- D 1 - I - 0x023261 08:B251: 90 B2     .word off_FF_B290



_off001_B253_38:
- D 1 - I - 0x023263 08:B253: EE        .byte $EE   ; 
- D 1 - I - 0x023264 08:B254: 85        .byte $85   ; 
- D 1 - I - 0x023265 08:B255: D6        .byte $D6   ; 
- D 1 - I - 0x023266 08:B256: 75        .byte $75   ; 
- D 1 - I - 0x023267 08:B257: 83        .byte $83   ; 
- D 1 - I - 0x023268 08:B258: 13        .byte $13   ; 
- D 1 - I - 0x023269 08:B259: FD        .byte $FD   ; 
- D 1 - I - 0x02326A 08:B25A: 7B B3     .word off_FD_B37B
- D 1 - I - 0x02326C 08:B25C: EE        .byte $EE   ; 
- D 1 - I - 0x02326D 08:B25D: 00        .byte $00   ; 
- D 1 - I - 0x02326E 08:B25E: E2        .byte $E2   ; 
- D 1 - I - 0x02326F 08:B25F: A2        .byte $A2   ; 
- D 1 - I - 0x023270 08:B260: E9        .byte $E9   ; 
- D 1 - I - 0x023271 08:B261: B1        .byte $B1   ; 
- D 1 - I - 0x023272 08:B262: E3        .byte $E3   ; 
- D 1 - I - 0x023273 08:B263: 01        .byte $01   ; 
- D 1 - I - 0x023274 08:B264: E2        .byte $E2   ; 
- D 1 - I - 0x023275 08:B265: A1        .byte $A1   ; 
- D 1 - I - 0x023276 08:B266: 71        .byte $71   ; 
- D 1 - I - 0x023277 08:B267: 61        .byte $61   ; 
- D 1 - I - 0x023278 08:B268: 51        .byte $51   ; 
- D 1 - I - 0x023279 08:B269: 31        .byte $31   ; 
- D 1 - I - 0x02327A 08:B26A: 01        .byte $01   ; 
- D 1 - I - 0x02327B 08:B26B: E9        .byte $E9   ; 
- D 1 - I - 0x02327C 08:B26C: 00        .byte $00   ; 
- D 1 - I - 0x02327D 08:B26D: FD        .byte $FD   ; 
- D 1 - I - 0x02327E 08:B26E: 7B B3     .word off_FD_B37B
- D 1 - I - 0x023280 08:B270: 02        .byte $02   ; 
- D 1 - I - 0x023281 08:B271: 01        .byte $01   ; 
- D 1 - I - 0x023282 08:B272: 01        .byte $01   ; 
- D 1 - I - 0x023283 08:B273: 22        .byte $22   ; 
- D 1 - I - 0x023284 08:B274: E2        .byte $E2   ; 
- D 1 - I - 0x023285 08:B275: A1        .byte $A1   ; 
- D 1 - I - 0x023286 08:B276: E3        .byte $E3   ; 
- D 1 - I - 0x023287 08:B277: 21        .byte $21   ; 
- D 1 - I - 0x023288 08:B278: 21        .byte $21   ; 
- D 1 - I - 0x023289 08:B279: EE        .byte $EE   ; 
- D 1 - I - 0x02328A 08:B27A: 85        .byte $85   ; 
- D 1 - I - 0x02328B 08:B27B: FD        .byte $FD   ; 
- D 1 - I - 0x02328C 08:B27C: 95 B3     .word off_FD_B395
- D 1 - I - 0x02328E 08:B27E: EE        .byte $EE   ; 
- D 1 - I - 0x02328F 08:B27F: 00        .byte $00   ; 
- D 1 - I - 0x023290 08:B280: FD        .byte $FD   ; 
- D 1 - I - 0x023291 08:B281: 22 B4     .word off_FD_B422
- D 1 - I - 0x023293 08:B283: FD        .byte $FD   ; 
- D 1 - I - 0x023294 08:B284: 58 B4     .word off_FD_B458
- D 1 - I - 0x023296 08:B286: FD        .byte $FD   ; 
- D 1 - I - 0x023297 08:B287: 22 B4     .word off_FD_B422
- D 1 - I - 0x023299 08:B289: FD        .byte $FD   ; 
- D 1 - I - 0x02329A 08:B28A: 7B B4     .word off_FD_B47B
- D 1 - I - 0x02329C 08:B28C: E8        .byte $E8   ; 
- D 1 - I - 0x02329D 08:B28D: 06        .byte $06   ; 
- D 1 - I - 0x02329E 08:B28E: EE        .byte $EE   ; 
- D 1 - I - 0x02329F 08:B28F: 85        .byte $85   ; 
off_FF_B290:
- D 1 - I - 0x0232A0 08:B290: EC        .byte $EC   ; 
- D 1 - I - 0x0232A1 08:B291: 11        .byte $11   ; 
- D 1 - I - 0x0232A2 08:B292: E2        .byte $E2   ; 
- D 1 - I - 0x0232A3 08:B293: 01        .byte $01   ; 
- D 1 - I - 0x0232A4 08:B294: E1        .byte $E1   ; 
- D 1 - I - 0x0232A5 08:B295: DE        .byte $DE   ; 
- D 1 - I - 0x0232A6 08:B296: 7A        .byte $7A   ; 
- D 1 - I - 0x0232A7 08:B297: E2        .byte $E2   ; 
- D 1 - I - 0x0232A8 08:B298: 03        .byte $03   ; 
- D 1 - I - 0x0232A9 08:B299: E1        .byte $E1   ; 
- D 1 - I - 0x0232AA 08:B29A: AF        .byte $AF   ; 
- D 1 - I - 0x0232AB 08:B29B: E2        .byte $E2   ; 
- D 1 - I - 0x0232AC 08:B29C: 03        .byte $03   ; 
- D 1 - I - 0x0232AD 08:B29D: 57        .byte $57   ; 
- D 1 - I - 0x0232AE 08:B29E: 35        .byte $35   ; 
- D 1 - I - 0x0232AF 08:B29F: 7A        .byte $7A   ; 
- D 1 - I - 0x0232B0 08:B2A0: E3        .byte $E3   ; 
- D 1 - I - 0x0232B1 08:B2A1: 02        .byte $02   ; 
- D 1 - I - 0x0232B2 08:B2A2: 30        .byte $30   ; 
- D 1 - I - 0x0232B3 08:B2A3: DE        .byte $DE   ; 
- D 1 - I - 0x0232B4 08:B2A4: 31        .byte $31   ; 
- D 1 - I - 0x0232B5 08:B2A5: EB        .byte $EB   ; 
- D 1 - I - 0x0232B6 08:B2A6: 58        .byte $58   ; 
- D 1 - I - 0x0232B7 08:B2A7: 13        .byte $13   ; 
- D 1 - I - 0x0232B8 08:B2A8: 55        .byte $55   ; 
- D 1 - I - 0x0232B9 08:B2A9: EB        .byte $EB   ; 
- D 1 - I - 0x0232BA 08:B2AA: 00        .byte $00   ; 
- D 1 - I - 0x0232BB 08:B2AB: 71        .byte $71   ; 
- D 1 - I - 0x0232BC 08:B2AC: 71        .byte $71   ; 
- D 1 - I - 0x0232BD 08:B2AD: F3        .byte $F3   ; 
- D 1 - I - 0x0232BE 08:B2AE: 71        .byte $71   ; 
- D 1 - I - 0x0232BF 08:B2AF: F0        .byte $F0   ; 
- D 1 - I - 0x0232C0 08:B2B0: A2        .byte $A2   ; 
- D 1 - I - 0x0232C1 08:B2B1: 71        .byte $71   ; 
- D 1 - I - 0x0232C2 08:B2B2: B1        .byte $B1   ; 
- D 1 - I - 0x0232C3 08:B2B3: E4        .byte $E4   ; 
- D 1 - I - 0x0232C4 08:B2B4: 01        .byte $01   ; 
- D 1 - I - 0x0232C5 08:B2B5: E8        .byte $E8   ; 
- D 1 - I - 0x0232C6 08:B2B6: 01        .byte $01   ; 
- D 1 - I - 0x0232C7 08:B2B7: E3        .byte $E3   ; 
- D 1 - I - 0x0232C8 08:B2B8: DE        .byte $DE   ; 
- D 1 - I - 0x0232C9 08:B2B9: A7        .byte $A7   ; 
- D 1 - I - 0x0232CA 08:B2BA: 65        .byte $65   ; 
- D 1 - I - 0x0232CB 08:B2BB: 30        .byte $30   ; 
- D 1 - I - 0x0232CC 08:B2BC: DE        .byte $DE   ; 
- D 1 - I - 0x0232CD 08:B2BD: E8        .byte $E8   ; 
- D 1 - I - 0x0232CE 08:B2BE: 06        .byte $06   ; 
- D 1 - I - 0x0232CF 08:B2BF: E2        .byte $E2   ; 
- D 1 - I - 0x0232D0 08:B2C0: F3        .byte $F3   ; 
- D 1 - I - 0x0232D1 08:B2C1: 01        .byte $01   ; 
- D 1 - I - 0x0232D2 08:B2C2: F4        .byte $F4   ; 
- D 1 - I - 0x0232D3 08:B2C3: 01        .byte $01   ; 
- D 1 - I - 0x0232D4 08:B2C4: F5        .byte $F5   ; 
- D 1 - I - 0x0232D5 08:B2C5: 01        .byte $01   ; 
- D 1 - I - 0x0232D6 08:B2C6: F0        .byte $F0   ; 
- D 1 - I - 0x0232D7 08:B2C7: E7        .byte $E7   ; 
- D 1 - I - 0x0232D8 08:B2C8: 83        .byte $83   ; 
- D 1 - I - 0x0232D9 08:B2C9: EB        .byte $EB   ; 
- D 1 - I - 0x0232DA 08:B2CA: 51        .byte $51   ; 
- D 1 - I - 0x0232DB 08:B2CB: 36        .byte $36   ; 
- D 1 - I - 0x0232DC 08:B2CC: E1        .byte $E1   ; 
- D 1 - I - 0x0232DD 08:B2CD: 00        .byte $00   ; 
- D 1 - I - 0x0232DE 08:B2CE: FF        .byte $FF   ; 



_off001_B2CF_3A:
- D 1 - I - 0x0232DF 08:B2CF: D6        .byte $D6   ; 
- D 1 - I - 0x0232E0 08:B2D0: 04        .byte $04   ; 
- D 1 - I - 0x0232E1 08:B2D1: E1        .byte $E1   ; 
- D 1 - I - 0x0232E2 08:B2D2: 02        .byte $02   ; 
- D 1 - I - 0x0232E3 08:B2D3: E2        .byte $E2   ; 
- D 1 - I - 0x0232E4 08:B2D4: 01        .byte $01   ; 
- D 1 - I - 0x0232E5 08:B2D5: E1        .byte $E1   ; 
- D 1 - I - 0x0232E6 08:B2D6: 02        .byte $02   ; 
- D 1 - I - 0x0232E7 08:B2D7: 01        .byte $01   ; 
- D 1 - I - 0x0232E8 08:B2D8: 01        .byte $01   ; 
- D 1 - I - 0x0232E9 08:B2D9: 32        .byte $32   ; 
- D 1 - I - 0x0232EA 08:B2DA: 31        .byte $31   ; 
- D 1 - I - 0x0232EB 08:B2DB: E2        .byte $E2   ; 
- D 1 - I - 0x0232EC 08:B2DC: 31        .byte $31   ; 
- D 1 - I - 0x0232ED 08:B2DD: E1        .byte $E1   ; 
- D 1 - I - 0x0232EE 08:B2DE: 32        .byte $32   ; 
- D 1 - I - 0x0232EF 08:B2DF: DE        .byte $DE   ; 
- D 1 - I - 0x0232F0 08:B2E0: 33        .byte $33   ; 
- D 1 - I - 0x0232F1 08:B2E1: 35        .byte $35   ; 
- D 1 - I - 0x0232F2 08:B2E2: 5F        .byte $5F   ; 
- D 1 - I - 0x0232F3 08:B2E3: E2        .byte $E2   ; 
- D 1 - I - 0x0232F4 08:B2E4: 5F        .byte $5F   ; 
- D 1 - I - 0x0232F5 08:B2E5: E1        .byte $E1   ; 
- D 1 - I - 0x0232F6 08:B2E6: 55        .byte $55   ; 
- D 1 - I - 0x0232F7 08:B2E7: 55        .byte $55   ; 
- D 1 - I - 0x0232F8 08:B2E8: DE        .byte $DE   ; 
- D 1 - I - 0x0232F9 08:B2E9: 82        .byte $82   ; 
- D 1 - I - 0x0232FA 08:B2EA: 81        .byte $81   ; 
- D 1 - I - 0x0232FB 08:B2EB: 81        .byte $81   ; 
- D 1 - I - 0x0232FC 08:B2EC: A2        .byte $A2   ; 
- D 1 - I - 0x0232FD 08:B2ED: DE        .byte $DE   ; 
- D 1 - I - 0x0232FE 08:B2EE: AA        .byte $AA   ; 
- D 1 - I - 0x0232FF 08:B2EF: A0        .byte $A0   ; 
- D 1 - I - 0x023300 08:B2F0: 00        .byte $00   ; 
- D 1 - I - 0x023301 08:B2F1: 0F        .byte $0F   ; 
- D 1 - I - 0x023302 08:B2F2: E0        .byte $E0   ; 
- D 1 - I - 0x023303 08:B2F3: AF        .byte $AF   ; 
- D 1 - I - 0x023304 08:B2F4: E1        .byte $E1   ; 
- D 1 - I - 0x023305 08:B2F5: 0C        .byte $0C   ; 
- D 1 - I - 0x023306 08:B2F6: 3C        .byte $3C   ; 
- D 1 - I - 0x023307 08:B2F7: 5C        .byte $5C   ; 
- D 1 - I - 0x023308 08:B2F8: DE        .byte $DE   ; 
- D 1 - I - 0x023309 08:B2F9: 61        .byte $61   ; 
- D 1 - I - 0x02330A 08:B2FA: E8        .byte $E8   ; 
- D 1 - I - 0x02330B 08:B2FB: 01        .byte $01   ; 
- D 1 - I - 0x02330C 08:B2FC: 76        .byte $76   ; 
- D 1 - I - 0x02330D 08:B2FD: DE        .byte $DE   ; 
- D 1 - I - 0x02330E 08:B2FE: 53        .byte $53   ; 
- D 1 - I - 0x02330F 08:B2FF: 0F        .byte $0F   ; 
- D 1 - I - 0x023310 08:B300: E1        .byte $E1   ; 
- D 1 - I - 0x023311 08:B301: A7        .byte $A7   ; 
- D 1 - I - 0x023312 08:B302: 65        .byte $65   ; 
- D 1 - I - 0x023313 08:B303: 30        .byte $30   ; 
- D 1 - I - 0x023314 08:B304: DE        .byte $DE   ; 
- D 1 - I - 0x023315 08:B305: C9        .byte $C9   ; 
- D 1 - I - 0x023316 08:B306: FD        .byte $FD   ; 
- D 1 - I - 0x023317 08:B307: 94 B4     .word off_FD_B494
- D 1 - I - 0x023319 08:B309: FD        .byte $FD   ; 
- D 1 - I - 0x02331A 08:B30A: DE B4     .word off_FD_B4DE
- D 1 - I - 0x02331C 08:B30C: FD        .byte $FD   ; 
- D 1 - I - 0x02331D 08:B30D: 94 B4     .word off_FD_B494
- D 1 - I - 0x02331F 08:B30F: D6        .byte $D6   ; 
- D 1 - I - 0x023320 08:B310: 06        .byte $06   ; 
- D 1 - I - 0x023321 08:B311: E1        .byte $E1   ; 
- D 1 - I - 0x023322 08:B312: 01        .byte $01   ; 
- D 1 - I - 0x023323 08:B313: E0        .byte $E0   ; 
- D 1 - I - 0x023324 08:B314: DE        .byte $DE   ; 
- D 1 - I - 0x023325 08:B315: 7A        .byte $7A   ; 
- D 1 - I - 0x023326 08:B316: E1        .byte $E1   ; 
- D 1 - I - 0x023327 08:B317: 03        .byte $03   ; 
- D 1 - I - 0x023328 08:B318: E0        .byte $E0   ; 
- D 1 - I - 0x023329 08:B319: AF        .byte $AF   ; 
- D 1 - I - 0x02332A 08:B31A: E1        .byte $E1   ; 
- D 1 - I - 0x02332B 08:B31B: 03        .byte $03   ; 
- D 1 - I - 0x02332C 08:B31C: 57        .byte $57   ; 
- D 1 - I - 0x02332D 08:B31D: 35        .byte $35   ; 
- D 1 - I - 0x02332E 08:B31E: 7A        .byte $7A   ; 
- D 1 - I - 0x02332F 08:B31F: E2        .byte $E2   ; 
- D 1 - I - 0x023330 08:B320: 02        .byte $02   ; 
- D 1 - I - 0x023331 08:B321: 30        .byte $30   ; 
- D 1 - I - 0x023332 08:B322: DE        .byte $DE   ; 
- D 1 - I - 0x023333 08:B323: 31        .byte $31   ; 
- D 1 - I - 0x023334 08:B324: 55        .byte $55   ; 
- D 1 - I - 0x023335 08:B325: E1        .byte $E1   ; 
- D 1 - I - 0x023336 08:B326: 71        .byte $71   ; 
- D 1 - I - 0x023337 08:B327: 71        .byte $71   ; 
- D 1 - I - 0x023338 08:B328: C1        .byte $C1   ; 
- D 1 - I - 0x023339 08:B329: A2        .byte $A2   ; 
- D 1 - I - 0x02333A 08:B32A: 71        .byte $71   ; 
- D 1 - I - 0x02333B 08:B32B: A1        .byte $A1   ; 
- D 1 - I - 0x02333C 08:B32C: E2        .byte $E2   ; 
- D 1 - I - 0x02333D 08:B32D: 01        .byte $01   ; 
- D 1 - I - 0x02333E 08:B32E: D1        .byte $D1   ; 
- D 1 - I - 0x02333F 08:B32F: 00        .byte $00   ; 
- D 1 - I - 0x023340 08:B330: E1        .byte $E1   ; 
- D 1 - I - 0x023341 08:B331: DE        .byte $DE   ; 
- D 1 - I - 0x023342 08:B332: A7        .byte $A7   ; 
- D 1 - I - 0x023343 08:B333: 65        .byte $65   ; 
- D 1 - I - 0x023344 08:B334: 30        .byte $30   ; 
- D 1 - I - 0x023345 08:B335: DE        .byte $DE   ; 
- D 1 - I - 0x023346 08:B336: E8        .byte $E8   ; 
- D 1 - I - 0x023347 08:B337: 06        .byte $06   ; 
- D 1 - I - 0x023348 08:B338: C3        .byte $C3   ; 
- D 1 - I - 0x023349 08:B339: E7        .byte $E7   ; 
- D 1 - I - 0x02334A 08:B33A: 03        .byte $03   ; 
- D 1 - I - 0x02334B 08:B33B: EB        .byte $EB   ; 
- D 1 - I - 0x02334C 08:B33C: 51        .byte $51   ; 
- D 1 - I - 0x02334D 08:B33D: 32        .byte $32   ; 
- D 1 - I - 0x02334E 08:B33E: 00        .byte $00   ; 
- D 1 - I - 0x02334F 08:B33F: FF        .byte $FF   ; 



_off001_B340_3B:
- D 1 - I - 0x023350 08:B340: EF        .byte $EF   ; 
- D 1 - I - 0x023351 08:B341: 07        .byte $07   ; 
- D 1 - I - 0x023352 08:B342: D6        .byte $D6   ; 
- D 1 - I - 0x023353 08:B343: FB        .byte $FB   ; 
- D 1 - I - 0x023354 08:B344: FD        .byte $FD   ; 
- D 1 - I - 0x023355 08:B345: EC B4     .word off_FD_B4EC
- D 1 - I - 0x023357 08:B347: FE        .byte $FE   ; 
- D 1 - I - 0x023358 08:B348: 02        .byte $02   ; 
- D 1 - I - 0x023359 08:B349: 91        .byte $91   ; 
- D 1 - I - 0x02335A 08:B34A: 91        .byte $91   ; 
- D 1 - I - 0x02335B 08:B34B: 81        .byte $81   ; 
- D 1 - I - 0x02335C 08:B34C: 71        .byte $71   ; 
- D 1 - I - 0x02335D 08:B34D: 61        .byte $61   ; 
- D 1 - I - 0x02335E 08:B34E: 62        .byte $62   ; 
- D 1 - I - 0x02335F 08:B34F: 42        .byte $42   ; 
- D 1 - I - 0x023360 08:B350: B2        .byte $B2   ; 
- D 1 - I - 0x023361 08:B351: 41        .byte $41   ; 
- D 1 - I - 0x023362 08:B352: 42        .byte $42   ; 
- D 1 - I - 0x023363 08:B353: 22        .byte $22   ; 
- D 1 - I - 0x023364 08:B354: FB        .byte $FB   ; 
- D 1 - I - 0x023365 08:B355: FD        .byte $FD   ; 
- D 1 - I - 0x023366 08:B356: EC B4     .word off_FD_B4EC
- D 1 - I - 0x023368 08:B358: FE        .byte $FE   ; 
- D 1 - I - 0x023369 08:B359: 03        .byte $03   ; 
- D 1 - I - 0x02336A 08:B35A: FD        .byte $FD   ; 
- D 1 - I - 0x02336B 08:B35B: F8 B4     .word off_FD_B4F8
- D 1 - I - 0x02336D 08:B35D: FB        .byte $FB   ; 
- D 1 - I - 0x02336E 08:B35E: FD        .byte $FD   ; 
- D 1 - I - 0x02336F 08:B35F: EC B4     .word off_FD_B4EC
- D 1 - I - 0x023371 08:B361: FE        .byte $FE   ; 
- D 1 - I - 0x023372 08:B362: 03        .byte $03   ; 
- D 1 - I - 0x023373 08:B363: D1        .byte $D1   ; 
- D 1 - I - 0x023374 08:B364: FB        .byte $FB   ; 
- D 1 - I - 0x023375 08:B365: B6        .byte $B6   ; 
- D 1 - I - 0x023376 08:B366: 16        .byte $16   ; 
- D 1 - I - 0x023377 08:B367: 16        .byte $16   ; 
- D 1 - I - 0x023378 08:B368: 16        .byte $16   ; 
- D 1 - I - 0x023379 08:B369: FE        .byte $FE   ; 
- D 1 - I - 0x02337A 08:B36A: 04        .byte $04   ; 
- D 1 - I - 0x02337B 08:B36B: B6        .byte $B6   ; 
- D 1 - I - 0x02337C 08:B36C: B6        .byte $B6   ; 
- D 1 - I - 0x02337D 08:B36D: 46        .byte $46   ; 
- D 1 - I - 0x02337E 08:B36E: 2C        .byte $2C   ; 
- D 1 - I - 0x02337F 08:B36F: 42        .byte $42   ; 
- D 1 - I - 0x023380 08:B370: 44        .byte $44   ; 
- D 1 - I - 0x023381 08:B371: 46        .byte $46   ; 
- D 1 - I - 0x023382 08:B372: 46        .byte $46   ; 
- D 1 - I - 0x023383 08:B373: 46        .byte $46   ; 
- D 1 - I - 0x023384 08:B374: 46        .byte $46   ; 
- D 1 - I - 0x023385 08:B375: 16        .byte $16   ; 
- D 1 - I - 0x023386 08:B376: 2C        .byte $2C   ; 
- D 1 - I - 0x023387 08:B377: 16        .byte $16   ; 
- D 1 - I - 0x023388 08:B378: 46        .byte $46   ; 
- D 1 - I - 0x023389 08:B379: 46        .byte $46   ; 
- D 1 - I - 0x02338A 08:B37A: FF        .byte $FF   ; 
off_FD_B37B:
- D 1 - I - 0x02338B 08:B37B: E3        .byte $E3   ; 
- D 1 - I - 0x02338C 08:B37C: 01        .byte $01   ; 
- D 1 - I - 0x02338D 08:B37D: E2        .byte $E2   ; 
- D 1 - I - 0x02338E 08:B37E: 51        .byte $51   ; 
- D 1 - I - 0x02338F 08:B37F: 71        .byte $71   ; 
- D 1 - I - 0x023390 08:B380: A1        .byte $A1   ; 
- D 1 - I - 0x023391 08:B381: E3        .byte $E3   ; 
- D 1 - I - 0x023392 08:B382: 01        .byte $01   ; 
- D 1 - I - 0x023393 08:B383: E2        .byte $E2   ; 
- D 1 - I - 0x023394 08:B384: A1        .byte $A1   ; 
- D 1 - I - 0x023395 08:B385: E3        .byte $E3   ; 
- D 1 - I - 0x023396 08:B386: 01        .byte $01   ; 
- D 1 - I - 0x023397 08:B387: FF        .byte $FF   ; 
off_FD_B388:
- D 1 - I - 0x023398 08:B388: E3        .byte $E3   ; 
- D 1 - I - 0x023399 08:B389: 01        .byte $01   ; 
- D 1 - I - 0x02339A 08:B38A: E2        .byte $E2   ; 
- D 1 - I - 0x02339B 08:B38B: 51        .byte $51   ; 
- D 1 - I - 0x02339C 08:B38C: 71        .byte $71   ; 
- D 1 - I - 0x02339D 08:B38D: A1        .byte $A1   ; 
- D 1 - I - 0x02339E 08:B38E: E3        .byte $E3   ; 
- D 1 - I - 0x02339F 08:B38F: 01        .byte $01   ; 
- D 1 - I - 0x0233A0 08:B390: E2        .byte $E2   ; 
- D 1 - I - 0x0233A1 08:B391: A1        .byte $A1   ; 
- D 1 - I - 0x0233A2 08:B392: E3        .byte $E3   ; 
- D 1 - I - 0x0233A3 08:B393: 01        .byte $01   ; 
- D 1 - I - 0x0233A4 08:B394: FF        .byte $FF   ; 
off_FD_B395:
- D 1 - I - 0x0233A5 08:B395: E3        .byte $E3   ; 
- D 1 - I - 0x0233A6 08:B396: 01        .byte $01   ; 
- D 1 - I - 0x0233A7 08:B397: 01        .byte $01   ; 
- D 1 - I - 0x0233A8 08:B398: 01        .byte $01   ; 
- D 1 - I - 0x0233A9 08:B399: 01        .byte $01   ; 
- D 1 - I - 0x0233AA 08:B39A: E2        .byte $E2   ; 
- D 1 - I - 0x0233AB 08:B39B: A1        .byte $A1   ; 
- D 1 - I - 0x0233AC 08:B39C: E3        .byte $E3   ; 
- D 1 - I - 0x0233AD 08:B39D: 01        .byte $01   ; 
- D 1 - I - 0x0233AE 08:B39E: F3        .byte $F3   ; 
- D 1 - I - 0x0233AF 08:B39F: 01        .byte $01   ; 
- D 1 - I - 0x0233B0 08:B3A0: F0        .byte $F0   ; 
- D 1 - I - 0x0233B1 08:B3A1: 31        .byte $31   ; 
- D 1 - I - 0x0233B2 08:B3A2: F3        .byte $F3   ; 
- D 1 - I - 0x0233B3 08:B3A3: 31        .byte $31   ; 
- D 1 - I - 0x0233B4 08:B3A4: F0        .byte $F0   ; 
- D 1 - I - 0x0233B5 08:B3A5: 51        .byte $51   ; 
- D 1 - I - 0x0233B6 08:B3A6: F3        .byte $F3   ; 
- D 1 - I - 0x0233B7 08:B3A7: 51        .byte $51   ; 
- D 1 - I - 0x0233B8 08:B3A8: F0        .byte $F0   ; 
- D 1 - I - 0x0233B9 08:B3A9: 61        .byte $61   ; 
- D 1 - I - 0x0233BA 08:B3AA: F0        .byte $F0   ; 
- D 1 - I - 0x0233BB 08:B3AB: E8        .byte $E8   ; 
- D 1 - I - 0x0233BC 08:B3AC: 01        .byte $01   ; 
- D 1 - I - 0x0233BD 08:B3AD: 76        .byte $76   ; 
- D 1 - I - 0x0233BE 08:B3AE: F2        .byte $F2   ; 
- D 1 - I - 0x0233BF 08:B3AF: DE        .byte $DE   ; 
- D 1 - I - 0x0233C0 08:B3B0: 65        .byte $65   ; 
- D 1 - I - 0x0233C1 08:B3B1: 30        .byte $30   ; 
- D 1 - I - 0x0233C2 08:B3B2: E2        .byte $E2   ; 
- D 1 - I - 0x0233C3 08:B3B3: A7        .byte $A7   ; 
- D 1 - I - 0x0233C4 08:B3B4: 65        .byte $65   ; 
- D 1 - I - 0x0233C5 08:B3B5: 30        .byte $30   ; 
- D 1 - I - 0x0233C6 08:B3B6: DE        .byte $DE   ; 
- D 1 - I - 0x0233C7 08:B3B7: C9        .byte $C9   ; 
- D 1 - I - 0x0233C8 08:B3B8: FF        .byte $FF   ; 
off_FD_B3B9:
- D 1 - I - 0x0233C9 08:B3B9: D6        .byte $D6   ; 
- D 1 - I - 0x0233CA 08:B3BA: 77        .byte $77   ; 
- D 1 - I - 0x0233CB 08:B3BB: 83        .byte $83   ; 
- D 1 - I - 0x0233CC 08:B3BC: 83        .byte $83   ; 
- D 1 - I - 0x0233CD 08:B3BD: EA        .byte $EA   ; 
- D 1 - I - 0x0233CE 08:B3BE: 62        .byte $62   ; 
- D 1 - I - 0x0233CF 08:B3BF: EB        .byte $EB   ; 
- D 1 - I - 0x0233D0 08:B3C0: 58        .byte $58   ; 
- D 1 - I - 0x0233D1 08:B3C1: 43        .byte $43   ; 
- D 1 - I - 0x0233D2 08:B3C2: E3        .byte $E3   ; 
- D 1 - I - 0x0233D3 08:B3C3: 36        .byte $36   ; 
- D 1 - I - 0x0233D4 08:B3C4: EB        .byte $EB   ; 
- D 1 - I - 0x0233D5 08:B3C5: 00        .byte $00   ; 
- D 1 - I - 0x0233D6 08:B3C6: EA        .byte $EA   ; 
- D 1 - I - 0x0233D7 08:B3C7: 00        .byte $00   ; 
- D 1 - I - 0x0233D8 08:B3C8: E9        .byte $E9   ; 
- D 1 - I - 0x0233D9 08:B3C9: B1        .byte $B1   ; 
- D 1 - I - 0x0233DA 08:B3CA: E4        .byte $E4   ; 
- D 1 - I - 0x0233DB 08:B3CB: 01        .byte $01   ; 
- D 1 - I - 0x0233DC 08:B3CC: 01        .byte $01   ; 
- D 1 - I - 0x0233DD 08:B3CD: F3        .byte $F3   ; 
- D 1 - I - 0x0233DE 08:B3CE: 01        .byte $01   ; 
- D 1 - I - 0x0233DF 08:B3CF: F4        .byte $F4   ; 
- D 1 - I - 0x0233E0 08:B3D0: 01        .byte $01   ; 
- D 1 - I - 0x0233E1 08:B3D1: 01        .byte $01   ; 
- D 1 - I - 0x0233E2 08:B3D2: C2        .byte $C2   ; 
- D 1 - I - 0x0233E3 08:B3D3: E9        .byte $E9   ; 
- D 1 - I - 0x0233E4 08:B3D4: 00        .byte $00   ; 
- D 1 - I - 0x0233E5 08:B3D5: F0        .byte $F0   ; 
- D 1 - I - 0x0233E6 08:B3D6: E3        .byte $E3   ; 
- D 1 - I - 0x0233E7 08:B3D7: 01        .byte $01   ; 
- D 1 - I - 0x0233E8 08:B3D8: 31        .byte $31   ; 
- D 1 - I - 0x0233E9 08:B3D9: EA        .byte $EA   ; 
- D 1 - I - 0x0233EA 08:B3DA: 62        .byte $62   ; 
- D 1 - I - 0x0233EB 08:B3DB: EB        .byte $EB   ; 
- D 1 - I - 0x0233EC 08:B3DC: 58        .byte $58   ; 
- D 1 - I - 0x0233ED 08:B3DD: 43        .byte $43   ; 
- D 1 - I - 0x0233EE 08:B3DE: 56        .byte $56   ; 
- D 1 - I - 0x0233EF 08:B3DF: EB        .byte $EB   ; 
- D 1 - I - 0x0233F0 08:B3E0: 00        .byte $00   ; 
- D 1 - I - 0x0233F1 08:B3E1: EA        .byte $EA   ; 
- D 1 - I - 0x0233F2 08:B3E2: 00        .byte $00   ; 
- D 1 - I - 0x0233F3 08:B3E3: E9        .byte $E9   ; 
- D 1 - I - 0x0233F4 08:B3E4: B1        .byte $B1   ; 
- D 1 - I - 0x0233F5 08:B3E5: E3        .byte $E3   ; 
- D 1 - I - 0x0233F6 08:B3E6: 91        .byte $91   ; 
- D 1 - I - 0x0233F7 08:B3E7: A1        .byte $A1   ; 
- D 1 - I - 0x0233F8 08:B3E8: 91        .byte $91   ; 
- D 1 - I - 0x0233F9 08:B3E9: F3        .byte $F3   ; 
- D 1 - I - 0x0233FA 08:B3EA: A1        .byte $A1   ; 
- D 1 - I - 0x0233FB 08:B3EB: 91        .byte $91   ; 
- D 1 - I - 0x0233FC 08:B3EC: F4        .byte $F4   ; 
- D 1 - I - 0x0233FD 08:B3ED: A1        .byte $A1   ; 
- D 1 - I - 0x0233FE 08:B3EE: 91        .byte $91   ; 
- D 1 - I - 0x0233FF 08:B3EF: 91        .byte $91   ; 
- D 1 - I - 0x023400 08:B3F0: E9        .byte $E9   ; 
- D 1 - I - 0x023401 08:B3F1: 00        .byte $00   ; 
- D 1 - I - 0x023402 08:B3F2: F0        .byte $F0   ; 
- D 1 - I - 0x023403 08:B3F3: E2        .byte $E2   ; 
- D 1 - I - 0x023404 08:B3F4: 31        .byte $31   ; 
- D 1 - I - 0x023405 08:B3F5: EB        .byte $EB   ; 
- D 1 - I - 0x023406 08:B3F6: 58        .byte $58   ; 
- D 1 - I - 0x023407 08:B3F7: 12        .byte $12   ; 
- D 1 - I - 0x023408 08:B3F8: 52        .byte $52   ; 
- D 1 - I - 0x023409 08:B3F9: 73        .byte $73   ; 
- D 1 - I - 0x02340A 08:B3FA: 72        .byte $72   ; 
- D 1 - I - 0x02340B 08:B3FB: 51        .byte $51   ; 
- D 1 - I - 0x02340C 08:B3FC: 32        .byte $32   ; 
- D 1 - I - 0x02340D 08:B3FD: EB        .byte $EB   ; 
- D 1 - I - 0x02340E 08:B3FE: 58        .byte $58   ; 
- D 1 - I - 0x02340F 08:B3FF: 32        .byte $32   ; 
- D 1 - I - 0x023410 08:B400: A4        .byte $A4   ; 
- D 1 - I - 0x023411 08:B401: EB        .byte $EB   ; 
- D 1 - I - 0x023412 08:B402: 00        .byte $00   ; 
- D 1 - I - 0x023413 08:B403: FF        .byte $FF   ; 
off_FD_B404:
- D 1 - I - 0x023414 08:B404: D6        .byte $D6   ; 
- D 1 - I - 0x023415 08:B405: 77        .byte $77   ; 
- D 1 - I - 0x023416 08:B406: 83        .byte $83   ; 
- D 1 - I - 0x023417 08:B407: 85        .byte $85   ; 
- D 1 - I - 0x023418 08:B408: E3        .byte $E3   ; 
- D 1 - I - 0x023419 08:B409: 21        .byte $21   ; 
- D 1 - I - 0x02341A 08:B40A: EB        .byte $EB   ; 
- D 1 - I - 0x02341B 08:B40B: 58        .byte $58   ; 
- D 1 - I - 0x02341C 08:B40C: 11        .byte $11   ; 
- D 1 - I - 0x02341D 08:B40D: 32        .byte $32   ; 
- D 1 - I - 0x02341E 08:B40E: EB        .byte $EB   ; 
- D 1 - I - 0x02341F 08:B40F: 00        .byte $00   ; 
- D 1 - I - 0x023420 08:B410: 22        .byte $22   ; 
- D 1 - I - 0x023421 08:B411: E2        .byte $E2   ; 
- D 1 - I - 0x023422 08:B412: A1        .byte $A1   ; 
- D 1 - I - 0x023423 08:B413: E7        .byte $E7   ; 
- D 1 - I - 0x023424 08:B414: 8A        .byte $8A   ; 
- D 1 - I - 0x023425 08:B415: 52        .byte $52   ; 
- D 1 - I - 0x023426 08:B416: EB        .byte $EB   ; 
- D 1 - I - 0x023427 08:B417: 58        .byte $58   ; 
- D 1 - I - 0x023428 08:B418: 11        .byte $11   ; 
- D 1 - I - 0x023429 08:B419: E7        .byte $E7   ; 
- D 1 - I - 0x02342A 08:B41A: 85        .byte $85   ; 
- D 1 - I - 0x02342B 08:B41B: 74        .byte $74   ; 
- D 1 - I - 0x02342C 08:B41C: EB        .byte $EB   ; 
- D 1 - I - 0x02342D 08:B41D: 00        .byte $00   ; 
- D 1 - I - 0x02342E 08:B41E: 51        .byte $51   ; 
- D 1 - I - 0x02342F 08:B41F: 31        .byte $31   ; 
- D 1 - I - 0x023430 08:B420: 22        .byte $22   ; 
- D 1 - I - 0x023431 08:B421: FF        .byte $FF   ; 
off_FD_B422:
- D 1 - I - 0x023432 08:B422: EC        .byte $EC   ; 
- D 1 - I - 0x023433 08:B423: 11        .byte $11   ; 
- D 1 - I - 0x023434 08:B424: D6        .byte $D6   ; 
- D 1 - I - 0x023435 08:B425: 75        .byte $75   ; 
- D 1 - I - 0x023436 08:B426: 83        .byte $83   ; 
- D 1 - I - 0x023437 08:B427: 83        .byte $83   ; 
- D 1 - I - 0x023438 08:B428: E2        .byte $E2   ; 
- D 1 - I - 0x023439 08:B429: 01        .byte $01   ; 
- D 1 - I - 0x02343A 08:B42A: E1        .byte $E1   ; 
- D 1 - I - 0x02343B 08:B42B: DE        .byte $DE   ; 
- D 1 - I - 0x02343C 08:B42C: 7A        .byte $7A   ; 
- D 1 - I - 0x02343D 08:B42D: E2        .byte $E2   ; 
- D 1 - I - 0x02343E 08:B42E: 0F        .byte $0F   ; 
- D 1 - I - 0x02343F 08:B42F: F2        .byte $F2   ; 
- D 1 - I - 0x023440 08:B430: 0F        .byte $0F   ; 
- D 1 - I - 0x023441 08:B431: F3        .byte $F3   ; 
- D 1 - I - 0x023442 08:B432: 0F        .byte $0F   ; 
- D 1 - I - 0x023443 08:B433: F0        .byte $F0   ; 
- D 1 - I - 0x023444 08:B434: 77        .byte $77   ; 
- D 1 - I - 0x023445 08:B435: F3        .byte $F3   ; 
- D 1 - I - 0x023446 08:B436: 7F        .byte $7F   ; 
- D 1 - I - 0x023447 08:B437: F0        .byte $F0   ; 
- D 1 - I - 0x023448 08:B438: E1        .byte $E1   ; 
- D 1 - I - 0x023449 08:B439: 7A        .byte $7A   ; 
- D 1 - I - 0x02344A 08:B43A: E2        .byte $E2   ; 
- D 1 - I - 0x02344B 08:B43B: 0F        .byte $0F   ; 
- D 1 - I - 0x02344C 08:B43C: E1        .byte $E1   ; 
- D 1 - I - 0x02344D 08:B43D: 7A        .byte $7A   ; 
- D 1 - I - 0x02344E 08:B43E: 7A        .byte $7A   ; 
- D 1 - I - 0x02344F 08:B43F: 93        .byte $93   ; 
- D 1 - I - 0x023450 08:B440: 79        .byte $79   ; 
- D 1 - I - 0x023451 08:B441: F3        .byte $F3   ; 
- D 1 - I - 0x023452 08:B442: 7F        .byte $7F   ; 
- D 1 - I - 0x023453 08:B443: F0        .byte $F0   ; 
- D 1 - I - 0x023454 08:B444: E3        .byte $E3   ; 
- D 1 - I - 0x023455 08:B445: 02        .byte $02   ; 
- D 1 - I - 0x023456 08:B446: 0F        .byte $0F   ; 
- D 1 - I - 0x023457 08:B447: F3        .byte $F3   ; 
- D 1 - I - 0x023458 08:B448: 20        .byte $20   ; 
- D 1 - I - 0x023459 08:B449: F4        .byte $F4   ; 
- D 1 - I - 0x02345A 08:B44A: 20        .byte $20   ; 
- D 1 - I - 0x02345B 08:B44B: DE        .byte $DE   ; 
- D 1 - I - 0x02345C 08:B44C: 21        .byte $21   ; 
- D 1 - I - 0x02345D 08:B44D: F0        .byte $F0   ; 
- D 1 - I - 0x02345E 08:B44E: E2        .byte $E2   ; 
- D 1 - I - 0x02345F 08:B44F: 71        .byte $71   ; 
- D 1 - I - 0x023460 08:B450: 92        .byte $92   ; 
- D 1 - I - 0x023461 08:B451: A3        .byte $A3   ; 
- D 1 - I - 0x023462 08:B452: A2        .byte $A2   ; 
- D 1 - I - 0x023463 08:B453: 91        .byte $91   ; 
- D 1 - I - 0x023464 08:B454: 71        .byte $71   ; 
- D 1 - I - 0x023465 08:B455: F3        .byte $F3   ; 
- D 1 - I - 0x023466 08:B456: 71        .byte $71   ; 
- D 1 - I - 0x023467 08:B457: FF        .byte $FF   ; 
off_FD_B458:
- D 1 - I - 0x023468 08:B458: EC        .byte $EC   ; 
- D 1 - I - 0x023469 08:B459: 11        .byte $11   ; 
- D 1 - I - 0x02346A 08:B45A: D6        .byte $D6   ; 
- D 1 - I - 0x02346B 08:B45B: 75        .byte $75   ; 
- D 1 - I - 0x02346C 08:B45C: 83        .byte $83   ; 
- D 1 - I - 0x02346D 08:B45D: 83        .byte $83   ; 
- D 1 - I - 0x02346E 08:B45E: E1        .byte $E1   ; 
- D 1 - I - 0x02346F 08:B45F: DE        .byte $DE   ; 
- D 1 - I - 0x023470 08:B460: 5A        .byte $5A   ; 
- D 1 - I - 0x023471 08:B461: E2        .byte $E2   ; 
- D 1 - I - 0x023472 08:B462: 25        .byte $25   ; 
- D 1 - I - 0x023473 08:B463: E1        .byte $E1   ; 
- D 1 - I - 0x023474 08:B464: 9F        .byte $9F   ; 
- D 1 - I - 0x023475 08:B465: E2        .byte $E2   ; 
- D 1 - I - 0x023476 08:B466: 05        .byte $05   ; 
- D 1 - I - 0x023477 08:B467: DE        .byte $DE   ; 
- D 1 - I - 0x023478 08:B468: 91        .byte $91   ; 
- D 1 - I - 0x023479 08:B469: E8        .byte $E8   ; 
- D 1 - I - 0x02347A 08:B46A: 06        .byte $06   ; 
- D 1 - I - 0x02347B 08:B46B: E2        .byte $E2   ; 
- D 1 - I - 0x02347C 08:B46C: A1        .byte $A1   ; 
- D 1 - I - 0x02347D 08:B46D: E3        .byte $E3   ; 
- D 1 - I - 0x02347E 08:B46E: 02        .byte $02   ; 
- D 1 - I - 0x02347F 08:B46F: E2        .byte $E2   ; 
- D 1 - I - 0x023480 08:B470: A2        .byte $A2   ; 
- D 1 - I - 0x023481 08:B471: 71        .byte $71   ; 
- D 1 - I - 0x023482 08:B472: 02        .byte $02   ; 
- D 1 - I - 0x023483 08:B473: E1        .byte $E1   ; 
- D 1 - I - 0x023484 08:B474: DE        .byte $DE   ; 
- D 1 - I - 0x023485 08:B475: 03        .byte $03   ; 
- D 1 - I - 0x023486 08:B476: 56        .byte $56   ; 
- D 1 - I - 0x023487 08:B477: 7A        .byte $7A   ; 
- D 1 - I - 0x023488 08:B478: DE        .byte $DE   ; 
- D 1 - I - 0x023489 08:B479: B2        .byte $B2   ; 
- D 1 - I - 0x02348A 08:B47A: FF        .byte $FF   ; 
off_FD_B47B:
- D 1 - I - 0x02348B 08:B47B: EC        .byte $EC   ; 
- D 1 - I - 0x02348C 08:B47C: 11        .byte $11   ; 
- D 1 - I - 0x02348D 08:B47D: D3        .byte $D3   ; 
- D 1 - I - 0x02348E 08:B47E: 75        .byte $75   ; 
- D 1 - I - 0x02348F 08:B47F: 83        .byte $83   ; 
- D 1 - I - 0x023490 08:B480: 83        .byte $83   ; 
- D 1 - I - 0x023491 08:B481: E1        .byte $E1   ; 
- D 1 - I - 0x023492 08:B482: DE        .byte $DE   ; 
- D 1 - I - 0x023493 08:B483: 5A        .byte $5A   ; 
- D 1 - I - 0x023494 08:B484: E2        .byte $E2   ; 
- D 1 - I - 0x023495 08:B485: 25        .byte $25   ; 
- D 1 - I - 0x023496 08:B486: AF        .byte $AF   ; 
- D 1 - I - 0x023497 08:B487: E3        .byte $E3   ; 
- D 1 - I - 0x023498 08:B488: 25        .byte $25   ; 
- D 1 - I - 0x023499 08:B489: AF        .byte $AF   ; 
- D 1 - I - 0x02349A 08:B48A: E1        .byte $E1   ; 
- D 1 - I - 0x02349B 08:B48B: 5B        .byte $5B   ; 
- D 1 - I - 0x02349C 08:B48C: E2        .byte $E2   ; 
- D 1 - I - 0x02349D 08:B48D: 25        .byte $25   ; 
- D 1 - I - 0x02349E 08:B48E: BF        .byte $BF   ; 
- D 1 - I - 0x02349F 08:B48F: E3        .byte $E3   ; 
- D 1 - I - 0x0234A0 08:B490: 25        .byte $25   ; 
- D 1 - I - 0x0234A1 08:B491: DE        .byte $DE   ; 
- D 1 - I - 0x0234A2 08:B492: B1        .byte $B1   ; 
- D 1 - I - 0x0234A3 08:B493: FF        .byte $FF   ; 
off_FD_B494:
- D 1 - I - 0x0234A4 08:B494: D6        .byte $D6   ; 
- D 1 - I - 0x0234A5 08:B495: 03        .byte $03   ; 
- D 1 - I - 0x0234A6 08:B496: E1        .byte $E1   ; 
- D 1 - I - 0x0234A7 08:B497: 01        .byte $01   ; 
- D 1 - I - 0x0234A8 08:B498: 71        .byte $71   ; 
- D 1 - I - 0x0234A9 08:B499: A1        .byte $A1   ; 
- D 1 - I - 0x0234AA 08:B49A: E2        .byte $E2   ; 
- D 1 - I - 0x0234AB 08:B49B: 01        .byte $01   ; 
- D 1 - I - 0x0234AC 08:B49C: C2        .byte $C2   ; 
- D 1 - I - 0x0234AD 08:B49D: E3        .byte $E3   ; 
- D 1 - I - 0x0234AE 08:B49E: 01        .byte $01   ; 
- D 1 - I - 0x0234AF 08:B49F: 01        .byte $01   ; 
- D 1 - I - 0x0234B0 08:B4A0: C1        .byte $C1   ; 
- D 1 - I - 0x0234B1 08:B4A1: E1        .byte $E1   ; 
- D 1 - I - 0x0234B2 08:B4A2: 01        .byte $01   ; 
- D 1 - I - 0x0234B3 08:B4A3: C1        .byte $C1   ; 
- D 1 - I - 0x0234B4 08:B4A4: D1        .byte $D1   ; 
- D 1 - I - 0x0234B5 08:B4A5: 00        .byte $00   ; 
- D 1 - I - 0x0234B6 08:B4A6: 06        .byte $06   ; 
- D 1 - I - 0x0234B7 08:B4A7: E0        .byte $E0   ; 
- D 1 - I - 0x0234B8 08:B4A8: DE        .byte $DE   ; 
- D 1 - I - 0x0234B9 08:B4A9: BA        .byte $BA   ; 
- D 1 - I - 0x0234BA 08:B4AA: 98        .byte $98   ; 
- D 1 - I - 0x0234BB 08:B4AB: 76        .byte $76   ; 
- D 1 - I - 0x0234BC 08:B4AC: DE        .byte $DE   ; 
- D 1 - I - 0x0234BD 08:B4AD: D6        .byte $D6   ; 
- D 1 - I - 0x0234BE 08:B4AE: 03        .byte $03   ; 
- D 1 - I - 0x0234BF 08:B4AF: E1        .byte $E1   ; 
- D 1 - I - 0x0234C0 08:B4B0: 31        .byte $31   ; 
- D 1 - I - 0x0234C1 08:B4B1: 02        .byte $02   ; 
- D 1 - I - 0x0234C2 08:B4B2: E0        .byte $E0   ; 
- D 1 - I - 0x0234C3 08:B4B3: 51        .byte $51   ; 
- D 1 - I - 0x0234C4 08:B4B4: E1        .byte $E1   ; 
- D 1 - I - 0x0234C5 08:B4B5: DE        .byte $DE   ; 
- D 1 - I - 0x0234C6 08:B4B6: 03        .byte $03   ; 
- D 1 - I - 0x0234C7 08:B4B7: 5C        .byte $5C   ; 
- D 1 - I - 0x0234C8 08:B4B8: E2        .byte $E2   ; 
- D 1 - I - 0x0234C9 08:B4B9: 9A        .byte $9A   ; 
- D 1 - I - 0x0234CA 08:B4BA: 9C        .byte $9C   ; 
- D 1 - I - 0x0234CB 08:B4BB: 53        .byte $53   ; 
- D 1 - I - 0x0234CC 08:B4BC: DE        .byte $DE   ; 
- D 1 - I - 0x0234CD 08:B4BD: 01        .byte $01   ; 
- D 1 - I - 0x0234CE 08:B4BE: E1        .byte $E1   ; 
- D 1 - I - 0x0234CF 08:B4BF: A1        .byte $A1   ; 
- D 1 - I - 0x0234D0 08:B4C0: E0        .byte $E0   ; 
- D 1 - I - 0x0234D1 08:B4C1: A1        .byte $A1   ; 
- D 1 - I - 0x0234D2 08:B4C2: E1        .byte $E1   ; 
- D 1 - I - 0x0234D3 08:B4C3: 02        .byte $02   ; 
- D 1 - I - 0x0234D4 08:B4C4: 31        .byte $31   ; 
- D 1 - I - 0x0234D5 08:B4C5: 31        .byte $31   ; 
- D 1 - I - 0x0234D6 08:B4C6: E2        .byte $E2   ; 
- D 1 - I - 0x0234D7 08:B4C7: 31        .byte $31   ; 
- D 1 - I - 0x0234D8 08:B4C8: E1        .byte $E1   ; 
- D 1 - I - 0x0234D9 08:B4C9: 32        .byte $32   ; 
- D 1 - I - 0x0234DA 08:B4CA: 31        .byte $31   ; 
- D 1 - I - 0x0234DB 08:B4CB: E2        .byte $E2   ; 
- D 1 - I - 0x0234DC 08:B4CC: 31        .byte $31   ; 
- D 1 - I - 0x0234DD 08:B4CD: E1        .byte $E1   ; 
- D 1 - I - 0x0234DE 08:B4CE: 31        .byte $31   ; 
- D 1 - I - 0x0234DF 08:B4CF: E0        .byte $E0   ; 
- D 1 - I - 0x0234E0 08:B4D0: A1        .byte $A1   ; 
- D 1 - I - 0x0234E1 08:B4D1: A1        .byte $A1   ; 
- D 1 - I - 0x0234E2 08:B4D2: E1        .byte $E1   ; 
- D 1 - I - 0x0234E3 08:B4D3: A1        .byte $A1   ; 
- D 1 - I - 0x0234E4 08:B4D4: E0        .byte $E0   ; 
- D 1 - I - 0x0234E5 08:B4D5: A1        .byte $A1   ; 
- D 1 - I - 0x0234E6 08:B4D6: E1        .byte $E1   ; 
- D 1 - I - 0x0234E7 08:B4D7: 01        .byte $01   ; 
- D 1 - I - 0x0234E8 08:B4D8: 01        .byte $01   ; 
- D 1 - I - 0x0234E9 08:B4D9: E2        .byte $E2   ; 
- D 1 - I - 0x0234EA 08:B4DA: 01        .byte $01   ; 
- D 1 - I - 0x0234EB 08:B4DB: E1        .byte $E1   ; 
- D 1 - I - 0x0234EC 08:B4DC: 01        .byte $01   ; 
- D 1 - I - 0x0234ED 08:B4DD: FF        .byte $FF   ; 
off_FD_B4DE:
- D 1 - I - 0x0234EE 08:B4DE: E0        .byte $E0   ; 
- D 1 - I - 0x0234EF 08:B4DF: A2        .byte $A2   ; 
- D 1 - I - 0x0234F0 08:B4E0: A1        .byte $A1   ; 
- D 1 - I - 0x0234F1 08:B4E1: A2        .byte $A2   ; 
- D 1 - I - 0x0234F2 08:B4E2: A1        .byte $A1   ; 
- D 1 - I - 0x0234F3 08:B4E3: A2        .byte $A2   ; 
- D 1 - I - 0x0234F4 08:B4E4: E1        .byte $E1   ; 
- D 1 - I - 0x0234F5 08:B4E5: DE        .byte $DE   ; 
- D 1 - I - 0x0234F6 08:B4E6: 03        .byte $03   ; 
- D 1 - I - 0x0234F7 08:B4E7: 56        .byte $56   ; 
- D 1 - I - 0x0234F8 08:B4E8: 7A        .byte $7A   ; 
- D 1 - I - 0x0234F9 08:B4E9: DE        .byte $DE   ; 
- D 1 - I - 0x0234FA 08:B4EA: B2        .byte $B2   ; 
- D 1 - I - 0x0234FB 08:B4EB: FF        .byte $FF   ; 
off_FD_B4EC:
- D 1 - I - 0x0234FC 08:B4EC: D6        .byte $D6   ; 
- D 1 - I - 0x0234FD 08:B4ED: B2        .byte $B2   ; 
- D 1 - I - 0x0234FE 08:B4EE: B2        .byte $B2   ; 
- D 1 - I - 0x0234FF 08:B4EF: 42        .byte $42   ; 
- D 1 - I - 0x023500 08:B4F0: B1        .byte $B1   ; 
- D 1 - I - 0x023501 08:B4F1: 41        .byte $41   ; 
- D 1 - I - 0x023502 08:B4F2: B1        .byte $B1   ; 
- D 1 - I - 0x023503 08:B4F3: 41        .byte $41   ; 
- D 1 - I - 0x023504 08:B4F4: B2        .byte $B2   ; 
- D 1 - I - 0x023505 08:B4F5: 42        .byte $42   ; 
- D 1 - I - 0x023506 08:B4F6: B2        .byte $B2   ; 
- D 1 - I - 0x023507 08:B4F7: FF        .byte $FF   ; 
off_FD_B4F8:
- D 1 - I - 0x023508 08:B4F8: DE        .byte $DE   ; 
- D 1 - I - 0x023509 08:B4F9: B1        .byte $B1   ; 
- D 1 - I - 0x02350A 08:B4FA: B1        .byte $B1   ; 
- D 1 - I - 0x02350B 08:B4FB: 41        .byte $41   ; 
- D 1 - I - 0x02350C 08:B4FC: B4        .byte $B4   ; 
- D 1 - I - 0x02350D 08:B4FD: 98        .byte $98   ; 
- D 1 - I - 0x02350E 08:B4FE: DE        .byte $DE   ; 
- D 1 - I - 0x02350F 08:B4FF: 71        .byte $71   ; 
- D 1 - I - 0x023510 08:B500: 62        .byte $62   ; 
- D 1 - I - 0x023511 08:B501: 41        .byte $41   ; 
- D 1 - I - 0x023512 08:B502: 41        .byte $41   ; 
- D 1 - I - 0x023513 08:B503: 41        .byte $41   ; 
- D 1 - I - 0x023514 08:B504: FF        .byte $FF   ; 



_off001_B505_3D:
- D 1 - I - 0x023515 08:B505: D7        .byte $D7   ; 
- D 1 - I - 0x023516 08:B506: 78        .byte $78   ; 
- D 1 - I - 0x023517 08:B507: 83        .byte $83   ; 
- D 1 - I - 0x023518 08:B508: 8A        .byte $8A   ; 
- D 1 - I - 0x023519 08:B509: FD        .byte $FD   ; 
- D 1 - I - 0x02351A 08:B50A: BC B5     .word off_FD_B5BC
off_FF_B50C:
- D 1 - I - 0x02351C 08:B50C: FD        .byte $FD   ; 
- D 1 - I - 0x02351D 08:B50D: E2 B5     .word off_FD_B5E2
- D 1 - I - 0x02351F 08:B50F: FD        .byte $FD   ; 
- D 1 - I - 0x023520 08:B510: 11 B6     .word off_FD_B611
- D 1 - I - 0x023522 08:B512: FD        .byte $FD   ; 
- D 1 - I - 0x023523 08:B513: E2 B5     .word off_FD_B5E2
- D 1 - I - 0x023525 08:B515: FD        .byte $FD   ; 
- D 1 - I - 0x023526 08:B516: 2D B6     .word off_FD_B62D
- D 1 - I - 0x023528 08:B518: FD        .byte $FD   ; 
- D 1 - I - 0x023529 08:B519: 48 B6     .word off_FD_B648
- D 1 - I - 0x02352B 08:B51B: FD        .byte $FD   ; 
- D 1 - I - 0x02352C 08:B51C: 6E B6     .word off_FD_B66E
- D 1 - I - 0x02352E 08:B51E: FD        .byte $FD   ; 
- D 1 - I - 0x02352F 08:B51F: 48 B6     .word off_FD_B648
- D 1 - I - 0x023531 08:B521: FD        .byte $FD   ; 
- D 1 - I - 0x023532 08:B522: 98 B6     .word off_FD_B698
- D 1 - I - 0x023534 08:B524: FE        .byte $FE   ; 
- D 1 - I - 0x023535 08:B525: FF        .byte $FF   ; 
- D 1 - I - 0x023536 08:B526: 0C B5     .word off_FF_B50C



_off001_B528_3C:
- D 1 - I - 0x023538 08:B528: D7        .byte $D7   ; 
- D 1 - I - 0x023539 08:B529: 76        .byte $76   ; 
- D 1 - I - 0x02353A 08:B52A: 83        .byte $83   ; 
- D 1 - I - 0x02353B 08:B52B: 8A        .byte $8A   ; 
- D 1 - I - 0x02353C 08:B52C: EE        .byte $EE   ; 
- D 1 - I - 0x02353D 08:B52D: 85        .byte $85   ; 
- D 1 - I - 0x02353E 08:B52E: FD        .byte $FD   ; 
- D 1 - I - 0x02353F 08:B52F: BC B5     .word off_FD_B5BC
- D 1 - I - 0x023541 08:B531: EE        .byte $EE   ; 
- D 1 - I - 0x023542 08:B532: 00        .byte $00   ; 
off_FF_B533:
- D 1 - I - 0x023543 08:B533: FD        .byte $FD   ; 
- D 1 - I - 0x023544 08:B534: B3 B6     .word off_FD_B6B3
- D 1 - I - 0x023546 08:B536: EE        .byte $EE   ; 
- D 1 - I - 0x023547 08:B537: 85        .byte $85   ; 
- D 1 - I - 0x023548 08:B538: FD        .byte $FD   ; 
- D 1 - I - 0x023549 08:B539: 11 B6     .word off_FD_B611
- D 1 - I - 0x02354B 08:B53B: EE        .byte $EE   ; 
- D 1 - I - 0x02354C 08:B53C: 00        .byte $00   ; 
- D 1 - I - 0x02354D 08:B53D: FD        .byte $FD   ; 
- D 1 - I - 0x02354E 08:B53E: B3 B6     .word off_FD_B6B3
- D 1 - I - 0x023550 08:B540: EE        .byte $EE   ; 
- D 1 - I - 0x023551 08:B541: 85        .byte $85   ; 
- D 1 - I - 0x023552 08:B542: FD        .byte $FD   ; 
- D 1 - I - 0x023553 08:B543: 2D B6     .word off_FD_B62D
- D 1 - I - 0x023555 08:B545: EE        .byte $EE   ; 
- D 1 - I - 0x023556 08:B546: 00        .byte $00   ; 
- D 1 - I - 0x023557 08:B547: FD        .byte $FD   ; 
- D 1 - I - 0x023558 08:B548: E0 B6     .word off_FD_B6E0
- D 1 - I - 0x02355A 08:B54A: FD        .byte $FD   ; 
- D 1 - I - 0x02355B 08:B54B: 01 B7     .word off_FD_B701
- D 1 - I - 0x02355D 08:B54D: FD        .byte $FD   ; 
- D 1 - I - 0x02355E 08:B54E: 23 B7     .word off_FD_B723
- D 1 - I - 0x023560 08:B550: FD        .byte $FD   ; 
- D 1 - I - 0x023561 08:B551: 34 B7     .word off_FD_B734
- D 1 - I - 0x023563 08:B553: FE        .byte $FE   ; 
- D 1 - I - 0x023564 08:B554: FF        .byte $FF   ; 
- D 1 - I - 0x023565 08:B555: 33 B5     .word off_FF_B533



_off001_B557_3E:
- D 1 - I - 0x023567 08:B557: D7        .byte $D7   ; 
- D 1 - I - 0x023568 08:B558: 06        .byte $06   ; 
- D 1 - I - 0x023569 08:B559: C0        .byte $C0   ; 
- D 1 - I - 0x02356A 08:B55A: CD        .byte $CD   ; 
- D 1 - I - 0x02356B 08:B55B: E8        .byte $E8   ; 
- D 1 - I - 0x02356C 08:B55C: 01        .byte $01   ; 
- D 1 - I - 0x02356D 08:B55D: E1        .byte $E1   ; 
- D 1 - I - 0x02356E 08:B55E: 47        .byte $47   ; 
- D 1 - I - 0x02356F 08:B55F: E2        .byte $E2   ; 
- D 1 - I - 0x023570 08:B560: 42        .byte $42   ; 
- D 1 - I - 0x023571 08:B561: 32        .byte $32   ; 
- D 1 - I - 0x023572 08:B562: 22        .byte $22   ; 
- D 1 - I - 0x023573 08:B563: 12        .byte $12   ; 
- D 1 - I - 0x023574 08:B564: 02        .byte $02   ; 
- D 1 - I - 0x023575 08:B565: E1        .byte $E1   ; 
- D 1 - I - 0x023576 08:B566: B2        .byte $B2   ; 
- D 1 - I - 0x023577 08:B567: A2        .byte $A2   ; 
off_FF_B568:
- D 1 - I - 0x023578 08:B568: D7        .byte $D7   ; 
- D 1 - I - 0x023579 08:B569: 06        .byte $06   ; 
- D 1 - I - 0x02357A 08:B56A: FD        .byte $FD   ; 
- D 1 - I - 0x02357B 08:B56B: 4D B7     .word off_FD_B74D
- D 1 - I - 0x02357D 08:B56D: FD        .byte $FD   ; 
- D 1 - I - 0x02357E 08:B56E: 63 B7     .word off_FD_B763
- D 1 - I - 0x023580 08:B570: FD        .byte $FD   ; 
- D 1 - I - 0x023581 08:B571: 4D B7     .word off_FD_B74D
- D 1 - I - 0x023583 08:B573: FD        .byte $FD   ; 
- D 1 - I - 0x023584 08:B574: 7F B7     .word off_FD_B77F
- D 1 - I - 0x023586 08:B576: FD        .byte $FD   ; 
- D 1 - I - 0x023587 08:B577: 95 B7     .word off_FD_B795
- D 1 - I - 0x023589 08:B579: FD        .byte $FD   ; 
- D 1 - I - 0x02358A 08:B57A: AA B7     .word off_FD_B7AA
- D 1 - I - 0x02358C 08:B57C: D7        .byte $D7   ; 
- D 1 - I - 0x02358D 08:B57D: 06        .byte $06   ; 
- D 1 - I - 0x02358E 08:B57E: E0        .byte $E0   ; 
- D 1 - I - 0x02358F 08:B57F: 51        .byte $51   ; 
- D 1 - I - 0x023590 08:B580: 51        .byte $51   ; 
- D 1 - I - 0x023591 08:B581: E1        .byte $E1   ; 
- D 1 - I - 0x023592 08:B582: 51        .byte $51   ; 
- D 1 - I - 0x023593 08:B583: E0        .byte $E0   ; 
- D 1 - I - 0x023594 08:B584: 52        .byte $52   ; 
- D 1 - I - 0x023595 08:B585: 51        .byte $51   ; 
- D 1 - I - 0x023596 08:B586: 51        .byte $51   ; 
- D 1 - I - 0x023597 08:B587: 72        .byte $72   ; 
- D 1 - I - 0x023598 08:B588: 71        .byte $71   ; 
- D 1 - I - 0x023599 08:B589: E1        .byte $E1   ; 
- D 1 - I - 0x02359A 08:B58A: 71        .byte $71   ; 
- D 1 - I - 0x02359B 08:B58B: E0        .byte $E0   ; 
- D 1 - I - 0x02359C 08:B58C: 72        .byte $72   ; 
- D 1 - I - 0x02359D 08:B58D: 71        .byte $71   ; 
- D 1 - I - 0x02359E 08:B58E: 41        .byte $41   ; 
- D 1 - I - 0x02359F 08:B58F: 71        .byte $71   ; 
- D 1 - I - 0x0235A0 08:B590: B1        .byte $B1   ; 
- D 1 - I - 0x0235A1 08:B591: B1        .byte $B1   ; 
- D 1 - I - 0x0235A2 08:B592: E1        .byte $E1   ; 
- D 1 - I - 0x0235A3 08:B593: B1        .byte $B1   ; 
- D 1 - I - 0x0235A4 08:B594: E0        .byte $E0   ; 
- D 1 - I - 0x0235A5 08:B595: B2        .byte $B2   ; 
- D 1 - I - 0x0235A6 08:B596: B1        .byte $B1   ; 
- D 1 - I - 0x0235A7 08:B597: E1        .byte $E1   ; 
- D 1 - I - 0x0235A8 08:B598: DE        .byte $DE   ; 
- D 1 - I - 0x0235A9 08:B599: 13        .byte $13   ; 
- D 1 - I - 0x0235AA 08:B59A: 44        .byte $44   ; 
- D 1 - I - 0x0235AB 08:B59B: 24        .byte $24   ; 
- D 1 - I - 0x0235AC 08:B59C: C7        .byte $C7   ; 
- D 1 - I - 0x0235AD 08:B59D: 7C        .byte $7C   ; 
- D 1 - I - 0x0235AE 08:B59E: DE        .byte $DE   ; 
- D 1 - I - 0x0235AF 08:B59F: FE        .byte $FE   ; 
- D 1 - I - 0x0235B0 08:B5A0: FF        .byte $FF   ; 
- D 1 - I - 0x0235B1 08:B5A1: 68 B5     .word off_FF_B568



_off001_B5A3_3F:
- D 1 - I - 0x0235B3 08:B5A3: FD        .byte $FD   ; 
- D 1 - I - 0x0235B4 08:B5A4: C8 B7     .word off_FD_B7C8
off_FF_B5A6:
- D 1 - I - 0x0235B6 08:B5A6: FD        .byte $FD   ; 
- D 1 - I - 0x0235B7 08:B5A7: DC B7     .word off_FD_B7DC
- D 1 - I - 0x0235B9 08:B5A9: FD        .byte $FD   ; 
- D 1 - I - 0x0235BA 08:B5AA: F0 B7     .word off_FD_B7F0
- D 1 - I - 0x0235BC 08:B5AC: FD        .byte $FD   ; 
- D 1 - I - 0x0235BD 08:B5AD: 04 B8     .word off_FD_B804
- D 1 - I - 0x0235BF 08:B5AF: FD        .byte $FD   ; 
- D 1 - I - 0x0235C0 08:B5B0: 10 B8     .word off_FD_B810
- D 1 - I - 0x0235C2 08:B5B2: FD        .byte $FD   ; 
- D 1 - I - 0x0235C3 08:B5B3: 04 B8     .word off_FD_B804
- D 1 - I - 0x0235C5 08:B5B5: FD        .byte $FD   ; 
- D 1 - I - 0x0235C6 08:B5B6: 1C B8     .word off_FD_B81C
- D 1 - I - 0x0235C8 08:B5B8: FE        .byte $FE   ; 
- D 1 - I - 0x0235C9 08:B5B9: FF        .byte $FF   ; 
- D 1 - I - 0x0235CA 08:B5BA: A6 B5     .word off_FF_B5A6
off_FD_B5BC:
- D 1 - I - 0x0235CC 08:B5BC: EC        .byte $EC   ; 
- D 1 - I - 0x0235CD 08:B5BD: 11        .byte $11   ; 
- D 1 - I - 0x0235CE 08:B5BE: E3        .byte $E3   ; 
- D 1 - I - 0x0235CF 08:B5BF: F4        .byte $F4   ; 
- D 1 - I - 0x0235D0 08:B5C0: FB        .byte $FB   ; 
- D 1 - I - 0x0235D1 08:B5C1: 91        .byte $91   ; 
- D 1 - I - 0x0235D2 08:B5C2: 41        .byte $41   ; 
- D 1 - I - 0x0235D3 08:B5C3: 71        .byte $71   ; 
- D 1 - I - 0x0235D4 08:B5C4: 41        .byte $41   ; 
- D 1 - I - 0x0235D5 08:B5C5: FE        .byte $FE   ; 
- D 1 - I - 0x0235D6 08:B5C6: 02        .byte $02   ; 
- D 1 - I - 0x0235D7 08:B5C7: F3        .byte $F3   ; 
- D 1 - I - 0x0235D8 08:B5C8: FB        .byte $FB   ; 
- D 1 - I - 0x0235D9 08:B5C9: 91        .byte $91   ; 
- D 1 - I - 0x0235DA 08:B5CA: 41        .byte $41   ; 
- D 1 - I - 0x0235DB 08:B5CB: 71        .byte $71   ; 
- D 1 - I - 0x0235DC 08:B5CC: 41        .byte $41   ; 
- D 1 - I - 0x0235DD 08:B5CD: FE        .byte $FE   ; 
- D 1 - I - 0x0235DE 08:B5CE: 02        .byte $02   ; 
- D 1 - I - 0x0235DF 08:B5CF: F2        .byte $F2   ; 
- D 1 - I - 0x0235E0 08:B5D0: FB        .byte $FB   ; 
- D 1 - I - 0x0235E1 08:B5D1: 91        .byte $91   ; 
- D 1 - I - 0x0235E2 08:B5D2: 41        .byte $41   ; 
- D 1 - I - 0x0235E3 08:B5D3: 71        .byte $71   ; 
- D 1 - I - 0x0235E4 08:B5D4: 41        .byte $41   ; 
- D 1 - I - 0x0235E5 08:B5D5: FE        .byte $FE   ; 
- D 1 - I - 0x0235E6 08:B5D6: 02        .byte $02   ; 
- D 1 - I - 0x0235E7 08:B5D7: F0        .byte $F0   ; 
- D 1 - I - 0x0235E8 08:B5D8: FB        .byte $FB   ; 
- D 1 - I - 0x0235E9 08:B5D9: 91        .byte $91   ; 
- D 1 - I - 0x0235EA 08:B5DA: 41        .byte $41   ; 
- D 1 - I - 0x0235EB 08:B5DB: 71        .byte $71   ; 
- D 1 - I - 0x0235EC 08:B5DC: 41        .byte $41   ; 
- D 1 - I - 0x0235ED 08:B5DD: FE        .byte $FE   ; 
- D 1 - I - 0x0235EE 08:B5DE: 02        .byte $02   ; 
- D 1 - I - 0x0235EF 08:B5DF: EC        .byte $EC   ; 
- D 1 - I - 0x0235F0 08:B5E0: 00        .byte $00   ; 
- D 1 - I - 0x0235F1 08:B5E1: FF        .byte $FF   ; 
off_FD_B5E2:
- D 1 - I - 0x0235F2 08:B5E2: EC        .byte $EC   ; 
- D 1 - I - 0x0235F3 08:B5E3: 11        .byte $11   ; 
- D 1 - I - 0x0235F4 08:B5E4: D7        .byte $D7   ; 
- D 1 - I - 0x0235F5 08:B5E5: B7        .byte $B7   ; 
- D 1 - I - 0x0235F6 08:B5E6: 83        .byte $83   ; 
- D 1 - I - 0x0235F7 08:B5E7: 18        .byte $18   ; 
- D 1 - I - 0x0235F8 08:B5E8: E2        .byte $E2   ; 
- D 1 - I - 0x0235F9 08:B5E9: 11        .byte $11   ; 
- D 1 - I - 0x0235FA 08:B5EA: 21        .byte $21   ; 
- D 1 - I - 0x0235FB 08:B5EB: 41        .byte $41   ; 
- D 1 - I - 0x0235FC 08:B5EC: 91        .byte $91   ; 
- D 1 - I - 0x0235FD 08:B5ED: D7        .byte $D7   ; 
- D 1 - I - 0x0235FE 08:B5EE: 77        .byte $77   ; 
- D 1 - I - 0x0235FF 08:B5EF: 83        .byte $83   ; 
- D 1 - I - 0x023600 08:B5F0: 88        .byte $88   ; 
- D 1 - I - 0x023601 08:B5F1: E3        .byte $E3   ; 
- D 1 - I - 0x023602 08:B5F2: 11        .byte $11   ; 
- D 1 - I - 0x023603 08:B5F3: 21        .byte $21   ; 
- D 1 - I - 0x023604 08:B5F4: 41        .byte $41   ; 
- D 1 - I - 0x023605 08:B5F5: F0        .byte $F0   ; 
- D 1 - I - 0x023606 08:B5F6: E3        .byte $E3   ; 
- D 1 - I - 0x023607 08:B5F7: 91        .byte $91   ; 
- D 1 - I - 0x023608 08:B5F8: F3        .byte $F3   ; 
- D 1 - I - 0x023609 08:B5F9: 91        .byte $91   ; 
- D 1 - I - 0x02360A 08:B5FA: C2        .byte $C2   ; 
- D 1 - I - 0x02360B 08:B5FB: E7        .byte $E7   ; 
- D 1 - I - 0x02360C 08:B5FC: 86        .byte $86   ; 
- D 1 - I - 0x02360D 08:B5FD: F0        .byte $F0   ; 
- D 1 - I - 0x02360E 08:B5FE: E2        .byte $E2   ; 
- D 1 - I - 0x02360F 08:B5FF: 71        .byte $71   ; 
- D 1 - I - 0x023610 08:B600: F3        .byte $F3   ; 
- D 1 - I - 0x023611 08:B601: 71        .byte $71   ; 
- D 1 - I - 0x023612 08:B602: F0        .byte $F0   ; 
- D 1 - I - 0x023613 08:B603: 71        .byte $71   ; 
- D 1 - I - 0x023614 08:B604: 91        .byte $91   ; 
- D 1 - I - 0x023615 08:B605: F3        .byte $F3   ; 
- D 1 - I - 0x023616 08:B606: 91        .byte $91   ; 
- D 1 - I - 0x023617 08:B607: E7        .byte $E7   ; 
- D 1 - I - 0x023618 08:B608: 88        .byte $88   ; 
- D 1 - I - 0x023619 08:B609: F0        .byte $F0   ; 
- D 1 - I - 0x02361A 08:B60A: E3        .byte $E3   ; 
- D 1 - I - 0x02361B 08:B60B: 01        .byte $01   ; 
- D 1 - I - 0x02361C 08:B60C: E2        .byte $E2   ; 
- D 1 - I - 0x02361D 08:B60D: 91        .byte $91   ; 
- D 1 - I - 0x02361E 08:B60E: 71        .byte $71   ; 
- D 1 - I - 0x02361F 08:B60F: 91        .byte $91   ; 
- D 1 - I - 0x023620 08:B610: FF        .byte $FF   ; 
off_FD_B611:
- D 1 - I - 0x023621 08:B611: F3        .byte $F3   ; 
- D 1 - I - 0x023622 08:B612: 91        .byte $91   ; 
- D 1 - I - 0x023623 08:B613: F0        .byte $F0   ; 
- D 1 - I - 0x023624 08:B614: E3        .byte $E3   ; 
- D 1 - I - 0x023625 08:B615: 01        .byte $01   ; 
- D 1 - I - 0x023626 08:B616: 01        .byte $01   ; 
- D 1 - I - 0x023627 08:B617: EC        .byte $EC   ; 
- D 1 - I - 0x023628 08:B618: 00        .byte $00   ; 
- D 1 - I - 0x023629 08:B619: E7        .byte $E7   ; 
- D 1 - I - 0x02362A 08:B61A: 1A        .byte $1A   ; 
- D 1 - I - 0x02362B 08:B61B: 21        .byte $21   ; 
- D 1 - I - 0x02362C 08:B61C: F3        .byte $F3   ; 
- D 1 - I - 0x02362D 08:B61D: 21        .byte $21   ; 
- D 1 - I - 0x02362E 08:B61E: F4        .byte $F4   ; 
- D 1 - I - 0x02362F 08:B61F: 21        .byte $21   ; 
- D 1 - I - 0x023630 08:B620: F5        .byte $F5   ; 
- D 1 - I - 0x023631 08:B621: 21        .byte $21   ; 
- D 1 - I - 0x023632 08:B622: F0        .byte $F0   ; 
- D 1 - I - 0x023633 08:B623: E3        .byte $E3   ; 
- D 1 - I - 0x023634 08:B624: 01        .byte $01   ; 
- D 1 - I - 0x023635 08:B625: F3        .byte $F3   ; 
- D 1 - I - 0x023636 08:B626: 01        .byte $01   ; 
- D 1 - I - 0x023637 08:B627: F0        .byte $F0   ; 
- D 1 - I - 0x023638 08:B628: 01        .byte $01   ; 
- D 1 - I - 0x023639 08:B629: 21        .byte $21   ; 
- D 1 - I - 0x02363A 08:B62A: F3        .byte $F3   ; 
- D 1 - I - 0x02363B 08:B62B: 21        .byte $21   ; 
- D 1 - I - 0x02363C 08:B62C: FF        .byte $FF   ; 
off_FD_B62D:
- D 1 - I - 0x02363D 08:B62D: E3        .byte $E3   ; 
- D 1 - I - 0x02363E 08:B62E: 01        .byte $01   ; 
- D 1 - I - 0x02363F 08:B62F: 21        .byte $21   ; 
- D 1 - I - 0x023640 08:B630: 41        .byte $41   ; 
- D 1 - I - 0x023641 08:B631: E7        .byte $E7   ; 
- D 1 - I - 0x023642 08:B632: 1A        .byte $1A   ; 
- D 1 - I - 0x023643 08:B633: EC        .byte $EC   ; 
- D 1 - I - 0x023644 08:B634: 00        .byte $00   ; 
- D 1 - I - 0x023645 08:B635: 21        .byte $21   ; 
- D 1 - I - 0x023646 08:B636: F2        .byte $F2   ; 
- D 1 - I - 0x023647 08:B637: 21        .byte $21   ; 
- D 1 - I - 0x023648 08:B638: F3        .byte $F3   ; 
- D 1 - I - 0x023649 08:B639: 21        .byte $21   ; 
- D 1 - I - 0x02364A 08:B63A: F4        .byte $F4   ; 
- D 1 - I - 0x02364B 08:B63B: 21        .byte $21   ; 
- D 1 - I - 0x02364C 08:B63C: F5        .byte $F5   ; 
- D 1 - I - 0x02364D 08:B63D: 21        .byte $21   ; 
- D 1 - I - 0x02364E 08:B63E: F6        .byte $F6   ; 
- D 1 - I - 0x02364F 08:B63F: 21        .byte $21   ; 
- D 1 - I - 0x023650 08:B640: F0        .byte $F0   ; 
- D 1 - I - 0x023651 08:B641: E4        .byte $E4   ; 
- D 1 - I - 0x023652 08:B642: 21        .byte $21   ; 
- D 1 - I - 0x023653 08:B643: 21        .byte $21   ; 
- D 1 - I - 0x023654 08:B644: F3        .byte $F3   ; 
- D 1 - I - 0x023655 08:B645: 21        .byte $21   ; 
- D 1 - I - 0x023656 08:B646: F0        .byte $F0   ; 
- D 1 - I - 0x023657 08:B647: FF        .byte $FF   ; 
off_FD_B648:
- D 1 - I - 0x023658 08:B648: EC        .byte $EC   ; 
- D 1 - I - 0x023659 08:B649: 13        .byte $13   ; 
- D 1 - I - 0x02365A 08:B64A: D7        .byte $D7   ; 
- D 1 - I - 0x02365B 08:B64B: 77        .byte $77   ; 
- D 1 - I - 0x02365C 08:B64C: 83        .byte $83   ; 
- D 1 - I - 0x02365D 08:B64D: 83        .byte $83   ; 
- D 1 - I - 0x02365E 08:B64E: E2        .byte $E2   ; 
- D 1 - I - 0x02365F 08:B64F: 91        .byte $91   ; 
- D 1 - I - 0x023660 08:B650: B1        .byte $B1   ; 
- D 1 - I - 0x023661 08:B651: E3        .byte $E3   ; 
- D 1 - I - 0x023662 08:B652: 01        .byte $01   ; 
- D 1 - I - 0x023663 08:B653: EB        .byte $EB   ; 
- D 1 - I - 0x023664 08:B654: 58        .byte $58   ; 
- D 1 - I - 0x023665 08:B655: 11        .byte $11   ; 
- D 1 - I - 0x023666 08:B656: 22        .byte $22   ; 
- D 1 - I - 0x023667 08:B657: EB        .byte $EB   ; 
- D 1 - I - 0x023668 08:B658: 00        .byte $00   ; 
- D 1 - I - 0x023669 08:B659: 01        .byte $01   ; 
- D 1 - I - 0x02366A 08:B65A: E2        .byte $E2   ; 
- D 1 - I - 0x02366B 08:B65B: B1        .byte $B1   ; 
- D 1 - I - 0x02366C 08:B65C: EB        .byte $EB   ; 
- D 1 - I - 0x02366D 08:B65D: 58        .byte $58   ; 
- D 1 - I - 0x02366E 08:B65E: 11        .byte $11   ; 
- D 1 - I - 0x02366F 08:B65F: 92        .byte $92   ; 
- D 1 - I - 0x023670 08:B660: EB        .byte $EB   ; 
- D 1 - I - 0x023671 08:B661: 00        .byte $00   ; 
- D 1 - I - 0x023672 08:B662: B1        .byte $B1   ; 
- D 1 - I - 0x023673 08:B663: E3        .byte $E3   ; 
- D 1 - I - 0x023674 08:B664: 01        .byte $01   ; 
- D 1 - I - 0x023675 08:B665: EB        .byte $EB   ; 
- D 1 - I - 0x023676 08:B666: 58        .byte $58   ; 
- D 1 - I - 0x023677 08:B667: 11        .byte $11   ; 
- D 1 - I - 0x023678 08:B668: 22        .byte $22   ; 
- D 1 - I - 0x023679 08:B669: EB        .byte $EB   ; 
- D 1 - I - 0x02367A 08:B66A: 00        .byte $00   ; 
- D 1 - I - 0x02367B 08:B66B: 01        .byte $01   ; 
- D 1 - I - 0x02367C 08:B66C: E2        .byte $E2   ; 
- D 1 - I - 0x02367D 08:B66D: FF        .byte $FF   ; 
off_FD_B66E:
- D 1 - I - 0x02367E 08:B66E: E9        .byte $E9   ; 
- D 1 - I - 0x02367F 08:B66F: B1        .byte $B1   ; 
- D 1 - I - 0x023680 08:B670: EC        .byte $EC   ; 
- D 1 - I - 0x023681 08:B671: 11        .byte $11   ; 
- D 1 - I - 0x023682 08:B672: D7        .byte $D7   ; 
- D 1 - I - 0x023683 08:B673: 77        .byte $77   ; 
- D 1 - I - 0x023684 08:B674: 83        .byte $83   ; 
- D 1 - I - 0x023685 08:B675: 83        .byte $83   ; 
- D 1 - I - 0x023686 08:B676: E2        .byte $E2   ; 
- D 1 - I - 0x023687 08:B677: DE        .byte $DE   ; 
- D 1 - I - 0x023688 08:B678: B9        .byte $B9   ; 
- D 1 - I - 0x023689 08:B679: F3        .byte $F3   ; 
- D 1 - I - 0x02368A 08:B67A: 9F        .byte $9F   ; 
- D 1 - I - 0x02368B 08:B67B: F0        .byte $F0   ; 
- D 1 - I - 0x02368C 08:B67C: E3        .byte $E3   ; 
- D 1 - I - 0x02368D 08:B67D: 97        .byte $97   ; 
- D 1 - I - 0x02368E 08:B67E: F3        .byte $F3   ; 
- D 1 - I - 0x02368F 08:B67F: 7F        .byte $7F   ; 
- D 1 - I - 0x023690 08:B680: F0        .byte $F0   ; 
- D 1 - I - 0x023691 08:B681: 9F        .byte $9F   ; 
- D 1 - I - 0x023692 08:B682: F3        .byte $F3   ; 
- D 1 - I - 0x023693 08:B683: 9F        .byte $9F   ; 
- D 1 - I - 0x023694 08:B684: F0        .byte $F0   ; 
- D 1 - I - 0x023695 08:B685: 79        .byte $79   ; 
- D 1 - I - 0x023696 08:B686: F3        .byte $F3   ; 
- D 1 - I - 0x023697 08:B687: 9F        .byte $9F   ; 
- D 1 - I - 0x023698 08:B688: F0        .byte $F0   ; 
- D 1 - I - 0x023699 08:B689: 97        .byte $97   ; 
- D 1 - I - 0x02369A 08:B68A: F3        .byte $F3   ; 
- D 1 - I - 0x02369B 08:B68B: 7F        .byte $7F   ; 
- D 1 - I - 0x02369C 08:B68C: F0        .byte $F0   ; 
- D 1 - I - 0x02369D 08:B68D: 9F        .byte $9F   ; 
- D 1 - I - 0x02369E 08:B68E: E4        .byte $E4   ; 
- D 1 - I - 0x02369F 08:B68F: 00        .byte $00   ; 
- D 1 - I - 0x0236A0 08:B690: DE        .byte $DE   ; 
- D 1 - I - 0x0236A1 08:B691: F3        .byte $F3   ; 
- D 1 - I - 0x0236A2 08:B692: 01        .byte $01   ; 
- D 1 - I - 0x0236A3 08:B693: E9        .byte $E9   ; 
- D 1 - I - 0x0236A4 08:B694: 00        .byte $00   ; 
- D 1 - I - 0x0236A5 08:B695: EC        .byte $EC   ; 
- D 1 - I - 0x0236A6 08:B696: 00        .byte $00   ; 
- D 1 - I - 0x0236A7 08:B697: FF        .byte $FF   ; 
off_FD_B698:
- D 1 - I - 0x0236A8 08:B698: D7        .byte $D7   ; 
- D 1 - I - 0x0236A9 08:B699: 78        .byte $78   ; 
- D 1 - I - 0x0236AA 08:B69A: 83        .byte $83   ; 
- D 1 - I - 0x0236AB 08:B69B: 83        .byte $83   ; 
- D 1 - I - 0x0236AC 08:B69C: E2        .byte $E2   ; 
- D 1 - I - 0x0236AD 08:B69D: B2        .byte $B2   ; 
- D 1 - I - 0x0236AE 08:B69E: B1        .byte $B1   ; 
- D 1 - I - 0x0236AF 08:B69F: E3        .byte $E3   ; 
- D 1 - I - 0x0236B0 08:B6A0: 11        .byte $11   ; 
- D 1 - I - 0x0236B1 08:B6A1: 31        .byte $31   ; 
- D 1 - I - 0x0236B2 08:B6A2: 32        .byte $32   ; 
- D 1 - I - 0x0236B3 08:B6A3: E2        .byte $E2   ; 
- D 1 - I - 0x0236B4 08:B6A4: B1        .byte $B1   ; 
- D 1 - I - 0x0236B5 08:B6A5: E3        .byte $E3   ; 
- D 1 - I - 0x0236B6 08:B6A6: DE        .byte $DE   ; 
- D 1 - I - 0x0236B7 08:B6A7: 13        .byte $13   ; 
- D 1 - I - 0x0236B8 08:B6A8: 44        .byte $44   ; 
- D 1 - I - 0x0236B9 08:B6A9: 24        .byte $24   ; 
- D 1 - I - 0x0236BA 08:B6AA: F3        .byte $F3   ; 
- D 1 - I - 0x0236BB 08:B6AB: 4F        .byte $4F   ; 
- D 1 - I - 0x0236BC 08:B6AC: F0        .byte $F0   ; 
- D 1 - I - 0x0236BD 08:B6AD: 77        .byte $77   ; 
- D 1 - I - 0x0236BE 08:B6AE: DE        .byte $DE   ; 
- D 1 - I - 0x0236BF 08:B6AF: F3        .byte $F3   ; 
- D 1 - I - 0x0236C0 08:B6B0: 41        .byte $41   ; 
- D 1 - I - 0x0236C1 08:B6B1: F0        .byte $F0   ; 
- D 1 - I - 0x0236C2 08:B6B2: FF        .byte $FF   ; 
off_FD_B6B3:
- D 1 - I - 0x0236C3 08:B6B3: EC        .byte $EC   ; 
- D 1 - I - 0x0236C4 08:B6B4: 11        .byte $11   ; 
- D 1 - I - 0x0236C5 08:B6B5: D7        .byte $D7   ; 
- D 1 - I - 0x0236C6 08:B6B6: B5        .byte $B5   ; 
- D 1 - I - 0x0236C7 08:B6B7: 83        .byte $83   ; 
- D 1 - I - 0x0236C8 08:B6B8: 18        .byte $18   ; 
- D 1 - I - 0x0236C9 08:B6B9: E1        .byte $E1   ; 
- D 1 - I - 0x0236CA 08:B6BA: 91        .byte $91   ; 
- D 1 - I - 0x0236CB 08:B6BB: B1        .byte $B1   ; 
- D 1 - I - 0x0236CC 08:B6BC: E2        .byte $E2   ; 
- D 1 - I - 0x0236CD 08:B6BD: 11        .byte $11   ; 
- D 1 - I - 0x0236CE 08:B6BE: 41        .byte $41   ; 
- D 1 - I - 0x0236CF 08:B6BF: D7        .byte $D7   ; 
- D 1 - I - 0x0236D0 08:B6C0: 75        .byte $75   ; 
- D 1 - I - 0x0236D1 08:B6C1: 83        .byte $83   ; 
- D 1 - I - 0x0236D2 08:B6C2: 88        .byte $88   ; 
- D 1 - I - 0x0236D3 08:B6C3: E2        .byte $E2   ; 
- D 1 - I - 0x0236D4 08:B6C4: 91        .byte $91   ; 
- D 1 - I - 0x0236D5 08:B6C5: B1        .byte $B1   ; 
- D 1 - I - 0x0236D6 08:B6C6: E3        .byte $E3   ; 
- D 1 - I - 0x0236D7 08:B6C7: 11        .byte $11   ; 
- D 1 - I - 0x0236D8 08:B6C8: F0        .byte $F0   ; 
- D 1 - I - 0x0236D9 08:B6C9: 41        .byte $41   ; 
- D 1 - I - 0x0236DA 08:B6CA: F3        .byte $F3   ; 
- D 1 - I - 0x0236DB 08:B6CB: 41        .byte $41   ; 
- D 1 - I - 0x0236DC 08:B6CC: C2        .byte $C2   ; 
- D 1 - I - 0x0236DD 08:B6CD: E7        .byte $E7   ; 
- D 1 - I - 0x0236DE 08:B6CE: 86        .byte $86   ; 
- D 1 - I - 0x0236DF 08:B6CF: F0        .byte $F0   ; 
- D 1 - I - 0x0236E0 08:B6D0: E2        .byte $E2   ; 
- D 1 - I - 0x0236E1 08:B6D1: 21        .byte $21   ; 
- D 1 - I - 0x0236E2 08:B6D2: F3        .byte $F3   ; 
- D 1 - I - 0x0236E3 08:B6D3: 21        .byte $21   ; 
- D 1 - I - 0x0236E4 08:B6D4: F0        .byte $F0   ; 
- D 1 - I - 0x0236E5 08:B6D5: DE        .byte $DE   ; 
- D 1 - I - 0x0236E6 08:B6D6: 24        .byte $24   ; 
- D 1 - I - 0x0236E7 08:B6D7: F3        .byte $F3   ; 
- D 1 - I - 0x0236E8 08:B6D8: 4F        .byte $4F   ; 
- D 1 - I - 0x0236E9 08:B6D9: E7        .byte $E7   ; 
- D 1 - I - 0x0236EA 08:B6DA: 88        .byte $88   ; 
- D 1 - I - 0x0236EB 08:B6DB: F0        .byte $F0   ; 
- D 1 - I - 0x0236EC 08:B6DC: 74        .byte $74   ; 
- D 1 - I - 0x0236ED 08:B6DD: 24        .byte $24   ; 
- D 1 - I - 0x0236EE 08:B6DE: DE        .byte $DE   ; 
- D 1 - I - 0x0236EF 08:B6DF: FF        .byte $FF   ; 
off_FD_B6E0:
- D 1 - I - 0x0236F0 08:B6E0: D7        .byte $D7   ; 
- D 1 - I - 0x0236F1 08:B6E1: 75        .byte $75   ; 
- D 1 - I - 0x0236F2 08:B6E2: 83        .byte $83   ; 
- D 1 - I - 0x0236F3 08:B6E3: 83        .byte $83   ; 
- D 1 - I - 0x0236F4 08:B6E4: E2        .byte $E2   ; 
- D 1 - I - 0x0236F5 08:B6E5: 01        .byte $01   ; 
- D 1 - I - 0x0236F6 08:B6E6: 21        .byte $21   ; 
- D 1 - I - 0x0236F7 08:B6E7: 41        .byte $41   ; 
- D 1 - I - 0x0236F8 08:B6E8: EB        .byte $EB   ; 
- D 1 - I - 0x0236F9 08:B6E9: 58        .byte $58   ; 
- D 1 - I - 0x0236FA 08:B6EA: 11        .byte $11   ; 
- D 1 - I - 0x0236FB 08:B6EB: 52        .byte $52   ; 
- D 1 - I - 0x0236FC 08:B6EC: EB        .byte $EB   ; 
- D 1 - I - 0x0236FD 08:B6ED: 00        .byte $00   ; 
- D 1 - I - 0x0236FE 08:B6EE: 41        .byte $41   ; 
- D 1 - I - 0x0236FF 08:B6EF: 21        .byte $21   ; 
- D 1 - I - 0x023700 08:B6F0: EB        .byte $EB   ; 
- D 1 - I - 0x023701 08:B6F1: 58        .byte $58   ; 
- D 1 - I - 0x023702 08:B6F2: 11        .byte $11   ; 
- D 1 - I - 0x023703 08:B6F3: 02        .byte $02   ; 
- D 1 - I - 0x023704 08:B6F4: EB        .byte $EB   ; 
- D 1 - I - 0x023705 08:B6F5: 00        .byte $00   ; 
- D 1 - I - 0x023706 08:B6F6: 21        .byte $21   ; 
- D 1 - I - 0x023707 08:B6F7: 41        .byte $41   ; 
- D 1 - I - 0x023708 08:B6F8: EB        .byte $EB   ; 
- D 1 - I - 0x023709 08:B6F9: 58        .byte $58   ; 
- D 1 - I - 0x02370A 08:B6FA: 11        .byte $11   ; 
- D 1 - I - 0x02370B 08:B6FB: 52        .byte $52   ; 
- D 1 - I - 0x02370C 08:B6FC: EB        .byte $EB   ; 
- D 1 - I - 0x02370D 08:B6FD: 00        .byte $00   ; 
- D 1 - I - 0x02370E 08:B6FE: 41        .byte $41   ; 
- D 1 - I - 0x02370F 08:B6FF: E2        .byte $E2   ; 
- D 1 - I - 0x023710 08:B700: FF        .byte $FF   ; 
off_FD_B701:
- D 1 - I - 0x023711 08:B701: D7        .byte $D7   ; 
- D 1 - I - 0x023712 08:B702: 75        .byte $75   ; 
- D 1 - I - 0x023713 08:B703: 83        .byte $83   ; 
- D 1 - I - 0x023714 08:B704: 83        .byte $83   ; 
- D 1 - I - 0x023715 08:B705: E2        .byte $E2   ; 
- D 1 - I - 0x023716 08:B706: DE        .byte $DE   ; 
- D 1 - I - 0x023717 08:B707: 20        .byte $20   ; 
- D 1 - I - 0x023718 08:B708: F3        .byte $F3   ; 
- D 1 - I - 0x023719 08:B709: 2F        .byte $2F   ; 
- D 1 - I - 0x02371A 08:B70A: F0        .byte $F0   ; 
- D 1 - I - 0x02371B 08:B70B: E3        .byte $E3   ; 
- D 1 - I - 0x02371C 08:B70C: 42        .byte $42   ; 
- D 1 - I - 0x02371D 08:B70D: F3        .byte $F3   ; 
- D 1 - I - 0x02371E 08:B70E: 2F        .byte $2F   ; 
- D 1 - I - 0x02371F 08:B70F: F0        .byte $F0   ; 
- D 1 - I - 0x023720 08:B710: 4F        .byte $4F   ; 
- D 1 - I - 0x023721 08:B711: F3        .byte $F3   ; 
- D 1 - I - 0x023722 08:B712: 4F        .byte $4F   ; 
- D 1 - I - 0x023723 08:B713: F0        .byte $F0   ; 
- D 1 - I - 0x023724 08:B714: 24        .byte $24   ; 
- D 1 - I - 0x023725 08:B715: F3        .byte $F3   ; 
- D 1 - I - 0x023726 08:B716: 4F        .byte $4F   ; 
- D 1 - I - 0x023727 08:B717: F0        .byte $F0   ; 
- D 1 - I - 0x023728 08:B718: 42        .byte $42   ; 
- D 1 - I - 0x023729 08:B719: F3        .byte $F3   ; 
- D 1 - I - 0x02372A 08:B71A: 2F        .byte $2F   ; 
- D 1 - I - 0x02372B 08:B71B: F0        .byte $F0   ; 
- D 1 - I - 0x02372C 08:B71C: 47        .byte $47   ; 
- D 1 - I - 0x02372D 08:B71D: DE        .byte $DE   ; 
- D 1 - I - 0x02372E 08:B71E: 71        .byte $71   ; 
- D 1 - I - 0x02372F 08:B71F: F3        .byte $F3   ; 
- D 1 - I - 0x023730 08:B720: 71        .byte $71   ; 
- D 1 - I - 0x023731 08:B721: F0        .byte $F0   ; 
- D 1 - I - 0x023732 08:B722: FF        .byte $FF   ; 
off_FD_B723:
- D 1 - I - 0x023733 08:B723: D7        .byte $D7   ; 
- D 1 - I - 0x023734 08:B724: 75        .byte $75   ; 
- D 1 - I - 0x023735 08:B725: 83        .byte $83   ; 
- D 1 - I - 0x023736 08:B726: 83        .byte $83   ; 
- D 1 - I - 0x023737 08:B727: E2        .byte $E2   ; 
- D 1 - I - 0x023738 08:B728: 01        .byte $01   ; 
- D 1 - I - 0x023739 08:B729: 21        .byte $21   ; 
- D 1 - I - 0x02373A 08:B72A: 41        .byte $41   ; 
- D 1 - I - 0x02373B 08:B72B: 52        .byte $52   ; 
- D 1 - I - 0x02373C 08:B72C: 41        .byte $41   ; 
- D 1 - I - 0x02373D 08:B72D: 21        .byte $21   ; 
- D 1 - I - 0x02373E 08:B72E: 02        .byte $02   ; 
- D 1 - I - 0x02373F 08:B72F: 21        .byte $21   ; 
- D 1 - I - 0x023740 08:B730: 41        .byte $41   ; 
- D 1 - I - 0x023741 08:B731: 52        .byte $52   ; 
- D 1 - I - 0x023742 08:B732: 41        .byte $41   ; 
- D 1 - I - 0x023743 08:B733: FF        .byte $FF   ; 
off_FD_B734:
- D 1 - I - 0x023744 08:B734: D7        .byte $D7   ; 
- D 1 - I - 0x023745 08:B735: 75        .byte $75   ; 
- D 1 - I - 0x023746 08:B736: 83        .byte $83   ; 
- D 1 - I - 0x023747 08:B737: 83        .byte $83   ; 
- D 1 - I - 0x023748 08:B738: E2        .byte $E2   ; 
- D 1 - I - 0x023749 08:B739: 22        .byte $22   ; 
- D 1 - I - 0x02374A 08:B73A: 31        .byte $31   ; 
- D 1 - I - 0x02374B 08:B73B: 41        .byte $41   ; 
- D 1 - I - 0x02374C 08:B73C: 61        .byte $61   ; 
- D 1 - I - 0x02374D 08:B73D: 62        .byte $62   ; 
- D 1 - I - 0x02374E 08:B73E: DE        .byte $DE   ; 
- D 1 - I - 0x02374F 08:B73F: 34        .byte $34   ; 
- D 1 - I - 0x023750 08:B740: 68        .byte $68   ; 
- D 1 - I - 0x023751 08:B741: 86        .byte $86   ; 
- D 1 - I - 0x023752 08:B742: 8F        .byte $8F   ; 
- D 1 - I - 0x023753 08:B743: F3        .byte $F3   ; 
- D 1 - I - 0x023754 08:B744: 8F        .byte $8F   ; 
- D 1 - I - 0x023755 08:B745: F0        .byte $F0   ; 
- D 1 - I - 0x023756 08:B746: E3        .byte $E3   ; 
- D 1 - I - 0x023757 08:B747: 22        .byte $22   ; 
- D 1 - I - 0x023758 08:B748: DE        .byte $DE   ; 
- D 1 - I - 0x023759 08:B749: F3        .byte $F3   ; 
- D 1 - I - 0x02375A 08:B74A: 21        .byte $21   ; 
- D 1 - I - 0x02375B 08:B74B: F0        .byte $F0   ; 
- D 1 - I - 0x02375C 08:B74C: FF        .byte $FF   ; 
off_FD_B74D:
- D 1 - I - 0x02375D 08:B74D: D7        .byte $D7   ; 
- D 1 - I - 0x02375E 08:B74E: 06        .byte $06   ; 
- D 1 - I - 0x02375F 08:B74F: E0        .byte $E0   ; 
- D 1 - I - 0x023760 08:B750: 92        .byte $92   ; 
- D 1 - I - 0x023761 08:B751: E1        .byte $E1   ; 
- D 1 - I - 0x023762 08:B752: 92        .byte $92   ; 
- D 1 - I - 0x023763 08:B753: E0        .byte $E0   ; 
- D 1 - I - 0x023764 08:B754: 91        .byte $91   ; 
- D 1 - I - 0x023765 08:B755: 91        .byte $91   ; 
- D 1 - I - 0x023766 08:B756: E1        .byte $E1   ; 
- D 1 - I - 0x023767 08:B757: 91        .byte $91   ; 
- D 1 - I - 0x023768 08:B758: E0        .byte $E0   ; 
- D 1 - I - 0x023769 08:B759: 92        .byte $92   ; 
- D 1 - I - 0x02376A 08:B75A: 91        .byte $91   ; 
- D 1 - I - 0x02376B 08:B75B: E1        .byte $E1   ; 
- D 1 - I - 0x02376C 08:B75C: 91        .byte $91   ; 
- D 1 - I - 0x02376D 08:B75D: 72        .byte $72   ; 
- D 1 - I - 0x02376E 08:B75E: 71        .byte $71   ; 
- D 1 - I - 0x02376F 08:B75F: 91        .byte $91   ; 
- D 1 - I - 0x023770 08:B760: E0        .byte $E0   ; 
- D 1 - I - 0x023771 08:B761: 91        .byte $91   ; 
- D 1 - I - 0x023772 08:B762: FF        .byte $FF   ; 
off_FD_B763:
- D 1 - I - 0x023773 08:B763: D7        .byte $D7   ; 
- D 1 - I - 0x023774 08:B764: 06        .byte $06   ; 
- D 1 - I - 0x023775 08:B765: E0        .byte $E0   ; 
- D 1 - I - 0x023776 08:B766: 52        .byte $52   ; 
- D 1 - I - 0x023777 08:B767: E1        .byte $E1   ; 
- D 1 - I - 0x023778 08:B768: 52        .byte $52   ; 
- D 1 - I - 0x023779 08:B769: E0        .byte $E0   ; 
- D 1 - I - 0x02377A 08:B76A: 51        .byte $51   ; 
- D 1 - I - 0x02377B 08:B76B: 51        .byte $51   ; 
- D 1 - I - 0x02377C 08:B76C: E1        .byte $E1   ; 
- D 1 - I - 0x02377D 08:B76D: 51        .byte $51   ; 
- D 1 - I - 0x02377E 08:B76E: E0        .byte $E0   ; 
- D 1 - I - 0x02377F 08:B76F: 72        .byte $72   ; 
- D 1 - I - 0x023780 08:B770: 71        .byte $71   ; 
- D 1 - I - 0x023781 08:B771: E1        .byte $E1   ; 
- D 1 - I - 0x023782 08:B772: DE        .byte $DE   ; 
- D 1 - I - 0x023783 08:B773: 70        .byte $70   ; 
- D 1 - I - 0x023784 08:B774: C0        .byte $C0   ; 
- D 1 - I - 0x023785 08:B775: 2F        .byte $2F   ; 
- D 1 - I - 0x023786 08:B776: E8        .byte $E8   ; 
- D 1 - I - 0x023787 08:B777: 01        .byte $01   ; 
- D 1 - I - 0x023788 08:B778: 10        .byte $10   ; 
- D 1 - I - 0x023789 08:B779: E0        .byte $E0   ; 
- D 1 - I - 0x02378A 08:B77A: BA        .byte $BA   ; 
- D 1 - I - 0x02378B 08:B77B: 98        .byte $98   ; 
- D 1 - I - 0x02378C 08:B77C: DE        .byte $DE   ; 
- D 1 - I - 0x02378D 08:B77D: 71        .byte $71   ; 
- D 1 - I - 0x02378E 08:B77E: FF        .byte $FF   ; 
off_FD_B77F:
- D 1 - I - 0x02378F 08:B77F: D7        .byte $D7   ; 
- D 1 - I - 0x023790 08:B780: 06        .byte $06   ; 
- D 1 - I - 0x023791 08:B781: E0        .byte $E0   ; 
- D 1 - I - 0x023792 08:B782: 52        .byte $52   ; 
- D 1 - I - 0x023793 08:B783: E1        .byte $E1   ; 
- D 1 - I - 0x023794 08:B784: 52        .byte $52   ; 
- D 1 - I - 0x023795 08:B785: E0        .byte $E0   ; 
- D 1 - I - 0x023796 08:B786: 51        .byte $51   ; 
- D 1 - I - 0x023797 08:B787: 51        .byte $51   ; 
- D 1 - I - 0x023798 08:B788: E1        .byte $E1   ; 
- D 1 - I - 0x023799 08:B789: 51        .byte $51   ; 
- D 1 - I - 0x02379A 08:B78A: E0        .byte $E0   ; 
- D 1 - I - 0x02379B 08:B78B: 72        .byte $72   ; 
- D 1 - I - 0x02379C 08:B78C: E2        .byte $E2   ; 
- D 1 - I - 0x02379D 08:B78D: DE        .byte $DE   ; 
- D 1 - I - 0x02379E 08:B78E: 20        .byte $20   ; 
- D 1 - I - 0x02379F 08:B78F: E1        .byte $E1   ; 
- D 1 - I - 0x0237A0 08:B790: 98        .byte $98   ; 
- D 1 - I - 0x0237A1 08:B791: 75        .byte $75   ; 
- D 1 - I - 0x0237A2 08:B792: DE        .byte $DE   ; 
- D 1 - I - 0x0237A3 08:B793: 21        .byte $21   ; 
- D 1 - I - 0x0237A4 08:B794: FF        .byte $FF   ; 
off_FD_B795:
- D 1 - I - 0x0237A5 08:B795: D7        .byte $D7   ; 
- D 1 - I - 0x0237A6 08:B796: 06        .byte $06   ; 
- D 1 - I - 0x0237A7 08:B797: E0        .byte $E0   ; 
- D 1 - I - 0x0237A8 08:B798: 51        .byte $51   ; 
- D 1 - I - 0x0237A9 08:B799: 51        .byte $51   ; 
- D 1 - I - 0x0237AA 08:B79A: E1        .byte $E1   ; 
- D 1 - I - 0x0237AB 08:B79B: 51        .byte $51   ; 
- D 1 - I - 0x0237AC 08:B79C: E0        .byte $E0   ; 
- D 1 - I - 0x0237AD 08:B79D: 52        .byte $52   ; 
- D 1 - I - 0x0237AE 08:B79E: 51        .byte $51   ; 
- D 1 - I - 0x0237AF 08:B79F: 51        .byte $51   ; 
- D 1 - I - 0x0237B0 08:B7A0: 72        .byte $72   ; 
- D 1 - I - 0x0237B1 08:B7A1: 71        .byte $71   ; 
- D 1 - I - 0x0237B2 08:B7A2: E1        .byte $E1   ; 
- D 1 - I - 0x0237B3 08:B7A3: 71        .byte $71   ; 
- D 1 - I - 0x0237B4 08:B7A4: E0        .byte $E0   ; 
- D 1 - I - 0x0237B5 08:B7A5: 72        .byte $72   ; 
- D 1 - I - 0x0237B6 08:B7A6: 71        .byte $71   ; 
- D 1 - I - 0x0237B7 08:B7A7: 41        .byte $41   ; 
- D 1 - I - 0x0237B8 08:B7A8: 71        .byte $71   ; 
- D 1 - I - 0x0237B9 08:B7A9: FF        .byte $FF   ; 
off_FD_B7AA:
- D 1 - I - 0x0237BA 08:B7AA: D7        .byte $D7   ; 
- D 1 - I - 0x0237BB 08:B7AB: 06        .byte $06   ; 
- D 1 - I - 0x0237BC 08:B7AC: E0        .byte $E0   ; 
- D 1 - I - 0x0237BD 08:B7AD: 91        .byte $91   ; 
- D 1 - I - 0x0237BE 08:B7AE: E1        .byte $E1   ; 
- D 1 - I - 0x0237BF 08:B7AF: DE        .byte $DE   ; 
- D 1 - I - 0x0237C0 08:B7B0: 97        .byte $97   ; 
- D 1 - I - 0x0237C1 08:B7B1: E0        .byte $E0   ; 
- D 1 - I - 0x0237C2 08:B7B2: 9F        .byte $9F   ; 
- D 1 - I - 0x0237C3 08:B7B3: E1        .byte $E1   ; 
- D 1 - I - 0x0237C4 08:B7B4: 9F        .byte $9F   ; 
- D 1 - I - 0x0237C5 08:B7B5: E0        .byte $E0   ; 
- D 1 - I - 0x0237C6 08:B7B6: 9F        .byte $9F   ; 
- D 1 - I - 0x0237C7 08:B7B7: E1        .byte $E1   ; 
- D 1 - I - 0x0237C8 08:B7B8: 7F        .byte $7F   ; 
- D 1 - I - 0x0237C9 08:B7B9: E1        .byte $E1   ; 
- D 1 - I - 0x0237CA 08:B7BA: 9F        .byte $9F   ; 
- D 1 - I - 0x0237CB 08:B7BB: E0        .byte $E0   ; 
- D 1 - I - 0x0237CC 08:B7BC: 9F        .byte $9F   ; 
- D 1 - I - 0x0237CD 08:B7BD: E1        .byte $E1   ; 
- D 1 - I - 0x0237CE 08:B7BE: 97        .byte $97   ; 
- D 1 - I - 0x0237CF 08:B7BF: 9F        .byte $9F   ; 
- D 1 - I - 0x0237D0 08:B7C0: E0        .byte $E0   ; 
- D 1 - I - 0x0237D1 08:B7C1: 9F        .byte $9F   ; 
- D 1 - I - 0x0237D2 08:B7C2: E1        .byte $E1   ; 
- D 1 - I - 0x0237D3 08:B7C3: 00        .byte $00   ; 
- D 1 - I - 0x0237D4 08:B7C4: DE        .byte $DE   ; 
- D 1 - I - 0x0237D5 08:B7C5: E0        .byte $E0   ; 
- D 1 - I - 0x0237D6 08:B7C6: 91        .byte $91   ; 
- D 1 - I - 0x0237D7 08:B7C7: FF        .byte $FF   ; 
off_FD_B7C8:
- D 1 - I - 0x0237D8 08:B7C8: D7        .byte $D7   ; 
- D 1 - I - 0x0237D9 08:B7C9: DE        .byte $DE   ; 
- D 1 - I - 0x0237DA 08:B7CA: B1        .byte $B1   ; 
- D 1 - I - 0x0237DB 08:B7CB: 41        .byte $41   ; 
- D 1 - I - 0x0237DC 08:B7CC: BB        .byte $BB   ; 
- D 1 - I - 0x0237DD 08:B7CD: 4B        .byte $4B   ; 
- D 1 - I - 0x0237DE 08:B7CE: 1B        .byte $1B   ; 
- D 1 - I - 0x0237DF 08:B7CF: 41        .byte $41   ; 
- D 1 - I - 0x0237E0 08:B7D0: B1        .byte $B1   ; 
- D 1 - I - 0x0237E1 08:B7D1: 41        .byte $41   ; 
- D 1 - I - 0x0237E2 08:B7D2: B1        .byte $B1   ; 
- D 1 - I - 0x0237E3 08:B7D3: 41        .byte $41   ; 
- D 1 - I - 0x0237E4 08:B7D4: BB        .byte $BB   ; 
- D 1 - I - 0x0237E5 08:B7D5: 4B        .byte $4B   ; 
- D 1 - I - 0x0237E6 08:B7D6: 14        .byte $14   ; 
- D 1 - I - 0x0237E7 08:B7D7: B1        .byte $B1   ; 
- D 1 - I - 0x0237E8 08:B7D8: 41        .byte $41   ; 
- D 1 - I - 0x0237E9 08:B7D9: 44        .byte $44   ; 
- D 1 - I - 0x0237EA 08:B7DA: DE        .byte $DE   ; 
- D 1 - I - 0x0237EB 08:B7DB: FF        .byte $FF   ; 
off_FD_B7DC:
- D 1 - I - 0x0237EC 08:B7DC: D7        .byte $D7   ; 
- D 1 - I - 0x0237ED 08:B7DD: DE        .byte $DE   ; 
- D 1 - I - 0x0237EE 08:B7DE: B1        .byte $B1   ; 
- D 1 - I - 0x0237EF 08:B7DF: 41        .byte $41   ; 
- D 1 - I - 0x0237F0 08:B7E0: BB        .byte $BB   ; 
- D 1 - I - 0x0237F1 08:B7E1: 4B        .byte $4B   ; 
- D 1 - I - 0x0237F2 08:B7E2: 1B        .byte $1B   ; 
- D 1 - I - 0x0237F3 08:B7E3: 41        .byte $41   ; 
- D 1 - I - 0x0237F4 08:B7E4: B1        .byte $B1   ; 
- D 1 - I - 0x0237F5 08:B7E5: 41        .byte $41   ; 
- D 1 - I - 0x0237F6 08:B7E6: B1        .byte $B1   ; 
- D 1 - I - 0x0237F7 08:B7E7: 41        .byte $41   ; 
- D 1 - I - 0x0237F8 08:B7E8: BB        .byte $BB   ; 
- D 1 - I - 0x0237F9 08:B7E9: 4B        .byte $4B   ; 
- D 1 - I - 0x0237FA 08:B7EA: B1        .byte $B1   ; 
- D 1 - I - 0x0237FB 08:B7EB: 14        .byte $14   ; 
- D 1 - I - 0x0237FC 08:B7EC: 14        .byte $14   ; 
- D 1 - I - 0x0237FD 08:B7ED: 41        .byte $41   ; 
- D 1 - I - 0x0237FE 08:B7EE: DE        .byte $DE   ; 
- D 1 - I - 0x0237FF 08:B7EF: FF        .byte $FF   ; 
off_FD_B7F0:
- D 1 - I - 0x023800 08:B7F0: D7        .byte $D7   ; 
- D 1 - I - 0x023801 08:B7F1: DE        .byte $DE   ; 
- D 1 - I - 0x023802 08:B7F2: B1        .byte $B1   ; 
- D 1 - I - 0x023803 08:B7F3: 41        .byte $41   ; 
- D 1 - I - 0x023804 08:B7F4: BB        .byte $BB   ; 
- D 1 - I - 0x023805 08:B7F5: 4B        .byte $4B   ; 
- D 1 - I - 0x023806 08:B7F6: 1B        .byte $1B   ; 
- D 1 - I - 0x023807 08:B7F7: 41        .byte $41   ; 
- D 1 - I - 0x023808 08:B7F8: B1        .byte $B1   ; 
- D 1 - I - 0x023809 08:B7F9: 41        .byte $41   ; 
- D 1 - I - 0x02380A 08:B7FA: B1        .byte $B1   ; 
- D 1 - I - 0x02380B 08:B7FB: 41        .byte $41   ; 
- D 1 - I - 0x02380C 08:B7FC: BB        .byte $BB   ; 
- D 1 - I - 0x02380D 08:B7FD: 4B        .byte $4B   ; 
- D 1 - I - 0x02380E 08:B7FE: 4B        .byte $4B   ; 
- D 1 - I - 0x02380F 08:B7FF: B4        .byte $B4   ; 
- D 1 - I - 0x023810 08:B800: B4        .byte $B4   ; 
- D 1 - I - 0x023811 08:B801: 41        .byte $41   ; 
- D 1 - I - 0x023812 08:B802: DE        .byte $DE   ; 
- D 1 - I - 0x023813 08:B803: FF        .byte $FF   ; 
off_FD_B804:
- D 1 - I - 0x023814 08:B804: D7        .byte $D7   ; 
- D 1 - I - 0x023815 08:B805: DE        .byte $DE   ; 
- D 1 - I - 0x023816 08:B806: B1        .byte $B1   ; 
- D 1 - I - 0x023817 08:B807: 2B        .byte $2B   ; 
- D 1 - I - 0x023818 08:B808: 11        .byte $11   ; 
- D 1 - I - 0x023819 08:B809: 4B        .byte $4B   ; 
- D 1 - I - 0x02381A 08:B80A: 11        .byte $11   ; 
- D 1 - I - 0x02381B 08:B80B: 2B        .byte $2B   ; 
- D 1 - I - 0x02381C 08:B80C: 11        .byte $11   ; 
- D 1 - I - 0x02381D 08:B80D: 11        .byte $11   ; 
- D 1 - I - 0x02381E 08:B80E: DE        .byte $DE   ; 
- D 1 - I - 0x02381F 08:B80F: FF        .byte $FF   ; 
off_FD_B810:
- D 1 - I - 0x023820 08:B810: D7        .byte $D7   ; 
- D 1 - I - 0x023821 08:B811: DE        .byte $DE   ; 
- D 1 - I - 0x023822 08:B812: B1        .byte $B1   ; 
- D 1 - I - 0x023823 08:B813: 41        .byte $41   ; 
- D 1 - I - 0x023824 08:B814: BB        .byte $BB   ; 
- D 1 - I - 0x023825 08:B815: 4B        .byte $4B   ; 
- D 1 - I - 0x023826 08:B816: 1B        .byte $1B   ; 
- D 1 - I - 0x023827 08:B817: 41        .byte $41   ; 
- D 1 - I - 0x023828 08:B818: B4        .byte $B4   ; 
- D 1 - I - 0x023829 08:B819: 41        .byte $41   ; 
- D 1 - I - 0x02382A 08:B81A: DE        .byte $DE   ; 
- D 1 - I - 0x02382B 08:B81B: FF        .byte $FF   ; 
off_FD_B81C:
- D 1 - I - 0x02382C 08:B81C: D7        .byte $D7   ; 
- D 1 - I - 0x02382D 08:B81D: DE        .byte $DE   ; 
- D 1 - I - 0x02382E 08:B81E: B1        .byte $B1   ; 
- D 1 - I - 0x02382F 08:B81F: 2B        .byte $2B   ; 
- D 1 - I - 0x023830 08:B820: 11        .byte $11   ; 
- D 1 - I - 0x023831 08:B821: 4B        .byte $4B   ; 
- D 1 - I - 0x023832 08:B822: 44        .byte $44   ; 
- D 1 - I - 0x023833 08:B823: 44        .byte $44   ; 
- D 1 - I - 0x023834 08:B824: 14        .byte $14   ; 
- D 1 - I - 0x023835 08:B825: 41        .byte $41   ; 
- D 1 - I - 0x023836 08:B826: DE        .byte $DE   ; 
- D 1 - I - 0x023837 08:B827: FF        .byte $FF   ; 



_off001_B828_41:
- D 1 - I - 0x023838 08:B828: EE        .byte $EE   ; 
- D 1 - I - 0x023839 08:B829: 83        .byte $83   ; 
- D 1 - I - 0x02383A 08:B82A: D3        .byte $D3   ; 
- D 1 - I - 0x02383B 08:B82B: 78        .byte $78   ; 
- D 1 - I - 0x02383C 08:B82C: 83        .byte $83   ; 
- D 1 - I - 0x02383D 08:B82D: 84        .byte $84   ; 
- D 1 - I - 0x02383E 08:B82E: FE        .byte $FE   ; 
- D 1 - I - 0x02383F 08:B82F: FF        .byte $FF   ; 
- D 1 - I - 0x023840 08:B830: 6B B8     .word off_FF_B86B



_off001_B832_40:
- D 1 - I - 0x023842 08:B832: EE        .byte $EE   ; 
- D 1 - I - 0x023843 08:B833: 88        .byte $88   ; 
- D 1 - I - 0x023844 08:B834: D3        .byte $D3   ; 
- D 1 - I - 0x023845 08:B835: 76        .byte $76   ; 
- D 1 - I - 0x023846 08:B836: 83        .byte $83   ; 
- D 1 - I - 0x023847 08:B837: 84        .byte $84   ; 
- D 1 - I - 0x023848 08:B838: FE        .byte $FE   ; 
- D 1 - I - 0x023849 08:B839: FF        .byte $FF   ; 
- D 1 - I - 0x02384A 08:B83A: 6B B8     .word off_FF_B86B



_off001_B83C_42:
- D 1 - I - 0x02384C 08:B83C: EE        .byte $EE   ; 
- D 1 - I - 0x02384D 08:B83D: 83        .byte $83   ; 
- D 1 - I - 0x02384E 08:B83E: D3        .byte $D3   ; 
- D 1 - I - 0x02384F 08:B83F: 07        .byte $07   ; 
- D 1 - I - 0x023850 08:B840: FE        .byte $FE   ; 
- D 1 - I - 0x023851 08:B841: FF        .byte $FF   ; 
- D 1 - I - 0x023852 08:B842: A3 B8     .word off_FF_B8A3



_off001_B844_43:
- D 1 - I - 0x023854 08:B844: EF        .byte $EF   ; 
- D 1 - I - 0x023855 08:B845: 06        .byte $06   ; 
- D 1 - I - 0x023856 08:B846: D6        .byte $D6   ; 
- D 1 - I - 0x023857 08:B847: FD        .byte $FD   ; 
- D 1 - I - 0x023858 08:B848: CE B8     .word off_FD_B8CE
off_FF_B84A:
- D 1 - I - 0x02385A 08:B84A: D8        .byte $D8   ; 
- D 1 - I - 0x02385B 08:B84B: DE        .byte $DE   ; 
- D 1 - I - 0x02385C 08:B84C: B1        .byte $B1   ; 
- D 1 - I - 0x02385D 08:B84D: A1        .byte $A1   ; 
- D 1 - I - 0x02385E 08:B84E: BB        .byte $BB   ; 
- D 1 - I - 0x02385F 08:B84F: AB        .byte $AB   ; 
- D 1 - I - 0x023860 08:B850: 1B        .byte $1B   ; 
- D 1 - I - 0x023861 08:B851: A1        .byte $A1   ; 
- D 1 - I - 0x023862 08:B852: B1        .byte $B1   ; 
- D 1 - I - 0x023863 08:B853: A1        .byte $A1   ; 
- D 1 - I - 0x023864 08:B854: DE        .byte $DE   ; 
- D 1 - I - 0x023865 08:B855: FE        .byte $FE   ; 
- D 1 - I - 0x023866 08:B856: FF        .byte $FF   ; 
- D 1 - I - 0x023867 08:B857: 4A B8     .word off_FF_B84A



_off001_B859_45:
- D 1 - I - 0x023869 08:B859: EE        .byte $EE   ; 
- D 1 - I - 0x02386A 08:B85A: 83        .byte $83   ; 
- D 1 - I - 0x02386B 08:B85B: D3        .byte $D3   ; 
- D 1 - I - 0x02386C 08:B85C: 78        .byte $78   ; 
- D 1 - I - 0x02386D 08:B85D: 83        .byte $83   ; 
- D 1 - I - 0x02386E 08:B85E: 84        .byte $84   ; 
- D 1 - I - 0x02386F 08:B85F: C0        .byte $C0   ; 
- D 1 - I - 0x023870 08:B860: FE        .byte $FE   ; 
- D 1 - I - 0x023871 08:B861: FF        .byte $FF   ; 
- D 1 - I - 0x023872 08:B862: 6B B8     .word off_FF_B86B



_off001_B864_44:
- D 1 - I - 0x023874 08:B864: EE        .byte $EE   ; 
- D 1 - I - 0x023875 08:B865: 88        .byte $88   ; 
- D 1 - I - 0x023876 08:B866: D3        .byte $D3   ; 
- D 1 - I - 0x023877 08:B867: 76        .byte $76   ; 
- D 1 - I - 0x023878 08:B868: 83        .byte $83   ; 
- D 1 - I - 0x023879 08:B869: 84        .byte $84   ; 
- D 1 - I - 0x02387A 08:B86A: C0        .byte $C0   ; 
off_FF_B86B:
- D 1 - I - 0x02387B 08:B86B: EC        .byte $EC   ; 
- D 1 - I - 0x02387C 08:B86C: 11        .byte $11   ; 
- D 1 - I - 0x02387D 08:B86D: E1        .byte $E1   ; 
- D 1 - I - 0x02387E 08:B86E: A2        .byte $A2   ; 
- D 1 - I - 0x02387F 08:B86F: E2        .byte $E2   ; 
- D 1 - I - 0x023880 08:B870: 52        .byte $52   ; 
- D 1 - I - 0x023881 08:B871: 82        .byte $82   ; 
- D 1 - I - 0x023882 08:B872: A2        .byte $A2   ; 
- D 1 - I - 0x023883 08:B873: F3        .byte $F3   ; 
- D 1 - I - 0x023884 08:B874: A2        .byte $A2   ; 
- D 1 - I - 0x023885 08:B875: E3        .byte $E3   ; 
- D 1 - I - 0x023886 08:B876: F0        .byte $F0   ; 
- D 1 - I - 0x023887 08:B877: A2        .byte $A2   ; 
- D 1 - I - 0x023888 08:B878: F3        .byte $F3   ; 
- D 1 - I - 0x023889 08:B879: A2        .byte $A2   ; 
- D 1 - I - 0x02388A 08:B87A: F0        .byte $F0   ; 
- D 1 - I - 0x02388B 08:B87B: A2        .byte $A2   ; 
- D 1 - I - 0x02388C 08:B87C: F4        .byte $F4   ; 
- D 1 - I - 0x02388D 08:B87D: A2        .byte $A2   ; 
- D 1 - I - 0x02388E 08:B87E: F0        .byte $F0   ; 
- D 1 - I - 0x02388F 08:B87F: E2        .byte $E2   ; 
- D 1 - I - 0x023890 08:B880: 82        .byte $82   ; 
- D 1 - I - 0x023891 08:B881: F3        .byte $F3   ; 
- D 1 - I - 0x023892 08:B882: 82        .byte $82   ; 
- D 1 - I - 0x023893 08:B883: F0        .byte $F0   ; 
- D 1 - I - 0x023894 08:B884: EB        .byte $EB   ; 
- D 1 - I - 0x023895 08:B885: 51        .byte $51   ; 
- D 1 - I - 0x023896 08:B886: 22        .byte $22   ; 
- D 1 - I - 0x023897 08:B887: 84        .byte $84   ; 
- D 1 - I - 0x023898 08:B888: EB        .byte $EB   ; 
- D 1 - I - 0x023899 08:B889: 00        .byte $00   ; 
- D 1 - I - 0x02389A 08:B88A: 72        .byte $72   ; 
- D 1 - I - 0x02389B 08:B88B: 82        .byte $82   ; 
- D 1 - I - 0x02389C 08:B88C: F3        .byte $F3   ; 
- D 1 - I - 0x02389D 08:B88D: 82        .byte $82   ; 
- D 1 - I - 0x02389E 08:B88E: F0        .byte $F0   ; 
- D 1 - I - 0x02389F 08:B88F: E1        .byte $E1   ; 
- D 1 - I - 0x0238A0 08:B890: A2        .byte $A2   ; 
- D 1 - I - 0x0238A1 08:B891: E2        .byte $E2   ; 
- D 1 - I - 0x0238A2 08:B892: 32        .byte $32   ; 
- D 1 - I - 0x0238A3 08:B893: 02        .byte $02   ; 
- D 1 - I - 0x0238A4 08:B894: 52        .byte $52   ; 
- D 1 - I - 0x0238A5 08:B895: 72        .byte $72   ; 
- D 1 - I - 0x0238A6 08:B896: A2        .byte $A2   ; 
- D 1 - I - 0x0238A7 08:B897: B2        .byte $B2   ; 
- D 1 - I - 0x0238A8 08:B898: EB        .byte $EB   ; 
- D 1 - I - 0x0238A9 08:B899: 58        .byte $58   ; 
- D 1 - I - 0x0238AA 08:B89A: 42        .byte $42   ; 
- D 1 - I - 0x0238AB 08:B89B: E3        .byte $E3   ; 
- D 1 - I - 0x0238AC 08:B89C: 00        .byte $00   ; 
- D 1 - I - 0x0238AD 08:B89D: FF        .byte $FF   ; 



_off001_B89E_46:
- D 1 - I - 0x0238AE 08:B89E: EE        .byte $EE   ; 
- D 1 - I - 0x0238AF 08:B89F: 83        .byte $83   ; 
- D 1 - I - 0x0238B0 08:B8A0: D3        .byte $D3   ; 
- D 1 - I - 0x0238B1 08:B8A1: 07        .byte $07   ; 
- D 1 - I - 0x0238B2 08:B8A2: C0        .byte $C0   ; 
off_FF_B8A3:
- D 1 - I - 0x0238B3 08:B8A3: EE        .byte $EE   ; 
- D 1 - I - 0x0238B4 08:B8A4: 83        .byte $83   ; 
- D 1 - I - 0x0238B5 08:B8A5: E1        .byte $E1   ; 
- D 1 - I - 0x0238B6 08:B8A6: A4        .byte $A4   ; 
- D 1 - I - 0x0238B7 08:B8A7: A2        .byte $A2   ; 
- D 1 - I - 0x0238B8 08:B8A8: A4        .byte $A4   ; 
- D 1 - I - 0x0238B9 08:B8A9: A4        .byte $A4   ; 
- D 1 - I - 0x0238BA 08:B8AA: A4        .byte $A4   ; 
- D 1 - I - 0x0238BB 08:B8AB: 84        .byte $84   ; 
- D 1 - I - 0x0238BC 08:B8AC: 84        .byte $84   ; 
- D 1 - I - 0x0238BD 08:B8AD: 82        .byte $82   ; 
- D 1 - I - 0x0238BE 08:B8AE: 84        .byte $84   ; 
- D 1 - I - 0x0238BF 08:B8AF: E0        .byte $E0   ; 
- D 1 - I - 0x0238C0 08:B8B0: A2        .byte $A2   ; 
- D 1 - I - 0x0238C1 08:B8B1: E2        .byte $E2   ; 
- D 1 - I - 0x0238C2 08:B8B2: 32        .byte $32   ; 
- D 1 - I - 0x0238C3 08:B8B3: 02        .byte $02   ; 
- D 1 - I - 0x0238C4 08:B8B4: 52        .byte $52   ; 
- D 1 - I - 0x0238C5 08:B8B5: 72        .byte $72   ; 
- D 1 - I - 0x0238C6 08:B8B6: A2        .byte $A2   ; 
- D 1 - I - 0x0238C7 08:B8B7: B2        .byte $B2   ; 
- D 1 - I - 0x0238C8 08:B8B8: D1        .byte $D1   ; 
- D 1 - I - 0x0238C9 08:B8B9: 00        .byte $00   ; 
- D 1 - I - 0x0238CA 08:B8BA: E3        .byte $E3   ; 
- D 1 - I - 0x0238CB 08:B8BB: 0C        .byte $0C   ; 
- D 1 - I - 0x0238CC 08:B8BC: E2        .byte $E2   ; 
- D 1 - I - 0x0238CD 08:B8BD: DE        .byte $DE   ; 
- D 1 - I - 0x0238CE 08:B8BE: 98        .byte $98   ; 
- D 1 - I - 0x0238CF 08:B8BF: 76        .byte $76   ; 
- D 1 - I - 0x0238D0 08:B8C0: 54        .byte $54   ; 
- D 1 - I - 0x0238D1 08:B8C1: 32        .byte $32   ; 
- D 1 - I - 0x0238D2 08:B8C2: 10        .byte $10   ; 
- D 1 - I - 0x0238D3 08:B8C3: E1        .byte $E1   ; 
- D 1 - I - 0x0238D4 08:B8C4: BA        .byte $BA   ; 
- D 1 - I - 0x0238D5 08:B8C5: DE        .byte $DE   ; 
- D 1 - I - 0x0238D6 08:B8C6: D2        .byte $D2   ; 
- D 1 - I - 0x0238D7 08:B8C7: 03        .byte $03   ; 
- D 1 - I - 0x0238D8 08:B8C8: 08        .byte $08   ; 
- D 1 - I - 0x0238D9 08:B8C9: FF        .byte $FF   ; 



_off001_B8CA_47:
- D 1 - I - 0x0238DA 08:B8CA: EF        .byte $EF   ; 
- D 1 - I - 0x0238DB 08:B8CB: 06        .byte $06   ; 
- D 1 - I - 0x0238DC 08:B8CC: D6        .byte $D6   ; 
- D 1 - I - 0x0238DD 08:B8CD: C8        .byte $C8   ; 
off_FD_B8CE:
- D 1 - I - 0x0238DE 08:B8CE: B2        .byte $B2   ; 
- D 1 - I - 0x0238DF 08:B8CF: B2        .byte $B2   ; 
- D 1 - I - 0x0238E0 08:B8D0: 42        .byte $42   ; 
- D 1 - I - 0x0238E1 08:B8D1: B1        .byte $B1   ; 
- D 1 - I - 0x0238E2 08:B8D2: 41        .byte $41   ; 
- D 1 - I - 0x0238E3 08:B8D3: B1        .byte $B1   ; 
- D 1 - I - 0x0238E4 08:B8D4: 41        .byte $41   ; 
- D 1 - I - 0x0238E5 08:B8D5: B2        .byte $B2   ; 
- D 1 - I - 0x0238E6 08:B8D6: 42        .byte $42   ; 
- D 1 - I - 0x0238E7 08:B8D7: B2        .byte $B2   ; 
- D 1 - I - 0x0238E8 08:B8D8: DE        .byte $DE   ; 
- D 1 - I - 0x0238E9 08:B8D9: 12        .byte $12   ; 
- D 1 - I - 0x0238EA 08:B8DA: 1B        .byte $1B   ; 
- D 1 - I - 0x0238EB 08:B8DB: 98        .byte $98   ; 
- D 1 - I - 0x0238EC 08:B8DC: DE        .byte $DE   ; 
- D 1 - I - 0x0238ED 08:B8DD: 71        .byte $71   ; 
- D 1 - I - 0x0238EE 08:B8DE: 64        .byte $64   ; 
- D 1 - I - 0x0238EF 08:B8DF: B2        .byte $B2   ; 
- D 1 - I - 0x0238F0 08:B8E0: 41        .byte $41   ; 
- D 1 - I - 0x0238F1 08:B8E1: 41        .byte $41   ; 
- D 1 - I - 0x0238F2 08:B8E2: FF        .byte $FF   ; 



_off001_B8E3_49:
- D 1 - I - 0x0238F3 08:B8E3: EC        .byte $EC   ; 
- D 1 - I - 0x0238F4 08:B8E4: 11        .byte $11   ; 
- D 1 - I - 0x0238F5 08:B8E5: DA        .byte $DA   ; 
- D 1 - I - 0x0238F6 08:B8E6: 77        .byte $77   ; 
- D 1 - I - 0x0238F7 08:B8E7: 84        .byte $84   ; 
- D 1 - I - 0x0238F8 08:B8E8: 86        .byte $86   ; 
- D 1 - I - 0x0238F9 08:B8E9: C4        .byte $C4   ; 
- D 1 - I - 0x0238FA 08:B8EA: FE        .byte $FE   ; 
- D 1 - I - 0x0238FB 08:B8EB: FF        .byte $FF   ; 
- D 1 - I - 0x0238FC 08:B8EC: F7 B8     .word off_FF_B8F7



_off001_B8EE_48:
- D 1 - I - 0x0238FE 08:B8EE: EE        .byte $EE   ; 
- D 1 - I - 0x0238FF 08:B8EF: 85        .byte $85   ; 
- D 1 - I - 0x023900 08:B8F0: EC        .byte $EC   ; 
- D 1 - I - 0x023901 08:B8F1: 11        .byte $11   ; 
- D 1 - I - 0x023902 08:B8F2: DA        .byte $DA   ; 
- D 1 - I - 0x023903 08:B8F3: 75        .byte $75   ; 
- D 1 - I - 0x023904 08:B8F4: 83        .byte $83   ; 
- D 1 - I - 0x023905 08:B8F5: 88        .byte $88   ; 
- D 1 - I - 0x023906 08:B8F6: C4        .byte $C4   ; 
off_FF_B8F7:
- D 1 - I - 0x023907 08:B8F7: EA        .byte $EA   ; 
- D 1 - I - 0x023908 08:B8F8: 51        .byte $51   ; 
- D 1 - I - 0x023909 08:B8F9: EB        .byte $EB   ; 
- D 1 - I - 0x02390A 08:B8FA: 58        .byte $58   ; 
- D 1 - I - 0x02390B 08:B8FB: 01        .byte $01   ; 
- D 1 - I - 0x02390C 08:B8FC: E3        .byte $E3   ; 
- D 1 - I - 0x02390D 08:B8FD: DE        .byte $DE   ; 
- D 1 - I - 0x02390E 08:B8FE: 05        .byte $05   ; 
- D 1 - I - 0x02390F 08:B8FF: A9        .byte $A9   ; 
- D 1 - I - 0x023910 08:B900: 4F        .byte $4F   ; 
- D 1 - I - 0x023911 08:B901: E2        .byte $E2   ; 
- D 1 - I - 0x023912 08:B902: BA        .byte $BA   ; 
- D 1 - I - 0x023913 08:B903: E3        .byte $E3   ; 
- D 1 - I - 0x023914 08:B904: 38        .byte $38   ; 
- D 1 - I - 0x023915 08:B905: 72        .byte $72   ; 
- D 1 - I - 0x023916 08:B906: DE        .byte $DE   ; 
- D 1 - I - 0x023917 08:B907: E2        .byte $E2   ; 
- D 1 - I - 0x023918 08:B908: 91        .byte $91   ; 
- D 1 - I - 0x023919 08:B909: E8        .byte $E8   ; 
- D 1 - I - 0x02391A 08:B90A: 05        .byte $05   ; 
- D 1 - I - 0x02391B 08:B90B: E7        .byte $E7   ; 
- D 1 - I - 0x02391C 08:B90C: 84        .byte $84   ; 
- D 1 - I - 0x02391D 08:B90D: EA        .byte $EA   ; 
- D 1 - I - 0x02391E 08:B90E: 61        .byte $61   ; 
- D 1 - I - 0x02391F 08:B90F: F1        .byte $F1   ; 
- D 1 - I - 0x023920 08:B910: FB        .byte $FB   ; 
- D 1 - I - 0x023921 08:B911: 81        .byte $81   ; 
- D 1 - I - 0x023922 08:B912: 91        .byte $91   ; 
- D 1 - I - 0x023923 08:B913: FE        .byte $FE   ; 
- D 1 - I - 0x023924 08:B914: 06        .byte $06   ; 
- D 1 - I - 0x023925 08:B915: F0        .byte $F0   ; 
- D 1 - I - 0x023926 08:B916: EB        .byte $EB   ; 
- D 1 - I - 0x023927 08:B917: 58        .byte $58   ; 
- D 1 - I - 0x023928 08:B918: 33        .byte $33   ; 
- D 1 - I - 0x023929 08:B919: 80        .byte $80   ; 
- D 1 - I - 0x02392A 08:B91A: FF        .byte $FF   ; 



_off001_B91B_4A:
- D 1 - I - 0x02392B 08:B91B: DA        .byte $DA   ; 
- D 1 - I - 0x02392C 08:B91C: 03        .byte $03   ; 
- D 1 - I - 0x02392D 08:B91D: C4        .byte $C4   ; 
- D 1 - I - 0x02392E 08:B91E: E2        .byte $E2   ; 
- D 1 - I - 0x02392F 08:B91F: 03        .byte $03   ; 
- D 1 - I - 0x023930 08:B920: E1        .byte $E1   ; 
- D 1 - I - 0x023931 08:B921: B3        .byte $B3   ; 
- D 1 - I - 0x023932 08:B922: A3        .byte $A3   ; 
- D 1 - I - 0x023933 08:B923: 93        .byte $93   ; 
- D 1 - I - 0x023934 08:B924: 80        .byte $80   ; 
- D 1 - I - 0x023935 08:B925: FF        .byte $FF   ; 



_off001_B926_4B:
- D 1 - I - 0x023936 08:B926: FF        .byte $FF   ; 



_off001_B927_55:
- D 1 - I - 0x023937 08:B927: D4        .byte $D4   ; 
- D 1 - I - 0x023938 08:B928: 36        .byte $36   ; 
- D 1 - I - 0x023939 08:B929: 84        .byte $84   ; 
- D 1 - I - 0x02393A 08:B92A: 28        .byte $28   ; 
off_FF_B92B:
- D 1 - I - 0x02393B 08:B92B: E2        .byte $E2   ; 
- D 1 - I - 0x02393C 08:B92C: 91        .byte $91   ; 
- D 1 - I - 0x02393D 08:B92D: 91        .byte $91   ; 
- D 1 - I - 0x02393E 08:B92E: 71        .byte $71   ; 
- D 1 - I - 0x02393F 08:B92F: 91        .byte $91   ; 
- D 1 - I - 0x023940 08:B930: E3        .byte $E3   ; 
- D 1 - I - 0x023941 08:B931: 01        .byte $01   ; 
- D 1 - I - 0x023942 08:B932: 21        .byte $21   ; 
- D 1 - I - 0x023943 08:B933: 51        .byte $51   ; 
- D 1 - I - 0x023944 08:B934: 71        .byte $71   ; 
- D 1 - I - 0x023945 08:B935: C1        .byte $C1   ; 
- D 1 - I - 0x023946 08:B936: 91        .byte $91   ; 
- D 1 - I - 0x023947 08:B937: C1        .byte $C1   ; 
- D 1 - I - 0x023948 08:B938: E4        .byte $E4   ; 
- D 1 - I - 0x023949 08:B939: 01        .byte $01   ; 
- D 1 - I - 0x02394A 08:B93A: C1        .byte $C1   ; 
- D 1 - I - 0x02394B 08:B93B: 11        .byte $11   ; 
- D 1 - I - 0x02394C 08:B93C: D4        .byte $D4   ; 
- D 1 - I - 0x02394D 08:B93D: 76        .byte $76   ; 
- D 1 - I - 0x02394E 08:B93E: 80        .byte $80   ; 
- D 1 - I - 0x02394F 08:B93F: 00        .byte $00   ; 
- D 1 - I - 0x023950 08:B940: FD        .byte $FD   ; 
- D 1 - I - 0x023951 08:B941: 88 B9     .word off_FD_B988
- D 1 - I - 0x023953 08:B943: F3        .byte $F3   ; 
- D 1 - I - 0x023954 08:B944: FD        .byte $FD   ; 
- D 1 - I - 0x023955 08:B945: 88 B9     .word off_FD_B988
- D 1 - I - 0x023957 08:B947: F4        .byte $F4   ; 
- D 1 - I - 0x023958 08:B948: FD        .byte $FD   ; 
- D 1 - I - 0x023959 08:B949: 88 B9     .word off_FD_B988
- D 1 - I - 0x02395B 08:B94B: F5        .byte $F5   ; 
- D 1 - I - 0x02395C 08:B94C: FD        .byte $FD   ; 
- D 1 - I - 0x02395D 08:B94D: 88 B9     .word off_FD_B988
- D 1 - I - 0x02395F 08:B94F: FF        .byte $FF   ; 



_off001_B950_54:
- D 1 - I - 0x023960 08:B950: D4        .byte $D4   ; 
- D 1 - I - 0x023961 08:B951: 36        .byte $36   ; 
- D 1 - I - 0x023962 08:B952: 84        .byte $84   ; 
- D 1 - I - 0x023963 08:B953: 28        .byte $28   ; 
- D 1 - I - 0x023964 08:B954: EE        .byte $EE   ; 
- D 1 - I - 0x023965 08:B955: 85        .byte $85   ; 
- D 1 - I - 0x023966 08:B956: FE        .byte $FE   ; 
- D 1 - I - 0x023967 08:B957: FF        .byte $FF   ; 
- D 1 - I - 0x023968 08:B958: 2B B9     .word off_FF_B92B



_off001_B95A_56:
- D 1 - I - 0x02396A 08:B95A: D4        .byte $D4   ; 
- D 1 - I - 0x02396B 08:B95B: 1F        .byte $1F   ; 
- D 1 - I - 0x02396C 08:B95C: E1        .byte $E1   ; 
- D 1 - I - 0x02396D 08:B95D: 91        .byte $91   ; 
- D 1 - I - 0x02396E 08:B95E: 91        .byte $91   ; 
- D 1 - I - 0x02396F 08:B95F: 91        .byte $91   ; 
- D 1 - I - 0x023970 08:B960: 91        .byte $91   ; 
- D 1 - I - 0x023971 08:B961: 71        .byte $71   ; 
- D 1 - I - 0x023972 08:B962: 51        .byte $51   ; 
- D 1 - I - 0x023973 08:B963: 21        .byte $21   ; 
- D 1 - I - 0x023974 08:B964: 01        .byte $01   ; 
- D 1 - I - 0x023975 08:B965: D2        .byte $D2   ; 
- D 1 - I - 0x023976 08:B966: 12        .byte $12   ; 
- D 1 - I - 0x023977 08:B967: E5        .byte $E5   ; 
- D 1 - I - 0x023978 08:B968: 91        .byte $91   ; 
- D 1 - I - 0x023979 08:B969: 81        .byte $81   ; 
- D 1 - I - 0x02397A 08:B96A: 71        .byte $71   ; 
- D 1 - I - 0x02397B 08:B96B: 61        .byte $61   ; 
- D 1 - I - 0x02397C 08:B96C: 51        .byte $51   ; 
- D 1 - I - 0x02397D 08:B96D: 41        .byte $41   ; 
- D 1 - I - 0x02397E 08:B96E: 31        .byte $31   ; 
- D 1 - I - 0x02397F 08:B96F: 21        .byte $21   ; 
- D 1 - I - 0x023980 08:B970: 11        .byte $11   ; 
- D 1 - I - 0x023981 08:B971: 01        .byte $01   ; 
- D 1 - I - 0x023982 08:B972: E4        .byte $E4   ; 
- D 1 - I - 0x023983 08:B973: B1        .byte $B1   ; 
- D 1 - I - 0x023984 08:B974: A1        .byte $A1   ; 
- D 1 - I - 0x023985 08:B975: D4        .byte $D4   ; 
- D 1 - I - 0x023986 08:B976: 7F        .byte $7F   ; 
- D 1 - I - 0x023987 08:B977: E1        .byte $E1   ; 
- D 1 - I - 0x023988 08:B978: 20        .byte $20   ; 
- D 1 - I - 0x023989 08:B979: FF        .byte $FF   ; 



_off001_B97A_57:
- D 1 - I - 0x02398A 08:B97A: D4        .byte $D4   ; 
- D 1 - I - 0x02398B 08:B97B: EF        .byte $EF   ; 
- D 1 - I - 0x02398C 08:B97C: 03        .byte $03   ; 
- D 1 - I - 0x02398D 08:B97D: DE        .byte $DE   ; 
- D 1 - I - 0x02398E 08:B97E: 33        .byte $33   ; 
- D 1 - I - 0x02398F 08:B97F: 33        .byte $33   ; 
- D 1 - I - 0x023990 08:B980: 99        .byte $99   ; 
- D 1 - I - 0x023991 08:B981: 87        .byte $87   ; 
- D 1 - I - 0x023992 08:B982: 1B        .byte $1B   ; 
- D 1 - I - 0x023993 08:B983: 1B        .byte $1B   ; 
- D 1 - I - 0x023994 08:B984: 1B        .byte $1B   ; 
- D 1 - I - 0x023995 08:B985: DE        .byte $DE   ; 
- D 1 - I - 0x023996 08:B986: 34        .byte $34   ; 
- D 1 - I - 0x023997 08:B987: FF        .byte $FF   ; 
off_FD_B988:
- D 1 - I - 0x023998 08:B988: E8        .byte $E8   ; 
- D 1 - I - 0x023999 08:B989: 01        .byte $01   ; 
- D 1 - I - 0x02399A 08:B98A: E5        .byte $E5   ; 
- D 1 - I - 0x02399B 08:B98B: 24        .byte $24   ; 
- D 1 - I - 0x02399C 08:B98C: 21        .byte $21   ; 
- D 1 - I - 0x02399D 08:B98D: 11        .byte $11   ; 
- D 1 - I - 0x02399E 08:B98E: 01        .byte $01   ; 
- D 1 - I - 0x02399F 08:B98F: E4        .byte $E4   ; 
- D 1 - I - 0x0239A0 08:B990: B1        .byte $B1   ; 
- D 1 - I - 0x0239A1 08:B991: A1        .byte $A1   ; 
- D 1 - I - 0x0239A2 08:B992: 91        .byte $91   ; 
- D 1 - I - 0x0239A3 08:B993: 81        .byte $81   ; 
- D 1 - I - 0x0239A4 08:B994: 71        .byte $71   ; 
- D 1 - I - 0x0239A5 08:B995: FF        .byte $FF   ; 



_off001_B996_4D:
- D 1 - I - 0x0239A6 08:B996: EC        .byte $EC   ; 
- D 1 - I - 0x0239A7 08:B997: 11        .byte $11   ; 
- D 1 - I - 0x0239A8 08:B998: FD        .byte $FD   ; 
- D 1 - I - 0x0239A9 08:B999: A1 BA     .word off_FD_BAA1
- D 1 - I - 0x0239AB 08:B99B: D7        .byte $D7   ; 
- D 1 - I - 0x0239AC 08:B99C: 77        .byte $77   ; 
- D 1 - I - 0x0239AD 08:B99D: 83        .byte $83   ; 
- D 1 - I - 0x0239AE 08:B99E: 76        .byte $76   ; 
- D 1 - I - 0x0239AF 08:B99F: FD        .byte $FD   ; 
- D 1 - I - 0x0239B0 08:B9A0: BF BA     .word off_FD_BABF
- D 1 - I - 0x0239B2 08:B9A2: FD        .byte $FD   ; 
- D 1 - I - 0x0239B3 08:B9A3: F6 BA     .word off_FD_BAF6
- D 1 - I - 0x0239B5 08:B9A5: FD        .byte $FD   ; 
- D 1 - I - 0x0239B6 08:B9A6: BF BA     .word off_FD_BABF
- D 1 - I - 0x0239B8 08:B9A8: FD        .byte $FD   ; 
- D 1 - I - 0x0239B9 08:B9A9: 23 BB     .word off_FD_BB23
- D 1 - I - 0x0239BB 08:B9AB: FD        .byte $FD   ; 
- D 1 - I - 0x0239BC 08:B9AC: 58 BB     .word off_FD_BB58
- D 1 - I - 0x0239BE 08:B9AE: FD        .byte $FD   ; 
- D 1 - I - 0x0239BF 08:B9AF: 7C BB     .word off_FD_BB7C
- D 1 - I - 0x0239C1 08:B9B1: F0        .byte $F0   ; 
- D 1 - I - 0x0239C2 08:B9B2: FD        .byte $FD   ; 
- D 1 - I - 0x0239C3 08:B9B3: BF BA     .word off_FD_BABF
- D 1 - I - 0x0239C5 08:B9B5: FD        .byte $FD   ; 
- D 1 - I - 0x0239C6 08:B9B6: F6 BA     .word off_FD_BAF6
- D 1 - I - 0x0239C8 08:B9B8: FD        .byte $FD   ; 
- D 1 - I - 0x0239C9 08:B9B9: BF BA     .word off_FD_BABF
- D 1 - I - 0x0239CB 08:B9BB: FD        .byte $FD   ; 
- D 1 - I - 0x0239CC 08:B9BC: 23 BB     .word off_FD_BB23
- D 1 - I - 0x0239CE 08:B9BE: F0        .byte $F0   ; 
- D 1 - I - 0x0239CF 08:B9BF: FD        .byte $FD   ; 
- D 1 - I - 0x0239D0 08:B9C0: BF BA     .word off_FD_BABF
- D 1 - I - 0x0239D2 08:B9C2: FD        .byte $FD   ; 
- D 1 - I - 0x0239D3 08:B9C3: F6 BA     .word off_FD_BAF6
- D 1 - I - 0x0239D5 08:B9C5: FD        .byte $FD   ; 
- D 1 - I - 0x0239D6 08:B9C6: BF BA     .word off_FD_BABF
- D 1 - I - 0x0239D8 08:B9C8: FE        .byte $FE   ; 
- D 1 - I - 0x0239D9 08:B9C9: FF        .byte $FF   ; 
- D 1 - I - 0x0239DA 08:B9CA: 23 BB     .word off_FF_BB23



_off001_B9CC_4C:
- D 1 - I - 0x0239DC 08:B9CC: EC        .byte $EC   ; 
- D 1 - I - 0x0239DD 08:B9CD: 11        .byte $11   ; 
- D 1 - I - 0x0239DE 08:B9CE: ED        .byte $ED   ; 
- D 1 - I - 0x0239DF 08:B9CF: 81        .byte $81   ; 
- D 1 - I - 0x0239E0 08:B9D0: FD        .byte $FD   ; 
- D 1 - I - 0x0239E1 08:B9D1: A1 BA     .word off_FD_BAA1
- D 1 - I - 0x0239E3 08:B9D3: D7        .byte $D7   ; 
- D 1 - I - 0x0239E4 08:B9D4: 75        .byte $75   ; 
- D 1 - I - 0x0239E5 08:B9D5: 83        .byte $83   ; 
- D 1 - I - 0x0239E6 08:B9D6: 76        .byte $76   ; 
- D 1 - I - 0x0239E7 08:B9D7: FD        .byte $FD   ; 
- D 1 - I - 0x0239E8 08:B9D8: BF BA     .word off_FD_BABF
- D 1 - I - 0x0239EA 08:B9DA: FD        .byte $FD   ; 
- D 1 - I - 0x0239EB 08:B9DB: F6 BA     .word off_FD_BAF6
- D 1 - I - 0x0239ED 08:B9DD: FD        .byte $FD   ; 
- D 1 - I - 0x0239EE 08:B9DE: BF BA     .word off_FD_BABF
- D 1 - I - 0x0239F0 08:B9E0: FD        .byte $FD   ; 
- D 1 - I - 0x0239F1 08:B9E1: 23 BB     .word off_FD_BB23
- D 1 - I - 0x0239F3 08:B9E3: FD        .byte $FD   ; 
- D 1 - I - 0x0239F4 08:B9E4: 58 BB     .word off_FD_BB58
- D 1 - I - 0x0239F6 08:B9E6: FD        .byte $FD   ; 
- D 1 - I - 0x0239F7 08:B9E7: 7C BB     .word off_FD_BB7C
- D 1 - I - 0x0239F9 08:B9E9: F0        .byte $F0   ; 
- D 1 - I - 0x0239FA 08:B9EA: FD        .byte $FD   ; 
- D 1 - I - 0x0239FB 08:B9EB: BF BA     .word off_FD_BABF
- D 1 - I - 0x0239FD 08:B9ED: FD        .byte $FD   ; 
- D 1 - I - 0x0239FE 08:B9EE: F6 BA     .word off_FD_BAF6
- D 1 - I - 0x023A00 08:B9F0: FD        .byte $FD   ; 
- D 1 - I - 0x023A01 08:B9F1: BF BA     .word off_FD_BABF
- D 1 - I - 0x023A03 08:B9F3: FD        .byte $FD   ; 
- D 1 - I - 0x023A04 08:B9F4: 23 BB     .word off_FD_BB23
- D 1 - I - 0x023A06 08:B9F6: F0        .byte $F0   ; 
- D 1 - I - 0x023A07 08:B9F7: FD        .byte $FD   ; 
- D 1 - I - 0x023A08 08:B9F8: BF BA     .word off_FD_BABF
- D 1 - I - 0x023A0A 08:B9FA: FD        .byte $FD   ; 
- D 1 - I - 0x023A0B 08:B9FB: F6 BA     .word off_FD_BAF6
- D 1 - I - 0x023A0D 08:B9FD: FD        .byte $FD   ; 
- D 1 - I - 0x023A0E 08:B9FE: BF BA     .word off_FD_BABF
- D 1 - I - 0x023A10 08:BA00: FE        .byte $FE   ; 
- D 1 - I - 0x023A11 08:BA01: FF        .byte $FF   ; 
- D 1 - I - 0x023A12 08:BA02: 23 BB     .word off_FF_BB23



_off001_BA04_4E:
- D 1 - I - 0x023A14 08:BA04: D7        .byte $D7   ; 
- D 1 - I - 0x023A15 08:BA05: 05        .byte $05   ; 
- D 1 - I - 0x023A16 08:BA06: E1        .byte $E1   ; 
- D 1 - I - 0x023A17 08:BA07: 54        .byte $54   ; 
- D 1 - I - 0x023A18 08:BA08: 64        .byte $64   ; 
- D 1 - I - 0x023A19 08:BA09: 74        .byte $74   ; 
- D 1 - I - 0x023A1A 08:BA0A: 84        .byte $84   ; 
- D 1 - I - 0x023A1B 08:BA0B: FB        .byte $FB   ; 
- D 1 - I - 0x023A1C 08:BA0C: FD        .byte $FD   ; 
- D 1 - I - 0x023A1D 08:BA0D: AB BB     .word off_FD_BBAB
- D 1 - I - 0x023A1F 08:BA0F: FE        .byte $FE   ; 
- D 1 - I - 0x023A20 08:BA10: 02        .byte $02   ; 
- D 1 - I - 0x023A21 08:BA11: EE        .byte $EE   ; 
- D 1 - I - 0x023A22 08:BA12: 05        .byte $05   ; 
- D 1 - I - 0x023A23 08:BA13: FD        .byte $FD   ; 
- D 1 - I - 0x023A24 08:BA14: AB BB     .word off_FD_BBAB
- D 1 - I - 0x023A26 08:BA16: FD        .byte $FD   ; 
- D 1 - I - 0x023A27 08:BA17: BA BB     .word off_FD_BBBA
- D 1 - I - 0x023A29 08:BA19: EE        .byte $EE   ; 
- D 1 - I - 0x023A2A 08:BA1A: 00        .byte $00   ; 
- D 1 - I - 0x023A2B 08:BA1B: FB        .byte $FB   ; 
- D 1 - I - 0x023A2C 08:BA1C: FD        .byte $FD   ; 
- D 1 - I - 0x023A2D 08:BA1D: AB BB     .word off_FD_BBAB
- D 1 - I - 0x023A2F 08:BA1F: FE        .byte $FE   ; 
- D 1 - I - 0x023A30 08:BA20: 02        .byte $02   ; 
- D 1 - I - 0x023A31 08:BA21: FD        .byte $FD   ; 
- D 1 - I - 0x023A32 08:BA22: C8 BB     .word off_FD_BBC8
- D 1 - I - 0x023A34 08:BA24: EE        .byte $EE   ; 
- D 1 - I - 0x023A35 08:BA25: 87        .byte $87   ; 
- D 1 - I - 0x023A36 08:BA26: FD        .byte $FD   ; 
- D 1 - I - 0x023A37 08:BA27: E6 BB     .word off_FD_BBE6
- D 1 - I - 0x023A39 08:BA29: FD        .byte $FD   ; 
- D 1 - I - 0x023A3A 08:BA2A: E6 BB     .word off_FD_BBE6
- D 1 - I - 0x023A3C 08:BA2C: EE        .byte $EE   ; 
- D 1 - I - 0x023A3D 08:BA2D: 85        .byte $85   ; 
- D 1 - I - 0x023A3E 08:BA2E: FD        .byte $FD   ; 
- D 1 - I - 0x023A3F 08:BA2F: F5 BB     .word off_FD_BBF5
- D 1 - I - 0x023A41 08:BA31: FD        .byte $FD   ; 
- D 1 - I - 0x023A42 08:BA32: 01 BC     .word off_FD_BC01
- D 1 - I - 0x023A44 08:BA34: FB        .byte $FB   ; 
- D 1 - I - 0x023A45 08:BA35: FD        .byte $FD   ; 
- D 1 - I - 0x023A46 08:BA36: AB BB     .word off_FD_BBAB
- D 1 - I - 0x023A48 08:BA38: FE        .byte $FE   ; 
- D 1 - I - 0x023A49 08:BA39: 02        .byte $02   ; 
- D 1 - I - 0x023A4A 08:BA3A: EE        .byte $EE   ; 
- D 1 - I - 0x023A4B 08:BA3B: 05        .byte $05   ; 
- D 1 - I - 0x023A4C 08:BA3C: FD        .byte $FD   ; 
- D 1 - I - 0x023A4D 08:BA3D: AB BB     .word off_FD_BBAB
- D 1 - I - 0x023A4F 08:BA3F: FD        .byte $FD   ; 
- D 1 - I - 0x023A50 08:BA40: BA BB     .word off_FD_BBBA
- D 1 - I - 0x023A52 08:BA42: EE        .byte $EE   ; 
- D 1 - I - 0x023A53 08:BA43: 00        .byte $00   ; 
- D 1 - I - 0x023A54 08:BA44: FB        .byte $FB   ; 
- D 1 - I - 0x023A55 08:BA45: FD        .byte $FD   ; 
- D 1 - I - 0x023A56 08:BA46: AB BB     .word off_FD_BBAB
- D 1 - I - 0x023A58 08:BA48: FE        .byte $FE   ; 
- D 1 - I - 0x023A59 08:BA49: 02        .byte $02   ; 
- D 1 - I - 0x023A5A 08:BA4A: FD        .byte $FD   ; 
- D 1 - I - 0x023A5B 08:BA4B: C8 BB     .word off_FD_BBC8
- D 1 - I - 0x023A5D 08:BA4D: FB        .byte $FB   ; 
- D 1 - I - 0x023A5E 08:BA4E: FD        .byte $FD   ; 
- D 1 - I - 0x023A5F 08:BA4F: AB BB     .word off_FD_BBAB
- D 1 - I - 0x023A61 08:BA51: FE        .byte $FE   ; 
- D 1 - I - 0x023A62 08:BA52: 02        .byte $02   ; 
- D 1 - I - 0x023A63 08:BA53: EE        .byte $EE   ; 
- D 1 - I - 0x023A64 08:BA54: 05        .byte $05   ; 
- D 1 - I - 0x023A65 08:BA55: FD        .byte $FD   ; 
- D 1 - I - 0x023A66 08:BA56: AB BB     .word off_FD_BBAB
- D 1 - I - 0x023A68 08:BA58: FD        .byte $FD   ; 
- D 1 - I - 0x023A69 08:BA59: BA BB     .word off_FD_BBBA
- D 1 - I - 0x023A6B 08:BA5B: EE        .byte $EE   ; 
- D 1 - I - 0x023A6C 08:BA5C: 00        .byte $00   ; 
- D 1 - I - 0x023A6D 08:BA5D: FD        .byte $FD   ; 
- D 1 - I - 0x023A6E 08:BA5E: AB BB     .word off_FD_BBAB
- D 1 - I - 0x023A70 08:BA60: FD        .byte $FD   ; 
- D 1 - I - 0x023A71 08:BA61: AB BB     .word off_FD_BBAB
- D 1 - I - 0x023A73 08:BA63: FE        .byte $FE   ; 
- D 1 - I - 0x023A74 08:BA64: FF        .byte $FF   ; 
- D 1 - I - 0x023A75 08:BA65: C8 BB     .word off_FF_BBC8



_off001_BA67_4F:
- D 1 - I - 0x023A77 08:BA67: D7        .byte $D7   ; 
- D 1 - I - 0x023A78 08:BA68: FB        .byte $FB   ; 
- D 1 - I - 0x023A79 08:BA69: B1        .byte $B1   ; 
- D 1 - I - 0x023A7A 08:BA6A: 11        .byte $11   ; 
- D 1 - I - 0x023A7B 08:BA6B: A1        .byte $A1   ; 
- D 1 - I - 0x023A7C 08:BA6C: 11        .byte $11   ; 
- D 1 - I - 0x023A7D 08:BA6D: FE        .byte $FE   ; 
- D 1 - I - 0x023A7E 08:BA6E: 03        .byte $03   ; 
- D 1 - I - 0x023A7F 08:BA6F: A1        .byte $A1   ; 
- D 1 - I - 0x023A80 08:BA70: A1        .byte $A1   ; 
- D 1 - I - 0x023A81 08:BA71: A1        .byte $A1   ; 
- D 1 - I - 0x023A82 08:BA72: A1        .byte $A1   ; 
- D 1 - I - 0x023A83 08:BA73: FD        .byte $FD   ; 
- D 1 - I - 0x023A84 08:BA74: 12 BC     .word off_FD_BC12
- D 1 - I - 0x023A86 08:BA76: FD        .byte $FD   ; 
- D 1 - I - 0x023A87 08:BA77: 29 BC     .word off_FD_BC29
- D 1 - I - 0x023A89 08:BA79: FD        .byte $FD   ; 
- D 1 - I - 0x023A8A 08:BA7A: 12 BC     .word off_FD_BC12
- D 1 - I - 0x023A8C 08:BA7C: FD        .byte $FD   ; 
- D 1 - I - 0x023A8D 08:BA7D: 3D BC     .word off_FD_BC3D
- D 1 - I - 0x023A8F 08:BA7F: FD        .byte $FD   ; 
- D 1 - I - 0x023A90 08:BA80: 51 BC     .word off_FD_BC51
- D 1 - I - 0x023A92 08:BA82: FD        .byte $FD   ; 
- D 1 - I - 0x023A93 08:BA83: 68 BC     .word off_FD_BC68
- D 1 - I - 0x023A95 08:BA85: 11        .byte $11   ; 
- D 1 - I - 0x023A96 08:BA86: 11        .byte $11   ; 
- D 1 - I - 0x023A97 08:BA87: 22        .byte $22   ; 
- D 1 - I - 0x023A98 08:BA88: FD        .byte $FD   ; 
- D 1 - I - 0x023A99 08:BA89: 12 BC     .word off_FD_BC12
- D 1 - I - 0x023A9B 08:BA8B: FD        .byte $FD   ; 
- D 1 - I - 0x023A9C 08:BA8C: 29 BC     .word off_FD_BC29
- D 1 - I - 0x023A9E 08:BA8E: FD        .byte $FD   ; 
- D 1 - I - 0x023A9F 08:BA8F: 12 BC     .word off_FD_BC12
- D 1 - I - 0x023AA1 08:BA91: FD        .byte $FD   ; 
- D 1 - I - 0x023AA2 08:BA92: 3D BC     .word off_FD_BC3D
- D 1 - I - 0x023AA4 08:BA94: FD        .byte $FD   ; 
- D 1 - I - 0x023AA5 08:BA95: 12 BC     .word off_FD_BC12
- D 1 - I - 0x023AA7 08:BA97: FD        .byte $FD   ; 
- D 1 - I - 0x023AA8 08:BA98: 29 BC     .word off_FD_BC29
- D 1 - I - 0x023AAA 08:BA9A: FD        .byte $FD   ; 
- D 1 - I - 0x023AAB 08:BA9B: 12 BC     .word off_FD_BC12
- D 1 - I - 0x023AAD 08:BA9D: FE        .byte $FE   ; 
- D 1 - I - 0x023AAE 08:BA9E: FF        .byte $FF   ; 
- D 1 - I - 0x023AAF 08:BA9F: 3D BC     .word off_FF_BC3D
off_FD_BAA1:
- D 1 - I - 0x023AB1 08:BAA1: D7        .byte $D7   ; 
- D 1 - I - 0x023AB2 08:BAA2: 77        .byte $77   ; 
- D 1 - I - 0x023AB3 08:BAA3: 83        .byte $83   ; 
- D 1 - I - 0x023AB4 08:BAA4: 86        .byte $86   ; 
- D 1 - I - 0x023AB5 08:BAA5: FB        .byte $FB   ; 
- D 1 - I - 0x023AB6 08:BAA6: E3        .byte $E3   ; 
- D 1 - I - 0x023AB7 08:BAA7: 21        .byte $21   ; 
- D 1 - I - 0x023AB8 08:BAA8: E2        .byte $E2   ; 
- D 1 - I - 0x023AB9 08:BAA9: A1        .byte $A1   ; 
- D 1 - I - 0x023ABA 08:BAAA: 51        .byte $51   ; 
- D 1 - I - 0x023ABB 08:BAAB: A1        .byte $A1   ; 
- D 1 - I - 0x023ABC 08:BAAC: EE        .byte $EE   ; 
- D 1 - I - 0x023ABD 08:BAAD: 01        .byte $01   ; 
- D 1 - I - 0x023ABE 08:BAAE: FE        .byte $FE   ; 
- D 1 - I - 0x023ABF 08:BAAF: 02        .byte $02   ; 
- D 1 - I - 0x023AC0 08:BAB0: FB        .byte $FB   ; 
- D 1 - I - 0x023AC1 08:BAB1: E3        .byte $E3   ; 
- D 1 - I - 0x023AC2 08:BAB2: 31        .byte $31   ; 
- D 1 - I - 0x023AC3 08:BAB3: E2        .byte $E2   ; 
- D 1 - I - 0x023AC4 08:BAB4: B1        .byte $B1   ; 
- D 1 - I - 0x023AC5 08:BAB5: 61        .byte $61   ; 
- D 1 - I - 0x023AC6 08:BAB6: E3        .byte $E3   ; 
- D 1 - I - 0x023AC7 08:BAB7: 01        .byte $01   ; 
- D 1 - I - 0x023AC8 08:BAB8: EE        .byte $EE   ; 
- D 1 - I - 0x023AC9 08:BAB9: 02        .byte $02   ; 
- D 1 - I - 0x023ACA 08:BABA: FE        .byte $FE   ; 
- D 1 - I - 0x023ACB 08:BABB: 02        .byte $02   ; 
- D 1 - I - 0x023ACC 08:BABC: EE        .byte $EE   ; 
- D 1 - I - 0x023ACD 08:BABD: 00        .byte $00   ; 
- D 1 - I - 0x023ACE 08:BABE: FF        .byte $FF   ; 
off_FD_BABF:
- D 1 - I - 0x023ACF 08:BABF: E3        .byte $E3   ; 
- D 1 - I - 0x023AD0 08:BAC0: EB        .byte $EB   ; 
- D 1 - I - 0x023AD1 08:BAC1: 54        .byte $54   ; 
- D 1 - I - 0x023AD2 08:BAC2: 02        .byte $02   ; 
- D 1 - I - 0x023AD3 08:BAC3: 03        .byte $03   ; 
- D 1 - I - 0x023AD4 08:BAC4: EB        .byte $EB   ; 
- D 1 - I - 0x023AD5 08:BAC5: 00        .byte $00   ; 
- D 1 - I - 0x023AD6 08:BAC6: E2        .byte $E2   ; 
- D 1 - I - 0x023AD7 08:BAC7: A1        .byte $A1   ; 
- D 1 - I - 0x023AD8 08:BAC8: F2        .byte $F2   ; 
- D 1 - I - 0x023AD9 08:BAC9: A1        .byte $A1   ; 
- D 1 - I - 0x023ADA 08:BACA: F3        .byte $F3   ; 
- D 1 - I - 0x023ADB 08:BACB: A1        .byte $A1   ; 
- D 1 - I - 0x023ADC 08:BACC: D7        .byte $D7   ; 
- D 1 - I - 0x023ADD 08:BACD: 37        .byte $37   ; 
- D 1 - I - 0x023ADE 08:BACE: 82        .byte $82   ; 
- D 1 - I - 0x023ADF 08:BACF: 18        .byte $18   ; 
- D 1 - I - 0x023AE0 08:BAD0: E3        .byte $E3   ; 
- D 1 - I - 0x023AE1 08:BAD1: DE        .byte $DE   ; 
- D 1 - I - 0x023AE2 08:BAD2: 33        .byte $33   ; 
- D 1 - I - 0x023AE3 08:BAD3: F3        .byte $F3   ; 
- D 1 - I - 0x023AE4 08:BAD4: 33        .byte $33   ; 
- D 1 - I - 0x023AE5 08:BAD5: F4        .byte $F4   ; 
- D 1 - I - 0x023AE6 08:BAD6: 33        .byte $33   ; 
- D 1 - I - 0x023AE7 08:BAD7: DE        .byte $DE   ; 
- D 1 - I - 0x023AE8 08:BAD8: D7        .byte $D7   ; 
- D 1 - I - 0x023AE9 08:BAD9: 77        .byte $77   ; 
- D 1 - I - 0x023AEA 08:BADA: 83        .byte $83   ; 
- D 1 - I - 0x023AEB 08:BADB: 76        .byte $76   ; 
- D 1 - I - 0x023AEC 08:BADC: E2        .byte $E2   ; 
- D 1 - I - 0x023AED 08:BADD: A2        .byte $A2   ; 
- D 1 - I - 0x023AEE 08:BADE: E3        .byte $E3   ; 
- D 1 - I - 0x023AEF 08:BADF: 02        .byte $02   ; 
- D 1 - I - 0x023AF0 08:BAE0: EB        .byte $EB   ; 
- D 1 - I - 0x023AF1 08:BAE1: 54        .byte $54   ; 
- D 1 - I - 0x023AF2 08:BAE2: 02        .byte $02   ; 
- D 1 - I - 0x023AF3 08:BAE3: F0        .byte $F0   ; 
- D 1 - I - 0x023AF4 08:BAE4: 12        .byte $12   ; 
- D 1 - I - 0x023AF5 08:BAE5: EB        .byte $EB   ; 
- D 1 - I - 0x023AF6 08:BAE6: 00        .byte $00   ; 
- D 1 - I - 0x023AF7 08:BAE7: 31        .byte $31   ; 
- D 1 - I - 0x023AF8 08:BAE8: 12        .byte $12   ; 
- D 1 - I - 0x023AF9 08:BAE9: 02        .byte $02   ; 
- D 1 - I - 0x023AFA 08:BAEA: EB        .byte $EB   ; 
- D 1 - I - 0x023AFB 08:BAEB: 58        .byte $58   ; 
- D 1 - I - 0x023AFC 08:BAEC: 33        .byte $33   ; 
- D 1 - I - 0x023AFD 08:BAED: E7        .byte $E7   ; 
- D 1 - I - 0x023AFE 08:BAEE: 13        .byte $13   ; 
- D 1 - I - 0x023AFF 08:BAEF: E2        .byte $E2   ; 
- D 1 - I - 0x023B00 08:BAF0: A5        .byte $A5   ; 
- D 1 - I - 0x023B01 08:BAF1: E7        .byte $E7   ; 
- D 1 - I - 0x023B02 08:BAF2: 76        .byte $76   ; 
- D 1 - I - 0x023B03 08:BAF3: EB        .byte $EB   ; 
- D 1 - I - 0x023B04 08:BAF4: 00        .byte $00   ; 
- D 1 - I - 0x023B05 08:BAF5: FF        .byte $FF   ; 
off_FD_BAF6:
- D 1 - I - 0x023B06 08:BAF6: E3        .byte $E3   ; 
- D 1 - I - 0x023B07 08:BAF7: 32        .byte $32   ; 
- D 1 - I - 0x023B08 08:BAF8: 11        .byte $11   ; 
- D 1 - I - 0x023B09 08:BAF9: 33        .byte $33   ; 
- D 1 - I - 0x023B0A 08:BAFA: E7        .byte $E7   ; 
- D 1 - I - 0x023B0B 08:BAFB: 33        .byte $33   ; 
- D 1 - I - 0x023B0C 08:BAFC: EB        .byte $EB   ; 
- D 1 - I - 0x023B0D 08:BAFD: 58        .byte $58   ; 
- D 1 - I - 0x023B0E 08:BAFE: 32        .byte $32   ; 
- D 1 - I - 0x023B0F 08:BAFF: 68        .byte $68   ; 
- D 1 - I - 0x023B10 08:BB00: EB        .byte $EB   ; 
- D 1 - I - 0x023B11 08:BB01: 00        .byte $00   ; 
- D 1 - I - 0x023B12 08:BB02: D7        .byte $D7   ; 
- D 1 - I - 0x023B13 08:BB03: 37        .byte $37   ; 
- D 1 - I - 0x023B14 08:BB04: 82        .byte $82   ; 
- D 1 - I - 0x023B15 08:BB05: 18        .byte $18   ; 
- D 1 - I - 0x023B16 08:BB06: 81        .byte $81   ; 
- D 1 - I - 0x023B17 08:BB07: 81        .byte $81   ; 
- D 1 - I - 0x023B18 08:BB08: F3        .byte $F3   ; 
- D 1 - I - 0x023B19 08:BB09: 81        .byte $81   ; 
- D 1 - I - 0x023B1A 08:BB0A: D7        .byte $D7   ; 
- D 1 - I - 0x023B1B 08:BB0B: 77        .byte $77   ; 
- D 1 - I - 0x023B1C 08:BB0C: 83        .byte $83   ; 
- D 1 - I - 0x023B1D 08:BB0D: 76        .byte $76   ; 
- D 1 - I - 0x023B1E 08:BB0E: 61        .byte $61   ; 
- D 1 - I - 0x023B1F 08:BB0F: 61        .byte $61   ; 
- D 1 - I - 0x023B20 08:BB10: 61        .byte $61   ; 
- D 1 - I - 0x023B21 08:BB11: EB        .byte $EB   ; 
- D 1 - I - 0x023B22 08:BB12: 54        .byte $54   ; 
- D 1 - I - 0x023B23 08:BB13: 02        .byte $02   ; 
- D 1 - I - 0x023B24 08:BB14: 62        .byte $62   ; 
- D 1 - I - 0x023B25 08:BB15: EB        .byte $EB   ; 
- D 1 - I - 0x023B26 08:BB16: 00        .byte $00   ; 
- D 1 - I - 0x023B27 08:BB17: 81        .byte $81   ; 
- D 1 - I - 0x023B28 08:BB18: 62        .byte $62   ; 
- D 1 - I - 0x023B29 08:BB19: 52        .byte $52   ; 
- D 1 - I - 0x023B2A 08:BB1A: EB        .byte $EB   ; 
- D 1 - I - 0x023B2B 08:BB1B: 58        .byte $58   ; 
- D 1 - I - 0x023B2C 08:BB1C: 34        .byte $34   ; 
- D 1 - I - 0x023B2D 08:BB1D: E7        .byte $E7   ; 
- D 1 - I - 0x023B2E 08:BB1E: 34        .byte $34   ; 
- D 1 - I - 0x023B2F 08:BB1F: 39        .byte $39   ; 
- D 1 - I - 0x023B30 08:BB20: E7        .byte $E7   ; 
- D 1 - I - 0x023B31 08:BB21: 76        .byte $76   ; 
- D 1 - I - 0x023B32 08:BB22: FF        .byte $FF   ; 
off_FD_BB23:
off_FF_BB23:
- D 1 - I - 0x023B33 08:BB23: 61        .byte $61   ; 
- D 1 - I - 0x023B34 08:BB24: 51        .byte $51   ; 
- D 1 - I - 0x023B35 08:BB25: 32        .byte $32   ; 
- D 1 - I - 0x023B36 08:BB26: E1        .byte $E1   ; 
- D 1 - I - 0x023B37 08:BB27: B1        .byte $B1   ; 
- D 1 - I - 0x023B38 08:BB28: 61        .byte $61   ; 
- D 1 - I - 0x023B39 08:BB29: B1        .byte $B1   ; 
- D 1 - I - 0x023B3A 08:BB2A: E2        .byte $E2   ; 
- D 1 - I - 0x023B3B 08:BB2B: 11        .byte $11   ; 
- D 1 - I - 0x023B3C 08:BB2C: 31        .byte $31   ; 
- D 1 - I - 0x023B3D 08:BB2D: 62        .byte $62   ; 
- D 1 - I - 0x023B3E 08:BB2E: 52        .byte $52   ; 
- D 1 - I - 0x023B3F 08:BB2F: 61        .byte $61   ; 
- D 1 - I - 0x023B40 08:BB30: 81        .byte $81   ; 
- D 1 - I - 0x023B41 08:BB31: E3        .byte $E3   ; 
- D 1 - I - 0x023B42 08:BB32: 12        .byte $12   ; 
- D 1 - I - 0x023B43 08:BB33: E2        .byte $E2   ; 
- D 1 - I - 0x023B44 08:BB34: A1        .byte $A1   ; 
- D 1 - I - 0x023B45 08:BB35: E3        .byte $E3   ; 
- D 1 - I - 0x023B46 08:BB36: 11        .byte $11   ; 
- D 1 - I - 0x023B47 08:BB37: 21        .byte $21   ; 
- D 1 - I - 0x023B48 08:BB38: F3        .byte $F3   ; 
- D 1 - I - 0x023B49 08:BB39: 21        .byte $21   ; 
- D 1 - I - 0x023B4A 08:BB3A: F0        .byte $F0   ; 
- D 1 - I - 0x023B4B 08:BB3B: 31        .byte $31   ; 
- D 1 - I - 0x023B4C 08:BB3C: F2        .byte $F2   ; 
- D 1 - I - 0x023B4D 08:BB3D: 31        .byte $31   ; 
- D 1 - I - 0x023B4E 08:BB3E: F3        .byte $F3   ; 
- D 1 - I - 0x023B4F 08:BB3F: 31        .byte $31   ; 
- D 1 - I - 0x023B50 08:BB40: F0        .byte $F0   ; 
- D 1 - I - 0x023B51 08:BB41: 31        .byte $31   ; 
- D 1 - I - 0x023B52 08:BB42: F2        .byte $F2   ; 
- D 1 - I - 0x023B53 08:BB43: 31        .byte $31   ; 
- D 1 - I - 0x023B54 08:BB44: F3        .byte $F3   ; 
- D 1 - I - 0x023B55 08:BB45: 31        .byte $31   ; 
- D 1 - I - 0x023B56 08:BB46: F3        .byte $F3   ; 
- D 1 - I - 0x023B57 08:BB47: 31        .byte $31   ; 
- D 1 - I - 0x023B58 08:BB48: F0        .byte $F0   ; 
- D 1 - I - 0x023B59 08:BB49: 11        .byte $11   ; 
- D 1 - I - 0x023B5A 08:BB4A: E2        .byte $E2   ; 
- D 1 - I - 0x023B5B 08:BB4B: A1        .byte $A1   ; 
- D 1 - I - 0x023B5C 08:BB4C: E3        .byte $E3   ; 
- D 1 - I - 0x023B5D 08:BB4D: 11        .byte $11   ; 
- D 1 - I - 0x023B5E 08:BB4E: 31        .byte $31   ; 
- D 1 - I - 0x023B5F 08:BB4F: F2        .byte $F2   ; 
- D 1 - I - 0x023B60 08:BB50: 31        .byte $31   ; 
- D 1 - I - 0x023B61 08:BB51: F3        .byte $F3   ; 
- D 1 - I - 0x023B62 08:BB52: 31        .byte $31   ; 
- D 1 - I - 0x023B63 08:BB53: F4        .byte $F4   ; 
- D 1 - I - 0x023B64 08:BB54: 31        .byte $31   ; 
- D 1 - I - 0x023B65 08:BB55: F5        .byte $F5   ; 
- D 1 - I - 0x023B66 08:BB56: 31        .byte $31   ; 
- D 1 - I - 0x023B67 08:BB57: FF        .byte $FF   ; 
off_FD_BB58:
- D 1 - I - 0x023B68 08:BB58: F0        .byte $F0   ; 
- D 1 - I - 0x023B69 08:BB59: FB        .byte $FB   ; 
- D 1 - I - 0x023B6A 08:BB5A: E2        .byte $E2   ; 
- D 1 - I - 0x023B6B 08:BB5B: 81        .byte $81   ; 
- D 1 - I - 0x023B6C 08:BB5C: F3        .byte $F3   ; 
- D 1 - I - 0x023B6D 08:BB5D: 81        .byte $81   ; 
- D 1 - I - 0x023B6E 08:BB5E: F0        .byte $F0   ; 
- D 1 - I - 0x023B6F 08:BB5F: FE        .byte $FE   ; 
- D 1 - I - 0x023B70 08:BB60: 02        .byte $02   ; 
- D 1 - I - 0x023B71 08:BB61: 62        .byte $62   ; 
- D 1 - I - 0x023B72 08:BB62: 51        .byte $51   ; 
- D 1 - I - 0x023B73 08:BB63: 35        .byte $35   ; 
- D 1 - I - 0x023B74 08:BB64: E3        .byte $E3   ; 
- D 1 - I - 0x023B75 08:BB65: 81        .byte $81   ; 
- D 1 - I - 0x023B76 08:BB66: 61        .byte $61   ; 
- D 1 - I - 0x023B77 08:BB67: 81        .byte $81   ; 
- D 1 - I - 0x023B78 08:BB68: B3        .byte $B3   ; 
- D 1 - I - 0x023B79 08:BB69: B1        .byte $B1   ; 
- D 1 - I - 0x023B7A 08:BB6A: F2        .byte $F2   ; 
- D 1 - I - 0x023B7B 08:BB6B: B1        .byte $B1   ; 
- D 1 - I - 0x023B7C 08:BB6C: F3        .byte $F3   ; 
- D 1 - I - 0x023B7D 08:BB6D: B1        .byte $B1   ; 
- D 1 - I - 0x023B7E 08:BB6E: F4        .byte $F4   ; 
- D 1 - I - 0x023B7F 08:BB6F: B1        .byte $B1   ; 
- D 1 - I - 0x023B80 08:BB70: F5        .byte $F5   ; 
- D 1 - I - 0x023B81 08:BB71: B1        .byte $B1   ; 
- D 1 - I - 0x023B82 08:BB72: F6        .byte $F6   ; 
- D 1 - I - 0x023B83 08:BB73: B1        .byte $B1   ; 
- D 1 - I - 0x023B84 08:BB74: F0        .byte $F0   ; 
- D 1 - I - 0x023B85 08:BB75: 11        .byte $11   ; 
- D 1 - I - 0x023B86 08:BB76: 12        .byte $12   ; 
- D 1 - I - 0x023B87 08:BB77: E2        .byte $E2   ; 
- D 1 - I - 0x023B88 08:BB78: B2        .byte $B2   ; 
- D 1 - I - 0x023B89 08:BB79: A1        .byte $A1   ; 
- D 1 - I - 0x023B8A 08:BB7A: 82        .byte $82   ; 
- D 1 - I - 0x023B8B 08:BB7B: FF        .byte $FF   ; 
off_FD_BB7C:
- D 1 - I - 0x023B8C 08:BB7C: FB        .byte $FB   ; 
- D 1 - I - 0x023B8D 08:BB7D: D7        .byte $D7   ; 
- D 1 - I - 0x023B8E 08:BB7E: 77        .byte $77   ; 
- D 1 - I - 0x023B8F 08:BB7F: 83        .byte $83   ; 
- D 1 - I - 0x023B90 08:BB80: 76        .byte $76   ; 
- D 1 - I - 0x023B91 08:BB81: E2        .byte $E2   ; 
- D 1 - I - 0x023B92 08:BB82: A1        .byte $A1   ; 
- D 1 - I - 0x023B93 08:BB83: F3        .byte $F3   ; 
- D 1 - I - 0x023B94 08:BB84: A1        .byte $A1   ; 
- D 1 - I - 0x023B95 08:BB85: FE        .byte $FE   ; 
- D 1 - I - 0x023B96 08:BB86: 02        .byte $02   ; 
- D 1 - I - 0x023B97 08:BB87: F0        .byte $F0   ; 
- D 1 - I - 0x023B98 08:BB88: 82        .byte $82   ; 
- D 1 - I - 0x023B99 08:BB89: 71        .byte $71   ; 
- D 1 - I - 0x023B9A 08:BB8A: 55        .byte $55   ; 
- D 1 - I - 0x023B9B 08:BB8B: A1        .byte $A1   ; 
- D 1 - I - 0x023B9C 08:BB8C: 81        .byte $81   ; 
- D 1 - I - 0x023B9D 08:BB8D: A1        .byte $A1   ; 
- D 1 - I - 0x023B9E 08:BB8E: E3        .byte $E3   ; 
- D 1 - I - 0x023B9F 08:BB8F: 25        .byte $25   ; 
- D 1 - I - 0x023BA0 08:BB90: 21        .byte $21   ; 
- D 1 - I - 0x023BA1 08:BB91: 31        .byte $31   ; 
- D 1 - I - 0x023BA2 08:BB92: 41        .byte $41   ; 
- D 1 - I - 0x023BA3 08:BB93: E7        .byte $E7   ; 
- D 1 - I - 0x023BA4 08:BB94: 13        .byte $13   ; 
- D 1 - I - 0x023BA5 08:BB95: EB        .byte $EB   ; 
- D 1 - I - 0x023BA6 08:BB96: 51        .byte $51   ; 
- D 1 - I - 0x023BA7 08:BB97: 31        .byte $31   ; 
- D 1 - I - 0x023BA8 08:BB98: 59        .byte $59   ; 
- D 1 - I - 0x023BA9 08:BB99: EB        .byte $EB   ; 
- D 1 - I - 0x023BAA 08:BB9A: 00        .byte $00   ; 
- D 1 - I - 0x023BAB 08:BB9B: E7        .byte $E7   ; 
- D 1 - I - 0x023BAC 08:BB9C: 76        .byte $76   ; 
- D 1 - I - 0x023BAD 08:BB9D: A1        .byte $A1   ; 
- D 1 - I - 0x023BAE 08:BB9E: A1        .byte $A1   ; 
- D 1 - I - 0x023BAF 08:BB9F: A1        .byte $A1   ; 
- D 1 - I - 0x023BB0 08:BBA0: A1        .byte $A1   ; 
- D 1 - I - 0x023BB1 08:BBA1: F2        .byte $F2   ; 
- D 1 - I - 0x023BB2 08:BBA2: A1        .byte $A1   ; 
- D 1 - I - 0x023BB3 08:BBA3: F3        .byte $F3   ; 
- D 1 - I - 0x023BB4 08:BBA4: A1        .byte $A1   ; 
- D 1 - I - 0x023BB5 08:BBA5: F4        .byte $F4   ; 
- D 1 - I - 0x023BB6 08:BBA6: A1        .byte $A1   ; 
- D 1 - I - 0x023BB7 08:BBA7: F5        .byte $F5   ; 
- D 1 - I - 0x023BB8 08:BBA8: A1        .byte $A1   ; 
- D 1 - I - 0x023BB9 08:BBA9: F0        .byte $F0   ; 
- D 1 - I - 0x023BBA 08:BBAA: FF        .byte $FF   ; 
off_FD_BBAB:
- D 1 - I - 0x023BBB 08:BBAB: E1        .byte $E1   ; 
- D 1 - I - 0x023BBC 08:BBAC: 31        .byte $31   ; 
- D 1 - I - 0x023BBD 08:BBAD: E2        .byte $E2   ; 
- D 1 - I - 0x023BBE 08:BBAE: 31        .byte $31   ; 
- D 1 - I - 0x023BBF 08:BBAF: E1        .byte $E1   ; 
- D 1 - I - 0x023BC0 08:BBB0: 32        .byte $32   ; 
- D 1 - I - 0x023BC1 08:BBB1: 32        .byte $32   ; 
- D 1 - I - 0x023BC2 08:BBB2: 32        .byte $32   ; 
- D 1 - I - 0x023BC3 08:BBB3: 32        .byte $32   ; 
- D 1 - I - 0x023BC4 08:BBB4: DE        .byte $DE   ; 
- D 1 - I - 0x023BC5 08:BBB5: 33        .byte $33   ; 
- D 1 - I - 0x023BC6 08:BBB6: CA        .byte $CA   ; 
- D 1 - I - 0x023BC7 08:BBB7: 33        .byte $33   ; 
- D 1 - I - 0x023BC8 08:BBB8: DE        .byte $DE   ; 
- D 1 - I - 0x023BC9 08:BBB9: FF        .byte $FF   ; 
off_FD_BBBA:
- D 1 - I - 0x023BCA 08:BBBA: 31        .byte $31   ; 
- D 1 - I - 0x023BCB 08:BBBB: A1        .byte $A1   ; 
- D 1 - I - 0x023BCC 08:BBBC: 32        .byte $32   ; 
- D 1 - I - 0x023BCD 08:BBBD: 32        .byte $32   ; 
- D 1 - I - 0x023BCE 08:BBBE: 32        .byte $32   ; 
- D 1 - I - 0x023BCF 08:BBBF: E2        .byte $E2   ; 
- D 1 - I - 0x023BD0 08:BBC0: 01        .byte $01   ; 
- D 1 - I - 0x023BD1 08:BBC1: 01        .byte $01   ; 
- D 1 - I - 0x023BD2 08:BBC2: E1        .byte $E1   ; 
- D 1 - I - 0x023BD3 08:BBC3: 82        .byte $82   ; 
- D 1 - I - 0x023BD4 08:BBC4: A1        .byte $A1   ; 
- D 1 - I - 0x023BD5 08:BBC5: A1        .byte $A1   ; 
- D 1 - I - 0x023BD6 08:BBC6: 82        .byte $82   ; 
- D 1 - I - 0x023BD7 08:BBC7: FF        .byte $FF   ; 
off_FD_BBC8:
off_FF_BBC8:
- D 1 - I - 0x023BD8 08:BBC8: E0        .byte $E0   ; 
- D 1 - I - 0x023BD9 08:BBC9: B1        .byte $B1   ; 
- D 1 - I - 0x023BDA 08:BBCA: 61        .byte $61   ; 
- D 1 - I - 0x023BDB 08:BBCB: B1        .byte $B1   ; 
- D 1 - I - 0x023BDC 08:BBCC: E1        .byte $E1   ; 
- D 1 - I - 0x023BDD 08:BBCD: 11        .byte $11   ; 
- D 1 - I - 0x023BDE 08:BBCE: 31        .byte $31   ; 
- D 1 - I - 0x023BDF 08:BBCF: 62        .byte $62   ; 
- D 1 - I - 0x023BE0 08:BBD0: 52        .byte $52   ; 
- D 1 - I - 0x023BE1 08:BBD1: 61        .byte $61   ; 
- D 1 - I - 0x023BE2 08:BBD2: 81        .byte $81   ; 
- D 1 - I - 0x023BE3 08:BBD3: E2        .byte $E2   ; 
- D 1 - I - 0x023BE4 08:BBD4: 12        .byte $12   ; 
- D 1 - I - 0x023BE5 08:BBD5: E1        .byte $E1   ; 
- D 1 - I - 0x023BE6 08:BBD6: A1        .byte $A1   ; 
- D 1 - I - 0x023BE7 08:BBD7: E2        .byte $E2   ; 
- D 1 - I - 0x023BE8 08:BBD8: DE        .byte $DE   ; 
- D 1 - I - 0x023BE9 08:BBD9: 12        .byte $12   ; 
- D 1 - I - 0x023BEA 08:BBDA: C3        .byte $C3   ; 
- D 1 - I - 0x023BEB 08:BBDB: CC        .byte $CC   ; 
- D 1 - I - 0x023BEC 08:BBDC: 3C        .byte $3C   ; 
- D 1 - I - 0x023BED 08:BBDD: CC        .byte $CC   ; 
- D 1 - I - 0x023BEE 08:BBDE: 1F        .byte $1F   ; 
- D 1 - I - 0x023BEF 08:BBDF: E1        .byte $E1   ; 
- D 1 - I - 0x023BF0 08:BBE0: AF        .byte $AF   ; 
- D 1 - I - 0x023BF1 08:BBE1: E2        .byte $E2   ; 
- D 1 - I - 0x023BF2 08:BBE2: 13        .byte $13   ; 
- D 1 - I - 0x023BF3 08:BBE3: DE        .byte $DE   ; 
- D 1 - I - 0x023BF4 08:BBE4: C4        .byte $C4   ; 
- D 1 - I - 0x023BF5 08:BBE5: FF        .byte $FF   ; 
off_FD_BBE6:
- D 1 - I - 0x023BF6 08:BBE6: E1        .byte $E1   ; 
- D 1 - I - 0x023BF7 08:BBE7: 31        .byte $31   ; 
- D 1 - I - 0x023BF8 08:BBE8: E2        .byte $E2   ; 
- D 1 - I - 0x023BF9 08:BBE9: 31        .byte $31   ; 
- D 1 - I - 0x023BFA 08:BBEA: E1        .byte $E1   ; 
- D 1 - I - 0x023BFB 08:BBEB: 32        .byte $32   ; 
- D 1 - I - 0x023BFC 08:BBEC: 32        .byte $32   ; 
- D 1 - I - 0x023BFD 08:BBED: 32        .byte $32   ; 
- D 1 - I - 0x023BFE 08:BBEE: 32        .byte $32   ; 
- D 1 - I - 0x023BFF 08:BBEF: DE        .byte $DE   ; 
- D 1 - I - 0x023C00 08:BBF0: 33        .byte $33   ; 
- D 1 - I - 0x023C01 08:BBF1: C3        .byte $C3   ; 
- D 1 - I - 0x023C02 08:BBF2: 33        .byte $33   ; 
- D 1 - I - 0x023C03 08:BBF3: DE        .byte $DE   ; 
- D 1 - I - 0x023C04 08:BBF4: FF        .byte $FF   ; 
off_FD_BBF5:
- D 1 - I - 0x023C05 08:BBF5: E1        .byte $E1   ; 
- D 1 - I - 0x023C06 08:BBF6: 31        .byte $31   ; 
- D 1 - I - 0x023C07 08:BBF7: E2        .byte $E2   ; 
- D 1 - I - 0x023C08 08:BBF8: 31        .byte $31   ; 
- D 1 - I - 0x023C09 08:BBF9: E1        .byte $E1   ; 
- D 1 - I - 0x023C0A 08:BBFA: 32        .byte $32   ; 
- D 1 - I - 0x023C0B 08:BBFB: 32        .byte $32   ; 
- D 1 - I - 0x023C0C 08:BBFC: 32        .byte $32   ; 
- D 1 - I - 0x023C0D 08:BBFD: 32        .byte $32   ; 
- D 1 - I - 0x023C0E 08:BBFE: 31        .byte $31   ; 
- D 1 - I - 0x023C0F 08:BBFF: 31        .byte $31   ; 
- D 1 - I - 0x023C10 08:BC00: FF        .byte $FF   ; 
off_FD_BC01:
- D 1 - I - 0x023C11 08:BC01: EE        .byte $EE   ; 
- D 1 - I - 0x023C12 08:BC02: 00        .byte $00   ; 
- D 1 - I - 0x023C13 08:BC03: A1        .byte $A1   ; 
- D 1 - I - 0x023C14 08:BC04: 81        .byte $81   ; 
- D 1 - I - 0x023C15 08:BC05: A1        .byte $A1   ; 
- D 1 - I - 0x023C16 08:BC06: E2        .byte $E2   ; 
- D 1 - I - 0x023C17 08:BC07: 25        .byte $25   ; 
- D 1 - I - 0x023C18 08:BC08: 21        .byte $21   ; 
- D 1 - I - 0x023C19 08:BC09: 31        .byte $31   ; 
- D 1 - I - 0x023C1A 08:BC0A: 41        .byte $41   ; 
- D 1 - I - 0x023C1B 08:BC0B: 59        .byte $59   ; 
- D 1 - I - 0x023C1C 08:BC0C: A1        .byte $A1   ; 
- D 1 - I - 0x023C1D 08:BC0D: A1        .byte $A1   ; 
- D 1 - I - 0x023C1E 08:BC0E: A1        .byte $A1   ; 
- D 1 - I - 0x023C1F 08:BC0F: A1        .byte $A1   ; 
- D 1 - I - 0x023C20 08:BC10: C4        .byte $C4   ; 
- D 1 - I - 0x023C21 08:BC11: FF        .byte $FF   ; 
off_FD_BC12:
- D 1 - I - 0x023C22 08:BC12: FB        .byte $FB   ; 
- D 1 - I - 0x023C23 08:BC13: D1        .byte $D1   ; 
- D 1 - I - 0x023C24 08:BC14: B7        .byte $B7   ; 
- D 1 - I - 0x023C25 08:BC15: 17        .byte $17   ; 
- D 1 - I - 0x023C26 08:BC16: 17        .byte $17   ; 
- D 1 - I - 0x023C27 08:BC17: 17        .byte $17   ; 
- D 1 - I - 0x023C28 08:BC18: B1        .byte $B1   ; 
- D 1 - I - 0x023C29 08:BC19: A6        .byte $A6   ; 
- D 1 - I - 0x023C2A 08:BC1A: 17        .byte $17   ; 
- D 1 - I - 0x023C2B 08:BC1B: 17        .byte $17   ; 
- D 1 - I - 0x023C2C 08:BC1C: 17        .byte $17   ; 
- D 1 - I - 0x023C2D 08:BC1D: B7        .byte $B7   ; 
- D 1 - I - 0x023C2E 08:BC1E: 17        .byte $17   ; 
- D 1 - I - 0x023C2F 08:BC1F: 17        .byte $17   ; 
- D 1 - I - 0x023C30 08:BC20: 17        .byte $17   ; 
- D 1 - I - 0x023C31 08:BC21: B1        .byte $B1   ; 
- D 1 - I - 0x023C32 08:BC22: A6        .byte $A6   ; 
- D 1 - I - 0x023C33 08:BC23: 17        .byte $17   ; 
- D 1 - I - 0x023C34 08:BC24: 17        .byte $17   ; 
- D 1 - I - 0x023C35 08:BC25: 17        .byte $17   ; 
- D 1 - I - 0x023C36 08:BC26: FE        .byte $FE   ; 
- D 1 - I - 0x023C37 08:BC27: 03        .byte $03   ; 
- D 1 - I - 0x023C38 08:BC28: FF        .byte $FF   ; 
off_FD_BC29:
- D 1 - I - 0x023C39 08:BC29: D1        .byte $D1   ; 
- D 1 - I - 0x023C3A 08:BC2A: B7        .byte $B7   ; 
- D 1 - I - 0x023C3B 08:BC2B: 17        .byte $17   ; 
- D 1 - I - 0x023C3C 08:BC2C: 17        .byte $17   ; 
- D 1 - I - 0x023C3D 08:BC2D: 17        .byte $17   ; 
- D 1 - I - 0x023C3E 08:BC2E: B1        .byte $B1   ; 
- D 1 - I - 0x023C3F 08:BC2F: A6        .byte $A6   ; 
- D 1 - I - 0x023C40 08:BC30: 17        .byte $17   ; 
- D 1 - I - 0x023C41 08:BC31: 17        .byte $17   ; 
- D 1 - I - 0x023C42 08:BC32: 17        .byte $17   ; 
- D 1 - I - 0x023C43 08:BC33: B7        .byte $B7   ; 
- D 1 - I - 0x023C44 08:BC34: 17        .byte $17   ; 
- D 1 - I - 0x023C45 08:BC35: 17        .byte $17   ; 
- D 1 - I - 0x023C46 08:BC36: 17        .byte $17   ; 
- D 1 - I - 0x023C47 08:BC37: B1        .byte $B1   ; 
- D 1 - I - 0x023C48 08:BC38: A6        .byte $A6   ; 
- D 1 - I - 0x023C49 08:BC39: A7        .byte $A7   ; 
- D 1 - I - 0x023C4A 08:BC3A: A7        .byte $A7   ; 
- D 1 - I - 0x023C4B 08:BC3B: A7        .byte $A7   ; 
- D 1 - I - 0x023C4C 08:BC3C: FF        .byte $FF   ; 
off_FD_BC3D:
off_FF_BC3D:
- D 1 - I - 0x023C4D 08:BC3D: D1        .byte $D1   ; 
- D 1 - I - 0x023C4E 08:BC3E: B7        .byte $B7   ; 
- D 1 - I - 0x023C4F 08:BC3F: A7        .byte $A7   ; 
- D 1 - I - 0x023C50 08:BC40: 17        .byte $17   ; 
- D 1 - I - 0x023C51 08:BC41: 17        .byte $17   ; 
- D 1 - I - 0x023C52 08:BC42: B1        .byte $B1   ; 
- D 1 - I - 0x023C53 08:BC43: A6        .byte $A6   ; 
- D 1 - I - 0x023C54 08:BC44: 17        .byte $17   ; 
- D 1 - I - 0x023C55 08:BC45: 17        .byte $17   ; 
- D 1 - I - 0x023C56 08:BC46: 17        .byte $17   ; 
- D 1 - I - 0x023C57 08:BC47: B1        .byte $B1   ; 
- D 1 - I - 0x023C58 08:BC48: A6        .byte $A6   ; 
- D 1 - I - 0x023C59 08:BC49: A7        .byte $A7   ; 
- D 1 - I - 0x023C5A 08:BC4A: A7        .byte $A7   ; 
- D 1 - I - 0x023C5B 08:BC4B: A7        .byte $A7   ; 
- D 1 - I - 0x023C5C 08:BC4C: D7        .byte $D7   ; 
- D 1 - I - 0x023C5D 08:BC4D: 11        .byte $11   ; 
- D 1 - I - 0x023C5E 08:BC4E: 11        .byte $11   ; 
- D 1 - I - 0x023C5F 08:BC4F: 22        .byte $22   ; 
- D 1 - I - 0x023C60 08:BC50: FF        .byte $FF   ; 
off_FD_BC51:
- D 1 - I - 0x023C61 08:BC51: FB        .byte $FB   ; 
- D 1 - I - 0x023C62 08:BC52: D1        .byte $D1   ; 
- D 1 - I - 0x023C63 08:BC53: B7        .byte $B7   ; 
- D 1 - I - 0x023C64 08:BC54: 17        .byte $17   ; 
- D 1 - I - 0x023C65 08:BC55: 17        .byte $17   ; 
- D 1 - I - 0x023C66 08:BC56: 17        .byte $17   ; 
- D 1 - I - 0x023C67 08:BC57: B1        .byte $B1   ; 
- D 1 - I - 0x023C68 08:BC58: A6        .byte $A6   ; 
- D 1 - I - 0x023C69 08:BC59: 17        .byte $17   ; 
- D 1 - I - 0x023C6A 08:BC5A: 17        .byte $17   ; 
- D 1 - I - 0x023C6B 08:BC5B: 17        .byte $17   ; 
- D 1 - I - 0x023C6C 08:BC5C: B7        .byte $B7   ; 
- D 1 - I - 0x023C6D 08:BC5D: A7        .byte $A7   ; 
- D 1 - I - 0x023C6E 08:BC5E: 17        .byte $17   ; 
- D 1 - I - 0x023C6F 08:BC5F: 17        .byte $17   ; 
- D 1 - I - 0x023C70 08:BC60: B1        .byte $B1   ; 
- D 1 - I - 0x023C71 08:BC61: A6        .byte $A6   ; 
- D 1 - I - 0x023C72 08:BC62: 17        .byte $17   ; 
- D 1 - I - 0x023C73 08:BC63: 17        .byte $17   ; 
- D 1 - I - 0x023C74 08:BC64: 17        .byte $17   ; 
- D 1 - I - 0x023C75 08:BC65: FE        .byte $FE   ; 
- D 1 - I - 0x023C76 08:BC66: 02        .byte $02   ; 
- D 1 - I - 0x023C77 08:BC67: FF        .byte $FF   ; 
off_FD_BC68:
- D 1 - I - 0x023C78 08:BC68: D1        .byte $D1   ; 
- D 1 - I - 0x023C79 08:BC69: B7        .byte $B7   ; 
- D 1 - I - 0x023C7A 08:BC6A: 17        .byte $17   ; 
- D 1 - I - 0x023C7B 08:BC6B: 17        .byte $17   ; 
- D 1 - I - 0x023C7C 08:BC6C: 17        .byte $17   ; 
- D 1 - I - 0x023C7D 08:BC6D: B1        .byte $B1   ; 
- D 1 - I - 0x023C7E 08:BC6E: A6        .byte $A6   ; 
- D 1 - I - 0x023C7F 08:BC6F: 17        .byte $17   ; 
- D 1 - I - 0x023C80 08:BC70: 17        .byte $17   ; 
- D 1 - I - 0x023C81 08:BC71: 17        .byte $17   ; 
- D 1 - I - 0x023C82 08:BC72: B7        .byte $B7   ; 
- D 1 - I - 0x023C83 08:BC73: A7        .byte $A7   ; 
- D 1 - I - 0x023C84 08:BC74: 17        .byte $17   ; 
- D 1 - I - 0x023C85 08:BC75: 17        .byte $17   ; 
- D 1 - I - 0x023C86 08:BC76: FB        .byte $FB   ; 
- D 1 - I - 0x023C87 08:BC77: 97        .byte $97   ; 
- D 1 - I - 0x023C88 08:BC78: 87        .byte $87   ; 
- D 1 - I - 0x023C89 08:BC79: 77        .byte $77   ; 
- D 1 - I - 0x023C8A 08:BC7A: 2E        .byte $2E   ; 
- D 1 - I - 0x023C8B 08:BC7B: B7        .byte $B7   ; 
- D 1 - I - 0x023C8C 08:BC7C: B7        .byte $B7   ; 
- D 1 - I - 0x023C8D 08:BC7D: B7        .byte $B7   ; 
- D 1 - I - 0x023C8E 08:BC7E: FE        .byte $FE   ; 
- D 1 - I - 0x023C8F 08:BC7F: 02        .byte $02   ; 
- D 1 - I - 0x023C90 08:BC80: 17        .byte $17   ; 
- D 1 - I - 0x023C91 08:BC81: 17        .byte $17   ; 
- D 1 - I - 0x023C92 08:BC82: 17        .byte $17   ; 
- D 1 - I - 0x023C93 08:BC83: 17        .byte $17   ; 
- D 1 - I - 0x023C94 08:BC84: A7        .byte $A7   ; 
- D 1 - I - 0x023C95 08:BC85: A7        .byte $A7   ; 
- D 1 - I - 0x023C96 08:BC86: A7        .byte $A7   ; 
- D 1 - I - 0x023C97 08:BC87: A7        .byte $A7   ; 
- D 1 - I - 0x023C98 08:BC88: D7        .byte $D7   ; 
- D 1 - I - 0x023C99 08:BC89: FF        .byte $FF   ; 



_off001_BC8A_51:
- D 1 - I - 0x023C9A 08:BC8A: FC        .byte $FC   ; 
- D 1 - I - 0x023C9B 08:BC8B: D7        .byte $D7   ; 
- D 1 - I - 0x023C9C 08:BC8C: B5        .byte $B5   ; 
- D 1 - I - 0x023C9D 08:BC8D: 83        .byte $83   ; 
- D 1 - I - 0x023C9E 08:BC8E: 83        .byte $83   ; 
- D 1 - I - 0x023C9F 08:BC8F: FB        .byte $FB   ; 
- D 1 - I - 0x023CA0 08:BC90: FD        .byte $FD   ; 
- D 1 - I - 0x023CA1 08:BC91: 6E BD     .word off_FD_BD6E
- D 1 - I - 0x023CA3 08:BC93: FE        .byte $FE   ; 
- D 1 - I - 0x023CA4 08:BC94: 04        .byte $04   ; 
- D 1 - I - 0x023CA5 08:BC95: FD        .byte $FD   ; 
- D 1 - I - 0x023CA6 08:BC96: 76 BD     .word off_FD_BD76
- D 1 - I - 0x023CA8 08:BC98: D7        .byte $D7   ; 
- D 1 - I - 0x023CA9 08:BC99: 77        .byte $77   ; 
- D 1 - I - 0x023CAA 08:BC9A: 83        .byte $83   ; 
- D 1 - I - 0x023CAB 08:BC9B: 88        .byte $88   ; 
- D 1 - I - 0x023CAC 08:BC9C: FD        .byte $FD   ; 
- D 1 - I - 0x023CAD 08:BC9D: 8A BD     .word off_FD_BD8A
- D 1 - I - 0x023CAF 08:BC9F: 72        .byte $72   ; 
- D 1 - I - 0x023CB0 08:BCA0: 52        .byte $52   ; 
- D 1 - I - 0x023CB1 08:BCA1: C2        .byte $C2   ; 
- D 1 - I - 0x023CB2 08:BCA2: FD        .byte $FD   ; 
- D 1 - I - 0x023CB3 08:BCA3: 8A BD     .word off_FD_BD8A
- D 1 - I - 0x023CB5 08:BCA5: A1        .byte $A1   ; 
- D 1 - I - 0x023CB6 08:BCA6: 52        .byte $52   ; 
- D 1 - I - 0x023CB7 08:BCA7: F2        .byte $F2   ; 
- D 1 - I - 0x023CB8 08:BCA8: A1        .byte $A1   ; 
- D 1 - I - 0x023CB9 08:BCA9: 52        .byte $52   ; 
- D 1 - I - 0x023CBA 08:BCAA: E9        .byte $E9   ; 
- D 1 - I - 0x023CBB 08:BCAB: 00        .byte $00   ; 
- D 1 - I - 0x023CBC 08:BCAC: FD        .byte $FD   ; 
- D 1 - I - 0x023CBD 08:BCAD: A3 BD     .word off_FD_BDA3
- D 1 - I - 0x023CBF 08:BCAF: EC        .byte $EC   ; 
- D 1 - I - 0x023CC0 08:BCB0: 00        .byte $00   ; 
- D 1 - I - 0x023CC1 08:BCB1: D7        .byte $D7   ; 
- D 1 - I - 0x023CC2 08:BCB2: 77        .byte $77   ; 
- D 1 - I - 0x023CC3 08:BCB3: 83        .byte $83   ; 
- D 1 - I - 0x023CC4 08:BCB4: 85        .byte $85   ; 
- D 1 - I - 0x023CC5 08:BCB5: FD        .byte $FD   ; 
- D 1 - I - 0x023CC6 08:BCB6: D2 BD     .word off_FD_BDD2
- D 1 - I - 0x023CC8 08:BCB8: FD        .byte $FD   ; 
- D 1 - I - 0x023CC9 08:BCB9: 1C BE     .word off_FD_BE1C
- D 1 - I - 0x023CCB 08:BCBB: FE        .byte $FE   ; 
- D 1 - I - 0x023CCC 08:BCBC: 02        .byte $02   ; 
- D 1 - I - 0x023CCD 08:BCBD: FD        .byte $FD   ; 
- D 1 - I - 0x023CCE 08:BCBE: 76 BD     .word off_FD_BD76
- D 1 - I - 0x023CD0 08:BCC0: FD        .byte $FD   ; 
- D 1 - I - 0x023CD1 08:BCC1: 76 BD     .word off_FD_BD76
- D 1 - I - 0x023CD3 08:BCC3: FF        .byte $FF   ; 



_off001_BCC4_50:
- D 1 - I - 0x023CD4 08:BCC4: FC        .byte $FC   ; 
- D 1 - I - 0x023CD5 08:BCC5: EC        .byte $EC   ; 
- D 1 - I - 0x023CD6 08:BCC6: 11        .byte $11   ; 
- D 1 - I - 0x023CD7 08:BCC7: D7        .byte $D7   ; 
- D 1 - I - 0x023CD8 08:BCC8: B5        .byte $B5   ; 
- D 1 - I - 0x023CD9 08:BCC9: 83        .byte $83   ; 
- D 1 - I - 0x023CDA 08:BCCA: 37        .byte $37   ; 
- D 1 - I - 0x023CDB 08:BCCB: C0        .byte $C0   ; 
- D 1 - I - 0x023CDC 08:BCCC: C0        .byte $C0   ; 
- D 1 - I - 0x023CDD 08:BCCD: C0        .byte $C0   ; 
- D 1 - I - 0x023CDE 08:BCCE: C0        .byte $C0   ; 
- D 1 - I - 0x023CDF 08:BCCF: F3        .byte $F3   ; 
- D 1 - I - 0x023CE0 08:BCD0: FD        .byte $FD   ; 
- D 1 - I - 0x023CE1 08:BCD1: 48 BE     .word off_FD_BE48
- D 1 - I - 0x023CE3 08:BCD3: F2        .byte $F2   ; 
- D 1 - I - 0x023CE4 08:BCD4: FD        .byte $FD   ; 
- D 1 - I - 0x023CE5 08:BCD5: 48 BE     .word off_FD_BE48
- D 1 - I - 0x023CE7 08:BCD7: F1        .byte $F1   ; 
- D 1 - I - 0x023CE8 08:BCD8: FD        .byte $FD   ; 
- D 1 - I - 0x023CE9 08:BCD9: 48 BE     .word off_FD_BE48
- D 1 - I - 0x023CEB 08:BCDB: F0        .byte $F0   ; 
- D 1 - I - 0x023CEC 08:BCDC: FD        .byte $FD   ; 
- D 1 - I - 0x023CED 08:BCDD: 48 BE     .word off_FD_BE48
- D 1 - I - 0x023CEF 08:BCDF: ED        .byte $ED   ; 
- D 1 - I - 0x023CF0 08:BCE0: 81        .byte $81   ; 
- D 1 - I - 0x023CF1 08:BCE1: D7        .byte $D7   ; 
- D 1 - I - 0x023CF2 08:BCE2: 75        .byte $75   ; 
- D 1 - I - 0x023CF3 08:BCE3: 83        .byte $83   ; 
- D 1 - I - 0x023CF4 08:BCE4: 88        .byte $88   ; 
- D 1 - I - 0x023CF5 08:BCE5: FD        .byte $FD   ; 
- D 1 - I - 0x023CF6 08:BCE6: 8A BD     .word off_FD_BD8A
- D 1 - I - 0x023CF8 08:BCE8: 72        .byte $72   ; 
- D 1 - I - 0x023CF9 08:BCE9: 52        .byte $52   ; 
- D 1 - I - 0x023CFA 08:BCEA: C2        .byte $C2   ; 
- D 1 - I - 0x023CFB 08:BCEB: FD        .byte $FD   ; 
- D 1 - I - 0x023CFC 08:BCEC: 8A BD     .word off_FD_BD8A
- D 1 - I - 0x023CFE 08:BCEE: A1        .byte $A1   ; 
- D 1 - I - 0x023CFF 08:BCEF: 52        .byte $52   ; 
- D 1 - I - 0x023D00 08:BCF0: F2        .byte $F2   ; 
- D 1 - I - 0x023D01 08:BCF1: A1        .byte $A1   ; 
- D 1 - I - 0x023D02 08:BCF2: 52        .byte $52   ; 
- D 1 - I - 0x023D03 08:BCF3: ED        .byte $ED   ; 
- D 1 - I - 0x023D04 08:BCF4: 00        .byte $00   ; 
- D 1 - I - 0x023D05 08:BCF5: D7        .byte $D7   ; 
- D 1 - I - 0x023D06 08:BCF6: B7        .byte $B7   ; 
- D 1 - I - 0x023D07 08:BCF7: 83        .byte $83   ; 
- D 1 - I - 0x023D08 08:BCF8: 88        .byte $88   ; 
- D 1 - I - 0x023D09 08:BCF9: FD        .byte $FD   ; 
- D 1 - I - 0x023D0A 08:BCFA: 54 BE     .word off_FD_BE54
- D 1 - I - 0x023D0C 08:BCFC: ED        .byte $ED   ; 
- D 1 - I - 0x023D0D 08:BCFD: 81        .byte $81   ; 
- D 1 - I - 0x023D0E 08:BCFE: D7        .byte $D7   ; 
- D 1 - I - 0x023D0F 08:BCFF: 75        .byte $75   ; 
- D 1 - I - 0x023D10 08:BD00: 83        .byte $83   ; 
- D 1 - I - 0x023D11 08:BD01: 34        .byte $34   ; 
- D 1 - I - 0x023D12 08:BD02: FD        .byte $FD   ; 
- D 1 - I - 0x023D13 08:BD03: 1C BE     .word off_FD_BE1C
- D 1 - I - 0x023D15 08:BD05: ED        .byte $ED   ; 
- D 1 - I - 0x023D16 08:BD06: 00        .byte $00   ; 
- D 1 - I - 0x023D17 08:BD07: FE        .byte $FE   ; 
- D 1 - I - 0x023D18 08:BD08: 02        .byte $02   ; 
- D 1 - I - 0x023D19 08:BD09: D7        .byte $D7   ; 
- D 1 - I - 0x023D1A 08:BD0A: B5        .byte $B5   ; 
- D 1 - I - 0x023D1B 08:BD0B: 83        .byte $83   ; 
- D 1 - I - 0x023D1C 08:BD0C: 87        .byte $87   ; 
- D 1 - I - 0x023D1D 08:BD0D: FB        .byte $FB   ; 
- D 1 - I - 0x023D1E 08:BD0E: FD        .byte $FD   ; 
- D 1 - I - 0x023D1F 08:BD0F: 48 BE     .word off_FD_BE48
- D 1 - I - 0x023D21 08:BD11: FE        .byte $FE   ; 
- D 1 - I - 0x023D22 08:BD12: 08        .byte $08   ; 
- D 1 - I - 0x023D23 08:BD13: FF        .byte $FF   ; 



_off001_BD14_52:
- D 1 - I - 0x023D24 08:BD14: FC        .byte $FC   ; 
- D 1 - I - 0x023D25 08:BD15: D7        .byte $D7   ; 
- D 1 - I - 0x023D26 08:BD16: 05        .byte $05   ; 
- D 1 - I - 0x023D27 08:BD17: FB        .byte $FB   ; 
- D 1 - I - 0x023D28 08:BD18: FD        .byte $FD   ; 
- D 1 - I - 0x023D29 08:BD19: 6E BD     .word off_FD_BD6E
- D 1 - I - 0x023D2B 08:BD1B: FE        .byte $FE   ; 
- D 1 - I - 0x023D2C 08:BD1C: 10        .byte $10   ; 
- D 1 - I - 0x023D2D 08:BD1D: FB        .byte $FB   ; 
- D 1 - I - 0x023D2E 08:BD1E: FD        .byte $FD   ; 
- D 1 - I - 0x023D2F 08:BD1F: 6E BD     .word off_FD_BD6E
- D 1 - I - 0x023D31 08:BD21: FE        .byte $FE   ; 
- D 1 - I - 0x023D32 08:BD22: 08        .byte $08   ; 
- D 1 - I - 0x023D33 08:BD23: FE        .byte $FE   ; 
- D 1 - I - 0x023D34 08:BD24: 02        .byte $02   ; 
- D 1 - I - 0x023D35 08:BD25: FB        .byte $FB   ; 
- D 1 - I - 0x023D36 08:BD26: FD        .byte $FD   ; 
- D 1 - I - 0x023D37 08:BD27: 6E BD     .word off_FD_BD6E
- D 1 - I - 0x023D39 08:BD29: FE        .byte $FE   ; 
- D 1 - I - 0x023D3A 08:BD2A: 08        .byte $08   ; 
- D 1 - I - 0x023D3B 08:BD2B: FF        .byte $FF   ; 



_off001_BD2C_53:
- D 1 - I - 0x023D3C 08:BD2C: FC        .byte $FC   ; 
- D 1 - I - 0x023D3D 08:BD2D: FD        .byte $FD   ; 
- D 1 - I - 0x023D3E 08:BD2E: 7E BE     .word off_FD_BE7E
- D 1 - I - 0x023D40 08:BD30: FB        .byte $FB   ; 
- D 1 - I - 0x023D41 08:BD31: B1        .byte $B1   ; 
- D 1 - I - 0x023D42 08:BD32: 11        .byte $11   ; 
- D 1 - I - 0x023D43 08:BD33: 21        .byte $21   ; 
- D 1 - I - 0x023D44 08:BD34: 11        .byte $11   ; 
- D 1 - I - 0x023D45 08:BD35: FE        .byte $FE   ; 
- D 1 - I - 0x023D46 08:BD36: 06        .byte $06   ; 
- D 1 - I - 0x023D47 08:BD37: FD        .byte $FD   ; 
- D 1 - I - 0x023D48 08:BD38: 87 BE     .word off_FD_BE87
- D 1 - I - 0x023D4A 08:BD3A: FB        .byte $FB   ; 
- D 1 - I - 0x023D4B 08:BD3B: FD        .byte $FD   ; 
- D 1 - I - 0x023D4C 08:BD3C: 92 BE     .word off_FD_BE92
- D 1 - I - 0x023D4E 08:BD3E: FE        .byte $FE   ; 
- D 1 - I - 0x023D4F 08:BD3F: 03        .byte $03   ; 
- D 1 - I - 0x023D50 08:BD40: FD        .byte $FD   ; 
- D 1 - I - 0x023D51 08:BD41: 9E BE     .word off_FD_BE9E
- D 1 - I - 0x023D53 08:BD43: FB        .byte $FB   ; 
- D 1 - I - 0x023D54 08:BD44: FD        .byte $FD   ; 
- D 1 - I - 0x023D55 08:BD45: 92 BE     .word off_FD_BE92
- D 1 - I - 0x023D57 08:BD47: FE        .byte $FE   ; 
- D 1 - I - 0x023D58 08:BD48: 04        .byte $04   ; 
- D 1 - I - 0x023D59 08:BD49: FB        .byte $FB   ; 
- D 1 - I - 0x023D5A 08:BD4A: FD        .byte $FD   ; 
- D 1 - I - 0x023D5B 08:BD4B: AF BE     .word off_FD_BEAF
- D 1 - I - 0x023D5D 08:BD4D: FE        .byte $FE   ; 
- D 1 - I - 0x023D5E 08:BD4E: 04        .byte $04   ; 
- D 1 - I - 0x023D5F 08:BD4F: FB        .byte $FB   ; 
- D 1 - I - 0x023D60 08:BD50: FD        .byte $FD   ; 
- D 1 - I - 0x023D61 08:BD51: 92 BE     .word off_FD_BE92
- D 1 - I - 0x023D63 08:BD53: FE        .byte $FE   ; 
- D 1 - I - 0x023D64 08:BD54: 04        .byte $04   ; 
- D 1 - I - 0x023D65 08:BD55: FB        .byte $FB   ; 
- D 1 - I - 0x023D66 08:BD56: FD        .byte $FD   ; 
- D 1 - I - 0x023D67 08:BD57: AF BE     .word off_FD_BEAF
- D 1 - I - 0x023D69 08:BD59: FE        .byte $FE   ; 
- D 1 - I - 0x023D6A 08:BD5A: 02        .byte $02   ; 
- D 1 - I - 0x023D6B 08:BD5B: FD        .byte $FD   ; 
- D 1 - I - 0x023D6C 08:BD5C: 7E BE     .word off_FD_BE7E
- D 1 - I - 0x023D6E 08:BD5E: FE        .byte $FE   ; 
- D 1 - I - 0x023D6F 08:BD5F: 02        .byte $02   ; 
- D 1 - I - 0x023D70 08:BD60: FB        .byte $FB   ; 
- D 1 - I - 0x023D71 08:BD61: B1        .byte $B1   ; 
- D 1 - I - 0x023D72 08:BD62: 11        .byte $11   ; 
- D 1 - I - 0x023D73 08:BD63: 21        .byte $21   ; 
- D 1 - I - 0x023D74 08:BD64: 11        .byte $11   ; 
- D 1 - I - 0x023D75 08:BD65: FE        .byte $FE   ; 
- D 1 - I - 0x023D76 08:BD66: 10        .byte $10   ; 
- D 1 - I - 0x023D77 08:BD67: FB        .byte $FB   ; 
- D 1 - I - 0x023D78 08:BD68: FD        .byte $FD   ; 
- D 1 - I - 0x023D79 08:BD69: 92 BE     .word off_FD_BE92
- D 1 - I - 0x023D7B 08:BD6B: FE        .byte $FE   ; 
- D 1 - I - 0x023D7C 08:BD6C: 04        .byte $04   ; 
- D 1 - I - 0x023D7D 08:BD6D: FF        .byte $FF   ; 
off_FD_BD6E:
- D 1 - I - 0x023D7E 08:BD6E: E1        .byte $E1   ; 
- D 1 - I - 0x023D7F 08:BD6F: A3        .byte $A3   ; 
- D 1 - I - 0x023D80 08:BD70: 33        .byte $33   ; 
- D 1 - I - 0x023D81 08:BD71: 53        .byte $53   ; 
- D 1 - I - 0x023D82 08:BD72: 33        .byte $33   ; 
- D 1 - I - 0x023D83 08:BD73: 52        .byte $52   ; 
- D 1 - I - 0x023D84 08:BD74: 82        .byte $82   ; 
- D 1 - I - 0x023D85 08:BD75: FF        .byte $FF   ; 
off_FD_BD76:
- D 1 - I - 0x023D86 08:BD76: EC        .byte $EC   ; 
- D 1 - I - 0x023D87 08:BD77: 11        .byte $11   ; 
- D 1 - I - 0x023D88 08:BD78: D7        .byte $D7   ; 
- D 1 - I - 0x023D89 08:BD79: B5        .byte $B5   ; 
- D 1 - I - 0x023D8A 08:BD7A: 83        .byte $83   ; 
- D 1 - I - 0x023D8B 08:BD7B: 87        .byte $87   ; 
- D 1 - I - 0x023D8C 08:BD7C: FB        .byte $FB   ; 
- D 1 - I - 0x023D8D 08:BD7D: E3        .byte $E3   ; 
- D 1 - I - 0x023D8E 08:BD7E: DE        .byte $DE   ; 
- D 1 - I - 0x023D8F 08:BD7F: A5        .byte $A5   ; 
- D 1 - I - 0x023D90 08:BD80: 85        .byte $85   ; 
- D 1 - I - 0x023D91 08:BD81: 35        .byte $35   ; 
- D 1 - I - 0x023D92 08:BD82: DE        .byte $DE   ; 
- D 1 - I - 0x023D93 08:BD83: E4        .byte $E4   ; 
- D 1 - I - 0x023D94 08:BD84: 01        .byte $01   ; 
- D 1 - I - 0x023D95 08:BD85: E3        .byte $E3   ; 
- D 1 - I - 0x023D96 08:BD86: 51        .byte $51   ; 
- D 1 - I - 0x023D97 08:BD87: FE        .byte $FE   ; 
- D 1 - I - 0x023D98 08:BD88: 08        .byte $08   ; 
- D 1 - I - 0x023D99 08:BD89: FF        .byte $FF   ; 
off_FD_BD8A:
- D 1 - I - 0x023D9A 08:BD8A: E2        .byte $E2   ; 
- D 1 - I - 0x023D9B 08:BD8B: DE        .byte $DE   ; 
- D 1 - I - 0x023D9C 08:BD8C: AA        .byte $AA   ; 
- D 1 - I - 0x023D9D 08:BD8D: E3        .byte $E3   ; 
- D 1 - I - 0x023D9E 08:BD8E: AF        .byte $AF   ; 
- D 1 - I - 0x023D9F 08:BD8F: E2        .byte $E2   ; 
- D 1 - I - 0x023DA0 08:BD90: AA        .byte $AA   ; 
- D 1 - I - 0x023DA1 08:BD91: 85        .byte $85   ; 
- D 1 - I - 0x023DA2 08:BD92: E3        .byte $E3   ; 
- D 1 - I - 0x023DA3 08:BD93: 1F        .byte $1F   ; 
- D 1 - I - 0x023DA4 08:BD94: F2        .byte $F2   ; 
- D 1 - I - 0x023DA5 08:BD95: E2        .byte $E2   ; 
- D 1 - I - 0x023DA6 08:BD96: AA        .byte $AA   ; 
- D 1 - I - 0x023DA7 08:BD97: AA        .byte $AA   ; 
- D 1 - I - 0x023DA8 08:BD98: DE        .byte $DE   ; 
- D 1 - I - 0x023DA9 08:BD99: 82        .byte $82   ; 
- D 1 - I - 0x023DAA 08:BD9A: A1        .byte $A1   ; 
- D 1 - I - 0x023DAB 08:BD9B: F0        .byte $F0   ; 
- D 1 - I - 0x023DAC 08:BD9C: 82        .byte $82   ; 
- D 1 - I - 0x023DAD 08:BD9D: 81        .byte $81   ; 
- D 1 - I - 0x023DAE 08:BD9E: 72        .byte $72   ; 
- D 1 - I - 0x023DAF 08:BD9F: 83        .byte $83   ; 
- D 1 - I - 0x023DB0 08:BDA0: 82        .byte $82   ; 
- D 1 - I - 0x023DB1 08:BDA1: 81        .byte $81   ; 
- D 1 - I - 0x023DB2 08:BDA2: FF        .byte $FF   ; 
off_FD_BDA3:
- D 1 - I - 0x023DB3 08:BDA3: FB        .byte $FB   ; 
- D 1 - I - 0x023DB4 08:BDA4: D1        .byte $D1   ; 
- D 1 - I - 0x023DB5 08:BDA5: B5        .byte $B5   ; 
- D 1 - I - 0x023DB6 08:BDA6: 83        .byte $83   ; 
- D 1 - I - 0x023DB7 08:BDA7: 88        .byte $88   ; 
- D 1 - I - 0x023DB8 08:BDA8: C3        .byte $C3   ; 
- D 1 - I - 0x023DB9 08:BDA9: E8        .byte $E8   ; 
- D 1 - I - 0x023DBA 08:BDAA: 07        .byte $07   ; 
- D 1 - I - 0x023DBB 08:BDAB: E2        .byte $E2   ; 
- D 1 - I - 0x023DBC 08:BDAC: DE        .byte $DE   ; 
- D 1 - I - 0x023DBD 08:BDAD: 58        .byte $58   ; 
- D 1 - I - 0x023DBE 08:BDAE: AB        .byte $AB   ; 
- D 1 - I - 0x023DBF 08:BDAF: E3        .byte $E3   ; 
- D 1 - I - 0x023DC0 08:BDB0: 03        .byte $03   ; 
- D 1 - I - 0x023DC1 08:BDB1: 58        .byte $58   ; 
- D 1 - I - 0x023DC2 08:BDB2: F3        .byte $F3   ; 
- D 1 - I - 0x023DC3 08:BDB3: E2        .byte $E2   ; 
- D 1 - I - 0x023DC4 08:BDB4: 58        .byte $58   ; 
- D 1 - I - 0x023DC5 08:BDB5: AB        .byte $AB   ; 
- D 1 - I - 0x023DC6 08:BDB6: E3        .byte $E3   ; 
- D 1 - I - 0x023DC7 08:BDB7: 03        .byte $03   ; 
- D 1 - I - 0x023DC8 08:BDB8: F0        .byte $F0   ; 
- D 1 - I - 0x023DC9 08:BDB9: A5        .byte $A5   ; 
- D 1 - I - 0x023DCA 08:BDBA: C5        .byte $C5   ; 
- D 1 - I - 0x023DCB 08:BDBB: DE        .byte $DE   ; 
- D 1 - I - 0x023DCC 08:BDBC: 82        .byte $82   ; 
- D 1 - I - 0x023DCD 08:BDBD: D7        .byte $D7   ; 
- D 1 - I - 0x023DCE 08:BDBE: 75        .byte $75   ; 
- D 1 - I - 0x023DCF 08:BDBF: 83        .byte $83   ; 
- D 1 - I - 0x023DD0 08:BDC0: 87        .byte $87   ; 
- D 1 - I - 0x023DD1 08:BDC1: E3        .byte $E3   ; 
- D 1 - I - 0x023DD2 08:BDC2: DE        .byte $DE   ; 
- D 1 - I - 0x023DD3 08:BDC3: A5        .byte $A5   ; 
- D 1 - I - 0x023DD4 08:BDC4: 85        .byte $85   ; 
- D 1 - I - 0x023DD5 08:BDC5: 35        .byte $35   ; 
- D 1 - I - 0x023DD6 08:BDC6: E4        .byte $E4   ; 
- D 1 - I - 0x023DD7 08:BDC7: 0F        .byte $0F   ; 
- D 1 - I - 0x023DD8 08:BDC8: E3        .byte $E3   ; 
- D 1 - I - 0x023DD9 08:BDC9: 5A        .byte $5A   ; 
- D 1 - I - 0x023DDA 08:BDCA: 58        .byte $58   ; 
- D 1 - I - 0x023DDB 08:BDCB: DE        .byte $DE   ; 
- D 1 - I - 0x023DDC 08:BDCC: E8        .byte $E8   ; 
- D 1 - I - 0x023DDD 08:BDCD: 01        .byte $01   ; 
- D 1 - I - 0x023DDE 08:BDCE: 54        .byte $54   ; 
- D 1 - I - 0x023DDF 08:BDCF: FE        .byte $FE   ; 
- D 1 - I - 0x023DE0 08:BDD0: 02        .byte $02   ; 
- D 1 - I - 0x023DE1 08:BDD1: FF        .byte $FF   ; 
off_FD_BDD2:
- D 1 - I - 0x023DE2 08:BDD2: E2        .byte $E2   ; 
- D 1 - I - 0x023DE3 08:BDD3: EB        .byte $EB   ; 
- D 1 - I - 0x023DE4 08:BDD4: 54        .byte $54   ; 
- D 1 - I - 0x023DE5 08:BDD5: 02        .byte $02   ; 
- D 1 - I - 0x023DE6 08:BDD6: A2        .byte $A2   ; 
- D 1 - I - 0x023DE7 08:BDD7: EB        .byte $EB   ; 
- D 1 - I - 0x023DE8 08:BDD8: 00        .byte $00   ; 
- D 1 - I - 0x023DE9 08:BDD9: 81        .byte $81   ; 
- D 1 - I - 0x023DEA 08:BDDA: EB        .byte $EB   ; 
- D 1 - I - 0x023DEB 08:BDDB: 54        .byte $54   ; 
- D 1 - I - 0x023DEC 08:BDDC: 02        .byte $02   ; 
- D 1 - I - 0x023DED 08:BDDD: A2        .byte $A2   ; 
- D 1 - I - 0x023DEE 08:BDDE: EB        .byte $EB   ; 
- D 1 - I - 0x023DEF 08:BDDF: 00        .byte $00   ; 
- D 1 - I - 0x023DF0 08:BDE0: 82        .byte $82   ; 
- D 1 - I - 0x023DF1 08:BDE1: A2        .byte $A2   ; 
- D 1 - I - 0x023DF2 08:BDE2: A1        .byte $A1   ; 
- D 1 - I - 0x023DF3 08:BDE3: 82        .byte $82   ; 
- D 1 - I - 0x023DF4 08:BDE4: EB        .byte $EB   ; 
- D 1 - I - 0x023DF5 08:BDE5: 54        .byte $54   ; 
- D 1 - I - 0x023DF6 08:BDE6: 02        .byte $02   ; 
- D 1 - I - 0x023DF7 08:BDE7: E3        .byte $E3   ; 
- D 1 - I - 0x023DF8 08:BDE8: 02        .byte $02   ; 
- D 1 - I - 0x023DF9 08:BDE9: 02        .byte $02   ; 
- D 1 - I - 0x023DFA 08:BDEA: EB        .byte $EB   ; 
- D 1 - I - 0x023DFB 08:BDEB: 00        .byte $00   ; 
- D 1 - I - 0x023DFC 08:BDEC: E2        .byte $E2   ; 
- D 1 - I - 0x023DFD 08:BDED: A1        .byte $A1   ; 
- D 1 - I - 0x023DFE 08:BDEE: 81        .byte $81   ; 
- D 1 - I - 0x023DFF 08:BDEF: EB        .byte $EB   ; 
- D 1 - I - 0x023E00 08:BDF0: 58        .byte $58   ; 
- D 1 - I - 0x023E01 08:BDF1: 23        .byte $23   ; 
- D 1 - I - 0x023E02 08:BDF2: 56        .byte $56   ; 
- D 1 - I - 0x023E03 08:BDF3: EB        .byte $EB   ; 
- D 1 - I - 0x023E04 08:BDF4: 00        .byte $00   ; 
- D 1 - I - 0x023E05 08:BDF5: C6        .byte $C6   ; 
- D 1 - I - 0x023E06 08:BDF6: 31        .byte $31   ; 
- D 1 - I - 0x023E07 08:BDF7: 51        .byte $51   ; 
- D 1 - I - 0x023E08 08:BDF8: EB        .byte $EB   ; 
- D 1 - I - 0x023E09 08:BDF9: 54        .byte $54   ; 
- D 1 - I - 0x023E0A 08:BDFA: 02        .byte $02   ; 
- D 1 - I - 0x023E0B 08:BDFB: A2        .byte $A2   ; 
- D 1 - I - 0x023E0C 08:BDFC: EB        .byte $EB   ; 
- D 1 - I - 0x023E0D 08:BDFD: 00        .byte $00   ; 
- D 1 - I - 0x023E0E 08:BDFE: 81        .byte $81   ; 
- D 1 - I - 0x023E0F 08:BDFF: EB        .byte $EB   ; 
- D 1 - I - 0x023E10 08:BE00: 54        .byte $54   ; 
- D 1 - I - 0x023E11 08:BE01: 02        .byte $02   ; 
- D 1 - I - 0x023E12 08:BE02: A2        .byte $A2   ; 
- D 1 - I - 0x023E13 08:BE03: EB        .byte $EB   ; 
- D 1 - I - 0x023E14 08:BE04: 00        .byte $00   ; 
- D 1 - I - 0x023E15 08:BE05: 82        .byte $82   ; 
- D 1 - I - 0x023E16 08:BE06: A2        .byte $A2   ; 
- D 1 - I - 0x023E17 08:BE07: A1        .byte $A1   ; 
- D 1 - I - 0x023E18 08:BE08: 82        .byte $82   ; 
- D 1 - I - 0x023E19 08:BE09: EB        .byte $EB   ; 
- D 1 - I - 0x023E1A 08:BE0A: 54        .byte $54   ; 
- D 1 - I - 0x023E1B 08:BE0B: 02        .byte $02   ; 
- D 1 - I - 0x023E1C 08:BE0C: E3        .byte $E3   ; 
- D 1 - I - 0x023E1D 08:BE0D: 02        .byte $02   ; 
- D 1 - I - 0x023E1E 08:BE0E: 02        .byte $02   ; 
- D 1 - I - 0x023E1F 08:BE0F: EB        .byte $EB   ; 
- D 1 - I - 0x023E20 08:BE10: 00        .byte $00   ; 
- D 1 - I - 0x023E21 08:BE11: E2        .byte $E2   ; 
- D 1 - I - 0x023E22 08:BE12: A2        .byte $A2   ; 
- D 1 - I - 0x023E23 08:BE13: EB        .byte $EB   ; 
- D 1 - I - 0x023E24 08:BE14: 58        .byte $58   ; 
- D 1 - I - 0x023E25 08:BE15: 22        .byte $22   ; 
- D 1 - I - 0x023E26 08:BE16: 86        .byte $86   ; 
- D 1 - I - 0x023E27 08:BE17: EB        .byte $EB   ; 
- D 1 - I - 0x023E28 08:BE18: 00        .byte $00   ; 
- D 1 - I - 0x023E29 08:BE19: C6        .byte $C6   ; 
- D 1 - I - 0x023E2A 08:BE1A: 82        .byte $82   ; 
- D 1 - I - 0x023E2B 08:BE1B: FF        .byte $FF   ; 
off_FD_BE1C:
- D 1 - I - 0x023E2C 08:BE1C: E2        .byte $E2   ; 
- D 1 - I - 0x023E2D 08:BE1D: A2        .byte $A2   ; 
- D 1 - I - 0x023E2E 08:BE1E: 81        .byte $81   ; 
- D 1 - I - 0x023E2F 08:BE1F: A2        .byte $A2   ; 
- D 1 - I - 0x023E30 08:BE20: 81        .byte $81   ; 
- D 1 - I - 0x023E31 08:BE21: A2        .byte $A2   ; 
- D 1 - I - 0x023E32 08:BE22: EB        .byte $EB   ; 
- D 1 - I - 0x023E33 08:BE23: 58        .byte $58   ; 
- D 1 - I - 0x023E34 08:BE24: 23        .byte $23   ; 
- D 1 - I - 0x023E35 08:BE25: E3        .byte $E3   ; 
- D 1 - I - 0x023E36 08:BE26: 04        .byte $04   ; 
- D 1 - I - 0x023E37 08:BE27: C2        .byte $C2   ; 
- D 1 - I - 0x023E38 08:BE28: EB        .byte $EB   ; 
- D 1 - I - 0x023E39 08:BE29: 00        .byte $00   ; 
- D 1 - I - 0x023E3A 08:BE2A: E2        .byte $E2   ; 
- D 1 - I - 0x023E3B 08:BE2B: 82        .byte $82   ; 
- D 1 - I - 0x023E3C 08:BE2C: A2        .byte $A2   ; 
- D 1 - I - 0x023E3D 08:BE2D: 81        .byte $81   ; 
- D 1 - I - 0x023E3E 08:BE2E: A2        .byte $A2   ; 
- D 1 - I - 0x023E3F 08:BE2F: A1        .byte $A1   ; 
- D 1 - I - 0x023E40 08:BE30: 82        .byte $82   ; 
- D 1 - I - 0x023E41 08:BE31: EB        .byte $EB   ; 
- D 1 - I - 0x023E42 08:BE32: 54        .byte $54   ; 
- D 1 - I - 0x023E43 08:BE33: 02        .byte $02   ; 
- D 1 - I - 0x023E44 08:BE34: E3        .byte $E3   ; 
- D 1 - I - 0x023E45 08:BE35: 02        .byte $02   ; 
- D 1 - I - 0x023E46 08:BE36: 02        .byte $02   ; 
- D 1 - I - 0x023E47 08:BE37: EB        .byte $EB   ; 
- D 1 - I - 0x023E48 08:BE38: 00        .byte $00   ; 
- D 1 - I - 0x023E49 08:BE39: E2        .byte $E2   ; 
- D 1 - I - 0x023E4A 08:BE3A: A1        .byte $A1   ; 
- D 1 - I - 0x023E4B 08:BE3B: 81        .byte $81   ; 
- D 1 - I - 0x023E4C 08:BE3C: 51        .byte $51   ; 
- D 1 - I - 0x023E4D 08:BE3D: EB        .byte $EB   ; 
- D 1 - I - 0x023E4E 08:BE3E: 58        .byte $58   ; 
- D 1 - I - 0x023E4F 08:BE3F: 33        .byte $33   ; 
- D 1 - I - 0x023E50 08:BE40: E7        .byte $E7   ; 
- D 1 - I - 0x023E51 08:BE41: 83        .byte $83   ; 
- D 1 - I - 0x023E52 08:BE42: 80        .byte $80   ; 
- D 1 - I - 0x023E53 08:BE43: EB        .byte $EB   ; 
- D 1 - I - 0x023E54 08:BE44: 00        .byte $00   ; 
- D 1 - I - 0x023E55 08:BE45: C1        .byte $C1   ; 
- D 1 - I - 0x023E56 08:BE46: C0        .byte $C0   ; 
- D 1 - I - 0x023E57 08:BE47: FF        .byte $FF   ; 
off_FD_BE48:
- D 1 - I - 0x023E58 08:BE48: E2        .byte $E2   ; 
- D 1 - I - 0x023E59 08:BE49: DE        .byte $DE   ; 
- D 1 - I - 0x023E5A 08:BE4A: 8C        .byte $8C   ; 
- D 1 - I - 0x023E5B 08:BE4B: AC        .byte $AC   ; 
- D 1 - I - 0x023E5C 08:BE4C: 8C        .byte $8C   ; 
- D 1 - I - 0x023E5D 08:BE4D: A8        .byte $A8   ; 
- D 1 - I - 0x023E5E 08:BE4E: C8        .byte $C8   ; 
- D 1 - I - 0x023E5F 08:BE4F: AC        .byte $AC   ; 
- D 1 - I - 0x023E60 08:BE50: 8C        .byte $8C   ; 
- D 1 - I - 0x023E61 08:BE51: AC        .byte $AC   ; 
- D 1 - I - 0x023E62 08:BE52: DE        .byte $DE   ; 
- D 1 - I - 0x023E63 08:BE53: FF        .byte $FF   ; 
off_FD_BE54:
- D 1 - I - 0x023E64 08:BE54: D7        .byte $D7   ; 
- D 1 - I - 0x023E65 08:BE55: B7        .byte $B7   ; 
- D 1 - I - 0x023E66 08:BE56: 83        .byte $83   ; 
- D 1 - I - 0x023E67 08:BE57: 88        .byte $88   ; 
- D 1 - I - 0x023E68 08:BE58: FB        .byte $FB   ; 
- D 1 - I - 0x023E69 08:BE59: E2        .byte $E2   ; 
- D 1 - I - 0x023E6A 08:BE5A: DE        .byte $DE   ; 
- D 1 - I - 0x023E6B 08:BE5B: 58        .byte $58   ; 
- D 1 - I - 0x023E6C 08:BE5C: AB        .byte $AB   ; 
- D 1 - I - 0x023E6D 08:BE5D: E3        .byte $E3   ; 
- D 1 - I - 0x023E6E 08:BE5E: 03        .byte $03   ; 
- D 1 - I - 0x023E6F 08:BE5F: 58        .byte $58   ; 
- D 1 - I - 0x023E70 08:BE60: F3        .byte $F3   ; 
- D 1 - I - 0x023E71 08:BE61: E2        .byte $E2   ; 
- D 1 - I - 0x023E72 08:BE62: 58        .byte $58   ; 
- D 1 - I - 0x023E73 08:BE63: AB        .byte $AB   ; 
- D 1 - I - 0x023E74 08:BE64: E3        .byte $E3   ; 
- D 1 - I - 0x023E75 08:BE65: 03        .byte $03   ; 
- D 1 - I - 0x023E76 08:BE66: F0        .byte $F0   ; 
- D 1 - I - 0x023E77 08:BE67: A5        .byte $A5   ; 
- D 1 - I - 0x023E78 08:BE68: C5        .byte $C5   ; 
- D 1 - I - 0x023E79 08:BE69: DE        .byte $DE   ; 
- D 1 - I - 0x023E7A 08:BE6A: 82        .byte $82   ; 
- D 1 - I - 0x023E7B 08:BE6B: D7        .byte $D7   ; 
- D 1 - I - 0x023E7C 08:BE6C: 75        .byte $75   ; 
- D 1 - I - 0x023E7D 08:BE6D: 83        .byte $83   ; 
- D 1 - I - 0x023E7E 08:BE6E: 87        .byte $87   ; 
- D 1 - I - 0x023E7F 08:BE6F: E3        .byte $E3   ; 
- D 1 - I - 0x023E80 08:BE70: DE        .byte $DE   ; 
- D 1 - I - 0x023E81 08:BE71: A5        .byte $A5   ; 
- D 1 - I - 0x023E82 08:BE72: 85        .byte $85   ; 
- D 1 - I - 0x023E83 08:BE73: 35        .byte $35   ; 
- D 1 - I - 0x023E84 08:BE74: E4        .byte $E4   ; 
- D 1 - I - 0x023E85 08:BE75: 0F        .byte $0F   ; 
- D 1 - I - 0x023E86 08:BE76: E3        .byte $E3   ; 
- D 1 - I - 0x023E87 08:BE77: 5A        .byte $5A   ; 
- D 1 - I - 0x023E88 08:BE78: 58        .byte $58   ; 
- D 1 - I - 0x023E89 08:BE79: DE        .byte $DE   ; 
- D 1 - I - 0x023E8A 08:BE7A: 51        .byte $51   ; 
- D 1 - I - 0x023E8B 08:BE7B: FE        .byte $FE   ; 
- D 1 - I - 0x023E8C 08:BE7C: 04        .byte $04   ; 
- D 1 - I - 0x023E8D 08:BE7D: FF        .byte $FF   ; 
off_FD_BE7E:
- D 1 - I - 0x023E8E 08:BE7E: D7        .byte $D7   ; 
- D 1 - I - 0x023E8F 08:BE7F: FB        .byte $FB   ; 
- D 1 - I - 0x023E90 08:BE80: 11        .byte $11   ; 
- D 1 - I - 0x023E91 08:BE81: 11        .byte $11   ; 
- D 1 - I - 0x023E92 08:BE82: 21        .byte $21   ; 
- D 1 - I - 0x023E93 08:BE83: 11        .byte $11   ; 
- D 1 - I - 0x023E94 08:BE84: FE        .byte $FE   ; 
- D 1 - I - 0x023E95 08:BE85: 08        .byte $08   ; 
- D 1 - I - 0x023E96 08:BE86: FF        .byte $FF   ; 
off_FD_BE87:
- D 1 - I - 0x023E97 08:BE87: D1        .byte $D1   ; 
- D 1 - I - 0x023E98 08:BE88: B1        .byte $B1   ; 
- D 1 - I - 0x023E99 08:BE89: 46        .byte $46   ; 
- D 1 - I - 0x023E9A 08:BE8A: 47        .byte $47   ; 
- D 1 - I - 0x023E9B 08:BE8B: 47        .byte $47   ; 
- D 1 - I - 0x023E9C 08:BE8C: 47        .byte $47   ; 
- D 1 - I - 0x023E9D 08:BE8D: B7        .byte $B7   ; 
- D 1 - I - 0x023E9E 08:BE8E: 47        .byte $47   ; 
- D 1 - I - 0x023E9F 08:BE8F: 47        .byte $47   ; 
- D 1 - I - 0x023EA0 08:BE90: 47        .byte $47   ; 
- D 1 - I - 0x023EA1 08:BE91: FF        .byte $FF   ; 
off_FD_BE92:
- D 1 - I - 0x023EA2 08:BE92: D7        .byte $D7   ; 
- D 1 - I - 0x023EA3 08:BE93: DE        .byte $DE   ; 
- D 1 - I - 0x023EA4 08:BE94: B1        .byte $B1   ; 
- D 1 - I - 0x023EA5 08:BE95: B1        .byte $B1   ; 
- D 1 - I - 0x023EA6 08:BE96: 41        .byte $41   ; 
- D 1 - I - 0x023EA7 08:BE97: B4        .byte $B4   ; 
- D 1 - I - 0x023EA8 08:BE98: B4        .byte $B4   ; 
- D 1 - I - 0x023EA9 08:BE99: B1        .byte $B1   ; 
- D 1 - I - 0x023EAA 08:BE9A: 41        .byte $41   ; 
- D 1 - I - 0x023EAB 08:BE9B: B4        .byte $B4   ; 
- D 1 - I - 0x023EAC 08:BE9C: DE        .byte $DE   ; 
- D 1 - I - 0x023EAD 08:BE9D: FF        .byte $FF   ; 
off_FD_BE9E:
- D 1 - I - 0x023EAE 08:BE9E: DE        .byte $DE   ; 
- D 1 - I - 0x023EAF 08:BE9F: B1        .byte $B1   ; 
- D 1 - I - 0x023EB0 08:BEA0: B1        .byte $B1   ; 
- D 1 - I - 0x023EB1 08:BEA1: 41        .byte $41   ; 
- D 1 - I - 0x023EB2 08:BEA2: B4        .byte $B4   ; 
- D 1 - I - 0x023EB3 08:BEA3: DE        .byte $DE   ; 
- D 1 - I - 0x023EB4 08:BEA4: D1        .byte $D1   ; 
- D 1 - I - 0x023EB5 08:BEA5: B1        .byte $B1   ; 
- D 1 - I - 0x023EB6 08:BEA6: 46        .byte $46   ; 
- D 1 - I - 0x023EB7 08:BEA7: 47        .byte $47   ; 
- D 1 - I - 0x023EB8 08:BEA8: 47        .byte $47   ; 
- D 1 - I - 0x023EB9 08:BEA9: 47        .byte $47   ; 
- D 1 - I - 0x023EBA 08:BEAA: B7        .byte $B7   ; 
- D 1 - I - 0x023EBB 08:BEAB: 47        .byte $47   ; 
- D 1 - I - 0x023EBC 08:BEAC: 47        .byte $47   ; 
- D 1 - I - 0x023EBD 08:BEAD: 47        .byte $47   ; 
- D 1 - I - 0x023EBE 08:BEAE: FF        .byte $FF   ; 
off_FD_BEAF:
- D 1 - I - 0x023EBF 08:BEAF: D1        .byte $D1   ; 
- D 1 - I - 0x023EC0 08:BEB0: B7        .byte $B7   ; 
- D 1 - I - 0x023EC1 08:BEB1: 17        .byte $17   ; 
- D 1 - I - 0x023EC2 08:BEB2: 17        .byte $17   ; 
- D 1 - I - 0x023EC3 08:BEB3: 17        .byte $17   ; 
- D 1 - I - 0x023EC4 08:BEB4: B1        .byte $B1   ; 
- D 1 - I - 0x023EC5 08:BEB5: 46        .byte $46   ; 
- D 1 - I - 0x023EC6 08:BEB6: 17        .byte $17   ; 
- D 1 - I - 0x023EC7 08:BEB7: 17        .byte $17   ; 
- D 1 - I - 0x023EC8 08:BEB8: 47        .byte $47   ; 
- D 1 - I - 0x023EC9 08:BEB9: B7        .byte $B7   ; 
- D 1 - I - 0x023ECA 08:BEBA: 47        .byte $47   ; 
- D 1 - I - 0x023ECB 08:BEBB: 17        .byte $17   ; 
- D 1 - I - 0x023ECC 08:BEBC: 17        .byte $17   ; 
- D 1 - I - 0x023ECD 08:BEBD: B1        .byte $B1   ; 
- D 1 - I - 0x023ECE 08:BEBE: 46        .byte $46   ; 
- D 1 - I - 0x023ECF 08:BEBF: 17        .byte $17   ; 
- D 1 - I - 0x023ED0 08:BEC0: 17        .byte $17   ; 
- D 1 - I - 0x023ED1 08:BEC1: 17        .byte $17   ; 
- D 1 - I - 0x023ED2 08:BEC2: D7        .byte $D7   ; 
- D 1 - I - 0x023ED3 08:BEC3: FF        .byte $FF   ; 



_off001_BEC4_59:
off_FF_BEC4:
- D 1 - I - 0x023ED4 08:BEC4: D8        .byte $D8   ; 
- D 1 - I - 0x023ED5 08:BEC5: 77        .byte $77   ; 
- D 1 - I - 0x023ED6 08:BEC6: 83        .byte $83   ; 
- D 1 - I - 0x023ED7 08:BEC7: C8        .byte $C8   ; 
- D 1 - I - 0x023ED8 08:BEC8: FD        .byte $FD   ; 
- D 1 - I - 0x023ED9 08:BEC9: E7 B0     .word off_FD_B0E7
- D 1 - I - 0x023EDB 08:BECB: FE        .byte $FE   ; 
- D 1 - I - 0x023EDC 08:BECC: FF        .byte $FF   ; 
- D 1 - I - 0x023EDD 08:BECD: C4 BE     .word off_FF_BEC4



_off001_BECF_58:
off_FF_BECF:
- D 1 - I - 0x023EDF 08:BECF: D8        .byte $D8   ; 
- D 1 - I - 0x023EE0 08:BED0: 75        .byte $75   ; 
- D 1 - I - 0x023EE1 08:BED1: 83        .byte $83   ; 
- D 1 - I - 0x023EE2 08:BED2: 88        .byte $88   ; 
- D 1 - I - 0x023EE3 08:BED3: EE        .byte $EE   ; 
- D 1 - I - 0x023EE4 08:BED4: 85        .byte $85   ; 
- D 1 - I - 0x023EE5 08:BED5: FD        .byte $FD   ; 
- D 1 - I - 0x023EE6 08:BED6: E7 B0     .word off_FD_B0E7
- D 1 - I - 0x023EE8 08:BED8: FE        .byte $FE   ; 
- D 1 - I - 0x023EE9 08:BED9: FF        .byte $FF   ; 
- D 1 - I - 0x023EEA 08:BEDA: CF BE     .word off_FF_BECF



_off001_BEDC_5A:
off_FF_BEDC:
- D 1 - I - 0x023EEC 08:BEDC: FD        .byte $FD   ; 
- D 1 - I - 0x023EED 08:BEDD: BB B1     .word off_FD_B1BB
- D 1 - I - 0x023EEF 08:BEDF: FE        .byte $FE   ; 
- D 1 - I - 0x023EF0 08:BEE0: FF        .byte $FF   ; 
- D 1 - I - 0x023EF1 08:BEE1: DC BE     .word off_FF_BEDC



_off001_BEE3_5B:
off_FF_BEE3:
- D 1 - I - 0x023EF3 08:BEE3: FD        .byte $FD   ; 
- D 1 - I - 0x023EF4 08:BEE4: 06 B2     .word off_FD_B206
- D 1 - I - 0x023EF6 08:BEE6: FE        .byte $FE   ; 
- D 1 - I - 0x023EF7 08:BEE7: FF        .byte $FF   ; 
- D 1 - I - 0x023EF8 08:BEE8: E3 BE     .word off_FF_BEE3



_off001_BEEA_5D:
off_FF_BEEA:
- D 1 - I - 0x023EFA 08:BEEA: D7        .byte $D7   ; 
- D 1 - I - 0x023EFB 08:BEEB: 37        .byte $37   ; 
- D 1 - I - 0x023EFC 08:BEEC: 83        .byte $83   ; 
- D 1 - I - 0x023EFD 08:BEED: 15        .byte $15   ; 
- D 1 - I - 0x023EFE 08:BEEE: FC        .byte $FC   ; 
- D 1 - I - 0x023EFF 08:BEEF: EE        .byte $EE   ; 
- D 1 - I - 0x023F00 08:BEF0: 02        .byte $02   ; 
- D 1 - I - 0x023F01 08:BEF1: FD        .byte $FD   ; 
- D 1 - I - 0x023F02 08:BEF2: 34 BF     .word off_FD_BF34
- D 1 - I - 0x023F04 08:BEF4: EE        .byte $EE   ; 
- D 1 - I - 0x023F05 08:BEF5: 07        .byte $07   ; 
- D 1 - I - 0x023F06 08:BEF6: FD        .byte $FD   ; 
- D 1 - I - 0x023F07 08:BEF7: 34 BF     .word off_FD_BF34
- D 1 - I - 0x023F09 08:BEF9: FE        .byte $FE   ; 
- D 1 - I - 0x023F0A 08:BEFA: FF        .byte $FF   ; 
- D 1 - I - 0x023F0B 08:BEFB: EA BE     .word off_FF_BEEA



_off001_BEFD_5C:
off_FF_BEFD:
- D 1 - I - 0x023F0D 08:BEFD: D7        .byte $D7   ; 
- D 1 - I - 0x023F0E 08:BEFE: 35        .byte $35   ; 
- D 1 - I - 0x023F0F 08:BEFF: 83        .byte $83   ; 
- D 1 - I - 0x023F10 08:BF00: 15        .byte $15   ; 
- D 1 - I - 0x023F11 08:BF01: FC        .byte $FC   ; 
- D 1 - I - 0x023F12 08:BF02: EE        .byte $EE   ; 
- D 1 - I - 0x023F13 08:BF03: 83        .byte $83   ; 
- D 1 - I - 0x023F14 08:BF04: FD        .byte $FD   ; 
- D 1 - I - 0x023F15 08:BF05: 34 BF     .word off_FD_BF34
- D 1 - I - 0x023F17 08:BF07: EE        .byte $EE   ; 
- D 1 - I - 0x023F18 08:BF08: 02        .byte $02   ; 
- D 1 - I - 0x023F19 08:BF09: FD        .byte $FD   ; 
- D 1 - I - 0x023F1A 08:BF0A: 34 BF     .word off_FD_BF34
- D 1 - I - 0x023F1C 08:BF0C: EE        .byte $EE   ; 
- D 1 - I - 0x023F1D 08:BF0D: 00        .byte $00   ; 
- D 1 - I - 0x023F1E 08:BF0E: FE        .byte $FE   ; 
- D 1 - I - 0x023F1F 08:BF0F: FF        .byte $FF   ; 
- D 1 - I - 0x023F20 08:BF10: FD BE     .word off_FF_BEFD



_off001_BF12_5E:
off_FF_BF12:
- D 1 - I - 0x023F22 08:BF12: D7        .byte $D7   ; 
- D 1 - I - 0x023F23 08:BF13: 05        .byte $05   ; 
- D 1 - I - 0x023F24 08:BF14: FC        .byte $FC   ; 
- D 1 - I - 0x023F25 08:BF15: EE        .byte $EE   ; 
- D 1 - I - 0x023F26 08:BF16: 02        .byte $02   ; 
- D 1 - I - 0x023F27 08:BF17: FD        .byte $FD   ; 
- D 1 - I - 0x023F28 08:BF18: 58 BF     .word off_FD_BF58
- D 1 - I - 0x023F2A 08:BF1A: EE        .byte $EE   ; 
- D 1 - I - 0x023F2B 08:BF1B: 07        .byte $07   ; 
- D 1 - I - 0x023F2C 08:BF1C: FD        .byte $FD   ; 
- D 1 - I - 0x023F2D 08:BF1D: 58 BF     .word off_FD_BF58
- D 1 - I - 0x023F2F 08:BF1F: FE        .byte $FE   ; 
- D 1 - I - 0x023F30 08:BF20: FF        .byte $FF   ; 
- D 1 - I - 0x023F31 08:BF21: 12 BF     .word off_FF_BF12



_off001_BF23_5F:
off_FF_BF23:
- D 1 - I - 0x023F33 08:BF23: D7        .byte $D7   ; 
- D 1 - I - 0x023F34 08:BF24: FC        .byte $FC   ; 
- D 1 - I - 0x023F35 08:BF25: FB        .byte $FB   ; 
- D 1 - I - 0x023F36 08:BF26: B1        .byte $B1   ; 
- D 1 - I - 0x023F37 08:BF27: 11        .byte $11   ; 
- D 1 - I - 0x023F38 08:BF28: 11        .byte $11   ; 
- D 1 - I - 0x023F39 08:BF29: A1        .byte $A1   ; 
- D 1 - I - 0x023F3A 08:BF2A: 11        .byte $11   ; 
- D 1 - I - 0x023F3B 08:BF2B: 11        .byte $11   ; 
- D 1 - I - 0x023F3C 08:BF2C: FE        .byte $FE   ; 
- D 1 - I - 0x023F3D 08:BF2D: 03        .byte $03   ; 
- D 1 - I - 0x023F3E 08:BF2E: A3        .byte $A3   ; 
- D 1 - I - 0x023F3F 08:BF2F: A3        .byte $A3   ; 
- D 1 - I - 0x023F40 08:BF30: FE        .byte $FE   ; 
- D 1 - I - 0x023F41 08:BF31: FF        .byte $FF   ; 
- D 1 - I - 0x023F42 08:BF32: 23 BF     .word off_FF_BF23
off_FD_BF34:
- D 1 - I - 0x023F44 08:BF34: EC        .byte $EC   ; 
- D 1 - I - 0x023F45 08:BF35: 12        .byte $12   ; 
- D 1 - I - 0x023F46 08:BF36: FB        .byte $FB   ; 
- D 1 - I - 0x023F47 08:BF37: E2        .byte $E2   ; 
- D 1 - I - 0x023F48 08:BF38: 01        .byte $01   ; 
- D 1 - I - 0x023F49 08:BF39: E1        .byte $E1   ; 
- D 1 - I - 0x023F4A 08:BF3A: A1        .byte $A1   ; 
- D 1 - I - 0x023F4B 08:BF3B: E2        .byte $E2   ; 
- D 1 - I - 0x023F4C 08:BF3C: 01        .byte $01   ; 
- D 1 - I - 0x023F4D 08:BF3D: EB        .byte $EB   ; 
- D 1 - I - 0x023F4E 08:BF3E: 51        .byte $51   ; 
- D 1 - I - 0x023F4F 08:BF3F: 11        .byte $11   ; 
- D 1 - I - 0x023F50 08:BF40: 33        .byte $33   ; 
- D 1 - I - 0x023F51 08:BF41: EB        .byte $EB   ; 
- D 1 - I - 0x023F52 08:BF42: 00        .byte $00   ; 
- D 1 - I - 0x023F53 08:BF43: FE        .byte $FE   ; 
- D 1 - I - 0x023F54 08:BF44: 02        .byte $02   ; 
- D 1 - I - 0x023F55 08:BF45: E2        .byte $E2   ; 
- D 1 - I - 0x023F56 08:BF46: 01        .byte $01   ; 
- D 1 - I - 0x023F57 08:BF47: E1        .byte $E1   ; 
- D 1 - I - 0x023F58 08:BF48: A1        .byte $A1   ; 
- D 1 - I - 0x023F59 08:BF49: E2        .byte $E2   ; 
- D 1 - I - 0x023F5A 08:BF4A: 01        .byte $01   ; 
- D 1 - I - 0x023F5B 08:BF4B: 31        .byte $31   ; 
- D 1 - I - 0x023F5C 08:BF4C: 01        .byte $01   ; 
- D 1 - I - 0x023F5D 08:BF4D: E1        .byte $E1   ; 
- D 1 - I - 0x023F5E 08:BF4E: 71        .byte $71   ; 
- D 1 - I - 0x023F5F 08:BF4F: EB        .byte $EB   ; 
- D 1 - I - 0x023F60 08:BF50: 58        .byte $58   ; 
- D 1 - I - 0x023F61 08:BF51: 11        .byte $11   ; 
- D 1 - I - 0x023F62 08:BF52: E2        .byte $E2   ; 
- D 1 - I - 0x023F63 08:BF53: 33        .byte $33   ; 
- D 1 - I - 0x023F64 08:BF54: 53        .byte $53   ; 
- D 1 - I - 0x023F65 08:BF55: EB        .byte $EB   ; 
- D 1 - I - 0x023F66 08:BF56: 00        .byte $00   ; 
- D 1 - I - 0x023F67 08:BF57: FF        .byte $FF   ; 
off_FD_BF58:
- D 1 - I - 0x023F68 08:BF58: FB        .byte $FB   ; 
- D 1 - I - 0x023F69 08:BF59: E1        .byte $E1   ; 
- D 1 - I - 0x023F6A 08:BF5A: 01        .byte $01   ; 
- D 1 - I - 0x023F6B 08:BF5B: 01        .byte $01   ; 
- D 1 - I - 0x023F6C 08:BF5C: 01        .byte $01   ; 
- D 1 - I - 0x023F6D 08:BF5D: E2        .byte $E2   ; 
- D 1 - I - 0x023F6E 08:BF5E: 01        .byte $01   ; 
- D 1 - I - 0x023F6F 08:BF5F: E1        .byte $E1   ; 
- D 1 - I - 0x023F70 08:BF60: 01        .byte $01   ; 
- D 1 - I - 0x023F71 08:BF61: 01        .byte $01   ; 
- D 1 - I - 0x023F72 08:BF62: FE        .byte $FE   ; 
- D 1 - I - 0x023F73 08:BF63: 03        .byte $03   ; 
- D 1 - I - 0x023F74 08:BF64: 33        .byte $33   ; 
- D 1 - I - 0x023F75 08:BF65: 53        .byte $53   ; 
- D 1 - I - 0x023F76 08:BF66: FF        .byte $FF   ; 



_off001_BF67_61:
off_FF_BF67:
- D 1 - I - 0x023F77 08:BF67: D6        .byte $D6   ; 
- D 1 - I - 0x023F78 08:BF68: 36        .byte $36   ; 
- D 1 - I - 0x023F79 08:BF69: 82        .byte $82   ; 
- D 1 - I - 0x023F7A 08:BF6A: 28        .byte $28   ; 
- D 1 - I - 0x023F7B 08:BF6B: EB        .byte $EB   ; 
- D 1 - I - 0x023F7C 08:BF6C: 55        .byte $55   ; 
- D 1 - I - 0x023F7D 08:BF6D: 0F        .byte $0F   ; 
- D 1 - I - 0x023F7E 08:BF6E: E2        .byte $E2   ; 
- D 1 - I - 0x023F7F 08:BF6F: 92        .byte $92   ; 
- D 1 - I - 0x023F80 08:BF70: EB        .byte $EB   ; 
- D 1 - I - 0x023F81 08:BF71: 00        .byte $00   ; 
- D 1 - I - 0x023F82 08:BF72: 91        .byte $91   ; 
- D 1 - I - 0x023F83 08:BF73: 92        .byte $92   ; 
- D 1 - I - 0x023F84 08:BF74: 91        .byte $91   ; 
- D 1 - I - 0x023F85 08:BF75: 72        .byte $72   ; 
- D 1 - I - 0x023F86 08:BF76: 81        .byte $81   ; 
- D 1 - I - 0x023F87 08:BF77: 92        .byte $92   ; 
- D 1 - I - 0x023F88 08:BF78: EB        .byte $EB   ; 
- D 1 - I - 0x023F89 08:BF79: 55        .byte $55   ; 
- D 1 - I - 0x023F8A 08:BF7A: 0F        .byte $0F   ; 
- D 1 - I - 0x023F8B 08:BF7B: E3        .byte $E3   ; 
- D 1 - I - 0x023F8C 08:BF7C: 03        .byte $03   ; 
- D 1 - I - 0x023F8D 08:BF7D: EB        .byte $EB   ; 
- D 1 - I - 0x023F8E 08:BF7E: 00        .byte $00   ; 
- D 1 - I - 0x023F8F 08:BF7F: 01        .byte $01   ; 
- D 1 - I - 0x023F90 08:BF80: 02        .byte $02   ; 
- D 1 - I - 0x023F91 08:BF81: 01        .byte $01   ; 
- D 1 - I - 0x023F92 08:BF82: E2        .byte $E2   ; 
- D 1 - I - 0x023F93 08:BF83: 92        .byte $92   ; 
- D 1 - I - 0x023F94 08:BF84: E3        .byte $E3   ; 
- D 1 - I - 0x023F95 08:BF85: 01        .byte $01   ; 
- D 1 - I - 0x023F96 08:BF86: 12        .byte $12   ; 
- D 1 - I - 0x023F97 08:BF87: EB        .byte $EB   ; 
- D 1 - I - 0x023F98 08:BF88: 55        .byte $55   ; 
- D 1 - I - 0x023F99 08:BF89: 0F        .byte $0F   ; 
- D 1 - I - 0x023F9A 08:BF8A: 23        .byte $23   ; 
- D 1 - I - 0x023F9B 08:BF8B: EB        .byte $EB   ; 
- D 1 - I - 0x023F9C 08:BF8C: 00        .byte $00   ; 
- D 1 - I - 0x023F9D 08:BF8D: 21        .byte $21   ; 
- D 1 - I - 0x023F9E 08:BF8E: 22        .byte $22   ; 
- D 1 - I - 0x023F9F 08:BF8F: 21        .byte $21   ; 
- D 1 - I - 0x023FA0 08:BF90: 52        .byte $52   ; 
- D 1 - I - 0x023FA1 08:BF91: 71        .byte $71   ; 
- D 1 - I - 0x023FA2 08:BF92: 82        .byte $82   ; 
- D 1 - I - 0x023FA3 08:BF93: EB        .byte $EB   ; 
- D 1 - I - 0x023FA4 08:BF94: 55        .byte $55   ; 
- D 1 - I - 0x023FA5 08:BF95: 0F        .byte $0F   ; 
- D 1 - I - 0x023FA6 08:BF96: 93        .byte $93   ; 
- D 1 - I - 0x023FA7 08:BF97: EB        .byte $EB   ; 
- D 1 - I - 0x023FA8 08:BF98: 00        .byte $00   ; 
- D 1 - I - 0x023FA9 08:BF99: 91        .byte $91   ; 
- D 1 - I - 0x023FAA 08:BF9A: 92        .byte $92   ; 
- D 1 - I - 0x023FAB 08:BF9B: 92        .byte $92   ; 
- D 1 - I - 0x023FAC 08:BF9C: FF        .byte $FF   ; 



_off001_BF9D_60:
- D 1 - I - 0x023FAD 08:BF9D: ED        .byte $ED   ; 
- D 1 - I - 0x023FAE 08:BF9E: 81        .byte $81   ; 
- D 1 - I - 0x023FAF 08:BF9F: FE        .byte $FE   ; 
- D 1 - I - 0x023FB0 08:BFA0: FF        .byte $FF   ; 
- D 1 - I - 0x023FB1 08:BFA1: 67 BF     .word off_FF_BF67



_off001_BFA3_62:
- D 1 - I - 0x023FB3 08:BFA3: D6        .byte $D6   ; 
- D 1 - I - 0x023FB4 08:BFA4: 1F        .byte $1F   ; 
- D 1 - I - 0x023FB5 08:BFA5: E1        .byte $E1   ; 
- D 1 - I - 0x023FB6 08:BFA6: 92        .byte $92   ; 
- D 1 - I - 0x023FB7 08:BFA7: 91        .byte $91   ; 
- D 1 - I - 0x023FB8 08:BFA8: E2        .byte $E2   ; 
- D 1 - I - 0x023FB9 08:BFA9: 92        .byte $92   ; 
- D 1 - I - 0x023FBA 08:BFAA: E1        .byte $E1   ; 
- D 1 - I - 0x023FBB 08:BFAB: 91        .byte $91   ; 
- D 1 - I - 0x023FBC 08:BFAC: 92        .byte $92   ; 
- D 1 - I - 0x023FBD 08:BFAD: 91        .byte $91   ; 
- D 1 - I - 0x023FBE 08:BFAE: 91        .byte $91   ; 
- D 1 - I - 0x023FBF 08:BFAF: E2        .byte $E2   ; 
- D 1 - I - 0x023FC0 08:BFB0: 91        .byte $91   ; 
- D 1 - I - 0x023FC1 08:BFB1: 03        .byte $03   ; 
- D 1 - I - 0x023FC2 08:BFB2: 01        .byte $01   ; 
- D 1 - I - 0x023FC3 08:BFB3: E3        .byte $E3   ; 
- D 1 - I - 0x023FC4 08:BFB4: 02        .byte $02   ; 
- D 1 - I - 0x023FC5 08:BFB5: E2        .byte $E2   ; 
- D 1 - I - 0x023FC6 08:BFB6: 01        .byte $01   ; 
- D 1 - I - 0x023FC7 08:BFB7: 02        .byte $02   ; 
- D 1 - I - 0x023FC8 08:BFB8: 01        .byte $01   ; 
- D 1 - I - 0x023FC9 08:BFB9: 01        .byte $01   ; 
- D 1 - I - 0x023FCA 08:BFBA: E3        .byte $E3   ; 
- D 1 - I - 0x023FCB 08:BFBB: 01        .byte $01   ; 
- D 1 - I - 0x023FCC 08:BFBC: E2        .byte $E2   ; 
- D 1 - I - 0x023FCD 08:BFBD: 23        .byte $23   ; 
- D 1 - I - 0x023FCE 08:BFBE: 21        .byte $21   ; 
- D 1 - I - 0x023FCF 08:BFBF: E3        .byte $E3   ; 
- D 1 - I - 0x023FD0 08:BFC0: 22        .byte $22   ; 
- D 1 - I - 0x023FD1 08:BFC1: E2        .byte $E2   ; 
- D 1 - I - 0x023FD2 08:BFC2: 21        .byte $21   ; 
- D 1 - I - 0x023FD3 08:BFC3: E1        .byte $E1   ; 
- D 1 - I - 0x023FD4 08:BFC4: 51        .byte $51   ; 
- D 1 - I - 0x023FD5 08:BFC5: E2        .byte $E2   ; 
- D 1 - I - 0x023FD6 08:BFC6: 51        .byte $51   ; 
- D 1 - I - 0x023FD7 08:BFC7: E1        .byte $E1   ; 
- D 1 - I - 0x023FD8 08:BFC8: 51        .byte $51   ; 
- D 1 - I - 0x023FD9 08:BFC9: 71        .byte $71   ; 
- D 1 - I - 0x023FDA 08:BFCA: E2        .byte $E2   ; 
- D 1 - I - 0x023FDB 08:BFCB: 71        .byte $71   ; 
- D 1 - I - 0x023FDC 08:BFCC: E1        .byte $E1   ; 
- D 1 - I - 0x023FDD 08:BFCD: 71        .byte $71   ; 
- D 1 - I - 0x023FDE 08:BFCE: 92        .byte $92   ; 
- D 1 - I - 0x023FDF 08:BFCF: 91        .byte $91   ; 
- D 1 - I - 0x023FE0 08:BFD0: 92        .byte $92   ; 
- D 1 - I - 0x023FE1 08:BFD1: 92        .byte $92   ; 
- D 1 - I - 0x023FE2 08:BFD2: C1        .byte $C1   ; 
- D 1 - I - 0x023FE3 08:BFD3: D1        .byte $D1   ; 
- D 1 - I - 0x023FE4 08:BFD4: 7F        .byte $7F   ; 
- D 1 - I - 0x023FE5 08:BFD5: E1        .byte $E1   ; 
- D 1 - I - 0x023FE6 08:BFD6: DE        .byte $DE   ; 
- D 1 - I - 0x023FE7 08:BFD7: 98        .byte $98   ; 
- D 1 - I - 0x023FE8 08:BFD8: 76        .byte $76   ; 
- D 1 - I - 0x023FE9 08:BFD9: 54        .byte $54   ; 
- D 1 - I - 0x023FEA 08:BFDA: 32        .byte $32   ; 
- D 1 - I - 0x023FEB 08:BFDB: 10        .byte $10   ; 
- D 1 - I - 0x023FEC 08:BFDC: E0        .byte $E0   ; 
- D 1 - I - 0x023FED 08:BFDD: BA        .byte $BA   ; 
- D 1 - I - 0x023FEE 08:BFDE: DE        .byte $DE   ; 
- D 1 - I - 0x023FEF 08:BFDF: 91        .byte $91   ; 
- D 1 - I - 0x023FF0 08:BFE0: FF        .byte $FF   ; 



_off001_BFE1_63:
- D 1 - I - 0x023FF1 08:BFE1: D6        .byte $D6   ; 
- D 1 - I - 0x023FF2 08:BFE2: DE        .byte $DE   ; 
- D 1 - I - 0x023FF3 08:BFE3: B1        .byte $B1   ; 
- D 1 - I - 0x023FF4 08:BFE4: B3        .byte $B3   ; 
- D 1 - I - 0x023FF5 08:BFE5: 1B        .byte $1B   ; 
- D 1 - I - 0x023FF6 08:BFE6: 11        .byte $11   ; 
- D 1 - I - 0x023FF7 08:BFE7: B3        .byte $B3   ; 
- D 1 - I - 0x023FF8 08:BFE8: 3B        .byte $3B   ; 
- D 1 - I - 0x023FF9 08:BFE9: 11        .byte $11   ; 
- D 1 - I - 0x023FFA 08:BFEA: B3        .byte $B3   ; 
- D 1 - I - 0x023FFB 08:BFEB: 1B        .byte $1B   ; 
- D 1 - I - 0x023FFC 08:BFEC: 99        .byte $99   ; 
- D 1 - I - 0x023FFD 08:BFED: 87        .byte $87   ; 
- D 1 - I - 0x023FFE 08:BFEE: 6B        .byte $6B   ; 
- D 1 - I - 0x023FFF 08:BFEF: 11        .byte $11   ; 
- D 1 - I - 0x024000 08:BFF0: B3        .byte $B3   ; 
- D 1 - I - 0x024001 08:BFF1: 1B        .byte $1B   ; 
- D 1 - I - 0x024002 08:BFF2: 33        .byte $33   ; 
- D 1 - I - 0x024003 08:BFF3: 33        .byte $33   ; 
- D 1 - I - 0x024004 08:BFF4: 33        .byte $33   ; 
- D 1 - I - 0x024005 08:BFF5: B1        .byte $B1   ; 
- D 1 - I - 0x024006 08:BFF6: B3        .byte $B3   ; 
- D 1 - I - 0x024007 08:BFF7: B3        .byte $B3   ; 
- D 1 - I - 0x024008 08:BFF8: DE        .byte $DE   ; 
- D 1 - I - 0x024009 08:BFF9: C2        .byte $C2   ; 
- D 1 - I - 0x02400A 08:BFFA: B1        .byte $B1   ; 
- D 1 - I - 0x02400B 08:BFFB: FF        .byte $FF   ; 



.export tbl_0x02400C
tbl_0x02400C:
- D 1 - - - 0x02400C 08:BFFC: 02        .byte $02   ; 
- D 1 - - - 0x02400D 08:BFFD: 01        .byte $01   ; 
- D 1 - - - 0x02400E 08:BFFE: 00        .byte $00   ; 
- D 1 - - - 0x02400F 08:BFFF: 00        .byte $00   ; 



