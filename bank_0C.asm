.segment "BANK_0C"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x030010-0x03400F

- D 0 - - - 0x030010 0C:8000: 08        .byte $08   ; 


tbl_8001:
; если 04, то увеличение 2006 на 20h после записи, иначе на 01
- D 0 - - - 0x030011 0C:8001: 00        .byte $00   ; 00
- D 0 - - - 0x030012 0C:8002: 04        .byte $04   ; 01
- D 0 - - - 0x030013 0C:8003: 00        .byte $00   ; 02
- D 0 - - - 0x030014 0C:8004: 00        .byte $00   ; 03
- D 0 - - - 0x030015 0C:8005: 04        .byte $04   ; 04



loc_8006:
C D 0 - - - 0x030016 0C:8006: A0 00     LDY #$00
bra_8008_main_loop:
C - - - - - 0x030018 0C:8008: BE 00 03  LDX ram_0300,Y
C - - - - - 0x03001B 0C:800B: F0 28     BEQ bra_8035
C - - - - - 0x03001D 0C:800D: A5 FF     LDA ram_00FF
C D 0 - - - 0x03001F 0C:800F: 29 18     AND #$18
C - - - - - 0x030021 0C:8011: 1D 00 80  ORA tbl_8001 - 1,X
C - - - - - 0x030024 0C:8014: 8D 00 20  STA $2000
C - - - - - 0x030027 0C:8017: C8        INY
C - - - - - 0x030028 0C:8018: AD 02 20  LDA $2002
C - - - - - 0x03002B 0C:801B: B9 01 03  LDA ram_0301,Y
C - - - - - 0x03002E 0C:801E: 8D 06 20  STA $2006
C - - - - - 0x030031 0C:8021: B9 00 03  LDA ram_0300,Y
C - - - - - 0x030034 0C:8024: 8D 06 20  STA $2006
C - - - - - 0x030037 0C:8027: C8        INY
C - - - - - 0x030038 0C:8028: C8        INY
C - - - - - 0x030039 0C:8029: E0 03     CPX #$03
C - - - - - 0x03003B 0C:802B: F0 26     BEQ bra_8053
C - - - - - 0x03003D 0C:802D: 90 13     BCC bra_8042
C - - - - - 0x03003F 0C:802F: E0 05     CPX #$05
C - - - - - 0x030041 0C:8031: 90 30     BCC bra_8063
C - - - - - 0x030043 0C:8033: B0 1E     BCS bra_8053
bra_8035:
C - - - - - 0x030045 0C:8035: A9 00     LDA #$00
C - - - - - 0x030047 0C:8037: 8D 00 03  STA ram_0300
C - - - - - 0x03004A 0C:803A: 85 25     STA ram_0025
C - - - - - 0x03004C 0C:803C: 60        RTS
bra_803D:
- - - - - - 0x03004D 0C:803D: A9 FF     LDA #$FF
bra_803F:
C - - - - - 0x03004F 0C:803F: 8D 07 20  STA $2007
bra_8042:
C - - - - - 0x030052 0C:8042: B9 00 03  LDA ram_0300,Y
C - - - - - 0x030055 0C:8045: C8        INY
C - - - - - 0x030056 0C:8046: C9 FF     CMP #$FF
C - - - - - 0x030058 0C:8048: D0 F5     BNE bra_803F
C - - - - - 0x03005A 0C:804A: B9 00 03  LDA ram_0300,Y
C - - - - - 0x03005D 0C:804D: C9 06     CMP #$06
C - - - - - 0x03005F 0C:804F: 90 B7     BCC bra_8008_main_loop
- - - - - - 0x030061 0C:8051: B0 EA     BCS bra_803D
bra_8053:
C - - - - - 0x030063 0C:8053: BE 00 03  LDX ram_0300,Y
C - - - - - 0x030066 0C:8056: C8        INY
C - - - - - 0x030067 0C:8057: B9 00 03  LDA ram_0300,Y
C - - - - - 0x03006A 0C:805A: C8        INY
bra_805B_loop:
C - - - - - 0x03006B 0C:805B: 8D 07 20  STA $2007
C - - - - - 0x03006E 0C:805E: CA        DEX
C - - - - - 0x03006F 0C:805F: D0 FA     BNE bra_805B_loop
C - - - - - 0x030071 0C:8061: F0 A5     BEQ bra_8008_main_loop
bra_8063:
C - - - - - 0x030073 0C:8063: BE 00 03  LDX ram_0300,Y
C - - - - - 0x030076 0C:8066: C8        INY
C - - - - - 0x030077 0C:8067: B9 00 03  LDA ram_0300,Y
C - - - - - 0x03007A 0C:806A: C8        INY
C - - - - - 0x03007B 0C:806B: 18        CLC
bra_806C:
C - - - - - 0x03007C 0C:806C: 8D 07 20  STA $2007
C - - - - - 0x03007F 0C:806F: 69 01     ADC #$01
C - - - - - 0x030081 0C:8071: CA        DEX
C - - - - - 0x030082 0C:8072: D0 F8     BNE bra_806C
C - - - - - 0x030084 0C:8074: F0 92     BEQ bra_8008_main_loop



.export sub_0x030086
sub_0x030086:
C - - - - - 0x030086 0C:8076: 0A        ASL
C - - - - - 0x030087 0C:8077: A8        TAY
C - - - - - 0x030088 0C:8078: B9 00 8C  LDA tbl_8C00,Y
C - - - - - 0x03008B 0C:807B: 85 00     STA ram_0000
C - - - - - 0x03008D 0C:807D: B9 01 8C  LDA tbl_8C00 + 1,Y
C - - - - - 0x030090 0C:8080: 85 01     STA ram_0001
C - - - - - 0x030092 0C:8082: A9 FF     LDA #$FF
C - - - - - 0x030094 0C:8084: 69 00     ADC #$00
C - - - - - 0x030096 0C:8086: 85 02     STA ram_0002
C - - - - - 0x030098 0C:8088: A0 00     LDY #$00
loc_808A:
C D 0 - - - 0x03009A 0C:808A: A9 01     LDA #$01
C - - - - - 0x03009C 0C:808C: 20 5D D2  JSR sub_0x03D26D
C - - - - - 0x03009F 0C:808F: B1 00     LDA (ram_0000),Y
C - - - - - 0x0300A1 0C:8091: 20 5F D2  JSR sub_0x03D26F
C - - - - - 0x0300A4 0C:8094: C8        INY
C - - - - - 0x0300A5 0C:8095: B1 00     LDA (ram_0000),Y
C - - - - - 0x0300A7 0C:8097: 20 5F D2  JSR sub_0x03D26F
C D 0 - - - 0x0300AA 0C:809A: C8        INY
loc_809B:
C D 0 - - - 0x0300AB 0C:809B: B1 00     LDA (ram_0000),Y
C - - - - - 0x0300AD 0C:809D: C8        INY
C D 0 - - - 0x0300AE 0C:809E: C9 FF     CMP #$FF
C - - - - - 0x0300B0 0C:80A0: F0 12     BEQ bra_80B4
C - - - - - 0x0300B2 0C:80A2: C9 FE     CMP #$FE
C - - - - - 0x0300B4 0C:80A4: F0 08     BEQ bra_80AE
C - - - - - 0x0300B6 0C:80A6: 25 02     AND ram_0002
C - - - - - 0x0300B8 0C:80A8: 20 5F D2  JSR sub_0x03D26F
C - - - - - 0x0300BB 0C:80AB: 4C 9B 80  JMP loc_809B
bra_80AE:
C - - - - - 0x0300BE 0C:80AE: 20 5B D2  JSR sub_0x03D26B
C - - - - - 0x0300C1 0C:80B1: 4C 8A 80  JMP loc_808A
bra_80B4:
C - - - - - 0x0300C4 0C:80B4: 4C 5B D2  JMP loc_0x03D26B



_off004_811A_00:
- D 0 - I - 0x03012A 0C:811A: 0C 22     .word $220C
- D 0 - I - 0x03012C 0C:811C: 9D        .byte $9D   ; 
- D 0 - I - 0x03012D 0C:811D: 9E        .byte $9E   ; 
- D 0 - I - 0x03012E 0C:811E: 99        .byte $99   ; 
- D 0 - I - 0x03012F 0C:811F: 9C        .byte $9C   ; 
- D 0 - I - 0x030130 0C:8120: A3        .byte $A3   ; 
- D 0 - I - 0x030131 0C:8121: FF        .byte $FF   ; 



_off004_8122_01:
- D 0 - I - 0x030132 0C:8122: 4C 22     .word $224C
- D 0 - I - 0x030134 0C:8124: A0        .byte $A0   ; 
- D 0 - I - 0x030135 0C:8125: 9D        .byte $9D   ; 
- D 0 - I - 0x030136 0C:8126: 00        .byte $00   ; 
- D 0 - I - 0x030137 0C:8127: 9A        .byte $9A   ; 
- D 0 - I - 0x030138 0C:8128: 96        .byte $96   ; 
- D 0 - I - 0x030139 0C:8129: 8B        .byte $8B   ; 
- D 0 - I - 0x03013A 0C:812A: A3        .byte $A3   ; 
- D 0 - I - 0x03013B 0C:812B: 8F        .byte $8F   ; 
- D 0 - I - 0x03013C 0C:812C: 9C        .byte $9C   ; 
- D 0 - I - 0x03013D 0C:812D: FF        .byte $FF   ; 



_off004_812E_02:
- D 0 - I - 0x03013E 0C:812E: 8C 22     .word $228C
- D 0 - I - 0x030140 0C:8130: A0        .byte $A0   ; 
- D 0 - I - 0x030141 0C:8131: 9D        .byte $9D   ; 
- D 0 - I - 0x030142 0C:8132: 00        .byte $00   ; 
- D 0 - I - 0x030143 0C:8133: 8D        .byte $8D   ; 
- D 0 - I - 0x030144 0C:8134: 9A        .byte $9A   ; 
- D 0 - I - 0x030145 0C:8135: 9F        .byte $9F   ; 
- D 0 - I - 0x030146 0C:8136: FF        .byte $FF   ; 



_off004_8137_03:
- D 0 - I - 0x030147 0C:8137: CC 22     .word $22CC
- D 0 - I - 0x030149 0C:8139: A0        .byte $A0   ; 
- D 0 - I - 0x03014A 0C:813A: 9D        .byte $9D   ; 
- D 0 - I - 0x03014B 0C:813B: 00        .byte $00   ; 
- D 0 - I - 0x03014C 0C:813C: 9E        .byte $9E   ; 
- D 0 - I - 0x03014D 0C:813D: 8F        .byte $8F   ; 
- D 0 - I - 0x03014E 0C:813E: 8B        .byte $8B   ; 
- D 0 - I - 0x03014F 0C:813F: 97        .byte $97   ; 
- D 0 - I - 0x030150 0C:8140: FF        .byte $FF   ; 



_off004_8141_04:
- D 0 - I - 0x030151 0C:8141: 0C 23     .word $230C
- D 0 - I - 0x030153 0C:8143: 9E        .byte $9E   ; 
- D 0 - I - 0x030154 0C:8144: 99        .byte $99   ; 
- D 0 - I - 0x030155 0C:8145: 9F        .byte $9F   ; 
- D 0 - I - 0x030156 0C:8146: 9C        .byte $9C   ; 
- D 0 - I - 0x030157 0C:8147: 98        .byte $98   ; 
- D 0 - I - 0x030158 0C:8148: 8B        .byte $8B   ; 
- D 0 - I - 0x030159 0C:8149: 97        .byte $97   ; 
- D 0 - I - 0x03015A 0C:814A: 8F        .byte $8F   ; 
- D 0 - I - 0x03015B 0C:814B: 98        .byte $98   ; 
- D 0 - I - 0x03015C 0C:814C: 9E        .byte $9E   ; 
- D 0 - I - 0x03015D 0C:814D: FF        .byte $FF   ; 



_off004_814E_05:
- D 0 - I - 0x03015E 0C:814E: 4C 23     .word $234C
- D 0 - I - 0x030160 0C:8150: 99        .byte $99   ; 
- D 0 - I - 0x030161 0C:8151: 9A        .byte $9A   ; 
- D 0 - I - 0x030162 0C:8152: 9E        .byte $9E   ; 
- D 0 - I - 0x030163 0C:8153: 93        .byte $93   ; 
- D 0 - I - 0x030164 0C:8154: 99        .byte $99   ; 
- D 0 - I - 0x030165 0C:8155: 98        .byte $98   ; 
- D 0 - I - 0x030166 0C:8156: FF        .byte $FF   ; 



_off004_8157_06:
- D 0 - I - 0x030167 0C:8157: 2C 22     .word $222C
- D 0 - I - 0x030169 0C:8159: 91        .byte $91   ; 
- D 0 - I - 0x03016A 0C:815A: 8B        .byte $8B   ; 
- D 0 - I - 0x03016B 0C:815B: 97        .byte $97   ; 
- D 0 - I - 0x03016C 0C:815C: 8F        .byte $8F   ; 
- D 0 - I - 0x03016D 0C:815D: 00        .byte $00   ; 
- D 0 - I - 0x03016E 0C:815E: 99        .byte $99   ; 
- D 0 - I - 0x03016F 0C:815F: A0        .byte $A0   ; 
- D 0 - I - 0x030170 0C:8160: 8F        .byte $8F   ; 
- D 0 - I - 0x030171 0C:8161: 9C        .byte $9C   ; 
- D 0 - I - 0x030172 0C:8162: 00        .byte $00   ; 
- D 0 - I - 0x030173 0C:8163: 00        .byte $00   ; 
- D 0 - I - 0x030174 0C:8164: 00        .byte $00   ; 
- D 0 - I - 0x030175 0C:8165: FF        .byte $FF   ; 



_off004_8166_07:
- D 0 - I - 0x030176 0C:8166: 2C 22     .word $222C
- D 0 - I - 0x030178 0C:8168: 8D        .byte $8D   ; 
- D 0 - I - 0x030179 0C:8169: 99        .byte $99   ; 
- D 0 - I - 0x03017A 0C:816A: 98        .byte $98   ; 
- D 0 - I - 0x03017B 0C:816B: 9E        .byte $9E   ; 
- D 0 - I - 0x03017C 0C:816C: 93        .byte $93   ; 
- D 0 - I - 0x03017D 0C:816D: 98        .byte $98   ; 
- D 0 - I - 0x03017E 0C:816E: 9F        .byte $9F   ; 
- D 0 - I - 0x03017F 0C:816F: 8F        .byte $8F   ; 
- D 0 - I - 0x030180 0C:8170: 00        .byte $00   ; 
- D 0 - I - 0x030181 0C:8171: 00        .byte $00   ; 
- D 0 - I - 0x030182 0C:8172: 00        .byte $00   ; 
- D 0 - I - 0x030183 0C:8173: FF        .byte $FF   ; 



_off004_8174_09:
- D 0 - I - 0x030184 0C:8174: 74 20     .word $2074
- D 0 - I - 0x030186 0C:8176: 8F        .byte $8F   ; 
- D 0 - I - 0x030187 0C:8177: 8B        .byte $8B   ; 
- D 0 - I - 0x030188 0C:8178: 9D        .byte $9D   ; 
- D 0 - I - 0x030189 0C:8179: A3        .byte $A3   ; 
- D 0 - I - 0x03018A 0C:817A: 00        .byte $00   ; 
- D 0 - I - 0x03018B 0C:817B: 00        .byte $00   ; 
- D 0 - I - 0x03018C 0C:817C: FF        .byte $FF   ; 



_off004_817D_0A:
- D 0 - I - 0x03018D 0C:817D: 74 20     .word $2074
- D 0 - I - 0x03018F 0C:817F: 98        .byte $98   ; 
- D 0 - I - 0x030190 0C:8180: 99        .byte $99   ; 
- D 0 - I - 0x030191 0C:8181: 9C        .byte $9C   ; 
- D 0 - I - 0x030192 0C:8182: 97        .byte $97   ; 
- D 0 - I - 0x030193 0C:8183: 8B        .byte $8B   ; 
- D 0 - I - 0x030194 0C:8184: 96        .byte $96   ; 
- D 0 - I - 0x030195 0C:8185: FF        .byte $FF   ; 



_off004_8186_0B:
- D 0 - I - 0x030196 0C:8186: 74 20     .word $2074
- D 0 - I - 0x030198 0C:8188: 92        .byte $92   ; 
- D 0 - I - 0x030199 0C:8189: 8B        .byte $8B   ; 
- D 0 - I - 0x03019A 0C:818A: 9C        .byte $9C   ; 
- D 0 - I - 0x03019B 0C:818B: 8E        .byte $8E   ; 
- D 0 - I - 0x03019C 0C:818C: 00        .byte $00   ; 
- D 0 - I - 0x03019D 0C:818D: 00        .byte $00   ; 
- D 0 - I - 0x03019E 0C:818E: FF        .byte $FF   ; 



_off004_818F_13:
- D 0 - I - 0x03019F 0C:818F: F4 20     .word $20F4
- D 0 - I - 0x0301A1 0C:8191: 98        .byte $98   ; 
- D 0 - I - 0x0301A2 0C:8192: 99        .byte $99   ; 
- D 0 - I - 0x0301A3 0C:8193: 9C        .byte $9C   ; 
- D 0 - I - 0x0301A4 0C:8194: 97        .byte $97   ; 
- D 0 - I - 0x0301A5 0C:8195: 8B        .byte $8B   ; 
- D 0 - I - 0x0301A6 0C:8196: 96        .byte $96   ; 
- D 0 - I - 0x0301A7 0C:8197: FF        .byte $FF   ; 



_off004_8198_14:
- D 0 - I - 0x0301A8 0C:8198: F4 20     .word $20F4
- D 0 - I - 0x0301AA 0C:819A: 9E        .byte $9E   ; 
- D 0 - I - 0x0301AB 0C:819B: 9F        .byte $9F   ; 
- D 0 - I - 0x0301AC 0C:819C: 9C        .byte $9C   ; 
- D 0 - I - 0x0301AD 0C:819D: 8C        .byte $8C   ; 
- D 0 - I - 0x0301AE 0C:819E: 99        .byte $99   ; 
- D 0 - I - 0x0301AF 0C:819F: 00        .byte $00   ; 
- D 0 - I - 0x0301B0 0C:81A0: FF        .byte $FF   ; 



_off004_81A1_0E:
- - - - - - 0x0301B1 0C:81A1: ED 20     .word $20ED
- - - - - - 0x0301B3 0C:81A3: A1        .byte $A1   ; 
- - - - - - 0x0301B4 0C:81A4: 93        .byte $93   ; 
- - - - - - 0x0301B5 0C:81A5: 98        .byte $98   ; 
- - - - - - 0x0301B6 0C:81A6: 98        .byte $98   ; 
- - - - - - 0x0301B7 0C:81A7: 8F        .byte $8F   ; 
- - - - - - 0x0301B8 0C:81A8: 9C        .byte $9C   ; 
- - - - - - 0x0301B9 0C:81A9: FF        .byte $FF   ; 



_off004_81AA_0F:
- - - - - - 0x0301BA 0C:81AA: 02 25     .word $2502
- - - - - - 0x0301BC 0C:81AC: 9A        .byte $9A   ; 
- - - - - - 0x0301BD 0C:81AD: 96        .byte $96   ; 
- - - - - - 0x0301BE 0C:81AE: 8B        .byte $8B   ; 
- - - - - - 0x0301BF 0C:81AF: A3        .byte $A3   ; 
- - - - - - 0x0301C0 0C:81B0: 8F        .byte $8F   ; 
- - - - - - 0x0301C1 0C:81B1: 9C        .byte $9C   ; 
- - - - - - 0x0301C2 0C:81B2: 82        .byte $82   ; 
- - - - - - 0x0301C3 0C:81B3: FE        .byte $FE   ; 
- - - - - - 0x0301C4 0C:81B4: 1A        .byte $1A   ; 
- - - - - - 0x0301C5 0C:81B5: 23        .byte $23   ; 
- - - - - - 0x0301C6 0C:81B6: 9A        .byte $9A   ; 
- - - - - - 0x0301C7 0C:81B7: 96        .byte $96   ; 
- - - - - - 0x0301C8 0C:81B8: 8B        .byte $8B   ; 
- - - - - - 0x0301C9 0C:81B9: A3        .byte $A3   ; 
- - - - - - 0x0301CA 0C:81BA: 8F        .byte $8F   ; 
- - - - - - 0x0301CB 0C:81BB: 9C        .byte $9C   ; 
- - - - - - 0x0301CC 0C:81BC: 83        .byte $83   ; 
- - - - - - 0x0301CD 0C:81BD: FF        .byte $FF   ; 



_off004_81BE_11:
- D 0 - I - 0x0301CE 0C:81BE: AB 23     .word $23AB
- D 0 - I - 0x0301D0 0C:81C0: C9        .byte $C9   ; 
- D 0 - I - 0x0301D1 0C:81C1: CA        .byte $CA   ; 
- D 0 - I - 0x0301D2 0C:81C2: CB        .byte $CB   ; 
- D 0 - I - 0x0301D3 0C:81C3: CC        .byte $CC   ; 
- D 0 - I - 0x0301D4 0C:81C4: 00        .byte $00   ; 
- D 0 - I - 0x0301D5 0C:81C5: D9        .byte $D9   ; 
- D 0 - I - 0x0301D6 0C:81C6: DA        .byte $DA   ; 
- D 0 - I - 0x0301D7 0C:81C7: DB        .byte $DB   ; 
- D 0 - I - 0x0301D8 0C:81C8: DC        .byte $DC   ; 
- D 0 - I - 0x0301D9 0C:81C9: DD        .byte $DD   ; 
- D 0 - I - 0x0301DA 0C:81CA: FF        .byte $FF   ; 



_off004_81CB_12:
- D 0 - I - 0x0301DB 0C:81CB: 74 20     .word $2074
- D 0 - I - 0x0301DD 0C:81CD: 00        .byte $00   ; 
- D 0 - I - 0x0301DE 0C:81CE: 00        .byte $00   ; 
- D 0 - I - 0x0301DF 0C:81CF: 8D        .byte $8D   ; 
- D 0 - I - 0x0301E0 0C:81D0: 9A        .byte $9A   ; 
- D 0 - I - 0x0301E1 0C:81D1: 9F        .byte $9F   ; 
- D 0 - I - 0x0301E2 0C:81D2: 00        .byte $00   ; 
- D 0 - I - 0x0301E3 0C:81D3: 00        .byte $00   ; 
- D 0 - I - 0x0301E4 0C:81D4: 00        .byte $00   ; 
- D 0 - I - 0x0301E5 0C:81D5: FF        .byte $FF   ; 



_off004_81D6_15:
- D 0 - I - 0x0301E6 0C:81D6: 6A 23     .word $236A
- D 0 - I - 0x0301E8 0C:81D8: 8C        .byte $8C   ; 
- D 0 - I - 0x0301E9 0C:81D9: 99        .byte $99   ; 
- D 0 - I - 0x0301EA 0C:81DA: 98        .byte $98   ; 
- D 0 - I - 0x0301EB 0C:81DB: 9F        .byte $9F   ; 
- D 0 - I - 0x0301EC 0C:81DC: 9D        .byte $9D   ; 
- D 0 - I - 0x0301ED 0C:81DD: FE        .byte $FE   ; 
- D 0 - I - 0x0301EE 0C:81DE: 75        .byte $75   ; 
- D 0 - I - 0x0301EF 0C:81DF: 23        .byte $23   ; 
- D 0 - I - 0x0301F0 0C:81E0: 81        .byte $81   ; 
- D 0 - I - 0x0301F1 0C:81E1: 81        .byte $81   ; 
- D 0 - I - 0x0301F2 0C:81E2: FF        .byte $FF   ; 



_off004_81E3_16:
- D 0 - I - 0x0301F3 0C:81E3: 2A 23     .word $232A
- D 0 - I - 0x0301F5 0C:81E5: 9E        .byte $9E   ; 
- D 0 - I - 0x0301F6 0C:81E6: 93        .byte $93   ; 
- D 0 - I - 0x0301F7 0C:81E7: 97        .byte $97   ; 
- D 0 - I - 0x0301F8 0C:81E8: 8F        .byte $8F   ; 
- D 0 - I - 0x0301F9 0C:81E9: FF        .byte $FF   ; 



_off004_81EA_17:
- D 0 - I - 0x0301FA 0C:81EA: 4A 23     .word $234A
- D 0 - I - 0x0301FC 0C:81EC: 9A        .byte $9A   ; 
- D 0 - I - 0x0301FD 0C:81ED: 8F        .byte $8F   ; 
- D 0 - I - 0x0301FE 0C:81EE: 9C        .byte $9C   ; 
- D 0 - I - 0x0301FF 0C:81EF: 90        .byte $90   ; 
- D 0 - I - 0x030200 0C:81F0: 8F        .byte $8F   ; 
- D 0 - I - 0x030201 0C:81F1: 8D        .byte $8D   ; 
- D 0 - I - 0x030202 0C:81F2: 9E        .byte $9E   ; 
- D 0 - I - 0x030203 0C:81F3: FF        .byte $FF   ; 



_off004_81F4_18:
- D 0 - I - 0x030204 0C:81F4: 4A 23     .word $234A
- D 0 - I - 0x030206 0C:81F6: 96        .byte $96   ; 
- D 0 - I - 0x030207 0C:81F7: 93        .byte $93   ; 
- D 0 - I - 0x030208 0C:81F8: 90        .byte $90   ; 
- D 0 - I - 0x030209 0C:81F9: 8F        .byte $8F   ; 
- D 0 - I - 0x03020A 0C:81FA: FF        .byte $FF   ; 



_off004_81FB_19:
- D 0 - I - 0x03020B 0C:81FB: 0D 23     .word $230D
- D 0 - I - 0x03020D 0C:81FD: 9C        .byte $9C   ; 
- D 0 - I - 0x03020E 0C:81FE: 8F        .byte $8F   ; 
- D 0 - I - 0x03020F 0C:81FF: 97        .byte $97   ; 
- D 0 - I - 0x030210 0C:8200: 8B        .byte $8B   ; 
- D 0 - I - 0x030211 0C:8201: 9E        .byte $9E   ; 
- D 0 - I - 0x030212 0C:8202: 8D        .byte $8D   ; 
- D 0 - I - 0x030213 0C:8203: 92        .byte $92   ; 
- D 0 - I - 0x030214 0C:8204: FF        .byte $FF   ; 



