.segment "BANK_0A"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x028010-0x02C00F

    .byte con_bank_id + $04   ; (!) байт должен находиться по адресу 8000, чтение из 0x03F67D



con_Y       = $00   ; координата Y
con_T       = $00   ; тайл
con_A       = $00   ; атрибут
con_X       = $00   ; координата X



.export tbl_0x028011_turtle
tbl_0x028011_turtle:
- D 0 - - - 0x028011 0A:8001: CD 80     .word _off006_80CD_00
- D 0 - I - 0x028013 0A:8003: F2 80     .word _off006_80F2_01
- D 0 - I - 0x028015 0A:8005: 17 81     .word _off006_8117_02
- D 0 - I - 0x028017 0A:8007: 3C 81     .word _off006_813C_03
- D 0 - I - 0x028019 0A:8009: 55 81     .word _off006_8155_04
- D 0 - I - 0x02801B 0A:800B: 7A 81     .word _off006_817A_05
- D 0 - I - 0x02801D 0A:800D: 9F 81     .word _off006_819F_06
- D 0 - I - 0x02801F 0A:800F: C4 81     .word _off006_81C4_07
- D 0 - I - 0x028021 0A:8011: E9 81     .word _off006_81E9_08
- D 0 - I - 0x028023 0A:8013: 12 82     .word _off006_8212_09
- D 0 - I - 0x028025 0A:8015: 3B 82     .word _off006_823B_0A
- D 0 - I - 0x028027 0A:8017: 60 82     .word _off006_8260_0B
- D 0 - I - 0x028029 0A:8019: 85 82     .word _off006_8285_0C
- D 0 - I - 0x02802B 0A:801B: AE 82     .word _off006_82AE_0D
- D 0 - I - 0x02802D 0A:801D: D3 82     .word _off006_82D3_0E
- D 0 - I - 0x02802F 0A:801F: FC 82     .word _off006_82FC_0F
- D 0 - I - 0x028031 0A:8021: 29 83     .word _off006_8329_10
- D 0 - I - 0x028033 0A:8023: 4A 83     .word _off006_834A_11
- D 0 - I - 0x028035 0A:8025: 77 83     .word _off006_8377_12
- D 0 - I - 0x028037 0A:8027: 98 83     .word _off006_8398_13
- D 0 - I - 0x028039 0A:8029: B9 83     .word _off006_83B9_14
- D 0 - I - 0x02803B 0A:802B: DE 83     .word _off006_83DE_15
- - - - - - 0x02803D 0A:802D: 03 84     .word _off006_8403_16
- D 0 - I - 0x02803F 0A:802F: 20 84     .word _off006_8420_17
- D 0 - I - 0x028041 0A:8031: 41 84     .word _off006_8441_18
- D 0 - I - 0x028043 0A:8033: 6A 84     .word _off006_846A_19
- D 0 - I - 0x028045 0A:8035: 8B 84     .word _off006_848B_1A
- D 0 - I - 0x028047 0A:8037: B4 84     .word _off006_84B4_1B
- D 0 - I - 0x028049 0A:8039: E1 84     .word _off006_84E1_1C
- D 0 - I - 0x02804B 0A:803B: 06 85     .word _off006_8506_1D
- D 0 - I - 0x02804D 0A:803D: 23 85     .word _off006_8523_1E
- D 0 - I - 0x02804F 0A:803F: 48 85     .word _off006_8548_1F
- D 0 - I - 0x028051 0A:8041: 65 85     .word _off006_8565_20
- D 0 - I - 0x028053 0A:8043: 8A 85     .word _off006_858A_21
- D 0 - I - 0x028055 0A:8045: B3 85     .word _off006_85B3_22
- D 0 - I - 0x028057 0A:8047: DC 85     .word _off006_85DC_23
- D 0 - I - 0x028059 0A:8049: 05 86     .word _off006_8605_24
- D 0 - I - 0x02805B 0A:804B: 2E 86     .word _off006_862E_25
- D 0 - I - 0x02805D 0A:804D: 53 86     .word _off006_8653_26
- D 0 - I - 0x02805F 0A:804F: 74 86     .word _off006_8674_27
- D 0 - I - 0x028061 0A:8051: BA 86     .word _off006_86BA_28
- D 0 - I - 0x028063 0A:8053: DB 86     .word _off006_86DB_29
- D 0 - I - 0x028065 0A:8055: F8 86     .word _off006_86F8_2A
- D 0 - I - 0x028067 0A:8057: 19 87     .word _off006_8719_2B
- D 0 - I - 0x028069 0A:8059: 3A 87     .word _off006_873A_2C
- D 0 - I - 0x02806B 0A:805B: 5B 87     .word _off006_875B_2D
- D 0 - I - 0x02806D 0A:805D: 7C 87     .word _off006_877C_2E
- D 0 - I - 0x02806F 0A:805F: A1 87     .word _off006_87A1_2F
- D 0 - I - 0x028071 0A:8061: D2 87     .word _off006_87D2_30
- D 0 - I - 0x028073 0A:8063: FB 87     .word _off006_87FB_31
- D 0 - I - 0x028075 0A:8065: 18 88     .word _off006_8818_32
- D 0 - I - 0x028077 0A:8067: 3D 88     .word _off006_883D_33
- D 0 - I - 0x028079 0A:8069: 5A 88     .word _off006_885A_34
- D 0 - I - 0x02807B 0A:806B: 7F 88     .word _off006_887F_35
- D 0 - I - 0x02807D 0A:806D: A4 88     .word _off006_88A4_36
- D 0 - I - 0x02807F 0A:806F: C5 88     .word _off006_88C5_37
- D 0 - I - 0x028081 0A:8071: EA 88     .word _off006_88EA_38
- D 0 - I - 0x028083 0A:8073: 0F 89     .word _off006_890F_39
- D 0 - I - 0x028085 0A:8075: 2C 89     .word _off006_892C_3A
- D 0 - I - 0x028087 0A:8077: 55 89     .word _off006_8955_3B
- D 0 - I - 0x028089 0A:8079: 5A 89     .word _off006_895A_3C
- D 0 - I - 0x02808B 0A:807B: 63 89     .word _off006_8963_3D
- D 0 - I - 0x02808D 0A:807D: 68 89     .word _off006_8968_3E
- D 0 - I - 0x02808F 0A:807F: 71 89     .word _off006_8971_3F
- D 0 - I - 0x028091 0A:8081: 7E 89     .word _off006_897E_40
- D 0 - I - 0x028093 0A:8083: 87 89     .word _off006_8987_41
- D 0 - I - 0x028095 0A:8085: 94 89     .word _off006_8994_42
- D 0 - I - 0x028097 0A:8087: 9D 89     .word _off006_899D_43
- D 0 - I - 0x028099 0A:8089: C6 89     .word _off006_89C6_44
- D 0 - I - 0x02809B 0A:808B: EB 89     .word _off006_89EB_45
- D 0 - I - 0x02809D 0A:808D: 14 8A     .word _off006_8A14_46
- D 0 - I - 0x02809F 0A:808F: 35 8A     .word _off006_8A35_47
- D 0 - I - 0x0280A1 0A:8091: 3A 8A     .word _off006_8A3A_48
- D 0 - I - 0x0280A3 0A:8093: 5B 8A     .word _off006_8A5B_49
- D 0 - I - 0x0280A5 0A:8095: 60 8A     .word _off006_8A60_4A
- D 0 - I - 0x0280A7 0A:8097: 69 8A     .word _off006_8A69_4B
- D 0 - I - 0x0280A9 0A:8099: 72 8A     .word _off006_8A72_4C
- D 0 - I - 0x0280AB 0A:809B: 97 8A     .word _off006_8A97_4D
- D 0 - I - 0x0280AD 0A:809D: BC 8A     .word _off006_8ABC_4E
- D 0 - I - 0x0280AF 0A:809F: E1 8A     .word _off006_8AE1_4F
- D 0 - I - 0x0280B1 0A:80A1: 06 8B     .word _off006_8B06_50
- D 0 - I - 0x0280B3 0A:80A3: 33 8B     .word _off006_8B33_51
- D 0 - I - 0x0280B5 0A:80A5: 5C 8B     .word _off006_8B5C_52
- D 0 - I - 0x0280B7 0A:80A7: 7D 8B     .word _off006_8B7D_53
- D 0 - I - 0x0280B9 0A:80A9: 9E 8B     .word _off006_8B9E_54
- D 0 - I - 0x0280BB 0A:80AB: C7 8B     .word _off006_8BC7_55
- D 0 - I - 0x0280BD 0A:80AD: EC 8B     .word _off006_8BEC_56
- D 0 - I - 0x0280BF 0A:80AF: 11 8C     .word _off006_8C11_57
- D 0 - I - 0x0280C1 0A:80B1: 3A 8C     .word _off006_8C3A_58
- D 0 - I - 0x0280C3 0A:80B3: 99 86     .word _off006_8699_59
- D 0 - I - 0x0280C5 0A:80B5: 5F 8C     .word _off006_8C5F_5A
- D 0 - I - 0x0280C7 0A:80B7: 80 8C     .word _off006_8C80_5B
- D 0 - I - 0x0280C9 0A:80B9: A5 8C     .word _off006_8CA5_5C
- D 0 - I - 0x0280CB 0A:80BB: CA 8C     .word _off006_8CCA_5D
- D 0 - I - 0x0280CD 0A:80BD: F7 8C     .word _off006_8CF7_5E
- D 0 - I - 0x0280CF 0A:80BF: 20 8D     .word _off006_8D20_5F
- D 0 - I - 0x0280D1 0A:80C1: 4D 8D     .word _off006_8D4D_60
- D 0 - I - 0x0280D3 0A:80C3: 72 8D     .word _off006_8D72_61
- D 0 - I - 0x0280D5 0A:80C5: 9B 8D     .word _off006_8D9B_62
- D 0 - I - 0x0280D7 0A:80C7: C0 8D     .word _off006_8DC0_63
- D 0 - I - 0x0280D9 0A:80C9: E9 8D     .word _off006_8DE9_64
- D 0 - I - 0x0280DB 0A:80CB: 0A 8E     .word _off006_8E0A_65



_off006_80CD_00:
- D 0 - I - 0x0280DD 0A:80CD: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x0280DE 0A:80CE: C2        .byte con_Y + $C2   ; 
- D 0 - I - 0x0280DF 0A:80CF: 41        .byte con_T + $41   ; 
- D 0 - I - 0x0280E0 0A:80D0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0280E1 0A:80D1: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0280E2 0A:80D2: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x0280E3 0A:80D3: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0280E4 0A:80D4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0280E5 0A:80D5: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x0280E6 0A:80D6: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x0280E7 0A:80D7: 03        .byte con_T + $03   ; 
- D 0 - I - 0x0280E8 0A:80D8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0280E9 0A:80D9: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x0280EA 0A:80DA: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x0280EB 0A:80DB: 05        .byte con_T + $05   ; 
- D 0 - I - 0x0280EC 0A:80DC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0280ED 0A:80DD: 02        .byte con_X + $02   ; 

- D 0 - I - 0x0280EE 0A:80DE: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x0280EF 0A:80DF: 07        .byte con_T + $07   ; 
- D 0 - I - 0x0280F0 0A:80E0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0280F1 0A:80E1: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x0280F2 0A:80E2: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x0280F3 0A:80E3: 09        .byte con_T + $09   ; 
- D 0 - I - 0x0280F4 0A:80E4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0280F5 0A:80E5: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x0280F6 0A:80E6: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x0280F7 0A:80E7: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x0280F8 0A:80E8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0280F9 0A:80E9: 05        .byte con_X + $05   ; 

- D 0 - I - 0x0280FA 0A:80EA: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x0280FB 0A:80EB: 43        .byte con_T + $43   ; 
- D 0 - I - 0x0280FC 0A:80EC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0280FD 0A:80ED: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x0280FE 0A:80EE: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x0280FF 0A:80EF: 45        .byte con_T + $45   ; 
- D 0 - I - 0x028100 0A:80F0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028101 0A:80F1: 02        .byte con_X + $02   ; 
@end:



_off006_80F2_01:
- D 0 - I - 0x028102 0A:80F2: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028103 0A:80F3: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x028104 0A:80F4: 41        .byte con_T + $41   ; 
- D 0 - I - 0x028105 0A:80F5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028106 0A:80F6: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x028107 0A:80F7: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028108 0A:80F8: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028109 0A:80F9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02810A 0A:80FA: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x02810B 0A:80FB: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x02810C 0A:80FC: 03        .byte con_T + $03   ; 
- D 0 - I - 0x02810D 0A:80FD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02810E 0A:80FE: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x02810F 0A:80FF: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028110 0A:8100: 05        .byte con_T + $05   ; 
- D 0 - I - 0x028111 0A:8101: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028112 0A:8102: 04        .byte con_X + $04   ; 

- D 0 - I - 0x028113 0A:8103: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028114 0A:8104: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x028115 0A:8105: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028116 0A:8106: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x028117 0A:8107: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028118 0A:8108: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x028119 0A:8109: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02811A 0A:810A: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x02811B 0A:810B: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x02811C 0A:810C: 11        .byte con_T + $11   ; 
- D 0 - I - 0x02811D 0A:810D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02811E 0A:810E: 06        .byte con_X + $06   ; 

- D 0 - I - 0x02811F 0A:810F: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028120 0A:8110: 47        .byte con_T + $47   ; 
- D 0 - I - 0x028121 0A:8111: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028122 0A:8112: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x028123 0A:8113: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028124 0A:8114: 49        .byte con_T + $49   ; 
- D 0 - I - 0x028125 0A:8115: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028126 0A:8116: 04        .byte con_X + $04   ; 
@end:



_off006_8117_02:
- D 0 - I - 0x028127 0A:8117: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028128 0A:8118: C2        .byte con_Y + $C2   ; 
- D 0 - I - 0x028129 0A:8119: 41        .byte con_T + $41   ; 
- D 0 - I - 0x02812A 0A:811A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02812B 0A:811B: 00        .byte con_X + $00   ; 

- D 0 - I - 0x02812C 0A:811C: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x02812D 0A:811D: 13        .byte con_T + $13   ; 
- D 0 - I - 0x02812E 0A:811E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02812F 0A:811F: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x028130 0A:8120: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028131 0A:8121: 15        .byte con_T + $15   ; 
- D 0 - I - 0x028132 0A:8122: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028133 0A:8123: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x028134 0A:8124: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028135 0A:8125: 05        .byte con_T + $05   ; 
- D 0 - I - 0x028136 0A:8126: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028137 0A:8127: 06        .byte con_X + $06   ; 

- D 0 - I - 0x028138 0A:8128: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x028139 0A:8129: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x02813A 0A:812A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02813B 0A:812B: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x02813C 0A:812C: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x02813D 0A:812D: 17        .byte con_T + $17   ; 
- D 0 - I - 0x02813E 0A:812E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02813F 0A:812F: 00        .byte con_X + $00   ; 

- D 0 - I - 0x028140 0A:8130: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x028141 0A:8131: 19        .byte con_T + $19   ; 
- D 0 - I - 0x028142 0A:8132: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028143 0A:8133: 08        .byte con_X + $08   ; 

- D 0 - I - 0x028144 0A:8134: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x028145 0A:8135: 43        .byte con_T + $43   ; 
- D 0 - I - 0x028146 0A:8136: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028147 0A:8137: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x028148 0A:8138: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x028149 0A:8139: 45        .byte con_T + $45   ; 
- D 0 - I - 0x02814A 0A:813A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02814B 0A:813B: 04        .byte con_X + $04   ; 
@end:



_off006_813C_03:
- D 0 - I - 0x02814C 0A:813C: 06        .byte (@end - * - 1) / 4

- D 0 - I - 0x02814D 0A:813D: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x02814E 0A:813E: 01        .byte con_T + $01   ; 
- D 0 - I - 0x02814F 0A:813F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028150 0A:8140: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x028151 0A:8141: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028152 0A:8142: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028153 0A:8143: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028154 0A:8144: 02        .byte con_X + $02   ; 

- D 0 - I - 0x028155 0A:8145: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028156 0A:8146: 05        .byte con_T + $05   ; 
- D 0 - I - 0x028157 0A:8147: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028158 0A:8148: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x028159 0A:8149: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x02815A 0A:814A: 07        .byte con_T + $07   ; 
- D 0 - I - 0x02815B 0A:814B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02815C 0A:814C: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x02815D 0A:814D: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x02815E 0A:814E: 09        .byte con_T + $09   ; 
- D 0 - I - 0x02815F 0A:814F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028160 0A:8150: 02        .byte con_X + $02   ; 

- D 0 - I - 0x028161 0A:8151: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028162 0A:8152: 47        .byte con_T + $47   ; 
- D 0 - I - 0x028163 0A:8153: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028164 0A:8154: 00        .byte con_X + $00   ; 
@end:



_off006_8155_04:
- D 0 - I - 0x028165 0A:8155: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028166 0A:8156: C2        .byte con_Y + $C2   ; 
- D 0 - I - 0x028167 0A:8157: 41        .byte con_T + $41   ; 
- D 0 - I - 0x028168 0A:8158: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028169 0A:8159: 05        .byte con_X + $05   ; 

- D 0 - I - 0x02816A 0A:815A: D4        .byte con_Y + $D4   ; 
- D 0 - I - 0x02816B 0A:815B: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x02816C 0A:815C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02816D 0A:815D: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x02816E 0A:815E: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x02816F 0A:815F: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x028170 0A:8160: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028171 0A:8161: 01        .byte con_X + $01   ; 

- D 0 - I - 0x028172 0A:8162: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028173 0A:8163: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x028174 0A:8164: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028175 0A:8165: 09        .byte con_X + $09   ; 

- D 0 - I - 0x028176 0A:8166: E4        .byte con_Y + $E4   ; 
- D 0 - I - 0x028177 0A:8167: 11        .byte con_T + $11   ; 
- D 0 - I - 0x028178 0A:8168: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028179 0A:8169: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x02817A 0A:816A: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x02817B 0A:816B: 13        .byte con_T + $13   ; 
- D 0 - I - 0x02817C 0A:816C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02817D 0A:816D: 01        .byte con_X + $01   ; 

- D 0 - I - 0x02817E 0A:816E: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x02817F 0A:816F: 15        .byte con_T + $15   ; 
- D 0 - I - 0x028180 0A:8170: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028181 0A:8171: 09        .byte con_X + $09   ; 

- D 0 - I - 0x028182 0A:8172: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x028183 0A:8173: 27        .byte con_T + $27   ; 
- D 0 - I - 0x028184 0A:8174: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028185 0A:8175: F1        .byte con_X + $F1   ; 

- D 0 - I - 0x028186 0A:8176: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x028187 0A:8177: 25        .byte con_T + $25   ; 
- D 0 - I - 0x028188 0A:8178: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028189 0A:8179: 07        .byte con_X + $07   ; 
@end:



_off006_817A_05:
- D 0 - I - 0x02818A 0A:817A: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x02818B 0A:817B: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02818C 0A:817C: 17        .byte con_T + $17   ; 
- D 0 - I - 0x02818D 0A:817D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02818E 0A:817E: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x02818F 0A:817F: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x028190 0A:8180: 19        .byte con_T + $19   ; 
- D 0 - I - 0x028191 0A:8181: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028192 0A:8182: 02        .byte con_X + $02   ; 

- D 0 - I - 0x028193 0A:8183: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x028194 0A:8184: 05        .byte con_T + $05   ; 
- D 0 - I - 0x028195 0A:8185: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028196 0A:8186: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x028197 0A:8187: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x028198 0A:8188: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x028199 0A:8189: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02819A 0A:818A: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x02819B 0A:818B: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02819C 0A:818C: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x02819D 0A:818D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02819E 0A:818E: 00        .byte con_X + $00   ; 

- D 0 - I - 0x02819F 0A:818F: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0281A0 0A:8190: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x0281A1 0A:8191: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0281A2 0A:8192: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0281A3 0A:8193: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0281A4 0A:8194: 21        .byte con_T + $21   ; 
- D 0 - I - 0x0281A5 0A:8195: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0281A6 0A:8196: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x0281A7 0A:8197: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0281A8 0A:8198: 47        .byte con_T + $47   ; 
- D 0 - I - 0x0281A9 0A:8199: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0281AA 0A:819A: 03        .byte con_X + $03   ; 

- D 0 - I - 0x0281AB 0A:819B: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0281AC 0A:819C: 23        .byte con_T + $23   ; 
- D 0 - I - 0x0281AD 0A:819D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0281AE 0A:819E: FD        .byte con_X + $FD   ; 
@end:



_off006_819F_06:
- D 0 - I - 0x0281AF 0A:819F: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x0281B0 0A:81A0: C2        .byte con_Y + $C2   ; 
- D 0 - I - 0x0281B1 0A:81A1: 41        .byte con_T + $41   ; 
- D 0 - I - 0x0281B2 0A:81A2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0281B3 0A:81A3: 05        .byte con_X + $05   ; 

- D 0 - I - 0x0281B4 0A:81A4: D4        .byte con_Y + $D4   ; 
- D 0 - I - 0x0281B5 0A:81A5: 29        .byte con_T + $29   ; 
- D 0 - I - 0x0281B6 0A:81A6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0281B7 0A:81A7: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0281B8 0A:81A8: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x0281B9 0A:81A9: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x0281BA 0A:81AA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0281BB 0A:81AB: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0281BC 0A:81AC: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x0281BD 0A:81AD: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x0281BE 0A:81AE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0281BF 0A:81AF: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0281C0 0A:81B0: E4        .byte con_Y + $E4   ; 
- D 0 - I - 0x0281C1 0A:81B1: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x0281C2 0A:81B2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0281C3 0A:81B3: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0281C4 0A:81B4: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x0281C5 0A:81B5: 31        .byte con_T + $31   ; 
- D 0 - I - 0x0281C6 0A:81B6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0281C7 0A:81B7: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0281C8 0A:81B8: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x0281C9 0A:81B9: 33        .byte con_T + $33   ; 
- D 0 - I - 0x0281CA 0A:81BA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0281CB 0A:81BB: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0281CC 0A:81BC: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x0281CD 0A:81BD: 27        .byte con_T + $27   ; 
- D 0 - I - 0x0281CE 0A:81BE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0281CF 0A:81BF: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x0281D0 0A:81C0: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x0281D1 0A:81C1: 25        .byte con_T + $25   ; 
- D 0 - I - 0x0281D2 0A:81C2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0281D3 0A:81C3: 06        .byte con_X + $06   ; 
@end:



_off006_81C4_07:
- D 0 - I - 0x0281D4 0A:81C4: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x0281D5 0A:81C5: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0281D6 0A:81C6: 35        .byte con_T + $35   ; 
- D 0 - I - 0x0281D7 0A:81C7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0281D8 0A:81C8: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x0281D9 0A:81C9: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0281DA 0A:81CA: 37        .byte con_T + $37   ; 
- D 0 - I - 0x0281DB 0A:81CB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0281DC 0A:81CC: 02        .byte con_X + $02   ; 

- D 0 - I - 0x0281DD 0A:81CD: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0281DE 0A:81CE: 05        .byte con_T + $05   ; 
- D 0 - I - 0x0281DF 0A:81CF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0281E0 0A:81D0: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x0281E1 0A:81D1: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0281E2 0A:81D2: 39        .byte con_T + $39   ; 
- D 0 - I - 0x0281E3 0A:81D3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0281E4 0A:81D4: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0281E5 0A:81D5: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0281E6 0A:81D6: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x0281E7 0A:81D7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0281E8 0A:81D8: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0281E9 0A:81D9: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0281EA 0A:81DA: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x0281EB 0A:81DB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0281EC 0A:81DC: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0281ED 0A:81DD: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0281EE 0A:81DE: 21        .byte con_T + $21   ; 
- D 0 - I - 0x0281EF 0A:81DF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0281F0 0A:81E0: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x0281F1 0A:81E1: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0281F2 0A:81E2: 47        .byte con_T + $47   ; 
- D 0 - I - 0x0281F3 0A:81E3: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0281F4 0A:81E4: 03        .byte con_X + $03   ; 

- D 0 - I - 0x0281F5 0A:81E5: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0281F6 0A:81E6: 23        .byte con_T + $23   ; 
- D 0 - I - 0x0281F7 0A:81E7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0281F8 0A:81E8: FD        .byte con_X + $FD   ; 
@end:



_off006_81E9_08:
- D 0 - I - 0x0281F9 0A:81E9: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x0281FA 0A:81EA: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x0281FB 0A:81EB: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0281FC 0A:81EC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0281FD 0A:81ED: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x0281FE 0A:81EE: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0281FF 0A:81EF: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028200 0A:81F0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028201 0A:81F1: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x028202 0A:81F2: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028203 0A:81F3: 05        .byte con_T + $05   ; 
- D 0 - I - 0x028204 0A:81F4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028205 0A:81F5: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x028206 0A:81F6: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028207 0A:81F7: 07        .byte con_T + $07   ; 
- D 0 - I - 0x028208 0A:81F8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028209 0A:81F9: 06        .byte con_X + $06   ; 

- D 0 - I - 0x02820A 0A:81FA: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x02820B 0A:81FB: 09        .byte con_T + $09   ; 
- D 0 - I - 0x02820C 0A:81FC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02820D 0A:81FD: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x02820E 0A:81FE: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x02820F 0A:81FF: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x028210 0A:8200: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028211 0A:8201: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x028212 0A:8202: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028213 0A:8203: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x028214 0A:8204: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028215 0A:8205: 06        .byte con_X + $06   ; 

- D 0 - I - 0x028216 0A:8206: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028217 0A:8207: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x028218 0A:8208: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028219 0A:8209: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x02821A 0A:820A: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x02821B 0A:820B: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x02821C 0A:820C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02821D 0A:820D: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x02821E 0A:820E: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x02821F 0A:820F: 49        .byte con_T + $49   ; 
- D 0 - I - 0x028220 0A:8210: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028221 0A:8211: 04        .byte con_X + $04   ; 
@end:



_off006_8212_09:
- D 0 - I - 0x028222 0A:8212: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x028223 0A:8213: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x028224 0A:8214: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028225 0A:8215: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028226 0A:8216: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x028227 0A:8217: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x028228 0A:8218: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028229 0A:8219: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02822A 0A:821A: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x02822B 0A:821B: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02822C 0A:821C: 05        .byte con_T + $05   ; 
- D 0 - I - 0x02822D 0A:821D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02822E 0A:821E: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x02822F 0A:821F: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x028230 0A:8220: 07        .byte con_T + $07   ; 
- D 0 - I - 0x028231 0A:8221: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028232 0A:8222: 05        .byte con_X + $05   ; 

- D 0 - I - 0x028233 0A:8223: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x028234 0A:8224: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x028235 0A:8225: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028236 0A:8226: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x028237 0A:8227: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x028238 0A:8228: 11        .byte con_T + $11   ; 
- D 0 - I - 0x028239 0A:8229: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02823A 0A:822A: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x02823B 0A:822B: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02823C 0A:822C: 13        .byte con_T + $13   ; 
- D 0 - I - 0x02823D 0A:822D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02823E 0A:822E: 05        .byte con_X + $05   ; 

- D 0 - I - 0x02823F 0A:822F: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x028240 0A:8230: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x028241 0A:8231: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028242 0A:8232: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x028243 0A:8233: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x028244 0A:8234: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x028245 0A:8235: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028246 0A:8236: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x028247 0A:8237: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x028248 0A:8238: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x028249 0A:8239: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02824A 0A:823A: 00        .byte con_X + $00   ; 
@end:



_off006_823B_0A:
- D 0 - I - 0x02824B 0A:823B: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x02824C 0A:823C: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x02824D 0A:823D: 01        .byte con_T + $01   ; 
- D 0 - I - 0x02824E 0A:823E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02824F 0A:823F: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x028250 0A:8240: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028251 0A:8241: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028252 0A:8242: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028253 0A:8243: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x028254 0A:8244: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028255 0A:8245: 05        .byte con_T + $05   ; 
- D 0 - I - 0x028256 0A:8246: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028257 0A:8247: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x028258 0A:8248: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028259 0A:8249: 07        .byte con_T + $07   ; 
- D 0 - I - 0x02825A 0A:824A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02825B 0A:824B: 07        .byte con_X + $07   ; 

- D 0 - I - 0x02825C 0A:824C: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x02825D 0A:824D: 15        .byte con_T + $15   ; 
- D 0 - I - 0x02825E 0A:824E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02825F 0A:824F: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x028260 0A:8250: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028261 0A:8251: 17        .byte con_T + $17   ; 
- D 0 - I - 0x028262 0A:8252: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028263 0A:8253: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x028264 0A:8254: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028265 0A:8255: 19        .byte con_T + $19   ; 
- D 0 - I - 0x028266 0A:8256: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028267 0A:8257: 07        .byte con_X + $07   ; 

- D 0 - I - 0x028268 0A:8258: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028269 0A:8259: 49        .byte con_T + $49   ; 
- D 0 - I - 0x02826A 0A:825A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02826B 0A:825B: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x02826C 0A:825C: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x02826D 0A:825D: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x02826E 0A:825E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02826F 0A:825F: 05        .byte con_X + $05   ; 
@end:



_off006_8260_0B:
- D 0 - I - 0x028270 0A:8260: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028271 0A:8261: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x028272 0A:8262: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028273 0A:8263: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028274 0A:8264: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x028275 0A:8265: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028276 0A:8266: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x028277 0A:8267: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028278 0A:8268: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x028279 0A:8269: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x02827A 0A:826A: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x02827B 0A:826B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02827C 0A:826C: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x02827D 0A:826D: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x02827E 0A:826E: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x02827F 0A:826F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028280 0A:8270: 06        .byte con_X + $06   ; 

- D 0 - I - 0x028281 0A:8271: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028282 0A:8272: 21        .byte con_T + $21   ; 
- D 0 - I - 0x028283 0A:8273: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028284 0A:8274: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x028285 0A:8275: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028286 0A:8276: 23        .byte con_T + $23   ; 
- D 0 - I - 0x028287 0A:8277: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028288 0A:8278: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x028289 0A:8279: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x02828A 0A:827A: 25        .byte con_T + $25   ; 
- D 0 - I - 0x02828B 0A:827B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02828C 0A:827C: 06        .byte con_X + $06   ; 

- D 0 - I - 0x02828D 0A:827D: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x02828E 0A:827E: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x02828F 0A:827F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028290 0A:8280: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x028291 0A:8281: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028292 0A:8282: 49        .byte con_T + $49   ; 
- D 0 - I - 0x028293 0A:8283: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028294 0A:8284: 03        .byte con_X + $03   ; 
@end:



_off006_8285_0C:
- D 0 - I - 0x028295 0A:8285: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x028296 0A:8286: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x028297 0A:8287: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028298 0A:8288: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028299 0A:8289: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x02829A 0A:828A: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02829B 0A:828B: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x02829C 0A:828C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02829D 0A:828D: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x02829E 0A:828E: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02829F 0A:828F: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x0282A0 0A:8290: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0282A1 0A:8291: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0282A2 0A:8292: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0282A3 0A:8293: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x0282A4 0A:8294: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0282A5 0A:8295: 04        .byte con_X + $04   ; 

- D 0 - I - 0x0282A6 0A:8296: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0282A7 0A:8297: 21        .byte con_T + $21   ; 
- D 0 - I - 0x0282A8 0A:8298: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0282A9 0A:8299: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x0282AA 0A:829A: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0282AB 0A:829B: 23        .byte con_T + $23   ; 
- D 0 - I - 0x0282AC 0A:829C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0282AD 0A:829D: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0282AE 0A:829E: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0282AF 0A:829F: 25        .byte con_T + $25   ; 
- D 0 - I - 0x0282B0 0A:82A0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0282B1 0A:82A1: 04        .byte con_X + $04   ; 

- D 0 - I - 0x0282B2 0A:82A2: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0282B3 0A:82A3: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x0282B4 0A:82A4: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0282B5 0A:82A5: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x0282B6 0A:82A6: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0282B7 0A:82A7: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x0282B8 0A:82A8: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0282B9 0A:82A9: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x0282BA 0A:82AA: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0282BB 0A:82AB: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x0282BC 0A:82AC: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0282BD 0A:82AD: 07        .byte con_X + $07   ; 
@end:



_off006_82AE_0D:
- D 0 - I - 0x0282BE 0A:82AE: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x0282BF 0A:82AF: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x0282C0 0A:82B0: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0282C1 0A:82B1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0282C2 0A:82B2: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x0282C3 0A:82B3: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0282C4 0A:82B4: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x0282C5 0A:82B5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0282C6 0A:82B6: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x0282C7 0A:82B7: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0282C8 0A:82B8: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x0282C9 0A:82B9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0282CA 0A:82BA: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x0282CB 0A:82BB: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0282CC 0A:82BC: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x0282CD 0A:82BD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0282CE 0A:82BE: 06        .byte con_X + $06   ; 

- D 0 - I - 0x0282CF 0A:82BF: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0282D0 0A:82C0: 27        .byte con_T + $27   ; 
- D 0 - I - 0x0282D1 0A:82C1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0282D2 0A:82C2: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x0282D3 0A:82C3: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0282D4 0A:82C4: 29        .byte con_T + $29   ; 
- D 0 - I - 0x0282D5 0A:82C5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0282D6 0A:82C6: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x0282D7 0A:82C7: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0282D8 0A:82C8: 25        .byte con_T + $25   ; 
- D 0 - I - 0x0282D9 0A:82C9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0282DA 0A:82CA: 06        .byte con_X + $06   ; 

- D 0 - I - 0x0282DB 0A:82CB: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x0282DC 0A:82CC: 49        .byte con_T + $49   ; 
- D 0 - I - 0x0282DD 0A:82CD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0282DE 0A:82CE: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x0282DF 0A:82CF: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x0282E0 0A:82D0: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x0282E1 0A:82D1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0282E2 0A:82D2: 01        .byte con_X + $01   ; 
@end:



_off006_82D3_0E:
- D 0 - I - 0x0282E3 0A:82D3: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x0282E4 0A:82D4: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x0282E5 0A:82D5: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0282E6 0A:82D6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0282E7 0A:82D7: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x0282E8 0A:82D8: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0282E9 0A:82D9: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x0282EA 0A:82DA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0282EB 0A:82DB: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x0282EC 0A:82DC: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0282ED 0A:82DD: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x0282EE 0A:82DE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0282EF 0A:82DF: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0282F0 0A:82E0: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0282F1 0A:82E1: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x0282F2 0A:82E2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0282F3 0A:82E3: 04        .byte con_X + $04   ; 

- D 0 - I - 0x0282F4 0A:82E4: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0282F5 0A:82E5: 21        .byte con_T + $21   ; 
- D 0 - I - 0x0282F6 0A:82E6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0282F7 0A:82E7: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x0282F8 0A:82E8: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0282F9 0A:82E9: 23        .byte con_T + $23   ; 
- D 0 - I - 0x0282FA 0A:82EA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0282FB 0A:82EB: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0282FC 0A:82EC: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0282FD 0A:82ED: 25        .byte con_T + $25   ; 
- D 0 - I - 0x0282FE 0A:82EE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0282FF 0A:82EF: 04        .byte con_X + $04   ; 

- D 0 - I - 0x028300 0A:82F0: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x028301 0A:82F1: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x028302 0A:82F2: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028303 0A:82F3: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x028304 0A:82F4: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x028305 0A:82F5: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x028306 0A:82F6: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028307 0A:82F7: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x028308 0A:82F8: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x028309 0A:82F9: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x02830A 0A:82FA: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02830B 0A:82FB: 02        .byte con_X + $02   ; 
@end:



_off006_82FC_0F:
- D 0 - I - 0x02830C 0A:82FC: 0B        .byte (@end - * - 1) / 4

- D 0 - I - 0x02830D 0A:82FD: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x02830E 0A:82FE: 01        .byte con_T + $01   ; 
- D 0 - I - 0x02830F 0A:82FF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028310 0A:8300: 06        .byte con_X + $06   ; 

- D 0 - I - 0x028311 0A:8301: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028312 0A:8302: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028313 0A:8303: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028314 0A:8304: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x028315 0A:8305: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028316 0A:8306: 05        .byte con_T + $05   ; 
- D 0 - I - 0x028317 0A:8307: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028318 0A:8308: 07        .byte con_X + $07   ; 

- D 0 - I - 0x028319 0A:8309: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x02831A 0A:830A: 07        .byte con_T + $07   ; 
- D 0 - I - 0x02831B 0A:830B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02831C 0A:830C: 0F        .byte con_X + $0F   ; 

- D 0 - I - 0x02831D 0A:830D: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x02831E 0A:830E: 09        .byte con_T + $09   ; 
- D 0 - I - 0x02831F 0A:830F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028320 0A:8310: 17        .byte con_X + $17   ; 

- D 0 - I - 0x028321 0A:8311: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028322 0A:8312: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x028323 0A:8313: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028324 0A:8314: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x028325 0A:8315: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028326 0A:8316: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x028327 0A:8317: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028328 0A:8318: 07        .byte con_X + $07   ; 

- D 0 - I - 0x028329 0A:8319: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x02832A 0A:831A: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x02832B 0A:831B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02832C 0A:831C: 0F        .byte con_X + $0F   ; 

- D 0 - I - 0x02832D 0A:831D: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x02832E 0A:831E: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x02832F 0A:831F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028330 0A:8320: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x028331 0A:8321: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028332 0A:8322: 11        .byte con_T + $11   ; 
- D 0 - I - 0x028333 0A:8323: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028334 0A:8324: 00        .byte con_X + $00   ; 

- D 0 - I - 0x028335 0A:8325: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028336 0A:8326: 49        .byte con_T + $49   ; 
- D 0 - I - 0x028337 0A:8327: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028338 0A:8328: 0B        .byte con_X + $0B   ; 
@end:



_off006_8329_10:
- D 0 - I - 0x028339 0A:8329: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x02833A 0A:832A: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x02833B 0A:832B: 13        .byte con_T + $13   ; 
- D 0 - I - 0x02833C 0A:832C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02833D 0A:832D: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x02833E 0A:832E: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x02833F 0A:832F: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x028340 0A:8330: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028341 0A:8331: 00        .byte con_X + $00   ; 

- D 0 - I - 0x028342 0A:8332: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028343 0A:8333: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x028344 0A:8334: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028345 0A:8335: 08        .byte con_X + $08   ; 

- D 0 - I - 0x028346 0A:8336: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x028347 0A:8337: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x028348 0A:8338: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028349 0A:8339: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x02834A 0A:833A: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x02834B 0A:833B: 17        .byte con_T + $17   ; 
- D 0 - I - 0x02834C 0A:833C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02834D 0A:833D: 01        .byte con_X + $01   ; 

- D 0 - I - 0x02834E 0A:833E: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x02834F 0A:833F: 19        .byte con_T + $19   ; 
- D 0 - I - 0x028350 0A:8340: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028351 0A:8341: 09        .byte con_X + $09   ; 

- D 0 - I - 0x028352 0A:8342: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x028353 0A:8343: 43        .byte con_T + $43   ; 
- D 0 - I - 0x028354 0A:8344: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028355 0A:8345: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x028356 0A:8346: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x028357 0A:8347: 45        .byte con_T + $45   ; 
- D 0 - I - 0x028358 0A:8348: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028359 0A:8349: 06        .byte con_X + $06   ; 
@end:



_off006_834A_11:
- D 0 - I - 0x02835A 0A:834A: 0B        .byte (@end - * - 1) / 4

- D 0 - I - 0x02835B 0A:834B: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x02835C 0A:834C: 41        .byte con_T + $41   ; 
- D 0 - I - 0x02835D 0A:834D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02835E 0A:834E: 07        .byte con_X + $07   ; 

- D 0 - I - 0x02835F 0A:834F: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028360 0A:8350: 13        .byte con_T + $13   ; 
- D 0 - I - 0x028361 0A:8351: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028362 0A:8352: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x028363 0A:8353: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028364 0A:8354: 15        .byte con_T + $15   ; 
- D 0 - I - 0x028365 0A:8355: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028366 0A:8356: 05        .byte con_X + $05   ; 

- D 0 - I - 0x028367 0A:8357: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028368 0A:8358: 23        .byte con_T + $23   ; 
- D 0 - I - 0x028369 0A:8359: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02836A 0A:835A: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x02836B 0A:835B: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x02836C 0A:835C: 25        .byte con_T + $25   ; 
- D 0 - I - 0x02836D 0A:835D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02836E 0A:835E: 15        .byte con_X + $15   ; 

- D 0 - I - 0x02836F 0A:835F: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028370 0A:8360: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x028371 0A:8361: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028372 0A:8362: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x028373 0A:8363: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028374 0A:8364: 27        .byte con_T + $27   ; 
- D 0 - I - 0x028375 0A:8365: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028376 0A:8366: 07        .byte con_X + $07   ; 

- D 0 - I - 0x028377 0A:8367: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028378 0A:8368: 29        .byte con_T + $29   ; 
- D 0 - I - 0x028379 0A:8369: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02837A 0A:836A: 0F        .byte con_X + $0F   ; 

- D 0 - I - 0x02837B 0A:836B: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x02837C 0A:836C: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x02837D 0A:836D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02837E 0A:836E: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x02837F 0A:836F: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028380 0A:8370: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x028381 0A:8371: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028382 0A:8372: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x028383 0A:8373: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028384 0A:8374: 47        .byte con_T + $47   ; 
- D 0 - I - 0x028385 0A:8375: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028386 0A:8376: 0B        .byte con_X + $0B   ; 
@end:



_off006_8377_12:
- D 0 - I - 0x028387 0A:8377: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x028388 0A:8378: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x028389 0A:8379: 01        .byte con_T + $01   ; 
- D 0 - I - 0x02838A 0A:837A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02838B 0A:837B: 06        .byte con_X + $06   ; 

- D 0 - I - 0x02838C 0A:837C: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x02838D 0A:837D: 03        .byte con_T + $03   ; 
- D 0 - I - 0x02838E 0A:837E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02838F 0A:837F: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x028390 0A:8380: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028391 0A:8381: 13        .byte con_T + $13   ; 
- D 0 - I - 0x028392 0A:8382: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028393 0A:8383: 07        .byte con_X + $07   ; 

- D 0 - I - 0x028394 0A:8384: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028395 0A:8385: 15        .byte con_T + $15   ; 
- D 0 - I - 0x028396 0A:8386: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028397 0A:8387: 0F        .byte con_X + $0F   ; 

- D 0 - I - 0x028398 0A:8388: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028399 0A:8389: 17        .byte con_T + $17   ; 
- D 0 - I - 0x02839A 0A:838A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02839B 0A:838B: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x02839C 0A:838C: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x02839D 0A:838D: 19        .byte con_T + $19   ; 
- D 0 - I - 0x02839E 0A:838E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02839F 0A:838F: 07        .byte con_X + $07   ; 

- D 0 - I - 0x0283A0 0A:8390: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0283A1 0A:8391: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x0283A2 0A:8392: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0283A3 0A:8393: 0F        .byte con_X + $0F   ; 

- D 0 - I - 0x0283A4 0A:8394: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x0283A5 0A:8395: 51        .byte con_T + $51   ; 
- D 0 - I - 0x0283A6 0A:8396: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0283A7 0A:8397: 02        .byte con_X + $02   ; 
@end:



_off006_8398_13:
- D 0 - I - 0x0283A8 0A:8398: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x0283A9 0A:8399: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x0283AA 0A:839A: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x0283AB 0A:839B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0283AC 0A:839C: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0283AD 0A:839D: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0283AE 0A:839E: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x0283AF 0A:839F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0283B0 0A:83A0: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0283B1 0A:83A1: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x0283B2 0A:83A2: 21        .byte con_T + $21   ; 
- D 0 - I - 0x0283B3 0A:83A3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0283B4 0A:83A4: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0283B5 0A:83A5: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0283B6 0A:83A6: 23        .byte con_T + $23   ; 
- D 0 - I - 0x0283B7 0A:83A7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0283B8 0A:83A8: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0283B9 0A:83A9: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x0283BA 0A:83AA: 25        .byte con_T + $25   ; 
- D 0 - I - 0x0283BB 0A:83AB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0283BC 0A:83AC: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0283BD 0A:83AD: D5        .byte con_Y + $D5   ; 
- D 0 - I - 0x0283BE 0A:83AE: 27        .byte con_T + $27   ; 
- D 0 - I - 0x0283BF 0A:83AF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0283C0 0A:83B0: 10        .byte con_X + $10   ; 

- D 0 - I - 0x0283C1 0A:83B1: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x0283C2 0A:83B2: 29        .byte con_T + $29   ; 
- D 0 - I - 0x0283C3 0A:83B3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0283C4 0A:83B4: 18        .byte con_X + $18   ; 

- D 0 - I - 0x0283C5 0A:83B5: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x0283C6 0A:83B6: 51        .byte con_T + $51   ; 
- D 0 - I - 0x0283C7 0A:83B7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0283C8 0A:83B8: 01        .byte con_X + $01   ; 
@end:



_off006_83B9_14:
- D 0 - I - 0x0283C9 0A:83B9: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x0283CA 0A:83BA: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x0283CB 0A:83BB: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x0283CC 0A:83BC: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0283CD 0A:83BD: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0283CE 0A:83BE: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x0283CF 0A:83BF: 13        .byte con_T + $13   ; 
- D 0 - I - 0x0283D0 0A:83C0: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0283D1 0A:83C1: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0283D2 0A:83C2: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x0283D3 0A:83C3: 03        .byte con_T + $03   ; 
- D 0 - I - 0x0283D4 0A:83C4: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0283D5 0A:83C5: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0283D6 0A:83C6: C2        .byte con_Y + $C2   ; 
- D 0 - I - 0x0283D7 0A:83C7: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0283D8 0A:83C8: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0283D9 0A:83C9: 01        .byte con_X + $01   ; 

- D 0 - I - 0x0283DA 0A:83CA: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x0283DB 0A:83CB: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x0283DC 0A:83CC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0283DD 0A:83CD: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x0283DE 0A:83CE: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x0283DF 0A:83CF: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x0283E0 0A:83D0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0283E1 0A:83D1: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0283E2 0A:83D2: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x0283E3 0A:83D3: 31        .byte con_T + $31   ; 
- D 0 - I - 0x0283E4 0A:83D4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0283E5 0A:83D5: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0283E6 0A:83D6: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x0283E7 0A:83D7: 33        .byte con_T + $33   ; 
- D 0 - I - 0x0283E8 0A:83D8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0283E9 0A:83D9: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0283EA 0A:83DA: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x0283EB 0A:83DB: 45        .byte con_T + $45   ; 
- D 0 - I - 0x0283EC 0A:83DC: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0283ED 0A:83DD: FE        .byte con_X + $FE   ; 
@end:



_off006_83DE_15:
- D 0 - I - 0x0283EE 0A:83DE: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x0283EF 0A:83DF: BA        .byte con_Y + $BA   ; 
- D 0 - I - 0x0283F0 0A:83E0: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0283F1 0A:83E1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0283F2 0A:83E2: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x0283F3 0A:83E3: CA        .byte con_Y + $CA   ; 
- D 0 - I - 0x0283F4 0A:83E4: 03        .byte con_T + $03   ; 
- D 0 - I - 0x0283F5 0A:83E5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0283F6 0A:83E6: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x0283F7 0A:83E7: CA        .byte con_Y + $CA   ; 
- D 0 - I - 0x0283F8 0A:83E8: 13        .byte con_T + $13   ; 
- D 0 - I - 0x0283F9 0A:83E9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0283FA 0A:83EA: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0283FB 0A:83EB: CA        .byte con_Y + $CA   ; 
- D 0 - I - 0x0283FC 0A:83EC: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x0283FD 0A:83ED: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0283FE 0A:83EE: 04        .byte con_X + $04   ; 

- D 0 - I - 0x0283FF 0A:83EF: DA        .byte con_Y + $DA   ; 
- D 0 - I - 0x028400 0A:83F0: 33        .byte con_T + $33   ; 
- D 0 - I - 0x028401 0A:83F1: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028402 0A:83F2: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x028403 0A:83F3: DA        .byte con_Y + $DA   ; 
- D 0 - I - 0x028404 0A:83F4: 31        .byte con_T + $31   ; 
- D 0 - I - 0x028405 0A:83F5: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028406 0A:83F6: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x028407 0A:83F7: DA        .byte con_Y + $DA   ; 
- D 0 - I - 0x028408 0A:83F8: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x028409 0A:83F9: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02840A 0A:83FA: 04        .byte con_X + $04   ; 

- D 0 - I - 0x02840B 0A:83FB: D6        .byte con_Y + $D6   ; 
- D 0 - I - 0x02840C 0A:83FC: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x02840D 0A:83FD: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02840E 0A:83FE: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x02840F 0A:83FF: EA        .byte con_Y + $EA   ; 
- D 0 - I - 0x028410 0A:8400: 35        .byte con_T + $35   ; 
- D 0 - I - 0x028411 0A:8401: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028412 0A:8402: FD        .byte con_X + $FD   ; 
@end:



_off006_8403_16:
- - - - - - 0x028413 0A:8403: 07        .byte (@end - * - 1) / 4

- - - - - - 0x028414 0A:8404: C4        .byte con_Y + $C4   ; 
- - - - - - 0x028415 0A:8405: 1D        .byte con_T + $1D   ; 
- - - - - - 0x028416 0A:8406: 00        .byte con_A + $00   ; 
- - - - - - 0x028417 0A:8407: F8        .byte con_X + $F8   ; 

- - - - - - 0x028418 0A:8408: C7        .byte con_Y + $C7   ; 
- - - - - - 0x028419 0A:8409: 1F        .byte con_T + $1F   ; 
- - - - - - 0x02841A 0A:840A: 00        .byte con_A + $00   ; 
- - - - - - 0x02841B 0A:840B: 00        .byte con_X + $00   ; 

- - - - - - 0x02841C 0A:840C: D4        .byte con_Y + $D4   ; 
- - - - - - 0x02841D 0A:840D: 21        .byte con_T + $21   ; 
- - - - - - 0x02841E 0A:840E: 00        .byte con_A + $00   ; 
- - - - - - 0x02841F 0A:840F: F8        .byte con_X + $F8   ; 

- - - - - - 0x028420 0A:8410: D7        .byte con_Y + $D7   ; 
- - - - - - 0x028421 0A:8411: 23        .byte con_T + $23   ; 
- - - - - - 0x028422 0A:8412: 00        .byte con_A + $00   ; 
- - - - - - 0x028423 0A:8413: 00        .byte con_X + $00   ; 

- - - - - - 0x028424 0A:8414: CF        .byte con_Y + $CF   ; 
- - - - - - 0x028425 0A:8415: 25        .byte con_T + $25   ; 
- - - - - - 0x028426 0A:8416: 00        .byte con_A + $00   ; 
- - - - - - 0x028427 0A:8417: 08        .byte con_X + $08   ; 

- - - - - - 0x028428 0A:8418: CB        .byte con_Y + $CB   ; 
- - - - - - 0x028429 0A:8419: 27        .byte con_T + $27   ; 
- - - - - - 0x02842A 0A:841A: 00        .byte con_A + $00   ; 
- - - - - - 0x02842B 0A:841B: 10        .byte con_X + $10   ; 

- - - - - - 0x02842C 0A:841C: C8        .byte con_Y + $C8   ; 
- - - - - - 0x02842D 0A:841D: 29        .byte con_T + $29   ; 
- - - - - - 0x02842E 0A:841E: 00        .byte con_A + $00   ; 
- - - - - - 0x02842F 0A:841F: 18        .byte con_X + $18   ; 
@end:



_off006_8420_17:
- D 0 - I - 0x028430 0A:8420: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x028431 0A:8421: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x028432 0A:8422: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028433 0A:8423: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028434 0A:8424: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x028435 0A:8425: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x028436 0A:8426: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028437 0A:8427: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028438 0A:8428: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x028439 0A:8429: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x02843A 0A:842A: 05        .byte con_T + $05   ; 
- D 0 - I - 0x02843B 0A:842B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02843C 0A:842C: 02        .byte con_X + $02   ; 

- D 0 - I - 0x02843D 0A:842D: CC        .byte con_Y + $CC   ; 
- D 0 - I - 0x02843E 0A:842E: 07        .byte con_T + $07   ; 
- D 0 - I - 0x02843F 0A:842F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028440 0A:8430: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x028441 0A:8431: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x028442 0A:8432: 09        .byte con_T + $09   ; 
- D 0 - I - 0x028443 0A:8433: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028444 0A:8434: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x028445 0A:8435: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x028446 0A:8436: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x028447 0A:8437: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028448 0A:8438: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x028449 0A:8439: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x02844A 0A:843A: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x02844B 0A:843B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02844C 0A:843C: 02        .byte con_X + $02   ; 

- D 0 - I - 0x02844D 0A:843D: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x02844E 0A:843E: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x02844F 0A:843F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028450 0A:8440: F7        .byte con_X + $F7   ; 
@end:



_off006_8441_18:
- D 0 - I - 0x028451 0A:8441: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x028452 0A:8442: C8        .byte con_Y + $C8   ; 
- D 0 - I - 0x028453 0A:8443: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028454 0A:8444: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028455 0A:8445: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x028456 0A:8446: C8        .byte con_Y + $C8   ; 
- D 0 - I - 0x028457 0A:8447: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028458 0A:8448: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028459 0A:8449: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x02845A 0A:844A: C8        .byte con_Y + $C8   ; 
- D 0 - I - 0x02845B 0A:844B: 11        .byte con_T + $11   ; 
- D 0 - I - 0x02845C 0A:844C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02845D 0A:844D: 06        .byte con_X + $06   ; 

- D 0 - I - 0x02845E 0A:844E: BE        .byte con_Y + $BE   ; 
- D 0 - I - 0x02845F 0A:844F: 13        .byte con_T + $13   ; 
- D 0 - I - 0x028460 0A:8450: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028461 0A:8451: 0E        .byte con_X + $0E   ; 

- D 0 - I - 0x028462 0A:8452: D8        .byte con_Y + $D8   ; 
- D 0 - I - 0x028463 0A:8453: 09        .byte con_T + $09   ; 
- D 0 - I - 0x028464 0A:8454: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028465 0A:8455: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x028466 0A:8456: D8        .byte con_Y + $D8   ; 
- D 0 - I - 0x028467 0A:8457: 15        .byte con_T + $15   ; 
- D 0 - I - 0x028468 0A:8458: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028469 0A:8459: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x02846A 0A:845A: D8        .byte con_Y + $D8   ; 
- D 0 - I - 0x02846B 0A:845B: 17        .byte con_T + $17   ; 
- D 0 - I - 0x02846C 0A:845C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02846D 0A:845D: 06        .byte con_X + $06   ; 

- D 0 - I - 0x02846E 0A:845E: D8        .byte con_Y + $D8   ; 
- D 0 - I - 0x02846F 0A:845F: 19        .byte con_T + $19   ; 
- D 0 - I - 0x028470 0A:8460: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028471 0A:8461: 0E        .byte con_X + $0E   ; 

- D 0 - I - 0x028472 0A:8462: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x028473 0A:8463: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x028474 0A:8464: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028475 0A:8465: 16        .byte con_X + $16   ; 

- D 0 - I - 0x028476 0A:8466: E8        .byte con_Y + $E8   ; 
- D 0 - I - 0x028477 0A:8467: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x028478 0A:8468: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028479 0A:8469: FB        .byte con_X + $FB   ; 
@end:



_off006_846A_19:
- D 0 - I - 0x02847A 0A:846A: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x02847B 0A:846B: CC        .byte con_Y + $CC   ; 
- D 0 - I - 0x02847C 0A:846C: 01        .byte con_T + $01   ; 
- D 0 - I - 0x02847D 0A:846D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02847E 0A:846E: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x02847F 0A:846F: DC        .byte con_Y + $DC   ; 
- D 0 - I - 0x028480 0A:8470: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x028481 0A:8471: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028482 0A:8472: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028483 0A:8473: DC        .byte con_Y + $DC   ; 
- D 0 - I - 0x028484 0A:8474: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x028485 0A:8475: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028486 0A:8476: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028487 0A:8477: DC        .byte con_Y + $DC   ; 
- D 0 - I - 0x028488 0A:8478: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x028489 0A:8479: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02848A 0A:847A: 03        .byte con_X + $03   ; 

- D 0 - I - 0x02848B 0A:847B: EC        .byte con_Y + $EC   ; 
- D 0 - I - 0x02848C 0A:847C: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x02848D 0A:847D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02848E 0A:847E: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x02848F 0A:847F: EC        .byte con_Y + $EC   ; 
- D 0 - I - 0x028490 0A:8480: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x028491 0A:8481: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028492 0A:8482: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028493 0A:8483: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028494 0A:8484: 53        .byte con_T + $53   ; 
- D 0 - I - 0x028495 0A:8485: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028496 0A:8486: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028497 0A:8487: FC        .byte con_Y + $FC   ; 
- D 0 - I - 0x028498 0A:8488: 31        .byte con_T + $31   ; 
- D 0 - I - 0x028499 0A:8489: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02849A 0A:848A: F6        .byte con_X + $F6   ; 
@end:



_off006_848B_1A:
- D 0 - I - 0x02849B 0A:848B: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x02849C 0A:848C: DC        .byte con_Y + $DC   ; 
- D 0 - I - 0x02849D 0A:848D: 01        .byte con_T + $01   ; 
- D 0 - I - 0x02849E 0A:848E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02849F 0A:848F: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x0284A0 0A:8490: DC        .byte con_Y + $DC   ; 
- D 0 - I - 0x0284A1 0A:8491: 03        .byte con_T + $03   ; 
- D 0 - I - 0x0284A2 0A:8492: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0284A3 0A:8493: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x0284A4 0A:8494: DC        .byte con_Y + $DC   ; 
- D 0 - I - 0x0284A5 0A:8495: 05        .byte con_T + $05   ; 
- D 0 - I - 0x0284A6 0A:8496: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0284A7 0A:8497: 02        .byte con_X + $02   ; 

- D 0 - I - 0x0284A8 0A:8498: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x0284A9 0A:8499: 07        .byte con_T + $07   ; 
- D 0 - I - 0x0284AA 0A:849A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0284AB 0A:849B: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x0284AC 0A:849C: EC        .byte con_Y + $EC   ; 
- D 0 - I - 0x0284AD 0A:849D: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x0284AE 0A:849E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0284AF 0A:849F: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x0284B0 0A:84A0: EC        .byte con_Y + $EC   ; 
- D 0 - I - 0x0284B1 0A:84A1: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x0284B2 0A:84A2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0284B3 0A:84A3: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x0284B4 0A:84A4: EC        .byte con_Y + $EC   ; 
- D 0 - I - 0x0284B5 0A:84A5: 21        .byte con_T + $21   ; 
- D 0 - I - 0x0284B6 0A:84A6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0284B7 0A:84A7: 02        .byte con_X + $02   ; 

- D 0 - I - 0x0284B8 0A:84A8: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x0284B9 0A:84A9: 23        .byte con_T + $23   ; 
- D 0 - I - 0x0284BA 0A:84AA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0284BB 0A:84AB: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x0284BC 0A:84AC: F6        .byte con_Y + $F6   ; 
- D 0 - I - 0x0284BD 0A:84AD: 25        .byte con_T + $25   ; 
- D 0 - I - 0x0284BE 0A:84AE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0284BF 0A:84AF: 12        .byte con_X + $12   ; 

- D 0 - I - 0x0284C0 0A:84B0: FC        .byte con_Y + $FC   ; 
- D 0 - I - 0x0284C1 0A:84B1: 27        .byte con_T + $27   ; 
- D 0 - I - 0x0284C2 0A:84B2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0284C3 0A:84B3: F4        .byte con_X + $F4   ; 
@end:



_off006_84B4_1B:
- D 0 - I - 0x0284C4 0A:84B4: 0B        .byte (@end - * - 1) / 4

- D 0 - I - 0x0284C5 0A:84B5: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x0284C6 0A:84B6: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0284C7 0A:84B7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0284C8 0A:84B8: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0284C9 0A:84B9: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0284CA 0A:84BA: 03        .byte con_T + $03   ; 
- D 0 - I - 0x0284CB 0A:84BB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0284CC 0A:84BC: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x0284CD 0A:84BD: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0284CE 0A:84BE: 05        .byte con_T + $05   ; 
- D 0 - I - 0x0284CF 0A:84BF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0284D0 0A:84C0: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0284D1 0A:84C1: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0284D2 0A:84C2: 33        .byte con_T + $33   ; 
- D 0 - I - 0x0284D3 0A:84C3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0284D4 0A:84C4: 04        .byte con_X + $04   ; 

- D 0 - I - 0x0284D5 0A:84C5: D6        .byte con_Y + $D6   ; 
- D 0 - I - 0x0284D6 0A:84C6: 35        .byte con_T + $35   ; 
- D 0 - I - 0x0284D7 0A:84C7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0284D8 0A:84C8: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x0284D9 0A:84C9: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0284DA 0A:84CA: 09        .byte con_T + $09   ; 
- D 0 - I - 0x0284DB 0A:84CB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0284DC 0A:84CC: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x0284DD 0A:84CD: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0284DE 0A:84CE: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x0284DF 0A:84CF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0284E0 0A:84D0: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0284E1 0A:84D1: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0284E2 0A:84D2: 37        .byte con_T + $37   ; 
- D 0 - I - 0x0284E3 0A:84D3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0284E4 0A:84D4: 04        .byte con_X + $04   ; 

- D 0 - I - 0x0284E5 0A:84D5: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x0284E6 0A:84D6: 47        .byte con_T + $47   ; 
- D 0 - I - 0x0284E7 0A:84D7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0284E8 0A:84D8: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x0284E9 0A:84D9: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x0284EA 0A:84DA: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x0284EB 0A:84DB: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0284EC 0A:84DC: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0284ED 0A:84DD: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x0284EE 0A:84DE: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x0284EF 0A:84DF: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0284F0 0A:84E0: 08        .byte con_X + $08   ; 
@end:



_off006_84E1_1C:
- D 0 - I - 0x0284F1 0A:84E1: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x0284F2 0A:84E2: CC        .byte con_Y + $CC   ; 
- D 0 - I - 0x0284F3 0A:84E3: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0284F4 0A:84E4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0284F5 0A:84E5: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x0284F6 0A:84E6: DC        .byte con_Y + $DC   ; 
- D 0 - I - 0x0284F7 0A:84E7: 03        .byte con_T + $03   ; 
- D 0 - I - 0x0284F8 0A:84E8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0284F9 0A:84E9: F1        .byte con_X + $F1   ; 

- D 0 - I - 0x0284FA 0A:84EA: DC        .byte con_Y + $DC   ; 
- D 0 - I - 0x0284FB 0A:84EB: 05        .byte con_T + $05   ; 
- D 0 - I - 0x0284FC 0A:84EC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0284FD 0A:84ED: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x0284FE 0A:84EE: DC        .byte con_Y + $DC   ; 
- D 0 - I - 0x0284FF 0A:84EF: 33        .byte con_T + $33   ; 
- D 0 - I - 0x028500 0A:84F0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028501 0A:84F1: 01        .byte con_X + $01   ; 

- D 0 - I - 0x028502 0A:84F2: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028503 0A:84F3: 35        .byte con_T + $35   ; 
- D 0 - I - 0x028504 0A:84F4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028505 0A:84F5: 09        .byte con_X + $09   ; 

- D 0 - I - 0x028506 0A:84F6: EC        .byte con_Y + $EC   ; 
- D 0 - I - 0x028507 0A:84F7: 39        .byte con_T + $39   ; 
- D 0 - I - 0x028508 0A:84F8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028509 0A:84F9: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x02850A 0A:84FA: EC        .byte con_Y + $EC   ; 
- D 0 - I - 0x02850B 0A:84FB: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x02850C 0A:84FC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02850D 0A:84FD: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x02850E 0A:84FE: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x02850F 0A:84FF: 53        .byte con_T + $53   ; 
- D 0 - I - 0x028510 0A:8500: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028511 0A:8501: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x028512 0A:8502: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028513 0A:8503: 53        .byte con_T + $53   ; 
- D 0 - I - 0x028514 0A:8504: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028515 0A:8505: 07        .byte con_X + $07   ; 
@end:



_off006_8506_1D:
- D 0 - I - 0x028516 0A:8506: 07        .byte (@end - * - 1) / 4

- D 0 - I - 0x028517 0A:8507: E6        .byte con_Y + $E6   ; 
- D 0 - I - 0x028518 0A:8508: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028519 0A:8509: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x02851A 0A:850A: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x02851B 0A:850B: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x02851C 0A:850C: 03        .byte con_T + $03   ; 
- D 0 - I - 0x02851D 0A:850D: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x02851E 0A:850E: 05        .byte con_X + $05   ; 

- D 0 - I - 0x02851F 0A:850F: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x028520 0A:8510: 05        .byte con_T + $05   ; 
- D 0 - I - 0x028521 0A:8511: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028522 0A:8512: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x028523 0A:8513: F4        .byte con_Y + $F4   ; 
- D 0 - I - 0x028524 0A:8514: 07        .byte con_T + $07   ; 
- D 0 - I - 0x028525 0A:8515: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028526 0A:8516: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x028527 0A:8517: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x028528 0A:8518: 53        .byte con_T + $53   ; 
- D 0 - I - 0x028529 0A:8519: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x02852A 0A:851A: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x02852B 0A:851B: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x02852C 0A:851C: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x02852D 0A:851D: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x02852E 0A:851E: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x02852F 0A:851F: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x028530 0A:8520: 09        .byte con_T + $09   ; 
- D 0 - I - 0x028531 0A:8521: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028532 0A:8522: 05        .byte con_X + $05   ; 
@end:



_off006_8523_1E:
- D 0 - I - 0x028533 0A:8523: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028534 0A:8524: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x028535 0A:8525: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028536 0A:8526: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028537 0A:8527: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x028538 0A:8528: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x028539 0A:8529: 01        .byte con_T + $01   ; 
- D 0 - I - 0x02853A 0A:852A: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x02853B 0A:852B: 04        .byte con_X + $04   ; 

- D 0 - I - 0x02853C 0A:852C: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02853D 0A:852D: 13        .byte con_T + $13   ; 
- D 0 - I - 0x02853E 0A:852E: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x02853F 0A:852F: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028540 0A:8530: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x028541 0A:8531: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x028542 0A:8532: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028543 0A:8533: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028544 0A:8534: E4        .byte con_Y + $E4   ; 
- D 0 - I - 0x028545 0A:8535: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x028546 0A:8536: 80        .byte con_A + $80   ; 
- D 0 - I - 0x028547 0A:8537: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028548 0A:8538: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x028549 0A:8539: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x02854A 0A:853A: 80        .byte con_A + $80   ; 
- D 0 - I - 0x02854B 0A:853B: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x02854C 0A:853C: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02854D 0A:853D: 31        .byte con_T + $31   ; 
- D 0 - I - 0x02854E 0A:853E: 80        .byte con_A + $80   ; 
- D 0 - I - 0x02854F 0A:853F: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028550 0A:8540: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x028551 0A:8541: 33        .byte con_T + $33   ; 
- D 0 - I - 0x028552 0A:8542: 80        .byte con_A + $80   ; 
- D 0 - I - 0x028553 0A:8543: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x028554 0A:8544: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x028555 0A:8545: 35        .byte con_T + $35   ; 
- D 0 - I - 0x028556 0A:8546: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028557 0A:8547: 02        .byte con_X + $02   ; 
@end:



_off006_8548_1F:
- D 0 - I - 0x028558 0A:8548: 07        .byte (@end - * - 1) / 4

- D 0 - I - 0x028559 0A:8549: E4        .byte con_Y + $E4   ; 
- D 0 - I - 0x02855A 0A:854A: 01        .byte con_T + $01   ; 
- D 0 - I - 0x02855B 0A:854B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02855C 0A:854C: F1        .byte con_X + $F1   ; 

- D 0 - I - 0x02855D 0A:854D: DB        .byte con_Y + $DB   ; 
- D 0 - I - 0x02855E 0A:854E: 03        .byte con_T + $03   ; 
- D 0 - I - 0x02855F 0A:854F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028560 0A:8550: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x028561 0A:8551: DB        .byte con_Y + $DB   ; 
- D 0 - I - 0x028562 0A:8552: 05        .byte con_T + $05   ; 
- D 0 - I - 0x028563 0A:8553: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028564 0A:8554: 01        .byte con_X + $01   ; 

- D 0 - I - 0x028565 0A:8555: D6        .byte con_Y + $D6   ; 
- D 0 - I - 0x028566 0A:8556: 07        .byte con_T + $07   ; 
- D 0 - I - 0x028567 0A:8557: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028568 0A:8558: 09        .byte con_X + $09   ; 

- D 0 - I - 0x028569 0A:8559: EB        .byte con_Y + $EB   ; 
- D 0 - I - 0x02856A 0A:855A: 09        .byte con_T + $09   ; 
- D 0 - I - 0x02856B 0A:855B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02856C 0A:855C: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x02856D 0A:855D: EB        .byte con_Y + $EB   ; 
- D 0 - I - 0x02856E 0A:855E: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x02856F 0A:855F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028570 0A:8560: 01        .byte con_X + $01   ; 

- D 0 - I - 0x028571 0A:8561: EC        .byte con_Y + $EC   ; 
- D 0 - I - 0x028572 0A:8562: 53        .byte con_T + $53   ; 
- D 0 - I - 0x028573 0A:8563: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028574 0A:8564: 09        .byte con_X + $09   ; 
@end:



_off006_8565_20:
- D 0 - I - 0x028575 0A:8565: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028576 0A:8566: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x028577 0A:8567: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028578 0A:8568: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028579 0A:8569: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x02857A 0A:856A: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x02857B 0A:856B: 03        .byte con_T + $03   ; 
- D 0 - I - 0x02857C 0A:856C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02857D 0A:856D: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x02857E 0A:856E: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x02857F 0A:856F: 13        .byte con_T + $13   ; 
- D 0 - I - 0x028580 0A:8570: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028581 0A:8571: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028582 0A:8572: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x028583 0A:8573: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x028584 0A:8574: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028585 0A:8575: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028586 0A:8576: EE        .byte con_Y + $EE   ; 
- D 0 - I - 0x028587 0A:8577: 33        .byte con_T + $33   ; 
- D 0 - I - 0x028588 0A:8578: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028589 0A:8579: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x02858A 0A:857A: EE        .byte con_Y + $EE   ; 
- D 0 - I - 0x02858B 0A:857B: 31        .byte con_T + $31   ; 
- D 0 - I - 0x02858C 0A:857C: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02858D 0A:857D: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x02858E 0A:857E: EE        .byte con_Y + $EE   ; 
- D 0 - I - 0x02858F 0A:857F: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x028590 0A:8580: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028591 0A:8581: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028592 0A:8582: EA        .byte con_Y + $EA   ; 
- D 0 - I - 0x028593 0A:8583: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x028594 0A:8584: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028595 0A:8585: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x028596 0A:8586: FE        .byte con_Y + $FE   ; 
- D 0 - I - 0x028597 0A:8587: 35        .byte con_T + $35   ; 
- D 0 - I - 0x028598 0A:8588: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028599 0A:8589: FC        .byte con_X + $FC   ; 
@end:



_off006_858A_21:
- D 0 - I - 0x02859A 0A:858A: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x02859B 0A:858B: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x02859C 0A:858C: 33        .byte con_T + $33   ; 
- D 0 - I - 0x02859D 0A:858D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02859E 0A:858E: E7        .byte con_X + $E7   ; 

- D 0 - I - 0x02859F 0A:858F: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0285A0 0A:8590: 35        .byte con_T + $35   ; 
- D 0 - I - 0x0285A1 0A:8591: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0285A2 0A:8592: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x0285A3 0A:8593: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0285A4 0A:8594: 37        .byte con_T + $37   ; 
- D 0 - I - 0x0285A5 0A:8595: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0285A6 0A:8596: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x0285A7 0A:8597: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0285A8 0A:8598: 39        .byte con_T + $39   ; 
- D 0 - I - 0x0285A9 0A:8599: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0285AA 0A:859A: E7        .byte con_X + $E7   ; 

- D 0 - I - 0x0285AB 0A:859B: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0285AC 0A:859C: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x0285AD 0A:859D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0285AE 0A:859E: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x0285AF 0A:859F: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0285B0 0A:85A0: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x0285B1 0A:85A1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0285B2 0A:85A2: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x0285B3 0A:85A3: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0285B4 0A:85A4: 3F        .byte con_T + $3F   ; 
- D 0 - I - 0x0285B5 0A:85A5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0285B6 0A:85A6: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x0285B7 0A:85A7: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x0285B8 0A:85A8: 49        .byte con_T + $49   ; 
- D 0 - I - 0x0285B9 0A:85A9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0285BA 0A:85AA: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x0285BB 0A:85AB: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x0285BC 0A:85AC: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x0285BD 0A:85AD: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0285BE 0A:85AE: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x0285BF 0A:85AF: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x0285C0 0A:85B0: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x0285C1 0A:85B1: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0285C2 0A:85B2: 06        .byte con_X + $06   ; 
@end:



_off006_85B3_22:
- D 0 - I - 0x0285C3 0A:85B3: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x0285C4 0A:85B4: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0285C5 0A:85B5: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0285C6 0A:85B6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0285C7 0A:85B7: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x0285C8 0A:85B8: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0285C9 0A:85B9: 03        .byte con_T + $03   ; 
- D 0 - I - 0x0285CA 0A:85BA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0285CB 0A:85BB: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0285CC 0A:85BC: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0285CD 0A:85BD: 05        .byte con_T + $05   ; 
- D 0 - I - 0x0285CE 0A:85BE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0285CF 0A:85BF: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0285D0 0A:85C0: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0285D1 0A:85C1: 07        .byte con_T + $07   ; 
- D 0 - I - 0x0285D2 0A:85C2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0285D3 0A:85C3: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x0285D4 0A:85C4: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0285D5 0A:85C5: 09        .byte con_T + $09   ; 
- D 0 - I - 0x0285D6 0A:85C6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0285D7 0A:85C7: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0285D8 0A:85C8: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0285D9 0A:85C9: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x0285DA 0A:85CA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0285DB 0A:85CB: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0285DC 0A:85CC: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0285DD 0A:85CD: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x0285DE 0A:85CE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0285DF 0A:85CF: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0285E0 0A:85D0: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x0285E1 0A:85D1: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x0285E2 0A:85D2: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0285E3 0A:85D3: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x0285E4 0A:85D4: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x0285E5 0A:85D5: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x0285E6 0A:85D6: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0285E7 0A:85D7: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x0285E8 0A:85D8: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x0285E9 0A:85D9: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x0285EA 0A:85DA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0285EB 0A:85DB: 02        .byte con_X + $02   ; 
@end:



_off006_85DC_23:
- D 0 - I - 0x0285EC 0A:85DC: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x0285ED 0A:85DD: E6        .byte con_Y + $E6   ; 
- D 0 - I - 0x0285EE 0A:85DE: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0285EF 0A:85DF: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0285F0 0A:85E0: 06        .byte con_X + $06   ; 

- D 0 - I - 0x0285F1 0A:85E1: E6        .byte con_Y + $E6   ; 
- D 0 - I - 0x0285F2 0A:85E2: 03        .byte con_T + $03   ; 
- D 0 - I - 0x0285F3 0A:85E3: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0285F4 0A:85E4: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x0285F5 0A:85E5: E6        .byte con_Y + $E6   ; 
- D 0 - I - 0x0285F6 0A:85E6: 05        .byte con_T + $05   ; 
- D 0 - I - 0x0285F7 0A:85E7: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0285F8 0A:85E8: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x0285F9 0A:85E9: D6        .byte con_Y + $D6   ; 
- D 0 - I - 0x0285FA 0A:85EA: 07        .byte con_T + $07   ; 
- D 0 - I - 0x0285FB 0A:85EB: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0285FC 0A:85EC: 06        .byte con_X + $06   ; 

- D 0 - I - 0x0285FD 0A:85ED: D6        .byte con_Y + $D6   ; 
- D 0 - I - 0x0285FE 0A:85EE: 09        .byte con_T + $09   ; 
- D 0 - I - 0x0285FF 0A:85EF: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028600 0A:85F0: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x028601 0A:85F1: D6        .byte con_Y + $D6   ; 
- D 0 - I - 0x028602 0A:85F2: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x028603 0A:85F3: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028604 0A:85F4: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x028605 0A:85F5: D6        .byte con_Y + $D6   ; 
- D 0 - I - 0x028606 0A:85F6: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x028607 0A:85F7: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028608 0A:85F8: EE        .byte con_X + $EE   ; 

- D 0 - I - 0x028609 0A:85F9: C6        .byte con_Y + $C6   ; 
- D 0 - I - 0x02860A 0A:85FA: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x02860B 0A:85FB: 80        .byte con_A + $80   ; 
- D 0 - I - 0x02860C 0A:85FC: 04        .byte con_X + $04   ; 

- D 0 - I - 0x02860D 0A:85FD: C6        .byte con_Y + $C6   ; 
- D 0 - I - 0x02860E 0A:85FE: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x02860F 0A:85FF: 80        .byte con_A + $80   ; 
- D 0 - I - 0x028610 0A:8600: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x028611 0A:8601: C6        .byte con_Y + $C6   ; 
- D 0 - I - 0x028612 0A:8602: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x028613 0A:8603: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028614 0A:8604: F4        .byte con_X + $F4   ; 
@end:



_off006_8605_24:
- D 0 - I - 0x028615 0A:8605: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x028616 0A:8606: DB        .byte con_Y + $DB   ; 
- D 0 - I - 0x028617 0A:8607: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x028618 0A:8608: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028619 0A:8609: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x02861A 0A:860A: DB        .byte con_Y + $DB   ; 
- D 0 - I - 0x02861B 0A:860B: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x02861C 0A:860C: 80        .byte con_A + $80   ; 
- D 0 - I - 0x02861D 0A:860D: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x02861E 0A:860E: DB        .byte con_Y + $DB   ; 
- D 0 - I - 0x02861F 0A:860F: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x028620 0A:8610: 80        .byte con_A + $80   ; 
- D 0 - I - 0x028621 0A:8611: 02        .byte con_X + $02   ; 

- D 0 - I - 0x028622 0A:8612: EB        .byte con_Y + $EB   ; 
- D 0 - I - 0x028623 0A:8613: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x028624 0A:8614: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028625 0A:8615: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x028626 0A:8616: EB        .byte con_Y + $EB   ; 
- D 0 - I - 0x028627 0A:8617: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x028628 0A:8618: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028629 0A:8619: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x02862A 0A:861A: EB        .byte con_Y + $EB   ; 
- D 0 - I - 0x02862B 0A:861B: 31        .byte con_T + $31   ; 
- D 0 - I - 0x02862C 0A:861C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02862D 0A:861D: 04        .byte con_X + $04   ; 

- D 0 - I - 0x02862E 0A:861E: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x02862F 0A:861F: 39        .byte con_T + $39   ; 
- D 0 - I - 0x028630 0A:8620: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028631 0A:8621: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x028632 0A:8622: FB        .byte con_Y + $FB   ; 
- D 0 - I - 0x028633 0A:8623: 33        .byte con_T + $33   ; 
- D 0 - I - 0x028634 0A:8624: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028635 0A:8625: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x028636 0A:8626: FB        .byte con_Y + $FB   ; 
- D 0 - I - 0x028637 0A:8627: 35        .byte con_T + $35   ; 
- D 0 - I - 0x028638 0A:8628: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028639 0A:8629: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x02863A 0A:862A: FB        .byte con_Y + $FB   ; 
- D 0 - I - 0x02863B 0A:862B: 37        .byte con_T + $37   ; 
- D 0 - I - 0x02863C 0A:862C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02863D 0A:862D: 04        .byte con_X + $04   ; 
@end:



_off006_862E_25:
- D 0 - I - 0x02863E 0A:862E: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x02863F 0A:862F: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028640 0A:8630: 21        .byte con_T + $21   ; 
- D 0 - I - 0x028641 0A:8631: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028642 0A:8632: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028643 0A:8633: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028644 0A:8634: 23        .byte con_T + $23   ; 
- D 0 - I - 0x028645 0A:8635: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028646 0A:8636: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028647 0A:8637: F3        .byte con_Y + $F3   ; 
- D 0 - I - 0x028648 0A:8638: 25        .byte con_T + $25   ; 
- D 0 - I - 0x028649 0A:8639: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02864A 0A:863A: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x02864B 0A:863B: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x02864C 0A:863C: 27        .byte con_T + $27   ; 
- D 0 - I - 0x02864D 0A:863D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02864E 0A:863E: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x02864F 0A:863F: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028650 0A:8640: 29        .byte con_T + $29   ; 
- D 0 - I - 0x028651 0A:8641: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028652 0A:8642: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028653 0A:8643: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x028654 0A:8644: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x028655 0A:8645: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028656 0A:8646: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028657 0A:8647: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x028658 0A:8648: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x028659 0A:8649: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02865A 0A:864A: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x02865B 0A:864B: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x02865C 0A:864C: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x02865D 0A:864D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02865E 0A:864E: 13        .byte con_X + $13   ; 

- D 0 - I - 0x02865F 0A:864F: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028660 0A:8650: 31        .byte con_T + $31   ; 
- D 0 - I - 0x028661 0A:8651: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028662 0A:8652: 13        .byte con_X + $13   ; 
@end:



_off006_8653_26:
- D 0 - I - 0x028663 0A:8653: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x028664 0A:8654: EE        .byte con_Y + $EE   ; 
- D 0 - I - 0x028665 0A:8655: 29        .byte con_T + $29   ; 
- D 0 - I - 0x028666 0A:8656: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028667 0A:8657: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x028668 0A:8658: E5        .byte con_Y + $E5   ; 
- D 0 - I - 0x028669 0A:8659: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x02866A 0A:865A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02866B 0A:865B: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x02866C 0A:865C: E5        .byte con_Y + $E5   ; 
- D 0 - I - 0x02866D 0A:865D: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x02866E 0A:865E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02866F 0A:865F: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028670 0A:8660: F5        .byte con_Y + $F5   ; 
- D 0 - I - 0x028671 0A:8661: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x028672 0A:8662: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028673 0A:8663: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028674 0A:8664: F5        .byte con_Y + $F5   ; 
- D 0 - I - 0x028675 0A:8665: 31        .byte con_T + $31   ; 
- D 0 - I - 0x028676 0A:8666: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028677 0A:8667: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028678 0A:8668: ED        .byte con_Y + $ED   ; 
- D 0 - I - 0x028679 0A:8669: 33        .byte con_T + $33   ; 
- D 0 - I - 0x02867A 0A:866A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02867B 0A:866B: 03        .byte con_X + $03   ; 

- D 0 - I - 0x02867C 0A:866C: ED        .byte con_Y + $ED   ; 
- D 0 - I - 0x02867D 0A:866D: 35        .byte con_T + $35   ; 
- D 0 - I - 0x02867E 0A:866E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02867F 0A:866F: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x028680 0A:8670: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x028681 0A:8671: 37        .byte con_T + $37   ; 
- D 0 - I - 0x028682 0A:8672: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028683 0A:8673: 13        .byte con_X + $13   ; 
@end:



_off006_8674_27:
- D 0 - I - 0x028684 0A:8674: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028685 0A:8675: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x028686 0A:8676: 21        .byte con_T + $21   ; 
- D 0 - I - 0x028687 0A:8677: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028688 0A:8678: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x028689 0A:8679: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x02868A 0A:867A: 23        .byte con_T + $23   ; 
- D 0 - I - 0x02868B 0A:867B: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x02868C 0A:867C: 03        .byte con_X + $03   ; 

- D 0 - I - 0x02868D 0A:867D: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x02868E 0A:867E: 25        .byte con_T + $25   ; 
- D 0 - I - 0x02868F 0A:867F: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028690 0A:8680: 13        .byte con_X + $13   ; 

- D 0 - I - 0x028691 0A:8681: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x028692 0A:8682: 27        .byte con_T + $27   ; 
- D 0 - I - 0x028693 0A:8683: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028694 0A:8684: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x028695 0A:8685: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x028696 0A:8686: 29        .byte con_T + $29   ; 
- D 0 - I - 0x028697 0A:8687: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028698 0A:8688: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028699 0A:8689: CB        .byte con_Y + $CB   ; 
- D 0 - I - 0x02869A 0A:868A: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x02869B 0A:868B: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x02869C 0A:868C: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x02869D 0A:868D: CB        .byte con_Y + $CB   ; 
- D 0 - I - 0x02869E 0A:868E: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x02869F 0A:868F: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0286A0 0A:8690: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x0286A1 0A:8691: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x0286A2 0A:8692: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x0286A3 0A:8693: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0286A4 0A:8694: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x0286A5 0A:8695: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x0286A6 0A:8696: 31        .byte con_T + $31   ; 
- D 0 - I - 0x0286A7 0A:8697: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0286A8 0A:8698: EB        .byte con_X + $EB   ; 
@end:



_off006_8699_59:
- D 0 - I - 0x0286A9 0A:8699: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x0286AA 0A:869A: CD        .byte con_Y + $CD   ; 
- D 0 - I - 0x0286AB 0A:869B: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0286AC 0A:869C: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0286AD 0A:869D: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x0286AE 0A:869E: DD        .byte con_Y + $DD   ; 
- D 0 - I - 0x0286AF 0A:869F: 03        .byte con_T + $03   ; 
- D 0 - I - 0x0286B0 0A:86A0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0286B1 0A:86A1: EE        .byte con_X + $EE   ; 

- D 0 - I - 0x0286B2 0A:86A2: DD        .byte con_Y + $DD   ; 
- D 0 - I - 0x0286B3 0A:86A3: 05        .byte con_T + $05   ; 
- D 0 - I - 0x0286B4 0A:86A4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0286B5 0A:86A5: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x0286B6 0A:86A6: ED        .byte con_Y + $ED   ; 
- D 0 - I - 0x0286B7 0A:86A7: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x0286B8 0A:86A8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0286B9 0A:86A9: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x0286BA 0A:86AA: ED        .byte con_Y + $ED   ; 
- D 0 - I - 0x0286BB 0A:86AB: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x0286BC 0A:86AC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0286BD 0A:86AD: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x0286BE 0A:86AE: ED        .byte con_Y + $ED   ; 
- D 0 - I - 0x0286BF 0A:86AF: 19        .byte con_T + $19   ; 
- D 0 - I - 0x0286C0 0A:86B0: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0286C1 0A:86B1: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x0286C2 0A:86B2: FD        .byte con_Y + $FD   ; 
- D 0 - I - 0x0286C3 0A:86B3: 57        .byte con_T + $57   ; 
- D 0 - I - 0x0286C4 0A:86B4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0286C5 0A:86B5: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x0286C6 0A:86B6: F6        .byte con_Y + $F6   ; 
- D 0 - I - 0x0286C7 0A:86B7: 17        .byte con_T + $17   ; 
- D 0 - I - 0x0286C8 0A:86B8: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0286C9 0A:86B9: 03        .byte con_X + $03   ; 
@end:



_off006_86BA_28:
- D 0 - I - 0x0286CA 0A:86BA: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x0286CB 0A:86BB: BA        .byte con_Y + $BA   ; 
- D 0 - I - 0x0286CC 0A:86BC: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0286CD 0A:86BD: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0286CE 0A:86BE: 05        .byte con_X + $05   ; 

- D 0 - I - 0x0286CF 0A:86BF: CA        .byte con_Y + $CA   ; 
- D 0 - I - 0x0286D0 0A:86C0: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x0286D1 0A:86C1: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0286D2 0A:86C2: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0286D3 0A:86C3: CA        .byte con_Y + $CA   ; 
- D 0 - I - 0x0286D4 0A:86C4: 13        .byte con_T + $13   ; 
- D 0 - I - 0x0286D5 0A:86C5: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0286D6 0A:86C6: 04        .byte con_X + $04   ; 

- D 0 - I - 0x0286D7 0A:86C7: CA        .byte con_Y + $CA   ; 
- D 0 - I - 0x0286D8 0A:86C8: 03        .byte con_T + $03   ; 
- D 0 - I - 0x0286D9 0A:86C9: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0286DA 0A:86CA: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x0286DB 0A:86CB: DA        .byte con_Y + $DA   ; 
- D 0 - I - 0x0286DC 0A:86CC: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x0286DD 0A:86CD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0286DE 0A:86CE: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0286DF 0A:86CF: DA        .byte con_Y + $DA   ; 
- D 0 - I - 0x0286E0 0A:86D0: 31        .byte con_T + $31   ; 
- D 0 - I - 0x0286E1 0A:86D1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0286E2 0A:86D2: 04        .byte con_X + $04   ; 

- D 0 - I - 0x0286E3 0A:86D3: DA        .byte con_Y + $DA   ; 
- D 0 - I - 0x0286E4 0A:86D4: 33        .byte con_T + $33   ; 
- D 0 - I - 0x0286E5 0A:86D5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0286E6 0A:86D6: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x0286E7 0A:86D7: EA        .byte con_Y + $EA   ; 
- D 0 - I - 0x0286E8 0A:86D8: 45        .byte con_T + $45   ; 
- D 0 - I - 0x0286E9 0A:86D9: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0286EA 0A:86DA: 02        .byte con_X + $02   ; 
@end:



_off006_86DB_29:
- D 0 - I - 0x0286EB 0A:86DB: 07        .byte (@end - * - 1) / 4

- D 0 - I - 0x0286EC 0A:86DC: C8        .byte con_Y + $C8   ; 
- D 0 - I - 0x0286ED 0A:86DD: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x0286EE 0A:86DE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0286EF 0A:86DF: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x0286F0 0A:86E0: CB        .byte con_Y + $CB   ; 
- D 0 - I - 0x0286F1 0A:86E1: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x0286F2 0A:86E2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0286F3 0A:86E3: 01        .byte con_X + $01   ; 

- D 0 - I - 0x0286F4 0A:86E4: D8        .byte con_Y + $D8   ; 
- D 0 - I - 0x0286F5 0A:86E5: 21        .byte con_T + $21   ; 
- D 0 - I - 0x0286F6 0A:86E6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0286F7 0A:86E7: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x0286F8 0A:86E8: DB        .byte con_Y + $DB   ; 
- D 0 - I - 0x0286F9 0A:86E9: 23        .byte con_T + $23   ; 
- D 0 - I - 0x0286FA 0A:86EA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0286FB 0A:86EB: 01        .byte con_X + $01   ; 

- D 0 - I - 0x0286FC 0A:86EC: D3        .byte con_Y + $D3   ; 
- D 0 - I - 0x0286FD 0A:86ED: 25        .byte con_T + $25   ; 
- D 0 - I - 0x0286FE 0A:86EE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0286FF 0A:86EF: 09        .byte con_X + $09   ; 

- D 0 - I - 0x028700 0A:86F0: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x028701 0A:86F1: 27        .byte con_T + $27   ; 
- D 0 - I - 0x028702 0A:86F2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028703 0A:86F3: 11        .byte con_X + $11   ; 

- D 0 - I - 0x028704 0A:86F4: EB        .byte con_Y + $EB   ; 
- D 0 - I - 0x028705 0A:86F5: 51        .byte con_T + $51   ; 
- D 0 - I - 0x028706 0A:86F6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028707 0A:86F7: 02        .byte con_X + $02   ; 
@end:



_off006_86F8_2A:
- D 0 - I - 0x028708 0A:86F8: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x028709 0A:86F9: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x02870A 0A:86FA: 01        .byte con_T + $01   ; 
- D 0 - I - 0x02870B 0A:86FB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02870C 0A:86FC: 06        .byte con_X + $06   ; 

- D 0 - I - 0x02870D 0A:86FD: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x02870E 0A:86FE: 03        .byte con_T + $03   ; 
- D 0 - I - 0x02870F 0A:86FF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028710 0A:8700: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x028711 0A:8701: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028712 0A:8702: 13        .byte con_T + $13   ; 
- D 0 - I - 0x028713 0A:8703: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028714 0A:8704: 07        .byte con_X + $07   ; 

- D 0 - I - 0x028715 0A:8705: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028716 0A:8706: 15        .byte con_T + $15   ; 
- D 0 - I - 0x028717 0A:8707: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028718 0A:8708: 0F        .byte con_X + $0F   ; 

- D 0 - I - 0x028719 0A:8709: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x02871A 0A:870A: 17        .byte con_T + $17   ; 
- D 0 - I - 0x02871B 0A:870B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02871C 0A:870C: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x02871D 0A:870D: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x02871E 0A:870E: 19        .byte con_T + $19   ; 
- D 0 - I - 0x02871F 0A:870F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028720 0A:8710: 07        .byte con_X + $07   ; 

- D 0 - I - 0x028721 0A:8711: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028722 0A:8712: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x028723 0A:8713: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028724 0A:8714: 0F        .byte con_X + $0F   ; 

- D 0 - I - 0x028725 0A:8715: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028726 0A:8716: 51        .byte con_T + $51   ; 
- D 0 - I - 0x028727 0A:8717: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028728 0A:8718: 02        .byte con_X + $02   ; 
@end:



_off006_8719_2B:
- D 0 - I - 0x028729 0A:8719: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x02872A 0A:871A: EB        .byte con_Y + $EB   ; 
- D 0 - I - 0x02872B 0A:871B: 11        .byte con_T + $11   ; 
- D 0 - I - 0x02872C 0A:871C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02872D 0A:871D: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x02872E 0A:871E: EA        .byte con_Y + $EA   ; 
- D 0 - I - 0x02872F 0A:871F: 13        .byte con_T + $13   ; 
- D 0 - I - 0x028730 0A:8720: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028731 0A:8721: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028732 0A:8722: EA        .byte con_Y + $EA   ; 
- D 0 - I - 0x028733 0A:8723: 15        .byte con_T + $15   ; 
- D 0 - I - 0x028734 0A:8724: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028735 0A:8725: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028736 0A:8726: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028737 0A:8727: 17        .byte con_T + $17   ; 
- D 0 - I - 0x028738 0A:8728: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028739 0A:8729: 03        .byte con_X + $03   ; 

- D 0 - I - 0x02873A 0A:872A: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x02873B 0A:872B: 19        .byte con_T + $19   ; 
- D 0 - I - 0x02873C 0A:872C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02873D 0A:872D: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x02873E 0A:872E: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x02873F 0A:872F: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x028740 0A:8730: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028741 0A:8731: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028742 0A:8732: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028743 0A:8733: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x028744 0A:8734: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028745 0A:8735: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x028746 0A:8736: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x028747 0A:8737: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x028748 0A:8738: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028749 0A:8739: 13        .byte con_X + $13   ; 
@end:



_off006_873A_2C:
- D 0 - I - 0x02874A 0A:873A: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x02874B 0A:873B: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x02874C 0A:873C: 11        .byte con_T + $11   ; 
- D 0 - I - 0x02874D 0A:873D: 80        .byte con_A + $80   ; 
- D 0 - I - 0x02874E 0A:873E: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x02874F 0A:873F: EA        .byte con_Y + $EA   ; 
- D 0 - I - 0x028750 0A:8740: 13        .byte con_T + $13   ; 
- D 0 - I - 0x028751 0A:8741: 80        .byte con_A + $80   ; 
- D 0 - I - 0x028752 0A:8742: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028753 0A:8743: EA        .byte con_Y + $EA   ; 
- D 0 - I - 0x028754 0A:8744: 15        .byte con_T + $15   ; 
- D 0 - I - 0x028755 0A:8745: 80        .byte con_A + $80   ; 
- D 0 - I - 0x028756 0A:8746: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028757 0A:8747: F3        .byte con_Y + $F3   ; 
- D 0 - I - 0x028758 0A:8748: 17        .byte con_T + $17   ; 
- D 0 - I - 0x028759 0A:8749: 80        .byte con_A + $80   ; 
- D 0 - I - 0x02875A 0A:874A: 03        .byte con_X + $03   ; 

- D 0 - I - 0x02875B 0A:874B: F3        .byte con_Y + $F3   ; 
- D 0 - I - 0x02875C 0A:874C: 19        .byte con_T + $19   ; 
- D 0 - I - 0x02875D 0A:874D: 80        .byte con_A + $80   ; 
- D 0 - I - 0x02875E 0A:874E: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x02875F 0A:874F: E3        .byte con_Y + $E3   ; 
- D 0 - I - 0x028760 0A:8750: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x028761 0A:8751: 80        .byte con_A + $80   ; 
- D 0 - I - 0x028762 0A:8752: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028763 0A:8753: E3        .byte con_Y + $E3   ; 
- D 0 - I - 0x028764 0A:8754: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x028765 0A:8755: 80        .byte con_A + $80   ; 
- D 0 - I - 0x028766 0A:8756: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x028767 0A:8757: EB        .byte con_Y + $EB   ; 
- D 0 - I - 0x028768 0A:8758: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x028769 0A:8759: 80        .byte con_A + $80   ; 
- D 0 - I - 0x02876A 0A:875A: 13        .byte con_X + $13   ; 
@end:



_off006_875B_2D:
- D 0 - I - 0x02876B 0A:875B: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x02876C 0A:875C: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x02876D 0A:875D: 01        .byte con_T + $01   ; 
- D 0 - I - 0x02876E 0A:875E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02876F 0A:875F: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x028770 0A:8760: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x028771 0A:8761: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028772 0A:8762: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028773 0A:8763: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028774 0A:8764: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x028775 0A:8765: 05        .byte con_T + $05   ; 
- D 0 - I - 0x028776 0A:8766: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028777 0A:8767: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028778 0A:8768: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028779 0A:8769: 07        .byte con_T + $07   ; 
- D 0 - I - 0x02877A 0A:876A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02877B 0A:876B: 03        .byte con_X + $03   ; 

- D 0 - I - 0x02877C 0A:876C: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x02877D 0A:876D: 09        .byte con_T + $09   ; 
- D 0 - I - 0x02877E 0A:876E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02877F 0A:876F: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x028780 0A:8770: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028781 0A:8771: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x028782 0A:8772: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028783 0A:8773: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028784 0A:8774: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028785 0A:8775: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x028786 0A:8776: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028787 0A:8777: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x028788 0A:8778: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x028789 0A:8779: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x02878A 0A:877A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02878B 0A:877B: 13        .byte con_X + $13   ; 
@end:



_off006_877C_2E:
- D 0 - I - 0x02878C 0A:877C: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x02878D 0A:877D: DB        .byte con_Y + $DB   ; 
- D 0 - I - 0x02878E 0A:877E: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x02878F 0A:877F: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028790 0A:8780: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x028791 0A:8781: DB        .byte con_Y + $DB   ; 
- D 0 - I - 0x028792 0A:8782: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x028793 0A:8783: 80        .byte con_A + $80   ; 
- D 0 - I - 0x028794 0A:8784: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x028795 0A:8785: DB        .byte con_Y + $DB   ; 
- D 0 - I - 0x028796 0A:8786: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x028797 0A:8787: 80        .byte con_A + $80   ; 
- D 0 - I - 0x028798 0A:8788: 02        .byte con_X + $02   ; 

- D 0 - I - 0x028799 0A:8789: EB        .byte con_Y + $EB   ; 
- D 0 - I - 0x02879A 0A:878A: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x02879B 0A:878B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02879C 0A:878C: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x02879D 0A:878D: EB        .byte con_Y + $EB   ; 
- D 0 - I - 0x02879E 0A:878E: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x02879F 0A:878F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287A0 0A:8790: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0287A1 0A:8791: EB        .byte con_Y + $EB   ; 
- D 0 - I - 0x0287A2 0A:8792: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x0287A3 0A:8793: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287A4 0A:8794: 04        .byte con_X + $04   ; 

- D 0 - I - 0x0287A5 0A:8795: FB        .byte con_Y + $FB   ; 
- D 0 - I - 0x0287A6 0A:8796: 33        .byte con_T + $33   ; 
- D 0 - I - 0x0287A7 0A:8797: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287A8 0A:8798: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x0287A9 0A:8799: FB        .byte con_Y + $FB   ; 
- D 0 - I - 0x0287AA 0A:879A: 35        .byte con_T + $35   ; 
- D 0 - I - 0x0287AB 0A:879B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287AC 0A:879C: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0287AD 0A:879D: FB        .byte con_Y + $FB   ; 
- D 0 - I - 0x0287AE 0A:879E: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x0287AF 0A:879F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287B0 0A:87A0: 04        .byte con_X + $04   ; 
@end:



_off006_87A1_2F:
- D 0 - I - 0x0287B1 0A:87A1: 0C        .byte (@end - * - 1) / 4

- D 0 - I - 0x0287B2 0A:87A2: E7        .byte con_Y + $E7   ; 
- D 0 - I - 0x0287B3 0A:87A3: 21        .byte con_T + $21   ; 
- D 0 - I - 0x0287B4 0A:87A4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287B5 0A:87A5: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x0287B6 0A:87A6: EE        .byte con_Y + $EE   ; 
- D 0 - I - 0x0287B7 0A:87A7: 21        .byte con_T + $21   ; 
- D 0 - I - 0x0287B8 0A:87A8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287B9 0A:87A9: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x0287BA 0A:87AA: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x0287BB 0A:87AB: 23        .byte con_T + $23   ; 
- D 0 - I - 0x0287BC 0A:87AC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287BD 0A:87AD: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x0287BE 0A:87AE: D6        .byte con_Y + $D6   ; 
- D 0 - I - 0x0287BF 0A:87AF: 25        .byte con_T + $25   ; 
- D 0 - I - 0x0287C0 0A:87B0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287C1 0A:87B1: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x0287C2 0A:87B2: E6        .byte con_Y + $E6   ; 
- D 0 - I - 0x0287C3 0A:87B3: 27        .byte con_T + $27   ; 
- D 0 - I - 0x0287C4 0A:87B4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287C5 0A:87B5: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x0287C6 0A:87B6: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0287C7 0A:87B7: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x0287C8 0A:87B8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287C9 0A:87B9: 03        .byte con_X + $03   ; 

- D 0 - I - 0x0287CA 0A:87BA: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x0287CB 0A:87BB: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x0287CC 0A:87BC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287CD 0A:87BD: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x0287CE 0A:87BE: C2        .byte con_Y + $C2   ; 
- D 0 - I - 0x0287CF 0A:87BF: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x0287D0 0A:87C0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287D1 0A:87C1: 13        .byte con_X + $13   ; 

- D 0 - I - 0x0287D2 0A:87C2: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x0287D3 0A:87C3: 31        .byte con_T + $31   ; 
- D 0 - I - 0x0287D4 0A:87C4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287D5 0A:87C5: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x0287D6 0A:87C6: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x0287D7 0A:87C7: 33        .byte con_T + $33   ; 
- D 0 - I - 0x0287D8 0A:87C8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287D9 0A:87C9: 13        .byte con_X + $13   ; 

- D 0 - I - 0x0287DA 0A:87CA: C8        .byte con_Y + $C8   ; 
- D 0 - I - 0x0287DB 0A:87CB: 35        .byte con_T + $35   ; 
- D 0 - I - 0x0287DC 0A:87CC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287DD 0A:87CD: 1B        .byte con_X + $1B   ; 

- D 0 - I - 0x0287DE 0A:87CE: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0287DF 0A:87CF: 29        .byte con_T + $29   ; 
- D 0 - I - 0x0287E0 0A:87D0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287E1 0A:87D1: 03        .byte con_X + $03   ; 
@end:



_off006_87D2_30:
- D 0 - I - 0x0287E2 0A:87D2: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x0287E3 0A:87D3: E7        .byte con_Y + $E7   ; 
- D 0 - I - 0x0287E4 0A:87D4: 21        .byte con_T + $21   ; 
- D 0 - I - 0x0287E5 0A:87D5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287E6 0A:87D6: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x0287E7 0A:87D7: EE        .byte con_Y + $EE   ; 
- D 0 - I - 0x0287E8 0A:87D8: 21        .byte con_T + $21   ; 
- D 0 - I - 0x0287E9 0A:87D9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287EA 0A:87DA: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x0287EB 0A:87DB: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x0287EC 0A:87DC: 23        .byte con_T + $23   ; 
- D 0 - I - 0x0287ED 0A:87DD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287EE 0A:87DE: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x0287EF 0A:87DF: D6        .byte con_Y + $D6   ; 
- D 0 - I - 0x0287F0 0A:87E0: 25        .byte con_T + $25   ; 
- D 0 - I - 0x0287F1 0A:87E1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287F2 0A:87E2: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x0287F3 0A:87E3: E6        .byte con_Y + $E6   ; 
- D 0 - I - 0x0287F4 0A:87E4: 27        .byte con_T + $27   ; 
- D 0 - I - 0x0287F5 0A:87E5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287F6 0A:87E6: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x0287F7 0A:87E7: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0287F8 0A:87E8: 29        .byte con_T + $29   ; 
- D 0 - I - 0x0287F9 0A:87E9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287FA 0A:87EA: 03        .byte con_X + $03   ; 

- D 0 - I - 0x0287FB 0A:87EB: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0287FC 0A:87EC: 39        .byte con_T + $39   ; 
- D 0 - I - 0x0287FD 0A:87ED: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0287FE 0A:87EE: 03        .byte con_X + $03   ; 

- D 0 - I - 0x0287FF 0A:87EF: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x028800 0A:87F0: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x028801 0A:87F1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028802 0A:87F2: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x028803 0A:87F3: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028804 0A:87F4: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x028805 0A:87F5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028806 0A:87F6: 13        .byte con_X + $13   ; 

- D 0 - I - 0x028807 0A:87F7: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x028808 0A:87F8: 37        .byte con_T + $37   ; 
- D 0 - I - 0x028809 0A:87F9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02880A 0A:87FA: 0B        .byte con_X + $0B   ; 
@end:



_off006_87FB_31:
- D 0 - I - 0x02880B 0A:87FB: 07        .byte (@end - * - 1) / 4

- D 0 - I - 0x02880C 0A:87FC: D6        .byte con_Y + $D6   ; 
- D 0 - I - 0x02880D 0A:87FD: 01        .byte con_T + $01   ; 
- D 0 - I - 0x02880E 0A:87FE: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x02880F 0A:87FF: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x028810 0A:8800: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x028811 0A:8801: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028812 0A:8802: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028813 0A:8803: 05        .byte con_X + $05   ; 

- D 0 - I - 0x028814 0A:8804: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x028815 0A:8805: 05        .byte con_T + $05   ; 
- D 0 - I - 0x028816 0A:8806: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028817 0A:8807: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x028818 0A:8808: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x028819 0A:8809: 09        .byte con_T + $09   ; 
- D 0 - I - 0x02881A 0A:880A: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x02881B 0A:880B: 05        .byte con_X + $05   ; 

- D 0 - I - 0x02881C 0A:880C: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x02881D 0A:880D: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x02881E 0A:880E: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x02881F 0A:880F: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x028820 0A:8810: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x028821 0A:8811: 53        .byte con_T + $53   ; 
- D 0 - I - 0x028822 0A:8812: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028823 0A:8813: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x028824 0A:8814: E4        .byte con_Y + $E4   ; 
- D 0 - I - 0x028825 0A:8815: 07        .byte con_T + $07   ; 
- D 0 - I - 0x028826 0A:8816: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028827 0A:8817: F5        .byte con_X + $F5   ; 
@end:



_off006_8818_32:
- D 0 - I - 0x028828 0A:8818: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028829 0A:8819: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x02882A 0A:881A: 01        .byte con_T + $01   ; 
- D 0 - I - 0x02882B 0A:881B: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x02882C 0A:881C: 04        .byte con_X + $04   ; 

- D 0 - I - 0x02882D 0A:881D: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02882E 0A:881E: 13        .byte con_T + $13   ; 
- D 0 - I - 0x02882F 0A:881F: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028830 0A:8820: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028831 0A:8821: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x028832 0A:8822: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x028833 0A:8823: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028834 0A:8824: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028835 0A:8825: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x028836 0A:8826: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028837 0A:8827: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028838 0A:8828: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x028839 0A:8829: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02883A 0A:882A: 33        .byte con_T + $33   ; 
- D 0 - I - 0x02883B 0A:882B: 80        .byte con_A + $80   ; 
- D 0 - I - 0x02883C 0A:882C: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x02883D 0A:882D: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02883E 0A:882E: 31        .byte con_T + $31   ; 
- D 0 - I - 0x02883F 0A:882F: 80        .byte con_A + $80   ; 
- D 0 - I - 0x028840 0A:8830: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028841 0A:8831: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x028842 0A:8832: 37        .byte con_T + $37   ; 
- D 0 - I - 0x028843 0A:8833: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028844 0A:8834: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028845 0A:8835: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x028846 0A:8836: 35        .byte con_T + $35   ; 
- D 0 - I - 0x028847 0A:8837: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x028848 0A:8838: 02        .byte con_X + $02   ; 

- D 0 - I - 0x028849 0A:8839: EB        .byte con_Y + $EB   ; 
- D 0 - I - 0x02884A 0A:883A: 39        .byte con_T + $39   ; 
- D 0 - I - 0x02884B 0A:883B: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x02884C 0A:883C: F3        .byte con_X + $F3   ; 
@end:



_off006_883D_33:
- D 0 - I - 0x02884D 0A:883D: 07        .byte (@end - * - 1) / 4

- D 0 - I - 0x02884E 0A:883E: E4        .byte con_Y + $E4   ; 
- D 0 - I - 0x02884F 0A:883F: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028850 0A:8840: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028851 0A:8841: F1        .byte con_X + $F1   ; 

- D 0 - I - 0x028852 0A:8842: DB        .byte con_Y + $DB   ; 
- D 0 - I - 0x028853 0A:8843: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028854 0A:8844: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028855 0A:8845: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x028856 0A:8846: DB        .byte con_Y + $DB   ; 
- D 0 - I - 0x028857 0A:8847: 05        .byte con_T + $05   ; 
- D 0 - I - 0x028858 0A:8848: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028859 0A:8849: 01        .byte con_X + $01   ; 

- D 0 - I - 0x02885A 0A:884A: D6        .byte con_Y + $D6   ; 
- D 0 - I - 0x02885B 0A:884B: 07        .byte con_T + $07   ; 
- D 0 - I - 0x02885C 0A:884C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02885D 0A:884D: 09        .byte con_X + $09   ; 

- D 0 - I - 0x02885E 0A:884E: EB        .byte con_Y + $EB   ; 
- D 0 - I - 0x02885F 0A:884F: 09        .byte con_T + $09   ; 
- D 0 - I - 0x028860 0A:8850: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028861 0A:8851: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x028862 0A:8852: EB        .byte con_Y + $EB   ; 
- D 0 - I - 0x028863 0A:8853: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x028864 0A:8854: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028865 0A:8855: 01        .byte con_X + $01   ; 

- D 0 - I - 0x028866 0A:8856: EC        .byte con_Y + $EC   ; 
- D 0 - I - 0x028867 0A:8857: 53        .byte con_T + $53   ; 
- D 0 - I - 0x028868 0A:8858: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028869 0A:8859: 09        .byte con_X + $09   ; 
@end:



_off006_885A_34:
- D 0 - I - 0x02886A 0A:885A: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x02886B 0A:885B: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x02886C 0A:885C: 01        .byte con_T + $01   ; 
- D 0 - I - 0x02886D 0A:885D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02886E 0A:885E: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x02886F 0A:885F: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x028870 0A:8860: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028871 0A:8861: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028872 0A:8862: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028873 0A:8863: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x028874 0A:8864: 13        .byte con_T + $13   ; 
- D 0 - I - 0x028875 0A:8865: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028876 0A:8866: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028877 0A:8867: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x028878 0A:8868: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x028879 0A:8869: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02887A 0A:886A: 03        .byte con_X + $03   ; 

- D 0 - I - 0x02887B 0A:886B: EE        .byte con_Y + $EE   ; 
- D 0 - I - 0x02887C 0A:886C: 33        .byte con_T + $33   ; 
- D 0 - I - 0x02887D 0A:886D: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02887E 0A:886E: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x02887F 0A:886F: EE        .byte con_Y + $EE   ; 
- D 0 - I - 0x028880 0A:8870: 37        .byte con_T + $37   ; 
- D 0 - I - 0x028881 0A:8871: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028882 0A:8872: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028883 0A:8873: FE        .byte con_Y + $FE   ; 
- D 0 - I - 0x028884 0A:8874: 35        .byte con_T + $35   ; 
- D 0 - I - 0x028885 0A:8875: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028886 0A:8876: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x028887 0A:8877: E3        .byte con_Y + $E3   ; 
- D 0 - I - 0x028888 0A:8878: 39        .byte con_T + $39   ; 
- D 0 - I - 0x028889 0A:8879: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02888A 0A:887A: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x02888B 0A:887B: EE        .byte con_Y + $EE   ; 
- D 0 - I - 0x02888C 0A:887C: 31        .byte con_T + $31   ; 
- D 0 - I - 0x02888D 0A:887D: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02888E 0A:887E: FB        .byte con_X + $FB   ; 
@end:



_off006_887F_35:
- D 0 - I - 0x02888F 0A:887F: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028890 0A:8880: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x028891 0A:8881: 11        .byte con_T + $11   ; 
- D 0 - I - 0x028892 0A:8882: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028893 0A:8883: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028894 0A:8884: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028895 0A:8885: 13        .byte con_T + $13   ; 
- D 0 - I - 0x028896 0A:8886: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028897 0A:8887: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x028898 0A:8888: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028899 0A:8889: 15        .byte con_T + $15   ; 
- D 0 - I - 0x02889A 0A:888A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02889B 0A:888B: 04        .byte con_X + $04   ; 

- D 0 - I - 0x02889C 0A:888C: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x02889D 0A:888D: 17        .byte con_T + $17   ; 
- D 0 - I - 0x02889E 0A:888E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02889F 0A:888F: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x0288A0 0A:8890: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0288A1 0A:8891: 19        .byte con_T + $19   ; 
- D 0 - I - 0x0288A2 0A:8892: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0288A3 0A:8893: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0288A4 0A:8894: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0288A5 0A:8895: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x0288A6 0A:8896: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0288A7 0A:8897: 04        .byte con_X + $04   ; 

- D 0 - I - 0x0288A8 0A:8898: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0288A9 0A:8899: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x0288AA 0A:889A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0288AB 0A:889B: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x0288AC 0A:889C: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x0288AD 0A:889D: 51        .byte con_T + $51   ; 
- D 0 - I - 0x0288AE 0A:889E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0288AF 0A:889F: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x0288B0 0A:88A0: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x0288B1 0A:88A1: 55        .byte con_T + $55   ; 
- D 0 - I - 0x0288B2 0A:88A2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0288B3 0A:88A3: 07        .byte con_X + $07   ; 
@end:



_off006_88A4_36:
- D 0 - I - 0x0288B4 0A:88A4: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x0288B5 0A:88A5: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0288B6 0A:88A6: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x0288B7 0A:88A7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0288B8 0A:88A8: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0288B9 0A:88A9: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0288BA 0A:88AA: 11        .byte con_T + $11   ; 
- D 0 - I - 0x0288BB 0A:88AB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0288BC 0A:88AC: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0288BD 0A:88AD: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0288BE 0A:88AE: 13        .byte con_T + $13   ; 
- D 0 - I - 0x0288BF 0A:88AF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0288C0 0A:88B0: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0288C1 0A:88B1: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0288C2 0A:88B2: 15        .byte con_T + $15   ; 
- D 0 - I - 0x0288C3 0A:88B3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0288C4 0A:88B4: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x0288C5 0A:88B5: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0288C6 0A:88B6: 17        .byte con_T + $17   ; 
- D 0 - I - 0x0288C7 0A:88B7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0288C8 0A:88B8: 01        .byte con_X + $01   ; 

- D 0 - I - 0x0288C9 0A:88B9: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0288CA 0A:88BA: 19        .byte con_T + $19   ; 
- D 0 - I - 0x0288CB 0A:88BB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0288CC 0A:88BC: 09        .byte con_X + $09   ; 

- D 0 - I - 0x0288CD 0A:88BD: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x0288CE 0A:88BE: 55        .byte con_T + $55   ; 
- D 0 - I - 0x0288CF 0A:88BF: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0288D0 0A:88C0: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x0288D1 0A:88C1: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x0288D2 0A:88C2: 55        .byte con_T + $55   ; 
- D 0 - I - 0x0288D3 0A:88C3: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0288D4 0A:88C4: 06        .byte con_X + $06   ; 
@end:



_off006_88C5_37:
- D 0 - I - 0x0288D5 0A:88C5: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x0288D6 0A:88C6: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0288D7 0A:88C7: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x0288D8 0A:88C8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0288D9 0A:88C9: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x0288DA 0A:88CA: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0288DB 0A:88CB: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x0288DC 0A:88CC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0288DD 0A:88CD: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x0288DE 0A:88CE: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0288DF 0A:88CF: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x0288E0 0A:88D0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0288E1 0A:88D1: 06        .byte con_X + $06   ; 

- D 0 - I - 0x0288E2 0A:88D2: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0288E3 0A:88D3: 21        .byte con_T + $21   ; 
- D 0 - I - 0x0288E4 0A:88D4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0288E5 0A:88D5: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x0288E6 0A:88D6: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0288E7 0A:88D7: 23        .byte con_T + $23   ; 
- D 0 - I - 0x0288E8 0A:88D8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0288E9 0A:88D9: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0288EA 0A:88DA: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0288EB 0A:88DB: 25        .byte con_T + $25   ; 
- D 0 - I - 0x0288EC 0A:88DC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0288ED 0A:88DD: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0288EE 0A:88DE: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0288EF 0A:88DF: 27        .byte con_T + $27   ; 
- D 0 - I - 0x0288F0 0A:88E0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0288F1 0A:88E1: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0288F2 0A:88E2: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x0288F3 0A:88E3: 29        .byte con_T + $29   ; 
- D 0 - I - 0x0288F4 0A:88E4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0288F5 0A:88E5: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x0288F6 0A:88E6: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x0288F7 0A:88E7: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x0288F8 0A:88E8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0288F9 0A:88E9: FF        .byte con_X + $FF   ; 
@end:



_off006_88EA_38:
- D 0 - I - 0x0288FA 0A:88EA: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x0288FB 0A:88EB: C2        .byte con_Y + $C2   ; 
- D 0 - I - 0x0288FC 0A:88EC: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0288FD 0A:88ED: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0288FE 0A:88EE: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x0288FF 0A:88EF: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028900 0A:88F0: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028901 0A:88F1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028902 0A:88F2: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x028903 0A:88F3: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028904 0A:88F4: 13        .byte con_T + $13   ; 
- D 0 - I - 0x028905 0A:88F5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028906 0A:88F6: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x028907 0A:88F7: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028908 0A:88F8: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x028909 0A:88F9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02890A 0A:88FA: 06        .byte con_X + $06   ; 

- D 0 - I - 0x02890B 0A:88FB: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x02890C 0A:88FC: 33        .byte con_T + $33   ; 
- D 0 - I - 0x02890D 0A:88FD: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02890E 0A:88FE: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x02890F 0A:88FF: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x028910 0A:8900: 31        .byte con_T + $31   ; 
- D 0 - I - 0x028911 0A:8901: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028912 0A:8902: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x028913 0A:8903: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x028914 0A:8904: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x028915 0A:8905: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028916 0A:8906: 06        .byte con_X + $06   ; 

- D 0 - I - 0x028917 0A:8907: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x028918 0A:8908: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x028919 0A:8909: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02891A 0A:890A: 0E        .byte con_X + $0E   ; 

- D 0 - I - 0x02891B 0A:890B: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x02891C 0A:890C: 45        .byte con_T + $45   ; 
- D 0 - I - 0x02891D 0A:890D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02891E 0A:890E: 00        .byte con_X + $00   ; 
@end:



_off006_890F_39:
- D 0 - I - 0x02891F 0A:890F: 07        .byte (@end - * - 1) / 4

- D 0 - I - 0x028920 0A:8910: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x028921 0A:8911: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028922 0A:8912: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028923 0A:8913: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x028924 0A:8914: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x028925 0A:8915: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028926 0A:8916: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028927 0A:8917: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028928 0A:8918: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x028929 0A:8919: 05        .byte con_T + $05   ; 
- D 0 - I - 0x02892A 0A:891A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02892B 0A:891B: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x02892C 0A:891C: DB        .byte con_Y + $DB   ; 
- D 0 - I - 0x02892D 0A:891D: 07        .byte con_T + $07   ; 
- D 0 - I - 0x02892E 0A:891E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02892F 0A:891F: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028930 0A:8920: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x028931 0A:8921: 09        .byte con_T + $09   ; 
- D 0 - I - 0x028932 0A:8922: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028933 0A:8923: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028934 0A:8924: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x028935 0A:8925: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x028936 0A:8926: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028937 0A:8927: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028938 0A:8928: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028939 0A:8929: 53        .byte con_T + $53   ; 
- D 0 - I - 0x02893A 0A:892A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02893B 0A:892B: 03        .byte con_X + $03   ; 
@end:



_off006_892C_3A:
- D 0 - I - 0x02893C 0A:892C: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x02893D 0A:892D: F4        .byte con_Y + $F4   ; 
- D 0 - I - 0x02893E 0A:892E: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x02893F 0A:892F: 80        .byte con_A + $80   ; 
- D 0 - I - 0x028940 0A:8930: ED        .byte con_X + $ED   ; 

- D 0 - I - 0x028941 0A:8931: F4        .byte con_Y + $F4   ; 
- D 0 - I - 0x028942 0A:8932: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x028943 0A:8933: 80        .byte con_A + $80   ; 
- D 0 - I - 0x028944 0A:8934: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x028945 0A:8935: F4        .byte con_Y + $F4   ; 
- D 0 - I - 0x028946 0A:8936: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x028947 0A:8937: 80        .byte con_A + $80   ; 
- D 0 - I - 0x028948 0A:8938: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x028949 0A:8939: E4        .byte con_Y + $E4   ; 
- D 0 - I - 0x02894A 0A:893A: 21        .byte con_T + $21   ; 
- D 0 - I - 0x02894B 0A:893B: 80        .byte con_A + $80   ; 
- D 0 - I - 0x02894C 0A:893C: E7        .byte con_X + $E7   ; 

- D 0 - I - 0x02894D 0A:893D: E4        .byte con_Y + $E4   ; 
- D 0 - I - 0x02894E 0A:893E: 31        .byte con_T + $31   ; 
- D 0 - I - 0x02894F 0A:893F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028950 0A:8940: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x028951 0A:8941: E4        .byte con_Y + $E4   ; 
- D 0 - I - 0x028952 0A:8942: 33        .byte con_T + $33   ; 
- D 0 - I - 0x028953 0A:8943: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028954 0A:8944: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x028955 0A:8945: E4        .byte con_Y + $E4   ; 
- D 0 - I - 0x028956 0A:8946: 35        .byte con_T + $35   ; 
- D 0 - I - 0x028957 0A:8947: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028958 0A:8948: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x028959 0A:8949: D4        .byte con_Y + $D4   ; 
- D 0 - I - 0x02895A 0A:894A: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x02895B 0A:894B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02895C 0A:894C: E7        .byte con_X + $E7   ; 

- D 0 - I - 0x02895D 0A:894D: D4        .byte con_Y + $D4   ; 
- D 0 - I - 0x02895E 0A:894E: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x02895F 0A:894F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028960 0A:8950: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x028961 0A:8951: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x028962 0A:8952: 37        .byte con_T + $37   ; 
- D 0 - I - 0x028963 0A:8953: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028964 0A:8954: 07        .byte con_X + $07   ; 
@end:



_off006_8955_3B:
- D 0 - I - 0x028965 0A:8955: 01        .byte (@end - * - 1) / 4

- D 0 - I - 0x028966 0A:8956: DA        .byte con_Y + $DA   ; 
- D 0 - I - 0x028967 0A:8957: 59        .byte con_T + $59   ; 
- D 0 - I - 0x028968 0A:8958: 03        .byte con_A + $03   ; 
- D 0 - I - 0x028969 0A:8959: F5        .byte con_X + $F5   ; 
@end:



_off006_895A_3C:
- D 0 - I - 0x02896A 0A:895A: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x02896B 0A:895B: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x02896C 0A:895C: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x02896D 0A:895D: 03        .byte con_A + $03   ; 
- D 0 - I - 0x02896E 0A:895E: 11        .byte con_X + $11   ; 

- D 0 - I - 0x02896F 0A:895F: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x028970 0A:8960: 3F        .byte con_T + $3F   ; 
- D 0 - I - 0x028971 0A:8961: 03        .byte con_A + $03   ; 
- D 0 - I - 0x028972 0A:8962: 19        .byte con_X + $19   ; 
@end:



_off006_8963_3D:
- D 0 - I - 0x028973 0A:8963: 01        .byte (@end - * - 1) / 4

- D 0 - I - 0x028974 0A:8964: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028975 0A:8965: 5B        .byte con_T + $5B   ; 
- D 0 - I - 0x028976 0A:8966: 03        .byte con_A + $03   ; 
- D 0 - I - 0x028977 0A:8967: 1B        .byte con_X + $1B   ; 
@end:



_off006_8968_3E:
- D 0 - I - 0x028978 0A:8968: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x028979 0A:8969: C3        .byte con_Y + $C3   ; 
- D 0 - I - 0x02897A 0A:896A: 5D        .byte con_T + $5D   ; 
- D 0 - I - 0x02897B 0A:896B: 02        .byte con_A + $02   ; 
- D 0 - I - 0x02897C 0A:896C: 12        .byte con_X + $12   ; 

- D 0 - I - 0x02897D 0A:896D: C8        .byte con_Y + $C8   ; 
- D 0 - I - 0x02897E 0A:896E: 5F        .byte con_T + $5F   ; 
- D 0 - I - 0x02897F 0A:896F: 02        .byte con_A + $02   ; 
- D 0 - I - 0x028980 0A:8970: 1A        .byte con_X + $1A   ; 
@end:



_off006_8971_3F:
- D 0 - I - 0x028981 0A:8971: 03        .byte (@end - * - 1) / 4

- D 0 - I - 0x028982 0A:8972: F3        .byte con_Y + $F3   ; 
- D 0 - I - 0x028983 0A:8973: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x028984 0A:8974: 03        .byte con_A + $03   ; 
- D 0 - I - 0x028985 0A:8975: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x028986 0A:8976: FF        .byte con_Y + $FF   ; 
- D 0 - I - 0x028987 0A:8977: 57        .byte con_T + $57   ; 
- D 0 - I - 0x028988 0A:8978: 83        .byte con_A + $83   ; 
- D 0 - I - 0x028989 0A:8979: 06        .byte con_X + $06   ; 

- D 0 - I - 0x02898A 0A:897A: FF        .byte con_Y + $FF   ; 
- D 0 - I - 0x02898B 0A:897B: 57        .byte con_T + $57   ; 
- D 0 - I - 0x02898C 0A:897C: C3        .byte con_A + $C3   ; 
- D 0 - I - 0x02898D 0A:897D: FE        .byte con_X + $FE   ; 
@end:



_off006_897E_40:
- D 0 - I - 0x02898E 0A:897E: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x02898F 0A:897F: EE        .byte con_Y + $EE   ; 
- D 0 - I - 0x028990 0A:8980: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x028991 0A:8981: C3        .byte con_A + $C3   ; 
- D 0 - I - 0x028992 0A:8982: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x028993 0A:8983: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x028994 0A:8984: 57        .byte con_T + $57   ; 
- D 0 - I - 0x028995 0A:8985: C3        .byte con_A + $C3   ; 
- D 0 - I - 0x028996 0A:8986: F9        .byte con_X + $F9   ; 
@end:



_off006_8987_41:
- D 0 - I - 0x028997 0A:8987: 03        .byte (@end - * - 1) / 4

- D 0 - I - 0x028998 0A:8988: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x028999 0A:8989: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x02899A 0A:898A: C3        .byte con_A + $C3   ; 
- D 0 - I - 0x02899B 0A:898B: 08        .byte con_X + $08   ; 

- D 0 - I - 0x02899C 0A:898C: CB        .byte con_Y + $CB   ; 
- D 0 - I - 0x02899D 0A:898D: 57        .byte con_T + $57   ; 
- D 0 - I - 0x02899E 0A:898E: 03        .byte con_A + $03   ; 
- D 0 - I - 0x02899F 0A:898F: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0289A0 0A:8990: CB        .byte con_Y + $CB   ; 
- D 0 - I - 0x0289A1 0A:8991: 57        .byte con_T + $57   ; 
- D 0 - I - 0x0289A2 0A:8992: 43        .byte con_A + $43   ; 
- D 0 - I - 0x0289A3 0A:8993: F8        .byte con_X + $F8   ; 
@end:



_off006_8994_42:
- D 0 - I - 0x0289A4 0A:8994: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x0289A5 0A:8995: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0289A6 0A:8996: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x0289A7 0A:8997: 03        .byte con_A + $03   ; 
- D 0 - I - 0x0289A8 0A:8998: 0E        .byte con_X + $0E   ; 

- D 0 - I - 0x0289A9 0A:8999: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x0289AA 0A:899A: 57        .byte con_T + $57   ; 
- D 0 - I - 0x0289AB 0A:899B: 03        .byte con_A + $03   ; 
- D 0 - I - 0x0289AC 0A:899C: 05        .byte con_X + $05   ; 
@end:



_off006_899D_43:
- D 0 - I - 0x0289AD 0A:899D: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x0289AE 0A:899E: BE        .byte con_Y + $BE   ; 
- D 0 - I - 0x0289AF 0A:899F: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0289B0 0A:89A0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0289B1 0A:89A1: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x0289B2 0A:89A2: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x0289B3 0A:89A3: 07        .byte con_T + $07   ; 
- D 0 - I - 0x0289B4 0A:89A4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0289B5 0A:89A5: EA        .byte con_X + $EA   ; 

- D 0 - I - 0x0289B6 0A:89A6: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x0289B7 0A:89A7: 09        .byte con_T + $09   ; 
- D 0 - I - 0x0289B8 0A:89A8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0289B9 0A:89A9: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x0289BA 0A:89AA: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x0289BB 0A:89AB: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x0289BC 0A:89AC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0289BD 0A:89AD: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x0289BE 0A:89AE: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x0289BF 0A:89AF: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x0289C0 0A:89B0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0289C1 0A:89B1: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x0289C2 0A:89B2: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x0289C3 0A:89B3: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x0289C4 0A:89B4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0289C5 0A:89B5: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x0289C6 0A:89B6: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x0289C7 0A:89B7: 11        .byte con_T + $11   ; 
- D 0 - I - 0x0289C8 0A:89B8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0289C9 0A:89B9: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x0289CA 0A:89BA: EE        .byte con_Y + $EE   ; 
- D 0 - I - 0x0289CB 0A:89BB: 57        .byte con_T + $57   ; 
- D 0 - I - 0x0289CC 0A:89BC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0289CD 0A:89BD: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x0289CE 0A:89BE: EE        .byte con_Y + $EE   ; 
- D 0 - I - 0x0289CF 0A:89BF: 53        .byte con_T + $53   ; 
- D 0 - I - 0x0289D0 0A:89C0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0289D1 0A:89C1: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x0289D2 0A:89C2: EE        .byte con_Y + $EE   ; 
- D 0 - I - 0x0289D3 0A:89C3: 55        .byte con_T + $55   ; 
- D 0 - I - 0x0289D4 0A:89C4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0289D5 0A:89C5: FE        .byte con_X + $FE   ; 
@end:



_off006_89C6_44:
- D 0 - I - 0x0289D6 0A:89C6: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x0289D7 0A:89C7: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0289D8 0A:89C8: 03        .byte con_T + $03   ; 
- D 0 - I - 0x0289D9 0A:89C9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0289DA 0A:89CA: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x0289DB 0A:89CB: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0289DC 0A:89CC: 05        .byte con_T + $05   ; 
- D 0 - I - 0x0289DD 0A:89CD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0289DE 0A:89CE: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x0289DF 0A:89CF: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0289E0 0A:89D0: 07        .byte con_T + $07   ; 
- D 0 - I - 0x0289E1 0A:89D1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0289E2 0A:89D2: 05        .byte con_X + $05   ; 

- D 0 - I - 0x0289E3 0A:89D3: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0289E4 0A:89D4: 17        .byte con_T + $17   ; 
- D 0 - I - 0x0289E5 0A:89D5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0289E6 0A:89D6: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x0289E7 0A:89D7: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0289E8 0A:89D8: 19        .byte con_T + $19   ; 
- D 0 - I - 0x0289E9 0A:89D9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0289EA 0A:89DA: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x0289EB 0A:89DB: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0289EC 0A:89DC: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x0289ED 0A:89DD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0289EE 0A:89DE: 02        .byte con_X + $02   ; 

- D 0 - I - 0x0289EF 0A:89DF: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x0289F0 0A:89E0: 53        .byte con_T + $53   ; 
- D 0 - I - 0x0289F1 0A:89E1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0289F2 0A:89E2: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0289F3 0A:89E3: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x0289F4 0A:89E4: 55        .byte con_T + $55   ; 
- D 0 - I - 0x0289F5 0A:89E5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0289F6 0A:89E6: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0289F7 0A:89E7: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x0289F8 0A:89E8: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0289F9 0A:89E9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0289FA 0A:89EA: ED        .byte con_X + $ED   ; 
@end:



_off006_89EB_45:
- D 0 - I - 0x0289FB 0A:89EB: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x0289FC 0A:89EC: CA        .byte con_Y + $CA   ; 
- D 0 - I - 0x0289FD 0A:89ED: 25        .byte con_T + $25   ; 
- D 0 - I - 0x0289FE 0A:89EE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0289FF 0A:89EF: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x028A00 0A:89F0: CA        .byte con_Y + $CA   ; 
- D 0 - I - 0x028A01 0A:89F1: 27        .byte con_T + $27   ; 
- D 0 - I - 0x028A02 0A:89F2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A03 0A:89F3: 01        .byte con_X + $01   ; 

- D 0 - I - 0x028A04 0A:89F4: CA        .byte con_Y + $CA   ; 
- D 0 - I - 0x028A05 0A:89F5: 29        .byte con_T + $29   ; 
- D 0 - I - 0x028A06 0A:89F6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A07 0A:89F7: 09        .byte con_X + $09   ; 

- D 0 - I - 0x028A08 0A:89F8: DA        .byte con_Y + $DA   ; 
- D 0 - I - 0x028A09 0A:89F9: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x028A0A 0A:89FA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A0B 0A:89FB: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x028A0C 0A:89FC: DA        .byte con_Y + $DA   ; 
- D 0 - I - 0x028A0D 0A:89FD: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x028A0E 0A:89FE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A0F 0A:89FF: 01        .byte con_X + $01   ; 

- D 0 - I - 0x028A10 0A:8A00: DA        .byte con_Y + $DA   ; 
- D 0 - I - 0x028A11 0A:8A01: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x028A12 0A:8A02: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A13 0A:8A03: 09        .byte con_X + $09   ; 

- D 0 - I - 0x028A14 0A:8A04: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028A15 0A:8A05: 31        .byte con_T + $31   ; 
- D 0 - I - 0x028A16 0A:8A06: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A17 0A:8A07: 11        .byte con_X + $11   ; 

- D 0 - I - 0x028A18 0A:8A08: EA        .byte con_Y + $EA   ; 
- D 0 - I - 0x028A19 0A:8A09: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x028A1A 0A:8A0A: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028A1B 0A:8A0B: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028A1C 0A:8A0C: EA        .byte con_Y + $EA   ; 
- D 0 - I - 0x028A1D 0A:8A0D: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x028A1E 0A:8A0E: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028A1F 0A:8A0F: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028A20 0A:8A10: EA        .byte con_Y + $EA   ; 
- D 0 - I - 0x028A21 0A:8A11: 3F        .byte con_T + $3F   ; 
- D 0 - I - 0x028A22 0A:8A12: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A23 0A:8A13: 07        .byte con_X + $07   ; 
@end:



_off006_8A14_46:
- D 0 - I - 0x028A24 0A:8A14: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x028A25 0A:8A15: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x028A26 0A:8A16: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x028A27 0A:8A17: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A28 0A:8A18: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x028A29 0A:8A19: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x028A2A 0A:8A1A: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x028A2B 0A:8A1B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A2C 0A:8A1C: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x028A2D 0A:8A1D: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x028A2E 0A:8A1E: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x028A2F 0A:8A1F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A30 0A:8A20: 05        .byte con_X + $05   ; 

- D 0 - I - 0x028A31 0A:8A21: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x028A32 0A:8A22: 35        .byte con_T + $35   ; 
- D 0 - I - 0x028A33 0A:8A23: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A34 0A:8A24: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x028A35 0A:8A25: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x028A36 0A:8A26: 37        .byte con_T + $37   ; 
- D 0 - I - 0x028A37 0A:8A27: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A38 0A:8A28: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x028A39 0A:8A29: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x028A3A 0A:8A2A: 39        .byte con_T + $39   ; 
- D 0 - I - 0x028A3B 0A:8A2B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A3C 0A:8A2C: 05        .byte con_X + $05   ; 

- D 0 - I - 0x028A3D 0A:8A2D: CB        .byte con_Y + $CB   ; 
- D 0 - I - 0x028A3E 0A:8A2E: 33        .byte con_T + $33   ; 
- D 0 - I - 0x028A3F 0A:8A2F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A40 0A:8A30: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x028A41 0A:8A31: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x028A42 0A:8A32: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x028A43 0A:8A33: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A44 0A:8A34: FB        .byte con_X + $FB   ; 
@end:



_off006_8A35_47:
- D 0 - I - 0x028A45 0A:8A35: 01        .byte (@end - * - 1) / 4

- D 0 - I - 0x028A46 0A:8A36: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x028A47 0A:8A37: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x028A48 0A:8A38: 03        .byte con_A + $03   ; 
- D 0 - I - 0x028A49 0A:8A39: 03        .byte con_X + $03   ; 
@end:



_off006_8A3A_48:
- D 0 - I - 0x028A4A 0A:8A3A: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x028A4B 0A:8A3B: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x028A4C 0A:8A3C: 17        .byte con_T + $17   ; 
- D 0 - I - 0x028A4D 0A:8A3D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A4E 0A:8A3E: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x028A4F 0A:8A3F: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x028A50 0A:8A40: 19        .byte con_T + $19   ; 
- D 0 - I - 0x028A51 0A:8A41: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A52 0A:8A42: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x028A53 0A:8A43: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x028A54 0A:8A44: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x028A55 0A:8A45: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A56 0A:8A46: 06        .byte con_X + $06   ; 

- D 0 - I - 0x028A57 0A:8A47: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028A58 0A:8A48: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x028A59 0A:8A49: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A5A 0A:8A4A: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x028A5B 0A:8A4B: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028A5C 0A:8A4C: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x028A5D 0A:8A4D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A5E 0A:8A4E: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x028A5F 0A:8A4F: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028A60 0A:8A50: 21        .byte con_T + $21   ; 
- D 0 - I - 0x028A61 0A:8A51: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A62 0A:8A52: 06        .byte con_X + $06   ; 

- D 0 - I - 0x028A63 0A:8A53: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x028A64 0A:8A54: 23        .byte con_T + $23   ; 
- D 0 - I - 0x028A65 0A:8A55: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A66 0A:8A56: 0E        .byte con_X + $0E   ; 

- D 0 - I - 0x028A67 0A:8A57: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028A68 0A:8A58: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x028A69 0A:8A59: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A6A 0A:8A5A: FD        .byte con_X + $FD   ; 
@end:



_off006_8A5B_49:
- D 0 - I - 0x028A6B 0A:8A5B: 01        .byte (@end - * - 1) / 4

- D 0 - I - 0x028A6C 0A:8A5C: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028A6D 0A:8A5D: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x028A6E 0A:8A5E: 02        .byte con_A + $02   ; 
- D 0 - I - 0x028A6F 0A:8A5F: EE        .byte con_X + $EE   ; 
@end:



_off006_8A60_4A:
- D 0 - I - 0x028A70 0A:8A60: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x028A71 0A:8A61: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x028A72 0A:8A62: 77        .byte con_T + $77   ; 
- D 0 - I - 0x028A73 0A:8A63: 02        .byte con_A + $02   ; 
- D 0 - I - 0x028A74 0A:8A64: 00        .byte con_X + $00   ; 

- D 0 - I - 0x028A75 0A:8A65: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x028A76 0A:8A66: 75        .byte con_T + $75   ; 
- D 0 - I - 0x028A77 0A:8A67: 02        .byte con_A + $02   ; 
- D 0 - I - 0x028A78 0A:8A68: F8        .byte con_X + $F8   ; 
@end:



_off006_8A69_4B:
- D 0 - I - 0x028A79 0A:8A69: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x028A7A 0A:8A6A: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x028A7B 0A:8A6B: 71        .byte con_T + $71   ; 
- D 0 - I - 0x028A7C 0A:8A6C: 03        .byte con_A + $03   ; 
- D 0 - I - 0x028A7D 0A:8A6D: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x028A7E 0A:8A6E: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x028A7F 0A:8A6F: 73        .byte con_T + $73   ; 
- D 0 - I - 0x028A80 0A:8A70: 03        .byte con_A + $03   ; 
- D 0 - I - 0x028A81 0A:8A71: 00        .byte con_X + $00   ; 
@end:



_off006_8A72_4C:
- D 0 - I - 0x028A82 0A:8A72: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028A83 0A:8A73: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x028A84 0A:8A74: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x028A85 0A:8A75: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A86 0A:8A76: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x028A87 0A:8A77: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x028A88 0A:8A78: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x028A89 0A:8A79: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A8A 0A:8A7A: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x028A8B 0A:8A7B: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x028A8C 0A:8A7C: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x028A8D 0A:8A7D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A8E 0A:8A7E: 05        .byte con_X + $05   ; 

- D 0 - I - 0x028A8F 0A:8A7F: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x028A90 0A:8A80: 35        .byte con_T + $35   ; 
- D 0 - I - 0x028A91 0A:8A81: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A92 0A:8A82: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x028A93 0A:8A83: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x028A94 0A:8A84: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x028A95 0A:8A85: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A96 0A:8A86: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x028A97 0A:8A87: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x028A98 0A:8A88: 3F        .byte con_T + $3F   ; 
- D 0 - I - 0x028A99 0A:8A89: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A9A 0A:8A8A: 05        .byte con_X + $05   ; 

- D 0 - I - 0x028A9B 0A:8A8B: CB        .byte con_Y + $CB   ; 
- D 0 - I - 0x028A9C 0A:8A8C: 33        .byte con_T + $33   ; 
- D 0 - I - 0x028A9D 0A:8A8D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028A9E 0A:8A8E: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x028A9F 0A:8A8F: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x028AA0 0A:8A90: 5D        .byte con_T + $5D   ; 
- D 0 - I - 0x028AA1 0A:8A91: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028AA2 0A:8A92: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028AA3 0A:8A93: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x028AA4 0A:8A94: 5F        .byte con_T + $5F   ; 
- D 0 - I - 0x028AA5 0A:8A95: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028AA6 0A:8A96: 0B        .byte con_X + $0B   ; 
@end:



_off006_8A97_4D:
- D 0 - I - 0x028AA7 0A:8A97: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028AA8 0A:8A98: CA        .byte con_Y + $CA   ; 
- D 0 - I - 0x028AA9 0A:8A99: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x028AAA 0A:8A9A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028AAB 0A:8A9B: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x028AAC 0A:8A9C: CA        .byte con_Y + $CA   ; 
- D 0 - I - 0x028AAD 0A:8A9D: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x028AAE 0A:8A9E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028AAF 0A:8A9F: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x028AB0 0A:8AA0: CA        .byte con_Y + $CA   ; 
- D 0 - I - 0x028AB1 0A:8AA1: 31        .byte con_T + $31   ; 
- D 0 - I - 0x028AB2 0A:8AA2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028AB3 0A:8AA3: 05        .byte con_X + $05   ; 

- D 0 - I - 0x028AB4 0A:8AA4: CC        .byte con_Y + $CC   ; 
- D 0 - I - 0x028AB5 0A:8AA5: 33        .byte con_T + $33   ; 
- D 0 - I - 0x028AB6 0A:8AA6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028AB7 0A:8AA7: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x028AB8 0A:8AA8: DA        .byte con_Y + $DA   ; 
- D 0 - I - 0x028AB9 0A:8AA9: 35        .byte con_T + $35   ; 
- D 0 - I - 0x028ABA 0A:8AAA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028ABB 0A:8AAB: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x028ABC 0A:8AAC: DA        .byte con_Y + $DA   ; 
- D 0 - I - 0x028ABD 0A:8AAD: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x028ABE 0A:8AAE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028ABF 0A:8AAF: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x028AC0 0A:8AB0: DA        .byte con_Y + $DA   ; 
- D 0 - I - 0x028AC1 0A:8AB1: 3F        .byte con_T + $3F   ; 
- D 0 - I - 0x028AC2 0A:8AB2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028AC3 0A:8AB3: 05        .byte con_X + $05   ; 

- D 0 - I - 0x028AC4 0A:8AB4: EA        .byte con_Y + $EA   ; 
- D 0 - I - 0x028AC5 0A:8AB5: 5D        .byte con_T + $5D   ; 
- D 0 - I - 0x028AC6 0A:8AB6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028AC7 0A:8AB7: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028AC8 0A:8AB8: EA        .byte con_Y + $EA   ; 
- D 0 - I - 0x028AC9 0A:8AB9: 5F        .byte con_T + $5F   ; 
- D 0 - I - 0x028ACA 0A:8ABA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028ACB 0A:8ABB: 0B        .byte con_X + $0B   ; 
@end:



_off006_8ABC_4E:
- D 0 - I - 0x028ACC 0A:8ABC: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028ACD 0A:8ABD: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028ACE 0A:8ABE: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028ACF 0A:8ABF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028AD0 0A:8AC0: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028AD1 0A:8AC1: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028AD2 0A:8AC2: 05        .byte con_T + $05   ; 
- D 0 - I - 0x028AD3 0A:8AC3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028AD4 0A:8AC4: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028AD5 0A:8AC5: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028AD6 0A:8AC6: 07        .byte con_T + $07   ; 
- D 0 - I - 0x028AD7 0A:8AC7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028AD8 0A:8AC8: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028AD9 0A:8AC9: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028ADA 0A:8ACA: 09        .byte con_T + $09   ; 
- D 0 - I - 0x028ADB 0A:8ACB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028ADC 0A:8ACC: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x028ADD 0A:8ACD: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028ADE 0A:8ACE: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028ADF 0A:8ACF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028AE0 0A:8AD0: 01        .byte con_X + $01   ; 

- D 0 - I - 0x028AE1 0A:8AD1: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028AE2 0A:8AD2: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x028AE3 0A:8AD3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028AE4 0A:8AD4: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028AE5 0A:8AD5: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028AE6 0A:8AD6: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x028AE7 0A:8AD7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028AE8 0A:8AD8: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028AE9 0A:8AD9: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028AEA 0A:8ADA: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x028AEB 0A:8ADB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028AEC 0A:8ADC: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028AED 0A:8ADD: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028AEE 0A:8ADE: 11        .byte con_T + $11   ; 
- D 0 - I - 0x028AEF 0A:8ADF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028AF0 0A:8AE0: 0B        .byte con_X + $0B   ; 
@end:



_off006_8AE1_4F:
- D 0 - I - 0x028AF1 0A:8AE1: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028AF2 0A:8AE2: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028AF3 0A:8AE3: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028AF4 0A:8AE4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028AF5 0A:8AE5: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028AF6 0A:8AE6: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028AF7 0A:8AE7: 13        .byte con_T + $13   ; 
- D 0 - I - 0x028AF8 0A:8AE8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028AF9 0A:8AE9: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028AFA 0A:8AEA: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028AFB 0A:8AEB: 15        .byte con_T + $15   ; 
- D 0 - I - 0x028AFC 0A:8AEC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028AFD 0A:8AED: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028AFE 0A:8AEE: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028AFF 0A:8AEF: 09        .byte con_T + $09   ; 
- D 0 - I - 0x028B00 0A:8AF0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B01 0A:8AF1: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x028B02 0A:8AF2: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028B03 0A:8AF3: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028B04 0A:8AF4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B05 0A:8AF5: 01        .byte con_X + $01   ; 

- D 0 - I - 0x028B06 0A:8AF6: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028B07 0A:8AF7: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x028B08 0A:8AF8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B09 0A:8AF9: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028B0A 0A:8AFA: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028B0B 0A:8AFB: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x028B0C 0A:8AFC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B0D 0A:8AFD: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028B0E 0A:8AFE: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028B0F 0A:8AFF: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x028B10 0A:8B00: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B11 0A:8B01: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028B12 0A:8B02: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028B13 0A:8B03: 11        .byte con_T + $11   ; 
- D 0 - I - 0x028B14 0A:8B04: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B15 0A:8B05: 0B        .byte con_X + $0B   ; 
@end:



_off006_8B06_50:
- D 0 - I - 0x028B16 0A:8B06: 0B        .byte (@end - * - 1) / 4

- D 0 - I - 0x028B17 0A:8B07: D3        .byte con_Y + $D3   ; 
- D 0 - I - 0x028B18 0A:8B08: 07        .byte con_T + $07   ; 
- D 0 - I - 0x028B19 0A:8B09: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B1A 0A:8B0A: EE        .byte con_X + $EE   ; 

- D 0 - I - 0x028B1B 0A:8B0B: D3        .byte con_Y + $D3   ; 
- D 0 - I - 0x028B1C 0A:8B0C: 09        .byte con_T + $09   ; 
- D 0 - I - 0x028B1D 0A:8B0D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B1E 0A:8B0E: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x028B1F 0A:8B0F: D3        .byte con_Y + $D3   ; 
- D 0 - I - 0x028B20 0A:8B10: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x028B21 0A:8B11: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B22 0A:8B12: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x028B23 0A:8B13: C3        .byte con_Y + $C3   ; 
- D 0 - I - 0x028B24 0A:8B14: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028B25 0A:8B15: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B26 0A:8B16: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028B27 0A:8B17: E3        .byte con_Y + $E3   ; 
- D 0 - I - 0x028B28 0A:8B18: 29        .byte con_T + $29   ; 
- D 0 - I - 0x028B29 0A:8B19: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B2A 0A:8B1A: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028B2B 0A:8B1B: E3        .byte con_Y + $E3   ; 
- D 0 - I - 0x028B2C 0A:8B1C: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x028B2D 0A:8B1D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B2E 0A:8B1E: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028B2F 0A:8B1F: E3        .byte con_Y + $E3   ; 
- D 0 - I - 0x028B30 0A:8B20: 11        .byte con_T + $11   ; 
- D 0 - I - 0x028B31 0A:8B21: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B32 0A:8B22: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028B33 0A:8B23: F3        .byte con_Y + $F3   ; 
- D 0 - I - 0x028B34 0A:8B24: 53        .byte con_T + $53   ; 
- D 0 - I - 0x028B35 0A:8B25: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B36 0A:8B26: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x028B37 0A:8B27: F3        .byte con_Y + $F3   ; 
- D 0 - I - 0x028B38 0A:8B28: 55        .byte con_T + $55   ; 
- D 0 - I - 0x028B39 0A:8B29: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B3A 0A:8B2A: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x028B3B 0A:8B2B: F3        .byte con_Y + $F3   ; 
- D 0 - I - 0x028B3C 0A:8B2C: 53        .byte con_T + $53   ; 
- D 0 - I - 0x028B3D 0A:8B2D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B3E 0A:8B2E: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x028B3F 0A:8B2F: F3        .byte con_Y + $F3   ; 
- D 0 - I - 0x028B40 0A:8B30: 55        .byte con_T + $55   ; 
- D 0 - I - 0x028B41 0A:8B31: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B42 0A:8B32: 02        .byte con_X + $02   ; 
@end:



_off006_8B33_51:
- D 0 - I - 0x028B43 0A:8B33: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x028B44 0A:8B34: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028B45 0A:8B35: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028B46 0A:8B36: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B47 0A:8B37: E9        .byte con_X + $E9   ; 

- D 0 - I - 0x028B48 0A:8B38: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028B49 0A:8B39: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028B4A 0A:8B3A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B4B 0A:8B3B: F1        .byte con_X + $F1   ; 

- D 0 - I - 0x028B4C 0A:8B3C: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028B4D 0A:8B3D: 09        .byte con_T + $09   ; 
- D 0 - I - 0x028B4E 0A:8B3E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B4F 0A:8B3F: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x028B50 0A:8B40: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028B51 0A:8B41: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x028B52 0A:8B42: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B53 0A:8B43: 01        .byte con_X + $01   ; 

- D 0 - I - 0x028B54 0A:8B44: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x028B55 0A:8B45: 13        .byte con_T + $13   ; 
- D 0 - I - 0x028B56 0A:8B46: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B57 0A:8B47: EE        .byte con_X + $EE   ; 

- D 0 - I - 0x028B58 0A:8B48: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x028B59 0A:8B49: 15        .byte con_T + $15   ; 
- D 0 - I - 0x028B5A 0A:8B4A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B5B 0A:8B4B: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x028B5C 0A:8B4C: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x028B5D 0A:8B4D: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x028B5E 0A:8B4E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B5F 0A:8B4F: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x028B60 0A:8B50: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x028B61 0A:8B51: 43        .byte con_T + $43   ; 
- D 0 - I - 0x028B62 0A:8B52: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028B63 0A:8B53: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x028B64 0A:8B54: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x028B65 0A:8B55: 43        .byte con_T + $43   ; 
- D 0 - I - 0x028B66 0A:8B56: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028B67 0A:8B57: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x028B68 0A:8B58: DC        .byte con_Y + $DC   ; 
- D 0 - I - 0x028B69 0A:8B59: 11        .byte con_T + $11   ; 
- D 0 - I - 0x028B6A 0A:8B5A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B6B 0A:8B5B: 09        .byte con_X + $09   ; 
@end:



_off006_8B5C_52:
- D 0 - I - 0x028B6C 0A:8B5C: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x028B6D 0A:8B5D: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028B6E 0A:8B5E: 33        .byte con_T + $33   ; 
- D 0 - I - 0x028B6F 0A:8B5F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B70 0A:8B60: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x028B71 0A:8B61: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028B72 0A:8B62: 35        .byte con_T + $35   ; 
- D 0 - I - 0x028B73 0A:8B63: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B74 0A:8B64: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x028B75 0A:8B65: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028B76 0A:8B66: 37        .byte con_T + $37   ; 
- D 0 - I - 0x028B77 0A:8B67: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B78 0A:8B68: 00        .byte con_X + $00   ; 

- D 0 - I - 0x028B79 0A:8B69: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x028B7A 0A:8B6A: 43        .byte con_T + $43   ; 
- D 0 - I - 0x028B7B 0A:8B6B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B7C 0A:8B6C: ED        .byte con_X + $ED   ; 

- D 0 - I - 0x028B7D 0A:8B6D: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x028B7E 0A:8B6E: 39        .byte con_T + $39   ; 
- D 0 - I - 0x028B7F 0A:8B6F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B80 0A:8B70: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028B81 0A:8B71: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x028B82 0A:8B72: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x028B83 0A:8B73: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B84 0A:8B74: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028B85 0A:8B75: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x028B86 0A:8B76: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x028B87 0A:8B77: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B88 0A:8B78: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028B89 0A:8B79: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x028B8A 0A:8B7A: 45        .byte con_T + $45   ; 
- D 0 - I - 0x028B8B 0A:8B7B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028B8C 0A:8B7C: 02        .byte con_X + $02   ; 
@end:



_off006_8B7D_53:
- D 0 - I - 0x028B8D 0A:8B7D: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x028B8E 0A:8B7E: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028B8F 0A:8B7F: 37        .byte con_T + $37   ; 
- D 0 - I - 0x028B90 0A:8B80: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028B91 0A:8B81: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x028B92 0A:8B82: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028B93 0A:8B83: 35        .byte con_T + $35   ; 
- D 0 - I - 0x028B94 0A:8B84: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028B95 0A:8B85: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x028B96 0A:8B86: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028B97 0A:8B87: 33        .byte con_T + $33   ; 
- D 0 - I - 0x028B98 0A:8B88: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028B99 0A:8B89: 07        .byte con_X + $07   ; 

- D 0 - I - 0x028B9A 0A:8B8A: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x028B9B 0A:8B8B: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x028B9C 0A:8B8C: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028B9D 0A:8B8D: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x028B9E 0A:8B8E: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x028B9F 0A:8B8F: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x028BA0 0A:8B90: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028BA1 0A:8B91: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x028BA2 0A:8B92: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x028BA3 0A:8B93: 45        .byte con_T + $45   ; 
- D 0 - I - 0x028BA4 0A:8B94: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028BA5 0A:8B95: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x028BA6 0A:8B96: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x028BA7 0A:8B97: 43        .byte con_T + $43   ; 
- D 0 - I - 0x028BA8 0A:8B98: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028BA9 0A:8B99: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x028BAA 0A:8B9A: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x028BAB 0A:8B9B: 39        .byte con_T + $39   ; 
- D 0 - I - 0x028BAC 0A:8B9C: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028BAD 0A:8B9D: 04        .byte con_X + $04   ; 
@end:



_off006_8B9E_54:
- D 0 - I - 0x028BAE 0A:8B9E: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x028BAF 0A:8B9F: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028BB0 0A:8BA0: 13        .byte con_T + $13   ; 
- D 0 - I - 0x028BB1 0A:8BA1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028BB2 0A:8BA2: E7        .byte con_X + $E7   ; 

- D 0 - I - 0x028BB3 0A:8BA3: D3        .byte con_Y + $D3   ; 
- D 0 - I - 0x028BB4 0A:8BA4: 15        .byte con_T + $15   ; 
- D 0 - I - 0x028BB5 0A:8BA5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028BB6 0A:8BA6: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x028BB7 0A:8BA7: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x028BB8 0A:8BA8: 17        .byte con_T + $17   ; 
- D 0 - I - 0x028BB9 0A:8BA9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028BBA 0A:8BAA: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x028BBB 0A:8BAB: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x028BBC 0A:8BAC: 19        .byte con_T + $19   ; 
- D 0 - I - 0x028BBD 0A:8BAD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028BBE 0A:8BAE: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x028BBF 0A:8BAF: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028BC0 0A:8BB0: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x028BC1 0A:8BB1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028BC2 0A:8BB2: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x028BC3 0A:8BB3: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028BC4 0A:8BB4: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x028BC5 0A:8BB5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028BC6 0A:8BB6: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x028BC7 0A:8BB7: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028BC8 0A:8BB8: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x028BC9 0A:8BB9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028BCA 0A:8BBA: 07        .byte con_X + $07   ; 

- D 0 - I - 0x028BCB 0A:8BBB: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028BCC 0A:8BBC: 21        .byte con_T + $21   ; 
- D 0 - I - 0x028BCD 0A:8BBD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028BCE 0A:8BBE: 07        .byte con_X + $07   ; 

- D 0 - I - 0x028BCF 0A:8BBF: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x028BD0 0A:8BC0: 23        .byte con_T + $23   ; 
- D 0 - I - 0x028BD1 0A:8BC1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028BD2 0A:8BC2: 0F        .byte con_X + $0F   ; 

- D 0 - I - 0x028BD3 0A:8BC3: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x028BD4 0A:8BC4: 25        .byte con_T + $25   ; 
- D 0 - I - 0x028BD5 0A:8BC5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028BD6 0A:8BC6: 0F        .byte con_X + $0F   ; 
@end:



_off006_8BC7_55:
- D 0 - I - 0x028BD7 0A:8BC7: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028BD8 0A:8BC8: CB        .byte con_Y + $CB   ; 
- D 0 - I - 0x028BD9 0A:8BC9: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028BDA 0A:8BCA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028BDB 0A:8BCB: 10        .byte con_X + $10   ; 

- D 0 - I - 0x028BDC 0A:8BCC: CB        .byte con_Y + $CB   ; 
- D 0 - I - 0x028BDD 0A:8BCD: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028BDE 0A:8BCE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028BDF 0A:8BCF: 08        .byte con_X + $08   ; 

- D 0 - I - 0x028BE0 0A:8BD0: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028BE1 0A:8BD1: 05        .byte con_T + $05   ; 
- D 0 - I - 0x028BE2 0A:8BD2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028BE3 0A:8BD3: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x028BE4 0A:8BD4: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028BE5 0A:8BD5: 07        .byte con_T + $07   ; 
- D 0 - I - 0x028BE6 0A:8BD6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028BE7 0A:8BD7: 00        .byte con_X + $00   ; 

- D 0 - I - 0x028BE8 0A:8BD8: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028BE9 0A:8BD9: 09        .byte con_T + $09   ; 
- D 0 - I - 0x028BEA 0A:8BDA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028BEB 0A:8BDB: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028BEC 0A:8BDC: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028BED 0A:8BDD: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x028BEE 0A:8BDE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028BEF 0A:8BDF: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028BF0 0A:8BE0: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028BF1 0A:8BE1: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x028BF2 0A:8BE2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028BF3 0A:8BE3: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028BF4 0A:8BE4: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028BF5 0A:8BE5: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x028BF6 0A:8BE6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028BF7 0A:8BE7: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x028BF8 0A:8BE8: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028BF9 0A:8BE9: 11        .byte con_T + $11   ; 
- D 0 - I - 0x028BFA 0A:8BEA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028BFB 0A:8BEB: FD        .byte con_X + $FD   ; 
@end:



_off006_8BEC_56:
- D 0 - I - 0x028BFC 0A:8BEC: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028BFD 0A:8BED: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028BFE 0A:8BEE: 29        .byte con_T + $29   ; 
- D 0 - I - 0x028BFF 0A:8BEF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C00 0A:8BF0: E5        .byte con_X + $E5   ; 

- D 0 - I - 0x028C01 0A:8BF1: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028C02 0A:8BF2: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x028C03 0A:8BF3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C04 0A:8BF4: ED        .byte con_X + $ED   ; 

- D 0 - I - 0x028C05 0A:8BF5: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028C06 0A:8BF6: 31        .byte con_T + $31   ; 
- D 0 - I - 0x028C07 0A:8BF7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C08 0A:8BF8: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x028C09 0A:8BF9: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028C0A 0A:8BFA: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x028C0B 0A:8BFB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C0C 0A:8BFC: E3        .byte con_X + $E3   ; 

- D 0 - I - 0x028C0D 0A:8BFD: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028C0E 0A:8BFE: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x028C0F 0A:8BFF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C10 0A:8C00: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x028C11 0A:8C01: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028C12 0A:8C02: 33        .byte con_T + $33   ; 
- D 0 - I - 0x028C13 0A:8C03: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C14 0A:8C04: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028C15 0A:8C05: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028C16 0A:8C06: 35        .byte con_T + $35   ; 
- D 0 - I - 0x028C17 0A:8C07: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C18 0A:8C08: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028C19 0A:8C09: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028C1A 0A:8C0A: 5B        .byte con_T + $5B   ; 
- D 0 - I - 0x028C1B 0A:8C0B: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028C1C 0A:8C0C: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x028C1D 0A:8C0D: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028C1E 0A:8C0E: 59        .byte con_T + $59   ; 
- D 0 - I - 0x028C1F 0A:8C0F: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028C20 0A:8C10: FD        .byte con_X + $FD   ; 
@end:



_off006_8C11_57:
- D 0 - I - 0x028C21 0A:8C11: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x028C22 0A:8C12: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028C23 0A:8C13: 29        .byte con_T + $29   ; 
- D 0 - I - 0x028C24 0A:8C14: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C25 0A:8C15: ED        .byte con_X + $ED   ; 

- D 0 - I - 0x028C26 0A:8C16: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028C27 0A:8C17: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x028C28 0A:8C18: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C29 0A:8C19: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x028C2A 0A:8C1A: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x028C2B 0A:8C1B: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x028C2C 0A:8C1C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C2D 0A:8C1D: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x028C2E 0A:8C1E: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x028C2F 0A:8C1F: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x028C30 0A:8C20: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C31 0A:8C21: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028C32 0A:8C22: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028C33 0A:8C23: 37        .byte con_T + $37   ; 
- D 0 - I - 0x028C34 0A:8C24: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C35 0A:8C25: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x028C36 0A:8C26: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028C37 0A:8C27: 39        .byte con_T + $39   ; 
- D 0 - I - 0x028C38 0A:8C28: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C39 0A:8C29: 05        .byte con_X + $05   ; 

- D 0 - I - 0x028C3A 0A:8C2A: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x028C3B 0A:8C2B: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x028C3C 0A:8C2C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C3D 0A:8C2D: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x028C3E 0A:8C2E: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x028C3F 0A:8C2F: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x028C40 0A:8C30: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C41 0A:8C31: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028C42 0A:8C32: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x028C43 0A:8C33: 3F        .byte con_T + $3F   ; 
- D 0 - I - 0x028C44 0A:8C34: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C45 0A:8C35: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028C46 0A:8C36: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x028C47 0A:8C37: 43        .byte con_T + $43   ; 
- D 0 - I - 0x028C48 0A:8C38: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C49 0A:8C39: FE        .byte con_X + $FE   ; 
@end:



_off006_8C3A_58:
- D 0 - I - 0x028C4A 0A:8C3A: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028C4B 0A:8C3B: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x028C4C 0A:8C3C: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028C4D 0A:8C3D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C4E 0A:8C3E: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x028C4F 0A:8C3F: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x028C50 0A:8C40: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028C51 0A:8C41: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C52 0A:8C42: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028C53 0A:8C43: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x028C54 0A:8C44: 05        .byte con_T + $05   ; 
- D 0 - I - 0x028C55 0A:8C45: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C56 0A:8C46: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028C57 0A:8C47: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028C58 0A:8C48: 07        .byte con_T + $07   ; 
- D 0 - I - 0x028C59 0A:8C49: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C5A 0A:8C4A: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028C5B 0A:8C4B: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028C5C 0A:8C4C: 09        .byte con_T + $09   ; 
- D 0 - I - 0x028C5D 0A:8C4D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C5E 0A:8C4E: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028C5F 0A:8C4F: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028C60 0A:8C50: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x028C61 0A:8C51: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C62 0A:8C52: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028C63 0A:8C53: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028C64 0A:8C54: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x028C65 0A:8C55: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C66 0A:8C56: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028C67 0A:8C57: CC        .byte con_Y + $CC   ; 
- D 0 - I - 0x028C68 0A:8C58: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x028C69 0A:8C59: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C6A 0A:8C5A: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x028C6B 0A:8C5B: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028C6C 0A:8C5C: 49        .byte con_T + $49   ; 
- D 0 - I - 0x028C6D 0A:8C5D: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028C6E 0A:8C5E: FE        .byte con_X + $FE   ; 
@end:



_off006_8C5F_5A:
- D 0 - I - 0x028C6F 0A:8C5F: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x028C70 0A:8C60: ED        .byte con_Y + $ED   ; 
- D 0 - I - 0x028C71 0A:8C61: 31        .byte con_T + $31   ; 
- D 0 - I - 0x028C72 0A:8C62: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C73 0A:8C63: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x028C74 0A:8C64: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x028C75 0A:8C65: 33        .byte con_T + $33   ; 
- D 0 - I - 0x028C76 0A:8C66: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C77 0A:8C67: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028C78 0A:8C68: EB        .byte con_Y + $EB   ; 
- D 0 - I - 0x028C79 0A:8C69: 35        .byte con_T + $35   ; 
- D 0 - I - 0x028C7A 0A:8C6A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C7B 0A:8C6B: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028C7C 0A:8C6C: F9        .byte con_Y + $F9   ; 
- D 0 - I - 0x028C7D 0A:8C6D: 37        .byte con_T + $37   ; 
- D 0 - I - 0x028C7E 0A:8C6E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C7F 0A:8C6F: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028C80 0A:8C70: FB        .byte con_Y + $FB   ; 
- D 0 - I - 0x028C81 0A:8C71: 39        .byte con_T + $39   ; 
- D 0 - I - 0x028C82 0A:8C72: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C83 0A:8C73: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028C84 0A:8C74: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028C85 0A:8C75: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x028C86 0A:8C76: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C87 0A:8C77: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028C88 0A:8C78: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028C89 0A:8C79: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x028C8A 0A:8C7A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C8B 0A:8C7B: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x028C8C 0A:8C7C: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028C8D 0A:8C7D: 3F        .byte con_T + $3F   ; 
- D 0 - I - 0x028C8E 0A:8C7E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C8F 0A:8C7F: 13        .byte con_X + $13   ; 
@end:



_off006_8C80_5B:
- D 0 - I - 0x028C90 0A:8C80: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028C91 0A:8C81: CD        .byte con_Y + $CD   ; 
- D 0 - I - 0x028C92 0A:8C82: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028C93 0A:8C83: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C94 0A:8C84: 05        .byte con_X + $05   ; 

- D 0 - I - 0x028C95 0A:8C85: DD        .byte con_Y + $DD   ; 
- D 0 - I - 0x028C96 0A:8C86: 13        .byte con_T + $13   ; 
- D 0 - I - 0x028C97 0A:8C87: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C98 0A:8C88: 01        .byte con_X + $01   ; 

- D 0 - I - 0x028C99 0A:8C89: DD        .byte con_Y + $DD   ; 
- D 0 - I - 0x028C9A 0A:8C8A: 15        .byte con_T + $15   ; 
- D 0 - I - 0x028C9B 0A:8C8B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028C9C 0A:8C8C: 09        .byte con_X + $09   ; 

- D 0 - I - 0x028C9D 0A:8C8D: DD        .byte con_Y + $DD   ; 
- D 0 - I - 0x028C9E 0A:8C8E: 07        .byte con_T + $07   ; 
- D 0 - I - 0x028C9F 0A:8C8F: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028CA0 0A:8C90: 11        .byte con_X + $11   ; 

- D 0 - I - 0x028CA1 0A:8C91: ED        .byte con_Y + $ED   ; 
- D 0 - I - 0x028CA2 0A:8C92: 19        .byte con_T + $19   ; 
- D 0 - I - 0x028CA3 0A:8C93: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028CA4 0A:8C94: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x028CA5 0A:8C95: ED        .byte con_Y + $ED   ; 
- D 0 - I - 0x028CA6 0A:8C96: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x028CA7 0A:8C97: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028CA8 0A:8C98: 04        .byte con_X + $04   ; 

- D 0 - I - 0x028CA9 0A:8C99: ED        .byte con_Y + $ED   ; 
- D 0 - I - 0x028CAA 0A:8C9A: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x028CAB 0A:8C9B: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028CAC 0A:8C9C: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x028CAD 0A:8C9D: F6        .byte con_Y + $F6   ; 
- D 0 - I - 0x028CAE 0A:8C9E: 17        .byte con_T + $17   ; 
- D 0 - I - 0x028CAF 0A:8C9F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028CB0 0A:8CA0: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x028CB1 0A:8CA1: FD        .byte con_Y + $FD   ; 
- D 0 - I - 0x028CB2 0A:8CA2: 57        .byte con_T + $57   ; 
- D 0 - I - 0x028CB3 0A:8CA3: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028CB4 0A:8CA4: 08        .byte con_X + $08   ; 
@end:



_off006_8CA5_5C:
- D 0 - I - 0x028CB5 0A:8CA5: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028CB6 0A:8CA6: C2        .byte con_Y + $C2   ; 
- D 0 - I - 0x028CB7 0A:8CA7: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028CB8 0A:8CA8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028CB9 0A:8CA9: 05        .byte con_X + $05   ; 

- D 0 - I - 0x028CBA 0A:8CAA: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028CBB 0A:8CAB: 13        .byte con_T + $13   ; 
- D 0 - I - 0x028CBC 0A:8CAC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028CBD 0A:8CAD: 01        .byte con_X + $01   ; 

- D 0 - I - 0x028CBE 0A:8CAE: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028CBF 0A:8CAF: 15        .byte con_T + $15   ; 
- D 0 - I - 0x028CC0 0A:8CB0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028CC1 0A:8CB1: 09        .byte con_X + $09   ; 

- D 0 - I - 0x028CC2 0A:8CB2: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x028CC3 0A:8CB3: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x028CC4 0A:8CB4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028CC5 0A:8CB5: 11        .byte con_X + $11   ; 

- D 0 - I - 0x028CC6 0A:8CB6: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x028CC7 0A:8CB7: 11        .byte con_T + $11   ; 
- D 0 - I - 0x028CC8 0A:8CB8: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028CC9 0A:8CB9: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x028CCA 0A:8CBA: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x028CCB 0A:8CBB: 25        .byte con_T + $25   ; 
- D 0 - I - 0x028CCC 0A:8CBC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028CCD 0A:8CBD: 04        .byte con_X + $04   ; 

- D 0 - I - 0x028CCE 0A:8CBE: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x028CCF 0A:8CBF: 27        .byte con_T + $27   ; 
- D 0 - I - 0x028CD0 0A:8CC0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028CD1 0A:8CC1: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x028CD2 0A:8CC2: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x028CD3 0A:8CC3: 43        .byte con_T + $43   ; 
- D 0 - I - 0x028CD4 0A:8CC4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028CD5 0A:8CC5: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028CD6 0A:8CC6: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x028CD7 0A:8CC7: 45        .byte con_T + $45   ; 
- D 0 - I - 0x028CD8 0A:8CC8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028CD9 0A:8CC9: 05        .byte con_X + $05   ; 
@end:



_off006_8CCA_5D:
- D 0 - I - 0x028CDA 0A:8CCA: 0B        .byte (@end - * - 1) / 4

- D 0 - I - 0x028CDB 0A:8CCB: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x028CDC 0A:8CCC: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x028CDD 0A:8CCD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028CDE 0A:8CCE: 04        .byte con_X + $04   ; 

- D 0 - I - 0x028CDF 0A:8CCF: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x028CE0 0A:8CD0: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x028CE1 0A:8CD1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028CE2 0A:8CD2: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x028CE3 0A:8CD3: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x028CE4 0A:8CD4: 23        .byte con_T + $23   ; 
- D 0 - I - 0x028CE5 0A:8CD5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028CE6 0A:8CD6: 14        .byte con_X + $14   ; 

- D 0 - I - 0x028CE7 0A:8CD7: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x028CE8 0A:8CD8: 13        .byte con_T + $13   ; 
- D 0 - I - 0x028CE9 0A:8CD9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028CEA 0A:8CDA: 04        .byte con_X + $04   ; 

- D 0 - I - 0x028CEB 0A:8CDB: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x028CEC 0A:8CDC: 21        .byte con_T + $21   ; 
- D 0 - I - 0x028CED 0A:8CDD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028CEE 0A:8CDE: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x028CEF 0A:8CDF: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x028CF0 0A:8CE0: 11        .byte con_T + $11   ; 
- D 0 - I - 0x028CF1 0A:8CE1: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028CF2 0A:8CE2: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x028CF3 0A:8CE3: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x028CF4 0A:8CE4: 25        .byte con_T + $25   ; 
- D 0 - I - 0x028CF5 0A:8CE5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028CF6 0A:8CE6: 07        .byte con_X + $07   ; 

- D 0 - I - 0x028CF7 0A:8CE7: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x028CF8 0A:8CE8: 27        .byte con_T + $27   ; 
- D 0 - I - 0x028CF9 0A:8CE9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028CFA 0A:8CEA: 0F        .byte con_X + $0F   ; 

- D 0 - I - 0x028CFB 0A:8CEB: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x028CFC 0A:8CEC: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x028CFD 0A:8CED: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028CFE 0A:8CEE: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x028CFF 0A:8CEF: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x028D00 0A:8CF0: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x028D01 0A:8CF1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D02 0A:8CF2: 02        .byte con_X + $02   ; 

- D 0 - I - 0x028D03 0A:8CF3: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x028D04 0A:8CF4: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x028D05 0A:8CF5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D06 0A:8CF6: 0A        .byte con_X + $0A   ; 
@end:



_off006_8CF7_5E:
- D 0 - I - 0x028D07 0A:8CF7: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x028D08 0A:8CF8: DC        .byte con_Y + $DC   ; 
- D 0 - I - 0x028D09 0A:8CF9: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x028D0A 0A:8CFA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D0B 0A:8CFB: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x028D0C 0A:8CFC: DC        .byte con_Y + $DC   ; 
- D 0 - I - 0x028D0D 0A:8CFD: 09        .byte con_T + $09   ; 
- D 0 - I - 0x028D0E 0A:8CFE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D0F 0A:8CFF: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x028D10 0A:8D00: DC        .byte con_Y + $DC   ; 
- D 0 - I - 0x028D11 0A:8D01: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x028D12 0A:8D02: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D13 0A:8D03: 04        .byte con_X + $04   ; 

- D 0 - I - 0x028D14 0A:8D04: EC        .byte con_Y + $EC   ; 
- D 0 - I - 0x028D15 0A:8D05: 25        .byte con_T + $25   ; 
- D 0 - I - 0x028D16 0A:8D06: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D17 0A:8D07: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028D18 0A:8D08: EC        .byte con_Y + $EC   ; 
- D 0 - I - 0x028D19 0A:8D09: 27        .byte con_T + $27   ; 
- D 0 - I - 0x028D1A 0A:8D0A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D1B 0A:8D0B: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028D1C 0A:8D0C: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028D1D 0A:8D0D: 53        .byte con_T + $53   ; 
- D 0 - I - 0x028D1E 0A:8D0E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D1F 0A:8D0F: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028D20 0A:8D10: FC        .byte con_Y + $FC   ; 
- D 0 - I - 0x028D21 0A:8D11: 61        .byte con_T + $61   ; 
- D 0 - I - 0x028D22 0A:8D12: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D23 0A:8D13: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x028D24 0A:8D14: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028D25 0A:8D15: 21        .byte con_T + $21   ; 
- D 0 - I - 0x028D26 0A:8D16: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D27 0A:8D17: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x028D28 0A:8D18: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028D29 0A:8D19: 23        .byte con_T + $23   ; 
- D 0 - I - 0x028D2A 0A:8D1A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D2B 0A:8D1B: 14        .byte con_X + $14   ; 

- D 0 - I - 0x028D2C 0A:8D1C: EC        .byte con_Y + $EC   ; 
- D 0 - I - 0x028D2D 0A:8D1D: 29        .byte con_T + $29   ; 
- D 0 - I - 0x028D2E 0A:8D1E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D2F 0A:8D1F: 03        .byte con_X + $03   ; 
@end:



_off006_8D20_5F:
- D 0 - I - 0x028D30 0A:8D20: 0B        .byte (@end - * - 1) / 4

- D 0 - I - 0x028D31 0A:8D21: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028D32 0A:8D22: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028D33 0A:8D23: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D34 0A:8D24: ED        .byte con_X + $ED   ; 

- D 0 - I - 0x028D35 0A:8D25: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028D36 0A:8D26: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028D37 0A:8D27: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D38 0A:8D28: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x028D39 0A:8D29: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028D3A 0A:8D2A: 09        .byte con_T + $09   ; 
- D 0 - I - 0x028D3B 0A:8D2B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D3C 0A:8D2C: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x028D3D 0A:8D2D: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028D3E 0A:8D2E: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x028D3F 0A:8D2F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D40 0A:8D30: 05        .byte con_X + $05   ; 

- D 0 - I - 0x028D41 0A:8D31: DA        .byte con_Y + $DA   ; 
- D 0 - I - 0x028D42 0A:8D32: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x028D43 0A:8D33: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D44 0A:8D34: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x028D45 0A:8D35: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x028D46 0A:8D36: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x028D47 0A:8D37: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D48 0A:8D38: 15        .byte con_X + $15   ; 

- D 0 - I - 0x028D49 0A:8D39: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028D4A 0A:8D3A: 17        .byte con_T + $17   ; 
- D 0 - I - 0x028D4B 0A:8D3B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D4C 0A:8D3C: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x028D4D 0A:8D3D: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028D4E 0A:8D3E: 19        .byte con_T + $19   ; 
- D 0 - I - 0x028D4F 0A:8D3F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D50 0A:8D40: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x028D51 0A:8D41: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028D52 0A:8D42: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x028D53 0A:8D43: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D54 0A:8D44: 02        .byte con_X + $02   ; 

- D 0 - I - 0x028D55 0A:8D45: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028D56 0A:8D46: 59        .byte con_T + $59   ; 
- D 0 - I - 0x028D57 0A:8D47: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D58 0A:8D48: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028D59 0A:8D49: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028D5A 0A:8D4A: 5B        .byte con_T + $5B   ; 
- D 0 - I - 0x028D5B 0A:8D4B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D5C 0A:8D4C: 03        .byte con_X + $03   ; 
@end:



_off006_8D4D_60:
- D 0 - I - 0x028D5D 0A:8D4D: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028D5E 0A:8D4E: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x028D5F 0A:8D4F: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x028D60 0A:8D50: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D61 0A:8D51: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x028D62 0A:8D52: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x028D63 0A:8D53: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x028D64 0A:8D54: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D65 0A:8D55: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x028D66 0A:8D56: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x028D67 0A:8D57: 21        .byte con_T + $21   ; 
- D 0 - I - 0x028D68 0A:8D58: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D69 0A:8D59: 02        .byte con_X + $02   ; 

- D 0 - I - 0x028D6A 0A:8D5A: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x028D6B 0A:8D5B: 23        .byte con_T + $23   ; 
- D 0 - I - 0x028D6C 0A:8D5C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D6D 0A:8D5D: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x028D6E 0A:8D5E: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x028D6F 0A:8D5F: 25        .byte con_T + $25   ; 
- D 0 - I - 0x028D70 0A:8D60: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D71 0A:8D61: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x028D72 0A:8D62: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x028D73 0A:8D63: 27        .byte con_T + $27   ; 
- D 0 - I - 0x028D74 0A:8D64: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D75 0A:8D65: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x028D76 0A:8D66: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x028D77 0A:8D67: 29        .byte con_T + $29   ; 
- D 0 - I - 0x028D78 0A:8D68: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D79 0A:8D69: 04        .byte con_X + $04   ; 

- D 0 - I - 0x028D7A 0A:8D6A: EE        .byte con_Y + $EE   ; 
- D 0 - I - 0x028D7B 0A:8D6B: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x028D7C 0A:8D6C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D7D 0A:8D6D: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x028D7E 0A:8D6E: EE        .byte con_Y + $EE   ; 
- D 0 - I - 0x028D7F 0A:8D6F: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x028D80 0A:8D70: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D81 0A:8D71: 04        .byte con_X + $04   ; 
@end:



_off006_8D72_61:
- D 0 - I - 0x028D82 0A:8D72: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x028D83 0A:8D73: C4        .byte con_Y + $C4   ; 
- D 0 - I - 0x028D84 0A:8D74: 11        .byte con_T + $11   ; 
- D 0 - I - 0x028D85 0A:8D75: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D86 0A:8D76: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x028D87 0A:8D77: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x028D88 0A:8D78: 13        .byte con_T + $13   ; 
- D 0 - I - 0x028D89 0A:8D79: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D8A 0A:8D7A: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x028D8B 0A:8D7B: D4        .byte con_Y + $D4   ; 
- D 0 - I - 0x028D8C 0A:8D7C: 15        .byte con_T + $15   ; 
- D 0 - I - 0x028D8D 0A:8D7D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D8E 0A:8D7E: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x028D8F 0A:8D7F: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028D90 0A:8D80: 17        .byte con_T + $17   ; 
- D 0 - I - 0x028D91 0A:8D81: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D92 0A:8D82: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x028D93 0A:8D83: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028D94 0A:8D84: 19        .byte con_T + $19   ; 
- D 0 - I - 0x028D95 0A:8D85: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D96 0A:8D86: 00        .byte con_X + $00   ; 

- D 0 - I - 0x028D97 0A:8D87: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028D98 0A:8D88: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x028D99 0A:8D89: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D9A 0A:8D8A: 08        .byte con_X + $08   ; 

- D 0 - I - 0x028D9B 0A:8D8B: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028D9C 0A:8D8C: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x028D9D 0A:8D8D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028D9E 0A:8D8E: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028D9F 0A:8D8F: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028DA0 0A:8D90: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x028DA1 0A:8D91: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DA2 0A:8D92: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028DA3 0A:8D93: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028DA4 0A:8D94: 21        .byte con_T + $21   ; 
- D 0 - I - 0x028DA5 0A:8D95: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DA6 0A:8D96: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x028DA7 0A:8D97: E7        .byte con_Y + $E7   ; 
- D 0 - I - 0x028DA8 0A:8D98: 23        .byte con_T + $23   ; 
- D 0 - I - 0x028DA9 0A:8D99: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DAA 0A:8D9A: 13        .byte con_X + $13   ; 
@end:



_off006_8D9B_62:
- D 0 - I - 0x028DAB 0A:8D9B: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028DAC 0A:8D9C: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028DAD 0A:8D9D: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x028DAE 0A:8D9E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DAF 0A:8D9F: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028DB0 0A:8DA0: CC        .byte con_Y + $CC   ; 
- D 0 - I - 0x028DB1 0A:8DA1: 31        .byte con_T + $31   ; 
- D 0 - I - 0x028DB2 0A:8DA2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DB3 0A:8DA3: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028DB4 0A:8DA4: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x028DB5 0A:8DA5: 33        .byte con_T + $33   ; 
- D 0 - I - 0x028DB6 0A:8DA6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DB7 0A:8DA7: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x028DB8 0A:8DA8: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028DB9 0A:8DA9: 35        .byte con_T + $35   ; 
- D 0 - I - 0x028DBA 0A:8DAA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DBB 0A:8DAB: 13        .byte con_X + $13   ; 

- D 0 - I - 0x028DBC 0A:8DAC: E5        .byte con_Y + $E5   ; 
- D 0 - I - 0x028DBD 0A:8DAD: 37        .byte con_T + $37   ; 
- D 0 - I - 0x028DBE 0A:8DAE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DBF 0A:8DAF: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x028DC0 0A:8DB0: DC        .byte con_Y + $DC   ; 
- D 0 - I - 0x028DC1 0A:8DB1: 39        .byte con_T + $39   ; 
- D 0 - I - 0x028DC2 0A:8DB2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DC3 0A:8DB3: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028DC4 0A:8DB4: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028DC5 0A:8DB5: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x028DC6 0A:8DB6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DC7 0A:8DB7: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028DC8 0A:8DB8: DC        .byte con_Y + $DC   ; 
- D 0 - I - 0x028DC9 0A:8DB9: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x028DCA 0A:8DBA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DCB 0A:8DBB: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028DCC 0A:8DBC: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x028DCD 0A:8DBD: 3F        .byte con_T + $3F   ; 
- D 0 - I - 0x028DCE 0A:8DBE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DCF 0A:8DBF: 0B        .byte con_X + $0B   ; 
@end:



_off006_8DC0_63:
- D 0 - I - 0x028DD0 0A:8DC0: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x028DD1 0A:8DC1: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x028DD2 0A:8DC2: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028DD3 0A:8DC3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DD4 0A:8DC4: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x028DD5 0A:8DC5: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x028DD6 0A:8DC6: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028DD7 0A:8DC7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DD8 0A:8DC8: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028DD9 0A:8DC9: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x028DDA 0A:8DCA: 05        .byte con_T + $05   ; 
- D 0 - I - 0x028DDB 0A:8DCB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DDC 0A:8DCC: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x028DDD 0A:8DCD: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x028DDE 0A:8DCE: 07        .byte con_T + $07   ; 
- D 0 - I - 0x028DDF 0A:8DCF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DE0 0A:8DD0: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028DE1 0A:8DD1: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x028DE2 0A:8DD2: 09        .byte con_T + $09   ; 
- D 0 - I - 0x028DE3 0A:8DD3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DE4 0A:8DD4: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028DE5 0A:8DD5: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x028DE6 0A:8DD6: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x028DE7 0A:8DD7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DE8 0A:8DD8: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028DE9 0A:8DD9: D8        .byte con_Y + $D8   ; 
- D 0 - I - 0x028DEA 0A:8DDA: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x028DEB 0A:8DDB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DEC 0A:8DDC: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028DED 0A:8DDD: E8        .byte con_Y + $E8   ; 
- D 0 - I - 0x028DEE 0A:8DDE: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x028DEF 0A:8DDF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DF0 0A:8DE0: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028DF1 0A:8DE1: D4        .byte con_Y + $D4   ; 
- D 0 - I - 0x028DF2 0A:8DE2: 11        .byte con_T + $11   ; 
- D 0 - I - 0x028DF3 0A:8DE3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DF4 0A:8DE4: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x028DF5 0A:8DE5: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028DF6 0A:8DE6: 13        .byte con_T + $13   ; 
- D 0 - I - 0x028DF7 0A:8DE7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DF8 0A:8DE8: 13        .byte con_X + $13   ; 
@end:



_off006_8DE9_64:
- D 0 - I - 0x028DF9 0A:8DE9: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x028DFA 0A:8DEA: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x028DFB 0A:8DEB: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028DFC 0A:8DEC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028DFD 0A:8DED: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x028DFE 0A:8DEE: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x028DFF 0A:8DEF: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028E00 0A:8DF0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028E01 0A:8DF1: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028E02 0A:8DF2: E7        .byte con_Y + $E7   ; 
- D 0 - I - 0x028E03 0A:8DF3: 05        .byte con_T + $05   ; 
- D 0 - I - 0x028E04 0A:8DF4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028E05 0A:8DF5: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x028E06 0A:8DF6: E7        .byte con_Y + $E7   ; 
- D 0 - I - 0x028E07 0A:8DF7: 07        .byte con_T + $07   ; 
- D 0 - I - 0x028E08 0A:8DF8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028E09 0A:8DF9: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028E0A 0A:8DFA: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028E0B 0A:8DFB: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x028E0C 0A:8DFC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028E0D 0A:8DFD: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028E0E 0A:8DFE: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028E0F 0A:8DFF: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x028E10 0A:8E00: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028E11 0A:8E01: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028E12 0A:8E02: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028E13 0A:8E03: 15        .byte con_T + $15   ; 
- D 0 - I - 0x028E14 0A:8E04: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028E15 0A:8E05: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028E16 0A:8E06: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028E17 0A:8E07: 17        .byte con_T + $17   ; 
- D 0 - I - 0x028E18 0A:8E08: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028E19 0A:8E09: 03        .byte con_X + $03   ; 
@end:



_off006_8E0A_65:
- D 0 - I - 0x028E1A 0A:8E0A: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x028E1B 0A:8E0B: DD        .byte con_Y + $DD   ; 
- D 0 - I - 0x028E1C 0A:8E0C: 19        .byte con_T + $19   ; 
- D 0 - I - 0x028E1D 0A:8E0D: 02        .byte con_A + $02   ; 
- D 0 - I - 0x028E1E 0A:8E0E: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x028E1F 0A:8E0F: DB        .byte con_Y + $DB   ; 
- D 0 - I - 0x028E20 0A:8E10: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x028E21 0A:8E11: 02        .byte con_A + $02   ; 
- D 0 - I - 0x028E22 0A:8E12: 12        .byte con_X + $12   ; 
@end:



.export tbl_0x028E23_Casey
tbl_0x028E23_Casey:
- D 0 - I - 0x028E23 0A:8E13: C5 8E     .word _off007_8EC5_00
- D 0 - I - 0x028E25 0A:8E15: F2 8E     .word _off007_8EF2_01
- D 0 - I - 0x028E27 0A:8E17: 1F 8F     .word _off007_8F1F_02
- D 0 - I - 0x028E29 0A:8E19: 40 8F     .word _off007_8F40_03
- D 0 - I - 0x028E2B 0A:8E1B: 65 8F     .word _off007_8F65_04
- D 0 - I - 0x028E2D 0A:8E1D: 86 8F     .word _off007_8F86_05
- D 0 - I - 0x028E2F 0A:8E1F: AB 8F     .word _off007_8FAB_06
- D 0 - I - 0x028E31 0A:8E21: CC 8F     .word _off007_8FCC_07
- D 0 - I - 0x028E33 0A:8E23: F9 8F     .word _off007_8FF9_08
- D 0 - I - 0x028E35 0A:8E25: 2E 90     .word _off007_902E_09
- D 0 - I - 0x028E37 0A:8E27: 63 90     .word _off007_9063_0A
- D 0 - I - 0x028E39 0A:8E29: 94 90     .word _off007_9094_0B
- D 0 - I - 0x028E3B 0A:8E2B: C5 90     .word _off007_90C5_0C
- D 0 - I - 0x028E3D 0A:8E2D: F6 90     .word _off007_90F6_0D
- D 0 - I - 0x028E3F 0A:8E2F: 23 91     .word _off007_9123_0E
- D 0 - I - 0x028E41 0A:8E31: 54 91     .word _off007_9154_0F
- D 0 - I - 0x028E43 0A:8E33: 81 91     .word _off007_9181_10
- D 0 - I - 0x028E45 0A:8E35: BA 91     .word _off007_91BA_11
- D 0 - I - 0x028E47 0A:8E37: DF 91     .word _off007_91DF_12
- D 0 - I - 0x028E49 0A:8E39: 08 92     .word _off007_9208_13
- D 0 - I - 0x028E4B 0A:8E3B: 29 92     .word _off007_9229_14
- D 0 - I - 0x028E4D 0A:8E3D: 52 92     .word _off007_9252_15
- D 0 - I - 0x028E4F 0A:8E3F: 73 92     .word _off007_9273_16
- D 0 - I - 0x028E51 0A:8E41: 9C 92     .word _off007_929C_17
- D 0 - I - 0x028E53 0A:8E43: CD 92     .word _off007_92CD_18
- D 0 - I - 0x028E55 0A:8E45: FE 92     .word _off007_92FE_19
- D 0 - I - 0x028E57 0A:8E47: 2F 93     .word _off007_932F_1A
- D 0 - I - 0x028E59 0A:8E49: 54 93     .word _off007_9354_1B
- D 0 - I - 0x028E5B 0A:8E4B: 81 93     .word _off007_9381_1C
- D 0 - I - 0x028E5D 0A:8E4D: A6 93     .word _off007_93A6_1D
- D 0 - I - 0x028E5F 0A:8E4F: CF 93     .word _off007_93CF_1E
- D 0 - I - 0x028E61 0A:8E51: F8 93     .word _off007_93F8_1F
- D 0 - I - 0x028E63 0A:8E53: 29 94     .word _off007_9429_20
- D 0 - I - 0x028E65 0A:8E55: 4A 94     .word _off007_944A_21
- D 0 - I - 0x028E67 0A:8E57: 6F 94     .word _off007_946F_22
- D 0 - I - 0x028E69 0A:8E59: 90 94     .word _off007_9490_23
- D 0 - I - 0x028E6B 0A:8E5B: BD 94     .word _off007_94BD_24
- D 0 - I - 0x028E6D 0A:8E5D: E2 94     .word _off007_94E2_25
- D 0 - I - 0x028E6F 0A:8E5F: 07 95     .word _off007_9507_26
- D 0 - I - 0x028E71 0A:8E61: 2C 95     .word _off007_952C_27
- D 0 - I - 0x028E73 0A:8E63: 51 95     .word _off007_9551_28
- D 0 - I - 0x028E75 0A:8E65: 72 95     .word _off007_9572_29
- D 0 - I - 0x028E77 0A:8E67: 97 95     .word _off007_9597_2A
- D 0 - I - 0x028E79 0A:8E69: BC 95     .word _off007_95BC_2B
- D 0 - I - 0x028E7B 0A:8E6B: E1 95     .word _off007_95E1_2C
- D 0 - I - 0x028E7D 0A:8E6D: 0A 96     .word _off007_960A_2D
- D 0 - I - 0x028E7F 0A:8E6F: 3B 96     .word _off007_963B_2E
- D 0 - I - 0x028E81 0A:8E71: 68 96     .word _off007_9668_2F
- D 0 - I - 0x028E83 0A:8E73: 91 96     .word _off007_9691_30
- D 0 - I - 0x028E85 0A:8E75: BE 96     .word _off007_96BE_31
- D 0 - I - 0x028E87 0A:8E77: E3 96     .word _off007_96E3_32
- D 0 - I - 0x028E89 0A:8E79: 08 97     .word _off007_9708_33
- D 0 - I - 0x028E8B 0A:8E7B: 31 97     .word _off007_9731_34
- D 0 - I - 0x028E8D 0A:8E7D: 56 97     .word _off007_9756_35
- D 0 - I - 0x028E8F 0A:8E7F: 77 97     .word _off007_9777_36
- D 0 - I - 0x028E91 0A:8E81: 80 97     .word _off007_9780_37
- D 0 - I - 0x028E93 0A:8E83: 89 97     .word _off007_9789_38
- D 0 - I - 0x028E95 0A:8E85: B2 97     .word _off007_97B2_39
- D 0 - I - 0x028E97 0A:8E87: D7 97     .word _off007_97D7_3A
- D 0 - I - 0x028E99 0A:8E89: 00 98     .word _off007_9800_3B
- D 0 - I - 0x028E9B 0A:8E8B: 25 98     .word _off007_9825_3C
- D 0 - I - 0x028E9D 0A:8E8D: 46 98     .word _off007_9846_3D
- D 0 - I - 0x028E9F 0A:8E8F: 4B 98     .word _off007_984B_3E
- D 0 - I - 0x028EA1 0A:8E91: 54 98     .word _off007_9854_3F
- D 0 - I - 0x028EA3 0A:8E93: 6A 98     .word _off007_986A_40
- D 0 - I - 0x028EA5 0A:8E95: 61 98     .word _off007_9861_41
- D 0 - I - 0x028EA7 0A:8E97: 73 98     .word _off007_9873_42
- D 0 - I - 0x028EA9 0A:8E99: 98 98     .word _off007_9898_43
- D 0 - I - 0x028EAB 0A:8E9B: B9 98     .word _off007_98B9_44
- D 0 - I - 0x028EAD 0A:8E9D: E2 98     .word _off007_98E2_45
- D 0 - I - 0x028EAF 0A:8E9F: EB 98     .word _off007_98EB_46
- D 0 - I - 0x028EB1 0A:8EA1: F4 98     .word _off007_98F4_47
- D 0 - I - 0x028EB3 0A:8EA3: FD 98     .word _off007_98FD_48
- D 0 - I - 0x028EB5 0A:8EA5: 1E 99     .word _off007_991E_49
- D 0 - I - 0x028EB7 0A:8EA7: 2F 99     .word _off007_992F_4A
- D 0 - I - 0x028EB9 0A:8EA9: 50 99     .word _off007_9950_4B
- D 0 - I - 0x028EBB 0A:8EAB: 61 99     .word _off007_9961_4C
- D 0 - I - 0x028EBD 0A:8EAD: 8A 99     .word _off007_998A_4D
- D 0 - I - 0x028EBF 0A:8EAF: B3 99     .word _off007_99B3_4E
- D 0 - I - 0x028EC1 0A:8EB1: D8 99     .word _off007_99D8_4F
- D 0 - I - 0x028EC3 0A:8EB3: 01 9A     .word _off007_9A01_50
- D 0 - I - 0x028EC5 0A:8EB5: 32 9A     .word _off007_9A32_51
- D 0 - I - 0x028EC7 0A:8EB7: 5F 9A     .word _off007_9A5F_52
- D 0 - I - 0x028EC9 0A:8EB9: 80 9A     .word _off007_9A80_53
- D 0 - I - 0x028ECB 0A:8EBB: A1 9A     .word _off007_9AA1_54
- D 0 - I - 0x028ECD 0A:8EBD: C6 9A     .word _off007_9AC6_55
- D 0 - I - 0x028ECF 0A:8EBF: EB 9A     .word _off007_9AEB_56
- D 0 - I - 0x028ED1 0A:8EC1: 0C 9B     .word _off007_9B0C_57
- D 0 - I - 0x028ED3 0A:8EC3: 31 9B     .word _off007_9B31_58



_off007_8EC5_00:
- D 0 - I - 0x028ED5 0A:8EC5: 0B        .byte (@end - * - 1) / 4

- D 0 - I - 0x028ED6 0A:8EC6: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x028ED7 0A:8EC7: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028ED8 0A:8EC8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028ED9 0A:8EC9: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x028EDA 0A:8ECA: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x028EDB 0A:8ECB: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028EDC 0A:8ECC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028EDD 0A:8ECD: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x028EDE 0A:8ECE: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028EDF 0A:8ECF: 05        .byte con_T + $05   ; 
- D 0 - I - 0x028EE0 0A:8ED0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028EE1 0A:8ED1: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x028EE2 0A:8ED2: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028EE3 0A:8ED3: 07        .byte con_T + $07   ; 
- D 0 - I - 0x028EE4 0A:8ED4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028EE5 0A:8ED5: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x028EE6 0A:8ED6: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028EE7 0A:8ED7: 09        .byte con_T + $09   ; 
- D 0 - I - 0x028EE8 0A:8ED8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028EE9 0A:8ED9: 05        .byte con_X + $05   ; 

- D 0 - I - 0x028EEA 0A:8EDA: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028EEB 0A:8EDB: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x028EEC 0A:8EDC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028EED 0A:8EDD: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x028EEE 0A:8EDE: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028EEF 0A:8EDF: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x028EF0 0A:8EE0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028EF1 0A:8EE1: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x028EF2 0A:8EE2: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028EF3 0A:8EE3: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x028EF4 0A:8EE4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028EF5 0A:8EE5: 05        .byte con_X + $05   ; 

- D 0 - I - 0x028EF6 0A:8EE6: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028EF7 0A:8EE7: 41        .byte con_T + $41   ; 
- D 0 - I - 0x028EF8 0A:8EE8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028EF9 0A:8EE9: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x028EFA 0A:8EEA: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028EFB 0A:8EEB: 43        .byte con_T + $43   ; 
- D 0 - I - 0x028EFC 0A:8EEC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028EFD 0A:8EED: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x028EFE 0A:8EEE: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028EFF 0A:8EEF: 45        .byte con_T + $45   ; 
- D 0 - I - 0x028F00 0A:8EF0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F01 0A:8EF1: 06        .byte con_X + $06   ; 
@end:



_off007_8EF2_01:
- D 0 - I - 0x028F02 0A:8EF2: 0B        .byte (@end - * - 1) / 4

- D 0 - I - 0x028F03 0A:8EF3: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x028F04 0A:8EF4: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028F05 0A:8EF5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F06 0A:8EF6: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x028F07 0A:8EF7: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x028F08 0A:8EF8: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028F09 0A:8EF9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F0A 0A:8EFA: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x028F0B 0A:8EFB: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x028F0C 0A:8EFC: 11        .byte con_T + $11   ; 
- D 0 - I - 0x028F0D 0A:8EFD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F0E 0A:8EFE: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x028F0F 0A:8EFF: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x028F10 0A:8F00: 13        .byte con_T + $13   ; 
- D 0 - I - 0x028F11 0A:8F01: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F12 0A:8F02: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x028F13 0A:8F03: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x028F14 0A:8F04: 15        .byte con_T + $15   ; 
- D 0 - I - 0x028F15 0A:8F05: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F16 0A:8F06: 04        .byte con_X + $04   ; 

- D 0 - I - 0x028F17 0A:8F07: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x028F18 0A:8F08: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x028F19 0A:8F09: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028F1A 0A:8F0A: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x028F1B 0A:8F0B: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x028F1C 0A:8F0C: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x028F1D 0A:8F0D: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028F1E 0A:8F0E: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x028F1F 0A:8F0F: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x028F20 0A:8F10: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x028F21 0A:8F11: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028F22 0A:8F12: 05        .byte con_X + $05   ; 

- D 0 - I - 0x028F23 0A:8F13: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x028F24 0A:8F14: 47        .byte con_T + $47   ; 
- D 0 - I - 0x028F25 0A:8F15: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F26 0A:8F16: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x028F27 0A:8F17: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x028F28 0A:8F18: 43        .byte con_T + $43   ; 
- D 0 - I - 0x028F29 0A:8F19: 40        .byte con_A + $40   ; 
- D 0 - I - 0x028F2A 0A:8F1A: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x028F2B 0A:8F1B: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x028F2C 0A:8F1C: 49        .byte con_T + $49   ; 
- D 0 - I - 0x028F2D 0A:8F1D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F2E 0A:8F1E: 06        .byte con_X + $06   ; 
@end:



_off007_8F1F_02:
- D 0 - I - 0x028F2F 0A:8F1F: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x028F30 0A:8F20: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x028F31 0A:8F21: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028F32 0A:8F22: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F33 0A:8F23: 00        .byte con_X + $00   ; 

- D 0 - I - 0x028F34 0A:8F24: C8        .byte con_Y + $C8   ; 
- D 0 - I - 0x028F35 0A:8F25: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028F36 0A:8F26: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F37 0A:8F27: 08        .byte con_X + $08   ; 

- D 0 - I - 0x028F38 0A:8F28: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x028F39 0A:8F29: 05        .byte con_T + $05   ; 
- D 0 - I - 0x028F3A 0A:8F2A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F3B 0A:8F2B: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x028F3C 0A:8F2C: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x028F3D 0A:8F2D: 07        .byte con_T + $07   ; 
- D 0 - I - 0x028F3E 0A:8F2E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F3F 0A:8F2F: 00        .byte con_X + $00   ; 

- D 0 - I - 0x028F40 0A:8F30: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x028F41 0A:8F31: 09        .byte con_T + $09   ; 
- D 0 - I - 0x028F42 0A:8F32: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F43 0A:8F33: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x028F44 0A:8F34: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x028F45 0A:8F35: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x028F46 0A:8F36: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F47 0A:8F37: 01        .byte con_X + $01   ; 

- D 0 - I - 0x028F48 0A:8F38: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x028F49 0A:8F39: 35        .byte con_T + $35   ; 
- D 0 - I - 0x028F4A 0A:8F3A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F4B 0A:8F3B: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x028F4C 0A:8F3C: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x028F4D 0A:8F3D: 37        .byte con_T + $37   ; 
- D 0 - I - 0x028F4E 0A:8F3E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F4F 0A:8F3F: 02        .byte con_X + $02   ; 
@end:



_off007_8F40_03:
- D 0 - I - 0x028F50 0A:8F40: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028F51 0A:8F41: B9        .byte con_Y + $B9   ; 
- D 0 - I - 0x028F52 0A:8F42: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x028F53 0A:8F43: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F54 0A:8F44: 06        .byte con_X + $06   ; 

- D 0 - I - 0x028F55 0A:8F45: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x028F56 0A:8F46: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x028F57 0A:8F47: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F58 0A:8F48: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x028F59 0A:8F49: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x028F5A 0A:8F4A: 11        .byte con_T + $11   ; 
- D 0 - I - 0x028F5B 0A:8F4B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F5C 0A:8F4C: 01        .byte con_X + $01   ; 

- D 0 - I - 0x028F5D 0A:8F4D: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x028F5E 0A:8F4E: 13        .byte con_T + $13   ; 
- D 0 - I - 0x028F5F 0A:8F4F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F60 0A:8F50: 09        .byte con_X + $09   ; 

- D 0 - I - 0x028F61 0A:8F51: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x028F62 0A:8F52: 51        .byte con_T + $51   ; 
- D 0 - I - 0x028F63 0A:8F53: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F64 0A:8F54: F1        .byte con_X + $F1   ; 

- D 0 - I - 0x028F65 0A:8F55: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x028F66 0A:8F56: 15        .byte con_T + $15   ; 
- D 0 - I - 0x028F67 0A:8F57: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F68 0A:8F58: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x028F69 0A:8F59: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x028F6A 0A:8F5A: 17        .byte con_T + $17   ; 
- D 0 - I - 0x028F6B 0A:8F5B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F6C 0A:8F5C: 01        .byte con_X + $01   ; 

- D 0 - I - 0x028F6D 0A:8F5D: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x028F6E 0A:8F5E: 19        .byte con_T + $19   ; 
- D 0 - I - 0x028F6F 0A:8F5F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F70 0A:8F60: 09        .byte con_X + $09   ; 

- D 0 - I - 0x028F71 0A:8F61: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x028F72 0A:8F62: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x028F73 0A:8F63: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F74 0A:8F64: 07        .byte con_X + $07   ; 
@end:



_off007_8F65_04:
- D 0 - I - 0x028F75 0A:8F65: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x028F76 0A:8F66: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x028F77 0A:8F67: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028F78 0A:8F68: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F79 0A:8F69: 00        .byte con_X + $00   ; 

- D 0 - I - 0x028F7A 0A:8F6A: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x028F7B 0A:8F6B: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028F7C 0A:8F6C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F7D 0A:8F6D: 08        .byte con_X + $08   ; 

- D 0 - I - 0x028F7E 0A:8F6E: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x028F7F 0A:8F6F: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x028F80 0A:8F70: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F81 0A:8F71: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x028F82 0A:8F72: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x028F83 0A:8F73: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x028F84 0A:8F74: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F85 0A:8F75: 00        .byte con_X + $00   ; 

- D 0 - I - 0x028F86 0A:8F76: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028F87 0A:8F77: 53        .byte con_T + $53   ; 
- D 0 - I - 0x028F88 0A:8F78: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F89 0A:8F79: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028F8A 0A:8F7A: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x028F8B 0A:8F7B: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x028F8C 0A:8F7C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F8D 0A:8F7D: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028F8E 0A:8F7E: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x028F8F 0A:8F7F: 21        .byte con_T + $21   ; 
- D 0 - I - 0x028F90 0A:8F80: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F91 0A:8F81: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028F92 0A:8F82: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x028F93 0A:8F83: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x028F94 0A:8F84: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F95 0A:8F85: 03        .byte con_X + $03   ; 
@end:



_off007_8F86_05:
- D 0 - I - 0x028F96 0A:8F86: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x028F97 0A:8F87: B9        .byte con_Y + $B9   ; 
- D 0 - I - 0x028F98 0A:8F88: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x028F99 0A:8F89: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F9A 0A:8F8A: 06        .byte con_X + $06   ; 

- D 0 - I - 0x028F9B 0A:8F8B: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x028F9C 0A:8F8C: 25        .byte con_T + $25   ; 
- D 0 - I - 0x028F9D 0A:8F8D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028F9E 0A:8F8E: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x028F9F 0A:8F8F: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x028FA0 0A:8F90: 23        .byte con_T + $23   ; 
- D 0 - I - 0x028FA1 0A:8F91: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FA2 0A:8F92: 01        .byte con_X + $01   ; 

- D 0 - I - 0x028FA3 0A:8F93: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x028FA4 0A:8F94: 13        .byte con_T + $13   ; 
- D 0 - I - 0x028FA5 0A:8F95: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FA6 0A:8F96: 09        .byte con_X + $09   ; 

- D 0 - I - 0x028FA7 0A:8F97: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x028FA8 0A:8F98: 51        .byte con_T + $51   ; 
- D 0 - I - 0x028FA9 0A:8F99: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FAA 0A:8F9A: F1        .byte con_X + $F1   ; 

- D 0 - I - 0x028FAB 0A:8F9B: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x028FAC 0A:8F9C: 27        .byte con_T + $27   ; 
- D 0 - I - 0x028FAD 0A:8F9D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FAE 0A:8F9E: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x028FAF 0A:8F9F: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x028FB0 0A:8FA0: 29        .byte con_T + $29   ; 
- D 0 - I - 0x028FB1 0A:8FA1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FB2 0A:8FA2: 01        .byte con_X + $01   ; 

- D 0 - I - 0x028FB3 0A:8FA3: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x028FB4 0A:8FA4: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x028FB5 0A:8FA5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FB6 0A:8FA6: 09        .byte con_X + $09   ; 

- D 0 - I - 0x028FB7 0A:8FA7: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x028FB8 0A:8FA8: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x028FB9 0A:8FA9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FBA 0A:8FAA: 07        .byte con_X + $07   ; 
@end:



_off007_8FAB_06:
- D 0 - I - 0x028FBB 0A:8FAB: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x028FBC 0A:8FAC: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x028FBD 0A:8FAD: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028FBE 0A:8FAE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FBF 0A:8FAF: 00        .byte con_X + $00   ; 

- D 0 - I - 0x028FC0 0A:8FB0: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x028FC1 0A:8FB1: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028FC2 0A:8FB2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FC3 0A:8FB3: 08        .byte con_X + $08   ; 

- D 0 - I - 0x028FC4 0A:8FB4: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x028FC5 0A:8FB5: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x028FC6 0A:8FB6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FC7 0A:8FB7: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x028FC8 0A:8FB8: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x028FC9 0A:8FB9: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x028FCA 0A:8FBA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FCB 0A:8FBB: 00        .byte con_X + $00   ; 

- D 0 - I - 0x028FCC 0A:8FBC: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028FCD 0A:8FBD: 53        .byte con_T + $53   ; 
- D 0 - I - 0x028FCE 0A:8FBE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FCF 0A:8FBF: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x028FD0 0A:8FC0: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x028FD1 0A:8FC1: 31        .byte con_T + $31   ; 
- D 0 - I - 0x028FD2 0A:8FC2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FD3 0A:8FC3: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x028FD4 0A:8FC4: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x028FD5 0A:8FC5: 33        .byte con_T + $33   ; 
- D 0 - I - 0x028FD6 0A:8FC6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FD7 0A:8FC7: 03        .byte con_X + $03   ; 

- D 0 - I - 0x028FD8 0A:8FC8: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x028FD9 0A:8FC9: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x028FDA 0A:8FCA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FDB 0A:8FCB: 03        .byte con_X + $03   ; 
@end:



_off007_8FCC_07:
- D 0 - I - 0x028FDC 0A:8FCC: 0B        .byte (@end - * - 1) / 4

- D 0 - I - 0x028FDD 0A:8FCD: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x028FDE 0A:8FCE: 01        .byte con_T + $01   ; 
- D 0 - I - 0x028FDF 0A:8FCF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FE0 0A:8FD0: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x028FE1 0A:8FD1: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x028FE2 0A:8FD2: 03        .byte con_T + $03   ; 
- D 0 - I - 0x028FE3 0A:8FD3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FE4 0A:8FD4: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x028FE5 0A:8FD5: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028FE6 0A:8FD6: 11        .byte con_T + $11   ; 
- D 0 - I - 0x028FE7 0A:8FD7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FE8 0A:8FD8: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x028FE9 0A:8FD9: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028FEA 0A:8FDA: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x028FEB 0A:8FDB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FEC 0A:8FDC: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x028FED 0A:8FDD: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x028FEE 0A:8FDE: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x028FEF 0A:8FDF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FF0 0A:8FE0: 04        .byte con_X + $04   ; 

- D 0 - I - 0x028FF1 0A:8FE1: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028FF2 0A:8FE2: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x028FF3 0A:8FE3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FF4 0A:8FE4: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x028FF5 0A:8FE5: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028FF6 0A:8FE6: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x028FF7 0A:8FE7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FF8 0A:8FE8: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x028FF9 0A:8FE9: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x028FFA 0A:8FEA: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x028FFB 0A:8FEB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x028FFC 0A:8FEC: 04        .byte con_X + $04   ; 

- D 0 - I - 0x028FFD 0A:8FED: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x028FFE 0A:8FEE: 41        .byte con_T + $41   ; 
- D 0 - I - 0x028FFF 0A:8FEF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029000 0A:8FF0: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x029001 0A:8FF1: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029002 0A:8FF2: 43        .byte con_T + $43   ; 
- D 0 - I - 0x029003 0A:8FF3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029004 0A:8FF4: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x029005 0A:8FF5: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029006 0A:8FF6: 45        .byte con_T + $45   ; 
- D 0 - I - 0x029007 0A:8FF7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029008 0A:8FF8: 05        .byte con_X + $05   ; 
@end:



_off007_8FF9_08:
- D 0 - I - 0x029009 0A:8FF9: 0D        .byte (@end - * - 1) / 4

- D 0 - I - 0x02900A 0A:8FFA: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x02900B 0A:8FFB: 01        .byte con_T + $01   ; 
- D 0 - I - 0x02900C 0A:8FFC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02900D 0A:8FFD: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x02900E 0A:8FFE: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x02900F 0A:8FFF: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029010 0A:9000: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029011 0A:9001: 02        .byte con_X + $02   ; 

- D 0 - I - 0x029012 0A:9002: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x029013 0A:9003: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029014 0A:9004: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029015 0A:9005: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029016 0A:9006: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x029017 0A:9007: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x029018 0A:9008: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029019 0A:9009: 00        .byte con_X + $00   ; 

- D 0 - I - 0x02901A 0A:900A: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x02901B 0A:900B: 21        .byte con_T + $21   ; 
- D 0 - I - 0x02901C 0A:900C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02901D 0A:900D: 08        .byte con_X + $08   ; 

- D 0 - I - 0x02901E 0A:900E: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x02901F 0A:900F: 23        .byte con_T + $23   ; 
- D 0 - I - 0x029020 0A:9010: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029021 0A:9011: 10        .byte con_X + $10   ; 

- D 0 - I - 0x029022 0A:9012: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x029023 0A:9013: 19        .byte con_T + $19   ; 
- D 0 - I - 0x029024 0A:9014: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029025 0A:9015: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x029026 0A:9016: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x029027 0A:9017: 17        .byte con_T + $17   ; 
- D 0 - I - 0x029028 0A:9018: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029029 0A:9019: 07        .byte con_X + $07   ; 

- D 0 - I - 0x02902A 0A:901A: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x02902B 0A:901B: 43        .byte con_T + $43   ; 
- D 0 - I - 0x02902C 0A:901C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02902D 0A:901D: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x02902E 0A:901E: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x02902F 0A:901F: 49        .byte con_T + $49   ; 
- D 0 - I - 0x029030 0A:9020: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029031 0A:9021: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x029032 0A:9022: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x029033 0A:9023: 43        .byte con_T + $43   ; 
- D 0 - I - 0x029034 0A:9024: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029035 0A:9025: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029036 0A:9026: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x029037 0A:9027: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029038 0A:9028: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029039 0A:9029: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x02903A 0A:902A: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x02903B 0A:902B: 41        .byte con_T + $41   ; 
- D 0 - I - 0x02903C 0A:902C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02903D 0A:902D: F2        .byte con_X + $F2   ; 
@end:



_off007_902E_09:
- D 0 - I - 0x02903E 0A:902E: 0D        .byte (@end - * - 1) / 4

- D 0 - I - 0x02903F 0A:902F: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x029040 0A:9030: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029041 0A:9031: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029042 0A:9032: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x029043 0A:9033: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x029044 0A:9034: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029045 0A:9035: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029046 0A:9036: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029047 0A:9037: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x029048 0A:9038: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029049 0A:9039: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02904A 0A:903A: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x02904B 0A:903B: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x02904C 0A:903C: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x02904D 0A:903D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02904E 0A:903E: 01        .byte con_X + $01   ; 

- D 0 - I - 0x02904F 0A:903F: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x029050 0A:9040: 21        .byte con_T + $21   ; 
- D 0 - I - 0x029051 0A:9041: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029052 0A:9042: 09        .byte con_X + $09   ; 

- D 0 - I - 0x029053 0A:9043: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x029054 0A:9044: 23        .byte con_T + $23   ; 
- D 0 - I - 0x029055 0A:9045: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029056 0A:9046: 11        .byte con_X + $11   ; 

- D 0 - I - 0x029057 0A:9047: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x029058 0A:9048: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029059 0A:9049: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02905A 0A:904A: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x02905B 0A:904B: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x02905C 0A:904C: 19        .byte con_T + $19   ; 
- D 0 - I - 0x02905D 0A:904D: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02905E 0A:904E: 01        .byte con_X + $01   ; 

- D 0 - I - 0x02905F 0A:904F: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x029060 0A:9050: 17        .byte con_T + $17   ; 
- D 0 - I - 0x029061 0A:9051: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029062 0A:9052: 09        .byte con_X + $09   ; 

- D 0 - I - 0x029063 0A:9053: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x029064 0A:9054: 41        .byte con_T + $41   ; 
- D 0 - I - 0x029065 0A:9055: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029066 0A:9056: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x029067 0A:9057: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x029068 0A:9058: 43        .byte con_T + $43   ; 
- D 0 - I - 0x029069 0A:9059: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02906A 0A:905A: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x02906B 0A:905B: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x02906C 0A:905C: 49        .byte con_T + $49   ; 
- D 0 - I - 0x02906D 0A:905D: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02906E 0A:905E: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x02906F 0A:905F: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x029070 0A:9060: 43        .byte con_T + $43   ; 
- D 0 - I - 0x029071 0A:9061: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029072 0A:9062: 05        .byte con_X + $05   ; 
@end:



_off007_9063_0A:
- D 0 - I - 0x029073 0A:9063: 0C        .byte (@end - * - 1) / 4

- D 0 - I - 0x029074 0A:9064: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029075 0A:9065: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029076 0A:9066: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029077 0A:9067: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x029078 0A:9068: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029079 0A:9069: 03        .byte con_T + $03   ; 
- D 0 - I - 0x02907A 0A:906A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02907B 0A:906B: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x02907C 0A:906C: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02907D 0A:906D: 05        .byte con_T + $05   ; 
- D 0 - I - 0x02907E 0A:906E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02907F 0A:906F: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x029080 0A:9070: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029081 0A:9071: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x029082 0A:9072: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029083 0A:9073: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x029084 0A:9074: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029085 0A:9075: 21        .byte con_T + $21   ; 
- D 0 - I - 0x029086 0A:9076: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029087 0A:9077: 05        .byte con_X + $05   ; 

- D 0 - I - 0x029088 0A:9078: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029089 0A:9079: 23        .byte con_T + $23   ; 
- D 0 - I - 0x02908A 0A:907A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02908B 0A:907B: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x02908C 0A:907C: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02908D 0A:907D: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x02908E 0A:907E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02908F 0A:907F: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x029090 0A:9080: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029091 0A:9081: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029092 0A:9082: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029093 0A:9083: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x029094 0A:9084: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029095 0A:9085: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029096 0A:9086: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029097 0A:9087: 05        .byte con_X + $05   ; 

- D 0 - I - 0x029098 0A:9088: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029099 0A:9089: 47        .byte con_T + $47   ; 
- D 0 - I - 0x02909A 0A:908A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02909B 0A:908B: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x02909C 0A:908C: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02909D 0A:908D: 41        .byte con_T + $41   ; 
- D 0 - I - 0x02909E 0A:908E: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02909F 0A:908F: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x0290A0 0A:9090: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0290A1 0A:9091: 43        .byte con_T + $43   ; 
- D 0 - I - 0x0290A2 0A:9092: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0290A3 0A:9093: 02        .byte con_X + $02   ; 
@end:



_off007_9094_0B:
- D 0 - I - 0x0290A4 0A:9094: 0C        .byte (@end - * - 1) / 4

- D 0 - I - 0x0290A5 0A:9095: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x0290A6 0A:9096: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0290A7 0A:9097: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0290A8 0A:9098: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x0290A9 0A:9099: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x0290AA 0A:909A: 03        .byte con_T + $03   ; 
- D 0 - I - 0x0290AB 0A:909B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0290AC 0A:909C: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x0290AD 0A:909D: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x0290AE 0A:909E: 11        .byte con_T + $11   ; 
- D 0 - I - 0x0290AF 0A:909F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0290B0 0A:90A0: F1        .byte con_X + $F1   ; 

- D 0 - I - 0x0290B1 0A:90A1: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x0290B2 0A:90A2: 13        .byte con_T + $13   ; 
- D 0 - I - 0x0290B3 0A:90A3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0290B4 0A:90A4: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x0290B5 0A:90A5: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x0290B6 0A:90A6: 15        .byte con_T + $15   ; 
- D 0 - I - 0x0290B7 0A:90A7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0290B8 0A:90A8: 01        .byte con_X + $01   ; 

- D 0 - I - 0x0290B9 0A:90A9: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x0290BA 0A:90AA: 17        .byte con_T + $17   ; 
- D 0 - I - 0x0290BB 0A:90AB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0290BC 0A:90AC: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x0290BD 0A:90AD: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x0290BE 0A:90AE: 19        .byte con_T + $19   ; 
- D 0 - I - 0x0290BF 0A:90AF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0290C0 0A:90B0: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x0290C1 0A:90B1: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x0290C2 0A:90B2: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x0290C3 0A:90B3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0290C4 0A:90B4: 02        .byte con_X + $02   ; 

- D 0 - I - 0x0290C5 0A:90B5: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0290C6 0A:90B6: 43        .byte con_T + $43   ; 
- D 0 - I - 0x0290C7 0A:90B7: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0290C8 0A:90B8: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x0290C9 0A:90B9: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0290CA 0A:90BA: 49        .byte con_T + $49   ; 
- D 0 - I - 0x0290CB 0A:90BB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0290CC 0A:90BC: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x0290CD 0A:90BD: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0290CE 0A:90BE: 43        .byte con_T + $43   ; 
- D 0 - I - 0x0290CF 0A:90BF: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0290D0 0A:90C0: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x0290D1 0A:90C1: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0290D2 0A:90C2: 41        .byte con_T + $41   ; 
- D 0 - I - 0x0290D3 0A:90C3: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0290D4 0A:90C4: 07        .byte con_X + $07   ; 
@end:



_off007_90C5_0C:
- D 0 - I - 0x0290D5 0A:90C5: 0C        .byte (@end - * - 1) / 4

- D 0 - I - 0x0290D6 0A:90C6: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x0290D7 0A:90C7: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0290D8 0A:90C8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0290D9 0A:90C9: F1        .byte con_X + $F1   ; 

- D 0 - I - 0x0290DA 0A:90CA: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x0290DB 0A:90CB: 03        .byte con_T + $03   ; 
- D 0 - I - 0x0290DC 0A:90CC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0290DD 0A:90CD: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x0290DE 0A:90CE: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x0290DF 0A:90CF: 11        .byte con_T + $11   ; 
- D 0 - I - 0x0290E0 0A:90D0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0290E1 0A:90D1: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x0290E2 0A:90D2: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x0290E3 0A:90D3: 13        .byte con_T + $13   ; 
- D 0 - I - 0x0290E4 0A:90D4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0290E5 0A:90D5: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0290E6 0A:90D6: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x0290E7 0A:90D7: 15        .byte con_T + $15   ; 
- D 0 - I - 0x0290E8 0A:90D8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0290E9 0A:90D9: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0290EA 0A:90DA: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x0290EB 0A:90DB: 17        .byte con_T + $17   ; 
- D 0 - I - 0x0290EC 0A:90DC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0290ED 0A:90DD: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x0290EE 0A:90DE: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x0290EF 0A:90DF: 19        .byte con_T + $19   ; 
- D 0 - I - 0x0290F0 0A:90E0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0290F1 0A:90E1: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0290F2 0A:90E2: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x0290F3 0A:90E3: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x0290F4 0A:90E4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0290F5 0A:90E5: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0290F6 0A:90E6: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0290F7 0A:90E7: 43        .byte con_T + $43   ; 
- D 0 - I - 0x0290F8 0A:90E8: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0290F9 0A:90E9: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x0290FA 0A:90EA: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0290FB 0A:90EB: 49        .byte con_T + $49   ; 
- D 0 - I - 0x0290FC 0A:90EC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0290FD 0A:90ED: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0290FE 0A:90EE: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0290FF 0A:90EF: 43        .byte con_T + $43   ; 
- D 0 - I - 0x029100 0A:90F0: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029101 0A:90F1: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x029102 0A:90F2: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x029103 0A:90F3: 41        .byte con_T + $41   ; 
- D 0 - I - 0x029104 0A:90F4: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029105 0A:90F5: 05        .byte con_X + $05   ; 
@end:



_off007_90F6_0D:
- D 0 - I - 0x029106 0A:90F6: 0B        .byte (@end - * - 1) / 4

- D 0 - I - 0x029107 0A:90F7: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029108 0A:90F8: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029109 0A:90F9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02910A 0A:90FA: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x02910B 0A:90FB: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x02910C 0A:90FC: 03        .byte con_T + $03   ; 
- D 0 - I - 0x02910D 0A:90FD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02910E 0A:90FE: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x02910F 0A:90FF: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029110 0A:9100: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029111 0A:9101: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029112 0A:9102: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x029113 0A:9103: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029114 0A:9104: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029115 0A:9105: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029116 0A:9106: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x029117 0A:9107: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029118 0A:9108: 09        .byte con_T + $09   ; 
- D 0 - I - 0x029119 0A:9109: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02911A 0A:910A: 05        .byte con_X + $05   ; 

- D 0 - I - 0x02911B 0A:910B: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02911C 0A:910C: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x02911D 0A:910D: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02911E 0A:910E: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x02911F 0A:910F: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029120 0A:9110: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029121 0A:9111: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029122 0A:9112: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x029123 0A:9113: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029124 0A:9114: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029125 0A:9115: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029126 0A:9116: 05        .byte con_X + $05   ; 

- D 0 - I - 0x029127 0A:9117: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029128 0A:9118: 47        .byte con_T + $47   ; 
- D 0 - I - 0x029129 0A:9119: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02912A 0A:911A: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x02912B 0A:911B: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02912C 0A:911C: 43        .byte con_T + $43   ; 
- D 0 - I - 0x02912D 0A:911D: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02912E 0A:911E: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x02912F 0A:911F: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029130 0A:9120: 49        .byte con_T + $49   ; 
- D 0 - I - 0x029131 0A:9121: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029132 0A:9122: 06        .byte con_X + $06   ; 
@end:



_off007_9123_0E:
- D 0 - I - 0x029133 0A:9123: 0C        .byte (@end - * - 1) / 4

- D 0 - I - 0x029134 0A:9124: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029135 0A:9125: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029136 0A:9126: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029137 0A:9127: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x029138 0A:9128: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029139 0A:9129: 03        .byte con_T + $03   ; 
- D 0 - I - 0x02913A 0A:912A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02913B 0A:912B: 01        .byte con_X + $01   ; 

- D 0 - I - 0x02913C 0A:912C: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02913D 0A:912D: 05        .byte con_T + $05   ; 
- D 0 - I - 0x02913E 0A:912E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02913F 0A:912F: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x029140 0A:9130: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029141 0A:9131: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029142 0A:9132: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029143 0A:9133: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x029144 0A:9134: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029145 0A:9135: 09        .byte con_T + $09   ; 
- D 0 - I - 0x029146 0A:9136: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029147 0A:9137: 05        .byte con_X + $05   ; 

- D 0 - I - 0x029148 0A:9138: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029149 0A:9139: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x02914A 0A:913A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02914B 0A:913B: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x02914C 0A:913C: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02914D 0A:913D: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x02914E 0A:913E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02914F 0A:913F: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x029150 0A:9140: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029151 0A:9141: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029152 0A:9142: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029153 0A:9143: 05        .byte con_X + $05   ; 

- D 0 - I - 0x029154 0A:9144: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029155 0A:9145: 49        .byte con_T + $49   ; 
- D 0 - I - 0x029156 0A:9146: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029157 0A:9147: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x029158 0A:9148: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029159 0A:9149: 43        .byte con_T + $43   ; 
- D 0 - I - 0x02915A 0A:914A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02915B 0A:914B: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x02915C 0A:914C: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02915D 0A:914D: 43        .byte con_T + $43   ; 
- D 0 - I - 0x02915E 0A:914E: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02915F 0A:914F: 01        .byte con_X + $01   ; 

- D 0 - I - 0x029160 0A:9150: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029161 0A:9151: 49        .byte con_T + $49   ; 
- D 0 - I - 0x029162 0A:9152: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029163 0A:9153: 09        .byte con_X + $09   ; 
@end:



_off007_9154_0F:
- D 0 - I - 0x029164 0A:9154: 0B        .byte (@end - * - 1) / 4

- D 0 - I - 0x029165 0A:9155: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029166 0A:9156: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029167 0A:9157: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029168 0A:9158: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x029169 0A:9159: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x02916A 0A:915A: 03        .byte con_T + $03   ; 
- D 0 - I - 0x02916B 0A:915B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02916C 0A:915C: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x02916D 0A:915D: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02916E 0A:915E: 11        .byte con_T + $11   ; 
- D 0 - I - 0x02916F 0A:915F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029170 0A:9160: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x029171 0A:9161: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029172 0A:9162: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x029173 0A:9163: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029174 0A:9164: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x029175 0A:9165: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029176 0A:9166: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x029177 0A:9167: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029178 0A:9168: 04        .byte con_X + $04   ; 

- D 0 - I - 0x029179 0A:9169: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02917A 0A:916A: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x02917B 0A:916B: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02917C 0A:916C: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x02917D 0A:916D: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02917E 0A:916E: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x02917F 0A:916F: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029180 0A:9170: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x029181 0A:9171: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029182 0A:9172: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029183 0A:9173: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029184 0A:9174: 04        .byte con_X + $04   ; 

- D 0 - I - 0x029185 0A:9175: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029186 0A:9176: 47        .byte con_T + $47   ; 
- D 0 - I - 0x029187 0A:9177: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029188 0A:9178: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x029189 0A:9179: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02918A 0A:917A: 43        .byte con_T + $43   ; 
- D 0 - I - 0x02918B 0A:917B: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02918C 0A:917C: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x02918D 0A:917D: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02918E 0A:917E: 49        .byte con_T + $49   ; 
- D 0 - I - 0x02918F 0A:917F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029190 0A:9180: 05        .byte con_X + $05   ; 
@end:



_off007_9181_10:
- D 0 - I - 0x029191 0A:9181: 0E        .byte (@end - * - 1) / 4

- D 0 - I - 0x029192 0A:9182: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x029193 0A:9183: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029194 0A:9184: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029195 0A:9185: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x029196 0A:9186: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x029197 0A:9187: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029198 0A:9188: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029199 0A:9189: 03        .byte con_X + $03   ; 

- D 0 - I - 0x02919A 0A:918A: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x02919B 0A:918B: 05        .byte con_T + $05   ; 
- D 0 - I - 0x02919C 0A:918C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02919D 0A:918D: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x02919E 0A:918E: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x02919F 0A:918F: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x0291A0 0A:9190: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0291A1 0A:9191: 01        .byte con_X + $01   ; 

- D 0 - I - 0x0291A2 0A:9192: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x0291A3 0A:9193: 25        .byte con_T + $25   ; 
- D 0 - I - 0x0291A4 0A:9194: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0291A5 0A:9195: 09        .byte con_X + $09   ; 

- D 0 - I - 0x0291A6 0A:9196: C6        .byte con_Y + $C6   ; 
- D 0 - I - 0x0291A7 0A:9197: 27        .byte con_T + $27   ; 
- D 0 - I - 0x0291A8 0A:9198: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0291A9 0A:9199: 11        .byte con_X + $11   ; 

- D 0 - I - 0x0291AA 0A:919A: C6        .byte con_Y + $C6   ; 
- D 0 - I - 0x0291AB 0A:919B: 29        .byte con_T + $29   ; 
- D 0 - I - 0x0291AC 0A:919C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0291AD 0A:919D: 19        .byte con_X + $19   ; 

- D 0 - I - 0x0291AE 0A:919E: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x0291AF 0A:919F: 17        .byte con_T + $17   ; 
- D 0 - I - 0x0291B0 0A:91A0: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0291B1 0A:91A1: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0291B2 0A:91A2: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x0291B3 0A:91A3: 19        .byte con_T + $19   ; 
- D 0 - I - 0x0291B4 0A:91A4: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0291B5 0A:91A5: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0291B6 0A:91A6: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x0291B7 0A:91A7: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x0291B8 0A:91A8: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0291B9 0A:91A9: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0291BA 0A:91AA: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0291BB 0A:91AB: 41        .byte con_T + $41   ; 
- D 0 - I - 0x0291BC 0A:91AC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0291BD 0A:91AD: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x0291BE 0A:91AE: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0291BF 0A:91AF: 43        .byte con_T + $43   ; 
- D 0 - I - 0x0291C0 0A:91B0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0291C1 0A:91B1: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x0291C2 0A:91B2: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0291C3 0A:91B3: 49        .byte con_T + $49   ; 
- D 0 - I - 0x0291C4 0A:91B4: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0291C5 0A:91B5: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0291C6 0A:91B6: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0291C7 0A:91B7: 43        .byte con_T + $43   ; 
- D 0 - I - 0x0291C8 0A:91B8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0291C9 0A:91B9: 04        .byte con_X + $04   ; 
@end:



_off007_91BA_11:
- D 0 - I - 0x0291CA 0A:91BA: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x0291CB 0A:91BB: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x0291CC 0A:91BC: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0291CD 0A:91BD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0291CE 0A:91BE: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x0291CF 0A:91BF: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x0291D0 0A:91C0: 03        .byte con_T + $03   ; 
- D 0 - I - 0x0291D1 0A:91C1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0291D2 0A:91C2: 03        .byte con_X + $03   ; 

- D 0 - I - 0x0291D3 0A:91C3: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0291D4 0A:91C4: 05        .byte con_T + $05   ; 
- D 0 - I - 0x0291D5 0A:91C5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0291D6 0A:91C6: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x0291D7 0A:91C7: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0291D8 0A:91C8: 07        .byte con_T + $07   ; 
- D 0 - I - 0x0291D9 0A:91C9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0291DA 0A:91CA: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x0291DB 0A:91CB: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0291DC 0A:91CC: 09        .byte con_T + $09   ; 
- D 0 - I - 0x0291DD 0A:91CD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0291DE 0A:91CE: 07        .byte con_X + $07   ; 

- D 0 - I - 0x0291DF 0A:91CF: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0291E0 0A:91D0: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x0291E1 0A:91D1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0291E2 0A:91D2: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x0291E3 0A:91D3: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0291E4 0A:91D4: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x0291E5 0A:91D5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0291E6 0A:91D6: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x0291E7 0A:91D7: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0291E8 0A:91D8: 59        .byte con_T + $59   ; 
- D 0 - I - 0x0291E9 0A:91D9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0291EA 0A:91DA: 05        .byte con_X + $05   ; 

- D 0 - I - 0x0291EB 0A:91DB: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0291EC 0A:91DC: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x0291ED 0A:91DD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0291EE 0A:91DE: FA        .byte con_X + $FA   ; 
@end:



_off007_91DF_12:
- D 0 - I - 0x0291EF 0A:91DF: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x0291F0 0A:91E0: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x0291F1 0A:91E1: 19        .byte con_T + $19   ; 
- D 0 - I - 0x0291F2 0A:91E2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0291F3 0A:91E3: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x0291F4 0A:91E4: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x0291F5 0A:91E5: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x0291F6 0A:91E6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0291F7 0A:91E7: 06        .byte con_X + $06   ; 

- D 0 - I - 0x0291F8 0A:91E8: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0291F9 0A:91E9: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x0291FA 0A:91EA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0291FB 0A:91EB: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x0291FC 0A:91EC: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0291FD 0A:91ED: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x0291FE 0A:91EE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0291FF 0A:91EF: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029200 0A:91F0: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029201 0A:91F1: 29        .byte con_T + $29   ; 
- D 0 - I - 0x029202 0A:91F2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029203 0A:91F3: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x029204 0A:91F4: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x029205 0A:91F5: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x029206 0A:91F6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029207 0A:91F7: 13        .byte con_X + $13   ; 

- D 0 - I - 0x029208 0A:91F8: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029209 0A:91F9: 59        .byte con_T + $59   ; 
- D 0 - I - 0x02920A 0A:91FA: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02920B 0A:91FB: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x02920C 0A:91FC: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02920D 0A:91FD: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x02920E 0A:91FE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02920F 0A:91FF: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x029210 0A:9200: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029211 0A:9201: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x029212 0A:9202: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029213 0A:9203: 05        .byte con_X + $05   ; 

- D 0 - I - 0x029214 0A:9204: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029215 0A:9205: 31        .byte con_T + $31   ; 
- D 0 - I - 0x029216 0A:9206: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029217 0A:9207: 00        .byte con_X + $00   ; 
@end:



_off007_9208_13:
- D 0 - I - 0x029218 0A:9208: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x029219 0A:9209: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02921A 0A:920A: 01        .byte con_T + $01   ; 
- D 0 - I - 0x02921B 0A:920B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02921C 0A:920C: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x02921D 0A:920D: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02921E 0A:920E: 03        .byte con_T + $03   ; 
- D 0 - I - 0x02921F 0A:920F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029220 0A:9210: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029221 0A:9211: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029222 0A:9212: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029223 0A:9213: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029224 0A:9214: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x029225 0A:9215: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029226 0A:9216: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029227 0A:9217: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029228 0A:9218: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x029229 0A:9219: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02922A 0A:921A: 09        .byte con_T + $09   ; 
- D 0 - I - 0x02922B 0A:921B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02922C 0A:921C: 07        .byte con_X + $07   ; 

- D 0 - I - 0x02922D 0A:921D: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02922E 0A:921E: 55        .byte con_T + $55   ; 
- D 0 - I - 0x02922F 0A:921F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029230 0A:9220: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x029231 0A:9221: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029232 0A:9222: 57        .byte con_T + $57   ; 
- D 0 - I - 0x029233 0A:9223: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029234 0A:9224: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x029235 0A:9225: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029236 0A:9226: 59        .byte con_T + $59   ; 
- D 0 - I - 0x029237 0A:9227: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029238 0A:9228: 05        .byte con_X + $05   ; 
@end:



_off007_9229_14:
- D 0 - I - 0x029239 0A:9229: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x02923A 0A:922A: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02923B 0A:922B: 19        .byte con_T + $19   ; 
- D 0 - I - 0x02923C 0A:922C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02923D 0A:922D: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x02923E 0A:922E: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02923F 0A:922F: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x029240 0A:9230: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029241 0A:9231: 01        .byte con_X + $01   ; 

- D 0 - I - 0x029242 0A:9232: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029243 0A:9233: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x029244 0A:9234: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029245 0A:9235: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x029246 0A:9236: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029247 0A:9237: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x029248 0A:9238: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029249 0A:9239: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x02924A 0A:923A: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02924B 0A:923B: 23        .byte con_T + $23   ; 
- D 0 - I - 0x02924C 0A:923C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02924D 0A:923D: 06        .byte con_X + $06   ; 

- D 0 - I - 0x02924E 0A:923E: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x02924F 0A:923F: 25        .byte con_T + $25   ; 
- D 0 - I - 0x029250 0A:9240: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029251 0A:9241: 0E        .byte con_X + $0E   ; 

- D 0 - I - 0x029252 0A:9242: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x029253 0A:9243: 27        .byte con_T + $27   ; 
- D 0 - I - 0x029254 0A:9244: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029255 0A:9245: 16        .byte con_X + $16   ; 

- D 0 - I - 0x029256 0A:9246: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029257 0A:9247: 55        .byte con_T + $55   ; 
- D 0 - I - 0x029258 0A:9248: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029259 0A:9249: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x02925A 0A:924A: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02925B 0A:924B: 57        .byte con_T + $57   ; 
- D 0 - I - 0x02925C 0A:924C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02925D 0A:924D: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x02925E 0A:924E: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02925F 0A:924F: 59        .byte con_T + $59   ; 
- D 0 - I - 0x029260 0A:9250: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029261 0A:9251: 05        .byte con_X + $05   ; 
@end:



_off007_9252_15:
- D 0 - I - 0x029262 0A:9252: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x029263 0A:9253: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029264 0A:9254: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029265 0A:9255: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029266 0A:9256: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x029267 0A:9257: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029268 0A:9258: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029269 0A:9259: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02926A 0A:925A: 03        .byte con_X + $03   ; 

- D 0 - I - 0x02926B 0A:925B: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02926C 0A:925C: 05        .byte con_T + $05   ; 
- D 0 - I - 0x02926D 0A:925D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02926E 0A:925E: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x02926F 0A:925F: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029270 0A:9260: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029271 0A:9261: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029272 0A:9262: 01        .byte con_X + $01   ; 

- D 0 - I - 0x029273 0A:9263: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029274 0A:9264: 09        .byte con_T + $09   ; 
- D 0 - I - 0x029275 0A:9265: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029276 0A:9266: 09        .byte con_X + $09   ; 

- D 0 - I - 0x029277 0A:9267: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029278 0A:9268: 49        .byte con_T + $49   ; 
- D 0 - I - 0x029279 0A:9269: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02927A 0A:926A: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x02927B 0A:926B: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02927C 0A:926C: 43        .byte con_T + $43   ; 
- D 0 - I - 0x02927D 0A:926D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02927E 0A:926E: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x02927F 0A:926F: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029280 0A:9270: 47        .byte con_T + $47   ; 
- D 0 - I - 0x029281 0A:9271: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029282 0A:9272: 07        .byte con_X + $07   ; 
@end:



_off007_9273_16:
- D 0 - I - 0x029283 0A:9273: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x029284 0A:9274: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029285 0A:9275: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029286 0A:9276: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029287 0A:9277: 09        .byte con_X + $09   ; 

- D 0 - I - 0x029288 0A:9278: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029289 0A:9279: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x02928A 0A:927A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02928B 0A:927B: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x02928C 0A:927C: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02928D 0A:927D: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x02928E 0A:927E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02928F 0A:927F: 04        .byte con_X + $04   ; 

- D 0 - I - 0x029290 0A:9280: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029291 0A:9281: 11        .byte con_T + $11   ; 
- D 0 - I - 0x029292 0A:9282: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029293 0A:9283: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x029294 0A:9284: C8        .byte con_Y + $C8   ; 
- D 0 - I - 0x029295 0A:9285: 13        .byte con_T + $13   ; 
- D 0 - I - 0x029296 0A:9286: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029297 0A:9287: 14        .byte con_X + $14   ; 

- D 0 - I - 0x029298 0A:9288: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029299 0A:9289: 15        .byte con_T + $15   ; 
- D 0 - I - 0x02929A 0A:928A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02929B 0A:928B: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x02929C 0A:928C: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02929D 0A:928D: 17        .byte con_T + $17   ; 
- D 0 - I - 0x02929E 0A:928E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02929F 0A:928F: 07        .byte con_X + $07   ; 

- D 0 - I - 0x0292A0 0A:9290: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0292A1 0A:9291: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x0292A2 0A:9292: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0292A3 0A:9293: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x0292A4 0A:9294: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0292A5 0A:9295: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x0292A6 0A:9296: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0292A7 0A:9297: 01        .byte con_X + $01   ; 

- D 0 - I - 0x0292A8 0A:9298: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0292A9 0A:9299: 47        .byte con_T + $47   ; 
- D 0 - I - 0x0292AA 0A:929A: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0292AB 0A:929B: 09        .byte con_X + $09   ; 
@end:



_off007_929C_17:
- D 0 - I - 0x0292AC 0A:929C: 0C        .byte (@end - * - 1) / 4

- D 0 - I - 0x0292AD 0A:929D: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x0292AE 0A:929E: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0292AF 0A:929F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0292B0 0A:92A0: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x0292B1 0A:92A1: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x0292B2 0A:92A2: 03        .byte con_T + $03   ; 
- D 0 - I - 0x0292B3 0A:92A3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0292B4 0A:92A4: 07        .byte con_X + $07   ; 

- D 0 - I - 0x0292B5 0A:92A5: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0292B6 0A:92A6: 05        .byte con_T + $05   ; 
- D 0 - I - 0x0292B7 0A:92A7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0292B8 0A:92A8: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x0292B9 0A:92A9: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0292BA 0A:92AA: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x0292BB 0A:92AB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0292BC 0A:92AC: 05        .byte con_X + $05   ; 

- D 0 - I - 0x0292BD 0A:92AD: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0292BE 0A:92AE: 21        .byte con_T + $21   ; 
- D 0 - I - 0x0292BF 0A:92AF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0292C0 0A:92B0: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x0292C1 0A:92B1: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0292C2 0A:92B2: 23        .byte con_T + $23   ; 
- D 0 - I - 0x0292C3 0A:92B3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0292C4 0A:92B4: 15        .byte con_X + $15   ; 

- D 0 - I - 0x0292C5 0A:92B5: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0292C6 0A:92B6: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x0292C7 0A:92B7: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0292C8 0A:92B8: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x0292C9 0A:92B9: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0292CA 0A:92BA: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x0292CB 0A:92BB: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0292CC 0A:92BC: 05        .byte con_X + $05   ; 

- D 0 - I - 0x0292CD 0A:92BD: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0292CE 0A:92BE: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x0292CF 0A:92BF: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0292D0 0A:92C0: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x0292D1 0A:92C1: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0292D2 0A:92C2: 49        .byte con_T + $49   ; 
- D 0 - I - 0x0292D3 0A:92C3: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0292D4 0A:92C4: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0292D5 0A:92C5: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0292D6 0A:92C6: 43        .byte con_T + $43   ; 
- D 0 - I - 0x0292D7 0A:92C7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0292D8 0A:92C8: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0292D9 0A:92C9: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0292DA 0A:92CA: 47        .byte con_T + $47   ; 
- D 0 - I - 0x0292DB 0A:92CB: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0292DC 0A:92CC: 0A        .byte con_X + $0A   ; 
@end:



_off007_92CD_18:
- D 0 - I - 0x0292DD 0A:92CD: 0C        .byte (@end - * - 1) / 4

- D 0 - I - 0x0292DE 0A:92CE: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x0292DF 0A:92CF: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x0292E0 0A:92D0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0292E1 0A:92D1: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x0292E2 0A:92D2: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x0292E3 0A:92D3: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x0292E4 0A:92D4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0292E5 0A:92D5: 07        .byte con_X + $07   ; 

- D 0 - I - 0x0292E6 0A:92D6: BE        .byte con_Y + $BE   ; 
- D 0 - I - 0x0292E7 0A:92D7: 3F        .byte con_T + $3F   ; 
- D 0 - I - 0x0292E8 0A:92D8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0292E9 0A:92D9: 0E        .byte con_X + $0E   ; 

- D 0 - I - 0x0292EA 0A:92DA: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0292EB 0A:92DB: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x0292EC 0A:92DC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0292ED 0A:92DD: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x0292EE 0A:92DE: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0292EF 0A:92DF: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x0292F0 0A:92E0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0292F1 0A:92E1: 07        .byte con_X + $07   ; 

- D 0 - I - 0x0292F2 0A:92E2: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x0292F3 0A:92E3: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x0292F4 0A:92E4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0292F5 0A:92E5: 0E        .byte con_X + $0E   ; 

- D 0 - I - 0x0292F6 0A:92E6: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0292F7 0A:92E7: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x0292F8 0A:92E8: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0292F9 0A:92E9: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x0292FA 0A:92EA: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0292FB 0A:92EB: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x0292FC 0A:92EC: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0292FD 0A:92ED: 06        .byte con_X + $06   ; 

- D 0 - I - 0x0292FE 0A:92EE: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0292FF 0A:92EF: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029300 0A:92F0: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029301 0A:92F1: 0E        .byte con_X + $0E   ; 

- D 0 - I - 0x029302 0A:92F2: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029303 0A:92F3: 49        .byte con_T + $49   ; 
- D 0 - I - 0x029304 0A:92F4: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029305 0A:92F5: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x029306 0A:92F6: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029307 0A:92F7: 43        .byte con_T + $43   ; 
- D 0 - I - 0x029308 0A:92F8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029309 0A:92F9: 01        .byte con_X + $01   ; 

- D 0 - I - 0x02930A 0A:92FA: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02930B 0A:92FB: 47        .byte con_T + $47   ; 
- D 0 - I - 0x02930C 0A:92FC: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02930D 0A:92FD: 0B        .byte con_X + $0B   ; 
@end:



_off007_92FE_19:
- D 0 - I - 0x02930E 0A:92FE: 0C        .byte (@end - * - 1) / 4

- D 0 - I - 0x02930F 0A:92FF: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x029310 0A:9300: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029311 0A:9301: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029312 0A:9302: 04        .byte con_X + $04   ; 

- D 0 - I - 0x029313 0A:9303: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x029314 0A:9304: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029315 0A:9305: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029316 0A:9306: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x029317 0A:9307: D6        .byte con_Y + $D6   ; 
- D 0 - I - 0x029318 0A:9308: 29        .byte con_T + $29   ; 
- D 0 - I - 0x029319 0A:9309: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02931A 0A:930A: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x02931B 0A:930B: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x02931C 0A:930C: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x02931D 0A:930D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02931E 0A:930E: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x02931F 0A:930F: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x029320 0A:9310: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x029321 0A:9311: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029322 0A:9312: 05        .byte con_X + $05   ; 

- D 0 - I - 0x029323 0A:9313: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x029324 0A:9314: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x029325 0A:9315: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029326 0A:9316: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x029327 0A:9317: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x029328 0A:9318: 31        .byte con_T + $31   ; 
- D 0 - I - 0x029329 0A:9319: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02932A 0A:931A: 15        .byte con_X + $15   ; 

- D 0 - I - 0x02932B 0A:931B: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x02932C 0A:931C: 27        .byte con_T + $27   ; 
- D 0 - I - 0x02932D 0A:931D: 80        .byte con_A + $80   ; 
- D 0 - I - 0x02932E 0A:931E: 1D        .byte con_X + $1D   ; 

- D 0 - I - 0x02932F 0A:931F: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x029330 0A:9320: 25        .byte con_T + $25   ; 
- D 0 - I - 0x029331 0A:9321: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029332 0A:9322: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x029333 0A:9323: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x029334 0A:9324: 43        .byte con_T + $43   ; 
- D 0 - I - 0x029335 0A:9325: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029336 0A:9326: 02        .byte con_X + $02   ; 

- D 0 - I - 0x029337 0A:9327: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x029338 0A:9328: 33        .byte con_T + $33   ; 
- D 0 - I - 0x029339 0A:9329: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02933A 0A:932A: 00        .byte con_X + $00   ; 

- D 0 - I - 0x02933B 0A:932B: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x02933C 0A:932C: 35        .byte con_T + $35   ; 
- D 0 - I - 0x02933D 0A:932D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02933E 0A:932E: 08        .byte con_X + $08   ; 
@end:



_off007_932F_1A:
- D 0 - I - 0x02933F 0A:932F: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x029340 0A:9330: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029341 0A:9331: 5D        .byte con_T + $5D   ; 
- D 0 - I - 0x029342 0A:9332: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029343 0A:9333: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x029344 0A:9334: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029345 0A:9335: 5F        .byte con_T + $5F   ; 
- D 0 - I - 0x029346 0A:9336: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029347 0A:9337: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x029348 0A:9338: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029349 0A:9339: 11        .byte con_T + $11   ; 
- D 0 - I - 0x02934A 0A:933A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02934B 0A:933B: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x02934C 0A:933C: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02934D 0A:933D: 13        .byte con_T + $13   ; 
- D 0 - I - 0x02934E 0A:933E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02934F 0A:933F: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x029350 0A:9340: C8        .byte con_Y + $C8   ; 
- D 0 - I - 0x029351 0A:9341: 15        .byte con_T + $15   ; 
- D 0 - I - 0x029352 0A:9342: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029353 0A:9343: 04        .byte con_X + $04   ; 

- D 0 - I - 0x029354 0A:9344: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029355 0A:9345: 37        .byte con_T + $37   ; 
- D 0 - I - 0x029356 0A:9346: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029357 0A:9347: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x029358 0A:9348: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029359 0A:9349: 39        .byte con_T + $39   ; 
- D 0 - I - 0x02935A 0A:934A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02935B 0A:934B: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x02935C 0A:934C: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02935D 0A:934D: 59        .byte con_T + $59   ; 
- D 0 - I - 0x02935E 0A:934E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02935F 0A:934F: 05        .byte con_X + $05   ; 

- D 0 - I - 0x029360 0A:9350: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029361 0A:9351: 47        .byte con_T + $47   ; 
- D 0 - I - 0x029362 0A:9352: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029363 0A:9353: F5        .byte con_X + $F5   ; 
@end:



_off007_9354_1B:
- D 0 - I - 0x029364 0A:9354: 0B        .byte (@end - * - 1) / 4

- D 0 - I - 0x029365 0A:9355: CB        .byte con_Y + $CB   ; 
- D 0 - I - 0x029366 0A:9356: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029367 0A:9357: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029368 0A:9358: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029369 0A:9359: CB        .byte con_Y + $CB   ; 
- D 0 - I - 0x02936A 0A:935A: 03        .byte con_T + $03   ; 
- D 0 - I - 0x02936B 0A:935B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02936C 0A:935C: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x02936D 0A:935D: CB        .byte con_Y + $CB   ; 
- D 0 - I - 0x02936E 0A:935E: 05        .byte con_T + $05   ; 
- D 0 - I - 0x02936F 0A:935F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029370 0A:9360: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029371 0A:9361: DB        .byte con_Y + $DB   ; 
- D 0 - I - 0x029372 0A:9362: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029373 0A:9363: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029374 0A:9364: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x029375 0A:9365: DB        .byte con_Y + $DB   ; 
- D 0 - I - 0x029376 0A:9366: 09        .byte con_T + $09   ; 
- D 0 - I - 0x029377 0A:9367: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029378 0A:9368: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x029379 0A:9369: DB        .byte con_Y + $DB   ; 
- D 0 - I - 0x02937A 0A:936A: 19        .byte con_T + $19   ; 
- D 0 - I - 0x02937B 0A:936B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02937C 0A:936C: 02        .byte con_X + $02   ; 

- D 0 - I - 0x02937D 0A:936D: D8        .byte con_Y + $D8   ; 
- D 0 - I - 0x02937E 0A:936E: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x02937F 0A:936F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029380 0A:9370: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x029381 0A:9371: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029382 0A:9372: 15        .byte con_T + $15   ; 
- D 0 - I - 0x029383 0A:9373: 80        .byte con_A + $80   ; 
- D 0 - I - 0x029384 0A:9374: 12        .byte con_X + $12   ; 

- D 0 - I - 0x029385 0A:9375: D4        .byte con_Y + $D4   ; 
- D 0 - I - 0x029386 0A:9376: 17        .byte con_T + $17   ; 
- D 0 - I - 0x029387 0A:9377: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029388 0A:9378: 1A        .byte con_X + $1A   ; 

- D 0 - I - 0x029389 0A:9379: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x02938A 0A:937A: 41        .byte con_T + $41   ; 
- D 0 - I - 0x02938B 0A:937B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02938C 0A:937C: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x02938D 0A:937D: EB        .byte con_Y + $EB   ; 
- D 0 - I - 0x02938E 0A:937E: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x02938F 0A:937F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029390 0A:9380: F9        .byte con_X + $F9   ; 
@end:



_off007_9381_1C:
- D 0 - I - 0x029391 0A:9381: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x029392 0A:9382: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029393 0A:9383: 5D        .byte con_T + $5D   ; 
- D 0 - I - 0x029394 0A:9384: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029395 0A:9385: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x029396 0A:9386: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029397 0A:9387: 5F        .byte con_T + $5F   ; 
- D 0 - I - 0x029398 0A:9388: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029399 0A:9389: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x02939A 0A:938A: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02939B 0A:938B: 11        .byte con_T + $11   ; 
- D 0 - I - 0x02939C 0A:938C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02939D 0A:938D: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x02939E 0A:938E: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02939F 0A:938F: 13        .byte con_T + $13   ; 
- D 0 - I - 0x0293A0 0A:9390: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293A1 0A:9391: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0293A2 0A:9392: C8        .byte con_Y + $C8   ; 
- D 0 - I - 0x0293A3 0A:9393: 15        .byte con_T + $15   ; 
- D 0 - I - 0x0293A4 0A:9394: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293A5 0A:9395: 04        .byte con_X + $04   ; 

- D 0 - I - 0x0293A6 0A:9396: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0293A7 0A:9397: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x0293A8 0A:9398: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293A9 0A:9399: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x0293AA 0A:939A: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0293AB 0A:939B: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x0293AC 0A:939C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293AD 0A:939D: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x0293AE 0A:939E: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0293AF 0A:939F: 59        .byte con_T + $59   ; 
- D 0 - I - 0x0293B0 0A:93A0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293B1 0A:93A1: 05        .byte con_X + $05   ; 

- D 0 - I - 0x0293B2 0A:93A2: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0293B3 0A:93A3: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x0293B4 0A:93A4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293B5 0A:93A5: FA        .byte con_X + $FA   ; 
@end:



_off007_93A6_1D:
- D 0 - I - 0x0293B6 0A:93A6: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x0293B7 0A:93A7: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x0293B8 0A:93A8: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0293B9 0A:93A9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293BA 0A:93AA: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x0293BB 0A:93AB: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x0293BC 0A:93AC: 03        .byte con_T + $03   ; 
- D 0 - I - 0x0293BD 0A:93AD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293BE 0A:93AE: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x0293BF 0A:93AF: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x0293C0 0A:93B0: 05        .byte con_T + $05   ; 
- D 0 - I - 0x0293C1 0A:93B1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293C2 0A:93B2: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x0293C3 0A:93B3: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x0293C4 0A:93B4: 07        .byte con_T + $07   ; 
- D 0 - I - 0x0293C5 0A:93B5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293C6 0A:93B6: F1        .byte con_X + $F1   ; 

- D 0 - I - 0x0293C7 0A:93B7: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x0293C8 0A:93B8: 09        .byte con_T + $09   ; 
- D 0 - I - 0x0293C9 0A:93B9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293CA 0A:93BA: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x0293CB 0A:93BB: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x0293CC 0A:93BC: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x0293CD 0A:93BD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293CE 0A:93BE: 09        .byte con_X + $09   ; 

- D 0 - I - 0x0293CF 0A:93BF: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x0293D0 0A:93C0: 15        .byte con_T + $15   ; 
- D 0 - I - 0x0293D1 0A:93C1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293D2 0A:93C2: 11        .byte con_X + $11   ; 

- D 0 - I - 0x0293D3 0A:93C3: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x0293D4 0A:93C4: 17        .byte con_T + $17   ; 
- D 0 - I - 0x0293D5 0A:93C5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293D6 0A:93C6: 19        .byte con_X + $19   ; 

- D 0 - I - 0x0293D7 0A:93C7: E7        .byte con_Y + $E7   ; 
- D 0 - I - 0x0293D8 0A:93C8: 11        .byte con_T + $11   ; 
- D 0 - I - 0x0293D9 0A:93C9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293DA 0A:93CA: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0293DB 0A:93CB: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x0293DC 0A:93CC: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x0293DD 0A:93CD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293DE 0A:93CE: 01        .byte con_X + $01   ; 
@end:



_off007_93CF_1E:
- D 0 - I - 0x0293DF 0A:93CF: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x0293E0 0A:93D0: DA        .byte con_Y + $DA   ; 
- D 0 - I - 0x0293E1 0A:93D1: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0293E2 0A:93D2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293E3 0A:93D3: ED        .byte con_X + $ED   ; 

- D 0 - I - 0x0293E4 0A:93D4: DA        .byte con_Y + $DA   ; 
- D 0 - I - 0x0293E5 0A:93D5: 03        .byte con_T + $03   ; 
- D 0 - I - 0x0293E6 0A:93D6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293E7 0A:93D7: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x0293E8 0A:93D8: DA        .byte con_Y + $DA   ; 
- D 0 - I - 0x0293E9 0A:93D9: 05        .byte con_T + $05   ; 
- D 0 - I - 0x0293EA 0A:93DA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293EB 0A:93DB: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x0293EC 0A:93DC: EA        .byte con_Y + $EA   ; 
- D 0 - I - 0x0293ED 0A:93DD: 07        .byte con_T + $07   ; 
- D 0 - I - 0x0293EE 0A:93DE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293EF 0A:93DF: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x0293F0 0A:93E0: EA        .byte con_Y + $EA   ; 
- D 0 - I - 0x0293F1 0A:93E1: 09        .byte con_T + $09   ; 
- D 0 - I - 0x0293F2 0A:93E2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293F3 0A:93E3: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x0293F4 0A:93E4: EA        .byte con_Y + $EA   ; 
- D 0 - I - 0x0293F5 0A:93E5: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x0293F6 0A:93E6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293F7 0A:93E7: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x0293F8 0A:93E8: EA        .byte con_Y + $EA   ; 
- D 0 - I - 0x0293F9 0A:93E9: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x0293FA 0A:93EA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293FB 0A:93EB: 07        .byte con_X + $07   ; 

- D 0 - I - 0x0293FC 0A:93EC: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x0293FD 0A:93ED: 15        .byte con_T + $15   ; 
- D 0 - I - 0x0293FE 0A:93EE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0293FF 0A:93EF: 0F        .byte con_X + $0F   ; 

- D 0 - I - 0x029400 0A:93F0: F5        .byte con_Y + $F5   ; 
- D 0 - I - 0x029401 0A:93F1: 17        .byte con_T + $17   ; 
- D 0 - I - 0x029402 0A:93F2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029403 0A:93F3: 17        .byte con_X + $17   ; 

- D 0 - I - 0x029404 0A:93F4: FA        .byte con_Y + $FA   ; 
- D 0 - I - 0x029405 0A:93F5: 13        .byte con_T + $13   ; 
- D 0 - I - 0x029406 0A:93F6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029407 0A:93F7: F6        .byte con_X + $F6   ; 
@end:



_off007_93F8_1F:
- D 0 - I - 0x029408 0A:93F8: 0C        .byte (@end - * - 1) / 4

- D 0 - I - 0x029409 0A:93F9: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x02940A 0A:93FA: 01        .byte con_T + $01   ; 
- D 0 - I - 0x02940B 0A:93FB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02940C 0A:93FC: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x02940D 0A:93FD: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x02940E 0A:93FE: 03        .byte con_T + $03   ; 
- D 0 - I - 0x02940F 0A:93FF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029410 0A:9400: 01        .byte con_X + $01   ; 

- D 0 - I - 0x029411 0A:9401: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029412 0A:9402: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029413 0A:9403: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029414 0A:9404: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x029415 0A:9405: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029416 0A:9406: 17        .byte con_T + $17   ; 
- D 0 - I - 0x029417 0A:9407: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029418 0A:9408: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x029419 0A:9409: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02941A 0A:940A: 19        .byte con_T + $19   ; 
- D 0 - I - 0x02941B 0A:940B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02941C 0A:940C: 05        .byte con_X + $05   ; 

- D 0 - I - 0x02941D 0A:940D: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02941E 0A:940E: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x02941F 0A:940F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029420 0A:9410: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x029421 0A:9411: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029422 0A:9412: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029423 0A:9413: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029424 0A:9414: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x029425 0A:9415: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029426 0A:9416: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029427 0A:9417: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029428 0A:9418: 05        .byte con_X + $05   ; 

- D 0 - I - 0x029429 0A:9419: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02942A 0A:941A: 49        .byte con_T + $49   ; 
- D 0 - I - 0x02942B 0A:941B: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02942C 0A:941C: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x02942D 0A:941D: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02942E 0A:941E: 43        .byte con_T + $43   ; 
- D 0 - I - 0x02942F 0A:941F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029430 0A:9420: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x029431 0A:9421: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029432 0A:9422: 43        .byte con_T + $43   ; 
- D 0 - I - 0x029433 0A:9423: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029434 0A:9424: 01        .byte con_X + $01   ; 

- D 0 - I - 0x029435 0A:9425: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029436 0A:9426: 49        .byte con_T + $49   ; 
- D 0 - I - 0x029437 0A:9427: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029438 0A:9428: 09        .byte con_X + $09   ; 
@end:



_off007_9429_20:
- D 0 - I - 0x029439 0A:9429: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x02943A 0A:942A: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02943B 0A:942B: 5D        .byte con_T + $5D   ; 
- D 0 - I - 0x02943C 0A:942C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02943D 0A:942D: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x02943E 0A:942E: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02943F 0A:942F: 5F        .byte con_T + $5F   ; 
- D 0 - I - 0x029440 0A:9430: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029441 0A:9431: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x029442 0A:9432: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029443 0A:9433: 11        .byte con_T + $11   ; 
- D 0 - I - 0x029444 0A:9434: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029445 0A:9435: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x029446 0A:9436: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029447 0A:9437: 13        .byte con_T + $13   ; 
- D 0 - I - 0x029448 0A:9438: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029449 0A:9439: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x02944A 0A:943A: D8        .byte con_Y + $D8   ; 
- D 0 - I - 0x02944B 0A:943B: 15        .byte con_T + $15   ; 
- D 0 - I - 0x02944C 0A:943C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02944D 0A:943D: 04        .byte con_X + $04   ; 

- D 0 - I - 0x02944E 0A:943E: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02944F 0A:943F: 59        .byte con_T + $59   ; 
- D 0 - I - 0x029450 0A:9440: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029451 0A:9441: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x029452 0A:9442: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029453 0A:9443: 57        .byte con_T + $57   ; 
- D 0 - I - 0x029454 0A:9444: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029455 0A:9445: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x029456 0A:9446: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029457 0A:9447: 55        .byte con_T + $55   ; 
- D 0 - I - 0x029458 0A:9448: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029459 0A:9449: 02        .byte con_X + $02   ; 
@end:



_off007_944A_21:
- D 0 - I - 0x02945A 0A:944A: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x02945B 0A:944B: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x02945C 0A:944C: 01        .byte con_T + $01   ; 
- D 0 - I - 0x02945D 0A:944D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02945E 0A:944E: 04        .byte con_X + $04   ; 

- D 0 - I - 0x02945F 0A:944F: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029460 0A:9450: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029461 0A:9451: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029462 0A:9452: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x029463 0A:9453: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029464 0A:9454: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029465 0A:9455: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029466 0A:9456: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029467 0A:9457: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029468 0A:9458: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029469 0A:9459: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02946A 0A:945A: 08        .byte con_X + $08   ; 

- D 0 - I - 0x02946B 0A:945B: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02946C 0A:945C: 09        .byte con_T + $09   ; 
- D 0 - I - 0x02946D 0A:945D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02946E 0A:945E: 10        .byte con_X + $10   ; 

- D 0 - I - 0x02946F 0A:945F: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029470 0A:9460: 21        .byte con_T + $21   ; 
- D 0 - I - 0x029471 0A:9461: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029472 0A:9462: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029473 0A:9463: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029474 0A:9464: 23        .byte con_T + $23   ; 
- D 0 - I - 0x029475 0A:9465: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029476 0A:9466: 08        .byte con_X + $08   ; 

- D 0 - I - 0x029477 0A:9467: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029478 0A:9468: 25        .byte con_T + $25   ; 
- D 0 - I - 0x029479 0A:9469: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02947A 0A:946A: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x02947B 0A:946B: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02947C 0A:946C: 27        .byte con_T + $27   ; 
- D 0 - I - 0x02947D 0A:946D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02947E 0A:946E: 01        .byte con_X + $01   ; 
@end:



_off007_946F_22:
- D 0 - I - 0x02947F 0A:946F: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x029480 0A:9470: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029481 0A:9471: 19        .byte con_T + $19   ; 
- D 0 - I - 0x029482 0A:9472: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029483 0A:9473: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x029484 0A:9474: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029485 0A:9475: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x029486 0A:9476: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029487 0A:9477: 01        .byte con_X + $01   ; 

- D 0 - I - 0x029488 0A:9478: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029489 0A:9479: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x02948A 0A:947A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02948B 0A:947B: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x02948C 0A:947C: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02948D 0A:947D: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x02948E 0A:947E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02948F 0A:947F: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x029490 0A:9480: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029491 0A:9481: 21        .byte con_T + $21   ; 
- D 0 - I - 0x029492 0A:9482: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029493 0A:9483: 06        .byte con_X + $06   ; 

- D 0 - I - 0x029494 0A:9484: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029495 0A:9485: 55        .byte con_T + $55   ; 
- D 0 - I - 0x029496 0A:9486: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029497 0A:9487: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x029498 0A:9488: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029499 0A:9489: 57        .byte con_T + $57   ; 
- D 0 - I - 0x02949A 0A:948A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02949B 0A:948B: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x02949C 0A:948C: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02949D 0A:948D: 59        .byte con_T + $59   ; 
- D 0 - I - 0x02949E 0A:948E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02949F 0A:948F: 05        .byte con_X + $05   ; 
@end:



_off007_9490_23:
- D 0 - I - 0x0294A0 0A:9490: 0B        .byte (@end - * - 1) / 4

- D 0 - I - 0x0294A1 0A:9491: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x0294A2 0A:9492: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0294A3 0A:9493: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0294A4 0A:9494: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x0294A5 0A:9495: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x0294A6 0A:9496: 03        .byte con_T + $03   ; 
- D 0 - I - 0x0294A7 0A:9497: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0294A8 0A:9498: E7        .byte con_X + $E7   ; 

- D 0 - I - 0x0294A9 0A:9499: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x0294AA 0A:949A: 05        .byte con_T + $05   ; 
- D 0 - I - 0x0294AB 0A:949B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0294AC 0A:949C: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x0294AD 0A:949D: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x0294AE 0A:949E: 07        .byte con_T + $07   ; 
- D 0 - I - 0x0294AF 0A:949F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0294B0 0A:94A0: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x0294B1 0A:94A1: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x0294B2 0A:94A2: 09        .byte con_T + $09   ; 
- D 0 - I - 0x0294B3 0A:94A3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0294B4 0A:94A4: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x0294B5 0A:94A5: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x0294B6 0A:94A6: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x0294B7 0A:94A7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0294B8 0A:94A8: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x0294B9 0A:94A9: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x0294BA 0A:94AA: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x0294BB 0A:94AB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0294BC 0A:94AC: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x0294BD 0A:94AD: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x0294BE 0A:94AE: 11        .byte con_T + $11   ; 
- D 0 - I - 0x0294BF 0A:94AF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0294C0 0A:94B0: 02        .byte con_X + $02   ; 

- D 0 - I - 0x0294C1 0A:94B1: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0294C2 0A:94B2: 49        .byte con_T + $49   ; 
- D 0 - I - 0x0294C3 0A:94B3: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0294C4 0A:94B4: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x0294C5 0A:94B5: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0294C6 0A:94B6: 43        .byte con_T + $43   ; 
- D 0 - I - 0x0294C7 0A:94B7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0294C8 0A:94B8: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0294C9 0A:94B9: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0294CA 0A:94BA: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x0294CB 0A:94BB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0294CC 0A:94BC: 02        .byte con_X + $02   ; 
@end:



_off007_94BD_24:
- D 0 - I - 0x0294CD 0A:94BD: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x0294CE 0A:94BE: CD        .byte con_Y + $CD   ; 
- D 0 - I - 0x0294CF 0A:94BF: 19        .byte con_T + $19   ; 
- D 0 - I - 0x0294D0 0A:94C0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0294D1 0A:94C1: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x0294D2 0A:94C2: CD        .byte con_Y + $CD   ; 
- D 0 - I - 0x0294D3 0A:94C3: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x0294D4 0A:94C4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0294D5 0A:94C5: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0294D6 0A:94C6: CD        .byte con_Y + $CD   ; 
- D 0 - I - 0x0294D7 0A:94C7: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x0294D8 0A:94C8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0294D9 0A:94C9: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0294DA 0A:94CA: DD        .byte con_Y + $DD   ; 
- D 0 - I - 0x0294DB 0A:94CB: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x0294DC 0A:94CC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0294DD 0A:94CD: F1        .byte con_X + $F1   ; 

- D 0 - I - 0x0294DE 0A:94CE: DD        .byte con_Y + $DD   ; 
- D 0 - I - 0x0294DF 0A:94CF: 21        .byte con_T + $21   ; 
- D 0 - I - 0x0294E0 0A:94D0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0294E1 0A:94D1: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x0294E2 0A:94D2: DD        .byte con_Y + $DD   ; 
- D 0 - I - 0x0294E3 0A:94D3: 23        .byte con_T + $23   ; 
- D 0 - I - 0x0294E4 0A:94D4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0294E5 0A:94D5: 01        .byte con_X + $01   ; 

- D 0 - I - 0x0294E6 0A:94D6: ED        .byte con_Y + $ED   ; 
- D 0 - I - 0x0294E7 0A:94D7: 43        .byte con_T + $43   ; 
- D 0 - I - 0x0294E8 0A:94D8: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0294E9 0A:94D9: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x0294EA 0A:94DA: ED        .byte con_Y + $ED   ; 
- D 0 - I - 0x0294EB 0A:94DB: 49        .byte con_T + $49   ; 
- D 0 - I - 0x0294EC 0A:94DC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0294ED 0A:94DD: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0294EE 0A:94DE: ED        .byte con_Y + $ED   ; 
- D 0 - I - 0x0294EF 0A:94DF: 5B        .byte con_T + $5B   ; 
- D 0 - I - 0x0294F0 0A:94E0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0294F1 0A:94E1: 00        .byte con_X + $00   ; 
@end:



_off007_94E2_25:
- D 0 - I - 0x0294F2 0A:94E2: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x0294F3 0A:94E3: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0294F4 0A:94E4: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x0294F5 0A:94E5: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0294F6 0A:94E6: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x0294F7 0A:94E7: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0294F8 0A:94E8: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x0294F9 0A:94E9: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0294FA 0A:94EA: 02        .byte con_X + $02   ; 

- D 0 - I - 0x0294FB 0A:94EB: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0294FC 0A:94EC: 19        .byte con_T + $19   ; 
- D 0 - I - 0x0294FD 0A:94ED: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0294FE 0A:94EE: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x0294FF 0A:94EF: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029500 0A:94F0: 23        .byte con_T + $23   ; 
- D 0 - I - 0x029501 0A:94F1: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x029502 0A:94F2: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x029503 0A:94F3: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029504 0A:94F4: 21        .byte con_T + $21   ; 
- D 0 - I - 0x029505 0A:94F5: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x029506 0A:94F6: 01        .byte con_X + $01   ; 

- D 0 - I - 0x029507 0A:94F7: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029508 0A:94F8: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x029509 0A:94F9: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x02950A 0A:94FA: 09        .byte con_X + $09   ; 

- D 0 - I - 0x02950B 0A:94FB: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x02950C 0A:94FC: 43        .byte con_T + $43   ; 
- D 0 - I - 0x02950D 0A:94FD: 80        .byte con_A + $80   ; 
- D 0 - I - 0x02950E 0A:94FE: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x02950F 0A:94FF: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029510 0A:9500: 49        .byte con_T + $49   ; 
- D 0 - I - 0x029511 0A:9501: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x029512 0A:9502: 02        .byte con_X + $02   ; 

- D 0 - I - 0x029513 0A:9503: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029514 0A:9504: 5B        .byte con_T + $5B   ; 
- D 0 - I - 0x029515 0A:9505: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x029516 0A:9506: FA        .byte con_X + $FA   ; 
@end:



_off007_9507_26:
- D 0 - I - 0x029517 0A:9507: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x029518 0A:9508: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x029519 0A:9509: 5B        .byte con_T + $5B   ; 
- D 0 - I - 0x02951A 0A:950A: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x02951B 0A:950B: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x02951C 0A:950C: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x02951D 0A:950D: 5B        .byte con_T + $5B   ; 
- D 0 - I - 0x02951E 0A:950E: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x02951F 0A:950F: 04        .byte con_X + $04   ; 

- D 0 - I - 0x029520 0A:9510: E7        .byte con_Y + $E7   ; 
- D 0 - I - 0x029521 0A:9511: 25        .byte con_T + $25   ; 
- D 0 - I - 0x029522 0A:9512: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029523 0A:9513: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x029524 0A:9514: E7        .byte con_Y + $E7   ; 
- D 0 - I - 0x029525 0A:9515: 27        .byte con_T + $27   ; 
- D 0 - I - 0x029526 0A:9516: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029527 0A:9517: 02        .byte con_X + $02   ; 

- D 0 - I - 0x029528 0A:9518: E7        .byte con_Y + $E7   ; 
- D 0 - I - 0x029529 0A:9519: 29        .byte con_T + $29   ; 
- D 0 - I - 0x02952A 0A:951A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02952B 0A:951B: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x02952C 0A:951C: F7        .byte con_Y + $F7   ; 
- D 0 - I - 0x02952D 0A:951D: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x02952E 0A:951E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02952F 0A:951F: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x029530 0A:9520: F7        .byte con_Y + $F7   ; 
- D 0 - I - 0x029531 0A:9521: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x029532 0A:9522: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029533 0A:9523: 02        .byte con_X + $02   ; 

- D 0 - I - 0x029534 0A:9524: F7        .byte con_Y + $F7   ; 
- D 0 - I - 0x029535 0A:9525: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x029536 0A:9526: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029537 0A:9527: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x029538 0A:9528: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029539 0A:9529: 09        .byte con_T + $09   ; 
- D 0 - I - 0x02953A 0A:952A: 80        .byte con_A + $80   ; 
- D 0 - I - 0x02953B 0A:952B: 12        .byte con_X + $12   ; 
@end:



_off007_952C_27:
- D 0 - I - 0x02953C 0A:952C: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x02953D 0A:952D: E7        .byte con_Y + $E7   ; 
- D 0 - I - 0x02953E 0A:952E: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x02953F 0A:952F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029540 0A:9530: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x029541 0A:9531: E7        .byte con_Y + $E7   ; 
- D 0 - I - 0x029542 0A:9532: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x029543 0A:9533: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029544 0A:9534: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x029545 0A:9535: E7        .byte con_Y + $E7   ; 
- D 0 - I - 0x029546 0A:9536: 31        .byte con_T + $31   ; 
- D 0 - I - 0x029547 0A:9537: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029548 0A:9538: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x029549 0A:9539: F7        .byte con_Y + $F7   ; 
- D 0 - I - 0x02954A 0A:953A: 33        .byte con_T + $33   ; 
- D 0 - I - 0x02954B 0A:953B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02954C 0A:953C: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x02954D 0A:953D: F7        .byte con_Y + $F7   ; 
- D 0 - I - 0x02954E 0A:953E: 35        .byte con_T + $35   ; 
- D 0 - I - 0x02954F 0A:953F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029550 0A:9540: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x029551 0A:9541: F7        .byte con_Y + $F7   ; 
- D 0 - I - 0x029552 0A:9542: 37        .byte con_T + $37   ; 
- D 0 - I - 0x029553 0A:9543: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029554 0A:9544: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x029555 0A:9545: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029556 0A:9546: 39        .byte con_T + $39   ; 
- D 0 - I - 0x029557 0A:9547: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029558 0A:9548: 07        .byte con_X + $07   ; 

- D 0 - I - 0x029559 0A:9549: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02955A 0A:954A: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x02955B 0A:954B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02955C 0A:954C: 0F        .byte con_X + $0F   ; 

- D 0 - I - 0x02955D 0A:954D: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02955E 0A:954E: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x02955F 0A:954F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029560 0A:9550: 17        .byte con_X + $17   ; 
@end:



_off007_9551_28:
- D 0 - I - 0x029561 0A:9551: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x029562 0A:9552: F3        .byte con_Y + $F3   ; 
- D 0 - I - 0x029563 0A:9553: 31        .byte con_T + $31   ; 
- D 0 - I - 0x029564 0A:9554: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029565 0A:9555: ED        .byte con_X + $ED   ; 

- D 0 - I - 0x029566 0A:9556: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x029567 0A:9557: 33        .byte con_T + $33   ; 
- D 0 - I - 0x029568 0A:9558: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029569 0A:9559: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x02956A 0A:955A: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x02956B 0A:955B: 35        .byte con_T + $35   ; 
- D 0 - I - 0x02956C 0A:955C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02956D 0A:955D: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x02956E 0A:955E: E7        .byte con_Y + $E7   ; 
- D 0 - I - 0x02956F 0A:955F: 37        .byte con_T + $37   ; 
- D 0 - I - 0x029570 0A:9560: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029571 0A:9561: 05        .byte con_X + $05   ; 

- D 0 - I - 0x029572 0A:9562: E7        .byte con_Y + $E7   ; 
- D 0 - I - 0x029573 0A:9563: 39        .byte con_T + $39   ; 
- D 0 - I - 0x029574 0A:9564: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029575 0A:9565: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x029576 0A:9566: F7        .byte con_Y + $F7   ; 
- D 0 - I - 0x029577 0A:9567: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x029578 0A:9568: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029579 0A:9569: 05        .byte con_X + $05   ; 

- D 0 - I - 0x02957A 0A:956A: F7        .byte con_Y + $F7   ; 
- D 0 - I - 0x02957B 0A:956B: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x02957C 0A:956C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02957D 0A:956D: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x02957E 0A:956E: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x02957F 0A:956F: 3F        .byte con_T + $3F   ; 
- D 0 - I - 0x029580 0A:9570: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029581 0A:9571: 15        .byte con_X + $15   ; 
@end:



_off007_9572_29:
- D 0 - I - 0x029582 0A:9572: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x029583 0A:9573: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x029584 0A:9574: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x029585 0A:9575: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x029586 0A:9576: E6        .byte con_X + $E6   ; 

- D 0 - I - 0x029587 0A:9577: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x029588 0A:9578: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x029589 0A:9579: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x02958A 0A:957A: EE        .byte con_X + $EE   ; 

- D 0 - I - 0x02958B 0A:957B: CD        .byte con_Y + $CD   ; 
- D 0 - I - 0x02958C 0A:957C: 39        .byte con_T + $39   ; 
- D 0 - I - 0x02958D 0A:957D: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x02958E 0A:957E: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x02958F 0A:957F: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x029590 0A:9580: 37        .byte con_T + $37   ; 
- D 0 - I - 0x029591 0A:9581: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x029592 0A:9582: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x029593 0A:9583: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x029594 0A:9584: 35        .byte con_T + $35   ; 
- D 0 - I - 0x029595 0A:9585: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x029596 0A:9586: 06        .byte con_X + $06   ; 

- D 0 - I - 0x029597 0A:9587: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x029598 0A:9588: 33        .byte con_T + $33   ; 
- D 0 - I - 0x029599 0A:9589: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x02959A 0A:958A: 0E        .byte con_X + $0E   ; 

- D 0 - I - 0x02959B 0A:958B: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x02959C 0A:958C: 31        .byte con_T + $31   ; 
- D 0 - I - 0x02959D 0A:958D: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x02959E 0A:958E: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x02959F 0A:958F: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x0295A0 0A:9590: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x0295A1 0A:9591: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0295A2 0A:9592: 06        .byte con_X + $06   ; 

- D 0 - I - 0x0295A3 0A:9593: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x0295A4 0A:9594: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x0295A5 0A:9595: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0295A6 0A:9596: 0E        .byte con_X + $0E   ; 
@end:



_off007_9597_2A:
- D 0 - I - 0x0295A7 0A:9597: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x0295A8 0A:9598: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x0295A9 0A:9599: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0295AA 0A:959A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0295AB 0A:959B: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x0295AC 0A:959C: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x0295AD 0A:959D: 03        .byte con_T + $03   ; 
- D 0 - I - 0x0295AE 0A:959E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0295AF 0A:959F: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x0295B0 0A:95A0: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x0295B1 0A:95A1: 07        .byte con_T + $07   ; 
- D 0 - I - 0x0295B2 0A:95A2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0295B3 0A:95A3: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x0295B4 0A:95A4: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x0295B5 0A:95A5: 09        .byte con_T + $09   ; 
- D 0 - I - 0x0295B6 0A:95A6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0295B7 0A:95A7: 03        .byte con_X + $03   ; 

- D 0 - I - 0x0295B8 0A:95A8: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x0295B9 0A:95A9: 13        .byte con_T + $13   ; 
- D 0 - I - 0x0295BA 0A:95AA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0295BB 0A:95AB: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x0295BC 0A:95AC: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x0295BD 0A:95AD: 15        .byte con_T + $15   ; 
- D 0 - I - 0x0295BE 0A:95AE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0295BF 0A:95AF: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0295C0 0A:95B0: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x0295C1 0A:95B1: 59        .byte con_T + $59   ; 
- D 0 - I - 0x0295C2 0A:95B2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0295C3 0A:95B3: 04        .byte con_X + $04   ; 

- D 0 - I - 0x0295C4 0A:95B4: F9        .byte con_Y + $F9   ; 
- D 0 - I - 0x0295C5 0A:95B5: 17        .byte con_T + $17   ; 
- D 0 - I - 0x0295C6 0A:95B6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0295C7 0A:95B7: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x0295C8 0A:95B8: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x0295C9 0A:95B9: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x0295CA 0A:95BA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0295CB 0A:95BB: F3        .byte con_X + $F3   ; 
@end:



_off007_95BC_2B:
- D 0 - I - 0x0295CC 0A:95BC: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x0295CD 0A:95BD: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x0295CE 0A:95BE: 5D        .byte con_T + $5D   ; 
- D 0 - I - 0x0295CF 0A:95BF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0295D0 0A:95C0: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x0295D1 0A:95C1: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x0295D2 0A:95C2: 5F        .byte con_T + $5F   ; 
- D 0 - I - 0x0295D3 0A:95C3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0295D4 0A:95C4: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0295D5 0A:95C5: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x0295D6 0A:95C6: 39        .byte con_T + $39   ; 
- D 0 - I - 0x0295D7 0A:95C7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0295D8 0A:95C8: EC        .byte con_X + $EC   ; 

- D 0 - I - 0x0295D9 0A:95C9: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x0295DA 0A:95CA: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x0295DB 0A:95CB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0295DC 0A:95CC: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x0295DD 0A:95CD: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x0295DE 0A:95CE: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x0295DF 0A:95CF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0295E0 0A:95D0: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0295E1 0A:95D1: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x0295E2 0A:95D2: 3F        .byte con_T + $3F   ; 
- D 0 - I - 0x0295E3 0A:95D3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0295E4 0A:95D4: 04        .byte con_X + $04   ; 

- D 0 - I - 0x0295E5 0A:95D5: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0295E6 0A:95D6: 59        .byte con_T + $59   ; 
- D 0 - I - 0x0295E7 0A:95D7: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0295E8 0A:95D8: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x0295E9 0A:95D9: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0295EA 0A:95DA: 57        .byte con_T + $57   ; 
- D 0 - I - 0x0295EB 0A:95DB: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0295EC 0A:95DC: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x0295ED 0A:95DD: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0295EE 0A:95DE: 55        .byte con_T + $55   ; 
- D 0 - I - 0x0295EF 0A:95DF: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0295F0 0A:95E0: 02        .byte con_X + $02   ; 
@end:



_off007_95E1_2C:
- D 0 - I - 0x0295F1 0A:95E1: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x0295F2 0A:95E2: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x0295F3 0A:95E3: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x0295F4 0A:95E4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0295F5 0A:95E5: E5        .byte con_X + $E5   ; 

- D 0 - I - 0x0295F6 0A:95E6: D6        .byte con_Y + $D6   ; 
- D 0 - I - 0x0295F7 0A:95E7: 21        .byte con_T + $21   ; 
- D 0 - I - 0x0295F8 0A:95E8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0295F9 0A:95E9: ED        .byte con_X + $ED   ; 

- D 0 - I - 0x0295FA 0A:95EA: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0295FB 0A:95EB: 23        .byte con_T + $23   ; 
- D 0 - I - 0x0295FC 0A:95EC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0295FD 0A:95ED: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x0295FE 0A:95EE: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0295FF 0A:95EF: 25        .byte con_T + $25   ; 
- D 0 - I - 0x029600 0A:95F0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029601 0A:95F1: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x029602 0A:95F2: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029603 0A:95F3: 27        .byte con_T + $27   ; 
- D 0 - I - 0x029604 0A:95F4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029605 0A:95F5: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x029606 0A:95F6: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029607 0A:95F7: 29        .byte con_T + $29   ; 
- D 0 - I - 0x029608 0A:95F8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029609 0A:95F9: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x02960A 0A:95FA: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x02960B 0A:95FB: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x02960C 0A:95FC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02960D 0A:95FD: 05        .byte con_X + $05   ; 

- D 0 - I - 0x02960E 0A:95FE: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02960F 0A:95FF: 41        .byte con_T + $41   ; 
- D 0 - I - 0x029610 0A:9600: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029611 0A:9601: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x029612 0A:9602: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029613 0A:9603: 43        .byte con_T + $43   ; 
- D 0 - I - 0x029614 0A:9604: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029615 0A:9605: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x029616 0A:9606: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x029617 0A:9607: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x029618 0A:9608: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029619 0A:9609: 05        .byte con_X + $05   ; 
@end:



_off007_960A_2D:
- D 0 - I - 0x02961A 0A:960A: 0C        .byte (@end - * - 1) / 4

- D 0 - I - 0x02961B 0A:960B: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x02961C 0A:960C: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x02961D 0A:960D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02961E 0A:960E: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x02961F 0A:960F: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x029620 0A:9610: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x029621 0A:9611: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029622 0A:9612: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x029623 0A:9613: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x029624 0A:9614: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x029625 0A:9615: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029626 0A:9616: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x029627 0A:9617: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x029628 0A:9618: 31        .byte con_T + $31   ; 
- D 0 - I - 0x029629 0A:9619: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02962A 0A:961A: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x02962B 0A:961B: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x02962C 0A:961C: 33        .byte con_T + $33   ; 
- D 0 - I - 0x02962D 0A:961D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02962E 0A:961E: 07        .byte con_X + $07   ; 

- D 0 - I - 0x02962F 0A:961F: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x029630 0A:9620: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029631 0A:9621: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029632 0A:9622: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x029633 0A:9623: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x029634 0A:9624: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029635 0A:9625: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029636 0A:9626: 07        .byte con_X + $07   ; 

- D 0 - I - 0x029637 0A:9627: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x029638 0A:9628: 43        .byte con_T + $43   ; 
- D 0 - I - 0x029639 0A:9629: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02963A 0A:962A: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x02963B 0A:962B: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x02963C 0A:962C: 47        .byte con_T + $47   ; 
- D 0 - I - 0x02963D 0A:962D: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02963E 0A:962E: 04        .byte con_X + $04   ; 

- D 0 - I - 0x02963F 0A:962F: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x029640 0A:9630: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029641 0A:9631: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029642 0A:9632: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x029643 0A:9633: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x029644 0A:9634: 41        .byte con_T + $41   ; 
- D 0 - I - 0x029645 0A:9635: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029646 0A:9636: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x029647 0A:9637: DA        .byte con_Y + $DA   ; 
- D 0 - I - 0x029648 0A:9638: 35        .byte con_T + $35   ; 
- D 0 - I - 0x029649 0A:9639: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02964A 0A:963A: 0F        .byte con_X + $0F   ; 
@end:



_off007_963B_2E:
- D 0 - I - 0x02964B 0A:963B: 0B        .byte (@end - * - 1) / 4

- D 0 - I - 0x02964C 0A:963C: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x02964D 0A:963D: 15        .byte con_T + $15   ; 
- D 0 - I - 0x02964E 0A:963E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02964F 0A:963F: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x029650 0A:9640: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x029651 0A:9641: 17        .byte con_T + $17   ; 
- D 0 - I - 0x029652 0A:9642: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029653 0A:9643: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029654 0A:9644: B7        .byte con_Y + $B7   ; 
- D 0 - I - 0x029655 0A:9645: 19        .byte con_T + $19   ; 
- D 0 - I - 0x029656 0A:9646: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029657 0A:9647: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029658 0A:9648: B7        .byte con_Y + $B7   ; 
- D 0 - I - 0x029659 0A:9649: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x02965A 0A:964A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02965B 0A:964B: 00        .byte con_X + $00   ; 

- D 0 - I - 0x02965C 0A:964C: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x02965D 0A:964D: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x02965E 0A:964E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02965F 0A:964F: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029660 0A:9650: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x029661 0A:9651: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x029662 0A:9652: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029663 0A:9653: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029664 0A:9654: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x029665 0A:9655: 21        .byte con_T + $21   ; 
- D 0 - I - 0x029666 0A:9656: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029667 0A:9657: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x029668 0A:9658: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x029669 0A:9659: 23        .byte con_T + $23   ; 
- D 0 - I - 0x02966A 0A:965A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02966B 0A:965B: 02        .byte con_X + $02   ; 

- D 0 - I - 0x02966C 0A:965C: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x02966D 0A:965D: 59        .byte con_T + $59   ; 
- D 0 - I - 0x02966E 0A:965E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02966F 0A:965F: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x029670 0A:9660: E7        .byte con_Y + $E7   ; 
- D 0 - I - 0x029671 0A:9661: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x029672 0A:9662: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029673 0A:9663: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x029674 0A:9664: E7        .byte con_Y + $E7   ; 
- D 0 - I - 0x029675 0A:9665: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x029676 0A:9666: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029677 0A:9667: FB        .byte con_X + $FB   ; 
@end:



_off007_9668_2F:
- D 0 - I - 0x029678 0A:9668: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x029679 0A:9669: C3        .byte con_Y + $C3   ; 
- D 0 - I - 0x02967A 0A:966A: 01        .byte con_T + $01   ; 
- D 0 - I - 0x02967B 0A:966B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02967C 0A:966C: ED        .byte con_X + $ED   ; 

- D 0 - I - 0x02967D 0A:966D: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x02967E 0A:966E: 03        .byte con_T + $03   ; 
- D 0 - I - 0x02967F 0A:966F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029680 0A:9670: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x029681 0A:9671: C5        .byte con_Y + $C5   ; 
- D 0 - I - 0x029682 0A:9672: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029683 0A:9673: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029684 0A:9674: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x029685 0A:9675: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x029686 0A:9676: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029687 0A:9677: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029688 0A:9678: 05        .byte con_X + $05   ; 

- D 0 - I - 0x029689 0A:9679: CB        .byte con_Y + $CB   ; 
- D 0 - I - 0x02968A 0A:967A: 11        .byte con_T + $11   ; 
- D 0 - I - 0x02968B 0A:967B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02968C 0A:967C: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x02968D 0A:967D: D3        .byte con_Y + $D3   ; 
- D 0 - I - 0x02968E 0A:967E: 07        .byte con_T + $07   ; 
- D 0 - I - 0x02968F 0A:967F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029690 0A:9680: ED        .byte con_X + $ED   ; 

- D 0 - I - 0x029691 0A:9681: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x029692 0A:9682: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029693 0A:9683: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029694 0A:9684: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x029695 0A:9685: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x029696 0A:9686: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029697 0A:9687: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029698 0A:9688: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x029699 0A:9689: DB        .byte con_Y + $DB   ; 
- D 0 - I - 0x02969A 0A:968A: 13        .byte con_T + $13   ; 
- D 0 - I - 0x02969B 0A:968B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02969C 0A:968C: 07        .byte con_X + $07   ; 

- D 0 - I - 0x02969D 0A:968D: DB        .byte con_Y + $DB   ; 
- D 0 - I - 0x02969E 0A:968E: 43        .byte con_T + $43   ; 
- D 0 - I - 0x02969F 0A:968F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0296A0 0A:9690: 0F        .byte con_X + $0F   ; 
@end:



_off007_9691_30:
- D 0 - I - 0x0296A1 0A:9691: 0B        .byte (@end - * - 1) / 4

- D 0 - I - 0x0296A2 0A:9692: B7        .byte con_Y + $B7   ; 
- D 0 - I - 0x0296A3 0A:9693: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x0296A4 0A:9694: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0296A5 0A:9695: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x0296A6 0A:9696: B7        .byte con_Y + $B7   ; 
- D 0 - I - 0x0296A7 0A:9697: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x0296A8 0A:9698: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0296A9 0A:9699: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x0296AA 0A:969A: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x0296AB 0A:969B: 59        .byte con_T + $59   ; 
- D 0 - I - 0x0296AC 0A:969C: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0296AD 0A:969D: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x0296AE 0A:969E: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x0296AF 0A:969F: 23        .byte con_T + $23   ; 
- D 0 - I - 0x0296B0 0A:96A0: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0296B1 0A:96A1: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x0296B2 0A:96A2: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x0296B3 0A:96A3: 21        .byte con_T + $21   ; 
- D 0 - I - 0x0296B4 0A:96A4: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0296B5 0A:96A5: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0296B6 0A:96A6: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x0296B7 0A:96A7: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x0296B8 0A:96A8: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0296B9 0A:96A9: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x0296BA 0A:96AA: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x0296BB 0A:96AB: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x0296BC 0A:96AC: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0296BD 0A:96AD: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x0296BE 0A:96AE: E7        .byte con_Y + $E7   ; 
- D 0 - I - 0x0296BF 0A:96AF: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x0296C0 0A:96B0: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0296C1 0A:96B1: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x0296C2 0A:96B2: E7        .byte con_Y + $E7   ; 
- D 0 - I - 0x0296C3 0A:96B3: 19        .byte con_T + $19   ; 
- D 0 - I - 0x0296C4 0A:96B4: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0296C5 0A:96B5: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x0296C6 0A:96B6: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x0296C7 0A:96B7: 17        .byte con_T + $17   ; 
- D 0 - I - 0x0296C8 0A:96B8: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0296C9 0A:96B9: 02        .byte con_X + $02   ; 

- D 0 - I - 0x0296CA 0A:96BA: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x0296CB 0A:96BB: 15        .byte con_T + $15   ; 
- D 0 - I - 0x0296CC 0A:96BC: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0296CD 0A:96BD: 0A        .byte con_X + $0A   ; 
@end:



_off007_96BE_31:
- D 0 - I - 0x0296CE 0A:96BE: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x0296CF 0A:96BF: CD        .byte con_Y + $CD   ; 
- D 0 - I - 0x0296D0 0A:96C0: 09        .byte con_T + $09   ; 
- D 0 - I - 0x0296D1 0A:96C1: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0296D2 0A:96C2: EC        .byte con_X + $EC   ; 

- D 0 - I - 0x0296D3 0A:96C3: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x0296D4 0A:96C4: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x0296D5 0A:96C5: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0296D6 0A:96C6: 04        .byte con_X + $04   ; 

- D 0 - I - 0x0296D7 0A:96C7: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x0296D8 0A:96C8: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x0296D9 0A:96C9: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0296DA 0A:96CA: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0296DB 0A:96CB: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x0296DC 0A:96CC: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x0296DD 0A:96CD: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0296DE 0A:96CE: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x0296DF 0A:96CF: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x0296E0 0A:96D0: 29        .byte con_T + $29   ; 
- D 0 - I - 0x0296E1 0A:96D1: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0296E2 0A:96D2: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x0296E3 0A:96D3: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x0296E4 0A:96D4: 27        .byte con_T + $27   ; 
- D 0 - I - 0x0296E5 0A:96D5: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0296E6 0A:96D6: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0296E7 0A:96D7: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x0296E8 0A:96D8: 25        .byte con_T + $25   ; 
- D 0 - I - 0x0296E9 0A:96D9: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x0296EA 0A:96DA: 04        .byte con_X + $04   ; 

- D 0 - I - 0x0296EB 0A:96DB: E7        .byte con_Y + $E7   ; 
- D 0 - I - 0x0296EC 0A:96DC: 5B        .byte con_T + $5B   ; 
- D 0 - I - 0x0296ED 0A:96DD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0296EE 0A:96DE: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x0296EF 0A:96DF: E7        .byte con_Y + $E7   ; 
- D 0 - I - 0x0296F0 0A:96E0: 5B        .byte con_T + $5B   ; 
- D 0 - I - 0x0296F1 0A:96E1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0296F2 0A:96E2: 04        .byte con_X + $04   ; 
@end:



_off007_96E3_32:
- D 0 - I - 0x0296F3 0A:96E3: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x0296F4 0A:96E4: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x0296F5 0A:96E5: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x0296F6 0A:96E6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0296F7 0A:96E7: 06        .byte con_X + $06   ; 

- D 0 - I - 0x0296F8 0A:96E8: D5        .byte con_Y + $D5   ; 
- D 0 - I - 0x0296F9 0A:96E9: 25        .byte con_T + $25   ; 
- D 0 - I - 0x0296FA 0A:96EA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0296FB 0A:96EB: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x0296FC 0A:96EC: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x0296FD 0A:96ED: 23        .byte con_T + $23   ; 
- D 0 - I - 0x0296FE 0A:96EE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0296FF 0A:96EF: 01        .byte con_X + $01   ; 

- D 0 - I - 0x029700 0A:96F0: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x029701 0A:96F1: 13        .byte con_T + $13   ; 
- D 0 - I - 0x029702 0A:96F2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029703 0A:96F3: 09        .byte con_X + $09   ; 

- D 0 - I - 0x029704 0A:96F4: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x029705 0A:96F5: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x029706 0A:96F6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029707 0A:96F7: 09        .byte con_X + $09   ; 

- D 0 - I - 0x029708 0A:96F8: E5        .byte con_Y + $E5   ; 
- D 0 - I - 0x029709 0A:96F9: 51        .byte con_T + $51   ; 
- D 0 - I - 0x02970A 0A:96FA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02970B 0A:96FB: F1        .byte con_X + $F1   ; 

- D 0 - I - 0x02970C 0A:96FC: E5        .byte con_Y + $E5   ; 
- D 0 - I - 0x02970D 0A:96FD: 27        .byte con_T + $27   ; 
- D 0 - I - 0x02970E 0A:96FE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02970F 0A:96FF: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x029710 0A:9700: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x029711 0A:9701: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x029712 0A:9702: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029713 0A:9703: 07        .byte con_X + $07   ; 

- D 0 - I - 0x029714 0A:9704: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x029715 0A:9705: 29        .byte con_T + $29   ; 
- D 0 - I - 0x029716 0A:9706: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029717 0A:9707: 01        .byte con_X + $01   ; 
@end:



_off007_9708_33:
- D 0 - I - 0x029718 0A:9708: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x029719 0A:9709: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x02971A 0A:970A: 27        .byte con_T + $27   ; 
- D 0 - I - 0x02971B 0A:970B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02971C 0A:970C: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x02971D 0A:970D: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x02971E 0A:970E: 19        .byte con_T + $19   ; 
- D 0 - I - 0x02971F 0A:970F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029720 0A:9710: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029721 0A:9711: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x029722 0A:9712: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x029723 0A:9713: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029724 0A:9714: 08        .byte con_X + $08   ; 

- D 0 - I - 0x029725 0A:9715: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x029726 0A:9716: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x029727 0A:9717: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029728 0A:9718: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029729 0A:9719: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x02972A 0A:971A: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x02972B 0A:971B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02972C 0A:971C: 08        .byte con_X + $08   ; 

- D 0 - I - 0x02972D 0A:971D: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x02972E 0A:971E: 21        .byte con_T + $21   ; 
- D 0 - I - 0x02972F 0A:971F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029730 0A:9720: 02        .byte con_X + $02   ; 

- D 0 - I - 0x029731 0A:9721: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x029732 0A:9722: 29        .byte con_T + $29   ; 
- D 0 - I - 0x029733 0A:9723: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029734 0A:9724: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x029735 0A:9725: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x029736 0A:9726: 13        .byte con_T + $13   ; 
- D 0 - I - 0x029737 0A:9727: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029738 0A:9728: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x029739 0A:9729: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x02973A 0A:972A: 43        .byte con_T + $43   ; 
- D 0 - I - 0x02973B 0A:972B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02973C 0A:972C: 07        .byte con_X + $07   ; 

- D 0 - I - 0x02973D 0A:972D: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x02973E 0A:972E: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x02973F 0A:972F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029740 0A:9730: 0B        .byte con_X + $0B   ; 
@end:



_off007_9731_34:
- D 0 - I - 0x029741 0A:9731: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x029742 0A:9732: D7        .byte con_Y + $D7   ; 
- D 0 - I - 0x029743 0A:9733: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029744 0A:9734: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029745 0A:9735: ED        .byte con_X + $ED   ; 

- D 0 - I - 0x029746 0A:9736: D3        .byte con_Y + $D3   ; 
- D 0 - I - 0x029747 0A:9737: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029748 0A:9738: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029749 0A:9739: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x02974A 0A:973A: D9        .byte con_Y + $D9   ; 
- D 0 - I - 0x02974B 0A:973B: 05        .byte con_T + $05   ; 
- D 0 - I - 0x02974C 0A:973C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02974D 0A:973D: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x02974E 0A:973E: DB        .byte con_Y + $DB   ; 
- D 0 - I - 0x02974F 0A:973F: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029750 0A:9740: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029751 0A:9741: 05        .byte con_X + $05   ; 

- D 0 - I - 0x029752 0A:9742: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x029753 0A:9743: 11        .byte con_T + $11   ; 
- D 0 - I - 0x029754 0A:9744: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029755 0A:9745: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x029756 0A:9746: E7        .byte con_Y + $E7   ; 
- D 0 - I - 0x029757 0A:9747: 09        .byte con_T + $09   ; 
- D 0 - I - 0x029758 0A:9748: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029759 0A:9749: ED        .byte con_X + $ED   ; 

- D 0 - I - 0x02975A 0A:974A: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x02975B 0A:974B: 13        .byte con_T + $13   ; 
- D 0 - I - 0x02975C 0A:974C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02975D 0A:974D: 07        .byte con_X + $07   ; 

- D 0 - I - 0x02975E 0A:974E: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x02975F 0A:974F: 43        .byte con_T + $43   ; 
- D 0 - I - 0x029760 0A:9750: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029761 0A:9751: 0F        .byte con_X + $0F   ; 

- D 0 - I - 0x029762 0A:9752: E3        .byte con_Y + $E3   ; 
- D 0 - I - 0x029763 0A:9753: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029764 0A:9754: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029765 0A:9755: F5        .byte con_X + $F5   ; 
@end:



_off007_9756_35:
- D 0 - I - 0x029766 0A:9756: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x029767 0A:9757: EC        .byte con_Y + $EC   ; 
- D 0 - I - 0x029768 0A:9758: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x029769 0A:9759: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02976A 0A:975A: ED        .byte con_X + $ED   ; 

- D 0 - I - 0x02976B 0A:975B: E6        .byte con_Y + $E6   ; 
- D 0 - I - 0x02976C 0A:975C: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x02976D 0A:975D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02976E 0A:975E: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x02976F 0A:975F: E4        .byte con_Y + $E4   ; 
- D 0 - I - 0x029770 0A:9760: 31        .byte con_T + $31   ; 
- D 0 - I - 0x029771 0A:9761: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029772 0A:9762: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x029773 0A:9763: F6        .byte con_Y + $F6   ; 
- D 0 - I - 0x029774 0A:9764: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x029775 0A:9765: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029776 0A:9766: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x029777 0A:9767: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x029778 0A:9768: 33        .byte con_T + $33   ; 
- D 0 - I - 0x029779 0A:9769: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02977A 0A:976A: 05        .byte con_X + $05   ; 

- D 0 - I - 0x02977B 0A:976B: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x02977C 0A:976C: 35        .byte con_T + $35   ; 
- D 0 - I - 0x02977D 0A:976D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02977E 0A:976E: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x02977F 0A:976F: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x029780 0A:9770: 13        .byte con_T + $13   ; 
- D 0 - I - 0x029781 0A:9771: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029782 0A:9772: 08        .byte con_X + $08   ; 

- D 0 - I - 0x029783 0A:9773: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x029784 0A:9774: 43        .byte con_T + $43   ; 
- D 0 - I - 0x029785 0A:9775: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029786 0A:9776: 10        .byte con_X + $10   ; 
@end:



_off007_9777_36:
- D 0 - I - 0x029787 0A:9777: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x029788 0A:9778: DC        .byte con_Y + $DC   ; 
- D 0 - I - 0x029789 0A:9779: 37        .byte con_T + $37   ; 
- D 0 - I - 0x02978A 0A:977A: 02        .byte con_A + $02   ; 
- D 0 - I - 0x02978B 0A:977B: 16        .byte con_X + $16   ; 

- D 0 - I - 0x02978C 0A:977C: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x02978D 0A:977D: 39        .byte con_T + $39   ; 
- D 0 - I - 0x02978E 0A:977E: 02        .byte con_A + $02   ; 
- D 0 - I - 0x02978F 0A:977F: 1E        .byte con_X + $1E   ; 
@end:



_off007_9780_37:
- D 0 - I - 0x029790 0A:9780: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x029791 0A:9781: B9        .byte con_Y + $B9   ; 
- D 0 - I - 0x029792 0A:9782: 25        .byte con_T + $25   ; 
- D 0 - I - 0x029793 0A:9783: 02        .byte con_A + $02   ; 
- D 0 - I - 0x029794 0A:9784: 1D        .byte con_X + $1D   ; 

- D 0 - I - 0x029795 0A:9785: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x029796 0A:9786: 25        .byte con_T + $25   ; 
- D 0 - I - 0x029797 0A:9787: 82        .byte con_A + $82   ; 
- D 0 - I - 0x029798 0A:9788: 1D        .byte con_X + $1D   ; 
@end:



_off007_9789_38:
- D 0 - I - 0x029799 0A:9789: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x02979A 0A:978A: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x02979B 0A:978B: 19        .byte con_T + $19   ; 
- D 0 - I - 0x02979C 0A:978C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02979D 0A:978D: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x02979E 0A:978E: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x02979F 0A:978F: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x0297A0 0A:9790: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297A1 0A:9791: 01        .byte con_X + $01   ; 

- D 0 - I - 0x0297A2 0A:9792: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0297A3 0A:9793: 33        .byte con_T + $33   ; 
- D 0 - I - 0x0297A4 0A:9794: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297A5 0A:9795: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x0297A6 0A:9796: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0297A7 0A:9797: 35        .byte con_T + $35   ; 
- D 0 - I - 0x0297A8 0A:9798: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297A9 0A:9799: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x0297AA 0A:979A: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0297AB 0A:979B: 37        .byte con_T + $37   ; 
- D 0 - I - 0x0297AC 0A:979C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297AD 0A:979D: 07        .byte con_X + $07   ; 

- D 0 - I - 0x0297AE 0A:979E: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0297AF 0A:979F: 39        .byte con_T + $39   ; 
- D 0 - I - 0x0297B0 0A:97A0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297B1 0A:97A1: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x0297B2 0A:97A2: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0297B3 0A:97A3: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x0297B4 0A:97A4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297B5 0A:97A5: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0297B6 0A:97A6: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0297B7 0A:97A7: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x0297B8 0A:97A8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297B9 0A:97A9: 04        .byte con_X + $04   ; 

- D 0 - I - 0x0297BA 0A:97AA: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0297BB 0A:97AB: 31        .byte con_T + $31   ; 
- D 0 - I - 0x0297BC 0A:97AC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297BD 0A:97AD: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0297BE 0A:97AE: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0297BF 0A:97AF: 31        .byte con_T + $31   ; 
- D 0 - I - 0x0297C0 0A:97B0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297C1 0A:97B1: 01        .byte con_X + $01   ; 
@end:



_off007_97B2_39:
- D 0 - I - 0x0297C2 0A:97B2: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x0297C3 0A:97B3: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0297C4 0A:97B4: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0297C5 0A:97B5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297C6 0A:97B6: E5        .byte con_X + $E5   ; 

- D 0 - I - 0x0297C7 0A:97B7: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0297C8 0A:97B8: 03        .byte con_T + $03   ; 
- D 0 - I - 0x0297C9 0A:97B9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297CA 0A:97BA: ED        .byte con_X + $ED   ; 

- D 0 - I - 0x0297CB 0A:97BB: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0297CC 0A:97BC: 05        .byte con_T + $05   ; 
- D 0 - I - 0x0297CD 0A:97BD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297CE 0A:97BE: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x0297CF 0A:97BF: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0297D0 0A:97C0: 07        .byte con_T + $07   ; 
- D 0 - I - 0x0297D1 0A:97C1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297D2 0A:97C2: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x0297D3 0A:97C3: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0297D4 0A:97C4: 09        .byte con_T + $09   ; 
- D 0 - I - 0x0297D5 0A:97C5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297D6 0A:97C6: E7        .byte con_X + $E7   ; 

- D 0 - I - 0x0297D7 0A:97C7: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0297D8 0A:97C8: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x0297D9 0A:97C9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297DA 0A:97CA: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x0297DB 0A:97CB: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0297DC 0A:97CC: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x0297DD 0A:97CD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297DE 0A:97CE: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x0297DF 0A:97CF: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0297E0 0A:97D0: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x0297E1 0A:97D1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297E2 0A:97D2: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x0297E3 0A:97D3: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0297E4 0A:97D4: 47        .byte con_T + $47   ; 
- D 0 - I - 0x0297E5 0A:97D5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297E6 0A:97D6: F4        .byte con_X + $F4   ; 
@end:



_off007_97D7_3A:
- D 0 - I - 0x0297E7 0A:97D7: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x0297E8 0A:97D8: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x0297E9 0A:97D9: 11        .byte con_T + $11   ; 
- D 0 - I - 0x0297EA 0A:97DA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297EB 0A:97DB: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x0297EC 0A:97DC: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x0297ED 0A:97DD: 13        .byte con_T + $13   ; 
- D 0 - I - 0x0297EE 0A:97DE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297EF 0A:97DF: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x0297F0 0A:97E0: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0297F1 0A:97E1: 15        .byte con_T + $15   ; 
- D 0 - I - 0x0297F2 0A:97E2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297F3 0A:97E3: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x0297F4 0A:97E4: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0297F5 0A:97E5: 17        .byte con_T + $17   ; 
- D 0 - I - 0x0297F6 0A:97E6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297F7 0A:97E7: 02        .byte con_X + $02   ; 

- D 0 - I - 0x0297F8 0A:97E8: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0297F9 0A:97E9: 19        .byte con_T + $19   ; 
- D 0 - I - 0x0297FA 0A:97EA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297FB 0A:97EB: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x0297FC 0A:97EC: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0297FD 0A:97ED: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x0297FE 0A:97EE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0297FF 0A:97EF: 01        .byte con_X + $01   ; 

- D 0 - I - 0x029800 0A:97F0: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029801 0A:97F1: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x029802 0A:97F2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029803 0A:97F3: 09        .byte con_X + $09   ; 

- D 0 - I - 0x029804 0A:97F4: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029805 0A:97F5: 49        .byte con_T + $49   ; 
- D 0 - I - 0x029806 0A:97F6: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029807 0A:97F7: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x029808 0A:97F8: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029809 0A:97F9: 43        .byte con_T + $43   ; 
- D 0 - I - 0x02980A 0A:97FA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02980B 0A:97FB: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x02980C 0A:97FC: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02980D 0A:97FD: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x02980E 0A:97FE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02980F 0A:97FF: 07        .byte con_X + $07   ; 
@end:



_off007_9800_3B:
- D 0 - I - 0x029810 0A:9800: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x029811 0A:9801: D6        .byte con_Y + $D6   ; 
- D 0 - I - 0x029812 0A:9802: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x029813 0A:9803: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029814 0A:9804: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x029815 0A:9805: D6        .byte con_Y + $D6   ; 
- D 0 - I - 0x029816 0A:9806: 25        .byte con_T + $25   ; 
- D 0 - I - 0x029817 0A:9807: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029818 0A:9808: 15        .byte con_X + $15   ; 

- D 0 - I - 0x029819 0A:9809: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02981A 0A:980A: 23        .byte con_T + $23   ; 
- D 0 - I - 0x02981B 0A:980B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02981C 0A:980C: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x02981D 0A:980D: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02981E 0A:980E: 21        .byte con_T + $21   ; 
- D 0 - I - 0x02981F 0A:980F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029820 0A:9810: 05        .byte con_X + $05   ; 

- D 0 - I - 0x029821 0A:9811: E6        .byte con_Y + $E6   ; 
- D 0 - I - 0x029822 0A:9812: 51        .byte con_T + $51   ; 
- D 0 - I - 0x029823 0A:9813: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029824 0A:9814: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x029825 0A:9815: E6        .byte con_Y + $E6   ; 
- D 0 - I - 0x029826 0A:9816: 27        .byte con_T + $27   ; 
- D 0 - I - 0x029827 0A:9817: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029828 0A:9818: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x029829 0A:9819: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02982A 0A:981A: 29        .byte con_T + $29   ; 
- D 0 - I - 0x02982B 0A:981B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02982C 0A:981C: 05        .byte con_X + $05   ; 

- D 0 - I - 0x02982D 0A:981D: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02982E 0A:981E: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x02982F 0A:981F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029830 0A:9820: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x029831 0A:9821: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029832 0A:9822: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x029833 0A:9823: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029834 0A:9824: 0B        .byte con_X + $0B   ; 
@end:



_off007_9825_3C:
- D 0 - I - 0x029835 0A:9825: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x029836 0A:9826: D6        .byte con_Y + $D6   ; 
- D 0 - I - 0x029837 0A:9827: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x029838 0A:9828: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029839 0A:9829: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x02983A 0A:982A: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02983B 0A:982B: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x02983C 0A:982C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02983D 0A:982D: 06        .byte con_X + $06   ; 

- D 0 - I - 0x02983E 0A:982E: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02983F 0A:982F: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x029840 0A:9830: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029841 0A:9831: 0E        .byte con_X + $0E   ; 

- D 0 - I - 0x029842 0A:9832: E5        .byte con_Y + $E5   ; 
- D 0 - I - 0x029843 0A:9833: 51        .byte con_T + $51   ; 
- D 0 - I - 0x029844 0A:9834: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029845 0A:9835: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x029846 0A:9836: E6        .byte con_Y + $E6   ; 
- D 0 - I - 0x029847 0A:9837: 27        .byte con_T + $27   ; 
- D 0 - I - 0x029848 0A:9838: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029849 0A:9839: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x02984A 0A:983A: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02984B 0A:983B: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x02984C 0A:983C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02984D 0A:983D: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x02984E 0A:983E: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02984F 0A:983F: 31        .byte con_T + $31   ; 
- D 0 - I - 0x029850 0A:9840: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029851 0A:9841: 06        .byte con_X + $06   ; 

- D 0 - I - 0x029852 0A:9842: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029853 0A:9843: 33        .byte con_T + $33   ; 
- D 0 - I - 0x029854 0A:9844: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029855 0A:9845: 0E        .byte con_X + $0E   ; 
@end:



_off007_9846_3D:
- D 0 - I - 0x029856 0A:9846: 01        .byte (@end - * - 1) / 4

- D 0 - I - 0x029857 0A:9847: EE        .byte con_Y + $EE   ; 
- D 0 - I - 0x029858 0A:9848: 35        .byte con_T + $35   ; 
- D 0 - I - 0x029859 0A:9849: 03        .byte con_A + $03   ; 
- D 0 - I - 0x02985A 0A:984A: E9        .byte con_X + $E9   ; 
@end:



_off007_984B_3E:
- D 0 - I - 0x02985B 0A:984B: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x02985C 0A:984C: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x02985D 0A:984D: 37        .byte con_T + $37   ; 
- D 0 - I - 0x02985E 0A:984E: 03        .byte con_A + $03   ; 
- D 0 - I - 0x02985F 0A:984F: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x029860 0A:9850: C7        .byte con_Y + $C7   ; 
- D 0 - I - 0x029861 0A:9851: 39        .byte con_T + $39   ; 
- D 0 - I - 0x029862 0A:9852: 03        .byte con_A + $03   ; 
- D 0 - I - 0x029863 0A:9853: F3        .byte con_X + $F3   ; 
@end:



_off007_9854_3F:
- D 0 - I - 0x029864 0A:9854: 03        .byte (@end - * - 1) / 4

- D 0 - I - 0x029865 0A:9855: C5        .byte con_Y + $C5   ; 
- D 0 - I - 0x029866 0A:9856: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x029867 0A:9857: 03        .byte con_A + $03   ; 
- D 0 - I - 0x029868 0A:9858: 08        .byte con_X + $08   ; 

- D 0 - I - 0x029869 0A:9859: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x02986A 0A:985A: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x02986B 0A:985B: 03        .byte con_A + $03   ; 
- D 0 - I - 0x02986C 0A:985C: 10        .byte con_X + $10   ; 

- D 0 - I - 0x02986D 0A:985D: CD        .byte con_Y + $CD   ; 
- D 0 - I - 0x02986E 0A:985E: 3F        .byte con_T + $3F   ; 
- D 0 - I - 0x02986F 0A:985F: 03        .byte con_A + $03   ; 
- D 0 - I - 0x029870 0A:9860: 18        .byte con_X + $18   ; 
@end:



_off007_9861_41:
- D 0 - I - 0x029871 0A:9861: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x029872 0A:9862: F9        .byte con_Y + $F9   ; 
- D 0 - I - 0x029873 0A:9863: 61        .byte con_T + $61   ; 
- D 0 - I - 0x029874 0A:9864: 03        .byte con_A + $03   ; 
- D 0 - I - 0x029875 0A:9865: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x029876 0A:9866: F9        .byte con_Y + $F9   ; 
- D 0 - I - 0x029877 0A:9867: 63        .byte con_T + $63   ; 
- D 0 - I - 0x029878 0A:9868: 03        .byte con_A + $03   ; 
- D 0 - I - 0x029879 0A:9869: 00        .byte con_X + $00   ; 
@end:



_off007_986A_40:
- D 0 - I - 0x02987A 0A:986A: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x02987B 0A:986B: F9        .byte con_Y + $F9   ; 
- D 0 - I - 0x02987C 0A:986C: 75        .byte con_T + $75   ; 
- D 0 - I - 0x02987D 0A:986D: 03        .byte con_A + $03   ; 
- D 0 - I - 0x02987E 0A:986E: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x02987F 0A:986F: F9        .byte con_Y + $F9   ; 
- D 0 - I - 0x029880 0A:9870: 77        .byte con_T + $77   ; 
- D 0 - I - 0x029881 0A:9871: 03        .byte con_A + $03   ; 
- D 0 - I - 0x029882 0A:9872: 00        .byte con_X + $00   ; 
@end:



_off007_9873_42:
- D 0 - I - 0x029883 0A:9873: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x029884 0A:9874: C8        .byte con_Y + $C8   ; 
- D 0 - I - 0x029885 0A:9875: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029886 0A:9876: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029887 0A:9877: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x029888 0A:9878: C8        .byte con_Y + $C8   ; 
- D 0 - I - 0x029889 0A:9879: 03        .byte con_T + $03   ; 
- D 0 - I - 0x02988A 0A:987A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02988B 0A:987B: 04        .byte con_X + $04   ; 

- D 0 - I - 0x02988C 0A:987C: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02988D 0A:987D: 05        .byte con_T + $05   ; 
- D 0 - I - 0x02988E 0A:987E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02988F 0A:987F: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x029890 0A:9880: D8        .byte con_Y + $D8   ; 
- D 0 - I - 0x029891 0A:9881: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029892 0A:9882: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029893 0A:9883: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x029894 0A:9884: D8        .byte con_Y + $D8   ; 
- D 0 - I - 0x029895 0A:9885: 09        .byte con_T + $09   ; 
- D 0 - I - 0x029896 0A:9886: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029897 0A:9887: 04        .byte con_X + $04   ; 

- D 0 - I - 0x029898 0A:9888: E5        .byte con_Y + $E5   ; 
- D 0 - I - 0x029899 0A:9889: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x02989A 0A:988A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02989B 0A:988B: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x02989C 0A:988C: E8        .byte con_Y + $E8   ; 
- D 0 - I - 0x02989D 0A:988D: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x02989E 0A:988E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02989F 0A:988F: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0298A0 0A:9890: E8        .byte con_Y + $E8   ; 
- D 0 - I - 0x0298A1 0A:9891: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x0298A2 0A:9892: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0298A3 0A:9893: 04        .byte con_X + $04   ; 

- D 0 - I - 0x0298A4 0A:9894: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x0298A5 0A:9895: 11        .byte con_T + $11   ; 
- D 0 - I - 0x0298A6 0A:9896: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0298A7 0A:9897: FF        .byte con_X + $FF   ; 
@end:



_off007_9898_43:
- D 0 - I - 0x0298A8 0A:9898: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x0298A9 0A:9899: C4        .byte con_Y + $C4   ; 
- D 0 - I - 0x0298AA 0A:989A: 13        .byte con_T + $13   ; 
- D 0 - I - 0x0298AB 0A:989B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0298AC 0A:989C: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x0298AD 0A:989D: C8        .byte con_Y + $C8   ; 
- D 0 - I - 0x0298AE 0A:989E: 15        .byte con_T + $15   ; 
- D 0 - I - 0x0298AF 0A:989F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0298B0 0A:98A0: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x0298B1 0A:98A1: C8        .byte con_Y + $C8   ; 
- D 0 - I - 0x0298B2 0A:98A2: 17        .byte con_T + $17   ; 
- D 0 - I - 0x0298B3 0A:98A3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0298B4 0A:98A4: 03        .byte con_X + $03   ; 

- D 0 - I - 0x0298B5 0A:98A5: C8        .byte con_Y + $C8   ; 
- D 0 - I - 0x0298B6 0A:98A6: 19        .byte con_T + $19   ; 
- D 0 - I - 0x0298B7 0A:98A7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0298B8 0A:98A8: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x0298B9 0A:98A9: D8        .byte con_Y + $D8   ; 
- D 0 - I - 0x0298BA 0A:98AA: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x0298BB 0A:98AB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0298BC 0A:98AC: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0298BD 0A:98AD: D8        .byte con_Y + $D8   ; 
- D 0 - I - 0x0298BE 0A:98AE: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x0298BF 0A:98AF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0298C0 0A:98B0: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0298C1 0A:98B1: E8        .byte con_Y + $E8   ; 
- D 0 - I - 0x0298C2 0A:98B2: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x0298C3 0A:98B3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0298C4 0A:98B4: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x0298C5 0A:98B5: E8        .byte con_Y + $E8   ; 
- D 0 - I - 0x0298C6 0A:98B6: 21        .byte con_T + $21   ; 
- D 0 - I - 0x0298C7 0A:98B7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0298C8 0A:98B8: 02        .byte con_X + $02   ; 
@end:



_off007_98B9_44:
- D 0 - I - 0x0298C9 0A:98B9: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x0298CA 0A:98BA: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x0298CB 0A:98BB: 23        .byte con_T + $23   ; 
- D 0 - I - 0x0298CC 0A:98BC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0298CD 0A:98BD: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x0298CE 0A:98BE: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x0298CF 0A:98BF: 25        .byte con_T + $25   ; 
- D 0 - I - 0x0298D0 0A:98C0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0298D1 0A:98C1: 06        .byte con_X + $06   ; 

- D 0 - I - 0x0298D2 0A:98C2: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0298D3 0A:98C3: 27        .byte con_T + $27   ; 
- D 0 - I - 0x0298D4 0A:98C4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0298D5 0A:98C5: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x0298D6 0A:98C6: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0298D7 0A:98C7: 29        .byte con_T + $29   ; 
- D 0 - I - 0x0298D8 0A:98C8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0298D9 0A:98C9: 05        .byte con_X + $05   ; 

- D 0 - I - 0x0298DA 0A:98CA: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0298DB 0A:98CB: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x0298DC 0A:98CC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0298DD 0A:98CD: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x0298DE 0A:98CE: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0298DF 0A:98CF: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x0298E0 0A:98D0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0298E1 0A:98D1: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x0298E2 0A:98D2: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0298E3 0A:98D3: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x0298E4 0A:98D4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0298E5 0A:98D5: 05        .byte con_X + $05   ; 

- D 0 - I - 0x0298E6 0A:98D6: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0298E7 0A:98D7: 31        .byte con_T + $31   ; 
- D 0 - I - 0x0298E8 0A:98D8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0298E9 0A:98D9: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x0298EA 0A:98DA: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0298EB 0A:98DB: 33        .byte con_T + $33   ; 
- D 0 - I - 0x0298EC 0A:98DC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0298ED 0A:98DD: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x0298EE 0A:98DE: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0298EF 0A:98DF: 35        .byte con_T + $35   ; 
- D 0 - I - 0x0298F0 0A:98E0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0298F1 0A:98E1: 05        .byte con_X + $05   ; 
@end:



_off007_98E2_45:
- D 0 - I - 0x0298F2 0A:98E2: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x0298F3 0A:98E3: E4        .byte con_Y + $E4   ; 
- D 0 - I - 0x0298F4 0A:98E4: 3F        .byte con_T + $3F   ; 
- D 0 - I - 0x0298F5 0A:98E5: 03        .byte con_A + $03   ; 
- D 0 - I - 0x0298F6 0A:98E6: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x0298F7 0A:98E7: E3        .byte con_Y + $E3   ; 
- D 0 - I - 0x0298F8 0A:98E8: 75        .byte con_T + $75   ; 
- D 0 - I - 0x0298F9 0A:98E9: 03        .byte con_A + $03   ; 
- D 0 - I - 0x0298FA 0A:98EA: ED        .byte con_X + $ED   ; 
@end:



_off007_98EB_46:
- D 0 - I - 0x0298FB 0A:98EB: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x0298FC 0A:98EC: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x0298FD 0A:98ED: 75        .byte con_T + $75   ; 
- D 0 - I - 0x0298FE 0A:98EE: 03        .byte con_A + $03   ; 
- D 0 - I - 0x0298FF 0A:98EF: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x029900 0A:98F0: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029901 0A:98F1: 77        .byte con_T + $77   ; 
- D 0 - I - 0x029902 0A:98F2: 03        .byte con_A + $03   ; 
- D 0 - I - 0x029903 0A:98F3: 05        .byte con_X + $05   ; 
@end:



_off007_98F4_47:
- D 0 - I - 0x029904 0A:98F4: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x029905 0A:98F5: E8        .byte con_Y + $E8   ; 
- D 0 - I - 0x029906 0A:98F6: 73        .byte con_T + $73   ; 
- D 0 - I - 0x029907 0A:98F7: 03        .byte con_A + $03   ; 
- D 0 - I - 0x029908 0A:98F8: 13        .byte con_X + $13   ; 

- D 0 - I - 0x029909 0A:98F9: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02990A 0A:98FA: 73        .byte con_T + $73   ; 
- D 0 - I - 0x02990B 0A:98FB: 03        .byte con_A + $03   ; 
- D 0 - I - 0x02990C 0A:98FC: 10        .byte con_X + $10   ; 
@end:



_off007_98FD_48:
- D 0 - I - 0x02990D 0A:98FD: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x02990E 0A:98FE: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x02990F 0A:98FF: 75        .byte con_T + $75   ; 
- D 0 - I - 0x029910 0A:9900: 03        .byte con_A + $03   ; 
- D 0 - I - 0x029911 0A:9901: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029912 0A:9902: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029913 0A:9903: 77        .byte con_T + $77   ; 
- D 0 - I - 0x029914 0A:9904: 03        .byte con_A + $03   ; 
- D 0 - I - 0x029915 0A:9905: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029916 0A:9906: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029917 0A:9907: 75        .byte con_T + $75   ; 
- D 0 - I - 0x029918 0A:9908: 03        .byte con_A + $03   ; 
- D 0 - I - 0x029919 0A:9909: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x02991A 0A:990A: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x02991B 0A:990B: 77        .byte con_T + $77   ; 
- D 0 - I - 0x02991C 0A:990C: 03        .byte con_A + $03   ; 
- D 0 - I - 0x02991D 0A:990D: 04        .byte con_X + $04   ; 

- D 0 - I - 0x02991E 0A:990E: 01        .byte con_Y + $01   ; 
- D 0 - I - 0x02991F 0A:990F: 75        .byte con_T + $75   ; 
- D 0 - I - 0x029920 0A:9910: 03        .byte con_A + $03   ; 
- D 0 - I - 0x029921 0A:9911: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029922 0A:9912: 01        .byte con_Y + $01   ; 
- D 0 - I - 0x029923 0A:9913: 77        .byte con_T + $77   ; 
- D 0 - I - 0x029924 0A:9914: 03        .byte con_A + $03   ; 
- D 0 - I - 0x029925 0A:9915: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029926 0A:9916: 11        .byte con_Y + $11   ; 
- D 0 - I - 0x029927 0A:9917: 75        .byte con_T + $75   ; 
- D 0 - I - 0x029928 0A:9918: 03        .byte con_A + $03   ; 
- D 0 - I - 0x029929 0A:9919: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x02992A 0A:991A: 11        .byte con_Y + $11   ; 
- D 0 - I - 0x02992B 0A:991B: 77        .byte con_T + $77   ; 
- D 0 - I - 0x02992C 0A:991C: 03        .byte con_A + $03   ; 
- D 0 - I - 0x02992D 0A:991D: 04        .byte con_X + $04   ; 
@end:



_off007_991E_49:
- D 0 - I - 0x02992E 0A:991E: 04        .byte (@end - * - 1) / 4

- D 0 - I - 0x02992F 0A:991F: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x029930 0A:9920: 73        .byte con_T + $73   ; 
- D 0 - I - 0x029931 0A:9921: 03        .byte con_A + $03   ; 
- D 0 - I - 0x029932 0A:9922: 12        .byte con_X + $12   ; 

- D 0 - I - 0x029933 0A:9923: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x029934 0A:9924: 73        .byte con_T + $73   ; 
- D 0 - I - 0x029935 0A:9925: 03        .byte con_A + $03   ; 
- D 0 - I - 0x029936 0A:9926: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x029937 0A:9927: 02        .byte con_Y + $02   ; 
- D 0 - I - 0x029938 0A:9928: 73        .byte con_T + $73   ; 
- D 0 - I - 0x029939 0A:9929: 03        .byte con_A + $03   ; 
- D 0 - I - 0x02993A 0A:992A: 12        .byte con_X + $12   ; 

- D 0 - I - 0x02993B 0A:992B: 12        .byte con_Y + $12   ; 
- D 0 - I - 0x02993C 0A:992C: 73        .byte con_T + $73   ; 
- D 0 - I - 0x02993D 0A:992D: 03        .byte con_A + $03   ; 
- D 0 - I - 0x02993E 0A:992E: 0D        .byte con_X + $0D   ; 
@end:



_off007_992F_4A:
- D 0 - I - 0x02993F 0A:992F: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x029940 0A:9930: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x029941 0A:9931: 71        .byte con_T + $71   ; 
- D 0 - I - 0x029942 0A:9932: 03        .byte con_A + $03   ; 
- D 0 - I - 0x029943 0A:9933: 0E        .byte con_X + $0E   ; 

- D 0 - I - 0x029944 0A:9934: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x029945 0A:9935: 71        .byte con_T + $71   ; 
- D 0 - I - 0x029946 0A:9936: 03        .byte con_A + $03   ; 
- D 0 - I - 0x029947 0A:9937: 09        .byte con_X + $09   ; 

- D 0 - I - 0x029948 0A:9938: 02        .byte con_Y + $02   ; 
- D 0 - I - 0x029949 0A:9939: 71        .byte con_T + $71   ; 
- D 0 - I - 0x02994A 0A:993A: 03        .byte con_A + $03   ; 
- D 0 - I - 0x02994B 0A:993B: 0E        .byte con_X + $0E   ; 

- D 0 - I - 0x02994C 0A:993C: 12        .byte con_Y + $12   ; 
- D 0 - I - 0x02994D 0A:993D: 71        .byte con_T + $71   ; 
- D 0 - I - 0x02994E 0A:993E: 03        .byte con_A + $03   ; 
- D 0 - I - 0x02994F 0A:993F: 09        .byte con_X + $09   ; 

- D 0 - I - 0x029950 0A:9940: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x029951 0A:9941: 71        .byte con_T + $71   ; 
- D 0 - I - 0x029952 0A:9942: 43        .byte con_A + $43   ; 
- D 0 - I - 0x029953 0A:9943: EC        .byte con_X + $EC   ; 

- D 0 - I - 0x029954 0A:9944: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x029955 0A:9945: 71        .byte con_T + $71   ; 
- D 0 - I - 0x029956 0A:9946: 43        .byte con_A + $43   ; 
- D 0 - I - 0x029957 0A:9947: F1        .byte con_X + $F1   ; 

- D 0 - I - 0x029958 0A:9948: 02        .byte con_Y + $02   ; 
- D 0 - I - 0x029959 0A:9949: 71        .byte con_T + $71   ; 
- D 0 - I - 0x02995A 0A:994A: 43        .byte con_A + $43   ; 
- D 0 - I - 0x02995B 0A:994B: EC        .byte con_X + $EC   ; 

- D 0 - I - 0x02995C 0A:994C: 12        .byte con_Y + $12   ; 
- D 0 - I - 0x02995D 0A:994D: 71        .byte con_T + $71   ; 
- D 0 - I - 0x02995E 0A:994E: 43        .byte con_A + $43   ; 
- D 0 - I - 0x02995F 0A:994F: F1        .byte con_X + $F1   ; 
@end:



_off007_9950_4B:
- D 0 - I - 0x029960 0A:9950: 04        .byte (@end - * - 1) / 4

- D 0 - I - 0x029961 0A:9951: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x029962 0A:9952: 73        .byte con_T + $73   ; 
- D 0 - I - 0x029963 0A:9953: 43        .byte con_A + $43   ; 
- D 0 - I - 0x029964 0A:9954: E6        .byte con_X + $E6   ; 

- D 0 - I - 0x029965 0A:9955: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x029966 0A:9956: 73        .byte con_T + $73   ; 
- D 0 - I - 0x029967 0A:9957: 43        .byte con_A + $43   ; 
- D 0 - I - 0x029968 0A:9958: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x029969 0A:9959: 02        .byte con_Y + $02   ; 
- D 0 - I - 0x02996A 0A:995A: 73        .byte con_T + $73   ; 
- D 0 - I - 0x02996B 0A:995B: 43        .byte con_A + $43   ; 
- D 0 - I - 0x02996C 0A:995C: E6        .byte con_X + $E6   ; 

- D 0 - I - 0x02996D 0A:995D: 12        .byte con_Y + $12   ; 
- D 0 - I - 0x02996E 0A:995E: 73        .byte con_T + $73   ; 
- D 0 - I - 0x02996F 0A:995F: 43        .byte con_A + $43   ; 
- D 0 - I - 0x029970 0A:9960: EB        .byte con_X + $EB   ; 
@end:



_off007_9961_4C:
- D 0 - I - 0x029971 0A:9961: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x029972 0A:9962: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029973 0A:9963: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029974 0A:9964: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029975 0A:9965: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x029976 0A:9966: D3        .byte con_Y + $D3   ; 
- D 0 - I - 0x029977 0A:9967: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029978 0A:9968: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029979 0A:9969: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x02997A 0A:996A: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02997B 0A:996B: 05        .byte con_T + $05   ; 
- D 0 - I - 0x02997C 0A:996C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02997D 0A:996D: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x02997E 0A:996E: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02997F 0A:996F: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029980 0A:9970: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029981 0A:9971: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x029982 0A:9972: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029983 0A:9973: 09        .byte con_T + $09   ; 
- D 0 - I - 0x029984 0A:9974: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029985 0A:9975: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x029986 0A:9976: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029987 0A:9977: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029988 0A:9978: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029989 0A:9979: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x02998A 0A:997A: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x02998B 0A:997B: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x02998C 0A:997C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02998D 0A:997D: 03        .byte con_X + $03   ; 

- D 0 - I - 0x02998E 0A:997E: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x02998F 0A:997F: 49        .byte con_T + $49   ; 
- D 0 - I - 0x029990 0A:9980: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029991 0A:9981: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x029992 0A:9982: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029993 0A:9983: 43        .byte con_T + $43   ; 
- D 0 - I - 0x029994 0A:9984: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029995 0A:9985: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x029996 0A:9986: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029997 0A:9987: 47        .byte con_T + $47   ; 
- D 0 - I - 0x029998 0A:9988: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029999 0A:9989: 03        .byte con_X + $03   ; 
@end:



_off007_998A_4D:
- D 0 - I - 0x02999A 0A:998A: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x02999B 0A:998B: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x02999C 0A:998C: 19        .byte con_T + $19   ; 
- D 0 - I - 0x02999D 0A:998D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02999E 0A:998E: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x02999F 0A:998F: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0299A0 0A:9990: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x0299A1 0A:9991: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0299A2 0A:9992: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x0299A3 0A:9993: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0299A4 0A:9994: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x0299A5 0A:9995: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0299A6 0A:9996: 03        .byte con_X + $03   ; 

- D 0 - I - 0x0299A7 0A:9997: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0299A8 0A:9998: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x0299A9 0A:9999: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0299AA 0A:999A: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x0299AB 0A:999B: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0299AC 0A:999C: 21        .byte con_T + $21   ; 
- D 0 - I - 0x0299AD 0A:999D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0299AE 0A:999E: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0299AF 0A:999F: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0299B0 0A:99A0: 23        .byte con_T + $23   ; 
- D 0 - I - 0x0299B1 0A:99A1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0299B2 0A:99A2: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0299B3 0A:99A3: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0299B4 0A:99A4: 49        .byte con_T + $49   ; 
- D 0 - I - 0x0299B5 0A:99A5: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0299B6 0A:99A6: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x0299B7 0A:99A7: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0299B8 0A:99A8: 43        .byte con_T + $43   ; 
- D 0 - I - 0x0299B9 0A:99A9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0299BA 0A:99AA: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0299BB 0A:99AB: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0299BC 0A:99AC: 43        .byte con_T + $43   ; 
- D 0 - I - 0x0299BD 0A:99AD: 40        .byte con_A + $40   ; 
- D 0 - I - 0x0299BE 0A:99AE: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0299BF 0A:99AF: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0299C0 0A:99B0: 49        .byte con_T + $49   ; 
- D 0 - I - 0x0299C1 0A:99B1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0299C2 0A:99B2: 04        .byte con_X + $04   ; 
@end:



_off007_99B3_4E:
- D 0 - I - 0x0299C3 0A:99B3: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x0299C4 0A:99B4: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0299C5 0A:99B5: 01        .byte con_T + $01   ; 
- D 0 - I - 0x0299C6 0A:99B6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0299C7 0A:99B7: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x0299C8 0A:99B8: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0299C9 0A:99B9: 05        .byte con_T + $05   ; 
- D 0 - I - 0x0299CA 0A:99BA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0299CB 0A:99BB: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x0299CC 0A:99BC: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0299CD 0A:99BD: 07        .byte con_T + $07   ; 
- D 0 - I - 0x0299CE 0A:99BE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0299CF 0A:99BF: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x0299D0 0A:99C0: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0299D1 0A:99C1: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x0299D2 0A:99C2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0299D3 0A:99C3: ED        .byte con_X + $ED   ; 

- D 0 - I - 0x0299D4 0A:99C4: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0299D5 0A:99C5: 11        .byte con_T + $11   ; 
- D 0 - I - 0x0299D6 0A:99C6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0299D7 0A:99C7: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x0299D8 0A:99C8: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0299D9 0A:99C9: 15        .byte con_T + $15   ; 
- D 0 - I - 0x0299DA 0A:99CA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0299DB 0A:99CB: 05        .byte con_X + $05   ; 

- D 0 - I - 0x0299DC 0A:99CC: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0299DD 0A:99CD: 17        .byte con_T + $17   ; 
- D 0 - I - 0x0299DE 0A:99CE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0299DF 0A:99CF: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x0299E0 0A:99D0: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x0299E1 0A:99D1: 13        .byte con_T + $13   ; 
- D 0 - I - 0x0299E2 0A:99D2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0299E3 0A:99D3: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x0299E4 0A:99D4: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x0299E5 0A:99D5: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x0299E6 0A:99D6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0299E7 0A:99D7: EE        .byte con_X + $EE   ; 
@end:



_off007_99D8_4F:
- D 0 - I - 0x0299E8 0A:99D8: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x0299E9 0A:99D9: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x0299EA 0A:99DA: 31        .byte con_T + $31   ; 
- D 0 - I - 0x0299EB 0A:99DB: 80        .byte con_A + $80   ; 
- D 0 - I - 0x0299EC 0A:99DC: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x0299ED 0A:99DD: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x0299EE 0A:99DE: 33        .byte con_T + $33   ; 
- D 0 - I - 0x0299EF 0A:99DF: 80        .byte con_A + $80   ; 
- D 0 - I - 0x0299F0 0A:99E0: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x0299F1 0A:99E1: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x0299F2 0A:99E2: 35        .byte con_T + $35   ; 
- D 0 - I - 0x0299F3 0A:99E3: 80        .byte con_A + $80   ; 
- D 0 - I - 0x0299F4 0A:99E4: 05        .byte con_X + $05   ; 

- D 0 - I - 0x0299F5 0A:99E5: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0299F6 0A:99E6: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x0299F7 0A:99E7: 80        .byte con_A + $80   ; 
- D 0 - I - 0x0299F8 0A:99E8: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x0299F9 0A:99E9: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0299FA 0A:99EA: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x0299FB 0A:99EB: 80        .byte con_A + $80   ; 
- D 0 - I - 0x0299FC 0A:99EC: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x0299FD 0A:99ED: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x0299FE 0A:99EE: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x0299FF 0A:99EF: 80        .byte con_A + $80   ; 
- D 0 - I - 0x029A00 0A:99F0: 05        .byte con_X + $05   ; 

- D 0 - I - 0x029A01 0A:99F1: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029A02 0A:99F2: 27        .byte con_T + $27   ; 
- D 0 - I - 0x029A03 0A:99F3: 80        .byte con_A + $80   ; 
- D 0 - I - 0x029A04 0A:99F4: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x029A05 0A:99F5: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029A06 0A:99F6: 29        .byte con_T + $29   ; 
- D 0 - I - 0x029A07 0A:99F7: 80        .byte con_A + $80   ; 
- D 0 - I - 0x029A08 0A:99F8: 05        .byte con_X + $05   ; 

- D 0 - I - 0x029A09 0A:99F9: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029A0A 0A:99FA: 23        .byte con_T + $23   ; 
- D 0 - I - 0x029A0B 0A:99FB: 80        .byte con_A + $80   ; 
- D 0 - I - 0x029A0C 0A:99FC: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x029A0D 0A:99FD: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029A0E 0A:99FE: 25        .byte con_T + $25   ; 
- D 0 - I - 0x029A0F 0A:99FF: 80        .byte con_A + $80   ; 
- D 0 - I - 0x029A10 0A:9A00: 06        .byte con_X + $06   ; 
@end:



_off007_9A01_50:
- D 0 - I - 0x029A11 0A:9A01: 0C        .byte (@end - * - 1) / 4

- D 0 - I - 0x029A12 0A:9A02: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029A13 0A:9A03: 25        .byte con_T + $25   ; 
- D 0 - I - 0x029A14 0A:9A04: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A15 0A:9A05: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x029A16 0A:9A06: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029A17 0A:9A07: 33        .byte con_T + $33   ; 
- D 0 - I - 0x029A18 0A:9A08: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A19 0A:9A09: 04        .byte con_X + $04   ; 

- D 0 - I - 0x029A1A 0A:9A0A: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029A1B 0A:9A0B: 35        .byte con_T + $35   ; 
- D 0 - I - 0x029A1C 0A:9A0C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A1D 0A:9A0D: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x029A1E 0A:9A0E: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029A1F 0A:9A0F: 37        .byte con_T + $37   ; 
- D 0 - I - 0x029A20 0A:9A10: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A21 0A:9A11: 04        .byte con_X + $04   ; 

- D 0 - I - 0x029A22 0A:9A12: C8        .byte con_Y + $C8   ; 
- D 0 - I - 0x029A23 0A:9A13: 39        .byte con_T + $39   ; 
- D 0 - I - 0x029A24 0A:9A14: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A25 0A:9A15: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x029A26 0A:9A16: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029A27 0A:9A17: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x029A28 0A:9A18: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A29 0A:9A19: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x029A2A 0A:9A1A: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029A2B 0A:9A1B: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x029A2C 0A:9A1C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A2D 0A:9A1D: 02        .byte con_X + $02   ; 

- D 0 - I - 0x029A2E 0A:9A1E: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029A2F 0A:9A1F: 31        .byte con_T + $31   ; 
- D 0 - I - 0x029A30 0A:9A20: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A31 0A:9A21: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x029A32 0A:9A22: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029A33 0A:9A23: 49        .byte con_T + $49   ; 
- D 0 - I - 0x029A34 0A:9A24: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029A35 0A:9A25: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x029A36 0A:9A26: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029A37 0A:9A27: 43        .byte con_T + $43   ; 
- D 0 - I - 0x029A38 0A:9A28: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029A39 0A:9A29: 06        .byte con_X + $06   ; 

- D 0 - I - 0x029A3A 0A:9A2A: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029A3B 0A:9A2B: 49        .byte con_T + $49   ; 
- D 0 - I - 0x029A3C 0A:9A2C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A3D 0A:9A2D: 0E        .byte con_X + $0E   ; 

- D 0 - I - 0x029A3E 0A:9A2E: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029A3F 0A:9A2F: 43        .byte con_T + $43   ; 
- D 0 - I - 0x029A40 0A:9A30: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A41 0A:9A31: FF        .byte con_X + $FF   ; 
@end:



_off007_9A32_51:
- D 0 - I - 0x029A42 0A:9A32: 0B        .byte (@end - * - 1) / 4

- D 0 - I - 0x029A43 0A:9A33: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029A44 0A:9A34: 25        .byte con_T + $25   ; 
- D 0 - I - 0x029A45 0A:9A35: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A46 0A:9A36: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x029A47 0A:9A37: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029A48 0A:9A38: 27        .byte con_T + $27   ; 
- D 0 - I - 0x029A49 0A:9A39: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A4A 0A:9A3A: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029A4B 0A:9A3B: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029A4C 0A:9A3C: 29        .byte con_T + $29   ; 
- D 0 - I - 0x029A4D 0A:9A3D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A4E 0A:9A3E: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x029A4F 0A:9A3F: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029A50 0A:9A40: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x029A51 0A:9A41: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A52 0A:9A42: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029A53 0A:9A43: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029A54 0A:9A44: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x029A55 0A:9A45: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A56 0A:9A46: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x029A57 0A:9A47: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029A58 0A:9A48: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x029A59 0A:9A49: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A5A 0A:9A4A: 01        .byte con_X + $01   ; 

- D 0 - I - 0x029A5B 0A:9A4B: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029A5C 0A:9A4C: 31        .byte con_T + $31   ; 
- D 0 - I - 0x029A5D 0A:9A4D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A5E 0A:9A4E: 09        .byte con_X + $09   ; 

- D 0 - I - 0x029A5F 0A:9A4F: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029A60 0A:9A50: 49        .byte con_T + $49   ; 
- D 0 - I - 0x029A61 0A:9A51: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A62 0A:9A52: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x029A63 0A:9A53: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029A64 0A:9A54: 43        .byte con_T + $43   ; 
- D 0 - I - 0x029A65 0A:9A55: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A66 0A:9A56: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x029A67 0A:9A57: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029A68 0A:9A58: 49        .byte con_T + $49   ; 
- D 0 - I - 0x029A69 0A:9A59: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029A6A 0A:9A5A: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x029A6B 0A:9A5B: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029A6C 0A:9A5C: 43        .byte con_T + $43   ; 
- D 0 - I - 0x029A6D 0A:9A5D: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029A6E 0A:9A5E: 05        .byte con_X + $05   ; 
@end:



_off007_9A5F_52:
- D 0 - I - 0x029A6F 0A:9A5F: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x029A70 0A:9A60: CD        .byte con_Y + $CD   ; 
- D 0 - I - 0x029A71 0A:9A61: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029A72 0A:9A62: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A73 0A:9A63: EC        .byte con_X + $EC   ; 

- D 0 - I - 0x029A74 0A:9A64: CC        .byte con_Y + $CC   ; 
- D 0 - I - 0x029A75 0A:9A65: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029A76 0A:9A66: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A77 0A:9A67: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x029A78 0A:9A68: DC        .byte con_Y + $DC   ; 
- D 0 - I - 0x029A79 0A:9A69: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029A7A 0A:9A6A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A7B 0A:9A6B: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x029A7C 0A:9A6C: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029A7D 0A:9A6D: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029A7E 0A:9A6E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A7F 0A:9A6F: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x029A80 0A:9A70: CB        .byte con_Y + $CB   ; 
- D 0 - I - 0x029A81 0A:9A71: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029A82 0A:9A72: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A83 0A:9A73: 04        .byte con_X + $04   ; 

- D 0 - I - 0x029A84 0A:9A74: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029A85 0A:9A75: 09        .byte con_T + $09   ; 
- D 0 - I - 0x029A86 0A:9A76: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A87 0A:9A77: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x029A88 0A:9A78: DB        .byte con_Y + $DB   ; 
- D 0 - I - 0x029A89 0A:9A79: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029A8A 0A:9A7A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A8B 0A:9A7B: 04        .byte con_X + $04   ; 

- D 0 - I - 0x029A8C 0A:9A7C: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x029A8D 0A:9A7D: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029A8E 0A:9A7E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A8F 0A:9A7F: 0C        .byte con_X + $0C   ; 
@end:



_off007_9A80_53:
- D 0 - I - 0x029A90 0A:9A80: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x029A91 0A:9A81: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029A92 0A:9A82: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029A93 0A:9A83: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A94 0A:9A84: EC        .byte con_X + $EC   ; 

- D 0 - I - 0x029A95 0A:9A85: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x029A96 0A:9A86: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029A97 0A:9A87: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A98 0A:9A88: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x029A99 0A:9A89: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x029A9A 0A:9A8A: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029A9B 0A:9A8B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029A9C 0A:9A8C: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x029A9D 0A:9A8D: D4        .byte con_Y + $D4   ; 
- D 0 - I - 0x029A9E 0A:9A8E: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029A9F 0A:9A8F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029AA0 0A:9A90: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x029AA1 0A:9A91: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x029AA2 0A:9A92: 11        .byte con_T + $11   ; 
- D 0 - I - 0x029AA3 0A:9A93: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029AA4 0A:9A94: 04        .byte con_X + $04   ; 

- D 0 - I - 0x029AA5 0A:9A95: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x029AA6 0A:9A96: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029AA7 0A:9A97: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029AA8 0A:9A98: 04        .byte con_X + $04   ; 

- D 0 - I - 0x029AA9 0A:9A99: CA        .byte con_Y + $CA   ; 
- D 0 - I - 0x029AAA 0A:9A9A: 13        .byte con_T + $13   ; 
- D 0 - I - 0x029AAB 0A:9A9B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029AAC 0A:9A9C: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x029AAD 0A:9A9D: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029AAE 0A:9A9E: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029AAF 0A:9A9F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029AB0 0A:9AA0: 0C        .byte con_X + $0C   ; 
@end:



_off007_9AA1_54:
- D 0 - I - 0x029AB1 0A:9AA1: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x029AB2 0A:9AA2: D2        .byte con_Y + $D2   ; 
- D 0 - I - 0x029AB3 0A:9AA3: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029AB4 0A:9AA4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029AB5 0A:9AA5: EC        .byte con_X + $EC   ; 

- D 0 - I - 0x029AB6 0A:9AA6: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029AB7 0A:9AA7: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029AB8 0A:9AA8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029AB9 0A:9AA9: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x029ABA 0A:9AAA: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029ABB 0A:9AAB: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x029ABC 0A:9AAC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029ABD 0A:9AAD: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x029ABE 0A:9AAE: D3        .byte con_Y + $D3   ; 
- D 0 - I - 0x029ABF 0A:9AAF: 17        .byte con_T + $17   ; 
- D 0 - I - 0x029AC0 0A:9AB0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029AC1 0A:9AB1: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x029AC2 0A:9AB2: E3        .byte con_Y + $E3   ; 
- D 0 - I - 0x029AC3 0A:9AB3: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x029AC4 0A:9AB4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029AC5 0A:9AB5: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x029AC6 0A:9AB6: CD        .byte con_Y + $CD   ; 
- D 0 - I - 0x029AC7 0A:9AB7: 19        .byte con_T + $19   ; 
- D 0 - I - 0x029AC8 0A:9AB8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029AC9 0A:9AB9: 04        .byte con_X + $04   ; 

- D 0 - I - 0x029ACA 0A:9ABA: DD        .byte con_Y + $DD   ; 
- D 0 - I - 0x029ACB 0A:9ABB: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029ACC 0A:9ABC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029ACD 0A:9ABD: 04        .byte con_X + $04   ; 

- D 0 - I - 0x029ACE 0A:9ABE: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029ACF 0A:9ABF: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029AD0 0A:9AC0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029AD1 0A:9AC1: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x029AD2 0A:9AC2: BD        .byte con_Y + $BD   ; 
- D 0 - I - 0x029AD3 0A:9AC3: 15        .byte con_T + $15   ; 
- D 0 - I - 0x029AD4 0A:9AC4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029AD5 0A:9AC5: 05        .byte con_X + $05   ; 
@end:



_off007_9AC6_55:
- D 0 - I - 0x029AD6 0A:9AC6: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x029AD7 0A:9AC7: E5        .byte con_Y + $E5   ; 
- D 0 - I - 0x029AD8 0A:9AC8: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029AD9 0A:9AC9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029ADA 0A:9ACA: EC        .byte con_X + $EC   ; 

- D 0 - I - 0x029ADB 0A:9ACB: E4        .byte con_Y + $E4   ; 
- D 0 - I - 0x029ADC 0A:9ACC: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029ADD 0A:9ACD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029ADE 0A:9ACE: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x029ADF 0A:9ACF: F4        .byte con_Y + $F4   ; 
- D 0 - I - 0x029AE0 0A:9AD0: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x029AE1 0A:9AD1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029AE2 0A:9AD2: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x029AE3 0A:9AD3: E6        .byte con_Y + $E6   ; 
- D 0 - I - 0x029AE4 0A:9AD4: 17        .byte con_T + $17   ; 
- D 0 - I - 0x029AE5 0A:9AD5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029AE6 0A:9AD6: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x029AE7 0A:9AD7: F6        .byte con_Y + $F6   ; 
- D 0 - I - 0x029AE8 0A:9AD8: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x029AE9 0A:9AD9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029AEA 0A:9ADA: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x029AEB 0A:9ADB: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029AEC 0A:9ADC: 19        .byte con_T + $19   ; 
- D 0 - I - 0x029AED 0A:9ADD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029AEE 0A:9ADE: 04        .byte con_X + $04   ; 

- D 0 - I - 0x029AEF 0A:9ADF: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029AF0 0A:9AE0: 15        .byte con_T + $15   ; 
- D 0 - I - 0x029AF1 0A:9AE1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029AF2 0A:9AE2: 05        .byte con_X + $05   ; 

- D 0 - I - 0x029AF3 0A:9AE3: F3        .byte con_Y + $F3   ; 
- D 0 - I - 0x029AF4 0A:9AE4: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029AF5 0A:9AE5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029AF6 0A:9AE6: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x029AF7 0A:9AE7: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029AF8 0A:9AE8: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029AF9 0A:9AE9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029AFA 0A:9AEA: 04        .byte con_X + $04   ; 
@end:



_off007_9AEB_56:
- D 0 - I - 0x029AFB 0A:9AEB: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x029AFC 0A:9AEC: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029AFD 0A:9AED: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029AFE 0A:9AEE: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x029AFF 0A:9AEF: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x029B00 0A:9AF0: D4        .byte con_Y + $D4   ; 
- D 0 - I - 0x029B01 0A:9AF1: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029B02 0A:9AF2: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x029B03 0A:9AF3: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x029B04 0A:9AF4: E8        .byte con_Y + $E8   ; 
- D 0 - I - 0x029B05 0A:9AF5: 13        .byte con_T + $13   ; 
- D 0 - I - 0x029B06 0A:9AF6: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x029B07 0A:9AF7: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x029B08 0A:9AF8: E4        .byte con_Y + $E4   ; 
- D 0 - I - 0x029B09 0A:9AF9: 11        .byte con_T + $11   ; 
- D 0 - I - 0x029B0A 0A:9AFA: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x029B0B 0A:9AFB: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x029B0C 0A:9AFC: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x029B0D 0A:9AFD: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029B0E 0A:9AFE: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x029B0F 0A:9AFF: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x029B10 0A:9B00: D3        .byte con_Y + $D3   ; 
- D 0 - I - 0x029B11 0A:9B01: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029B12 0A:9B02: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x029B13 0A:9B03: 07        .byte con_X + $07   ; 

- D 0 - I - 0x029B14 0A:9B04: E3        .byte con_Y + $E3   ; 
- D 0 - I - 0x029B15 0A:9B05: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029B16 0A:9B06: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x029B17 0A:9B07: 07        .byte con_X + $07   ; 

- D 0 - I - 0x029B18 0A:9B08: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x029B19 0A:9B09: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029B1A 0A:9B0A: C0        .byte con_A + $C0   ; 
- D 0 - I - 0x029B1B 0A:9B0B: 0F        .byte con_X + $0F   ; 
@end:



_off007_9B0C_57:
- D 0 - I - 0x029B1C 0A:9B0C: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x029B1D 0A:9B0D: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029B1E 0A:9B0E: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029B1F 0A:9B0F: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029B20 0A:9B10: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x029B21 0A:9B11: C8        .byte con_Y + $C8   ; 
- D 0 - I - 0x029B22 0A:9B12: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029B23 0A:9B13: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029B24 0A:9B14: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x029B25 0A:9B15: C8        .byte con_Y + $C8   ; 
- D 0 - I - 0x029B26 0A:9B16: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029B27 0A:9B17: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029B28 0A:9B18: 06        .byte con_X + $06   ; 

- D 0 - I - 0x029B29 0A:9B19: D8        .byte con_Y + $D8   ; 
- D 0 - I - 0x029B2A 0A:9B1A: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029B2B 0A:9B1B: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029B2C 0A:9B1C: 06        .byte con_X + $06   ; 

- D 0 - I - 0x029B2D 0A:9B1D: D8        .byte con_Y + $D8   ; 
- D 0 - I - 0x029B2E 0A:9B1E: 09        .byte con_T + $09   ; 
- D 0 - I - 0x029B2F 0A:9B1F: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029B30 0A:9B20: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x029B31 0A:9B21: E8        .byte con_Y + $E8   ; 
- D 0 - I - 0x029B32 0A:9B22: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029B33 0A:9B23: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029B34 0A:9B24: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x029B35 0A:9B25: E8        .byte con_Y + $E8   ; 
- D 0 - I - 0x029B36 0A:9B26: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029B37 0A:9B27: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029B38 0A:9B28: 06        .byte con_X + $06   ; 

- D 0 - I - 0x029B39 0A:9B29: E5        .byte con_Y + $E5   ; 
- D 0 - I - 0x029B3A 0A:9B2A: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029B3B 0A:9B2B: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029B3C 0A:9B2C: 0E        .byte con_X + $0E   ; 

- D 0 - I - 0x029B3D 0A:9B2D: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x029B3E 0A:9B2E: 11        .byte con_T + $11   ; 
- D 0 - I - 0x029B3F 0A:9B2F: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029B40 0A:9B30: 03        .byte con_X + $03   ; 
@end:



_off007_9B31_58:
- D 0 - I - 0x029B41 0A:9B31: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x029B42 0A:9B32: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029B43 0A:9B33: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029B44 0A:9B34: 80        .byte con_A + $80   ; 
- D 0 - I - 0x029B45 0A:9B35: 13        .byte con_X + $13   ; 

- D 0 - I - 0x029B46 0A:9B36: D4        .byte con_Y + $D4   ; 
- D 0 - I - 0x029B47 0A:9B37: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029B48 0A:9B38: 80        .byte con_A + $80   ; 
- D 0 - I - 0x029B49 0A:9B39: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x029B4A 0A:9B3A: E8        .byte con_Y + $E8   ; 
- D 0 - I - 0x029B4B 0A:9B3B: 13        .byte con_T + $13   ; 
- D 0 - I - 0x029B4C 0A:9B3C: 80        .byte con_A + $80   ; 
- D 0 - I - 0x029B4D 0A:9B3D: 13        .byte con_X + $13   ; 

- D 0 - I - 0x029B4E 0A:9B3E: E4        .byte con_Y + $E4   ; 
- D 0 - I - 0x029B4F 0A:9B3F: 11        .byte con_T + $11   ; 
- D 0 - I - 0x029B50 0A:9B40: 80        .byte con_A + $80   ; 
- D 0 - I - 0x029B51 0A:9B41: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x029B52 0A:9B42: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x029B53 0A:9B43: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029B54 0A:9B44: 80        .byte con_A + $80   ; 
- D 0 - I - 0x029B55 0A:9B45: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029B56 0A:9B46: D3        .byte con_Y + $D3   ; 
- D 0 - I - 0x029B57 0A:9B47: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029B58 0A:9B48: 80        .byte con_A + $80   ; 
- D 0 - I - 0x029B59 0A:9B49: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x029B5A 0A:9B4A: E3        .byte con_Y + $E3   ; 
- D 0 - I - 0x029B5B 0A:9B4B: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029B5C 0A:9B4C: 80        .byte con_A + $80   ; 
- D 0 - I - 0x029B5D 0A:9B4D: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x029B5E 0A:9B4E: E2        .byte con_Y + $E2   ; 
- D 0 - I - 0x029B5F 0A:9B4F: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029B60 0A:9B50: 80        .byte con_A + $80   ; 
- D 0 - I - 0x029B61 0A:9B51: F3        .byte con_X + $F3   ; 
@end:



.export tbl_0x029B62_Hot
tbl_0x029B62_Hot:
- D 0 - I - 0x029B62 0A:9B52: DC 9B     .word _off008_9BDC_00
- D 0 - I - 0x029B64 0A:9B54: 31 9C     .word _off008_9C31_01
- D 0 - I - 0x029B66 0A:9B56: 86 9C     .word _off008_9C86_02
- D 0 - I - 0x029B68 0A:9B58: DF 9C     .word _off008_9CDF_03
- D 0 - I - 0x029B6A 0A:9B5A: 38 9D     .word _off008_9D38_04
- D 0 - I - 0x029B6C 0A:9B5C: 8D 9D     .word _off008_9D8D_05
- D 0 - I - 0x029B6E 0A:9B5E: D6 9D     .word _off008_9DD6_06
- D 0 - I - 0x029B70 0A:9B60: 27 9E     .word _off008_9E27_07
- D 0 - I - 0x029B72 0A:9B62: 78 9E     .word _off008_9E78_08
- D 0 - I - 0x029B74 0A:9B64: CD 9E     .word _off008_9ECD_09
- D 0 - I - 0x029B76 0A:9B66: 16 9F     .word _off008_9F16_0A
- D 0 - I - 0x029B78 0A:9B68: 67 9F     .word _off008_9F67_0B
- D 0 - I - 0x029B7A 0A:9B6A: C0 9F     .word _off008_9FC0_0C
- D 0 - I - 0x029B7C 0A:9B6C: 19 A0     .word _off008_A019_0D
- D 0 - I - 0x029B7E 0A:9B6E: 72 A0     .word _off008_A072_0E
- D 0 - I - 0x029B80 0A:9B70: CB A0     .word _off008_A0CB_0F
- D 0 - I - 0x029B82 0A:9B72: 24 A1     .word _off008_A124_10
- D 0 - I - 0x029B84 0A:9B74: 81 A1     .word _off008_A181_11
- D 0 - I - 0x029B86 0A:9B76: D2 A1     .word _off008_A1D2_12
- D 0 - I - 0x029B88 0A:9B78: 1B A2     .word _off008_A21B_13
- D 0 - I - 0x029B8A 0A:9B7A: 64 A2     .word _off008_A264_14
- D 0 - I - 0x029B8C 0A:9B7C: B5 A2     .word _off008_A2B5_15
- D 0 - I - 0x029B8E 0A:9B7E: 0E A3     .word _off008_A30E_16
- D 0 - I - 0x029B90 0A:9B80: 67 A3     .word _off008_A367_17
- D 0 - I - 0x029B92 0A:9B82: B0 A3     .word _off008_A3B0_18
- D 0 - I - 0x029B94 0A:9B84: 05 A4     .word _off008_A405_19
- D 0 - I - 0x029B96 0A:9B86: 52 A4     .word _off008_A452_1A
- D 0 - I - 0x029B98 0A:9B88: A7 A4     .word _off008_A4A7_1B
- D 0 - I - 0x029B9A 0A:9B8A: EC A4     .word _off008_A4EC_1C
- D 0 - I - 0x029B9C 0A:9B8C: 41 A5     .word _off008_A541_1D
- D 0 - I - 0x029B9E 0A:9B8E: 8A A5     .word _off008_A58A_1E
- D 0 - I - 0x029BA0 0A:9B90: DB A5     .word _off008_A5DB_1F
- D 0 - I - 0x029BA2 0A:9B92: 30 A6     .word _off008_A630_20
- D 0 - I - 0x029BA4 0A:9B94: 85 A6     .word _off008_A685_21
- D 0 - I - 0x029BA6 0A:9B96: CA A6     .word _off008_A6CA_22
- D 0 - I - 0x029BA8 0A:9B98: 03 A7     .word _off008_A703_23
- - - - - - 0x029BAA 0A:9B9A: 48 A7     .word _off008_A748_24
- D 0 - I - 0x029BAC 0A:9B9C: 89 A7     .word _off008_A789_25
- - - - - - 0x029BAE 0A:9B9E: CE A7     .word _off008_A7CE_26
- - - - - - 0x029BB0 0A:9BA0: D3 A7     .word _off008_A7D3_27
- - - - - - 0x029BB2 0A:9BA2: DC A7     .word _off008_A7DC_28
- - - - - - 0x029BB4 0A:9BA4: E5 A7     .word _off008_A7E5_29
- D 0 - I - 0x029BB6 0A:9BA6: EE A7     .word _off008_A7EE_2A
- D 0 - I - 0x029BB8 0A:9BA8: F3 A7     .word _off008_A7F3_2B
- D 0 - I - 0x029BBA 0A:9BAA: FC A7     .word _off008_A7FC_2C
- D 0 - I - 0x029BBC 0A:9BAC: 15 A8     .word _off008_A815_2D
- D 0 - I - 0x029BBE 0A:9BAE: 2A A8     .word _off008_A82A_2E
- D 0 - I - 0x029BC0 0A:9BB0: 2F A8     .word _off008_A82F_2F
- D 0 - I - 0x029BC2 0A:9BB2: 84 A8     .word _off008_A884_30
- D 0 - I - 0x029BC4 0A:9BB4: D5 A8     .word _off008_A8D5_31
- D 0 - I - 0x029BC6 0A:9BB6: 26 A9     .word _off008_A926_32
- D 0 - I - 0x029BC8 0A:9BB8: 6F A9     .word _off008_A96F_33
- D 0 - I - 0x029BCA 0A:9BBA: C0 A9     .word _off008_A9C0_34
- D 0 - I - 0x029BCC 0A:9BBC: 09 AA     .word _off008_AA09_35
- D 0 - I - 0x029BCE 0A:9BBE: 62 AA     .word _off008_AA62_36
- D 0 - I - 0x029BD0 0A:9BC0: C3 AA     .word _off008_AAC3_37
- D 0 - I - 0x029BD2 0A:9BC2: 1C AB     .word _off008_AB1C_38
- D 0 - I - 0x029BD4 0A:9BC4: 75 AB     .word _off008_AB75_39
- D 0 - I - 0x029BD6 0A:9BC6: C6 AB     .word _off008_ABC6_3A
- D 0 - I - 0x029BD8 0A:9BC8: 13 AC     .word _off008_AC13_3B
- D 0 - I - 0x029BDA 0A:9BCA: 4C AC     .word _off008_AC4C_3C
- D 0 - I - 0x029BDC 0A:9BCC: B1 AC     .word _off008_ACB1_3D
- D 0 - I - 0x029BDE 0A:9BCE: 26 AD     .word _off008_AD26_3E
- D 0 - I - 0x029BE0 0A:9BD0: 93 AD     .word _off008_AD93_3F
- D 0 - I - 0x029BE2 0A:9BD2: 00 AE     .word _off008_AE00_40
- D 0 - I - 0x029BE4 0A:9BD4: 09 AE     .word _off008_AE09_41
- D 0 - I - 0x029BE6 0A:9BD6: 12 AE     .word _off008_AE12_42
- D 0 - I - 0x029BE8 0A:9BD8: 1B AE     .word _off008_AE1B_43
- D 0 - I - 0x029BEA 0A:9BDA: 70 AE     .word _off008_AE70_44



_off008_9BDC_00:
- D 0 - I - 0x029BEC 0A:9BDC: 15        .byte (@end - * - 1) / 4

- D 0 - I - 0x029BED 0A:9BDD: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029BEE 0A:9BDE: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029BEF 0A:9BDF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029BF0 0A:9BE0: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x029BF1 0A:9BE1: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029BF2 0A:9BE2: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029BF3 0A:9BE3: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029BF4 0A:9BE4: 05        .byte con_X + $05   ; 

- D 0 - I - 0x029BF5 0A:9BE5: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029BF6 0A:9BE6: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029BF7 0A:9BE7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029BF8 0A:9BE8: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x029BF9 0A:9BE9: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029BFA 0A:9BEA: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029BFB 0A:9BEB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029BFC 0A:9BEC: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x029BFD 0A:9BED: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029BFE 0A:9BEE: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029BFF 0A:9BEF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C00 0A:9BF0: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029C01 0A:9BF1: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029C02 0A:9BF2: 09        .byte con_T + $09   ; 
- D 0 - I - 0x029C03 0A:9BF3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C04 0A:9BF4: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x029C05 0A:9BF5: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x029C06 0A:9BF6: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029C07 0A:9BF7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C08 0A:9BF8: 13        .byte con_X + $13   ; 

- D 0 - I - 0x029C09 0A:9BF9: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029C0A 0A:9BFA: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029C0B 0A:9BFB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C0C 0A:9BFC: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x029C0D 0A:9BFD: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029C0E 0A:9BFE: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029C0F 0A:9BFF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C10 0A:9C00: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x029C11 0A:9C01: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029C12 0A:9C02: 11        .byte con_T + $11   ; 
- D 0 - I - 0x029C13 0A:9C03: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C14 0A:9C04: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029C15 0A:9C05: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029C16 0A:9C06: 13        .byte con_T + $13   ; 
- D 0 - I - 0x029C17 0A:9C07: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C18 0A:9C08: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x029C19 0A:9C09: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x029C1A 0A:9C0A: 15        .byte con_T + $15   ; 
- D 0 - I - 0x029C1B 0A:9C0B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C1C 0A:9C0C: 13        .byte con_X + $13   ; 

- D 0 - I - 0x029C1D 0A:9C0D: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029C1E 0A:9C0E: 41        .byte con_T + $41   ; 
- D 0 - I - 0x029C1F 0A:9C0F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C20 0A:9C10: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x029C21 0A:9C11: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029C22 0A:9C12: 43        .byte con_T + $43   ; 
- D 0 - I - 0x029C23 0A:9C13: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C24 0A:9C14: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029C25 0A:9C15: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029C26 0A:9C16: 45        .byte con_T + $45   ; 
- D 0 - I - 0x029C27 0A:9C17: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C28 0A:9C18: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029C29 0A:9C19: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029C2A 0A:9C1A: 47        .byte con_T + $47   ; 
- D 0 - I - 0x029C2B 0A:9C1B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C2C 0A:9C1C: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029C2D 0A:9C1D: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029C2E 0A:9C1E: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x029C2F 0A:9C1F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C30 0A:9C20: 08        .byte con_X + $08   ; 

- D 0 - I - 0x029C31 0A:9C21: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029C32 0A:9C22: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x029C33 0A:9C23: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C34 0A:9C24: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029C35 0A:9C25: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029C36 0A:9C26: 51        .byte con_T + $51   ; 
- D 0 - I - 0x029C37 0A:9C27: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C38 0A:9C28: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029C39 0A:9C29: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029C3A 0A:9C2A: 53        .byte con_T + $53   ; 
- D 0 - I - 0x029C3B 0A:9C2B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C3C 0A:9C2C: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029C3D 0A:9C2D: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029C3E 0A:9C2E: 55        .byte con_T + $55   ; 
- D 0 - I - 0x029C3F 0A:9C2F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C40 0A:9C30: 0B        .byte con_X + $0B   ; 
@end:



_off008_9C31_01:
- D 0 - I - 0x029C41 0A:9C31: 15        .byte (@end - * - 1) / 4

- D 0 - I - 0x029C42 0A:9C32: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029C43 0A:9C33: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029C44 0A:9C34: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C45 0A:9C35: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x029C46 0A:9C36: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029C47 0A:9C37: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029C48 0A:9C38: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C49 0A:9C39: 02        .byte con_X + $02   ; 

- D 0 - I - 0x029C4A 0A:9C3A: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029C4B 0A:9C3B: 23        .byte con_T + $23   ; 
- D 0 - I - 0x029C4C 0A:9C3C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C4D 0A:9C3D: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x029C4E 0A:9C3E: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029C4F 0A:9C3F: 25        .byte con_T + $25   ; 
- D 0 - I - 0x029C50 0A:9C40: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C51 0A:9C41: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x029C52 0A:9C42: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029C53 0A:9C43: 27        .byte con_T + $27   ; 
- D 0 - I - 0x029C54 0A:9C44: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C55 0A:9C45: 02        .byte con_X + $02   ; 

- D 0 - I - 0x029C56 0A:9C46: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x029C57 0A:9C47: 29        .byte con_T + $29   ; 
- D 0 - I - 0x029C58 0A:9C48: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C59 0A:9C49: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x029C5A 0A:9C4A: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x029C5B 0A:9C4B: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x029C5C 0A:9C4C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C5D 0A:9C4D: 12        .byte con_X + $12   ; 

- D 0 - I - 0x029C5E 0A:9C4E: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029C5F 0A:9C4F: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x029C60 0A:9C50: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C61 0A:9C51: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x029C62 0A:9C52: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029C63 0A:9C53: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x029C64 0A:9C54: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C65 0A:9C55: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x029C66 0A:9C56: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029C67 0A:9C57: 31        .byte con_T + $31   ; 
- D 0 - I - 0x029C68 0A:9C58: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C69 0A:9C59: 02        .byte con_X + $02   ; 

- D 0 - I - 0x029C6A 0A:9C5A: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x029C6B 0A:9C5B: 33        .byte con_T + $33   ; 
- D 0 - I - 0x029C6C 0A:9C5C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C6D 0A:9C5D: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x029C6E 0A:9C5E: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x029C6F 0A:9C5F: 35        .byte con_T + $35   ; 
- D 0 - I - 0x029C70 0A:9C60: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C71 0A:9C61: 12        .byte con_X + $12   ; 

- D 0 - I - 0x029C72 0A:9C62: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029C73 0A:9C63: 41        .byte con_T + $41   ; 
- D 0 - I - 0x029C74 0A:9C64: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C75 0A:9C65: E9        .byte con_X + $E9   ; 

- D 0 - I - 0x029C76 0A:9C66: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029C77 0A:9C67: 5F        .byte con_T + $5F   ; 
- D 0 - I - 0x029C78 0A:9C68: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C79 0A:9C69: F1        .byte con_X + $F1   ; 

- D 0 - I - 0x029C7A 0A:9C6A: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029C7B 0A:9C6B: 61        .byte con_T + $61   ; 
- D 0 - I - 0x029C7C 0A:9C6C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C7D 0A:9C6D: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x029C7E 0A:9C6E: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029C7F 0A:9C6F: 47        .byte con_T + $47   ; 
- D 0 - I - 0x029C80 0A:9C70: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C81 0A:9C71: 01        .byte con_X + $01   ; 

- D 0 - I - 0x029C82 0A:9C72: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029C83 0A:9C73: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x029C84 0A:9C74: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C85 0A:9C75: 09        .byte con_X + $09   ; 

- D 0 - I - 0x029C86 0A:9C76: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029C87 0A:9C77: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x029C88 0A:9C78: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C89 0A:9C79: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029C8A 0A:9C7A: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029C8B 0A:9C7B: 51        .byte con_T + $51   ; 
- D 0 - I - 0x029C8C 0A:9C7C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C8D 0A:9C7D: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029C8E 0A:9C7E: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029C8F 0A:9C7F: 53        .byte con_T + $53   ; 
- D 0 - I - 0x029C90 0A:9C80: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C91 0A:9C81: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029C92 0A:9C82: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029C93 0A:9C83: 55        .byte con_T + $55   ; 
- D 0 - I - 0x029C94 0A:9C84: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C95 0A:9C85: 0B        .byte con_X + $0B   ; 
@end:



_off008_9C86_02:
- D 0 - I - 0x029C96 0A:9C86: 16        .byte (@end - * - 1) / 4

- D 0 - I - 0x029C97 0A:9C87: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029C98 0A:9C88: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029C99 0A:9C89: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C9A 0A:9C8A: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x029C9B 0A:9C8B: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029C9C 0A:9C8C: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029C9D 0A:9C8D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029C9E 0A:9C8E: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029C9F 0A:9C8F: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029CA0 0A:9C90: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029CA1 0A:9C91: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CA2 0A:9C92: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x029CA3 0A:9C93: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029CA4 0A:9C94: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029CA5 0A:9C95: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CA6 0A:9C96: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x029CA7 0A:9C97: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029CA8 0A:9C98: 09        .byte con_T + $09   ; 
- D 0 - I - 0x029CA9 0A:9C99: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CAA 0A:9C9A: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x029CAB 0A:9C9B: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029CAC 0A:9C9C: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029CAD 0A:9C9D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CAE 0A:9C9E: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029CAF 0A:9C9F: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029CB0 0A:9CA0: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029CB1 0A:9CA1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CB2 0A:9CA2: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x029CB3 0A:9CA3: C9        .byte con_Y + $C9   ; 
- D 0 - I - 0x029CB4 0A:9CA4: 11        .byte con_T + $11   ; 
- D 0 - I - 0x029CB5 0A:9CA5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CB6 0A:9CA6: 13        .byte con_X + $13   ; 

- D 0 - I - 0x029CB7 0A:9CA7: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029CB8 0A:9CA8: 13        .byte con_T + $13   ; 
- D 0 - I - 0x029CB9 0A:9CA9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CBA 0A:9CAA: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x029CBB 0A:9CAB: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029CBC 0A:9CAC: 15        .byte con_T + $15   ; 
- D 0 - I - 0x029CBD 0A:9CAD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CBE 0A:9CAE: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x029CBF 0A:9CAF: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029CC0 0A:9CB0: 17        .byte con_T + $17   ; 
- D 0 - I - 0x029CC1 0A:9CB1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CC2 0A:9CB2: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029CC3 0A:9CB3: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029CC4 0A:9CB4: 19        .byte con_T + $19   ; 
- D 0 - I - 0x029CC5 0A:9CB5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CC6 0A:9CB6: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x029CC7 0A:9CB7: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029CC8 0A:9CB8: 41        .byte con_T + $41   ; 
- D 0 - I - 0x029CC9 0A:9CB9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CCA 0A:9CBA: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x029CCB 0A:9CBB: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029CCC 0A:9CBC: 43        .byte con_T + $43   ; 
- D 0 - I - 0x029CCD 0A:9CBD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CCE 0A:9CBE: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029CCF 0A:9CBF: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029CD0 0A:9CC0: 45        .byte con_T + $45   ; 
- D 0 - I - 0x029CD1 0A:9CC1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CD2 0A:9CC2: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029CD3 0A:9CC3: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029CD4 0A:9CC4: 47        .byte con_T + $47   ; 
- D 0 - I - 0x029CD5 0A:9CC5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CD6 0A:9CC6: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029CD7 0A:9CC7: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029CD8 0A:9CC8: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x029CD9 0A:9CC9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CDA 0A:9CCA: 08        .byte con_X + $08   ; 

- D 0 - I - 0x029CDB 0A:9CCB: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029CDC 0A:9CCC: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x029CDD 0A:9CCD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CDE 0A:9CCE: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029CDF 0A:9CCF: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029CE0 0A:9CD0: 51        .byte con_T + $51   ; 
- D 0 - I - 0x029CE1 0A:9CD1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CE2 0A:9CD2: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029CE3 0A:9CD3: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029CE4 0A:9CD4: 53        .byte con_T + $53   ; 
- D 0 - I - 0x029CE5 0A:9CD5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CE6 0A:9CD6: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029CE7 0A:9CD7: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029CE8 0A:9CD8: 55        .byte con_T + $55   ; 
- D 0 - I - 0x029CE9 0A:9CD9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CEA 0A:9CDA: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x029CEB 0A:9CDB: B9        .byte con_Y + $B9   ; 
- D 0 - I - 0x029CEC 0A:9CDC: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029CED 0A:9CDD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CEE 0A:9CDE: 13        .byte con_X + $13   ; 
@end:



_off008_9CDF_03:
- D 0 - I - 0x029CEF 0A:9CDF: 16        .byte (@end - * - 1) / 4

- D 0 - I - 0x029CF0 0A:9CE0: AE        .byte con_Y + $AE   ; 
- D 0 - I - 0x029CF1 0A:9CE1: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029CF2 0A:9CE2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CF3 0A:9CE3: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029CF4 0A:9CE4: AE        .byte con_Y + $AE   ; 
- D 0 - I - 0x029CF5 0A:9CE5: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029CF6 0A:9CE6: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029CF7 0A:9CE7: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x029CF8 0A:9CE8: BE        .byte con_Y + $BE   ; 
- D 0 - I - 0x029CF9 0A:9CE9: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029CFA 0A:9CEA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CFB 0A:9CEB: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029CFC 0A:9CEC: BE        .byte con_Y + $BE   ; 
- D 0 - I - 0x029CFD 0A:9CED: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029CFE 0A:9CEE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029CFF 0A:9CEF: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029D00 0A:9CF0: BE        .byte con_Y + $BE   ; 
- D 0 - I - 0x029D01 0A:9CF1: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029D02 0A:9CF2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D03 0A:9CF3: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029D04 0A:9CF4: BE        .byte con_Y + $BE   ; 
- D 0 - I - 0x029D05 0A:9CF5: 09        .byte con_T + $09   ; 
- D 0 - I - 0x029D06 0A:9CF6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D07 0A:9CF7: 08        .byte con_X + $08   ; 

- D 0 - I - 0x029D08 0A:9CF8: BE        .byte con_Y + $BE   ; 
- D 0 - I - 0x029D09 0A:9CF9: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029D0A 0A:9CFA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D0B 0A:9CFB: 10        .byte con_X + $10   ; 

- D 0 - I - 0x029D0C 0A:9CFC: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029D0D 0A:9CFD: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029D0E 0A:9CFE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D0F 0A:9CFF: 18        .byte con_X + $18   ; 

- D 0 - I - 0x029D10 0A:9D00: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x029D11 0A:9D01: 21        .byte con_T + $21   ; 
- D 0 - I - 0x029D12 0A:9D02: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D13 0A:9D03: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x029D14 0A:9D04: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x029D15 0A:9D05: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029D16 0A:9D06: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D17 0A:9D07: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029D18 0A:9D08: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x029D19 0A:9D09: 11        .byte con_T + $11   ; 
- D 0 - I - 0x029D1A 0A:9D0A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D1B 0A:9D0B: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029D1C 0A:9D0C: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x029D1D 0A:9D0D: 13        .byte con_T + $13   ; 
- D 0 - I - 0x029D1E 0A:9D0E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D1F 0A:9D0F: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029D20 0A:9D10: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x029D21 0A:9D11: 15        .byte con_T + $15   ; 
- D 0 - I - 0x029D22 0A:9D12: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D23 0A:9D13: 08        .byte con_X + $08   ; 

- D 0 - I - 0x029D24 0A:9D14: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x029D25 0A:9D15: 17        .byte con_T + $17   ; 
- D 0 - I - 0x029D26 0A:9D16: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D27 0A:9D17: 10        .byte con_X + $10   ; 

- D 0 - I - 0x029D28 0A:9D18: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x029D29 0A:9D19: 19        .byte con_T + $19   ; 
- D 0 - I - 0x029D2A 0A:9D1A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D2B 0A:9D1B: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x029D2C 0A:9D1C: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x029D2D 0A:9D1D: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x029D2E 0A:9D1E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D2F 0A:9D1F: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029D30 0A:9D20: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x029D31 0A:9D21: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x029D32 0A:9D22: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D33 0A:9D23: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029D34 0A:9D24: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x029D35 0A:9D25: 47        .byte con_T + $47   ; 
- D 0 - I - 0x029D36 0A:9D26: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D37 0A:9D27: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029D38 0A:9D28: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029D39 0A:9D29: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x029D3A 0A:9D2A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D3B 0A:9D2B: 08        .byte con_X + $08   ; 

- D 0 - I - 0x029D3C 0A:9D2C: EE        .byte con_Y + $EE   ; 
- D 0 - I - 0x029D3D 0A:9D2D: 5D        .byte con_T + $5D   ; 
- D 0 - I - 0x029D3E 0A:9D2E: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029D3F 0A:9D2F: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x029D40 0A:9D30: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029D41 0A:9D31: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x029D42 0A:9D32: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D43 0A:9D33: 08        .byte con_X + $08   ; 

- D 0 - I - 0x029D44 0A:9D34: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x029D45 0A:9D35: 5B        .byte con_T + $5B   ; 
- D 0 - I - 0x029D46 0A:9D36: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D47 0A:9D37: 10        .byte con_X + $10   ; 
@end:



_off008_9D38_04:
- D 0 - I - 0x029D48 0A:9D38: 15        .byte (@end - * - 1) / 4

- D 0 - I - 0x029D49 0A:9D39: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029D4A 0A:9D3A: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029D4B 0A:9D3B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D4C 0A:9D3C: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029D4D 0A:9D3D: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029D4E 0A:9D3E: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029D4F 0A:9D3F: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029D50 0A:9D40: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x029D51 0A:9D41: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029D52 0A:9D42: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029D53 0A:9D43: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D54 0A:9D44: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029D55 0A:9D45: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029D56 0A:9D46: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029D57 0A:9D47: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D58 0A:9D48: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029D59 0A:9D49: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029D5A 0A:9D4A: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029D5B 0A:9D4B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D5C 0A:9D4C: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029D5D 0A:9D4D: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029D5E 0A:9D4E: 09        .byte con_T + $09   ; 
- D 0 - I - 0x029D5F 0A:9D4F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D60 0A:9D50: 08        .byte con_X + $08   ; 

- D 0 - I - 0x029D61 0A:9D51: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029D62 0A:9D52: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029D63 0A:9D53: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D64 0A:9D54: 10        .byte con_X + $10   ; 

- D 0 - I - 0x029D65 0A:9D55: C4        .byte con_Y + $C4   ; 
- D 0 - I - 0x029D66 0A:9D56: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029D67 0A:9D57: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D68 0A:9D58: 18        .byte con_X + $18   ; 

- D 0 - I - 0x029D69 0A:9D59: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029D6A 0A:9D5A: 21        .byte con_T + $21   ; 
- D 0 - I - 0x029D6B 0A:9D5B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D6C 0A:9D5C: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x029D6D 0A:9D5D: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029D6E 0A:9D5E: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029D6F 0A:9D5F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D70 0A:9D60: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029D71 0A:9D61: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029D72 0A:9D62: 11        .byte con_T + $11   ; 
- D 0 - I - 0x029D73 0A:9D63: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D74 0A:9D64: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029D75 0A:9D65: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029D76 0A:9D66: 13        .byte con_T + $13   ; 
- D 0 - I - 0x029D77 0A:9D67: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D78 0A:9D68: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029D79 0A:9D69: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029D7A 0A:9D6A: 15        .byte con_T + $15   ; 
- D 0 - I - 0x029D7B 0A:9D6B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D7C 0A:9D6C: 08        .byte con_X + $08   ; 

- D 0 - I - 0x029D7D 0A:9D6D: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029D7E 0A:9D6E: 17        .byte con_T + $17   ; 
- D 0 - I - 0x029D7F 0A:9D6F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D80 0A:9D70: 10        .byte con_X + $10   ; 

- D 0 - I - 0x029D81 0A:9D71: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029D82 0A:9D72: 23        .byte con_T + $23   ; 
- D 0 - I - 0x029D83 0A:9D73: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D84 0A:9D74: E6        .byte con_X + $E6   ; 

- D 0 - I - 0x029D85 0A:9D75: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029D86 0A:9D76: 25        .byte con_T + $25   ; 
- D 0 - I - 0x029D87 0A:9D77: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D88 0A:9D78: EE        .byte con_X + $EE   ; 

- D 0 - I - 0x029D89 0A:9D79: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029D8A 0A:9D7A: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x029D8B 0A:9D7B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D8C 0A:9D7C: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x029D8D 0A:9D7D: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029D8E 0A:9D7E: 47        .byte con_T + $47   ; 
- D 0 - I - 0x029D8F 0A:9D7F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D90 0A:9D80: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x029D91 0A:9D81: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029D92 0A:9D82: 27        .byte con_T + $27   ; 
- D 0 - I - 0x029D93 0A:9D83: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D94 0A:9D84: 06        .byte con_X + $06   ; 

- D 0 - I - 0x029D95 0A:9D85: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029D96 0A:9D86: 53        .byte con_T + $53   ; 
- D 0 - I - 0x029D97 0A:9D87: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D98 0A:9D88: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x029D99 0A:9D89: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029D9A 0A:9D8A: 55        .byte con_T + $55   ; 
- D 0 - I - 0x029D9B 0A:9D8B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029D9C 0A:9D8C: 06        .byte con_X + $06   ; 
@end:



_off008_9D8D_05:
- D 0 - I - 0x029D9D 0A:9D8D: 12        .byte (@end - * - 1) / 4

- D 0 - I - 0x029D9E 0A:9D8E: B0        .byte con_Y + $B0   ; 
- D 0 - I - 0x029D9F 0A:9D8F: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029DA0 0A:9D90: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029DA1 0A:9D91: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029DA2 0A:9D92: B0        .byte con_Y + $B0   ; 
- D 0 - I - 0x029DA3 0A:9D93: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029DA4 0A:9D94: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029DA5 0A:9D95: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x029DA6 0A:9D96: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029DA7 0A:9D97: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029DA8 0A:9D98: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029DA9 0A:9D99: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029DAA 0A:9D9A: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029DAB 0A:9D9B: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029DAC 0A:9D9C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029DAD 0A:9D9D: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029DAE 0A:9D9E: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029DAF 0A:9D9F: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029DB0 0A:9DA0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029DB1 0A:9DA1: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029DB2 0A:9DA2: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029DB3 0A:9DA3: 09        .byte con_T + $09   ; 
- D 0 - I - 0x029DB4 0A:9DA4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029DB5 0A:9DA5: 08        .byte con_X + $08   ; 

- D 0 - I - 0x029DB6 0A:9DA6: C0        .byte con_Y + $C0   ; 
- D 0 - I - 0x029DB7 0A:9DA7: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029DB8 0A:9DA8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029DB9 0A:9DA9: 10        .byte con_X + $10   ; 

- D 0 - I - 0x029DBA 0A:9DAA: C3        .byte con_Y + $C3   ; 
- D 0 - I - 0x029DBB 0A:9DAB: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029DBC 0A:9DAC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029DBD 0A:9DAD: 18        .byte con_X + $18   ; 

- D 0 - I - 0x029DBE 0A:9DAE: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029DBF 0A:9DAF: 21        .byte con_T + $21   ; 
- D 0 - I - 0x029DC0 0A:9DB0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029DC1 0A:9DB1: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x029DC2 0A:9DB2: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029DC3 0A:9DB3: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029DC4 0A:9DB4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029DC5 0A:9DB5: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029DC6 0A:9DB6: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029DC7 0A:9DB7: 11        .byte con_T + $11   ; 
- D 0 - I - 0x029DC8 0A:9DB8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029DC9 0A:9DB9: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029DCA 0A:9DBA: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029DCB 0A:9DBB: 13        .byte con_T + $13   ; 
- D 0 - I - 0x029DCC 0A:9DBC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029DCD 0A:9DBD: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029DCE 0A:9DBE: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029DCF 0A:9DBF: 15        .byte con_T + $15   ; 
- D 0 - I - 0x029DD0 0A:9DC0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029DD1 0A:9DC1: 08        .byte con_X + $08   ; 

- D 0 - I - 0x029DD2 0A:9DC2: D0        .byte con_Y + $D0   ; 
- D 0 - I - 0x029DD3 0A:9DC3: 17        .byte con_T + $17   ; 
- D 0 - I - 0x029DD4 0A:9DC4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029DD5 0A:9DC5: 10        .byte con_X + $10   ; 

- D 0 - I - 0x029DD6 0A:9DC6: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029DD7 0A:9DC7: 29        .byte con_T + $29   ; 
- D 0 - I - 0x029DD8 0A:9DC8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029DD9 0A:9DC9: ED        .byte con_X + $ED   ; 

- D 0 - I - 0x029DDA 0A:9DCA: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029DDB 0A:9DCB: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x029DDC 0A:9DCC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029DDD 0A:9DCD: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x029DDE 0A:9DCE: E0        .byte con_Y + $E0   ; 
- D 0 - I - 0x029DDF 0A:9DCF: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x029DE0 0A:9DD0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029DE1 0A:9DD1: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x029DE2 0A:9DD2: F0        .byte con_Y + $F0   ; 
- D 0 - I - 0x029DE3 0A:9DD3: 5D        .byte con_T + $5D   ; 
- D 0 - I - 0x029DE4 0A:9DD4: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029DE5 0A:9DD5: F1        .byte con_X + $F1   ; 
@end:



_off008_9DD6_06:
- D 0 - I - 0x029DE6 0A:9DD6: 14        .byte (@end - * - 1) / 4

- D 0 - I - 0x029DE7 0A:9DD7: AE        .byte con_Y + $AE   ; 
- D 0 - I - 0x029DE8 0A:9DD8: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029DE9 0A:9DD9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029DEA 0A:9DDA: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029DEB 0A:9DDB: AE        .byte con_Y + $AE   ; 
- D 0 - I - 0x029DEC 0A:9DDC: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029DED 0A:9DDD: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029DEE 0A:9DDE: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x029DEF 0A:9DDF: BE        .byte con_Y + $BE   ; 
- D 0 - I - 0x029DF0 0A:9DE0: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029DF1 0A:9DE1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029DF2 0A:9DE2: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029DF3 0A:9DE3: BE        .byte con_Y + $BE   ; 
- D 0 - I - 0x029DF4 0A:9DE4: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029DF5 0A:9DE5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029DF6 0A:9DE6: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029DF7 0A:9DE7: BE        .byte con_Y + $BE   ; 
- D 0 - I - 0x029DF8 0A:9DE8: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029DF9 0A:9DE9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029DFA 0A:9DEA: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029DFB 0A:9DEB: BE        .byte con_Y + $BE   ; 
- D 0 - I - 0x029DFC 0A:9DEC: 09        .byte con_T + $09   ; 
- D 0 - I - 0x029DFD 0A:9DED: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029DFE 0A:9DEE: 08        .byte con_X + $08   ; 

- D 0 - I - 0x029DFF 0A:9DEF: BE        .byte con_Y + $BE   ; 
- D 0 - I - 0x029E00 0A:9DF0: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029E01 0A:9DF1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E02 0A:9DF2: 10        .byte con_X + $10   ; 

- D 0 - I - 0x029E03 0A:9DF3: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029E04 0A:9DF4: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029E05 0A:9DF5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E06 0A:9DF6: 18        .byte con_X + $18   ; 

- D 0 - I - 0x029E07 0A:9DF7: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x029E08 0A:9DF8: 21        .byte con_T + $21   ; 
- D 0 - I - 0x029E09 0A:9DF9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E0A 0A:9DFA: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x029E0B 0A:9DFB: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x029E0C 0A:9DFC: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029E0D 0A:9DFD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E0E 0A:9DFE: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029E0F 0A:9DFF: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x029E10 0A:9E00: 11        .byte con_T + $11   ; 
- D 0 - I - 0x029E11 0A:9E01: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E12 0A:9E02: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029E13 0A:9E03: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x029E14 0A:9E04: 13        .byte con_T + $13   ; 
- D 0 - I - 0x029E15 0A:9E05: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E16 0A:9E06: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029E17 0A:9E07: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x029E18 0A:9E08: 15        .byte con_T + $15   ; 
- D 0 - I - 0x029E19 0A:9E09: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E1A 0A:9E0A: 08        .byte con_X + $08   ; 

- D 0 - I - 0x029E1B 0A:9E0B: CE        .byte con_Y + $CE   ; 
- D 0 - I - 0x029E1C 0A:9E0C: 17        .byte con_T + $17   ; 
- D 0 - I - 0x029E1D 0A:9E0D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E1E 0A:9E0E: 10        .byte con_X + $10   ; 

- D 0 - I - 0x029E1F 0A:9E0F: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x029E20 0A:9E10: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x029E21 0A:9E11: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E22 0A:9E12: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x029E23 0A:9E13: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x029E24 0A:9E14: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x029E25 0A:9E15: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E26 0A:9E16: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029E27 0A:9E17: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x029E28 0A:9E18: 31        .byte con_T + $31   ; 
- D 0 - I - 0x029E29 0A:9E19: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E2A 0A:9E1A: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029E2B 0A:9E1B: DE        .byte con_Y + $DE   ; 
- D 0 - I - 0x029E2C 0A:9E1C: 33        .byte con_T + $33   ; 
- D 0 - I - 0x029E2D 0A:9E1D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E2E 0A:9E1E: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029E2F 0A:9E1F: EE        .byte con_Y + $EE   ; 
- D 0 - I - 0x029E30 0A:9E20: 57        .byte con_T + $57   ; 
- D 0 - I - 0x029E31 0A:9E21: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E32 0A:9E22: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029E33 0A:9E23: EE        .byte con_Y + $EE   ; 
- D 0 - I - 0x029E34 0A:9E24: 5B        .byte con_T + $5B   ; 
- D 0 - I - 0x029E35 0A:9E25: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E36 0A:9E26: 00        .byte con_X + $00   ; 
@end:



_off008_9E27_07:
- D 0 - I - 0x029E37 0A:9E27: 14        .byte (@end - * - 1) / 4

- D 0 - I - 0x029E38 0A:9E28: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029E39 0A:9E29: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029E3A 0A:9E2A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E3B 0A:9E2B: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029E3C 0A:9E2C: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029E3D 0A:9E2D: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029E3E 0A:9E2E: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029E3F 0A:9E2F: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x029E40 0A:9E30: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029E41 0A:9E31: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029E42 0A:9E32: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E43 0A:9E33: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029E44 0A:9E34: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029E45 0A:9E35: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029E46 0A:9E36: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E47 0A:9E37: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029E48 0A:9E38: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029E49 0A:9E39: 09        .byte con_T + $09   ; 
- D 0 - I - 0x029E4A 0A:9E3A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E4B 0A:9E3B: 08        .byte con_X + $08   ; 

- D 0 - I - 0x029E4C 0A:9E3C: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029E4D 0A:9E3D: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029E4E 0A:9E3E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E4F 0A:9E3F: 10        .byte con_X + $10   ; 

- D 0 - I - 0x029E50 0A:9E40: C4        .byte con_Y + $C4   ; 
- D 0 - I - 0x029E51 0A:9E41: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029E52 0A:9E42: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E53 0A:9E43: 18        .byte con_X + $18   ; 

- D 0 - I - 0x029E54 0A:9E44: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029E55 0A:9E45: 21        .byte con_T + $21   ; 
- D 0 - I - 0x029E56 0A:9E46: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E57 0A:9E47: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x029E58 0A:9E48: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029E59 0A:9E49: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029E5A 0A:9E4A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E5B 0A:9E4B: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029E5C 0A:9E4C: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029E5D 0A:9E4D: 11        .byte con_T + $11   ; 
- D 0 - I - 0x029E5E 0A:9E4E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E5F 0A:9E4F: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029E60 0A:9E50: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029E61 0A:9E51: 13        .byte con_T + $13   ; 
- D 0 - I - 0x029E62 0A:9E52: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E63 0A:9E53: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029E64 0A:9E54: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029E65 0A:9E55: 15        .byte con_T + $15   ; 
- D 0 - I - 0x029E66 0A:9E56: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E67 0A:9E57: 08        .byte con_X + $08   ; 

- D 0 - I - 0x029E68 0A:9E58: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029E69 0A:9E59: 17        .byte con_T + $17   ; 
- D 0 - I - 0x029E6A 0A:9E5A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E6B 0A:9E5B: 10        .byte con_X + $10   ; 

- D 0 - I - 0x029E6C 0A:9E5C: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029E6D 0A:9E5D: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x029E6E 0A:9E5E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E6F 0A:9E5F: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x029E70 0A:9E60: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029E71 0A:9E61: 5F        .byte con_T + $5F   ; 
- D 0 - I - 0x029E72 0A:9E62: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E73 0A:9E63: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029E74 0A:9E64: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029E75 0A:9E65: 61        .byte con_T + $61   ; 
- D 0 - I - 0x029E76 0A:9E66: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E77 0A:9E67: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029E78 0A:9E68: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029E79 0A:9E69: 33        .byte con_T + $33   ; 
- D 0 - I - 0x029E7A 0A:9E6A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E7B 0A:9E6B: 00        .byte con_X + $00   ; 

- D 0 - I - 0x029E7C 0A:9E6C: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029E7D 0A:9E6D: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x029E7E 0A:9E6E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E7F 0A:9E6F: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029E80 0A:9E70: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029E81 0A:9E71: 51        .byte con_T + $51   ; 
- D 0 - I - 0x029E82 0A:9E72: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E83 0A:9E73: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029E84 0A:9E74: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029E85 0A:9E75: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029E86 0A:9E76: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E87 0A:9E77: 00        .byte con_X + $00   ; 
@end:



_off008_9E78_08:
- D 0 - I - 0x029E88 0A:9E78: 15        .byte (@end - * - 1) / 4

- D 0 - I - 0x029E89 0A:9E79: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029E8A 0A:9E7A: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029E8B 0A:9E7B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E8C 0A:9E7C: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x029E8D 0A:9E7D: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029E8E 0A:9E7E: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029E8F 0A:9E7F: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029E90 0A:9E80: 05        .byte con_X + $05   ; 

- D 0 - I - 0x029E91 0A:9E81: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029E92 0A:9E82: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029E93 0A:9E83: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E94 0A:9E84: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x029E95 0A:9E85: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029E96 0A:9E86: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029E97 0A:9E87: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E98 0A:9E88: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x029E99 0A:9E89: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029E9A 0A:9E8A: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029E9B 0A:9E8B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029E9C 0A:9E8C: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029E9D 0A:9E8D: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029E9E 0A:9E8E: 09        .byte con_T + $09   ; 
- D 0 - I - 0x029E9F 0A:9E8F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029EA0 0A:9E90: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x029EA1 0A:9E91: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x029EA2 0A:9E92: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029EA3 0A:9E93: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029EA4 0A:9E94: 13        .byte con_X + $13   ; 

- D 0 - I - 0x029EA5 0A:9E95: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029EA6 0A:9E96: 17        .byte con_T + $17   ; 
- D 0 - I - 0x029EA7 0A:9E97: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029EA8 0A:9E98: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x029EA9 0A:9E99: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029EAA 0A:9E9A: 19        .byte con_T + $19   ; 
- D 0 - I - 0x029EAB 0A:9E9B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029EAC 0A:9E9C: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x029EAD 0A:9E9D: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029EAE 0A:9E9E: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x029EAF 0A:9E9F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029EB0 0A:9EA0: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029EB1 0A:9EA1: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029EB2 0A:9EA2: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x029EB3 0A:9EA3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029EB4 0A:9EA4: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x029EB5 0A:9EA5: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x029EB6 0A:9EA6: 15        .byte con_T + $15   ; 
- D 0 - I - 0x029EB7 0A:9EA7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029EB8 0A:9EA8: 13        .byte con_X + $13   ; 

- D 0 - I - 0x029EB9 0A:9EA9: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029EBA 0A:9EAA: 41        .byte con_T + $41   ; 
- D 0 - I - 0x029EBB 0A:9EAB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029EBC 0A:9EAC: EA        .byte con_X + $EA   ; 

- D 0 - I - 0x029EBD 0A:9EAD: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029EBE 0A:9EAE: 35        .byte con_T + $35   ; 
- D 0 - I - 0x029EBF 0A:9EAF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029EC0 0A:9EB0: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x029EC1 0A:9EB1: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029EC2 0A:9EB2: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x029EC3 0A:9EB3: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029EC4 0A:9EB4: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x029EC5 0A:9EB5: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029EC6 0A:9EB6: 47        .byte con_T + $47   ; 
- D 0 - I - 0x029EC7 0A:9EB7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029EC8 0A:9EB8: 02        .byte con_X + $02   ; 

- D 0 - I - 0x029EC9 0A:9EB9: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029ECA 0A:9EBA: 37        .byte con_T + $37   ; 
- D 0 - I - 0x029ECB 0A:9EBB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029ECC 0A:9EBC: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x029ECD 0A:9EBD: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029ECE 0A:9EBE: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x029ECF 0A:9EBF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029ED0 0A:9EC0: EA        .byte con_X + $EA   ; 

- D 0 - I - 0x029ED1 0A:9EC1: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029ED2 0A:9EC2: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x029ED3 0A:9EC3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029ED4 0A:9EC4: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x029ED5 0A:9EC5: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029ED6 0A:9EC6: 53        .byte con_T + $53   ; 
- D 0 - I - 0x029ED7 0A:9EC7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029ED8 0A:9EC8: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029ED9 0A:9EC9: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029EDA 0A:9ECA: 55        .byte con_T + $55   ; 
- D 0 - I - 0x029EDB 0A:9ECB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029EDC 0A:9ECC: 0B        .byte con_X + $0B   ; 
@end:



_off008_9ECD_09:
- D 0 - I - 0x029EDD 0A:9ECD: 12        .byte (@end - * - 1) / 4

- D 0 - I - 0x029EDE 0A:9ECE: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029EDF 0A:9ECF: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029EE0 0A:9ED0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029EE1 0A:9ED1: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x029EE2 0A:9ED2: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029EE3 0A:9ED3: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029EE4 0A:9ED4: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029EE5 0A:9ED5: 04        .byte con_X + $04   ; 

- D 0 - I - 0x029EE6 0A:9ED6: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029EE7 0A:9ED7: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029EE8 0A:9ED8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029EE9 0A:9ED9: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x029EEA 0A:9EDA: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029EEB 0A:9EDB: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029EEC 0A:9EDC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029EED 0A:9EDD: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x029EEE 0A:9EDE: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029EEF 0A:9EDF: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029EF0 0A:9EE0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029EF1 0A:9EE1: 02        .byte con_X + $02   ; 

- D 0 - I - 0x029EF2 0A:9EE2: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029EF3 0A:9EE3: 09        .byte con_T + $09   ; 
- D 0 - I - 0x029EF4 0A:9EE4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029EF5 0A:9EE5: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x029EF6 0A:9EE6: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x029EF7 0A:9EE7: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029EF8 0A:9EE8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029EF9 0A:9EE9: 12        .byte con_X + $12   ; 

- D 0 - I - 0x029EFA 0A:9EEA: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029EFB 0A:9EEB: 27        .byte con_T + $27   ; 
- D 0 - I - 0x029EFC 0A:9EEC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029EFD 0A:9EED: EA        .byte con_X + $EA   ; 

- D 0 - I - 0x029EFE 0A:9EEE: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029EFF 0A:9EEF: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029F00 0A:9EF0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F01 0A:9EF1: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x029F02 0A:9EF2: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029F03 0A:9EF3: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029F04 0A:9EF4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F05 0A:9EF5: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x029F06 0A:9EF6: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029F07 0A:9EF7: 11        .byte con_T + $11   ; 
- D 0 - I - 0x029F08 0A:9EF8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F09 0A:9EF9: 02        .byte con_X + $02   ; 

- D 0 - I - 0x029F0A 0A:9EFA: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029F0B 0A:9EFB: 13        .byte con_T + $13   ; 
- D 0 - I - 0x029F0C 0A:9EFC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F0D 0A:9EFD: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x029F0E 0A:9EFE: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x029F0F 0A:9EFF: 15        .byte con_T + $15   ; 
- D 0 - I - 0x029F10 0A:9F00: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F11 0A:9F01: 12        .byte con_X + $12   ; 

- D 0 - I - 0x029F12 0A:9F02: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029F13 0A:9F03: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x029F14 0A:9F04: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F15 0A:9F05: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x029F16 0A:9F06: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029F17 0A:9F07: 31        .byte con_T + $31   ; 
- D 0 - I - 0x029F18 0A:9F08: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F19 0A:9F09: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x029F1A 0A:9F0A: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029F1B 0A:9F0B: 33        .byte con_T + $33   ; 
- D 0 - I - 0x029F1C 0A:9F0C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F1D 0A:9F0D: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x029F1E 0A:9F0E: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029F1F 0A:9F0F: 53        .byte con_T + $53   ; 
- D 0 - I - 0x029F20 0A:9F10: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F21 0A:9F11: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x029F22 0A:9F12: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029F23 0A:9F13: 39        .byte con_T + $39   ; 
- D 0 - I - 0x029F24 0A:9F14: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F25 0A:9F15: FB        .byte con_X + $FB   ; 
@end:



_off008_9F16_0A:
- D 0 - I - 0x029F26 0A:9F16: 14        .byte (@end - * - 1) / 4

- D 0 - I - 0x029F27 0A:9F17: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029F28 0A:9F18: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029F29 0A:9F19: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F2A 0A:9F1A: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x029F2B 0A:9F1B: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029F2C 0A:9F1C: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029F2D 0A:9F1D: 40        .byte con_A + $40   ; 
- D 0 - I - 0x029F2E 0A:9F1E: 06        .byte con_X + $06   ; 

- D 0 - I - 0x029F2F 0A:9F1F: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029F30 0A:9F20: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029F31 0A:9F21: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F32 0A:9F22: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x029F33 0A:9F23: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029F34 0A:9F24: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029F35 0A:9F25: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F36 0A:9F26: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x029F37 0A:9F27: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029F38 0A:9F28: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029F39 0A:9F29: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F3A 0A:9F2A: 04        .byte con_X + $04   ; 

- D 0 - I - 0x029F3B 0A:9F2B: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029F3C 0A:9F2C: 09        .byte con_T + $09   ; 
- D 0 - I - 0x029F3D 0A:9F2D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F3E 0A:9F2E: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x029F3F 0A:9F2F: BF        .byte con_Y + $BF   ; 
- D 0 - I - 0x029F40 0A:9F30: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029F41 0A:9F31: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F42 0A:9F32: 14        .byte con_X + $14   ; 

- D 0 - I - 0x029F43 0A:9F33: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029F44 0A:9F34: 27        .byte con_T + $27   ; 
- D 0 - I - 0x029F45 0A:9F35: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F46 0A:9F36: EC        .byte con_X + $EC   ; 

- D 0 - I - 0x029F47 0A:9F37: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029F48 0A:9F38: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x029F49 0A:9F39: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F4A 0A:9F3A: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x029F4B 0A:9F3B: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029F4C 0A:9F3C: 21        .byte con_T + $21   ; 
- D 0 - I - 0x029F4D 0A:9F3D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F4E 0A:9F3E: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x029F4F 0A:9F3F: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029F50 0A:9F40: 23        .byte con_T + $23   ; 
- D 0 - I - 0x029F51 0A:9F41: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F52 0A:9F42: 04        .byte con_X + $04   ; 

- D 0 - I - 0x029F53 0A:9F43: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029F54 0A:9F44: 25        .byte con_T + $25   ; 
- D 0 - I - 0x029F55 0A:9F45: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F56 0A:9F46: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x029F57 0A:9F47: CF        .byte con_Y + $CF   ; 
- D 0 - I - 0x029F58 0A:9F48: 15        .byte con_T + $15   ; 
- D 0 - I - 0x029F59 0A:9F49: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F5A 0A:9F4A: 14        .byte con_X + $14   ; 

- D 0 - I - 0x029F5B 0A:9F4B: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029F5C 0A:9F4C: 29        .byte con_T + $29   ; 
- D 0 - I - 0x029F5D 0A:9F4D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F5E 0A:9F4E: EE        .byte con_X + $EE   ; 

- D 0 - I - 0x029F5F 0A:9F4F: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029F60 0A:9F50: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x029F61 0A:9F51: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F62 0A:9F52: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x029F63 0A:9F53: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029F64 0A:9F54: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x029F65 0A:9F55: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F66 0A:9F56: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x029F67 0A:9F57: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029F68 0A:9F58: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x029F69 0A:9F59: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F6A 0A:9F5A: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x029F6B 0A:9F5B: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029F6C 0A:9F5C: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x029F6D 0A:9F5D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F6E 0A:9F5E: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x029F6F 0A:9F5F: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029F70 0A:9F60: 53        .byte con_T + $53   ; 
- D 0 - I - 0x029F71 0A:9F61: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F72 0A:9F62: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x029F73 0A:9F63: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029F74 0A:9F64: 55        .byte con_T + $55   ; 
- D 0 - I - 0x029F75 0A:9F65: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F76 0A:9F66: 04        .byte con_X + $04   ; 
@end:



_off008_9F67_0B:
- D 0 - I - 0x029F77 0A:9F67: 16        .byte (@end - * - 1) / 4

- D 0 - I - 0x029F78 0A:9F68: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029F79 0A:9F69: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029F7A 0A:9F6A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F7B 0A:9F6B: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x029F7C 0A:9F6C: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029F7D 0A:9F6D: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029F7E 0A:9F6E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F7F 0A:9F6F: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x029F80 0A:9F70: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029F81 0A:9F71: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029F82 0A:9F72: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F83 0A:9F73: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029F84 0A:9F74: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029F85 0A:9F75: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029F86 0A:9F76: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F87 0A:9F77: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x029F88 0A:9F78: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029F89 0A:9F79: 09        .byte con_T + $09   ; 
- D 0 - I - 0x029F8A 0A:9F7A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F8B 0A:9F7B: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x029F8C 0A:9F7C: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029F8D 0A:9F7D: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029F8E 0A:9F7E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F8F 0A:9F7F: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x029F90 0A:9F80: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029F91 0A:9F81: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029F92 0A:9F82: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F93 0A:9F83: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029F94 0A:9F84: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029F95 0A:9F85: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029F96 0A:9F86: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F97 0A:9F87: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x029F98 0A:9F88: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029F99 0A:9F89: 11        .byte con_T + $11   ; 
- D 0 - I - 0x029F9A 0A:9F8A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F9B 0A:9F8B: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x029F9C 0A:9F8C: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029F9D 0A:9F8D: 13        .byte con_T + $13   ; 
- D 0 - I - 0x029F9E 0A:9F8E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029F9F 0A:9F8F: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x029FA0 0A:9F90: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029FA1 0A:9F91: 15        .byte con_T + $15   ; 
- D 0 - I - 0x029FA2 0A:9F92: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FA3 0A:9F93: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x029FA4 0A:9F94: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029FA5 0A:9F95: 17        .byte con_T + $17   ; 
- D 0 - I - 0x029FA6 0A:9F96: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FA7 0A:9F97: 03        .byte con_X + $03   ; 

- D 0 - I - 0x029FA8 0A:9F98: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029FA9 0A:9F99: 19        .byte con_T + $19   ; 
- D 0 - I - 0x029FAA 0A:9F9A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FAB 0A:9F9B: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x029FAC 0A:9F9C: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029FAD 0A:9F9D: 41        .byte con_T + $41   ; 
- D 0 - I - 0x029FAE 0A:9F9E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FAF 0A:9F9F: E7        .byte con_X + $E7   ; 

- D 0 - I - 0x029FB0 0A:9FA0: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029FB1 0A:9FA1: 5F        .byte con_T + $5F   ; 
- D 0 - I - 0x029FB2 0A:9FA2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FB3 0A:9FA3: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x029FB4 0A:9FA4: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029FB5 0A:9FA5: 61        .byte con_T + $61   ; 
- D 0 - I - 0x029FB6 0A:9FA6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FB7 0A:9FA7: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x029FB8 0A:9FA8: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029FB9 0A:9FA9: 47        .byte con_T + $47   ; 
- D 0 - I - 0x029FBA 0A:9FAA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FBB 0A:9FAB: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x029FBC 0A:9FAC: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x029FBD 0A:9FAD: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x029FBE 0A:9FAE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FBF 0A:9FAF: 07        .byte con_X + $07   ; 

- D 0 - I - 0x029FC0 0A:9FB0: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029FC1 0A:9FB1: 63        .byte con_T + $63   ; 
- D 0 - I - 0x029FC2 0A:9FB2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FC3 0A:9FB3: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x029FC4 0A:9FB4: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029FC5 0A:9FB5: 65        .byte con_T + $65   ; 
- D 0 - I - 0x029FC6 0A:9FB6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FC7 0A:9FB7: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x029FC8 0A:9FB8: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029FC9 0A:9FB9: 53        .byte con_T + $53   ; 
- D 0 - I - 0x029FCA 0A:9FBA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FCB 0A:9FBB: 04        .byte con_X + $04   ; 

- D 0 - I - 0x029FCC 0A:9FBC: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x029FCD 0A:9FBD: 55        .byte con_T + $55   ; 
- D 0 - I - 0x029FCE 0A:9FBE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FCF 0A:9FBF: 0C        .byte con_X + $0C   ; 
@end:



_off008_9FC0_0C:
- D 0 - I - 0x029FD0 0A:9FC0: 16        .byte (@end - * - 1) / 4

- D 0 - I - 0x029FD1 0A:9FC1: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029FD2 0A:9FC2: 01        .byte con_T + $01   ; 
- D 0 - I - 0x029FD3 0A:9FC3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FD4 0A:9FC4: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x029FD5 0A:9FC5: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029FD6 0A:9FC6: 03        .byte con_T + $03   ; 
- D 0 - I - 0x029FD7 0A:9FC7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FD8 0A:9FC8: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x029FD9 0A:9FC9: B1        .byte con_Y + $B1   ; 
- D 0 - I - 0x029FDA 0A:9FCA: 05        .byte con_T + $05   ; 
- D 0 - I - 0x029FDB 0A:9FCB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FDC 0A:9FCC: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x029FDD 0A:9FCD: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029FDE 0A:9FCE: 07        .byte con_T + $07   ; 
- D 0 - I - 0x029FDF 0A:9FCF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FE0 0A:9FD0: E7        .byte con_X + $E7   ; 

- D 0 - I - 0x029FE1 0A:9FD1: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029FE2 0A:9FD2: 09        .byte con_T + $09   ; 
- D 0 - I - 0x029FE3 0A:9FD3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FE4 0A:9FD4: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x029FE5 0A:9FD5: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029FE6 0A:9FD6: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x029FE7 0A:9FD7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FE8 0A:9FD8: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x029FE9 0A:9FD9: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029FEA 0A:9FDA: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x029FEB 0A:9FDB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FEC 0A:9FDC: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x029FED 0A:9FDD: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x029FEE 0A:9FDE: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x029FEF 0A:9FDF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FF0 0A:9FE0: 07        .byte con_X + $07   ; 

- D 0 - I - 0x029FF1 0A:9FE1: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029FF2 0A:9FE2: 11        .byte con_T + $11   ; 
- D 0 - I - 0x029FF3 0A:9FE3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FF4 0A:9FE4: E7        .byte con_X + $E7   ; 

- D 0 - I - 0x029FF5 0A:9FE5: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029FF6 0A:9FE6: 13        .byte con_T + $13   ; 
- D 0 - I - 0x029FF7 0A:9FE7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FF8 0A:9FE8: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x029FF9 0A:9FE9: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029FFA 0A:9FEA: 15        .byte con_T + $15   ; 
- D 0 - I - 0x029FFB 0A:9FEB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x029FFC 0A:9FEC: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x029FFD 0A:9FED: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x029FFE 0A:9FEE: 17        .byte con_T + $17   ; 
- D 0 - I - 0x029FFF 0A:9FEF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02A000 0A:9FF0: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x02A001 0A:9FF1: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x02A002 0A:9FF2: 19        .byte con_T + $19   ; 
- D 0 - I - 0x02A003 0A:9FF3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x02A004 0A:9FF4: 07        .byte con_X + $07   ; 

- D 0 - I - 0x02A005 0A:9FF5: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x02A006 0A:9FF6: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x02A007 0A:9FF7: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02A008 0A:9FF8: E3        .byte con_X + $E3   ; 

- D 0 - I - 0x02A009 0A:9FF9: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x02A00A 0A:9FFA: 47        .byte con_T + $47   ; 
- D 0 - I - 0x02A00B 0A:9FFB: 40        .byte con_A + $40   ; 
- D 0 - I - 0x02A00C 0A:9FFC: EB        .byte con_X + $EB   ; 

- D 0 - I - 0x02A00D 0A:9FFD: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x02A00E 0A:9FFE: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x02A00F 0A:9FFF: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A010 0A:A000: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02A011 0A:A001: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A012 0A:A002: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02A013 0A:A003: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A014 0A:A004: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02A015 0A:A005: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A016 0A:A006: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A017 0A:A007: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A018 0A:A008: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02A019 0A:A009: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A01A 0A:A00A: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02A01B 0A:A00B: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A01C 0A:A00C: E0        .byte con_X + $E0   ; 

- D 1 - I - 0x02A01D 0A:A00D: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A01E 0A:A00E: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02A01F 0A:A00F: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A020 0A:A010: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02A021 0A:A011: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A022 0A:A012: 57        .byte con_T + $57   ; 
- D 1 - I - 0x02A023 0A:A013: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A024 0A:A014: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02A025 0A:A015: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A026 0A:A016: 59        .byte con_T + $59   ; 
- D 1 - I - 0x02A027 0A:A017: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A028 0A:A018: 0B        .byte con_X + $0B   ; 
@end:



_off008_A019_0D:
- D 1 - I - 0x02A029 0A:A019: 16        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A02A 0A:A01A: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A02B 0A:A01B: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A02C 0A:A01C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A02D 0A:A01D: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02A02E 0A:A01E: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A02F 0A:A01F: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A030 0A:A020: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A031 0A:A021: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02A032 0A:A022: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A033 0A:A023: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A034 0A:A024: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A035 0A:A025: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02A036 0A:A026: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A037 0A:A027: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02A038 0A:A028: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A039 0A:A029: EB        .byte con_X + $EB   ; 

- D 1 - I - 0x02A03A 0A:A02A: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A03B 0A:A02B: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02A03C 0A:A02C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A03D 0A:A02D: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02A03E 0A:A02E: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A03F 0A:A02F: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02A040 0A:A030: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A041 0A:A031: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02A042 0A:A032: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A043 0A:A033: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A044 0A:A034: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A045 0A:A035: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02A046 0A:A036: B9        .byte con_Y + $B9   ; 
- D 1 - I - 0x02A047 0A:A037: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A048 0A:A038: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A049 0A:A039: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02A04A 0A:A03A: C9        .byte con_Y + $C9   ; 
- D 1 - I - 0x02A04B 0A:A03B: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02A04C 0A:A03C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A04D 0A:A03D: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02A04E 0A:A03E: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A04F 0A:A03F: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02A050 0A:A040: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A051 0A:A041: EB        .byte con_X + $EB   ; 

- D 1 - I - 0x02A052 0A:A042: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A053 0A:A043: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02A054 0A:A044: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A055 0A:A045: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02A056 0A:A046: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A057 0A:A047: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02A058 0A:A048: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A059 0A:A049: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02A05A 0A:A04A: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A05B 0A:A04B: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02A05C 0A:A04C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A05D 0A:A04D: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02A05E 0A:A04E: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A05F 0A:A04F: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02A060 0A:A050: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A061 0A:A051: E6        .byte con_X + $E6   ; 

- D 1 - I - 0x02A062 0A:A052: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A063 0A:A053: 5F        .byte con_T + $5F   ; 
- D 1 - I - 0x02A064 0A:A054: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A065 0A:A055: EE        .byte con_X + $EE   ; 

- D 1 - I - 0x02A066 0A:A056: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A067 0A:A057: 61        .byte con_T + $61   ; 
- D 1 - I - 0x02A068 0A:A058: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A069 0A:A059: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02A06A 0A:A05A: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A06B 0A:A05B: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02A06C 0A:A05C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A06D 0A:A05D: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02A06E 0A:A05E: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A06F 0A:A05F: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A070 0A:A060: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A071 0A:A061: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02A072 0A:A062: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A073 0A:A063: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02A074 0A:A064: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A075 0A:A065: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A076 0A:A066: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A077 0A:A067: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02A078 0A:A068: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A079 0A:A069: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A07A 0A:A06A: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A07B 0A:A06B: 63        .byte con_T + $63   ; 
- D 1 - I - 0x02A07C 0A:A06C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A07D 0A:A06D: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02A07E 0A:A06E: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A07F 0A:A06F: 65        .byte con_T + $65   ; 
- D 1 - I - 0x02A080 0A:A070: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A081 0A:A071: 09        .byte con_X + $09   ; 
@end:



_off008_A072_0E:
- D 1 - I - 0x02A082 0A:A072: 16        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A083 0A:A073: B0        .byte con_Y + $B0   ; 
- D 1 - I - 0x02A084 0A:A074: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A085 0A:A075: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A086 0A:A076: EC        .byte con_X + $EC   ; 

- D 1 - I - 0x02A087 0A:A077: B0        .byte con_Y + $B0   ; 
- D 1 - I - 0x02A088 0A:A078: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A089 0A:A079: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A08A 0A:A07A: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02A08B 0A:A07B: B0        .byte con_Y + $B0   ; 
- D 1 - I - 0x02A08C 0A:A07C: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A08D 0A:A07D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A08E 0A:A07E: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02A08F 0A:A07F: B8        .byte con_Y + $B8   ; 
- D 1 - I - 0x02A090 0A:A080: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A091 0A:A081: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A092 0A:A082: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02A093 0A:A083: C0        .byte con_Y + $C0   ; 
- D 1 - I - 0x02A094 0A:A084: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02A095 0A:A085: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A096 0A:A086: EC        .byte con_X + $EC   ; 

- D 1 - I - 0x02A097 0A:A087: C0        .byte con_Y + $C0   ; 
- D 1 - I - 0x02A098 0A:A088: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02A099 0A:A089: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A09A 0A:A08A: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02A09B 0A:A08B: C0        .byte con_Y + $C0   ; 
- D 1 - I - 0x02A09C 0A:A08C: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A09D 0A:A08D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A09E 0A:A08E: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02A09F 0A:A08F: C8        .byte con_Y + $C8   ; 
- D 1 - I - 0x02A0A0 0A:A090: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02A0A1 0A:A091: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0A2 0A:A092: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02A0A3 0A:A093: D0        .byte con_Y + $D0   ; 
- D 1 - I - 0x02A0A4 0A:A094: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02A0A5 0A:A095: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0A6 0A:A096: EC        .byte con_X + $EC   ; 

- D 1 - I - 0x02A0A7 0A:A097: D0        .byte con_Y + $D0   ; 
- D 1 - I - 0x02A0A8 0A:A098: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02A0A9 0A:A099: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0AA 0A:A09A: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02A0AB 0A:A09B: D0        .byte con_Y + $D0   ; 
- D 1 - I - 0x02A0AC 0A:A09C: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02A0AD 0A:A09D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0AE 0A:A09E: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02A0AF 0A:A09F: C5        .byte con_Y + $C5   ; 
- D 1 - I - 0x02A0B0 0A:A0A0: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02A0B1 0A:A0A1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0B2 0A:A0A2: DC        .byte con_X + $DC   ; 

- D 1 - I - 0x02A0B3 0A:A0A3: C0        .byte con_Y + $C0   ; 
- D 1 - I - 0x02A0B4 0A:A0A4: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02A0B5 0A:A0A5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0B6 0A:A0A6: E4        .byte con_X + $E4   ; 

- D 1 - I - 0x02A0B7 0A:A0A7: E0        .byte con_Y + $E0   ; 
- D 1 - I - 0x02A0B8 0A:A0A8: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02A0B9 0A:A0A9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0BA 0A:A0AA: E7        .byte con_X + $E7   ; 

- D 1 - I - 0x02A0BB 0A:A0AB: E0        .byte con_Y + $E0   ; 
- D 1 - I - 0x02A0BC 0A:A0AC: 5F        .byte con_T + $5F   ; 
- D 1 - I - 0x02A0BD 0A:A0AD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0BE 0A:A0AE: EF        .byte con_X + $EF   ; 

- D 1 - I - 0x02A0BF 0A:A0AF: E0        .byte con_Y + $E0   ; 
- D 1 - I - 0x02A0C0 0A:A0B0: 61        .byte con_T + $61   ; 
- D 1 - I - 0x02A0C1 0A:A0B1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0C2 0A:A0B2: F7        .byte con_X + $F7   ; 

- D 1 - I - 0x02A0C3 0A:A0B3: E0        .byte con_Y + $E0   ; 
- D 1 - I - 0x02A0C4 0A:A0B4: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A0C5 0A:A0B5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0C6 0A:A0B6: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02A0C7 0A:A0B7: F0        .byte con_Y + $F0   ; 
- D 1 - I - 0x02A0C8 0A:A0B8: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02A0C9 0A:A0B9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0CA 0A:A0BA: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02A0CB 0A:A0BB: F0        .byte con_Y + $F0   ; 
- D 1 - I - 0x02A0CC 0A:A0BC: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02A0CD 0A:A0BD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0CE 0A:A0BE: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02A0CF 0A:A0BF: F0        .byte con_Y + $F0   ; 
- D 1 - I - 0x02A0D0 0A:A0C0: 63        .byte con_T + $63   ; 
- D 1 - I - 0x02A0D1 0A:A0C1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0D2 0A:A0C2: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02A0D3 0A:A0C3: F0        .byte con_Y + $F0   ; 
- D 1 - I - 0x02A0D4 0A:A0C4: 65        .byte con_T + $65   ; 
- D 1 - I - 0x02A0D5 0A:A0C5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0D6 0A:A0C6: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02A0D7 0A:A0C7: E0        .byte con_Y + $E0   ; 
- D 1 - I - 0x02A0D8 0A:A0C8: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02A0D9 0A:A0C9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0DA 0A:A0CA: FF        .byte con_X + $FF   ; 
@end:



_off008_A0CB_0F:
- D 1 - I - 0x02A0DB 0A:A0CB: 16        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A0DC 0A:A0CC: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A0DD 0A:A0CD: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A0DE 0A:A0CE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0DF 0A:A0CF: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02A0E0 0A:A0D0: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A0E1 0A:A0D1: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A0E2 0A:A0D2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0E3 0A:A0D3: 11        .byte con_X + $11   ; 

- D 1 - I - 0x02A0E4 0A:A0D4: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A0E5 0A:A0D5: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A0E6 0A:A0D6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0E7 0A:A0D7: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A0E8 0A:A0D8: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A0E9 0A:A0D9: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02A0EA 0A:A0DA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0EB 0A:A0DB: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A0EC 0A:A0DC: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A0ED 0A:A0DD: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02A0EE 0A:A0DE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0EF 0A:A0DF: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A0F0 0A:A0E0: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A0F1 0A:A0E1: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02A0F2 0A:A0E2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0F3 0A:A0E3: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02A0F4 0A:A0E4: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A0F5 0A:A0E5: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A0F6 0A:A0E6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0F7 0A:A0E7: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02A0F8 0A:A0E8: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A0F9 0A:A0E9: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A0FA 0A:A0EA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0FB 0A:A0EB: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02A0FC 0A:A0EC: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A0FD 0A:A0ED: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02A0FE 0A:A0EE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A0FF 0A:A0EF: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02A100 0A:A0F0: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A101 0A:A0F1: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02A102 0A:A0F2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A103 0A:A0F3: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02A104 0A:A0F4: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A105 0A:A0F5: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02A106 0A:A0F6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A107 0A:A0F7: 12        .byte con_X + $12   ; 

- D 1 - I - 0x02A108 0A:A0F8: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A109 0A:A0F9: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02A10A 0A:A0FA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A10B 0A:A0FB: 1A        .byte con_X + $1A   ; 

- D 1 - I - 0x02A10C 0A:A0FC: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A10D 0A:A0FD: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02A10E 0A:A0FE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A10F 0A:A0FF: E7        .byte con_X + $E7   ; 

- D 1 - I - 0x02A110 0A:A100: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A111 0A:A101: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02A112 0A:A102: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A113 0A:A103: EF        .byte con_X + $EF   ; 

- D 1 - I - 0x02A114 0A:A104: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A115 0A:A105: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02A116 0A:A106: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A117 0A:A107: F7        .byte con_X + $F7   ; 

- D 1 - I - 0x02A118 0A:A108: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A119 0A:A109: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02A11A 0A:A10A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A11B 0A:A10B: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02A11C 0A:A10C: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A11D 0A:A10D: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A11E 0A:A10E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A11F 0A:A10F: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02A120 0A:A110: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A121 0A:A111: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02A122 0A:A112: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A123 0A:A113: EF        .byte con_X + $EF   ; 

- D 1 - I - 0x02A124 0A:A114: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A125 0A:A115: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02A126 0A:A116: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A127 0A:A117: F7        .byte con_X + $F7   ; 

- D 1 - I - 0x02A128 0A:A118: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A129 0A:A119: 53        .byte con_T + $53   ; 
- D 1 - I - 0x02A12A 0A:A11A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A12B 0A:A11B: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02A12C 0A:A11C: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A12D 0A:A11D: 55        .byte con_T + $55   ; 
- D 1 - I - 0x02A12E 0A:A11E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A12F 0A:A11F: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02A130 0A:A120: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A131 0A:A121: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02A132 0A:A122: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A133 0A:A123: 0A        .byte con_X + $0A   ; 
@end:



_off008_A124_10:
- D 1 - I - 0x02A134 0A:A124: 17        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A135 0A:A125: A5        .byte con_Y + $A5   ; 
- D 1 - I - 0x02A136 0A:A126: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A137 0A:A127: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A138 0A:A128: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A139 0A:A129: A5        .byte con_Y + $A5   ; 
- D 1 - I - 0x02A13A 0A:A12A: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A13B 0A:A12B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A13C 0A:A12C: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A13D 0A:A12D: A5        .byte con_Y + $A5   ; 
- D 1 - I - 0x02A13E 0A:A12E: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A13F 0A:A12F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A140 0A:A130: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A141 0A:A131: A5        .byte con_Y + $A5   ; 
- D 1 - I - 0x02A142 0A:A132: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02A143 0A:A133: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A144 0A:A134: 13        .byte con_X + $13   ; 

- D 1 - I - 0x02A145 0A:A135: B5        .byte con_Y + $B5   ; 
- D 1 - I - 0x02A146 0A:A136: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02A147 0A:A137: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A148 0A:A138: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A149 0A:A139: B5        .byte con_Y + $B5   ; 
- D 1 - I - 0x02A14A 0A:A13A: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02A14B 0A:A13B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A14C 0A:A13C: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A14D 0A:A13D: B5        .byte con_Y + $B5   ; 
- D 1 - I - 0x02A14E 0A:A13E: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02A14F 0A:A13F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A150 0A:A140: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A151 0A:A141: B5        .byte con_Y + $B5   ; 
- D 1 - I - 0x02A152 0A:A142: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A153 0A:A143: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A154 0A:A144: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A155 0A:A145: B5        .byte con_Y + $B5   ; 
- D 1 - I - 0x02A156 0A:A146: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02A157 0A:A147: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A158 0A:A148: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02A159 0A:A149: B5        .byte con_Y + $B5   ; 
- D 1 - I - 0x02A15A 0A:A14A: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02A15B 0A:A14B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A15C 0A:A14C: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02A15D 0A:A14D: C5        .byte con_Y + $C5   ; 
- D 1 - I - 0x02A15E 0A:A14E: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02A15F 0A:A14F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A160 0A:A150: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A161 0A:A151: C5        .byte con_Y + $C5   ; 
- D 1 - I - 0x02A162 0A:A152: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02A163 0A:A153: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A164 0A:A154: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A165 0A:A155: C5        .byte con_Y + $C5   ; 
- D 1 - I - 0x02A166 0A:A156: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02A167 0A:A157: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A168 0A:A158: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A169 0A:A159: C5        .byte con_Y + $C5   ; 
- D 1 - I - 0x02A16A 0A:A15A: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02A16B 0A:A15B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A16C 0A:A15C: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A16D 0A:A15D: C5        .byte con_Y + $C5   ; 
- D 1 - I - 0x02A16E 0A:A15E: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02A16F 0A:A15F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A170 0A:A160: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02A171 0A:A161: D5        .byte con_Y + $D5   ; 
- D 1 - I - 0x02A172 0A:A162: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02A173 0A:A163: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A174 0A:A164: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A175 0A:A165: D5        .byte con_Y + $D5   ; 
- D 1 - I - 0x02A176 0A:A166: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02A177 0A:A167: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A178 0A:A168: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A179 0A:A169: D5        .byte con_Y + $D5   ; 
- D 1 - I - 0x02A17A 0A:A16A: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02A17B 0A:A16B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A17C 0A:A16C: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A17D 0A:A16D: D5        .byte con_Y + $D5   ; 
- D 1 - I - 0x02A17E 0A:A16E: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A17F 0A:A16F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A180 0A:A170: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A181 0A:A171: E5        .byte con_Y + $E5   ; 
- D 1 - I - 0x02A182 0A:A172: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02A183 0A:A173: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A184 0A:A174: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A185 0A:A175: E5        .byte con_Y + $E5   ; 
- D 1 - I - 0x02A186 0A:A176: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02A187 0A:A177: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A188 0A:A178: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A189 0A:A179: F5        .byte con_Y + $F5   ; 
- D 1 - I - 0x02A18A 0A:A17A: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02A18B 0A:A17B: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A18C 0A:A17C: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02A18D 0A:A17D: E5        .byte con_Y + $E5   ; 
- D 1 - I - 0x02A18E 0A:A17E: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02A18F 0A:A17F: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A190 0A:A180: 05        .byte con_X + $05   ; 
@end:



_off008_A181_11:
- D 1 - I - 0x02A191 0A:A181: 14        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A192 0A:A182: AD        .byte con_Y + $AD   ; 
- D 1 - I - 0x02A193 0A:A183: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A194 0A:A184: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A195 0A:A185: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A196 0A:A186: AD        .byte con_Y + $AD   ; 
- D 1 - I - 0x02A197 0A:A187: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A198 0A:A188: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A199 0A:A189: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A19A 0A:A18A: AD        .byte con_Y + $AD   ; 
- D 1 - I - 0x02A19B 0A:A18B: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A19C 0A:A18C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A19D 0A:A18D: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A19E 0A:A18E: C3        .byte con_Y + $C3   ; 
- D 1 - I - 0x02A19F 0A:A18F: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02A1A0 0A:A190: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A1A1 0A:A191: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02A1A2 0A:A192: BD        .byte con_Y + $BD   ; 
- D 1 - I - 0x02A1A3 0A:A193: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02A1A4 0A:A194: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A1A5 0A:A195: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A1A6 0A:A196: BD        .byte con_Y + $BD   ; 
- D 1 - I - 0x02A1A7 0A:A197: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02A1A8 0A:A198: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A1A9 0A:A199: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A1AA 0A:A19A: BD        .byte con_Y + $BD   ; 
- D 1 - I - 0x02A1AB 0A:A19B: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02A1AC 0A:A19C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A1AD 0A:A19D: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A1AE 0A:A19E: BD        .byte con_Y + $BD   ; 
- D 1 - I - 0x02A1AF 0A:A19F: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A1B0 0A:A1A0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A1B1 0A:A1A1: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A1B2 0A:A1A2: BD        .byte con_Y + $BD   ; 
- D 1 - I - 0x02A1B3 0A:A1A3: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A1B4 0A:A1A4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A1B5 0A:A1A5: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02A1B6 0A:A1A6: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02A1B7 0A:A1A7: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02A1B8 0A:A1A8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A1B9 0A:A1A9: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A1BA 0A:A1AA: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02A1BB 0A:A1AB: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02A1BC 0A:A1AC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A1BD 0A:A1AD: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A1BE 0A:A1AE: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02A1BF 0A:A1AF: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02A1C0 0A:A1B0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A1C1 0A:A1B1: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A1C2 0A:A1B2: D0        .byte con_Y + $D0   ; 
- D 1 - I - 0x02A1C3 0A:A1B3: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02A1C4 0A:A1B4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A1C5 0A:A1B5: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02A1C6 0A:A1B6: D5        .byte con_Y + $D5   ; 
- D 1 - I - 0x02A1C7 0A:A1B7: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A1C8 0A:A1B8: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A1C9 0A:A1B9: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A1CA 0A:A1BA: E5        .byte con_Y + $E5   ; 
- D 1 - I - 0x02A1CB 0A:A1BB: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02A1CC 0A:A1BC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A1CD 0A:A1BD: EF        .byte con_X + $EF   ; 

- D 1 - I - 0x02A1CE 0A:A1BE: ED        .byte con_Y + $ED   ; 
- D 1 - I - 0x02A1CF 0A:A1BF: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02A1D0 0A:A1C0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A1D1 0A:A1C1: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02A1D2 0A:A1C2: DD        .byte con_Y + $DD   ; 
- D 1 - I - 0x02A1D3 0A:A1C3: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02A1D4 0A:A1C4: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A1D5 0A:A1C5: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A1D6 0A:A1C6: DD        .byte con_Y + $DD   ; 
- D 1 - I - 0x02A1D7 0A:A1C7: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02A1D8 0A:A1C8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A1D9 0A:A1C9: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A1DA 0A:A1CA: DD        .byte con_Y + $DD   ; 
- D 1 - I - 0x02A1DB 0A:A1CB: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A1DC 0A:A1CC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A1DD 0A:A1CD: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A1DE 0A:A1CE: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02A1DF 0A:A1CF: 35        .byte con_T + $35   ; 
- D 1 - I - 0x02A1E0 0A:A1D0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A1E1 0A:A1D1: 10        .byte con_X + $10   ; 
@end:



_off008_A1D2_12:
- D 1 - I - 0x02A1E2 0A:A1D2: 12        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A1E3 0A:A1D3: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A1E4 0A:A1D4: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A1E5 0A:A1D5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A1E6 0A:A1D6: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02A1E7 0A:A1D7: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A1E8 0A:A1D8: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A1E9 0A:A1D9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A1EA 0A:A1DA: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02A1EB 0A:A1DB: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A1EC 0A:A1DC: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A1ED 0A:A1DD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A1EE 0A:A1DE: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02A1EF 0A:A1DF: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A1F0 0A:A1E0: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02A1F1 0A:A1E1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A1F2 0A:A1E2: E9        .byte con_X + $E9   ; 

- D 1 - I - 0x02A1F3 0A:A1E3: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A1F4 0A:A1E4: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02A1F5 0A:A1E5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A1F6 0A:A1E6: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02A1F7 0A:A1E7: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A1F8 0A:A1E8: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02A1F9 0A:A1E9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A1FA 0A:A1EA: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02A1FB 0A:A1EB: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A1FC 0A:A1EC: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A1FD 0A:A1ED: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A1FE 0A:A1EE: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02A1FF 0A:A1EF: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A200 0A:A1F0: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A201 0A:A1F1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A202 0A:A1F2: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02A203 0A:A1F3: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A204 0A:A1F4: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02A205 0A:A1F5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A206 0A:A1F6: E9        .byte con_X + $E9   ; 

- D 1 - I - 0x02A207 0A:A1F7: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A208 0A:A1F8: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02A209 0A:A1F9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A20A 0A:A1FA: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02A20B 0A:A1FB: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A20C 0A:A1FC: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02A20D 0A:A1FD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A20E 0A:A1FE: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02A20F 0A:A1FF: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A210 0A:A200: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A211 0A:A201: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A212 0A:A202: E7        .byte con_X + $E7   ; 

- D 1 - I - 0x02A213 0A:A203: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A214 0A:A204: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02A215 0A:A205: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A216 0A:A206: F7        .byte con_X + $F7   ; 

- D 1 - I - 0x02A217 0A:A207: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A218 0A:A208: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02A219 0A:A209: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A21A 0A:A20A: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02A21B 0A:A20B: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A21C 0A:A20C: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02A21D 0A:A20D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A21E 0A:A20E: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02A21F 0A:A20F: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A220 0A:A210: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02A221 0A:A211: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A222 0A:A212: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02A223 0A:A213: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A224 0A:A214: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02A225 0A:A215: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A226 0A:A216: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02A227 0A:A217: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A228 0A:A218: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02A229 0A:A219: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A22A 0A:A21A: EF        .byte con_X + $EF   ; 
@end:



_off008_A21B_13:
- D 1 - I - 0x02A22B 0A:A21B: 12        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A22C 0A:A21C: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A22D 0A:A21D: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A22E 0A:A21E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A22F 0A:A21F: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02A230 0A:A220: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A231 0A:A221: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A232 0A:A222: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A233 0A:A223: 12        .byte con_X + $12   ; 

- D 1 - I - 0x02A234 0A:A224: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A235 0A:A225: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A236 0A:A226: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A237 0A:A227: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02A238 0A:A228: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A239 0A:A229: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02A23A 0A:A22A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A23B 0A:A22B: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02A23C 0A:A22C: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A23D 0A:A22D: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02A23E 0A:A22E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A23F 0A:A22F: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02A240 0A:A230: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A241 0A:A231: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02A242 0A:A232: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A243 0A:A233: 11        .byte con_X + $11   ; 

- D 1 - I - 0x02A244 0A:A234: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A245 0A:A235: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A246 0A:A236: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A247 0A:A237: 19        .byte con_X + $19   ; 

- D 1 - I - 0x02A248 0A:A238: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A249 0A:A239: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A24A 0A:A23A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A24B 0A:A23B: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02A24C 0A:A23C: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A24D 0A:A23D: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02A24E 0A:A23E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A24F 0A:A23F: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02A250 0A:A240: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A251 0A:A241: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02A252 0A:A242: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A253 0A:A243: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02A254 0A:A244: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A255 0A:A245: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02A256 0A:A246: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A257 0A:A247: 13        .byte con_X + $13   ; 

- D 1 - I - 0x02A258 0A:A248: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A259 0A:A249: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02A25A 0A:A24A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A25B 0A:A24B: 1B        .byte con_X + $1B   ; 

- D 1 - I - 0x02A25C 0A:A24C: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A25D 0A:A24D: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02A25E 0A:A24E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A25F 0A:A24F: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02A260 0A:A250: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A261 0A:A251: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02A262 0A:A252: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A263 0A:A253: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A264 0A:A254: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A265 0A:A255: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02A266 0A:A256: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A267 0A:A257: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A268 0A:A258: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A269 0A:A259: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02A26A 0A:A25A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A26B 0A:A25B: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A26C 0A:A25C: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A26D 0A:A25D: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02A26E 0A:A25E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A26F 0A:A25F: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A270 0A:A260: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A271 0A:A261: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02A272 0A:A262: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A273 0A:A263: 0B        .byte con_X + $0B   ; 
@end:



_off008_A264_14:
- D 1 - I - 0x02A274 0A:A264: 14        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A275 0A:A265: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A276 0A:A266: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A277 0A:A267: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A278 0A:A268: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A279 0A:A269: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A27A 0A:A26A: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A27B 0A:A26B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A27C 0A:A26C: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A27D 0A:A26D: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A27E 0A:A26E: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A27F 0A:A26F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A280 0A:A270: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A281 0A:A271: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A282 0A:A272: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02A283 0A:A273: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A284 0A:A274: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A285 0A:A275: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A286 0A:A276: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02A287 0A:A277: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A288 0A:A278: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A289 0A:A279: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A28A 0A:A27A: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02A28B 0A:A27B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A28C 0A:A27C: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A28D 0A:A27D: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A28E 0A:A27E: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A28F 0A:A27F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A290 0A:A280: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02A291 0A:A281: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A292 0A:A282: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02A293 0A:A283: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A294 0A:A284: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A295 0A:A285: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A296 0A:A286: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02A297 0A:A287: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A298 0A:A288: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A299 0A:A289: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A29A 0A:A28A: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02A29B 0A:A28B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A29C 0A:A28C: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A29D 0A:A28D: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A29E 0A:A28E: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02A29F 0A:A28F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A2A0 0A:A290: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A2A1 0A:A291: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A2A2 0A:A292: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02A2A3 0A:A293: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A2A4 0A:A294: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02A2A5 0A:A295: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A2A6 0A:A296: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A2A7 0A:A297: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A2A8 0A:A298: EE        .byte con_X + $EE   ; 

- D 1 - I - 0x02A2A9 0A:A299: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A2AA 0A:A29A: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02A2AB 0A:A29B: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A2AC 0A:A29C: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02A2AD 0A:A29D: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A2AE 0A:A29E: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02A2AF 0A:A29F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A2B0 0A:A2A0: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02A2B1 0A:A2A1: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A2B2 0A:A2A2: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02A2B3 0A:A2A3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A2B4 0A:A2A4: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02A2B5 0A:A2A5: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A2B6 0A:A2A6: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02A2B7 0A:A2A7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A2B8 0A:A2A8: 0E        .byte con_X + $0E   ; 

- D 1 - I - 0x02A2B9 0A:A2A9: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A2BA 0A:A2AA: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02A2BB 0A:A2AB: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A2BC 0A:A2AC: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02A2BD 0A:A2AD: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A2BE 0A:A2AE: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02A2BF 0A:A2AF: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A2C0 0A:A2B0: E9        .byte con_X + $E9   ; 

- D 1 - I - 0x02A2C1 0A:A2B1: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A2C2 0A:A2B2: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A2C3 0A:A2B3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A2C4 0A:A2B4: 08        .byte con_X + $08   ; 
@end:



_off008_A2B5_15:
- D 1 - I - 0x02A2C5 0A:A2B5: 16        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A2C6 0A:A2B6: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A2C7 0A:A2B7: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A2C8 0A:A2B8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A2C9 0A:A2B9: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02A2CA 0A:A2BA: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A2CB 0A:A2BB: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A2CC 0A:A2BC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A2CD 0A:A2BD: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02A2CE 0A:A2BE: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A2CF 0A:A2BF: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A2D0 0A:A2C0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A2D1 0A:A2C1: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02A2D2 0A:A2C2: B9        .byte con_Y + $B9   ; 
- D 1 - I - 0x02A2D3 0A:A2C3: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A2D4 0A:A2C4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A2D5 0A:A2C5: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02A2D6 0A:A2C6: C6        .byte con_Y + $C6   ; 
- D 1 - I - 0x02A2D7 0A:A2C7: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02A2D8 0A:A2C8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A2D9 0A:A2C9: E2        .byte con_X + $E2   ; 

- D 1 - I - 0x02A2DA 0A:A2CA: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A2DB 0A:A2CB: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02A2DC 0A:A2CC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A2DD 0A:A2CD: EA        .byte con_X + $EA   ; 

- D 1 - I - 0x02A2DE 0A:A2CE: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A2DF 0A:A2CF: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02A2E0 0A:A2D0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A2E1 0A:A2D1: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02A2E2 0A:A2D2: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A2E3 0A:A2D3: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02A2E4 0A:A2D4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A2E5 0A:A2D5: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02A2E6 0A:A2D6: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A2E7 0A:A2D7: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A2E8 0A:A2D8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A2E9 0A:A2D9: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02A2EA 0A:A2DA: C9        .byte con_Y + $C9   ; 
- D 1 - I - 0x02A2EB 0A:A2DB: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02A2EC 0A:A2DC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A2ED 0A:A2DD: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02A2EE 0A:A2DE: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A2EF 0A:A2DF: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02A2F0 0A:A2E0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A2F1 0A:A2E1: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02A2F2 0A:A2E2: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A2F3 0A:A2E3: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02A2F4 0A:A2E4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A2F5 0A:A2E5: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02A2F6 0A:A2E6: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A2F7 0A:A2E7: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02A2F8 0A:A2E8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A2F9 0A:A2E9: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02A2FA 0A:A2EA: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A2FB 0A:A2EB: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A2FC 0A:A2EC: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A2FD 0A:A2ED: EE        .byte con_X + $EE   ; 

- D 1 - I - 0x02A2FE 0A:A2EE: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A2FF 0A:A2EF: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02A300 0A:A2F0: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A301 0A:A2F1: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02A302 0A:A2F2: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A303 0A:A2F3: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02A304 0A:A2F4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A305 0A:A2F5: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02A306 0A:A2F6: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A307 0A:A2F7: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02A308 0A:A2F8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A309 0A:A2F9: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02A30A 0A:A2FA: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A30B 0A:A2FB: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02A30C 0A:A2FC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A30D 0A:A2FD: 0E        .byte con_X + $0E   ; 

- D 1 - I - 0x02A30E 0A:A2FE: E3        .byte con_Y + $E3   ; 
- D 1 - I - 0x02A30F 0A:A2FF: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02A310 0A:A300: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A311 0A:A301: 16        .byte con_X + $16   ; 

- D 1 - I - 0x02A312 0A:A302: E3        .byte con_Y + $E3   ; 
- D 1 - I - 0x02A313 0A:A303: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02A314 0A:A304: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A315 0A:A305: 1E        .byte con_X + $1E   ; 

- D 1 - I - 0x02A316 0A:A306: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A317 0A:A307: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02A318 0A:A308: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A319 0A:A309: EA        .byte con_X + $EA   ; 

- D 1 - I - 0x02A31A 0A:A30A: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A31B 0A:A30B: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02A31C 0A:A30C: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A31D 0A:A30D: F2        .byte con_X + $F2   ; 
@end:



_off008_A30E_16:
- D 1 - I - 0x02A31E 0A:A30E: 16        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A31F 0A:A30F: A5        .byte con_Y + $A5   ; 
- D 1 - I - 0x02A320 0A:A310: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A321 0A:A311: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A322 0A:A312: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02A323 0A:A313: A5        .byte con_Y + $A5   ; 
- D 1 - I - 0x02A324 0A:A314: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A325 0A:A315: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A326 0A:A316: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02A327 0A:A317: A5        .byte con_Y + $A5   ; 
- D 1 - I - 0x02A328 0A:A318: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A329 0A:A319: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A32A 0A:A31A: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02A32B 0A:A31B: B5        .byte con_Y + $B5   ; 
- D 1 - I - 0x02A32C 0A:A31C: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02A32D 0A:A31D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A32E 0A:A31E: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02A32F 0A:A31F: B5        .byte con_Y + $B5   ; 
- D 1 - I - 0x02A330 0A:A320: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02A331 0A:A321: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A332 0A:A322: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02A333 0A:A323: B5        .byte con_Y + $B5   ; 
- D 1 - I - 0x02A334 0A:A324: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02A335 0A:A325: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A336 0A:A326: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02A337 0A:A327: B5        .byte con_Y + $B5   ; 
- D 1 - I - 0x02A338 0A:A328: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A339 0A:A329: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A33A 0A:A32A: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02A33B 0A:A32B: B5        .byte con_Y + $B5   ; 
- D 1 - I - 0x02A33C 0A:A32C: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A33D 0A:A32D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A33E 0A:A32E: 12        .byte con_X + $12   ; 

- D 1 - I - 0x02A33F 0A:A32F: C5        .byte con_Y + $C5   ; 
- D 1 - I - 0x02A340 0A:A330: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02A341 0A:A331: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A342 0A:A332: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02A343 0A:A333: C5        .byte con_Y + $C5   ; 
- D 1 - I - 0x02A344 0A:A334: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02A345 0A:A335: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A346 0A:A336: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02A347 0A:A337: C5        .byte con_Y + $C5   ; 
- D 1 - I - 0x02A348 0A:A338: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02A349 0A:A339: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A34A 0A:A33A: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02A34B 0A:A33B: C5        .byte con_Y + $C5   ; 
- D 1 - I - 0x02A34C 0A:A33C: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02A34D 0A:A33D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A34E 0A:A33E: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02A34F 0A:A33F: C5        .byte con_Y + $C5   ; 
- D 1 - I - 0x02A350 0A:A340: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02A351 0A:A341: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A352 0A:A342: 12        .byte con_X + $12   ; 

- D 1 - I - 0x02A353 0A:A343: C8        .byte con_Y + $C8   ; 
- D 1 - I - 0x02A354 0A:A344: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02A355 0A:A345: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A356 0A:A346: 1A        .byte con_X + $1A   ; 

- D 1 - I - 0x02A357 0A:A347: D5        .byte con_Y + $D5   ; 
- D 1 - I - 0x02A358 0A:A348: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02A359 0A:A349: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A35A 0A:A34A: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02A35B 0A:A34B: D5        .byte con_Y + $D5   ; 
- D 1 - I - 0x02A35C 0A:A34C: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02A35D 0A:A34D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A35E 0A:A34E: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02A35F 0A:A34F: D5        .byte con_Y + $D5   ; 
- D 1 - I - 0x02A360 0A:A350: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02A361 0A:A351: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A362 0A:A352: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02A363 0A:A353: D5        .byte con_Y + $D5   ; 
- D 1 - I - 0x02A364 0A:A354: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02A365 0A:A355: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A366 0A:A356: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02A367 0A:A357: D5        .byte con_Y + $D5   ; 
- D 1 - I - 0x02A368 0A:A358: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02A369 0A:A359: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A36A 0A:A35A: 12        .byte con_X + $12   ; 

- D 1 - I - 0x02A36B 0A:A35B: E5        .byte con_Y + $E5   ; 
- D 1 - I - 0x02A36C 0A:A35C: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02A36D 0A:A35D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A36E 0A:A35E: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02A36F 0A:A35F: E5        .byte con_Y + $E5   ; 
- D 1 - I - 0x02A370 0A:A360: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02A371 0A:A361: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A372 0A:A362: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02A373 0A:A363: F5        .byte con_Y + $F5   ; 
- D 1 - I - 0x02A374 0A:A364: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02A375 0A:A365: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A376 0A:A366: F4        .byte con_X + $F4   ; 
@end:



_off008_A367_17:
- D 1 - I - 0x02A377 0A:A367: 12        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A378 0A:A368: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A379 0A:A369: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A37A 0A:A36A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A37B 0A:A36B: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A37C 0A:A36C: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A37D 0A:A36D: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A37E 0A:A36E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A37F 0A:A36F: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A380 0A:A370: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A381 0A:A371: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A382 0A:A372: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A383 0A:A373: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A384 0A:A374: C9        .byte con_Y + $C9   ; 
- D 1 - I - 0x02A385 0A:A375: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A386 0A:A376: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A387 0A:A377: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A388 0A:A378: D6        .byte con_Y + $D6   ; 
- D 1 - I - 0x02A389 0A:A379: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02A38A 0A:A37A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A38B 0A:A37B: E0        .byte con_X + $E0   ; 

- D 1 - I - 0x02A38C 0A:A37C: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A38D 0A:A37D: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02A38E 0A:A37E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A38F 0A:A37F: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02A390 0A:A380: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A391 0A:A381: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02A392 0A:A382: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A393 0A:A383: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A394 0A:A384: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A395 0A:A385: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02A396 0A:A386: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A397 0A:A387: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A398 0A:A388: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A399 0A:A389: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A39A 0A:A38A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A39B 0A:A38B: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A39C 0A:A38C: D9        .byte con_Y + $D9   ; 
- D 1 - I - 0x02A39D 0A:A38D: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02A39E 0A:A38E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A39F 0A:A38F: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A3A0 0A:A390: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A3A1 0A:A391: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02A3A2 0A:A392: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A3A3 0A:A393: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A3A4 0A:A394: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A3A5 0A:A395: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02A3A6 0A:A396: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A3A7 0A:A397: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A3A8 0A:A398: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A3A9 0A:A399: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02A3AA 0A:A39A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A3AB 0A:A39B: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A3AC 0A:A39C: F0        .byte con_Y + $F0   ; 
- D 1 - I - 0x02A3AD 0A:A39D: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02A3AE 0A:A39E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A3AF 0A:A39F: E9        .byte con_X + $E9   ; 

- D 1 - I - 0x02A3B0 0A:A3A0: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A3B1 0A:A3A1: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02A3B2 0A:A3A2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A3B3 0A:A3A3: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02A3B4 0A:A3A4: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A3B5 0A:A3A5: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02A3B6 0A:A3A6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A3B7 0A:A3A7: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02A3B8 0A:A3A8: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A3B9 0A:A3A9: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02A3BA 0A:A3AA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A3BB 0A:A3AB: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02A3BC 0A:A3AC: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A3BD 0A:A3AD: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02A3BE 0A:A3AE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A3BF 0A:A3AF: 09        .byte con_X + $09   ; 
@end:



_off008_A3B0_18:
- D 1 - I - 0x02A3C0 0A:A3B0: 15        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A3C1 0A:A3B1: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A3C2 0A:A3B2: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A3C3 0A:A3B3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A3C4 0A:A3B4: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A3C5 0A:A3B5: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A3C6 0A:A3B6: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A3C7 0A:A3B7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A3C8 0A:A3B8: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A3C9 0A:A3B9: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A3CA 0A:A3BA: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A3CB 0A:A3BB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A3CC 0A:A3BC: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A3CD 0A:A3BD: D6        .byte con_Y + $D6   ; 
- D 1 - I - 0x02A3CE 0A:A3BE: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02A3CF 0A:A3BF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A3D0 0A:A3C0: E0        .byte con_X + $E0   ; 

- D 1 - I - 0x02A3D1 0A:A3C1: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A3D2 0A:A3C2: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02A3D3 0A:A3C3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A3D4 0A:A3C4: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02A3D5 0A:A3C5: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A3D6 0A:A3C6: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02A3D7 0A:A3C7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A3D8 0A:A3C8: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A3D9 0A:A3C9: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A3DA 0A:A3CA: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02A3DB 0A:A3CB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A3DC 0A:A3CC: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A3DD 0A:A3CD: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A3DE 0A:A3CE: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A3DF 0A:A3CF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A3E0 0A:A3D0: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A3E1 0A:A3D1: C9        .byte con_Y + $C9   ; 
- D 1 - I - 0x02A3E2 0A:A3D2: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A3E3 0A:A3D3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A3E4 0A:A3D4: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A3E5 0A:A3D5: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A3E6 0A:A3D6: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02A3E7 0A:A3D7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A3E8 0A:A3D8: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A3E9 0A:A3D9: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A3EA 0A:A3DA: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02A3EB 0A:A3DB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A3EC 0A:A3DC: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A3ED 0A:A3DD: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A3EE 0A:A3DE: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02A3EF 0A:A3DF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A3F0 0A:A3E0: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A3F1 0A:A3E1: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A3F2 0A:A3E2: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A3F3 0A:A3E3: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A3F4 0A:A3E4: EC        .byte con_X + $EC   ; 

- D 1 - I - 0x02A3F5 0A:A3E5: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A3F6 0A:A3E6: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02A3F7 0A:A3E7: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A3F8 0A:A3E8: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02A3F9 0A:A3E9: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A3FA 0A:A3EA: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02A3FB 0A:A3EB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A3FC 0A:A3EC: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02A3FD 0A:A3ED: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A3FE 0A:A3EE: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02A3FF 0A:A3EF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A400 0A:A3F0: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02A401 0A:A3F1: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A402 0A:A3F2: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02A403 0A:A3F3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A404 0A:A3F4: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02A405 0A:A3F5: F3        .byte con_Y + $F3   ; 
- D 1 - I - 0x02A406 0A:A3F6: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02A407 0A:A3F7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A408 0A:A3F8: 14        .byte con_X + $14   ; 

- D 1 - I - 0x02A409 0A:A3F9: F3        .byte con_Y + $F3   ; 
- D 1 - I - 0x02A40A 0A:A3FA: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02A40B 0A:A3FB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A40C 0A:A3FC: 1C        .byte con_X + $1C   ; 

- D 1 - I - 0x02A40D 0A:A3FD: 01        .byte con_Y + $01   ; 
- D 1 - I - 0x02A40E 0A:A3FE: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02A40F 0A:A3FF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A410 0A:A400: ED        .byte con_X + $ED   ; 

- D 1 - I - 0x02A411 0A:A401: D9        .byte con_Y + $D9   ; 
- D 1 - I - 0x02A412 0A:A402: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02A413 0A:A403: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A414 0A:A404: 08        .byte con_X + $08   ; 
@end:



_off008_A405_19:
- D 1 - I - 0x02A415 0A:A405: 13        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A416 0A:A406: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A417 0A:A407: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A418 0A:A408: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A419 0A:A409: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02A41A 0A:A40A: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A41B 0A:A40B: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A41C 0A:A40C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A41D 0A:A40D: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02A41E 0A:A40E: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A41F 0A:A40F: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02A420 0A:A410: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A421 0A:A411: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02A422 0A:A412: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A423 0A:A413: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02A424 0A:A414: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A425 0A:A415: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02A426 0A:A416: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A427 0A:A417: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02A428 0A:A418: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A429 0A:A419: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02A42A 0A:A41A: CF        .byte con_Y + $CF   ; 
- D 1 - I - 0x02A42B 0A:A41B: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02A42C 0A:A41C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A42D 0A:A41D: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02A42E 0A:A41E: CF        .byte con_Y + $CF   ; 
- D 1 - I - 0x02A42F 0A:A41F: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02A430 0A:A420: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A431 0A:A421: 11        .byte con_X + $11   ; 

- D 1 - I - 0x02A432 0A:A422: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A433 0A:A423: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02A434 0A:A424: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A435 0A:A425: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02A436 0A:A426: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A437 0A:A427: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02A438 0A:A428: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A439 0A:A429: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02A43A 0A:A42A: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A43B 0A:A42B: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02A43C 0A:A42C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A43D 0A:A42D: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02A43E 0A:A42E: DF        .byte con_Y + $DF   ; 
- D 1 - I - 0x02A43F 0A:A42F: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02A440 0A:A430: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A441 0A:A431: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02A442 0A:A432: DF        .byte con_Y + $DF   ; 
- D 1 - I - 0x02A443 0A:A433: 35        .byte con_T + $35   ; 
- D 1 - I - 0x02A444 0A:A434: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A445 0A:A435: 11        .byte con_X + $11   ; 

- D 1 - I - 0x02A446 0A:A436: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A447 0A:A437: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02A448 0A:A438: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A449 0A:A439: EA        .byte con_X + $EA   ; 

- D 1 - I - 0x02A44A 0A:A43A: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A44B 0A:A43B: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02A44C 0A:A43C: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A44D 0A:A43D: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02A44E 0A:A43E: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A44F 0A:A43F: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02A450 0A:A440: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A451 0A:A441: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02A452 0A:A442: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A453 0A:A443: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02A454 0A:A444: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A455 0A:A445: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02A456 0A:A446: F2        .byte con_Y + $F2   ; 
- D 1 - I - 0x02A457 0A:A447: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02A458 0A:A448: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A459 0A:A449: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02A45A 0A:A44A: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02A45B 0A:A44B: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02A45C 0A:A44C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A45D 0A:A44D: 12        .byte con_X + $12   ; 

- D 1 - I - 0x02A45E 0A:A44E: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02A45F 0A:A44F: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02A460 0A:A450: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A461 0A:A451: 1A        .byte con_X + $1A   ; 
@end:



_off008_A452_1A:
- D 1 - I - 0x02A462 0A:A452: 15        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A463 0A:A453: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A464 0A:A454: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A465 0A:A455: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A466 0A:A456: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02A467 0A:A457: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A468 0A:A458: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A469 0A:A459: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A46A 0A:A45A: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02A46B 0A:A45B: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A46C 0A:A45C: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A46D 0A:A45D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A46E 0A:A45E: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02A46F 0A:A45F: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A470 0A:A460: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A471 0A:A461: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A472 0A:A462: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A473 0A:A463: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A474 0A:A464: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02A475 0A:A465: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A476 0A:A466: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A477 0A:A467: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A478 0A:A468: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02A479 0A:A469: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A47A 0A:A46A: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A47B 0A:A46B: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A47C 0A:A46C: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02A47D 0A:A46D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A47E 0A:A46E: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A47F 0A:A46F: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A480 0A:A470: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A481 0A:A471: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A482 0A:A472: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02A483 0A:A473: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A484 0A:A474: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A485 0A:A475: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A486 0A:A476: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A487 0A:A477: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A488 0A:A478: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02A489 0A:A479: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A48A 0A:A47A: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A48B 0A:A47B: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A48C 0A:A47C: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02A48D 0A:A47D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A48E 0A:A47E: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A48F 0A:A47F: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A490 0A:A480: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02A491 0A:A481: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A492 0A:A482: E6        .byte con_X + $E6   ; 

- D 1 - I - 0x02A493 0A:A483: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A494 0A:A484: 5F        .byte con_T + $5F   ; 
- D 1 - I - 0x02A495 0A:A485: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A496 0A:A486: EE        .byte con_X + $EE   ; 

- D 1 - I - 0x02A497 0A:A487: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A498 0A:A488: 61        .byte con_T + $61   ; 
- D 1 - I - 0x02A499 0A:A489: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A49A 0A:A48A: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02A49B 0A:A48B: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A49C 0A:A48C: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02A49D 0A:A48D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A49E 0A:A48E: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02A49F 0A:A48F: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A4A0 0A:A490: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A4A1 0A:A491: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A4A2 0A:A492: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02A4A3 0A:A493: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A4A4 0A:A494: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02A4A5 0A:A495: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A4A6 0A:A496: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A4A7 0A:A497: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A4A8 0A:A498: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02A4A9 0A:A499: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A4AA 0A:A49A: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A4AB 0A:A49B: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A4AC 0A:A49C: 63        .byte con_T + $63   ; 
- D 1 - I - 0x02A4AD 0A:A49D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A4AE 0A:A49E: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02A4AF 0A:A49F: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A4B0 0A:A4A0: 65        .byte con_T + $65   ; 
- D 1 - I - 0x02A4B1 0A:A4A1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A4B2 0A:A4A2: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02A4B3 0A:A4A3: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A4B4 0A:A4A4: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02A4B5 0A:A4A5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A4B6 0A:A4A6: F8        .byte con_X + $F8   ; 
@end:



_off008_A4A7_1B:
- D 1 - I - 0x02A4B7 0A:A4A7: 11        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A4B8 0A:A4A8: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A4B9 0A:A4A9: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A4BA 0A:A4AA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A4BB 0A:A4AB: ED        .byte con_X + $ED   ; 

- D 1 - I - 0x02A4BC 0A:A4AC: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A4BD 0A:A4AD: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A4BE 0A:A4AE: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A4BF 0A:A4AF: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02A4C0 0A:A4B0: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A4C1 0A:A4B1: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A4C2 0A:A4B2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A4C3 0A:A4B3: E4        .byte con_X + $E4   ; 

- D 1 - I - 0x02A4C4 0A:A4B4: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A4C5 0A:A4B5: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A4C6 0A:A4B6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A4C7 0A:A4B7: EC        .byte con_X + $EC   ; 

- D 1 - I - 0x02A4C8 0A:A4B8: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A4C9 0A:A4B9: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02A4CA 0A:A4BA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A4CB 0A:A4BB: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02A4CC 0A:A4BC: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A4CD 0A:A4BD: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02A4CE 0A:A4BE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A4CF 0A:A4BF: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02A4D0 0A:A4C0: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A4D1 0A:A4C1: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02A4D2 0A:A4C2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A4D3 0A:A4C3: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02A4D4 0A:A4C4: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A4D5 0A:A4C5: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A4D6 0A:A4C6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A4D7 0A:A4C7: E4        .byte con_X + $E4   ; 

- D 1 - I - 0x02A4D8 0A:A4C8: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A4D9 0A:A4C9: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A4DA 0A:A4CA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A4DB 0A:A4CB: EC        .byte con_X + $EC   ; 

- D 1 - I - 0x02A4DC 0A:A4CC: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A4DD 0A:A4CD: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02A4DE 0A:A4CE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A4DF 0A:A4CF: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02A4E0 0A:A4D0: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A4E1 0A:A4D1: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02A4E2 0A:A4D2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A4E3 0A:A4D3: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02A4E4 0A:A4D4: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A4E5 0A:A4D5: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02A4E6 0A:A4D6: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A4E7 0A:A4D7: E4        .byte con_X + $E4   ; 

- D 1 - I - 0x02A4E8 0A:A4D8: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A4E9 0A:A4D9: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02A4EA 0A:A4DA: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A4EB 0A:A4DB: EC        .byte con_X + $EC   ; 

- D 1 - I - 0x02A4EC 0A:A4DC: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A4ED 0A:A4DD: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02A4EE 0A:A4DE: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A4EF 0A:A4DF: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02A4F0 0A:A4E0: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A4F1 0A:A4E1: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02A4F2 0A:A4E2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A4F3 0A:A4E3: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02A4F4 0A:A4E4: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A4F5 0A:A4E5: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A4F6 0A:A4E6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A4F7 0A:A4E7: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02A4F8 0A:A4E8: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A4F9 0A:A4E9: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02A4FA 0A:A4EA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A4FB 0A:A4EB: F4        .byte con_X + $F4   ; 
@end:



_off008_A4EC_1C:
- D 1 - I - 0x02A4FC 0A:A4EC: 15        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A4FD 0A:A4ED: A1        .byte con_Y + $A1   ; 
- D 1 - I - 0x02A4FE 0A:A4EE: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A4FF 0A:A4EF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A500 0A:A4F0: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A501 0A:A4F1: A1        .byte con_Y + $A1   ; 
- D 1 - I - 0x02A502 0A:A4F2: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A503 0A:A4F3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A504 0A:A4F4: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A505 0A:A4F5: A1        .byte con_Y + $A1   ; 
- D 1 - I - 0x02A506 0A:A4F6: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A507 0A:A4F7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A508 0A:A4F8: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A509 0A:A4F9: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A50A 0A:A4FA: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02A50B 0A:A4FB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A50C 0A:A4FC: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A50D 0A:A4FD: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A50E 0A:A4FE: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02A50F 0A:A4FF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A510 0A:A500: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A511 0A:A501: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A512 0A:A502: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02A513 0A:A503: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A514 0A:A504: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A515 0A:A505: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A516 0A:A506: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A517 0A:A507: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A518 0A:A508: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A519 0A:A509: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A51A 0A:A50A: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A51B 0A:A50B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A51C 0A:A50C: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02A51D 0A:A50D: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A51E 0A:A50E: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02A51F 0A:A50F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A520 0A:A510: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A521 0A:A511: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A522 0A:A512: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02A523 0A:A513: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A524 0A:A514: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A525 0A:A515: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A526 0A:A516: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02A527 0A:A517: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A528 0A:A518: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A529 0A:A519: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A52A 0A:A51A: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02A52B 0A:A51B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A52C 0A:A51C: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A52D 0A:A51D: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A52E 0A:A51E: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02A52F 0A:A51F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A530 0A:A520: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02A531 0A:A521: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A532 0A:A522: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02A533 0A:A523: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A534 0A:A524: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A535 0A:A525: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A536 0A:A526: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02A537 0A:A527: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A538 0A:A528: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A539 0A:A529: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A53A 0A:A52A: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02A53B 0A:A52B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A53C 0A:A52C: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A53D 0A:A52D: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A53E 0A:A52E: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A53F 0A:A52F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A540 0A:A530: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A541 0A:A531: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A542 0A:A532: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02A543 0A:A533: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A544 0A:A534: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A545 0A:A535: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A546 0A:A536: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02A547 0A:A537: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A548 0A:A538: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A549 0A:A539: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A54A 0A:A53A: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02A54B 0A:A53B: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A54C 0A:A53C: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02A54D 0A:A53D: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A54E 0A:A53E: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02A54F 0A:A53F: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A550 0A:A540: 05        .byte con_X + $05   ; 
@end:



_off008_A541_1D:
- D 1 - I - 0x02A551 0A:A541: 12        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A552 0A:A542: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A553 0A:A543: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A554 0A:A544: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A555 0A:A545: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02A556 0A:A546: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A557 0A:A547: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A558 0A:A548: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A559 0A:A549: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02A55A 0A:A54A: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A55B 0A:A54B: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A55C 0A:A54C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A55D 0A:A54D: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02A55E 0A:A54E: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A55F 0A:A54F: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02A560 0A:A550: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A561 0A:A551: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02A562 0A:A552: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A563 0A:A553: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02A564 0A:A554: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A565 0A:A555: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02A566 0A:A556: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A567 0A:A557: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02A568 0A:A558: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A569 0A:A559: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02A56A 0A:A55A: C9        .byte con_Y + $C9   ; 
- D 1 - I - 0x02A56B 0A:A55B: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A56C 0A:A55C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A56D 0A:A55D: 13        .byte con_X + $13   ; 

- D 1 - I - 0x02A56E 0A:A55E: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A56F 0A:A55F: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02A570 0A:A560: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A571 0A:A561: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02A572 0A:A562: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A573 0A:A563: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02A574 0A:A564: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A575 0A:A565: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02A576 0A:A566: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A577 0A:A567: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02A578 0A:A568: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A579 0A:A569: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02A57A 0A:A56A: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A57B 0A:A56B: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02A57C 0A:A56C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A57D 0A:A56D: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02A57E 0A:A56E: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A57F 0A:A56F: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02A580 0A:A570: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A581 0A:A571: E9        .byte con_X + $E9   ; 

- D 1 - I - 0x02A582 0A:A572: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A583 0A:A573: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02A584 0A:A574: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A585 0A:A575: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02A586 0A:A576: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A587 0A:A577: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02A588 0A:A578: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A589 0A:A579: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02A58A 0A:A57A: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A58B 0A:A57B: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02A58C 0A:A57C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A58D 0A:A57D: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02A58E 0A:A57E: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A58F 0A:A57F: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02A590 0A:A580: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A591 0A:A581: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02A592 0A:A582: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A593 0A:A583: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A594 0A:A584: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A595 0A:A585: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02A596 0A:A586: D9        .byte con_Y + $D9   ; 
- D 1 - I - 0x02A597 0A:A587: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02A598 0A:A588: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A599 0A:A589: 13        .byte con_X + $13   ; 
@end:



_off008_A58A_1E:
- D 1 - I - 0x02A59A 0A:A58A: 14        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A59B 0A:A58B: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A59C 0A:A58C: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02A59D 0A:A58D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A59E 0A:A58E: EB        .byte con_X + $EB   ; 

- D 1 - I - 0x02A59F 0A:A58F: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A5A0 0A:A590: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02A5A1 0A:A591: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5A2 0A:A592: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02A5A3 0A:A593: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A5A4 0A:A594: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02A5A5 0A:A595: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5A6 0A:A596: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02A5A7 0A:A597: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A5A8 0A:A598: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A5A9 0A:A599: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5AA 0A:A59A: E3        .byte con_X + $E3   ; 

- D 1 - I - 0x02A5AB 0A:A59B: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A5AC 0A:A59C: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02A5AD 0A:A59D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5AE 0A:A59E: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02A5AF 0A:A59F: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A5B0 0A:A5A0: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02A5B1 0A:A5A1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5B2 0A:A5A2: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02A5B3 0A:A5A3: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A5B4 0A:A5A4: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A5B5 0A:A5A5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5B6 0A:A5A6: E3        .byte con_X + $E3   ; 

- D 1 - I - 0x02A5B7 0A:A5A7: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A5B8 0A:A5A8: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A5B9 0A:A5A9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5BA 0A:A5AA: EB        .byte con_X + $EB   ; 

- D 1 - I - 0x02A5BB 0A:A5AB: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A5BC 0A:A5AC: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02A5BD 0A:A5AD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5BE 0A:A5AE: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02A5BF 0A:A5AF: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A5C0 0A:A5B0: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02A5C1 0A:A5B1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5C2 0A:A5B2: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02A5C3 0A:A5B3: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A5C4 0A:A5B4: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02A5C5 0A:A5B5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5C6 0A:A5B6: E2        .byte con_X + $E2   ; 

- D 1 - I - 0x02A5C7 0A:A5B7: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A5C8 0A:A5B8: 5F        .byte con_T + $5F   ; 
- D 1 - I - 0x02A5C9 0A:A5B9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5CA 0A:A5BA: EA        .byte con_X + $EA   ; 

- D 1 - I - 0x02A5CB 0A:A5BB: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A5CC 0A:A5BC: 61        .byte con_T + $61   ; 
- D 1 - I - 0x02A5CD 0A:A5BD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5CE 0A:A5BE: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02A5CF 0A:A5BF: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A5D0 0A:A5C0: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02A5D1 0A:A5C1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5D2 0A:A5C2: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02A5D3 0A:A5C3: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A5D4 0A:A5C4: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A5D5 0A:A5C5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5D6 0A:A5C6: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02A5D7 0A:A5C7: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A5D8 0A:A5C8: 57        .byte con_T + $57   ; 
- D 1 - I - 0x02A5D9 0A:A5C9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5DA 0A:A5CA: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02A5DB 0A:A5CB: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A5DC 0A:A5CC: 59        .byte con_T + $59   ; 
- D 1 - I - 0x02A5DD 0A:A5CD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5DE 0A:A5CE: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02A5DF 0A:A5CF: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A5E0 0A:A5D0: 57        .byte con_T + $57   ; 
- D 1 - I - 0x02A5E1 0A:A5D1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5E2 0A:A5D2: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02A5E3 0A:A5D3: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A5E4 0A:A5D4: 59        .byte con_T + $59   ; 
- D 1 - I - 0x02A5E5 0A:A5D5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5E6 0A:A5D6: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02A5E7 0A:A5D7: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A5E8 0A:A5D8: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02A5E9 0A:A5D9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5EA 0A:A5DA: EB        .byte con_X + $EB   ; 
@end:



_off008_A5DB_1F:
- D 1 - I - 0x02A5EB 0A:A5DB: 15        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A5EC 0A:A5DC: AD        .byte con_Y + $AD   ; 
- D 1 - I - 0x02A5ED 0A:A5DD: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A5EE 0A:A5DE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5EF 0A:A5DF: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A5F0 0A:A5E0: AD        .byte con_Y + $AD   ; 
- D 1 - I - 0x02A5F1 0A:A5E1: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A5F2 0A:A5E2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5F3 0A:A5E3: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A5F4 0A:A5E4: BD        .byte con_Y + $BD   ; 
- D 1 - I - 0x02A5F5 0A:A5E5: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A5F6 0A:A5E6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5F7 0A:A5E7: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02A5F8 0A:A5E8: BD        .byte con_Y + $BD   ; 
- D 1 - I - 0x02A5F9 0A:A5E9: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02A5FA 0A:A5EA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5FB 0A:A5EB: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02A5FC 0A:A5EC: BD        .byte con_Y + $BD   ; 
- D 1 - I - 0x02A5FD 0A:A5ED: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02A5FE 0A:A5EE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A5FF 0A:A5EF: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02A600 0A:A5F0: BD        .byte con_Y + $BD   ; 
- D 1 - I - 0x02A601 0A:A5F1: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02A602 0A:A5F2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A603 0A:A5F3: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02A604 0A:A5F4: BE        .byte con_Y + $BE   ; 
- D 1 - I - 0x02A605 0A:A5F5: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02A606 0A:A5F6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A607 0A:A5F7: 11        .byte con_X + $11   ; 

- D 1 - I - 0x02A608 0A:A5F8: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02A609 0A:A5F9: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A60A 0A:A5FA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A60B 0A:A5FB: E9        .byte con_X + $E9   ; 

- D 1 - I - 0x02A60C 0A:A5FC: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02A60D 0A:A5FD: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02A60E 0A:A5FE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A60F 0A:A5FF: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02A610 0A:A600: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02A611 0A:A601: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02A612 0A:A602: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A613 0A:A603: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02A614 0A:A604: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02A615 0A:A605: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02A616 0A:A606: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A617 0A:A607: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02A618 0A:A608: DD        .byte con_Y + $DD   ; 
- D 1 - I - 0x02A619 0A:A609: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02A61A 0A:A60A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A61B 0A:A60B: E0        .byte con_X + $E0   ; 

- D 1 - I - 0x02A61C 0A:A60C: DD        .byte con_Y + $DD   ; 
- D 1 - I - 0x02A61D 0A:A60D: 5F        .byte con_T + $5F   ; 
- D 1 - I - 0x02A61E 0A:A60E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A61F 0A:A60F: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02A620 0A:A610: DD        .byte con_Y + $DD   ; 
- D 1 - I - 0x02A621 0A:A611: 61        .byte con_T + $61   ; 
- D 1 - I - 0x02A622 0A:A612: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A623 0A:A613: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A624 0A:A614: DD        .byte con_Y + $DD   ; 
- D 1 - I - 0x02A625 0A:A615: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02A626 0A:A616: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A627 0A:A617: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A628 0A:A618: DD        .byte con_Y + $DD   ; 
- D 1 - I - 0x02A629 0A:A619: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A62A 0A:A61A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A62B 0A:A61B: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A62C 0A:A61C: ED        .byte con_Y + $ED   ; 
- D 1 - I - 0x02A62D 0A:A61D: 57        .byte con_T + $57   ; 
- D 1 - I - 0x02A62E 0A:A61E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A62F 0A:A61F: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A630 0A:A620: ED        .byte con_Y + $ED   ; 
- D 1 - I - 0x02A631 0A:A621: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02A632 0A:A622: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A633 0A:A623: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A634 0A:A624: ED        .byte con_Y + $ED   ; 
- D 1 - I - 0x02A635 0A:A625: 57        .byte con_T + $57   ; 
- D 1 - I - 0x02A636 0A:A626: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A637 0A:A627: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A638 0A:A628: ED        .byte con_Y + $ED   ; 
- D 1 - I - 0x02A639 0A:A629: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02A63A 0A:A62A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A63B 0A:A62B: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A63C 0A:A62C: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02A63D 0A:A62D: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02A63E 0A:A62E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A63F 0A:A62F: 01        .byte con_X + $01   ; 
@end:



_off008_A630_20:
- D 1 - I - 0x02A640 0A:A630: 15        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A641 0A:A631: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A642 0A:A632: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A643 0A:A633: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A644 0A:A634: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A645 0A:A635: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A646 0A:A636: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A647 0A:A637: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A648 0A:A638: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A649 0A:A639: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A64A 0A:A63A: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A64B 0A:A63B: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A64C 0A:A63C: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02A64D 0A:A63D: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A64E 0A:A63E: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02A64F 0A:A63F: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A650 0A:A640: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02A651 0A:A641: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A652 0A:A642: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02A653 0A:A643: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A654 0A:A644: F7        .byte con_X + $F7   ; 

- D 1 - I - 0x02A655 0A:A645: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A656 0A:A646: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02A657 0A:A647: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A658 0A:A648: EF        .byte con_X + $EF   ; 

- D 1 - I - 0x02A659 0A:A649: E0        .byte con_Y + $E0   ; 
- D 1 - I - 0x02A65A 0A:A64A: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02A65B 0A:A64B: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A65C 0A:A64C: E7        .byte con_X + $E7   ; 

- D 1 - I - 0x02A65D 0A:A64D: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A65E 0A:A64E: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02A65F 0A:A64F: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A660 0A:A650: EF        .byte con_X + $EF   ; 

- D 1 - I - 0x02A661 0A:A651: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A662 0A:A652: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02A663 0A:A653: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A664 0A:A654: F7        .byte con_X + $F7   ; 

- D 1 - I - 0x02A665 0A:A655: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A666 0A:A656: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02A667 0A:A657: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A668 0A:A658: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02A669 0A:A659: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A66A 0A:A65A: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02A66B 0A:A65B: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A66C 0A:A65C: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02A66D 0A:A65D: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A66E 0A:A65E: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A66F 0A:A65F: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A670 0A:A660: 0F        .byte con_X + $0F   ; 

- D 1 - I - 0x02A671 0A:A661: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A672 0A:A662: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02A673 0A:A663: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A674 0A:A664: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02A675 0A:A665: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A676 0A:A666: 5F        .byte con_T + $5F   ; 
- D 1 - I - 0x02A677 0A:A667: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A678 0A:A668: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02A679 0A:A669: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A67A 0A:A66A: 61        .byte con_T + $61   ; 
- D 1 - I - 0x02A67B 0A:A66B: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A67C 0A:A66C: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A67D 0A:A66D: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A67E 0A:A66E: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02A67F 0A:A66F: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A680 0A:A670: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A681 0A:A671: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A682 0A:A672: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A683 0A:A673: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A684 0A:A674: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A685 0A:A675: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A686 0A:A676: 57        .byte con_T + $57   ; 
- D 1 - I - 0x02A687 0A:A677: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A688 0A:A678: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A689 0A:A679: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A68A 0A:A67A: 57        .byte con_T + $57   ; 
- D 1 - I - 0x02A68B 0A:A67B: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A68C 0A:A67C: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A68D 0A:A67D: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A68E 0A:A67E: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02A68F 0A:A67F: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A690 0A:A680: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A691 0A:A681: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A692 0A:A682: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02A693 0A:A683: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A694 0A:A684: F0        .byte con_X + $F0   ; 
@end:



_off008_A685_21:
- D 1 - I - 0x02A695 0A:A685: 11        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A696 0A:A686: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A697 0A:A687: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02A698 0A:A688: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A699 0A:A689: EB        .byte con_X + $EB   ; 

- D 1 - I - 0x02A69A 0A:A68A: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A69B 0A:A68B: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02A69C 0A:A68C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A69D 0A:A68D: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02A69E 0A:A68E: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A69F 0A:A68F: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02A6A0 0A:A690: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6A1 0A:A691: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02A6A2 0A:A692: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A6A3 0A:A693: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02A6A4 0A:A694: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6A5 0A:A695: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02A6A6 0A:A696: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A6A7 0A:A697: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02A6A8 0A:A698: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6A9 0A:A699: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02A6AA 0A:A69A: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A6AB 0A:A69B: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02A6AC 0A:A69C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6AD 0A:A69D: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A6AE 0A:A69E: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A6AF 0A:A69F: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02A6B0 0A:A6A0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6B1 0A:A6A1: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A6B2 0A:A6A2: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A6B3 0A:A6A3: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02A6B4 0A:A6A4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6B5 0A:A6A5: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A6B6 0A:A6A6: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A6B7 0A:A6A7: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02A6B8 0A:A6A8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6B9 0A:A6A9: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A6BA 0A:A6AA: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A6BB 0A:A6AB: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02A6BC 0A:A6AC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6BD 0A:A6AD: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02A6BE 0A:A6AE: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A6BF 0A:A6AF: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02A6C0 0A:A6B0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6C1 0A:A6B1: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02A6C2 0A:A6B2: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A6C3 0A:A6B3: 35        .byte con_T + $35   ; 
- D 1 - I - 0x02A6C4 0A:A6B4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6C5 0A:A6B5: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A6C6 0A:A6B6: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A6C7 0A:A6B7: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02A6C8 0A:A6B8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6C9 0A:A6B9: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A6CA 0A:A6BA: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A6CB 0A:A6BB: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02A6CC 0A:A6BC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6CD 0A:A6BD: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A6CE 0A:A6BE: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A6CF 0A:A6BF: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02A6D0 0A:A6C0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6D1 0A:A6C1: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02A6D2 0A:A6C2: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A6D3 0A:A6C3: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02A6D4 0A:A6C4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6D5 0A:A6C5: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A6D6 0A:A6C6: E9        .byte con_Y + $E9   ; 
- D 1 - I - 0x02A6D7 0A:A6C7: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02A6D8 0A:A6C8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6D9 0A:A6C9: 18        .byte con_X + $18   ; 
@end:



_off008_A6CA_22:
- D 1 - I - 0x02A6DA 0A:A6CA: 0E        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A6DB 0A:A6CB: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02A6DC 0A:A6CC: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A6DD 0A:A6CD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6DE 0A:A6CE: E0        .byte con_X + $E0   ; 

- D 1 - I - 0x02A6DF 0A:A6CF: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02A6E0 0A:A6D0: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A6E1 0A:A6D1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6E2 0A:A6D2: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02A6E3 0A:A6D3: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02A6E4 0A:A6D4: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A6E5 0A:A6D5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6E6 0A:A6D6: E0        .byte con_X + $E0   ; 

- D 1 - I - 0x02A6E7 0A:A6D7: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02A6E8 0A:A6D8: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02A6E9 0A:A6D9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6EA 0A:A6DA: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02A6EB 0A:A6DB: E9        .byte con_Y + $E9   ; 
- D 1 - I - 0x02A6EC 0A:A6DC: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02A6ED 0A:A6DD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6EE 0A:A6DE: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A6EF 0A:A6DF: E9        .byte con_Y + $E9   ; 
- D 1 - I - 0x02A6F0 0A:A6E0: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02A6F1 0A:A6E1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6F2 0A:A6E2: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A6F3 0A:A6E3: EB        .byte con_Y + $EB   ; 
- D 1 - I - 0x02A6F4 0A:A6E4: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A6F5 0A:A6E5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6F6 0A:A6E6: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A6F7 0A:A6E7: FB        .byte con_Y + $FB   ; 
- D 1 - I - 0x02A6F8 0A:A6E8: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02A6F9 0A:A6E9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6FA 0A:A6EA: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A6FB 0A:A6EB: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A6FC 0A:A6EC: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02A6FD 0A:A6ED: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A6FE 0A:A6EE: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A6FF 0A:A6EF: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A700 0A:A6F0: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02A701 0A:A6F1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A702 0A:A6F2: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02A703 0A:A6F3: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A704 0A:A6F4: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02A705 0A:A6F5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A706 0A:A6F6: 11        .byte con_X + $11   ; 

- D 1 - I - 0x02A707 0A:A6F7: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A708 0A:A6F8: 55        .byte con_T + $55   ; 
- D 1 - I - 0x02A709 0A:A6F9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A70A 0A:A6FA: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02A70B 0A:A6FB: F9        .byte con_Y + $F9   ; 
- D 1 - I - 0x02A70C 0A:A6FC: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A70D 0A:A6FD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A70E 0A:A6FE: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A70F 0A:A6FF: F9        .byte con_Y + $F9   ; 
- D 1 - I - 0x02A710 0A:A700: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02A711 0A:A701: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A712 0A:A702: F8        .byte con_X + $F8   ; 
@end:



_off008_A703_23:
- D 1 - I - 0x02A713 0A:A703: 11        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A714 0A:A704: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A715 0A:A705: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02A716 0A:A706: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A717 0A:A707: 15        .byte con_X + $15   ; 

- D 1 - I - 0x02A718 0A:A708: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A719 0A:A709: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02A71A 0A:A70A: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A71B 0A:A70B: 0D        .byte con_X + $0D   ; 

- D 1 - I - 0x02A71C 0A:A70C: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A71D 0A:A70D: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02A71E 0A:A70E: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A71F 0A:A70F: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02A720 0A:A710: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A721 0A:A711: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02A722 0A:A712: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A723 0A:A713: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02A724 0A:A714: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A725 0A:A715: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02A726 0A:A716: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A727 0A:A717: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02A728 0A:A718: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A729 0A:A719: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02A72A 0A:A71A: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A72B 0A:A71B: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02A72C 0A:A71C: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A72D 0A:A71D: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02A72E 0A:A71E: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A72F 0A:A71F: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A730 0A:A720: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A731 0A:A721: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02A732 0A:A722: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A733 0A:A723: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A734 0A:A724: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A735 0A:A725: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02A736 0A:A726: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A737 0A:A727: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A738 0A:A728: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A739 0A:A729: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02A73A 0A:A72A: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A73B 0A:A72B: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A73C 0A:A72C: C9        .byte con_Y + $C9   ; 
- D 1 - I - 0x02A73D 0A:A72D: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02A73E 0A:A72E: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A73F 0A:A72F: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02A740 0A:A730: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A741 0A:A731: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02A742 0A:A732: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A743 0A:A733: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02A744 0A:A734: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A745 0A:A735: 35        .byte con_T + $35   ; 
- D 1 - I - 0x02A746 0A:A736: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A747 0A:A737: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02A748 0A:A738: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A749 0A:A739: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02A74A 0A:A73A: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A74B 0A:A73B: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A74C 0A:A73C: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A74D 0A:A73D: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02A74E 0A:A73E: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A74F 0A:A73F: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A750 0A:A740: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A751 0A:A741: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02A752 0A:A742: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A753 0A:A743: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A754 0A:A744: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A755 0A:A745: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02A756 0A:A746: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02A757 0A:A747: 00        .byte con_X + $00   ; 
@end:



_off008_A748_24:
- - - - - - 0x02A758 0A:A748: 10        .byte (@end - * - 1) / 4

- - - - - - 0x02A759 0A:A749: C1        .byte con_Y + $C1   ; 
- - - - - - 0x02A75A 0A:A74A: 17        .byte con_T + $17   ; 
- - - - - - 0x02A75B 0A:A74B: 00        .byte con_A + $00   ; 
- - - - - - 0x02A75C 0A:A74C: F0        .byte con_X + $F0   ; 

- - - - - - 0x02A75D 0A:A74D: C1        .byte con_Y + $C1   ; 
- - - - - - 0x02A75E 0A:A74E: 19        .byte con_T + $19   ; 
- - - - - - 0x02A75F 0A:A74F: 00        .byte con_A + $00   ; 
- - - - - - 0x02A760 0A:A750: F8        .byte con_X + $F8   ; 

- - - - - - 0x02A761 0A:A751: C1        .byte con_Y + $C1   ; 
- - - - - - 0x02A762 0A:A752: 1B        .byte con_T + $1B   ; 
- - - - - - 0x02A763 0A:A753: 00        .byte con_A + $00   ; 
- - - - - - 0x02A764 0A:A754: 00        .byte con_X + $00   ; 

- - - - - - 0x02A765 0A:A755: D1        .byte con_Y + $D1   ; 
- - - - - - 0x02A766 0A:A756: 03        .byte con_T + $03   ; 
- - - - - - 0x02A767 0A:A757: 00        .byte con_A + $00   ; 
- - - - - - 0x02A768 0A:A758: E8        .byte con_X + $E8   ; 

- - - - - - 0x02A769 0A:A759: D1        .byte con_Y + $D1   ; 
- - - - - - 0x02A76A 0A:A75A: 1D        .byte con_T + $1D   ; 
- - - - - - 0x02A76B 0A:A75B: 00        .byte con_A + $00   ; 
- - - - - - 0x02A76C 0A:A75C: F0        .byte con_X + $F0   ; 

- - - - - - 0x02A76D 0A:A75D: D1        .byte con_Y + $D1   ; 
- - - - - - 0x02A76E 0A:A75E: 1F        .byte con_T + $1F   ; 
- - - - - - 0x02A76F 0A:A75F: 00        .byte con_A + $00   ; 
- - - - - - 0x02A770 0A:A760: F8        .byte con_X + $F8   ; 

- - - - - - 0x02A771 0A:A761: D1        .byte con_Y + $D1   ; 
- - - - - - 0x02A772 0A:A762: 21        .byte con_T + $21   ; 
- - - - - - 0x02A773 0A:A763: 00        .byte con_A + $00   ; 
- - - - - - 0x02A774 0A:A764: 00        .byte con_X + $00   ; 

- - - - - - 0x02A775 0A:A765: E1        .byte con_Y + $E1   ; 
- - - - - - 0x02A776 0A:A766: 0D        .byte con_T + $0D   ; 
- - - - - - 0x02A777 0A:A767: 00        .byte con_A + $00   ; 
- - - - - - 0x02A778 0A:A768: E8        .byte con_X + $E8   ; 

- - - - - - 0x02A779 0A:A769: E1        .byte con_Y + $E1   ; 
- - - - - - 0x02A77A 0A:A76A: 0F        .byte con_T + $0F   ; 
- - - - - - 0x02A77B 0A:A76B: 00        .byte con_A + $00   ; 
- - - - - - 0x02A77C 0A:A76C: F0        .byte con_X + $F0   ; 

- - - - - - 0x02A77D 0A:A76D: E1        .byte con_Y + $E1   ; 
- - - - - - 0x02A77E 0A:A76E: 23        .byte con_T + $23   ; 
- - - - - - 0x02A77F 0A:A76F: 00        .byte con_A + $00   ; 
- - - - - - 0x02A780 0A:A770: F8        .byte con_X + $F8   ; 

- - - - - - 0x02A781 0A:A771: E1        .byte con_Y + $E1   ; 
- - - - - - 0x02A782 0A:A772: 25        .byte con_T + $25   ; 
- - - - - - 0x02A783 0A:A773: 00        .byte con_A + $00   ; 
- - - - - - 0x02A784 0A:A774: 00        .byte con_X + $00   ; 

- - - - - - 0x02A785 0A:A775: F1        .byte con_Y + $F1   ; 
- - - - - - 0x02A786 0A:A776: 51        .byte con_T + $51   ; 
- - - - - - 0x02A787 0A:A777: 40        .byte con_A + $40   ; 
- - - - - - 0x02A788 0A:A778: E5        .byte con_X + $E5   ; 

- - - - - - 0x02A789 0A:A779: F1        .byte con_Y + $F1   ; 
- - - - - - 0x02A78A 0A:A77A: 45        .byte con_T + $45   ; 
- - - - - - 0x02A78B 0A:A77B: 40        .byte con_A + $40   ; 
- - - - - - 0x02A78C 0A:A77C: ED        .byte con_X + $ED   ; 

- - - - - - 0x02A78D 0A:A77D: F1        .byte con_Y + $F1   ; 
- - - - - - 0x02A78E 0A:A77E: 4D        .byte con_T + $4D   ; 
- - - - - - 0x02A78F 0A:A77F: 40        .byte con_A + $40   ; 
- - - - - - 0x02A790 0A:A780: F5        .byte con_X + $F5   ; 

- - - - - - 0x02A791 0A:A781: F1        .byte con_Y + $F1   ; 
- - - - - - 0x02A792 0A:A782: 5B        .byte con_T + $5B   ; 
- - - - - - 0x02A793 0A:A783: 00        .byte con_A + $00   ; 
- - - - - - 0x02A794 0A:A784: FD        .byte con_X + $FD   ; 

- - - - - - 0x02A795 0A:A785: F1        .byte con_Y + $F1   ; 
- - - - - - 0x02A796 0A:A786: 4B        .byte con_T + $4B   ; 
- - - - - - 0x02A797 0A:A787: 00        .byte con_A + $00   ; 
- - - - - - 0x02A798 0A:A788: 05        .byte con_X + $05   ; 
@end:



_off008_A789_25:
- D 1 - I - 0x02A799 0A:A789: 11        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A79A 0A:A78A: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A79B 0A:A78B: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A79C 0A:A78C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A79D 0A:A78D: 0E        .byte con_X + $0E   ; 

- D 1 - I - 0x02A79E 0A:A78E: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A79F 0A:A78F: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A7A0 0A:A790: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A7A1 0A:A791: 16        .byte con_X + $16   ; 

- D 1 - I - 0x02A7A2 0A:A792: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A7A3 0A:A793: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A7A4 0A:A794: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A7A5 0A:A795: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02A7A6 0A:A796: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A7A7 0A:A797: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02A7A8 0A:A798: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A7A9 0A:A799: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02A7AA 0A:A79A: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A7AB 0A:A79B: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02A7AC 0A:A79C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A7AD 0A:A79D: 0F        .byte con_X + $0F   ; 

- D 1 - I - 0x02A7AE 0A:A79E: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A7AF 0A:A79F: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02A7B0 0A:A7A0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A7B1 0A:A7A1: 17        .byte con_X + $17   ; 

- D 1 - I - 0x02A7B2 0A:A7A2: D2        .byte con_Y + $D2   ; 
- D 1 - I - 0x02A7B3 0A:A7A3: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02A7B4 0A:A7A4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A7B5 0A:A7A5: 1F        .byte con_X + $1F   ; 

- D 1 - I - 0x02A7B6 0A:A7A6: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A7B7 0A:A7A7: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A7B8 0A:A7A8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A7B9 0A:A7A9: F7        .byte con_X + $F7   ; 

- D 1 - I - 0x02A7BA 0A:A7AA: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A7BB 0A:A7AB: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02A7BC 0A:A7AC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A7BD 0A:A7AD: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02A7BE 0A:A7AE: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A7BF 0A:A7AF: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02A7C0 0A:A7B0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A7C1 0A:A7B1: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02A7C2 0A:A7B2: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A7C3 0A:A7B3: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02A7C4 0A:A7B4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A7C5 0A:A7B5: 0F        .byte con_X + $0F   ; 

- D 1 - I - 0x02A7C6 0A:A7B6: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A7C7 0A:A7B7: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02A7C8 0A:A7B8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A7C9 0A:A7B9: 17        .byte con_X + $17   ; 

- D 1 - I - 0x02A7CA 0A:A7BA: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A7CB 0A:A7BB: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02A7CC 0A:A7BC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A7CD 0A:A7BD: EA        .byte con_X + $EA   ; 

- D 1 - I - 0x02A7CE 0A:A7BE: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A7CF 0A:A7BF: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02A7D0 0A:A7C0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A7D1 0A:A7C1: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02A7D2 0A:A7C2: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A7D3 0A:A7C3: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02A7D4 0A:A7C4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A7D5 0A:A7C5: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02A7D6 0A:A7C6: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A7D7 0A:A7C7: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02A7D8 0A:A7C8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A7D9 0A:A7C9: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02A7DA 0A:A7CA: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A7DB 0A:A7CB: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02A7DC 0A:A7CC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A7DD 0A:A7CD: 0A        .byte con_X + $0A   ; 
@end:



_off008_A7CE_26:
- - - - - - 0x02A7DE 0A:A7CE: 01        .byte (@end - * - 1) / 4

- - - - - - 0x02A7DF 0A:A7CF: FE        .byte con_Y + $FE   ; 
- - - - - - 0x02A7E0 0A:A7D0: 27        .byte con_T + $27   ; 
- - - - - - 0x02A7E1 0A:A7D1: 02        .byte con_A + $02   ; 
- - - - - - 0x02A7E2 0A:A7D2: FD        .byte con_X + $FD   ; 
@end:



_off008_A7D3_27:
- - - - - - 0x02A7E3 0A:A7D3: 02        .byte (@end - * - 1) / 4

- - - - - - 0x02A7E4 0A:A7D4: FE        .byte con_Y + $FE   ; 
- - - - - - 0x02A7E5 0A:A7D5: 29        .byte con_T + $29   ; 
- - - - - - 0x02A7E6 0A:A7D6: 02        .byte con_A + $02   ; 
- - - - - - 0x02A7E7 0A:A7D7: F9        .byte con_X + $F9   ; 

- - - - - - 0x02A7E8 0A:A7D8: FE        .byte con_Y + $FE   ; 
- - - - - - 0x02A7E9 0A:A7D9: 29        .byte con_T + $29   ; 
- - - - - - 0x02A7EA 0A:A7DA: 42        .byte con_A + $42   ; 
- - - - - - 0x02A7EB 0A:A7DB: 01        .byte con_X + $01   ; 
@end:



_off008_A7DC_28:
- - - - - - 0x02A7EC 0A:A7DC: 02        .byte (@end - * - 1) / 4

- - - - - - 0x02A7ED 0A:A7DD: FE        .byte con_Y + $FE   ; 
- - - - - - 0x02A7EE 0A:A7DE: 2B        .byte con_T + $2B   ; 
- - - - - - 0x02A7EF 0A:A7DF: 02        .byte con_A + $02   ; 
- - - - - - 0x02A7F0 0A:A7E0: F9        .byte con_X + $F9   ; 

- - - - - - 0x02A7F1 0A:A7E1: FE        .byte con_Y + $FE   ; 
- - - - - - 0x02A7F2 0A:A7E2: 2B        .byte con_T + $2B   ; 
- - - - - - 0x02A7F3 0A:A7E3: 42        .byte con_A + $42   ; 
- - - - - - 0x02A7F4 0A:A7E4: 01        .byte con_X + $01   ; 
@end:



_off008_A7E5_29:
- - - - - - 0x02A7F5 0A:A7E5: 02        .byte (@end - * - 1) / 4

- - - - - - 0x02A7F6 0A:A7E6: FE        .byte con_Y + $FE   ; 
- - - - - - 0x02A7F7 0A:A7E7: 2D        .byte con_T + $2D   ; 
- - - - - - 0x02A7F8 0A:A7E8: 02        .byte con_A + $02   ; 
- - - - - - 0x02A7F9 0A:A7E9: F9        .byte con_X + $F9   ; 

- - - - - - 0x02A7FA 0A:A7EA: FE        .byte con_Y + $FE   ; 
- - - - - - 0x02A7FB 0A:A7EB: 2D        .byte con_T + $2D   ; 
- - - - - - 0x02A7FC 0A:A7EC: 42        .byte con_A + $42   ; 
- - - - - - 0x02A7FD 0A:A7ED: 01        .byte con_X + $01   ; 
@end:



_off008_A7EE_2A:
- D 1 - I - 0x02A7FE 0A:A7EE: 01        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A7FF 0A:A7EF: E9        .byte con_Y + $E9   ; 
- D 1 - I - 0x02A800 0A:A7F0: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02A801 0A:A7F1: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02A802 0A:A7F2: F1        .byte con_X + $F1   ; 
@end:



_off008_A7F3_2B:
- D 1 - I - 0x02A803 0A:A7F3: 02        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A804 0A:A7F4: E9        .byte con_Y + $E9   ; 
- D 1 - I - 0x02A805 0A:A7F5: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02A806 0A:A7F6: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02A807 0A:A7F7: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02A808 0A:A7F8: EC        .byte con_Y + $EC   ; 
- D 1 - I - 0x02A809 0A:A7F9: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02A80A 0A:A7FA: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02A80B 0A:A7FB: F9        .byte con_X + $F9   ; 
@end:



_off008_A7FC_2C:
- D 1 - I - 0x02A80C 0A:A7FC: 06        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A80D 0A:A7FD: E9        .byte con_Y + $E9   ; 
- D 1 - I - 0x02A80E 0A:A7FE: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02A80F 0A:A7FF: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02A810 0A:A800: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02A811 0A:A801: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A812 0A:A802: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02A813 0A:A803: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02A814 0A:A804: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02A815 0A:A805: F7        .byte con_Y + $F7   ; 
- D 1 - I - 0x02A816 0A:A806: 35        .byte con_T + $35   ; 
- D 1 - I - 0x02A817 0A:A807: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02A818 0A:A808: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02A819 0A:A809: EB        .byte con_Y + $EB   ; 
- D 1 - I - 0x02A81A 0A:A80A: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02A81B 0A:A80B: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02A81C 0A:A80C: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02A81D 0A:A80D: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02A81E 0A:A80E: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02A81F 0A:A80F: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02A820 0A:A810: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02A821 0A:A811: FC        .byte con_Y + $FC   ; 
- D 1 - I - 0x02A822 0A:A812: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02A823 0A:A813: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02A824 0A:A814: 09        .byte con_X + $09   ; 
@end:



_off008_A815_2D:
- D 1 - I - 0x02A825 0A:A815: 05        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A826 0A:A816: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A827 0A:A817: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02A828 0A:A818: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02A829 0A:A819: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02A82A 0A:A81A: F9        .byte con_Y + $F9   ; 
- D 1 - I - 0x02A82B 0A:A81B: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02A82C 0A:A81C: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02A82D 0A:A81D: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02A82E 0A:A81E: FD        .byte con_Y + $FD   ; 
- D 1 - I - 0x02A82F 0A:A81F: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02A830 0A:A820: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02A831 0A:A821: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02A832 0A:A822: E5        .byte con_Y + $E5   ; 
- D 1 - I - 0x02A833 0A:A823: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02A834 0A:A824: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02A835 0A:A825: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02A836 0A:A826: EE        .byte con_Y + $EE   ; 
- D 1 - I - 0x02A837 0A:A827: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02A838 0A:A828: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02A839 0A:A829: 09        .byte con_X + $09   ; 
@end:



_off008_A82A_2E:
- D 1 - I - 0x02A83A 0A:A82A: 01        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A83B 0A:A82B: 01        .byte con_Y + $01   ; 
- D 1 - I - 0x02A83C 0A:A82C: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02A83D 0A:A82D: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02A83E 0A:A82E: 0B        .byte con_X + $0B   ; 
@end:



_off008_A82F_2F:
- D 1 - I - 0x02A83F 0A:A82F: 15        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A840 0A:A830: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A841 0A:A831: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A842 0A:A832: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A843 0A:A833: 14        .byte con_X + $14   ; 

- D 1 - I - 0x02A844 0A:A834: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A845 0A:A835: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A846 0A:A836: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A847 0A:A837: 1C        .byte con_X + $1C   ; 

- D 1 - I - 0x02A848 0A:A838: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A849 0A:A839: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A84A 0A:A83A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A84B 0A:A83B: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02A84C 0A:A83C: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A84D 0A:A83D: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02A84E 0A:A83E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A84F 0A:A83F: 0D        .byte con_X + $0D   ; 

- D 1 - I - 0x02A850 0A:A840: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A851 0A:A841: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02A852 0A:A842: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A853 0A:A843: 15        .byte con_X + $15   ; 

- D 1 - I - 0x02A854 0A:A844: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A855 0A:A845: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02A856 0A:A846: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A857 0A:A847: 1D        .byte con_X + $1D   ; 

- D 1 - I - 0x02A858 0A:A848: C2        .byte con_Y + $C2   ; 
- D 1 - I - 0x02A859 0A:A849: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02A85A 0A:A84A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A85B 0A:A84B: 25        .byte con_X + $25   ; 

- D 1 - I - 0x02A85C 0A:A84C: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A85D 0A:A84D: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A85E 0A:A84E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A85F 0A:A84F: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02A860 0A:A850: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A861 0A:A851: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02A862 0A:A852: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A863 0A:A853: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02A864 0A:A854: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A865 0A:A855: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02A866 0A:A856: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A867 0A:A857: 0D        .byte con_X + $0D   ; 

- D 1 - I - 0x02A868 0A:A858: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A869 0A:A859: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02A86A 0A:A85A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A86B 0A:A85B: 15        .byte con_X + $15   ; 

- D 1 - I - 0x02A86C 0A:A85C: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A86D 0A:A85D: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02A86E 0A:A85E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A86F 0A:A85F: 1D        .byte con_X + $1D   ; 

- D 1 - I - 0x02A870 0A:A860: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A871 0A:A861: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A872 0A:A862: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A873 0A:A863: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02A874 0A:A864: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A875 0A:A865: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02A876 0A:A866: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A877 0A:A867: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02A878 0A:A868: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A879 0A:A869: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02A87A 0A:A86A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A87B 0A:A86B: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02A87C 0A:A86C: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A87D 0A:A86D: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02A87E 0A:A86E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A87F 0A:A86F: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02A880 0A:A870: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A881 0A:A871: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A882 0A:A872: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A883 0A:A873: 13        .byte con_X + $13   ; 

- D 1 - I - 0x02A884 0A:A874: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A885 0A:A875: 59        .byte con_T + $59   ; 
- D 1 - I - 0x02A886 0A:A876: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A887 0A:A877: EA        .byte con_X + $EA   ; 

- D 1 - I - 0x02A888 0A:A878: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A889 0A:A879: 57        .byte con_T + $57   ; 
- D 1 - I - 0x02A88A 0A:A87A: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A88B 0A:A87B: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02A88C 0A:A87C: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A88D 0A:A87D: 53        .byte con_T + $53   ; 
- D 1 - I - 0x02A88E 0A:A87E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A88F 0A:A87F: 0E        .byte con_X + $0E   ; 

- D 1 - I - 0x02A890 0A:A880: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A891 0A:A881: 55        .byte con_T + $55   ; 
- D 1 - I - 0x02A892 0A:A882: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A893 0A:A883: 16        .byte con_X + $16   ; 
@end:



_off008_A884_30:
- D 1 - I - 0x02A894 0A:A884: 14        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A895 0A:A885: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A896 0A:A886: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02A897 0A:A887: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A898 0A:A888: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02A899 0A:A889: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A89A 0A:A88A: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02A89B 0A:A88B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A89C 0A:A88C: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02A89D 0A:A88D: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A89E 0A:A88E: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02A89F 0A:A88F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A8A0 0A:A890: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02A8A1 0A:A891: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A8A2 0A:A892: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A8A3 0A:A893: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A8A4 0A:A894: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02A8A5 0A:A895: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A8A6 0A:A896: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02A8A7 0A:A897: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A8A8 0A:A898: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02A8A9 0A:A899: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A8AA 0A:A89A: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02A8AB 0A:A89B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A8AC 0A:A89C: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02A8AD 0A:A89D: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A8AE 0A:A89E: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02A8AF 0A:A89F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A8B0 0A:A8A0: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02A8B1 0A:A8A1: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A8B2 0A:A8A2: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A8B3 0A:A8A3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A8B4 0A:A8A4: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02A8B5 0A:A8A5: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A8B6 0A:A8A6: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A8B7 0A:A8A7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A8B8 0A:A8A8: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02A8B9 0A:A8A9: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A8BA 0A:A8AA: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02A8BB 0A:A8AB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A8BC 0A:A8AC: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02A8BD 0A:A8AD: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A8BE 0A:A8AE: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02A8BF 0A:A8AF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A8C0 0A:A8B0: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02A8C1 0A:A8B1: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A8C2 0A:A8B2: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A8C3 0A:A8B3: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A8C4 0A:A8B4: ED        .byte con_X + $ED   ; 

- D 1 - I - 0x02A8C5 0A:A8B5: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A8C6 0A:A8B6: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02A8C7 0A:A8B7: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A8C8 0A:A8B8: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02A8C9 0A:A8B9: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A8CA 0A:A8BA: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02A8CB 0A:A8BB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A8CC 0A:A8BC: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02A8CD 0A:A8BD: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A8CE 0A:A8BE: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02A8CF 0A:A8BF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A8D0 0A:A8C0: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02A8D1 0A:A8C1: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A8D2 0A:A8C2: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A8D3 0A:A8C3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A8D4 0A:A8C4: 0D        .byte con_X + $0D   ; 

- D 1 - I - 0x02A8D5 0A:A8C5: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A8D6 0A:A8C6: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02A8D7 0A:A8C7: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A8D8 0A:A8C8: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02A8D9 0A:A8C9: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A8DA 0A:A8CA: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02A8DB 0A:A8CB: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A8DC 0A:A8CC: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A8DD 0A:A8CD: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A8DE 0A:A8CE: 53        .byte con_T + $53   ; 
- D 1 - I - 0x02A8DF 0A:A8CF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A8E0 0A:A8D0: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02A8E1 0A:A8D1: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A8E2 0A:A8D2: 55        .byte con_T + $55   ; 
- D 1 - I - 0x02A8E3 0A:A8D3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A8E4 0A:A8D4: 11        .byte con_X + $11   ; 
@end:



_off008_A8D5_31:
- D 1 - I - 0x02A8E5 0A:A8D5: 14        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A8E6 0A:A8D6: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A8E7 0A:A8D7: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02A8E8 0A:A8D8: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A8E9 0A:A8D9: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02A8EA 0A:A8DA: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A8EB 0A:A8DB: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02A8EC 0A:A8DC: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A8ED 0A:A8DD: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02A8EE 0A:A8DE: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02A8EF 0A:A8DF: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02A8F0 0A:A8E0: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A8F1 0A:A8E1: EA        .byte con_X + $EA   ; 

- D 1 - I - 0x02A8F2 0A:A8E2: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A8F3 0A:A8E3: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A8F4 0A:A8E4: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A8F5 0A:A8E5: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02A8F6 0A:A8E6: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A8F7 0A:A8E7: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02A8F8 0A:A8E8: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A8F9 0A:A8E9: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02A8FA 0A:A8EA: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A8FB 0A:A8EB: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02A8FC 0A:A8EC: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A8FD 0A:A8ED: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02A8FE 0A:A8EE: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A8FF 0A:A8EF: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02A900 0A:A8F0: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A901 0A:A8F1: EB        .byte con_X + $EB   ; 

- D 1 - I - 0x02A902 0A:A8F2: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A903 0A:A8F3: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A904 0A:A8F4: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A905 0A:A8F5: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02A906 0A:A8F6: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A907 0A:A8F7: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A908 0A:A8F8: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A909 0A:A8F9: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02A90A 0A:A8FA: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A90B 0A:A8FB: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02A90C 0A:A8FC: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A90D 0A:A8FD: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02A90E 0A:A8FE: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A90F 0A:A8FF: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02A910 0A:A900: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A911 0A:A901: EC        .byte con_X + $EC   ; 

- D 1 - I - 0x02A912 0A:A902: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A913 0A:A903: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A914 0A:A904: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A915 0A:A905: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02A916 0A:A906: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A917 0A:A907: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02A918 0A:A908: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A919 0A:A909: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02A91A 0A:A90A: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A91B 0A:A90B: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02A91C 0A:A90C: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A91D 0A:A90D: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02A91E 0A:A90E: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A91F 0A:A90F: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02A920 0A:A910: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A921 0A:A911: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02A922 0A:A912: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A923 0A:A913: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A924 0A:A914: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A925 0A:A915: EB        .byte con_X + $EB   ; 

- D 1 - I - 0x02A926 0A:A916: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A927 0A:A917: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02A928 0A:A918: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A929 0A:A919: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02A92A 0A:A91A: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A92B 0A:A91B: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02A92C 0A:A91C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A92D 0A:A91D: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A92E 0A:A91E: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A92F 0A:A91F: 53        .byte con_T + $53   ; 
- D 1 - I - 0x02A930 0A:A920: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A931 0A:A921: EF        .byte con_X + $EF   ; 

- D 1 - I - 0x02A932 0A:A922: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A933 0A:A923: 55        .byte con_T + $55   ; 
- D 1 - I - 0x02A934 0A:A924: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A935 0A:A925: E7        .byte con_X + $E7   ; 
@end:



_off008_A926_32:
- D 1 - I - 0x02A936 0A:A926: 12        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A937 0A:A927: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A938 0A:A928: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02A939 0A:A929: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A93A 0A:A92A: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02A93B 0A:A92B: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A93C 0A:A92C: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02A93D 0A:A92D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A93E 0A:A92E: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02A93F 0A:A92F: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A940 0A:A930: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02A941 0A:A931: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A942 0A:A932: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02A943 0A:A933: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A944 0A:A934: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02A945 0A:A935: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A946 0A:A936: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02A947 0A:A937: D5        .byte con_Y + $D5   ; 
- D 1 - I - 0x02A948 0A:A938: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02A949 0A:A939: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A94A 0A:A93A: E9        .byte con_X + $E9   ; 

- D 1 - I - 0x02A94B 0A:A93B: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A94C 0A:A93C: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02A94D 0A:A93D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A94E 0A:A93E: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02A94F 0A:A93F: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A950 0A:A940: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02A951 0A:A941: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A952 0A:A942: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02A953 0A:A943: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A954 0A:A944: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02A955 0A:A945: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A956 0A:A946: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02A957 0A:A947: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A958 0A:A948: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02A959 0A:A949: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A95A 0A:A94A: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02A95B 0A:A94B: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A95C 0A:A94C: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02A95D 0A:A94D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A95E 0A:A94E: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02A95F 0A:A94F: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A960 0A:A950: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02A961 0A:A951: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A962 0A:A952: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02A963 0A:A953: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A964 0A:A954: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02A965 0A:A955: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A966 0A:A956: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02A967 0A:A957: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A968 0A:A958: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02A969 0A:A959: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A96A 0A:A95A: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02A96B 0A:A95B: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A96C 0A:A95C: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A96D 0A:A95D: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A96E 0A:A95E: ED        .byte con_X + $ED   ; 

- D 1 - I - 0x02A96F 0A:A95F: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A970 0A:A960: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02A971 0A:A961: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02A972 0A:A962: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02A973 0A:A963: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A974 0A:A964: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02A975 0A:A965: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A976 0A:A966: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02A977 0A:A967: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A978 0A:A968: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02A979 0A:A969: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A97A 0A:A96A: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02A97B 0A:A96B: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A97C 0A:A96C: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02A97D 0A:A96D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A97E 0A:A96E: 0D        .byte con_X + $0D   ; 
@end:



_off008_A96F_33:
- D 1 - I - 0x02A97F 0A:A96F: 14        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A980 0A:A970: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A981 0A:A971: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02A982 0A:A972: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A983 0A:A973: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A984 0A:A974: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A985 0A:A975: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02A986 0A:A976: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A987 0A:A977: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A988 0A:A978: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A989 0A:A979: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02A98A 0A:A97A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A98B 0A:A97B: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02A98C 0A:A97C: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A98D 0A:A97D: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A98E 0A:A97E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A98F 0A:A97F: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02A990 0A:A980: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02A991 0A:A981: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A992 0A:A982: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A993 0A:A983: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02A994 0A:A984: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A995 0A:A985: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02A996 0A:A986: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A997 0A:A987: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02A998 0A:A988: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A999 0A:A989: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02A99A 0A:A98A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A99B 0A:A98B: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02A99C 0A:A98C: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A99D 0A:A98D: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02A99E 0A:A98E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A99F 0A:A98F: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02A9A0 0A:A990: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A9A1 0A:A991: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02A9A2 0A:A992: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9A3 0A:A993: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02A9A4 0A:A994: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A9A5 0A:A995: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02A9A6 0A:A996: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9A7 0A:A997: 14        .byte con_X + $14   ; 

- D 1 - I - 0x02A9A8 0A:A998: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02A9A9 0A:A999: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02A9AA 0A:A99A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9AB 0A:A99B: 1C        .byte con_X + $1C   ; 

- D 1 - I - 0x02A9AC 0A:A99C: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A9AD 0A:A99D: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02A9AE 0A:A99E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9AF 0A:A99F: E9        .byte con_X + $E9   ; 

- D 1 - I - 0x02A9B0 0A:A9A0: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A9B1 0A:A9A1: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02A9B2 0A:A9A2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9B3 0A:A9A3: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02A9B4 0A:A9A4: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A9B5 0A:A9A5: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02A9B6 0A:A9A6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9B7 0A:A9A7: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02A9B8 0A:A9A8: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A9B9 0A:A9A9: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02A9BA 0A:A9AA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9BB 0A:A9AB: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02A9BC 0A:A9AC: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02A9BD 0A:A9AD: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02A9BE 0A:A9AE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9BF 0A:A9AF: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02A9C0 0A:A9B0: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A9C1 0A:A9B1: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02A9C2 0A:A9B2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9C3 0A:A9B3: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02A9C4 0A:A9B4: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A9C5 0A:A9B5: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02A9C6 0A:A9B6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9C7 0A:A9B7: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02A9C8 0A:A9B8: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A9C9 0A:A9B9: 53        .byte con_T + $53   ; 
- D 1 - I - 0x02A9CA 0A:A9BA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9CB 0A:A9BB: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02A9CC 0A:A9BC: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02A9CD 0A:A9BD: 55        .byte con_T + $55   ; 
- D 1 - I - 0x02A9CE 0A:A9BE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9CF 0A:A9BF: 0C        .byte con_X + $0C   ; 
@end:



_off008_A9C0_34:
- D 1 - I - 0x02A9D0 0A:A9C0: 12        .byte (@end - * - 1) / 4

- D 1 - I - 0x02A9D1 0A:A9C1: AD        .byte con_Y + $AD   ; 
- D 1 - I - 0x02A9D2 0A:A9C2: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02A9D3 0A:A9C3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9D4 0A:A9C4: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A9D5 0A:A9C5: AD        .byte con_Y + $AD   ; 
- D 1 - I - 0x02A9D6 0A:A9C6: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02A9D7 0A:A9C7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9D8 0A:A9C8: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A9D9 0A:A9C9: BD        .byte con_Y + $BD   ; 
- D 1 - I - 0x02A9DA 0A:A9CA: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02A9DB 0A:A9CB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9DC 0A:A9CC: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02A9DD 0A:A9CD: BD        .byte con_Y + $BD   ; 
- D 1 - I - 0x02A9DE 0A:A9CE: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02A9DF 0A:A9CF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9E0 0A:A9D0: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02A9E1 0A:A9D1: BD        .byte con_Y + $BD   ; 
- D 1 - I - 0x02A9E2 0A:A9D2: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02A9E3 0A:A9D3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9E4 0A:A9D4: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02A9E5 0A:A9D5: BD        .byte con_Y + $BD   ; 
- D 1 - I - 0x02A9E6 0A:A9D6: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02A9E7 0A:A9D7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9E8 0A:A9D8: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02A9E9 0A:A9D9: BD        .byte con_Y + $BD   ; 
- D 1 - I - 0x02A9EA 0A:A9DA: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02A9EB 0A:A9DB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9EC 0A:A9DC: 14        .byte con_X + $14   ; 

- D 1 - I - 0x02A9ED 0A:A9DD: BD        .byte con_Y + $BD   ; 
- D 1 - I - 0x02A9EE 0A:A9DE: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02A9EF 0A:A9DF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9F0 0A:A9E0: 1C        .byte con_X + $1C   ; 

- D 1 - I - 0x02A9F1 0A:A9E1: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02A9F2 0A:A9E2: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02A9F3 0A:A9E3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9F4 0A:A9E4: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02A9F5 0A:A9E5: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02A9F6 0A:A9E6: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02A9F7 0A:A9E7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9F8 0A:A9E8: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02A9F9 0A:A9E9: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02A9FA 0A:A9EA: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02A9FB 0A:A9EB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02A9FC 0A:A9EC: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02A9FD 0A:A9ED: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02A9FE 0A:A9EE: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02A9FF 0A:A9EF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA00 0A:A9F0: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02AA01 0A:A9F1: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02AA02 0A:A9F2: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02AA03 0A:A9F3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA04 0A:A9F4: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02AA05 0A:A9F5: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02AA06 0A:A9F6: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02AA07 0A:A9F7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA08 0A:A9F8: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02AA09 0A:A9F9: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02AA0A 0A:A9FA: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02AA0B 0A:A9FB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA0C 0A:A9FC: 20        .byte con_X + $20   ; 

- D 1 - I - 0x02AA0D 0A:A9FD: DD        .byte con_Y + $DD   ; 
- D 1 - I - 0x02AA0E 0A:A9FE: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02AA0F 0A:A9FF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA10 0A:AA00: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02AA11 0A:AA01: DD        .byte con_Y + $DD   ; 
- D 1 - I - 0x02AA12 0A:AA02: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02AA13 0A:AA03: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA14 0A:AA04: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02AA15 0A:AA05: DD        .byte con_Y + $DD   ; 
- D 1 - I - 0x02AA16 0A:AA06: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02AA17 0A:AA07: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA18 0A:AA08: 05        .byte con_X + $05   ; 
@end:



_off008_AA09_35:
- D 1 - I - 0x02AA19 0A:AA09: 16        .byte (@end - * - 1) / 4

- D 1 - I - 0x02AA1A 0A:AA0A: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AA1B 0A:AA0B: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02AA1C 0A:AA0C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA1D 0A:AA0D: EB        .byte con_X + $EB   ; 

- D 1 - I - 0x02AA1E 0A:AA0E: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AA1F 0A:AA0F: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02AA20 0A:AA10: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA21 0A:AA11: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02AA22 0A:AA12: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AA23 0A:AA13: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02AA24 0A:AA14: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA25 0A:AA15: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02AA26 0A:AA16: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AA27 0A:AA17: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02AA28 0A:AA18: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA29 0A:AA19: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02AA2A 0A:AA1A: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AA2B 0A:AA1B: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02AA2C 0A:AA1C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA2D 0A:AA1D: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02AA2E 0A:AA1E: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AA2F 0A:AA1F: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02AA30 0A:AA20: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA31 0A:AA21: 13        .byte con_X + $13   ; 

- D 1 - I - 0x02AA32 0A:AA22: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AA33 0A:AA23: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02AA34 0A:AA24: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA35 0A:AA25: 1B        .byte con_X + $1B   ; 

- D 1 - I - 0x02AA36 0A:AA26: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AA37 0A:AA27: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02AA38 0A:AA28: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA39 0A:AA29: 23        .byte con_X + $23   ; 

- D 1 - I - 0x02AA3A 0A:AA2A: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AA3B 0A:AA2B: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02AA3C 0A:AA2C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA3D 0A:AA2D: EA        .byte con_X + $EA   ; 

- D 1 - I - 0x02AA3E 0A:AA2E: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AA3F 0A:AA2F: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02AA40 0A:AA30: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA41 0A:AA31: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02AA42 0A:AA32: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AA43 0A:AA33: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02AA44 0A:AA34: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA45 0A:AA35: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02AA46 0A:AA36: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AA47 0A:AA37: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02AA48 0A:AA38: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA49 0A:AA39: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02AA4A 0A:AA3A: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AA4B 0A:AA3B: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02AA4C 0A:AA3C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA4D 0A:AA3D: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02AA4E 0A:AA3E: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AA4F 0A:AA3F: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02AA50 0A:AA40: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA51 0A:AA41: 12        .byte con_X + $12   ; 

- D 1 - I - 0x02AA52 0A:AA42: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AA53 0A:AA43: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02AA54 0A:AA44: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA55 0A:AA45: 1A        .byte con_X + $1A   ; 

- D 1 - I - 0x02AA56 0A:AA46: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AA57 0A:AA47: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02AA58 0A:AA48: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA59 0A:AA49: E5        .byte con_X + $E5   ; 

- D 1 - I - 0x02AA5A 0A:AA4A: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AA5B 0A:AA4B: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02AA5C 0A:AA4C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA5D 0A:AA4D: ED        .byte con_X + $ED   ; 

- D 1 - I - 0x02AA5E 0A:AA4E: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AA5F 0A:AA4F: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02AA60 0A:AA50: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA61 0A:AA51: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02AA62 0A:AA52: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AA63 0A:AA53: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02AA64 0A:AA54: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA65 0A:AA55: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02AA66 0A:AA56: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AA67 0A:AA57: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02AA68 0A:AA58: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA69 0A:AA59: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02AA6A 0A:AA5A: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AA6B 0A:AA5B: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02AA6C 0A:AA5C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA6D 0A:AA5D: 0D        .byte con_X + $0D   ; 

- D 1 - I - 0x02AA6E 0A:AA5E: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AA6F 0A:AA5F: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02AA70 0A:AA60: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA71 0A:AA61: 15        .byte con_X + $15   ; 
@end:



_off008_AA62_36:
- D 1 - I - 0x02AA72 0A:AA62: 18        .byte (@end - * - 1) / 4

- D 1 - I - 0x02AA73 0A:AA63: A1        .byte con_Y + $A1   ; 
- D 1 - I - 0x02AA74 0A:AA64: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02AA75 0A:AA65: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA76 0A:AA66: 1E        .byte con_X + $1E   ; 

- D 1 - I - 0x02AA77 0A:AA67: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AA78 0A:AA68: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02AA79 0A:AA69: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA7A 0A:AA6A: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02AA7B 0A:AA6B: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AA7C 0A:AA6C: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02AA7D 0A:AA6D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA7E 0A:AA6E: 0E        .byte con_X + $0E   ; 

- D 1 - I - 0x02AA7F 0A:AA6F: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AA80 0A:AA70: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02AA81 0A:AA71: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA82 0A:AA72: 16        .byte con_X + $16   ; 

- D 1 - I - 0x02AA83 0A:AA73: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AA84 0A:AA74: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02AA85 0A:AA75: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA86 0A:AA76: 1E        .byte con_X + $1E   ; 

- D 1 - I - 0x02AA87 0A:AA77: AB        .byte con_Y + $AB   ; 
- D 1 - I - 0x02AA88 0A:AA78: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02AA89 0A:AA79: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA8A 0A:AA7A: 26        .byte con_X + $26   ; 

- D 1 - I - 0x02AA8B 0A:AA7B: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AA8C 0A:AA7C: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02AA8D 0A:AA7D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA8E 0A:AA7E: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02AA8F 0A:AA7F: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AA90 0A:AA80: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02AA91 0A:AA81: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA92 0A:AA82: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02AA93 0A:AA83: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AA94 0A:AA84: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02AA95 0A:AA85: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA96 0A:AA86: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02AA97 0A:AA87: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AA98 0A:AA88: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02AA99 0A:AA89: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA9A 0A:AA8A: 14        .byte con_X + $14   ; 

- D 1 - I - 0x02AA9B 0A:AA8B: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AA9C 0A:AA8C: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02AA9D 0A:AA8D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AA9E 0A:AA8E: 1C        .byte con_X + $1C   ; 

- D 1 - I - 0x02AA9F 0A:AA8F: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AAA0 0A:AA90: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02AAA1 0A:AA91: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AAA2 0A:AA92: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02AAA3 0A:AA93: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AAA4 0A:AA94: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02AAA5 0A:AA95: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AAA6 0A:AA96: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02AAA7 0A:AA97: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AAA8 0A:AA98: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02AAA9 0A:AA99: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AAAA 0A:AA9A: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02AAAB 0A:AA9B: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AAAC 0A:AA9C: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02AAAD 0A:AA9D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AAAE 0A:AA9E: EF        .byte con_X + $EF   ; 

- D 1 - I - 0x02AAAF 0A:AA9F: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AAB0 0A:AAA0: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02AAB1 0A:AAA1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AAB2 0A:AAA2: F7        .byte con_X + $F7   ; 

- D 1 - I - 0x02AAB3 0A:AAA3: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AAB4 0A:AAA4: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02AAB5 0A:AAA5: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AAB6 0A:AAA6: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02AAB7 0A:AAA7: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AAB8 0A:AAA8: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02AAB9 0A:AAA9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AABA 0A:AAAA: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02AABB 0A:AAAB: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AABC 0A:AAAC: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02AABD 0A:AAAD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AABE 0A:AAAE: 0F        .byte con_X + $0F   ; 

- D 1 - I - 0x02AABF 0A:AAAF: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AAC0 0A:AAB0: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02AAC1 0A:AAB1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AAC2 0A:AAB2: EF        .byte con_X + $EF   ; 

- D 1 - I - 0x02AAC3 0A:AAB3: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AAC4 0A:AAB4: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02AAC5 0A:AAB5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AAC6 0A:AAB6: F7        .byte con_X + $F7   ; 

- D 1 - I - 0x02AAC7 0A:AAB7: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AAC8 0A:AAB8: 53        .byte con_T + $53   ; 
- D 1 - I - 0x02AAC9 0A:AAB9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AACA 0A:AABA: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02AACB 0A:AABB: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AACC 0A:AABC: 55        .byte con_T + $55   ; 
- D 1 - I - 0x02AACD 0A:AABD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AACE 0A:AABE: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02AACF 0A:AABF: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AAD0 0A:AAC0: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02AAD1 0A:AAC1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AAD2 0A:AAC2: 08        .byte con_X + $08   ; 
@end:



_off008_AAC3_37:
- D 1 - I - 0x02AAD3 0A:AAC3: 16        .byte (@end - * - 1) / 4

- D 1 - I - 0x02AAD4 0A:AAC4: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AAD5 0A:AAC5: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02AAD6 0A:AAC6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AAD7 0A:AAC7: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02AAD8 0A:AAC8: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AAD9 0A:AAC9: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02AADA 0A:AACA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AADB 0A:AACB: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02AADC 0A:AACC: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AADD 0A:AACD: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02AADE 0A:AACE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AADF 0A:AACF: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02AAE0 0A:AAD0: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AAE1 0A:AAD1: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02AAE2 0A:AAD2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AAE3 0A:AAD3: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02AAE4 0A:AAD4: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AAE5 0A:AAD5: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02AAE6 0A:AAD6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AAE7 0A:AAD7: 0E        .byte con_X + $0E   ; 

- D 1 - I - 0x02AAE8 0A:AAD8: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AAE9 0A:AAD9: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02AAEA 0A:AADA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AAEB 0A:AADB: 16        .byte con_X + $16   ; 

- D 1 - I - 0x02AAEC 0A:AADC: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AAED 0A:AADD: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02AAEE 0A:AADE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AAEF 0A:AADF: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02AAF0 0A:AAE0: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AAF1 0A:AAE1: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02AAF2 0A:AAE2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AAF3 0A:AAE3: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02AAF4 0A:AAE4: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AAF5 0A:AAE5: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02AAF6 0A:AAE6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AAF7 0A:AAE7: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02AAF8 0A:AAE8: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AAF9 0A:AAE9: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02AAFA 0A:AAEA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AAFB 0A:AAEB: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02AAFC 0A:AAEC: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AAFD 0A:AAED: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02AAFE 0A:AAEE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AAFF 0A:AAEF: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02AB00 0A:AAF0: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AB01 0A:AAF1: 35        .byte con_T + $35   ; 
- D 1 - I - 0x02AB02 0A:AAF2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB03 0A:AAF3: 20        .byte con_X + $20   ; 

- D 1 - I - 0x02AB04 0A:AAF4: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AB05 0A:AAF5: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02AB06 0A:AAF6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB07 0A:AAF7: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02AB08 0A:AAF8: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AB09 0A:AAF9: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02AB0A 0A:AAFA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB0B 0A:AAFB: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02AB0C 0A:AAFC: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AB0D 0A:AAFD: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02AB0E 0A:AAFE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB0F 0A:AAFF: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02AB10 0A:AB00: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AB11 0A:AB01: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02AB12 0A:AB02: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB13 0A:AB03: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02AB14 0A:AB04: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AB15 0A:AB05: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02AB16 0A:AB06: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB17 0A:AB07: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02AB18 0A:AB08: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AB19 0A:AB09: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02AB1A 0A:AB0A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB1B 0A:AB0B: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02AB1C 0A:AB0C: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AB1D 0A:AB0D: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02AB1E 0A:AB0E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB1F 0A:AB0F: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02AB20 0A:AB10: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AB21 0A:AB11: 53        .byte con_T + $53   ; 
- D 1 - I - 0x02AB22 0A:AB12: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB23 0A:AB13: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02AB24 0A:AB14: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AB25 0A:AB15: 55        .byte con_T + $55   ; 
- D 1 - I - 0x02AB26 0A:AB16: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB27 0A:AB17: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02AB28 0A:AB18: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AB29 0A:AB19: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02AB2A 0A:AB1A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB2B 0A:AB1B: 10        .byte con_X + $10   ; 
@end:



_off008_AB1C_38:
- D 1 - I - 0x02AB2C 0A:AB1C: 16        .byte (@end - * - 1) / 4

- D 1 - I - 0x02AB2D 0A:AB1D: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AB2E 0A:AB1E: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02AB2F 0A:AB1F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB30 0A:AB20: E2        .byte con_X + $E2   ; 

- D 1 - I - 0x02AB31 0A:AB21: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AB32 0A:AB22: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02AB33 0A:AB23: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB34 0A:AB24: EA        .byte con_X + $EA   ; 

- D 1 - I - 0x02AB35 0A:AB25: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AB36 0A:AB26: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02AB37 0A:AB27: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB38 0A:AB28: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02AB39 0A:AB29: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AB3A 0A:AB2A: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02AB3B 0A:AB2B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB3C 0A:AB2C: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02AB3D 0A:AB2D: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AB3E 0A:AB2E: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02AB3F 0A:AB2F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB40 0A:AB30: E2        .byte con_X + $E2   ; 

- D 1 - I - 0x02AB41 0A:AB31: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AB42 0A:AB32: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02AB43 0A:AB33: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB44 0A:AB34: EA        .byte con_X + $EA   ; 

- D 1 - I - 0x02AB45 0A:AB35: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AB46 0A:AB36: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02AB47 0A:AB37: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB48 0A:AB38: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02AB49 0A:AB39: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AB4A 0A:AB3A: 35        .byte con_T + $35   ; 
- D 1 - I - 0x02AB4B 0A:AB3B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB4C 0A:AB3C: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02AB4D 0A:AB3D: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AB4E 0A:AB3E: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02AB4F 0A:AB3F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB50 0A:AB40: E3        .byte con_X + $E3   ; 

- D 1 - I - 0x02AB51 0A:AB41: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AB52 0A:AB42: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02AB53 0A:AB43: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB54 0A:AB44: EB        .byte con_X + $EB   ; 

- D 1 - I - 0x02AB55 0A:AB45: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AB56 0A:AB46: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02AB57 0A:AB47: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB58 0A:AB48: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02AB59 0A:AB49: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AB5A 0A:AB4A: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02AB5B 0A:AB4B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB5C 0A:AB4C: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02AB5D 0A:AB4D: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AB5E 0A:AB4E: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02AB5F 0A:AB4F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB60 0A:AB50: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02AB61 0A:AB51: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AB62 0A:AB52: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02AB63 0A:AB53: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AB64 0A:AB54: E3        .byte con_X + $E3   ; 

- D 1 - I - 0x02AB65 0A:AB55: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AB66 0A:AB56: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02AB67 0A:AB57: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AB68 0A:AB58: EB        .byte con_X + $EB   ; 

- D 1 - I - 0x02AB69 0A:AB59: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AB6A 0A:AB5A: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02AB6B 0A:AB5B: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AB6C 0A:AB5C: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02AB6D 0A:AB5D: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AB6E 0A:AB5E: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02AB6F 0A:AB5F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB70 0A:AB60: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02AB71 0A:AB61: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AB72 0A:AB62: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02AB73 0A:AB63: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB74 0A:AB64: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02AB75 0A:AB65: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AB76 0A:AB66: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02AB77 0A:AB67: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AB78 0A:AB68: E0        .byte con_X + $E0   ; 

- D 1 - I - 0x02AB79 0A:AB69: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AB7A 0A:AB6A: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02AB7B 0A:AB6B: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AB7C 0A:AB6C: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02AB7D 0A:AB6D: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AB7E 0A:AB6E: 57        .byte con_T + $57   ; 
- D 1 - I - 0x02AB7F 0A:AB6F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB80 0A:AB70: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02AB81 0A:AB71: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AB82 0A:AB72: 59        .byte con_T + $59   ; 
- D 1 - I - 0x02AB83 0A:AB73: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB84 0A:AB74: 0B        .byte con_X + $0B   ; 
@end:



_off008_AB75_39:
- D 1 - I - 0x02AB85 0A:AB75: 14        .byte (@end - * - 1) / 4

- D 1 - I - 0x02AB86 0A:AB76: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AB87 0A:AB77: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02AB88 0A:AB78: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB89 0A:AB79: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02AB8A 0A:AB7A: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AB8B 0A:AB7B: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02AB8C 0A:AB7C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB8D 0A:AB7D: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02AB8E 0A:AB7E: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AB8F 0A:AB7F: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02AB90 0A:AB80: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB91 0A:AB81: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02AB92 0A:AB82: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AB93 0A:AB83: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02AB94 0A:AB84: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB95 0A:AB85: F7        .byte con_X + $F7   ; 

- D 1 - I - 0x02AB96 0A:AB86: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AB97 0A:AB87: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02AB98 0A:AB88: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB99 0A:AB89: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02AB9A 0A:AB8A: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AB9B 0A:AB8B: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02AB9C 0A:AB8C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AB9D 0A:AB8D: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02AB9E 0A:AB8E: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AB9F 0A:AB8F: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02ABA0 0A:AB90: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ABA1 0A:AB91: 0F        .byte con_X + $0F   ; 

- D 1 - I - 0x02ABA2 0A:AB92: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02ABA3 0A:AB93: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02ABA4 0A:AB94: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ABA5 0A:AB95: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02ABA6 0A:AB96: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02ABA7 0A:AB97: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02ABA8 0A:AB98: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ABA9 0A:AB99: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02ABAA 0A:AB9A: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02ABAB 0A:AB9B: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02ABAC 0A:AB9C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ABAD 0A:AB9D: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02ABAE 0A:AB9E: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02ABAF 0A:AB9F: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02ABB0 0A:ABA0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ABB1 0A:ABA1: 0D        .byte con_X + $0D   ; 

- D 1 - I - 0x02ABB2 0A:ABA2: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02ABB3 0A:ABA3: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02ABB4 0A:ABA4: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ABB5 0A:ABA5: ED        .byte con_X + $ED   ; 

- D 1 - I - 0x02ABB6 0A:ABA6: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02ABB7 0A:ABA7: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02ABB8 0A:ABA8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ABB9 0A:ABA9: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02ABBA 0A:ABAA: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02ABBB 0A:ABAB: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02ABBC 0A:ABAC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ABBD 0A:ABAD: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02ABBE 0A:ABAE: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02ABBF 0A:ABAF: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02ABC0 0A:ABB0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ABC1 0A:ABB1: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02ABC2 0A:ABB2: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02ABC3 0A:ABB3: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02ABC4 0A:ABB4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ABC5 0A:ABB5: 0D        .byte con_X + $0D   ; 

- D 1 - I - 0x02ABC6 0A:ABB6: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02ABC7 0A:ABB7: 59        .byte con_T + $59   ; 
- D 1 - I - 0x02ABC8 0A:ABB8: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ABC9 0A:ABB9: E5        .byte con_X + $E5   ; 

- D 1 - I - 0x02ABCA 0A:ABBA: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02ABCB 0A:ABBB: 57        .byte con_T + $57   ; 
- D 1 - I - 0x02ABCC 0A:ABBC: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ABCD 0A:ABBD: ED        .byte con_X + $ED   ; 

- D 1 - I - 0x02ABCE 0A:ABBE: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02ABCF 0A:ABBF: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02ABD0 0A:ABC0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ABD1 0A:ABC1: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02ABD2 0A:ABC2: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02ABD3 0A:ABC3: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02ABD4 0A:ABC4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ABD5 0A:ABC5: 10        .byte con_X + $10   ; 
@end:



_off008_ABC6_3A:
- D 1 - I - 0x02ABD6 0A:ABC6: 13        .byte (@end - * - 1) / 4

- D 1 - I - 0x02ABD7 0A:ABC7: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02ABD8 0A:ABC8: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02ABD9 0A:ABC9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ABDA 0A:ABCA: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02ABDB 0A:ABCB: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02ABDC 0A:ABCC: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02ABDD 0A:ABCD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ABDE 0A:ABCE: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02ABDF 0A:ABCF: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02ABE0 0A:ABD0: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02ABE1 0A:ABD1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ABE2 0A:ABD2: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02ABE3 0A:ABD3: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02ABE4 0A:ABD4: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02ABE5 0A:ABD5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ABE6 0A:ABD6: F7        .byte con_X + $F7   ; 

- D 1 - I - 0x02ABE7 0A:ABD7: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02ABE8 0A:ABD8: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02ABE9 0A:ABD9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ABEA 0A:ABDA: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02ABEB 0A:ABDB: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02ABEC 0A:ABDC: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02ABED 0A:ABDD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ABEE 0A:ABDE: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02ABEF 0A:ABDF: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02ABF0 0A:ABE0: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02ABF1 0A:ABE1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ABF2 0A:ABE2: 0F        .byte con_X + $0F   ; 

- D 1 - I - 0x02ABF3 0A:ABE3: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02ABF4 0A:ABE4: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02ABF5 0A:ABE5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ABF6 0A:ABE6: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02ABF7 0A:ABE7: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02ABF8 0A:ABE8: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02ABF9 0A:ABE9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ABFA 0A:ABEA: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02ABFB 0A:ABEB: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02ABFC 0A:ABEC: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02ABFD 0A:ABED: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ABFE 0A:ABEE: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02ABFF 0A:ABEF: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AC00 0A:ABF0: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02AC01 0A:ABF1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC02 0A:ABF2: 0D        .byte con_X + $0D   ; 

- D 1 - I - 0x02AC03 0A:ABF3: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AC04 0A:ABF4: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02AC05 0A:ABF5: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AC06 0A:ABF6: ED        .byte con_X + $ED   ; 

- D 1 - I - 0x02AC07 0A:ABF7: 01        .byte con_Y + $01   ; 
- D 1 - I - 0x02AC08 0A:ABF8: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02AC09 0A:ABF9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC0A 0A:ABFA: EF        .byte con_X + $EF   ; 

- D 1 - I - 0x02AC0B 0A:ABFB: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AC0C 0A:ABFC: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02AC0D 0A:ABFD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC0E 0A:ABFE: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02AC0F 0A:ABFF: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AC10 0A:AC00: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02AC11 0A:AC01: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC12 0A:AC02: 0D        .byte con_X + $0D   ; 

- D 1 - I - 0x02AC13 0A:AC03: 01        .byte con_Y + $01   ; 
- D 1 - I - 0x02AC14 0A:AC04: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02AC15 0A:AC05: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC16 0A:AC06: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02AC17 0A:AC07: 01        .byte con_Y + $01   ; 
- D 1 - I - 0x02AC18 0A:AC08: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02AC19 0A:AC09: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC1A 0A:AC0A: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02AC1B 0A:AC0B: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AC1C 0A:AC0C: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02AC1D 0A:AC0D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC1E 0A:AC0E: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02AC1F 0A:AC0F: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AC20 0A:AC10: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02AC21 0A:AC11: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC22 0A:AC12: FD        .byte con_X + $FD   ; 
@end:



_off008_AC13_3B:
- D 1 - I - 0x02AC23 0A:AC13: 0E        .byte (@end - * - 1) / 4

- D 1 - I - 0x02AC24 0A:AC14: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AC25 0A:AC15: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02AC26 0A:AC16: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC27 0A:AC17: E9        .byte con_X + $E9   ; 

- D 1 - I - 0x02AC28 0A:AC18: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AC29 0A:AC19: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02AC2A 0A:AC1A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC2B 0A:AC1B: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02AC2C 0A:AC1C: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AC2D 0A:AC1D: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02AC2E 0A:AC1E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC2F 0A:AC1F: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02AC30 0A:AC20: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AC31 0A:AC21: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02AC32 0A:AC22: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC33 0A:AC23: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02AC34 0A:AC24: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AC35 0A:AC25: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02AC36 0A:AC26: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC37 0A:AC27: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02AC38 0A:AC28: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AC39 0A:AC29: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02AC3A 0A:AC2A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC3B 0A:AC2B: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02AC3C 0A:AC2C: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AC3D 0A:AC2D: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02AC3E 0A:AC2E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC3F 0A:AC2F: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02AC40 0A:AC30: 01        .byte con_Y + $01   ; 
- D 1 - I - 0x02AC41 0A:AC31: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02AC42 0A:AC32: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC43 0A:AC33: E4        .byte con_X + $E4   ; 

- D 1 - I - 0x02AC44 0A:AC34: 01        .byte con_Y + $01   ; 
- D 1 - I - 0x02AC45 0A:AC35: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02AC46 0A:AC36: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC47 0A:AC37: EC        .byte con_X + $EC   ; 

- D 1 - I - 0x02AC48 0A:AC38: 01        .byte con_Y + $01   ; 
- D 1 - I - 0x02AC49 0A:AC39: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02AC4A 0A:AC3A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC4B 0A:AC3B: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02AC4C 0A:AC3C: 01        .byte con_Y + $01   ; 
- D 1 - I - 0x02AC4D 0A:AC3D: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02AC4E 0A:AC3E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC4F 0A:AC3F: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02AC50 0A:AC40: 01        .byte con_Y + $01   ; 
- D 1 - I - 0x02AC51 0A:AC41: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02AC52 0A:AC42: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC53 0A:AC43: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02AC54 0A:AC44: 01        .byte con_Y + $01   ; 
- D 1 - I - 0x02AC55 0A:AC45: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02AC56 0A:AC46: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC57 0A:AC47: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02AC58 0A:AC48: 01        .byte con_Y + $01   ; 
- D 1 - I - 0x02AC59 0A:AC49: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02AC5A 0A:AC4A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC5B 0A:AC4B: 14        .byte con_X + $14   ; 
@end:



_off008_AC4C_3C:
- D 1 - I - 0x02AC5C 0A:AC4C: 19        .byte (@end - * - 1) / 4

- D 1 - I - 0x02AC5D 0A:AC4D: B4        .byte con_Y + $B4   ; 
- D 1 - I - 0x02AC5E 0A:AC4E: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02AC5F 0A:AC4F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC60 0A:AC50: E7        .byte con_X + $E7   ; 

- D 1 - I - 0x02AC61 0A:AC51: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02AC62 0A:AC52: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02AC63 0A:AC53: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC64 0A:AC54: E0        .byte con_X + $E0   ; 

- D 1 - I - 0x02AC65 0A:AC55: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02AC66 0A:AC56: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02AC67 0A:AC57: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC68 0A:AC58: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02AC69 0A:AC59: B4        .byte con_Y + $B4   ; 
- D 1 - I - 0x02AC6A 0A:AC5A: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02AC6B 0A:AC5B: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AC6C 0A:AC5C: 11        .byte con_X + $11   ; 

- D 1 - I - 0x02AC6D 0A:AC5D: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02AC6E 0A:AC5E: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02AC6F 0A:AC5F: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AC70 0A:AC60: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02AC71 0A:AC61: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02AC72 0A:AC62: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02AC73 0A:AC63: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AC74 0A:AC64: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02AC75 0A:AC65: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AC76 0A:AC66: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02AC77 0A:AC67: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC78 0A:AC68: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02AC79 0A:AC69: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AC7A 0A:AC6A: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02AC7B 0A:AC6B: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AC7C 0A:AC6C: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02AC7D 0A:AC6D: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AC7E 0A:AC6E: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02AC7F 0A:AC6F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC80 0A:AC70: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02AC81 0A:AC71: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AC82 0A:AC72: 35        .byte con_T + $35   ; 
- D 1 - I - 0x02AC83 0A:AC73: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC84 0A:AC74: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02AC85 0A:AC75: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AC86 0A:AC76: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02AC87 0A:AC77: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC88 0A:AC78: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02AC89 0A:AC79: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AC8A 0A:AC7A: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02AC8B 0A:AC7B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AC8C 0A:AC7C: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02AC8D 0A:AC7D: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AC8E 0A:AC7E: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02AC8F 0A:AC7F: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AC90 0A:AC80: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02AC91 0A:AC81: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AC92 0A:AC82: 35        .byte con_T + $35   ; 
- D 1 - I - 0x02AC93 0A:AC83: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AC94 0A:AC84: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02AC95 0A:AC85: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AC96 0A:AC86: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02AC97 0A:AC87: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AC98 0A:AC88: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02AC99 0A:AC89: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AC9A 0A:AC8A: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02AC9B 0A:AC8B: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AC9C 0A:AC8C: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02AC9D 0A:AC8D: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AC9E 0A:AC8E: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02AC9F 0A:AC8F: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ACA0 0A:AC90: E9        .byte con_X + $E9   ; 

- D 1 - I - 0x02ACA1 0A:AC91: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02ACA2 0A:AC92: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02ACA3 0A:AC93: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ACA4 0A:AC94: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02ACA5 0A:AC95: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02ACA6 0A:AC96: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02ACA7 0A:AC97: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ACA8 0A:AC98: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02ACA9 0A:AC99: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02ACAA 0A:AC9A: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02ACAB 0A:AC9B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ACAC 0A:AC9C: 0F        .byte con_X + $0F   ; 

- D 1 - I - 0x02ACAD 0A:AC9D: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02ACAE 0A:AC9E: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02ACAF 0A:AC9F: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ACB0 0A:ACA0: EC        .byte con_X + $EC   ; 

- D 1 - I - 0x02ACB1 0A:ACA1: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02ACB2 0A:ACA2: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02ACB3 0A:ACA3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ACB4 0A:ACA4: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02ACB5 0A:ACA5: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02ACB6 0A:ACA6: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02ACB7 0A:ACA7: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ACB8 0A:ACA8: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02ACB9 0A:ACA9: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02ACBA 0A:ACAA: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02ACBB 0A:ACAB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ACBC 0A:ACAC: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02ACBD 0A:ACAD: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02ACBE 0A:ACAE: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02ACBF 0A:ACAF: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ACC0 0A:ACB0: F4        .byte con_X + $F4   ; 
@end:



_off008_ACB1_3D:
- D 1 - I - 0x02ACC1 0A:ACB1: 1D        .byte (@end - * - 1) / 4

- D 1 - I - 0x02ACC2 0A:ACB2: A1        .byte con_Y + $A1   ; 
- D 1 - I - 0x02ACC3 0A:ACB3: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02ACC4 0A:ACB4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ACC5 0A:ACB5: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02ACC6 0A:ACB6: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02ACC7 0A:ACB7: 35        .byte con_T + $35   ; 
- D 1 - I - 0x02ACC8 0A:ACB8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ACC9 0A:ACB9: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02ACCA 0A:ACBA: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02ACCB 0A:ACBB: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02ACCC 0A:ACBC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ACCD 0A:ACBD: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02ACCE 0A:ACBE: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02ACCF 0A:ACBF: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02ACD0 0A:ACC0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ACD1 0A:ACC1: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02ACD2 0A:ACC2: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02ACD3 0A:ACC3: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02ACD4 0A:ACC4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ACD5 0A:ACC5: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02ACD6 0A:ACC6: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02ACD7 0A:ACC7: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02ACD8 0A:ACC8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ACD9 0A:ACC9: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02ACDA 0A:ACCA: C2        .byte con_Y + $C2   ; 
- D 1 - I - 0x02ACDB 0A:ACCB: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02ACDC 0A:ACCC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ACDD 0A:ACCD: E0        .byte con_X + $E0   ; 

- D 1 - I - 0x02ACDE 0A:ACCE: C2        .byte con_Y + $C2   ; 
- D 1 - I - 0x02ACDF 0A:ACCF: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02ACE0 0A:ACD0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ACE1 0A:ACD1: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02ACE2 0A:ACD2: B2        .byte con_Y + $B2   ; 
- D 1 - I - 0x02ACE3 0A:ACD3: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02ACE4 0A:ACD4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ACE5 0A:ACD5: E7        .byte con_X + $E7   ; 

- D 1 - I - 0x02ACE6 0A:ACD6: B2        .byte con_Y + $B2   ; 
- D 1 - I - 0x02ACE7 0A:ACD7: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02ACE8 0A:ACD8: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ACE9 0A:ACD9: 11        .byte con_X + $11   ; 

- D 1 - I - 0x02ACEA 0A:ACDA: C2        .byte con_Y + $C2   ; 
- D 1 - I - 0x02ACEB 0A:ACDB: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02ACEC 0A:ACDC: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ACED 0A:ACDD: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02ACEE 0A:ACDE: C2        .byte con_Y + $C2   ; 
- D 1 - I - 0x02ACEF 0A:ACDF: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02ACF0 0A:ACE0: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ACF1 0A:ACE1: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02ACF2 0A:ACE2: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02ACF3 0A:ACE3: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02ACF4 0A:ACE4: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ACF5 0A:ACE5: EC        .byte con_X + $EC   ; 

- D 1 - I - 0x02ACF6 0A:ACE6: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02ACF7 0A:ACE7: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02ACF8 0A:ACE8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ACF9 0A:ACE9: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02ACFA 0A:ACEA: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02ACFB 0A:ACEB: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02ACFC 0A:ACEC: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ACFD 0A:ACED: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02ACFE 0A:ACEE: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02ACFF 0A:ACEF: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02AD00 0A:ACF0: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD01 0A:ACF1: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02AD02 0A:ACF2: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AD03 0A:ACF3: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02AD04 0A:ACF4: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD05 0A:ACF5: E9        .byte con_X + $E9   ; 

- D 1 - I - 0x02AD06 0A:ACF6: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AD07 0A:ACF7: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02AD08 0A:ACF8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AD09 0A:ACF9: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02AD0A 0A:ACFA: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AD0B 0A:ACFB: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02AD0C 0A:ACFC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AD0D 0A:ACFD: 0F        .byte con_X + $0F   ; 

- D 1 - I - 0x02AD0E 0A:ACFE: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AD0F 0A:ACFF: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02AD10 0A:AD00: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AD11 0A:AD01: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02AD12 0A:AD02: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AD13 0A:AD03: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02AD14 0A:AD04: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD15 0A:AD05: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02AD16 0A:AD06: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AD17 0A:AD07: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02AD18 0A:AD08: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD19 0A:AD09: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02AD1A 0A:AD0A: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AD1B 0A:AD0B: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02AD1C 0A:AD0C: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD1D 0A:AD0D: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02AD1E 0A:AD0E: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AD1F 0A:AD0F: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02AD20 0A:AD10: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD21 0A:AD11: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02AD22 0A:AD12: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AD23 0A:AD13: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02AD24 0A:AD14: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD25 0A:AD15: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02AD26 0A:AD16: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AD27 0A:AD17: 35        .byte con_T + $35   ; 
- D 1 - I - 0x02AD28 0A:AD18: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD29 0A:AD19: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02AD2A 0A:AD1A: A1        .byte con_Y + $A1   ; 
- D 1 - I - 0x02AD2B 0A:AD1B: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02AD2C 0A:AD1C: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD2D 0A:AD1D: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02AD2E 0A:AD1E: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AD2F 0A:AD1F: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02AD30 0A:AD20: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD31 0A:AD21: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02AD32 0A:AD22: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AD33 0A:AD23: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02AD34 0A:AD24: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AD35 0A:AD25: F0        .byte con_X + $F0   ; 
@end:



_off008_AD26_3E:
- D 1 - I - 0x02AD36 0A:AD26: 1B        .byte (@end - * - 1) / 4

- D 1 - I - 0x02AD37 0A:AD27: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AD38 0A:AD28: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02AD39 0A:AD29: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD3A 0A:AD2A: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02AD3B 0A:AD2B: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AD3C 0A:AD2C: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02AD3D 0A:AD2D: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD3E 0A:AD2E: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02AD3F 0A:AD2F: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AD40 0A:AD30: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02AD41 0A:AD31: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD42 0A:AD32: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02AD43 0A:AD33: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AD44 0A:AD34: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02AD45 0A:AD35: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD46 0A:AD36: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02AD47 0A:AD37: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AD48 0A:AD38: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02AD49 0A:AD39: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AD4A 0A:AD3A: E7        .byte con_X + $E7   ; 

- D 1 - I - 0x02AD4B 0A:AD3B: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AD4C 0A:AD3C: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02AD4D 0A:AD3D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AD4E 0A:AD3E: E0        .byte con_X + $E0   ; 

- D 1 - I - 0x02AD4F 0A:AD3F: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AD50 0A:AD40: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02AD51 0A:AD41: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AD52 0A:AD42: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02AD53 0A:AD43: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AD54 0A:AD44: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02AD55 0A:AD45: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD56 0A:AD46: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02AD57 0A:AD47: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AD58 0A:AD48: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02AD59 0A:AD49: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD5A 0A:AD4A: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02AD5B 0A:AD4B: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AD5C 0A:AD4C: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02AD5D 0A:AD4D: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD5E 0A:AD4E: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02AD5F 0A:AD4F: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AD60 0A:AD50: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02AD61 0A:AD51: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD62 0A:AD52: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02AD63 0A:AD53: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AD64 0A:AD54: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02AD65 0A:AD55: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AD66 0A:AD56: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02AD67 0A:AD57: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AD68 0A:AD58: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02AD69 0A:AD59: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AD6A 0A:AD5A: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02AD6B 0A:AD5B: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AD6C 0A:AD5C: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02AD6D 0A:AD5D: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD6E 0A:AD5E: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02AD6F 0A:AD5F: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AD70 0A:AD60: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02AD71 0A:AD61: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD72 0A:AD62: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02AD73 0A:AD63: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AD74 0A:AD64: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02AD75 0A:AD65: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD76 0A:AD66: EC        .byte con_X + $EC   ; 

- D 1 - I - 0x02AD77 0A:AD67: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AD78 0A:AD68: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02AD79 0A:AD69: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD7A 0A:AD6A: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02AD7B 0A:AD6B: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AD7C 0A:AD6C: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02AD7D 0A:AD6D: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD7E 0A:AD6E: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02AD7F 0A:AD6F: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AD80 0A:AD70: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02AD81 0A:AD71: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AD82 0A:AD72: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02AD83 0A:AD73: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AD84 0A:AD74: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02AD85 0A:AD75: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AD86 0A:AD76: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02AD87 0A:AD77: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AD88 0A:AD78: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02AD89 0A:AD79: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD8A 0A:AD7A: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02AD8B 0A:AD7B: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AD8C 0A:AD7C: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02AD8D 0A:AD7D: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD8E 0A:AD7E: E9        .byte con_X + $E9   ; 

- D 1 - I - 0x02AD8F 0A:AD7F: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AD90 0A:AD80: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02AD91 0A:AD81: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AD92 0A:AD82: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02AD93 0A:AD83: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AD94 0A:AD84: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02AD95 0A:AD85: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AD96 0A:AD86: 0F        .byte con_X + $0F   ; 

- D 1 - I - 0x02AD97 0A:AD87: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AD98 0A:AD88: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02AD99 0A:AD89: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD9A 0A:AD8A: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02AD9B 0A:AD8B: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AD9C 0A:AD8C: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02AD9D 0A:AD8D: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AD9E 0A:AD8E: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02AD9F 0A:AD8F: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02ADA0 0A:AD90: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02ADA1 0A:AD91: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ADA2 0A:AD92: 11        .byte con_X + $11   ; 
@end:



_off008_AD93_3F:
- D 1 - I - 0x02ADA3 0A:AD93: 1B        .byte (@end - * - 1) / 4

- D 1 - I - 0x02ADA4 0A:AD94: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02ADA5 0A:AD95: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02ADA6 0A:AD96: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ADA7 0A:AD97: E7        .byte con_X + $E7   ; 

- D 1 - I - 0x02ADA8 0A:AD98: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02ADA9 0A:AD99: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02ADAA 0A:AD9A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ADAB 0A:AD9B: E0        .byte con_X + $E0   ; 

- D 1 - I - 0x02ADAC 0A:AD9C: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02ADAD 0A:AD9D: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02ADAE 0A:AD9E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ADAF 0A:AD9F: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02ADB0 0A:ADA0: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02ADB1 0A:ADA1: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02ADB2 0A:ADA2: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ADB3 0A:ADA3: 11        .byte con_X + $11   ; 

- D 1 - I - 0x02ADB4 0A:ADA4: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02ADB5 0A:ADA5: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02ADB6 0A:ADA6: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ADB7 0A:ADA7: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02ADB8 0A:ADA8: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02ADB9 0A:ADA9: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02ADBA 0A:ADAA: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ADBB 0A:ADAB: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02ADBC 0A:ADAC: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02ADBD 0A:ADAD: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02ADBE 0A:ADAE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ADBF 0A:ADAF: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02ADC0 0A:ADB0: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02ADC1 0A:ADB1: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02ADC2 0A:ADB2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ADC3 0A:ADB3: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02ADC4 0A:ADB4: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02ADC5 0A:ADB5: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02ADC6 0A:ADB6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ADC7 0A:ADB7: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02ADC8 0A:ADB8: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02ADC9 0A:ADB9: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02ADCA 0A:ADBA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ADCB 0A:ADBB: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02ADCC 0A:ADBC: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02ADCD 0A:ADBD: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02ADCE 0A:ADBE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ADCF 0A:ADBF: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02ADD0 0A:ADC0: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02ADD1 0A:ADC1: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02ADD2 0A:ADC2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ADD3 0A:ADC3: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02ADD4 0A:ADC4: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02ADD5 0A:ADC5: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02ADD6 0A:ADC6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ADD7 0A:ADC7: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02ADD8 0A:ADC8: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02ADD9 0A:ADC9: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02ADDA 0A:ADCA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ADDB 0A:ADCB: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02ADDC 0A:ADCC: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02ADDD 0A:ADCD: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02ADDE 0A:ADCE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ADDF 0A:ADCF: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02ADE0 0A:ADD0: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02ADE1 0A:ADD1: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02ADE2 0A:ADD2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ADE3 0A:ADD3: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02ADE4 0A:ADD4: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02ADE5 0A:ADD5: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02ADE6 0A:ADD6: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ADE7 0A:ADD7: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02ADE8 0A:ADD8: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02ADE9 0A:ADD9: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02ADEA 0A:ADDA: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ADEB 0A:ADDB: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02ADEC 0A:ADDC: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02ADED 0A:ADDD: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02ADEE 0A:ADDE: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ADEF 0A:ADDF: EC        .byte con_X + $EC   ; 

- D 1 - I - 0x02ADF0 0A:ADE0: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02ADF1 0A:ADE1: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02ADF2 0A:ADE2: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ADF3 0A:ADE3: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02ADF4 0A:ADE4: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02ADF5 0A:ADE5: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02ADF6 0A:ADE6: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02ADF7 0A:ADE7: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02ADF8 0A:ADE8: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02ADF9 0A:ADE9: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02ADFA 0A:ADEA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ADFB 0A:ADEB: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02ADFC 0A:ADEC: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02ADFD 0A:ADED: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02ADFE 0A:ADEE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02ADFF 0A:ADEF: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02AE00 0A:ADF0: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AE01 0A:ADF1: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02AE02 0A:ADF2: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AE03 0A:ADF3: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02AE04 0A:ADF4: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AE05 0A:ADF5: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02AE06 0A:ADF6: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AE07 0A:ADF7: E9        .byte con_X + $E9   ; 

- D 1 - I - 0x02AE08 0A:ADF8: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AE09 0A:ADF9: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02AE0A 0A:ADFA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE0B 0A:ADFB: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02AE0C 0A:ADFC: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AE0D 0A:ADFD: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02AE0E 0A:ADFE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE0F 0A:ADFF: 0F        .byte con_X + $0F   ; 
@end:



_off008_AE00_40:
- D 1 - I - 0x02AE10 0A:AE00: 02        .byte (@end - * - 1) / 4

- D 1 - I - 0x02AE11 0A:AE01: F8        .byte con_Y + $F8   ; 
- D 1 - I - 0x02AE12 0A:AE02: 73        .byte con_T + $73   ; 
- D 1 - I - 0x02AE13 0A:AE03: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02AE14 0A:AE04: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02AE15 0A:AE05: F8        .byte con_Y + $F8   ; 
- D 1 - I - 0x02AE16 0A:AE06: 73        .byte con_T + $73   ; 
- D 1 - I - 0x02AE17 0A:AE07: C2        .byte con_A + $C2   ; 
- D 1 - I - 0x02AE18 0A:AE08: 00        .byte con_X + $00   ; 
@end:



_off008_AE09_41:
- D 1 - I - 0x02AE19 0A:AE09: 02        .byte (@end - * - 1) / 4

- D 1 - I - 0x02AE1A 0A:AE0A: F8        .byte con_Y + $F8   ; 
- D 1 - I - 0x02AE1B 0A:AE0B: 75        .byte con_T + $75   ; 
- D 1 - I - 0x02AE1C 0A:AE0C: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02AE1D 0A:AE0D: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02AE1E 0A:AE0E: F8        .byte con_Y + $F8   ; 
- D 1 - I - 0x02AE1F 0A:AE0F: 75        .byte con_T + $75   ; 
- D 1 - I - 0x02AE20 0A:AE10: C2        .byte con_A + $C2   ; 
- D 1 - I - 0x02AE21 0A:AE11: 00        .byte con_X + $00   ; 
@end:



_off008_AE12_42:
- D 1 - I - 0x02AE22 0A:AE12: 02        .byte (@end - * - 1) / 4

- D 1 - I - 0x02AE23 0A:AE13: F8        .byte con_Y + $F8   ; 
- D 1 - I - 0x02AE24 0A:AE14: 77        .byte con_T + $77   ; 
- D 1 - I - 0x02AE25 0A:AE15: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02AE26 0A:AE16: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02AE27 0A:AE17: F8        .byte con_Y + $F8   ; 
- D 1 - I - 0x02AE28 0A:AE18: 77        .byte con_T + $77   ; 
- D 1 - I - 0x02AE29 0A:AE19: C2        .byte con_A + $C2   ; 
- D 1 - I - 0x02AE2A 0A:AE1A: 00        .byte con_X + $00   ; 
@end:



_off008_AE1B_43:
- D 1 - I - 0x02AE2B 0A:AE1B: 15        .byte (@end - * - 1) / 4

- D 1 - I - 0x02AE2C 0A:AE1C: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AE2D 0A:AE1D: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02AE2E 0A:AE1E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE2F 0A:AE1F: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02AE30 0A:AE20: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AE31 0A:AE21: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02AE32 0A:AE22: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE33 0A:AE23: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02AE34 0A:AE24: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AE35 0A:AE25: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02AE36 0A:AE26: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE37 0A:AE27: 0D        .byte con_X + $0D   ; 

- D 1 - I - 0x02AE38 0A:AE28: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AE39 0A:AE29: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02AE3A 0A:AE2A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE3B 0A:AE2B: 15        .byte con_X + $15   ; 

- D 1 - I - 0x02AE3C 0A:AE2C: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02AE3D 0A:AE2D: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02AE3E 0A:AE2E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE3F 0A:AE2F: 1D        .byte con_X + $1D   ; 

- D 1 - I - 0x02AE40 0A:AE30: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AE41 0A:AE31: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02AE42 0A:AE32: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE43 0A:AE33: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02AE44 0A:AE34: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AE45 0A:AE35: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02AE46 0A:AE36: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE47 0A:AE37: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02AE48 0A:AE38: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AE49 0A:AE39: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02AE4A 0A:AE3A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE4B 0A:AE3B: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02AE4C 0A:AE3C: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AE4D 0A:AE3D: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02AE4E 0A:AE3E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE4F 0A:AE3F: 12        .byte con_X + $12   ; 

- D 1 - I - 0x02AE50 0A:AE40: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AE51 0A:AE41: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02AE52 0A:AE42: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE53 0A:AE43: 1A        .byte con_X + $1A   ; 

- D 1 - I - 0x02AE54 0A:AE44: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AE55 0A:AE45: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02AE56 0A:AE46: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE57 0A:AE47: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02AE58 0A:AE48: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AE59 0A:AE49: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02AE5A 0A:AE4A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE5B 0A:AE4B: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02AE5C 0A:AE4C: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AE5D 0A:AE4D: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02AE5E 0A:AE4E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE5F 0A:AE4F: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02AE60 0A:AE50: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AE61 0A:AE51: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02AE62 0A:AE52: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE63 0A:AE53: 0D        .byte con_X + $0D   ; 

- D 1 - I - 0x02AE64 0A:AE54: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AE65 0A:AE55: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02AE66 0A:AE56: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE67 0A:AE57: 15        .byte con_X + $15   ; 

- D 1 - I - 0x02AE68 0A:AE58: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AE69 0A:AE59: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02AE6A 0A:AE5A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE6B 0A:AE5B: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02AE6C 0A:AE5C: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AE6D 0A:AE5D: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02AE6E 0A:AE5E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE6F 0A:AE5F: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02AE70 0A:AE60: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AE71 0A:AE61: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02AE72 0A:AE62: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE73 0A:AE63: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02AE74 0A:AE64: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AE75 0A:AE65: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02AE76 0A:AE66: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE77 0A:AE67: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02AE78 0A:AE68: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AE79 0A:AE69: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02AE7A 0A:AE6A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE7B 0A:AE6B: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02AE7C 0A:AE6C: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AE7D 0A:AE6D: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02AE7E 0A:AE6E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE7F 0A:AE6F: 01        .byte con_X + $01   ; 
@end:



_off008_AE70_44:
- D 1 - I - 0x02AE80 0A:AE70: 15        .byte (@end - * - 1) / 4

- D 1 - I - 0x02AE81 0A:AE71: A6        .byte con_Y + $A6   ; 
- D 1 - I - 0x02AE82 0A:AE72: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02AE83 0A:AE73: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE84 0A:AE74: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02AE85 0A:AE75: A6        .byte con_Y + $A6   ; 
- D 1 - I - 0x02AE86 0A:AE76: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02AE87 0A:AE77: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE88 0A:AE78: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02AE89 0A:AE79: A6        .byte con_Y + $A6   ; 
- D 1 - I - 0x02AE8A 0A:AE7A: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02AE8B 0A:AE7B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE8C 0A:AE7C: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02AE8D 0A:AE7D: A6        .byte con_Y + $A6   ; 
- D 1 - I - 0x02AE8E 0A:AE7E: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02AE8F 0A:AE7F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE90 0A:AE80: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02AE91 0A:AE81: A6        .byte con_Y + $A6   ; 
- D 1 - I - 0x02AE92 0A:AE82: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02AE93 0A:AE83: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE94 0A:AE84: 20        .byte con_X + $20   ; 

- D 1 - I - 0x02AE95 0A:AE85: B6        .byte con_Y + $B6   ; 
- D 1 - I - 0x02AE96 0A:AE86: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02AE97 0A:AE87: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE98 0A:AE88: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02AE99 0A:AE89: B6        .byte con_Y + $B6   ; 
- D 1 - I - 0x02AE9A 0A:AE8A: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02AE9B 0A:AE8B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AE9C 0A:AE8C: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02AE9D 0A:AE8D: B6        .byte con_Y + $B6   ; 
- D 1 - I - 0x02AE9E 0A:AE8E: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02AE9F 0A:AE8F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AEA0 0A:AE90: 0D        .byte con_X + $0D   ; 

- D 1 - I - 0x02AEA1 0A:AE91: B6        .byte con_Y + $B6   ; 
- D 1 - I - 0x02AEA2 0A:AE92: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02AEA3 0A:AE93: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AEA4 0A:AE94: 15        .byte con_X + $15   ; 

- D 1 - I - 0x02AEA5 0A:AE95: B6        .byte con_Y + $B6   ; 
- D 1 - I - 0x02AEA6 0A:AE96: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02AEA7 0A:AE97: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AEA8 0A:AE98: 1D        .byte con_X + $1D   ; 

- D 1 - I - 0x02AEA9 0A:AE99: C6        .byte con_Y + $C6   ; 
- D 1 - I - 0x02AEAA 0A:AE9A: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02AEAB 0A:AE9B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AEAC 0A:AE9C: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02AEAD 0A:AE9D: D6        .byte con_Y + $D6   ; 
- D 1 - I - 0x02AEAE 0A:AE9E: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02AEAF 0A:AE9F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AEB0 0A:AEA0: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02AEB1 0A:AEA1: C6        .byte con_Y + $C6   ; 
- D 1 - I - 0x02AEB2 0A:AEA2: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02AEB3 0A:AEA3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AEB4 0A:AEA4: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02AEB5 0A:AEA5: D6        .byte con_Y + $D6   ; 
- D 1 - I - 0x02AEB6 0A:AEA6: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02AEB7 0A:AEA7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AEB8 0A:AEA8: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02AEB9 0A:AEA9: D6        .byte con_Y + $D6   ; 
- D 1 - I - 0x02AEBA 0A:AEAA: 35        .byte con_T + $35   ; 
- D 1 - I - 0x02AEBB 0A:AEAB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AEBC 0A:AEAC: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02AEBD 0A:AEAD: D6        .byte con_Y + $D6   ; 
- D 1 - I - 0x02AEBE 0A:AEAE: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02AEBF 0A:AEAF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AEC0 0A:AEB0: 13        .byte con_X + $13   ; 

- D 1 - I - 0x02AEC1 0A:AEB1: E6        .byte con_Y + $E6   ; 
- D 1 - I - 0x02AEC2 0A:AEB2: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02AEC3 0A:AEB3: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02AEC4 0A:AEB4: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02AEC5 0A:AEB5: C6        .byte con_Y + $C6   ; 
- D 1 - I - 0x02AEC6 0A:AEB6: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02AEC7 0A:AEB7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AEC8 0A:AEB8: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02AEC9 0A:AEB9: C6        .byte con_Y + $C6   ; 
- D 1 - I - 0x02AECA 0A:AEBA: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02AECB 0A:AEBB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AECC 0A:AEBC: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02AECD 0A:AEBD: C6        .byte con_Y + $C6   ; 
- D 1 - I - 0x02AECE 0A:AEBE: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02AECF 0A:AEBF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AED0 0A:AEC0: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02AED1 0A:AEC1: D6        .byte con_Y + $D6   ; 
- D 1 - I - 0x02AED2 0A:AEC2: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02AED3 0A:AEC3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AED4 0A:AEC4: 03        .byte con_X + $03   ; 
@end:



.export tbl_0x02AED5_Shred
tbl_0x02AED5_Shred:
- D 1 - I - 0x02AED5 0A:AEC5: 5B AF     .word _off009_AF5B_00
- D 1 - I - 0x02AED7 0A:AEC7: 8C AF     .word _off009_AF8C_01
- D 1 - I - 0x02AED9 0A:AEC9: BD AF     .word _off009_AFBD_02
- D 1 - I - 0x02AEDB 0A:AECB: EE AF     .word _off009_AFEE_03
- D 1 - I - 0x02AEDD 0A:AECD: 17 B0     .word _off009_B017_04
- D 1 - I - 0x02AEDF 0A:AECF: 4C B0     .word _off009_B04C_05
- D 1 - I - 0x02AEE1 0A:AED1: 79 B0     .word _off009_B079_06
- D 1 - I - 0x02AEE3 0A:AED3: AE B0     .word _off009_B0AE_07
- D 1 - I - 0x02AEE5 0A:AED5: DB B0     .word _off009_B0DB_08
- D 1 - I - 0x02AEE7 0A:AED7: 08 B1     .word _off009_B108_09
- D 1 - I - 0x02AEE9 0A:AED9: 3D B1     .word _off009_B13D_0A
- D 1 - I - 0x02AEEB 0A:AEDB: 6E B1     .word _off009_B16E_0B
- D 1 - I - 0x02AEED 0A:AEDD: 9F B1     .word _off009_B19F_0C
- D 1 - I - 0x02AEEF 0A:AEDF: D0 B1     .word _off009_B1D0_0D
- D 1 - I - 0x02AEF1 0A:AEE1: 05 B2     .word _off009_B205_0E
- D 1 - I - 0x02AEF3 0A:AEE3: 32 B2     .word _off009_B232_0F
- D 1 - I - 0x02AEF5 0A:AEE5: 6B B2     .word _off009_B26B_10
- D 1 - I - 0x02AEF7 0A:AEE7: 9C B2     .word _off009_B29C_11
- D 1 - I - 0x02AEF9 0A:AEE9: C1 B2     .word _off009_B2C1_12
- D 1 - I - 0x02AEFB 0A:AEEB: EA B2     .word _off009_B2EA_13
- D 1 - I - 0x02AEFD 0A:AEED: 1F B3     .word _off009_B31F_14
- D 1 - I - 0x02AEFF 0A:AEEF: 54 B3     .word _off009_B354_15
- D 1 - I - 0x02AF01 0A:AEF1: 89 B3     .word _off009_B389_16
- D 1 - I - 0x02AF03 0A:AEF3: C2 B3     .word _off009_B3C2_17
- D 1 - I - 0x02AF05 0A:AEF5: EB B3     .word _off009_B3EB_18
- D 1 - I - 0x02AF07 0A:AEF7: 20 B4     .word _off009_B420_19
- D 1 - I - 0x02AF09 0A:AEF9: 4D B4     .word _off009_B44D_1A
- D 1 - I - 0x02AF0B 0A:AEFB: 72 B4     .word _off009_B472_1B
- D 1 - I - 0x02AF0D 0A:AEFD: 9F B4     .word _off009_B49F_1C
- D 1 - I - 0x02AF0F 0A:AEFF: D4 B4     .word _off009_B4D4_1D
- D 1 - I - 0x02AF11 0A:AF01: F9 B4     .word _off009_B4F9_1E
- D 1 - I - 0x02AF13 0A:AF03: 1E B5     .word _off009_B51E_1F
- D 1 - I - 0x02AF15 0A:AF05: 4F B5     .word _off009_B54F_20
- D 1 - I - 0x02AF17 0A:AF07: 74 B5     .word _off009_B574_21
- D 1 - I - 0x02AF19 0A:AF09: A1 B5     .word _off009_B5A1_22
- D 1 - I - 0x02AF1B 0A:AF0B: CE B5     .word _off009_B5CE_23
- D 1 - I - 0x02AF1D 0A:AF0D: 03 B6     .word _off009_B603_24
- D 1 - I - 0x02AF1F 0A:AF0F: 38 B6     .word _off009_B638_25
- D 1 - I - 0x02AF21 0A:AF11: 6D B6     .word _off009_B66D_26
- D 1 - I - 0x02AF23 0A:AF13: 9A B6     .word _off009_B69A_27
- D 1 - I - 0x02AF25 0A:AF15: C3 B6     .word _off009_B6C3_28
- D 1 - I - 0x02AF27 0A:AF17: F0 B6     .word _off009_B6F0_29
- D 1 - I - 0x02AF29 0A:AF19: 1D B7     .word _off009_B71D_2A
- D 1 - I - 0x02AF2B 0A:AF1B: 4A B7     .word _off009_B74A_2B
- D 1 - I - 0x02AF2D 0A:AF1D: 4F B7     .word _off009_B74F_2C
- D 1 - I - 0x02AF2F 0A:AF1F: 58 B7     .word _off009_B758_2D
- D 1 - I - 0x02AF31 0A:AF21: 65 B7     .word _off009_B765_2E
- D 1 - I - 0x02AF33 0A:AF23: 96 B7     .word _off009_B796_2F
- D 1 - I - 0x02AF35 0A:AF25: BF B7     .word _off009_B7BF_30
- D 1 - I - 0x02AF37 0A:AF27: F0 B7     .word _off009_B7F0_31
- D 1 - I - 0x02AF39 0A:AF29: 01 B8     .word _off009_B801_32
- D 1 - I - 0x02AF3B 0A:AF2B: 12 B8     .word _off009_B812_33
- D 1 - I - 0x02AF3D 0A:AF2D: 23 B8     .word _off009_B823_34
- D 1 - I - 0x02AF3F 0A:AF2F: 58 B8     .word _off009_B858_35
- D 1 - I - 0x02AF41 0A:AF31: 91 B8     .word _off009_B891_36
- D 1 - I - 0x02AF43 0A:AF33: C6 B8     .word _off009_B8C6_37
- D 1 - I - 0x02AF45 0A:AF35: EF B8     .word _off009_B8EF_38
- D 1 - I - 0x02AF47 0A:AF37: 18 B9     .word _off009_B918_39
- D 1 - I - 0x02AF49 0A:AF39: 45 B9     .word _off009_B945_3A
- D 1 - I - 0x02AF4B 0A:AF3B: 76 B9     .word _off009_B976_3B
- D 1 - I - 0x02AF4D 0A:AF3D: A7 B9     .word _off009_B9A7_3C
- D 1 - I - 0x02AF4F 0A:AF3F: AC B9     .word _off009_B9AC_3D
- D 1 - I - 0x02AF51 0A:AF41: B9 B9     .word _off009_B9B9_3E
- D 1 - I - 0x02AF53 0A:AF43: C2 B9     .word _off009_B9C2_3F
- D 1 - I - 0x02AF55 0A:AF45: C7 B9     .word _off009_B9C7_40
- D 1 - I - 0x02AF57 0A:AF47: D0 B9     .word _off009_B9D0_41
- D 1 - I - 0x02AF59 0A:AF49: D9 B9     .word _off009_B9D9_42
- D 1 - I - 0x02AF5B 0A:AF4B: 06 BA     .word _off009_BA06_43
- D 1 - I - 0x02AF5D 0A:AF4D: 37 BA     .word _off009_BA37_44
- D 1 - I - 0x02AF5F 0A:AF4F: 70 BA     .word _off009_BA70_45
- D 1 - I - 0x02AF61 0A:AF51: A1 BA     .word _off009_BAA1_46
- D 1 - I - 0x02AF63 0A:AF53: DA BA     .word _off009_BADA_47
- D 1 - I - 0x02AF65 0A:AF55: 13 BB     .word _off009_BB13_48
- D 1 - I - 0x02AF67 0A:AF57: 48 BB     .word _off009_BB48_49
- D 1 - I - 0x02AF69 0A:AF59: 79 BB     .word _off009_BB79_4A



_off009_AF5B_00:
- D 1 - I - 0x02AF6B 0A:AF5B: 0C        .byte (@end - * - 1) / 4

- D 1 - I - 0x02AF6C 0A:AF5C: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02AF6D 0A:AF5D: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02AF6E 0A:AF5E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AF6F 0A:AF5F: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02AF70 0A:AF60: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02AF71 0A:AF61: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02AF72 0A:AF62: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AF73 0A:AF63: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02AF74 0A:AF64: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02AF75 0A:AF65: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02AF76 0A:AF66: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AF77 0A:AF67: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02AF78 0A:AF68: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02AF79 0A:AF69: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02AF7A 0A:AF6A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AF7B 0A:AF6B: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02AF7C 0A:AF6C: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02AF7D 0A:AF6D: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02AF7E 0A:AF6E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AF7F 0A:AF6F: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02AF80 0A:AF70: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02AF81 0A:AF71: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02AF82 0A:AF72: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AF83 0A:AF73: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02AF84 0A:AF74: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02AF85 0A:AF75: 59        .byte con_T + $59   ; 
- D 1 - I - 0x02AF86 0A:AF76: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AF87 0A:AF77: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02AF88 0A:AF78: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02AF89 0A:AF79: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02AF8A 0A:AF7A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AF8B 0A:AF7B: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02AF8C 0A:AF7C: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02AF8D 0A:AF7D: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02AF8E 0A:AF7E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AF8F 0A:AF7F: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02AF90 0A:AF80: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02AF91 0A:AF81: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02AF92 0A:AF82: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AF93 0A:AF83: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02AF94 0A:AF84: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02AF95 0A:AF85: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02AF96 0A:AF86: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AF97 0A:AF87: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02AF98 0A:AF88: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02AF99 0A:AF89: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02AF9A 0A:AF8A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AF9B 0A:AF8B: 07        .byte con_X + $07   ; 
@end:



_off009_AF8C_01:
- D 1 - I - 0x02AF9C 0A:AF8C: 0C        .byte (@end - * - 1) / 4

- D 1 - I - 0x02AF9D 0A:AF8D: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AF9E 0A:AF8E: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02AF9F 0A:AF8F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFA0 0A:AF90: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02AFA1 0A:AF91: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AFA2 0A:AF92: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02AFA3 0A:AF93: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFA4 0A:AF94: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02AFA5 0A:AF95: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02AFA6 0A:AF96: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02AFA7 0A:AF97: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFA8 0A:AF98: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02AFA9 0A:AF99: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AFAA 0A:AF9A: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02AFAB 0A:AF9B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFAC 0A:AF9C: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02AFAD 0A:AF9D: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AFAE 0A:AF9E: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02AFAF 0A:AF9F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFB0 0A:AFA0: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02AFB1 0A:AFA1: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02AFB2 0A:AFA2: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02AFB3 0A:AFA3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFB4 0A:AFA4: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02AFB5 0A:AFA5: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AFB6 0A:AFA6: 53        .byte con_T + $53   ; 
- D 1 - I - 0x02AFB7 0A:AFA7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFB8 0A:AFA8: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02AFB9 0A:AFA9: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AFBA 0A:AFAA: 57        .byte con_T + $57   ; 
- D 1 - I - 0x02AFBB 0A:AFAB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFBC 0A:AFAC: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02AFBD 0A:AFAD: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02AFBE 0A:AFAE: 55        .byte con_T + $55   ; 
- D 1 - I - 0x02AFBF 0A:AFAF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFC0 0A:AFB0: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02AFC1 0A:AFB1: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AFC2 0A:AFB2: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02AFC3 0A:AFB3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFC4 0A:AFB4: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02AFC5 0A:AFB5: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AFC6 0A:AFB6: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02AFC7 0A:AFB7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFC8 0A:AFB8: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02AFC9 0A:AFB9: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02AFCA 0A:AFBA: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02AFCB 0A:AFBB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFCC 0A:AFBC: 08        .byte con_X + $08   ; 
@end:



_off009_AFBD_02:
- D 1 - I - 0x02AFCD 0A:AFBD: 0C        .byte (@end - * - 1) / 4

- D 1 - I - 0x02AFCE 0A:AFBE: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02AFCF 0A:AFBF: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02AFD0 0A:AFC0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFD1 0A:AFC1: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02AFD2 0A:AFC2: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02AFD3 0A:AFC3: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02AFD4 0A:AFC4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFD5 0A:AFC5: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02AFD6 0A:AFC6: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02AFD7 0A:AFC7: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02AFD8 0A:AFC8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFD9 0A:AFC9: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02AFDA 0A:AFCA: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02AFDB 0A:AFCB: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02AFDC 0A:AFCC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFDD 0A:AFCD: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02AFDE 0A:AFCE: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02AFDF 0A:AFCF: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02AFE0 0A:AFD0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFE1 0A:AFD1: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02AFE2 0A:AFD2: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02AFE3 0A:AFD3: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02AFE4 0A:AFD4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFE5 0A:AFD5: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02AFE6 0A:AFD6: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02AFE7 0A:AFD7: 59        .byte con_T + $59   ; 
- D 1 - I - 0x02AFE8 0A:AFD8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFE9 0A:AFD9: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02AFEA 0A:AFDA: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02AFEB 0A:AFDB: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02AFEC 0A:AFDC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFED 0A:AFDD: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02AFEE 0A:AFDE: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02AFEF 0A:AFDF: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02AFF0 0A:AFE0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFF1 0A:AFE1: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02AFF2 0A:AFE2: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02AFF3 0A:AFE3: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02AFF4 0A:AFE4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFF5 0A:AFE5: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02AFF6 0A:AFE6: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02AFF7 0A:AFE7: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02AFF8 0A:AFE8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFF9 0A:AFE9: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02AFFA 0A:AFEA: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02AFFB 0A:AFEB: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02AFFC 0A:AFEC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02AFFD 0A:AFED: 09        .byte con_X + $09   ; 
@end:



_off009_AFEE_03:
- D 1 - I - 0x02AFFE 0A:AFEE: 0A        .byte (@end - * - 1) / 4

- D 1 - I - 0x02AFFF 0A:AFEF: C3        .byte con_Y + $C3   ; 
- D 1 - I - 0x02B000 0A:AFF0: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B001 0A:AFF1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B002 0A:AFF2: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B003 0A:AFF3: C3        .byte con_Y + $C3   ; 
- D 1 - I - 0x02B004 0A:AFF4: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B005 0A:AFF5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B006 0A:AFF6: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02B007 0A:AFF7: C3        .byte con_Y + $C3   ; 
- D 1 - I - 0x02B008 0A:AFF8: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B009 0A:AFF9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B00A 0A:AFFA: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02B00B 0A:AFFB: D3        .byte con_Y + $D3   ; 
- D 1 - I - 0x02B00C 0A:AFFC: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B00D 0A:AFFD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B00E 0A:AFFE: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B00F 0A:AFFF: D3        .byte con_Y + $D3   ; 
- D 1 - I - 0x02B010 0A:B000: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B011 0A:B001: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B012 0A:B002: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02B013 0A:B003: D3        .byte con_Y + $D3   ; 
- D 1 - I - 0x02B014 0A:B004: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02B015 0A:B005: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B016 0A:B006: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02B017 0A:B007: E3        .byte con_Y + $E3   ; 
- D 1 - I - 0x02B018 0A:B008: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02B019 0A:B009: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B01A 0A:B00A: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02B01B 0A:B00B: E3        .byte con_Y + $E3   ; 
- D 1 - I - 0x02B01C 0A:B00C: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02B01D 0A:B00D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B01E 0A:B00E: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02B01F 0A:B00F: F3        .byte con_Y + $F3   ; 
- D 1 - I - 0x02B020 0A:B010: 57        .byte con_T + $57   ; 
- D 1 - I - 0x02B021 0A:B011: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B022 0A:B012: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02B023 0A:B013: F3        .byte con_Y + $F3   ; 
- D 1 - I - 0x02B024 0A:B014: 59        .byte con_T + $59   ; 
- D 1 - I - 0x02B025 0A:B015: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B026 0A:B016: 07        .byte con_X + $07   ; 
@end:



_off009_B017_04:
- D 1 - I - 0x02B027 0A:B017: 0D        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B028 0A:B018: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B029 0A:B019: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B02A 0A:B01A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B02B 0A:B01B: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B02C 0A:B01C: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B02D 0A:B01D: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B02E 0A:B01E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B02F 0A:B01F: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02B030 0A:B020: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B031 0A:B021: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B032 0A:B022: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B033 0A:B023: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02B034 0A:B024: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B035 0A:B025: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B036 0A:B026: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B037 0A:B027: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B038 0A:B028: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B039 0A:B029: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B03A 0A:B02A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B03B 0A:B02B: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02B03C 0A:B02C: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B03D 0A:B02D: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02B03E 0A:B02E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B03F 0A:B02F: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02B040 0A:B030: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B041 0A:B031: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02B042 0A:B032: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B043 0A:B033: EB        .byte con_X + $EB   ; 

- D 1 - I - 0x02B044 0A:B034: E6        .byte con_Y + $E6   ; 
- D 1 - I - 0x02B045 0A:B035: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02B046 0A:B036: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B047 0A:B037: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02B048 0A:B038: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B049 0A:B039: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02B04A 0A:B03A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B04B 0A:B03B: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02B04C 0A:B03C: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B04D 0A:B03D: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02B04E 0A:B03E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B04F 0A:B03F: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02B050 0A:B040: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B051 0A:B041: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02B052 0A:B042: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B053 0A:B043: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02B054 0A:B044: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B055 0A:B045: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02B056 0A:B046: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B057 0A:B047: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02B058 0A:B048: EE        .byte con_Y + $EE   ; 
- D 1 - I - 0x02B059 0A:B049: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02B05A 0A:B04A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B05B 0A:B04B: 13        .byte con_X + $13   ; 
@end:



_off009_B04C_05:
- D 1 - I - 0x02B05C 0A:B04C: 0B        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B05D 0A:B04D: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B05E 0A:B04E: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B05F 0A:B04F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B060 0A:B050: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B061 0A:B051: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B062 0A:B052: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B063 0A:B053: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B064 0A:B054: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02B065 0A:B055: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B066 0A:B056: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B067 0A:B057: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B068 0A:B058: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02B069 0A:B059: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B06A 0A:B05A: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B06B 0A:B05B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B06C 0A:B05C: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B06D 0A:B05D: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B06E 0A:B05E: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B06F 0A:B05F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B070 0A:B060: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02B071 0A:B061: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B072 0A:B062: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02B073 0A:B063: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B074 0A:B064: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02B075 0A:B065: E6        .byte con_Y + $E6   ; 
- D 1 - I - 0x02B076 0A:B066: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02B077 0A:B067: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B078 0A:B068: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02B079 0A:B069: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B07A 0A:B06A: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02B07B 0A:B06B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B07C 0A:B06C: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B07D 0A:B06D: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B07E 0A:B06E: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02B07F 0A:B06F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B080 0A:B070: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02B081 0A:B071: E8        .byte con_Y + $E8   ; 
- D 1 - I - 0x02B082 0A:B072: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02B083 0A:B073: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B084 0A:B074: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02B085 0A:B075: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B086 0A:B076: 57        .byte con_T + $57   ; 
- D 1 - I - 0x02B087 0A:B077: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B088 0A:B078: 04        .byte con_X + $04   ; 
@end:



_off009_B079_06:
- D 1 - I - 0x02B089 0A:B079: 0D        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B08A 0A:B07A: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B08B 0A:B07B: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B08C 0A:B07C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B08D 0A:B07D: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B08E 0A:B07E: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B08F 0A:B07F: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B090 0A:B080: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B091 0A:B081: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02B092 0A:B082: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B093 0A:B083: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B094 0A:B084: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B095 0A:B085: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02B096 0A:B086: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B097 0A:B087: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B098 0A:B088: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B099 0A:B089: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B09A 0A:B08A: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B09B 0A:B08B: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B09C 0A:B08C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B09D 0A:B08D: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02B09E 0A:B08E: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B09F 0A:B08F: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02B0A0 0A:B090: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0A1 0A:B091: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02B0A2 0A:B092: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B0A3 0A:B093: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02B0A4 0A:B094: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0A5 0A:B095: ED        .byte con_X + $ED   ; 

- D 1 - I - 0x02B0A6 0A:B096: E6        .byte con_Y + $E6   ; 
- D 1 - I - 0x02B0A7 0A:B097: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02B0A8 0A:B098: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0A9 0A:B099: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02B0AA 0A:B09A: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B0AB 0A:B09B: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02B0AC 0A:B09C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0AD 0A:B09D: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02B0AE 0A:B09E: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B0AF 0A:B09F: 35        .byte con_T + $35   ; 
- D 1 - I - 0x02B0B0 0A:B0A0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0B1 0A:B0A1: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02B0B2 0A:B0A2: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B0B3 0A:B0A3: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02B0B4 0A:B0A4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0B5 0A:B0A5: 0D        .byte con_X + $0D   ; 

- D 1 - I - 0x02B0B6 0A:B0A6: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B0B7 0A:B0A7: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02B0B8 0A:B0A8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0B9 0A:B0A9: 0D        .byte con_X + $0D   ; 

- D 1 - I - 0x02B0BA 0A:B0AA: EE        .byte con_Y + $EE   ; 
- D 1 - I - 0x02B0BB 0A:B0AB: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02B0BC 0A:B0AC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0BD 0A:B0AD: 15        .byte con_X + $15   ; 
@end:



_off009_B0AE_07:
- D 1 - I - 0x02B0BE 0A:B0AE: 0B        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B0BF 0A:B0AF: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B0C0 0A:B0B0: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B0C1 0A:B0B1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0C2 0A:B0B2: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B0C3 0A:B0B3: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B0C4 0A:B0B4: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B0C5 0A:B0B5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0C6 0A:B0B6: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02B0C7 0A:B0B7: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B0C8 0A:B0B8: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B0C9 0A:B0B9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0CA 0A:B0BA: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02B0CB 0A:B0BB: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B0CC 0A:B0BC: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B0CD 0A:B0BD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0CE 0A:B0BE: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B0CF 0A:B0BF: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B0D0 0A:B0C0: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B0D1 0A:B0C1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0D2 0A:B0C2: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02B0D3 0A:B0C3: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B0D4 0A:B0C4: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02B0D5 0A:B0C5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0D6 0A:B0C6: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02B0D7 0A:B0C7: E6        .byte con_Y + $E6   ; 
- D 1 - I - 0x02B0D8 0A:B0C8: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02B0D9 0A:B0C9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0DA 0A:B0CA: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02B0DB 0A:B0CB: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B0DC 0A:B0CC: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02B0DD 0A:B0CD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0DE 0A:B0CE: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02B0DF 0A:B0CF: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B0E0 0A:B0D0: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02B0E1 0A:B0D1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0E2 0A:B0D2: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02B0E3 0A:B0D3: E8        .byte con_Y + $E8   ; 
- D 1 - I - 0x02B0E4 0A:B0D4: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02B0E5 0A:B0D5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0E6 0A:B0D6: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02B0E7 0A:B0D7: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B0E8 0A:B0D8: 57        .byte con_T + $57   ; 
- D 1 - I - 0x02B0E9 0A:B0D9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0EA 0A:B0DA: 03        .byte con_X + $03   ; 
@end:



_off009_B0DB_08:
- D 1 - I - 0x02B0EB 0A:B0DB: 0B        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B0EC 0A:B0DC: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B0ED 0A:B0DD: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B0EE 0A:B0DE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0EF 0A:B0DF: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02B0F0 0A:B0E0: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B0F1 0A:B0E1: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B0F2 0A:B0E2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0F3 0A:B0E3: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02B0F4 0A:B0E4: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B0F5 0A:B0E5: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B0F6 0A:B0E6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0F7 0A:B0E7: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02B0F8 0A:B0E8: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B0F9 0A:B0E9: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B0FA 0A:B0EA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0FB 0A:B0EB: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02B0FC 0A:B0EC: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B0FD 0A:B0ED: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02B0FE 0A:B0EE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B0FF 0A:B0EF: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02B100 0A:B0F0: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B101 0A:B0F1: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02B102 0A:B0F2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B103 0A:B0F3: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02B104 0A:B0F4: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B105 0A:B0F5: 53        .byte con_T + $53   ; 
- D 1 - I - 0x02B106 0A:B0F6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B107 0A:B0F7: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02B108 0A:B0F8: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B109 0A:B0F9: 55        .byte con_T + $55   ; 
- D 1 - I - 0x02B10A 0A:B0FA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B10B 0A:B0FB: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02B10C 0A:B0FC: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B10D 0A:B0FD: 5F        .byte con_T + $5F   ; 
- D 1 - I - 0x02B10E 0A:B0FE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B10F 0A:B0FF: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02B110 0A:B100: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B111 0A:B101: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02B112 0A:B102: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B113 0A:B103: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02B114 0A:B104: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B115 0A:B105: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02B116 0A:B106: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B117 0A:B107: 04        .byte con_X + $04   ; 
@end:



_off009_B108_09:
- D 1 - I - 0x02B118 0A:B108: 0D        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B119 0A:B109: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B11A 0A:B10A: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B11B 0A:B10B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B11C 0A:B10C: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02B11D 0A:B10D: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B11E 0A:B10E: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B11F 0A:B10F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B120 0A:B110: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02B121 0A:B111: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B122 0A:B112: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B123 0A:B113: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B124 0A:B114: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02B125 0A:B115: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B126 0A:B116: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B127 0A:B117: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B128 0A:B118: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02B129 0A:B119: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B12A 0A:B11A: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02B12B 0A:B11B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B12C 0A:B11C: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02B12D 0A:B11D: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B12E 0A:B11E: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02B12F 0A:B11F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B130 0A:B120: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02B131 0A:B121: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B132 0A:B122: 57        .byte con_T + $57   ; 
- D 1 - I - 0x02B133 0A:B123: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B134 0A:B124: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02B135 0A:B125: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B136 0A:B126: 55        .byte con_T + $55   ; 
- D 1 - I - 0x02B137 0A:B127: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B138 0A:B128: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02B139 0A:B129: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B13A 0A:B12A: 53        .byte con_T + $53   ; 
- D 1 - I - 0x02B13B 0A:B12B: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B13C 0A:B12C: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02B13D 0A:B12D: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B13E 0A:B12E: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02B13F 0A:B12F: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B140 0A:B130: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02B141 0A:B131: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B142 0A:B132: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02B143 0A:B133: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B144 0A:B134: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B145 0A:B135: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B146 0A:B136: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02B147 0A:B137: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B148 0A:B138: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02B149 0A:B139: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B14A 0A:B13A: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02B14B 0A:B13B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B14C 0A:B13C: 0B        .byte con_X + $0B   ; 
@end:



_off009_B13D_0A:
- D 1 - I - 0x02B14D 0A:B13D: 0C        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B14E 0A:B13E: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B14F 0A:B13F: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B150 0A:B140: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B151 0A:B141: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02B152 0A:B142: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B153 0A:B143: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B154 0A:B144: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B155 0A:B145: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02B156 0A:B146: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B157 0A:B147: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B158 0A:B148: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B159 0A:B149: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02B15A 0A:B14A: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B15B 0A:B14B: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B15C 0A:B14C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B15D 0A:B14D: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02B15E 0A:B14E: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B15F 0A:B14F: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02B160 0A:B150: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B161 0A:B151: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02B162 0A:B152: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B163 0A:B153: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02B164 0A:B154: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B165 0A:B155: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02B166 0A:B156: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B167 0A:B157: 59        .byte con_T + $59   ; 
- D 1 - I - 0x02B168 0A:B158: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B169 0A:B159: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02B16A 0A:B15A: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B16B 0A:B15B: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02B16C 0A:B15C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B16D 0A:B15D: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02B16E 0A:B15E: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B16F 0A:B15F: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02B170 0A:B160: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B171 0A:B161: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02B172 0A:B162: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B173 0A:B163: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B174 0A:B164: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B175 0A:B165: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02B176 0A:B166: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B177 0A:B167: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02B178 0A:B168: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B179 0A:B169: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02B17A 0A:B16A: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B17B 0A:B16B: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02B17C 0A:B16C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B17D 0A:B16D: 07        .byte con_X + $07   ; 
@end:



_off009_B16E_0B:
- D 1 - I - 0x02B17E 0A:B16E: 0C        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B17F 0A:B16F: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B180 0A:B170: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B181 0A:B171: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B182 0A:B172: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02B183 0A:B173: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B184 0A:B174: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B185 0A:B175: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B186 0A:B176: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02B187 0A:B177: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B188 0A:B178: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B189 0A:B179: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B18A 0A:B17A: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02B18B 0A:B17B: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B18C 0A:B17C: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B18D 0A:B17D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B18E 0A:B17E: F7        .byte con_X + $F7   ; 

- D 1 - I - 0x02B18F 0A:B17F: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B190 0A:B180: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02B191 0A:B181: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B192 0A:B182: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02B193 0A:B183: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B194 0A:B184: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02B195 0A:B185: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B196 0A:B186: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02B197 0A:B187: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B198 0A:B188: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B199 0A:B189: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B19A 0A:B18A: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02B19B 0A:B18B: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B19C 0A:B18C: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02B19D 0A:B18D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B19E 0A:B18E: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B19F 0A:B18F: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B1A0 0A:B190: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02B1A1 0A:B191: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B1A2 0A:B192: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02B1A3 0A:B193: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B1A4 0A:B194: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02B1A5 0A:B195: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B1A6 0A:B196: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02B1A7 0A:B197: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B1A8 0A:B198: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02B1A9 0A:B199: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B1AA 0A:B19A: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02B1AB 0A:B19B: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B1AC 0A:B19C: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02B1AD 0A:B19D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B1AE 0A:B19E: 03        .byte con_X + $03   ; 
@end:



_off009_B19F_0C:
- D 1 - I - 0x02B1AF 0A:B19F: 0C        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B1B0 0A:B1A0: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B1B1 0A:B1A1: 35        .byte con_T + $35   ; 
- D 1 - I - 0x02B1B2 0A:B1A2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B1B3 0A:B1A3: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02B1B4 0A:B1A4: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B1B5 0A:B1A5: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02B1B6 0A:B1A6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B1B7 0A:B1A7: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B1B8 0A:B1A8: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B1B9 0A:B1A9: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02B1BA 0A:B1AA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B1BB 0A:B1AB: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B1BC 0A:B1AC: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B1BD 0A:B1AD: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02B1BE 0A:B1AE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B1BF 0A:B1AF: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02B1C0 0A:B1B0: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B1C1 0A:B1B1: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02B1C2 0A:B1B2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B1C3 0A:B1B3: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B1C4 0A:B1B4: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B1C5 0A:B1B5: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02B1C6 0A:B1B6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B1C7 0A:B1B7: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02B1C8 0A:B1B8: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B1C9 0A:B1B9: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02B1CA 0A:B1BA: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B1CB 0A:B1BB: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02B1CC 0A:B1BC: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B1CD 0A:B1BD: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02B1CE 0A:B1BE: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B1CF 0A:B1BF: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02B1D0 0A:B1C0: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B1D1 0A:B1C1: 59        .byte con_T + $59   ; 
- D 1 - I - 0x02B1D2 0A:B1C2: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B1D3 0A:B1C3: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02B1D4 0A:B1C4: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B1D5 0A:B1C5: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02B1D6 0A:B1C6: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B1D7 0A:B1C7: EF        .byte con_X + $EF   ; 

- D 1 - I - 0x02B1D8 0A:B1C8: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B1D9 0A:B1C9: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02B1DA 0A:B1CA: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B1DB 0A:B1CB: F7        .byte con_X + $F7   ; 

- D 1 - I - 0x02B1DC 0A:B1CC: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B1DD 0A:B1CD: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B1DE 0A:B1CE: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B1DF 0A:B1CF: 04        .byte con_X + $04   ; 
@end:



_off009_B1D0_0D:
- D 1 - I - 0x02B1E0 0A:B1D0: 0D        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B1E1 0A:B1D1: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B1E2 0A:B1D2: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B1E3 0A:B1D3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B1E4 0A:B1D4: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02B1E5 0A:B1D5: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B1E6 0A:B1D6: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B1E7 0A:B1D7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B1E8 0A:B1D8: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02B1E9 0A:B1D9: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02B1EA 0A:B1DA: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B1EB 0A:B1DB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B1EC 0A:B1DC: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02B1ED 0A:B1DD: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B1EE 0A:B1DE: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B1EF 0A:B1DF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B1F0 0A:B1E0: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02B1F1 0A:B1E1: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B1F2 0A:B1E2: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B1F3 0A:B1E3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B1F4 0A:B1E4: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02B1F5 0A:B1E5: D0        .byte con_Y + $D0   ; 
- D 1 - I - 0x02B1F6 0A:B1E6: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02B1F7 0A:B1E7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B1F8 0A:B1E8: 12        .byte con_X + $12   ; 

- D 1 - I - 0x02B1F9 0A:B1E9: CC        .byte con_Y + $CC   ; 
- D 1 - I - 0x02B1FA 0A:B1EA: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02B1FB 0A:B1EB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B1FC 0A:B1EC: 1A        .byte con_X + $1A   ; 

- D 1 - I - 0x02B1FD 0A:B1ED: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B1FE 0A:B1EE: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02B1FF 0A:B1EF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B200 0A:B1F0: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02B201 0A:B1F1: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B202 0A:B1F2: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02B203 0A:B1F3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B204 0A:B1F4: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02B205 0A:B1F5: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B206 0A:B1F6: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02B207 0A:B1F7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B208 0A:B1F8: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02B209 0A:B1F9: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B20A 0A:B1FA: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02B20B 0A:B1FB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B20C 0A:B1FC: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02B20D 0A:B1FD: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B20E 0A:B1FE: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02B20F 0A:B1FF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B210 0A:B200: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02B211 0A:B201: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B212 0A:B202: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B213 0A:B203: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B214 0A:B204: 08        .byte con_X + $08   ; 
@end:



_off009_B205_0E:
- D 1 - I - 0x02B215 0A:B205: 0B        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B216 0A:B206: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B217 0A:B207: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B218 0A:B208: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B219 0A:B209: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B21A 0A:B20A: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B21B 0A:B20B: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B21C 0A:B20C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B21D 0A:B20D: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B21E 0A:B20E: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B21F 0A:B20F: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02B220 0A:B210: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B221 0A:B211: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02B222 0A:B212: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B223 0A:B213: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02B224 0A:B214: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B225 0A:B215: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02B226 0A:B216: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B227 0A:B217: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02B228 0A:B218: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B229 0A:B219: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02B22A 0A:B21A: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B22B 0A:B21B: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02B22C 0A:B21C: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B22D 0A:B21D: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02B22E 0A:B21E: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B22F 0A:B21F: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02B230 0A:B220: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B231 0A:B221: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02B232 0A:B222: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B233 0A:B223: 59        .byte con_T + $59   ; 
- D 1 - I - 0x02B234 0A:B224: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B235 0A:B225: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02B236 0A:B226: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B237 0A:B227: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02B238 0A:B228: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B239 0A:B229: EF        .byte con_X + $EF   ; 

- D 1 - I - 0x02B23A 0A:B22A: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B23B 0A:B22B: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02B23C 0A:B22C: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B23D 0A:B22D: F7        .byte con_X + $F7   ; 

- D 1 - I - 0x02B23E 0A:B22E: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B23F 0A:B22F: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B240 0A:B230: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B241 0A:B231: 04        .byte con_X + $04   ; 
@end:



_off009_B232_0F:
- D 1 - I - 0x02B242 0A:B232: 0E        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B243 0A:B233: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B244 0A:B234: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B245 0A:B235: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B246 0A:B236: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B247 0A:B237: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B248 0A:B238: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B249 0A:B239: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B24A 0A:B23A: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B24B 0A:B23B: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B24C 0A:B23C: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B24D 0A:B23D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B24E 0A:B23E: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B24F 0A:B23F: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B250 0A:B240: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B251 0A:B241: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B252 0A:B242: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B253 0A:B243: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B254 0A:B244: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02B255 0A:B245: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B256 0A:B246: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B257 0A:B247: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B258 0A:B248: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02B259 0A:B249: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B25A 0A:B24A: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B25B 0A:B24B: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B25C 0A:B24C: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02B25D 0A:B24D: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B25E 0A:B24E: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02B25F 0A:B24F: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B260 0A:B250: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02B261 0A:B251: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B262 0A:B252: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02B263 0A:B253: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B264 0A:B254: 59        .byte con_T + $59   ; 
- D 1 - I - 0x02B265 0A:B255: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B266 0A:B256: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02B267 0A:B257: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B268 0A:B258: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02B269 0A:B259: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B26A 0A:B25A: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02B26B 0A:B25B: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B26C 0A:B25C: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02B26D 0A:B25D: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B26E 0A:B25E: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B26F 0A:B25F: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B270 0A:B260: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B271 0A:B261: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B272 0A:B262: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02B273 0A:B263: C7        .byte con_Y + $C7   ; 
- D 1 - I - 0x02B274 0A:B264: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02B275 0A:B265: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B276 0A:B266: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02B277 0A:B267: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B278 0A:B268: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02B279 0A:B269: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B27A 0A:B26A: 18        .byte con_X + $18   ; 
@end:



_off009_B26B_10:
- D 1 - I - 0x02B27B 0A:B26B: 0C        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B27C 0A:B26C: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B27D 0A:B26D: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B27E 0A:B26E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B27F 0A:B26F: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B280 0A:B270: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B281 0A:B271: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B282 0A:B272: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B283 0A:B273: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02B284 0A:B274: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B285 0A:B275: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B286 0A:B276: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B287 0A:B277: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02B288 0A:B278: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B289 0A:B279: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B28A 0A:B27A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B28B 0A:B27B: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B28C 0A:B27C: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B28D 0A:B27D: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B28E 0A:B27E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B28F 0A:B27F: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02B290 0A:B280: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B291 0A:B281: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02B292 0A:B282: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B293 0A:B283: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02B294 0A:B284: EC        .byte con_Y + $EC   ; 
- D 1 - I - 0x02B295 0A:B285: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02B296 0A:B286: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B297 0A:B287: 14        .byte con_X + $14   ; 

- D 1 - I - 0x02B298 0A:B288: F6        .byte con_Y + $F6   ; 
- D 1 - I - 0x02B299 0A:B289: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02B29A 0A:B28A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B29B 0A:B28B: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02B29C 0A:B28C: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B29D 0A:B28D: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02B29E 0A:B28E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B29F 0A:B28F: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02B2A0 0A:B290: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B2A1 0A:B291: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02B2A2 0A:B292: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B2A3 0A:B293: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02B2A4 0A:B294: F8        .byte con_Y + $F8   ; 
- D 1 - I - 0x02B2A5 0A:B295: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02B2A6 0A:B296: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B2A7 0A:B297: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02B2A8 0A:B298: 04        .byte con_Y + $04   ; 
- D 1 - I - 0x02B2A9 0A:B299: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02B2AA 0A:B29A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B2AB 0A:B29B: 03        .byte con_X + $03   ; 
@end:



_off009_B29C_11:
- D 1 - I - 0x02B2AC 0A:B29C: 09        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B2AD 0A:B29D: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B2AE 0A:B29E: 35        .byte con_T + $35   ; 
- D 1 - I - 0x02B2AF 0A:B29F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B2B0 0A:B2A0: EF        .byte con_X + $EF   ; 

- D 1 - I - 0x02B2B1 0A:B2A1: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B2B2 0A:B2A2: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02B2B3 0A:B2A3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B2B4 0A:B2A4: F7        .byte con_X + $F7   ; 

- D 1 - I - 0x02B2B5 0A:B2A5: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B2B6 0A:B2A6: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02B2B7 0A:B2A7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B2B8 0A:B2A8: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02B2B9 0A:B2A9: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B2BA 0A:B2AA: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02B2BB 0A:B2AB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B2BC 0A:B2AC: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02B2BD 0A:B2AD: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B2BE 0A:B2AE: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02B2BF 0A:B2AF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B2C0 0A:B2B0: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02B2C1 0A:B2B1: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B2C2 0A:B2B2: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02B2C3 0A:B2B3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B2C4 0A:B2B4: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02B2C5 0A:B2B5: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B2C6 0A:B2B6: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02B2C7 0A:B2B7: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B2C8 0A:B2B8: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02B2C9 0A:B2B9: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B2CA 0A:B2BA: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02B2CB 0A:B2BB: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B2CC 0A:B2BC: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B2CD 0A:B2BD: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B2CE 0A:B2BE: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02B2CF 0A:B2BF: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B2D0 0A:B2C0: 04        .byte con_X + $04   ; 
@end:



_off009_B2C1_12:
- D 1 - I - 0x02B2D1 0A:B2C1: 0A        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B2D2 0A:B2C2: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B2D3 0A:B2C3: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B2D4 0A:B2C4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B2D5 0A:B2C5: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02B2D6 0A:B2C6: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B2D7 0A:B2C7: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B2D8 0A:B2C8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B2D9 0A:B2C9: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02B2DA 0A:B2CA: DA        .byte con_Y + $DA   ; 
- D 1 - I - 0x02B2DB 0A:B2CB: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B2DC 0A:B2CC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B2DD 0A:B2CD: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02B2DE 0A:B2CE: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B2DF 0A:B2CF: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B2E0 0A:B2D0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B2E1 0A:B2D1: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02B2E2 0A:B2D2: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B2E3 0A:B2D3: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B2E4 0A:B2D4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B2E5 0A:B2D5: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02B2E6 0A:B2D6: DD        .byte con_Y + $DD   ; 
- D 1 - I - 0x02B2E7 0A:B2D7: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02B2E8 0A:B2D8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B2E9 0A:B2D9: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02B2EA 0A:B2DA: D9        .byte con_Y + $D9   ; 
- D 1 - I - 0x02B2EB 0A:B2DB: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02B2EC 0A:B2DC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B2ED 0A:B2DD: 13        .byte con_X + $13   ; 

- D 1 - I - 0x02B2EE 0A:B2DE: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B2EF 0A:B2DF: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02B2F0 0A:B2E0: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B2F1 0A:B2E1: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02B2F2 0A:B2E2: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B2F3 0A:B2E3: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02B2F4 0A:B2E4: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B2F5 0A:B2E5: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02B2F6 0A:B2E6: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B2F7 0A:B2E7: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02B2F8 0A:B2E8: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B2F9 0A:B2E9: 05        .byte con_X + $05   ; 
@end:



_off009_B2EA_13:
- D 1 - I - 0x02B2FA 0A:B2EA: 0D        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B2FB 0A:B2EB: C5        .byte con_Y + $C5   ; 
- D 1 - I - 0x02B2FC 0A:B2EC: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B2FD 0A:B2ED: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B2FE 0A:B2EE: EC        .byte con_X + $EC   ; 

- D 1 - I - 0x02B2FF 0A:B2EF: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B300 0A:B2F0: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B301 0A:B2F1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B302 0A:B2F2: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02B303 0A:B2F3: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B304 0A:B2F4: 35        .byte con_T + $35   ; 
- D 1 - I - 0x02B305 0A:B2F5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B306 0A:B2F6: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B307 0A:B2F7: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B308 0A:B2F8: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02B309 0A:B2F9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B30A 0A:B2FA: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02B30B 0A:B2FB: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B30C 0A:B2FC: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B30D 0A:B2FD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B30E 0A:B2FE: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02B30F 0A:B2FF: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B310 0A:B300: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02B311 0A:B301: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B312 0A:B302: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B313 0A:B303: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B314 0A:B304: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02B315 0A:B305: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B316 0A:B306: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02B317 0A:B307: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B318 0A:B308: 59        .byte con_T + $59   ; 
- D 1 - I - 0x02B319 0A:B309: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B31A 0A:B30A: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02B31B 0A:B30B: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B31C 0A:B30C: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02B31D 0A:B30D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B31E 0A:B30E: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02B31F 0A:B30F: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B320 0A:B310: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02B321 0A:B311: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B322 0A:B312: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02B323 0A:B313: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B324 0A:B314: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B325 0A:B315: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B326 0A:B316: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02B327 0A:B317: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B328 0A:B318: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02B329 0A:B319: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B32A 0A:B31A: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B32B 0A:B31B: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B32C 0A:B31C: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02B32D 0A:B31D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B32E 0A:B31E: 08        .byte con_X + $08   ; 
@end:



_off009_B31F_14:
- D 1 - I - 0x02B32F 0A:B31F: 0D        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B330 0A:B320: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B331 0A:B321: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B332 0A:B322: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B333 0A:B323: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02B334 0A:B324: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B335 0A:B325: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B336 0A:B326: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B337 0A:B327: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02B338 0A:B328: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02B339 0A:B329: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B33A 0A:B32A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B33B 0A:B32B: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02B33C 0A:B32C: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B33D 0A:B32D: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B33E 0A:B32E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B33F 0A:B32F: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02B340 0A:B330: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B341 0A:B331: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B342 0A:B332: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B343 0A:B333: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02B344 0A:B334: D0        .byte con_Y + $D0   ; 
- D 1 - I - 0x02B345 0A:B335: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02B346 0A:B336: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B347 0A:B337: 0E        .byte con_X + $0E   ; 

- D 1 - I - 0x02B348 0A:B338: D0        .byte con_Y + $D0   ; 
- D 1 - I - 0x02B349 0A:B339: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02B34A 0A:B33A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B34B 0A:B33B: 16        .byte con_X + $16   ; 

- D 1 - I - 0x02B34C 0A:B33C: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B34D 0A:B33D: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02B34E 0A:B33E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B34F 0A:B33F: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02B350 0A:B340: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B351 0A:B341: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02B352 0A:B342: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B353 0A:B343: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02B354 0A:B344: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B355 0A:B345: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02B356 0A:B346: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B357 0A:B347: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02B358 0A:B348: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B359 0A:B349: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02B35A 0A:B34A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B35B 0A:B34B: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02B35C 0A:B34C: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B35D 0A:B34D: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02B35E 0A:B34E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B35F 0A:B34F: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B360 0A:B350: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B361 0A:B351: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B362 0A:B352: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B363 0A:B353: 05        .byte con_X + $05   ; 
@end:



_off009_B354_15:
- D 1 - I - 0x02B364 0A:B354: 0D        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B365 0A:B355: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B366 0A:B356: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B367 0A:B357: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B368 0A:B358: F7        .byte con_X + $F7   ; 

- D 1 - I - 0x02B369 0A:B359: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B36A 0A:B35A: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B36B 0A:B35B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B36C 0A:B35C: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02B36D 0A:B35D: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B36E 0A:B35E: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B36F 0A:B35F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B370 0A:B360: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02B371 0A:B361: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B372 0A:B362: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B373 0A:B363: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B374 0A:B364: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B375 0A:B365: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B376 0A:B366: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02B377 0A:B367: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B378 0A:B368: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B379 0A:B369: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B37A 0A:B36A: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02B37B 0A:B36B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B37C 0A:B36C: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B37D 0A:B36D: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02B37E 0A:B36E: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02B37F 0A:B36F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B380 0A:B370: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02B381 0A:B371: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B382 0A:B372: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02B383 0A:B373: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B384 0A:B374: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B385 0A:B375: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B386 0A:B376: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02B387 0A:B377: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B388 0A:B378: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B389 0A:B379: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B38A 0A:B37A: 59        .byte con_T + $59   ; 
- D 1 - I - 0x02B38B 0A:B37B: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B38C 0A:B37C: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B38D 0A:B37D: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B38E 0A:B37E: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02B38F 0A:B37F: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B390 0A:B380: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02B391 0A:B381: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B392 0A:B382: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02B393 0A:B383: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B394 0A:B384: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02B395 0A:B385: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B396 0A:B386: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B397 0A:B387: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B398 0A:B388: 07        .byte con_X + $07   ; 
@end:



_off009_B389_16:
- D 1 - I - 0x02B399 0A:B389: 0E        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B39A 0A:B38A: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B39B 0A:B38B: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B39C 0A:B38C: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B39D 0A:B38D: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B39E 0A:B38E: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B39F 0A:B38F: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B3A0 0A:B390: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B3A1 0A:B391: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B3A2 0A:B392: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B3A3 0A:B393: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02B3A4 0A:B394: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B3A5 0A:B395: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02B3A6 0A:B396: BC        .byte con_Y + $BC   ; 
- D 1 - I - 0x02B3A7 0A:B397: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02B3A8 0A:B398: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B3A9 0A:B399: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02B3AA 0A:B39A: CE        .byte con_Y + $CE   ; 
- D 1 - I - 0x02B3AB 0A:B39B: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02B3AC 0A:B39C: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B3AD 0A:B39D: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B3AE 0A:B39E: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B3AF 0A:B39F: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02B3B0 0A:B3A0: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B3B1 0A:B3A1: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B3B2 0A:B3A2: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B3B3 0A:B3A3: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02B3B4 0A:B3A4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B3B5 0A:B3A5: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B3B6 0A:B3A6: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B3B7 0A:B3A7: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02B3B8 0A:B3A8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B3B9 0A:B3A9: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02B3BA 0A:B3AA: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B3BB 0A:B3AB: 57        .byte con_T + $57   ; 
- D 1 - I - 0x02B3BC 0A:B3AC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B3BD 0A:B3AD: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02B3BE 0A:B3AE: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B3BF 0A:B3AF: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02B3C0 0A:B3B0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B3C1 0A:B3B1: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02B3C2 0A:B3B2: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B3C3 0A:B3B3: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02B3C4 0A:B3B4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B3C5 0A:B3B5: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02B3C6 0A:B3B6: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B3C7 0A:B3B7: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02B3C8 0A:B3B8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B3C9 0A:B3B9: 0F        .byte con_X + $0F   ; 

- D 1 - I - 0x02B3CA 0A:B3BA: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B3CB 0A:B3BB: 53        .byte con_T + $53   ; 
- D 1 - I - 0x02B3CC 0A:B3BC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B3CD 0A:B3BD: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02B3CE 0A:B3BE: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B3CF 0A:B3BF: 55        .byte con_T + $55   ; 
- D 1 - I - 0x02B3D0 0A:B3C0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B3D1 0A:B3C1: 01        .byte con_X + $01   ; 
@end:



_off009_B3C2_17:
- D 1 - I - 0x02B3D2 0A:B3C2: 0A        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B3D3 0A:B3C3: C3        .byte con_Y + $C3   ; 
- D 1 - I - 0x02B3D4 0A:B3C4: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B3D5 0A:B3C5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B3D6 0A:B3C6: EB        .byte con_X + $EB   ; 

- D 1 - I - 0x02B3D7 0A:B3C7: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B3D8 0A:B3C8: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B3D9 0A:B3C9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B3DA 0A:B3CA: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02B3DB 0A:B3CB: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B3DC 0A:B3CC: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02B3DD 0A:B3CD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B3DE 0A:B3CE: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02B3DF 0A:B3CF: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B3E0 0A:B3D0: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02B3E1 0A:B3D1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B3E2 0A:B3D2: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02B3E3 0A:B3D3: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B3E4 0A:B3D4: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B3E5 0A:B3D5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B3E6 0A:B3D6: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02B3E7 0A:B3D7: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B3E8 0A:B3D8: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02B3E9 0A:B3D9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B3EA 0A:B3DA: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02B3EB 0A:B3DB: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B3EC 0A:B3DC: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02B3ED 0A:B3DD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B3EE 0A:B3DE: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02B3EF 0A:B3DF: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B3F0 0A:B3E0: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02B3F1 0A:B3E1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B3F2 0A:B3E2: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02B3F3 0A:B3E3: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B3F4 0A:B3E4: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02B3F5 0A:B3E5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B3F6 0A:B3E6: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02B3F7 0A:B3E7: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B3F8 0A:B3E8: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02B3F9 0A:B3E9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B3FA 0A:B3EA: F6        .byte con_X + $F6   ; 
@end:



_off009_B3EB_18:
- D 1 - I - 0x02B3FB 0A:B3EB: 0D        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B3FC 0A:B3EC: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B3FD 0A:B3ED: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B3FE 0A:B3EE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B3FF 0A:B3EF: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02B400 0A:B3F0: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B401 0A:B3F1: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B402 0A:B3F2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B403 0A:B3F3: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02B404 0A:B3F4: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B405 0A:B3F5: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02B406 0A:B3F6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B407 0A:B3F7: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02B408 0A:B3F8: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B409 0A:B3F9: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02B40A 0A:B3FA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B40B 0A:B3FB: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02B40C 0A:B3FC: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B40D 0A:B3FD: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B40E 0A:B3FE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B40F 0A:B3FF: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02B410 0A:B400: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B411 0A:B401: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02B412 0A:B402: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B413 0A:B403: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02B414 0A:B404: D3        .byte con_Y + $D3   ; 
- D 1 - I - 0x02B415 0A:B405: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02B416 0A:B406: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B417 0A:B407: 11        .byte con_X + $11   ; 

- D 1 - I - 0x02B418 0A:B408: DB        .byte con_Y + $DB   ; 
- D 1 - I - 0x02B419 0A:B409: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02B41A 0A:B40A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B41B 0A:B40B: 19        .byte con_X + $19   ; 

- D 1 - I - 0x02B41C 0A:B40C: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B41D 0A:B40D: 57        .byte con_T + $57   ; 
- D 1 - I - 0x02B41E 0A:B40E: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B41F 0A:B40F: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02B420 0A:B410: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B421 0A:B411: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02B422 0A:B412: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B423 0A:B413: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02B424 0A:B414: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B425 0A:B415: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02B426 0A:B416: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B427 0A:B417: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02B428 0A:B418: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B429 0A:B419: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02B42A 0A:B41A: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B42B 0A:B41B: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02B42C 0A:B41C: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B42D 0A:B41D: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02B42E 0A:B41E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B42F 0A:B41F: 09        .byte con_X + $09   ; 
@end:



_off009_B420_19:
- D 1 - I - 0x02B430 0A:B420: 0B        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B431 0A:B421: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B432 0A:B422: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02B433 0A:B423: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B434 0A:B424: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B435 0A:B425: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B436 0A:B426: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02B437 0A:B427: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B438 0A:B428: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B439 0A:B429: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B43A 0A:B42A: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02B43B 0A:B42B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B43C 0A:B42C: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B43D 0A:B42D: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B43E 0A:B42E: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02B43F 0A:B42F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B440 0A:B430: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B441 0A:B431: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B442 0A:B432: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02B443 0A:B433: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B444 0A:B434: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02B445 0A:B435: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B446 0A:B436: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02B447 0A:B437: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B448 0A:B438: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02B449 0A:B439: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B44A 0A:B43A: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B44B 0A:B43B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B44C 0A:B43C: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B44D 0A:B43D: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B44E 0A:B43E: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02B44F 0A:B43F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B450 0A:B440: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B451 0A:B441: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B452 0A:B442: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02B453 0A:B443: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B454 0A:B444: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02B455 0A:B445: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B456 0A:B446: 53        .byte con_T + $53   ; 
- D 1 - I - 0x02B457 0A:B447: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B458 0A:B448: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02B459 0A:B449: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B45A 0A:B44A: 55        .byte con_T + $55   ; 
- D 1 - I - 0x02B45B 0A:B44B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B45C 0A:B44C: 07        .byte con_X + $07   ; 
@end:



_off009_B44D_1A:
- D 1 - I - 0x02B45D 0A:B44D: 09        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B45E 0A:B44E: B9        .byte con_Y + $B9   ; 
- D 1 - I - 0x02B45F 0A:B44F: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02B460 0A:B450: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B461 0A:B451: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02B462 0A:B452: B9        .byte con_Y + $B9   ; 
- D 1 - I - 0x02B463 0A:B453: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02B464 0A:B454: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B465 0A:B455: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02B466 0A:B456: C9        .byte con_Y + $C9   ; 
- D 1 - I - 0x02B467 0A:B457: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02B468 0A:B458: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B469 0A:B459: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02B46A 0A:B45A: C9        .byte con_Y + $C9   ; 
- D 1 - I - 0x02B46B 0A:B45B: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02B46C 0A:B45C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B46D 0A:B45D: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02B46E 0A:B45E: CA        .byte con_Y + $CA   ; 
- D 1 - I - 0x02B46F 0A:B45F: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02B470 0A:B460: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B471 0A:B461: 12        .byte con_X + $12   ; 

- D 1 - I - 0x02B472 0A:B462: C6        .byte con_Y + $C6   ; 
- D 1 - I - 0x02B473 0A:B463: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02B474 0A:B464: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B475 0A:B465: 1A        .byte con_X + $1A   ; 

- D 1 - I - 0x02B476 0A:B466: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B477 0A:B467: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02B478 0A:B468: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B479 0A:B469: 22        .byte con_X + $22   ; 

- D 1 - I - 0x02B47A 0A:B46A: D9        .byte con_Y + $D9   ; 
- D 1 - I - 0x02B47B 0A:B46B: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02B47C 0A:B46C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B47D 0A:B46D: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02B47E 0A:B46E: D9        .byte con_Y + $D9   ; 
- D 1 - I - 0x02B47F 0A:B46F: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02B480 0A:B470: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B481 0A:B471: 0A        .byte con_X + $0A   ; 
@end:



_off009_B472_1B:
- D 1 - I - 0x02B482 0A:B472: 0B        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B483 0A:B473: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B484 0A:B474: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02B485 0A:B475: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B486 0A:B476: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B487 0A:B477: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B488 0A:B478: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02B489 0A:B479: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B48A 0A:B47A: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B48B 0A:B47B: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B48C 0A:B47C: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02B48D 0A:B47D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B48E 0A:B47E: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B48F 0A:B47F: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B490 0A:B480: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02B491 0A:B481: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B492 0A:B482: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B493 0A:B483: D2        .byte con_Y + $D2   ; 
- D 1 - I - 0x02B494 0A:B484: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02B495 0A:B485: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B496 0A:B486: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02B497 0A:B487: CE        .byte con_Y + $CE   ; 
- D 1 - I - 0x02B498 0A:B488: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02B499 0A:B489: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B49A 0A:B48A: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02B49B 0A:B48B: C9        .byte con_Y + $C9   ; 
- D 1 - I - 0x02B49C 0A:B48C: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02B49D 0A:B48D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B49E 0A:B48E: 20        .byte con_X + $20   ; 

- D 1 - I - 0x02B49F 0A:B48F: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B4A0 0A:B490: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B4A1 0A:B491: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4A2 0A:B492: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B4A3 0A:B493: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B4A4 0A:B494: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02B4A5 0A:B495: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4A6 0A:B496: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B4A7 0A:B497: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B4A8 0A:B498: 53        .byte con_T + $53   ; 
- D 1 - I - 0x02B4A9 0A:B499: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4AA 0A:B49A: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02B4AB 0A:B49B: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B4AC 0A:B49C: 55        .byte con_T + $55   ; 
- D 1 - I - 0x02B4AD 0A:B49D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4AE 0A:B49E: 07        .byte con_X + $07   ; 
@end:



_off009_B49F_1C:
- D 1 - I - 0x02B4AF 0A:B49F: 0D        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B4B0 0A:B4A0: D0        .byte con_Y + $D0   ; 
- D 1 - I - 0x02B4B1 0A:B4A1: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B4B2 0A:B4A2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4B3 0A:B4A3: E9        .byte con_X + $E9   ; 

- D 1 - I - 0x02B4B4 0A:B4A4: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02B4B5 0A:B4A5: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B4B6 0A:B4A6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4B7 0A:B4A7: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02B4B8 0A:B4A8: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02B4B9 0A:B4A9: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B4BA 0A:B4AA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4BB 0A:B4AB: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02B4BC 0A:B4AC: DD        .byte con_Y + $DD   ; 
- D 1 - I - 0x02B4BD 0A:B4AD: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B4BE 0A:B4AE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4BF 0A:B4AF: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02B4C0 0A:B4B0: DD        .byte con_Y + $DD   ; 
- D 1 - I - 0x02B4C1 0A:B4B1: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B4C2 0A:B4B2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4C3 0A:B4B3: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02B4C4 0A:B4B4: D9        .byte con_Y + $D9   ; 
- D 1 - I - 0x02B4C5 0A:B4B5: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02B4C6 0A:B4B6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4C7 0A:B4B7: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02B4C8 0A:B4B8: DC        .byte con_Y + $DC   ; 
- D 1 - I - 0x02B4C9 0A:B4B9: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02B4CA 0A:B4BA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4CB 0A:B4BB: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02B4CC 0A:B4BC: ED        .byte con_Y + $ED   ; 
- D 1 - I - 0x02B4CD 0A:B4BD: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02B4CE 0A:B4BE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4CF 0A:B4BF: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02B4D0 0A:B4C0: ED        .byte con_Y + $ED   ; 
- D 1 - I - 0x02B4D1 0A:B4C1: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02B4D2 0A:B4C2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4D3 0A:B4C3: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02B4D4 0A:B4C4: E9        .byte con_Y + $E9   ; 
- D 1 - I - 0x02B4D5 0A:B4C5: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02B4D6 0A:B4C6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4D7 0A:B4C7: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02B4D8 0A:B4C8: ED        .byte con_Y + $ED   ; 
- D 1 - I - 0x02B4D9 0A:B4C9: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02B4DA 0A:B4CA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4DB 0A:B4CB: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02B4DC 0A:B4CC: EC        .byte con_Y + $EC   ; 
- D 1 - I - 0x02B4DD 0A:B4CD: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02B4DE 0A:B4CE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4DF 0A:B4CF: 11        .byte con_X + $11   ; 

- D 1 - I - 0x02B4E0 0A:B4D0: EB        .byte con_Y + $EB   ; 
- D 1 - I - 0x02B4E1 0A:B4D1: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02B4E2 0A:B4D2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4E3 0A:B4D3: 19        .byte con_X + $19   ; 
@end:



_off009_B4D4_1D:
- D 1 - I - 0x02B4E4 0A:B4D4: 09        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B4E5 0A:B4D5: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B4E6 0A:B4D6: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02B4E7 0A:B4D7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4E8 0A:B4D8: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02B4E9 0A:B4D9: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B4EA 0A:B4DA: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02B4EB 0A:B4DB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4EC 0A:B4DC: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02B4ED 0A:B4DD: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B4EE 0A:B4DE: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02B4EF 0A:B4DF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4F0 0A:B4E0: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02B4F1 0A:B4E1: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B4F2 0A:B4E2: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02B4F3 0A:B4E3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4F4 0A:B4E4: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02B4F5 0A:B4E5: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B4F6 0A:B4E6: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02B4F7 0A:B4E7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4F8 0A:B4E8: 11        .byte con_X + $11   ; 

- D 1 - I - 0x02B4F9 0A:B4E9: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B4FA 0A:B4EA: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02B4FB 0A:B4EB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B4FC 0A:B4EC: 19        .byte con_X + $19   ; 

- D 1 - I - 0x02B4FD 0A:B4ED: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B4FE 0A:B4EE: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02B4FF 0A:B4EF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B500 0A:B4F0: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02B501 0A:B4F1: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B502 0A:B4F2: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02B503 0A:B4F3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B504 0A:B4F4: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02B505 0A:B4F5: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B506 0A:B4F6: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02B507 0A:B4F7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B508 0A:B4F8: 11        .byte con_X + $11   ; 
@end:



_off009_B4F9_1E:
- D 1 - I - 0x02B509 0A:B4F9: 09        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B50A 0A:B4FA: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B50B 0A:B4FB: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02B50C 0A:B4FC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B50D 0A:B4FD: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02B50E 0A:B4FE: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B50F 0A:B4FF: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02B510 0A:B500: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B511 0A:B501: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02B512 0A:B502: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B513 0A:B503: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02B514 0A:B504: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B515 0A:B505: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02B516 0A:B506: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B517 0A:B507: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02B518 0A:B508: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B519 0A:B509: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02B51A 0A:B50A: E2        .byte con_Y + $E2   ; 
- D 1 - I - 0x02B51B 0A:B50B: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02B51C 0A:B50C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B51D 0A:B50D: 12        .byte con_X + $12   ; 

- D 1 - I - 0x02B51E 0A:B50E: E6        .byte con_Y + $E6   ; 
- D 1 - I - 0x02B51F 0A:B50F: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02B520 0A:B510: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B521 0A:B511: 1A        .byte con_X + $1A   ; 

- D 1 - I - 0x02B522 0A:B512: E8        .byte con_Y + $E8   ; 
- D 1 - I - 0x02B523 0A:B513: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02B524 0A:B514: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B525 0A:B515: 22        .byte con_X + $22   ; 

- D 1 - I - 0x02B526 0A:B516: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B527 0A:B517: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02B528 0A:B518: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B529 0A:B519: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02B52A 0A:B51A: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B52B 0A:B51B: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02B52C 0A:B51C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B52D 0A:B51D: 0A        .byte con_X + $0A   ; 
@end:



_off009_B51E_1F:
- D 1 - I - 0x02B52E 0A:B51E: 0C        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B52F 0A:B51F: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B530 0A:B520: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02B531 0A:B521: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B532 0A:B522: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02B533 0A:B523: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B534 0A:B524: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02B535 0A:B525: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B536 0A:B526: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02B537 0A:B527: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B538 0A:B528: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02B539 0A:B529: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B53A 0A:B52A: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02B53B 0A:B52B: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B53C 0A:B52C: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02B53D 0A:B52D: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B53E 0A:B52E: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02B53F 0A:B52F: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B540 0A:B530: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02B541 0A:B531: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B542 0A:B532: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02B543 0A:B533: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B544 0A:B534: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02B545 0A:B535: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B546 0A:B536: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02B547 0A:B537: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B548 0A:B538: 59        .byte con_T + $59   ; 
- D 1 - I - 0x02B549 0A:B539: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B54A 0A:B53A: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02B54B 0A:B53B: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B54C 0A:B53C: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02B54D 0A:B53D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B54E 0A:B53E: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02B54F 0A:B53F: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B550 0A:B540: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02B551 0A:B541: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B552 0A:B542: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02B553 0A:B543: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B554 0A:B544: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B555 0A:B545: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B556 0A:B546: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02B557 0A:B547: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B558 0A:B548: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02B559 0A:B549: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B55A 0A:B54A: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02B55B 0A:B54B: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B55C 0A:B54C: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02B55D 0A:B54D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B55E 0A:B54E: 07        .byte con_X + $07   ; 
@end:



_off009_B54F_20:
- D 1 - I - 0x02B55F 0A:B54F: 09        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B560 0A:B550: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B561 0A:B551: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02B562 0A:B552: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B563 0A:B553: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02B564 0A:B554: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B565 0A:B555: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02B566 0A:B556: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B567 0A:B557: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02B568 0A:B558: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B569 0A:B559: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02B56A 0A:B55A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B56B 0A:B55B: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02B56C 0A:B55C: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B56D 0A:B55D: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02B56E 0A:B55E: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B56F 0A:B55F: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02B570 0A:B560: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B571 0A:B561: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02B572 0A:B562: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B573 0A:B563: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B574 0A:B564: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B575 0A:B565: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02B576 0A:B566: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B577 0A:B567: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02B578 0A:B568: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B579 0A:B569: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02B57A 0A:B56A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B57B 0A:B56B: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02B57C 0A:B56C: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B57D 0A:B56D: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02B57E 0A:B56E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B57F 0A:B56F: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B580 0A:B570: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B581 0A:B571: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02B582 0A:B572: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B583 0A:B573: 04        .byte con_X + $04   ; 
@end:



_off009_B574_21:
- D 1 - I - 0x02B584 0A:B574: 0B        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B585 0A:B575: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B586 0A:B576: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02B587 0A:B577: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B588 0A:B578: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02B589 0A:B579: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B58A 0A:B57A: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02B58B 0A:B57B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B58C 0A:B57C: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02B58D 0A:B57D: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B58E 0A:B57E: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02B58F 0A:B57F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B590 0A:B580: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B591 0A:B581: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B592 0A:B582: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02B593 0A:B583: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B594 0A:B584: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B595 0A:B585: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B596 0A:B586: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02B597 0A:B587: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B598 0A:B588: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B599 0A:B589: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B59A 0A:B58A: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02B59B 0A:B58B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B59C 0A:B58C: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02B59D 0A:B58D: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B59E 0A:B58E: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B59F 0A:B58F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5A0 0A:B590: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02B5A1 0A:B591: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B5A2 0A:B592: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02B5A3 0A:B593: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5A4 0A:B594: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02B5A5 0A:B595: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B5A6 0A:B596: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02B5A7 0A:B597: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5A8 0A:B598: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02B5A9 0A:B599: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B5AA 0A:B59A: 53        .byte con_T + $53   ; 
- D 1 - I - 0x02B5AB 0A:B59B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5AC 0A:B59C: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02B5AD 0A:B59D: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B5AE 0A:B59E: 55        .byte con_T + $55   ; 
- D 1 - I - 0x02B5AF 0A:B59F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5B0 0A:B5A0: 02        .byte con_X + $02   ; 
@end:



_off009_B5A1_22:
- D 1 - I - 0x02B5B1 0A:B5A1: 0B        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B5B2 0A:B5A2: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B5B3 0A:B5A3: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B5B4 0A:B5A4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5B5 0A:B5A5: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02B5B6 0A:B5A6: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B5B7 0A:B5A7: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B5B8 0A:B5A8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5B9 0A:B5A9: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B5BA 0A:B5AA: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B5BB 0A:B5AB: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B5BC 0A:B5AC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5BD 0A:B5AD: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02B5BE 0A:B5AE: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B5BF 0A:B5AF: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B5C0 0A:B5B0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5C1 0A:B5B1: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02B5C2 0A:B5B2: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B5C3 0A:B5B3: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02B5C4 0A:B5B4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5C5 0A:B5B5: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02B5C6 0A:B5B6: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B5C7 0A:B5B7: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02B5C8 0A:B5B8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5C9 0A:B5B9: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02B5CA 0A:B5BA: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B5CB 0A:B5BB: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02B5CC 0A:B5BC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5CD 0A:B5BD: 0D        .byte con_X + $0D   ; 

- D 1 - I - 0x02B5CE 0A:B5BE: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B5CF 0A:B5BF: 35        .byte con_T + $35   ; 
- D 1 - I - 0x02B5D0 0A:B5C0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5D1 0A:B5C1: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02B5D2 0A:B5C2: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B5D3 0A:B5C3: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02B5D4 0A:B5C4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5D5 0A:B5C5: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02B5D6 0A:B5C6: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B5D7 0A:B5C7: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02B5D8 0A:B5C8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5D9 0A:B5C9: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02B5DA 0A:B5CA: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B5DB 0A:B5CB: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02B5DC 0A:B5CC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5DD 0A:B5CD: 0D        .byte con_X + $0D   ; 
@end:



_off009_B5CE_23:
- D 1 - I - 0x02B5DE 0A:B5CE: 0D        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B5DF 0A:B5CF: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B5E0 0A:B5D0: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B5E1 0A:B5D1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5E2 0A:B5D2: E9        .byte con_X + $E9   ; 

- D 1 - I - 0x02B5E3 0A:B5D3: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B5E4 0A:B5D4: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B5E5 0A:B5D5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5E6 0A:B5D6: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02B5E7 0A:B5D7: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B5E8 0A:B5D8: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B5E9 0A:B5D9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5EA 0A:B5DA: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02B5EB 0A:B5DB: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B5EC 0A:B5DC: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B5ED 0A:B5DD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5EE 0A:B5DE: E9        .byte con_X + $E9   ; 

- D 1 - I - 0x02B5EF 0A:B5DF: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B5F0 0A:B5E0: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B5F1 0A:B5E1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5F2 0A:B5E2: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02B5F3 0A:B5E3: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B5F4 0A:B5E4: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02B5F5 0A:B5E5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5F6 0A:B5E6: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02B5F7 0A:B5E7: CE        .byte con_Y + $CE   ; 
- D 1 - I - 0x02B5F8 0A:B5E8: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02B5F9 0A:B5E9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5FA 0A:B5EA: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02B5FB 0A:B5EB: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B5FC 0A:B5EC: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02B5FD 0A:B5ED: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B5FE 0A:B5EE: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02B5FF 0A:B5EF: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B600 0A:B5F0: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02B601 0A:B5F1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B602 0A:B5F2: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B603 0A:B5F3: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B604 0A:B5F4: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02B605 0A:B5F5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B606 0A:B5F6: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B607 0A:B5F7: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B608 0A:B5F8: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02B609 0A:B5F9: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B60A 0A:B5FA: EE        .byte con_X + $EE   ; 

- D 1 - I - 0x02B60B 0A:B5FB: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B60C 0A:B5FC: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02B60D 0A:B5FD: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B60E 0A:B5FE: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02B60F 0A:B5FF: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B610 0A:B600: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02B611 0A:B601: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B612 0A:B602: FF        .byte con_X + $FF   ; 
@end:



_off009_B603_24:
- D 1 - I - 0x02B613 0A:B603: 0D        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B614 0A:B604: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B615 0A:B605: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B616 0A:B606: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B617 0A:B607: EE        .byte con_X + $EE   ; 

- D 1 - I - 0x02B618 0A:B608: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B619 0A:B609: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B61A 0A:B60A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B61B 0A:B60B: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02B61C 0A:B60C: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B61D 0A:B60D: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B61E 0A:B60E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B61F 0A:B60F: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02B620 0A:B610: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B621 0A:B611: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B622 0A:B612: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B623 0A:B613: EE        .byte con_X + $EE   ; 

- D 1 - I - 0x02B624 0A:B614: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B625 0A:B615: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02B626 0A:B616: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B627 0A:B617: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02B628 0A:B618: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B629 0A:B619: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02B62A 0A:B61A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B62B 0A:B61B: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02B62C 0A:B61C: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B62D 0A:B61D: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02B62E 0A:B61E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B62F 0A:B61F: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02B630 0A:B620: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B631 0A:B621: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02B632 0A:B622: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B633 0A:B623: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02B634 0A:B624: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B635 0A:B625: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02B636 0A:B626: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B637 0A:B627: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B638 0A:B628: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B639 0A:B629: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02B63A 0A:B62A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B63B 0A:B62B: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B63C 0A:B62C: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B63D 0A:B62D: 63        .byte con_T + $63   ; 
- D 1 - I - 0x02B63E 0A:B62E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B63F 0A:B62F: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B640 0A:B630: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B641 0A:B631: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02B642 0A:B632: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B643 0A:B633: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02B644 0A:B634: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B645 0A:B635: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02B646 0A:B636: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B647 0A:B637: FC        .byte con_X + $FC   ; 
@end:



_off009_B638_25:
- D 1 - I - 0x02B648 0A:B638: 0D        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B649 0A:B639: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B64A 0A:B63A: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B64B 0A:B63B: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B64C 0A:B63C: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02B64D 0A:B63D: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B64E 0A:B63E: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B64F 0A:B63F: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B650 0A:B640: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02B651 0A:B641: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B652 0A:B642: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B653 0A:B643: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B654 0A:B644: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02B655 0A:B645: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B656 0A:B646: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B657 0A:B647: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B658 0A:B648: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02B659 0A:B649: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B65A 0A:B64A: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02B65B 0A:B64B: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B65C 0A:B64C: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02B65D 0A:B64D: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B65E 0A:B64E: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02B65F 0A:B64F: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B660 0A:B650: EA        .byte con_X + $EA   ; 

- D 1 - I - 0x02B661 0A:B651: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B662 0A:B652: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02B663 0A:B653: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B664 0A:B654: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B665 0A:B655: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B666 0A:B656: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02B667 0A:B657: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B668 0A:B658: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B669 0A:B659: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B66A 0A:B65A: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02B66B 0A:B65B: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B66C 0A:B65C: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02B66D 0A:B65D: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B66E 0A:B65E: 63        .byte con_T + $63   ; 
- D 1 - I - 0x02B66F 0A:B65F: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B670 0A:B660: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02B671 0A:B661: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02B672 0A:B662: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02B673 0A:B663: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B674 0A:B664: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B675 0A:B665: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02B676 0A:B666: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02B677 0A:B667: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B678 0A:B668: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02B679 0A:B669: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B67A 0A:B66A: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02B67B 0A:B66B: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B67C 0A:B66C: F2        .byte con_X + $F2   ; 
@end:



_off009_B66D_26:
- D 1 - I - 0x02B67D 0A:B66D: 0B        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B67E 0A:B66E: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B67F 0A:B66F: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B680 0A:B670: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B681 0A:B671: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02B682 0A:B672: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B683 0A:B673: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B684 0A:B674: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B685 0A:B675: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02B686 0A:B676: E6        .byte con_Y + $E6   ; 
- D 1 - I - 0x02B687 0A:B677: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B688 0A:B678: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B689 0A:B679: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B68A 0A:B67A: E6        .byte con_Y + $E6   ; 
- D 1 - I - 0x02B68B 0A:B67B: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B68C 0A:B67C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B68D 0A:B67D: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B68E 0A:B67E: E9        .byte con_Y + $E9   ; 
- D 1 - I - 0x02B68F 0A:B67F: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02B690 0A:B680: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B691 0A:B681: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B692 0A:B682: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B693 0A:B683: 63        .byte con_T + $63   ; 
- D 1 - I - 0x02B694 0A:B684: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B695 0A:B685: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02B696 0A:B686: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B697 0A:B687: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B698 0A:B688: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B699 0A:B689: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02B69A 0A:B68A: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B69B 0A:B68B: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02B69C 0A:B68C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B69D 0A:B68D: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02B69E 0A:B68E: F6        .byte con_Y + $F6   ; 
- D 1 - I - 0x02B69F 0A:B68F: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02B6A0 0A:B690: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B6A1 0A:B691: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B6A2 0A:B692: F6        .byte con_Y + $F6   ; 
- D 1 - I - 0x02B6A3 0A:B693: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02B6A4 0A:B694: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B6A5 0A:B695: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B6A6 0A:B696: F9        .byte con_Y + $F9   ; 
- D 1 - I - 0x02B6A7 0A:B697: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02B6A8 0A:B698: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B6A9 0A:B699: 08        .byte con_X + $08   ; 
@end:



_off009_B69A_27:
- D 1 - I - 0x02B6AA 0A:B69A: 0A        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B6AB 0A:B69B: F2        .byte con_Y + $F2   ; 
- D 1 - I - 0x02B6AC 0A:B69C: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02B6AD 0A:B69D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B6AE 0A:B69E: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02B6AF 0A:B69F: F0        .byte con_Y + $F0   ; 
- D 1 - I - 0x02B6B0 0A:B6A0: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02B6B1 0A:B6A1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B6B2 0A:B6A2: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02B6B3 0A:B6A3: F0        .byte con_Y + $F0   ; 
- D 1 - I - 0x02B6B4 0A:B6A4: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02B6B5 0A:B6A5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B6B6 0A:B6A6: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B6B7 0A:B6A7: EC        .byte con_Y + $EC   ; 
- D 1 - I - 0x02B6B8 0A:B6A8: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02B6B9 0A:B6A9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B6BA 0A:B6AA: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B6BB 0A:B6AB: EC        .byte con_Y + $EC   ; 
- D 1 - I - 0x02B6BC 0A:B6AC: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02B6BD 0A:B6AD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B6BE 0A:B6AE: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B6BF 0A:B6AF: F0        .byte con_Y + $F0   ; 
- D 1 - I - 0x02B6C0 0A:B6B0: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02B6C1 0A:B6B1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B6C2 0A:B6B2: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02B6C3 0A:B6B3: 00        .byte con_Y + $00   ; 
- D 1 - I - 0x02B6C4 0A:B6B4: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02B6C5 0A:B6B5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B6C6 0A:B6B6: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02B6C7 0A:B6B7: 00        .byte con_Y + $00   ; 
- D 1 - I - 0x02B6C8 0A:B6B8: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02B6C9 0A:B6B9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B6CA 0A:B6BA: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B6CB 0A:B6BB: FC        .byte con_Y + $FC   ; 
- D 1 - I - 0x02B6CC 0A:B6BC: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02B6CD 0A:B6BD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B6CE 0A:B6BE: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B6CF 0A:B6BF: FC        .byte con_Y + $FC   ; 
- D 1 - I - 0x02B6D0 0A:B6C0: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02B6D1 0A:B6C1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B6D2 0A:B6C2: 08        .byte con_X + $08   ; 
@end:



_off009_B6C3_28:
- D 1 - I - 0x02B6D3 0A:B6C3: 0B        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B6D4 0A:B6C4: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B6D5 0A:B6C5: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B6D6 0A:B6C6: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B6D7 0A:B6C7: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02B6D8 0A:B6C8: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B6D9 0A:B6C9: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B6DA 0A:B6CA: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B6DB 0A:B6CB: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B6DC 0A:B6CC: DC        .byte con_Y + $DC   ; 
- D 1 - I - 0x02B6DD 0A:B6CD: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B6DE 0A:B6CE: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B6DF 0A:B6CF: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B6E0 0A:B6D0: DC        .byte con_Y + $DC   ; 
- D 1 - I - 0x02B6E1 0A:B6D1: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B6E2 0A:B6D2: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B6E3 0A:B6D3: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B6E4 0A:B6D4: D9        .byte con_Y + $D9   ; 
- D 1 - I - 0x02B6E5 0A:B6D5: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02B6E6 0A:B6D6: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B6E7 0A:B6D7: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02B6E8 0A:B6D8: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B6E9 0A:B6D9: 63        .byte con_T + $63   ; 
- D 1 - I - 0x02B6EA 0A:B6DA: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B6EB 0A:B6DB: E8        .byte con_X + $E8   ; 

- D 1 - I - 0x02B6EC 0A:B6DC: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B6ED 0A:B6DD: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B6EE 0A:B6DE: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B6EF 0A:B6DF: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02B6F0 0A:B6E0: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B6F1 0A:B6E1: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02B6F2 0A:B6E2: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B6F3 0A:B6E3: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B6F4 0A:B6E4: CC        .byte con_Y + $CC   ; 
- D 1 - I - 0x02B6F5 0A:B6E5: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02B6F6 0A:B6E6: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B6F7 0A:B6E7: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B6F8 0A:B6E8: CC        .byte con_Y + $CC   ; 
- D 1 - I - 0x02B6F9 0A:B6E9: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02B6FA 0A:B6EA: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B6FB 0A:B6EB: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B6FC 0A:B6EC: C9        .byte con_Y + $C9   ; 
- D 1 - I - 0x02B6FD 0A:B6ED: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02B6FE 0A:B6EE: C0        .byte con_A + $C0   ; 
- D 1 - I - 0x02B6FF 0A:B6EF: F0        .byte con_X + $F0   ; 
@end:



_off009_B6F0_29:
- D 1 - I - 0x02B700 0A:B6F0: 0B        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B701 0A:B6F1: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B702 0A:B6F2: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B703 0A:B6F3: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B704 0A:B6F4: EC        .byte con_X + $EC   ; 

- D 1 - I - 0x02B705 0A:B6F5: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B706 0A:B6F6: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B707 0A:B6F7: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B708 0A:B6F8: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02B709 0A:B6F9: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B70A 0A:B6FA: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B70B 0A:B6FB: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B70C 0A:B6FC: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B70D 0A:B6FD: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B70E 0A:B6FE: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B70F 0A:B6FF: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B710 0A:B700: EC        .byte con_X + $EC   ; 

- D 1 - I - 0x02B711 0A:B701: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B712 0A:B702: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B713 0A:B703: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B714 0A:B704: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02B715 0A:B705: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B716 0A:B706: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02B717 0A:B707: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B718 0A:B708: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B719 0A:B709: DE        .byte con_Y + $DE   ; 
- D 1 - I - 0x02B71A 0A:B70A: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02B71B 0A:B70B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B71C 0A:B70C: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02B71D 0A:B70D: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B71E 0A:B70E: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02B71F 0A:B70F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B720 0A:B710: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02B721 0A:B711: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B722 0A:B712: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02B723 0A:B713: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B724 0A:B714: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02B725 0A:B715: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B726 0A:B716: 63        .byte con_T + $63   ; 
- D 1 - I - 0x02B727 0A:B717: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B728 0A:B718: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02B729 0A:B719: F7        .byte con_Y + $F7   ; 
- D 1 - I - 0x02B72A 0A:B71A: 65        .byte con_T + $65   ; 
- D 1 - I - 0x02B72B 0A:B71B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B72C 0A:B71C: 0B        .byte con_X + $0B   ; 
@end:



_off009_B71D_2A:
- D 1 - I - 0x02B72D 0A:B71D: 0B        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B72E 0A:B71E: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B72F 0A:B71F: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B730 0A:B720: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B731 0A:B721: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B732 0A:B722: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B733 0A:B723: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B734 0A:B724: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B735 0A:B725: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B736 0A:B726: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B737 0A:B727: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B738 0A:B728: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B739 0A:B729: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B73A 0A:B72A: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B73B 0A:B72B: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B73C 0A:B72C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B73D 0A:B72D: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B73E 0A:B72E: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B73F 0A:B72F: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B740 0A:B730: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B741 0A:B731: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B742 0A:B732: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B743 0A:B733: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02B744 0A:B734: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B745 0A:B735: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B746 0A:B736: E9        .byte con_Y + $E9   ; 
- D 1 - I - 0x02B747 0A:B737: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02B748 0A:B738: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B749 0A:B739: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02B74A 0A:B73A: F6        .byte con_Y + $F6   ; 
- D 1 - I - 0x02B74B 0A:B73B: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B74C 0A:B73C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B74D 0A:B73D: EE        .byte con_X + $EE   ; 

- D 1 - I - 0x02B74E 0A:B73E: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B74F 0A:B73F: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02B750 0A:B740: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B751 0A:B741: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02B752 0A:B742: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B753 0A:B743: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02B754 0A:B744: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B755 0A:B745: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02B756 0A:B746: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B757 0A:B747: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02B758 0A:B748: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B759 0A:B749: 06        .byte con_X + $06   ; 
@end:



_off009_B74A_2B:
- D 1 - I - 0x02B75A 0A:B74A: 01        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B75B 0A:B74B: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B75C 0A:B74C: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02B75D 0A:B74D: 03        .byte con_A + $03   ; 
- D 1 - I - 0x02B75E 0A:B74E: FC        .byte con_X + $FC   ; 
@end:



_off009_B74F_2C:
- D 1 - I - 0x02B75F 0A:B74F: 02        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B760 0A:B750: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B761 0A:B751: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02B762 0A:B752: 03        .byte con_A + $03   ; 
- D 1 - I - 0x02B763 0A:B753: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B764 0A:B754: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B765 0A:B755: 4D        .byte con_T + $4D   ; 
- D 1 - I - 0x02B766 0A:B756: 43        .byte con_A + $43   ; 
- D 1 - I - 0x02B767 0A:B757: 00        .byte con_X + $00   ; 
@end:



_off009_B758_2D:
- D 1 - I - 0x02B768 0A:B758: 03        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B769 0A:B759: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B76A 0A:B75A: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02B76B 0A:B75B: 03        .byte con_A + $03   ; 
- D 1 - I - 0x02B76C 0A:B75C: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B76D 0A:B75D: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B76E 0A:B75E: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02B76F 0A:B75F: 03        .byte con_A + $03   ; 
- D 1 - I - 0x02B770 0A:B760: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B771 0A:B761: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B772 0A:B762: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02B773 0A:B763: 43        .byte con_A + $43   ; 
- D 1 - I - 0x02B774 0A:B764: 00        .byte con_X + $00   ; 
@end:



_off009_B765_2E:
- D 1 - I - 0x02B775 0A:B765: 0C        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B776 0A:B766: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02B777 0A:B767: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B778 0A:B768: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B779 0A:B769: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B77A 0A:B76A: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B77B 0A:B76B: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B77C 0A:B76C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B77D 0A:B76D: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B77E 0A:B76E: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B77F 0A:B76F: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B780 0A:B770: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B781 0A:B771: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B782 0A:B772: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B783 0A:B773: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B784 0A:B774: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B785 0A:B775: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B786 0A:B776: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B787 0A:B777: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B788 0A:B778: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B789 0A:B779: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B78A 0A:B77A: D0        .byte con_Y + $D0   ; 
- D 1 - I - 0x02B78B 0A:B77B: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02B78C 0A:B77C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B78D 0A:B77D: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02B78E 0A:B77E: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B78F 0A:B77F: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02B790 0A:B780: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B791 0A:B781: F7        .byte con_X + $F7   ; 

- D 1 - I - 0x02B792 0A:B782: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B793 0A:B783: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02B794 0A:B784: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B795 0A:B785: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02B796 0A:B786: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B797 0A:B787: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02B798 0A:B788: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B799 0A:B789: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02B79A 0A:B78A: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B79B 0A:B78B: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02B79C 0A:B78C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B79D 0A:B78D: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02B79E 0A:B78E: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B79F 0A:B78F: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02B7A0 0A:B790: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B7A1 0A:B791: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02B7A2 0A:B792: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B7A3 0A:B793: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B7A4 0A:B794: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B7A5 0A:B795: 06        .byte con_X + $06   ; 
@end:



_off009_B796_2F:
- D 1 - I - 0x02B7A6 0A:B796: 0A        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B7A7 0A:B797: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B7A8 0A:B798: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02B7A9 0A:B799: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B7AA 0A:B79A: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02B7AB 0A:B79B: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B7AC 0A:B79C: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02B7AD 0A:B79D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B7AE 0A:B79E: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02B7AF 0A:B79F: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B7B0 0A:B7A0: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02B7B1 0A:B7A1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B7B2 0A:B7A2: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02B7B3 0A:B7A3: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B7B4 0A:B7A4: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02B7B5 0A:B7A5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B7B6 0A:B7A6: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02B7B7 0A:B7A7: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B7B8 0A:B7A8: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02B7B9 0A:B7A9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B7BA 0A:B7AA: F7        .byte con_X + $F7   ; 

- D 1 - I - 0x02B7BB 0A:B7AB: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B7BC 0A:B7AC: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02B7BD 0A:B7AD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B7BE 0A:B7AE: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02B7BF 0A:B7AF: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B7C0 0A:B7B0: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02B7C1 0A:B7B1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B7C2 0A:B7B2: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02B7C3 0A:B7B3: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B7C4 0A:B7B4: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02B7C5 0A:B7B5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B7C6 0A:B7B6: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02B7C7 0A:B7B7: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B7C8 0A:B7B8: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B7C9 0A:B7B9: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B7CA 0A:B7BA: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02B7CB 0A:B7BB: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B7CC 0A:B7BC: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02B7CD 0A:B7BD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B7CE 0A:B7BE: 07        .byte con_X + $07   ; 
@end:



_off009_B7BF_30:
- D 1 - I - 0x02B7CF 0A:B7BF: 0C        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B7D0 0A:B7C0: CD        .byte con_Y + $CD   ; 
- D 1 - I - 0x02B7D1 0A:B7C1: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02B7D2 0A:B7C2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B7D3 0A:B7C3: F7        .byte con_X + $F7   ; 

- D 1 - I - 0x02B7D4 0A:B7C4: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B7D5 0A:B7C5: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02B7D6 0A:B7C6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B7D7 0A:B7C7: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02B7D8 0A:B7C8: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B7D9 0A:B7C9: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02B7DA 0A:B7CA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B7DB 0A:B7CB: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02B7DC 0A:B7CC: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B7DD 0A:B7CD: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02B7DE 0A:B7CE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B7DF 0A:B7CF: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02B7E0 0A:B7D0: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B7E1 0A:B7D1: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02B7E2 0A:B7D2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B7E3 0A:B7D3: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02B7E4 0A:B7D4: CF        .byte con_Y + $CF   ; 
- D 1 - I - 0x02B7E5 0A:B7D5: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02B7E6 0A:B7D6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B7E7 0A:B7D7: 0F        .byte con_X + $0F   ; 

- D 1 - I - 0x02B7E8 0A:B7D8: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B7E9 0A:B7D9: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02B7EA 0A:B7DA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B7EB 0A:B7DB: F7        .byte con_X + $F7   ; 

- D 1 - I - 0x02B7EC 0A:B7DC: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B7ED 0A:B7DD: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02B7EE 0A:B7DE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B7EF 0A:B7DF: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02B7F0 0A:B7E0: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B7F1 0A:B7E1: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02B7F2 0A:B7E2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B7F3 0A:B7E3: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02B7F4 0A:B7E4: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B7F5 0A:B7E5: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02B7F6 0A:B7E6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B7F7 0A:B7E7: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02B7F8 0A:B7E8: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B7F9 0A:B7E9: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02B7FA 0A:B7EA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B7FB 0A:B7EB: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02B7FC 0A:B7EC: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B7FD 0A:B7ED: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B7FE 0A:B7EE: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B7FF 0A:B7EF: 06        .byte con_X + $06   ; 
@end:



_off009_B7F0_31:
- D 1 - I - 0x02B800 0A:B7F0: 04        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B801 0A:B7F1: CA        .byte con_Y + $CA   ; 
- D 1 - I - 0x02B802 0A:B7F2: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02B803 0A:B7F3: 83        .byte con_A + $83   ; 
- D 1 - I - 0x02B804 0A:B7F4: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02B805 0A:B7F5: CA        .byte con_Y + $CA   ; 
- D 1 - I - 0x02B806 0A:B7F6: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02B807 0A:B7F7: 83        .byte con_A + $83   ; 
- D 1 - I - 0x02B808 0A:B7F8: 20        .byte con_X + $20   ; 

- D 1 - I - 0x02B809 0A:B7F9: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B80A 0A:B7FA: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02B80B 0A:B7FB: 03        .byte con_A + $03   ; 
- D 1 - I - 0x02B80C 0A:B7FC: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02B80D 0A:B7FD: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B80E 0A:B7FE: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02B80F 0A:B7FF: 03        .byte con_A + $03   ; 
- D 1 - I - 0x02B810 0A:B800: 20        .byte con_X + $20   ; 
@end:



_off009_B801_32:
- D 1 - I - 0x02B811 0A:B801: 04        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B812 0A:B802: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B813 0A:B803: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02B814 0A:B804: 03        .byte con_A + $03   ; 
- D 1 - I - 0x02B815 0A:B805: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02B816 0A:B806: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B817 0A:B807: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02B818 0A:B808: 03        .byte con_A + $03   ; 
- D 1 - I - 0x02B819 0A:B809: 20        .byte con_X + $20   ; 

- D 1 - I - 0x02B81A 0A:B80A: CA        .byte con_Y + $CA   ; 
- D 1 - I - 0x02B81B 0A:B80B: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02B81C 0A:B80C: 83        .byte con_A + $83   ; 
- D 1 - I - 0x02B81D 0A:B80D: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02B81E 0A:B80E: CA        .byte con_Y + $CA   ; 
- D 1 - I - 0x02B81F 0A:B80F: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02B820 0A:B810: 83        .byte con_A + $83   ; 
- D 1 - I - 0x02B821 0A:B811: 20        .byte con_X + $20   ; 
@end:



_off009_B812_33:
- D 1 - I - 0x02B822 0A:B812: 04        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B823 0A:B813: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B824 0A:B814: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02B825 0A:B815: 03        .byte con_A + $03   ; 
- D 1 - I - 0x02B826 0A:B816: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02B827 0A:B817: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B828 0A:B818: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02B829 0A:B819: 03        .byte con_A + $03   ; 
- D 1 - I - 0x02B82A 0A:B81A: 20        .byte con_X + $20   ; 

- D 1 - I - 0x02B82B 0A:B81B: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B82C 0A:B81C: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02B82D 0A:B81D: 03        .byte con_A + $03   ; 
- D 1 - I - 0x02B82E 0A:B81E: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02B82F 0A:B81F: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B830 0A:B820: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02B831 0A:B821: 03        .byte con_A + $03   ; 
- D 1 - I - 0x02B832 0A:B822: 20        .byte con_X + $20   ; 
@end:



_off009_B823_34:
- D 1 - I - 0x02B833 0A:B823: 0D        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B834 0A:B824: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B835 0A:B825: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B836 0A:B826: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B837 0A:B827: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B838 0A:B828: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B839 0A:B829: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B83A 0A:B82A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B83B 0A:B82B: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B83C 0A:B82C: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B83D 0A:B82D: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B83E 0A:B82E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B83F 0A:B82F: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02B840 0A:B830: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B841 0A:B831: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B842 0A:B832: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B843 0A:B833: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B844 0A:B834: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B845 0A:B835: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B846 0A:B836: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B847 0A:B837: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B848 0A:B838: CF        .byte con_Y + $CF   ; 
- D 1 - I - 0x02B849 0A:B839: 61        .byte con_T + $61   ; 
- D 1 - I - 0x02B84A 0A:B83A: 80        .byte con_A + $80   ; 
- D 1 - I - 0x02B84B 0A:B83B: 18        .byte con_X + $18   ; 

- D 1 - I - 0x02B84C 0A:B83C: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B84D 0A:B83D: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02B84E 0A:B83E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B84F 0A:B83F: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02B850 0A:B840: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B851 0A:B841: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02B852 0A:B842: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B853 0A:B843: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02B854 0A:B844: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B855 0A:B845: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02B856 0A:B846: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B857 0A:B847: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02B858 0A:B848: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B859 0A:B849: 59        .byte con_T + $59   ; 
- D 1 - I - 0x02B85A 0A:B84A: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B85B 0A:B84B: 0E        .byte con_X + $0E   ; 

- D 1 - I - 0x02B85C 0A:B84C: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B85D 0A:B84D: 65        .byte con_T + $65   ; 
- D 1 - I - 0x02B85E 0A:B84E: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B85F 0A:B84F: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B860 0A:B850: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B861 0A:B851: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02B862 0A:B852: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B863 0A:B853: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B864 0A:B854: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B865 0A:B855: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B866 0A:B856: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B867 0A:B857: 0D        .byte con_X + $0D   ; 
@end:



_off009_B858_35:
- D 1 - I - 0x02B868 0A:B858: 0E        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B869 0A:B859: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02B86A 0A:B85A: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02B86B 0A:B85B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B86C 0A:B85C: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B86D 0A:B85D: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B86E 0A:B85E: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02B86F 0A:B85F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B870 0A:B860: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02B871 0A:B861: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B872 0A:B862: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B873 0A:B863: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B874 0A:B864: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02B875 0A:B865: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B876 0A:B866: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B877 0A:B867: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B878 0A:B868: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02B879 0A:B869: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B87A 0A:B86A: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02B87B 0A:B86B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B87C 0A:B86C: 0E        .byte con_X + $0E   ; 

- D 1 - I - 0x02B87D 0A:B86D: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B87E 0A:B86E: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02B87F 0A:B86F: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B880 0A:B870: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02B881 0A:B871: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B882 0A:B872: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02B883 0A:B873: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B884 0A:B874: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02B885 0A:B875: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B886 0A:B876: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02B887 0A:B877: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B888 0A:B878: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02B889 0A:B879: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B88A 0A:B87A: 57        .byte con_T + $57   ; 
- D 1 - I - 0x02B88B 0A:B87B: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B88C 0A:B87C: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02B88D 0A:B87D: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B88E 0A:B87E: 55        .byte con_T + $55   ; 
- D 1 - I - 0x02B88F 0A:B87F: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B890 0A:B880: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02B891 0A:B881: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B892 0A:B882: 53        .byte con_T + $53   ; 
- D 1 - I - 0x02B893 0A:B883: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B894 0A:B884: 0D        .byte con_X + $0D   ; 

- D 1 - I - 0x02B895 0A:B885: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B896 0A:B886: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02B897 0A:B887: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B898 0A:B888: F7        .byte con_X + $F7   ; 

- D 1 - I - 0x02B899 0A:B889: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B89A 0A:B88A: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02B89B 0A:B88B: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B89C 0A:B88C: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02B89D 0A:B88D: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B89E 0A:B88E: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02B89F 0A:B88F: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B8A0 0A:B890: 0C        .byte con_X + $0C   ; 
@end:



_off009_B891_36:
- D 1 - I - 0x02B8A1 0A:B891: 0D        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B8A2 0A:B892: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B8A3 0A:B893: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02B8A4 0A:B894: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B8A5 0A:B895: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02B8A6 0A:B896: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B8A7 0A:B897: 35        .byte con_T + $35   ; 
- D 1 - I - 0x02B8A8 0A:B898: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B8A9 0A:B899: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B8AA 0A:B89A: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B8AB 0A:B89B: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02B8AC 0A:B89C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B8AD 0A:B89D: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02B8AE 0A:B89E: DA        .byte con_Y + $DA   ; 
- D 1 - I - 0x02B8AF 0A:B89F: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02B8B0 0A:B8A0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B8B1 0A:B8A1: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02B8B2 0A:B8A2: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B8B3 0A:B8A3: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02B8B4 0A:B8A4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B8B5 0A:B8A5: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B8B6 0A:B8A6: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B8B7 0A:B8A7: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02B8B8 0A:B8A8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B8B9 0A:B8A9: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B8BA 0A:B8AA: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B8BB 0A:B8AB: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02B8BC 0A:B8AC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B8BD 0A:B8AD: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B8BE 0A:B8AE: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B8BF 0A:B8AF: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02B8C0 0A:B8B0: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B8C1 0A:B8B1: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02B8C2 0A:B8B2: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B8C3 0A:B8B3: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02B8C4 0A:B8B4: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B8C5 0A:B8B5: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02B8C6 0A:B8B6: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B8C7 0A:B8B7: 59        .byte con_T + $59   ; 
- D 1 - I - 0x02B8C8 0A:B8B8: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B8C9 0A:B8B9: 0E        .byte con_X + $0E   ; 

- D 1 - I - 0x02B8CA 0A:B8BA: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B8CB 0A:B8BB: 4B        .byte con_T + $4B   ; 
- D 1 - I - 0x02B8CC 0A:B8BC: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B8CD 0A:B8BD: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B8CE 0A:B8BE: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B8CF 0A:B8BF: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02B8D0 0A:B8C0: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B8D1 0A:B8C1: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B8D2 0A:B8C2: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B8D3 0A:B8C3: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B8D4 0A:B8C4: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B8D5 0A:B8C5: 0D        .byte con_X + $0D   ; 
@end:



_off009_B8C6_37:
- D 1 - I - 0x02B8D6 0A:B8C6: 0A        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B8D7 0A:B8C7: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B8D8 0A:B8C8: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B8D9 0A:B8C9: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B8DA 0A:B8CA: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02B8DB 0A:B8CB: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B8DC 0A:B8CC: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B8DD 0A:B8CD: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B8DE 0A:B8CE: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02B8DF 0A:B8CF: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B8E0 0A:B8D0: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B8E1 0A:B8D1: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B8E2 0A:B8D2: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02B8E3 0A:B8D3: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B8E4 0A:B8D4: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02B8E5 0A:B8D5: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B8E6 0A:B8D6: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02B8E7 0A:B8D7: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B8E8 0A:B8D8: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B8E9 0A:B8D9: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B8EA 0A:B8DA: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02B8EB 0A:B8DB: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B8EC 0A:B8DC: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B8ED 0A:B8DD: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B8EE 0A:B8DE: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02B8EF 0A:B8DF: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B8F0 0A:B8E0: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02B8F1 0A:B8E1: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B8F2 0A:B8E2: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02B8F3 0A:B8E3: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B8F4 0A:B8E4: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02B8F5 0A:B8E5: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B8F6 0A:B8E6: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02B8F7 0A:B8E7: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B8F8 0A:B8E8: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02B8F9 0A:B8E9: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B8FA 0A:B8EA: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02B8FB 0A:B8EB: F6        .byte con_Y + $F6   ; 
- D 1 - I - 0x02B8FC 0A:B8EC: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B8FD 0A:B8ED: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B8FE 0A:B8EE: 11        .byte con_X + $11   ; 
@end:



_off009_B8EF_38:
- D 1 - I - 0x02B8FF 0A:B8EF: 0A        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B900 0A:B8F0: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B901 0A:B8F1: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02B902 0A:B8F2: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B903 0A:B8F3: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02B904 0A:B8F4: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B905 0A:B8F5: 53        .byte con_T + $53   ; 
- D 1 - I - 0x02B906 0A:B8F6: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B907 0A:B8F7: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02B908 0A:B8F8: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B909 0A:B8F9: 55        .byte con_T + $55   ; 
- D 1 - I - 0x02B90A 0A:B8FA: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B90B 0A:B8FB: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02B90C 0A:B8FC: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B90D 0A:B8FD: 57        .byte con_T + $57   ; 
- D 1 - I - 0x02B90E 0A:B8FE: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B90F 0A:B8FF: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02B910 0A:B900: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B911 0A:B901: 59        .byte con_T + $59   ; 
- D 1 - I - 0x02B912 0A:B902: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B913 0A:B903: F2        .byte con_X + $F2   ; 

- D 1 - I - 0x02B914 0A:B904: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B915 0A:B905: 5B        .byte con_T + $5B   ; 
- D 1 - I - 0x02B916 0A:B906: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B917 0A:B907: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02B918 0A:B908: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B919 0A:B909: 5D        .byte con_T + $5D   ; 
- D 1 - I - 0x02B91A 0A:B90A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B91B 0A:B90B: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02B91C 0A:B90C: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B91D 0A:B90D: 5F        .byte con_T + $5F   ; 
- D 1 - I - 0x02B91E 0A:B90E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B91F 0A:B90F: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02B920 0A:B910: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B921 0A:B911: 61        .byte con_T + $61   ; 
- D 1 - I - 0x02B922 0A:B912: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B923 0A:B913: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02B924 0A:B914: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02B925 0A:B915: 61        .byte con_T + $61   ; 
- D 1 - I - 0x02B926 0A:B916: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B927 0A:B917: 02        .byte con_X + $02   ; 
@end:



_off009_B918_39:
- D 1 - I - 0x02B928 0A:B918: 0B        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B929 0A:B919: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B92A 0A:B91A: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02B92B 0A:B91B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B92C 0A:B91C: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B92D 0A:B91D: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B92E 0A:B91E: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02B92F 0A:B91F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B930 0A:B920: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B931 0A:B921: C9        .byte con_Y + $C9   ; 
- D 1 - I - 0x02B932 0A:B922: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02B933 0A:B923: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B934 0A:B924: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02B935 0A:B925: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B936 0A:B926: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02B937 0A:B927: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B938 0A:B928: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B939 0A:B929: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B93A 0A:B92A: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02B93B 0A:B92B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B93C 0A:B92C: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B93D 0A:B92D: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B93E 0A:B92E: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02B93F 0A:B92F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B940 0A:B930: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02B941 0A:B931: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B942 0A:B932: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02B943 0A:B933: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B944 0A:B934: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02B945 0A:B935: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B946 0A:B936: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02B947 0A:B937: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B948 0A:B938: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02B949 0A:B939: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B94A 0A:B93A: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02B94B 0A:B93B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B94C 0A:B93C: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02B94D 0A:B93D: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B94E 0A:B93E: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02B94F 0A:B93F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B950 0A:B940: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02B951 0A:B941: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B952 0A:B942: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B953 0A:B943: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B954 0A:B944: 0A        .byte con_X + $0A   ; 
@end:



_off009_B945_3A:
- D 1 - I - 0x02B955 0A:B945: 0C        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B956 0A:B946: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B957 0A:B947: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02B958 0A:B948: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B959 0A:B949: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02B95A 0A:B94A: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02B95B 0A:B94B: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02B95C 0A:B94C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B95D 0A:B94D: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02B95E 0A:B94E: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B95F 0A:B94F: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02B960 0A:B950: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B961 0A:B951: 0F        .byte con_X + $0F   ; 

- D 1 - I - 0x02B962 0A:B952: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B963 0A:B953: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02B964 0A:B954: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B965 0A:B955: FF        .byte con_X + $FF   ; 

- D 1 - I - 0x02B966 0A:B956: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B967 0A:B957: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02B968 0A:B958: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B969 0A:B959: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02B96A 0A:B95A: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02B96B 0A:B95B: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02B96C 0A:B95C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B96D 0A:B95D: 0F        .byte con_X + $0F   ; 

- D 1 - I - 0x02B96E 0A:B95E: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B96F 0A:B95F: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02B970 0A:B960: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B971 0A:B961: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02B972 0A:B962: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B973 0A:B963: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02B974 0A:B964: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B975 0A:B965: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02B976 0A:B966: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02B977 0A:B967: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02B978 0A:B968: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B979 0A:B969: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02B97A 0A:B96A: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B97B 0A:B96B: 4F        .byte con_T + $4F   ; 
- D 1 - I - 0x02B97C 0A:B96C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B97D 0A:B96D: F1        .byte con_X + $F1   ; 

- D 1 - I - 0x02B97E 0A:B96E: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B97F 0A:B96F: 51        .byte con_T + $51   ; 
- D 1 - I - 0x02B980 0A:B970: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B981 0A:B971: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02B982 0A:B972: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02B983 0A:B973: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02B984 0A:B974: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02B985 0A:B975: 0A        .byte con_X + $0A   ; 
@end:



_off009_B976_3B:
- D 1 - I - 0x02B986 0A:B976: 0C        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B987 0A:B977: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02B988 0A:B978: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02B989 0A:B979: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B98A 0A:B97A: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B98B 0A:B97B: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B98C 0A:B97C: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02B98D 0A:B97D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B98E 0A:B97E: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B98F 0A:B97F: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B990 0A:B980: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02B991 0A:B981: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B992 0A:B982: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B993 0A:B983: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02B994 0A:B984: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02B995 0A:B985: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B996 0A:B986: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B997 0A:B987: B8        .byte con_Y + $B8   ; 
- D 1 - I - 0x02B998 0A:B988: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02B999 0A:B989: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B99A 0A:B98A: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B99B 0A:B98B: B8        .byte con_Y + $B8   ; 
- D 1 - I - 0x02B99C 0A:B98C: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02B99D 0A:B98D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B99E 0A:B98E: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B99F 0A:B98F: C8        .byte con_Y + $C8   ; 
- D 1 - I - 0x02B9A0 0A:B990: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02B9A1 0A:B991: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B9A2 0A:B992: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B9A3 0A:B993: C8        .byte con_Y + $C8   ; 
- D 1 - I - 0x02B9A4 0A:B994: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02B9A5 0A:B995: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B9A6 0A:B996: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B9A7 0A:B997: D8        .byte con_Y + $D8   ; 
- D 1 - I - 0x02B9A8 0A:B998: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02B9A9 0A:B999: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B9AA 0A:B99A: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B9AB 0A:B99B: D8        .byte con_Y + $D8   ; 
- D 1 - I - 0x02B9AC 0A:B99C: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02B9AD 0A:B99D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B9AE 0A:B99E: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02B9AF 0A:B99F: E8        .byte con_Y + $E8   ; 
- D 1 - I - 0x02B9B0 0A:B9A0: 35        .byte con_T + $35   ; 
- D 1 - I - 0x02B9B1 0A:B9A1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B9B2 0A:B9A2: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02B9B3 0A:B9A3: E8        .byte con_Y + $E8   ; 
- D 1 - I - 0x02B9B4 0A:B9A4: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02B9B5 0A:B9A5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B9B6 0A:B9A6: 08        .byte con_X + $08   ; 
@end:



_off009_B9A7_3C:
- D 1 - I - 0x02B9B7 0A:B9A7: 01        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B9B8 0A:B9A8: C9        .byte con_Y + $C9   ; 
- D 1 - I - 0x02B9B9 0A:B9A9: 3B        .byte con_T + $3B   ; 
- D 1 - I - 0x02B9BA 0A:B9AA: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02B9BB 0A:B9AB: 18        .byte con_X + $18   ; 
@end:



_off009_B9AC_3D:
- D 1 - I - 0x02B9BC 0A:B9AC: 03        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B9BD 0A:B9AD: B9        .byte con_Y + $B9   ; 
- D 1 - I - 0x02B9BE 0A:B9AE: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02B9BF 0A:B9AF: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02B9C0 0A:B9B0: 17        .byte con_X + $17   ; 

- D 1 - I - 0x02B9C1 0A:B9B1: CA        .byte con_Y + $CA   ; 
- D 1 - I - 0x02B9C2 0A:B9B2: 3F        .byte con_T + $3F   ; 
- D 1 - I - 0x02B9C3 0A:B9B3: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02B9C4 0A:B9B4: 1A        .byte con_X + $1A   ; 

- D 1 - I - 0x02B9C5 0A:B9B5: DC        .byte con_Y + $DC   ; 
- D 1 - I - 0x02B9C6 0A:B9B6: 3D        .byte con_T + $3D   ; 
- D 1 - I - 0x02B9C7 0A:B9B7: 82        .byte con_A + $82   ; 
- D 1 - I - 0x02B9C8 0A:B9B8: 17        .byte con_X + $17   ; 
@end:



_off009_B9B9_3E:
- D 1 - I - 0x02B9C9 0A:B9B9: 02        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B9CA 0A:B9BA: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B9CB 0A:B9BB: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02B9CC 0A:B9BC: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02B9CD 0A:B9BD: 1C        .byte con_X + $1C   ; 

- D 1 - I - 0x02B9CE 0A:B9BE: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B9CF 0A:B9BF: 39        .byte con_T + $39   ; 
- D 1 - I - 0x02B9D0 0A:B9C0: 82        .byte con_A + $82   ; 
- D 1 - I - 0x02B9D1 0A:B9C1: 1C        .byte con_X + $1C   ; 
@end:



_off009_B9C2_3F:
- D 1 - I - 0x02B9D2 0A:B9C2: 01        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B9D3 0A:B9C3: F8        .byte con_Y + $F8   ; 
- D 1 - I - 0x02B9D4 0A:B9C4: 71        .byte con_T + $71   ; 
- D 1 - I - 0x02B9D5 0A:B9C5: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02B9D6 0A:B9C6: FD        .byte con_X + $FD   ; 
@end:



_off009_B9C7_40:
- D 1 - I - 0x02B9D7 0A:B9C7: 02        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B9D8 0A:B9C8: F8        .byte con_Y + $F8   ; 
- D 1 - I - 0x02B9D9 0A:B9C9: 73        .byte con_T + $73   ; 
- D 1 - I - 0x02B9DA 0A:B9CA: 82        .byte con_A + $82   ; 
- D 1 - I - 0x02B9DB 0A:B9CB: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02B9DC 0A:B9CC: F8        .byte con_Y + $F8   ; 
- D 1 - I - 0x02B9DD 0A:B9CD: 75        .byte con_T + $75   ; 
- D 1 - I - 0x02B9DE 0A:B9CE: 82        .byte con_A + $82   ; 
- D 1 - I - 0x02B9DF 0A:B9CF: 00        .byte con_X + $00   ; 
@end:



_off009_B9D0_41:
- D 1 - I - 0x02B9E0 0A:B9D0: 02        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B9E1 0A:B9D1: F0        .byte con_Y + $F0   ; 
- D 1 - I - 0x02B9E2 0A:B9D2: 77        .byte con_T + $77   ; 
- D 1 - I - 0x02B9E3 0A:B9D3: 02        .byte con_A + $02   ; 
- D 1 - I - 0x02B9E4 0A:B9D4: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02B9E5 0A:B9D5: 00        .byte con_Y + $00   ; 
- D 1 - I - 0x02B9E6 0A:B9D6: 77        .byte con_T + $77   ; 
- D 1 - I - 0x02B9E7 0A:B9D7: 82        .byte con_A + $82   ; 
- D 1 - I - 0x02B9E8 0A:B9D8: FC        .byte con_X + $FC   ; 
@end:



_off009_B9D9_42:
- D 1 - I - 0x02B9E9 0A:B9D9: 0B        .byte (@end - * - 1) / 4

- D 1 - I - 0x02B9EA 0A:B9DA: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B9EB 0A:B9DB: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02B9EC 0A:B9DC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B9ED 0A:B9DD: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02B9EE 0A:B9DE: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B9EF 0A:B9DF: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02B9F0 0A:B9E0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B9F1 0A:B9E1: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02B9F2 0A:B9E2: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02B9F3 0A:B9E3: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02B9F4 0A:B9E4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B9F5 0A:B9E5: 11        .byte con_X + $11   ; 

- D 1 - I - 0x02B9F6 0A:B9E6: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B9F7 0A:B9E7: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02B9F8 0A:B9E8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B9F9 0A:B9E9: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02B9FA 0A:B9EA: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B9FB 0A:B9EB: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02B9FC 0A:B9EC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02B9FD 0A:B9ED: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02B9FE 0A:B9EE: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02B9FF 0A:B9EF: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02BA00 0A:B9F0: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA01 0A:B9F1: 11        .byte con_X + $11   ; 

- D 1 - I - 0x02BA02 0A:B9F2: CB        .byte con_Y + $CB   ; 
- D 1 - I - 0x02BA03 0A:B9F3: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02BA04 0A:B9F4: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA05 0A:B9F5: 19        .byte con_X + $19   ; 

- D 1 - I - 0x02BA06 0A:B9F6: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02BA07 0A:B9F7: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02BA08 0A:B9F8: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA09 0A:B9F9: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02BA0A 0A:B9FA: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02BA0B 0A:B9FB: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02BA0C 0A:B9FC: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA0D 0A:B9FD: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02BA0E 0A:B9FE: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02BA0F 0A:B9FF: 53        .byte con_T + $53   ; 
- D 1 - I - 0x02BA10 0A:BA00: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA11 0A:BA01: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02BA12 0A:BA02: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02BA13 0A:BA03: 55        .byte con_T + $55   ; 
- D 1 - I - 0x02BA14 0A:BA04: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA15 0A:BA05: 08        .byte con_X + $08   ; 
@end:



_off009_BA06_43:
- D 1 - I - 0x02BA16 0A:BA06: 0C        .byte (@end - * - 1) / 4

- D 1 - I - 0x02BA17 0A:BA07: AC        .byte con_Y + $AC   ; 
- D 1 - I - 0x02BA18 0A:BA08: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02BA19 0A:BA09: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA1A 0A:BA0A: 13        .byte con_X + $13   ; 

- D 1 - I - 0x02BA1B 0A:BA0B: AC        .byte con_Y + $AC   ; 
- D 1 - I - 0x02BA1C 0A:BA0C: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02BA1D 0A:BA0D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA1E 0A:BA0E: 1B        .byte con_X + $1B   ; 

- D 1 - I - 0x02BA1F 0A:BA0F: BC        .byte con_Y + $BC   ; 
- D 1 - I - 0x02BA20 0A:BA10: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02BA21 0A:BA11: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA22 0A:BA12: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02BA23 0A:BA13: BC        .byte con_Y + $BC   ; 
- D 1 - I - 0x02BA24 0A:BA14: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02BA25 0A:BA15: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA26 0A:BA16: 0E        .byte con_X + $0E   ; 

- D 1 - I - 0x02BA27 0A:BA17: BC        .byte con_Y + $BC   ; 
- D 1 - I - 0x02BA28 0A:BA18: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02BA29 0A:BA19: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA2A 0A:BA1A: 16        .byte con_X + $16   ; 

- D 1 - I - 0x02BA2B 0A:BA1B: CC        .byte con_Y + $CC   ; 
- D 1 - I - 0x02BA2C 0A:BA1C: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02BA2D 0A:BA1D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA2E 0A:BA1E: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02BA2F 0A:BA1F: CC        .byte con_Y + $CC   ; 
- D 1 - I - 0x02BA30 0A:BA20: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02BA31 0A:BA21: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA32 0A:BA22: 0E        .byte con_X + $0E   ; 

- D 1 - I - 0x02BA33 0A:BA23: CC        .byte con_Y + $CC   ; 
- D 1 - I - 0x02BA34 0A:BA24: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02BA35 0A:BA25: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA36 0A:BA26: 16        .byte con_X + $16   ; 

- D 1 - I - 0x02BA37 0A:BA27: DC        .byte con_Y + $DC   ; 
- D 1 - I - 0x02BA38 0A:BA28: 35        .byte con_T + $35   ; 
- D 1 - I - 0x02BA39 0A:BA29: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA3A 0A:BA2A: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02BA3B 0A:BA2B: DC        .byte con_Y + $DC   ; 
- D 1 - I - 0x02BA3C 0A:BA2C: 37        .byte con_T + $37   ; 
- D 1 - I - 0x02BA3D 0A:BA2D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA3E 0A:BA2E: 13        .byte con_X + $13   ; 

- D 1 - I - 0x02BA3F 0A:BA2F: EC        .byte con_Y + $EC   ; 
- D 1 - I - 0x02BA40 0A:BA30: 53        .byte con_T + $53   ; 
- D 1 - I - 0x02BA41 0A:BA31: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA42 0A:BA32: 0A        .byte con_X + $0A   ; 

- D 1 - I - 0x02BA43 0A:BA33: EC        .byte con_Y + $EC   ; 
- D 1 - I - 0x02BA44 0A:BA34: 55        .byte con_T + $55   ; 
- D 1 - I - 0x02BA45 0A:BA35: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA46 0A:BA36: 12        .byte con_X + $12   ; 
@end:



_off009_BA37_44:
- D 1 - I - 0x02BA47 0A:BA37: 0E        .byte (@end - * - 1) / 4

- D 1 - I - 0x02BA48 0A:BA38: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02BA49 0A:BA39: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02BA4A 0A:BA3A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA4B 0A:BA3B: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02BA4C 0A:BA3C: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02BA4D 0A:BA3D: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02BA4E 0A:BA3E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA4F 0A:BA3F: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02BA50 0A:BA40: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02BA51 0A:BA41: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02BA52 0A:BA42: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA53 0A:BA43: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02BA54 0A:BA44: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02BA55 0A:BA45: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02BA56 0A:BA46: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA57 0A:BA47: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02BA58 0A:BA48: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02BA59 0A:BA49: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02BA5A 0A:BA4A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA5B 0A:BA4B: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02BA5C 0A:BA4C: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02BA5D 0A:BA4D: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02BA5E 0A:BA4E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA5F 0A:BA4F: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02BA60 0A:BA50: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02BA61 0A:BA51: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02BA62 0A:BA52: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA63 0A:BA53: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02BA64 0A:BA54: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02BA65 0A:BA55: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02BA66 0A:BA56: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA67 0A:BA57: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02BA68 0A:BA58: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02BA69 0A:BA59: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02BA6A 0A:BA5A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA6B 0A:BA5B: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02BA6C 0A:BA5C: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02BA6D 0A:BA5D: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02BA6E 0A:BA5E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA6F 0A:BA5F: FE        .byte con_X + $FE   ; 

- D 1 - I - 0x02BA70 0A:BA60: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02BA71 0A:BA61: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02BA72 0A:BA62: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA73 0A:BA63: 06        .byte con_X + $06   ; 

- D 1 - I - 0x02BA74 0A:BA64: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02BA75 0A:BA65: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02BA76 0A:BA66: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA77 0A:BA67: F6        .byte con_X + $F6   ; 

- D 1 - I - 0x02BA78 0A:BA68: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02BA79 0A:BA69: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02BA7A 0A:BA6A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA7B 0A:BA6B: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02BA7C 0A:BA6C: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02BA7D 0A:BA6D: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02BA7E 0A:BA6E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA7F 0A:BA6F: 0C        .byte con_X + $0C   ; 
@end:



_off009_BA70_45:
- D 1 - I - 0x02BA80 0A:BA70: 0C        .byte (@end - * - 1) / 4

- D 1 - I - 0x02BA81 0A:BA71: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02BA82 0A:BA72: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02BA83 0A:BA73: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA84 0A:BA74: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02BA85 0A:BA75: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02BA86 0A:BA76: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02BA87 0A:BA77: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA88 0A:BA78: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02BA89 0A:BA79: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02BA8A 0A:BA7A: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02BA8B 0A:BA7B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA8C 0A:BA7C: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02BA8D 0A:BA7D: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02BA8E 0A:BA7E: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02BA8F 0A:BA7F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA90 0A:BA80: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02BA91 0A:BA81: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02BA92 0A:BA82: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02BA93 0A:BA83: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA94 0A:BA84: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02BA95 0A:BA85: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02BA96 0A:BA86: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02BA97 0A:BA87: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BA98 0A:BA88: 0D        .byte con_X + $0D   ; 

- D 1 - I - 0x02BA99 0A:BA89: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02BA9A 0A:BA8A: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02BA9B 0A:BA8B: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BA9C 0A:BA8C: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02BA9D 0A:BA8D: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02BA9E 0A:BA8E: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02BA9F 0A:BA8F: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BAA0 0A:BA90: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02BAA1 0A:BA91: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02BAA2 0A:BA92: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02BAA3 0A:BA93: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BAA4 0A:BA94: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02BAA5 0A:BA95: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02BAA6 0A:BA96: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02BAA7 0A:BA97: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BAA8 0A:BA98: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02BAA9 0A:BA99: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02BAAA 0A:BA9A: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02BAAB 0A:BA9B: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BAAC 0A:BA9C: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02BAAD 0A:BA9D: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02BAAE 0A:BA9E: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02BAAF 0A:BA9F: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BAB0 0A:BAA0: FB        .byte con_X + $FB   ; 
@end:



_off009_BAA1_46:
- D 1 - I - 0x02BAB1 0A:BAA1: 0E        .byte (@end - * - 1) / 4

- D 1 - I - 0x02BAB2 0A:BAA2: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02BAB3 0A:BAA3: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02BAB4 0A:BAA4: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BAB5 0A:BAA5: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02BAB6 0A:BAA6: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02BAB7 0A:BAA7: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02BAB8 0A:BAA8: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BAB9 0A:BAA9: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02BABA 0A:BAAA: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02BABB 0A:BAAB: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02BABC 0A:BAAC: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BABD 0A:BAAD: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02BABE 0A:BAAE: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02BABF 0A:BAAF: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02BAC0 0A:BAB0: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BAC1 0A:BAB1: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02BAC2 0A:BAB2: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02BAC3 0A:BAB3: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02BAC4 0A:BAB4: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BAC5 0A:BAB5: 0D        .byte con_X + $0D   ; 

- D 1 - I - 0x02BAC6 0A:BAB6: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02BAC7 0A:BAB7: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02BAC8 0A:BAB8: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BAC9 0A:BAB9: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02BACA 0A:BABA: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02BACB 0A:BABB: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02BACC 0A:BABC: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BACD 0A:BABD: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02BACE 0A:BABE: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02BACF 0A:BABF: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02BAD0 0A:BAC0: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BAD1 0A:BAC1: 0C        .byte con_X + $0C   ; 

- D 1 - I - 0x02BAD2 0A:BAC2: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02BAD3 0A:BAC3: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02BAD4 0A:BAC4: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BAD5 0A:BAC5: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02BAD6 0A:BAC6: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02BAD7 0A:BAC7: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02BAD8 0A:BAC8: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BAD9 0A:BAC9: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02BADA 0A:BACA: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02BADB 0A:BACB: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02BADC 0A:BACC: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BADD 0A:BACD: 0B        .byte con_X + $0B   ; 

- D 1 - I - 0x02BADE 0A:BACE: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02BADF 0A:BACF: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02BAE0 0A:BAD0: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BAE1 0A:BAD1: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02BAE2 0A:BAD2: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02BAE3 0A:BAD3: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02BAE4 0A:BAD4: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BAE5 0A:BAD5: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02BAE6 0A:BAD6: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02BAE7 0A:BAD7: 41        .byte con_T + $41   ; 
- D 1 - I - 0x02BAE8 0A:BAD8: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BAE9 0A:BAD9: 0B        .byte con_X + $0B   ; 
@end:



_off009_BADA_47:
- D 1 - I - 0x02BAEA 0A:BADA: 0E        .byte (@end - * - 1) / 4

- D 1 - I - 0x02BAEB 0A:BADB: B1        .byte con_Y + $B1   ; 
- D 1 - I - 0x02BAEC 0A:BADC: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02BAED 0A:BADD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BAEE 0A:BADE: 02        .byte con_X + $02   ; 

- D 1 - I - 0x02BAEF 0A:BADF: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02BAF0 0A:BAE0: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02BAF1 0A:BAE1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BAF2 0A:BAE2: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02BAF3 0A:BAE3: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02BAF4 0A:BAE4: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02BAF5 0A:BAE5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BAF6 0A:BAE6: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02BAF7 0A:BAE7: C1        .byte con_Y + $C1   ; 
- D 1 - I - 0x02BAF8 0A:BAE8: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02BAF9 0A:BAE9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BAFA 0A:BAEA: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02BAFB 0A:BAEB: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02BAFC 0A:BAEC: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02BAFD 0A:BAED: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BAFE 0A:BAEE: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02BAFF 0A:BAEF: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02BB00 0A:BAF0: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02BB01 0A:BAF1: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB02 0A:BAF2: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02BB03 0A:BAF3: D1        .byte con_Y + $D1   ; 
- D 1 - I - 0x02BB04 0A:BAF4: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02BB05 0A:BAF5: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB06 0A:BAF6: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02BB07 0A:BAF7: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02BB08 0A:BAF8: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02BB09 0A:BAF9: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB0A 0A:BAFA: F9        .byte con_X + $F9   ; 

- D 1 - I - 0x02BB0B 0A:BAFB: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02BB0C 0A:BAFC: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02BB0D 0A:BAFD: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB0E 0A:BAFE: 01        .byte con_X + $01   ; 

- D 1 - I - 0x02BB0F 0A:BAFF: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02BB10 0A:BB00: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02BB11 0A:BB01: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BB12 0A:BB02: 09        .byte con_X + $09   ; 

- D 1 - I - 0x02BB13 0A:BB03: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02BB14 0A:BB04: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02BB15 0A:BB05: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BB16 0A:BB06: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02BB17 0A:BB07: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02BB18 0A:BB08: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02BB19 0A:BB09: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BB1A 0A:BB0A: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02BB1B 0A:BB0B: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02BB1C 0A:BB0C: 43        .byte con_T + $43   ; 
- D 1 - I - 0x02BB1D 0A:BB0D: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB1E 0A:BB0E: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02BB1F 0A:BB0F: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02BB20 0A:BB10: 45        .byte con_T + $45   ; 
- D 1 - I - 0x02BB21 0A:BB11: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB22 0A:BB12: 0D        .byte con_X + $0D   ; 
@end:



_off009_BB13_48:
- D 1 - I - 0x02BB23 0A:BB13: 0D        .byte (@end - * - 1) / 4

- D 1 - I - 0x02BB24 0A:BB14: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02BB25 0A:BB15: 01        .byte con_T + $01   ; 
- D 1 - I - 0x02BB26 0A:BB16: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB27 0A:BB17: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02BB28 0A:BB18: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02BB29 0A:BB19: 03        .byte con_T + $03   ; 
- D 1 - I - 0x02BB2A 0A:BB1A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB2B 0A:BB1B: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02BB2C 0A:BB1C: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02BB2D 0A:BB1D: 05        .byte con_T + $05   ; 
- D 1 - I - 0x02BB2E 0A:BB1E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB2F 0A:BB1F: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02BB30 0A:BB20: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02BB31 0A:BB21: 07        .byte con_T + $07   ; 
- D 1 - I - 0x02BB32 0A:BB22: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB33 0A:BB23: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02BB34 0A:BB24: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02BB35 0A:BB25: 09        .byte con_T + $09   ; 
- D 1 - I - 0x02BB36 0A:BB26: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB37 0A:BB27: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02BB38 0A:BB28: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02BB39 0A:BB29: 0B        .byte con_T + $0B   ; 
- D 1 - I - 0x02BB3A 0A:BB2A: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB3B 0A:BB2B: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02BB3C 0A:BB2C: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02BB3D 0A:BB2D: 0D        .byte con_T + $0D   ; 
- D 1 - I - 0x02BB3E 0A:BB2E: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB3F 0A:BB2F: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02BB40 0A:BB30: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02BB41 0A:BB31: 0F        .byte con_T + $0F   ; 
- D 1 - I - 0x02BB42 0A:BB32: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB43 0A:BB33: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02BB44 0A:BB34: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02BB45 0A:BB35: 11        .byte con_T + $11   ; 
- D 1 - I - 0x02BB46 0A:BB36: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB47 0A:BB37: 05        .byte con_X + $05   ; 

- D 1 - I - 0x02BB48 0A:BB38: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02BB49 0A:BB39: 65        .byte con_T + $65   ; 
- D 1 - I - 0x02BB4A 0A:BB3A: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BB4B 0A:BB3B: F0        .byte con_X + $F0   ; 

- D 1 - I - 0x02BB4C 0A:BB3C: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02BB4D 0A:BB3D: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02BB4E 0A:BB3E: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BB4F 0A:BB3F: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02BB50 0A:BB40: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02BB51 0A:BB41: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02BB52 0A:BB42: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB53 0A:BB43: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02BB54 0A:BB44: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02BB55 0A:BB45: 65        .byte con_T + $65   ; 
- D 1 - I - 0x02BB56 0A:BB46: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB57 0A:BB47: 0B        .byte con_X + $0B   ; 
@end:



_off009_BB48_49:
- D 1 - I - 0x02BB58 0A:BB48: 0C        .byte (@end - * - 1) / 4

- D 1 - I - 0x02BB59 0A:BB49: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02BB5A 0A:BB4A: 13        .byte con_T + $13   ; 
- D 1 - I - 0x02BB5B 0A:BB4B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB5C 0A:BB4C: F3        .byte con_X + $F3   ; 

- D 1 - I - 0x02BB5D 0A:BB4D: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02BB5E 0A:BB4E: 15        .byte con_T + $15   ; 
- D 1 - I - 0x02BB5F 0A:BB4F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB60 0A:BB50: FB        .byte con_X + $FB   ; 

- D 1 - I - 0x02BB61 0A:BB51: C4        .byte con_Y + $C4   ; 
- D 1 - I - 0x02BB62 0A:BB52: 17        .byte con_T + $17   ; 
- D 1 - I - 0x02BB63 0A:BB53: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB64 0A:BB54: 03        .byte con_X + $03   ; 

- D 1 - I - 0x02BB65 0A:BB55: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02BB66 0A:BB56: 19        .byte con_T + $19   ; 
- D 1 - I - 0x02BB67 0A:BB57: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB68 0A:BB58: F4        .byte con_X + $F4   ; 

- D 1 - I - 0x02BB69 0A:BB59: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02BB6A 0A:BB5A: 1B        .byte con_T + $1B   ; 
- D 1 - I - 0x02BB6B 0A:BB5B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB6C 0A:BB5C: FC        .byte con_X + $FC   ; 

- D 1 - I - 0x02BB6D 0A:BB5D: D4        .byte con_Y + $D4   ; 
- D 1 - I - 0x02BB6E 0A:BB5E: 1D        .byte con_T + $1D   ; 
- D 1 - I - 0x02BB6F 0A:BB5F: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB70 0A:BB60: 04        .byte con_X + $04   ; 

- D 1 - I - 0x02BB71 0A:BB61: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02BB72 0A:BB62: 1F        .byte con_T + $1F   ; 
- D 1 - I - 0x02BB73 0A:BB63: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB74 0A:BB64: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02BB75 0A:BB65: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02BB76 0A:BB66: 21        .byte con_T + $21   ; 
- D 1 - I - 0x02BB77 0A:BB67: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB78 0A:BB68: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02BB79 0A:BB69: E4        .byte con_Y + $E4   ; 
- D 1 - I - 0x02BB7A 0A:BB6A: 23        .byte con_T + $23   ; 
- D 1 - I - 0x02BB7B 0A:BB6B: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB7C 0A:BB6C: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02BB7D 0A:BB6D: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02BB7E 0A:BB6E: 47        .byte con_T + $47   ; 
- D 1 - I - 0x02BB7F 0A:BB6F: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BB80 0A:BB70: 07        .byte con_X + $07   ; 

- D 1 - I - 0x02BB81 0A:BB71: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02BB82 0A:BB72: 49        .byte con_T + $49   ; 
- D 1 - I - 0x02BB83 0A:BB73: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BB84 0A:BB74: FA        .byte con_X + $FA   ; 

- D 1 - I - 0x02BB85 0A:BB75: F4        .byte con_Y + $F4   ; 
- D 1 - I - 0x02BB86 0A:BB76: 65        .byte con_T + $65   ; 
- D 1 - I - 0x02BB87 0A:BB77: 40        .byte con_A + $40   ; 
- D 1 - I - 0x02BB88 0A:BB78: F2        .byte con_X + $F2   ; 
@end:



_off009_BB79_4A:
- D 1 - I - 0x02BB89 0A:BB79: 09        .byte (@end - * - 1) / 4

- D 1 - I - 0x02BB8A 0A:BB7A: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02BB8B 0A:BB7B: 25        .byte con_T + $25   ; 
- D 1 - I - 0x02BB8C 0A:BB7C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB8D 0A:BB7D: F8        .byte con_X + $F8   ; 

- D 1 - I - 0x02BB8E 0A:BB7E: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02BB8F 0A:BB7F: 27        .byte con_T + $27   ; 
- D 1 - I - 0x02BB90 0A:BB80: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB91 0A:BB81: 00        .byte con_X + $00   ; 

- D 1 - I - 0x02BB92 0A:BB82: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02BB93 0A:BB83: 29        .byte con_T + $29   ; 
- D 1 - I - 0x02BB94 0A:BB84: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB95 0A:BB85: 08        .byte con_X + $08   ; 

- D 1 - I - 0x02BB96 0A:BB86: E1        .byte con_Y + $E1   ; 
- D 1 - I - 0x02BB97 0A:BB87: 2B        .byte con_T + $2B   ; 
- D 1 - I - 0x02BB98 0A:BB88: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB99 0A:BB89: 10        .byte con_X + $10   ; 

- D 1 - I - 0x02BB9A 0A:BB8A: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02BB9B 0A:BB8B: 2D        .byte con_T + $2D   ; 
- D 1 - I - 0x02BB9C 0A:BB8C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BB9D 0A:BB8D: F5        .byte con_X + $F5   ; 

- D 1 - I - 0x02BB9E 0A:BB8E: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02BB9F 0A:BB8F: 2F        .byte con_T + $2F   ; 
- D 1 - I - 0x02BBA0 0A:BB90: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BBA1 0A:BB91: FD        .byte con_X + $FD   ; 

- D 1 - I - 0x02BBA2 0A:BB92: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02BBA3 0A:BB93: 33        .byte con_T + $33   ; 
- D 1 - I - 0x02BBA4 0A:BB94: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BBA5 0A:BB95: 0D        .byte con_X + $0D   ; 

- D 1 - I - 0x02BBA6 0A:BB96: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02BBA7 0A:BB97: 35        .byte con_T + $35   ; 
- D 1 - I - 0x02BBA8 0A:BB98: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BBA9 0A:BB99: 15        .byte con_X + $15   ; 

- D 1 - I - 0x02BBAA 0A:BB9A: F1        .byte con_Y + $F1   ; 
- D 1 - I - 0x02BBAB 0A:BB9B: 31        .byte con_T + $31   ; 
- D 1 - I - 0x02BBAC 0A:BB9C: 00        .byte con_A + $00   ; 
- D 1 - I - 0x02BBAD 0A:BB9D: 05        .byte con_X + $05   ; 
@end:


