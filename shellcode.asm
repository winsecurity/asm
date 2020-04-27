00000000  7833              js 0x35
00000002  317843            xor [eax+0x43],edi
00000005  307835            xor [eax+0x35],bh
00000008  307836            xor [eax+0x36],bh
0000000B  387837            cmp [eax+0x37],bh
0000000E  37                aaa
0000000F  7832              js 0x43
00000011  327837            xor bh,[eax+0x37]
00000014  317837            xor [eax+0x37],edi
00000017  37                aaa
00000018  7836              js 0x50
0000001A  387832            cmp [eax+0x32],bh
0000001D  307837            xor [eax+0x37],bh
00000020  317837            xor [eax+0x37],edi
00000023  397832            cmp [eax+0x32],edi
00000026  307836            xor [eax+0x36],bh
00000029  387837            cmp [eax+0x37],bh
0000002C  317837            xor [eax+0x37],edi
0000002F  307837            xor [eax+0x37],bh
00000032  327832            xor bh,[eax+0x32]
00000035  337836            xor edi,[eax+0x36]
00000038  387832            cmp [eax+0x32],bh
0000003B  3578323078        xor eax,0x78303278
00000040  37                aaa
00000041  37                aaa
00000042  7837              js 0x7b
00000044  387836            cmp [eax+0x36],bh
00000047  387832            cmp [eax+0x32],bh
0000004A  307837            xor [eax+0x37],bh
0000004D  327837            xor bh,[eax+0x37]
00000050  3578323278        xor eax,0x78323278
00000055  36387837          cmp [ss:eax+0x37],bh
00000059  337837            xor edi,[eax+0x37]
0000005C  397832            cmp [eax+0x32],edi
0000005F  37                aaa
00000060  7837              js 0x99
00000062  307836            xor [eax+0x36],bh
00000065  387832            cmp [eax+0x32],bh
00000068  307832            xor [eax+0x32],bh
0000006B  337832            xor edi,[eax+0x32]
0000006E  337837            xor edi,[eax+0x37]
00000071  317836            xor [eax+0x36],edi
00000074  387837            cmp [eax+0x37],bh
00000077  327837            xor bh,[eax+0x37]
0000007A  367837            ss js 0xb4
0000007D  317837            xor [eax+0x37],edi
00000080  3478              xor al,0x78
00000082  36387837          cmp [ss:eax+0x37],bh
00000086  327832            xor bh,[eax+0x32]
00000089  37                aaa
0000008A  7837              js 0xc3
0000008C  397837            cmp [eax+0x37],edi
0000008F  337836            xor edi,[eax+0x36]
00000092  387832            cmp [eax+0x32],bh
00000095  3478              xor al,0x78
00000097  323478            xor dh,[eax+edi*2]
0000009A  37                aaa
0000009B  317837            xor [eax+0x37],edi
0000009E  367836            ss js 0xd7
000000A1  387837            cmp [eax+0x37],bh
000000A4  3478              xor al,0x78
000000A6  323478            xor dh,[eax+edi*2]
000000A9  37                aaa
000000AA  337837            xor edi,[eax+0x37]
000000AD  327836            xor bh,[eax+0x36]
000000B0  387832            cmp [eax+0x32],bh
000000B3  3578373978        xor eax,0x78393778
000000B8  3230              xor dh,[eax]
000000BA  7837              js 0xf3
000000BC  317836            xor [eax+0x36],edi
000000BF  387832            cmp [eax+0x32],bh
000000C2  37                aaa
000000C3  7837              js 0xfc
000000C5  317837            xor [eax+0x37],edi
000000C8  3478              xor al,0x78
000000CA  37                aaa
000000CB  3478              xor al,0x78
000000CD  36387832          cmp [ss:eax+0x32],bh
000000D1  337837            xor edi,[eax+0x37]
000000D4  317832            xor [eax+0x32],edi
000000D7  337837            xor edi,[eax+0x37]
000000DA  3578363878        xor eax,0x78383678
000000DF  37                aaa
000000E0  387837            cmp [eax+0x37],bh
000000E3  327837            xor bh,[eax+0x37]
000000E6  3578323078        xor eax,0x78303278
000000EB  36387837          cmp [ss:eax+0x37],bh
000000EF  3478              xor al,0x78
000000F1  3232              xor dh,[edx]
000000F3  7837              js 0x12c
000000F5  367837            ss js 0x12f
000000F8  3578363878        xor eax,0x78383678
000000FD  323478            xor dh,[eax+edi*2]
00000100  37                aaa
00000101  327832            xor bh,[eax+0x32]
00000104  3478              xor al,0x78
00000106  3230              xor dh,[eax]
00000108  7836              js 0x140
0000010A  387832            cmp [eax+0x32],bh
0000010D  337837            xor edi,[eax+0x37]
00000110  3578373978        xor eax,0x78393778
00000115  3233              xor dh,[ebx]
00000117  7836              js 0x14f
00000119  387837            cmp [eax+0x37],bh
0000011C  367832            ss js 0x151
0000011F  3478              xor al,0x78
00000121  37                aaa
00000122  307832            xor [eax+0x32],bh
00000125  37                aaa
00000126  7836              js 0x15e
00000128  387832            cmp [eax+0x32],bh
0000012B  3478              xor al,0x78
0000012D  37                aaa
0000012E  367837            ss js 0x168
00000131  367832            ss js 0x166
00000134  3478              xor al,0x78
00000136  36387837          cmp [ss:eax+0x37],bh
0000013A  3478              xor al,0x78
0000013C  37                aaa
0000013D  387832            cmp [eax+0x32],bh
00000140  3478              xor al,0x78
00000142  37                aaa
00000143  337836            xor edi,[eax+0x36]
00000146  387832            cmp [eax+0x32],bh
00000149  37                aaa
0000014A  7832              js 0x17e
0000014C  307837            xor [eax+0x37],bh
0000014F  307837            xor [eax+0x37],bh
00000152  37                aaa
00000153  7836              js 0x18b
00000155  387832            cmp [eax+0x32],bh
00000158  3578323078        xor eax,0x78303278
0000015D  3237              xor dh,[edi]
0000015F  7837              js 0x198
00000161  37                aaa
00000162  7836              js 0x19a
00000164  387837            cmp [eax+0x37],bh
00000167  327832            xor bh,[eax+0x32]
0000016A  337837            xor edi,[eax+0x37]
0000016D  37                aaa
0000016E  7837              js 0x1a7
00000170  307836            xor [eax+0x36],bh
00000173  387832            cmp [eax+0x32],bh
00000176  327837            xor bh,[eax+0x37]
00000179  367837            ss js 0x1b3
0000017C  307837            xor [eax+0x37],bh
0000017F  37                aaa
00000180  7836              js 0x1b8
00000182  387832            cmp [eax+0x32],bh
00000185  3478              xor al,0x78
00000187  37                aaa
00000188  3478              xor al,0x78
0000018A  37                aaa
0000018B  337832            xor edi,[eax+0x32]
0000018E  337836            xor edi,[eax+0x36]
00000191  387837            cmp [eax+0x37],bh
00000194  327837            xor bh,[eax+0x37]
00000197  317832            xor [eax+0x32],edi
0000019A  327832            xor bh,[eax+0x32]
0000019D  3578363878        xor eax,0x78383678
000001A2  37                aaa
000001A3  3578373378        xor eax,0x78333778
000001A8  3232              xor dh,[edx]
000001AA  7832              js 0x1de
000001AC  337836            xor edi,[eax+0x36]
000001AF  387837            cmp [eax+0x37],bh
000001B2  37                aaa
000001B3  7837              js 0x1ec
000001B5  307837            xor [eax+0x37],bh
000001B8  307837            xor [eax+0x37],bh
000001BB  337836            xor edi,[eax+0x36]
000001BE  387837            cmp [eax+0x37],bh
000001C1  317832            xor [eax+0x32],edi
000001C4  307832            xor [eax+0x32],bh
000001C7  3478              xor al,0x78
000001C9  323578363878      xor dh,[dword 0x78383678]
000001CF  37                aaa
000001D0  327837            xor bh,[eax+0x37]
000001D3  387837            cmp [eax+0x37],bh
000001D6  307837            xor [eax+0x37],bh
000001D9  307836            xor [eax+0x36],bh
000001DC  387832            cmp [eax+0x32],bh
000001DF  337832            xor edi,[eax+0x32]
000001E2  327837            xor bh,[eax+0x37]
000001E5  327837            xor bh,[eax+0x37]
000001E8  387835            cmp [eax+0x35],bh
000001EB  3478              xor al,0x78
000001ED  3545783842        xor eax,0x42387845
000001F2  7846              js 0x23a
000001F4  45                inc ebp
000001F5  7838              js 0x22f
000001F7  42                inc edx
000001F8  7844              js 0x23e
000001FA  37                aaa
000001FB  7846              js 0x243
000001FD  43                inc ebx
000001FE  7842              js 0x242
00000200  397838            cmp [eax+0x38],edi
00000203  307830            xor [eax+0x30],bh
00000206  307830            xor [eax+0x30],bh
00000209  307830            xor [eax+0x30],bh
0000020C  307842            xor [eax+0x42],bh
0000020F  42                inc edx
00000210  7834              js 0x246
00000212  317830            xor [eax+0x30],edi
00000215  307830            xor [eax+0x30],bh
00000218  307830            xor [eax+0x30],bh
0000021B  307833            xor [eax+0x33],bh
0000021E  317843            xor [eax+0x43],edi
00000221  307835            xor [eax+0x35],bh
00000224  307841            xor [eax+0x41],bh
00000227  43                inc ebx
00000228  7833              js 0x25d
0000022A  337843            xor edi,[eax+0x43]
0000022D  337841            xor edi,[eax+0x41]
00000230  41                inc ecx
00000231  7845              js 0x278
00000233  327846            xor bh,[eax+0x46]
00000236  41                inc ecx
00000237  7835              js 0x26e
00000239  3478              xor al,0x78
0000023B  3545784343        xor eax,0x43437845
00000240  0A0A              or cl,[edx]