_off004_8205_1A:
- D 0 - I - 0x030215 0C:8205: 4D 23     .word $234D
- D 0 - I - 0x030217 0C:8207: 8F        .byte $8F   ; 
- D 0 - I - 0x030218 0C:8208: 98        .byte $98   ; 
- D 0 - I - 0x030219 0C:8209: 8E        .byte $8E   ; 
- D 0 - I - 0x03021A 0C:820A: FF        .byte $FF   ; 



_off004_820B_08:
- D 0 - I - 0x03021B 0C:820B: 0C 22     .word $220C
- D 0 - I - 0x03021D 0C:820D: 8C        .byte $8C   ; 
- D 0 - I - 0x03021E 0C:820E: 99        .byte $99   ; 
- D 0 - I - 0x03021F 0C:820F: 98        .byte $98   ; 
- D 0 - I - 0x030220 0C:8210: 9F        .byte $9F   ; 
- D 0 - I - 0x030221 0C:8211: 9D        .byte $9D   ; 
- D 0 - I - 0x030222 0C:8212: 00        .byte $00   ; 
- D 0 - I - 0x030223 0C:8213: 91        .byte $91   ; 
- D 0 - I - 0x030224 0C:8214: 8B        .byte $8B   ; 
- D 0 - I - 0x030225 0C:8215: 97        .byte $97   ; 
- D 0 - I - 0x030226 0C:8216: 8F        .byte $8F   ; 
- D 0 - I - 0x030227 0C:8217: FF        .byte $FF   ; 



_off004_8218_0D:
- D 0 - I - 0x030228 0C:8218: 89 20     .word $2089
- D 0 - I - 0x03022A 0C:821A: 9E        .byte $9E   ; 
- D 0 - I - 0x03022B 0C:821B: 93        .byte $93   ; 
- D 0 - I - 0x03022C 0C:821C: 97        .byte $97   ; 
- D 0 - I - 0x03022D 0C:821D: 8F        .byte $8F   ; 
- D 0 - I - 0x03022E 0C:821E: FE        .byte $FE   ; 
- D 0 - I - 0x03022F 0C:821F: 94        .byte $94   ; 
- D 0 - I - 0x030230 0C:8220: 20        .byte $20   ; 
- D 0 - I - 0x030231 0C:8221: 8C        .byte $8C   ; 
- D 0 - I - 0x030232 0C:8222: 99        .byte $99   ; 
- D 0 - I - 0x030233 0C:8223: 98        .byte $98   ; 
- D 0 - I - 0x030234 0C:8224: 9F        .byte $9F   ; 
- D 0 - I - 0x030235 0C:8225: 9D        .byte $9D   ; 
- D 0 - I - 0x030236 0C:8226: 00        .byte $00   ; 
- D 0 - I - 0x030237 0C:8227: 91        .byte $91   ; 
- D 0 - I - 0x030238 0C:8228: 8B        .byte $8B   ; 
- D 0 - I - 0x030239 0C:8229: 97        .byte $97   ; 
- D 0 - I - 0x03023A 0C:822A: 8F        .byte $8F   ; 
- D 0 - I - 0x03023B 0C:822B: FF        .byte $FF   ; 



_off004_822C_0C:
- D 0 - I - 0x03023C 0C:822C: 74 20     .word $2074
- D 0 - I - 0x03023E 0C:822E: 8F        .byte $8F   ; 
- D 0 - I - 0x03023F 0C:822F: A2        .byte $A2   ; 
- D 0 - I - 0x030240 0C:8230: 9A        .byte $9A   ; 
- D 0 - I - 0x030241 0C:8231: 8F        .byte $8F   ; 
- D 0 - I - 0x030242 0C:8232: 9C        .byte $9C   ; 
- D 0 - I - 0x030243 0C:8233: 9E        .byte $9E   ; 
- D 0 - I - 0x030244 0C:8234: FF        .byte $FF   ; 



.export tbl_0x030245
tbl_0x030245:
- D 0 - - - 0x030245 0C:8235: 05 83     .word _off010_8305_01
- - - - - - 0x030247 0C:8237: 0E 83     .word _off010_830E_02
- D 0 - - - 0x030249 0C:8239: 13 83     .word _off010_8313_03
- D 0 - - - 0x03024B 0C:823B: 18 83     .word _off010_8318_04
- D 0 - - - 0x03024D 0C:823D: 21 83     .word _off010_8321_05
- - - - - - 0x03024F 0C:823F: 05 83     .word _off010_8305_06
- D 0 - - - 0x030251 0C:8241: 26 83     .word _off010_8326_07
- D 0 - - - 0x030253 0C:8243: 3F 83     .word _off010_833F_08
- D 0 - - - 0x030255 0C:8245: 47 83     .word _off010_8347_09
- D 0 - - - 0x030257 0C:8247: 4F 83     .word _off010_834F_0A
- D 0 - - - 0x030259 0C:8249: 57 83     .word _off010_8357_0B
- D 0 - - - 0x03025B 0C:824B: 73 83     .word _off010_8373_0C
- D 0 - - - 0x03025D 0C:824D: 8C 83     .word _off010_838C_0D
- D 0 - - - 0x03025F 0C:824F: A4 83     .word _off010_83A4_0E
- D 0 - - - 0x030261 0C:8251: B0 83     .word _off010_83B0_0F
- D 0 - - - 0x030263 0C:8253: C9 83     .word _off010_83C9_10
- D 0 - - - 0x030265 0C:8255: 94 83     .word _off010_8394_11
- D 0 - - - 0x030267 0C:8257: 9C 83     .word _off010_839C_12
- D 0 - - - 0x030269 0C:8259: F6 83     .word _off010_83F6_13
- D 0 - - - 0x03026B 0C:825B: 4A 84     .word _off010_844A_14
- D 0 - - - 0x03026D 0C:825D: 53 84     .word _off010_8453_15
- D 0 - - - 0x03026F 0C:825F: 17 84     .word _off010_8417_16
- D 0 - - - 0x030271 0C:8261: 28 84     .word _off010_8428_17
- - - - - - 0x030273 0C:8263: 39 84     .word _off010_8439_18
- - - - - - 0x030275 0C:8265: 39 84     .word _off010_8439_19
- D 0 - - - 0x030277 0C:8267: 39 84     .word _off010_8439_1A
- D 0 - - - 0x030279 0C:8269: 64 84     .word _off010_8464_1B
- D 0 - - - 0x03027B 0C:826B: 71 84     .word _off010_8471_1C
- D 0 - - - 0x03027D 0C:826D: 7E 84     .word _off010_847E_1D
- D 0 - - - 0x03027F 0C:826F: 8B 84     .word _off010_848B_1E
- D 0 - - - 0x030281 0C:8271: 98 84     .word _off010_8498_1F
- D 0 - - - 0x030283 0C:8273: A9 84     .word _off010_84A9_20
- D 0 - - - 0x030285 0C:8275: C2 84     .word _off010_84C2_21
- D 0 - - - 0x030287 0C:8277: DB 84     .word _off010_84DB_22
- D 0 - - - 0x030289 0C:8279: E0 84     .word _off010_84E0_23
- D 0 - - - 0x03028B 0C:827B: 31 85     .word _off010_8531_24
- D 0 - - - 0x03028D 0C:827D: EE 85     .word _off010_85EE_25
- D 0 - - - 0x03028F 0C:827F: FF 85     .word _off010_85FF_26
- D 0 - - - 0x030291 0C:8281: 0C 86     .word _off010_860C_27
- D 0 - - - 0x030293 0C:8283: 19 86     .word _off010_8619_28
- D 0 - - - 0x030295 0C:8285: 3E 86     .word _off010_863E_29
- D 0 - - - 0x030297 0C:8287: 5F 86     .word _off010_865F_2A
- D 0 - - - 0x030299 0C:8289: 88 86     .word _off010_8688_2B
- D 0 - - - 0x03029B 0C:828B: 8D 86     .word _off010_868D_2C
- D 0 - - - 0x03029D 0C:828D: 96 86     .word _off010_8696_2D
- D 0 - - - 0x03029F 0C:828F: B7 86     .word _off010_86B7_2E
- D 0 - - - 0x0302A1 0C:8291: D4 86     .word _off010_86D4_2F
- D 0 - - - 0x0302A3 0C:8293: ED 86     .word _off010_86ED_30
- D 0 - - - 0x0302A5 0C:8295: 12 87     .word _off010_8712_31
- D 0 - - - 0x0302A7 0C:8297: 37 87     .word _off010_8737_32
- D 0 - - - 0x0302A9 0C:8299: 5C 87     .word _off010_875C_33
- D 0 - - - 0x0302AB 0C:829B: 81 87     .word _off010_8781_34
- D 0 - - - 0x0302AD 0C:829D: A6 87     .word _off010_87A6_35
- D 0 - - - 0x0302AF 0C:829F: CB 87     .word _off010_87CB_36
- D 0 - - - 0x0302B1 0C:82A1: F4 87     .word _off010_87F4_37
- D 0 - - - 0x0302B3 0C:82A3: 19 88     .word _off010_8819_38
- D 0 - - - 0x0302B5 0C:82A5: 36 88     .word _off010_8836_39
- D 0 - - - 0x0302B7 0C:82A7: 53 88     .word _off010_8853_3A
- D 0 - - - 0x0302B9 0C:82A9: 98 88     .word _off010_8898_3B
- D 0 - - - 0x0302BB 0C:82AB: D9 88     .word _off010_88D9_3C
- D 0 - - - 0x0302BD 0C:82AD: 0E 89     .word _off010_890E_3D
- - - - - - 0x0302BF 0C:82AF: 37 89     .word _off010_8937_3E
- - - - - - 0x0302C1 0C:82B1: 6F 89     .word _off010_896F_3F
- - - - - - 0x0302C3 0C:82B3: 4C 89     .word _off010_894C_40
- - - - - - 0x0302C5 0C:82B5: 55 89     .word _off010_8955_41
- - - - - - 0x0302C7 0C:82B7: 78 89     .word _off010_8978_42
- D 0 - - - 0x0302C9 0C:82B9: 5E 89     .word _off010_895E_43
- D 0 - - - 0x0302CB 0C:82BB: 81 89     .word _off010_8981_44
- D 0 - - - 0x0302CD 0C:82BD: 8A 89     .word _off010_898A_45
- D 0 - - - 0x0302CF 0C:82BF: 9C 89     .word _off010_899C_46
- D 0 - - - 0x0302D1 0C:82C1: 93 89     .word _off010_8993_47
- D 0 - - - 0x0302D3 0C:82C3: A5 89     .word _off010_89A5_48
- D 0 - - - 0x0302D5 0C:82C5: AE 89     .word _off010_89AE_49
- D 0 - - - 0x0302D7 0C:82C7: C0 89     .word _off010_89C0_4A
- D 0 - - - 0x0302D9 0C:82C9: B7 89     .word _off010_89B7_4B
- D 0 - - - 0x0302DB 0C:82CB: C9 89     .word _off010_89C9_4C
- D 0 - - - 0x0302DD 0C:82CD: D2 89     .word _off010_89D2_4D
- D 0 - - - 0x0302DF 0C:82CF: 0B 8A     .word _off010_8A0B_4E
- D 0 - - - 0x0302E1 0C:82D1: 34 8A     .word _off010_8A34_4F
- D 0 - - - 0x0302E3 0C:82D3: 55 8A     .word _off010_8A55_50
- D 0 - - - 0x0302E5 0C:82D5: 66 8A     .word _off010_8A66_51
- D 0 - - - 0x0302E7 0C:82D7: 7F 8A     .word _off010_8A7F_52
- D 0 - - - 0x0302E9 0C:82D9: 9C 8A     .word _off010_8A9C_53
- D 0 - - - 0x0302EB 0C:82DB: B5 8A     .word _off010_8AB5_54
- D 0 - - - 0x0302ED 0C:82DD: BE 8A     .word _off010_8ABE_55
- D 0 - - - 0x0302EF 0C:82DF: C7 8A     .word _off010_8AC7_56
- D 0 - - - 0x0302F1 0C:82E1: CC 8A     .word _off010_8ACC_57
- D 0 - - - 0x0302F3 0C:82E3: D1 8A     .word _off010_8AD1_58
- D 0 - - - 0x0302F5 0C:82E5: D6 8A     .word _off010_8AD6_59



con_cnt     = $00   ; счетчик спрайтов анимации
con_Y       = $00   ; координата Y
con_T       = $00   ; тайл
con_A       = $00   ; атрибут
con_X       = $00   ; координата X
con_jmp     = $80   ; прыжок



_off010_8305_01:
_off010_8305_06:
- D 0 - I - 0x030315 0C:8305: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x030316 0C:8306: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x030317 0C:8307: 7F        .byte con_T + $7F   ; 
- D 0 - I - 0x030318 0C:8308: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030319 0C:8309: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x03031A 0C:830A: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x03031B 0C:830B: 7F        .byte con_T + $7F   ; 
- D 0 - I - 0x03031C 0C:830C: 42        .byte con_A + $42   ; 
- D 0 - I - 0x03031D 0C:830D: 01        .byte con_X + $01   ; 
@end:



_off010_830E_02:
- - - - - - 0x03031E 0C:830E: 01        .byte (@end - * - 1) / 4

- - - - - - 0x03031F 0C:830F: F9        .byte con_Y + $F9   ; 
- - - - - - 0x030320 0C:8310: 79        .byte con_T + $79   ; 
- - - - - - 0x030321 0C:8311: 03        .byte con_A + $03   ; 
- - - - - - 0x030322 0C:8312: FC        .byte con_X + $FC   ; 
@end:



_off010_8313_03:
- D 0 - I - 0x030323 0C:8313: 01        .byte (@end - * - 1) / 4

- D 0 - I - 0x030324 0C:8314: F9        .byte con_Y + $F9   ; 
- D 0 - I - 0x030325 0C:8315: 7B        .byte con_T + $7B   ; 
- D 0 - I - 0x030326 0C:8316: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030327 0C:8317: FD        .byte con_X + $FD   ; 
@end:



_off010_8318_04:
- D 0 - I - 0x030328 0C:8318: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x030329 0C:8319: F9        .byte con_Y + $F9   ; 
- D 0 - I - 0x03032A 0C:831A: 7D        .byte con_T + $7D   ; 
- D 0 - I - 0x03032B 0C:831B: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03032C 0C:831C: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x03032D 0C:831D: F9        .byte con_Y + $F9   ; 
- D 0 - I - 0x03032E 0C:831E: 7D        .byte con_T + $7D   ; 
- D 0 - I - 0x03032F 0C:831F: C2        .byte con_A + $C2   ; 
- D 0 - I - 0x030330 0C:8320: 01        .byte con_X + $01   ; 
@end:



_off010_8321_05:
- D 0 - I - 0x030331 0C:8321: 01        .byte (@end - * - 1) / 4

- D 0 - I - 0x030332 0C:8322: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030333 0C:8323: 79        .byte con_T + $79   ; 
- D 0 - I - 0x030334 0C:8324: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030335 0C:8325: FD        .byte con_X + $FD   ; 
@end:



_off010_8326_07:
- D 0 - I - 0x030336 0C:8326: 06        .byte (off_833E_end - * - 1) / 4

ofs_8327:
- D 0 - I - 0x030337 0C:8327: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030338 0C:8328: C2        .byte con_T + $C2   ; 
- D 0 - I - 0x030339 0C:8329: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03033A 0C:832A: 00        .byte con_X + $00   ; 

- D 0 - I - 0x03033B 0C:832B: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x03033C 0C:832C: C4        .byte con_T + $C4   ; 
- D 0 - I - 0x03033D 0C:832D: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03033E 0C:832E: 08        .byte con_X + $08   ; 

- D 0 - I - 0x03033F 0C:832F: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030340 0C:8330: C6        .byte con_T + $C6   ; 
- D 0 - I - 0x030341 0C:8331: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030342 0C:8332: 10        .byte con_X + $10   ; 

- D 0 - I - 0x030343 0C:8333: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030344 0C:8334: C8        .byte con_T + $C8   ; 
- D 0 - I - 0x030345 0C:8335: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030346 0C:8336: 18        .byte con_X + $18   ; 

- D 0 - I - 0x030347 0C:8337: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030348 0C:8338: CA        .byte con_T + $CA   ; 
- D 0 - I - 0x030349 0C:8339: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03034A 0C:833A: 20        .byte con_X + $20   ; 

- D 0 - I - 0x03034B 0C:833B: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x03034C 0C:833C: CC        .byte con_T + $CC   ; 
- D 0 - I - 0x03034D 0C:833D: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03034E 0C:833E: 28        .byte con_X + $28   ; 
off_833E_end:



_off010_833F_08:
- D 0 - I - 0x03034F 0C:833F: 06        .byte con_cnt + $06   ; 

- D 0 - I - 0x030350 0C:8340: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030351 0C:8341: CE        .byte con_T + $CE   ; 
- D 0 - I - 0x030352 0C:8342: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030353 0C:8343: 28        .byte con_X + $28   ; 

- D 0 - I - 0x030354 0C:8344: 80        .byte con_jmp
- D 0 - I - 0x030355 0C:8345: 27 83     .word ofs_8327



_off010_8347_09:
- D 0 - I - 0x030357 0C:8347: 06        .byte con_cnt + $06   ; 

- D 0 - I - 0x030358 0C:8348: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030359 0C:8349: D0        .byte con_T + $D0   ; 
- D 0 - I - 0x03035A 0C:834A: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03035B 0C:834B: 28        .byte con_X + $28   ; 

- D 0 - I - 0x03035C 0C:834C: 80        .byte con_jmp
- D 0 - I - 0x03035D 0C:834D: 27 83     .word ofs_8327



_off010_834F_0A:
- D 0 - I - 0x03035F 0C:834F: 06        .byte con_cnt + $06   ; 

- D 0 - I - 0x030360 0C:8350: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030361 0C:8351: D2        .byte con_T + $D2   ; 
- D 0 - I - 0x030362 0C:8352: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030363 0C:8353: 28        .byte con_X + $28   ; 

- D 0 - I - 0x030364 0C:8354: 80        .byte con_jmp
- D 0 - I - 0x030365 0C:8355: 27 83     .word ofs_8327



_off010_8357_0B:
- D 0 - I - 0x030367 0C:8357: 06        .byte (@end - * - 1) / 4

- D 0 - I - 0x030368 0C:8358: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030369 0C:8359: D4        .byte con_T + $D4   ; 
- D 0 - I - 0x03036A 0C:835A: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03036B 0C:835B: 00        .byte con_X + $00   ; 

- D 0 - I - 0x03036C 0C:835C: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x03036D 0C:835D: D6        .byte con_T + $D6   ; 
- D 0 - I - 0x03036E 0C:835E: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03036F 0C:835F: 08        .byte con_X + $08   ; 

- D 0 - I - 0x030370 0C:8360: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030371 0C:8361: D8        .byte con_T + $D8   ; 
- D 0 - I - 0x030372 0C:8362: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030373 0C:8363: 10        .byte con_X + $10   ; 

- D 0 - I - 0x030374 0C:8364: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030375 0C:8365: DA        .byte con_T + $DA   ; 
- D 0 - I - 0x030376 0C:8366: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030377 0C:8367: 18        .byte con_X + $18   ; 

- D 0 - I - 0x030378 0C:8368: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030379 0C:8369: DC        .byte con_T + $DC   ; 
- D 0 - I - 0x03037A 0C:836A: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03037B 0C:836B: 20        .byte con_X + $20   ; 

- D 0 - I - 0x03037C 0C:836C: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x03037D 0C:836D: DE        .byte con_T + $DE   ; 
- D 0 - I - 0x03037E 0C:836E: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03037F 0C:836F: 28        .byte con_X + $28   ; 
@end:



_off010_8373_0C:
- D 0 - I - 0x030383 0C:8373: 06        .byte (off_838B_end - * - 1) / 4

- D 0 - I - 0x030384 0C:8374: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030385 0C:8375: CC        .byte con_T + $CC   ; 
- D 0 - I - 0x030386 0C:8376: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030387 0C:8377: 08        .byte con_X + $08   ; 

ofs_8378:
- D 0 - I - 0x030388 0C:8378: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030389 0C:8379: E0        .byte con_T + $E0   ; 
- D 0 - I - 0x03038A 0C:837A: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03038B 0C:837B: 10        .byte con_X + $10   ; 

ofs_837C:
- D 0 - I - 0x03038C 0C:837C: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x03038D 0C:837D: C0        .byte con_T + $C0   ; 
- D 0 - I - 0x03038E 0C:837E: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03038F 0C:837F: 00        .byte con_X + $00   ; 

- D 0 - I - 0x030390 0C:8380: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030391 0C:8381: E6        .byte con_T + $E6   ; 
- D 0 - I - 0x030392 0C:8382: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030393 0C:8383: 18        .byte con_X + $18   ; 

- D 0 - I - 0x030394 0C:8384: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030395 0C:8385: E8        .byte con_T + $E8   ; 
- D 0 - I - 0x030396 0C:8386: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030397 0C:8387: 20        .byte con_X + $20   ; 

- D 0 - I - 0x030398 0C:8388: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030399 0C:8389: EA        .byte con_T + $EA   ; 
- D 0 - I - 0x03039A 0C:838A: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03039B 0C:838B: 28        .byte con_X + $28   ; 
off_838B_end:



_off010_838C_0D:
- D 0 - I - 0x03039C 0C:838C: 06        .byte con_cnt + $06   ; 

- D 0 - I - 0x03039D 0C:838D: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x03039E 0C:838E: CE        .byte con_T + $CE   ; 
- D 0 - I - 0x03039F 0C:838F: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0303A0 0C:8390: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0303A1 0C:8391: 80        .byte con_jmp
- D 0 - I - 0x0303A2 0C:8392: 78 83     .word ofs_8378



_off010_8394_11:
- D 0 - I - 0x0303A4 0C:8394: 06        .byte con_cnt + $06   ; 

- D 0 - I - 0x0303A5 0C:8395: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0303A6 0C:8396: D0        .byte con_T + $D0   ; 
- D 0 - I - 0x0303A7 0C:8397: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0303A8 0C:8398: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0303A9 0C:8399: 80        .byte con_jmp
- D 0 - I - 0x0303AA 0C:839A: 78 83     .word ofs_8378



_off010_839C_12:
- D 0 - I - 0x0303AC 0C:839C: 06        .byte con_cnt + $06   ; 

- D 0 - I - 0x0303AD 0C:839D: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0303AE 0C:839E: D2        .byte con_T + $D2   ; 
- D 0 - I - 0x0303AF 0C:839F: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0303B0 0C:83A0: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0303B1 0C:83A1: 80        .byte con_jmp
- D 0 - I - 0x0303B2 0C:83A2: 78 83     .word ofs_8378



_off010_83A4_0E:
- D 0 - I - 0x0303B4 0C:83A4: 06        .byte con_cnt + $06   ; 

- D 0 - I - 0x0303B5 0C:83A5: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0303B6 0C:83A6: E2        .byte con_T + $E2   ; 
- D 0 - I - 0x0303B7 0C:83A7: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0303B8 0C:83A8: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0303B9 0C:83A9: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0303BA 0C:83AA: E4        .byte con_T + $E4   ; 
- D 0 - I - 0x0303BB 0C:83AB: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0303BC 0C:83AC: 10        .byte con_X + $10   ; 

- D 0 - I - 0x0303BD 0C:83AD: 80        .byte con_jmp
- D 0 - I - 0x0303BE 0C:83AE: 7C 83     .word ofs_837C



_off010_83B0_0F:
- D 0 - I - 0x0303C0 0C:83B0: 06        .byte (@end - * - 1) / 4

- D 0 - I - 0x0303C1 0C:83B1: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0303C2 0C:83B2: C0        .byte con_T + $C0   ; 
- D 0 - I - 0x0303C3 0C:83B3: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0303C4 0C:83B4: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0303C5 0C:83B5: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0303C6 0C:83B6: EC        .byte con_T + $EC   ; 
- D 0 - I - 0x0303C7 0C:83B7: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0303C8 0C:83B8: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0303C9 0C:83B9: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0303CA 0C:83BA: EE        .byte con_T + $EE   ; 
- D 0 - I - 0x0303CB 0C:83BB: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0303CC 0C:83BC: 10        .byte con_X + $10   ; 

- D 0 - I - 0x0303CD 0C:83BD: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0303CE 0C:83BE: F0        .byte con_T + $F0   ; 
- D 0 - I - 0x0303CF 0C:83BF: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0303D0 0C:83C0: 18        .byte con_X + $18   ; 

- D 0 - I - 0x0303D1 0C:83C1: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0303D2 0C:83C2: F2        .byte con_T + $F2   ; 
- D 0 - I - 0x0303D3 0C:83C3: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0303D4 0C:83C4: 20        .byte con_X + $20   ; 

- D 0 - I - 0x0303D5 0C:83C5: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0303D6 0C:83C6: C0        .byte con_T + $C0   ; 
- D 0 - I - 0x0303D7 0C:83C7: 42        .byte con_A + $42   ; 
- D 0 - I - 0x0303D8 0C:83C8: 28        .byte con_X + $28   ; 
@end:



_off010_83C9_10:
- D 0 - I - 0x0303D9 0C:83C9: 0B        .byte (@end - * - 1) / 4

- D 0 - I - 0x0303DA 0C:83CA: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0303DB 0C:83CB: C0        .byte con_T + $C0   ; 
- D 0 - I - 0x0303DC 0C:83CC: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0303DD 0C:83CD: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0303DE 0C:83CE: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0303DF 0C:83CF: EC        .byte con_T + $EC   ; 
- D 0 - I - 0x0303E0 0C:83D0: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0303E1 0C:83D1: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0303E2 0C:83D2: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0303E3 0C:83D3: C4        .byte con_T + $C4   ; 
- D 0 - I - 0x0303E4 0C:83D4: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0303E5 0C:83D5: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0303E6 0C:83D6: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0303E7 0C:83D7: C6        .byte con_T + $C6   ; 
- D 0 - I - 0x0303E8 0C:83D8: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0303E9 0C:83D9: 10        .byte con_X + $10   ; 

- D 0 - I - 0x0303EA 0C:83DA: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0303EB 0C:83DB: F4        .byte con_T + $F4   ; 
- D 0 - I - 0x0303EC 0C:83DC: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0303ED 0C:83DD: 18        .byte con_X + $18   ; 

