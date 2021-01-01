.segment "BANK_FF"
.include "copy_bank_ram.inc"
; 0x03C010-0x04000F

; DPCM
- D 2 - - A 0x03C010 0F:C000: FE        .byte $FE   ; 
- D 2 - - A 0x03C011 0F:C001: B6        .byte $B6   ; 
- D 0 - - A 0x03C012 0F:C002: AA        .byte $AA   ; 
- D 0 - - A 0x03C013 0F:C003: 18        .byte $18   ; 
- D 0 - - A 0x03C014 0F:C004: 00        .byte $00   ; 
- D 0 - - A 0x03C015 0F:C005: 00        .byte $00   ; 
- D 0 - - A 0x03C016 0F:C006: 72        .byte $72   ; 
- D 0 - - A 0x03C017 0F:C007: A6        .byte $A6   ; 
- D 0 - - A 0x03C018 0F:C008: FF        .byte $FF   ; 
- D 0 - - A 0x03C019 0F:C009: 7F        .byte $7F   ; 
- D 0 - - A 0x03C01A 0F:C00A: 32        .byte $32   ; 
- D 0 - - A 0x03C01B 0F:C00B: F7        .byte $F7   ; 
- D 0 - - A 0x03C01C 0F:C00C: F0        .byte $F0   ; 
- D 0 - - A 0x03C01D 0F:C00D: 91        .byte $91   ; 
- D 0 - - A 0x03C01E 0F:C00E: 3F        .byte $3F   ; 
- D 0 - - A 0x03C01F 0F:C00F: 20        .byte $20   ; 
- D 0 - - A 0x03C020 0F:C010: B5        .byte $B5   ; 
- D 0 - - A 0x03C021 0F:C011: 74        .byte $74   ; 
- D 0 - - A 0x03C022 0F:C012: A6        .byte $A6   ; 
- D 0 - - A 0x03C023 0F:C013: 59        .byte $59   ; 
- D 0 - - A 0x03C024 0F:C014: 63        .byte $63   ; 
- D 0 - - A 0x03C025 0F:C015: 00        .byte $00   ; 
- D 0 - - A 0x03C026 0F:C016: 00        .byte $00   ; 
- D 0 - - A 0x03C027 0F:C017: E0        .byte $E0   ; 
- D 0 - - A 0x03C028 0F:C018: 56        .byte $56   ; 
- D 0 - - A 0x03C029 0F:C019: DF        .byte $DF   ; 
- D 0 - - A 0x03C02A 0F:C01A: FF        .byte $FF   ; 
- D 0 - - A 0x03C02B 0F:C01B: FF        .byte $FF   ; 
- D 0 - - A 0x03C02C 0F:C01C: AD        .byte $AD   ; 
- D 0 - - A 0x03C02D 0F:C01D: AB        .byte $AB   ; 
- D 0 - - A 0x03C02E 0F:C01E: AA        .byte $AA   ; 
- D 0 - - A 0x03C02F 0F:C01F: 15        .byte $15   ; 
- D 0 - - A 0x03C030 0F:C020: 40        .byte $40   ; 
- D 0 - - A 0x03C031 0F:C021: 00        .byte $00   ; 
- D 0 - - A 0x03C032 0F:C022: 00        .byte $00   ; 
- D 0 - - A 0x03C033 0F:C023: A9        .byte $A9   ; 
- D 0 - - A 0x03C034 0F:C024: BA        .byte $BA   ; 
- D 0 - - A 0x03C035 0F:C025: AF        .byte $AF   ; 
- D 0 - - A 0x03C036 0F:C026: 6B        .byte $6B   ; 
- D 0 - - A 0x03C037 0F:C027: DA        .byte $DA   ; 
- D 0 - - A 0x03C038 0F:C028: 9F        .byte $9F   ; 
- D 0 - - A 0x03C039 0F:C029: DA        .byte $DA   ; 
- D 0 - - A 0x03C03A 0F:C02A: AC        .byte $AC   ; 
- D 0 - - A 0x03C03B 0F:C02B: D8        .byte $D8   ; 
- D 0 - - A 0x03C03C 0F:C02C: 55        .byte $55   ; 
- D 0 - - A 0x03C03D 0F:C02D: EB        .byte $EB   ; 
- D 0 - - A 0x03C03E 0F:C02E: 2A        .byte $2A   ; 
- D 0 - - A 0x03C03F 0F:C02F: 95        .byte $95   ; 
- D 0 - - A 0x03C040 0F:C030: 46        .byte $46   ; 
- D 0 - - A 0x03C041 0F:C031: C8        .byte $C8   ; 
- D 0 - - A 0x03C042 0F:C032: 44        .byte $44   ; 
- D 0 - - A 0x03C043 0F:C033: A8        .byte $A8   ; 
- D 0 - - A 0x03C044 0F:C034: 80        .byte $80   ; 
- D 0 - - A 0x03C045 0F:C035: 52        .byte $52   ; 
- D 0 - - A 0x03C046 0F:C036: B5        .byte $B5   ; 
- D 0 - - A 0x03C047 0F:C037: ED        .byte $ED   ; 
- D 0 - - A 0x03C048 0F:C038: FD        .byte $FD   ; 
- D 0 - - A 0x03C049 0F:C039: FF        .byte $FF   ; 
- D 0 - - A 0x03C04A 0F:C03A: B6        .byte $B6   ; 
- D 0 - - A 0x03C04B 0F:C03B: 57        .byte $57   ; 
- D 0 - - A 0x03C04C 0F:C03C: 52        .byte $52   ; 
- D 0 - - A 0x03C04D 0F:C03D: 83        .byte $83   ; 
- D 0 - - A 0x03C04E 0F:C03E: A8        .byte $A8   ; 
- D 0 - - A 0x03C04F 0F:C03F: 00        .byte $00   ; 
- D 0 - - A 0x03C050 0F:C040: A4        .byte $A4   ; 
- D 0 - - A 0x03C051 0F:C041: 94        .byte $94   ; 
- D 0 - - A 0x03C052 0F:C042: 52        .byte $52   ; 
- D 0 - - A 0x03C053 0F:C043: 4A        .byte $4A   ; 
- D 0 - - A 0x03C054 0F:C044: BB        .byte $BB   ; 
- D 0 - - A 0x03C055 0F:C045: B3        .byte $B3   ; 
- D 0 - - A 0x03C056 0F:C046: EB        .byte $EB   ; 
- D 0 - - A 0x03C057 0F:C047: AA        .byte $AA   ; 
- D 0 - - A 0x03C058 0F:C048: DA        .byte $DA   ; 
- D 0 - - A 0x03C059 0F:C049: EA        .byte $EA   ; 
- D 0 - - A 0x03C05A 0F:C04A: 6A        .byte $6A   ; 
- D 0 - - A 0x03C05B 0F:C04B: D5        .byte $D5   ; 
- D 0 - - A 0x03C05C 0F:C04C: 95        .byte $95   ; 
- D 0 - - A 0x03C05D 0F:C04D: AA        .byte $AA   ; 
- D 0 - - A 0x03C05E 0F:C04E: 25        .byte $25   ; 
- D 0 - - A 0x03C05F 0F:C04F: 55        .byte $55   ; 
- D 0 - - A 0x03C060 0F:C050: 22        .byte $22   ; 
- D 0 - - A 0x03C061 0F:C051: 12        .byte $12   ; 
- D 0 - - A 0x03C062 0F:C052: 01        .byte $01   ; 
- D 0 - - A 0x03C063 0F:C053: 52        .byte $52   ; 
- D 0 - - A 0x03C064 0F:C054: D5        .byte $D5   ; 
- D 0 - - A 0x03C065 0F:C055: DD        .byte $DD   ; 
- D 0 - - A 0x03C066 0F:C056: F6        .byte $F6   ; 
- D 0 - - A 0x03C067 0F:C057: BB        .byte $BB   ; 
- D 0 - - A 0x03C068 0F:C058: FA        .byte $FA   ; 
- D 0 - - A 0x03C069 0F:C059: AD        .byte $AD   ; 
- D 0 - - A 0x03C06A 0F:C05A: D6        .byte $D6   ; 
- D 0 - - A 0x03C06B 0F:C05B: 4A        .byte $4A   ; 
- D 0 - - A 0x03C06C 0F:C05C: 49        .byte $49   ; 
- D 0 - - A 0x03C06D 0F:C05D: 42        .byte $42   ; 
- D 0 - - A 0x03C06E 0F:C05E: 22        .byte $22   ; 
- D 0 - - A 0x03C06F 0F:C05F: 95        .byte $95   ; 
- D 0 - - A 0x03C070 0F:C060: 52        .byte $52   ; 
- D 0 - - A 0x03C071 0F:C061: 24        .byte $24   ; 
- D 0 - - A 0x03C072 0F:C062: 6B        .byte $6B   ; 
- D 0 - - A 0x03C073 0F:C063: 55        .byte $55   ; 
- D 0 - - A 0x03C074 0F:C064: 55        .byte $55   ; 
- D 0 - - A 0x03C075 0F:C065: DB        .byte $DB   ; 
- D 0 - - A 0x03C076 0F:C066: A6        .byte $A6   ; 
- D 0 - - A 0x03C077 0F:C067: B6        .byte $B6   ; 
- D 0 - - A 0x03C078 0F:C068: 6E        .byte $6E   ; 
- D 0 - - A 0x03C079 0F:C069: 6F        .byte $6F   ; 
- D 0 - - A 0x03C07A 0F:C06A: 55        .byte $55   ; 
- D 0 - - A 0x03C07B 0F:C06B: AD        .byte $AD   ; 
- D 0 - - A 0x03C07C 0F:C06C: 4A        .byte $4A   ; 
- D 0 - - A 0x03C07D 0F:C06D: AA        .byte $AA   ; 
- D 0 - - A 0x03C07E 0F:C06E: 44        .byte $44   ; 
- D 0 - - A 0x03C07F 0F:C06F: 12        .byte $12   ; 
- D 0 - - A 0x03C080 0F:C070: 11        .byte $11   ; 
- D 0 - - A 0x03C081 0F:C071: 49        .byte $49   ; 
- D 0 - - A 0x03C082 0F:C072: AA        .byte $AA   ; 
- D 0 - - A 0x03C083 0F:C073: 56        .byte $56   ; 
- D 0 - - A 0x03C084 0F:C074: AD        .byte $AD   ; 
- D 0 - - A 0x03C085 0F:C075: B5        .byte $B5   ; 
- D 0 - - A 0x03C086 0F:C076: BD        .byte $BD   ; 
- D 0 - - A 0x03C087 0F:C077: DB        .byte $DB   ; 
- D 0 - - A 0x03C088 0F:C078: EE        .byte $EE   ; 
- D 0 - - A 0x03C089 0F:C079: AA        .byte $AA   ; 
- D 0 - - A 0x03C08A 0F:C07A: AC        .byte $AC   ; 
- D 0 - - A 0x03C08B 0F:C07B: 4A        .byte $4A   ; 
- D 0 - - A 0x03C08C 0F:C07C: 25        .byte $25   ; 
- D 0 - - A 0x03C08D 0F:C07D: 49        .byte $49   ; 
- D 0 - - A 0x03C08E 0F:C07E: 89        .byte $89   ; 
- D 0 - - A 0x03C08F 0F:C07F: 42        .byte $42   ; 
- D 0 - - A 0x03C090 0F:C080: 4A        .byte $4A   ; 
- D 0 - - A 0x03C091 0F:C081: 55        .byte $55   ; 
- D 0 - - A 0x03C092 0F:C082: 55        .byte $55   ; 
- D 0 - - A 0x03C093 0F:C083: AA        .byte $AA   ; 
- D 0 - - A 0x03C094 0F:C084: 55        .byte $55   ; 
- D 0 - - A 0x03C095 0F:C085: ED        .byte $ED   ; 
- D 0 - - A 0x03C096 0F:C086: 76        .byte $76   ; 
- D 0 - - A 0x03C097 0F:C087: B7        .byte $B7   ; 
- D 0 - - A 0x03C098 0F:C088: D5        .byte $D5   ; 
- D 0 - - A 0x03C099 0F:C089: 5A        .byte $5A   ; 
- D 0 - - A 0x03C09A 0F:C08A: 55        .byte $55   ; 
- D 0 - - A 0x03C09B 0F:C08B: 55        .byte $55   ; 
- D 0 - - A 0x03C09C 0F:C08C: A9        .byte $A9   ; 
- D 0 - - A 0x03C09D 0F:C08D: 92        .byte $92   ; 
- D 0 - - A 0x03C09E 0F:C08E: 20        .byte $20   ; 
- D 0 - - A 0x03C09F 0F:C08F: 49        .byte $49   ; 
- D 0 - - A 0x03C0A0 0F:C090: 52        .byte $52   ; 
- D 0 - - A 0x03C0A1 0F:C091: A9        .byte $A9   ; 
- D 0 - - A 0x03C0A2 0F:C092: AA        .byte $AA   ; 
- D 0 - - A 0x03C0A3 0F:C093: 56        .byte $56   ; 
- D 0 - - A 0x03C0A4 0F:C094: B5        .byte $B5   ; 
- D 0 - - A 0x03C0A5 0F:C095: ED        .byte $ED   ; 
- D 0 - - A 0x03C0A6 0F:C096: EA        .byte $EA   ; 
- D 0 - - A 0x03C0A7 0F:C097: D6        .byte $D6   ; 
- D 0 - - A 0x03C0A8 0F:C098: B6        .byte $B6   ; 
- D 0 - - A 0x03C0A9 0F:C099: 55        .byte $55   ; 
- D 0 - - A 0x03C0AA 0F:C09A: 55        .byte $55   ; 
- D 0 - - A 0x03C0AB 0F:C09B: 55        .byte $55   ; 
- D 0 - - A 0x03C0AC 0F:C09C: 29        .byte $29   ; 
- D 0 - - A 0x03C0AD 0F:C09D: 92        .byte $92   ; 
- D 0 - - A 0x03C0AE 0F:C09E: 48        .byte $48   ; 
- D 0 - - A 0x03C0AF 0F:C09F: 52        .byte $52   ; 
- D 0 - - A 0x03C0B0 0F:C0A0: 2A        .byte $2A   ; 
- D 0 - - A 0x03C0B1 0F:C0A1: A5        .byte $A5   ; 
- D 0 - - A 0x03C0B2 0F:C0A2: 5A        .byte $5A   ; 
- D 0 - - A 0x03C0B3 0F:C0A3: 5A        .byte $5A   ; 
- D 0 - - A 0x03C0B4 0F:C0A4: AD        .byte $AD   ; 
- D 0 - - A 0x03C0B5 0F:C0A5: EE        .byte $EE   ; 
- D 0 - - A 0x03C0B6 0F:C0A6: AE        .byte $AE   ; 
- D 0 - - A 0x03C0B7 0F:C0A7: 6D        .byte $6D   ; 
- D 0 - - A 0x03C0B8 0F:C0A8: AB        .byte $AB   ; 
- D 0 - - A 0x03C0B9 0F:C0A9: AD        .byte $AD   ; 
- D 0 - - A 0x03C0BA 0F:C0AA: 4A        .byte $4A   ; 
- D 0 - - A 0x03C0BB 0F:C0AB: 29        .byte $29   ; 
- D 0 - - A 0x03C0BC 0F:C0AC: 49        .byte $49   ; 
- D 0 - - A 0x03C0BD 0F:C0AD: 89        .byte $89   ; 
- D 0 - - A 0x03C0BE 0F:C0AE: A4        .byte $A4   ; 
- D 0 - - A 0x03C0BF 0F:C0AF: A4        .byte $A4   ; 
- D 0 - - A 0x03C0C0 0F:C0B0: AA        .byte $AA   ; 
- D 0 - - A 0x03C0C1 0F:C0B1: 4A        .byte $4A   ; 
- D 0 - - A 0x03C0C2 0F:C0B2: B5        .byte $B5   ; 
- D 0 - - A 0x03C0C3 0F:C0B3: D2        .byte $D2   ; 
- D 0 - - A 0x03C0C4 0F:C0B4: DA        .byte $DA   ; 
- D 0 - - A 0x03C0C5 0F:C0B5: 5A        .byte $5A   ; 
- D 0 - - A 0x03C0C6 0F:C0B6: EB        .byte $EB   ; 
- D 0 - - A 0x03C0C7 0F:C0B7: B6        .byte $B6   ; 
- D 0 - - A 0x03C0C8 0F:C0B8: D5        .byte $D5   ; 
- D 0 - - A 0x03C0C9 0F:C0B9: 6A        .byte $6A   ; 
- D 0 - - A 0x03C0CA 0F:C0BA: 55        .byte $55   ; 
- D 0 - - A 0x03C0CB 0F:C0BB: 25        .byte $25   ; 
- D 0 - - A 0x03C0CC 0F:C0BC: 29        .byte $29   ; 
- D 0 - - A 0x03C0CD 0F:C0BD: 29        .byte $29   ; 
- D 0 - - A 0x03C0CE 0F:C0BE: 4A        .byte $4A   ; 
- D 0 - - A 0x03C0CF 0F:C0BF: 52        .byte $52   ; 
- D 0 - - A 0x03C0D0 0F:C0C0: 29        .byte $29   ; 
- D 0 - - A 0x03C0D1 0F:C0C1: A5        .byte $A5   ; 
- D 0 - - A 0x03C0D2 0F:C0C2: B2        .byte $B2   ; 
- D 0 - - A 0x03C0D3 0F:C0C3: 5A        .byte $5A   ; 
- D 0 - - A 0x03C0D4 0F:C0C4: DB        .byte $DB   ; 
- D 0 - - A 0x03C0D5 0F:C0C5: EE        .byte $EE   ; 
- D 0 - - A 0x03C0D6 0F:C0C6: D6        .byte $D6   ; 
- D 0 - - A 0x03C0D7 0F:C0C7: 5A        .byte $5A   ; 
- D 0 - - A 0x03C0D8 0F:C0C8: AB        .byte $AB   ; 
- D 0 - - A 0x03C0D9 0F:C0C9: 55        .byte $55   ; 
- D 0 - - A 0x03C0DA 0F:C0CA: AA        .byte $AA   ; 
- D 0 - - A 0x03C0DB 0F:C0CB: 92        .byte $92   ; 
- D 0 - - A 0x03C0DC 0F:C0CC: A4        .byte $A4   ; 
- D 0 - - A 0x03C0DD 0F:C0CD: 28        .byte $28   ; 
- D 0 - - A 0x03C0DE 0F:C0CE: A5        .byte $A5   ; 
- D 0 - - A 0x03C0DF 0F:C0CF: 54        .byte $54   ; 
- D 0 - - A 0x03C0E0 0F:C0D0: AA        .byte $AA   ; 
- D 0 - - A 0x03C0E1 0F:C0D1: AA        .byte $AA   ; 
- D 0 - - A 0x03C0E2 0F:C0D2: AA        .byte $AA   ; 
- D 0 - - A 0x03C0E3 0F:C0D3: 6A        .byte $6A   ; 
- D 0 - - A 0x03C0E4 0F:C0D4: B5        .byte $B5   ; 
- D 0 - - A 0x03C0E5 0F:C0D5: DA        .byte $DA   ; 
- D 0 - - A 0x03C0E6 0F:C0D6: DA        .byte $DA   ; 
- D 0 - - A 0x03C0E7 0F:C0D7: 56        .byte $56   ; 
- D 0 - - A 0x03C0E8 0F:C0D8: 5B        .byte $5B   ; 
- D 0 - - A 0x03C0E9 0F:C0D9: AB        .byte $AB   ; 
- D 0 - - A 0x03C0EA 0F:C0DA: A5        .byte $A5   ; 
- D 0 - - A 0x03C0EB 0F:C0DB: 52        .byte $52   ; 
- D 0 - - A 0x03C0EC 0F:C0DC: 49        .byte $49   ; 
- D 0 - - A 0x03C0ED 0F:C0DD: A2        .byte $A2   ; 
- D 0 - - A 0x03C0EE 0F:C0DE: 92        .byte $92   ; 
- D 0 - - A 0x03C0EF 0F:C0DF: 54        .byte $54   ; 
- D 0 - - A 0x03C0F0 0F:C0E0: 2A        .byte $2A   ; 
- D 0 - - A 0x03C0F1 0F:C0E1: 55        .byte $55   ; 
- D 0 - - A 0x03C0F2 0F:C0E2: 55        .byte $55   ; 
- D 0 - - A 0x03C0F3 0F:C0E3: B5        .byte $B5   ; 
- D 0 - - A 0x03C0F4 0F:C0E4: B5        .byte $B5   ; 
- D 0 - - A 0x03C0F5 0F:C0E5: AD        .byte $AD   ; 
- D 0 - - A 0x03C0F6 0F:C0E6: 6D        .byte $6D   ; 
- D 0 - - A 0x03C0F7 0F:C0E7: 5B        .byte $5B   ; 
- D 0 - - A 0x03C0F8 0F:C0E8: AB        .byte $AB   ; 
- D 0 - - A 0x03C0F9 0F:C0E9: AA        .byte $AA   ; 
- D 0 - - A 0x03C0FA 0F:C0EA: 2A        .byte $2A   ; 
- D 0 - - A 0x03C0FB 0F:C0EB: 25        .byte $25   ; 
- D 0 - - A 0x03C0FC 0F:C0EC: 29        .byte $29   ; 
- D 0 - - A 0x03C0FD 0F:C0ED: 2A        .byte $2A   ; 
- D 0 - - A 0x03C0FE 0F:C0EE: A9        .byte $A9   ; 
- D 0 - - A 0x03C0FF 0F:C0EF: 4A        .byte $4A   ; 
- D 0 - - A 0x03C100 0F:C0F0: A5        .byte $A5   ; 
- D 0 - - A 0x03C101 0F:C0F1: AA        .byte $AA   ; 
- D 0 - - A 0x03C102 0F:C0F2: AA        .byte $AA   ; 
- D 0 - - A 0x03C103 0F:C0F3: 5A        .byte $5A   ; 
- D 0 - - A 0x03C104 0F:C0F4: AD        .byte $AD   ; 
- D 0 - - A 0x03C105 0F:C0F5: B5        .byte $B5   ; 
- D 0 - - A 0x03C106 0F:C0F6: AE        .byte $AE   ; 
- D 0 - - A 0x03C107 0F:C0F7: B5        .byte $B5   ; 
- D 0 - - A 0x03C108 0F:C0F8: 6A        .byte $6A   ; 
- D 0 - - A 0x03C109 0F:C0F9: B5        .byte $B5   ; 
- D 0 - - A 0x03C10A 0F:C0FA: 2A        .byte $2A   ; 
- D 0 - - A 0x03C10B 0F:C0FB: A5        .byte $A5   ; 
- D 0 - - A 0x03C10C 0F:C0FC: A4        .byte $A4   ; 
- D 0 - - A 0x03C10D 0F:C0FD: A8        .byte $A8   ; 
- D 0 - - A 0x03C10E 0F:C0FE: 52        .byte $52   ; 
- D 0 - - A 0x03C10F 0F:C0FF: A9        .byte $A9   ; 
- D 0 - - A 0x03C110 0F:C100: 94        .byte $94   ; 
- D 0 - - A 0x03C111 0F:C101: AA        .byte $AA   ; 
- D 0 - - A 0x03C112 0F:C102: 54        .byte $54   ; 
- D 0 - - A 0x03C113 0F:C103: AD        .byte $AD   ; 
- D 0 - - A 0x03C114 0F:C104: B6        .byte $B6   ; 
- D 0 - - A 0x03C115 0F:C105: AD        .byte $AD   ; 
- D 0 - - A 0x03C116 0F:C106: AD        .byte $AD   ; 
- D 0 - - A 0x03C117 0F:C107: B5        .byte $B5   ; 
- D 0 - - A 0x03C118 0F:C108: 5A        .byte $5A   ; 
- D 0 - - A 0x03C119 0F:C109: AB        .byte $AB   ; 
- D 0 - - A 0x03C11A 0F:C10A: AA        .byte $AA   ; 
- D 0 - - A 0x03C11B 0F:C10B: A4        .byte $A4   ; 
- D 0 - - A 0x03C11C 0F:C10C: A4        .byte $A4   ; 
- D 0 - - A 0x03C11D 0F:C10D: 28        .byte $28   ; 
- D 0 - - A 0x03C11E 0F:C10E: A5        .byte $A5   ; 
- D 0 - - A 0x03C11F 0F:C10F: 54        .byte $54   ; 
- D 0 - - A 0x03C120 0F:C110: 55        .byte $55   ; 
- D 0 - - A 0x03C121 0F:C111: 55        .byte $55   ; 
- D 0 - - A 0x03C122 0F:C112: 55        .byte $55   ; 
- D 0 - - A 0x03C123 0F:C113: 55        .byte $55   ; 
- D 0 - - A 0x03C124 0F:C114: 6B        .byte $6B   ; 
- D 0 - - A 0x03C125 0F:C115: AD        .byte $AD   ; 
- D 0 - - A 0x03C126 0F:C116: BA        .byte $BA   ; 
- D 0 - - A 0x03C127 0F:C117: 56        .byte $56   ; 
- D 0 - - A 0x03C128 0F:C118: 6B        .byte $6B   ; 
- D 0 - - A 0x03C129 0F:C119: 55        .byte $55   ; 
- D 0 - - A 0x03C12A 0F:C11A: 55        .byte $55   ; 
- D 0 - - A 0x03C12B 0F:C11B: 29        .byte $29   ; 
- D 0 - - A 0x03C12C 0F:C11C: 25        .byte $25   ; 
- D 0 - - A 0x03C12D 0F:C11D: A9        .byte $A9   ; 
- D 0 - - A 0x03C12E 0F:C11E: 52        .byte $52   ; 
- D 0 - - A 0x03C12F 0F:C11F: A9        .byte $A9   ; 
- D 0 - - A 0x03C130 0F:C120: 52        .byte $52   ; 
- D 0 - - A 0x03C131 0F:C121: 55        .byte $55   ; 
- D 0 - - A 0x03C132 0F:C122: 55        .byte $55   ; 
- D 0 - - A 0x03C133 0F:C123: 55        .byte $55   ; 
- D 0 - - A 0x03C134 0F:C124: B5        .byte $B5   ; 
- D 0 - - A 0x03C135 0F:C125: DA        .byte $DA   ; 
- D 0 - - A 0x03C136 0F:C126: EA        .byte $EA   ; 
- D 0 - - A 0x03C137 0F:C127: B6        .byte $B6   ; 
- D 0 - - A 0x03C138 0F:C128: 5A        .byte $5A   ; 
- D 0 - - A 0x03C139 0F:C129: B5        .byte $B5   ; 
- D 0 - - A 0x03C13A 0F:C12A: 52        .byte $52   ; 
- D 0 - - A 0x03C13B 0F:C12B: 29        .byte $29   ; 
- D 0 - - A 0x03C13C 0F:C12C: A5        .byte $A5   ; 
- D 0 - - A 0x03C13D 0F:C12D: A4        .byte $A4   ; 
- D 0 - - A 0x03C13E 0F:C12E: 4A        .byte $4A   ; 
- D 0 - - A 0x03C13F 0F:C12F: 29        .byte $29   ; 
- D 0 - - A 0x03C140 0F:C130: 55        .byte $55   ; 
- D 0 - - A 0x03C141 0F:C131: 55        .byte $55   ; 
- D 0 - - A 0x03C142 0F:C132: 55        .byte $55   ; 
- D 0 - - A 0x03C143 0F:C133: 55        .byte $55   ; 
- D 0 - - A 0x03C144 0F:C134: AB        .byte $AB   ; 
- D 0 - - A 0x03C145 0F:C135: B5        .byte $B5   ; 
- D 0 - - A 0x03C146 0F:C136: BA        .byte $BA   ; 
- D 0 - - A 0x03C147 0F:C137: D6        .byte $D6   ; 
- D 0 - - A 0x03C148 0F:C138: 5A        .byte $5A   ; 
- D 0 - - A 0x03C149 0F:C139: 55        .byte $55   ; 
- D 0 - - A 0x03C14A 0F:C13A: 95        .byte $95   ; 
- D 0 - - A 0x03C14B 0F:C13B: 4A        .byte $4A   ; 
- D 0 - - A 0x03C14C 0F:C13C: 29        .byte $29   ; 
- D 0 - - A 0x03C14D 0F:C13D: A9        .byte $A9   ; 
- D 0 - - A 0x03C14E 0F:C13E: 52        .byte $52   ; 
- D 0 - - A 0x03C14F 0F:C13F: A5        .byte $A5   ; 
- D 0 - - A 0x03C150 0F:C140: AA        .byte $AA   ; 
- D 0 - - A 0x03C151 0F:C141: 4A        .byte $4A   ; 
- D 0 - - A 0x03C152 0F:C142: 55        .byte $55   ; 
- D 0 - - A 0x03C153 0F:C143: AD        .byte $AD   ; 
- D 0 - - A 0x03C154 0F:C144: AA        .byte $AA   ; 
- D 0 - - A 0x03C155 0F:C145: D5        .byte $D5   ; 
- D 0 - - A 0x03C156 0F:C146: AA        .byte $AA   ; 
- D 0 - - A 0x03C157 0F:C147: AE        .byte $AE   ; 
- D 0 - - A 0x03C158 0F:C148: B5        .byte $B5   ; 
- D 0 - - A 0x03C159 0F:C149: 5A        .byte $5A   ; 
- D 0 - - A 0x03C15A 0F:C14A: 55        .byte $55   ; 
- D 0 - - A 0x03C15B 0F:C14B: A5        .byte $A5   ; 
- D 0 - - A 0x03C15C 0F:C14C: 52        .byte $52   ; 
- D 0 - - A 0x03C15D 0F:C14D: 4A        .byte $4A   ; 
- D 0 - - A 0x03C15E 0F:C14E: 2A        .byte $2A   ; 
- D 0 - - A 0x03C15F 0F:C14F: A5        .byte $A5   ; 
- D 0 - - A 0x03C160 0F:C150: 52        .byte $52   ; 
- D 0 - - A 0x03C161 0F:C151: 55        .byte $55   ; 
- D 0 - - A 0x03C162 0F:C152: 55        .byte $55   ; 
- D 0 - - A 0x03C163 0F:C153: 55        .byte $55   ; 
- D 0 - - A 0x03C164 0F:C154: AD        .byte $AD   ; 
- D 0 - - A 0x03C165 0F:C155: D6        .byte $D6   ; 
- D 0 - - A 0x03C166 0F:C156: AA        .byte $AA   ; 
- D 0 - - A 0x03C167 0F:C157: 6D        .byte $6D   ; 
- D 0 - - A 0x03C168 0F:C158: 6D        .byte $6D   ; 
- D 0 - - A 0x03C169 0F:C159: 55        .byte $55   ; 
- D 0 - - A 0x03C16A 0F:C15A: 55        .byte $55   ; 
- D 0 - - A 0x03C16B 0F:C15B: 2A        .byte $2A   ; 
- D 0 - - A 0x03C16C 0F:C15C: A5        .byte $A5   ; 
- D 0 - - A 0x03C16D 0F:C15D: A8        .byte $A8   ; 
- D 0 - - A 0x03C16E 0F:C15E: 52        .byte $52   ; 
- D 0 - - A 0x03C16F 0F:C15F: 95        .byte $95   ; 
- D 0 - - A 0x03C170 0F:C160: AA        .byte $AA   ; 
- D 0 - - A 0x03C171 0F:C161: AA        .byte $AA   ; 
- D 0 - - A 0x03C172 0F:C162: AA        .byte $AA   ; 
- D 0 - - A 0x03C173 0F:C163: AA        .byte $AA   ; 
- D 0 - - A 0x03C174 0F:C164: AA        .byte $AA   ; 
- D 0 - - A 0x03C175 0F:C165: 5A        .byte $5A   ; 
- D 0 - - A 0x03C176 0F:C166: B5        .byte $B5   ; 
- D 0 - - A 0x03C177 0F:C167: DA        .byte $DA   ; 
- D 0 - - A 0x03C178 0F:C168: 5A        .byte $5A   ; 
- D 0 - - A 0x03C179 0F:C169: AB        .byte $AB   ; 
- D 0 - - A 0x03C17A 0F:C16A: 55        .byte $55   ; 
- D 0 - - A 0x03C17B 0F:C16B: A5        .byte $A5   ; 
- D 0 - - A 0x03C17C 0F:C16C: 52        .byte $52   ; 
- D 0 - - A 0x03C17D 0F:C16D: 4A        .byte $4A   ; 
- D 0 - - A 0x03C17E 0F:C16E: AA        .byte $AA   ; 
- D 0 - - A 0x03C17F 0F:C16F: 52        .byte $52   ; 
- D 0 - - A 0x03C180 0F:C170: A5        .byte $A5   ; 
- D 0 - - A 0x03C181 0F:C171: AA        .byte $AA   ; 
- D 0 - - A 0x03C182 0F:C172: 2A        .byte $2A   ; 
- D 0 - - A 0x03C183 0F:C173: 55        .byte $55   ; 
- D 0 - - A 0x03C184 0F:C174: AB        .byte $AB   ; 
- D 0 - - A 0x03C185 0F:C175: 5A        .byte $5A   ; 
- D 0 - - A 0x03C186 0F:C176: AD        .byte $AD   ; 
- D 0 - - A 0x03C187 0F:C177: EA        .byte $EA   ; 
- D 0 - - A 0x03C188 0F:C178: 5A        .byte $5A   ; 
- D 0 - - A 0x03C189 0F:C179: AB        .byte $AB   ; 
- D 0 - - A 0x03C18A 0F:C17A: 55        .byte $55   ; 
- D 0 - - A 0x03C18B 0F:C17B: A5        .byte $A5   ; 
- D 0 - - A 0x03C18C 0F:C17C: 52        .byte $52   ; 
- D 0 - - A 0x03C18D 0F:C17D: 92        .byte $92   ; 
- D 0 - - A 0x03C18E 0F:C17E: AA        .byte $AA   ; 
- D 0 - - A 0x03C18F 0F:C17F: 52        .byte $52   ; 
- D 0 - - A 0x03C190 0F:C180: A5        .byte $A5   ; 
- D 0 - - A 0x03C191 0F:C181: AA        .byte $AA   ; 
- D 0 - - A 0x03C192 0F:C182: AA        .byte $AA   ; 
- D 0 - - A 0x03C193 0F:C183: AA        .byte $AA   ; 
- D 0 - - A 0x03C194 0F:C184: AA        .byte $AA   ; 
- D 0 - - A 0x03C195 0F:C185: 55        .byte $55   ; 
- D 0 - - A 0x03C196 0F:C186: AD        .byte $AD   ; 
- D 0 - - A 0x03C197 0F:C187: 6A        .byte $6A   ; 
- D 0 - - A 0x03C198 0F:C188: 6B        .byte $6B   ; 
- D 0 - - A 0x03C199 0F:C189: AD        .byte $AD   ; 
- D 0 - - A 0x03C19A 0F:C18A: AA        .byte $AA   ; 
- D 0 - - A 0x03C19B 0F:C18B: 2A        .byte $2A   ; 
- D 0 - - A 0x03C19C 0F:C18C: 55        .byte $55   ; 
- D 0 - - A 0x03C19D 0F:C18D: 4A        .byte $4A   ; 
- D 0 - - A 0x03C19E 0F:C18E: A9        .byte $A9   ; 
- D 0 - - A 0x03C19F 0F:C18F: 2A        .byte $2A   ; 
- D 0 - - A 0x03C1A0 0F:C190: 55        .byte $55   ; 
- D 0 - - A 0x03C1A1 0F:C191: 95        .byte $95   ; 
- D 0 - - A 0x03C1A2 0F:C192: AA        .byte $AA   ; 
- D 0 - - A 0x03C1A3 0F:C193: AA        .byte $AA   ; 
- D 0 - - A 0x03C1A4 0F:C194: AA        .byte $AA   ; 
- D 0 - - A 0x03C1A5 0F:C195: AA        .byte $AA   ; 
- D 0 - - A 0x03C1A6 0F:C196: 56        .byte $56   ; 
- D 0 - - A 0x03C1A7 0F:C197: AD        .byte $AD   ; 
- D 0 - - A 0x03C1A8 0F:C198: AE        .byte $AE   ; 
- D 0 - - A 0x03C1A9 0F:C199: D5        .byte $D5   ; 
- D 0 - - A 0x03C1AA 0F:C19A: AA        .byte $AA   ; 
- D 0 - - A 0x03C1AB 0F:C19B: AA        .byte $AA   ; 
- D 0 - - A 0x03C1AC 0F:C19C: 4A        .byte $4A   ; 
- D 0 - - A 0x03C1AD 0F:C19D: A5        .byte $A5   ; 
- D 0 - - A 0x03C1AE 0F:C19E: A4        .byte $A4   ; 
- D 0 - - A 0x03C1AF 0F:C19F: 4A        .byte $4A   ; 
- D 0 - - A 0x03C1B0 0F:C1A0: 95        .byte $95   ; 
- D 0 - - A 0x03C1B1 0F:C1A1: AA        .byte $AA   ; 
- D 0 - - A 0x03C1B2 0F:C1A2: AA        .byte $AA   ; 
- D 0 - - A 0x03C1B3 0F:C1A3: AA        .byte $AA   ; 
- D 0 - - A 0x03C1B4 0F:C1A4: AA        .byte $AA   ; 
- D 0 - - A 0x03C1B5 0F:C1A5: 6A        .byte $6A   ; 
- D 0 - - A 0x03C1B6 0F:C1A6: B5        .byte $B5   ; 
- D 0 - - A 0x03C1B7 0F:C1A7: AA        .byte $AA   ; 
- D 0 - - A 0x03C1B8 0F:C1A8: AD        .byte $AD   ; 
- D 0 - - A 0x03C1B9 0F:C1A9: 55        .byte $55   ; 
- D 0 - - A 0x03C1BA 0F:C1AA: AB        .byte $AB   ; 
- D 0 - - A 0x03C1BB 0F:C1AB: 52        .byte $52   ; 
- D 0 - - A 0x03C1BC 0F:C1AC: 55        .byte $55   ; 
- D 0 - - A 0x03C1BD 0F:C1AD: 2A        .byte $2A   ; 
- D 0 - - A 0x03C1BE 0F:C1AE: A5        .byte $A5   ; 
- D 0 - - A 0x03C1BF 0F:C1AF: AA        .byte $AA   ; 
- D 0 - - A 0x03C1C0 0F:C1B0: 52        .byte $52   ; 
- D 0 - - A 0x03C1C1 0F:C1B1: 55        .byte $55   ; 
- D 0 - - A 0x03C1C2 0F:C1B2: 55        .byte $55   ; 
- D 0 - - A 0x03C1C3 0F:C1B3: 95        .byte $95   ; 
- D 0 - - A 0x03C1C4 0F:C1B4: AA        .byte $AA   ; 
- D 0 - - A 0x03C1C5 0F:C1B5: AA        .byte $AA   ; 
- D 0 - - A 0x03C1C6 0F:C1B6: 55        .byte $55   ; 
- D 0 - - A 0x03C1C7 0F:C1B7: AB        .byte $AB   ; 
- D 0 - - A 0x03C1C8 0F:C1B8: DA        .byte $DA   ; 
- D 0 - - A 0x03C1C9 0F:C1B9: AA        .byte $AA   ; 
- D 0 - - A 0x03C1CA 0F:C1BA: 55        .byte $55   ; 
- D 0 - - A 0x03C1CB 0F:C1BB: D5        .byte $D5   ; 
- D 0 - - A 0x03C1CC 0F:C1BC: 52        .byte $52   ; 
- D 0 - - A 0x03C1CD 0F:C1BD: 55        .byte $55   ; 
- D 0 - - A 0x03C1CE 0F:C1BE: AA        .byte $AA   ; 
- D 0 - - A 0x03C1CF 0F:C1BF: A4        .byte $A4   ; 
- D 0 - - A 0x03C1D0 0F:C1C0: 83        .byte $83   ; 
- D 0 - - A 0x03C1D1 0F:C1C1: FF        .byte $FF   ; 
- D 0 - - A 0x03C1D2 0F:C1C2: 3F        .byte $3F   ; 
- D 0 - - A 0x03C1D3 0F:C1C3: 1E        .byte $1E   ; 
- D 0 - - A 0x03C1D4 0F:C1C4: 33        .byte $33   ; 
- D 0 - - A 0x03C1D5 0F:C1C5: 03        .byte $03   ; 
- D 0 - - A 0x03C1D6 0F:C1C6: 00        .byte $00   ; 
- D 0 - - A 0x03C1D7 0F:C1C7: 60        .byte $60   ; 
- D 0 - - A 0x03C1D8 0F:C1C8: F8        .byte $F8   ; 
- D 0 - - A 0x03C1D9 0F:C1C9: 00        .byte $00   ; 
- D 0 - - A 0x03C1DA 0F:C1CA: C7        .byte $C7   ; 
- D 0 - - A 0x03C1DB 0F:C1CB: F9        .byte $F9   ; 
- D 0 - - A 0x03C1DC 0F:C1CC: F0        .byte $F0   ; 
- D 0 - - A 0x03C1DD 0F:C1CD: 83        .byte $83   ; 
- D 0 - - A 0x03C1DE 0F:C1CE: 99        .byte $99   ; 
- D 0 - - A 0x03C1DF 0F:C1CF: 99        .byte $99   ; 
- D 0 - - A 0x03C1E0 0F:C1D0: 39        .byte $39   ; 
- D 0 - - A 0x03C1E1 0F:C1D1: E7        .byte $E7   ; 
- D 0 - - A 0x03C1E2 0F:C1D2: FF        .byte $FF   ; 
- D 0 - - A 0x03C1E3 0F:C1D3: FF        .byte $FF   ; 
- D 0 - - A 0x03C1E4 0F:C1D4: 8F        .byte $8F   ; 
- D 0 - - A 0x03C1E5 0F:C1D5: 19        .byte $19   ; 
- D 0 - - A 0x03C1E6 0F:C1D6: 00        .byte $00   ; 
- D 0 - - A 0x03C1E7 0F:C1D7: CE        .byte $CE   ; 
- D 0 - - A 0x03C1E8 0F:C1D8: C3        .byte $C3   ; 
- D 0 - - A 0x03C1E9 0F:C1D9: 3E        .byte $3E   ; 
- D 0 - - A 0x03C1EA 0F:C1DA: FC        .byte $FC   ; 
- D 0 - - A 0x03C1EB 0F:C1DB: F0        .byte $F0   ; 
- D 0 - - A 0x03C1EC 0F:C1DC: 18        .byte $18   ; 
- D 0 - - A 0x03C1ED 0F:C1DD: 20        .byte $20   ; 
- D 0 - - A 0x03C1EE 0F:C1DE: 78        .byte $78   ; 
- D 0 - - A 0x03C1EF 0F:C1DF: 00        .byte $00   ; 
- D 0 - - A 0x03C1F0 0F:C1E0: 80        .byte $80   ; 
- D 0 - - A 0x03C1F1 0F:C1E1: 99        .byte $99   ; 
- D 0 - - A 0x03C1F2 0F:C1E2: 33        .byte $33   ; 
- D 0 - - A 0x03C1F3 0F:C1E3: FB        .byte $FB   ; 
- D 0 - - A 0x03C1F4 0F:C1E4: 3F        .byte $3F   ; 
- D 0 - - A 0x03C1F5 0F:C1E5: F0        .byte $F0   ; 
- D 0 - - A 0x03C1F6 0F:C1E6: 07        .byte $07   ; 
- D 0 - - A 0x03C1F7 0F:C1E7: 67        .byte $67   ; 
- D 0 - - A 0x03C1F8 0F:C1E8: E0        .byte $E0   ; 
- D 0 - - A 0x03C1F9 0F:C1E9: FB        .byte $FB   ; 
- D 0 - - A 0x03C1FA 0F:C1EA: FF        .byte $FF   ; 
- D 0 - - A 0x03C1FB 0F:C1EB: 8F        .byte $8F   ; 
- D 0 - - A 0x03C1FC 0F:C1EC: 71        .byte $71   ; 
- D 0 - - A 0x03C1FD 0F:C1ED: CC        .byte $CC   ; 
- D 0 - - A 0x03C1FE 0F:C1EE: 98        .byte $98   ; 
- D 0 - - A 0x03C1FF 0F:C1EF: 19        .byte $19   ; 
- D 0 - - A 0x03C200 0F:C1F0: 13        .byte $13   ; 
- D 0 - - A 0x03C201 0F:C1F1: C0        .byte $C0   ; 
- D 0 - - A 0x03C202 0F:C1F2: 10        .byte $10   ; 
- D 0 - - A 0x03C203 0F:C1F3: 00        .byte $00   ; 
- D 0 - - A 0x03C204 0F:C1F4: BC        .byte $BC   ; 
- D 0 - - A 0x03C205 0F:C1F5: F3        .byte $F3   ; 
- D 0 - - A 0x03C206 0F:C1F6: C1        .byte $C1   ; 
- D 0 - - A 0x03C207 0F:C1F7: FF        .byte $FF   ; 
- D 0 - - A 0x03C208 0F:C1F8: 01        .byte $01   ; 
- D 0 - - A 0x03C209 0F:C1F9: 78        .byte $78   ; 
- D 0 - - A 0x03C20A 0F:C1FA: C4        .byte $C4   ; 
- D 0 - - A 0x03C20B 0F:C1FB: EC        .byte $EC   ; 
- D 0 - - A 0x03C20C 0F:C1FC: FE        .byte $FE   ; 
- D 0 - - A 0x03C20D 0F:C1FD: C1        .byte $C1   ; 
- D 0 - - A 0x03C20E 0F:C1FE: FE        .byte $FE   ; 
- D 0 - - A 0x03C20F 0F:C1FF: 3F        .byte $3F   ; 
- D 0 - - A 0x03C210 0F:C200: 98        .byte $98   ; 
- D 0 - - A 0x03C211 0F:C201: 77        .byte $77   ; 
- D 0 - - A 0x03C212 0F:C202: C3        .byte $C3   ; 
- D 0 - - A 0x03C213 0F:C203: 19        .byte $19   ; 
- D 0 - - A 0x03C214 0F:C204: C0        .byte $C0   ; 
- D 0 - - A 0x03C215 0F:C205: 03        .byte $03   ; 
- D 0 - - A 0x03C216 0F:C206: F3        .byte $F3   ; 
- D 0 - - A 0x03C217 0F:C207: F8        .byte $F8   ; 
- D 0 - - A 0x03C218 0F:C208: 07        .byte $07   ; 
- D 0 - - A 0x03C219 0F:C209: C0        .byte $C0   ; 
- D 0 - - A 0x03C21A 0F:C20A: 63        .byte $63   ; 
- D 0 - - A 0x03C21B 0F:C20B: 00        .byte $00   ; 
- D 0 - - A 0x03C21C 0F:C20C: 0C        .byte $0C   ; 
- D 0 - - A 0x03C21D 0F:C20D: 9F        .byte $9F   ; 
- D 0 - - A 0x03C21E 0F:C20E: 70        .byte $70   ; 
- D 0 - - A 0x03C21F 0F:C20F: EE        .byte $EE   ; 
- D 0 - - A 0x03C220 0F:C210: E0        .byte $E0   ; 
- D 0 - - A 0x03C221 0F:C211: C9        .byte $C9   ; 
- D 0 - - A 0x03C222 0F:C212: 67        .byte $67   ; 
- D 0 - - A 0x03C223 0F:C213: F8        .byte $F8   ; 
- D 0 - - A 0x03C224 0F:C214: FD        .byte $FD   ; 
- D 0 - - A 0x03C225 0F:C215: FF        .byte $FF   ; 
- D 0 - - A 0x03C226 0F:C216: 30        .byte $30   ; 
- D 0 - - A 0x03C227 0F:C217: 0E        .byte $0E   ; 
- D 0 - - A 0x03C228 0F:C218: 63        .byte $63   ; 
- D 0 - - A 0x03C229 0F:C219: C6        .byte $C6   ; 
- D 0 - - A 0x03C22A 0F:C21A: 1B        .byte $1B   ; 
- D 0 - - A 0x03C22B 0F:C21B: 8F        .byte $8F   ; 
- D 0 - - A 0x03C22C 0F:C21C: E3        .byte $E3   ; 
- D 0 - - A 0x03C22D 0F:C21D: 40        .byte $40   ; 
- D 0 - - A 0x03C22E 0F:C21E: 0C        .byte $0C   ; 
- D 0 - - A 0x03C22F 0F:C21F: C7        .byte $C7   ; 
- D 0 - - A 0x03C230 0F:C220: 00        .byte $00   ; 
- D 0 - - A 0x03C231 0F:C221: 07        .byte $07   ; 
- D 0 - - A 0x03C232 0F:C222: 87        .byte $87   ; 
- D 0 - - A 0x03C233 0F:C223: 87        .byte $87   ; 
- D 0 - - A 0x03C234 0F:C224: 39        .byte $39   ; 
- D 0 - - A 0x03C235 0F:C225: 1F        .byte $1F   ; 
- D 0 - - A 0x03C236 0F:C226: DE        .byte $DE   ; 
- D 0 - - A 0x03C237 0F:C227: 97        .byte $97   ; 
- D 0 - - A 0x03C238 0F:C228: 70        .byte $70   ; 
- D 0 - - A 0x03C239 0F:C229: B8        .byte $B8   ; 
- D 0 - - A 0x03C23A 0F:C22A: 83        .byte $83   ; 
- D 0 - - A 0x03C23B 0F:C22B: DF        .byte $DF   ; 
- D 0 - - A 0x03C23C 0F:C22C: DC        .byte $DC   ; 
- D 0 - - A 0x03C23D 0F:C22D: 79        .byte $79   ; 
- D 0 - - A 0x03C23E 0F:C22E: 7C        .byte $7C   ; 
- D 0 - - A 0x03C23F 0F:C22F: 3C        .byte $3C   ; 
- D 0 - - A 0x03C240 0F:C230: 1C        .byte $1C   ; 
- D 0 - - A 0x03C241 0F:C231: 27        .byte $27   ; 
- D 0 - - A 0x03C242 0F:C232: F3        .byte $F3   ; 
- D 0 - - A 0x03C243 0F:C233: 00        .byte $00   ; 
- D 0 - - A 0x03C244 0F:C234: 6F        .byte $6F   ; 
- D 0 - - A 0x03C245 0F:C235: 10        .byte $10   ; 
- D 0 - - A 0x03C246 0F:C236: 8E        .byte $8E   ; 
- D 0 - - A 0x03C247 0F:C237: 08        .byte $08   ; 
- D 0 - - A 0x03C248 0F:C238: 7F        .byte $7F   ; 
- D 0 - - A 0x03C249 0F:C239: 60        .byte $60   ; 
- D 0 - - A 0x03C24A 0F:C23A: 13        .byte $13   ; 
- D 0 - - A 0x03C24B 0F:C23B: 1E        .byte $1E   ; 
- D 0 - - A 0x03C24C 0F:C23C: 1E        .byte $1E   ; 
- D 0 - - A 0x03C24D 0F:C23D: 1E        .byte $1E   ; 
- D 0 - - A 0x03C24E 0F:C23E: E6        .byte $E6   ; 
- D 0 - - A 0x03C24F 0F:C23F: 3D        .byte $3D   ; 
- D 0 - - A 0x03C250 0F:C240: 9E        .byte $9E   ; 
- D 0 - - A 0x03C251 0F:C241: C7        .byte $C7   ; 
- D 0 - - A 0x03C252 0F:C242: DF        .byte $DF   ; 
- D 0 - - A 0x03C253 0F:C243: 71        .byte $71   ; 
- D 0 - - A 0x03C254 0F:C244: E6        .byte $E6   ; 
- D 0 - - A 0x03C255 0F:C245: A0        .byte $A0   ; 
- D 0 - - A 0x03C256 0F:C246: 0B        .byte $0B   ; 
- D 0 - - A 0x03C257 0F:C247: 26        .byte $26   ; 
- D 0 - - A 0x03C258 0F:C248: 86        .byte $86   ; 
- D 0 - - A 0x03C259 0F:C249: C7        .byte $C7   ; 
- D 0 - - A 0x03C25A 0F:C24A: 73        .byte $73   ; 
- D 0 - - A 0x03C25B 0F:C24B: F8        .byte $F8   ; 
- D 0 - - A 0x03C25C 0F:C24C: F8        .byte $F8   ; 
- D 0 - - A 0x03C25D 0F:C24D: 00        .byte $00   ; 
- D 0 - - A 0x03C25E 0F:C24E: B3        .byte $B3   ; 
- D 0 - - A 0x03C25F 0F:C24F: C0        .byte $C0   ; 
- D 0 - - A 0x03C260 0F:C250: 98        .byte $98   ; 
- D 0 - - A 0x03C261 0F:C251: C3        .byte $C3   ; 
- D 0 - - A 0x03C262 0F:C252: 3D        .byte $3D   ; 
- D 0 - - A 0x03C263 0F:C253: E3        .byte $E3   ; 
- D 0 - - A 0x03C264 0F:C254: C6        .byte $C6   ; 
- D 0 - - A 0x03C265 0F:C255: C5        .byte $C5   ; 
- D 0 - - A 0x03C266 0F:C256: 31        .byte $31   ; 
- D 0 - - A 0x03C267 0F:C257: E7        .byte $E7   ; 
- D 0 - - A 0x03C268 0F:C258: B1        .byte $B1   ; 
- D 0 - - A 0x03C269 0F:C259: F1        .byte $F1   ; 
- D 0 - - A 0x03C26A 0F:C25A: 79        .byte $79   ; 
- D 0 - - A 0x03C26B 0F:C25B: 78        .byte $78   ; 
- D 0 - - A 0x03C26C 0F:C25C: CE        .byte $CE   ; 
- D 0 - - A 0x03C26D 0F:C25D: 87        .byte $87   ; 
- D 0 - - A 0x03C26E 0F:C25E: 9B        .byte $9B   ; 
- D 0 - - A 0x03C26F 0F:C25F: 83        .byte $83   ; 
- D 0 - - A 0x03C270 0F:C260: 06        .byte $06   ; 
- D 0 - - A 0x03C271 0F:C261: 01        .byte $01   ; 
- D 0 - - A 0x03C272 0F:C262: 0E        .byte $0E   ; 
- D 0 - - A 0x03C273 0F:C263: 47        .byte $47   ; 
- D 0 - - A 0x03C274 0F:C264: 8E        .byte $8E   ; 
- D 0 - - A 0x03C275 0F:C265: 8F        .byte $8F   ; 
- D 0 - - A 0x03C276 0F:C266: 39        .byte $39   ; 
- D 0 - - A 0x03C277 0F:C267: 07        .byte $07   ; 
- D 0 - - A 0x03C278 0F:C268: EF        .byte $EF   ; 
- D 0 - - A 0x03C279 0F:C269: 98        .byte $98   ; 
- D 0 - - A 0x03C27A 0F:C26A: 73        .byte $73   ; 
- D 0 - - A 0x03C27B 0F:C26B: 86        .byte $86   ; 
- D 0 - - A 0x03C27C 0F:C26C: 93        .byte $93   ; 
- D 0 - - A 0x03C27D 0F:C26D: 87        .byte $87   ; 
- D 0 - - A 0x03C27E 0F:C26E: C7        .byte $C7   ; 
- D 0 - - A 0x03C27F 0F:C26F: 39        .byte $39   ; 
- D 0 - - A 0x03C280 0F:C270: F6        .byte $F6   ; 
- D 0 - - A 0x03C281 0F:C271: CC        .byte $CC   ; 
- D 0 - - A 0x03C282 0F:C272: 33        .byte $33   ; 
- D 0 - - A 0x03C283 0F:C273: C6        .byte $C6   ; 
- D 0 - - A 0x03C284 0F:C274: 31        .byte $31   ; 
- D 0 - - A 0x03C285 0F:C275: 98        .byte $98   ; 
- D 0 - - A 0x03C286 0F:C276: E3        .byte $E3   ; 
- D 0 - - A 0x03C287 0F:C277: 38        .byte $38   ; 
- D 0 - - A 0x03C288 0F:C278: E3        .byte $E3   ; 
- D 0 - - A 0x03C289 0F:C279: C3        .byte $C3   ; 
- D 0 - - A 0x03C28A 0F:C27A: 7C        .byte $7C   ; 
- D 0 - - A 0x03C28B 0F:C27B: 1C        .byte $1C   ; 
- D 0 - - A 0x03C28C 0F:C27C: 46        .byte $46   ; 
- D 0 - - A 0x03C28D 0F:C27D: 38        .byte $38   ; 
- D 0 - - A 0x03C28E 0F:C27E: 62        .byte $62   ; 
- D 0 - - A 0x03C28F 0F:C27F: 70        .byte $70   ; 
- D 0 - - A 0x03C290 0F:C280: 76        .byte $76   ; 
- D 0 - - A 0x03C291 0F:C281: 38        .byte $38   ; 
- D 0 - - A 0x03C292 0F:C282: B7        .byte $B7   ; 
- D 0 - - A 0x03C293 0F:C283: CE        .byte $CE   ; 
- D 0 - - A 0x03C294 0F:C284: 79        .byte $79   ; 
- D 0 - - A 0x03C295 0F:C285: 3C        .byte $3C   ; 
- D 0 - - A 0x03C296 0F:C286: 3C        .byte $3C   ; 
- D 0 - - A 0x03C297 0F:C287: 07        .byte $07   ; 
- D 0 - - A 0x03C298 0F:C288: C7        .byte $C7   ; 
- D 0 - - A 0x03C299 0F:C289: 13        .byte $13   ; 
- D 0 - - A 0x03C29A 0F:C28A: 1F        .byte $1F   ; 
- D 0 - - A 0x03C29B 0F:C28B: 74        .byte $74   ; 
- D 0 - - A 0x03C29C 0F:C28C: 76        .byte $76   ; 
- D 0 - - A 0x03C29D 0F:C28D: E0        .byte $E0   ; 
- D 0 - - A 0x03C29E 0F:C28E: 31        .byte $31   ; 
- D 0 - - A 0x03C29F 0F:C28F: C6        .byte $C6   ; 
- D 0 - - A 0x03C2A0 0F:C290: E1        .byte $E1   ; 
- D 0 - - A 0x03C2A1 0F:C291: 70        .byte $70   ; 
- D 0 - - A 0x03C2A2 0F:C292: 8E        .byte $8E   ; 
- D 0 - - A 0x03C2A3 0F:C293: 39        .byte $39   ; 
- D 0 - - A 0x03C2A4 0F:C294: 8E        .byte $8E   ; 
- D 0 - - A 0x03C2A5 0F:C295: E3        .byte $E3   ; 
- D 0 - - A 0x03C2A6 0F:C296: 19        .byte $19   ; 
- D 0 - - A 0x03C2A7 0F:C297: E6        .byte $E6   ; 
- D 0 - - A 0x03C2A8 0F:C298: F0        .byte $F0   ; 
- D 0 - - A 0x03C2A9 0F:C299: 98        .byte $98   ; 
- D 0 - - A 0x03C2AA 0F:C29A: E1        .byte $E1   ; 
- D 0 - - A 0x03C2AB 0F:C29B: 78        .byte $78   ; 
- D 0 - - A 0x03C2AC 0F:C29C: 1C        .byte $1C   ; 
- D 0 - - A 0x03C2AD 0F:C29D: 1F        .byte $1F   ; 
- D 0 - - A 0x03C2AE 0F:C29E: F3        .byte $F3   ; 
- D 0 - - A 0x03C2AF 0F:C29F: 3C        .byte $3C   ; 
- D 0 - - A 0x03C2B0 0F:C2A0: 36        .byte $36   ; 
- D 0 - - A 0x03C2B1 0F:C2A1: 73        .byte $73   ; 
- D 0 - - A 0x03C2B2 0F:C2A2: 1C        .byte $1C   ; 
- D 0 - - A 0x03C2B3 0F:C2A3: E3        .byte $E3   ; 
- D 0 - - A 0x03C2B4 0F:C2A4: 38        .byte $38   ; 
- D 0 - - A 0x03C2B5 0F:C2A5: C6        .byte $C6   ; 
- D 0 - - A 0x03C2B6 0F:C2A6: D8        .byte $D8   ; 
- D 0 - - A 0x03C2B7 0F:C2A7: E0        .byte $E0   ; 
- D 0 - - A 0x03C2B8 0F:C2A8: 19        .byte $19   ; 
- D 0 - - A 0x03C2B9 0F:C2A9: 3C        .byte $3C   ; 
- D 0 - - A 0x03C2BA 0F:C2AA: 9C        .byte $9C   ; 
- D 0 - - A 0x03C2BB 0F:C2AB: 71        .byte $71   ; 
- D 0 - - A 0x03C2BC 0F:C2AC: 26        .byte $26   ; 
- D 0 - - A 0x03C2BD 0F:C2AD: 99        .byte $99   ; 
- D 0 - - A 0x03C2BE 0F:C2AE: 19        .byte $19   ; 
- D 0 - - A 0x03C2BF 0F:C2AF: 8F        .byte $8F   ; 
- D 0 - - A 0x03C2C0 0F:C2B0: 9D        .byte $9D   ; 
- D 0 - - A 0x03C2C1 0F:C2B1: 67        .byte $67   ; 
- D 0 - - A 0x03C2C2 0F:C2B2: F8        .byte $F8   ; 
- D 0 - - A 0x03C2C3 0F:C2B3: E3        .byte $E3   ; 
- D 0 - - A 0x03C2C4 0F:C2B4: E0        .byte $E0   ; 
- D 0 - - A 0x03C2C5 0F:C2B5: 98        .byte $98   ; 
- D 0 - - A 0x03C2C6 0F:C2B6: 63        .byte $63   ; 
- D 0 - - A 0x03C2C7 0F:C2B7: 1C        .byte $1C   ; 
- D 0 - - A 0x03C2C8 0F:C2B8: 9B        .byte $9B   ; 
- D 0 - - A 0x03C2C9 0F:C2B9: E1        .byte $E1   ; 
- D 0 - - A 0x03C2CA 0F:C2BA: C9        .byte $C9   ; 
- D 0 - - A 0x03C2CB 0F:C2BB: 8E        .byte $8E   ; 
- D 0 - - A 0x03C2CC 0F:C2BC: 8D        .byte $8D   ; 
- D 0 - - A 0x03C2CD 0F:C2BD: 67        .byte $67   ; 
- D 0 - - A 0x03C2CE 0F:C2BE: 9C        .byte $9C   ; 
- D 0 - - A 0x03C2CF 0F:C2BF: 06        .byte $06   ; 
- D 0 - - A 0x03C2D0 0F:C2C0: BE        .byte $BE   ; 
- D 0 - - A 0x03C2D1 0F:C2C1: 8F        .byte $8F   ; 
- D 0 - - A 0x03C2D2 0F:C2C2: 08        .byte $08   ; 
- D 0 - - A 0x03C2D3 0F:C2C3: 22        .byte $22   ; 
- D 0 - - A 0x03C2D4 0F:C2C4: 42        .byte $42   ; 
- D 0 - - A 0x03C2D5 0F:C2C5: C4        .byte $C4   ; 
- D 0 - - A 0x03C2D6 0F:C2C6: B6        .byte $B6   ; 
- D 0 - - A 0x03C2D7 0F:C2C7: AA        .byte $AA   ; 
- D 0 - - A 0x03C2D8 0F:C2C8: F6        .byte $F6   ; 
- D 0 - - A 0x03C2D9 0F:C2C9: EF        .byte $EF   ; 
- D 0 - - A 0x03C2DA 0F:C2CA: 7F        .byte $7F   ; 
- D 0 - - A 0x03C2DB 0F:C2CB: AF        .byte $AF   ; 
- D 0 - - A 0x03C2DC 0F:C2CC: 48        .byte $48   ; 
- D 0 - - A 0x03C2DD 0F:C2CD: 55        .byte $55   ; 
- D 0 - - A 0x03C2DE 0F:C2CE: 55        .byte $55   ; 
- D 0 - - A 0x03C2DF 0F:C2CF: 55        .byte $55   ; 
- D 0 - - A 0x03C2E0 0F:C2D0: 45        .byte $45   ; 
- D 0 - - A 0x03C2E1 0F:C2D1: 00        .byte $00   ; 
- D 0 - - A 0x03C2E2 0F:C2D2: 00        .byte $00   ; 
- D 0 - - A 0x03C2E3 0F:C2D3: D1        .byte $D1   ; 
- D 0 - - A 0x03C2E4 0F:C2D4: AE        .byte $AE   ; 
- D 0 - - A 0x03C2E5 0F:C2D5: 6A        .byte $6A   ; 
- D 0 - - A 0x03C2E6 0F:C2D6: A9        .byte $A9   ; 
- D 0 - - A 0x03C2E7 0F:C2D7: 56        .byte $56   ; 
- D 0 - - A 0x03C2E8 0F:C2D8: FD        .byte $FD   ; 
- D 0 - - A 0x03C2E9 0F:C2D9: FB        .byte $FB   ; 
- D 0 - - A 0x03C2EA 0F:C2DA: DD        .byte $DD   ; 
- D 0 - - A 0x03C2EB 0F:C2DB: B6        .byte $B6   ; 
- D 0 - - A 0x03C2EC 0F:C2DC: 2A        .byte $2A   ; 
- D 0 - - A 0x03C2ED 0F:C2DD: 55        .byte $55   ; 
- D 0 - - A 0x03C2EE 0F:C2DE: A9        .byte $A9   ; 
- D 0 - - A 0x03C2EF 0F:C2DF: A5        .byte $A5   ; 
- D 0 - - A 0x03C2F0 0F:C2E0: 2A        .byte $2A   ; 
- D 0 - - A 0x03C2F1 0F:C2E1: 22        .byte $22   ; 
- D 0 - - A 0x03C2F2 0F:C2E2: 22        .byte $22   ; 
- D 0 - - A 0x03C2F3 0F:C2E3: 11        .byte $11   ; 
- D 0 - - A 0x03C2F4 0F:C2E4: 92        .byte $92   ; 
- D 0 - - A 0x03C2F5 0F:C2E5: D2        .byte $D2   ; 
- D 0 - - A 0x03C2F6 0F:C2E6: 5A        .byte $5A   ; 
- D 0 - - A 0x03C2F7 0F:C2E7: 55        .byte $55   ; 
- D 0 - - A 0x03C2F8 0F:C2E8: 55        .byte $55   ; 
- D 0 - - A 0x03C2F9 0F:C2E9: 55        .byte $55   ; 
- D 0 - - A 0x03C2FA 0F:C2EA: 55        .byte $55   ; 
- D 0 - - A 0x03C2FB 0F:C2EB: B5        .byte $B5   ; 
- D 0 - - A 0x03C2FC 0F:C2EC: ED        .byte $ED   ; 
- D 0 - - A 0x03C2FD 0F:C2ED: EE        .byte $EE   ; 
- D 0 - - A 0x03C2FE 0F:C2EE: B6        .byte $B6   ; 
- D 0 - - A 0x03C2FF 0F:C2EF: D6        .byte $D6   ; 
- D 0 - - A 0x03C300 0F:C2F0: 6E        .byte $6E   ; 
- D 0 - - A 0x03C301 0F:C2F1: 55        .byte $55   ; 
- D 0 - - A 0x03C302 0F:C2F2: 2A        .byte $2A   ; 
- D 0 - - A 0x03C303 0F:C2F3: AD        .byte $AD   ; 
- D 0 - - A 0x03C304 0F:C2F4: AA        .byte $AA   ; 
- D 0 - - A 0x03C305 0F:C2F5: B4        .byte $B4   ; 
- D 0 - - A 0x03C306 0F:C2F6: AA        .byte $AA   ; 
- D 0 - - A 0x03C307 0F:C2F7: 2A        .byte $2A   ; 
- D 0 - - A 0x03C308 0F:C2F8: 25        .byte $25   ; 
- D 0 - - A 0x03C309 0F:C2F9: 49        .byte $49   ; 
- D 0 - - A 0x03C30A 0F:C2FA: 92        .byte $92   ; 
- D 0 - - A 0x03C30B 0F:C2FB: 52        .byte $52   ; 
- D 0 - - A 0x03C30C 0F:C2FC: 52        .byte $52   ; 
- D 0 - - A 0x03C30D 0F:C2FD: 95        .byte $95   ; 
- D 0 - - A 0x03C30E 0F:C2FE: 4A        .byte $4A   ; 
- D 0 - - A 0x03C30F 0F:C2FF: 55        .byte $55   ; 
- D 0 - - A 0x03C310 0F:C300: 6A        .byte $6A   ; 
- D 0 - - A 0x03C311 0F:C301: 55        .byte $55   ; 
- D 0 - - A 0x03C312 0F:C302: 55        .byte $55   ; 
- D 0 - - A 0x03C313 0F:C303: 55        .byte $55   ; 
- D 0 - - A 0x03C314 0F:C304: 55        .byte $55   ; 
- D 0 - - A 0x03C315 0F:C305: 55        .byte $55   ; 
- D 0 - - A 0x03C316 0F:C306: 55        .byte $55   ; 
- D 0 - - A 0x03C317 0F:C307: AD        .byte $AD   ; 
- D 0 - - A 0x03C318 0F:C308: AD        .byte $AD   ; 
- D 0 - - A 0x03C319 0F:C309: D5        .byte $D5   ; 
- D 0 - - A 0x03C31A 0F:C30A: 6A        .byte $6A   ; 
- D 0 - - A 0x03C31B 0F:C30B: 6B        .byte $6B   ; 
- D 0 - - A 0x03C31C 0F:C30C: B5        .byte $B5   ; 
- D 0 - - A 0x03C31D 0F:C30D: 5A        .byte $5A   ; 
- D 0 - - A 0x03C31E 0F:C30E: B5        .byte $B5   ; 
- D 0 - - A 0x03C31F 0F:C30F: AA        .byte $AA   ; 
- D 0 - - A 0x03C320 0F:C310: AA        .byte $AA   ; 
- D 0 - - A 0x03C321 0F:C311: AA        .byte $AA   ; 
- D 0 - - A 0x03C322 0F:C312: AA        .byte $AA   ; 
- D 0 - - A 0x03C323 0F:C313: AA        .byte $AA   ; 
- D 0 - - A 0x03C324 0F:C314: AA        .byte $AA   ; 
- D 0 - - A 0x03C325 0F:C315: AA        .byte $AA   ; 
- D 0 - - A 0x03C326 0F:C316: AA        .byte $AA   ; 
- D 0 - - A 0x03C327 0F:C317: 54        .byte $54   ; 
- D 0 - - A 0x03C328 0F:C318: 29        .byte $29   ; 
- D 0 - - A 0x03C329 0F:C319: 95        .byte $95   ; 
- D 0 - - A 0x03C32A 0F:C31A: 92        .byte $92   ; 
- D 0 - - A 0x03C32B 0F:C31B: 2A        .byte $2A   ; 
- D 0 - - A 0x03C32C 0F:C31C: A5        .byte $A5   ; 
- D 0 - - A 0x03C32D 0F:C31D: 54        .byte $54   ; 
- D 0 - - A 0x03C32E 0F:C31E: 2A        .byte $2A   ; 
- D 0 - - A 0x03C32F 0F:C31F: 55        .byte $55   ; 
- D 0 - - A 0x03C330 0F:C320: 6A        .byte $6A   ; 
- D 0 - - A 0x03C331 0F:C321: 55        .byte $55   ; 
- D 0 - - A 0x03C332 0F:C322: 55        .byte $55   ; 
- D 0 - - A 0x03C333 0F:C323: 55        .byte $55   ; 
- D 0 - - A 0x03C334 0F:C324: 55        .byte $55   ; 
- D 0 - - A 0x03C335 0F:C325: 55        .byte $55   ; 
- D 0 - - A 0x03C336 0F:C326: 55        .byte $55   ; 
- D 0 - - A 0x03C337 0F:C327: 55        .byte $55   ; 
- D 0 - - A 0x03C338 0F:C328: 55        .byte $55   ; 
- D 0 - - A 0x03C339 0F:C329: AB        .byte $AB   ; 
- D 0 - - A 0x03C33A 0F:C32A: 5A        .byte $5A   ; 
- D 0 - - A 0x03C33B 0F:C32B: AD        .byte $AD   ; 
- D 0 - - A 0x03C33C 0F:C32C: 5A        .byte $5A   ; 
- D 0 - - A 0x03C33D 0F:C32D: B5        .byte $B5   ; 
- D 0 - - A 0x03C33E 0F:C32E: AA        .byte $AA   ; 
- D 0 - - A 0x03C33F 0F:C32F: D6        .byte $D6   ; 
- D 0 - - A 0x03C340 0F:C330: 00        .byte $00   ; 
- D 0 - - A 0x03C341 0F:C331: 00        .byte $00   ; 
- D 0 - - A 0x03C342 0F:C332: 00        .byte $00   ; 
- D 0 - - A 0x03C343 0F:C333: 00        .byte $00   ; 
- D 0 - - A 0x03C344 0F:C334: 00        .byte $00   ; 
- D 0 - - A 0x03C345 0F:C335: 00        .byte $00   ; 
- D 0 - - A 0x03C346 0F:C336: 00        .byte $00   ; 
- D 0 - - A 0x03C347 0F:C337: 00        .byte $00   ; 
- D 0 - - A 0x03C348 0F:C338: 00        .byte $00   ; 
- D 0 - - A 0x03C349 0F:C339: 00        .byte $00   ; 
- D 0 - - A 0x03C34A 0F:C33A: 00        .byte $00   ; 
- D 0 - - A 0x03C34B 0F:C33B: 00        .byte $00   ; 
- D 0 - - A 0x03C34C 0F:C33C: 00        .byte $00   ; 
- D 0 - - A 0x03C34D 0F:C33D: 00        .byte $00   ; 
- D 0 - - A 0x03C34E 0F:C33E: 00        .byte $00   ; 
- D 0 - - A 0x03C34F 0F:C33F: 00        .byte $00   ; 
- D 0 - - A 0x03C350 0F:C340: AA        .byte $AA   ; 
- D 0 - - A 0x03C351 0F:C341: B2        .byte $B2   ; 
- D 0 - - A 0x03C352 0F:C342: AA        .byte $AA   ; 
- D 0 - - A 0x03C353 0F:C343: CA        .byte $CA   ; 
- D 0 - - A 0x03C354 0F:C344: AA        .byte $AA   ; 
- D 0 - - A 0x03C355 0F:C345: AA        .byte $AA   ; 
- D 0 - - A 0x03C356 0F:C346: 2A        .byte $2A   ; 
- D 0 - - A 0x03C357 0F:C347: AB        .byte $AB   ; 
- D 0 - - A 0x03C358 0F:C348: B1        .byte $B1   ; 
- D 0 - - A 0x03C359 0F:C349: AA        .byte $AA   ; 
- D 0 - - A 0x03C35A 0F:C34A: 8A        .byte $8A   ; 
- D 0 - - A 0x03C35B 0F:C34B: AB        .byte $AB   ; 
- D 0 - - A 0x03C35C 0F:C34C: 2A        .byte $2A   ; 
- D 0 - - A 0x03C35D 0F:C34D: 4B        .byte $4B   ; 
- D 0 - - A 0x03C35E 0F:C34E: AB        .byte $AB   ; 
- D 0 - - A 0x03C35F 0F:C34F: 31        .byte $31   ; 
- D 0 - - A 0x03C360 0F:C350: 73        .byte $73   ; 
- D 0 - - A 0x03C361 0F:C351: 26        .byte $26   ; 
- D 0 - - A 0x03C362 0F:C352: E6        .byte $E6   ; 
- D 0 - - A 0x03C363 0F:C353: 6A        .byte $6A   ; 
- D 0 - - A 0x03C364 0F:C354: 8C        .byte $8C   ; 
- D 0 - - A 0x03C365 0F:C355: CB        .byte $CB   ; 
- D 0 - - A 0x03C366 0F:C356: 31        .byte $31   ; 
- D 0 - - A 0x03C367 0F:C357: 3A        .byte $3A   ; 
- D 0 - - A 0x03C368 0F:C358: C7        .byte $C7   ; 
- D 0 - - A 0x03C369 0F:C359: E2        .byte $E2   ; 
- D 0 - - A 0x03C36A 0F:C35A: 3A        .byte $3A   ; 
- D 0 - - A 0x03C36B 0F:C35B: 94        .byte $94   ; 
- D 0 - - A 0x03C36C 0F:C35C: EB        .byte $EB   ; 
- D 0 - - A 0x03C36D 0F:C35D: 28        .byte $28   ; 
- D 0 - - A 0x03C36E 0F:C35E: BA        .byte $BA   ; 
- D 0 - - A 0x03C36F 0F:C35F: 63        .byte $63   ; 
- D 0 - - A 0x03C370 0F:C360: A4        .byte $A4   ; 
- D 0 - - A 0x03C371 0F:C361: 67        .byte $67   ; 
- D 0 - - A 0x03C372 0F:C362: 52        .byte $52   ; 
- D 0 - - A 0x03C373 0F:C363: AE        .byte $AE   ; 
- D 0 - - A 0x03C374 0F:C364: A3        .byte $A3   ; 
- D 0 - - A 0x03C375 0F:C365: E8        .byte $E8   ; 
- D 0 - - A 0x03C376 0F:C366: 9A        .byte $9A   ; 
- D 0 - - A 0x03C377 0F:C367: 03        .byte $03   ; 
- D 0 - - A 0x03C378 0F:C368: BB        .byte $BB   ; 
- D 0 - - A 0x03C379 0F:C369: 13        .byte $13   ; 
- D 0 - - A 0x03C37A 0F:C36A: F1        .byte $F1   ; 
- D 0 - - A 0x03C37B 0F:C36B: 33        .byte $33   ; 
- D 0 - - A 0x03C37C 0F:C36C: 50        .byte $50   ; 
- D 0 - - A 0x03C37D 0F:C36D: 7D        .byte $7D   ; 
- D 0 - - A 0x03C37E 0F:C36E: 0E        .byte $0E   ; 
- D 0 - - A 0x03C37F 0F:C36F: E8        .byte $E8   ; 
- D 0 - - A 0x03C380 0F:C370: 3F        .byte $3F   ; 
- D 0 - - A 0x03C381 0F:C371: A0        .byte $A0   ; 
- D 0 - - A 0x03C382 0F:C372: 77        .byte $77   ; 
- D 0 - - A 0x03C383 0F:C373: A0        .byte $A0   ; 
- D 0 - - A 0x03C384 0F:C374: F8        .byte $F8   ; 
- D 0 - - A 0x03C385 0F:C375: 1E        .byte $1E   ; 
- D 0 - - A 0x03C386 0F:C376: C8        .byte $C8   ; 
- D 0 - - A 0x03C387 0F:C377: CF        .byte $CF   ; 
- D 0 - - A 0x03C388 0F:C378: 80        .byte $80   ; 
- D 0 - - A 0x03C389 0F:C379: FF        .byte $FF   ; 
- D 0 - - A 0x03C38A 0F:C37A: 00        .byte $00   ; 
- D 0 - - A 0x03C38B 0F:C37B: F4        .byte $F4   ; 
- D 0 - - A 0x03C38C 0F:C37C: CF        .byte $CF   ; 
- D 0 - - A 0x03C38D 0F:C37D: 80        .byte $80   ; 
- D 0 - - A 0x03C38E 0F:C37E: FF        .byte $FF   ; 
- D 0 - - A 0x03C38F 0F:C37F: 08        .byte $08   ; 
- D 0 - - A 0x03C390 0F:C380: F8        .byte $F8   ; 
- D 0 - - A 0x03C391 0F:C381: 1F        .byte $1F   ; 
- D 0 - - A 0x03C392 0F:C382: 00        .byte $00   ; 
- D 0 - - A 0x03C393 0F:C383: FF        .byte $FF   ; 
- D 0 - - A 0x03C394 0F:C384: 07        .byte $07   ; 
- D 0 - - A 0x03C395 0F:C385: E0        .byte $E0   ; 
- D 0 - - A 0x03C396 0F:C386: FF        .byte $FF   ; 
- D 0 - - A 0x03C397 0F:C387: 00        .byte $00   ; 
- D 0 - - A 0x03C398 0F:C388: F8        .byte $F8   ; 
- D 0 - - A 0x03C399 0F:C389: 1F        .byte $1F   ; 
- D 0 - - A 0x03C39A 0F:C38A: 80        .byte $80   ; 
- D 0 - - A 0x03C39B 0F:C38B: 7F        .byte $7F   ; 
- D 0 - - A 0x03C39C 0F:C38C: 21        .byte $21   ; 
- D 0 - - A 0x03C39D 0F:C38D: 7C        .byte $7C   ; 
- D 0 - - A 0x03C39E 0F:C38E: 0E        .byte $0E   ; 
- D 0 - - A 0x03C39F 0F:C38F: 3E        .byte $3E   ; 
- D 0 - - A 0x03C3A0 0F:C390: 07        .byte $07   ; 
- D 0 - - A 0x03C3A1 0F:C391: C6        .byte $C6   ; 
- D 0 - - A 0x03C3A2 0F:C392: E7        .byte $E7   ; 
- D 0 - - A 0x03C3A3 0F:C393: C0        .byte $C0   ; 
- D 0 - - A 0x03C3A4 0F:C394: 7C        .byte $7C   ; 
- D 0 - - A 0x03C3A5 0F:C395: 7C        .byte $7C   ; 
- D 0 - - A 0x03C3A6 0F:C396: 08        .byte $08   ; 
- D 0 - - A 0x03C3A7 0F:C397: 9C        .byte $9C   ; 
- D 0 - - A 0x03C3A8 0F:C398: 9F        .byte $9F   ; 
- D 0 - - A 0x03C3A9 0F:C399: 09        .byte $09   ; 
- D 0 - - A 0x03C3AA 0F:C39A: DF        .byte $DF   ; 
- D 0 - - A 0x03C3AB 0F:C39B: C1        .byte $C1   ; 
- D 0 - - A 0x03C3AC 0F:C39C: B1        .byte $B1   ; 
- D 0 - - A 0x03C3AD 0F:C39D: 71        .byte $71   ; 
- D 0 - - A 0x03C3AE 0F:C39E: F8        .byte $F8   ; 
- D 0 - - A 0x03C3AF 0F:C39F: 30        .byte $30   ; 
- D 0 - - A 0x03C3B0 0F:C3A0: 38        .byte $38   ; 
- D 0 - - A 0x03C3B1 0F:C3A1: 3F        .byte $3F   ; 
- D 0 - - A 0x03C3B2 0F:C3A2: 06        .byte $06   ; 
- D 0 - - A 0x03C3B3 0F:C3A3: 67        .byte $67   ; 
- D 0 - - A 0x03C3B4 0F:C3A4: E3        .byte $E3   ; 
- D 0 - - A 0x03C3B5 0F:C3A5: 67        .byte $67   ; 
- D 0 - - A 0x03C3B6 0F:C3A6: 60        .byte $60   ; 
- D 0 - - A 0x03C3B7 0F:C3A7: F6        .byte $F6   ; 
- D 0 - - A 0x03C3B8 0F:C3A8: 28        .byte $28   ; 
- D 0 - - A 0x03C3B9 0F:C3A9: 7C        .byte $7C   ; 
- D 0 - - A 0x03C3BA 0F:C3AA: 0E        .byte $0E   ; 
- D 0 - - A 0x03C3BB 0F:C3AB: 3E        .byte $3E   ; 
- D 0 - - A 0x03C3BC 0F:C3AC: 06        .byte $06   ; 
- D 0 - - A 0x03C3BD 0F:C3AD: 87        .byte $87   ; 
- D 0 - - A 0x03C3BE 0F:C3AE: 3F        .byte $3F   ; 
- D 0 - - A 0x03C3BF 0F:C3AF: 03        .byte $03   ; 
- D 0 - - A 0x03C3C0 0F:C3B0: 77        .byte $77   ; 
- D 0 - - A 0x03C3C1 0F:C3B1: 63        .byte $63   ; 
- D 0 - - A 0x03C3C2 0F:C3B2: F8        .byte $F8   ; 
- D 0 - - A 0x03C3C3 0F:C3B3: 64        .byte $64   ; 
- D 0 - - A 0x03C3C4 0F:C3B4: FC        .byte $FC   ; 
- D 0 - - A 0x03C3C5 0F:C3B5: 08        .byte $08   ; 
- D 0 - - A 0x03C3C6 0F:C3B6: DC        .byte $DC   ; 
- D 0 - - A 0x03C3C7 0F:C3B7: 1E        .byte $1E   ; 
- D 0 - - A 0x03C3C8 0F:C3B8: 44        .byte $44   ; 
- D 0 - - A 0x03C3C9 0F:C3B9: EF        .byte $EF   ; 
- D 0 - - A 0x03C3CA 0F:C3BA: 42        .byte $42   ; 
- D 0 - - A 0x03C3CB 0F:C3BB: CF        .byte $CF   ; 
- D 0 - - A 0x03C3CC 0F:C3BC: C0        .byte $C0   ; 
- D 0 - - A 0x03C3CD 0F:C3BD: CE        .byte $CE   ; 
- D 0 - - A 0x03C3CE 0F:C3BE: 0F        .byte $0F   ; 
- D 0 - - A 0x03C3CF 0F:C3BF: C8        .byte $C8   ; 
- D 0 - - A 0x03C3D0 0F:C3C0: CF        .byte $CF   ; 
- D 0 - - A 0x03C3D1 0F:C3C1: 68        .byte $68   ; 
- D 0 - - A 0x03C3D2 0F:C3C2: 72        .byte $72   ; 
- D 0 - - A 0x03C3D3 0F:C3C3: 32        .byte $32   ; 
- D 0 - - A 0x03C3D4 0F:C3C4: 7F        .byte $7F   ; 
- D 0 - - A 0x03C3D5 0F:C3C5: 04        .byte $04   ; 
- D 0 - - A 0x03C3D6 0F:C3C6: 7E        .byte $7E   ; 
- D 0 - - A 0x03C3D7 0F:C3C7: 06        .byte $06   ; 
- D 0 - - A 0x03C3D8 0F:C3C8: A3        .byte $A3   ; 
- D 0 - - A 0x03C3D9 0F:C3C9: 33        .byte $33   ; 
- D 0 - - A 0x03C3DA 0F:C3CA: F1        .byte $F1   ; 
- D 0 - - A 0x03C3DB 0F:C3CB: 47        .byte $47   ; 
- D 0 - - A 0x03C3DC 0F:C3CC: E0        .byte $E0   ; 
- D 0 - - A 0x03C3DD 0F:C3CD: E7        .byte $E7   ; 
- D 0 - - A 0x03C3DE 0F:C3CE: 07        .byte $07   ; 
- D 0 - - A 0x03C3DF 0F:C3CF: E4        .byte $E4   ; 
- D 0 - - A 0x03C3E0 0F:C3D0: 66        .byte $66   ; 
- D 0 - - A 0x03C3E1 0F:C3D1: 74        .byte $74   ; 
- D 0 - - A 0x03C3E2 0F:C3D2: 36        .byte $36   ; 
- D 0 - - A 0x03C3E3 0F:C3D3: 32        .byte $32   ; 
- D 0 - - A 0x03C3E4 0F:C3D4: 7E        .byte $7E   ; 
- D 0 - - A 0x03C3E5 0F:C3D5: 04        .byte $04   ; 
- D 0 - - A 0x03C3E6 0F:C3D6: 7E        .byte $7E   ; 
- D 0 - - A 0x03C3E7 0F:C3D7: 06        .byte $06   ; 
- D 0 - - A 0x03C3E8 0F:C3D8: 67        .byte $67   ; 
- D 0 - - A 0x03C3E9 0F:C3D9: 27        .byte $27   ; 
- D 0 - - A 0x03C3EA 0F:C3DA: E3        .byte $E3   ; 
- D 0 - - A 0x03C3EB 0F:C3DB: 17        .byte $17   ; 
- D 0 - - A 0x03C3EC 0F:C3DC: E0        .byte $E0   ; 
- D 0 - - A 0x03C3ED 0F:C3DD: 8F        .byte $8F   ; 
- D 0 - - A 0x03C3EE 0F:C3DE: 1E        .byte $1E   ; 
- D 0 - - A 0x03C3EF 0F:C3DF: 06        .byte $06   ; 
- D 0 - - A 0x03C3F0 0F:C3E0: 0F        .byte $0F   ; 
- D 0 - - A 0x03C3F1 0F:C3E1: F7        .byte $F7   ; 
- D 0 - - A 0x03C3F2 0F:C3E2: 89        .byte $89   ; 
- D 0 - - A 0x03C3F3 0F:C3E3: D8        .byte $D8   ; 
- D 0 - - A 0x03C3F4 0F:C3E4: FC        .byte $FC   ; 
- D 0 - - A 0x03C3F5 0F:C3E5: 88        .byte $88   ; 
- D 0 - - A 0x03C3F6 0F:C3E6: FC        .byte $FC   ; 
- D 0 - - A 0x03C3F7 0F:C3E7: 08        .byte $08   ; 
- D 0 - - A 0x03C3F8 0F:C3E8: 1C        .byte $1C   ; 
- D 0 - - A 0x03C3F9 0F:C3E9: 1E        .byte $1E   ; 
- D 0 - - A 0x03C3FA 0F:C3EA: 8F        .byte $8F   ; 
- D 0 - - A 0x03C3FB 0F:C3EB: 6F        .byte $6F   ; 
- D 0 - - A 0x03C3FC 0F:C3EC: 44        .byte $44   ; 
- D 0 - - A 0x03C3FD 0F:C3ED: 76        .byte $76   ; 
- D 0 - - A 0x03C3FE 0F:C3EE: F4        .byte $F4   ; 
- D 0 - - A 0x03C3FF 0F:C3EF: 18        .byte $18   ; 
- D 0 - - A 0x03C400 0F:C3F0: F8        .byte $F8   ; 
- D 0 - - A 0x03C401 0F:C3F1: 1C        .byte $1C   ; 
- D 0 - - A 0x03C402 0F:C3F2: 8E        .byte $8E   ; 
- D 0 - - A 0x03C403 0F:C3F3: CC        .byte $CC   ; 
- D 0 - - A 0x03C404 0F:C3F4: 8E        .byte $8E   ; 
- D 0 - - A 0x03C405 0F:C3F5: 8F        .byte $8F   ; 
- D 0 - - A 0x03C406 0F:C3F6: 81        .byte $81   ; 
- D 0 - - A 0x03C407 0F:C3F7: CF        .byte $CF   ; 
- D 0 - - A 0x03C408 0F:C3F8: C1        .byte $C1   ; 
- D 0 - - A 0x03C409 0F:C3F9: D9        .byte $D9   ; 
- D 0 - - A 0x03C40A 0F:C3FA: D1        .byte $D1   ; 
- D 0 - - A 0x03C40B 0F:C3FB: F8        .byte $F8   ; 
- D 0 - - A 0x03C40C 0F:C3FC: 0D        .byte $0D   ; 
- D 0 - - A 0x03C40D 0F:C3FD: E4        .byte $E4   ; 
- D 0 - - A 0x03C40E 0F:C3FE: 06        .byte $06   ; 
- D 0 - - A 0x03C40F 0F:C3FF: 3E        .byte $3E   ; 
- D 0 - - A 0x03C410 0F:C400: 07        .byte $07   ; 
- D 0 - - A 0x03C411 0F:C401: B7        .byte $B7   ; 
- D 0 - - A 0x03C412 0F:C402: E3        .byte $E3   ; 
- D 0 - - A 0x03C413 0F:C403: 91        .byte $91   ; 
- D 0 - - A 0x03C414 0F:C404: 99        .byte $99   ; 
- D 0 - - A 0x03C415 0F:C405: F1        .byte $F1   ; 
- D 0 - - A 0x03C416 0F:C406: 21        .byte $21   ; 
- D 0 - - A 0x03C417 0F:C407: F0        .byte $F0   ; 
- D 0 - - A 0x03C418 0F:C408: 39        .byte $39   ; 
- D 0 - - A 0x03C419 0F:C409: 78        .byte $78   ; 
- D 0 - - A 0x03C41A 0F:C40A: 3C        .byte $3C   ; 
- D 0 - - A 0x03C41B 0F:C40B: 3C        .byte $3C   ; 
- D 0 - - A 0x03C41C 0F:C40C: 3E        .byte $3E   ; 
- D 0 - - A 0x03C41D 0F:C40D: 03        .byte $03   ; 
- D 0 - - A 0x03C41E 0F:C40E: BB        .byte $BB   ; 
- D 0 - - A 0x03C41F 0F:C40F: 83        .byte $83   ; 
- D 0 - - A 0x03C420 0F:C410: 8F        .byte $8F   ; 
- D 0 - - A 0x03C421 0F:C411: C1        .byte $C1   ; 
- D 0 - - A 0x03C422 0F:C412: EF        .byte $EF   ; 
- D 0 - - A 0x03C423 0F:C413: E0        .byte $E0   ; 
- D 0 - - A 0x03C424 0F:C414: F8        .byte $F8   ; 
- D 0 - - A 0x03C425 0F:C415: D8        .byte $D8   ; 
- D 0 - - A 0x03C426 0F:C416: F8        .byte $F8   ; 
- D 0 - - A 0x03C427 0F:C417: 00        .byte $00   ; 
- D 0 - - A 0x03C428 0F:C418: F0        .byte $F0   ; 
- D 0 - - A 0x03C429 0F:C419: 27        .byte $27   ; 
- D 0 - - A 0x03C42A 0F:C41A: F2        .byte $F2   ; 
- D 0 - - A 0x03C42B 0F:C41B: 31        .byte $31   ; 
- D 0 - - A 0x03C42C 0F:C41C: 78        .byte $78   ; 
- D 0 - - A 0x03C42D 0F:C41D: 7C        .byte $7C   ; 
- D 0 - - A 0x03C42E 0F:C41E: 06        .byte $06   ; 
- D 0 - - A 0x03C42F 0F:C41F: 76        .byte $76   ; 
- D 0 - - A 0x03C430 0F:C420: 83        .byte $83   ; 
- D 0 - - A 0x03C431 0F:C421: 3F        .byte $3F   ; 
- D 0 - - A 0x03C432 0F:C422: 03        .byte $03   ; 
- D 0 - - A 0x03C433 0F:C423: BF        .byte $BF   ; 
- D 0 - - A 0x03C434 0F:C424: 81        .byte $81   ; 
- D 0 - - A 0x03C435 0F:C425: C7        .byte $C7   ; 
- D 0 - - A 0x03C436 0F:C426: C1        .byte $C1   ; 
- D 0 - - A 0x03C437 0F:C427: E7        .byte $E7   ; 
- D 0 - - A 0x03C438 0F:C428: 27        .byte $27   ; 
- D 0 - - A 0x03C439 0F:C429: 30        .byte $30   ; 
- D 0 - - A 0x03C43A 0F:C42A: 3B        .byte $3B   ; 
- D 0 - - A 0x03C43B 0F:C42B: 91        .byte $91   ; 
- D 0 - - A 0x03C43C 0F:C42C: 0F        .byte $0F   ; 
- D 0 - - A 0x03C43D 0F:C42D: CC        .byte $CC   ; 
- D 0 - - A 0x03C43E 0F:C42E: 0F        .byte $0F   ; 
- D 0 - - A 0x03C43F 0F:C42F: EF        .byte $EF   ; 
- D 0 - - A 0x03C440 0F:C430: 44        .byte $44   ; 
- D 0 - - A 0x03C441 0F:C431: 66        .byte $66   ; 
- D 0 - - A 0x03C442 0F:C432: E3        .byte $E3   ; 
- D 0 - - A 0x03C443 0F:C433: 33        .byte $33   ; 
- D 0 - - A 0x03C444 0F:C434: E0        .byte $E0   ; 
- D 0 - - A 0x03C445 0F:C435: 3B        .byte $3B   ; 
- D 0 - - A 0x03C446 0F:C436: F0        .byte $F0   ; 
- D 0 - - A 0x03C447 0F:C437: 13        .byte $13   ; 
- D 0 - - A 0x03C448 0F:C438: B0        .byte $B0   ; 
- D 0 - - A 0x03C449 0F:C439: D3        .byte $D3   ; 
- D 0 - - A 0x03C44A 0F:C43A: 8F        .byte $8F   ; 
- D 0 - - A 0x03C44B 0F:C43B: C4        .byte $C4   ; 
- D 0 - - A 0x03C44C 0F:C43C: 0F        .byte $0F   ; 
- D 0 - - A 0x03C44D 0F:C43D: E2        .byte $E2   ; 
- D 0 - - A 0x03C44E 0F:C43E: 07        .byte $07   ; 
- D 0 - - A 0x03C44F 0F:C43F: E3        .byte $E3   ; 
- D 0 - - A 0x03C450 0F:C440: 83        .byte $83   ; 
- D 0 - - A 0x03C451 0F:C441: 7F        .byte $7F   ; 
- D 0 - - A 0x03C452 0F:C442: 40        .byte $40   ; 
- D 0 - - A 0x03C453 0F:C443: 76        .byte $76   ; 
- D 0 - - A 0x03C454 0F:C444: E0        .byte $E0   ; 
- D 0 - - A 0x03C455 0F:C445: 3B        .byte $3B   ; 
- D 0 - - A 0x03C456 0F:C446: D0        .byte $D0   ; 
- D 0 - - A 0x03C457 0F:C447: 1F        .byte $1F   ; 
- D 0 - - A 0x03C458 0F:C448: D0        .byte $D0   ; 
- D 0 - - A 0x03C459 0F:C449: 0F        .byte $0F   ; 
- D 0 - - A 0x03C45A 0F:C44A: E2        .byte $E2   ; 
- D 0 - - A 0x03C45B 0F:C44B: 07        .byte $07   ; 
- D 0 - - A 0x03C45C 0F:C44C: 3F        .byte $3F   ; 
- D 0 - - A 0x03C45D 0F:C44D: 13        .byte $13   ; 
- D 0 - - A 0x03C45E 0F:C44E: 9B        .byte $9B   ; 
- D 0 - - A 0x03C45F 0F:C44F: 89        .byte $89   ; 
- D 0 - - A 0x03C460 0F:C450: 9F        .byte $9F   ; 
- D 0 - - A 0x03C461 0F:C451: 84        .byte $84   ; 
- D 0 - - A 0x03C462 0F:C452: 0F        .byte $0F   ; 
- D 0 - - A 0x03C463 0F:C453: FE        .byte $FE   ; 
- D 0 - - A 0x03C464 0F:C454: 03        .byte $03   ; 
- D 0 - - A 0x03C465 0F:C455: 99        .byte $99   ; 
- D 0 - - A 0x03C466 0F:C456: 81        .byte $81   ; 
- D 0 - - A 0x03C467 0F:C457: FF        .byte $FF   ; 
- D 0 - - A 0x03C468 0F:C458: 00        .byte $00   ; 
- D 0 - - A 0x03C469 0F:C459: 7F        .byte $7F   ; 
- D 0 - - A 0x03C46A 0F:C45A: 80        .byte $80   ; 
- D 0 - - A 0x03C46B 0F:C45B: 3F        .byte $3F   ; 
- D 0 - - A 0x03C46C 0F:C45C: 01        .byte $01   ; 
- D 0 - - A 0x03C46D 0F:C45D: 3F        .byte $3F   ; 
- D 0 - - A 0x03C46E 0F:C45E: F8        .byte $F8   ; 
- D 0 - - A 0x03C46F 0F:C45F: 89        .byte $89   ; 
- D 0 - - A 0x03C470 0F:C460: EC        .byte $EC   ; 
- D 0 - - A 0x03C471 0F:C461: 6C        .byte $6C   ; 
- D 0 - - A 0x03C472 0F:C462: F4        .byte $F4   ; 
- D 0 - - A 0x03C473 0F:C463: 20        .byte $20   ; 
- D 0 - - A 0x03C474 0F:C464: FA        .byte $FA   ; 
- D 0 - - A 0x03C475 0F:C465: E1        .byte $E1   ; 
- D 0 - - A 0x03C476 0F:C466: 1F        .byte $1F   ; 
- D 0 - - A 0x03C477 0F:C467: 98        .byte $98   ; 
- D 0 - - A 0x03C478 0F:C468: 1D        .byte $1D   ; 
- D 0 - - A 0x03C479 0F:C469: F8        .byte $F8   ; 
- D 0 - - A 0x03C47A 0F:C46A: 0E        .byte $0E   ; 
- D 0 - - A 0x03C47B 0F:C46B: F0        .byte $F0   ; 
- D 0 - - A 0x03C47C 0F:C46C: 07        .byte $07   ; 
- D 0 - - A 0x03C47D 0F:C46D: F8        .byte $F8   ; 
- D 0 - - A 0x03C47E 0F:C46E: 03        .byte $03   ; 
- D 0 - - A 0x03C47F 0F:C46F: F0        .byte $F0   ; 
- D 0 - - A 0x03C480 0F:C470: 83        .byte $83   ; 
- D 0 - - A 0x03C481 0F:C471: 9F        .byte $9F   ; 
- D 0 - - A 0x03C482 0F:C472: 89        .byte $89   ; 
- D 0 - - A 0x03C483 0F:C473: CF        .byte $CF   ; 
- D 0 - - A 0x03C484 0F:C474: C4        .byte $C4   ; 
- D 0 - - A 0x03C485 0F:C475: 7E        .byte $7E   ; 
- D 0 - - A 0x03C486 0F:C476: 20        .byte $20   ; 
- D 0 - - A 0x03C487 0F:C477: 3F        .byte $3F   ; 
- D 0 - - A 0x03C488 0F:C478: F0        .byte $F0   ; 
- D 0 - - A 0x03C489 0F:C479: 07        .byte $07   ; 
- D 0 - - A 0x03C48A 0F:C47A: E4        .byte $E4   ; 
- D 0 - - A 0x03C48B 0F:C47B: 07        .byte $07   ; 
- D 0 - - A 0x03C48C 0F:C47C: FE        .byte $FE   ; 
- D 0 - - A 0x03C48D 0F:C47D: 03        .byte $03   ; 
- D 0 - - A 0x03C48E 0F:C47E: FC        .byte $FC   ; 
- D 0 - - A 0x03C48F 0F:C47F: 03        .byte $03   ; 
- D 0 - - A 0x03C490 0F:C480: FC        .byte $FC   ; 
- D 0 - - A 0x03C491 0F:C481: 03        .byte $03   ; 
- D 0 - - A 0x03C492 0F:C482: F2        .byte $F2   ; 
- D 0 - - A 0x03C493 0F:C483: 83        .byte $83   ; 
- D 0 - - A 0x03C494 0F:C484: 9F        .byte $9F   ; 
- D 0 - - A 0x03C495 0F:C485: 81        .byte $81   ; 
- D 0 - - A 0x03C496 0F:C486: DE        .byte $DE   ; 
- D 0 - - A 0x03C497 0F:C487: 80        .byte $80   ; 
- D 0 - - A 0x03C498 0F:C488: 7E        .byte $7E   ; 
- D 0 - - A 0x03C499 0F:C489: 00        .byte $00   ; 
- D 0 - - A 0x03C49A 0F:C48A: FF        .byte $FF   ; 
- D 0 - - A 0x03C49B 0F:C48B: F0        .byte $F0   ; 
- D 0 - - A 0x03C49C 0F:C48C: 0F        .byte $0F   ; 
- D 0 - - A 0x03C49D 0F:C48D: E4        .byte $E4   ; 
- D 0 - - A 0x03C49E 0F:C48E: 27        .byte $27   ; 
- D 0 - - A 0x03C49F 0F:C48F: 78        .byte $78   ; 
- D 0 - - A 0x03C4A0 0F:C490: 07        .byte $07   ; 
- D 0 - - A 0x03C4A1 0F:C491: F8        .byte $F8   ; 
- D 0 - - A 0x03C4A2 0F:C492: 0F        .byte $0F   ; 
- D 0 - - A 0x03C4A3 0F:C493: F8        .byte $F8   ; 
- D 0 - - A 0x03C4A4 0F:C494: 07        .byte $07   ; 
- D 0 - - A 0x03C4A5 0F:C495: EC        .byte $EC   ; 
- D 0 - - A 0x03C4A6 0F:C496: 07        .byte $07   ; 
- D 0 - - A 0x03C4A7 0F:C497: FE        .byte $FE   ; 
- D 0 - - A 0x03C4A8 0F:C498: 02        .byte $02   ; 
- D 0 - - A 0x03C4A9 0F:C499: FA        .byte $FA   ; 
- D 0 - - A 0x03C4AA 0F:C49A: 03        .byte $03   ; 
- D 0 - - A 0x03C4AB 0F:C49B: FC        .byte $FC   ; 
- D 0 - - A 0x03C4AC 0F:C49C: 00        .byte $00   ; 
- D 0 - - A 0x03C4AD 0F:C49D: FC        .byte $FC   ; 
- D 0 - - A 0x03C4AE 0F:C49E: 41        .byte $41   ; 
- D 0 - - A 0x03C4AF 0F:C49F: 3F        .byte $3F   ; 
- D 0 - - A 0x03C4B0 0F:C4A0: 98        .byte $98   ; 
- D 0 - - A 0x03C4B1 0F:C4A1: FC        .byte $FC   ; 
- D 0 - - A 0x03C4B2 0F:C4A2: E0        .byte $E0   ; 
- D 0 - - A 0x03C4B3 0F:C4A3: 0F        .byte $0F   ; 
- D 0 - - A 0x03C4B4 0F:C4A4: F0        .byte $F0   ; 
- D 0 - - A 0x03C4B5 0F:C4A5: 1F        .byte $1F   ; 
- D 0 - - A 0x03C4B6 0F:C4A6: F0        .byte $F0   ; 
- D 0 - - A 0x03C4B7 0F:C4A7: 1F        .byte $1F   ; 
- D 0 - - A 0x03C4B8 0F:C4A8: 90        .byte $90   ; 
- D 0 - - A 0x03C4B9 0F:C4A9: 1F        .byte $1F   ; 
- D 0 - - A 0x03C4BA 0F:C4AA: F8        .byte $F8   ; 
- D 0 - - A 0x03C4BB 0F:C4AB: 09        .byte $09   ; 
- D 0 - - A 0x03C4BC 0F:C4AC: F8        .byte $F8   ; 
- D 0 - - A 0x03C4BD 0F:C4AD: 0F        .byte $0F   ; 
- D 0 - - A 0x03C4BE 0F:C4AE: F0        .byte $F0   ; 
- D 0 - - A 0x03C4BF 0F:C4AF: 03        .byte $03   ; 
- D 0 - - A 0x03C4C0 0F:C4B0: F0        .byte $F0   ; 
- D 0 - - A 0x03C4C1 0F:C4B1: 0F        .byte $0F   ; 
- D 0 - - A 0x03C4C2 0F:C4B2: FC        .byte $FC   ; 
- D 0 - - A 0x03C4C3 0F:C4B3: 04        .byte $04   ; 
- D 0 - - A 0x03C4C4 0F:C4B4: FE        .byte $FE   ; 
- D 0 - - A 0x03C4C5 0F:C4B5: 03        .byte $03   ; 
- D 0 - - A 0x03C4C6 0F:C4B6: FF        .byte $FF   ; 
- D 0 - - A 0x03C4C7 0F:C4B7: 80        .byte $80   ; 
- D 0 - - A 0x03C4C8 0F:C4B8: 7F        .byte $7F   ; 
- D 0 - - A 0x03C4C9 0F:C4B9: 00        .byte $00   ; 
- D 0 - - A 0x03C4CA 0F:C4BA: FF        .byte $FF   ; 
- D 0 - - A 0x03C4CB 0F:C4BB: 81        .byte $81   ; 
- D 0 - - A 0x03C4CC 0F:C4BC: F9        .byte $F9   ; 
- D 0 - - A 0x03C4CD 0F:C4BD: 80        .byte $80   ; 
- D 0 - - A 0x03C4CE 0F:C4BE: 9F        .byte $9F   ; 
- D 0 - - A 0x03C4CF 0F:C4BF: 80        .byte $80   ; 
- D 0 - - A 0x03C4D0 0F:C4C0: 7F        .byte $7F   ; 
- D 0 - - A 0x03C4D1 0F:C4C1: 80        .byte $80   ; 
- D 0 - - A 0x03C4D2 0F:C4C2: 3F        .byte $3F   ; 
- D 0 - - A 0x03C4D3 0F:C4C3: 00        .byte $00   ; 
- D 0 - - A 0x03C4D4 0F:C4C4: 7F        .byte $7F   ; 
- D 0 - - A 0x03C4D5 0F:C4C5: E0        .byte $E0   ; 
- D 0 - - A 0x03C4D6 0F:C4C6: 1F        .byte $1F   ; 
- D 0 - - A 0x03C4D7 0F:C4C7: C0        .byte $C0   ; 
- D 0 - - A 0x03C4D8 0F:C4C8: 3F        .byte $3F   ; 
- D 0 - - A 0x03C4D9 0F:C4C9: F0        .byte $F0   ; 
- D 0 - - A 0x03C4DA 0F:C4CA: 1F        .byte $1F   ; 
- D 0 - - A 0x03C4DB 0F:C4CB: F0        .byte $F0   ; 
- D 0 - - A 0x03C4DC 0F:C4CC: 1F        .byte $1F   ; 
- D 0 - - A 0x03C4DD 0F:C4CD: E0        .byte $E0   ; 
- D 0 - - A 0x03C4DE 0F:C4CE: 3F        .byte $3F   ; 
- D 0 - - A 0x03C4DF 0F:C4CF: 60        .byte $60   ; 
- D 0 - - A 0x03C4E0 0F:C4D0: 37        .byte $37   ; 
- D 0 - - A 0x03C4E1 0F:C4D1: E0        .byte $E0   ; 
- D 0 - - A 0x03C4E2 0F:C4D2: 1F        .byte $1F   ; 
- D 0 - - A 0x03C4E3 0F:C4D3: C0        .byte $C0   ; 
- D 0 - - A 0x03C4E4 0F:C4D4: 1F        .byte $1F   ; 
- D 0 - - A 0x03C4E5 0F:C4D5: C0        .byte $C0   ; 
- D 0 - - A 0x03C4E6 0F:C4D6: 3F        .byte $3F   ; 
- D 0 - - A 0x03C4E7 0F:C4D7: E0        .byte $E0   ; 
- D 0 - - A 0x03C4E8 0F:C4D8: 3F        .byte $3F   ; 
- D 0 - - A 0x03C4E9 0F:C4D9: E0        .byte $E0   ; 
- D 0 - - A 0x03C4EA 0F:C4DA: 0F        .byte $0F   ; 
- D 0 - - A 0x03C4EB 0F:C4DB: E0        .byte $E0   ; 
- D 0 - - A 0x03C4EC 0F:C4DC: 1F        .byte $1F   ; 
- D 0 - - A 0x03C4ED 0F:C4DD: F0        .byte $F0   ; 
- D 0 - - A 0x03C4EE 0F:C4DE: 1F        .byte $1F   ; 
- D 0 - - A 0x03C4EF 0F:C4DF: E0        .byte $E0   ; 
- D 0 - - A 0x03C4F0 0F:C4E0: 0F        .byte $0F   ; 
- D 0 - - A 0x03C4F1 0F:C4E1: E0        .byte $E0   ; 
- D 0 - - A 0x03C4F2 0F:C4E2: 3F        .byte $3F   ; 
- D 0 - - A 0x03C4F3 0F:C4E3: E0        .byte $E0   ; 
- D 0 - - A 0x03C4F4 0F:C4E4: 1F        .byte $1F   ; 
- D 0 - - A 0x03C4F5 0F:C4E5: C0        .byte $C0   ; 
- D 0 - - A 0x03C4F6 0F:C4E6: 1F        .byte $1F   ; 
- D 0 - - A 0x03C4F7 0F:C4E7: C0        .byte $C0   ; 
- D 0 - - A 0x03C4F8 0F:C4E8: 3F        .byte $3F   ; 
- D 0 - - A 0x03C4F9 0F:C4E9: C0        .byte $C0   ; 
- D 0 - - A 0x03C4FA 0F:C4EA: FF        .byte $FF   ; 
- D 0 - - A 0x03C4FB 0F:C4EB: 80        .byte $80   ; 
- D 0 - - A 0x03C4FC 0F:C4EC: EF        .byte $EF   ; 
- D 0 - - A 0x03C4FD 0F:C4ED: 80        .byte $80   ; 
- D 0 - - A 0x03C4FE 0F:C4EE: 7F        .byte $7F   ; 
- D 0 - - A 0x03C4FF 0F:C4EF: 00        .byte $00   ; 
- D 0 - - A 0x03C500 0F:C4F0: FF        .byte $FF   ; 
- D 0 - - A 0x03C501 0F:C4F1: 00        .byte $00   ; 
- D 0 - - A 0x03C502 0F:C4F2: FF        .byte $FF   ; 
- D 0 - - A 0x03C503 0F:C4F3: 00        .byte $00   ; 
- D 0 - - A 0x03C504 0F:C4F4: 7C        .byte $7C   ; 
- D 0 - - A 0x03C505 0F:C4F5: 11        .byte $11   ; 
- D 0 - - A 0x03C506 0F:C4F6: F8        .byte $F8   ; 
- D 0 - - A 0x03C507 0F:C4F7: 0F        .byte $0F   ; 
- D 0 - - A 0x03C508 0F:C4F8: FC        .byte $FC   ; 
- D 0 - - A 0x03C509 0F:C4F9: 07        .byte $07   ; 
- D 0 - - A 0x03C50A 0F:C4FA: F0        .byte $F0   ; 
- D 0 - - A 0x03C50B 0F:C4FB: 1F        .byte $1F   ; 
- D 0 - - A 0x03C50C 0F:C4FC: F0        .byte $F0   ; 
- D 0 - - A 0x03C50D 0F:C4FD: 0F        .byte $0F   ; 
- D 0 - - A 0x03C50E 0F:C4FE: F0        .byte $F0   ; 
- D 0 - - A 0x03C50F 0F:C4FF: 1F        .byte $1F   ; 
- D 0 - - A 0x03C510 0F:C500: D0        .byte $D0   ; 
- D 0 - - A 0x03C511 0F:C501: 0F        .byte $0F   ; 
- D 0 - - A 0x03C512 0F:C502: E0        .byte $E0   ; 
- D 0 - - A 0x03C513 0F:C503: 0F        .byte $0F   ; 
- D 0 - - A 0x03C514 0F:C504: F0        .byte $F0   ; 
- D 0 - - A 0x03C515 0F:C505: 0F        .byte $0F   ; 
- D 0 - - A 0x03C516 0F:C506: D0        .byte $D0   ; 
- D 0 - - A 0x03C517 0F:C507: 9F        .byte $9F   ; 
- D 0 - - A 0x03C518 0F:C508: 80        .byte $80   ; 
- D 0 - - A 0x03C519 0F:C509: 9F        .byte $9F   ; 
- D 0 - - A 0x03C51A 0F:C50A: 81        .byte $81   ; 
- D 0 - - A 0x03C51B 0F:C50B: FF        .byte $FF   ; 
- D 0 - - A 0x03C51C 0F:C50C: 80        .byte $80   ; 
- D 0 - - A 0x03C51D 0F:C50D: 7F        .byte $7F   ; 
- D 0 - - A 0x03C51E 0F:C50E: 80        .byte $80   ; 
- D 0 - - A 0x03C51F 0F:C50F: 8F        .byte $8F   ; 
- D 0 - - A 0x03C520 0F:C510: C3        .byte $C3   ; 
- D 0 - - A 0x03C521 0F:C511: 83        .byte $83   ; 
- D 0 - - A 0x03C522 0F:C512: C7        .byte $C7   ; 
- D 0 - - A 0x03C523 0F:C513: 03        .byte $03   ; 
- D 0 - - A 0x03C524 0F:C514: FF        .byte $FF   ; 
- D 0 - - A 0x03C525 0F:C515: 81        .byte $81   ; 
- D 0 - - A 0x03C526 0F:C516: FF        .byte $FF   ; 
- D 0 - - A 0x03C527 0F:C517: 00        .byte $00   ; 
- D 0 - - A 0x03C528 0F:C518: 7E        .byte $7E   ; 
- D 0 - - A 0x03C529 0F:C519: 00        .byte $00   ; 
- D 0 - - A 0x03C52A 0F:C51A: 7F        .byte $7F   ; 
- D 0 - - A 0x03C52B 0F:C51B: 00        .byte $00   ; 
- D 0 - - A 0x03C52C 0F:C51C: FE        .byte $FE   ; 
- D 0 - - A 0x03C52D 0F:C51D: 07        .byte $07   ; 
- D 0 - - A 0x03C52E 0F:C51E: BE        .byte $BE   ; 
- D 0 - - A 0x03C52F 0F:C51F: 01        .byte $01   ; 
- D 0 - - A 0x03C530 0F:C520: FF        .byte $FF   ; 
- D 0 - - A 0x03C531 0F:C521: 00        .byte $00   ; 
- D 0 - - A 0x03C532 0F:C522: FE        .byte $FE   ; 
- D 0 - - A 0x03C533 0F:C523: 00        .byte $00   ; 
- D 0 - - A 0x03C534 0F:C524: 3F        .byte $3F   ; 
- D 0 - - A 0x03C535 0F:C525: E7        .byte $E7   ; 
- D 0 - - A 0x03C536 0F:C526: C0        .byte $C0   ; 
- D 0 - - A 0x03C537 0F:C527: CD        .byte $CD   ; 
- D 0 - - A 0x03C538 0F:C528: 64        .byte $64   ; 
- D 0 - - A 0x03C539 0F:C529: 37        .byte $37   ; 
- D 0 - - A 0x03C53A 0F:C52A: A2        .byte $A2   ; 
- D 0 - - A 0x03C53B 0F:C52B: 9B        .byte $9B   ; 
- D 0 - - A 0x03C53C 0F:C52C: D0        .byte $D0   ; 
- D 0 - - A 0x03C53D 0F:C52D: C7        .byte $C7   ; 
- D 0 - - A 0x03C53E 0F:C52E: C3        .byte $C3   ; 
- D 0 - - A 0x03C53F 0F:C52F: 83        .byte $83   ; 
- D 0 - - A 0x03C540 0F:C530: E3        .byte $E3   ; 
- D 0 - - A 0x03C541 0F:C531: 03        .byte $03   ; 
- D 0 - - A 0x03C542 0F:C532: FF        .byte $FF   ; 
- D 0 - - A 0x03C543 0F:C533: 01        .byte $01   ; 
- D 0 - - A 0x03C544 0F:C534: 7F        .byte $7F   ; 
- D 0 - - A 0x03C545 0F:C535: 00        .byte $00   ; 
- D 0 - - A 0x03C546 0F:C536: 3F        .byte $3F   ; 
- D 0 - - A 0x03C547 0F:C537: C1        .byte $C1   ; 
- D 0 - - A 0x03C548 0F:C538: DB        .byte $DB   ; 
- D 0 - - A 0x03C549 0F:C539: C0        .byte $C0   ; 
- D 0 - - A 0x03C54A 0F:C53A: E1        .byte $E1   ; 
- D 0 - - A 0x03C54B 0F:C53B: 1F        .byte $1F   ; 
- D 0 - - A 0x03C54C 0F:C53C: D8        .byte $D8   ; 
- D 0 - - A 0x03C54D 0F:C53D: 0E        .byte $0E   ; 
- D 0 - - A 0x03C54E 0F:C53E: EC        .byte $EC   ; 
- D 0 - - A 0x03C54F 0F:C53F: 26        .byte $26   ; 
- D 0 - - A 0x03C550 0F:C540: BA        .byte $BA   ; 
- D 0 - - A 0x03C551 0F:C541: 83        .byte $83   ; 
- D 0 - - A 0x03C552 0F:C542: 1D        .byte $1D   ; 
- D 0 - - A 0x03C553 0F:C543: FC        .byte $FC   ; 
- D 0 - - A 0x03C554 0F:C544: 0E        .byte $0E   ; 
- D 0 - - A 0x03C555 0F:C545: 6C        .byte $6C   ; 
- D 0 - - A 0x03C556 0F:C546: 06        .byte $06   ; 
- D 0 - - A 0x03C557 0F:C547: 7E        .byte $7E   ; 
- D 0 - - A 0x03C558 0F:C548: 03        .byte $03   ; 
- D 0 - - A 0x03C559 0F:C549: BF        .byte $BF   ; 
- D 0 - - A 0x03C55A 0F:C54A: C0        .byte $C0   ; 
- D 0 - - A 0x03C55B 0F:C54B: 7E        .byte $7E   ; 
- D 0 - - A 0x03C55C 0F:C54C: E0        .byte $E0   ; 
- D 0 - - A 0x03C55D 0F:C54D: F3        .byte $F3   ; 
- D 0 - - A 0x03C55E 0F:C54E: C0        .byte $C0   ; 
- D 0 - - A 0x03C55F 0F:C54F: 93        .byte $93   ; 
- D 0 - - A 0x03C560 0F:C550: C0        .byte $C0   ; 
- D 0 - - A 0x03C561 0F:C551: 7F        .byte $7F   ; 
- D 0 - - A 0x03C562 0F:C552: C0        .byte $C0   ; 
- D 0 - - A 0x03C563 0F:C553: 1F        .byte $1F   ; 
- D 0 - - A 0x03C564 0F:C554: E0        .byte $E0   ; 
- D 0 - - A 0x03C565 0F:C555: 0F        .byte $0F   ; 
- D 0 - - A 0x03C566 0F:C556: F8        .byte $F8   ; 
- D 0 - - A 0x03C567 0F:C557: 0F        .byte $0F   ; 
- D 0 - - A 0x03C568 0F:C558: F8        .byte $F8   ; 
- D 0 - - A 0x03C569 0F:C559: 09        .byte $09   ; 
- D 0 - - A 0x03C56A 0F:C55A: FE        .byte $FE   ; 
- D 0 - - A 0x03C56B 0F:C55B: 02        .byte $02   ; 
- D 0 - - A 0x03C56C 0F:C55C: 7E        .byte $7E   ; 
- D 0 - - A 0x03C56D 0F:C55D: 00        .byte $00   ; 
- D 0 - - A 0x03C56E 0F:C55E: BF        .byte $BF   ; 
- D 0 - - A 0x03C56F 0F:C55F: C0        .byte $C0   ; 
- D 0 - - A 0x03C570 0F:C560: 2F        .byte $2F   ; 
- D 0 - - A 0x03C571 0F:C561: E0        .byte $E0   ; 
- D 0 - - A 0x03C572 0F:C562: 07        .byte $07   ; 
- D 0 - - A 0x03C573 0F:C563: FF        .byte $FF   ; 
- D 0 - - A 0x03C574 0F:C564: 81        .byte $81   ; 
- D 0 - - A 0x03C575 0F:C565: CF        .byte $CF   ; 
- D 0 - - A 0x03C576 0F:C566: C0        .byte $C0   ; 
- D 0 - - A 0x03C577 0F:C567: 2F        .byte $2F   ; 
- D 0 - - A 0x03C578 0F:C568: E0        .byte $E0   ; 
- D 0 - - A 0x03C579 0F:C569: 1F        .byte $1F   ; 
- D 0 - - A 0x03C57A 0F:C56A: F0        .byte $F0   ; 
- D 0 - - A 0x03C57B 0F:C56B: C1        .byte $C1   ; 
- D 0 - - A 0x03C57C 0F:C56C: 77        .byte $77   ; 
- D 0 - - A 0x03C57D 0F:C56D: E0        .byte $E0   ; 
- D 0 - - A 0x03C57E 0F:C56E: 33        .byte $33   ; 
- D 0 - - A 0x03C57F 0F:C56F: F0        .byte $F0   ; 
- D 0 - - A 0x03C580 0F:C570: 99        .byte $99   ; 
- D 0 - - A 0x03C581 0F:C571: 78        .byte $78   ; 
- D 0 - - A 0x03C582 0F:C572: 2C        .byte $2C   ; 
- D 0 - - A 0x03C583 0F:C573: 3E        .byte $3E   ; 
- D 0 - - A 0x03C584 0F:C574: E2        .byte $E2   ; 
- D 0 - - A 0x03C585 0F:C575: 1F        .byte $1F   ; 
- D 0 - - A 0x03C586 0F:C576: E0        .byte $E0   ; 
- D 0 - - A 0x03C587 0F:C577: 47        .byte $47   ; 
- D 0 - - A 0x03C588 0F:C578: F0        .byte $F0   ; 
- D 0 - - A 0x03C589 0F:C579: 03        .byte $03   ; 
- D 0 - - A 0x03C58A 0F:C57A: FC        .byte $FC   ; 
- D 0 - - A 0x03C58B 0F:C57B: 41        .byte $41   ; 
- D 0 - - A 0x03C58C 0F:C57C: 7E        .byte $7E   ; 
- D 0 - - A 0x03C58D 0F:C57D: F0        .byte $F0   ; 
- D 0 - - A 0x03C58E 0F:C57E: 3B        .byte $3B   ; 
- D 0 - - A 0x03C58F 0F:C57F: F0        .byte $F0   ; 
- D 0 - - A 0x03C590 0F:C580: 19        .byte $19   ; 
- D 0 - - A 0x03C591 0F:C581: F8        .byte $F8   ; 
- D 0 - - A 0x03C592 0F:C582: 01        .byte $01   ; 
- D 0 - - A 0x03C593 0F:C583: FC        .byte $FC   ; 
- D 0 - - A 0x03C594 0F:C584: 12        .byte $12   ; 
- D 0 - - A 0x03C595 0F:C585: 3F        .byte $3F   ; 
- D 0 - - A 0x03C596 0F:C586: F8        .byte $F8   ; 
- D 0 - - A 0x03C597 0F:C587: 1C        .byte $1C   ; 
- D 0 - - A 0x03C598 0F:C588: F8        .byte $F8   ; 
- D 0 - - A 0x03C599 0F:C589: 0C        .byte $0C   ; 
- D 0 - - A 0x03C59A 0F:C58A: 7C        .byte $7C   ; 
- D 0 - - A 0x03C59B 0F:C58B: 02        .byte $02   ; 
- D 0 - - A 0x03C59C 0F:C58C: 3F        .byte $3F   ; 
- D 0 - - A 0x03C59D 0F:C58D: 0B        .byte $0B   ; 
- D 0 - - A 0x03C59E 0F:C58E: 1F        .byte $1F   ; 
- D 0 - - A 0x03C59F 0F:C58F: FC        .byte $FC   ; 
- D 0 - - A 0x03C5A0 0F:C590: 0F        .byte $0F   ; 
- D 0 - - A 0x03C5A1 0F:C591: 7C        .byte $7C   ; 
- D 0 - - A 0x03C5A2 0F:C592: 04        .byte $04   ; 
- D 0 - - A 0x03C5A3 0F:C593: 3E        .byte $3E   ; 
- D 0 - - A 0x03C5A4 0F:C594: 02        .byte $02   ; 
- D 0 - - A 0x03C5A5 0F:C595: 9F        .byte $9F   ; 
- D 0 - - A 0x03C5A6 0F:C596: 8D        .byte $8D   ; 
- D 0 - - A 0x03C5A7 0F:C597: 0F        .byte $0F   ; 
- D 0 - - A 0x03C5A8 0F:C598: 7C        .byte $7C   ; 
- D 0 - - A 0x03C5A9 0F:C599: 07        .byte $07   ; 
- D 0 - - A 0x03C5AA 0F:C59A: 7E        .byte $7E   ; 
- D 0 - - A 0x03C5AB 0F:C59B: 02        .byte $02   ; 
- D 0 - - A 0x03C5AC 0F:C59C: 3F        .byte $3F   ; 
- D 0 - - A 0x03C5AD 0F:C59D: 82        .byte $82   ; 
- D 0 - - A 0x03C5AE 0F:C59E: 1F        .byte $1F   ; 
- D 0 - - A 0x03C5AF 0F:C59F: 86        .byte $86   ; 
- D 0 - - A 0x03C5B0 0F:C5A0: 0F        .byte $0F   ; 
- D 0 - - A 0x03C5B1 0F:C5A1: FE        .byte $FE   ; 
- D 0 - - A 0x03C5B2 0F:C5A2: 07        .byte $07   ; 
- D 0 - - A 0x03C5B3 0F:C5A3: 3E        .byte $3E   ; 
- D 0 - - A 0x03C5B4 0F:C5A4: 06        .byte $06   ; 
- D 0 - - A 0x03C5B5 0F:C5A5: 1F        .byte $1F   ; 
- D 0 - - A 0x03C5B6 0F:C5A6: 81        .byte $81   ; 
- D 0 - - A 0x03C5B7 0F:C5A7: 1F        .byte $1F   ; 
- D 0 - - A 0x03C5B8 0F:C5A8: C9        .byte $C9   ; 
- D 0 - - A 0x03C5B9 0F:C5A9: 0F        .byte $0F   ; 
- D 0 - - A 0x03C5BA 0F:C5AA: 7E        .byte $7E   ; 
- D 0 - - A 0x03C5BB 0F:C5AB: 0F        .byte $0F   ; 
- D 0 - - A 0x03C5BC 0F:C5AC: 5C        .byte $5C   ; 
- D 0 - - A 0x03C5BD 0F:C5AD: 04        .byte $04   ; 
- D 0 - - A 0x03C5BE 0F:C5AE: 3F        .byte $3F   ; 
- D 0 - - A 0x03C5BF 0F:C5AF: 82        .byte $82   ; 
- D 0 - - A 0x03C5C0 0F:C5B0: 1F        .byte $1F   ; 
- D 0 - - A 0x03C5C1 0F:C5B1: B4        .byte $B4   ; 
- D 0 - - A 0x03C5C2 0F:C5B2: 0F        .byte $0F   ; 
- D 0 - - A 0x03C5C3 0F:C5B3: BE        .byte $BE   ; 
- D 0 - - A 0x03C5C4 0F:C5B4: 0F        .byte $0F   ; 
- D 0 - - A 0x03C5C5 0F:C5B5: 3C        .byte $3C   ; 
- D 0 - - A 0x03C5C6 0F:C5B6: 04        .byte $04   ; 
- D 0 - - A 0x03C5C7 0F:C5B7: 7E        .byte $7E   ; 
- D 0 - - A 0x03C5C8 0F:C5B8: 04        .byte $04   ; 
- D 0 - - A 0x03C5C9 0F:C5B9: 3F        .byte $3F   ; 
- D 0 - - A 0x03C5CA 0F:C5BA: D8        .byte $D8   ; 
- D 0 - - A 0x03C5CB 0F:C5BB: 0F        .byte $0F   ; 
- D 0 - - A 0x03C5CC 0F:C5BC: F8        .byte $F8   ; 
- D 0 - - A 0x03C5CD 0F:C5BD: 27        .byte $27   ; 
- D 0 - - A 0x03C5CE 0F:C5BE: F8        .byte $F8   ; 
- D 0 - - A 0x03C5CF 0F:C5BF: 20        .byte $20   ; 
- D 0 - - A 0x03C5D0 0F:C5C0: FC        .byte $FC   ; 
- D 0 - - A 0x03C5D1 0F:C5C1: 90        .byte $90   ; 
- D 0 - - A 0x03C5D2 0F:C5C2: 7F        .byte $7F   ; 
- D 0 - - A 0x03C5D3 0F:C5C3: C0        .byte $C0   ; 
- D 0 - - A 0x03C5D4 0F:C5C4: 1F        .byte $1F   ; 
- D 0 - - A 0x03C5D5 0F:C5C5: C0        .byte $C0   ; 
- D 0 - - A 0x03C5D6 0F:C5C6: 2F        .byte $2F   ; 
- D 0 - - A 0x03C5D7 0F:C5C7: C3        .byte $C3   ; 
- D 0 - - A 0x03C5D8 0F:C5C8: 07        .byte $07   ; 
- D 0 - - A 0x03C5D9 0F:C5C9: E3        .byte $E3   ; 
- D 0 - - A 0x03C5DA 0F:C5CA: 87        .byte $87   ; 
- D 0 - - A 0x03C5DB 0F:C5CB: E9        .byte $E9   ; 
- D 0 - - A 0x03C5DC 0F:C5CC: E1        .byte $E1   ; 
- D 0 - - A 0x03C5DD 0F:C5CD: F8        .byte $F8   ; 
- D 0 - - A 0x03C5DE 0F:C5CE: C1        .byte $C1   ; 
- D 0 - - A 0x03C5DF 0F:C5CF: F8        .byte $F8   ; 
- D 0 - - A 0x03C5E0 0F:C5D0: 70        .byte $70   ; 
- D 0 - - A 0x03C5E1 0F:C5D1: F8        .byte $F8   ; 
- D 0 - - A 0x03C5E2 0F:C5D2: 70        .byte $70   ; 
- D 0 - - A 0x03C5E3 0F:C5D3: 78        .byte $78   ; 
- D 0 - - A 0x03C5E4 0F:C5D4: 38        .byte $38   ; 
- D 0 - - A 0x03C5E5 0F:C5D5: 3C        .byte $3C   ; 
- D 0 - - A 0x03C5E6 0F:C5D6: 3C        .byte $3C   ; 
- D 0 - - A 0x03C5E7 0F:C5D7: 3E        .byte $3E   ; 
- D 0 - - A 0x03C5E8 0F:C5D8: 2C        .byte $2C   ; 
- D 0 - - A 0x03C5E9 0F:C5D9: 3E        .byte $3E   ; 
- D 0 - - A 0x03C5EA 0F:C5DA: 1E        .byte $1E   ; 
- D 0 - - A 0x03C5EB 0F:C5DB: 3C        .byte $3C   ; 
- D 0 - - A 0x03C5EC 0F:C5DC: 1A        .byte $1A   ; 
- D 0 - - A 0x03C5ED 0F:C5DD: 1E        .byte $1E   ; 
- D 0 - - A 0x03C5EE 0F:C5DE: 8E        .byte $8E   ; 
- D 0 - - A 0x03C5EF 0F:C5DF: 0F        .byte $0F   ; 
- D 0 - - A 0x03C5F0 0F:C5E0: 0E        .byte $0E   ; 
- D 0 - - A 0x03C5F1 0F:C5E1: 2F        .byte $2F   ; 
- D 0 - - A 0x03C5F2 0F:C5E2: 07        .byte $07   ; 
- D 0 - - A 0x03C5F3 0F:C5E3: 1F        .byte $1F   ; 
- D 0 - - A 0x03C5F4 0F:C5E4: 0F        .byte $0F   ; 
- D 0 - - A 0x03C5F5 0F:C5E5: 8F        .byte $8F   ; 
- D 0 - - A 0x03C5F6 0F:C5E6: 85        .byte $85   ; 
- D 0 - - A 0x03C5F7 0F:C5E7: 8F        .byte $8F   ; 
- D 0 - - A 0x03C5F8 0F:C5E8: E2        .byte $E2   ; 
- D 0 - - A 0x03C5F9 0F:C5E9: 83        .byte $83   ; 
- D 0 - - A 0x03C5FA 0F:C5EA: 2B        .byte $2B   ; 
- D 0 - - A 0x03C5FB 0F:C5EB: 27        .byte $27   ; 
- D 0 - - A 0x03C5FC 0F:C5EC: 27        .byte $27   ; 
- D 0 - - A 0x03C5FD 0F:C5ED: 17        .byte $17   ; 
- D 0 - - A 0x03C5FE 0F:C5EE: 07        .byte $07   ; 
- D 0 - - A 0x03C5FF 0F:C5EF: AF        .byte $AF   ; 
- D 0 - - A 0x03C600 0F:C5F0: 89        .byte $89   ; 
- D 0 - - A 0x03C601 0F:C5F1: A7        .byte $A7   ; 
- D 0 - - A 0x03C602 0F:C5F2: CA        .byte $CA   ; 
- D 0 - - A 0x03C603 0F:C5F3: 26        .byte $26   ; 
- D 0 - - A 0x03C604 0F:C5F4: AB        .byte $AB   ; 
- D 0 - - A 0x03C605 0F:C5F5: AC        .byte $AC   ; 
- D 0 - - A 0x03C606 0F:C5F6: AA        .byte $AA   ; 
- D 0 - - A 0x03C607 0F:C5F7: AC        .byte $AC   ; 
- D 0 - - A 0x03C608 0F:C5F8: 9A        .byte $9A   ; 
- D 0 - - A 0x03C609 0F:C5F9: AC        .byte $AC   ; 
- D 0 - - A 0x03C60A 0F:C5FA: 2A        .byte $2A   ; 
- D 0 - - A 0x03C60B 0F:C5FB: AB        .byte $AB   ; 
- D 0 - - A 0x03C60C 0F:C5FC: AA        .byte $AA   ; 
- D 0 - - A 0x03C60D 0F:C5FD: AA        .byte $AA   ; 
- D 0 - - A 0x03C60E 0F:C5FE: AA        .byte $AA   ; 
- D 0 - - A 0x03C60F 0F:C5FF: CA        .byte $CA   ; 
- D 0 - - A 0x03C610 0F:C600: AA        .byte $AA   ; 
- D 0 - - A 0x03C611 0F:C601: E8        .byte $E8   ; 
- D 0 - - A 0x03C612 0F:C602: AA        .byte $AA   ; 
- D 0 - - A 0x03C613 0F:C603: 15        .byte $15   ; 
- D 0 - - A 0x03C614 0F:C604: 3A        .byte $3A   ; 
- D 0 - - A 0x03C615 0F:C605: BA        .byte $BA   ; 
- D 0 - - A 0x03C616 0F:C606: AE        .byte $AE   ; 
- D 0 - - A 0x03C617 0F:C607: C0        .byte $C0   ; 
- D 0 - - A 0x03C618 0F:C608: 8B        .byte $8B   ; 
- D 0 - - A 0x03C619 0F:C609: D7        .byte $D7   ; 
- D 0 - - A 0x03C61A 0F:C60A: 05        .byte $05   ; 
- D 0 - - A 0x03C61B 0F:C60B: 7C        .byte $7C   ; 
- D 0 - - A 0x03C61C 0F:C60C: F0        .byte $F0   ; 
- D 0 - - A 0x03C61D 0F:C60D: 0F        .byte $0F   ; 
- D 0 - - A 0x03C61E 0F:C60E: E0        .byte $E0   ; 
- D 0 - - A 0x03C61F 0F:C60F: 07        .byte $07   ; 
- D 0 - - A 0x03C620 0F:C610: 7F        .byte $7F   ; 
- D 0 - - A 0x03C621 0F:C611: 80        .byte $80   ; 
- D 0 - - A 0x03C622 0F:C612: 1F        .byte $1F   ; 
- D 0 - - A 0x03C623 0F:C613: FC        .byte $FC   ; 
- D 0 - - A 0x03C624 0F:C614: 01        .byte $01   ; 
- D 0 - - A 0x03C625 0F:C615: 3F        .byte $3F   ; 
- D 0 - - A 0x03C626 0F:C616: F0        .byte $F0   ; 
- D 0 - - A 0x03C627 0F:C617: 07        .byte $07   ; 
- D 0 - - A 0x03C628 0F:C618: FC        .byte $FC   ; 
- D 0 - - A 0x03C629 0F:C619: C0        .byte $C0   ; 
- D 0 - - A 0x03C62A 0F:C61A: 0F        .byte $0F   ; 
- D 0 - - A 0x03C62B 0F:C61B: F4        .byte $F4   ; 
- D 0 - - A 0x03C62C 0F:C61C: 83        .byte $83   ; 
- D 0 - - A 0x03C62D 0F:C61D: 1F        .byte $1F   ; 
- D 0 - - A 0x03C62E 0F:C61E: E0        .byte $E0   ; 
- D 0 - - A 0x03C62F 0F:C61F: 07        .byte $07   ; 
- D 0 - - A 0x03C630 0F:C620: 3F        .byte $3F   ; 
- D 0 - - A 0x03C631 0F:C621: 82        .byte $82   ; 
- D 0 - - A 0x03C632 0F:C622: 1F        .byte $1F   ; 
- D 0 - - A 0x03C633 0F:C623: 3E        .byte $3E   ; 
- D 0 - - A 0x03C634 0F:C624: 0C        .byte $0C   ; 
- D 0 - - A 0x03C635 0F:C625: 3E        .byte $3E   ; 
- D 0 - - A 0x03C636 0F:C626: 7C        .byte $7C   ; 
- D 0 - - A 0x03C637 0F:C627: 18        .byte $18   ; 
- D 0 - - A 0x03C638 0F:C628: 3E        .byte $3E   ; 
- D 0 - - A 0x03C639 0F:C629: 7C        .byte $7C   ; 
- D 0 - - A 0x03C63A 0F:C62A: 18        .byte $18   ; 
- D 0 - - A 0x03C63B 0F:C62B: 3E        .byte $3E   ; 
- D 0 - - A 0x03C63C 0F:C62C: 7C        .byte $7C   ; 
- D 0 - - A 0x03C63D 0F:C62D: 28        .byte $28   ; 
- D 0 - - A 0x03C63E 0F:C62E: 1F        .byte $1F   ; 
- D 0 - - A 0x03C63F 0F:C62F: FC        .byte $FC   ; 
- D 0 - - A 0x03C640 0F:C630: C0        .byte $C0   ; 
- D 0 - - A 0x03C641 0F:C631: 0F        .byte $0F   ; 
- D 0 - - A 0x03C642 0F:C632: 3E        .byte $3E   ; 
- D 0 - - A 0x03C643 0F:C633: F0        .byte $F0   ; 
- D 0 - - A 0x03C644 0F:C634: 83        .byte $83   ; 
- D 0 - - A 0x03C645 0F:C635: 2F        .byte $2F   ; 
- D 0 - - A 0x03C646 0F:C636: F0        .byte $F0   ; 
- D 0 - - A 0x03C647 0F:C637: C1        .byte $C1   ; 
- D 0 - - A 0x03C648 0F:C638: 1F        .byte $1F   ; 
- D 0 - - A 0x03C649 0F:C639: F8        .byte $F8   ; 
- D 0 - - A 0x03C64A 0F:C63A: E0        .byte $E0   ; 
- D 0 - - A 0x03C64B 0F:C63B: 1B        .byte $1B   ; 
- D 0 - - A 0x03C64C 0F:C63C: 3C        .byte $3C   ; 
- D 0 - - A 0x03C64D 0F:C63D: 78        .byte $78   ; 
- D 0 - - A 0x03C64E 0F:C63E: 0E        .byte $0E   ; 
- D 0 - - A 0x03C64F 0F:C63F: 1E        .byte $1E   ; 
- D 0 - - A 0x03C650 0F:C640: 3E        .byte $3E   ; 
- D 0 - - A 0x03C651 0F:C641: 07        .byte $07   ; 
- D 0 - - A 0x03C652 0F:C642: 07        .byte $07   ; 
- D 0 - - A 0x03C653 0F:C643: 9F        .byte $9F   ; 
- D 0 - - A 0x03C654 0F:C644: 83        .byte $83   ; 
- D 0 - - A 0x03C655 0F:C645: 83        .byte $83   ; 
- D 0 - - A 0x03C656 0F:C646: CF        .byte $CF   ; 
- D 0 - - A 0x03C657 0F:C647: E1        .byte $E1   ; 
- D 0 - - A 0x03C658 0F:C648: C1        .byte $C1   ; 
- D 0 - - A 0x03C659 0F:C649: E7        .byte $E7   ; 
- D 0 - - A 0x03C65A 0F:C64A: 70        .byte $70   ; 
- D 0 - - A 0x03C65B 0F:C64B: F0        .byte $F0   ; 
- D 0 - - A 0x03C65C 0F:C64C: 73        .byte $73   ; 
- D 0 - - A 0x03C65D 0F:C64D: 3C        .byte $3C   ; 
- D 0 - - A 0x03C65E 0F:C64E: F0        .byte $F0   ; 
- D 0 - - A 0x03C65F 0F:C64F: 18        .byte $18   ; 
- D 0 - - A 0x03C660 0F:C650: 1F        .byte $1F   ; 
- D 0 - - A 0x03C661 0F:C651: 78        .byte $78   ; 
- D 0 - - A 0x03C662 0F:C652: 8E        .byte $8E   ; 
- D 0 - - A 0x03C663 0F:C653: 47        .byte $47   ; 
- D 0 - - A 0x03C664 0F:C654: 1E        .byte $1E   ; 
- D 0 - - A 0x03C665 0F:C655: E3        .byte $E3   ; 
- D 0 - - A 0x03C666 0F:C656: 31        .byte $31   ; 
- D 0 - - A 0x03C667 0F:C657: C7        .byte $C7   ; 
- D 0 - - A 0x03C668 0F:C658: 79        .byte $79   ; 
- D 0 - - A 0x03C669 0F:C659: C0        .byte $C0   ; 
- D 0 - - A 0x03C66A 0F:C65A: 71        .byte $71   ; 
- D 0 - - A 0x03C66B 0F:C65B: 5C        .byte $5C   ; 
- D 0 - - A 0x03C66C 0F:C65C: E1        .byte $E1   ; 
- D 0 - - A 0x03C66D 0F:C65D: 3A        .byte $3A   ; 
- D 0 - - A 0x03C66E 0F:C65E: A6        .byte $A6   ; 
- D 0 - - A 0x03C66F 0F:C65F: 31        .byte $31   ; 
- D 0 - - A 0x03C670 0F:C660: 8F        .byte $8F   ; 
- D 0 - - A 0x03C671 0F:C661: 59        .byte $59   ; 
- D 0 - - A 0x03C672 0F:C662: DC        .byte $DC   ; 
- D 0 - - A 0x03C673 0F:C663: 67        .byte $67   ; 
- D 0 - - A 0x03C674 0F:C664: 0C        .byte $0C   ; 
- D 0 - - A 0x03C675 0F:C665: 76        .byte $76   ; 
- D 0 - - A 0x03C676 0F:C666: 23        .byte $23   ; 
- D 0 - - A 0x03C677 0F:C667: 07        .byte $07   ; 
- D 0 - - A 0x03C678 0F:C668: BB        .byte $BB   ; 
- D 0 - - A 0x03C679 0F:C669: 31        .byte $31   ; 
- D 0 - - A 0x03C67A 0F:C66A: 83        .byte $83   ; 
- D 0 - - A 0x03C67B 0F:C66B: F9        .byte $F9   ; 
- D 0 - - A 0x03C67C 0F:C66C: 31        .byte $31   ; 
- D 0 - - A 0x03C67D 0F:C66D: 83        .byte $83   ; 
- D 0 - - A 0x03C67E 0F:C66E: FD        .byte $FD   ; 
- D 0 - - A 0x03C67F 0F:C66F: 99        .byte $99   ; 
- D 0 - - A 0x03C680 0F:C670: 01        .byte $01   ; 
- D 0 - - A 0x03C681 0F:C671: FE        .byte $FE   ; 
- D 0 - - A 0x03C682 0F:C672: 11        .byte $11   ; 
- D 0 - - A 0x03C683 0F:C673: 0B        .byte $0B   ; 
- D 0 - - A 0x03C684 0F:C674: EC        .byte $EC   ; 
- D 0 - - A 0x03C685 0F:C675: 23        .byte $23   ; 
- D 0 - - A 0x03C686 0F:C676: 3E        .byte $3E   ; 
- D 0 - - A 0x03C687 0F:C677: D8        .byte $D8   ; 
- D 0 - - A 0x03C688 0F:C678: 4F        .byte $4F   ; 
- D 0 - - A 0x03C689 0F:C679: E4        .byte $E4   ; 
- D 0 - - A 0x03C68A 0F:C67A: 80        .byte $80   ; 
- D 0 - - A 0x03C68B 0F:C67B: 9F        .byte $9F   ; 
- D 0 - - A 0x03C68C 0F:C67C: 89        .byte $89   ; 
- D 0 - - A 0x03C68D 0F:C67D: 17        .byte $17   ; 
- D 0 - - A 0x03C68E 0F:C67E: 3E        .byte $3E   ; 
- D 0 - - A 0x03C68F 0F:C67F: 03        .byte $03   ; 
- D 0 - - A 0x03C690 0F:C680: 9F        .byte $9F   ; 
- D 0 - - A 0x03C691 0F:C681: E4        .byte $E4   ; 
- D 0 - - A 0x03C692 0F:C682: 26        .byte $26   ; 
- D 0 - - A 0x03C693 0F:C683: 76        .byte $76   ; 
- D 0 - - A 0x03C694 0F:C684: 91        .byte $91   ; 
- D 0 - - A 0x03C695 0F:C685: 27        .byte $27   ; 
- D 0 - - A 0x03C696 0F:C686: A3        .byte $A3   ; 
- D 0 - - A 0x03C697 0F:C687: 17        .byte $17   ; 
- D 0 - - A 0x03C698 0F:C688: 7E        .byte $7E   ; 
- D 0 - - A 0x03C699 0F:C689: 12        .byte $12   ; 
- D 0 - - A 0x03C69A 0F:C68A: 33        .byte $33   ; 
- D 0 - - A 0x03C69B 0F:C68B: 33        .byte $33   ; 
- D 0 - - A 0x03C69C 0F:C68C: 67        .byte $67   ; 
- D 0 - - A 0x03C69D 0F:C68D: 66        .byte $66   ; 
- D 0 - - A 0x03C69E 0F:C68E: 66        .byte $66   ; 
- D 0 - - A 0x03C69F 0F:C68F: C6        .byte $C6   ; 
- D 0 - - A 0x03C6A0 0F:C690: 9A        .byte $9A   ; 
- D 0 - - A 0x03C6A1 0F:C691: 99        .byte $99   ; 
- D 0 - - A 0x03C6A2 0F:C692: CA        .byte $CA   ; 
- D 0 - - A 0x03C6A3 0F:C693: 6C        .byte $6C   ; 
- D 0 - - A 0x03C6A4 0F:C694: B2        .byte $B2   ; 
- D 0 - - A 0x03C6A5 0F:C695: 99        .byte $99   ; 
- D 0 - - A 0x03C6A6 0F:C696: D8        .byte $D8   ; 
- D 0 - - A 0x03C6A7 0F:C697: C9        .byte $C9   ; 
- D 0 - - A 0x03C6A8 0F:C698: CC        .byte $CC   ; 
- D 0 - - A 0x03C6A9 0F:C699: 26        .byte $26   ; 
- D 0 - - A 0x03C6AA 0F:C69A: 66        .byte $66   ; 
- D 0 - - A 0x03C6AB 0F:C69B: B3        .byte $B3   ; 
- D 0 - - A 0x03C6AC 0F:C69C: AA        .byte $AA   ; 
- D 0 - - A 0x03C6AD 0F:C69D: 6C        .byte $6C   ; 
- D 0 - - A 0x03C6AE 0F:C69E: A2        .byte $A2   ; 
- D 0 - - A 0x03C6AF 0F:C69F: B3        .byte $B3   ; 
- D 0 - - A 0x03C6B0 0F:C6A0: 89        .byte $89   ; 
- D 0 - - A 0x03C6B1 0F:C6A1: AD        .byte $AD   ; 
- D 0 - - A 0x03C6B2 0F:C6A2: C9        .byte $C9   ; 
- D 0 - - A 0x03C6B3 0F:C6A3: CC        .byte $CC   ; 
- D 0 - - A 0x03C6B4 0F:C6A4: 6C        .byte $6C   ; 
- D 0 - - A 0x03C6B5 0F:C6A5: 32        .byte $32   ; 
- D 0 - - A 0x03C6B6 0F:C6A6: AB        .byte $AB   ; 
- D 0 - - A 0x03C6B7 0F:C6A7: C9        .byte $C9   ; 
- D 0 - - A 0x03C6B8 0F:C6A8: AC        .byte $AC   ; 
- D 0 - - A 0x03C6B9 0F:C6A9: AC        .byte $AC   ; 
- D 0 - - A 0x03C6BA 0F:C6AA: 2A        .byte $2A   ; 
- D 0 - - A 0x03C6BB 0F:C6AB: AB        .byte $AB   ; 
- D 0 - - A 0x03C6BC 0F:C6AC: 26        .byte $26   ; 
- D 0 - - A 0x03C6BD 0F:C6AD: AB        .byte $AB   ; 
- D 0 - - A 0x03C6BE 0F:C6AE: CC        .byte $CC   ; 
- D 0 - - A 0x03C6BF 0F:C6AF: AA        .byte $AA   ; 
- D 0 - - A 0x03C6C0 0F:C6B0: AA        .byte $AA   ; 
- D 0 - - A 0x03C6C1 0F:C6B1: AA        .byte $AA   ; 
- D 0 - - A 0x03C6C2 0F:C6B2: 26        .byte $26   ; 
- D 0 - - A 0x03C6C3 0F:C6B3: 33        .byte $33   ; 
- D 0 - - A 0x03C6C4 0F:C6B4: AB        .byte $AB   ; 
- D 0 - - A 0x03C6C5 0F:C6B5: AA        .byte $AA   ; 
- D 0 - - A 0x03C6C6 0F:C6B6: CA        .byte $CA   ; 
- D 0 - - A 0x03C6C7 0F:C6B7: 6A        .byte $6A   ; 
- D 0 - - A 0x03C6C8 0F:C6B8: B2        .byte $B2   ; 
- D 0 - - A 0x03C6C9 0F:C6B9: AA        .byte $AA   ; 
- D 0 - - A 0x03C6CA 0F:C6BA: AA        .byte $AA   ; 
- D 0 - - A 0x03C6CB 0F:C6BB: AA        .byte $AA   ; 
- D 0 - - A 0x03C6CC 0F:C6BC: AA        .byte $AA   ; 
- D 0 - - A 0x03C6CD 0F:C6BD: AA        .byte $AA   ; 
- D 0 - - A 0x03C6CE 0F:C6BE: AA        .byte $AA   ; 
- D 0 - - A 0x03C6CF 0F:C6BF: B2        .byte $B2   ; 
- D 0 - - A 0x03C6D0 0F:C6C0: D4        .byte $D4   ; 
- D 0 - - A 0x03C6D1 0F:C6C1: AA        .byte $AA   ; 
- D 0 - - A 0x03C6D2 0F:C6C2: 2B        .byte $2B   ; 
- D 0 - - A 0x03C6D3 0F:C6C3: E1        .byte $E1   ; 
- D 0 - - A 0x03C6D4 0F:C6C4: 81        .byte $81   ; 
- D 0 - - A 0x03C6D5 0F:C6C5: 9E        .byte $9E   ; 
- D 0 - - A 0x03C6D6 0F:C6C6: FE        .byte $FE   ; 
- D 0 - - A 0x03C6D7 0F:C6C7: 01        .byte $01   ; 
- D 0 - - A 0x03C6D8 0F:C6C8: 1E        .byte $1E   ; 
- D 0 - - A 0x03C6D9 0F:C6C9: 82        .byte $82   ; 
- D 0 - - A 0x03C6DA 0F:C6CA: FF        .byte $FF   ; 
- D 0 - - A 0x03C6DB 0F:C6CB: 0F        .byte $0F   ; 
- D 0 - - A 0x03C6DC 0F:C6CC: 78        .byte $78   ; 
- D 0 - - A 0x03C6DD 0F:C6CD: 08        .byte $08   ; 
- D 0 - - A 0x03C6DE 0F:C6CE: FC        .byte $FC   ; 
- D 0 - - A 0x03C6DF 0F:C6CF: 3E        .byte $3E   ; 
- D 0 - - A 0x03C6E0 0F:C6D0: F0        .byte $F0   ; 
- D 0 - - A 0x03C6E1 0F:C6D1: 10        .byte $10   ; 
- D 0 - - A 0x03C6E2 0F:C6D2: F8        .byte $F8   ; 
- D 0 - - A 0x03C6E3 0F:C6D3: 1F        .byte $1F   ; 
- D 0 - - A 0x03C6E4 0F:C6D4: F0        .byte $F0   ; 
- D 0 - - A 0x03C6E5 0F:C6D5: 03        .byte $03   ; 
- D 0 - - A 0x03C6E6 0F:C6D6: FC        .byte $FC   ; 
- D 0 - - A 0x03C6E7 0F:C6D7: 1F        .byte $1F   ; 
- D 0 - - A 0x03C6E8 0F:C6D8: F8        .byte $F8   ; 
- D 0 - - A 0x03C6E9 0F:C6D9: 01        .byte $01   ; 
- D 0 - - A 0x03C6EA 0F:C6DA: F8        .byte $F8   ; 
- D 0 - - A 0x03C6EB 0F:C6DB: 1F        .byte $1F   ; 
- D 0 - - A 0x03C6EC 0F:C6DC: F0        .byte $F0   ; 
- D 0 - - A 0x03C6ED 0F:C6DD: 03        .byte $03   ; 
- D 0 - - A 0x03C6EE 0F:C6DE: F8        .byte $F8   ; 
- D 0 - - A 0x03C6EF 0F:C6DF: 0F        .byte $0F   ; 
- D 0 - - A 0x03C6F0 0F:C6E0: F0        .byte $F0   ; 
- D 0 - - A 0x03C6F1 0F:C6E1: 07        .byte $07   ; 
- D 0 - - A 0x03C6F2 0F:C6E2: F0        .byte $F0   ; 
- D 0 - - A 0x03C6F3 0F:C6E3: 1F        .byte $1F   ; 
- D 0 - - A 0x03C6F4 0F:C6E4: F0        .byte $F0   ; 
- D 0 - - A 0x03C6F5 0F:C6E5: 07        .byte $07   ; 
- D 0 - - A 0x03C6F6 0F:C6E6: F0        .byte $F0   ; 
- D 0 - - A 0x03C6F7 0F:C6E7: 1F        .byte $1F   ; 
- D 0 - - A 0x03C6F8 0F:C6E8: F8        .byte $F8   ; 
- D 0 - - A 0x03C6F9 0F:C6E9: 03        .byte $03   ; 
- D 0 - - A 0x03C6FA 0F:C6EA: F0        .byte $F0   ; 
- D 0 - - A 0x03C6FB 0F:C6EB: 1F        .byte $1F   ; 
- D 0 - - A 0x03C6FC 0F:C6EC: F8        .byte $F8   ; 
- D 0 - - A 0x03C6FD 0F:C6ED: 03        .byte $03   ; 
- D 0 - - A 0x03C6FE 0F:C6EE: F0        .byte $F0   ; 
- D 0 - - A 0x03C6FF 0F:C6EF: 1F        .byte $1F   ; 
- D 0 - - A 0x03C700 0F:C6F0: F0        .byte $F0   ; 
- D 0 - - A 0x03C701 0F:C6F1: 03        .byte $03   ; 
- D 0 - - A 0x03C702 0F:C6F2: E1        .byte $E1   ; 
- D 0 - - A 0x03C703 0F:C6F3: 7F        .byte $7F   ; 
- D 0 - - A 0x03C704 0F:C6F4: E0        .byte $E0   ; 
- D 0 - - A 0x03C705 0F:C6F5: 07        .byte $07   ; 
- D 0 - - A 0x03C706 0F:C6F6: C2        .byte $C2   ; 
- D 0 - - A 0x03C707 0F:C6F7: AF        .byte $AF   ; 
- D 0 - - A 0x03C708 0F:C6F8: 85        .byte $85   ; 
- D 0 - - A 0x03C709 0F:C6F9: 0F        .byte $0F   ; 
- D 0 - - A 0x03C70A 0F:C6FA: 0C        .byte $0C   ; 
- D 0 - - A 0x03C70B 0F:C6FB: BF        .byte $BF   ; 
- D 0 - - A 0x03C70C 0F:C6FC: 16        .byte $16   ; 
- D 0 - - A 0x03C70D 0F:C6FD: 3E        .byte $3E   ; 
- D 0 - - A 0x03C70E 0F:C6FE: 28        .byte $28   ; 
- D 0 - - A 0x03C70F 0F:C6FF: FC        .byte $FC   ; 
- D 0 - - A 0x03C710 0F:C700: 78        .byte $78   ; 
- D 0 - - A 0x03C711 0F:C701: F8        .byte $F8   ; 
- D 0 - - A 0x03C712 0F:C702: E0        .byte $E0   ; 
- D 0 - - A 0x03C713 0F:C703: E0        .byte $E0   ; 
- D 0 - - A 0x03C714 0F:C704: E3        .byte $E3   ; 
- D 0 - - A 0x03C715 0F:C705: C3        .byte $C3   ; 
- D 0 - - A 0x03C716 0F:C706: 87        .byte $87   ; 
- D 0 - - A 0x03C717 0F:C707: 03        .byte $03   ; 
- D 0 - - A 0x03C718 0F:C708: 0F        .byte $0F   ; 
- D 0 - - A 0x03C719 0F:C709: 0F        .byte $0F   ; 
- D 0 - - A 0x03C71A 0F:C70A: 7C        .byte $7C   ; 
- D 0 - - A 0x03C71B 0F:C70B: 3C        .byte $3C   ; 
- D 0 - - A 0x03C71C 0F:C70C: 7C        .byte $7C   ; 
- D 0 - - A 0x03C71D 0F:C70D: F8        .byte $F8   ; 
- D 0 - - A 0x03C71E 0F:C70E: E0        .byte $E0   ; 
- D 0 - - A 0x03C71F 0F:C70F: E1        .byte $E1   ; 
- D 0 - - A 0x03C720 0F:C710: C1        .byte $C1   ; 
- D 0 - - A 0x03C721 0F:C711: 87        .byte $87   ; 
- D 0 - - A 0x03C722 0F:C712: 0F        .byte $0F   ; 
- D 0 - - A 0x03C723 0F:C713: 1E        .byte $1E   ; 
- D 0 - - A 0x03C724 0F:C714: 1E        .byte $1E   ; 
- D 0 - - A 0x03C725 0F:C715: 7C        .byte $7C   ; 
- D 0 - - A 0x03C726 0F:C716: F8        .byte $F8   ; 
- D 0 - - A 0x03C727 0F:C717: C1        .byte $C1   ; 
- D 0 - - A 0x03C728 0F:C718: E1        .byte $E1   ; 
- D 0 - - A 0x03C729 0F:C719: 81        .byte $81   ; 
- D 0 - - A 0x03C72A 0F:C71A: 1F        .byte $1F   ; 
- D 0 - - A 0x03C72B 0F:C71B: F6        .byte $F6   ; 
- D 0 - - A 0x03C72C 0F:C71C: 81        .byte $81   ; 
- D 0 - - A 0x03C72D 0F:C71D: CF        .byte $CF   ; 
- D 0 - - A 0x03C72E 0F:C71E: 01        .byte $01   ; 
- D 0 - - A 0x03C72F 0F:C71F: 1F        .byte $1F   ; 
- D 0 - - A 0x03C730 0F:C720: FE        .byte $FE   ; 
- D 0 - - A 0x03C731 0F:C721: 03        .byte $03   ; 
- D 0 - - A 0x03C732 0F:C722: 1F        .byte $1F   ; 
- D 0 - - A 0x03C733 0F:C723: 03        .byte $03   ; 
- D 0 - - A 0x03C734 0F:C724: 3E        .byte $3E   ; 
- D 0 - - A 0x03C735 0F:C725: 78        .byte $78   ; 
- D 0 - - A 0x03C736 0F:C726: 1F        .byte $1F   ; 
- D 0 - - A 0x03C737 0F:C727: F8        .byte $F8   ; 
- D 0 - - A 0x03C738 0F:C728: 18        .byte $18   ; 
- D 0 - - A 0x03C739 0F:C729: 78        .byte $78   ; 
- D 0 - - A 0x03C73A 0F:C72A: 70        .byte $70   ; 
- D 0 - - A 0x03C73B 0F:C72B: FC        .byte $FC   ; 
- D 0 - - A 0x03C73C 0F:C72C: 38        .byte $38   ; 
- D 0 - - A 0x03C73D 0F:C72D: F8        .byte $F8   ; 
- D 0 - - A 0x03C73E 0F:C72E: 00        .byte $00   ; 
- D 0 - - A 0x03C73F 0F:C72F: 7E        .byte $7E   ; 
- D 0 - - A 0x03C740 0F:C730: F8        .byte $F8   ; 
- D 0 - - A 0x03C741 0F:C731: F5        .byte $F5   ; 
- D 0 - - A 0x03C742 0F:C732: 81        .byte $81   ; 
- D 0 - - A 0x03C743 0F:C733: 87        .byte $87   ; 
- D 0 - - A 0x03C744 0F:C734: C1        .byte $C1   ; 
- D 0 - - A 0x03C745 0F:C735: 07        .byte $07   ; 
- D 0 - - A 0x03C746 0F:C736: 8F        .byte $8F   ; 
- D 0 - - A 0x03C747 0F:C737: 0F        .byte $0F   ; 
- D 0 - - A 0x03C748 0F:C738: DF        .byte $DF   ; 
- D 0 - - A 0x03C749 0F:C739: 03        .byte $03   ; 
- D 0 - - A 0x03C74A 0F:C73A: 0E        .byte $0E   ; 
- D 0 - - A 0x03C74B 0F:C73B: 1E        .byte $1E   ; 
- D 0 - - A 0x03C74C 0F:C73C: 0F        .byte $0F   ; 
- D 0 - - A 0x03C74D 0F:C73D: 2E        .byte $2E   ; 
- D 0 - - A 0x03C74E 0F:C73E: 4B        .byte $4B   ; 
- D 0 - - A 0x03C74F 0F:C73F: A7        .byte $A7   ; 
- D 0 - - A 0x03C750 0F:C740: 0E        .byte $0E   ; 
- D 0 - - A 0x03C751 0F:C741: F8        .byte $F8   ; 
- D 0 - - A 0x03C752 0F:C742: C0        .byte $C0   ; 
- D 0 - - A 0x03C753 0F:C743: 7F        .byte $7F   ; 
- D 0 - - A 0x03C754 0F:C744: A8        .byte $A8   ; 
- D 0 - - A 0x03C755 0F:C745: F1        .byte $F1   ; 
- D 0 - - A 0x03C756 0F:C746: E1        .byte $E1   ; 
- D 0 - - A 0x03C757 0F:C747: 1F        .byte $1F   ; 
- D 0 - - A 0x03C758 0F:C748: F0        .byte $F0   ; 
- D 0 - - A 0x03C759 0F:C749: C0        .byte $C0   ; 
- D 0 - - A 0x03C75A 0F:C74A: 87        .byte $87   ; 
- D 0 - - A 0x03C75B 0F:C74B: 03        .byte $03   ; 
- D 0 - - A 0x03C75C 0F:C74C: 7F        .byte $7F   ; 
- D 0 - - A 0x03C75D 0F:C74D: B8        .byte $B8   ; 
- D 0 - - A 0x03C75E 0F:C74E: D1        .byte $D1   ; 
- D 0 - - A 0x03C75F 0F:C74F: 0F        .byte $0F   ; 
- D 0 - - A 0x03C760 0F:C750: AC        .byte $AC   ; 
- D 0 - - A 0x03C761 0F:C751: C4        .byte $C4   ; 
- D 0 - - A 0x03C762 0F:C752: 19        .byte $19   ; 
- D 0 - - A 0x03C763 0F:C753: F8        .byte $F8   ; 
- D 0 - - A 0x03C764 0F:C754: C1        .byte $C1   ; 
- D 0 - - A 0x03C765 0F:C755: 13        .byte $13   ; 
- D 0 - - A 0x03C766 0F:C756: 55        .byte $55   ; 
- D 0 - - A 0x03C767 0F:C757: AF        .byte $AF   ; 
- D 0 - - A 0x03C768 0F:C758: B4        .byte $B4   ; 
- D 0 - - A 0x03C769 0F:C759: 35        .byte $35   ; 
- D 0 - - A 0x03C76A 0F:C75A: 2D        .byte $2D   ; 
- D 0 - - A 0x03C76B 0F:C75B: 53        .byte $53   ; 
- D 0 - - A 0x03C76C 0F:C75C: 63        .byte $63   ; 
- D 0 - - A 0x03C76D 0F:C75D: AA        .byte $AA   ; 
- D 0 - - A 0x03C76E 0F:C75E: B2        .byte $B2   ; 
- D 0 - - A 0x03C76F 0F:C75F: C2        .byte $C2   ; 
- D 0 - - A 0x03C770 0F:C760: 35        .byte $35   ; 
- D 0 - - A 0x03C771 0F:C761: 2C        .byte $2C   ; 
- D 0 - - A 0x03C772 0F:C762: 2B        .byte $2B   ; 
- D 0 - - A 0x03C773 0F:C763: 75        .byte $75   ; 
- D 0 - - A 0x03C774 0F:C764: 6A        .byte $6A   ; 
- D 0 - - A 0x03C775 0F:C765: 53        .byte $53   ; 
- D 0 - - A 0x03C776 0F:C766: 9A        .byte $9A   ; 
- D 0 - - A 0x03C777 0F:C767: 6A        .byte $6A   ; 
- D 0 - - A 0x03C778 0F:C768: A5        .byte $A5   ; 
- D 0 - - A 0x03C779 0F:C769: 8E        .byte $8E   ; 
- D 0 - - A 0x03C77A 0F:C76A: 9C        .byte $9C   ; 
- D 0 - - A 0x03C77B 0F:C76B: A5        .byte $A5   ; 
- D 0 - - A 0x03C77C 0F:C76C: 8B        .byte $8B   ; 
- D 0 - - A 0x03C77D 0F:C76D: 8B        .byte $8B   ; 
- D 0 - - A 0x03C77E 0F:C76E: 8D        .byte $8D   ; 
- D 0 - - A 0x03C77F 0F:C76F: 8B        .byte $8B   ; 
- D 0 - - A 0x03C780 0F:C770: 8B        .byte $8B   ; 
- D 0 - - A 0x03C781 0F:C771: CB        .byte $CB   ; 
- D 0 - - A 0x03C782 0F:C772: E1        .byte $E1   ; 
- D 0 - - A 0x03C783 0F:C773: C9        .byte $C9   ; 
- D 0 - - A 0x03C784 0F:C774: CA        .byte $CA   ; 
- D 0 - - A 0x03C785 0F:C775: A6        .byte $A6   ; 
- D 0 - - A 0x03C786 0F:C776: C6        .byte $C6   ; 
- D 0 - - A 0x03C787 0F:C777: AA        .byte $AA   ; 
- D 0 - - A 0x03C788 0F:C778: CA        .byte $CA   ; 
- D 0 - - A 0x03C789 0F:C779: A6        .byte $A6   ; 
- D 0 - - A 0x03C78A 0F:C77A: C6        .byte $C6   ; 
- D 0 - - A 0x03C78B 0F:C77B: A6        .byte $A6   ; 
- D 0 - - A 0x03C78C 0F:C77C: EA        .byte $EA   ; 
- D 0 - - A 0x03C78D 0F:C77D: 64        .byte $64   ; 
- D 0 - - A 0x03C78E 0F:C77E: 65        .byte $65   ; 
- D 0 - - A 0x03C78F 0F:C77F: 65        .byte $65   ; 
- D 0 - - A 0x03C790 0F:C780: A6        .byte $A6   ; 
- D 0 - - A 0x03C791 0F:C781: 71        .byte $71   ; 
- D 0 - - A 0x03C792 0F:C782: 56        .byte $56   ; 
- D 0 - - A 0x03C793 0F:C783: 3A        .byte $3A   ; 
- D 0 - - A 0x03C794 0F:C784: 66        .byte $66   ; 
- D 0 - - A 0x03C795 0F:C785: F1        .byte $F1   ; 
- D 0 - - A 0x03C796 0F:C786: 61        .byte $61   ; 
- D 0 - - A 0x03C797 0F:C787: 69        .byte $69   ; 
- D 0 - - A 0x03C798 0F:C788: 69        .byte $69   ; 
- D 0 - - A 0x03C799 0F:C789: C5        .byte $C5   ; 
- D 0 - - A 0x03C79A 0F:C78A: 95        .byte $95   ; 
- D 0 - - A 0x03C79B 0F:C78B: 9A        .byte $9A   ; 
- D 0 - - A 0x03C79C 0F:C78C: 69        .byte $69   ; 
- D 0 - - A 0x03C79D 0F:C78D: 69        .byte $69   ; 
- D 0 - - A 0x03C79E 0F:C78E: 6A        .byte $6A   ; 
- D 0 - - A 0x03C79F 0F:C78F: A9        .byte $A9   ; 
- D 0 - - A 0x03C7A0 0F:C790: 5A        .byte $5A   ; 
- D 0 - - A 0x03C7A1 0F:C791: 9C        .byte $9C   ; 
- D 0 - - A 0x03C7A2 0F:C792: 16        .byte $16   ; 
- D 0 - - A 0x03C7A3 0F:C793: 8F        .byte $8F   ; 
- D 0 - - A 0x03C7A4 0F:C794: 9C        .byte $9C   ; 
- D 0 - - A 0x03C7A5 0F:C795: F8        .byte $F8   ; 
- D 0 - - A 0x03C7A6 0F:C796: 68        .byte $68   ; 
- D 0 - - A 0x03C7A7 0F:C797: B8        .byte $B8   ; 
- D 0 - - A 0x03C7A8 0F:C798: 6C        .byte $6C   ; 
- D 0 - - A 0x03C7A9 0F:C799: AA        .byte $AA   ; 
- D 0 - - A 0x03C7AA 0F:C79A: AA        .byte $AA   ; 
- D 0 - - A 0x03C7AB 0F:C79B: AA        .byte $AA   ; 
- D 0 - - A 0x03C7AC 0F:C79C: 2A        .byte $2A   ; 
- D 0 - - A 0x03C7AD 0F:C79D: AB        .byte $AB   ; 
- D 0 - - A 0x03C7AE 0F:C79E: 99        .byte $99   ; 
- D 0 - - A 0x03C7AF 0F:C79F: B2        .byte $B2   ; 
- D 0 - - A 0x03C7B0 0F:C7A0: 89        .byte $89   ; 
- D 0 - - A 0x03C7B1 0F:C7A1: CB        .byte $CB   ; 
- D 0 - - A 0x03C7B2 0F:C7A2: C9        .byte $C9   ; 
- D 0 - - A 0x03C7B3 0F:C7A3: 6A        .byte $6A   ; 
- D 0 - - A 0x03C7B4 0F:C7A4: E4        .byte $E4   ; 
- D 0 - - A 0x03C7B5 0F:C7A5: E1        .byte $E1   ; 
- D 0 - - A 0x03C7B6 0F:C7A6: C6        .byte $C6   ; 
- D 0 - - A 0x03C7B7 0F:C7A7: E2        .byte $E2   ; 
- D 0 - - A 0x03C7B8 0F:C7A8: 71        .byte $71   ; 
- D 0 - - A 0x03C7B9 0F:C7A9: B8        .byte $B8   ; 
- D 0 - - A 0x03C7BA 0F:C7AA: B8        .byte $B8   ; 
- D 0 - - A 0x03C7BB 0F:C7AB: 71        .byte $71   ; 
- D 0 - - A 0x03C7BC 0F:C7AC: B8        .byte $B8   ; 
- D 0 - - A 0x03C7BD 0F:C7AD: CA        .byte $CA   ; 
- D 0 - - A 0x03C7BE 0F:C7AE: B4        .byte $B4   ; 
- D 0 - - A 0x03C7BF 0F:C7AF: 6C        .byte $6C   ; 
- D 0 - - A 0x03C7C0 0F:C7B0: 2C        .byte $2C   ; 
- D 0 - - A 0x03C7C1 0F:C7B1: 6E        .byte $6E   ; 
- D 0 - - A 0x03C7C2 0F:C7B2: 2C        .byte $2C   ; 
- D 0 - - A 0x03C7C3 0F:C7B3: 4E        .byte $4E   ; 
- D 0 - - A 0x03C7C4 0F:C7B4: 6B        .byte $6B   ; 
- D 0 - - A 0x03C7C5 0F:C7B5: 32        .byte $32   ; 
- D 0 - - A 0x03C7C6 0F:C7B6: 3B        .byte $3B   ; 
- D 0 - - A 0x03C7C7 0F:C7B7: 38        .byte $38   ; 
- D 0 - - A 0x03C7C8 0F:C7B8: 9D        .byte $9D   ; 
- D 0 - - A 0x03C7C9 0F:C7B9: 89        .byte $89   ; 
- D 0 - - A 0x03C7CA 0F:C7BA: CB        .byte $CB   ; 
- D 0 - - A 0x03C7CB 0F:C7BB: D4        .byte $D4   ; 
- D 0 - - A 0x03C7CC 0F:C7BC: CC        .byte $CC   ; 
- D 0 - - A 0x03C7CD 0F:C7BD: 64        .byte $64   ; 
- D 0 - - A 0x03C7CE 0F:C7BE: 63        .byte $63   ; 
- D 0 - - A 0x03C7CF 0F:C7BF: A3        .byte $A3   ; 
- D 0 - - A 0x03C7D0 0F:C7C0: B3        .byte $B3   ; 
- D 0 - - A 0x03C7D1 0F:C7C1: F0        .byte $F0   ; 
- D 0 - - A 0x03C7D2 0F:C7C2: 38        .byte $38   ; 
- D 0 - - A 0x03C7D3 0F:C7C3: 3A        .byte $3A   ; 
- D 0 - - A 0x03C7D4 0F:C7C4: 1E        .byte $1E   ; 
- D 0 - - A 0x03C7D5 0F:C7C5: BC        .byte $BC   ; 
- D 0 - - A 0x03C7D6 0F:C7C6: 9C        .byte $9C   ; 
- D 0 - - A 0x03C7D7 0F:C7C7: AC        .byte $AC   ; 
- D 0 - - A 0x03C7D8 0F:C7C8: CC        .byte $CC   ; 
- D 0 - - A 0x03C7D9 0F:C7C9: 62        .byte $62   ; 
- D 0 - - A 0x03C7DA 0F:C7CA: 56        .byte $56   ; 
- D 0 - - A 0x03C7DB 0F:C7CB: 2E        .byte $2E   ; 
- D 0 - - A 0x03C7DC 0F:C7CC: 1E        .byte $1E   ; 
- D 0 - - A 0x03C7DD 0F:C7CD: 1B        .byte $1B   ; 
- D 0 - - A 0x03C7DE 0F:C7CE: 8E        .byte $8E   ; 
- D 0 - - A 0x03C7DF 0F:C7CF: 93        .byte $93   ; 
- D 0 - - A 0x03C7E0 0F:C7D0: D3        .byte $D3   ; 
- D 0 - - A 0x03C7E1 0F:C7D1: 4A        .byte $4A   ; 
- D 0 - - A 0x03C7E2 0F:C7D2: 4D        .byte $4D   ; 
- D 0 - - A 0x03C7E3 0F:C7D3: 2E        .byte $2E   ; 
- D 0 - - A 0x03C7E4 0F:C7D4: 66        .byte $66   ; 
- D 0 - - A 0x03C7E5 0F:C7D5: 6D        .byte $6D   ; 
- D 0 - - A 0x03C7E6 0F:C7D6: 34        .byte $34   ; 
- D 0 - - A 0x03C7E7 0F:C7D7: 36        .byte $36   ; 
- D 0 - - A 0x03C7E8 0F:C7D8: BA        .byte $BA   ; 
- D 0 - - A 0x03C7E9 0F:C7D9: B8        .byte $B8   ; 
- D 0 - - A 0x03C7EA 0F:C7DA: B8        .byte $B8   ; 
- D 0 - - A 0x03C7EB 0F:C7DB: B8        .byte $B8   ; 
- D 0 - - A 0x03C7EC 0F:C7DC: B8        .byte $B8   ; 
- D 0 - - A 0x03C7ED 0F:C7DD: B8        .byte $B8   ; 
- D 0 - - A 0x03C7EE 0F:C7DE: 2C        .byte $2C   ; 
- D 0 - - A 0x03C7EF 0F:C7DF: 1E        .byte $1E   ; 
- D 0 - - A 0x03C7F0 0F:C7E0: CE        .byte $CE   ; 
- D 0 - - A 0x03C7F1 0F:C7E1: CA        .byte $CA   ; 
- D 0 - - A 0x03C7F2 0F:C7E2: E2        .byte $E2   ; 
- D 0 - - A 0x03C7F3 0F:C7E3: D2        .byte $D2   ; 
- D 0 - - A 0x03C7F4 0F:C7E4: 78        .byte $78   ; 
- D 0 - - A 0x03C7F5 0F:C7E5: 78        .byte $78   ; 
- D 0 - - A 0x03C7F6 0F:C7E6: 2A        .byte $2A   ; 
- D 0 - - A 0x03C7F7 0F:C7E7: 2B        .byte $2B   ; 
- D 0 - - A 0x03C7F8 0F:C7E8: 17        .byte $17   ; 
- D 0 - - A 0x03C7F9 0F:C7E9: A7        .byte $A7   ; 
- D 0 - - A 0x03C7FA 0F:C7EA: C6        .byte $C6   ; 
- D 0 - - A 0x03C7FB 0F:C7EB: 82        .byte $82   ; 
- D 0 - - A 0x03C7FC 0F:C7EC: D3        .byte $D3   ; 
- D 0 - - A 0x03C7FD 0F:C7ED: D5        .byte $D5   ; 
- D 0 - - A 0x03C7FE 0F:C7EE: B6        .byte $B6   ; 
- D 0 - - A 0x03C7FF 0F:C7EF: EE        .byte $EE   ; 
- D 0 - - A 0x03C800 0F:C7F0: 0F        .byte $0F   ; 
- D 0 - - A 0x03C801 0F:C7F1: 20        .byte $20   ; 
- D 0 - - A 0x03C802 0F:C7F2: 08        .byte $08   ; 
- D 0 - - A 0x03C803 0F:C7F3: F8        .byte $F8   ; 
- D 0 - - A 0x03C804 0F:C7F4: FC        .byte $FC   ; 
- D 0 - - A 0x03C805 0F:C7F5: FE        .byte $FE   ; 
- D 0 - - A 0x03C806 0F:C7F6: 1F        .byte $1F   ; 
- D 0 - - A 0x03C807 0F:C7F7: 28        .byte $28   ; 
- D 0 - - A 0x03C808 0F:C7F8: 18        .byte $18   ; 
- D 0 - - A 0x03C809 0F:C7F9: 78        .byte $78   ; 
- D 0 - - A 0x03C80A 0F:C7FA: E0        .byte $E0   ; 
- D 0 - - A 0x03C80B 0F:C7FB: FF        .byte $FF   ; 
- D 0 - - A 0x03C80C 0F:C7FC: 07        .byte $07   ; 
- D 0 - - A 0x03C80D 0F:C7FD: 1C        .byte $1C   ; 
- D 0 - - A 0x03C80E 0F:C7FE: 0C        .byte $0C   ; 
- D 0 - - A 0x03C80F 0F:C7FF: 3C        .byte $3C   ; 
- D 0 - - A 0x03C810 0F:C800: FC        .byte $FC   ; 
- D 0 - - A 0x03C811 0F:C801: 7E        .byte $7E   ; 
- D 0 - - A 0x03C812 0F:C802: E0        .byte $E0   ; 
- D 0 - - A 0x03C813 0F:C803: 61        .byte $61   ; 
- D 0 - - A 0x03C814 0F:C804: C0        .byte $C0   ; 
- D 0 - - A 0x03C815 0F:C805: C3        .byte $C3   ; 
- D 0 - - A 0x03C816 0F:C806: E7        .byte $E7   ; 
- D 0 - - A 0x03C817 0F:C807: 83        .byte $83   ; 
- D 0 - - A 0x03C818 0F:C808: 87        .byte $87   ; 
- D 0 - - A 0x03C819 0F:C809: 03        .byte $03   ; 
- D 0 - - A 0x03C81A 0F:C80A: 0F        .byte $0F   ; 
- D 0 - - A 0x03C81B 0F:C80B: BF        .byte $BF   ; 
- D 0 - - A 0x03C81C 0F:C80C: 07        .byte $07   ; 
- D 0 - - A 0x03C81D 0F:C80D: 1E        .byte $1E   ; 
- D 0 - - A 0x03C81E 0F:C80E: 06        .byte $06   ; 
- D 0 - - A 0x03C81F 0F:C80F: 3E        .byte $3E   ; 
- D 0 - - A 0x03C820 0F:C810: 3E        .byte $3E   ; 
- D 0 - - A 0x03C821 0F:C811: 1F        .byte $1F   ; 
- D 0 - - A 0x03C822 0F:C812: 3C        .byte $3C   ; 
- D 0 - - A 0x03C823 0F:C813: 0C        .byte $0C   ; 
- D 0 - - A 0x03C824 0F:C814: 7C        .byte $7C   ; 
- D 0 - - A 0x03C825 0F:C815: 7C        .byte $7C   ; 
- D 0 - - A 0x03C826 0F:C816: 1E        .byte $1E   ; 
- D 0 - - A 0x03C827 0F:C817: 78        .byte $78   ; 
- D 0 - - A 0x03C828 0F:C818: 18        .byte $18   ; 
- D 0 - - A 0x03C829 0F:C819: F8        .byte $F8   ; 
- D 0 - - A 0x03C82A 0F:C81A: F0        .byte $F0   ; 
- D 0 - - A 0x03C82B 0F:C81B: 3D        .byte $3D   ; 
- D 0 - - A 0x03C82C 0F:C81C: F0        .byte $F0   ; 
- D 0 - - A 0x03C82D 0F:C81D: 31        .byte $31   ; 
- D 0 - - A 0x03C82E 0F:C81E: E0        .byte $E0   ; 
- D 0 - - A 0x03C82F 0F:C81F: E1        .byte $E1   ; 
- D 0 - - A 0x03C830 0F:C820: 7B        .byte $7B   ; 
- D 0 - - A 0x03C831 0F:C821: E1        .byte $E1   ; 
- D 0 - - A 0x03C832 0F:C822: 63        .byte $63   ; 
- D 0 - - A 0x03C833 0F:C823: C0        .byte $C0   ; 
- D 0 - - A 0x03C834 0F:C824: C7        .byte $C7   ; 
- D 0 - - A 0x03C835 0F:C825: E3        .byte $E3   ; 
- D 0 - - A 0x03C836 0F:C826: 03        .byte $03   ; 
- D 0 - - A 0x03C837 0F:C827: 97        .byte $97   ; 
- D 0 - - A 0x03C838 0F:C828: 01        .byte $01   ; 
- D 0 - - A 0x03C839 0F:C829: 9F        .byte $9F   ; 
- D 0 - - A 0x03C83A 0F:C82A: 8F        .byte $8F   ; 
- D 0 - - A 0x03C83B 0F:C82B: 07        .byte $07   ; 
- D 0 - - A 0x03C83C 0F:C82C: 1E        .byte $1E   ; 
- D 0 - - A 0x03C83D 0F:C82D: 0E        .byte $0E   ; 
- D 0 - - A 0x03C83E 0F:C82E: 3E        .byte $3E   ; 
- D 0 - - A 0x03C83F 0F:C82F: 3C        .byte $3C   ; 
- D 0 - - A 0x03C840 0F:C830: 3E        .byte $3E   ; 
- D 0 - - A 0x03C841 0F:C831: 7C        .byte $7C   ; 
- D 0 - - A 0x03C842 0F:C832: 38        .byte $38   ; 
- D 0 - - A 0x03C843 0F:C833: F8        .byte $F8   ; 
- D 0 - - A 0x03C844 0F:C834: 70        .byte $70   ; 
- D 0 - - A 0x03C845 0F:C835: F8        .byte $F8   ; 
- D 0 - - A 0x03C846 0F:C836: C1        .byte $C1   ; 
- D 0 - - A 0x03C847 0F:C837: E3        .byte $E3   ; 
- D 0 - - A 0x03C848 0F:C838: 81        .byte $81   ; 
- D 0 - - A 0x03C849 0F:C839: 87        .byte $87   ; 
- D 0 - - A 0x03C84A 0F:C83A: 87        .byte $87   ; 
- D 0 - - A 0x03C84B 0F:C83B: 0F        .byte $0F   ; 
- D 0 - - A 0x03C84C 0F:C83C: 3E        .byte $3E   ; 
- D 0 - - A 0x03C84D 0F:C83D: 1E        .byte $1E   ; 
- D 0 - - A 0x03C84E 0F:C83E: 7C        .byte $7C   ; 
- D 0 - - A 0x03C84F 0F:C83F: 1C        .byte $1C   ; 
- D 0 - - A 0x03C850 0F:C840: F8        .byte $F8   ; 
- D 0 - - A 0x03C851 0F:C841: 01        .byte $01   ; 
- D 0 - - A 0x03C852 0F:C842: FF        .byte $FF   ; 
- D 0 - - A 0x03C853 0F:C843: 01        .byte $01   ; 
- D 0 - - A 0x03C854 0F:C844: 5E        .byte $5E   ; 
- D 0 - - A 0x03C855 0F:C845: 06        .byte $06   ; 
- D 0 - - A 0x03C856 0F:C846: 3F        .byte $3F   ; 
- D 0 - - A 0x03C857 0F:C847: F0        .byte $F0   ; 
- D 0 - - A 0x03C858 0F:C848: 3A        .byte $3A   ; 
- D 0 - - A 0x03C859 0F:C849: F0        .byte $F0   ; 
- D 0 - - A 0x03C85A 0F:C84A: 47        .byte $47   ; 
- D 0 - - A 0x03C85B 0F:C84B: E0        .byte $E0   ; 
- D 0 - - A 0x03C85C 0F:C84C: E7        .byte $E7   ; 
- D 0 - - A 0x03C85D 0F:C84D: 0F        .byte $0F   ; 
- D 0 - - A 0x03C85E 0F:C84E: 78        .byte $78   ; 
- D 0 - - A 0x03C85F 0F:C84F: 18        .byte $18   ; 
- D 0 - - A 0x03C860 0F:C850: F8        .byte $F8   ; 
- D 0 - - A 0x03C861 0F:C851: F8        .byte $F8   ; 
- D 0 - - A 0x03C862 0F:C852: F0        .byte $F0   ; 
- D 0 - - A 0x03C863 0F:C853: 81        .byte $81   ; 
- D 0 - - A 0x03C864 0F:C854: 93        .byte $93   ; 
- D 0 - - A 0x03C865 0F:C855: C3        .byte $C3   ; 
- D 0 - - A 0x03C866 0F:C856: 47        .byte $47   ; 
- D 0 - - A 0x03C867 0F:C857: C7        .byte $C7   ; 
- D 0 - - A 0x03C868 0F:C858: 07        .byte $07   ; 
- D 0 - - A 0x03C869 0F:C859: 3E        .byte $3E   ; 
- D 0 - - A 0x03C86A 0F:C85A: 0A        .byte $0A   ; 
- D 0 - - A 0x03C86B 0F:C85B: 3C        .byte $3C   ; 
- D 0 - - A 0x03C86C 0F:C85C: 30        .byte $30   ; 
- D 0 - - A 0x03C86D 0F:C85D: FF        .byte $FF   ; 
- D 0 - - A 0x03C86E 0F:C85E: F0        .byte $F0   ; 
- D 0 - - A 0x03C86F 0F:C85F: 3F        .byte $3F   ; 
- D 0 - - A 0x03C870 0F:C860: F0        .byte $F0   ; 
- D 0 - - A 0x03C871 0F:C861: 00        .byte $00   ; 
- D 0 - - A 0x03C872 0F:C862: FE        .byte $FE   ; 
- D 0 - - A 0x03C873 0F:C863: C0        .byte $C0   ; 
- D 0 - - A 0x03C874 0F:C864: 2F        .byte $2F   ; 
- D 0 - - A 0x03C875 0F:C865: E0        .byte $E0   ; 
- D 0 - - A 0x03C876 0F:C866: 3F        .byte $3F   ; 
- D 0 - - A 0x03C877 0F:C867: E0        .byte $E0   ; 
- D 0 - - A 0x03C878 0F:C868: 01        .byte $01   ; 
- D 0 - - A 0x03C879 0F:C869: FF        .byte $FF   ; 
- D 0 - - A 0x03C87A 0F:C86A: 07        .byte $07   ; 
- D 0 - - A 0x03C87B 0F:C86B: F8        .byte $F8   ; 
- D 0 - - A 0x03C87C 0F:C86C: A1        .byte $A1   ; 
- D 0 - - A 0x03C87D 0F:C86D: FF        .byte $FF   ; 
- D 0 - - A 0x03C87E 0F:C86E: 0E        .byte $0E   ; 
- D 0 - - A 0x03C87F 0F:C86F: F0        .byte $F0   ; 
- D 0 - - A 0x03C880 0F:C870: 80        .byte $80   ; 
- D 0 - - A 0x03C881 0F:C871: BE        .byte $BE   ; 
- D 0 - - A 0x03C882 0F:C872: 00        .byte $00   ; 
- D 0 - - A 0x03C883 0F:C873: 2F        .byte $2F   ; 
- D 0 - - A 0x03C884 0F:C874: F0        .byte $F0   ; 
- D 0 - - A 0x03C885 0F:C875: EA        .byte $EA   ; 
- D 0 - - A 0x03C886 0F:C876: CB        .byte $CB   ; 
- D 0 - - A 0x03C887 0F:C877: 07        .byte $07   ; 
- D 0 - - A 0x03C888 0F:C878: A0        .byte $A0   ; 
- D 0 - - A 0x03C889 0F:C879: 85        .byte $85   ; 
- D 0 - - A 0x03C88A 0F:C87A: 7F        .byte $7F   ; 
- D 0 - - A 0x03C88B 0F:C87B: 33        .byte $33   ; 
- D 0 - - A 0x03C88C 0F:C87C: 19        .byte $19   ; 
- D 0 - - A 0x03C88D 0F:C87D: 1E        .byte $1E   ; 
- D 0 - - A 0x03C88E 0F:C87E: FA        .byte $FA   ; 
- D 0 - - A 0x03C88F 0F:C87F: D8        .byte $D8   ; 
- D 0 - - A 0x03C890 0F:C880: 2F        .byte $2F   ; 
- D 0 - - A 0x03C891 0F:C881: 00        .byte $00   ; 
- D 0 - - A 0x03C892 0F:C882: 0F        .byte $0F   ; 
- D 0 - - A 0x03C893 0F:C883: FA        .byte $FA   ; 
- D 0 - - A 0x03C894 0F:C884: 3A        .byte $3A   ; 
- D 0 - - A 0x03C895 0F:C885: 72        .byte $72   ; 
- D 0 - - A 0x03C896 0F:C886: 16        .byte $16   ; 
- D 0 - - A 0x03C897 0F:C887: 5E        .byte $5E   ; 
- D 0 - - A 0x03C898 0F:C888: D4        .byte $D4   ; 
- D 0 - - A 0x03C899 0F:C889: AA        .byte $AA   ; 
- D 0 - - A 0x03C89A 0F:C88A: 9A        .byte $9A   ; 
- D 0 - - A 0x03C89B 0F:C88B: 9A        .byte $9A   ; 
- D 0 - - A 0x03C89C 0F:C88C: 1C        .byte $1C   ; 
- D 0 - - A 0x03C89D 0F:C88D: 2D        .byte $2D   ; 
- D 0 - - A 0x03C89E 0F:C88E: 2E        .byte $2E   ; 
- D 0 - - A 0x03C89F 0F:C88F: C5        .byte $C5   ; 
- D 0 - - A 0x03C8A0 0F:C890: AA        .byte $AA   ; 
- D 0 - - A 0x03C8A1 0F:C891: A9        .byte $A9   ; 
- D 0 - - A 0x03C8A2 0F:C892: 6A        .byte $6A   ; 
- D 0 - - A 0x03C8A3 0F:C893: AA        .byte $AA   ; 
- D 0 - - A 0x03C8A4 0F:C894: 36        .byte $36   ; 
- D 0 - - A 0x03C8A5 0F:C895: 3A        .byte $3A   ; 
- D 0 - - A 0x03C8A6 0F:C896: 33        .byte $33   ; 
- D 0 - - A 0x03C8A7 0F:C897: 55        .byte $55   ; 
- D 0 - - A 0x03C8A8 0F:C898: 4D        .byte $4D   ; 
- D 0 - - A 0x03C8A9 0F:C899: 2E        .byte $2E   ; 
- D 0 - - A 0x03C8AA 0F:C89A: 4D        .byte $4D   ; 
- D 0 - - A 0x03C8AB 0F:C89B: 55        .byte $55   ; 
- D 0 - - A 0x03C8AC 0F:C89C: D5        .byte $D5   ; 
- D 0 - - A 0x03C8AD 0F:C89D: AA        .byte $AA   ; 
- D 0 - - A 0x03C8AE 0F:C89E: AA        .byte $AA   ; 
- D 0 - - A 0x03C8AF 0F:C89F: AA        .byte $AA   ; 
- D 0 - - A 0x03C8B0 0F:C8A0: AA        .byte $AA   ; 
- D 0 - - A 0x03C8B1 0F:C8A1: AA        .byte $AA   ; 
- D 0 - - A 0x03C8B2 0F:C8A2: AA        .byte $AA   ; 
- D 0 - - A 0x03C8B3 0F:C8A3: AA        .byte $AA   ; 
- D 0 - - A 0x03C8B4 0F:C8A4: AA        .byte $AA   ; 
- D 0 - - A 0x03C8B5 0F:C8A5: AA        .byte $AA   ; 
- D 0 - - A 0x03C8B6 0F:C8A6: AA        .byte $AA   ; 
- D 0 - - A 0x03C8B7 0F:C8A7: AA        .byte $AA   ; 
- D 0 - - A 0x03C8B8 0F:C8A8: AA        .byte $AA   ; 
- D 0 - - A 0x03C8B9 0F:C8A9: AA        .byte $AA   ; 
- D 0 - - A 0x03C8BA 0F:C8AA: AA        .byte $AA   ; 
- D 0 - - A 0x03C8BB 0F:C8AB: AA        .byte $AA   ; 
- D 0 - - A 0x03C8BC 0F:C8AC: A6        .byte $A6   ; 
- D 0 - - A 0x03C8BD 0F:C8AD: A6        .byte $A6   ; 
- D 0 - - A 0x03C8BE 0F:C8AE: AA        .byte $AA   ; 
- D 0 - - A 0x03C8BF 0F:C8AF: AA        .byte $AA   ; 
- D 0 - - A 0x03C8C0 0F:C8B0: AA        .byte $AA   ; 
- D 0 - - A 0x03C8C1 0F:C8B1: A9        .byte $A9   ; 
- D 0 - - A 0x03C8C2 0F:C8B2: AA        .byte $AA   ; 
- D 0 - - A 0x03C8C3 0F:C8B3: A5        .byte $A5   ; 
- D 0 - - A 0x03C8C4 0F:C8B4: AA        .byte $AA   ; 
- D 0 - - A 0x03C8C5 0F:C8B5: 6A        .byte $6A   ; 
- D 0 - - A 0x03C8C6 0F:C8B6: 9A        .byte $9A   ; 
- D 0 - - A 0x03C8C7 0F:C8B7: AA        .byte $AA   ; 
- D 0 - - A 0x03C8C8 0F:C8B8: AA        .byte $AA   ; 
- D 0 - - A 0x03C8C9 0F:C8B9: AA        .byte $AA   ; 
- D 0 - - A 0x03C8CA 0F:C8BA: AA        .byte $AA   ; 
- D 0 - - A 0x03C8CB 0F:C8BB: AA        .byte $AA   ; 
- D 0 - - A 0x03C8CC 0F:C8BC: AA        .byte $AA   ; 
- D 0 - - A 0x03C8CD 0F:C8BD: AA        .byte $AA   ; 
- D 0 - - A 0x03C8CE 0F:C8BE: AA        .byte $AA   ; 
- D 0 - - A 0x03C8CF 0F:C8BF: AA        .byte $AA   ; 
- D 0 - - A 0x03C8D0 0F:C8C0: AA        .byte $AA   ; 
- D 0 - - A 0x03C8D1 0F:C8C1: A9        .byte $A9   ; 
- D 0 - - A 0x03C8D2 0F:C8C2: AA        .byte $AA   ; 
- D 0 - - A 0x03C8D3 0F:C8C3: AA        .byte $AA   ; 
- D 0 - - A 0x03C8D4 0F:C8C4: AA        .byte $AA   ; 
- D 0 - - A 0x03C8D5 0F:C8C5: AA        .byte $AA   ; 
- D 0 - - A 0x03C8D6 0F:C8C6: AA        .byte $AA   ; 
- D 0 - - A 0x03C8D7 0F:C8C7: AA        .byte $AA   ; 
- D 0 - - A 0x03C8D8 0F:C8C8: AA        .byte $AA   ; 
- D 0 - - A 0x03C8D9 0F:C8C9: AA        .byte $AA   ; 
- D 0 - - A 0x03C8DA 0F:C8CA: AA        .byte $AA   ; 
- D 0 - - A 0x03C8DB 0F:C8CB: AA        .byte $AA   ; 
- D 0 - - A 0x03C8DC 0F:C8CC: AA        .byte $AA   ; 
- D 0 - - A 0x03C8DD 0F:C8CD: AA        .byte $AA   ; 
- D 0 - - A 0x03C8DE 0F:C8CE: AA        .byte $AA   ; 
- D 0 - - A 0x03C8DF 0F:C8CF: AA        .byte $AA   ; 
- D 0 - - A 0x03C8E0 0F:C8D0: AA        .byte $AA   ; 
- D 0 - - A 0x03C8E1 0F:C8D1: AC        .byte $AC   ; 
- D 0 - - A 0x03C8E2 0F:C8D2: AA        .byte $AA   ; 
- D 0 - - A 0x03C8E3 0F:C8D3: AA        .byte $AA   ; 
- D 0 - - A 0x03C8E4 0F:C8D4: 2A        .byte $2A   ; 
- D 0 - - A 0x03C8E5 0F:C8D5: AB        .byte $AB   ; 
- D 0 - - A 0x03C8E6 0F:C8D6: AA        .byte $AA   ; 
- D 0 - - A 0x03C8E7 0F:C8D7: AA        .byte $AA   ; 
- D 0 - - A 0x03C8E8 0F:C8D8: 2A        .byte $2A   ; 
- D 0 - - A 0x03C8E9 0F:C8D9: AB        .byte $AB   ; 
- D 0 - - A 0x03C8EA 0F:C8DA: 2A        .byte $2A   ; 
- D 0 - - A 0x03C8EB 0F:C8DB: 2B        .byte $2B   ; 
- D 0 - - A 0x03C8EC 0F:C8DC: 2B        .byte $2B   ; 
- D 0 - - A 0x03C8ED 0F:C8DD: 2B        .byte $2B   ; 
- D 0 - - A 0x03C8EE 0F:C8DE: 2B        .byte $2B   ; 
- D 0 - - A 0x03C8EF 0F:C8DF: 2B        .byte $2B   ; 
- D 0 - - A 0x03C8F0 0F:C8E0: 2B        .byte $2B   ; 
- D 0 - - A 0x03C8F1 0F:C8E1: 2B        .byte $2B   ; 
- D 0 - - A 0x03C8F2 0F:C8E2: 2B        .byte $2B   ; 
- D 0 - - A 0x03C8F3 0F:C8E3: 2B        .byte $2B   ; 
- D 0 - - A 0x03C8F4 0F:C8E4: 2B        .byte $2B   ; 
- D 0 - - A 0x03C8F5 0F:C8E5: 2B        .byte $2B   ; 
- D 0 - - A 0x03C8F6 0F:C8E6: 2B        .byte $2B   ; 
- D 0 - - A 0x03C8F7 0F:C8E7: 2B        .byte $2B   ; 
- D 0 - - A 0x03C8F8 0F:C8E8: 2B        .byte $2B   ; 
- D 0 - - A 0x03C8F9 0F:C8E9: AB        .byte $AB   ; 
- D 0 - - A 0x03C8FA 0F:C8EA: AA        .byte $AA   ; 
- D 0 - - A 0x03C8FB 0F:C8EB: 2C        .byte $2C   ; 
- D 0 - - A 0x03C8FC 0F:C8EC: 2B        .byte $2B   ; 
- D 0 - - A 0x03C8FD 0F:C8ED: 2B        .byte $2B   ; 
- D 0 - - A 0x03C8FE 0F:C8EE: 8B        .byte $8B   ; 
- D 0 - - A 0x03C8FF 0F:C8EF: 4B        .byte $4B   ; 
- D 0 - - A 0x03C900 0F:C8F0: 4B        .byte $4B   ; 
- D 0 - - A 0x03C901 0F:C8F1: 8B        .byte $8B   ; 
- D 0 - - A 0x03C902 0F:C8F2: 8B        .byte $8B   ; 
- D 0 - - A 0x03C903 0F:C8F3: 2B        .byte $2B   ; 
- D 0 - - A 0x03C904 0F:C8F4: 8B        .byte $8B   ; 
- D 0 - - A 0x03C905 0F:C8F5: 8B        .byte $8B   ; 
- D 0 - - A 0x03C906 0F:C8F6: 8B        .byte $8B   ; 
- D 0 - - A 0x03C907 0F:C8F7: CB        .byte $CB   ; 
- D 0 - - A 0x03C908 0F:C8F8: AA        .byte $AA   ; 
- D 0 - - A 0x03C909 0F:C8F9: 8A        .byte $8A   ; 
- D 0 - - A 0x03C90A 0F:C8FA: 2B        .byte $2B   ; 
- D 0 - - A 0x03C90B 0F:C8FB: 2B        .byte $2B   ; 
- D 0 - - A 0x03C90C 0F:C8FC: 2B        .byte $2B   ; 
- D 0 - - A 0x03C90D 0F:C8FD: CB        .byte $CB   ; 
- D 0 - - A 0x03C90E 0F:C8FE: 4A        .byte $4A   ; 
- D 0 - - A 0x03C90F 0F:C8FF: 8B        .byte $8B   ; 
- D 0 - - A 0x03C910 0F:C900: 8B        .byte $8B   ; 
- D 0 - - A 0x03C911 0F:C901: 4B        .byte $4B   ; 
- D 0 - - A 0x03C912 0F:C902: 2B        .byte $2B   ; 
- D 0 - - A 0x03C913 0F:C903: AB        .byte $AB   ; 
- D 0 - - A 0x03C914 0F:C904: 4A        .byte $4A   ; 
- D 0 - - A 0x03C915 0F:C905: 2B        .byte $2B   ; 
- D 0 - - A 0x03C916 0F:C906: 4B        .byte $4B   ; 
- D 0 - - A 0x03C917 0F:C907: 2B        .byte $2B   ; 
- D 0 - - A 0x03C918 0F:C908: 2B        .byte $2B   ; 
- D 0 - - A 0x03C919 0F:C909: 2B        .byte $2B   ; 
- D 0 - - A 0x03C91A 0F:C90A: 2B        .byte $2B   ; 
- D 0 - - A 0x03C91B 0F:C90B: 2B        .byte $2B   ; 
- D 0 - - A 0x03C91C 0F:C90C: 2B        .byte $2B   ; 
- D 0 - - A 0x03C91D 0F:C90D: 2B        .byte $2B   ; 
- D 0 - - A 0x03C91E 0F:C90E: 2B        .byte $2B   ; 
- D 0 - - A 0x03C91F 0F:C90F: 2B        .byte $2B   ; 
- D 0 - - A 0x03C920 0F:C910: 2B        .byte $2B   ; 
- D 0 - - A 0x03C921 0F:C911: B3        .byte $B3   ; 
- D 0 - - A 0x03C922 0F:C912: 2A        .byte $2A   ; 
- D 0 - - A 0x03C923 0F:C913: 2B        .byte $2B   ; 
- D 0 - - A 0x03C924 0F:C914: 2E        .byte $2E   ; 
- D 0 - - A 0x03C925 0F:C915: 2B        .byte $2B   ; 
- D 0 - - A 0x03C926 0F:C916: 2D        .byte $2D   ; 
- D 0 - - A 0x03C927 0F:C917: AD        .byte $AD   ; 
- D 0 - - A 0x03C928 0F:C918: AA        .byte $AA   ; 
- D 0 - - A 0x03C929 0F:C919: AA        .byte $AA   ; 
- D 0 - - A 0x03C92A 0F:C91A: AC        .byte $AC   ; 
- D 0 - - A 0x03C92B 0F:C91B: AC        .byte $AC   ; 
- D 0 - - A 0x03C92C 0F:C91C: AC        .byte $AC   ; 
- D 0 - - A 0x03C92D 0F:C91D: AC        .byte $AC   ; 
- D 0 - - A 0x03C92E 0F:C91E: AC        .byte $AC   ; 
- D 0 - - A 0x03C92F 0F:C91F: AA        .byte $AA   ; 
- D 0 - - A 0x03C930 0F:C920: AA        .byte $AA   ; 
- D 0 - - A 0x03C931 0F:C921: AA        .byte $AA   ; 
- D 0 - - A 0x03C932 0F:C922: AA        .byte $AA   ; 
- D 0 - - A 0x03C933 0F:C923: AA        .byte $AA   ; 
- D 0 - - A 0x03C934 0F:C924: AA        .byte $AA   ; 
- D 0 - - A 0x03C935 0F:C925: 2A        .byte $2A   ; 
- D 0 - - A 0x03C936 0F:C926: AB        .byte $AB   ; 
- D 0 - - A 0x03C937 0F:C927: AA        .byte $AA   ; 
- D 0 - - A 0x03C938 0F:C928: AA        .byte $AA   ; 
- D 0 - - A 0x03C939 0F:C929: 8A        .byte $8A   ; 
- D 0 - - A 0x03C93A 0F:C92A: 2D        .byte $2D   ; 
- D 0 - - A 0x03C93B 0F:C92B: D5        .byte $D5   ; 
- D 0 - - A 0x03C93C 0F:C92C: AA        .byte $AA   ; 
- D 0 - - A 0x03C93D 0F:C92D: D6        .byte $D6   ; 
- D 0 - - A 0x03C93E 0F:C92E: 3F        .byte $3F   ; 
- D 0 - - A 0x03C93F 0F:C92F: C0        .byte $C0   ; 
- D 0 - - A 0x03C940 0F:C930: 04        .byte $04   ; 
- D 0 - - A 0x03C941 0F:C931: F0        .byte $F0   ; 
- D 0 - - A 0x03C942 0F:C932: 69        .byte $69   ; 
- D 0 - - A 0x03C943 0F:C933: 3F        .byte $3F   ; 
- D 0 - - A 0x03C944 0F:C934: FD        .byte $FD   ; 
- D 0 - - A 0x03C945 0F:C935: 0E        .byte $0E   ; 
- D 0 - - A 0x03C946 0F:C936: 38        .byte $38   ; 
- D 0 - - A 0x03C947 0F:C937: 00        .byte $00   ; 
- D 0 - - A 0x03C948 0F:C938: 7C        .byte $7C   ; 
- D 0 - - A 0x03C949 0F:C939: 5C        .byte $5C   ; 
- D 0 - - A 0x03C94A 0F:C93A: 9F        .byte $9F   ; 
- D 0 - - A 0x03C94B 0F:C93B: DF        .byte $DF   ; 
- D 0 - - A 0x03C94C 0F:C93C: 03        .byte $03   ; 
- D 0 - - A 0x03C94D 0F:C93D: 07        .byte $07   ; 
- D 0 - - A 0x03C94E 0F:C93E: 03        .byte $03   ; 
- D 0 - - A 0x03C94F 0F:C93F: 0F        .byte $0F   ; 
- D 0 - - A 0x03C950 0F:C940: CE        .byte $CE   ; 
- D 0 - - A 0x03C951 0F:C941: 0F        .byte $0F   ; 
- D 0 - - A 0x03C952 0F:C942: FF        .byte $FF   ; 
- D 0 - - A 0x03C953 0F:C943: 81        .byte $81   ; 
- D 0 - - A 0x03C954 0F:C944: 1B        .byte $1B   ; 
- D 0 - - A 0x03C955 0F:C945: 01        .byte $01   ; 
- D 0 - - A 0x03C956 0F:C946: 0F        .byte $0F   ; 
- D 0 - - A 0x03C957 0F:C947: CF        .byte $CF   ; 
- D 0 - - A 0x03C958 0F:C948: 0F        .byte $0F   ; 
- D 0 - - A 0x03C959 0F:C949: 7E        .byte $7E   ; 
- D 0 - - A 0x03C95A 0F:C94A: 60        .byte $60   ; 
- D 0 - - A 0x03C95B 0F:C94B: 7C        .byte $7C   ; 
- D 0 - - A 0x03C95C 0F:C94C: C0        .byte $C0   ; 
- D 0 - - A 0x03C95D 0F:C94D: C3        .byte $C3   ; 
- D 0 - - A 0x03C95E 0F:C94E: D7        .byte $D7   ; 
- D 0 - - A 0x03C95F 0F:C94F: E1        .byte $E1   ; 
- D 0 - - A 0x03C960 0F:C950: 0F        .byte $0F   ; 
- D 0 - - A 0x03C961 0F:C951: B8        .byte $B8   ; 
- D 0 - - A 0x03C962 0F:C952: 0A        .byte $0A   ; 
- D 0 - - A 0x03C963 0F:C953: F8        .byte $F8   ; 
- D 0 - - A 0x03C964 0F:C954: 78        .byte $78   ; 
- D 0 - - A 0x03C965 0F:C955: F0        .byte $F0   ; 
- D 0 - - A 0x03C966 0F:C956: FB        .byte $FB   ; 
- D 0 - - A 0x03C967 0F:C957: 81        .byte $81   ; 
- D 0 - - A 0x03C968 0F:C958: 07        .byte $07   ; 
- D 0 - - A 0x03C969 0F:C959: 81        .byte $81   ; 
- D 0 - - A 0x03C96A 0F:C95A: 0F        .byte $0F   ; 
- D 0 - - A 0x03C96B 0F:C95B: 1F        .byte $1F   ; 
- D 0 - - A 0x03C96C 0F:C95C: 0F        .byte $0F   ; 
- D 0 - - A 0x03C96D 0F:C95D: 1F        .byte $1F   ; 
- D 0 - - A 0x03C96E 0F:C95E: 38        .byte $38   ; 
- D 0 - - A 0x03C96F 0F:C95F: 1E        .byte $1E   ; 
- D 0 - - A 0x03C970 0F:C960: 7C        .byte $7C   ; 
- D 0 - - A 0x03C971 0F:C961: 60        .byte $60   ; 
- D 0 - - A 0x03C972 0F:C962: FE        .byte $FE   ; 
- D 0 - - A 0x03C973 0F:C963: 1F        .byte $1F   ; 
- D 0 - - A 0x03C974 0F:C964: F8        .byte $F8   ; 
- D 0 - - A 0x03C975 0F:C965: 20        .byte $20   ; 
- D 0 - - A 0x03C976 0F:C966: F0        .byte $F0   ; 
- D 0 - - A 0x03C977 0F:C967: E1        .byte $E1   ; 
- D 0 - - A 0x03C978 0F:C968: F3        .byte $F3   ; 
- D 0 - - A 0x03C979 0F:C969: C1        .byte $C1   ; 
- D 0 - - A 0x03C97A 0F:C96A: 03        .byte $03   ; 
- D 0 - - A 0x03C97B 0F:C96B: 8F        .byte $8F   ; 
- D 0 - - A 0x03C97C 0F:C96C: 82        .byte $82   ; 
- D 0 - - A 0x03C97D 0F:C96D: 1F        .byte $1F   ; 
- D 0 - - A 0x03C97E 0F:C96E: 98        .byte $98   ; 
- D 0 - - A 0x03C97F 0F:C96F: FF        .byte $FF   ; 
- D 0 - - A 0x03C980 0F:C970: 03        .byte $03   ; 
- D 0 - - A 0x03C981 0F:C971: 1F        .byte $1F   ; 
- D 0 - - A 0x03C982 0F:C972: 04        .byte $04   ; 
- D 0 - - A 0x03C983 0F:C973: 3E        .byte $3E   ; 
- D 0 - - A 0x03C984 0F:C974: FC        .byte $FC   ; 
- D 0 - - A 0x03C985 0F:C975: 3C        .byte $3C   ; 
- D 0 - - A 0x03C986 0F:C976: F0        .byte $F0   ; 
- D 0 - - A 0x03C987 0F:C977: C0        .byte $C0   ; 
- D 0 - - A 0x03C988 0F:C978: D3        .byte $D3   ; 
- D 0 - - A 0x03C989 0F:C979: E1        .byte $E1   ; 
- D 0 - - A 0x03C98A 0F:C97A: 07        .byte $07   ; 
- D 0 - - A 0x03C98B 0F:C97B: C3        .byte $C3   ; 
- D 0 - - A 0x03C98C 0F:C97C: FF        .byte $FF   ; 
- D 0 - - A 0x03C98D 0F:C97D: 81        .byte $81   ; 
- D 0 - - A 0x03C98E 0F:C97E: 07        .byte $07   ; 
- D 0 - - A 0x03C98F 0F:C97F: 82        .byte $82   ; 
- D 0 - - A 0x03C990 0F:C980: 0F        .byte $0F   ; 
- D 0 - - A 0x03C991 0F:C981: 7E        .byte $7E   ; 
- D 0 - - A 0x03C992 0F:C982: 0E        .byte $0E   ; 
- D 0 - - A 0x03C993 0F:C983: FC        .byte $FC   ; 
- D 0 - - A 0x03C994 0F:C984: C0        .byte $C0   ; 
- D 0 - - A 0x03C995 0F:C985: 37        .byte $37   ; 
- D 0 - - A 0x03C996 0F:C986: E0        .byte $E0   ; 
- D 0 - - A 0x03C997 0F:C987: 07        .byte $07   ; 
- D 0 - - A 0x03C998 0F:C988: FA        .byte $FA   ; 
- D 0 - - A 0x03C999 0F:C989: C3        .byte $C3   ; 
- D 0 - - A 0x03C99A 0F:C98A: 0F        .byte $0F   ; 
- D 0 - - A 0x03C99B 0F:C98B: 1E        .byte $1E   ; 
- D 0 - - A 0x03C99C 0F:C98C: 1E        .byte $1E   ; 
- D 0 - - A 0x03C99D 0F:C98D: 3C        .byte $3C   ; 
- D 0 - - A 0x03C99E 0F:C98E: F8        .byte $F8   ; 
- D 0 - - A 0x03C99F 0F:C98F: 18        .byte $18   ; 
- D 0 - - A 0x03C9A0 0F:C990: FC        .byte $FC   ; 
- D 0 - - A 0x03C9A1 0F:C991: 07        .byte $07   ; 
- D 0 - - A 0x03C9A2 0F:C992: 3C        .byte $3C   ; 
- D 0 - - A 0x03C9A3 0F:C993: E0        .byte $E0   ; 
- D 0 - - A 0x03C9A4 0F:C994: 0F        .byte $0F   ; 
- D 0 - - A 0x03C9A5 0F:C995: F8        .byte $F8   ; 
- D 0 - - A 0x03C9A6 0F:C996: 61        .byte $61   ; 
- D 0 - - A 0x03C9A7 0F:C997: F8        .byte $F8   ; 
- D 0 - - A 0x03C9A8 0F:C998: 07        .byte $07   ; 
- D 0 - - A 0x03C9A9 0F:C999: F8        .byte $F8   ; 
- D 0 - - A 0x03C9AA 0F:C99A: 03        .byte $03   ; 
- D 0 - - A 0x03C9AB 0F:C99B: FC        .byte $FC   ; 
- D 0 - - A 0x03C9AC 0F:C99C: F8        .byte $F8   ; 
- D 0 - - A 0x03C9AD 0F:C99D: 81        .byte $81   ; 
- D 0 - - A 0x03C9AE 0F:C99E: CF        .byte $CF   ; 
- D 0 - - A 0x03C9AF 0F:C99F: 03        .byte $03   ; 
- D 0 - - A 0x03C9B0 0F:C9A0: 1F        .byte $1F   ; 
- D 0 - - A 0x03C9B1 0F:C9A1: 88        .byte $88   ; 
- D 0 - - A 0x03C9B2 0F:C9A2: 1F        .byte $1F   ; 
- D 0 - - A 0x03C9B3 0F:C9A3: 3C        .byte $3C   ; 
- D 0 - - A 0x03C9B4 0F:C9A4: 1F        .byte $1F   ; 
- D 0 - - A 0x03C9B5 0F:C9A5: F0        .byte $F0   ; 
- D 0 - - A 0x03C9B6 0F:C9A6: C1        .byte $C1   ; 
- D 0 - - A 0x03C9B7 0F:C9A7: FF        .byte $FF   ; 
- D 0 - - A 0x03C9B8 0F:C9A8: 03        .byte $03   ; 
- D 0 - - A 0x03C9B9 0F:C9A9: 1F        .byte $1F   ; 
- D 0 - - A 0x03C9BA 0F:C9AA: 80        .byte $80   ; 
- D 0 - - A 0x03C9BB 0F:C9AB: 1F        .byte $1F   ; 
- D 0 - - A 0x03C9BC 0F:C9AC: F0        .byte $F0   ; 
- D 0 - - A 0x03C9BD 0F:C9AD: 07        .byte $07   ; 
- D 0 - - A 0x03C9BE 0F:C9AE: 0F        .byte $0F   ; 
- D 0 - - A 0x03C9BF 0F:C9AF: 3C        .byte $3C   ; 
- D 0 - - A 0x03C9C0 0F:C9B0: 1C        .byte $1C   ; 
- D 0 - - A 0x03C9C1 0F:C9B1: 7E        .byte $7E   ; 
- D 0 - - A 0x03C9C2 0F:C9B2: E0        .byte $E0   ; 
- D 0 - - A 0x03C9C3 0F:C9B3: 2F        .byte $2F   ; 
- D 0 - - A 0x03C9C4 0F:C9B4: 78        .byte $78   ; 
- D 0 - - A 0x03C9C5 0F:C9B5: F0        .byte $F0   ; 
- D 0 - - A 0x03C9C6 0F:C9B6: FD        .byte $FD   ; 
- D 0 - - A 0x03C9C7 0F:C9B7: 80        .byte $80   ; 
- D 0 - - A 0x03C9C8 0F:C9B8: 0F        .byte $0F   ; 
- D 0 - - A 0x03C9C9 0F:C9B9: 84        .byte $84   ; 
- D 0 - - A 0x03C9CA 0F:C9BA: 8F        .byte $8F   ; 
- D 0 - - A 0x03C9CB 0F:C9BB: 07        .byte $07   ; 
- D 0 - - A 0x03C9CC 0F:C9BC: 1F        .byte $1F   ; 
- D 0 - - A 0x03C9CD 0F:C9BD: FC        .byte $FC   ; 
- D 0 - - A 0x03C9CE 0F:C9BE: 03        .byte $03   ; 
- D 0 - - A 0x03C9CF 0F:C9BF: 0F        .byte $0F   ; 
- D 0 - - A 0x03C9D0 0F:C9C0: F0        .byte $F0   ; 
- D 0 - - A 0x03C9D1 0F:C9C1: 0F        .byte $0F   ; 
- D 0 - - A 0x03C9D2 0F:C9C2: 7C        .byte $7C   ; 
- D 0 - - A 0x03C9D3 0F:C9C3: C1        .byte $C1   ; 
- D 0 - - A 0x03C9D4 0F:C9C4: 03        .byte $03   ; 
- D 0 - - A 0x03C9D5 0F:C9C5: 1F        .byte $1F   ; 
- D 0 - - A 0x03C9D6 0F:C9C6: FE        .byte $FE   ; 
- D 0 - - A 0x03C9D7 0F:C9C7: 83        .byte $83   ; 
- D 0 - - A 0x03C9D8 0F:C9C8: 9F        .byte $9F   ; 
- D 0 - - A 0x03C9D9 0F:C9C9: 80        .byte $80   ; 
- D 0 - - A 0x03C9DA 0F:C9CA: 0F        .byte $0F   ; 
- D 0 - - A 0x03C9DB 0F:C9CB: FC        .byte $FC   ; 
- D 0 - - A 0x03C9DC 0F:C9CC: 01        .byte $01   ; 
- D 0 - - A 0x03C9DD 0F:C9CD: 3E        .byte $3E   ; 
- D 0 - - A 0x03C9DE 0F:C9CE: F0        .byte $F0   ; 
- D 0 - - A 0x03C9DF 0F:C9CF: 1F        .byte $1F   ; 
- D 0 - - A 0x03C9E0 0F:C9D0: F8        .byte $F8   ; 
- D 0 - - A 0x03C9E1 0F:C9D1: 01        .byte $01   ; 
- D 0 - - A 0x03C9E2 0F:C9D2: FE        .byte $FE   ; 
- D 0 - - A 0x03C9E3 0F:C9D3: 70        .byte $70   ; 
- D 0 - - A 0x03C9E4 0F:C9D4: F8        .byte $F8   ; 
- D 0 - - A 0x03C9E5 0F:C9D5: C0        .byte $C0   ; 
- D 0 - - A 0x03C9E6 0F:C9D6: F3        .byte $F3   ; 
- D 0 - - A 0x03C9E7 0F:C9D7: F0        .byte $F0   ; 
- D 0 - - A 0x03C9E8 0F:C9D8: 13        .byte $13   ; 
- D 0 - - A 0x03C9E9 0F:C9D9: F0        .byte $F0   ; 
- D 0 - - A 0x03C9EA 0F:C9DA: C1        .byte $C1   ; 
- D 0 - - A 0x03C9EB 0F:C9DB: F4        .byte $F4   ; 
- D 0 - - A 0x03C9EC 0F:C9DC: 81        .byte $81   ; 
- D 0 - - A 0x03C9ED 0F:C9DD: 0F        .byte $0F   ; 
- D 0 - - A 0x03C9EE 0F:C9DE: E3        .byte $E3   ; 
- D 0 - - A 0x03C9EF 0F:C9DF: 87        .byte $87   ; 
- D 0 - - A 0x03C9F0 0F:C9E0: 3F        .byte $3F   ; 
- D 0 - - A 0x03C9F1 0F:C9E1: F8        .byte $F8   ; 
- D 0 - - A 0x03C9F2 0F:C9E2: 00        .byte $00   ; 
- D 0 - - A 0x03C9F3 0F:C9E3: FE        .byte $FE   ; 
- D 0 - - A 0x03C9F4 0F:C9E4: C0        .byte $C0   ; 
- D 0 - - A 0x03C9F5 0F:C9E5: 1F        .byte $1F   ; 
- D 0 - - A 0x03C9F6 0F:C9E6: F0        .byte $F0   ; 
- D 0 - - A 0x03C9F7 0F:C9E7: 03        .byte $03   ; 
- D 0 - - A 0x03C9F8 0F:C9E8: FE        .byte $FE   ; 
- D 0 - - A 0x03C9F9 0F:C9E9: 38        .byte $38   ; 
- D 0 - - A 0x03C9FA 0F:C9EA: F0        .byte $F0   ; 
- D 0 - - A 0x03C9FB 0F:C9EB: 81        .byte $81   ; 
- D 0 - - A 0x03C9FC 0F:C9EC: EF        .byte $EF   ; 
- D 0 - - A 0x03C9FD 0F:C9ED: C0        .byte $C0   ; 
- D 0 - - A 0x03C9FE 0F:C9EE: 0F        .byte $0F   ; 
- D 0 - - A 0x03C9FF 0F:C9EF: AE        .byte $AE   ; 
- D 0 - - A 0x03CA00 0F:C9F0: 06        .byte $06   ; 
- D 0 - - A 0x03CA01 0F:C9F1: 3F        .byte $3F   ; 
- D 0 - - A 0x03CA02 0F:C9F2: 0F        .byte $0F   ; 
- D 0 - - A 0x03CA03 0F:C9F3: 3E        .byte $3E   ; 
- D 0 - - A 0x03CA04 0F:C9F4: E0        .byte $E0   ; 
- D 0 - - A 0x03CA05 0F:C9F5: 0F        .byte $0F   ; 
- D 0 - - A 0x03CA06 0F:C9F6: F8        .byte $F8   ; 
- D 0 - - A 0x03CA07 0F:C9F7: A0        .byte $A0   ; 
- D 0 - - A 0x03CA08 0F:C9F8: 3E        .byte $3E   ; 
- D 0 - - A 0x03CA09 0F:C9F9: F0        .byte $F0   ; 
- D 0 - - A 0x03CA0A 0F:C9FA: EA        .byte $EA   ; 
- D 0 - - A 0x03CA0B 0F:C9FB: 0F        .byte $0F   ; 
- D 0 - - A 0x03CA0C 0F:C9FC: F0        .byte $F0   ; 
- D 0 - - A 0x03CA0D 0F:C9FD: 80        .byte $80   ; 
- D 0 - - A 0x03CA0E 0F:C9FE: 7F        .byte $7F   ; 
- D 0 - - A 0x03CA0F 0F:C9FF: E0        .byte $E0   ; 
- D 0 - - A 0x03CA10 0F:CA00: 0D        .byte $0D   ; 
- D 0 - - A 0x03CA11 0F:CA01: F8        .byte $F8   ; 
- D 0 - - A 0x03CA12 0F:CA02: 03        .byte $03   ; 
- D 0 - - A 0x03CA13 0F:CA03: BF        .byte $BF   ; 
- D 0 - - A 0x03CA14 0F:CA04: 07        .byte $07   ; 
- D 0 - - A 0x03CA15 0F:CA05: 3C        .byte $3C   ; 
- D 0 - - A 0x03CA16 0F:CA06: 50        .byte $50   ; 
- D 0 - - A 0x03CA17 0F:CA07: 3F        .byte $3F   ; 
- D 0 - - A 0x03CA18 0F:CA08: F8        .byte $F8   ; 
- D 0 - - A 0x03CA19 0F:CA09: 08        .byte $08   ; 
- D 0 - - A 0x03CA1A 0F:CA0A: 7E        .byte $7E   ; 
- D 0 - - A 0x03CA1B 0F:CA0B: B4        .byte $B4   ; 
- D 0 - - A 0x03CA1C 0F:CA0C: 16        .byte $16   ; 
- D 0 - - A 0x03CA1D 0F:CA0D: 6D        .byte $6D   ; 
- D 0 - - A 0x03CA1E 0F:CA0E: 8B        .byte $8B   ; 
- D 0 - - A 0x03CA1F 0F:CA0F: 7C        .byte $7C   ; 
- D 0 - - A 0x03CA20 0F:CA10: 19        .byte $19   ; 
- D 0 - - A 0x03CA21 0F:CA11: F8        .byte $F8   ; 
- D 0 - - A 0x03CA22 0F:CA12: E0        .byte $E0   ; 
- D 0 - - A 0x03CA23 0F:CA13: 69        .byte $69   ; 
- D 0 - - A 0x03CA24 0F:CA14: F0        .byte $F0   ; 
- D 0 - - A 0x03CA25 0F:CA15: C1        .byte $C1   ; 
- D 0 - - A 0x03CA26 0F:CA16: EA        .byte $EA   ; 
- D 0 - - A 0x03CA27 0F:CA17: 3F        .byte $3F   ; 
- D 0 - - A 0x03CA28 0F:CA18: F0        .byte $F0   ; 
- D 0 - - A 0x03CA29 0F:CA19: 81        .byte $81   ; 
- D 0 - - A 0x03CA2A 0F:CA1A: F0        .byte $F0   ; 
- D 0 - - A 0x03CA2B 0F:CA1B: C1        .byte $C1   ; 
- D 0 - - A 0x03CA2C 0F:CA1C: 87        .byte $87   ; 
- D 0 - - A 0x03CA2D 0F:CA1D: F1        .byte $F1   ; 
- D 0 - - A 0x03CA2E 0F:CA1E: 03        .byte $03   ; 
- D 0 - - A 0x03CA2F 0F:CA1F: 6F        .byte $6F   ; 
- D 0 - - A 0x03CA30 0F:CA20: EA        .byte $EA   ; 
- D 0 - - A 0x03CA31 0F:CA21: 81        .byte $81   ; 
- D 0 - - A 0x03CA32 0F:CA22: 87        .byte $87   ; 
- D 0 - - A 0x03CA33 0F:CA23: C3        .byte $C3   ; 
- D 0 - - A 0x03CA34 0F:CA24: 87        .byte $87   ; 
- D 0 - - A 0x03CA35 0F:CA25: 87        .byte $87   ; 
- D 0 - - A 0x03CA36 0F:CA26: 8B        .byte $8B   ; 
- D 0 - - A 0x03CA37 0F:CA27: 8E        .byte $8E   ; 
- D 0 - - A 0x03CA38 0F:CA28: AD        .byte $AD   ; 
- D 0 - - A 0x03CA39 0F:CA29: F6        .byte $F6   ; 
- D 0 - - A 0x03CA3A 0F:CA2A: 81        .byte $81   ; 
- D 0 - - A 0x03CA3B 0F:CA2B: 0F        .byte $0F   ; 
- D 0 - - A 0x03CA3C 0F:CA2C: 8C        .byte $8C   ; 
- D 0 - - A 0x03CA3D 0F:CA2D: 0F        .byte $0F   ; 
- D 0 - - A 0x03CA3E 0F:CA2E: 1E        .byte $1E   ; 
- D 0 - - A 0x03CA3F 0F:CA2F: 87        .byte $87   ; 
- D 0 - - A 0x03CA40 0F:CA30: 2E        .byte $2E   ; 
- D 0 - - A 0x03CA41 0F:CA31: AB        .byte $AB   ; 
- D 0 - - A 0x03CA42 0F:CA32: AA        .byte $AA   ; 
- D 0 - - A 0x03CA43 0F:CA33: 6A        .byte $6A   ; 
- D 0 - - A 0x03CA44 0F:CA34: A2        .byte $A2   ; 
- D 0 - - A 0x03CA45 0F:CA35: 2B        .byte $2B   ; 
- D 0 - - A 0x03CA46 0F:CA36: EA        .byte $EA   ; 
- D 0 - - A 0x03CA47 0F:CA37: 4A        .byte $4A   ; 
- D 0 - - A 0x03CA48 0F:CA38: AB        .byte $AB   ; 
- D 0 - - A 0x03CA49 0F:CA39: AA        .byte $AA   ; 
- D 0 - - A 0x03CA4A 0F:CA3A: AA        .byte $AA   ; 
- D 0 - - A 0x03CA4B 0F:CA3B: AA        .byte $AA   ; 
- D 0 - - A 0x03CA4C 0F:CA3C: AA        .byte $AA   ; 
- D 0 - - A 0x03CA4D 0F:CA3D: AA        .byte $AA   ; 
- D 0 - - A 0x03CA4E 0F:CA3E: AA        .byte $AA   ; 
- D 0 - - A 0x03CA4F 0F:CA3F: AA        .byte $AA   ; 
- D 0 - - A 0x03CA50 0F:CA40: AA        .byte $AA   ; 
- D 0 - - A 0x03CA51 0F:CA41: AA        .byte $AA   ; 
- D 0 - - A 0x03CA52 0F:CA42: 9A        .byte $9A   ; 
- D 0 - - A 0x03CA53 0F:CA43: A9        .byte $A9   ; 
- D 0 - - A 0x03CA54 0F:CA44: 4C        .byte $4C   ; 
- D 0 - - A 0x03CA55 0F:CA45: AD        .byte $AD   ; 
- D 0 - - A 0x03CA56 0F:CA46: A6        .byte $A6   ; 
- D 0 - - A 0x03CA57 0F:CA47: A6        .byte $A6   ; 
- D 0 - - A 0x03CA58 0F:CA48: 2A        .byte $2A   ; 
- D 0 - - A 0x03CA59 0F:CA49: 59        .byte $59   ; 
- D 0 - - A 0x03CA5A 0F:CA4A: AE        .byte $AE   ; 
- D 0 - - A 0x03CA5B 0F:CA4B: 26        .byte $26   ; 
- D 0 - - A 0x03CA5C 0F:CA4C: 87        .byte $87   ; 
- D 0 - - A 0x03CA5D 0F:CA4D: A3        .byte $A3   ; 
- D 0 - - A 0x03CA5E 0F:CA4E: A5        .byte $A5   ; 
- D 0 - - A 0x03CA5F 0F:CA4F: A7        .byte $A7   ; 
- D 0 - - A 0x03CA60 0F:CA50: 0F        .byte $0F   ; 
- D 0 - - A 0x03CA61 0F:CA51: 0E        .byte $0E   ; 
- D 0 - - A 0x03CA62 0F:CA52: 87        .byte $87   ; 
- D 0 - - A 0x03CA63 0F:CA53: C3        .byte $C3   ; 
- D 0 - - A 0x03CA64 0F:CA54: D7        .byte $D7   ; 
- D 0 - - A 0x03CA65 0F:CA55: C3        .byte $C3   ; 
- D 0 - - A 0x03CA66 0F:CA56: C1        .byte $C1   ; 
- D 0 - - A 0x03CA67 0F:CA57: C0        .byte $C0   ; 
- D 0 - - A 0x03CA68 0F:CA58: EB        .byte $EB   ; 
- D 0 - - A 0x03CA69 0F:CA59: 7B        .byte $7B   ; 
- D 0 - - A 0x03CA6A 0F:CA5A: 18        .byte $18   ; 
- D 0 - - A 0x03CA6B 0F:CA5B: 38        .byte $38   ; 
- D 0 - - A 0x03CA6C 0F:CA5C: 3C        .byte $3C   ; 
- D 0 - - A 0x03CA6D 0F:CA5D: 3D        .byte $3D   ; 
- D 0 - - A 0x03CA6E 0F:CA5E: 87        .byte $87   ; 
- D 0 - - A 0x03CA6F 0F:CA5F: C1        .byte $C1   ; 
- D 0 - - A 0x03CA70 0F:CA60: C7        .byte $C7   ; 
- D 0 - - A 0x03CA71 0F:CA61: 07        .byte $07   ; 
- D 0 - - A 0x03CA72 0F:CA62: E7        .byte $E7   ; 
- D 0 - - A 0x03CA73 0F:CA63: E1        .byte $E1   ; 
- D 0 - - A 0x03CA74 0F:CA64: F0        .byte $F0   ; 
- D 0 - - A 0x03CA75 0F:CA65: C0        .byte $C0   ; 
- D 0 - - A 0x03CA76 0F:CA66: C7        .byte $C7   ; 
- D 0 - - A 0x03CA77 0F:CA67: F3        .byte $F3   ; 
- D 0 - - A 0x03CA78 0F:CA68: E0        .byte $E0   ; 
- D 0 - - A 0x03CA79 0F:CA69: E0        .byte $E0   ; 
- D 0 - - A 0x03CA7A 0F:CA6A: 83        .byte $83   ; 
- D 0 - - A 0x03CA7B 0F:CA6B: C7        .byte $C7   ; 
- D 0 - - A 0x03CA7C 0F:CA6C: 0F        .byte $0F   ; 
- D 0 - - A 0x03CA7D 0F:CA6D: 1C        .byte $1C   ; 
- D 0 - - A 0x03CA7E 0F:CA6E: 3E        .byte $3E   ; 
- D 0 - - A 0x03CA7F 0F:CA6F: 78        .byte $78   ; 
- D 0 - - A 0x03CA80 0F:CA70: F0        .byte $F0   ; 
- D 0 - - A 0x03CA81 0F:CA71: 83        .byte $83   ; 
- D 0 - - A 0x03CA82 0F:CA72: 07        .byte $07   ; 
- D 0 - - A 0x03CA83 0F:CA73: 1F        .byte $1F   ; 
- D 0 - - A 0x03CA84 0F:CA74: 1E        .byte $1E   ; 
- D 0 - - A 0x03CA85 0F:CA75: FC        .byte $FC   ; 
- D 0 - - A 0x03CA86 0F:CA76: 01        .byte $01   ; 
- D 0 - - A 0x03CA87 0F:CA77: 3E        .byte $3E   ; 
- D 0 - - A 0x03CA88 0F:CA78: 0F        .byte $0F   ; 
- D 0 - - A 0x03CA89 0F:CA79: FC        .byte $FC   ; 
- D 0 - - A 0x03CA8A 0F:CA7A: 0F        .byte $0F   ; 
- D 0 - - A 0x03CA8B 0F:CA7B: 80        .byte $80   ; 
- D 0 - - A 0x03CA8C 0F:CA7C: 5F        .byte $5F   ; 
- D 0 - - A 0x03CA8D 0F:CA7D: 82        .byte $82   ; 
- D 0 - - A 0x03CA8E 0F:CA7E: FF        .byte $FF   ; 
- D 0 - - A 0x03CA8F 0F:CA7F: 03        .byte $03   ; 
- D 0 - - A 0x03CA90 0F:CA80: F8        .byte $F8   ; 
- D 0 - - A 0x03CA91 0F:CA81: 16        .byte $16   ; 
- D 0 - - A 0x03CA92 0F:CA82: E0        .byte $E0   ; 
- D 0 - - A 0x03CA93 0F:CA83: DF        .byte $DF   ; 
- D 0 - - A 0x03CA94 0F:CA84: 00        .byte $00   ; 
- D 0 - - A 0x03CA95 0F:CA85: 9F        .byte $9F   ; 
- D 0 - - A 0x03CA96 0F:CA86: 0A        .byte $0A   ; 
- D 0 - - A 0x03CA97 0F:CA87: FD        .byte $FD   ; 
- D 0 - - A 0x03CA98 0F:CA88: 80        .byte $80   ; 
- D 0 - - A 0x03CA99 0F:CA89: 1F        .byte $1F   ; 
- D 0 - - A 0x03CA9A 0F:CA8A: 78        .byte $78   ; 
- D 0 - - A 0x03CA9B 0F:CA8B: F8        .byte $F8   ; 
- D 0 - - A 0x03CA9C 0F:CA8C: E0        .byte $E0   ; 
- D 0 - - A 0x03CA9D 0F:CA8D: 07        .byte $07   ; 
- D 0 - - A 0x03CA9E 0F:CA8E: BE        .byte $BE   ; 
- D 0 - - A 0x03CA9F 0F:CA8F: 72        .byte $72   ; 
- D 0 - - A 0x03CAA0 0F:CA90: E0        .byte $E0   ; 
- D 0 - - A 0x03CAA1 0F:CA91: 7F        .byte $7F   ; 
- D 0 - - A 0x03CAA2 0F:CA92: C0        .byte $C0   ; 
- D 0 - - A 0x03CAA3 0F:CA93: 1B        .byte $1B   ; 
- D 0 - - A 0x03CAA4 0F:CA94: 0C        .byte $0C   ; 
- D 0 - - A 0x03CAA5 0F:CA95: FE        .byte $FE   ; 
- D 0 - - A 0x03CAA6 0F:CA96: 0F        .byte $0F   ; 
- D 0 - - A 0x03CAA7 0F:CA97: F8        .byte $F8   ; 
- D 0 - - A 0x03CAA8 0F:CA98: 03        .byte $03   ; 
- D 0 - - A 0x03CAA9 0F:CA99: E0        .byte $E0   ; 
- D 0 - - A 0x03CAAA 0F:CA9A: 87        .byte $87   ; 
- D 0 - - A 0x03CAAB 0F:CA9B: 07        .byte $07   ; 
- D 0 - - A 0x03CAAC 0F:CA9C: 7E        .byte $7E   ; 
- D 0 - - A 0x03CAAD 0F:CA9D: F0        .byte $F0   ; 
- D 0 - - A 0x03CAAE 0F:CA9E: E1        .byte $E1   ; 
- D 0 - - A 0x03CAAF 0F:CA9F: 07        .byte $07   ; 
- D 0 - - A 0x03CAB0 0F:CAA0: 7C        .byte $7C   ; 
- D 0 - - A 0x03CAB1 0F:CAA1: 3C        .byte $3C   ; 
- D 0 - - A 0x03CAB2 0F:CAA2: E0        .byte $E0   ; 
- D 0 - - A 0x03CAB3 0F:CAA3: 1F        .byte $1F   ; 
- D 0 - - A 0x03CAB4 0F:CAA4: E0        .byte $E0   ; 
- D 0 - - A 0x03CAB5 0F:CAA5: 3F        .byte $3F   ; 
- D 0 - - A 0x03CAB6 0F:CAA6: 00        .byte $00   ; 
- D 0 - - A 0x03CAB7 0F:CAA7: FF        .byte $FF   ; 
- D 0 - - A 0x03CAB8 0F:CAA8: 03        .byte $03   ; 
- D 0 - - A 0x03CAB9 0F:CAA9: FC        .byte $FC   ; 
- D 0 - - A 0x03CABA 0F:CAAA: 03        .byte $03   ; 
- D 0 - - A 0x03CABB 0F:CAAB: FF        .byte $FF   ; 
- D 0 - - A 0x03CABC 0F:CAAC: C0        .byte $C0   ; 
- D 0 - - A 0x03CABD 0F:CAAD: 07        .byte $07   ; 
- D 0 - - A 0x03CABE 0F:CAAE: 3C        .byte $3C   ; 
- D 0 - - A 0x03CABF 0F:CAAF: F8        .byte $F8   ; 
- D 0 - - A 0x03CAC0 0F:CAB0: C0        .byte $C0   ; 
- D 0 - - A 0x03CAC1 0F:CAB1: 0F        .byte $0F   ; 
- D 0 - - A 0x03CAC2 0F:CAB2: 1E        .byte $1E   ; 
- D 0 - - A 0x03CAC3 0F:CAB3: F8        .byte $F8   ; 
- D 0 - - A 0x03CAC4 0F:CAB4: E0        .byte $E0   ; 
- D 0 - - A 0x03CAC5 0F:CAB5: 67        .byte $67   ; 
- D 0 - - A 0x03CAC6 0F:CAB6: C0        .byte $C0   ; 
- D 0 - - A 0x03CAC7 0F:CAB7: 3F        .byte $3F   ; 
- D 0 - - A 0x03CAC8 0F:CAB8: 90        .byte $90   ; 
- D 0 - - A 0x03CAC9 0F:CAB9: FF        .byte $FF   ; 
- D 0 - - A 0x03CACA 0F:CABA: 00        .byte $00   ; 
- D 0 - - A 0x03CACB 0F:CABB: FE        .byte $FE   ; 
- D 0 - - A 0x03CACC 0F:CABC: 83        .byte $83   ; 
- D 0 - - A 0x03CACD 0F:CABD: 78        .byte $78   ; 
- D 0 - - A 0x03CACE 0F:CABE: F0        .byte $F0   ; 
- D 0 - - A 0x03CACF 0F:CABF: 03        .byte $03   ; 
- D 0 - - A 0x03CAD0 0F:CAC0: FE        .byte $FE   ; 
- D 0 - - A 0x03CAD1 0F:CAC1: 03        .byte $03   ; 
- D 0 - - A 0x03CAD2 0F:CAC2: F8        .byte $F8   ; 
- D 0 - - A 0x03CAD3 0F:CAC3: F0        .byte $F0   ; 
- D 0 - - A 0x03CAD4 0F:CAC4: C8        .byte $C8   ; 
- D 0 - - A 0x03CAD5 0F:CAC5: 0F        .byte $0F   ; 
- D 0 - - A 0x03CAD6 0F:CAC6: FC        .byte $FC   ; 
- D 0 - - A 0x03CAD7 0F:CAC7: 3D        .byte $3D   ; 
- D 0 - - A 0x03CAD8 0F:CAC8: E0        .byte $E0   ; 
- D 0 - - A 0x03CAD9 0F:CAC9: 83        .byte $83   ; 
- D 0 - - A 0x03CADA 0F:CACA: 1F        .byte $1F   ; 
- D 0 - - A 0x03CADB 0F:CACB: 00        .byte $00   ; 
- D 0 - - A 0x03CADC 0F:CACC: FF        .byte $FF   ; 
- D 0 - - A 0x03CADD 0F:CACD: 80        .byte $80   ; 
- D 0 - - A 0x03CADE 0F:CACE: F3        .byte $F3   ; 
- D 0 - - A 0x03CADF 0F:CACF: 03        .byte $03   ; 
- D 0 - - A 0x03CAE0 0F:CAD0: 1F        .byte $1F   ; 
- D 0 - - A 0x03CAE1 0F:CAD1: FE        .byte $FE   ; 
- D 0 - - A 0x03CAE2 0F:CAD2: E0        .byte $E0   ; 
- D 0 - - A 0x03CAE3 0F:CAD3: 03        .byte $03   ; 
- D 0 - - A 0x03CAE4 0F:CAD4: 3F        .byte $3F   ; 
- D 0 - - A 0x03CAE5 0F:CAD5: F0        .byte $F0   ; 
- D 0 - - A 0x03CAE6 0F:CAD6: E1        .byte $E1   ; 
- D 0 - - A 0x03CAE7 0F:CAD7: 03        .byte $03   ; 
- D 0 - - A 0x03CAE8 0F:CAD8: 3E        .byte $3E   ; 
- D 0 - - A 0x03CAE9 0F:CAD9: FC        .byte $FC   ; 
- D 0 - - A 0x03CAEA 0F:CADA: 80        .byte $80   ; 
- D 0 - - A 0x03CAEB 0F:CADB: 0F        .byte $0F   ; 
- D 0 - - A 0x03CAEC 0F:CADC: FC        .byte $FC   ; 
- D 0 - - A 0x03CAED 0F:CADD: 08        .byte $08   ; 
- D 0 - - A 0x03CAEE 0F:CADE: 1F        .byte $1F   ; 
- D 0 - - A 0x03CAEF 0F:CADF: E1        .byte $E1   ; 
- D 0 - - A 0x03CAF0 0F:CAE0: AF        .byte $AF   ; 
- D 0 - - A 0x03CAF1 0F:CAE1: F8        .byte $F8   ; 
- D 0 - - A 0x03CAF2 0F:CAE2: 01        .byte $01   ; 
- D 0 - - A 0x03CAF3 0F:CAE3: 3F        .byte $3F   ; 
- D 0 - - A 0x03CAF4 0F:CAE4: D0        .byte $D0   ; 
- D 0 - - A 0x03CAF5 0F:CAE5: F2        .byte $F2   ; 
- D 0 - - A 0x03CAF6 0F:CAE6: 07        .byte $07   ; 
- D 0 - - A 0x03CAF7 0F:CAE7: FC        .byte $FC   ; 
- D 0 - - A 0x03CAF8 0F:CAE8: 03        .byte $03   ; 
- D 0 - - A 0x03CAF9 0F:CAE9: F0        .byte $F0   ; 
- D 0 - - A 0x03CAFA 0F:CAEA: 07        .byte $07   ; 
- D 0 - - A 0x03CAFB 0F:CAEB: 7E        .byte $7E   ; 
- D 0 - - A 0x03CAFC 0F:CAEC: E0        .byte $E0   ; 
- D 0 - - A 0x03CAFD 0F:CAED: 07        .byte $07   ; 
- D 0 - - A 0x03CAFE 0F:CAEE: 3F        .byte $3F   ; 
- D 0 - - A 0x03CAFF 0F:CAEF: 20        .byte $20   ; 
- D 0 - - A 0x03CB00 0F:CAF0: F8        .byte $F8   ; 
- D 0 - - A 0x03CB01 0F:CAF1: 03        .byte $03   ; 
- D 0 - - A 0x03CB02 0F:CAF2: FF        .byte $FF   ; 
- D 0 - - A 0x03CB03 0F:CAF3: 79        .byte $79   ; 
- D 0 - - A 0x03CB04 0F:CAF4: C0        .byte $C0   ; 
- D 0 - - A 0x03CB05 0F:CAF5: 0F        .byte $0F   ; 
- D 0 - - A 0x03CB06 0F:CAF6: 38        .byte $38   ; 
- D 0 - - A 0x03CB07 0F:CAF7: FE        .byte $FE   ; 
- D 0 - - A 0x03CB08 0F:CAF8: 03        .byte $03   ; 
- D 0 - - A 0x03CB09 0F:CAF9: 7E        .byte $7E   ; 
- D 0 - - A 0x03CB0A 0F:CAFA: 00        .byte $00   ; 
- D 0 - - A 0x03CB0B 0F:CAFB: F8        .byte $F8   ; 
- D 0 - - A 0x03CB0C 0F:CAFC: 3F        .byte $3F   ; 
- D 0 - - A 0x03CB0D 0F:CAFD: 90        .byte $90   ; 
- D 0 - - A 0x03CB0E 0F:CAFE: 1F        .byte $1F   ; 
- D 0 - - A 0x03CB0F 0F:CAFF: 80        .byte $80   ; 
- D 0 - - A 0x03CB10 0F:CB00: FF        .byte $FF   ; 
- D 0 - - A 0x03CB11 0F:CB01: 08        .byte $08   ; 
- D 0 - - A 0x03CB12 0F:CB02: FE        .byte $FE   ; 
- D 0 - - A 0x03CB13 0F:CB03: 03        .byte $03   ; 
- D 0 - - A 0x03CB14 0F:CB04: FE        .byte $FE   ; 
- D 0 - - A 0x03CB15 0F:CB05: 00        .byte $00   ; 
- D 0 - - A 0x03CB16 0F:CB06: 7F        .byte $7F   ; 
- D 0 - - A 0x03CB17 0F:CB07: C0        .byte $C0   ; 
- D 0 - - A 0x03CB18 0F:CB08: C7        .byte $C7   ; 
- D 0 - - A 0x03CB19 0F:CB09: 0F        .byte $0F   ; 
- D 0 - - A 0x03CB1A 0F:CB0A: 1E        .byte $1E   ; 
- D 0 - - A 0x03CB1B 0F:CB0B: F0        .byte $F0   ; 
- D 0 - - A 0x03CB1C 0F:CB0C: 03        .byte $03   ; 
- D 0 - - A 0x03CB1D 0F:CB0D: 7E        .byte $7E   ; 
- D 0 - - A 0x03CB1E 0F:CB0E: FC        .byte $FC   ; 
- D 0 - - A 0x03CB1F 0F:CB0F: 03        .byte $03   ; 
- D 0 - - A 0x03CB20 0F:CB10: 7E        .byte $7E   ; 
- D 0 - - A 0x03CB21 0F:CB11: 14        .byte $14   ; 
- D 0 - - A 0x03CB22 0F:CB12: C0        .byte $C0   ; 
- D 0 - - A 0x03CB23 0F:CB13: 3F        .byte $3F   ; 
- D 0 - - A 0x03CB24 0F:CB14: 38        .byte $38   ; 
- D 0 - - A 0x03CB25 0F:CB15: F8        .byte $F8   ; 
- D 0 - - A 0x03CB26 0F:CB16: 03        .byte $03   ; 
- D 0 - - A 0x03CB27 0F:CB17: FE        .byte $FE   ; 
- D 0 - - A 0x03CB28 0F:CB18: 03        .byte $03   ; 
- D 0 - - A 0x03CB29 0F:CB19: 7C        .byte $7C   ; 
- D 0 - - A 0x03CB2A 0F:CB1A: 0F        .byte $0F   ; 
- D 0 - - A 0x03CB2B 0F:CB1B: F0        .byte $F0   ; 
- D 0 - - A 0x03CB2C 0F:CB1C: 0F        .byte $0F   ; 
- D 0 - - A 0x03CB2D 0F:CB1D: F0        .byte $F0   ; 
- D 0 - - A 0x03CB2E 0F:CB1E: 07        .byte $07   ; 
- D 0 - - A 0x03CB2F 0F:CB1F: 80        .byte $80   ; 
- D 0 - - A 0x03CB30 0F:CB20: FF        .byte $FF   ; 
- D 0 - - A 0x03CB31 0F:CB21: F0        .byte $F0   ; 
- D 0 - - A 0x03CB32 0F:CB22: 80        .byte $80   ; 
- D 0 - - A 0x03CB33 0F:CB23: 3F        .byte $3F   ; 
- D 0 - - A 0x03CB34 0F:CB24: F0        .byte $F0   ; 
- D 0 - - A 0x03CB35 0F:CB25: F7        .byte $F7   ; 
- D 0 - - A 0x03CB36 0F:CB26: 0F        .byte $0F   ; 
- D 0 - - A 0x03CB37 0F:CB27: F8        .byte $F8   ; 
- D 0 - - A 0x03CB38 0F:CB28: 01        .byte $01   ; 
- D 0 - - A 0x03CB39 0F:CB29: 38        .byte $38   ; 
- D 0 - - A 0x03CB3A 0F:CB2A: 3E        .byte $3E   ; 
- D 0 - - A 0x03CB3B 0F:CB2B: F0        .byte $F0   ; 
- D 0 - - A 0x03CB3C 0F:CB2C: 03        .byte $03   ; 
- D 0 - - A 0x03CB3D 0F:CB2D: 3F        .byte $3F   ; 
- D 0 - - A 0x03CB3E 0F:CB2E: F8        .byte $F8   ; 
- D 0 - - A 0x03CB3F 0F:CB2F: 87        .byte $87   ; 
- D 0 - - A 0x03CB40 0F:CB30: 80        .byte $80   ; 
- D 0 - - A 0x03CB41 0F:CB31: 7F        .byte $7F   ; 
- D 0 - - A 0x03CB42 0F:CB32: C0        .byte $C0   ; 
- D 0 - - A 0x03CB43 0F:CB33: 3F        .byte $3F   ; 
- D 0 - - A 0x03CB44 0F:CB34: 40        .byte $40   ; 
- D 0 - - A 0x03CB45 0F:CB35: F0        .byte $F0   ; 
- D 0 - - A 0x03CB46 0F:CB36: 1F        .byte $1F   ; 
- D 0 - - A 0x03CB47 0F:CB37: F8        .byte $F8   ; 
- D 0 - - A 0x03CB48 0F:CB38: C3        .byte $C3   ; 
- D 0 - - A 0x03CB49 0F:CB39: 07        .byte $07   ; 
- D 0 - - A 0x03CB4A 0F:CB3A: FC        .byte $FC   ; 
- D 0 - - A 0x03CB4B 0F:CB3B: 01        .byte $01   ; 
- D 0 - - A 0x03CB4C 0F:CB3C: FF        .byte $FF   ; 
- D 0 - - A 0x03CB4D 0F:CB3D: F8        .byte $F8   ; 
- D 0 - - A 0x03CB4E 0F:CB3E: 80        .byte $80   ; 
- D 0 - - A 0x03CB4F 0F:CB3F: 1F        .byte $1F   ; 
- D 0 - - A 0x03CB50 0F:CB40: 28        .byte $28   ; 
- D 0 - - A 0x03CB51 0F:CB41: F1        .byte $F1   ; 
- D 0 - - A 0x03CB52 0F:CB42: C1        .byte $C1   ; 
- D 0 - - A 0x03CB53 0F:CB43: 0F        .byte $0F   ; 
- D 0 - - A 0x03CB54 0F:CB44: FC        .byte $FC   ; 
- D 0 - - A 0x03CB55 0F:CB45: 01        .byte $01   ; 
- D 0 - - A 0x03CB56 0F:CB46: FE        .byte $FE   ; 
- D 0 - - A 0x03CB57 0F:CB47: 0F        .byte $0F   ; 
- D 0 - - A 0x03CB58 0F:CB48: E0        .byte $E0   ; 
- D 0 - - A 0x03CB59 0F:CB49: 0F        .byte $0F   ; 
- D 0 - - A 0x03CB5A 0F:CB4A: E0        .byte $E0   ; 
- D 0 - - A 0x03CB5B 0F:CB4B: 7F        .byte $7F   ; 
- D 0 - - A 0x03CB5C 0F:CB4C: 20        .byte $20   ; 
- D 0 - - A 0x03CB5D 0F:CB4D: E0        .byte $E0   ; 
- D 0 - - A 0x03CB5E 0F:CB4E: 1F        .byte $1F   ; 
- D 0 - - A 0x03CB5F 0F:CB4F: F0        .byte $F0   ; 
- D 0 - - A 0x03CB60 0F:CB50: CF        .byte $CF   ; 
- D 0 - - A 0x03CB61 0F:CB51: 07        .byte $07   ; 
- D 0 - - A 0x03CB62 0F:CB52: FC        .byte $FC   ; 
- D 0 - - A 0x03CB63 0F:CB53: 00        .byte $00   ; 
- D 0 - - A 0x03CB64 0F:CB54: FC        .byte $FC   ; 
- D 0 - - A 0x03CB65 0F:CB55: EF        .byte $EF   ; 
- D 0 - - A 0x03CB66 0F:CB56: 01        .byte $01   ; 
- D 0 - - A 0x03CB67 0F:CB57: 7E        .byte $7E   ; 
- D 0 - - A 0x03CB68 0F:CB58: 80        .byte $80   ; 
- D 0 - - A 0x03CB69 0F:CB59: C3        .byte $C3   ; 
- D 0 - - A 0x03CB6A 0F:CB5A: FE        .byte $FE   ; 
- D 0 - - A 0x03CB6B 0F:CB5B: 0F        .byte $0F   ; 
- D 0 - - A 0x03CB6C 0F:CB5C: E0        .byte $E0   ; 
- D 0 - - A 0x03CB6D 0F:CB5D: 07        .byte $07   ; 
- D 0 - - A 0x03CB6E 0F:CB5E: E0        .byte $E0   ; 
- D 0 - - A 0x03CB6F 0F:CB5F: 1F        .byte $1F   ; 
- D 0 - - A 0x03CB70 0F:CB60: 00        .byte $00   ; 
- D 0 - - A 0x03CB71 0F:CB61: FF        .byte $FF   ; 
- D 0 - - A 0x03CB72 0F:CB62: 01        .byte $01   ; 
- D 0 - - A 0x03CB73 0F:CB63: FF        .byte $FF   ; 
- D 0 - - A 0x03CB74 0F:CB64: 01        .byte $01   ; 
- D 0 - - A 0x03CB75 0F:CB65: 7E        .byte $7E   ; 
- D 0 - - A 0x03CB76 0F:CB66: C0        .byte $C0   ; 
- D 0 - - A 0x03CB77 0F:CB67: CF        .byte $CF   ; 
- D 0 - - A 0x03CB78 0F:CB68: 01        .byte $01   ; 
- D 0 - - A 0x03CB79 0F:CB69: FE        .byte $FE   ; 
- D 0 - - A 0x03CB7A 0F:CB6A: 03        .byte $03   ; 
- D 0 - - A 0x03CB7B 0F:CB6B: F8        .byte $F8   ; 
- D 0 - - A 0x03CB7C 0F:CB6C: 0F        .byte $0F   ; 
- D 0 - - A 0x03CB7D 0F:CB6D: F0        .byte $F0   ; 
- D 0 - - A 0x03CB7E 0F:CB6E: CF        .byte $CF   ; 
- D 0 - - A 0x03CB7F 0F:CB6F: 07        .byte $07   ; 
- D 0 - - A 0x03CB80 0F:CB70: F0        .byte $F0   ; 
- D 0 - - A 0x03CB81 0F:CB71: 03        .byte $03   ; 
- D 0 - - A 0x03CB82 0F:CB72: FC        .byte $FC   ; 
- D 0 - - A 0x03CB83 0F:CB73: 0F        .byte $0F   ; 
- D 0 - - A 0x03CB84 0F:CB74: E0        .byte $E0   ; 
- D 0 - - A 0x03CB85 0F:CB75: 07        .byte $07   ; 
- D 0 - - A 0x03CB86 0F:CB76: 3E        .byte $3E   ; 
- D 0 - - A 0x03CB87 0F:CB77: E0        .byte $E0   ; 
- D 0 - - A 0x03CB88 0F:CB78: 3F        .byte $3F   ; 
- D 0 - - A 0x03CB89 0F:CB79: 1E        .byte $1E   ; 
- D 0 - - A 0x03CB8A 0F:CB7A: F8        .byte $F8   ; 
- D 0 - - A 0x03CB8B 0F:CB7B: 03        .byte $03   ; 
- D 0 - - A 0x03CB8C 0F:CB7C: 7C        .byte $7C   ; 
- D 0 - - A 0x03CB8D 0F:CB7D: 1F        .byte $1F   ; 
- D 0 - - A 0x03CB8E 0F:CB7E: F0        .byte $F0   ; 
- D 0 - - A 0x03CB8F 0F:CB7F: 08        .byte $08   ; 
- D 0 - - A 0x03CB90 0F:CB80: 1F        .byte $1F   ; 
- D 0 - - A 0x03CB91 0F:CB81: F8        .byte $F8   ; 
- D 0 - - A 0x03CB92 0F:CB82: 03        .byte $03   ; 
- D 0 - - A 0x03CB93 0F:CB83: 3F        .byte $3F   ; 
- D 0 - - A 0x03CB94 0F:CB84: E0        .byte $E0   ; 
- D 0 - - A 0x03CB95 0F:CB85: E3        .byte $E3   ; 
- D 0 - - A 0x03CB96 0F:CB86: 01        .byte $01   ; 
- D 0 - - A 0x03CB97 0F:CB87: FE        .byte $FE   ; 
- D 0 - - A 0x03CB98 0F:CB88: FD        .byte $FD   ; 
- D 0 - - A 0x03CB99 0F:CB89: 00        .byte $00   ; 
- D 0 - - A 0x03CB9A 0F:CB8A: 1F        .byte $1F   ; 
- D 0 - - A 0x03CB9B 0F:CB8B: E0        .byte $E0   ; 
- D 0 - - A 0x03CB9C 0F:CB8C: 37        .byte $37   ; 
- D 0 - - A 0x03CB9D 0F:CB8D: 80        .byte $80   ; 
- D 0 - - A 0x03CB9E 0F:CB8E: FF        .byte $FF   ; 
- D 0 - - A 0x03CB9F 0F:CB8F: C0        .byte $C0   ; 
- D 0 - - A 0x03CBA0 0F:CB90: 3F        .byte $3F   ; 
- D 0 - - A 0x03CBA1 0F:CB91: 01        .byte $01   ; 
- D 0 - - A 0x03CBA2 0F:CB92: FF        .byte $FF   ; 
- D 0 - - A 0x03CBA3 0F:CB93: 00        .byte $00   ; 
- D 0 - - A 0x03CBA4 0F:CB94: 9E        .byte $9E   ; 
- D 0 - - A 0x03CBA5 0F:CB95: 63        .byte $63   ; 
- D 0 - - A 0x03CBA6 0F:CB96: F0        .byte $F0   ; 
- D 0 - - A 0x03CBA7 0F:CB97: 0F        .byte $0F   ; 
- D 0 - - A 0x03CBA8 0F:CB98: 07        .byte $07   ; 
- D 0 - - A 0x03CBA9 0F:CB99: FC        .byte $FC   ; 
- D 0 - - A 0x03CBAA 0F:CB9A: 01        .byte $01   ; 
- D 0 - - A 0x03CBAB 0F:CB9B: FF        .byte $FF   ; 
- D 0 - - A 0x03CBAC 0F:CB9C: 00        .byte $00   ; 
- D 0 - - A 0x03CBAD 0F:CB9D: FE        .byte $FE   ; 
- D 0 - - A 0x03CBAE 0F:CB9E: 07        .byte $07   ; 
- D 0 - - A 0x03CBAF 0F:CB9F: F8        .byte $F8   ; 
- D 0 - - A 0x03CBB0 0F:CBA0: 07        .byte $07   ; 
- D 0 - - A 0x03CBB1 0F:CBA1: F0        .byte $F0   ; 
- D 0 - - A 0x03CBB2 0F:CBA2: 1F        .byte $1F   ; 
- D 0 - - A 0x03CBB3 0F:CBA3: 7C        .byte $7C   ; 
- D 0 - - A 0x03CBB4 0F:CBA4: C0        .byte $C0   ; 
- D 0 - - A 0x03CBB5 0F:CBA5: 0F        .byte $0F   ; 
- D 0 - - A 0x03CBB6 0F:CBA6: FE        .byte $FE   ; 
- D 0 - - A 0x03CBB7 0F:CBA7: 70        .byte $70   ; 
- D 0 - - A 0x03CBB8 0F:CBA8: 80        .byte $80   ; 
- D 0 - - A 0x03CBB9 0F:CBA9: 1F        .byte $1F   ; 
- D 0 - - A 0x03CBBA 0F:CBAA: 1E        .byte $1E   ; 
- D 0 - - A 0x03CBBB 0F:CBAB: FC        .byte $FC   ; 
- D 0 - - A 0x03CBBC 0F:CBAC: 03        .byte $03   ; 
- D 0 - - A 0x03CBBD 0F:CBAD: FC        .byte $FC   ; 
- D 0 - - A 0x03CBBE 0F:CBAE: 07        .byte $07   ; 
- D 0 - - A 0x03CBBF 0F:CBAF: E0        .byte $E0   ; 
- D 0 - - A 0x03CBC0 0F:CBB0: 1F        .byte $1F   ; 
- D 0 - - A 0x03CBC1 0F:CBB1: 00        .byte $00   ; 
- D 0 - - A 0x03CBC2 0F:CBB2: FF        .byte $FF   ; 
- D 0 - - A 0x03CBC3 0F:CBB3: 01        .byte $01   ; 
- D 0 - - A 0x03CBC4 0F:CBB4: FC        .byte $FC   ; 
- D 0 - - A 0x03CBC5 0F:CBB5: 07        .byte $07   ; 
- D 0 - - A 0x03CBC6 0F:CBB6: C1        .byte $C1   ; 
- D 0 - - A 0x03CBC7 0F:CBB7: FF        .byte $FF   ; 
- D 0 - - A 0x03CBC8 0F:CBB8: 00        .byte $00   ; 
- D 0 - - A 0x03CBC9 0F:CBB9: FC        .byte $FC   ; 
- D 0 - - A 0x03CBCA 0F:CBBA: 07        .byte $07   ; 
- D 0 - - A 0x03CBCB 0F:CBBB: FC        .byte $FC   ; 
- D 0 - - A 0x03CBCC 0F:CBBC: 29        .byte $29   ; 
- D 0 - - A 0x03CBCD 0F:CBBD: 0F        .byte $0F   ; 
- D 0 - - A 0x03CBCE 0F:CBBE: F8        .byte $F8   ; 
- D 0 - - A 0x03CBCF 0F:CBBF: 03        .byte $03   ; 
- D 0 - - A 0x03CBD0 0F:CBC0: FE        .byte $FE   ; 
- D 0 - - A 0x03CBD1 0F:CBC1: E0        .byte $E0   ; 
- D 0 - - A 0x03CBD2 0F:CBC2: A4        .byte $A4   ; 
- D 0 - - A 0x03CBD3 0F:CBC3: 1E        .byte $1E   ; 
- D 0 - - A 0x03CBD4 0F:CBC4: F0        .byte $F0   ; 
- D 0 - - A 0x03CBD5 0F:CBC5: 3F        .byte $3F   ; 
- D 0 - - A 0x03CBD6 0F:CBC6: 00        .byte $00   ; 
- D 0 - - A 0x03CBD7 0F:CBC7: FF        .byte $FF   ; 
- D 0 - - A 0x03CBD8 0F:CBC8: C0        .byte $C0   ; 
- D 0 - - A 0x03CBD9 0F:CBC9: 80        .byte $80   ; 
- D 0 - - A 0x03CBDA 0F:CBCA: 3F        .byte $3F   ; 
- D 0 - - A 0x03CBDB 0F:CBCB: E0        .byte $E0   ; 
- D 0 - - A 0x03CBDC 0F:CBCC: 7F        .byte $7F   ; 
- D 0 - - A 0x03CBDD 0F:CBCD: E0        .byte $E0   ; 
- D 0 - - A 0x03CBDE 0F:CBCE: 07        .byte $07   ; 
- D 0 - - A 0x03CBDF 0F:CBCF: 7D        .byte $7D   ; 
- D 0 - - A 0x03CBE0 0F:CBD0: E0        .byte $E0   ; 
- D 0 - - A 0x03CBE1 0F:CBD1: 0F        .byte $0F   ; 
- D 0 - - A 0x03CBE2 0F:CBD2: 08        .byte $08   ; 
- D 0 - - A 0x03CBE3 0F:CBD3: FE        .byte $FE   ; 
- D 0 - - A 0x03CBE4 0F:CBD4: 81        .byte $81   ; 
- D 0 - - A 0x03CBE5 0F:CBD5: 1F        .byte $1F   ; 
- D 0 - - A 0x03CBE6 0F:CBD6: FC        .byte $FC   ; 
- D 0 - - A 0x03CBE7 0F:CBD7: 81        .byte $81   ; 
- D 0 - - A 0x03CBE8 0F:CBD8: 7F        .byte $7F   ; 
- D 0 - - A 0x03CBE9 0F:CBD9: 0E        .byte $0E   ; 
- D 0 - - A 0x03CBEA 0F:CBDA: E0        .byte $E0   ; 
- D 0 - - A 0x03CBEB 0F:CBDB: 1F        .byte $1F   ; 
- D 0 - - A 0x03CBEC 0F:CBDC: 90        .byte $90   ; 
- D 0 - - A 0x03CBED 0F:CBDD: FE        .byte $FE   ; 
- D 0 - - A 0x03CBEE 0F:CBDE: 03        .byte $03   ; 
- D 0 - - A 0x03CBEF 0F:CBDF: 88        .byte $88   ; 
- D 0 - - A 0x03CBF0 0F:CBE0: FF        .byte $FF   ; 
- D 0 - - A 0x03CBF1 0F:CBE1: 01        .byte $01   ; 
- D 0 - - A 0x03CBF2 0F:CBE2: 5F        .byte $5F   ; 
- D 0 - - A 0x03CBF3 0F:CBE3: F0        .byte $F0   ; 
- D 0 - - A 0x03CBF4 0F:CBE4: 1F        .byte $1F   ; 
- D 0 - - A 0x03CBF5 0F:CBE5: 00        .byte $00   ; 
- D 0 - - A 0x03CBF6 0F:CBE6: FF        .byte $FF   ; 
- D 0 - - A 0x03CBF7 0F:CBE7: 80        .byte $80   ; 
- D 0 - - A 0x03CBF8 0F:CBE8: 8F        .byte $8F   ; 
- D 0 - - A 0x03CBF9 0F:CBE9: 1F        .byte $1F   ; 
- D 0 - - A 0x03CBFA 0F:CBEA: F8        .byte $F8   ; 
- D 0 - - A 0x03CBFB 0F:CBEB: 01        .byte $01   ; 
- D 0 - - A 0x03CBFC 0F:CBEC: FC        .byte $FC   ; 
- D 0 - - A 0x03CBFD 0F:CBED: 07        .byte $07   ; 
- D 0 - - A 0x03CBFE 0F:CBEE: F0        .byte $F0   ; 
- D 0 - - A 0x03CBFF 0F:CBEF: 0F        .byte $0F   ; 
- D 0 - - A 0x03CC00 0F:CBF0: FC        .byte $FC   ; 
- D 0 - - A 0x03CC01 0F:CBF1: 07        .byte $07   ; 
- D 0 - - A 0x03CC02 0F:CBF2: F0        .byte $F0   ; 
- D 0 - - A 0x03CC03 0F:CBF3: 33        .byte $33   ; 
- D 0 - - A 0x03CC04 0F:CBF4: 34        .byte $34   ; 
- D 0 - - A 0x03CC05 0F:CBF5: E0        .byte $E0   ; 
- D 0 - - A 0x03CC06 0F:CBF6: 1F        .byte $1F   ; 
- D 0 - - A 0x03CC07 0F:CBF7: FC        .byte $FC   ; 
- D 0 - - A 0x03CC08 0F:CBF8: 0F        .byte $0F   ; 
- D 0 - - A 0x03CC09 0F:CBF9: E0        .byte $E0   ; 
- D 0 - - A 0x03CC0A 0F:CBFA: 31        .byte $31   ; 
- D 0 - - A 0x03CC0B 0F:CBFB: 1E        .byte $1E   ; 
- D 0 - - A 0x03CC0C 0F:CBFC: 8F        .byte $8F   ; 
- D 0 - - A 0x03CC0D 0F:CBFD: F8        .byte $F8   ; 
- D 0 - - A 0x03CC0E 0F:CBFE: E0        .byte $E0   ; 
- D 0 - - A 0x03CC0F 0F:CBFF: 0F        .byte $0F   ; 
- D 0 - - A 0x03CC10 0F:CC00: 3E        .byte $3E   ; 
- D 0 - - A 0x03CC11 0F:CC01: F0        .byte $F0   ; 
- D 0 - - A 0x03CC12 0F:CC02: 03        .byte $03   ; 
- D 0 - - A 0x03CC13 0F:CC03: F8        .byte $F8   ; 
- D 0 - - A 0x03CC14 0F:CC04: 1B        .byte $1B   ; 
- D 0 - - A 0x03CC15 0F:CC05: 0E        .byte $0E   ; 
- D 0 - - A 0x03CC16 0F:CC06: F8        .byte $F8   ; 
- D 0 - - A 0x03CC17 0F:CC07: 07        .byte $07   ; 
- D 0 - - A 0x03CC18 0F:CC08: 06        .byte $06   ; 
- D 0 - - A 0x03CC19 0F:CC09: FF        .byte $FF   ; 
- D 0 - - A 0x03CC1A 0F:CC0A: C0        .byte $C0   ; 
- D 0 - - A 0x03CC1B 0F:CC0B: 1F        .byte $1F   ; 
- D 0 - - A 0x03CC1C 0F:CC0C: 82        .byte $82   ; 
- D 0 - - A 0x03CC1D 0F:CC0D: 3F        .byte $3F   ; 
- D 0 - - A 0x03CC1E 0F:CC0E: 98        .byte $98   ; 
- D 0 - - A 0x03CC1F 0F:CC0F: 9E        .byte $9E   ; 
- D 0 - - A 0x03CC20 0F:CC10: E0        .byte $E0   ; 
- D 0 - - A 0x03CC21 0F:CC11: 3F        .byte $3F   ; 
- D 0 - - A 0x03CC22 0F:CC12: 80        .byte $80   ; 
- D 0 - - A 0x03CC23 0F:CC13: 7F        .byte $7F   ; 
- D 0 - - A 0x03CC24 0F:CC14: C0        .byte $C0   ; 
- D 0 - - A 0x03CC25 0F:CC15: 5F        .byte $5F   ; 
- D 0 - - A 0x03CC26 0F:CC16: E1        .byte $E1   ; 
- D 0 - - A 0x03CC27 0F:CC17: C0        .byte $C0   ; 
- D 0 - - A 0x03CC28 0F:CC18: 3F        .byte $3F   ; 
- D 0 - - A 0x03CC29 0F:CC19: C0        .byte $C0   ; 
- D 0 - - A 0x03CC2A 0F:CC1A: F1        .byte $F1   ; 
- D 0 - - A 0x03CC2B 0F:CC1B: 07        .byte $07   ; 
- D 0 - - A 0x03CC2C 0F:CC1C: FC        .byte $FC   ; 
- D 0 - - A 0x03CC2D 0F:CC1D: 41        .byte $41   ; 
- D 0 - - A 0x03CC2E 0F:CC1E: F9        .byte $F9   ; 
- D 0 - - A 0x03CC2F 0F:CC1F: E0        .byte $E0   ; 
- D 0 - - A 0x03CC30 0F:CC20: 0F        .byte $0F   ; 
- D 0 - - A 0x03CC31 0F:CC21: C6        .byte $C6   ; 
- D 0 - - A 0x03CC32 0F:CC22: F8        .byte $F8   ; 
- D 0 - - A 0x03CC33 0F:CC23: 18        .byte $18   ; 
- D 0 - - A 0x03CC34 0F:CC24: C0        .byte $C0   ; 
- D 0 - - A 0x03CC35 0F:CC25: 3F        .byte $3F   ; 
- D 0 - - A 0x03CC36 0F:CC26: 78        .byte $78   ; 
- D 0 - - A 0x03CC37 0F:CC27: FE        .byte $FE   ; 
- D 0 - - A 0x03CC38 0F:CC28: 01        .byte $01   ; 
- D 0 - - A 0x03CC39 0F:CC29: FC        .byte $FC   ; 
- D 0 - - A 0x03CC3A 0F:CC2A: 01        .byte $01   ; 
- D 0 - - A 0x03CC3B 0F:CC2B: 3F        .byte $3F   ; 
- D 0 - - A 0x03CC3C 0F:CC2C: 1C        .byte $1C   ; 
- D 0 - - A 0x03CC3D 0F:CC2D: CE        .byte $CE   ; 
- D 0 - - A 0x03CC3E 0F:CC2E: E2        .byte $E2   ; 
- D 0 - - A 0x03CC3F 0F:CC2F: 38        .byte $38   ; 
- D 0 - - A 0x03CC40 0F:CC30: 8F        .byte $8F   ; 
- D 0 - - A 0x03CC41 0F:CC31: 81        .byte $81   ; 
- D 0 - - A 0x03CC42 0F:CC32: 7F        .byte $7F   ; 
- D 0 - - A 0x03CC43 0F:CC33: 80        .byte $80   ; 
- D 0 - - A 0x03CC44 0F:CC34: DF        .byte $DF   ; 
- D 0 - - A 0x03CC45 0F:CC35: 58        .byte $58   ; 
- D 0 - - A 0x03CC46 0F:CC36: 80        .byte $80   ; 
- D 0 - - A 0x03CC47 0F:CC37: 7F        .byte $7F   ; 
- D 0 - - A 0x03CC48 0F:CC38: 70        .byte $70   ; 
- D 0 - - A 0x03CC49 0F:CC39: F9        .byte $F9   ; 
- D 0 - - A 0x03CC4A 0F:CC3A: 03        .byte $03   ; 
- D 0 - - A 0x03CC4B 0F:CC3B: C2        .byte $C2   ; 
- D 0 - - A 0x03CC4C 0F:CC3C: 3F        .byte $3F   ; 
- D 0 - - A 0x03CC4D 0F:CC3D: E0        .byte $E0   ; 
- D 0 - - A 0x03CC4E 0F:CC3E: DF        .byte $DF   ; 
- D 0 - - A 0x03CC4F 0F:CC3F: 00        .byte $00   ; 
- D 0 - - A 0x03CC50 0F:CC40: FC        .byte $FC   ; 
- D 0 - - A 0x03CC51 0F:CC41: 07        .byte $07   ; 
- D 0 - - A 0x03CC52 0F:CC42: F8        .byte $F8   ; 
- D 0 - - A 0x03CC53 0F:CC43: 0F        .byte $0F   ; 
- D 0 - - A 0x03CC54 0F:CC44: 2C        .byte $2C   ; 
- D 0 - - A 0x03CC55 0F:CC45: F4        .byte $F4   ; 
- D 0 - - A 0x03CC56 0F:CC46: 2B        .byte $2B   ; 
- D 0 - - A 0x03CC57 0F:CC47: E0        .byte $E0   ; 
- D 0 - - A 0x03CC58 0F:CC48: 0F        .byte $0F   ; 
- D 0 - - A 0x03CC59 0F:CC49: F8        .byte $F8   ; 
- D 0 - - A 0x03CC5A 0F:CC4A: 56        .byte $56   ; 
- D 0 - - A 0x03CC5B 0F:CC4B: 05        .byte $05   ; 
- D 0 - - A 0x03CC5C 0F:CC4C: 7F        .byte $7F   ; 
- D 0 - - A 0x03CC5D 0F:CC4D: 38        .byte $38   ; 
- D 0 - - A 0x03CC5E 0F:CC4E: E0        .byte $E0   ; 
- D 0 - - A 0x03CC5F 0F:CC4F: 1F        .byte $1F   ; 
- D 0 - - A 0x03CC60 0F:CC50: E0        .byte $E0   ; 
- D 0 - - A 0x03CC61 0F:CC51: 1F        .byte $1F   ; 
- D 0 - - A 0x03CC62 0F:CC52: E0        .byte $E0   ; 
- D 0 - - A 0x03CC63 0F:CC53: 1F        .byte $1F   ; 
- D 0 - - A 0x03CC64 0F:CC54: C0        .byte $C0   ; 
- D 0 - - A 0x03CC65 0F:CC55: 7F        .byte $7F   ; 
- D 0 - - A 0x03CC66 0F:CC56: 40        .byte $40   ; 
- D 0 - - A 0x03CC67 0F:CC57: 3F        .byte $3F   ; 
- D 0 - - A 0x03CC68 0F:CC58: E2        .byte $E2   ; 
- D 0 - - A 0x03CC69 0F:CC59: 03        .byte $03   ; 
- D 0 - - A 0x03CC6A 0F:CC5A: 3F        .byte $3F   ; 
- D 0 - - A 0x03CC6B 0F:CC5B: 38        .byte $38   ; 
- D 0 - - A 0x03CC6C 0F:CC5C: 6E        .byte $6E   ; 
- D 0 - - A 0x03CC6D 0F:CC5D: E1        .byte $E1   ; 
- D 0 - - A 0x03CC6E 0F:CC5E: 86        .byte $86   ; 
- D 0 - - A 0x03CC6F 0F:CC5F: AE        .byte $AE   ; 
- D 0 - - A 0x03CC70 0F:CC60: 07        .byte $07   ; 
- D 0 - - A 0x03CC71 0F:CC61: F0        .byte $F0   ; 
- D 0 - - A 0x03CC72 0F:CC62: 0F        .byte $0F   ; 
- D 0 - - A 0x03CC73 0F:CC63: BA        .byte $BA   ; 
- D 0 - - A 0x03CC74 0F:CC64: C1        .byte $C1   ; 
- D 0 - - A 0x03CC75 0F:CC65: 0F        .byte $0F   ; 
- D 0 - - A 0x03CC76 0F:CC66: 3C        .byte $3C   ; 
- D 0 - - A 0x03CC77 0F:CC67: 1E        .byte $1E   ; 
- D 0 - - A 0x03CC78 0F:CC68: E3        .byte $E3   ; 
- D 0 - - A 0x03CC79 0F:CC69: 2D        .byte $2D   ; 
- D 0 - - A 0x03CC7A 0F:CC6A: 0A        .byte $0A   ; 
- D 0 - - A 0x03CC7B 0F:CC6B: FE        .byte $FE   ; 
- D 0 - - A 0x03CC7C 0F:CC6C: 01        .byte $01   ; 
- D 0 - - A 0x03CC7D 0F:CC6D: 5F        .byte $5F   ; 
- D 0 - - A 0x03CC7E 0F:CC6E: 25        .byte $25   ; 
- D 0 - - A 0x03CC7F 0F:CC6F: F4        .byte $F4   ; 
- D 0 - - A 0x03CC80 0F:CC70: 23        .byte $23   ; 
- D 0 - - A 0x03CC81 0F:CC71: 8B        .byte $8B   ; 
- D 0 - - A 0x03CC82 0F:CC72: FC        .byte $FC   ; 
- D 0 - - A 0x03CC83 0F:CC73: 01        .byte $01   ; 
- D 0 - - A 0x03CC84 0F:CC74: FE        .byte $FE   ; 
- D 0 - - A 0x03CC85 0F:CC75: 28        .byte $28   ; 
- D 0 - - A 0x03CC86 0F:CC76: F8        .byte $F8   ; 
- D 0 - - A 0x03CC87 0F:CC77: 07        .byte $07   ; 
- D 0 - - A 0x03CC88 0F:CC78: C1        .byte $C1   ; 
- D 0 - - A 0x03CC89 0F:CC79: 7F        .byte $7F   ; 
- D 0 - - A 0x03CC8A 0F:CC7A: C0        .byte $C0   ; 
- D 0 - - A 0x03CC8B 0F:CC7B: 2F        .byte $2F   ; 
- D 0 - - A 0x03CC8C 0F:CC7C: 61        .byte $61   ; 
- D 0 - - A 0x03CC8D 0F:CC7D: E5        .byte $E5   ; 
- D 0 - - A 0x03CC8E 0F:CC7E: 1B        .byte $1B   ; 
- D 0 - - A 0x03CC8F 0F:CC7F: F0        .byte $F0   ; 
- D 0 - - A 0x03CC90 0F:CC80: 07        .byte $07   ; 
- D 0 - - A 0x03CC91 0F:CC81: BA        .byte $BA   ; 
- D 0 - - A 0x03CC92 0F:CC82: 0E        .byte $0E   ; 
- D 0 - - A 0x03CC93 0F:CC83: EC        .byte $EC   ; 
- D 0 - - A 0x03CC94 0F:CC84: A5        .byte $A5   ; 
- D 0 - - A 0x03CC95 0F:CC85: E4        .byte $E4   ; 
- D 0 - - A 0x03CC96 0F:CC86: 96        .byte $96   ; 
- D 0 - - A 0x03CC97 0F:CC87: E8        .byte $E8   ; 
- D 0 - - A 0x03CC98 0F:CC88: 66        .byte $66   ; 
- D 0 - - A 0x03CC99 0F:CC89: A2        .byte $A2   ; 
- D 0 - - A 0x03CC9A 0F:CC8A: 9B        .byte $9B   ; 
- D 0 - - A 0x03CC9B 0F:CC8B: B8        .byte $B8   ; 
- D 0 - - A 0x03CC9C 0F:CC8C: A9        .byte $A9   ; 
- D 0 - - A 0x03CC9D 0F:CC8D: 4A        .byte $4A   ; 
- D 0 - - A 0x03CC9E 0F:CC8E: 5B        .byte $5B   ; 
- D 0 - - A 0x03CC9F 0F:CC8F: E2        .byte $E2   ; 
- D 0 - - A 0x03CCA0 0F:CC90: A6        .byte $A6   ; 
- D 0 - - A 0x03CCA1 0F:CC91: 2A        .byte $2A   ; 
- D 0 - - A 0x03CCA2 0F:CC92: AE        .byte $AE   ; 
- D 0 - - A 0x03CCA3 0F:CC93: 8A        .byte $8A   ; 
- D 0 - - A 0x03CCA4 0F:CC94: AB        .byte $AB   ; 
- D 0 - - A 0x03CCA5 0F:CC95: 2A        .byte $2A   ; 
- D 0 - - A 0x03CCA6 0F:CC96: AE        .byte $AE   ; 
- D 0 - - A 0x03CCA7 0F:CC97: 6A        .byte $6A   ; 
- D 0 - - A 0x03CCA8 0F:CC98: C1        .byte $C1   ; 
- D 0 - - A 0x03CCA9 0F:CC99: 1F        .byte $1F   ; 
- D 0 - - A 0x03CCAA 0F:CC9A: D0        .byte $D0   ; 
- D 0 - - A 0x03CCAB 0F:CC9B: 8F        .byte $8F   ; 
- D 0 - - A 0x03CCAC 0F:CC9C: 78        .byte $78   ; 
- D 0 - - A 0x03CCAD 0F:CC9D: B2        .byte $B2   ; 
- D 0 - - A 0x03CCAE 0F:CC9E: 85        .byte $85   ; 
- D 0 - - A 0x03CCAF 0F:CC9F: 5B        .byte $5B   ; 
- D 0 - - A 0x03CCB0 0F:CCA0: 52        .byte $52   ; 
- D 0 - - A 0x03CCB1 0F:CCA1: B9        .byte $B9   ; 
- D 0 - - A 0x03CCB2 0F:CCA2: 83        .byte $83   ; 
- D 0 - - A 0x03CCB3 0F:CCA3: BA        .byte $BA   ; 
- D 0 - - A 0x03CCB4 0F:CCA4: 9A        .byte $9A   ; 
- D 0 - - A 0x03CCB5 0F:CCA5: E8        .byte $E8   ; 
- D 0 - - A 0x03CCB6 0F:CCA6: 17        .byte $17   ; 
- D 0 - - A 0x03CCB7 0F:CCA7: F0        .byte $F0   ; 
- D 0 - - A 0x03CCB8 0F:CCA8: 07        .byte $07   ; 
- D 0 - - A 0x03CCB9 0F:CCA9: 3A        .byte $3A   ; 
- D 0 - - A 0x03CCBA 0F:CCAA: 1F        .byte $1F   ; 
- D 0 - - A 0x03CCBB 0F:CCAB: 52        .byte $52   ; 
- D 0 - - A 0x03CCBC 0F:CCAC: FC        .byte $FC   ; 
- D 0 - - A 0x03CCBD 0F:CCAD: C0        .byte $C0   ; 
- D 0 - - A 0x03CCBE 0F:CCAE: 4F        .byte $4F   ; 
- D 0 - - A 0x03CCBF 0F:CCAF: B8        .byte $B8   ; 
- D 0 - - A 0x03CCC0 0F:CCB0: D2        .byte $D2   ; 
- D 0 - - A 0x03CCC1 0F:CCB1: 85        .byte $85   ; 
- D 0 - - A 0x03CCC2 0F:CCB2: AE        .byte $AE   ; 
- D 0 - - A 0x03CCC3 0F:CCB3: AA        .byte $AA   ; 
- D 0 - - A 0x03CCC4 0F:CCB4: AA        .byte $AA   ; 
- D 0 - - A 0x03CCC5 0F:CCB5: D2        .byte $D2   ; 
- D 0 - - A 0x03CCC6 0F:CCB6: AA        .byte $AA   ; 
- D 0 - - A 0x03CCC7 0F:CCB7: AA        .byte $AA   ; 
- D 0 - - A 0x03CCC8 0F:CCB8: AA        .byte $AA   ; 
- D 0 - - A 0x03CCC9 0F:CCB9: 1A        .byte $1A   ; 
- D 0 - - A 0x03CCCA 0F:CCBA: EC        .byte $EC   ; 
- D 0 - - A 0x03CCCB 0F:CCBB: 25        .byte $25   ; 
- D 0 - - A 0x03CCCC 0F:CCBC: C5        .byte $C5   ; 
- D 0 - - A 0x03CCCD 0F:CCBD: 2F        .byte $2F   ; 
- D 0 - - A 0x03CCCE 0F:CCBE: B8        .byte $B8   ; 
- D 0 - - A 0x03CCCF 0F:CCBF: AA        .byte $AA   ; 
- D 0 - - A 0x03CCD0 0F:CCC0: 89        .byte $89   ; 
- D 0 - - A 0x03CCD1 0F:CCC1: 6E        .byte $6E   ; 
- D 0 - - A 0x03CCD2 0F:CCC2: 8A        .byte $8A   ; 
- D 0 - - A 0x03CCD3 0F:CCC3: AD        .byte $AD   ; 
- D 0 - - A 0x03CCD4 0F:CCC4: AA        .byte $AA   ; 
- D 0 - - A 0x03CCD5 0F:CCC5: AC        .byte $AC   ; 
- D 0 - - A 0x03CCD6 0F:CCC6: E2        .byte $E2   ; 
- D 0 - - A 0x03CCD7 0F:CCC7: 25        .byte $25   ; 
- D 0 - - A 0x03CCD8 0F:CCC8: FA        .byte $FA   ; 
- D 0 - - A 0x03CCD9 0F:CCC9: 82        .byte $82   ; 
- D 0 - - A 0x03CCDA 0F:CCCA: 9B        .byte $9B   ; 
- D 0 - - A 0x03CCDB 0F:CCCB: AC        .byte $AC   ; 
- D 0 - - A 0x03CCDC 0F:CCCC: AA        .byte $AA   ; 
- D 0 - - A 0x03CCDD 0F:CCCD: AA        .byte $AA   ; 
- D 0 - - A 0x03CCDE 0F:CCCE: AA        .byte $AA   ; 
- D 0 - - A 0x03CCDF 0F:CCCF: AA        .byte $AA   ; 
- D 0 - - A 0x03CCE0 0F:CCD0: AA        .byte $AA   ; 
- D 0 - - A 0x03CCE1 0F:CCD1: C2        .byte $C2   ; 
- D 0 - - A 0x03CCE2 0F:CCD2: 0F        .byte $0F   ; 
- D 0 - - A 0x03CCE3 0F:CCD3: BC        .byte $BC   ; 
- D 0 - - A 0x03CCE4 0F:CCD4: 96        .byte $96   ; 
- D 0 - - A 0x03CCE5 0F:CCD5: B4        .byte $B4   ; 
- D 0 - - A 0x03CCE6 0F:CCD6: A6        .byte $A6   ; 
- D 0 - - A 0x03CCE7 0F:CCD7: B8        .byte $B8   ; 
- D 0 - - A 0x03CCE8 0F:CCD8: 8A        .byte $8A   ; 
- D 0 - - A 0x03CCE9 0F:CCD9: AE        .byte $AE   ; 
- D 0 - - A 0x03CCEA 0F:CCDA: 6A        .byte $6A   ; 
- D 0 - - A 0x03CCEB 0F:CCDB: B2        .byte $B2   ; 
- D 0 - - A 0x03CCEC 0F:CCDC: AA        .byte $AA   ; 
- D 0 - - A 0x03CCED 0F:CCDD: AA        .byte $AA   ; 
- D 0 - - A 0x03CCEE 0F:CCDE: B2        .byte $B2   ; 
- D 0 - - A 0x03CCEF 0F:CCDF: 2A        .byte $2A   ; 
- D 0 - - A 0x03CCF0 0F:CCE0: AB        .byte $AB   ; 
- D 0 - - A 0x03CCF1 0F:CCE1: 16        .byte $16   ; 
- D 0 - - A 0x03CCF2 0F:CCE2: F8        .byte $F8   ; 
- D 0 - - A 0x03CCF3 0F:CCE3: 83        .byte $83   ; 
- D 0 - - A 0x03CCF4 0F:CCE4: 6B        .byte $6B   ; 
- D 0 - - A 0x03CCF5 0F:CCE5: 2A        .byte $2A   ; 
- D 0 - - A 0x03CCF6 0F:CCE6: 5B        .byte $5B   ; 
- D 0 - - A 0x03CCF7 0F:CCE7: 4A        .byte $4A   ; 
- D 0 - - A 0x03CCF8 0F:CCE8: AB        .byte $AB   ; 
- D 0 - - A 0x03CCF9 0F:CCE9: E2        .byte $E2   ; 
- D 0 - - A 0x03CCFA 0F:CCEA: 9A        .byte $9A   ; 
- D 0 - - A 0x03CCFB 0F:CCEB: E8        .byte $E8   ; 
- D 0 - - A 0x03CCFC 0F:CCEC: AA        .byte $AA   ; 
- D 0 - - A 0x03CCFD 0F:CCED: 2A        .byte $2A   ; 
- D 0 - - A 0x03CCFE 0F:CCEE: AB        .byte $AB   ; 
- D 0 - - A 0x03CCFF 0F:CCEF: E2        .byte $E2   ; 
- D 0 - - A 0x03CD00 0F:CCF0: AA        .byte $AA   ; 
- D 0 - - A 0x03CD01 0F:CCF1: AA        .byte $AA   ; 
- D 0 - - A 0x03CD02 0F:CCF2: 6A        .byte $6A   ; 
- D 0 - - A 0x03CD03 0F:CCF3: 05        .byte $05   ; 
- D 0 - - A 0x03CD04 0F:CCF4: 7F        .byte $7F   ; 
- D 0 - - A 0x03CD05 0F:CCF5: C0        .byte $C0   ; 
- D 0 - - A 0x03CD06 0F:CCF6: 8F        .byte $8F   ; 
- D 0 - - A 0x03CD07 0F:CCF7: C2        .byte $C2   ; 
- D 0 - - A 0x03CD08 0F:CCF8: 1F        .byte $1F   ; 
- D 0 - - A 0x03CD09 0F:CCF9: B0        .byte $B0   ; 
- D 0 - - A 0x03CD0A 0F:CCFA: 97        .byte $97   ; 
- D 0 - - A 0x03CD0B 0F:CCFB: A2        .byte $A2   ; 
- D 0 - - A 0x03CD0C 0F:CCFC: 6D        .byte $6D   ; 
- D 0 - - A 0x03CD0D 0F:CCFD: 89        .byte $89   ; 
- D 0 - - A 0x03CD0E 0F:CCFE: 6B        .byte $6B   ; 
- D 0 - - A 0x03CD0F 0F:CCFF: 4A        .byte $4A   ; 
- D 0 - - A 0x03CD10 0F:CD00: AB        .byte $AB   ; 
- D 0 - - A 0x03CD11 0F:CD01: 4A        .byte $4A   ; 
- D 0 - - A 0x03CD12 0F:CD02: AB        .byte $AB   ; 
- D 0 - - A 0x03CD13 0F:CD03: AA        .byte $AA   ; 
- D 0 - - A 0x03CD14 0F:CD04: 5A        .byte $5A   ; 
- D 0 - - A 0x03CD15 0F:CD05: F0        .byte $F0   ; 
- D 0 - - A 0x03CD16 0F:CD06: 0B        .byte $0B   ; 
- D 0 - - A 0x03CD17 0F:CD07: BA        .byte $BA   ; 
- D 0 - - A 0x03CD18 0F:CD08: 25        .byte $25   ; 
- D 0 - - A 0x03CD19 0F:CD09: AD        .byte $AD   ; 
- D 0 - - A 0x03CD1A 0F:CD0A: AA        .byte $AA   ; 
- D 0 - - A 0x03CD1B 0F:CD0B: AA        .byte $AA   ; 
- D 0 - - A 0x03CD1C 0F:CD0C: AA        .byte $AA   ; 
- D 0 - - A 0x03CD1D 0F:CD0D: AA        .byte $AA   ; 
- D 0 - - A 0x03CD1E 0F:CD0E: AA        .byte $AA   ; 
- D 0 - - A 0x03CD1F 0F:CD0F: AA        .byte $AA   ; 
- D 0 - - A 0x03CD20 0F:CD10: AA        .byte $AA   ; 
- D 0 - - A 0x03CD21 0F:CD11: AA        .byte $AA   ; 
- D 0 - - A 0x03CD22 0F:CD12: AA        .byte $AA   ; 
- D 0 - - A 0x03CD23 0F:CD13: D2        .byte $D2   ; 
- D 0 - - A 0x03CD24 0F:CD14: AA        .byte $AA   ; 
- D 0 - - A 0x03CD25 0F:CD15: AA        .byte $AA   ; 
- D 0 - - A 0x03CD26 0F:CD16: AA        .byte $AA   ; 
- D 0 - - A 0x03CD27 0F:CD17: B2        .byte $B2   ; 
- D 0 - - A 0x03CD28 0F:CD18: 05        .byte $05   ; 
- D 0 - - A 0x03CD29 0F:CD19: 6F        .byte $6F   ; 
- D 0 - - A 0x03CD2A 0F:CD1A: 51        .byte $51   ; 
- D 0 - - A 0x03CD2B 0F:CD1B: AB        .byte $AB   ; 
- D 0 - - A 0x03CD2C 0F:CD1C: CA        .byte $CA   ; 
- D 0 - - A 0x03CD2D 0F:CD1D: AA        .byte $AA   ; 
- D 0 - - A 0x03CD2E 0F:CD1E: CA        .byte $CA   ; 
- D 0 - - A 0x03CD2F 0F:CD1F: AA        .byte $AA   ; 
- D 0 - - A 0x03CD30 0F:CD20: AA        .byte $AA   ; 
- D 0 - - A 0x03CD31 0F:CD21: AA        .byte $AA   ; 
- D 0 - - A 0x03CD32 0F:CD22: D2        .byte $D2   ; 
- D 0 - - A 0x03CD33 0F:CD23: AA        .byte $AA   ; 
- D 0 - - A 0x03CD34 0F:CD24: AC        .byte $AC   ; 
- D 0 - - A 0x03CD35 0F:CD25: AA        .byte $AA   ; 
- D 0 - - A 0x03CD36 0F:CD26: AA        .byte $AA   ; 
- D 0 - - A 0x03CD37 0F:CD27: AA        .byte $AA   ; 
- D 0 - - A 0x03CD38 0F:CD28: AA        .byte $AA   ; 
- D 0 - - A 0x03CD39 0F:CD29: AA        .byte $AA   ; 
- D 0 - - A 0x03CD3A 0F:CD2A: AA        .byte $AA   ; 
- D 0 - - A 0x03CD3B 0F:CD2B: AA        .byte $AA   ; 
- D 0 - - A 0x03CD3C 0F:CD2C: AA        .byte $AA   ; 
- D 0 - - A 0x03CD3D 0F:CD2D: AA        .byte $AA   ; 
- D 0 - - A 0x03CD3E 0F:CD2E: AA        .byte $AA   ; 
- D 0 - - A 0x03CD3F 0F:CD2F: AA        .byte $AA   ; 
- D 0 - - A 0x03CD40 0F:CD30: AA        .byte $AA   ; 
- D 0 - - A 0x03CD41 0F:CD31: AA        .byte $AA   ; 
- D 0 - - A 0x03CD42 0F:CD32: AA        .byte $AA   ; 
- D 0 - - A 0x03CD43 0F:CD33: AA        .byte $AA   ; 
- D 0 - - A 0x03CD44 0F:CD34: AA        .byte $AA   ; 
- D 0 - - A 0x03CD45 0F:CD35: AA        .byte $AA   ; 
- D 0 - - A 0x03CD46 0F:CD36: AA        .byte $AA   ; 
- D 0 - - A 0x03CD47 0F:CD37: AA        .byte $AA   ; 
- D 0 - - A 0x03CD48 0F:CD38: AA        .byte $AA   ; 
- D 0 - - A 0x03CD49 0F:CD39: AA        .byte $AA   ; 
- D 0 - - A 0x03CD4A 0F:CD3A: AA        .byte $AA   ; 
- D 0 - - A 0x03CD4B 0F:CD3B: AA        .byte $AA   ; 
- D 0 - - A 0x03CD4C 0F:CD3C: AA        .byte $AA   ; 
- D 0 - - A 0x03CD4D 0F:CD3D: AA        .byte $AA   ; 
- D 0 - - A 0x03CD4E 0F:CD3E: AA        .byte $AA   ; 
- D 0 - - A 0x03CD4F 0F:CD3F: AA        .byte $AA   ; 
- D 0 - - A 0x03CD50 0F:CD40: AC        .byte $AC   ; 
- D 0 - - A 0x03CD51 0F:CD41: AA        .byte $AA   ; 
- D 0 - - A 0x03CD52 0F:CD42: AA        .byte $AA   ; 
- D 0 - - A 0x03CD53 0F:CD43: AA        .byte $AA   ; 
- D 0 - - A 0x03CD54 0F:CD44: AA        .byte $AA   ; 
- D 0 - - A 0x03CD55 0F:CD45: AA        .byte $AA   ; 
- D 0 - - A 0x03CD56 0F:CD46: AA        .byte $AA   ; 
- D 0 - - A 0x03CD57 0F:CD47: AA        .byte $AA   ; 
- D 0 - - A 0x03CD58 0F:CD48: AA        .byte $AA   ; 
- D 0 - - A 0x03CD59 0F:CD49: AA        .byte $AA   ; 
- D 0 - - A 0x03CD5A 0F:CD4A: AA        .byte $AA   ; 
- D 0 - - A 0x03CD5B 0F:CD4B: AA        .byte $AA   ; 
- D 0 - - A 0x03CD5C 0F:CD4C: AA        .byte $AA   ; 
- D 0 - - A 0x03CD5D 0F:CD4D: AA        .byte $AA   ; 
- D 0 - - A 0x03CD5E 0F:CD4E: AA        .byte $AA   ; 
- D 0 - - A 0x03CD5F 0F:CD4F: AA        .byte $AA   ; 
- D 0 - - A 0x03CD60 0F:CD50: AA        .byte $AA   ; 
- D 0 - - A 0x03CD61 0F:CD51: AA        .byte $AA   ; 
- D 0 - - A 0x03CD62 0F:CD52: AA        .byte $AA   ; 
- D 0 - - A 0x03CD63 0F:CD53: AA        .byte $AA   ; 
- D 0 - - A 0x03CD64 0F:CD54: AA        .byte $AA   ; 
- D 0 - - A 0x03CD65 0F:CD55: AA        .byte $AA   ; 
- D 0 - - A 0x03CD66 0F:CD56: AA        .byte $AA   ; 
- D 0 - - A 0x03CD67 0F:CD57: AA        .byte $AA   ; 
- D 0 - - A 0x03CD68 0F:CD58: AA        .byte $AA   ; 
- D 0 - - A 0x03CD69 0F:CD59: AA        .byte $AA   ; 
- D 0 - - A 0x03CD6A 0F:CD5A: AA        .byte $AA   ; 
- D 0 - - A 0x03CD6B 0F:CD5B: AC        .byte $AC   ; 
- D 0 - - A 0x03CD6C 0F:CD5C: AA        .byte $AA   ; 
- D 0 - - A 0x03CD6D 0F:CD5D: AA        .byte $AA   ; 
- D 0 - - A 0x03CD6E 0F:CD5E: AA        .byte $AA   ; 
- D 0 - - A 0x03CD6F 0F:CD5F: AA        .byte $AA   ; 
- D 0 - - A 0x03CD70 0F:CD60: AA        .byte $AA   ; 
- D 0 - - A 0x03CD71 0F:CD61: AA        .byte $AA   ; 
- D 0 - - A 0x03CD72 0F:CD62: AA        .byte $AA   ; 
- D 0 - - A 0x03CD73 0F:CD63: AA        .byte $AA   ; 
- D 0 - - A 0x03CD74 0F:CD64: AA        .byte $AA   ; 
- D 0 - - A 0x03CD75 0F:CD65: AA        .byte $AA   ; 
- D 0 - - A 0x03CD76 0F:CD66: AA        .byte $AA   ; 
- D 0 - - A 0x03CD77 0F:CD67: AA        .byte $AA   ; 
- D 0 - - A 0x03CD78 0F:CD68: AA        .byte $AA   ; 
- D 0 - - A 0x03CD79 0F:CD69: AA        .byte $AA   ; 
- D 0 - - A 0x03CD7A 0F:CD6A: AA        .byte $AA   ; 
- D 0 - - A 0x03CD7B 0F:CD6B: AA        .byte $AA   ; 
- D 0 - - A 0x03CD7C 0F:CD6C: AA        .byte $AA   ; 
- D 0 - - A 0x03CD7D 0F:CD6D: B2        .byte $B2   ; 
- D 0 - - A 0x03CD7E 0F:CD6E: AA        .byte $AA   ; 
- D 0 - - A 0x03CD7F 0F:CD6F: AA        .byte $AA   ; 
- D 0 - - A 0x03CD80 0F:CD70: AA        .byte $AA   ; 
- D 0 - - A 0x03CD81 0F:CD71: AA        .byte $AA   ; 
- D 0 - - A 0x03CD82 0F:CD72: AA        .byte $AA   ; 
- D 0 - - A 0x03CD83 0F:CD73: A9        .byte $A9   ; 
- D 0 - - A 0x03CD84 0F:CD74: AC        .byte $AC   ; 
- D 0 - - A 0x03CD85 0F:CD75: AA        .byte $AA   ; 
- D 0 - - A 0x03CD86 0F:CD76: AA        .byte $AA   ; 
- D 0 - - A 0x03CD87 0F:CD77: D2        .byte $D2   ; 
- D 0 - - A 0x03CD88 0F:CD78: AA        .byte $AA   ; 
- D 0 - - A 0x03CD89 0F:CD79: AA        .byte $AA   ; 
- D 0 - - A 0x03CD8A 0F:CD7A: B8        .byte $B8   ; 
- D 0 - - A 0x03CD8B 0F:CD7B: AA        .byte $AA   ; 
- D 0 - - A 0x03CD8C 0F:CD7C: 2A        .byte $2A   ; 
- D 0 - - A 0x03CD8D 0F:CD7D: AE        .byte $AE   ; 
- D 0 - - A 0x03CD8E 0F:CD7E: AA        .byte $AA   ; 
- D 0 - - A 0x03CD8F 0F:CD7F: AA        .byte $AA   ; 
- D 0 - - A 0x03CD90 0F:CD80: 9A        .byte $9A   ; 
- D 0 - - A 0x03CD91 0F:CD81: B8        .byte $B8   ; 
- D 0 - - A 0x03CD92 0F:CD82: 2A        .byte $2A   ; 
- D 0 - - A 0x03CD93 0F:CD83: 9B        .byte $9B   ; 
- D 0 - - A 0x03CD94 0F:CD84: 2C        .byte $2C   ; 
- D 0 - - A 0x03CD95 0F:CD85: 4B        .byte $4B   ; 
- D 0 - - A 0x03CD96 0F:CD86: AB        .byte $AB   ; 
- D 0 - - A 0x03CD97 0F:CD87: A2        .byte $A2   ; 
- D 0 - - A 0x03CD98 0F:CD88: 6D        .byte $6D   ; 
- D 0 - - A 0x03CD99 0F:CD89: 8A        .byte $8A   ; 
- D 0 - - A 0x03CD9A 0F:CD8A: 3E        .byte $3E   ; 
- D 0 - - A 0x03CD9B 0F:CD8B: 5C        .byte $5C   ; 
- D 0 - - A 0x03CD9C 0F:CD8C: 96        .byte $96   ; 
- D 0 - - A 0x03CD9D 0F:CD8D: E2        .byte $E2   ; 
- D 0 - - A 0x03CD9E 0F:CD8E: 29        .byte $29   ; 
- D 0 - - A 0x03CD9F 0F:CD8F: 72        .byte $72   ; 
- D 0 - - A 0x03CDA0 0F:CD90: 3C        .byte $3C   ; 
- D 0 - - A 0x03CDA1 0F:CD91: AE        .byte $AE   ; 
- D 0 - - A 0x03CDA2 0F:CD92: 2C        .byte $2C   ; 
- D 0 - - A 0x03CDA3 0F:CD93: 97        .byte $97   ; 
- D 0 - - A 0x03CDA4 0F:CD94: 97        .byte $97   ; 
- D 0 - - A 0x03CDA5 0F:CD95: 01        .byte $01   ; 
- D 0 - - A 0x03CDA6 0F:CD96: 63        .byte $63   ; 
- D 0 - - A 0x03CDA7 0F:CD97: F2        .byte $F2   ; 
- D 0 - - A 0x03CDA8 0F:CD98: 0F        .byte $0F   ; 
- D 0 - - A 0x03CDA9 0F:CD99: F8        .byte $F8   ; 
- D 0 - - A 0x03CDAA 0F:CD9A: D6        .byte $D6   ; 
- D 0 - - A 0x03CDAB 0F:CD9B: 38        .byte $38   ; 
- D 0 - - A 0x03CDAC 0F:CD9C: 47        .byte $47   ; 
- D 0 - - A 0x03CDAD 0F:CD9D: 30        .byte $30   ; 
- D 0 - - A 0x03CDAE 0F:CD9E: BA        .byte $BA   ; 
- D 0 - - A 0x03CDAF 0F:CD9F: 6E        .byte $6E   ; 
- D 0 - - A 0x03CDB0 0F:CDA0: 92        .byte $92   ; 
- D 0 - - A 0x03CDB1 0F:CDA1: FC        .byte $FC   ; 
- D 0 - - A 0x03CDB2 0F:CDA2: D2        .byte $D2   ; 
- D 0 - - A 0x03CDB3 0F:CDA3: 33        .byte $33   ; 
- D 0 - - A 0x03CDB4 0F:CDA4: 00        .byte $00   ; 
- D 0 - - A 0x03CDB5 0F:CDA5: FE        .byte $FE   ; 
- D 0 - - A 0x03CDB6 0F:CDA6: 0D        .byte $0D   ; 
- D 0 - - A 0x03CDB7 0F:CDA7: DA        .byte $DA   ; 
- D 0 - - A 0x03CDB8 0F:CDA8: EC        .byte $EC   ; 
- D 0 - - A 0x03CDB9 0F:CDA9: F9        .byte $F9   ; 
- D 0 - - A 0x03CDBA 0F:CDAA: 01        .byte $01   ; 
- D 0 - - A 0x03CDBB 0F:CDAB: 80        .byte $80   ; 
- D 0 - - A 0x03CDBC 0F:CDAC: FF        .byte $FF   ; 
- D 0 - - A 0x03CDBD 0F:CDAD: 20        .byte $20   ; 
- D 0 - - A 0x03CDBE 0F:CDAE: D5        .byte $D5   ; 
- D 0 - - A 0x03CDBF 0F:CDAF: AF        .byte $AF   ; 
- D 0 - - A 0x03CDC0 0F:CDB0: FD        .byte $FD   ; 
- D 0 - - A 0x03CDC1 0F:CDB1: 00        .byte $00   ; 
- D 0 - - A 0x03CDC2 0F:CDB2: F8        .byte $F8   ; 
- D 0 - - A 0x03CDC3 0F:CDB3: 03        .byte $03   ; 
- D 0 - - A 0x03CDC4 0F:CDB4: F0        .byte $F0   ; 
- D 0 - - A 0x03CDC5 0F:CDB5: 17        .byte $17   ; 
- D 0 - - A 0x03CDC6 0F:CDB6: FE        .byte $FE   ; 
- D 0 - - A 0x03CDC7 0F:CDB7: 07        .byte $07   ; 
- D 0 - - A 0x03CDC8 0F:CDB8: 80        .byte $80   ; 
- D 0 - - A 0x03CDC9 0F:CDB9: 7F        .byte $7F   ; 
- D 0 - - A 0x03CDCA 0F:CDBA: 40        .byte $40   ; 
- D 0 - - A 0x03CDCB 0F:CDBB: F4        .byte $F4   ; 
- D 0 - - A 0x03CDCC 0F:CDBC: 5F        .byte $5F   ; 
- D 0 - - A 0x03CDCD 0F:CDBD: 7E        .byte $7E   ; 
- D 0 - - A 0x03CDCE 0F:CDBE: 00        .byte $00   ; 
- D 0 - - A 0x03CDCF 0F:CDBF: FE        .byte $FE   ; 
- D 0 - - A 0x03CDD0 0F:CDC0: 00        .byte $00   ; 
- D 0 - - A 0x03CDD1 0F:CDC1: D2        .byte $D2   ; 
- D 0 - - A 0x03CDD2 0F:CDC2: 7F        .byte $7F   ; 
- D 0 - - A 0x03CDD3 0F:CDC3: F8        .byte $F8   ; 
- D 0 - - A 0x03CDD4 0F:CDC4: 01        .byte $01   ; 
- D 0 - - A 0x03CDD5 0F:CDC5: FE        .byte $FE   ; 
- D 0 - - A 0x03CDD6 0F:CDC6: 00        .byte $00   ; 
- D 0 - - A 0x03CDD7 0F:CDC7: 84        .byte $84   ; 
- D 0 - - A 0x03CDD8 0F:CDC8: FF        .byte $FF   ; 
- D 0 - - A 0x03CDD9 0F:CDC9: FB        .byte $FB   ; 
- D 0 - - A 0x03CDDA 0F:CDCA: 01        .byte $01   ; 
- D 0 - - A 0x03CDDB 0F:CDCB: F8        .byte $F8   ; 
- D 0 - - A 0x03CDDC 0F:CDCC: 03        .byte $03   ; 
- D 0 - - A 0x03CDDD 0F:CDCD: 98        .byte $98   ; 
- D 0 - - A 0x03CDDE 0F:CDCE: FF        .byte $FF   ; 
- D 0 - - A 0x03CDDF 0F:CDCF: F0        .byte $F0   ; 
- D 0 - - A 0x03CDE0 0F:CDD0: 01        .byte $01   ; 
- D 0 - - A 0x03CDE1 0F:CDD1: FC        .byte $FC   ; 
- D 0 - - A 0x03CDE2 0F:CDD2: 03        .byte $03   ; 
- D 0 - - A 0x03CDE3 0F:CDD3: B8        .byte $B8   ; 
- D 0 - - A 0x03CDE4 0F:CDD4: 7F        .byte $7F   ; 
- D 0 - - A 0x03CDE5 0F:CDD5: 78        .byte $78   ; 
- D 0 - - A 0x03CDE6 0F:CDD6: 00        .byte $00   ; 
- D 0 - - A 0x03CDE7 0F:CDD7: FE        .byte $FE   ; 
- D 0 - - A 0x03CDE8 0F:CDD8: 03        .byte $03   ; 
- D 0 - - A 0x03CDE9 0F:CDD9: E0        .byte $E0   ; 
- D 0 - - A 0x03CDEA 0F:CDDA: 7F        .byte $7F   ; 
- D 0 - - A 0x03CDEB 0F:CDDB: 3C        .byte $3C   ; 
- D 0 - - A 0x03CDEC 0F:CDDC: 00        .byte $00   ; 
- D 0 - - A 0x03CDED 0F:CDDD: FF        .byte $FF   ; 
- D 0 - - A 0x03CDEE 0F:CDDE: 00        .byte $00   ; 
- D 0 - - A 0x03CDEF 0F:CDDF: F8        .byte $F8   ; 
- D 0 - - A 0x03CDF0 0F:CDE0: 3F        .byte $3F   ; 
- D 0 - - A 0x03CDF1 0F:CDE1: 0E        .byte $0E   ; 
- D 0 - - A 0x03CDF2 0F:CDE2: E0        .byte $E0   ; 
- D 0 - - A 0x03CDF3 0F:CDE3: 3F        .byte $3F   ; 
- D 0 - - A 0x03CDF4 0F:CDE4: 80        .byte $80   ; 
- D 0 - - A 0x03CDF5 0F:CDE5: FD        .byte $FD   ; 
- D 0 - - A 0x03CDF6 0F:CDE6: C7        .byte $C7   ; 
- D 0 - - A 0x03CDF7 0F:CDE7: 03        .byte $03   ; 
- D 0 - - A 0x03CDF8 0F:CDE8: F8        .byte $F8   ; 
- D 0 - - A 0x03CDF9 0F:CDE9: 07        .byte $07   ; 
- D 0 - - A 0x03CDFA 0F:CDEA: C0        .byte $C0   ; 
- D 0 - - A 0x03CDFB 0F:CDEB: FF        .byte $FF   ; 
- D 0 - - A 0x03CDFC 0F:CDEC: 71        .byte $71   ; 
- D 0 - - A 0x03CDFD 0F:CDED: 00        .byte $00   ; 
- D 0 - - A 0x03CDFE 0F:CDEE: FF        .byte $FF   ; 
- D 0 - - A 0x03CDFF 0F:CDEF: 00        .byte $00   ; 
- D 0 - - A 0x03CE00 0F:CDF0: F0        .byte $F0   ; 
- D 0 - - A 0x03CE01 0F:CDF1: 7F        .byte $7F   ; 
- D 0 - - A 0x03CE02 0F:CDF2: 0E        .byte $0E   ; 
- D 0 - - A 0x03CE03 0F:CDF3: E0        .byte $E0   ; 
- D 0 - - A 0x03CE04 0F:CDF4: 3F        .byte $3F   ; 
- D 0 - - A 0x03CE05 0F:CDF5: 00        .byte $00   ; 
- D 0 - - A 0x03CE06 0F:CDF6: FF        .byte $FF   ; 
- D 0 - - A 0x03CE07 0F:CDF7: EF        .byte $EF   ; 
- D 0 - - A 0x03CE08 0F:CDF8: 00        .byte $00   ; 
- D 0 - - A 0x03CE09 0F:CDF9: FC        .byte $FC   ; 
- D 0 - - A 0x03CE0A 0F:CDFA: 01        .byte $01   ; 
- D 0 - - A 0x03CE0B 0F:CDFB: E0        .byte $E0   ; 
- D 0 - - A 0x03CE0C 0F:CDFC: FF        .byte $FF   ; 
- D 0 - - A 0x03CE0D 0F:CDFD: 1F        .byte $1F   ; 
- D 0 - - A 0x03CE0E 0F:CDFE: C0        .byte $C0   ; 
- D 0 - - A 0x03CE0F 0F:CDFF: 1F        .byte $1F   ; 
- D 0 - - A 0x03CE10 0F:CE00: 00        .byte $00   ; 
- D 0 - - A 0x03CE11 0F:CE01: FF        .byte $FF   ; 
- D 0 - - A 0x03CE12 0F:CE02: F7        .byte $F7   ; 
- D 0 - - A 0x03CE13 0F:CE03: 00        .byte $00   ; 
- D 0 - - A 0x03CE14 0F:CE04: FC        .byte $FC   ; 
- D 0 - - A 0x03CE15 0F:CE05: 20        .byte $20   ; 
- D 0 - - A 0x03CE16 0F:CE06: E0        .byte $E0   ; 
- D 0 - - A 0x03CE17 0F:CE07: BF        .byte $BF   ; 
- D 0 - - A 0x03CE18 0F:CE08: 0F        .byte $0F   ; 
- D 0 - - A 0x03CE19 0F:CE09: E0        .byte $E0   ; 
- D 0 - - A 0x03CE1A 0F:CE0A: 0F        .byte $0F   ; 
- D 0 - - A 0x03CE1B 0F:CE0B: 00        .byte $00   ; 
- D 0 - - A 0x03CE1C 0F:CE0C: FF        .byte $FF   ; 
- D 0 - - A 0x03CE1D 0F:CE0D: E3        .byte $E3   ; 
- D 0 - - A 0x03CE1E 0F:CE0E: 00        .byte $00   ; 
- D 0 - - A 0x03CE1F 0F:CE0F: 7F        .byte $7F   ; 
- D 0 - - A 0x03CE20 0F:CE10: 00        .byte $00   ; 
- D 0 - - A 0x03CE21 0F:CE11: FF        .byte $FF   ; 
- D 0 - - A 0x03CE22 0F:CE12: 0F        .byte $0F   ; 
- D 0 - - A 0x03CE23 0F:CE13: 0F        .byte $0F   ; 
- D 0 - - A 0x03CE24 0F:CE14: F8        .byte $F8   ; 
- D 0 - - A 0x03CE25 0F:CE15: 07        .byte $07   ; 
- D 0 - - A 0x03CE26 0F:CE16: E0        .byte $E0   ; 
- D 0 - - A 0x03CE27 0F:CE17: FF        .byte $FF   ; 
- D 0 - - A 0x03CE28 0F:CE18: 70        .byte $70   ; 
- D 0 - - A 0x03CE29 0F:CE19: C0        .byte $C0   ; 
- D 0 - - A 0x03CE2A 0F:CE1A: 3F        .byte $3F   ; 
- D 0 - - A 0x03CE2B 0F:CE1B: 00        .byte $00   ; 
- D 0 - - A 0x03CE2C 0F:CE1C: FC        .byte $FC   ; 
- D 0 - - A 0x03CE2D 0F:CE1D: 0F        .byte $0F   ; 
- D 0 - - A 0x03CE2E 0F:CE1E: 07        .byte $07   ; 
- D 0 - - A 0x03CE2F 0F:CE1F: FC        .byte $FC   ; 
- D 0 - - A 0x03CE30 0F:CE20: 03        .byte $03   ; 
- D 0 - - A 0x03CE31 0F:CE21: E0        .byte $E0   ; 
- D 0 - - A 0x03CE32 0F:CE22: 7F        .byte $7F   ; 
- D 0 - - A 0x03CE33 0F:CE23: 38        .byte $38   ; 
- D 0 - - A 0x03CE34 0F:CE24: E0        .byte $E0   ; 
- D 0 - - A 0x03CE35 0F:CE25: 1F        .byte $1F   ; 
- D 0 - - A 0x03CE36 0F:CE26: 80        .byte $80   ; 
- D 0 - - A 0x03CE37 0F:CE27: FF        .byte $FF   ; 
- D 0 - - A 0x03CE38 0F:CE28: 83        .byte $83   ; 
- D 0 - - A 0x03CE39 0F:CE29: 03        .byte $03   ; 
- D 0 - - A 0x03CE3A 0F:CE2A: FF        .byte $FF   ; 
- D 0 - - A 0x03CE3B 0F:CE2B: 01        .byte $01   ; 
- D 0 - - A 0x03CE3C 0F:CE2C: FB        .byte $FB   ; 
- D 0 - - A 0x03CE3D 0F:CE2D: 3E        .byte $3E   ; 
- D 0 - - A 0x03CE3E 0F:CE2E: 00        .byte $00   ; 
- D 0 - - A 0x03CE3F 0F:CE2F: F0        .byte $F0   ; 
- D 0 - - A 0x03CE40 0F:CE30: 1F        .byte $1F   ; 
- D 0 - - A 0x03CE41 0F:CE31: E0        .byte $E0   ; 
- D 0 - - A 0x03CE42 0F:CE32: 7F        .byte $7F   ; 
- D 0 - - A 0x03CE43 0F:CE33: F8        .byte $F8   ; 
- D 0 - - A 0x03CE44 0F:CE34: 00        .byte $00   ; 
- D 0 - - A 0x03CE45 0F:CE35: FF        .byte $FF   ; 
- D 0 - - A 0x03CE46 0F:CE36: 80        .byte $80   ; 
- D 0 - - A 0x03CE47 0F:CE37: E4        .byte $E4   ; 
- D 0 - - A 0x03CE48 0F:CE38: 3F        .byte $3F   ; 
- D 0 - - A 0x03CE49 0F:CE39: 1C        .byte $1C   ; 
- D 0 - - A 0x03CE4A 0F:CE3A: F0        .byte $F0   ; 
- D 0 - - A 0x03CE4B 0F:CE3B: 3F        .byte $3F   ; 
- D 0 - - A 0x03CE4C 0F:CE3C: 00        .byte $00   ; 
- D 0 - - A 0x03CE4D 0F:CE3D: FE        .byte $FE   ; 
- D 0 - - A 0x03CE4E 0F:CE3E: 03        .byte $03   ; 
- D 0 - - A 0x03CE4F 0F:CE3F: 1E        .byte $1E   ; 
- D 0 - - A 0x03CE50 0F:CE40: F8        .byte $F8   ; 
- D 0 - - A 0x03CE51 0F:CE41: 07        .byte $07   ; 
- D 0 - - A 0x03CE52 0F:CE42: FC        .byte $FC   ; 
- D 0 - - A 0x03CE53 0F:CE43: 0F        .byte $0F   ; 
- D 0 - - A 0x03CE54 0F:CE44: 00        .byte $00   ; 
- D 0 - - A 0x03CE55 0F:CE45: FC        .byte $FC   ; 
- D 0 - - A 0x03CE56 0F:CE46: 07        .byte $07   ; 
- D 0 - - A 0x03CE57 0F:CE47: F0        .byte $F0   ; 
- D 0 - - A 0x03CE58 0F:CE48: FF        .byte $FF   ; 
- D 0 - - A 0x03CE59 0F:CE49: 00        .byte $00   ; 
- D 0 - - A 0x03CE5A 0F:CE4A: 3F        .byte $3F   ; 
- D 0 - - A 0x03CE5B 0F:CE4B: E0        .byte $E0   ; 
- D 0 - - A 0x03CE5C 0F:CE4C: 07        .byte $07   ; 
- D 0 - - A 0x03CE5D 0F:CE4D: F8        .byte $F8   ; 
- D 0 - - A 0x03CE5E 0F:CE4E: 0F        .byte $0F   ; 
- D 0 - - A 0x03CE5F 0F:CE4F: F0        .byte $F0   ; 
- D 0 - - A 0x03CE60 0F:CE50: 07        .byte $07   ; 
- D 0 - - A 0x03CE61 0F:CE51: FC        .byte $FC   ; 
- D 0 - - A 0x03CE62 0F:CE52: F0        .byte $F0   ; 
- D 0 - - A 0x03CE63 0F:CE53: 01        .byte $01   ; 
- D 0 - - A 0x03CE64 0F:CE54: FC        .byte $FC   ; 
- D 0 - - A 0x03CE65 0F:CE55: 0F        .byte $0F   ; 
- D 0 - - A 0x03CE66 0F:CE56: 7E        .byte $7E   ; 
- D 0 - - A 0x03CE67 0F:CE57: E0        .byte $E0   ; 
- D 0 - - A 0x03CE68 0F:CE58: 1F        .byte $1F   ; 
- D 0 - - A 0x03CE69 0F:CE59: C0        .byte $C0   ; 
- D 0 - - A 0x03CE6A 0F:CE5A: 3F        .byte $3F   ; 
- D 0 - - A 0x03CE6B 0F:CE5B: E0        .byte $E0   ; 
- D 0 - - A 0x03CE6C 0F:CE5C: 01        .byte $01   ; 
- D 0 - - A 0x03CE6D 0F:CE5D: FF        .byte $FF   ; 
- D 0 - - A 0x03CE6E 0F:CE5E: 80        .byte $80   ; 
- D 0 - - A 0x03CE6F 0F:CE5F: E3        .byte $E3   ; 
- D 0 - - A 0x03CE70 0F:CE60: 87        .byte $87   ; 
- D 0 - - A 0x03CE71 0F:CE61: 7E        .byte $7E   ; 
- D 0 - - A 0x03CE72 0F:CE62: 80        .byte $80   ; 
- D 0 - - A 0x03CE73 0F:CE63: 3F        .byte $3F   ; 
- D 0 - - A 0x03CE74 0F:CE64: E0        .byte $E0   ; 
- D 0 - - A 0x03CE75 0F:CE65: 0F        .byte $0F   ; 
- D 0 - - A 0x03CE76 0F:CE66: EE        .byte $EE   ; 
- D 0 - - A 0x03CE77 0F:CE67: 07        .byte $07   ; 
- D 0 - - A 0x03CE78 0F:CE68: F0        .byte $F0   ; 
- D 0 - - A 0x03CE79 0F:CE69: 03        .byte $03   ; 
- D 0 - - A 0x03CE7A 0F:CE6A: FC        .byte $FC   ; 
- D 0 - - A 0x03CE7B 0F:CE6B: E0        .byte $E0   ; 
- D 0 - - A 0x03CE7C 0F:CE6C: 07        .byte $07   ; 
- D 0 - - A 0x03CE7D 0F:CE6D: FC        .byte $FC   ; 
- D 0 - - A 0x03CE7E 0F:CE6E: 03        .byte $03   ; 
- D 0 - - A 0x03CE7F 0F:CE6F: 7E        .byte $7E   ; 
- D 0 - - A 0x03CE80 0F:CE70: 80        .byte $80   ; 
- D 0 - - A 0x03CE81 0F:CE71: 7F        .byte $7F   ; 
- D 0 - - A 0x03CE82 0F:CE72: E3        .byte $E3   ; 
- D 0 - - A 0x03CE83 0F:CE73: 01        .byte $01   ; 
- D 0 - - A 0x03CE84 0F:CE74: FE        .byte $FE   ; 
- D 0 - - A 0x03CE85 0F:CE75: 01        .byte $01   ; 
- D 0 - - A 0x03CE86 0F:CE76: FE        .byte $FE   ; 
- D 0 - - A 0x03CE87 0F:CE77: 18        .byte $18   ; 
- D 0 - - A 0x03CE88 0F:CE78: 20        .byte $20   ; 
- D 0 - - A 0x03CE89 0F:CE79: FF        .byte $FF   ; 
- D 0 - - A 0x03CE8A 0F:CE7A: 01        .byte $01   ; 
- D 0 - - A 0x03CE8B 0F:CE7B: 7E        .byte $7E   ; 
- D 0 - - A 0x03CE8C 0F:CE7C: F0        .byte $F0   ; 
- D 0 - - A 0x03CE8D 0F:CE7D: 07        .byte $07   ; 
- D 0 - - A 0x03CE8E 0F:CE7E: FE        .byte $FE   ; 
- D 0 - - A 0x03CE8F 0F:CE7F: 80        .byte $80   ; 
- D 0 - - A 0x03CE90 0F:CE80: 3F        .byte $3F   ; 
- D 0 - - A 0x03CE91 0F:CE81: E0        .byte $E0   ; 
- D 0 - - A 0x03CE92 0F:CE82: 1F        .byte $1F   ; 
- D 0 - - A 0x03CE93 0F:CE83: 60        .byte $60   ; 
- D 0 - - A 0x03CE94 0F:CE84: E0        .byte $E0   ; 
- D 0 - - A 0x03CE95 0F:CE85: 3F        .byte $3F   ; 
- D 0 - - A 0x03CE96 0F:CE86: 01        .byte $01   ; 
- D 0 - - A 0x03CE97 0F:CE87: FF        .byte $FF   ; 
- D 0 - - A 0x03CE98 0F:CE88: 07        .byte $07   ; 
- D 0 - - A 0x03CE99 0F:CE89: F8        .byte $F8   ; 
- D 0 - - A 0x03CE9A 0F:CE8A: 03        .byte $03   ; 
- D 0 - - A 0x03CE9B 0F:CE8B: 1E        .byte $1E   ; 
- D 0 - - A 0x03CE9C 0F:CE8C: FC        .byte $FC   ; 
- D 0 - - A 0x03CE9D 0F:CE8D: 00        .byte $00   ; 
- D 0 - - A 0x03CE9E 0F:CE8E: FF        .byte $FF   ; 
- D 0 - - A 0x03CE9F 0F:CE8F: 81        .byte $81   ; 
- D 0 - - A 0x03CEA0 0F:CE90: 0B        .byte $0B   ; 
- D 0 - - A 0x03CEA1 0F:CE91: FC        .byte $FC   ; 
- D 0 - - A 0x03CEA2 0F:CE92: 83        .byte $83   ; 
- D 0 - - A 0x03CEA3 0F:CE93: 0F        .byte $0F   ; 
- D 0 - - A 0x03CEA4 0F:CE94: F8        .byte $F8   ; 
- D 0 - - A 0x03CEA5 0F:CE95: 03        .byte $03   ; 
- D 0 - - A 0x03CEA6 0F:CE96: FF        .byte $FF   ; 
- D 0 - - A 0x03CEA7 0F:CE97: C0        .byte $C0   ; 
- D 0 - - A 0x03CEA8 0F:CE98: 03        .byte $03   ; 
- D 0 - - A 0x03CEA9 0F:CE99: FC        .byte $FC   ; 
- D 0 - - A 0x03CEAA 0F:CE9A: 03        .byte $03   ; 
- D 0 - - A 0x03CEAB 0F:CE9B: FC        .byte $FC   ; 
- D 0 - - A 0x03CEAC 0F:CE9C: 03        .byte $03   ; 
- D 0 - - A 0x03CEAD 0F:CE9D: FC        .byte $FC   ; 
- D 0 - - A 0x03CEAE 0F:CE9E: 0F        .byte $0F   ; 
- D 0 - - A 0x03CEAF 0F:CE9F: 10        .byte $10   ; 
- D 0 - - A 0x03CEB0 0F:CEA0: 7F        .byte $7F   ; 
- D 0 - - A 0x03CEB1 0F:CEA1: 81        .byte $81   ; 
- D 0 - - A 0x03CEB2 0F:CEA2: 3F        .byte $3F   ; 
- D 0 - - A 0x03CEB3 0F:CEA3: E8        .byte $E8   ; 
- D 0 - - A 0x03CEB4 0F:CEA4: 03        .byte $03   ; 
- D 0 - - A 0x03CEB5 0F:CEA5: FE        .byte $FE   ; 
- D 0 - - A 0x03CEB6 0F:CEA6: 01        .byte $01   ; 
- D 0 - - A 0x03CEB7 0F:CEA7: F8        .byte $F8   ; 
- D 0 - - A 0x03CEB8 0F:CEA8: 2F        .byte $2F   ; 
- D 0 - - A 0x03CEB9 0F:CEA9: F0        .byte $F0   ; 
- D 0 - - A 0x03CEBA 0F:CEAA: 2B        .byte $2B   ; 
- D 0 - - A 0x03CEBB 0F:CEAB: 07        .byte $07   ; 
- D 0 - - A 0x03CEBC 0F:CEAC: F0        .byte $F0   ; 
- D 0 - - A 0x03CEBD 0F:CEAD: 1F        .byte $1F   ; 
- D 0 - - A 0x03CEBE 0F:CEAE: F0        .byte $F0   ; 
- D 0 - - A 0x03CEBF 0F:CEAF: 07        .byte $07   ; 
- D 0 - - A 0x03CEC0 0F:CEB0: A5        .byte $A5   ; 
- D 0 - - A 0x03CEC1 0F:CEB1: 1F        .byte $1F   ; 
- D 0 - - A 0x03CEC2 0F:CEB2: E8        .byte $E8   ; 
- D 0 - - A 0x03CEC3 0F:CEB3: 82        .byte $82   ; 
- D 0 - - A 0x03CEC4 0F:CEB4: 7F        .byte $7F   ; 
- D 0 - - A 0x03CEC5 0F:CEB5: 00        .byte $00   ; 
- D 0 - - A 0x03CEC6 0F:CEB6: FF        .byte $FF   ; 
- D 0 - - A 0x03CEC7 0F:CEB7: C0        .byte $C0   ; 
- D 0 - - A 0x03CEC8 0F:CEB8: 1F        .byte $1F   ; 
- D 0 - - A 0x03CEC9 0F:CEB9: E0        .byte $E0   ; 
- D 0 - - A 0x03CECA 0F:CEBA: 0F        .byte $0F   ; 
- D 0 - - A 0x03CECB 0F:CEBB: F8        .byte $F8   ; 
- D 0 - - A 0x03CECC 0F:CEBC: A9        .byte $A9   ; 
- D 0 - - A 0x03CECD 0F:CEBD: 1A        .byte $1A   ; 
- D 0 - - A 0x03CECE 0F:CEBE: FE        .byte $FE   ; 
- D 0 - - A 0x03CECF 0F:CEBF: 00        .byte $00   ; 
- D 0 - - A 0x03CED0 0F:CEC0: FF        .byte $FF   ; 
- D 0 - - A 0x03CED1 0F:CEC1: 00        .byte $00   ; 
- D 0 - - A 0x03CED2 0F:CEC2: 7F        .byte $7F   ; 
- D 0 - - A 0x03CED3 0F:CEC3: C4        .byte $C4   ; 
- D 0 - - A 0x03CED4 0F:CEC4: 6A        .byte $6A   ; 
- D 0 - - A 0x03CED5 0F:CEC5: 09        .byte $09   ; 
- D 0 - - A 0x03CED6 0F:CEC6: FC        .byte $FC   ; 
- D 0 - - A 0x03CED7 0F:CEC7: 03        .byte $03   ; 
- D 0 - - A 0x03CED8 0F:CEC8: FE        .byte $FE   ; 
- D 0 - - A 0x03CED9 0F:CEC9: E0        .byte $E0   ; 
- D 0 - - A 0x03CEDA 0F:CECA: 23        .byte $23   ; 
- D 0 - - A 0x03CEDB 0F:CECB: F8        .byte $F8   ; 
- D 0 - - A 0x03CEDC 0F:CECC: 0F        .byte $0F   ; 
- D 0 - - A 0x03CEDD 0F:CECD: F0        .byte $F0   ; 
- D 0 - - A 0x03CEDE 0F:CECE: 07        .byte $07   ; 
- D 0 - - A 0x03CEDF 0F:CECF: 9E        .byte $9E   ; 
- D 0 - - A 0x03CEE0 0F:CED0: 78        .byte $78   ; 
- D 0 - - A 0x03CEE1 0F:CED1: 83        .byte $83   ; 
- D 0 - - A 0x03CEE2 0F:CED2: FE        .byte $FE   ; 
- D 0 - - A 0x03CEE3 0F:CED3: 02        .byte $02   ; 
- D 0 - - A 0x03CEE4 0F:CED4: FC        .byte $FC   ; 
- D 0 - - A 0x03CEE5 0F:CED5: 02        .byte $02   ; 
- D 0 - - A 0x03CEE6 0F:CED6: 0F        .byte $0F   ; 
- D 0 - - A 0x03CEE7 0F:CED7: 3F        .byte $3F   ; 
- D 0 - - A 0x03CEE8 0F:CED8: 01        .byte $01   ; 
- D 0 - - A 0x03CEE9 0F:CED9: 7F        .byte $7F   ; 
- D 0 - - A 0x03CEEA 0F:CEDA: 80        .byte $80   ; 
- D 0 - - A 0x03CEEB 0F:CEDB: 7F        .byte $7F   ; 
- D 0 - - A 0x03CEEC 0F:CEDC: 0C        .byte $0C   ; 
- D 0 - - A 0x03CEED 0F:CEDD: DC        .byte $DC   ; 
- D 0 - - A 0x03CEEE 0F:CEDE: 3F        .byte $3F   ; 
- D 0 - - A 0x03CEEF 0F:CEDF: 20        .byte $20   ; 
- D 0 - - A 0x03CEF0 0F:CEE0: 6F        .byte $6F   ; 
- D 0 - - A 0x03CEF1 0F:CEE1: 4D        .byte $4D   ; 
- D 0 - - A 0x03CEF2 0F:CEE2: 6C        .byte $6C   ; 
- D 0 - - A 0x03CEF3 0F:CEE3: C0        .byte $C0   ; 
- D 0 - - A 0x03CEF4 0F:CEE4: 7F        .byte $7F   ; 
- D 0 - - A 0x03CEF5 0F:CEE5: C0        .byte $C0   ; 
- D 0 - - A 0x03CEF6 0F:CEE6: 8B        .byte $8B   ; 
- D 0 - - A 0x03CEF7 0F:CEE7: 3F        .byte $3F   ; 
- D 0 - - A 0x03CEF8 0F:CEE8: 80        .byte $80   ; 
- D 0 - - A 0x03CEF9 0F:CEE9: BF        .byte $BF   ; 
- D 0 - - A 0x03CEFA 0F:CEEA: 01        .byte $01   ; 
- D 0 - - A 0x03CEFB 0F:CEEB: BE        .byte $BE   ; 
- D 0 - - A 0x03CEFC 0F:CEEC: 85        .byte $85   ; 
- D 0 - - A 0x03CEFD 0F:CEED: 0F        .byte $0F   ; 
- D 0 - - A 0x03CEFE 0F:CEEE: EC        .byte $EC   ; 
- D 0 - - A 0x03CEFF 0F:CEEF: 8E        .byte $8E   ; 
- D 0 - - A 0x03CF00 0F:CEF0: AA        .byte $AA   ; 
- D 0 - - A 0x03CF01 0F:CEF1: 1E        .byte $1E   ; 
- D 0 - - A 0x03CF02 0F:CEF2: E0        .byte $E0   ; 
- D 0 - - A 0x03CF03 0F:CEF3: 2F        .byte $2F   ; 
- D 0 - - A 0x03CF04 0F:CEF4: F0        .byte $F0   ; 
- D 0 - - A 0x03CF05 0F:CEF5: E2        .byte $E2   ; 
- D 0 - - A 0x03CF06 0F:CEF6: 2D        .byte $2D   ; 
- D 0 - - A 0x03CF07 0F:CEF7: E0        .byte $E0   ; 
- D 0 - - A 0x03CF08 0F:CEF8: 77        .byte $77   ; 
- D 0 - - A 0x03CF09 0F:CEF9: 80        .byte $80   ; 
- D 0 - - A 0x03CF0A 0F:CEFA: 6F        .byte $6F   ; 
- D 0 - - A 0x03CF0B 0F:CEFB: A9        .byte $A9   ; 
- D 0 - - A 0x03CF0C 0F:CEFC: C1        .byte $C1   ; 
- D 0 - - A 0x03CF0D 0F:CEFD: CB        .byte $CB   ; 
- D 0 - - A 0x03CF0E 0F:CEFE: CA        .byte $CA   ; 
- D 0 - - A 0x03CF0F 0F:CEFF: 85        .byte $85   ; 
- D 0 - - A 0x03CF10 0F:CF00: 17        .byte $17   ; 
- D 0 - - A 0x03CF11 0F:CF01: F8        .byte $F8   ; 
- D 0 - - A 0x03CF12 0F:CF02: 0B        .byte $0B   ; 
- D 0 - - A 0x03CF13 0F:CF03: 7C        .byte $7C   ; 
- D 0 - - A 0x03CF14 0F:CF04: D1        .byte $D1   ; 
- D 0 - - A 0x03CF15 0F:CF05: AA        .byte $AA   ; 
- D 0 - - A 0x03CF16 0F:CF06: E8        .byte $E8   ; 
- D 0 - - A 0x03CF17 0F:CF07: 26        .byte $26   ; 
- D 0 - - A 0x03CF18 0F:CF08: EE        .byte $EE   ; 
- D 0 - - A 0x03CF19 0F:CF09: 05        .byte $05   ; 
- D 0 - - A 0x03CF1A 0F:CF0A: FC        .byte $FC   ; 
- D 0 - - A 0x03CF1B 0F:CF0B: 01        .byte $01   ; 
- D 0 - - A 0x03CF1C 0F:CF0C: 9F        .byte $9F   ; 
- D 0 - - A 0x03CF1D 0F:CF0D: C8        .byte $C8   ; 
- D 0 - - A 0x03CF1E 0F:CF0E: 0F        .byte $0F   ; 
- D 0 - - A 0x03CF1F 0F:CF0F: BA        .byte $BA   ; 
- D 0 - - A 0x03CF20 0F:CF10: 25        .byte $25   ; 
- D 0 - - A 0x03CF21 0F:CF11: BA        .byte $BA   ; 
- D 0 - - A 0x03CF22 0F:CF12: 2A        .byte $2A   ; 
- D 0 - - A 0x03CF23 0F:CF13: AE        .byte $AE   ; 
- D 0 - - A 0x03CF24 0F:CF14: 4A        .byte $4A   ; 
- D 0 - - A 0x03CF25 0F:CF15: AB        .byte $AB   ; 
- D 0 - - A 0x03CF26 0F:CF16: AA        .byte $AA   ; 
- D 0 - - A 0x03CF27 0F:CF17: 2A        .byte $2A   ; 
- D 0 - - A 0x03CF28 0F:CF18: 55        .byte $55   ; 
- D 0 - - A 0x03CF29 0F:CF19: 5B        .byte $5B   ; 
- D 0 - - A 0x03CF2A 0F:CF1A: 09        .byte $09   ; 
- D 0 - - A 0x03CF2B 0F:CF1B: 3F        .byte $3F   ; 
- D 0 - - A 0x03CF2C 0F:CF1C: F0        .byte $F0   ; 
- D 0 - - A 0x03CF2D 0F:CF1D: 0B        .byte $0B   ; 
- D 0 - - A 0x03CF2E 0F:CF1E: F8        .byte $F8   ; 
- D 0 - - A 0x03CF2F 0F:CF1F: 89        .byte $89   ; 
- D 0 - - A 0x03CF30 0F:CF20: 5B        .byte $5B   ; 
- D 0 - - A 0x03CF31 0F:CF21: F0        .byte $F0   ; 
- D 0 - - A 0x03CF32 0F:CF22: 96        .byte $96   ; 
- D 0 - - A 0x03CF33 0F:CF23: B8        .byte $B8   ; 
- D 0 - - A 0x03CF34 0F:CF24: AA        .byte $AA   ; 
- D 0 - - A 0x03CF35 0F:CF25: AA        .byte $AA   ; 
- D 0 - - A 0x03CF36 0F:CF26: E2        .byte $E2   ; 
- D 0 - - A 0x03CF37 0F:CF27: AA        .byte $AA   ; 
- D 0 - - A 0x03CF38 0F:CF28: D2        .byte $D2   ; 
- D 0 - - A 0x03CF39 0F:CF29: AA        .byte $AA   ; 
- D 0 - - A 0x03CF3A 0F:CF2A: B4        .byte $B4   ; 
- D 0 - - A 0x03CF3B 0F:CF2B: AA        .byte $AA   ; 
- D 0 - - A 0x03CF3C 0F:CF2C: AA        .byte $AA   ; 
- D 0 - - A 0x03CF3D 0F:CF2D: AA        .byte $AA   ; 
- D 0 - - A 0x03CF3E 0F:CF2E: AA        .byte $AA   ; 
- D 0 - - A 0x03CF3F 0F:CF2F: AA        .byte $AA   ; 
- D 0 - - A 0x03CF40 0F:CF30: AA        .byte $AA   ; 
- D 0 - - A 0x03CF41 0F:CF31: AA        .byte $AA   ; 
- D 0 - - A 0x03CF42 0F:CF32: AA        .byte $AA   ; 
- D 0 - - A 0x03CF43 0F:CF33: D2        .byte $D2   ; 
- D 0 - - A 0x03CF44 0F:CF34: AA        .byte $AA   ; 
- D 0 - - A 0x03CF45 0F:CF35: B2        .byte $B2   ; 
- D 0 - - A 0x03CF46 0F:CF36: AA        .byte $AA   ; 
- D 0 - - A 0x03CF47 0F:CF37: AA        .byte $AA   ; 
- D 0 - - A 0x03CF48 0F:CF38: AA        .byte $AA   ; 
- D 0 - - A 0x03CF49 0F:CF39: AA        .byte $AA   ; 
- D 0 - - A 0x03CF4A 0F:CF3A: AA        .byte $AA   ; 
- D 0 - - A 0x03CF4B 0F:CF3B: AA        .byte $AA   ; 
- D 0 - - A 0x03CF4C 0F:CF3C: AA        .byte $AA   ; 
- D 0 - - A 0x03CF4D 0F:CF3D: 8A        .byte $8A   ; 
- D 0 - - A 0x03CF4E 0F:CF3E: AB        .byte $AB   ; 
- D 0 - - A 0x03CF4F 0F:CF3F: AA        .byte $AA   ; 



.export _off002_0x03CF50_2D
_off002_0x03CF50_2D:
; !!! первый байт также относится к DMCP
- D 0 - - A 0x03CF50 0F:CF40: 85        .byte $85   ; 
- D 2 - I - 0x03CF51 0F:CF41: B8        .byte $B8   ; 
- D 2 - I - 0x03CF52 0F:CF42: E0        .byte $E0   ; 
- D 2 - I - 0x03CF53 0F:CF43: D5        .byte $D5   ; 
- D 2 - I - 0x03CF54 0F:CF44: E0        .byte $E0   ; 
- D 2 - I - 0x03CF55 0F:CF45: 8E        .byte $8E   ; 
- D 2 - I - 0x03CF56 0F:CF46: E0        .byte $E0   ; 
- D 2 - I - 0x03CF57 0F:CF47: A9        .byte $A9   ; 
- D 2 - I - 0x03CF58 0F:CF48: 02        .byte $02   ; 
- D 2 - I - 0x03CF59 0F:CF49: B8        .byte $B8   ; 
- D 2 - I - 0x03CF5A 0F:CF4A: E0        .byte $E0   ; 
- D 2 - I - 0x03CF5B 0F:CF4B: 6A        .byte $6A   ; 
- D 2 - I - 0x03CF5C 0F:CF4C: D0        .byte $D0   ; 
- D 2 - I - 0x03CF5D 0F:CF4D: 6A        .byte $6A   ; 
- D 2 - I - 0x03CF5E 0F:CF4E: C0        .byte $C0   ; 
- D 2 - I - 0x03CF5F 0F:CF4F: 6A        .byte $6A   ; 
- D 2 - I - 0x03CF60 0F:CF50: B0        .byte $B0   ; 
- D 2 - I - 0x03CF61 0F:CF51: 6A        .byte $6A   ; 
- D 2 - I - 0x03CF62 0F:CF52: A0        .byte $A0   ; 
- D 2 - I - 0x03CF63 0F:CF53: 6A        .byte $6A   ; 
- D 2 - I - 0x03CF64 0F:CF54: 90        .byte $90   ; 
- D 2 - I - 0x03CF65 0F:CF55: 6A        .byte $6A   ; 
- D 2 - I - 0x03CF66 0F:CF56: 80        .byte $80   ; 
- D 2 - I - 0x03CF67 0F:CF57: 6A        .byte $6A   ; 
- D 2 - I - 0x03CF68 0F:CF58: 70        .byte $70   ; 
- D 2 - I - 0x03CF69 0F:CF59: 6A        .byte $6A   ; 
- D 2 - I - 0x03CF6A 0F:CF5A: FF        .byte $FF   ; 



.export _off002_0x03CF6B_01
_off002_0x03CF6B_01:
- D 2 - I - 0x03CF6B 0F:CF5B: 11        .byte $11   ; 
- D 2 - I - 0x03CF6C 0F:CF5C: 82        .byte $82   ; 
- D 2 - I - 0x03CF6D 0F:CF5D: 11        .byte $11   ; 
- D 2 - I - 0x03CF6E 0F:CF5E: FF        .byte $FF   ; 



.export _off002_0x03CF6F_02
_off002_0x03CF6F_02:
- D 2 - I - 0x03CF6F 0F:CF5F: 11        .byte $11   ; 
- D 2 - I - 0x03CF70 0F:CF60: 82        .byte $82   ; 
- D 2 - I - 0x03CF71 0F:CF61: 05        .byte $05   ; 
- D 2 - I - 0x03CF72 0F:CF62: 61        .byte $61   ; 
- D 2 - I - 0x03CF73 0F:CF63: 51        .byte $51   ; 
- D 2 - I - 0x03CF74 0F:CF64: 41        .byte $41   ; 
- D 2 - I - 0x03CF75 0F:CF65: 31        .byte $31   ; 
- D 2 - I - 0x03CF76 0F:CF66: 21        .byte $21   ; 
- D 2 - I - 0x03CF77 0F:CF67: FF        .byte $FF   ; 



.export _off002_0x03CF78_03
_off002_0x03CF78_03:
- D 2 - I - 0x03CF78 0F:CF68: 11        .byte $11   ; 
- D 2 - I - 0x03CF79 0F:CF69: CE        .byte $CE   ; 
- D 2 - I - 0x03CF7A 0F:CF6A: 76        .byte $76   ; 
- D 2 - I - 0x03CF7B 0F:CF6B: 34        .byte $34   ; 
- D 2 - I - 0x03CF7C 0F:CF6C: 43        .byte $43   ; 
- D 2 - I - 0x03CF7D 0F:CF6D: 24        .byte $24   ; 
- D 2 - I - 0x03CF7E 0F:CF6E: 13        .byte $13   ; 
- D 2 - I - 0x03CF7F 0F:CF6F: 12        .byte $12   ; 
- D 2 - I - 0x03CF80 0F:CF70: 12        .byte $12   ; 
- D 2 - I - 0x03CF81 0F:CF71: FF        .byte $FF   ; 



.export _off002_0x03CF82_23
_off002_0x03CF82_23:
- D 2 - I - 0x03CF82 0F:CF72: D5        .byte $D5   ; 
- D 2 - I - 0x03CF83 0F:CF73: B3        .byte $B3   ; 
- D 2 - I - 0x03CF84 0F:CF74: A3        .byte $A3   ; 
- D 2 - I - 0x03CF85 0F:CF75: 00        .byte $00   ; 
- D 2 - I - 0x03CF86 0F:CF76: 0F        .byte $0F   ; 
- D 2 - I - 0x03CF87 0F:CF77: 72        .byte $72   ; 
- D 2 - I - 0x03CF88 0F:CF78: FA        .byte $FA   ; 
- D 2 - I - 0x03CF89 0F:CF79: 04        .byte $04   ; 
- D 2 - I - 0x03CF8A 0F:CF7A: B0        .byte $B0   ; 
- D 2 - I - 0x03CF8B 0F:CF7B: 1B        .byte $1B   ; 
- D 2 - I - 0x03CF8C 0F:CF7C: 80        .byte $80   ; 
- D 2 - I - 0x03CF8D 0F:CF7D: 10        .byte $10   ; 
- D 2 - I - 0x03CF8E 0F:CF7E: FA        .byte $FA   ; 
- D 2 - I - 0x03CF8F 0F:CF7F: FF        .byte $FF   ; 
- D 2 - I - 0x03CF90 0F:CF80: 03        .byte $03   ; 
- D 2 - I - 0x03CF91 0F:CF81: B3        .byte $B3   ; 
- D 2 - I - 0x03CF92 0F:CF82: 00        .byte $00   ; 
- D 2 - I - 0x03CF93 0F:CF83: E8        .byte $E8   ; 
- D 2 - I - 0x03CF94 0F:CF84: 05        .byte $05   ; 
- D 2 - I - 0x03CF95 0F:CF85: E3        .byte $E3   ; 
- D 2 - I - 0x03CF96 0F:CF86: 00        .byte $00   ; 
- D 2 - I - 0x03CF97 0F:CF87: 01        .byte $01   ; 
- D 2 - I - 0x03CF98 0F:CF88: 73        .byte $73   ; 
- D 2 - I - 0x03CF99 0F:CF89: 00        .byte $00   ; 
- D 2 - I - 0x03CF9A 0F:CF8A: E8        .byte $E8   ; 
- D 2 - I - 0x03CF9B 0F:CF8B: 0F        .byte $0F   ; 
- D 2 - I - 0x03CF9C 0F:CF8C: FA        .byte $FA   ; 
- D 2 - I - 0x03CF9D 0F:CF8D: 04        .byte $04   ; 
- D 2 - I - 0x03CF9E 0F:CF8E: B0        .byte $B0   ; 
- D 2 - I - 0x03CF9F 0F:CF8F: 1B        .byte $1B   ; 
- D 2 - I - 0x03CFA0 0F:CF90: 80        .byte $80   ; 
- D 2 - I - 0x03CFA1 0F:CF91: 80        .byte $80   ; 
- D 2 - I - 0x03CFA2 0F:CF92: FA        .byte $FA   ; 
- D 2 - I - 0x03CFA3 0F:CF93: FF        .byte $FF   ; 
- D 2 - I - 0x03CFA4 0F:CF94: 01        .byte $01   ; 
- D 2 - I - 0x03CFA5 0F:CF95: AF        .byte $AF   ; 
- D 2 - I - 0x03CFA6 0F:CF96: AE        .byte $AE   ; 
- D 2 - I - 0x03CFA7 0F:CF97: AD        .byte $AD   ; 
- D 2 - I - 0x03CFA8 0F:CF98: AC        .byte $AC   ; 
- D 2 - I - 0x03CFA9 0F:CF99: AB        .byte $AB   ; 
- D 2 - I - 0x03CFAA 0F:CF9A: 81        .byte $81   ; 
- D 2 - I - 0x03CFAB 0F:CF9B: 82        .byte $82   ; 
- D 2 - I - 0x03CFAC 0F:CF9C: 83        .byte $83   ; 
- D 2 - I - 0x03CFAD 0F:CF9D: 84        .byte $84   ; 
- D 2 - I - 0x03CFAE 0F:CF9E: 85        .byte $85   ; 
- D 2 - I - 0x03CFAF 0F:CF9F: 86        .byte $86   ; 
- D 2 - I - 0x03CFB0 0F:CFA0: 87        .byte $87   ; 
- D 2 - I - 0x03CFB1 0F:CFA1: 88        .byte $88   ; 
- D 2 - I - 0x03CFB2 0F:CFA2: 89        .byte $89   ; 
- D 2 - I - 0x03CFB3 0F:CFA3: 8A        .byte $8A   ; 
- D 2 - I - 0x03CFB4 0F:CFA4: 8B        .byte $8B   ; 
- D 2 - I - 0x03CFB5 0F:CFA5: 8C        .byte $8C   ; 
- D 2 - I - 0x03CFB6 0F:CFA6: 8D        .byte $8D   ; 
- D 2 - I - 0x03CFB7 0F:CFA7: 8E        .byte $8E   ; 
- D 2 - I - 0x03CFB8 0F:CFA8: 8F        .byte $8F   ; 
- D 2 - I - 0x03CFB9 0F:CFA9: 61        .byte $61   ; 
- D 2 - I - 0x03CFBA 0F:CFAA: 62        .byte $62   ; 
- D 2 - I - 0x03CFBB 0F:CFAB: 63        .byte $63   ; 
- D 2 - I - 0x03CFBC 0F:CFAC: 64        .byte $64   ; 
- D 2 - I - 0x03CFBD 0F:CFAD: 65        .byte $65   ; 
- D 2 - I - 0x03CFBE 0F:CFAE: 66        .byte $66   ; 
- D 2 - I - 0x03CFBF 0F:CFAF: 67        .byte $67   ; 
- D 2 - I - 0x03CFC0 0F:CFB0: 68        .byte $68   ; 
- D 2 - I - 0x03CFC1 0F:CFB1: 69        .byte $69   ; 
- D 2 - I - 0x03CFC2 0F:CFB2: 6A        .byte $6A   ; 
- D 2 - I - 0x03CFC3 0F:CFB3: 6B        .byte $6B   ; 
- D 2 - I - 0x03CFC4 0F:CFB4: 6C        .byte $6C   ; 
- D 2 - I - 0x03CFC5 0F:CFB5: 6D        .byte $6D   ; 
- D 2 - I - 0x03CFC6 0F:CFB6: 6E        .byte $6E   ; 
- D 2 - I - 0x03CFC7 0F:CFB7: 6F        .byte $6F   ; 
- D 2 - I - 0x03CFC8 0F:CFB8: 41        .byte $41   ; 
- D 2 - I - 0x03CFC9 0F:CFB9: 42        .byte $42   ; 
- D 2 - I - 0x03CFCA 0F:CFBA: 43        .byte $43   ; 
- D 2 - I - 0x03CFCB 0F:CFBB: 44        .byte $44   ; 
- D 2 - I - 0x03CFCC 0F:CFBC: 45        .byte $45   ; 
- D 2 - I - 0x03CFCD 0F:CFBD: 46        .byte $46   ; 
- D 2 - I - 0x03CFCE 0F:CFBE: 47        .byte $47   ; 
- D 2 - I - 0x03CFCF 0F:CFBF: 48        .byte $48   ; 
- D 2 - I - 0x03CFD0 0F:CFC0: 49        .byte $49   ; 
- D 2 - I - 0x03CFD1 0F:CFC1: 4A        .byte $4A   ; 
- D 2 - I - 0x03CFD2 0F:CFC2: 4B        .byte $4B   ; 
- D 2 - I - 0x03CFD3 0F:CFC3: 4C        .byte $4C   ; 
- D 2 - I - 0x03CFD4 0F:CFC4: 4D        .byte $4D   ; 
- D 2 - I - 0x03CFD5 0F:CFC5: 4E        .byte $4E   ; 
- D 2 - I - 0x03CFD6 0F:CFC6: 4F        .byte $4F   ; 
- D 2 - I - 0x03CFD7 0F:CFC7: 21        .byte $21   ; 
- D 2 - I - 0x03CFD8 0F:CFC8: 22        .byte $22   ; 
- D 2 - I - 0x03CFD9 0F:CFC9: 23        .byte $23   ; 
- D 2 - I - 0x03CFDA 0F:CFCA: 24        .byte $24   ; 
- D 2 - I - 0x03CFDB 0F:CFCB: 25        .byte $25   ; 
- D 2 - I - 0x03CFDC 0F:CFCC: 26        .byte $26   ; 
- D 2 - I - 0x03CFDD 0F:CFCD: 27        .byte $27   ; 
- D 2 - I - 0x03CFDE 0F:CFCE: 28        .byte $28   ; 
- D 2 - I - 0x03CFDF 0F:CFCF: 29        .byte $29   ; 
- D 2 - I - 0x03CFE0 0F:CFD0: 2A        .byte $2A   ; 
- D 2 - I - 0x03CFE1 0F:CFD1: 2B        .byte $2B   ; 
- D 2 - I - 0x03CFE2 0F:CFD2: 2C        .byte $2C   ; 
- D 2 - I - 0x03CFE3 0F:CFD3: 2D        .byte $2D   ; 
- D 2 - I - 0x03CFE4 0F:CFD4: 2E        .byte $2E   ; 
- D 2 - I - 0x03CFE5 0F:CFD5: 2F        .byte $2F   ; 
- D 2 - I - 0x03CFE6 0F:CFD6: 11        .byte $11   ; 
- D 2 - I - 0x03CFE7 0F:CFD7: 12        .byte $12   ; 
- D 2 - I - 0x03CFE8 0F:CFD8: 13        .byte $13   ; 
- D 2 - I - 0x03CFE9 0F:CFD9: 14        .byte $14   ; 
- D 2 - I - 0x03CFEA 0F:CFDA: 15        .byte $15   ; 
- D 2 - I - 0x03CFEB 0F:CFDB: 16        .byte $16   ; 
- D 2 - I - 0x03CFEC 0F:CFDC: 17        .byte $17   ; 
- D 2 - I - 0x03CFED 0F:CFDD: 18        .byte $18   ; 
- D 2 - I - 0x03CFEE 0F:CFDE: 19        .byte $19   ; 
- D 2 - I - 0x03CFEF 0F:CFDF: 1A        .byte $1A   ; 
- D 2 - I - 0x03CFF0 0F:CFE0: 1B        .byte $1B   ; 
- D 2 - I - 0x03CFF1 0F:CFE1: 1C        .byte $1C   ; 
- D 2 - I - 0x03CFF2 0F:CFE2: 1D        .byte $1D   ; 
- D 2 - I - 0x03CFF3 0F:CFE3: 1E        .byte $1E   ; 
- D 2 - I - 0x03CFF4 0F:CFE4: FF        .byte $FF   ; 



.export _off002_0x03CFF5_28
_off002_0x03CFF5_28:
.export _off002_0x03CFF5_29
_off002_0x03CFF5_29:
- D 2 - I - 0x03CFF5 0F:CFE5: 84        .byte $84   ; 
- D 2 - I - 0x03CFF6 0F:CFE6: 78        .byte $78   ; 
- D 2 - I - 0x03CFF7 0F:CFE7: 80        .byte $80   ; 
- D 2 - I - 0x03CFF8 0F:CFE8: 7F        .byte $7F   ; 
- D 2 - I - 0x03CFF9 0F:CFE9: 80        .byte $80   ; 
- D 2 - I - 0x03CFFA 0F:CFEA: 5F        .byte $5F   ; 
- D 2 - I - 0x03CFFB 0F:CFEB: 80        .byte $80   ; 
- D 2 - I - 0x03CFFC 0F:CFEC: 47        .byte $47   ; 
- D 2 - I - 0x03CFFD 0F:CFED: 80        .byte $80   ; 
- D 2 - I - 0x03CFFE 0F:CFEE: 35        .byte $35   ; 
- D 2 - I - 0x03CFFF 0F:CFEF: 30        .byte $30   ; 
- D 2 - I - 0x03D000 0F:CFF0: 7F        .byte $7F   ; 
- D 2 - I - 0x03D001 0F:CFF1: 30        .byte $30   ; 
- D 2 - I - 0x03D002 0F:CFF2: 5F        .byte $5F   ; 
- D 2 - I - 0x03D003 0F:CFF3: 30        .byte $30   ; 
- D 2 - I - 0x03D004 0F:CFF4: 47        .byte $47   ; 
- D 2 - I - 0x03D005 0F:CFF5: 30        .byte $30   ; 
- D 2 - I - 0x03D006 0F:CFF6: 35        .byte $35   ; 
- D 2 - I - 0x03D007 0F:CFF7: 10        .byte $10   ; 
- D 2 - I - 0x03D008 0F:CFF8: 7F        .byte $7F   ; 
- D 2 - I - 0x03D009 0F:CFF9: 10        .byte $10   ; 
- D 2 - I - 0x03D00A 0F:CFFA: 5F        .byte $5F   ; 
- D 2 - I - 0x03D00B 0F:CFFB: 10        .byte $10   ; 
- D 2 - I - 0x03D00C 0F:CFFC: 47        .byte $47   ; 
- D 2 - I - 0x03D00D 0F:CFFD: 10        .byte $10   ; 
- D 2 - I - 0x03D00E 0F:CFFE: 35        .byte $35   ; 
- D 2 - I - 0x03D00F 0F:CFFF: FF        .byte $FF   ; 



sub_D008_RTS:
C - - - - - 0x03D018 0F:D008: 60        RTS



sub_D009:
C - - - - - 0x03D019 0F:D009: A2 8E     LDX #$8E
C - - - - - 0x03D01B 0F:D00B: D0 02     BNE bra_D00F



sub_D00D:
C - - - - - 0x03D01D 0F:D00D: A2 A4     LDX #$A4
bra_D00F:
C - - - - - 0x03D01F 0F:D00F: A9 00     LDA #$00
bra_D011:
C - - - - - 0x03D021 0F:D011: 95 00     STA ram_0000,X
C - - - - - 0x03D023 0F:D013: E8        INX
C - - - - - 0x03D024 0F:D014: E0 E0     CPX #$E0
C - - - - - 0x03D026 0F:D016: D0 F9     BNE bra_D011
C - - - - - 0x03D028 0F:D018: A2 00     LDX #$00
bra_D01A:
C - - - - - 0x03D02A 0F:D01A: 9D 00 04  STA ram_0400,X
C - - - - - 0x03D02D 0F:D01D: 9D 00 05  STA ram_0500,X
C - - - - - 0x03D030 0F:D020: 9D 00 06  STA ram_0600,X
C - - - - - 0x03D033 0F:D023: 9D 00 07  STA ram_0700,X
C - - - - - 0x03D036 0F:D026: E8        INX
C - - - - - 0x03D037 0F:D027: D0 F1     BNE bra_D01A
C - - - - - 0x03D039 0F:D029: A2 C0     LDX #$C0
bra_D02B:
C - - - - - 0x03D03B 0F:D02B: 9D 00 03  STA ram_0300,X
C - - - - - 0x03D03E 0F:D02E: E8        INX
C - - - - - 0x03D03F 0F:D02F: D0 FA     BNE bra_D02B
C - - - - - 0x03D041 0F:D031: 60        RTS



sub_D032:
.export sub_0x03D042
sub_0x03D042:
C - - - - - 0x03D042 0F:D032: 84 04     STY ram_0004
C - - - - - 0x03D044 0F:D034: 85 05     STA ram_0005
C - - - - - 0x03D046 0F:D036: 0A        ASL
C - - - - - 0x03D047 0F:D037: 84 03     STY ram_0003
C - - - - - 0x03D049 0F:D039: A8        TAY
C - - - - - 0x03D04A 0F:D03A: C8        INY
C - - - - - 0x03D04B 0F:D03B: 68        PLA
C - - - - - 0x03D04C 0F:D03C: 85 00     STA ram_0000
C - - - - - 0x03D04E 0F:D03E: 68        PLA
C - - - - - 0x03D04F 0F:D03F: 85 01     STA ram_0001
C - - - - - 0x03D051 0F:D041: B1 00     LDA (ram_0000),Y
C - - - - - 0x03D053 0F:D043: 85 02     STA ram_0002
C - - - - - 0x03D055 0F:D045: C8        INY
C - - - - - 0x03D056 0F:D046: B1 00     LDA (ram_0000),Y
C - - - - - 0x03D058 0F:D048: A4 03     LDY ram_0003
C - - - - - 0x03D05A 0F:D04A: 85 03     STA ram_0003
C - - - - - 0x03D05C 0F:D04C: A5 04     LDA ram_0004
C - - - - - 0x03D05E 0F:D04E: 6C 02 00  JMP (ram_0002)



sub_D051:
C - - - - - 0x03D061 0F:D051: 18        CLC
C - - - - - 0x03D062 0F:D052: 75 00     ADC ram_0000,X
C - - - - - 0x03D064 0F:D054: 95 00     STA ram_0000,X
C - - - - - 0x03D066 0F:D056: 90 02     BCC bra_D05A_RTS
C - - - - - 0x03D068 0F:D058: F6 01     INC ram_0001,X
bra_D05A_RTS:
C - - - - - 0x03D06A 0F:D05A: 60        RTS
- - - - - - 0x03D06B 0F:D05B: 38        SEC
- - - - - - 0x03D06C 0F:D05C: 49 FF     EOR #$FF
- - - - - - 0x03D06E 0F:D05E: 75 00     ADC ram_0000,X
- - - - - - 0x03D070 0F:D060: 95 00     STA ram_0000,X
- - - - - - 0x03D072 0F:D062: B0 02     BCS bra_D066_RTS
- - - - - - 0x03D074 0F:D064: D6 01     DEC ram_0001,X
bra_D066_RTS:
- - - - - - 0x03D076 0F:D066: 60        RTS



sub_D067:
.export sub_0x03D077
sub_0x03D077:
.export loc_0x03D077
loc_0x03D077:
C D 2 - - - 0x03D077 0F:D067: 20 73 D0  JSR sub_D073
.export sub_0x03D07A
sub_0x03D07A:
C - - - - - 0x03D07A 0F:D06A: A9 00     LDA #$00
C - - - - - 0x03D07C 0F:D06C: 9D 80 04  STA ram_0480,X
C - - - - - 0x03D07F 0F:D06F: 9D 90 04  STA ram_0490,X
C - - - - - 0x03D082 0F:D072: 60        RTS



sub_D073:
.export sub_0x03D083
sub_0x03D083:
.export loc_0x03D083
loc_0x03D083:
C D 2 - - - 0x03D083 0F:D073: A9 00     LDA #$00
C - - - - - 0x03D085 0F:D075: 9D 60 04  STA ram_0460,X
C - - - - - 0x03D088 0F:D078: 9D 70 04  STA ram_0470,X
C - - - - - 0x03D08B 0F:D07B: 60        RTS



.export sub_0x03D08C
sub_0x03D08C:
.export loc_0x03D08C
loc_0x03D08C:
C D 2 - - - 0x03D08C 0F:D07C: B9 E7 D0  LDA tbl_D0E7,Y
C - - - - - 0x03D08F 0F:D07F: DD D0 05  CMP ram_05D0,X
C - - - - - 0x03D092 0F:D082: B0 03     BCS bra_D087
C - - - - - 0x03D094 0F:D084: 9D D0 05  STA ram_05D0,X
bra_D087:
C - - - - - 0x03D097 0F:D087: B9 B3 D0  LDA tbl_D0B3,Y
C - - - - - 0x03D09A 0F:D08A: 85 00     STA ram_0000
C - - - - - 0x03D09C 0F:D08C: DE C0 05  DEC ram_05C0,X
C - - - - - 0x03D09F 0F:D08F: 10 14     BPL bra_D0A5
C - - - - - 0x03D0A1 0F:D091: DE D0 05  DEC ram_05D0,X
C - - - - - 0x03D0A4 0F:D094: 10 06     BPL bra_D09C
C - - - - - 0x03D0A6 0F:D096: B9 E7 D0  LDA tbl_D0E7,Y
C - - - - - 0x03D0A9 0F:D099: 9D D0 05  STA ram_05D0,X
bra_D09C:
C - - - - - 0x03D0AC 0F:D09C: B9 CD D0  LDA tbl_D0CD,Y
C - - - - - 0x03D0AF 0F:D09F: 20 0E E1  JSR sub_E10E
C - - - - - 0x03D0B2 0F:D0A2: 9D C0 05  STA ram_05C0,X
bra_D0A5:
C - - - - - 0x03D0B5 0F:D0A5: 18        CLC
C - - - - - 0x03D0B6 0F:D0A6: A5 00     LDA ram_0000
C - - - - - 0x03D0B8 0F:D0A8: 7D D0 05  ADC ram_05D0,X
C - - - - - 0x03D0BB 0F:D0AB: A8        TAY
C - - - - - 0x03D0BC 0F:D0AC: B9 01 D1  LDA tbl_D101,Y
C - - - - - 0x03D0BF 0F:D0AF: 9D 00 04  STA ram_0400,X
C - - - - - 0x03D0C2 0F:D0B2: 60        RTS



tbl_D0B3:
- D 2 - - - 0x03D0C3 0F:D0B3: 00        .byte $00   ; 
- - - - - - 0x03D0C4 0F:D0B4: 03        .byte $03   ; 
- D 2 - - - 0x03D0C5 0F:D0B5: 0E        .byte $0E   ; 
- D 2 - - - 0x03D0C6 0F:D0B6: 12        .byte $12   ; 
- D 2 - - - 0x03D0C7 0F:D0B7: 15        .byte $15   ; 
- D 2 - - - 0x03D0C8 0F:D0B8: 1B        .byte $1B   ; 
- D 2 - - - 0x03D0C9 0F:D0B9: 21        .byte $21   ; 
- D 2 - - - 0x03D0CA 0F:D0BA: 25        .byte $25   ; 
- D 2 - - - 0x03D0CB 0F:D0BB: 25        .byte $25   ; 
- D 2 - - - 0x03D0CC 0F:D0BC: 0E        .byte $0E   ; 
- D 2 - - - 0x03D0CD 0F:D0BD: 29        .byte $29   ; 
- D 2 - - - 0x03D0CE 0F:D0BE: 33        .byte $33   ; 
- D 2 - - - 0x03D0CF 0F:D0BF: 2F        .byte $2F   ; 
- D 2 - - - 0x03D0D0 0F:D0C0: 33        .byte $33   ; 
- D 2 - - - 0x03D0D1 0F:D0C1: 37        .byte $37   ; 
- D 2 - - - 0x03D0D2 0F:D0C2: 3D        .byte $3D   ; 
- D 2 - - - 0x03D0D3 0F:D0C3: 41        .byte $41   ; 
- D 2 - - - 0x03D0D4 0F:D0C4: 45        .byte $45   ; 
- D 2 - - - 0x03D0D5 0F:D0C5: 49        .byte $49   ; 
- D 2 - - - 0x03D0D6 0F:D0C6: 4C        .byte $4C   ; 
- D 2 - - - 0x03D0D7 0F:D0C7: 50        .byte $50   ; 
- D 2 - - - 0x03D0D8 0F:D0C8: 54        .byte $54   ; 
- D 2 - - - 0x03D0D9 0F:D0C9: 59        .byte $59   ; 
- D 2 - - - 0x03D0DA 0F:D0CA: 5E        .byte $5E   ; 
- D 2 - - - 0x03D0DB 0F:D0CB: 61        .byte $61   ; 
- D 2 - - - 0x03D0DC 0F:D0CC: 65        .byte $65   ; 



tbl_D0CD:
- D 2 - - - 0x03D0DD 0F:D0CD: 0A        .byte $0A   ; 
- - - - - - 0x03D0DE 0F:D0CE: 02        .byte $02   ; 
- D 2 - - - 0x03D0DF 0F:D0CF: 08        .byte $08   ; 
- D 2 - - - 0x03D0E0 0F:D0D0: 03        .byte $03   ; 
- D 2 - - - 0x03D0E1 0F:D0D1: 05        .byte $05   ; 
- D 2 - - - 0x03D0E2 0F:D0D2: 05        .byte $05   ; 
- D 2 - - - 0x03D0E3 0F:D0D3: 07        .byte $07   ; 
- D 2 - - - 0x03D0E4 0F:D0D4: 07        .byte $07   ; 
- D 2 - - - 0x03D0E5 0F:D0D5: 06        .byte $06   ; 
- D 2 - - - 0x03D0E6 0F:D0D6: 06        .byte $06   ; 
- D 2 - - - 0x03D0E7 0F:D0D7: 06        .byte $06   ; 
- D 2 - - - 0x03D0E8 0F:D0D8: 08        .byte $08   ; 
- D 2 - - - 0x03D0E9 0F:D0D9: 0A        .byte $0A   ; 
- D 2 - - - 0x03D0EA 0F:D0DA: 0A        .byte $0A   ; 
- D 2 - - - 0x03D0EB 0F:D0DB: 08        .byte $08   ; 
- D 2 - - - 0x03D0EC 0F:D0DC: 06        .byte $06   ; 
- D 2 - - - 0x03D0ED 0F:D0DD: 08        .byte $08   ; 
- D 2 - - - 0x03D0EE 0F:D0DE: 08        .byte $08   ; 
- D 2 - - - 0x03D0EF 0F:D0DF: 03        .byte $03   ; 
- D 2 - - - 0x03D0F0 0F:D0E0: 06        .byte $06   ; 
- D 2 - - - 0x03D0F1 0F:D0E1: 06        .byte $06   ; 
- D 2 - - - 0x03D0F2 0F:D0E2: 06        .byte $06   ; 
- D 2 - - - 0x03D0F3 0F:D0E3: 06        .byte $06   ; 
- D 2 - - - 0x03D0F4 0F:D0E4: 04        .byte $04   ; 
- D 2 - - - 0x03D0F5 0F:D0E5: 03        .byte $03   ; 
- D 2 - - - 0x03D0F6 0F:D0E6: 06        .byte $06   ; 



tbl_D0E7:
- D 2 - - - 0x03D0F7 0F:D0E7: 02        .byte $02   ; 
- - - - - - 0x03D0F8 0F:D0E8: 0A        .byte $0A   ; 
- D 2 - - - 0x03D0F9 0F:D0E9: 03        .byte $03   ; 
- D 2 - - - 0x03D0FA 0F:D0EA: 02        .byte $02   ; 
- D 2 - - - 0x03D0FB 0F:D0EB: 05        .byte $05   ; 
- D 2 - - - 0x03D0FC 0F:D0EC: 05        .byte $05   ; 
- D 2 - - - 0x03D0FD 0F:D0ED: 03        .byte $03   ; 
- D 2 - - - 0x03D0FE 0F:D0EE: 03        .byte $03   ; 
- D 2 - - - 0x03D0FF 0F:D0EF: 03        .byte $03   ; 
- D 2 - - - 0x03D100 0F:D0F0: 03        .byte $03   ; 
- D 2 - - - 0x03D101 0F:D0F1: 05        .byte $05   ; 
- D 2 - - - 0x03D102 0F:D0F2: 03        .byte $03   ; 
- D 2 - - - 0x03D103 0F:D0F3: 03        .byte $03   ; 
- D 2 - - - 0x03D104 0F:D0F4: 03        .byte $03   ; 
- D 2 - - - 0x03D105 0F:D0F5: 05        .byte $05   ; 
- D 2 - - - 0x03D106 0F:D0F6: 03        .byte $03   ; 
- D 2 - - - 0x03D107 0F:D0F7: 03        .byte $03   ; 
- D 2 - - - 0x03D108 0F:D0F8: 03        .byte $03   ; 
- D 2 - - - 0x03D109 0F:D0F9: 02        .byte $02   ; 
- D 2 - - - 0x03D10A 0F:D0FA: 03        .byte $03   ; 
- D 2 - - - 0x03D10B 0F:D0FB: 03        .byte $03   ; 
- D 2 - - - 0x03D10C 0F:D0FC: 04        .byte $04   ; 
- D 2 - - - 0x03D10D 0F:D0FD: 04        .byte $04   ; 
- D 2 - - - 0x03D10E 0F:D0FE: 02        .byte $02   ; 
- D 2 - - - 0x03D10F 0F:D0FF: 03        .byte $03   ; 
- D 2 - - - 0x03D110 0F:D100: 03        .byte $03   ; 



tbl_D101:
- D 2 - - - 0x03D111 0F:D101: 8A        .byte $8A   ; 
- D 2 - - - 0x03D112 0F:D102: 89        .byte $89   ; 
- D 2 - - - 0x03D113 0F:D103: 88        .byte $88   ; 
- - - - - - 0x03D114 0F:D104: AF        .byte $AF   ; 
- - - - - - 0x03D115 0F:D105: AF        .byte $AF   ; 
- - - - - - 0x03D116 0F:D106: AE        .byte $AE   ; 
- - - - - - 0x03D117 0F:D107: AF        .byte $AF   ; 
- - - - - - 0x03D118 0F:D108: B0        .byte $B0   ; 
- - - - - - 0x03D119 0F:D109: AF        .byte $AF   ; 
- - - - - - 0x03D11A 0F:D10A: AE        .byte $AE   ; 
- - - - - - 0x03D11B 0F:D10B: AF        .byte $AF   ; 
- - - - - - 0x03D11C 0F:D10C: B0        .byte $B0   ; 
- - - - - - 0x03D11D 0F:D10D: AF        .byte $AF   ; 
- - - - - - 0x03D11E 0F:D10E: AE        .byte $AE   ; 
- D 2 - - - 0x03D11F 0F:D10F: 8E        .byte $8E   ; 
- D 2 - - - 0x03D120 0F:D110: 8D        .byte $8D   ; 
- D 2 - - - 0x03D121 0F:D111: 8C        .byte $8C   ; 
- D 2 - - - 0x03D122 0F:D112: 8B        .byte $8B   ; 
- D 2 - - - 0x03D123 0F:D113: AD        .byte $AD   ; 
- D 2 - - - 0x03D124 0F:D114: AC        .byte $AC   ; 
- D 2 - - - 0x03D125 0F:D115: AB        .byte $AB   ; 
- D 2 - - - 0x03D126 0F:D116: 87        .byte $87   ; 
- D 2 - - - 0x03D127 0F:D117: 86        .byte $86   ; 
- D 2 - - - 0x03D128 0F:D118: 83        .byte $83   ; 
- D 2 - - - 0x03D129 0F:D119: 85        .byte $85   ; 
- D 2 - - - 0x03D12A 0F:D11A: 84        .byte $84   ; 
- D 2 - - - 0x03D12B 0F:D11B: 83        .byte $83   ; 
- D 2 - - - 0x03D12C 0F:D11C: 86        .byte $86   ; 
- D 2 - - - 0x03D12D 0F:D11D: 85        .byte $85   ; 
- D 2 - - - 0x03D12E 0F:D11E: 82        .byte $82   ; 
- D 2 - - - 0x03D12F 0F:D11F: 84        .byte $84   ; 
- D 2 - - - 0x03D130 0F:D120: 83        .byte $83   ; 
- D 2 - - - 0x03D131 0F:D121: 82        .byte $82   ; 
- D 2 - - - 0x03D132 0F:D122: 8A        .byte $8A   ; 
- D 2 - - - 0x03D133 0F:D123: 89        .byte $89   ; 
- D 2 - - - 0x03D134 0F:D124: 88        .byte $88   ; 
- D 2 - - - 0x03D135 0F:D125: 87        .byte $87   ; 
- D 2 - - - 0x03D136 0F:D126: 8D        .byte $8D   ; 
- D 2 - - - 0x03D137 0F:D127: 8C        .byte $8C   ; 
- D 2 - - - 0x03D138 0F:D128: 8B        .byte $8B   ; 
- D 2 - - - 0x03D139 0F:D129: 80        .byte $80   ; 
- D 2 - - - 0x03D13A 0F:D12A: 85        .byte $85   ; 
- D 2 - - - 0x03D13B 0F:D12B: 87        .byte $87   ; 
- D 2 - - - 0x03D13C 0F:D12C: 86        .byte $86   ; 
- D 2 - - - 0x03D13D 0F:D12D: 85        .byte $85   ; 
- D 2 - - - 0x03D13E 0F:D12E: 84        .byte $84   ; 
- D 2 - - - 0x03D13F 0F:D12F: 83        .byte $83   ; 
- D 2 - - - 0x03D140 0F:D130: 89        .byte $89   ; 
- D 2 - - - 0x03D141 0F:D131: 8A        .byte $8A   ; 
- D 2 - - - 0x03D142 0F:D132: 89        .byte $89   ; 
- D 2 - - - 0x03D143 0F:D133: 88        .byte $88   ; 
- D 2 - - - 0x03D144 0F:D134: 82        .byte $82   ; 
- D 2 - - - 0x03D145 0F:D135: 8D        .byte $8D   ; 
- D 2 - - - 0x03D146 0F:D136: 8C        .byte $8C   ; 
- D 2 - - - 0x03D147 0F:D137: 8B        .byte $8B   ; 
- D 2 - - - 0x03D148 0F:D138: 87        .byte $87   ; 
- D 2 - - - 0x03D149 0F:D139: 86        .byte $86   ; 
- D 2 - - - 0x03D14A 0F:D13A: 83        .byte $83   ; 
- D 2 - - - 0x03D14B 0F:D13B: 85        .byte $85   ; 
- D 2 - - - 0x03D14C 0F:D13C: 84        .byte $84   ; 
- D 2 - - - 0x03D14D 0F:D13D: 83        .byte $83   ; 
- D 2 - - - 0x03D14E 0F:D13E: 88        .byte $88   ; 
- D 2 - - - 0x03D14F 0F:D13F: 89        .byte $89   ; 
- D 2 - - - 0x03D150 0F:D140: 8A        .byte $8A   ; 
- D 2 - - - 0x03D151 0F:D141: 8B        .byte $8B   ; 
- D 2 - - - 0x03D152 0F:D142: 8B        .byte $8B   ; 
- D 2 - - - 0x03D153 0F:D143: 8A        .byte $8A   ; 
- D 2 - - - 0x03D154 0F:D144: 89        .byte $89   ; 
- D 2 - - - 0x03D155 0F:D145: 88        .byte $88   ; 
- D 2 - - - 0x03D156 0F:D146: 88        .byte $88   ; 
- D 2 - - - 0x03D157 0F:D147: 89        .byte $89   ; 
- D 2 - - - 0x03D158 0F:D148: 8A        .byte $8A   ; 
- D 2 - - - 0x03D159 0F:D149: 8B        .byte $8B   ; 
- D 2 - - - 0x03D15A 0F:D14A: AD        .byte $AD   ; 
- D 2 - - - 0x03D15B 0F:D14B: AC        .byte $AC   ; 
- D 2 - - - 0x03D15C 0F:D14C: AB        .byte $AB   ; 
- D 2 - - - 0x03D15D 0F:D14D: A0        .byte $A0   ; 
- D 2 - - - 0x03D15E 0F:D14E: 9F        .byte $9F   ; 
- D 2 - - - 0x03D15F 0F:D14F: 9E        .byte $9E   ; 
- D 2 - - - 0x03D160 0F:D150: 9D        .byte $9D   ; 
- D 2 - - - 0x03D161 0F:D151: 9D        .byte $9D   ; 
- D 2 - - - 0x03D162 0F:D152: 9E        .byte $9E   ; 
- D 2 - - - 0x03D163 0F:D153: 9F        .byte $9F   ; 
- D 2 - - - 0x03D164 0F:D154: A0        .byte $A0   ; 
- - - - - - 0x03D165 0F:D155: AA        .byte $AA   ; 
- - - - - - 0x03D166 0F:D156: D8        .byte $D8   ; 
- D 2 - - - 0x03D167 0F:D157: C4        .byte $C4   ; 
- D 2 - - - 0x03D168 0F:D158: D7        .byte $D7   ; 
- D 2 - - - 0x03D169 0F:D159: D6        .byte $D6   ; 
- - - - - - 0x03D16A 0F:D15A: D6        .byte $D6   ; 
- - - - - - 0x03D16B 0F:D15B: D7        .byte $D7   ; 
- D 2 - - - 0x03D16C 0F:D15C: C4        .byte $C4   ; 
- D 2 - - - 0x03D16D 0F:D15D: B5        .byte $B5   ; 
- D 2 - - - 0x03D16E 0F:D15E: AA        .byte $AA   ; 
- D 2 - - - 0x03D16F 0F:D15F: C2        .byte $C2   ; 
- D 2 - - - 0x03D170 0F:D160: C1        .byte $C1   ; 
- D 2 - - - 0x03D171 0F:D161: C0        .byte $C0   ; 
- D 2 - - - 0x03D172 0F:D162: CB        .byte $CB   ; 
- D 2 - - - 0x03D173 0F:D163: CA        .byte $CA   ; 
- D 2 - - - 0x03D174 0F:D164: C9        .byte $C9   ; 
- D 2 - - - 0x03D175 0F:D165: C8        .byte $C8   ; 
- D 2 - - - 0x03D176 0F:D166: 81        .byte $81   ; 
- D 2 - - - 0x03D177 0F:D167: 82        .byte $82   ; 
- D 2 - - - 0x03D178 0F:D168: 81        .byte $81   ; 
- D 2 - - - 0x03D179 0F:D169: 80        .byte $80   ; 



loc_D16A:
.export sub_0x03D17A
sub_0x03D17A:
.export loc_0x03D17A
loc_0x03D17A:
C D 2 - - - 0x03D17A 0F:D16A: 85 01     STA ram_0001
C - - - - - 0x03D17C 0F:D16C: BD 10 05  LDA ram_0510,X
C - - - - - 0x03D17F 0F:D16F: 48        PHA
C - - - - - 0x03D180 0F:D170: 20 65 DD  JSR sub_DD65
C - - - - - 0x03D183 0F:D173: A5 01     LDA ram_0001
C - - - - - 0x03D185 0F:D175: 20 7D D1  JSR sub_D17D
C - - - - - 0x03D188 0F:D178: 68        PLA
C - - - - - 0x03D189 0F:D179: 9D 10 05  STA ram_0510,X
C - - - - - 0x03D18C 0F:D17C: 60        RTS



sub_D17D:
loc_D17D:
.export sub_0x03D18D
sub_0x03D18D:
.export loc_0x03D18D
loc_0x03D18D:
C D 2 - - - 0x03D18D 0F:D17D: 85 01     STA ram_0001
C - - - - - 0x03D18F 0F:D17F: 29 0F     AND #$0F
C - - - - - 0x03D191 0F:D181: 85 00     STA ram_0000
C - - - - - 0x03D193 0F:D183: A5 01     LDA ram_0001
C - - - - - 0x03D195 0F:D185: 29 F0     AND #$F0
C - - - - - 0x03D197 0F:D187: 85 01     STA ram_0001
C - - - - - 0x03D199 0F:D189: BD 10 05  LDA ram_0510,X
C - - - - - 0x03D19C 0F:D18C: 0A        ASL
loc_D18D:
C D 2 - - - 0x03D19D 0F:D18D: 10 11     BPL bra_D1A0
C - - - - - 0x03D19F 0F:D18F: A5 00     LDA ram_0000
C - - - - - 0x03D1A1 0F:D191: 49 FF     EOR #$FF
C - - - - - 0x03D1A3 0F:D193: 85 00     STA ram_0000
C - - - - - 0x03D1A5 0F:D195: A5 01     LDA ram_0001
C - - - - - 0x03D1A7 0F:D197: 20 FC D1  JSR sub_D1FC
C - - - - - 0x03D1AA 0F:D19A: 85 01     STA ram_0001
C - - - - - 0x03D1AC 0F:D19C: D0 02     BNE bra_D1A0
C - - - - - 0x03D1AE 0F:D19E: E6 00     INC ram_0000
bra_D1A0:
C - - - - - 0x03D1B0 0F:D1A0: A5 01     LDA ram_0001
C - - - - - 0x03D1B2 0F:D1A2: 9D 90 04  STA ram_0490,X
C - - - - - 0x03D1B5 0F:D1A5: A5 00     LDA ram_0000
C - - - - - 0x03D1B7 0F:D1A7: 9D 80 04  STA ram_0480,X
C - - - - - 0x03D1BA 0F:D1AA: AD 26 01  LDA ram_option_speed
C - - - - - 0x03D1BD 0F:D1AD: F0 26     BEQ bra_D1D5_RTS
C - - - - - 0x03D1BF 0F:D1AF: A5 95     LDA ram_0095
C - - - - - 0x03D1C1 0F:D1B1: C9 07     CMP #$07
C - - - - - 0x03D1C3 0F:D1B3: D0 20     BNE bra_D1D5_RTS
C - - - - - 0x03D1C5 0F:D1B5: 46 00     LSR ram_0000
C - - - - - 0x03D1C7 0F:D1B7: 66 01     ROR ram_0001
C - - - - - 0x03D1C9 0F:D1B9: BD 80 04  LDA ram_0480,X
C - - - - - 0x03D1CC 0F:D1BC: 10 06     BPL bra_D1C4
C - - - - - 0x03D1CE 0F:D1BE: A5 00     LDA ram_0000
C - - - - - 0x03D1D0 0F:D1C0: 09 C0     ORA #$C0
C - - - - - 0x03D1D2 0F:D1C2: 85 00     STA ram_0000
bra_D1C4:
C - - - - - 0x03D1D4 0F:D1C4: 18        CLC
C - - - - - 0x03D1D5 0F:D1C5: A5 01     LDA ram_0001
C - - - - - 0x03D1D7 0F:D1C7: 7D 90 04  ADC ram_0490,X
C - - - - - 0x03D1DA 0F:D1CA: 9D 90 04  STA ram_0490,X
C - - - - - 0x03D1DD 0F:D1CD: A5 00     LDA ram_0000
C - - - - - 0x03D1DF 0F:D1CF: 7D 80 04  ADC ram_0480,X
C - - - - - 0x03D1E2 0F:D1D2: 9D 80 04  STA ram_0480,X
bra_D1D5_RTS:
C - - - - - 0x03D1E5 0F:D1D5: 60        RTS



.export loc_0x03D1E6
loc_0x03D1E6:
C D 2 - - - 0x03D1E6 0F:D1D6: 85 01     STA ram_0001
C - - - - - 0x03D1E8 0F:D1D8: 29 0F     AND #$0F
C - - - - - 0x03D1EA 0F:D1DA: 85 00     STA ram_0000
C - - - - - 0x03D1EC 0F:D1DC: A5 01     LDA ram_0001
C - - - - - 0x03D1EE 0F:D1DE: 29 F0     AND #$F0
C - - - - - 0x03D1F0 0F:D1E0: 85 01     STA ram_0001
C - - - - - 0x03D1F2 0F:D1E2: BC 20 05  LDY ram_0520,X
C - - - - - 0x03D1F5 0F:D1E5: C0 01     CPY #$01
C - - - - - 0x03D1F7 0F:D1E7: D0 0B     BNE bra_D1F4
C - - - - - 0x03D1F9 0F:D1E9: 18        CLC
C - - - - - 0x03D1FA 0F:D1EA: 69 40     ADC #$40
C - - - - - 0x03D1FC 0F:D1EC: 85 01     STA ram_0001
C - - - - - 0x03D1FE 0F:D1EE: A5 00     LDA ram_0000
C - - - - - 0x03D200 0F:D1F0: 69 00     ADC #$00
C - - - - - 0x03D202 0F:D1F2: 85 00     STA ram_0000
bra_D1F4:
C - - - - - 0x03D204 0F:D1F4: B5 91     LDA ram_0091,X
C - - - - - 0x03D206 0F:D1F6: 4A        LSR
C - - - - - 0x03D207 0F:D1F7: 4A        LSR
C - - - - - 0x03D208 0F:D1F8: 6A        ROR
C - - - - - 0x03D209 0F:D1F9: 4C 8D D1  JMP loc_D18D



sub_D1FC:
loc_D1FC:
.export sub_0x03D20C
sub_0x03D20C:
C D 2 - - - 0x03D20C 0F:D1FC: 49 FF     EOR #$FF
C - - - - - 0x03D20E 0F:D1FE: 18        CLC
C - - - - - 0x03D20F 0F:D1FF: 69 01     ADC #$01
C - - - - - 0x03D211 0F:D201: 60        RTS



sub_D202_multiply_by_10h:
.export sub_0x03D212_multiply_by_10h
sub_0x03D212_multiply_by_10h:
C - - - - - 0x03D212 0F:D202: 0A        ASL
C - - - - - 0x03D213 0F:D203: 0A        ASL
C - - - - - 0x03D214 0F:D204: 0A        ASL
C - - - - - 0x03D215 0F:D205: 0A        ASL
C - - - - - 0x03D216 0F:D206: 60        RTS



sub_D207_divide_by_10h:
.export sub_0x03D217_divide_by_10h
sub_0x03D217_divide_by_10h:
.export loc_0x03D217_divide_by_10h
loc_0x03D217_divide_by_10h:
C D 2 - - - 0x03D217 0F:D207: 4A        LSR
C - - - - - 0x03D218 0F:D208: 4A        LSR
C - - - - - 0x03D219 0F:D209: 4A        LSR
C - - - - - 0x03D21A 0F:D20A: 4A        LSR
C - - - - - 0x03D21B 0F:D20B: 60        RTS



sub_D20C:
.export sub_0x03D21C
sub_0x03D21C:
C - - - - - 0x03D21C 0F:D20C: BD 40 04  LDA ram_0440,X
C - - - - - 0x03D21F 0F:D20F: 38        SEC
C - - - - - 0x03D220 0F:D210: F9 40 04  SBC ram_0440,Y
C - - - - - 0x03D223 0F:D213: B0 23     BCS bra_D238_RTS
C - - - - - 0x03D225 0F:D215: 4C FC D1  JMP loc_D1FC



.export sub_0x03D228
sub_0x03D228:
.export loc_0x03D228
loc_0x03D228:
C D 2 - - - 0x03D228 0F:D218: 20 26 D2  JSR sub_D226
C - - - - - 0x03D22B 0F:D21B: BD 10 05  LDA ram_0510,X
C - - - - - 0x03D22E 0F:D21E: 29 BF     AND #$BF
C - - - - - 0x03D230 0F:D220: 05 00     ORA ram_0000
C - - - - - 0x03D232 0F:D222: 9D 10 05  STA ram_0510,X
C - - - - - 0x03D235 0F:D225: 60        RTS



sub_D226:
C - - - - - 0x03D236 0F:D226: 8A        TXA
C - - - - - 0x03D237 0F:D227: 49 01     EOR #$01
C - - - - - 0x03D239 0F:D229: 29 01     AND #$01
C - - - - - 0x03D23B 0F:D22B: A8        TAY
C - - - - - 0x03D23C 0F:D22C: BD 40 04  LDA ram_0440,X
C - - - - - 0x03D23F 0F:D22F: D9 40 04  CMP ram_0440,Y
C - - - - - 0x03D242 0F:D232: A9 00     LDA #$00
C - - - - - 0x03D244 0F:D234: 6A        ROR
C - - - - - 0x03D245 0F:D235: 6A        ROR
C - - - - - 0x03D246 0F:D236: 85 00     STA ram_0000
bra_D238_RTS:
C - - - - - 0x03D248 0F:D238: 60        RTS



.export loc_0x03D266
loc_0x03D266:
C D 2 - - - 0x03D266 0F:D256: 20 5D D2  JSR sub_D25D
loc_D259:
sub_D259:
.export sub_0x03D269
sub_0x03D269:
.export loc_0x03D269
loc_0x03D269:
C D 2 - - - 0x03D269 0F:D259: 86 25     STX ram_0025
sub_D25B:
.export sub_0x03D26B
sub_0x03D26B:
.export loc_0x03D26B
loc_0x03D26B:
C D 2 - - - 0x03D26B 0F:D25B: A9 FF     LDA #$FF
sub_D25D:
.export sub_0x03D26D
sub_0x03D26D:
.export loc_0x03D26D
loc_0x03D26D:
C D 2 - - - 0x03D26D 0F:D25D: A6 25     LDX ram_0025
loc_D25F:
sub_D25F:
.export sub_0x03D26F
sub_0x03D26F:
C D 2 - - - 0x03D26F 0F:D25F: 9D 00 03  STA ram_0300,X
C - - - - - 0x03D272 0F:D262: E8        INX
C - - - - - 0x03D273 0F:D263: 86 25     STX ram_0025
C - - - - - 0x03D275 0F:D265: 60        RTS



sub_D266:
loc_D266:
.export sub_0x03D276
sub_0x03D276:
C D 2 - - - 0x03D276 0F:D266: 9D 00 03  STA ram_0300,X
C - - - - - 0x03D279 0F:D269: E8        INX
C - - - - - 0x03D27A 0F:D26A: 60        RTS



sub_D26B:
.export sub_0x03D27B
sub_0x03D27B:
C - - - - - 0x03D27B 0F:D26B: 48        PHA
C - - - - - 0x03D27C 0F:D26C: A9 01     LDA #$01
C - - - - - 0x03D27E 0F:D26E: 20 5D D2  JSR sub_D25D
C - - - - - 0x03D281 0F:D271: 98        TYA
C - - - - - 0x03D282 0F:D272: 20 66 D2  JSR sub_D266
C - - - - - 0x03D285 0F:D275: 68        PLA
C - - - - - 0x03D286 0F:D276: 4C 5F D2  JMP loc_D25F



sub_D279:
ofs_D279_04:
C - - J - - 0x03D289 0F:D279: 20 04 D3  JSR sub_D304
C - - - - - 0x03D28C 0F:D27C: A5 97     LDA ram_0097
C - - - - - 0x03D28E 0F:D27E: F0 01     BEQ bra_D281
C - - - - - 0x03D290 0F:D280: 60        RTS
bra_D281:
C - - - - - 0x03D291 0F:D281: A5 94     LDA ram_0094
C - - - - - 0x03D293 0F:D283: 20 32 D0  JSR sub_D032
- D 2 - I - 0x03D296 0F:D286: 90 D2     .word ofs_D290_00
- D 2 - I - 0x03D298 0F:D288: AD D2     .word ofs_D2AD_01
- D 2 - I - 0x03D29A 0F:D28A: BB D2     .word ofs_D2BB_02
- D 2 - I - 0x03D29C 0F:D28C: 48 F7     .word ofs_F748_03
- D 2 - I - 0x03D29E 0F:D28E: F7 D2     .word ofs_D2F7_04



ofs_D290_00:
C - - J - - 0x03D2A0 0F:D290: 20 09 DE  JSR sub_DE09
C - - - - - 0x03D2A3 0F:D293: A9 FF     LDA #$FF
C - - - - - 0x03D2A5 0F:D295: 85 98     STA ram_0098
C - - - - - 0x03D2A7 0F:D297: AC 25 01  LDY ram_option_difficulty
C - - - - - 0x03D2AA 0F:D29A: B9 FC BF  LDA tbl_0x02400C,Y
C - - - - - 0x03D2AD 0F:D29D: 85 31     STA ram_0031
C - - - - - 0x03D2AF 0F:D29F: A9 00     LDA #$00
C - - - - - 0x03D2B1 0F:D2A1: 85 89     STA ram_0089
bra_D2A3:
loc_D2A3:
C D 2 - - - 0x03D2B3 0F:D2A3: E6 94     INC ram_0094
C - - - - - 0x03D2B5 0F:D2A5: A9 00     LDA #$00
C - - - - - 0x03D2B7 0F:D2A7: 85 95     STA ram_0095
C - - - - - 0x03D2B9 0F:D2A9: 60        RTS



ofs_D2AD_01:
C - - J - - 0x03D2BD 0F:D2AD: A9 36     LDA #$36
C - - - - - 0x03D2BF 0F:D2AF: 20 00 F6  JSR sub_F600_prg_bank_0B
C - - - - - 0x03D2C2 0F:D2B2: 20 E0 BE  JSR sub_0x02FEF0
C - - - - - 0x03D2C5 0F:D2B5: EA        NOP
C - - - - - 0x03D2C6 0F:D2B6: E6 94     INC ram_0094
C - - - - - 0x03D2C8 0F:D2B8: 4C 88 FB  JMP loc_FB88



ofs_D2BB_02:
C - - J - - 0x03D2CB 0F:D2BB: A9 00     LDA #$00
C - - - - - 0x03D2CD 0F:D2BD: 8D 49 06  STA ram_0649
C - - - - - 0x03D2D0 0F:D2C0: 8D 4A 06  STA ram_064A
C - - - - - 0x03D2D3 0F:D2C3: A5 26     LDA ram_0026
C - - - - - 0x03D2D5 0F:D2C5: D0 0F     BNE bra_D2D6
C - - - - - 0x03D2D7 0F:D2C7: A5 2C     LDA ram_002C
C - - - - - 0x03D2D9 0F:D2C9: C9 04     CMP #$04
C - - - - - 0x03D2DB 0F:D2CB: F0 D6     BEQ bra_D2A3
C - - - - - 0x03D2DD 0F:D2CD: 20 F9 F6  JSR sub_F6F9
C - - - - - 0x03D2E0 0F:D2D0: AD 3E 06  LDA ram_063E
C - - - - - 0x03D2E3 0F:D2D3: F0 CE     BEQ bra_D2A3
C - - - - - 0x03D2E5 0F:D2D5: 60        RTS
bra_D2D6:
C - - - - - 0x03D2E6 0F:D2D6: A5 28     LDA ram_random_1
C - - - - - 0x03D2E8 0F:D2D8: 29 07     AND #$07
C - - - - - 0x03D2EA 0F:D2DA: A8        TAY
C - - - - - 0x03D2EB 0F:D2DB: B9 EE D2  LDA tbl_D2EE,Y
C - - - - - 0x03D2EE 0F:D2DE: 8D 50 05  STA ram_0550
C - - - - - 0x03D2F1 0F:D2E1: 85 A2     STA ram_00A2
C - - - - - 0x03D2F3 0F:D2E3: B9 EF D2  LDA tbl_D2EF,Y
C - - - - - 0x03D2F6 0F:D2E6: 8D 51 05  STA ram_0551
C - - - - - 0x03D2F9 0F:D2E9: 85 A3     STA ram_00A3
C - - - - - 0x03D2FB 0F:D2EB: 4C A3 D2  JMP loc_D2A3



tbl_D2EE:
- D 2 - - - 0x03D2FE 0F:D2EE: 00        .byte $00   ; 
tbl_D2EF:
- D 2 - - - 0x03D2FF 0F:D2EF: 03        .byte $03   ; 
- D 2 - - - 0x03D300 0F:D2F0: 05        .byte $05   ; 
- D 2 - - - 0x03D301 0F:D2F1: 04        .byte $04   ; 
- D 2 - - - 0x03D302 0F:D2F2: 01        .byte $01   ; 
- D 2 - - - 0x03D303 0F:D2F3: 06        .byte $06   ; 
- D 2 - - - 0x03D304 0F:D2F4: 02        .byte $02   ; 
- D 2 - - - 0x03D305 0F:D2F5: 03        .byte $03   ; 
- D 2 - - - 0x03D306 0F:D2F6: 06        .byte $06   ; 



ofs_D2F7_04:
C - - J - - 0x03D307 0F:D2F7: 20 87 E1  JSR sub_E187
C - - - - - 0x03D30A 0F:D2FA: 4C A1 E9  JMP loc_E9A1
- - - - - - 0x03D30D 0F:D2FD: A9 00     LDA #$00
- - - - - - 0x03D30F 0F:D2FF: 85 20     STA ram_0020
- - - - - - 0x03D311 0F:D301: 85 21     STA ram_0021
bra_D303_RTS:
C - - - - - 0x03D313 0F:D303: 60        RTS



sub_D304:
C - - - - - 0x03D314 0F:D304: A5 26     LDA ram_0026
C - - - - - 0x03D316 0F:D306: 05 98     ORA ram_0098
C - - - - - 0x03D318 0F:D308: 05 24     ORA ram_0024
C - - - - - 0x03D31A 0F:D30A: D0 F7     BNE bra_D303_RTS
C - - - - - 0x03D31C 0F:D30C: A4 8E     LDY ram_008E
C - - - - - 0x03D31E 0F:D30E: 20 24 EA  JSR sub_EA24
C - - - - - 0x03D321 0F:D311: F0 02     BEQ bra_D315
C - - - - - 0x03D323 0F:D313: A4 90     LDY ram_0090
bra_D315:
C - - - - - 0x03D325 0F:D315: 98        TYA
C - - - - - 0x03D326 0F:D316: A4 97     LDY ram_0097
C - - - - - 0x03D328 0F:D318: D0 0D     BNE bra_D327
C - - - - - 0x03D32A 0F:D31A: 29 10     AND #$10
C - - - - - 0x03D32C 0F:D31C: F0 11     BEQ bra_D32F_RTS
C - - - - - 0x03D32E 0F:D31E: A9 01     LDA #$01
bra_D320:
C - - - - - 0x03D330 0F:D320: 85 97     STA ram_0097
C - - - - - 0x03D332 0F:D322: A9 2D     LDA #$2D
C - - - - - 0x03D334 0F:D324: 4C 90 F6  JMP loc_F690
bra_D327:
C - - - - - 0x03D337 0F:D327: 29 10     AND #$10
C - - - - - 0x03D339 0F:D329: F0 D8     BEQ bra_D303_RTS
C - - - - - 0x03D33B 0F:D32B: A9 00     LDA #$00
C - - - - - 0x03D33D 0F:D32D: F0 F1     BEQ bra_D320
bra_D32F_RTS:
C - - - - - 0x03D33F 0F:D32F: 60        RTS



sub_D346:
loc_D346:
.export sub_0x03D356
sub_0x03D356:
.export loc_0x03D356
loc_0x03D356:
C D 2 - - - 0x03D356 0F:D346: 84 04     STY ram_0004
C - - - - - 0x03D358 0F:D348: 86 03     STX ram_0003
C - - - - - 0x03D35A 0F:D34A: 20 7C D3  JSR sub_D37C
C - - - - - 0x03D35D 0F:D34D: 85 00     STA ram_0000
C - - - - - 0x03D35F 0F:D34F: 84 01     STY ram_0001
                                        LDX ram_0003
C - - - - - 0x03D361 0F:D351: E8        INX
C - - - - - 0x03D362 0F:D352: 8A        TXA
C - - - - - 0x03D363 0F:D353: 0A        ASL
C - - - - - 0x03D364 0F:D354: 0A        ASL
C - - - - - 0x03D365 0F:D355: AA        TAX
C - - - - - 0x03D366 0F:D356: 20 E7 F5  JSR sub_F5E7_prg_bank_0B
                                        LDY #$02
bra_D359_loop:
                                        LDA (ram_0000),Y
                                        STA ram_064C,X
                                        DEX
                                        DEY
                                        BPL bra_D359_loop
                                        JSR sub_F617
C - - - - - 0x03D371 0F:D361: A9 0F     LDA #$0F
C - - - - - 0x03D373 0F:D363: 9D 4C 06  STA ram_064C,X
C - - - - - 0x03D376 0F:D366: A6 03     LDX ram_0003
C - - - - - 0x03D378 0F:D368: A4 04     LDY ram_0004
C - - - - - 0x03D37A 0F:D36A: BD 74 D3  LDA tbl_D374,X
C - - - - - 0x03D37D 0F:D36D: 0D 6D 06  ORA ram_066D
C - - - - - 0x03D380 0F:D370: 8D 6D 06  STA ram_066D
C - - - - - 0x03D383 0F:D373: 60        RTS

tbl_D35C:
    .word tbl_0x02F3FA
    .word tbl_0x02F1FA
    .word tbl_0x02EFFA



tbl_D374:
- D 2 - - - 0x03D384 0F:D374: 01        .byte $01   ; 00
- D 2 - - - 0x03D385 0F:D375: 02        .byte $02   ; 01
- D 2 - - - 0x03D386 0F:D376: 04        .byte $04   ; 02
- D 2 - - - 0x03D387 0F:D377: 08        .byte $08   ; 03
- D 2 - - - 0x03D388 0F:D378: 10        .byte $10   ; 04
- D 2 - - - 0x03D389 0F:D379: 20        .byte $20   ; 05
- D 2 - - - 0x03D38A 0F:D37A: 40        .byte $40   ; 06
- D 2 - - - 0x03D38B 0F:D37B: 80        .byte $80   ; 07



sub_D37C:
C D 2 - - - 0x03D38C 0F:D37C: 85 05     STA ram_0005
                                        LDA ram_option_skin
                                        AND #$07
                                        ASL
                                        TAX
                                        LDA ram_0005
C - - - - - 0x03D38E 0F:D37E: AC 93 D3  LDY tbl_D35C + 1,X
C - - - - - 0x03D391 0F:D381: 0A        ASL
C - - - - - 0x03D392 0F:D382: 20 8D D3  JSR sub_D38D
C - - - - - 0x03D395 0F:D385: 65 05     ADC ram_0005
C - - - - - 0x03D397 0F:D387: 20 8D D3  JSR sub_D38D
C - - - - - 0x03D39A 0F:D38A: 6D 92 D3  ADC tbl_D35C,X
sub_D38D:
C - - - - - 0x03D39D 0F:D38D: 90 02     BCC bra_D391_RTS
C - - - - - 0x03D39F 0F:D38F: 18        CLC
C - - - - - 0x03D3A0 0F:D390: C8        INY
bra_D391_RTS:
C - - - - - 0x03D3A1 0F:D391: 60        RTS



sub_D394:
.export sub_0x03D3A4
sub_0x03D3A4:
C - - - - - 0x03D3A4 0F:D394: 48        PHA
C - - - - - 0x03D3A5 0F:D395: 98        TYA
C - - - - - 0x03D3A6 0F:D396: 20 B0 D3  JSR sub_D3B0
C - - - - - 0x03D3A9 0F:D399: 68        PLA
C - - - - - 0x03D3AA 0F:D39A: A2 04     LDX #$04
bra_D39C:
C - - - - - 0x03D3AC 0F:D39C: A0 04     LDY #$04
C - - - - - 0x03D3AE 0F:D39E: 84 02     STY ram_0002
C - - - - - 0x03D3B0 0F:D3A0: 0A        ASL
C - - - - - 0x03D3B1 0F:D3A1: 0A        ASL
C - - - - - 0x03D3B2 0F:D3A2: A8        TAY
bra_D3A3:
C - - - - - 0x03D3B3 0F:D3A3: B9 7A D5  LDA tbl_D57A,Y
C - - - - - 0x03D3B6 0F:D3A6: 20 46 D3  JSR sub_D346
C - - - - - 0x03D3B9 0F:D3A9: E8        INX
C - - - - - 0x03D3BA 0F:D3AA: C8        INY
C - - - - - 0x03D3BB 0F:D3AB: C6 02     DEC ram_0002
C - - - - - 0x03D3BD 0F:D3AD: D0 F4     BNE bra_D3A3
C - - - - - 0x03D3BF 0F:D3AF: 60        RTS



sub_D3B0:
.export sub_0x03D3C0
sub_0x03D3C0:
C - - - - - 0x03D3C0 0F:D3B0: A2 00     LDX #$00
C - - - - - 0x03D3C2 0F:D3B2: F0 E8     BEQ bra_D39C
loc_D3B4:
C D 2 - - - 0x03D3C4 0F:D3B4: AD 02 06  LDA ram_0602
C - - - - - 0x03D3C7 0F:D3B7: D0 08     BNE bra_D3C1
C - - - - - 0x03D3C9 0F:D3B9: EE 02 06  INC ram_0602
C - - - - - 0x03D3CC 0F:D3BC: A9 08     LDA #$08
C - - - - - 0x03D3CE 0F:D3BE: 8D 03 06  STA ram_0603
bra_D3C1:
C - - - - - 0x03D3D1 0F:D3C1: A9 08     LDA #$08
C - - - - - 0x03D3D3 0F:D3C3: 20 5C D4  JSR sub_D45C
C - - - - - 0x03D3D6 0F:D3C6: A9 00     LDA #$00
C - - - - - 0x03D3D8 0F:D3C8: 85 00     STA ram_0000
C - - - - - 0x03D3DA 0F:D3CA: A2 1F     LDX #$1F
bra_D3CC:
C - - - - - 0x03D3DC 0F:D3CC: BD 4D 06  LDA ram_064D,X
C - - - - - 0x03D3DF 0F:D3CF: C9 0F     CMP #$0F
C - - - - - 0x03D3E1 0F:D3D1: F0 12     BEQ bra_D3E5
C - - - - - 0x03D3E3 0F:D3D3: E6 00     INC ram_0000
C - - - - - 0x03D3E5 0F:D3D5: A8        TAY
C - - - - - 0x03D3E6 0F:D3D6: 29 F0     AND #$F0
C - - - - - 0x03D3E8 0F:D3D8: F0 06     BEQ bra_D3E0
C - - - - - 0x03D3EA 0F:D3DA: 98        TYA
C - - - - - 0x03D3EB 0F:D3DB: 38        SEC
C - - - - - 0x03D3EC 0F:D3DC: E9 10     SBC #$10
C - - - - - 0x03D3EE 0F:D3DE: B0 02     BCS bra_D3E2
bra_D3E0:
C - - - - - 0x03D3F0 0F:D3E0: A9 0F     LDA #$0F
bra_D3E2:
C - - - - - 0x03D3F2 0F:D3E2: 9D 4D 06  STA ram_064D,X
bra_D3E5:
C - - - - - 0x03D3F5 0F:D3E5: CA        DEX
C - - - - - 0x03D3F6 0F:D3E6: 10 E4     BPL bra_D3CC
C - - - - - 0x03D3F8 0F:D3E8: A5 00     LDA ram_0000
C - - - - - 0x03D3FA 0F:D3EA: D0 0C     BNE bra_D3F8_RTS
loc_D3EC:
sub_D3EC:
C D 2 - - - 0x03D3FC 0F:D3EC: A9 00     LDA #$00
C - - - - - 0x03D3FE 0F:D3EE: A2 3B     LDX #$3B
bra_D3F0_loop:
C - - - - - 0x03D400 0F:D3F0: 9D 00 06  STA ram_0600,X
C - - - - - 0x03D403 0F:D3F3: CA        DEX
C - - - - - 0x03D404 0F:D3F4: 10 FA     BPL bra_D3F0_loop
C - - - - - 0x03D406 0F:D3F6: 85 30     STA ram_0030
bra_D3F8_RTS:
C - - - - - 0x03D408 0F:D3F8: 60        RTS



loc_D3F9:
C D 2 - - - 0x03D409 0F:D3F9: AD 02 06  LDA ram_0602
C - - - - - 0x03D40C 0F:D3FC: D0 1C     BNE bra_D41A
C - - - - - 0x03D40E 0F:D3FE: A2 1F     LDX #$1F
bra_D400_loop:
C - - - - - 0x03D410 0F:D400: BD 4D 06  LDA ram_064D,X
C - - - - - 0x03D413 0F:D403: 9D 04 06  STA ram_0604,X
C - - - - - 0x03D416 0F:D406: A9 0F     LDA #$0F
C - - - - - 0x03D418 0F:D408: 9D 4D 06  STA ram_064D,X
C - - - - - 0x03D41B 0F:D40B: CA        DEX
C - - - - - 0x03D41C 0F:D40C: 10 F2     BPL bra_D400_loop
sub_D40E:
C - - - - - 0x03D41E 0F:D40E: EE 02 06  INC ram_0602
C - - - - - 0x03D421 0F:D411: 20 64 D4  JSR sub_D464
C - - - - - 0x03D424 0F:D414: A9 08     LDA #$08
C - - - - - 0x03D426 0F:D416: 8D 03 06  STA ram_0603
bra_D419_RTS:
C - - - - - 0x03D429 0F:D419: 60        RTS
bra_D41A:
C - - - - - 0x03D42A 0F:D41A: CE 03 06  DEC ram_0603
C - - - - - 0x03D42D 0F:D41D: 10 FA     BPL bra_D419_RTS
C - - - - - 0x03D42F 0F:D41F: AC 02 06  LDY ram_0602
C - - - - - 0x03D432 0F:D422: B9 55 D4  LDA tbl_D456 - 1,Y
C - - - - - 0x03D435 0F:D425: 85 00     STA ram_0000
C - - - - - 0x03D437 0F:D427: A2 1F     LDX #$1F
bra_D429:
C - - - - - 0x03D439 0F:D429: BD 04 06  LDA ram_0604,X
C - - - - - 0x03D43C 0F:D42C: A8        TAY
C - - - - - 0x03D43D 0F:D42D: 29 F0     AND #$F0
C - - - - - 0x03D43F 0F:D42F: C5 00     CMP ram_0000
C - - - - - 0x03D441 0F:D431: D0 05     BNE bra_D438
C - - - - - 0x03D443 0F:D433: 98        TYA
C - - - - - 0x03D444 0F:D434: 29 0F     AND #$0F
C - - - - - 0x03D446 0F:D436: B0 0A     BCS bra_D442
bra_D438:
C - - - - - 0x03D448 0F:D438: BD 4D 06  LDA ram_064D,X
C - - - - - 0x03D44B 0F:D43B: C9 0F     CMP #$0F
C - - - - - 0x03D44D 0F:D43D: F0 06     BEQ bra_D445
C - - - - - 0x03D44F 0F:D43F: 18        CLC
C - - - - - 0x03D450 0F:D440: 69 10     ADC #$10
bra_D442:
C - - - - - 0x03D452 0F:D442: 9D 4D 06  STA ram_064D,X
bra_D445:
C - - - - - 0x03D455 0F:D445: CA        DEX
C - - - - - 0x03D456 0F:D446: 10 E1     BPL bra_D429
C - - - - - 0x03D458 0F:D448: 20 0E D4  JSR sub_D40E
C - - - - - 0x03D45B 0F:D44B: AD 02 06  LDA ram_0602
C - - - - - 0x03D45E 0F:D44E: C9 05     CMP #$05
C - - - - - 0x03D460 0F:D450: B0 01     BCS bra_D453
C - - - - - 0x03D462 0F:D452: 60        RTS
bra_D453:
C - - - - - 0x03D463 0F:D453: 4C EC D3  JMP loc_D3EC



tbl_D456:
- D 2 - - - 0x03D466 0F:D456: 30        .byte $30   ; 00
- D 2 - - - 0x03D467 0F:D457: 20        .byte $20   ; 01
- D 2 - - - 0x03D468 0F:D458: 10        .byte $10   ; 02
- D 2 - - - 0x03D469 0F:D459: 00        .byte $00   ; 03



sub_D45C:
C - - - - - 0x03D46C 0F:D45C: CE 03 06  DEC ram_0603
C - - - - - 0x03D46F 0F:D45F: 10 09     BPL bra_D46A
C - - - - - 0x03D471 0F:D461: 8D 03 06  STA ram_0603
bra_D464:
sub_D464:
loc_D464:
C D 2 - - - 0x03D474 0F:D464: A9 FF     LDA #$FF
C - - - - - 0x03D476 0F:D466: 8D 6D 06  STA ram_066D
C - - - - - 0x03D479 0F:D469: 60        RTS
bra_D46A:
C - - - - - 0x03D47A 0F:D46A: 68        PLA
C - - - - - 0x03D47B 0F:D46B: 68        PLA
C - - - - - 0x03D47C 0F:D46C: 60        RTS



loc_D46D:
sub_D46D:
.export sub_0x03D47D
sub_0x03D47D:
.export loc_0x03D47D
loc_0x03D47D:
C D 2 - - - 0x03D47D 0F:D46D: A2 1F     LDX #$1F
C - - - - - 0x03D47F 0F:D46F: A9 0F     LDA #$0F
bra_D471:
C - - - - - 0x03D481 0F:D471: 9D 4D 06  STA ram_064D,X
C - - - - - 0x03D484 0F:D474: CA        DEX
C - - - - - 0x03D485 0F:D475: 10 FA     BPL bra_D471
C - - - - - 0x03D487 0F:D477: 30 EB     BMI bra_D464



loc_D479:
C D 2 - - - 0x03D489 0F:D479: AD 02 06  LDA ram_0602
C - - - - - 0x03D48C 0F:D47C: D0 09     BNE bra_D487
C - - - - - 0x03D48E 0F:D47E: EE 02 06  INC ram_0602
C - - - - - 0x03D491 0F:D481: A9 06     LDA #$06
C - - - - - 0x03D493 0F:D483: 8D 03 06  STA ram_0603
C - - - - - 0x03D496 0F:D486: 60        RTS
bra_D487:
C - - - - - 0x03D497 0F:D487: A9 0C     LDA #$0C
C - - - - - 0x03D499 0F:D489: 20 5C D4  JSR sub_D45C
C - - - - - 0x03D49C 0F:D48C: A9 07     LDA #$07
C - - - - - 0x03D49E 0F:D48E: 85 00     STA ram_0000
bra_D490:
C - - - - - 0x03D4A0 0F:D490: A9 03     LDA #$03
C - - - - - 0x03D4A2 0F:D492: 85 01     STA ram_0001
bra_D494:
C - - - - - 0x03D4A4 0F:D494: A5 00     LDA ram_0000
C - - - - - 0x03D4A6 0F:D496: 0A        ASL
C - - - - - 0x03D4A7 0F:D497: 0A        ASL
C - - - - - 0x03D4A8 0F:D498: 65 01     ADC ram_0001
C - - - - - 0x03D4AA 0F:D49A: AA        TAX
C - - - - - 0x03D4AB 0F:D49B: BD 4D 06  LDA ram_064D,X
C - - - - - 0x03D4AE 0F:D49E: C9 30     CMP #$30
C - - - - - 0x03D4B0 0F:D4A0: B0 07     BCS bra_D4A9
C - - - - - 0x03D4B2 0F:D4A2: C9 0F     CMP #$0F
C - - - - - 0x03D4B4 0F:D4A4: D0 05     BNE bra_D4AB
C - - - - - 0x03D4B6 0F:D4A6: A9 F0     LDA #$F0
C - - - - - 0x03D4B8 0F:D4A8: 2C        .byte $2C
bra_D4A9:
C - - - - - 0x03D4B9 0F:D4A9: A9 20     LDA #$20
bra_D4AB:
C - - - - - 0x03D4BB 0F:D4AB: 18        CLC
C - - - - - 0x03D4BC 0F:D4AC: 69 10     ADC #$10
C - - - - - 0x03D4BE 0F:D4AE: 9D 4D 06  STA ram_064D,X
C - - - - - 0x03D4C1 0F:D4B1: CA        DEX
C - - - - - 0x03D4C2 0F:D4B2: C6 01     DEC ram_0001
C - - - - - 0x03D4C4 0F:D4B4: 10 DE     BPL bra_D494
C - - - - - 0x03D4C6 0F:D4B6: C6 00     DEC ram_0000
C - - - - - 0x03D4C8 0F:D4B8: 10 D6     BPL bra_D490
C - - - - - 0x03D4CA 0F:D4BA: 20 64 D4  JSR sub_D464
C - - - - - 0x03D4CD 0F:D4BD: EE 02 06  INC ram_0602
C - - - - - 0x03D4D0 0F:D4C0: AD 02 06  LDA ram_0602
C - - - - - 0x03D4D3 0F:D4C3: C9 05     CMP #$05
C - - - - - 0x03D4D5 0F:D4C5: 90 03     BCC bra_D4CA_RTS
C - - - - - 0x03D4D7 0F:D4C7: 4C EC D3  JMP loc_D3EC
bra_D4CA_RTS:
C - - - - - 0x03D4DA 0F:D4CA: 60        RTS



loc_D4CB:
C D 2 - - - 0x03D4DB 0F:D4CB: AC 02 06  LDY ram_0602
C - - - - - 0x03D4DE 0F:D4CE: D0 1B     BNE bra_D4EB
C - - - - - 0x03D4E0 0F:D4D0: EE 02 06  INC ram_0602
C - - - - - 0x03D4E3 0F:D4D3: A9 08     LDA #$08
C - - - - - 0x03D4E5 0F:D4D5: 8D 03 06  STA ram_0603
C - - - - - 0x03D4E8 0F:D4D8: A2 1F     LDX #$1F
bra_D4DA:
C - - - - - 0x03D4EA 0F:D4DA: BD 4D 06  LDA ram_064D,X
C - - - - - 0x03D4ED 0F:D4DD: 9D 04 06  STA ram_0604,X
C - - - - - 0x03D4F0 0F:D4E0: A9 30     LDA #$30
C - - - - - 0x03D4F2 0F:D4E2: 9D 4D 06  STA ram_064D,X
C - - - - - 0x03D4F5 0F:D4E5: CA        DEX
C - - - - - 0x03D4F6 0F:D4E6: 10 F2     BPL bra_D4DA
C - - - - - 0x03D4F8 0F:D4E8: 4C 64 D4  JMP loc_D464
bra_D4EB:
C - - - - - 0x03D4FB 0F:D4EB: A9 08     LDA #$08
C - - - - - 0x03D4FD 0F:D4ED: 20 5C D4  JSR sub_D45C
C - - - - - 0x03D500 0F:D4F0: 88        DEY
C - - - - - 0x03D501 0F:D4F1: D0 19     BNE bra_D50C
C - - - - - 0x03D503 0F:D4F3: A2 1F     LDX #$1F
bra_D4F5:
C - - - - - 0x03D505 0F:D4F5: BD 04 06  LDA ram_0604,X
C - - - - - 0x03D508 0F:D4F8: 09 30     ORA #$30
C - - - - - 0x03D50A 0F:D4FA: C9 3F     CMP #$3F
C - - - - - 0x03D50C 0F:D4FC: D0 02     BNE bra_D500
C - - - - - 0x03D50E 0F:D4FE: A9 30     LDA #$30
bra_D500:
C - - - - - 0x03D510 0F:D500: 9D 4D 06  STA ram_064D,X
C - - - - - 0x03D513 0F:D503: CA        DEX
C - - - - - 0x03D514 0F:D504: 10 EF     BPL bra_D4F5
C - - - - - 0x03D516 0F:D506: EE 02 06  INC ram_0602
C - - - - - 0x03D519 0F:D509: 4C 64 D4  JMP loc_D464
bra_D50C:
C - - - - - 0x03D51C 0F:D50C: A2 1F     LDX #$1F
bra_D50E:
C - - - - - 0x03D51E 0F:D50E: BD 4D 06  LDA ram_064D,X
C - - - - - 0x03D521 0F:D511: DD 04 06  CMP ram_0604,X
C - - - - - 0x03D524 0F:D514: F0 0A     BEQ bra_D520
C - - - - - 0x03D526 0F:D516: 38        SEC
C - - - - - 0x03D527 0F:D517: E9 10     SBC #$10
C - - - - - 0x03D529 0F:D519: B0 02     BCS bra_D51D
C - - - - - 0x03D52B 0F:D51B: A9 0F     LDA #$0F
bra_D51D:
C - - - - - 0x03D52D 0F:D51D: 9D 4D 06  STA ram_064D,X
bra_D520:
C - - - - - 0x03D530 0F:D520: CA        DEX
C - - - - - 0x03D531 0F:D521: 10 EB     BPL bra_D50E
C - - - - - 0x03D533 0F:D523: EE 02 06  INC ram_0602
C - - - - - 0x03D536 0F:D526: AD 02 06  LDA ram_0602
C - - - - - 0x03D539 0F:D529: C9 06     CMP #$06
C - - - - - 0x03D53B 0F:D52B: 90 03     BCC bra_D530
C - - - - - 0x03D53D 0F:D52D: 20 EC D3  JSR sub_D3EC
bra_D530:
C - - - - - 0x03D540 0F:D530: 4C 64 D4  JMP loc_D464
bra_D533_RTS:
C - - - - - 0x03D543 0F:D533: 60        RTS



loc_D538:
C D 2 - - - 0x03D548 0F:D538: AD 6D 06  LDA ram_066D
C - - - - - 0x03D54B 0F:D53B: F0 F6     BEQ bra_D533_RTS
C - - - - - 0x03D54D 0F:D53D: A0 10     LDY #$10
C - - - - - 0x03D54F 0F:D53F: C9 10     CMP #$10
C - - - - - 0x03D551 0F:D541: 90 12     BCC bra_D555
C - - - - - 0x03D553 0F:D543: 29 0F     AND #$0F
C - - - - - 0x03D555 0F:D545: D0 0C     BNE bra_D553
C - - - - - 0x03D557 0F:D547: 8C 6D 06  STY ram_066D
C - - - - - 0x03D55A 0F:D54A: A9 01     LDA #$01
C - - - - - 0x03D55C 0F:D54C: 20 5D D2  JSR sub_D25D
C - - - - - 0x03D55F 0F:D54F: A9 10     LDA #$10
C - - - - - 0x03D561 0F:D551: D0 0C     BNE bra_D55F
bra_D553:
C - - - - - 0x03D563 0F:D553: A0 20     LDY #$20
bra_D555:
C - - - - - 0x03D565 0F:D555: 8C 6D 06  STY ram_066D
C - - - - - 0x03D568 0F:D558: A9 01     LDA #$01
C - - - - - 0x03D56A 0F:D55A: 20 5D D2  JSR sub_D25D
C - - - - - 0x03D56D 0F:D55D: A9 00     LDA #$00
bra_D55F:
C - - - - - 0x03D56F 0F:D55F: 85 A9     STA ram_00A9
C - - - - - 0x03D571 0F:D561: 20 66 D2  JSR sub_D266
C - - - - - 0x03D574 0F:D564: A9 3F     LDA #$3F
C - - - - - 0x03D576 0F:D566: 20 66 D2  JSR sub_D266
C - - - - - 0x03D579 0F:D569: A4 A9     LDY ram_00A9
bra_D56B:
C - - - - - 0x03D57B 0F:D56B: B9 4D 06  LDA ram_064D,Y
C - - - - - 0x03D57E 0F:D56E: 20 66 D2  JSR sub_D266
C - - - - - 0x03D581 0F:D571: C8        INY
C - - - - - 0x03D582 0F:D572: CE 6D 06  DEC ram_066D
C - - - - - 0x03D585 0F:D575: D0 F4     BNE bra_D56B
C - - - - - 0x03D587 0F:D577: 4C 59 D2  JMP loc_D259



tbl_D57A:
- D 2 - - - 0x03D58A 0F:D57A: 00        .byte $00   ; 
- D 2 - - - 0x03D58B 0F:D57B: 00        .byte $00   ; 
- D 2 - - - 0x03D58C 0F:D57C: 00        .byte $00   ; 
- D 2 - - - 0x03D58D 0F:D57D: 00        .byte $00   ; 
- D 2 - - - 0x03D58E 0F:D57E: 03        .byte $03   ; 
- D 2 - - - 0x03D58F 0F:D57F: 04        .byte $04   ; 
- D 2 - - - 0x03D590 0F:D580: 05        .byte $05   ; 
- D 2 - - - 0x03D591 0F:D581: 01        .byte $01   ; 
- D 2 - - - 0x03D592 0F:D582: 0D        .byte $0D   ; 
- D 2 - - - 0x03D593 0F:D583: 13        .byte $13   ; 
- D 2 - - - 0x03D594 0F:D584: 07        .byte $07   ; 
- D 2 - - - 0x03D595 0F:D585: 08        .byte $08   ; 
- - - - - - 0x03D596 0F:D586: 0B        .byte $0B   ; 
- - - - - - 0x03D597 0F:D587: 29        .byte $29   ; 
- - - - - - 0x03D598 0F:D588: 0C        .byte $0C   ; 
- - - - - - 0x03D599 0F:D589: 01        .byte $01   ; 
- D 2 - - - 0x03D59A 0F:D58A: 01        .byte $01   ; 
- D 2 - - - 0x03D59B 0F:D58B: 26        .byte $26   ; 
- D 2 - - - 0x03D59C 0F:D58C: 27        .byte $27   ; 
- D 2 - - - 0x03D59D 0F:D58D: 00        .byte $00   ; 
- - - - - - 0x03D59E 0F:D58E: 2B        .byte $2B   ; 
- - - - - - 0x03D59F 0F:D58F: 0C        .byte $0C   ; 
- - - - - - 0x03D5A0 0F:D590: 16        .byte $16   ; 
- - - - - - 0x03D5A1 0F:D591: 01        .byte $01   ; 
- D 2 - - - 0x03D5A2 0F:D592: 20        .byte $20   ; 
- D 2 - - - 0x03D5A3 0F:D593: 02        .byte $02   ; 
- D 2 - - - 0x03D5A4 0F:D594: 02        .byte $02   ; 
- D 2 - - - 0x03D5A5 0F:D595: 02        .byte $02   ; 
- D 2 - - - 0x03D5A6 0F:D596: 02        .byte $02   ; 
- D 2 - - - 0x03D5A7 0F:D597: 17        .byte $17   ; 
- D 2 - - - 0x03D5A8 0F:D598: 18        .byte $18   ; 
- D 2 - - - 0x03D5A9 0F:D599: 18        .byte $18   ; 
- - - - - - 0x03D5AA 0F:D59A: 02        .byte $02   ; 
- - - - - - 0x03D5AB 0F:D59B: 09        .byte $09   ; 
- - - - - - 0x03D5AC 0F:D59C: 3C        .byte $3C   ; 
- - - - - - 0x03D5AD 0F:D59D: 01        .byte $01   ; 
- D 2 - - - 0x03D5AE 0F:D59E: 00        .byte $00   ; 
- D 2 - - - 0x03D5AF 0F:D59F: 20        .byte $20   ; 
- D 2 - - - 0x03D5B0 0F:D5A0: 00        .byte $00   ; 
- D 2 - - - 0x03D5B1 0F:D5A1: 02        .byte $02   ; 
- D 2 - - - 0x03D5B2 0F:D5A2: 2B        .byte $2B   ; 
- D 2 - - - 0x03D5B3 0F:D5A3: 2C        .byte $2C   ; 
- D 2 - - - 0x03D5B4 0F:D5A4: 02        .byte $02   ; 
- D 2 - - - 0x03D5B5 0F:D5A5: 01        .byte $01   ; 
- D 2 - - - 0x03D5B6 0F:D5A6: 4B        .byte $4B   ; 
- D 2 - - - 0x03D5B7 0F:D5A7: 4C        .byte $4C   ; 
- D 2 - - - 0x03D5B8 0F:D5A8: 02        .byte $02   ; 
- D 2 - - - 0x03D5B9 0F:D5A9: 01        .byte $01   ; 
- D 2 - - - 0x03D5BA 0F:D5AA: 35        .byte $35   ; 
- D 2 - - - 0x03D5BB 0F:D5AB: 36        .byte $36   ; 
- D 2 - - - 0x03D5BC 0F:D5AC: 50        .byte $50   ; 
- D 2 - - - 0x03D5BD 0F:D5AD: 38        .byte $38   ; 
- D 2 - - - 0x03D5BE 0F:D5AE: 36        .byte $36   ; 
- D 2 - - - 0x03D5BF 0F:D5AF: 37        .byte $37   ; 
- D 2 - - - 0x03D5C0 0F:D5B0: 38        .byte $38   ; 
- D 2 - - - 0x03D5C1 0F:D5B1: 35        .byte $35   ; 
- D 2 - - - 0x03D5C2 0F:D5B2: 35        .byte $35   ; 
- D 2 - - - 0x03D5C3 0F:D5B3: 36        .byte $36   ; 
- D 2 - - - 0x03D5C4 0F:D5B4: 39        .byte $39   ; 
- D 2 - - - 0x03D5C5 0F:D5B5: 3A        .byte $3A   ; 
- D 2 - - - 0x03D5C6 0F:D5B6: 36        .byte $36   ; 
- D 2 - - - 0x03D5C7 0F:D5B7: 37        .byte $37   ; 
- D 2 - - - 0x03D5C8 0F:D5B8: 3D        .byte $3D   ; 
- D 2 - - - 0x03D5C9 0F:D5B9: 35        .byte $35   ; 
- D 2 - - - 0x03D5CA 0F:D5BA: 0D        .byte $0D   ; 
- D 2 - - - 0x03D5CB 0F:D5BB: 2B        .byte $2B   ; 
- D 2 - - - 0x03D5CC 0F:D5BC: 07        .byte $07   ; 
- D 2 - - - 0x03D5CD 0F:D5BD: 08        .byte $08   ; 
- D 2 - - - 0x03D5CE 0F:D5BE: 2D        .byte $2D   ; 
- D 2 - - - 0x03D5CF 0F:D5BF: 2D        .byte $2D   ; 
- D 2 - - - 0x03D5D0 0F:D5C0: 02        .byte $02   ; 
- D 2 - - - 0x03D5D1 0F:D5C1: 14        .byte $14   ; 
- D 2 - - - 0x03D5D2 0F:D5C2: 3F        .byte $3F   ; 
- D 2 - - - 0x03D5D3 0F:D5C3: 40        .byte $40   ; 
- D 2 - - - 0x03D5D4 0F:D5C4: 41        .byte $41   ; 
- D 2 - - - 0x03D5D5 0F:D5C5: 00        .byte $00   ; 
- D 2 - - - 0x03D5D6 0F:D5C6: 0D        .byte $0D   ; 
- D 2 - - - 0x03D5D7 0F:D5C7: 33        .byte $33   ; 
- D 2 - - - 0x03D5D8 0F:D5C8: 25        .byte $25   ; 
- D 2 - - - 0x03D5D9 0F:D5C9: 42        .byte $42   ; 
- D 2 - - - 0x03D5DA 0F:D5CA: 00        .byte $00   ; 
- D 2 - - - 0x03D5DB 0F:D5CB: 00        .byte $00   ; 
- D 2 - - - 0x03D5DC 0F:D5CC: 40        .byte $40   ; 
- D 2 - - - 0x03D5DD 0F:D5CD: 02        .byte $02   ; 
- D 2 - - - 0x03D5DE 0F:D5CE: 4D        .byte $4D   ; 
- D 2 - - - 0x03D5DF 0F:D5CF: 4E        .byte $4E   ; 
- D 2 - - - 0x03D5E0 0F:D5D0: 4F        .byte $4F   ; 
- D 2 - - - 0x03D5E1 0F:D5D1: 02        .byte $02   ; 
- D 2 - - - 0x03D5E2 0F:D5D2: 51        .byte $51   ; 
- D 2 - - - 0x03D5E3 0F:D5D3: 52        .byte $52   ; 
- D 2 - - - 0x03D5E4 0F:D5D4: 57        .byte $57   ; 
- D 2 - - - 0x03D5E5 0F:D5D5: 02        .byte $02   ; 
- D 2 - - - 0x03D5E6 0F:D5D6: 05        .byte $05   ; 
- D 2 - - - 0x03D5E7 0F:D5D7: 53        .byte $53   ; 
- D 2 - - - 0x03D5E8 0F:D5D8: 00        .byte $00   ; 
- D 2 - - - 0x03D5E9 0F:D5D9: 00        .byte $00   ; 
- D 2 - - - 0x03D5EA 0F:D5DA: 05        .byte $05   ; 
- D 2 - - - 0x03D5EB 0F:D5DB: 54        .byte $54   ; 
- D 2 - - - 0x03D5EC 0F:D5DC: 55        .byte $55   ; 
- D 2 - - - 0x03D5ED 0F:D5DD: 02        .byte $02   ; 
- D 2 - - - 0x03D5EE 0F:D5DE: 05        .byte $05   ; 
- D 2 - - - 0x03D5EF 0F:D5DF: 2F        .byte $2F   ; 
- D 2 - - - 0x03D5F0 0F:D5E0: 00        .byte $00   ; 
- D 2 - - - 0x03D5F1 0F:D5E1: 00        .byte $00   ; 
- D 2 - - - 0x03D5F2 0F:D5E2: 2F        .byte $2F   ; 
- D 2 - - - 0x03D5F3 0F:D5E3: 56        .byte $56   ; 
- D 2 - - - 0x03D5F4 0F:D5E4: 46        .byte $46   ; 
- D 2 - - - 0x03D5F5 0F:D5E5: 00        .byte $00   ; 
- D 2 - - - 0x03D5F6 0F:D5E6: 00        .byte $00   ; 
- D 2 - - - 0x03D5F7 0F:D5E7: 00        .byte $00   ; 
- D 2 - - - 0x03D5F8 0F:D5E8: 64        .byte $64   ; 
- D 2 - - - 0x03D5F9 0F:D5E9: 00        .byte $00   ; 



.export sub_0x03D5FA
sub_0x03D5FA:
C - - - - - 0x03D5FA 0F:D5EA: D0 0B     BNE bra_D5F7
C - - - - - 0x03D5FC 0F:D5EC: B9 CA B2  LDA tbl_0x0272DA,Y
C - - - - - 0x03D5FF 0F:D5EF: 95 34     STA ram_0034,X
C - - - - - 0x03D601 0F:D5F1: B9 CB B2  LDA tbl_0x0272DA + 1,Y
C - - - - - 0x03D604 0F:D5F4: 95 35     STA ram_0035,X
C - - - - - 0x03D606 0F:D5F6: 60        RTS
bra_D5F7:
C - - - - - 0x03D607 0F:D5F7: B9 9B D6  LDA tbl_D69B,Y
C - - - - - 0x03D60A 0F:D5FA: 95 34     STA ram_0034,X
C - - - - - 0x03D60C 0F:D5FC: B9 9C D6  LDA tbl_D69C,Y
C - - - - - 0x03D60F 0F:D5FF: 95 35     STA ram_0035,X
C - - - - - 0x03D611 0F:D601: 60        RTS



sub_D602:
C - - - - - 0x03D612 0F:D602: AD 2B 01  LDA ram_option_skin
C - - - - - 0x03D615 0F:D605: 29 02     AND #$02
C - - - - - 0x03D617 0F:D607: D0 03     BNE bra_D60C
C - - - - - 0x03D619 0F:D609: A2 21     LDX #$21
C - - - - - 0x03D61B 0F:D60B: 60        RTS
bra_D60C:
C - - - - - 0x03D61C 0F:D60C: A2 8F     LDX #$8F
C - - - - - 0x03D61E 0F:D60E: 60        RTS



tbl_D69B:
- D 2 - - - 0x03D6AB 0F:D69B: 02        .byte $02   ; 
tbl_D69C:
- D 2 - - - 0x03D6AC 0F:D69C: 8C        .byte $8C   ; 
- D 2 - - - 0x03D6AD 0F:D69D: 03        .byte $03   ; 
- D 2 - - - 0x03D6AE 0F:D69E: 8C        .byte $8C   ; 
- D 2 - - - 0x03D6AF 0F:D69F: 04        .byte $04   ; 
- D 2 - - - 0x03D6B0 0F:D6A0: 8C        .byte $8C   ; 
- D 2 - - - 0x03D6B1 0F:D6A1: 05        .byte $05   ; 
- D 2 - - - 0x03D6B2 0F:D6A2: 8C        .byte $8C   ; 
- D 2 - - - 0x03D6B3 0F:D6A3: 06        .byte $06   ; 
- D 2 - - - 0x03D6B4 0F:D6A4: 8C        .byte $8C   ; 
- D 2 - - - 0x03D6B5 0F:D6A5: 07        .byte $07   ; 
- D 2 - - - 0x03D6B6 0F:D6A6: 8C        .byte $8C   ; 
- D 2 - - - 0x03D6B7 0F:D6A7: 08        .byte $08   ; 
- D 2 - - - 0x03D6B8 0F:D6A8: 8C        .byte $8C   ; 
- D 2 - - - 0x03D6B9 0F:D6A9: 09        .byte $09   ; 
- D 2 - - - 0x03D6BA 0F:D6AA: 8C        .byte $8C   ; 
- - - - - - 0x03D6BB 0F:D6AB: 0A        .byte $0A   ; 
- - - - - - 0x03D6BC 0F:D6AC: 8C        .byte $8C   ; 
- D 2 - - - 0x03D6BD 0F:D6AD: 16        .byte $16   ; 
- D 2 - - - 0x03D6BE 0F:D6AE: 8E        .byte $8E   ; 
- D 2 - - - 0x03D6BF 0F:D6AF: 18        .byte $18   ; 
- D 2 - - - 0x03D6C0 0F:D6B0: 8E        .byte $8E   ; 
- D 2 - - - 0x03D6C1 0F:D6B1: 17        .byte $17   ; 
- D 2 - - - 0x03D6C2 0F:D6B2: 8E        .byte $8E   ; 
- D 2 - - - 0x03D6C3 0F:D6B3: 1A        .byte $1A   ; 
- D 2 - - - 0x03D6C4 0F:D6B4: 8E        .byte $8E   ; 
- D 2 - - - 0x03D6C5 0F:D6B5: 1B        .byte $1B   ; 
- D 2 - - - 0x03D6C6 0F:D6B6: 8E        .byte $8E   ; 
- D 2 - - - 0x03D6C7 0F:D6B7: 1C        .byte $1C   ; 
- D 2 - - - 0x03D6C8 0F:D6B8: 8E        .byte $8E   ; 
- D 2 - - - 0x03D6C9 0F:D6B9: 19        .byte $19   ; 
- D 2 - - - 0x03D6CA 0F:D6BA: 8E        .byte $8E   ; 
- D 2 - - - 0x03D6CB 0F:D6BB: 2A        .byte $2A   ; 
- D 2 - - - 0x03D6CC 0F:D6BC: 90        .byte $90   ; 
- D 2 - - - 0x03D6CD 0F:D6BD: 2B        .byte $2B   ; 
- D 2 - - - 0x03D6CE 0F:D6BE: 90        .byte $90   ; 
- D 2 - - - 0x03D6CF 0F:D6BF: 92        .byte $92   ; 
- D 2 - - - 0x03D6D0 0F:D6C0: 90        .byte $90   ; 
- D 2 - - - 0x03D6D1 0F:D6C1: 2D        .byte $2D   ; 
- D 2 - - - 0x03D6D2 0F:D6C2: 90        .byte $90   ; 
- D 2 - - - 0x03D6D3 0F:D6C3: 2E        .byte $2E   ; 
- D 2 - - - 0x03D6D4 0F:D6C4: 90        .byte $90   ; 
- D 2 - - - 0x03D6D5 0F:D6C5: 2F        .byte $2F   ; 
- D 2 - - - 0x03D6D6 0F:D6C6: 90        .byte $90   ; 
- D 2 - - - 0x03D6D7 0F:D6C7: 2A        .byte $2A   ; 
- D 2 - - - 0x03D6D8 0F:D6C8: 91        .byte $91   ; 
- D 2 - - - 0x03D6D9 0F:D6C9: 92        .byte $92   ; 
- D 2 - - - 0x03D6DA 0F:D6CA: 91        .byte $91   ; 
- D 2 - - - 0x03D6DB 0F:D6CB: 2D        .byte $2D   ; 
- D 2 - - - 0x03D6DC 0F:D6CC: 91        .byte $91   ; 
- D 2 - - - 0x03D6DD 0F:D6CD: 30        .byte $30   ; 
- D 2 - - - 0x03D6DE 0F:D6CE: 91        .byte $91   ; 
- D 2 - - - 0x03D6DF 0F:D6CF: 2B        .byte $2B   ; 
- D 2 - - - 0x03D6E0 0F:D6D0: 91        .byte $91   ; 
- D 2 - - - 0x03D6E1 0F:D6D1: 40        .byte $40   ; 
- D 2 - - - 0x03D6E2 0F:D6D2: 93        .byte $93   ; 
- D 2 - - - 0x03D6E3 0F:D6D3: 40        .byte $40   ; 
- D 2 - - - 0x03D6E4 0F:D6D4: 94        .byte $94   ; 
- D 2 - - - 0x03D6E5 0F:D6D5: 41        .byte $41   ; 
- D 2 - - - 0x03D6E6 0F:D6D6: 93        .byte $93   ; 
- D 2 - - - 0x03D6E7 0F:D6D7: 41        .byte $41   ; 
- D 2 - - - 0x03D6E8 0F:D6D8: 94        .byte $94   ; 
- D 2 - - - 0x03D6E9 0F:D6D9: 42        .byte $42   ; 
- D 2 - - - 0x03D6EA 0F:D6DA: 98        .byte $98   ; 
- D 2 - - - 0x03D6EB 0F:D6DB: 42        .byte $42   ; 
- D 2 - - - 0x03D6EC 0F:D6DC: 94        .byte $94   ; 
- D 2 - - - 0x03D6ED 0F:D6DD: 42        .byte $42   ; 
- D 2 - - - 0x03D6EE 0F:D6DE: 95        .byte $95   ; 
- D 2 - - - 0x03D6EF 0F:D6DF: 43        .byte $43   ; 
- D 2 - - - 0x03D6F0 0F:D6E0: 93        .byte $93   ; 
- D 2 - - - 0x03D6F1 0F:D6E1: 43        .byte $43   ; 
- D 2 - - - 0x03D6F2 0F:D6E2: 95        .byte $95   ; 
- D 2 - - - 0x03D6F3 0F:D6E3: 44        .byte $44   ; 
- D 2 - - - 0x03D6F4 0F:D6E4: 94        .byte $94   ; 
- D 2 - - - 0x03D6F5 0F:D6E5: 96        .byte $96   ; 
- D 2 - - - 0x03D6F6 0F:D6E6: 93        .byte $93   ; 
- D 2 - - - 0x03D6F7 0F:D6E7: 96        .byte $96   ; 
- D 2 - - - 0x03D6F8 0F:D6E8: 94        .byte $94   ; 
- D 2 - - - 0x03D6F9 0F:D6E9: 46        .byte $46   ; 
- D 2 - - - 0x03D6FA 0F:D6EA: 93        .byte $93   ; 
- D 2 - - - 0x03D6FB 0F:D6EB: 46        .byte $46   ; 
- D 2 - - - 0x03D6FC 0F:D6EC: 95        .byte $95   ; 
- D 2 - - - 0x03D6FD 0F:D6ED: 44        .byte $44   ; 
- D 2 - - - 0x03D6FE 0F:D6EE: 93        .byte $93   ; 
- D 2 - - - 0x03D6FF 0F:D6EF: 0D        .byte $0D   ; 
- D 2 - - - 0x03D700 0F:D6F0: 8D        .byte $8D   ; 
- D 2 - - - 0x03D701 0F:D6F1: 0E        .byte $0E   ; 
- D 2 - - - 0x03D702 0F:D6F2: 8C        .byte $8C   ; 
- D 2 - - - 0x03D703 0F:D6F3: 0C        .byte $0C   ; 
- D 2 - - - 0x03D704 0F:D6F4: 8D        .byte $8D   ; 
- D 2 - - - 0x03D705 0F:D6F5: 0A        .byte $0A   ; 
- D 2 - - - 0x03D706 0F:D6F6: 8D        .byte $8D   ; 
- D 2 - - - 0x03D707 0F:D6F7: 0B        .byte $0B   ; 
- D 2 - - - 0x03D708 0F:D6F8: 8D        .byte $8D   ; 
- D 2 - - - 0x03D709 0F:D6F9: 0C        .byte $0C   ; 
- D 2 - - - 0x03D70A 0F:D6FA: 8C        .byte $8C   ; 
- D 2 - - - 0x03D70B 0F:D6FB: 0B        .byte $0B   ; 
- D 2 - - - 0x03D70C 0F:D6FC: 8D        .byte $8D   ; 
- D 2 - - - 0x03D70D 0F:D6FD: 0B        .byte $0B   ; 
- D 2 - - - 0x03D70E 0F:D6FE: 8C        .byte $8C   ; 
- D 2 - - - 0x03D70F 0F:D6FF: 1D        .byte $1D   ; 
- D 2 - - - 0x03D710 0F:D700: 8E        .byte $8E   ; 
- D 2 - - - 0x03D711 0F:D701: 1E        .byte $1E   ; 
- D 2 - - - 0x03D712 0F:D702: 8E        .byte $8E   ; 
- D 2 - - - 0x03D713 0F:D703: 1F        .byte $1F   ; 
- D 2 - - - 0x03D714 0F:D704: 8E        .byte $8E   ; 
- D 2 - - - 0x03D715 0F:D705: 20        .byte $20   ; 
- D 2 - - - 0x03D716 0F:D706: 8E        .byte $8E   ; 
- D 2 - - - 0x03D717 0F:D707: 31        .byte $31   ; 
- D 2 - - - 0x03D718 0F:D708: 90        .byte $90   ; 
- D 2 - - - 0x03D719 0F:D709: 32        .byte $32   ; 
- D 2 - - - 0x03D71A 0F:D70A: 90        .byte $90   ; 
- D 2 - - - 0x03D71B 0F:D70B: 33        .byte $33   ; 
- D 2 - - - 0x03D71C 0F:D70C: 90        .byte $90   ; 
- D 2 - - - 0x03D71D 0F:D70D: 34        .byte $34   ; 
- D 2 - - - 0x03D71E 0F:D70E: 90        .byte $90   ; 
- D 2 - - - 0x03D71F 0F:D70F: 35        .byte $35   ; 
- D 2 - - - 0x03D720 0F:D710: 90        .byte $90   ; 
- D 2 - - - 0x03D721 0F:D711: 3F        .byte $3F   ; 
- D 2 - - - 0x03D722 0F:D712: 93        .byte $93   ; 
- D 2 - - - 0x03D723 0F:D713: 43        .byte $43   ; 
- D 2 - - - 0x03D724 0F:D714: 94        .byte $94   ; 
- D 2 - - - 0x03D725 0F:D715: 46        .byte $46   ; 
- D 2 - - - 0x03D726 0F:D716: 94        .byte $94   ; 
- D 2 - - - 0x03D727 0F:D717: 47        .byte $47   ; 
- D 2 - - - 0x03D728 0F:D718: 98        .byte $98   ; 
- D 2 - - - 0x03D729 0F:D719: 4B        .byte $4B   ; 
- D 2 - - - 0x03D72A 0F:D71A: 93        .byte $93   ; 
- D 2 - - - 0x03D72B 0F:D71B: 0F        .byte $0F   ; 
- D 2 - - - 0x03D72C 0F:D71C: 8C        .byte $8C   ; 
- D 2 - - - 0x03D72D 0F:D71D: 15        .byte $15   ; 
- D 2 - - - 0x03D72E 0F:D71E: 90        .byte $90   ; 



sub_D71F:
C - - - - - 0x03D72F 0F:D71F: A9 3F     LDA #$3F
C - - - - - 0x03D731 0F:D721: 85 0A     STA ram_000A
C - - - - - 0x03D733 0F:D723: A9 00     LDA #$00
C - - - - - 0x03D735 0F:D725: 85 05     STA ram_0005
C - - - - - 0x03D737 0F:D727: A5 2F     LDA ram_002F
C - - - - - 0x03D739 0F:D729: 69 34     ADC #$34
C - - - - - 0x03D73B 0F:D72B: 85 2F     STA ram_002F
bra_D72D:
C - - - - - 0x03D73D 0F:D72D: A6 05     LDX ram_0005
C - - - - - 0x03D73F 0F:D72F: E0 10     CPX #$10
C - - - - - 0x03D741 0F:D731: B0 5F     BCS bra_D792
C - - - - - 0x03D743 0F:D733: A5 0A     LDA ram_000A
C - - - - - 0x03D745 0F:D735: 30 6B     BMI bra_D7A2_RTS
C - - - - - 0x03D747 0F:D737: BD 00 04  LDA ram_0400,X
C - - - - - 0x03D74A 0F:D73A: F0 52     BEQ bra_D78E
C - - - - - 0x03D74C 0F:D73C: BC 30 04  LDY ram_0430,X
C - - - - - 0x03D74F 0F:D73F: D0 4D     BNE bra_D78E
C - - - - - 0x03D751 0F:D741: A8        TAY
C - - - - - 0x03D752 0F:D742: 30 03     BMI bra_D747
C - - - - - 0x03D754 0F:D744: 20 EB F5  JSR sub_F5EB_prg_bank_0C
bra_D747:
C - - - - - 0x03D757 0F:D747: BD 00 04  LDA ram_0400,X
C - - - - - 0x03D75A 0F:D74A: 0A        ASL
C - - - - - 0x03D75B 0F:D74B: A9 00     LDA #$00
C - - - - - 0x03D75D 0F:D74D: 90 0C     BCC bra_D75B
C - - - - - 0x03D75F 0F:D74F: 8A        TXA
C - - - - - 0x03D760 0F:D750: C9 06     CMP #$06
C - - - - - 0x03D762 0F:D752: D0 03     BNE bra_D757
C - - - - - 0x03D764 0F:D754: AD 26 05  LDA ram_0526
bra_D757:
C - - - - - 0x03D767 0F:D757: 4A        LSR
C - - - - - 0x03D768 0F:D758: 6A        ROR
C - - - - - 0x03D769 0F:D759: 29 80     AND #$80
bra_D75B:
C - - - - - 0x03D76B 0F:D75B: 85 12     STA ram_0012
C - - - - - 0x03D76D 0F:D75D: BC 00 05  LDY ram_0500,X
C - - - - - 0x03D770 0F:D760: 84 00     STY ram_0000
C - - - - - 0x03D772 0F:D762: BC 10 04  LDY ram_0410,X
C - - - - - 0x03D775 0F:D765: E0 02     CPX #$02
C - - - - - 0x03D777 0F:D767: B0 09     BCS bra_D772
C - - - - - 0x03D779 0F:D769: C0 B0     CPY #$B0
C - - - - - 0x03D77B 0F:D76B: 90 05     BCC bra_D772
C - - - - - 0x03D77D 0F:D76D: 98        TYA
C - - - - - 0x03D77E 0F:D76E: 18        CLC
C - - - - - 0x03D77F 0F:D76F: 65 86     ADC ram_0086
C - - - - - 0x03D781 0F:D771: A8        TAY
bra_D772:
C - - - - - 0x03D782 0F:D772: 84 01     STY ram_0001
C - - - - - 0x03D784 0F:D774: BC 40 04  LDY ram_0440,X
C - - - - - 0x03D787 0F:D777: 84 02     STY ram_0002
C - - - - - 0x03D789 0F:D779: BC 10 05  LDY ram_0510,X
C - - - - - 0x03D78C 0F:D77C: 84 06     STY ram_0006
C - - - - - 0x03D78E 0F:D77E: BD 00 04  LDA ram_0400,X
C - - - - - 0x03D791 0F:D781: 20 A3 D7  JSR sub_D7A3
C - - - - - 0x03D794 0F:D784: A6 05     LDX ram_0005
C - - - - - 0x03D796 0F:D786: BD 00 04  LDA ram_0400,X
C - - - - - 0x03D799 0F:D789: 30 03     BMI bra_D78E
C - - - - - 0x03D79B 0F:D78B: 20 17 F6  JSR sub_F617
bra_D78E:
C - - - - - 0x03D79E 0F:D78E: E6 05     INC ram_0005
C - - - - - 0x03D7A0 0F:D790: D0 9B     BNE bra_D72D
bra_D792:
C - - - - - 0x03D7A2 0F:D792: A6 2F     LDX ram_002F
bra_D794:
C - - - - - 0x03D7A4 0F:D794: A9 F4     LDA #$F4
C - - - - - 0x03D7A6 0F:D796: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x03D7A9 0F:D799: 8A        TXA
C - - - - - 0x03D7AA 0F:D79A: 18        CLC
C - - - - - 0x03D7AB 0F:D79B: 69 1C     ADC #$1C
C - - - - - 0x03D7AD 0F:D79D: AA        TAX
C - - - - - 0x03D7AE 0F:D79E: C6 0A     DEC ram_000A
C - - - - - 0x03D7B0 0F:D7A0: 10 F2     BPL bra_D794
bra_D7A2_RTS:
C - - - - - 0x03D7B2 0F:D7A2: 60        RTS



sub_D7A3:
C - - - - - 0x03D7B3 0F:D7A3: 0A        ASL
C - - - - - 0x03D7B4 0F:D7A4: A8        TAY
C - - - - - 0x03D7B5 0F:D7A5: 90 2D     BCC bra_D7D4
C - - - - - 0x03D7B7 0F:D7A7: E0 06     CPX #$06
C - - - - - 0x03D7B9 0F:D7A9: D0 08     BNE bra_D7B3
C - - - - - 0x03D7BB 0F:D7AB: 98        TYA
C - - - - - 0x03D7BC 0F:D7AC: 48        PHA
C - - - - - 0x03D7BD 0F:D7AD: AD 26 05  LDA ram_0526
C - - - - - 0x03D7C0 0F:D7B0: 4C B6 D7  JMP loc_D7B6
bra_D7B3:
C - - - - - 0x03D7C3 0F:D7B3: 98        TYA
C - - - - - 0x03D7C4 0F:D7B4: 48        PHA
C - - - - - 0x03D7C5 0F:D7B5: 8A        TXA
loc_D7B6:
C D 2 - - - 0x03D7C6 0F:D7B6: 29 01     AND #$01
C - - - - - 0x03D7C8 0F:D7B8: AA        TAX
C - - - - - 0x03D7C9 0F:D7B9: BD 50 05  LDA ram_0550,X
C - - - - - 0x03D7CC 0F:D7BC: 0A        ASL
C - - - - - 0x03D7CD 0F:D7BD: A8        TAY
C - - - - - 0x03D7CE 0F:D7BE: B9 7E D8  LDA tbl_D87E,Y
C - - - - - 0x03D7D1 0F:D7C1: 85 10     STA ram_0010
C - - - - - 0x03D7D3 0F:D7C3: B9 7F D8  LDA tbl_D87E + 1,Y
C - - - - - 0x03D7D6 0F:D7C6: 85 11     STA ram_0011
C - - - - - 0x03D7D8 0F:D7C8: 68        PLA
C - - - - - 0x03D7D9 0F:D7C9: A8        TAY
C - - - - - 0x03D7DA 0F:D7CA: B1 10     LDA (ram_0010),Y
C - - - - - 0x03D7DC 0F:D7CC: 85 08     STA ram_0008
C - - - - - 0x03D7DE 0F:D7CE: C8        INY
C - - - - - 0x03D7DF 0F:D7CF: B1 10     LDA (ram_0010),Y
C - - - - - 0x03D7E1 0F:D7D1: 4C DC D7  JMP loc_D7DC
bra_D7D4:
C - - - - - 0x03D7E4 0F:D7D4: B9 33 82  LDA tbl_0x030245 - 2,Y
C - - - - - 0x03D7E7 0F:D7D7: 85 08     STA ram_0008
C - - - - - 0x03D7E9 0F:D7D9: B9 34 82  LDA tbl_0x030245 - 1,Y
loc_D7DC:
C D 2 - - - 0x03D7EC 0F:D7DC: 85 09     STA ram_0009
C - - - - - 0x03D7EE 0F:D7DE: A5 06     LDA ram_0006
C - - - - - 0x03D7F0 0F:D7E0: 29 C0     AND #$C0
C - - - - - 0x03D7F2 0F:D7E2: 85 06     STA ram_0006
C - - - - - 0x03D7F4 0F:D7E4: 0A        ASL
C - - - - - 0x03D7F5 0F:D7E5: 85 07     STA ram_0007
C - - - - - 0x03D7F7 0F:D7E7: A0 00     LDY #$00
C - - - - - 0x03D7F9 0F:D7E9: B1 08     LDA (ram_0008),Y
C - - - - - 0x03D7FB 0F:D7EB: F0 7F     BEQ bra_D86C_RTS
C - - - - - 0x03D7FD 0F:D7ED: 29 7F     AND #$7F
C - - - - - 0x03D7FF 0F:D7EF: 85 03     STA ram_0003
C - - - - - 0x03D801 0F:D7F1: A6 2F     LDX ram_002F
bra_D7F3_loop:
C D 2 - - - 0x03D803 0F:D7F3: C8        INY
loc_D7F4:
C - - - - - 0x03D804 0F:D7F4: B1 08     LDA (ram_0008),Y
C - - - - - 0x03D806 0F:D7F6: C9 80     CMP #$80
C - - - - - 0x03D808 0F:D7F8: F0 73     BEQ bra_D86D_80
C - - - - - 0x03D80A 0F:D7FA: 18        CLC
C - - - - - 0x03D80B 0F:D7FB: 24 06     BIT ram_0006
C - - - - - 0x03D80D 0F:D7FD: 10 06     BPL bra_D805
C - - - - - 0x03D80F 0F:D7FF: 49 FF     EOR #$FF
C - - - - - 0x03D811 0F:D801: 38        SEC
C - - - - - 0x03D812 0F:D802: E9 11     SBC #$11
C - - - - - 0x03D814 0F:D804: 18        CLC
bra_D805:
C - - - - - 0x03D815 0F:D805: 0A        ASL
C - - - - - 0x03D816 0F:D806: 90 07     BCC bra_D80F
C - - - - - 0x03D818 0F:D808: 6A        ROR
C - - - - - 0x03D819 0F:D809: 65 01     ADC ram_0001
C - - - - - 0x03D81B 0F:D80B: B0 09     BCS bra_D816
C - - - - - 0x03D81D 0F:D80D: 90 05     BCC bra_D814
bra_D80F:
C - - - - - 0x03D81F 0F:D80F: 6A        ROR
C - - - - - 0x03D820 0F:D810: 65 01     ADC ram_0001
C - - - - - 0x03D822 0F:D812: 90 02     BCC bra_D816
bra_D814:
C - - - - - 0x03D824 0F:D814: A9 F4     LDA #$F4
bra_D816:
C - - - - - 0x03D826 0F:D816: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x03D829 0F:D819: C8        INY
C - - - - - 0x03D82A 0F:D81A: B1 08     LDA (ram_0008),Y
C - - - - - 0x03D82C 0F:D81C: 05 12     ORA ram_0012
C - - - - - 0x03D82E 0F:D81E: 9D 01 02  STA ram_spr_tile,X
C - - - - - 0x03D831 0F:D821: C8        INY
C - - - - - 0x03D832 0F:D822: A5 00     LDA ram_0000
C - - - - - 0x03D834 0F:D824: 10 0D     BPL bra_D833
C - - - - - 0x03D836 0F:D826: 29 23     AND #$23
C - - - - - 0x03D838 0F:D828: 85 0B     STA ram_000B
C - - - - - 0x03D83A 0F:D82A: B1 08     LDA (ram_0008),Y
C - - - - - 0x03D83C 0F:D82C: 29 FC     AND #$FC
C - - - - - 0x03D83E 0F:D82E: 05 0B     ORA ram_000B
C - - - - - 0x03D840 0F:D830: 4C 35 D8  JMP loc_D835
bra_D833:
C - - - - - 0x03D843 0F:D833: B1 08     LDA (ram_0008),Y
loc_D835:
C D 2 - - - 0x03D845 0F:D835: 45 06     EOR ram_0006
C - - - - - 0x03D847 0F:D837: 9D 02 02  STA ram_spr_attr,X
C - - - - - 0x03D84A 0F:D83A: C8        INY
C - - - - - 0x03D84B 0F:D83B: B1 08     LDA (ram_0008),Y
C - - - - - 0x03D84D 0F:D83D: 24 07     BIT ram_0007
C - - - - - 0x03D84F 0F:D83F: 10 05     BPL bra_D846
C - - - - - 0x03D851 0F:D841: 49 FF     EOR #$FF
C - - - - - 0x03D853 0F:D843: 38        SEC
C - - - - - 0x03D854 0F:D844: E9 09     SBC #$09
bra_D846:
C - - - - - 0x03D856 0F:D846: 0A        ASL
C - - - - - 0x03D857 0F:D847: 90 07     BCC bra_D850
C - - - - - 0x03D859 0F:D849: 6A        ROR
C - - - - - 0x03D85A 0F:D84A: 65 02     ADC ram_0002
C - - - - - 0x03D85C 0F:D84C: B0 0C     BCS bra_D85A
C - - - - - 0x03D85E 0F:D84E: 90 05     BCC bra_D855
bra_D850:
C - - - - - 0x03D860 0F:D850: 6A        ROR
C - - - - - 0x03D861 0F:D851: 65 02     ADC ram_0002
C - - - - - 0x03D863 0F:D853: 90 05     BCC bra_D85A
bra_D855:
C - - - - - 0x03D865 0F:D855: A9 F4     LDA #$F4
C - - - - - 0x03D867 0F:D857: 9D 00 02  STA ram_spr_Y,X
bra_D85A:
C - - - - - 0x03D86A 0F:D85A: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x03D86D 0F:D85D: 8A        TXA
C - - - - - 0x03D86E 0F:D85E: 18        CLC
C - - - - - 0x03D86F 0F:D85F: 69 1C     ADC #$1C
C - - - - - 0x03D871 0F:D861: 85 2F     STA ram_002F
C - - - - - 0x03D873 0F:D863: AA        TAX
C - - - - - 0x03D874 0F:D864: C6 0A     DEC ram_000A
C - - - - - 0x03D876 0F:D866: 30 04     BMI bra_D86C_RTS
C - - - - - 0x03D878 0F:D868: C6 03     DEC ram_0003
C - - - - - 0x03D87A 0F:D86A: D0 87     BNE bra_D7F3_loop
bra_D86C_RTS:
C - - - - - 0x03D87C 0F:D86C: 60        RTS
bra_D86D_80:
; изменение поинтера таблицы
C - - - - - 0x03D87D 0F:D86D: C8        INY
C - - - - - 0x03D87E 0F:D86E: B1 08     LDA (ram_0008),Y
C - - - - - 0x03D880 0F:D870: 48        PHA
C - - - - - 0x03D881 0F:D871: C8        INY
C - - - - - 0x03D882 0F:D872: B1 08     LDA (ram_0008),Y
C - - - - - 0x03D884 0F:D874: 85 09     STA ram_0009
C - - - - - 0x03D886 0F:D876: 68        PLA
C - - - - - 0x03D887 0F:D877: 85 08     STA ram_0008
C - - - - - 0x03D889 0F:D879: A0 FF     LDY #$00
C - - - - - 0x03D88B 0F:D87B: 4C F3 D7  JMP loc_D7F4



tbl_D87E:
- D 2 - - - 0x03D88E 0F:D87E: 01 80     .word tbl_0x028011      ; 00
- D 2 - - - 0x03D890 0F:D880: 01 80     .word tbl_0x028011      ; 01
- D 2 - - - 0x03D892 0F:D882: 01 80     .word tbl_0x028011      ; 02
- D 2 - - - 0x03D894 0F:D884: 01 80     .word tbl_0x028011      ; 03
- D 2 - - - 0x03D896 0F:D886: 13 8E     .word tbl_0x028E23      ; 04
- D 2 - - - 0x03D898 0F:D888: 52 9B     .word tbl_0x029B62      ; 05
- D 2 - - - 0x03D89A 0F:D88A: C5 AE     .word tbl_0x02AED5      ; 06



sub_D900:
C - - - - - 0x03D910 0F:D900: 85 1A     STA ram_001A
C - - - - - 0x03D912 0F:D902: 84 1B     STY ram_001B
C - - - - - 0x03D914 0F:D904: A9 00     LDA #$00
C - - - - - 0x03D916 0F:D906: 85 1C     STA ram_001C
C - - - - - 0x03D918 0F:D908: 85 1D     STA ram_001D
C - - - - - 0x03D91A 0F:D90A: A0 10     LDY #$10
bra_D90C:
C - - - - - 0x03D91C 0F:D90C: 06 18     ASL ram_0018
C - - - - - 0x03D91E 0F:D90E: 26 19     ROL ram_0019
C - - - - - 0x03D920 0F:D910: 26 1C     ROL ram_001C
C - - - - - 0x03D922 0F:D912: 26 1D     ROL ram_001D
C - - - - - 0x03D924 0F:D914: A5 1D     LDA ram_001D
C - - - - - 0x03D926 0F:D916: C5 1B     CMP ram_001B
C - - - - - 0x03D928 0F:D918: D0 04     BNE bra_D91E
C - - - - - 0x03D92A 0F:D91A: A5 1C     LDA ram_001C
C - - - - - 0x03D92C 0F:D91C: C5 1A     CMP ram_001A
bra_D91E:
C - - - - - 0x03D92E 0F:D91E: 90 0E     BCC bra_D92E
C - - - - - 0x03D930 0F:D920: A5 1C     LDA ram_001C
C - - - - - 0x03D932 0F:D922: E5 1A     SBC ram_001A
C - - - - - 0x03D934 0F:D924: 85 1C     STA ram_001C
C - - - - - 0x03D936 0F:D926: A5 1D     LDA ram_001D
C - - - - - 0x03D938 0F:D928: E5 1B     SBC ram_001B
C - - - - - 0x03D93A 0F:D92A: 85 1D     STA ram_001D
C - - - - - 0x03D93C 0F:D92C: E6 18     INC ram_0018
bra_D92E:
C - - - - - 0x03D93E 0F:D92E: 88        DEY
C - - - - - 0x03D93F 0F:D92F: D0 DB     BNE bra_D90C
C - - - - - 0x03D941 0F:D931: 60        RTS



sub_DABE:
.export sub_0x03DACE
sub_0x03DACE:
C - - - - - 0x03DACE 0F:DABE: A2 0F     LDX #$0F
bra_DAC0:
C - - - - - 0x03DAD0 0F:DAC0: 20 D3 DA  JSR sub_DAD3
C - - - - - 0x03DAD3 0F:DAC3: CA        DEX
C - - - - - 0x03DAD4 0F:DAC4: 10 FA     BPL bra_DAC0
C - - - - - 0x03DAD6 0F:DAC6: 60        RTS



sub_DAC7:
.export sub_0x03DAD7
sub_0x03DAD7:
C - - - - - 0x03DAD7 0F:DAC7: 8A        TXA
C - - - - - 0x03DAD8 0F:DAC8: 48        PHA
C - - - - - 0x03DAD9 0F:DAC9: 98        TYA
C - - - - - 0x03DADA 0F:DACA: AA        TAX
C - - - - - 0x03DADB 0F:DACB: 20 D3 DA  JSR sub_DAD3
C - - - - - 0x03DADE 0F:DACE: 8A        TXA
C - - - - - 0x03DADF 0F:DACF: A8        TAY
C - - - - - 0x03DAE0 0F:DAD0: 68        PLA
C - - - - - 0x03DAE1 0F:DAD1: AA        TAX
C - - - - - 0x03DAE2 0F:DAD2: 60        RTS



sub_DAD3:
loc_DAD3:
.export sub_0x03DAE3
sub_0x03DAE3:
.export loc_0x03DAE3
loc_0x03DAE3:
C D 2 - - - 0x03DAE3 0F:DAD3: A9 00     LDA #$00
C - - - - - 0x03DAE5 0F:DAD5: 9D 50 05  STA ram_0550,X
C - - - - - 0x03DAE8 0F:DAD8: A9 00     LDA #$00
C - - - - - 0x03DAEA 0F:DADA: 9D 30 04  STA ram_0430,X
C - - - - - 0x03DAED 0F:DADD: 9D 40 04  STA ram_0440,X
C - - - - - 0x03DAF0 0F:DAE0: 9D 10 04  STA ram_0410,X
C - - - - - 0x03DAF3 0F:DAE3: 9D 50 04  STA ram_0450,X
C - - - - - 0x03DAF6 0F:DAE6: 9D 20 04  STA ram_0420,X
C - - - - - 0x03DAF9 0F:DAE9: 9D 00 04  STA ram_0400,X
C - - - - - 0x03DAFC 0F:DAEC: 9D 00 05  STA ram_0500,X
C - - - - - 0x03DAFF 0F:DAEF: 9D 10 05  STA ram_0510,X
C - - - - - 0x03DB02 0F:DAF2: 9D 20 05  STA ram_0520,X
C - - - - - 0x03DB05 0F:DAF5: 9D 30 05  STA ram_0530,X
C - - - - - 0x03DB08 0F:DAF8: 9D 40 05  STA ram_0540,X
C - - - - - 0x03DB0B 0F:DAFB: 9D 60 05  STA ram_0560,X
C - - - - - 0x03DB0E 0F:DAFE: 9D 70 05  STA ram_0570,X
C - - - - - 0x03DB11 0F:DB01: 9D 80 05  STA ram_0580,X
C - - - - - 0x03DB14 0F:DB04: 9D 90 05  STA ram_0590,X
C - - - - - 0x03DB17 0F:DB07: 9D A0 05  STA ram_05A0,X
C - - - - - 0x03DB1A 0F:DB0A: 9D B0 05  STA ram_05B0,X
C - - - - - 0x03DB1D 0F:DB0D: 9D C0 05  STA ram_05C0,X
C - - - - - 0x03DB20 0F:DB10: 9D D0 05  STA ram_05D0,X
C - - - - - 0x03DB23 0F:DB13: 9D E0 05  STA ram_05E0,X
C - - - - - 0x03DB26 0F:DB16: 9D F0 05  STA ram_05F0,X
C - - - - - 0x03DB29 0F:DB19: 9D A0 04  STA ram_04A0,X
C - - - - - 0x03DB2C 0F:DB1C: 9D B0 04  STA ram_04B0,X
C - - - - - 0x03DB2F 0F:DB1F: 9D C0 04  STA ram_04C0,X
C - - - - - 0x03DB32 0F:DB22: 9D D0 04  STA ram_04D0,X
C - - - - - 0x03DB35 0F:DB25: 9D E0 04  STA ram_04E0,X
C - - - - - 0x03DB38 0F:DB28: 9D F0 04  STA ram_04F0,X
bra_DB2B:
C - - - - - 0x03DB3B 0F:DB2B: 9D 60 04  STA ram_0460,X
C - - - - - 0x03DB3E 0F:DB2E: 9D 70 04  STA ram_0470,X
bra_DB31:
C - - - - - 0x03DB41 0F:DB31: 9D 80 04  STA ram_0480,X
C - - - - - 0x03DB44 0F:DB34: 9D 90 04  STA ram_0490,X
C - - - - - 0x03DB47 0F:DB37: 60        RTS



.export sub_0x03DB48
sub_0x03DB48:
.export loc_0x03DB48
loc_0x03DB48:
C D 2 - - - 0x03DB48 0F:DB38: A9 00     LDA #$00
C - - - - - 0x03DB4A 0F:DB3A: F0 EF     BEQ bra_DB2B



.export sub_0x03DB4C
sub_0x03DB4C:
.export loc_0x03DB4C
loc_0x03DB4C:
C D 2 - - - 0x03DB4C 0F:DB3C: A9 00     LDA #$00
C - - - - - 0x03DB4E 0F:DB3E: F0 F1     BEQ bra_DB31



.export loc_0x03DB50
loc_0x03DB50:
- - - - - - 0x03DB50 0F:DB40: A9 00     LDA #$00
- - - - - - 0x03DB52 0F:DB42: 9D 60 04  STA ram_0460,X
- - - - - - 0x03DB55 0F:DB45: 9D 70 04  STA ram_0470,X
- - - - - - 0x03DB58 0F:DB48: 60        RTS



.export sub_0x03DB59
sub_0x03DB59:
C - - - - - 0x03DB59 0F:DB49: 20 65 DB  JSR sub_DB65
sub_DB4C:
.export sub_0x03DB5C
sub_0x03DB5C:
.export loc_0x03DB5C
loc_0x03DB5C:
C D 2 - - - 0x03DB5C 0F:DB4C: A0 00     LDY #$00
C - - - - - 0x03DB5E 0F:DB4E: 18        CLC
C - - - - - 0x03DB5F 0F:DB4F: BD 70 04  LDA ram_0470,X
C - - - - - 0x03DB62 0F:DB52: 7D 20 04  ADC ram_0420,X
C - - - - - 0x03DB65 0F:DB55: 9D 20 04  STA ram_0420,X
C - - - - - 0x03DB68 0F:DB58: BD 60 04  LDA ram_0460,X
C - - - - - 0x03DB6B 0F:DB5B: 10 01     BPL bra_DB5E
C - - - - - 0x03DB6D 0F:DB5D: 88        DEY
bra_DB5E:
C - - - - - 0x03DB6E 0F:DB5E: 7D 10 04  ADC ram_0410,X
C - - - - - 0x03DB71 0F:DB61: 9D 10 04  STA ram_0410,X
C - - - - - 0x03DB74 0F:DB64: 60        RTS



sub_DB65:
.export sub_0x03DB75
sub_0x03DB75:
C - - - - - 0x03DB75 0F:DB65: A0 00     LDY #$00
C - - - - - 0x03DB77 0F:DB67: 18        CLC
C - - - - - 0x03DB78 0F:DB68: BD 90 04  LDA ram_0490,X
C - - - - - 0x03DB7B 0F:DB6B: 7D 50 04  ADC ram_0450,X
C - - - - - 0x03DB7E 0F:DB6E: 9D 50 04  STA ram_0450,X
C - - - - - 0x03DB81 0F:DB71: BD 80 04  LDA ram_0480,X
C - - - - - 0x03DB84 0F:DB74: 10 01     BPL bra_DB77
C - - - - - 0x03DB86 0F:DB76: 88        DEY
bra_DB77:
C - - - - - 0x03DB87 0F:DB77: 7D 40 04  ADC ram_0440,X
C - - - - - 0x03DB8A 0F:DB7A: 9D 40 04  STA ram_0440,X
C - - - - - 0x03DB8D 0F:DB7D: 98        TYA
C - - - - - 0x03DB8E 0F:DB7E: 7D 30 04  ADC ram_0430,X
C - - - - - 0x03DB91 0F:DB81: 9D 30 04  STA ram_0430,X
C - - - - - 0x03DB94 0F:DB84: 60        RTS



.export sub_0x03DBC5
sub_0x03DBC5:
C - - - - - 0x03DBC5 0F:DBB5: BD 50 04  LDA ram_0450,X
C - - - - - 0x03DBC8 0F:DBB8: 99 50 04  STA ram_0450,Y
C - - - - - 0x03DBCB 0F:DBBB: BD 40 04  LDA ram_0440,X
C - - - - - 0x03DBCE 0F:DBBE: 99 40 04  STA ram_0440,Y
C - - - - - 0x03DBD1 0F:DBC1: BD 30 04  LDA ram_0430,X
C - - - - - 0x03DBD4 0F:DBC4: 99 30 04  STA ram_0430,Y
C - - - - - 0x03DBD7 0F:DBC7: BD 20 04  LDA ram_0420,X
C - - - - - 0x03DBDA 0F:DBCA: 99 20 04  STA ram_0420,Y
C - - - - - 0x03DBDD 0F:DBCD: BD 10 04  LDA ram_0410,X
C - - - - - 0x03DBE0 0F:DBD0: 99 10 04  STA ram_0410,Y
C - - - - - 0x03DBE3 0F:DBD3: 60        RTS



loc_DC04:
.export sub_0x03DC14
sub_0x03DC14:
C D 2 - - - 0x03DC14 0F:DC04: B9 29 DC  LDA tbl_DC29,Y
C - - - - - 0x03DC17 0F:DC07: 85 34     STA ram_0034
C - - - - - 0x03DC19 0F:DC09: B9 2A DC  LDA tbl_DC2A,Y
C - - - - - 0x03DC1C 0F:DC0C: 85 35     STA ram_0035
C - - - - - 0x03DC1E 0F:DC0E: 60        RTS



.export sub_0x03DC1F
sub_0x03DC1F:
C - - - - - 0x03DC1F 0F:DC0F: B9 29 DC  LDA tbl_DC29,Y
C - - - - - 0x03DC22 0F:DC12: 85 36     STA ram_0036
C - - - - - 0x03DC24 0F:DC14: B9 2A DC  LDA tbl_DC2A,Y
C - - - - - 0x03DC27 0F:DC17: 85 37     STA ram_0037
C - - - - - 0x03DC29 0F:DC19: 60        RTS



bra_DC1A:
sub_DC1A:
.export sub_0x03DC2A
sub_0x03DC2A:
C - - - - - 0x03DC2A 0F:DC1A: B9 29 DC  LDA tbl_DC29,Y
C - - - - - 0x03DC2D 0F:DC1D: 85 32     STA ram_0032
C - - - - - 0x03DC2F 0F:DC1F: B9 2A DC  LDA tbl_DC2A,Y
C - - - - - 0x03DC32 0F:DC22: 85 33     STA ram_0033
C - - - - - 0x03DC34 0F:DC24: 60        RTS



loc_DC25:
sub_DC25:
.export sub_0x03DC35
sub_0x03DC35:
C D 2 - - - 0x03DC35 0F:DC25: A0 06     LDY #$06
C - - - - - 0x03DC37 0F:DC27: D0 F1     BNE bra_DC1A



tbl_DC29:
- - - - - - 0x03DC39 0F:DC29: 0D        .byte $0D   ; 
tbl_DC2A:
- - - - - - 0x03DC3A 0F:DC2A: 09        .byte $09   ; 
- D 2 - - - 0x03DC3B 0F:DC2B: 56        .byte $56   ; 
- D 2 - - - 0x03DC3C 0F:DC2C: 54        .byte $54   ; 
- D 2 - - - 0x03DC3D 0F:DC2D: 74        .byte $74   ; 
- D 2 - - - 0x03DC3E 0F:DC2E: 58        .byte $58   ; 
- D 2 - - - 0x03DC3F 0F:DC2F: 7C        .byte $7C   ; 
- D 2 - - - 0x03DC40 0F:DC30: 7E        .byte $7E   ; 
- D 2 - - - 0x03DC41 0F:DC31: 50        .byte $50   ; 
- D 2 - - - 0x03DC42 0F:DC32: 51        .byte $51   ; 
- D 2 - - - 0x03DC43 0F:DC33: 48        .byte $48   ; 
- D 2 - - - 0x03DC44 0F:DC34: 4A        .byte $4A   ; 
- D 2 - - - 0x03DC45 0F:DC35: 10        .byte $10   ; 
- D 2 - - - 0x03DC46 0F:DC36: 12        .byte $12   ; 
- D 2 - - - 0x03DC47 0F:DC37: 52        .byte $52   ; 
- D 2 - - - 0x03DC48 0F:DC38: 53        .byte $53   ; 
- - - - - - 0x03DC49 0F:DC39: 5C        .byte $5C   ; 
- - - - - - 0x03DC4A 0F:DC3A: 5E        .byte $5E   ; 
- D 2 - - - 0x03DC4B 0F:DC3B: 5A        .byte $5A   ; 
- D 2 - - - 0x03DC4C 0F:DC3C: 58        .byte $58   ; 
- D 2 - - - 0x03DC4D 0F:DC3D: 70        .byte $70   ; 
- D 2 - - - 0x03DC4E 0F:DC3E: 76        .byte $76   ; 
- D 2 - - - 0x03DC4F 0F:DC3F: 22        .byte $22   ; 
- D 2 - - - 0x03DC50 0F:DC40: 24        .byte $24   ; 
- D 2 - - - 0x03DC51 0F:DC41: 26        .byte $26   ; 
- D 2 - - - 0x03DC52 0F:DC42: 27        .byte $27   ; 
- D 2 - - - 0x03DC53 0F:DC43: 57        .byte $57   ; 
- D 2 - - - 0x03DC54 0F:DC44: 55        .byte $55   ; 
- D 2 - - - 0x03DC55 0F:DC45: 7C        .byte $7C   ; 
- D 2 - - - 0x03DC56 0F:DC46: 72        .byte $72   ; 
- D 2 - - - 0x03DC57 0F:DC47: 4C        .byte $4C   ; 
- D 2 - - - 0x03DC58 0F:DC48: 4E        .byte $4E   ; 
- D 2 - - - 0x03DC59 0F:DC49: 36        .byte $36   ; 
- D 2 - - - 0x03DC5A 0F:DC4A: 34        .byte $34   ; 



loc_DC54:
.export sub_0x03DC64
sub_0x03DC64:
.export loc_0x03DC64
loc_0x03DC64:
C D 2 - - - 0x03DC64 0F:DC54: A0 FF     LDY #$FF
C - - - - - 0x03DC66 0F:DC56: D0 02     BNE bra_DC5A



bra_DC58:
loc_DC58:
.export sub_0x03DC68
sub_0x03DC68:
.export loc_0x03DC68
loc_0x03DC68:
C D 2 - - - 0x03DC68 0F:DC58: A0 00     LDY #$00
bra_DC5A:
C - - - - - 0x03DC6A 0F:DC5A: 18        CLC
C - - - - - 0x03DC6B 0F:DC5B: 7D 70 04  ADC ram_0470,X
C - - - - - 0x03DC6E 0F:DC5E: 9D 70 04  STA ram_0470,X
C - - - - - 0x03DC71 0F:DC61: 98        TYA
C - - - - - 0x03DC72 0F:DC62: 7D 60 04  ADC ram_0460,X
C - - - - - 0x03DC75 0F:DC65: 9D 60 04  STA ram_0460,X
C - - - - - 0x03DC78 0F:DC68: 60        RTS



.export sub_0x03DC79
sub_0x03DC79:
C - - - - - 0x03DC79 0F:DC69: BD 60 04  LDA ram_0460,X
C - - - - - 0x03DC7C 0F:DC6C: 30 07     BMI bra_DC75
C - - - - - 0x03DC7E 0F:DC6E: A9 AF     LDA #$AF
C - - - - - 0x03DC80 0F:DC70: DD 10 04  CMP ram_0410,X
C - - - - - 0x03DC83 0F:DC73: 90 0F     BCC bra_DC84
bra_DC75:
C - - - - - 0x03DC85 0F:DC75: 20 92 DC  JSR sub_DC92
C - - - - - 0x03DC88 0F:DC78: BD 60 04  LDA ram_0460,X
C - - - - - 0x03DC8B 0F:DC7B: 30 13     BMI bra_DC90
C - - - - - 0x03DC8D 0F:DC7D: A9 AF     LDA #$AF
C - - - - - 0x03DC8F 0F:DC7F: DD 10 04  CMP ram_0410,X
C - - - - - 0x03DC92 0F:DC82: B0 0C     BCS bra_DC90
bra_DC84:
C - - - - - 0x03DC94 0F:DC84: A9 B0     LDA #$B0
C - - - - - 0x03DC96 0F:DC86: 9D 10 04  STA ram_0410,X
C - - - - - 0x03DC99 0F:DC89: A9 00     LDA #$00
C - - - - - 0x03DC9B 0F:DC8B: 20 D3 DC  JSR sub_DCD3
C - - - - - 0x03DC9E 0F:DC8E: 38        SEC
C - - - - - 0x03DC9F 0F:DC8F: 60        RTS
bra_DC90:
C - - - - - 0x03DCA0 0F:DC90: 18        CLC
C - - - - - 0x03DCA1 0F:DC91: 60        RTS



sub_DC92:
.export sub_0x03DCA2
sub_0x03DCA2:
C - - - - - 0x03DCA2 0F:DC92: AD 26 01  LDA ram_option_speed
C - - - - - 0x03DCA5 0F:DC95: F0 04     BEQ bra_DC9B
C - - - - - 0x03DCA7 0F:DC97: A9 80     LDA #$80
C - - - - - 0x03DCA9 0F:DC99: D0 BD     BNE bra_DC58
bra_DC9B:
C - - - - - 0x03DCAB 0F:DC9B: A9 50     LDA #$50
C - - - - - 0x03DCAD 0F:DC9D: D0 B9     BNE bra_DC58



.export sub_0x03DCC1
sub_0x03DCC1:
C - - - - - 0x03DCC1 0F:DCB1: 18        CLC
C - - - - - 0x03DCC2 0F:DCB2: 7D 90 04  ADC ram_0490,X
C - - - - - 0x03DCC5 0F:DCB5: 9D 90 04  STA ram_0490,X
C - - - - - 0x03DCC8 0F:DCB8: 98        TYA
C - - - - - 0x03DCC9 0F:DCB9: 7D 80 04  ADC ram_0480,X
C - - - - - 0x03DCCC 0F:DCBC: 9D 80 04  STA ram_0480,X
C - - - - - 0x03DCCF 0F:DCBF: 60        RTS



sub_DCD3:
.export sub_0x03DCE3
sub_0x03DCE3:
C - - - - - 0x03DCE3 0F:DCD3: A8        TAY
C - - - - - 0x03DCE4 0F:DCD4: 29 0F     AND #$0F
.export sub_0x03DCE6
sub_0x03DCE6:
C - - - - - 0x03DCE6 0F:DCD6: 9D 60 04  STA ram_0460,X
C - - - - - 0x03DCE9 0F:DCD9: 98        TYA
C - - - - - 0x03DCEA 0F:DCDA: 29 F0     AND #$F0
C - - - - - 0x03DCEC 0F:DCDC: 9D 70 04  STA ram_0470,X
C - - - - - 0x03DCEF 0F:DCDF: 60        RTS



.export sub_0x03DCF0
sub_0x03DCF0:
.export loc_0x03DCF0
loc_0x03DCF0:
C D 2 - - - 0x03DCF0 0F:DCE0: A8        TAY
C - - - - - 0x03DCF1 0F:DCE1: 29 0F     AND #$0F
C - - - - - 0x03DCF3 0F:DCE3: 9D 80 04  STA ram_0480,X
C - - - - - 0x03DCF6 0F:DCE6: 98        TYA
C - - - - - 0x03DCF7 0F:DCE7: 29 F0     AND #$F0
C - - - - - 0x03DCF9 0F:DCE9: 9D 90 04  STA ram_0490,X
C - - - - - 0x03DCFC 0F:DCEC: 60        RTS



.export sub_0x03DCFD
sub_0x03DCFD:
C - - - - - 0x03DCFD 0F:DCED: A9 B0     LDA #$B0
C - - - - - 0x03DCFF 0F:DCEF: DD 10 04  CMP ram_0410,X
C - - - - - 0x03DD02 0F:DCF2: B0 03     BCS bra_DCF7_RTS
C - - - - - 0x03DD04 0F:DCF4: 9D 10 04  STA ram_0410,X
bra_DCF7_RTS:
C - - - - - 0x03DD07 0F:DCF7: 60        RTS



.export sub_0x03DD0A
sub_0x03DD0A:
C - - - - - 0x03DD0A 0F:DCFA: A5 2A     LDA ram_002A
C - - - - - 0x03DD0C 0F:DCFC: 29 03     AND #$03
C - - - - - 0x03DD0E 0F:DCFE: 09 80     ORA #$80
C - - - - - 0x03DD10 0F:DD00: 9D 00 05  STA ram_0500,X
C - - - - - 0x03DD13 0F:DD03: 60        RTS



.export sub_0x03DD14
sub_0x03DD14:
C - - - - - 0x03DD14 0F:DD04: BD 40 04  LDA ram_0440,X
C - - - - - 0x03DD17 0F:DD07: 4A        LSR
C - - - - - 0x03DD18 0F:DD08: 29 40     AND #$40
C - - - - - 0x03DD1A 0F:DD0A: 85 00     STA ram_0000
C - - - - - 0x03DD1C 0F:DD0C: BD 10 05  LDA ram_0510,X
C - - - - - 0x03DD1F 0F:DD0F: 29 BF     AND #$BF
C D 2 - - - 0x03DD6F 0F:DD5F: 05 00     ORA ram_0000
C - - - - - 0x03DD71 0F:DD61: 9D 10 05  STA ram_0510,X
C - - - - - 0x03DD74 0F:DD64: 60        RTS



sub_DD65:
.export sub_0x03DD75
sub_0x03DD75:
.export loc_0x03DD75
loc_0x03DD75:
C D 2 - - - 0x03DD75 0F:DD65: BD 10 05  LDA ram_0510,X
C - - - - - 0x03DD78 0F:DD68: 49 40     EOR #$40
C - - - - - 0x03DD7A 0F:DD6A: 9D 10 05  STA ram_0510,X
C - - - - - 0x03DD7D 0F:DD6D: 60        RTS



loc_DD6E:
.export sub_0x03DD7E
sub_0x03DD7E:
C D 2 - - - 0x03DD7E 0F:DD6E: A5 FF     LDA ram_00FF
C - - - - - 0x03DD80 0F:DD70: 29 FC     AND #$FC
C - - - - - 0x03DD82 0F:DD72: 85 FF     STA ram_00FF
C - - - - - 0x03DD84 0F:DD74: A9 00     LDA #$00
C - - - - - 0x03DD86 0F:DD76: 85 FC     STA ram_00FC
C - - - - - 0x03DD88 0F:DD78: 85 FD     STA ram_00FD
C - - - - - 0x03DD8A 0F:DD7A: 85 A6     STA ram_00A6
C - - - - - 0x03DD8C 0F:DD7C: 85 A7     STA ram_00A7
C - - - - - 0x03DD8E 0F:DD7E: 60        RTS



.export sub_0x03DD96
sub_0x03DD96:
C - - - - - 0x03DD96 0F:DD86: BD 80 04  LDA ram_0480,X
C - - - - - 0x03DD99 0F:DD89: 59 80 04  EOR ram_0480,Y
C - - - - - 0x03DD9C 0F:DD8C: 30 1A     BMI bra_DDA8
C - - - - - 0x03DD9E 0F:DD8E: BD 80 04  LDA ram_0480,X
C - - - - - 0x03DDA1 0F:DD91: D9 80 04  CMP ram_0480,Y
C - - - - - 0x03DDA4 0F:DD94: D0 06     BNE bra_DD9C
C - - - - - 0x03DDA6 0F:DD96: BD 90 04  LDA ram_0490,X
C - - - - - 0x03DDA9 0F:DD99: D9 90 04  CMP ram_0490,Y
bra_DD9C:
C - - - - - 0x03DDAC 0F:DD9C: BD 80 04  LDA ram_0480,X
C - - - - - 0x03DDAF 0F:DD9F: 10 04     BPL bra_DDA5
C - - - - - 0x03DDB1 0F:DDA1: 6A        ROR
C - - - - - 0x03DDB2 0F:DDA2: 49 80     EOR #$80
C - - - - - 0x03DDB4 0F:DDA4: 2A        ROL
bra_DDA5:
C - - - - - 0x03DDB5 0F:DDA5: A9 00     LDA #$00
C - - - - - 0x03DDB7 0F:DDA7: 60        RTS
bra_DDA8:
C - - - - - 0x03DDB8 0F:DDA8: A9 80     LDA #$80
C - - - - - 0x03DDBA 0F:DDAA: 60        RTS



.export sub_0x03DDBB
sub_0x03DDBB:
C - - - - - 0x03DDBB 0F:DDAB: A9 01     LDA #$01
C - - - - - 0x03DDBD 0F:DDAD: 8D 36 05  STA ram_0536
C - - - - - 0x03DDC0 0F:DDB0: A9 04     LDA #$04
C - - - - - 0x03DDC2 0F:DDB2: 8D A6 04  STA ram_04A6
C - - - - - 0x03DDC5 0F:DDB5: 60        RTS



.export tbl_0x03DDC6
tbl_0x03DDC6:
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



.export sub_0x03DDF9
sub_0x03DDF9:
.export loc_0x03DDF9
loc_0x03DDF9:
C D 2 - - - 0x03DDF9 0F:DDE9: A9 07     LDA #$07
C - - - - - 0x03DDFB 0F:DDEB: 9D 20 05  STA ram_0520,X
C - - - - - 0x03DDFE 0F:DDEE: A9 01     LDA #$01
C - - - - - 0x03DE00 0F:DDF0: 9D 40 05  STA ram_0540,X
C - - - - - 0x03DE03 0F:DDF3: A9 00     LDA #$00
C - - - - - 0x03DE05 0F:DDF5: 9D 7A 06  STA ram_067A,X
C - - - - - 0x03DE08 0F:DDF8: 9D 60 05  STA ram_0560,X
C - - - - - 0x03DE0B 0F:DDFB: 60        RTS



.export sub_0x03DE0C
sub_0x03DE0C:
C - - - - - 0x03DE0C 0F:DDFC: 8A        TXA
C - - - - - 0x03DE0D 0F:DDFD: 48        PHA
C - - - - - 0x03DE0E 0F:DDFE: 09 04     ORA #$04
C - - - - - 0x03DE10 0F:DE00: AA        TAX
C - - - - - 0x03DE11 0F:DE01: B5 9E     LDA ram_009E,X
C - - - - - 0x03DE13 0F:DE03: 20 2A E3  JSR sub_E32A
C - - - - - 0x03DE16 0F:DE06: 68        PLA
C - - - - - 0x03DE17 0F:DE07: AA        TAX
C - - - - - 0x03DE18 0F:DE08: 60        RTS



sub_DE09:
.export sub_0x03DE19
sub_0x03DE19:
.export loc_0x03DE19
loc_0x03DE19:
C D 2 - - - 0x03DE19 0F:DE09: 20 16 DE  JSR sub_DE16
C - - - - - 0x03DE1C 0F:DE0C: A2 03     LDX #$03
C - - - - - 0x03DE1E 0F:DE0E: A9 00     LDA #$00
bra_DE10:
C - - - - - 0x03DE20 0F:DE10: 95 AE     STA ram_00AE,X
C - - - - - 0x03DE22 0F:DE12: CA        DEX
C - - - - - 0x03DE23 0F:DE13: 10 FB     BPL bra_DE10
C - - - - - 0x03DE25 0F:DE15: 60        RTS



sub_DE16:
loc_DE16:
C D 2 - - - 0x03DE26 0F:DE16: A2 03     LDX #$03
C - - - - - 0x03DE28 0F:DE18: A9 00     LDA #$00
bra_DE1A:
C - - - - - 0x03DE2A 0F:DE1A: 95 B2     STA ram_00B2,X
C - - - - - 0x03DE2C 0F:DE1C: CA        DEX
C - - - - - 0x03DE2D 0F:DE1D: 10 FB     BPL bra_DE1A
C - - - - - 0x03DE2F 0F:DE1F: 60        RTS



sub_DE20:
.export sub_0x03DE30
sub_0x03DE30:
.export loc_0x03DE30
loc_0x03DE30:
C D 2 - - - 0x03DE30 0F:DE20: 8A        TXA
C - - - - - 0x03DE31 0F:DE21: 29 01     AND #$01
C - - - - - 0x03DE33 0F:DE23: 18        CLC
C - - - - - 0x03DE34 0F:DE24: 69 02     ADC #$02
C - - - - - 0x03DE36 0F:DE26: A8        TAY
bra_DE27:
C - - - - - 0x03DE37 0F:DE27: 20 C7 DA  JSR sub_DAC7
C - - - - - 0x03DE3A 0F:DE2A: C8        INY
C - - - - - 0x03DE3B 0F:DE2B: C8        INY
C - - - - - 0x03DE3C 0F:DE2C: C0 0E     CPY #$0E
C - - - - - 0x03DE3E 0F:DE2E: B0 0B     BCS bra_DE3B_RTS
C - - - - - 0x03DE40 0F:DE30: 98        TYA
C - - - - - 0x03DE41 0F:DE31: 29 FE     AND #$FE
C - - - - - 0x03DE43 0F:DE33: C9 06     CMP #$06
C - - - - - 0x03DE45 0F:DE35: D0 F0     BNE bra_DE27
C - - - - - 0x03DE47 0F:DE37: C8        INY
C - - - - - 0x03DE48 0F:DE38: C8        INY
C - - - - - 0x03DE49 0F:DE39: D0 EC     BNE bra_DE27
bra_DE3B_RTS:
C - - - - - 0x03DE4B 0F:DE3B: 60        RTS



.export sub_0x03DE4C
sub_0x03DE4C:
C - - - - - 0x03DE4C 0F:DE3C: A0 00     LDY #$00
C - - - - - 0x03DE4E 0F:DE3E: 84 19     STY ram_0019
C - - - - - 0x03DE50 0F:DE40: 0A        ASL
C - - - - - 0x03DE51 0F:DE41: 26 19     ROL ram_0019
C - - - - - 0x03DE53 0F:DE43: 0A        ASL
C - - - - - 0x03DE54 0F:DE44: 26 19     ROL ram_0019
C - - - - - 0x03DE56 0F:DE46: 0A        ASL
C - - - - - 0x03DE57 0F:DE47: 26 19     ROL ram_0019
C - - - - - 0x03DE59 0F:DE49: 0A        ASL
C - - - - - 0x03DE5A 0F:DE4A: 26 19     ROL ram_0019
C - - - - - 0x03DE5C 0F:DE4C: 85 18     STA ram_0018
C - - - - - 0x03DE5E 0F:DE4E: B5 A0     LDA ram_00A0,X
C - - - - - 0x03DE60 0F:DE50: 0A        ASL
C - - - - - 0x03DE61 0F:DE51: BC 50 05  LDY ram_0550,X
C - - - - - 0x03DE64 0F:DE54: 18        CLC
C - - - - - 0x03DE65 0F:DE55: 79 3B F1  ADC tbl_F13B,Y
C - - - - - 0x03DE68 0F:DE58: BC 20 05  LDY ram_0520,X
C - - - - - 0x03DE6B 0F:DE5B: C0 0A     CPY #$0A
C - - - - - 0x03DE6D 0F:DE5D: D0 08     BNE bra_DE67
C - - - - - 0x03DE6F 0F:DE5F: 48        PHA
C - - - - - 0x03DE70 0F:DE60: 20 E7 F5  JSR sub_F5E7_prg_bank_0B
C - - - - - 0x03DE73 0F:DE63: 4C 00 AB  JMP loc_0x02EB10


ofs_DE66:
.export ofs_0x03DE76
ofs_0x03DE76 = ofs_DE66 - 1
C - - - - - 0x03DE76 0F:DE66: 68        PLA
bra_DE67:
C - - - - - 0x03DE77 0F:DE67: A0 00     LDY #$00
C - - - - - 0x03DE79 0F:DE69: 20 00 D9  JSR sub_D900
C - - - - - 0x03DE7C 0F:DE6C: A5 18     LDA ram_0018
C - - - - - 0x03DE7E 0F:DE6E: D0 02     BNE bra_DE72_RTS
C - - - - - 0x03DE80 0F:DE70: A9 03     LDA #$03
bra_DE72_RTS:
C - - - - - 0x03DE82 0F:DE72: 60        RTS



.export sub_0x03DE87
sub_0x03DE87:
C - - - - - 0x03DE87 0F:DE77: 20 A2 DE  JSR sub_DEA2
loc_DE7A:
C D 2 - - - 0x03DE8A 0F:DE7A: B0 3D     BCS bra_DEB9_RTS
.export sub_0x03DE8C
sub_0x03DE8C:
C - - - - - 0x03DE8C 0F:DE7C: 68        PLA
C - - - - - 0x03DE8D 0F:DE7D: 68        PLA
C - - - - - 0x03DE8E 0F:DE7E: A9 04     LDA #$04
C - - - - - 0x03DE90 0F:DE80: 9D 30 05  STA ram_0530,X
C - - - - - 0x03DE93 0F:DE83: A9 80     LDA #$80
C - - - - - 0x03DE95 0F:DE85: 9D 80 05  STA ram_0580,X
C - - - - - 0x03DE98 0F:DE88: 0A        ASL
C - - - - - 0x03DE99 0F:DE89: 9D 20 05  STA ram_0520,X
C - - - - - 0x03DE9C 0F:DE8C: 9D 40 05  STA ram_0540,X
C - - - - - 0x03DE9F 0F:DE8F: 8D 0E 04  STA ram_040E
C - - - - - 0x03DEA2 0F:DE92: 8D 0F 04  STA ram_040F
C - - - - - 0x03DEA5 0F:DE95: A5 00     LDA ram_0000
C - - - - - 0x03DEA7 0F:DE97: 9D E0 04  STA ram_04E0,X
C - - - - - 0x03DEAA 0F:DE9A: 20 C2 F6  JSR sub_F6C2
C - - - - - 0x03DEAD 0F:DE9D: A9 1C     LDA #$1C
C - - - - - 0x03DEAF 0F:DE9F: 4C 94 F6  JMP loc_F694



sub_DEA2:
.export sub_0x03DEB2
sub_0x03DEB2:
C - - - - - 0x03DEB2 0F:DEA2: 18        CLC
C - - - - - 0x03DEB3 0F:DEA3: 7D 45 06  ADC ram_0645,X
C - - - - - 0x03DEB6 0F:DEA6: 9D 45 06  STA ram_0645,X
bra_DEA9:
C - - - - - 0x03DEB9 0F:DEA9: A9 00     LDA #$00
bra_DEAB:
C - - - - - 0x03DEBB 0F:DEAB: 85 00     STA ram_0000
C - - - - - 0x03DEBD 0F:DEAD: A9 00     LDA #$00
C - - - - - 0x03DEBF 0F:DEAF: 9D F0 05  STA ram_05F0,X
C - - - - - 0x03DEC2 0F:DEB2: 38        SEC
C - - - - - 0x03DEC3 0F:DEB3: BD 90 05  LDA ram_0590,X
C - - - - - 0x03DEC6 0F:DEB6: FD 45 06  SBC ram_0645,X
bra_DEB9_RTS:
C - - - - - 0x03DEC9 0F:DEB9: 60        RTS



.export sub_0x03DECA
sub_0x03DECA:
C - - - - - 0x03DECA 0F:DEBA: 20 C0 DE  JSR sub_DEC0
C - - - - - 0x03DECD 0F:DEBD: 4C 7A DE  JMP loc_DE7A



sub_DEC0:
C - - - - - 0x03DED0 0F:DEC0: 18        CLC
C - - - - - 0x03DED1 0F:DEC1: 7D 45 06  ADC ram_0645,X
C - - - - - 0x03DED4 0F:DEC4: 9D 45 06  STA ram_0645,X
C - - - - - 0x03DED7 0F:DEC7: A4 A9     LDY ram_00A9
C - - - - - 0x03DED9 0F:DEC9: B9 50 05  LDA ram_0550,Y
C - - - - - 0x03DEDC 0F:DECC: C9 04     CMP #$04
C - - - - - 0x03DEDE 0F:DECE: F0 D9     BEQ bra_DEA9
C - - - - - 0x03DEE0 0F:DED0: A9 80     LDA #$80
C - - - - - 0x03DEE2 0F:DED2: D0 D7     BNE bra_DEAB



.export sub_0x03DEE4
sub_0x03DEE4:
C - - - - - 0x03DEE4 0F:DED4: 48        PHA
C - - - - - 0x03DEE5 0F:DED5: 8A        TXA
C - - - - - 0x03DEE6 0F:DED6: 29 01     AND #$01
C - - - - - 0x03DEE8 0F:DED8: A8        TAY
C - - - - - 0x03DEE9 0F:DED9: B9 40 04  LDA ram_0440,Y
C - - - - - 0x03DEEC 0F:DEDC: 99 4C 04  STA ram_044C,Y
C - - - - - 0x03DEEF 0F:DEDF: B9 10 04  LDA ram_0410,Y
C - - - - - 0x03DEF2 0F:DEE2: 99 1C 04  STA ram_041C,Y
C - - - - - 0x03DEF5 0F:DEE5: B9 10 05  LDA ram_0510,Y
C - - - - - 0x03DEF8 0F:DEE8: 99 1C 05  STA ram_051C,Y
C - - - - - 0x03DEFB 0F:DEEB: BD 20 05  LDA ram_0520,X
C - - - - - 0x03DEFE 0F:DEEE: C9 03     CMP #$03
C - - - - - 0x03DF00 0F:DEF0: D0 04     BNE bra_DEF6
- - - - - - 0x03DF02 0F:DEF2: 68        PLA
- - - - - - 0x03DF03 0F:DEF3: A9 00     LDA #$00
- - - - - - 0x03DF05 0F:DEF5: 48        PHA
bra_DEF6:
C - - - - - 0x03DF06 0F:DEF6: 68        PLA
C - - - - - 0x03DF07 0F:DEF7: 99 0C 04  STA ram_040C,Y
C - - - - - 0x03DF0A 0F:DEFA: 60        RTS



.export sub_0x03DF0B
sub_0x03DF0B:
C - - - - - 0x03DF0B 0F:DEFB: A9 E8     LDA #$E8
C - - - - - 0x03DF0D 0F:DEFD: DD 40 04  CMP ram_0440,X
C - - - - - 0x03DF10 0F:DF00: 90 07     BCC bra_DF09
C - - - - - 0x03DF12 0F:DF02: A9 18     LDA #$18
C - - - - - 0x03DF14 0F:DF04: DD 40 04  CMP ram_0440,X
C - - - - - 0x03DF17 0F:DF07: 90 03     BCC bra_DF0C_RTS
bra_DF09:
C - - - - - 0x03DF19 0F:DF09: 9D 40 04  STA ram_0440,X
bra_DF0C_RTS:
C - - - - - 0x03DF1C 0F:DF0C: 60        RTS



.export sub_0x03DF1D
sub_0x03DF1D:
C - - - - - 0x03DF1D 0F:DF0D: DD 10 04  CMP ram_0410,X
C - - - - - 0x03DF20 0F:DF10: 98        TYA
C - - - - - 0x03DF21 0F:DF11: 90 03     BCC bra_DF16
C - - - - - 0x03DF23 0F:DF13: 4C 58 DC  JMP loc_DC58
bra_DF16:
C - - - - - 0x03DF26 0F:DF16: 20 FC D1  JSR sub_D1FC
C - - - - - 0x03DF29 0F:DF19: 4C 54 DC  JMP loc_DC54



.export tbl_0x03DF2C
tbl_0x03DF2C:
- D 2 - - - 0x03DF2C 0F:DF1C: 07        .byte $07   ; 00
- D 2 - - - 0x03DF2D 0F:DF1D: 06        .byte $06   ; 01
- D 2 - - - 0x03DF2E 0F:DF1E: 08        .byte $08   ; 02
- D 2 - - - 0x03DF2F 0F:DF1F: 07        .byte $07   ; 03
- D 2 - - - 0x03DF30 0F:DF20: 09        .byte $09   ; 04
- D 2 - - - 0x03DF31 0F:DF21: 07        .byte $07   ; 05
- D 2 - - - 0x03DF32 0F:DF22: 08        .byte $08   ; 06



.export sub_0x03DF33
sub_0x03DF33:
C - - - - - 0x03DF33 0F:DF23: BC 50 05  LDY ram_0550,X
C - - - - - 0x03DF36 0F:DF26: B9 41 DF  LDA tbl_DF41,Y
C - - - - - 0x03DF39 0F:DF29: A8        TAY
C - - - - - 0x03DF3A 0F:DF2A: 20 4F DF  JSR sub_DF4F
C - - - - - 0x03DF3D 0F:DF2D: BD C0 05  LDA ram_05C0,X
C - - - - - 0x03DF40 0F:DF30: 10 0E     BPL bra_DF40_RTS
C - - - - - 0x03DF42 0F:DF32: BC 50 05  LDY ram_0550,X
C - - - - - 0x03DF45 0F:DF35: B9 48 DF  LDA tbl_DF48,Y
sub_DF38:
loc_DF38:
.export sub_0x03DF48
sub_0x03DF48:
.export loc_0x03DF48
loc_0x03DF48:
C D 2 - - - 0x03DF48 0F:DF38: 9D D0 05  STA ram_05D0,X
C - - - - - 0x03DF4B 0F:DF3B: A9 00     LDA #$00
C - - - - - 0x03DF4D 0F:DF3D: 9D C0 05  STA ram_05C0,X
bra_DF40_RTS:
C - - - - - 0x03DF50 0F:DF40: 60        RTS



tbl_DF41:
- D 2 - - - 0x03DF51 0F:DF41: 0E        .byte $0E   ; 00
- D 2 - - - 0x03DF52 0F:DF42: 0E        .byte $0E   ; 01
- D 2 - - - 0x03DF53 0F:DF43: 0E        .byte $0E   ; 02
- D 2 - - - 0x03DF54 0F:DF44: 0E        .byte $0E   ; 03
- D 2 - - - 0x03DF55 0F:DF45: 0F        .byte $0F   ; 04
- D 2 - - - 0x03DF56 0F:DF46: 10        .byte $10   ; 05
- D 2 - - - 0x03DF57 0F:DF47: 11        .byte $11   ; 06

tbl_DF48:
- D 2 - - - 0x03DF58 0F:DF48: 04        .byte $04   ; 00
- D 2 - - - 0x03DF59 0F:DF49: 04        .byte $04   ; 01
- D 2 - - - 0x03DF5A 0F:DF4A: 04        .byte $04   ; 02
- D 2 - - - 0x03DF5B 0F:DF4B: 04        .byte $04   ; 03
- D 2 - - - 0x03DF5C 0F:DF4C: 02        .byte $02   ; 04
- D 2 - - - 0x03DF5D 0F:DF4D: 04        .byte $04   ; 05
- D 2 - - - 0x03DF5E 0F:DF4E: 04        .byte $04   ; 06



sub_DF4F:
.export sub_0x03DF5F
sub_0x03DF5F:
.export loc_0x03DF5F
loc_0x03DF5F:
C D 2 - - - 0x03DF5F 0F:DF4F: 84 00     STY ram_0000
C - - - - - 0x03DF61 0F:DF51: DE C0 05  DEC ram_05C0,X
C - - - - - 0x03DF64 0F:DF54: 10 2F     BPL bra_DF85
C - - - - - 0x03DF66 0F:DF56: BD D0 05  LDA ram_05D0,X
C - - - - - 0x03DF69 0F:DF59: F0 2A     BEQ bra_DF85
loc_DF5B:
C D 2 - - - 0x03DF6B 0F:DF5B: DE D0 05  DEC ram_05D0,X
C - - - - - 0x03DF6E 0F:DF5E: BD D0 05  LDA ram_05D0,X
C - - - - - 0x03DF71 0F:DF61: 0A        ASL
C - - - - - 0x03DF72 0F:DF62: 79 E6 DF  ADC tbl_DFE6,Y
C - - - - - 0x03DF75 0F:DF65: A8        TAY
C - - - - - 0x03DF76 0F:DF66: B9 01 E0  LDA tbl_E000 + 1,Y
C - - - - - 0x03DF79 0F:DF69: 9D C0 05  STA ram_05C0,X
C - - - - - 0x03DF7C 0F:DF6C: A5 00     LDA ram_0000
C - - - - - 0x03DF7E 0F:DF6E: C9 04     CMP #$04
C - - - - - 0x03DF80 0F:DF70: 90 04     BCC bra_DF76
C - - - - - 0x03DF82 0F:DF72: C9 0B     CMP #$0B
C - - - - - 0x03DF84 0F:DF74: 90 0F     BCC bra_DF85
bra_DF76:
C - - - - - 0x03DF86 0F:DF76: AC 26 01  LDY ram_option_speed
C - - - - - 0x03DF89 0F:DF79: F0 0A     BEQ bra_DF85
C - - - - - 0x03DF8B 0F:DF7B: 85 01     STA ram_0001
C - - - - - 0x03DF8D 0F:DF7D: 46 01     LSR ram_0001
C - - - - - 0x03DF8F 0F:DF7F: 38        SEC
C - - - - - 0x03DF90 0F:DF80: E5 01     SBC ram_0001
C - - - - - 0x03DF92 0F:DF82: 9D C0 05  STA ram_05C0,X
bra_DF85:
C - - - - - 0x03DF95 0F:DF85: A4 00     LDY ram_0000
C - - - - - 0x03DF97 0F:DF87: BD D0 05  LDA ram_05D0,X
C - - - - - 0x03DF9A 0F:DF8A: 0A        ASL
C - - - - - 0x03DF9B 0F:DF8B: 79 E6 DF  ADC tbl_DFE6,Y
C - - - - - 0x03DF9E 0F:DF8E: A8        TAY
C - - - - - 0x03DF9F 0F:DF8F: B9 00 E0  LDA tbl_E000,Y
C - - - - - 0x03DFA2 0F:DF92: F0 04     BEQ bra_DF98
.export loc_0x03DFA4
loc_0x03DFA4:
C D 2 - - - 0x03DFA4 0F:DF94: 9D 00 04  STA ram_0400,X
C - - - - - 0x03DFA7 0F:DF97: 60        RTS
bra_DF98:
C - - - - - 0x03DFA8 0F:DF98: B9 01 E0  LDA tbl_E000 + 1,Y
C - - - - - 0x03DFAB 0F:DF9B: 20 90 F6  JSR sub_F690
C - - - - - 0x03DFAE 0F:DF9E: A4 00     LDY ram_0000
C - - - - - 0x03DFB0 0F:DFA0: 4C 5B DF  JMP loc_DF5B



sub_DFA3:
.export sub_0x03DFB3
sub_0x03DFB3:
C - - - - - 0x03DFB3 0F:DFA3: 20 A9 DF  JSR sub_DFA9
C - - - - - 0x03DFB6 0F:DFA6: 4C 51 F7  JMP loc_F751



sub_DFA9:
C - - - - - 0x03DFB9 0F:DFA9: BC 50 05  LDY ram_0550,X
C - - - - - 0x03DFBC 0F:DFAC: B9 00 E1  LDA tbl_E100,Y
C - - - - - 0x03DFBF 0F:DFAF: 20 38 DF  JSR sub_DF38
C - - - - - 0x03DFC2 0F:DFB2: A9 00     LDA #$00
C - - - - - 0x03DFC4 0F:DFB4: 8D 0D 04  STA ram_040D
C - - - - - 0x03DFC7 0F:DFB7: A5 95     LDA ram_0095
C - - - - - 0x03DFC9 0F:DFB9: C9 10     CMP #$10
C - - - - - 0x03DFCB 0F:DFBB: B0 1F     BCS bra_DFDC_RTS
C - - - - - 0x03DFCD 0F:DFBD: 8A        TXA
C - - - - - 0x03DFCE 0F:DFBE: 48        PHA
C - - - - - 0x03DFCF 0F:DFBF: A9 01     LDA #$01
C - - - - - 0x03DFD1 0F:DFC1: 85 18     STA ram_0018
bra_DFC3:
C - - - - - 0x03DFD3 0F:DFC3: A6 18     LDX ram_0018
C - - - - - 0x03DFD5 0F:DFC5: 8A        TXA
C - - - - - 0x03DFD6 0F:DFC6: 09 80     ORA #$80
C - - - - - 0x03DFD8 0F:DFC8: 9D 00 05  STA ram_0500,X
C - - - - - 0x03DFDB 0F:DFCB: 8A        TXA
C - - - - - 0x03DFDC 0F:DFCC: 18        CLC
C - - - - - 0x03DFDD 0F:DFCD: 69 04     ADC #$04
C - - - - - 0x03DFDF 0F:DFCF: AA        TAX
C - - - - - 0x03DFE0 0F:DFD0: BD 4C 05  LDA ram_054C,X
C - - - - - 0x03DFE3 0F:DFD3: 20 2A E3  JSR sub_E32A
C - - - - - 0x03DFE6 0F:DFD6: C6 18     DEC ram_0018
C - - - - - 0x03DFE8 0F:DFD8: 10 E9     BPL bra_DFC3
C - - - - - 0x03DFEA 0F:DFDA: 68        PLA
C - - - - - 0x03DFEB 0F:DFDB: AA        TAX
bra_DFDC_RTS:
C - - - - - 0x03DFEC 0F:DFDC: 60        RTS



sub_DFDD:
C - - - - - 0x03DFED 0F:DFDD: BC 50 05  LDY ram_0550,X
C - - - - - 0x03DFF0 0F:DFE0: B9 07 E1  LDA tbl_E107,Y
C - - - - - 0x03DFF3 0F:DFE3: 4C 38 DF  JMP loc_DF38



tbl_DFE6:
- D 2 - - - 0x03DFF6 0F:DFE6: 00        .byte off_E000 - tbl_E000   ; 00
- D 2 - - - 0x03DFF7 0F:DFE7: 06        .byte off_E006 - tbl_E000   ; 01
- D 2 - - - 0x03DFF8 0F:DFE8: 12        .byte off_E012 - tbl_E000   ; 02
- D 2 - - - 0x03DFF9 0F:DFE9: 1E        .byte off_E01E - tbl_E000   ; 03
- D 2 - - - 0x03DFFA 0F:DFEA: 26        .byte off_E026 - tbl_E000   ; 04
- D 2 - - - 0x03DFFB 0F:DFEB: 3A        .byte off_E03A - tbl_E000   ; 05
- D 2 - - - 0x03DFFC 0F:DFEC: 58        .byte off_E058 - tbl_E000   ; 06
- D 2 - - - 0x03DFFD 0F:DFED: 58        .byte off_E058 - tbl_E000   ; 07
- D 2 - - - 0x03DFFE 0F:DFEE: 6A        .byte off_E06A - tbl_E000   ; 08
- D 2 - - - 0x03DFFF 0F:DFEF: 76        .byte off_E076 - tbl_E000   ; 09
- D 2 - - - 0x03E000 0F:DFF0: 9C        .byte off_E09C - tbl_E000   ; 0A
- D 2 - - - 0x03E001 0F:DFF1: A6        .byte off_E0A6 - tbl_E000   ; 0B
- D 2 - - - 0x03E002 0F:DFF2: AA        .byte off_E0AA - tbl_E000   ; 0C
- D 2 - - - 0x03E003 0F:DFF3: B6        .byte off_E0B6 - tbl_E000   ; 0D
- D 2 - - - 0x03E004 0F:DFF4: C2        .byte off_E0C2 - tbl_E000   ; 0E
- D 2 - - - 0x03E005 0F:DFF5: CA        .byte off_E0CA - tbl_E000   ; 0F
- D 2 - - - 0x03E006 0F:DFF6: CE        .byte off_E0CE - tbl_E000   ; 10
- D 2 - - - 0x03E007 0F:DFF7: D6        .byte off_E0D6 - tbl_E000   ; 11
- D 2 - - - 0x03E008 0F:DFF8: DE        .byte off_E0DE - tbl_E000   ; 12
- D 2 - - - 0x03E009 0F:DFF9: E4        .byte off_E0E4 - tbl_E000   ; 13
- D 2 - - - 0x03E00A 0F:DFFA: E4        .byte off_E0E4 - tbl_E000   ; 14
- D 2 - - - 0x03E00B 0F:DFFB: E4        .byte off_E0E4 - tbl_E000   ; 15
- D 2 - - - 0x03E00C 0F:DFFC: E4        .byte off_E0E4 - tbl_E000   ; 16
- D 2 - - - 0x03E00D 0F:DFFD: EE        .byte off_E0EE - tbl_E000   ; 17
- D 2 - - - 0x03E00E 0F:DFFE: F2        .byte off_E0F2 - tbl_E000   ; 18
- D 2 - - - 0x03E00F 0F:DFFF: F8        .byte off_E0F8 - tbl_E000   ; 19



tbl_E000:
off_E000:
- D 3 - - - 0x03E010 0F:E000: 99        .byte $99   ; 
- D 3 - - - 0x03E011 0F:E001: 04        .byte $04   ; 
- D 3 - - - 0x03E012 0F:E002: D1        .byte $D1   ; 
- D 3 - - - 0x03E013 0F:E003: 06        .byte $06   ; 
- D 3 - - - 0x03E014 0F:E004: 9D        .byte $9D   ; 
- D 3 - - - 0x03E015 0F:E005: 06        .byte $06   ; 

off_E006:
- D 3 - - - 0x03E016 0F:E006: 99        .byte $99   ; 
- D 3 - - - 0x03E017 0F:E007: 09        .byte $09   ; 
- D 3 - - - 0x03E018 0F:E008: D0        .byte $D0   ; 
- D 3 - - - 0x03E019 0F:E009: 08        .byte $08   ; 
- D 3 - - - 0x03E01A 0F:E00A: D4        .byte $D4   ; 
- D 3 - - - 0x03E01B 0F:E00B: 08        .byte $08   ; 
- D 3 - - - 0x03E01C 0F:E00C: D5        .byte $D5   ; 
- D 3 - - - 0x03E01D 0F:E00D: 08        .byte $08   ; 
- D 3 - - - 0x03E01E 0F:E00E: AE        .byte $AE   ; 
- D 3 - - - 0x03E01F 0F:E00F: 08        .byte $08   ; 
- D 3 - - - 0x03E020 0F:E010: A6        .byte $A6   ; 
- D 3 - - - 0x03E021 0F:E011: 10        .byte $10   ; 

off_E012:
- D 3 - - - 0x03E022 0F:E012: D1        .byte $D1   ; 
- D 3 - - - 0x03E023 0F:E013: 10        .byte $10   ; 
- D 3 - - - 0x03E024 0F:E014: D1        .byte $D1   ; 
- D 3 - - - 0x03E025 0F:E015: 06        .byte $06   ; 
- D 3 - - - 0x03E026 0F:E016: 9D        .byte $9D   ; 
- D 3 - - - 0x03E027 0F:E017: 0A        .byte $0A   ; 
- D 3 - - - 0x03E028 0F:E018: D5        .byte $D5   ; 
- D 3 - - - 0x03E029 0F:E019: 06        .byte $06   ; 
- D 3 - - - 0x03E02A 0F:E01A: D4        .byte $D4   ; 
- D 3 - - - 0x03E02B 0F:E01B: 0A        .byte $0A   ; 
- D 3 - - - 0x03E02C 0F:E01C: A0        .byte $A0   ; 
- D 3 - - - 0x03E02D 0F:E01D: 04        .byte $04   ; 

off_E01E:
- - - - - - 0x03E02E 0F:E01E: 9F        .byte $9F   ; 
- - - - - - 0x03E02F 0F:E01F: 08        .byte $08   ; 
- - - - - - 0x03E030 0F:E020: 9F        .byte $9F   ; 
- - - - - - 0x03E031 0F:E021: 05        .byte $05   ; 
- D 3 - - - 0x03E032 0F:E022: 9E        .byte $9E   ; 
- D 3 - - - 0x03E033 0F:E023: 05        .byte $05   ; 
- D 3 - - - 0x03E034 0F:E024: 9D        .byte $9D   ; 
- D 3 - - - 0x03E035 0F:E025: 05        .byte $05   ; 

off_E026:
- D 3 - - - 0x03E036 0F:E026: DD        .byte $DD   ; 
- D 3 - - - 0x03E037 0F:E027: 08        .byte $08   ; 
- D 3 - - - 0x03E038 0F:E028: DC        .byte $DC   ; 
- D 3 - - - 0x03E039 0F:E029: 08        .byte $08   ; 
- D 3 - - - 0x03E03A 0F:E02A: DB        .byte $DB   ; 
- D 3 - - - 0x03E03B 0F:E02B: 08        .byte $08   ; 
- D 3 - - - 0x03E03C 0F:E02C: 99        .byte $99   ; 
- D 3 - - - 0x03E03D 0F:E02D: 0A        .byte $0A   ; 
- D 3 - - - 0x03E03E 0F:E02E: D0        .byte $D0   ; 
- D 3 - - - 0x03E03F 0F:E02F: 08        .byte $08   ; 
- D 3 - - - 0x03E040 0F:E030: 9D        .byte $9D   ; 
- D 3 - - - 0x03E041 0F:E031: 08        .byte $08   ; 
- D 3 - - - 0x03E042 0F:E032: D5        .byte $D5   ; 
- D 3 - - - 0x03E043 0F:E033: 08        .byte $08   ; 
- D 3 - - - 0x03E044 0F:E034: D4        .byte $D4   ; 
- D 3 - - - 0x03E045 0F:E035: 08        .byte $08   ; 
- D 3 - - - 0x03E046 0F:E036: 00        .byte $00   ; 
- D 3 - - - 0x03E047 0F:E037: 04        .byte $04   ; 
- D 3 - - - 0x03E048 0F:E038: 99        .byte $99   ; 
- D 3 - - - 0x03E049 0F:E039: 08        .byte $08   ; 

off_E03A:
- D 3 - - - 0x03E04A 0F:E03A: DD        .byte $DD   ; 
- D 3 - - - 0x03E04B 0F:E03B: 08        .byte $08   ; 
- D 3 - - - 0x03E04C 0F:E03C: 00        .byte $00   ; 
- D 3 - - - 0x03E04D 0F:E03D: 04        .byte $04   ; 
- D 3 - - - 0x03E04E 0F:E03E: DC        .byte $DC   ; 
- D 3 - - - 0x03E04F 0F:E03F: 08        .byte $08   ; 
- D 3 - - - 0x03E050 0F:E040: 8D        .byte $8D   ; 
- D 3 - - - 0x03E051 0F:E041: 04        .byte $04   ; 
- D 3 - - - 0x03E052 0F:E042: 00        .byte $00   ; 
- D 3 - - - 0x03E053 0F:E043: 06        .byte $06   ; 
- D 3 - - - 0x03E054 0F:E044: 8F        .byte $8F   ; 
- D 3 - - - 0x03E055 0F:E045: 06        .byte $06   ; 
- D 3 - - - 0x03E056 0F:E046: 8D        .byte $8D   ; 
- D 3 - - - 0x03E057 0F:E047: 04        .byte $04   ; 
- D 3 - - - 0x03E058 0F:E048: 00        .byte $00   ; 
- D 3 - - - 0x03E059 0F:E049: 06        .byte $06   ; 
- D 3 - - - 0x03E05A 0F:E04A: 8F        .byte $8F   ; 
- D 3 - - - 0x03E05B 0F:E04B: 06        .byte $06   ; 
- D 3 - - - 0x03E05C 0F:E04C: 8D        .byte $8D   ; 
- D 3 - - - 0x03E05D 0F:E04D: 04        .byte $04   ; 
- D 3 - - - 0x03E05E 0F:E04E: 00        .byte $00   ; 
- D 3 - - - 0x03E05F 0F:E04F: 06        .byte $06   ; 
- D 3 - - - 0x03E060 0F:E050: 8F        .byte $8F   ; 
- D 3 - - - 0x03E061 0F:E051: 06        .byte $06   ; 
- D 3 - - - 0x03E062 0F:E052: 8D        .byte $8D   ; 
- D 3 - - - 0x03E063 0F:E053: 04        .byte $04   ; 
- D 3 - - - 0x03E064 0F:E054: 00        .byte $00   ; 
- D 3 - - - 0x03E065 0F:E055: 06        .byte $06   ; 
- D 3 - - - 0x03E066 0F:E056: 8F        .byte $8F   ; 
- D 3 - - - 0x03E067 0F:E057: 08        .byte $08   ; 

off_E058:
- D 3 - - - 0x03E068 0F:E058: D2        .byte $D2   ; 
- D 3 - - - 0x03E069 0F:E059: 10        .byte $10   ; 
- D 3 - - - 0x03E06A 0F:E05A: 9C        .byte $9C   ; 
- D 3 - - - 0x03E06B 0F:E05B: 08        .byte $08   ; 
- D 3 - - - 0x03E06C 0F:E05C: D3        .byte $D3   ; 
- D 3 - - - 0x03E06D 0F:E05D: 10        .byte $10   ; 
- D 3 - - - 0x03E06E 0F:E05E: 9C        .byte $9C   ; 
- D 3 - - - 0x03E06F 0F:E05F: 08        .byte $08   ; 
- D 3 - - - 0x03E070 0F:E060: D2        .byte $D2   ; 
- D 3 - - - 0x03E071 0F:E061: 10        .byte $10   ; 
- D 3 - - - 0x03E072 0F:E062: 9C        .byte $9C   ; 
- D 3 - - - 0x03E073 0F:E063: 08        .byte $08   ; 
- D 3 - - - 0x03E074 0F:E064: D3        .byte $D3   ; 
- D 3 - - - 0x03E075 0F:E065: 10        .byte $10   ; 
- D 3 - - - 0x03E076 0F:E066: 9C        .byte $9C   ; 
- D 3 - - - 0x03E077 0F:E067: 08        .byte $08   ; 
- D 3 - - - 0x03E078 0F:E068: D2        .byte $D2   ; 
- D 3 - - - 0x03E079 0F:E069: 10        .byte $10   ; 

off_E06A:
- D 3 - - - 0x03E07A 0F:E06A: D0        .byte $D0   ; 
- D 3 - - - 0x03E07B 0F:E06B: 08        .byte $08   ; 
- D 3 - - - 0x03E07C 0F:E06C: D1        .byte $D1   ; 
- D 3 - - - 0x03E07D 0F:E06D: 08        .byte $08   ; 
- D 3 - - - 0x03E07E 0F:E06E: D0        .byte $D0   ; 
- D 3 - - - 0x03E07F 0F:E06F: 08        .byte $08   ; 
- D 3 - - - 0x03E080 0F:E070: CF        .byte $CF   ; 
- D 3 - - - 0x03E081 0F:E071: 08        .byte $08   ; 
- D 3 - - - 0x03E082 0F:E072: 00        .byte $00   ; 
- D 3 - - - 0x03E083 0F:E073: 06        .byte $06   ; 
- D 3 - - - 0x03E084 0F:E074: 8B        .byte $8B   ; 
- D 3 - - - 0x03E085 0F:E075: 08        .byte $08   ; 

off_E076:
- D 3 - - - 0x03E086 0F:E076: BF        .byte $BF   ; 
- D 3 - - - 0x03E087 0F:E077: 08        .byte $08   ; 
- D 3 - - - 0x03E088 0F:E078: BE        .byte $BE   ; 
- D 3 - - - 0x03E089 0F:E079: 08        .byte $08   ; 
- D 3 - - - 0x03E08A 0F:E07A: BF        .byte $BF   ; 
- D 3 - - - 0x03E08B 0F:E07B: 08        .byte $08   ; 
- D 3 - - - 0x03E08C 0F:E07C: BE        .byte $BE   ; 
- D 3 - - - 0x03E08D 0F:E07D: 08        .byte $08   ; 
- D 3 - - - 0x03E08E 0F:E07E: BF        .byte $BF   ; 
- D 3 - - - 0x03E08F 0F:E07F: 08        .byte $08   ; 
- D 3 - - - 0x03E090 0F:E080: BE        .byte $BE   ; 
- D 3 - - - 0x03E091 0F:E081: 08        .byte $08   ; 
- D 3 - - - 0x03E092 0F:E082: BF        .byte $BF   ; 
- D 3 - - - 0x03E093 0F:E083: 08        .byte $08   ; 
- D 3 - - - 0x03E094 0F:E084: BE        .byte $BE   ; 
- D 3 - - - 0x03E095 0F:E085: 08        .byte $08   ; 
- D 3 - - - 0x03E096 0F:E086: BD        .byte $BD   ; 
- D 3 - - - 0x03E097 0F:E087: 08        .byte $08   ; 
- D 3 - - - 0x03E098 0F:E088: BE        .byte $BE   ; 
- D 3 - - - 0x03E099 0F:E089: 08        .byte $08   ; 
- D 3 - - - 0x03E09A 0F:E08A: BC        .byte $BC   ; 
- D 3 - - - 0x03E09B 0F:E08B: 08        .byte $08   ; 
- D 3 - - - 0x03E09C 0F:E08C: BE        .byte $BE   ; 
- D 3 - - - 0x03E09D 0F:E08D: 08        .byte $08   ; 
- D 3 - - - 0x03E09E 0F:E08E: BD        .byte $BD   ; 
- D 3 - - - 0x03E09F 0F:E08F: 08        .byte $08   ; 
- D 3 - - - 0x03E0A0 0F:E090: BE        .byte $BE   ; 
- D 3 - - - 0x03E0A1 0F:E091: 08        .byte $08   ; 
- D 3 - - - 0x03E0A2 0F:E092: BC        .byte $BC   ; 
- D 3 - - - 0x03E0A3 0F:E093: 08        .byte $08   ; 
- D 3 - - - 0x03E0A4 0F:E094: BE        .byte $BE   ; 
- D 3 - - - 0x03E0A5 0F:E095: 08        .byte $08   ; 
- D 3 - - - 0x03E0A6 0F:E096: BD        .byte $BD   ; 
- D 3 - - - 0x03E0A7 0F:E097: 08        .byte $08   ; 
- D 3 - - - 0x03E0A8 0F:E098: BE        .byte $BE   ; 
- D 3 - - - 0x03E0A9 0F:E099: 08        .byte $08   ; 
- D 3 - - - 0x03E0AA 0F:E09A: BC        .byte $BC   ; 
- D 3 - - - 0x03E0AB 0F:E09B: 08        .byte $08   ; 

off_E09C:
- D 3 - - - 0x03E0AC 0F:E09C: C7        .byte $C7   ; 
- D 3 - - - 0x03E0AD 0F:E09D: 0C        .byte $0C   ; 
- D 3 - - - 0x03E0AE 0F:E09E: C6        .byte $C6   ; 
- D 3 - - - 0x03E0AF 0F:E09F: 0C        .byte $0C   ; 
- D 3 - - - 0x03E0B0 0F:E0A0: C5        .byte $C5   ; 
- D 3 - - - 0x03E0B1 0F:E0A1: 0C        .byte $0C   ; 
- D 3 - - - 0x03E0B2 0F:E0A2: 00        .byte $00   ; 
- D 3 - - - 0x03E0B3 0F:E0A3: 06        .byte $06   ; 
- D 3 - - - 0x03E0B4 0F:E0A4: C4        .byte $C4   ; 
- D 3 - - - 0x03E0B5 0F:E0A5: 0C        .byte $0C   ; 

off_E0A6:
- D 3 - - - 0x03E0B6 0F:E0A6: 9A        .byte $9A   ; 
- D 3 - - - 0x03E0B7 0F:E0A7: 07        .byte $07   ; 
- D 3 - - - 0x03E0B8 0F:E0A8: B9        .byte $B9   ; 
- D 3 - - - 0x03E0B9 0F:E0A9: 04        .byte $04   ; 

off_E0AA:
- D 3 - - - 0x03E0BA 0F:E0AA: A2        .byte $A2   ; 
- D 3 - - - 0x03E0BB 0F:E0AB: 06        .byte $06   ; 
- D 3 - - - 0x03E0BC 0F:E0AC: CA        .byte $CA   ; 
- D 3 - - - 0x03E0BD 0F:E0AD: 06        .byte $06   ; 
- D 3 - - - 0x03E0BE 0F:E0AE: A6        .byte $A6   ; 
- D 3 - - - 0x03E0BF 0F:E0AF: 06        .byte $06   ; 
- D 3 - - - 0x03E0C0 0F:E0B0: A6        .byte $A6   ; 
- D 3 - - - 0x03E0C1 0F:E0B1: 06        .byte $06   ; 
- D 3 - - - 0x03E0C2 0F:E0B2: A7        .byte $A7   ; 
- D 3 - - - 0x03E0C3 0F:E0B3: 06        .byte $06   ; 
- D 3 - - - 0x03E0C4 0F:E0B4: A7        .byte $A7   ; 
- D 3 - - - 0x03E0C5 0F:E0B5: 06        .byte $06   ; 

off_E0B6:
- D 3 - - - 0x03E0C6 0F:E0B6: C4        .byte $C4   ; 
- D 3 - - - 0x03E0C7 0F:E0B7: 04        .byte $04   ; 
- D 3 - - - 0x03E0C8 0F:E0B8: C3        .byte $C3   ; 
- D 3 - - - 0x03E0C9 0F:E0B9: 04        .byte $04   ; 
- D 3 - - - 0x03E0CA 0F:E0BA: C2        .byte $C2   ; 
- D 3 - - - 0x03E0CB 0F:E0BB: 04        .byte $04   ; 
- D 3 - - - 0x03E0CC 0F:E0BC: C4        .byte $C4   ; 
- D 3 - - - 0x03E0CD 0F:E0BD: 04        .byte $04   ; 
- D 3 - - - 0x03E0CE 0F:E0BE: C3        .byte $C3   ; 
- D 3 - - - 0x03E0CF 0F:E0BF: 04        .byte $04   ; 
- D 3 - - - 0x03E0D0 0F:E0C0: C2        .byte $C2   ; 
- D 3 - - - 0x03E0D1 0F:E0C1: 04        .byte $04   ; 

off_E0C2:
- D 3 - - - 0x03E0D2 0F:E0C2: 88        .byte $88   ; 
- D 3 - - - 0x03E0D3 0F:E0C3: 06        .byte $06   ; 
- D 3 - - - 0x03E0D4 0F:E0C4: D1        .byte $D1   ; 
- D 3 - - - 0x03E0D5 0F:E0C5: 0A        .byte $0A   ; 
- D 3 - - - 0x03E0D6 0F:E0C6: 88        .byte $88   ; 
- D 3 - - - 0x03E0D7 0F:E0C7: 06        .byte $06   ; 
- D 3 - - - 0x03E0D8 0F:E0C8: D0        .byte $D0   ; 
- D 3 - - - 0x03E0D9 0F:E0C9: 0A        .byte $0A   ; 

off_E0CA:
- D 3 - - - 0x03E0DA 0F:E0CA: CD        .byte $CD   ; 
- D 3 - - - 0x03E0DB 0F:E0CB: 12        .byte $12   ; 
- D 3 - - - 0x03E0DC 0F:E0CC: CC        .byte $CC   ; 
- D 3 - - - 0x03E0DD 0F:E0CD: 10        .byte $10   ; 

off_E0CE:
- D 3 - - - 0x03E0DE 0F:E0CE: 8C        .byte $8C   ; 
- D 3 - - - 0x03E0DF 0F:E0CF: 05        .byte $05   ; 
- D 3 - - - 0x03E0E0 0F:E0D0: B9        .byte $B9   ; 
- D 3 - - - 0x03E0E1 0F:E0D1: 0E        .byte $0E   ; 
- D 3 - - - 0x03E0E2 0F:E0D2: 8C        .byte $8C   ; 
- D 3 - - - 0x03E0E3 0F:E0D3: 05        .byte $05   ; 
- D 3 - - - 0x03E0E4 0F:E0D4: B8        .byte $B8   ; 
- D 3 - - - 0x03E0E5 0F:E0D5: 0E        .byte $0E   ; 

off_E0D6:
- D 3 - - - 0x03E0E6 0F:E0D6: 82        .byte $82   ; 
- D 3 - - - 0x03E0E7 0F:E0D7: 06        .byte $06   ; 
- D 3 - - - 0x03E0E8 0F:E0D8: C9        .byte $C9   ; 
- D 3 - - - 0x03E0E9 0F:E0D9: 0D        .byte $0D   ; 
- D 3 - - - 0x03E0EA 0F:E0DA: 82        .byte $82   ; 
- D 3 - - - 0x03E0EB 0F:E0DB: 06        .byte $06   ; 
- D 3 - - - 0x03E0EC 0F:E0DC: C8        .byte $C8   ; 
- D 3 - - - 0x03E0ED 0F:E0DD: 0D        .byte $0D   ; 

off_E0DE:
- D 3 - - - 0x03E0EE 0F:E0DE: B1        .byte $B1   ; 
- D 3 - - - 0x03E0EF 0F:E0DF: 10        .byte $10   ; 
- D 3 - - - 0x03E0F0 0F:E0E0: AA        .byte $AA   ; 
- D 3 - - - 0x03E0F1 0F:E0E1: 0A        .byte $0A   ; 
- D 3 - - - 0x03E0F2 0F:E0E2: D8        .byte $D8   ; 
- D 3 - - - 0x03E0F3 0F:E0E3: 0A        .byte $0A   ; 

off_E0E4:
- D 3 - - - 0x03E0F4 0F:E0E4: CF        .byte $CF   ; 
- D 3 - - - 0x03E0F5 0F:E0E5: 10        .byte $10   ; 
- D 3 - - - 0x03E0F6 0F:E0E6: CE        .byte $CE   ; 
- D 3 - - - 0x03E0F7 0F:E0E7: 0A        .byte $0A   ; 
- D 3 - - - 0x03E0F8 0F:E0E8: CF        .byte $CF   ; 
- D 3 - - - 0x03E0F9 0F:E0E9: 0A        .byte $0A   ; 
- D 3 - - - 0x03E0FA 0F:E0EA: CE        .byte $CE   ; 
- D 3 - - - 0x03E0FB 0F:E0EB: 0A        .byte $0A   ; 
- D 3 - - - 0x03E0FC 0F:E0EC: D0        .byte $D0   ; 
- D 3 - - - 0x03E0FD 0F:E0ED: 0A        .byte $0A   ; 

off_E0EE:
- D 3 - - - 0x03E0FE 0F:E0EE: CE        .byte $CE   ; 
- D 3 - - - 0x03E0FF 0F:E0EF: 10        .byte $10   ; 
- D 3 - - - 0x03E100 0F:E0F0: CD        .byte $CD   ; 
- D 3 - - - 0x03E101 0F:E0F1: 10        .byte $10   ; 

off_E0F2:
- D 3 - - - 0x03E102 0F:E0F2: BB        .byte $BB   ; 
- D 3 - - - 0x03E103 0F:E0F3: 10        .byte $10   ; 
- D 3 - - - 0x03E104 0F:E0F4: BA        .byte $BA   ; 
- D 3 - - - 0x03E105 0F:E0F5: 10        .byte $10   ; 
- D 3 - - - 0x03E106 0F:E0F6: B9        .byte $B9   ; 
- D 3 - - - 0x03E107 0F:E0F7: 10        .byte $10   ; 

off_E0F8:
- D 3 - - - 0x03E108 0F:E0F8: CA        .byte $CA   ; 
- D 3 - - - 0x03E109 0F:E0F9: 10        .byte $10   ; 
- D 3 - - - 0x03E10A 0F:E0FA: AA        .byte $AA   ; 
- D 3 - - - 0x03E10B 0F:E0FB: 10        .byte $10   ; 
- D 3 - - - 0x03E10C 0F:E0FC: C8        .byte $C8   ; 
- D 3 - - - 0x03E10D 0F:E0FD: 10        .byte $10   ; 
- D 3 - - - 0x03E10E 0F:E0FE: C9        .byte $C9   ; 
- D 3 - - - 0x03E10F 0F:E0FF: 10        .byte $10   ; 



tbl_E100:
- D 3 - - - 0x03E110 0F:E100: 0A        .byte $0A   ; 00
- D 3 - - - 0x03E111 0F:E101: 0F        .byte $0F   ; 01
- D 3 - - - 0x03E112 0F:E102: 09        .byte $09   ; 02
- D 3 - - - 0x03E113 0F:E103: 09        .byte $09   ; 03
- D 3 - - - 0x03E114 0F:E104: 06        .byte $06   ; 04
- D 3 - - - 0x03E115 0F:E105: 13        .byte $13   ; 05
- D 3 - - - 0x03E116 0F:E106: 05        .byte $05   ; 06



tbl_E107:
- D 3 - - - 0x03E117 0F:E107: 05        .byte $05   ; 00
- D 3 - - - 0x03E118 0F:E108: 05        .byte $05   ; 01
- D 3 - - - 0x03E119 0F:E109: 05        .byte $05   ; 02
- D 3 - - - 0x03E11A 0F:E10A: 05        .byte $05   ; 03
- D 3 - - - 0x03E11B 0F:E10B: 02        .byte $02   ; 04
- D 3 - - - 0x03E11C 0F:E10C: 03        .byte $03   ; 05
- D 3 - - - 0x03E11D 0F:E10D: 04        .byte $04   ; 06



sub_E10E:
.export sub_0x03E11E
sub_0x03E11E:
C - - - - - 0x03E11E 0F:E10E: 84 1E     STY ram_001E
C - - - - - 0x03E120 0F:E110: AC 26 01  LDY ram_option_speed
C - - - - - 0x03E123 0F:E113: F0 16     BEQ bra_E12B
C - - - - - 0x03E125 0F:E115: A4 95     LDY ram_0095
C - - - - - 0x03E127 0F:E117: C0 07     CPY #$07
C - - - - - 0x03E129 0F:E119: D0 10     BNE bra_E12B
C - - - - - 0x03E12B 0F:E11B: 0A        ASL
C - - - - - 0x03E12C 0F:E11C: 85 18     STA ram_0018
C - - - - - 0x03E12E 0F:E11E: A9 00     LDA #$00
C - - - - - 0x03E130 0F:E120: 85 19     STA ram_0019
C - - - - - 0x03E132 0F:E122: A9 03     LDA #$03
C - - - - - 0x03E134 0F:E124: A0 00     LDY #$00
C - - - - - 0x03E136 0F:E126: 20 00 D9  JSR sub_D900
C - - - - - 0x03E139 0F:E129: A5 18     LDA ram_0018
bra_E12B:
C - - - - - 0x03E13B 0F:E12B: A4 1E     LDY ram_001E
C - - - - - 0x03E13D 0F:E12D: 60        RTS



loc_E12E:
sub_E12E:
.export loc_0x03E13E
loc_0x03E13E:
C D 3 - - - 0x03E13E 0F:E12E: A9 80     LDA #$80
C - - - - - 0x03E140 0F:E130: 85 30     STA ram_0030
C - - - - - 0x03E142 0F:E132: 0A        ASL
loc_E133:
C D 3 - - - 0x03E143 0F:E133: A9 00     LDA #$00
C - - - - - 0x03E145 0F:E135: 8D 6D 06  STA ram_066D
C - - - - - 0x03E148 0F:E138: 8D 02 06  STA ram_0602
C - - - - - 0x03E14B 0F:E13B: 85 A4     STA ram_00A4
C - - - - - 0x03E14D 0F:E13D: 60        RTS



sub_E13E:
loc_E13E:
.export sub_0x03E14E
sub_0x03E14E:
.export loc_0x03E14E
loc_0x03E14E:
C D 3 - - - 0x03E14E 0F:E13E: A9 40     LDA #$40
C - - - - - 0x03E150 0F:E140: 2C        .byte $2C
loc_E141:
.export sub_0x03E151
sub_0x03E151:
.export loc_0x03E151
loc_0x03E151:
C - - - - - 0x03E151 0F:E141: A9 01     LDA #$01
bra_E143:
C - - - - - 0x03E153 0F:E143: 85 30     STA ram_0030
C - - - - - 0x03E155 0F:E145: 4C 33 E1  JMP loc_E133
sub_E148:
C - - - - - 0x03E158 0F:E148: A9 20     LDA #$20
C - - - - - 0x03E15A 0F:E14A: D0 F7     BNE bra_E143



.export sub_0x03E15C
sub_0x03E15C:
C - - - - - 0x03E15C 0F:E14C: AC 26 01  LDY ram_option_speed
C - - - - - 0x03E15F 0F:E14F: F0 0C     BEQ bra_E15D_RTS
C - - - - - 0x03E161 0F:E151: A4 95     LDY ram_0095
C - - - - - 0x03E163 0F:E153: C0 07     CPY #$07
C - - - - - 0x03E165 0F:E155: D0 06     BNE bra_E15D_RTS
C - - - - - 0x03E167 0F:E157: 85 00     STA ram_0000
C - - - - - 0x03E169 0F:E159: 4A        LSR
C - - - - - 0x03E16A 0F:E15A: 18        CLC
C - - - - - 0x03E16B 0F:E15B: 65 00     ADC ram_0000
bra_E15D_RTS:
C - - - - - 0x03E16D 0F:E15D: 60        RTS



.export tbl_0x03E16E
tbl_0x03E16E:
- D 3 - - - 0x03E16E 0F:E15E: 53        .byte $53   ; 00
- D 3 - - - 0x03E16F 0F:E15F: 53        .byte $53   ; 01
- D 3 - - - 0x03E170 0F:E160: 53        .byte $53   ; 02
- D 3 - - - 0x03E171 0F:E161: 53        .byte $53   ; 03
- D 3 - - - 0x03E172 0F:E162: 55        .byte $55   ; 04
- D 3 - - - 0x03E173 0F:E163: 59        .byte $59   ; 05
- D 3 - - - 0x03E174 0F:E164: 52        .byte $52   ; 06



sub_E165:
C - - - - - 0x03E175 0F:E165: EE 11 01  INC ram_0111
C - - - - - 0x03E178 0F:E168: 38        SEC
C - - - - - 0x03E179 0F:E169: AD 11 01  LDA ram_0111
C - - - - - 0x03E17C 0F:E16C: E9 0A     SBC #$0A
C - - - - - 0x03E17E 0F:E16E: 90 16     BCC bra_E186_RTS
C - - - - - 0x03E180 0F:E170: 8D 11 01  STA ram_0111
C - - - - - 0x03E183 0F:E173: EE 12 01  INC ram_0112
C - - - - - 0x03E186 0F:E176: 38        SEC
C - - - - - 0x03E187 0F:E177: AD 12 01  LDA ram_0112
C - - - - - 0x03E18A 0F:E17A: E9 0A     SBC #$0A
C - - - - - 0x03E18C 0F:E17C: 90 08     BCC bra_E186_RTS
- - - - - - 0x03E18E 0F:E17E: 8D 12 01  STA ram_0112
- - - - - - 0x03E191 0F:E181: A9 01     LDA #$01
- - - - - - 0x03E193 0F:E183: 8D 11 01  STA ram_0111
bra_E186_RTS:
C - - - - - 0x03E196 0F:E186: 60        RTS



sub_E187:
C - - - - - 0x03E197 0F:E187: A5 95     LDA ram_0095
C - - - - - 0x03E199 0F:E189: 20 32 D0  JSR sub_D032
- D 3 - I - 0x03E19C 0F:E18C: CE E1     .word ofs_E1CE_00
- D 3 - I - 0x03E19E 0F:E18E: FD E1     .word ofs_E1FD_01
- D 3 - I - 0x03E1A0 0F:E190: E7 F7     .word ofs_F7E7_02
- D 3 - I - 0x03E1A2 0F:E192: 4E E2     .word ofs_E24E_03
- D 3 - I - 0x03E1A4 0F:E194: 41 E3     .word ofs_E341_04
- D 3 - I - 0x03E1A6 0F:E196: F3 E3     .word ofs_E3F3_05
- D 3 - I - 0x03E1A8 0F:E198: 6D E4     .word ofs_E46D_06
- D 3 - I - 0x03E1AA 0F:E19A: A4 E4     .word ofs_E4A4_07
- D 3 - I - 0x03E1AC 0F:E19C: 2E E5     .word ofs_E52E_08
- D 3 - I - 0x03E1AE 0F:E19E: 5D E5     .word ofs_E55D_09
- D 3 - I - 0x03E1B0 0F:E1A0: CA E5     .word ofs_E5CA_0A
- D 3 - I - 0x03E1B2 0F:E1A2: 8F E6     .word ofs_E68F_0B
- D 3 - I - 0x03E1B4 0F:E1A4: FF E6     .word ofs_E6FF_0C
- D 3 - I - 0x03E1B6 0F:E1A6: 42 E7     .word ofs_E742_0D
- D 3 - I - 0x03E1B8 0F:E1A8: 3F F7     .word ofs_F73F_0E
- D 3 - I - 0x03E1BA 0F:E1AA: 53 E7     .word ofs_E753_0F
- D 3 - I - 0x03E1BC 0F:E1AC: 5D E7     .word ofs_E75D_10
- D 3 - I - 0x03E1BE 0F:E1AE: F9 F7     .word ofs_F7F9_11
- D 3 - I - 0x03E1C0 0F:E1B0: F0 F7     .word ofs_F7F0_12
- D 3 - I - 0x03E1C2 0F:E1B2: 70 E7     .word ofs_E770_13
- D 3 - I - 0x03E1C4 0F:E1B4: 8B E7     .word ofs_E78B_14
- D 3 - I - 0x03E1C6 0F:E1B6: 99 E7     .word ofs_E799_15
- - - - - - 0x03E1C8 0F:E1B8: A1 E7     .word ofs_E7A1_16
- D 3 - I - 0x03E1CA 0F:E1BA: A1 E7     .word ofs_E7A1_17
- D 3 - I - 0x03E1CC 0F:E1BC: BE E7     .word ofs_E7BE_18
- D 3 - I - 0x03E1CE 0F:E1BE: 30 E8     .word ofs_E830_19
- D 3 - I - 0x03E1D0 0F:E1C0: 5C E8     .word ofs_E85C_1A
- D 3 - I - 0x03E1D2 0F:E1C2: 81 E8     .word ofs_E881_1B
- D 3 - I - 0x03E1D4 0F:E1C4: 92 E8     .word ofs_E892_1C
- D 3 - I - 0x03E1D6 0F:E1C6: A4 E8     .word ofs_E8A4_1D
- D 3 - I - 0x03E1D8 0F:E1C8: EA E8     .word ofs_E8EA_1E
- D 3 - I - 0x03E1DA 0F:E1CA: A7 E8     .word ofs_E8A7_1F
- D 3 - I - 0x03E1DC 0F:E1CC: FC E8     .word ofs_E8FC_20



ofs_E1CE_00:
C - - J - - 0x03E1DE 0F:E1CE: 20 42 F0  JSR sub_F042
C - - - - - 0x03E1E1 0F:E1D1: A5 AE     LDA ram_00AE
C - - - - - 0x03E1E3 0F:E1D3: 48        PHA
C - - - - - 0x03E1E4 0F:E1D4: A5 AF     LDA ram_00AF
C - - - - - 0x03E1E6 0F:E1D6: 48        PHA
C - - - - - 0x03E1E7 0F:E1D7: A5 B0     LDA ram_00B0
C - - - - - 0x03E1E9 0F:E1D9: 48        PHA
C - - - - - 0x03E1EA 0F:E1DA: A5 B1     LDA ram_00B1
C - - - - - 0x03E1EC 0F:E1DC: 48        PHA
C - - - - - 0x03E1ED 0F:E1DD: A5 A2     LDA ram_00A2
C - - - - - 0x03E1EF 0F:E1DF: 48        PHA
C - - - - - 0x03E1F0 0F:E1E0: A5 A3     LDA ram_00A3
C - - - - - 0x03E1F2 0F:E1E2: 48        PHA
C - - - - - 0x03E1F3 0F:E1E3: 20 0D D0  JSR sub_D00D
C - - - - - 0x03E1F6 0F:E1E6: 68        PLA
C - - - - - 0x03E1F7 0F:E1E7: 85 A3     STA ram_00A3
C - - - - - 0x03E1F9 0F:E1E9: 68        PLA
C - - - - - 0x03E1FA 0F:E1EA: 85 A2     STA ram_00A2
C - - - - - 0x03E1FC 0F:E1EC: 68        PLA
C - - - - - 0x03E1FD 0F:E1ED: 85 B1     STA ram_00B1
C - - - - - 0x03E1FF 0F:E1EF: 68        PLA
C - - - - - 0x03E200 0F:E1F0: 85 B0     STA ram_00B0
C - - - - - 0x03E202 0F:E1F2: 68        PLA
C - - - - - 0x03E203 0F:E1F3: 85 AF     STA ram_00AF
C - - - - - 0x03E205 0F:E1F5: 68        PLA
C - - - - - 0x03E206 0F:E1F6: 85 AE     STA ram_00AE
C - - - - - 0x03E208 0F:E1F8: E6 95     INC ram_0095
C - - - - - 0x03E20A 0F:E1FA: 4C 8C FC  JMP loc_FC8C



ofs_E1FD_01:
C - - J - - 0x03E20D 0F:E1FD: E6 95     INC ram_0095
C - - - - - 0x03E20F 0F:E1FF: 20 3C F0  JSR sub_F03C
C - - - - - 0x03E212 0F:E202: 20 C2 F6  JSR sub_F6C2
C - - - - - 0x03E215 0F:E205: A6 2C     LDX ram_002C
C - - - - - 0x03E217 0F:E207: F0 28     BEQ bra_E231
C - - - - - 0x03E219 0F:E209: E0 03     CPX #$03
C - - - - - 0x03E21B 0F:E20B: 90 39     BCC bra_E246
C - - - - - 0x03E21D 0F:E20D: A9 36     LDA #$36
C - - - - - 0x03E21F 0F:E20F: 20 00 F6  JSR sub_F600_prg_bank_0B
C - - - - - 0x03E222 0F:E212: A5 28     LDA ram_random_1
C - - - - - 0x03E224 0F:E214: 29 0F     AND #$0F
C - - - - - 0x03E226 0F:E216: 4C B4 BF  JMP loc_0x02FFC4



.export loc_0x03E229
loc_0x03E229:
C D 3 - - - 0x03E229 0F:E219: AD 54 01  LDA ram_0154
C - - - - - 0x03E22C 0F:E21C: 0A        ASL
C - - - - - 0x03E22D 0F:E21D: A8        TAY
C - - - - - 0x03E22E 0F:E21E: B9 4C 01  LDA ram_014C,Y
C - - - - - 0x03E231 0F:E221: 85 A2     STA ram_00A2
C - - - - - 0x03E233 0F:E223: B9 4D 01  LDA ram_014D,Y
C - - - - - 0x03E236 0F:E226: 85 A3     STA ram_00A3
C - - - - - 0x03E238 0F:E228: 20 26 F7  JSR sub_F726
C - - - - - 0x03E23B 0F:E22B: A9 40     LDA #$40
C - - - - - 0x03E23D 0F:E22D: 8D 60 05  STA ram_0560
C - - - - - 0x03E240 0F:E230: 60        RTS



bra_E231:
C - - - - - 0x03E241 0F:E231: A5 9E     LDA ram_009E
C - - - - - 0x03E243 0F:E233: C5 A2     CMP ram_00A2
C - - - - - 0x03E245 0F:E235: D0 0D     BNE bra_E244
C - - - - - 0x03E247 0F:E237: 69 00     ADC #$00
C - - - - - 0x03E249 0F:E239: 85 9E     STA ram_009E
C - - - - - 0x03E24B 0F:E23B: C9 04     CMP #$04
C - - - - - 0x03E24D 0F:E23D: D0 05     BNE bra_E244
C - - - - - 0x03E24F 0F:E23F: 85 A3     STA ram_00A3
C - - - - - 0x03E251 0F:E241: 4C EE E5  JMP loc_E5EE
bra_E244:
C - - - - - 0x03E254 0F:E244: 85 A3     STA ram_00A3
bra_E246:
.export loc_0x03E256
loc_0x03E256:
C D 3 - - - 0x03E256 0F:E246: A9 03     LDA #$03
C - - - - - 0x03E258 0F:E248: 85 95     STA ram_0095
C - - - - - 0x03E25A 0F:E24A: 4C 25 DC  JMP loc_DC25
- - - - - - 0x03E25D 0F:E24D: 60        RTS



ofs_E24E_03:
C - - J - - 0x03E25E 0F:E24E: 20 3F F0  JSR sub_F03F
C - - - - - 0x03E261 0F:E251: A2 28     LDX #$28
C - - - - - 0x03E263 0F:E253: 20 44 F0  JSR sub_F044
C - - - - - 0x03E266 0F:E256: E6 95     INC ram_0095
C - - - - - 0x03E268 0F:E258: A9 00     LDA #$00
C - - - - - 0x03E26A 0F:E25A: 8D 49 06  STA ram_0649
C - - - - - 0x03E26D 0F:E25D: 8D 4A 06  STA ram_064A
C - - - - - 0x03E270 0F:E260: 8D 40 06  STA ram_0640
C - - - - - 0x03E273 0F:E263: A5 2C     LDA ram_002C
C - - - - - 0x03E275 0F:E265: C9 03     CMP #$03
C - - - - - 0x03E277 0F:E267: 90 62     BCC bra_E2CB
C - - - - - 0x03E279 0F:E269: A9 01     LDA #$01
C - - - - - 0x03E27B 0F:E26B: 85 A8     STA ram_00A8
bra_E26D:
C - - - - - 0x03E27D 0F:E26D: A5 A8     LDA ram_00A8
C - - - - - 0x03E27F 0F:E26F: 0A        ASL
C - - - - - 0x03E280 0F:E270: AA        TAX
C - - - - - 0x03E281 0F:E271: BD 4F E9  LDA tbl_E94F,X
C - - - - - 0x03E284 0F:E274: 85 02     STA ram_0002
C - - - - - 0x03E286 0F:E276: BD 4E E9  LDA tbl_E94E,X
C - - - - - 0x03E289 0F:E279: 85 03     STA ram_0003
C - - - - - 0x03E28B 0F:E27B: BD 4B E9  LDA tbl_E94B,X
C - - - - - 0x03E28E 0F:E27E: BC 4A E9  LDY tbl_E94A,X
C - - - - - 0x03E291 0F:E281: 20 6B D2  JSR sub_D26B
C - - - - - 0x03E294 0F:E284: AD 54 01  LDA ram_0154
C - - - - - 0x03E297 0F:E287: 0A        ASL
C - - - - - 0x03E298 0F:E288: 65 A8     ADC ram_00A8
C - - - - - 0x03E29A 0F:E28A: 85 01     STA ram_0001
C - - - - - 0x03E29C 0F:E28C: 0A        ASL
C - - - - - 0x03E29D 0F:E28D: 0A        ASL
C - - - - - 0x03E29E 0F:E28E: A8        TAY
C - - - - - 0x03E29F 0F:E28F: A9 03     LDA #$03
C - - - - - 0x03E2A1 0F:E291: 85 00     STA ram_0000
bra_E293:
C - - - - - 0x03E2A3 0F:E293: 20 00 BF  JSR sub_0x003F10
C - - - - - 0x03E2A6 0F:E296: 29 7F     AND #$7F
C - - - - - 0x03E2A8 0F:E298: 20 5D D2  JSR sub_D25D
C - - - - - 0x03E2AB 0F:E29B: C8        INY
C - - - - - 0x03E2AC 0F:E29C: C6 00     DEC ram_0000
C - - - - - 0x03E2AE 0F:E29E: 10 F3     BPL bra_E293
C - - - - - 0x03E2B0 0F:E2A0: 20 5B D2  JSR sub_D25B
C - - - - - 0x03E2B3 0F:E2A3: A5 02     LDA ram_0002
C - - - - - 0x03E2B5 0F:E2A5: A4 03     LDY ram_0003
C - - - - - 0x03E2B7 0F:E2A7: 20 6B D2  JSR sub_D26B
C - - - - - 0x03E2BA 0F:E2AA: A4 01     LDY ram_0001
C - - - - - 0x03E2BC 0F:E2AC: B9 55 01  LDA ram_0155,Y
C - - - - - 0x03E2BF 0F:E2AF: 30 04     BMI bra_E2B5
C - - - - - 0x03E2C1 0F:E2B1: B9 05 01  LDA ram_0105,Y
C - - - - - 0x03E2C4 0F:E2B4: 2C        .byte $2C
bra_E2B5:
C - - - - - 0x03E2C5 0F:E2B5: A9 04     LDA #$04
C - - - - - 0x03E2C7 0F:E2B7: A8        TAY
C - - - - - 0x03E2C8 0F:E2B8: B9 52 E9  LDA tbl_E952,Y
C - - - - - 0x03E2CB 0F:E2BB: A8        TAY
bra_E2BC:
C - - - - - 0x03E2CC 0F:E2BC: B9 57 E9  LDA tbl_E957,Y
C - - - - - 0x03E2CF 0F:E2BF: 20 5D D2  JSR sub_D25D
C - - - - - 0x03E2D2 0F:E2C2: C8        INY
C - - - - - 0x03E2D3 0F:E2C3: C9 FF     CMP #$FF
C - - - - - 0x03E2D5 0F:E2C5: D0 F5     BNE bra_E2BC
C - - - - - 0x03E2D7 0F:E2C7: C6 A8     DEC ram_00A8
C - - - - - 0x03E2D9 0F:E2C9: 10 A2     BPL bra_E26D
bra_E2CB:
C - - - - - 0x03E2DB 0F:E2CB: A9 04     LDA #$04
C - - - - - 0x03E2DD 0F:E2CD: 20 A0 EB  JSR sub_EBA0
C - - - - - 0x03E2E0 0F:E2D0: A9 00     LDA #$00
C - - - - - 0x03E2E2 0F:E2D2: 20 D3 F7  JSR sub_F7D3
C - - - - - 0x03E2E5 0F:E2D5: A9 32     LDA #$32
C - - - - - 0x03E2E7 0F:E2D7: 20 90 F6  JSR sub_F690
C - - - - - 0x03E2EA 0F:E2DA: A9 D0     LDA #$D0
C - - - - - 0x03E2EC 0F:E2DC: 8D 60 05  STA ram_0560
C - - - - - 0x03E2EF 0F:E2DF: A2 FF     LDX #$FF
C - - - - - 0x03E2F1 0F:E2E1: 86 57     STX ram_0057
C - - - - - 0x03E2F3 0F:E2E3: A2 00     LDX #$00
C - - - - - 0x03E2F5 0F:E2E5: 86 56     STX ram_0056
C - - - - - 0x03E2F7 0F:E2E7: A9 06     LDA #$06
C - - - - - 0x03E2F9 0F:E2E9: 20 14 F8  JSR sub_F814
C - - - - - 0x03E2FC 0F:E2EC: 4C 41 E1  JMP loc_E141



.export sub_0x03E2FF
sub_0x03E2FF:
C - - - - - 0x03E2FF 0F:E2EF: A9 01     LDA #$01
C - - - - - 0x03E301 0F:E2F1: 85 08     STA ram_0008
bra_E2F3_loop:
C - - - - - 0x03E303 0F:E2F3: A4 08     LDY ram_0008
C - - - - - 0x03E305 0F:E2F5: 98        TYA
C - - - - - 0x03E306 0F:E2F6: 18        CLC
C - - - - - 0x03E307 0F:E2F7: 69 06     ADC #$06
C - - - - - 0x03E309 0F:E2F9: AA        TAX
C - - - - - 0x03E30A 0F:E2FA: B9 A2 00  LDA ram_00A2,Y
C - - - - - 0x03E30D 0F:E2FD: A8        TAY
C - - - - - 0x03E30E 0F:E2FE: B9 85 E9  LDA tbl_E985,Y
C - - - - - 0x03E311 0F:E301: 20 46 D3  JSR sub_D346
C - - - - - 0x03E314 0F:E304: A4 08     LDY ram_0008
C - - - - - 0x03E316 0F:E306: 18        CLC
C - - - - - 0x03E317 0F:E307: B9 A2 00  LDA ram_00A2,Y
C - - - - - 0x03E31A 0F:E30A: 69 1B     ADC #$1B
C - - - - - 0x03E31C 0F:E30C: 99 02 04  STA ram_0402,Y
C - - - - - 0x03E31F 0F:E30F: 98        TYA
C - - - - - 0x03E320 0F:E310: 09 82     ORA #$82
C - - - - - 0x03E322 0F:E312: 99 02 05  STA ram_0502,Y
C - - - - - 0x03E325 0F:E315: 99 32 04  STA ram_0432,Y
C - - - - - 0x03E328 0F:E318: C6 08     DEC ram_0008
C - - - - - 0x03E32A 0F:E31A: 10 D7     BPL bra_E2F3_loop
C - - - - - 0x03E32C 0F:E31C: 60        RTS



.export sub_0x03E32D
sub_0x03E32D:
C - - - - - 0x03E32D 0F:E31D: 8A        TXA
C - - - - - 0x03E32E 0F:E31E: 4A        LSR
C - - - - - 0x03E32F 0F:E31F: A8        TAY
C - - - - - 0x03E330 0F:E320: B9 A2 00  LDA ram_00A2,Y
C - - - - - 0x03E333 0F:E323: A8        TAY
C - - - - - 0x03E334 0F:E324: B9 8C E9  LDA tbl_E98C,Y
C - - - - - 0x03E337 0F:E327: 4C 46 D3  JMP loc_D346



sub_E32A:
.export sub_0x03E33A
sub_0x03E33A:
C - - - - - 0x03E33A 0F:E32A: 18        CLC
C - - - - - 0x03E33B 0F:E32B: 69 0D     ADC #$0D
C - - - - - 0x03E33D 0F:E32D: 48        PHA
C - - - - - 0x03E33E 0F:E32E: 8A        TXA
C - - - - - 0x03E33F 0F:E32F: 29 03     AND #$03
C - - - - - 0x03E341 0F:E331: F0 0A     BEQ bra_E33D
C - - - - - 0x03E343 0F:E333: A5 A2     LDA ram_00A2
C - - - - - 0x03E345 0F:E335: C5 A3     CMP ram_00A3
C - - - - - 0x03E347 0F:E337: D0 04     BNE bra_E33D
C - - - - - 0x03E349 0F:E339: 68        PLA
C - - - - - 0x03E34A 0F:E33A: 69 0B     ADC #$0B
C - - - - - 0x03E34C 0F:E33C: 48        PHA
bra_E33D:
C - - - - - 0x03E34D 0F:E33D: 68        PLA
C - - - - - 0x03E34E 0F:E33E: 4C 46 D3  JMP loc_D346



ofs_E341_04:
C - - J - - 0x03E351 0F:E341: A5 90     LDA ram_0090
C - - - - - 0x03E353 0F:E343: 29 10     AND #$10
C - - - - - 0x03E355 0F:E345: D0 53     BNE bra_E39A
C - - - - - 0x03E357 0F:E347: A5 57     LDA ram_0057
C - - - - - 0x03E359 0F:E349: 29 F8     AND #$F8
C - - - - - 0x03E35B 0F:E34B: F0 3F     BEQ bra_E38C
C - - - - - 0x03E35D 0F:E34D: 38        SEC
C - - - - - 0x03E35E 0F:E34E: A5 57     LDA ram_0057
C - - - - - 0x03E360 0F:E350: E9 08     SBC #$08
C - - - - - 0x03E362 0F:E352: 85 57     STA ram_0057
C - - - - - 0x03E364 0F:E354: 69 10     ADC #$10
C - - - - - 0x03E366 0F:E356: 8D 40 04  STA ram_0440
C - - - - - 0x03E369 0F:E359: A9 00     LDA #$00
C - - - - - 0x03E36B 0F:E35B: 2A        ROL
C - - - - - 0x03E36C 0F:E35C: 8D 30 04  STA ram_0430
C - - - - - 0x03E36F 0F:E35F: 18        CLC
C - - - - - 0x03E370 0F:E360: A5 56     LDA ram_0056
C - - - - - 0x03E372 0F:E362: 69 08     ADC #$08
C - - - - - 0x03E374 0F:E364: 85 56     STA ram_0056
C - - - - - 0x03E376 0F:E366: E9 46     SBC #$46
C - - - - - 0x03E378 0F:E368: 8D 41 04  STA ram_0441
C - - - - - 0x03E37B 0F:E36B: C9 B4     CMP #$B4
C - - - - - 0x03E37D 0F:E36D: A9 00     LDA #$00
C - - - - - 0x03E37F 0F:E36F: 2A        ROL
C - - - - - 0x03E380 0F:E370: 8D 31 04  STA ram_0431
C - - - - - 0x03E383 0F:E373: A9 0F     LDA #$0F
C - - - - - 0x03E385 0F:E375: 8D 10 04  STA ram_0410
C - - - - - 0x03E388 0F:E378: A9 8F     LDA #$8F
C - - - - - 0x03E38A 0F:E37A: 8D 11 04  STA ram_0411
C - - - - - 0x03E38D 0F:E37D: A5 57     LDA ram_0057
C - - - - - 0x03E38F 0F:E37F: 29 F8     AND #$F8
C - - - - - 0x03E391 0F:E381: D0 08     BNE bra_E38B_RTS
sub_E383:
C - - - - - 0x03E393 0F:E383: 38        SEC
C - - - - - 0x03E394 0F:E384: A5 56     LDA ram_0056
C - - - - - 0x03E396 0F:E386: E9 4F     SBC #$4F
C - - - - - 0x03E398 0F:E388: 8D 41 04  STA ram_0441
bra_E38B_RTS:
C - - - - - 0x03E39B 0F:E38B: 60        RTS
bra_E38C:
C - - - - - 0x03E39C 0F:E38C: 20 83 E3  JSR sub_E383
C - - - - - 0x03E39F 0F:E38F: CE 60 05  DEC ram_0560
C - - - - - 0x03E3A2 0F:E392: F0 11     BEQ bra_E3A5
C - - - - - 0x03E3A4 0F:E394: AC 60 05  LDY ram_0560
C - - - - - 0x03E3A7 0F:E397: 88        DEY
C - - - - - 0x03E3A8 0F:E398: D0 F1     BNE bra_E38B_RTS
bra_E39A:
C - - - - - 0x03E3AA 0F:E39A: 20 83 E3  JSR sub_E383
C - - - - - 0x03E3AD 0F:E39D: A9 01     LDA #$01
C - - - - - 0x03E3AF 0F:E39F: 8D 60 05  STA ram_0560
C - - - - - 0x03E3B2 0F:E3A2: 4C 2E E1  JMP loc_E12E
bra_E3A5:
C - - - - - 0x03E3B5 0F:E3A5: E6 95     INC ram_0095
C - - - - - 0x03E3B7 0F:E3A7: A5 2C     LDA ram_002C
C - - - - - 0x03E3B9 0F:E3A9: D0 0A     BNE bra_E3B5
C - - - - - 0x03E3BB 0F:E3AB: A5 9E     LDA ram_009E
C - - - - - 0x03E3BD 0F:E3AD: C9 06     CMP #$06
C - - - - - 0x03E3BF 0F:E3AF: 90 04     BCC bra_E3B5
C - - - - - 0x03E3C1 0F:E3B1: A9 1D     LDA #$1D
C - - - - - 0x03E3C3 0F:E3B3: 85 95     STA ram_0095
bra_E3B5:
C - - - - - 0x03E3C5 0F:E3B5: 4C 6D D4  JMP loc_D46D



tbl_E3B8_prg_bank:
- D 3 - - - 0x03E3C8 0F:E3B8: 30        .byte $30   ; 00
- D 3 - - - 0x03E3C9 0F:E3B9: 36        .byte $36   ; 01
- D 3 - - - 0x03E3CA 0F:E3BA: 36        .byte $36   ; 02
- D 3 - - - 0x03E3CB 0F:E3BB: 36        .byte $36   ; 03
- D 3 - - - 0x03E3CC 0F:E3BC: 36        .byte $36   ; 04
- D 3 - - - 0x03E3CD 0F:E3BD: 36        .byte $36   ; 05
- D 3 - - - 0x03E3CE 0F:E3BE: 36        .byte $36   ; 06
- D 3 - - - 0x03E3CF 0F:E3BF: 36        .byte $36   ; 07
- D 3 - - - 0x03E3D0 0F:E3C0: 36        .byte $36   ; 08
- D 3 - - - 0x03E3D1 0F:E3C1: 36        .byte $36   ; 09
- D 3 - - - 0x03E3D2 0F:E3C2: 36        .byte $36   ; 0A
- D 3 - - - 0x03E3D3 0F:E3C3: 36        .byte $36   ; 0B
- D 3 - - - 0x03E3D4 0F:E3C4: 36        .byte $36   ; 0C
- D 3 - - - 0x03E3D5 0F:E3C5: 30        .byte $30   ; 0D
- D 3 - - - 0x03E3D6 0F:E3C6: 36        .byte $36   ; 0E
- D 3 - - - 0x03E3D7 0F:E3C7: 36        .byte $36   ; 0F
- D 3 - - - 0x03E3D8 0F:E3C8: 36        .byte $36   ; 10
- D 3 - - - 0x03E3D9 0F:E3C9: 36        .byte $36   ; 11
- D 3 - - - 0x03E3DA 0F:E3CA: 36        .byte $36   ; 12
- D 3 - - - 0x03E3DB 0F:E3CB: 36        .byte $36   ; 13
- D 3 - - - 0x03E3DC 0F:E3CC: 36        .byte $36   ; 14
- D 3 - - - 0x03E3DD 0F:E3CD: 36        .byte $36   ; 15
- D 3 - - - 0x03E3DE 0F:E3CE: 36        .byte $36   ; 16
- D 3 - - - 0x03E3DF 0F:E3CF: 36        .byte $36   ; 17
- D 3 - - - 0x03E3E0 0F:E3D0: 36        .byte $36   ; 18
- D 3 - - - 0x03E3E1 0F:E3D1: 36        .byte $36   ; 19
- D 3 - - - 0x03E3E2 0F:E3D2: 36        .byte $36   ; 1A
- D 3 - - - 0x03E3E3 0F:E3D3: 36        .byte $36   ; 1B
- D 3 - - - 0x03E3E4 0F:E3D4: 36        .byte $36   ; 1C
- D 3 - - - 0x03E3E5 0F:E3D5: 36        .byte $36   ; 1D
- D 3 - - - 0x03E3E6 0F:E3D6: 00        .byte $00   ; 1E
- D 3 - - - 0x03E3E7 0F:E3D7: 00        .byte $00   ; 1F



.export tbl_0x03E3E8
tbl_0x03E3E8:
- D 3 - - - 0x03E3E8 0F:E3D8: 04        .byte $04   ; 20
- D 3 - - - 0x03E3E9 0F:E3D9: 04        .byte $04   ; 21
- D 3 - - - 0x03E3EA 0F:E3DA: 04        .byte $04   ; 22
- D 3 - - - 0x03E3EB 0F:E3DB: 04        .byte $04   ; 23
- D 3 - - - 0x03E3EC 0F:E3DC: 04        .byte $04   ; 24
- D 3 - - - 0x03E3ED 0F:E3DD: 05        .byte $05   ; 25
- D 3 - - - 0x03E3EE 0F:E3DE: 04        .byte $04   ; 26



loc_E3E3:
C D 3 - - - 0x03E3F3 0F:E3E3: AD 50 01  LDA ram_0150
C - - - - - 0x03E3F6 0F:E3E6: 4A        LSR
C - - - - - 0x03E3F7 0F:E3E7: 4A        LSR
C - - - - - 0x03E3F8 0F:E3E8: A8        TAY
C - - - - - 0x03E3F9 0F:E3E9: B9 EF E3  LDA tbl_E3EF,Y
C - - - - - 0x03E3FC 0F:E3EC: 4C 25 FA  JMP loc_FA25



tbl_E3EF:
- D 3 - - - 0x03E3FF 0F:E3EF: 80        .byte $80   ; 00
- D 3 - - - 0x03E400 0F:E3F0: 84        .byte $84   ; 01



ofs_E3F3_05:
C - - J - - 0x03E403 0F:E3F3: 20 C2 F6  JSR sub_F6C2
C - - - - - 0x03E406 0F:E3F6: A9 36     LDA #$36
C - - - - - 0x03E408 0F:E3F8: 20 00 F6  JSR sub_F600_prg_bank_0B
C - - - - - 0x03E40B 0F:E3FB: 20 50 AE  JSR sub_0x02EE60
C - - - - - 0x03E40E 0F:E3FE: 20 44 F0  JSR sub_F044
C - - - - - 0x03E411 0F:E401: A2 0C     LDX #$0C
C - - - - - 0x03E413 0F:E403: 20 44 F0  JSR sub_F044
C - - - - - 0x03E416 0F:E406: 20 9E EB  JSR sub_EB9E
C - - - - - 0x03E419 0F:E409: A2 01     LDX #$01
C - - - - - 0x03E41B 0F:E40B: 86 A8     STX ram_00A8
bra_E40D:
C - - - - - 0x03E41D 0F:E40D: A6 A8     LDX ram_00A8
C - - - - - 0x03E41F 0F:E40F: 8A        TXA
C - - - - - 0x03E420 0F:E410: 09 04     ORA #$04
C - - - - - 0x03E422 0F:E412: AA        TAX
C - - - - - 0x03E423 0F:E413: B5 9E     LDA ram_009E,X
C - - - - - 0x03E425 0F:E415: 20 2A E3  JSR sub_E32A
C - - - - - 0x03E428 0F:E418: C6 A8     DEC ram_00A8
C - - - - - 0x03E42A 0F:E41A: 10 F1     BPL bra_E40D
C - - - - - 0x03E42C 0F:E41C: 20 3F EB  JSR sub_EB3F
C - - - - - 0x03E42F 0F:E41F: A2 01     LDX #$01
bra_E421:
C - - - - - 0x03E431 0F:E421: B5 A2     LDA ram_00A2,X
C - - - - - 0x03E433 0F:E423: 9D 50 05  STA ram_0550,X
C - - - - - 0x03E436 0F:E426: BD 69 E4  LDA tbl_E469,X
C - - - - - 0x03E439 0F:E429: 9D 40 04  STA ram_0440,X
C - - - - - 0x03E43C 0F:E42C: A9 B0     LDA #$B0
C - - - - - 0x03E43E 0F:E42E: 9D 10 04  STA ram_0410,X
C - - - - - 0x03E441 0F:E431: A0 01     LDY #$01
C - - - - - 0x03E443 0F:E433: A9 36     LDA #$36
C - - - - - 0x03E445 0F:E435: 20 00 F6  JSR sub_F600_prg_bank_0B
C - - - - - 0x03E448 0F:E438: 20 00 AA  JSR sub_0x02EA10
C - - - - - 0x03E44B 0F:E43B: EA        NOP
C - - - - - 0x03E44C 0F:E43C: 8A        TXA
C - - - - - 0x03E44D 0F:E43D: 09 80     ORA #$80
C - - - - - 0x03E44F 0F:E43F: 9D 00 05  STA ram_0500,X
C - - - - - 0x03E452 0F:E442: CA        DEX
C - - - - - 0x03E453 0F:E443: 10 DC     BPL bra_E421
C - - - - - 0x03E455 0F:E445: A2 0F     LDX #$0F
bra_E447:
C - - - - - 0x03E457 0F:E447: 20 D3 DA  JSR sub_DAD3
C - - - - - 0x03E45A 0F:E44A: CA        DEX
C - - - - - 0x03E45B 0F:E44B: E0 02     CPX #$02
C - - - - - 0x03E45D 0F:E44D: B0 F8     BCS bra_E447
C - - - - - 0x03E45F 0F:E44F: A2 01     LDX #$01
bra_E451:
C - - - - - 0x03E461 0F:E451: BC 50 05  LDY ram_0550,X
C - - - - - 0x03E464 0F:E454: B9 99 E9  LDA tbl_E999,Y
C - - - - - 0x03E467 0F:E457: 20 0E E1  JSR sub_E10E
C - - - - - 0x03E46A 0F:E45A: 9D 2E 01  STA ram_012E,X
C - - - - - 0x03E46D 0F:E45D: CA        DEX
C - - - - - 0x03E46E 0F:E45E: 10 F1     BPL bra_E451
C - - - - - 0x03E470 0F:E460: 20 14 F7  JSR sub_F714
C - - - - - 0x03E473 0F:E463: 20 0B F8  JSR sub_F80B
C - - - - - 0x03E476 0F:E466: 4C 41 E1  JMP loc_E141



tbl_E469:
.export tbl_0x03E479
tbl_0x03E479:
- D 3 - - - 0x03E479 0F:E469: 58        .byte $58   ; 00
- D 3 - - - 0x03E47A 0F:E46A: A8        .byte $A8   ; 01



.export tbl_0x03E47B
tbl_0x03E47B:
- D 3 - - - 0x03E47B 0F:E46B: 00        .byte $00   ; 00
- D 3 - - - 0x03E47C 0F:E46C: 40        .byte $40   ; 01



ofs_E46D_06:
C - - J - - 0x03E47D 0F:E46D: A4 9E     LDY ram_009E
C - - - - - 0x03E47F 0F:E46F: B9 AB FC  LDA tbl_FCAB,Y
C - - - - - 0x03E482 0F:E472: 20 8B F6  JSR sub_F68B
C - - - - - 0x03E485 0F:E475: E6 95     INC ram_0095
C - - - - - 0x03E487 0F:E477: A9 06     LDA #$06
C - - - - - 0x03E489 0F:E479: 8D 36 05  STA ram_0536
C - - - - - 0x03E48C 0F:E47C: A9 00     LDA #$00
C - - - - - 0x03E48E 0F:E47E: 8D 30 05  STA ram_0530
C - - - - - 0x03E491 0F:E481: 8D 31 05  STA ram_0531
C - - - - - 0x03E494 0F:E484: A0 3B     LDY #$3B
bra_E486:
C - - - - - 0x03E496 0F:E486: 99 00 06  STA ram_0600,Y
C - - - - - 0x03E499 0F:E489: 88        DEY
C - - - - - 0x03E49A 0F:E48A: 10 FA     BPL bra_E486
C - - - - - 0x03E49C 0F:E48C: A9 01     LDA #$01
C - - - - - 0x03E49E 0F:E48E: A4 2C     LDY ram_002C
C - - - - - 0x03E4A0 0F:E490: F0 03     BEQ bra_E495
C - - - - - 0x03E4A2 0F:E492: AD 27 01  LDA ram_option_timer
bra_E495:
C - - - - - 0x03E4A5 0F:E495: 0A        ASL
C - - - - - 0x03E4A6 0F:E496: A8        TAY
C - - - - - 0x03E4A7 0F:E497: B9 79 E9  LDA tbl_E979,Y
C - - - - - 0x03E4AA 0F:E49A: 8D 72 06  STA ram_0672
C - - - - - 0x03E4AD 0F:E49D: B9 7A E9  LDA tbl_E97A,Y
C - - - - - 0x03E4B0 0F:E4A0: 8D 73 06  STA ram_0673
C - - - - - 0x03E4B3 0F:E4A3: 60        RTS



ofs_E4A4_07:
C - - J - - 0x03E4B4 0F:E4A4: A5 2C     LDA ram_002C
C - - - - - 0x03E4B6 0F:E4A6: F0 07     BEQ bra_E4AF
C - - - - - 0x03E4B8 0F:E4A8: AD 27 01  LDA ram_option_timer
C - - - - - 0x03E4BB 0F:E4AB: C9 03     CMP #$03
C - - - - - 0x03E4BD 0F:E4AD: B0 08     BCS bra_E4B7
bra_E4AF:
C - - - - - 0x03E4BF 0F:E4AF: AD 72 06  LDA ram_0672
C - - - - - 0x03E4C2 0F:E4B2: 0D 73 06  ORA ram_0673
C - - - - - 0x03E4C5 0F:E4B5: F0 4F     BEQ bra_E506
bra_E4B7:
C - - - - - 0x03E4C7 0F:E4B7: A5 2C     LDA ram_002C
C - - - - - 0x03E4C9 0F:E4B9: C9 03     CMP #$03
C - - - - - 0x03E4CB 0F:E4BB: 90 35     BCC bra_E4F2
C - - - - - 0x03E4CD 0F:E4BD: A5 90     LDA ram_0090
C - - - - - 0x03E4CF 0F:E4BF: 29 20     AND #$20
C - - - - - 0x03E4D1 0F:E4C1: F0 2F     BEQ bra_E4F2
C - - - - - 0x03E4D3 0F:E4C3: AD 54 01  LDA ram_0154
C - - - - - 0x03E4D6 0F:E4C6: 0A        ASL
C - - - - - 0x03E4D7 0F:E4C7: A8        TAY
C - - - - - 0x03E4D8 0F:E4C8: B9 55 01  LDA ram_0155,Y
C - - - - - 0x03E4DB 0F:E4CB: 39 56 01  AND ram_0156,Y
C - - - - - 0x03E4DE 0F:E4CE: 10 22     BPL bra_E4F2
C - - - - - 0x03E4E0 0F:E4D0: A0 00     LDY #$00
C - - - - - 0x03E4E2 0F:E4D2: AD 49 06  LDA ram_0649
C - - - - - 0x03E4E5 0F:E4D5: CD 4A 06  CMP ram_064A
C - - - - - 0x03E4E8 0F:E4D8: D0 02     BNE bra_E4DC
C - - - - - 0x03E4EA 0F:E4DA: 46 28     LSR ram_random_1
bra_E4DC:
C - - - - - 0x03E4EC 0F:E4DC: B0 01     BCS bra_E4DF
C - - - - - 0x03E4EE 0F:E4DE: C8        INY
bra_E4DF:
C - - - - - 0x03E4EF 0F:E4DF: A9 02     LDA #$02
C - - - - - 0x03E4F1 0F:E4E1: 99 49 06  STA ram_0649,Y
C - - - - - 0x03E4F4 0F:E4E4: A9 0A     LDA #$0A
C - - - - - 0x03E4F6 0F:E4E6: 85 95     STA ram_0095
C - - - - - 0x03E4F8 0F:E4E8: A9 5B     LDA #$5B
C - - - - - 0x03E4FA 0F:E4EA: 85 98     STA ram_0098
C - - - - - 0x03E4FC 0F:E4EC: 20 90 F6  JSR sub_F690
C - - - - - 0x03E4FF 0F:E4EF: 4C 2E E1  JMP loc_E12E
bra_E4F2:
C - - - - - 0x03E502 0F:E4F2: 20 24 EA  JSR sub_EA24
C - - - - - 0x03E505 0F:E4F5: D0 0C     BNE bra_E503
C - - - - - 0x03E507 0F:E4F7: A5 8F     LDA ram_008F
C - - - - - 0x03E509 0F:E4F9: 29 10     AND #$10
C - - - - - 0x03E50B 0F:E4FB: D0 25     BNE bra_E522
C - - - - - 0x03E50D 0F:E4FD: A5 92     LDA ram_0092
C - - - - - 0x03E50F 0F:E4FF: C9 C8     CMP #$C8
C - - - - - 0x03E511 0F:E501: F0 1F     BEQ bra_E522
bra_E503:
C - - - - - 0x03E513 0F:E503: 4C 94 F7  JMP loc_F794
bra_E506:
C - - - - - 0x03E516 0F:E506: A9 AE     LDA #$AE
C - - - - - 0x03E518 0F:E508: CD 10 04  CMP ram_0410
C - - - - - 0x03E51B 0F:E50B: B0 E5     BCS bra_E4F2
C - - - - - 0x03E51D 0F:E50D: CD 11 04  CMP ram_0411
C - - - - - 0x03E520 0F:E510: B0 E0     BCS bra_E4F2
C - - - - - 0x03E522 0F:E512: A2 01     LDX #$01
C - - - - - 0x03E524 0F:E514: 20 20 DE  JSR sub_DE20
C - - - - - 0x03E527 0F:E517: CA        DEX
C - - - - - 0x03E528 0F:E518: 20 20 DE  JSR sub_DE20
C - - - - - 0x03E52B 0F:E51B: A9 0B     LDA #$0B
C - - - - - 0x03E52D 0F:E51D: 85 95     STA ram_0095
C - - - - - 0x03E52F 0F:E51F: 85 98     STA ram_0098
bra_E521_RTS:
C - - - - - 0x03E531 0F:E521: 60        RTS
bra_E522:
loc_E522:
C D 3 - - - 0x03E532 0F:E522: A9 29     LDA #$29
C - - - - - 0x03E534 0F:E524: 20 8B F6  JSR sub_F68B
C - - - - - 0x03E537 0F:E527: A9 13     LDA #$13
C - - - - - 0x03E539 0F:E529: 85 95     STA ram_0095
C - - - - - 0x03E53B 0F:E52B: 4C 2E E1  JMP loc_E12E



ofs_E52E_08:
C - - J - - 0x03E53E 0F:E52E: E6 95     INC ram_0095
C - - - - - 0x03E540 0F:E530: A9 00     LDA #$00
C - - - - - 0x03E542 0F:E532: 8D 07 04  STA ram_0407
C - - - - - 0x03E545 0F:E535: 8D 24 06  STA ram_0624
C - - - - - 0x03E548 0F:E538: 85 AA     STA ram_00AA
C - - - - - 0x03E54A 0F:E53A: A9 40     LDA #$40
C - - - - - 0x03E54C 0F:E53C: 8D B0 04  STA ram_04B0
C - - - - - 0x03E54F 0F:E53F: 85 98     STA ram_0098
sub_E541:
C - - - - - 0x03E551 0F:E541: 20 51 F7  JSR sub_F751
C - - - - - 0x03E554 0F:E544: AD 71 06  LDA ram_0671
C - - - - - 0x03E557 0F:E547: F0 08     BEQ bra_E551
C - - - - - 0x03E559 0F:E549: C9 02     CMP #$02
C - - - - - 0x03E55B 0F:E54B: B0 D4     BCS bra_E521_RTS
C - - - - - 0x03E55D 0F:E54D: C6 89     DEC ram_0089
C - - - - - 0x03E55F 0F:E54F: C6 89     DEC ram_0089
bra_E551:
C - - - - - 0x03E561 0F:E551: E6 89     INC ram_0089
C - - - - - 0x03E563 0F:E553: 10 CC     BPL bra_E521_RTS
C - - - - - 0x03E565 0F:E555: A9 00     LDA #$00
C - - - - - 0x03E567 0F:E557: 85 89     STA ram_0089
C - - - - - 0x03E569 0F:E559: 4E B0 04  LSR ram_04B0
C - - - - - 0x03E56C 0F:E55C: 60        RTS
ofs_E55D_09:
C - - J - - 0x03E56D 0F:E55D: AD B0 04  LDA ram_04B0
C - - - - - 0x03E570 0F:E560: F0 09     BEQ bra_E56B
C - - - - - 0x03E572 0F:E562: A5 22     LDA ram_frame_counter
C - - - - - 0x03E574 0F:E564: 4A        LSR
C - - - - - 0x03E575 0F:E565: 90 BA     BCC bra_E521_RTS
C - - - - - 0x03E577 0F:E567: CE B0 04  DEC ram_04B0
C - - - - - 0x03E57A 0F:E56A: 60        RTS
bra_E56B:
C - - - - - 0x03E57B 0F:E56B: A5 2C     LDA ram_002C
C - - - - - 0x03E57D 0F:E56D: C9 03     CMP #$03
C - - - - - 0x03E57F 0F:E56F: B0 08     BCS bra_E579
C - - - - - 0x03E581 0F:E571: 20 A6 F7  JSR sub_F7A6
C - - - - - 0x03E584 0F:E574: AD 24 06  LDA ram_0624
C - - - - - 0x03E587 0F:E577: D0 A8     BNE bra_E521_RTS
bra_E579:
C - - - - - 0x03E589 0F:E579: 20 2E E1  JSR sub_E12E
C - - - - - 0x03E58C 0F:E57C: EE 40 06  INC ram_0640
C - - - - - 0x03E58F 0F:E57F: AD 49 06  LDA ram_0649
C - - - - - 0x03E592 0F:E582: 0D 4A 06  ORA ram_064A
C - - - - - 0x03E595 0F:E585: C9 02     CMP #$02
C - - - - - 0x03E597 0F:E587: B0 3E     BCS bra_E5C7
C - - - - - 0x03E599 0F:E589: A5 2C     LDA ram_002C
C - - - - - 0x03E59B 0F:E58B: C9 03     CMP #$03
C - - - - - 0x03E59D 0F:E58D: B0 2A     BCS bra_E5B9
C - - - - - 0x03E59F 0F:E58F: AD 40 06  LDA ram_0640
C - - - - - 0x03E5A2 0F:E592: C9 03     CMP #$03
C - - - - - 0x03E5A4 0F:E594: 90 23     BCC bra_E5B9
C - - - - - 0x03E5A6 0F:E596: D0 08     BNE bra_E5A0
C - - - - - 0x03E5A8 0F:E598: AD 49 06  LDA ram_0649
C - - - - - 0x03E5AB 0F:E59B: 0D 4A 06  ORA ram_064A
C - - - - - 0x03E5AE 0F:E59E: D0 19     BNE bra_E5B9
bra_E5A0:
C - - - - - 0x03E5B0 0F:E5A0: A2 00     LDX #$00
C - - - - - 0x03E5B2 0F:E5A2: BD 49 06  LDA ram_0649,X
C - - - - - 0x03E5B5 0F:E5A5: DD 4A 06  CMP ram_064A,X
C - - - - - 0x03E5B8 0F:E5A8: F0 05     BEQ bra_E5AF
- - - - - - 0x03E5BA 0F:E5AA: B0 28     BCS bra_E5D4
- - - - - - 0x03E5BC 0F:E5AC: E8        INX
- - - - - - 0x03E5BD 0F:E5AD: 90 25     BCC bra_E5D4
bra_E5AF:
C - - - - - 0x03E5BF 0F:E5AF: A9 80     LDA #$80
C - - - - - 0x03E5C1 0F:E5B1: A4 2C     LDY ram_002C
C - - - - - 0x03E5C3 0F:E5B3: 88        DEY
C - - - - - 0x03E5C4 0F:E5B4: F0 58     BEQ bra_E60E
C - - - - - 0x03E5C6 0F:E5B6: 4C 7D E6  JMP loc_E67D
bra_E5B9:
sub_E5B9:
C - - - - - 0x03E5C9 0F:E5B9: A9 05     LDA #$05
C - - - - - 0x03E5CB 0F:E5BB: 85 95     STA ram_0095
C - - - - - 0x03E5CD 0F:E5BD: A2 06     LDX #$06
C - - - - - 0x03E5CF 0F:E5BF: 20 D3 DA  JSR sub_DAD3
C - - - - - 0x03E5D2 0F:E5C2: A2 07     LDX #$07
C - - - - - 0x03E5D4 0F:E5C4: 4C D3 DA  JMP loc_DAD3
bra_E5C7:
C - - - - - 0x03E5D7 0F:E5C7: E6 95     INC ram_0095
C - - - - - 0x03E5D9 0F:E5C9: 60        RTS



ofs_E5CA_0A:
C - - J - - 0x03E5DA 0F:E5CA: A2 00     LDX #$00
C - - - - - 0x03E5DC 0F:E5CC: AD 49 06  LDA ram_0649
C - - - - - 0x03E5DF 0F:E5CF: C9 02     CMP #$02
C - - - - - 0x03E5E1 0F:E5D1: B0 01     BCS bra_E5D4
C - - - - - 0x03E5E3 0F:E5D3: E8        INX
bra_E5D4:
C - - - - - 0x03E5E4 0F:E5D4: 86 08     STX ram_0008
C - - - - - 0x03E5E6 0F:E5D6: A6 2C     LDX ram_002C
C - - - - - 0x03E5E8 0F:E5D8: F0 08     BEQ bra_E5E2
C - - - - - 0x03E5EA 0F:E5DA: CA        DEX
C - - - - - 0x03E5EB 0F:E5DB: F0 2F     BEQ bra_E60C
C - - - - - 0x03E5ED 0F:E5DD: CA        DEX
C - - - - - 0x03E5EE 0F:E5DE: F0 2C     BEQ bra_E60C
C - - - - - 0x03E5F0 0F:E5E0: D0 38     BNE bra_E61A
bra_E5E2:
C - - - - - 0x03E5F2 0F:E5E2: A5 08     LDA ram_0008
C - - - - - 0x03E5F4 0F:E5E4: D0 0D     BNE bra_E5F3
C - - - - - 0x03E5F6 0F:E5E6: E6 9E     INC ram_009E
C - - - - - 0x03E5F8 0F:E5E8: A5 9E     LDA ram_009E
C - - - - - 0x03E5FA 0F:E5EA: C9 04     CMP #$04
C - - - - - 0x03E5FC 0F:E5EC: D0 0A     BNE bra_E5F8
loc_E5EE:
C D 3 - - - 0x03E5FE 0F:E5EE: A9 17     LDA #$17
C - - - - - 0x03E600 0F:E5F0: 85 95     STA ram_0095
C - - - - - 0x03E602 0F:E5F2: 60        RTS
bra_E5F3:
C - - - - - 0x03E603 0F:E5F3: 4C 7D E6  JMP loc_E67D



bra_E5F8:
C - - - - - 0x03E608 0F:E5F8: A5 9E     LDA ram_009E
C - - - - - 0x03E60A 0F:E5FA: C9 07     CMP #$07
C - - - - - 0x03E60C 0F:E5FC: 90 6E     BCC bra_E66C
C - - - - - 0x03E60E 0F:E5FE: EA        NOP
C - - - - - 0x03E60F 0F:E5FF: EA        NOP
C - - - - - 0x03E610 0F:E600: EA        NOP
C - - - - - 0x03E611 0F:E601: EA        NOP
C - - - - - 0x03E612 0F:E602: EA        NOP
C - - - - - 0x03E613 0F:E603: EA        NOP
C - - - - - 0x03E614 0F:E604: EA        NOP
C - - - - - 0x03E615 0F:E605: C6 9E     DEC ram_009E
C - - - - - 0x03E617 0F:E607: A9 15     LDA #$15
C - - - - - 0x03E619 0F:E609: 85 95     STA ram_0095
C - - - - - 0x03E61B 0F:E60B: 60        RTS
bra_E60C:
.export loc_0x03E61C
loc_0x03E61C:
C D 3 - - - 0x03E61C 0F:E60C: A5 08     LDA ram_0008
bra_E60E:
C - - - - - 0x03E61E 0F:E60E: 20 B8 F8  JSR sub_F8B8
C - - - - - 0x03E621 0F:E611: A9 11     LDA #$11
C - - - - - 0x03E623 0F:E613: 85 95     STA ram_0095
C - - - - - 0x03E625 0F:E615: A9 00     LDA #$00
C - - - - - 0x03E627 0F:E617: 85 96     STA ram_0096
C - - - - - 0x03E629 0F:E619: 60        RTS
bra_E61A:
C - - - - - 0x03E62A 0F:E61A: 4C 42 F1  JMP loc_F142



.export loc_0x03E62D
loc_0x03E62D:
C D 3 - - - 0x03E62D 0F:E61D: A5 08     LDA ram_0008
C - - - - - 0x03E62F 0F:E61F: 9D 6E 06  STA ram_066E,X
C - - - - - 0x03E632 0F:E622: 8A        TXA
C - - - - - 0x03E633 0F:E623: 0A        ASL
C - - - - - 0x03E634 0F:E624: 0A        ASL
C - - - - - 0x03E635 0F:E625: AA        TAX
C - - - - - 0x03E636 0F:E626: 0A        ASL
C - - - - - 0x03E637 0F:E627: 85 00     STA ram_0000
C - - - - - 0x03E639 0F:E629: A5 08     LDA ram_0008
C - - - - - 0x03E63B 0F:E62B: 0A        ASL
C - - - - - 0x03E63C 0F:E62C: 0A        ASL
C - - - - - 0x03E63D 0F:E62D: 65 00     ADC ram_0000
C - - - - - 0x03E63F 0F:E62F: A8        TAY
C - - - - - 0x03E640 0F:E630: A9 03     LDA #$03
C - - - - - 0x03E642 0F:E632: 85 02     STA ram_0002
bra_E634:
C - - - - - 0x03E644 0F:E634: B9 30 01  LDA ram_name_letter_1,Y
C - - - - - 0x03E647 0F:E637: 9D 40 01  STA ram_0140,X
C - - - - - 0x03E64A 0F:E63A: C8        INY
C - - - - - 0x03E64B 0F:E63B: E8        INX
C - - - - - 0x03E64C 0F:E63C: C6 02     DEC ram_0002
C - - - - - 0x03E64E 0F:E63E: 10 F4     BPL bra_E634
C - - - - - 0x03E650 0F:E640: AD 54 01  LDA ram_0154
C - - - - - 0x03E653 0F:E643: 0A        ASL
C - - - - - 0x03E654 0F:E644: 65 08     ADC ram_0008
C - - - - - 0x03E656 0F:E646: A8        TAY
C - - - - - 0x03E657 0F:E647: AE 54 01  LDX ram_0154
C - - - - - 0x03E65A 0F:E64A: B9 4C 01  LDA ram_014C,Y
C - - - - - 0x03E65D 0F:E64D: 9D 50 01  STA ram_0150,X
C - - - - - 0x03E660 0F:E650: B9 55 01  LDA ram_0155,Y
C - - - - - 0x03E663 0F:E653: 9D 59 01  STA ram_0159,X
C - - - - - 0x03E666 0F:E656: B9 05 01  LDA ram_0105,Y
C - - - - - 0x03E669 0F:E659: 9D 09 01  STA ram_0109,X
C - - - - - 0x03E66C 0F:E65C: B9 93 E9  LDA tbl_E993,Y
C - - - - - 0x03E66F 0F:E65F: 0D 5D 01  ORA ram_015D
C - - - - - 0x03E672 0F:E662: 8D 5D 01  STA ram_015D
C - - - - - 0x03E675 0F:E665: EE 54 01  INC ram_0154
C - - - - - 0x03E678 0F:E668: E0 02     CPX #$02
C - - - - - 0x03E67A 0F:E66A: B0 05     BCS bra_E671
bra_E66C:
.export loc_0x03E67C
loc_0x03E67C:
C D 3 - - - 0x03E67C 0F:E66C: A9 01     LDA #$01
C - - - - - 0x03E67E 0F:E66E: 85 95     STA ram_0095
C - - - - - 0x03E680 0F:E670: 60        RTS
bra_E671:
C - - - - - 0x03E681 0F:E671: 0A        ASL
C - - - - - 0x03E682 0F:E672: 65 08     ADC ram_0008
C - - - - - 0x03E684 0F:E674: 0A        ASL
C - - - - - 0x03E685 0F:E675: 0A        ASL
C - - - - - 0x03E686 0F:E676: 8D 3F 06  STA ram_063F
C - - - - - 0x03E689 0F:E679: A9 0F     LDA #$0F
C - - - - - 0x03E68B 0F:E67B: D0 0F     BNE bra_E68C



loc_E67D:
C D 3 - - - 0x03E68D 0F:E67D: A5 2C     LDA ram_002C
C - - - - - 0x03E68F 0F:E67F: D0 09     BNE bra_E68A
C - - - - - 0x03E691 0F:E681: A5 9E     LDA ram_009E
C - - - - - 0x03E693 0F:E683: C9 06     CMP #$06
C - - - - - 0x03E695 0F:E685: 90 03     BCC bra_E68A
C - - - - - 0x03E697 0F:E687: A9 1F     LDA #$1F
C - - - - - 0x03E699 0F:E689: 2C        .byte $2C
bra_E68A:
sub_E68A:
.export loc_0x03E69A
loc_0x03E69A:
C - - - - - 0x03E69A 0F:E68A: A9 0D     LDA #$0D
bra_E68C:
C - - - - - 0x03E69C 0F:E68C: 85 95     STA ram_0095
bra_E68E_RTS:
C - - - - - 0x03E69E 0F:E68E: 60        RTS



ofs_E68F_0B:
C - - J - - 0x03E69F 0F:E68F: A9 00     LDA #$00
C - - - - - 0x03E6A1 0F:E691: 8D 07 04  STA ram_0407
C - - - - - 0x03E6A4 0F:E694: 8D 10 06  STA ram_0610
C - - - - - 0x03E6A7 0F:E697: 8D 11 06  STA ram_0611
C - - - - - 0x03E6AA 0F:E69A: A2 01     LDX #$01
C - - - - - 0x03E6AC 0F:E69C: 20 67 D0  JSR sub_D067
C - - - - - 0x03E6AF 0F:E69F: CA        DEX
C - - - - - 0x03E6B0 0F:E6A0: 20 67 D0  JSR sub_D067
C - - - - - 0x03E6B3 0F:E6A3: 8D 3C 06  STA ram_063C
C - - - - - 0x03E6B6 0F:E6A6: 8D 3D 06  STA ram_063D
C - - - - - 0x03E6B9 0F:E6A9: A9 17     LDA #$17
C - - - - - 0x03E6BB 0F:E6AB: 20 8B F6  JSR sub_F68B
C - - - - - 0x03E6BE 0F:E6AE: EA        NOP
C - - - - - 0x03E6BF 0F:E6AF: 20 F3 F5  JSR sub_F5F3_prg_bank_0E
C - - - - - 0x03E6C2 0F:E6B2: 4C 67 A7  JMP loc_0x03A777



ofs_E6B5:
.export ofs_0x03E6C5
ofs_0x03E6C5 = ofs_E6B5 - 1
C - - - - - 0x03E6C5 0F:E6B5: 28        PLP
C - - - - - 0x03E6C6 0F:E6B6: D0 07     BNE bra_E6BF
C - - - - - 0x03E6C8 0F:E6B8: A0 03     LDY #$03
C - - - - - 0x03E6CA 0F:E6BA: 8C 71 06  STY ram_0671
C - - - - - 0x03E6CD 0F:E6BD: D0 25     BNE bra_E6E4
bra_E6BF:
C - - - - - 0x03E6CF 0F:E6BF: 90 06     BCC bra_E6C7
C - - - - - 0x03E6D1 0F:E6C1: CA        DEX
C - - - - - 0x03E6D2 0F:E6C2: EE 49 06  INC ram_0649
C - - - - - 0x03E6D5 0F:E6C5: D0 03     BNE bra_E6CA
bra_E6C7:
C - - - - - 0x03E6D7 0F:E6C7: EE 4A 06  INC ram_064A
bra_E6CA:
C - - - - - 0x03E6DA 0F:E6CA: 8E 71 06  STX ram_0671
C - - - - - 0x03E6DD 0F:E6CD: EA        NOP
C - - - - - 0x03E6DE 0F:E6CE: EA        NOP
C - - - - - 0x03E6DF 0F:E6CF: 20 A3 DF  JSR sub_DFA3
C - - - - - 0x03E6E2 0F:E6D2: 8A        TXA
C - - - - - 0x03E6E3 0F:E6D3: 49 01     EOR #$01
C - - - - - 0x03E6E5 0F:E6D5: AA        TAX
C - - - - - 0x03E6E6 0F:E6D6: 20 DD DF  JSR sub_DFDD
C - - - - - 0x03E6E9 0F:E6D9: 20 3F EB  JSR sub_EB3F
C - - - - - 0x03E6EC 0F:E6DC: 20 14 F7  JSR sub_F714
C - - - - - 0x03E6EF 0F:E6DF: A9 28     LDA #$28
C - - - - - 0x03E6F1 0F:E6E1: 20 90 F6  JSR sub_F690
bra_E6E4:
C - - - - - 0x03E6F4 0F:E6E4: A9 00     LDA #$00
C - - - - - 0x03E6F6 0F:E6E6: 8D 0C 04  STA ram_040C
C - - - - - 0x03E6F9 0F:E6E9: E6 95     INC ram_0095
C - - - - - 0x03E6FB 0F:E6EB: A9 30     LDA #$30
C - - - - - 0x03E6FD 0F:E6ED: 8D 60 05  STA ram_0560
C - - - - - 0x03E700 0F:E6F0: AD 71 06  LDA ram_0671
C - - - - - 0x03E703 0F:E6F3: C9 02     CMP #$02
C - - - - - 0x03E705 0F:E6F5: B0 97     BCS bra_E68E_RTS
C - - - - - 0x03E707 0F:E6F7: 20 41 E5  JSR sub_E541
C - - - - - 0x03E70A 0F:E6FA: A9 2B     LDA #$2B
C - - - - - 0x03E70C 0F:E6FC: 4C 90 F6  JMP loc_F690



ofs_E6FF_0C:
C - - J - - 0x03E70F 0F:E6FF: AD 71 06  LDA ram_0671
C - - - - - 0x03E712 0F:E702: C9 02     CMP #$02
C - - - - - 0x03E714 0F:E704: B0 31     BCS bra_E737
C - - - - - 0x03E716 0F:E706: AD 60 05  LDA ram_0560
C - - - - - 0x03E719 0F:E709: F0 05     BEQ bra_E710
C - - - - - 0x03E71B 0F:E70B: CE 60 05  DEC ram_0560
C - - - - - 0x03E71E 0F:E70E: D0 12     BNE bra_E722
bra_E710:
C - - - - - 0x03E720 0F:E710: AE 71 06  LDX ram_0671
C - - - - - 0x03E723 0F:E713: 18        CLC
C - - - - - 0x03E724 0F:E714: BD 50 05  LDA ram_0550,X
C - - - - - 0x03E727 0F:E717: 69 04     ADC #$04
C - - - - - 0x03E729 0F:E719: A8        TAY
C - - - - - 0x03E72A 0F:E71A: 20 4F DF  JSR sub_DF4F
C - - - - - 0x03E72D 0F:E71D: BD C0 05  LDA ram_05C0,X
C - - - - - 0x03E730 0F:E720: 30 15     BMI bra_E737
bra_E722:
C - - - - - 0x03E732 0F:E722: AD 71 06  LDA ram_0671
C - - - - - 0x03E735 0F:E725: 49 01     EOR #$01
C - - - - - 0x03E737 0F:E727: 29 01     AND #$01
C - - - - - 0x03E739 0F:E729: AA        TAX
sub_E72A:
C - - - - - 0x03E73A 0F:E72A: 18        CLC
C - - - - - 0x03E73B 0F:E72B: 20 EE FE  JSR sub_FEEE
C - - - - - 0x03E73E 0F:E72E: 69 13     ADC #$13
C - - - - - 0x03E740 0F:E730: A8        TAY
C - - - - - 0x03E741 0F:E731: 20 4F DF  JSR sub_DF4F
C - - - - - 0x03E744 0F:E734: 4C 14 F7  JMP loc_F714
bra_E737:
C - - - - - 0x03E747 0F:E737: A9 08     LDA #$08
C - - - - - 0x03E749 0F:E739: 85 95     STA ram_0095
C - - - - - 0x03E74B 0F:E73B: A9 00     LDA #$00
C - - - - - 0x03E74D 0F:E73D: A0 01     LDY #$01
C - - - - - 0x03E74F 0F:E73F: 4C CC F5  RTS



ofs_E742_0D:
C - - J - - 0x03E752 0F:E742: 20 3C F0  JSR sub_F03C
C - - - - - 0x03E755 0F:E745: E6 95     INC ram_0095
C - - - - - 0x03E757 0F:E747: 4C 6E DD  JMP loc_DD6E



ofs_E753_0F:
C - - J - - 0x03E763 0F:E753: E6 95     INC ram_0095
C - - - - - 0x03E765 0F:E755: 20 26 F7  JSR sub_F726
C - - - - - 0x03E768 0F:E758: A9 FF     LDA #$FF
C - - - - - 0x03E76A 0F:E75A: 8D 60 05  STA ram_0560
ofs_E75D_10:
C - - - - - 0x03E76D 0F:E75D: 20 E7 F7  JSR sub_F7E7
C - - - - - 0x03E770 0F:E760: A5 90     LDA ram_0090
C - - - - - 0x03E772 0F:E762: 29 10     AND #$10
C - - - - - 0x03E774 0F:E764: F0 09     BEQ bra_E76F_RTS
C - - - - - 0x03E776 0F:E766: 20 C2 F6  JSR sub_F6C2
C - - - - - 0x03E779 0F:E769: 20 3C F0  JSR sub_F03C
C - - - - - 0x03E77C 0F:E76C: 4C CD F5  JMP loc_F5CD
bra_E76F_RTS:
C - - - - - 0x03E77F 0F:E76F: 60        RTS



ofs_E770_13:
C - - J - - 0x03E780 0F:E770: 20 65 E1  JSR sub_E165
C - - - - - 0x03E783 0F:E773: A5 9E     LDA ram_009E
C - - - - - 0x03E785 0F:E775: 85 9F     STA ram_009F
C - - - - - 0x03E787 0F:E777: A9 60     LDA #$60
C - - - - - 0x03E789 0F:E779: 8D 60 05  STA ram_0560
C - - - - - 0x03E78C 0F:E77C: E6 95     INC ram_0095
C - - - - - 0x03E78E 0F:E77E: A5 AE     LDA ram_00AE
C - - - - - 0x03E790 0F:E780: 20 02 D2  JSR sub_D202_multiply_by_10h
C - - - - - 0x03E793 0F:E783: 48        PHA
C - - - - - 0x03E794 0F:E784: 20 E7 F5  JSR sub_F5E7_prg_bank_0B
C - - - - - 0x03E797 0F:E787: 68        PLA
C - - - - - 0x03E798 0F:E788: 20 3B A7  JSR sub_0x02E74B
ofs_E78B_14:
C - - - - - 0x03E79B 0F:E78B: CE 60 05  DEC ram_0560
C - - - - - 0x03E79E 0F:E78E: D0 DF     BNE bra_E76F_RTS
C - - - - - 0x03E7A0 0F:E790: A9 01     LDA #$01
C - - - - - 0x03E7A2 0F:E792: 85 2C     STA ram_002C
C - - - - - 0x03E7A4 0F:E794: 85 94     STA ram_0094
C - - - - - 0x03E7A6 0F:E796: 4C 16 DE  JMP loc_DE16



ofs_E799_15:
C - - J - - 0x03E7A9 0F:E799: 20 3C F0  JSR sub_F03C
C - - - - - 0x03E7AC 0F:E79C: A9 0B     LDA #$0B
C - - - - - 0x03E7AE 0F:E79E: 4C AE F5  JMP loc_F5AE



ofs_E7A1_16:
ofs_E7A1_17:
C - - J - - 0x03E7B1 0F:E7A1: E6 95     INC ram_0095
C - - - - - 0x03E7B3 0F:E7A3: 20 3C F0  JSR sub_F03C
C - - - - - 0x03E7B6 0F:E7A6: 20 25 DC  JSR sub_DC25
C - - - - - 0x03E7B9 0F:E7A9: A9 08     LDA #$08
C - - - - - 0x03E7BB 0F:E7AB: 20 E5 F6  JSR sub_F6E5
C - - - - - 0x03E7BE 0F:E7AE: A9 20     LDA #$20
C - - - - - 0x03E7C0 0F:E7B0: 8D 60 05  STA ram_0560
C - - - - - 0x03E7C3 0F:E7B3: A9 00     LDA #$00
C - - - - - 0x03E7C5 0F:E7B5: A8        TAY
C - - - - - 0x03E7C6 0F:E7B6: 85 96     STA ram_0096
C - - - - - 0x03E7C8 0F:E7B8: 20 94 D3  JSR sub_D394
C - - - - - 0x03E7CB 0F:E7BB: 4C 41 E1  JMP loc_E141



ofs_E7BE_18:
C - - J - - 0x03E7CE 0F:E7BE: A5 96     LDA ram_0096
C - - - - - 0x03E7D0 0F:E7C0: D0 0A     BNE bra_E7CC
C - - - - - 0x03E7D2 0F:E7C2: CE 60 05  DEC ram_0560
C - - - - - 0x03E7D5 0F:E7C5: D0 A8     BNE bra_E76F_RTS
C - - - - - 0x03E7D7 0F:E7C7: E6 96     INC ram_0096
C - - - - - 0x03E7D9 0F:E7C9: 4C 2E E1  JMP loc_E12E
bra_E7CC:
C - - - - - 0x03E7DC 0F:E7CC: E6 95     INC ram_0095
C - - - - - 0x03E7DE 0F:E7CE: A9 08     LDA #$08
C - - - - - 0x03E7E0 0F:E7D0: 85 A6     STA ram_00A6
C - - - - - 0x03E7E2 0F:E7D2: A9 03     LDA #$03
C - - - - - 0x03E7E4 0F:E7D4: 8D 72 06  STA ram_0672
C - - - - - 0x03E7E7 0F:E7D7: 8D 30 05  STA ram_0530
C - - - - - 0x03E7EA 0F:E7DA: A9 00     LDA #$00
C - - - - - 0x03E7EC 0F:E7DC: 8D 73 06  STA ram_0673
C - - - - - 0x03E7EF 0F:E7DF: 85 AA     STA ram_00AA
C - - - - - 0x03E7F1 0F:E7E1: 8D 1A 06  STA ram_061A
C - - - - - 0x03E7F4 0F:E7E4: 8D 18 06  STA ram_0618
C - - - - - 0x03E7F7 0F:E7E7: 8D 10 06  STA ram_0610
C - - - - - 0x03E7FA 0F:E7EA: 8D 11 06  STA ram_0611
C - - - - - 0x03E7FD 0F:E7ED: 85 A6     STA ram_00A6
C - - - - - 0x03E7FF 0F:E7EF: 85 98     STA ram_0098
C - - - - - 0x03E801 0F:E7F1: A9 18     LDA #$18
C - - - - - 0x03E803 0F:E7F3: 8D 40 04  STA ram_0440
C - - - - - 0x03E806 0F:E7F6: A9 B0     LDA #$B0
C - - - - - 0x03E808 0F:E7F8: 8D 10 04  STA ram_0410
C - - - - - 0x03E80B 0F:E7FB: A9 09     LDA #$09
C - - - - - 0x03E80D 0F:E7FD: 20 14 F8  JSR sub_F814
C - - - - - 0x03E810 0F:E800: 20 BE DA  JSR sub_DABE
C - - - - - 0x03E813 0F:E803: A2 1C     LDX #$1C
C - - - - - 0x03E815 0F:E805: 20 44 F0  JSR sub_F044
C - - - - - 0x03E818 0F:E808: A9 7C     LDA #$7C
C - - - - - 0x03E81A 0F:E80A: 85 32     STA ram_0032
C - - - - - 0x03E81C 0F:E80C: A9 20     LDA #$20
C - - - - - 0x03E81E 0F:E80E: 85 37     STA ram_0037
C - - - - - 0x03E820 0F:E810: A2 1E     LDX #$1E
C - - - - - 0x03E822 0F:E812: 20 44 F0  JSR sub_F044
C - - - - - 0x03E825 0F:E815: A9 0D     LDA #$0D
C - - - - - 0x03E827 0F:E817: 20 E5 F6  JSR sub_F6E5
C - - - - - 0x03E82A 0F:E81A: A9 3D     LDA #$3D
C - - - - - 0x03E82C 0F:E81C: 20 90 F6  JSR sub_F690
C - - - - - 0x03E82F 0F:E81F: A9 10     LDA #$10
C - - - - - 0x03E831 0F:E821: A0 0A     LDY #$0A
C - - - - - 0x03E833 0F:E823: 20 94 D3  JSR sub_D394
C - - - - - 0x03E836 0F:E826: A2 04     LDX #$04
C - - - - - 0x03E838 0F:E828: B5 9E     LDA ram_009E,X
C - - - - - 0x03E83A 0F:E82A: 20 2A E3  JSR sub_E32A
C - - - - - 0x03E83D 0F:E82D: 4C 41 E1  JMP loc_E141



ofs_E830_19:
C - - J - - 0x03E840 0F:E830: A5 92     LDA ram_0092
C - - - - - 0x03E842 0F:E832: C9 C8     CMP #$C8
C - - - - - 0x03E844 0F:E834: D0 03     BNE bra_E839
C - - - - - 0x03E846 0F:E836: 4C 22 E5  JMP loc_E522
bra_E839:
C - - - - - 0x03E849 0F:E839: 20 9D F7  JSR sub_F79D
C - - - - - 0x03E84C 0F:E83C: AD 72 06  LDA ram_0672
C - - - - - 0x03E84F 0F:E83F: 0D 73 06  ORA ram_0673
C - - - - - 0x03E852 0F:E842: D0 3C     BNE bra_E880_RTS
C - - - - - 0x03E854 0F:E844: AD 10 04  LDA ram_0410
C - - - - - 0x03E857 0F:E847: C9 AF     CMP #$AF
C - - - - - 0x03E859 0F:E849: 90 35     BCC bra_E880_RTS
C - - - - - 0x03E85B 0F:E84B: E6 95     INC ram_0095
C - - - - - 0x03E85D 0F:E84D: E6 95     INC ram_0095
C - - - - - 0x03E85F 0F:E84F: A9 00     LDA #$00
C - - - - - 0x03E861 0F:E851: 85 96     STA ram_0096
C - - - - - 0x03E863 0F:E853: AA        TAX
C - - - - - 0x03E864 0F:E854: 20 DD DF  JSR sub_DFDD
C - - - - - 0x03E867 0F:E857: A9 40     LDA #$40
C - - - - - 0x03E869 0F:E859: 4C 8B F6  JMP loc_F68B



ofs_E85C_1A:
C - - J - - 0x03E86C 0F:E85C: A0 00     LDY #$00
C - - - - - 0x03E86E 0F:E85E: 8C 71 06  STY ram_0671
C - - - - - 0x03E871 0F:E861: 88        DEY
C - - - - - 0x03E872 0F:E862: 84 98     STY ram_0098
C - - - - - 0x03E874 0F:E864: 20 A6 F7  JSR sub_F7A6
C - - - - - 0x03E877 0F:E867: AD 24 06  LDA ram_0624
C - - - - - 0x03E87A 0F:E86A: D0 14     BNE bra_E880_RTS
C - - - - - 0x03E87C 0F:E86C: E6 95     INC ram_0095
bra_E86E:
C - - - - - 0x03E87E 0F:E86E: E6 95     INC ram_0095
C - - - - - 0x03E880 0F:E870: A2 03     LDX #$03
bra_E872:
C - - - - - 0x03E882 0F:E872: 20 D3 DA  JSR sub_DAD3
C - - - - - 0x03E885 0F:E875: E8        INX
C - - - - - 0x03E886 0F:E876: E8        INX
C - - - - - 0x03E887 0F:E877: E0 10     CPX #$10
C - - - - - 0x03E889 0F:E879: 90 F7     BCC bra_E872
C - - - - - 0x03E88B 0F:E87B: A9 40     LDA #$40
C - - - - - 0x03E88D 0F:E87D: 8D 60 05  STA ram_0560
bra_E880_RTS:
C - - - - - 0x03E890 0F:E880: 60        RTS



ofs_E881_1B:
C - - J - - 0x03E891 0F:E881: A2 FF     LDX #$FF
C - - - - - 0x03E893 0F:E883: 86 98     STX ram_0098
C - - - - - 0x03E895 0F:E885: E8        INX
C - - - - - 0x03E896 0F:E886: 20 2A E7  JSR sub_E72A
C - - - - - 0x03E899 0F:E889: BD C0 05  LDA ram_05C0,X
C - - - - - 0x03E89C 0F:E88C: 30 E0     BMI bra_E86E
C - - - - - 0x03E89E 0F:E88E: 4C 02 F8  JMP loc_F802



ofs_E892_1C:
C - - J - - 0x03E8A2 0F:E892: A5 22     LDA ram_frame_counter
C - - - - - 0x03E8A4 0F:E894: 29 03     AND #$03
C - - - - - 0x03E8A6 0F:E896: D0 E8     BNE bra_E880_RTS
C - - - - - 0x03E8A8 0F:E898: CE 60 05  DEC ram_0560
C - - - - - 0x03E8AB 0F:E89B: D0 E3     BNE bra_E880_RTS
C - - - - - 0x03E8AD 0F:E89D: A9 01     LDA #$01
C - - - - - 0x03E8AF 0F:E89F: 85 95     STA ram_0095
C - - - - - 0x03E8B1 0F:E8A1: 4C 2E E1  JMP loc_E12E



ofs_E8A4_1D:
C - - J - - 0x03E8B4 0F:E8A4: A9 44     LDA #$44
C - - - - - 0x03E8B6 0F:E8A6: 2C        .byte $2C
ofs_E8A7_1F:
C - - - - - 0x03E8B7 0F:E8A7: A9 45     LDA #$45
C - - - - - 0x03E8B9 0F:E8A9: 20 90 F6  JSR sub_F690
C - - - - - 0x03E8BC 0F:E8AC: 20 3F F0  JSR sub_F03F
C - - - - - 0x03E8BF 0F:E8AF: 20 6D D4  JSR sub_D46D
C - - - - - 0x03E8C2 0F:E8B2: 20 BF E8  JSR sub_E8BF
C - - - - - 0x03E8C5 0F:E8B5: E6 95     INC ram_0095
C - - - - - 0x03E8C7 0F:E8B7: A9 0B     LDA #$0B
C - - - - - 0x03E8C9 0F:E8B9: 20 14 F8  JSR sub_F814
C - - - - - 0x03E8CC 0F:E8BC: 4C 41 E1  JMP loc_E141



sub_E8BF:
C - - - - - 0x03E8CF 0F:E8BF: A5 A2     LDA ram_00A2
C - - - - - 0x03E8D1 0F:E8C1: 48        PHA
C - - - - - 0x03E8D2 0F:E8C2: A9 05     LDA #$05
C - - - - - 0x03E8D4 0F:E8C4: D0 05     BNE bra_E8CB



.export loc_0x03E8D6
loc_0x03E8D6:
C D 3 - - - 0x03E8D6 0F:E8C6: A5 A2     LDA ram_00A2
C - - - - - 0x03E8D8 0F:E8C8: 48        PHA
C - - - - - 0x03E8D9 0F:E8C9: A9 04     LDA #$04
bra_E8CB:
C - - - - - 0x03E8DB 0F:E8CB: 20 D3 F7  JSR sub_F7D3
C - - - - - 0x03E8DE 0F:E8CE: 68        PLA
C - - - - - 0x03E8DF 0F:E8CF: 85 A2     STA ram_00A2
C - - - - - 0x03E8E1 0F:E8D1: A9 00     LDA #$00
C - - - - - 0x03E8E3 0F:E8D3: 8D 30 04  STA ram_0430
C - - - - - 0x03E8E6 0F:E8D6: A9 2F     LDA #$2F
C - - - - - 0x03E8E8 0F:E8D8: 8D 10 04  STA ram_0410
C - - - - - 0x03E8EB 0F:E8DB: A9 60     LDA #$60
C - - - - - 0x03E8ED 0F:E8DD: 8D 40 04  STA ram_0440
C - - - - - 0x03E8F0 0F:E8E0: A0 16     LDY #$16
C - - - - - 0x03E8F2 0F:E8E2: 20 1A DC  JSR sub_DC1A
C - - - - - 0x03E8F5 0F:E8E5: A0 18     LDY #$18
C - - - - - 0x03E8F7 0F:E8E7: 4C 04 DC  JMP loc_DC04



ofs_E8EA_1E:
C - - J - - 0x03E8FA 0F:E8EA: A9 05     LDA #$05
C - - - - - 0x03E8FC 0F:E8EC: 85 B6     STA ram_00B6
C - - - - - 0x03E8FE 0F:E8EE: 20 DE F7  JSR sub_F7DE
C - - - - - 0x03E901 0F:E8F1: AD 31 06  LDA ram_0631
C - - - - - 0x03E904 0F:E8F4: D0 8A     BNE bra_E880_RTS
C - - - - - 0x03E906 0F:E8F6: 20 B9 E5  JSR sub_E5B9
C - - - - - 0x03E909 0F:E8F9: 4C 2E E1  JMP loc_E12E



ofs_E8FC_20:
C - - J - - 0x03E90C 0F:E8FC: A9 06     LDA #$06
C - - - - - 0x03E90E 0F:E8FE: 85 B6     STA ram_00B6
C - - - - - 0x03E910 0F:E900: 20 DE F7  JSR sub_F7DE
C - - - - - 0x03E913 0F:E903: AD 31 06  LDA ram_0631
C - - - - - 0x03E916 0F:E906: D0 89     BNE bra_E891_RTS
C - - - - - 0x03E918 0F:E908: 20 8A E6  JSR sub_E68A
C - - - - - 0x03E91B 0F:E90B: 4C 2E E1  JMP loc_E12E
bra_E891_RTS:
C - - - - - 0x03E8A1 0F:E891: 60        RTS



.export loc_0x03E91E
loc_0x03E91E:
C D 3 - - - 0x03E91E 0F:E90E: A9 20     LDA #$20
C - - - - - 0x03E920 0F:E910: 20 6B D2  JSR sub_D26B
C - - - - - 0x03E923 0F:E913: A5 2C     LDA ram_002C
C - - - - - 0x03E925 0F:E915: 4A        LSR
C - - - - - 0x03E926 0F:E916: EA        NOP
C - - - - - 0x03E927 0F:E917: B0 03     BCS bra_E91C
C - - - - - 0x03E929 0F:E919: 4C 16 B0  JMP loc_0x027026
bra_E91C:
C - - - - - 0x03E92C 0F:E91C: 20 E7 F5  JSR sub_F5E7_prg_bank_0B
C - - - - - 0x03E92F 0F:E91F: 20 00 BD  JSR sub_0x02FD10
C - - - - - 0x03E932 0F:E922: A4 00     LDY ram_0000
C - - - - - 0x03E934 0F:E924: B9 55 01  LDA ram_0155,Y
C - - - - - 0x03E937 0F:E927: 30 03     BMI bra_E92C
C - - - - - 0x03E939 0F:E929: 4C 23 B0  JMP loc_0x027033
bra_E92C:
C - - - - - 0x03E93C 0F:E92C: A9 00     LDA #$00
C - - - - - 0x03E93E 0F:E92E: 4C 5E B0  JMP loc_0x02706E



tbl_E94A:
- D 3 - - - 0x03E95A 0F:E94A: E4        .byte $E4   ; 
tbl_E94B:
- D 3 - - - 0x03E95B 0F:E94B: 25        .byte $25   ; 
- D 3 - - - 0x03E95C 0F:E94C: B7        .byte $B7   ; 
- D 3 - - - 0x03E95D 0F:E94D: 25        .byte $25   ; 



tbl_E94E:
- D 3 - - - 0x03E95E 0F:E94E: C4        .byte $C4   ; 
tbl_E94F:
- D 3 - - - 0x03E95F 0F:E94F: 25        .byte $25   ; 
- D 3 - - - 0x03E960 0F:E950: 97        .byte $97   ; 
- D 3 - - - 0x03E961 0F:E951: 25        .byte $25   ; 



tbl_E952:
- D 3 - - - 0x03E962 0F:E952: 00        .byte $00   ; 00
- D 3 - - - 0x03E963 0F:E953: 08        .byte $08   ; 01
- D 3 - - - 0x03E964 0F:E954: 10        .byte $10   ; 02
- D 3 - - - 0x03E965 0F:E955: 18        .byte $18   ; 03
- D 3 - - - 0x03E966 0F:E956: 20        .byte $20   ; 04



tbl_E957:
- D 3 - - - 0x03E967 0F:E957: 1A        .byte $1A   ; 
- D 3 - - - 0x03E968 0F:E958: 16        .byte $16   ; 
- D 3 - - - 0x03E969 0F:E959: 0B        .byte $0B   ; 
- D 3 - - - 0x03E96A 0F:E95A: 23        .byte $23   ; 
- D 3 - - - 0x03E96B 0F:E95B: 0F        .byte $0F   ; 
- D 3 - - - 0x03E96C 0F:E95C: 1C        .byte $1C   ; 
- D 3 - - - 0x03E96D 0F:E95D: 02        .byte $02   ; 
- D 3 - - - 0x03E96E 0F:E95E: FF        .byte $FF   ; 
- D 3 - - - 0x03E96F 0F:E95F: 1A        .byte $1A   ; 
- D 3 - - - 0x03E970 0F:E960: 16        .byte $16   ; 
- D 3 - - - 0x03E971 0F:E961: 0B        .byte $0B   ; 
- D 3 - - - 0x03E972 0F:E962: 23        .byte $23   ; 
- D 3 - - - 0x03E973 0F:E963: 0F        .byte $0F   ; 
- D 3 - - - 0x03E974 0F:E964: 1C        .byte $1C   ; 
- D 3 - - - 0x03E975 0F:E965: 03        .byte $03   ; 
- D 3 - - - 0x03E976 0F:E966: FF        .byte $FF   ; 
- D 3 - - - 0x03E977 0F:E967: 1A        .byte $1A   ; 
- D 3 - - - 0x03E978 0F:E968: 16        .byte $16   ; 
- D 3 - - - 0x03E979 0F:E969: 0B        .byte $0B   ; 
- D 3 - - - 0x03E97A 0F:E96A: 23        .byte $23   ; 
- D 3 - - - 0x03E97B 0F:E96B: 0F        .byte $0F   ; 
- D 3 - - - 0x03E97C 0F:E96C: 1C        .byte $1C   ; 
- D 3 - - - 0x03E97D 0F:E96D: 04        .byte $04   ; 
- D 3 - - - 0x03E97E 0F:E96E: FF        .byte $FF   ; 
- D 3 - - - 0x03E97F 0F:E96F: 1A        .byte $1A   ; 
- D 3 - - - 0x03E980 0F:E970: 16        .byte $16   ; 
- D 3 - - - 0x03E981 0F:E971: 0B        .byte $0B   ; 
- D 3 - - - 0x03E982 0F:E972: 23        .byte $23   ; 
- D 3 - - - 0x03E983 0F:E973: 0F        .byte $0F   ; 
- D 3 - - - 0x03E984 0F:E974: 1C        .byte $1C   ; 
- D 3 - - - 0x03E985 0F:E975: 05        .byte $05   ; 
- D 3 - - - 0x03E986 0F:E976: FF        .byte $FF   ; 
- D 3 - - - 0x03E987 0F:E977: 00        .byte $00   ; 
- D 3 - - - 0x03E988 0F:E978: FF        .byte $FF   ; 



tbl_E979:
- D 3 - - - 0x03E989 0F:E979: 04        .byte $04   ; 
tbl_E97A:
- D 3 - - - 0x03E98A 0F:E97A: 05        .byte $05   ; 
- D 3 - - - 0x03E98B 0F:E97B: 06        .byte $06   ; 
- D 3 - - - 0x03E98C 0F:E97C: 00        .byte $00   ; 
- D 3 - - - 0x03E98D 0F:E97D: 09        .byte $09   ; 
- D 3 - - - 0x03E98E 0F:E97E: 09        .byte $09   ; 
- D 3 - - - 0x03E98F 0F:E97F: 0A        .byte $0A   ; 
- D 3 - - - 0x03E990 0F:E980: 0A        .byte $0A   ; 
; bzk мусор возможно
- - - - - - 0x03E991 0F:E981: C9        .byte $C9   ; 
- - - - - - 0x03E992 0F:E982: C8        .byte $C8   ; 
- - - - - - 0x03E993 0F:E983: AA        .byte $AA   ; 
- - - - - - 0x03E994 0F:E984: CA        .byte $CA   ; 



tbl_E985:
.export tbl_0x03E995
tbl_0x03E995:
- D 3 - - - 0x03E995 0F:E985: 2D        .byte $2D   ; 00
- D 3 - - - 0x03E996 0F:E986: 2E        .byte $2E   ; 01
- D 3 - - - 0x03E997 0F:E987: 2F        .byte $2F   ; 02
- D 3 - - - 0x03E998 0F:E988: 30        .byte $30   ; 03
- D 3 - - - 0x03E999 0F:E989: 31        .byte $31   ; 04
- D 3 - - - 0x03E99A 0F:E98A: 2D        .byte $2D   ; 05
- D 3 - - - 0x03E99B 0F:E98B: 31        .byte $31   ; 06



tbl_E98C:
.export tbl_0x03E99C
tbl_0x03E99C:
- D 3 - - - 0x03E99C 0F:E98C: 06        .byte $06   ; 00
- D 3 - - - 0x03E99D 0F:E98D: 06        .byte $06   ; 01
- D 3 - - - 0x03E99E 0F:E98E: 06        .byte $06   ; 02
- D 3 - - - 0x03E99F 0F:E98F: 06        .byte $06   ; 03
- D 3 - - - 0x03E9A0 0F:E990: 32        .byte $32   ; 04
- D 3 - - - 0x03E9A1 0F:E991: 14        .byte $14   ; 05
- D 3 - - - 0x03E9A2 0F:E992: 32        .byte $32   ; 06



tbl_E993:
- D 3 - - - 0x03E9A3 0F:E993: 80        .byte $80   ; 00
- D 3 - - - 0x03E9A4 0F:E994: 40        .byte $40   ; 01
- D 3 - - - 0x03E9A5 0F:E995: 20        .byte $20   ; 02
- D 3 - - - 0x03E9A6 0F:E996: 10        .byte $10   ; 03
- D 3 - - - 0x03E9A7 0F:E997: 08        .byte $08   ; 04
- D 3 - - - 0x03E9A8 0F:E998: 04        .byte $04   ; 05



tbl_E999:
- D 3 - - - 0x03E9A9 0F:E999: 00        .byte $00   ; 00
- D 3 - - - 0x03E9AA 0F:E99A: 12        .byte $12   ; 01
- D 3 - - - 0x03E9AB 0F:E99B: 14        .byte $14   ; 02
- D 3 - - - 0x03E9AC 0F:E99C: 18        .byte $18   ; 03
- D 3 - - - 0x03E9AD 0F:E99D: 0C        .byte $0C   ; 04
- D 3 - - - 0x03E9AE 0F:E99E: 00        .byte $00   ; 05
- D 3 - - - 0x03E9AF 0F:E99F: 00        .byte $00   ; 06



bra_E9A0_RTS:
C - - - - - 0x03E9B0 0F:E9A0: 60        RTS
loc_E9A1:
C D 3 - - - 0x03E9B1 0F:E9A1: A0 00     LDY #$00
C - - - - - 0x03E9B3 0F:E9A3: 8C 3C 06  STY ram_063C
C - - - - - 0x03E9B6 0F:E9A6: 8C 3D 06  STY ram_063D
C - - - - - 0x03E9B9 0F:E9A9: A2 01     LDX #$01
C - - - - - 0x03E9BB 0F:E9AB: A5 95     LDA ram_0095
C - - - - - 0x03E9BD 0F:E9AD: C9 01     CMP #$01
C - - - - - 0x03E9BF 0F:E9AF: F0 EF     BEQ bra_E9A0_RTS
C - - - - - 0x03E9C1 0F:E9B1: C9 1A     CMP #$1A
C - - - - - 0x03E9C3 0F:E9B3: B0 EB     BCS bra_E9A0_RTS
C - - - - - 0x03E9C5 0F:E9B5: C9 08     CMP #$08
C - - - - - 0x03E9C7 0F:E9B7: 90 06     BCC bra_E9BF
C - - - - - 0x03E9C9 0F:E9B9: C9 17     CMP #$17
C - - - - - 0x03E9CB 0F:E9BB: 90 E3     BCC bra_E9A0_RTS
C - - - - - 0x03E9CD 0F:E9BD: CA        DEX
C - - - - - 0x03E9CE 0F:E9BE: C8        INY
bra_E9BF:
C - - - - - 0x03E9CF 0F:E9BF: A5 95     LDA ram_0095
C - - - - - 0x03E9D1 0F:E9C1: C9 17     CMP #$17
C - - - - - 0x03E9D3 0F:E9C3: BD 40 04  LDA ram_0440,X
C - - - - - 0x03E9D6 0F:E9C6: 90 05     BCC bra_E9CD
C - - - - - 0x03E9D8 0F:E9C8: C9 8F     CMP #$8F
C - - - - - 0x03E9DA 0F:E9CA: 4C CF E9  JMP loc_E9CF
bra_E9CD:
C - - - - - 0x03E9DD 0F:E9CD: C9 B4     CMP #$B4
loc_E9CF:
C D 3 - - - 0x03E9DF 0F:E9CF: 90 11     BCC bra_E9E2
C - - - - - 0x03E9E1 0F:E9D1: A5 A6     LDA ram_00A6
C - - - - - 0x03E9E3 0F:E9D3: C9 C0     CMP #$C0
C - - - - - 0x03E9E5 0F:E9D5: B0 29     BCS bra_EA00
C - - - - - 0x03E9E7 0F:E9D7: B9 40 04  LDA ram_0440,Y
C - - - - - 0x03E9EA 0F:E9DA: C9 4E     CMP #$4E
C - - - - - 0x03E9EC 0F:E9DC: 90 22     BCC bra_EA00
C - - - - - 0x03E9EE 0F:E9DE: A9 01     LDA #$01
C - - - - - 0x03E9F0 0F:E9E0: D0 17     BNE bra_E9F9
bra_E9E2:
C - - - - - 0x03E9F2 0F:E9E2: 38        SEC
C - - - - - 0x03E9F3 0F:E9E3: A9 4C     LDA #$4C
C - - - - - 0x03E9F5 0F:E9E5: FD 40 04  SBC ram_0440,X
C - - - - - 0x03E9F8 0F:E9E8: 90 16     BCC bra_EA00
C - - - - - 0x03E9FA 0F:E9EA: A5 A6     LDA ram_00A6
C - - - - - 0x03E9FC 0F:E9EC: C9 08     CMP #$08
C - - - - - 0x03E9FE 0F:E9EE: 90 10     BCC bra_EA00
C - - - - - 0x03EA00 0F:E9F0: B9 40 04  LDA ram_0440,Y
C - - - - - 0x03EA03 0F:E9F3: C9 B3     CMP #$B3
C - - - - - 0x03EA05 0F:E9F5: B0 09     BCS bra_EA00
C - - - - - 0x03EA07 0F:E9F7: A9 FF     LDA #$FF
bra_E9F9:
C - - - - - 0x03EA09 0F:E9F9: 18        CLC
C - - - - - 0x03EA0A 0F:E9FA: 6D 3C 06  ADC ram_063C
C - - - - - 0x03EA0D 0F:E9FD: 8D 3C 06  STA ram_063C
bra_EA00:
C - - - - - 0x03EA10 0F:EA00: C8        INY
C - - - - - 0x03EA11 0F:EA01: CA        DEX
C - - - - - 0x03EA12 0F:EA02: 10 BB     BPL bra_E9BF
C - - - - - 0x03EA14 0F:EA04: 18        CLC
C - - - - - 0x03EA15 0F:EA05: A5 A7     LDA ram_00A7
C - - - - - 0x03EA17 0F:EA07: 6D 3D 06  ADC ram_063D
C - - - - - 0x03EA1A 0F:EA0A: 85 A7     STA ram_00A7
C - - - - - 0x03EA1C 0F:EA0C: A5 A6     LDA ram_00A6
C - - - - - 0x03EA1E 0F:EA0E: 6D 3C 06  ADC ram_063C
C - - - - - 0x03EA21 0F:EA11: 85 A6     STA ram_00A6
C - - - - - 0x03EA23 0F:EA13: A5 A5     LDA ram_00A5
C - - - - - 0x03EA25 0F:EA15: 29 01     AND #$01
C - - - - - 0x03EA27 0F:EA17: 85 00     STA ram_0000
C - - - - - 0x03EA29 0F:EA19: A5 FF     LDA ram_00FF
C - - - - - 0x03EA2B 0F:EA1B: 29 FE     AND #$FE
C - - - - - 0x03EA2D 0F:EA1D: 05 00     ORA ram_0000
C - - - - - 0x03EA2F 0F:EA1F: 85 FF     STA ram_00FF
C - - - - - 0x03EA31 0F:EA21: A5 95     LDA ram_0095
C - - - - - 0x03EA33 0F:EA23: 60        RTS



sub_EA24:
C - - - - - 0x03EA34 0F:EA24: A5 2C     LDA ram_002C
C - - - - - 0x03EA36 0F:EA26: F0 02     BEQ bra_EA2A_RTS
C - - - - - 0x03EA38 0F:EA28: C9 02     CMP #$02
bra_EA2A_RTS:
C - - - - - 0x03EA3A 0F:EA2A: 60        RTS



.export sub_0x03EA3C
sub_0x03EA3C:
C - - - - - 0x03EA3C 0F:EA2C: 20 E7 F5  JSR sub_F5E7_prg_bank_0B
C - - - - - 0x03EA3F 0F:EA2F: 4C F9 A6  JMP loc_0x02E709



.export sub_0x03EA42
sub_0x03EA42:
.export loc_0x03EA42
loc_0x03EA42:
C D 3 - - - 0x03EA42 0F:EA32: A5 95     LDA ram_0095
C - - - - - 0x03EA44 0F:EA34: C9 10     CMP #$10
C - - - - - 0x03EA46 0F:EA36: B0 3C     BCS bra_EA74_RTS
C - - - - - 0x03EA48 0F:EA38: 86 00     STX ram_0000
C - - - - - 0x03EA4A 0F:EA3A: BD 66 EB  LDA tbl_EB66,X
C - - - - - 0x03EA4D 0F:EA3D: 85 01     STA ram_0001
C - - - - - 0x03EA4F 0F:EA3F: 20 E7 F5  JSR sub_F5E7_prg_bank_0B
C - - - - - 0x03EA52 0F:EA42: 20 50 A7  JSR sub_0x02E760
C - - - - - 0x03EA55 0F:EA45: 38        SEC
C - - - - - 0x03EA56 0F:EA46: A9 B0     LDA #$B0
C - - - - - 0x03EA58 0F:EA48: E5 05     SBC ram_0005
C - - - - - 0x03EA5A 0F:EA4A: 20 07 D2  JSR sub_D207_divide_by_10h
C - - - - - 0x03EA5D 0F:EA4D: 85 04     STA ram_0004
C - - - - - 0x03EA5F 0F:EA4F: A9 20     LDA #$20
C - - - - - 0x03EA61 0F:EA51: A4 01     LDY ram_0001
C - - - - - 0x03EA63 0F:EA53: 20 6B D2  JSR sub_D26B
C - - - - - 0x03EA66 0F:EA56: A5 00     LDA ram_0000
C - - - - - 0x03EA68 0F:EA58: D0 0C     BNE bra_EA66
C - - - - - 0x03EA6A 0F:EA5A: 20 75 EA  JSR sub_EA75
C - - - - - 0x03EA6D 0F:EA5D: 20 82 EA  JSR sub_EA82
C - - - - - 0x03EA70 0F:EA60: 20 8F EA  JSR sub_EA8F
C - - - - - 0x03EA73 0F:EA63: 4C 6F EA  JMP loc_EA6F
bra_EA66:
C - - - - - 0x03EA76 0F:EA66: 20 8F EA  JSR sub_EA8F
C - - - - - 0x03EA79 0F:EA69: 20 82 EA  JSR sub_EA82
C - - - - - 0x03EA7C 0F:EA6C: 20 75 EA  JSR sub_EA75
loc_EA6F:
C D 3 - - - 0x03EA7F 0F:EA6F: 20 59 D2  JSR sub_D259
C - - - - - 0x03EA82 0F:EA72: A6 00     LDX ram_0000
bra_EA74_RTS:
C - - - - - 0x03EA84 0F:EA74: 60        RTS



sub_EA75:
C - - - - - 0x03EA85 0F:EA75: A9 37     LDA #$37
C - - - - - 0x03EA87 0F:EA77: A4 04     LDY ram_0004
bra_EA79:
loc_EA79:
C D 3 - - - 0x03EA89 0F:EA79: F0 06     BEQ bra_EA81_RTS
C - - - - - 0x03EA8B 0F:EA7B: 20 66 D2  JSR sub_D266
C - - - - - 0x03EA8E 0F:EA7E: 88        DEY
C - - - - - 0x03EA8F 0F:EA7F: D0 F8     BNE bra_EA79
bra_EA81_RTS:
C - - - - - 0x03EA91 0F:EA81: 60        RTS



sub_EA82:
C - - - - - 0x03EA92 0F:EA82: A5 03     LDA ram_0003
C - - - - - 0x03EA94 0F:EA84: F0 FB     BEQ bra_EA81_RTS
C - - - - - 0x03EA96 0F:EA86: A4 00     LDY ram_0000
C - - - - - 0x03EA98 0F:EA88: 18        CLC
C - - - - - 0x03EA99 0F:EA89: 79 68 EB  ADC tbl_EB68,Y
C - - - - - 0x03EA9C 0F:EA8C: 4C 66 D2  JMP loc_D266



sub_EA8F:
C - - - - - 0x03EA9F 0F:EA8F: A9 3F     LDA #$3F
C - - - - - 0x03EAA1 0F:EA91: A4 02     LDY ram_0002
C - - - - - 0x03EAA3 0F:EA93: 4C 79 EA  JMP loc_EA79



sub_EA96:
.export sub_0x03EAA6
sub_0x03EAA6:
C - - - - - 0x03EAA6 0F:EA96: AD 30 05  LDA ram_0530
C - - - - - 0x03EAA9 0F:EA99: C9 03     CMP #$03
C - - - - - 0x03EAAB 0F:EA9B: 90 6A     BCC bra_EB07
C - - - - - 0x03EAAD 0F:EA9D: A5 2C     LDA ram_002C
C - - - - - 0x03EAAF 0F:EA9F: F0 07     BEQ bra_EAA8
C - - - - - 0x03EAB1 0F:EAA1: AD 27 01  LDA ram_option_timer
C - - - - - 0x03EAB4 0F:EAA4: C9 03     CMP #$03
C - - - - - 0x03EAB6 0F:EAA6: B0 D9     BCS bra_EA81_RTS
bra_EAA8:
C - - - - - 0x03EAB8 0F:EAA8: A9 04     LDA #$04
C - - - - - 0x03EABA 0F:EAAA: CD 30 05  CMP ram_0530
C - - - - - 0x03EABD 0F:EAAD: F0 C5     BEQ bra_EA74_RTS
C - - - - - 0x03EABF 0F:EAAF: CD 31 05  CMP ram_0531
C - - - - - 0x03EAC2 0F:EAB2: F0 7E     BEQ bra_EB32_RTS
C - - - - - 0x03EAC4 0F:EAB4: AD 74 06  LDA ram_0674
C - - - - - 0x03EAC7 0F:EAB7: 0D 73 06  ORA ram_0673
C - - - - - 0x03EACA 0F:EABA: 0D 72 06  ORA ram_0672
C - - - - - 0x03EACD 0F:EABD: F0 73     BEQ bra_EB32_RTS
C - - - - - 0x03EACF 0F:EABF: CE 74 06  DEC ram_0674
C - - - - - 0x03EAD2 0F:EAC2: 10 6E     BPL bra_EB32_RTS
C - - - - - 0x03EAD4 0F:EAC4: A9 4E     LDA #$4E
C - - - - - 0x03EAD6 0F:EAC6: 20 0E E1  JSR sub_E10E
C - - - - - 0x03EAD9 0F:EAC9: 8D 74 06  STA ram_0674
C - - - - - 0x03EADC 0F:EACC: CE 73 06  DEC ram_0673
C - - - - - 0x03EADF 0F:EACF: 30 1A     BMI bra_EAEB
C - - - - - 0x03EAE1 0F:EAD1: D0 34     BNE bra_EB07
C - - - - - 0x03EAE3 0F:EAD3: AD 72 06  LDA ram_0672
C - - - - - 0x03EAE6 0F:EAD6: C9 02     CMP #$02
C - - - - - 0x03EAE8 0F:EAD8: D0 2D     BNE bra_EB07
C - - - - - 0x03EAEA 0F:EADA: A5 95     LDA ram_0095
C - - - - - 0x03EAEC 0F:EADC: C9 10     CMP #$10
C - - - - - 0x03EAEE 0F:EADE: B0 27     BCS bra_EB07
C - - - - - 0x03EAF0 0F:EAE0: 20 C2 F6  JSR sub_F6C2
C - - - - - 0x03EAF3 0F:EAE3: A9 2C     LDA #$2C
C - - - - - 0x03EAF5 0F:EAE5: 20 90 F6  JSR sub_F690
C - - - - - 0x03EAF8 0F:EAE8: 4C 07 EB  JMP loc_EB07
bra_EAEB:
C - - - - - 0x03EAFB 0F:EAEB: A9 09     LDA #$09
C - - - - - 0x03EAFD 0F:EAED: 8D 73 06  STA ram_0673
C - - - - - 0x03EB00 0F:EAF0: CE 72 06  DEC ram_0672
C - - - - - 0x03EB03 0F:EAF3: AC 72 06  LDY ram_0672
C - - - - - 0x03EB06 0F:EAF6: 88        DEY
C - - - - - 0x03EB07 0F:EAF7: D0 0E     BNE bra_EB07
C - - - - - 0x03EB09 0F:EAF9: A5 95     LDA ram_0095
C - - - - - 0x03EB0B 0F:EAFB: C9 10     CMP #$10
C - - - - - 0x03EB0D 0F:EAFD: B0 08     BCS bra_EB07
C - - - - - 0x03EB0F 0F:EAFF: A4 9E     LDY ram_009E
C - - - - - 0x03EB11 0F:EB01: B9 BA FC  LDA tbl_FCBA,Y
C - - - - - 0x03EB14 0F:EB04: 20 90 F6  JSR sub_F690
bra_EB07:
loc_EB07:
.export sub_0x03EB17
sub_0x03EB17:
C D 3 - - - 0x03EB17 0F:EB07: A0 01     LDY #$01
bra_EB09:
C - - - - - 0x03EB19 0F:EB09: A9 02     LDA #$02
C - - - - - 0x03EB1B 0F:EB0B: 20 5D D2  JSR sub_D25D
C - - - - - 0x03EB1E 0F:EB0E: 18        CLC
C - - - - - 0x03EB1F 0F:EB0F: 98        TYA
C - - - - - 0x03EB20 0F:EB10: 69 6F     ADC #$6F
C - - - - - 0x03EB22 0F:EB12: 20 66 D2  JSR sub_D266
C - - - - - 0x03EB25 0F:EB15: A9 20     LDA #$20
C - - - - - 0x03EB27 0F:EB17: 20 66 D2  JSR sub_D266
C - - - - - 0x03EB2A 0F:EB1A: B9 72 06  LDA ram_0672,Y
C - - - - - 0x03EB2D 0F:EB1D: C9 0A     CMP #$0A
C - - - - - 0x03EB2F 0F:EB1F: F0 12     BEQ bra_EB33
C - - - - - 0x03EB31 0F:EB21: 09 10     ORA #$10
C - - - - - 0x03EB33 0F:EB23: 20 66 D2  JSR sub_D266
C - - - - - 0x03EB36 0F:EB26: 18        CLC
C - - - - - 0x03EB37 0F:EB27: 69 10     ADC #$10
bra_EB29_loop:
C - - - - - 0x03EB39 0F:EB29: 20 66 D2  JSR sub_D266
C - - - - - 0x03EB3C 0F:EB2C: 20 59 D2  JSR sub_D259
C - - - - - 0x03EB3F 0F:EB2F: 88        DEY
C - - - - - 0x03EB40 0F:EB30: 10 D7     BPL bra_EB09
bra_EB32_RTS:
C - - - - - 0x03EB42 0F:EB32: 60        RTS
bra_EB33:
C - - - - - 0x03EB43 0F:EB33: 98        TYA
C - - - - - 0x03EB44 0F:EB34: 18        CLC
C - - - - - 0x03EB45 0F:EB35: 69 5B     ADC #$5B
C - - - - - 0x03EB47 0F:EB37: 20 66 D2  JSR sub_D266
C - - - - - 0x03EB4A 0F:EB3A: 18        CLC
C - - - - - 0x03EB4B 0F:EB3B: 69 02     ADC #$02
C - - - - - 0x03EB4D 0F:EB3D: D0 EA     BNE bra_EB29_loop



sub_EB3F:
.export loc_0x03EB4F
loc_0x03EB4F:
C D 3 - - - 0x03EB4F 0F:EB3F: A2 01     LDX #$01
C - - - - - 0x03EB51 0F:EB41: 86 00     STX ram_0000
bra_EB43:
C - - - - - 0x03EB53 0F:EB43: A6 00     LDX ram_0000
C - - - - - 0x03EB55 0F:EB45: BD 49 06  LDA ram_0649,X
C - - - - - 0x03EB58 0F:EB48: F0 17     BEQ bra_EB61
C - - - - - 0x03EB5A 0F:EB4A: 0A        ASL
C - - - - - 0x03EB5B 0F:EB4B: 65 00     ADC ram_0000
C - - - - - 0x03EB5D 0F:EB4D: AA        TAX
C - - - - - 0x03EB5E 0F:EB4E: BC 68 EB  LDY tbl_EB68,X
bra_EB51:
C - - - - - 0x03EB61 0F:EB51: B9 6E EB  LDA tbl_EB6E,Y
C - - - - - 0x03EB64 0F:EB54: C9 FE     CMP #$FE
C - - - - - 0x03EB66 0F:EB56: F0 06     BEQ bra_EB5E
C - - - - - 0x03EB68 0F:EB58: 20 5D D2  JSR sub_D25D
C - - - - - 0x03EB6B 0F:EB5B: C8        INY
C - - - - - 0x03EB6C 0F:EB5C: D0 F3     BNE bra_EB51
bra_EB5E:
C - - - - - 0x03EB6E 0F:EB5E: 20 5B D2  JSR sub_D25B
bra_EB61:
C - - - - - 0x03EB71 0F:EB61: C6 00     DEC ram_0000
C - - - - - 0x03EB73 0F:EB63: 10 DE     BPL bra_EB43
C - - - - - 0x03EB75 0F:EB65: 60        RTS



tbl_EB66:
- D 3 - - - 0x03EB76 0F:EB66: 84        .byte $84   ; 00
- D 3 - - - 0x03EB77 0F:EB67: 91        .byte $91   ; 01



tbl_EB68:
- D 3 - - - 0x03EB78 0F:EB68: 47        .byte $47   ; 00
- D 3 - - - 0x03EB79 0F:EB69: 37        .byte $37   ; 01
- D 3 - - - 0x03EB7A 0F:EB6A: 00        .byte $00   ; 02
- D 3 - - - 0x03EB7B 0F:EB6B: 18        .byte $18   ; 03
- D 3 - - - 0x03EB7C 0F:EB6C: 0C        .byte $0C   ; 04
- D 3 - - - 0x03EB7D 0F:EB6D: 24        .byte $24   ; 05



tbl_EB6E:
- D 3 - - - 0x03EB7E 0F:EB6E: 01        .byte $01   ; 
- D 3 - - - 0x03EB7F 0F:EB6F: 61        .byte $61   ; 
- D 3 - - - 0x03EB80 0F:EB70: 20        .byte $20   ; 
- D 3 - - - 0x03EB81 0F:EB71: 1A        .byte $1A   ; 
- D 3 - - - 0x03EB82 0F:EB72: 1B        .byte $1B   ; 
- D 3 - - - 0x03EB83 0F:EB73: FF        .byte $FF   ; 
- D 3 - - - 0x03EB84 0F:EB74: 01        .byte $01   ; 
- D 3 - - - 0x03EB85 0F:EB75: 81        .byte $81   ; 
- D 3 - - - 0x03EB86 0F:EB76: 20        .byte $20   ; 
- D 3 - - - 0x03EB87 0F:EB77: 1C        .byte $1C   ; 
- D 3 - - - 0x03EB88 0F:EB78: 1F        .byte $1F   ; 
- D 3 - - - 0x03EB89 0F:EB79: FE        .byte $FE   ; 
- D 3 - - - 0x03EB8A 0F:EB7A: 01        .byte $01   ; 
- D 3 - - - 0x03EB8B 0F:EB7B: 62        .byte $62   ; 
- D 3 - - - 0x03EB8C 0F:EB7C: 20        .byte $20   ; 
- D 3 - - - 0x03EB8D 0F:EB7D: 1A        .byte $1A   ; 
- D 3 - - - 0x03EB8E 0F:EB7E: 1B        .byte $1B   ; 
- D 3 - - - 0x03EB8F 0F:EB7F: FF        .byte $FF   ; 
- D 3 - - - 0x03EB90 0F:EB80: 01        .byte $01   ; 
- D 3 - - - 0x03EB91 0F:EB81: 82        .byte $82   ; 
- D 3 - - - 0x03EB92 0F:EB82: 20        .byte $20   ; 
- D 3 - - - 0x03EB93 0F:EB83: 1C        .byte $1C   ; 
- D 3 - - - 0x03EB94 0F:EB84: 1D        .byte $1D   ; 
- D 3 - - - 0x03EB95 0F:EB85: FE        .byte $FE   ; 
- D 3 - - - 0x03EB96 0F:EB86: 01        .byte $01   ; 
- D 3 - - - 0x03EB97 0F:EB87: 7C        .byte $7C   ; 
- D 3 - - - 0x03EB98 0F:EB88: 20        .byte $20   ; 
- D 3 - - - 0x03EB99 0F:EB89: 1A        .byte $1A   ; 
- D 3 - - - 0x03EB9A 0F:EB8A: 1B        .byte $1B   ; 
- D 3 - - - 0x03EB9B 0F:EB8B: FF        .byte $FF   ; 
- D 3 - - - 0x03EB9C 0F:EB8C: 01        .byte $01   ; 
- D 3 - - - 0x03EB9D 0F:EB8D: 9C        .byte $9C   ; 
- D 3 - - - 0x03EB9E 0F:EB8E: 20        .byte $20   ; 
- D 3 - - - 0x03EB9F 0F:EB8F: 1E        .byte $1E   ; 
- D 3 - - - 0x03EBA0 0F:EB90: 1F        .byte $1F   ; 
- D 3 - - - 0x03EBA1 0F:EB91: FE        .byte $FE   ; 
- D 3 - - - 0x03EBA2 0F:EB92: 01        .byte $01   ; 
- D 3 - - - 0x03EBA3 0F:EB93: 7D        .byte $7D   ; 
- D 3 - - - 0x03EBA4 0F:EB94: 20        .byte $20   ; 
- D 3 - - - 0x03EBA5 0F:EB95: 1A        .byte $1A   ; 
- D 3 - - - 0x03EBA6 0F:EB96: 1B        .byte $1B   ; 
- D 3 - - - 0x03EBA7 0F:EB97: FF        .byte $FF   ; 
- D 3 - - - 0x03EBA8 0F:EB98: 01        .byte $01   ; 
- D 3 - - - 0x03EBA9 0F:EB99: 9D        .byte $9D   ; 
- D 3 - - - 0x03EBAA 0F:EB9A: 20        .byte $20   ; 
- D 3 - - - 0x03EBAB 0F:EB9B: 1C        .byte $1C   ; 
- D 3 - - - 0x03EBAC 0F:EB9C: 1F        .byte $1F   ; 
- D 3 - - - 0x03EBAD 0F:EB9D: FE        .byte $FE   ; 



sub_EB9E:
C - - - - - 0x03EBAE 0F:EB9E: A9 00     LDA #$00
sub_EBA0:
C - - - - - 0x03EBB0 0F:EBA0: 85 01     STA ram_0001
C - - - - - 0x03EBB2 0F:EBA2: A2 01     LDX #$01
C - - - - - 0x03EBB4 0F:EBA4: 86 A8     STX ram_00A8
bra_EBA6:
C - - - - - 0x03EBB6 0F:EBA6: A6 A8     LDX ram_00A8
C - - - - - 0x03EBB8 0F:EBA8: B5 A2     LDA ram_00A2,X
C - - - - - 0x03EBBA 0F:EBAA: 85 00     STA ram_0000
C - - - - - 0x03EBBC 0F:EBAC: 8A        TXA
C - - - - - 0x03EBBD 0F:EBAD: 0A        ASL
C - - - - - 0x03EBBE 0F:EBAE: 65 01     ADC ram_0001
C - - - - - 0x03EBC0 0F:EBB0: AA        TAX
C - - - - - 0x03EBC1 0F:EBB1: BD 53 EC  LDA tbl_EC53,X
C - - - - - 0x03EBC4 0F:EBB4: BC 54 EC  LDY tbl_EC54,X
C - - - - - 0x03EBC7 0F:EBB7: 20 6B D2  JSR sub_D26B
C - - - - - 0x03EBCA 0F:EBBA: A5 01     LDA ram_0001
C - - - - - 0x03EBCC 0F:EBBC: D0 23     BNE bra_EBE1
C - - - - - 0x03EBCE 0F:EBBE: A0 00     LDY #$00
C - - - - - 0x03EBD0 0F:EBC0: A5 00     LDA ram_0000
C - - - - - 0x03EBD2 0F:EBC2: F0 0D     BEQ bra_EBD1
bra_EBC4:
C - - - - - 0x03EBD4 0F:EBC4: C8        INY
C - - - - - 0x03EBD5 0F:EBC5: B9 01 EC  LDA tbl_EC01,Y
C - - - - - 0x03EBD8 0F:EBC8: C9 FF     CMP #$FF
C - - - - - 0x03EBDA 0F:EBCA: D0 F8     BNE bra_EBC4
C - - - - - 0x03EBDC 0F:EBCC: C8        INY
C - - - - - 0x03EBDD 0F:EBCD: C6 00     DEC ram_0000
C - - - - - 0x03EBDF 0F:EBCF: D0 F3     BNE bra_EBC4
bra_EBD1:
C - - - - - 0x03EBE1 0F:EBD1: B9 01 EC  LDA tbl_EC01,Y
C - - - - - 0x03EBE4 0F:EBD4: 20 5F D2  JSR sub_D25F
C - - - - - 0x03EBE7 0F:EBD7: C8        INY
C - - - - - 0x03EBE8 0F:EBD8: C9 FF     CMP #$FF
C - - - - - 0x03EBEA 0F:EBDA: D0 F5     BNE bra_EBD1
bra_EBDC:
C - - - - - 0x03EBEC 0F:EBDC: C6 A8     DEC ram_00A8
C - - - - - 0x03EBEE 0F:EBDE: 10 C6     BPL bra_EBA6
C - - - - - 0x03EBF0 0F:EBE0: 60        RTS
bra_EBE1:
C - - - - - 0x03EBF1 0F:EBE1: A0 00     LDY #$00
C - - - - - 0x03EBF3 0F:EBE3: A5 00     LDA ram_0000
C - - - - - 0x03EBF5 0F:EBE5: F0 0D     BEQ bra_EBF4
bra_EBE7:
C - - - - - 0x03EBF7 0F:EBE7: C8        INY
C - - - - - 0x03EBF8 0F:EBE8: B9 2A EC  LDA tbl_EC2A,Y
C - - - - - 0x03EBFB 0F:EBEB: C9 FF     CMP #$FF
C - - - - - 0x03EBFD 0F:EBED: D0 F8     BNE bra_EBE7
C - - - - - 0x03EBFF 0F:EBEF: C8        INY
C - - - - - 0x03EC00 0F:EBF0: C6 00     DEC ram_0000
C - - - - - 0x03EC02 0F:EBF2: D0 F3     BNE bra_EBE7
bra_EBF4:
C - - - - - 0x03EC04 0F:EBF4: B9 2A EC  LDA tbl_EC2A,Y
C - - - - - 0x03EC07 0F:EBF7: 20 5F D2  JSR sub_D25F
C - - - - - 0x03EC0A 0F:EBFA: C8        INY
C - - - - - 0x03EC0B 0F:EBFB: C9 FF     CMP #$FF
C - - - - - 0x03EC0D 0F:EBFD: D0 F5     BNE bra_EBF4
C - - - - - 0x03EC0F 0F:EBFF: F0 DB     BEQ bra_EBDC



tbl_EC01:
- D 3 - - - 0x03EC11 0F:EC01: 07        .byte $07   ; 
- D 3 - - - 0x03EC12 0F:EC02: 04        .byte $04   ; 
- D 3 - - - 0x03EC13 0F:EC03: 0A        .byte $0A   ; 
- D 3 - - - 0x03EC14 0F:EC04: FF        .byte $FF   ; 
- D 3 - - - 0x03EC15 0F:EC05: 0C        .byte $0C   ; 
- D 3 - - - 0x03EC16 0F:EC06: 01        .byte $01   ; 
- D 3 - - - 0x03EC17 0F:EC07: 0B        .byte $0B   ; 
- D 3 - - - 0x03EC18 0F:EC08: 05        .byte $05   ; 
- D 3 - - - 0x03EC19 0F:EC09: FF        .byte $FF   ; 
- D 3 - - - 0x03EC1A 0F:EC0A: 08        .byte $08   ; 
- D 3 - - - 0x03EC1B 0F:EC0B: 06        .byte $06   ; 
- D 3 - - - 0x03EC1C 0F:EC0C: 60        .byte $60   ; 
- D 3 - - - 0x03EC1D 0F:EC0D: 04        .byte $04   ; 
- D 3 - - - 0x03EC1E 0F:EC0E: FF        .byte $FF   ; 
- D 3 - - - 0x03EC1F 0F:EC0F: 03        .byte $03   ; 
- D 3 - - - 0x03EC20 0F:EC10: 0A        .byte $0A   ; 
- D 3 - - - 0x03EC21 0F:EC11: 09        .byte $09   ; 
- D 3 - - - 0x03EC22 0F:EC12: FF        .byte $FF   ; 
- D 3 - - - 0x03EC23 0F:EC13: 02        .byte $02   ; 
- D 3 - - - 0x03EC24 0F:EC14: 01        .byte $01   ; 
- D 3 - - - 0x03EC25 0F:EC15: 0D        .byte $0D   ; 
- D 3 - - - 0x03EC26 0F:EC16: 04        .byte $04   ; 
- D 3 - - - 0x03EC27 0F:EC17: 0F        .byte $0F   ; 
- D 3 - - - 0x03EC28 0F:EC18: FF        .byte $FF   ; 
- D 3 - - - 0x03EC29 0F:EC19: 05        .byte $05   ; 
- D 3 - - - 0x03EC2A 0F:EC1A: 0A        .byte $0A   ; 
- D 3 - - - 0x03EC2B 0F:EC1B: 0E        .byte $0E   ; 
- D 3 - - - 0x03EC2C 0F:EC1C: 05        .byte $05   ; 
- D 3 - - - 0x03EC2D 0F:EC1D: 04        .byte $04   ; 
- D 3 - - - 0x03EC2E 0F:EC1E: 01        .byte $01   ; 
- D 3 - - - 0x03EC2F 0F:EC1F: 03        .byte $03   ; 
- D 3 - - - 0x03EC30 0F:EC20: FF        .byte $FF   ; 
- D 3 - - - 0x03EC31 0F:EC21: 0D        .byte $0D   ; 
- D 3 - - - 0x03EC32 0F:EC22: 05        .byte $05   ; 
- D 3 - - - 0x03EC33 0F:EC23: 0C        .byte $0C   ; 
- D 3 - - - 0x03EC34 0F:EC24: 04        .byte $04   ; 
- D 3 - - - 0x03EC35 0F:EC25: 03        .byte $03   ; 
- D 3 - - - 0x03EC36 0F:EC26: 03        .byte $03   ; 
- D 3 - - - 0x03EC37 0F:EC27: 04        .byte $04   ; 
- D 3 - - - 0x03EC38 0F:EC28: 0C        .byte $0C   ; 
- D 3 - - - 0x03EC39 0F:EC29: FF        .byte $FF   ; 



tbl_EC2A:
- D 3 - - - 0x03EC3A 0F:EC2A: 16        .byte $16   ; 
- D 3 - - - 0x03EC3B 0F:EC2B: 0F        .byte $0F   ; 
- D 3 - - - 0x03EC3C 0F:EC2C: 19        .byte $19   ; 
- D 3 - - - 0x03EC3D 0F:EC2D: FF        .byte $FF   ; 
- D 3 - - - 0x03EC3E 0F:EC2E: 1C        .byte $1C   ; 
- D 3 - - - 0x03EC3F 0F:EC2F: 0B        .byte $0B   ; 
- D 3 - - - 0x03EC40 0F:EC30: 1A        .byte $1A   ; 
- D 3 - - - 0x03EC41 0F:EC31: 12        .byte $12   ; 
- D 3 - - - 0x03EC42 0F:EC32: FF        .byte $FF   ; 
- D 3 - - - 0x03EC43 0F:EC33: 17        .byte $17   ; 
- D 3 - - - 0x03EC44 0F:EC34: 13        .byte $13   ; 
- D 3 - - - 0x03EC45 0F:EC35: 15        .byte $15   ; 
- D 3 - - - 0x03EC46 0F:EC36: 0F        .byte $0F   ; 
- D 3 - - - 0x03EC47 0F:EC37: FF        .byte $FF   ; 
- D 3 - - - 0x03EC48 0F:EC38: 0E        .byte $0E   ; 
- D 3 - - - 0x03EC49 0F:EC39: 19        .byte $19   ; 
- D 3 - - - 0x03EC4A 0F:EC3A: 18        .byte $18   ; 
- D 3 - - - 0x03EC4B 0F:EC3B: FF        .byte $FF   ; 
- D 3 - - - 0x03EC4C 0F:EC3C: 0D        .byte $0D   ; 
- D 3 - - - 0x03EC4D 0F:EC3D: 0B        .byte $0B   ; 
- D 3 - - - 0x03EC4E 0F:EC3E: 1D        .byte $1D   ; 
- D 3 - - - 0x03EC4F 0F:EC3F: 0F        .byte $0F   ; 
- D 3 - - - 0x03EC50 0F:EC40: 23        .byte $23   ; 
- D 3 - - - 0x03EC51 0F:EC41: FF        .byte $FF   ; 
- D 3 - - - 0x03EC52 0F:EC42: 12        .byte $12   ; 
- D 3 - - - 0x03EC53 0F:EC43: 19        .byte $19   ; 
- D 3 - - - 0x03EC54 0F:EC44: 1E        .byte $1E   ; 
- D 3 - - - 0x03EC55 0F:EC45: 12        .byte $12   ; 
- D 3 - - - 0x03EC56 0F:EC46: 0F        .byte $0F   ; 
- D 3 - - - 0x03EC57 0F:EC47: 0B        .byte $0B   ; 
- D 3 - - - 0x03EC58 0F:EC48: 0E        .byte $0E   ; 
- D 3 - - - 0x03EC59 0F:EC49: FF        .byte $FF   ; 
- D 3 - - - 0x03EC5A 0F:EC4A: 1D        .byte $1D   ; 
- D 3 - - - 0x03EC5B 0F:EC4B: 12        .byte $12   ; 
- D 3 - - - 0x03EC5C 0F:EC4C: 1C        .byte $1C   ; 
- D 3 - - - 0x03EC5D 0F:EC4D: 0F        .byte $0F   ; 
- D 3 - - - 0x03EC5E 0F:EC4E: 0E        .byte $0E   ; 
- D 3 - - - 0x03EC5F 0F:EC4F: 0E        .byte $0E   ; 
- D 3 - - - 0x03EC60 0F:EC50: 0F        .byte $0F   ; 
- D 3 - - - 0x03EC61 0F:EC51: 1C        .byte $1C   ; 
- D 3 - - - 0x03EC62 0F:EC52: FF        .byte $FF   ; 



tbl_EC53:
- D 3 - - - 0x03EC63 0F:EC53: 20        .byte $20   ; 
tbl_EC54:
- D 3 - - - 0x03EC64 0F:EC54: 65        .byte $65   ; 
- D 3 - - - 0x03EC65 0F:EC55: 20        .byte $20   ; 
- D 3 - - - 0x03EC66 0F:EC56: 72        .byte $72   ; 
- D 3 - - - 0x03EC67 0F:EC57: 25        .byte $25   ; 
- D 3 - - - 0x03EC68 0F:EC58: 84        .byte $84   ; 
- D 3 - - - 0x03EC69 0F:EC59: 25        .byte $25   ; 
- D 3 - - - 0x03EC6A 0F:EC5A: F7        .byte $F7   ; 



.export sub_0x03EC6B
sub_0x03EC6B:
C - - - - - 0x03EC6B 0F:EC5B: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03EC6E 0F:EC5E: B9 54 05  LDA ram_0554,Y
C - - - - - 0x03EC71 0F:EC61: C9 30     CMP #$30
C - - - - - 0x03EC73 0F:EC63: F0 0A     BEQ bra_EC6F
C - - - - - 0x03EC75 0F:EC65: C9 39     CMP #$39
C - - - - - 0x03EC77 0F:EC67: F0 06     BEQ bra_EC6F
C - - - - - 0x03EC79 0F:EC69: A9 FF     LDA #$FF
C - - - - - 0x03EC7B 0F:EC6B: 8D F8 06  STA ram_06F8
C - - - - - 0x03EC7E 0F:EC6E: 60        RTS
bra_EC6F:
C - - - - - 0x03EC7F 0F:EC6F: 98        TYA
C - - - - - 0x03EC80 0F:EC70: 18        CLC
C - - - - - 0x03EC81 0F:EC71: 69 04     ADC #$04
C - - - - - 0x03EC83 0F:EC73: A8        TAY
C - - - - - 0x03EC84 0F:EC74: 20 26 EF  JSR sub_EF26
C - - - - - 0x03EC87 0F:EC77: 8D F8 06  STA ram_06F8
C - - - - - 0x03EC8A 0F:EC7A: 60        RTS



.export sub_0x03EC8B
sub_0x03EC8B:
C - - - - - 0x03EC8B 0F:EC7B: AD D6 06  LDA ram_06D6
C - - - - - 0x03EC8E 0F:EC7E: 10 03     BPL bra_EC83
C - - - - - 0x03EC90 0F:EC80: A9 02     LDA #$02
C - - - - - 0x03EC92 0F:EC82: 60        RTS
bra_EC83:
C - - - - - 0x03EC93 0F:EC83: A9 01     LDA #$01
C - - - - - 0x03EC95 0F:EC85: 60        RTS



.export sub_0x03EC96
sub_0x03EC96:
C - - - - - 0x03EC96 0F:EC86: AD D6 06  LDA ram_06D6
C - - - - - 0x03EC99 0F:EC89: 30 F8     BMI bra_EC83
C - - - - - 0x03EC9B 0F:EC8B: A9 02     LDA #$02
C - - - - - 0x03EC9D 0F:EC8D: 60        RTS



.export sub_0x03EC9E
sub_0x03EC9E:
C - - - - - 0x03EC9E 0F:EC8E: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03ECA1 0F:EC91: BD 80 04  LDA ram_0480,X
C - - - - - 0x03ECA4 0F:EC94: 1D 90 04  ORA ram_0490,X
C - - - - - 0x03ECA7 0F:EC97: 19 80 04  ORA ram_0480,Y
C - - - - - 0x03ECAA 0F:EC9A: 19 90 04  ORA ram_0490,Y
C - - - - - 0x03ECAD 0F:EC9D: F0 13     BEQ bra_ECB2
C - - - - - 0x03ECAF 0F:EC9F: AD D6 06  LDA ram_06D6
C - - - - - 0x03ECB2 0F:ECA2: 30 10     BMI bra_ECB4
C - - - - - 0x03ECB4 0F:ECA4: BD 80 04  LDA ram_0480,X
C - - - - - 0x03ECB7 0F:ECA7: 30 09     BMI bra_ECB2
C - - - - - 0x03ECB9 0F:ECA9: B9 80 04  LDA ram_0480,Y
C - - - - - 0x03ECBC 0F:ECAC: F0 02     BEQ bra_ECB0
C - - - - - 0x03ECBE 0F:ECAE: 10 02     BPL bra_ECB2
bra_ECB0:
C - - - - - 0x03ECC0 0F:ECB0: 18        CLC
C - - - - - 0x03ECC1 0F:ECB1: 60        RTS
bra_ECB2:
C - - - - - 0x03ECC2 0F:ECB2: 38        SEC
C - - - - - 0x03ECC3 0F:ECB3: 60        RTS
bra_ECB4:
C - - - - - 0x03ECC4 0F:ECB4: BD 80 04  LDA ram_0480,X
C - - - - - 0x03ECC7 0F:ECB7: F0 02     BEQ bra_ECBB
C - - - - - 0x03ECC9 0F:ECB9: 10 F7     BPL bra_ECB2
bra_ECBB:
C - - - - - 0x03ECCB 0F:ECBB: B9 80 04  LDA ram_0480,Y
C - - - - - 0x03ECCE 0F:ECBE: 10 F0     BPL bra_ECB0
C - - - - - 0x03ECD0 0F:ECC0: 30 F0     BMI bra_ECB2



.export sub_0x03ECD2_random_00_03
sub_0x03ECD2_random_00_03:
; дает рандомное число в Y от 00 до 03
; с помощью него читаются таблицы из 4 вариантов
C - - - - - 0x03ECD2 0F:ECC2: 20 D8 ED  JSR sub_EDD8
C - - - - - 0x03ECD5 0F:ECC5: 29 C0     AND #$C0
C - - - - - 0x03ECD7 0F:ECC7: 18        CLC
C - - - - - 0x03ECD8 0F:ECC8: 2A        ROL
C - - - - - 0x03ECD9 0F:ECC9: 2A        ROL
C - - - - - 0x03ECDA 0F:ECCA: 2A        ROL
C - - - - - 0x03ECDB 0F:ECCB: A8        TAY
C - - - - - 0x03ECDC 0F:ECCC: 60        RTS



.export sub_0x03ECDD_random_00_07
sub_0x03ECDD_random_00_07:
; дает рандомное число в Y от 00 до 07
; с помощью него читаются таблицы из 8 вариантов
C - - - - - 0x03ECDD 0F:ECCD: 20 D8 ED  JSR sub_EDD8
C - - - - - 0x03ECE0 0F:ECD0: 29 E0     AND #$E0
C - - - - - 0x03ECE2 0F:ECD2: 18        CLC
C - - - - - 0x03ECE3 0F:ECD3: 2A        ROL
C - - - - - 0x03ECE4 0F:ECD4: 2A        ROL
C - - - - - 0x03ECE5 0F:ECD5: 2A        ROL
C - - - - - 0x03ECE6 0F:ECD6: 2A        ROL
C - - - - - 0x03ECE7 0F:ECD7: A8        TAY
C - - - - - 0x03ECE8 0F:ECD8: 60        RTS



.export sub_0x03ECE9
sub_0x03ECE9:
C - - - - - 0x03ECE9 0F:ECD9: BD 40 04  LDA ram_0440,X
C - - - - - 0x03ECEC 0F:ECDC: C9 DC     CMP #$DC
C - - - - - 0x03ECEE 0F:ECDE: 90 02     BCC bra_ECE2
bra_ECE0:
C - - - - - 0x03ECF0 0F:ECE0: 18        CLC
C - - - - - 0x03ECF1 0F:ECE1: 60        RTS
bra_ECE2:
C - - - - - 0x03ECF2 0F:ECE2: C9 24     CMP #$24
C - - - - - 0x03ECF4 0F:ECE4: 90 FA     BCC bra_ECE0
C - - - - - 0x03ECF6 0F:ECE6: 38        SEC
C - - - - - 0x03ECF7 0F:ECE7: 60        RTS



.export sub_0x03ECF8
sub_0x03ECF8:
C - - - - - 0x03ECF8 0F:ECE8: BD 80 04  LDA ram_0480,X
C - - - - - 0x03ECFB 0F:ECEB: 30 06     BMI bra_ECF3
C - - - - - 0x03ECFD 0F:ECED: A9 E7     LDA #$E7
C - - - - - 0x03ECFF 0F:ECEF: DD 40 04  CMP ram_0440,X
C - - - - - 0x03ED02 0F:ECF2: 60        RTS
bra_ECF3:
C - - - - - 0x03ED03 0F:ECF3: BD 40 04  LDA ram_0440,X
C - - - - - 0x03ED06 0F:ECF6: C9 19     CMP #$19
C - - - - - 0x03ED08 0F:ECF8: 60        RTS



.export loc_0x03ED09
loc_0x03ED09:
C D 3 - - - 0x03ED09 0F:ECF9: BD C6 06  LDA ram_06C6,X
C - - - - - 0x03ED0C 0F:ECFC: 1D C8 06  ORA ram_06C8,X
C - - - - - 0x03ED0F 0F:ECFF: 95 91     STA ram_0091,X
C - - - - - 0x03ED11 0F:ED01: 4C 4C A3  JMP loc_0x03635C



.export loc_0x03ED15
loc_0x03ED15:
C D 3 - - - 0x03ED15 0F:ED05: BD C6 06  LDA ram_06C6,X
C - - - - - 0x03ED18 0F:ED08: 1D C8 06  ORA ram_06C8,X
C - - - - - 0x03ED1B 0F:ED0B: 95 91     STA ram_0091,X
C - - - - - 0x03ED1D 0F:ED0D: 9D C6 06  STA ram_06C6,X
C - - - - - 0x03ED20 0F:ED10: 9D C8 06  STA ram_06C8,X
C - - - - - 0x03ED23 0F:ED13: 60        RTS



.export sub_0x03ED24
sub_0x03ED24:
C - - - - - 0x03ED24 0F:ED14: E0 00     CPX #$00
C - - - - - 0x03ED26 0F:ED16: D0 04     BNE bra_ED1C
C - - - - - 0x03ED28 0F:ED18: 99 80 06  STA ram_0680,Y
C - - - - - 0x03ED2B 0F:ED1B: 60        RTS
bra_ED1C:
C - - - - - 0x03ED2C 0F:ED1C: 99 A0 06  STA ram_06A0,Y
C - - - - - 0x03ED2F 0F:ED1F: 60        RTS



.export sub_0x03ED30
sub_0x03ED30:
C - - - - - 0x03ED30 0F:ED20: E0 00     CPX #$00
C - - - - - 0x03ED32 0F:ED22: D0 04     BNE bra_ED28
C - - - - - 0x03ED34 0F:ED24: B9 80 06  LDA ram_0680,Y
C - - - - - 0x03ED37 0F:ED27: 60        RTS
bra_ED28:
C - - - - - 0x03ED38 0F:ED28: B9 A0 06  LDA ram_06A0,Y
C - - - - - 0x03ED3B 0F:ED2B: 60        RTS



.export sub_0x03ED3C
sub_0x03ED3C:
C - - - - - 0x03ED3C 0F:ED2C: 20 2F EE  JSR sub_EE2F
C - - - - - 0x03ED3F 0F:ED2F: B0 18     BCS bra_ED49
C - - - - - 0x03ED41 0F:ED31: AD F3 06  LDA ram_06F3
C - - - - - 0x03ED44 0F:ED34: D0 18     BNE bra_ED4E
C - - - - - 0x03ED46 0F:ED36: EE F3 06  INC ram_06F3
C - - - - - 0x03ED49 0F:ED39: 20 C6 ED  JSR sub_EDC6
C - - - - - 0x03ED4C 0F:ED3C: BC 50 05  LDY ram_0550,X
C - - - - - 0x03ED4F 0F:ED3F: D9 53 ED  CMP tbl_ED53,Y
C - - - - - 0x03ED52 0F:ED42: 90 0A     BCC bra_ED4E
C - - - - - 0x03ED54 0F:ED44: 18        CLC
C - - - - - 0x03ED55 0F:ED45: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03ED58 0F:ED48: 60        RTS
bra_ED49:
C - - - - - 0x03ED59 0F:ED49: A9 00     LDA #$00
C - - - - - 0x03ED5B 0F:ED4B: 8D F3 06  STA ram_06F3
bra_ED4E:
C - - - - - 0x03ED5E 0F:ED4E: 38        SEC
C - - - - - 0x03ED5F 0F:ED4F: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03ED62 0F:ED52: 60        RTS



tbl_ED53:
- D 3 - - - 0x03ED63 0F:ED53: 50        .byte $50   ; 00
- D 3 - - - 0x03ED64 0F:ED54: 50        .byte $50   ; 01
- - - - - - 0x03ED65 0F:ED55: 50        .byte $50   ; 02
- D 3 - - - 0x03ED66 0F:ED56: 50        .byte $50   ; 03
- D 3 - - - 0x03ED67 0F:ED57: 20        .byte $20   ; 04
- D 3 - - - 0x03ED68 0F:ED58: 60        .byte $60   ; 05
- D 3 - - - 0x03ED69 0F:ED59: 10        .byte $10   ; 06



.export sub_0x03ED6A
sub_0x03ED6A:
C - - - - - 0x03ED6A 0F:ED5A: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03ED6D 0F:ED5D: A5 11     LDA ram_0011
C - - - - - 0x03ED6F 0F:ED5F: C9 08     CMP #$08
C - - - - - 0x03ED71 0F:ED61: D0 24     BNE bra_ED87
C - - - - - 0x03ED73 0F:ED63: B9 80 04  LDA ram_0480,Y
C - - - - - 0x03ED76 0F:ED66: 19 90 04  ORA ram_0490,Y
C - - - - - 0x03ED79 0F:ED69: F0 0C     BEQ bra_ED77
C - - - - - 0x03ED7B 0F:ED6B: B9 D6 06  LDA ram_06D6,Y
C - - - - - 0x03ED7E 0F:ED6E: 59 80 04  EOR ram_0480,Y
C - - - - - 0x03ED81 0F:ED71: 29 80     AND #$80
C - - - - - 0x03ED83 0F:ED73: D0 10     BNE bra_ED85
C - - - - - 0x03ED85 0F:ED75: F0 10     BEQ bra_ED87
bra_ED77:
C - - - - - 0x03ED87 0F:ED77: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03ED8A 0F:ED7A: AD D6 06  LDA ram_06D6
C - - - - - 0x03ED8D 0F:ED7D: 4A        LSR
C - - - - - 0x03ED8E 0F:ED7E: 59 10 05  EOR ram_0510,Y
C - - - - - 0x03ED91 0F:ED81: 29 40     AND #$40
C - - - - - 0x03ED93 0F:ED83: F0 02     BEQ bra_ED87
bra_ED85:
C - - - - - 0x03ED95 0F:ED85: 38        SEC
C - - - - - 0x03ED96 0F:ED86: 60        RTS
bra_ED87:
C - - - - - 0x03ED97 0F:ED87: 18        CLC
C - - - - - 0x03ED98 0F:ED88: 60        RTS



.export sub_0x03ED9F
sub_0x03ED9F:
.export loc_0x03ED9F
loc_0x03ED9F:
C D 3 - - - 0x03ED9F 0F:ED8F: 95 91     STA ram_0091,X
C - - - - - 0x03EDA1 0F:ED91: 95 8E     STA ram_008E,X
C - - - - - 0x03EDA3 0F:ED93: A9 00     LDA #$00
C - - - - - 0x03EDA5 0F:ED95: 60        RTS



.export sub_0x03EDA6
sub_0x03EDA6:
.export loc_0x03EDA6
loc_0x03EDA6:
C D 3 - - - 0x03EDA6 0F:ED96: BD E6 06  LDA ram_06E6,X
C - - - - - 0x03EDA9 0F:ED99: D0 28     BNE bra_EDC3
.export sub_0x03EDAB
sub_0x03EDAB:
C - - - - - 0x03EDAB 0F:ED9B: A9 FF     LDA #$FF
C - - - - - 0x03EDAD 0F:ED9D: 9D C0 06  STA ram_06C0,X
C - - - - - 0x03EDB0 0F:EDA0: A9 00     LDA #$00
C - - - - - 0x03EDB2 0F:EDA2: 9D CC 06  STA ram_06CC,X
C - - - - - 0x03EDB5 0F:EDA5: 9D D2 06  STA ram_06D2,X
C - - - - - 0x03EDB8 0F:EDA8: 9D C8 06  STA ram_06C8,X
C - - - - - 0x03EDBB 0F:EDAB: 9D C6 06  STA ram_06C6,X
C - - - - - 0x03EDBE 0F:EDAE: 9D DA 06  STA ram_06DA,X
C - - - - - 0x03EDC1 0F:EDB1: 95 91     STA ram_0091,X
C - - - - - 0x03EDC3 0F:EDB3: 9D DC 06  STA ram_06DC,X
C - - - - - 0x03EDC6 0F:EDB6: 9D C2 06  STA ram_06C2,X
C - - - - - 0x03EDC9 0F:EDB9: 9D E4 06  STA ram_06E4,X
C - - - - - 0x03EDCC 0F:EDBC: 8D F0 06  STA ram_06F0
C - - - - - 0x03EDCF 0F:EDBF: 9D F4 06  STA ram_06F4,X
C - - - - - 0x03EDD2 0F:EDC2: 60        RTS
bra_EDC3:
C - - - - - 0x03EDD3 0F:EDC3: A9 00     LDA #$00
C - - - - - 0x03EDD5 0F:EDC5: 60        RTS



sub_EDC6:
.export sub_0x03EDD6
sub_0x03EDD6:
C - - - - - 0x03EDD6 0F:EDC6: 20 04 F2  JSR sub_F204_roll_rng
C - - - - - 0x03EDD9 0F:EDC9: A5 28     LDA ram_random_1
C - - - - - 0x03EDDB 0F:EDCB: AC 25 01  LDY ram_option_difficulty
bra_EDCE:
C - - - - - 0x03EDDE 0F:EDCE: F0 04     BEQ bra_EDD4
C - - - - - 0x03EDE0 0F:EDD0: 4A        LSR
C - - - - - 0x03EDE1 0F:EDD1: 88        DEY
C - - - - - 0x03EDE2 0F:EDD2: D0 FA     BNE bra_EDCE
bra_EDD4:
C - - - - - 0x03EDE4 0F:EDD4: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03EDE7 0F:EDD7: 60        RTS



sub_EDD8:
.export sub_0x03EDE8
sub_0x03EDE8:
C - - - - - 0x03EDE8 0F:EDD8: 20 04 F2  JSR sub_F204_roll_rng
C - - - - - 0x03EDEB 0F:EDDB: A5 28     LDA ram_random_1
C - - - - - 0x03EDED 0F:EDDD: A0 02     LDY #$02
bra_EDDF_loop:
C - - - - - 0x03EDEF 0F:EDDF: 20 A5 A1  JSR sub_0x0361B5
C - - - - - 0x03EDF2 0F:EDE2: F0 F0     BEQ bra_EDD4
C - - - - - 0x03EDF4 0F:EDE4: 4A        LSR
C - - - - - 0x03EDF5 0F:EDE5: 88        DEY
C - - - - - 0x03EDF6 0F:EDE6: 10 F7     BPL bra_EDDF_loop


; bzk мусор возможно
- - - - - - 0x03EDF8 0F:EDE8: A5 11     LDA ram_0011
- - - - - - 0x03EDFA 0F:EDEA: F0 06     BEQ bra_EDF2
- - - - - - 0x03EDFC 0F:EDEC: C9 07     CMP #$07
- - - - - - 0x03EDFE 0F:EDEE: F0 02     BEQ bra_EDF2
- - - - - - 0x03EE00 0F:EDF0: D0 3B     BNE bra_EE2D
bra_EDF2:
- - - - - - 0x03EE02 0F:EDF2: 86 17     STX ram_0017
- - - - - - 0x03EE04 0F:EDF4: BD DE 06  LDA ram_06DE,X
- - - - - - 0x03EE07 0F:EDF7: AA        TAX
- - - - - - 0x03EE08 0F:EDF8: 20 FE ED  JSR sub_EDFE
- - - - - - 0x03EE0B 0F:EDFB: A6 17     LDX ram_0017
- - - - - - 0x03EE0D 0F:EDFD: 60        RTS



sub_EDFE:
.export sub_0x03EE0E
sub_0x03EE0E:
C - - - - - 0x03EE0E 0F:EDFE: AD A6 05  LDA ram_05A6
C - - - - - 0x03EE11 0F:EE01: 29 C0     AND #$C0
C - - - - - 0x03EE13 0F:EE03: 30 28     BMI bra_EE2D
C - - - - - 0x03EE15 0F:EE05: F0 26     BEQ bra_EE2D
C - - - - - 0x03EE17 0F:EE07: AD A6 05  LDA ram_05A6
C - - - - - 0x03EE1A 0F:EE0A: 29 01     AND #$01
C - - - - - 0x03EE1C 0F:EE0C: 85 08     STA ram_0008
C - - - - - 0x03EE1E 0F:EE0E: E4 08     CPX ram_0008
C - - - - - 0x03EE20 0F:EE10: D0 1B     BNE bra_EE2D
C - - - - - 0x03EE22 0F:EE12: F0 17     BEQ bra_EE2B



.export sub_0x03EE24
sub_0x03EE24:
C - - - - - 0x03EE24 0F:EE14: AD 36 05  LDA ram_0536
C - - - - - 0x03EE27 0F:EE17: C9 02     CMP #$02
C - - - - - 0x03EE29 0F:EE19: D0 12     BNE bra_EE2D
C - - - - - 0x03EE2B 0F:EE1B: AD 36 04  LDA ram_0436
C - - - - - 0x03EE2E 0F:EE1E: D0 0D     BNE bra_EE2D
C - - - - - 0x03EE30 0F:EE20: AD 46 04  LDA ram_0446
C - - - - - 0x03EE33 0F:EE23: C9 E8     CMP #$E8
C - - - - - 0x03EE35 0F:EE25: B0 06     BCS bra_EE2D
C - - - - - 0x03EE37 0F:EE27: C9 18     CMP #$18
C - - - - - 0x03EE39 0F:EE29: 90 02     BCC bra_EE2D
bra_EE2B:
C - - - - - 0x03EE3B 0F:EE2B: 18        CLC
C - - - - - 0x03EE3C 0F:EE2C: 60        RTS
bra_EE2D:
C - - - - - 0x03EE3D 0F:EE2D: 38        SEC
C - - - - - 0x03EE3E 0F:EE2E: 60        RTS



sub_EE2F:
.export sub_0x03EE3F
sub_0x03EE3F:
C - - - - - 0x03EE3F 0F:EE2F: 8A        TXA
C - - - - - 0x03EE40 0F:EE30: 4D A6 05  EOR ram_05A6
C - - - - - 0x03EE43 0F:EE33: 29 01     AND #$01
C - - - - - 0x03EE45 0F:EE35: F0 F6     BEQ bra_EE2D
C - - - - - 0x03EE47 0F:EE37: AD A6 05  LDA ram_05A6
C - - - - - 0x03EE4A 0F:EE3A: 30 EF     BMI bra_EE2B
C - - - - - 0x03EE4C 0F:EE3C: 38        SEC
C - - - - - 0x03EE4D 0F:EE3D: 60        RTS



.export sub_0x03EE4E
sub_0x03EE4E:
C - - - - - 0x03EE4E 0F:EE3E: A8        TAY
C - - - - - 0x03EE4F 0F:EE3F: A5 0F     LDA ram_000F
C - - - - - 0x03EE51 0F:EE41: 10 13     BPL bra_EE56
C - - - - - 0x03EE53 0F:EE43: 49 FF     EOR #$FF
C - - - - - 0x03EE55 0F:EE45: 85 0F     STA ram_000F
C - - - - - 0x03EE57 0F:EE47: A5 0E     LDA ram_000E
C - - - - - 0x03EE59 0F:EE49: 49 FF     EOR #$FF
C - - - - - 0x03EE5B 0F:EE4B: 18        CLC
C - - - - - 0x03EE5C 0F:EE4C: 69 01     ADC #$01
C - - - - - 0x03EE5E 0F:EE4E: 85 0E     STA ram_000E
C - - - - - 0x03EE60 0F:EE50: A5 0F     LDA ram_000F
C - - - - - 0x03EE62 0F:EE52: 69 00     ADC #$00
C - - - - - 0x03EE64 0F:EE54: 85 0F     STA ram_000F
bra_EE56:
C - - - - - 0x03EE66 0F:EE56: D0 07     BNE bra_EE5F
C - - - - - 0x03EE68 0F:EE58: A5 0E     LDA ram_000E
C - - - - - 0x03EE6A 0F:EE5A: 84 0E     STY ram_000E
C - - - - - 0x03EE6C 0F:EE5C: C5 0E     CMP ram_000E
C - - - - - 0x03EE6E 0F:EE5E: 60        RTS
bra_EE5F:
- - - - - - 0x03EE6F 0F:EE5F: 38        SEC
- - - - - - 0x03EE70 0F:EE60: 60        RTS



.export sub_0x03EE76
sub_0x03EE76:
C - - - - - 0x03EE76 0F:EE66: BD 90 05  LDA ram_0590,X
C - - - - - 0x03EE79 0F:EE69: 19 90 05  ORA ram_0590,Y
C - - - - - 0x03EE7C 0F:EE6C: C9 40     CMP #$40
C - - - - - 0x03EE7E 0F:EE6E: 90 1B     BCC bra_EE8B
C - - - - - 0x03EE80 0F:EE70: 38        SEC
C - - - - - 0x03EE81 0F:EE71: BD 90 05  LDA ram_0590,X
C - - - - - 0x03EE84 0F:EE74: F9 90 05  SBC ram_0590,Y
C - - - - - 0x03EE87 0F:EE77: 90 04     BCC bra_EE7D
C - - - - - 0x03EE89 0F:EE79: C9 30     CMP #$30
C - - - - - 0x03EE8B 0F:EE7B: B0 16     BCS bra_EE93
bra_EE7D:
C - - - - - 0x03EE8D 0F:EE7D: 38        SEC
C - - - - - 0x03EE8E 0F:EE7E: B9 90 05  LDA ram_0590,Y
C - - - - - 0x03EE91 0F:EE81: FD 90 05  SBC ram_0590,X
C - - - - - 0x03EE94 0F:EE84: C9 30     CMP #$30
C - - - - - 0x03EE96 0F:EE86: B0 07     BCS bra_EE8F
C - - - - - 0x03EE98 0F:EE88: A9 00     LDA #$00
C - - - - - 0x03EE9A 0F:EE8A: 60        RTS
bra_EE8B:
C - - - - - 0x03EE9B 0F:EE8B: 38        SEC
C - - - - - 0x03EE9C 0F:EE8C: A9 00     LDA #$00
C - - - - - 0x03EE9E 0F:EE8E: 60        RTS
bra_EE8F:
C - - - - - 0x03EE9F 0F:EE8F: 18        CLC
C - - - - - 0x03EEA0 0F:EE90: A9 FF     LDA #$FF
C - - - - - 0x03EEA2 0F:EE92: 60        RTS
bra_EE93:
C - - - - - 0x03EEA3 0F:EE93: 18        CLC
C - - - - - 0x03EEA4 0F:EE94: A9 01     LDA #$01
C - - - - - 0x03EEA6 0F:EE96: 60        RTS



sub_EE97:
C - - - - - 0x03EEA7 0F:EE97: B9 40 04  LDA ram_0440,Y
C - - - - - 0x03EEAA 0F:EE9A: 38        SEC
C - - - - - 0x03EEAB 0F:EE9B: FD 40 04  SBC ram_0440,X
C - - - - - 0x03EEAE 0F:EE9E: 85 0E     STA ram_000E
C - - - - - 0x03EEB0 0F:EEA0: B9 30 04  LDA ram_0430,Y
C - - - - - 0x03EEB3 0F:EEA3: FD 30 04  SBC ram_0430,X
C - - - - - 0x03EEB6 0F:EEA6: 85 0F     STA ram_000F
C - - - - - 0x03EEB8 0F:EEA8: 60        RTS



.export sub_0x03EEB9
sub_0x03EEB9:
C - - - - - 0x03EEB9 0F:EEA9: B9 10 04  LDA ram_0410,Y
C - - - - - 0x03EEBC 0F:EEAC: 38        SEC
C - - - - - 0x03EEBD 0F:EEAD: FD 10 04  SBC ram_0410,X
C - - - - - 0x03EEC0 0F:EEB0: 85 0E     STA ram_000E
C - - - - - 0x03EEC2 0F:EEB2: A9 00     LDA #$00
C - - - - - 0x03EEC4 0F:EEB4: E9 00     SBC #$00
C - - - - - 0x03EEC6 0F:EEB6: 85 0F     STA ram_000F
C - - - - - 0x03EEC8 0F:EEB8: 60        RTS



.export sub_0x03EEC9
sub_0x03EEC9:
C - - - - - 0x03EEC9 0F:EEB9: A0 06     LDY #$06
C - - - - - 0x03EECB 0F:EEBB: B9 00 04  LDA ram_0400,Y
C - - - - - 0x03EECE 0F:EEBE: F0 60     BEQ bra_EF20
C - - - - - 0x03EED0 0F:EEC0: 20 97 EE  JSR sub_EE97
C - - - - - 0x03EED3 0F:EEC3: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03EED6 0F:EEC6: A5 0E     LDA ram_000E
C - - - - - 0x03EED8 0F:EEC8: 8D D9 06  STA ram_06D9
C - - - - - 0x03EEDB 0F:EECB: A5 0F     LDA ram_000F
C - - - - - 0x03EEDD 0F:EECD: 8D D8 06  STA ram_06D8
C - - - - - 0x03EEE0 0F:EED0: AD D6 06  LDA ram_06D6
C - - - - - 0x03EEE3 0F:EED3: 45 0F     EOR ram_000F
C - - - - - 0x03EEE5 0F:EED5: 30 4C     BMI bra_EF23
C - - - - - 0x03EEE7 0F:EED7: A5 0F     LDA ram_000F
C - - - - - 0x03EEE9 0F:EED9: 10 13     BPL bra_EEEE
C - - - - - 0x03EEEB 0F:EEDB: 49 FF     EOR #$FF
C - - - - - 0x03EEED 0F:EEDD: 85 0F     STA ram_000F
C - - - - - 0x03EEEF 0F:EEDF: A5 0E     LDA ram_000E
C - - - - - 0x03EEF1 0F:EEE1: 49 FF     EOR #$FF
C - - - - - 0x03EEF3 0F:EEE3: 18        CLC
C - - - - - 0x03EEF4 0F:EEE4: 69 01     ADC #$01
C - - - - - 0x03EEF6 0F:EEE6: 85 0E     STA ram_000E
C - - - - - 0x03EEF8 0F:EEE8: A5 0F     LDA ram_000F
C - - - - - 0x03EEFA 0F:EEEA: 69 00     ADC #$00
C - - - - - 0x03EEFC 0F:EEEC: 85 0F     STA ram_000F
bra_EEEE:
C - - - - - 0x03EEFE 0F:EEEE: AD D6 06  LDA ram_06D6
C - - - - - 0x03EF01 0F:EEF1: 10 14     BPL bra_EF07
C - - - - - 0x03EF03 0F:EEF3: 49 FF     EOR #$FF
C - - - - - 0x03EF05 0F:EEF5: 85 05     STA ram_0005
C - - - - - 0x03EF07 0F:EEF7: AD D7 06  LDA ram_06D7
C - - - - - 0x03EF0A 0F:EEFA: 49 FF     EOR #$FF
C - - - - - 0x03EF0C 0F:EEFC: 18        CLC
C - - - - - 0x03EF0D 0F:EEFD: 69 01     ADC #$01
C - - - - - 0x03EF0F 0F:EEFF: 85 04     STA ram_0004
C - - - - - 0x03EF11 0F:EF01: A5 05     LDA ram_0005
C - - - - - 0x03EF13 0F:EF03: 69 00     ADC #$00
C - - - - - 0x03EF15 0F:EF05: 85 05     STA ram_0005
bra_EF07:
C - - - - - 0x03EF17 0F:EF07: A5 04     LDA ram_0004
C - - - - - 0x03EF19 0F:EF09: 6A        ROR
C - - - - - 0x03EF1A 0F:EF0A: 85 04     STA ram_0004
C - - - - - 0x03EF1C 0F:EF0C: C5 0E     CMP ram_000E
C - - - - - 0x03EF1E 0F:EF0E: 90 10     BCC bra_EF20
C - - - - - 0x03EF20 0F:EF10: A5 05     LDA ram_0005
C - - - - - 0x03EF22 0F:EF12: 4A        LSR
C - - - - - 0x03EF23 0F:EF13: 85 05     STA ram_0005
C - - - - - 0x03EF25 0F:EF15: A5 04     LDA ram_0004
C - - - - - 0x03EF27 0F:EF17: 6A        ROR
C - - - - - 0x03EF28 0F:EF18: 85 04     STA ram_0004
C - - - - - 0x03EF2A 0F:EF1A: C5 0E     CMP ram_000E
C - - - - - 0x03EF2C 0F:EF1C: 90 40     BCC bra_EF5E
C - - - - - 0x03EF2E 0F:EF1E: B0 3B     BCS bra_EF5B
bra_EF20:
C - - - - - 0x03EF30 0F:EF20: A9 03     LDA #$03
C - - - - - 0x03EF32 0F:EF22: 60        RTS
bra_EF23:
C - - - - - 0x03EF33 0F:EF23: A9 00     LDA #$00
C - - - - - 0x03EF35 0F:EF25: 60        RTS



sub_EF26:
.export sub_0x03EF36
sub_0x03EF36:
C - - - - - 0x03EF36 0F:EF26: 20 97 EE  JSR sub_EE97
C - - - - - 0x03EF39 0F:EF29: A5 0E     LDA ram_000E
C - - - - - 0x03EF3B 0F:EF2B: 8D D7 06  STA ram_06D7
C - - - - - 0x03EF3E 0F:EF2E: A5 0F     LDA ram_000F
C - - - - - 0x03EF40 0F:EF30: 8D D6 06  STA ram_06D6
C - - - - - 0x03EF43 0F:EF33: 8A        TXA
C - - - - - 0x03EF44 0F:EF34: 0A        ASL
C - - - - - 0x03EF45 0F:EF35: 0A        ASL
C - - - - - 0x03EF46 0F:EF36: A8        TAY
C - - - - - 0x03EF47 0F:EF37: B9 E8 06  LDA ram_06E8,Y
C - - - - - 0x03EF4A 0F:EF3A: 85 16     STA ram_0016
C - - - - - 0x03EF4C 0F:EF3C: B9 E9 06  LDA ram_06E9,Y
C - - - - - 0x03EF4F 0F:EF3F: 85 15     STA ram_0015
C - - - - - 0x03EF51 0F:EF41: B9 EA 06  LDA ram_06EA,Y
C - - - - - 0x03EF54 0F:EF44: 85 14     STA ram_0014
C - - - - - 0x03EF56 0F:EF46: BC DE 06  LDY ram_06DE,X
C - - - - - 0x03EF59 0F:EF49: AD 38 06  LDA ram_dist_X_btw_plrs
C - - - - - 0x03EF5C 0F:EF4C: C5 14     CMP ram_0014
C - - - - - 0x03EF5E 0F:EF4E: B0 D0     BCS bra_EF20
C - - - - - 0x03EF60 0F:EF50: C5 15     CMP ram_0015
C - - - - - 0x03EF62 0F:EF52: B0 0A     BCS bra_EF5E
C - - - - - 0x03EF64 0F:EF54: C5 16     CMP ram_0016
C - - - - - 0x03EF66 0F:EF56: B0 03     BCS bra_EF5B
C - - - - - 0x03EF68 0F:EF58: A9 00     LDA #$00
C - - - - - 0x03EF6A 0F:EF5A: 60        RTS
bra_EF5B:
C - - - - - 0x03EF6B 0F:EF5B: A9 01     LDA #$01
C - - - - - 0x03EF6D 0F:EF5D: 60        RTS
bra_EF5E:
C - - - - - 0x03EF6E 0F:EF5E: A9 02     LDA #$02
C - - - - - 0x03EF70 0F:EF60: 60        RTS



_off003_EF61_0D:
- D 3 - I - 0x03EF71 0F:EF61: 00        .byte $00   ; 
- D 3 - I - 0x03EF72 0F:EF62: 22        .byte $22   ; 
- D 3 - I - 0x03EF73 0F:EF63: 78        .byte $78   ; 
- D 3 - I - 0x03EF74 0F:EF64: 00        .byte $00   ; 
- D 3 - I - 0x03EF75 0F:EF65: 78        .byte $78   ; 
- D 3 - I - 0x03EF76 0F:EF66: 00        .byte $00   ; 
- D 3 - I - 0x03EF77 0F:EF67: 78        .byte $78   ; 
- D 3 - I - 0x03EF78 0F:EF68: 00        .byte $00   ; 
- D 3 - I - 0x03EF79 0F:EF69: 58        .byte $58   ; 
- D 3 - I - 0x03EF7A 0F:EF6A: 00        .byte $00   ; 
- D 3 - I - 0x03EF7B 0F:EF6B: FF        .byte $FF   ; 



.export sub_0x03EF7C
sub_0x03EF7C:
C - - - - - 0x03EF7C 0F:EF6C: A2 01     LDX #$01
C - - - - - 0x03EF7E 0F:EF6E: 86 9D     STX ram_009D
C - - - - - 0x03EF80 0F:EF70: CA        DEX
C - - - - - 0x03EF81 0F:EF71: 86 AD     STX ram_00AD
C - - - - - 0x03EF83 0F:EF73: 4C 08 80  JMP loc_0x024018



.export loc_0x03EF88
loc_0x03EF88:
C D 3 - - - 0x03EF88 0F:EF78: 10 14     BPL bra_EF8E
C - - - - - 0x03EF8A 0F:EF7A: BD 40 04  LDA ram_0440,X
C - - - - - 0x03EF8D 0F:EF7D: D9 40 04  CMP ram_0440,Y
C - - - - - 0x03EF90 0F:EF80: B5 91     LDA ram_0091,X
C - - - - - 0x03EF92 0F:EF82: 29 01     AND #$01
C - - - - - 0x03EF94 0F:EF84: F0 06     BEQ bra_EF8C
C - - - - - 0x03EF96 0F:EF86: B0 06     BCS bra_EF8E
bra_EF88:
C - - - - - 0x03EF98 0F:EF88: 18        CLC
C - - - - - 0x03EF99 0F:EF89: 4C 0E AE  JMP loc_0x026E1E
bra_EF8C:
C - - - - - 0x03EF9C 0F:EF8C: B0 FA     BCS bra_EF88
bra_EF8E:
C - - - - - 0x03EF9E 0F:EF8E: 4C 27 AE  JMP loc_0x026E37



.export tbl_0x03EFB6
tbl_0x03EFB6:
- D 3 - - - 0x03EFB6 0F:EFA6: 00        .byte $00   ; 
- D 3 - - - 0x03EFB7 0F:EFA7: 48        .byte $48   ; 
- D 3 - - - 0x03EFB8 0F:EFA8: A0        .byte $A0   ; 
- D 3 - - - 0x03EFB9 0F:EFA9: A0        .byte $A0   ; 



tbl_EFAA:
- D 3 - - - 0x03EFBA 0F:EFAA: B0        .byte $B0   ; 00
- D 3 - - - 0x03EFBB 0F:EFAB: C0        .byte $C0   ; 01
- D 3 - - - 0x03EFBC 0F:EFAC: C0        .byte $C0   ; 02
- D 3 - - - 0x03EFBD 0F:EFAD: C0        .byte $C0   ; 03



.export sub_0x03EFCC
sub_0x03EFCC:
C - - - - - 0x03EFCC 0F:EFBC: C0 2F     CPY #$2F
C - - - - - 0x03EFCE 0F:EFBE: A5 18     LDA ram_0018
C - - - - - 0x03EFD0 0F:EFC0: 90 0A     BCC bra_EFCC
C - - - - - 0x03EFD2 0F:EFC2: C9 03     CMP #$03
C - - - - - 0x03EFD4 0F:EFC4: B9 B2 EF  LDA tbl_EFE1 - $2F,Y
C - - - - - 0x03EFD7 0F:EFC7: B0 0C     BCS bra_EFD5_RTS
C - - - - - 0x03EFD9 0F:EFC9: B9 A7 EF  LDA tbl_EFD6 - $2F,Y
bra_EFCC:
C - - - - - 0x03EFDC 0F:EFCC: BC 50 05  LDY ram_0550,X
C - - - - - 0x03EFDF 0F:EFCF: C0 06     CPY #$06
C - - - - - 0x03EFE1 0F:EFD1: D0 02     BNE bra_EFD5_RTS
C - - - - - 0x03EFE3 0F:EFD3: E9 01     SBC #$01
bra_EFD5_RTS:
C - - - - - 0x03EFE5 0F:EFD5: 60        RTS



tbl_EFD6:
- D 3 - - - 0x03EFE6 0F:EFD6: 09        .byte $09   ; 00
- D 3 - - - 0x03EFE7 0F:EFD7: 0C        .byte $0C   ; 01
- D 3 - - - 0x03EFE8 0F:EFD8: 07        .byte $07   ; 02
- D 3 - - - 0x03EFE9 0F:EFD9: 0A        .byte $0A   ; 03
- D 3 - - - 0x03EFEA 0F:EFDA: 09        .byte $09   ; 04
- D 3 - - - 0x03EFEB 0F:EFDB: 09        .byte $09   ; 05
- D 3 - - - 0x03EFEC 0F:EFDC: 09        .byte $09   ; 06
- D 3 - - - 0x03EFED 0F:EFDD: 06        .byte $06   ; 07
- D 3 - - - 0x03EFEE 0F:EFDE: 0C        .byte $0C   ; 08
- D 3 - - - 0x03EFEF 0F:EFDF: 09        .byte $09   ; 09
- D 3 - - - 0x03EFF0 0F:EFE0: 06        .byte $06   ; 0A

tbl_EFE1:
- D 3 - - - 0x03EFF1 0F:EFE1: 0E        .byte $0E   ; 00
- D 3 - - - 0x03EFF2 0F:EFE2: 0E        .byte $0E   ; 01
- D 3 - - - 0x03EFF3 0F:EFE3: 0E        .byte $0E   ; 02
- D 3 - - - 0x03EFF4 0F:EFE4: 10        .byte $10   ; 03
- D 3 - - - 0x03EFF5 0F:EFE5: 10        .byte $10   ; 04
- D 3 - - - 0x03EFF6 0F:EFE6: 10        .byte $10   ; 05
- D 3 - - - 0x03EFF7 0F:EFE7: 0E        .byte $0E   ; 06
- D 3 - - - 0x03EFF8 0F:EFE8: 08        .byte $08   ; 07
- D 3 - - - 0x03EFF9 0F:EFE9: 10        .byte $10   ; 08
- D 3 - - - 0x03EFFA 0F:EFEA: 0C        .byte $0C   ; 09
- D 3 - - - 0x03EFFB 0F:EFEB: 08        .byte $08   ; 0A



.export sub_0x03EFFC
sub_0x03EFFC:
.export loc_0x03EFFC
loc_0x03EFFC:
C D 3 - - - 0x03EFFC 0F:EFEC: AC 26 01  LDY ram_option_speed
C - - - - - 0x03EFFF 0F:EFEF: F0 0C     BEQ bra_EFFD
C - - - - - 0x03F001 0F:EFF1: A4 95     LDY ram_0095
C - - - - - 0x03F003 0F:EFF3: C0 07     CPY #$07
C - - - - - 0x03F005 0F:EFF5: D0 06     BNE bra_EFFD
C - - - - - 0x03F007 0F:EFF7: E9 80     SBC #$80
C - - - - - 0x03F009 0F:EFF9: 10 02     BPL bra_EFFD
C - - - - - 0x03F00B 0F:EFFB: E9 00     SBC #$00
bra_EFFD:
C - - - - - 0x03F00D 0F:EFFD: 4C 7D D1  JMP loc_D17D



sub_F000:
C - - - - - 0x03F010 0F:F000: 20 3C F0  JSR sub_F03C
C - - - - - 0x03F013 0F:F003: 20 8C FC  JSR sub_FC8C
C - - - - - 0x03F016 0F:F006: A5 FF     LDA ram_00FF
C - - - - - 0x03F018 0F:F008: 29 FC     AND #$FC
C - - - - - 0x03F01A 0F:F00A: 85 FF     STA ram_00FF
C - - - - - 0x03F01C 0F:F00C: A2 02     LDX #$02
C - - - - - 0x03F01E 0F:F00E: 20 44 F0  JSR sub_F044
C - - - - - 0x03F021 0F:F011: A0 04     LDY #$04
C - - - - - 0x03F023 0F:F013: A9 1B     LDA #$1B
C - - - - - 0x03F025 0F:F015: 20 94 D3  JSR sub_D394
C - - - - - 0x03F028 0F:F018: EA        NOP
C - - - - - 0x03F029 0F:F019: EE 6D 06  INC ram_066D
C - - - - - 0x03F02C 0F:F01C: 20 02 D6  JSR sub_D602
C - - - - - 0x03F02F 0F:F01F: 86 35     STX ram_0035
C - - - - - 0x03F031 0F:F021: A9 78     LDA #$78
C - - - - - 0x03F033 0F:F023: 85 32     STA ram_0032
C - - - - - 0x03F035 0F:F025: A9 7A     LDA #$7A
C - - - - - 0x03F037 0F:F027: 85 33     STA ram_0033
C - - - - - 0x03F039 0F:F029: A9 08     LDA #$08
C - - - - - 0x03F03B 0F:F02B: 20 14 F8  JSR sub_F814
C - - - - - 0x03F03E 0F:F02E: A9 05     LDA #$05
C - - - - - 0x03F040 0F:F030: 85 08     STA ram_0008
bra_F032:
C - - - - - 0x03F042 0F:F032: A5 08     LDA ram_0008
C - - - - - 0x03F044 0F:F034: 20 E5 F6  JSR sub_F6E5
C - - - - - 0x03F047 0F:F037: C6 08     DEC ram_0008
C - - - - - 0x03F049 0F:F039: 10 F7     BPL bra_F032
C - - - - - 0x03F04B 0F:F03B: 60        RTS



sub_F03C:
.export sub_0x03F04C
sub_0x03F04C:
C - - - - - 0x03F04C 0F:F03C: 20 88 FB  JSR sub_FB88
sub_F03F:
.export sub_0x03F04F
sub_0x03F04F:
C - - - - - 0x03F04F 0F:F03F: 20 BE DA  JSR sub_DABE
sub_F042:
.export loc_0x03F052
loc_0x03F052:
C D 3 - - - 0x03F052 0F:F042: A2 00     LDX #$00
sub_F044:
.export sub_0x03F054
sub_0x03F054:
C - - - - - 0x03F054 0F:F044: 8A        TXA
C - - - - - 0x03F055 0F:F045: 4A        LSR
C - - - - - 0x03F056 0F:F046: A8        TAY
C - - - - - 0x03F057 0F:F047: B9 B8 E3  LDA tbl_E3B8_prg_bank,Y
C - - - - - 0x03F05A 0F:F04A: 20 F9 F5  JSR sub_F5F9
C - - - - - 0x03F05D 0F:F04D: 20 53 F0  JSR sub_F053
C - - - - - 0x03F060 0F:F050: 4C 17 F6  JMP loc_F617
sub_F053:
C - - - - - 0x03F063 0F:F053: BD DE F0  LDA tbl_F0DE,X
C - - - - - 0x03F066 0F:F056: 85 00     STA ram_0000
C - - - - - 0x03F068 0F:F058: BD DF F0  LDA tbl_F0DE + 1,X
C - - - - - 0x03F06B 0F:F05B: 85 01     STA ram_0001
C - - - - - 0x03F06D 0F:F05D: 20 D6 F2  JSR sub_F2D6
C - - - - - 0x03F070 0F:F060: 85 FD     STA ram_00FD
C - - - - - 0x03F072 0F:F062: 85 FC     STA ram_00FC
loc_F064:
C D 3 - - - 0x03F074 0F:F064: AD 02 20  LDA $2002
C - - - - - 0x03F077 0F:F067: A0 01     LDY #$01
C - - - - - 0x03F079 0F:F069: B1 00     LDA (ram_0000),Y
C - - - - - 0x03F07B 0F:F06B: 8D 06 20  STA $2006
C - - - - - 0x03F07E 0F:F06E: 88        DEY
C - - - - - 0x03F07F 0F:F06F: B1 00     LDA (ram_0000),Y
C - - - - - 0x03F081 0F:F071: 8D 06 20  STA $2006
C - - - - - 0x03F084 0F:F074: A2 00     LDX #$00
C - - - - - 0x03F086 0F:F076: A9 02     LDA #$02
C - - - - - 0x03F088 0F:F078: 20 51 D0  JSR sub_D051
loc_F07B:
C D 3 - - - 0x03F08B 0F:F07B: A0 00     LDY #$00
C - - - - - 0x03F08D 0F:F07D: B1 00     LDA (ram_0000),Y
C - - - - - 0x03F08F 0F:F07F: C9 FF     CMP #$FF
C - - - - - 0x03F091 0F:F081: F0 58     BEQ bra_F0DB
C - - - - - 0x03F093 0F:F083: C9 7F     CMP #$7F
C - - - - - 0x03F095 0F:F085: F0 4C     BEQ bra_F0D3
C - - - - - 0x03F097 0F:F087: A8        TAY
C - - - - - 0x03F098 0F:F088: 10 21     BPL bra_F0AB
C - - - - - 0x03F09A 0F:F08A: 29 7F     AND #$7F
C - - - - - 0x03F09C 0F:F08C: 85 02     STA ram_0002
C - - - - - 0x03F09E 0F:F08E: A0 01     LDY #$01
C - - - - - 0x03F0A0 0F:F090: 29 40     AND #$40
C - - - - - 0x03F0A2 0F:F092: D0 29     BNE bra_F0BD
bra_F094:
C - - - - - 0x03F0A4 0F:F094: B1 00     LDA (ram_0000),Y
C - - - - - 0x03F0A6 0F:F096: 8D 07 20  STA $2007
C - - - - - 0x03F0A9 0F:F099: C4 02     CPY ram_0002
C - - - - - 0x03F0AB 0F:F09B: F0 03     BEQ bra_F0A0
C - - - - - 0x03F0AD 0F:F09D: C8        INY
C - - - - - 0x03F0AE 0F:F09E: D0 F4     BNE bra_F094
bra_F0A0:
C - - - - - 0x03F0B0 0F:F0A0: A9 01     LDA #$01
C - - - - - 0x03F0B2 0F:F0A2: 18        CLC
C - - - - - 0x03F0B3 0F:F0A3: 65 02     ADC ram_0002
bra_F0A5:
C - - - - - 0x03F0B5 0F:F0A5: 20 51 D0  JSR sub_D051
C - - - - - 0x03F0B8 0F:F0A8: 4C 7B F0  JMP loc_F07B
bra_F0AB:
C - - - - - 0x03F0BB 0F:F0AB: A0 01     LDY #$01
C - - - - - 0x03F0BD 0F:F0AD: 85 02     STA ram_0002
C - - - - - 0x03F0BF 0F:F0AF: B1 00     LDA (ram_0000),Y
C - - - - - 0x03F0C1 0F:F0B1: A4 02     LDY ram_0002
bra_F0B3_loop:
C - - - - - 0x03F0C3 0F:F0B3: 8D 07 20  STA $2007
C - - - - - 0x03F0C6 0F:F0B6: 88        DEY
C - - - - - 0x03F0C7 0F:F0B7: D0 FA     BNE bra_F0B3_loop
loc_F0B9:
C D 3 - - - 0x03F0C9 0F:F0B9: A9 02     LDA #$02
C - - - - - 0x03F0CB 0F:F0BB: D0 E8     BNE bra_F0A5
bra_F0BD:
C - - - - - 0x03F0CD 0F:F0BD: B1 00     LDA (ram_0000),Y
C - - - - - 0x03F0CF 0F:F0BF: 85 03     STA ram_0003
C - - - - - 0x03F0D1 0F:F0C1: A5 02     LDA ram_0002
C - - - - - 0x03F0D3 0F:F0C3: 29 3F     AND #$3F
C - - - - - 0x03F0D5 0F:F0C5: A8        TAY
bra_F0C6:
C - - - - - 0x03F0D6 0F:F0C6: A5 03     LDA ram_0003
C - - - - - 0x03F0D8 0F:F0C8: 8D 07 20  STA $2007
C - - - - - 0x03F0DB 0F:F0CB: E6 03     INC ram_0003
C - - - - - 0x03F0DD 0F:F0CD: 88        DEY
C - - - - - 0x03F0DE 0F:F0CE: D0 F6     BNE bra_F0C6
C - - - - - 0x03F0E0 0F:F0D0: 4C B9 F0  JMP loc_F0B9
bra_F0D3:
C - - - - - 0x03F0E3 0F:F0D3: A9 01     LDA #$01
C - - - - - 0x03F0E5 0F:F0D5: 20 51 D0  JSR sub_D051
C - - - - - 0x03F0E8 0F:F0D8: 4C 64 F0  JMP loc_F064
bra_F0DB:
C - - - - - 0x03F0EB 0F:F0DB: 4C B5 F2  JMP loc_F2B5



tbl_F0DE:
- D 3 - - - 0x03F0EE 0F:F0DE: 4A F1     .word _off003_F14A_00
- D 3 - - - 0x03F0F0 0F:F0E0: A5 83     .word _off003_0x02C3B5_01
- D 3 - - - 0x03F0F2 0F:F0E2: 6A 83     .word _off003_0x02C37A_02
- D 3 - - - 0x03F0F4 0F:F0E4: DE 8A     .word _off003_0x02CAEE_03
- D 3 - - - 0x03F0F6 0F:F0E6: 60 84     .word _off003_0x02C470_04
- D 3 - - - 0x03F0F8 0F:F0E8: 5F 87     .word _off003_0x02C76F_05
- D 3 - - - 0x03F0FA 0F:F0EA: 35 84     .word _off003_0x02C445_06
- D 3 - - - 0x03F0FC 0F:F0EC: DB 8B     .word _off003_0x02CBEB_07
- D 3 - - - 0x03F0FE 0F:F0EE: F4 8E     .word _off003_0x02CF04_08
- D 3 - - - 0x03F100 0F:F0F0: 46 90     .word _off003_0x02D056_09
- D 3 - - - 0x03F102 0F:F0F2: 3F 91     .word _off003_0x02D14F_0A
- D 3 - - - 0x03F104 0F:F0F4: 9C 94     .word _off003_0x02D4AC_0B
- D 3 - - - 0x03F106 0F:F0F6: 8E 9F     .word _off003_0x02DF9E_0C
- D 3 - - - 0x03F108 0F:F0F8: 61 EF     .word _off003_EF61_0D
- D 3 - - - 0x03F10A 0F:F0FA: 39 96     .word _off003_0x02D649_0E
- D 3 - - - 0x03F10C 0F:F0FC: 47 84     .word _off003_0x02C457_0F
- D 3 - - - 0x03F10E 0F:F0FE: B2 99     .word _off003_0x02D9C2_10
- D 3 - - - 0x03F110 0F:F100: A6 9B     .word _off003_0x02DBB6_11
- D 3 - - - 0x03F112 0F:F102: 44 9C     .word _off003_0x02DC54_12
- D 3 - - - 0x03F114 0F:F104: 04 9D     .word _off003_0x02DD14_13
- D 3 - - - 0x03F116 0F:F106: AE 9E     .word _off003_0x02DEBE_14
- D 3 - - - 0x03F118 0F:F108: 75 A0     .word _off003_0x02E085_15
- D 3 - - - 0x03F11A 0F:F10A: 81 A1     .word _off003_0x02E191_16
- D 3 - - - 0x03F11C 0F:F10C: 77 A2     .word _off003_0x02E287_17
- D 3 - - - 0x03F11E 0F:F10E: CF A2     .word _off003_0x02E2DF_18
- D 3 - - - 0x03F120 0F:F110: 3D A3     .word _off003_0x02E34D_19
- D 3 - - - 0x03F122 0F:F112: B4 A3     .word _off003_0x02E3C4_1A
- D 3 - - - 0x03F124 0F:F114: 29 A4     .word _off003_0x02E439_1B
- D 3 - - - 0x03F126 0F:F116: 95 A4     .word _off003_0x02E4A5_1C
- D 3 - - - 0x03F128 0F:F118: 0E A5     .word _off003_0x02E51E_1D
- D 3 - - - 0x03F12A 0F:F11A: 00 80     .word _off003_0x000010_1E
- D 3 - - - 0x03F12C 0F:F11C: 00 82     .word _off003_0x000210_1F



tbl_F13B:
- D 3 - - - 0x03F14B 0F:F13B: 14        .byte $14   ; 00
- D 3 - - - 0x03F14C 0F:F13C: 13        .byte $13   ; 01
- D 3 - - - 0x03F14D 0F:F13D: 12        .byte $12   ; 02
- D 3 - - - 0x03F14E 0F:F13E: 13        .byte $13   ; 03
- D 3 - - - 0x03F14F 0F:F13F: 0F        .byte $0F   ; 04
- D 3 - - - 0x03F150 0F:F140: 1F        .byte $1F   ; 05
- D 3 - - - 0x03F151 0F:F141: 1A        .byte $1A   ; 06



loc_F142:
C D 3 - - - 0x03F152 0F:F142: A9 36     LDA #$36
C - - - - - 0x03F154 0F:F144: 20 00 F6  JSR sub_F600_prg_bank_0B
C - - - - - 0x03F157 0F:F147: 4C 70 BF  JMP loc_0x02FF80



_off003_F14A_00:
- D 3 - I - 0x03F15A 0F:F14A: 00        .byte $00   ; 
- D 3 - I - 0x03F15B 0F:F14B: 20        .byte $20   ; 
- D 3 - I - 0x03F15C 0F:F14C: 78        .byte $78   ; 
- D 3 - I - 0x03F15D 0F:F14D: 00        .byte $00   ; 
- D 3 - I - 0x03F15E 0F:F14E: 78        .byte $78   ; 
- D 3 - I - 0x03F15F 0F:F14F: 00        .byte $00   ; 
- D 3 - I - 0x03F160 0F:F150: 78        .byte $78   ; 
- D 3 - I - 0x03F161 0F:F151: 00        .byte $00   ; 
- D 3 - I - 0x03F162 0F:F152: 78        .byte $78   ; 
- D 3 - I - 0x03F163 0F:F153: 00        .byte $00   ; 
- D 3 - I - 0x03F164 0F:F154: 78        .byte $78   ; 
- D 3 - I - 0x03F165 0F:F155: 00        .byte $00   ; 
- D 3 - I - 0x03F166 0F:F156: 78        .byte $78   ; 
- D 3 - I - 0x03F167 0F:F157: 00        .byte $00   ; 
- D 3 - I - 0x03F168 0F:F158: 78        .byte $78   ; 
- D 3 - I - 0x03F169 0F:F159: 00        .byte $00   ; 
- D 3 - I - 0x03F16A 0F:F15A: 78        .byte $78   ; 
- D 3 - I - 0x03F16B 0F:F15B: 00        .byte $00   ; 
- D 3 - I - 0x03F16C 0F:F15C: 40        .byte $40   ; 
- D 3 - I - 0x03F16D 0F:F15D: 00        .byte $00   ; 
- D 3 - I - 0x03F16E 0F:F15E: 7F        .byte $7F   ; 
- D 3 - I - 0x03F16F 0F:F15F: 00        .byte $00   ; 
- D 3 - I - 0x03F170 0F:F160: 2C        .byte $2C   ; 
- D 3 - I - 0x03F171 0F:F161: 78        .byte $78   ; 
- D 3 - I - 0x03F172 0F:F162: 00        .byte $00   ; 
- D 3 - I - 0x03F173 0F:F163: 78        .byte $78   ; 
- D 3 - I - 0x03F174 0F:F164: 00        .byte $00   ; 
- D 3 - I - 0x03F175 0F:F165: 78        .byte $78   ; 
- D 3 - I - 0x03F176 0F:F166: 00        .byte $00   ; 
- D 3 - I - 0x03F177 0F:F167: 78        .byte $78   ; 
- D 3 - I - 0x03F178 0F:F168: 00        .byte $00   ; 
- D 3 - I - 0x03F179 0F:F169: 78        .byte $78   ; 
- D 3 - I - 0x03F17A 0F:F16A: 00        .byte $00   ; 
- D 3 - I - 0x03F17B 0F:F16B: 78        .byte $78   ; 
- D 3 - I - 0x03F17C 0F:F16C: 00        .byte $00   ; 
- D 3 - I - 0x03F17D 0F:F16D: 78        .byte $78   ; 
- D 3 - I - 0x03F17E 0F:F16E: 00        .byte $00   ; 
- D 3 - I - 0x03F17F 0F:F16F: 78        .byte $78   ; 
- D 3 - I - 0x03F180 0F:F170: 00        .byte $00   ; 
- D 3 - I - 0x03F181 0F:F171: 40        .byte $40   ; 
- D 3 - I - 0x03F182 0F:F172: 00        .byte $00   ; 
- D 3 - I - 0x03F183 0F:F173: FF        .byte $FF   ; 



vec_F174_RESET_handler:
C - - - - - 0x03F184 0F:F174: 78        SEI
C - - - - - 0x03F185 0F:F175: D8        CLD
C - - - - - 0x03F186 0F:F176: A2 FF     LDX #$FF
C - - - - - 0x03F188 0F:F178: 9A        TXS
C - - - - - 0x03F189 0F:F179: A9 00     LDA #$00
C - - - - - 0x03F18B 0F:F17B: 8D 00 20  STA $2000
C - - - - - 0x03F18E 0F:F17E: 8D 01 20  STA $2001
C - - - - - 0x03F191 0F:F181: A2 02     LDX #$02
bra_F183:
C - - - - - 0x03F193 0F:F183: AD 02 20  LDA $2002
C - - - - - 0x03F196 0F:F186: 10 FB     BPL bra_F183
bra_F188:
C - - - - - 0x03F198 0F:F188: AD 02 20  LDA $2002
C - - - - - 0x03F19B 0F:F18B: 30 FB     BMI bra_F188
C - - - - - 0x03F19D 0F:F18D: CA        DEX
C - - - - - 0x03F19E 0F:F18E: D0 F3     BNE bra_F183
C - - - - - 0x03F1A0 0F:F190: 20 49 F3  JSR sub_F349
C - - - - - 0x03F1A3 0F:F193: 20 BB F2  JSR sub_F2BB
C - - - - - 0x03F1A6 0F:F196: 8A        TXA
C - - - - - 0x03F1A7 0F:F197: 85 00     STA ram_0000
C - - - - - 0x03F1A9 0F:F199: 85 01     STA ram_0001
C - - - - - 0x03F1AB 0F:F19B: A0 00     LDY #$00
C - - - - - 0x03F1AD 0F:F19D: A2 08     LDX #$08
bra_F19F:
C - - - - - 0x03F1AF 0F:F19F: A5 01     LDA ram_0001
C - - - - - 0x03F1B1 0F:F1A1: C9 01     CMP #$01
C - - - - - 0x03F1B3 0F:F1A3: D0 08     BNE bra_F1AD
C - - - - - 0x03F1B5 0F:F1A5: C0 13     CPY #$13
C - - - - - 0x03F1B7 0F:F1A7: 90 04     BCC bra_F1AD
C - - - - - 0x03F1B9 0F:F1A9: C0 2E     CPY #$2E
C - - - - - 0x03F1BB 0F:F1AB: 90 04     BCC bra_F1B1
bra_F1AD:
C - - - - - 0x03F1BD 0F:F1AD: A9 00     LDA #$00
C - - - - - 0x03F1BF 0F:F1AF: 91 00     STA (ram_0000),Y
bra_F1B1:
C - - - - - 0x03F1C1 0F:F1B1: C8        INY
C - - - - - 0x03F1C2 0F:F1B2: D0 EB     BNE bra_F19F
C - - - - - 0x03F1C4 0F:F1B4: E6 01     INC ram_0001
C - - - - - 0x03F1C6 0F:F1B6: E4 01     CPX ram_0001
C - - - - - 0x03F1C8 0F:F1B8: D0 E5     BNE bra_F19F
C - - - - - 0x03F1CA 0F:F1BA: A0 02     LDY #$02
bra_F1BC_loop:
C - - - - - 0x03F1CC 0F:F1BC: B9 22 01  LDA ram_0122,Y
C - - - - - 0x03F1CF 0F:F1BF: D9 75 F3  CMP tbl_F375,Y
C - - - - - 0x03F1D2 0F:F1C2: D0 05     BNE bra_F1C9
C - - - - - 0x03F1D4 0F:F1C4: 88        DEY
C - - - - - 0x03F1D5 0F:F1C5: 10 F5     BPL bra_F1BC_loop
C - - - - - 0x03F1D7 0F:F1C7: 30 2B     BMI bra_F1F4
bra_F1C9:
C - - - - - 0x03F1D9 0F:F1C9: A0 06     LDY #$06
bra_F1CB_loop:
C - - - - - 0x03F1DB 0F:F1CB: B9 BB F9  LDA tbl_F9BB_default_options,Y
C - - - - - 0x03F1DE 0F:F1CE: 99 25 01  STA ram_options,Y
C - - - - - 0x03F1E1 0F:F1D1: 88        DEY
C - - - - - 0x03F1E2 0F:F1D2: 10 F7     BPL bra_F1CB_loop
C - - - - - 0x03F1E4 0F:F1D4: EA        NOP
C - - - - - 0x03F1E5 0F:F1D5: A0 0C     LDY #$0C
bra_F1D7:
C - - - - - 0x03F1E7 0F:F1D7: A9 05     LDA #$05
C - - - - - 0x03F1E9 0F:F1D9: 99 13 01  STA ram_0113,Y
C - - - - - 0x03F1EC 0F:F1DC: A9 00     LDA #$00
C - - - - - 0x03F1EE 0F:F1DE: 99 14 01  STA ram_0114,Y
C - - - - - 0x03F1F1 0F:F1E1: 99 15 01  STA ram_0115,Y
C - - - - - 0x03F1F4 0F:F1E4: 88        DEY
C - - - - - 0x03F1F5 0F:F1E5: 88        DEY
C - - - - - 0x03F1F6 0F:F1E6: 88        DEY
C - - - - - 0x03F1F7 0F:F1E7: 10 EE     BPL bra_F1D7
C - - - - - 0x03F1F9 0F:F1E9: A0 02     LDY #$02
bra_F1EB_loop:
C - - - - - 0x03F1FB 0F:F1EB: B9 75 F3  LDA tbl_F375,Y
C - - - - - 0x03F1FE 0F:F1EE: 99 22 01  STA ram_0122,Y
C - - - - - 0x03F201 0F:F1F1: 88        DEY
C - - - - - 0x03F202 0F:F1F2: 10 F7     BPL bra_F1EB_loop
bra_F1F4:
C - - - - - 0x03F204 0F:F1F4: 20 C2 F6  JSR sub_F6C2
C - - - - - 0x03F207 0F:F1F7: 20 E1 F4  JSR sub_F4E1
C - - - - - 0x03F20A 0F:F1FA: 20 C6 F2  JSR sub_F2C6
C - - - - - 0x03F20D 0F:F1FD: 58        CLI
loc_F1FE_infinite_loop:
C D 3 - - - 0x03F20E 0F:F1FE: 20 04 F2  JSR sub_F204_roll_rng
C - - - - - 0x03F211 0F:F201: 4C FE F1  JMP loc_F1FE_infinite_loop



sub_F204_roll_rng:
.export sub_0x03F214_roll_rng
sub_0x03F214_roll_rng:
C - - - - - 0x03F214 0F:F204: E6 28     INC ram_random_1
C - - - - - 0x03F216 0F:F206: 18        CLC
C - - - - - 0x03F217 0F:F207: A5 28     LDA ram_random_1
C - - - - - 0x03F219 0F:F209: 65 22     ADC ram_frame_counter
C - - - - - 0x03F21B 0F:F20B: 85 28     STA ram_random_1
C - - - - - 0x03F21D 0F:F20D: A4 28     LDY ram_random_1
C - - - - - 0x03F21F 0F:F20F: B9 00 00  LDA ram_0000,Y
C - - - - - 0x03F222 0F:F212: 65 28     ADC ram_random_1
C - - - - - 0x03F224 0F:F214: 65 8C     ADC ram_random_2
C - - - - - 0x03F226 0F:F216: 85 8C     STA ram_random_2
C - - - - - 0x03F228 0F:F218: 60        RTS



vec_F219_NMI_handler:
C - - - - - 0x03F229 0F:F219: 48        PHA
C - - - - - 0x03F22A 0F:F21A: 8A        TXA
C - - - - - 0x03F22B 0F:F21B: 48        PHA
C - - - - - 0x03F22C 0F:F21C: 98        TYA
C - - - - - 0x03F22D 0F:F21D: 48        PHA
C - - - - - 0x03F22E 0F:F21E: AD 02 20  LDA $2002
C - - - - - 0x03F231 0F:F221: 58        CLI
C - - - - - 0x03F232 0F:F222: A4 23     LDY ram_0023
C - - - - - 0x03F234 0F:F224: D0 53     BNE bra_F279
C - - - - - 0x03F236 0F:F226: 20 D6 F2  JSR sub_F2D6
C - - - - - 0x03F239 0F:F229: A9 00     LDA #$00
C - - - - - 0x03F23B 0F:F22B: 8D 03 20  STA $2003
C - - - - - 0x03F23E 0F:F22E: A0 02     LDY #$02
C - - - - - 0x03F240 0F:F230: 20 C2 F8  JSR sub_F8C2
C - - - - - 0x03F243 0F:F233: 20 02 F7  JSR sub_F702
C - - - - - 0x03F246 0F:F236: A5 FE     LDA ram_00FE
C - - - - - 0x03F248 0F:F238: A6 24     LDX ram_0024
C - - - - - 0x03F24A 0F:F23A: F0 06     BEQ bra_F242
C - - - - - 0x03F24C 0F:F23C: C6 24     DEC ram_0024
C - - - - - 0x03F24E 0F:F23E: F0 02     BEQ bra_F242
C - - - - - 0x03F250 0F:F240: 29 E7     AND #$E7
bra_F242:
C - - - - - 0x03F252 0F:F242: 8D 01 20  STA $2001
C - - - - - 0x03F255 0F:F245: 20 95 FB  JSR sub_FB95
C - - - - - 0x03F258 0F:F248: 20 9B F2  JSR sub_F29B
C - - - - - 0x03F25B 0F:F24B: 20 20 F6  JSR sub_F620
C - - - - - 0x03F25E 0F:F24E: E6 23     INC ram_0023
C - - - - - 0x03F260 0F:F250: A5 2E     LDA ram_002E
C - - - - - 0x03F262 0F:F252: D0 03     BNE bra_F257
C - - - - - 0x03F264 0F:F254: 20 59 F6  JSR sub_F659
bra_F257:
C - - - - - 0x03F267 0F:F257: 20 ED F2  JSR sub_F2ED
C - - - - - 0x03F26A 0F:F25A: A5 91     LDA ram_0091
C - - - - - 0x03F26C 0F:F25C: 05 92     ORA ram_0092
C - - - - - 0x03F26E 0F:F25E: 85 93     STA ram_0093
C - - - - - 0x03F270 0F:F260: A5 8E     LDA ram_008E
C - - - - - 0x03F272 0F:F262: 05 8F     ORA ram_008F
C - - - - - 0x03F274 0F:F264: 85 90     STA ram_0090
C - - - - - 0x03F276 0F:F266: 20 78 F3  JSR sub_F378
C - - - - - 0x03F279 0F:F269: 20 D3 F6  JSR sub_F6D3
C - - - - - 0x03F27C 0F:F26C: A9 00     LDA #$00
C - - - - - 0x03F27E 0F:F26E: 20 5D D2  JSR sub_D25D
C - - - - - 0x03F281 0F:F271: 85 23     STA ram_0023
C - - - - - 0x03F283 0F:F273: 4C 6C F8  JMP loc_F86C



bra_F279:
C - - - - - 0x03F289 0F:F279: A5 FE     LDA ram_00FE
C - - - - - 0x03F28B 0F:F27B: A6 24     LDX ram_0024
C - - - - - 0x03F28D 0F:F27D: F0 06     BEQ bra_F285
- - - - - - 0x03F28F 0F:F27F: C6 24     DEC ram_0024
- - - - - - 0x03F291 0F:F281: F0 02     BEQ bra_F285
- - - - - - 0x03F293 0F:F283: 29 E7     AND #$E7
bra_F285:
C - - - - - 0x03F295 0F:F285: 8D 01 20  STA $2001
C - - - - - 0x03F298 0F:F288: 20 95 FB  JSR sub_FB95
C - - - - - 0x03F29B 0F:F28B: 20 9B F2  JSR sub_F29B
C - - - - - 0x03F29E 0F:F28E: 20 20 F6  JSR sub_F620
C - - - - - 0x03F2A1 0F:F291: A4 2E     LDY ram_002E
C - - - - - 0x03F2A3 0F:F293: D0 03     BNE bra_F298
C - - - - - 0x03F2A5 0F:F295: 20 59 F6  JSR sub_F659
bra_F298:
C - - - - - 0x03F2A8 0F:F298: 4C 6C F8  JMP loc_F86C
sub_F29B:
C - - - - - 0x03F2AB 0F:F29B: AD 02 20  LDA $2002
C - - - - - 0x03F2AE 0F:F29E: A9 20     LDA #$20
C - - - - - 0x03F2B0 0F:F2A0: 8D 06 20  STA $2006
C - - - - - 0x03F2B3 0F:F2A3: A9 00     LDA #$00
C - - - - - 0x03F2B5 0F:F2A5: 8D 06 20  STA $2006
C - - - - - 0x03F2B8 0F:F2A8: AD 02 20  LDA $2002
C - - - - - 0x03F2BB 0F:F2AB: A5 FD     LDA ram_00FD
C - - - - - 0x03F2BD 0F:F2AD: 8D 05 20  STA $2005
C - - - - - 0x03F2C0 0F:F2B0: A5 FC     LDA ram_00FC
C - - - - - 0x03F2C2 0F:F2B2: 8D 05 20  STA $2005
loc_F2B5:
C D 3 - - - 0x03F2C5 0F:F2B5: A5 FF     LDA ram_00FF
C - - - - - 0x03F2C7 0F:F2B7: 8D 00 20  STA $2000
C - - - - - 0x03F2CA 0F:F2BA: 60        RTS



sub_F2BB:
C - - - - - 0x03F2CB 0F:F2BB: A9 0F     LDA #$0F
C - - - - - 0x03F2CD 0F:F2BD: 8D 15 40  STA $4015
C - - - - - 0x03F2D0 0F:F2C0: A9 C0     LDA #$C0
C - - - - - 0x03F2D2 0F:F2C2: 8D 17 40  STA $4017
C - - - - - 0x03F2D5 0F:F2C5: 60        RTS



sub_F2C6:
C - - - - - 0x03F2D6 0F:F2C6: A9 A8     LDA #$A8
C - - - - - 0x03F2D8 0F:F2C8: 85 FF     STA ram_00FF
C - - - - - 0x03F2DA 0F:F2CA: 8D 00 20  STA $2000
C - - - - - 0x03F2DD 0F:F2CD: A9 1E     LDA #$1E
C - - - - - 0x03F2DF 0F:F2CF: 85 FE     STA ram_00FE
C - - - - - 0x03F2E1 0F:F2D1: A9 05     LDA #$05
C - - - - - 0x03F2E3 0F:F2D3: 85 24     STA ram_0024
C - - - - - 0x03F2E5 0F:F2D5: 60        RTS



sub_F2D6:
C - - - - - 0x03F2E6 0F:F2D6: A5 FF     LDA ram_00FF
C - - - - - 0x03F2E8 0F:F2D8: 29 7F     AND #$7F
C - - - - - 0x03F2EA 0F:F2DA: 8D 00 20  STA $2000
C - - - - - 0x03F2ED 0F:F2DD: A5 FE     LDA ram_00FE
C - - - - - 0x03F2EF 0F:F2DF: 29 E7     AND #$E7
C - - - - - 0x03F2F1 0F:F2E1: 8D 01 20  STA $2001
C - - - - - 0x03F2F4 0F:F2E4: A9 00     LDA #$00
C - - - - - 0x03F2F6 0F:F2E6: 8D 06 20  STA $2006
C - - - - - 0x03F2F9 0F:F2E9: 8D 06 20  STA $2006
C - - - - - 0x03F2FC 0F:F2EC: 60        RTS



sub_F2ED:
C - - - - - 0x03F2FD 0F:F2ED: A2 00     LDX #$00
C - - - - - 0x03F2FF 0F:F2EF: 20 24 F3  JSR sub_F324_read_joystick_regs
C - - - - - 0x03F302 0F:F2F2: A2 02     LDX #$02
C - - - - - 0x03F304 0F:F2F4: 20 24 F3  JSR sub_F324_read_joystick_regs
C - - - - - 0x03F307 0F:F2F7: A5 00     LDA ram_0000
C - - - - - 0x03F309 0F:F2F9: C5 02     CMP ram_0002
C - - - - - 0x03F30B 0F:F2FB: D0 1C     BNE bra_F319
C - - - - - 0x03F30D 0F:F2FD: A5 01     LDA ram_0001
C - - - - - 0x03F30F 0F:F2FF: C5 03     CMP ram_0003
C - - - - - 0x03F311 0F:F301: D0 16     BNE bra_F319
C - - - - - 0x03F313 0F:F303: A2 00     LDX #$00
C - - - - - 0x03F315 0F:F305: 20 09 F3  JSR sub_F309
C - - - - - 0x03F318 0F:F308: E8        INX
sub_F309:
C - - - - - 0x03F319 0F:F309: B5 00     LDA ram_0000,X
C - - - - - 0x03F31B 0F:F30B: A8        TAY
C - - - - - 0x03F31C 0F:F30C: 55 FA     EOR ram_00FA,X
C - - - - - 0x03F31E 0F:F30E: 35 00     AND ram_0000,X
C - - - - - 0x03F320 0F:F310: 95 8E     STA ram_008E,X
C - - - - - 0x03F322 0F:F312: 95 F8     STA ram_00F8,X
C - - - - - 0x03F324 0F:F314: 94 91     STY ram_0091,X
C - - - - - 0x03F326 0F:F316: 94 FA     STY ram_00FA,X
C - - - - - 0x03F328 0F:F318: 60        RTS
bra_F319:
- - - - - - 0x03F329 0F:F319: A9 00     LDA #$00
- - - - - - 0x03F32B 0F:F31B: 85 8E     STA ram_008E
- - - - - - 0x03F32D 0F:F31D: 85 F8     STA ram_00F8
- - - - - - 0x03F32F 0F:F31F: 85 8F     STA ram_008F
- - - - - - 0x03F331 0F:F321: 85 F9     STA ram_00F9
- - - - - - 0x03F333 0F:F323: 60        RTS



sub_F324_read_joystick_regs:
C - - - - - 0x03F334 0F:F324: A0 01     LDY #$01
C - - - - - 0x03F336 0F:F326: 8C 16 40  STY $4016
C - - - - - 0x03F339 0F:F329: 88        DEY
C - - - - - 0x03F33A 0F:F32A: 8C 16 40  STY $4016
C - - - - - 0x03F33D 0F:F32D: A0 08     LDY #$08
bra_F32F_loop:
C - - - - - 0x03F33F 0F:F32F: AD 16 40  LDA $4016
C - - - - - 0x03F342 0F:F332: 85 04     STA ram_0004
C - - - - - 0x03F344 0F:F334: 4A        LSR
C - - - - - 0x03F345 0F:F335: 05 04     ORA ram_0004
C - - - - - 0x03F347 0F:F337: 4A        LSR
C - - - - - 0x03F348 0F:F338: 36 00     ROL ram_0000,X
C - - - - - 0x03F34A 0F:F33A: AD 17 40  LDA $4017
C - - - - - 0x03F34D 0F:F33D: 85 05     STA ram_0005
C - - - - - 0x03F34F 0F:F33F: 4A        LSR
C - - - - - 0x03F350 0F:F340: 05 05     ORA ram_0005
C - - - - - 0x03F352 0F:F342: 4A        LSR
C - - - - - 0x03F353 0F:F343: 36 01     ROL ram_0001,X
C - - - - - 0x03F355 0F:F345: 88        DEY
C - - - - - 0x03F356 0F:F346: D0 E7     BNE bra_F32F_loop
C - - - - - 0x03F358 0F:F348: 60        RTS



sub_F349:
C - - - - - 0x03F359 0F:F349: A9 00     LDA #$00
C - - - - - 0x03F35B 0F:F34B: 8D 01 20  STA $2001
C - - - - - 0x03F35E 0F:F34E: A9 08     LDA #$08
C - - - - - 0x03F360 0F:F350: 8D 00 20  STA $2000
C - - - - - 0x03F363 0F:F353: A9 00     LDA #$00
C - - - - - 0x03F365 0F:F355: 8D 00 80  STA $8000
C - - - - - 0x03F368 0F:F358: A0 00     LDY #$00
C - - - - - 0x03F36A 0F:F35A: 8C 05 20  STY $2005
C - - - - - 0x03F36D 0F:F35D: 8C 05 20  STY $2005
C - - - - - 0x03F370 0F:F360: 8C 00 E0  STY $E000
C - - - - - 0x03F373 0F:F363: AD 02 20  LDA $2002
C - - - - - 0x03F376 0F:F366: A9 10     LDA #$10
C - - - - - 0x03F378 0F:F368: AA        TAX
bra_F369:
C - - - - - 0x03F379 0F:F369: 8D 06 20  STA $2006
C - - - - - 0x03F37C 0F:F36C: 8D 06 20  STA $2006
C - - - - - 0x03F37F 0F:F36F: 49 00     EOR #$00
C - - - - - 0x03F381 0F:F371: CA        DEX
C - - - - - 0x03F382 0F:F372: D0 F5     BNE bra_F369
C - - - - - 0x03F384 0F:F374: 60        RTS



tbl_F375:
- D 3 - - - 0x03F385 0F:F375: 91        .byte $91   ; 00
- D 3 - - - 0x03F386 0F:F376: 8B        .byte $8B   ; 01
- D 3 - - - 0x03F387 0F:F377: 99        .byte $99   ; 02



sub_F378:
C - - - - - 0x03F388 0F:F378: E6 22     INC ram_frame_counter
C - - - - - 0x03F38A 0F:F37A: 20 80 F3  JSR sub_F380
C - - - - - 0x03F38D 0F:F37D: 4C 38 D5  JMP loc_D538



sub_F380:
C - - - - - 0x03F390 0F:F380: A5 30     LDA ram_0030
C - - - - - 0x03F392 0F:F382: D0 1F     BNE bra_F3A3
C - - - - - 0x03F394 0F:F384: A5 20     LDA ram_0020
C - - - - - 0x03F396 0F:F386: 20 32 D0  JSR sub_D032
- D 3 - I - 0x03F399 0F:F389: BF F3     .word ofs_F3BF_00
- D 3 - I - 0x03F39B 0F:F38B: AC F4     .word ofs_F4AC_01
- D 3 - I - 0x03F39D 0F:F38D: E5 F4     .word ofs_F4E5_02
- D 3 - I - 0x03F39F 0F:F38F: FA F4     .word ofs_F4FA_03
- D 3 - I - 0x03F3A1 0F:F391: 79 D2     .word ofs_D279_04
- D 3 - I - 0x03F3A3 0F:F393: 09 F5     .word ofs_F509_05
- D 3 - I - 0x03F3A5 0F:F395: 6F F5     .word ofs_F56F_06
- D 3 - I - 0x03F3A7 0F:F397: DC F6     .word ofs_F6DC_07
- D 3 - I - 0x03F3A9 0F:F399: 9A F5     .word ofs_F59A_08
- D 3 - I - 0x03F3AB 0F:F39B: A4 F5     .word ofs_F5A4_09
- D 3 - I - 0x03F3AD 0F:F39D: AF F7     .word ofs_F7AF_0A
- D 3 - I - 0x03F3AF 0F:F39F: B8 F7     .word ofs_F7B8_0B
- D 3 - I - 0x03F3B1 0F:F3A1: CA F7     .word ofs_F7CA_0C
bra_F3A3:
C - - - - - 0x03F3B3 0F:F3A3: A5 90     LDA ram_0090
C - - - - - 0x03F3B5 0F:F3A5: 05 A4     ORA ram_00A4
C - - - - - 0x03F3B7 0F:F3A7: 85 A4     STA ram_00A4
C - - - - - 0x03F3B9 0F:F3A9: A5 30     LDA ram_0030
C - - - - - 0x03F3BB 0F:F3AB: 30 09     BMI bra_F3B6
C - - - - - 0x03F3BD 0F:F3AD: 0A        ASL
C - - - - - 0x03F3BE 0F:F3AE: 30 09     BMI bra_F3B9
C - - - - - 0x03F3C0 0F:F3B0: 0A        ASL
C - - - - - 0x03F3C1 0F:F3B1: 10 09     BPL bra_F3BC
C - - - - - 0x03F3C3 0F:F3B3: 4C CB D4  JMP loc_D4CB
bra_F3B6:
C - - - - - 0x03F3C6 0F:F3B6: 4C B4 D3  JMP loc_D3B4
bra_F3B9:
C - - - - - 0x03F3C9 0F:F3B9: 4C 79 D4  JMP loc_D479
bra_F3BC:
C - - - - - 0x03F3CC 0F:F3BC: 4C F9 D3  JMP loc_D3F9



ofs_F3BF_00:
C - - J - - 0x03F3CF 0F:F3BF: A6 21     LDX ram_0021
C - - - - - 0x03F3D1 0F:F3C1: D0 22     BNE bra_F3E5
C - - - - - 0x03F3D3 0F:F3C3: 86 26     STX ram_0026
C - - - - - 0x03F3D5 0F:F3C5: 86 27     STX ram_cursor_main_menu_index
C - - - - - 0x03F3D7 0F:F3C7: 8E 11 01  STX ram_0111
C - - - - - 0x03F3DA 0F:F3CA: 8E 12 01  STX ram_0112
C - - - - - 0x03F3DD 0F:F3CD: 20 09 D0  JSR sub_D009
C - - - - - 0x03F3E0 0F:F3D0: 20 00 F0  JSR sub_F000
C - - - - - 0x03F3E3 0F:F3D3: 20 48 E1  JSR sub_E148
C - - - - - 0x03F3E6 0F:F3D6: 4C 38 F5  JMP loc_F538
bra_F3D9:
C - - - - - 0x03F3E9 0F:F3D9: A9 00     LDA #$00
C - - - - - 0x03F3EB 0F:F3DB: 85 27     STA ram_cursor_main_menu_index
C - - - - - 0x03F3ED 0F:F3DD: 85 2C     STA ram_002C
C - - - - - 0x03F3EF 0F:F3DF: 20 A7 F5  JSR sub_F5A7
C - - - - - 0x03F3F2 0F:F3E2: 4C 2E E1  JMP loc_E12E
bra_F3E5:
C - - - - - 0x03F3F5 0F:F3E5: CA        DEX
C - - - - - 0x03F3F6 0F:F3E6: D0 07     BNE bra_F3EF
C - - - - - 0x03F3F8 0F:F3E8: E6 21     INC ram_0021
C - - - - - 0x03F3FA 0F:F3EA: A9 24     LDA #$24
C - - - - - 0x03F3FC 0F:F3EC: 4C 8B F6  JMP loc_F68B
bra_F3EF:
C - - - - - 0x03F3FF 0F:F3EF: CA        DEX
C - - - - - 0x03F400 0F:F3F0: D0 6C     BNE bra_F45E
C - - - - - 0x03F402 0F:F3F2: 20 B3 F5  JSR sub_F5B3
C - - - - - 0x03F405 0F:F3F5: F0 E2     BEQ bra_F3D9
C - - - - - 0x03F407 0F:F3F7: 20 45 F4  JSR sub_F445
C - - - - - 0x03F40A 0F:F3FA: A5 90     LDA ram_0090
C - - - - - 0x03F40C 0F:F3FC: 29 0C     AND #$0C
C - - - - - 0x03F40E 0F:F3FE: F0 0A     BEQ bra_F40A
C - - - - - 0x03F410 0F:F400: A0 FF     LDY #$FF
C - - - - - 0x03F412 0F:F402: 29 08     AND #$08
C - - - - - 0x03F414 0F:F404: D0 0C     BNE bra_F412
C - - - - - 0x03F416 0F:F406: A0 01     LDY #$01
C - - - - - 0x03F418 0F:F408: D0 08     BNE bra_F412
bra_F40A:
C - - - - - 0x03F41A 0F:F40A: A5 90     LDA ram_0090
C - - - - - 0x03F41C 0F:F40C: 29 20     AND #$20
C - - - - - 0x03F41E 0F:F40E: F0 1B     BEQ bra_F42B
- - - - - - 0x03F420 0F:F410: A0 01     LDY #$01
bra_F412:
C - - - - - 0x03F422 0F:F412: 98        TYA
C - - - - - 0x03F423 0F:F413: 18        CLC
C - - - - - 0x03F424 0F:F414: 65 27     ADC ram_cursor_main_menu_index
C - - - - - 0x03F426 0F:F416: C9 06     CMP #$06
C - - - - - 0x03F428 0F:F418: 90 07     BCC bra_F421
C - - - - - 0x03F42A 0F:F41A: 0A        ASL
C - - - - - 0x03F42B 0F:F41B: A9 00     LDA #$00
C - - - - - 0x03F42D 0F:F41D: 90 02     BCC bra_F421
C - - - - - 0x03F42F 0F:F41F: A9 05     LDA #$05
bra_F421:
C - - - - - 0x03F431 0F:F421: 85 27     STA ram_cursor_main_menu_index
C - - - - - 0x03F433 0F:F423: A9 25     LDA #$25
C - - - - - 0x03F435 0F:F425: 20 90 F6  JSR sub_F690
C - - - - - 0x03F438 0F:F428: 20 C4 F5  JSR sub_F5C4
bra_F42B:
C - - - - - 0x03F43B 0F:F42B: A5 90     LDA ram_0090
C - - - - - 0x03F43D 0F:F42D: 29 10     AND #$10
C - - - - - 0x03F43F 0F:F42F: F0 2C     BEQ bra_F45D_RTS
C - - - - - 0x03F441 0F:F431: A9 29     LDA #$29
C - - - - - 0x03F443 0F:F433: 85 98     STA ram_0098
C - - - - - 0x03F445 0F:F435: 20 90 F6  JSR sub_F690
C - - - - - 0x03F448 0F:F438: A9 80     LDA #$80
C - - - - - 0x03F44A 0F:F43A: 85 9C     STA ram_009C
C - - - - - 0x03F44C 0F:F43C: 0A        ASL
C - - - - - 0x03F44D 0F:F43D: 8D 11 01  STA ram_0111
C - - - - - 0x03F450 0F:F440: 8D 12 01  STA ram_0112
C - - - - - 0x03F453 0F:F443: E6 21     INC ram_0021
sub_F445:
C - - - - - 0x03F455 0F:F445: A9 50     LDA #$50
C - - - - - 0x03F457 0F:F447: 8D 40 04  STA ram_0440
C - - - - - 0x03F45A 0F:F44A: A5 22     LDA ram_frame_counter
C - - - - - 0x03F45C 0F:F44C: 29 0C     AND #$0C
C - - - - - 0x03F45E 0F:F44E: 4A        LSR
C - - - - - 0x03F45F 0F:F44F: 4A        LSR
C - - - - - 0x03F460 0F:F450: 69 55     ADC #$55
C - - - - - 0x03F462 0F:F452: 8D 00 04  STA ram_0400
C - - - - - 0x03F465 0F:F455: A6 27     LDX ram_cursor_main_menu_index
C - - - - - 0x03F467 0F:F457: BD A6 F4  LDA tbl_F4A6_Y_spr_pos,X
C - - - - - 0x03F46A 0F:F45A: 8D 10 04  STA ram_0410
bra_F45D_RTS:
C - - - - - 0x03F46D 0F:F45D: 60        RTS
bra_F45E:
C - - - - - 0x03F46E 0F:F45E: CA        DEX
C - - - - - 0x03F46F 0F:F45F: D0 1C     BNE bra_F47D
C - - - - - 0x03F471 0F:F461: A5 9C     LDA ram_009C
C - - - - - 0x03F473 0F:F463: 29 08     AND #$08
C - - - - - 0x03F475 0F:F465: 0A        ASL
C - - - - - 0x03F476 0F:F466: 0A        ASL
C - - - - - 0x03F477 0F:F467: 0A        ASL
C - - - - - 0x03F478 0F:F468: 0A        ASL
C - - - - - 0x03F479 0F:F469: 65 27     ADC ram_cursor_main_menu_index
C - - - - - 0x03F47B 0F:F46B: 20 E5 F6  JSR sub_F6E5
C - - - - - 0x03F47E 0F:F46E: C6 9C     DEC ram_009C
C - - - - - 0x03F480 0F:F470: D0 EB     BNE bra_F45D_RTS
C - - - - - 0x03F482 0F:F472: E6 21     INC ram_0021
C - - - - - 0x03F484 0F:F474: A9 00     LDA #$00
C - - - - - 0x03F486 0F:F476: 85 A2     STA ram_00A2
C - - - - - 0x03F488 0F:F478: 85 A3     STA ram_00A3
C - - - - - 0x03F48A 0F:F47A: 4C 2E E1  JMP loc_E12E
bra_F47D:
C - - - - - 0x03F48D 0F:F47D: CA        DEX
C - - - - - 0x03F48E 0F:F47E: D0 09     BNE bra_F489
C - - - - - 0x03F490 0F:F480: E6 21     INC ram_0021
C - - - - - 0x03F492 0F:F482: A5 FE     LDA ram_00FE
C - - - - - 0x03F494 0F:F484: 29 E7     AND #$E7
C - - - - - 0x03F496 0F:F486: 85 FE     STA ram_00FE
C - - - - - 0x03F498 0F:F488: 60        RTS
bra_F489:
C - - - - - 0x03F499 0F:F489: A5 FE     LDA ram_00FE
C - - - - - 0x03F49B 0F:F48B: 09 18     ORA #$18
C - - - - - 0x03F49D 0F:F48D: 85 FE     STA ram_00FE
C - - - - - 0x03F49F 0F:F48F: A5 27     LDA ram_cursor_main_menu_index
C - - - - - 0x03F4A1 0F:F491: 85 2C     STA ram_002C
C - - - - - 0x03F4A3 0F:F493: C9 04     CMP #$04
C - - - - - 0x03F4A5 0F:F495: F0 05     BEQ bra_F49C
C - - - - - 0x03F4A7 0F:F497: 90 06     BCC bra_F49F
C - - - - - 0x03F4A9 0F:F499: A9 07     LDA #$07
C - - - - - 0x03F4AB 0F:F49B: 2C        .byte $2C
bra_F49C:
C - - - - - 0x03F4AC 0F:F49C: A9 08     LDA #$08
C - - - - - 0x03F4AE 0F:F49E: 2C        .byte $2C
bra_F49F:
C - - - - - 0x03F4AF 0F:F49F: A9 02     LDA #$02
C - - - - - 0x03F4B1 0F:F4A1: 4C AE F5  JMP loc_F5AE



tbl_F4A6_Y_spr_pos:
- D 3 - - - 0x03F4B6 0F:F4A6: 83        .byte $83   ; 00
- D 3 - - - 0x03F4B7 0F:F4A7: 93        .byte $93   ; 01
- D 3 - - - 0x03F4B8 0F:F4A8: A3        .byte $A3   ; 02
- D 3 - - - 0x03F4B9 0F:F4A9: B3        .byte $B3   ; 03
- D 3 - - - 0x03F4BA 0F:F4AA: C3        .byte $C3   ; 04
- D 3 - - - 0x03F4BB 0F:F4AB: D3        .byte $D3   ; 05


ofs_F4AC_01:
C - - J - - 0x03F4BC 0F:F4AC: A6 21     LDX ram_0021
C - - - - - 0x03F4BE 0F:F4AE: D0 09     BNE bra_F4B9
C - - - - - 0x03F4C0 0F:F4B0: E6 21     INC ram_0021
C - - - - - 0x03F4C2 0F:F4B2: A0 04     LDY #$04
C - - - - - 0x03F4C4 0F:F4B4: 84 26     STY ram_0026
C - - - - - 0x03F4C6 0F:F4B6: 4C C6 F5  JMP loc_F5C6
bra_F4B9:
C - - - - - 0x03F4C9 0F:F4B9: A5 90     LDA ram_0090
C - - - - - 0x03F4CB 0F:F4BB: 29 30     AND #$30
C - - - - - 0x03F4CD 0F:F4BD: D0 10     BNE bra_F4CF
C - - - - - 0x03F4CF 0F:F4BF: 20 79 D2  JSR sub_D279
C - - - - - 0x03F4D2 0F:F4C2: 20 B3 F5  JSR sub_F5B3
C - - - - - 0x03F4D5 0F:F4C5: D0 96     BNE bra_F45D_RTS
C - - - - - 0x03F4D7 0F:F4C7: A9 0C     LDA #$0C
C - - - - - 0x03F4D9 0F:F4C9: 20 DB F4  JSR sub_F4DB
C - - - - - 0x03F4DC 0F:F4CC: 4C 2E E1  JMP loc_E12E
bra_F4CF:
C - - - - - 0x03F4DF 0F:F4CF: 20 3E E1  JSR sub_E13E
C - - - - - 0x03F4E2 0F:F4D2: A9 00     LDA #$00
C - - - - - 0x03F4E4 0F:F4D4: 4C DB F4  JMP loc_F4DB



sub_F4E1:
C - - - - - 0x03F4F1 0F:F4E1: A9 06     LDA #$06
C - - - - - 0x03F4E7 0F:F4D7: A0 00     LDY #$00
C - - - - - 0x03F4E9 0F:F4D9: 84 49     STY ram_0049
sub_F4DB:
loc_F4DB:
C D 3 - - - 0x03F4EB 0F:F4DB: 20 AE F5  JSR sub_F5AE
C - - - - - 0x03F4EE 0F:F4DE: 4C C2 F6  JMP loc_F6C2






ofs_F4E5_02:
C - - J - - 0x03F4F5 0F:F4E5: 20 42 F0  JSR sub_F042
C - - - - - 0x03F4F8 0F:F4E8: 20 88 FB  JSR sub_FB88
C - - - - - 0x03F4FB 0F:F4EB: 20 09 D0  JSR sub_D009
C - - - - - 0x03F4FE 0F:F4EE: E6 98     INC ram_0098
C - - - - - 0x03F500 0F:F4F0: A9 00     LDA #$00
C - - - - - 0x03F502 0F:F4F2: 85 26     STA ram_0026
C - - - - - 0x03F504 0F:F4F4: 20 08 D0  JSR sub_D008_RTS
C - - - - - 0x03F507 0F:F4F7: 4C A7 F5  JMP loc_F5A7



ofs_F4FA_03:
C - - J - - 0x03F50A 0F:F4FA: A9 00     LDA #$00
C - - - - - 0x03F50C 0F:F4FC: 85 94     STA ram_0094
C - - - - - 0x03F50E 0F:F4FE: 20 0D D0  JSR sub_D00D
C - - - - - 0x03F511 0F:F501: A9 00     LDA #$00
C - - - - - 0x03F513 0F:F503: 85 A0     STA ram_00A0
C - - - - - 0x03F515 0F:F505: 85 A1     STA ram_00A1
C - - - - - 0x03F517 0F:F507: F0 EE     JMP loc_F5A7



ofs_F509_05:
C - - J - - 0x03F519 0F:F509: A5 90     LDA ram_0090
C - - - - - 0x03F51B 0F:F50B: 29 30     AND #$30
C - - - - - 0x03F51D 0F:F50D: D0 55     BNE bra_F564
C - - - - - 0x03F51F 0F:F50F: A6 21     LDX ram_0021
C - - - - - 0x03F521 0F:F511: D0 2B     BNE bra_F53E
C - - - - - 0x03F523 0F:F513: 20 88 FB  JSR sub_FB88
C - - - - - 0x03F526 0F:F516: 20 09 D0  JSR sub_D009
C - - - - - 0x03F529 0F:F519: 20 42 F0  JSR sub_F042
C - - - - - 0x03F52C 0F:F51C: A2 04     LDX #$04
C - - - - - 0x03F52E 0F:F51E: 20 44 F0  JSR sub_F044
C - - - - - 0x03F531 0F:F521: A9 00     LDA #$00
C - - - - - 0x03F533 0F:F523: 20 B0 D3  JSR sub_D3B0
C - - - - - 0x03F536 0F:F526: 20 90 FC  JSR sub_FC90
C - - - - - 0x03F539 0F:F529: 20 90 FC  JSR sub_FC90
C - - - - - 0x03F53C 0F:F52C: A9 78     LDA #$78
C - - - - - 0x03F53E 0F:F52E: 85 32     STA ram_0032
C - - - - - 0x03F540 0F:F530: 85 33     STA ram_0033
C - - - - - 0x03F542 0F:F532: A5 FF     LDA ram_00FF
C - - - - - 0x03F544 0F:F534: 09 02     ORA #$02
C - - - - - 0x03F546 0F:F536: 85 FF     STA ram_00FF
bra_F538:
loc_F538:
C D 3 - - - 0x03F548 0F:F538: 20 C4 F5  JSR sub_F5C4
C - - - - - 0x03F54B 0F:F53B: E6 21     INC ram_0021
C - - - - - 0x03F54D 0F:F53D: 60        RTS
bra_F53E:
C - - - - - 0x03F54E 0F:F53E: CA        DEX
C - - - - - 0x03F54F 0F:F53F: D0 0C     BNE bra_F54D
C - - - - - 0x03F551 0F:F541: A5 FC     LDA ram_00FC
C - - - - - 0x03F553 0F:F543: 18        CLC
C - - - - - 0x03F554 0F:F544: 69 02     ADC #$02
C - - - - - 0x03F556 0F:F546: 85 FC     STA ram_00FC
C - - - - - 0x03F558 0F:F548: C9 E0     CMP #$E0
C - - - - - 0x03F55A 0F:F54A: B0 EC     BCS bra_F538
bra_F54C_RTS:
C - - - - - 0x03F55C 0F:F54C: 60        RTS
bra_F54D:
C - - - - - 0x03F55D 0F:F54D: 20 B3 F5  JSR sub_F5B3
C - - - - - 0x03F560 0F:F550: D0 FA     BNE bra_F54C_RTS
C - - - - - 0x03F562 0F:F552: A9 00     LDA #$00
C - - - - - 0x03F564 0F:F554: 85 94     STA ram_0094
C - - - - - 0x03F566 0F:F556: 20 8C FC  JSR sub_FC8C
C - - - - - 0x03F569 0F:F559: A5 FF     LDA ram_00FF
C - - - - - 0x03F56B 0F:F55B: 29 FC     AND #$FC
C - - - - - 0x03F56D 0F:F55D: 85 FF     STA ram_00FF
C - - - - - 0x03F56F 0F:F55F: A9 0A     LDA #$0A
C - - - - - 0x03F571 0F:F561: 4C AE F5  JMP loc_F5AE
bra_F564:
C - - - - - 0x03F574 0F:F564: A9 00     LDA #$00
C - - - - - 0x03F576 0F:F566: 20 AE F5  JSR sub_F5AE
C - - - - - 0x03F579 0F:F569: 20 C2 F6  JSR sub_F6C2
C - - - - - 0x03F57C 0F:F56C: 4C 3E E1  JMP loc_E13E



ofs_F56F_06:
C - - J - - 0x03F57F 0F:F56F: A6 21     LDX ram_0021
C - - - - - 0x03F581 0F:F571: D0 1D     BNE bra_F590
C - - - - - 0x03F583 0F:F573: 20 09 D0  JSR sub_D009
C - - - - - 0x03F586 0F:F576: A2 06     LDX #$06
C - - - - - 0x03F588 0F:F578: 20 44 F0  JSR sub_F044
C - - - - - 0x03F58B 0F:F57B: A9 00     LDA #$00
C - - - - - 0x03F58D 0F:F57D: 20 B0 D3  JSR sub_D3B0
C - - - - - 0x03F590 0F:F580: A5 FF     LDA ram_00FF
C - - - - - 0x03F592 0F:F582: 29 FC     AND #$FC
C - - - - - 0x03F594 0F:F584: 85 FF     STA ram_00FF
C - - - - - 0x03F596 0F:F586: A9 7C     LDA #$7C
C - - - - - 0x03F598 0F:F588: 85 32     STA ram_0032
C - - - - - 0x03F59A 0F:F58A: A9 7E     LDA #$7E
C - - - - - 0x03F59C 0F:F58C: 85 33     STA ram_0033
C - - - - - 0x03F59E 0F:F58E: D0 A8     BNE bra_F538
bra_F590:
C - - - - - 0x03F5A0 0F:F590: 20 B3 F5  JSR sub_F5B3
C - - - - - 0x03F5A3 0F:F593: D0 B7     BNE bra_F54C_RTS
C - - - - - 0x03F5A5 0F:F595: A9 05     LDA #$05
C - - - - - 0x03F5A7 0F:F597: 4C AE F5  JMP loc_F5AE



ofs_F59A_08:
C - - J - - 0x03F5AA 0F:F59A: A9 00     LDA #$00
C - - - - - 0x03F5AC 0F:F59C: 8D 75 06  STA ram_0675
C - - - - - 0x03F5AF 0F:F59F: E6 20     INC ram_0020
C - - - - - 0x03F5B1 0F:F5A1: 4C 88 FB  JMP loc_FB88



sub_F5A7:
loc_F5A7:
C D 3 - - - 0x03F5B7 0F:F5A7: E6 20     INC ram_0020
loc_F5A9:
C D 3 - - - 0x03F5B9 0F:F5A9: A9 00     LDA #$00
C - - - - - 0x03F5BB 0F:F5AB: 85 21     STA ram_0021
C - - - - - 0x03F5BD 0F:F5AD: 60        RTS



loc_F5AE:
sub_F5AE:
.export sub_0x03F5BE
sub_0x03F5BE:
.export loc_0x03F5BE
loc_0x03F5BE:
C D 3 - - - 0x03F5BE 0F:F5AE: 85 20     STA ram_0020
C - - - - - 0x03F5C0 0F:F5B0: 4C A9 F5  JMP loc_F5A9



sub_F5B3:
C - - - - - 0x03F5C3 0F:F5B3: A5 9C     LDA ram_009C
C - - - - - 0x03F5C5 0F:F5B5: 05 9F     ORA ram_009F
C - - - - - 0x03F5C7 0F:F5B7: F0 0A     BEQ bra_F5C3_RTS
C - - - - - 0x03F5C9 0F:F5B9: A5 9C     LDA ram_009C
C - - - - - 0x03F5CB 0F:F5BB: D0 02     BNE bra_F5BF
C - - - - - 0x03F5CD 0F:F5BD: C6 9F     DEC ram_009F
bra_F5BF:
C - - - - - 0x03F5CF 0F:F5BF: C6 9C     DEC ram_009C
C - - - - - 0x03F5D1 0F:F5C1: A9 01     LDA #$01
bra_F5C3_RTS:
C - - - - - 0x03F5D3 0F:F5C3: 60        RTS



sub_F5C4:
C - - - - - 0x03F5D4 0F:F5C4: A0 01     LDY #$01
loc_F5C6:
C D 3 - - - 0x03F5D6 0F:F5C6: A9 00     LDA #$00
C - - - - - 0x03F5D8 0F:F5C8: 85 9C     STA ram_009C
C - - - - - 0x03F5DA 0F:F5CA: 84 9F     STY ram_009F
C D 3 - - - 0x03F5DC 0F:F5CC: 60        RTS



loc_F5CD:
.export loc_0x03F5DD
loc_0x03F5DD:
C D 3 - - - 0x03F5DD 0F:F5CD: A9 00     LDA #$00
C - - - - - 0x03F5DF 0F:F5CF: 85 27     STA ram_cursor_main_menu_index
C - - - - - 0x03F5E1 0F:F5D1: 85 94     STA ram_0094
C - - - - - 0x03F5E3 0F:F5D3: A9 00     LDA #$00
C - - - - - 0x03F5E5 0F:F5D5: 20 AE F5  JSR sub_F5AE
C - - - - - 0x03F5E8 0F:F5D8: 4C 3E E1  JMP loc_E13E



sub_F5DF_prg_bank_09:
C - - - - - 0x03F5EF 0F:F5DF: A9 32     LDA #$32
C - - - - - 0x03F5F1 0F:F5E1: D0 16     BNE bra_F5F9



sub_F5E3_prg_bank_0A:
C - - - - - 0x03F5F3 0F:F5E3: A9 34     LDA #$34
C - - - - - 0x03F5F5 0F:F5E5: D0 12     BNE bra_F5F9



sub_F5E7_prg_bank_0B:
.export loc_0x03F5F7_prg_bank_0B
loc_0x03F5F7_prg_bank_0B:
C D 3 - - - 0x03F5F7 0F:F5E7: A9 36     LDA #$36
C - - - - - 0x03F5F9 0F:F5E9: D0 0E     BNE bra_F5F9



sub_F5EB_prg_bank_0C:
C - - - - - 0x03F5FB 0F:F5EB: A9 38     LDA #$38
C - - - - - 0x03F5FD 0F:F5ED: D0 0A     BNE bra_F5F9



sub_F5EF_prg_bank_0D:
C - - - - - 0x03F5FF 0F:F5EF: A9 3A     LDA #$3A
C - - - - - 0x03F601 0F:F5F1: D0 06     BNE bra_F5F9



sub_F5F3_prg_bank_0E:
C - - - - - 0x03F603 0F:F5F3: A9 3C     LDA #$3C
C - - - - - 0x03F605 0F:F5F5: D0 02     BNE bra_F5F9



bra_F5F9:
sub_F5F9:
C - - - - - 0x03F609 0F:F5F9: E6 3D     INC ram_003D
C - - - - - 0x03F60B 0F:F5FB: A4 3D     LDY ram_003D
C - - - - - 0x03F60D 0F:F5FD: 99 3E 00  STA ram_003E,Y
bra_F600:
sub_F600_prg_bank_0B:
C - - - - - 0x03F610 0F:F600: A0 06     LDY #$06
C - - - - - 0x03F612 0F:F602: 84 42     STY ram_for_8000_1
C - - - - - 0x03F614 0F:F604: 8C 00 80  STY $8000
C - - - - - 0x03F617 0F:F607: 8D 01 80  STA $8001
C - - - - - 0x03F61A 0F:F60A: C8        INY
C - - - - - 0x03F61B 0F:F60B: 18        CLC
C - - - - - 0x03F61C 0F:F60C: 69 01     ADC #$01
C - - - - - 0x03F61E 0F:F60E: 84 42     STY ram_for_8000_1
C - - - - - 0x03F620 0F:F610: 8C 00 80  STY $8000
C - - - - - 0x03F623 0F:F613: 8D 01 80  STA $8001
C - - - - - 0x03F626 0F:F616: 60        RTS



sub_F617:
loc_F617:
.export loc_0x03F627
loc_0x03F627:
C D 3 - - - 0x03F627 0F:F617: C6 3D     DEC ram_003D
C - - - - - 0x03F629 0F:F619: A4 3D     LDY ram_003D
C - - - - - 0x03F62B 0F:F61B: B9 3E 00  LDA ram_003E,Y
C - - - - - 0x03F62E 0F:F61E: 10 E0     BPL bra_F600
sub_F620:
C - - - - - 0x03F630 0F:F620: A5 23     LDA ram_0023
C - - - - - 0x03F632 0F:F622: 85 3C     STA ram_003C
C - - - - - 0x03F634 0F:F624: D0 10     BNE bra_F636
C - - - - - 0x03F636 0F:F626: A5 34     LDA ram_0034
C - - - - - 0x03F638 0F:F628: 85 38     STA ram_0038
C - - - - - 0x03F63A 0F:F62A: A5 35     LDA ram_0035
C - - - - - 0x03F63C 0F:F62C: 85 39     STA ram_0039
C - - - - - 0x03F63E 0F:F62E: A5 36     LDA ram_0036
C - - - - - 0x03F640 0F:F630: 85 3A     STA ram_003A
C - - - - - 0x03F642 0F:F632: A5 37     LDA ram_0037
C - - - - - 0x03F644 0F:F634: 85 3B     STA ram_003B
bra_F636:
C - - - - - 0x03F646 0F:F636: A5 32     LDA ram_0032
C - - - - - 0x03F648 0F:F638: A2 00     LDX #$00
C - - - - - 0x03F64A 0F:F63A: 8E 00 80  STX $8000
C - - - - - 0x03F64D 0F:F63D: 8D 01 80  STA $8001
C - - - - - 0x03F650 0F:F640: E8        INX
C - - - - - 0x03F651 0F:F641: A5 33     LDA ram_0033
C - - - - - 0x03F653 0F:F643: 8E 00 80  STX $8000
C - - - - - 0x03F656 0F:F646: 8D 01 80  STA $8001
C - - - - - 0x03F659 0F:F649: E8        INX
C - - - - - 0x03F65A 0F:F64A: A0 03     LDY #$03
bra_F64C:
C - - - - - 0x03F65C 0F:F64C: B5 36     LDA ram_0036,X
C - - - - - 0x03F65E 0F:F64E: 8E 00 80  STX $8000
C - - - - - 0x03F661 0F:F651: 8D 01 80  STA $8001
C - - - - - 0x03F664 0F:F654: E8        INX
C - - - - - 0x03F665 0F:F655: 88        DEY
C - - - - - 0x03F666 0F:F656: 10 F4     BPL bra_F64C
C - - - - - 0x03F668 0F:F658: 60        RTS



sub_F659:
C - - - - - 0x03F669 0F:F659: 20 69 F6  JSR sub_F669
C - - - - - 0x03F66C 0F:F65C: 20 01 80  JSR sub_0x020011
sub_F65F:
C - - - - - 0x03F66F 0F:F65F: A6 46     LDX ram_0046
C - - - - - 0x03F671 0F:F661: 20 76 F6  JSR sub_F676
C - - - - - 0x03F674 0F:F664: A0 00     LDY #$00
C - - - - - 0x03F676 0F:F666: 84 2E     STY ram_002E
C - - - - - 0x03F678 0F:F668: 60        RTS



sub_F669:
C - - - - - 0x03F679 0F:F669: A0 01     LDY #$01
C - - - - - 0x03F67B 0F:F66B: 84 2E     STY ram_002E
C - - - - - 0x03F67D 0F:F66D: AD 00 80  LDA $8000
C - - - - - 0x03F680 0F:F670: 09 30     ORA #$30
C - - - - - 0x03F682 0F:F672: 85 46     STA ram_0046
C - - - - - 0x03F684 0F:F674: A2 30     LDX #$30
sub_F676:
C - - - - - 0x03F686 0F:F676: A0 06     LDY #$06
C - - - - - 0x03F688 0F:F678: 84 43     STY ram_for_8000_2
C - - - - - 0x03F68A 0F:F67A: 8C 00 80  STY $8000
C - - - - - 0x03F68D 0F:F67D: 8E 01 80  STX $8001
C - - - - - 0x03F690 0F:F680: C8        INY
C - - - - - 0x03F691 0F:F681: E8        INX
C - - - - - 0x03F692 0F:F682: 84 43     STY ram_for_8000_2
C - - - - - 0x03F694 0F:F684: 8C 00 80  STY $8000
C - - - - - 0x03F697 0F:F687: 8E 01 80  STX $8001
C - - - - - 0x03F69A 0F:F68A: 60        RTS



sub_F68B:
loc_F68B:
.export sub_0x03F69B
sub_0x03F69B:
.export loc_0x03F69B
loc_0x03F69B:
C D 3 - - - 0x03F69B 0F:F68B: 48        PHA
C - - - - - 0x03F69C 0F:F68C: 20 C2 F6  JSR sub_F6C2
C - - - - - 0x03F69F 0F:F68F: 68        PLA
loc_F690:
sub_F690:
.export sub_0x03F6A0
sub_0x03F6A0:
.export loc_0x03F6A0
loc_0x03F6A0:
C D 3 - - - 0x03F6A0 0F:F690: 84 A9     STY ram_00A9
C - - - - - 0x03F6A2 0F:F692: 86 A8     STX ram_00A8
loc_F694:
.export sub_0x03F6A4
sub_0x03F6A4:
.export loc_0x03F6A4
loc_0x03F6A4:
C D 3 - - - 0x03F6A4 0F:F694: A4 2E     LDY ram_002E
C - - - - - 0x03F6A6 0F:F696: D0 0D     BNE bra_F6A5
C - - - - - 0x03F6A8 0F:F698: 48        PHA
C - - - - - 0x03F6A9 0F:F699: 20 69 F6  JSR sub_F669
C - - - - - 0x03F6AC 0F:F69C: 68        PLA
C - - - - - 0x03F6AD 0F:F69D: 20 8D 8E  JSR sub_0x020E9D_play_music
loc_F6A0:
C D 3 - - - 0x03F6B0 0F:F6A0: 20 5F F6  JSR sub_F65F
C - - - - - 0x03F6B3 0F:F6A3: A6 A8     LDX ram_00A8
bra_F6A5:
C - - - - - 0x03F6B5 0F:F6A5: A4 A9     LDY ram_00A9
C - - - - - 0x03F6B7 0F:F6A7: 60        RTS



sub_F6C2:
loc_F6C2:
.export sub_0x03F6D2
sub_0x03F6D2:
.export loc_0x03F6D2
loc_0x03F6D2:
C D 3 - - - 0x03F6D2 0F:F6C2: 84 A9     STY ram_00A9
C - - - - - 0x03F6D4 0F:F6C4: A4 2E     LDY ram_002E
C - - - - - 0x03F6D6 0F:F6C6: D0 DD     BNE bra_F6A5
C - - - - - 0x03F6D8 0F:F6C8: 86 A8     STX ram_00A8
C - - - - - 0x03F6DA 0F:F6CA: 20 69 F6  JSR sub_F669
C - - - - - 0x03F6DD 0F:F6CD: 20 5D 90  JSR sub_0x02106D
C - - - - - 0x03F6E0 0F:F6D0: 4C A0 F6  JMP loc_F6A0



sub_F6D3:
C - - - - - 0x03F6E3 0F:F6D3: 20 E3 F5  JSR sub_F5E3_prg_bank_0A
C - - - - - 0x03F6E6 0F:F6D6: 20 1F D7  JSR sub_D71F
C - - - - - 0x03F6E9 0F:F6D9: 4C 17 F6  JMP loc_F617



ofs_F6DC_07:
C - - J - - 0x03F6EC 0F:F6DC: 20 F3 F5  JSR sub_F5F3_prg_bank_0E
C - - - - - 0x03F6EF 0F:F6DF: 20 01 80  JSR sub_0x038011
C - - - - - 0x03F6F2 0F:F6E2: 4C 17 F6  JMP loc_F617



sub_F6E5:
.export sub_0x03F6F5
sub_0x03F6F5:
.export loc_0x03F6F5
loc_0x03F6F5:
C D 3 - - - 0x03F6F5 0F:F6E5: 48        PHA
C - - - - - 0x03F6F6 0F:F6E6: 20 EB F5  JSR sub_F5EB_prg_bank_0C
C - - - - - 0x03F6F9 0F:F6E9: 68        PLA
C - - - - - 0x03F6FA 0F:F6EA: 20 76 80  JSR sub_0x030086
C - - - - - 0x03F6FD 0F:F6ED: 4C 17 F6  JMP loc_F617



sub_F6F9:
C - - - - - 0x03F709 0F:F6F9: 20 E7 F5  JSR sub_F5E7_prg_bank_0B
C - - - - - 0x03F70C 0F:F6FC: 20 CE 80  JSR sub_0x02C0DE
C - - - - - 0x03F70F 0F:F6FF: 4C 17 F6  JMP loc_F617



sub_F702:
C - - - - - 0x03F712 0F:F702: 20 EB F5  JSR sub_F5EB_prg_bank_0C
C - - - - - 0x03F715 0F:F705: 20 00 90  JSR sub_0x031010
C - - - - - 0x03F718 0F:F708: 4C 17 F6  JMP loc_F617



sub_F70B:
C - - - - - 0x03F71B 0F:F70B: 20 EF F5  JSR sub_F5EF_prg_bank_0D
C - - - - - 0x03F71E 0F:F70E: 20 01 80  JSR sub_0x034011
C - - - - - 0x03F721 0F:F711: 4C 17 F6  JMP loc_F617



sub_F714:
loc_F714:
.export sub_0x03F724
sub_0x03F724:
.export loc_0x03F724
loc_0x03F724:
C D 3 - - - 0x03F724 0F:F714: 20 DF F5  JSR sub_F5DF_prg_bank_09
C - - - - - 0x03F727 0F:F717: 20 42 B1  JSR sub_0x027152
C - - - - - 0x03F72A 0F:F71A: 4C 17 F6  JMP loc_F617



ofs_F5A4_09:
C D 3 - - - 0x03F72D 0F:F71D: 20 F3 F5  JSR sub_F5F3_prg_bank_0E
C - - - - - 0x03F730 0F:F720: 20 7B 8C  JSR sub_0x038C8B
C - - - - - 0x03F733 0F:F723: 4C 17 F6  JMP loc_F617



sub_F726:
C - - - - - 0x03F736 0F:F726: 20 F3 F5  JSR sub_F5F3_prg_bank_0E
C - - - - - 0x03F739 0F:F729: 20 BB 82  JSR sub_0x0382CB
C - - - - - 0x03F73C 0F:F72C: 4C 17 F6  JMP loc_F617



.export sub_0x03F73F
sub_0x03F73F:
C - - - - - 0x03F73F 0F:F72F: A9 02     LDA #$02
C - - - - - 0x03F744 0F:F734: 85 0A     STA ram_000A
C - - - - - 0x03F746 0F:F736: 20 F3 F5  JSR sub_F5F3_prg_bank_0E
C - - - - - 0x03F749 0F:F739: 20 52 84  JSR sub_0x038462
C - - - - - 0x03F74C 0F:F73C: 4C 17 F6  JMP loc_F617



ofs_F73F_0E:
C - - J - - 0x03F74F 0F:F73F: 20 F3 F5  JSR sub_F5F3_prg_bank_0E
C - - - - - 0x03F752 0F:F742: 20 D6 85  JSR sub_0x0385E6
C - - - - - 0x03F755 0F:F745: 4C 17 F6  JMP loc_F617



ofs_F748_03:
C - - J - - 0x03F758 0F:F748: 20 F3 F5  JSR sub_F5F3_prg_bank_0E
C - - - - - 0x03F75B 0F:F74B: 20 90 88  JSR sub_0x0388A0
C - - - - - 0x03F75E 0F:F74E: 4C 17 F6  JMP loc_F617



loc_F751:
sub_F751:
C D 3 - - - 0x03F761 0F:F751: 20 DF F5  JSR sub_F5DF_prg_bank_09
C - - - - - 0x03F764 0F:F754: 20 51 BB  JSR sub_0x027B61
C - - - - - 0x03F767 0F:F757: 4C 17 F6  JMP loc_F617



.export sub_0x03F76A
sub_0x03F76A:
C - - - - - 0x03F76A 0F:F75A: 48        PHA
C - - - - - 0x03F76B 0F:F75B: 20 DF F5  JSR sub_F5DF_prg_bank_09
C - - - - - 0x03F76E 0F:F75E: 68        PLA
C - - - - - 0x03F76F 0F:F75F: 20 B3 B0  JSR sub_0x0270C3
C - - - - - 0x03F772 0F:F762: 20 F6 AF  JSR sub_0x027006
C - - - - - 0x03F775 0F:F765: 4C 17 F6  JMP loc_F617



.export loc_0x03F778
loc_0x03F778:
C D 3 - - - 0x03F778 0F:F768: 98        TYA
C - - - - - 0x03F779 0F:F769: 48        PHA
C - - - - - 0x03F77A 0F:F76A: 20 DF F5  JSR sub_F5DF_prg_bank_09
C - - - - - 0x03F77D 0F:F76D: 68        PLA
C - - - - - 0x03F77E 0F:F76E: A8        TAY
C - - - - - 0x03F77F 0F:F76F: 20 E7 8A  JSR sub_0x024AF7
C - - - - - 0x03F782 0F:F772: 4C 17 F6  JMP loc_F617



sub_F775:
.export sub_0x03F785
sub_0x03F785:
C - - - - - 0x03F785 0F:F775: A0 00     LDY #$00
C - - - - - 0x03F787 0F:F777: A2 01     LDX #$01
C - - - - - 0x03F789 0F:F779: 20 0C D2  JSR sub_D20C
C - - - - - 0x03F78C 0F:F77C: AC 70 05  LDY ram_0570
C - - - - - 0x03F78F 0F:F77F: 38        SEC
C - - - - - 0x03F790 0F:F780: F9 4C AD  SBC tbl_0x026D5C,Y
C - - - - - 0x03F793 0F:F783: 90 09     BCC bra_F78E
C - - - - - 0x03F795 0F:F785: AC 71 05  LDY ram_0571
C - - - - - 0x03F798 0F:F788: 38        SEC
C - - - - - 0x03F799 0F:F789: F9 4C AD  SBC tbl_0x026D5C,Y
C - - - - - 0x03F79C 0F:F78C: B0 02     BCS bra_F790
bra_F78E:
C - - - - - 0x03F79E 0F:F78E: A9 00     LDA #$00
bra_F790:
C - - - - - 0x03F7A0 0F:F790: 8D 38 06  STA ram_dist_X_btw_plrs
C - - - - - 0x03F7A3 0F:F793: 60        RTS



loc_F794:
C D 3 - - - 0x03F7A4 0F:F794: 20 DF F5  JSR sub_F5DF_prg_bank_09
C - - - - - 0x03F7A7 0F:F797: 20 1F FD  JSR sub_FD1F
C - - - - - 0x03F7AA 0F:F79A: 4C 17 F6  JMP loc_F617



sub_F79D:
C - - - - - 0x03F7AD 0F:F79D: 20 DF F5  JSR sub_F5DF_prg_bank_09
C - - - - - 0x03F7B0 0F:F7A0: 20 B7 BB  JSR sub_0x027BC7
C - - - - - 0x03F7B3 0F:F7A3: 4C 17 F6  JMP loc_F617



sub_F7A6:
C - - - - - 0x03F7B6 0F:F7A6: 20 F3 F5  JSR sub_F5F3_prg_bank_0E
C - - - - - 0x03F7B9 0F:F7A9: 20 6A 8A  JSR sub_0x038A7A
C - - - - - 0x03F7BC 0F:F7AC: 4C 17 F6  JMP loc_F617



ofs_F7AF_0A:
C - - J - - 0x03F7BF 0F:F7AF: 20 F3 F5  JSR sub_F5F3_prg_bank_0E
C - - - - - 0x03F7C2 0F:F7B2: 20 9F 90  JSR sub_0x0390AF
C - - - - - 0x03F7C5 0F:F7B5: 4C 17 F6  JMP loc_F617



ofs_F7B8_0B:
C - - J - - 0x03F7C8 0F:F7B8: 20 F3 F5  JSR sub_F5F3_prg_bank_0E
C - - - - - 0x03F7CB 0F:F7BB: 20 00 96  JSR sub_0x039610
C - - - - - 0x03F7CE 0F:F7BE: 4C 17 F6  JMP loc_F617



.export sub_0x03F7D1
sub_0x03F7D1:
C - - - - - 0x03F7D1 0F:F7C1: 20 F3 F5  JSR sub_F5F3_prg_bank_0E
C - - - - - 0x03F7D4 0F:F7C4: 20 2B 9F  JSR sub_0x039F3B
C - - - - - 0x03F7D7 0F:F7C7: 4C 17 F6  JMP loc_F617



ofs_F7CA_0C:
C - - J - - 0x03F7DA 0F:F7CA: 20 F3 F5  JSR sub_F5F3_prg_bank_0E
C - - - - - 0x03F7DD 0F:F7CD: 20 BF 9F  JSR sub_0x039FCF
C - - - - - 0x03F7E0 0F:F7D0: 4C 17 F6  JMP loc_F617



sub_F7D3:
.export sub_0x03F7E3
sub_0x03F7E3:
.export loc_0x03F7E3
loc_0x03F7E3:
C D 3 - - - 0x03F7E3 0F:F7D3: 48        PHA
C - - - - - 0x03F7E4 0F:F7D4: 20 F3 F5  JSR sub_F5F3_prg_bank_0E
C - - - - - 0x03F7E7 0F:F7D7: 68        PLA
C - - - - - 0x03F7E8 0F:F7D8: 20 E3 A0  JSR sub_0x03A0F3
C - - - - - 0x03F7EB 0F:F7DB: 4C 17 F6  JMP loc_F617



sub_F7DE:
C - - - - - 0x03F7EE 0F:F7DE: 20 F3 F5  JSR sub_F5F3_prg_bank_0E
C - - - - - 0x03F7F1 0F:F7E1: 20 36 9B  JSR sub_0x039B46
C - - - - - 0x03F7F4 0F:F7E4: 4C 17 F6  JMP loc_F617



sub_F7E7:
ofs_F7E7_02:
C - - J - - 0x03F7F7 0F:F7E7: 20 F3 F5  JSR sub_F5F3_prg_bank_0E
C - - - - - 0x03F7FA 0F:F7EA: 20 6C A3  JSR sub_0x03A37C
C - - - - - 0x03F7FD 0F:F7ED: 4C 17 F6  JMP loc_F617



ofs_F7F0_12:
C - - J - - 0x03F800 0F:F7F0: 20 F3 F5  JSR sub_F5F3_prg_bank_0E
C - - - - - 0x03F803 0F:F7F3: 20 8F A4  JSR sub_0x03A49F
C - - - - - 0x03F806 0F:F7F6: 4C 17 F6  JMP loc_F617



ofs_F7F9_11:
C - - J - - 0x03F809 0F:F7F9: 20 F3 F5  JSR sub_F5F3_prg_bank_0E
C - - - - - 0x03F80C 0F:F7FC: 20 27 A4  JSR sub_0x03A437
C - - - - - 0x03F80F 0F:F7FF: 4C 17 F6  JMP loc_F617



loc_F802:
C D 3 - - - 0x03F812 0F:F802: 20 DF F5  JSR sub_F5DF_prg_bank_09
C - - - - - 0x03F815 0F:F805: 20 11 BF  JSR sub_0x027F21
C - - - - - 0x03F818 0F:F808: 4C 17 F6  JMP loc_F617



sub_F80B:
C - - - - - 0x03F81B 0F:F80B: 20 DF F5  JSR sub_F5DF_prg_bank_09
C - - - - - 0x03F81E 0F:F80E: 20 F6 AF  JSR sub_0x027006
C - - - - - 0x03F821 0F:F811: 4C 17 F6  JMP loc_F617



sub_F814:
.export sub_0x03F824
sub_0x03F824:
.export loc_0x03F824
loc_0x03F824:
C D 3 - - - 0x03F824 0F:F814: 85 48     STA ram_0048
C - - - - - 0x03F826 0F:F816: AA        TAX
C - - - - - 0x03F827 0F:F817: E0 10     CPX #$10
C - - - - - 0x03F829 0F:F819: D0 05     BNE bra_F820
C - - - - - 0x03F82B 0F:F81B: AD 0C 01  LDA ram_010C
C - - - - - 0x03F82E 0F:F81E: D0 03     BNE bra_F823
bra_F820:
C - - - - - 0x03F830 0F:F820: BD 9A FC  LDA tbl_FC9A,X
bra_F823:
C - - - - - 0x03F833 0F:F823: 85 4A     STA ram_004A
C - - - - - 0x03F835 0F:F825: A0 01     LDY #$01
C - - - - - 0x03F837 0F:F827: 84 49     STY ram_0049
C - - - - - 0x03F839 0F:F829: 88        DEY
C - - - - - 0x03F83A 0F:F82A: 84 4D     STY ram_004D
C - - - - - 0x03F83C 0F:F82C: 78        SEI
C - - - - - 0x03F83D 0F:F82D: A5 48     LDA ram_0048
C - - - - - 0x03F83F 0F:F82F: 0A        ASL
C - - - - - 0x03F840 0F:F830: A8        TAY
C - - - - - 0x03F841 0F:F831: B9 3C F8  LDA tbl_F83C,Y
C - - - - - 0x03F844 0F:F834: 85 4B     STA ram_004B
C - - - - - 0x03F846 0F:F836: B9 3D F8  LDA tbl_F83C + 1,Y
C - - - - - 0x03F849 0F:F839: 85 4C     STA ram_004C
C - - - - - 0x03F84B 0F:F83B: 60        RTS



tbl_F83C:
- - - - - - 0x03F84C 0F:F83C: 7D F8     .word ofs_F87D_00   ; вероятно не используется
- - - - - - 0x03F84E 0F:F83E: 85 F8     .word $F885         ; 01 явно не используемый адрес
- D 3 - - - 0x03F850 0F:F840: D0 F8     .word ofs_F8D0_02
- - - - - - 0x03F852 0F:F842: 40 F9     .word ofs_F940_03   ; вероятно не используется
- - - - - - 0x03F854 0F:F844: 57 F9     .word $F957         ; 04 адрес не существует
- D 3 - - - 0x03F856 0F:F846: 38 FA     .word ofs_FA38_05
- D 3 - - - 0x03F858 0F:F848: 6E F9     .word ofs_F96E_06
- D 3 - - - 0x03F85A 0F:F84A: 96 FA     .word ofs_FA96_07
- D 3 - - - 0x03F85C 0F:F84C: B2 FA     .word ofs_FAB2_08
- D 3 - - - 0x03F85E 0F:F84E: BA FA     .word ofs_FABA_09
- D 3 - - - 0x03F860 0F:F850: D4 FA     .word ofs_FAD4_0A
- D 3 - - - 0x03F862 0F:F852: A7 FA     .word ofs_FAA7_0B
- D 3 - - - 0x03F864 0F:F854: 07 FB     .word ofs_FB07_0C
- D 3 - - - 0x03F866 0F:F856: 35 FB     .word ofs_FB35_0D
- D 3 - - - 0x03F868 0F:F858: 2D FB     .word ofs_FB2D_0E
- D 3 - - - 0x03F86A 0F:F85A: 3D FB     .word ofs_FB3D_0F
- D 3 - - - 0x03F86C 0F:F85C: 68 FB     .word ofs_FB68_10



vec_F85E_IRQ:
C - - - - - 0x03F86E 0F:F85E: 48        PHA
C - - - - - 0x03F86F 0F:F85F: 8A        TXA
C - - - - - 0x03F870 0F:F860: 48        PHA
C - - - - - 0x03F871 0F:F861: 98        TYA
C - - - - - 0x03F872 0F:F862: 48        PHA
C - - - - - 0x03F873 0F:F863: 8D 00 E0  STA $E000
C - - - - - 0x03F876 0F:F866: 8D 01 E0  STA $E001
C - - - - - 0x03F879 0F:F869: 20 7A F8  JSR sub_F87A_indirect_jump
loc_F86C:
C D 3 - - - 0x03F87C 0F:F86C: A4 2E     LDY ram_002E
C - - - - - 0x03F87E 0F:F86E: B9 42 00  LDA ram_for_8000_1,Y
C - - - - - 0x03F881 0F:F871: 8D 00 80  STA $8000
C - - - - - 0x03F884 0F:F874: 68        PLA
C - - - - - 0x03F885 0F:F875: A8        TAY
C - - - - - 0x03F886 0F:F876: 68        PLA
C - - - - - 0x03F887 0F:F877: AA        TAX
C - - - - - 0x03F888 0F:F878: 68        PLA
C - - - - - 0x03F889 0F:F879: 40        RTI



sub_F87A_indirect_jump:
C - - - - - 0x03F88A 0F:F87A: 6C 4B 00  JMP (ram_004B)



ofs_F87D_00:
- - - - - - 0x03F88D 0F:F87D: 8D 00 E0  STA $E000
- - - - - - 0x03F890 0F:F880: 60        RTS



sub_F881_garbage_loop:
bra_F881_loop:
C - - - - - 0x03F891 0F:F881: CA        DEX
C - - - - - 0x03F892 0F:F882: 10 FD     BPL bra_F881_loop
C - - - - - 0x03F894 0F:F884: 60        RTS



tbl_F885:
- D 3 - - - 0x03F895 0F:F885: 00        .byte off_F890 - tbl_F890   ; 00
- D 3 - - - 0x03F896 0F:F886: 0A        .byte off_F89A - tbl_F890   ; 01
- D 3 - - - 0x03F897 0F:F887: 00        .byte off_F890 - tbl_F890   ; 02
- D 3 - - - 0x03F898 0F:F888: 0A        .byte off_F89A - tbl_F890   ; 03
- D 3 - - - 0x03F899 0F:F889: 0A        .byte off_F89A - tbl_F890   ; 04
- D 3 - - - 0x03F89A 0F:F88A: 0A        .byte off_F89A - tbl_F890   ; 05
- D 3 - - - 0x03F89B 0F:F88B: 14        .byte off_F8A4 - tbl_F890   ; 06
- D 3 - - - 0x03F89C 0F:F88C: 1E        .byte off_F8AE - tbl_F890   ; 07



tbl_F890:
off_F890:
- D 3 - - - 0x03F8A0 0F:F890: 04        .byte $04   ; 
- D 3 - - - 0x03F8A1 0F:F891: 4F        .byte $4F   ; 
- D 3 - - - 0x03F8A2 0F:F892: 10        .byte $10   ; 
- D 3 - - - 0x03F8A3 0F:F893: 04        .byte $04   ; 
- D 3 - - - 0x03F8A4 0F:F894: 05        .byte $05   ; 

- D 3 - - - 0x03F8A5 0F:F895: 66        .byte $66   ; 
- D 3 - - - 0x03F8A6 0F:F896: 68        .byte $68   ; 
- D 3 - - - 0x03F8A7 0F:F897: 6A        .byte $6A   ; 
- D 3 - - - 0x03F8A8 0F:F898: 6C        .byte $6C   ; 
- D 3 - - - 0x03F8A9 0F:F899: 6E        .byte $6E   ; 



off_F89A:
- D 3 - - - 0x03F8AA 0F:F89A: 04        .byte $04   ; 
- D 3 - - - 0x03F8AB 0F:F89B: 4A        .byte $4A   ; 
- D 3 - - - 0x03F8AC 0F:F89C: 05        .byte $05   ; 
- D 3 - - - 0x03F8AD 0F:F89D: 10        .byte $10   ; 
- D 3 - - - 0x03F8AE 0F:F89E: 0A        .byte $0A   ; 

- D 3 - - - 0x03F8AF 0F:F89F: 6E        .byte $6E   ; 
- D 3 - - - 0x03F8B0 0F:F8A0: 6E        .byte $6E   ; 
- D 3 - - - 0x03F8B1 0F:F8A1: 6E        .byte $6E   ; 
- D 3 - - - 0x03F8B2 0F:F8A2: 6E        .byte $6E   ; 
- D 3 - - - 0x03F8B3 0F:F8A3: 6E        .byte $6E   ; 



off_F8A4:
- D 3 - - - 0x03F8B4 0F:F8A4: 04        .byte $04   ; 
- D 3 - - - 0x03F8B5 0F:F8A5: 4A        .byte $4A   ; 
- D 3 - - - 0x03F8B6 0F:F8A6: 05        .byte $05   ; 
- D 3 - - - 0x03F8B7 0F:F8A7: 10        .byte $10   ; 
- D 3 - - - 0x03F8B8 0F:F8A8: 0A        .byte $0A   ; 

- D 3 - - - 0x03F8B9 0F:F8A9: 5E        .byte $5E   ; 
- D 3 - - - 0x03F8BA 0F:F8AA: 5E        .byte $5E   ; 
- D 3 - - - 0x03F8BB 0F:F8AB: 61        .byte $61   ; 
- D 3 - - - 0x03F8BC 0F:F8AC: 6E        .byte $6E   ; 
- D 3 - - - 0x03F8BD 0F:F8AD: 6E        .byte $6E   ; 



off_F8AE:
- D 3 - - - 0x03F8BE 0F:F8AE: 01        .byte $01   ; 
- D 3 - - - 0x03F8BF 0F:F8AF: 01        .byte $01   ; 
- D 3 - - - 0x03F8C0 0F:F8B0: 51        .byte $51   ; 
- D 3 - - - 0x03F8C1 0F:F8B1: 18        .byte $18   ; 
- D 3 - - - 0x03F8C2 0F:F8B2: 04        .byte $04   ; 

- D 3 - - - 0x03F8C3 0F:F8B3: 5E        .byte $5E   ; 
- D 3 - - - 0x03F8C4 0F:F8B4: 5E        .byte $5E   ; 
- D 3 - - - 0x03F8C5 0F:F8B5: 5E        .byte $5E   ; 
- D 3 - - - 0x03F8C6 0F:F8B6: 61        .byte $61   ; 
- D 3 - - - 0x03F8C7 0F:F8B7: 63        .byte $63   ; 



sub_F8B8:
C - - - - - 0x03F8C8 0F:F8B8: 48        PHA
C - - - - - 0x03F8C9 0F:F8B9: A9 36     LDA #$36
C - - - - - 0x03F8CB 0F:F8BB: 20 00 F6  JSR sub_F600_prg_bank_0B
C - - - - - 0x03F8CE 0F:F8BE: 4C 90 AF  JMP loc_0x02EFA0



sub_F8C2:
C - - - - - 0x03F8D2 0F:F8C2: A5 2C     LDA ram_002C
C - - - - - 0x03F8D4 0F:F8C4: 49 05     EOR #$05
C - - - - - 0x03F8D6 0F:F8C6: D0 04     BNE bra_F8CC
C - - - - - 0x03F8D8 0F:F8C8: A5 AD     LDA ram_00AD
C - - - - - 0x03F8DA 0F:F8CA: F0 03     BEQ bra_F8CF_RTS
bra_F8CC:
C - - - - - 0x03F8DC 0F:F8CC: 8C 14 40  STY $4014
bra_F8CF_RTS:
C - - - - - 0x03F8DF 0F:F8CF: 60        RTS



ofs_F8D0_02:
.export ofs_0x03F8E0
ofs_0x03F8E0:
C - - J - - 0x03F8E0 0F:F8D0: A0 05     LDY #$05
bra_F8D2:
C - - - - - 0x03F8E2 0F:F8D2: 88        DEY
C - - - - - 0x03F8E3 0F:F8D3: D0 FD     BNE bra_F8D2
C - - - - - 0x03F8E5 0F:F8D5: A5 4D     LDA ram_004D
C - - - - - 0x03F8E7 0F:F8D7: F0 49     BEQ bra_F922
C - - - - - 0x03F8E9 0F:F8D9: C9 06     CMP #$06
C - - - - - 0x03F8EB 0F:F8DB: B0 4E     BCS bra_F92B
C - - - - - 0x03F8ED 0F:F8DD: A6 9E     LDX ram_009E
C - - - - - 0x03F8EF 0F:F8DF: 7D 85 F8  ADC tbl_F885,X
C - - - - - 0x03F8F2 0F:F8E2: A8        TAY
C - - - - - 0x03F8F3 0F:F8E3: B9 8F F8  LDA tbl_F890 - 1,Y
C - - - - - 0x03F8F6 0F:F8E6: BE 94 F8  LDX tbl_F890 - 1 + 5,Y
C - - - - - 0x03F8F9 0F:F8E9: BC 00 00  LDY ram_0000,X
bra_F8EC:
C - - - - - 0x03F8FC 0F:F8EC: 8D 00 C0  STA $C000
C - - - - - 0x03F8FF 0F:F8EF: 85 4A     STA ram_004A
C - - - - - 0x03F901 0F:F8F1: E6 4D     INC ram_004D
C - - - - - 0x03F903 0F:F8F3: AD 02 20  LDA $2002
C - - - - - 0x03F906 0F:F8F6: A5 FC     LDA ram_00FC
C - - - - - 0x03F908 0F:F8F8: 8C 05 20  STY $2005
C - - - - - 0x03F90B 0F:F8FB: 8D 05 20  STA $2005
C - - - - - 0x03F90E 0F:F8FE: A4 4D     LDY ram_004D
C - - - - - 0x03F910 0F:F900: C0 02     CPY #$02
C - - - - - 0x03F912 0F:F902: D0 1D     BNE bra_F921_RTS
C - - - - - 0x03F914 0F:F904: A9 20     LDA #$20
C - - - - - 0x03F916 0F:F906: A0 A0     LDY #$A0
C - - - - - 0x03F918 0F:F908: 8D 06 20  STA $2006
C - - - - - 0x03F91B 0F:F90B: 8C 06 20  STY $2006
C - - - - - 0x03F91E 0F:F90E: A2 00     LDX #$00
C - - - - - 0x03F920 0F:F910: A5 4E     LDA ram_004E
C - - - - - 0x03F922 0F:F912: 8E 00 80  STX $8000
C - - - - - 0x03F925 0F:F915: 8D 01 80  STA $8001
C - - - - - 0x03F928 0F:F918: E8        INX
C - - - - - 0x03F929 0F:F919: A5 4F     LDA ram_004F
C - - - - - 0x03F92B 0F:F91B: 8E 00 80  STX $8000
C - - - - - 0x03F92E 0F:F91E: 8D 01 80  STA $8001
bra_F921_RTS:
C - - - - - 0x03F931 0F:F921: 60        RTS
bra_F922:
C - - - - - 0x03F932 0F:F922: 18        CLC
C - - - - - 0x03F933 0F:F923: A5 86     LDA ram_0086
C - - - - - 0x03F935 0F:F925: 85 87     STA ram_0087
C - - - - - 0x03F937 0F:F927: 69 03     ADC #$03
C - - - - - 0x03F939 0F:F929: D0 C1     BNE bra_F8EC
bra_F92B:
C - - - - - 0x03F93B 0F:F92B: E6 88     INC ram_0088
C - - - - - 0x03F93D 0F:F92D: A6 88     LDX ram_0088
C - - - - - 0x03F93F 0F:F92F: E0 0A     CPX #$0A
C - - - - - 0x03F941 0F:F931: B0 06     BCS bra_F939
C - - - - - 0x03F943 0F:F933: B4 6D     LDY ram_006D,X
C - - - - - 0x03F945 0F:F935: A9 03     LDA #$03
C - - - - - 0x03F947 0F:F937: D0 B3     BNE bra_F8EC
bra_F939:
loc_F939:
C D 3 - - - 0x03F949 0F:F939: A2 00     LDX #$00
C - - - - - 0x03F94B 0F:F93B: A0 23     LDY #$23
C - - - - - 0x03F94D 0F:F93D: AD 02 20  LDA $2002
ofs_F940_03:
C - - - - - 0x03F950 0F:F940: A9 04     LDA #$04
C - - - - - 0x03F952 0F:F942: 8D 05 20  STA $2005
C - - - - - 0x03F955 0F:F945: 8E 05 20  STX $2005
C - - - - - 0x03F958 0F:F948: 8C 06 20  STY $2006
C - - - - - 0x03F95B 0F:F94B: 8E 06 20  STX $2006
C - - - - - 0x03F95E 0F:F94E: A2 00     LDX #$00
C - - - - - 0x03F960 0F:F950: A9 7C     LDA #$7C
C - - - - - 0x03F962 0F:F952: 8E 00 80  STX $8000
C - - - - - 0x03F965 0F:F955: 8D 01 80  STA $8001
C - - - - - 0x03F968 0F:F958: E8        INX
C - - - - - 0x03F969 0F:F959: A9 7E     LDA #$7E
C - - - - - 0x03F96B 0F:F95B: 8E 00 80  STX $8000
C - - - - - 0x03F96E 0F:F95E: 8D 01 80  STA $8001
C - - - - - 0x03F971 0F:F961: 20 8D FB  JSR sub_FB8D
C - - - - - 0x03F974 0F:F964: A4 48     LDY ram_0048
C - - - - - 0x03F976 0F:F966: C0 05     CPY #$05
C - - - - - 0x03F978 0F:F968: B0 03     BCS bra_F96D_RTS
C - - - - - 0x03F97A 0F:F96A: 4C C9 FC  JMP loc_FCC9
bra_F96D_RTS:
C - - - - - 0x03F97D 0F:F96D: 60        RTS



ofs_F96E_06:
C - - J - - 0x03F97E 0F:F96E: A2 01     LDX #$01
C - - - - - 0x03F980 0F:F970: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03F983 0F:F973: A4 4D     LDY ram_004D
C - - - - - 0x03F985 0F:F975: D0 4C     BNE bra_F9C3
C - - - - - 0x03F987 0F:F977: A5 56     LDA ram_0056
C - - - - - 0x03F989 0F:F979: A2 52     LDX #$52
C - - - - - 0x03F98B 0F:F97B: 8E 00 C0  STX $C000
C - - - - - 0x03F98E 0F:F97E: 86 4A     STX ram_004A
C - - - - - 0x03F990 0F:F980: E6 4D     INC ram_004D
C - - - - - 0x03F992 0F:F982: AC 02 20  LDY $2002
C - - - - - 0x03F995 0F:F985: 8D 05 20  STA $2005
C - - - - - 0x03F998 0F:F988: A5 FC     LDA ram_00FC
C - - - - - 0x03F99A 0F:F98A: 8D 05 20  STA $2005
C - - - - - 0x03F99D 0F:F98D: A0 00     LDY #$00
sub_F98F:
loc_F98F:
C D 3 - - - 0x03F99F 0F:F98F: A2 00     LDX #$00
C - - - - - 0x03F9A1 0F:F991: 8E 00 80  STX $8000
C - - - - - 0x03F9A4 0F:F994: B9 4E 00  LDA ram_004E,Y
C - - - - - 0x03F9A7 0F:F997: 8D 01 80  STA $8001
C - - - - - 0x03F9AA 0F:F99A: E8        INX
C - - - - - 0x03F9AB 0F:F99B: B9 50 00  LDA ram_0050,Y
C - - - - - 0x03F9AE 0F:F99E: 8E 00 80  STX $8000
C - - - - - 0x03F9B1 0F:F9A1: 8D 01 80  STA $8001
C - - - - - 0x03F9B4 0F:F9A4: A9 02     LDA #$02
C - - - - - 0x03F9B6 0F:F9A6: 8D 00 80  STA $8000
C - - - - - 0x03F9B9 0F:F9A9: B9 52 00  LDA ram_0052,Y
C - - - - - 0x03F9BC 0F:F9AC: 8D 01 80  STA $8001
C - - - - - 0x03F9BF 0F:F9AF: A9 03     LDA #$03
C - - - - - 0x03F9C1 0F:F9B1: 8D 00 80  STA $8000
C - - - - - 0x03F9C4 0F:F9B4: B9 54 00  LDA ram_0054,Y
C - - - - - 0x03F9C7 0F:F9B7: 8D 01 80  STA $8001
C - - - - - 0x03F9CA 0F:F9BA: 60        RTS



tbl_F9BB_default_options:
- D 3 - - - 0x03F9CB 0F:F9BB: 03        .byte $03   ; 00 difficulty
- D 3 - - - 0x03F9CC 0F:F9BC: 01        .byte $01   ; 01 speed
- D 3 - - - 0x03F9CD 0F:F9BD: 01        .byte $01   ; 02 timer
- D 3 - - - 0x03F9CE 0F:F9BE: 01        .byte $01   ; 03 health
- D 3 - - - 0x03F9CF 0F:F9BF: 00        .byte $00   ; 04 ???
- D 3 - - - 0x03F9D0 0F:F9C0: 00        .byte $00   ; 05 ???
- D 3 - - - 0x03F9D1 0F:F9C1: 08        .byte $08   ; 06 skin



bra_F9C3:
C - - - - - 0x03F9D3 0F:F9C3: 88        DEY
C - - - - - 0x03F9D4 0F:F9C4: D0 28     BNE bra_F9EE
C - - - - - 0x03F9D6 0F:F9C6: A9 2A     LDA #$2A
C - - - - - 0x03F9D8 0F:F9C8: 8D 00 C0  STA $C000
C - - - - - 0x03F9DB 0F:F9CB: 85 4A     STA ram_004A
C - - - - - 0x03F9DD 0F:F9CD: E6 4D     INC ram_004D
C - - - - - 0x03F9DF 0F:F9CF: AC 02 20  LDY $2002
C - - - - - 0x03F9E2 0F:F9D2: A9 FF     LDA #$FF
C - - - - - 0x03F9E4 0F:F9D4: A2 00     LDX #$00
C - - - - - 0x03F9E6 0F:F9D6: 8D 05 20  STA $2005
C - - - - - 0x03F9E9 0F:F9D9: 8E 05 20  STX $2005
C - - - - - 0x03F9EC 0F:F9DC: 8E 00 80  STX $8000
C - - - - - 0x03F9EF 0F:F9DF: A9 7E     LDA #$7E
C - - - - - 0x03F9F1 0F:F9E1: 8D 01 80  STA $8001
C - - - - - 0x03F9F4 0F:F9E4: E8        INX
C - - - - - 0x03F9F5 0F:F9E5: 8E 00 80  STX $8000
C - - - - - 0x03F9F8 0F:F9E8: A9 20     LDA #$20
C - - - - - 0x03F9FA 0F:F9EA: 8D 01 80  STA $8001
C - - - - - 0x03F9FD 0F:F9ED: 60        RTS
bra_F9EE:
C - - - - - 0x03F9FE 0F:F9EE: A2 13     LDX #$13
C - - - - - 0x03FA00 0F:F9F0: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FA03 0F:F9F3: AD 02 20  LDA $2002
C - - - - - 0x03FA06 0F:F9F6: A5 57     LDA ram_0057
C - - - - - 0x03FA08 0F:F9F8: 8D 05 20  STA $2005
C - - - - - 0x03FA0B 0F:F9FB: A5 FC     LDA ram_00FC
C - - - - - 0x03FA0D 0F:F9FD: 8D 05 20  STA $2005
C - - - - - 0x03FA10 0F:FA00: A5 FF     LDA ram_00FF
C - - - - - 0x03FA12 0F:FA02: 09 01     ORA #$01
C - - - - - 0x03FA14 0F:FA04: 8D 00 20  STA $2000
C - - - - - 0x03FA17 0F:FA07: A0 01     LDY #$01
C - - - - - 0x03FA19 0F:FA09: 20 8F F9  JSR sub_F98F
C - - - - - 0x03FA1C 0F:FA0C: 4C 8D FB  JMP loc_FB8D



bra_FA0F:
loc_FA0F:
C D 3 - - - 0x03FA1F 0F:FA0F: 84 4E     STY ram_004E
C - - - - - 0x03FA21 0F:FA11: 8E 00 C0  STX $C000
C - - - - - 0x03FA24 0F:FA14: 86 4A     STX ram_004A
C - - - - - 0x03FA26 0F:FA16: E6 4D     INC ram_004D
C - - - - - 0x03FA28 0F:FA18: AC 02 20  LDY $2002
C - - - - - 0x03FA2B 0F:FA1B: 8D 05 20  STA $2005
C - - - - - 0x03FA2E 0F:FA1E: A5 FC     LDA ram_00FC
C - - - - - 0x03FA30 0F:FA20: 8D 05 20  STA $2005
C - - - - - 0x03FA33 0F:FA23: A5 4E     LDA ram_004E
bra_FA25:
loc_FA25:
sub_FA25:
C D 3 - - - 0x03FA35 0F:FA25: A2 00     LDX #$00
C - - - - - 0x03FA37 0F:FA27: 8E 00 80  STX $8000
C - - - - - 0x03FA3A 0F:FA2A: 8D 01 80  STA $8001
C - - - - - 0x03FA3D 0F:FA2D: E8        INX
C - - - - - 0x03FA3E 0F:FA2E: 18        CLC
C - - - - - 0x03FA3F 0F:FA2F: 69 02     ADC #$02
C - - - - - 0x03FA41 0F:FA31: 8E 00 80  STX $8000
C - - - - - 0x03FA44 0F:FA34: 8D 01 80  STA $8001
C - - - - - 0x03FA47 0F:FA37: 60        RTS



ofs_FA38_05:
C - - J - - 0x03FA48 0F:FA38: A2 01     LDX #$01
C - - - - - 0x03FA4A 0F:FA3A: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FA4D 0F:FA3D: A4 4D     LDY ram_004D
C - - - - - 0x03FA4F 0F:FA3F: D0 08     BNE bra_FA49
C - - - - - 0x03FA51 0F:FA41: A9 00     LDA #$00
C - - - - - 0x03FA53 0F:FA43: A2 3C     LDX #$3C
C - - - - - 0x03FA55 0F:FA45: A0 74     LDY #$74
C - - - - - 0x03FA57 0F:FA47: D0 C6     BNE bra_FA0F
bra_FA49:
C - - - - - 0x03FA59 0F:FA49: 88        DEY
C - - - - - 0x03FA5A 0F:FA4A: D0 07     BNE bra_FA53
C - - - - - 0x03FA5C 0F:FA4C: 20 67 FA  JSR sub_FA67
C - - - - - 0x03FA5F 0F:FA4F: A9 7C     LDA #$7C
C - - - - - 0x03FA61 0F:FA51: D0 D2     BNE bra_FA25
bra_FA53:
C - - - - - 0x03FA63 0F:FA53: 88        DEY
C - - - - - 0x03FA64 0F:FA54: D0 2E     BNE bra_FA84
C - - - - - 0x03FA66 0F:FA56: 20 67 FA  JSR sub_FA67
C - - - - - 0x03FA69 0F:FA59: A9 22     LDA #$22
C - - - - - 0x03FA6B 0F:FA5B: A0 40     LDY #$40
C - - - - - 0x03FA6D 0F:FA5D: 8D 06 20  STA $2006
C - - - - - 0x03FA70 0F:FA60: 8C 06 20  STY $2006
C - - - - - 0x03FA73 0F:FA63: 4C E3 E3  JMP loc_E3E3



sub_FA67:
C - - - - - 0x03FA77 0F:FA67: A4 4D     LDY ram_004D
C - - - - - 0x03FA79 0F:FA69: B9 93 FA  LDA tbl_FA94 - 1,Y
C - - - - - 0x03FA7C 0F:FA6C: 8D 00 C0  STA $C000
C - - - - - 0x03FA7F 0F:FA6F: 85 4A     STA ram_004A
C - - - - - 0x03FA81 0F:FA71: E6 4D     INC ram_004D
C - - - - - 0x03FA83 0F:FA73: 18        CLC
C - - - - - 0x03FA84 0F:FA74: A5 4D     LDA ram_004D
C - - - - - 0x03FA86 0F:FA76: 6D 30 05  ADC ram_0530
C - - - - - 0x03FA89 0F:FA79: 29 01     AND #$01
C - - - - - 0x03FA8B 0F:FA7B: 05 FE     ORA ram_00FE
C - - - - - 0x03FA8D 0F:FA7D: AC 02 20  LDY $2002
C - - - - - 0x03FA90 0F:FA80: 8D 01 20  STA $2001
C - - - - - 0x03FA93 0F:FA83: 60        RTS
bra_FA84:
C - - - - - 0x03FA94 0F:FA84: A2 02     LDX #$02
C - - - - - 0x03FA96 0F:FA86: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FA99 0F:FA89: A5 FE     LDA ram_00FE
C - - - - - 0x03FA9B 0F:FA8B: AC 02 20  LDY $2002
C - - - - - 0x03FA9E 0F:FA8E: 8D 01 20  STA $2001
C - - - - - 0x03FAA1 0F:FA91: 4C 8D FB  JMP loc_FB8D



tbl_FA94:
- D 3 - - - 0x03FAA4 0F:FA94: 1F        .byte $1F   ; 00
- D 3 - - - 0x03FAA5 0F:FA95: 50        .byte $50   ; 01



ofs_FA96_07:
C - - J - - 0x03FAA6 0F:FA96: A2 01     LDX #$01
C - - - - - 0x03FAA8 0F:FA98: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FAAB 0F:FA9B: A5 4D     LDA ram_004D
C - - - - - 0x03FAAD 0F:FA9D: D0 05     BNE bra_FAA4
C - - - - - 0x03FAAF 0F:FA9F: A9 2C     LDA #$2C
C - - - - - 0x03FAB1 0F:FAA1: A8        TAY
C - - - - - 0x03FAB2 0F:FAA2: D0 43     BNE bra_FAE7
bra_FAA4:
C - - - - - 0x03FAB4 0F:FAA4: 4C FE FA  JMP loc_FAFE



ofs_FAA7_0B:
C - - J - - 0x03FAB7 0F:FAA7: A2 01     LDX #$01
C - - - - - 0x03FAB9 0F:FAA9: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FABC 0F:FAAC: A2 02     LDX #$02
C - - - - - 0x03FABE 0F:FAAE: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FAC1 0F:FAB1: EA        NOP
ofs_FAB2_08:
C - - - - - 0x03FAC2 0F:FAB2: A9 7C     LDA #$7C
C - - - - - 0x03FAC4 0F:FAB4: 20 25 FA  JSR sub_FA25
C - - - - - 0x03FAC7 0F:FAB7: 4C 8D FB  JMP loc_FB8D



ofs_FABA_09:
C - - J - - 0x03FACA 0F:FABA: A2 01     LDX #$01
C - - - - - 0x03FACC 0F:FABC: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FACF 0F:FABF: A4 4D     LDY ram_004D
C - - - - - 0x03FAD1 0F:FAC1: D0 09     BNE bra_FACC
C - - - - - 0x03FAD3 0F:FAC3: A5 A6     LDA ram_00A6
C - - - - - 0x03FAD5 0F:FAC5: A2 9A     LDX #$9A
C - - - - - 0x03FAD7 0F:FAC7: A0 6C     LDY #$6C
C - - - - - 0x03FAD9 0F:FAC9: 4C 0F FA  JMP loc_FA0F
bra_FACC:
C - - - - - 0x03FADC 0F:FACC: A2 02     LDX #$02
C - - - - - 0x03FADE 0F:FACE: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FAE1 0F:FAD1: 4C 39 F9  JMP loc_F939



ofs_FAD4_0A:
C - - J - - 0x03FAE4 0F:FAD4: A2 01     LDX #$01
C - - - - - 0x03FAE6 0F:FAD6: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FAE9 0F:FAD9: A2 01     LDX #$01
bra_FADB_garbage_loop:
C - - - - - 0x03FAEB 0F:FADB: CA        DEX
C - - - - - 0x03FAEC 0F:FADC: 10 FD     BPL bra_FADB_garbage_loop
C - - - - - 0x03FAEE 0F:FADE: A4 4D     LDY ram_004D
C - - - - - 0x03FAF0 0F:FAE0: C0 03     CPY #$03
C - - - - - 0x03FAF2 0F:FAE2: B0 1A     BCS bra_FAFE
C - - - - - 0x03FAF4 0F:FAE4: B9 04 FB  LDA tbl_FB04_irq,Y
bra_FAE7:
C - - - - - 0x03FAF7 0F:FAE7: 8D 00 C0  STA $C000
C - - - - - 0x03FAFA 0F:FAEA: 85 4A     STA ram_004A
C - - - - - 0x03FAFC 0F:FAEC: E6 4D     INC ram_004D
C - - - - - 0x03FAFE 0F:FAEE: 88        DEY
C - - - - - 0x03FAFF 0F:FAEF: F0 05     BEQ bra_FAF6
C - - - - - 0x03FB01 0F:FAF1: A9 7C     LDA #$7C
C - - - - - 0x03FB03 0F:FAF3: 4C 25 FA  JMP loc_FA25
bra_FAF6:
C - - - - - 0x03FB06 0F:FAF6: 4C 34 FC  JMP loc_FC34
bra_FAF9:
C - - - - - 0x03FB09 0F:FAF9: A2 01     LDX #$01
bra_FAFB:
C - - - - - 0x03FB0B 0F:FAFB: CA        DEX
C - - - - - 0x03FB0C 0F:FAFC: 10 FD     BPL bra_FAFB
bra_FAFE:
loc_FAFE:
C D 3 - - - 0x03FB0E 0F:FAFE: 20 34 FC  JSR sub_FC34
C - - - - - 0x03FB11 0F:FB01: 4C 8D FB  JMP loc_FB8D



tbl_FB04_irq:
- D 3 - - - 0x03FB14 0F:FB04: 1C        .byte $1C   ; 00
- D 3 - - - 0x03FB15 0F:FB05: 36        .byte $36   ; 01
- D 3 - - - 0x03FB16 0F:FB06: 10        .byte $10   ; 02



ofs_FB07_0C:
C - - J - - 0x03FB17 0F:FB07: A2 01     LDX #$01
C - - - - - 0x03FB19 0F:FB09: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FB1C 0F:FB0C: A5 4D     LDA ram_004D
C - - - - - 0x03FB1E 0F:FB0E: D0 E9     BNE bra_FAF9
C - - - - - 0x03FB20 0F:FB10: E6 4D     INC ram_004D
C - - - - - 0x03FB22 0F:FB12: A9 90     LDA #$90
C - - - - - 0x03FB24 0F:FB14: 8D 00 C0  STA $C000
C - - - - - 0x03FB27 0F:FB17: 85 4A     STA ram_004A
C - - - - - 0x03FB29 0F:FB19: A2 00     LDX #$00
C - - - - - 0x03FB2B 0F:FB1B: 8E 00 80  STX $8000
C - - - - - 0x03FB2E 0F:FB1E: A9 5A     LDA #$5A
C - - - - - 0x03FB30 0F:FB20: 8D 01 80  STA $8001
C - - - - - 0x03FB33 0F:FB23: E8        INX
C - - - - - 0x03FB34 0F:FB24: A9 7E     LDA #$7E
C - - - - - 0x03FB36 0F:FB26: 8E 00 80  STX $8000
C - - - - - 0x03FB39 0F:FB29: 8D 01 80  STA $8001
C - - - - - 0x03FB3C 0F:FB2C: 60        RTS



ofs_FB2D_0E:
C - - J - - 0x03FB3D 0F:FB2D: A2 01     LDX #$01
C - - - - - 0x03FB3F 0F:FB2F: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FB42 0F:FB32: A9 6C     LDA #$6C
C - - - - - 0x03FB44 0F:FB34: 2C        .byte $2C
bra_FB35:
ofs_FB35_0D:
C - - - - - 0x03FB45 0F:FB35: A9 7C     LDA #$7C
C - - - - - 0x03FB47 0F:FB37: 20 25 FA  JSR sub_FA25
C - - - - - 0x03FB4A 0F:FB3A: 4C 8D FB  JMP loc_FB8D
ofs_FB3D_0F:
C - - J - - 0x03FB4D 0F:FB3D: A2 02     LDX #$02
C - - - - - 0x03FB4F 0F:FB3F: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FB52 0F:FB42: A5 4D     LDA ram_004D
C - - - - - 0x03FB54 0F:FB44: D0 10     BNE bra_FB56
C - - - - - 0x03FB56 0F:FB46: EA        NOP
C - - - - - 0x03FB57 0F:FB47: EA        NOP
C - - - - - 0x03FB58 0F:FB48: A9 54     LDA #$54
C - - - - - 0x03FB5A 0F:FB4A: 8D 00 C0  STA $C000
C - - - - - 0x03FB5D 0F:FB4D: 85 4A     STA ram_004A
C - - - - - 0x03FB5F 0F:FB4F: 85 4D     STA ram_004D
C - - - - - 0x03FB61 0F:FB51: A0 01     LDY #$01
C - - - - - 0x03FB63 0F:FB53: 4C 8F F9  JMP loc_F98F
bra_FB56:
C - - - - - 0x03FB66 0F:FB56: A2 00     LDX #$00
C - - - - - 0x03FB68 0F:FB58: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FB6B 0F:FB5B: 20 02 D6  JSR sub_D602
C - - - - - 0x03FB6E 0F:FB5E: A9 03     LDA #$03
C - - - - - 0x03FB70 0F:FB60: 8D 00 80  STA $8000
C - - - - - 0x03FB73 0F:FB63: 8E 01 80  STX $8001
C - - - - - 0x03FB76 0F:FB66: D0 CD     BNE bra_FB35



ofs_FB68_10:
C - - J - - 0x03FB78 0F:FB68: A2 01     LDX #$01
C - - - - - 0x03FB7A 0F:FB6A: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FB7D 0F:FB6D: A2 03     LDX #$03
C - - - - - 0x03FB7F 0F:FB6F: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FB82 0F:FB72: A2 00     LDX #$00
C - - - - - 0x03FB84 0F:FB74: 8E 00 80  STX $8000
C - - - - - 0x03FB87 0F:FB77: A9 72     LDA #$72
C - - - - - 0x03FB89 0F:FB79: 8D 01 80  STA $8001
C - - - - - 0x03FB8C 0F:FB7C: E8        INX
C - - - - - 0x03FB8D 0F:FB7D: A9 70     LDA #$70
C - - - - - 0x03FB8F 0F:FB7F: 8E 00 80  STX $8000
C - - - - - 0x03FB92 0F:FB82: 8D 01 80  STA $8001
C - - - - - 0x03FB95 0F:FB85: 4C 8D FB  JMP loc_FB8D
bra_FB88:
loc_FB88:
sub_FB88:
.export sub_0x03FB98
sub_0x03FB98:
C D 3 - - - 0x03FB98 0F:FB88: A9 00     LDA #$00
C - - - - - 0x03FB9A 0F:FB8A: 85 49     STA ram_0049
C - - - - - 0x03FB9C 0F:FB8C: 60        RTS



sub_FB8D:
loc_FB8D:
C D 3 - - - 0x03FB9D 0F:FB8D: 8D 00 E0  STA $E000
C - - - - - 0x03FBA0 0F:FB90: A5 49     LDA ram_0049
C - - - - - 0x03FBA2 0F:FB92: 30 F4     BMI bra_FB88
C - - - - - 0x03FBA4 0F:FB94: 60        RTS



sub_FB95:
C - - - - - 0x03FBA5 0F:FB95: A4 49     LDY ram_0049
C - - - - - 0x03FBA7 0F:FB97: 99 00 E0  STA $E000,Y
C - - - - - 0x03FBAA 0F:FB9A: F0 53     BEQ bra_FBEF_RTS
C - - - - - 0x03FBAC 0F:FB9C: AD 02 20  LDA $2002
C - - - - - 0x03FBAF 0F:FB9F: A2 00     LDX #$00
C - - - - - 0x03FBB1 0F:FBA1: 8E 05 20  STX $2005
C - - - - - 0x03FBB4 0F:FBA4: 8E 05 20  STX $2005
C - - - - - 0x03FBB7 0F:FBA7: AD 02 20  LDA $2002
C - - - - - 0x03FBBA 0F:FBAA: A9 FF     LDA #$FF
C - - - - - 0x03FBBC 0F:FBAC: 8D 00 C0  STA $C000
C - - - - - 0x03FBBF 0F:FBAF: 8D 01 C0  STA $C001
C - - - - - 0x03FBC2 0F:FBB2: 8E 06 20  STX $2006
C - - - - - 0x03FBC5 0F:FBB5: 8E 06 20  STX $2006
C - - - - - 0x03FBC8 0F:FBB8: A0 10     LDY #$10
C - - - - - 0x03FBCA 0F:FBBA: 8C 06 20  STY $2006
C - - - - - 0x03FBCD 0F:FBBD: 8C 06 20  STY $2006
C - - - - - 0x03FBD0 0F:FBC0: 8E 06 20  STX $2006
C - - - - - 0x03FBD3 0F:FBC3: 8E 06 20  STX $2006
C - - - - - 0x03FBD6 0F:FBC6: 8C 06 20  STY $2006
C - - - - - 0x03FBD9 0F:FBC9: 8C 06 20  STY $2006
C - - - - - 0x03FBDC 0F:FBCC: 8E 06 20  STX $2006
C - - - - - 0x03FBDF 0F:FBCF: 8E 06 20  STX $2006
C - - - - - 0x03FBE2 0F:FBD2: A4 48     LDY ram_0048
C - - - - - 0x03FBE4 0F:FBD4: C0 10     CPY #$10
C - - - - - 0x03FBE6 0F:FBD6: D0 05     BNE bra_FBDD
C - - - - - 0x03FBE8 0F:FBD8: AD 0C 01  LDA ram_010C
C - - - - - 0x03FBEB 0F:FBDB: D0 03     BNE bra_FBE0
bra_FBDD:
C - - - - - 0x03FBED 0F:FBDD: B9 9A FC  LDA tbl_FC9A,Y
bra_FBE0:
C - - - - - 0x03FBF0 0F:FBE0: 85 4A     STA ram_004A
C - - - - - 0x03FBF2 0F:FBE2: 8D 00 C0  STA $C000
C - - - - - 0x03FBF5 0F:FBE5: 8D 01 C0  STA $C001
C - - - - - 0x03FBF8 0F:FBE8: A9 00     LDA #$00
C - - - - - 0x03FBFA 0F:FBEA: 85 4D     STA ram_004D
C - - - - - 0x03FBFC 0F:FBEC: 85 88     STA ram_0088
C - - - - - 0x03FBFE 0F:FBEE: 58        CLI
bra_FBEF_RTS:
C - - - - - 0x03FBFF 0F:FBEF: 60        RTS



loc_FC34:
sub_FC34:
C D 3 - - - 0x03FC44 0F:FC34: A9 00     LDA #$00
C - - - - - 0x03FC46 0F:FC36: 8D 00 80  STA $8000
C - - - - - 0x03FC49 0F:FC39: A5 32     LDA ram_0032
C - - - - - 0x03FC4B 0F:FC3B: 8D 01 80  STA $8001
C - - - - - 0x03FC4E 0F:FC3E: A9 01     LDA #$01
C - - - - - 0x03FC50 0F:FC40: 8D 00 80  STA $8000
C - - - - - 0x03FC53 0F:FC43: A5 33     LDA ram_0033
C - - - - - 0x03FC55 0F:FC45: 8D 01 80  STA $8001
C - - - - - 0x03FC58 0F:FC48: 60        RTS



loc_FC8C:
sub_FC8C:
.export sub_0x03FC9C
sub_0x03FC9C:
C D 3 - - - 0x03FC9C 0F:FC8C: A9 00     LDA #$00
C - - - - - 0x03FC9E 0F:FC8E: F0 02     BEQ bra_FC92



sub_FC90:
.export sub_0x03FCA0
sub_0x03FCA0:
C - - - - - 0x03FCA0 0F:FC90: A9 01     LDA #$01
bra_FC92:
C - - - - - 0x03FCA2 0F:FC92: 85 45     STA ram_0045
C - - - - - 0x03FCA4 0F:FC94: A5 45     LDA ram_0045
C - - - - - 0x03FCA6 0F:FC96: 8D 00 A0  STA $A000
C - - - - - 0x03FCA9 0F:FC99: 60        RTS



tbl_FC9A:
- - - - - - 0x03FCAA 0F:FC9A: 30        .byte $30   ; 
- D 3 - - - 0x03FCAB 0F:FC9B: 28        .byte $28   ; 
- D 3 - - - 0x03FCAC 0F:FC9C: 28        .byte $28   ; 
- - - - - - 0x03FCAD 0F:FC9D: 28        .byte $28   ; 
- - - - - - 0x03FCAE 0F:FC9E: 28        .byte $28   ; 
- D 3 - - - 0x03FCAF 0F:FC9F: 20        .byte $20   ; 
- D 3 - - - 0x03FCB0 0F:FCA0: 08        .byte $08   ; 
- D 3 - - - 0x03FCB1 0F:FCA1: A0        .byte $A0   ; 
- D 3 - - - 0x03FCB2 0F:FCA2: 7C        .byte $7C   ; 
- D 3 - - - 0x03FCB3 0F:FCA3: 28        .byte $28   ; 
- D 3 - - - 0x03FCB4 0F:FCA4: 30        .byte $30   ; 
- D 3 - - - 0x03FCB5 0F:FCA5: 98        .byte $98   ; 
- D 3 - - - 0x03FCB6 0F:FCA6: 30        .byte $30   ; 
- D 3 - - - 0x03FCB7 0F:FCA7: 70        .byte $70   ; 
- D 3 - - - 0x03FCB8 0F:FCA8: 5F        .byte $5F   ; 
- D 3 - - - 0x03FCB9 0F:FCA9: 64        .byte $64   ; 
- D 3 - - - 0x03FCBA 0F:FCAA: 03        .byte $03   ; 



tbl_FCAB:
- D 3 - - - 0x03FCBB 0F:FCAB: 2E        .byte $2E   ; 00
- D 3 - - - 0x03FCBC 0F:FCAC: 2F        .byte $2F   ; 01
- D 3 - - - 0x03FCBD 0F:FCAD: 2E        .byte $2E   ; 02
- D 3 - - - 0x03FCBE 0F:FCAE: 2F        .byte $2F   ; 03
- D 3 - - - 0x03FCBF 0F:FCAF: 30        .byte $30   ; 04
- D 3 - - - 0x03FCC0 0F:FCB0: 30        .byte $30   ; 05
- D 3 - - - 0x03FCC1 0F:FCB1: 31        .byte $31   ; 06
- D 3 - - - 0x03FCC2 0F:FCB2: 42        .byte $42   ; 07



tbl_FCBA:
- D 3 - - - 0x03FCCA 0F:FCBA: 33        .byte $33   ; 00
- D 3 - - - 0x03FCCB 0F:FCBB: 34        .byte $34   ; 01
- D 3 - - - 0x03FCCC 0F:FCBC: 33        .byte $33   ; 02
- D 3 - - - 0x03FCCD 0F:FCBD: 34        .byte $34   ; 03
- D 3 - - - 0x03FCCE 0F:FCBE: 35        .byte $35   ; 04
- D 3 - - - 0x03FCCF 0F:FCBF: 35        .byte $35   ; 05
- D 3 - - - 0x03FCD0 0F:FCC0: 36        .byte $36   ; 06
- D 3 - - - 0x03FCD1 0F:FCC1: 3B        .byte $3B   ; 07



loc_FCC9:
C D 3 - - - 0x03FCD9 0F:FCC9: A9 00     LDA #$00
C - - - - - 0x03FCDB 0F:FCCB: 85 B7     STA ram_00B7
C - - - - - 0x03FCDD 0F:FCCD: 38        SEC
C - - - - - 0x03FCDE 0F:FCCE: A5 A6     LDA ram_00A6
C - - - - - 0x03FCE0 0F:FCD0: E9 60     SBC #$60
C - - - - - 0x03FCE2 0F:FCD2: B0 05     BCS bra_FCD9
C - - - - - 0x03FCE4 0F:FCD4: E6 B7     INC ram_00B7
C - - - - - 0x03FCE6 0F:FCD6: 20 FC D1  JSR sub_D1FC
bra_FCD9:
C - - - - - 0x03FCE9 0F:FCD9: 85 B8     STA ram_00B8
C - - - - - 0x03FCEB 0F:FCDB: A9 00     LDA #$00
C - - - - - 0x03FCED 0F:FCDD: 85 BA     STA ram_00BA
C - - - - - 0x03FCEF 0F:FCDF: A5 B8     LDA ram_00B8
C - - - - - 0x03FCF1 0F:FCE1: 4A        LSR
C - - - - - 0x03FCF2 0F:FCE2: 85 BD     STA ram_00BD
C - - - - - 0x03FCF4 0F:FCE4: 66 BA     ROR ram_00BA
C - - - - - 0x03FCF6 0F:FCE6: 4A        LSR
C - - - - - 0x03FCF7 0F:FCE7: 66 BA     ROR ram_00BA
C - - - - - 0x03FCF9 0F:FCE9: 4A        LSR
C - - - - - 0x03FCFA 0F:FCEA: 66 BA     ROR ram_00BA
C - - - - - 0x03FCFC 0F:FCEC: 85 BE     STA ram_00BE
C - - - - - 0x03FCFE 0F:FCEE: 4A        LSR
C - - - - - 0x03FCFF 0F:FCEF: 66 BA     ROR ram_00BA
C - - - - - 0x03FD01 0F:FCF1: 4A        LSR
C - - - - - 0x03FD02 0F:FCF2: 66 BA     ROR ram_00BA
C - - - - - 0x03FD04 0F:FCF4: 85 BF     STA ram_00BF
C - - - - - 0x03FD06 0F:FCF6: 85 B9     STA ram_00B9
C - - - - - 0x03FD08 0F:FCF8: A9 00     LDA #$00
C - - - - - 0x03FD0A 0F:FCFA: 85 BC     STA ram_00BC
C - - - - - 0x03FD0C 0F:FCFC: 85 BB     STA ram_00BB
C - - - - - 0x03FD0E 0F:FCFE: A2 00     LDX #$00
bra_FD00:
C - - - - - 0x03FD10 0F:FD00: 18        CLC
C - - - - - 0x03FD11 0F:FD01: A5 BC     LDA ram_00BC
C - - - - - 0x03FD13 0F:FD03: 65 BA     ADC ram_00BA
C - - - - - 0x03FD15 0F:FD05: 85 BC     STA ram_00BC
C - - - - - 0x03FD17 0F:FD07: A5 BB     LDA ram_00BB
C - - - - - 0x03FD19 0F:FD09: 65 B9     ADC ram_00B9
C - - - - - 0x03FD1B 0F:FD0B: 85 BB     STA ram_00BB
C - - - - - 0x03FD1D 0F:FD0D: A4 B7     LDY ram_00B7
C - - - - - 0x03FD1F 0F:FD0F: F0 03     BEQ bra_FD14
C - - - - - 0x03FD21 0F:FD11: 20 FC D1  JSR sub_D1FC
bra_FD14:
C - - - - - 0x03FD24 0F:FD14: 18        CLC
C - - - - - 0x03FD25 0F:FD15: 69 60     ADC #$60
C - - - - - 0x03FD27 0F:FD17: 95 56     STA ram_0056,X
C - - - - - 0x03FD29 0F:FD19: E8        INX
C - - - - - 0x03FD2A 0F:FD1A: E0 23     CPX #$23
C - - - - - 0x03FD2C 0F:FD1C: 90 E2     BCC bra_FD00
C - - - - - 0x03FD2E 0F:FD1E: 60        RTS



sub_FD1F:
C - - - - - 0x03FD2F 0F:FD1F: 20 96 EA  JSR sub_EA96
C - - - - - 0x03FD32 0F:FD22: A5 AA     LDA ram_00AA
C - - - - - 0x03FD34 0F:FD24: F0 12     BEQ bra_FD38
C - - - - - 0x03FD36 0F:FD26: 30 05     BMI bra_FD2D
C - - - - - 0x03FD38 0F:FD28: C6 AA     DEC ram_00AA
bra_FD2A:
C - - - - - 0x03FD3A 0F:FD2A: 4C 02 FE  JMP loc_FE02
bra_FD2D:
C - - - - - 0x03FD3D 0F:FD2D: E6 AB     INC ram_00AB
C - - - - - 0x03FD3F 0F:FD2F: 38        SEC
C - - - - - 0x03FD40 0F:FD30: A5 AB     LDA ram_00AB
C - - - - - 0x03FD42 0F:FD32: E9 04     SBC #$04
C - - - - - 0x03FD44 0F:FD34: 90 F4     BCC bra_FD2A
C - - - - - 0x03FD46 0F:FD36: 85 AB     STA ram_00AB
bra_FD38:
C - - - - - 0x03FD48 0F:FD38: E6 2A     INC ram_002A
C - - - - - 0x03FD4A 0F:FD3A: AC 30 06  LDY ram_0630
C - - - - - 0x03FD4D 0F:FD3D: F0 08     BEQ bra_FD47
C - - - - - 0x03FD4F 0F:FD3F: CE 30 06  DEC ram_0630
C - - - - - 0x03FD52 0F:FD42: B9 36 FE  LDA tbl_FE37 - 1,Y
C - - - - - 0x03FD55 0F:FD45: 85 86     STA ram_0086
bra_FD47:
C - - - - - 0x03FD57 0F:FD47: 20 75 F7  JSR sub_F775
C - - - - - 0x03FD5A 0F:FD4A: 20 0B F7  JSR sub_F70B
C - - - - - 0x03FD5D 0F:FD4D: 20 04 80  JSR sub_0x024014
C - - - - - 0x03FD60 0F:FD50: 20 91 AD  JSR sub_0x026DA1
C - - - - - 0x03FD63 0F:FD53: 20 3B FF  JSR sub_FF3B
C - - - - - 0x03FD66 0F:FD56: EA        NOP
loc_FD57:
C D 3 - - - 0x03FD67 0F:FD57: A6 AD     LDX ram_00AD
C - - - - - 0x03FD69 0F:FD59: BD 36 06  LDA ram_0636,X
C - - - - - 0x03FD6C 0F:FD5C: F0 14     BEQ bra_FD72
C - - - - - 0x03FD6E 0F:FD5E: DE 36 06  DEC ram_0636,X
C - - - - - 0x03FD71 0F:FD61: BD 10 05  LDA ram_0510,X
C - - - - - 0x03FD74 0F:FD64: 0A        ASL
C - - - - - 0x03FD75 0F:FD65: 0A        ASL
C - - - - - 0x03FD76 0F:FD66: A9 FF     LDA #$FF
C - - - - - 0x03FD78 0F:FD68: 90 02     BCC bra_FD6C
C - - - - - 0x03FD7A 0F:FD6A: A9 00     LDA #$00
bra_FD6C:
C - - - - - 0x03FD7C 0F:FD6C: 7D 80 04  ADC ram_0480,X
C - - - - - 0x03FD7F 0F:FD6F: 9D 80 04  STA ram_0480,X
bra_FD72:
C - - - - - 0x03FD82 0F:FD72: A6 AD     LDX ram_00AD
C - - - - - 0x03FD84 0F:FD74: BD 80 04  LDA ram_0480,X
C - - - - - 0x03FD87 0F:FD77: 0A        ASL
C - - - - - 0x03FD88 0F:FD78: BD 40 04  LDA ram_0440,X
C - - - - - 0x03FD8B 0F:FD7B: B0 1C     BCS bra_FD99
C - - - - - 0x03FD8D 0F:FD7D: A9 E8     LDA #$E8
C - - - - - 0x03FD8F 0F:FD7F: BC 10 04  LDY ram_0410,X
C - - - - - 0x03FD92 0F:FD82: C0 B0     CPY #$B0
C - - - - - 0x03FD94 0F:FD84: B0 02     BCS bra_FD88
C - - - - - 0x03FD96 0F:FD86: A9 E7     LDA #$E7
bra_FD88:
C - - - - - 0x03FD98 0F:FD88: DD 40 04  CMP ram_0440,X
C - - - - - 0x03FD9B 0F:FD8B: F0 02     BEQ bra_FD8F
C - - - - - 0x03FD9D 0F:FD8D: B0 0A     BCS bra_FD99
bra_FD8F:
C - - - - - 0x03FD9F 0F:FD8F: 9D 40 04  STA ram_0440,X
C - - - - - 0x03FDA2 0F:FD92: BD 80 04  LDA ram_0480,X
C - - - - - 0x03FDA5 0F:FD95: 10 1D     BPL bra_FDB4
- - - - - - 0x03FDA7 0F:FD97: 30 18     BMI bra_FDB1
bra_FD99:
C - - - - - 0x03FDA9 0F:FD99: A9 18     LDA #$18
C - - - - - 0x03FDAB 0F:FD9B: BC 10 04  LDY ram_0410,X
C - - - - - 0x03FDAE 0F:FD9E: C0 B0     CPY #$B0
C - - - - - 0x03FDB0 0F:FDA0: B0 02     BCS bra_FDA4
C - - - - - 0x03FDB2 0F:FDA2: A9 19     LDA #$19
bra_FDA4:
C - - - - - 0x03FDB4 0F:FDA4: DD 40 04  CMP ram_0440,X
C - - - - - 0x03FDB7 0F:FDA7: 90 08     BCC bra_FDB1
C - - - - - 0x03FDB9 0F:FDA9: 9D 40 04  STA ram_0440,X
C - - - - - 0x03FDBC 0F:FDAC: BD 80 04  LDA ram_0480,X
C - - - - - 0x03FDBF 0F:FDAF: 30 03     BMI bra_FDB4
bra_FDB1:
C - - - - - 0x03FDC1 0F:FDB1: 20 65 DB  JSR sub_DB65
bra_FDB4:
C - - - - - 0x03FDC4 0F:FDB4: 20 4C DB  JSR sub_DB4C
C - - - - - 0x03FDC7 0F:FDB7: BD 30 05  LDA ram_0530,X
C - - - - - 0x03FDCA 0F:FDBA: C9 03     CMP #$03
C - - - - - 0x03FDCC 0F:FDBC: D0 1F     BNE bra_FDDD
C - - - - - 0x03FDCE 0F:FDBE: BD 20 05  LDA ram_0520,X
C - - - - - 0x03FDD1 0F:FDC1: C9 04     CMP #$04
C - - - - - 0x03FDD3 0F:FDC3: F0 18     BEQ bra_FDDD
C - - - - - 0x03FDD5 0F:FDC5: C9 09     CMP #$09
C - - - - - 0x03FDD7 0F:FDC7: B0 14     BCS bra_FDDD
C - - - - - 0x03FDD9 0F:FDC9: BD 60 04  LDA ram_0460,X
C - - - - - 0x03FDDC 0F:FDCC: 30 0F     BMI bra_FDDD
C - - - - - 0x03FDDE 0F:FDCE: 1D 60 04  ORA ram_0460,X
C - - - - - 0x03FDE1 0F:FDD1: F0 0A     BEQ bra_FDDD
C - - - - - 0x03FDE3 0F:FDD3: A9 B1     LDA #$B1
C - - - - - 0x03FDE5 0F:FDD5: DD 10 04  CMP ram_0410,X
C - - - - - 0x03FDE8 0F:FDD8: B0 03     BCS bra_FDDD
C - - - - - 0x03FDEA 0F:FDDA: 9D 10 04  STA ram_0410,X
bra_FDDD:
C - - - - - 0x03FDED 0F:FDDD: 20 3F A2  JSR sub_0x02624F
C - - - - - 0x03FDF0 0F:FDE0: A6 AD     LDX ram_00AD
C - - - - - 0x03FDF2 0F:FDE2: 20 91 A9  JSR sub_0x0269A1
C - - - - - 0x03FDF5 0F:FDE5: 4C 13 FF  JMP loc_FF13



loc_FDEC:
C D 3 - - - 0x03FDFC 0F:FDEC: AD 35 06  LDA ram_0635
C - - - - - 0x03FDFF 0F:FDEF: F0 08     BEQ bra_FDF9
C - - - - - 0x03FE01 0F:FDF1: A9 00     LDA #$00
C - - - - - 0x03FE03 0F:FDF3: 8D 35 06  STA ram_0635
C - - - - - 0x03FE06 0F:FDF6: 20 F6 AF  JSR sub_0x027006
bra_FDF9:
C - - - - - 0x03FE09 0F:FDF9: 20 42 B1  JSR sub_0x027152
C - - - - - 0x03FE0C 0F:FDFC: 20 4F 9E  JSR sub_0x025E5F
C - - - - - 0x03FE0F 0F:FDFF: 20 AB A8  JSR sub_0x0268BB
loc_FE02:
C D 3 - - - 0x03FE12 0F:FE02: 20 E8 BA  JSR sub_0x027AF8
C - - - - - 0x03FE15 0F:FE05: A2 0F     LDX #$0F
bra_FE07_loop:
C - - - - - 0x03FE17 0F:FE07: BD E0 05  LDA ram_05E0,X
C - - - - - 0x03FE1A 0F:FE0A: 10 27     BPL bra_FE33
C - - - - - 0x03FE1C 0F:FE0C: 38        SEC
C - - - - - 0x03FE1D 0F:FE0D: BD 50 04  LDA ram_0450,X
C - - - - - 0x03FE20 0F:FE10: ED 3D 06  SBC ram_063D
C - - - - - 0x03FE23 0F:FE13: 9D 50 04  STA ram_0450,X
C - - - - - 0x03FE26 0F:FE16: A0 00     LDY #$00
C - - - - - 0x03FE28 0F:FE18: 84 00     STY ram_0000
C - - - - - 0x03FE2A 0F:FE1A: 38        SEC
C - - - - - 0x03FE2B 0F:FE1B: AD 3C 06  LDA ram_063C
C - - - - - 0x03FE2E 0F:FE1E: 10 02     BPL bra_FE22
C - - - - - 0x03FE30 0F:FE20: C6 00     DEC ram_0000
bra_FE22:
C - - - - - 0x03FE32 0F:FE22: BD 40 04  LDA ram_0440,X
C - - - - - 0x03FE35 0F:FE25: ED 3C 06  SBC ram_063C
C - - - - - 0x03FE38 0F:FE28: 9D 40 04  STA ram_0440,X
C - - - - - 0x03FE3B 0F:FE2B: BD 30 04  LDA ram_0430,X
C - - - - - 0x03FE3E 0F:FE2E: E5 00     SBC ram_0000
C - - - - - 0x03FE40 0F:FE30: 9D 30 04  STA ram_0430,X
bra_FE33:
C - - - - - 0x03FE43 0F:FE33: CA        DEX
C - - - - - 0x03FE44 0F:FE34: 10 D1     BPL bra_FE07_loop
C - - - - - 0x03FE46 0F:FE36: 60        RTS



tbl_FE37:
- D 3 - - - 0x03FE47 0F:FE37: 00        .byte $00   ; 
- D 3 - - - 0x03FE48 0F:FE38: 01        .byte $01   ; 
- D 3 - - - 0x03FE49 0F:FE39: FF        .byte $FF   ; 
- D 3 - - - 0x03FE4A 0F:FE3A: 00        .byte $00   ; 
- D 3 - - - 0x03FE4B 0F:FE3B: 01        .byte $01   ; 
- D 3 - - - 0x03FE4C 0F:FE3C: 02        .byte $02   ; 
- D 3 - - - 0x03FE4D 0F:FE3D: 01        .byte $01   ; 
- D 3 - - - 0x03FE4E 0F:FE3E: 00        .byte $00   ; 
- D 3 - - - 0x03FE4F 0F:FE3F: FF        .byte $FF   ; 
- D 3 - - - 0x03FE50 0F:FE40: FE        .byte $FE   ; 
- D 3 - - - 0x03FE51 0F:FE41: FF        .byte $FF   ; 
- D 3 - - - 0x03FE52 0F:FE42: 00        .byte $00   ; 
- D 3 - - - 0x03FE53 0F:FE43: 02        .byte $02   ; 
- D 3 - - - 0x03FE54 0F:FE44: FE        .byte $FE   ; 
- D 3 - - - 0x03FE55 0F:FE45: 00        .byte $00   ; 
- D 3 - - - 0x03FE56 0F:FE46: 02        .byte $02   ; 
- D 3 - - - 0x03FE57 0F:FE47: 00        .byte $00   ; 
- D 3 - - - 0x03FE58 0F:FE48: 00        .byte $00   ; 
- D 3 - - - 0x03FE59 0F:FE49: FE        .byte $FE   ; 
- D 3 - - - 0x03FE5A 0F:FE4A: 00        .byte $00   ; 
- D 3 - - - 0x03FE5B 0F:FE4B: 00        .byte $00   ; 
- D 3 - - - 0x03FE5C 0F:FE4C: 02        .byte $02   ; 
- D 3 - - - 0x03FE5D 0F:FE4D: 00        .byte $00   ; 
- D 3 - - - 0x03FE5E 0F:FE4E: 00        .byte $00   ; 
- D 3 - - - 0x03FE5F 0F:FE4F: FE        .byte $FE   ; 
- D 3 - - - 0x03FE60 0F:FE50: 00        .byte $00   ; 
- D 3 - - - 0x03FE61 0F:FE51: 00        .byte $00   ; 
- D 3 - - - 0x03FE62 0F:FE52: 00        .byte $00   ; 
- D 3 - - - 0x03FE63 0F:FE53: 02        .byte $02   ; 
- D 3 - - - 0x03FE64 0F:FE54: 00        .byte $00   ; 
- D 3 - - - 0x03FE65 0F:FE55: 00        .byte $00   ; 
- D 3 - - - 0x03FE66 0F:FE56: FE        .byte $FE   ; 



.export sub_0x03FE69
sub_0x03FE69:
C - - - - - 0x03FE69 0F:FE59: 9D 0D 01  STA ram_010D,X
tbl_FE5C:
C - - - - - 0x03FE6C 0F:FE5C: B9 AA EF  LDA tbl_EFAA,Y
C - - - - - 0x03FE6F 0F:FE5F: 9D 90 05  STA ram_0590,X
C - - - - - 0x03FE72 0F:FE62: 9D 47 06  STA ram_0647,X
C - - - - - 0x03FE75 0F:FE65: 60        RTS



.export sub_0x03FE76
sub_0x03FE76:
C - - - - - 0x03FE76 0F:FE66: AC 28 01  LDY ram_option_health
C - - - - - 0x03FE79 0F:FE69: C0 03     CPY #$03
C - - - - - 0x03FE7B 0F:FE6B: F0 0C     BEQ bra_FE79_RTS
C - - - - - 0x03FE7D 0F:FE6D: BC 0D 01  LDY ram_010D,X
C - - - - - 0x03FE80 0F:FE70: D0 04     BNE bra_FE76
C - - - - - 0x03FE82 0F:FE72: DE 90 05  DEC ram_0590,X
C - - - - - 0x03FE85 0F:FE75: 60        RTS
bra_FE76:
C - - - - - 0x03FE86 0F:FE76: DE 0D 01  DEC ram_010D,X
bra_FE79_RTS:
C - - - - - 0x03FE89 0F:FE79: 60        RTS



.export sub_0x03FE8A
sub_0x03FE8A:
C - - - - - 0x03FE8A 0F:FE7A: BD 0D 01  LDA ram_010D,X
C - - - - - 0x03FE8D 0F:FE7D: D0 03     BNE bra_FE82_RTS
C - - - - - 0x03FE8F 0F:FE7F: BD 90 05  LDA ram_0590,X
bra_FE82_RTS:
C - - - - - 0x03FE92 0F:FE82: 60        RTS



.export loc_0x03FE93
loc_0x03FE93:
C D 3 - - - 0x03FE93 0F:FE83: BC 20 05  LDY ram_0520,X
C - - - - - 0x03FE96 0F:FE86: C0 08     CPY #$08
C - - - - - 0x03FE98 0F:FE88: B0 F8     BCS bra_FE82_RTS
C - - - - - 0x03FE9A 0F:FE8A: 4C 95 9A  JMP loc_0x025AA5



.export loc_0x03FE9D
loc_0x03FE9D:
C D 3 - - - 0x03FE9D 0F:FE8D: BD 52 05  LDA ram_0552,X
C - - - - - 0x03FEA0 0F:FE90: C9 0E     CMP #$0E
C - - - - - 0x03FEA2 0F:FE92: F0 08     BEQ bra_FE9C
C - - - - - 0x03FEA4 0F:FE94: BD 0C 06  LDA ram_060C,X
C - - - - - 0x03FEA7 0F:FE97: C9 09     CMP #$09
C - - - - - 0x03FEA9 0F:FE99: B0 01     BCS bra_FE9C
C - - - - - 0x03FEAB 0F:FE9B: 60        RTS
bra_FE9C:
C - - - - - 0x03FEAC 0F:FE9C: 4C 7C 9A  JMP loc_0x025A8C



.export loc_0x03FEAF
loc_0x03FEAF:
C D 3 - - - 0x03FEAF 0F:FE9F: 30 0B     BMI bra_FEAC
C - - - - - 0x03FEB1 0F:FEA1: D0 0B     BNE bra_FEAE
C - - - - - 0x03FEB3 0F:FEA3: B9 10 04  LDA ram_0410,Y
C - - - - - 0x03FEB6 0F:FEA6: C9 B0     CMP #$B0
C - - - - - 0x03FEB8 0F:FEA8: A9 02     LDA #$02
C - - - - - 0x03FEBA 0F:FEAA: B0 0A     BCS bra_FEB6
bra_FEAC:
C - - - - - 0x03FEBC 0F:FEAC: A9 30     LDA #$30
bra_FEAE:
C - - - - - 0x03FEBE 0F:FEAE: 0A        ASL
C - - - - - 0x03FEBF 0F:FEAF: 6D 26 01  ADC ram_option_speed
C - - - - - 0x03FEC2 0F:FEB2: A8        TAY
C - - - - - 0x03FEC3 0F:FEB3: B9 5C FE  LDA tbl_FEBA - $5E,Y
bra_FEB6:
C - - - - - 0x03FEC6 0F:FEB6: 9D F0 05  STA ram_05F0,X
C - - - - - 0x03FEC9 0F:FEB9: 60        RTS



tbl_FEBA:
- D 3 - - - 0x03FECA 0F:FEBA: 04        .byte $04   ; 
- D 3 - - - 0x03FECB 0F:FEBB: 02        .byte $02   ; 
- D 3 - - - 0x03FECC 0F:FEBC: 01        .byte $01   ; 
- D 3 - - - 0x03FECD 0F:FEBD: 01        .byte $01   ; 
- D 3 - - - 0x03FECE 0F:FEBE: 04        .byte $04   ; 
- D 3 - - - 0x03FECF 0F:FEBF: 00        .byte $00   ; 
- D 3 - - - 0x03FED0 0F:FEC0: 02        .byte $02   ; 
- D 3 - - - 0x03FED1 0F:FEC1: 02        .byte $02   ; 
- D 3 - - - 0x03FED2 0F:FEC2: 03        .byte $03   ; 
- D 3 - - - 0x03FED3 0F:FEC3: 01        .byte $01   ; 
- - - - - - 0x03FED4 0F:FEC4: 03        .byte $03   ; 
- D 3 - - - 0x03FED5 0F:FEC5: 01        .byte $01   ; 
- D 3 - - - 0x03FED6 0F:FEC6: 04        .byte $04   ; 
- D 3 - - - 0x03FED7 0F:FEC7: 02        .byte $02   ; 
- D 3 - - - 0x03FED8 0F:FEC8: 04        .byte $04   ; 
- D 3 - - - 0x03FED9 0F:FEC9: 03        .byte $03   ; 
- D 3 - - - 0x03FEDA 0F:FECA: 01        .byte $01   ; 
- D 3 - - - 0x03FEDB 0F:FECB: 01        .byte $01   ; 
- D 3 - - - 0x03FEDC 0F:FECC: 01        .byte $01   ; 
- D 3 - - - 0x03FEDD 0F:FECD: 02        .byte $02   ; 
- D 3 - - - 0x03FEDE 0F:FECE: 04        .byte $04   ; 
- D 3 - - - 0x03FEDF 0F:FECF: 02        .byte $02   ; 



.export sub_0x03FEE0
sub_0x03FEE0:
C - - - - - 0x03FEE0 0F:FED0: A4 95     LDY ram_0095
C - - - - - 0x03FEE2 0F:FED2: C0 07     CPY #$07
C - - - - - 0x03FEE4 0F:FED4: D0 06     BNE bra_FEDC
C - - - - - 0x03FEE6 0F:FED6: AC 26 01  LDY ram_option_speed
C - - - - - 0x03FEE9 0F:FED9: B9 8B B7  LDA tbl_0x02779B,Y
bra_FEDC:
C - - - - - 0x03FEEC 0F:FEDC: 4C 6A D1  JMP loc_D16A



.export sub_0x03FEEF
sub_0x03FEEF:
C - - - - - 0x03FEEF 0F:FEDF: BD 20 05  LDA ram_0520,X
C - - - - - 0x03FEF2 0F:FEE2: C9 08     CMP #$08
C - - - - - 0x03FEF4 0F:FEE4: D0 03     BNE bra_FEE9
- - - - - - 0x03FEF6 0F:FEE6: BD 80 05  LDA ram_0580,X
bra_FEE9:
C - - - - - 0x03FEF9 0F:FEE9: C9 02     CMP #$02
C - - - - - 0x03FEFB 0F:FEEB: 49 07     EOR #$07
C - - - - - 0x03FEFD 0F:FEED: 60        RTS



sub_FEEE:
C - - - - - 0x03FEFE 0F:FEEE: A5 95     LDA ram_0095
C - - - - - 0x03FF00 0F:FEF0: 49 1B     EOR #$1B
C - - - - - 0x03FF02 0F:FEF2: D0 0B     BNE bra_FEFF
.export sub_0x03FF04
sub_0x03FF04:
C - - - - - 0x03FF04 0F:FEF4: A9 00     LDA #$00
C - - - - - 0x03FF06 0F:FEF6: 9D 0C 04  STA ram_040C,X
C - - - - - 0x03FF09 0F:FEF9: 9D 0A 06  STA ram_060A,X
C - - - - - 0x03FF0C 0F:FEFC: BC 20 05  LDY ram_0520,X
bra_FEFF:
C - - - - - 0x03FF0F 0F:FEFF: BD 50 05  LDA ram_0550,X
bra_FF02_RTS:
C - - - - - 0x03FF12 0F:FF02: 60        RTS



.export sub_0x03FF13
sub_0x03FF13:
C - - - - - 0x03FF13 0F:FF03: BD 20 05  LDA ram_0520,X
C - - - - - 0x03FF16 0F:FF06: 49 09     EOR #$09
C - - - - - 0x03FF18 0F:FF08: D0 F8     BNE bra_FF02_RTS
C - - - - - 0x03FF1A 0F:FF0A: 4C 69 B0  JMP loc_0x027079



.export sub_0x03FF1D
sub_0x03FF1D:
C - - - - - 0x03FF1D 0F:FF0D: 20 E7 F5  JSR sub_F5E7_prg_bank_0B
C - - - - - 0x03FF20 0F:FF10: 4C D6 A6  JMP loc_0x02E6E6



loc_FF13:
C D 3 - - - 0x03FF23 0F:FF13: A5 9D     LDA ram_009D
C - - - - - 0x03FF25 0F:FF15: D0 0A     BNE bra_FF21
C - - - - - 0x03FF27 0F:FF17: E6 AD     INC ram_00AD
C - - - - - 0x03FF29 0F:FF19: A5 AD     LDA ram_00AD
C - - - - - 0x03FF2B 0F:FF1B: 4A        LSR
C - - - - - 0x03FF2C 0F:FF1C: F0 07     BEQ bra_FF25
bra_FF1E:
C - - - - - 0x03FF2E 0F:FF1E: 4C EC FD  JMP loc_FDEC
bra_FF21:
C - - - - - 0x03FF31 0F:FF21: C6 AD     DEC ram_00AD
C - - - - - 0x03FF33 0F:FF23: 30 F9     BMI bra_FF1E
bra_FF25:
C - - - - - 0x03FF35 0F:FF25: 4C 57 FD  JMP loc_FD57



.export loc_0x03FF38
loc_0x03FF38:
C D 3 - - - 0x03FF38 0F:FF28: A5 9D     LDA ram_009D
C - - - - - 0x03FF3A 0F:FF2A: D0 08     BNE bra_FF34
C - - - - - 0x03FF3C 0F:FF2C: E6 AD     INC ram_00AD
C - - - - - 0x03FF3E 0F:FF2E: A5 AD     LDA ram_00AD
C - - - - - 0x03FF40 0F:FF30: 4A        LSR
C - - - - - 0x03FF41 0F:FF31: F0 05     BEQ bra_FF38
bra_FF33_RTS:
C - - - - - 0x03FF43 0F:FF33: 60        RTS
bra_FF34:
C - - - - - 0x03FF44 0F:FF34: C6 AD     DEC ram_00AD
C - - - - - 0x03FF46 0F:FF36: 30 FB     BMI bra_FF33_RTS
bra_FF38:
C - - - - - 0x03FF48 0F:FF38: 4C 08 80  JMP loc_0x024018



sub_FF3B:
.export sub_0x03FF4B
sub_0x03FF4B:
C - - - - - 0x03FF4B 0F:FF3B: A2 01     LDX #$01
C - - - - - 0x03FF4D 0F:FF3D: AD 54 01  LDA ram_0154
C - - - - - 0x03FF50 0F:FF40: 0A        ASL
C - - - - - 0x03FF51 0F:FF41: A8        TAY
C - - - - - 0x03FF52 0F:FF42: B9 56 01  LDA ram_0156,Y
C - - - - - 0x03FF55 0F:FF45: 59 55 01  EOR ram_0155,Y
C - - - - - 0x03FF58 0F:FF48: 30 23     BMI bra_FF6D
C - - - - - 0x03FF5A 0F:FF4A: AD 0D 01  LDA ram_010D
C - - - - - 0x03FF5D 0F:FF4D: 0D 0E 01  ORA ram_010E
C - - - - - 0x03FF60 0F:FF50: F0 09     BEQ bra_FF5B
C - - - - - 0x03FF62 0F:FF52: AD 0D 01  LDA ram_010D
C - - - - - 0x03FF65 0F:FF55: CD 0E 01  CMP ram_010E
C - - - - - 0x03FF68 0F:FF58: 4C 61 FF  JMP loc_FF61
bra_FF5B:
C - - - - - 0x03FF6B 0F:FF5B: AD 90 05  LDA ram_0590
C - - - - - 0x03FF6E 0F:FF5E: CD 91 05  CMP ram_0591
loc_FF61:
C D 3 - - - 0x03FF71 0F:FF61: D0 07     BNE bra_FF6A
C - - - - - 0x03FF73 0F:FF63: AD 40 06  LDA ram_0640
C - - - - - 0x03FF76 0F:FF66: 29 01     AND #$01
C - - - - - 0x03FF78 0F:FF68: D0 02     BNE bra_FF6C
bra_FF6A:
C - - - - - 0x03FF7A 0F:FF6A: B0 01     BCS bra_FF6D
bra_FF6C:
C - - - - - 0x03FF7C 0F:FF6C: CA        DEX
bra_FF6D:
C - - - - - 0x03FF7D 0F:FF6D: 86 9D     STX ram_009D
C - - - - - 0x03FF7F 0F:FF6F: 86 AD     STX ram_00AD
C - - - - - 0x03FF81 0F:FF71: 60        RTS


.segment "VECTORS"
- D 3 - - - 0x04000A 0F:FFFA: 19 F2     .word vec_F219_NMI_handler
- D 3 - - - 0x04000C 0F:FFFC: 74 F1     .word vec_F174_RESET_handler
- D 3 - - - 0x04000E 0F:FFFE: 5E F8     .word vec_F85E_IRQ