- D 0 - I - 0x0303EE 0C:83DE: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0303EF 0C:83DF: F6        .byte con_T + $F6   ; 
- D 0 - I - 0x0303F0 0C:83E0: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0303F1 0C:83E1: 20        .byte con_X + $20   ; 

- D 0 - I - 0x0303F2 0C:83E2: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0303F3 0C:83E3: C0        .byte con_T + $C0   ; 
- D 0 - I - 0x0303F4 0C:83E4: 42        .byte con_A + $42   ; 
- D 0 - I - 0x0303F5 0C:83E5: 28        .byte con_X + $28   ; 

- D 0 - I - 0x0303F6 0C:83E6: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x0303F7 0C:83E7: C0        .byte con_T + $C0   ; 
- D 0 - I - 0x0303F8 0C:83E8: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0303F9 0C:83E9: 04        .byte con_X + $04   ; 

- D 0 - I - 0x0303FA 0C:83EA: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x0303FB 0C:83EB: F8        .byte con_T + $F8   ; 
- D 0 - I - 0x0303FC 0C:83EC: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0303FD 0C:83ED: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x0303FE 0C:83EE: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x0303FF 0C:83EF: FA        .byte con_T + $FA   ; 
- D 0 - I - 0x030400 0C:83F0: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030401 0C:83F1: 14        .byte con_X + $14   ; 

- D 0 - I - 0x030402 0C:83F2: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x030403 0C:83F3: FC        .byte con_T + $FC   ; 
- D 0 - I - 0x030404 0C:83F4: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030405 0C:83F5: 1C        .byte con_X + $1C   ; 
@end:



_off010_83F6_13:
- D 0 - I - 0x030406 0C:83F6: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x030407 0C:83F7: 09        .byte con_Y + $09   ; 
- D 0 - I - 0x030408 0C:83F8: 6F        .byte con_T + $6F   ; 
- D 0 - I - 0x030409 0C:83F9: 03        .byte con_A + $03   ; 
- D 0 - I - 0x03040A 0C:83FA: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x03040B 0C:83FB: 09        .byte con_Y + $09   ; 
- D 0 - I - 0x03040C 0C:83FC: 6F        .byte con_T + $6F   ; 
- D 0 - I - 0x03040D 0C:83FD: 43        .byte con_A + $43   ; 
- D 0 - I - 0x03040E 0C:83FE: 00        .byte con_X + $00   ; 

- D 0 - I - 0x03040F 0C:83FF: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x030410 0C:8400: 67        .byte con_T + $67   ; 
- D 0 - I - 0x030411 0C:8401: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030412 0C:8402: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x030413 0C:8403: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x030414 0C:8404: 69        .byte con_T + $69   ; 
- D 0 - I - 0x030415 0C:8405: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030416 0C:8406: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x030417 0C:8407: F9        .byte con_Y + $F9   ; 
- D 0 - I - 0x030418 0C:8408: 6B        .byte con_T + $6B   ; 
- D 0 - I - 0x030419 0C:8409: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03041A 0C:840A: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x03041B 0C:840B: F9        .byte con_Y + $F9   ; 
- D 0 - I - 0x03041C 0C:840C: 6D        .byte con_T + $6D   ; 
- D 0 - I - 0x03041D 0C:840D: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03041E 0C:840E: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x03041F 0C:840F: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x030420 0C:8410: 67        .byte con_T + $67   ; 
- D 0 - I - 0x030421 0C:8411: 42        .byte con_A + $42   ; 
- D 0 - I - 0x030422 0C:8412: 04        .byte con_X + $04   ; 

- D 0 - I - 0x030423 0C:8413: F9        .byte con_Y + $F9   ; 
- D 0 - I - 0x030424 0C:8414: 6B        .byte con_T + $6B   ; 
- D 0 - I - 0x030425 0C:8415: 42        .byte con_A + $42   ; 
- D 0 - I - 0x030426 0C:8416: 04        .byte con_X + $04   ; 
@end:



_off010_8417_16:
- D 0 - I - 0x030427 0C:8417: 04        .byte (@end - * - 1) / 4

- D 0 - I - 0x030428 0C:8418: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x030429 0C:8419: 43        .byte con_T + $43   ; 
- D 0 - I - 0x03042A 0C:841A: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03042B 0C:841B: 00        .byte con_X + $00   ; 

- D 0 - I - 0x03042C 0C:841C: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x03042D 0C:841D: 45        .byte con_T + $45   ; 
- D 0 - I - 0x03042E 0C:841E: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03042F 0C:841F: 10        .byte con_X + $10   ; 

- D 0 - I - 0x030430 0C:8420: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x030431 0C:8421: 49        .byte con_T + $49   ; 
- D 0 - I - 0x030432 0C:8422: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030433 0C:8423: 18        .byte con_X + $18   ; 

- D 0 - I - 0x030434 0C:8424: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x030435 0C:8425: 43        .byte con_T + $43   ; 
- D 0 - I - 0x030436 0C:8426: 42        .byte con_A + $42   ; 
- D 0 - I - 0x030437 0C:8427: 28        .byte con_X + $28   ; 
@end:



_off010_8428_17:
- D 0 - I - 0x030438 0C:8428: 04        .byte (@end - * - 1) / 4

- D 0 - I - 0x030439 0C:8429: 32        .byte con_Y + $32   ; 
- D 0 - I - 0x03043A 0C:842A: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x03043B 0C:842B: 03        .byte con_A + $03   ; 
- D 0 - I - 0x03043C 0C:842C: 00        .byte con_X + $00   ; 

- D 0 - I - 0x03043D 0C:842D: 32        .byte con_Y + $32   ; 
- D 0 - I - 0x03043E 0C:842E: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x03043F 0C:842F: 03        .byte con_A + $03   ; 
- D 0 - I - 0x030440 0C:8430: 10        .byte con_X + $10   ; 

- D 0 - I - 0x030441 0C:8431: 32        .byte con_Y + $32   ; 
- D 0 - I - 0x030442 0C:8432: 51        .byte con_T + $51   ; 
- D 0 - I - 0x030443 0C:8433: 03        .byte con_A + $03   ; 
- D 0 - I - 0x030444 0C:8434: 18        .byte con_X + $18   ; 

- D 0 - I - 0x030445 0C:8435: 32        .byte con_Y + $32   ; 
- D 0 - I - 0x030446 0C:8436: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x030447 0C:8437: 43        .byte con_A + $43   ; 
- D 0 - I - 0x030448 0C:8438: 28        .byte con_X + $28   ; 
@end:



_off010_8439_18:
_off010_8439_19:
_off010_8439_1A:
- D 0 - I - 0x030449 0C:8439: 04        .byte (@end - * - 1) / 4

- D 0 - I - 0x03044A 0C:843A: 32        .byte con_Y + $32   ; 
- D 0 - I - 0x03044B 0C:843B: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x03044C 0C:843C: 03        .byte con_A + $03   ; 
- D 0 - I - 0x03044D 0C:843D: 00        .byte con_X + $00   ; 

- D 0 - I - 0x03044E 0C:843E: 32        .byte con_Y + $32   ; 
- D 0 - I - 0x03044F 0C:843F: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x030450 0C:8440: 43        .byte con_A + $43   ; 
- D 0 - I - 0x030451 0C:8441: 28        .byte con_X + $28   ; 

- D 0 - I - 0x030452 0C:8442: 32        .byte con_Y + $32   ; 
- D 0 - I - 0x030453 0C:8443: 53        .byte con_T + $53   ; 
- D 0 - I - 0x030454 0C:8444: 03        .byte con_A + $03   ; 
- D 0 - I - 0x030455 0C:8445: 10        .byte con_X + $10   ; 

- D 0 - I - 0x030456 0C:8446: 32        .byte con_Y + $32   ; 
- D 0 - I - 0x030457 0C:8447: 55        .byte con_T + $55   ; 
- D 0 - I - 0x030458 0C:8448: 03        .byte con_A + $03   ; 
- D 0 - I - 0x030459 0C:8449: 18        .byte con_X + $18   ; 
@end:



_off010_844A_14:
- D 0 - I - 0x03045A 0C:844A: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x03045B 0C:844B: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x03045C 0C:844C: 57        .byte con_T + $57   ; 
- D 0 - I - 0x03045D 0C:844D: 80        .byte con_A + $80   ; 
- D 0 - I - 0x03045E 0C:844E: 00        .byte con_X + $00   ; 

- D 0 - I - 0x03045F 0C:844F: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x030460 0C:8450: 57        .byte con_T + $57   ; 
- D 0 - I - 0x030461 0C:8451: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030462 0C:8452: 00        .byte con_X + $00   ; 
@end:



_off010_8453_15:
- D 0 - I - 0x030463 0C:8453: 04        .byte (@end - * - 1) / 4

- D 0 - I - 0x030464 0C:8454: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030465 0C:8455: 59        .byte con_T + $59   ; 
- D 0 - I - 0x030466 0C:8456: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030467 0C:8457: 00        .byte con_X + $00   ; 

- D 0 - I - 0x030468 0C:8458: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030469 0C:8459: 59        .byte con_T + $59   ; 
- D 0 - I - 0x03046A 0C:845A: 41        .byte con_A + $41   ; 
- D 0 - I - 0x03046B 0C:845B: 38        .byte con_X + $38   ; 

- D 0 - I - 0x03046C 0C:845C: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x03046D 0C:845D: 59        .byte con_T + $59   ; 
- D 0 - I - 0x03046E 0C:845E: 81        .byte con_A + $81   ; 
- D 0 - I - 0x03046F 0C:845F: 00        .byte con_X + $00   ; 

- D 0 - I - 0x030470 0C:8460: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x030471 0C:8461: 59        .byte con_T + $59   ; 
- D 0 - I - 0x030472 0C:8462: C1        .byte con_A + $C1   ; 
- D 0 - I - 0x030473 0C:8463: 38        .byte con_X + $38   ; 
@end:



_off010_8464_1B:
- D 0 - I - 0x030474 0C:8464: 03        .byte (@end - * - 1) / 4

- D 0 - I - 0x030475 0C:8465: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x030476 0C:8466: 03        .byte con_T + $03   ; 
- D 0 - I - 0x030477 0C:8467: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030478 0C:8468: 0E        .byte con_X + $0E   ; 

- D 0 - I - 0x030479 0C:8469: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x03047A 0C:846A: 05        .byte con_T + $05   ; 
- D 0 - I - 0x03047B 0C:846B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03047C 0C:846C: 16        .byte con_X + $16   ; 

- D 0 - I - 0x03047D 0C:846D: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x03047E 0C:846E: 07        .byte con_T + $07   ; 
- D 0 - I - 0x03047F 0C:846F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030480 0C:8470: 1E        .byte con_X + $1E   ; 
@end:



_off010_8471_1C:
- D 0 - I - 0x030481 0C:8471: 03        .byte (@end - * - 1) / 4

- D 0 - I - 0x030482 0C:8472: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030483 0C:8473: 09        .byte con_T + $09   ; 
- D 0 - I - 0x030484 0C:8474: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030485 0C:8475: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x030486 0C:8476: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030487 0C:8477: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x030488 0C:8478: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030489 0C:8479: 15        .byte con_X + $15   ; 

- D 0 - I - 0x03048A 0C:847A: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x03048B 0C:847B: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x03048C 0C:847C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03048D 0C:847D: 1D        .byte con_X + $1D   ; 
@end:



_off010_847E_1D:
- D 0 - I - 0x03048E 0C:847E: 03        .byte (@end - * - 1) / 4

- D 0 - I - 0x03048F 0C:847F: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x030490 0C:8480: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x030491 0C:8481: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030492 0C:8482: 08        .byte con_X + $08   ; 

- D 0 - I - 0x030493 0C:8483: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x030494 0C:8484: 11        .byte con_T + $11   ; 
- D 0 - I - 0x030495 0C:8485: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030496 0C:8486: 10        .byte con_X + $10   ; 

- D 0 - I - 0x030497 0C:8487: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x030498 0C:8488: 13        .byte con_T + $13   ; 
- D 0 - I - 0x030499 0C:8489: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03049A 0C:848A: 18        .byte con_X + $18   ; 
@end:



_off010_848B_1E:
- D 0 - I - 0x03049B 0C:848B: 03        .byte (@end - * - 1) / 4

- D 0 - I - 0x03049C 0C:848C: 05        .byte con_Y + $05   ; 
- D 0 - I - 0x03049D 0C:848D: 19        .byte con_T + $19   ; 
- D 0 - I - 0x03049E 0C:848E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03049F 0C:848F: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0304A0 0C:8490: 05        .byte con_Y + $05   ; 
- D 0 - I - 0x0304A1 0C:8491: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x0304A2 0C:8492: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0304A3 0C:8493: 10        .byte con_X + $10   ; 

- D 0 - I - 0x0304A4 0C:8494: 05        .byte con_Y + $05   ; 
- D 0 - I - 0x0304A5 0C:8495: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x0304A6 0C:8496: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0304A7 0C:8497: 18        .byte con_X + $18   ; 
@end:



_off010_8498_1F:
- D 0 - I - 0x0304A8 0C:8498: 04        .byte (@end - * - 1) / 4

- D 0 - I - 0x0304A9 0C:8499: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x0304AA 0C:849A: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x0304AB 0C:849B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0304AC 0C:849C: 0D        .byte con_X + $0D   ; 

- D 0 - I - 0x0304AD 0C:849D: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x0304AE 0C:849E: 21        .byte con_T + $21   ; 
- D 0 - I - 0x0304AF 0C:849F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0304B0 0C:84A0: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0304B1 0C:84A1: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x0304B2 0C:84A2: 23        .byte con_T + $23   ; 
- D 0 - I - 0x0304B3 0C:84A3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0304B4 0C:84A4: 10        .byte con_X + $10   ; 

- D 0 - I - 0x0304B5 0C:84A5: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x0304B6 0C:84A6: 25        .byte con_T + $25   ; 
- D 0 - I - 0x0304B7 0C:84A7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0304B8 0C:84A8: 18        .byte con_X + $18   ; 
@end:



_off010_84A9_20:
- D 0 - I - 0x0304B9 0C:84A9: 06        .byte (@end - * - 1) / 4

- D 0 - I - 0x0304BA 0C:84AA: 02        .byte con_Y + $02   ; 
- D 0 - I - 0x0304BB 0C:84AB: 27        .byte con_T + $27   ; 
- D 0 - I - 0x0304BC 0C:84AC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0304BD 0C:84AD: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x0304BE 0C:84AE: 02        .byte con_Y + $02   ; 
- D 0 - I - 0x0304BF 0C:84AF: 29        .byte con_T + $29   ; 
- D 0 - I - 0x0304C0 0C:84B0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0304C1 0C:84B1: 14        .byte con_X + $14   ; 

- D 0 - I - 0x0304C2 0C:84B2: 02        .byte con_Y + $02   ; 
- D 0 - I - 0x0304C3 0C:84B3: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x0304C4 0C:84B4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0304C5 0C:84B5: 1C        .byte con_X + $1C   ; 

- D 0 - I - 0x0304C6 0C:84B6: 16        .byte con_Y + $16   ; 
- D 0 - I - 0x0304C7 0C:84B7: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x0304C8 0C:84B8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0304C9 0C:84B9: 10        .byte con_X + $10   ; 

- D 0 - I - 0x0304CA 0C:84BA: 15        .byte con_Y + $15   ; 
- D 0 - I - 0x0304CB 0C:84BB: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x0304CC 0C:84BC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0304CD 0C:84BD: 18        .byte con_X + $18   ; 

- D 0 - I - 0x0304CE 0C:84BE: 15        .byte con_Y + $15   ; 
- D 0 - I - 0x0304CF 0C:84BF: 31        .byte con_T + $31   ; 
- D 0 - I - 0x0304D0 0C:84C0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0304D1 0C:84C1: 20        .byte con_X + $20   ; 
@end:



_off010_84C2_21:
- D 0 - I - 0x0304D2 0C:84C2: 06        .byte (@end - * - 1) / 4

- D 0 - I - 0x0304D3 0C:84C3: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x0304D4 0C:84C4: 33        .byte con_T + $33   ; 
- D 0 - I - 0x0304D5 0C:84C5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0304D6 0C:84C6: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x0304D7 0C:84C7: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x0304D8 0C:84C8: 35        .byte con_T + $35   ; 
- D 0 - I - 0x0304D9 0C:84C9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0304DA 0C:84CA: 14        .byte con_X + $14   ; 

- D 0 - I - 0x0304DB 0C:84CB: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x0304DC 0C:84CC: 37        .byte con_T + $37   ; 
- D 0 - I - 0x0304DD 0C:84CD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0304DE 0C:84CE: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0304DF 0C:84CF: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x0304E0 0C:84D0: 39        .byte con_T + $39   ; 
- D 0 - I - 0x0304E1 0C:84D1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0304E2 0C:84D2: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0304E3 0C:84D3: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x0304E4 0C:84D4: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x0304E5 0C:84D5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0304E6 0C:84D6: 18        .byte con_X + $18   ; 

- D 0 - I - 0x0304E7 0C:84D7: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x0304E8 0C:84D8: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x0304E9 0C:84D9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0304EA 0C:84DA: 10        .byte con_X + $10   ; 
@end:



_off010_84DB_22:
- D 0 - I - 0x0304EB 0C:84DB: 01        .byte (@end - * - 1) / 4

- D 0 - I - 0x0304EC 0C:84DC: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x0304ED 0C:84DD: DD        .byte con_T + $DD   ; 
- D 0 - I - 0x0304EE 0C:84DE: 03        .byte con_A + $03   ; 
- D 0 - I - 0x0304EF 0C:84DF: FC        .byte con_X + $FC   ; 
@end:



_off010_84E0_23:
- D 0 - I - 0x0304F0 0C:84E0: 14        .byte (@end - * - 1) / 4

- D 0 - I - 0x0304F1 0C:84E1: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x0304F2 0C:84E2: 49        .byte con_T + $49   ; 
- D 0 - I - 0x0304F3 0C:84E3: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0304F4 0C:84E4: E4        .byte con_X + $E4   ; 

- D 0 - I - 0x0304F5 0C:84E5: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x0304F6 0C:84E6: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x0304F7 0C:84E7: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0304F8 0C:84E8: EC        .byte con_X + $EC   ; 

- D 0 - I - 0x0304F9 0C:84E9: 20        .byte con_Y + $20   ; 
- D 0 - I - 0x0304FA 0C:84EA: 25        .byte con_T + $25   ; 
- D 0 - I - 0x0304FB 0C:84EB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0304FC 0C:84EC: E4        .byte con_X + $E4   ; 

- D 0 - I - 0x0304FD 0C:84ED: 20        .byte con_Y + $20   ; 
- D 0 - I - 0x0304FE 0C:84EE: 27        .byte con_T + $27   ; 
- D 0 - I - 0x0304FF 0C:84EF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030500 0C:84F0: EC        .byte con_X + $EC   ; 

- D 0 - I - 0x030501 0C:84F1: 20        .byte con_Y + $20   ; 
- D 0 - I - 0x030502 0C:84F2: 29        .byte con_T + $29   ; 
- D 0 - I - 0x030503 0C:84F3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030504 0C:84F4: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x030505 0C:84F5: 30        .byte con_Y + $30   ; 
- D 0 - I - 0x030506 0C:84F6: 79        .byte con_T + $79   ; 
- D 0 - I - 0x030507 0C:84F7: 03        .byte con_A + $03   ; 
- D 0 - I - 0x030508 0C:84F8: E0        .byte con_X + $E0   ; 

- D 0 - I - 0x030509 0C:84F9: 30        .byte con_Y + $30   ; 
- D 0 - I - 0x03050A 0C:84FA: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x03050B 0C:84FB: 01        .byte con_A + $01   ; 
- D 0 - I - 0x03050C 0C:84FC: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x03050D 0C:84FD: 40        .byte con_Y + $40   ; 
- D 0 - I - 0x03050E 0C:84FE: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x03050F 0C:84FF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030510 0C:8500: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x030511 0C:8501: 40        .byte con_Y + $40   ; 
- D 0 - I - 0x030512 0C:8502: 7B        .byte con_T + $7B   ; 
- D 0 - I - 0x030513 0C:8503: 03        .byte con_A + $03   ; 
- D 0 - I - 0x030514 0C:8504: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x030515 0C:8505: 50        .byte con_Y + $50   ; 
- D 0 - I - 0x030516 0C:8506: 7D        .byte con_T + $7D   ; 
- D 0 - I - 0x030517 0C:8507: 03        .byte con_A + $03   ; 
- D 0 - I - 0x030518 0C:8508: E0        .byte con_X + $E0   ; 

- D 0 - I - 0x030519 0C:8509: 50        .byte con_Y + $50   ; 
- D 0 - I - 0x03051A 0C:850A: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x03051B 0C:850B: 01        .byte con_A + $01   ; 
- D 0 - I - 0x03051C 0C:850C: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x03051D 0C:850D: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x03051E 0C:850E: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x03051F 0C:850F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030520 0C:8510: 24        .byte con_X + $24   ; 

- D 0 - I - 0x030521 0C:8511: 20        .byte con_Y + $20   ; 
- D 0 - I - 0x030522 0C:8512: 51        .byte con_T + $51   ; 
- D 0 - I - 0x030523 0C:8513: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030524 0C:8514: 20        .byte con_X + $20   ; 

- D 0 - I - 0x030525 0C:8515: 20        .byte con_Y + $20   ; 
- D 0 - I - 0x030526 0C:8516: 53        .byte con_T + $53   ; 
- D 0 - I - 0x030527 0C:8517: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030528 0C:8518: 28        .byte con_X + $28   ; 

- D 0 - I - 0x030529 0C:8519: 1F        .byte con_Y + $1F   ; 
- D 0 - I - 0x03052A 0C:851A: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x03052B 0C:851B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03052C 0C:851C: 2F        .byte con_X + $2F   ; 

- D 0 - I - 0x03052D 0C:851D: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x03052E 0C:851E: 7F        .byte con_T + $7F   ; 
- D 0 - I - 0x03052F 0C:851F: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030530 0C:8520: 38        .byte con_X + $38   ; 

- D 0 - I - 0x030531 0C:8521: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x030532 0C:8522: 81        .byte con_T + $81   ; 
- D 0 - I - 0x030533 0C:8523: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030534 0C:8524: 40        .byte con_X + $40   ; 

- D 0 - I - 0x030535 0C:8525: 30        .byte con_Y + $30   ; 
- D 0 - I - 0x030536 0C:8526: 73        .byte con_T + $73   ; 
- D 0 - I - 0x030537 0C:8527: 03        .byte con_A + $03   ; 
- D 0 - I - 0x030538 0C:8528: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x030539 0C:8529: 30        .byte con_Y + $30   ; 
- D 0 - I - 0x03053A 0C:852A: 75        .byte con_T + $75   ; 
- D 0 - I - 0x03053B 0C:852B: 01        .byte con_A + $01   ; 
- D 0 - I - 0x03053C 0C:852C: D0        .byte con_X + $D0   ; 

- D 0 - I - 0x03053D 0C:852D: 3C        .byte con_Y + $3C   ; 
- D 0 - I - 0x03053E 0C:852E: 77        .byte con_T + $77   ; 
- D 0 - I - 0x03053F 0C:852F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030540 0C:8530: D8        .byte con_X + $D8   ; 
@end:



_off010_8531_24:
- D 0 - I - 0x030541 0C:8531: 2F        .byte (@end - * - 1) / 4

- D 0 - I - 0x030542 0C:8532: 02        .byte con_Y + $02   ; 
- D 0 - I - 0x030543 0C:8533: 09        .byte con_T + $09   ; 
- D 0 - I - 0x030544 0C:8534: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030545 0C:8535: E0        .byte con_X + $E0   ; 

- D 0 - I - 0x030546 0C:8536: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030547 0C:8537: 01        .byte con_T + $01   ; 
- D 0 - I - 0x030548 0C:8538: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030549 0C:8539: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x03054A 0C:853A: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x03054B 0C:853B: 03        .byte con_T + $03   ; 
- D 0 - I - 0x03054C 0C:853C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03054D 0C:853D: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x03054E 0C:853E: FD        .byte con_Y + $FD   ; 
- D 0 - I - 0x03054F 0C:853F: 05        .byte con_T + $05   ; 
- D 0 - I - 0x030550 0C:8540: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030551 0C:8541: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x030552 0C:8542: FD        .byte con_Y + $FD   ; 
- D 0 - I - 0x030553 0C:8543: 07        .byte con_T + $07   ; 
- D 0 - I - 0x030554 0C:8544: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030555 0C:8545: 00        .byte con_X + $00   ; 

- D 0 - I - 0x030556 0C:8546: 16        .byte con_Y + $16   ; 
- D 0 - I - 0x030557 0C:8547: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x030558 0C:8548: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030559 0C:8549: E0        .byte con_X + $E0   ; 

- D 0 - I - 0x03055A 0C:854A: 16        .byte con_Y + $16   ; 
- D 0 - I - 0x03055B 0C:854B: 31        .byte con_T + $31   ; 
- D 0 - I - 0x03055C 0C:854C: 01        .byte con_A + $01   ; 
- D 0 - I - 0x03055D 0C:854D: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x03055E 0C:854E: 14        .byte con_Y + $14   ; 
- D 0 - I - 0x03055F 0C:854F: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x030560 0C:8550: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030561 0C:8551: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x030562 0C:8552: 14        .byte con_Y + $14   ; 
- D 0 - I - 0x030563 0C:8553: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x030564 0C:8554: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030565 0C:8555: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x030566 0C:8556: 28        .byte con_Y + $28   ; 
- D 0 - I - 0x030567 0C:8557: 11        .byte con_T + $11   ; 
- D 0 - I - 0x030568 0C:8558: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030569 0C:8559: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x03056A 0C:855A: 2A        .byte con_Y + $2A   ; 
- D 0 - I - 0x03056B 0C:855B: 33        .byte con_T + $33   ; 
- D 0 - I - 0x03056C 0C:855C: 01        .byte con_A + $01   ; 
- D 0 - I - 0x03056D 0C:855D: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x03056E 0C:855E: 40        .byte con_Y + $40   ; 
- D 0 - I - 0x03056F 0C:855F: 63        .byte con_T + $63   ; 
- D 0 - I - 0x030570 0C:8560: 03        .byte con_A + $03   ; 
- D 0 - I - 0x030571 0C:8561: D1        .byte con_X + $D1   ; 

- D 0 - I - 0x030572 0C:8562: 6C        .byte con_Y + $6C   ; 
- D 0 - I - 0x030573 0C:8563: 61        .byte con_T + $61   ; 
- D 0 - I - 0x030574 0C:8564: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030575 0C:8565: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x030576 0C:8566: 57        .byte con_Y + $57   ; 
- D 0 - I - 0x030577 0C:8567: 5D        .byte con_T + $5D   ; 
- D 0 - I - 0x030578 0C:8568: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030579 0C:8569: D0        .byte con_X + $D0   ; 

- D 0 - I - 0x03057A 0C:856A: 5A        .byte con_Y + $5A   ; 
- D 0 - I - 0x03057B 0C:856B: 5F        .byte con_T + $5F   ; 
- D 0 - I - 0x03057C 0C:856C: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03057D 0C:856D: D8        .byte con_X + $D8   ; 

- D 0 - I - 0x03057E 0C:856E: 32        .byte con_Y + $32   ; 
- D 0 - I - 0x03057F 0C:856F: 13        .byte con_T + $13   ; 
- D 0 - I - 0x030580 0C:8570: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030581 0C:8571: D8        .byte con_X + $D8   ; 

- D 0 - I - 0x030582 0C:8572: 60        .byte con_Y + $60   ; 
- D 0 - I - 0x030583 0C:8573: 23        .byte con_T + $23   ; 
- D 0 - I - 0x030584 0C:8574: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030585 0C:8575: E0        .byte con_X + $E0   ; 

- D 0 - I - 0x030586 0C:8576: 1D        .byte con_Y + $1D   ; 
- D 0 - I - 0x030587 0C:8577: 35        .byte con_T + $35   ; 
- D 0 - I - 0x030588 0C:8578: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030589 0C:8579: 08        .byte con_X + $08   ; 

- D 0 - I - 0x03058A 0C:857A: 2D        .byte con_Y + $2D   ; 
- D 0 - I - 0x03058B 0C:857B: 39        .byte con_T + $39   ; 
- D 0 - I - 0x03058C 0C:857C: 01        .byte con_A + $01   ; 
- D 0 - I - 0x03058D 0C:857D: 08        .byte con_X + $08   ; 

- D 0 - I - 0x03058E 0C:857E: 3D        .byte con_Y + $3D   ; 
- D 0 - I - 0x03058F 0C:857F: 15        .byte con_T + $15   ; 
- D 0 - I - 0x030590 0C:8580: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030591 0C:8581: 03        .byte con_X + $03   ; 

- D 0 - I - 0x030592 0C:8582: 3D        .byte con_Y + $3D   ; 
- D 0 - I - 0x030593 0C:8583: 17        .byte con_T + $17   ; 
- D 0 - I - 0x030594 0C:8584: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030595 0C:8585: 0B        .byte con_X + $0B   ; 

- D 0 - I - 0x030596 0C:8586: 2D        .byte con_Y + $2D   ; 
- D 0 - I - 0x030597 0C:8587: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x030598 0C:8588: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030599 0C:8589: 10        .byte con_X + $10   ; 

- D 0 - I - 0x03059A 0C:858A: 1D        .byte con_Y + $1D   ; 
- D 0 - I - 0x03059B 0C:858B: 37        .byte con_T + $37   ; 
- D 0 - I - 0x03059C 0C:858C: 01        .byte con_A + $01   ; 
- D 0 - I - 0x03059D 0C:858D: 10        .byte con_X + $10   ; 

- D 0 - I - 0x03059E 0C:858E: 50        .byte con_Y + $50   ; 
- D 0 - I - 0x03059F 0C:858F: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x0305A0 0C:8590: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0305A1 0C:8591: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x0305A2 0C:8592: 55        .byte con_Y + $55   ; 
- D 0 - I - 0x0305A3 0C:8593: 3F        .byte con_T + $3F   ; 
- D 0 - I - 0x0305A4 0C:8594: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0305A5 0C:8595: 01        .byte con_X + $01   ; 

- D 0 - I - 0x0305A6 0C:8596: 56        .byte con_Y + $56   ; 
- D 0 - I - 0x0305A7 0C:8597: 41        .byte con_T + $41   ; 
- D 0 - I - 0x0305A8 0C:8598: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0305A9 0C:8599: 09        .byte con_X + $09   ; 

- D 0 - I - 0x0305AA 0C:859A: 58        .byte con_Y + $58   ; 
- D 0 - I - 0x0305AB 0C:859B: 43        .byte con_T + $43   ; 
- D 0 - I - 0x0305AC 0C:859C: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0305AD 0C:859D: 11        .byte con_X + $11   ; 

- D 0 - I - 0x0305AE 0C:859E: 60        .byte con_Y + $60   ; 
- D 0 - I - 0x0305AF 0C:859F: 19        .byte con_T + $19   ; 
- D 0 - I - 0x0305B0 0C:85A0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0305B1 0C:85A1: 10        .byte con_X + $10   ; 

- D 0 - I - 0x0305B2 0C:85A2: 46        .byte con_Y + $46   ; 
- D 0 - I - 0x0305B3 0C:85A3: 45        .byte con_T + $45   ; 
- D 0 - I - 0x0305B4 0C:85A4: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0305B5 0C:85A5: 20        .byte con_X + $20   ; 

- D 0 - I - 0x0305B6 0C:85A6: 25        .byte con_Y + $25   ; 
- D 0 - I - 0x0305B7 0C:85A7: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x0305B8 0C:85A8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0305B9 0C:85A9: 18        .byte con_X + $18   ; 

- D 0 - I - 0x0305BA 0C:85AA: 30        .byte con_Y + $30   ; 
- D 0 - I - 0x0305BB 0C:85AB: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x0305BC 0C:85AC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0305BD 0C:85AD: 22        .byte con_X + $22   ; 

- D 0 - I - 0x0305BE 0C:85AE: 0B        .byte con_Y + $0B   ; 
- D 0 - I - 0x0305BF 0C:85AF: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x0305C0 0C:85B0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0305C1 0C:85B1: 15        .byte con_X + $15   ; 

- D 0 - I - 0x0305C2 0C:85B2: 09        .byte con_Y + $09   ; 
- D 0 - I - 0x0305C3 0C:85B3: 55        .byte con_T + $55   ; 
- D 0 - I - 0x0305C4 0C:85B4: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0305C5 0C:85B5: 20        .byte con_X + $20   ; 

- D 0 - I - 0x0305C6 0C:85B6: 09        .byte con_Y + $09   ; 
- D 0 - I - 0x0305C7 0C:85B7: 57        .byte con_T + $57   ; 
- D 0 - I - 0x0305C8 0C:85B8: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0305C9 0C:85B9: 28        .byte con_X + $28   ; 

- D 0 - I - 0x0305CA 0C:85BA: 12        .byte con_Y + $12   ; 
- D 0 - I - 0x0305CB 0C:85BB: 67        .byte con_T + $67   ; 
- D 0 - I - 0x0305CC 0C:85BC: 03        .byte con_A + $03   ; 
- D 0 - I - 0x0305CD 0C:85BD: 2B        .byte con_X + $2B   ; 

- D 0 - I - 0x0305CE 0C:85BE: 32        .byte con_Y + $32   ; 
- D 0 - I - 0x0305CF 0C:85BF: 21        .byte con_T + $21   ; 
- D 0 - I - 0x0305D0 0C:85C0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0305D1 0C:85C1: 33        .byte con_X + $33   ; 

- D 0 - I - 0x0305D2 0C:85C2: 22        .byte con_Y + $22   ; 
- D 0 - I - 0x0305D3 0C:85C3: 69        .byte con_T + $69   ; 
- D 0 - I - 0x0305D4 0C:85C4: 03        .byte con_A + $03   ; 
- D 0 - I - 0x0305D5 0C:85C5: 35        .byte con_X + $35   ; 

- D 0 - I - 0x0305D6 0C:85C6: 22        .byte con_Y + $22   ; 
- D 0 - I - 0x0305D7 0C:85C7: 6B        .byte con_T + $6B   ; 
- D 0 - I - 0x0305D8 0C:85C8: 03        .byte con_A + $03   ; 
- D 0 - I - 0x0305D9 0C:85C9: 3D        .byte con_X + $3D   ; 

- D 0 - I - 0x0305DA 0C:85CA: 4B        .byte con_Y + $4B   ; 
- D 0 - I - 0x0305DB 0C:85CB: 71        .byte con_T + $71   ; 
- D 0 - I - 0x0305DC 0C:85CC: 03        .byte con_A + $03   ; 
- D 0 - I - 0x0305DD 0C:85CD: 30        .byte con_X + $30   ; 

- D 0 - I - 0x0305DE 0C:85CE: 48        .byte con_Y + $48   ; 
- D 0 - I - 0x0305DF 0C:85CF: 47        .byte con_T + $47   ; 
- D 0 - I - 0x0305E0 0C:85D0: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0305E1 0C:85D1: 33        .byte con_X + $33   ; 

- D 0 - I - 0x0305E2 0C:85D2: 37        .byte con_Y + $37   ; 
- D 0 - I - 0x0305E3 0C:85D3: 6F        .byte con_T + $6F   ; 
- D 0 - I - 0x0305E4 0C:85D4: 03        .byte con_A + $03   ; 
- D 0 - I - 0x0305E5 0C:85D5: 50        .byte con_X + $50   ; 

- D 0 - I - 0x0305E6 0C:85D6: 47        .byte con_Y + $47   ; 
- D 0 - I - 0x0305E7 0C:85D7: 5B        .byte con_T + $5B   ; 
- D 0 - I - 0x0305E8 0C:85D8: 03        .byte con_A + $03   ; 
- D 0 - I - 0x0305E9 0C:85D9: 3B        .byte con_X + $3B   ; 

- D 0 - I - 0x0305EA 0C:85DA: 59        .byte con_Y + $59   ; 
- D 0 - I - 0x0305EB 0C:85DB: 59        .byte con_T + $59   ; 
- D 0 - I - 0x0305EC 0C:85DC: 03        .byte con_A + $03   ; 
- D 0 - I - 0x0305ED 0C:85DD: 34        .byte con_X + $34   ; 

- D 0 - I - 0x0305EE 0C:85DE: 6A        .byte con_Y + $6A   ; 
- D 0 - I - 0x0305EF 0C:85DF: 85        .byte con_T + $85   ; 
- D 0 - I - 0x0305F0 0C:85E0: 03        .byte con_A + $03   ; 
- D 0 - I - 0x0305F1 0C:85E1: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0305F2 0C:85E2: 68        .byte con_Y + $68   ; 
- D 0 - I - 0x0305F3 0C:85E3: 83        .byte con_T + $83   ; 
- D 0 - I - 0x0305F4 0C:85E4: 03        .byte con_A + $03   ; 
- D 0 - I - 0x0305F5 0C:85E5: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0305F6 0C:85E6: 40        .byte con_Y + $40   ; 
- D 0 - I - 0x0305F7 0C:85E7: 6D        .byte con_T + $6D   ; 
- D 0 - I - 0x0305F8 0C:85E8: 03        .byte con_A + $03   ; 
- D 0 - I - 0x0305F9 0C:85E9: 48        .byte con_X + $48   ; 

- D 0 - I - 0x0305FA 0C:85EA: 40        .byte con_Y + $40   ; 
- D 0 - I - 0x0305FB 0C:85EB: 65        .byte con_T + $65   ; 
- D 0 - I - 0x0305FC 0C:85EC: 03        .byte con_A + $03   ; 
- D 0 - I - 0x0305FD 0C:85ED: 18        .byte con_X + $18   ; 
@end:



_off010_85EE_25:
- D 0 - I - 0x0305FE 0C:85EE: 04        .byte (@end - * - 1) / 4

- D 0 - I - 0x0305FF 0C:85EF: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x030600 0C:85F0: ED        .byte con_T + $ED   ; 
- D 0 - I - 0x030601 0C:85F1: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030602 0C:85F2: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x030603 0C:85F3: F2        .byte con_Y + $F2   ; 
- D 0 - I - 0x030604 0C:85F4: EF        .byte con_T + $EF   ; 
- D 0 - I - 0x030605 0C:85F5: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030606 0C:85F6: 00        .byte con_X + $00   ; 

- D 0 - I - 0x030607 0C:85F7: 02        .byte con_Y + $02   ; 
- D 0 - I - 0x030608 0C:85F8: F1        .byte con_T + $F1   ; 
- D 0 - I - 0x030609 0C:85F9: 01        .byte con_A + $01   ; 
- D 0 - I - 0x03060A 0C:85FA: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x03060B 0C:85FB: 02        .byte con_Y + $02   ; 
- D 0 - I - 0x03060C 0C:85FC: F3        .byte con_T + $F3   ; 
- D 0 - I - 0x03060D 0C:85FD: 01        .byte con_A + $01   ; 
- D 0 - I - 0x03060E 0C:85FE: 00        .byte con_X + $00   ; 
@end:



_off010_85FF_26:
- D 0 - I - 0x03060F 0C:85FF: 03        .byte (@end - * - 1) / 4

- D 0 - I - 0x030610 0C:8600: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x030611 0C:8601: F5        .byte con_T + $F5   ; 
- D 0 - I - 0x030612 0C:8602: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030613 0C:8603: F3        .byte con_X + $F3   ; 

- D 0 - I - 0x030614 0C:8604: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x030615 0C:8605: F7        .byte con_T + $F7   ; 
- D 0 - I - 0x030616 0C:8606: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030617 0C:8607: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x030618 0C:8608: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x030619 0C:8609: F9        .byte con_T + $F9   ; 
- D 0 - I - 0x03061A 0C:860A: 01        .byte con_A + $01   ; 
- D 0 - I - 0x03061B 0C:860B: 03        .byte con_X + $03   ; 
@end:



_off010_860C_27:
- D 0 - I - 0x03061C 0C:860C: 03        .byte (@end - * - 1) / 4

- D 0 - I - 0x03061D 0C:860D: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x03061E 0C:860E: FB        .byte con_T + $FB   ; 
- D 0 - I - 0x03061F 0C:860F: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030620 0C:8610: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x030621 0C:8611: FF        .byte con_Y + $FF   ; 
- D 0 - I - 0x030622 0C:8612: FD        .byte con_T + $FD   ; 
- D 0 - I - 0x030623 0C:8613: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030624 0C:8614: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x030625 0C:8615: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x030626 0C:8616: FF        .byte con_T + $FF   ; 
- D 0 - I - 0x030627 0C:8617: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030628 0C:8618: 00        .byte con_X + $00   ; 
@end:



_off010_8619_28:
- D 0 - I - 0x030629 0C:8619: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x03062A 0C:861A: C1        .byte con_Y + $C1   ; 
- D 0 - I - 0x03062B 0C:861B: CB        .byte con_T + $CB   ; 
- D 0 - I - 0x03062C 0C:861C: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03062D 0C:861D: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x03062E 0C:861E: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x03062F 0C:861F: CD        .byte con_T + $CD   ; 
- D 0 - I - 0x030630 0C:8620: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030631 0C:8621: EF        .byte con_X + $EF   ; 

- D 0 - I - 0x030632 0C:8622: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x030633 0C:8623: CF        .byte con_T + $CF   ; 
- D 0 - I - 0x030634 0C:8624: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030635 0C:8625: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x030636 0C:8626: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x030637 0C:8627: D1        .byte con_T + $D1   ; 
- D 0 - I - 0x030638 0C:8628: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030639 0C:8629: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x03063A 0C:862A: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x03063B 0C:862B: D3        .byte con_T + $D3   ; 
- D 0 - I - 0x03063C 0C:862C: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03063D 0C:862D: 07        .byte con_X + $07   ; 

- D 0 - I - 0x03063E 0C:862E: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x03063F 0C:862F: D5        .byte con_T + $D5   ; 
- D 0 - I - 0x030640 0C:8630: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030641 0C:8631: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x030642 0C:8632: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x030643 0C:8633: D7        .byte con_T + $D7   ; 
- D 0 - I - 0x030644 0C:8634: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030645 0C:8635: FA        .byte con_X + $FA   ; 

- D 0 - I - 0x030646 0C:8636: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x030647 0C:8637: D9        .byte con_T + $D9   ; 
- D 0 - I - 0x030648 0C:8638: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030649 0C:8639: 02        .byte con_X + $02   ; 

- D 0 - I - 0x03064A 0C:863A: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x03064B 0C:863B: DB        .byte con_T + $DB   ; 
- D 0 - I - 0x03064C 0C:863C: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03064D 0C:863D: FC        .byte con_X + $FC   ; 
@end:



_off010_863E_29:
- D 0 - I - 0x03064E 0C:863E: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x03064F 0C:863F: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x030650 0C:8640: DD        .byte con_T + $DD   ; 
- D 0 - I - 0x030651 0C:8641: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030652 0C:8642: ED        .byte con_X + $ED   ; 

- D 0 - I - 0x030653 0C:8643: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x030654 0C:8644: DF        .byte con_T + $DF   ; 
- D 0 - I - 0x030655 0C:8645: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030656 0C:8646: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x030657 0C:8647: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x030658 0C:8648: E1        .byte con_T + $E1   ; 
- D 0 - I - 0x030659 0C:8649: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03065A 0C:864A: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x03065B 0C:864B: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x03065C 0C:864C: E3        .byte con_T + $E3   ; 
- D 0 - I - 0x03065D 0C:864D: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03065E 0C:864E: 05        .byte con_X + $05   ; 

- D 0 - I - 0x03065F 0C:864F: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x030660 0C:8650: E5        .byte con_T + $E5   ; 
- D 0 - I - 0x030661 0C:8651: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030662 0C:8652: ED        .byte con_X + $ED   ; 

- D 0 - I - 0x030663 0C:8653: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x030664 0C:8654: E7        .byte con_T + $E7   ; 
- D 0 - I - 0x030665 0C:8655: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030666 0C:8656: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x030667 0C:8657: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x030668 0C:8658: EB        .byte con_T + $EB   ; 
- D 0 - I - 0x030669 0C:8659: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03066A 0C:865A: 05        .byte con_X + $05   ; 

- D 0 - I - 0x03066B 0C:865B: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x03066C 0C:865C: E9        .byte con_T + $E9   ; 
- D 0 - I - 0x03066D 0C:865D: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03066E 0C:865E: FD        .byte con_X + $FD   ; 
@end:



_off010_865F_2A:
- D 0 - I - 0x03066F 0C:865F: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x030670 0C:8660: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x030671 0C:8661: ED        .byte con_T + $ED   ; 
- D 0 - I - 0x030672 0C:8662: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030673 0C:8663: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x030674 0C:8664: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x030675 0C:8665: EF        .byte con_T + $EF   ; 
- D 0 - I - 0x030676 0C:8666: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030677 0C:8667: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x030678 0C:8668: D1        .byte con_Y + $D1   ; 
- D 0 - I - 0x030679 0C:8669: F1        .byte con_T + $F1   ; 
- D 0 - I - 0x03067A 0C:866A: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03067B 0C:866B: 05        .byte con_X + $05   ; 

- D 0 - I - 0x03067C 0C:866C: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x03067D 0C:866D: F3        .byte con_T + $F3   ; 
- D 0 - I - 0x03067E 0C:866E: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03067F 0C:866F: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x030680 0C:8670: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x030681 0C:8671: F5        .byte con_T + $F5   ; 
- D 0 - I - 0x030682 0C:8672: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030683 0C:8673: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x030684 0C:8674: E1        .byte con_Y + $E1   ; 
- D 0 - I - 0x030685 0C:8675: F7        .byte con_T + $F7   ; 
- D 0 - I - 0x030686 0C:8676: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030687 0C:8677: 05        .byte con_X + $05   ; 

- D 0 - I - 0x030688 0C:8678: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x030689 0C:8679: F9        .byte con_T + $F9   ; 
- D 0 - I - 0x03068A 0C:867A: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03068B 0C:867B: ED        .byte con_X + $ED   ; 

- D 0 - I - 0x03068C 0C:867C: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x03068D 0C:867D: FB        .byte con_T + $FB   ; 
- D 0 - I - 0x03068E 0C:867E: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03068F 0C:867F: F5        .byte con_X + $F5   ; 

- D 0 - I - 0x030690 0C:8680: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x030691 0C:8681: FD        .byte con_T + $FD   ; 
- D 0 - I - 0x030692 0C:8682: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030693 0C:8683: FD        .byte con_X + $FD   ; 

- D 0 - I - 0x030694 0C:8684: F1        .byte con_Y + $F1   ; 
- D 0 - I - 0x030695 0C:8685: FF        .byte con_T + $FF   ; 
- D 0 - I - 0x030696 0C:8686: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030697 0C:8687: 05        .byte con_X + $05   ; 
@end:



_off010_8688_2B:
- D 0 - I - 0x030698 0C:8688: 01        .byte (@end - * - 1) / 4

- D 0 - I - 0x030699 0C:8689: F7        .byte con_Y + $F7   ; 
- D 0 - I - 0x03069A 0C:868A: B1        .byte con_T + $B1   ; 
- D 0 - I - 0x03069B 0C:868B: 01        .byte con_A + $01   ; 
- D 0 - I - 0x03069C 0C:868C: FC        .byte con_X + $FC   ; 
@end:



_off010_868D_2C:
- D 0 - I - 0x03069D 0C:868D: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x03069E 0C:868E: F7        .byte con_Y + $F7   ; 
- D 0 - I - 0x03069F 0C:868F: B3        .byte con_T + $B3   ; 
- D 0 - I - 0x0306A0 0C:8690: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0306A1 0C:8691: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0306A2 0C:8692: F7        .byte con_Y + $F7   ; 
- D 0 - I - 0x0306A3 0C:8693: B3        .byte con_T + $B3   ; 
- D 0 - I - 0x0306A4 0C:8694: 41        .byte con_A + $41   ; 
- D 0 - I - 0x0306A5 0C:8695: 00        .byte con_X + $00   ; 
@end:



_off010_8696_2D:
- D 0 - I - 0x0306A6 0C:8696: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x0306A7 0C:8697: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0306A8 0C:8698: B5        .byte con_T + $B5   ; 
- D 0 - I - 0x0306A9 0C:8699: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0306AA 0C:869A: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x0306AB 0C:869B: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0306AC 0C:869C: B7        .byte con_T + $B7   ; 
- D 0 - I - 0x0306AD 0C:869D: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0306AE 0C:869E: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0306AF 0C:869F: FF        .byte con_Y + $FF   ; 
- D 0 - I - 0x0306B0 0C:86A0: B9        .byte con_T + $B9   ; 
- D 0 - I - 0x0306B1 0C:86A1: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0306B2 0C:86A2: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x0306B3 0C:86A3: FF        .byte con_Y + $FF   ; 
- D 0 - I - 0x0306B4 0C:86A4: BB        .byte con_T + $BB   ; 
- D 0 - I - 0x0306B5 0C:86A5: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0306B6 0C:86A6: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0306B7 0C:86A7: FD        .byte con_Y + $FD   ; 
- D 0 - I - 0x0306B8 0C:86A8: B5        .byte con_T + $B5   ; 
- D 0 - I - 0x0306B9 0C:86A9: C1        .byte con_A + $C1   ; 
- D 0 - I - 0x0306BA 0C:86AA: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0306BB 0C:86AB: FD        .byte con_Y + $FD   ; 
- D 0 - I - 0x0306BC 0C:86AC: B7        .byte con_T + $B7   ; 
- D 0 - I - 0x0306BD 0C:86AD: C1        .byte con_A + $C1   ; 
- D 0 - I - 0x0306BE 0C:86AE: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0306BF 0C:86AF: ED        .byte con_Y + $ED   ; 
- D 0 - I - 0x0306C0 0C:86B0: B9        .byte con_T + $B9   ; 
- D 0 - I - 0x0306C1 0C:86B1: C1        .byte con_A + $C1   ; 
- D 0 - I - 0x0306C2 0C:86B2: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0306C3 0C:86B3: ED        .byte con_Y + $ED   ; 
- D 0 - I - 0x0306C4 0C:86B4: BB        .byte con_T + $BB   ; 
- D 0 - I - 0x0306C5 0C:86B5: C1        .byte con_A + $C1   ; 
- D 0 - I - 0x0306C6 0C:86B6: 00        .byte con_X + $00   ; 
@end:



_off010_86B7_2E:
- D 0 - I - 0x0306C7 0C:86B7: 07        .byte (@end - * - 1) / 4

- D 0 - I - 0x0306C8 0C:86B8: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0306C9 0C:86B9: BD        .byte con_T + $BD   ; 
- D 0 - I - 0x0306CA 0C:86BA: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0306CB 0C:86BB: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x0306CC 0C:86BC: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0306CD 0C:86BD: BF        .byte con_T + $BF   ; 
- D 0 - I - 0x0306CE 0C:86BE: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0306CF 0C:86BF: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0306D0 0C:86C0: FF        .byte con_Y + $FF   ; 
- D 0 - I - 0x0306D1 0C:86C1: C1        .byte con_T + $C1   ; 
- D 0 - I - 0x0306D2 0C:86C2: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0306D3 0C:86C3: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x0306D4 0C:86C4: FF        .byte con_Y + $FF   ; 
- D 0 - I - 0x0306D5 0C:86C5: C3        .byte con_T + $C3   ; 
- D 0 - I - 0x0306D6 0C:86C6: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0306D7 0C:86C7: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x0306D8 0C:86C8: FF        .byte con_Y + $FF   ; 
- D 0 - I - 0x0306D9 0C:86C9: C1        .byte con_T + $C1   ; 
- D 0 - I - 0x0306DA 0C:86CA: 41        .byte con_A + $41   ; 
- D 0 - I - 0x0306DB 0C:86CB: 04        .byte con_X + $04   ; 

- D 0 - I - 0x0306DC 0C:86CC: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0306DD 0C:86CD: BF        .byte con_T + $BF   ; 
- D 0 - I - 0x0306DE 0C:86CE: 41        .byte con_A + $41   ; 
- D 0 - I - 0x0306DF 0C:86CF: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0306E0 0C:86D0: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0306E1 0C:86D1: BD        .byte con_T + $BD   ; 
- D 0 - I - 0x0306E2 0C:86D2: 41        .byte con_A + $41   ; 
- D 0 - I - 0x0306E3 0C:86D3: 08        .byte con_X + $08   ; 
@end:



_off010_86D4_2F:
- D 0 - I - 0x0306E4 0C:86D4: 06        .byte (@end - * - 1) / 4

- D 0 - I - 0x0306E5 0C:86D5: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0306E6 0C:86D6: C5        .byte con_T + $C5   ; 
- D 0 - I - 0x0306E7 0C:86D7: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0306E8 0C:86D8: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x0306E9 0C:86D9: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0306EA 0C:86DA: C7        .byte con_T + $C7   ; 
- D 0 - I - 0x0306EB 0C:86DB: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0306EC 0C:86DC: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0306ED 0C:86DD: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0306EE 0C:86DE: C5        .byte con_T + $C5   ; 
- D 0 - I - 0x0306EF 0C:86DF: 41        .byte con_A + $41   ; 
- D 0 - I - 0x0306F0 0C:86E0: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0306F1 0C:86E1: EF        .byte con_Y + $EF   ; 
- D 0 - I - 0x0306F2 0C:86E2: C7        .byte con_T + $C7   ; 
- D 0 - I - 0x0306F3 0C:86E3: 41        .byte con_A + $41   ; 
- D 0 - I - 0x0306F4 0C:86E4: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0306F5 0C:86E5: FF        .byte con_Y + $FF   ; 
- D 0 - I - 0x0306F6 0C:86E6: C9        .byte con_T + $C9   ; 
- D 0 - I - 0x0306F7 0C:86E7: 41        .byte con_A + $41   ; 
- D 0 - I - 0x0306F8 0C:86E8: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0306F9 0C:86E9: FF        .byte con_Y + $FF   ; 
- D 0 - I - 0x0306FA 0C:86EA: C9        .byte con_T + $C9   ; 
- D 0 - I - 0x0306FB 0C:86EB: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0306FC 0C:86EC: F8        .byte con_X + $F8   ; 
@end:



_off010_86ED_30:
- D 0 - I - 0x0306FD 0C:86ED: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x0306FE 0C:86EE: 2F        .byte con_Y + $2F   ; 
- D 0 - I - 0x0306FF 0C:86EF: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x030700 0C:86F0: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030701 0C:86F1: 09        .byte con_X + $09   ; 

- D 0 - I - 0x030702 0C:86F2: 2F        .byte con_Y + $2F   ; 
- D 0 - I - 0x030703 0C:86F3: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x030704 0C:86F4: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030705 0C:86F5: 11        .byte con_X + $11   ; 

- D 0 - I - 0x030706 0C:86F6: 1C        .byte con_Y + $1C   ; 
- D 0 - I - 0x030707 0C:86F7: 17        .byte con_T + $17   ; 
- D 0 - I - 0x030708 0C:86F8: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030709 0C:86F9: 1A        .byte con_X + $1A   ; 

- D 0 - I - 0x03070A 0C:86FA: 1C        .byte con_Y + $1C   ; 
- D 0 - I - 0x03070B 0C:86FB: 19        .byte con_T + $19   ; 
- D 0 - I - 0x03070C 0C:86FC: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03070D 0C:86FD: 22        .byte con_X + $22   ; 

- D 0 - I - 0x03070E 0C:86FE: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x03070F 0C:86FF: 03        .byte con_T + $03   ; 
- D 0 - I - 0x030710 0C:8700: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030711 0C:8701: 2C        .byte con_X + $2C   ; 

- D 0 - I - 0x030712 0C:8702: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x030713 0C:8703: 05        .byte con_T + $05   ; 
- D 0 - I - 0x030714 0C:8704: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030715 0C:8705: 34        .byte con_X + $34   ; 

- D 0 - I - 0x030716 0C:8706: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x030717 0C:8707: 07        .byte con_T + $07   ; 
- D 0 - I - 0x030718 0C:8708: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030719 0C:8709: 3C        .byte con_X + $3C   ; 

- D 0 - I - 0x03071A 0C:870A: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x03071B 0C:870B: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x03071C 0C:870C: 01        .byte con_A + $01   ; 
- D 0 - I - 0x03071D 0C:870D: 31        .byte con_X + $31   ; 

- D 0 - I - 0x03071E 0C:870E: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x03071F 0C:870F: 11        .byte con_T + $11   ; 
- D 0 - I - 0x030720 0C:8710: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030721 0C:8711: 39        .byte con_X + $39   ; 
@end:



_off010_8712_31:
- D 0 - I - 0x030722 0C:8712: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x030723 0C:8713: 2F        .byte con_Y + $2F   ; 
- D 0 - I - 0x030724 0C:8714: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x030725 0C:8715: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030726 0C:8716: 09        .byte con_X + $09   ; 

- D 0 - I - 0x030727 0C:8717: 2F        .byte con_Y + $2F   ; 
- D 0 - I - 0x030728 0C:8718: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x030729 0C:8719: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03072A 0C:871A: 11        .byte con_X + $11   ; 

- D 0 - I - 0x03072B 0C:871B: 1C        .byte con_Y + $1C   ; 
- D 0 - I - 0x03072C 0C:871C: 17        .byte con_T + $17   ; 
- D 0 - I - 0x03072D 0C:871D: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03072E 0C:871E: 1A        .byte con_X + $1A   ; 

- D 0 - I - 0x03072F 0C:871F: 1C        .byte con_Y + $1C   ; 
- D 0 - I - 0x030730 0C:8720: 19        .byte con_T + $19   ; 
- D 0 - I - 0x030731 0C:8721: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030732 0C:8722: 22        .byte con_X + $22   ; 

- D 0 - I - 0x030733 0C:8723: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x030734 0C:8724: 13        .byte con_T + $13   ; 
- D 0 - I - 0x030735 0C:8725: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030736 0C:8726: 31        .byte con_X + $31   ; 

- D 0 - I - 0x030737 0C:8727: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x030738 0C:8728: 15        .byte con_T + $15   ; 
- D 0 - I - 0x030739 0C:8729: 01        .byte con_A + $01   ; 
- D 0 - I - 0x03073A 0C:872A: 39        .byte con_X + $39   ; 

- D 0 - I - 0x03073B 0C:872B: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x03073C 0C:872C: 09        .byte con_T + $09   ; 
- D 0 - I - 0x03073D 0C:872D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03073E 0C:872E: 2C        .byte con_X + $2C   ; 

- D 0 - I - 0x03073F 0C:872F: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x030740 0C:8730: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x030741 0C:8731: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030742 0C:8732: 34        .byte con_X + $34   ; 

- D 0 - I - 0x030743 0C:8733: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x030744 0C:8734: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x030745 0C:8735: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030746 0C:8736: 3C        .byte con_X + $3C   ; 
@end:



_off010_8737_32:
- D 0 - I - 0x030747 0C:8737: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x030748 0C:8738: 2F        .byte con_Y + $2F   ; 
- D 0 - I - 0x030749 0C:8739: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x03074A 0C:873A: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03074B 0C:873B: 09        .byte con_X + $09   ; 

- D 0 - I - 0x03074C 0C:873C: 2F        .byte con_Y + $2F   ; 
- D 0 - I - 0x03074D 0C:873D: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x03074E 0C:873E: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03074F 0C:873F: 11        .byte con_X + $11   ; 

- D 0 - I - 0x030750 0C:8740: 1C        .byte con_Y + $1C   ; 
- D 0 - I - 0x030751 0C:8741: 17        .byte con_T + $17   ; 
- D 0 - I - 0x030752 0C:8742: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030753 0C:8743: 1A        .byte con_X + $1A   ; 

- D 0 - I - 0x030754 0C:8744: 1C        .byte con_Y + $1C   ; 
- D 0 - I - 0x030755 0C:8745: 19        .byte con_T + $19   ; 
- D 0 - I - 0x030756 0C:8746: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030757 0C:8747: 22        .byte con_X + $22   ; 

- D 0 - I - 0x030758 0C:8748: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x030759 0C:8749: 03        .byte con_T + $03   ; 
- D 0 - I - 0x03075A 0C:874A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03075B 0C:874B: 2C        .byte con_X + $2C   ; 

- D 0 - I - 0x03075C 0C:874C: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x03075D 0C:874D: 05        .byte con_T + $05   ; 
- D 0 - I - 0x03075E 0C:874E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03075F 0C:874F: 34        .byte con_X + $34   ; 

- D 0 - I - 0x030760 0C:8750: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x030761 0C:8751: 07        .byte con_T + $07   ; 
- D 0 - I - 0x030762 0C:8752: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030763 0C:8753: 3C        .byte con_X + $3C   ; 

- D 0 - I - 0x030764 0C:8754: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x030765 0C:8755: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x030766 0C:8756: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030767 0C:8757: 31        .byte con_X + $31   ; 

- D 0 - I - 0x030768 0C:8758: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x030769 0C:8759: 11        .byte con_T + $11   ; 
- D 0 - I - 0x03076A 0C:875A: 01        .byte con_A + $01   ; 
- D 0 - I - 0x03076B 0C:875B: 39        .byte con_X + $39   ; 
@end:



_off010_875C_33:
- D 0 - I - 0x03076C 0C:875C: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x03076D 0C:875D: 2F        .byte con_Y + $2F   ; 
- D 0 - I - 0x03076E 0C:875E: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x03076F 0C:875F: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030770 0C:8760: 09        .byte con_X + $09   ; 

- D 0 - I - 0x030771 0C:8761: 2F        .byte con_Y + $2F   ; 
- D 0 - I - 0x030772 0C:8762: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x030773 0C:8763: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030774 0C:8764: 11        .byte con_X + $11   ; 

- D 0 - I - 0x030775 0C:8765: 1C        .byte con_Y + $1C   ; 
- D 0 - I - 0x030776 0C:8766: 17        .byte con_T + $17   ; 
- D 0 - I - 0x030777 0C:8767: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030778 0C:8768: 1A        .byte con_X + $1A   ; 

- D 0 - I - 0x030779 0C:8769: 1C        .byte con_Y + $1C   ; 
- D 0 - I - 0x03077A 0C:876A: 19        .byte con_T + $19   ; 
- D 0 - I - 0x03077B 0C:876B: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03077C 0C:876C: 22        .byte con_X + $22   ; 

- D 0 - I - 0x03077D 0C:876D: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x03077E 0C:876E: 03        .byte con_T + $03   ; 
- D 0 - I - 0x03077F 0C:876F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030780 0C:8770: 2C        .byte con_X + $2C   ; 

- D 0 - I - 0x030781 0C:8771: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x030782 0C:8772: 05        .byte con_T + $05   ; 
- D 0 - I - 0x030783 0C:8773: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030784 0C:8774: 34        .byte con_X + $34   ; 

- D 0 - I - 0x030785 0C:8775: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x030786 0C:8776: 07        .byte con_T + $07   ; 
- D 0 - I - 0x030787 0C:8777: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030788 0C:8778: 3C        .byte con_X + $3C   ; 

- D 0 - I - 0x030789 0C:8779: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x03078A 0C:877A: 13        .byte con_T + $13   ; 
- D 0 - I - 0x03078B 0C:877B: 01        .byte con_A + $01   ; 
- D 0 - I - 0x03078C 0C:877C: 31        .byte con_X + $31   ; 

- D 0 - I - 0x03078D 0C:877D: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x03078E 0C:877E: 15        .byte con_T + $15   ; 
- D 0 - I - 0x03078F 0C:877F: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030790 0C:8780: 39        .byte con_X + $39   ; 
@end:



_off010_8781_34:
- D 0 - I - 0x030791 0C:8781: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x030792 0C:8782: 2F        .byte con_Y + $2F   ; 
- D 0 - I - 0x030793 0C:8783: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x030794 0C:8784: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030795 0C:8785: 09        .byte con_X + $09   ; 

- D 0 - I - 0x030796 0C:8786: 2F        .byte con_Y + $2F   ; 
- D 0 - I - 0x030797 0C:8787: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x030798 0C:8788: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030799 0C:8789: 11        .byte con_X + $11   ; 

- D 0 - I - 0x03079A 0C:878A: 1C        .byte con_Y + $1C   ; 
- D 0 - I - 0x03079B 0C:878B: 17        .byte con_T + $17   ; 
- D 0 - I - 0x03079C 0C:878C: 02        .byte con_A + $02   ; 
- D 0 - I - 0x03079D 0C:878D: 1A        .byte con_X + $1A   ; 

- D 0 - I - 0x03079E 0C:878E: 1C        .byte con_Y + $1C   ; 
- D 0 - I - 0x03079F 0C:878F: 19        .byte con_T + $19   ; 
- D 0 - I - 0x0307A0 0C:8790: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0307A1 0C:8791: 22        .byte con_X + $22   ; 

- D 0 - I - 0x0307A2 0C:8792: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x0307A3 0C:8793: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x0307A4 0C:8794: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0307A5 0C:8795: 31        .byte con_X + $31   ; 

- D 0 - I - 0x0307A6 0C:8796: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x0307A7 0C:8797: 11        .byte con_T + $11   ; 
- D 0 - I - 0x0307A8 0C:8798: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0307A9 0C:8799: 39        .byte con_X + $39   ; 

- D 0 - I - 0x0307AA 0C:879A: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x0307AB 0C:879B: 09        .byte con_T + $09   ; 
- D 0 - I - 0x0307AC 0C:879C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0307AD 0C:879D: 2C        .byte con_X + $2C   ; 

- D 0 - I - 0x0307AE 0C:879E: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x0307AF 0C:879F: 0B        .byte con_T + $0B   ; 
- D 0 - I - 0x0307B0 0C:87A0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0307B1 0C:87A1: 34        .byte con_X + $34   ; 

- D 0 - I - 0x0307B2 0C:87A2: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x0307B3 0C:87A3: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x0307B4 0C:87A4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0307B5 0C:87A5: 3C        .byte con_X + $3C   ; 
@end:



_off010_87A6_35:
- D 0 - I - 0x0307B6 0C:87A6: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x0307B7 0C:87A7: 2F        .byte con_Y + $2F   ; 
- D 0 - I - 0x0307B8 0C:87A8: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x0307B9 0C:87A9: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0307BA 0C:87AA: 09        .byte con_X + $09   ; 

- D 0 - I - 0x0307BB 0C:87AB: 2F        .byte con_Y + $2F   ; 
- D 0 - I - 0x0307BC 0C:87AC: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x0307BD 0C:87AD: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0307BE 0C:87AE: 11        .byte con_X + $11   ; 

- D 0 - I - 0x0307BF 0C:87AF: 1C        .byte con_Y + $1C   ; 
- D 0 - I - 0x0307C0 0C:87B0: 17        .byte con_T + $17   ; 
- D 0 - I - 0x0307C1 0C:87B1: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0307C2 0C:87B2: 1A        .byte con_X + $1A   ; 

- D 0 - I - 0x0307C3 0C:87B3: 1C        .byte con_Y + $1C   ; 
- D 0 - I - 0x0307C4 0C:87B4: 19        .byte con_T + $19   ; 
- D 0 - I - 0x0307C5 0C:87B5: 02        .byte con_A + $02   ; 
- D 0 - I - 0x0307C6 0C:87B6: 22        .byte con_X + $22   ; 

- D 0 - I - 0x0307C7 0C:87B7: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x0307C8 0C:87B8: 03        .byte con_T + $03   ; 
- D 0 - I - 0x0307C9 0C:87B9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0307CA 0C:87BA: 2C        .byte con_X + $2C   ; 

- D 0 - I - 0x0307CB 0C:87BB: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x0307CC 0C:87BC: 05        .byte con_T + $05   ; 
- D 0 - I - 0x0307CD 0C:87BD: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0307CE 0C:87BE: 34        .byte con_X + $34   ; 

- D 0 - I - 0x0307CF 0C:87BF: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x0307D0 0C:87C0: 07        .byte con_T + $07   ; 
- D 0 - I - 0x0307D1 0C:87C1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0307D2 0C:87C2: 3C        .byte con_X + $3C   ; 

- D 0 - I - 0x0307D3 0C:87C3: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x0307D4 0C:87C4: 13        .byte con_T + $13   ; 
- D 0 - I - 0x0307D5 0C:87C5: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0307D6 0C:87C6: 31        .byte con_X + $31   ; 

- D 0 - I - 0x0307D7 0C:87C7: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x0307D8 0C:87C8: 15        .byte con_T + $15   ; 
- D 0 - I - 0x0307D9 0C:87C9: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0307DA 0C:87CA: 39        .byte con_X + $39   ; 
@end:



_off010_87CB_36:
- D 0 - I - 0x0307DB 0C:87CB: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x0307DC 0C:87CC: 1D        .byte con_Y + $1D   ; 
- D 0 - I - 0x0307DD 0C:87CD: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x0307DE 0C:87CE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0307DF 0C:87CF: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0307E0 0C:87D0: 2D        .byte con_Y + $2D   ; 
- D 0 - I - 0x0307E1 0C:87D1: 51        .byte con_T + $51   ; 
- D 0 - I - 0x0307E2 0C:87D2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0307E3 0C:87D3: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0307E4 0C:87D4: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x0307E5 0C:87D5: 53        .byte con_T + $53   ; 
- D 0 - I - 0x0307E6 0C:87D6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0307E7 0C:87D7: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0307E8 0C:87D8: 28        .byte con_Y + $28   ; 
- D 0 - I - 0x0307E9 0C:87D9: 55        .byte con_T + $55   ; 
- D 0 - I - 0x0307EA 0C:87DA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0307EB 0C:87DB: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0307EC 0C:87DC: 1B        .byte con_Y + $1B   ; 
- D 0 - I - 0x0307ED 0C:87DD: 57        .byte con_T + $57   ; 
- D 0 - I - 0x0307EE 0C:87DE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0307EF 0C:87DF: 10        .byte con_X + $10   ; 

- D 0 - I - 0x0307F0 0C:87E0: 20        .byte con_Y + $20   ; 
- D 0 - I - 0x0307F1 0C:87E1: 5D        .byte con_T + $5D   ; 
- D 0 - I - 0x0307F2 0C:87E2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0307F3 0C:87E3: 18        .byte con_X + $18   ; 

- D 0 - I - 0x0307F4 0C:87E4: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x0307F5 0C:87E5: 5F        .byte con_T + $5F   ; 
- D 0 - I - 0x0307F6 0C:87E6: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0307F7 0C:87E7: 20        .byte con_X + $20   ; 

- D 0 - I - 0x0307F8 0C:87E8: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x0307F9 0C:87E9: 61        .byte con_T + $61   ; 
- D 0 - I - 0x0307FA 0C:87EA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0307FB 0C:87EB: 30        .byte con_X + $30   ; 

- D 0 - I - 0x0307FC 0C:87EC: 31        .byte con_Y + $31   ; 
- D 0 - I - 0x0307FD 0C:87ED: 59        .byte con_T + $59   ; 
- D 0 - I - 0x0307FE 0C:87EE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0307FF 0C:87EF: 1B        .byte con_X + $1B   ; 

- D 0 - I - 0x030800 0C:87F0: 31        .byte con_Y + $31   ; 
- D 0 - I - 0x030801 0C:87F1: 5B        .byte con_T + $5B   ; 
- D 0 - I - 0x030802 0C:87F2: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030803 0C:87F3: 23        .byte con_X + $23   ; 
@end:



_off010_87F4_37:
- D 0 - I - 0x030804 0C:87F4: 09        .byte (@end - * - 1) / 4

- D 0 - I - 0x030805 0C:87F5: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x030806 0C:87F6: 65        .byte con_T + $65   ; 
- D 0 - I - 0x030807 0C:87F7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030808 0C:87F8: 20        .byte con_X + $20   ; 

- D 0 - I - 0x030809 0C:87F9: 21        .byte con_Y + $21   ; 
- D 0 - I - 0x03080A 0C:87FA: 63        .byte con_T + $63   ; 
- D 0 - I - 0x03080B 0C:87FB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03080C 0C:87FC: 21        .byte con_X + $21   ; 

- D 0 - I - 0x03080D 0C:87FD: 1D        .byte con_Y + $1D   ; 
- D 0 - I - 0x03080E 0C:87FE: 4F        .byte con_T + $4F   ; 
- D 0 - I - 0x03080F 0C:87FF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030810 0C:8800: 00        .byte con_X + $00   ; 

- D 0 - I - 0x030811 0C:8801: 2D        .byte con_Y + $2D   ; 
- D 0 - I - 0x030812 0C:8802: 51        .byte con_T + $51   ; 
- D 0 - I - 0x030813 0C:8803: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030814 0C:8804: 00        .byte con_X + $00   ; 

- D 0 - I - 0x030815 0C:8805: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x030816 0C:8806: 53        .byte con_T + $53   ; 
- D 0 - I - 0x030817 0C:8807: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030818 0C:8808: 08        .byte con_X + $08   ; 

- D 0 - I - 0x030819 0C:8809: 28        .byte con_Y + $28   ; 
- D 0 - I - 0x03081A 0C:880A: 55        .byte con_T + $55   ; 
- D 0 - I - 0x03081B 0C:880B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03081C 0C:880C: 08        .byte con_X + $08   ; 

- D 0 - I - 0x03081D 0C:880D: 1B        .byte con_Y + $1B   ; 
- D 0 - I - 0x03081E 0C:880E: 57        .byte con_T + $57   ; 
- D 0 - I - 0x03081F 0C:880F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030820 0C:8810: 10        .byte con_X + $10   ; 

- D 0 - I - 0x030821 0C:8811: 31        .byte con_Y + $31   ; 
- D 0 - I - 0x030822 0C:8812: 59        .byte con_T + $59   ; 
- D 0 - I - 0x030823 0C:8813: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030824 0C:8814: 1B        .byte con_X + $1B   ; 

- D 0 - I - 0x030825 0C:8815: 31        .byte con_Y + $31   ; 
- D 0 - I - 0x030826 0C:8816: 5B        .byte con_T + $5B   ; 
- D 0 - I - 0x030827 0C:8817: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030828 0C:8818: 23        .byte con_X + $23   ; 
@end:



_off010_8819_38:
- D 0 - I - 0x030829 0C:8819: 07        .byte (@end - * - 1) / 4

- D 0 - I - 0x03082A 0C:881A: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x03082B 0C:881B: 29        .byte con_T + $29   ; 
- D 0 - I - 0x03082C 0C:881C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03082D 0C:881D: 10        .byte con_X + $10   ; 

- D 0 - I - 0x03082E 0C:881E: 0B        .byte con_Y + $0B   ; 
- D 0 - I - 0x03082F 0C:881F: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x030830 0C:8820: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030831 0C:8821: 18        .byte con_X + $18   ; 

- D 0 - I - 0x030832 0C:8822: 04        .byte con_Y + $04   ; 
- D 0 - I - 0x030833 0C:8823: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x030834 0C:8824: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030835 0C:8825: 20        .byte con_X + $20   ; 

- D 0 - I - 0x030836 0C:8826: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x030837 0C:8827: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x030838 0C:8828: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030839 0C:8829: 10        .byte con_X + $10   ; 

- D 0 - I - 0x03083A 0C:882A: 1B        .byte con_Y + $1B   ; 
- D 0 - I - 0x03083B 0C:882B: 31        .byte con_T + $31   ; 
- D 0 - I - 0x03083C 0C:882C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03083D 0C:882D: 18        .byte con_X + $18   ; 

- D 0 - I - 0x03083E 0C:882E: 14        .byte con_Y + $14   ; 
- D 0 - I - 0x03083F 0C:882F: 33        .byte con_T + $33   ; 
- D 0 - I - 0x030840 0C:8830: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030841 0C:8831: 20        .byte con_X + $20   ; 

- D 0 - I - 0x030842 0C:8832: 24        .byte con_Y + $24   ; 
- D 0 - I - 0x030843 0C:8833: 35        .byte con_T + $35   ; 
- D 0 - I - 0x030844 0C:8834: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030845 0C:8835: 20        .byte con_X + $20   ; 
@end:



_off010_8836_39:
- D 0 - I - 0x030846 0C:8836: 07        .byte (@end - * - 1) / 4

- D 0 - I - 0x030847 0C:8837: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x030848 0C:8838: 37        .byte con_T + $37   ; 
- D 0 - I - 0x030849 0C:8839: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03084A 0C:883A: 10        .byte con_X + $10   ; 

- D 0 - I - 0x03084B 0C:883B: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x03084C 0C:883C: 39        .byte con_T + $39   ; 
- D 0 - I - 0x03084D 0C:883D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03084E 0C:883E: 18        .byte con_X + $18   ; 

- D 0 - I - 0x03084F 0C:883F: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x030850 0C:8840: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x030851 0C:8841: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030852 0C:8842: 10        .byte con_X + $10   ; 

- D 0 - I - 0x030853 0C:8843: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x030854 0C:8844: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x030855 0C:8845: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030856 0C:8846: 18        .byte con_X + $18   ; 

- D 0 - I - 0x030857 0C:8847: 04        .byte con_Y + $04   ; 
- D 0 - I - 0x030858 0C:8848: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x030859 0C:8849: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03085A 0C:884A: 20        .byte con_X + $20   ; 

- D 0 - I - 0x03085B 0C:884B: 14        .byte con_Y + $14   ; 
- D 0 - I - 0x03085C 0C:884C: 3F        .byte con_T + $3F   ; 
- D 0 - I - 0x03085D 0C:884D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03085E 0C:884E: 20        .byte con_X + $20   ; 

- D 0 - I - 0x03085F 0C:884F: 24        .byte con_Y + $24   ; 
- D 0 - I - 0x030860 0C:8850: 35        .byte con_T + $35   ; 
- D 0 - I - 0x030861 0C:8851: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030862 0C:8852: 20        .byte con_X + $20   ; 
@end:



_off010_8853_3A:
- D 0 - I - 0x030863 0C:8853: 11        .byte (@end - * - 1) / 4

- D 0 - I - 0x030864 0C:8854: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030865 0C:8855: 0D        .byte con_T + $0D   ; 
- D 0 - I - 0x030866 0C:8856: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030867 0C:8857: 18        .byte con_X + $18   ; 

- D 0 - I - 0x030868 0C:8858: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030869 0C:8859: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x03086A 0C:885A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03086B 0C:885B: 20        .byte con_X + $20   ; 

- D 0 - I - 0x03086C 0C:885C: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x03086D 0C:885D: 11        .byte con_T + $11   ; 
- D 0 - I - 0x03086E 0C:885E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03086F 0C:885F: 28        .byte con_X + $28   ; 

- D 0 - I - 0x030870 0C:8860: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030871 0C:8861: 13        .byte con_T + $13   ; 
- D 0 - I - 0x030872 0C:8862: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030873 0C:8863: 30        .byte con_X + $30   ; 

- D 0 - I - 0x030874 0C:8864: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030875 0C:8865: 15        .byte con_T + $15   ; 
- D 0 - I - 0x030876 0C:8866: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030877 0C:8867: 38        .byte con_X + $38   ; 

- D 0 - I - 0x030878 0C:8868: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x030879 0C:8869: 17        .byte con_T + $17   ; 
- D 0 - I - 0x03087A 0C:886A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03087B 0C:886B: 10        .byte con_X + $10   ; 

- D 0 - I - 0x03087C 0C:886C: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x03087D 0C:886D: 19        .byte con_T + $19   ; 
- D 0 - I - 0x03087E 0C:886E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03087F 0C:886F: 18        .byte con_X + $18   ; 

- D 0 - I - 0x030880 0C:8870: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x030881 0C:8871: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x030882 0C:8872: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030883 0C:8873: 20        .byte con_X + $20   ; 

- D 0 - I - 0x030884 0C:8874: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x030885 0C:8875: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x030886 0C:8876: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030887 0C:8877: 28        .byte con_X + $28   ; 

- D 0 - I - 0x030888 0C:8878: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x030889 0C:8879: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x03088A 0C:887A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03088B 0C:887B: 30        .byte con_X + $30   ; 

- D 0 - I - 0x03088C 0C:887C: 20        .byte con_Y + $20   ; 
- D 0 - I - 0x03088D 0C:887D: 21        .byte con_T + $21   ; 
- D 0 - I - 0x03088E 0C:887E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03088F 0C:887F: 31        .byte con_X + $31   ; 

- D 0 - I - 0x030890 0C:8880: 20        .byte con_Y + $20   ; 
- D 0 - I - 0x030891 0C:8881: 23        .byte con_T + $23   ; 
- D 0 - I - 0x030892 0C:8882: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030893 0C:8883: 39        .byte con_X + $39   ; 

- D 0 - I - 0x030894 0C:8884: 30        .byte con_Y + $30   ; 
- D 0 - I - 0x030895 0C:8885: 25        .byte con_T + $25   ; 
- D 0 - I - 0x030896 0C:8886: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030897 0C:8887: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x030898 0C:8888: 36        .byte con_Y + $36   ; 
- D 0 - I - 0x030899 0C:8889: 27        .byte con_T + $27   ; 
- D 0 - I - 0x03089A 0C:888A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03089B 0C:888B: 1E        .byte con_X + $1E   ; 

- D 0 - I - 0x03089C 0C:888C: 36        .byte con_Y + $36   ; 
- D 0 - I - 0x03089D 0C:888D: 29        .byte con_T + $29   ; 
- D 0 - I - 0x03089E 0C:888E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03089F 0C:888F: 26        .byte con_X + $26   ; 

- D 0 - I - 0x0308A0 0C:8890: 36        .byte con_Y + $36   ; 
- D 0 - I - 0x0308A1 0C:8891: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x0308A2 0C:8892: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308A3 0C:8893: 2E        .byte con_X + $2E   ; 

- D 0 - I - 0x0308A4 0C:8894: 30        .byte con_Y + $30   ; 
- D 0 - I - 0x0308A5 0C:8895: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x0308A6 0C:8896: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308A7 0C:8897: 36        .byte con_X + $36   ; 
@end:



_off010_8898_3B:
- D 0 - I - 0x0308A8 0C:8898: 10        .byte (@end - * - 1) / 4

- D 0 - I - 0x0308A9 0C:8899: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x0308AA 0C:889A: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x0308AB 0C:889B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308AC 0C:889C: 10        .byte con_X + $10   ; 

- D 0 - I - 0x0308AD 0C:889D: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x0308AE 0C:889E: 31        .byte con_T + $31   ; 
- D 0 - I - 0x0308AF 0C:889F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308B0 0C:88A0: 18        .byte con_X + $18   ; 

- D 0 - I - 0x0308B1 0C:88A1: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0308B2 0C:88A2: 0F        .byte con_T + $0F   ; 
- D 0 - I - 0x0308B3 0C:88A3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308B4 0C:88A4: 20        .byte con_X + $20   ; 

- D 0 - I - 0x0308B5 0C:88A5: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0308B6 0C:88A6: 11        .byte con_T + $11   ; 
- D 0 - I - 0x0308B7 0C:88A7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308B8 0C:88A8: 28        .byte con_X + $28   ; 

- D 0 - I - 0x0308B9 0C:88A9: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0308BA 0C:88AA: 13        .byte con_T + $13   ; 
- D 0 - I - 0x0308BB 0C:88AB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308BC 0C:88AC: 30        .byte con_X + $30   ; 

- D 0 - I - 0x0308BD 0C:88AD: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0308BE 0C:88AE: 15        .byte con_T + $15   ; 
- D 0 - I - 0x0308BF 0C:88AF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308C0 0C:88B0: 38        .byte con_X + $38   ; 

- D 0 - I - 0x0308C1 0C:88B1: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x0308C2 0C:88B2: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x0308C3 0C:88B3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308C4 0C:88B4: 28        .byte con_X + $28   ; 

- D 0 - I - 0x0308C5 0C:88B5: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x0308C6 0C:88B6: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x0308C7 0C:88B7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308C8 0C:88B8: 30        .byte con_X + $30   ; 

- D 0 - I - 0x0308C9 0C:88B9: 20        .byte con_Y + $20   ; 
- D 0 - I - 0x0308CA 0C:88BA: 21        .byte con_T + $21   ; 
- D 0 - I - 0x0308CB 0C:88BB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308CC 0C:88BC: 31        .byte con_X + $31   ; 

- D 0 - I - 0x0308CD 0C:88BD: 20        .byte con_Y + $20   ; 
- D 0 - I - 0x0308CE 0C:88BE: 23        .byte con_T + $23   ; 
- D 0 - I - 0x0308CF 0C:88BF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308D0 0C:88C0: 39        .byte con_X + $39   ; 

- D 0 - I - 0x0308D1 0C:88C1: 30        .byte con_Y + $30   ; 
- D 0 - I - 0x0308D2 0C:88C2: 25        .byte con_T + $25   ; 
- D 0 - I - 0x0308D3 0C:88C3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308D4 0C:88C4: 0A        .byte con_X + $0A   ; 

- D 0 - I - 0x0308D5 0C:88C5: 36        .byte con_Y + $36   ; 
- D 0 - I - 0x0308D6 0C:88C6: 27        .byte con_T + $27   ; 
- D 0 - I - 0x0308D7 0C:88C7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308D8 0C:88C8: 1E        .byte con_X + $1E   ; 

- D 0 - I - 0x0308D9 0C:88C9: 36        .byte con_Y + $36   ; 
- D 0 - I - 0x0308DA 0C:88CA: 29        .byte con_T + $29   ; 
- D 0 - I - 0x0308DB 0C:88CB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308DC 0C:88CC: 26        .byte con_X + $26   ; 

- D 0 - I - 0x0308DD 0C:88CD: 36        .byte con_Y + $36   ; 
- D 0 - I - 0x0308DE 0C:88CE: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x0308DF 0C:88CF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308E0 0C:88D0: 2E        .byte con_X + $2E   ; 

- D 0 - I - 0x0308E1 0C:88D1: 30        .byte con_Y + $30   ; 
- D 0 - I - 0x0308E2 0C:88D2: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x0308E3 0C:88D3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308E4 0C:88D4: 36        .byte con_X + $36   ; 

- D 0 - I - 0x0308E5 0C:88D5: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x0308E6 0C:88D6: 33        .byte con_T + $33   ; 
- D 0 - I - 0x0308E7 0C:88D7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308E8 0C:88D8: 20        .byte con_X + $20   ; 
@end:



_off010_88D9_3C:
- D 0 - I - 0x0308E9 0C:88D9: 0D        .byte (@end - * - 1) / 4

- D 0 - I - 0x0308EA 0C:88DA: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x0308EB 0C:88DB: 31        .byte con_T + $31   ; 
- D 0 - I - 0x0308EC 0C:88DC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308ED 0C:88DD: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0308EE 0C:88DE: 20        .byte con_Y + $20   ; 
- D 0 - I - 0x0308EF 0C:88DF: 35        .byte con_T + $35   ; 
- D 0 - I - 0x0308F0 0C:88E0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308F1 0C:88E1: 00        .byte con_X + $00   ; 

- D 0 - I - 0x0308F2 0C:88E2: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x0308F3 0C:88E3: 33        .byte con_T + $33   ; 
- D 0 - I - 0x0308F4 0C:88E4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308F5 0C:88E5: 08        .byte con_X + $08   ; 

- D 0 - I - 0x0308F6 0C:88E6: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x0308F7 0C:88E7: 47        .byte con_T + $47   ; 
- D 0 - I - 0x0308F8 0C:88E8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308F9 0C:88E9: 14        .byte con_X + $14   ; 

- D 0 - I - 0x0308FA 0C:88EA: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x0308FB 0C:88EB: 49        .byte con_T + $49   ; 
- D 0 - I - 0x0308FC 0C:88EC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0308FD 0C:88ED: 1C        .byte con_X + $1C   ; 

- D 0 - I - 0x0308FE 0C:88EE: 30        .byte con_Y + $30   ; 
- D 0 - I - 0x0308FF 0C:88EF: 37        .byte con_T + $37   ; 
- D 0 - I - 0x030900 0C:88F0: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030901 0C:88F1: 04        .byte con_X + $04   ; 

- D 0 - I - 0x030902 0C:88F2: 30        .byte con_Y + $30   ; 
- D 0 - I - 0x030903 0C:88F3: 39        .byte con_T + $39   ; 
- D 0 - I - 0x030904 0C:88F4: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030905 0C:88F5: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x030906 0C:88F6: 30        .byte con_Y + $30   ; 
- D 0 - I - 0x030907 0C:88F7: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x030908 0C:88F8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030909 0C:88F9: 14        .byte con_X + $14   ; 

- D 0 - I - 0x03090A 0C:88FA: 2E        .byte con_Y + $2E   ; 
- D 0 - I - 0x03090B 0C:88FB: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x03090C 0C:88FC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03090D 0C:88FD: 1C        .byte con_X + $1C   ; 

- D 0 - I - 0x03090E 0C:88FE: 20        .byte con_Y + $20   ; 
- D 0 - I - 0x03090F 0C:88FF: 3F        .byte con_T + $3F   ; 
- D 0 - I - 0x030910 0C:8900: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030911 0C:8901: 24        .byte con_X + $24   ; 

- D 0 - I - 0x030912 0C:8902: 30        .byte con_Y + $30   ; 
- D 0 - I - 0x030913 0C:8903: 41        .byte con_T + $41   ; 
- D 0 - I - 0x030914 0C:8904: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030915 0C:8905: 24        .byte con_X + $24   ; 

- D 0 - I - 0x030916 0C:8906: 2A        .byte con_Y + $2A   ; 
- D 0 - I - 0x030917 0C:8907: 43        .byte con_T + $43   ; 
- D 0 - I - 0x030918 0C:8908: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030919 0C:8909: 2C        .byte con_X + $2C   ; 

- D 0 - I - 0x03091A 0C:890A: 30        .byte con_Y + $30   ; 
- D 0 - I - 0x03091B 0C:890B: 45        .byte con_T + $45   ; 
- D 0 - I - 0x03091C 0C:890C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03091D 0C:890D: 38        .byte con_X + $38   ; 
@end:



_off010_890E_3D:
- D 0 - I - 0x03091E 0C:890E: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x03091F 0C:890F: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x030920 0C:8910: 4B        .byte con_T + $4B   ; 
- D 0 - I - 0x030921 0C:8911: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030922 0C:8912: 13        .byte con_X + $13   ; 

- D 0 - I - 0x030923 0C:8913: 10        .byte con_Y + $10   ; 
- D 0 - I - 0x030924 0C:8914: 4D        .byte con_T + $4D   ; 
- D 0 - I - 0x030925 0C:8915: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030926 0C:8916: 1B        .byte con_X + $1B   ; 

- D 0 - I - 0x030927 0C:8917: 30        .byte con_Y + $30   ; 
- D 0 - I - 0x030928 0C:8918: 37        .byte con_T + $37   ; 
- D 0 - I - 0x030929 0C:8919: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03092A 0C:891A: 04        .byte con_X + $04   ; 

- D 0 - I - 0x03092B 0C:891B: 30        .byte con_Y + $30   ; 
- D 0 - I - 0x03092C 0C:891C: 39        .byte con_T + $39   ; 
- D 0 - I - 0x03092D 0C:891D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03092E 0C:891E: 0C        .byte con_X + $0C   ; 

- D 0 - I - 0x03092F 0C:891F: 30        .byte con_Y + $30   ; 
- D 0 - I - 0x030930 0C:8920: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x030931 0C:8921: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030932 0C:8922: 14        .byte con_X + $14   ; 

- D 0 - I - 0x030933 0C:8923: 2E        .byte con_Y + $2E   ; 
- D 0 - I - 0x030934 0C:8924: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x030935 0C:8925: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030936 0C:8926: 1C        .byte con_X + $1C   ; 

- D 0 - I - 0x030937 0C:8927: 20        .byte con_Y + $20   ; 
- D 0 - I - 0x030938 0C:8928: 3F        .byte con_T + $3F   ; 
- D 0 - I - 0x030939 0C:8929: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03093A 0C:892A: 24        .byte con_X + $24   ; 

- D 0 - I - 0x03093B 0C:892B: 30        .byte con_Y + $30   ; 
- D 0 - I - 0x03093C 0C:892C: 41        .byte con_T + $41   ; 
- D 0 - I - 0x03093D 0C:892D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03093E 0C:892E: 24        .byte con_X + $24   ; 

- D 0 - I - 0x03093F 0C:892F: 2A        .byte con_Y + $2A   ; 
- D 0 - I - 0x030940 0C:8930: 43        .byte con_T + $43   ; 
- D 0 - I - 0x030941 0C:8931: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030942 0C:8932: 2C        .byte con_X + $2C   ; 

- D 0 - I - 0x030943 0C:8933: 30        .byte con_Y + $30   ; 
- D 0 - I - 0x030944 0C:8934: 45        .byte con_T + $45   ; 
- D 0 - I - 0x030945 0C:8935: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030946 0C:8936: 38        .byte con_X + $38   ; 
@end:



_off010_8937_3E:
- - - - - - 0x030947 0C:8937: 05        .byte (@end - * - 1) / 4

- - - - - - 0x030948 0C:8938: 00        .byte con_Y + $00   ; 
- - - - - - 0x030949 0C:8939: 21        .byte con_T + $21   ; 
- - - - - - 0x03094A 0C:893A: 00        .byte con_A + $00   ; 
- - - - - - 0x03094B 0C:893B: 00        .byte con_X + $00   ; 

- - - - - - 0x03094C 0C:893C: 00        .byte con_Y + $00   ; 
- - - - - - 0x03094D 0C:893D: 23        .byte con_T + $23   ; 
- - - - - - 0x03094E 0C:893E: 00        .byte con_A + $00   ; 
- - - - - - 0x03094F 0C:893F: 08        .byte con_X + $08   ; 

- - - - - - 0x030950 0C:8940: 00        .byte con_Y + $00   ; 
- - - - - - 0x030951 0C:8941: 25        .byte con_T + $25   ; 
- - - - - - 0x030952 0C:8942: 00        .byte con_A + $00   ; 
- - - - - - 0x030953 0C:8943: 10        .byte con_X + $10   ; 

- - - - - - 0x030954 0C:8944: 00        .byte con_Y + $00   ; 
- - - - - - 0x030955 0C:8945: 27        .byte con_T + $27   ; 
- - - - - - 0x030956 0C:8946: 00        .byte con_A + $00   ; 
- - - - - - 0x030957 0C:8947: 18        .byte con_X + $18   ; 

- - - - - - 0x030958 0C:8948: 00        .byte con_Y + $00   ; 
- - - - - - 0x030959 0C:8949: 29        .byte con_T + $29   ; 
- - - - - - 0x03095A 0C:894A: 00        .byte con_A + $00   ; 
- - - - - - 0x03095B 0C:894B: 20        .byte con_X + $20   ; 
@end:



_off010_894C_40:
- - - - - - 0x03095C 0C:894C: 02        .byte (@end - * - 1) / 4

- - - - - - 0x03095D 0C:894D: 00        .byte con_Y + $00   ; 
- - - - - - 0x03095E 0C:894E: 2D        .byte con_T + $2D   ; 
- - - - - - 0x03095F 0C:894F: 00        .byte con_A + $00   ; 
- - - - - - 0x030960 0C:8950: 00        .byte con_X + $00   ; 

- - - - - - 0x030961 0C:8951: 00        .byte con_Y + $00   ; 
- - - - - - 0x030962 0C:8952: 2F        .byte con_T + $2F   ; 
- - - - - - 0x030963 0C:8953: 00        .byte con_A + $00   ; 
- - - - - - 0x030964 0C:8954: 08        .byte con_X + $08   ; 
@end:



_off010_8955_41:
- - - - - - 0x030965 0C:8955: 02        .byte (@end - * - 1) / 4

- - - - - - 0x030966 0C:8956: 00        .byte con_Y + $00   ; 
- - - - - - 0x030967 0C:8957: 31        .byte con_T + $31   ; 
- - - - - - 0x030968 0C:8958: 00        .byte con_A + $00   ; 
- - - - - - 0x030969 0C:8959: 00        .byte con_X + $00   ; 

- - - - - - 0x03096A 0C:895A: 00        .byte con_Y + $00   ; 
- - - - - - 0x03096B 0C:895B: 31        .byte con_T + $31   ; 
- - - - - - 0x03096C 0C:895C: 00        .byte con_A + $00   ; 
- - - - - - 0x03096D 0C:895D: 08        .byte con_X + $08   ; 
@end:



_off010_895E_43:
- D 0 - I - 0x03096E 0C:895E: 04        .byte (@end - * - 1) / 4

- D 0 - I - 0x03096F 0C:895F: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030970 0C:8960: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x030971 0C:8961: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030972 0C:8962: 00        .byte con_X + $00   ; 

- D 0 - I - 0x030973 0C:8963: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030974 0C:8964: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x030975 0C:8965: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030976 0C:8966: 08        .byte con_X + $08   ; 

- D 0 - I - 0x030977 0C:8967: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030978 0C:8968: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x030979 0C:8969: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03097A 0C:896A: 10        .byte con_X + $10   ; 

- D 0 - I - 0x03097B 0C:896B: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x03097C 0C:896C: 31        .byte con_T + $31   ; 
- D 0 - I - 0x03097D 0C:896D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03097E 0C:896E: 18        .byte con_X + $18   ; 
@end:



_off010_896F_3F:
- - - - - - 0x03097F 0C:896F: 02        .byte (@end - * - 1) / 4

- - - - - - 0x030980 0C:8970: 00        .byte con_Y + $00   ; 
- - - - - - 0x030981 0C:8971: 33        .byte con_T + $33   ; 
- - - - - - 0x030982 0C:8972: 00        .byte con_A + $00   ; 
- - - - - - 0x030983 0C:8973: 00        .byte con_X + $00   ; 

- - - - - - 0x030984 0C:8974: 00        .byte con_Y + $00   ; 
- - - - - - 0x030985 0C:8975: 35        .byte con_T + $35   ; 
- - - - - - 0x030986 0C:8976: 00        .byte con_A + $00   ; 
- - - - - - 0x030987 0C:8977: 08        .byte con_X + $08   ; 
@end:



_off010_8978_42:
- - - - - - 0x030988 0C:8978: 02        .byte (@end - * - 1) / 4

- - - - - - 0x030989 0C:8979: 00        .byte con_Y + $00   ; 
- - - - - - 0x03098A 0C:897A: 37        .byte con_T + $37   ; 
- - - - - - 0x03098B 0C:897B: 00        .byte con_A + $00   ; 
- - - - - - 0x03098C 0C:897C: 00        .byte con_X + $00   ; 

- - - - - - 0x03098D 0C:897D: 00        .byte con_Y + $00   ; 
- - - - - - 0x03098E 0C:897E: 39        .byte con_T + $39   ; 
- - - - - - 0x03098F 0C:897F: 00        .byte con_A + $00   ; 
- - - - - - 0x030990 0C:8980: 08        .byte con_X + $08   ; 
@end:



_off010_8981_44:
- D 0 - I - 0x030991 0C:8981: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x030992 0C:8982: F7        .byte con_Y + $F7   ; 
- D 0 - I - 0x030993 0C:8983: 21        .byte con_T + $21   ; 
- D 0 - I - 0x030994 0C:8984: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030995 0C:8985: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x030996 0C:8986: F7        .byte con_Y + $F7   ; 
- D 0 - I - 0x030997 0C:8987: 23        .byte con_T + $23   ; 
- D 0 - I - 0x030998 0C:8988: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030999 0C:8989: 00        .byte con_X + $00   ; 
@end:



_off010_898A_45:
- D 0 - I - 0x03099A 0C:898A: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x03099B 0C:898B: F6        .byte con_Y + $F6   ; 
- D 0 - I - 0x03099C 0C:898C: 21        .byte con_T + $21   ; 
- D 0 - I - 0x03099D 0C:898D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x03099E 0C:898E: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x03099F 0C:898F: F6        .byte con_Y + $F6   ; 
- D 0 - I - 0x0309A0 0C:8990: 23        .byte con_T + $23   ; 
- D 0 - I - 0x0309A1 0C:8991: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0309A2 0C:8992: 00        .byte con_X + $00   ; 
@end:



_off010_8993_47:
- D 0 - I - 0x0309A3 0C:8993: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x0309A4 0C:8994: F6        .byte con_Y + $F6   ; 
- D 0 - I - 0x0309A5 0C:8995: 25        .byte con_T + $25   ; 
- D 0 - I - 0x0309A6 0C:8996: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0309A7 0C:8997: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x0309A8 0C:8998: F6        .byte con_Y + $F6   ; 
- D 0 - I - 0x0309A9 0C:8999: 27        .byte con_T + $27   ; 
- D 0 - I - 0x0309AA 0C:899A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0309AB 0C:899B: 01        .byte con_X + $01   ; 
@end:



_off010_899C_46:
- D 0 - I - 0x0309AC 0C:899C: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x0309AD 0C:899D: F7        .byte con_Y + $F7   ; 
- D 0 - I - 0x0309AE 0C:899E: 25        .byte con_T + $25   ; 
- D 0 - I - 0x0309AF 0C:899F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0309B0 0C:89A0: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x0309B1 0C:89A1: F7        .byte con_Y + $F7   ; 
- D 0 - I - 0x0309B2 0C:89A2: 27        .byte con_T + $27   ; 
- D 0 - I - 0x0309B3 0C:89A3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0309B4 0C:89A4: 01        .byte con_X + $01   ; 
@end:



_off010_89A5_48:
- D 0 - I - 0x0309B5 0C:89A5: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x0309B6 0C:89A6: F7        .byte con_Y + $F7   ; 
- D 0 - I - 0x0309B7 0C:89A7: 29        .byte con_T + $29   ; 
- D 0 - I - 0x0309B8 0C:89A8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0309B9 0C:89A9: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0309BA 0C:89AA: F7        .byte con_Y + $F7   ; 
- D 0 - I - 0x0309BB 0C:89AB: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x0309BC 0C:89AC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0309BD 0C:89AD: 00        .byte con_X + $00   ; 
@end:



_off010_89AE_49:
- D 0 - I - 0x0309BE 0C:89AE: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x0309BF 0C:89AF: F6        .byte con_Y + $F6   ; 
- D 0 - I - 0x0309C0 0C:89B0: 29        .byte con_T + $29   ; 
- D 0 - I - 0x0309C1 0C:89B1: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0309C2 0C:89B2: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0309C3 0C:89B3: F6        .byte con_Y + $F6   ; 
- D 0 - I - 0x0309C4 0C:89B4: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x0309C5 0C:89B5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0309C6 0C:89B6: 00        .byte con_X + $00   ; 
@end:



_off010_89B7_4B:
- D 0 - I - 0x0309C7 0C:89B7: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x0309C8 0C:89B8: F5        .byte con_Y + $F5   ; 
- D 0 - I - 0x0309C9 0C:89B9: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x0309CA 0C:89BA: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0309CB 0C:89BB: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0309CC 0C:89BC: F5        .byte con_Y + $F5   ; 
- D 0 - I - 0x0309CD 0C:89BD: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x0309CE 0C:89BE: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0309CF 0C:89BF: 00        .byte con_X + $00   ; 
@end:



_off010_89C0_4A:
- D 0 - I - 0x0309D0 0C:89C0: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x0309D1 0C:89C1: F6        .byte con_Y + $F6   ; 
- D 0 - I - 0x0309D2 0C:89C2: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x0309D3 0C:89C3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0309D4 0C:89C4: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0309D5 0C:89C5: F6        .byte con_Y + $F6   ; 
- D 0 - I - 0x0309D6 0C:89C6: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x0309D7 0C:89C7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0309D8 0C:89C8: 00        .byte con_X + $00   ; 
@end:



_off010_89C9_4C:
- D 0 - I - 0x0309D9 0C:89C9: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x0309DA 0C:89CA: F7        .byte con_Y + $F7   ; 
- D 0 - I - 0x0309DB 0C:89CB: 31        .byte con_T + $31   ; 
- D 0 - I - 0x0309DC 0C:89CC: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0309DD 0C:89CD: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x0309DE 0C:89CE: F7        .byte con_Y + $F7   ; 
- D 0 - I - 0x0309DF 0C:89CF: 33        .byte con_T + $33   ; 
- D 0 - I - 0x0309E0 0C:89D0: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0309E1 0C:89D1: 00        .byte con_X + $00   ; 
@end:



_off010_89D2_4D:
- D 0 - I - 0x0309E2 0C:89D2: 0E        .byte (@end - * - 1) / 4

- D 0 - I - 0x0309E3 0C:89D3: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0309E4 0C:89D4: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x0309E5 0C:89D5: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0309E6 0C:89D6: 18        .byte con_X + $18   ; 

- D 0 - I - 0x0309E7 0C:89D7: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x0309E8 0C:89D8: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x0309E9 0C:89D9: 00        .byte con_A + $00   ; 
- D 0 - I - 0x0309EA 0C:89DA: 20        .byte con_X + $20   ; 

- D 0 - I - 0x0309EB 0C:89DB: 3C        .byte con_Y + $3C   ; 
- D 0 - I - 0x0309EC 0C:89DC: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x0309ED 0C:89DD: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0309EE 0C:89DE: 46        .byte con_X + $46   ; 

- D 0 - I - 0x0309EF 0C:89DF: 41        .byte con_Y + $41   ; 
- D 0 - I - 0x0309F0 0C:89E0: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x0309F1 0C:89E1: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0309F2 0C:89E2: 3D        .byte con_X + $3D   ; 

- D 0 - I - 0x0309F3 0C:89E3: 46        .byte con_Y + $46   ; 
- D 0 - I - 0x0309F4 0C:89E4: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x0309F5 0C:89E5: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0309F6 0C:89E6: 34        .byte con_X + $34   ; 

- D 0 - I - 0x0309F7 0C:89E7: 3D        .byte con_Y + $3D   ; 
- D 0 - I - 0x0309F8 0C:89E8: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x0309F9 0C:89E9: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0309FA 0C:89EA: 2C        .byte con_X + $2C   ; 

- D 0 - I - 0x0309FB 0C:89EB: 4B        .byte con_Y + $4B   ; 
- D 0 - I - 0x0309FC 0C:89EC: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x0309FD 0C:89ED: 01        .byte con_A + $01   ; 
- D 0 - I - 0x0309FE 0C:89EE: 27        .byte con_X + $27   ; 

- D 0 - I - 0x0309FF 0C:89EF: 42        .byte con_Y + $42   ; 
- D 0 - I - 0x030A00 0C:89F0: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x030A01 0C:89F1: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030A02 0C:89F2: 1D        .byte con_X + $1D   ; 

- D 0 - I - 0x030A03 0C:89F3: 51        .byte con_Y + $51   ; 
- D 0 - I - 0x030A04 0C:89F4: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x030A05 0C:89F5: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030A06 0C:89F6: 18        .byte con_X + $18   ; 

- D 0 - I - 0x030A07 0C:89F7: 47        .byte con_Y + $47   ; 
- D 0 - I - 0x030A08 0C:89F8: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x030A09 0C:89F9: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030A0A 0C:89FA: 0F        .byte con_X + $0F   ; 

- D 0 - I - 0x030A0B 0C:89FB: 56        .byte con_Y + $56   ; 
- D 0 - I - 0x030A0C 0C:89FC: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x030A0D 0C:89FD: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030A0E 0C:89FE: 09        .byte con_X + $09   ; 

- D 0 - I - 0x030A0F 0C:89FF: 4C        .byte con_Y + $4C   ; 
- D 0 - I - 0x030A10 0C:8A00: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x030A11 0C:8A01: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030A12 0C:8A02: 01        .byte con_X + $01   ; 

- D 0 - I - 0x030A13 0C:8A03: 51        .byte con_Y + $51   ; 
- D 0 - I - 0x030A14 0C:8A04: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x030A15 0C:8A05: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030A16 0C:8A06: F2        .byte con_X + $F2   ; 

- D 0 - I - 0x030A17 0C:8A07: 56        .byte con_Y + $56   ; 
- D 0 - I - 0x030A18 0C:8A08: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x030A19 0C:8A09: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030A1A 0C:8A0A: E2        .byte con_X + $E2   ; 
@end:



_off010_8A0B_4E:
- D 0 - I - 0x030A1B 0C:8A0B: 0A        .byte (@end - * - 1) / 4

- D 0 - I - 0x030A1C 0C:8A0C: 1A        .byte con_Y + $1A   ; 
- D 0 - I - 0x030A1D 0C:8A0D: 19        .byte con_T + $19   ; 
- D 0 - I - 0x030A1E 0C:8A0E: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030A1F 0C:8A0F: D7        .byte con_X + $D7   ; 

- D 0 - I - 0x030A20 0C:8A10: 18        .byte con_Y + $18   ; 
- D 0 - I - 0x030A21 0C:8A11: 19        .byte con_T + $19   ; 
- D 0 - I - 0x030A22 0C:8A12: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030A23 0C:8A13: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x030A24 0C:8A14: 08        .byte con_Y + $08   ; 
- D 0 - I - 0x030A25 0C:8A15: 1B        .byte con_T + $1B   ; 
- D 0 - I - 0x030A26 0C:8A16: 01        .byte con_A + $01   ; 
- D 0 - I - 0x030A27 0C:8A17: 18        .byte con_X + $18   ; 

- D 0 - I - 0x030A28 0C:8A18: 40        .byte con_Y + $40   ; 
- D 0 - I - 0x030A29 0C:8A19: 1D        .byte con_T + $1D   ; 
- D 0 - I - 0x030A2A 0C:8A1A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A2B 0C:8A1B: D0        .byte con_X + $D0   ; 

- D 0 - I - 0x030A2C 0C:8A1C: 40        .byte con_Y + $40   ; 
- D 0 - I - 0x030A2D 0C:8A1D: 1F        .byte con_T + $1F   ; 
- D 0 - I - 0x030A2E 0C:8A1E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A2F 0C:8A1F: D8        .byte con_X + $D8   ; 

- D 0 - I - 0x030A30 0C:8A20: 48        .byte con_Y + $48   ; 
- D 0 - I - 0x030A31 0C:8A21: 21        .byte con_T + $21   ; 
- D 0 - I - 0x030A32 0C:8A22: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A33 0C:8A23: E0        .byte con_X + $E0   ; 

- D 0 - I - 0x030A34 0C:8A24: 50        .byte con_Y + $50   ; 
- D 0 - I - 0x030A35 0C:8A25: 23        .byte con_T + $23   ; 
- D 0 - I - 0x030A36 0C:8A26: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A37 0C:8A27: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x030A38 0C:8A28: 40        .byte con_Y + $40   ; 
- D 0 - I - 0x030A39 0C:8A29: 25        .byte con_T + $25   ; 
- D 0 - I - 0x030A3A 0C:8A2A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A3B 0C:8A2B: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x030A3C 0C:8A2C: 40        .byte con_Y + $40   ; 
- D 0 - I - 0x030A3D 0C:8A2D: 27        .byte con_T + $27   ; 
- D 0 - I - 0x030A3E 0C:8A2E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A3F 0C:8A2F: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x030A40 0C:8A30: 40        .byte con_Y + $40   ; 
- D 0 - I - 0x030A41 0C:8A31: 29        .byte con_T + $29   ; 
- D 0 - I - 0x030A42 0C:8A32: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A43 0C:8A33: F8        .byte con_X + $F8   ; 
@end:



_off010_8A34_4F:
- D 0 - I - 0x030A44 0C:8A34: 08        .byte (@end - * - 1) / 4

- D 0 - I - 0x030A45 0C:8A35: DF        .byte con_Y + $DF   ; 
- D 0 - I - 0x030A46 0C:8A36: 31        .byte con_T + $31   ; 
- D 0 - I - 0x030A47 0C:8A37: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A48 0C:8A38: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x030A49 0C:8A39: FD        .byte con_Y + $FD   ; 
- D 0 - I - 0x030A4A 0C:8A3A: 33        .byte con_T + $33   ; 
- D 0 - I - 0x030A4B 0C:8A3B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A4C 0C:8A3C: EE        .byte con_X + $EE   ; 

- D 0 - I - 0x030A4D 0C:8A3D: F5        .byte con_Y + $F5   ; 
- D 0 - I - 0x030A4E 0C:8A3E: 35        .byte con_T + $35   ; 
- D 0 - I - 0x030A4F 0C:8A3F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A50 0C:8A40: F6        .byte con_X + $F6   ; 

- D 0 - I - 0x030A51 0C:8A41: ED        .byte con_Y + $ED   ; 
- D 0 - I - 0x030A52 0C:8A42: 37        .byte con_T + $37   ; 
- D 0 - I - 0x030A53 0C:8A43: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A54 0C:8A44: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x030A55 0C:8A45: ED        .byte con_Y + $ED   ; 
- D 0 - I - 0x030A56 0C:8A46: 39        .byte con_T + $39   ; 
- D 0 - I - 0x030A57 0C:8A47: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A58 0C:8A48: 06        .byte con_X + $06   ; 

- D 0 - I - 0x030A59 0C:8A49: FD        .byte con_Y + $FD   ; 
- D 0 - I - 0x030A5A 0C:8A4A: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x030A5B 0C:8A4B: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A5C 0C:8A4C: FE        .byte con_X + $FE   ; 

- D 0 - I - 0x030A5D 0C:8A4D: FD        .byte con_Y + $FD   ; 
- D 0 - I - 0x030A5E 0C:8A4E: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x030A5F 0C:8A4F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A60 0C:8A50: 06        .byte con_X + $06   ; 

- D 0 - I - 0x030A61 0C:8A51: 0D        .byte con_Y + $0D   ; 
- D 0 - I - 0x030A62 0C:8A52: 3F        .byte con_T + $3F   ; 
- D 0 - I - 0x030A63 0C:8A53: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A64 0C:8A54: 02        .byte con_X + $02   ; 
@end:



_off010_8A55_50:
- D 0 - I - 0x030A65 0C:8A55: 04        .byte (@end - * - 1) / 4

- D 0 - I - 0x030A66 0C:8A56: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x030A67 0C:8A57: 31        .byte con_T + $31   ; 
- D 0 - I - 0x030A68 0C:8A58: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A69 0C:8A59: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x030A6A 0C:8A5A: EB        .byte con_Y + $EB   ; 
- D 0 - I - 0x030A6B 0C:8A5B: 33        .byte con_T + $33   ; 
- D 0 - I - 0x030A6C 0C:8A5C: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A6D 0C:8A5D: FF        .byte con_X + $FF   ; 

- D 0 - I - 0x030A6E 0C:8A5E: F9        .byte con_Y + $F9   ; 
- D 0 - I - 0x030A6F 0C:8A5F: 35        .byte con_T + $35   ; 
- D 0 - I - 0x030A70 0C:8A60: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A71 0C:8A61: F7        .byte con_X + $F7   ; 

- D 0 - I - 0x030A72 0C:8A62: FB        .byte con_Y + $FB   ; 
- D 0 - I - 0x030A73 0C:8A63: 37        .byte con_T + $37   ; 
- D 0 - I - 0x030A74 0C:8A64: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A75 0C:8A65: FF        .byte con_X + $FF   ; 
@end:



_off010_8A66_51:
- D 0 - I - 0x030A76 0C:8A66: 06        .byte (@end - * - 1) / 4

- D 0 - I - 0x030A77 0C:8A67: F3        .byte con_Y + $F3   ; 
- D 0 - I - 0x030A78 0C:8A68: 35        .byte con_T + $35   ; 
- D 0 - I - 0x030A79 0C:8A69: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A7A 0C:8A6A: F4        .byte con_X + $F4   ; 

- D 0 - I - 0x030A7B 0C:8A6B: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x030A7C 0C:8A6C: 37        .byte con_T + $37   ; 
- D 0 - I - 0x030A7D 0C:8A6D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A7E 0C:8A6E: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x030A7F 0C:8A6F: E9        .byte con_Y + $E9   ; 
- D 0 - I - 0x030A80 0C:8A70: 39        .byte con_T + $39   ; 
- D 0 - I - 0x030A81 0C:8A71: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A82 0C:8A72: 04        .byte con_X + $04   ; 

- D 0 - I - 0x030A83 0C:8A73: F9        .byte con_Y + $F9   ; 
- D 0 - I - 0x030A84 0C:8A74: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x030A85 0C:8A75: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A86 0C:8A76: FC        .byte con_X + $FC   ; 

- D 0 - I - 0x030A87 0C:8A77: F9        .byte con_Y + $F9   ; 
- D 0 - I - 0x030A88 0C:8A78: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x030A89 0C:8A79: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A8A 0C:8A7A: 04        .byte con_X + $04   ; 

- D 0 - I - 0x030A8B 0C:8A7B: 09        .byte con_Y + $09   ; 
- D 0 - I - 0x030A8C 0C:8A7C: 3F        .byte con_T + $3F   ; 
- D 0 - I - 0x030A8D 0C:8A7D: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A8E 0C:8A7E: F8        .byte con_X + $F8   ; 
@end:



_off010_8A7F_52:
- D 0 - I - 0x030A8F 0C:8A7F: 07        .byte (@end - * - 1) / 4

- D 0 - I - 0x030A90 0C:8A80: F4        .byte con_Y + $F4   ; 
- D 0 - I - 0x030A91 0C:8A81: 33        .byte con_T + $33   ; 
- D 0 - I - 0x030A92 0C:8A82: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A93 0C:8A83: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x030A94 0C:8A84: 04        .byte con_Y + $04   ; 
- D 0 - I - 0x030A95 0C:8A85: 35        .byte con_T + $35   ; 
- D 0 - I - 0x030A96 0C:8A86: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A97 0C:8A87: E8        .byte con_X + $E8   ; 

- D 0 - I - 0x030A98 0C:8A88: ED        .byte con_Y + $ED   ; 
- D 0 - I - 0x030A99 0C:8A89: 37        .byte con_T + $37   ; 
- D 0 - I - 0x030A9A 0C:8A8A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A9B 0C:8A8B: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x030A9C 0C:8A8C: FD        .byte con_Y + $FD   ; 
- D 0 - I - 0x030A9D 0C:8A8D: 39        .byte con_T + $39   ; 
- D 0 - I - 0x030A9E 0C:8A8E: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030A9F 0C:8A8F: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x030AA0 0C:8A90: 0D        .byte con_Y + $0D   ; 
- D 0 - I - 0x030AA1 0C:8A91: 3B        .byte con_T + $3B   ; 
- D 0 - I - 0x030AA2 0C:8A92: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030AA3 0C:8A93: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x030AA4 0C:8A94: F5        .byte con_Y + $F5   ; 
- D 0 - I - 0x030AA5 0C:8A95: 3D        .byte con_T + $3D   ; 
- D 0 - I - 0x030AA6 0C:8A96: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030AA7 0C:8A97: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x030AA8 0C:8A98: 0D        .byte con_Y + $0D   ; 
- D 0 - I - 0x030AA9 0C:8A99: 3F        .byte con_T + $3F   ; 
- D 0 - I - 0x030AAA 0C:8A9A: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030AAB 0C:8A9B: F9        .byte con_X + $F9   ; 
@end:



_off010_8A9C_53:
- D 0 - I - 0x030AAC 0C:8A9C: 06        .byte (@end - * - 1) / 4

- D 0 - I - 0x030AAD 0C:8A9D: D5        .byte con_Y + $D5   ; 
- D 0 - I - 0x030AAE 0C:8A9E: 27        .byte con_T + $27   ; 
- D 0 - I - 0x030AAF 0C:8A9F: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030AB0 0C:8AA0: FB        .byte con_X + $FB   ; 

- D 0 - I - 0x030AB1 0C:8AA1: D5        .byte con_Y + $D5   ; 
- D 0 - I - 0x030AB2 0C:8AA2: 29        .byte con_T + $29   ; 
- D 0 - I - 0x030AB3 0C:8AA3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030AB4 0C:8AA4: 03        .byte con_X + $03   ; 

- D 0 - I - 0x030AB5 0C:8AA5: E5        .byte con_Y + $E5   ; 
- D 0 - I - 0x030AB6 0C:8AA6: 2B        .byte con_T + $2B   ; 
- D 0 - I - 0x030AB7 0C:8AA7: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030AB8 0C:8AA8: F8        .byte con_X + $F8   ; 

- D 0 - I - 0x030AB9 0C:8AA9: ED        .byte con_Y + $ED   ; 
- D 0 - I - 0x030ABA 0C:8AAA: 2D        .byte con_T + $2D   ; 
- D 0 - I - 0x030ABB 0C:8AAB: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030ABC 0C:8AAC: F0        .byte con_X + $F0   ; 

- D 0 - I - 0x030ABD 0C:8AAD: F6        .byte con_Y + $F6   ; 
- D 0 - I - 0x030ABE 0C:8AAE: 2F        .byte con_T + $2F   ; 
- D 0 - I - 0x030ABF 0C:8AAF: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030AC0 0C:8AB0: E0        .byte con_X + $E0   ; 

- D 0 - I - 0x030AC1 0C:8AB1: F6        .byte con_Y + $F6   ; 
- D 0 - I - 0x030AC2 0C:8AB2: 31        .byte con_T + $31   ; 
- D 0 - I - 0x030AC3 0C:8AB3: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030AC4 0C:8AB4: E8        .byte con_X + $E8   ; 
@end:



_off010_8AB5_54:
- D 0 - I - 0x030AC5 0C:8AB5: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x030AC6 0C:8AB6: 15        .byte con_Y + $15   ; 
- D 0 - I - 0x030AC7 0C:8AB7: 23        .byte con_T + $23   ; 
- D 0 - I - 0x030AC8 0C:8AB8: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030AC9 0C:8AB9: 00        .byte con_X + $00   ; 

- D 0 - I - 0x030ACA 0C:8ABA: 15        .byte con_Y + $15   ; 
- D 0 - I - 0x030ACB 0C:8ABB: 25        .byte con_T + $25   ; 
- D 0 - I - 0x030ACC 0C:8ABC: 00        .byte con_A + $00   ; 
- D 0 - I - 0x030ACD 0C:8ABD: 08        .byte con_X + $08   ; 
@end:



_off010_8ABE_55:
- D 0 - I - 0x030ACE 0C:8ABE: 02        .byte (@end - * - 1) / 4

- D 0 - I - 0x030ACF 0C:8ABF: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x030AD0 0C:8AC0: 71        .byte con_T + $71   ; 
- D 0 - I - 0x030AD1 0C:8AC1: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030AD2 0C:8AC2: F9        .byte con_X + $F9   ; 

- D 0 - I - 0x030AD3 0C:8AC3: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x030AD4 0C:8AC4: 73        .byte con_T + $73   ; 
- D 0 - I - 0x030AD5 0C:8AC5: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030AD6 0C:8AC6: 01        .byte con_X + $01   ; 
@end:



_off010_8AC7_56:
- D 0 - I - 0x030AD7 0C:8AC7: 01        .byte (@end - * - 1) / 4

- D 0 - I - 0x030AD8 0C:8AC8: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x030AD9 0C:8AC9: 75        .byte con_T + $75   ; 
- D 0 - I - 0x030ADA 0C:8ACA: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030ADB 0C:8ACB: FD        .byte con_X + $FD   ; 
@end:



_off010_8ACC_57:
- D 0 - I - 0x030ADC 0C:8ACC: 01        .byte (@end - * - 1) / 4

- D 0 - I - 0x030ADD 0C:8ACD: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x030ADE 0C:8ACE: 77        .byte con_T + $77   ; 
- D 0 - I - 0x030ADF 0C:8ACF: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030AE0 0C:8AD0: FD        .byte con_X + $FD   ; 
@end:



_off010_8AD1_58:
- D 0 - I - 0x030AE1 0C:8AD1: 01        .byte (@end - * - 1) / 4

- D 0 - I - 0x030AE2 0C:8AD2: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x030AE3 0C:8AD3: 79        .byte con_T + $79   ; 
- D 0 - I - 0x030AE4 0C:8AD4: 02        .byte con_A + $02   ; 
- D 0 - I - 0x030AE5 0C:8AD5: FD        .byte con_X + $FD   ; 
@end:



_off010_8AD6_59:
- D 0 - I - 0x030AE6 0C:8AD6: 04        .byte (@end - * - 1) / 4

- D 0 - I - 0x030AE7 0C:8AD7: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x030AE8 0C:8AD8: 43        .byte con_T + $43   ; 
- D 0 - I - 0x030AE9 0C:8AD9: 03        .byte con_A + $03   ; 
- D 0 - I - 0x030AEA 0C:8ADA: 00        .byte con_X + $00   ; 

- D 0 - I - 0x030AEB 0C:8ADB: F8        .byte con_Y + $F8   ; 
- D 0 - I - 0x030AEC 0C:8ADC: 43        .byte con_T + $43   ; 
- D 0 - I - 0x030AED 0C:8ADD: 43        .byte con_A + $43   ; 
- D 0 - I - 0x030AEE 0C:8ADE: 28        .byte con_X + $28   ; 

- D 0 - I - 0x030AEF 0C:8ADF: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030AF0 0C:8AE0: 5F        .byte con_T + $5F   ; 
- D 0 - I - 0x030AF1 0C:8AE1: 03        .byte con_A + $03   ; 
- D 0 - I - 0x030AF2 0C:8AE2: 10        .byte con_X + $10   ; 

- D 0 - I - 0x030AF3 0C:8AE3: 00        .byte con_Y + $00   ; 
- D 0 - I - 0x030AF4 0C:8AE4: 61        .byte con_T + $61   ; 
- D 0 - I - 0x030AF5 0C:8AE5: 03        .byte con_A + $03   ; 
- D 0 - I - 0x030AF6 0C:8AE6: 18        .byte con_X + $18   ; 
@end:



_off004_8AF8_30:
- D 0 - I - 0x030B08 0C:8AF8: 74 20     .word $2074
- D 0 - I - 0x030B0A 0C:8AFA: 99        .byte $99   ; 
- D 0 - I - 0x030B0B 0C:8AFB: 90        .byte $90   ; 
- D 0 - I - 0x030B0C 0C:8AFC: 90        .byte $90   ; 
- D 0 - I - 0x030B0D 0C:8AFD: 00        .byte $00   ; 
- D 0 - I - 0x030B0E 0C:8AFE: 00        .byte $00   ; 
- D 0 - I - 0x030B0F 0C:8AFF: 00        .byte $00   ; 
- D 0 - I - 0x030B10 0C:8B00: FF        .byte $FF   ; 



_off004_8B01_31:
- D 0 - I - 0x030B11 0C:8B01: 74 20     .word $2074
- D 0 - I - 0x030B13 0C:8B03: 99        .byte $99   ; 
- D 0 - I - 0x030B14 0C:8B04: 98        .byte $98   ; 
- D 0 - I - 0x030B15 0C:8B05: 00        .byte $00   ; 
- D 0 - I - 0x030B16 0C:8B06: 00        .byte $00   ; 
- D 0 - I - 0x030B17 0C:8B07: 00        .byte $00   ; 
- D 0 - I - 0x030B18 0C:8B08: 00        .byte $00   ; 
- D 0 - I - 0x030B19 0C:8B09: FF        .byte $FF   ; 



_off004_8B0A_32:
- D 0 - I - 0x030B1A 0C:8B0A: B4 20     .word $20B4
- D 0 - I - 0x030B1C 0C:8B0C: 99        .byte $99   ; 
- D 0 - I - 0x030B1D 0C:8B0D: 90        .byte $90   ; 
- D 0 - I - 0x030B1E 0C:8B0E: 90        .byte $90   ; 
- D 0 - I - 0x030B1F 0C:8B0F: 00        .byte $00   ; 
- D 0 - I - 0x030B20 0C:8B10: 00        .byte $00   ; 
- D 0 - I - 0x030B21 0C:8B11: 00        .byte $00   ; 
- D 0 - I - 0x030B22 0C:8B12: 00        .byte $00   ; 
- D 0 - I - 0x030B23 0C:8B13: 00        .byte $00   ; 
- D 0 - I - 0x030B24 0C:8B14: FF        .byte $FF   ; 



_off004_8B15_33:
- D 0 - I - 0x030B25 0C:8B15: B4 20     .word $20B4
- D 0 - I - 0x030B27 0C:8B17: 99        .byte $99   ; 
- D 0 - I - 0x030B28 0C:8B18: 98        .byte $98   ; 
- D 0 - I - 0x030B29 0C:8B19: 00        .byte $00   ; 
- D 0 - I - 0x030B2A 0C:8B1A: 00        .byte $00   ; 
- D 0 - I - 0x030B2B 0C:8B1B: 00        .byte $00   ; 
- D 0 - I - 0x030B2C 0C:8B1C: 00        .byte $00   ; 
- D 0 - I - 0x030B2D 0C:8B1D: 00        .byte $00   ; 
- D 0 - I - 0x030B2E 0C:8B1E: 00        .byte $00   ; 
- D 0 - I - 0x030B2F 0C:8B1F: FF        .byte $FF   ; 



_off004_8B20_26:
- D 0 - I - 0x030B30 0C:8B20: 66 20     .word $2066
- D 0 - I - 0x030B32 0C:8B22: 8E        .byte $8E   ; 
- D 0 - I - 0x030B33 0C:8B23: 93        .byte $93   ; 
- D 0 - I - 0x030B34 0C:8B24: 90        .byte $90   ; 
- D 0 - I - 0x030B35 0C:8B25: 90        .byte $90   ; 
- D 0 - I - 0x030B36 0C:8B26: 93        .byte $93   ; 
- D 0 - I - 0x030B37 0C:8B27: 8D        .byte $8D   ; 
- D 0 - I - 0x030B38 0C:8B28: 9F        .byte $9F   ; 
- D 0 - I - 0x030B39 0C:8B29: 96        .byte $96   ; 
- D 0 - I - 0x030B3A 0C:8B2A: 9E        .byte $9E   ; 
- D 0 - I - 0x030B3B 0C:8B2B: A3        .byte $A3   ; 
- D 0 - I - 0x030B3C 0C:8B2C: FF        .byte $FF   ; 



_off004_8B2D_27:
- D 0 - I - 0x030B3D 0C:8B2D: A6 20     .word $20A6
- D 0 - I - 0x030B3F 0C:8B2F: 9D        .byte $9D   ; 
- D 0 - I - 0x030B40 0C:8B30: 95        .byte $95   ; 
- D 0 - I - 0x030B41 0C:8B31: 93        .byte $93   ; 
- D 0 - I - 0x030B42 0C:8B32: 98        .byte $98   ; 
- D 0 - I - 0x030B43 0C:8B33: 00        .byte $00   ; 
- D 0 - I - 0x030B44 0C:8B34: 00        .byte $00   ; 
- D 0 - I - 0x030B45 0C:8B35: 00        .byte $00   ; 
- D 0 - I - 0x030B46 0C:8B36: 00        .byte $00   ; 
- D 0 - I - 0x030B47 0C:8B37: 00        .byte $00   ; 
- D 0 - I - 0x030B48 0C:8B38: 00        .byte $00   ; 
- D 0 - I - 0x030B49 0C:8B39: FF        .byte $FF   ; 



_off004_8B3A_28:
- D 0 - I - 0x030B4A 0C:8B3A: E6 20     .word $20E6
- D 0 - I - 0x030B4C 0C:8B3C: 9D        .byte $9D   ; 
- D 0 - I - 0x030B4D 0C:8B3D: 9A        .byte $9A   ; 
- D 0 - I - 0x030B4E 0C:8B3E: 8F        .byte $8F   ; 
- D 0 - I - 0x030B4F 0C:8B3F: 8F        .byte $8F   ; 
- D 0 - I - 0x030B50 0C:8B40: 8E        .byte $8E   ; 
- D 0 - I - 0x030B51 0C:8B41: FF        .byte $FF   ; 



_off004_8B42_29:
- D 0 - I - 0x030B52 0C:8B42: 26 21     .word $2126
- D 0 - I - 0x030B54 0C:8B44: 9E        .byte $9E   ; 
- D 0 - I - 0x030B55 0C:8B45: 93        .byte $93   ; 
- D 0 - I - 0x030B56 0C:8B46: 97        .byte $97   ; 
- D 0 - I - 0x030B57 0C:8B47: 8F        .byte $8F   ; 
- D 0 - I - 0x030B58 0C:8B48: 9C        .byte $9C   ; 
- D 0 - I - 0x030B59 0C:8B49: 00        .byte $00   ; 
- D 0 - I - 0x030B5A 0C:8B4A: 00        .byte $00   ; 
- D 0 - I - 0x030B5B 0C:8B4B: 00        .byte $00   ; 
- D 0 - I - 0x030B5C 0C:8B4C: 00        .byte $00   ; 
- D 0 - I - 0x030B5D 0C:8B4D: 00        .byte $00   ; 
- D 0 - I - 0x030B5E 0C:8B4E: 00        .byte $00   ; 
- D 0 - I - 0x030B5F 0C:8B4F: 00        .byte $00   ; 
- D 0 - I - 0x030B60 0C:8B50: 00        .byte $00   ; 
- D 0 - I - 0x030B61 0C:8B51: FF        .byte $FF   ; 



_off004_8B52_2A:
- D 0 - I - 0x030B62 0C:8B52: 66 21     .word $2166
- D 0 - I - 0x030B64 0C:8B54: 92        .byte $92   ; 
- D 0 - I - 0x030B65 0C:8B55: 8F        .byte $8F   ; 
- D 0 - I - 0x030B66 0C:8B56: 8B        .byte $8B   ; 
- D 0 - I - 0x030B67 0C:8B57: 96        .byte $96   ; 
- D 0 - I - 0x030B68 0C:8B58: 9E        .byte $9E   ; 
- D 0 - I - 0x030B69 0C:8B59: 92        .byte $92   ; 
- D 0 - I - 0x030B6A 0C:8B5A: 00        .byte $00   ; 
- D 0 - I - 0x030B6B 0C:8B5B: 00        .byte $00   ; 
- D 0 - I - 0x030B6C 0C:8B5C: 00        .byte $00   ; 
- D 0 - I - 0x030B6D 0C:8B5D: 00        .byte $00   ; 
- D 0 - I - 0x030B6E 0C:8B5E: 00        .byte $00   ; 
- D 0 - I - 0x030B6F 0C:8B5F: 00        .byte $00   ; 
- D 0 - I - 0x030B70 0C:8B60: 00        .byte $00   ; 
- D 0 - I - 0x030B71 0C:8B61: FF        .byte $FF   ; 



_off004_8B62_2B:
- D 0 - I - 0x030B72 0C:8B62: 66 20     .word $2066
- D 0 - I - 0x030B74 0C:8B64: 8C        .byte $8C   ; 
- D 0 - I - 0x030B75 0C:8B65: 8B        .byte $8B   ; 
- D 0 - I - 0x030B76 0C:8B66: 96        .byte $96   ; 
- D 0 - I - 0x030B77 0C:8B67: 8B        .byte $8B   ; 
- D 0 - I - 0x030B78 0C:8B68: 98        .byte $98   ; 
- D 0 - I - 0x030B79 0C:8B69: 8D        .byte $8D   ; 
- D 0 - I - 0x030B7A 0C:8B6A: 93        .byte $93   ; 
- D 0 - I - 0x030B7B 0C:8B6B: 98        .byte $98   ; 
- D 0 - I - 0x030B7C 0C:8B6C: 91        .byte $91   ; 
- D 0 - I - 0x030B7D 0C:8B6D: 00        .byte $00   ; 
- D 0 - I - 0x030B7E 0C:8B6E: FF        .byte $FF   ; 



_off004_8B6F_2C:
- D 0 - I - 0x030B7F 0C:8B6F: A6 20     .word $20A6
- D 0 - I - 0x030B81 0C:8B71: 9D        .byte $9D   ; 
- D 0 - I - 0x030B82 0C:8B72: 92        .byte $92   ; 
- D 0 - I - 0x030B83 0C:8B73: 9C        .byte $9C   ; 
- D 0 - I - 0x030B84 0C:8B74: 8F        .byte $8F   ; 
- D 0 - I - 0x030B85 0C:8B75: 8E        .byte $8E   ; 
- D 0 - I - 0x030B86 0C:8B76: 00        .byte $00   ; 
- D 0 - I - 0x030B87 0C:8B77: 8D        .byte $8D   ; 
- D 0 - I - 0x030B88 0C:8B78: 9E        .byte $9E   ; 
- D 0 - I - 0x030B89 0C:8B79: 9C        .byte $9C   ; 
- D 0 - I - 0x030B8A 0C:8B7A: 96        .byte $96   ; 
- D 0 - I - 0x030B8B 0C:8B7B: FF        .byte $FF   ; 



_off004_8B7C_2D:
- D 0 - I - 0x030B8C 0C:8B7C: E6 20     .word $20E6
- D 0 - I - 0x030B8E 0C:8B7E: 8C        .byte $8C   ; 
- D 0 - I - 0x030B8F 0C:8B7F: 91        .byte $91   ; 
- D 0 - I - 0x030B90 0C:8B80: 97        .byte $97   ; 
- D 0 - I - 0x030B91 0C:8B81: 00        .byte $00   ; 
- D 0 - I - 0x030B92 0C:8B82: 00        .byte $00   ; 
- D 0 - I - 0x030B93 0C:8B83: FF        .byte $FF   ; 



_off004_8B84_2E:
- D 0 - I - 0x030B94 0C:8B84: 26 21     .word $2126
- D 0 - I - 0x030B96 0C:8B86: 00        .byte $00   ; 
- D 0 - I - 0x030B97 0C:8B87: 00        .byte $00   ; 
- D 0 - I - 0x030B98 0C:8B88: 00        .byte $00   ; 
- D 0 - I - 0x030B99 0C:8B89: 00        .byte $00   ; 
- D 0 - I - 0x030B9A 0C:8B8A: 00        .byte $00   ; 
- D 0 - I - 0x030B9B 0C:8B8B: 00        .byte $00   ; 
- D 0 - I - 0x030B9C 0C:8B8C: 78        .byte $78   ; 
- D 0 - I - 0x030B9D 0C:8B8D: 78        .byte $78   ; 
- D 0 - I - 0x030B9E 0C:8B8E: 78        .byte $78   ; 
- D 0 - I - 0x030B9F 0C:8B8F: 78        .byte $78   ; 
- D 0 - I - 0x030BA0 0C:8B90: 78        .byte $78   ; 
- D 0 - I - 0x030BA1 0C:8B91: 78        .byte $78   ; 
- D 0 - I - 0x030BA2 0C:8B92: 78        .byte $78   ; 
- D 0 - I - 0x030BA3 0C:8B93: 00        .byte $00   ; 
- D 0 - I - 0x030BA4 0C:8B94: 00        .byte $00   ; 
- D 0 - I - 0x030BA5 0C:8B95: 00        .byte $00   ; 
- D 0 - I - 0x030BA6 0C:8B96: 00        .byte $00   ; 
- D 0 - I - 0x030BA7 0C:8B97: FF        .byte $FF   ; 



_off004_8B98_2F:
- D 0 - I - 0x030BA8 0C:8B98: 66 21     .word $2166
- D 0 - I - 0x030BAA 0C:8B9A: 00        .byte $00   ; 
- D 0 - I - 0x030BAB 0C:8B9B: 00        .byte $00   ; 
- D 0 - I - 0x030BAC 0C:8B9C: 00        .byte $00   ; 
- D 0 - I - 0x030BAD 0C:8B9D: 00        .byte $00   ; 
- D 0 - I - 0x030BAE 0C:8B9E: 00        .byte $00   ; 
- D 0 - I - 0x030BAF 0C:8B9F: 00        .byte $00   ; 
- D 0 - I - 0x030BB0 0C:8BA0: 78        .byte $78   ; 
- D 0 - I - 0x030BB1 0C:8BA1: 78        .byte $78   ; 
- D 0 - I - 0x030BB2 0C:8BA2: 78        .byte $78   ; 
- D 0 - I - 0x030BB3 0C:8BA3: 78        .byte $78   ; 
- D 0 - I - 0x030BB4 0C:8BA4: 78        .byte $78   ; 
- D 0 - I - 0x030BB5 0C:8BA5: 78        .byte $78   ; 
- D 0 - I - 0x030BB6 0C:8BA6: 78        .byte $78   ; 
- D 0 - I - 0x030BB7 0C:8BA7: 00        .byte $00   ; 
- D 0 - I - 0x030BB8 0C:8BA8: 00        .byte $00   ; 
- D 0 - I - 0x030BB9 0C:8BA9: 00        .byte $00   ; 
- D 0 - I - 0x030BBA 0C:8BAA: 00        .byte $00   ; 
- D 0 - I - 0x030BBB 0C:8BAB: 00        .byte $00   ; 
- D 0 - I - 0x030BBC 0C:8BAC: FF        .byte $FF   ; 



tbl_8C00:
- D 0 - - - 0x030C10 0C:8C00: 1A 81     .word _off004_811A_00
- D 0 - - - 0x030C12 0C:8C02: 22 81     .word _off004_8122_01
- D 0 - - - 0x030C14 0C:8C04: 2E 81     .word _off004_812E_02
- D 0 - - - 0x030C16 0C:8C06: 37 81     .word _off004_8137_03
- D 0 - - - 0x030C18 0C:8C08: 41 81     .word _off004_8141_04
- D 0 - - - 0x030C1A 0C:8C0A: 4E 81     .word _off004_814E_05
- D 0 - - - 0x030C1C 0C:8C0C: 57 81     .word _off004_8157_06
- D 0 - - - 0x030C1E 0C:8C0E: 66 81     .word _off004_8166_07
- D 0 - - - 0x030C20 0C:8C10: 0B 82     .word _off004_820B_08
- D 0 - - - 0x030C22 0C:8C12: 74 81     .word _off004_8174_09
- D 0 - - - 0x030C24 0C:8C14: 7D 81     .word _off004_817D_0A
- D 0 - - - 0x030C26 0C:8C16: 86 81     .word _off004_8186_0B
- D 0 - - - 0x030C28 0C:8C18: 2C 82     .word _off004_822C_0C
- D 0 - - - 0x030C2A 0C:8C1A: 18 82     .word _off004_8218_0D
- - - - - - 0x030C2C 0C:8C1C: A1 81     .word _off004_81A1_0E
- - - - - - 0x030C2E 0C:8C1E: AA 81     .word _off004_81AA_0F
- - - - - - 0x030C30 0C:8C20: FF FF     .word $FFFF      ; 10
- D 0 - - - 0x030C32 0C:8C22: BE 81     .word _off004_81BE_11
- D 0 - - - 0x030C34 0C:8C24: CB 81     .word _off004_81CB_12
- D 0 - - - 0x030C36 0C:8C26: 8F 81     .word _off004_818F_13
- D 0 - - - 0x030C38 0C:8C28: 98 81     .word _off004_8198_14
- D 0 - - - 0x030C3A 0C:8C2A: D6 81     .word _off004_81D6_15
- D 0 - - - 0x030C3C 0C:8C2C: E3 81     .word _off004_81E3_16
- D 0 - - - 0x030C3E 0C:8C2E: EA 81     .word _off004_81EA_17
- D 0 - - - 0x030C40 0C:8C30: F4 81     .word _off004_81F4_18
- D 0 - - - 0x030C42 0C:8C32: FB 81     .word _off004_81FB_19
- D 0 - - - 0x030C44 0C:8C34: 05 82     .word _off004_8205_1A
- D 0 - - - 0x030C46 0C:8C36: 1D B0     .word _off004_B01D_1B
- D 0 - - - 0x030C48 0C:8C38: 24 B0     .word _off004_B024_1C
- D 0 - - - 0x030C4A 0C:8C3A: 2B B0     .word _off004_B02B_1D
- D 0 - - - 0x030C4C 0C:8C3C: 32 B0     .word _off004_B032_1E
- D 0 - - - 0x030C4E 0C:8C3E: 09 B0     .word _off004_B009_1F
- D 0 - - - 0x030C50 0C:8C40: 0E B0     .word _off004_B00E_20
- D 0 - - - 0x030C52 0C:8C42: 13 B0     .word _off004_B013_21
- D 0 - - - 0x030C54 0C:8C44: 18 B0     .word _off004_B018_22
- D 0 - - - 0x030C56 0C:8C46: 39 B0     .word _off004_B039_23
- D 0 - - - 0x030C58 0C:8C48: 44 B0     .word _off004_B044_24
- D 0 - - - 0x030C5A 0C:8C4A: 4F B0     .word _off004_B04F_25
- D 0 - - - 0x030C5C 0C:8C4C: 20 8B     .word _off004_8B20_26
- D 0 - - - 0x030C5E 0C:8C4E: 2D 8B     .word _off004_8B2D_27
- D 0 - - - 0x030C60 0C:8C50: 3A 8B     .word _off004_8B3A_28
- D 0 - - - 0x030C62 0C:8C52: 42 8B     .word _off004_8B42_29
- D 0 - - - 0x030C64 0C:8C54: 52 8B     .word _off004_8B52_2A
- D 0 - - - 0x030C66 0C:8C56: 62 8B     .word _off004_8B62_2B
- D 0 - - - 0x030C68 0C:8C58: 6F 8B     .word _off004_8B6F_2C
- D 0 - - - 0x030C6A 0C:8C5A: 7C 8B     .word _off004_8B7C_2D
- D 0 - - - 0x030C6C 0C:8C5C: 84 8B     .word _off004_8B84_2E
- D 0 - - - 0x030C6E 0C:8C5E: 98 8B     .word _off004_8B98_2F
- D 0 - - - 0x030C70 0C:8C60: F8 8A     .word _off004_8AF8_30
- D 0 - - - 0x030C72 0C:8C62: 01 8B     .word _off004_8B01_31
- D 0 - - - 0x030C74 0C:8C64: 0A 8B     .word _off004_8B0A_32
- D 0 - - - 0x030C76 0C:8C66: 15 8B     .word _off004_8B15_33



tbl_8FDB:
- D 0 - - - 0x030FEB 0C:8FDB: C6        .byte $C6, $BF, $C9, $FF   ; 00
- D 0 - - - 0x030FEF 0C:8FDF: CC        .byte $CC, $BB, $CA, $FF   ; 01
- D 0 - - - 0x030FF3 0C:8FE3: C7        .byte $C7, $C3, $C5, $FF   ; 02
- D 0 - - - 0x030FF7 0C:8FE7: BE        .byte $BE, $C9, $C8, $FF   ; 03
- D 0 - - - 0x030FFB 0C:8FEB: BD        .byte $BD, $BB, $CD, $FF   ; 04
- D 0 - - - 0x030FFF 0C:8FEF: C2        .byte $C2, $C9, $CE, $FF   ; 05
- D 0 - - - 0x031003 0C:8FF3: CD        .byte $CD, $C2, $CC, $FF   ; 06
- D 0 - - - 0x031007 0C:8FF7: A9        .byte $A9, $A9, $A9, $FF   ; 07



tbl_8FFB:
- D 0 - - - 0x03100B 0C:8FFB: 9E        .byte $9E   ; 00
- D 0 - - - 0x03100C 0C:8FFC: 3E        .byte $3E   ; 01

tbl_8FFD:
- D 0 - - - 0x03100D 0C:8FFD: 20        .byte $20   ; 00
- D 0 - - - 0x03100E 0C:8FFE: 23        .byte $23   ; 01



.export sub_0x031010
sub_0x031010:
C - - - - - 0x031010 0C:9000: A5 2C     LDA ram_002C
C - - - - - 0x031012 0C:9002: 49 03     EOR #$03
C - - - - - 0x031014 0C:9004: D0 0A     BNE bra_9010
C - - - - - 0x031016 0C:9006: A2 01     LDX #$01
bra_9008:
C - - - - - 0x031018 0C:9008: BD 44 01  LDA ram_0144,X
C - - - - - 0x03101B 0C:900B: 30 06     BMI bra_9013
C - - - - - 0x03101D 0C:900D: CA        DEX
C - - - - - 0x03101E 0C:900E: 10 F8     BPL bra_9008
bra_9010:
C - - - - - 0x031020 0C:9010: 4C 06 80  JMP loc_8006
bra_9013:
C - - - - - 0x031023 0C:9013: A9 01     LDA #$01
C - - - - - 0x031025 0C:9015: 8D 46 01  STA ram_0146
C - - - - - 0x031028 0C:9018: BD 40 01  LDA ram_0140,X
C - - - - - 0x03102B 0C:901B: 0A        ASL
C - - - - - 0x03102C 0C:901C: 0A        ASL
C - - - - - 0x03102D 0C:901D: 7D FB 8F  ADC tbl_8FFB,X
C - - - - - 0x031030 0C:9020: 8D 47 01  STA ram_0147
C - - - - - 0x031033 0C:9023: BD FD 8F  LDA tbl_8FFD,X
C - - - - - 0x031036 0C:9026: 8D 48 01  STA ram_0148
C - - - - - 0x031039 0C:9029: FE 44 01  INC ram_0144,X
C - - - - - 0x03103C 0C:902C: F0 0A     BEQ bra_9038
C - - - - - 0x03103E 0C:902E: DE 40 01  DEC ram_0140,X
C - - - - - 0x031041 0C:9031: FE 44 01  INC ram_0144,X
C - - - - - 0x031044 0C:9034: A2 20     LDX #$20
C - - - - - 0x031046 0C:9036: D0 10     BNE bra_9048
bra_9038:
C - - - - - 0x031048 0C:9038: 8A        TXA
C - - - - - 0x031049 0C:9039: 0A        ASL
C - - - - - 0x03104A 0C:903A: 0A        ASL
C - - - - - 0x03104B 0C:903B: 0A        ASL
C - - - - - 0x03104C 0C:903C: 7D 40 01  ADC ram_0140,X
C - - - - - 0x03104F 0C:903F: A8        TAY
C - - - - - 0x031050 0C:9040: B9 2F 01  LDA ram_012F,Y
C - - - - - 0x031053 0C:9043: 0A        ASL
C - - - - - 0x031054 0C:9044: 0A        ASL
C - - - - - 0x031055 0C:9045: 69 04     ADC #$04
C - - - - - 0x031057 0C:9047: AA        TAX
bra_9048:
C - - - - - 0x031058 0C:9048: A0 04     LDY #$04
bra_904A_loop:
C - - - - - 0x03105A 0C:904A: BD DA 8F  LDA tbl_8FDB - 1,X
C - - - - - 0x03105D 0C:904D: 99 48 01  STA ram_0148,Y
C - - - - - 0x031060 0C:9050: CA        DEX
C - - - - - 0x031061 0C:9051: 88        DEY
C - - - - - 0x031062 0C:9052: D0 F6     BNE bra_904A_loop
C - - - - - 0x031064 0C:9054: A6 25     LDX ram_0025
bra_9056_loop:
C - - - - - 0x031066 0C:9056: B9 46 01  LDA ram_0146,Y
C - - - - - 0x031069 0C:9059: 9D FF 02  STA ram_02FF,X
C - - - - - 0x03106C 0C:905C: F0 B2     BEQ bra_9010
C - - - - - 0x03106E 0C:905E: E8        INX
C - - - - - 0x03106F 0C:905F: C8        INY
C - - - - - 0x031070 0C:9060: D0 F4     BNE bra_9056_loop



_off004_B009_1F:
- D 1 - I - 0x033019 0C:B009: 35 21     .word $2135
- D 1 - I - 0x03301B 0C:B00B: 85        .byte $85   ; 
- D 1 - I - 0x03301C 0C:B00C: 86        .byte $86   ; 
- D 1 - I - 0x03301D 0C:B00D: FF        .byte $FF   ; 



_off004_B00E_20:
- D 1 - I - 0x03301E 0C:B00E: 35 21     .word $2135
- D 1 - I - 0x033020 0C:B010: 87        .byte $87   ; 
- D 1 - I - 0x033021 0C:B011: 81        .byte $81   ; 
- D 1 - I - 0x033022 0C:B012: FF        .byte $FF   ; 



_off004_B013_21:
- D 1 - I - 0x033023 0C:B013: 35 21     .word $2135
- D 1 - I - 0x033025 0C:B015: 8A        .byte $8A   ; 
- D 1 - I - 0x033026 0C:B016: 8A        .byte $8A   ; 
- D 1 - I - 0x033027 0C:B017: FF        .byte $FF   ; 



_off004_B018_22:
- D 1 - I - 0x033028 0C:B018: 35 21     .word $2135
- D 1 - I - 0x03302A 0C:B01A: BA        .byte $BA   ; 
- D 1 - I - 0x03302B 0C:B01B: BB        .byte $BB   ; 
- D 1 - I - 0x03302C 0C:B01C: FF        .byte $FF   ; 



_off004_B01D_1B:
- D 1 - I - 0x03302D 0C:B01D: 74 21     .word $2174
- D 1 - I - 0x03302F 0C:B01F: 82        .byte $82   ; 
- D 1 - I - 0x033030 0C:B020: 81        .byte $81   ; 
- D 1 - I - 0x033031 0C:B021: 81        .byte $81   ; 
- D 1 - I - 0x033032 0C:B022: BC        .byte $BC   ; 
- D 1 - I - 0x033033 0C:B023: FF        .byte $FF   ; 



_off004_B024_1C:
- D 1 - I - 0x033034 0C:B024: 74 21     .word $2174
- D 1 - I - 0x033036 0C:B026: 82        .byte $82   ; 
- D 1 - I - 0x033037 0C:B027: 86        .byte $86   ; 
- D 1 - I - 0x033038 0C:B028: 81        .byte $81   ; 
- D 1 - I - 0x033039 0C:B029: BC        .byte $BC   ; 
- D 1 - I - 0x03303A 0C:B02A: FF        .byte $FF   ; 



_off004_B02B_1D:
- D 1 - I - 0x03303B 0C:B02B: 74 21     .word $2174
- D 1 - I - 0x03303D 0C:B02D: 83        .byte $83   ; 
- D 1 - I - 0x03303E 0C:B02E: 81        .byte $81   ; 
- D 1 - I - 0x03303F 0C:B02F: 81        .byte $81   ; 
- D 1 - I - 0x033040 0C:B030: BC        .byte $BC   ; 
- D 1 - I - 0x033041 0C:B031: FF        .byte $FF   ; 



_off004_B032_1E:
- D 1 - I - 0x033042 0C:B032: 74 21     .word $2174
- D 1 - I - 0x033044 0C:B034: 80        .byte $80   ; 
- D 1 - I - 0x033045 0C:B035: BA        .byte $BA   ; 
- D 1 - I - 0x033046 0C:B036: BB        .byte $BB   ; 
- D 1 - I - 0x033047 0C:B037: 80        .byte $80   ; 
- D 1 - I - 0x033048 0C:B038: FF        .byte $FF   ; 



_off004_B039_23:
- D 1 - I - 0x033049 0C:B039: B4 20     .word $20B4
- D 1 - I - 0x03304B 0C:B03B: 91        .byte $91   ; 
- D 1 - I - 0x03304C 0C:B03C: 9C        .byte $9C   ; 
- D 1 - I - 0x03304D 0C:B03D: 8F        .byte $8F   ; 
- D 1 - I - 0x03304E 0C:B03E: 8F        .byte $8F   ; 
- D 1 - I - 0x03304F 0C:B03F: 98        .byte $98   ; 
- D 1 - I - 0x033050 0C:B040: 00        .byte $00   ; 
- D 1 - I - 0x033051 0C:B041: 00        .byte $00   ; 
- D 1 - I - 0x033052 0C:B042: 00        .byte $00   ; 
- D 1 - I - 0x033053 0C:B043: FF        .byte $FF   ; 



_off004_B044_24:
- D 1 - I - 0x033054 0C:B044: B4 20     .word $20B4
- D 1 - I - 0x033056 0C:B046: 99        .byte $99   ; 
- D 1 - I - 0x033057 0C:B047: 9C        .byte $9C   ; 
- D 1 - I - 0x033058 0C:B048: 93        .byte $93   ; 
- D 1 - I - 0x033059 0C:B049: 91        .byte $91   ; 
- D 1 - I - 0x03305A 0C:B04A: 93        .byte $93   ; 
- D 1 - I - 0x03305B 0C:B04B: 98        .byte $98   ; 
- D 1 - I - 0x03305C 0C:B04C: 8B        .byte $8B   ; 
- D 1 - I - 0x03305D 0C:B04D: 96        .byte $96   ; 
- D 1 - I - 0x03305E 0C:B04E: FF        .byte $FF   ; 



_off004_B04F_25:
- D 1 - I - 0x03305F 0C:B04F: B4 20     .word $20B4
- D 1 - I - 0x033061 0C:B051: 98        .byte $98   ; 
- D 1 - I - 0x033062 0C:B052: 93        .byte $93   ; 
- D 1 - I - 0x033063 0C:B053: 91        .byte $91   ; 
- D 1 - I - 0x033064 0C:B054: 92        .byte $92   ; 
- D 1 - I - 0x033065 0C:B055: 9E        .byte $9E   ; 
- D 1 - I - 0x033066 0C:B056: 00        .byte $00   ; 
- D 1 - I - 0x033067 0C:B057: 00        .byte $00   ; 
- D 1 - I - 0x033068 0C:B058: 00        .byte $00   ; 
- D 1 - I - 0x033069 0C:B059: FF        .byte $FF   ; 



