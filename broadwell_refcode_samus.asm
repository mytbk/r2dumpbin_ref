;; Generated with r2dumpbin (https://github.com/mytbk/r2dumpbin)

;; First convert the ELF file to binary, and pad it to MemSiz of
;; the loadable segment:
;;   objcopy -O binary refcode.elf refcode.bin
;;   fallocate -l 201288 refcode.bin

;; Then get the relocation addresses:
;;   readelf -r refcode.elf | cut -d' ' -f1 | grep '^[0-9]' \
;;     | sed -e 's/^/0x/g' -e 's/$/,/g' > refcode_reloc.txt

;; Run these in r2 before running dumpbin.py:
;; f va @ 0
;; f reloc:refcode_reloc.txt @ 0

bits 32
org 0x00000000

loc_00000000:
pushad
mov eax, dword [esp + 0x24]
push eax
call fcn_00000012  ; call 0x12
pop ecx
mov dword [esp + 0x1c], eax
popad
ret

fcn_00000012:
push ebp
mov ebp, esp
push esi
push ebx
sub esp, 0x1c
mov esi, dword [ebp + 8]
push esi
call fcn_000163a4  ; call 0x163a4
add esp, 0x10
mov ebx, eax
test eax, eax
je loc_000000c4  ; je 0xc4
sub esp, 0xc
push ref_000205f8  ; push 0x205f8
call fcn_000153ce  ; call 0x153ce
pop eax
pop edx
push ebx
push 0
call fcn_0000dfb2  ; call 0xdfb2
mov dword [esp], ref_0002060a  ; mov dword [esp], 0x2060a
call fcn_000153ce  ; call 0x153ce
pop ecx
pop eax
push ebx
push 0
call fcn_0000058b  ; call 0x58b
mov dword [esp], ref_00020625  ; mov dword [esp], 0x20625
call fcn_000153ce  ; call 0x153ce
add esp, 0xc
push 0
push 0
push ebx
call fcn_0000d811  ; call 0xd811
lea eax, [ebp - 0xc]
push eax
push 0
push 0
push ref_0002912c  ; push 0x2912c
call fcn_00019699  ; call 0x19699
mov eax, dword [ebp - 0xc]
add esp, 0x20
movzx edx, byte [eax]
add eax, 0x284
push edx
push dword [esi + 0x1a]
push dword [esi + 0x1e]
push eax
call fcn_000116c1  ; call 0x116c1
mov eax, dword [ebp - 0xc]
pop edx
pop ecx
push dword [eax + 4]
push eax
call fcn_0001501f  ; call 0x1501f
mov dword [esp], ref_00020637  ; mov dword [esp], 0x20637
call fcn_000153ce  ; call 0x153ce
add esp, 0x10
xor eax, eax
jmp short loc_000000c7  ; jmp 0xc7

loc_000000c4:
or eax, 0xffffffff

loc_000000c7:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_000000ce:  ; not directly referenced
push ebp
mov ebp, esp
push esi
push ebx
sub esp, 0x14
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0x48
mov dword [esp], eax
call fcn_00017e14  ; call 0x17e14
mov ebx, eax
lea eax, [ebp - 0xc]
and ebx, 0xfffffffe
push eax
push 0
push 0
push ref_0002925c  ; push 0x2925c
call fcn_00019699  ; call 0x19699
add esp, 0x20
mov esi, eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0000014a  ; je 0x14a
test esi, esi
jns short loc_0000014a  ; jns 0x14a
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00000132  ; je 0x132
push eax
push esi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00000132:  ; not directly referenced
push esi
push ref_00020664  ; push 0x20664
push 0x126
push ref_00020678  ; push 0x20678
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000014a:  ; not directly referenced
push ecx
push 0x600
push 0xfffff9ff
lea eax, [ebx + 0x5f00]
push eax
call fcn_00018aa4  ; call 0x18aa4
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_0000017e  ; je 0x17e
push edx
push edx
push ref_000206a8  ; push 0x206a8
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000017e:  ; not directly referenced
push eax
add ebx, 0x5da8
push eax
push 3
push ebx
call fcn_0001866c  ; call 0x1866c
lea esp, [ebp - 8]
xor eax, eax
pop ebx
pop esi
pop ebp
ret

fcn_00000197:  ; not directly referenced
push ebp
mov ebp, esp
push esi
push ebx
call fcn_0001c5b4  ; call 0x1c5b4
mov esi, eax
call fcn_0001c58d  ; call 0x1c58d
sub esp, 0xc
push ref_000294ac  ; push 0x294ac
mov ebx, eax
call fcn_00019039  ; call 0x19039
add esp, 0x10
test eax, eax
je short loc_000001c4  ; je 0x1c4
cmp byte [eax + 0x4a], 0
jne short loc_00000228  ; jne 0x228

loc_000001c4:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000001de  ; je 0x1de
push eax
push eax
push ref_000206e4  ; push 0x206e4
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000001de:  ; not directly referenced
test esi, esi
jne short loc_000001ea  ; jne 0x1ea
cmp ebx, 0x40670
je short loc_000001fc  ; je 0x1fc

loc_000001ea:  ; not directly referenced
push esi
push 0
push 1
push 0x2e7
call fcn_0001784b  ; call 0x1784b
add esp, 0x10

loc_000001fc:  ; not directly referenced
cmp ebx, 0x40670
je short loc_0000020c  ; je 0x20c
cmp ebx, 0x306d0
jne short loc_00000228  ; jne 0x228

loc_0000020c:  ; not directly referenced
push eax
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
pop edx
pop ecx
push 1
sub eax, 0xffffff80
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10

loc_00000228:  ; not directly referenced
lea esp, [ebp - 8]
xor eax, eax
pop ebx
pop esi
pop ebp
ret

fcn_00000231:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov ebx, dword [ebp + 8]
call fcn_0001c58d  ; call 0x1c58d
push edx
mov esi, eax
push 0
and esi, 0xffffffef
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
xor edx, edx
mov edi, eax
mov eax, dword [ebx + 1]
mov eax, dword [eax + 4]
push edx
or eax, 1
push eax
lea eax, [edi + 0x48]
push eax
call fcn_00017e64  ; call 0x17e64
mov eax, dword [ebx + 1]
add esp, 0xc
xor edx, edx
mov eax, dword [eax + 8]
push edx
or eax, 1
push eax
lea eax, [edi + 0x68]
add edi, 0x40
push eax
call fcn_00017e64  ; call 0x17e64
mov eax, dword [ebx + 1]
add esp, 0xc
xor edx, edx
mov eax, dword [eax + 0xc]
push edx
or eax, 1
push eax
push edi
call fcn_00017e64  ; call 0x17e64
mov ecx, dword [ebx + 1]
add esp, 0xc
xor edx, edx
mov eax, dword [ecx + 0x18]
push edx
or eax, 1
push eax
mov eax, dword [ecx + 4]
add eax, 0x5420
push eax
call fcn_00017e64  ; call 0x17e64
add esp, 0x10
cmp esi, 0x40660
jne short loc_000002e8  ; jne 0x2e8
mov ecx, dword [ebx + 1]
xor edx, edx
push eax
mov eax, dword [ecx + 0x22]
push edx
or eax, 1
push eax
mov eax, dword [ecx + 4]
add eax, 0x5408
push eax
call fcn_00017e64  ; call 0x17e64
add esp, 0x10

loc_000002e8:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000002f0:
push ebp
mov ebp, esp
sub esp, 0x10
mov eax, dword [ebp + 8]
push 1
mov eax, dword [eax + 1]
mov eax, dword [eax + 4]
add eax, 0x5f00
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10
leave
ret

fcn_00000311:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x20
mov ebx, dword [ebp + 0xc]
lea eax, [ebp - 0x20]
push eax
push 0x73
push 4
call fcn_0001971b  ; call 0x1971b
mov esi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00000371  ; je 0x371
test esi, esi
jns short loc_00000371  ; jns 0x371
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00000359  ; je 0x359
push eax
push esi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00000359:
push edi
push ref_00020664  ; push 0x20664
push 0x18b
push ref_00020678  ; push 0x20678
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00000371:
mov eax, dword [ebp - 0x20]
mov esi, ref_000294ac  ; mov esi, 0x294ac
mov ecx, 4
lea edi, [eax + 8]
add eax, 0x18
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
push edi
push edi
push 8
push eax
call fcn_00016f3b  ; call 0x16f3b
pop eax
mov eax, dword [ebp - 0x20]
pop edx
add eax, 0x20
push 8
push eax
call fcn_00016f3b  ; call 0x16f3b
mov eax, dword [ebp - 0x20]
pop ecx
pop esi
add eax, 0x29
push 0x21
push eax
call fcn_00016f3b  ; call 0x16f3b
mov eax, dword [ebp - 0x20]
add esp, 0x10
mov byte [eax + 0x28], 0
mov byte [eax + 0x71], 0
cmp byte [ebx], 1
jbe short loc_000003ce  ; jbe 0x3ce
mov edx, dword [ebx + 0xd]
mov dl, byte [edx + 0x49]
mov byte [eax + 0x4a], dl
jmp short loc_000003d2  ; jmp 0x3d2

loc_000003ce:
mov byte [eax + 0x4a], 0

loc_000003d2:
mov edx, dword [ebx + 5]
mov dl, byte [edx + 7]
mov byte [eax + 0x72], dl
lea eax, [ebp - 0x1c]
push eax
push 0
push 0
push ref_000291dc  ; push 0x291dc
call fcn_00019699  ; call 0x19699
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00000434  ; je 0x434
test ebx, ebx
jns short loc_00000434  ; jns 0x434
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000041c  ; je 0x41c
push esi
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000041c:
push ecx
push ref_00020664  ; push 0x20664
push 0x1a6
push ref_00020678  ; push 0x20678
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00000434:
mov eax, dword [ebp - 0x1c]
mov edx, dword [eax + 9]
cmp dword [edx + 4], 0
je short loc_00000469  ; je 0x469
mov ebx, dword [ebp - 0x20]
mov byte [ebx + 0x18], 1
mov edx, dword [eax + 1]
cmp byte [edx], 0
jns short loc_00000469  ; jns 0x469
push edx
push 0x14
mov eax, dword [eax + 9]
mov eax, dword [eax + 4]
push dword [eax + 0x1c]
push dword [eax + 0x18]
call fcn_0001718b  ; call 0x1718b
add esp, 0x10
mov byte [ebx + 0x19], al

loc_00000469:
mov eax, dword [ebp - 0x20]
mov edx, dword [ebp - 0x1c]
mov byte [eax + 0x20], 2
mov ecx, dword [edx + 1]
test byte [ecx], 0x10
je short loc_00000489  ; je 0x489
mov edx, dword [edx + 9]
mov edx, dword [edx]
mov dl, byte [edx + 0x301]
mov byte [eax + 0x21], dl

loc_00000489:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000004a3  ; je 0x4a3
push eax
push eax
push ref_000206fe  ; push 0x206fe
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000004a3:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000004ad:
push ebp
mov ebp, esp
push ebx
push edx
mov ebx, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000004cf  ; je 0x4cf
push eax
push eax
push ref_00020715  ; push 0x20715
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000004cf:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000004ea  ; je 0x4ea
push eax
push 2
push ref_00020759  ; push 0x20759
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000004ea:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00000505  ; je 0x505
push eax
push 4
push ref_0002079d  ; push 0x2079d
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00000505:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00000520  ; je 0x520
push eax
push 0
push ref_000207e1  ; push 0x207e1
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00000520:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000053b  ; je 0x53b
push eax
push 0
push ref_00020825  ; push 0x20825
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000053b:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00000555  ; je 0x555
push eax
push eax
push ref_00020869  ; push 0x20869
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00000555:
push eax
push eax
movzx eax, byte [ebx]
push eax
mov eax, dword [ebx + 1]
mov eax, dword [eax + 8]
add eax, 0x71c
push eax
call fcn_00017dcb  ; call 0x17dcb
pop edx
pop ecx
push 0x2040000
mov eax, dword [ebx + 1]
mov eax, dword [eax + 8]
add eax, 0x720
push eax
call fcn_00017dcb  ; call 0x17dcb
xor eax, eax
mov ebx, dword [ebp - 4]
leave
ret

fcn_0000058b:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov esi, dword [ebp + 0xc]
call fcn_0001c58d  ; call 0x1c58d
mov edi, eax
lea eax, [ebp - 0x24]
push eax
push 0
push 0
push ref_0002925c  ; push 0x2925c
call fcn_00019699  ; call 0x19699
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_000005f7  ; je 0x5f7
test ebx, ebx
jns short loc_000005f7  ; jns 0x5f7
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000005df  ; je 0x5df
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000005df:
push ebx
push ref_00020664  ; push 0x20664
push 0x8e
push ref_00020678  ; push 0x20678
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000005f7:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00000611  ; je 0x611
push ecx
push ecx
push ref_000208ad  ; push 0x208ad
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00000611:
sub esp, 0xc
push dword [ebp - 0x24]
call fcn_00000231  ; call 0x231
pop eax
pop edx
push dword [ebp - 0x24]
push esi
call fcn_00000311  ; call 0x311
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_00000644  ; je 0x644
push eax
push eax
push ref_000208c2  ; push 0x208c2
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00000644:
sub esp, 0xc
push dword [ebp - 0x24]
call fcn_000004ad  ; call 0x4ad
add esp, 0x10
cmp edi, 0x40660
sete bl
cmp edi, 0x306c0
sete al
or bl, al
je short loc_00000684  ; je 0x684

loc_00000668:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000006b0  ; je 0x6b0
push ecx
push ecx
push ref_000208e2  ; push 0x208e2
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp short loc_000006b0  ; jmp 0x6b0

loc_00000684:
cmp edi, 0x40670
jne loc_00000714  ; jne 0x714
push eax
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 2
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 0x10
jne short loc_00000668  ; jne 0x668
jmp short loc_000006e6  ; jmp 0x6e6

loc_000006b0:
push edx
push edx
push dword [ebp - 0x24]
push esi
call fcn_000020ad  ; call 0x20ad
add esp, 0x10
test bl, bl
je short loc_000006de  ; je 0x6de

loc_000006c2:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00000706  ; je 0x706
push eax
push eax
push ref_000208f4  ; push 0x208f4
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp short loc_00000706  ; jmp 0x706

loc_000006de:
cmp edi, 0x40670
jne short loc_00000714  ; jne 0x714

loc_000006e6:
push eax
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 2
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 0x10
jne short loc_000006c2  ; jne 0x6c2
jmp short loc_00000714  ; jmp 0x714

loc_00000706:
push eax
push eax
push dword [ebp - 0x24]
push esi
call fcn_00004a9a  ; call 0x4a9a
add esp, 0x10

loc_00000714:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000072e  ; je 0x72e
push eax
push eax
push ref_0002090a  ; push 0x2090a
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000072e:
push eax
push eax
push dword [ebp - 0x24]
push esi
call fcn_000015f5  ; call 0x15f5
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_00000756  ; je 0x756
push eax
push eax
push ref_00020921  ; push 0x20921
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00000756:
push edi
push edi
push dword [ebp - 0x24]
push esi
call fcn_000009ac  ; call 0x9ac
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_0000077e  ; je 0x77e
push ebx
push ebx
push ref_00020949  ; push 0x20949
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000077e:
push ecx
push ecx
push dword [ebp - 0x24]
push esi
call fcn_00001ddb  ; call 0x1ddb
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_000007a6  ; je 0x7a6
push edx
push edx
push ref_00020969  ; push 0x20969
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000007a6:
sub esp, 0xc
push dword [ebp - 0x24]
call fcn_000002f0  ; call 0x2f0
mov dword [esp], ref_00026e34  ; mov dword [esp], 0x26e34
call fcn_000196bb  ; call 0x196bb
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00000804  ; je 0x804
test ebx, ebx
jns short loc_00000804  ; jns 0x804
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000007ec  ; je 0x7ec
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000007ec:
push eax
push ref_00020664  ; push 0x20664
push 0xde
push ref_00020678  ; push 0x20678
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00000804:
sub esp, 0xc
lea eax, [ebp - 0x20]
push eax
call fcn_000196d3  ; call 0x196d3
mov ebx, eax
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_00000831  ; je 0x831
push eax
push dword [ebp - 0x20]
push ref_00020986  ; push 0x20986
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00000831:
test ebx, ebx
jne short loc_000008a9  ; jne 0x8a9
cmp dword [ebp - 0x20], 0x11
jne short loc_000008a9  ; jne 0x8a9
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00000855  ; je 0x855
push eax
push eax
push ref_0002099a  ; push 0x2099a
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00000855:
sub esp, 0xc
push ref_00026e28  ; push 0x26e28
call fcn_000196bb  ; call 0x196bb
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je loc_00000949  ; je 0x949
test ebx, ebx
jns loc_00000949  ; jns 0x949
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00000899  ; je 0x899
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00000899:
push eax
push ref_00020664  ; push 0x20664
push 0xe8
jmp near loc_0000093c  ; jmp 0x93c

loc_000008a9:
lea eax, [ebp - 0x1c]
push eax
push 0
push 0
push ref_0002927c  ; push 0x2927c
mov dword [ebp - 0x1c], 0
call fcn_00019699  ; call 0x19699
mov eax, dword [ebp - 0x1c]
add esp, 0x10
test eax, eax
je short loc_00000949  ; je 0x949
test byte [eax + 1], 1
je short loc_00000949  ; je 0x949
call fcn_00016597  ; call 0x16597
dec al
jne short loc_00000949  ; jne 0x949
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000008f5  ; je 0x8f5
push edi
push edi
push ref_000209be  ; push 0x209be
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000008f5:
sub esp, 0xc
push ref_00026e28  ; push 0x26e28
call fcn_000196bb  ; call 0x196bb
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00000949  ; je 0x949
test ebx, ebx
jns short loc_00000949  ; jns 0x949
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00000931  ; je 0x931
push esi
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00000931:
push ecx
push ref_00020664  ; push 0x20664
push 0xf8

loc_0000093c:
push ref_00020678  ; push 0x20678
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00000949:
sub esp, 0xc
push ref_00026e40  ; push 0x26e40
call fcn_00019667  ; call 0x19667
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000099d  ; je 0x99d
test ebx, ebx
jns short loc_0000099d  ; jns 0x99d
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00000985  ; je 0x985
push edx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00000985:
push eax
push ref_00020664  ; push 0x20664
push 0x102
push ref_00020678  ; push 0x20678
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000099d:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000009a7:  ; not directly referenced
push ebp
mov ebp, esp
pop ebp
ret

fcn_000009ac:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x3c
mov ebx, dword [ebp + 0xc]
call fcn_0001c58d  ; call 0x1c58d
mov dword [ebp - 0x34], 0
mov esi, eax
mov eax, dword [ebx + 0x11]
cmp byte [eax + 0xb], 0
jne short loc_000009f7  ; jne 0x9f7
call fcn_000153e9  ; call 0x153e9
xor ebx, ebx
test al, al
je loc_00000ca8  ; je 0xca8
push ecx
push ecx
push ref_000209f3  ; push 0x209f3
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp near loc_00000ca8  ; jmp 0xca8

loc_000009f7:
push eax
push eax
push 7
lea eax, [ebp - 0x26]
push eax
call fcn_00016f3b  ; call 0x16f3b
pop eax
pop edx
lea eax, [ebp - 0x1f]
push 7
push eax
call fcn_00016f3b  ; call 0x16f3b
lea eax, [ebp - 0x30]
push eax
push 0
push 0
push ref_000290ec  ; push 0x290ec
call fcn_00019699  ; call 0x19699
add esp, 0x20
mov dword [ebp - 0x3c], eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00000a6c  ; je 0xa6c
cmp dword [ebp - 0x3c], 0
jns short loc_00000a6c  ; jns 0xa6c
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00000a57  ; je 0xa57
push eax
push dword [ebp - 0x3c]
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00000a57:
push edi
push ref_00020664  ; push 0x20664
push 0x54
push ref_00020a33  ; push 0x20a33
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00000a6c:
cmp esi, 0x40670
jne short loc_00000ad8  ; jne 0xad8
mov eax, dword [ebx + 0x11]
cmp byte [eax + 0x10], 0
je short loc_00000ad8  ; je 0xad8
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00000a9e  ; je 0xa9e
push esi
mov eax, dword [ebx + 0x11]
movzx eax, byte [eax + 0x10]
push eax
push ref_00020a61  ; push 0x20a61
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00000a9e:
push eax
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0x48
mov dword [esp], eax
call fcn_00017e14  ; call 0x17e14
pop edx
mov edx, dword [ebx + 0x11]
pop ecx
mov dl, byte [edx + 0x10]
and eax, 0xfffffffe
add eax, 0x5e08
and edx, 0x7f
or edx, 0x80000000
push edx
push eax
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10

loc_00000ad8:
mov dword [ebp - 0x40], 1

loc_00000adf:
mov ecx, dword [ebp - 0x40]
cmp cl, 1
mov eax, ecx
mov byte [ebp - 0x41], cl
sete cl
sub eax, 3
cmp al, 2
mov byte [ebp - 0x43], cl
setbe byte [ebp - 0x42]
jbe short loc_00000b03  ; jbe 0xb03
test cl, cl
je loc_00000c98  ; je 0xc98

loc_00000b03:
push ecx
push ecx
push 5
lea eax, [ebp - 0x2b]
push eax
call fcn_00016f3b  ; call 0x16f3b
mov al, byte [ebp - 0x41]
pop esi
pop edi
mov byte [ebp - 0x27], al
lea eax, [ebp - 0x34]
push eax
lea eax, [ebp - 0x2b]
push eax
call fcn_0001d2de  ; call 0x1d2de
add esp, 0x10
cmp dword [ebp - 0x34], 0
mov dword [ebp - 0x3c], eax
jne loc_00000c77  ; jne 0xc77
cmp byte [ebp - 0x2a], 0
jne short loc_00000b4b  ; jne 0xb4b
cmp byte [ebp - 0x29], 0
jne short loc_00000b4b  ; jne 0xb4b
cmp byte [ebp - 0x28], 0
je loc_00000c61  ; je 0xc61

loc_00000b4b:
push edi
push edi
push 7
lea edi, [ebp - 0x26]
push edi
call fcn_00016f3b  ; call 0x16f3b
mov al, byte [ebp - 0x41]
mov byte [ebp - 0x20], al
pop eax
pop edx
lea eax, [ebp - 0x34]
push eax
push edi
call fcn_0001d131  ; call 0x1d131
add esp, 0x10
mov dword [ebp - 0x3c], eax
test eax, eax
jne loc_00000c98  ; jne 0xc98
cmp dword [ebp - 0x34], 0
jne loc_00000c98  ; jne 0xc98
push esi
push esi
push 7
lea esi, [ebp - 0x1f]
push esi
call fcn_00016f3b  ; call 0x16f3b
mov al, byte [ebp - 0x41]
add esp, 0x10
cmp byte [ebp - 0x43], 0
mov byte [ebp - 0x19], al
je short loc_00000c08  ; je 0xc08
mov eax, dword [ebx + 0x11]
mov dx, word [eax + 6]
mov byte [ebp - 0x1f], dl
mov dl, byte [eax + 0xa]
mov byte [ebp - 0x1e], dl
test dl, dl
jne short loc_00000bb8  ; jne 0xbb8
mov dx, word [eax + 4]
jmp short loc_00000bbc  ; jmp 0xbbc

loc_00000bb8:
mov dx, word [eax + 2]

loc_00000bbc:
mov word [ebp - 0x1d], dx
mov ax, word [eax]
push ecx
push 7
push edi
push esi
mov word [ebp - 0x1b], ax
call fcn_00016fa3  ; call 0x16fa3
add esp, 0x10
test al, al

loc_00000bd6:
je loc_00000c98  ; je 0xc98
mov eax, dword [ebp - 0x30]
sub esp, 0xc
push 0x3c
call dword [eax]  ; ucall
add esp, 0xc
mov ecx, 7
lea eax, [ebp - 0x34]
push eax
push edx
push edx
mov edi, esp
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
call fcn_0001d1b8  ; call 0x1d1b8
add esp, 0x10
mov esi, eax
test eax, eax
je short loc_00000c44  ; je 0xc44
jmp short loc_00000c4a  ; jmp 0xc4a

loc_00000c08:
cmp byte [ebp - 0x42], 0
je loc_00000c98  ; je 0xc98
movzx edi, byte [ebp - 0x41]
mov eax, edi
cmp al, 4
mov eax, dword [ebx + 0x11]
je short loc_00000c2c  ; je 0xc2c
mov ecx, edi
cmp cl, 5
je short loc_00000c32  ; je 0xc32
mov ax, word [eax + 8]
jmp short loc_00000c36  ; jmp 0xc36

loc_00000c2c:
mov ax, word [eax + 0xc]
jmp short loc_00000c36  ; jmp 0xc36

loc_00000c32:
mov ax, word [eax + 0xe]

loc_00000c36:
mov word [ebp - 0x1b], ax
mov ax, word [ebp - 0x22]
cmp word [ebp - 0x1b], ax
jmp short loc_00000bd6  ; jmp 0xbd6

loc_00000c44:
cmp dword [ebp - 0x34], 0
je short loc_00000c98  ; je 0xc98

loc_00000c4a:
call fcn_000153e9  ; call 0x153e9
mov dword [ebp - 0x3c], esi
test al, al
je short loc_00000c98  ; je 0xc98
push dword [ebp - 0x34]
push esi
push ref_00020a87  ; push 0x20a87
jmp short loc_00000c8b  ; jmp 0xc8b

loc_00000c61:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00000c98  ; je 0xc98
push eax
push dword [ebp - 0x40]
push ref_00020ad0  ; push 0x20ad0
push 0x40
jmp short loc_00000c90  ; jmp 0xc90

loc_00000c77:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00000c98  ; je 0xc98
push dword [ebp - 0x40]
push dword [ebp - 0x34]
push ref_00020af9  ; push 0x20af9

loc_00000c8b:
push 0x80000000

loc_00000c90:
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00000c98:
inc dword [ebp - 0x40]
cmp dword [ebp - 0x40], 6
jne loc_00000adf  ; jne 0xadf
mov ebx, dword [ebp - 0x3c]

loc_00000ca8:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00000cb2:
push ebp
mov ebp, esp
push edi
push esi
mov esi, 0x10
push ebx
sub esp, 0x20
mov eax, dword [ebp + 0x14]
mov dword [eax], 0
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00016bd6  ; call 0x16bd6
mov dword [ebp - 0x1c], eax
add eax, 0xb
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
cmp al, 6
je short loc_00000d67  ; je 0xd67

loc_00000cec:
mov eax, dword [ebp - 0x1c]
sub esp, 0xc
lea ebx, [esi + eax]
push ebx
call fcn_00017d8a  ; call 0x17d8a
mov edi, eax
pop eax
pop edx
push 0
push ebx
call fcn_00018a7a  ; call 0x18a7a
pop ecx
pop eax
push 0xffffffffffffffff
push ebx
call fcn_00018a50  ; call 0x18a50
mov dword [esp], ebx
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
cmp edi, eax
je short loc_00000d28  ; je 0xd28
test edi, 1
je short loc_00000d36  ; je 0xd36

loc_00000d28:
push ecx
push ecx
push edi
push ebx
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10
jmp short loc_00000d5f  ; jmp 0xd5f

loc_00000d36:
sub esp, 0xc
push ebx
call fcn_00017d8a  ; call 0x17d8a
mov edx, dword [ebp + 0x14]
and eax, 0xfffffff0
sub dword [edx], eax
pop eax
pop edx
push edi
and edi, 6
push ebx
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10
cmp edi, 4
lea eax, [esi + 4]
cmove esi, eax

loc_00000d5f:
add esi, 4
cmp esi, 0x24
jbe short loc_00000cec  ; jbe 0xcec

loc_00000d67:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00000d6f:
push ebp
mov ebp, esp
push edi
xor edi, edi
push esi
xor esi, esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 8]
mov dword [ebp - 0x24], eax
mov byte [ebp - 0x19], al
movzx eax, al
mov dword [ebp - 0x20], eax

loc_00000d8b:
push eax
push 0
push esi
push dword [ebp - 0x20]
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], eax
mov ebx, eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
je loc_00000e2d  ; je 0xe2d
sub esp, 0xc
lea eax, [ebx + 0xa]
push eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
cmp ax, 0x604
jne short loc_00000e2d  ; jne 0xe2d
mov al, byte [ebp - 0x19]
inc eax
mov byte [ebp - 0x19], al
push eax
push eax
push dword [ebp - 0x20]
lea eax, [ebx + 0x18]
push eax
call fcn_00017ce1  ; call 0x17ce1
movzx edi, byte [ebp - 0x19]
lea eax, [ebx + 0x19]
pop edx
add ebx, 0x1a
pop ecx
push edi
push eax
call fcn_00017ce1  ; call 0x17ce1
pop eax
pop edx
push 0xff
push ebx
call fcn_00017ce1  ; call 0x17ce1
add esp, 0xc
push 0
push 0
push edi
call fcn_00016bd6  ; call 0x16bd6
pop ecx
pop edx
push 0
push eax
call fcn_00017d40  ; call 0x17d40
mov dword [esp], edi
call fcn_00000d6f  ; call 0xd6f
pop ecx
mov edi, eax
pop eax
mov eax, edi
movzx eax, al
push eax
push ebx
call fcn_00017ce1  ; call 0x17ce1
mov eax, edi
add esp, 0x10
mov byte [ebp - 0x19], al

loc_00000e2d:
inc esi
cmp esi, 0x20
jne loc_00000d8b  ; jne 0xd8b
mov eax, edi
test al, al
mov al, byte [ebp - 0x24]
cmovne eax, edi
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00000e49:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x2c
lea eax, [ebp - 0x1c]
push eax
push 0
push 0
push ref_0002901c  ; push 0x2901c
mov dword [ebp - 0x20], 0
call fcn_00019699  ; call 0x19699
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00000eb2  ; je 0xeb2
test ebx, ebx
jns short loc_00000eb2  ; jns 0xeb2
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00000e9a  ; je 0xe9a
push esi
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00000e9a:
push ebx
push ref_00020664  ; push 0x20664
push 0x2d0
push ref_00020b42  ; push 0x20b42
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00000eb2:
mov byte [ebp - 0x29], 0
mov esi, 0x10100
xor ebx, ebx

loc_00000ebd:
call fcn_0001c0fb  ; call 0x1c0fb
cmp bl, al
jae loc_00000f52  ; jae 0xf52
movzx eax, bl
push ecx
push eax
push 0x1c
push 0
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], eax
mov edi, eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
je short loc_00000f4c  ; je 0xf4c
push eax
push eax
push esi
lea eax, [edi + 0x18]
push eax
call fcn_00017dcb  ; call 0x17dcb
lea eax, [edi + 0x19]
add edi, 0x1a
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
pop edx
pop ecx
push 0xff
push edi
mov esi, eax
call fcn_00017ce1  ; call 0x17ce1
add esp, 0xc
mov eax, esi
push 0
movzx esi, al
push 0
push esi
call fcn_00016bd6  ; call 0x16bd6
pop edx
pop ecx
push 0
push eax
call fcn_00017d40  ; call 0x17d40
mov dword [esp], esi
call fcn_00000d6f  ; call 0xd6f
movzx esi, al
mov byte [ebp - 0x29], al
pop eax
pop edx
push esi
inc esi
push edi
call fcn_00017ce1  ; call 0x17ce1
shl esi, 8
add esp, 0x10

loc_00000f4c:
inc ebx
jmp near loc_00000ebd  ; jmp 0xebd

loc_00000f52:
mov byte [ebp - 0x2b], 0
mov byte [ebp - 0x2d], 1

loc_00000f5a:
mov al, byte [ebp - 0x29]
mov dl, byte [ebp - 0x2d]
cmp dl, al
ja loc_00001071  ; ja 0x1071
xor ebx, ebx
movzx esi, dl

loc_00000f6d:
push eax
push 0
push ebx
push esi
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], eax
mov edi, eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
je loc_00001035  ; je 0x1035
sub esp, 0xc
add edi, 0xe
push edi
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
mov byte [ebp - 0x2c], 0
mov byte [ebp - 0x2a], al
sar byte [ebp - 0x2a], 7
and byte [ebp - 0x2a], 7

loc_00000faa:
movzx edi, byte [ebp - 0x2c]
push eax
push edi
push ebx
push esi
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
je short loc_00001026  ; je 0x1026
lea eax, [ebp - 0x20]
push eax
push edi
push ebx
push esi
call fcn_00000cb2  ; call 0xcb2
mov ecx, dword [ebp + 0xc]
add esp, 0xc
mov eax, dword [ebp - 0x20]
add dword [ecx], eax
push edi
push ebx
push esi
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xa
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
cmp ax, 0x300
jne short loc_00001026  ; jne 0x1026
cmp byte [ebp - 0x2b], 1
je short loc_00001022  ; je 0x1022
mov eax, dword [ebp + 0x10]
mov dword [eax], 2
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00001022  ; je 0x1022
push eax
push eax
push ref_00020b74  ; push 0x20b74
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00001022:
mov byte [ebp - 0x2b], 1

loc_00001026:
inc byte [ebp - 0x2c]
mov al, byte [ebp - 0x2a]
cmp byte [ebp - 0x2c], al
jbe loc_00000faa  ; jbe 0xfaa

loc_00001035:
inc ebx
cmp ebx, 0x20
jne loc_00000f6d  ; jne 0xf6d
inc byte [ebp - 0x2d]
jmp near loc_00000f5a  ; jmp 0xf5a

loc_00001047:
movzx edi, byte [ebp - 0x29]
xor ebx, ebx

loc_0000104d:
push eax
push 0
push ebx
push edi
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], eax
mov esi, eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
jne short loc_0000107b  ; jne 0x107b

loc_00001068:
inc ebx
cmp ebx, 0x20
jne short loc_0000104d  ; jne 0x104d
dec byte [ebp - 0x29]

loc_00001071:
cmp byte [ebp - 0x29], 0
jne short loc_00001047  ; jne 0x1047
xor ebx, ebx
jmp short loc_000010a2  ; jmp 0x10a2

loc_0000107b:
sub esp, 0xc
lea eax, [esi + 0xa]
push eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
cmp ax, 0x604
jne short loc_00001068  ; jne 0x1068
push eax
add esi, 0x18
push eax
push 0
push esi
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10
jmp short loc_00001068  ; jmp 0x1068

loc_000010a2:
call fcn_0001c0fb  ; call 0x1c0fb
cmp bl, al
jae short loc_000010cc  ; jae 0x10cc
push eax
movzx eax, bl
push eax
inc ebx
push 0x1c
push 0
call fcn_00016bd6  ; call 0x16bd6
pop edx
pop ecx
push 0
add eax, 0x18
push eax
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10
jmp short loc_000010a2  ; jmp 0x10a2

loc_000010cc:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000010d4:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x30
movzx eax, byte [ebp + 0x10]
movzx edx, byte [ebp + 0xc]
movzx ecx, byte [ebp + 8]
push eax
push edx
push ecx
mov dword [ebp - 0x38], ecx
mov dword [ebp - 0x34], edx
mov dword [ebp - 0x30], eax
call fcn_00016bd6  ; call 0x16bd6
mov ebx, eax
pop eax
pop edx
lea eax, [ebx + 0x19]
add ebx, 0x1a
push 1
push eax
call fcn_00017ce1  ; call 0x17ce1
pop ecx
pop esi
lea esi, [ebp - 0x1c]
push 0xff
push ebx
call fcn_00017ce1  ; call 0x17ce1
add esp, 0xc
push 0
push 0
push 1
call fcn_00016bd6  ; call 0x16bd6
pop edi
pop edx
push 0
push eax
call fcn_00017d40  ; call 0x17d40
mov dword [esp], 1
call fcn_00000d6f  ; call 0xd6f
add esp, 0x10
mov byte [ebp - 0x2b], 0
mov byte [ebp - 0x2a], 1
mov byte [ebp - 0x29], al

loc_0000114e:
mov al, byte [ebp - 0x29]
mov dl, byte [ebp - 0x2a]
cmp dl, al
ja loc_000011e3  ; ja 0x11e3
xor ebx, ebx
movzx edi, dl

loc_00001161:
push eax
push 0
push ebx
push edi
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
je short loc_000011b4  ; je 0x11b4
push esi
push 0
push ebx
push edi
call fcn_00000cb2  ; call 0xcb2
mov ecx, dword [ebp + 0x14]
add esp, 0xc
mov eax, dword [ebp - 0x1c]
add dword [ecx], eax
push 0
push ebx
push edi
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xa
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
cmp ax, 0x300
je short loc_000011b0  ; je 0x11b0
dec ax
jne short loc_000011b4  ; jne 0x11b4

loc_000011b0:
mov byte [ebp - 0x2b], 1

loc_000011b4:
inc ebx
cmp ebx, 0x20
jne short loc_00001161  ; jne 0x1161
inc byte [ebp - 0x2a]
jmp short loc_0000114e  ; jmp 0x114e

loc_000011bf:
push eax
push 0
push ebx
push edi
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], eax
mov esi, eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
jne short loc_000011f1  ; jne 0x11f1

loc_000011da:
inc ebx
cmp ebx, 0x20
jne short loc_000011bf  ; jne 0x11bf
dec byte [ebp - 0x29]

loc_000011e3:
mov al, byte [ebp - 0x29]
test al, al
je short loc_00001218  ; je 0x1218
xor ebx, ebx
movzx edi, al
jmp short loc_000011bf  ; jmp 0x11bf

loc_000011f1:
sub esp, 0xc
lea eax, [esi + 0xa]
push eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
cmp ax, 0x604
jne short loc_000011da  ; jne 0x11da
push eax
add esi, 0x18
push eax
push 0
push esi
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10
jmp short loc_000011da  ; jmp 0x11da

loc_00001218:
push eax
push dword [ebp - 0x30]
push dword [ebp - 0x34]
push dword [ebp - 0x38]
call fcn_00016bd6  ; call 0x16bd6
pop edx
pop ecx
push 0
add eax, 0x18
push eax
call fcn_00017dcb  ; call 0x17dcb
mov al, byte [ebp - 0x2b]
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000123f:
push ebp
mov ecx, 0xf
mov ebp, esp
push edi
push esi
mov esi, ref_00020310  ; mov esi, 0x20310
push ebx
sub esp, 0x50
mov al, byte [ebp + 0xc]
lea edi, [ebp - 0x27]
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
lea edi, [ebp - 0x27]
push 0
push 0
push 1
mov byte [ebp - 0x4f], al
mov al, byte [ebp + 0x14]
mov dword [ebp - 0x2c], 0
mov byte [ebp - 0x50], al
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 0
push 0
push 0
mov esi, eax
mov dword [ebp - 0x48], eax
call fcn_00016bd6  ; call 0x16bd6
add eax, 0x54
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0xc
push 0
push 2
push 0
mov word [ebp - 0x3c], ax
and word [ebp - 0x3c], 0xe
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
mov byte [ebp - 0x39], 0xff
inc ax
mov eax, esi
setne byte [ebp - 0x4e]
add eax, 0xe
mov dword [ebp - 0x54], eax

loc_000012ca:
mov al, byte [edi]
mov bx, word [edi + 3]
mov cl, al
mov byte [ebp - 0x4c], al
mov al, byte [edi + 1]
mov dl, al
mov byte [ebp - 0x4d], al
movzx eax, byte [edi + 2]
push esi
push eax
mov byte [ebp - 0x3a], al
movzx eax, dl
push eax
movzx eax, cl
push eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0x10
mov esi, eax
test word [ebp - 0x3c], bx
je loc_000014c6  ; je 0x14c6
sub esp, 0xc
lea eax, [eax + 0xba]
push eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 0x40
je loc_000014c6  ; je 0x14c6
push edx
push 0x10100
push 0xff0000ff
lea eax, [esi + 0x18]
push eax
mov dword [ebp - 0x40], eax
call fcn_00018aa4  ; call 0x18aa4
pop ecx
pop ebx
mov ebx, dword [ebp - 0x48]
push 0
push ebx
call fcn_00017d40  ; call 0x17d40
mov dword [esp], ebx
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
je loc_000014c6  ; je 0x14c6
sub esp, 0xc
push dword [ebp - 0x54]
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
mov byte [ebp - 0x44], 0
mov bl, al
sar bl, 7
and ebx, 7

loc_0000136d:
movzx edx, byte [ebp - 0x44]
push eax
push edx
push 0
push 1
mov dword [ebp - 0x58], edx
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
je short loc_000013aa  ; je 0x13aa
mov edx, dword [ebp - 0x58]
lea eax, [ebp - 0x2c]
push eax
push edx
push 0
push 1
call fcn_00000cb2  ; call 0xcb2
mov ecx, dword [ebp + 0x18]
add esp, 0x10
mov eax, dword [ebp - 0x2c]
add dword [ecx], eax

loc_000013aa:
inc byte [ebp - 0x44]
cmp byte [ebp - 0x44], bl
jbe short loc_0000136d  ; jbe 0x136d
mov eax, dword [ebp - 0x48]
sub esp, 0xc
add eax, 0xb
push eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
cmp al, 3
jne short loc_00001442  ; jne 0x1442
cmp byte [ebp - 0x4f], 0
jne short loc_000013ea  ; jne 0x13ea
cmp byte [ebp - 0x4e], 0
je short loc_000013de  ; je 0x13de
cmp byte [ebp - 0x50], 0
je loc_000014b4  ; je 0x14b4

loc_000013de:
mov eax, dword [ebp + 0x10]
cmp dword [eax], 2
je loc_000014b4  ; je 0x14b4

loc_000013ea:
mov eax, dword [ebp + 0x10]
cmp dword [eax], 1
je loc_0000153f  ; je 0x153f
push ebx
add esi, 0x3e
push ebx
push 0x18
push esi
call fcn_00018863  ; call 0x18863
mov eax, dword [ebp + 0x10]
mov dword [eax], 1
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je loc_00001545  ; je 0x1545
movzx edx, byte [ebp - 0x3a]
movzx eax, byte [ebp - 0x4d]
movzx ebx, byte [ebp - 0x4c]
push ecx
push edx
push eax
push ebx
push edx
push eax
push ref_00020b95  ; push 0x20b95
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20
jmp near loc_00001545  ; jmp 0x1545

loc_00001442:
cmp al, 6
jne short loc_000014b4  ; jne 0x14b4
push dword [ebp + 0x18]
movzx edx, byte [ebp - 0x3a]
movzx ebx, byte [ebp - 0x4d]
movzx eax, byte [ebp - 0x4c]
push edx
push ebx
push eax
mov dword [ebp - 0x44], eax
mov dword [ebp - 0x4c], edx
call fcn_000010d4  ; call 0x10d4
add esp, 0x10
dec al
jne short loc_000014b4  ; jne 0x14b4
mov eax, dword [ebp + 0x10]
cmp dword [eax], 1
je short loc_000014b4  ; je 0x14b4
push eax
add esi, 0x3e
push eax
push 0x18
push esi
call fcn_00018863  ; call 0x18863
mov eax, dword [ebp + 0x10]
mov dword [eax], 1
call fcn_000153e9  ; call 0x153e9
mov cl, byte [ebp - 0x3a]
add esp, 0x10
mov edx, dword [ebp - 0x4c]
mov byte [ebp - 0x39], cl
test al, al
je short loc_000014b4  ; je 0x14b4
push esi
push edx
push ebx
push dword [ebp - 0x44]
push edx
push ebx
push ref_00020b95  ; push 0x20b95
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_000014b4:
push ecx
push ecx
push 0xff0000ff
push dword [ebp - 0x40]
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10

loc_000014c6:
add edi, 5
lea eax, [ebp - 0x18]
cmp edi, eax
jne loc_000012ca  ; jne 0x12ca
cmp byte [ebp - 0x39], 0xff
je short loc_00001550  ; je 0x1550
lea ebx, [ebp - 0x27]
mov byte [ebp - 0x3a], 0

loc_000014e1:
mov al, byte [ebp - 0x3a]
cmp byte [ebp - 0x39], al
je short loc_00001531  ; je 0x1531
push edx
movzx esi, byte [ebx + 2]
push esi
movzx edi, byte [ebx + 1]
push edi
movzx ecx, byte [ebx]
push ecx
mov dword [ebp - 0x40], ecx
call fcn_00016bd6  ; call 0x16bd6
pop ecx
pop edx
push 4
add eax, 0x3e
push eax
call fcn_00018863  ; call 0x18863
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
mov ecx, dword [ebp - 0x40]
test al, al
je short loc_00001531  ; je 0x1531
push eax
push esi
push edi
push ecx
push esi
push edi
push ref_00020bc6  ; push 0x20bc6
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_00001531:
inc byte [ebp - 0x3a]
add ebx, 5
cmp byte [ebp - 0x3a], 3
jne short loc_000014e1  ; jne 0x14e1
jmp short loc_00001550  ; jmp 0x1550

loc_0000153f:
mov al, byte [ebp - 0x39]
mov byte [ebp - 0x3a], al

loc_00001545:
mov al, byte [ebp - 0x3a]
mov byte [ebp - 0x39], al
jmp near loc_000014b4  ; jmp 0x14b4

loc_00001550:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00001558:
push ebp
mov ebp, esp
push edi
push esi
push ebx
xor ebx, ebx
sub esp, 0x28
mov eax, dword [ebp + 8]
mov edi, dword [ebp + 0x18]
add edi, dword [ebp + 0x10]
mov esi, dword [ebp + 0xc]
mov dword [ebp - 0x1c], eax
mov eax, dword [ebp + 0x1c]
push edi
mov dword [ebp - 0x20], eax
mov eax, dword [ebp + 0x20]
mov dword [ebp - 0x24], eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
mov ecx, eax

loc_00001589:
and ecx, dword [ebp - 0x20]
cmp ecx, dword [ebp - 0x24]
je short loc_000015bc  ; je 0x15bc
cmp bx, 0xbb8
je short loc_000015bc  ; je 0x15bc
sub esp, 0xc
inc ebx
push edi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0xc
push 0x3e8
push esi
push dword [ebp - 0x1c]
mov dword [ebp - 0x28], eax
call dword [esi + 4]  ; ucall
add esp, 0x10
mov ecx, dword [ebp - 0x28]
jmp short loc_00001589  ; jmp 0x1589

loc_000015bc:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000015ed  ; je 0x15ed
cmp bx, 0xbb8
jne short loc_000015ed  ; jne 0x15ed
mov dword [ebp + 0x10], ref_00020bee  ; mov dword [ebp + 0x10], 0x20bee
mov dword [ebp + 0xc], 0x41b
mov dword [ebp + 8], ref_00020b42  ; mov dword [ebp + 8], 0x20b42
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_000153fc  ; jmp 0x153fc

loc_000015ed:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000015f5:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x50
mov edi, dword [ebp + 0xc]
push 0
push 0
push 0
mov dword [ebp - 0x30], 0
mov dword [ebp - 0x2c], 0
mov dword [ebp - 0x28], 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 0
push 2
push 0
mov ebx, eax
mov dword [ebp - 0x4c], eax
call fcn_00016bd6  ; call 0x16bd6
mov dword [ebp - 0x44], eax
mov eax, ebx
add eax, 0x48
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov dword [ebp - 0x54], eax
call fcn_0001c58d  ; call 0x1c58d
mov dword [ebp - 0x3c], eax
lea eax, [ebp - 0x1c]
mov dword [esp], eax
call fcn_000196d3  ; call 0x196d3
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000169e  ; je 0x169e
test ebx, ebx
jns short loc_0000169e  ; jns 0x169e
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00001689  ; je 0x1689
push edx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00001689:
push eax
push ref_00020664  ; push 0x20664
push 0x55
push ref_00020b42  ; push 0x20b42
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000169e:
lea eax, [ebp - 0x20]
push eax
push 0
push 0
push ref_0002912c  ; push 0x2912c
call fcn_00019699  ; call 0x19699
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_000016f4  ; je 0x16f4
test ebx, ebx
jns short loc_000016f4  ; jns 0x16f4
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000016df  ; je 0x16df
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000016df:
push eax
push ref_00020664  ; push 0x20664
push 0x60
push ref_00020b42  ; push 0x20b42
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000016f4:
mov eax, dword [ebp - 0x4c]
lea ebx, [eax + 0x50]
push eax
push eax
push 2
push ebx
call fcn_00018863  ; call 0x18863
pop eax
push dword [ebp - 0x44]
mov dword [ebp - 0x34], 0
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
cmp byte [edi], 0x10
mov word [ebp - 0x40], ax
jbe short loc_00001729  ; jbe 0x1729
mov eax, dword [edi + 1]
cmp byte [eax + 0x33], 0
jne short loc_0000175c  ; jne 0x175c

loc_00001729:
lea esi, [ebp - 0x34]
push eax
push esi
lea edx, [ebp - 0x30]
push edx
push dword [ebp + 8]
call fcn_00000e49  ; call 0xe49
lea edx, [ebp - 0x2c]
mov dword [esp], edx
mov edx, dword [edi + 5]
movzx edx, byte [edx + 6]
push edx
push esi
mov eax, dword [edi + 0xd]
movzx eax, byte [eax + 4]
push eax
push dword [ebp + 8]
call fcn_0000123f  ; call 0x123f
add esp, 0x20

loc_0000175c:
mov eax, dword [edi + 5]
mov eax, dword [eax + 8]
test eax, eax
jne short loc_000017aa  ; jne 0x17aa
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00001780  ; je 0x1780
push esi
push esi
push ref_00020c03  ; push 0x20c03
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00001780:
call fcn_000153f0  ; call 0x153f0
test al, al
je loc_00001cc0  ; je 0x1cc0
push ebx
push ref_00020c4e  ; push 0x20c4e
push 0x83
push ref_00020b42  ; push 0x20b42
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
jmp near loc_00001cc0  ; jmp 0x1cc0

loc_000017aa:
mov edx, dword [ebp - 0x3c]
cmp edx, 0x40650
sete cl
cmp edx, 0x306c0
sete dl
or dl, cl
mov byte [ebp - 0x47], cl
mov byte [ebp - 0x45], dl
jne short loc_000017da  ; jne 0x17da
mov edx, eax
and edx, 0xff000000
cmp dword [ebp - 0x3c], 0x40660
jne short loc_000017e1  ; jne 0x17e1

loc_000017da:
and eax, 0xffc00000
mov edx, eax

loc_000017e1:
mov eax, dword [ebp - 0x44]
cmp word [ebp - 0x40], 0xffff
setne byte [ebp - 0x46]
add eax, 0x10
mov esi, eax
mov dword [ebp - 0x58], eax
push eax
push eax
push edx
push esi
call fcn_00017dcb  ; call 0x17dcb
mov dword [esp], esi
call fcn_00017d8a  ; call 0x17d8a
pop edx
pop ecx
push 6
mov dword [ebp - 0x40], eax
mov eax, dword [ebp - 0x44]
and dword [ebp - 0x40], 0xfffffff0
add eax, 4
push eax
mov dword [ebp - 0x50], eax
call fcn_00018863  ; call 0x18863
add esp, 0x10
cmp byte [ebp - 0x46], 0
je loc_00001a8c  ; je 0x1a8c
cmp dword [ebp - 0x34], 0
mov eax, dword [edi + 5]
je short loc_0000183c  ; je 0x183c
cmp byte [eax + 6], 0
jne short loc_00001842  ; jne 0x1842

loc_0000183c:
cmp byte [eax + 5], 0
jne short loc_0000184c  ; jne 0x184c

loc_00001842:
cmp byte [eax + 5], 1
jne loc_00001a8c  ; jne 0x1a8c

loc_0000184c:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00001866  ; je 0x1866
push eax
push eax
push ref_00020c5c  ; push 0x20c5c
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00001866:
push eax
push eax
mov eax, dword [ebp - 0x20]
push 1
push dword [eax + 4]
call fcn_0001c50d  ; call 0x1c50d
mov esi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_000018bc  ; je 0x18bc
test esi, esi
jns short loc_000018bc  ; jns 0x18bc
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000018a4  ; je 0x18a4
push eax
push esi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000018a4:
push ecx
push ref_00020664  ; push 0x20664
push 0xae
push ref_00020b42  ; push 0x20b42
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000018bc:
mov eax, dword [edi + 5]
cmp byte [ebp - 0x45], 0
movzx esi, byte [eax + 4]
jne short loc_000018d2  ; jne 0x18d2
cmp dword [ebp - 0x3c], 0x40660
jne short loc_000018f4  ; jne 0x18f4

loc_000018d2:
push eax
push eax
push 0xff07
push ebx
call fcn_00018890  ; call 0x18890
pop eax
pop edx
lea eax, [esi*8]
movzx esi, al
push esi
push ebx
call fcn_0001866c  ; call 0x1866c
jmp short loc_00001913  ; jmp 0x1913

loc_000018f4:
push eax
push eax
push 0xff
push ebx
call fcn_00018890  ; call 0x18890
shl esi, 8
pop edx
and esi, 0x3f00
pop ecx
push esi
push ebx
call fcn_00018863  ; call 0x18863

loc_00001913:
mov eax, dword [edi + 5]
add esp, 0x10
cmp word [eax + 2], 0
mov eax, dword [ebp - 0x44]
lea esi, [eax + 0x62]
je short loc_00001995  ; je 0x1995
cmp byte [ebp - 0x45], 0
jne short loc_00001935  ; jne 0x1935
cmp dword [ebp - 0x3c], 0x40660
jne short loc_0000194b  ; jne 0x194b

loc_00001935:
push eax
push 0x200
push 0xfcff
push ebx
call fcn_000188bd  ; call 0x188bd
add esp, 0x10
jmp short loc_00001995  ; jmp 0x1995

loc_0000194b:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00001976  ; je 0x1976
mov eax, dword [edi + 5]
cmp word [eax + 2], 3
jbe short loc_00001976  ; jbe 0x1976
push eax
push ref_00020c6a  ; push 0x20c6a
push 0xd0
push ref_00020b42  ; push 0x20b42
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00001976:
push eax
mov eax, dword [edi + 5]
movzx eax, word [eax + 2]
shl eax, 6
movzx eax, al
push eax
push 0xff3f
push ebx
call fcn_000188bd  ; call 0x188bd
add esp, 0x10
jmp short loc_000019b8  ; jmp 0x19b8

loc_00001995:
cmp byte [ebp - 0x45], 0
jne short loc_000019a4  ; jne 0x19a4
cmp dword [ebp - 0x3c], 0x40660
jne short loc_000019b8  ; jne 0x19b8

loc_000019a4:
push eax
mov eax, dword [edi + 5]
mov al, byte [eax + 7]
add eax, eax
movzx eax, al
push eax
push 0xf9
jmp short loc_000019c6  ; jmp 0x19c6

loc_000019b8:
push eax
mov eax, dword [edi + 5]
movzx eax, byte [eax + 7]
push eax
push 0xe0

loc_000019c6:
push esi
call fcn_000186c6  ; call 0x186c6
mov eax, dword [edi + 5]
add esp, 0x10
cmp byte [eax + 6], 0
je short loc_00001a04  ; je 0x1a04
cmp dword [ebp - 0x34], 0
je short loc_00001a04  ; je 0x1a04
push ecx
push ecx
push 2
push ebx
call fcn_00018863  ; call 0x18863
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_00001a14  ; je 0x1a14
push edx
push edx
push ref_00020c96  ; push 0x20c96
push 0x40
call fcn_000153f7  ; call 0x153f7
jmp short loc_00001a11  ; jmp 0x1a11

loc_00001a04:
push eax
push eax
push 0xfffd
push ebx
call fcn_00018890  ; call 0x18890

loc_00001a11:
add esp, 0x10

loc_00001a14:
mov eax, dword [ebp - 0x3c]
cmp eax, 0x40670
je short loc_00001a25  ; je 0x1a25
cmp eax, 0x306d0
jne short loc_00001a3d  ; jne 0x1a3d

loc_00001a25:
push eax
push eax
mov eax, dword [ebp - 0x40]
push 0x4000
add eax, 0x6c004
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10

loc_00001a3d:
cmp byte [edi], 0xd
jbe short loc_00001a66  ; jbe 0x1a66
mov eax, dword [edi + 5]
cmp byte [eax + 0xc], 1
jne short loc_00001a66  ; jne 0x1a66
cmp dword [ebp - 0x1c], 0x11
je short loc_00001a66  ; je 0x1a66
push eax
push eax
mov eax, dword [ebp - 0x40]
push 8
add eax, 0xc7204
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10

loc_00001a66:
push eax
push eax
push 0xfff9
push dword [ebp - 0x50]
call fcn_00018890  ; call 0x18890
lea eax, [ebp - 0x28]
push eax
push 0
push 2
push 0
call fcn_00000cb2  ; call 0xcb2
add esp, 0x20
jmp near loc_00001c56  ; jmp 0x1c56

loc_00001a8c:
push eax
push eax
mov eax, dword [ebp - 0x20]
push 0
push dword [eax + 4]
call fcn_0001c50d  ; call 0x1c50d
mov esi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00001ae2  ; je 0x1ae2
test esi, esi
jns short loc_00001ae2  ; jns 0x1ae2
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00001aca  ; je 0x1aca
push eax
push esi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00001aca:
push esi
push ref_00020664  ; push 0x20664
push 0x106
push ref_00020b42  ; push 0x20b42
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00001ae2:
lea eax, [ebp - 0x24]
push eax
push 0
push 0
push ref_0002901c  ; push 0x2901c
call fcn_00019699  ; call 0x19699
mov esi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00001b3b  ; je 0x1b3b
test esi, esi
jns short loc_00001b3b  ; jns 0x1b3b
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00001b23  ; je 0x1b23
push ecx
push esi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00001b23:
push edx
push ref_00020664  ; push 0x20664
push 0x108
push ref_00020b42  ; push 0x20b42
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00001b3b:
cmp dword [ebp - 0x3c], 0x306d0
je short loc_00001b4e  ; je 0x1b4e
cmp byte [ebp - 0x47], 0
je loc_00001bdd  ; je 0x1bdd

loc_00001b4e:
push eax
mov eax, dword [ebp - 0x40]
push 0x80000000
push 0xffffffffffffffff
add eax, 0x130040
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp byte [ebp - 0x46], 0
je short loc_00001b8f  ; je 0x1b8f
push eax
mov eax, dword [ebp - 0x40]
xor edx, edx
push 0
push 0x40000000
push 0x130040
push edx
push eax
push dword [ebp - 0x24]
push dword [ebp + 8]
call fcn_00001558  ; call 0x1558
add esp, 0x20

loc_00001b8f:
mov esi, dword [ebp - 0x54]
push eax
push 1
push 0xffffffffffffffff
and esi, 0xfffffffe
lea eax, [esi + 0x5f0c]
push eax
call fcn_00018aa4  ; call 0x18aa4
mov eax, dword [ebp - 0x24]
add esp, 0xc
push 1
push eax
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
add esp, 0x10
cmp byte [ebp - 0x46], 0
je short loc_00001bdd  ; je 0x1bdd
push eax
xor edx, edx
push 0
push 0x200
push 0x5f0c
push edx
push esi
push dword [ebp - 0x24]
push dword [ebp + 8]
call fcn_00001558  ; call 0x1558
add esp, 0x20

loc_00001bdd:
push eax
push eax
push 0xfff9
push dword [ebp - 0x50]
call fcn_00018890  ; call 0x18890
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_00001c09  ; je 0x1c09
push eax
push eax
push ref_00020cd6  ; push 0x20cd6
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00001c09:
cmp byte [ebp - 0x45], 0
jne short loc_00001c18  ; jne 0x1c18
cmp dword [ebp - 0x3c], 0x40660
jne short loc_00001c22  ; jne 0x1c22

loc_00001c18:
push esi
push 2
push 0xfc07
jmp short loc_00001c27  ; jmp 0x1c27

loc_00001c22:
push ecx
push 2
push 0x3f

loc_00001c27:
push ebx
call fcn_000188bd  ; call 0x188bd
mov eax, dword [edi + 5]
add esp, 0x10
mov word [eax + 2], 0
mov eax, dword [edi + 5]
mov byte [eax + 4], 0
mov eax, dword [ebp - 0x4c]
push edx
push edx
push 0xef
add eax, 0x54
push eax
call fcn_00018699  ; call 0x18699
add esp, 0x10

loc_00001c56:
mov eax, dword [ebp - 0x2c]
mov esi, dword [ebp - 0x30]
mov ebx, dword [ebp - 0x28]
mov dword [ebp - 0x3c], eax
push eax
push eax
push 0
push dword [ebp - 0x58]
call fcn_00018a7a  ; call 0x18a7a
mov eax, dword [edi + 9]
add esp, 0x10
cmp byte [eax + 3], 0
jne short loc_00001cc0  ; jne 0x1cc0
add esi, dword [ebp - 0x3c]
mov edx, dword [edi + 5]
add ebx, esi
cmp ebx, 0x3fffffff
jbe short loc_00001c91  ; jbe 0x1c91
mov word [edx], 0x800
jmp short loc_00001cc0  ; jmp 0x1cc0

loc_00001c91:
cmp ebx, 0x2fffffff
jbe short loc_00001ca0  ; jbe 0x1ca0
mov word [edx], 0x700
jmp short loc_00001cc0  ; jmp 0x1cc0

loc_00001ca0:
cmp ebx, 0x1fffffff
jbe short loc_00001caf  ; jbe 0x1caf
mov word [edx], 0x600
jmp short loc_00001cc0  ; jmp 0x1cc0

loc_00001caf:
cmp ebx, 0x10000000
sbb eax, eax
xor al, al
add ax, 0x500
mov word [edx], ax

loc_00001cc0:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00001cc8:
push ebp
xor ecx, ecx
mov ebp, esp
mov edx, 1
push edi
push esi
push ebx
sub esp, 0x1c
mov esi, dword [ebp + 8]
mov edi, dword [ebp + 0xc]
mov dword [ebp - 0x1c], 0

loc_00001ce5:
mov eax, dword [esi + ecx*4]
mov ebx, edx
shl ebx, cl
inc ecx
or byte [ebp + eax - 0x1c], bl
cmp ecx, 8
jne short loc_00001ce5  ; jne 0x1ce5
xor ebx, ebx

loc_00001cf8:
cmp byte [esi + ebx*2 + 0x20], 1
mov cl, bl
jne short loc_00001d4f  ; jne 0x1d4f
movzx eax, byte [esi + ebx*2 + 0x21]
movzx edx, byte [ebp + ebx - 0x1c]
shl eax, 0x18
or edx, 0x80000000
or edx, eax
cmp bl, 2
je short loc_00001d31  ; je 0x1d31
cmp bl, 3
je short loc_00001d38  ; je 0x1d38
dec cl
mov eax, 0x14
mov ecx, 0x20
cmove eax, ecx
jmp short loc_00001d3d  ; jmp 0x1d3d

loc_00001d31:
mov eax, 0x2c
jmp short loc_00001d3d  ; jmp 0x1d3d

loc_00001d38:
mov eax, 0x38

loc_00001d3d:
push ecx
add eax, edi
push edx
push 0xf8ffff01
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_00001d4f:
inc ebx
cmp ebx, 4
jne short loc_00001cf8  ; jne 0x1cf8
push eax
xor eax, eax
cmp byte [esi + 0x22], 1
sete al
add edi, 4
push eax
push 0xf8
push edi
call fcn_000186c6  ; call 0x186c6
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00001d78:
push ebp
mov ebp, esp
push edi
xor edi, edi
push esi
push ebx
sub esp, 0xc
mov ebx, dword [ebp + 0xc]

loc_00001d86:
mov ecx, dword [ebp + 8]
mov eax, edi
cmp byte [ecx + edi*2 + 0x20], 1
je short loc_00001da2  ; je 0x1da2

loc_00001d92:
inc edi
cmp edi, 4
jne short loc_00001d86  ; jne 0x1d86
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

loc_00001da2:
cmp al, 2
je short loc_00001dbb  ; je 0x1dbb
cmp al, 3
je short loc_00001dc2  ; je 0x1dc2
dec al
mov esi, 0x1a
mov eax, 0x26
cmove esi, eax
jmp short loc_00001dc7  ; jmp 0x1dc7

loc_00001dbb:
mov esi, 0x32
jmp short loc_00001dc7  ; jmp 0x1dc7

loc_00001dc2:
mov esi, 0x3e

loc_00001dc7:
add esi, ebx

loc_00001dc9:
sub esp, 0xc
push esi
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test al, 2
jne short loc_00001dc9  ; jne 0x1dc9
jmp short loc_00001d92  ; jmp 0x1d92

fcn_00001ddb:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x30
mov ebx, dword [ebp + 0xc]
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
mov esi, eax
add esi, 0x68
lea eax, [eax + 0x48]
mov dword [esp], eax
call fcn_00017e14  ; call 0x17e14
mov dword [esp], esi
call fcn_00017e14  ; call 0x17e14
and eax, 0xfffffffe
mov edi, edx
mov esi, eax
call fcn_0001c58d  ; call 0x1c58d
mov dword [ebp - 0x30], eax
lea eax, [ebp - 0x20]
push eax
push 0
push 0
push ref_000290fc  ; push 0x290fc
call fcn_00019699  ; call 0x19699
add esp, 0x20
mov dword [ebp - 0x2c], eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00001e74  ; je 0x1e74
cmp dword [ebp - 0x2c], 0
jns short loc_00001e74  ; jns 0x1e74
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00001e5f  ; je 0x1e5f
push eax
push dword [ebp - 0x2c]
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00001e5f:
push ecx
push ref_00020664  ; push 0x20664
push 0x3e
push ref_00020ceb  ; push 0x20ceb
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00001e74:
lea eax, [ebp - 0x1c]
push eax
push 0
push 0
push ref_000290cc  ; push 0x290cc
call fcn_00019699  ; call 0x19699
mov dword [ebp - 0x2c], eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00001ecf  ; je 0x1ecf
cmp dword [ebp - 0x2c], 0
jns short loc_00001ecf  ; jns 0x1ecf
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00001eba  ; je 0x1eba
push edx
push dword [ebp - 0x2c]
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00001eba:
push eax
push ref_00020664  ; push 0x20664
push 0x41
push ref_00020ceb  ; push 0x20ceb
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00001ecf:
mov eax, dword [ebp - 0x30]
cmp eax, 0x40660
je short loc_00001f1a  ; je 0x1f1a
cmp eax, 0x306c0
je short loc_00001f1a  ; je 0x1f1a
cmp eax, 0x40670
je short loc_00001efc  ; je 0x1efc

loc_00001ee7:
push eax
push eax
push 2
lea eax, [esi + 0xa78]
push eax
call fcn_0001866c  ; call 0x1866c
add esp, 0x10
jmp short loc_00001f1a  ; jmp 0x1f1a

loc_00001efc:
push eax
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 2
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 0x10
je short loc_00001ee7  ; je 0x1ee7

loc_00001f1a:
mov edx, dword [ebx + 0xd]
mov eax, dword [ebp - 0x1c]
mov dl, byte [edx]
mov byte [eax + 0x22], dl
mov edx, dword [ebx + 0xd]
mov dl, byte [edx + 1]
mov byte [eax + 0x24], dl
mov edx, dword [ebx + 0xd]
mov dl, byte [edx + 2]
mov byte [eax + 0x26], dl
xor eax, eax

loc_00001f39:
mov edx, dword [ebp - 0x1c]
lea ebx, [edx + eax*4]
mov ecx, dword [ebx]
cmp ecx, 1
jne short loc_00001f4c  ; jne 0x1f4c
cmp byte [edx + 0x22], 0
jmp short loc_00001f60  ; jmp 0x1f60

loc_00001f4c:
cmp ecx, 2
jne short loc_00001f57  ; jne 0x1f57
cmp byte [edx + 0x24], 0
jmp short loc_00001f60  ; jmp 0x1f60

loc_00001f57:
cmp ecx, 3
jne short loc_00001f68  ; jne 0x1f68
cmp byte [edx + 0x26], 0

loc_00001f60:
jne short loc_00001f68  ; jne 0x1f68
mov dword [ebx], 0

loc_00001f68:
inc eax
cmp eax, 8
jne short loc_00001f39  ; jne 0x1f39
push eax
push edi
push esi
push dword [ebp - 0x1c]
call fcn_00001cc8  ; call 0x1cc8
mov eax, dword [ebp - 0x20]
call dword [eax + 4]  ; ucall
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00001fc3  ; je 0x1fc3
test ebx, ebx
jns short loc_00001fc3  ; jns 0x1fc3
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00001fae  ; je 0x1fae
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00001fae:
push eax
push ref_00020664  ; push 0x20664
push 0x62
push ref_00020ceb  ; push 0x20ceb
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00001fc3:
push ecx
push edi
push esi
push dword [ebp - 0x1c]
call fcn_00001d78  ; call 0x1d78
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00002010  ; je 0x2010
test ebx, ebx
jns short loc_00002010  ; jns 0x2010
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00001ffb  ; je 0x1ffb
push edx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00001ffb:
push eax
push ref_00020664  ; push 0x20664
push 0x68
push ref_00020ceb  ; push 0x20ceb
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00002010:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000201a:
push ebp
mov ebp, esp
push ebx
sub esp, 0xc
mov ebx, dword [ebp + 8]
push 0x20
lea eax, [ebx + 0x88]
add ebx, 0x8a
push eax
call fcn_0001866c  ; call 0x1866c
add esp, 0x10

loc_0000203b:
sub esp, 0xc
push ebx
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test ah, 8
jne short loc_0000203b  ; jne 0x203b
mov ebx, dword [ebp - 4]
leave
ret

fcn_00002051:
push ebp
mov ebp, esp
push ebx
sub esp, 8
mov ebx, dword [ebp + 0x10]
push 0x20000000
push 0xdfffffff
lea eax, [ebx + 0x258]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0xc
push 0x6b5
push 0xfffff800
lea eax, [ebx + 0x208]
add ebx, 0x22c
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
mov dword [ebp + 8], ebx
mov ebx, dword [ebp - 4]
mov dword [ebp + 0x10], 0x2020
mov dword [ebp + 0xc], 0xffff0000
leave
jmp near fcn_00018aa4  ; jmp 0x18aa4

fcn_000020ad:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x30
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
mov ebx, eax
lea eax, [eax + 0x48]
add ebx, 0x68
mov dword [esp], eax
call fcn_00017e14  ; call 0x17e14
mov dword [esp], ebx
mov dword [ebp - 0x30], eax
call fcn_00017e14  ; call 0x17e14
mov ebx, eax
lea eax, [ebp - 0x1c]
push eax
push 0
push 0
push ref_0002912c  ; push 0x2912c
mov dword [ebp - 0x2c], edx
call fcn_00019699  ; call 0x19699
add esp, 0x20
mov esi, eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0000213a  ; je 0x213a
test esi, esi
jns short loc_0000215c  ; jns 0x215c
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00002122  ; je 0x2122
push eax
push esi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00002122:
push eax
push ref_00020664  ; push 0x20664
push 0x13f
push ref_00020ceb  ; push 0x20ceb
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000213a:
test esi, esi
jns short loc_0000215c  ; jns 0x215c
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_000023a3  ; je 0x23a3
push edi
push edi
push ref_00020d1a  ; push 0x20d1a
push 0x80000000
jmp near loc_000022ee  ; jmp 0x22ee

loc_0000215c:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00002176  ; je 0x2176
push esi
push esi
push ref_00020d49  ; push 0x20d49
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00002176:
and ebx, 0xfffffffe
mov edi, dword [ebp - 0x2c]
sub esp, 0xc
mov esi, ebx
mov dword [ebp - 0x2c], ebx
mov ebx, dword [ebp - 0x30]
push 0
push 0
push esi
and ebx, 0xfffffffe
push ebx
push dword [ebp + 0xc]
call fcn_000041e9  ; call 0x41e9
add esp, 0x20
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000021b5  ; je 0x21b5
push ecx
push ecx
push ref_00020d58  ; push 0x20d58
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000021b5:
push edx
push dword [ebp - 0x2c]
push ebx
push dword [ebp + 0xc]
call fcn_00002051  ; call 0x2051
mov ecx, dword [ebp + 0xc]
add esp, 0x10
mov eax, dword [ecx + 0xd]
cmp byte [eax + 3], 0
mov eax, dword [ebp - 0x2c]
lea eax, [eax + 0x84]
mov dword [ebp - 0x30], eax
jne short loc_00002200  ; jne 0x2200

loc_000021dd:
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_0000239c  ; je 0x239c
push eax
push eax
push ref_00020d78  ; push 0x20d78
push 2
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp near loc_0000239c  ; jmp 0x239c

loc_00002200:
mov eax, dword [ebp - 0x1c]
sub esp, 0xc
mov eax, dword [eax + 4]
add eax, 0x21a4
push eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
and eax, 0xf
dec al
je short loc_000021dd  ; je 0x21dd
push eax
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xe4
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test eax, 0x400000
jne short loc_000021dd  ; jne 0x21dd
lea eax, [ebp - 0x20]
push eax
push 0
push 0
push ref_000290fc  ; push 0x290fc
call fcn_00019699  ; call 0x19699
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00002269  ; je 0x2269
test ebx, ebx
js loc_000022fb  ; js 0x22fb

loc_00002269:
mov eax, dword [ebp - 0x20]
mov bl, 1
call dword [eax + 8]  ; ucall
push eax
push 2
push 0xfffffffffffffff0
push dword [ebp - 0x30]
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_00002281:
sub esp, 0xc
push dword [ebp - 0x30]
call fcn_00017d8a  ; call 0x17d8a
add esp, 0xc
and eax, 0xf
push eax
mov eax, dword [ebp - 0x2c]
push 0xfffffffffffffff0
add eax, 0x98
push eax
call fcn_00018aa4  ; call 0x18aa4
pop ecx
pop eax
push edi
push esi
call fcn_0000201a  ; call 0x201a
mov eax, dword [ebp - 0x2c]
add esp, 0x10
test bl, bl
lea ebx, [eax + 0x8a]
jne short loc_00002335  ; jne 0x2335

loc_000022bc:
sub esp, 0xc
xor esi, esi
push ebx
call fcn_00017cfe  ; call 0x17cfe
mov ebx, eax
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je loc_000023a3  ; je 0x23a3
mov eax, ebx
and eax, 0xf
shr bx, 4
push eax
and ebx, 0x3f
push ebx
push ref_00020dcf  ; push 0x20dcf
push 0x40

loc_000022ee:
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp near loc_000023a3  ; jmp 0x23a3

loc_000022fb:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00002318  ; je 0x2318
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00002318:
push eax
push ref_00020664  ; push 0x20664
push 0x15f
push ref_00020ceb  ; push 0x20ceb
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
jmp near loc_00002269  ; jmp 0x2269

loc_00002335:
sub esp, 0xc
push ebx
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
and eax, 0xf
cmp ax, 2
je short loc_00002366  ; je 0x2366

loc_0000234a:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000238b  ; je 0x238b
push edx
push edx
push ref_00020db0  ; push 0x20db0
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp short loc_0000238b  ; jmp 0x238b

loc_00002366:
mov eax, dword [ebp - 0x1c]
sub esp, 0xc
mov eax, dword [eax + 4]
add eax, 0x21aa
push eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
and eax, 0xf
cmp ax, 2
jne short loc_0000234a  ; jne 0x234a
jmp near loc_000022bc  ; jmp 0x22bc

loc_0000238b:
push eax
push eax
push edi
push esi
call fcn_0000201a  ; call 0x201a
add esp, 0x10
jmp near loc_000022bc  ; jmp 0x22bc

loc_0000239c:
xor ebx, ebx
jmp near loc_00002281  ; jmp 0x2281

loc_000023a3:
lea esp, [ebp - 0xc]
mov eax, esi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000023ad:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x20
mov eax, dword [ebp + 8]
push 0
push 0
push 0
mov esi, eax
mov eax, dword [ebp + 0xc]
mov edi, eax
mov eax, dword [ebp + 0x10]
mov dword [ebp - 0x1c], eax
call fcn_00016bd6  ; call 0x16bd6
add eax, 0x54
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov ebx, eax
call fcn_000153e9  ; call 0x153e9
shr ebx, 1
add esp, 0x10
and ebx, 7
test al, al
je short loc_00002412  ; je 0x2412
movzx edx, byte [ebp - 0x1c]
mov eax, edi
push ecx
movzx eax, al
mov ecx, esi
movzx ecx, cl
push edx
push eax
push ecx
push edx
push eax
push ref_00020dec  ; push 0x20dec
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_00002412:
movzx edx, byte [ebp - 0x1c]
mov eax, 2
sub eax, edx
bt ebx, eax
jae loc_000024b6  ; jae 0x24b6
mov eax, edi
push ecx
movzx eax, al
push edx
push eax
mov eax, esi
movzx eax, al
push eax
call fcn_00016bd6  ; call 0x16bd6
mov esi, eax
lea eax, [eax + 0xb2]
add esi, 0x11a
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
mov dword [esp], esi
mov ebx, eax
call fcn_00017cfe  ; call 0x17cfe
mov esi, eax
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_00002484  ; je 0x2484
mov eax, ebx
and eax, 0xf
shr bx, 4
push eax
and ebx, 0x3f
push ebx
push ref_00020e02  ; push 0x20e02
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00002484:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000024a4  ; je 0x24a4
shr si, 1
and esi, 1
push eax
push esi
push ref_00020e1b  ; push 0x20e1b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000024a4:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000024d9  ; je 0x24d9
mov dword [ebp + 0xc], ref_00021e91  ; mov dword [ebp + 0xc], 0x21e91
jmp short loc_000024c6  ; jmp 0x24c6

loc_000024b6:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000024d9  ; je 0x24d9
mov dword [ebp + 0xc], ref_000216c1  ; mov dword [ebp + 0xc], 0x216c1

loc_000024c6:
mov dword [ebp + 8], 0x40
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_000153f7  ; jmp 0x153f7

loc_000024d9:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000024e1:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x20
mov eax, dword [ebp + 0x10]
movzx ebx, byte [ebp + 0x18]
mov ecx, eax
mov dword [ebp - 0x1c], eax
mov eax, dword [ebp + 0x14]
push ebx
mov dword [ebp - 0x20], eax
movzx eax, al
push eax
movzx eax, cl
push eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 0
push 0
push 0
mov edi, eax
call fcn_00016bd6  ; call 0x16bd6
add eax, 0x54
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov edx, 2
add esp, 0x10
sub edx, ebx
shr eax, 1
and eax, 7
bt eax, edx
jae loc_000025be  ; jae 0x25be
sub esp, 0xc
add edi, 0x11a
push edi
xor esi, esi
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
mov edx, eax
shr dx, 1
and edx, 1

loc_00002559:
cmp esi, 0x63
ja short loc_0000258b  ; ja 0x258b
test dx, dx
je short loc_0000258b  ; je 0x258b
push eax
mov eax, dword [ebp + 0xc]
inc esi
push 0x3e8
push dword [ebp + 0xc]
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
mov dword [esp], edi
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
mov edx, eax
shr dx, 1
and edx, 1
jmp short loc_00002559  ; jmp 0x2559

loc_0000258b:
mov dword [ebp - 0x24], edx
call fcn_000153e9  ; call 0x153e9
mov edx, dword [ebp - 0x24]
test al, al
je short loc_000025be  ; je 0x25be
sub esp, 0xc
movzx eax, byte [ebp - 0x20]
movzx edx, dx
push esi
push edx
movzx edx, byte [ebp - 0x1c]
push ebx
push eax
push edx
push ebx
push eax
push ref_00020e3a  ; push 0x20e3a
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x30

loc_000025be:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000025c6:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x38
mov esi, dword [ebp + 0x14]
lea eax, [ebp - 0x1c]
mov ebx, dword [ebp + 0x18]
push eax
call fcn_000196d3  ; call 0x196d3
mov edi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00002625  ; je 0x2625
test edi, edi
jns short loc_00002625  ; jns 0x2625
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000260d  ; je 0x260d
push ecx
push edi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000260d:
push edx
push ref_00020664  ; push 0x20664
push 0xa0
push ref_00020e7c  ; push 0x20e7c
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00002625:
cmp dword [ebp - 0x1c], 0x11
jne short loc_00002631  ; jne 0x2631

loc_0000262b:
test esi, esi
jne short loc_00002648  ; jne 0x2648
jmp short loc_00002642  ; jmp 0x2642

loc_00002631:
sub esp, 0xc
push 1
call fcn_0001c25d  ; call 0x1c25d
add esp, 0x10
dec al
je short loc_0000262b  ; je 0x262b

loc_00002642:
mov byte [ebp - 0x2a], 0xf8
jmp short loc_00002676  ; jmp 0x2676

loc_00002648:
cmp byte [esi + 0x28], 0
je short loc_00002642  ; je 0x2642
mov al, byte [esi + 0x46]
mov byte [ebp - 0x2a], al
test al, al
je short loc_00002642  ; je 0x2642
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00002676  ; je 0x2676
push eax
movzx eax, byte [esi + 0x46]
push eax
push ref_00020eb0  ; push 0x20eb0
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00002676:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00002694  ; je 0x2694
push eax
movzx eax, byte [ebp - 0x2a]
push eax
push ref_00020eda  ; push 0x20eda
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00002694:
cmp bl, 2
je short loc_000026a5  ; je 0x26a5
xor edi, edi
mov al, 6
cmp bl, 3
cmove edi, eax
jmp short loc_000026aa  ; jmp 0x26aa

loc_000026a5:
mov edi, 4

loc_000026aa:
mov al, byte [ebp - 0x2a]
mov byte [ebp - 0x2b], 0
mov byte [ebp - 0x29], 0
or eax, edi
mov byte [ebp - 0x2d], al

loc_000026ba:
xor ebx, ebx
mov byte [ebp - 0x2c], 1

loc_000026c0:
mov dl, byte [ebp - 0x2c]
mov al, dl
and eax, edi
cmp dl, al
jne short loc_000026fc  ; jne 0x26fc
cmp byte [ebp - 0x2b], 0
jne loc_0000276b  ; jne 0x276b
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_0000276b  ; je 0x276b
push eax
push ebx
push 1
push 0
push ebx
push 1
push ref_00020eff  ; push 0x20eff
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20
jmp short loc_0000276b  ; jmp 0x276b

loc_000026fc:
mov al, byte [ebp - 0x29]
mov cl, byte [ebp - 0x2c]
or al, byte [ebp - 0x2a]
and eax, ecx
cmp cl, al
je short loc_0000276b  ; je 0x276b
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000272c  ; je 0x272c
push eax
push ebx
push 1
push 0
push ebx
push 1
push ref_00020f30  ; push 0x20f30
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_0000272c:
push eax
push ebx
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0x11a
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test al, 2
jne short loc_0000276b  ; jne 0x276b
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00002765  ; je 0x2765
push eax
push eax
push ref_00020f50  ; push 0x20f50
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00002765:
mov al, byte [ebp - 0x2c]
or byte [ebp - 0x29], al

loc_0000276b:
inc ebx
shl byte [ebp - 0x2c], 1
cmp ebx, 3
jne loc_000026c0  ; jne 0x26c0
mov al, byte [ebp - 0x2d]
or al, byte [ebp - 0x29]
inc al
je short loc_000027a4  ; je 0x27a4
push ecx
mov eax, dword [ebp + 0xc]
push 0x3e8
push dword [ebp + 0xc]
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
inc byte [ebp - 0x2b]
add esp, 0x10
cmp byte [ebp - 0x2b], 0x64
jne loc_000026ba  ; jne 0x26ba

loc_000027a4:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000027c2  ; je 0x27c2
movzx eax, byte [ebp - 0x2b]
push edx
push eax
push ref_00020f6e  ; push 0x20f6e
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000027c2:
test esi, esi
je short loc_000027ec  ; je 0x27ec
mov al, byte [ebp - 0x29]
not eax
mov byte [esi + 0x46], al
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000027ec  ; je 0x27ec
push eax
movzx eax, byte [esi + 0x46]
push eax
push ref_00020f84  ; push 0x20f84
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000027ec:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000027f4:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x20
mov al, byte [ebp + 0x14]
mov byte [ebp - 0x19], al
movzx eax, byte [ebp + 0x10]
push eax
movzx eax, byte [ebp + 0xc]
push eax
movzx eax, byte [ebp + 8]
push eax
call fcn_00016bd6  ; call 0x16bd6
mov esi, eax
lea eax, [eax + 0x34]
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
cmp al, 0xff
jne short loc_0000285a  ; jne 0x285a

loc_0000282b:
xor eax, eax
jmp short loc_00002862  ; jmp 0x2862

loc_0000282f:
mov edi, eax
sub esp, 0xc
and edi, 0xfc
lea ebx, [edi + esi]
push ebx
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
cmp al, byte [ebp - 0x19]
je short loc_00002860  ; je 0x2860
sub esp, 0xc
lea edx, [ebx + 1]
push edx
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10

loc_0000285a:
test al, al
jne short loc_0000282f  ; jne 0x282f
jmp short loc_0000282b  ; jmp 0x282b

loc_00002860:
mov eax, edi

loc_00002862:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000286a:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x30
mov eax, dword [ebp + 0xc]
mov edi, dword [ebp + 8]
mov dword [ebp - 0x2c], eax
mov ebx, eax
movzx eax, byte [ebp + 0x14]
push eax
movzx eax, byte [ebp + 0x10]
push eax
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0x10
test bl, bl
je loc_0000296c  ; je 0x296c
mov esi, eax
lea eax, [ebp - 0x1c]
push eax
push 0
push 0
push ref_0002901c  ; push 0x2901c
call fcn_00019699  ; call 0x19699
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_000028f5  ; je 0x28f5
test ebx, ebx
jns short loc_000028f5  ; jns 0x28f5
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000028dd  ; je 0x28dd
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000028dd:
push eax
push ref_00020664  ; push 0x20664
push 0x146
push ref_00020e7c  ; push 0x20e7c
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000028f5:
push eax
push eax
push 0x10
lea ebx, [esi + 0xb0]
push ebx
call fcn_00018863  ; call 0x18863
mov eax, dword [ebp - 0x1c]
add esp, 0xc
push 0x3e8
push eax
push edi
call dword [eax + 4]  ; ucall
mov al, byte [ebp - 0x2c]
add esp, 0x10
xor edx, edx
dec eax
cmp al, 7
ja short loc_0000292c  ; ja 0x292c
movzx eax, al
movzx edx, byte [eax + ref_00020338]  ; movzx edx, byte [eax + 0x20338]

loc_0000292c:
push eax
add esi, 0x224
push edx
push 0xffffffffffffffe0
push esi
call fcn_00018aa4  ; call 0x18aa4
mov eax, dword [ebp - 0x1c]
add esp, 0xc
push 0x3e8
push eax
push edi
call dword [eax + 4]  ; ucall
pop edx
pop ecx
push 0xffef
push ebx
call fcn_00018890  ; call 0x18890
mov eax, dword [ebp - 0x1c]
add esp, 0xc
push 0x186a0
push eax
push edi
call dword [eax + 4]  ; ucall
add esp, 0x10

loc_0000296c:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00002974:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov edx, dword [ebp + 0x10]
mov ebx, dword [ebp + 0x18]
mov eax, dword [ebp + 0x14]
mov ecx, dword [ebp + 0xc]
mov esi, edx
and edx, 1
mov edi, dword [ebp + 8]
shr esi, 1
shl esi, 5
add esi, 0x914
cmp edx, 1
sbb edx, edx
add ebx, ebx
and ebx, 0x7fff
and eax, 0x3f
and edx, 0xfff80000
or ebx, 0x70000000
shl eax, 0x15
add edx, 0x100000
or ebx, eax
or ebx, edx
test ecx, ecx
jne short loc_000029d0  ; jne 0x29d0
mov dword [ebp + 0xc], ebx
add esi, edi
jmp short loc_000029e3  ; jmp 0x29e3

loc_000029d0:
push eax
push 0
push ecx
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0x10
mov dword [ebp + 0xc], ebx
add esi, eax

loc_000029e3:
mov dword [ebp + 8], esi
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017dcb  ; jmp 0x17dcb

fcn_000029f2:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov ebx, dword [ebp + 0x10]
mov esi, dword [ebp + 0xc]
shr ebx, 1
shl ebx, 5
add ebx, 0x914
test esi, esi
jne short loc_00002a1b  ; jne 0x2a1b
mov eax, dword [ebp + 8]
sub esp, 0xc
add eax, ebx
push eax
jmp short loc_00002a2b  ; jmp 0x2a2b

loc_00002a1b:
push edi
push 0
push esi
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, ebx
mov dword [esp], eax

loc_00002a2b:
call fcn_00017d8a  ; call 0x17d8a
mov edx, dword [ebp + 0x10]
add esp, 0x10
mov edi, dword [ebp + 0x14]
and edx, 1
and eax, 0x7ffe
cmp edx, 1
sbb ecx, ecx
and edi, 0x3f
shl edi, 0x15
and ecx, 0xfff80000
or edi, 0x68008000
add ecx, 0x100000
or edi, eax
or edi, ecx
test esi, esi
jne short loc_00002a6d  ; jne 0x2a6d
push esi
add ebx, dword [ebp + 8]
push esi
jmp short loc_00002a7c  ; jmp 0x2a7c

loc_00002a6d:
push eax
push 0
push esi
push 0
call fcn_00016bd6  ; call 0x16bd6
pop edx
pop ecx
add ebx, eax

loc_00002a7c:
push edi
push ebx
call fcn_00017dcb  ; call 0x17dcb
mov dword [esp], ebx
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
shr eax, 1
and eax, 0x3fff
ret

fcn_00002a9d:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov edx, dword [ebp + 0x10]
mov eax, dword [ebp + 0xc]
mov esi, dword [ebp + 8]
mov ebx, dword [ebp + 0x14]
mov dword [ebp - 0x24], edx
mov dword [ebp - 0x20], eax
call fcn_0001c58d  ; call 0x1c58d
mov dword [ebp - 0x1c], eax
call fcn_0001c5b4  ; call 0x1c5b4
mov edx, dword [ebp - 0x24]
cmp dl, 1
je short loc_00002ad4  ; je 0x2ad4
cmp dl, 2
je short loc_00002af8  ; je 0x2af8
jmp short loc_00002b34  ; jmp 0x2b34

loc_00002ad4:
lea edi, [ebx - 8]
cmp bl, 7
ja short loc_00002b36  ; ja 0x2b36
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_00002bc1  ; je 0x2bc1
movzx ebx, bl
mov dword [ebp + 0x14], ebx
mov dword [ebp + 0x10], 1
jmp short loc_00002b1a  ; jmp 0x2b1a

loc_00002af8:
lea edi, [ebx - 0xc]
cmp bl, 0xb
ja short loc_00002b36  ; ja 0x2b36
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_00002bc1  ; je 0x2bc1
movzx ebx, bl
mov dword [ebp + 0x14], ebx
mov dword [ebp + 0x10], 2

loc_00002b1a:
mov dword [ebp + 0xc], ref_00020fa6  ; mov dword [ebp + 0xc], 0x20fa6
mov dword [ebp + 8], 2
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_000153f7  ; jmp 0x153f7

loc_00002b34:
mov edi, ebx

loc_00002b36:
mov ecx, esi
movzx esi, byte [ebp - 0x20]
test cl, cl
je short loc_00002b5c  ; je 0x2b5c
test edi, 1
jne short loc_00002b52  ; jne 0x2b52
shl esi, 8
mov ebx, 0xfffff0ff
jmp short loc_00002b8d  ; jmp 0x2b8d

loc_00002b52:
shl esi, 0x18
mov ebx, 0xf0ffffff
jmp short loc_00002b8d  ; jmp 0x2b8d

loc_00002b5c:
test eax, eax
je short loc_00002b78  ; je 0x2b78
cmp dword [ebp - 0x1c], 0x40670
jne short loc_00002b78  ; jne 0x2b78

loc_00002b69:
test edi, 1
jne short loc_00002b85  ; jne 0x2b85

loc_00002b71:
mov ebx, 0xfffffff0
jmp short loc_00002b8d  ; jmp 0x2b8d

loc_00002b78:
cmp bl, 7
jbe short loc_00002b69  ; jbe 0x2b69
test edi, 1
jne short loc_00002b71  ; jne 0x2b71

loc_00002b85:
shl esi, 0x10
mov ebx, 0xfff0ffff

loc_00002b8d:
movzx edx, dl
push eax
push edx
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
mov edx, edi
add esp, 0x10
shr dl, 1
movzx edx, dl
mov dword [ebp + 0x10], esi
mov dword [ebp + 0xc], ebx
lea eax, [eax + edx*4 + 0xda0]
mov dword [ebp + 8], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018aa4  ; jmp 0x18aa4

loc_00002bc1:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00002bc9:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov ebx, dword [ebp + 8]
mov esi, dword [ebp + 0x14]
call fcn_0001c58d  ; call 0x1c58d
mov dword [ebp - 0x1c], eax
call fcn_0001c5b4  ; call 0x1c5b4
mov dword [ebp - 0x20], eax
xor eax, eax

loc_00002bea:
cmp byte [ebx + eax], 9
jbe short loc_00002bf4  ; jbe 0x2bf4
mov byte [ebx + eax], 8

loc_00002bf4:
mov edi, dword [ebp + 0xc]
cmp byte [edi + eax], 9
jbe short loc_00002c01  ; jbe 0x2c01
mov byte [edi + eax], 7

loc_00002c01:
mov edi, dword [ebp + 0x10]
cmp byte [edi + eax], 6
jbe short loc_00002c0e  ; jbe 0x2c0e
mov byte [edi + eax], 2

loc_00002c0e:
inc eax
cmp eax, 0x10
jne short loc_00002bea  ; jne 0x2bea
push eax
push 0
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 1
push 1
push 0
mov edi, eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 2
push 1
push 0
mov dword [ebp - 0x28], eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0x10
cmp esi, 2
mov ecx, dword [ebp - 0x28]
mov dword [ebp - 0x24], eax
je loc_00002da9  ; je 0x2da9
cmp esi, 3
je short loc_00002c6d  ; je 0x2c6d
test esi, esi
jne loc_0000314a  ; jne 0x314a
add edi, 0xda0
xor esi, esi
jmp near loc_00002f4c  ; jmp 0x2f4c

loc_00002c6d:
cmp dword [ebp - 0x20], 0
lea ecx, [edi + 0xda0]
je short loc_00002ce4  ; je 0x2ce4
cmp dword [ebp - 0x1c], 0x40670
jne short loc_00002ce4  ; jne 0x2ce4
mov edi, ecx
xor esi, esi

loc_00002c86:
mov ecx, dword [ebp + 0x10]
push eax
mov eax, dword [ebp + 0xc]
movzx edx, byte [ecx + esi*2]
movzx eax, byte [eax + esi*2]
mov ecx, dword [ebp + 0xc]
shl edx, 0xc
shl eax, 8
or eax, edx
movzx edx, byte [ebx + esi*2]
or eax, edx
movzx edx, byte [ebx + esi*2 + 1]
shl edx, 0x10
or eax, edx
movzx edx, byte [ecx + esi*2 + 1]
mov ecx, dword [ebp + 0x10]
shl edx, 0x18
or eax, edx
movzx edx, byte [ecx + esi*2 + 1]
inc esi
shl edx, 0x1c
or eax, edx
push eax
push 0x80f080f0
push edi
add edi, 4
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp esi, 8
jne short loc_00002c86  ; jne 0x2c86
jmp near loc_0000314a  ; jmp 0x314a

loc_00002ce4:
xor esi, esi

loc_00002ce6:
push eax
mov eax, dword [ebp + 0xc]
mov dword [ebp - 0x1c], ecx
movzx edx, byte [eax + esi*2]
mov eax, dword [ebp + 0x10]
shl edx, 8
movzx eax, byte [eax + esi*2]
shl eax, 0xc
or edx, eax
movzx eax, byte [ebx + esi*2]
or edx, eax
movzx eax, byte [ebx + esi*2 + 1]
shl eax, 0x10
or edx, eax
mov eax, dword [ebp + 0xc]
movzx eax, byte [eax + esi*2 + 1]
shl eax, 0x18
or edx, eax
mov eax, dword [ebp + 0x10]
movzx eax, byte [eax + esi*2 + 1]
inc esi
shl eax, 0x1c
or edx, eax
push edx
push 0x80f080f0
push ecx
call fcn_00018aa4  ; call 0x18aa4
mov ecx, dword [ebp - 0x1c]
add esp, 0x10
add ecx, 4
cmp esi, 4
jne short loc_00002ce6  ; jne 0x2ce6
add edi, 0xdb0

loc_00002d4b:
mov ecx, dword [ebp + 0x10]
push eax
mov eax, dword [ebp + 0xc]
movzx edx, byte [ecx + esi*2]
movzx eax, byte [eax + esi*2]
mov ecx, dword [ebp + 0xc]
shl edx, 0xc
shl eax, 8
or eax, edx
movzx edx, byte [ebx + esi*2 + 1]
or eax, edx
movzx edx, byte [ebx + esi*2]
shl edx, 0x10
or eax, edx
movzx edx, byte [ecx + esi*2 + 1]
mov ecx, dword [ebp + 0x10]
shl edx, 0x18
or eax, edx
movzx edx, byte [ecx + esi*2 + 1]
inc esi
shl edx, 0x1c
or eax, edx
push eax
push 0x80f080f0
push edi
add edi, 4
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp esi, 8
jne short loc_00002d4b  ; jne 0x2d4b
jmp near loc_0000314a  ; jmp 0x314a

loc_00002da9:
sub ecx, edi
xor esi, esi
cmp dword [ebp - 0x20], 0
lea edx, [edi + 0xda0]
mov edi, ecx
je loc_00002e8c  ; je 0x2e8c
cmp dword [ebp - 0x1c], 0x40670
jne loc_00002e8c  ; jne 0x2e8c

loc_00002dcc:
mov ecx, dword [ebp + 0x10]
push eax
mov eax, dword [ebp + 0xc]
mov dword [ebp - 0x1c], edx
movzx ecx, byte [ecx + esi*2]
movzx eax, byte [eax + esi*2]
shl ecx, 0xc
shl eax, 8
or eax, ecx
movzx ecx, byte [ebx + esi*2]
or eax, ecx
movzx ecx, byte [ebx + esi*2 + 1]
shl ecx, 0x10
or eax, ecx
mov ecx, dword [ebp + 0xc]
movzx ecx, byte [ecx + esi*2 + 1]
shl ecx, 0x18
or eax, ecx
mov ecx, dword [ebp + 0x10]
movzx ecx, byte [ecx + esi*2 + 1]
shl ecx, 0x1c
or eax, ecx
push eax
push 0x80f080f0
push edx
call fcn_00018aa4  ; call 0x18aa4
mov eax, dword [ebp + 0xc]
add esp, 0xc
mov ecx, dword [ebp + 0x10]
mov edx, dword [ebp - 0x1c]
movzx eax, byte [eax + esi*2 + 8]
movzx ecx, byte [ecx + esi*2 + 8]
shl eax, 8
shl ecx, 0xc
or eax, ecx
movzx ecx, byte [ebx + esi*2 + 8]
or eax, ecx
movzx ecx, byte [ebx + esi*2 + 9]
shl ecx, 0x10
or eax, ecx
mov ecx, dword [ebp + 0xc]
movzx ecx, byte [ecx + esi*2 + 9]
shl ecx, 0x18
or eax, ecx
mov ecx, dword [ebp + 0x10]
movzx ecx, byte [ecx + esi*2 + 9]
inc esi
shl ecx, 0x1c
or eax, ecx
push eax
push 0x80f080f0
lea eax, [edi + edx]
push eax
call fcn_00018aa4  ; call 0x18aa4
mov edx, dword [ebp - 0x1c]
add esp, 0x10
add edx, 4
cmp esi, 4
jne loc_00002dcc  ; jne 0x2dcc
jmp near loc_0000314a  ; jmp 0x314a

loc_00002e8c:
mov ecx, dword [ebp + 0x10]
push eax
mov eax, dword [ebp + 0xc]
mov dword [ebp - 0x1c], edx
movzx ecx, byte [ecx + esi*2]
movzx eax, byte [eax + esi*2]
shl ecx, 0xc
shl eax, 8
or eax, ecx
movzx ecx, byte [ebx + esi*2]
or eax, ecx
movzx ecx, byte [ebx + esi*2 + 1]
shl ecx, 0x10
or eax, ecx
mov ecx, dword [ebp + 0xc]
movzx ecx, byte [ecx + esi*2 + 1]
shl ecx, 0x18
or eax, ecx
mov ecx, dword [ebp + 0x10]
movzx ecx, byte [ecx + esi*2 + 1]
shl ecx, 0x1c
or eax, ecx
push eax
push 0x80f080f0
push edx
call fcn_00018aa4  ; call 0x18aa4
mov eax, dword [ebp + 0xc]
add esp, 0xc
mov ecx, dword [ebp + 0x10]
mov edx, dword [ebp - 0x1c]
movzx eax, byte [eax + esi*2 + 8]
movzx ecx, byte [ecx + esi*2 + 8]
shl eax, 8
shl ecx, 0xc
or eax, ecx
movzx ecx, byte [ebx + esi*2 + 9]
or eax, ecx
movzx ecx, byte [ebx + esi*2 + 8]
shl ecx, 0x10
or eax, ecx
mov ecx, dword [ebp + 0xc]
movzx ecx, byte [ecx + esi*2 + 9]
shl ecx, 0x18
or eax, ecx
mov ecx, dword [ebp + 0x10]
movzx ecx, byte [ecx + esi*2 + 9]
inc esi
shl ecx, 0x1c
or eax, ecx
push eax
push 0x80f080f0
lea eax, [edi + edx]
push eax
call fcn_00018aa4  ; call 0x18aa4
mov edx, dword [ebp - 0x1c]
add esp, 0x10
add edx, 4
cmp esi, 4
jne loc_00002e8c  ; jne 0x2e8c
jmp near loc_0000314a  ; jmp 0x314a

loc_00002f4c:
mov dword [ebp - 0x28], ecx
mov eax, dword [ebp + 0xc]
push ecx
mov ecx, dword [ebp + 0x10]
movzx eax, byte [eax + esi*2]
movzx edx, byte [ecx + esi*2]
mov ecx, dword [ebp + 0xc]
shl eax, 8
shl edx, 0xc
or eax, edx
movzx edx, byte [ebx + esi*2]
or eax, edx
movzx edx, byte [ebx + esi*2 + 1]
shl edx, 0x10
or eax, edx
movzx edx, byte [ecx + esi*2 + 1]
mov ecx, dword [ebp + 0x10]
shl edx, 0x18
or eax, edx
movzx edx, byte [ecx + esi*2 + 1]
inc esi
shl edx, 0x1c
or eax, edx
push eax
push 0x80f080f0
push edi
add edi, 4
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp esi, 4
mov ecx, dword [ebp - 0x28]
jne short loc_00002f4c  ; jne 0x2f4c
cmp dword [ebp - 0x20], 0
lea edi, [ecx + 0xda0]
je loc_0000308c  ; je 0x308c
cmp dword [ebp - 0x1c], 0x40670
jne loc_0000308c  ; jne 0x308c
mov eax, dword [ebp - 0x24]
xor si, si
sub eax, ecx
mov dword [ebp - 0x1c], eax

loc_00002fd3:
mov eax, dword [ebp + 0xc]
push edx
mov edx, dword [ebp + 0x10]
mov ecx, dword [ebp + 0xc]
movzx eax, byte [eax + esi*2 + 8]
movzx edx, byte [edx + esi*2 + 8]
shl eax, 8
shl edx, 0xc
or eax, edx
movzx edx, byte [ebx + esi*2 + 8]
or eax, edx
movzx edx, byte [ebx + esi*2 + 9]
shl edx, 0x10
or eax, edx
movzx edx, byte [ecx + esi*2 + 9]
shl edx, 0x18
or eax, edx
mov edx, dword [ebp + 0x10]
movzx edx, byte [edx + esi*2 + 9]
shl edx, 0x1c
or eax, edx
push eax
push 0x80f080f0
push edi
call fcn_00018aa4  ; call 0x18aa4
mov ecx, dword [ebp + 0x10]
add esp, 0xc
mov eax, dword [ebp + 0xc]
movzx edx, byte [ecx + esi*2 + 0xc]
movzx eax, byte [eax + esi*2 + 0xc]
shl edx, 0xc
shl eax, 8
or eax, edx
movzx edx, byte [ebx + esi*2 + 0xc]
or eax, edx
movzx edx, byte [ebx + esi*2 + 0xd]
shl edx, 0x10
or eax, edx
mov edx, dword [ebp + 0xc]
movzx edx, byte [edx + esi*2 + 0xd]
shl edx, 0x18
or eax, edx
movzx edx, byte [ecx + esi*2 + 0xd]
inc esi
shl edx, 0x1c
or eax, edx
push eax
mov eax, dword [ebp - 0x1c]
push 0x80f080f0
add eax, edi
add edi, 4
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp esi, 2
je loc_0000314a  ; je 0x314a
jmp near loc_00002fd3  ; jmp 0x2fd3

loc_0000308c:
mov eax, dword [ebp - 0x24]
xor esi, esi
sub eax, ecx
mov dword [ebp - 0x1c], eax

loc_00003096:
mov edx, dword [ebp + 0x10]
push eax
mov eax, dword [ebp + 0xc]
mov ecx, dword [ebp + 0xc]
movzx edx, byte [edx + esi*2 + 8]
movzx eax, byte [eax + esi*2 + 8]
shl edx, 0xc
shl eax, 8
or eax, edx
movzx edx, byte [ebx + esi*2 + 9]
or eax, edx
movzx edx, byte [ebx + esi*2 + 8]
shl edx, 0x10
or eax, edx
movzx edx, byte [ecx + esi*2 + 9]
shl edx, 0x18
or eax, edx
mov edx, dword [ebp + 0x10]
movzx edx, byte [edx + esi*2 + 9]
shl edx, 0x1c
or eax, edx
push eax
push 0x80f080f0
push edi
call fcn_00018aa4  ; call 0x18aa4
mov ecx, dword [ebp + 0x10]
add esp, 0xc
mov eax, dword [ebp + 0xc]
movzx edx, byte [ecx + esi*2 + 0xc]
movzx eax, byte [eax + esi*2 + 0xc]
shl edx, 0xc
shl eax, 8
or eax, edx
movzx edx, byte [ebx + esi*2 + 0xd]
or eax, edx
movzx edx, byte [ebx + esi*2 + 0xc]
shl edx, 0x10
or eax, edx
mov edx, dword [ebp + 0xc]
movzx edx, byte [edx + esi*2 + 0xd]
shl edx, 0x18
or eax, edx
movzx edx, byte [ecx + esi*2 + 0xd]
inc esi
shl edx, 0x1c
or eax, edx
push eax
mov eax, dword [ebp - 0x1c]
push 0x80f080f0
add eax, edi
add edi, 4
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp esi, 2
jne loc_00003096  ; jne 0x3096

loc_0000314a:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00003152:
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword [ebp + 8]
mov eax, dword [eax + 0xd]
push dword [ebp + 0x10]
lea edx, [eax + 0x29]
push edx
lea edx, [eax + 0x19]
add eax, 9
push edx
push eax
call fcn_00002bc9  ; call 0x2bc9
add esp, 0x10
leave
ret

fcn_00003177:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 8
mov eax, dword [ebp + 8]
mov dword [ebp - 0x10], 1
movzx edx, word [eax + 1]
lea ecx, [eax + 3]
lea edi, [edx + edx*2]
mov dword [ebp - 0x14], edx
add edi, eax

loc_00003199:
mov eax, dword [ebp - 0x14]
cmp dword [ebp - 0x10], eax
ja short loc_000031d2  ; ja 0x31d2
mov eax, edi

loc_000031a3:
cmp eax, ecx
je short loc_000031ca  ; je 0x31ca
mov bl, byte [eax - 3]
cmp bl, byte [eax]
jbe short loc_000031c5  ; jbe 0x31c5
mov dx, word [eax]
mov si, word [eax - 2]
mov byte [eax], bl
mov word [eax - 3], dx
mov dl, byte [eax + 2]
mov word [eax + 1], si
mov byte [eax - 1], dl

loc_000031c5:
sub eax, 3
jmp short loc_000031a3  ; jmp 0x31a3

loc_000031ca:
inc dword [ebp - 0x10]
add ecx, 3
jmp short loc_00003199  ; jmp 0x3199

loc_000031d2:
pop eax
pop edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000031d9:
push ebp
mov ebp, esp
mov edx, dword [ebp + 8]
pop ebp
movzx eax, word [edx + 1]
shr eax, 1
inc eax
lea eax, [eax + eax*2]
movzx eax, byte [edx + eax]
ret

fcn_000031ef:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xca0
mov ebx, dword [ebp + 0x1c]
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 1
push dword [ebp + 0x14]
push 0
mov esi, eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 2
push dword [ebp + 0x14]
push 0
mov dword [ebp - 0xc88], eax
call fcn_00016bd6  ; call 0x16bd6
mov ecx, 0xa
cmp dword [ebp + 0x18], 0x10
pop edi
mov dword [ebp - 0xc8c], eax
pop eax
mov eax, 0x14
cmove eax, ecx
mov dword [ebp - 0xc98], eax
lea eax, [ebp - 0xc78]
push 0xc60
push eax
call fcn_00016f3b  ; call 0x16f3b
add esp, 0x10
cmp ebx, 2
je short loc_0000327b  ; je 0x327b
cmp ebx, 1
setb byte [ebp - 0xc7a]
setb byte [ebp - 0xc79]
jmp short loc_00003289  ; jmp 0x3289

loc_0000327b:
mov byte [ebp - 0xc7a], 0
mov byte [ebp - 0xc79], 1

loc_00003289:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000032a3  ; je 0x32a3
push ecx
push ecx
push ref_00020fe7  ; push 0x20fe7
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000032a3:
push edx
push edx
lea eax, [esi + 0xb0]
push 0x10
push eax
mov dword [ebp - 0xc9c], eax
call fcn_00018863  ; call 0x18863
add esp, 0x10
cmp byte [ebp - 0xc79], 0
je short loc_000032dd  ; je 0x32dd
push eax
push eax
mov eax, dword [ebp - 0xc88]
push 0x10
add eax, 0xb0
push eax
call fcn_00018863  ; call 0x18863
add esp, 0x10

loc_000032dd:
cmp byte [ebp - 0xc7a], 0
je short loc_000032fe  ; je 0x32fe
mov eax, dword [ebp - 0xc8c]
push edi
push edi
push 0x10
add eax, 0xb0
push eax
call fcn_00018863  ; call 0x18863
add esp, 0x10

loc_000032fe:
mov eax, dword [ebp + 0xc]
push ecx
push 0x2710
push dword [ebp + 0xc]
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
lea eax, [esi + 0xc20]
pop ebx
pop esi
mov dword [ebp - 0xca0], eax
push 0xa800
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10
cmp byte [ebp - 0xc79], 0
je short loc_00003350  ; je 0x3350
mov eax, dword [ebp - 0xc88]
push edx
push edx
push 0xa800
add eax, 0xc20
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10

loc_00003350:
cmp byte [ebp - 0xc7a], 0
je short loc_00003374  ; je 0x3374
push eax
push eax
mov eax, dword [ebp - 0xc8c]
push 0xa800
add eax, 0xc20
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10

loc_00003374:
mov dword [ebp - 0xc80], 0

loc_0000337e:
mov eax, dword [ebp - 0xc80]
mov ecx, 0x64
xor edx, edx
sub esp, 0xc
xor ebx, ebx
div ecx
push eax
call fcn_0001a76d  ; call 0x1a76d
add esp, 0x10

loc_0000339b:
cmp ebx, dword [ebp + 0x18]
je short loc_000033ca  ; je 0x33ca
sub esp, 0xc
push 1
push 0x39
push ebx
push dword [ebp + 0x14]
push 0
call fcn_00002974  ; call 0x2974
add esp, 0x14
push 0xc
push 0x3a
push ebx
inc ebx
push dword [ebp + 0x14]
push 0
call fcn_00002974  ; call 0x2974
add esp, 0x20
jmp short loc_0000339b  ; jmp 0x339b

loc_000033ca:
push eax
mov eax, dword [ebp + 0xc]
push dword [ebp - 0xc98]
push dword [ebp + 0xc]
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
lea eax, [ebp - 0xc78]
mov dword [ebp - 0xc90], eax
mov dword [ebp - 0xc84], 0
add esp, 0x10

loc_000033f6:
mov eax, dword [ebp - 0xc84]
cmp eax, dword [ebp + 0x18]
je loc_00003509  ; je 0x3509
imul eax, eax, 0xc6
mov edi, dword [ebp - 0xc90]
xor ebx, ebx
mov dword [ebp - 0xc94], eax

loc_00003419:
lea eax, [ebx + 0x31]
mov esi, 1
push eax
push dword [ebp - 0xc84]
push dword [ebp + 0x14]
push 0
call fcn_000029f2  ; call 0x29f2
movzx edx, word [edi + 1]
add esp, 0x10
and eax, 0x3f
mov byte [ebp - 0xc7b], al

loc_00003442:
cmp esi, edx
ja short loc_0000346c  ; ja 0x346c
lea eax, [esi + esi*2]
mov cl, byte [ebp - 0xc7b]
cmp byte [edi + eax], cl
jne short loc_00003469  ; jne 0x3469
imul edx, ebx, 0x21
add eax, dword [ebp - 0xc94]
add eax, edx
inc word [ebp + eax - 0xc77]
jmp short loc_000034e7  ; jmp 0x34e7

loc_00003469:
inc esi
jmp short loc_00003442  ; jmp 0x3442

loc_0000346c:
cmp esi, 0xb
jne short loc_000034be  ; jne 0x34be
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000349f  ; je 0x349f
push eax
push 0xa
push dword [ebp - 0xc80]
push ebx
push dword [ebp - 0xc84]
push dword [ebp + 0x14]
push ref_00021012  ; push 0x21012
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_0000349f:
cmp dword [ebp + 0x18], 0x10
jne loc_00003691  ; jne 0x3691
sub esp, 0xc
push 0xee

loc_000034b1:
call fcn_0001a76d  ; call 0x1a76d
add esp, 0x10
call fcn_00017175  ; call 0x17175

loc_000034be:
imul eax, ebx, 0x21
lea esi, [esi + esi*2]
add esi, dword [ebp - 0xc94]
inc word [edi + 1]
add esi, eax
mov al, byte [ebp - 0xc7b]
mov word [ebp + esi - 0xc77], 1
mov byte [ebp + esi - 0xc78], al

loc_000034e7:
inc ebx
add edi, 0x21
cmp ebx, 6
jne loc_00003419  ; jne 0x3419
inc dword [ebp - 0xc84]
add dword [ebp - 0xc90], 0xc6
jmp near loc_000033f6  ; jmp 0x33f6

loc_00003509:
cmp dword [ebp - 0xc80], 0x64
jbe short loc_00003546  ; jbe 0x3546
lea ecx, [ebp - 0xc78]
xor edx, edx

loc_0000351a:
cmp edx, dword [ebp + 0x18]
jne short loc_00003523  ; jne 0x3523

loc_0000351f:
xor edi, edi
jmp short loc_0000359d  ; jmp 0x359d

loc_00003523:
xor eax, eax

loc_00003525:
mov di, word [ecx + eax + 1]
lea ebx, [edi - 2]
cmp bx, 2
jbe short loc_00003546  ; jbe 0x3546
add eax, 0x21
cmp eax, 0xc6
jne short loc_00003525  ; jne 0x3525
inc edx
add ecx, 0xc6
jmp short loc_0000351a  ; jmp 0x351a

loc_00003546:
inc dword [ebp - 0xc80]
cmp dword [ebp - 0xc80], 0x1f4
jne loc_0000337e  ; jne 0x337e
jmp short loc_0000351f  ; jmp 0x351f

loc_0000355e:
imul eax, esi, 0x21
sub esp, 0xc
add eax, dword [ebp - 0xc80]
lea edx, [ebp - 0xc78]
lea ebx, [edx + eax]
push ebx
call fcn_00003177  ; call 0x3177
mov dword [esp], ebx
call fcn_000031d9  ; call 0x31d9
mov dword [esp], eax
lea eax, [esi + 0x31]
inc esi
push eax
push edi
push dword [ebp + 0x14]
push 0
call fcn_00002974  ; call 0x2974
add esp, 0x20
cmp esi, 6
jne short loc_0000355e  ; jne 0x355e
inc edi

loc_0000359d:
cmp edi, dword [ebp + 0x18]
je short loc_000035b2  ; je 0x35b2
imul eax, edi, 0xc6
xor esi, esi
mov dword [ebp - 0xc80], eax
jmp short loc_0000355e  ; jmp 0x355e

loc_000035b2:
push eax
push eax
push 0
push dword [ebp - 0xca0]
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10
cmp byte [ebp - 0xc79], 0
je short loc_000035e5  ; je 0x35e5
push eax
push eax
mov eax, dword [ebp - 0xc88]
push 0
add eax, 0xc20
push eax
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10

loc_000035e5:
cmp byte [ebp - 0xc7a], 0
je short loc_00003606  ; je 0x3606
push eax
push eax
mov eax, dword [ebp - 0xc8c]
push 0
add eax, 0xc20
push eax
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10

loc_00003606:
mov eax, dword [ebp + 0xc]
push ebx
push 0x3e8
push dword [ebp + 0xc]
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
pop esi
pop edi
push 0xffef
push dword [ebp - 0xc9c]
call fcn_00018890  ; call 0x18890
add esp, 0x10
cmp byte [ebp - 0xc79], 0
je short loc_00003651  ; je 0x3651
mov eax, dword [ebp - 0xc88]
push ecx
push ecx
push 0xffef
add eax, 0xb0
push eax
call fcn_00018890  ; call 0x18890
add esp, 0x10

loc_00003651:
cmp byte [ebp - 0xc7a], 0
je short loc_00003675  ; je 0x3675
mov eax, dword [ebp - 0xc8c]
push edx
push edx
push 0xffef
add eax, 0xb0
push eax
call fcn_00018890  ; call 0x18890
add esp, 0x10

loc_00003675:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000369e  ; je 0x369e
push eax
push eax
push ref_0002106e  ; push 0x2106e
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp short loc_0000369e  ; jmp 0x369e

loc_00003691:
sub esp, 0xc
push 0xed
jmp near loc_000034b1  ; jmp 0x34b1

loc_0000369e:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000036a6:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x10
mov ebx, dword [ebp + 0x14]
push 0
mov esi, dword [ebp + 0x18]
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], eax
mov edi, eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
je short loc_00003711  ; je 0x3711
sub esp, 0xc
add edi, 0x214
push edi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test ax, ax
je short loc_00003711  ; je 0x3711
shr eax, 0x10
and eax, 0xf
cmp eax, 6
jbe short loc_00003711  ; jbe 0x3711
push eax
movzx ebx, bl
push eax
mov eax, esi
movzx esi, al
push esi
push 0x10
push 1
push ebx
push dword [ebp + 0x10]
push dword [ebp + 8]
call fcn_000031ef  ; call 0x31ef
add esp, 0x20

loc_00003711:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00003719:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x38
mov eax, dword [ebp + 0x20]
mov edi, dword [ebp + 0x14]
mov dword [ebp - 0x38], eax
lea eax, [ebp - 0x1c]
push eax
call fcn_000196d3  ; call 0x196d3
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000377b  ; je 0x377b
test ebx, ebx
jns short loc_0000377b  ; jns 0x377b
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00003763  ; je 0x3763
push esi
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00003763:
push ecx
push ref_00020664  ; push 0x20664
push 0x5bc
push ref_00020e7c  ; push 0x20e7c
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000377b:
imul eax, dword [ebp + 0x1c], 7
add eax, dword [ebp + 0x18]
mov ebx, dword [ebp + 0x18]
mov byte [ebp - 0x29], 0
mov dword [ebp - 0x30], eax

loc_0000378c:
cmp ebx, dword [ebp - 0x30]
je loc_00003837  ; je 0x3837
movzx eax, byte [ebx + 2]
push edx
push eax
mov byte [ebp - 0x34], al
movzx eax, byte [ebx + 1]
push eax
movzx eax, byte [ebx]
push eax
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], eax
mov esi, eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
je short loc_0000382f  ; je 0x382f
sub esp, 0xc
lea eax, [esi + 0x11a]
push eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test al, 2
je short loc_0000382f  ; je 0x382f
sub esp, 0xc
lea eax, [esi + 0xba]
push eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test al, 0x40
je short loc_0000382f  ; je 0x382f
mov cl, byte [ebp - 0x34]
mov eax, 1
lea edx, [esi + 0xb0]
add esi, 0x25c
mov dword [ebp - 0x34], edx
shl eax, cl
or byte [ebp - 0x29], al
push eax
push eax
push 0x10
push edx
call fcn_00018863  ; call 0x18863
pop eax
pop edx
push 0x200
push esi
call fcn_00018a50  ; call 0x18a50
mov edx, dword [ebp - 0x34]
pop ecx
pop esi
push 0xffef
push edx
call fcn_00018890  ; call 0x18890
add esp, 0x10

loc_0000382f:
add ebx, 7
jmp near loc_0000378c  ; jmp 0x378c

loc_00003837:
cmp byte [ebp - 0x29], 0
je loc_0000395d  ; je 0x395d
cmp dword [ebp - 0x1c], 0x11
jne short loc_0000384d  ; jne 0x384d

loc_00003847:
test edi, edi
jne short loc_00003860  ; jne 0x3860
jmp short loc_00003870  ; jmp 0x3870

loc_0000384d:
sub esp, 0xc
push 1
call fcn_0001c25d  ; call 0x1c25d
add esp, 0x10
dec al
jne short loc_00003870  ; jne 0x3870
jmp short loc_00003847  ; jmp 0x3847

loc_00003860:
cmp byte [edi + 0x28], 0
je short loc_00003870  ; je 0x3870
cmp byte [edi + 0x46], 0
je short loc_00003870  ; je 0x3870
mov byte [edi + 0x46], 0

loc_00003870:
movzx esi, byte [ebp - 0x38]
sub esp, 0xc
push esi
push edi
push dword [ebp + 0xc]
push dword [ebp + 0x10]
push dword [ebp + 8]
call fcn_000025c6  ; call 0x25c6
movzx eax, byte [ebp - 0x29]
add esp, 0x20
mov ebx, dword [ebp + 0x18]
mov dword [ebp - 0x38], eax

loc_00003894:
cmp ebx, dword [ebp - 0x30]
je short loc_000038d9  ; je 0x38d9
mov al, byte [ebx]
movzx ecx, byte [ebx + 1]
mov byte [ebp - 0x29], al
mov al, byte [ebx + 2]
movzx edx, al
mov dword [ebp - 0x34], edx
mov edx, dword [ebp - 0x38]
bt edx, eax
jae short loc_000038d4  ; jae 0x38d4
push eax
movzx edx, byte [ebp - 0x29]
push dword [ebp - 0x34]
push ecx
push edx
call fcn_00016bd6  ; call 0x16bd6
pop edx
pop ecx
push 0x20
add eax, 0xb0
push eax
call fcn_00018863  ; call 0x18863
add esp, 0x10

loc_000038d4:
add ebx, 7
jmp short loc_00003894  ; jmp 0x3894

loc_000038d9:
cmp dword [ebp - 0x1c], 0x11
jne short loc_000038e5  ; jne 0x38e5

loc_000038df:
test edi, edi
jne short loc_000038f8  ; jne 0x38f8
jmp short loc_00003908  ; jmp 0x3908

loc_000038e5:
sub esp, 0xc
push 1
call fcn_0001c25d  ; call 0x1c25d
add esp, 0x10
dec al
jne short loc_00003908  ; jne 0x3908
jmp short loc_000038df  ; jmp 0x38df

loc_000038f8:
cmp byte [edi + 0x28], 0
je short loc_00003908  ; je 0x3908
cmp byte [edi + 0x46], 0
je short loc_00003908  ; je 0x3908
mov byte [edi + 0x46], 0

loc_00003908:
sub esp, 0xc
push esi
push edi
push dword [ebp + 0xc]
push dword [ebp + 0x10]
push dword [ebp + 8]
call fcn_000025c6  ; call 0x25c6
add esp, 0x20
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00003938  ; je 0x3938
push edx
push edx
push ref_00021098  ; push 0x21098
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00003938:
mov ebx, dword [ebp + 0x18]

loc_0000393b:
cmp ebx, dword [ebp - 0x30]
je short loc_0000395d  ; je 0x395d
push eax
movzx eax, byte [ebx + 2]
add ebx, 7
push eax
movzx eax, byte [ebx - 6]
push eax
movzx eax, byte [ebx - 7]
push eax
call fcn_000023ad  ; call 0x23ad
add esp, 0x10
jmp short loc_0000393b  ; jmp 0x393b

loc_0000395d:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00003965:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x20
mov eax, dword [ebp + 0x20]
mov ebx, dword [ebp + 0x10]
mov dword [ebp - 0x24], eax
imul eax, dword [ebp + 0x18], 7
add eax, dword [ebp + 0x14]
mov dl, byte [eax + 3]
movzx edi, byte [eax + 2]
mov cl, byte [eax]
mov byte [ebp - 0x20], dl
mov dl, byte [eax + 5]
mov dword [ebp - 0x28], edi
push edi
movzx edi, byte [eax + 1]
movzx eax, cl
mov byte [ebp - 0x19], cl
mov byte [ebp - 0x1a], dl
push edi
push eax
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], eax
mov esi, eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
je loc_00003a9d  ; je 0x3a9d
mov eax, dword [ebx + 0xd]
movzx ebx, byte [ebp - 0x20]
mov dl, byte [eax + ebx + 5]
test dl, dl
jne short loc_000039fc  ; jne 0x39fc
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000039e6  ; je 0x39e6
push ebx
push ebx
push ref_000210c3  ; push 0x210c3
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000039e6:
sub esp, 0xc
lea eax, [esi + 0xac]
push eax
call fcn_00017d8a  ; call 0x17d8a
mov ebx, eax
and ebx, 0xf
jmp short loc_00003a22  ; jmp 0x3a22

loc_000039fc:
movzx ebx, dl
mov dword [ebp - 0x20], edx
call fcn_000153e9  ; call 0x153e9
mov edx, dword [ebp - 0x20]
test al, al
je short loc_00003a25  ; je 0x3a25
movzx edx, dl
push ecx
push edx
push ref_000210c9  ; push 0x210c9
push 0x80000000
call fcn_000153f7  ; call 0x153f7

loc_00003a22:
add esp, 0x10

loc_00003a25:
cmp byte [ebp - 0x24], 0
jne short loc_00003a37  ; jne 0x3a37
cmp bx, 2
mov eax, 2
cmova ebx, eax

loc_00003a37:
call fcn_000153e9  ; call 0x153e9
movzx ebx, bx
test al, al
je short loc_00003a5f  ; je 0x3a5f
mov ecx, dword [ebp - 0x28]
movzx eax, byte [ebp - 0x19]
push ebx
push ecx
push edi
push eax
push ecx
push edi
push ref_000210de  ; push 0x210de
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_00003a5f:
push eax
movzx eax, byte [ebp - 0x1a]
shl eax, 4
or eax, ebx
push eax
push 0xfffffc00
lea eax, [esi + 0xac]
add esi, 0xd0
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
mov dword [ebp + 0x10], ebx
mov dword [ebp + 8], esi
mov dword [ebp + 0xc], 0xfff0
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_000188bd  ; jmp 0x188bd

loc_00003a9d:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00003aa5:
push ebp
mov ebp, esp
push ebx
sub esp, 8
movzx eax, byte [ebp + 0x14]
push eax
movzx eax, byte [ebp + 0x10]
push eax
movzx eax, byte [ebp + 0xc]
push eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 0x2020
push 0xffff0000
mov ebx, eax
lea eax, [eax + 0x22c]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0xc
push 0x20000000
push 0xdfffffff
lea eax, [ebx + 0x258]
push eax
call fcn_00018aa4  ; call 0x18aa4
lea eax, [ebx + 0x11a]
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test al, 2
jne short loc_00003b33  ; jne 0x3b33
push eax
push eax
push 0x20
lea eax, [ebx + 0xb0]
add ebx, 0xb2
push eax
call fcn_0001866c  ; call 0x1866c
add esp, 0x10

loc_00003b22:
sub esp, 0xc
push ebx
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test ah, 8
jne short loc_00003b22  ; jne 0x3b22

loc_00003b33:
mov ebx, dword [ebp - 4]
leave
ret

fcn_00003b38:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x20
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0x48
mov dword [esp], eax
call fcn_00017e14  ; call 0x17e14
mov ebx, eax
and ebx, 0xfffffffe
lea eax, [ebx + 0x7400]
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov dword [ebp - 0x1c], eax
lea eax, [ebx + 0x7404]
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov edi, eax
lea eax, [ebx + 0x7408]
add ebx, 0x740c
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov dword [esp], ebx
xor ebx, ebx
mov esi, eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
xor ecx, ecx

loc_00003ba2:
mov eax, dword [ebp - 0x1c]
mov edx, edi
shr edx, cl
and edx, 7
shr eax, cl
add ecx, 3
and eax, 7
add eax, edx
add ebx, eax
cmp ecx, 0x18
jne short loc_00003ba2  ; jne 0x3ba2
cmp bl, 0x28
jbe short loc_00003be5  ; jbe 0x3be5
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00003c10  ; je 0x3c10
movzx ebx, bl
push ebx
push 0x28
push ref_0002110b  ; push 0x2110b
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp short loc_00003c10  ; jmp 0x3c10

loc_00003be5:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00003c10  ; je 0x3c10
mov al, 0x28
movzx edx, bl
sub eax, ebx
sub esp, 0xc
movzx eax, al
lea ecx, [edx + eax]
push ecx
push eax
push edx
push ref_00021159  ; push 0x21159
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_00003c10:
xor ecx, ecx
xor eax, eax

loc_00003c14:
mov edx, esi
shr edx, cl
add ecx, 3
and edx, 7
add eax, edx
cmp ecx, 0x18
jne short loc_00003c14  ; jne 0x3c14
shr esi, 0x18
and esi, 0x3f
lea ebx, [eax + esi]
cmp bl, 0x47
jbe short loc_00003c56  ; jbe 0x3c56
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00003c81  ; je 0x3c81
movzx ebx, bl
push ebx
push 0x47
push ref_00021189  ; push 0x21189
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp short loc_00003c81  ; jmp 0x3c81

loc_00003c56:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00003c81  ; je 0x3c81
mov al, 0x47
movzx edx, bl
sub eax, ebx
sub esp, 0xc
movzx eax, al
lea ecx, [edx + eax]
push ecx
push eax
push edx
push ref_000211d7  ; push 0x211d7
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_00003c81:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00003c89:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x60
mov eax, dword [ebp + 8]
push 0
push 0
push 0
mov dword [ebp - 0x3c], eax
mov eax, dword [ebp + 0xc]
mov dword [ebp - 0x40], eax
mov eax, dword [ebp + 0x10]
mov dword [ebp - 0x44], eax
call fcn_00016bd6  ; call 0x16bd6
add eax, 0x48
mov dword [esp], eax
call fcn_00017e14  ; call 0x17e14
mov ebx, eax
and ebx, 0xfffffffe
lea eax, [ebx + 0x7410]
mov dword [esp], eax
mov dword [ebp - 0x48], eax
call fcn_00017d8a  ; call 0x17d8a
mov edi, eax
lea eax, [ebx + 0x7418]
mov dword [esp], eax
mov dword [ebp - 0x5c], eax
call fcn_00017d8a  ; call 0x17d8a
mov esi, eax
lea eax, [ebx + 0x7454]
mov dword [esp], eax
mov dword [ebp - 0x60], eax
call fcn_00017d8a  ; call 0x17d8a
mov ebx, eax
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_00003d19  ; je 0x3d19
sub esp, 0xc
push ebx
push esi
push edi
push ref_00021207  ; push 0x21207
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_00003d19:
cmp byte [ebp - 0x3c], 0
mov word [ebp - 0x28], 0
jne short loc_00003d4c  ; jne 0x3d4c
push eax
push 0
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xb2
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
and eax, 0x3f0
shr eax, 4
mov dword [ebp - 0x28], eax

loc_00003d4c:
cmp byte [ebp - 0x40], 0
mov word [ebp - 0x38], 0
jne short loc_00003d7f  ; jne 0x3d7f
push ecx
push 1
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xb2
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
and eax, 0x3f0
shr eax, 4
mov dword [ebp - 0x38], eax

loc_00003d7f:
cmp byte [ebp - 0x44], 0
mov word [ebp - 0x58], 0
jne short loc_00003db2  ; jne 0x3db2
push edx
push 2
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xb2
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
and eax, 0x3f0
shr eax, 4
mov dword [ebp - 0x58], eax

loc_00003db2:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00003dd4  ; je 0x3dd4
movzx eax, word [ebp - 0x28]
push eax
movzx eax, byte [ebp - 0x3c]
push eax
push ref_00021235  ; push 0x21235
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00003dd4:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00003df6  ; je 0x3df6
movzx eax, word [ebp - 0x38]
push eax
movzx eax, byte [ebp - 0x40]
push eax
push ref_0002125b  ; push 0x2125b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00003df6:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00003e18  ; je 0x3e18
movzx eax, word [ebp - 0x58]
push eax
movzx eax, byte [ebp - 0x44]
push eax
push ref_00021281  ; push 0x21281
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00003e18:
mov al, byte [ebp - 0x40]
or al, byte [ebp - 0x3c]
jne short loc_00003e64  ; jne 0x3e64
cmp word [ebp - 0x28], 8
jne short loc_00003e64  ; jne 0x3e64
cmp word [ebp - 0x38], 8
jne short loc_00003e64  ; jne 0x3e64
mov eax, edi
and edi, 0x7c00
and eax, 0xfffffc1f
shr edi, 5
or edi, eax
mov eax, esi
and esi, 0x7c00
and eax, 0xfffffc1f
shr esi, 5
or esi, eax
mov eax, ebx
and ebx, 0x3f000
and eax, 0xfffff03f
shr ebx, 6
or ebx, eax

loc_00003e64:
cmp word [ebp - 0x58], 4
jne loc_00003efb  ; jne 0x3efb
cmp byte [ebp - 0x44], 0
jne loc_00003efb  ; jne 0x3efb
cmp word [ebp - 0x28], 4
jne short loc_00003ebc  ; jne 0x3ebc
cmp byte [ebp - 0x3c], 0
jne short loc_00003ebc  ; jne 0x3ebc
mov eax, edi
and edi, 0xf8000
and eax, 0xfffffc1f
shr edi, 0xa
or edi, eax
mov eax, esi
and esi, 0xf8000
and eax, 0xfffffc1f
shr esi, 0xa
or esi, eax
mov eax, ebx
and ebx, 0xfc0000
and eax, 0xfffff03f
shr ebx, 0xc
or ebx, eax

loc_00003ebc:
cmp word [ebp - 0x38], 4
jne short loc_00003efb  ; jne 0x3efb
cmp byte [ebp - 0x40], 0
jne short loc_00003efb  ; jne 0x3efb
mov eax, edi
and edi, 0xf8000
and ah, 0x83
shr edi, 5
or edi, eax
mov eax, esi
and esi, 0xf8000
and ah, 0x83
shr esi, 5
or esi, eax
mov eax, ebx
and ebx, 0xfc0000
and eax, 0xfffc0fff
shr ebx, 6
or ebx, eax

loc_00003efb:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00003f19  ; je 0x3f19
sub esp, 0xc
push ebx
push esi
push edi
push ref_000212a7  ; push 0x212a7
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_00003f19:
push eax
push edi
push 0xfe000000
push dword [ebp - 0x48]
call fcn_00018aa4  ; call 0x18aa4
add esp, 0xc
push esi
push 0xfe000000
push dword [ebp - 0x5c]
call fcn_00018aa4  ; call 0x18aa4
mov eax, dword [ebp - 0x60]
add esp, 0x10
mov dword [ebp + 0x10], ebx
mov dword [ebp + 0xc], 0xc0000000
mov dword [ebp + 8], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018aa4  ; jmp 0x18aa4

fcn_00003f58:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 0xc]
mov esi, dword [ebp + 0x10]
mov ebx, dword [ebp + 8]
mov dword [ebp - 0x1c], eax
call fcn_0001c58d  ; call 0x1c58d
movzx ebx, bl
mov edi, eax
push eax
mov eax, esi
movzx eax, al
push eax
movzx eax, byte [ebp - 0x1c]
push eax
push ebx
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 0x1f
push 0xfffffeff
mov ebx, eax
lea eax, [eax + 0x224]
push eax
call fcn_00018aa4  ; call 0x18aa4
mov eax, esi
add esp, 0x10
test al, al
jne short loc_00003fb0  ; jne 0x3fb0
cmp byte [ebp - 0x1c], 1
je short loc_00003fc2  ; je 0x3fc2

loc_00003fb0:
cmp edi, 0x40660
je short loc_00004000  ; je 0x4000
cmp edi, 0x306c0
jne short loc_00004014  ; jne 0x4014
jmp short loc_00004000  ; jmp 0x4000

loc_00003fc2:
push eax
push 0
push 0xefffffff
lea eax, [ebx + 0x490]
push eax
call fcn_00018aa4  ; call 0x18aa4
lea eax, [ebx + 0xa18]
add esp, 0x10
lea esi, [ebx + 0x918]
mov dword [ebp - 0x1c], eax

loc_00003fe8:
push eax
push 0
push 0xfffffffffffffff3
push esi
add esi, 0x20
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp esi, dword [ebp - 0x1c]
jne short loc_00003fe8  ; jne 0x3fe8
jmp short loc_00003fb0  ; jmp 0x3fb0

loc_00004000:
push eax
push 0x10
push 0xffffffffffffffef
lea eax, [ebx + 0xd14]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_00004014:
sub esp, 0xc
lea esi, [ebx + 0x308]
push esi
call fcn_00017d8a  ; call 0x17d8a
pop edx
pop ecx
push eax
push esi
lea esi, [ebx + 0x314]
call fcn_00017dcb  ; call 0x17dcb
mov dword [esp], esi
call fcn_00017d8a  ; call 0x17d8a
pop edi
pop edx
push eax
push esi
lea esi, [ebx + 0x32c]
add ebx, 0x330
call fcn_00017dcb  ; call 0x17dcb
mov dword [esp], esi
call fcn_00017d8a  ; call 0x17d8a
pop ecx
pop edi
push eax
push esi
call fcn_00017dcb  ; call 0x17dcb
mov dword [esp], ebx
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017dcb  ; jmp 0x17dcb

fcn_0000407d:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
movzx eax, byte [ebp + 0x10]
mov esi, dword [ebp + 8]
movzx ebx, word [ebp + 0xc]
mov dword [ebp - 0x1c], 0xa
shl eax, 0x10
lea edi, [esi + 0x6c00]
or ebx, eax
lea eax, [esi + 0x6c04]
or ebx, 0x80000000
mov dword [ebp - 0x20], eax

loc_000040b2:
push ecx
push ecx
push dword [ebp + 0x14]
push dword [ebp - 0x20]
call fcn_00017dcb  ; call 0x17dcb
pop eax
pop edx
push ebx
push edi
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10
mov edx, 0x64

loc_000040d0:
sub esp, 0xc
push edi
mov dword [ebp - 0x24], edx
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test eax, eax
jns short loc_0000410c  ; jns 0x410c
mov edx, dword [ebp - 0x24]
dec edx
jne short loc_000040d0  ; jne 0x40d0
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000410c  ; je 0x410c
push edx
push edx
push dword [ebp + 0x14]
push dword [ebp + 0xc]
push esi
push 0x64
push ref_000212d4  ; push 0x212d4
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_0000410c:
sub esp, 0xc
push edi
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
mov edx, eax
cmp ax, 0x40
je short loc_00004154  ; je 0x4154
dec dword [ebp - 0x1c]
jne short loc_000040b2  ; jne 0x40b2
mov dword [ebp - 0x1c], edx
call fcn_000153e9  ; call 0x153e9
mov edx, dword [ebp - 0x1c]
test al, al
je short loc_00004154  ; je 0x4154
movzx edx, dx
push eax
push edx
push dword [ebp + 0x14]
push dword [ebp + 0xc]
push esi
push 0xa
push ref_00021321  ; push 0x21321
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_00004154:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000415c:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov edx, dword [ebp + 0x10]
mov edi, dword [ebp + 8]
mov eax, edx
and eax, 0xfffffffd
cmp ax, 0x14
sete al
cmp al, 1
lea ecx, [edx - 0x13]
sbb ebx, ebx
cmp cx, 1
jbe short loc_00004189  ; jbe 0x4189
add ebx, 4
jmp short loc_0000418c  ; jmp 0x418c

loc_00004189:
add ebx, 2

loc_0000418c:
push ebx
cmp al, 1
push 0
sbb esi, esi
push 2
add esi, 8
push edi
mov dword [ebp - 0x1c], edx
call fcn_0000407d  ; call 0x407d
mov edx, dword [ebp - 0x1c]
push dword [ebp + 0xc]
movzx edx, dx
push 0
push edx
push edi
call fcn_0000407d  ; call 0x407d
add esp, 0x20
push dword [ebp + 0x14]
push 0
push esi
push edi
call fcn_0000407d  ; call 0x407d
lea eax, [edi + 0x6c04]
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
push ebx
push 0
push 3
push edi
mov dword [ebp - 0x1c], eax
call fcn_0000407d  ; call 0x407d
mov eax, dword [ebp - 0x1c]
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000041e9:
push ebp
mov ebp, esp
push edi
mov edi, 0x10
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 0x18]
mov ebx, dword [ebp + 0x10]
mov dword [ebp - 0x28], eax
call fcn_0001c58d  ; call 0x1c58d
cmp dword [ebp + 0x14], 1
mov dword [ebp - 0x20], eax
mov eax, 4
cmovne edi, eax
xor esi, esi
mov eax, edi
shr eax, 1
mov dword [ebp - 0x1c], eax
lea eax, [ebx + 0xa00]
mov dword [ebp - 0x24], eax

loc_00004226:
test ebx, ebx
je short loc_0000423a  ; je 0x423a
push eax
mov eax, esi
shl eax, 4
add eax, dword [ebp - 0x24]
push 0xc
push 0xffffffffffffffe0
push eax
jmp short loc_0000425a  ; jmp 0x425a

loc_0000423a:
push eax
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
lea edx, [esi + 0xa0]
push 0xc
shl edx, 4
push 0xffffffffffffffe0
add edx, eax
push edx

loc_0000425a:
inc esi
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp esi, edi
jb short loc_00004226  ; jb 0x4226
test ebx, ebx
jne loc_000042f7  ; jne 0x42f7
cmp byte [ebp - 0x28], 1
mov edi, 2
mov eax, 0xc
cmove edi, eax
xor esi, esi

loc_00004282:
push eax
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
mov edx, esi
push edi
inc esi
shl edx, 5
push 0xffffffffffffffe0
lea eax, [eax + edx + 0x904]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp esi, dword [ebp - 0x1c]
jb short loc_00004282  ; jb 0x4282
cmp byte [ebp - 0x28], 1
mov edi, 3
mov eax, 0xe
cmove edi, eax
xor esi, esi
shl edi, 5

loc_000042c6:
push eax
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
mov edx, esi
push edi
inc esi
shl edx, 5
push 0xfffffc1f
lea eax, [eax + edx + 0x904]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp esi, dword [ebp - 0x1c]
jb short loc_000042c6  ; jb 0x42c6

loc_000042f7:
xor esi, esi
lea edi, [ebx + 0x90c]

loc_000042ff:
test ebx, ebx
je short loc_00004317  ; je 0x4317
mov eax, esi
push ecx
push 0x120
shl eax, 5
push 0xfffff81f
add eax, edi
jmp short loc_0000433d  ; jmp 0x433d

loc_00004317:
push edx
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
mov edx, esi
push 0x120
shl edx, 5
push 0xfffff81f
lea eax, [eax + edx + 0x90c]

loc_0000433d:
push eax
inc esi
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp esi, dword [ebp - 0x1c]
jb short loc_000042ff  ; jb 0x42ff
test ebx, ebx
jne loc_000043d6  ; jne 0x43d6
xor esi, esi

loc_00004356:
push eax
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
mov edx, esi
push 0xa00000
inc esi
shl edx, 5
push 0xfe1fffff
lea eax, [eax + edx + 0x90c]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp esi, dword [ebp - 0x1c]
jb short loc_00004356  ; jb 0x4356
xor esi, esi

loc_0000438d:
mov eax, dword [ebp + 8]
mov edi, 0x200
cmp byte [eax], 2
jbe short loc_000043a5  ; jbe 0x43a5
mov eax, dword [eax + 0xd]
movzx edi, byte [eax + esi + 0x54]
shl edi, 6

loc_000043a5:
push eax
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
mov edx, esi
push edi
inc esi
shl edx, 5
push 0xfffffc3f
lea eax, [eax + edx + 0x910]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp esi, dword [ebp - 0x1c]
jb short loc_0000438d  ; jb 0x438d

loc_000043d6:
xor esi, esi
lea edi, [ebx + 0x910]
jmp short loc_00004412  ; jmp 0x4412

loc_000043e0:
push eax
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
mov edx, esi
push 0
shl edx, 5
push 0xffffc3ff
lea eax, [eax + edx + 0x910]

loc_00004403:
push eax
inc esi
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp esi, dword [ebp - 0x1c]
jae short loc_00004427  ; jae 0x4427

loc_00004412:
test ebx, ebx
je short loc_000043e0  ; je 0x43e0
push eax
mov eax, esi
push 0
shl eax, 5
push 0xffffc3ff
add eax, edi
jmp short loc_00004403  ; jmp 0x4403

loc_00004427:
mov eax, dword [ebp - 0x20]
cmp eax, 0x40660
sete dl
cmp eax, 0x306c0
sete al
or dl, al
mov byte [ebp - 0x24], dl
je short loc_00004495  ; je 0x4495
xor esi, esi
lea edi, [ebx + 0x80c]

loc_00004449:
test ebx, ebx
je short loc_0000445e  ; je 0x445e
push eax
mov eax, esi
push 0
shl eax, 5
push 0xffe3ffff
add eax, edi
jmp short loc_00004481  ; jmp 0x4481

loc_0000445e:
push eax
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
mov edx, esi
push 0
shl edx, 5
push 0xffe3ffff
lea eax, [eax + edx + 0x80c]

loc_00004481:
push eax
inc esi
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp esi, dword [ebp - 0x1c]
jb short loc_00004449  ; jb 0x4449
jmp near loc_00004571  ; jmp 0x4571

loc_00004495:
cmp dword [ebp - 0x20], 0x40670
jne loc_0000457e  ; jne 0x457e
push ecx
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 2
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 0x10
je short loc_000044f7  ; je 0x44f7

loc_000044c0:
test ebx, ebx
je loc_000045af  ; je 0x45af
cmp byte [ebp - 0x28], 1
mov edx, 0x1c000000
mov eax, 0x6000000
cmove eax, edx
push edx
push eax
push 0xc1ffffff
lea eax, [ebx + 0xc00]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp byte [ebp - 0x24], 0
je short loc_000044ff  ; je 0x44ff
jmp short loc_0000451d  ; jmp 0x451d

loc_000044f7:
test ebx, ebx
je loc_00004852  ; je 0x4852

loc_000044ff:
push eax
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 2
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 0x10
je short loc_0000453a  ; je 0x453a

loc_0000451d:
push eax
push 0x40
push 0xfffffc0f
lea eax, [ebx + 0xc08]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp byte [ebp - 0x24], 0
jne short loc_00004558  ; jne 0x4558

loc_0000453a:
push edi
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 2
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 0x10
je short loc_00004586  ; je 0x4586

loc_00004558:
push esi
push 0
push 0xe07fffff
lea eax, [ebx + 0xc0c]
push eax
call fcn_00018aa4  ; call 0x18aa4

loc_0000456c:
add esp, 0x10
jmp short loc_000045af  ; jmp 0x45af

loc_00004571:
cmp dword [ebp - 0x20], 0x40670
je loc_000044c0  ; je 0x44c0

loc_0000457e:
test ebx, ebx
je loc_00004852  ; je 0x4852

loc_00004586:
push 0
push 0x15
push 0xc0c8001
push dword [ebp + 0xc]
call fcn_0000415c  ; call 0x415c
and eax, 0xe07fffff
push eax
push 0x16
push 0xc0c8001
push dword [ebp + 0xc]
call fcn_0000415c  ; call 0x415c
add esp, 0x20

loc_000045af:
cmp byte [ebp - 0x24], 0
je short loc_000045f6  ; je 0x45f6
test ebx, ebx
je short loc_000045d2  ; je 0x45d2
push ecx
push 0x13
push 0xffffffffffffffe0
lea eax, [ebx + 0xc28]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
jmp near loc_000046d0  ; jmp 0x46d0

loc_000045d2:
push edx
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 0x13
push 0xffffffffffffffe0
add eax, 0xc28
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
jmp short loc_000045fe  ; jmp 0x45fe

loc_000045f6:
test ebx, ebx
jne loc_000046d0  ; jne 0x46d0

loc_000045fe:
push eax
push 0
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 0
push 0xffbf
add eax, 0xc38
push eax
call fcn_000188bd  ; call 0x188bd
add esp, 0xc
push 1
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 0
push 0xffbf
add eax, 0xc38
push eax
call fcn_000188bd  ; call 0x188bd
add esp, 0xc
push 2
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 0
push 0xffbf
add eax, 0xc38
push eax
call fcn_000188bd  ; call 0x188bd
add esp, 0xc
push 0
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 2
push 0xfffc
add eax, 0x260
push eax
call fcn_000188bd  ; call 0x188bd
add esp, 0xc
push 1
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 2
push 0xfffc
add eax, 0x260
push eax
call fcn_000188bd  ; call 0x188bd
add esp, 0xc
push 2
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 2
push 0xfffc
add eax, 0x260
push eax
call fcn_000188bd  ; call 0x188bd
jmp short loc_000046f4  ; jmp 0x46f4

loc_000046d0:
push eax
push 0
push 0xffffffffffffffbf
lea eax, [ebx + 0xc38]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0xc
push 2
push 0xfffffffffffffffc
lea eax, [ebx + 0x260]
push eax
call fcn_00018aa4  ; call 0x18aa4

loc_000046f4:
add esp, 0x10
xor esi, esi
lea edi, [ebx + 0x900]

loc_000046ff:
test ebx, ebx
je short loc_00004715  ; je 0x4715
push eax
mov eax, esi
push 0
shl eax, 5
push 0xf3ffffff
add eax, edi
push eax
jmp short loc_00004735  ; jmp 0x4735

loc_00004715:
push eax
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
lea edx, [esi + 0x48]
push 0
shl edx, 5
push 0xf3ffffff
add edx, eax
push edx

loc_00004735:
call fcn_00018aa4  ; call 0x18aa4
inc esi
add esp, 0x10
cmp esi, dword [ebp - 0x1c]
jb short loc_000046ff  ; jb 0x46ff
xor esi, esi
lea edi, [ebx + 0x904]

loc_0000474b:
test ebx, ebx
je short loc_00004763  ; je 0x4763
push eax
mov eax, esi
push 0xc00
shl eax, 5
push 0xfffff3ff
add eax, edi
jmp short loc_00004789  ; jmp 0x4789

loc_00004763:
push eax
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
mov edx, esi
push 0xc00
shl edx, 5
push 0xfffff3ff
lea eax, [eax + edx + 0x904]

loc_00004789:
push eax
inc esi
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp esi, dword [ebp - 0x1c]
jb short loc_0000474b  ; jb 0x474b
test ebx, ebx
jne loc_00004894  ; jne 0x4894

loc_000047a0:
push esi
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
mov edx, ebx
push 0xe000000
inc ebx
shl edx, 5
push 0xc1ffffff
lea eax, [eax + edx + 0x90c]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp ebx, dword [ebp - 0x1c]
jb short loc_000047a0  ; jb 0x47a0
cmp dword [ebp - 0x20], 0x40670
jne short loc_00004802  ; jne 0x4802
cmp byte [ebp - 0x24], 0
jne short loc_00004809  ; jne 0x4809
push ecx
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 2
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 0x10
jne short loc_00004809  ; jne 0x4809

loc_00004802:
xor esi, esi
or ebx, 0xffffffff
jmp short loc_00004813  ; jmp 0x4813

loc_00004809:
mov esi, 0x124
mov ebx, 0xfffffedb

loc_00004813:
push edx
and ebx, 0xc7ffffff
push 0
or esi, 0x28000000
push 1
xor edi, edi
push 0
mov dword [ebp - 0x20], ebx
call fcn_00016bd6  ; call 0x16bd6
add esp, 0x10
lea ebx, [eax + 0x91c]

loc_00004839:
push eax
inc edi
push esi
push dword [ebp - 0x20]
push ebx
add ebx, 0x20
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp edi, dword [ebp - 0x1c]
jb short loc_00004839  ; jb 0x4839
jmp short loc_00004894  ; jmp 0x4894

loc_00004852:
push 0
push 0x15
push 0xc008001
push dword [ebp + 0xc]
call fcn_0000415c  ; call 0x415c
add esp, 0x10
and eax, 0xc1ffffff
mov edx, eax
or eax, 0x1c000000
or edx, 0x6000000
cmp byte [ebp - 0x28], 1
cmove edx, eax
push edx
push 0x16
push 0xc008001
push dword [ebp + 0xc]
call fcn_0000415c  ; call 0x415c
jmp near loc_0000456c  ; jmp 0x456c

loc_00004894:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000489c:
push ebp
mov ebp, esp
push esi
push ebx
sub esp, 0x10
mov eax, dword [ebp + 0x10]
mov ebx, dword [ebp + 0xc]
mov dword [ebp - 0xc], eax
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000048c7  ; je 0x48c7
push edx
push edx
push ref_0002138a  ; push 0x2138a
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000048c7:
test bl, bl
jne short loc_000048db  ; jne 0x48db
cmp byte [ebp - 0xc], 3
sete al
lea esi, [eax*4 + 4]
jmp short loc_000048fd  ; jmp 0x48fd

loc_000048db:
cmp bl, 1
jne short loc_000048f6  ; jne 0x48f6
cmp byte [ebp - 0xc], 2
mov esi, 4
je short loc_000048fd  ; je 0x48fd

loc_000048eb:
cmp byte [ebp - 0xc], 1
sbb esi, esi
and esi, 2
jmp short loc_000048fd  ; jmp 0x48fd

loc_000048f6:
cmp bl, 2
je short loc_000048eb  ; je 0x48eb
xor esi, esi

loc_000048fd:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000491c  ; je 0x491c
push eax
mov eax, esi
movzx eax, al
push eax
push ref_000213a6  ; push 0x213a6
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000491c:
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_00004925:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x20
mov eax, dword [ebp + 0xc]
push 0
mov ebx, dword [ebp + 0x14]
push 1
push 0
mov dword [ebp - 0x1c], eax
mov eax, dword [ebp + 0x10]
mov edi, ebx
mov dword [ebp - 0x20], eax
call fcn_00016bd6  ; call 0x16bd6
mov esi, eax
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_00004969  ; je 0x4969
push eax
push eax
push ref_000213be  ; push 0x213be
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00004969:
test bl, bl
jne short loc_00004994  ; jne 0x4994
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_00004a92  ; je 0x4a92
mov dword [ebp + 0xc], ref_000213e2  ; mov dword [ebp + 0xc], 0x213e2
mov dword [ebp + 8], 0x40
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_000153f7  ; jmp 0x153f7

loc_00004994:
sub esp, 0xc
lea eax, [esi + 0xd0c]
push eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
xor ecx, ecx
test eax, 0x100000
je short loc_000049d1  ; je 0x49d1
call fcn_000153e9  ; call 0x153e9
mov cl, 1
test al, al
je short loc_000049d1  ; je 0x49d1
push eax
push eax
push ref_00021403  ; push 0x21403
push 0x40
mov dword [ebp - 0x24], ecx
call fcn_000153f7  ; call 0x153f7
mov ecx, dword [ebp - 0x24]
add esp, 0x10

loc_000049d1:
cmp byte [ebp - 0x1c], 0
jne short loc_000049f4  ; jne 0x49f4
cmp byte [ebp - 0x20], 3
jne short loc_000049e7  ; jne 0x49e7
xor edx, edx

loc_000049df:
test cl, cl
jne short loc_00004a2a  ; jne 0x4a2a

loc_000049e3:
mov dl, 8
jmp short loc_00004a18  ; jmp 0x4a18

loc_000049e7:
mov dl, 4
mov al, dl
sub eax, ebx
test cl, cl
cmove edx, eax
jmp short loc_00004a2a  ; jmp 0x4a2a

loc_000049f4:
cmp byte [ebp - 0x1c], 1
jne short loc_00004a1c  ; jne 0x4a1c
cmp byte [ebp - 0x20], 2
jne short loc_00004a08  ; jne 0x4a08
xor edx, edx
test cl, cl
jne short loc_00004a2a  ; jne 0x4a2a
jmp short loc_000049e3  ; jmp 0x49e3

loc_00004a08:
xor edx, edx
cmp byte [ebp - 0x20], 0
jne short loc_00004a2a  ; jne 0x4a2a
mov dl, 2
test cl, cl
jne short loc_00004a2a  ; jne 0x4a2a
mov dl, 6

loc_00004a18:
sub edx, ebx
jmp short loc_00004a2a  ; jmp 0x4a2a

loc_00004a1c:
xor edx, edx
cmp byte [ebp - 0x1c], 2
jne short loc_00004a2a  ; jne 0x4a2a
cmp byte [ebp - 0x20], 0
je short loc_000049df  ; je 0x49df

loc_00004a2a:
mov dword [ebp - 0x20], edx
call fcn_000153e9  ; call 0x153e9
mov edx, dword [ebp - 0x20]
test al, al
je short loc_00004a60  ; je 0x4a60
movzx eax, dl
movzx ebx, bl
push ecx
push ecx
lea ecx, [eax + ebx - 1]
push ecx
push eax
movzx eax, byte [ebp - 0x1c]
push eax
push 0
push ref_0002141c  ; push 0x2141c
push 0x40
call fcn_000153f7  ; call 0x153f7
mov edx, dword [ebp - 0x20]
add esp, 0x20

loc_00004a60:
xor ebx, ebx
add esi, 0x91c

loc_00004a68:
lea eax, [edx + ebx]
mov ecx, edi
inc ebx
cmp cl, bl
jb short loc_00004a92  ; jb 0x4a92
mov dword [ebp - 0x1c], edx
movzx eax, al
push edx
push edx
shl eax, 5
push 0x80000000
add eax, esi
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10
mov edx, dword [ebp - 0x1c]
jmp short loc_00004a68  ; jmp 0x4a68

loc_00004a92:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00004a9a:
push ebp
mov ecx, 0x15
mov ebp, esp
push edi
push esi
mov esi, ref_00020320  ; mov esi, 0x20320
push ebx
add esp, 0xffffff80
lea edi, [ebp - 0x2d]
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 0
push 1
push 0
mov edi, eax
mov dword [ebp - 0x78], eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 1
push 1
push 0
mov ebx, eax
mov dword [ebp - 0x40], eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 2
push 1
push 0
mov dword [ebp - 0x50], eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 0
push 0
push 1
mov dword [ebp - 0x54], eax
call fcn_00016bd6  ; call 0x16bd6
mov dword [ebp - 0x64], eax
lea eax, [edi + 0x48]
mov dword [esp], eax
call fcn_00017e14  ; call 0x17e14
mov esi, eax
lea eax, [edi + 0x68]
mov dword [esp], eax
call fcn_00017e14  ; call 0x17e14
mov eax, dword [ebp + 0xc]
mov byte [ebp - 0x38], 0
mov eax, dword [eax + 0xd]
mov cl, byte [eax + 0x40]
mov dword [esp], ebx
mov byte [ebp - 0x4a], cl
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
jne short loc_00004b5f  ; jne 0x4b5f
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_00005cda  ; je 0x5cda
push eax
push eax
push ref_00021437  ; push 0x21437
push 0x40
call fcn_000153f7  ; call 0x153f7
jmp near loc_00005c93  ; jmp 0x5c93

loc_00004b5f:
push eax
push 0
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0x504
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
shr eax, 0x10
and eax, 3
mov byte [ebp - 0x48], al
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_00004ba2  ; je 0x4ba2
push eax
movzx eax, byte [ebp - 0x48]
push eax
push ref_00021454  ; push 0x21454
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00004ba2:
lea eax, [ebp - 0x34]
push eax
push 0
push 0
push ref_0002901c  ; push 0x2901c
call fcn_00019699  ; call 0x19699
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00004bfb  ; je 0x4bfb
test ebx, ebx
jns short loc_00004bfb  ; jns 0x4bfb
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00004be3  ; je 0x4be3
push edi
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00004be3:
push ebx
push ref_00020664  ; push 0x20664
push 0x67c
push ref_00020e7c  ; push 0x20e7c
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00004bfb:
mov al, byte [ebp - 0x48]
test al, al
je short loc_00004c0c  ; je 0x4c0c
cmp al, 2
jne short loc_00004c14  ; jne 0x4c14
mov byte [ebp - 0x28], 8
jmp short loc_00004c14  ; jmp 0x4c14

loc_00004c0c:
mov byte [ebp - 0x28], 8
mov byte [ebp - 0x21], 4

loc_00004c14:
call fcn_0001c58d  ; call 0x1c58d
mov ebx, 1
mov dword [ebp - 0x58], eax
call fcn_0001c5b4  ; call 0x1c5b4
push ecx
push 0
push 0
push 0
mov dword [ebp - 0x44], eax
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xe8
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test eax, 0x100000
je short loc_00004c68  ; je 0x4c68
call fcn_000153e9  ; call 0x153e9
xor ebx, ebx
test al, al
je short loc_00004c68  ; je 0x4c68
push edx
push edx
push ref_0002146b  ; push 0x2146b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00004c68:
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp byte [eax + 0x3b], 2
jne short loc_00004c78  ; jne 0x4c78
mov byte [eax + 0x3b], 1

loc_00004c78:
mov eax, dword [ebp + 0xc]
cmp byte [eax], 1
ja short loc_00004c8c  ; ja 0x4c8c

loc_00004c80:
mov dword [ebp - 0x3c], 0
jmp near loc_00004d55  ; jmp 0x4d55

loc_00004c8c:
sub esp, 0xc
push ref_000294ac  ; push 0x294ac
call fcn_00019039  ; call 0x19039
add esp, 0x10
mov dword [ebp - 0x3c], eax
test eax, eax
je short loc_00004c80  ; je 0x4c80
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp dword [eax + 0x44], 0
jne short loc_00004cc3  ; jne 0x4cc3

loc_00004caf:
mov eax, dword [ebp + 0xc]
mov ecx, dword [ebp - 0x3c]
mov eax, dword [eax + 0xd]
mov al, byte [eax + 0x3b]
mov byte [ecx + 0x45], al
jmp near loc_00004d55  ; jmp 0x4d55

loc_00004cc3:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00004cde  ; je 0x4cde
push eax
push 0x21
push ref_0002147f  ; push 0x2147f
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00004cde:
push eax
mov eax, dword [ebp + 0xc]
push 0x21
mov edi, dword [ebp - 0x3c]
mov eax, dword [eax + 0xd]
push dword [eax + 0x44]
mov eax, edi
add eax, 0x29
push eax
call fcn_0001707a  ; call 0x1707a
mov eax, dword [ebp + 0xc]
add esp, 0x10
mov byte [edi + 0x28], 1
mov eax, dword [eax + 0xd]
mov al, byte [eax + 0x3b]
cmp byte [edi + 0x45], al
je short loc_00004caf  ; je 0x4caf
dec al
je short loc_00004caf  ; je 0x4caf
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00004d2b  ; je 0x4d2b
push eax
push eax
push ref_000214b1  ; push 0x214b1
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00004d2b:
xor eax, eax

loc_00004d2d:
mov ecx, dword [ebp - 0x3c]
xor edx, edx
mov dword [ecx + eax + 0x29], 0

loc_00004d3a:
mov ecx, dword [ebp - 0x3c]
mov byte [ecx + edx + 0x35], 0
inc edx
cmp edx, 0x10
jne short loc_00004d3a  ; jne 0x4d3a
add eax, 4
cmp eax, 0xc
jne short loc_00004d2d  ; jne 0x4d2d
jmp near loc_00004caf  ; jmp 0x4caf

loc_00004d55:
lea edi, [ebp - 0x2d]

loc_00004d58:
push dword [ebp + 0xc]
add edi, 7
movzx eax, byte [edi - 5]
push eax
movzx eax, byte [edi - 6]
push eax
movzx eax, byte [edi - 7]
push eax
call fcn_00003f58  ; call 0x3f58
lea eax, [ebp - 0x18]
add esp, 0x10
cmp edi, eax
jne short loc_00004d58  ; jne 0x4d58
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00004d96  ; je 0x4d96
push eax
push eax
push ref_000214ea  ; push 0x214ea
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00004d96:
movzx eax, byte [ebp - 0x4a]
sub esp, 0xc
and esi, 0xfffffffe
push eax
push 1
push 0
push esi
push dword [ebp + 0xc]
call fcn_000041e9  ; call 0x41e9
add esp, 0x20
cmp bl, 1
jne short loc_00004df2  ; jne 0x4df2
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp byte [eax + 8], 0
je short loc_00004df2  ; je 0x4df2
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00004ddc  ; je 0x4ddc
push eax
push eax
push ref_000214f9  ; push 0x214f9
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00004ddc:
push eax
movzx eax, byte [ebp - 0x48]
push eax
movzx eax, byte [ebp - 0x44]
push eax
push dword [ebp + 0xc]
call fcn_00003152  ; call 0x3152
add esp, 0x10

loc_00004df2:
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp byte [eax + 0x39], 2
jne short loc_00004e02  ; jne 0x4e02
mov byte [eax + 0x39], 0

loc_00004e02:
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp byte [eax + 0x39], 1
jne loc_00004e9c  ; jne 0x4e9c
mov eax, dword [ebp - 0x40]
sub esp, 0xc
lea edx, [eax + 0xd0]
push edx
mov dword [ebp - 0x60], edx
call fcn_00017cfe  ; call 0x17cfe
mov word [ebp - 0x4a], ax
mov eax, dword [ebp - 0x50]
and word [ebp - 0x4a], 0xf
lea edi, [eax + 0xd0]
mov dword [esp], edi
call fcn_00017cfe  ; call 0x17cfe
mov word [ebp - 0x4c], ax
mov eax, dword [ebp - 0x54]
and word [ebp - 0x4c], 0xf
lea esi, [eax + 0xd0]
mov dword [esp], esi
call fcn_00017cfe  ; call 0x17cfe
mov edx, dword [ebp - 0x60]
add esp, 0xc
push 1
push 0xfff0
push edx
mov word [ebp - 0x5a], ax
and word [ebp - 0x5a], 0xf
call fcn_000188bd  ; call 0x188bd
add esp, 0xc
push 1
push 0xfff0
push edi
call fcn_000188bd  ; call 0x188bd
add esp, 0xc
push 1
push 0xfff0
push esi
call fcn_000188bd  ; call 0x188bd
add esp, 0x10
jmp short loc_00004eae  ; jmp 0x4eae

loc_00004e9c:
mov word [ebp - 0x5a], 0
mov word [ebp - 0x4c], 0
mov word [ebp - 0x4a], 0

loc_00004eae:
movzx eax, byte [ebp - 0x44]
xor esi, esi
mov dword [ebp - 0x6c], eax

loc_00004eb7:
push edi
push ebx
push dword [ebp - 0x6c]
lea eax, [ebp - 0x2d]
push esi
inc esi
push eax
push dword [ebp + 0xc]
push dword [ebp - 0x34]
push dword [ebp + 8]
call fcn_00003965  ; call 0x3965
add esp, 0x20
cmp esi, 3
jne short loc_00004eb7  ; jne 0x4eb7
mov eax, dword [ebp + 0xc]
cmp byte [eax], 2
ja loc_00004f95  ; ja 0x4f95

loc_00004ee4:
mov esi, dword [ebp - 0x40]
sub esp, 0xc
mov eax, esi
add eax, 0xdd8
push eax
mov edi, eax
mov dword [ebp - 0x60], eax
call fcn_00017d8a  ; call 0x17d8a
pop ecx
pop ebx
or eax, 0x8002
push eax
push edi
call fcn_00017dcb  ; call 0x17dcb
pop edi
pop eax
mov eax, esi
add eax, 0xc24
push 0xfffeffff
push eax
call fcn_00018a7a  ; call 0x18a7a
pop eax
mov eax, dword [ebp - 0x50]
pop edx
add eax, 0xc24
push 0xfffeffff
push eax
call fcn_00018a7a  ; call 0x18a7a
mov eax, dword [ebp - 0x54]
pop ecx
pop ebx
lea ebx, [ebp - 0x2d]
add eax, 0xc24
push 0xfffeffff
push eax
call fcn_00018a7a  ; call 0x18a7a
movzx eax, byte [ebp - 0x48]
mov esi, dword [ebp - 0x3c]
mov dword [esp], eax
mov edi, eax
push esi
push dword [ebp + 0xc]
push dword [ebp - 0x34]
push dword [ebp + 8]
mov dword [ebp - 0x68], eax
call fcn_000025c6  ; call 0x25c6
add esp, 0x1c
push edi
push 3
lea eax, [ebp - 0x2d]
push eax
push esi
xor esi, esi
push dword [ebp - 0x34]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00003719  ; call 0x3719
mov eax, dword [ebp - 0x64]
add esp, 0x20
add eax, 0xc
mov dword [ebp - 0x70], eax
jmp near loc_0000502c  ; jmp 0x502c

loc_00004f95:
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp byte [eax + 0x52], 1
jne loc_00004ee4  ; jne 0x4ee4
push edx
mov al, byte [eax + 0x53]
xor ebx, ebx
mov edi, dword [ebp - 0x40]
and eax, 0xf
shl eax, 0x10
push eax
mov eax, edi
push 0xfff0ffff
add eax, 0xd0c
push eax
call fcn_00018aa4  ; call 0x18aa4
lea esi, [edi + 0xa00]
add esp, 0x10

loc_00004fd0:
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp bl, byte [eax + 0x53]
jne short loc_00004fea  ; jne 0x4fea
push eax
push eax
push 0xfffffdff
push esi
call fcn_00018a7a  ; call 0x18a7a
jmp short loc_00004ff7  ; jmp 0x4ff7

loc_00004fea:
push edi
push edi
push 0x200
push esi
call fcn_00018a50  ; call 0x18a50

loc_00004ff7:
inc ebx
add esp, 0x10
add esi, 0x10
cmp bl, 0x10
jne short loc_00004fd0  ; jne 0x4fd0
jmp near loc_00004ee4  ; jmp 0x4ee4

loc_00005008:
sub esp, 0xc
lea eax, [edi + 0xba]
push eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test al, 0x40
jne short loc_00005053  ; jne 0x5053

loc_0000501e:
add ebx, 7
lea eax, [ebp - 0x18]
cmp ebx, eax
je loc_000050bc  ; je 0x50bc

loc_0000502c:
push ecx
movzx eax, byte [ebx + 2]
push eax
movzx eax, byte [ebx + 1]
push eax
movzx eax, byte [ebx]
push eax
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], eax
mov edi, eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
jne short loc_00005008  ; jne 0x5008
jmp short loc_0000501e  ; jmp 0x501e

loc_00005053:
mov byte [ebx + 4], 1
add edi, 0x18
push ecx
push 0x10100
push 0xff0000ff
push edi
call fcn_00018aa4  ; call 0x18aa4
pop eax
pop edx
push 0
push dword [ebp - 0x64]
call fcn_00017d40  ; call 0x17d40
push 0x10
push 0
push 0
push 1
call fcn_000027f4  ; call 0x27f4
add esp, 0x20
test eax, eax
je short loc_000050a7  ; je 0x50a7
add eax, dword [ebp - 0x70]
sub esp, 0xc
push eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
and eax, 0xf
cmp al, 3
mov byte [ebx + 6], al
mov al, 1
cmovae esi, eax

loc_000050a7:
push edx
push edx
push 0xff0000ff
push edi
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10
jmp near loc_0000501e  ; jmp 0x501e

loc_000050bc:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000050d6  ; je 0x50d6
push eax
push eax
push ref_00021513  ; push 0x21513
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000050d6:
lea ebx, [ebp - 0x2d]

loc_000050d9:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00005107  ; je 0x5107
push eax
push eax
movzx eax, byte [ebx + 6]
push eax
movzx eax, byte [ebx + 4]
push eax
movzx eax, byte [ebx + 2]
push eax
movzx eax, byte [ebx + 1]
push eax
push ref_0002152d  ; push 0x2152d
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_00005107:
add ebx, 7
lea eax, [ebp - 0x18]
cmp ebx, eax
jne short loc_000050d9  ; jne 0x50d9
mov eax, esi
test al, al
jne short loc_0000512c  ; jne 0x512c

loc_00005117:
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp byte [eax + 0x39], 1
jne loc_00005321  ; jne 0x5321
jmp near loc_0000528a  ; jmp 0x528a

loc_0000512c:
mov eax, dword [ebp - 0x58]
cmp eax, 0x40660
je short loc_0000513d  ; je 0x513d
cmp eax, 0x306c0
jne short loc_0000514a  ; jne 0x514a

loc_0000513d:
xor ebx, ebx
lea esi, [ebp - 0x38]
lea edi, [ebp - 0x35]
jmp near loc_000051cc  ; jmp 0x51cc

loc_0000514a:
cmp dword [ebp - 0x58], 0x40670
jne short loc_00005117  ; jne 0x5117
push eax
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 2
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 0x10
jne short loc_0000513d  ; jne 0x513d
jmp short loc_00005117  ; jmp 0x5117

loc_00005173:
cmp bl, 0xc
je short loc_000051de  ; je 0x51de
test bl, bl
jne short loc_00005189  ; jne 0x5189
push eax
push eax
push esi
push 0

loc_00005181:
call fcn_0000930f  ; call 0x930f
add esp, 0x10

loc_00005189:
sub esp, 0xc
movzx ecx, byte [ebp - 0x38]
push edi
lea edx, [ebp - 0x36]
push edx
lea eax, [ebp - 0x37]
push eax
push ecx
mov dword [ebp - 0x70], eax
mov eax, dword [ebp + 0xc]
mov dword [ebp - 0x74], edx
mov ecx, dword [eax + 0xd]
movzx ecx, byte [ecx + ebx + 0x19]
push ecx
call fcn_0000936b  ; call 0x936b
mov edx, dword [ebp - 0x74]
add esp, 0x20
mov eax, dword [ebp - 0x70]
push edi
push edx
push eax
push ebx
inc ebx
call fcn_00009450  ; call 0x9450
add esp, 0x10
cmp ebx, 0x10
je short loc_000051eb  ; je 0x51eb

loc_000051cc:
cmp bl, 8
jne short loc_00005173  ; jne 0x5173
cmp byte [ebp - 0x22], 0
je short loc_00005189  ; je 0x5189
push eax
push eax
push esi
push 8
jmp short loc_00005181  ; jmp 0x5181

loc_000051de:
cmp byte [ebp - 0x1b], 0
je short loc_00005189  ; je 0x5189
push eax
push eax
push esi
push 0xc
jmp short loc_00005181  ; jmp 0x5181

loc_000051eb:
cmp dword [ebp - 0x44], 0
je short loc_00005215  ; je 0x5215
cmp dword [ebp - 0x58], 0x40670
jne short loc_00005215  ; jne 0x5215
mov edi, dword [ebp - 0x60]
sub esp, 0xc
push edi
call fcn_00017d8a  ; call 0x17d8a
pop edx
pop ecx
and ah, 0x7f
push eax
push edi
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10

loc_00005215:
lea ebx, [ebp - 0x2d]

loc_00005218:
cmp byte [ebx + 4], 0
je short loc_00005257  ; je 0x5257
push eax
movzx eax, byte [ebx + 2]
push eax
movzx eax, byte [ebx + 1]
push eax
movzx eax, byte [ebx]
push eax
call fcn_00016bd6  ; call 0x16bd6
mov esi, eax
pop eax
pop edx
lea eax, [esi + 0xd98]
add esi, 0xb0
push 1
push eax
call fcn_00018a50  ; call 0x18a50
pop ecx
pop edi
push 0x20
push esi
call fcn_00018863  ; call 0x18863
add esp, 0x10

loc_00005257:
add ebx, 7
lea eax, [ebp - 0x18]
cmp ebx, eax
jne short loc_00005218  ; jne 0x5218
lea ebx, [ebp - 0x2d]

loc_00005264:
cmp byte [ebx + 4], 0
je short loc_0000527b  ; je 0x527b
push 0
push ebx
push dword [ebp - 0x34]
push dword [ebp + 8]
call fcn_00005ce2  ; call 0x5ce2
add esp, 0x10

loc_0000527b:
add ebx, 7
lea eax, [ebp - 0x18]
cmp ebx, eax
jne short loc_00005264  ; jne 0x5264
jmp near loc_00005117  ; jmp 0x5117

loc_0000528a:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000052a4  ; je 0x52a4
push eax
push eax
push ref_00021565  ; push 0x21565
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000052a4:
sub esp, 0xc
push dword [ebp - 0x68]
push dword [ebp - 0x6c]
push dword [ebp - 0x34]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_000036a6  ; call 0x36a6
movzx eax, word [ebp - 0x4a]
add esp, 0x1c
push eax
mov eax, dword [ebp - 0x40]
push 0xfff0
add eax, 0xd0
push eax
call fcn_000188bd  ; call 0x188bd
movzx eax, word [ebp - 0x4c]
add esp, 0xc
push eax
mov eax, dword [ebp - 0x50]
push 0xfff0
add eax, 0xd0
push eax
call fcn_000188bd  ; call 0x188bd
movzx eax, word [ebp - 0x5a]
add esp, 0xc
push eax
mov eax, dword [ebp - 0x54]
push 0xfff0
add eax, 0xd0
push eax
call fcn_000188bd  ; call 0x188bd
mov eax, dword [ebp - 0x34]
add esp, 0xc
push 0x186a0
push eax
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
add esp, 0x10

loc_00005321:
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp byte [eax + 0x3b], 2
jne short loc_00005331  ; jne 0x5331
mov byte [eax + 0x3b], 1

loc_00005331:
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp byte [eax + 0x3b], 1
jne short loc_00005351  ; jne 0x5351
push dword [ebp - 0x3c]
push dword [ebp - 0x34]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00008275  ; call 0x8275
add esp, 0x10

loc_00005351:
cmp dword [ebp - 0x58], 0x40670
sete al
cmp dword [ebp - 0x44], 0
mov byte [ebp - 0x74], al
je short loc_00005371  ; je 0x5371
test al, al
je short loc_00005371  ; je 0x5371
push edi
push edi
push 0x4000
jmp short loc_00005378  ; jmp 0x5378

loc_00005371:
push esi
push esi
push 0xc000

loc_00005378:
push dword [ebp - 0x60]
call fcn_00018a50  ; call 0x18a50
add esp, 0x10
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000539d  ; je 0x539d
push ebx
push ebx
push ref_00021580  ; push 0x21580
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000539d:
mov eax, dword [ebp - 0x64]
lea edi, [ebp - 0x2d]
mov byte [ebp - 0x60], 0
mov byte [ebp - 0x70], 0
mov byte [ebp - 0x44], 0
add eax, 0xc
mov byte [ebp - 0x5a], 0
mov byte [ebp - 0x4a], 0
mov dword [ebp - 0x80], eax

loc_000053bd:
mov al, byte [edi]
mov ecx, dword [ebp - 0x3c]
mov byte [ebp - 0x5c], al
mov al, byte [edi + 1]
mov byte [ebp - 0x5b], al
mov al, byte [edi + 2]
mov byte [ebp - 0x6c], al
movzx eax, byte [edi + 3]
mov byte [ebp - 0x4c], al
test ecx, ecx
je short loc_000053ea  ; je 0x53ea
mov edx, dword [ebp + 0xc]
mov edx, dword [edx + 0xd]
mov dl, byte [edx + eax + 0x5c]
mov byte [ecx + eax + 0x47], dl

loc_000053ea:
movzx eax, byte [ebp - 0x6c]
push ecx
push eax
movzx eax, byte [ebp - 0x5b]
push eax
movzx eax, byte [ebp - 0x5c]
push eax
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], eax
mov esi, eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
je short loc_0000541c  ; je 0x541c
cmp byte [edi + 4], 0
jne short loc_0000542b  ; jne 0x542b

loc_0000541c:
cmp byte [eax + 4], 0
je loc_00005720  ; je 0x5720
jmp near loc_000056fa  ; jmp 0x56fa

loc_0000542b:
cmp byte [eax + 4], 0
jne short loc_0000547a  ; jne 0x547a
push eax
push 0x10100
push 0xff0000ff
lea ebx, [esi + 0x18]
push ebx
call fcn_00018aa4  ; call 0x18aa4
pop eax
pop edx
push 0
push dword [ebp - 0x64]
call fcn_00017d40  ; call 0x17d40
lea eax, [esi + 0x11a]
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test al, 2
jne loc_00005720  ; jne 0x5720
push eax
push eax
push 0xff0000ff
push ebx
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10

loc_0000547a:
mov eax, dword [ebp + 0xc]
cmp byte [eax], 0xf
jbe short loc_000054cf  ; jbe 0x54cf
movzx ebx, byte [ebp - 0x4c]
mov eax, dword [eax + 0xd]
cmp byte [eax + ebx + 0x61], 0
je short loc_000054cf  ; je 0x54cf
sub esp, 0xc
lea eax, [esi + 0xb2]
push eax
call fcn_00017cfe  ; call 0x17cfe
mov ecx, dword [ebp + 0xc]
add esp, 0x10
mov edx, dword [ecx + 0xd]
and eax, 0x3f0
sar eax, 4
movzx edx, byte [edx + ebx + 0x61]
cmp dl, al
je short loc_000054cf  ; je 0x54cf
movzx eax, byte [ebp - 0x6c]
push eax
movzx eax, byte [ebp - 0x5b]
push eax
push edx
push dword [ebp + 8]
call fcn_0000286a  ; call 0x286a
add esp, 0x10

loc_000054cf:
mov eax, dword [ebp + 0xc]
cmp byte [eax], 7
jbe short loc_000054eb  ; jbe 0x54eb
mov edx, dword [eax + 0xd]
movzx eax, byte [ebp - 0x4c]
mov bl, byte [edx + eax + 0x5c]
cmp bl, 0xff
jne loc_0000560f  ; jne 0x560f

loc_000054eb:
sub esp, 0xc
lea eax, [esi + 0xac]
push eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0xc
push 0x10100
push 0xff0000ff
lea ebx, [esi + 0x18]
push ebx
shr eax, 4
and eax, 0x3f
mov byte [ebp - 0x79], al
call fcn_00018aa4  ; call 0x18aa4
pop edx
pop ecx
push 0
push dword [ebp - 0x64]
call fcn_00017d40  ; call 0x17d40
pop eax
push dword [ebp - 0x64]
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
inc eax
jne short loc_0000557e  ; jne 0x557e
sub esp, 0xc
add esi, 0xb2
push esi
call fcn_00017cfe  ; call 0x17cfe
mov esi, eax
and esi, 0x3f0
sar esi, 4
mov eax, esi
mov byte [ebp - 0x70], al
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_000055aa  ; je 0x55aa
movzx eax, byte [ebp - 0x6c]
sub esp, 0xc
push esi
push eax
movzx eax, byte [ebp - 0x5b]
push eax
push ref_0002159c  ; push 0x2159c
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20
jmp short loc_000055aa  ; jmp 0x55aa

loc_0000557e:
push 0x10
push 0
push 0
push 1
call fcn_000027f4  ; call 0x27f4
add esp, 0x10
test eax, eax
je short loc_000055aa  ; je 0x55aa
add eax, dword [ebp - 0x80]
sub esp, 0xc
push eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
shr eax, 4
and eax, 0x3f
mov byte [ebp - 0x70], al

loc_000055aa:
push eax
push eax
push 0xff0000ff
push ebx
call fcn_00018a7a  ; call 0x18a7a
mov cl, byte [ebp - 0x79]
add esp, 0x10
mov bl, byte [ebp - 0x70]
xor edx, edx
mov al, cl
sub eax, ebx
cmp cl, bl
cmova edx, eax
mov bl, 0xff
mov al, dl
shr al, 1
mov dword [ebp - 0x84], edx
mov byte [ebp - 0x60], al
call fcn_000153e9  ; call 0x153e9
mov edx, dword [ebp - 0x84]
test al, al
je short loc_00005633  ; je 0x5633
push eax
movzx edx, dl
push eax
movzx eax, byte [ebp - 0x60]
push eax
movzx eax, byte [ebp - 0x70]
push edx
push eax
movzx eax, byte [ebp - 0x79]
push eax
push ref_00021608  ; push 0x21608
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20
jmp short loc_00005633  ; jmp 0x5633

loc_0000560f:
test bl, bl
je short loc_00005633  ; je 0x5633
call fcn_000153e9  ; call 0x153e9
mov byte [ebp - 0x60], bl
test al, al
je short loc_00005633  ; je 0x5633
push eax
movzx eax, bl
push eax
push ref_0002167b  ; push 0x2167b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00005633:
mov eax, dword [ebp - 0x58]
cmp eax, 0x40660
je short loc_00005644  ; je 0x5644
cmp eax, 0x306c0
jne short loc_0000564a  ; jne 0x564a

loc_00005644:
test bl, bl
je short loc_000056c6  ; je 0x56c6
jmp short loc_00005670  ; jmp 0x5670

loc_0000564a:
cmp byte [ebp - 0x74], 0
je short loc_000056c6  ; je 0x56c6
push eax
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 2
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 0x10
jne short loc_00005644  ; jne 0x5644
jmp short loc_000056c6  ; jmp 0x56c6

loc_00005670:
movzx esi, byte [ebp - 0x6c]
push eax
push dword [ebp - 0x68]
push esi
push dword [ebp + 8]
call fcn_0000489c  ; call 0x489c
add esp, 0x10
mov bl, al
cmp byte [ebp - 0x60], al
jbe short loc_000056ad  ; jbe 0x56ad
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000056b0  ; je 0x56b0
push eax
movzx eax, bl
push eax
push ref_00021646  ; push 0x21646
push 0x80000040
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp short loc_000056b0  ; jmp 0x56b0

loc_000056ad:
mov bl, byte [ebp - 0x60]

loc_000056b0:
movzx eax, bl
push eax
push dword [ebp - 0x68]
push esi
push dword [ebp + 8]
call fcn_00004925  ; call 0x4925
add esp, 0x10
mov byte [ebp - 0x60], bl

loc_000056c6:
call fcn_000153e9  ; call 0x153e9
movzx esi, byte [ebp - 0x6c]
movzx ebx, byte [ebp - 0x5b]
test al, al
je short loc_000056e8  ; je 0x56e8
push esi
push ebx
push ref_00021690  ; push 0x21690
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000056e8:
movzx eax, byte [ebp - 0x5c]
push esi
push ebx
push eax
push dword [ebp + 0xc]
call fcn_00003aa5  ; call 0x3aa5
add esp, 0x10

loc_000056fa:
cmp byte [ebp - 0x4c], 0
jne short loc_00005706  ; jne 0x5706
cmp byte [ebp - 0x48], 3
je short loc_00005763  ; je 0x5763

loc_00005706:
cmp byte [ebp - 0x4c], 1
jne short loc_00005712  ; jne 0x5712
cmp byte [ebp - 0x48], 2
je short loc_0000577b  ; je 0x577b

loc_00005712:
cmp byte [ebp - 0x4c], 2
jne short loc_00005753  ; jne 0x5753
cmp byte [ebp - 0x48], 0
je short loc_0000577f  ; je 0x577f
jmp short loc_00005753  ; jmp 0x5753

loc_00005720:
mov al, byte [ebp - 0x48]
cmp al, 3
je short loc_0000576d  ; je 0x576d
cmp al, 2
jne short loc_00005737  ; jne 0x5737
cmp byte [ebp - 0x4c], 0
mov byte [ebp - 0x44], 1
je short loc_0000574f  ; je 0x574f
jmp short loc_00005767  ; jmp 0x5767

loc_00005737:
cmp byte [ebp - 0x48], 0
jne short loc_00005753  ; jne 0x5753
cmp byte [ebp - 0x4c], 0
je short loc_0000574f  ; je 0x574f
cmp byte [ebp - 0x4c], 1
jne short loc_0000577b  ; jne 0x577b
mov byte [ebp - 0x5a], 1
jmp short loc_00005753  ; jmp 0x5753

loc_0000574f:
mov byte [ebp - 0x4a], 1

loc_00005753:
add edi, 7
lea eax, [ebp - 0x18]
cmp edi, eax
jne loc_000053bd  ; jne 0x53bd
jmp short loc_0000577f  ; jmp 0x577f

loc_00005763:
mov byte [ebp - 0x44], 1

loc_00005767:
mov byte [ebp - 0x5a], 1
jmp short loc_0000577f  ; jmp 0x577f

loc_0000576d:
mov byte [ebp - 0x44], 1
mov byte [ebp - 0x5a], 1
mov byte [ebp - 0x4a], 1
jmp short loc_0000577f  ; jmp 0x577f

loc_0000577b:
mov byte [ebp - 0x44], 1

loc_0000577f:
mov dl, byte [ebp - 0x44]
xor ebx, ebx
mov al, byte [ebp - 0x5a]
xor edx, 1
xor eax, 1
or dl, al
je short loc_00005798  ; je 0x5798
mov bl, byte [ebp - 0x4a]
mov byte [ebp - 0x4a], 0

loc_00005798:
sub esp, 0xc
mov esi, 1
push dword [ebp - 0x40]
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
jne short loc_000057cb  ; jne 0x57cb
call fcn_000153e9  ; call 0x153e9
xor esi, esi
test al, al
je short loc_000057cb  ; je 0x57cb
push ecx
push ecx
push ref_000216bb  ; push 0x216bb
push 2
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000057cb:
or bl, byte [ebp - 0x4a]
je loc_000058fa  ; je 0x58fa
mov eax, esi
test al, al
je loc_000058fa  ; je 0x58fa
mov edi, dword [ebp - 0x40]
mov ebx, 0x3e9
push eax
push eax
push 0x100
mov eax, edi
add eax, 0x224
push eax
call fcn_00018a50  ; call 0x18a50
lea esi, [edi + 0x464]
pop eax
mov eax, edi
pop edx
add eax, 0xb0
push 0x10
push eax
call fcn_0001866c  ; call 0x1866c
add esp, 0x10

loc_00005814:
sub esp, 0xc
push esi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
and eax, 0x3f
cmp eax, 2
je short loc_0000583e  ; je 0x583e
dec bx
je short loc_0000583e  ; je 0x583e
mov eax, dword [ebp - 0x34]
push edi
push 0x64
push eax
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
add esp, 0x10
jmp short loc_00005814  ; jmp 0x5814

loc_0000583e:
mov eax, dword [ebp - 0x40]
push esi
push 0x20
push 0xcf
add eax, 0xc20
push eax
call fcn_000186c6  ; call 0x186c6
mov eax, dword [ebp - 0x58]
add esp, 0x10
cmp eax, 0x40660
je short loc_00005868  ; je 0x5868
cmp eax, 0x306c0
jne short loc_0000588b  ; jne 0x588b

loc_00005868:
mov edi, dword [ebp - 0x68]
push ebx
push edi
push 0
push dword [ebp + 8]
call fcn_0000489c  ; call 0x489c
movzx eax, al
push eax
push edi
push 0
push dword [ebp + 8]
call fcn_00004925  ; call 0x4925
add esp, 0x20
jmp short loc_000058af  ; jmp 0x58af

loc_0000588b:
cmp byte [ebp - 0x74], 0
je short loc_000058af  ; je 0x58af
push ecx
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 2
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 0x10
jne short loc_00005868  ; jne 0x5868

loc_000058af:
cmp byte [ebp - 0x4a], 0
je short loc_000058fa  ; je 0x58fa
push eax
push eax
mov eax, dword [ebp - 0x40]
push 0x40000000
add eax, 0xd20
push eax
call fcn_00018a50  ; call 0x18a50
pop eax
mov eax, dword [ebp - 0x78]
pop edx
add eax, 0x54
push 0xf7
push eax
call fcn_00018699  ; call 0x18699
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_000058fa  ; je 0x58fa
push eax
push eax
push ref_000216bb  ; push 0x216bb
push 2
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000058fa:
sub esp, 0xc
mov bl, 1
push dword [ebp - 0x50]
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
jne short loc_0000592a  ; jne 0x592a
call fcn_000153e9  ; call 0x153e9
xor ebx, ebx
test al, al
je short loc_0000592a  ; je 0x592a
push edi
push edi
push ref_000216cc  ; push 0x216cc
push 2
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000592a:
test byte [ebp - 0x5a], bl
je loc_00005a4f  ; je 0x5a4f
mov edi, dword [ebp - 0x50]
push ecx
push ecx
push 0x100
mov eax, edi
add eax, 0x224
push eax
call fcn_00018a50  ; call 0x18a50
mov eax, edi
pop ebx
add eax, 0xb0
pop esi
mov ebx, 0x3e9
push 0x10
push eax
call fcn_0001866c  ; call 0x1866c
mov eax, dword [ebp - 0x40]
add esp, 0x10
lea esi, [eax + 0x464]

loc_0000596c:
sub esp, 0xc
push esi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
shr eax, 8
and eax, 0x3f
cmp eax, 2
je short loc_00005999  ; je 0x5999
dec bx
je short loc_00005999  ; je 0x5999
mov eax, dword [ebp - 0x34]
push edx
push 0x64
push eax
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
add esp, 0x10
jmp short loc_0000596c  ; jmp 0x596c

loc_00005999:
push eax
mov eax, dword [ebp - 0x50]
push 0x20
push 0xcf
add eax, 0xc20
push eax
call fcn_000186c6  ; call 0x186c6
mov eax, dword [ebp - 0x58]
add esp, 0x10
cmp eax, 0x40660
je short loc_000059c3  ; je 0x59c3
cmp eax, 0x306c0
jne short loc_000059e6  ; jne 0x59e6

loc_000059c3:
mov esi, dword [ebp - 0x68]
push eax
push esi
push 1
push dword [ebp + 8]
call fcn_0000489c  ; call 0x489c
movzx eax, al
push eax
push esi
push 1
push dword [ebp + 8]
call fcn_00004925  ; call 0x4925
add esp, 0x20
jmp short loc_00005a0a  ; jmp 0x5a0a

loc_000059e6:
cmp byte [ebp - 0x74], 0
je short loc_00005a0a  ; je 0x5a0a
push eax
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 2
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 0x10
jne short loc_000059c3  ; jne 0x59c3

loc_00005a0a:
mov eax, dword [ebp - 0x50]
push esi
push esi
push 0x40000000
add eax, 0xd20
push eax
call fcn_00018a50  ; call 0x18a50
pop edi
pop eax
mov eax, dword [ebp - 0x78]
push 0xfb
add eax, 0x54
push eax
call fcn_00018699  ; call 0x18699
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_00005a4f  ; je 0x5a4f
push ebx
push ebx
push ref_000216cc  ; push 0x216cc
push 2
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00005a4f:
sub esp, 0xc
mov bl, 1
push dword [ebp - 0x54]
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
jne short loc_00005a7f  ; jne 0x5a7f
call fcn_000153e9  ; call 0x153e9
xor ebx, ebx
test al, al
je short loc_00005a7f  ; je 0x5a7f
push ecx
push ecx
push ref_000216dd  ; push 0x216dd
push 2
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00005a7f:
test byte [ebp - 0x44], bl
je loc_00005ba4  ; je 0x5ba4
mov edi, dword [ebp - 0x54]
mov ebx, 0x3e9
push eax
push eax
push 0x100
mov eax, edi
add eax, 0x224
push eax
call fcn_00018a50  ; call 0x18a50
pop eax
mov eax, edi
pop edx
add eax, 0xb0
push 0x10
push eax
call fcn_0001866c  ; call 0x1866c
mov eax, dword [ebp - 0x40]
add esp, 0x10
lea esi, [eax + 0x464]

loc_00005ac1:
sub esp, 0xc
push esi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
shr eax, 0x10
and eax, 0x3f
cmp eax, 2
je short loc_00005aee  ; je 0x5aee
dec bx
je short loc_00005aee  ; je 0x5aee
mov eax, dword [ebp - 0x34]
push edi
push 0x64
push eax
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
add esp, 0x10
jmp short loc_00005ac1  ; jmp 0x5ac1

loc_00005aee:
mov eax, dword [ebp - 0x54]
push esi
push 0x20
push 0xcf
add eax, 0xc20
push eax
call fcn_000186c6  ; call 0x186c6
mov eax, dword [ebp - 0x58]
add esp, 0x10
cmp eax, 0x40660
je short loc_00005b18  ; je 0x5b18
cmp eax, 0x306c0
jne short loc_00005b3b  ; jne 0x5b3b

loc_00005b18:
mov edi, dword [ebp - 0x68]
push ebx
push edi
push 2
push dword [ebp + 8]
call fcn_0000489c  ; call 0x489c
movzx eax, al
push eax
push edi
push 2
push dword [ebp + 8]
call fcn_00004925  ; call 0x4925
add esp, 0x20
jmp short loc_00005b5f  ; jmp 0x5b5f

loc_00005b3b:
cmp byte [ebp - 0x74], 0
je short loc_00005b5f  ; je 0x5b5f
push ecx
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 2
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 0x10
jne short loc_00005b18  ; jne 0x5b18

loc_00005b5f:
mov eax, dword [ebp - 0x54]
push edi
push edi
push 0x40000000
add eax, 0xd20
push eax
call fcn_00018a50  ; call 0x18a50
pop eax
mov eax, dword [ebp - 0x78]
pop edx
add eax, 0x54
push 0xfd
push eax
call fcn_00018699  ; call 0x18699
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_00005ba4  ; je 0x5ba4
push esi
push esi
push ref_000216dd  ; push 0x216dd
push 2
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00005ba4:
lea ebx, [ebp - 0x2d]

loc_00005ba7:
movzx eax, byte [ebx + 2]
sub esp, 0xc
add ebx, 7
movzx edi, byte [ebx - 6]
movzx esi, byte [ebx - 7]
push eax
push edi
push esi
push dword [ebp - 0x34]
push dword [ebp + 8]
mov dword [ebp - 0x48], eax
call fcn_000024e1  ; call 0x24e1
mov eax, dword [ebp - 0x48]
add esp, 0x1c
push eax
push edi
push esi
call fcn_000023ad  ; call 0x23ad
lea eax, [ebp - 0x18]
add esp, 0x10
cmp ebx, eax
jne short loc_00005ba7  ; jne 0x5ba7
mov edi, dword [ebp - 0x3c]
test edi, edi
je loc_00005c71  ; je 0x5c71
mov eax, dword [ebp - 0x40]
sub esp, 0xc
add eax, 0x11a
push eax
call fcn_00017cfe  ; call 0x17cfe
shr ax, 1
xor eax, 1
mov bl, al
mov eax, dword [ebp - 0x50]
and ebx, 1
add eax, 0x11a
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
mov dl, bl
or edx, 2
test al, 2
mov eax, dword [ebp - 0x54]
cmove ebx, edx
add eax, 0x11a
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
mov dl, bl
add esp, 0x10
or edx, 4
test al, 2
cmove ebx, edx
not ebx
cmp byte [edi + 0x46], bl
je short loc_00005c71  ; je 0x5c71
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00005c6b  ; je 0x5c6b
movzx eax, bl
push eax
mov eax, dword [ebp - 0x3c]
movzx eax, byte [eax + 0x46]
push eax
push ref_000216ee  ; push 0x216ee
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00005c6b:
mov eax, dword [ebp - 0x3c]
mov byte [eax + 0x46], bl

loc_00005c71:
mov eax, dword [ebp + 0xc]
cmp byte [eax], 0xa
ja short loc_00005c98  ; ja 0x5c98

loc_00005c79:
call fcn_00003b38  ; call 0x3b38
movzx eax, byte [ebp - 0x44]
push ebx
push eax
movzx eax, byte [ebp - 0x5a]
push eax
movzx eax, byte [ebp - 0x4a]
push eax
call fcn_00003c89  ; call 0x3c89

loc_00005c93:
add esp, 0x10
jmp short loc_00005cda  ; jmp 0x5cda

loc_00005c98:
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp byte [eax + 0x5f], 1
jne short loc_00005c79  ; jne 0x5c79
lea ebx, [ebp - 0x2d]

loc_00005ca7:
push eax
movzx eax, byte [ebx + 2]
add ebx, 7
push eax
movzx eax, byte [ebx - 6]
push eax
movzx eax, byte [ebx - 7]
push eax
call fcn_00016bd6  ; call 0x16bd6
pop edx
pop ecx
push 1
add eax, 0x25c
push eax
call fcn_00018a50  ; call 0x18a50
lea eax, [ebp - 0x18]
add esp, 0x10
cmp ebx, eax
jne short loc_00005ca7  ; jne 0x5ca7
jmp short loc_00005c79  ; jmp 0x5c79

loc_00005cda:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00005ce2:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x20
mov esi, dword [ebp + 0x10]
mov eax, dword [ebp + 0x14]
cmp byte [esi + 6], 2
push 0
mov edi, eax
push 0
push 0
seta bl
mov dword [ebp - 0x20], eax
mov byte [ebp - 0x19], al
call fcn_00016bd6  ; call 0x16bd6
add eax, 0x48
mov dword [esp], eax
call fcn_00017e14  ; call 0x17e14
add esp, 0x10
mov dword [ebp - 0x24], eax
mov eax, edi
test al, al
jne short loc_00005d6f  ; jne 0x5d6f
test bl, bl
je short loc_00005d6f  ; je 0x5d6f
xor edi, edi

loc_00005d28:
push eax
movzx eax, byte [esi + 2]
push eax
movzx eax, byte [esi + 1]
push eax
movzx eax, byte [esi]
push eax
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xd2
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test al, 2
jne short loc_00005d75  ; jne 0x5d75
push ecx
mov eax, dword [ebp + 0xc]
inc edi
push 0x3e8
push dword [ebp + 0xc]
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
add esp, 0x10
cmp edi, 0x64
jne short loc_00005d28  ; jne 0x5d28
xor eax, eax
jmp short loc_00005d77  ; jmp 0x5d77

loc_00005d6f:
xor eax, eax
xor edi, edi
jmp short loc_00005d77  ; jmp 0x5d77

loc_00005d75:
mov al, 1

loc_00005d77:
test al, al
je short loc_00005d87  ; je 0x5d87
test bl, bl
je short loc_00005d87  ; je 0x5d87

loc_00005d7f:
mov ebx, dword [ebp - 0x24]
and ebx, 0xfffffffe
jmp short loc_00005dae  ; jmp 0x5dae

loc_00005d87:
test bl, bl
je short loc_00005d7f  ; je 0x5d7f
cmp byte [ebp - 0x20], 0
jne short loc_00005d7f  ; jne 0x5d7f

loc_00005d91:
mov eax, 0x80000012
jmp short loc_00005e0f  ; jmp 0x5e0f

loc_00005d98:
push eax
mov eax, dword [ebp + 0xc]
inc edi
push 0x3e8
push dword [ebp + 0xc]
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
add esp, 0x10

loc_00005dae:
cmp edi, 0x63
ja short loc_00005d91  ; ja 0x5d91
cmp byte [ebp - 0x19], 0
je short loc_00005de0  ; je 0x5de0
push 0
push 0x13
push 0x4648080
push ebx
call fcn_0000415c  ; call 0x415c
movzx ecx, byte [esi + 2]
add esp, 0x10
shl ecx, 3
shr eax, cl
and eax, 0x3f
cmp eax, 0x10

loc_00005dda:
jne short loc_00005d98  ; jne 0x5d98
xor eax, eax
jmp short loc_00005e0f  ; jmp 0x5e0f

loc_00005de0:
push edx
movzx eax, byte [esi + 2]
push eax
movzx eax, byte [esi + 1]
push eax
movzx eax, byte [esi]
push eax
call fcn_00016bd6  ; call 0x16bd6
add eax, 0x214
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
shr eax, 0x10
and eax, 0xf
cmp eax, 7
jmp short loc_00005dda  ; jmp 0x5dda

loc_00005e0f:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00005e17:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x20
mov ebx, dword [ebp + 8]
push 0
mov edi, dword [ebp + 0xc]
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
mov esi, eax
lea eax, [eax + 2]
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
mov edx, eax
and eax, 0xfffffffd
cmp ax, 0x8c44
je short loc_00005eae  ; je 0x5eae
lea eax, [edx + 0x73b2]
cmp ax, 2
jbe short loc_00005eae  ; jbe 0x5eae
lea eax, [edx + 0x73b7]
cmp ax, 3
jbe short loc_00005eae  ; jbe 0x5eae
lea eax, [edx + 0x73bf]
cmp ax, 1
jbe short loc_00005eae  ; jbe 0x5eae
cmp dx, 0x8c58
je short loc_00005eae  ; je 0x5eae
mov eax, edx
and eax, 0xfffffffb
cmp ax, 0x8c52
je short loc_00005eae  ; je 0x5eae
mov eax, edx
and eax, 0xfffffff7
cmp ax, 0x8c54
je short loc_00005eae  ; je 0x5eae
lea eax, [edx + 0x63bf]
cmp ax, 6
jbe short loc_00005eae  ; jbe 0x5eae
add dx, 0x733f
cmp dx, 5
jbe short loc_00005eae  ; jbe 0x5eae

loc_00005ea4:
mov eax, 0x80000003
jmp near loc_00005fa0  ; jmp 0x5fa0

loc_00005eae:
sub esp, 0xc
add esi, 0x48
push esi
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
and ax, 0xfffc
mov word [ebp - 0x20], ax
je short loc_00005ea4  ; je 0x5ea4
cmp bl, 0x1f
jbe short loc_00005f0b  ; jbe 0x5f0b
cmp bl, 0x3f
ja short loc_00005ee7  ; ja 0x5ee7
lea ecx, [ebx - 0x20]
mov esi, 0x30
mov word [ebp - 0x1c], 0x38
mov word [ebp - 0x1a], 0x34
jmp short loc_00005f1b  ; jmp 0x5f1b

loc_00005ee7:
mov eax, 0x80000002
cmp bl, 0x5f
ja loc_00005fa0  ; ja 0x5fa0
lea ecx, [ebx - 0x40]
mov esi, 0x40
mov word [ebp - 0x1c], 0x48
mov word [ebp - 0x1a], 0x44
jmp short loc_00005f1b  ; jmp 0x5f1b

loc_00005f0b:
mov cl, bl
xor esi, esi
mov word [ebp - 0x1c], 0xc
mov word [ebp - 0x1a], 4

loc_00005f1b:
mov dword [ebp - 0x24], ecx
and edi, 1
call fcn_000153e9  ; call 0x153e9
mov ecx, dword [ebp - 0x24]
test al, al
mov eax, edi
movzx edi, al
je short loc_00005f49  ; je 0x5f49
push edi
movzx ebx, bl
push ebx
push ref_00021725  ; push 0x21725
push 0x40
call fcn_000153f7  ; call 0x153f7
mov ecx, dword [ebp - 0x24]
add esp, 0x10

loc_00005f49:
movzx ebx, word [ebp - 0x20]
mov edx, 1
push eax
push eax
shl edx, cl
push edx
add esi, ebx
push esi
mov dword [ebp - 0x24], ecx
mov dword [ebp - 0x20], edx
call fcn_0001829f  ; call 0x1829f
mov edx, dword [ebp - 0x20]
movzx eax, word [ebp - 0x1a]
mov esi, edx
pop edx
not esi
pop ecx
add eax, ebx
push esi
push eax
call fcn_000182c9  ; call 0x182c9
movzx eax, word [ebp - 0x1c]
add ebx, eax
mov dword [esp], ebx
call fcn_00018ea0  ; call 0x18ea0
mov ecx, dword [ebp - 0x24]
shl edi, cl
and eax, esi
pop esi
or eax, edi
pop edx
push eax
push ebx
call fcn_00018ed3  ; call 0x18ed3
add esp, 0x10
xor eax, eax

loc_00005fa0:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00005fa8:
push ebp
mov ebp, esp
push ebx
push ebx
mov ebx, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00005fca  ; je 0x5fca
push ecx
push ecx
push ref_0002173b  ; push 0x2173b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00005fca:
cmp byte [ebx], 2
mov eax, 0x80000003
jbe short loc_00005ff7  ; jbe 0x5ff7
mov edx, dword [ebx + 0xd]
mov edx, dword [edx + 0x4c]
cmp byte [edx], 1
jne short loc_00005ff7  ; jne 0x5ff7
mov eax, dword [edx + 1]
push edx
push edx
mov dl, byte [eax + 1]
and edx, 1
push edx
movzx eax, byte [eax]
push eax
call fcn_00005e17  ; call 0x5e17
add esp, 0x10

loc_00005ff7:
mov ebx, dword [ebp - 4]
leave
ret

fcn_00005ffc:
push ebp
mov ebp, esp
push esi
push ebx
mov ebx, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000601e  ; je 0x601e
push ecx
push ecx
push ref_00021756  ; push 0x21756
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000601e:
cmp byte [ebx], 2
mov esi, 0x80000003
jbe short loc_0000604f  ; jbe 0x604f
mov eax, dword [ebx + 0xd]
mov eax, dword [eax + 0x4c]
cmp byte [eax], 1
jne short loc_0000604f  ; jne 0x604f
mov eax, dword [eax + 1]
xor esi, esi
push edx
push edx
mov dl, byte [eax + 1]
not edx
and edx, 1
push edx
movzx eax, byte [eax]
push eax
call fcn_00005e17  ; call 0x5e17
add esp, 0x10

loc_0000604f:
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_00006058:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov edi, dword [ebp + 8]
mov ebx, dword [ebp + 0xc]
mov esi, dword [ebp + 0x10]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00006084  ; je 0x6084
push eax
push eax
push ref_00021773  ; push 0x21773
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00006084:
xor edx, edx

loc_00006086:
push eax
push edx
push 1
push 0
mov dword [ebp - 0x1c], edx
call fcn_00016bd6  ; call 0x16bd6
pop edx
pop ecx
push 0x10
add eax, 0xb0
push eax
call fcn_00018863  ; call 0x18863
mov edx, dword [ebp - 0x1c]
add esp, 0x10
inc edx
cmp edx, 3
jne short loc_00006086  ; jne 0x6086
sub esp, 0xc
push esi
call fcn_00005fa8  ; call 0x5fa8
add esp, 0x10
mov edx, eax
test eax, eax
js short loc_00006103  ; js 0x6103
push eax
push 0x64
push ebx
push edi
call dword [ebx + 4]  ; ucall
add esp, 0x10
xor ebx, ebx

loc_000060ce:
push edi
push ebx
inc ebx
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
pop edx
pop ecx
push 0xffef
add eax, 0xb0
push eax
call fcn_00018890  ; call 0x18890
add esp, 0x10
cmp ebx, 3
jne short loc_000060ce  ; jne 0x60ce
mov dword [ebp + 8], esi
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00005ffc  ; jmp 0x5ffc

loc_00006103:
xor ebx, ebx

loc_00006105:
push eax
push ebx
inc ebx
push 1
push 0
mov dword [ebp - 0x1c], edx
call fcn_00016bd6  ; call 0x16bd6
pop edx
pop ecx
push 0xffef
add eax, 0xb0
push eax
call fcn_00018890  ; call 0x18890
add esp, 0x10
cmp ebx, 3
mov edx, dword [ebp - 0x1c]
jne short loc_00006105  ; jne 0x6105
lea esp, [ebp - 0xc]
mov eax, edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000613b:  ; not directly referenced
push ebp
mov ebp, esp
push esi
push ebx
mov ebx, dword [ebp + 0x10]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000615d  ; je 0x615d
push ecx
push ecx
push ref_0002178d  ; push 0x2178d
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000615d:  ; not directly referenced
push edx
movzx eax, byte [ebx + 2]
push eax
movzx eax, byte [ebx + 1]
push eax
movzx eax, byte [ebx]
push eax
call fcn_00016bd6  ; call 0x16bd6
pop ecx
lea esi, [eax + 0x3e]
pop eax
push 0x40
push esi
call fcn_00018863  ; call 0x18863
pop eax
pop edx
push 0xffbf
push esi
call fcn_00018890  ; call 0x18890
push 0
push ebx
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00005ce2  ; call 0x5ce2
add esp, 0x20
mov ebx, eax
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000061b8  ; je 0x61b8
push eax
push eax
push ref_000217a3  ; push 0x217a3
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000061b8:  ; not directly referenced
lea esp, [ebp - 8]
mov eax, ebx
pop ebx
pop esi
pop ebp
ret

fcn_000061c1:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov esi, dword [ebp + 0x10]
call fcn_0001c58d  ; call 0x1c58d
mov edi, eax
push eax
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0x48
mov dword [esp], eax
call fcn_00017e14  ; call 0x17e14
add esp, 0x10
cmp edi, 0x40660
sete byte [ebp - 0x19]
cmp edi, 0x306c0
mov ebx, eax
sete al
or byte [ebp - 0x19], al
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00006220  ; je 0x6220
push eax
push eax
push ref_000217b3  ; push 0x217b3
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00006220:  ; not directly referenced
cmp edi, 0x40670
jne short loc_0000624e  ; jne 0x624e
push eax
movzx eax, byte [esi + 2]
push eax
movzx eax, byte [esi + 1]
push eax
movzx eax, byte [esi]
push eax
call fcn_00016bd6  ; call 0x16bd6
pop edx
pop ecx
push 0x10
add eax, 0xc24
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10

loc_0000624e:  ; not directly referenced
cmp byte [ebp - 0x19], 0
je loc_000062e9  ; je 0x62e9
push 0
and ebx, 0xfffffffe
push 0x13
push 0x4448080
push ebx
call fcn_0000415c  ; call 0x415c
and eax, 0xfffffffd
push eax
push 0x14
push 0x4448080
push ebx
call fcn_0000415c  ; call 0x415c
add esp, 0x20
push 0
push 0x13
push 0x4448080
push ebx
call fcn_0000415c  ; call 0x415c
or eax, 1
push eax
push 0x14
push 0x4448080
push ebx
call fcn_0000415c  ; call 0x415c
add esp, 0x20
push 0
push 0x13
push 0x4448080
push ebx
call fcn_0000415c  ; call 0x415c
or ah, 0x20
push eax
push 0x14
push 0x4448080
push ebx
call fcn_0000415c  ; call 0x415c
add esp, 0x20
push 0
push 0x13
push 0x4448080
push ebx
call fcn_0000415c  ; call 0x415c
and eax, 0xfffffffe
push eax
push 0x14
push 0x4448080
push ebx
call fcn_0000415c  ; call 0x415c
add esp, 0x20
jmp short loc_00006361  ; jmp 0x6361

loc_000062e9:  ; not directly referenced
push eax
push 0
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
pop edx
pop ecx
push 0xfffffffffffffffd
add eax, 0x444
push eax
call fcn_00018a7a  ; call 0x18a7a
add esp, 0xc
push 0
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
pop ebx
pop edx
push 1
add eax, 0x444
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0xc
push 0
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
pop ecx
pop ebx
push 0x2000
add eax, 0x444
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0xc
push 0
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
pop edx
pop ecx
push 0xfffffffffffffffe
add eax, 0x444
push eax
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10

loc_00006361:  ; not directly referenced
movzx eax, byte [ebp - 0x19]
push eax
push esi
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00005ce2  ; call 0x5ce2
add esp, 0x10
mov ebx, eax
cmp edi, 0x40670
jne short loc_000063a5  ; jne 0x63a5
push edx
movzx eax, byte [esi + 2]
push eax
movzx eax, byte [esi + 1]
push eax
movzx eax, byte [esi]
push eax
call fcn_00016bd6  ; call 0x16bd6
pop ecx
pop esi
push 0xffffffffffffffef
add eax, 0xc24
push eax
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10

loc_000063a5:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000063bf  ; je 0x63bf
push eax
push eax
push ref_000217a3  ; push 0x217a3
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000063bf:  ; not directly referenced
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000063c9:
push ebp
mov ebp, esp
push ebx
sub esp, 8
mov ebx, dword [ebp + 0x10]
movzx eax, byte [ebx + 2]
push eax
movzx eax, byte [ebx + 1]
push eax
movzx eax, byte [ebx]
push eax
call fcn_00016bd6  ; call 0x16bd6
pop ecx
pop edx
push 0x20
add eax, 0xb0
push eax
call fcn_00018863  ; call 0x18863
push 0
push ebx
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00005ce2  ; call 0x5ce2
add esp, 0x20
mov ebx, eax
test eax, eax
jns short loc_00006426  ; jns 0x6426
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00006426  ; je 0x6426
push eax
push eax
push ref_000217c5  ; push 0x217c5
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00006426:
mov eax, ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_0000642d:
push ebp
mov ebp, esp
sub esp, 0xc
mov eax, dword [ebp + 8]
movzx edx, byte [eax + 2]
push edx
movzx edx, byte [eax + 1]
push edx
movzx eax, byte [eax]
push eax
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xb2
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
leave
shr ax, 4
and eax, 0x3f
ret

fcn_0000645f:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x20
mov esi, dword [ebp + 0x10]
mov ebx, dword [ebp + 0x14]
movzx eax, byte [esi + 2]
push eax
movzx eax, byte [esi + 1]
push eax
movzx eax, byte [esi]
push eax
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], esi
mov edi, eax
call fcn_0000642d  ; call 0x642d
add esp, 0x10
mov dl, al
cmp al, bl
jae loc_00006551  ; jae 0x6551
mov dword [ebp - 0x1c], edx
call fcn_000153e9  ; call 0x153e9
mov edx, dword [ebp - 0x1c]
test al, al
je short loc_000064be  ; je 0x64be
movzx edx, dl
movzx eax, bl
push edx
push eax
push ref_000217dd  ; push 0x217dd
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000064be:
movzx eax, bl
push ecx
push eax
push 0xffffffffffffffe0
lea edx, [edi + 0x224]
add edi, 0xb0
push edx
mov dword [ebp - 0x1c], edx
call fcn_00018aa4  ; call 0x18aa4
pop eax
pop edx
push 0x10
push edi
call fcn_00018863  ; call 0x18863
mov eax, dword [ebp + 0xc]
add esp, 0xc
push 1
push dword [ebp + 0xc]
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
pop ecx
pop eax
push 0xffef
push edi
call fcn_00018890  ; call 0x18890
push 0
push esi
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00005ce2  ; call 0x5ce2
mov edx, dword [ebp - 0x1c]
add esp, 0x18
push 0x1f
push edx
mov edi, eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10
test edi, edi
js short loc_00006576  ; js 0x6576
sub esp, 0xc
push esi
call fcn_0000642d  ; call 0x642d
add esp, 0x10
cmp al, bl
jne short loc_00006555  ; jne 0x6555
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00006551  ; je 0x6551
push edx
push edx
push ref_00021801  ; push 0x21801
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00006551:
xor ebx, ebx
jmp short loc_00006578  ; jmp 0x6578

loc_00006555:
call fcn_000153e9  ; call 0x153e9
mov ebx, 0x80000007
test al, al
je short loc_00006578  ; je 0x6578
push eax
push eax
push ref_0002181c  ; push 0x2181c
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp short loc_00006578  ; jmp 0x6578

loc_00006576:
mov ebx, edi

loc_00006578:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00006582:
push ebp
mov ebp, esp
sub esp, 0xc
mov eax, dword [ebp + 8]
movzx edx, byte [eax + 2]
push edx
movzx edx, byte [eax + 1]
push edx
movzx eax, byte [eax]
push eax
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xb2
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
leave
and eax, 0xf
ret

fcn_000065b0:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x2c
mov eax, dword [ebp + 0x1c]
mov ebx, dword [ebp + 0xc]
mov esi, dword [ebp + 0x10]
mov edi, dword [ebp + 0x18]
mov dword [ebp - 0x2c], eax
mov eax, dword [ebp + 0x20]
mov dword [ebp - 0x30], eax
call fcn_0001c58d  ; call 0x1c58d
mov dword [ebp - 0x1c], eax
call fcn_0001c5b4  ; call 0x1c5b4
mov dword [ebp - 0x20], eax
test esi, esi
je short loc_000065f4  ; je 0x65f4
cmp byte [ebx], 1
jbe short loc_000065f0  ; jbe 0x65f0
mov eax, dword [ebx + 0xd]
cmp byte [eax + 0x48], 0
jne short loc_000065f4  ; jne 0x65f4

loc_000065f0:
mov byte [esi + 0x71], 1

loc_000065f4:
push eax
push 0
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
pop edx
pop ecx
push 0x8000
add eax, 0xdd8
push eax
mov dword [ebp - 0x24], eax
call fcn_00018a50  ; call 0x18a50
add esp, 0xc
push ebx
push dword [ebp + 0x14]
push dword [ebp + 8]
call fcn_00006058  ; call 0x6058
add esp, 0x10
mov esi, eax
test eax, eax
jns short loc_0000663f  ; jns 0x663f
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00006659  ; je 0x6659
push eax
push esi
push ref_00021834  ; push 0x21834
jmp short loc_0000664f  ; jmp 0x664f

loc_0000663f:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00006659  ; je 0x6659
push eax
push eax
push ref_00021841  ; push 0x21841

loc_0000664f:
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00006659:
mov al, byte [edi]
movzx ecx, byte [edi + 2]
movzx edx, byte [edi + 1]
mov byte [ebp - 0x25], al

loc_00006666:
push ebx
movzx ebx, byte [ebp - 0x25]
push ecx
push edx
push ebx
mov dword [ebp - 0x38], ecx
mov dword [ebp - 0x34], edx
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xd2
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
mov edx, dword [ebp - 0x34]
mov ecx, dword [ebp - 0x38]
test al, 2
je short loc_00006666  ; je 0x6666
sub esp, 0xc
push ecx
push edx
push ebx
push dword [ebp + 0x14]
push dword [ebp + 8]
call fcn_000024e1  ; call 0x24e1
add esp, 0x20
cmp dword [ebp - 0x20], 0
je short loc_000066c8  ; je 0x66c8
cmp dword [ebp - 0x1c], 0x40670
jne short loc_000066c8  ; jne 0x66c8
push ecx
push ecx
push 0xffff7fff
push dword [ebp - 0x24]
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10

loc_000066c8:
sub esp, 0xc
push edi
call fcn_0000642d  ; call 0x642d
add esp, 0x10
cmp al, byte [ebp - 0x30]
jae short loc_000066fb  ; jae 0x66fb
call fcn_000153e9  ; call 0x153e9
mov esi, 0x80000012
test al, al
je short loc_000066fb  ; je 0x66fb
push edx
push edx
push ref_0002184b  ; push 0x2184b
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000066fb:
sub esp, 0xc
push edi
call fcn_00006582  ; call 0x6582
add esp, 0x10
cmp al, byte [ebp - 0x2c]
jae short loc_0000672e  ; jae 0x672e
call fcn_000153e9  ; call 0x153e9
mov esi, 0x80000012
test al, al
je short loc_0000672e  ; je 0x672e
push eax
push eax
push ref_00021863  ; push 0x21863
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000672e:
lea esp, [ebp - 0xc]
mov eax, esi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00006738:
push ebp
mov ebp, esp
push edi
push esi
push ebx
xor ebx, ebx
sub esp, 0x28
mov esi, dword [ebp + 8]
mov eax, dword [ebp + 0x10]
mov edi, dword [ebp + 0xc]
push esi
mov dword [ebp - 0x1c], eax
call fcn_00006582  ; call 0x6582
mov edx, edi
add esp, 0x10
cmp dl, al
je short loc_0000677a  ; je 0x677a
call fcn_000153e9  ; call 0x153e9
mov bl, 1
test al, al
je short loc_0000677a  ; je 0x677a
push edx
push edx
push ref_0002187b  ; push 0x2187b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000677a:
sub esp, 0xc
push esi
call fcn_0000642d  ; call 0x642d
add esp, 0x10
cmp byte [ebp - 0x1c], al
je short loc_000067a7  ; je 0x67a7
call fcn_000153e9  ; call 0x153e9
mov bl, 1
test al, al
je short loc_000067a7  ; je 0x67a7
push eax
push eax
push ref_0002189a  ; push 0x2189a
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000067a7:
lea esp, [ebp - 0xc]
mov al, bl
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000067b1:
push ebp
mov ebp, esp
push edi
push esi
xor esi, esi
push ebx
sub esp, 0x28
mov edi, dword [ebp + 0x10]
mov ebx, dword [ebp + 0x14]
push edi
call fcn_00006582  ; call 0x6582
add esp, 0x10
mov dl, al
cmp al, bl
jae loc_00006859  ; jae 0x6859
mov dword [ebp - 0x1c], edx
call fcn_000153e9  ; call 0x153e9
mov edx, dword [ebp - 0x1c]
test al, al
je short loc_000067fb  ; je 0x67fb
movzx edx, dl
movzx eax, bl
push edx
push eax
push ref_000218b9  ; push 0x218b9
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000067fb:
push ecx
push edi
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_000063c9  ; call 0x63c9
add esp, 0x10
mov esi, eax
test eax, eax
jns short loc_00006818  ; jns 0x6818
call fcn_000153e9  ; call 0x153e9
jmp short loc_00006832  ; jmp 0x6832

loc_00006818:
sub esp, 0xc
push edi
call fcn_00006582  ; call 0x6582
add esp, 0x10
cmp al, bl
jae short loc_0000683f  ; jae 0x683f
call fcn_000153e9  ; call 0x153e9
mov esi, 0x80000007

loc_00006832:
test al, al
je short loc_00006859  ; je 0x6859
push edx
push edx
push ref_000218e3  ; push 0x218e3
jmp short loc_0000684f  ; jmp 0x684f

loc_0000683f:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00006859  ; je 0x6859
push eax
push eax
push ref_00021900  ; push 0x21900

loc_0000684f:
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00006859:
lea esp, [ebp - 0xc]
mov eax, esi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00006863:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 0xc]
mov esi, dword [ebp + 0x18]
mov ebx, dword [ebp + 0x14]
mov edi, dword [ebp + 8]
mov dword [ebp - 0x24], eax
mov eax, dword [ebp + 0x10]
mov dword [ebp - 0x28], eax
mov eax, dword [ebp + 0x1c]
mov dword [ebp - 0x1c], eax
movzx eax, byte [ebp + 0x20]
push eax
push esi
push ebx
push edi
mov dword [ebp - 0x20], eax
call fcn_0000645f  ; call 0x645f
add esp, 0x10
test eax, eax
movzx eax, byte [ebp - 0x1c]
mov dword [ebp - 0x1c], eax
js short loc_000068b9  ; js 0x68b9

loc_000068a5:
push dword [ebp - 0x1c]
push esi
push ebx
push edi
call fcn_000067b1  ; call 0x67b1
add esp, 0x10
test eax, eax
jns short loc_000068f6  ; jns 0x68f6
jmp short loc_000068da  ; jmp 0x68da

loc_000068b9:
push eax
push dword [ebp - 0x20]
push dword [ebp - 0x1c]
push esi
push ebx
push dword [ebp - 0x28]
push dword [ebp - 0x24]
push edi
call fcn_000065b0  ; call 0x65b0
add esp, 0x20
test eax, eax
jns short loc_000068a5  ; jns 0x68a5
jmp near loc_0000695e  ; jmp 0x695e

loc_000068da:
push ecx
push dword [ebp - 0x20]
push dword [ebp - 0x1c]
push esi
push ebx
push dword [ebp - 0x28]
push dword [ebp - 0x24]
push edi
call fcn_000065b0  ; call 0x65b0
add esp, 0x20
test eax, eax
js short loc_0000695e  ; js 0x695e

loc_000068f6:
push 0
push esi
push ebx
push edi
call fcn_00005ce2  ; call 0x5ce2
add esp, 0x10
test eax, eax
jns short loc_0000695e  ; jns 0x695e
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00006921  ; je 0x6921
push edx
push edx
push ref_00021920  ; push 0x21920
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00006921:
push eax
push esi
push ebx
push edi
call fcn_000063c9  ; call 0x63c9
add esp, 0x10
test eax, eax
jns short loc_0000695e  ; jns 0x695e
mov eax, dword [ebp - 0x20]
mov dword [ebp + 0x18], esi
mov dword [ebp + 0x14], ebx
mov dword [ebp + 8], edi
mov dword [ebp + 0x20], eax
mov eax, dword [ebp - 0x1c]
mov dword [ebp + 0x1c], eax
mov eax, dword [ebp - 0x28]
mov dword [ebp + 0x10], eax
mov eax, dword [ebp - 0x24]
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_000065b0  ; jmp 0x65b0

loc_0000695e:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00006966:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
sub esp, 0x14
lea eax, [ebp - 0xc]
push eax
push 0
push 0
push ref_0002908c  ; push 0x2908c
call fcn_00019699  ; call 0x19699
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_000069c6  ; je 0x69c6
test ebx, ebx
jns short loc_000069c6  ; jns 0x69c6
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000069ae  ; je 0x69ae
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000069ae:  ; not directly referenced
push ecx
push ref_00020664  ; push 0x20664
push 0x2de
push ref_0002193e  ; push 0x2193e
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000069c6:  ; not directly referenced
mov eax, dword [ebp - 0xc]
push edx
push edx
push 1
push eax
call dword [eax]  ; ucall
add esp, 0x10
mov ebx, dword [ebp - 4]
leave
ret

fcn_000069d8:
push ebp
mov eax, 1
mov ebp, esp
mov edx, dword [ebp + 8]
cmp byte [edx], 2
jbe short loc_000069fa  ; jbe 0x69fa
mov eax, dword [edx + 0xd]
mov edx, 1
mov ax, word [eax + 0x50]
test ax, ax
cmove eax, edx

loc_000069fa:
pop ebp
ret

fcn_000069fc:
push ebp
mov eax, 2
mov ebp, esp
mov edx, dword [ebp + 8]
cmp byte [edx], 0x12
jbe short loc_00006a1e  ; jbe 0x6a1e
mov eax, dword [edx + 0xd]
mov edx, 2
mov ax, word [eax + 0x67]
test ax, ax
cmove eax, edx

loc_00006a1e:
pop ebp
ret

fcn_00006a20:
push ebp
mov eax, 0x2710
mov ebp, esp
mov edx, dword [ebp + 8]
cmp byte [edx], 0x12
jbe short loc_00006a42  ; jbe 0x6a42
mov eax, dword [edx + 0xd]
mov edx, 0x2710
mov ax, word [eax + 0x65]
test ax, ax
cmove eax, edx

loc_00006a42:
pop ebp
ret

fcn_00006a44:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x30
push 0
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
mov esi, eax
lea eax, [eax + 0x504]
add esi, 0xd0c
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov dword [esp], esi
mov ebx, eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0xc
push 0
push 0
push 1
shr ebx, 0x10
shr eax, 0x14
and eax, 1
mov byte [ebp - 0x2b], al
call fcn_00016bd6  ; call 0x16bd6
add esp, 0x10
mov dword [ebp - 0x34], eax
and ebx, 3
je short loc_00006ab1  ; je 0x6ab1
cmp ebx, 2
jne short loc_00006ac4  ; jne 0x6ac4
mov byte [ebp - 0x1e], 8
mov esi, 2
mov byte [ebp - 0x1d], 8
jmp short loc_00006acd  ; jmp 0x6acd

loc_00006ab1:
mov byte [ebp - 0x1e], 8
mov esi, 3
mov byte [ebp - 0x1d], 4
mov byte [ebp - 0x1c], 4
jmp short loc_00006acd  ; jmp 0x6acd

loc_00006ac4:
mov byte [ebp - 0x1e], 0x10
mov esi, 1

loc_00006acd:
mov eax, dword [ebp + 0xc]
xor ebx, ebx
mov byte [eax], 0

loc_00006ad5:
cmp byte [ebp + ebx - 0x1e], 0
je short loc_00006b08  ; je 0x6b08
push eax
push ebx
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
je short loc_00006b08  ; je 0x6b08
mov eax, dword [ebp + 0xc]
mov dl, byte [eax]
movzx eax, dl
inc edx
mov byte [ebp + eax - 0x1b], bl
mov eax, dword [ebp + 0xc]
mov byte [eax], dl

loc_00006b08:
inc ebx
mov eax, esi
cmp al, bl
ja short loc_00006ad5  ; ja 0x6ad5
mov eax, dword [ebp + 0xc]
cmp byte [eax], 3
jbe short loc_00006b3c  ; jbe 0x6b3c
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00006b36  ; je 0x6b36
push eax
push dword [ebp + 0xc]
push ref_0002197c  ; push 0x2197c
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00006b36:
mov eax, dword [ebp + 0xc]
mov byte [eax], 3

loc_00006b3c:
mov eax, dword [ebp + 0x10]
mov byte [ebp - 0x2a], 0
mov byte [eax], 0
mov al, byte [ebp - 0x2b]
neg eax
mov byte [ebp - 0x29], al
mov eax, dword [ebp - 0x34]
and byte [ebp - 0x29], 0xf
add eax, 0xc
mov dword [ebp - 0x38], eax

loc_00006b5b:
mov edi, dword [ebp + 0xc]
mov al, byte [ebp - 0x2a]
cmp al, byte [edi]
jae loc_00006dde  ; jae 0x6dde
movzx ebx, byte [ebp - 0x2a]
movzx eax, byte [ebp + ebx - 0x1b]
shl ebx, 5
add ebx, dword [ebp + 8]
mov edi, eax
mov byte [ebx + 2], al
mov byte [ebx + 3], al
mov byte [ebx + 0x1d], 1
mov byte [ebx + 0x1e], 0
mov byte [ebx + 0x1f], 0
mov byte [ebx], 0
mov byte [ebx + 1], 1
mov byte [ebx + 6], 0
push eax
push edi
push 1
push 0
call fcn_000023ad  ; call 0x23ad
mov dword [esp], ebx
call fcn_0000642d  ; call 0x642d
add esp, 0x10
xor edx, edx
xor ecx, ecx
mov byte [ebp - 0x2c], al
mov byte [ebx + 0x1c], al

loc_00006bb7:
mov byte [ebp - 0x30], dl
cmp dl, byte [ebp - 0x2c]
jae short loc_00006bf6  ; jae 0x6bf6
mov eax, dword [ebp + 0x10]
cmp byte [eax], 0
je short loc_00006bd2  ; je 0x6bd2
cmp byte [ebp - 0x30], 1
ja short loc_00006bd2  ; ja 0x6bd2
dec byte [ebx + 0x1c]
jmp short loc_00006bf3  ; jmp 0x6bf3

loc_00006bd2:
cmp cl, 0xf
ja short loc_00006bf2  ; ja 0x6bf2
cmp byte [ebp - 0x2b], 0
movzx esi, cl
jne short loc_00006be8  ; jne 0x6be8
mov al, byte [ebp - 0x30]
add al, byte [ebp - 0x29]
jmp short loc_00006bee  ; jmp 0x6bee

loc_00006be8:
mov al, byte [ebp - 0x29]
sub eax, dword [ebp - 0x30]

loc_00006bee:
mov byte [ebx + esi + 0xc], al

loc_00006bf2:
inc ecx

loc_00006bf3:
inc edx
jmp short loc_00006bb7  ; jmp 0x6bb7

loc_00006bf6:
cmp byte [ebx + 0x1c], 0x10
jbe short loc_00006c21  ; jbe 0x6c21
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00006c1d  ; je 0x6c1d
push eax
movzx eax, byte [ebx + 0x1c]
push eax
push ref_000219c3  ; push 0x219c3
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00006c1d:
mov byte [ebx + 0x1c], 0x10

loc_00006c21:
push eax
push edi
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
mov esi, eax
lea eax, [eax + 0xac]
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
mov edx, eax
and edx, 0xf
cmp edx, 3
mov dword [ebp - 0x30], edx
je short loc_00006c79  ; je 0x6c79
call fcn_000153e9  ; call 0x153e9
mov edx, dword [ebp - 0x30]
test al, al
je short loc_00006c70  ; je 0x6c70
push edx
push edi
push 1
push 0
push edi
push 1
push ref_000219f9  ; push 0x219f9
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_00006c70:
mov byte [ebx + 0xb], 0
jmp near loc_00006dbe  ; jmp 0x6dbe

loc_00006c79:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00006c9a  ; je 0x6c9a
push eax
push edi
push 1
push 0
push edi
push 1
push ref_00021a44  ; push 0x21a44
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_00006c9a:
push ecx
push 0x10100
push 0xff0000ff
lea eax, [esi + 0x18]
add esi, 0x11a
push eax
mov dword [ebp - 0x30], eax
call fcn_00018aa4  ; call 0x18aa4
pop eax
pop edx
push 0
push dword [ebp - 0x34]
call fcn_00017d40  ; call 0x17d40
pop ecx
push dword [ebp - 0x34]
call fcn_00017d8a  ; call 0x17d8a
mov dword [ebx + 7], eax
mov dword [esp], esi
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test al, 2
je short loc_00006d17  ; je 0x6d17
mov byte [ebx + 0xb], 0
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00006d04  ; je 0x6d04
push 3
push edi
push 1
push 0
push edi
push 1
push ref_00021a76  ; push 0x21a76
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_00006d04:
push edx
push edi
push 1
push 0
call fcn_000023ad  ; call 0x23ad
add esp, 0x10
jmp near loc_00006dac  ; jmp 0x6dac

loc_00006d17:
push 0x10
push 0
push 0
push 1
call fcn_000027f4  ; call 0x27f4
add esp, 0x10
test eax, eax
jne short loc_00006d49  ; jne 0x6d49
mov byte [ebx + 0xb], 0
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00006dac  ; je 0x6dac
push 3
push edi
push 1
push 0
push edi
push 1
push ref_00021abc  ; push 0x21abc
jmp short loc_00006da2  ; jmp 0x6da2

loc_00006d49:
add eax, dword [ebp - 0x38]
sub esp, 0xc
push eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
mov dl, al
and eax, 0xf
and edx, 0xf
mov esi, eax
mov byte [ebx + 6], dl
cmp eax, 2
ja short loc_00006d87  ; ja 0x6d87
mov byte [ebx + 0xb], 0
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00006dac  ; je 0x6dac
push esi
push edi
push 1
push 0
push edi
push 1
push ref_00021b0b  ; push 0x21b0b
jmp short loc_00006da2  ; jmp 0x6da2

loc_00006d87:
mov byte [ebx + 0xb], 1
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00006dac  ; je 0x6dac
push esi
push edi
push 1
push 0
push edi
push 1
push ref_00021b55  ; push 0x21b55

loc_00006da2:
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_00006dac:
push eax
push eax
push 0xff0000ff
push dword [ebp - 0x30]
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10

loc_00006dbe:
mov al, byte [ebp + edi - 0x1e]
mov cl, byte [ebp - 0x29]
lea edx, [ecx + eax]
sub ecx, eax
cmp byte [ebp - 0x2b], 0
mov al, cl
cmovne edx, eax
mov byte [ebp - 0x29], dl
inc byte [ebp - 0x2a]
jmp near loc_00006b5b  ; jmp 0x6b5b

loc_00006dde:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00006de6:
push ebp
mov ebp, esp
mov edx, dword [ebp + 8]
cmp byte [ebp + 0xc], 0
mov al, dl
je short loc_00006df8  ; je 0x6df8
mov al, 0xf
sub eax, edx

loc_00006df8:
pop ebp
ret

fcn_00006dfa:
push ebp
mov ebp, esp
sub esp, 0xc
push dword [ebp + 0x14]
mov eax, dword [ebp + 0x10]
push eax
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
pop eax
mov eax, dword [ebp + 0x1c]
pop edx
movzx eax, byte [eax + 2]
push eax
push dword [ebp + 0x18]
call fcn_00007b99  ; call 0x7b99
sub eax, dword [ebp + 0x20]
leave
ret

fcn_00006e24:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x5c
mov al, byte [ebp + 0x24]
push dword [ebp + 0xc]
mov edi, dword [ebp + 0x28]
mov bl, byte [ebp + 0x30]
mov byte [ebp - 0x53], al
mov al, byte [ebp + 0x2c]
mov byte [ebp - 0x52], al
call fcn_000069fc  ; call 0x69fc
push esi
push esi
push 1
mov esi, eax
call fcn_0000961e  ; call 0x961e
add esp, 0x10
test eax, eax
js loc_00007085  ; js 0x7085
mov eax, dword [ebp + 0x20]
mov dword [ebp - 0x4c], eax
movzx eax, si
mov dword [ebp - 0x58], eax
movzx eax, bl
mov dword [ebp - 0x50], eax

loc_00006e6f:
mov al, byte [ebp - 0x4c]
sub eax, dword [ebp + 0x20]
cmp al, byte [ebp - 0x53]
jae loc_00007078  ; jae 0x7078
push ecx
push ecx
lea eax, [ebp - 0x39]
push eax
mov eax, dword [ebp - 0x4c]
movzx ebx, byte [eax]
push ebx
call fcn_000098fd  ; call 0x98fd
mov eax, dword [ebp + 0x34]
add esp, 0x10
mov byte [ebp - 0x51], 0
lea eax, [eax + ebx*4]
xor ebx, ebx
mov dword [ebp - 0x60], eax

loc_00006ea2:
test bl, bl
jne loc_00007070  ; jne 0x7070
cmp byte [ebp - 0x51], 2
ja loc_00007070  ; ja 0x7070
push eax
push eax
movzx eax, byte [edi + 2]
push eax
push dword [ebp + 0x1c]
call fcn_00007b99  ; call 0x7b99
mov esi, eax
pop eax
pop edx
lea eax, [ebp - 0x39]
push eax
push 5
call fcn_000099b5  ; call 0x99b5
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00006f19  ; je 0x6f19
test ebx, ebx
jns short loc_00006f19  ; jns 0x6f19
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00006f01  ; je 0x6f01
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00006f01:
push eax
push ref_00020664  ; push 0x20664
push 0x350
push ref_00021b85  ; push 0x21b85
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00006f19:
push ebx
push esi
push edi
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00006dfa  ; call 0x6dfa
add esp, 0x20
cmp eax, dword [ebp - 0x58]
jb short loc_00006f3f  ; jb 0x6f3f

loc_00006f38:
xor ebx, ebx
jmp near loc_00007001  ; jmp 0x7001

loc_00006f3f:
movzx ebx, byte [ebp - 0x52]
push ecx
push dword [ebp - 0x50]
push ebx
push edi
call fcn_00006738  ; call 0x6738
add esp, 0x10
test al, al
jne short loc_00006f38  ; jne 0x6f38
push eax
push eax
movzx eax, byte [edi + 2]
push eax
push dword [ebp + 0x1c]
call fcn_00007b99  ; call 0x7b99
mov dword [ebp - 0x5c], eax
pop eax
pop edx
lea eax, [ebp - 0x39]
push eax
push 0xfffffffffffffffa
call fcn_000099b5  ; call 0x99b5
mov esi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00006fbb  ; je 0x6fbb
test esi, esi
jns short loc_00006fbb  ; jns 0x6fbb
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00006fa3  ; je 0x6fa3
push eax
push esi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00006fa3:
push eax
push ref_00020664  ; push 0x20664
push 0x35f
push ref_00021b85  ; push 0x21b85
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00006fbb:
push esi
push dword [ebp - 0x5c]
push edi
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00006dfa  ; call 0x6dfa
add esp, 0x20
cmp eax, dword [ebp - 0x58]
jae loc_00006f38  ; jae 0x6f38
push ecx
push dword [ebp - 0x50]
push ebx
push edi
call fcn_00006738  ; call 0x6738
add esp, 0x10
test al, al
jne loc_00006f38  ; jne 0x6f38
mov eax, dword [ebp - 0x60]
mov bl, 1
mov dword [eax], 0xbb8

loc_00007001:
sub esp, 0xc
lea eax, [ebp - 0x39]
push eax
call fcn_00009992  ; call 0x9992
movzx eax, byte [ebp - 0x52]
add esp, 0x10
mov byte [ebp - 0x5c], 3
mov dword [ebp - 0x64], eax

loc_0000701b:
push edx
push dword [ebp - 0x50]
push dword [ebp - 0x64]
push edi
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00006863  ; call 0x6863
add esp, 0x20
mov esi, eax
test eax, eax
jns short loc_00007068  ; jns 0x7068
push eax
mov eax, dword [ebp + 0x14]
push 0x2710
push dword [ebp + 0x14]
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
add esp, 0x10
dec byte [ebp - 0x5c]
jne short loc_0000701b  ; jne 0x701b
sub esp, 0xc
push 0
call fcn_0000961e  ; call 0x961e
add esp, 0x10
mov eax, esi
jmp short loc_00007085  ; jmp 0x7085

loc_00007068:
inc byte [ebp - 0x51]
jmp near loc_00006ea2  ; jmp 0x6ea2

loc_00007070:
inc dword [ebp - 0x4c]
jmp near loc_00006e6f  ; jmp 0x6e6f

loc_00007078:
sub esp, 0xc
push 0
call fcn_0000961e  ; call 0x961e
add esp, 0x10

loc_00007085:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000708d:  ; not directly referenced
push ebp
mov ebp, esp
mov ecx, dword [ebp + 8]
mov edx, dword [ebp + 0xc]
push ebx
mov ebx, ecx
mov eax, edx
sub ebx, edx
sub eax, ecx
cmp ecx, edx
cmovge eax, ebx
pop ebx
pop ebp
ret

fcn_000070a7:
push ebp
xor eax, eax
mov ebp, esp
mov ecx, dword [ebp + 8]
push esi
push ebx
test ecx, ecx
je short loc_000070f0  ; je 0x70f0
xor ebx, ebx
mov esi, 0xa9e

loc_000070bc:
cmp ecx, 0x10f
jbe short loc_000070d5  ; jbe 0x70d5
imul eax, ecx, 0x3e8
xor edx, edx
add ebx, 0x64
div esi
mov ecx, eax
jmp short loc_000070bc  ; jmp 0x70bc

loc_000070d5:
imul eax, ecx, 0xfffffff0
xor edx, edx
add eax, 0x2d3a
imul eax, ecx
mov ecx, 0x2710
sub eax, 0xeefac
div ecx
add eax, ebx

loc_000070f0:
pop ebx
pop esi
pop ebp
ret

fcn_000070f4:
push ebp
mov ebp, esp
push edi
push esi
push ebx
mov ebx, 0x9c40
push eax
mov eax, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov edi, dword [ebp + 0x14]
cmp eax, 0x9c40
cmova eax, ebx
imul eax, eax, 0x64
push eax
call fcn_000070a7  ; call 0x70a7
cmp esi, 0x9c40
cmova esi, ebx
imul esi, esi, 0x64
mov dword [ebp - 0x10], eax
mov dword [esp], esi
call fcn_000070a7  ; call 0x70a7
cmp dword [ebp + 0x10], 0x9c40
cmovbe ebx, dword [ebp + 0x10]
imul ebx, ebx, 0x64
mov esi, eax
mov dword [esp], ebx
call fcn_000070a7  ; call 0x70a7
test edi, edi
pop edx
mov edx, dword [ebp - 0x10]
mov ebx, eax
js short loc_00007178  ; js 0x7178
cmp esi, eax
lea ecx, [edi - 1]
jne short loc_0000715f  ; jne 0x715f
imul eax, ecx, 0x64
jmp short loc_0000716f  ; jmp 0x716f

loc_0000715f:
sub edx, eax
sub esi, ebx
imul eax, edx, 0x64
xor edx, edx
imul ecx, ecx, 0x64
div esi
add eax, ecx

loc_0000716f:
xor ecx, ecx
test eax, eax
cmovns ecx, eax
jmp short loc_0000719e  ; jmp 0x719e

loc_00007178:
cmp esi, eax
lea ecx, [edi + 1]
jne short loc_00007184  ; jne 0x7184
imul ecx, ecx, 0x64
jmp short loc_0000719e  ; jmp 0x719e

loc_00007184:
sub edx, eax
sub esi, ebx
imul eax, edx, 0x64
xor edx, edx
imul ecx, ecx, 0x64
div esi
sub ecx, eax
mov eax, 0
test ecx, ecx
cmovg ecx, eax

loc_0000719e:
lea esp, [ebp - 0xc]
mov eax, ecx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000071a8:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x4c
mov al, byte [ebp + 0x24]
push dword [ebp + 0xc]
movzx ebx, byte [ebp + 0x30]
mov byte [ebp - 0x42], al
mov al, byte [ebp + 0x2c]
mov byte [ebp - 0x2c], al
mov al, byte [ebp + 0x34]
mov byte [ebp - 0x41], al
call fcn_000069d8  ; call 0x69d8
mov ecx, dword [ebp + 0x20]
pop edi
mov dword [ebp - 0x40], ebx
mov dword [ebp - 0x38], ecx
movzx eax, ax
mov dword [ebp - 0x34], eax

loc_000071df:
mov bl, byte [ebp - 0x38]
sub ebx, dword [ebp + 0x20]
cmp bl, byte [ebp - 0x42]
jae loc_00007626  ; jae 0x7626
mov eax, dword [ebp - 0x38]
mov ecx, dword [ebp + 0x38]
cmp byte [ebp - 0x41], 0
movzx eax, byte [eax]
mov byte [ebp - 0x19], al
mov dword [ecx + eax*4], 0
je short loc_00007229  ; je 0x7229
mov esi, dword [ebp + 0xc]
push edx
push edx
mov edx, dword [esi + 1]
push dword [edx + 4]
push eax
call fcn_00009516  ; call 0x9516
movzx eax, byte [ebp - 0x19]
pop ecx
pop esi
push 1
push eax
call fcn_000094b3  ; call 0x94b3
add esp, 0x10

loc_00007229:
test bl, bl
je short loc_0000724a  ; je 0x724a
mov eax, dword [ebp - 0x38]
xor esi, esi
mov ecx, dword [ebp + 0x38]
movzx eax, byte [eax - 1]
mov eax, dword [ecx + eax*4]
mov ecx, 0x64
cdq
idiv ecx
dec eax
cmovns esi, eax
jmp short loc_0000724c  ; jmp 0x724c

loc_0000724a:
xor esi, esi

loc_0000724c:
mov byte [ebp - 0x2b], 0
mov byte [ebp - 0x29], 1
mov dword [ebp - 0x3c], 0xffffffff
mov byte [ebp - 0x2a], 0

loc_0000725f:
cmp byte [ebp - 0x2b], 0x1d
ja loc_000075b2  ; ja 0x75b2
cmp byte [ebp - 0x2a], 1
ja loc_000075b2  ; ja 0x75b2
push eax
push eax
mov eax, dword [ebp + 0x28]
inc byte [ebp - 0x2b]
movzx eax, byte [eax + 2]
push eax
push dword [ebp + 0x1c]
call fcn_00007b99  ; call 0x7b99
add esp, 0xc
mov edi, eax
mov eax, esi
movzx eax, al
push eax
push 1
lea eax, [ebp - 0x19]
push eax
call fcn_00009b95  ; call 0x9b95
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_000072e5  ; je 0x72e5
test ebx, ebx
jns short loc_000072e5  ; jns 0x72e5
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000072cd  ; je 0x72cd
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000072cd:
push eax
push ref_00020664  ; push 0x20664
push 0x1f0
push ref_00021b85  ; push 0x21b85
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000072e5:
push eax
push edi
push dword [ebp + 0x28]
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00006dfa  ; call 0x6dfa
add esp, 0x20
mov edi, eax
cmp eax, dword [ebp - 0x34]
jb short loc_0000731e  ; jb 0x731e
test esi, esi
jne short loc_00007324  ; jne 0x7324
movzx eax, byte [ebp - 0x19]
mov bl, 1
mov ecx, dword [ebp + 0x38]
mov dword [ecx + eax*4], 0
jmp short loc_0000732a  ; jmp 0x732a

loc_0000731e:
mov byte [ebp - 0x29], 1
jmp short loc_00007328  ; jmp 0x7328

loc_00007324:
mov byte [ebp - 0x29], 0xff

loc_00007328:
xor ebx, ebx

loc_0000732a:
mov al, byte [ebp - 0x29]
add eax, esi
mov byte [ebp - 0x30], al
movzx eax, byte [ebp - 0x2c]
mov dword [ebp - 0x4c], eax

loc_00007339:
test bl, 1
jne loc_0000748e  ; jne 0x748e
cmp byte [ebp - 0x30], 0x18
ja loc_0000748e  ; ja 0x748e
push ebx
push dword [ebp - 0x40]
push dword [ebp - 0x4c]
push dword [ebp + 0x28]
call fcn_00006738  ; call 0x6738
add esp, 0x10
mov bl, al
test al, al
je short loc_0000739a  ; je 0x739a
cmp byte [ebp - 0x29], 0xff
je loc_000074ad  ; je 0x74ad
cmp byte [ebp - 0x30], 0
movzx eax, byte [ebp - 0x19]
jne short loc_00007387  ; jne 0x7387
mov esi, dword [ebp + 0x38]
mov dword [esi + eax*4], 0
jmp near loc_000074bc  ; jmp 0x74bc

loc_00007387:
movsx edx, byte [ebp - 0x30]
mov esi, dword [ebp + 0x38]
dec edx
imul edx, edx, 0x64
mov dword [esi + eax*4], edx
jmp near loc_000074bc  ; jmp 0x74bc

loc_0000739a:
mov eax, dword [ebp + 0x28]
push ecx
push ecx
movzx eax, byte [eax + 2]
push eax
push dword [ebp + 0x1c]
call fcn_00007b99  ; call 0x7b99
add esp, 0xc
mov dword [ebp - 0x48], eax
movzx eax, byte [ebp - 0x30]
push eax
push 1
lea eax, [ebp - 0x19]
push eax
call fcn_00009b95  ; call 0x9b95
mov esi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00007409  ; je 0x7409
test esi, esi
jns short loc_00007409  ; jns 0x7409
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000073f1  ; je 0x73f1
push edx
push esi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000073f1:
push eax
push ref_00020664  ; push 0x20664
push 0x21b
push ref_00021b85  ; push 0x21b85
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00007409:
push eax
push dword [ebp - 0x48]
push dword [ebp + 0x28]
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00006dfa  ; call 0x6dfa
add esp, 0x20
cmp byte [ebp - 0x29], 0xff
mov esi, eax
jne short loc_00007454  ; jne 0x7454
cmp eax, dword [ebp - 0x34]
jae short loc_00007481  ; jae 0x7481
movzx eax, byte [ebp - 0x19]
mov ecx, dword [ebp + 0x38]
lea ebx, [ecx + eax*4]
movsx eax, byte [ebp - 0x30]
push eax
push esi
push edi
push dword [ebp - 0x34]
call fcn_000070f4  ; call 0x70f4
add esp, 0x10
mov dword [ebx], eax
jmp short loc_000074d3  ; jmp 0x74d3

loc_00007454:
cmp eax, dword [ebp - 0x34]
jb short loc_00007481  ; jb 0x7481
movzx eax, byte [ebp - 0x19]
mov edx, dword [ebp + 0x38]
lea edx, [edx + eax*4]
movsx eax, byte [ebp - 0x30]
mov dword [ebp - 0x48], edx
push eax
push edi
mov edi, esi
push esi
push dword [ebp - 0x34]
call fcn_000070f4  ; call 0x70f4
mov edx, dword [ebp - 0x48]
add esp, 0x10
mov dword [edx], eax
jmp short loc_000074bc  ; jmp 0x74bc

loc_00007481:
mov al, byte [ebp - 0x29]
mov edi, esi
add byte [ebp - 0x30], al
jmp near loc_00007339  ; jmp 0x7339

loc_0000748e:
cmp byte [ebp - 0x29], 0xff
jne short loc_000074bc  ; jne 0x74bc
cmp edi, dword [ebp - 0x34]
jb short loc_000074d3  ; jb 0x74d3
test bl, bl
jne short loc_000074d3  ; jne 0x74d3
movzx eax, byte [ebp - 0x19]
mov esi, dword [ebp + 0x38]
mov dword [esi + eax*4], 0
jmp short loc_000074d3  ; jmp 0x74d3

loc_000074ad:
mov byte [ebp - 0x29], 1
mov dword [ebp - 0x3c], 0xffffffff
mov byte [ebp - 0x2a], 0

loc_000074bc:
cmp edi, dword [ebp - 0x34]
jae short loc_000074d3  ; jae 0x74d3
test bl, bl
jne short loc_000074d3  ; jne 0x74d3
movzx eax, byte [ebp - 0x19]
mov ecx, dword [ebp + 0x38]
mov dword [ecx + eax*4], 0x9c4

loc_000074d3:
movzx eax, byte [ebp - 0x19]
mov ecx, 0x64
xor esi, esi
mov edx, dword [ebp + 0x38]
mov edi, dword [edx + eax*4]
mov eax, edi
cdq
idiv ecx
mov ecx, dword [ebp - 0x3c]
mov dword [ebp - 0x30], edi
dec eax
cmovns esi, eax
cmp ecx, 0xffffffff
je short loc_00007516  ; je 0x7516
mov edx, ecx
mov eax, edi
sub eax, ecx
sub edx, edi
cmp ecx, edi
cmovge eax, edx
mov dl, byte [ebp - 0x2a]
xor ecx, ecx
inc edx
cmp eax, 0x64
mov al, cl
cmovle eax, edx
mov byte [ebp - 0x2a], al

loc_00007516:
movzx ebx, byte [ebp - 0x2c]
push eax
push dword [ebp - 0x40]
push ebx
push dword [ebp + 0x28]
call fcn_00006738  ; call 0x6738
add esp, 0x10
test al, al
je short loc_00007583  ; je 0x7583
push eax
push 0
push 1
lea eax, [ebp - 0x19]
push eax
call fcn_00009b95  ; call 0x9b95
mov edi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00007583  ; je 0x7583
test edi, edi
jns short loc_00007583  ; jns 0x7583
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000756b  ; je 0x756b
push eax
push edi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000756b:
push eax
push ref_00020664  ; push 0x20664
push 0x252
push ref_00021b85  ; push 0x21b85
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00007583:
push edi
push dword [ebp - 0x40]
push ebx
push dword [ebp + 0x28]
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00006863  ; call 0x6863
add esp, 0x20
test eax, eax
js loc_00007628  ; js 0x7628
mov eax, dword [ebp - 0x30]
mov dword [ebp - 0x3c], eax
jmp near loc_0000725f  ; jmp 0x725f

loc_000075b2:
push ebx
push 0
push 1
lea eax, [ebp - 0x19]
push eax
call fcn_00009b95  ; call 0x9b95
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00007607  ; je 0x7607
test ebx, ebx
jns short loc_00007607  ; jns 0x7607
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000075ef  ; je 0x75ef
push ecx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000075ef:
push edx
push ref_00020664  ; push 0x20664
push 0x262
push ref_00021b85  ; push 0x21b85
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00007607:
cmp byte [ebp - 0x41], 0
je short loc_0000761e  ; je 0x761e
push eax
push eax
movzx eax, byte [ebp - 0x19]
push 0
push eax
call fcn_000094b3  ; call 0x94b3
add esp, 0x10

loc_0000761e:
inc dword [ebp - 0x38]
jmp near loc_000071df  ; jmp 0x71df

loc_00007626:
xor eax, eax

loc_00007628:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00007630:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x3c
mov eax, dword [ebp + 0x24]
push dword [ebp + 0xc]
mov edi, dword [ebp + 0x28]
mov dword [ebp - 0x3c], eax
mov bl, al
mov al, byte [ebp + 0x2c]
mov byte [ebp - 0x1c], al
mov al, byte [ebp + 0x30]
mov byte [ebp - 0x31], al
call fcn_000069d8  ; call 0x69d8
movzx ecx, bl
pop edx
mov byte [ebp - 0x1b], 0
mov byte [ebp - 0x19], 1
mov dword [ebp - 0x2c], 0xffffffff
mov dword [ebp - 0x20], 0
movzx eax, ax
mov byte [ebp - 0x1a], 0
mov dword [ebp - 0x30], ecx
mov dword [ebp - 0x24], eax

loc_0000767f:
cmp byte [ebp - 0x1b], 0x1d
ja loc_000079df  ; ja 0x79df
cmp byte [ebp - 0x1a], 1
ja loc_000079df  ; ja 0x79df
push eax
push eax
movzx eax, byte [edi + 2]
inc byte [ebp - 0x1b]
push eax
push dword [ebp + 0x1c]
call fcn_00007b99  ; call 0x7b99
add esp, 0xc
mov esi, eax
movzx eax, byte [ebp - 0x20]
push eax
push dword [ebp - 0x30]
push dword [ebp + 0x20]
call fcn_00009b95  ; call 0x9b95
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00007701  ; je 0x7701
test ebx, ebx
jns short loc_00007701  ; jns 0x7701
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000076e9  ; je 0x76e9
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000076e9:
push eax
push ref_00020664  ; push 0x20664
push 0x29f
push ref_00021b85  ; push 0x21b85
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00007701:
push eax
push esi
push edi
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00006dfa  ; call 0x6dfa
mov ecx, dword [ebp - 0x24]
add esp, 0x20
mov dword [ebp - 0x28], eax
cmp eax, ecx
jb short loc_0000773d  ; jb 0x773d
cmp dword [ebp - 0x20], 0
jne short loc_00007743  ; jne 0x7743
movzx eax, byte [edi + 2]
mov bl, 1
mov ecx, dword [ebp + 0x34]
mov dword [ecx + eax*4], 0
jmp short loc_00007749  ; jmp 0x7749

loc_0000773d:
mov byte [ebp - 0x19], 1
jmp short loc_00007747  ; jmp 0x7747

loc_00007743:
mov byte [ebp - 0x19], 0xff

loc_00007747:
xor ebx, ebx

loc_00007749:
mov al, byte [ebp - 0x20]
add al, byte [ebp - 0x19]
mov byte [ebp - 0x20], al
movzx eax, byte [ebp - 0x31]
mov dword [ebp - 0x40], eax
movzx eax, byte [ebp - 0x1c]
mov dword [ebp - 0x44], eax

loc_00007760:
test bl, 1
jne loc_000078b3  ; jne 0x78b3
cmp byte [ebp - 0x20], 0x18
ja loc_000078b3  ; ja 0x78b3
push eax
push dword [ebp - 0x40]
push dword [ebp - 0x44]
push edi
call fcn_00006738  ; call 0x6738
add esp, 0x10
test al, al
mov bl, al
movzx eax, byte [edi + 2]
je short loc_000077bf  ; je 0x77bf
cmp byte [ebp - 0x19], 0
js loc_000078d5  ; js 0x78d5
cmp byte [ebp - 0x20], 0
jne short loc_000077ac  ; jne 0x77ac
mov ecx, dword [ebp + 0x34]
mov dword [ecx + eax*4], 0
jmp near loc_000078e4  ; jmp 0x78e4

loc_000077ac:
movsx edx, byte [ebp - 0x20]
mov ecx, dword [ebp + 0x34]
dec edx
imul edx, edx, 0x64
mov dword [ecx + eax*4], edx
jmp near loc_000078e4  ; jmp 0x78e4

loc_000077bf:
push esi
push esi
push eax
push dword [ebp + 0x1c]
call fcn_00007b99  ; call 0x7b99
add esp, 0xc
mov dword [ebp - 0x38], eax
movzx eax, byte [ebp - 0x20]
push eax
push dword [ebp - 0x30]
push dword [ebp + 0x20]
call fcn_00009b95  ; call 0x9b95
mov esi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00007827  ; je 0x7827
test esi, esi
jns short loc_00007827  ; jns 0x7827
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000780f  ; je 0x780f
push ecx
push esi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000780f:
push edx
push ref_00020664  ; push 0x20664
push 0x2ca
push ref_00021b85  ; push 0x21b85
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00007827:
push eax
push dword [ebp - 0x38]
push edi
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00006dfa  ; call 0x6dfa
add esp, 0x20
cmp byte [ebp - 0x19], 0
mov esi, eax
jns short loc_00007875  ; jns 0x7875
cmp eax, dword [ebp - 0x24]
jae short loc_000078a5  ; jae 0x78a5
movzx eax, byte [edi + 2]
mov ebx, dword [ebp + 0x34]
lea ebx, [ebx + eax*4]
movsx eax, byte [ebp - 0x20]
push eax
push esi
push dword [ebp - 0x28]
push dword [ebp - 0x24]
call fcn_000070f4  ; call 0x70f4
add esp, 0x10
mov dword [ebx], eax
jmp near loc_000078fe  ; jmp 0x78fe

loc_00007875:
cmp eax, dword [ebp - 0x24]
jb short loc_000078a5  ; jb 0x78a5
movzx eax, byte [edi + 2]
mov edx, dword [ebp + 0x34]
lea edx, [edx + eax*4]
movsx eax, byte [ebp - 0x20]
mov dword [ebp - 0x38], edx
push eax
push dword [ebp - 0x28]
push esi
push dword [ebp - 0x24]
call fcn_000070f4  ; call 0x70f4
mov edx, dword [ebp - 0x38]
add esp, 0x10
mov dword [ebp - 0x28], esi
mov dword [edx], eax
jmp short loc_000078e4  ; jmp 0x78e4

loc_000078a5:
mov al, byte [ebp - 0x19]
add byte [ebp - 0x20], al
mov dword [ebp - 0x28], esi
jmp near loc_00007760  ; jmp 0x7760

loc_000078b3:
cmp byte [ebp - 0x19], 0
jns short loc_000078e4  ; jns 0x78e4
mov eax, dword [ebp - 0x24]
cmp dword [ebp - 0x28], eax
jb short loc_000078fe  ; jb 0x78fe
test bl, bl
jne short loc_000078fe  ; jne 0x78fe
movzx eax, byte [edi + 2]
mov ebx, dword [ebp + 0x34]
mov dword [ebx + eax*4], 0
jmp short loc_000078fe  ; jmp 0x78fe

loc_000078d5:
mov byte [ebp - 0x19], 1
mov dword [ebp - 0x2c], 0xffffffff
mov byte [ebp - 0x1a], 0

loc_000078e4:
mov eax, dword [ebp - 0x24]
cmp dword [ebp - 0x28], eax
jae short loc_000078fe  ; jae 0x78fe
test bl, bl
jne short loc_000078fe  ; jne 0x78fe
movzx eax, byte [edi + 2]
mov ebx, dword [ebp + 0x34]
mov dword [ebx + eax*4], 0x9c4

loc_000078fe:
movzx eax, byte [edi + 2]
mov ecx, dword [ebp + 0x34]
mov esi, dword [ecx + eax*4]
mov ecx, 0x64
mov eax, esi
cdq
idiv ecx
xor edx, edx
mov dword [ebp - 0x28], esi
dec eax
mov ecx, eax
cmovs ecx, edx
mov dword [ebp - 0x20], ecx
mov ecx, dword [ebp - 0x2c]
cmp ecx, 0xffffffff
je short loc_00007946  ; je 0x7946
mov edx, ecx
mov eax, esi
sub eax, ecx
sub edx, esi
cmp ecx, esi
cmovge eax, edx
mov dl, byte [ebp - 0x1a]
xor ecx, ecx
inc edx
cmp eax, 0x64
mov al, cl
cmovle eax, edx
mov byte [ebp - 0x1a], al

loc_00007946:
movzx esi, byte [ebp - 0x31]
movzx ebx, byte [ebp - 0x1c]
push eax
push esi
push ebx
push edi
call fcn_00006738  ; call 0x6738
add esp, 0x10
test al, al
je short loc_000079b8  ; je 0x79b8
push eax
push 0
push dword [ebp - 0x30]
push dword [ebp + 0x20]
call fcn_00009b95  ; call 0x9b95
mov dword [ebp - 0x2c], eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_000079b8  ; je 0x79b8
cmp dword [ebp - 0x2c], 0
jns short loc_000079b8  ; jns 0x79b8
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000079a0  ; je 0x79a0
push eax
push dword [ebp - 0x2c]
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000079a0:
push eax
push ref_00020664  ; push 0x20664
push 0x301
push ref_00021b85  ; push 0x21b85
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000079b8:
push eax
push esi
push ebx
push edi
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00006863  ; call 0x6863
add esp, 0x20
test eax, eax
js short loc_00007a3c  ; js 0x7a3c
mov eax, dword [ebp - 0x28]
mov dword [ebp - 0x2c], eax
jmp near loc_0000767f  ; jmp 0x767f

loc_000079df:
movzx eax, byte [ebp - 0x3c]
push ecx
push 0
push eax
push dword [ebp + 0x20]
call fcn_00009b95  ; call 0x9b95
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
xor edx, edx
test al, al
je short loc_00007a3e  ; je 0x7a3e
test ebx, ebx
jns short loc_00007a3e  ; jns 0x7a3e
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00007a20  ; je 0x7a20
push edx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00007a20:
push eax
push ref_00020664  ; push 0x20664
push 0x311
push ref_00021b85  ; push 0x21b85
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
xor edx, edx
jmp short loc_00007a3e  ; jmp 0x7a3e

loc_00007a3c:
mov edx, eax

loc_00007a3e:
lea esp, [ebp - 0xc]
mov eax, edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00007a48:
push ebp
xor eax, eax
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov edx, dword [ebp + 0x20]
mov ecx, dword [ebp + 0x24]

loc_00007a59:
mov edi, dword [ebp + 0x2c]
mov dword [edi + eax], 0xffffffff
add eax, 4
cmp eax, 0x40
jne short loc_00007a59  ; jne 0x7a59
movzx eax, cl
xor edi, edi
shl eax, 5
lea eax, [edx + eax + 0xc]
lea esi, [edx + 0xc]
mov dword [ebp - 0x20], eax

loc_00007a7d:
cmp esi, dword [ebp - 0x20]
je loc_00007b8f  ; je 0x7b8f
mov al, byte [esi + 0x10]
cmp byte [esi + 0x11], 0
mov byte [ebp - 0x19], al
je loc_00007b87  ; je 0x7b87
cmp byte [esi + 0x12], 1
je loc_00007b87  ; je 0x7b87
cmp byte [esi - 1], 0
mov cl, 3
lea ebx, [esi - 0xc]
jne short loc_00007ab9  ; jne 0x7ab9
sub esp, 0xc
push ebx
call fcn_00006582  ; call 0x6582
add esp, 0x10
mov cl, al

loc_00007ab9:
sub esp, 0xc
push ebx
mov dword [ebp - 0x24], ecx
call fcn_0000642d  ; call 0x642d
add esp, 0x10
mov ecx, dword [ebp - 0x24]
cmp dword [ebp + 0x28], 1
je short loc_00007b3d  ; je 0x7b3d
jb short loc_00007b08  ; jb 0x7b08
cmp dword [ebp + 0x28], 2
jne loc_00007b6d  ; jne 0x7b6d
push dword [ebp + 0x2c]
movzx eax, al
movzx ecx, cl
push eax
push ecx
push ebx
movzx ebx, byte [ebp - 0x19]
push ebx
push esi
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00006e24  ; call 0x6e24
jmp short loc_00007b66  ; jmp 0x7b66

loc_00007b08:
sub esp, 0xc
movzx eax, al
push dword [ebp + 0x2c]
movzx ecx, cl
push 0
push eax
push ecx
push ebx
movzx ebx, byte [ebp - 0x19]
push ebx
push esi
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_000071a8  ; call 0x71a8
add esp, 0x40
mov edi, eax
jmp short loc_00007b87  ; jmp 0x7b87

loc_00007b3d:
push dword [ebp + 0x2c]
movzx eax, al
movzx ecx, cl
push eax
push ecx
push ebx
movzx ebx, byte [ebp - 0x19]
push ebx
push esi
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00007630  ; call 0x7630

loc_00007b66:
mov edi, eax
add esp, 0x30
jmp short loc_00007b87  ; jmp 0x7b87

loc_00007b6d:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00007b87  ; je 0x7b87
push eax
push eax
push ref_00021bb7  ; push 0x21bb7
push 2
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00007b87:
add esi, 0x20
jmp near loc_00007a7d  ; jmp 0x7a7d

loc_00007b8f:
lea esp, [ebp - 0xc]
mov eax, edi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00007b99:
push ebp
mov ebp, esp
movzx eax, byte [ebp + 0xc]
mov edx, dword [ebp + 8]
shl eax, 4
lea eax, [edx + eax + 0xc]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00017d8a  ; jmp 0x17d8a

fcn_00007bb3:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x20
mov eax, dword [ebp + 0xc]
push 0
mov ebx, dword [ebp + 8]
push 1
push 0
mov dword [ebp - 0x20], eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 1
push 1
push 0
mov esi, eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 2
push 1
push 0
mov edi, eax
call fcn_00016bd6  ; call 0x16bd6
mov dword [ebp - 0x1c], eax
pop eax
pop edx
lea eax, [ebx + 0x6430]
push 3
push eax
call fcn_00017dcb  ; call 0x17dcb
pop ecx
pop eax
lea eax, [ebx + 0x6434]
add ebx, 0x6438
push 0x76543210
push eax
call fcn_00017dcb  ; call 0x17dcb
pop eax
pop edx
lea eax, [esi + 0x630]
push 0xb
push eax
call fcn_00017dcb  ; call 0x17dcb
pop ecx
pop eax
lea eax, [esi + 0x600]
add esi, 0x604
push 0x60b
push eax
call fcn_00017dcb  ; call 0x17dcb
pop eax
pop edx
push 0x76543980
push esi
call fcn_00017dcb  ; call 0x17dcb
lea eax, [edi + 0x600]
add edi, 0x604
pop ecx
pop esi
push 0x60b
push eax
call fcn_00017dcb  ; call 0x17dcb
pop eax
pop edx
push 0x76543280
push edi
call fcn_00017dcb  ; call 0x17dcb
mov edi, dword [ebp - 0x1c]
pop ecx
pop esi
mov eax, edi
push 0xb
add eax, 0x600
push eax
call fcn_00017dcb  ; call 0x17dcb
pop eax
mov eax, edi
pop edx
add eax, 0x604
push 0x76543210
push eax
call fcn_00017dcb  ; call 0x17dcb
pop ecx
pop esi
push 0x680000
push ebx
call fcn_00017dcb  ; call 0x17dcb
mov eax, dword [ebp - 0x20]
add esp, 0x10
mov dword [ebp + 0xc], 0xa
add eax, 0xa04
mov dword [ebp + 8], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017dcb  ; jmp 0x17dcb

fcn_00007cce:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x20
mov eax, dword [ebp + 0xc]
push 0
mov ebx, dword [ebp + 8]
push 1
push 0
mov dword [ebp - 0x20], eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 1
push 1
push 0
mov esi, eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 2
push 1
push 0
mov edi, eax
call fcn_00016bd6  ; call 0x16bd6
mov dword [ebp - 0x1c], eax
pop eax
pop edx
lea eax, [ebx + 0x6430]
push 0
push eax
call fcn_00017dcb  ; call 0x17dcb
pop ecx
pop eax
lea eax, [ebx + 0x6434]
add ebx, 0x6438
push 0
push eax
call fcn_00017dcb  ; call 0x17dcb
pop eax
pop edx
lea eax, [esi + 0x630]
push 0
push eax
call fcn_00017dcb  ; call 0x17dcb
pop ecx
pop eax
lea eax, [esi + 0x600]
add esi, 0x604
push 0
push eax
call fcn_00017dcb  ; call 0x17dcb
pop eax
pop edx
push 0
push esi
call fcn_00017dcb  ; call 0x17dcb
lea eax, [edi + 0x600]
add edi, 0x604
pop ecx
pop esi
push 0
push eax
call fcn_00017dcb  ; call 0x17dcb
pop eax
pop edx
push 0
push edi
call fcn_00017dcb  ; call 0x17dcb
mov edi, dword [ebp - 0x1c]
pop ecx
pop esi
mov eax, edi
push 0
add eax, 0x600
push eax
call fcn_00017dcb  ; call 0x17dcb
pop eax
mov eax, edi
pop edx
add eax, 0x604
push 0
push eax
call fcn_00017dcb  ; call 0x17dcb
pop ecx
pop esi
push 0
push ebx
call fcn_00017dcb  ; call 0x17dcb
mov eax, dword [ebp - 0x20]
add esp, 0x10
mov dword [ebp + 0xc], 0
add eax, 0xa04
mov dword [ebp + 8], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017dcb  ; jmp 0x17dcb

fcn_00007dd4:
push ebp
mov ebp, esp
push ebx
sub esp, 8
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0x60
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
pop edx
pop ecx
push 0x4000
mov ebx, eax
and ebx, 0xfffffff8
lea eax, [ebx + 0x54]
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0xc
push 0
push 0xfed85000
lea eax, [ebx + 0x38010]
add ebx, 0x38004
push eax
call fcn_00017e64  ; call 0x17e64
pop eax
pop edx
push 2
push ebx
call fcn_00018863  ; call 0x18863
mov eax, 0xfed85000
mov ebx, dword [ebp - 4]
leave
ret

fcn_00007e36:
push ebp
mov ebp, esp
push ebx
sub esp, 8
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0x60
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
pop edx
pop ecx
push 0xfffd
mov ebx, eax
and ebx, 0xfffffff8
lea eax, [ebx + 0x38004]
push eax
call fcn_00018890  ; call 0x18890
add esp, 0xc
push 0
push 0xfff
lea eax, [ebx + 0x38010]
add ebx, 0x54
push eax
call fcn_00018c3e  ; call 0x18c3e
pop eax
pop edx
push 0xffffbfff
push ebx
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10
mov ebx, dword [ebp - 4]
leave
ret

fcn_00007e99:
push ebp
mov ebp, esp
push ebx
sub esp, 0xc
mov ebx, dword [ebp + 8]
push 0x40000
push ebx
call fcn_00017dcb  ; call 0x17dcb
pop eax
pop edx
lea eax, [ebx + 4]
push 0
push eax
call fcn_00017dcb  ; call 0x17dcb
pop ecx
pop eax
lea eax, [ebx + 0x10]
push 0x40000
push eax
call fcn_00017dcb  ; call 0x17dcb
pop eax
pop edx
lea eax, [ebx + 0x14]
push 0
push eax
call fcn_00017dcb  ; call 0x17dcb
pop ecx
pop eax
lea eax, [ebx + 0x20]
push 0x40000
push eax
call fcn_00017dcb  ; call 0x17dcb
pop eax
pop edx
lea eax, [ebx + 0x24]
push 0
push eax
call fcn_00017dcb  ; call 0x17dcb
pop ecx
pop eax
lea eax, [ebx + 8]
push 0xff000000
push eax
call fcn_00017dcb  ; call 0x17dcb
pop eax
pop edx
lea eax, [ebx + 0x18]
push 0xff000000
push eax
call fcn_00017dcb  ; call 0x17dcb
pop ecx
pop eax
lea eax, [ebx + 0x28]
push 0xff000000
push eax
call fcn_00017dcb  ; call 0x17dcb
pop eax
pop edx
lea eax, [ebx + 0xc]
push 0
push eax
call fcn_00017dcb  ; call 0x17dcb
pop ecx
pop eax
lea eax, [ebx + 0x1c]
add ebx, 0x2c
push 0
push eax
call fcn_00017dcb  ; call 0x17dcb
pop eax
pop edx
push 0
push ebx
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10
mov ebx, dword [ebp - 4]
leave
ret

fcn_00007f54:
push ebp
mov ebp, esp
push ebx
sub esp, 0x10
mov ebx, dword [ebp + 8]
push dword [ebp + 0xc]
call fcn_00007e99  ; call 0x7e99
call fcn_00007e36  ; call 0x7e36
mov eax, dword [ebx + 1]
add esp, 0x10
mov ebx, dword [ebp - 4]
mov edx, dword [eax + 0x18]
mov dword [ebp + 0xc], edx
mov eax, dword [eax + 4]
mov dword [ebp + 8], eax
leave
jmp near fcn_00007cce  ; jmp 0x7cce

fcn_00007f86:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x14
mov ebx, dword [ebp + 8]
push 0xa100
mov esi, dword [ebp + 0x10]
mov edi, dword [ebp + 0xc]
lea eax, [ebx + 4]
push eax
call fcn_00017dcb  ; call 0x17dcb
pop eax
pop edx
lea eax, [ebx + 0x14]
push 0xa101
push eax
call fcn_00017dcb  ; call 0x17dcb
pop ecx
pop eax
lea eax, [ebx + 0x24]
push 0xa102
push eax
call fcn_00017dcb  ; call 0x17dcb
pop eax
pop edx
push 0x110000
push ebx
call fcn_00017dcb  ; call 0x17dcb
add esp, 0xc
push 0x3e8
push esi
push edi
call dword [esi + 4]  ; ucall
pop ecx
pop esi
push 0x22100
push ebx
call fcn_00017dcb  ; call 0x17dcb
pop edi
pop eax
lea eax, [ebx + 0x10]
add ebx, 0x20
push 0x22101
push eax
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], 0x22102
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017dcb  ; jmp 0x17dcb

fcn_00008019:
push ebp
mov ebp, esp
push ebx
sub esp, 0xc
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 1]
push dword [eax + 0x18]
push dword [eax + 4]
call fcn_00007bb3  ; call 0x7bb3
call fcn_00007dd4  ; call 0x7dd4
mov ebx, eax
mov dword [esp], eax
call fcn_00007e99  ; call 0x7e99
add esp, 0xc
push dword [ebp + 0x10]
push dword [ebp + 8]
push ebx
call fcn_00007f86  ; call 0x7f86
mov eax, ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_00008056:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x18
mov ebx, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov edi, dword [ebp + 0x10]
push ebx
call fcn_00007e99  ; call 0x7e99
add esp, 0x10
mov dword [ebp + 0x10], edi
mov dword [ebp + 0xc], esi
mov dword [ebp + 8], ebx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00007f86  ; jmp 0x7f86

fcn_00008086:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 0x18]
mov ebx, dword [ebp + 0xc]
mov edi, dword [ebp + 0x14]
mov dword [ebp - 0x1c], eax
cmp bl, 0xf
ja loc_000081d9  ; ja 0x81d9
mov esi, eax
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000080c3  ; je 0x80c3
push eax
movzx eax, bl
push eax
push ref_00021bd7  ; push 0x21bd7
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000080c3:
mov eax, dword [ebp + 8]
mov al, byte [eax + 0x1d]
test al, al
je loc_0000815b  ; je 0x815b
mov edx, dword [ebp + 8]
cmp byte [edx + 0x1f], 0
je short loc_00008122  ; je 0x8122
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000080f8  ; je 0x80f8
push eax
movzx eax, byte [ebp - 0x1c]
push eax
push ref_00021bed  ; push 0x21bed
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000080f8:
test edi, edi
je loc_000081c5  ; je 0x81c5
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000811a  ; je 0x811a
push eax
push eax
push ref_00021c1a  ; push 0x21c1a
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000811a:
movzx ebx, bl
mov al, byte [ebp - 0x1c]
jmp short loc_00008155  ; jmp 0x8155

loc_00008122:
test edi, edi
je short loc_0000815b  ; je 0x815b
mov eax, dword [ebp + 0x10]
movzx ebx, bl
mov eax, dword [eax + 0xd]
movzx esi, byte [eax + ebx + 0x19]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00008153  ; je 0x8153
push eax
mov eax, esi
movzx eax, al
push eax
push ref_00021c00  ; push 0x21c00
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00008153:
mov eax, esi

loc_00008155:
mov byte [edi + ebx + 0x35], al
jmp short loc_000081c5  ; jmp 0x81c5

loc_0000815b:
mov ecx, dword [ebp + 8]
cmp byte [ecx + 0x1f], 0
jne short loc_00008191  ; jne 0x8191
test edi, edi
jne loc_00008200  ; jne 0x8200
mov eax, dword [ebp + 0x10]
movzx ebx, bl
mov eax, dword [eax + 0xd]
movzx esi, byte [eax + ebx + 0x19]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000081c5  ; je 0x81c5
mov eax, esi
movzx eax, al
push ebx
push eax
push ref_00021c38  ; push 0x21c38
jmp short loc_000081bb  ; jmp 0x81bb

loc_00008191:
mov esi, 7
test al, al
jne short loc_000081c5  ; jne 0x81c5
test edi, edi
je short loc_000081c5  ; je 0x81c5

loc_0000819e:
movzx ebx, bl
movzx esi, byte [edi + ebx + 0x35]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000081c5  ; je 0x81c5
mov eax, esi
movzx eax, al
push ecx
push eax
push ref_00021c53  ; push 0x21c53

loc_000081bb:
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000081c5:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000820b  ; je 0x820b
push edx
push edx
push ref_00021e91  ; push 0x21e91
push 0x40
jmp short loc_000081f6  ; jmp 0x81f6

loc_000081d9:
call fcn_000153e9  ; call 0x153e9
mov esi, 7
test al, al
je short loc_0000820b  ; je 0x820b
movzx ebx, bl
push eax
push ebx
push ref_00021c71  ; push 0x21c71
push 0x80000000

loc_000081f6:
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp short loc_0000820b  ; jmp 0x820b

loc_00008200:
mov esi, 7
test al, al
jne short loc_000081c5  ; jne 0x81c5
jmp short loc_0000819e  ; jmp 0x819e

loc_0000820b:
lea esp, [ebp - 0xc]
mov eax, esi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00008215:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov ecx, dword [eax + 0xd]
xor eax, eax

loc_00008220:
movzx edx, byte [ecx + eax + 5]
cmp edx, 3
je short loc_00008238  ; je 0x8238
test edx, edx
je short loc_00008238  ; je 0x8238
inc eax
cmp eax, 3
jne short loc_00008220  ; jne 0x8220
xor eax, eax
jmp short loc_0000823a  ; jmp 0x823a

loc_00008238:
mov al, 1

loc_0000823a:
pop ebp
ret

fcn_0000823c:
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword [ebp + 8]
cmp byte [eax], 0x12
jbe short loc_00008254  ; jbe 0x8254
mov eax, dword [eax + 0xd]
mov al, byte [eax + 0x64]
cmp al, 1
jbe short loc_0000826f  ; jbe 0x826f

loc_00008254:
call fcn_0001c58d  ; call 0x1c58d
cmp eax, 0x40660
je short loc_0000826b  ; je 0x826b
cmp eax, 0x306c0

loc_00008265:
je short loc_0000826b  ; je 0x826b
mov al, 1
jmp short loc_00008273  ; jmp 0x8273

loc_0000826b:
xor eax, eax
jmp short loc_00008273  ; jmp 0x8273

loc_0000826f:
test al, al
jmp short loc_00008265  ; jmp 0x8265

loc_00008273:
leave
ret

fcn_00008275:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x41c
call fcn_0001c58d  ; call 0x1c58d
mov dword [ebp - 0x3ec], eax
call fcn_0001c5b4  ; call 0x1c5b4
push ebx
push 0
push 1
push 0
mov dword [ebp - 0x3f4], eax
call fcn_00016bd6  ; call 0x16bd6
mov dword [ebp - 0x3f8], eax
add eax, 0xd0c
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
mov byte [ebp - 0x3ee], 3
mov ebx, eax
mov eax, dword [ebp + 0xc]
cmp byte [eax], 0x12
jbe short loc_000082e3  ; jbe 0x82e3
mov eax, dword [eax + 0xd]
mov edi, 3
cmp byte [eax + 0x69], 1
mov al, 0xa
cmove edi, eax
mov eax, edi
mov byte [ebp - 0x3ee], al

loc_000082e3:
mov byte [ebp - 0x2a2], 7
xor eax, eax
mov byte [ebp - 0x261], 3
mov byte [ebp - 0x220], 5
mov byte [ebp - 0x1df], 8
mov byte [ebp - 0x19e], 0
mov byte [ebp - 0x15d], 1
mov byte [ebp - 0x11c], 2
mov byte [ebp - 0xdb], 6
mov byte [ebp - 0x9a], 9
mov byte [ebp - 0x59], 4

loc_00008328:
mov dword [ebp + eax*4 - 0x3c4], 0xffffffff
mov dword [ebp + eax*4 - 0x384], 0xffffffff
mov byte [ebp + eax - 0x3d4], 7
inc eax
cmp eax, 0x10
jne short loc_00008328  ; jne 0x8328
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00008366  ; je 0x8366
push ecx
push ecx
push ref_00021c82  ; push 0x21c82
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00008366:
sub esp, 0xc
push dword [ebp + 0xc]
call fcn_00008215  ; call 0x8215
add esp, 0x10
test al, al
jne short loc_00008391  ; jne 0x8391
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_00009307  ; je 0x9307
push edx
push edx
push ref_00021c9a  ; push 0x21c9a
jmp near loc_00008dde  ; jmp 0x8dde

loc_00008391:
shr ebx, 0x14
sub esp, 0xc
mov al, bl
and eax, 1
mov byte [ebp - 0x3ed], al
mov bl, al
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
mov ax, word [eax + 0x3c]
push dword [ebp + 0xc]
mov word [ebp - 0x404], ax
call fcn_00006a20  ; call 0x6a20
add esp, 0x10
mov word [ebp - 0x40c], ax
test bl, bl
jne short loc_000083dd  ; jne 0x83dd
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000083f7  ; je 0x83f7
push eax
push eax
push ref_00021cb7  ; push 0x21cb7
jmp short loc_000083ed  ; jmp 0x83ed

loc_000083dd:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000083f7  ; je 0x83f7
push eax
push eax
push ref_00021cd2  ; push 0x21cd2

loc_000083ed:
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000083f7:
cmp dword [ebp + 0x14], 0
mov byte [ebp - 0x3d9], 0
je loc_00008509  ; je 0x8509
mov eax, dword [ebp + 0x14]
cmp byte [eax + 0x28], 0
je loc_00008509  ; je 0x8509
lea eax, [ebp - 0x3d8]
push eax
push 0
push 0
push ref_0002914c  ; push 0x2914c
call fcn_00019699  ; call 0x19699
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00008471  ; je 0x8471
test ebx, ebx
jns short loc_00008471  ; jns 0x8471
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00008459  ; je 0x8459
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00008459:
push eax
push ref_00020664  ; push 0x20664
push 0xd6
push ref_00021cec  ; push 0x21cec
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00008471:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000848b  ; je 0x848b
push eax
push eax
push ref_00021d24  ; push 0x21d24
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000848b:
push eax
lea eax, [ebp - 0x3d9]
push eax
mov eax, dword [ebp - 0x3d8]
push 0
push dword [ebp + 8]
call dword [eax + 5]  ; ucall
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_000084e8  ; je 0x84e8
test ebx, ebx
jns short loc_000084e8  ; jns 0x84e8
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000084d0  ; je 0x84d0
push edi
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000084d0:
push esi
push ref_00020664  ; push 0x20664
push 0xd9
push ref_00021cec  ; push 0x21cec
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000084e8:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00008509  ; je 0x8509
movzx eax, byte [ebp - 0x3d9]
push ebx
push eax
push ref_00021d41  ; push 0x21d41
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00008509:
lea eax, [ebp - 0x3df]
xor ebx, ebx
push ecx
push eax
lea eax, [ebp - 0x3de]
push eax
lea eax, [ebp - 0x302]
push eax
call fcn_00006a44  ; call 0x6a44
add esp, 0x10

loc_00008529:
cmp bl, byte [ebp - 0x3de]
jae loc_000085bf  ; jae 0x85bf
movzx eax, bl
shl eax, 5
lea esi, [ebp + eax - 0x302]
movzx eax, byte [ebp + eax - 0x302]
push edx
movzx edx, byte [esi + 2]
push edx
movzx edx, byte [esi + 1]
push edx
push eax
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xb2
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
and eax, 0xf
cmp ax, 3
je short loc_0000857a  ; je 0x857a
cmp byte [esi + 0xb], 0
jne short loc_0000857d  ; jne 0x857d

loc_0000857a:
inc ebx
jmp short loc_00008529  ; jmp 0x8529

loc_0000857d:
mov eax, dword [ebp - 0x3f8]
push ebx
push ebx
push 0x8000
lea esi, [eax + 0xdd8]
push esi
call fcn_00018a50  ; call 0x18a50
add esp, 0xc
push dword [ebp + 0xc]
push dword [ebp + 0x10]
push dword [ebp + 8]
call fcn_00006058  ; call 0x6058
add esp, 0x10
test eax, eax
jns loc_00008e12  ; jns 0x8e12

loc_000085b2:
cmp dword [ebp - 0x3f4], 0
jne loc_00008ded  ; jne 0x8ded

loc_000085bf:
mov byte [ebp - 0x3f4], 0
mov byte [ebp - 0x3ec], 0

loc_000085cd:
mov cl, byte [ebp - 0x3de]
cmp byte [ebp - 0x3ec], cl
jae loc_00008718  ; jae 0x8718
movzx ebx, byte [ebp - 0x3ec]
mov edx, ebx
shl edx, 5
mov cl, byte [ebp + edx - 0x302]
lea eax, [ebp + edx - 0x302]
cmp dword [ebp + 0x14], 0
mov byte [ebp - 0x3fc], cl
mov cl, byte [eax + 1]
mov byte [ebp - 0x400], cl
mov cl, byte [eax + 2]
mov byte [ebp - 0x408], cl
movzx edx, cl
je short loc_0000863d  ; je 0x863d
mov esi, dword [ebp + 0x14]
cmp byte [esi + 0x28], 0
je loc_00008e98  ; je 0x8e98
mov eax, dword [eax + 7]
mov edi, 1
cmp dword [esi + edx*4 + 0x29], eax
jne loc_00008e9a  ; jne 0x8e9a
xor esi, esi
jmp short loc_00008644  ; jmp 0x8644

loc_0000863d:
mov esi, 1
xor edi, edi

loc_00008644:
mov dword [ebp - 0x410], edx
call fcn_000153e9  ; call 0x153e9
mov edx, dword [ebp - 0x410]
test al, al
je short loc_0000868a  ; je 0x868a
mov ecx, esi
sub esp, 0xc
movzx eax, byte [ebp - 0x400]
movzx ecx, cl
push ecx
mov ecx, edi
movzx ecx, cl
push ecx
movzx ecx, byte [ebp - 0x3fc]
push edx
push eax
push ecx
push edx
push eax
push ref_00021d69  ; push 0x21d69
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x30

loc_0000868a:
push eax
movzx eax, byte [ebp - 0x408]
push eax
movzx eax, byte [ebp - 0x400]
push eax
movzx eax, byte [ebp - 0x3fc]
push eax
call fcn_000023ad  ; call 0x23ad
mov eax, edi
mov ecx, esi
xor eax, 1
add esp, 0x10
or cl, al
jne short loc_000086d0  ; jne 0x86d0
cmp byte [ebp - 0x3d9], 0
jne short loc_000086d0  ; jne 0x86d0
mov eax, dword [ebp + 0xc]
cmp byte [eax], 1
jbe short loc_000086df  ; jbe 0x86df
mov eax, dword [eax + 0xd]
cmp byte [eax + 0x48], 1
jne short loc_000086df  ; jne 0x86df

loc_000086d0:
mov eax, ebx
shl eax, 5
mov byte [ebp + eax - 0x2e5], 1
jmp short loc_000086ec  ; jmp 0x86ec

loc_000086df:
mov eax, ebx
shl eax, 5
mov byte [ebp + eax - 0x2e5], 0

loc_000086ec:
shl ebx, 5
lea eax, [ebp - 0x18]
add ebx, eax
cmp byte [ebx - 0x2df], 0
jne short loc_00008706  ; jne 0x8706
mov byte [ebx - 0x2cd], 0
jmp short loc_0000870d  ; jmp 0x870d

loc_00008706:
mov byte [ebp - 0x3f4], 1

loc_0000870d:
inc byte [ebp - 0x3ec]
jmp near loc_000085cd  ; jmp 0x85cd

loc_00008718:
cmp byte [ebp - 0x3f4], 0
je short loc_0000872b  ; je 0x872b
lea edx, [ebp - 0x302]
xor eax, eax
jmp short loc_0000874e  ; jmp 0x874e

loc_0000872b:
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_00009307  ; je 0x9307
push ecx
push ecx
push ref_00021db4  ; push 0x21db4
jmp near loc_00008dde  ; jmp 0x8dde

loc_00008744:
add edx, 0x20
cmp byte [edx - 3], 1
je short loc_0000875e  ; je 0x875e
inc eax

loc_0000874e:
cmp al, cl
jne short loc_00008744  ; jne 0x8744
mov byte [ebp - 0x3ee], 0
jmp near loc_000088fe  ; jmp 0x88fe

loc_0000875e:
push eax
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00008019  ; call 0x8019
pop edx
pop ecx
push 0x2000
mov dword [ebp - 0x3f4], eax
mov eax, dword [ebp - 0x3f8]
add eax, 0x444
push eax
mov dword [ebp - 0x410], eax
call fcn_00018a50  ; call 0x18a50
lea eax, [ebp - 0x2a2]
add esp, 0x10
mov dword [ebp - 0x3ec], eax
movzx eax, byte [ebp - 0x3ed]
mov byte [ebp - 0x408], 0
mov dword [ebp - 0x414], eax
movzx eax, word [ebp - 0x404]
mov dword [ebp - 0x418], eax

loc_000087c1:
xor eax, eax

loc_000087c3:
mov edi, dword [ebp - 0x3ec]
mov dword [edi + eax + 1], 0
add eax, 4
cmp eax, 0x40
jne short loc_000087c3  ; jne 0x87c3
mov byte [ebp - 0x3fc], 0

loc_000087e0:
movzx eax, byte [ebp - 0x3de]
cmp byte [ebp - 0x3fc], al
jb loc_00008eb7  ; jb 0x8eb7
mov esi, dword [ebp - 0x3ec]
push ebx
push ebx
lea edx, [esi + 1]
push edx
push 0
push eax
lea eax, [ebp - 0x302]
push eax
push dword [ebp - 0x3f4]
push dword [ebp - 0x418]
push dword [ebp + 0x10]
push dword [ebp + 0x14]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00007a48  ; call 0x7a48
add esp, 0x30
test eax, eax
js loc_00009176  ; js 0x9176

loc_00008831:
sub esp, 0xc
push dword [ebp + 0xc]
call fcn_0000823c  ; call 0x823c
add esp, 0x10
test al, al
jne loc_00009193  ; jne 0x9193

loc_00008847:
inc byte [ebp - 0x408]
mov al, byte [ebp - 0x3ee]
add dword [ebp - 0x3ec], 0x41
cmp byte [ebp - 0x408], al
jb loc_000087c1  ; jb 0x87c1
push eax
xor edi, edi
push eax
push 0xffffdfff
push dword [ebp - 0x410]
lea ebx, [ebp - 0x384]
call fcn_00018a7a  ; call 0x18a7a
pop eax
pop edx
push dword [ebp - 0x3f4]
push dword [ebp + 0xc]
call fcn_00007f54  ; call 0x7f54
add esp, 0x10
lea edx, [ebp - 0x2a2]

loc_00008899:
lea eax, [ebp - 0x3c4]

loc_0000889f:
mov dword [eax], 0xffffffff
add eax, 4
cmp eax, ebx
jne short loc_0000889f  ; jne 0x889f
xor eax, eax

loc_000088ae:
mov esi, dword [edx + eax*4 + 1]
cmp esi, 0xffffffff
je short loc_000088be  ; je 0x88be
mov dword [ebp + eax*4 - 0x3c4], esi

loc_000088be:
mov esi, dword [ebp + eax*4 - 0x3c4]
cmp esi, dword [ebx + eax*4]
jle short loc_000088d6  ; jle 0x88d6
mov cl, byte [edx]
mov dword [ebx + eax*4], esi
mov byte [ebp + eax - 0x3d4], cl

loc_000088d6:
inc eax
cmp eax, 0x10
jne short loc_000088ae  ; jne 0x88ae
inc edi
add edx, 0x41
mov eax, edi
cmp al, byte [ebp - 0x3ee]
jb short loc_00008899  ; jb 0x8899
cmp byte [ebp - 0x3df], 0
jne loc_0000920a  ; jne 0x920a

loc_000088f7:
mov byte [ebp - 0x3ee], 1

loc_000088fe:
mov byte [ebp - 0x3ec], 0

loc_00008905:
mov al, byte [ebp - 0x3ec]
cmp al, byte [ebp - 0x3de]
jae loc_00008a52  ; jae 0x8a52
movzx edi, byte [ebp - 0x3ec]
mov eax, edi
shl eax, 5
lea ecx, [ebp + eax - 0x302]
cmp byte [ecx + 0xb], 0
mov al, byte [ecx + 2]
je loc_00008a47  ; je 0x8a47
cmp byte [ebp - 0x3df], 0
jne short loc_00008952  ; jne 0x8952

loc_00008940:
shl edi, 5
xor ebx, ebx
lea eax, [ebp - 0x18]
mov edx, edi
lea edi, [eax + edi]
jmp near loc_000089fa  ; jmp 0x89fa

loc_00008952:
cmp al, 1
je short loc_00008972  ; je 0x8972
cmp al, 2
je short loc_0000898e  ; je 0x898e
mov bl, byte [ebp - 0x3ed]
cmp bl, 1
sbb esi, esi
neg ebx
and esi, 0xfffffff2
and ebx, 0xe
add esi, 0xf
jmp short loc_000089a8  ; jmp 0x89a8

loc_00008972:
mov al, byte [ebp - 0x3ed]
cmp al, 1
sbb esi, esi
and esi, 2
add esi, 7
cmp al, 1
sbb ebx, ebx
and ebx, 2
add ebx, 6
jmp short loc_000089a8  ; jmp 0x89a8

loc_0000898e:
mov al, byte [ebp - 0x3ed]
cmp al, 1
sbb esi, esi
and esi, 0xa
add esi, 3
cmp al, 1
sbb ebx, ebx
and ebx, 0xa
add ebx, 2

loc_000089a8:
mov eax, edi
shl eax, 5
mov dword [ebp - 0x3f4], eax

loc_000089b3:
mov eax, esi
cmp bl, al
ja short loc_00008940  ; ja 0x8940
movzx ecx, bl
sub esp, 0xc
movzx eax, byte [ebp + ecx - 0x3d4]
inc ebx
mov dword [ebp - 0x3f8], ecx
push eax
push dword [ebp + 0x14]
push dword [ebp + 0xc]
lea eax, [ebp - 0x302]
add eax, dword [ebp - 0x3f4]
push ecx
push eax
call fcn_00008086  ; call 0x8086
mov ecx, dword [ebp - 0x3f8]
add esp, 0x20
mov byte [ebp + ecx - 0x3d4], al
jmp short loc_000089b3  ; jmp 0x89b3

loc_000089fa:
cmp bl, byte [edi - 0x2ce]
jae short loc_00008a47  ; jae 0x8a47
movzx eax, bl
sub esp, 0xc
movzx esi, byte [eax + edi - 0x2de]
inc ebx
mov dword [ebp - 0x3f4], edx
movzx eax, byte [ebp + esi - 0x3d4]
push eax
push dword [ebp + 0x14]
push dword [ebp + 0xc]
lea eax, [ebp - 0x302]
add eax, edx
push esi
push eax
call fcn_00008086  ; call 0x8086
add esp, 0x20
mov edx, dword [ebp - 0x3f4]
mov byte [ebp + esi - 0x3d4], al
jmp short loc_000089fa  ; jmp 0x89fa

loc_00008a47:
inc byte [ebp - 0x3ec]
jmp near loc_00008905  ; jmp 0x8905

loc_00008a52:
cmp byte [ebp - 0x3ee], 0
je short loc_00008a8e  ; je 0x8a8e
xor ebx, ebx

loc_00008a5d:
push ecx
push ebx
inc ebx
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
pop esi
pop edi
push 0x10
add eax, 0xb0
push eax
call fcn_00018863  ; call 0x18863
add esp, 0x10
cmp ebx, 3
jne short loc_00008a5d  ; jne 0x8a5d
sub esp, 0xc
push dword [ebp + 0xc]
call fcn_00005fa8  ; call 0x5fa8
add esp, 0x10

loc_00008a8e:
movzx eax, byte [ebp - 0x3ed]
mov byte [ebp - 0x3ec], 0
mov dword [ebp - 0x3f8], eax

loc_00008aa2:
mov al, byte [ebp - 0x3ec]
cmp al, byte [ebp - 0x3de]
jae loc_00008d1f  ; jae 0x8d1f
movzx eax, byte [ebp - 0x3ec]
mov dword [ebp - 0x3fc], eax
shl eax, 5
lea edi, [ebp + eax - 0x302]
movzx eax, byte [ebp + eax - 0x302]
mov cl, byte [edi + 2]
push edx
movzx esi, cl
push esi
movzx ebx, byte [edi + 1]
mov byte [ebp - 0x3ed], cl
push ebx
push eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0x10
cmp byte [edi + 0xb], 0
mov dword [ebp - 0x400], eax
jne short loc_00008b1b  ; jne 0x8b1b
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_00008d14  ; je 0x8d14
push esi
push ebx
push ref_00021e3a  ; push 0x21e3a
push 0x40
call fcn_000153f7  ; call 0x153f7
jmp near loc_00008d11  ; jmp 0x8d11

loc_00008b1b:
mov cl, byte [ebp - 0x3ed]
cmp cl, 1
je short loc_00008b39  ; je 0x8b39
cmp cl, 2
mov al, 0xd
mov bl, 1
mov dl, 0
cmove ebx, eax
mov al, 0xc
cmove edx, eax
jmp short loc_00008b3d  ; jmp 0x8b3d

loc_00008b39:
mov bl, 9
mov dl, 8

loc_00008b3d:
push eax
push eax
lea eax, [ebp - 0x3da]
push eax
movzx eax, dl
push eax
mov dword [ebp - 0x3f4], edx
call fcn_0000930f  ; call 0x930f
add esp, 0x10
mov edx, dword [ebp - 0x3f4]
cmp byte [ebp - 0x3df], 0
je short loc_00008b76  ; je 0x8b76
movzx eax, byte [ebp - 0x3ed]
mov dword [ebp - 0x404], eax
jmp short loc_00008b91  ; jmp 0x8b91

loc_00008b76:
mov eax, dword [ebp - 0x3fc]
lea esi, [ebp - 0x18]
xor edx, edx
shl eax, 5
add eax, esi
mov dword [ebp - 0x3f4], eax
jmp near loc_00008c25  ; jmp 0x8c25

loc_00008b91:
cmp dl, bl
ja short loc_00008b76  ; ja 0x8b76
push edi
movzx esi, dl
push edi
push dword [ebp - 0x3f8]
lea edi, [ebp - 0x3dd]
mov dword [ebp - 0x40c], edx
push esi
call fcn_00006de6  ; call 0x6de6
movzx ecx, byte [ebp - 0x3da]
movzx eax, al
movzx eax, byte [ebp + eax - 0x3d4]
mov edx, eax
lea eax, [ebp - 0x3db]
mov dword [esp], eax
lea eax, [ebp - 0x3dc]
push eax
push edi
push ecx
push edx
mov dword [ebp - 0x3f4], edx
mov dword [ebp - 0x408], eax
call fcn_0000936b  ; call 0x936b
mov eax, dword [ebp - 0x408]
add esp, 0x20
lea ecx, [ebp - 0x3db]
push ecx
push eax
push edi
push esi
call fcn_00009450  ; call 0x9450
push esi
push dword [ebp - 0x404]
push dword [ebp - 0x3f4]
push 1
call fcn_00002a9d  ; call 0x2a9d
mov edx, dword [ebp - 0x40c]
add esp, 0x20
inc edx
jmp near loc_00008b91  ; jmp 0x8b91

loc_00008c25:
mov eax, dword [ebp - 0x3f4]
cmp dl, byte [eax - 0x2ce]
jae loc_00008ce9  ; jae 0x8ce9
mov edi, dword [ebp - 0x3f4]
movzx eax, dl
push ecx
push ecx
push dword [ebp - 0x3f8]
lea ebx, [eax + edi - 0x2ea]
movzx eax, byte [ebx + 0xc]
lea edi, [ebp - 0x3dc]
mov dword [ebp - 0x404], edx
lea esi, [ebp - 0x3dd]
push eax
call fcn_00006de6  ; call 0x6de6
movzx ecx, byte [ebp - 0x3da]
mov dword [ebp - 0x3fc], eax
lea eax, [ebp - 0x3db]
mov dword [esp], eax
push edi
push esi
push ecx
movzx ecx, byte [ebx + 0xc]
movzx ecx, byte [ebp + ecx - 0x3d4]
push ecx
call fcn_0000936b  ; call 0x936b
mov eax, dword [ebp - 0x3fc]
add esp, 0x20
lea ecx, [ebp - 0x3db]
push ecx
push edi
push esi
movzx eax, al
push eax
mov dword [ebp - 0x3fc], eax
call fcn_00009450  ; call 0x9450
mov eax, dword [ebp - 0x3fc]
push eax
movzx eax, byte [ebp - 0x3ed]
push eax
movzx eax, byte [ebx + 0xc]
movzx eax, byte [ebp + eax - 0x3d4]
push eax
push 1
call fcn_00002a9d  ; call 0x2a9d
mov edx, dword [ebp - 0x404]
add esp, 0x20
inc edx
jmp near loc_00008c25  ; jmp 0x8c25

loc_00008ce9:
mov edi, dword [ebp - 0x400]
push esi
push esi
push 1
mov eax, edi
add eax, 0xd98
push eax
call fcn_00018a50  ; call 0x18a50
pop eax
mov eax, edi
pop edx
add eax, 0xb0
push 0x20
push eax
call fcn_00018863  ; call 0x18863

loc_00008d11:
add esp, 0x10

loc_00008d14:
inc byte [ebp - 0x3ec]
jmp near loc_00008aa2  ; jmp 0x8aa2

loc_00008d1f:
cmp byte [ebp - 0x3ee], 0
je short loc_00008d70  ; je 0x8d70
push ebx
mov eax, dword [ebp + 0x10]
xor ebx, ebx
push 0x64
push dword [ebp + 0x10]
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
add esp, 0x10

loc_00008d3c:
push edi
push ebx
inc ebx
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
pop edx
pop ecx
push 0xffef
add eax, 0xb0
push eax
call fcn_00018890  ; call 0x18890
add esp, 0x10
cmp ebx, 3
jne short loc_00008d3c  ; jne 0x8d3c
sub esp, 0xc
push dword [ebp + 0xc]
call fcn_00005ffc  ; call 0x5ffc
add esp, 0x10

loc_00008d70:
xor edx, edx

loc_00008d72:
cmp dl, byte [ebp - 0x3de]
jae short loc_00008dca  ; jae 0x8dca
movzx eax, dl
shl eax, 5
lea ecx, [ebp + eax - 0x302]
movzx ebx, byte [ebp + eax - 0x302]
movzx esi, byte [ecx + 1]
movzx edi, byte [ecx + 2]
lea ecx, [ebp - 0x302]
push 0
add eax, ecx
push eax
push dword [ebp + 0x10]
push dword [ebp + 8]
mov dword [ebp - 0x3ec], edx
call fcn_00005ce2  ; call 0x5ce2
add esp, 0xc
push edi
push esi
push ebx
call fcn_000023ad  ; call 0x23ad
mov edx, dword [ebp - 0x3ec]
add esp, 0x10
inc edx
jmp short loc_00008d72  ; jmp 0x8d72

loc_00008dca:
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_00009307  ; je 0x9307
push esi
push esi
push ref_00021e75  ; push 0x21e75

loc_00008dde:
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp near loc_00009307  ; jmp 0x9307

loc_00008ded:
cmp dword [ebp - 0x3ec], 0x40670
jne loc_000085bf  ; jne 0x85bf
push eax
push eax
push 0xffff7fff
push esi
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10
jmp near loc_000085bf  ; jmp 0x85bf

loc_00008e12:
xor ebx, ebx

loc_00008e14:
cmp bl, byte [ebp - 0x3de]
jae loc_000085b2  ; jae 0x85b2
movzx eax, bl
shl eax, 5
lea edx, [ebp + eax - 0x302]
mov al, byte [ebp + eax - 0x302]
movzx ecx, byte [edx + 2]
movzx edx, byte [edx + 1]
mov byte [ebp - 0x3fc], al

loc_00008e42:
movzx edi, byte [ebp - 0x3fc]
push eax
push ecx
push edx
push edi
mov dword [ebp - 0x408], ecx
mov dword [ebp - 0x400], edx
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xd2
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
mov edx, dword [ebp - 0x400]
mov ecx, dword [ebp - 0x408]
test al, 2
je short loc_00008e42  ; je 0x8e42
sub esp, 0xc
inc ebx
push ecx
push edx
push edi
push dword [ebp + 0x10]
push dword [ebp + 8]
call fcn_000024e1  ; call 0x24e1
add esp, 0x20
jmp near loc_00008e14  ; jmp 0x8e14

loc_00008e98:
xor edi, edi

loc_00008e9a:
mov eax, ebx
mov esi, dword [ebp + 0x14]
shl eax, 5
mov eax, dword [ebp + eax - 0x2fb]
mov dword [esi + edx*4 + 0x29], eax
mov esi, 1
jmp near loc_00008644  ; jmp 0x8644

loc_00008eb7:
movzx eax, byte [ebp - 0x3fc]
lea edi, [ebp - 0x18]
mov dword [ebp - 0x400], eax
shl eax, 5
add edi, eax
mov cl, byte [edi - 0x2e8]
sub edi, 0x2ea
mov byte [edi + 0x1e], 0
movzx eax, byte [ebp + eax - 0x302]
push edx
movzx esi, cl
push esi
movzx ebx, byte [edi + 1]
mov byte [ebp - 0x3f8], cl
push ebx
push eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0x10
cmp byte [edi + 0xb], 0
mov dword [ebp - 0x404], eax
jne short loc_00008f2c  ; jne 0x8f2c
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_0000916b  ; je 0x916b
push esi
push ebx
push ref_00021de4  ; push 0x21de4
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp near loc_0000916b  ; jmp 0x916b

loc_00008f2c:
mov cl, byte [ebp - 0x3f8]
cmp cl, 1
je short loc_00008f4d  ; je 0x8f4d
cmp cl, 2
mov al, 0xd
mov esi, 1
mov bl, 0
cmove esi, eax
mov al, 0xc
cmove ebx, eax
jmp short loc_00008f54  ; jmp 0x8f54

loc_00008f4d:
mov esi, 9
mov bl, 8

loc_00008f54:
push edi
push edi
lea eax, [ebp - 0x3da]
push eax
movzx eax, bl
push eax
call fcn_0000930f  ; call 0x930f
lea edi, [ebp - 0x3db]
lea eax, [ebp - 0x3dc]
mov dword [esp], edi
push eax
lea eax, [ebp - 0x3dd]
push eax
movzx eax, byte [ebp - 0x3da]
push eax
mov eax, dword [ebp - 0x3ec]
movzx eax, byte [eax]
push eax
call fcn_0000936b  ; call 0x936b
add esp, 0x20
cmp byte [ebp - 0x3df], 0
je short loc_00008fab  ; je 0x8fab
mov edx, edi
movzx edi, byte [ebp - 0x3f8]
jmp short loc_00008fbe  ; jmp 0x8fbe

loc_00008fab:
mov esi, dword [ebp - 0x400]
lea eax, [ebp - 0x18]
xor edx, edx
shl esi, 5
lea edi, [eax + esi]
jmp short loc_0000900d  ; jmp 0x900d

loc_00008fbe:
mov eax, esi
cmp bl, al
ja short loc_00008fab  ; ja 0x8fab
push edx
movzx eax, bl
lea ecx, [ebp - 0x3dc]
inc ebx
push ecx
lea ecx, [ebp - 0x3dd]
push ecx
push eax
mov dword [ebp - 0x420], edx
mov dword [ebp - 0x41c], eax
call fcn_00009450  ; call 0x9450
mov eax, dword [ebp - 0x41c]
push eax
mov eax, dword [ebp - 0x3ec]
push edi
movzx eax, byte [eax]
push eax
push 1
call fcn_00002a9d  ; call 0x2a9d
add esp, 0x20
mov edx, dword [ebp - 0x420]
jmp short loc_00008fbe  ; jmp 0x8fbe

loc_0000900d:
lea ebx, [edi - 0x2da]
cmp dl, byte [edi - 0x2ce]
jae short loc_00009081  ; jae 0x9081
push ebx
movzx eax, dl
push ebx
push dword [ebp - 0x414]
movzx eax, byte [eax + edi - 0x2de]
mov dword [ebp - 0x41c], edx
push eax
call fcn_00006de6  ; call 0x6de6
movzx ebx, al
lea eax, [ebp - 0x3db]
push eax
lea eax, [ebp - 0x3dc]
push eax
lea eax, [ebp - 0x3dd]
push eax
push ebx
call fcn_00009450  ; call 0x9450
movzx eax, byte [ebp - 0x3f8]
add esp, 0x20
push ebx
push eax
mov eax, dword [ebp - 0x3ec]
movzx eax, byte [eax]
push eax
push 1
call fcn_00002a9d  ; call 0x2a9d
mov edx, dword [ebp - 0x41c]
add esp, 0x10
inc edx
jmp short loc_0000900d  ; jmp 0x900d

loc_00009081:
mov eax, dword [ebp - 0x404]
lea edi, [ebp + esi - 0x302]
push ecx
push ecx
push 1
add eax, 0xd98
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0xc
push edi
push dword [ebp + 0x10]
push dword [ebp + 8]
call fcn_000063c9  ; call 0x63c9
mov eax, dword [ebp - 0x404]
lea esi, [eax + 0xb2]
mov dword [esp], esi
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
and eax, 0xf
cmp ax, 3
je short loc_0000910b  ; je 0x910b
sub esp, 0xc
push edi
call fcn_0000642d  ; call 0x642d
add esp, 0xc
movzx eax, al
push eax
push 3
push edi
push dword [ebp + 0x10]
push dword [ebp + 0x14]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_000065b0  ; call 0x65b0
add esp, 0x14
push esi
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
and eax, 0xf
cmp ax, 3
je short loc_0000910b  ; je 0x910b
mov byte [ebx + 0xe], 1
jmp short loc_0000916b  ; jmp 0x916b

loc_0000910b:
movzx esi, byte [ebp - 0x3f8]
push edi
push edi
mov edi, dword [ebp - 0x3f4]
push esi
push edi
call fcn_00007b99  ; call 0x7b99
add esp, 0xc
mov ebx, eax
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
movzx eax, word [eax + 0x3c]
push eax
mov eax, dword [ebp + 0x10]
push dword [ebp + 0x10]
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
pop eax
pop edx
push esi
push edi
call fcn_00007b99  ; call 0x7b99
add esp, 0x10
cmp eax, ebx
mov eax, dword [ebp - 0x400]
je short loc_00009160  ; je 0x9160
shl eax, 5
mov byte [ebp + eax - 0x2e4], 1
jmp short loc_0000916b  ; jmp 0x916b

loc_00009160:
shl eax, 5
mov byte [ebp + eax - 0x2e3], 1

loc_0000916b:
inc byte [ebp - 0x3fc]
jmp near loc_000087e0  ; jmp 0x87e0

loc_00009176:
xor eax, eax

loc_00009178:
mov edi, dword [ebp - 0x3ec]
mov dword [edi + eax + 1], 0
add eax, 4
cmp eax, 0x40
jne short loc_00009178  ; jne 0x9178
jmp near loc_00008831  ; jmp 0x8831

loc_00009193:
push ecx
push ecx
lea eax, [ebp - 0x344]
push eax
movzx eax, byte [ebp - 0x3de]
push 2
push eax
lea eax, [ebp - 0x302]
push eax
movzx eax, word [ebp - 0x40c]
push dword [ebp - 0x3f4]
push eax
push dword [ebp + 0x10]
push dword [ebp + 0x14]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00007a48  ; call 0x7a48
add esp, 0x30
test eax, eax
js loc_00008847  ; js 0x8847
xor eax, eax

loc_000091d9:
mov edx, dword [ebp + eax - 0x344]
cmp edx, 0xffffffff
je short loc_000091fd  ; je 0x91fd
mov esi, dword [ebp - 0x3ec]
mov ecx, dword [esi + eax + 1]
cmp ecx, 0x18f
jle short loc_000091fd  ; jle 0x91fd
add edx, ecx
mov dword [esi + eax + 1], edx

loc_000091fd:
add eax, 4
cmp eax, 0x40
jne short loc_000091d9  ; jne 0x91d9
jmp near loc_00008847  ; jmp 0x8847

loc_0000920a:
mov byte [ebp - 0x3ec], 0

loc_00009211:
mov al, byte [ebp - 0x3ec]
cmp al, byte [ebp - 0x3de]
jae loc_000088f7  ; jae 0x88f7
movzx eax, byte [ebp - 0x3ec]
shl eax, 5
mov al, byte [ebp + eax - 0x300]
cmp al, 1
je short loc_0000925f  ; je 0x925f
cmp al, 2
mov al, byte [ebp - 0x3ed]
je short loc_00009285  ; je 0x9285
cmp al, 1
mov bl, al
sbb edi, edi
neg ebx
and edi, 0xfffffff2
and ebx, 0xe
add edi, 0xf
cmp al, 1
sbb edx, edx
and edx, 0xfffffff5
add edx, 0xd
jmp short loc_000092a1  ; jmp 0x92a1

loc_0000925f:
mov al, byte [ebp - 0x3ed]
cmp al, 1
sbb edi, edi
and edi, 2
add edi, 7
cmp al, 1
sbb ebx, ebx
and ebx, 2
add ebx, 6
cmp al, 1
sbb edx, edx
and edx, 5
add edx, 5
jmp short loc_000092a1  ; jmp 0x92a1

loc_00009285:
cmp al, 1
sbb edi, edi
and edi, 0xa
add edi, 3
cmp al, 1
sbb ebx, ebx
and ebx, 0xa
add ebx, 2
cmp al, 1
sbb edx, edx
and edx, 0xd
inc edx

loc_000092a1:
movzx esi, dl
cmp dword [ebp + esi*4 - 0x384], 0xffffffff
je short loc_000092fc  ; je 0x92fc
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000092d4  ; je 0x92d4
mov eax, edi
sub esp, 0xc
movzx eax, al
push eax
movzx eax, bl
push eax
push esi
push ref_00021e09  ; push 0x21e09
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_000092d4:
mov eax, edi
cmp bl, al
ja short loc_000092fc  ; ja 0x92fc
mov ecx, dword [ebp + esi*4 - 0x384]
movzx eax, bl
inc ebx
mov dword [ebp + eax*4 - 0x384], ecx
mov cl, byte [ebp + esi - 0x3d4]
mov byte [ebp + eax - 0x3d4], cl
jmp short loc_000092d4  ; jmp 0x92d4

loc_000092fc:
inc byte [ebp - 0x3ec]
jmp near loc_00009211  ; jmp 0x9211

loc_00009307:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000930f:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
push eax
push 0
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
pop edx
pop ecx
lea ebx, [eax + 0x814]
mov eax, esi
movzx edx, al
shl edx, 0x13
or edx, 0x2840000
push edx
push ebx
call fcn_00017dcb  ; call 0x17dcb
mov dword [esp], ebx
call fcn_00017d8a  ; call 0x17d8a
mov esi, eax
pop eax
pop edx
shr esi, 6
push 0
push ebx
call fcn_00017dcb  ; call 0x17dcb
mov eax, dword [ebp + 0xc]
mov edx, esi
and edx, 0x3f
add esp, 0x10
mov byte [eax], dl
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0000936b:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov ebx, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov edi, dword [ebp + 0x10]
cmp bl, 9
ja short loc_000093b7  ; ja 0x93b7
movzx ebx, bl
jmp dword [ebx*4 + ref_00020340]  ; ujmp: jmp dword [ebx*4 + 0x20340]

loc_0000938c:
mov ecx, 0xffffff38
jmp near loc_0000944c  ; jmp 0x944c

loc_00009396:
mov ecx, 0xffffff83
jmp near loc_0000944c  ; jmp 0x944c

loc_000093a0:
xor ecx, ecx
jmp near loc_0000944c  ; jmp 0x944c

loc_000093a7:
mov ecx, 0xffffff83
jmp short loc_000093dc  ; jmp 0x93dc

loc_000093ae:
xor ecx, ecx
mov eax, 0xffffff5a
jmp short loc_000093ed  ; jmp 0x93ed

loc_000093b7:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000093e3  ; je 0x93e3
movzx ebx, bl
push eax
push ebx
push ref_00021e93  ; push 0x21e93
push 2
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp short loc_000093e3  ; jmp 0x93e3

loc_000093d6:
xor ecx, ecx
jmp short loc_000093e8  ; jmp 0x93e8

loc_000093da:
xor ecx, ecx

loc_000093dc:
mov eax, 0xffffff83
jmp short loc_000093ed  ; jmp 0x93ed

loc_000093e3:
mov ecx, 0xffffff38

loc_000093e8:
mov eax, 0xffffff9c

loc_000093ed:
neg eax

loc_000093ef:
mov ebx, ecx
mov edx, esi
movzx edx, dl
neg ebx
test ecx, ecx
cmove ebx, ecx
mov ecx, 0x3e8
imul eax, edx
imul ebx, edx
cdq
idiv ecx
cmp edx, 0x1f4
setge dl
add eax, edx
mov byte [edi], al
mov eax, ebx
cdq
idiv ecx
cmp edx, 0x1f4
mov edx, esi
setge bl
add ebx, eax
mov eax, dword [ebp + 0x18]
mov byte [eax], bl
mov eax, dword [ebp + 0x14]
sub dl, byte [edi]
sub edx, ebx
mov byte [eax], dl
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

loc_00009440:
mov ecx, 0xffffff06
jmp short loc_0000944c  ; jmp 0x944c

loc_00009447:
mov ecx, 0xffffff59

loc_0000944c:
xor eax, eax
jmp short loc_000093ef  ; jmp 0x93ef

fcn_00009450:
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x14]
push esi
push ebx
movzx ebx, byte [eax]
mov eax, dword [ebp + 0xc]
or ebx, 0x40000
movzx eax, byte [eax]
shl eax, 6
or ebx, eax
mov eax, dword [ebp + 0x10]
movzx eax, byte [eax]
shl eax, 0xc
or ebx, eax
movzx eax, byte [ebp + 8]
shl eax, 0x13
or ebx, eax
push eax
push 0
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
pop edx
pop ecx
push ebx
lea esi, [eax + 0x814]
push esi
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10
mov dword [ebp + 8], esi
mov dword [ebp + 0xc], 0
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00017dcb  ; jmp 0x17dcb

fcn_000094b3:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov bl, byte [ebp + 8]
push ecx
push 0
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
mov edx, esi
add esp, 0x10
shr bl, 1
test dl, dl
movzx ebx, bl
je short loc_000094f7  ; je 0x94f7
push edx
push 6
shl ebx, 5
push 0xfffffffffffffff9
lea eax, [eax + ebx + 0x900]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

loc_000094f7:
shl ebx, 5
lea eax, [eax + ebx + 0x900]
mov dword [ebp + 0xc], 0xfffffff9
mov dword [ebp + 8], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00018a7a  ; jmp 0x18a7a

fcn_00009516:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
call fcn_0001c58d  ; call 0x1c58d
cmp eax, 0x40660
je short loc_000095ac  ; je 0x95ac
cmp eax, 0x306c0
je short loc_000095ac  ; je 0x95ac
cmp eax, 0x40670
je short loc_00009554  ; je 0x9554

loc_0000953b:
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_00009617  ; je 0x9617
mov dword [ebp + 0xc], ref_00021ede  ; mov dword [ebp + 0xc], 0x21ede
jmp near loc_00009605  ; jmp 0x9605

loc_00009554:
push edx
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 2
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 0x10
je short loc_0000953b  ; je 0x953b

loc_00009572:
push eax
push 0
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
mov edx, ebx
add esp, 0xc
and edx, 1
shl edx, 0x1e
shr bl, 1
or edx, 0x80000000
movzx ebx, bl
push edx
shl ebx, 5
push 0x3fffffff
lea eax, [eax + ebx + 0x80c]
push eax
call fcn_00018aa4  ; call 0x18aa4
jmp short loc_000095f0  ; jmp 0x95f0

loc_000095ac:
cmp eax, 0x40670
je short loc_00009572  ; je 0x9572
cmp eax, 0x40660
je short loc_000095c1  ; je 0x95c1
cmp eax, 0x306c0
jne short loc_000095f5  ; jne 0x95f5

loc_000095c1:
push 0x1000c
movzx ebx, bl
push 0
push 2
push esi
call fcn_0000407d  ; call 0x407d
push 0
push ebx
push 0x1011
push esi
call fcn_0000407d  ; call 0x407d
add esp, 0x20
push 0
push 0
push 3
push esi
call fcn_0000407d  ; call 0x407d

loc_000095f0:
add esp, 0x10
jmp short loc_00009617  ; jmp 0x9617

loc_000095f5:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00009617  ; je 0x9617
mov dword [ebp + 0xc], ref_00021f11  ; mov dword [ebp + 0xc], 0x21f11

loc_00009605:
mov dword [ebp + 8], 2
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_000153f7  ; jmp 0x153f7

loc_00009617:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0000961e:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
call fcn_0001c58d  ; call 0x1c58d
mov ebx, eax
call fcn_0001c5b4  ; call 0x1c5b4
cmp ebx, 0x40670
je short loc_0000963e  ; je 0x963e

loc_0000963a:
xor edx, edx
jmp short loc_000096a9  ; jmp 0x96a9

loc_0000963e:
mov edx, 0x80000003
test eax, eax
je short loc_000096a9  ; je 0x96a9
mov eax, esi
xor ebx, ebx
test al, al
je short loc_0000967c  ; je 0x967c

loc_0000964f:
push esi
push 0
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
pop edx
pop ecx
push 0x10
lea eax, [eax + ebx + 0x90c]
add ebx, 0x20
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10
cmp ebx, 0x100
jne short loc_0000964f  ; jne 0x964f
jmp short loc_0000963a  ; jmp 0x963a

loc_0000967c:
push eax
push 0
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
pop edx
pop ecx
push 0xffffffffffffffef
lea eax, [eax + ebx + 0x90c]
add ebx, 0x20
push eax
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10
cmp ebx, 0x100
jne short loc_0000967c  ; jne 0x967c
jmp short loc_0000963a  ; jmp 0x963a

loc_000096a9:
lea esp, [ebp - 8]
mov eax, edx
pop ebx
pop esi
pop ebp
ret

fcn_000096b2:
push ebp
mov ebp, esp
mov eax, dword [ebp + 0xc]
push esi
movzx esi, byte [ebp + 8]
push ebx
mov ebx, dword [ebp + 0x14]
sub esp, 0xc
shl eax, 6
or eax, dword [ebp + 0x10]
shl ebx, 6
or ebx, dword [ebp + 0x18]
push eax
push 0x31
push esi
push 1
push 0
call fcn_00002974  ; call 0x2974
add esp, 0x20
mov dword [ebp + 0x18], ebx
mov dword [ebp + 0x10], esi
mov dword [ebp + 0x14], 0x32
mov dword [ebp + 0xc], 1
mov dword [ebp + 8], 0
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00002974  ; jmp 0x2974

fcn_00009706:
push ebp
mov ebp, esp
push ebx
push eax
movzx ebx, byte [ebp + 8]
push 0x31
push ebx
push 1
push 0
call fcn_000029f2  ; call 0x29f2
mov edx, dword [ebp + 0x10]
mov ecx, eax
and ecx, 0x3f
mov dword [edx], ecx
mov edx, dword [ebp + 0xc]
shr eax, 6
and eax, 3
mov dword [edx], eax
push 0x32
push ebx
push 1
push 0
call fcn_000029f2  ; call 0x29f2
mov edx, dword [ebp + 0x18]
add esp, 0x20
mov ecx, eax
and ecx, 0x3f
mov dword [edx], ecx
mov edx, dword [ebp + 0x14]
shr eax, 6
and eax, 3
mov dword [edx], eax
mov ebx, dword [ebp - 4]
leave
ret

fcn_00009759:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 8
mov ecx, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
mov edx, dword [ebp + 0x14]
cmp ecx, 0x20
jne short loc_0000977e  ; jne 0x977e
mov dword [ebx], 0
mov dword [edx], 0x20
jmp short loc_000097d1  ; jmp 0x97d1

loc_0000977e:
mov eax, 0
jbe short loc_000097a2  ; jbe 0x97a2
lea esi, [ecx - 0x20]

loc_00009788:
mov ecx, dword [ebp + 8]
mov edi, esi
sub ecx, eax
shl edi, cl
mov ecx, edi
add ecx, 0x20
lea edi, [eax + 1]
cmp ecx, 0x3f
jle short loc_000097cd  ; jle 0x97cd
mov eax, edi
jmp short loc_00009788  ; jmp 0x9788

loc_000097a2:
mov esi, 0x20
mov edi, esi
sub edi, ecx
mov dword [ebp - 0x14], edi

loc_000097ae:
mov ecx, dword [ebp + 8]
mov edi, dword [ebp - 0x14]
sub ecx, eax
shl edi, cl
mov ecx, edi
lea edi, [eax + 1]
mov dword [ebp - 0x10], edi
mov edi, esi
sub edi, ecx
mov ecx, edi
jns short loc_000097cd  ; jns 0x97cd
mov eax, dword [ebp - 0x10]
jmp short loc_000097ae  ; jmp 0x97ae

loc_000097cd:
mov dword [ebx], eax
mov dword [edx], ecx

loc_000097d1:
pop eax
pop edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000097d8:
push ebp
mov ebp, esp
push ebx
sub esp, 0x10
mov ebx, dword [ebp + 0xc]
lea eax, [ebp - 8]
push eax
lea eax, [ebp - 0xc]
push eax
push ebx
push dword [ebp + 8]
call fcn_00009759  ; call 0x9759
add esp, 0x10
cmp ebx, 0x20
jbe short loc_0000981b  ; jbe 0x981b
mov eax, dword [ebp - 0xc]
test eax, eax
jne short loc_0000980a  ; jne 0x980a

loc_00009802:
mov eax, dword [ebp - 8]
sub eax, 0x20
jmp short loc_00009832  ; jmp 0x9832

loc_0000980a:
mov edx, dword [ebp - 8]
add eax, 0xfffffff
shl eax, 4
lea eax, [edx + eax - 0x10]
jmp short loc_00009832  ; jmp 0x9832

loc_0000981b:
je short loc_00009830  ; je 0x9830
mov eax, dword [ebp - 0xc]
test eax, eax
je short loc_00009802  ; je 0x9802
imul eax, eax, 0xffffffef
mov edx, dword [ebp - 8]
lea eax, [edx + eax - 0x20]
jmp short loc_00009832  ; jmp 0x9832

loc_00009830:
xor eax, eax

loc_00009832:
mov ebx, dword [ebp - 4]
leave
ret

fcn_00009837:
push ebp
mov eax, 0x80000002
mov ebp, esp
mov edx, dword [ebp + 8]
push esi
push ebx
lea ecx, [edx + 0x53]
cmp ecx, 0xa2
ja loc_000098f6  ; ja 0x98f6
cmp edx, 0
je loc_000098e3  ; je 0x98e3
lea eax, [edx + 0x20]
mov ebx, 0
mov edx, eax
jle short loc_000098b1  ; jle 0x98b1

loc_00009868:
test ebx, ebx
jne short loc_00009875  ; jne 0x9875
mov esi, edx
cmp edx, 0x3f
jg short loc_00009897  ; jg 0x9897
jmp short loc_000098ea  ; jmp 0x98ea

loc_00009875:
mov esi, eax
cmp eax, 0x3f
jg short loc_00009897  ; jg 0x9897
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000098ea  ; je 0x98ea
cmp esi, 0x2e
jg short loc_000098ea  ; jg 0x98ea
push edx
push ref_00021f2c  ; push 0x21f2c
push 0x1ad
jmp short loc_000098d4  ; jmp 0x98d4

loc_00009897:
inc ebx
sub eax, 0x10
cmp ebx, 4
jne short loc_00009868  ; jne 0x9868
jmp short loc_000098ea  ; jmp 0x98ea

loc_000098a2:
mov esi, edx
test edx, edx
jns short loc_000098ea  ; jns 0x98ea

loc_000098a8:
inc ebx
add eax, 0x11
cmp ebx, 4
je short loc_000098ea  ; je 0x98ea

loc_000098b1:
test ebx, ebx
je short loc_000098a2  ; je 0x98a2
mov esi, eax
test eax, eax
js short loc_000098a8  ; js 0x98a8
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000098ea  ; je 0x98ea
cmp esi, 0x11
jle short loc_000098ea  ; jle 0x98ea
push eax
push ref_00021f77  ; push 0x21f77
push 0x1bc

loc_000098d4:
push ref_00021f3c  ; push 0x21f3c
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
jmp short loc_000098ea  ; jmp 0x98ea

loc_000098e3:
mov esi, 0x20
xor ebx, ebx

loc_000098ea:
mov eax, dword [ebp + 0xc]
mov dword [eax], ebx
mov eax, dword [ebp + 0x10]
mov dword [eax], esi
xor eax, eax

loc_000098f6:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_000098fd:
push ebp
mov ebp, esp
push esi
push ebx
sub esp, 0x2c
mov eax, dword [ebp + 8]
lea edx, [ebp - 0xc]
mov ebx, dword [ebp + 0xc]
push edx
lea edx, [ebp - 0x10]
push edx
lea edx, [ebp - 0x14]
push edx
lea edx, [ebp - 0x18]
push edx
movzx edx, al
push edx
mov dword [ebp - 0x1c], eax
call fcn_00009706  ; call 0x9706
mov eax, dword [ebp - 0x1c]
add esp, 0x18
mov edx, dword [ebp - 0x14]
mov byte [ebx], al
mov eax, dword [ebp - 0x18]
mov dword [ebx + 5], edx
mov dword [ebx + 1], eax
push edx
push eax
call fcn_000097d8  ; call 0x97d8
mov edx, dword [ebp - 0xc]
mov dword [ebx + 0x11], edx
mov dword [ebx + 9], eax
mov eax, dword [ebp - 0x10]
mov dword [ebx + 0xd], eax
pop ecx
pop esi
push edx
push eax
call fcn_000097d8  ; call 0x97d8
mov edx, dword [ebx + 9]
mov ecx, 0x4f
mov esi, ecx
add esp, 0x10
sub esi, edx
sub ecx, eax
cmp esi, ecx
cmovle ecx, esi
mov dword [ebx + 0x19], ecx
mov ecx, 0xffffffad
mov esi, ecx
sub ecx, eax
sub esi, edx
mov dword [ebx + 0x15], eax
cmp esi, ecx
mov eax, ecx
cmovge eax, esi
mov dword [ebx + 0x1d], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_00009992:
push ebp
mov ebp, esp
sub esp, 0x14
mov eax, dword [ebp + 8]
push dword [eax + 0x11]
push dword [eax + 0xd]
push dword [eax + 5]
push dword [eax + 1]
movzx eax, byte [eax]
push eax
call fcn_000096b2  ; call 0x96b2
add esp, 0x20
leave
ret

fcn_000099b5:
push ebp
mov ebp, esp
push esi
push ebx
sub esp, 0x14
mov ebx, dword [ebp + 0xc]
lea eax, [ebp - 0x14]
mov esi, dword [ebp + 8]
push eax
lea eax, [ebp - 0x18]
push eax
mov eax, dword [ebx + 9]
add eax, esi
push eax
call fcn_00009837  ; call 0x9837
add esp, 0x10
test eax, eax
js short loc_00009a13  ; js 0x9a13
push eax
lea eax, [ebp - 0xc]
push eax
lea eax, [ebp - 0x10]
push eax
add esi, dword [ebx + 0x15]
push esi
call fcn_00009837  ; call 0x9837
add esp, 0x10
test eax, eax
js short loc_00009a13  ; js 0x9a13
sub esp, 0xc
push dword [ebp - 0xc]
push dword [ebp - 0x10]
push dword [ebp - 0x14]
push dword [ebp - 0x18]
movzx eax, byte [ebx]
push eax
call fcn_000096b2  ; call 0x96b2
add esp, 0x20
xor eax, eax

loc_00009a13:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_00009a1a:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 1
mov edx, dword [ebp + 0x14]
mov al, byte [ebp + 0xc]
mov esi, dword [ebp + 8]
mov byte [edx], 0
mov byte [ebp - 0xd], al

loc_00009a32:
mov eax, esi
sub eax, dword [ebp + 8]
cmp al, byte [ebp - 0xd]
jae short loc_00009a62  ; jae 0x9a62
mov al, byte [esi]
xor edi, edi
movzx ecx, byte [edx]
shr al, 1

loc_00009a45:
mov ebx, edi
cmp cl, bl
jbe short loc_00009a57  ; jbe 0x9a57
mov ebx, dword [ebp + 0x10]
inc edi
cmp byte [ebx + edi - 1], al
jne short loc_00009a45  ; jne 0x9a45
jmp short loc_00009a5f  ; jmp 0x9a5f

loc_00009a57:
mov ebx, dword [ebp + 0x10]
mov byte [ebx + ecx], al
inc byte [edx]

loc_00009a5f:
inc esi
jmp short loc_00009a32  ; jmp 0x9a32

loc_00009a62:
add esp, 1
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00009a6c:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x3c
mov eax, dword [ebp + 0xc]
mov edi, dword [ebp + 0x10]
lea edx, [ebp - 0x21]
push edx
mov ebx, dword [ebp + 0x14]
lea edx, [ebp - 0x20]
mov esi, dword [ebp + 0x18]
push edx
mov byte [ebp - 0x29], al
movzx eax, al
push eax
push dword [ebp + 8]
mov dword [ebp - 0x34], edi
mov edi, dword [ebp + 0x1c]
mov dword [ebp - 0x38], ebx
mov byte [ebp - 0x21], 0
mov dword [ebp - 0x3c], edi
call fcn_00009a1a  ; call 0x9a1a
add esp, 0xc
push 0
push 1
push 0
call fcn_00016bd6  ; call 0x16bd6
mov edx, dword [ebp + 8]
add esp, 0x10
mov ebx, eax
lea edi, [eax + 0xa00]

loc_00009ac4:
mov al, byte [ebp + 8]
mov byte [ebp - 0x30], al
mov al, dl
sub eax, dword [ebp + 8]
cmp al, byte [ebp - 0x29]
jae short loc_00009af5  ; jae 0x9af5
push ecx
push ecx
push 0xfffffbff
movzx eax, byte [edx]
mov dword [ebp - 0x30], edx
shl eax, 4
add eax, edi
push eax
call fcn_00018a7a  ; call 0x18a7a
mov edx, dword [ebp - 0x30]
add esp, 0x10
inc edx
jmp short loc_00009ac4  ; jmp 0x9ac4

loc_00009af5:
movzx eax, byte [ebp - 0x34]
shl esi, 0x1c
xor edx, edx
movzx edi, byte [ebp - 0x38]
shl eax, 0xa
or esi, eax
shl edi, 0xb

loc_00009b0a:
cmp dl, byte [ebp - 0x21]
jae short loc_00009b56  ; jae 0x9b56
movzx eax, dl
movzx ecx, byte [ebp + eax - 0x20]
mov dword [ebp - 0x38], edx
push edx
push esi
shl ecx, 5
add ecx, ebx
push 0xeffc03ff
lea eax, [ecx + 0x900]
push eax
mov dword [ebp - 0x34], ecx
call fcn_00018aa4  ; call 0x18aa4
mov ecx, dword [ebp - 0x34]
add esp, 0xc
push edi
push 0xfffe07ff
add ecx, 0x90c
push ecx
call fcn_00018aa4  ; call 0x18aa4
mov edx, dword [ebp - 0x38]
add esp, 0x10
inc edx
jmp short loc_00009b0a  ; jmp 0x9b0a

loc_00009b56:
add ebx, 0xa00
mov esi, dword [ebp + 8]
cmp byte [ebp - 0x3c], 0
je short loc_00009b8b  ; je 0x9b8b

loc_00009b65:
mov eax, esi
sub eax, dword [ebp - 0x30]
cmp al, byte [ebp - 0x29]
jae short loc_00009b8b  ; jae 0x9b8b
push eax
inc esi
push eax
push 0x400
movzx eax, byte [esi - 1]
shl eax, 4
add eax, ebx
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10
jmp short loc_00009b65  ; jmp 0x9b65

loc_00009b8b:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00009b95:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 0xc]
mov edi, dword [ebp + 8]
mov dword [ebp - 0x1c], eax
mov eax, dword [ebp + 0x10]
test al, al
je short loc_00009bda  ; je 0x9bda
mov esi, eax
mov eax, ref_00026e4c  ; mov eax, 0x26e4c

loc_00009bb5:
mov dl, byte [eax + 1]
movzx ecx, byte [eax]
movzx ebx, byte [eax + 3]
mov byte [ebp - 0x1d], dl
mov edx, esi
cmp byte [eax + 2], dl
je short loc_00009be6  ; je 0x9be6
add eax, 4
cmp eax, ref_00026eac  ; cmp eax, 0x26eac
jne short loc_00009bb5  ; jne 0x9bb5
mov eax, 0x80000002
jmp short loc_00009bff  ; jmp 0x9bff

loc_00009bda:
push edx
push edx
push 0
push 0
push 0
push 0
jmp short loc_00009bf1  ; jmp 0x9bf1

loc_00009be6:
push eax
movzx edx, byte [ebp - 0x1d]
push eax
push 1
push ebx
push ecx
push edx

loc_00009bf1:
movzx eax, byte [ebp - 0x1c]
push eax
push edi
call fcn_00009a6c  ; call 0x9a6c
add esp, 0x20

loc_00009bff:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00009c07:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
lea ebx, [esi + 0x2338]

loc_00009c15:
sub esp, 0xc
push ebx
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 1
jne short loc_00009c15  ; jne 0x9c15
push eax
push eax
push dword [ebp + 0xc]
lea eax, [esi + 0x2330]
push eax
call fcn_00017dcb  ; call 0x17dcb
add esp, 0xc
push 0x700
push 0xff
push ebx
call fcn_000188bd  ; call 0x188bd
lea eax, [esi + 0x2334]
add esi, 0x233a
pop edx
pop ecx
push dword [ebp + 0x10]
push eax
call fcn_00017dcb  ; call 0x17dcb
pop eax
pop edx
push 0xf000
push esi
call fcn_00017d40  ; call 0x17d40
pop ecx
pop esi
push 1
push ebx
call fcn_00018863  ; call 0x18863
add esp, 0x10

loc_00009c7a:
sub esp, 0xc
push ebx
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 1
jne short loc_00009c7a  ; jne 0x9c7a
sub esp, 0xc
push ebx
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
and eax, 6
cmp al, 1
sbb eax, eax
not eax
lea esp, [ebp - 8]
and eax, 0x80000007
pop ebx
pop esi
pop ebp
ret

fcn_00009cab:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
lea ebx, [esi + 0x2338]

loc_00009cb9:
sub esp, 0xc
push ebx
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 1
jne short loc_00009cb9  ; jne 0x9cb9
push eax
push eax
push dword [ebp + 0xc]
lea eax, [esi + 0x2330]
push eax
call fcn_00017dcb  ; call 0x17dcb
add esp, 0xc
push 0x600
push 0xff
push ebx
call fcn_000188bd  ; call 0x188bd
lea eax, [esi + 0x233a]
pop edx
pop ecx
push 0xf000
push eax
call fcn_00017d40  ; call 0x17d40
pop eax
pop edx
push 1
push ebx
call fcn_00018863  ; call 0x18863
add esp, 0x10

loc_00009d0d:
sub esp, 0xc
push ebx
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 1
jne short loc_00009d0d  ; jne 0x9d0d
sub esp, 0xc
push ebx
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
mov edx, 0x80000007
test al, 6
jne short loc_00009d4b  ; jne 0x9d4b
sub esp, 0xc
add esi, 0x2334
push esi
call fcn_00017d8a  ; call 0x17d8a
mov edx, dword [ebp + 0x10]
add esp, 0x10
mov dword [edx], eax
xor edx, edx

loc_00009d4b:
lea esp, [ebp - 8]
mov eax, edx
pop ebx
pop esi
pop ebp
ret

fcn_00009d54:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x20
mov esi, dword [ebp + 0xc]
lea eax, [ebp - 0x1c]
mov edi, dword [ebp + 0x14]
push eax
push esi
push dword [ebp + 8]
call fcn_00009cab  ; call 0x9cab
add esp, 0x10
mov ebx, eax
test eax, eax
jns short loc_00009dd2  ; jns 0x9dd2
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00009d9c  ; je 0x9d9c
sub esp, 0xc
push edi
push dword [ebp + 0x10]
push esi
push ref_00021f87  ; push 0x21f87
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_00009d9c:
call fcn_000153f0  ; call 0x153f0
mov edx, ebx
test al, al
je loc_00009e55  ; je 0x9e55
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00009dc8  ; je 0x9dc8
push edi
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00009dc8:
push esi
push ref_00020664  ; push 0x20664
push 0x34
jmp short loc_00009e46  ; jmp 0x9e46

loc_00009dd2:
mov eax, dword [ebp + 0x10]
and eax, dword [ebp - 0x1c]
push ecx
or eax, edi
push eax
push esi
push dword [ebp + 8]
mov dword [ebp - 0x1c], eax
call fcn_00009c07  ; call 0x9c07
add esp, 0x10
mov ebx, eax
mov edx, eax
test eax, eax
jns short loc_00009e55  ; jns 0x9e55
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00009e16  ; je 0x9e16
sub esp, 0xc
push edi
push dword [ebp + 0x10]
push esi
push ref_00021ff4  ; push 0x21ff4
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_00009e16:
call fcn_000153f0  ; call 0x153f0
mov edx, ebx
test al, al
je short loc_00009e55  ; je 0x9e55
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00009e3e  ; je 0x9e3e
push edx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00009e3e:
push eax
push ref_00020664  ; push 0x20664
push 0x40

loc_00009e46:
push ref_00021fc0  ; push 0x21fc0
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
mov edx, ebx

loc_00009e55:
lea esp, [ebp - 0xc]
mov eax, edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00009e5f:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov ebx, dword [ebp + 8]
mov edi, dword [ebp + 0x14]
lea esi, [ebx + 0x2338]

loc_00009e74:  ; not directly referenced
sub esp, 0xc
push esi
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 1
jne short loc_00009e74  ; jne 0x9e74
push ecx
push ecx
push dword [ebp + 0xc]
lea eax, [ebx + 0x2330]
push eax
call fcn_00017dcb  ; call 0x17dcb
mov eax, dword [ebp + 0x10]
add esp, 0xc
shl eax, 8
movzx eax, ax
push eax
push 0xff
push esi
call fcn_000188bd  ; call 0x188bd
pop eax
mov eax, edi
pop edx
movzx edi, al
or edi, 0xf000
lea eax, [ebx + 0x233a]
push edi
push eax
call fcn_00017d40  ; call 0x17d40
mov eax, dword [ebp + 0x10]
add esp, 0x10
lea ecx, [eax - 1]
cmp ecx, 6
ja short loc_00009ef6  ; ja 0x9ef6
mov eax, 1
shl eax, cl
test al, 0x55
je short loc_00009ef6  ; je 0x9ef6
mov eax, dword [ebp + 0x18]
push edx
push edx
push dword [eax]
lea eax, [ebx + 0x2334]
push eax
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10

loc_00009ef6:  ; not directly referenced
push eax
push eax
push 1
push esi
call fcn_00018863  ; call 0x18863
add esp, 0x10

loc_00009f03:  ; not directly referenced
sub esp, 0xc
push esi
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 1
jne short loc_00009f03  ; jne 0x9f03
sub esp, 0xc
push esi
mov esi, 0x80000007
call fcn_00017cc7  ; call 0x17cc7
mov edx, dword [ebp + 0x1c]
add esp, 0x10
and eax, 6
mov byte [edx], al
test al, al
jne short loc_00009f5d  ; jne 0x9f5d
xor esi, esi
cmp dword [ebp + 0x10], 6
ja short loc_00009f5d  ; ja 0x9f5d
mov cl, byte [ebp + 0x10]
mov eax, 1
shl eax, cl
test al, 0x55
je short loc_00009f5d  ; je 0x9f5d
sub esp, 0xc
add ebx, 0x2334
push ebx
call fcn_00017d8a  ; call 0x17d8a
mov edx, dword [ebp + 0x18]
add esp, 0x10
mov dword [edx], eax

loc_00009f5d:  ; not directly referenced
lea esp, [ebp - 0xc]
mov eax, esi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00009f67:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x20
mov al, byte [ebp + 0x14]
mov byte [ebp - 0x19], al
movzx eax, byte [ebp + 0x10]
push eax
movzx eax, byte [ebp + 0xc]
push eax
movzx eax, byte [ebp + 8]
push eax
call fcn_00016bd6  ; call 0x16bd6
mov esi, eax
lea eax, [eax + 0xe]
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
mov edx, 0x14
and eax, 0x7f
cmp al, 2
mov eax, 0x34
cmovne edx, eax
add edx, esi
mov dword [esp], edx
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
xor ecx, ecx
mov bl, al
and ebx, 0xfffffffc

loc_00009fbd:  ; not directly referenced
test bl, bl
je short loc_00009ff7  ; je 0x9ff7
inc cl
je short loc_00009ff7  ; je 0x9ff7
movzx edi, bl
sub esp, 0xc
add edi, esi
push edi
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
cmp al, byte [ebp - 0x19]
mov cl, al
mov dword [ebp - 0x20], ecx
je short loc_00009ffb  ; je 0x9ffb
sub esp, 0xc
inc edi
push edi
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
mov ecx, dword [ebp - 0x20]
mov bl, al
and ebx, 0xfffffffc
jmp short loc_00009fbd  ; jmp 0x9fbd

loc_00009ff7:  ; not directly referenced
xor eax, eax
jmp short loc_00009ffd  ; jmp 0x9ffd

loc_00009ffb:  ; not directly referenced
mov al, bl

loc_00009ffd:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000a005:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
xor esi, esi
push ebx
mov ebx, 0x100
sub esp, 0x20
mov eax, dword [ebp + 0x14]
mov word [ebp - 0x1e], ax
movzx eax, byte [ebp + 0x10]
push eax
movzx eax, byte [ebp + 0xc]
push eax
movzx eax, byte [ebp + 8]
push eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0x10
mov dword [ebp - 0x1c], eax

loc_0000a036:  ; not directly referenced
test bx, bx
je short loc_0000a076  ; je 0xa076
inc si
je short loc_0000a076  ; je 0xa076
mov eax, dword [ebp - 0x1c]
movzx ecx, bx
sub esp, 0xc
lea edi, [ecx + eax]
push edi
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
mov esi, eax
cmp ax, word [ebp - 0x1e]
je short loc_0000a07a  ; je 0xa07a
sub esp, 0xc
lea ecx, [edi + 2]
push ecx
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
mov ebx, eax
shr bx, 4
and ebx, 0xfffffffc
jmp short loc_0000a036  ; jmp 0xa036

loc_0000a076:  ; not directly referenced
xor eax, eax
jmp short loc_0000a07c  ; jmp 0xa07c

loc_0000a07a:  ; not directly referenced
mov eax, ebx

loc_0000a07c:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000a084:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x30
mov edi, dword [ebp + 0x1c]
movzx edx, byte [ebp + 0x10]
movzx esi, byte [ebp + 8]
mov eax, dword [ebp + 0x14]
mov dword [ebp - 0x20], edi
movzx edi, byte [ebp + 0xc]
mov ebx, dword [ebp + 0x18]
push edx
push edi
push esi
mov dword [ebp - 0x30], edx
mov dword [ebp - 0x1c], eax
mov byte [ebp - 0x24], al
mov byte [ebp - 0x28], bl
call fcn_00016bd6  ; call 0x16bd6
mov edx, dword [ebp - 0x30]
push 2
push edx
push edi
push esi
mov dword [ebp - 0x2c], eax
call fcn_0000a005  ; call 0xa005
add esp, 0x20
mov edx, 0x80000003
mov ecx, dword [ebp - 0x2c]
test ax, ax
je loc_0000a1a8  ; je 0xa1a8
movzx eax, ax
lea esi, [ecx + eax + 0x14]
push eax
push 1
push 0xf0
push esi
call fcn_000186c6  ; call 0x186c6
mov cl, byte [ebp - 0x20]
mov eax, 1
pop edx
shl eax, cl
pop ecx
movzx eax, al
mov dword [ebp - 0x20], eax
push eax
push esi
movzx esi, bl
call fcn_00017ce1  ; call 0x17ce1
movzx edi, byte [ebp - 0x1c]
add esp, 0xc
push 0
push esi
push edi
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xe
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
mov byte [ebp - 0x1c], 0
mov bl, al
movzx eax, byte [ebp - 0x28]
sar bl, 7
and ebx, 7
mov dword [ebp - 0x28], eax
movzx eax, byte [ebp - 0x24]
mov dword [ebp - 0x24], eax

loc_0000a146:  ; not directly referenced
movzx edx, byte [ebp - 0x1c]
push eax
push edx
push esi
push edi
mov dword [ebp - 0x30], edx
call fcn_00016bd6  ; call 0x16bd6
mov edx, dword [ebp - 0x30]
push 2
push edx
push dword [ebp - 0x28]
push dword [ebp - 0x24]
mov dword [ebp - 0x2c], eax
call fcn_0000a005  ; call 0xa005
add esp, 0x20
mov ecx, dword [ebp - 0x2c]
test ax, ax
je short loc_0000a19e  ; je 0xa19e
movzx eax, ax
lea edx, [ecx + eax + 0x14]
push eax
push 1
push 0xf0
push edx
mov dword [ebp - 0x2c], edx
call fcn_000186c6  ; call 0x186c6
pop edx
mov edx, dword [ebp - 0x2c]
pop ecx
push dword [ebp - 0x20]
push edx
call fcn_00017ce1  ; call 0x17ce1
add esp, 0x10

loc_0000a19e:  ; not directly referenced
inc byte [ebp - 0x1c]
cmp byte [ebp - 0x1c], bl
jbe short loc_0000a146  ; jbe 0xa146
xor edx, edx

loc_0000a1a8:  ; not directly referenced
lea esp, [ebp - 0xc]
mov eax, edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000a1b2:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x40
mov eax, dword [ebp + 8]
movzx ecx, byte [ebp + 0x10]
movzx esi, byte [ebp + 0xc]
mov ebx, dword [ebp + 0x14]
mov edx, eax
mov dword [ebp - 0x2c], eax
mov eax, dword [ebp + 0x18]
movzx edi, dl
push ecx
push esi
push edi
mov dword [ebp - 0x24], ecx
mov dword [ebp - 0x1c], eax
mov byte [ebp - 0x38], bl
mov byte [ebp - 0x3c], al
call fcn_00016bd6  ; call 0x16bd6
mov ecx, dword [ebp - 0x24]
push 0x10
push ecx
push esi
push edi
mov dword [ebp - 0x20], eax
call fcn_00009f67  ; call 0x9f67
add esp, 0x20
test al, al
jne short loc_0000a209  ; jne 0xa209

loc_0000a1ff:  ; not directly referenced
mov eax, 0x80000003
jmp near loc_0000a374  ; jmp 0xa374

loc_0000a209:  ; not directly referenced
movzx eax, al
sub esp, 0xc
add eax, dword [ebp - 0x20]
lea esi, [eax + 0x12]
push esi
mov dword [ebp - 0x28], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test ah, 0x10
je short loc_0000a1ff  ; je 0xa1ff
movzx eax, byte [ebp - 0x1c]
movzx edx, bl
push ecx
push 0
push eax
push edx
mov dword [ebp - 0x34], edx
mov dword [ebp - 0x30], eax
call fcn_00016bd6  ; call 0x16bd6
mov ebx, eax
lea eax, [eax + 0xe]
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
mov byte [ebp - 0x1c], al
sar byte [ebp - 0x1c], 7
and byte [ebp - 0x1c], 7
cmp byte [ebp - 0x2c], 0
jne short loc_0000a298  ; jne 0xa298
sub esp, 0xc
push ebx
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
cmp ax, 0x8086
jne short loc_0000a298  ; jne 0xa298
sub esp, 0xc
add ebx, 2
push ebx
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
cmp ax, 0x93c
jne short loc_0000a298  ; jne 0xa298
push eax
push eax
mov eax, dword [ebp - 0x20]
push 0x40
add eax, 0x70
push eax
call fcn_00018863  ; call 0x18863
add esp, 0x10

loc_0000a298:  ; not directly referenced
movzx eax, byte [ebp - 0x3c]
xor ebx, ebx
mov byte [ebp - 0x24], 0
mov dword [ebp - 0x3c], eax
movzx eax, byte [ebp - 0x38]
mov dword [ebp - 0x40], eax

loc_0000a2ac:  ; not directly referenced
push edi
movzx edi, byte [ebp - 0x24]
push edi
push dword [ebp - 0x30]
push dword [ebp - 0x34]
call fcn_00016bd6  ; call 0x16bd6
push 0x10
push edi
push dword [ebp - 0x3c]
push dword [ebp - 0x40]
mov dword [ebp - 0x38], eax
call fcn_00009f67  ; call 0x9f67
add esp, 0x20
test al, al
je short loc_0000a31a  ; je 0xa31a
mov edi, dword [ebp - 0x38]
movzx eax, al
sub esp, 0xc
add edi, eax
lea eax, [edi + 0x12]
push eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test ah, 0x10
je short loc_0000a31a  ; je 0xa31a
test bl, bl
jne short loc_0000a308  ; jne 0xa308
mov eax, dword [ebp - 0x28]
push ebx
push ebx
push 0x40
add eax, 0x10
push eax
call fcn_0001866c  ; call 0x1866c
add esp, 0x10

loc_0000a308:  ; not directly referenced
push ecx
add edi, 0x10
push ecx
mov bl, 1
push 0x40
push edi
call fcn_0001866c  ; call 0x1866c
add esp, 0x10

loc_0000a31a:  ; not directly referenced
inc byte [ebp - 0x24]
mov al, byte [ebp - 0x1c]
cmp byte [ebp - 0x24], al
jbe short loc_0000a2ac  ; jbe 0xa2ac
cmp bl, 1
sbb ebx, ebx
and ebx, 0x80000003
cmp byte [ebp - 0x2c], 0
jne short loc_0000a34e  ; jne 0xa34e
mov eax, dword [ebp - 0x20]
push edx
push edx
push 0x1040
add eax, 0xd4
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10

loc_0000a34e:  ; not directly referenced
push eax
push eax
mov eax, dword [ebp - 0x28]
push 0x20
add eax, 0x10
push eax
call fcn_0001866c  ; call 0x1866c
add esp, 0x10

loc_0000a361:  ; not directly referenced
sub esp, 0xc
push esi
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test ah, 8
jne short loc_0000a361  ; jne 0xa361
mov eax, ebx

loc_0000a374:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000a37c:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 0xc]
mov ebx, dword [ebp + 8]
mov esi, dword [ebp + 0x10]
mov dword [ebp - 0x1c], eax
mov byte [ebp - 0x24], bl
mov dword [ebp - 0x28], esi
mov byte [ebp - 0x20], al
call fcn_0001bef7  ; call 0x1bef7
cmp eax, 2
je short loc_0000a3e0  ; je 0xa3e0

loc_0000a3a4:  ; not directly referenced
movzx edi, byte [ebp - 0x1c]
movzx esi, bl
xor ebx, ebx
push ecx
push 0
push edi
push esi
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xe
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
mov byte [ebp - 0x1c], al
movzx eax, byte [ebp - 0x20]
sar byte [ebp - 0x1c], 7
and byte [ebp - 0x1c], 7
mov dword [ebp - 0x20], eax
movzx eax, byte [ebp - 0x24]
mov dword [ebp - 0x24], eax
jmp short loc_0000a447  ; jmp 0xa447

loc_0000a3e0:  ; not directly referenced
push eax
push 0
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
mov edi, eax
lea eax, [eax + 0xf0]
add edi, 0x48
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov dword [esp], edi
mov esi, eax
call fcn_00017cfe  ; call 0x17cfe
mov edi, eax
pop eax
and edi, 0xfffc
movzx eax, byte [ebp - 0x28]
pop edx
push eax
mov eax, esi
and eax, 0xffffc000
push eax
call fcn_0001c307  ; call 0x1c307
movzx eax, al
lea eax, [edi + eax*8 + 0x190]
mov dword [esp], eax
call fcn_00018ea0  ; call 0x18ea0
add esp, 0x10
test al, 1
je loc_0000a3a4  ; je 0xa3a4
jmp near loc_0000a4e9  ; jmp 0xa4e9

loc_0000a447:  ; not directly referenced
push 0x10
movzx ecx, bl
push ecx
push dword [ebp - 0x20]
push dword [ebp - 0x24]
mov dword [ebp - 0x28], ecx
call fcn_00009f67  ; call 0x9f67
add esp, 0x10
mov ecx, dword [ebp - 0x28]
test al, al
mov dl, al
jne short loc_0000a471  ; jne 0xa471

loc_0000a467:  ; not directly referenced
inc ebx
cmp bl, byte [ebp - 0x1c]
jbe short loc_0000a447  ; jbe 0xa447
xor ebx, ebx
jmp short loc_0000a4a1  ; jmp 0xa4a1

loc_0000a471:  ; not directly referenced
push eax
push ecx
push edi
push esi
mov dword [ebp - 0x28], edx
call fcn_00016bd6  ; call 0x16bd6
mov edx, dword [ebp - 0x28]
movzx edx, dl
lea eax, [eax + edx + 0xc]
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test eax, 0x40000
jne short loc_0000a467  ; jne 0xa467
jmp short loc_0000a4e9  ; jmp 0xa4e9

loc_0000a49b:  ; not directly referenced
inc ebx
cmp bl, byte [ebp - 0x1c]
ja short loc_0000a4e9  ; ja 0xa4e9

loc_0000a4a1:  ; not directly referenced
push 0x10
movzx ecx, bl
push ecx
push dword [ebp - 0x20]
push dword [ebp - 0x24]
mov dword [ebp - 0x28], ecx
call fcn_00009f67  ; call 0x9f67
add esp, 0x10
mov ecx, dword [ebp - 0x28]
test al, al
mov dl, al
je short loc_0000a49b  ; je 0xa49b
push eax
push ecx
push edi
push esi
mov dword [ebp - 0x28], edx
call fcn_00016bd6  ; call 0x16bd6
pop edx
mov edx, dword [ebp - 0x28]
pop ecx
movzx edx, dl
push 0x100
lea eax, [eax + edx + 0x10]
push eax
call fcn_00018863  ; call 0x18863
add esp, 0x10
jmp short loc_0000a49b  ; jmp 0xa49b

loc_0000a4e9:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000a4f1:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x30
mov edx, dword [ebp + 0xc]
mov eax, dword [ebp + 8]
mov bl, byte [ebp + 0x14]
push 0
mov byte [ebp - 0x24], dl
movzx edx, dl
movzx edi, al
push edx
push edi
mov byte [ebp - 0x1a], bl
mov dword [ebp - 0x20], edx
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xe
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
mov byte [ebp - 0x19], 0
mov dword [ebp - 0x28], edi
mov bl, al
movzx eax, byte [ebp - 0x24]
sar bl, 7
and ebx, 7
mov dword [ebp - 0x24], eax

loc_0000a53f:  ; not directly referenced
push ecx
movzx ecx, byte [ebp - 0x19]
push ecx
push dword [ebp - 0x20]
mov dword [ebp - 0x2c], ecx
push edi
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], eax
mov esi, eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
je short loc_0000a5c3  ; je 0xa5c3
mov ecx, dword [ebp - 0x2c]
push 0x10
push ecx
push dword [ebp - 0x24]
push dword [ebp - 0x28]
call fcn_00009f67  ; call 0x9f67
add esp, 0x10
test al, al
je short loc_0000a5c3  ; je 0xa5c3
cmp byte [ebp - 0x1a], 1
movzx eax, al
jne short loc_0000a5a5  ; jne 0xa5a5
push edx
mov edx, dword [ebp + 0x10]
lea eax, [esi + eax + 8]
mov cx, word [edx]
shl ecx, 5
movzx ecx, cx
push ecx
push 0xff1f
push eax
call fcn_000188bd  ; call 0x188bd
add esp, 0x10
jmp short loc_0000a5c3  ; jmp 0xa5c3

loc_0000a5a5:  ; not directly referenced
sub esp, 0xc
lea eax, [esi + eax + 4]
push eax
call fcn_00017cfe  ; call 0x17cfe
mov esi, dword [ebp + 0x10]
add esp, 0x10
and eax, 7
cmp word [esi], ax
jbe short loc_0000a5c3  ; jbe 0xa5c3
mov word [esi], ax

loc_0000a5c3:  ; not directly referenced
inc byte [ebp - 0x19]
cmp byte [ebp - 0x19], bl
jbe loc_0000a53f  ; jbe 0xa53f
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000a5d9:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x20
movzx eax, byte [ebp + 0x10]
mov esi, dword [ebp + 0x18]
mov ebx, dword [ebp + 0x14]
push eax
movzx eax, byte [ebp + 0xc]
movzx edi, bl
push eax
movzx eax, byte [ebp + 8]
push eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 0
mov dword [ebp - 0x20], eax
mov eax, esi
movzx esi, al
push esi
push edi
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xe
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
xor ecx, ecx
mov byte [ebp - 0x19], 0
mov dl, al
sar dl, 7
and edx, 7

loc_0000a62f:  ; not directly referenced
movzx eax, byte [ebp - 0x19]
mov dword [ebp - 0x28], edx
push edx
push eax
push esi
push edi
mov dword [ebp - 0x24], ecx
call fcn_00016bd6  ; call 0x16bd6
mov ebx, eax
lea eax, [eax + 0xb]
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
mov byte [ebp - 0x1a], al
lea eax, [ebx + 0xa]
add ebx, 9
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
mov dword [esp], ebx
mov byte [ebp - 0x1b], al
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
mov ecx, dword [ebp - 0x24]
cmp byte [ebp - 0x1b], 0
mov edx, dword [ebp - 0x28]
jne short loc_0000a68a  ; jne 0xa68a
cmp byte [ebp - 0x1a], 8
jne short loc_0000a68a  ; jne 0xa68a
cmp al, 0x20
je short loc_0000a688  ; je 0xa688
cmp al, 0x10
jne short loc_0000a68a  ; jne 0xa68a

loc_0000a688:  ; not directly referenced
mov cl, 1

loc_0000a68a:  ; not directly referenced
inc byte [ebp - 0x19]
cmp byte [ebp - 0x19], dl
jbe short loc_0000a62f  ; jbe 0xa62f
test cl, cl
jne short loc_0000a6ab  ; jne 0xa6ab
push eax
push eax
mov eax, dword [ebp - 0x20]
push 2
add eax, 0xd4
push eax
call fcn_0001866c  ; call 0x1866c
add esp, 0x10

loc_0000a6ab:  ; not directly referenced
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000a6b5:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
mov ebx, dword [ebp + 0xc]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0000a6f0  ; je 0xa6f0
mov ax, word [esi]
and eax, 0x1c00
cmp eax, 0x1400
jbe short loc_0000a6f0  ; jbe 0xa6f0
push edx
push ref_0002202e  ; push 0x2202e
push 0x275
push ref_00022076  ; push 0x22076
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000a6f0:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0000a71f  ; je 0xa71f
mov eax, ebx
and eax, 0x1c00
cmp eax, 0x1400
jbe short loc_0000a71f  ; jbe 0xa71f
push eax
push ref_000220c4  ; push 0x220c4
push 0x276
push ref_00022076  ; push 0x22076
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000a71f:  ; not directly referenced
mov cx, word [esi]
mov eax, ecx
and ecx, 0x1c00
sar ecx, 0xa
and eax, 0x3ff
lea ecx, [ecx + ecx*4]
shl eax, cl
test eax, eax
je short loc_0000a757  ; je 0xa757
mov ecx, ebx
mov edx, ebx
and ecx, 0x1c00
and edx, 0x3ff
sar ecx, 0xa
lea ecx, [ecx + ecx*4]
shl edx, cl
cmp eax, edx
jle short loc_0000a75a  ; jle 0xa75a

loc_0000a757:  ; not directly referenced
mov word [esi], bx

loc_0000a75a:  ; not directly referenced
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0000a761:  ; not directly referenced
push ebp
mov ecx, 4
mov ebp, esp
push edi
push esi
mov esi, ref_00020368  ; mov esi, 0x20368
push ebx
sub esp, 0x6c
mov eax, dword [ebp + 0x28]
mov ebx, dword [ebp + 0x10]
lea edi, [ebp - 0x28]
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
mov word [ebp - 0x6a], ax
mov al, byte [ebp + 0x4c]
mov byte [ebp - 0x58], bl
mov byte [ebp - 0x6c], al
call fcn_0001bef7  ; call 0x1bef7
mov dword [ebp - 0x3c], 0
mov dword [ebp - 0x5c], eax
movzx eax, bl
lea edi, [eax + 1]
mov dword [ebp - 0x64], edi
shl dword [ebp - 0x64], 8
or dword [ebp - 0x64], eax
mov dword [ebp - 0x54], eax
movzx eax, word [ebp - 0x6a]
mov dword [ebp - 0x70], eax
add eax, 4
mov dword [ebp - 0x74], eax

loc_0000a7bb:  ; not directly referenced
push eax
push 0
push dword [ebp - 0x3c]
push dword [ebp - 0x54]
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], eax
mov ebx, eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
jne short loc_0000a7ea  ; jne 0xa7ea

loc_0000a7da:  ; not directly referenced
inc dword [ebp - 0x3c]
cmp dword [ebp - 0x3c], 0x20
jne short loc_0000a7bb  ; jne 0xa7bb
xor eax, eax
jmp near loc_0000afa4  ; jmp 0xafa4

loc_0000a7ea:  ; not directly referenced
sub esp, 0xc
add ebx, 0xe
push ebx
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
mov byte [ebp - 0x57], 0
mov byte [ebp - 0x55], al
sar byte [ebp - 0x55], 7
and byte [ebp - 0x55], 7

loc_0000a808:  ; not directly referenced
movzx ebx, byte [ebp - 0x57]
push edi
mov esi, dword [ebp - 0x54]
push ebx
push dword [ebp - 0x3c]
push esi
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], eax
mov edi, eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
je loc_0000af84  ; je 0xaf84
push 0x10
push ebx
push dword [ebp - 0x3c]
push esi
call fcn_00009f67  ; call 0x9f67
add esp, 0x10
mov byte [ebp - 0x60], al
test al, al
je loc_0000af98  ; je 0xaf98
sub esp, 0xc
push edi
call fcn_00017cfe  ; call 0x17cfe
mov word [ebp - 0x46], ax
lea eax, [edi + 2]
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
mov word [ebp - 0x48], ax
lea eax, [edi + 8]
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
cmp dword [ebp - 0x5c], 2
mov byte [ebp - 0x56], al
jne loc_0000a99e  ; jne 0xa99e
call fcn_0001bff9  ; call 0x1bff9
cmp eax, 2
jne short loc_0000a8bf  ; jne 0xa8bf
cmp word [ebp - 0x46], 0x8086
jne short loc_0000a8bf  ; jne 0xa8bf
sub esp, 0xc
lea eax, [edi + 0xa]
push eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
cmp ax, 0x280
jne short loc_0000a8bf  ; jne 0xa8bf
mov eax, dword [ebp + 8]
push esi
push esi
push 0xfc
add eax, 0x418
push eax
call fcn_00018699  ; call 0x18699
add esp, 0x10

loc_0000a8bf:  ; not directly referenced
mov eax, dword [ebp - 0x48]
xor ecx, ecx
sub ax, 0x8b1
mov word [ebp - 0x40], ax

loc_0000a8cc:  ; not directly referenced
movzx edx, cl
cmp edx, dword [ebp + 0x14]
jae short loc_0000a945  ; jae 0xa945
imul edx, edx, 0x18
add edx, dword [ebp + 0x18]
mov esi, edx
test byte [edx + 8], 2
je short loc_0000a942  ; je 0xa942
mov ax, word [ebp - 0x46]
cmp ax, word [edx]
jne short loc_0000a942  ; jne 0xa942
mov eax, dword [ebp - 0x48]
cmp ax, word [edx + 2]
jne short loc_0000a942  ; jne 0xa942
mov al, byte [edx + 4]
cmp byte [ebp - 0x56], al
je short loc_0000a900  ; je 0xa900
inc al
jne short loc_0000a942  ; jne 0xa942

loc_0000a900:  ; not directly referenced
cmp word [ebp - 0x46], 0x8086
je short loc_0000a91d  ; je 0xa91d

loc_0000a908:  ; not directly referenced
mov ax, word [esi + 0xa]
mov ecx, dword [esi + 0xc]
mov word [ebp - 0x40], ax
mov dword [ebp - 0x50], ecx
test ax, ax
jne short loc_0000a974  ; jne 0xa974
jmp short loc_0000a94c  ; jmp 0xa94c

loc_0000a91d:  ; not directly referenced
cmp word [ebp - 0x40], 3
mov dword [ebp - 0x44], ecx
ja short loc_0000a908  ; ja 0xa908
movzx eax, word [esi + 0xa]
sub esp, 0xc
add eax, edi
push eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
mov ecx, dword [ebp - 0x44]
cmp ax, 0xcafe
je short loc_0000a908  ; je 0xa908

loc_0000a942:  ; not directly referenced
inc ecx
jmp short loc_0000a8cc  ; jmp 0xa8cc

loc_0000a945:  ; not directly referenced
mov dword [ebp - 0x50], 0x1f

loc_0000a94c:  ; not directly referenced
push 0x1e
push ebx
push dword [ebp - 0x3c]
push dword [ebp - 0x54]
call fcn_0000a005  ; call 0xa005
add esp, 0x10
mov dword [ebp - 0x44], 0
mov dword [ebp - 0x4c], 0
mov word [ebp - 0x40], ax
test ax, ax
je short loc_0000a9b9  ; je 0xa9b9

loc_0000a974:  ; not directly referenced
mov eax, dword [ebp - 0x74]
sub esp, 0xc
add eax, dword [ebp + 8]
push eax
call fcn_00017d8a  ; call 0x17d8a
mov dword [ebp - 0x4c], eax
movzx eax, word [ebp - 0x40]
lea eax, [edi + eax + 4]
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
mov dword [ebp - 0x44], eax
jmp short loc_0000a9b9  ; jmp 0xa9b9

loc_0000a99e:  ; not directly referenced
mov dword [ebp - 0x50], 0x1f
mov dword [ebp - 0x44], 0
mov dword [ebp - 0x4c], 0
mov word [ebp - 0x40], 0

loc_0000a9b9:  ; not directly referenced
movzx esi, byte [ebp - 0x60]
sub esp, 0xc
add esi, edi
lea eax, [esi + 0x24]
push eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
and eax, 0x800
mov dword [ebp - 0x60], eax
je short loc_0000a9e1  ; je 0xa9e1
mov eax, dword [ebp + 0x3c]
cmp byte [eax + 0x12], 1
je short loc_0000a9e7  ; je 0xa9e7

loc_0000a9e1:  ; not directly referenced
mov eax, dword [ebp + 0x48]
mov byte [eax], 0

loc_0000a9e7:  ; not directly referenced
cmp dword [ebp + 0x20], 1
ja loc_0000aced  ; ja 0xaced
lea eax, [esi + 0xc]
sub esp, 0xc
push eax
mov dword [ebp - 0x60], eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test eax, 0x40000
jne short loc_0000aa10  ; jne 0xaa10
mov eax, dword [ebp + 0x44]
mov byte [eax], 0

loc_0000aa10:  ; not directly referenced
sub esp, 0xc
push dword [ebp - 0x60]
call fcn_00017cfe  ; call 0x17cfe
mov ebx, eax
call fcn_000153e9  ; call 0x153e9
shr bx, 0xa
add esp, 0x10
and ebx, 3
test al, al
je short loc_0000aa46  ; je 0xaa46
movzx eax, bx
push eax
push dword [ebp - 0x3c]
push ref_0002210b  ; push 0x2210b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000aa46:  ; not directly referenced
cmp dword [ebp + 0x20], 0
jne loc_0000aba5  ; jne 0xaba5
lea eax, [esi + 4]
sub esp, 0xc
push eax
mov dword [ebp - 0x68], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test ax, ax
js short loc_0000aa87  ; js 0xaa87
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000aa81  ; je 0xaa81
push ecx
push ecx
push ref_00022135  ; push 0x22135
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000aa81:  ; not directly referenced
mov eax, dword [ebp + 0x40]
mov byte [eax], 1

loc_0000aa87:  ; not directly referenced
sub esp, 0xc
xor esi, esi
lea eax, [edi + 0xb]
push eax
call fcn_00017cc7  ; call 0x17cc7
mov byte [ebp - 0x6b], al
lea eax, [edi + 0xa]
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10

loc_0000aaa6:  ; not directly referenced
mov ecx, esi
movzx edx, cl
cmp edx, dword [ebp + 0x14]
jae short loc_0000ab03  ; jae 0xab03
imul edx, edx, 0x18
add edx, dword [ebp + 0x18]
test byte [edx + 8], 1
je short loc_0000ab00  ; je 0xab00
mov cx, word [edx]
cmp cx, word [ebp - 0x46]
je short loc_0000aac9  ; je 0xaac9
inc cx
jne short loc_0000ab00  ; jne 0xab00

loc_0000aac9:  ; not directly referenced
mov cx, word [edx + 2]
cmp cx, word [ebp - 0x48]
je short loc_0000aad7  ; je 0xaad7
inc cx
jne short loc_0000ab00  ; jne 0xab00

loc_0000aad7:  ; not directly referenced
mov cl, byte [edx + 4]
cmp cl, byte [ebp - 0x56]
je short loc_0000aae3  ; je 0xaae3
inc cl
jne short loc_0000ab00  ; jne 0xab00

loc_0000aae3:  ; not directly referenced
mov cl, byte [edx + 5]
cmp cl, byte [ebp - 0x6b]
je short loc_0000aaef  ; je 0xaaef
inc cl
jne short loc_0000ab00  ; jne 0xab00

loc_0000aaef:  ; not directly referenced
mov cl, byte [edx + 6]
cmp cl, al
jne short loc_0000aafc  ; jne 0xaafc

loc_0000aaf6:  ; not directly referenced
movzx ebx, byte [edx + 7]
jmp short loc_0000ab03  ; jmp 0xab03

loc_0000aafc:  ; not directly referenced
inc cl
je short loc_0000aaf6  ; je 0xaaf6

loc_0000ab00:  ; not directly referenced
inc esi
jmp short loc_0000aaa6  ; jmp 0xaaa6

loc_0000ab03:  ; not directly referenced
test bl, 2
je short loc_0000ab54  ; je 0xab54
mov ecx, dword [ebp + 0xc]
sub esp, 0xc
mov eax, dword [ebp + 8]
lea eax, [eax + ecx + 0xc]
push eax
call fcn_00017d8a  ; call 0x17d8a
pop ecx
push dword [ebp - 0x60]
mov esi, eax
call fcn_00017d8a  ; call 0x17d8a
and esi, 0x38000
pop edx
push dword [ebp - 0x68]
and eax, 0x38000
cmp eax, esi
cmovae esi, eax
call fcn_00017d8a  ; call 0x17d8a
shr esi, 6
mov edx, ebx
and edx, 0xfffffffd
add esp, 0x10
and eax, 0xe00
cmp esi, eax
cmova ebx, edx

loc_0000ab54:  ; not directly referenced
test bl, 1
je short loc_0000aba5  ; je 0xaba5
mov ecx, dword [ebp + 0xc]
sub esp, 0xc
mov eax, dword [ebp + 8]
lea eax, [eax + ecx + 0xc]
push eax
call fcn_00017d8a  ; call 0x17d8a
mov esi, eax
pop eax
and esi, 0x7000
push dword [ebp - 0x60]
call fcn_00017d8a  ; call 0x17d8a
pop edx
push dword [ebp - 0x68]
and eax, 0x7000
cmp eax, esi
cmovae esi, eax
call fcn_00017d8a  ; call 0x17d8a
shr esi, 6
mov edx, ebx
and edx, 0xfffffffe
add esp, 0x10
and eax, 0x1c0
cmp esi, eax
cmova ebx, edx

loc_0000aba5:  ; not directly referenced
mov eax, dword [ebp + 0x1c]
and word [eax], bx
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000abca  ; je 0xabca
movzx ebx, bx
push ebx
push dword [ebp - 0x3c]
push ref_00022168  ; push 0x22168
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000abca:  ; not directly referenced
cmp dword [ebp - 0x5c], 2
jne short loc_0000ac4a  ; jne 0xac4a
cmp word [ebp - 0x40], 0
je short loc_0000ac4a  ; je 0xac4a
cmp word [ebp - 0x6a], 0
je short loc_0000ac4a  ; je 0xac4a
mov eax, dword [ebp - 0x4c]
and eax, 0x1f
cmp eax, 0x1f
jne short loc_0000ac4a  ; jne 0xac4a
mov ecx, dword [ebp - 0x50]
mov eax, dword [ebp - 0x44]
and eax, ecx
cmp eax, ecx
jne short loc_0000ac4a  ; jne 0xac4a
mov eax, dword [ebp + 0x3c]
cmp byte [eax + 0x11], 0
je short loc_0000ac4a  ; je 0xac4a
mov eax, dword [ebp + 0x2c]
mov ebx, dword [ebp + 0x30]
mov byte [eax], 1
mov eax, dword [ebp - 0x44]
mov edx, eax
mov ecx, eax
shr edx, 0x10
movzx eax, ah
shr ecx, 0x13
and edx, 3
and ecx, 0x1f
cmp eax, dword [ebx]
jbe short loc_0000ac23  ; jbe 0xac23
mov dword [ebx], eax

loc_0000ac23:  ; not directly referenced
mov eax, dword [ebp + 0x38]
movzx edx, dl
movzx ecx, cl
mov ebx, dword [ebp + edx*4 - 0x28]
mov esi, dword [ebp + 0x34]
mov eax, dword [eax]
imul ebx, ecx
mov eax, dword [ebp + eax*4 - 0x28]
imul eax, dword [esi]
cmp ebx, eax
jbe short loc_0000ac4a  ; jbe 0xac4a
mov eax, dword [ebp + 0x38]
mov dword [esi], ecx
mov dword [eax], edx

loc_0000ac4a:  ; not directly referenced
mov eax, dword [ebp + 0x24]
xor edx, edx
mov ebx, dword [eax]

loc_0000ac51:  ; not directly referenced
movzx esi, dl
cmp esi, dword [ebp + 0x14]
jae loc_0000ae9a  ; jae 0xae9a
imul esi, esi, 0x18
add esi, dword [ebp + 0x18]
test byte [esi + 8], 4
je short loc_0000ace7  ; je 0xace7
mov ax, word [ebp - 0x46]
cmp word [esi], ax
jne short loc_0000ace7  ; jne 0xace7
mov ax, word [esi + 2]
cmp ax, word [ebp - 0x48]
je short loc_0000ac80  ; je 0xac80
inc ax
jne short loc_0000ace7  ; jne 0xace7

loc_0000ac80:  ; not directly referenced
mov al, byte [esi + 4]
cmp al, byte [ebp - 0x56]
jne short loc_0000acb7  ; jne 0xacb7

loc_0000ac88:  ; not directly referenced
movzx eax, word [esi + 0x12]
test ax, ax
jns short loc_0000acbd  ; jns 0xacbd
push ecx
mov edx, ebx
push ecx
movzx ebx, bx
push eax
lea eax, [ebp - 0x2a]
push eax
shr edx, 0x10
mov word [ebp - 0x2a], dx
call fcn_0000a6b5  ; call 0xa6b5
movzx eax, word [ebp - 0x2a]
add esp, 0x10
shl eax, 0x10
or ebx, eax
jmp short loc_0000acbd  ; jmp 0xacbd

loc_0000acb7:  ; not directly referenced
inc al
jne short loc_0000ace7  ; jne 0xace7
jmp short loc_0000ac88  ; jmp 0xac88

loc_0000acbd:  ; not directly referenced
movzx eax, word [esi + 0x10]
test ax, ax
jns short loc_0000acdd  ; jns 0xacdd
push edx
push edx
push eax
lea eax, [ebp - 0x2a]
push eax
mov word [ebp - 0x2a], bx
call fcn_0000a6b5  ; call 0xa6b5
mov bx, word [ebp - 0x2a]
add esp, 0x10

loc_0000acdd:  ; not directly referenced
mov eax, dword [ebp + 0x24]
mov dword [eax], ebx
jmp near loc_0000ae9a  ; jmp 0xae9a

loc_0000ace7:  ; not directly referenced
inc edx
jmp near loc_0000ac51  ; jmp 0xac51

loc_0000aced:  ; not directly referenced
cmp dword [ebp + 0x20], 2
jne loc_0000ae9a  ; jne 0xae9a
cmp dword [ebp - 0x5c], 2
jne loc_0000adba  ; jne 0xadba
cmp word [ebp - 0x40], 0
je loc_0000adba  ; je 0xadba
mov eax, dword [ebp + 0x2c]
cmp byte [eax], 0
je loc_0000adba  ; je 0xadba
mov eax, dword [ebp - 0x4c]
and eax, 0x1f
cmp eax, 0x1f
jne loc_0000adba  ; jne 0xadba
mov eax, dword [ebp - 0x44]
mov ecx, dword [ebp - 0x50]
and eax, ecx
cmp eax, ecx
jne loc_0000adba  ; jne 0xadba
push eax
mov eax, dword [ebp + 0x34]
movzx edx, word [ebp - 0x40]
mov eax, dword [eax]
add edx, edi
lea ecx, [edx + 0xc]
mov dword [ebp - 0x44], edx
shl eax, 3
push eax
push 0xffffff07
push ecx
mov dword [ebp - 0x40], ecx
call fcn_00018aa4  ; call 0x18aa4
mov eax, dword [ebp + 0x38]
add esp, 0xc
mov ecx, dword [ebp - 0x40]
push dword [eax]
push 0xfffffffffffffffc
push ecx
call fcn_00018aa4  ; call 0x18aa4
mov edx, dword [ebp - 0x44]
add esp, 0xc
push 0x40a00000
push 0x1c00ffff
add edx, 8
push edx
mov dword [ebp - 0x40], edx
call fcn_00018aa4  ; call 0x18aa4
mov eax, dword [ebp + 0x3c]
add esp, 0x10
mov edx, dword [ebp - 0x40]
mov al, byte [eax + 0x11]
cmp al, 1
je short loc_0000ada8  ; je 0xada8
cmp al, 2
setne al
movzx eax, al
lea eax, [eax + eax + 0xd]
jmp short loc_0000adad  ; jmp 0xadad

loc_0000ada8:  ; not directly referenced
mov eax, 0xe

loc_0000adad:  ; not directly referenced
push ecx
push eax
push 0xffffffffffffffe0
push edx
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_0000adba:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000addc  ; je 0xaddc
mov eax, dword [ebp + 0x1c]
movzx eax, word [eax]
push eax
push dword [ebp - 0x3c]
push ref_00022197  ; push 0x22197
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000addc:  ; not directly referenced
push eax
mov eax, dword [ebp + 0x1c]
movzx eax, word [eax]
push eax
push 0xfffc
lea eax, [esi + 0x10]
push eax
call fcn_000188bd  ; call 0x188bd
add esp, 0x10
cmp dword [ebp - 0x60], 0
je short loc_0000ae17  ; je 0xae17
mov eax, dword [ebp + 0x3c]
cmp byte [eax + 0x12], 1
jne short loc_0000ae17  ; jne 0xae17
push ecx
add esi, 0x28
push ecx
push 0x400
push esi
call fcn_00018863  ; call 0x18863
add esp, 0x10

loc_0000ae17:  ; not directly referenced
push 0x18
push ebx
push dword [ebp - 0x3c]
push dword [ebp - 0x54]
call fcn_0000a005  ; call 0xa005
add esp, 0x10
movzx ebx, ax
test bx, bx
je short loc_0000ae9a  ; je 0xae9a
mov eax, dword [ebp + 0x24]
lea esi, [ebp - 0x2a]
add ebx, edi
mov edx, dword [eax]
mov eax, dword [ebp + 0x3c]
mov word [ebp - 0x2a], dx
movzx eax, word [eax + 0x14]
mov dword [ebp - 0x40], edx
push edx
push edx
push eax
push esi
call fcn_0000a6b5  ; call 0xa6b5
movzx eax, word [ebp - 0x2a]
add esp, 0xc
push eax
push 0xe000
lea eax, [ebx + 4]
add ebx, 6
push eax
call fcn_000188bd  ; call 0x188bd
mov eax, dword [ebp + 0x3c]
mov edx, dword [ebp - 0x40]
pop ecx
movzx eax, word [eax + 0x16]
shr edx, 0x10
mov word [ebp - 0x2a], dx
pop edx
push eax
push esi
call fcn_0000a6b5  ; call 0xa6b5
movzx eax, word [ebp - 0x2a]
add esp, 0xc
push eax
push 0xe000
push ebx
call fcn_000188bd  ; call 0x188bd
add esp, 0x10

loc_0000ae9a:  ; not directly referenced
sub esp, 0xc
lea eax, [edi + 0xb]
push eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
cmp al, 6
jne loc_0000af84  ; jne 0xaf84
sub esp, 0xc
mov bl, 1
lea eax, [edi + 0x19]
push eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, al
jne short loc_0000af04  ; jne 0xaf04
mov eax, dword [ebp + 8]
sub esp, 0xc
add eax, 0x1a
push eax
call fcn_00017cc7  ; call 0x17cc7
mov bl, byte [ebp - 0x58]
add esp, 0x10
cmp al, bl
jbe loc_0000af9f  ; jbe 0xaf9f
movzx eax, al
shl eax, 0x10
or eax, dword [ebp - 0x64]
push esi
push eax
push 0xff000000
lea eax, [edi + 0x18]
push eax
call fcn_00018aa4  ; call 0x18aa4
mov al, bl
add esp, 0x10
inc eax
xor ebx, ebx

loc_0000af04:  ; not directly referenced
cmp al, byte [ebp - 0x58]
jbe short loc_0000af84  ; jbe 0xaf84
movzx esi, al
movzx eax, byte [ebp - 0x6c]
push ecx
push ecx
push eax
push dword [ebp + 0x48]
push dword [ebp + 0x44]
push dword [ebp + 0x40]
push dword [ebp + 0x3c]
push dword [ebp + 0x38]
push dword [ebp + 0x34]
push dword [ebp + 0x30]
push dword [ebp + 0x2c]
push dword [ebp - 0x70]
push dword [ebp + 0x24]
push dword [ebp + 0x20]
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push esi
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_0000a761  ; call 0xa761
add esp, 0x50
cmp eax, 0x8000000e
jne short loc_0000af6d  ; jne 0xaf6d
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000af6d  ; je 0xaf6d
push edx
push esi
push ref_000221c4  ; push 0x221c4
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000af6d:  ; not directly referenced
test bl, bl
jne short loc_0000af84  ; jne 0xaf84
push eax
push eax
push 0xff000000
lea eax, [edi + 0x18]
push eax
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10

loc_0000af84:  ; not directly referenced
inc byte [ebp - 0x57]
mov al, byte [ebp - 0x55]
cmp byte [ebp - 0x57], al
jbe loc_0000a808  ; jbe 0xa808
jmp near loc_0000a7da  ; jmp 0xa7da

loc_0000af98:  ; not directly referenced
mov eax, 0x8000000e
jmp short loc_0000afa4  ; jmp 0xafa4

loc_0000af9f:  ; not directly referenced
mov eax, 0x80000009

loc_0000afa4:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000afac:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x60
mov edx, dword [ebp + 0x1c]
mov ecx, dword [ebp + 0x20]
mov eax, dword [ebp + 0xc]
push 0
mov ebx, dword [ebp + 8]
push 0x1f
mov edi, dword [ebp + 0x10]
push 0
mov dword [ebp - 0x58], edx
mov edx, dword [ebp + 0x2c]
mov dword [ebp - 0x5c], ecx
mov dword [ebp - 0x40], eax
mov dword [ebp - 0x60], edx
call fcn_00016bd6  ; call 0x16bd6
mov esi, eax
call fcn_0001bef7  ; call 0x1bef7
mov ecx, edi
add esp, 0xc
movzx ecx, cl
movzx edi, bl
push ecx
mov ebx, 0x8000000e
mov dword [ebp - 0x3c], ecx
movzx ecx, byte [ebp - 0x40]
mov dword [ebp - 0x54], edi
mov dword [ebp - 0x48], eax
push ecx
push edi
mov dword [ebp - 0x50], ecx
call fcn_00016bd6  ; call 0x16bd6
mov edi, eax
lea eax, [esi + 0xf0]
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov ecx, dword [ebp + 0x28]
mov edx, dword [ebp + 0x34]
mov dword [ebp - 0x24], 0
mov dword [ebp - 0x20], 0
mov byte [ecx], 0
mov byte [edx], 0
mov dword [ebp - 0x40], eax
mov dword [esp], edi
mov dword [ebp - 0x1c], 0
mov byte [ebp - 0x29], 0
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
je loc_0000b26b  ; je 0xb26b
cmp dword [ebp - 0x48], 2
jne short loc_0000b0a5  ; jne 0xb0a5
sub esp, 0xc
lea eax, [esi + 0x48]
push eax
call fcn_00017cfe  ; call 0x17cfe
mov esi, dword [ebp - 0x40]
and esi, 0xffffc000
mov ebx, eax
pop eax
and ebx, 0xfffc
pop edx
push dword [ebp - 0x3c]
push esi
call fcn_0001c307  ; call 0x1c307
movzx eax, al
lea eax, [ebx + eax*8 + 0x190]
mov dword [esp], eax
call fcn_00018ea0  ; call 0x18ea0
add esp, 0x10
test al, 1
jne short loc_0000b0a5  ; jne 0xb0a5
mov eax, dword [ebp + 0x34]
mov byte [eax], 1

loc_0000b0a5:  ; not directly referenced
push 0x10
push dword [ebp - 0x3c]
push dword [ebp - 0x50]
push dword [ebp - 0x54]
call fcn_00009f67  ; call 0x9f67
add esp, 0x10
movzx eax, al
mov dword [ebp - 0x4c], eax
test eax, eax
jne short loc_0000b0ee  ; jne 0xb0ee
call fcn_000153f0  ; call 0x153f0
mov ebx, 0x80000003
test al, al
je loc_0000b26b  ; je 0xb26b
push esi
push ref_000221f1  ; push 0x221f1
push 0x4f7
push ref_00022076  ; push 0x22076
call fcn_000153fc  ; call 0x153fc
jmp near loc_0000b268  ; jmp 0xb268

loc_0000b0ee:  ; not directly referenced
mov eax, dword [ebp - 0x4c]
sub esp, 0xc
lea esi, [eax + edi]
lea eax, [esi + 0x24]
push eax
call fcn_00017d8a  ; call 0x17d8a
lea eax, [esi + 0xc]
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
mov ecx, dword [ebp + 0x30]
add esp, 0x10
mov edx, dword [ebp + 0x24]
shr ax, 0xa
and eax, 3
mov word [ecx], ax
mov dl, byte [edx + 0x10]
cmp dl, 4
je short loc_0000b134  ; je 0xb134
and eax, edx
mov word [ecx], ax
mov dword [ebp - 0x40], 1
jmp short loc_0000b13b  ; jmp 0xb13b

loc_0000b134:  ; not directly referenced
mov dword [ebp - 0x40], 0

loc_0000b13b:  ; not directly referenced
sub esp, 0xc
lea eax, [edi + 0x19]
push eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
mov byte [ebp - 0x41], 1
mov bl, al
test al, al
jne short loc_0000b17d  ; jne 0xb17d
mov ebx, dword [ebp - 0x58]
movzx edx, byte [ebp - 0x5c]
push ecx
movzx eax, bl
shl edx, 0x10
shl eax, 8
or eax, edx
push eax
push 0xff0000ff
lea eax, [edi + 0x18]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
mov byte [ebp - 0x41], 0

loc_0000b17d:  ; not directly referenced
sub esp, 0xc
add esi, 0x1a
push esi
xor esi, esi
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
cmp dword [ebp - 0x48], 2
mov dword [ebp - 0x28], 0
mov word [ebp - 0x58], ax
jne short loc_0000b1fd  ; jne 0xb1fd
push 0x1e
push dword [ebp - 0x3c]
push dword [ebp - 0x50]
push dword [ebp - 0x54]
call fcn_0000a005  ; call 0xa005
add esp, 0x10
mov esi, eax
test ax, ax
je short loc_0000b1fd  ; je 0xb1fd
movzx eax, ax
sub esp, 0xc
lea edx, [edi + eax + 4]
push edx
mov dword [ebp - 0x3c], edx
call fcn_00017d8a  ; call 0x17d8a
mov edx, dword [ebp - 0x3c]
mov dword [esp], edx
movzx eax, ah
mov dword [ebp - 0x24], eax
call fcn_00017d8a  ; call 0x17d8a
mov edx, dword [ebp - 0x3c]
mov dword [esp], edx
shr eax, 0x10
and eax, 3
mov dword [ebp - 0x1c], eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
shr eax, 0x13
and eax, 0x1f
mov dword [ebp - 0x20], eax

loc_0000b1fd:  ; not directly referenced
xor eax, eax
test bl, bl
je short loc_0000b250  ; je 0xb250
test byte [ebp - 0x58], 0x40
je short loc_0000b250  ; je 0xb250
movzx eax, byte [ebp - 0x60]
movzx ecx, si
movzx ebx, bl
push edx
push edx
push eax
push dword [ebp + 0x38]
push dword [ebp + 0x34]
lea eax, [ebp - 0x29]
push eax
push dword [ebp + 0x24]
lea eax, [ebp - 0x1c]
push eax
lea eax, [ebp - 0x20]
push eax
lea eax, [ebp - 0x24]
push eax
push dword [ebp + 0x28]
lea eax, [ebp - 0x28]
push ecx
push eax
push dword [ebp - 0x40]
push dword [ebp + 0x30]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push ebx
push dword [ebp - 0x4c]
push edi
call fcn_0000a761  ; call 0xa761
add esp, 0x50

loc_0000b250:  ; not directly referenced
cmp byte [ebp - 0x41], 0
mov ebx, eax
jne short loc_0000b26b  ; jne 0xb26b
push eax
add edi, 0x18
push eax
push 0xff0000ff
push edi
call fcn_00018a7a  ; call 0x18a7a

loc_0000b268:  ; not directly referenced
add esp, 0x10

loc_0000b26b:  ; not directly referenced
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000b275:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x70
mov ecx, dword [ebp + 0x1c]
mov eax, dword [ebp + 8]
push 0
mov esi, dword [ebp + 0xc]
push 0x1f
mov edi, dword [ebp + 0x10]
push 0
mov dword [ebp - 0x40], ecx
mov ecx, dword [ebp + 0x20]
mov dword [ebp - 0x3c], eax
mov dword [ebp - 0x58], ecx
mov ecx, dword [ebp + 0x2c]
mov dword [ebp - 0x5c], ecx
mov ecx, dword [ebp + 0x30]
mov dword [ebp - 0x68], ecx
mov ecx, dword [ebp + 0x34]
mov dword [ebp - 0x6c], ecx
mov ecx, dword [ebp + 0x3c]
mov dword [ebp - 0x70], ecx
call fcn_00016bd6  ; call 0x16bd6
mov ebx, eax
call fcn_0001bef7  ; call 0x1bef7
add esp, 0xc
mov dword [ebp - 0x44], eax
mov eax, edi
movzx edi, al
mov eax, esi
push edi
movzx eax, al
push eax
mov dword [ebp - 0x60], eax
movzx eax, byte [ebp - 0x3c]
push eax
mov dword [ebp - 0x64], eax
call fcn_00016bd6  ; call 0x16bd6
mov esi, eax
lea eax, [ebx + 0xf0]
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov dword [ebp - 0x28], 0
mov dword [ebp - 0x24], 0
mov dword [ebp - 0x20], 0
mov byte [ebp - 0x30], 0
mov byte [ebp - 0x31], 0
mov dword [ebp - 0x48], eax
mov eax, dword [ebp + 0x28]
and dword [ebp - 0x48], 0xffffc000
mov byte [eax], 0
mov dword [esp], esi
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
jne short loc_0000b34d  ; jne 0xb34d
call fcn_000153f0  ; call 0x153f0
mov ebx, 0x8000000e
test al, al
je loc_0000b8fb  ; je 0xb8fb
push ecx
push ref_000221f1  ; push 0x221f1
push 0x5ca
jmp short loc_0000b3c7  ; jmp 0xb3c7

loc_0000b34d:  ; not directly referenced
cmp dword [ebp - 0x44], 2
jne short loc_0000b38f  ; jne 0xb38f
sub esp, 0xc
add ebx, 0x48
push ebx
call fcn_00017cfe  ; call 0x17cfe
mov ebx, eax
pop eax
and ebx, 0xfffc
pop edx
push edi
push dword [ebp - 0x48]
call fcn_0001c307  ; call 0x1c307
movzx eax, al
lea eax, [ebx + eax*8 + 0x190]
mov dword [esp], eax
call fcn_00018ea0  ; call 0x18ea0
add esp, 0x10
test al, 1
jne short loc_0000b38f  ; jne 0xb38f
mov byte [ebp - 0x31], 1

loc_0000b38f:  ; not directly referenced
push 0x10
push edi
push dword [ebp - 0x60]
push dword [ebp - 0x64]
call fcn_00009f67  ; call 0x9f67
add esp, 0x10
movzx eax, al
mov dword [ebp - 0x50], eax
test eax, eax
jne short loc_0000b3d9  ; jne 0xb3d9
call fcn_000153f0  ; call 0x153f0
mov ebx, 0x80000003
test al, al
je loc_0000b8fb  ; je 0xb8fb
push eax
push ref_000221f1  ; push 0x221f1
push 0x5dc

loc_0000b3c7:  ; not directly referenced
push ref_00022076  ; push 0x22076
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
jmp near loc_0000b8fb  ; jmp 0xb8fb

loc_0000b3d9:  ; not directly referenced
mov eax, dword [ebp - 0x50]
sub esp, 0xc
add eax, esi
mov dword [ebp - 0x4c], eax
add eax, 0x24
push eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test ah, 8
je short loc_0000b414  ; je 0xb414
mov eax, dword [ebp + 0x24]
cmp byte [eax + 0x12], 1
jne short loc_0000b414  ; jne 0xb414
push eax
push eax
mov eax, dword [ebp - 0x4c]
push 0x400
add eax, 0x28
push eax
call fcn_00018863  ; call 0x18863
add esp, 0x10

loc_0000b414:  ; not directly referenced
mov eax, dword [ebp - 0x4c]
sub esp, 0xc
add eax, 0xc
push eax
call fcn_00017cfe  ; call 0x17cfe
mov ecx, dword [ebp + 0x24]
add esp, 0x10
mov dl, byte [ecx + 0x10]
shr ax, 0xa
and eax, 3
mov word [ebp - 0x2e], ax
cmp dl, 4
je short loc_0000b449  ; je 0xb449
and eax, edx
mov ebx, 1
mov word [ebp - 0x2e], ax
jmp short loc_0000b44b  ; jmp 0xb44b

loc_0000b449:  ; not directly referenced
xor ebx, ebx

loc_0000b44b:  ; not directly referenced
sub esp, 0xc
lea eax, [esi + 0x19]
push eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
mov byte [ebp - 0x51], 1
mov byte [ebp - 0x3c], al
test al, al
jne short loc_0000b492  ; jne 0xb492
movzx edx, byte [ebp - 0x58]
push eax
movzx eax, byte [ebp - 0x40]
shl edx, 0x10
shl eax, 8
or eax, edx
push eax
push 0xff0000ff
lea eax, [esi + 0x18]
push eax
call fcn_00018aa4  ; call 0x18aa4
mov al, byte [ebp - 0x40]
add esp, 0x10
mov byte [ebp - 0x51], 0
mov byte [ebp - 0x3c], al

loc_0000b492:  ; not directly referenced
mov eax, dword [ebp - 0x4c]
sub esp, 0xc
add eax, 0x1a
push eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
cmp dword [ebp - 0x44], 2
mov dword [ebp - 0x2c], 0
mov word [ebp - 0x40], 0
mov word [ebp - 0x58], ax
jne short loc_0000b510  ; jne 0xb510
push 0x1e
push edi
push dword [ebp - 0x60]
push dword [ebp - 0x64]
call fcn_0000a005  ; call 0xa005
add esp, 0x10
mov word [ebp - 0x40], ax
test ax, ax
je short loc_0000b510  ; je 0xb510
movzx eax, ax
sub esp, 0xc
lea edi, [esi + eax + 4]
push edi
call fcn_00017d8a  ; call 0x17d8a
mov dword [esp], edi
movzx eax, ah
mov dword [ebp - 0x28], eax
call fcn_00017d8a  ; call 0x17d8a
mov dword [esp], edi
shr eax, 0x10
and eax, 3
mov dword [ebp - 0x20], eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
shr eax, 0x13
and eax, 0x1f
mov dword [ebp - 0x24], eax

loc_0000b510:  ; not directly referenced
xor edi, edi
cmp byte [ebp - 0x3c], 0
je loc_0000b61b  ; je 0xb61b
test byte [ebp - 0x58], 0x40
je loc_0000b61b  ; je 0xb61b
movzx eax, byte [ebp - 0x5c]
push edi
push edi
push eax
push dword [ebp + 0x38]
lea eax, [ebp - 0x31]
push eax
lea eax, [ebp - 0x30]
push eax
push dword [ebp + 0x24]
lea eax, [ebp - 0x20]
push eax
lea eax, [ebp - 0x24]
push eax
lea eax, [ebp - 0x28]
push eax
movzx eax, word [ebp - 0x40]
push dword [ebp + 0x28]
push eax
lea eax, [ebp - 0x2c]
push eax
push ebx
lea eax, [ebp - 0x2e]
push eax
movzx eax, byte [ebp - 0x3c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push eax
push dword [ebp - 0x50]
push esi
call fcn_0000a761  ; call 0xa761
add esp, 0x50
mov edi, eax
mov eax, dword [ebp + 0x24]
cmp byte [eax + 0x12], 1
jne loc_0000b61b  ; jne 0xb61b
cmp byte [eax + 0x18], 1
jne short loc_0000b5a2  ; jne 0xb5a2
mov ecx, dword [ebp + 0x24]
mov eax, dword [ebp - 0x2c]
movzx edx, word [ecx + 0x1a]
xor ax, ax
or eax, edx
movzx edx, byte [ecx + 0x19]
or ah, 0x80
shl edx, 0xa
or eax, edx
mov dword [ebp - 0x2c], eax

loc_0000b5a2:  ; not directly referenced
mov eax, dword [ebp + 0x24]
cmp byte [eax + 0x1c], 1
jne short loc_0000b5cc  ; jne 0xb5cc
mov ecx, dword [ebp + 0x24]
movzx eax, word [ebp - 0x2c]
movzx edx, byte [ecx + 0x1d]
or eax, 0x80000000
shl edx, 0x1a
or eax, edx
movzx edx, word [ecx + 0x1e]
shl edx, 0x10
or eax, edx
mov dword [ebp - 0x2c], eax

loc_0000b5cc:  ; not directly referenced
mov eax, dword [ebp - 0x2c]
test eax, eax
je short loc_0000b61b  ; je 0xb61b
push edx
push edx
push eax
lea eax, [esi + 0x400]
push eax
call fcn_00017dcb  ; call 0x17dcb
mov eax, dword [ebp + 0x24]
pop ecx
mov ecx, dword [ebp + 0x24]
pop ebx
cmp byte [eax + 0x18], 1
sbb eax, eax
add eax, 3
mov edx, eax
and edx, 0xfffffffd
cmp byte [ecx + 0x1c], 0
cmove eax, edx
mov edx, eax
or edx, 4
cmp byte [ecx + 0x13], 1
cmove eax, edx
push eax
lea eax, [esi + 0x404]
push eax
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10

loc_0000b61b:  ; not directly referenced
cmp dword [ebp - 0x44], 2
jne loc_0000b814  ; jne 0xb814
mov eax, dword [ebp + 0x28]
cmp byte [eax], 0
je loc_0000b6cd  ; je 0xb6cd
push eax
mov eax, dword [ebp - 0x28]
movzx edx, word [ebp - 0x40]
shl eax, 8
add edx, esi
push eax
lea ebx, [edx + 8]
push 0xffff00ff
push ebx
mov dword [ebp - 0x60], edx
call fcn_00018aa4  ; call 0x18aa4
mov eax, dword [ebp - 0x24]
add esp, 0xc
mov edx, dword [ebp - 0x60]
shl eax, 3
or eax, dword [ebp - 0x20]
add edx, 0xc
push eax
push 0xffffff04
push edx
call fcn_00018aa4  ; call 0x18aa4
add esp, 0xc
push 0x40a00000
push 0x1c00ffff
push ebx
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
test byte [ebp - 0x2e], 2
je short loc_0000b6a3  ; je 0xb6a3
cmp byte [ebp - 0x31], 0
je short loc_0000b6a3  ; je 0xb6a3
push ecx
push ecx
push 1
lea eax, [esi + 0x420]
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10

loc_0000b6a3:  ; not directly referenced
mov eax, dword [ebp + 0x24]
mov al, byte [eax + 0x11]
cmp al, 1
je short loc_0000b6bb  ; je 0xb6bb
cmp al, 2
setne al
movzx eax, al
lea eax, [eax + eax + 0xd]
jmp short loc_0000b6c0  ; jmp 0xb6c0

loc_0000b6bb:  ; not directly referenced
mov eax, 0xe

loc_0000b6c0:  ; not directly referenced
push edx
push eax
push 0xffffffffffffffe0
push ebx
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_0000b6cd:  ; not directly referenced
test byte [ebp - 0x2e], 2
je loc_0000b814  ; je 0xb814
cmp byte [ebp - 0x31], 0
je loc_0000b814  ; je 0xb814
mov eax, dword [ebp + 0x28]
cmp byte [eax], 0
je short loc_0000b6ff  ; je 0xb6ff
push eax
push eax
push 0xfffdffff
lea eax, [esi + 0x420]
push eax
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10

loc_0000b6ff:  ; not directly referenced
push ebx
push ebx
push 0x20000000
lea eax, [esi + 0x420]
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10
cmp byte [ebp - 0x68], 0
je loc_0000b814  ; je 0xb814
cmp byte [ebp - 0x6c], 0
je loc_0000b814  ; je 0xb814
mov edi, dword [ebp - 0x48]
push eax
push eax
push 0
push edi
call fcn_0001c2db  ; call 0x1c2db
pop edx
pop ecx
lea edx, [ebp - 0x2f]
push edx
sub eax, 0x20
lea edx, [ebp - 0x1c]
movzx eax, al
push edx
push eax
push 4
push 0xe00000e0
push edi
call fcn_00009e5f  ; call 0x9e5f
add esp, 0x20
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0000b79b  ; je 0xb79b
test ebx, ebx
jns short loc_0000b79b  ; jns 0xb79b
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000b783  ; je 0xb783
push edi
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000b783:  ; not directly referenced
push ebx
push ref_00020664  ; push 0x20664
push 0x6b4
push ref_00022076  ; push 0x22076
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000b79b:  ; not directly referenced
mov edi, dword [ebp - 0x48]
push eax
push eax
push 0
push edi
or dword [ebp - 0x1c], 0x4000
call fcn_0001c2db  ; call 0x1c2db
pop edx
pop ecx
lea edx, [ebp - 0x2f]
push edx
sub eax, 0x20
lea edx, [ebp - 0x1c]
movzx eax, al
push edx
push eax
push 5
push 0xe00000e0
push edi
call fcn_00009e5f  ; call 0x9e5f
add esp, 0x20
mov edi, eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0000b814  ; je 0xb814
test edi, edi
jns short loc_0000b814  ; jns 0xb814
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000b7fc  ; je 0xb7fc
push eax
push edi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000b7fc:  ; not directly referenced
push eax
push ref_00020664  ; push 0x20664
push 0x6be
push ref_00022076  ; push 0x22076
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000b814:  ; not directly referenced
cmp byte [ebp - 0x70], 1
jne short loc_0000b834  ; jne 0xb834
push eax
movzx eax, word [ebp - 0x2e]
push eax
mov eax, dword [ebp - 0x4c]
push 0xfffc
add eax, 0x10
push eax
call fcn_000188bd  ; call 0x188bd
add esp, 0x10

loc_0000b834:  ; not directly referenced
cmp byte [ebp - 0x30], 0
je short loc_0000b851  ; je 0xb851
push eax
push 0x18
push 0xe3
lea eax, [esi + 0xd4]
push eax
call fcn_000186c6  ; call 0x186c6
add esp, 0x10

loc_0000b851:  ; not directly referenced
cmp byte [ebp - 0x3c], 0
je short loc_0000b8a9  ; je 0xb8a9
test byte [ebp - 0x58], 0x40
je short loc_0000b8a9  ; je 0xb8a9
movzx eax, byte [ebp - 0x5c]
push ebx
push ebx
push eax
push dword [ebp + 0x38]
lea eax, [ebp - 0x31]
push eax
lea eax, [ebp - 0x30]
push eax
push dword [ebp + 0x24]
lea eax, [ebp - 0x20]
push eax
lea eax, [ebp - 0x24]
push eax
lea eax, [ebp - 0x28]
push eax
movzx eax, word [ebp - 0x40]
push dword [ebp + 0x28]
push eax
lea eax, [ebp - 0x2c]
push eax
push 2
lea eax, [ebp - 0x2e]
push eax
movzx eax, byte [ebp - 0x3c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push eax
push dword [ebp - 0x50]
push esi
call fcn_0000a761  ; call 0xa761
add esp, 0x50
mov edi, eax

loc_0000b8a9:  ; not directly referenced
cmp byte [ebp - 0x51], 0
jne short loc_0000b8c2  ; jne 0xb8c2
push ecx
push ecx
push 0xff0000ff
lea eax, [esi + 0x18]
push eax
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10

loc_0000b8c2:  ; not directly referenced
mov ebx, edi
test edi, edi
js short loc_0000b8fb  ; js 0xb8fb
cmp word [ebp - 0x2e], 3
jne short loc_0000b8fb  ; jne 0xb8fb
cmp dword [ebp - 0x44], 2
lea ebx, [esi + 0xe8]
jne short loc_0000b8ec  ; jne 0xb8ec
push edx
push 8
push 0xf3
push ebx
call fcn_000186c6  ; call 0x186c6
add esp, 0x10

loc_0000b8ec:  ; not directly referenced
push eax
push eax
push 2
push ebx
mov ebx, edi
call fcn_0001866c  ; call 0x1866c
add esp, 0x10

loc_0000b8fb:  ; not directly referenced
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000b905:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x50
movzx edi, byte [ebp + 0x10]
movzx edx, byte [ebp + 0xc]
mov eax, dword [ebp + 8]
mov esi, dword [ebp + 0x14]
mov ebx, dword [ebp + 0x18]
push edi
push edx
mov ecx, esi
mov byte [ebp - 0x2d], al
movzx eax, al
push eax
mov byte [ebp - 0x1d], cl
mov dword [ebp - 0x24], edi
mov dword [ebp - 0x28], edx
mov byte [ebp - 0x1f], bl
mov dword [ebp - 0x1c], eax
call fcn_00016bd6  ; call 0x16bd6
mov edi, eax
lea eax, [eax + 0x19]
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
mov byte [ebp - 0x1e], al
test al, al
jne short loc_0000b97d  ; jne 0xb97d
mov eax, esi
movzx edx, bl
movzx eax, al
shl eax, 8
or eax, dword [ebp - 0x1c]
shl edx, 0x10
push ecx
or eax, edx
push eax
push 0xff000000
lea eax, [edi + 0x18]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
jmp short loc_0000b995  ; jmp 0xb995

loc_0000b97d:  ; not directly referenced
sub esp, 0xc
lea eax, [edi + 0x1a]
push eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
mov byte [ebp - 0x1f], al
mov al, byte [ebp - 0x1e]
mov byte [ebp - 0x1d], al

loc_0000b995:  ; not directly referenced
push 0x10
push dword [ebp - 0x24]
push dword [ebp - 0x28]
push dword [ebp - 0x1c]
call fcn_00009f67  ; call 0x9f67
movzx eax, al
lea eax, [edi + eax + 2]
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
and eax, 0xf0
sar eax, 4
cmp al, 5
jne short loc_0000b9e7  ; jne 0xb9e7
sub esp, 0xc
lea eax, [edi + 0xe]
push eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 0x7f
je short loc_0000b9e7  ; je 0xb9e7

loc_0000b9d6:  ; not directly referenced
mov al, byte [ebp - 0x1d]
xor ebx, ebx
inc eax
movzx eax, al
mov dword [ebp - 0x34], eax
jmp near loc_0000baea  ; jmp 0xbaea

loc_0000b9e7:  ; not directly referenced
push eax
movzx eax, byte [ebp - 0x1d]
mov ebx, 0x186a0
push 0
push 0
push eax
call fcn_00016bd6  ; call 0x16bd6
mov esi, eax
pop eax
pop edx
push 0
push esi
call fcn_00017ce1  ; call 0x17ce1
add esp, 0x10

loc_0000ba0a:  ; not directly referenced
sub esp, 0xc
push esi
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
jne short loc_0000b9d6  ; jne 0xb9d6
sub esp, 0xc
push 0xa
call fcn_0001ba3f  ; call 0x1ba3f
add esp, 0x10
dec ebx
jne short loc_0000ba0a  ; jne 0xba0a
jmp near loc_0000bbb8  ; jmp 0xbbb8

loc_0000ba2f:  ; not directly referenced
push 0
push dword [ebp + 0x1c]
push ebx
push esi
call fcn_0000a4f1  ; call 0xa4f1
add esp, 0x10
cmp byte [ebp - 0x2d], 0
jne short loc_0000ba5a  ; jne 0xba5a
sub esp, 0xc
push ebx
push esi
push dword [ebp - 0x24]
push dword [ebp - 0x28]
push dword [ebp - 0x1c]
call fcn_0000a5d9  ; call 0xa5d9
add esp, 0x20

loc_0000ba5a:  ; not directly referenced
push 0x10
push 0
push ebx
push esi
call fcn_00009f67  ; call 0x9f67
movzx edx, al
mov cl, al
add edx, dword [ebp - 0x2c]
mov dword [ebp - 0x4c], ecx
lea eax, [edx + 2]
mov dword [ebp - 0x38], edx
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
mov word [ebp - 0x48], ax
mov eax, dword [ebp - 0x2c]
add eax, 0xb
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
mov edx, dword [ebp - 0x38]
mov ecx, dword [ebp - 0x4c]
cmp al, 6
je short loc_0000bb10  ; je 0xbb10

loc_0000ba9d:  ; not directly referenced
push edx
push edx
push 0
push ebx
push esi
push dword [ebp - 0x24]
push dword [ebp - 0x28]
push dword [ebp - 0x1c]
call fcn_0000a084  ; call 0xa084
add esp, 0x14
push ebx
push esi
push dword [ebp - 0x24]
push dword [ebp - 0x28]
push dword [ebp - 0x1c]
call fcn_0000a1b2  ; call 0xa1b2
add esp, 0x1c
push dword [ebp - 0x24]
push ebx
push esi
call fcn_0000a37c  ; call 0xa37c
push 1
push dword [ebp + 0x1c]
push ebx
push esi
call fcn_0000a4f1  ; call 0xa4f1
add esp, 0x20

loc_0000bae0:  ; not directly referenced
inc ebx
cmp ebx, 0x20
je loc_0000bb9b  ; je 0xbb9b

loc_0000baea:  ; not directly referenced
movzx esi, byte [ebp - 0x1d]
push eax
push 0
push ebx
push esi
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], eax
mov dword [ebp - 0x2c], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
jne loc_0000ba2f  ; jne 0xba2f
jmp short loc_0000bae0  ; jmp 0xbae0

loc_0000bb10:  ; not directly referenced
test cl, cl
je short loc_0000ba9d  ; je 0xba9d
mov ecx, dword [ebp - 0x48]
sub esp, 0xc
add edx, 0x1a
push edx
and ecx, 0xf0
sar ecx, 4
mov dword [ebp - 0x2c], ecx
call fcn_00017cfe  ; call 0x17cfe
mov ecx, dword [ebp - 0x2c]
add esp, 0x10
cmp cl, 5
je short loc_0000bb4b  ; je 0xbb4b
cmp cl, 6
jne loc_0000ba9d  ; jne 0xba9d
test al, 0x40
je loc_0000ba9d  ; je 0xba9d

loc_0000bb4b:  ; not directly referenced
mov al, byte [ebp - 0x1d]
cmp byte [ebp - 0x1f], al
jbe short loc_0000bb71  ; jbe 0xbb71
push eax
push eax
movzx eax, byte [ebp - 0x1f]
push dword [ebp + 0x1c]
push eax
push dword [ebp - 0x34]
push 0
push ebx
push esi
call fcn_0000b905  ; call 0xb905
add esp, 0x20
jmp near loc_0000ba9d  ; jmp 0xba9d

loc_0000bb71:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je loc_0000ba9d  ; je 0xba9d
push ecx
push ref_000221f1  ; push 0x221f1
push 0x7aa
push ref_00022076  ; push 0x22076
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
jmp near loc_0000ba9d  ; jmp 0xba9d

loc_0000bb9b:  ; not directly referenced
xor bl, bl
cmp byte [ebp - 0x1e], 0
jne short loc_0000bbd6  ; jne 0xbbd6
push eax
push eax
push 0xff000000
lea eax, [edi + 0x18]
push eax
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10
jmp short loc_0000bbd6  ; jmp 0xbbd6

loc_0000bbb8:  ; not directly referenced
cmp byte [ebp - 0x1e], 0
jne short loc_0000bbd1  ; jne 0xbbd1
push eax
push eax
push 0xff000000
lea eax, [edi + 0x18]
push eax
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10

loc_0000bbd1:  ; not directly referenced
mov ebx, 0x8000000e

loc_0000bbd6:  ; not directly referenced
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000bbe0:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x30
mov eax, dword [ebp + 0x14]
movzx edi, byte [ebp + 0x10]
movzx esi, byte [ebp + 0xc]
movzx ebx, byte [ebp + 8]
mov dword [ebp - 0x30], eax
mov eax, dword [ebp + 0x18]
push edi
push esi
push ebx
mov dword [ebp - 0x34], eax
call fcn_00016bd6  ; call 0x16bd6
mov dword [ebp - 0x2c], eax
add eax, 0x5a
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
mov edx, 0x8000000e
test al, 0x40
je loc_0000bcc0  ; je 0xbcc0
push 0x10
push edi
push esi
push ebx
call fcn_00009f67  ; call 0x9f67
add esp, 0x10
test al, al
jne short loc_0000bc66  ; jne 0xbc66
call fcn_000153f0  ; call 0x153f0
mov edx, 0x80000003
test al, al
je short loc_0000bcc0  ; je 0xbcc0
push ecx
push ref_000221f1  ; push 0x221f1
push 0x81d
push ref_00022076  ; push 0x22076
mov dword [ebp - 0x2c], edx
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
mov edx, dword [ebp - 0x2c]
jmp short loc_0000bcc0  ; jmp 0xbcc0

loc_0000bc66:  ; not directly referenced
movzx eax, al
sub esp, 0xc
add eax, dword [ebp - 0x2c]
mov dword [ebp - 0x2c], eax
add eax, 4
push eax
call fcn_00017cfe  ; call 0x17cfe
and eax, 7
mov word [ebp - 0x1a], ax
pop eax
pop edx
lea eax, [ebp - 0x1a]
push eax
movzx eax, byte [ebp - 0x34]
push eax
movzx eax, byte [ebp - 0x30]
push eax
push edi
push esi
push ebx
call fcn_0000b905  ; call 0xb905
mov cx, word [ebp - 0x1a]
add esp, 0x1c
shl ecx, 5
movzx ecx, cx
mov ebx, eax
mov eax, dword [ebp - 0x2c]
push ecx
push 0xff1f
add eax, 8
push eax
call fcn_000188bd  ; call 0x188bd
add esp, 0x10
mov edx, ebx

loc_0000bcc0:  ; not directly referenced
lea esp, [ebp - 0xc]
mov eax, edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000bcca:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000bcec  ; je 0xbcec
push ebx
push ebx
push ref_00022203  ; push 0x22203
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000bcec:  ; not directly referenced
push ecx
push 0
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xf0
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
mov ebx, eax
and ebx, 0xffffc000
cmp dword [ebp + 8], 1
je short loc_0000bd53  ; je 0xbd53
jb short loc_0000bd22  ; jb 0xbd22
cmp dword [ebp + 8], 2
jne short loc_0000bd88  ; jne 0xbd88
push edx
push edx
jmp short loc_0000bd77  ; jmp 0xbd77

loc_0000bd22:  ; not directly referenced
sub esp, 0xc
lea eax, [ebx + 0x38f4]
push eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 1
jne short loc_0000bd3f  ; jne 0xbd3f
mov word [esi], 0
jmp short loc_0000bda2  ; jmp 0xbda2

loc_0000bd3f:  ; not directly referenced
sub esp, 0xc
add ebx, 0x38f8
push ebx
call fcn_00017cfe  ; call 0x17cfe
mov word [esi], ax
jmp short loc_0000bd85  ; jmp 0xbd85

loc_0000bd53:  ; not directly referenced
push ecx
push ecx
movzx eax, word [esi]
push eax
lea eax, [ebx + 0x38f8]
push eax
call fcn_00017d40  ; call 0x17d40
pop esi
pop eax
lea eax, [ebx + 0x38f4]
push 1
push eax
call fcn_0001866c  ; call 0x1866c
pop eax
pop edx

loc_0000bd77:  ; not directly referenced
push 1
add ebx, 0x38f0
push ebx
call fcn_0001866c  ; call 0x1866c

loc_0000bd85:  ; not directly referenced
add esp, 0x10

loc_0000bd88:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000bda2  ; je 0xbda2
push eax
push eax
push ref_0002221d  ; push 0x2221d
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000bda2:  ; not directly referenced
lea esp, [ebp - 8]
xor eax, eax
pop ebx
pop esi
pop ebp
ret

fcn_0000bdab:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
sub esp, 0xc
mov eax, dword [ebp + 8]
push dword [ebp + 0xc]
lea ebx, [eax + 0x3418]
push ebx
call fcn_00018a50  ; call 0x18a50
add esp, 0x10
mov dword [ebp + 8], ebx
mov ebx, dword [ebp - 4]
leave
jmp near fcn_00017d8a  ; jmp 0x17d8a

fcn_0000bdd3:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000bdf9  ; je 0xbdf9
push eax
push eax
push ref_00022235  ; push 0x22235
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000bdf9:  ; not directly referenced
lea eax, [ebp - 0x1c]
push eax
push 0
push 0
push ref_0002906c  ; push 0x2906c
call fcn_00019699  ; call 0x19699
add esp, 0x10
test eax, eax
jne short loc_0000be7c  ; jne 0xbe7c
mov edx, dword [ebp - 0x1c]
xor ebx, ebx
xor esi, esi

loc_0000be19:  ; not directly referenced
lea eax, [ebx + 0x18]
cmp word [edx + eax - 0x16], 0
je short loc_0000be29  ; je 0xbe29
inc esi
mov ebx, eax
jmp short loc_0000be19  ; jmp 0xbe19

loc_0000be29:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000be43  ; je 0xbe43
push eax
push esi
push ref_00022253  ; push 0x22253
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000be43:  ; not directly referenced
push eax
push ebx
push dword [ebp - 0x1c]
push ref_00028f48  ; push 0x28f48
call fcn_000192a8  ; call 0x192a8
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000be7c  ; je 0xbe7c
test ebx, ebx
jne short loc_0000be7c  ; jne 0xbe7c
push eax
push ref_00022284  ; push 0x22284
push 0x8f5
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000be7c:  ; not directly referenced
xor ebx, ebx

loc_0000be7e:  ; not directly referenced
lea eax, [ebp - 0x20]
push eax
push 0
push ebx
push ref_0002912c  ; push 0x2912c
call fcn_00019699  ; call 0x19699
add esp, 0x10
test eax, eax
je short loc_0000bec8  ; je 0xbec8
call fcn_000153f0  ; call 0x153f0
test al, al
je loc_0000c033  ; je 0xc033
test ebx, ebx
jne loc_0000c033  ; jne 0xc033
push eax
push ref_000222ba  ; push 0x222ba
push 0x908
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
jmp near loc_0000c033  ; jmp 0xc033

loc_0000bec8:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000bee9  ; je 0xbee9
mov eax, dword [ebp - 0x20]
push edi
movzx eax, byte [eax + 1]
push eax
push ref_000222c5  ; push 0x222c5
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000bee9:  ; not directly referenced
push esi
push 0x5ac
push dword [ebp - 0x20]
push ref_00028f58  ; push 0x28f58
call fcn_000192a8  ; call 0x192a8
mov esi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000bf26  ; je 0xbf26
test esi, esi
jne short loc_0000bf26  ; jne 0xbf26
push ecx
push ref_00022284  ; push 0x22284
push 0x90e
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000bf26:  ; not directly referenced
push eax
mov eax, dword [ebp - 0x20]
push 0
push 0x1f
movzx eax, byte [eax + 1]
push eax
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xf0
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov esi, eax
and esi, 0xffffc000
lea eax, [esi + 0x3418]
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov dword [ebp - 0x24], eax
pop eax
pop edx
lea eax, [ebp - 0x24]
push eax
push dword [ebp - 0x20]
call fcn_000121ef  ; call 0x121ef
mov edi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000bfb3  ; je 0xbfb3
test edi, edi
jns short loc_0000bfb3  ; jns 0xbfb3
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000bf9b  ; je 0xbf9b
push eax
push edi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000bf9b:  ; not directly referenced
push edi
push ref_00020664  ; push 0x20664
push 0x91d
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000bfb3:  ; not directly referenced
mov eax, dword [ebp - 0x20]
cmp byte [eax + 0x370], 0
je short loc_0000c00b  ; je 0xc00b
push edx
push edx
push 0
push eax
call fcn_00012d98  ; call 0x12d98
pop ecx
push dword [ebp - 0x20]
call fcn_00012e22  ; call 0x12e22
add esp, 0x10
test eax, eax
jns short loc_0000c01f  ; jns 0xc01f
mov eax, dword [ebp - 0x20]
cmp byte [eax + 0x370], 2
jne short loc_0000c01f  ; jne 0xc01f
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000bfff  ; je 0xbfff
push eax
push eax
push ref_000222fa  ; push 0x222fa
push 2
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000bfff:  ; not directly referenced
push edi
push edi
push 0xc0
push dword [ebp - 0x20]
jmp short loc_0000c013  ; jmp 0xc013

loc_0000c00b:  ; not directly referenced
push ecx
push ecx
push 0xc0
push eax

loc_0000c013:  ; not directly referenced
call fcn_00012d98  ; call 0x12d98
add esp, 0x10
or dword [ebp - 0x24], 0x10

loc_0000c01f:  ; not directly referenced
push edx
inc ebx
push edx
push dword [ebp - 0x24]
push esi
call fcn_0000bdab  ; call 0xbdab
add esp, 0x10
jmp near loc_0000be7e  ; jmp 0xbe7e

loc_0000c033:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000c050  ; je 0xc050
push eax
push eax
push ref_0002232e  ; push 0x2232e
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000c050:  ; not directly referenced
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000c05a:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x2c
mov eax, dword [ebp + 0x18]
mov dword [ebp - 0x28], eax
call fcn_0001bb39  ; call 0x1bb39
sub esp, 0xc
mov edi, eax
mov dword [ebp - 0x20], eax
mov eax, dword [ebp + 0x10]
add eax, 0x410
push eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
mov byte [ebp - 0x19], al
mov eax, edi
dec eax
mov dword [ebp - 0x24], eax
cmp eax, 0xf
ja short loc_0000c0ba  ; ja 0xc0ba
mov cl, byte [ebp - 0x24]
mov eax, 1
xor esi, esi
mov edx, ref_0002788c  ; mov edx, 0x2788c
shl eax, cl
and eax, 0x8007
cmovne esi, edx
cmp eax, 1
sbb ebx, ebx
not ebx
and ebx, 0x49
jmp short loc_0000c0be  ; jmp 0xc0be

loc_0000c0ba:
xor esi, esi
xor ebx, ebx

loc_0000c0be:
add esi, 8
mov word [ebp - 0x2c], 0

loc_0000c0c7:
cmp word [ebp - 0x2c], bx
je short loc_0000c12d  ; je 0xc12d
push dword [esi]
push dword [esi - 4]
push dword [esi - 8]
push dword [ebp + 0x14]
call fcn_00009d54  ; call 0x9d54
mov edi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000c124  ; je 0xc124
test edi, edi
jns short loc_0000c124  ; jns 0xc124
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000c10c  ; je 0xc10c
push eax
push edi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000c10c:
push ecx
push ref_00020664  ; push 0x20664
push 0x147
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000c124:
inc word [ebp - 0x2c]
add esi, 0xc
jmp short loc_0000c0c7  ; jmp 0xc0c7

loc_0000c12d:
mov eax, dword [ebp - 0x20]
cmp eax, 0x22
ja short loc_0000c14b  ; ja 0xc14b
cmp eax, 0x20
jae short loc_0000c158  ; jae 0xc158
cmp eax, 1
jb short loc_0000c170  ; jb 0xc170
cmp eax, 3
jbe short loc_0000c164  ; jbe 0xc164
cmp eax, 0x10
je short loc_0000c164  ; je 0xc164
jmp short loc_0000c170  ; jmp 0xc170

loc_0000c14b:
mov eax, dword [ebp - 0x20]
sub eax, 0x41
cmp eax, 2
jbe short loc_0000c176  ; jbe 0xc176
jmp short loc_0000c170  ; jmp 0xc170

loc_0000c158:
mov edx, ref_00028064  ; mov edx, 0x28064
mov eax, 0x49
jmp short loc_0000c180  ; jmp 0xc180

loc_0000c164:
mov edx, ref_00027bf8  ; mov edx, 0x27bf8
mov eax, 0x24
jmp short loc_0000c180  ; jmp 0xc180

loc_0000c170:
xor edx, edx
xor eax, eax
jmp short loc_0000c180  ; jmp 0xc180

loc_0000c176:
mov edx, ref_000287e8  ; mov edx, 0x287e8
mov eax, 0x4d

loc_0000c180:
imul eax, eax, 0xc
mov esi, edx
add eax, edx
mov dword [ebp - 0x30], eax
mov al, byte [ebp - 0x19]
mov bl, al
and eax, 0x10
and ebx, 0x20
mov byte [ebp - 0x2c], al

loc_0000c198:
cmp esi, dword [ebp - 0x30]
je loc_0000c25c  ; je 0xc25c
cmp dword [ebp + 0xc], 2
jne short loc_0000c1d8  ; jne 0xc1d8
mov eax, dword [esi]
and eax, 0xfe00
cmp eax, 0x2000
je short loc_0000c1ec  ; je 0xc1ec
cmp eax, 0x2200
je short loc_0000c1f9  ; je 0xc1f9
cmp eax, 0x2400
jne short loc_0000c1c9  ; jne 0xc1c9
test byte [ebp - 0x19], 0x40
jmp short loc_0000c1fb  ; jmp 0xc1fb

loc_0000c1c9:
cmp eax, 0x2600
jne short loc_0000c1fd  ; jne 0xc1fd
cmp byte [ebp - 0x19], 0
jns short loc_0000c1fd  ; jns 0xc1fd
jmp short loc_0000c254  ; jmp 0xc254

loc_0000c1d8:
cmp dword [ebp + 0xc], 1
jne short loc_0000c1fd  ; jne 0xc1fd
mov eax, dword [esi]
and eax, 0xfe00
cmp eax, 0x2000
jne short loc_0000c1f2  ; jne 0xc1f2

loc_0000c1ec:
cmp byte [ebp - 0x2c], 0
jmp short loc_0000c1fb  ; jmp 0xc1fb

loc_0000c1f2:
cmp eax, 0x2200
jne short loc_0000c1fd  ; jne 0xc1fd

loc_0000c1f9:
test bl, bl

loc_0000c1fb:
jne short loc_0000c254  ; jne 0xc254

loc_0000c1fd:
push dword [esi + 8]
push dword [esi + 4]
push dword [esi]
push dword [ebp + 0x14]
call fcn_00009d54  ; call 0x9d54
mov edi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000c254  ; je 0xc254
test edi, edi
jns short loc_0000c254  ; jns 0xc254
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000c23c  ; je 0xc23c
push edx
push edi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000c23c:
push eax
push ref_00020664  ; push 0x20664
push 0x178
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000c254:
add esi, 0xc
jmp near loc_0000c198  ; jmp 0xc198

loc_0000c25c:
mov ecx, dword [ebp - 0x28]
mov eax, ecx
and eax, 0xfffffffb
cmp ax, 0x8c4b
je short loc_0000c2a4  ; je 0xc2a4
mov eax, ecx
and eax, 0xfffffff7
cmp ax, 0x8c41
je short loc_0000c2a4  ; je 0xc2a4
mov eax, ecx
add ax, 0x63bf
cmp ax, 6
jbe short loc_0000c2a4  ; jbe 0xc2a4
cmp word [ebp - 0x28], 0x8cc5
je short loc_0000c2a4  ; je 0xc2a4
mov eax, ecx
and eax, 0xfffffffd
cmp ax, 0x8cc1
je short loc_0000c2a4  ; je 0xc2a4
mov eax, ecx
add ax, 0x633f
cmp ax, 0xa
ja loc_0000c471  ; ja 0xc471

loc_0000c2a4:
cmp dword [ebp - 0x24], 0xf
ja short loc_0000c2cf  ; ja 0xc2cf
mov cl, byte [ebp - 0x24]
mov eax, 1
xor esi, esi
mov edx, ref_00027544  ; mov edx, 0x27544
shl eax, cl
and eax, 0x8007
cmovne esi, edx
cmp eax, 1
sbb ebx, ebx
not ebx
and ebx, 4
jmp short loc_0000c2d3  ; jmp 0xc2d3

loc_0000c2cf:
xor esi, esi
xor ebx, ebx

loc_0000c2d3:
add esi, 8
mov word [ebp - 0x28], 0

loc_0000c2dc:
cmp word [ebp - 0x28], bx
je short loc_0000c342  ; je 0xc342
push dword [esi]
push dword [esi - 4]
push dword [esi - 8]
push dword [ebp + 0x14]
call fcn_00009d54  ; call 0x9d54
mov edi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000c339  ; je 0xc339
test edi, edi
jns short loc_0000c339  ; jns 0xc339
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000c321  ; je 0xc321
push eax
push edi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000c321:
push eax
push ref_00020664  ; push 0x20664
push 0x19b
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000c339:
inc word [ebp - 0x28]
add esi, 0xc
jmp short loc_0000c2dc  ; jmp 0xc2dc

loc_0000c342:
mov eax, dword [ebp - 0x20]
cmp eax, 0x22
ja short loc_0000c360  ; ja 0xc360
cmp eax, 0x20
jae short loc_0000c36d  ; jae 0xc36d
cmp eax, 1
jb short loc_0000c385  ; jb 0xc385
cmp eax, 3
jbe short loc_0000c379  ; jbe 0xc379
cmp eax, 0x10
je short loc_0000c379  ; je 0xc379
jmp short loc_0000c385  ; jmp 0xc385

loc_0000c360:
mov eax, dword [ebp - 0x20]
sub eax, 0x41
cmp eax, 2
jbe short loc_0000c38b  ; jbe 0xc38b
jmp short loc_0000c385  ; jmp 0xc385

loc_0000c36d:
mov edx, ref_00027fec  ; mov edx, 0x27fec
mov eax, 4
jmp short loc_0000c395  ; jmp 0xc395

loc_0000c379:
mov edx, ref_00027574  ; mov edx, 0x27574
mov eax, 2
jmp short loc_0000c395  ; jmp 0xc395

loc_0000c385:
xor edx, edx
xor eax, eax
jmp short loc_0000c395  ; jmp 0xc395

loc_0000c38b:
mov edx, ref_000287e8  ; mov edx, 0x287e8
mov eax, 0x4d

loc_0000c395:
imul eax, eax, 0xc
mov esi, edx
add eax, edx
mov dword [ebp - 0x2c], eax
mov al, byte [ebp - 0x19]
mov bl, al
and eax, 0x10
and ebx, 0x20
mov byte [ebp - 0x28], al

loc_0000c3ad:
cmp esi, dword [ebp - 0x2c]
je loc_0000c4fb  ; je 0xc4fb
cmp dword [ebp + 0xc], 2
jne short loc_0000c3ed  ; jne 0xc3ed
mov eax, dword [esi]
and eax, 0xfe00
cmp eax, 0x2000
je short loc_0000c401  ; je 0xc401
cmp eax, 0x2200
je short loc_0000c40e  ; je 0xc40e
cmp eax, 0x2400
jne short loc_0000c3de  ; jne 0xc3de
test byte [ebp - 0x19], 0x40
jmp short loc_0000c410  ; jmp 0xc410

loc_0000c3de:
cmp eax, 0x2600
jne short loc_0000c412  ; jne 0xc412
cmp byte [ebp - 0x19], 0
jns short loc_0000c412  ; jns 0xc412
jmp short loc_0000c469  ; jmp 0xc469

loc_0000c3ed:
cmp dword [ebp + 0xc], 1
jne short loc_0000c412  ; jne 0xc412
mov eax, dword [esi]
and eax, 0xfe00
cmp eax, 0x2000
jne short loc_0000c407  ; jne 0xc407

loc_0000c401:
cmp byte [ebp - 0x28], 0
jmp short loc_0000c410  ; jmp 0xc410

loc_0000c407:
cmp eax, 0x2200
jne short loc_0000c412  ; jne 0xc412

loc_0000c40e:
test bl, bl

loc_0000c410:
jne short loc_0000c469  ; jne 0xc469

loc_0000c412:
push dword [esi + 8]
push dword [esi + 4]
push dword [esi]
push dword [ebp + 0x14]
call fcn_00009d54  ; call 0x9d54
mov edi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000c469  ; je 0xc469
test edi, edi
jns short loc_0000c469  ; jns 0xc469
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000c451  ; je 0xc451
push eax
push edi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000c451:
push eax
push ref_00020664  ; push 0x20664
push 0x1cc
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000c469:
add esi, 0xc
jmp near loc_0000c3ad  ; jmp 0xc3ad

loc_0000c471:
cmp dword [ebp - 0x24], 0xf
ja loc_0000c52d  ; ja 0xc52d
mov cl, byte [ebp - 0x24]
mov eax, 1
xor esi, esi
mov edx, ref_000274fc  ; mov edx, 0x274fc
shl eax, cl
and eax, 0x8007
cmovne esi, edx
cmp eax, 1
sbb ebx, ebx
not ebx
and ebx, 4

loc_0000c49e:
add esi, 8
mov word [ebp - 0x28], 0

loc_0000c4a7:
cmp word [ebp - 0x28], bx
jne loc_0000c536  ; jne 0xc536
cmp dword [ebp - 0x20], 0x10
je loc_0000c5a8  ; je 0xc5a8
mov eax, dword [ebp - 0x20]
jbe loc_0000c599  ; jbe 0xc599
sub eax, 0x20
cmp eax, 2
ja loc_0000c59f  ; ja 0xc59f
mov edx, ref_00027fbc  ; mov edx, 0x27fbc
mov eax, 4

loc_0000c4da:
imul eax, eax, 0xc
mov esi, edx
add eax, edx
mov dword [ebp - 0x2c], eax
mov al, byte [ebp - 0x19]
mov bl, al
and eax, 0x10
and ebx, 0x20
mov byte [ebp - 0x28], al

loc_0000c4f2:
cmp esi, dword [ebp - 0x2c]
jne loc_0000c5b7  ; jne 0xc5b7

loc_0000c4fb:
cmp dword [ebp - 0x24], 0xf
ja loc_0000c672  ; ja 0xc672
mov cl, byte [ebp - 0x24]
mov eax, 1
xor edi, edi
mov edx, ref_00027394  ; mov edx, 0x27394
shl eax, cl
and eax, 0x8007
cmovne edi, edx
cmp eax, 1
sbb eax, eax
not eax
and eax, 0x14
jmp near loc_0000c676  ; jmp 0xc676

loc_0000c52d:
xor esi, esi
xor ebx, ebx
jmp near loc_0000c49e  ; jmp 0xc49e

loc_0000c536:
push dword [esi]
push dword [esi - 4]
push dword [esi - 8]
push dword [ebp + 0x14]
call fcn_00009d54  ; call 0x9d54
mov edi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000c58d  ; je 0xc58d
test edi, edi
jns short loc_0000c58d  ; jns 0xc58d
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000c575  ; je 0xc575
push eax
push edi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000c575:
push edi
push ref_00020664  ; push 0x20664
push 0x1e8
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000c58d:
inc word [ebp - 0x28]
add esi, 0xc
jmp near loc_0000c4a7  ; jmp 0xc4a7

loc_0000c599:
dec eax
cmp eax, 2
jbe short loc_0000c5a8  ; jbe 0xc5a8

loc_0000c59f:
xor edx, edx
xor eax, eax
jmp near loc_0000c4da  ; jmp 0xc4da

loc_0000c5a8:
mov edx, ref_0002752c  ; mov edx, 0x2752c
mov eax, 2
jmp near loc_0000c4da  ; jmp 0xc4da

loc_0000c5b7:
cmp dword [ebp + 0xc], 2
jne short loc_0000c5ee  ; jne 0xc5ee
mov eax, dword [esi]
and eax, 0xfe00
cmp eax, 0x2000
je short loc_0000c602  ; je 0xc602
cmp eax, 0x2200
je short loc_0000c60f  ; je 0xc60f
cmp eax, 0x2400
jne short loc_0000c5df  ; jne 0xc5df
test byte [ebp - 0x19], 0x40
jmp short loc_0000c611  ; jmp 0xc611

loc_0000c5df:
cmp eax, 0x2600
jne short loc_0000c613  ; jne 0xc613
cmp byte [ebp - 0x19], 0
jns short loc_0000c613  ; jns 0xc613
jmp short loc_0000c66a  ; jmp 0xc66a

loc_0000c5ee:
cmp dword [ebp + 0xc], 1
jne short loc_0000c613  ; jne 0xc613
mov eax, dword [esi]
and eax, 0xfe00
cmp eax, 0x2000
jne short loc_0000c608  ; jne 0xc608

loc_0000c602:
cmp byte [ebp - 0x28], 0
jmp short loc_0000c611  ; jmp 0xc611

loc_0000c608:
cmp eax, 0x2200
jne short loc_0000c613  ; jne 0xc613

loc_0000c60f:
test bl, bl

loc_0000c611:
jne short loc_0000c66a  ; jne 0xc66a

loc_0000c613:
push dword [esi + 8]
push dword [esi + 4]
push dword [esi]
push dword [ebp + 0x14]
call fcn_00009d54  ; call 0x9d54
mov edi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000c66a  ; je 0xc66a
test edi, edi
jns short loc_0000c66a  ; jns 0xc66a
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000c652  ; je 0xc652
push ecx
push edi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000c652:
push edx
push ref_00020664  ; push 0x20664
push 0x213
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000c66a:
add esi, 0xc
jmp near loc_0000c4f2  ; jmp 0xc4f2

loc_0000c672:
xor edi, edi
xor eax, eax

loc_0000c676:
movzx eax, ax
imul eax, eax, 0xc
mov word [ebp - 0x24], 0
lea eax, [edi + eax + 8]
mov dword [ebp - 0x30], eax

loc_0000c689:
call fcn_0001c11d  ; call 0x1c11d
mov edx, dword [ebp - 0x24]
movzx eax, al
cmp dx, ax
jae loc_0000c75c  ; jae 0xc75c
movzx eax, dx
xor esi, esi
imul eax, eax, 0x12
add eax, dword [ebp + 8]
mov dword [ebp - 0x28], eax

loc_0000c6ab:
mov eax, dword [ebp - 0x28]
mov word [ebp - 0x34], si
cmp byte [eax + esi*2 + 0x1e4], 1
je short loc_0000c6c8  ; je 0xc6c8

loc_0000c6bc:
inc esi
cmp esi, 3
jne short loc_0000c6ab  ; jne 0xc6ab
inc word [ebp - 0x24]
jmp short loc_0000c689  ; jmp 0xc689

loc_0000c6c8:
lea ebx, [edi + 8]

loc_0000c6cb:
cmp ebx, dword [ebp - 0x30]
je short loc_0000c6bc  ; je 0xc6bc
mov eax, dword [ebp - 0x24]
cmp word [ebx - 8], ax
jne short loc_0000c754  ; jne 0xc754
mov eax, dword [ebp - 0x34]
cmp word [ebx - 6], ax
jne short loc_0000c754  ; jne 0xc754
mov eax, dword [ebp - 0x28]
mov edx, dword [ebx]
movzx ecx, byte [eax + esi*2 + 0x1e3]
mov eax, edx
not eax
imul ecx, ecx, 0x1010101
and eax, ecx
push eax
push edx
push dword [ebx - 4]
push dword [ebp + 0x14]
call fcn_00009d54  ; call 0x9d54
mov dword [ebp - 0x2c], eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000c754  ; je 0xc754
cmp dword [ebp - 0x2c], 0
jns short loc_0000c754  ; jns 0xc754
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000c73c  ; je 0xc73c
push eax
push dword [ebp - 0x2c]
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000c73c:
push eax
push ref_00020664  ; push 0x20664
push 0x234
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000c754:
add ebx, 0xc
jmp near loc_0000c6cb  ; jmp 0xc6cb

loc_0000c75c:
mov eax, dword [ebp - 0x20]
cmp eax, 0x22
ja short loc_0000c77a  ; ja 0xc77a
cmp eax, 0x20
jae short loc_0000c78c  ; jae 0xc78c
cmp eax, 1
jb short loc_0000c79f  ; jb 0xc79f
cmp eax, 3
jbe short loc_0000c793  ; jbe 0xc793
cmp eax, 0x10
je short loc_0000c793  ; je 0xc793
jmp short loc_0000c79f  ; jmp 0xc79f

loc_0000c77a:
mov eax, dword [ebp - 0x20]
mov esi, ref_000286b0  ; mov esi, 0x286b0
sub eax, 0x41
cmp eax, 2
jbe short loc_0000c7a5  ; jbe 0xc7a5
jmp short loc_0000c79f  ; jmp 0xc79f

loc_0000c78c:
mov esi, ref_00027ecc  ; mov esi, 0x27ecc
jmp short loc_0000c7a5  ; jmp 0xc7a5

loc_0000c793:
mov esi, ref_00027484  ; mov esi, 0x27484
mov eax, 0xa
jmp short loc_0000c7aa  ; jmp 0xc7aa

loc_0000c79f:
xor esi, esi
xor eax, eax
jmp short loc_0000c7aa  ; jmp 0xc7aa

loc_0000c7a5:
mov eax, 0x14

loc_0000c7aa:
imul eax, eax, 0xc
mov cl, byte [ebp - 0x19]
mov word [ebp - 0x24], 0
lea eax, [esi + eax + 4]
mov dword [ebp - 0x34], eax
mov al, cl
and eax, 0x20
mov byte [ebp - 0x2c], al
mov al, cl
and eax, 0x10
mov byte [ebp - 0x30], al

loc_0000c7cd:
call fcn_0001c11d  ; call 0x1c11d
mov ecx, dword [ebp - 0x24]
movzx eax, al
cmp cx, ax
jae loc_0000c912  ; jae 0xc912
movzx eax, cx
imul eax, eax, 0x12
add eax, dword [ebp + 8]
mov dword [ebp - 0x20], 0
mov dword [ebp - 0x28], eax

loc_0000c7f4:
mov eax, dword [ebp - 0x20]
mov edx, dword [ebp - 0x28]
mov word [ebp - 0x1c], ax
cmp byte [edx + eax*2 + 0x1e4], 1
je short loc_0000c817  ; je 0xc817

loc_0000c808:
inc dword [ebp - 0x20]
cmp dword [ebp - 0x20], 3
jne short loc_0000c7f4  ; jne 0xc7f4
inc word [ebp - 0x24]
jmp short loc_0000c7cd  ; jmp 0xc7cd

loc_0000c817:
lea ebx, [esi + 4]

loc_0000c81a:
cmp ebx, dword [ebp - 0x34]
je short loc_0000c808  ; je 0xc808
mov eax, dword [ebp - 0x24]
cmp word [ebx - 4], ax
jne loc_0000c90a  ; jne 0xc90a
mov eax, dword [ebp - 0x1c]
cmp word [ebx - 2], ax
jne loc_0000c90a  ; jne 0xc90a
cmp dword [ebp + 0xc], 2
jne short loc_0000c873  ; jne 0xc873
mov eax, dword [ebx]
and eax, 0xfe00
cmp eax, 0x2000
je short loc_0000c887  ; je 0xc887
cmp eax, 0x2200
je short loc_0000c894  ; je 0xc894
cmp eax, 0x2400
jne short loc_0000c861  ; jne 0xc861
test byte [ebp - 0x19], 0x40
jmp short loc_0000c898  ; jmp 0xc898

loc_0000c861:
cmp eax, 0x2600
jne short loc_0000c89a  ; jne 0xc89a
cmp byte [ebp - 0x19], 0
jns short loc_0000c89a  ; jns 0xc89a
jmp near loc_0000c90a  ; jmp 0xc90a

loc_0000c873:
cmp dword [ebp + 0xc], 1
jne short loc_0000c89a  ; jne 0xc89a
mov eax, dword [ebx]
and eax, 0xfe00
cmp eax, 0x2000
jne short loc_0000c88d  ; jne 0xc88d

loc_0000c887:
cmp byte [ebp - 0x30], 0
jmp short loc_0000c898  ; jmp 0xc898

loc_0000c88d:
cmp eax, 0x2200
jne short loc_0000c89a  ; jne 0xc89a

loc_0000c894:
cmp byte [ebp - 0x2c], 0

loc_0000c898:
jne short loc_0000c90a  ; jne 0xc90a

loc_0000c89a:
mov eax, dword [ebp - 0x28]
mov ecx, dword [ebp - 0x20]
movzx edi, byte [eax + ecx*2 + 0x1e3]
mov ecx, dword [ebx + 4]
imul edi, edi, 0x1010101
mov eax, ecx
not eax
and eax, edi
push eax
push ecx
push dword [ebx]
push dword [ebp + 0x14]
call fcn_00009d54  ; call 0x9d54
mov edi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000c90a  ; je 0xc90a
test edi, edi
jns short loc_0000c90a  ; jns 0xc90a
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000c8f2  ; je 0xc8f2
push eax
push edi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000c8f2:
push eax
push ref_00020664  ; push 0x20664
push 0x271
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000c90a:
add ebx, 0xc
jmp near loc_0000c81a  ; jmp 0xc81a

loc_0000c912:
mov eax, dword [ebp + 8]
xor ebx, ebx
cmp byte [eax], 8
ja short loc_0000c923  ; ja 0xc923

loc_0000c91c:
xor eax, eax
jmp near loc_0000cb86  ; jmp 0xcb86

loc_0000c923:
mov cl, byte [ebp - 0x19]
mov al, cl
and eax, 0x10
mov byte [ebp - 0x20], al
mov al, cl
shr al, 7
mov byte [ebp - 0x28], al

loc_0000c936:
call fcn_0001c11d  ; call 0x1c11d
movzx eax, al
cmp bx, ax
jae short loc_0000c91c  ; jae 0xc91c
cmp dword [ebp + 0xc], 1
jne short loc_0000c971  ; jne 0xc971
cmp bx, 4
jne short loc_0000c955  ; jne 0xc955
cmp byte [ebp - 0x20], 0
jmp short loc_0000c95f  ; jmp 0xc95f

loc_0000c955:
cmp bx, 5
jne short loc_0000c965  ; jne 0xc965
test byte [ebp - 0x19], 0x20

loc_0000c95f:
jne loc_0000cb80  ; jne 0xcb80

loc_0000c965:
movzx eax, bx
mov edi, dword [eax*4 + ref_00020390]  ; mov edi, dword [eax*4 + 0x20390]
jmp short loc_0000c9b2  ; jmp 0xc9b2

loc_0000c971:
test bx, bx
jne short loc_0000c980  ; jne 0xc980
cmp byte [ebp - 0x28], 0
jne loc_0000cb80  ; jne 0xcb80

loc_0000c980:
cmp bx, 1
jne short loc_0000c98c  ; jne 0xc98c
test byte [ebp - 0x19], 0x40
jmp short loc_0000c9a2  ; jmp 0xc9a2

loc_0000c98c:
cmp bx, 2
jne short loc_0000c998  ; jne 0xc998
test byte [ebp - 0x19], 0x20
jmp short loc_0000c9a2  ; jmp 0xc9a2

loc_0000c998:
cmp bx, 3
jne short loc_0000c9a8  ; jne 0xc9a8
cmp byte [ebp - 0x20], 0

loc_0000c9a2:
jne loc_0000cb80  ; jne 0xcb80

loc_0000c9a8:
movzx eax, bx
mov edi, dword [eax*4 + ref_00020378]  ; mov edi, dword [eax*4 + 0x20378]

loc_0000c9b2:
movzx esi, bx
imul eax, esi, 0x12
add eax, dword [ebp + 8]
test byte [eax + 0x1ed], 1
je short loc_0000ca32  ; je 0xca32
movzx eax, byte [eax + 0x1e9]
cmp al, 0x80
jbe short loc_0000ca17  ; jbe 0xca17
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000c9ec  ; je 0xc9ec
push eax
push eax
push ref_0002234a  ; push 0x2234a
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000c9ec:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0000ca0d  ; je 0xca0d
push eax
push ref_000221f1  ; push 0x221f1
push 0x295

loc_0000ca00:
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000ca0d:
mov eax, 0x80000002
jmp near loc_0000cb86  ; jmp 0xcb86

loc_0000ca17:
shl eax, 0x10
push eax
push 0xff00ffff
lea eax, [edi + 0x88]
push eax
push dword [ebp + 0x14]
call fcn_00009d54  ; call 0x9d54
add esp, 0x10

loc_0000ca32:
imul eax, esi, 0x12
add eax, dword [ebp + 8]
test byte [eax + 0x1ed], 2
je short loc_0000ca9a  ; je 0xca9a
movzx eax, byte [eax + 0x1ea]
cmp al, 0x80
jbe short loc_0000ca7f  ; jbe 0xca7f
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ca69  ; je 0xca69
push edi
push edi
push ref_00022378  ; push 0x22378
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ca69:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0000ca0d  ; je 0xca0d
push esi
push ref_000221f1  ; push 0x221f1
push 0x2a5
jmp short loc_0000ca00  ; jmp 0xca00

loc_0000ca7f:
shl eax, 0x10
push eax
push 0xff00ffff
lea eax, [edi + 0x8c]
push eax
push dword [ebp + 0x14]
call fcn_00009d54  ; call 0x9d54
add esp, 0x10

loc_0000ca9a:
imul eax, esi, 0x12
add eax, dword [ebp + 8]
test byte [eax + 0x1ed], 4
je short loc_0000cafc  ; je 0xcafc
movzx eax, byte [eax + 0x1eb]
lea edx, [eax - 0x39]
cmp dl, 0x47
jbe short loc_0000caf2  ; jbe 0xcaf2
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000cad5  ; je 0xcad5
push ebx
push ebx
push ref_000223a7  ; push 0x223a7
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000cad5:
call fcn_000153f0  ; call 0x153f0
test al, al
je loc_0000ca0d  ; je 0xca0d
push ecx
push ref_000221f1  ; push 0x221f1
push 0x2b9
jmp near loc_0000ca00  ; jmp 0xca00

loc_0000caf2:
shl eax, 8
mov edx, 0xffff00ff
jmp short loc_0000cb01  ; jmp 0xcb01

loc_0000cafc:
xor eax, eax
or edx, 0xffffffff

loc_0000cb01:
imul esi, esi, 0x12
add esi, dword [ebp + 8]
test byte [esi + 0x1ed], 8
je short loc_0000cb67  ; je 0xcb67
mov cl, byte [esi + 0x1ec]
lea esi, [ecx - 0x45]
mov byte [ebp - 0x24], cl
mov ecx, esi
cmp cl, 0x3b
jbe short loc_0000cb5d  ; jbe 0xcb5d
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000cb40  ; je 0xcb40
push edx
push edx
push ref_000223d0  ; push 0x223d0
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000cb40:
call fcn_000153f0  ; call 0x153f0
test al, al
je loc_0000ca0d  ; je 0xca0d
push eax
push ref_000221f1  ; push 0x221f1
push 0x2c6
jmp near loc_0000ca00  ; jmp 0xca00

loc_0000cb5d:
movzx ecx, byte [ebp - 0x24]
xor dl, dl
or eax, ecx
jmp short loc_0000cb6c  ; jmp 0xcb6c

loc_0000cb67:
cmp edx, 0xffffffff
je short loc_0000cb80  ; je 0xcb80

loc_0000cb6c:
push eax
add edi, 0x90
push edx
push edi
push dword [ebp + 0x14]
call fcn_00009d54  ; call 0x9d54
add esp, 0x10

loc_0000cb80:
inc ebx
jmp near loc_0000c936  ; jmp 0xc936

loc_0000cb86:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000cb8e:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x2c
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000cbb1  ; je 0xcbb1
push eax
push eax
push ref_000223fa  ; push 0x223fa
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000cbb1:
call fcn_0001bef7  ; call 0x1bef7
mov dword [ebp - 0x2c], eax
push eax
push 0
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
mov ebx, eax
lea eax, [eax + 0xf0]
add ebx, 2
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov dword [esp], ebx
mov dword [ebp - 0x30], eax
and dword [ebp - 0x30], 0xffffc000
call fcn_00017cfe  ; call 0x17cfe
add esp, 0xc
push 2
push 0x1f
push 0
mov ebx, eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 0
push 0x1c
push 0
mov esi, eax
call fcn_00016bd6  ; call 0x16bd6
lea edi, [esi + 0x92]
mov dword [esp], edi
mov dword [ebp - 0x34], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 0xf
setne byte [ebp - 0x35]
cmp dword [ebp - 0x2c], 1
jne loc_0000ce71  ; jne 0xce71
sub esp, 0xc
push edi
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 0x30
je short loc_0000cca6  ; je 0xcca6

loc_0000cc3e:
push eax
lea eax, [ebp - 0x1c]
push eax
push 0xea000aac
push dword [ebp - 0x30]
call fcn_00009cab  ; call 0x9cab
mov eax, dword [ebp - 0x1c]
add esp, 0x10
and eax, 0x30
cmp eax, 0x20
je loc_0000ce14  ; je 0xce14
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000cc7f  ; je 0xcc7f
push eax
push eax
push ref_00022411  ; push 0x22411
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000cc7f:
call fcn_000153f0  ; call 0x153f0
test al, al
je loc_0000ce14  ; je 0xce14
push eax
push ref_00024b36  ; push 0x24b36
push 0x32e
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
jmp near loc_0000ce11  ; jmp 0xce11

loc_0000cca6:
cmp byte [ebp - 0x35], 1
je short loc_0000cc3e  ; je 0xcc3e
push eax
push 0x60

loc_0000ccaf:
push 0x3f
lea eax, [esi + 0x90]
push eax
call fcn_000186c6  ; call 0x186c6
add esp, 0x10

loc_0000ccc0:
push eax
push 0x183
push 0xfffffe00
lea eax, [esi + 0x94]
push eax
lea esi, [esi + 0x98]
mov dword [ebp - 0x1c], 0xfffffe00
call fcn_00018aa4  ; call 0x18aa4
pop eax
pop edx
push 0x8000
push edi
call fcn_00018863  ; call 0x18863
movzx eax, bx
mov dword [esp], eax
push dword [ebp - 0x30]
push dword [ebp - 0x34]
push dword [ebp - 0x2c]
push dword [ebp + 8]
call fcn_0000c05a  ; call 0xc05a
mov eax, ebx
add esp, 0x20
and eax, 0xfffffffd
cmp ax, 0x8c44
je loc_0000ce30  ; je 0xce30
lea eax, [ebx + 0x73b2]
cmp ax, 2
jbe loc_0000ce30  ; jbe 0xce30
cmp bx, 0x8c5c
je loc_0000ce30  ; je 0xce30
lea eax, [ebx + 0x73b7]
cmp ax, 3
jbe loc_0000ce30  ; jbe 0xce30
lea eax, [ebx + 0x73bf]
cmp ax, 1
jbe loc_0000ce30  ; jbe 0xce30
lea eax, [ebx + 0x63bf]
cmp ax, 6
jbe loc_0000ce30  ; jbe 0xce30
lea eax, [ebx + 0x733f]
cmp ax, 5
jbe loc_0000ce30  ; jbe 0xce30
add bx, 0x633f
cmp bx, 0xa
jbe loc_0000ce30  ; jbe 0xce30

loc_0000cd84:
push ebx
push ebx
push 0x80000
push esi
call fcn_00018a50  ; call 0x18a50
add esp, 0xc
push 0x200
push 0xffffe27f
push esi
mov dword [ebp - 0x1c], 0xffffe27f
call fcn_00018aa4  ; call 0x18aa4
pop eax
pop edx
push 0x100000
push esi
call fcn_00018a50  ; call 0x18a50
add esp, 0xc
push 0x20
push 0xffffffffffffff9f
push esi
call fcn_00018aa4  ; call 0x18aa4
pop ecx
pop ebx
push 0x40000
push esi
call fcn_00018a50  ; call 0x18a50
mov eax, dword [ebp - 0x34]
add eax, 0x410
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
cmp dword [ebp - 0x2c], 1
jne short loc_0000ce45  ; jne 0xce45
mov dl, al
and edx, 0x10
cmp dl, 1
sbb edx, edx
and edx, 0x10
add edx, 0xf
mov cl, dl
or ecx, 0x20
test al, 0x20

loc_0000ce02:
cmove edx, ecx

loc_0000ce05:
push ecx
movzx edx, dl
push ecx
push edx
push edi
call fcn_0001866c  ; call 0x1866c

loc_0000ce11:
add esp, 0x10

loc_0000ce14:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ce89  ; je 0xce89
push eax
push eax
push ref_0002245f  ; push 0x2245f
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp short loc_0000ce89  ; jmp 0xce89

loc_0000ce30:
push eax
push eax
push 0x400000
push esi
call fcn_00018a50  ; call 0x18a50
add esp, 0x10
jmp near loc_0000cd84  ; jmp 0xcd84

loc_0000ce45:
xor edx, edx
cmp dword [ebp - 0x2c], 2
jne short loc_0000ce05  ; jne 0xce05
mov dl, al
not edx
shr dl, 7
mov cl, dl
or ecx, 2
test al, 0x40
cmove edx, ecx
mov cl, dl
or ecx, 4
test al, 0x20
cmove edx, ecx
mov cl, dl
or ecx, 8
test al, 0x10
jmp short loc_0000ce02  ; jmp 0xce02

loc_0000ce71:
cmp byte [ebp - 0x35], 1
je short loc_0000ce14  ; je 0xce14
cmp dword [ebp - 0x2c], 2
jne loc_0000ccc0  ; jne 0xccc0
push ecx
push 0x40
jmp near loc_0000ccaf  ; jmp 0xccaf

loc_0000ce89:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000ce93:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x38
mov ebx, dword [ebp + 8]
mov eax, dword [ebx + 4]
add eax, 0x3414
push eax
call fcn_00017cc7  ; call 0x17cc7
mov esi, eax
pop eax
push dword [ebx + 4]
call fcn_0001bdcc  ; call 0x1bdcc
movzx edx, byte [ebx + 0x37e]
add esp, 0x10
mov edi, eax
mov eax, esi
shr al, 5
xor eax, 1
and eax, 1
cmp edx, eax
je loc_0000d0b7  ; je 0xd0b7
lea eax, [ebp - 0x1c]
push eax
push 0
push 0
push ref_0002908c  ; push 0x2908c
call fcn_00019699  ; call 0x19699
mov esi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000cf30  ; je 0xcf30
test esi, esi
jns short loc_0000cf30  ; jns 0xcf30
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000cf18  ; je 0xcf18
push eax
push esi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000cf18:
push esi
push ref_00020664  ; push 0x20664
push 0x467
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000cf30:
mov eax, dword [ebx + 4]
sub esp, 0xc
add eax, 0x3420
push eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, al
jns short loc_0000cf71  ; jns 0xcf71
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000cf65  ; je 0xcf65
push ecx
push ecx
push ref_00022474  ; push 0x22474
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000cf65:
push edx
mov eax, dword [ebp - 0x1c]
push edx
push 4
jmp near loc_0000d0b1  ; jmp 0xd0b1

loc_0000cf71:
xor esi, esi
mov eax, edi
cmp byte [ebx + 0x37e], 0
je short loc_0000cfa8  ; je 0xcfa8
dec al
jne loc_0000d04e  ; jne 0xd04e
push eax
mov esi, 1
push eax
push 0xdf
mov eax, dword [ebx + 4]
add eax, 0x3414
push eax
call fcn_00018699  ; call 0x18699
add esp, 0x10
jmp near loc_0000d04e  ; jmp 0xd04e

loc_0000cfa8:
dec al
jne loc_0000d039  ; jne 0xd039
push eax
push 0
push 0x19
movzx eax, byte [ebx + 1]
push eax
call fcn_00016bd6  ; call 0x16bd6
lea edi, [eax + 0x10]
mov esi, eax
mov dword [esp], edi
call fcn_00017d8a  ; call 0x17d8a
mov dword [ebp - 0x34], eax
pop eax
pop edx
push dword [ebx + 0x1a]
push edi
call fcn_00017dcb  ; call 0x17dcb
lea eax, [esi + 4]
mov dword [esp], eax
mov esi, eax
call fcn_00017cfe  ; call 0x17cfe
pop ecx
mov dword [ebp - 0x2c], esi
mov word [ebp - 0x2e], ax
pop eax
push 2
push esi
call fcn_00018863  ; call 0x18863
mov dword [esp], edi
call fcn_00017d8a  ; call 0x17d8a
and eax, 0xffff8000
lea edx, [eax + 0x5b54]
mov dword [esp], edx
call fcn_00017cfe  ; call 0x17cfe
mov ecx, eax
pop eax
movzx eax, word [ebp - 0x2e]
shr cx, 0xf
pop edx
mov esi, ecx
push eax
push dword [ebp - 0x2c]
call fcn_00017d40  ; call 0x17d40
pop ecx
mov ecx, dword [ebp - 0x34]
pop eax
push ecx
push edi
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10

loc_0000d039:
push edi
push edi
push 0x20
mov eax, dword [ebx + 4]
add eax, 0x3414
push eax
call fcn_0001866c  ; call 0x1866c
add esp, 0x10

loc_0000d04e:
mov eax, dword [ebx + 4]
sub esp, 0xc
add eax, 0x3414
push eax
call fcn_00017cc7  ; call 0x17cc7
mov eax, esi
add esp, 0x10
test al, al
je short loc_0000d0b7  ; je 0xd0b7
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000d085  ; je 0xd085
push esi
push esi
push ref_000224c8  ; push 0x224c8
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000d085:
mov eax, dword [ebx + 4]
sub esp, 0xc
add eax, 0x3428
push eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
mov edx, 3
test al, 2
jne short loc_0000d0ab  ; jne 0xd0ab
cmp byte [ebx + 0x11], 1
sbb edx, edx
add edx, 5

loc_0000d0ab:
mov eax, dword [ebp - 0x1c]
push ecx
push ecx
push edx

loc_0000d0b1:
push eax
call dword [eax]  ; ucall
add esp, 0x10

loc_0000d0b7:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000d0c1:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x3c
mov ebx, dword [ebp + 8]
mov byte [ebp - 0x1c], 0x1d
mov byte [ebp - 0x1b], 0
mov byte [ebp - 0x1a], 0x1a
mov byte [ebp - 0x19], 0
call fcn_0001bef7  ; call 0x1bef7
push edi
push 0
push 0x1f
push 0
mov esi, eax
mov dword [ebp - 0x34], eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 2
push 0x1f
mov dword [ebp - 0x38], eax
movzx eax, byte [ebx + 1]
push eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0x10
dec esi
mov dword [ebp - 0x30], 0
mov edi, eax
jne short loc_0000d128  ; jne 0xd128
push ecx
push 5
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0x10
mov dword [ebp - 0x30], eax

loc_0000d128:
push eax
push 0
push 0x1c
push 0
call fcn_00016bd6  ; call 0x16bd6
mov esi, eax
mov eax, dword [ebp - 0x38]
add eax, 0xf0
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov dword [ebp - 0x40], eax
pop eax
mov eax, dword [ebp - 0x38]
pop edx
add eax, 0xac
push 0xffefffff
push eax
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10
mov byte [ebp - 0x3c], 0
mov byte [ebp - 0x29], 0

loc_0000d169:
call fcn_0001c0fb  ; call 0x1c0fb
cmp byte [ebp - 0x29], al
jae short loc_0000d1f0  ; jae 0xd1f0
movzx edx, byte [ebp - 0x29]
push eax
push edx
push 0x1c
movzx eax, byte [ebx + 1]
mov dword [ebp - 0x48], edx
push eax
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], eax
mov dword [ebp - 0x44], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
je short loc_0000d1e8  ; je 0xd1e8
mov edx, dword [ebp - 0x48]
mov ecx, dword [ebp - 0x44]
imul edx, edx, 0x2c
cmp byte [ebx + edx + 0x4e], 1
setne dl
add ecx, 0x70
sub esp, 0xc
movzx edx, dl
inc edx
push ecx
mov dword [ebp - 0x48], edx
mov dword [ebp - 0x44], ecx
call fcn_00017cfe  ; call 0x17cfe
mov edx, dword [ebp - 0x48]
add esp, 0x10
movzx edx, dx
and eax, 0xf
cmp eax, edx
je short loc_0000d1e8  ; je 0xd1e8
mov ecx, dword [ebp - 0x44]
push eax
push edx
push 0xfff0
push ecx
call fcn_000188bd  ; call 0x188bd
add esp, 0x10
mov byte [ebp - 0x3c], 1

loc_0000d1e8:
inc byte [ebp - 0x29]
jmp near loc_0000d169  ; jmp 0xd169

loc_0000d1f0:
cmp byte [ebp - 0x3c], 0
je short loc_0000d206  ; je 0xd206
sub esp, 0xc
push 0x186a0
call fcn_0001ba3f  ; call 0x1ba3f
add esp, 0x10

loc_0000d206:
push eax
push 0x80
push 0x9f
lea eax, [esi + 0xf4]
push eax
call fcn_000186c6  ; call 0x186c6
add esp, 0x10
mov byte [ebp - 0x29], 0

loc_0000d224:
call fcn_0001c181  ; call 0x1c181
cmp byte [ebp - 0x29], al
jae short loc_0000d274  ; jae 0xd274
movzx eax, byte [ebp - 0x29]
push ecx
movzx edx, byte [ebp + eax*2 - 0x1b]
movzx eax, byte [ebp + eax*2 - 0x1c]
push edx
push eax
movzx eax, byte [ebx + 1]
push eax
call fcn_00016bd6  ; call 0x16bd6
lea edx, [eax + 0x88]
mov dword [esp], edx
mov dword [ebp - 0x3c], edx
call fcn_00017d8a  ; call 0x17d8a
pop edx
mov edx, dword [ebp - 0x3c]
pop ecx
and eax, 0xfffffffb
push eax
push edx
mov dword [ebp - 0x20], eax
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10
inc byte [ebp - 0x29]
jmp short loc_0000d224  ; jmp 0xd224

loc_0000d274:
cmp byte [ebx + 0x364], 1
jne short loc_0000d2c3  ; jne 0xd2c3
push eax
mov eax, dword [ebx + 0x368]
shr eax, 0xc
and eax, 3
or al, 0x80
push eax
push 0xfffffffffffffffc
mov eax, dword [ebx + 4]
add eax, 0x3404
push eax
call fcn_00018aa4  ; call 0x18aa4
mov eax, dword [ebx + 4]
add eax, 0x3404
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
pop eax
pop edx
push 1
mov eax, dword [ebx + 0x368]
add eax, 0x10
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10

loc_0000d2c3:
cmp byte [ebx + 0xc], 0
mov eax, dword [ebx + 4]
jne short loc_0000d2dd  ; jne 0xd2dd
push ecx
add eax, 0x3410
push ecx
push 0xfffffffffffffffb
push eax
call fcn_00018a7a  ; call 0x18a7a
jmp short loc_0000d2ec  ; jmp 0xd2ec

loc_0000d2dd:
push edx
add eax, 0x3410
push edx
push 4
push eax
call fcn_00018a50  ; call 0x18a50

loc_0000d2ec:
mov eax, dword [ebx + 4]
add esp, 0x10
sub esp, 0xc
add eax, 0x3410
push eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
cmp dword [ebp - 0x34], 1
jne loc_0000d3d7  ; jne 0xd3d7
cmp dword [ebx + 0x1db], 0
jne loc_0000d3b0  ; jne 0xd3b0
push eax
add esi, 0x410
push 0x70
push 0xffffff00
lea eax, [edi + 0x34]
push eax
call fcn_00018aa4  ; call 0x18aa4
pop eax
pop edx
lea eax, [edi + 0x70]
push 0xffff00ff
push eax
call fcn_00018a7a  ; call 0x18a7a
pop ecx
pop eax
lea eax, [edi + 0x90]
push 0x1f
push eax
call fcn_00018699  ; call 0x18699
mov dword [esp], esi
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
and eax, 0x30
cmp al, 0x30
je short loc_0000d3b0  ; je 0xd3b0
sub esp, 0xc
push esi
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 0x10
jne short loc_0000d388  ; jne 0xd388
push eax
push eax
mov eax, dword [ebp - 0x30]
push 1
add eax, 0x92
push eax
call fcn_0001866c  ; call 0x1866c
add esp, 0x10

loc_0000d388:
sub esp, 0xc
push esi
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 0x20
jne loc_0000d422  ; jne 0xd422
mov eax, dword [ebp - 0x30]
push esi
push esi
push 2
add eax, 0x92
push eax
call fcn_0001866c  ; call 0x1866c
jmp short loc_0000d41f  ; jmp 0xd41f

loc_0000d3b0:
push ecx
push ecx
push 0x2000000
mov eax, dword [ebx + 4]
add eax, 0x3418
push eax
call fcn_00018a50  ; call 0x18a50
mov eax, dword [ebx + 4]
add eax, 0x3418
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
jmp short loc_0000d41f  ; jmp 0xd41f

loc_0000d3d7:
cmp dword [ebp - 0x34], 2
jne short loc_0000d422  ; jne 0xd422
cmp dword [ebx + 0x1db], 3
jne short loc_0000d422  ; jne 0xd422
push eax
push eax
push 0x3f
lea eax, [edi + 0x90]
push eax
call fcn_00018699  ; call 0x18699
pop eax
pop edx
lea eax, [edi + 0xa0]
push 0
push eax
call fcn_00017ce1  ; call 0x17ce1
add esp, 0xc
push 0x8000
push 0xffff7fff
lea eax, [edi + 0xa4]
push eax
call fcn_00018aa4  ; call 0x18aa4

loc_0000d41f:
add esp, 0x10

loc_0000d422:
cmp dword [ebx + 0x1db], 2
jne short loc_0000d453  ; jne 0xd453
mov eax, dword [ebp - 0x38]
sub esp, 0xc
add eax, 2
push eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0xc
push 0x80
push 0x3f
lea eax, [edi + 0x90]
push eax
call fcn_000186c6  ; call 0x186c6
add esp, 0x10

loc_0000d453:
cmp dword [ebp - 0x34], 2
jne loc_0000d551  ; jne 0xd551
mov ebx, dword [ebp - 0x40]
push esi
lea esi, [ebp - 0x20]
push esi
push 0xed00015c
and ebx, 0xffffc000
push ebx
call fcn_00009cab  ; call 0x9cab
add esp, 0x10
mov edi, eax
test eax, eax
jns short loc_0000d49b  ; jns 0xd49b
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000d4b7  ; je 0xd4b7
push ecx
push edi
push ref_000224fd  ; push 0x224fd
push 0x80000000
call fcn_000153f7  ; call 0x153f7
jmp short loc_0000d4b4  ; jmp 0xd4b4

loc_0000d49b:
mov eax, dword [ebp - 0x20]
push edx
and ah, 0xf7
or ah, 0x37
push eax
push 0xed00015c
push ebx
mov dword [ebp - 0x20], eax
call fcn_00009c07  ; call 0x9c07

loc_0000d4b4:
add esp, 0x10

loc_0000d4b7:
push edi
push esi
push 0xed000118
push ebx
call fcn_00009cab  ; call 0x9cab
add esp, 0x10
mov edi, eax
test eax, eax
jns short loc_0000d4e9  ; jns 0xd4e9
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000d504  ; je 0xd504
push ecx
push edi
push ref_00022520  ; push 0x22520
push 0x80000000
call fcn_000153f7  ; call 0x153f7
jmp short loc_0000d501  ; jmp 0xd501

loc_0000d4e9:
mov eax, dword [ebp - 0x20]
push edx
or eax, 0xc00000
push eax
push 0xed000118
push ebx
mov dword [ebp - 0x20], eax
call fcn_00009c07  ; call 0x9c07

loc_0000d501:
add esp, 0x10

loc_0000d504:
push edi
push esi
push 0xed000120
push ebx
call fcn_00009cab  ; call 0x9cab
add esp, 0x10
mov esi, eax
test eax, eax
jns short loc_0000d536  ; jns 0xd536
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000d551  ; je 0xd551
push ecx
push esi
push ref_00022543  ; push 0x22543
push 0x80000000
call fcn_000153f7  ; call 0x153f7
jmp short loc_0000d54e  ; jmp 0xd54e

loc_0000d536:
mov eax, dword [ebp - 0x20]
push edx
or eax, 0x240000
push eax
push 0xed000120
push ebx
mov dword [ebp - 0x20], eax
call fcn_00009c07  ; call 0x9c07

loc_0000d54e:
add esp, 0x10

loc_0000d551:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000d55b:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x20
mov ebx, dword [ebp + 8]
push 6
push 0x1f
movzx eax, byte [ebx + 1]
push eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 0
push 0
push 0
mov edi, eax
call fcn_00016bd6  ; call 0x16bd6
mov esi, dword [ebx + 0x1a]
pop ecx
pop eax
mov dword [ebp - 0x1c], edi
lea edi, [edi + 0x40]
push esi
push edi
call fcn_00017dcb  ; call 0x17dcb
pop eax
mov eax, dword [ebp - 0x1c]
pop edx
add eax, 0x44
push 0
push eax
call fcn_00017dcb  ; call 0x17dcb
pop ecx
pop eax
push 1
push edi
call fcn_00018a50  ; call 0x18a50
call fcn_0001bef7  ; call 0x1bef7
add esp, 0x10
cmp eax, 2
lea eax, [esi + 0x10]
jne short loc_0000d5ca  ; jne 0xd5ca
push edx
push edx
push 0x14a
jmp short loc_0000d5d1  ; jmp 0xd5d1

loc_0000d5ca:
push ecx
push ecx
push 0x154

loc_0000d5d1:
push eax
call fcn_00017d40  ; call 0x17d40
add esp, 0x10
push eax
push eax
push 0xff
lea eax, [esi + 6]
push eax
call fcn_00017ce1  ; call 0x17ce1
pop eax
pop edx
lea eax, [esi + 0x80]
push 0xff
push eax
call fcn_00017ce1  ; call 0x17ce1
pop ecx
pop eax
lea eax, [esi + 0x84]
push 0
push eax
call fcn_00017ce1  ; call 0x17ce1
pop eax
pop edx
lea eax, [esi + 0x82]
push 0
push eax
call fcn_00017ce1  ; call 0x17ce1
add esp, 0xc
push 0x403c
push 0xffff8003
mov eax, dword [ebx + 4]
add eax, 0x38b0
push eax
call fcn_00018aa4  ; call 0x18aa4
mov eax, dword [ebx + 4]
add eax, 0x38b4
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test ah, 0x40
je short loc_0000d660  ; je 0xd660
push eax
add esi, 0xa
push eax
push 1
push esi
call fcn_00017ce1  ; call 0x17ce1
add esp, 0x10

loc_0000d660:
push ecx
push ecx
push 0xfffffffffffffffe
push edi
call fcn_00018a7a  ; call 0x18a7a
pop esi
pop eax
push 0
push edi
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10
test byte [ebx + 0x426], 1
je loc_0000d70d  ; je 0xd70d
mov cl, byte [ebx + 0x432]
mov dl, byte [ebx + 0x436]
mov eax, ecx
shl eax, 0x1e
and eax, 0x40000000
mov esi, eax
or esi, 0x80000000
test dl, 1
cmovne eax, esi
mov esi, eax
or esi, 0x4000
and cl, 2
cmovne eax, esi
mov ecx, eax
or ch, 0x80
and dl, 2
cmovne eax, ecx
push edx
push eax
push 0xfff0fff
mov eax, dword [ebx + 4]
add eax, 0x33d4
push eax
call fcn_00018aa4  ; call 0x18aa4
mov al, byte [ebx + 0x432]
add esp, 0xc
shl eax, 8
and eax, 0x400
mov edx, eax
or dh, 8
test byte [ebx + 0x436], 4
cmovne eax, edx
push eax
push 0xfffff0ff
mov eax, dword [ebx + 4]
add eax, 0x33c8
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_0000d70d:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000d717:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov edi, dword [ebp + 8]
mov eax, dword [edi + 4]
mov bl, byte [edi + 0x361]
lea esi, [eax + 0x31fe]
push esi
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
cmp bl, al
je short loc_0000d765  ; je 0xd765
push ebx
push ebx
push 0xfeff
push esi
call fcn_00018890  ; call 0x18890
movzx eax, byte [edi + 0x361]
add esp, 0xc
push eax
push 0xff00
push esi
call fcn_000188bd  ; call 0x188bd
add esp, 0x10

loc_0000d765:
push eax
push eax
push 0x100
push esi
call fcn_00018863  ; call 0x18863
mov dword [esp], esi
call fcn_00017cfe  ; call 0x17cfe
mov dword [esp], esi
call fcn_00017cc7  ; call 0x17cc7
pop edx
pop ecx
push 0
movzx ebx, al
shl ebx, 0xc
mov eax, ebx
or ebx, 0xfec00010
or eax, 0xfec00000
push eax
mov dword [ebp - 0x1c], eax
call fcn_00017ce1  ; call 0x17ce1
mov dword [esp], ebx
call fcn_00017d8a  ; call 0x17d8a
mov dl, byte [edi + 0x360]
add esp, 0x10
movzx ecx, dl
shr eax, 0x18
cmp ecx, eax
je short loc_0000d7e4  ; je 0xd7e4
cmp dl, 0xf
ja short loc_0000d7e4  ; ja 0xd7e4
push edx
push edx
push 0
push dword [ebp - 0x1c]
call fcn_00017ce1  ; call 0x17ce1
pop ecx
pop eax
movzx eax, byte [edi + 0x360]
shl eax, 0x18
push eax
push ebx
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10

loc_0000d7e4:
call fcn_0001bef7  ; call 0x1bef7
cmp eax, 2
jne short loc_0000d807  ; jne 0xd807
cmp byte [edi + 0x362], 0
jne short loc_0000d807  ; jne 0xd807
push eax
push eax
push 0x800
push esi
call fcn_00018863  ; call 0x18863
add esp, 0x10

loc_0000d807:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000d811:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000d834  ; je 0xd834
push eax
push eax
push ref_00022566  ; push 0x22566
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000d834:
push eax
push 0
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
lea esi, [eax + 0xf0]
mov ebx, eax
mov dword [esp], esi
call fcn_00017d8a  ; call 0x17d8a
lea eax, [ebp - 0x20]
push eax
push 0
push 0
push ref_0002912c  ; push 0x2912c
call fcn_00019699  ; call 0x19699
add esp, 0x20
mov edi, eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0000d8a9  ; je 0xd8a9
test edi, edi
jns short loc_0000d8a9  ; jns 0xd8a9
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000d891  ; je 0xd891
push eax
push edi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000d891:
push edi
push ref_00020664  ; push 0x20664
push 0x7c4
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000d8a9:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0000d8d5  ; je 0xd8d5
mov eax, dword [ebp - 0x20]
test word [eax + 4], 0x3fff
je short loc_0000d8d5  ; je 0xd8d5
push ecx
push ref_0002257f  ; push 0x2257f
push 0x7d5
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000d8d5:
push eax
mov eax, dword [ebp - 0x20]
mov eax, dword [eax + 4]
or eax, 1
push eax
push 0x3fff
push esi
call fcn_00018aa4  ; call 0x18aa4
lea esi, [ebx + 0x40]
pop eax
mov eax, dword [ebp - 0x20]
pop edx
movzx eax, word [eax + 8]
push eax
push esi
call fcn_00017dcb  ; call 0x17dcb
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000d93e  ; je 0xd93e
sub esp, 0xc
push esi
call fcn_00017d8a  ; call 0x17d8a
mov edx, dword [ebp - 0x20]
add esp, 0x10
movzx edx, word [edx + 8]
and eax, 0xfffc
cmp eax, edx
je short loc_0000d93e  ; je 0xd93e
push edi
push ref_000225ba  ; push 0x225ba
push 0x7e1
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000d93e:
mov eax, dword [ebp - 0x20]
cmp word [eax + 8], 0
lea eax, [ebx + 0x44]
je short loc_0000d95a  ; je 0xd95a
push esi
push esi
push 0x80
push eax
call fcn_0001866c  ; call 0x1866c
jmp short loc_0000d964  ; jmp 0xd964

loc_0000d95a:
push ecx
push ecx
push 0x7f
push eax
call fcn_00018699  ; call 0x18699

loc_0000d964:
add esp, 0x10
push eax
push eax
push 2
lea eax, [ebx + 0xa6]
push eax
call fcn_0001866c  ; call 0x1866c
lea esi, [ebx + 0x48]
pop eax
mov eax, dword [ebp - 0x20]
pop edx
movzx eax, word [eax + 0xa]
push eax
push esi
call fcn_00017dcb  ; call 0x17dcb
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000d9ca  ; je 0xd9ca
sub esp, 0xc
push esi
call fcn_00017d8a  ; call 0x17d8a
mov edx, dword [ebp - 0x20]
add esp, 0x10
movzx edx, word [edx + 0xa]
and eax, 0xfffc
cmp eax, edx
je short loc_0000d9ca  ; je 0xd9ca
push eax
push ref_00022601  ; push 0x22601
push 0x800
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000d9ca:
mov eax, dword [ebp - 0x20]
cmp word [eax + 0xa], 0
lea eax, [ebx + 0x4c]
je short loc_0000d9e3  ; je 0xd9e3
push edi
push edi
push 0x10
push eax
call fcn_0001866c  ; call 0x1866c
jmp short loc_0000d9f0  ; jmp 0xd9f0

loc_0000d9e3:
push esi
push esi
push 0xef
push eax
call fcn_00018699  ; call 0x18699

loc_0000d9f0:
mov eax, dword [ebp - 0x20]
add esp, 0x10
mov dl, byte [eax + 0x40e]
push ecx
and edx, 0x20
cmp dl, 1
sbb eax, eax
and eax, 0xffffffe0
dec eax
cmp dl, 1
sbb edx, edx
movzx eax, al
not edx
add ebx, 0xdc
and edx, 0x22
push edx
push eax
push ebx
call fcn_000186c6  ; call 0x186c6
pop ebx
push dword [ebp - 0x20]
call fcn_0000cb8e  ; call 0xcb8e
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000da74  ; je 0xda74
test ebx, ebx
jns short loc_0000da74  ; jns 0xda74
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000da5c  ; je 0xda5c
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000da5c:
push edi
push ref_00020664  ; push 0x20664
push 0x828
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000da74:
sub esp, 0xc
push dword [ebp - 0x20]
call fcn_000113df  ; call 0x113df
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000dac6  ; je 0xdac6
test ebx, ebx
jns short loc_0000dac6  ; jns 0xdac6
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000daae  ; je 0xdaae
push esi
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000daae:
push ecx
push ref_00020664  ; push 0x20664
push 0x82a
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000dac6:
sub esp, 0xc
push dword [ebp - 0x20]
call fcn_0000ce93  ; call 0xce93
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000db18  ; je 0xdb18
test ebx, ebx
jns short loc_0000db18  ; jns 0xdb18
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000db00  ; je 0xdb00
push edx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000db00:
push eax
push ref_00020664  ; push 0x20664
push 0x82d
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000db18:
sub esp, 0xc
push dword [ebp - 0x20]
call fcn_0000d0c1  ; call 0xd0c1
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000db6a  ; je 0xdb6a
test ebx, ebx
jns short loc_0000db6a  ; jns 0xdb6a
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000db52  ; je 0xdb52
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000db52:
push eax
push ref_00020664  ; push 0x20664
push 0x830
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000db6a:
sub esp, 0xc
push dword [ebp - 0x20]
call fcn_0000d55b  ; call 0xd55b
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000dbbc  ; je 0xdbbc
test ebx, ebx
jns short loc_0000dbbc  ; jns 0xdbbc
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000dba4  ; je 0xdba4
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000dba4:
push eax
push ref_00020664  ; push 0x20664
push 0x832
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000dbbc:
sub esp, 0xc
push dword [ebp - 0x20]
call fcn_0000d717  ; call 0xd717
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000dc0e  ; je 0xdc0e
test ebx, ebx
jns short loc_0000dc0e  ; jns 0xdc0e
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000dbf6  ; je 0xdbf6
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000dbf6:
push edi
push ref_00020664  ; push 0x20664
push 0x834
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000dc0e:
sub esp, 0xc
lea eax, [ebp - 0x1c]
push eax
call fcn_000196d3  ; call 0x196d3
add esp, 0x10
test eax, eax
js short loc_0000dc98  ; js 0xdc98
mov eax, dword [ebp - 0x1c]
cmp eax, 0x11
je short loc_0000dc98  ; je 0xdc98
cmp eax, 0x20
je short loc_0000dc98  ; je 0xdc98
mov eax, dword [ebp - 0x20]
cmp byte [eax + 0x339], 0
je short loc_0000dc98  ; je 0xdc98
movzx ecx, byte [eax]
add eax, 0x284
mov edx, dword [eax - 0x26a]
push ecx
push edx
push edx
push eax
call fcn_000116c1  ; call 0x116c1
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000dc98  ; je 0xdc98
test ebx, ebx
jns short loc_0000dc98  ; jns 0xdc98
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000dc80  ; je 0xdc80
push esi
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000dc80:
push ebx
push ref_00020664  ; push 0x20664
push 0x848
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000dc98:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000dcb2  ; je 0xdcb2
push ecx
push ecx
push ref_0002264a  ; push 0x2264a
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000dcb2:
sub esp, 0xc
push ref_00026ec4  ; push 0x26ec4
call fcn_00019667  ; call 0x19667
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000dd06  ; je 0xdd06
test ebx, ebx
jns short loc_0000dd06  ; jns 0xdd06
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000dcee  ; je 0xdcee
push edx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000dcee:
push eax
push ref_00020664  ; push 0x20664
push 0x853
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000dd06:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000dd10:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov ebx, dword [ebp + 0xc]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000dd36  ; je 0xdd36
push eax
push eax
push ref_00022661  ; push 0x22661
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000dd36:  ; not directly referenced
cmp byte [ebx], 5
jbe loc_0000ddcb  ; jbe 0xddcb
xor edx, edx

loc_0000dd41:  ; not directly referenced
cmp dl, byte [ebx + 0x526]
jae short loc_0000dd72  ; jae 0xdd72
movzx eax, dl
mov esi, dword [ebp + 8]
push edi
lea eax, [ebx + eax*8]
push edi
push dword [eax + 0x4e2]
add esi, dword [eax + 0x4de]
mov dword [ebp - 0x1c], edx
push esi
call fcn_00017dcb  ; call 0x17dcb
mov edx, dword [ebp - 0x1c]
add esp, 0x10
inc edx
jmp short loc_0000dd41  ; jmp 0xdd41

loc_0000dd72:  ; not directly referenced
xor edx, edx

loc_0000dd74:  ; not directly referenced
cmp dl, byte [ebx + 0x553]
jae short loc_0000dda8  ; jae 0xdda8
movzx eax, dl
lea eax, [ebx + eax*4]
push esi
push esi
movzx ecx, word [eax + 0x529]
mov dword [ebp - 0x1c], edx
push ecx
movzx eax, word [eax + 0x527]
add eax, dword [ebp + 8]
push eax
call fcn_00017d40  ; call 0x17d40
mov edx, dword [ebp - 0x1c]
add esp, 0x10
inc edx
jmp short loc_0000dd74  ; jmp 0xdd74

loc_0000dda8:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_0000de59  ; je 0xde59
push eax
push eax
push ref_00022688  ; push 0x22688
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp near loc_0000de59  ; jmp 0xde59

loc_0000ddcb:  ; not directly referenced
call fcn_0001bef7  ; call 0x1bef7
mov esi, ref_00026eec  ; mov esi, 0x26eec
mov edx, ref_00026f10  ; mov edx, 0x26f10
mov edi, ref_00026f28  ; mov edi, 0x26f28
cmp eax, 2
sete bl
setne cl
cmovne esi, edx
movzx ebx, bl
mov edx, ref_00026f50  ; mov edx, 0x26f50
movzx ecx, cl
cmovne edi, edx
add ecx, 5
lea ebx, [ebx + ebx*2 + 6]
xor edx, edx

loc_0000de02:  ; not directly referenced
movzx eax, dl
cmp eax, ecx
jae short loc_0000de2e  ; jae 0xde2e
mov dword [ebp - 0x20], ecx
lea eax, [edi + eax*8]
push ecx
push ecx
mov ecx, dword [ebp + 8]
push dword [eax + 4]
add ecx, dword [eax]
mov dword [ebp - 0x1c], edx
push ecx
call fcn_00017dcb  ; call 0x17dcb
mov edx, dword [ebp - 0x1c]
add esp, 0x10
mov ecx, dword [ebp - 0x20]
inc edx
jmp short loc_0000de02  ; jmp 0xde02

loc_0000de2e:  ; not directly referenced
xor edi, edi

loc_0000de30:  ; not directly referenced
mov eax, edi
movzx eax, al
cmp eax, ebx
jae loc_0000dda8  ; jae 0xdda8
lea eax, [esi + eax*4]
inc edi
push edx
push edx
movzx edx, word [eax + 2]
push edx
movzx eax, word [eax]
add eax, dword [ebp + 8]
push eax
call fcn_00017d40  ; call 0x17d40
add esp, 0x10
jmp short loc_0000de30  ; jmp 0xde30

loc_0000de59:  ; not directly referenced
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000de63:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000de86  ; je 0xde86
push ebx
push ebx
push ref_000226ad  ; push 0x226ad
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000de86:
push ecx
push 0
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
mov edi, eax
lea eax, [eax + 0xa4]
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test al, 4
je loc_0000df64  ; je 0xdf64
push ecx
push ecx
push 1
push dword [ebp + 8]
call fcn_0001bd8b  ; call 0x1bd8b
mov dword [esp], 0x70
call fcn_00018e1d  ; call 0x18e1d
pop esi
mov bl, al
pop eax
and ebx, 0xffffff80
push 0
push dword [ebp + 8]
call fcn_0001bd8b  ; call 0x1bd8b
mov dl, bl
or ebx, 0xb
or edx, 0xa
movzx ebx, bl
pop eax
movzx esi, dl
pop edx
push esi
push 0x70
call fcn_00018e26  ; call 0x18e26
mov dword [esp], 0x71
call fcn_00018e1d  ; call 0x18e1d
pop ecx
pop edx
and eax, 0x8f
or eax, 0x60
push eax
push 0x71
call fcn_00018e26  ; call 0x18e26
pop ecx
pop eax
push ebx
push 0x70
call fcn_00018e26  ; call 0x18e26
pop eax
pop edx
push 0x80
push 0x71
call fcn_00017ebb  ; call 0x17ebb
pop ecx
pop eax
push esi
push 0x70
call fcn_00018e26  ; call 0x18e26
mov dword [esp], 0x71
call fcn_00018e1d  ; call 0x18e1d
pop edx
pop ecx
and eax, 0x8f
or eax, 0x20
push eax
push 0x71
call fcn_00018e26  ; call 0x18e26
pop esi
pop eax
push ebx
push 0x70
call fcn_00018e26  ; call 0x18e26
pop eax
pop edx
push 0x7f
push 0x71
call fcn_00017ee8  ; call 0x17ee8
add esp, 0x10

loc_0000df64:
mov eax, dword [ebp + 8]
add edi, 0xdc
push edx
push edx
push 0x10
lea esi, [eax + 0x3310]
push esi
call fcn_00017dcb  ; call 0x17dcb
add esp, 0xc
push 8
push 0xf3
push edi
call fcn_000186c6  ; call 0x186c6
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_0000dfaa  ; je 0xdfaa
push eax
push eax
push ref_000226c5  ; push 0x226c5
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000dfaa:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000dfb2:
push ebp
mov ebp, esp
push esi
push ebx
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000dfd1  ; je 0xdfd1
push esi
push esi
push ref_000226db  ; push 0x226db
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000dfd1:
call fcn_0001bcb1  ; call 0x1bcb1
test al, al
jne short loc_0000e018  ; jne 0xe018
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000dff7  ; je 0xdff7
push ebx
push ebx
push ref_000226f8  ; push 0x226f8
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000dff7:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0000e018  ; je 0xe018
push ecx
push ref_000221f1  ; push 0x221f1
push 0x974
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000e018:
push edx
push 0
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xf0
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov ebx, eax
call fcn_000153e9  ; call 0x153e9
and ebx, 0xffffc000
add esp, 0x10
test al, al
je short loc_0000e056  ; je 0xe056
push eax
push eax
push ref_00022732  ; push 0x22732
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e056:
call fcn_000153f0  ; call 0x153f0
sub esp, 0xc
push ebx
call fcn_0000de63  ; call 0xde63
mov dword [esp], 0xc
call fcn_00019cf2  ; call 0x19cf2
add esp, 0x10
mov ebx, eax
test eax, eax
jne short loc_0000e0a0  ; jne 0xe0a0
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e096  ; je 0xe096
push eax
push eax
push ref_0002275b  ; push 0x2275b

loc_0000e089:
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e096:
mov ebx, 0x80000009
jmp near loc_0000e1f4  ; jmp 0xe1f4

loc_0000e0a0:
sub esp, 0xc
push 0x28
call fcn_00019cf2  ; call 0x19cf2
add esp, 0x10
mov esi, eax
test eax, eax
jne short loc_0000e0c5  ; jne 0xe0c5
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e096  ; je 0xe096
push eax
push eax
push ref_00022791  ; push 0x22791
jmp short loc_0000e089  ; jmp 0xe089

loc_0000e0c5:
push eax
push 0x28
push ref_00026f80  ; push 0x26f80
push esi
call fcn_0001707a  ; call 0x1707a
mov dword [ebx], 0x80000010
mov dword [ebx + 4], ref_000290cc  ; mov dword [ebx + 4], 0x290cc
mov dword [ebx + 8], esi
mov dword [esp], ebx
call fcn_00019667  ; call 0x19667
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000e132  ; je 0xe132
test ebx, ebx
jns short loc_0000e132  ; jns 0xe132
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e11a  ; je 0xe11a
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e11a:
push eax
push ref_00020664  ; push 0x20664
push 0x99d
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000e132:
sub esp, 0xc
push ref_00026ed0  ; push 0x26ed0
call fcn_00019667  ; call 0x19667
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000e186  ; je 0xe186
test ebx, ebx
jns short loc_0000e186  ; jns 0xe186
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e16e  ; je 0xe16e
push esi
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e16e:
push ebx
push ref_00020664  ; push 0x20664
push 0x9a3
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000e186:
sub esp, 0xc
push ref_00026eac  ; push 0x26eac
call fcn_000196bb  ; call 0x196bb
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0000e1da  ; je 0xe1da
test ebx, ebx
jns short loc_0000e1da  ; jns 0xe1da
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e1c2  ; je 0xe1c2
push ecx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e1c2:
push edx
push ref_00020664  ; push 0x20664
push 0x9a9
push ref_00022290  ; push 0x22290
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0000e1da:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e1f4  ; je 0xe1f4
push eax
push eax
push ref_000227c3  ; push 0x227c3
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e1f4:
lea esp, [ebp - 8]
mov eax, ebx
pop ebx
pop esi
pop ebp
ret

fcn_0000e1fd:  ; not directly referenced
push ebp
mov ebp, esp
push esi
push ebx
mov ebx, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e21f  ; je 0xe21f
push edx
push edx
push ref_000227de  ; push 0x227de
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e21f:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e240  ; je 0xe240
push eax
movzx eax, byte [ebx + 0xb4]
push eax
push ref_00022814  ; push 0x22814
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e240:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e261  ; je 0xe261
push eax
movzx eax, byte [ebx + 0xb5]
push eax
push ref_00022814  ; push 0x22814
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e261:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e27f  ; je 0xe27f
push eax
movzx eax, byte [ebx + 1]
push eax
push ref_00022828  ; push 0x22828
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e27f:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e29d  ; je 0xe29d
push eax
movzx eax, byte [ebx + 9]
push eax
push ref_00022838  ; push 0x22838
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e29d:  ; not directly referenced
xor esi, esi

loc_0000e29f:  ; not directly referenced
call fcn_0001c19d  ; call 0x1c19d
movzx eax, al
cmp esi, eax
jae short loc_0000e2ec  ; jae 0xe2ec
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e2ca  ; je 0xe2ca
movzx eax, byte [ebx + esi*8 + 0x2c]
push eax
push esi
push ref_00022848  ; push 0x22848
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e2ca:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e2e9  ; je 0xe2e9
movzx eax, byte [ebx + esi*8 + 0x32]
push eax
push esi
push ref_00022867  ; push 0x22867
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e2e9:  ; not directly referenced
inc esi
jmp short loc_0000e29f  ; jmp 0xe29f

loc_0000e2ec:  ; not directly referenced
xor esi, esi

loc_0000e2ee:  ; not directly referenced
call fcn_0001c234  ; call 0x1c234
movzx eax, al
cmp esi, eax
jae short loc_0000e31f  ; jae 0xe31f
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e31c  ; je 0xe31c
movzx eax, byte [ebx + esi*4 + 0x9c]
push eax
push esi
push ref_00022888  ; push 0x22888
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e31c:  ; not directly referenced
inc esi
jmp short loc_0000e2ee  ; jmp 0xe2ee

loc_0000e31f:  ; not directly referenced
xor esi, esi

loc_0000e321:  ; not directly referenced
call fcn_0001c181  ; call 0x1c181
movzx eax, al
cmp esi, eax
jae short loc_0000e34e  ; jae 0xe34e
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e34b  ; je 0xe34b
movzx eax, byte [ebx + esi*8]
push eax
push esi
push ref_000228a9  ; push 0x228a9
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e34b:  ; not directly referenced
inc esi
jmp short loc_0000e321  ; jmp 0xe321

loc_0000e34e:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e36c  ; je 0xe36c
push eax
movzx eax, byte [ebx + 0x10]
push eax
push ref_000228c9  ; push 0x228c9
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e36c:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e38a  ; je 0xe38a
push eax
movzx eax, byte [ebx + 0x11]
push eax
push ref_000228e2  ; push 0x228e2
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e38a:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e3a8  ; je 0xe3a8
push esi
movzx eax, byte [ebx + 0x12]
push eax
push ref_00022905  ; push 0x22905
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e3a8:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e3c6  ; je 0xe3c6
push ecx
movzx eax, byte [ebx + 0x13]
push eax
push ref_0002291e  ; push 0x2291e
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e3c6:  ; not directly referenced
xor esi, esi

loc_0000e3c8:  ; not directly referenced
call fcn_0001c1d4  ; call 0x1c1d4
movzx eax, al
cmp esi, eax
jae short loc_0000e40a  ; jae 0xe40a
cmp byte [ebx + esi + 0x14], 0
jne short loc_0000e3ed  ; jne 0xe3ed
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e407  ; je 0xe407
push edx
push esi
push ref_0002293d  ; push 0x2293d
jmp short loc_0000e3fd  ; jmp 0xe3fd

loc_0000e3ed:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e407  ; je 0xe407
push eax
push esi
push ref_00022972  ; push 0x22972

loc_0000e3fd:  ; not directly referenced
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e407:  ; not directly referenced
inc esi
jmp short loc_0000e3c8  ; jmp 0xe3c8

loc_0000e40a:  ; not directly referenced
xor esi, esi

loc_0000e40c:  ; not directly referenced
call fcn_0001c234  ; call 0x1c234
movzx eax, al
cmp esi, eax
jae short loc_0000e43a  ; jae 0xe43a
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e437  ; je 0xe437
movzx eax, byte [ebx + esi + 0x22]
push eax
push esi
push ref_000229a7  ; push 0x229a7
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e437:  ; not directly referenced
inc esi
jmp short loc_0000e40c  ; jmp 0xe40c

loc_0000e43a:  ; not directly referenced
xor esi, esi

loc_0000e43c:  ; not directly referenced
call fcn_0001c19d  ; call 0x1c19d
movzx eax, al
cmp esi, eax
jae short loc_0000e4a8  ; jae 0xe4a8
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e467  ; je 0xe467
movzx eax, byte [ebx + esi*8 + 0x2d]
push eax
push esi
push ref_000229db  ; push 0x229db
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e467:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e486  ; je 0xe486
movzx eax, byte [ebx + esi*8 + 0x2e]
push eax
push esi
push ref_00022a00  ; push 0x22a00
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e486:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e4a5  ; je 0xe4a5
movzx eax, byte [ebx + esi*8 + 0x2f]
push eax
push esi
push ref_00022a30  ; push 0x22a30
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e4a5:  ; not directly referenced
inc esi
jmp short loc_0000e43c  ; jmp 0xe43c

loc_0000e4a8:  ; not directly referenced
xor esi, esi

loc_0000e4aa:  ; not directly referenced
call fcn_0001c234  ; call 0x1c234
movzx eax, al
cmp esi, eax
jae short loc_0000e4fd  ; jae 0xe4fd
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e4d8  ; je 0xe4d8
movzx eax, byte [ebx + esi*4 + 0x9d]
push eax
push esi
push ref_00022a60  ; push 0x22a60
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e4d8:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e4fa  ; je 0xe4fa
movzx eax, byte [ebx + esi*4 + 0x9e]
push eax
push esi
push ref_00022a85  ; push 0x22a85
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e4fa:  ; not directly referenced
inc esi
jmp short loc_0000e4aa  ; jmp 0xe4aa

loc_0000e4fd:  ; not directly referenced
xor esi, esi

loc_0000e4ff:  ; not directly referenced
call fcn_0001c158  ; call 0x1c158
movzx eax, al
cmp esi, eax
jae short loc_0000e53d  ; jae 0xe53d
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e53a  ; je 0xe53a
mov ax, word [ebx + esi*8 + 0x30]
sub esp, 0xc
mov edx, eax
and edx, 0xf
shr ax, 4
push edx
movzx eax, ax
push eax
push esi
push ref_00022aac  ; push 0x22aac
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_0000e53a:  ; not directly referenced
inc esi
jmp short loc_0000e4ff  ; jmp 0xe4ff

loc_0000e53d:  ; not directly referenced
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0000e544:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e566  ; je 0xe566
push eax
push eax
push ref_00022aca  ; push 0x22aca
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e566:  ; not directly referenced
xor ebx, ebx

loc_0000e568:  ; not directly referenced
call fcn_0001c234  ; call 0x1c234
movzx eax, al
cmp ebx, eax
jae loc_0000e6aa  ; jae 0xe6aa
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e596  ; je 0xe596
movzx eax, byte [esi + ebx*8]
push eax
push ebx
push ref_00022b09  ; push 0x22b09
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e596:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e5b5  ; je 0xe5b5
movzx eax, byte [esi + ebx*8 + 1]
push eax
push ebx
push ref_00022b3a  ; push 0x22b3a
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e5b5:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e5d4  ; je 0xe5d4
movzx eax, byte [esi + ebx*8 + 2]
push eax
push ebx
push ref_00022b6e  ; push 0x22b6e
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e5d4:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e5f5  ; je 0xe5f5
mov al, byte [esi + ebx*8 + 3]
and eax, 1
push eax
push ebx
push ref_00022b9b  ; push 0x22b9b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e5f5:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e618  ; je 0xe618
mov al, byte [esi + ebx*8 + 3]
shr al, 1
movzx eax, al
push eax
push ebx
push ref_00022bc5  ; push 0x22bc5
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e618:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e639  ; je 0xe639
mov al, byte [esi + ebx*8 + 4]
and eax, 1
push eax
push ebx
push ref_00022bf7  ; push 0x22bf7
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e639:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e65c  ; je 0xe65c
mov al, byte [esi + ebx*8 + 4]
shr al, 1
and eax, 1
push eax
push ebx
push ref_00022c2e  ; push 0x22c2e
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e65c:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e680  ; je 0xe680
mov al, byte [esi + ebx*8 + 4]
shr al, 2
and eax, 1
push eax
push ebx
push ref_00022c68  ; push 0x22c68
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e680:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e6a4  ; je 0xe6a4
mov al, byte [esi + ebx*8 + 4]
shr al, 3
and eax, 1
push eax
push ebx
push ref_00022c9b  ; push 0x22c9b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e6a4:  ; not directly referenced
inc ebx
jmp near loc_0000e568  ; jmp 0xe568

loc_0000e6aa:  ; not directly referenced
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0000e6b1:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e6d7  ; je 0xe6d7
push eax
push eax
push ref_00022cc7  ; push 0x22cc7
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e6d7:  ; not directly referenced
lea edi, [esi + 0x1e]
xor ebx, ebx

loc_0000e6dc:  ; not directly referenced
call fcn_0001c0fb  ; call 0x1c0fb
movzx eax, al
cmp ebx, eax
jae loc_0000eb32  ; jae 0xeb32
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e70f  ; je 0xe70f
imul eax, ebx, 0x2c
mov al, byte [esi + eax]
and eax, 1
push eax
push ebx
push ref_00022cfe  ; push 0x22cfe
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e70f:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e734  ; je 0xe734
imul eax, ebx, 0x2c
mov al, byte [esi + eax]
shr al, 1
and eax, 1
push eax
push ebx
push ref_00022d19  ; push 0x22d19
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e734:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e75a  ; je 0xe75a
imul eax, ebx, 0x2c
mov al, byte [esi + eax]
shr al, 2
and eax, 1
push eax
push ebx
push ref_00022d31  ; push 0x22d31
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e75a:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e780  ; je 0xe780
imul eax, ebx, 0x2c
mov al, byte [esi + eax]
shr al, 3
and eax, 1
push eax
push ebx
push ref_00022d54  ; push 0x22d54
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e780:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e7a6  ; je 0xe7a6
imul eax, ebx, 0x2c
mov al, byte [esi + eax]
shr al, 4
and eax, 1
push eax
push ebx
push ref_00022d6f  ; push 0x22d6f
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e7a6:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e7cc  ; je 0xe7cc
imul eax, ebx, 0x2c
mov al, byte [esi + eax]
shr al, 5
and eax, 1
push eax
push ebx
push ref_00022d88  ; push 0x22d88
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e7cc:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e7f2  ; je 0xe7f2
imul eax, ebx, 0x2c
mov al, byte [esi + eax + 4]
shr al, 1
and eax, 1
push eax
push ebx
push ref_00022da3  ; push 0x22da3
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e7f2:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e819  ; je 0xe819
imul eax, ebx, 0x2c
mov al, byte [esi + eax + 4]
shr al, 2
and eax, 1
push eax
push ebx
push ref_00022dcf  ; push 0x22dcf
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e819:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e840  ; je 0xe840
imul eax, ebx, 0x2c
mov al, byte [esi + eax + 4]
shr al, 3
and eax, 1
push eax
push ebx
push ref_00022df3  ; push 0x22df3
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e840:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e867  ; je 0xe867
imul eax, ebx, 0x2c
mov al, byte [esi + eax + 4]
shr al, 4
and eax, 1
push eax
push ebx
push ref_00022e19  ; push 0x22e19
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e867:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e88e  ; je 0xe88e
imul eax, ebx, 0x2c
mov al, byte [esi + eax + 4]
shr al, 5
and eax, 1
push eax
push ebx
push ref_00022e43  ; push 0x22e43
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e88e:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e8b5  ; je 0xe8b5
imul eax, ebx, 0x2c
mov al, byte [esi + eax + 4]
shr al, 6
and eax, 1
push eax
push ebx
push ref_00022e63  ; push 0x22e63
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e8b5:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e8dc  ; je 0xe8dc
imul eax, ebx, 0x2c
mov al, byte [esi + eax + 4]
shr al, 7
movzx eax, al
push eax
push ebx
push ref_00022e8e  ; push 0x22e8e
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e8dc:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e900  ; je 0xe900
imul eax, ebx, 0x2c
mov al, byte [esi + eax + 5]
and eax, 1
push eax
push ebx
push ref_00022ebc  ; push 0x22ebc
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e900:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e924  ; je 0xe924
imul eax, ebx, 0x2c
mov al, byte [esi + eax + 4]
and eax, 1
push eax
push ebx
push ref_00022eed  ; push 0x22eed
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e924:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e94a  ; je 0xe94a
imul eax, ebx, 0x2c
mov al, byte [esi + eax]
shr al, 6
and eax, 1
push eax
push ebx
push ref_00022f17  ; push 0x22f17
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e94a:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e968  ; je 0xe968
movzx eax, byte [edi - 0x16]
push eax
push ebx
push ref_00022f3f  ; push 0x22f3f
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e968:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e986  ; je 0xe986
movzx eax, byte [edi - 0x15]
push eax
push ebx
push ref_00022f5c  ; push 0x22f5c
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e986:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e9a4  ; je 0xe9a4
movzx eax, byte [edi - 0x14]
push eax
push ebx
push ref_00022f7e  ; push 0x22f7e
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e9a4:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e9c2  ; je 0xe9c2
movzx eax, byte [edi - 0x13]
push eax
push ebx
push ref_00022fa4  ; push 0x22fa4
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e9c2:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e9e0  ; je 0xe9e0
movzx eax, byte [edi - 0xe]
push eax
push ebx
push ref_00022fc9  ; push 0x22fc9
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e9e0:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000e9fe  ; je 0xe9fe
movzx eax, byte [edi - 0xd]
push eax
push ebx
push ref_00022fe1  ; push 0x22fe1
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000e9fe:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ea1c  ; je 0xea1c
movzx eax, byte [edi - 0xc]
push eax
push ebx
push ref_00023000  ; push 0x23000
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ea1c:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ea3a  ; je 0xea3a
movzx eax, byte [edi - 0xb]
push eax
push ebx
push ref_0002301d  ; push 0x2301d
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ea3a:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ea58  ; je 0xea58
movzx eax, word [edi - 0xa]
push eax
push ebx
push ref_0002303e  ; push 0x2303e
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ea58:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ea76  ; je 0xea76
movzx eax, word [edi - 8]
push eax
push ebx
push ref_00023064  ; push 0x23064
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ea76:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ea94  ; je 0xea94
movzx eax, byte [edi - 6]
push eax
push ebx
push ref_0002308c  ; push 0x2308c
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ea94:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000eab2  ; je 0xeab2
movzx eax, byte [edi - 5]
push eax
push ebx
push ref_000230b8  ; push 0x230b8
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000eab2:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ead0  ; je 0xead0
movzx eax, word [edi - 4]
push eax
push ebx
push ref_000230ea  ; push 0x230ea
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ead0:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000eaee  ; je 0xeaee
movzx eax, byte [edi - 2]
push eax
push ebx
push ref_00023117  ; push 0x23117
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000eaee:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000eb0c  ; je 0xeb0c
movzx eax, byte [edi - 1]
push eax
push ebx
push ref_00023146  ; push 0x23146
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000eb0c:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000eb29  ; je 0xeb29
movzx eax, word [edi]
push eax
push ebx
push ref_0002317b  ; push 0x2317b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000eb29:  ; not directly referenced
inc ebx
add edi, 0x2c
jmp near loc_0000e6dc  ; jmp 0xe6dc

loc_0000eb32:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000eb53  ; je 0xeb53
push edi
movzx eax, byte [esi + 0x160]
push eax
push ref_000231ab  ; push 0x231ab
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000eb53:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000eb74  ; je 0xeb74
push ebx
movzx eax, byte [esi + 0x161]
push eax
push ref_000231c1  ; push 0x231c1
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000eb74:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000eb95  ; je 0xeb95
push ecx
movzx eax, byte [esi + 0x162]
push eax
push ref_000231d7  ; push 0x231d7
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000eb95:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ebb6  ; je 0xebb6
push edx
movzx eax, byte [esi + 0x163]
push eax
push ref_000231f1  ; push 0x231f1
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ebb6:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ebd9  ; je 0xebd9
push eax
mov al, byte [esi + 0x164]
and eax, 1
push eax
push ref_00023210  ; push 0x23210
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ebd9:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000ebe1:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ec07  ; je 0xec07
push edi
push edi
push ref_0002322f  ; push 0x2322f
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ec07:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ec24  ; je 0xec24
push ebx
movzx eax, byte [esi]
push eax
push ref_000233c4  ; push 0x233c4
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ec24:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ec40  ; je 0xec40
push ecx
push dword [esi + 1]
push ref_00023266  ; push 0x23266
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ec40:  ; not directly referenced
lea edi, [esi + 0xd]
xor ebx, ebx

loc_0000ec45:  ; not directly referenced
call fcn_0001c11d  ; call 0x1c11d
movzx eax, al
cmp ebx, eax
jae loc_0000efe4  ; jae 0xefe4
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ec79  ; je 0xec79
imul eax, ebx, 0x12
mov al, byte [esi + eax + 5]
and eax, 1
push eax
push ebx
push ref_00022848  ; push 0x22848
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ec79:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ec9f  ; je 0xec9f
imul eax, ebx, 0x12
mov al, byte [esi + eax + 5]
shr al, 1
and eax, 1
push eax
push ebx
push ref_00023275  ; push 0x23275
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ec9f:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ecc6  ; je 0xecc6
imul eax, ebx, 0x12
mov al, byte [esi + eax + 5]
shr al, 2
and eax, 1
push eax
push ebx
push ref_00023294  ; push 0x23294
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ecc6:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000eced  ; je 0xeced
imul eax, ebx, 0x12
mov al, byte [esi + eax + 5]
shr al, 3
and eax, 1
push eax
push ebx
push ref_000232b7  ; push 0x232b7
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000eced:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ed14  ; je 0xed14
imul eax, ebx, 0x12
mov al, byte [esi + eax + 5]
shr al, 4
and eax, 1
push eax
push ebx
push ref_000232d7  ; push 0x232d7
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ed14:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ed3b  ; je 0xed3b
imul eax, ebx, 0x12
mov al, byte [esi + eax + 5]
shr al, 5
and eax, 1
push eax
push ebx
push ref_000232f5  ; push 0x232f5
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ed3b:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ed62  ; je 0xed62
imul eax, ebx, 0x12
mov al, byte [esi + eax + 5]
shr al, 6
and eax, 1
push eax
push ebx
push ref_0002331c  ; push 0x2331c
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ed62:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ed89  ; je 0xed89
imul eax, ebx, 0x12
mov al, byte [esi + eax + 5]
shr al, 7
movzx eax, al
push eax
push ebx
push ref_0002333a  ; push 0x2333a
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ed89:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000edad  ; je 0xedad
imul eax, ebx, 0x12
mov al, byte [esi + eax + 6]
and eax, 0xf
push eax
push ebx
push ref_00023362  ; push 0x23362
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000edad:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ede1  ; je 0xede1
imul edx, ebx, 0x12
add edx, esi
mov al, byte [edx + 6]
shr al, 4
movzx ecx, al
movzx eax, byte [edx + 7]
and eax, 0x3f
shl eax, 4
or eax, ecx
push eax
push ebx
push ref_0002337f  ; push 0x2337f
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ede1:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000edff  ; je 0xedff
movzx eax, byte [edi - 3]
push eax
push ebx
push ref_0002339e  ; push 0x2339e
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000edff:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ee1d  ; je 0xee1d
movzx eax, byte [edi - 4]
push eax
push ebx
push ref_000233d1  ; push 0x233d1
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ee1d:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ee3b  ; je 0xee3b
movzx eax, byte [edi - 1]
push eax
push ebx
push ref_00023402  ; push 0x23402
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ee3b:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ee59  ; je 0xee59
movzx eax, byte [edi - 2]
push eax
push ebx
push ref_00023435  ; push 0x23435
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ee59:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ee77  ; je 0xee77
movzx eax, byte [edi + 1]
push eax
push ebx
push ref_00023466  ; push 0x23466
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ee77:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ee94  ; je 0xee94
movzx eax, byte [edi]
push eax
push ebx
push ref_00023499  ; push 0x23499
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ee94:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000eeb6  ; je 0xeeb6
imul eax, ebx, 0x12
movzx eax, byte [esi + eax + 0xf]
push eax
push ebx
push ref_000234ca  ; push 0x234ca
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000eeb6:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000eed8  ; je 0xeed8
imul eax, ebx, 0x12
movzx eax, byte [esi + eax + 0x10]
push eax
push ebx
push ref_00023500  ; push 0x23500
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000eed8:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000eefa  ; je 0xeefa
imul eax, ebx, 0x12
movzx eax, byte [esi + eax + 0x11]
push eax
push ebx
push ref_00023537  ; push 0x23537
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000eefa:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ef1c  ; je 0xef1c
imul eax, ebx, 0x12
movzx eax, byte [esi + eax + 0x12]
push eax
push ebx
push ref_00023568  ; push 0x23568
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ef1c:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ef40  ; je 0xef40
imul eax, ebx, 0x12
mov al, byte [esi + eax + 0x13]
and eax, 1
push eax
push ebx
push ref_0002359a  ; push 0x2359a
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ef40:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ef66  ; je 0xef66
imul eax, ebx, 0x12
mov al, byte [esi + eax + 0x13]
shr al, 1
and eax, 1
push eax
push ebx
push ref_000235d6  ; push 0x235d6
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ef66:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ef8d  ; je 0xef8d
imul eax, ebx, 0x12
mov al, byte [esi + eax + 0x13]
shr al, 2
and eax, 1
push eax
push ebx
push ref_00023613  ; push 0x23613
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ef8d:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000efb4  ; je 0xefb4
imul eax, ebx, 0x12
mov al, byte [esi + eax + 0x13]
shr al, 3
and eax, 1
push eax
push ebx
push ref_0002364a  ; push 0x2364a
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000efb4:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000efdb  ; je 0xefdb
imul eax, ebx, 0x12
mov al, byte [esi + eax + 7]
shr al, 6
and eax, 1
push eax
push ebx
push ref_00023682  ; push 0x23682
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000efdb:  ; not directly referenced
inc ebx
add edi, 0x12
jmp near loc_0000ec45  ; jmp 0xec45

loc_0000efe4:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f004  ; je 0xf004
push edx
mov al, byte [esi + 0x71]
and eax, 1
push eax
push ref_000236b9  ; push 0x236b9
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f004:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f026  ; je 0xf026
push eax
mov al, byte [esi + 0x71]
shr al, 1
and eax, 1
push eax
push ref_000236cf  ; push 0x236cf
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f026:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f049  ; je 0xf049
push eax
mov al, byte [esi + 0x71]
shr al, 2
and eax, 1
push eax
push ref_000236db  ; push 0x236db
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f049:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f06c  ; je 0xf06c
push eax
mov al, byte [esi + 0x71]
shr al, 3
and eax, 1
push eax
push ref_000236e7  ; push 0x236e7
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f06c:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f08f  ; je 0xf08f
push eax
mov al, byte [esi + 0x71]
shr al, 4
and eax, 1
push eax
push ref_000236f4  ; push 0x236f4
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f08f:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f0b2  ; je 0xf0b2
push eax
mov al, byte [esi + 0x71]
shr al, 5
and eax, 1
push eax
push ref_00023700  ; push 0x23700
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f0b2:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f0d5  ; je 0xf0d5
push eax
mov al, byte [esi + 0x71]
shr al, 6
and eax, 1
push eax
push ref_0002370b  ; push 0x2370b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f0d5:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f103  ; je 0xf103
push edi
mov al, byte [esi + 0x71]
shr al, 7
movzx edx, al
movzx eax, byte [esi + 0x72]
and eax, 1
add eax, eax
or eax, edx
push eax
push ref_0002371e  ; push 0x2371e
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f103:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f125  ; je 0xf125
push ebx
mov al, byte [esi + 0x72]
shr al, 1
and eax, 1
push eax
push ref_00023730  ; push 0x23730
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f125:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f148  ; je 0xf148
push ecx
mov al, byte [esi + 0x72]
shr al, 2
and eax, 1
push eax
push ref_00023740  ; push 0x23740
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f148:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f16b  ; je 0xf16b
push edx
mov al, byte [esi + 0x72]
shr al, 3
and eax, 1
push eax
push ref_00023750  ; push 0x23750
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f16b:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f18e  ; je 0xf18e
push eax
mov al, byte [esi + 0x72]
shr al, 4
and eax, 1
push eax
push ref_0002375f  ; push 0x2375f
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f18e:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f1aa  ; je 0xf1aa
push eax
push dword [esi + 0x75]
push ref_00023772  ; push 0x23772
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f1aa:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f1c8  ; je 0xf1c8
push eax
movzx eax, byte [esi + 0x7d]
push eax
push ref_00023785  ; push 0x23785
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f1c8:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f1e6  ; je 0xf1e6
push eax
movzx eax, byte [esi + 0x79]
push eax
push ref_0002379b  ; push 0x2379b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f1e6:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f204  ; je 0xf204
push eax
movzx eax, byte [esi + 0x7a]
push eax
push ref_000237aa  ; push 0x237aa
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f204:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f222  ; je 0xf222
push eax
movzx eax, byte [esi + 0x7b]
push eax
push ref_000237bb  ; push 0x237bb
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f222:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f240  ; je 0xf240
push edi
movzx eax, byte [esi + 0x7c]
push eax
push ref_000237cd  ; push 0x237cd
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f240:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f25e  ; je 0xf25e
push ebx
movzx eax, byte [esi + 0x7e]
push eax
push ref_000237e0  ; push 0x237e0
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f25e:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f27c  ; je 0xf27c
push ecx
movzx eax, byte [esi + 0x7f]
push eax
push ref_000237fb  ; push 0x237fb
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f27c:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f29d  ; je 0xf29d
push edx
movzx eax, byte [esi + 0x80]
push eax
push ref_0002381c  ; push 0x2381c
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f29d:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f2be  ; je 0xf2be
push eax
movzx eax, byte [esi + 0x81]
push eax
push ref_00023845  ; push 0x23845
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f2be:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000f2c6:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f2e8  ; je 0xf2e8
push eax
push eax
push ref_0002386a  ; push 0x2386a
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f2e8:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f305  ; je 0xf305
push eax
movzx eax, byte [ebx]
push eax
push ref_000238a3  ; push 0x238a3
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f305:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f323  ; je 0xf323
push eax
movzx eax, byte [ebx + 1]
push eax
push ref_000238b2  ; push 0x238b2
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f323:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f341  ; je 0xf341
push eax
movzx eax, byte [ebx + 2]
push eax
push ref_000238c2  ; push 0x238c2
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f341:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f35f  ; je 0xf35f
push eax
movzx eax, byte [ebx + 3]
push eax
push ref_00022f69  ; push 0x22f69
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f35f:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f37d  ; je 0xf37d
push ecx
movzx eax, byte [ebx + 4]
push eax
push ref_000238d5  ; push 0x238d5
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f37d:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f39b  ; je 0xf39b
push edx
movzx eax, byte [ebx + 5]
push eax
push ref_000238e4  ; push 0x238e4
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f39b:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f3b9  ; je 0xf3b9
push eax
movzx eax, byte [ebx + 6]
push eax
push ref_000238fa  ; push 0x238fa
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f3b9:  ; not directly referenced
mov ebx, dword [ebp - 4]
leave
ret

fcn_0000f3be:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f3e0  ; je 0xf3e0
push eax
push eax
push ref_00023911  ; push 0x23911
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f3e0:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f3fd  ; je 0xf3fd
push eax
movzx eax, byte [ebx]
push eax
push ref_00023948  ; push 0x23948
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f3fd:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f41b  ; je 0xf41b
push eax
movzx eax, byte [ebx + 8]
push eax
push ref_00023954  ; push 0x23954
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f41b:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f439  ; je 0xf439
push eax
movzx eax, byte [ebx + 1]
push eax
push ref_00023962  ; push 0x23962
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f439:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f457  ; je 0xf457
push ecx
movzx eax, byte [ebx + 2]
push eax
push ref_00023971  ; push 0x23971
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f457:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f475  ; je 0xf475
push edx
movzx eax, byte [ebx + 3]
push eax
push ref_00023983  ; push 0x23983
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f475:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f491  ; je 0xf491
push eax
push dword [ebx + 4]
push ref_00023997  ; push 0x23997
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f491:  ; not directly referenced
mov ebx, dword [ebp - 4]
leave
ret

fcn_0000f496:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f4b8  ; je 0xf4b8
push eax
push eax
push ref_000239a1  ; push 0x239a1
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f4b8:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f4d7  ; je 0xf4d7
push eax
mov al, byte [ebx]
and eax, 1
push eax
push ref_000239dd  ; push 0x239dd
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f4d7:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f4f8  ; je 0xf4f8
push eax
mov al, byte [ebx]
shr al, 1
and eax, 1
push eax
push ref_000239ed  ; push 0x239ed
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f4f8:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f51a  ; je 0xf51a
push eax
mov al, byte [ebx]
shr al, 2
and eax, 1
push eax
push ref_00023a01  ; push 0x23a01
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f51a:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f53c  ; je 0xf53c
push ecx
mov al, byte [ebx]
shr al, 3
and eax, 1
push eax
push ref_00023a14  ; push 0x23a14
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f53c:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f55e  ; je 0xf55e
push edx
mov al, byte [ebx]
shr al, 4
and eax, 1
push eax
push ref_00023a22  ; push 0x23a22
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f55e:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f580  ; je 0xf580
push eax
mov al, byte [ebx]
shr al, 5
and eax, 1
push eax
push ref_00023a31  ; push 0x23a31
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f580:  ; not directly referenced
mov ebx, dword [ebp - 4]
leave
ret

fcn_0000f585:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f5a7  ; je 0xf5a7
push eax
push eax
push ref_00023a3e  ; push 0x23a3e
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f5a7:  ; not directly referenced
xor ebx, ebx

loc_0000f5a9:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f5c9  ; je 0xf5c9
mov al, byte [esi + ebx*8]
and eax, 1
push eax
push ebx
push ref_00023a81  ; push 0x23a81
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f5c9:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f5eb  ; je 0xf5eb
mov al, byte [esi + ebx*8]
shr al, 1
and eax, 1
push eax
push ebx
push ref_00023aa1  ; push 0x23aa1
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f5eb:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f60a  ; je 0xf60a
movzx eax, word [esi + ebx*8 + 4]
push eax
push ebx
push ref_00023ac0  ; push 0x23ac0
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f60a:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f629  ; je 0xf629
movzx eax, word [esi + ebx*8 + 6]
push eax
push ebx
push ref_00023ade  ; push 0x23ade
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f629:  ; not directly referenced
inc ebx
cmp ebx, 5
jne loc_0000f5a9  ; jne 0xf5a9
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0000f63a:  ; not directly referenced
push ebp
mov ebp, esp
push esi
push ebx
mov ebx, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f65c  ; je 0xf65c
push eax
push eax
push ref_00023afb  ; push 0x23afb
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f65c:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f679  ; je 0xf679
push eax
movzx eax, byte [ebx]
push eax
push ref_000233c4  ; push 0x233c4
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f679:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f697  ; je 0xf697
push eax
movzx eax, word [ebx + 2]
push eax
push ref_00023b33  ; push 0x23b33
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f697:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f6b5  ; je 0xf6b5
push esi
movzx eax, byte [ebx + 7]
push eax
push ref_00023b45  ; push 0x23b45
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f6b5:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f6cf  ; je 0xf6cf
push ecx
push ecx
push ref_00023b61  ; push 0x23b61
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f6cf:  ; not directly referenced
xor esi, esi

loc_0000f6d1:  ; not directly referenced
movzx eax, byte [ebx + 7]
cmp esi, eax
jae short loc_0000f6fb  ; jae 0xf6fb
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f6f8  ; je 0xf6f8
push edx
movzx eax, byte [ebx + esi + 8]
push eax
push ref_00023b7b  ; push 0x23b7b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f6f8:  ; not directly referenced
inc esi
jmp short loc_0000f6d1  ; jmp 0xf6d1

loc_0000f6fb:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f715  ; je 0xf715
push eax
push eax
push ref_00023b82  ; push 0x23b82
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f715:  ; not directly referenced
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0000f71c:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f73e  ; je 0xf73e
push eax
push eax
push ref_00023b86  ; push 0x23b86
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f73e:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f75b  ; je 0xf75b
push eax
movzx eax, byte [ebx]
push eax
push ref_000233c4  ; push 0x233c4
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f75b:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f779  ; je 0xf779
push eax
movzx eax, byte [ebx + 1]
push eax
push ref_00023bbf  ; push 0x23bbf
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f779:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f797  ; je 0xf797
push ecx
movzx eax, byte [ebx + 2]
push eax
push ref_00023bc9  ; push 0x23bc9
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f797:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f7b5  ; je 0xf7b5
push edx
movzx eax, byte [ebx + 2]
push eax
push ref_00023bc9  ; push 0x23bc9
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f7b5:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f7d3  ; je 0xf7d3
push eax
movzx eax, word [ebx + 4]
push eax
push ref_00023bdb  ; push 0x23bdb
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f7d3:  ; not directly referenced
mov ebx, dword [ebp - 4]
leave
ret

fcn_0000f7d8:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f7fa  ; je 0xf7fa
push eax
push eax
push ref_00023bf0  ; push 0x23bf0
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f7fa:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f819  ; je 0xf819
push eax
mov al, byte [ebx]
and eax, 1
push eax
push ref_00023c25  ; push 0x23c25
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f819:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f83a  ; je 0xf83a
push eax
mov al, byte [ebx]
shr al, 1
and eax, 1
push eax
push ref_00023c4b  ; push 0x23c4b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f83a:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f85c  ; je 0xf85c
push ecx
mov al, byte [ebx]
shr al, 2
and eax, 1
push eax
push ref_00023c75  ; push 0x23c75
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f85c:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f87e  ; je 0xf87e
push edx
mov al, byte [ebx]
shr al, 3
and eax, 1
push eax
push ref_00023c9f  ; push 0x23c9f
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f87e:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f8a0  ; je 0xf8a0
push eax
mov al, byte [ebx]
shr al, 4
and eax, 1
push eax
push ref_00023cc9  ; push 0x23cc9
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f8a0:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f8c0  ; je 0xf8c0
push eax
mov al, byte [ebx + 4]
and eax, 1
push eax
push ref_00023cf1  ; push 0x23cf1
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f8c0:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f8e2  ; je 0xf8e2
push eax
mov al, byte [ebx + 4]
shr al, 1
and eax, 1
push eax
push ref_00023d0d  ; push 0x23d0d
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f8e2:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f905  ; je 0xf905
push eax
mov al, byte [ebx + 4]
shr al, 2
and eax, 1
push eax
push ref_00023d30  ; push 0x23d30
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f905:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f928  ; je 0xf928
push eax
mov al, byte [ebx + 4]
shr al, 3
and eax, 1
push eax
push ref_00023d54  ; push 0x23d54
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f928:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f94b  ; je 0xf94b
push eax
mov al, byte [ebx + 4]
shr al, 4
and eax, 1
push eax
push ref_00023d78  ; push 0x23d78
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f94b:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f96e  ; je 0xf96e
push ecx
mov al, byte [ebx + 4]
shr al, 5
and eax, 1
push eax
push ref_00023d96  ; push 0x23d96
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f96e:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f98a  ; je 0xf98a
push edx
push dword [ebx + 8]
push ref_00023dba  ; push 0x23dba
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f98a:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f9a6  ; je 0xf9a6
push eax
push dword [ebx + 0xc]
push ref_00023dcd  ; push 0x23dcd
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f9a6:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f9c2  ; je 0xf9c2
push eax
push dword [ebx + 0x10]
push ref_00023de5  ; push 0x23de5
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f9c2:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f9de  ; je 0xf9de
push eax
push dword [ebx + 0x14]
push ref_00023dfd  ; push 0x23dfd
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f9de:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000f9fa  ; je 0xf9fa
push eax
push dword [ebx + 0x18]
push ref_00023e16  ; push 0x23e16
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000f9fa:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fa1a  ; je 0xfa1a
push eax
mov al, byte [ebx + 0x1c]
and eax, 1
push eax
push ref_00023e2d  ; push 0x23e2d
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fa1a:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fa3c  ; je 0xfa3c
push eax
mov al, byte [ebx + 0x1c]
shr al, 1
and eax, 1
push eax
push ref_00023e3f  ; push 0x23e3f
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fa3c:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fa5f  ; je 0xfa5f
push ecx
mov al, byte [ebx + 0x1c]
shr al, 2
and eax, 1
push eax
push ref_00023e53  ; push 0x23e53
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fa5f:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fa82  ; je 0xfa82
push edx
mov al, byte [ebx + 0x1c]
shr al, 3
and eax, 1
push eax
push ref_00023e65  ; push 0x23e65
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fa82:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000faa0  ; je 0xfaa0
push eax
movzx eax, byte [ebx + 0x20]
push eax
push ref_00023e7c  ; push 0x23e7c
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000faa0:  ; not directly referenced
mov ebx, dword [ebp - 4]
leave
ret

fcn_0000faa5:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fac7  ; je 0xfac7
push eax
push eax
push ref_00023e8f  ; push 0x23e8f
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fac7:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fae6  ; je 0xfae6
push eax
mov al, byte [ebx]
and eax, 1
push eax
push ref_00023ec5  ; push 0x23ec5
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fae6:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fb07  ; je 0xfb07
push eax
mov al, byte [ebx]
shr al, 1
and eax, 1
push eax
push ref_00023ed3  ; push 0x23ed3
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fb07:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fb29  ; je 0xfb29
push eax
mov al, byte [ebx]
shr al, 2
and eax, 1
push eax
push ref_00023ee4  ; push 0x23ee4
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fb29:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fb4b  ; je 0xfb4b
push ecx
mov al, byte [ebx]
shr al, 3
and eax, 1
push eax
push ref_000237cd  ; push 0x237cd
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fb4b:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fb6d  ; je 0xfb6d
push edx
mov al, byte [ebx]
shr al, 4
and eax, 1
push eax
push ref_00023ef1  ; push 0x23ef1
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fb6d:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fb8f  ; je 0xfb8f
push eax
mov al, byte [ebx]
shr al, 5
and eax, 1
push eax
push ref_00023f07  ; push 0x23f07
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fb8f:  ; not directly referenced
mov ebx, dword [ebp - 4]
leave
ret

fcn_0000fb94:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fbb6  ; je 0xfbb6
push eax
push eax
push ref_00023f1c  ; push 0x23f1c
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fbb6:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fbd3  ; je 0xfbd3
push ecx
movzx eax, byte [ebx]
push eax
push ref_00023f57  ; push 0x23f57
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fbd3:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fbef  ; je 0xfbef
push edx
push dword [ebx + 4]
push ref_00023f68  ; push 0x23f68
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fbef:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fc0b  ; je 0xfc0b
push eax
push dword [ebx + 8]
push ref_00023f77  ; push 0x23f77
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fc0b:  ; not directly referenced
mov ebx, dword [ebp - 4]
leave
ret

fcn_0000fc10:  ; not directly referenced
push ebp
mov ebp, esp
push esi
push ebx
mov ebx, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fc32  ; je 0xfc32
push ecx
push ecx
push ref_00023f8d  ; push 0x23f8d
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fc32:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fc51  ; je 0xfc51
push edx
mov al, byte [ebx]
and eax, 1
push eax
push ref_00023fc7  ; push 0x23fc7
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fc51:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fc72  ; je 0xfc72
push eax
mov al, byte [ebx]
shr al, 1
and eax, 1
push eax
push ref_00023fe8  ; push 0x23fe8
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fc72:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fc94  ; je 0xfc94
push eax
mov al, byte [ebx]
shr al, 2
and eax, 1
push eax
push ref_00024008  ; push 0x24008
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fc94:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fcb6  ; je 0xfcb6
push eax
mov al, byte [ebx]
shr al, 3
and eax, 1
push eax
push ref_0002402b  ; push 0x2402b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fcb6:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fce0  ; je 0xfce0
push eax
movzx eax, byte [ebx + 5]
movzx edx, byte [ebx + 4]
and eax, 1
shl eax, 8
or eax, edx
push eax
push ref_0002404d  ; push 0x2404d
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fce0:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fd0e  ; je 0xfd0e
push eax
mov al, byte [ebx + 5]
shr al, 1
movzx edx, al
movzx eax, byte [ebx + 6]
and eax, 3
shl eax, 7
or eax, edx
push eax
push ref_00024087  ; push 0x24087
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fd0e:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fd3d  ; je 0xfd3d
push eax
mov al, byte [ebx + 6]
shr al, 2
movzx edx, al
movzx eax, byte [ebx + 7]
and eax, 7
shl eax, 6
or eax, edx
push eax
push ref_000240c1  ; push 0x240c1
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fd3d:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fd60  ; je 0xfd60
push esi
mov al, byte [ebx + 7]
shr al, 3
and eax, 1
push eax
push ref_000240fb  ; push 0x240fb
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fd60:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fd83  ; je 0xfd83
push ecx
mov al, byte [ebx + 7]
shr al, 4
and eax, 1
push eax
push ref_00024124  ; push 0x24124
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fd83:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fda6  ; je 0xfda6
push edx
mov al, byte [ebx + 7]
shr al, 5
and eax, 1
push eax
push ref_00024154  ; push 0x24154
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fda6:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fdc9  ; je 0xfdc9
push eax
mov al, byte [ebx + 7]
shr al, 6
and eax, 1
push eax
push ref_0002417b  ; push 0x2417b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fdc9:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fdec  ; je 0xfdec
push eax
mov al, byte [ebx + 7]
shr al, 7
movzx eax, al
push eax
push ref_000241ac  ; push 0x241ac
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fdec:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fe0c  ; je 0xfe0c
push eax
mov al, byte [ebx + 0xc]
and eax, 1
push eax
push ref_000241df  ; push 0x241df
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fe0c:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fe2c  ; je 0xfe2c
push eax
mov al, byte [ebx + 0xd]
and eax, 3
push eax
push ref_00024209  ; push 0x24209
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fe2c:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fe4f  ; je 0xfe4f
push eax
mov al, byte [ebx + 0xd]
shr al, 2
and eax, 3
push eax
push ref_0002422f  ; push 0x2422f
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fe4f:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fe72  ; je 0xfe72
push eax
mov al, byte [ebx + 0xd]
shr al, 4
and eax, 3
push eax
push ref_00024255  ; push 0x24255
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fe72:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fe95  ; je 0xfe95
push esi
mov al, byte [ebx + 0xd]
shr al, 6
movzx eax, al
push eax
push ref_0002427b  ; push 0x2427b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fe95:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000feb7  ; je 0xfeb7
push ecx
mov al, byte [ebx + 0xc]
shr al, 1
and eax, 1
push eax
push ref_000242a1  ; push 0x242a1
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000feb7:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fed7  ; je 0xfed7
push edx
mov al, byte [ebx + 0x10]
and eax, 3
push eax
push ref_000242d2  ; push 0x242d2
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fed7:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000fefa  ; je 0xfefa
push eax
mov al, byte [ebx + 0x10]
shr al, 2
and eax, 3
push eax
push ref_000242f6  ; push 0x242f6
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000fefa:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ff1d  ; je 0xff1d
push eax
mov al, byte [ebx + 0x10]
shr al, 4
and eax, 3
push eax
push ref_0002431a  ; push 0x2431a
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ff1d:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ff40  ; je 0xff40
push eax
mov al, byte [ebx + 0x10]
shr al, 6
movzx eax, al
push eax
push ref_0002433e  ; push 0x2433e
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ff40:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ff60  ; je 0xff60
push eax
mov al, byte [ebx + 0x12]
and eax, 3
push eax
push ref_00024364  ; push 0x24364
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ff60:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ff83  ; je 0xff83
push eax
mov al, byte [ebx + 0x12]
shr al, 2
and eax, 1
push eax
push ref_0002438b  ; push 0x2438b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ff83:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ffa3  ; je 0xffa3
push eax
mov al, byte [ebx + 0x11]
and eax, 3
push eax
push ref_000243b6  ; push 0x243b6
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ffa3:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ffc6  ; je 0xffc6
push esi
mov al, byte [ebx + 0x11]
shr al, 2
and eax, 3
push eax
push ref_000243da  ; push 0x243da
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ffc6:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0000ffe9  ; je 0xffe9
push ecx
mov al, byte [ebx + 0x11]
shr al, 4
and eax, 3
push eax
push ref_000243fe  ; push 0x243fe
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0000ffe9:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001000c  ; je 0x1000c
push edx
mov al, byte [ebx + 0x11]
shr al, 6
movzx eax, al
push eax
push ref_00024422  ; push 0x24422
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001000c:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001002f  ; je 0x1002f
push eax
mov al, byte [ebx + 0x12]
shr al, 3
and eax, 3
push eax
push ref_00024448  ; push 0x24448
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001002f:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010052  ; je 0x10052
push eax
mov al, byte [ebx + 0x12]
shr al, 5
and eax, 1
push eax
push ref_0002446f  ; push 0x2446f
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010052:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010075  ; je 0x10075
push eax
mov al, byte [ebx + 0x12]
shr al, 6
and eax, 1
push eax
push ref_0002449a  ; push 0x2449a
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010075:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010095  ; je 0x10095
push eax
mov al, byte [ebx + 0x14]
and eax, 1
push eax
push ref_000244c9  ; push 0x244c9
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010095:  ; not directly referenced
mov esi, 2

loc_0001009a:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000100bb  ; je 0x100bb
push eax
mov al, byte [ebx + esi*4 + 0x18]
and eax, 1
push eax
push ref_000244e7  ; push 0x244e7
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000100bb:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000100de  ; je 0x100de
push eax
mov al, byte [ebx + esi*4 + 0x18]
shr al, 1
and eax, 1
push eax
push ref_0002451c  ; push 0x2451c
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000100de:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010102  ; je 0x10102
push ecx
mov al, byte [ebx + esi*4 + 0x18]
shr al, 2
and eax, 1
push eax
push ref_00024555  ; push 0x24555
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010102:  ; not directly referenced
inc esi
cmp esi, 4
jne short loc_0001009a  ; jne 0x1009a
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010126  ; je 0x10126
push edx
movzx eax, word [ebx + 0x28]
push eax
push ref_0002458a  ; push 0x2458a
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010126:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010144  ; je 0x10144
push eax
movzx eax, byte [ebx + 0x2a]
push eax
push ref_0002459d  ; push 0x2459d
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010144:  ; not directly referenced
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0001014b:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001016d  ; je 0x1016d
push eax
push eax
push ref_000245bf  ; push 0x245bf
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001016d:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001018a  ; je 0x1018a
push eax
movzx eax, word [ebx]
push eax
push ref_000245f9  ; push 0x245f9
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001018a:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000101a8  ; je 0x101a8
push ecx
movzx eax, word [ebx + 2]
push eax
push ref_00024611  ; push 0x24611
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000101a8:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000101c6  ; je 0x101c6
push edx
movzx eax, byte [ebx + 4]
push eax
push ref_00024623  ; push 0x24623
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000101c6:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000101e4  ; je 0x101e4
push eax
movzx eax, byte [ebx + 5]
push eax
push ref_0002462e  ; push 0x2462e
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000101e4:  ; not directly referenced
mov ebx, dword [ebp - 4]
leave
ret

fcn_000101e9:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push ebx
mov ebx, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001020b  ; je 0x1020b
push ecx
push ecx
push ref_0002463a  ; push 0x2463a
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001020b:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010228  ; je 0x10228
push edx
movzx eax, byte [ebx]
push eax
push ref_000233c4  ; push 0x233c4
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010228:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010246  ; je 0x10246
push eax
movzx eax, byte [ebx + 1]
push eax
push ref_0002300d  ; push 0x2300d
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010246:  ; not directly referenced
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001024b:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push edx
mov ebx, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001026d  ; je 0x1026d
push eax
push eax
push ref_00024670  ; push 0x24670
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001026d:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010290  ; je 0x10290
push eax
mov al, byte [ebx + 8]
shr al, 7
movzx eax, al
push eax
push ref_000246ac  ; push 0x246ac
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010290:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000102ad  ; je 0x102ad
push eax
movzx eax, byte [ebx]
push eax
push ref_000246bf  ; push 0x246bf
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000102ad:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000102cb  ; je 0x102cb
push eax
movzx eax, byte [ebx + 1]
push eax
push ref_000246d1  ; push 0x246d1
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000102cb:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000102e9  ; je 0x102e9
push eax
movzx eax, byte [ebx + 2]
push eax
push ref_000246e4  ; push 0x246e4
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000102e9:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010307  ; je 0x10307
push eax
movzx eax, byte [ebx + 3]
push eax
push ref_000246f7  ; push 0x246f7
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010307:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010325  ; je 0x10325
push ecx
movzx eax, byte [ebx + 4]
push eax
push ref_0002470a  ; push 0x2470a
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010325:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010343  ; je 0x10343
push edx
movzx eax, byte [ebx + 5]
push eax
push ref_0002471d  ; push 0x2471d
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010343:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010361  ; je 0x10361
push eax
movzx eax, byte [ebx + 6]
push eax
push ref_00024731  ; push 0x24731
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010361:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001037f  ; je 0x1037f
push eax
movzx eax, byte [ebx + 7]
push eax
push ref_00024745  ; push 0x24745
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001037f:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001039f  ; je 0x1039f
push eax
mov al, byte [ebx + 8]
and eax, 1
push eax
push ref_00024758  ; push 0x24758
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001039f:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000103c1  ; je 0x103c1
push eax
mov al, byte [ebx + 8]
shr al, 1
and eax, 1
push eax
push ref_00024770  ; push 0x24770
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000103c1:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000103e4  ; je 0x103e4
push eax
mov al, byte [ebx + 8]
shr al, 2
and eax, 1
push eax
push ref_00024788  ; push 0x24788
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000103e4:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010407  ; je 0x10407
push eax
mov al, byte [ebx + 8]
shr al, 3
and eax, 1
push eax
push ref_0002479b  ; push 0x2479b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010407:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001042a  ; je 0x1042a
push ecx
mov al, byte [ebx + 8]
shr al, 4
and eax, 1
push eax
push ref_000247b6  ; push 0x247b6
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001042a:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001044d  ; je 0x1044d
push edx
mov al, byte [ebx + 8]
shr al, 5
and eax, 1
push eax
push ref_000247cf  ; push 0x247cf
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001044d:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010470  ; je 0x10470
push eax
mov al, byte [ebx + 8]
shr al, 6
and eax, 1
push eax
push ref_000247e9  ; push 0x247e9
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010470:  ; not directly referenced
mov ebx, dword [ebp - 4]
leave
ret

fcn_00010475:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010497  ; je 0x10497
push eax
push eax
push ref_000247fc  ; push 0x247fc
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010497:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000104b6  ; je 0x104b6
push eax
mov al, byte [ebx]
and eax, 1
push eax
push ref_000233c4  ; push 0x233c4
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000104b6:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000104d7  ; je 0x104d7
push eax
mov al, byte [ebx]
shr al, 1
and eax, 1
push eax
push ref_00024838  ; push 0x24838
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000104d7:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000104f9  ; je 0x104f9
push eax
mov al, byte [ebx]
shr al, 2
and eax, 1
push eax
push ref_0002484f  ; push 0x2484f
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000104f9:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001051b  ; je 0x1051b
push eax
mov al, byte [ebx]
shr al, 5
and eax, 1
push eax
push ref_0002486b  ; push 0x2486b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001051b:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001053d  ; je 0x1053d
push ecx
mov al, byte [ebx]
shr al, 3
and eax, 1
push eax
push ref_00024889  ; push 0x24889
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001053d:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001055f  ; je 0x1055f
push edx
mov al, byte [ebx]
shr al, 4
and eax, 1
push eax
push ref_000248a8  ; push 0x248a8
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001055f:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001057b  ; je 0x1057b
push eax
push dword [ebx + 4]
push ref_000248c8  ; push 0x248c8
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001057b:  ; not directly referenced
mov ebx, dword [ebp - 4]
leave
ret

fcn_00010580:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000105a2  ; je 0x105a2
push eax
push eax
push ref_000248e2  ; push 0x248e2
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000105a2:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000105bf  ; je 0x105bf
push eax
movzx eax, byte [ebx]
push eax
push ref_0002491b  ; push 0x2491b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000105bf:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000105dd  ; je 0x105dd
push eax
movzx eax, byte [ebx + 1]
push eax
push ref_0002492f  ; push 0x2492f
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000105dd:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000105fb  ; je 0x105fb
push eax
movzx eax, byte [ebx + 8]
push eax
push ref_0002493f  ; push 0x2493f
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000105fb:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010619  ; je 0x10619
push ecx
movzx eax, byte [ebx + 9]
push eax
push ref_00024953  ; push 0x24953
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010619:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010635  ; je 0x10635
push edx
push dword [ebx + 0xa]
push ref_00024967  ; push 0x24967
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010635:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010651  ; je 0x10651
push eax
push dword [ebx + 0xe]
push ref_0002497d  ; push 0x2497d
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010651:  ; not directly referenced
mov ebx, dword [ebp - 4]
leave
ret

fcn_00010656:  ; not directly referenced
push ebp
mov ebp, esp
push esi
push ebx
mov ebx, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010678  ; je 0x10678
push eax
push eax
push ref_0002498f  ; push 0x2498f
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010678:  ; not directly referenced
xor esi, esi

loc_0001067a:  ; not directly referenced
mov eax, esi
cmp al, byte [ebx + 0x48]
jae short loc_000106c7  ; jae 0x106c7
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000106a2  ; je 0x106a2
mov eax, esi
movzx eax, al
push dword [ebx + eax*8]
push eax
push ref_000249cb  ; push 0x249cb
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000106a2:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000106c4  ; je 0x106c4
mov eax, esi
movzx eax, al
push dword [ebx + eax*8 + 4]
push eax
push ref_000249e3  ; push 0x249e3
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000106c4:  ; not directly referenced
inc esi
jmp short loc_0001067a  ; jmp 0x1067a

loc_000106c7:  ; not directly referenced
xor esi, esi

loc_000106c9:  ; not directly referenced
mov eax, esi
cmp al, byte [ebx + 0x75]
jae short loc_0001071b  ; jae 0x1071b
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000106f4  ; je 0x106f4
mov eax, esi
movzx eax, al
movzx edx, word [ebx + eax*4 + 0x49]
push edx
push eax
push ref_000249fd  ; push 0x249fd
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000106f4:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010718  ; je 0x10718
mov eax, esi
movzx eax, al
movzx edx, word [ebx + eax*4 + 0x4b]
push edx
push eax
push ref_00024a15  ; push 0x24a15
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010718:  ; not directly referenced
inc esi
jmp short loc_000106c9  ; jmp 0x106c9

loc_0001071b:  ; not directly referenced
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_00010722:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010744  ; je 0x10744
push eax
push eax
push ref_00024a2f  ; push 0x24a2f
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010744:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010761  ; je 0x10761
push eax
movzx eax, byte [ebx]
push eax
push ref_00024a81  ; push 0x24a81
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010761:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001077f  ; je 0x1077f
push eax
movzx eax, byte [ebx + 1]
push eax
push ref_000238b2  ; push 0x238b2
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001077f:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001079b  ; je 0x1079b
push eax
push dword [ebx + 4]
push ref_00024a90  ; push 0x24a90
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001079b:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000107b9  ; je 0x107b9
push eax
movzx eax, word [ebx + 8]
push eax
push ref_00024a9b  ; push 0x24a9b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000107b9:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000107d7  ; je 0x107d7
push ecx
movzx eax, word [ebx + 0xa]
push eax
push ref_00024aa8  ; push 0x24aa8
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000107d7:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000107f5  ; je 0x107f5
push edx
movzx eax, byte [ebx + 0xc]
push eax
push ref_00024ab7  ; push 0x24ab7
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000107f5:  ; not directly referenced
sub esp, 0xc
lea eax, [ebx + 0x10]
push eax
call fcn_00010580  ; call 0x10580
lea eax, [ebx + 0x36]
mov dword [esp], eax
call fcn_0001014b  ; call 0x1014b
lea eax, [ebx + 0x46]
mov dword [esp], eax
call fcn_0000e6b1  ; call 0xe6b1
lea eax, [ebx + 0x1da]
mov dword [esp], eax
call fcn_0000ebe1  ; call 0xebe1
lea eax, [ebx + 0x284]
mov dword [esp], eax
call fcn_0000e1fd  ; call 0xe1fd
lea eax, [ebx + 0x57c]
mov dword [esp], eax
call fcn_0000e544  ; call 0xe544
lea eax, [ebx + 0x35c]
mov dword [esp], eax
call fcn_0000f2c6  ; call 0xf2c6
lea eax, [ebx + 0x364]
mov dword [esp], eax
call fcn_0000f3be  ; call 0xf3be
lea eax, [ebx + 0x370]
mov dword [esp], eax
call fcn_0000f71c  ; call 0xf71c
lea eax, [ebx + 0x37e]
mov dword [esp], eax
call fcn_000101e9  ; call 0x101e9
lea eax, [ebx + 0x386]
mov dword [esp], eax
call fcn_0000f63a  ; call 0xf63a
lea eax, [ebx + 0x40e]
mov dword [esp], eax
call fcn_0000f496  ; call 0xf496
lea eax, [ebx + 0x554]
mov dword [esp], eax
call fcn_0000f585  ; call 0xf585
lea eax, [ebx + 0x412]
mov dword [esp], eax
call fcn_0000fc10  ; call 0xfc10
lea eax, [ebx + 0x442]
mov dword [esp], eax
call fcn_0000f7d8  ; call 0xf7d8
lea eax, [ebx + 0x46a]
mov dword [esp], eax
call fcn_0000faa5  ; call 0xfaa5
lea eax, [ebx + 0x476]
mov dword [esp], eax
call fcn_0000fb94  ; call 0xfb94
lea eax, [ebx + 0x486]
mov dword [esp], eax
call fcn_00010475  ; call 0x10475
lea eax, [ebx + 0x496]
add ebx, 0x4de
mov dword [esp], eax
call fcn_0001024b  ; call 0x1024b
mov dword [esp], ebx
call fcn_00010656  ; call 0x10656
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_00010922  ; je 0x10922
push eax
push eax
push ref_00024ac9  ; push 0x24ac9
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010922:  ; not directly referenced
mov ebx, dword [ebp - 4]
leave
ret

fcn_00010927:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00010956  ; je 0x10956
cmp dword [ebx + 4], 0
jne short loc_00010956  ; jne 0x10956
push eax
push ref_00024b1b  ; push 0x24b1b
push 0x2bf
push ref_00024b38  ; push 0x24b38
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00010956:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001097e  ; je 0x1097e
cmp word [ebx + 8], 0
jne short loc_0001097e  ; jne 0x1097e
push eax
push ref_00024b63  ; push 0x24b63
push 0x2c0
push ref_00024b38  ; push 0x24b38
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001097e:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000109a6  ; je 0x109a6
cmp word [ebx + 0xa], 0
jne short loc_000109a6  ; jne 0x109a6
push eax
push ref_00024b82  ; push 0x24b82
push 0x2c1
push ref_00024b38  ; push 0x24b38
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000109a6:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000109cd  ; je 0x109cd
cmp dword [ebx + 0x1a], 0
jne short loc_000109cd  ; jne 0x109cd
push eax
push ref_00024ba3  ; push 0x24ba3
push 0x2c2
push ref_00024b38  ; push 0x24b38
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000109cd:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000109f7  ; je 0x109f7
cmp dword [ebx + 0x1e], 0xffff
ja short loc_000109f7  ; ja 0x109f7
push ecx
push ref_00024bd8  ; push 0x24bd8
push 0x2c3
push ref_00024b38  ; push 0x24b38
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000109f7:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00010a1f  ; je 0x10a1f
cmp word [ebx + 0x22], 0
jne short loc_00010a1f  ; jne 0x10a1f
push edx
push ref_00024c0f  ; push 0x24c0f
push 0x2c4
push ref_00024b38  ; push 0x24b38
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00010a1f:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00010a47  ; je 0x10a47
cmp word [ebx + 0x24], 0xf
ja short loc_00010a47  ; ja 0x10a47
push eax
push ref_00024c43  ; push 0x24c43
push 0x2c5
push ref_00024b38  ; push 0x24b38
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00010a47:  ; not directly referenced
mov ebx, dword [ebp - 4]
leave
ret

fcn_00010a4c:  ; not directly referenced
push ebp
mov ebp, esp
push esi
push ebx
sub esp, 0x10
movzx edx, byte [ebp + 0x10]
movzx eax, byte [ebp + 0x14]
mov ecx, dword [ebp + 0xc]
mov ebx, dword [ebp + 8]
shl edx, 0x18
and edx, 0xf000000
or eax, 0x80000000
or eax, edx
cmp cl, 1
je short loc_00010a93  ; je 0x10a93
jb short loc_00010a8b  ; jb 0x10a8b
cmp cl, 2
je short loc_00010a9b  ; je 0x10a9b
cmp cl, 3
jne short loc_00010acd  ; jne 0x10acd
add ebx, 0x2040
jmp short loc_00010aa1  ; jmp 0x10aa1

loc_00010a8b:  ; not directly referenced
add ebx, 0x2014
jmp short loc_00010aa1  ; jmp 0x10aa1

loc_00010a93:  ; not directly referenced
add ebx, 0x2020
jmp short loc_00010aa1  ; jmp 0x10aa1

loc_00010a9b:  ; not directly referenced
add ebx, 0x2030

loc_00010aa1:  ; not directly referenced
push edx
xor esi, esi
push eax
push 0xf0ffff01
push ebx
mov dword [ebp - 0xc], ecx
call fcn_00018aa4  ; call 0x18aa4
mov ecx, dword [ebp - 0xc]
add esp, 0x10
dec ecx
cmp cl, 1
ja short loc_00010ad2  ; ja 0x10ad2
sub esp, 0xc
push ebx
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
jmp short loc_00010ad2  ; jmp 0x10ad2

loc_00010acd:  ; not directly referenced
mov esi, 0x80000002

loc_00010ad2:  ; not directly referenced
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_00010adb:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push eax
mov eax, dword [ebp + 0xc]
mov ebx, dword [ebp + 8]
cmp al, 1
je short loc_00010b04  ; je 0x10b04
jb short loc_00010afc  ; jb 0x10afc
cmp al, 2
je short loc_00010b0c  ; je 0x10b0c
cmp al, 3
jne short loc_00010b24  ; jne 0x10b24
add ebx, 0x2046
jmp short loc_00010b12  ; jmp 0x10b12

loc_00010afc:  ; not directly referenced
add ebx, 0x201a
jmp short loc_00010b12  ; jmp 0x10b12

loc_00010b04:  ; not directly referenced
add ebx, 0x2026
jmp short loc_00010b12  ; jmp 0x10b12

loc_00010b0c:  ; not directly referenced
add ebx, 0x2036

loc_00010b12:  ; not directly referenced
sub esp, 0xc
push ebx
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test al, 2
jne short loc_00010b12  ; jne 0x10b12
jmp short loc_00010b2b  ; jmp 0x10b2b

loc_00010b24:  ; not directly referenced
mov eax, 0x80000002
jmp short loc_00010b2d  ; jmp 0x10b2d

loc_00010b2b:  ; not directly referenced
xor eax, eax

loc_00010b2d:  ; not directly referenced
mov ebx, dword [ebp - 4]
leave
ret

fcn_00010b32:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x2c
lea eax, [ebp - 0x20]
push eax
push 0
push 0
push ref_000290cc  ; push 0x290cc
mov dword [ebp - 0x1c], 0
call fcn_00019699  ; call 0x19699
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00010b9b  ; je 0x10b9b
test ebx, ebx
jns short loc_00010b9b  ; jns 0x10b9b
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010b83  ; je 0x10b83
push edi
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010b83:  ; not directly referenced
push esi
push ref_00020664  ; push 0x20664
push 0xa7
push ref_00024c76  ; push 0x24c76
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00010b9b:  ; not directly referenced
push ebx
push 0
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xf0
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0xc
push 0x200000
push 0xff0fffff
mov esi, eax
and esi, 0xffffc000
lea edi, [esi + 0x50]
push edi
call fcn_00018aa4  ; call 0x18aa4
mov eax, dword [ebp - 0x20]
add esp, 0x10
cmp byte [eax + 0x24], 1
jne short loc_00010bee  ; jne 0x10bee
push ecx
push ecx
push 0xa0000
push edi
call fcn_00018a50  ; call 0x18a50
add esp, 0x10

loc_00010bee:  ; not directly referenced
sub esp, 0xc
xor ebx, ebx
push edi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10

loc_00010bfc:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010c1b  ; je 0x10c1b
mov eax, dword [ebp - 0x20]
push dword [eax + ebx*4]
push ebx
push ref_00024c9f  ; push 0x24c9f
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010c1b:  ; not directly referenced
mov eax, dword [ebp - 0x20]
mov cl, bl
mov edx, dword [eax + ebx*4]
mov eax, 1
inc ebx
shl eax, cl
or byte [ebp + edx - 0x1c], al
cmp ebx, 8
jne short loc_00010bfc  ; jne 0x10bfc
xor bl, bl

loc_00010c36:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
lea eax, [ebx + ebx]
je short loc_00010c6a  ; je 0x10c6a
mov edx, eax
sub esp, 0xc
add edx, dword [ebp - 0x20]
mov dword [ebp - 0x2c], eax
movzx ecx, byte [edx + 0x20]
push ecx
movzx edx, byte [edx + 0x21]
push edx
push ebx
push ref_00024caf  ; push 0x24caf
push 0x40
call fcn_000153f7  ; call 0x153f7
mov eax, dword [ebp - 0x2c]
add esp, 0x20

loc_00010c6a:  ; not directly referenced
add eax, dword [ebp - 0x20]
cmp byte [eax + 0x20], 1
jne short loc_00010c88  ; jne 0x10c88
movzx edx, byte [ebp + ebx - 0x1c]
push edx
movzx eax, byte [eax + 0x21]
push eax
push ebx
push esi
call fcn_00010a4c  ; call 0x10a4c
add esp, 0x10

loc_00010c88:  ; not directly referenced
inc ebx
cmp ebx, 4
jne short loc_00010c36  ; jne 0x10c36
push edx
xor bl, bl
push edx
push 0x80000000
push edi
call fcn_00018a50  ; call 0x18a50
mov dword [esp], edi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10

loc_00010ca8:  ; not directly referenced
mov eax, dword [ebp - 0x20]
cmp byte [eax + ebx*2 + 0x20], 1
jne short loc_00010cbe  ; jne 0x10cbe
push eax
push eax
push ebx
push esi
call fcn_00010adb  ; call 0x10adb
add esp, 0x10

loc_00010cbe:  ; not directly referenced
inc ebx
cmp ebx, 4
jne short loc_00010ca8  ; jne 0x10ca8
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00010cce:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push eax
call fcn_0001bef7  ; call 0x1bef7
dec eax
jne loc_00010d64  ; jne 0x10d64
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010cf9  ; je 0x10cf9
push ebx
push ebx
push ref_00024ccc  ; push 0x24ccc
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010cf9:  ; not directly referenced
push ecx
push 0
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xf0
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov ebx, eax
and ebx, 0xffffc000
lea eax, [ebx + 0x21a4]
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
and eax, 0xf
cmp eax, 2
jne short loc_00010d4a  ; jne 0x10d4a
push edx
add ebx, 0x21b0
push 2
push 0xf0
push ebx
call fcn_000186c6  ; call 0x186c6
add esp, 0x10

loc_00010d4a:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010d64  ; je 0x10d64
push eax
push eax
push ref_00024ce4  ; push 0x24ce4
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010d64:  ; not directly referenced
mov ebx, dword [ebp - 4]
leave
ret

fcn_00010d69:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov eax, dword [ebp + 0x14]
mov ebx, dword [ebp + 0x10]
add eax, 0x410
push eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
mov byte [ebp - 0x1b], al
cmp ebx, 0x22
ja short loc_00010da4  ; ja 0x10da4
cmp ebx, 0x20
jae short loc_00010dae  ; jae 0x10dae
cmp ebx, 1
jb short loc_00010dc6  ; jb 0x10dc6
cmp ebx, 3
jbe short loc_00010dba  ; jbe 0x10dba
cmp ebx, 0x10
je short loc_00010dba  ; je 0x10dba
jmp short loc_00010dc6  ; jmp 0x10dc6

loc_00010da4:
lea eax, [ebx - 0x41]
cmp eax, 2
jbe short loc_00010dcc  ; jbe 0x10dcc
jmp short loc_00010dc6  ; jmp 0x10dc6

loc_00010dae:
mov esi, ref_000284d8  ; mov esi, 0x284d8
mov edi, 0x14
jmp short loc_00010dd6  ; jmp 0x10dd6

loc_00010dba:
mov esi, ref_000275ec  ; mov esi, 0x275ec
mov edi, 0x24
jmp short loc_00010dd6  ; jmp 0x10dd6

loc_00010dc6:
xor esi, esi
xor edi, edi
jmp short loc_00010dd6  ; jmp 0x10dd6

loc_00010dcc:
mov esi, ref_00028ca4  ; mov esi, 0x28ca4
mov edi, 0x16

loc_00010dd6:
add esi, 8
mov word [ebp - 0x1a], 0

loc_00010ddf:
cmp word [ebp - 0x1a], di
je short loc_00010e4a  ; je 0x10e4a
push dword [esi]
push dword [esi - 4]
push dword [esi - 8]
push dword [ebp + 0x18]
call fcn_00009d54  ; call 0x9d54
mov dword [ebp - 0x20], eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00010e41  ; je 0x10e41
cmp dword [ebp - 0x20], 0
jns short loc_00010e41  ; jns 0x10e41
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010e29  ; je 0x10e29
push eax
push dword [ebp - 0x20]
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010e29:
push eax
push ref_00020664  ; push 0x20664
push 0x173
push ref_00024c76  ; push 0x24c76
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00010e41:
inc word [ebp - 0x1a]
add esi, 0xc
jmp short loc_00010ddf  ; jmp 0x10ddf

loc_00010e4a:
cmp ebx, 0x22
ja short loc_00010e65  ; ja 0x10e65
cmp ebx, 0x20
jae short loc_00010e6f  ; jae 0x10e6f
cmp ebx, 1
jb short loc_00010e87  ; jb 0x10e87
cmp ebx, 3
jbe short loc_00010e7b  ; jbe 0x10e7b
cmp ebx, 0x10
je short loc_00010e7b  ; je 0x10e7b
jmp short loc_00010e87  ; jmp 0x10e87

loc_00010e65:
sub ebx, 0x41
cmp ebx, 2
jbe short loc_00010e8d  ; jbe 0x10e8d
jmp short loc_00010e87  ; jmp 0x10e87

loc_00010e6f:
mov edi, ref_000283d0  ; mov edi, 0x283d0
mov esi, 0x16
jmp short loc_00010e97  ; jmp 0x10e97

loc_00010e7b:
mov edi, ref_0002779c  ; mov edi, 0x2779c
mov esi, 0x14
jmp short loc_00010e97  ; jmp 0x10e97

loc_00010e87:
xor edi, edi
xor esi, esi
jmp short loc_00010e97  ; jmp 0x10e97

loc_00010e8d:
mov edi, ref_00028b84  ; mov edi, 0x28b84
mov esi, 0x18

loc_00010e97:
mov dl, byte [ebp - 0x1b]
imul esi, esi, 0xc
mov al, dl
add esi, edi
and eax, 3
mov byte [ebp - 0x1a], al
mov al, dl
and eax, 0xc
mov byte [ebp - 0x20], al

loc_00010eaf:
cmp edi, esi
je loc_00010f5a  ; je 0x10f5a
cmp dword [ebp + 0xc], 2
jne short loc_00010ed4  ; jne 0x10ed4
mov eax, dword [edi]
and eax, 0xfe00
cmp eax, 0x2400
je short loc_00010ef5  ; je 0x10ef5
cmp eax, 0x2600
jne short loc_00010efb  ; jne 0x10efb
jmp short loc_00010ee8  ; jmp 0x10ee8

loc_00010ed4:
cmp dword [ebp + 0xc], 1
jne short loc_00010efb  ; jne 0x10efb
mov eax, dword [edi]
and eax, 0xfe00
cmp eax, 0x2c00
jne short loc_00010eee  ; jne 0x10eee

loc_00010ee8:
cmp byte [ebp - 0x20], 8
jmp short loc_00010ef9  ; jmp 0x10ef9

loc_00010eee:
cmp eax, 0x2e00
jne short loc_00010efb  ; jne 0x10efb

loc_00010ef5:
cmp byte [ebp - 0x1a], 2

loc_00010ef9:
jne short loc_00010f52  ; jne 0x10f52

loc_00010efb:
push dword [edi + 8]
push dword [edi + 4]
push dword [edi]
push dword [ebp + 0x18]
call fcn_00009d54  ; call 0x9d54
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00010f52  ; je 0x10f52
test ebx, ebx
jns short loc_00010f52  ; jns 0x10f52
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010f3a  ; je 0x10f3a
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010f3a:
push eax
push ref_00020664  ; push 0x20664
push 0x1a4
push ref_00024c76  ; push 0x24c76
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00010f52:
add edi, 0xc
jmp near loc_00010eaf  ; jmp 0x10eaf

loc_00010f5a:
mov eax, dword [ebp + 8]
xor ebx, ebx
cmp byte [eax], 8
ja short loc_00010f6b  ; ja 0x10f6b

loc_00010f64:
xor eax, eax
jmp near loc_0001119f  ; jmp 0x1119f

loc_00010f6b:
mov cl, byte [ebp - 0x1b]
mov al, cl
and eax, 0xc
mov byte [ebp - 0x1b], al
mov al, cl
and eax, 3
mov byte [ebp - 0x20], al

loc_00010f7e:
call fcn_0001c234  ; call 0x1c234
movzx eax, al
cmp ebx, eax
jae short loc_00010f64  ; jae 0x10f64
cmp ebx, 2
jne short loc_00010f95  ; jne 0x10f95
cmp byte [ebp - 0x20], 2
jmp short loc_00010f9e  ; jmp 0x10f9e

loc_00010f95:
cmp ebx, 3
jne short loc_00010fa4  ; jne 0x10fa4
cmp byte [ebp - 0x1b], 8

loc_00010f9e:
jne loc_00011199  ; jne 0x11199

loc_00010fa4:
cmp dword [ebp + 0xc], 1
jne short loc_00010fb3  ; jne 0x10fb3
mov esi, dword [ebx*4 + ref_000203c0]  ; mov esi, dword [ebx*4 + 0x203c0]
jmp short loc_00010fba  ; jmp 0x10fba

loc_00010fb3:
mov esi, dword [ebx*4 + ref_000203a8]  ; mov esi, dword [ebx*4 + 0x203a8]

loc_00010fba:
mov ecx, dword [ebp + 8]
lea eax, [ebx + 0xae]
test byte [ecx + eax*8 + 0x10], 1
je short loc_00011029  ; je 0x11029
movzx eax, byte [ecx + eax*8 + 0xc]
lea edx, [eax - 0x69]
cmp dl, 0x17
jbe short loc_0001101f  ; jbe 0x1101f
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00010ff4  ; je 0x10ff4
push eax
push eax
push ref_00024cfa  ; push 0x24cfa
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00010ff4:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00011015  ; je 0x11015
push eax
push ref_000221f1  ; push 0x221f1
push 0x1bd

loc_00011008:
push ref_00024c76  ; push 0x24c76
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00011015:
mov eax, 0x80000002
jmp near loc_0001119f  ; jmp 0x1119f

loc_0001101f:
shl eax, 0x10
mov edx, 0xff00ffff
jmp short loc_0001102e  ; jmp 0x1102e

loc_00011029:
xor eax, eax
or edx, 0xffffffff

loc_0001102e:
mov edi, dword [ebp + 8]
lea ecx, [ebx + 0xae]
test byte [edi + ecx*8 + 0x10], 2
je short loc_0001108f  ; je 0x1108f
mov cl, byte [edi + ecx*8 + 0xd]
lea edi, [ecx - 0x80]
mov byte [ebp - 0x1a], cl
mov ecx, edi
cmp cl, 0x1c
jbe short loc_00011082  ; jbe 0x11082
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001106c  ; je 0x1106c
push edi
push edi
push ref_00024d29  ; push 0x24d29
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001106c:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00011015  ; je 0x11015
push esi
push ref_000221f1  ; push 0x221f1
push 0x1ca
jmp short loc_00011008  ; jmp 0x11008

loc_00011082:
movzx ecx, byte [ebp - 0x1a]
xor dh, dh
shl ecx, 8
or eax, ecx
jmp short loc_00011094  ; jmp 0x11094

loc_0001108f:
cmp edx, 0xffffffff
je short loc_000110a8  ; je 0x110a8

loc_00011094:
push eax
push edx
lea eax, [esi + 0x88]
push eax
push dword [ebp + 0x18]
call fcn_00009d54  ; call 0x9d54
add esp, 0x10

loc_000110a8:
mov ecx, dword [ebp + 8]
lea eax, [ebx + 0xae]
test byte [ecx + eax*8 + 0x10], 4
je short loc_0001111a  ; je 0x1111a
movzx eax, byte [ecx + eax*8 + 0xe]
lea edx, [eax - 0x39]
cmp dl, 0x47
jbe short loc_000110ff  ; jbe 0x110ff
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000110e2  ; je 0x110e2
push ebx
push ebx
push ref_00024d5b  ; push 0x24d5b
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000110e2:
call fcn_000153f0  ; call 0x153f0
test al, al
je loc_00011015  ; je 0x11015
push ecx
push ref_000221f1  ; push 0x221f1
push 0x1e2
jmp near loc_00011008  ; jmp 0x11008

loc_000110ff:
shl eax, 8
push eax
push 0xffff00ff
lea eax, [esi + 0x90]
push eax
push dword [ebp + 0x18]
call fcn_00009d54  ; call 0x9d54
add esp, 0x10

loc_0001111a:
mov ecx, dword [ebp + 8]
lea eax, [ebx + 0xae]
test byte [ecx + eax*8 + 0x10], 8
je short loc_00011199  ; je 0x11199
mov cl, byte [ecx + eax*8 + 0xf]
mov dl, cl
shr dl, 1
lea eax, [edx + 0x43]
and eax, 0x7f
cmp al, 0xd
jbe short loc_00011176  ; jbe 0x11176
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00011159  ; je 0x11159
push edx
push edx
push ref_00024d86  ; push 0x24d86
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00011159:
call fcn_000153f0  ; call 0x153f0
test al, al
je loc_00011015  ; je 0x11015
push eax
push ref_000221f1  ; push 0x221f1
push 0x1f3
jmp near loc_00011008  ; jmp 0x11008

loc_00011176:
and ecx, 1
movzx edx, dl
shl ecx, 7
add esi, 0x98
or ecx, edx
push ecx
push 0xffffff00
push esi
push dword [ebp + 0x18]
call fcn_00009d54  ; call 0x9d54
add esp, 0x10

loc_00011199:
inc ebx
jmp near loc_00010f7e  ; jmp 0x10f7e

loc_0001119f:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000111a7:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov esi, dword [ebp + 0x14]
mov ecx, dword [ebp + 0x10]
mov ebx, dword [ebp + 0x18]
lea eax, [esi + 0x410]
add esi, 0xfc
push eax
mov dword [ebp - 0x1c], ecx
call fcn_00017cc7  ; call 0x17cc7
mov dword [esp], esi
mov edi, eax
call fcn_00017d8a  ; call 0x17d8a
mov ecx, dword [ebp - 0x1c]
add esp, 0x10
cmp ecx, 0x22
ja short loc_00011200  ; ja 0x11200
cmp ecx, 0x20
jae short loc_0001121a  ; jae 0x1121a
cmp ecx, 1
jb loc_000113d5  ; jb 0x113d5
cmp ecx, 3
jbe short loc_00011213  ; jbe 0x11213
cmp ecx, 0x10
je short loc_00011213  ; je 0x11213
jmp near loc_000113d5  ; jmp 0x113d5

loc_00011200:
sub ecx, 0x41
cmp ecx, 2
ja loc_000113d5  ; ja 0x113d5
mov ecx, ref_000287a0  ; mov ecx, 0x287a0
jmp short loc_0001121f  ; jmp 0x1121f

loc_00011213:
mov ecx, ref_0002758c  ; mov ecx, 0x2758c
jmp short loc_0001121f  ; jmp 0x1121f

loc_0001121a:
mov ecx, ref_0002801c  ; mov ecx, 0x2801c

loc_0001121f:
test eax, 0x80000
je loc_000113d5  ; je 0x113d5
and eax, 0x70000
mov edx, eax
shr edx, 0x10
cmp dword [ebp + 0xc], 2
jne short loc_0001129d  ; jne 0x1129d
cmp dl, 5
ja loc_000113d5  ; ja 0x113d5
imul edx, edx, 0xc
add ecx, edx
push dword [ecx + 8]
push dword [ecx + 4]
push dword [ecx]
push ebx
call fcn_00009d54  ; call 0x9d54
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je loc_000113d5  ; je 0x113d5
test ebx, ebx
jns loc_000113d5  ; jns 0x113d5
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001128d  ; je 0x1128d
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001128d:
push eax
push ref_00020664  ; push 0x20664
push 0x241
jmp near loc_000113c8  ; jmp 0x113c8

loc_0001129d:
cmp dword [ebp + 0xc], 1
jne loc_000113d5  ; jne 0x113d5
test dl, dl
jne short loc_00011312  ; jne 0x11312
mov eax, edi
and eax, 3
dec al
jne loc_000113d5  ; jne 0x113d5
imul edx, edx, 0xc
add ecx, edx
push dword [ecx + 8]
push dword [ecx + 4]
push dword [ecx]
push ebx
call fcn_00009d54  ; call 0x9d54
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je loc_000113d5  ; je 0x113d5
test ebx, ebx
jns loc_000113d5  ; jns 0x113d5
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00011302  ; je 0x11302
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00011302:
push edi
push ref_00020664  ; push 0x20664
push 0x24d
jmp near loc_000113c8  ; jmp 0x113c8

loc_00011312:
cmp dl, 1
jne short loc_0001137b  ; jne 0x1137b
mov eax, edi
and eax, 0xc
cmp al, 4
jne loc_000113d5  ; jne 0x113d5
imul edx, edx, 0xc
add ecx, edx
push dword [ecx + 8]
push dword [ecx + 4]
push dword [ecx]
push ebx
call fcn_00009d54  ; call 0x9d54
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je loc_000113d5  ; je 0x113d5
test ebx, ebx
jns loc_000113d5  ; jns 0x113d5
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001136e  ; je 0x1136e
push esi
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001136e:
push ecx
push ref_00020664  ; push 0x20664
push 0x257
jmp short loc_000113c8  ; jmp 0x113c8

loc_0001137b:
imul edx, edx, 0xc
add ecx, edx
push dword [ecx + 8]
push dword [ecx + 4]
push dword [ecx]
push ebx
call fcn_00009d54  ; call 0x9d54
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_000113d5  ; je 0x113d5
test ebx, ebx
jns short loc_000113d5  ; jns 0x113d5
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000113bd  ; je 0x113bd
push edx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000113bd:
push eax
push ref_00020664  ; push 0x20664
push 0x260

loc_000113c8:
push ref_00024c76  ; push 0x24c76
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000113d5:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000113df:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
call fcn_0001bef7  ; call 0x1bef7
mov esi, eax
mov eax, dword [ebp + 8]
mov ebx, dword [eax + 4]
push edi
push 0
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 0
push 0x1c
push 0
mov edi, eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
add edi, 2
push 0
push 0x14
push 0
mov dword [ebp - 0x20], eax
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], edi
mov dword [ebp - 0x24], eax
call fcn_00017cfe  ; call 0x17cfe
call fcn_0001bb39  ; call 0x1bb39
movzx eax, al
mov dword [ebp - 0x1c], eax
pop eax
pop edx
lea eax, [ebx + 0x2088]
push 0x109000
push eax
call fcn_00017dcb  ; call 0x17dcb
lea eax, [ebx + 0x20ac]
pop ecx
pop edi
push 0x40000000
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10
cmp esi, 1
jne short loc_000114a2  ; jne 0x114a2
push eax
push eax
push 0x1b
lea edi, [ebx + 0x2340]
push edi
call fcn_00017ce1  ; call 0x17ce1
add esp, 0xc
push 0x3a0000
push 0xff00ffff
push edi
call fcn_00018aa4  ; call 0x18aa4
lea eax, [ebx + 0x2324]
pop edx
pop ecx
push 0x854c74
push eax
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10

loc_000114a2:
sub esp, 0xc
push ebx
push dword [ebp - 0x20]
push dword [ebp - 0x1c]
push esi
push dword [ebp + 8]
call fcn_00010d69  ; call 0x10d69
add esp, 0x20
mov edi, eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000114fc  ; je 0x114fc
test edi, edi
jns short loc_000114fc  ; jns 0x114fc
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000114e4  ; je 0x114e4
push eax
push edi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000114e4:
push eax
push ref_00020664  ; push 0x20664
push 0x34e
push ref_00024c76  ; push 0x24c76
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000114fc:
sub esp, 0xc
push ebx
push dword [ebp - 0x20]
push dword [ebp - 0x1c]
push esi
push dword [ebp + 8]
call fcn_000111a7  ; call 0x111a7
add esp, 0x20
mov esi, eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00011556  ; je 0x11556
test esi, esi
jns short loc_00011556  ; jns 0x11556
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001153e  ; je 0x1153e
push eax
push esi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001153e:
push eax
push ref_00020664  ; push 0x20664
push 0x350
push ref_00024c76  ; push 0x24c76
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00011556:
call fcn_0001bef7  ; call 0x1bef7
cmp eax, 2
je short loc_0001156e  ; je 0x1156e

loc_00011560:
call fcn_0001bef7  ; call 0x1bef7
dec eax
jne loc_00011613  ; jne 0x11613
jmp short loc_000115bb  ; jmp 0x115bb

loc_0001156e:
mov byte [ebp - 0x1c], 0

loc_00011572:
call fcn_0001c0fb  ; call 0x1c0fb
cmp byte [ebp - 0x1c], al
jae short loc_00011560  ; jae 0x11560
push eax
movzx eax, byte [ebp - 0x1c]
push eax
push 0x1c
push 0
call fcn_00016bd6  ; call 0x16bd6
mov edi, eax
pop eax
pop edx
lea eax, [edi + 0x110]
push 0x31c1
push eax
call fcn_00018a50  ; call 0x18a50
lea edx, [edi + 0x104]
pop ecx
pop eax
push 0x17d010
push edx
call fcn_00018a50  ; call 0x18a50
add esp, 0x10
inc byte [ebp - 0x1c]
jmp short loc_00011572  ; jmp 0x11572

loc_000115bb:
sub esp, 0xc
lea eax, [ebx + 0x2320]
push eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
mov edx, 0x20000
test al, 2
jne short loc_000115fa  ; jne 0x115fa
mov eax, dword [ebp - 0x20]
sub esp, 0xc
add eax, 0xf5
push eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
and eax, 1
cmp al, 1
sbb edx, edx
xor dx, dx
add edx, 0x20000

loc_000115fa:
or dh, 0x30
push eax
push edx
push 0xfffc0fff
lea eax, [ebx + 0x21a4]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_00011613:
push edi
push edi
push 0xfffffffffffffff0
lea eax, [ebx + 0x2348]
push eax
call fcn_00018a7a  ; call 0x18a7a
mov eax, dword [ebp - 0x24]
add esp, 0xc
push 0x10000
push 0xffffff7f
add eax, 0xb0
push eax
call fcn_00018aa4  ; call 0x18aa4
call fcn_0001bef7  ; call 0x1bef7
add esp, 0x10
cmp eax, 2
jne short loc_000116b7  ; jne 0x116b7
push ecx
push ecx
push 0x10
lea eax, [ebx + 0x260c]
push eax
call fcn_00017d40  ; call 0x17d40
push 0x3100
push 0xffffceff
push 0xec000106
push ebx
call fcn_00009d54  ; call 0x9d54
add esp, 0x20
mov esi, eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000116b7  ; je 0x116b7
test esi, esi
jns short loc_000116b7  ; jns 0x116b7
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001169f  ; je 0x1169f
push edx
push esi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001169f:
push eax
push ref_00020664  ; push 0x20664
push 0x3b8
push ref_00024c76  ; push 0x24c76
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000116b7:
lea esp, [ebp - 0xc]
mov eax, esi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000116c1:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov esi, dword [ebp + 0x14]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000116e7  ; je 0x116e7
push eax
push eax
push ref_00024db6  ; push 0x24db6
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000116e7:
cmp dword [ebp + 8], 0
mov ebx, 0x80000002
je loc_0001180f  ; je 0x1180f
call fcn_000153e9  ; call 0x153e9
test al, al
mov eax, esi
movzx ebx, al
je short loc_00011715  ; je 0x11715
push eax
push ebx
push ref_00024dd1  ; push 0x24dd1
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00011715:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00011731  ; je 0x11731
push eax
push dword [ebp + 0xc]
push ref_00024de2  ; push 0x24de2
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00011731:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001174d  ; je 0x1174d
push eax
push dword [ebp + 0x10]
push ref_00024dfa  ; push 0x24dfa
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001174d:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00011767  ; je 0x11767
push eax
push eax
push ref_00021e91  ; push 0x21e91
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00011767:
push eax
push 0
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xf0
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov edi, eax
and edi, 0xffffc000
lea esi, [edi + 0x3418]
mov dword [esp], esi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0xc
push ebx
mov dword [ebp - 0x1c], eax
lea eax, [ebp - 0x1c]
push eax
push edi
push 0
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00015137  ; call 0x15137
add esp, 0x20
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000117f9  ; je 0x117f9
test ebx, ebx
jns short loc_000117f9  ; jns 0x117f9
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000117e1  ; je 0x117e1
push edi
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000117e1:
push ecx
push ref_00020664  ; push 0x20664
push 0x82
push ref_00024e12  ; push 0x24e12
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000117f9:
push edx
push edx
push dword [ebp - 0x1c]
push esi
call fcn_00017dcb  ; call 0x17dcb
mov dword [esp], esi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10

loc_0001180f:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00011829  ; je 0x11829
push eax
push eax
push ref_00024e3b  ; push 0x24e3b
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00011829:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00011833:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
sub esp, 0x14
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00011854  ; je 0x11854
push edx
push edx
push ref_00024e54  ; push 0x24e54
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00011854:  ; not directly referenced
lea eax, [ebp - 0xc]
push eax
push 0
push 0
push ref_0002910c  ; push 0x2910c
call fcn_00019699  ; call 0x19699
add esp, 0x10
mov ebx, eax
test eax, eax
jne short loc_00011889  ; jne 0x11889
mov eax, dword [ebp - 0xc]
movzx edx, byte [eax]
push edx
push dword [eax + 0xe]
push dword [eax + 6]
push dword [eax + 1]
call fcn_000116c1  ; call 0x116c1
add esp, 0x10
mov ebx, eax

loc_00011889:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000118a3  ; je 0x118a3
push eax
push eax
push ref_00024e6a  ; push 0x24e6a
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000118a3:  ; not directly referenced
mov eax, ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_000118aa:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x3c
mov eax, dword [ebp + 0x14]
mov ebx, dword [ebp + 0xc]
mov esi, dword [ebp + 8]
mov dword [ebp - 0x28], eax
call fcn_0001bef7  ; call 0x1bef7
mov dword [ebp - 0x1c], eax
call fcn_0001bff9  ; call 0x1bff9
mov eax, dword [ebp + 0x10]
movzx eax, byte [eax + 1]
push ecx
mov edi, eax
mov dword [ebp - 0x34], eax
movzx eax, bl
push eax
push 0x1c
push edi
mov dword [ebp - 0x2c], eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 0
push 0x1f
push edi
mov ebx, eax
call fcn_00016bd6  ; call 0x16bd6
mov dword [ebp - 0x38], eax
pop eax
pop edx
push 0
push dword [ebp + 0x18]
call fcn_0001c2db  ; call 0x1c2db
add esp, 0xc
movzx eax, al
push eax
push 0x1c
push edi
call fcn_00016bd6  ; call 0x16bd6
push 0x10
push dword [ebp - 0x2c]
push 0x1c
push edi
mov dword [ebp - 0x20], eax
call fcn_00009f67  ; call 0x9f67
add esp, 0x20
movzx eax, al
mov ecx, eax
mov dword [ebp - 0x3c], eax
mov eax, 0x80000003
test ecx, ecx
je loc_00011ddc  ; je 0x11ddc
sub esp, 0xc
mov eax, esi
lea edx, [ebx + 0x64]
movzx esi, al
push edx
imul esi, esi, 0x2c
mov dword [ebp - 0x24], edx
call fcn_00017d8a  ; call 0x17d8a
mov edi, dword [ebp + 0x10]
pop edx
pop ecx
mov edx, dword [ebp - 0x24]
add edi, esi
mov ecx, eax
and ah, 0xf7
or ch, 8
cmp byte [edi + 0x58], 1
cmovne ecx, eax
and ecx, 0xfff3ffff
push ecx
push edx
call fcn_00017dcb  ; call 0x17dcb
lea eax, [ebx + 0x68]
mov dword [esp], eax
mov dword [ebp - 0x24], eax
call fcn_00017cfe  ; call 0x17cfe
pop edx
pop ecx
mov edx, eax
and ah, 0xfb
or dh, 4
cmp byte [edi + 0x58], 1
cmovne edx, eax
movzx edx, dx
push edx
push dword [ebp - 0x24]
call fcn_00017d40  ; call 0x17d40
add esp, 0xc
push 0x14140000
push 0xffff
lea eax, [ebx + 0x318]
push eax
call fcn_00018aa4  ; call 0x18aa4
mov eax, dword [ebp - 0x20]
add eax, 0xf5
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0xc
mov edi, dword [ebp + 0x10]
lea ecx, [ebx + 0x4c]
mov dword [ebp - 0x30], ecx
lea edi, [edi + esi + 0x40]
lea esi, [edi + 6]
and eax, 1
cmp al, 1
sbb eax, eax
xor ax, ax
add eax, 0x20000
push eax
push 0xfffc7fff
push ecx
call fcn_00018aa4  ; call 0x18aa4
add esp, 0xc
push 0x743a361b
push 0
lea eax, [ebx + 0x314]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0xc
push 0x18000
lea eax, [ebx + 0xd8]
push 0xfffc7fff
push eax
mov dword [ebp - 0x20], eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0xc
push 0x854c74
push 0xff000000
lea eax, [ebx + 0x33c]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0xc
push 0x2000000
push 0xfdffffff
push dword [ebp - 0x20]
call fcn_00018aa4  ; call 0x18aa4
add esp, 0xc
push 0x8000008
push 0xf7fffff7
push dword [ebp - 0x20]
call fcn_00018aa4  ; call 0x18aa4
pop eax
pop edx
lea eax, [ebx + 0xf5]
push 0xf
push eax
call fcn_00018699  ; call 0x18699
mov al, byte [esi + 4]
pop ecx
pop edx
shl eax, 0x1f
sar eax, 0x1f
and eax, 0x10001
mov edx, eax
or edx, 0x20000000
cmp dword [ebp - 0x1c], 2
cmove eax, edx
push eax
lea eax, [ebx + 0x100]
push eax
call fcn_00017dcb  ; call 0x17dcb
mov dl, byte [edi + 6]
add esp, 0xc
and edx, 0x20
cmp dl, 1
sbb eax, eax
and eax, 0xffffff80
dec eax
cmp dl, 1
sbb edx, edx
movzx eax, ax
not edx
and dx, 0x80
movzx edx, dx
push edx
push eax
lea eax, [ebx + 0x50]
push eax
call fcn_000188bd  ; call 0x188bd
add esp, 0x10
cmp dword [ebp - 0x1c], 2
jne short loc_00011aff  ; jne 0x11aff
push ecx
push 0x1000c0
push 0xffcffe3f
lea eax, [ebx + 0x320]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_00011aff:  ; not directly referenced
mov dl, byte [esi + 0xb]
cmp dl, 9
je short loc_00011b1d  ; je 0x11b1d
sub edx, 3
xor eax, eax
cmp dl, 3
ja short loc_00011b22  ; ja 0x11b22
movzx edx, dl
movzx eax, byte [edx + ref_000203d8]  ; movzx eax, byte [edx + 0x203d8]
jmp short loc_00011b22  ; jmp 0x11b22

loc_00011b1d:  ; not directly referenced
mov eax, 0x10

loc_00011b22:  ; not directly referenced
push edx
push eax
push 0xffe0
push dword [ebp - 0x24]
call fcn_000188bd  ; call 0x188bd
mov dl, byte [edi + 6]
add esp, 0x10
test dl, 4
je short loc_00011ba8  ; je 0x11ba8
sub esp, 0xc
push dword [ebp - 0x30]
shl edx, 0x1c
sar edx, 0x1f
and edx, 0x60
mov dword [ebp - 0x24], edx
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
mov edx, dword [ebp - 0x24]
and eax, 0x3f0
cmp eax, 0x10
jne short loc_00011b68  ; jne 0x11b68
or dh, 0xb2
jmp short loc_00011b8c  ; jmp 0x11b8c

loc_00011b68:  ; not directly referenced
sub esp, 0xc
push dword [ebp - 0x30]
mov dword [ebp - 0x24], edx
call fcn_00017d8a  ; call 0x17d8a
mov edx, dword [ebp - 0x24]
add esp, 0x10
mov ecx, edx
or ch, 0xfd
and eax, 0x3f0
cmp eax, 0x10
cmova edx, ecx

loc_00011b8c:  ; not directly referenced
push eax
movzx eax, byte [esi + 0xa]
shl eax, 0x13
or eax, edx
push eax
push 0x6001f
lea eax, [ebx + 0x54]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_00011ba8:  ; not directly referenced
mov eax, dword [ebp + 0x10]
sub esp, 0xc
movzx eax, byte [eax + 0x19]
push eax
mov eax, dword [ebp + 0x10]
movzx eax, byte [eax + 0x18]
push eax
push dword [ebp - 0x2c]
push 0x1c
push dword [ebp - 0x34]
call fcn_0000bbe0  ; call 0xbbe0
add esp, 0x20
mov byte [ebp - 0x24], 1
test eax, eax
je short loc_00011bea  ; je 0x11bea
push eax
push eax
push 2
lea eax, [ebx + 0xd4]
push eax
call fcn_0001866c  ; call 0x1866c
add esp, 0x10
mov byte [ebp - 0x24], 0

loc_00011bea:  ; not directly referenced
test byte [edi + 6], 8
jne short loc_00011bfe  ; jne 0x11bfe
mov cl, byte [ebp - 0x24]
mov al, cl
lea eax, [eax + eax - 3]
lea edx, [ecx + ecx]
jmp short loc_00011c02  ; jmp 0x11c02

loc_00011bfe:  ; not directly referenced
mov al, 0xfd
xor edx, edx

loc_00011c02:  ; not directly referenced
movzx edx, dl
movzx eax, al
push ecx
push edx
push eax
lea eax, [ebx + 0xe0]
push eax
call fcn_000186c6  ; call 0x186c6
mov dl, byte [esi + 4]
add esp, 0xc
mov al, dl
and eax, 2
cmp al, 1
sbb eax, eax
not eax
and eax, 8
mov ecx, eax
or ecx, 4
test dl, 4
cmovne eax, ecx
mov ecx, eax
or ecx, 2
test dl, 8
cmovne eax, ecx
mov ecx, eax
or ecx, 1
and dl, 0x10
cmovne eax, ecx
movzx eax, ax
push eax
push 0xfff0
lea eax, [ebx + 0x48]
push eax
call fcn_000188bd  ; call 0x188bd
mov dl, byte [esi + 4]
add esp, 0xc
mov al, dl
and eax, 0x20
cmp al, 1
sbb eax, eax
not eax
and eax, 8
mov ecx, eax
or ecx, 4
test dl, 0x40
cmovne eax, ecx
mov ecx, eax
or ecx, 2
test dl, dl
cmovs eax, ecx
mov edx, eax
or edx, 1
test byte [esi + 5], 1
lea esi, [ebx + 0x5c]
cmovne eax, edx
movzx eax, ax
push eax
push 0xfff0
push esi
call fcn_000188bd  ; call 0x188bd
add esp, 0x10
test byte [edi + 6], 0x10
je loc_00011d3e  ; je 0x11d3e
push eax
push eax
push 0xfff7
push esi
call fcn_00018890  ; call 0x18890
add esp, 0xc
push 0x80000000
push 0xfffffffffffffffe
push dword [ebp - 0x20]
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp dword [ebp - 0x1c], 2
jne short loc_00011ce6  ; jne 0x11ce6
movzx esi, word [ebp - 0x28]
add esi, 0x8c
jmp short loc_00011cf3  ; jmp 0x11cf3

loc_00011ce6:  ; not directly referenced
cmp dword [ebp - 0x1c], 1
jne short loc_00011d14  ; jne 0x11d14
movzx esi, word [ebp - 0x28]
add esi, 0x20

loc_00011cf3:  ; not directly referenced
sub esp, 0xc
push esi
call fcn_00018ea0  ; call 0x18ea0
add esp, 0x10
test ah, 2
je short loc_00011d14  ; je 0x11d14
push eax
push eax
push 0x200
push esi
call fcn_00018ed3  ; call 0x18ed3
add esp, 0x10

loc_00011d14:  ; not directly referenced
mov esi, dword [ebp - 0x38]
sub esp, 0xc
add esi, 0xa0
push esi
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test ah, 4
jne short loc_00011d3e  ; jne 0x11d3e
push eax
push eax
push 0x400
push esi
call fcn_00018863  ; call 0x18863
add esp, 0x10

loc_00011d3e:  ; not directly referenced
test byte [edi + 6], 8
je short loc_00011dc3  ; je 0x11dc3
mov esi, dword [ebp - 0x3c]
push eax
push eax
push 9
add esi, ebx
lea eax, [esi + 0x1a]
add esi, 0x18
push eax
call fcn_00018863  ; call 0x18863
add esp, 0xc
push 9
push 0xffdf
push esi
call fcn_000188bd  ; call 0x188bd
add esp, 0xc
push 0x40000000
push 0xfffffffffffffffd
push dword [ebp - 0x20]
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp dword [ebp - 0x1c], 2
jne short loc_00011d93  ; jne 0x11d93
movzx eax, word [ebp - 0x28]
push ecx
push ecx
push 2
add eax, 0x8c
jmp short loc_00011da4  ; jmp 0x11da4

loc_00011d93:  ; not directly referenced
cmp dword [ebp - 0x1c], 1
jne short loc_00011dad  ; jne 0x11dad
movzx eax, word [ebp - 0x28]
push edx
push edx
push 2
add eax, 0x20

loc_00011da4:  ; not directly referenced
push eax
call fcn_00018ed3  ; call 0x18ed3
add esp, 0x10

loc_00011dad:  ; not directly referenced
push eax
add ebx, 0x108
push eax
push 0x4000
push ebx
call fcn_00018a50  ; call 0x18a50
add esp, 0x10

loc_00011dc3:  ; not directly referenced
cmp byte [ebp - 0x24], 1
je short loc_00011dda  ; je 0x11dda
mov al, byte [edi + 6]
and eax, 8
cmp al, 1
sbb eax, eax
and eax, 0x8000000e
jmp short loc_00011ddc  ; jmp 0x11ddc

loc_00011dda:  ; not directly referenced
xor eax, eax

loc_00011ddc:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00011de4:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
xor ebx, ebx
sub esp, 0x2c
mov eax, dword [ebp + 8]
mov dword [ebp - 0x2c], eax
mov byte [ebp - 0x20], al
call fcn_0001bef7  ; call 0x1bef7
mov dword [ebp - 0x1c], eax
call fcn_0001bff9  ; call 0x1bff9
movzx edi, byte [ebp - 0x20]
mov dword [ebp - 0x28], eax

loc_00011e0c:  ; not directly referenced
call fcn_0001c0fb  ; call 0x1c0fb
movzx eax, al
cmp ebx, eax
jae loc_00011f11  ; jae 0x11f11
cmp dword [ebp - 0x1c], 2
mov byte [ebp - 0x21], 0
jne short loc_00011e60  ; jne 0x11e60
push ecx
push 0
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0x48
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
and eax, 0xfffc
lea eax, [eax + ebx*8 + 0x190]
mov dword [esp], eax
call fcn_00018ea0  ; call 0x18ea0
add esp, 0x10
and eax, 1
xor eax, 1
and eax, 1
mov byte [ebp - 0x21], al

loc_00011e60:  ; not directly referenced
mov eax, 1
mov cl, bl
shl eax, cl
test dword [ebp + 0x10], eax
je loc_00012080  ; je 0x12080
test dword [ebp + 0x14], eax
jne loc_00012103  ; jne 0x12103
push esi
push esi
push ebx
push dword [ebp + 0x18]
call fcn_0001c2db  ; call 0x1c2db
add esp, 0xc
movzx eax, al
push eax
push 0x1c
push edi
call fcn_00016bd6  ; call 0x16bd6
mov esi, eax
pop eax
pop edx
lea eax, [esi + 0xe1]
push 3
push eax
call fcn_0001866c  ; call 0x1866c
add esp, 0x10
cmp dword [ebp - 0x1c], 2
jne short loc_00011ed9  ; jne 0x11ed9
push ecx
push ecx
push 0x40
lea eax, [esi + 0xe2]
push eax
call fcn_0001866c  ; call 0x1866c
add esp, 0xc
push 8
push 0xf3
lea eax, [esi + 0xe8]
push eax
call fcn_000186c6  ; call 0x186c6
add esp, 0x10

loc_00011ed9:  ; not directly referenced
push eax
push eax
push 3
lea eax, [esi + 0xe8]
push eax
call fcn_00018a50  ; call 0x18a50
cmp dword [ebp - 0x28], 2
pop eax
mov eax, 0x20
pop edx
mov edx, 0x4020
cmove eax, edx
add esi, 0x324
push eax
push esi
call fcn_00018a50  ; call 0x18a50
add esp, 0x10
jmp near loc_00012103  ; jmp 0x12103

loc_00011f11:  ; not directly referenced
xor ebx, ebx
cmp dword [ebp - 0x1c], 2
jne loc_00011ff4  ; jne 0x11ff4
mov eax, dword [ebp + 0x10]
movzx edi, byte [ebp - 0x20]
and eax, 0xf
mov dword [ebp - 0x1c], eax

loc_00011f2a:  ; not directly referenced
call fcn_0001c0fb  ; call 0x1c0fb
movzx eax, al
cmp ebx, eax
jae short loc_00011fb4  ; jae 0x11fb4
push esi
push esi
push ebx
push dword [ebp + 0x18]
call fcn_0001c2db  ; call 0x1c2db
add esp, 0xc
movzx eax, al
push eax
push 0x1c
push edi
call fcn_00016bd6  ; call 0x16bd6
add esp, 0x10
mov edx, eax
lea eax, [ebx - 4]
cmp eax, 1
jbe short loc_00011f61  ; jbe 0x11f61
test ebx, ebx
jne short loc_00011fae  ; jne 0x11fae

loc_00011f61:  ; not directly referenced
push ecx
push ecx
lea esi, [edx + 0xe1]
push 0x3c
push esi
mov dword [ebp - 0x20], edx
call fcn_0001866c  ; call 0x1866c
mov eax, dword [ebp - 0x1c]
add esp, 0x10
mov edx, dword [ebp - 0x20]
or eax, ebx
je short loc_00011f8e  ; je 0x11f8e
mov eax, dword [ebp + 0x10]
bt eax, ebx
jb short loc_00011fae  ; jb 0x11fae
cmp ebx, 3
jbe short loc_00011fae  ; jbe 0x11fae

loc_00011f8e:  ; not directly referenced
push eax
add edx, 0xe2
push eax
push 1
push edx
call fcn_0001866c  ; call 0x1866c
pop eax
pop edx
push 0x80
push esi
call fcn_0001866c  ; call 0x1866c
add esp, 0x10

loc_00011fae:  ; not directly referenced
inc ebx
jmp near loc_00011f2a  ; jmp 0x11f2a

loc_00011fb4:  ; not directly referenced
test byte [ebp + 0x10], 0x3f
jne loc_0001210b  ; jne 0x1210b
push ecx
push ecx
push 0
push dword [ebp + 0x18]
call fcn_0001c2db  ; call 0x1c2db
add esp, 0xc
movzx eax, al
push eax
movzx eax, byte [ebp - 0x2c]
push 0x1c
push eax
call fcn_00016bd6  ; call 0x16bd6
pop ebx
pop esi
push 0x40
add eax, 0xe1
push eax
call fcn_0001866c  ; call 0x1866c
add esp, 0x10
jmp near loc_0001210b  ; jmp 0x1210b

loc_00011ff4:  ; not directly referenced
cmp dword [ebp - 0x1c], 1
jne loc_0001210b  ; jne 0x1210b
movzx edi, byte [ebp - 0x20]

loc_00012002:  ; not directly referenced
call fcn_0001c0fb  ; call 0x1c0fb
movzx eax, al
cmp ebx, eax
jae loc_0001210b  ; jae 0x1210b
mov eax, dword [ebp + 0x14]
bt eax, ebx
jb short loc_0001207b  ; jb 0x1207b
push esi
push esi
push ebx
push dword [ebp + 0x18]
call fcn_0001c2db  ; call 0x1c2db
add esp, 0xc
movzx eax, al
push eax
push 0x1c
push edi
call fcn_00016bd6  ; call 0x16bd6
lea esi, [eax + 0xe1]
mov dword [ebp - 0x1c], eax
pop eax
pop edx
push 0x3c
push esi
call fcn_0001866c  ; call 0x1866c
mov eax, 0xf
mov cl, bl
shl eax, cl
add esp, 0x10
mov edx, dword [ebp - 0x1c]
test dword [ebp + 0x10], eax
jne short loc_0001207b  ; jne 0x1207b
push eax
add edx, 0xe2
push eax
push 1
push edx
call fcn_0001866c  ; call 0x1866c
pop edx
pop ecx
push 0x80
push esi
call fcn_0001866c  ; call 0x1866c
add esp, 0x10

loc_0001207b:  ; not directly referenced
add ebx, 4
jmp short loc_00012002  ; jmp 0x12002

loc_00012080:  ; not directly referenced
cmp dword [ebp - 0x1c], 2
jne short loc_000120fd  ; jne 0x120fd
push esi
push esi
push ebx
push dword [ebp + 0x18]
call fcn_0001c2db  ; call 0x1c2db
add esp, 0xc
movzx eax, al
push eax
push 0x1c
push edi
call fcn_00016bd6  ; call 0x16bd6
mov esi, eax
pop eax
pop edx
lea eax, [esi + 0xe2]
add esi, 0x420
push 0x30
push eax
call fcn_0001866c  ; call 0x1866c
pop ecx
pop eax
push 0x80000000
push esi
call fcn_00018a50  ; call 0x18a50
add esp, 0x10

loc_000120c8:  ; not directly referenced
cmp byte [ebp - 0x21], 0
je short loc_000120fd  ; je 0x120fd
push eax
push eax
push ebx
push dword [ebp + 0x18]
call fcn_0001c2db  ; call 0x1c2db
add esp, 0xc
movzx eax, al
push eax
push 0x1c
push edi
call fcn_00016bd6  ; call 0x16bd6
pop edx
pop ecx
push 0x60000000
add eax, 0x420
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10

loc_000120fd:  ; not directly referenced
inc ebx
jmp near loc_00011e0c  ; jmp 0x11e0c

loc_00012103:  ; not directly referenced
cmp dword [ebp - 0x1c], 2
jne short loc_000120fd  ; jne 0x120fd
jmp short loc_000120c8  ; jmp 0x120c8

loc_0001210b:  ; not directly referenced
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00012115:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x18
mov ebx, dword [ebp + 0xc]
mov esi, dword [ebp + 8]
mov edi, dword [ebp + 0x10]
push ebx
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
jne short loc_00012151  ; jne 0x12151
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00012151  ; je 0x12151
push edx
push ebx
push ref_00024e7e  ; push 0x24e7e
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00012151:  ; not directly referenced
sub esp, 0xc
add ebx, 0xfc
push ebx
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
and ax, 0xc000
cmp ax, 0x8000
je short loc_00012182  ; je 0x12182
cmp ax, 0xc000
je short loc_0001217b  ; je 0x1217b
xor ebx, ebx
cmp ax, 0x4000
jne short loc_00012187  ; jne 0x12187

loc_0001217b:  ; not directly referenced
mov ebx, 2
jmp short loc_00012187  ; jmp 0x12187

loc_00012182:  ; not directly referenced
mov ebx, 0x22

loc_00012187:  ; not directly referenced
call fcn_0001bef7  ; call 0x1bef7
dec eax
jne short loc_000121d4  ; jne 0x121d4
push eax
push 4
push 0x1c
movzx eax, byte [edi + 1]
push eax
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xfc
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
and ax, 0xc000
cmp ax, 0x8000
je short loc_000121cc  ; je 0x121cc
cmp ax, 0xc000
je short loc_000121d1  ; je 0x121d1
mov edx, ebx
or dh, 2
cmp ax, 0x4000
cmove ebx, edx
jmp short loc_000121d4  ; jmp 0x121d4

loc_000121cc:  ; not directly referenced
or bh, 0x22
jmp short loc_000121d4  ; jmp 0x121d4

loc_000121d1:  ; not directly referenced
or bh, 2

loc_000121d4:  ; not directly referenced
movzx ebx, bx
add esi, 0x103c
mov dword [ebp + 0xc], ebx
mov dword [ebp + 8], esi
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017d40  ; jmp 0x17d40

fcn_000121ef:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x4c
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00012212  ; je 0x12212
push esi
push esi
push ref_00024e93  ; push 0x24e93
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00012212:  ; not directly referenced
call fcn_0001bef7  ; call 0x1bef7
mov dword [ebp - 0x2c], eax
push eax
mov eax, dword [ebp + 8]
push 0
push 0x1f
movzx eax, byte [eax + 1]
push eax
call fcn_00016bd6  ; call 0x16bd6
mov ebx, eax
lea eax, [eax + 0xf0]
add ebx, 0x40
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov dword [esp], ebx
mov dword [ebp - 0x30], eax
and dword [ebp - 0x30], 0xffffc000
call fcn_00017cfe  ; call 0x17cfe
mov edi, dword [ebp - 0x30]
mov word [ebp - 0x3e], ax
pop eax
pop edx
and word [ebp - 0x3e], 0xfffc
push 0
push edi
call fcn_0001c2db  ; call 0x1c2db
add esp, 0xc
movzx eax, al
push eax
mov eax, dword [ebp + 8]
push 0x1c
movzx eax, byte [eax + 1]
push eax
call fcn_00016bd6  ; call 0x16bd6
pop ecx
pop ebx
push 4
push edi
mov esi, eax
mov dword [ebp - 0x34], eax
call fcn_0001c2db  ; call 0x1c2db
add esp, 0xc
movzx eax, al
push eax
mov eax, dword [ebp + 8]
push 0x1c
movzx eax, byte [eax + 1]
push eax
call fcn_00016bd6  ; call 0x16bd6
mov ebx, eax
call fcn_0001c0fb  ; call 0x1c0fb
add esp, 0xc
push 5
push 0xf5
mov byte [ebp - 0x39], al
mov eax, esi
add eax, 0xf5
push eax
call fcn_000186c6  ; call 0x186c6
add esp, 0xc
push dword [ebp + 8]
push esi
push edi
call fcn_00012115  ; call 0x12115
mov eax, esi
add eax, 0xfc
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
mov esi, eax
and eax, 0xc000
cmp eax, 0x8000
je short loc_00012308  ; je 0x12308
cmp eax, 0xc000
je short loc_0001230f  ; je 0x1230f
cmp eax, 0x4000
sete al
movzx eax, al
mov edi, eax
add edi, eax
jmp short loc_00012314  ; jmp 0x12314

loc_00012308:  ; not directly referenced
mov edi, 0xa
jmp short loc_00012314  ; jmp 0x12314

loc_0001230f:  ; not directly referenced
mov edi, 0xe

loc_00012314:  ; not directly referenced
cmp dword [ebp - 0x2c], 1
jne short loc_0001235c  ; jne 0x1235c
sub esp, 0xc
add ebx, 0xfc
push ebx
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
and eax, 0xc000
cmp eax, 0x8000
je short loc_0001234e  ; je 0x1234e
cmp eax, 0xc000
je short loc_00012356  ; je 0x12356
mov edx, edi
or edx, 0x20
cmp eax, 0x4000
cmove edi, edx
jmp short loc_0001235c  ; jmp 0x1235c

loc_0001234e:  ; not directly referenced
or edi, 0xa0
jmp short loc_0001235c  ; jmp 0x1235c

loc_00012356:  ; not directly referenced
or edi, 0xe0

loc_0001235c:  ; not directly referenced
mov eax, dword [ebp - 0x30]
sub esp, 0xc
mov bl, 0xff
add eax, 0x3414
push eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test esi, 0x80000
je short loc_00012389  ; je 0x12389
test al, 0x20
jne short loc_00012389  ; jne 0x12389
and esi, 0x70000
mov ebx, esi
shr ebx, 0x10

loc_00012389:  ; not directly referenced
cmp dword [ebp - 0x2c], 1
jne short loc_000123b4  ; jne 0x123b4
mov eax, dword [ebp - 0x34]
sub esp, 0xc
add eax, 0x410
push eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 0x11
je short loc_000123af  ; je 0x123af
test bl, bl
jne short loc_000123f5  ; jne 0x123f5
test al, 0x10
jne short loc_000123f5  ; jne 0x123f5

loc_000123af:  ; not directly referenced
or edi, 1
jmp short loc_000123f5  ; jmp 0x123f5

loc_000123b4:  ; not directly referenced
cmp dword [ebp - 0x2c], 2
jne short loc_00012405  ; jne 0x12405
mov eax, dword [ebp - 0x34]
sub esp, 0xc
lea esi, [eax + 0x410]
push esi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test al, 3
jne short loc_000123db  ; jne 0x123db

loc_000123d3:  ; not directly referenced
or edi, 1
jmp near loc_00012b91  ; jmp 0x12b91

loc_000123db:  ; not directly referenced
sub esp, 0xc
push esi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
and eax, 3
cmp eax, 2
jne loc_00012b91  ; jne 0x12b91
jmp short loc_000123d3  ; jmp 0x123d3

loc_000123f5:  ; not directly referenced
test al, 0x24
je short loc_00012402  ; je 0x12402
cmp bl, 1
jne short loc_00012405  ; jne 0x12405
test al, 0x20

loc_00012400:  ; not directly referenced
jne short loc_00012405  ; jne 0x12405

loc_00012402:  ; not directly referenced
or edi, 2

loc_00012405:  ; not directly referenced
cmp dword [ebp - 0x2c], 1
sete dl
mov byte [ebp - 0x3b], dl
cmp bl, 2
jne short loc_0001241e  ; jne 0x1241e
mov eax, edi
or eax, 4
test dl, dl
cmovne edi, eax

loc_0001241e:  ; not directly referenced
cmp dword [ebp - 0x2c], 2
sete cl
mov byte [ebp - 0x3c], cl
test bl, bl
jne short loc_00012436  ; jne 0x12436
mov eax, edi
or eax, 4
test cl, cl
cmovne edi, eax

loc_00012436:  ; not directly referenced
cmp bl, 3
jne short loc_00012447  ; jne 0x12447
mov eax, edi
or eax, 8
cmp byte [ebp - 0x3b], 0
cmovne edi, eax

loc_00012447:  ; not directly referenced
cmp bl, 1
jne short loc_00012458  ; jne 0x12458
mov eax, edi
or eax, 8
cmp byte [ebp - 0x3c], 0
cmovne edi, eax

loc_00012458:  ; not directly referenced
cmp bl, 4
jne short loc_00012468  ; jne 0x12468
cmp byte [ebp - 0x3b], 0
je short loc_00012468  ; je 0x12468
or edi, 0x10
jmp short loc_0001247c  ; jmp 0x1247c

loc_00012468:  ; not directly referenced
cmp byte [ebp - 0x3c], 0
je short loc_0001247c  ; je 0x1247c
mov eax, edi
lea edx, [ebx - 2]
or eax, 0x10
cmp dl, 3
cmovbe edi, eax

loc_0001247c:  ; not directly referenced
cmp bl, 5
jne short loc_0001248c  ; jne 0x1248c
cmp byte [ebp - 0x3b], 0
je short loc_0001248c  ; je 0x1248c
or edi, 0x20
jmp short loc_000124b8  ; jmp 0x124b8

loc_0001248c:  ; not directly referenced
cmp byte [ebp - 0x3c], 0
je short loc_000124b2  ; je 0x124b2
mov eax, dword [ebp - 0x34]
sub esp, 0xc
add eax, 0x410
push eax
call fcn_00017d8a  ; call 0x17d8a
mov edx, edi
add esp, 0x10
or edx, 0x20
test al, 0xf0
cmove edi, edx
jmp short loc_000124cc  ; jmp 0x124cc

loc_000124b2:  ; not directly referenced
cmp byte [ebp - 0x3b], 0
je short loc_000124cc  ; je 0x124cc

loc_000124b8:  ; not directly referenced
cmp bl, 6
jne short loc_000124c2  ; jne 0x124c2
or edi, 0x40
jmp short loc_000124cc  ; jmp 0x124cc

loc_000124c2:  ; not directly referenced
mov eax, edi
or al, 0x80
cmp bl, 7
cmove edi, eax

loc_000124cc:  ; not directly referenced
mov eax, dword [ebp - 0x30]
sub esp, 0xc
add eax, 0x1030
push eax
mov dword [ebp - 0x4c], eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
mov dword [ebp - 0x48], 0xff
test eax, 0x400000
je short loc_0001250f  ; je 0x1250f
mov eax, dword [ebp + 8]
cmp byte [eax + 0x1a6], 0
je short loc_0001250f  ; je 0x1250f
call fcn_000153f0  ; call 0x153f0
mov eax, dword [ebp + 8]
movzx eax, byte [eax + 0x1a7]
mov dword [ebp - 0x48], eax

loc_0001250f:  ; not directly referenced
xor ecx, ecx
mov eax, 0x10000
mov dword [ebp - 0x34], 0
mov edx, 1

loc_00012522:  ; not directly referenced
cmp byte [ebp - 0x39], cl
jbe short loc_00012549  ; jbe 0x12549
imul ebx, ecx, 0x2c
mov esi, dword [ebp + 8]
test byte [esi + ebx + 0x46], 1
je short loc_00012546  ; je 0x12546
mov esi, dword [ebp + 0xc]
mov ebx, eax
shl ebx, cl
test dword [esi], ebx
jne short loc_00012546  ; jne 0x12546
mov ebx, edx
shl ebx, cl
or dword [ebp - 0x34], ebx

loc_00012546:  ; not directly referenced
inc ecx
jmp short loc_00012522  ; jmp 0x12522

loc_00012549:  ; not directly referenced
cmp dword [ebp - 0x34], 0
je short loc_00012556  ; je 0x12556
mov eax, edi
not eax
and dword [ebp - 0x34], eax

loc_00012556:  ; not directly referenced
mov eax, dword [ebp + 8]
mov byte [ebp - 0x3a], 0xff
cmp byte [eax + 0x1a9], 0
jne short loc_000125bc  ; jne 0x125bc
xor eax, eax

loc_00012568:  ; not directly referenced
mov dl, al
cmp al, byte [ebp - 0x39]
jae short loc_00012586  ; jae 0x12586
imul ecx, eax, 0x2c
mov esi, dword [ebp + 8]
cmp byte [esi + ecx + 0x4f], 0
mov cl, byte [ebp - 0x3a]
cmove ecx, edx
inc eax
mov byte [ebp - 0x3a], cl
jmp short loc_00012568  ; jmp 0x12568

loc_00012586:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000125af  ; je 0x125af
mov al, byte [ebp - 0x39]
cmp byte [ebp - 0x3a], al
jbe short loc_000125af  ; jbe 0x125af
push eax
push ref_00024ead  ; push 0x24ead
push 0x173
push ref_00024ecc  ; push 0x24ecc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000125af:  ; not directly referenced
mov cl, byte [ebp - 0x3a]
mov eax, 1
shl eax, cl
or dword [ebp - 0x34], eax

loc_000125bc:  ; not directly referenced
sub esp, 0xc
lea eax, [ebp - 0x20]
push eax
call fcn_000196d3  ; call 0x196d3
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0001260f  ; je 0x1260f
test ebx, ebx
jns short loc_0001260f  ; jns 0x1260f
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000125f7  ; je 0x125f7
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000125f7:  ; not directly referenced
push eax
push ref_00020664  ; push 0x20664
push 0x181
push ref_00024ecc  ; push 0x24ecc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001260f:  ; not directly referenced
cmp dword [ebp - 0x20], 0x11
je short loc_00012649  ; je 0x12649
mov eax, dword [ebp + 8]
mov dword [ebp - 0x38], 0
cmp byte [eax], 9
jbe short loc_00012650  ; jbe 0x12650
mov edx, dword [ebp + 8]
mov al, byte [eax + 0x1aa]
movzx ecx, byte [edx + 0x1ab]
shr al, 1
movzx eax, al
mov dword [ebp - 0x38], ecx
and dword [ebp - 0x38], 7
shl dword [ebp - 0x38], 7
or dword [ebp - 0x38], eax
jmp short loc_00012650  ; jmp 0x12650

loc_00012649:  ; not directly referenced
mov dword [ebp - 0x38], 0x3e8

loc_00012650:  ; not directly referenced
movzx eax, word [ebp - 0x3e]
mov dword [ebp - 0x2c], 0
mov dword [ebp - 0x44], 0
mov dword [ebp - 0x58], eax

loc_00012665:  ; not directly referenced
mov edx, dword [ebp - 0x2c]
mov al, byte [ebp - 0x39]
mov byte [ebp - 0x3e], dl
cmp dl, al
jae loc_00012a30  ; jae 0x12a30
push eax
push eax
push dword [ebp - 0x2c]
push dword [ebp - 0x30]
call fcn_0001c2db  ; call 0x1c2db
add esp, 0xc
movzx eax, al
push eax
mov eax, dword [ebp + 8]
push 0x1c
movzx eax, byte [eax + 1]
push eax
call fcn_00016bd6  ; call 0x16bd6
mov ebx, eax
call fcn_0001bff9  ; call 0x1bff9
add esp, 0x10
cmp eax, 2
jne short loc_000126e4  ; jne 0x126e4
cmp byte [ebp - 0x3c], 0
je short loc_000126e4  ; je 0x126e4
mov edx, dword [ebp + 8]
mov eax, 0x2000430
cmp byte [edx], 7
jbe short loc_000126d2  ; jbe 0x126d2
imul eax, dword [ebp - 0x2c], 0x2c
mov al, byte [edx + eax + 0x46]
shr al, 7
cmp al, 1
sbb eax, eax
and eax, 0xfffffffd
add eax, 0x2000433

loc_000126d2:  ; not directly referenced
push esi
push esi
push eax
lea eax, [ebx + 0x418]
push eax
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10

loc_000126e4:  ; not directly referenced
cmp byte [ebp - 0x3e], 0
jne loc_000127d9  ; jne 0x127d9
mov esi, dword [ebp - 0x30]
push eax
push eax
push 0
push esi
call fcn_0001c2db  ; call 0x1c2db
pop edx
pop ecx
lea edx, [ebp - 0x21]
push edx
sub eax, 0x20
lea edx, [ebp - 0x1c]
movzx eax, al
push edx
push eax
push 4
push 0xe00000e0
push esi
call fcn_00009e5f  ; call 0x9e5f
add esp, 0x20
mov esi, eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00012760  ; je 0x12760
test esi, esi
jns short loc_00012760  ; jns 0x12760
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00012748  ; je 0x12748
push eax
push esi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00012748:  ; not directly referenced
push esi
push ref_00020664  ; push 0x20664
push 0x1ab
push ref_00024ecc  ; push 0x24ecc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00012760:  ; not directly referenced
mov esi, dword [ebp - 0x30]
push ecx
push ecx
push 0
push esi
or dword [ebp - 0x1c], 0x300000
call fcn_0001c2db  ; call 0x1c2db
pop edx
pop ecx
lea ecx, [ebp - 0x21]
lea edx, [ebp - 0x1c]
push ecx
sub eax, 0x20
push edx
movzx eax, al
push eax
push 5
push 0xe00000e0
push esi
call fcn_00009e5f  ; call 0x9e5f
add esp, 0x20
mov esi, eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000127d9  ; je 0x127d9
test esi, esi
jns short loc_000127d9  ; jns 0x127d9
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000127c1  ; je 0x127c1
push edx
push esi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000127c1:  ; not directly referenced
push eax
push ref_00020664  ; push 0x20664
push 0x1b5
push ref_00024ecc  ; push 0x24ecc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000127d9:  ; not directly referenced
mov cl, byte [ebp - 0x2c]
mov esi, 1
shl esi, cl
mov eax, esi
and eax, edi
mov dword [ebp - 0x50], eax
jne loc_00012bbc  ; jne 0x12bbc
push eax
push eax
push 0x100
lea eax, [ebx + 0x42]
push eax
call fcn_00018863  ; call 0x18863
lea edx, [ebx + 0x5a]
mov dword [esp], edx
mov dword [ebp - 0x54], edx
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
mov edx, dword [ebp - 0x54]
test al, 0x40
jne loc_000128a9  ; jne 0x128a9
imul eax, dword [ebp - 0x2c], 0x2c
mov ecx, dword [ebp + 8]
test byte [ecx + eax + 0x46], 8
jne short loc_000128a9  ; jne 0x128a9
mov eax, dword [ebp - 0x48]
cmp dword [ebp - 0x2c], eax
je short loc_000128a9  ; je 0x128a9
push eax
mov esi, 0x1f4
push eax
push 0x4000000
lea eax, [ebx + 0x338]
push eax
call fcn_00018a50  ; call 0x18a50
lea eax, [ebx + 0x328]
add esp, 0x10
mov dword [ebp - 0x54], eax

loc_00012856:  ; not directly referenced
sub esp, 0xc
push dword [ebp - 0x54]
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
and eax, 0xff000000
cmp eax, 0x1000000
jne short loc_00012897  ; jne 0x12897

loc_00012870:  ; not directly referenced
push eax
push eax
push 0x8000000
lea eax, [ebx + 0x408]
push eax
call fcn_00018a50  ; call 0x18a50
mov cl, byte [ebp - 0x2c]
mov eax, 0x10000
mov edx, dword [ebp + 0xc]
shl eax, cl
or dword [edx], eax
jmp near loc_000129c5  ; jmp 0x129c5

loc_00012897:  ; not directly referenced
sub esp, 0xc
push 0x64
call fcn_0001ba3f  ; call 0x1ba3f
add esp, 0x10
dec esi
jne short loc_00012856  ; jne 0x12856
jmp short loc_00012870  ; jmp 0x12870

loc_000128a9:  ; not directly referenced
test dword [ebp - 0x34], esi
jne short loc_000128e2  ; jne 0x128e2
sub esp, 0xc
push edx
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test al, 0x40
je short loc_000128ce  ; je 0x128ce
push eax
push eax
push 0x10
lea eax, [ebx + 0x50]
push eax
call fcn_00018863  ; call 0x18863
add esp, 0x10

loc_000128ce:  ; not directly referenced
mov cl, byte [ebp - 0x2c]
mov eax, 0x10000
mov edx, dword [ebp + 0xc]
shl eax, cl
or dword [edx], eax
jmp near loc_000129c8  ; jmp 0x129c8

loc_000128e2:  ; not directly referenced
sub esp, 0xc
lea eax, [ebx + 0xe0]
push eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
cmp dword [ebp - 0x20], 0x11
jne short loc_000128fe  ; jne 0x128fe
test al, 2
je short loc_0001292c  ; je 0x1292c

loc_000128fe:  ; not directly referenced
lea esi, [ebx + 0x52]

loc_00012901:  ; not directly referenced
mov eax, dword [ebp - 0x38]
cmp dword [ebp - 0x44], eax
jae short loc_0001292c  ; jae 0x1292c
sub esp, 0xc
push esi
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test ah, 0x20
jne short loc_0001292c  ; jne 0x1292c
sub esp, 0xc
push 0x64
call fcn_0001ba3f  ; call 0x1ba3f
add esp, 0x10
inc dword [ebp - 0x44]
jmp short loc_00012901  ; jmp 0x12901

loc_0001292c:  ; not directly referenced
sub esp, 0xc
mov eax, dword [ebp - 0x2c]
push dword [ebp - 0x30]
push dword [ebp - 0x58]
push dword [ebp + 8]
push eax
push eax
call fcn_000118aa  ; call 0x118aa
add esp, 0x20
test eax, eax
js short loc_0001296c  ; js 0x1296c
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001296c  ; je 0x1296c
mov eax, dword [ebp - 0x2c]
push dword [ebp - 0x34]
inc eax
push eax
push ref_00024efa  ; push 0x24efa
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001296c:  ; not directly referenced
imul eax, dword [ebp - 0x2c], 0x2c
mov ecx, dword [ebp + 8]
test byte [ecx + eax + 0x46], 0x40
je short loc_000129c8  ; je 0x129c8
sub esp, 0xc
lea eax, [ebx + 0x328]
push eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
and eax, 0x780000
cmp eax, 0x380000
jne short loc_000129c8  ; jne 0x129c8
push eax
push eax
push 0x10
lea esi, [ebx + 0x50]
push esi
call fcn_0001866c  ; call 0x1866c
pop eax
pop edx
lea eax, [ebx + 0xe8]
push 0x2000
push eax
call fcn_00018863  ; call 0x18863
pop ecx
pop eax
push 0xef
push esi
call fcn_00018699  ; call 0x18699

loc_000129c5:  ; not directly referenced
add esp, 0x10

loc_000129c8:  ; not directly referenced
sub esp, 0xc
push ebx
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
inc eax
je short loc_00012a28  ; je 0x12a28
cmp byte [ebp - 0x3b], 0
je short loc_000129e3  ; je 0x129e3
test byte [ebp - 0x3e], 0xfb
jmp short loc_000129f7  ; jmp 0x129f7

loc_000129e3:  ; not directly referenced
cmp byte [ebp - 0x3c], 0
je short loc_00012a0f  ; je 0x12a0f
mov cl, byte [ebp - 0x3e]
mov al, cl
sub eax, 4
cmp al, 1
jbe short loc_000129f9  ; jbe 0x129f9
test cl, cl

loc_000129f7:  ; not directly referenced
jne short loc_00012a0f  ; jne 0x12a0f

loc_000129f9:  ; not directly referenced
push eax
push eax
push 0xf3
lea eax, [ebx + 0xf7]
push eax
call fcn_00018699  ; call 0x18699
add esp, 0x10

loc_00012a0f:  ; not directly referenced
cmp dword [ebp - 0x50], 0
jne short loc_00012a28  ; jne 0x12a28
push esi
add ebx, 0xd4
push esi
push 2
push ebx
call fcn_0001866c  ; call 0x1866c
add esp, 0x10

loc_00012a28:  ; not directly referenced
inc dword [ebp - 0x2c]
jmp near loc_00012665  ; jmp 0x12665

loc_00012a30:  ; not directly referenced
mov eax, dword [ebp + 8]
cmp byte [eax + 0x1a9], 0
jne short loc_00012a6e  ; jne 0x12a6e
mov eax, dword [ebp + 0xc]
mov ecx, 8
sub cl, byte [ebp - 0x39]
mov edx, dword [eax]
mov eax, 0xff
sar eax, cl
mov ecx, edx
shr ecx, 0x10
and ecx, eax
cmp ecx, eax
je short loc_00012a6e  ; je 0x12a6e
mov cl, byte [ebp - 0x3a]
mov eax, 0x10000
shl eax, cl
not eax
and eax, edx
mov edx, dword [ebp + 0xc]
mov dword [edx], eax

loc_00012a6e:  ; not directly referenced
sub esp, 0xc
push dword [ebp - 0x4c]
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test eax, 0x400000
je short loc_00012ad6  ; je 0x12ad6
mov eax, dword [ebp + 8]
cmp byte [eax + 0x1a6], 0
je short loc_00012ad6  ; je 0x12ad6
movzx eax, byte [eax + 0x1a7]
mov ecx, dword [ebp + 8]
imul edx, eax, 0x2c
test byte [ecx + edx + 0x46], 1
je short loc_00012ad6  ; je 0x12ad6
push edx
push edx
push eax
push dword [ebp - 0x30]
call fcn_0001c2db  ; call 0x1c2db
add esp, 0xc
movzx eax, al
push eax
mov eax, dword [ebp + 8]
push 0x1c
movzx eax, byte [eax + 1]
push eax
call fcn_00016bd6  ; call 0x16bd6
pop ecx
pop ebx
push 3
add eax, 0xec
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10

loc_00012ad6:  ; not directly referenced
mov edx, dword [ebp + 8]
mov eax, dword [ebp + 0xc]
cmp byte [edx + 0x1a8], 0
mov eax, dword [eax]
je short loc_00012b05  ; je 0x12b05
sub esp, 0xc
push dword [ebp - 0x30]
shr eax, 0x10
not eax
movzx eax, al
push edi
push eax
push edx
movzx eax, byte [edx + 1]
push eax
call fcn_00011de4  ; call 0x11de4
add esp, 0x20

loc_00012b05:  ; not directly referenced
xor ebx, ebx

loc_00012b07:  ; not directly referenced
cmp byte [ebp - 0x39], bl
jbe short loc_00012b47  ; jbe 0x12b47
push eax
mov eax, dword [ebp + 8]
push ebx
push 0x1c
movzx eax, byte [eax + 1]
push eax
call fcn_00016bd6  ; call 0x16bd6
mov dword [esp], eax
mov esi, eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
inc ax
je short loc_00012b44  ; je 0x12b44
push edi
add esi, 0x320
push edi
push 0x1800000
push esi
call fcn_00018a50  ; call 0x18a50
add esp, 0x10

loc_00012b44:  ; not directly referenced
inc ebx
jmp short loc_00012b07  ; jmp 0x12b07

loc_00012b47:  ; not directly referenced
mov edi, dword [ebp - 0x30]
push edx
push edx
push 0x80000080
mov eax, edi
add eax, 0x2314
push eax
call fcn_00018a50  ; call 0x18a50
mov eax, edi
pop ecx
add eax, 0x1114
pop ebx
push 0xc000
push eax
call fcn_00018863  ; call 0x18863
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_00012bd0  ; je 0x12bd0
push eax
push eax
push ref_00024f2c  ; push 0x24f2c
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp short loc_00012bd0  ; jmp 0x12bd0

loc_00012b91:  ; not directly referenced
sub esp, 0xc
push esi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test al, 0xc
je loc_00012402  ; je 0x12402
sub esp, 0xc
push esi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
and eax, 0xc
cmp eax, 8
jmp near loc_00012400  ; jmp 0x12400

loc_00012bbc:  ; not directly referenced
mov cl, byte [ebp - 0x2c]
mov eax, 0x10000
shl eax, cl
mov ecx, dword [ebp + 0xc]
or dword [ecx], eax
jmp near loc_000129c8  ; jmp 0x129c8

loc_00012bd0:  ; not directly referenced
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00012bda:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
mov ebx, 0xa
sub esp, 0xc
mov edi, dword [ebp + 0xc]
mov esi, dword [ebp + 0x10]

loc_00012bee:  ; not directly referenced
sub esp, 0xc
push dword [ebp + 8]
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
and eax, edi
cmp ax, si
je short loc_00012c1a  ; je 0x12c1a
sub esp, 0xc
push 0x64
call fcn_0001ba3f  ; call 0x1ba3f
add esp, 0x10
dec ebx
jne short loc_00012bee  ; jne 0x12bee
mov eax, 0x80000012
jmp short loc_00012c1c  ; jmp 0x12c1c

loc_00012c1a:  ; not directly referenced
xor eax, eax

loc_00012c1c:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00012c24:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x20
mov esi, dword [ebp + 8]
mov eax, dword [ebp + 0x10]
push 0
push 1
lea ebx, [esi + 0x68]
push ebx
mov dword [ebp - 0x1c], eax
call fcn_00012bda  ; call 0x12bda
add esp, 0x10
test eax, eax
jns short loc_00012c60  ; jns 0x12c60
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_00012cea  ; je 0x12cea
push eax
push eax
push ref_00024f44  ; push 0x24f44
jmp short loc_00012cdd  ; jmp 0x12cdd

loc_00012c60:  ; not directly referenced
mov eax, dword [ebp + 0xc]
push ecx
push ecx
push dword [eax]
lea eax, [esi + 0x60]
push eax
call fcn_00017dcb  ; call 0x17dcb
pop edi
pop eax
push 3
push ebx
call fcn_00018863  ; call 0x18863
add esp, 0xc
push 0
push 1
push ebx
call fcn_00012bda  ; call 0x12bda
add esp, 0x10
mov edi, eax
test eax, eax
jns short loc_00012c9f  ; jns 0x12c9f
push edx
push edx
push 0xfffe
push ebx
call fcn_00018890  ; call 0x18890
jmp short loc_00012cc8  ; jmp 0x12cc8

loc_00012c9f:  ; not directly referenced
xor edi, edi
cmp byte [ebp - 0x1c], 1
jne short loc_00012cef  ; jne 0x12cef
sub esp, 0xc
push ebx
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test al, 2
je short loc_00012ccd  ; je 0x12ccd
sub esp, 0xc
add esi, 0x64
push esi
call fcn_00017d8a  ; call 0x17d8a
mov edx, dword [ebp + 0xc]
mov dword [edx], eax

loc_00012cc8:  ; not directly referenced
add esp, 0x10
jmp short loc_00012cef  ; jmp 0x12cef

loc_00012ccd:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00012cea  ; je 0x12cea
push eax
push eax
push ref_00024f73  ; push 0x24f73

loc_00012cdd:  ; not directly referenced
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00012cea:  ; not directly referenced
mov edi, 0x80000007

loc_00012cef:  ; not directly referenced
lea esp, [ebp - 0xc]
mov eax, edi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00012cf9:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x2c
mov al, byte [ebp + 0xc]
mov byte [ebp - 0x29], al
mov al, byte [ebp + 0x10]
mov byte [ebp - 0x2a], al
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00012d35  ; je 0x12d35
cmp dword [ebp + 8], 0
jne short loc_00012d35  ; jne 0x12d35
push eax
push ref_00024f96  ; push 0x24f96
push 0x96
push ref_00024faa  ; push 0x24faa
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00012d35:  ; not directly referenced
xor ebx, ebx
lea esi, [ebp - 0x1c]

loc_00012d3a:  ; not directly referenced
push esi
push 0
push ebx
push ref_0002907c  ; push 0x2907c
mov dword [ebp - 0x1c], 0
call fcn_00019699  ; call 0x19699
add esp, 0x10
test eax, eax
jne short loc_00012d88  ; jne 0x12d88
mov edx, dword [ebp - 0x1c]
test edx, edx
je short loc_00012d88  ; je 0x12d88
movzx ecx, word [edx]
movzx edi, word [edx + 2]
shl ecx, 0x10
or ecx, edi
cmp ecx, dword [ebp + 8]
jne short loc_00012d88  ; jne 0x12d88
mov cl, byte [edx + 4]
cmp cl, 0xff
je short loc_00012d7b  ; je 0x12d7b
cmp cl, byte [ebp - 0x29]
jne short loc_00012d88  ; jne 0x12d88

loc_00012d7b:  ; not directly referenced
mov dl, byte [edx + 5]
cmp dl, 0xff
je short loc_00012d8d  ; je 0x12d8d
cmp dl, byte [ebp - 0x2a]
je short loc_00012d8d  ; je 0x12d8d

loc_00012d88:  ; not directly referenced
inc ebx
test eax, eax
je short loc_00012d3a  ; je 0x12d3a

loc_00012d8d:  ; not directly referenced
mov eax, dword [ebp - 0x1c]
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00012d98:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
push eax
push 0
push 0x1f
movzx eax, byte [ebx + 1]
push eax
call fcn_00016bd6  ; call 0x16bd6
add eax, 2
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
lea edx, [eax + 0x63bf]
cmp dx, 6
jbe short loc_00012dd6  ; jbe 0x12dd6
add ax, 0x633f
cmp ax, 0xa
ja short loc_00012e19  ; ja 0x12e19

loc_00012dd6:  ; not directly referenced
push ecx
push 0
push 0x1b
movzx eax, byte [ebx + 1]
push eax
call fcn_00016bd6  ; call 0x16bd6
mov ebx, eax
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_00012e04  ; je 0x12e04
push edx
push edx
push ref_00024fd2  ; push 0x24fd2
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00012e04:  ; not directly referenced
push eax
mov eax, esi
movzx esi, al
add ebx, 0x42
push esi
push 0x3f
push ebx
call fcn_000186c6  ; call 0x186c6
add esp, 0x10

loc_00012e19:  ; not directly referenced
lea esp, [ebp - 8]
xor eax, eax
pop ebx
pop esi
pop ebp
ret

fcn_00012e22:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x4c
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00012e45  ; je 0x12e45
push eax
push eax
push ref_00025017  ; push 0x25017
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00012e45:  ; not directly referenced
mov eax, dword [ebp + 8]
mov esi, dword [eax + 4]
call fcn_0001bef7  ; call 0x1bef7
lea edi, [esi + 0x2030]
mov dword [ebp - 0x2c], eax
push eax
mov eax, dword [ebp + 8]
push 0
push 0x1b
movzx eax, byte [eax + 1]
push eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 0
push 0x1f
mov ebx, eax
mov eax, dword [ebp + 8]
lea esi, [ebx + 0x120]
movzx eax, byte [eax + 1]
push eax
call fcn_00016bd6  ; call 0x16bd6
add eax, 2
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
mov dword [esp], edi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test eax, eax
jns short loc_00012edf  ; jns 0x12edf
sub esp, 0xc
push edi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0xc
and eax, 0xfe
or eax, 0x2000000
push eax
push 0xf8ffff01
push esi
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp dword [ebp - 0x2c], 1
jne short loc_00012edf  ; jne 0x12edf
push eax
push eax
push 0xf7ff
lea eax, [ebx + 0x78]
push eax
call fcn_00018890  ; call 0x18890
add esp, 0x10

loc_00012edf:  ; not directly referenced
sub esp, 0xc
push esi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test eax, 0x7000000
je short loc_00012f33  ; je 0x12f33
push eax
push eax
push 0xffffff01
lea eax, [ebx + 0x114]
push eax
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10
cmp dword [ebp - 0x2c], 1
jne short loc_00012f1d  ; jne 0x12f1d
push edi
push edi
push 0x80000000
push esi
call fcn_00018a50  ; call 0x18a50
jmp short loc_00012f30  ; jmp 0x12f30

loc_00012f1d:  ; not directly referenced
cmp dword [ebp - 0x2c], 2
jne short loc_00012f33  ; jne 0x12f33
push ecx
push ecx
push 0x7fffffff
push esi
call fcn_00018a7a  ; call 0x18a7a

loc_00012f30:  ; not directly referenced
add esp, 0x10

loc_00012f33:  ; not directly referenced
mov eax, dword [ebp + 8]
lea ecx, [ebx + 0x10]
mov dword [ebp - 0x40], ecx
mov eax, dword [eax + 0x1a]
push edx
push edx
push eax
push ecx
mov dword [ebp - 0x34], eax
call fcn_00017dcb  ; call 0x17dcb
lea eax, [ebx + 0x14]
pop ecx
pop esi
mov dword [ebp - 0x44], eax
push 0
push eax
call fcn_00017dcb  ; call 0x17dcb
lea eax, [ebx + 4]
pop edi
pop edx
mov dword [ebp - 0x48], eax
push 2
push eax
call fcn_00018863  ; call 0x18863
add esp, 0x10
cmp dword [ebp - 0x2c], 1
jne short loc_00012f9e  ; jne 0x12f9e
push esi
push esi
push 0x10
lea eax, [ebx + 0x43]
push eax
call fcn_0001866c  ; call 0x1866c
pop edi
pop eax
lea eax, [ebx + 0xc0]
push 0x20000
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10
mov eax, 0x4000
jmp short loc_00012fbe  ; jmp 0x12fbe

loc_00012f9e:  ; not directly referenced
xor eax, eax
cmp dword [ebp - 0x2c], 2
jne short loc_00012fbe  ; jne 0x12fbe
push ecx
push ecx
push 0xbf
lea eax, [ebx + 0x43]
push eax
call fcn_00018699  ; call 0x18699
add esp, 0x10
mov eax, 0x1000000

loc_00012fbe:  ; not directly referenced
push edx
push edx
push eax
lea eax, [ebx + 0xc4]
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10
cmp dword [ebp - 0x2c], 1
jne short loc_00012fec  ; jne 0x12fec
push eax
push eax
push 0x7fffffff
lea eax, [ebx + 0xd0]
push eax
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10

loc_00012fec:  ; not directly referenced
mov eax, dword [ebp + 8]
cmp byte [eax + 0x372], 0
jne short loc_00013007  ; jne 0x13007
push eax
push eax
push 0x7f
lea eax, [ebx + 0x4d]
push eax
call fcn_00018699  ; call 0x18699
jmp short loc_00013033  ; jmp 0x13033

loc_00013007:  ; not directly referenced
mov eax, dword [ebp + 8]
cmp byte [eax + 0x373], 0
je short loc_00013036  ; je 0x13036
sub esp, 0xc
lea eax, [ebx + 0x4d]
push eax
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
test al, 1
jne short loc_00013036  ; jne 0x13036
push edi
push edi
push 1
lea eax, [ebx + 0x4c]
push eax
call fcn_0001866c  ; call 0x1866c

loc_00013033:  ; not directly referenced
add esp, 0x10

loc_00013036:  ; not directly referenced
cmp dword [ebp - 0x2c], 2
jne short loc_00013069  ; jne 0x13069
push eax
push eax
mov eax, dword [ebp - 0x34]
push 1
add eax, 0x12
push eax
call fcn_00018863  ; call 0x18863
pop eax
pop edx
lea eax, [ebx + 0x41]
push 1
push eax
call fcn_0001866c  ; call 0x1866c
lea eax, [ebx + 0x42]
pop ecx
pop esi
push 4
push eax
call fcn_0001866c  ; call 0x1866c
add esp, 0x10

loc_00013069:  ; not directly referenced
mov edi, dword [ebp - 0x34]
push eax
push eax
push 1
lea esi, [edi + 8]
push esi
call fcn_00018a50  ; call 0x18a50
add esp, 0xc
push 1
push 1
push esi
call fcn_00012bda  ; call 0x12bda
mov dword [esp], edi
call fcn_00017cfe  ; call 0x17cfe
pop edx
pop ecx
movzx eax, ax
push eax
push edi
call fcn_00017d40  ; call 0x17d40
mov ecx, 3
cmp dword [ebp - 0x2c], 2
pop eax
mov eax, 0xf
pop edx
cmove eax, ecx
lea edx, [edi + 0xe]
push eax
push edx
mov dword [ebp - 0x3c], edx
call fcn_0001866c  ; call 0x1866c
pop ecx
pop edi
push 0xfffffffffffffffe
push esi
call fcn_00018a7a  ; call 0x18a7a
add esp, 0xc
push 0
push 1
push esi
call fcn_00012bda  ; call 0x12bda
add esp, 0x10
mov edi, eax
test eax, eax
jns short loc_000130f0  ; jns 0x130f0
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_00013407  ; je 0x13407
push eax
push eax
push ref_0002502e  ; push 0x2502e
jmp short loc_00013136  ; jmp 0x13136

loc_000130f0:  ; not directly referenced
push edi
push edi
push 1
push esi
call fcn_00018a50  ; call 0x18a50
mov eax, dword [ebp + 8]
movzx eax, word [eax + 0x374]
mov dword [esp], eax
call fcn_0001ba3f  ; call 0x1ba3f
add esp, 0xc
push 1
push 1
push esi
call fcn_00012bda  ; call 0x12bda
add esp, 0x10
mov edi, eax
test eax, eax
jns short loc_00013148  ; jns 0x13148
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_00013407  ; je 0x13407
push ecx
push ecx
push ref_00025069  ; push 0x25069

loc_00013136:  ; not directly referenced
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp near loc_00013407  ; jmp 0x13407

loc_00013148:  ; not directly referenced
cmp dword [ebp - 0x2c], 2
mov edx, 3
mov eax, 0xf
mov edi, 0xa
cmove eax, edx
xor edx, edx
mov word [ebp - 0x38], ax

loc_00013164:  ; not directly referenced
sub esp, 0xc
push dword [ebp - 0x3c]
mov dword [ebp - 0x4c], edx
call fcn_00017cc7  ; call 0x17cc7
mov edx, dword [ebp - 0x4c]
add esp, 0x10
mov byte [ebp - 0x2d], al
mov al, byte [ebp - 0x38]
and byte [ebp - 0x2d], al
mov al, byte [ebp - 0x2d]
cmp al, dl
jne short loc_0001318c  ; jne 0x1318c
test al, al
jne short loc_000131db  ; jne 0x131db

loc_0001318c:  ; not directly referenced
sub esp, 0xc
push 0x64
call fcn_0001ba3f  ; call 0x1ba3f
add esp, 0x10
dec edi
je short loc_000131a1  ; je 0x131a1
mov dl, byte [ebp - 0x2d]
jmp short loc_00013164  ; jmp 0x13164

loc_000131a1:  ; not directly referenced
cmp byte [ebp - 0x2d], 0
jne short loc_000131db  ; jne 0x131db
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000131c4  ; je 0x131c4
push edx
push edx
push ref_000250a4  ; push 0x250a4
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000131c4:  ; not directly referenced
push eax
mov edi, 0x80000007
push eax
push 0xfffffffffffffffe
push esi
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10
jmp near loc_00013407  ; jmp 0x13407

loc_000131db:  ; not directly referenced
mov eax, dword [ebp + 8]
cmp byte [eax + 0x371], 1
jne short loc_000131fa  ; jne 0x131fa
push eax
add ebx, 0x54
push eax
push 0x100
push ebx
call fcn_00018a50  ; call 0x18a50
add esp, 0x10

loc_000131fa:  ; not directly referenced
xor eax, eax
cmp dword [ebp - 0x2c], 2
mov byte [ebp - 0x2c], 0
setne al
lea eax, [eax + eax + 2]
mov word [ebp - 0x3c], ax

loc_0001320f:  ; not directly referenced
movzx eax, byte [ebp - 0x2c]
cmp ax, word [ebp - 0x3c]
jae loc_00013405  ; jae 0x13405
test byte [ebp - 0x2d], 1
jne short loc_00013240  ; jne 0x13240
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_000133fa  ; je 0x133fa
push eax
movzx eax, byte [ebp - 0x2c]
push eax
push ref_000250c3  ; push 0x250c3
jmp near loc_00013345  ; jmp 0x13345

loc_00013240:  ; not directly referenced
mov eax, dword [ebp + 8]
cmp byte [eax + 0x371], 0
je short loc_0001326b  ; je 0x1326b
mov cl, byte [ebp - 0x2c]
push eax
push eax
mov eax, 1
shl eax, cl
movzx eax, ax
push eax
mov eax, dword [ebp - 0x34]
add eax, 0xc
push eax
call fcn_00018863  ; call 0x18863
add esp, 0x10

loc_0001326b:  ; not directly referenced
movzx ebx, byte [ebp - 0x2c]
mov eax, ebx
shl eax, 0x1c
mov dword [ebp - 0x38], eax
or eax, 0xf0000
mov dword [ebp - 0x24], eax
push eax
push 1
lea eax, [ebp - 0x24]
push eax
push dword [ebp - 0x34]
call fcn_00012c24  ; call 0x12c24
add esp, 0x10
mov edi, eax
test eax, eax
jns short loc_000132b0  ; jns 0x132b0
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_00013407  ; je 0x13407
push eax
push eax
push ref_000250e0  ; push 0x250e0
jmp near loc_00013136  ; jmp 0x13136

loc_000132b0:  ; not directly referenced
mov eax, dword [ebp - 0x38]
push esi
push 1
or eax, 0xf0002
mov dword [ebp - 0x20], eax
lea eax, [ebp - 0x20]
push eax
push dword [ebp - 0x34]
call fcn_00012c24  ; call 0x12c24
add esp, 0x10
mov edi, eax
test eax, eax
jns short loc_000132ec  ; jns 0x132ec
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_00013407  ; je 0x13407
push ecx
push ecx
push ref_00025114  ; push 0x25114
jmp near loc_00013136  ; jmp 0x13136

loc_000132ec:  ; not directly referenced
mov eax, dword [ebp - 0x20]
movzx eax, ah
mov dword [ebp - 0x20], eax
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00013317  ; je 0x13317
sub esp, 0xc
push dword [ebp - 0x20]
push dword [ebp - 0x24]
push ebx
push ref_00025140  ; push 0x25140
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_00013317:  ; not directly referenced
movzx eax, byte [ebp - 0x20]
push edx
push ebx
push eax
push dword [ebp - 0x24]
call fcn_00012cf9  ; call 0x12cf9
add esp, 0x10
mov esi, eax
test eax, eax
jne short loc_00013357  ; jne 0x13357
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_000133fa  ; je 0x133fa
push eax
push dword [ebp - 0x24]
push ref_00025170  ; push 0x25170

loc_00013345:  ; not directly referenced
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp near loc_000133fa  ; jmp 0x133fa

loc_00013357:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00013388  ; je 0x13388
push eax
movzx eax, word [esi + 6]
push eax
movzx eax, byte [esi + 5]
push eax
movzx eax, byte [esi + 4]
push eax
movzx eax, word [esi + 2]
push eax
movzx eax, word [esi]
push eax
push ref_000251b6  ; push 0x251b6
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_00013388:  ; not directly referenced
xor ebx, ebx

loc_0001338a:  ; not directly referenced
movzx eax, word [esi + 6]
cmp ebx, eax
jae short loc_000133fa  ; jae 0x133fa
mov eax, dword [esi + ebx*4 + 0xc]
mov dword [ebp - 0x1c], eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000133c2  ; je 0x133c2
mov eax, dword [ebp - 0x1c]
shr eax, 0x1c
je short loc_000133c2  ; je 0x133c2
push eax
push ref_0002520c  ; push 0x2520c
push 0x26a
push ref_00024faa  ; push 0x24faa
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000133c2:  ; not directly referenced
mov eax, dword [ebp - 0x38]
or dword [ebp - 0x1c], eax
push eax
push 0
lea eax, [ebp - 0x1c]
push eax
push dword [ebp - 0x34]
call fcn_00012c24  ; call 0x12c24
add esp, 0x10
mov edi, eax
test eax, eax
jns short loc_000133f7  ; jns 0x133f7
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00013407  ; je 0x13407
push eax
push dword [ebp - 0x24]
push ref_00025226  ; push 0x25226
jmp near loc_00013136  ; jmp 0x13136

loc_000133f7:  ; not directly referenced
inc ebx
jmp short loc_0001338a  ; jmp 0x1338a

loc_000133fa:  ; not directly referenced
inc byte [ebp - 0x2c]
shr byte [ebp - 0x2d], 1
jmp near loc_0001320f  ; jmp 0x1320f

loc_00013405:  ; not directly referenced
xor edi, edi

loc_00013407:  ; not directly referenced
push edx
push edx
push 0xfffd
push dword [ebp - 0x48]
call fcn_00018890  ; call 0x18890
pop ecx
pop ebx
push 0
push dword [ebp - 0x40]
call fcn_00017dcb  ; call 0x17dcb
pop esi
pop eax
push 0
push dword [ebp - 0x44]
call fcn_00017dcb  ; call 0x17dcb
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_0001344b  ; je 0x1344b
push eax
push eax
push ref_0002525a  ; push 0x2525a
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001344b:  ; not directly referenced
lea esp, [ebp - 0xc]
mov eax, edi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00013455:
push ebp
mov ebp, esp
push edi
push esi
push ebx
mov ebx, 0xc8
sub esp, 0xc
mov esi, dword [ebp + 0xc]
lea edi, [esi + 0x20]

loc_00013469:
sub esp, 0xc
push edi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test al, 2
je short loc_00013489  ; je 0x13489
sub esp, 0xc
push 0x64
call fcn_0001ba3f  ; call 0x1ba3f
add esp, 0x10
dec ebx
jne short loc_00013469  ; jne 0x13469

loc_00013489:
sub esp, 0xc
push edi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test al, 2
jne short loc_000134b2  ; jne 0x134b2
add esi, 0x60
mov dword [ebp + 8], esi
mov dword [ebp + 0xc], 1
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017dcb  ; jmp 0x17dcb

loc_000134b2:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000134ba:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x18
mov ebx, dword [ebp + 0x14]
lea esi, [ebx + 0x84]
push esi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test al, 1
je short loc_00013502  ; je 0x13502

loc_000134d9:
sub esp, 0xc
push esi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test al, 1
je short loc_00013547  ; je 0x13547
sub ebx, 0xffffff80
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], 2
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018863  ; jmp 0x18863

loc_00013502:
sub esp, 0xc
lea edi, [ebx + 0x80]
push edi
call fcn_00017d8a  ; call 0x17d8a
pop edx
pop ecx
and eax, 0xfffffffe
push eax
push edi
mov edi, 0xc8
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10

loc_00013525:
sub esp, 0xc
push esi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test al, 1
jne short loc_000134d9  ; jne 0x134d9
sub esp, 0xc
push 0x64
call fcn_0001ba3f  ; call 0x1ba3f
add esp, 0x10
dec edi
jne short loc_00013525  ; jne 0x13525
jmp short loc_000134d9  ; jmp 0x134d9

loc_00013547:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001354f:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x2c
movzx eax, byte [ebp + 0x10]
mov byte [ebp - 0x19], 0
mov dword [ebp - 0x2c], eax

loc_00013563:
call fcn_0001c181  ; call 0x1c181
cmp byte [ebp - 0x19], al
jae loc_00013764  ; jae 0x13764
movzx esi, byte [ebp - 0x19]
push ecx
movzx eax, byte [esi + esi + ref_00020461]  ; movzx eax, byte [esi + esi + 0x20461]
push eax
movzx eax, byte [esi + esi + ref_00020460]  ; movzx eax, byte [esi + esi + 0x20460]
push eax
push dword [ebp - 0x2c]
mov dword [ebp - 0x28], eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0x10
mov ebx, eax
mov eax, dword [ebp + 8]
lea eax, [eax + esi*8]
cmp byte [eax], 0
mov dword [ebp - 0x24], eax
jne short loc_000135c0  ; jne 0x135c0
push edi
push edi
push 0
lea eax, [ebx + 0x10]
add ebx, 4
push eax
call fcn_00017dcb  ; call 0x17dcb
pop eax
pop edx
push 0
push ebx
jmp near loc_0001371f  ; jmp 0x1371f

loc_000135c0:
mov eax, dword [ebp + 8]
cmp byte [eax + 0x13], 1
jne short loc_000135dc  ; jne 0x135dc
push esi
push esi
push 0xfffc
lea eax, [ebx + 0x78]
push eax
call fcn_00018890  ; call 0x18890
add esp, 0x10

loc_000135dc:
sub esp, 0xc
lea edi, [ebx + 0x10]
push edi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test eax, eax
jne short loc_0001361f  ; jne 0x1361f
sub esp, 0xc
lea eax, [ebx + 4]
push eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test al, 2
jne short loc_0001361f  ; jne 0x1361f
push ecx
push ecx
push dword [ebp + 0xc]
push edi
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10
mov esi, dword [ebp + 0xc]
mov byte [ebp - 0x1a], 0
mov word [ebp - 0x1c], 0
jmp short loc_00013640  ; jmp 0x13640

loc_0001361f:
sub esp, 0xc
push edi
call fcn_00017d8a  ; call 0x17d8a
mov esi, eax
lea eax, [ebx + 4]
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
mov byte [ebp - 0x1a], 1
mov word [ebp - 0x1c], ax

loc_00013640:
push edx
push edx
lea eax, [ebx + 4]
push 6
push eax
mov dword [ebp - 0x20], eax
call fcn_00018863  ; call 0x18863
add esp, 0x10
cmp byte [ebp - 0x1a], 0
jne short loc_00013669  ; jne 0x13669
push eax
push eax
push 2
lea eax, [esi + 0x20]
push eax
call fcn_00018863  ; call 0x18863
add esp, 0x10

loc_00013669:
push eax
push eax
push 1
lea edx, [ebx + 0x80]
push edx
mov dword [ebp - 0x34], edx
call fcn_00018863  ; call 0x18863
lea ecx, [esi + 4]
push 0
push 0xf
push 0xc
push ecx
mov dword [ebp - 0x30], ecx
call fcn_00018b02  ; call 0x18b02
mov eax, dword [ebp - 0x24]
add esp, 0x20
mov ecx, dword [ebp - 0x30]
cmp byte [eax + 1], 1
sbb eax, eax
add eax, 3
movzx eax, al
push eax
push 3
push 0
push ecx
call fcn_00018b02  ; call 0x18b02
pop eax
pop edx
mov edx, dword [ebp - 0x34]
push 0xfffe
push edx
call fcn_00018890  ; call 0x18890
lea edx, [ebx + 0x78]
mov dword [esp], edx
mov dword [ebp - 0x24], edx
call fcn_00017d8a  ; call 0x17d8a
pop ecx
pop edx
mov edx, dword [ebp - 0x24]
or eax, 4
push eax
push edx
call fcn_00017dcb  ; call 0x17dcb
pop ecx
pop eax
lea eax, [ebx + 0x7c]
add ebx, 0x8c
push 0x4080
push eax
call fcn_00018a50  ; call 0x18a50
mov dword [esp], ebx
call fcn_00017d8a  ; call 0x17d8a
pop edx
pop ecx
and eax, 0xfbfff4ff
or eax, 0x20400
push eax
push ebx
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10
cmp byte [ebp - 0x1a], 0
je short loc_00013726  ; je 0x13726
movzx eax, word [ebp - 0x1c]
push esi
push esi
push eax
push dword [ebp - 0x20]

loc_0001371f:
call fcn_00017d40  ; call 0x17d40
jmp short loc_00013759  ; jmp 0x13759

loc_00013726:
mov eax, dword [ebp + 8]
cmp byte [eax + 0xb5], 0
je short loc_00013740  ; je 0x13740
push ebx
push ebx
push esi
push dword [ebp - 0x28]
call fcn_00013455  ; call 0x13455
add esp, 0x10

loc_00013740:
push eax
push eax
push 0xfff9
push dword [ebp - 0x20]
call fcn_00018890  ; call 0x18890
pop edx
pop ecx
push 0
push edi
call fcn_00017dcb  ; call 0x17dcb

loc_00013759:
add esp, 0x10
inc byte [ebp - 0x19]
jmp near loc_00013563  ; jmp 0x13563

loc_00013764:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001376e:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov ecx, dword [ebp + 0x10]
mov eax, dword [ebp + 8]
mov ebx, dword [ebp + 0xc]
mov edi, dword [ebp + 0x18]
mov dword [ebp - 0x24], ecx
mov dword [ebp - 0x20], eax
call fcn_0001bef7  ; call 0x1bef7
mov esi, eax
call fcn_0001bff9  ; call 0x1bff9
mov dword [ebp - 0x1c], eax
call fcn_0001bb39  ; call 0x1bb39
mov eax, dword [ebp - 0x20]
cmp byte [eax + 0x10], 0
je loc_00013ba6  ; je 0x13ba6
cmp esi, 1
jne short loc_000137dc  ; jne 0x137dc
sub esp, 0xc
lea eax, [edi + 0xe0]
push eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
mov edx, 0x15000000
and eax, 0x18
sub eax, 8
cmp eax, 0x10
ja short loc_000137d8  ; ja 0x137d8
mov edx, dword [eax*4 + ref_000203dc]  ; mov edx, dword [eax*4 + 0x203dc]

loc_000137d8:
push eax
push edx
jmp short loc_000137e8  ; jmp 0x137e8

loc_000137dc:
cmp dword [ebp - 0x1c], 2
jne short loc_000137f9  ; jne 0x137f9
push ecx
push 0xf000000

loc_000137e8:
push 0xffffff
lea eax, [ebx + 4]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_000137f9:
push eax
push eax
push 0xc401
lea eax, [edi + 0x44]
push eax
call fcn_00018863  ; call 0x18863
pop eax
pop edx
lea eax, [edi + 0x46]
push 0xf
push eax
call fcn_0001866c  ; call 0x1866c
add esp, 0xc
mov edx, 0xe0000000
cmp esi, 1
mov eax, 0xf8000000
cmovne eax, edx
mov ecx, 0xfce2e5f
mov edx, 0x7886e9f
cmovne edx, ecx
push edx
push eax
lea eax, [edi + 0x50]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0xc
push 0x200000a
push 0xff00
lea eax, [ebx + 0xc]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0xc
push 0x600
push 0xffffffffffffffdf
lea eax, [ebx + 0x10]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
cmp esi, 2
jne short loc_000138b6  ; jne 0x138b6
cmp dword [ebp - 0x1c], 1
jne short loc_00013891  ; jne 0x13891
push eax
add edi, 0xb0
push 0x20000
push 0xffff9fff
push edi
call fcn_00018aa4  ; call 0x18aa4
jmp short loc_000138ae  ; jmp 0x138ae

loc_00013891:
cmp dword [ebp - 0x1c], 2
jne loc_000139ca  ; jne 0x139ca
push eax
add edi, 0xa8
push eax
push 0x22000
push edi
call fcn_00018a50  ; call 0x18a50

loc_000138ae:
add esp, 0x10
jmp near loc_000139ca  ; jmp 0x139ca

loc_000138b6:
cmp esi, 1
jne short loc_000138ea  ; jne 0x138ea
push eax
push eax
push 0xfff7ffff
lea eax, [ebx + 0x8008]
push eax
call fcn_00018a7a  ; call 0x18a7a
add esp, 0xc
push 0x110000

loc_000138d6:
push 0xfffffeff
lea eax, [ebx + 0x8058]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_000138ea:
push ecx
push ecx
push 0x2040000
lea eax, [ebx + 0x8060]
push eax
call fcn_00018a50  ; call 0x18a50
pop edi
pop eax
lea eax, [ebx + 0x8090]
push 0x4100
push eax
call fcn_00018a50  ; call 0x18a50
pop eax
pop edx
lea eax, [ebx + 0x8094]
push 0xa04000
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0xc
push 0x40
push 0xfffeffff
lea eax, [ebx + 0x80e0]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0xc
push 0xc00
push 0xffff8dff
lea eax, [ebx + 0x80ec]
push eax
call fcn_00018aa4  ; call 0x18aa4
lea eax, [ebx + 0x80f0]
pop ecx
pop edi
push 0xffefffff
push eax
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10
cmp esi, 2
jne short loc_000139d5  ; jne 0x139d5
push edi
push edi
push 0x2000000
lea eax, [ebx + 0x80fc]
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0xc
push 0x100800
push 0xfffffefb
lea eax, [ebx + 0x8110]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0xc
push 0xff00f03c
push 0
lea eax, [ebx + 0x8140]
push eax
call fcn_00018aa4  ; call 0x18aa4
pop eax
pop edx
lea eax, [ebx + 0x8144]
push 0x1c0
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10
jmp near loc_00013b97  ; jmp 0x13b97

loc_000139ca:
push eax
push 0x10000
jmp near loc_000138d6  ; jmp 0x138d6

loc_000139d5:
cmp esi, 1
jne loc_00013b97  ; jne 0x13b97
push ecx
xor edi, edi
push 0x100800
push 0xfffffffffffffffb
lea eax, [ebx + 0x8110]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0xc
push 0xff03c132
push 0
lea eax, [ebx + 0x8140]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0xc
push 0x100
push 0xffffff3f
lea eax, [ebx + 0x8144]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
mov eax, 0x202000

loc_00013a2b:
push ecx
not eax
push edi
push eax
lea edx, [ebx + 0x8154]
push edx
mov dword [ebp - 0x28], edx
call fcn_00018aa4  ; call 0x18aa4
pop eax
pop edx
mov edx, dword [ebp - 0x28]
push 0xfffffffffffffff7
push edx
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10
cmp esi, 2
jne loc_00013af0  ; jne 0x13af0
push ecx
push ecx
push 3
lea eax, [ebx + 0x8164]
push eax
call fcn_00018a50  ; call 0x18a50
mov eax, dword [ebp - 0x1c]
add esp, 0x10
cmp eax, 1
je short loc_00013a80  ; je 0x13a80
cmp eax, 2
mov eax, 0xe403f
cmove edi, eax
jmp short loc_00013a85  ; jmp 0x13a85

loc_00013a80:
mov edi, 0xe0038

loc_00013a85:
push eax
push edi
push 0xfff00000
lea eax, [ebx + 0x816c]
push eax
call fcn_00018aa4  ; call 0x18aa4
pop eax
pop edx
lea eax, [ebx + 0x8174]
push 0x1400c0a
push eax
call fcn_00017dcb  ; call 0x17dcb
add esp, 0xc
push 0x33200a3
push 0
lea eax, [ebx + 0x817c]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0xc
push 0xcb0028
push 0
lea eax, [ebx + 0x8180]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0xc
push 0x64001e
push 0
lea eax, [ebx + 0x8184]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_00013af0:
cmp esi, 2
sete dl
cmp dword [ebp - 0x1c], 1
jne short loc_00013b05  ; jne 0x13b05
mov eax, 0x5000000
test dl, dl
jne short loc_00013b16  ; jne 0x13b16

loc_00013b05:
cmp dword [ebp - 0x1c], 2
mov eax, 0x1000000
mov ecx, 0x5000000
cmove eax, ecx

loc_00013b16:
push ecx
push ecx
push eax
lea eax, [ebx + 0x8188]
push eax
mov dword [ebp - 0x28], edx
call fcn_00018a50  ; call 0x18a50
add esp, 0x10
cmp dword [ebp - 0x1c], 2
jne short loc_00013ba6  ; jne 0x13ba6
mov edx, dword [ebp - 0x28]
test dl, dl
je short loc_00013ba6  ; je 0x13ba6
cmp byte [ebp - 0x24], 7
jbe short loc_00013ba6  ; jbe 0x13ba6
push edx
push 2
push 0xfffffffffffffff9
lea eax, [ebx + 0x8098]
push eax
call fcn_00018aa4  ; call 0x18aa4
mov ecx, dword [ebp - 0x20]
add esp, 0xc
mov edx, 0x1737d
mov eax, 0x3737d
cmp byte [ecx + 0x28], 1
cmove eax, edx
push eax
push 0xfffd8000
lea eax, [ebx + 0x8198]
add ebx, 0x819c
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], 0xfffffff0
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018a7a  ; jmp 0x18a7a

loc_00013b97:
mov eax, 0x200000
mov edi, 0x2000
jmp near loc_00013a2b  ; jmp 0x13a2b

loc_00013ba6:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00013bae:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
call fcn_0001bef7  ; call 0x1bef7
mov esi, eax
call fcn_0001bff9  ; call 0x1bff9
mov edi, eax
call fcn_0001bb39  ; call 0x1bb39
mov eax, dword [ebp + 8]
push ebx
push 0
push 0x14
movzx eax, byte [eax + 1]
push eax
call fcn_00016bd6  ; call 0x16bd6
push 0xc0
push 0xffffffffffffffff
push 0xe5004001
push dword [ebp + 0xc]
mov ebx, eax
call fcn_00009d54  ; call 0x9d54
add esp, 0x14
lea edx, [ebx + 0x40]
push edx
mov dword [ebp - 0x20], edx
call fcn_00017d8a  ; call 0x17d8a
pop edx
mov edx, dword [ebp - 0x20]
mov ecx, eax
movzx eax, ax
and ecx, 0xff7fffff
or ah, 1
mov dword [ebp - 0x1c], ecx
pop ecx
push eax
push edx
call fcn_00017d40  ; call 0x17d40
pop eax
mov eax, dword [ebp - 0x1c]
pop edx
or eax, 0x360100
shr eax, 0x10
movzx eax, al
push eax
lea eax, [ebx + 0x42]
push eax
call fcn_00017ce1  ; call 0x17ce1
pop ecx
pop eax
lea eax, [ebx + 0x44]
push 0x288
push eax
call fcn_00018863  ; call 0x18863
add esp, 0x10
cmp esi, 1
je short loc_00013c6c  ; je 0x13c6c
mov eax, 0xc0
cmp esi, 2
jne short loc_00013c71  ; jne 0x13c71
mov eax, 0x40040
cmp edi, 2
mov edx, 0x40000
cmovne eax, edx
jmp short loc_00013c71  ; jmp 0x13c71

loc_00013c6c:
mov eax, 0x40

loc_00013c71:
push ecx
push ecx
push eax
lea eax, [ebx + 0xa0]
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10
cmp edi, 2
jne short loc_00013c92  ; jne 0x13c92
mov eax, 0x1800
cmp esi, 2
je short loc_00013c94  ; je 0x13c94

loc_00013c92:
xor eax, eax

loc_00013c94:
push edx
add ebx, 0xa4
push eax
push 0xffffdfff
push ebx
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00013cb2:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov edx, dword [ebp + 0xc]
mov esi, dword [ebp + 0x10]
mov ebx, dword [ebp + 0x18]
mov dword [ebp - 0x1c], edx
call fcn_0001bef7  ; call 0x1bef7
mov edi, eax
call fcn_0001bff9  ; call 0x1bff9
mov edx, dword [ebp - 0x1c]
cmp eax, 1
sete cl
cmp edi, 1
jne loc_00013ddd  ; jne 0x13ddd
test cl, cl
je loc_00013ddd  ; je 0x13ddd
mov eax, dword [ebp + 8]
sub esp, 0xc
lea edi, [eax + 0xe0]
push edi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
mov edx, dword [ebp - 0x1c]
and eax, 6
cmp eax, 4
je short loc_00013d2d  ; je 0x13d2d
cmp eax, 6
je short loc_00013d22  ; je 0x13d22
cmp eax, 2
jne short loc_00013d38  ; jne 0x13d38
mov byte [edx], 0xc
mov dword [ebx], 0x3f3f
jmp short loc_00013d41  ; jmp 0x13d41

loc_00013d22:
mov byte [edx], 8
mov dword [ebx], 0xf0f
jmp short loc_00013d41  ; jmp 0x13d41

loc_00013d2d:
mov byte [edx], 0xa
mov dword [ebx], 0xf3f
jmp short loc_00013d41  ; jmp 0x13d41

loc_00013d38:
mov byte [edx], 0xe
mov dword [ebx], 0x3fff

loc_00013d41:
or dword [ebx], 0xf0
sub esp, 0xc
push edi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
and eax, 0x18
cmp eax, 0x10
je short loc_00013d87  ; je 0x13d87
cmp eax, 0x18
je short loc_00013d76  ; je 0x13d76
cmp eax, 8
jne short loc_00013d98  ; jne 0x13d98
mov eax, dword [ebp + 0x14]
mov byte [eax], 4
mov eax, dword [ebp + 0x1c]
mov dword [eax], 0xf
jmp short loc_00013da7  ; jmp 0x13da7

loc_00013d76:
mov eax, dword [ebp + 0x14]
mov byte [eax], 0
mov eax, dword [ebp + 0x1c]
mov dword [eax], 0
jmp short loc_00013da7  ; jmp 0x13da7

loc_00013d87:
mov eax, dword [ebp + 0x14]
mov byte [eax], 2
mov eax, dword [ebp + 0x1c]
mov dword [eax], 3
jmp short loc_00013da7  ; jmp 0x13da7

loc_00013d98:
mov eax, dword [ebp + 0x14]
mov byte [eax], 6
mov eax, dword [ebp + 0x1c]
mov dword [eax], 0x3f

loc_00013da7:
sub esp, 0xc
push edi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
and eax, 0x20
je short loc_00013dcf  ; je 0x13dcf
cmp eax, 0x20
jne loc_00013ea5  ; jne 0x13ea5
mov byte [esi], 0
and dword [ebx], 0xffffbfff
jmp near loc_00013ea5  ; jmp 0x13ea5

loc_00013dcf:
mov byte [esi], 1
or dword [ebx], 0x4000
jmp near loc_00013ea5  ; jmp 0x13ea5

loc_00013ddd:
cmp edi, 2
jne short loc_00013e37  ; jne 0x13e37
test cl, cl
je short loc_00013e37  ; je 0x13e37
mov eax, dword [ebp + 0x14]
sub esp, 0xc
mov byte [edx], 8
mov dword [ebx], 0xff
mov byte [eax], 4
mov eax, dword [ebp + 0x1c]
mov dword [eax], 0xf
mov eax, dword [ebp + 8]
lea edi, [eax + 0xe0]
push edi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
and eax, 0x20
je short loc_00013e2c  ; je 0x13e2c
cmp eax, 0x20
jne loc_00013ea5  ; jne 0x13ea5
mov byte [esi], 0
and dword [ebx], 0xfffffeff
jmp short loc_00013ea5  ; jmp 0x13ea5

loc_00013e2c:
mov byte [esi], 1
or dword [ebx], 0x100
jmp short loc_00013ea5  ; jmp 0x13ea5

loc_00013e37:
cmp eax, 2
jne short loc_00013ea5  ; jne 0x13ea5
mov eax, dword [ebp + 8]
sub esp, 0xc
mov dword [ebp - 0x1c], edx
lea edi, [eax + 0xe0]
push edi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
mov edx, dword [ebp - 0x1c]
test al, 2
je short loc_00013e69  ; je 0x13e69
mov byte [edx], 8
mov dword [ebx], 0xff
mov byte [esi], 0
jmp short loc_00013e96  ; jmp 0x13e96

loc_00013e69:
sub esp, 0xc
mov byte [edx], 0xa
mov dword [ebx], 0xff
push edi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test al, 0x20
jne short loc_00013e8d  ; jne 0x13e8d
mov byte [esi], 1
or dword [ebx], 0x400
jmp short loc_00013e96  ; jmp 0x13e96

loc_00013e8d:
mov byte [esi], 0
and dword [ebx], 0xfffffbff

loc_00013e96:
mov eax, dword [ebp + 0x14]
mov byte [eax], 4
mov eax, dword [ebp + 0x1c]
mov dword [eax], 0xf

loc_00013ea5:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00013ead:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x3c
call fcn_0001bff9  ; call 0x1bff9
mov ebx, eax
call fcn_0001bef7  ; call 0x1bef7
cmp ebx, 1
jne short loc_00013ee6  ; jne 0x13ee6
cmp eax, 2
je short loc_00013f02  ; je 0x13f02
mov ecx, ref_0002731c  ; mov ecx, 0x2731c
xor edx, edx
mov edi, ecx
dec eax
mov eax, ref_00027358  ; mov eax, 0x27358
cmovne edi, edx
cmove edx, eax
mov dword [ebp - 0x34], edx
jmp short loc_00013f0e  ; jmp 0x13f0e

loc_00013ee6:
mov edx, ref_000272d0  ; mov edx, 0x272d0
xor eax, eax
mov edi, edx
cmp ebx, 2
mov edx, ref_000272e0  ; mov edx, 0x272e0
cmovne edi, eax
cmove eax, edx
mov dword [ebp - 0x34], eax
jmp short loc_00013f0e  ; jmp 0x13f0e

loc_00013f02:
mov edi, ref_0002730c  ; mov edi, 0x2730c
mov dword [ebp - 0x34], ref_00027334  ; mov dword [ebp - 0x34], 0x27334

loc_00013f0e:
test edi, edi
je short loc_00013f18  ; je 0x13f18
cmp dword [ebp - 0x34], 0
jne short loc_00013f42  ; jne 0x13f42

loc_00013f18:
call fcn_000153f0  ; call 0x153f0
test al, al
je loc_0001480b  ; je 0x1480b
push eax
push ref_000221f1  ; push 0x221f1
push 0x601
push ref_0002526f  ; push 0x2526f
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
jmp near loc_0001480b  ; jmp 0x1480b

loc_00013f42:
mov eax, dword [ebp + 8]
cmp byte [eax + 0x10], 0
je loc_0001480b  ; je 0x1480b
push eax
push eax
lea eax, [ebp - 0x20]
push eax
lea eax, [ebp - 0x24]
push eax
lea eax, [ebp - 0x25]
push eax
lea eax, [ebp - 0x26]
push eax
lea eax, [ebp - 0x27]
push eax
push dword [ebp + 0x18]
call fcn_00013cb2  ; call 0x13cb2
mov eax, dword [ebp + 0xc]
add esp, 0x14
add eax, 0x10
push eax
call fcn_00017d8a  ; call 0x17d8a
mov ecx, dword [ebp + 0xc]
shr eax, 0x10
lea ebx, [ecx + eax*4]
mov dword [esp], ebx
call fcn_00017d8a  ; call 0x17d8a
mov esi, eax
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_00013faf  ; je 0x13faf
push eax
push ebx
push ref_0002529d  ; push 0x2529d
push 0x80000000
call fcn_000153f7  ; call 0x153f7

loc_00013fac:
add esp, 0x10

loc_00013faf:
mov eax, esi
cmp al, 0xa
jne short loc_00014033  ; jne 0x14033
sub esp, 0xc
lea eax, [ebx + 0x20]
push eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test al, 1
je loc_0001404f  ; je 0x1404f
sub esp, 0xc
add ebx, 0x24
push ebx
call fcn_00017d8a  ; call 0x17d8a
movzx edx, byte [ebp - 0x25]
add esp, 0x10
mov dword [ebp - 0x2c], 0
shr eax, 0x18
add eax, 0x47
shl eax, 4

loc_00013fef:
cmp dword [ebp - 0x2c], edx
jae short loc_00014026  ; jae 0x14026
mov ecx, dword [ebp - 0x2c]
cmp eax, dword [edi + ecx*4]
jne short loc_00014021  ; jne 0x14021
call fcn_000153e9  ; call 0x153e9
mov byte [ebp - 0x2d], 1
test al, al
je short loc_0001405a  ; je 0x1405a
push esi
push dword [ebp - 0x2c]
push ref_000252ca  ; push 0x252ca
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp short loc_0001405a  ; jmp 0x1405a

loc_00014021:
inc dword [ebp - 0x2c]
jmp short loc_00013fef  ; jmp 0x13fef

loc_00014026:
mov dword [ebp - 0x2c], 0xffffffff
mov byte [ebp - 0x2d], 1
jmp short loc_0001405a  ; jmp 0x1405a

loc_00014033:
mov eax, esi
movzx esi, ah
test esi, esi
je short loc_0001404f  ; je 0x1404f
lea ebx, [ebx + esi*4]
sub esp, 0xc
push ebx
call fcn_00017d8a  ; call 0x17d8a
mov esi, eax
jmp near loc_00013fac  ; jmp 0x13fac

loc_0001404f:
mov dword [ebp - 0x2c], 0xffffffff
mov byte [ebp - 0x2d], 0

loc_0001405a:
mov eax, dword [ebp + 0x18]
push ebx
push dword [ebp - 0x24]
add eax, 0xd4
mov dword [ebp - 0x38], eax
push 0xffff8000
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0xc
mov eax, dword [ebp + 0x18]
push dword [ebp - 0x20]
add eax, 0xdc
push 0xffffffffffffffc0
push eax
mov dword [ebp - 0x3c], eax
call fcn_00018aa4  ; call 0x18aa4
lea eax, [ebp - 0x1c]
mov dword [esp], eax
call fcn_000196d3  ; call 0x196d3
add esp, 0x10
cmp dword [ebp - 0x1c], 0x11
je loc_0001480b  ; je 0x1480b
mov eax, dword [ebp + 0x1c]
sub esp, 0xc
add eax, 0xa2
push eax
mov dword [ebp - 0x40], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test al, 0x20
je short loc_00014138  ; je 0x14138
mov eax, dword [ebp + 0x1c]
sub esp, 0xc
add eax, 0xac
push eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test eax, 0x10000
je short loc_00014138  ; je 0x14138
sub esp, 0xc
push dword [ebp - 0x3c]
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
and eax, 0x3f
cmp byte [ebp - 0x2d], 0
je short loc_000140fe  ; je 0x140fe
mov cl, byte [ebp - 0x2c]
mov edx, 1
shl edx, cl
or eax, edx

loc_000140fe:
push edx
push eax
mov eax, dword [ebp + 0x18]
push 0xffffffffffffffc0
add eax, 0xd8
push eax
call fcn_00018aa4  ; call 0x18aa4
pop ecx
push dword [ebp - 0x38]
call fcn_00017d8a  ; call 0x17d8a
add esp, 0xc
and eax, 0x7fff
push eax
mov eax, dword [ebp + 0x18]
push 0xffff8000
add eax, 0xd0
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_00014138:
mov eax, dword [ebp + 8]
cmp byte [eax + 0xb5], 0
jne short loc_0001415c  ; jne 0x1415c
push eax
push eax
mov eax, dword [ebp + 0x1c]
push 0xfffeffff
add eax, 0xac
push eax
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10

loc_0001415c:
mov eax, dword [ebp + 8]
mov esi, 1
mov al, byte [eax + 0x11]
test al, al
je loc_00014240  ; je 0x14240
xor esi, esi
dec al
jne loc_00014240  ; jne 0x14240
mov eax, dword [ebp + 8]
mov al, byte [eax + 0x10]
cmp al, 2
sete cl
dec al
mov esi, ecx
jne loc_00014240  ; jne 0x14240
sub esp, 0xc
push dword [ebp - 0x40]
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test al, 0x20
jne short loc_000141aa  ; jne 0x141aa

loc_000141a0:
mov esi, 2
jmp near loc_00014240  ; jmp 0x14240

loc_000141aa:
mov bl, byte [ebp - 0x2d]
xor esi, esi
and ebx, 1

loc_000141b2:
movzx eax, byte [ebp - 0x25]
cmp esi, eax
jae short loc_000141dd  ; jae 0x141dd
cmp esi, dword [ebp - 0x2c]
jne short loc_000141c3  ; jne 0x141c3
test bl, bl
jne short loc_000141da  ; jne 0x141da

loc_000141c3:
push eax
mov eax, dword [ebp + 0xc]
push 0x80000000
push 0xfffffffffffffffd
add eax, dword [edi + esi*4]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_000141da:
inc esi
jmp short loc_000141b2  ; jmp 0x141b2

loc_000141dd:
mov al, byte [ebp - 0x2d]
mov ebx, 0xa
and eax, 1
mov byte [ebp - 0x2e], al

loc_000141eb:
xor esi, esi
xor edx, edx

loc_000141ef:
movzx eax, byte [ebp - 0x25]
cmp edx, eax
jae short loc_0001421f  ; jae 0x1421f
cmp edx, dword [ebp - 0x2c]
jne short loc_00014202  ; jne 0x14202
cmp byte [ebp - 0x2e], 0
jne short loc_0001421c  ; jne 0x1421c

loc_00014202:
mov eax, dword [ebp + 0xc]
sub esp, 0xc
add eax, dword [edi + edx*4]
mov dword [ebp - 0x44], edx
push eax
call fcn_00017d8a  ; call 0x17d8a
mov edx, dword [ebp - 0x44]
add esp, 0x10
or esi, eax

loc_0001421c:
inc edx
jmp short loc_000141ef  ; jmp 0x141ef

loc_0001421f:
sub esp, 0xc
push 0x2710
call fcn_0001ba3f  ; call 0x1ba3f
add esp, 0x10
and esi, 0x10
je loc_000141a0  ; je 0x141a0
dec ebx
jne short loc_000141eb  ; jne 0x141eb
jmp near loc_000141a0  ; jmp 0x141a0

loc_00014240:
cmp byte [ebp - 0x25], 0
je loc_00014476  ; je 0x14476
mov eax, esi
dec al
jne loc_00014476  ; jne 0x14476
mov eax, dword [ebp + 0x18]
sub esp, 0xc
lea ebx, [eax + 0xd0]
push ebx
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test eax, eax
je short loc_00014271  ; je 0x14271

loc_0001426d:
xor esi, esi
jmp short loc_000142bf  ; jmp 0x142bf

loc_00014271:
mov eax, dword [ebp + 0x18]
sub esp, 0xc
add eax, 0xd8
push eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test eax, eax
jne short loc_0001426d  ; jne 0x1426d
jmp near loc_00014476  ; jmp 0x14476

loc_0001428e:
mov ecx, dword [ebp - 0x34]
sub esp, 0xc
mov eax, dword [ebp + 0xc]
add eax, dword [ecx + esi*4]
push eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test al, 1
je short loc_000142be  ; je 0x142be
mov ecx, dword [ebp - 0x34]
push eax
mov eax, dword [ebp + 0xc]
push 0x10
push 0xfffffffffffffffd
add eax, dword [ecx + esi*4]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_000142be:
inc esi

loc_000142bf:
movzx eax, byte [ebp - 0x27]
cmp esi, eax
jb short loc_0001428e  ; jb 0x1428e
mov dword [ebp - 0x38], 0xa

loc_000142ce:
xor esi, esi
xor edx, edx

loc_000142d2:
movzx eax, byte [ebp - 0x27]
cmp edx, eax
jae short loc_000142fa  ; jae 0x142fa
mov ecx, dword [ebp - 0x34]
sub esp, 0xc
mov eax, dword [ebp + 0xc]
mov dword [ebp - 0x3c], edx
add eax, dword [ecx + edx*4]
push eax
call fcn_00017d8a  ; call 0x17d8a
mov edx, dword [ebp - 0x3c]
add esp, 0x10
inc edx
or esi, eax
jmp short loc_000142d2  ; jmp 0x142d2

loc_000142fa:
sub esp, 0xc
push 0x2710
call fcn_0001ba3f  ; call 0x1ba3f
add esp, 0x10
and esi, 0x10
je short loc_00014314  ; je 0x14314
dec dword [ebp - 0x38]
jne short loc_000142ce  ; jne 0x142ce

loc_00014314:
push esi
push esi
push 0xffff8000
push ebx
xor ebx, ebx
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10

loc_00014326:
movzx eax, byte [ebp - 0x27]
cmp ebx, eax
jae short loc_0001434b  ; jae 0x1434b
push ecx
mov ecx, dword [ebp - 0x34]
push 0xfe0000
mov eax, dword [ebp + 0xc]
push 0xfffffffffffffffd
add eax, dword [ecx + ebx*4]
inc ebx
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
jmp short loc_00014326  ; jmp 0x14326

loc_0001434b:
cmp byte [ebp - 0x26], 0
je short loc_0001436b  ; je 0x1436b
push edx
mov edx, dword [ebp - 0x34]
push 0xfe0000
mov ecx, dword [ebp + 0xc]
push 0xfffffffffffffffd
add ecx, dword [edx + eax*4]
push ecx
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_0001436b:
mov bl, byte [ebp - 0x2d]
xor esi, esi
and ebx, 1

loc_00014373:
movzx eax, byte [ebp - 0x25]
cmp esi, eax
jae short loc_0001439e  ; jae 0x1439e
cmp esi, dword [ebp - 0x2c]
jne short loc_00014384  ; jne 0x14384
test bl, bl
jne short loc_0001439b  ; jne 0x1439b

loc_00014384:
push eax
mov eax, dword [ebp + 0xc]
push 0x80000000
push 0xfffffffffffffffd
add eax, dword [edi + esi*4]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_0001439b:
inc esi
jmp short loc_00014373  ; jmp 0x14373

loc_0001439e:
cmp byte [ebp - 0x2d], 0
mov eax, 0xffffffc0
je short loc_000143b6  ; je 0x143b6
mov cl, byte [ebp - 0x2c]
mov eax, 1
shl eax, cl
or eax, 0xffffffc0

loc_000143b6:
push ebx
push ebx
mov ebx, 0xa
push eax
mov eax, dword [ebp + 0x18]
add eax, 0xd8
push eax
call fcn_00018a7a  ; call 0x18a7a
mov al, byte [ebp - 0x2d]
add esp, 0x10
and eax, 1
mov byte [ebp - 0x38], al

loc_000143d8:
xor esi, esi
xor edx, edx

loc_000143dc:
movzx eax, byte [ebp - 0x25]
cmp edx, eax
jae short loc_0001440c  ; jae 0x1440c
cmp edx, dword [ebp - 0x2c]
jne short loc_000143ef  ; jne 0x143ef
cmp byte [ebp - 0x38], 0
jne short loc_00014409  ; jne 0x14409

loc_000143ef:
mov eax, dword [ebp + 0xc]
sub esp, 0xc
add eax, dword [edi + edx*4]
mov dword [ebp - 0x3c], edx
push eax
call fcn_00017d8a  ; call 0x17d8a
mov edx, dword [ebp - 0x3c]
add esp, 0x10
or esi, eax

loc_00014409:
inc edx
jmp short loc_000143dc  ; jmp 0x143dc

loc_0001440c:
sub esp, 0xc
push 0x2710
call fcn_0001ba3f  ; call 0x1ba3f
add esp, 0x10
and esi, 0x10
je short loc_00014424  ; je 0x14424
dec ebx
jne short loc_000143d8  ; jne 0x143d8

loc_00014424:
mov bl, byte [ebp - 0x2d]
xor esi, esi
and ebx, 1

loc_0001442c:
movzx eax, byte [ebp - 0x25]
cmp esi, eax
jae short loc_00014457  ; jae 0x14457
cmp esi, dword [ebp - 0x2c]
jne short loc_0001443d  ; jne 0x1443d
test bl, bl
jne short loc_00014454  ; jne 0x14454

loc_0001443d:
push ecx
mov eax, dword [ebp + 0xc]
push 0xfe0000
push 0xfffffffffffffffd
add eax, dword [edi + esi*4]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_00014454:
inc esi
jmp short loc_0001442c  ; jmp 0x1442c

loc_00014457:
mov eax, dword [ebp + 0xc]
push esi
push esi
push 1
lea ebx, [eax + 0x80]
push ebx
call fcn_00018a50  ; call 0x18a50
pop eax
pop edx
push 0xfffffffffffffffe
push ebx
call fcn_00018a7a  ; call 0x18a7a
jmp short loc_000144e0  ; jmp 0x144e0

loc_00014476:
cmp byte [ebp - 0x25], 0
je loc_0001458f  ; je 0x1458f
mov eax, esi
cmp al, 2
jne short loc_000144e8  ; jne 0x144e8
sub esp, 0xc
push dword [ebp - 0x3c]
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
and eax, 0x3f
cmp byte [ebp - 0x2d], 0
je short loc_000144a9  ; je 0x144a9
mov cl, byte [ebp - 0x2c]
mov edx, 1
shl edx, cl
or eax, edx

loc_000144a9:
push edx
push eax
mov eax, dword [ebp + 0x18]
push 0xffffffffffffffc0
add eax, 0xd8
push eax
call fcn_00018aa4  ; call 0x18aa4
pop ecx
push dword [ebp - 0x38]
call fcn_00017d8a  ; call 0x17d8a
add esp, 0xc
and eax, 0x7fff
push eax
mov eax, dword [ebp + 0x18]
push 0xffff8000
add eax, 0xd0
push eax
call fcn_00018aa4  ; call 0x18aa4

loc_000144e0:
add esp, 0x10
jmp near loc_0001458f  ; jmp 0x1458f

loc_000144e8:
sub esp, 0xc
push dword [ebp - 0x40]
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
test al, 0x20
je loc_0001458f  ; je 0x1458f
mov bl, byte [ebp - 0x2d]
xor esi, esi
and ebx, 1

loc_00014506:
movzx eax, byte [ebp - 0x25]
cmp esi, eax
jae short loc_00014531  ; jae 0x14531
cmp esi, dword [ebp - 0x2c]
jne short loc_00014517  ; jne 0x14517
test bl, bl
jne short loc_0001452e  ; jne 0x1452e

loc_00014517:
push eax
mov eax, dword [ebp + 0xc]
push 0x80000000
push 0xfffffffffffffffd
add eax, dword [edi + esi*4]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_0001452e:
inc esi
jmp short loc_00014506  ; jmp 0x14506

loc_00014531:
mov al, byte [ebp - 0x2d]
mov dword [ebp - 0x38], 0
and eax, 1
mov byte [ebp - 0x3c], al

loc_00014541:
cmp esi, dword [ebp - 0x2c]
jne short loc_0001454e  ; jne 0x1454e
xor ebx, ebx
cmp byte [ebp - 0x3c], 0
jne short loc_00014584  ; jne 0x14584

loc_0001454e:
xor ebx, ebx
xor esi, esi

loc_00014552:
movzx eax, byte [ebp - 0x25]
cmp esi, eax
jae short loc_00014571  ; jae 0x14571
mov eax, dword [ebp + 0xc]
sub esp, 0xc
add eax, dword [edi + esi*4]
inc esi
push eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
or ebx, eax
jmp short loc_00014552  ; jmp 0x14552

loc_00014571:
sub esp, 0xc
push 0x2710
call fcn_0001ba3f  ; call 0x1ba3f
add esp, 0x10
inc dword [ebp - 0x38]

loc_00014584:
and bl, 0x10
je short loc_0001458f  ; je 0x1458f
cmp dword [ebp - 0x38], 9
jbe short loc_00014541  ; jbe 0x14541

loc_0001458f:
mov eax, dword [ebp + 8]
xor ebx, ebx
cmp byte [eax + 0x13], 1
jne loc_000147cc  ; jne 0x147cc

loc_0001459e:
movzx eax, byte [ebp - 0x27]
cmp ebx, eax
jae short loc_000145d9  ; jae 0x145d9
mov ecx, dword [ebp - 0x34]
sub esp, 0xc
mov eax, dword [ebp + 0xc]
add eax, dword [ecx + ebx*4]
push eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
test al, 1
je short loc_000145d6  ; je 0x145d6
push ecx
mov ecx, dword [ebp - 0x34]
push 0x10
mov eax, dword [ebp + 0xc]
push 0xfffffffffffffffd
add eax, dword [ecx + ebx*4]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_000145d6:
inc ebx
jmp short loc_0001459e  ; jmp 0x1459e

loc_000145d9:
mov ebx, 0xa

loc_000145de:
xor esi, esi
xor edx, edx

loc_000145e2:
movzx eax, byte [ebp - 0x27]
cmp edx, eax
jae short loc_0001460a  ; jae 0x1460a
mov ecx, dword [ebp - 0x34]
sub esp, 0xc
mov eax, dword [ebp + 0xc]
mov dword [ebp - 0x38], edx
add eax, dword [ecx + edx*4]
push eax
call fcn_00017d8a  ; call 0x17d8a
mov edx, dword [ebp - 0x38]
add esp, 0x10
inc edx
or esi, eax
jmp short loc_000145e2  ; jmp 0x145e2

loc_0001460a:
sub esp, 0xc
push 0x2710
call fcn_0001ba3f  ; call 0x1ba3f
add esp, 0x10
and esi, 0x10
je short loc_00014622  ; je 0x14622
dec ebx
jne short loc_000145de  ; jne 0x145de

loc_00014622:
movzx edx, byte [ebp - 0x27]
xor eax, eax
xor ecx, ecx
mov ebx, 1

loc_0001462f:
cmp ecx, edx
jae short loc_00014646  ; jae 0x14646
mov esi, dword [ebp + 8]
cmp byte [esi + ecx + 0x14], 1
jne short loc_00014643  ; jne 0x14643
mov esi, ebx
shl esi, cl
or eax, esi

loc_00014643:
inc ecx
jmp short loc_0001462f  ; jmp 0x1462f

loc_00014646:
push edx
xor ebx, ebx
push eax
mov eax, dword [ebp + 0x18]
push 0xffff8000
add eax, 0xd0
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_00014660:
movzx eax, byte [ebp - 0x27]
cmp ebx, eax
jae short loc_00014685  ; jae 0x14685
mov ecx, dword [ebp - 0x34]
push esi
mov eax, dword [ebp + 0xc]
push 0xfe0000
push 0xfffffffffffffffd
add eax, dword [ecx + ebx*4]
inc ebx
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
jmp short loc_00014660  ; jmp 0x14660

loc_00014685:
cmp byte [ebp - 0x26], 0
je short loc_000146a5  ; je 0x146a5
mov edx, dword [ebp - 0x34]
push ebx
mov ecx, dword [ebp + 0xc]
push 0xfe0000
push 0xfffffffffffffffd
add ecx, dword [edx + eax*4]
push ecx
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_000146a5:
mov bl, byte [ebp - 0x2d]
xor esi, esi
and ebx, 1

loc_000146ad:
movzx edx, byte [ebp - 0x25]
cmp esi, edx
jae short loc_000146d8  ; jae 0x146d8
cmp esi, dword [ebp - 0x2c]
jne short loc_000146be  ; jne 0x146be
test bl, bl
jne short loc_000146d5  ; jne 0x146d5

loc_000146be:
push ecx
mov eax, dword [ebp + 0xc]
push 0x80000000
push 0xfffffffffffffffd
add eax, dword [edi + esi*4]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_000146d5:
inc esi
jmp short loc_000146ad  ; jmp 0x146ad

loc_000146d8:
xor eax, eax
xor ecx, ecx
mov ebx, 1

loc_000146e1:
cmp ecx, edx
je short loc_000146f8  ; je 0x146f8
mov esi, dword [ebp + 8]
cmp byte [esi + ecx + 0x22], 1
jne short loc_000146f5  ; jne 0x146f5
mov esi, ebx
shl esi, cl
or eax, esi

loc_000146f5:
inc ecx
jmp short loc_000146e1  ; jmp 0x146e1

loc_000146f8:
cmp byte [ebp - 0x2d], 0
je short loc_0001470a  ; je 0x1470a
mov cl, byte [ebp - 0x2c]
mov edx, 1
shl edx, cl
or eax, edx

loc_0001470a:
push edx
mov ebx, 0xa
push eax
mov eax, dword [ebp + 0x18]
push 0xffffffffffffffc0
add eax, 0xd8
push eax
call fcn_00018aa4  ; call 0x18aa4
mov al, byte [ebp - 0x2d]
add esp, 0x10
and eax, 1
mov byte [ebp - 0x38], al

loc_0001472d:
xor esi, esi
xor edx, edx

loc_00014731:
movzx eax, byte [ebp - 0x25]
cmp edx, eax
jae short loc_00014761  ; jae 0x14761
cmp edx, dword [ebp - 0x2c]
jne short loc_00014744  ; jne 0x14744
cmp byte [ebp - 0x38], 0
jne short loc_0001475e  ; jne 0x1475e

loc_00014744:
mov eax, dword [ebp + 0xc]
sub esp, 0xc
add eax, dword [edi + edx*4]
mov dword [ebp - 0x3c], edx
push eax
call fcn_00017d8a  ; call 0x17d8a
mov edx, dword [ebp - 0x3c]
add esp, 0x10
or esi, eax

loc_0001475e:
inc edx
jmp short loc_00014731  ; jmp 0x14731

loc_00014761:
sub esp, 0xc
push 0x2710
call fcn_0001ba3f  ; call 0x1ba3f
add esp, 0x10
and esi, 0x10
je short loc_00014779  ; je 0x14779
dec ebx
jne short loc_0001472d  ; jne 0x1472d

loc_00014779:
mov bl, byte [ebp - 0x2d]
xor esi, esi
and ebx, 1

loc_00014781:
movzx eax, byte [ebp - 0x25]
cmp esi, eax
jae short loc_000147ac  ; jae 0x147ac
cmp esi, dword [ebp - 0x2c]
jne short loc_00014792  ; jne 0x14792
test bl, bl
jne short loc_000147a9  ; jne 0x147a9

loc_00014792:
push eax
mov eax, dword [ebp + 0xc]
push 0xfe0000
push 0xfffffffffffffffd
add eax, dword [edi + esi*4]
push eax
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10

loc_000147a9:
inc esi
jmp short loc_00014781  ; jmp 0x14781

loc_000147ac:
mov eax, dword [ebp + 0xc]
lea ebx, [eax + 0x80]
push eax
push eax
push 1
push ebx
call fcn_00018a50  ; call 0x18a50
pop edx
pop ecx
push 0xfffffffffffffffe
push ebx
call fcn_00018a7a  ; call 0x18a7a
add esp, 0x10

loc_000147cc:
mov eax, dword [ebp + 8]
test byte [eax + 0x10], 0xfd
je short loc_0001480b  ; je 0x1480b
cmp byte [eax + 0x11], 0
je short loc_0001480b  ; je 0x1480b
cmp byte [eax + 0xb5], 0
je short loc_0001480b  ; je 0x1480b
movzx eax, byte [ebp - 0x25]
push eax
movzx eax, byte [ebp - 0x27]
push edi
push eax
mov eax, dword [ebp + 0x18]
push dword [ebp - 0x34]
push dword [ebp + 0xc]
shr eax, 0x14
movzx eax, al
push 0
push 0x14
push eax
call fcn_000134ba  ; call 0x134ba
add esp, 0x20

loc_0001480b:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00014813:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x44
push 0x10
lea eax, [ebp - 0x38]
push eax
call fcn_00016f3b  ; call 0x16f3b
pop eax
pop edx
lea eax, [ebp - 0x28]
push 0x10
push eax
call fcn_00016f3b  ; call 0x16f3b
call fcn_0001bef7  ; call 0x1bef7
mov dword [ebp - 0x40], eax
call fcn_0001bff9  ; call 0x1bff9
mov edx, dword [ebp + 8]
add esp, 0x10
cmp byte [edx + 0x10], 0
je loc_00014ac0  ; je 0x14ac0
cmp eax, 1
jne loc_0001498b  ; jne 0x1498b
mov dword [ebp - 0x3c], 0
xor edi, edi
xor ebx, ebx

loc_00014865:
call fcn_0001c19d  ; call 0x1c19d
movzx eax, al
cmp ebx, eax
jae short loc_000148ea  ; jae 0x148ea
mov eax, dword [ebp + 8]
movzx ecx, byte [eax + ebx*8 + 0x2d]
cmp cl, 8
je short loc_000148e4  ; je 0x148e4
cmp ebx, 7
ja short loc_000148ac  ; ja 0x148ac
cmp cl, 3
jbe short loc_0001489e  ; jbe 0x1489e
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000148e4  ; je 0x148e4
push eax
push ref_000221f1  ; push 0x221f1
push 0x9c4
jmp short loc_000148c7  ; jmp 0x148c7

loc_0001489e:
lea ecx, [ebx + ecx*8]
mov eax, 1
shl eax, cl
or edi, eax
jmp short loc_000148e4  ; jmp 0x148e4

loc_000148ac:
lea eax, [ecx - 4]
cmp al, 3
jbe short loc_000148d6  ; jbe 0x148d6
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000148e4  ; je 0x148e4
push eax
push ref_000221f1  ; push 0x221f1
push 0x9d0

loc_000148c7:
push ref_0002526f  ; push 0x2526f
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
jmp short loc_000148e4  ; jmp 0x148e4

loc_000148d6:
lea ecx, [ebx + ecx*8 - 0x28]
mov eax, 1
shl eax, cl
or dword [ebp - 0x3c], eax

loc_000148e4:
inc ebx
jmp near loc_00014865  ; jmp 0x14865

loc_000148ea:
xor ebx, ebx
xor esi, esi
xor edx, edx

loc_000148f0:
mov dword [ebp - 0x44], edx
call fcn_0001c234  ; call 0x1c234
mov edx, dword [ebp - 0x44]
movzx eax, al
cmp edx, eax
jae short loc_00014933  ; jae 0x14933
mov eax, dword [ebp + 8]
movzx eax, byte [eax + edx*4 + 0x9d]
cmp al, 8
je short loc_00014930  ; je 0x14930
cmp al, 3
ja short loc_00014923  ; ja 0x14923
lea ecx, [edx + eax*8]
mov eax, 1
shl eax, cl
or esi, eax
jmp short loc_00014930  ; jmp 0x14930

loc_00014923:
lea ecx, [edx + eax*8 - 0x20]
mov eax, 1
shl eax, cl
or ebx, eax

loc_00014930:
inc edx
jmp short loc_000148f0  ; jmp 0x148f0

loc_00014933:
mov eax, dword [ebp + 0xc]
push ecx
push ecx
push edi
add eax, 0xc0
push eax
call fcn_00017dcb  ; call 0x17dcb
pop edi
pop eax
mov eax, dword [ebp + 0xc]
push esi
add eax, 0xc8
push eax
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10
cmp dword [ebp - 0x40], 1
jne loc_00014ac0  ; jne 0x14ac0
push eax
push eax
mov eax, dword [ebp + 0xc]
push dword [ebp - 0x3c]
add eax, 0xc4
push eax
call fcn_00017dcb  ; call 0x17dcb
pop eax
mov eax, dword [ebp + 0xc]
pop edx
add eax, 0xcc
push ebx
push eax
call fcn_00017dcb  ; call 0x17dcb
jmp near loc_00014abd  ; jmp 0x14abd

loc_0001498b:
xor ebx, ebx
cmp eax, 2
jne loc_00014a9f  ; jne 0x14a9f

loc_00014996:
call fcn_0001c234  ; call 0x1c234
movzx eax, al
cmp ebx, eax
jae short loc_000149e9  ; jae 0x149e9
mov eax, dword [ebp + 8]
mov al, byte [eax + ebx*4 + 0x9d]
cmp al, 8
je short loc_000149e6  ; je 0x149e6
movzx esi, al
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000149d9  ; je 0x149d9
cmp esi, 3
jbe short loc_000149d9  ; jbe 0x149d9
push eax
push ref_000252ee  ; push 0x252ee
push 0x9fd
push ref_0002526f  ; push 0x2526f
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000149d9:
mov eax, 1
mov cl, bl
shl eax, cl
or dword [ebp + esi*4 - 0x28], eax

loc_000149e6:
inc ebx
jmp short loc_00014996  ; jmp 0x14996

loc_000149e9:
mov edx, dword [ebp + 0xc]
mov eax, dword [ebp + 0xc]
lea edi, [edx + 0xd0]
mov dword [ebp - 0x3c], edi
mov edi, edx
add eax, 0xc0
neg edi
mov esi, eax
mov dword [ebp - 0x40], eax
lea ebx, [ebp + edi - 0x28]

loc_00014a0a:
push eax
push eax
push dword [ebx + esi - 0xc0]
push esi
add esi, 4
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10
cmp esi, dword [ebp - 0x3c]
jne short loc_00014a0a  ; jne 0x14a0a
xor ebx, ebx

loc_00014a26:
call fcn_0001c1fd  ; call 0x1c1fd
movzx eax, al
cmp ebx, eax
jae short loc_00014a76  ; jae 0x14a76
mov eax, dword [ebp + 8]
mov al, byte [eax + ebx*8 + 0x2d]
cmp al, 8
je short loc_00014a73  ; je 0x14a73
movzx esi, al
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00014a66  ; je 0x14a66
cmp esi, 3
jbe short loc_00014a66  ; jbe 0x14a66
push ecx
push ref_000252ee  ; push 0x252ee
push 0xa0d
push ref_0002526f  ; push 0x2526f
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00014a66:
mov eax, 1
mov cl, bl
shl eax, cl
or dword [ebp + esi*4 - 0x38], eax

loc_00014a73:
inc ebx
jmp short loc_00014a26  ; jmp 0x14a26

loc_00014a76:
mov eax, dword [ebp + 0xc]
lea esi, [ebp + edi - 0x38]
lea ebx, [eax + 0xb0]

loc_00014a83:
push edx
push edx
push dword [esi + ebx - 0xb0]
push ebx
add ebx, 4
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10
cmp ebx, dword [ebp - 0x40]
jne short loc_00014a83  ; jne 0x14a83
jmp short loc_00014ac0  ; jmp 0x14ac0

loc_00014a9f:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00014ac0  ; je 0x14ac0
push eax
push ref_000221f1  ; push 0x221f1
push 0xa16
push ref_0002526f  ; push 0x2526f
call fcn_000153fc  ; call 0x153fc

loc_00014abd:
add esp, 0x10

loc_00014ac0:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00014ac8:
push ebp
mov ebp, esp
push edi
xor edi, edi
push esi
push ebx
xor ebx, ebx
sub esp, 0x1c
mov eax, dword [ebp + 0xc]
mov esi, dword [ebp + 8]
mov dword [ebp - 0x24], eax
mov eax, dword [ebp + 0x10]
mov dword [ebp - 0x28], eax
call fcn_0001bef7  ; call 0x1bef7
mov dword [ebp - 0x20], 0
mov dword [ebp - 0x1c], eax

loc_00014af3:
call fcn_0001c1d4  ; call 0x1c1d4
movzx eax, al
cmp ebx, eax
jae short loc_00014b79  ; jae 0x14b79
movzx ecx, byte [esi + ebx*8 + 0x2d]
cmp cl, 8
je short loc_00014b73  ; je 0x14b73
cmp ebx, 7
ja short loc_00014b37  ; ja 0x14b37
cmp cl, 3
jbe short loc_00014b29  ; jbe 0x14b29
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00014b73  ; je 0x14b73
push ecx
push ref_000221f1  ; push 0x221f1
push 0xa69
jmp short loc_00014b58  ; jmp 0x14b58

loc_00014b29:
lea ecx, [ebx + ecx*8]
mov eax, 1
shl eax, cl
or edi, eax
jmp short loc_00014b73  ; jmp 0x14b73

loc_00014b37:
cmp dword [ebp - 0x1c], 1
jne short loc_00014b73  ; jne 0x14b73
lea eax, [ecx - 4]
cmp al, 3
jbe short loc_00014b67  ; jbe 0x14b67
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00014b73  ; je 0x14b73
push edx
push ref_000221f1  ; push 0x221f1
push 0xa76

loc_00014b58:
push ref_0002526f  ; push 0x2526f
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
jmp short loc_00014b73  ; jmp 0x14b73

loc_00014b67:
mov eax, dword [ebp - 0x1c]
lea ecx, [ebx + ecx*8 - 0x28]
shl eax, cl
or dword [ebp - 0x20], eax

loc_00014b73:
inc ebx
jmp near loc_00014af3  ; jmp 0x14af3

loc_00014b79:
cmp byte [esi], 1
jne short loc_00014b90  ; jne 0x14b90
push eax
push eax
mov eax, dword [ebp - 0x24]
push edi
add eax, 0x74
push eax
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10

loc_00014b90:
cmp dword [ebp - 0x1c], 1
jne short loc_00014bb7  ; jne 0x14bb7
cmp byte [esi + 8], 1
jne short loc_00014bb7  ; jne 0x14bb7
mov eax, dword [ebp - 0x20]
mov dword [ebp + 0xc], eax
mov eax, dword [ebp - 0x28]
add eax, 0x74
mov dword [ebp + 8], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017dcb  ; jmp 0x17dcb

loc_00014bb7:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00014bbf:
push ebp
mov ebp, esp
push edi
push esi
push ebx
xor ebx, ebx
sub esp, 0x1c
mov esi, dword [ebp + 8]
call fcn_0001bef7  ; call 0x1bef7
mov dword [ebp - 0x1c], eax
mov eax, dword [ebp + 0xc]
add eax, 0x64
mov dword [ebp - 0x20], eax
mov eax, dword [ebp + 0x10]
lea edi, [eax + 0x64]

loc_00014be4:
call fcn_0001c1d4  ; call 0x1c1d4
movzx eax, al
cmp ebx, eax
jae loc_00014c81  ; jae 0x14c81
cmp ebx, 7
ja short loc_00014c35  ; ja 0x14c35
cmp byte [esi], 1
jne short loc_00014c35  ; jne 0x14c35
cmp byte [esi + ebx*8 + 0x2c], 0
jne short loc_00014c1b  ; jne 0x14c1b
push eax
mov cl, bl
push eax
mov eax, 1
shl eax, cl
push eax
push dword [ebp - 0x20]
call fcn_0001866c  ; call 0x1866c
jmp short loc_00014c32  ; jmp 0x14c32

loc_00014c1b:
push ecx
mov eax, 0xfffffffe
push ecx
mov cl, bl
rol eax, cl
movzx eax, al
push eax
push dword [ebp - 0x20]
call fcn_00018699  ; call 0x18699

loc_00014c32:
add esp, 0x10

loc_00014c35:
cmp dword [ebp - 0x1c], 1
jne short loc_00014c7b  ; jne 0x14c7b
cmp ebx, 0xd
ja short loc_00014c7b  ; ja 0x14c7b
cmp byte [esi + 8], 1
jne short loc_00014c7b  ; jne 0x14c7b
cmp byte [esi + ebx*8 + 0x2c], 0
lea ecx, [ebx - 8]
jne short loc_00014c63  ; jne 0x14c63
mov eax, dword [ebp - 0x1c]
push edx
push edx
shl eax, cl
movzx ecx, al
push ecx
push edi
call fcn_0001866c  ; call 0x1866c
jmp short loc_00014c78  ; jmp 0x14c78

loc_00014c63:
push eax
push eax
mov eax, dword [ebp - 0x1c]
shl eax, cl
mov ecx, eax
not ecx
movzx ecx, cl
push ecx
push edi
call fcn_00018699  ; call 0x18699

loc_00014c78:
add esp, 0x10

loc_00014c7b:
inc ebx
jmp near loc_00014be4  ; jmp 0x14be4

loc_00014c81:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00014c89:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov esi, dword [ebp + 8]
mov edi, dword [ebp + 0xc]
call fcn_0001bef7  ; call 0x1bef7
cmp byte [esi + 0x10], 0
mov dword [ebp - 0x1c], eax
je loc_00014d7a  ; je 0x14d7a
lea eax, [edi + 0xe4]
sub esp, 0xc
push eax
mov dword [ebp - 0x20], eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
xor edx, edx
mov ebx, eax
and ebx, 0x7fff

loc_00014cc9:
mov dword [ebp - 0x24], edx
call fcn_0001c19d  ; call 0x1c19d
mov edx, dword [ebp - 0x24]
movzx eax, al
cmp edx, eax
jae short loc_00014d08  ; jae 0x14d08
cmp dword [ebp - 0x1c], 1
mov ecx, edx
jne short loc_00014cea  ; jne 0x14cea
mov ecx, dword [edx*4 + ref_00020420]  ; mov ecx, dword [edx*4 + 0x20420]

loc_00014cea:
cmp byte [esi + edx*8 + 0x2c], 0
jne short loc_00014cfc  ; jne 0x14cfc
mov eax, 1
shl eax, cl
or ebx, eax
jmp short loc_00014d05  ; jmp 0x14d05

loc_00014cfc:
mov eax, 0xfffffffe
rol eax, cl
and ebx, eax

loc_00014d05:
inc edx
jmp short loc_00014cc9  ; jmp 0x14cc9

loc_00014d08:
lea eax, [edi + 0xe8]
sub esp, 0xc
push eax
mov dword [ebp - 0x1c], eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
xor ecx, ecx
mov edi, eax
and edi, 0x3f

loc_00014d24:
mov dword [ebp - 0x24], ecx
call fcn_0001c234  ; call 0x1c234
mov ecx, dword [ebp - 0x24]
movzx eax, al
cmp ecx, eax
jae short loc_00014d57  ; jae 0x14d57
cmp byte [esi + ecx*4 + 0x9c], 0
je short loc_00014d4b  ; je 0x14d4b
mov eax, 0xfffffffe
rol eax, cl
and edi, eax
jmp short loc_00014d54  ; jmp 0x14d54

loc_00014d4b:
mov eax, 1
shl eax, cl
or edi, eax

loc_00014d54:
inc ecx
jmp short loc_00014d24  ; jmp 0x14d24

loc_00014d57:
push eax
push eax
push ebx
push dword [ebp - 0x20]
call fcn_00017dcb  ; call 0x17dcb
mov eax, dword [ebp - 0x1c]
add esp, 0x10
mov dword [ebp + 0xc], edi
mov dword [ebp + 8], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017dcb  ; jmp 0x17dcb

loc_00014d7a:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00014d82:
push ebp
mov ebp, esp
sub esp, 0x10
mov eax, dword [ebp + 8]
push 0x100
add eax, 0x7a
push eax
call fcn_00018863  ; call 0x18863
add esp, 0x10
leave
ret

fcn_00014d9e:
push ebp
mov ebp, esp
push ebx
push ecx
mov edx, dword [ebp + 8]
mov eax, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
cmp byte [edx + 0x10], 0
je short loc_00014dd7  ; je 0x14dd7
push edx
push edx
push eax
lea eax, [ebx + 0x10]
add ebx, 4
push eax
call fcn_00017dcb  ; call 0x17dcb
add esp, 0x10
mov dword [ebp + 8], ebx
mov ebx, dword [ebp - 4]
mov dword [ebp + 0xc], 6
leave
jmp near fcn_00018863  ; jmp 0x18863

loc_00014dd7:
mov ebx, dword [ebp - 4]
leave
ret

fcn_00014ddc:
push ebp
mov ebp, esp
push ebx
push edx
mov eax, dword [ebp + 8]
mov ebx, dword [ebp + 0x10]
cmp byte [eax + 0x10], 0
je short loc_00014e16  ; je 0x14e16
push eax
push eax
push 0xfff9
lea eax, [ebx + 4]
add ebx, 0x10
push eax
call fcn_00018890  ; call 0x18890
add esp, 0x10
mov dword [ebp + 8], ebx
mov ebx, dword [ebp - 4]
mov dword [ebp + 0xc], 0
leave
jmp near fcn_00017dcb  ; jmp 0x17dcb

loc_00014e16:
mov ebx, dword [ebp - 4]
leave
ret

fcn_00014e1b:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov esi, dword [ebp + 0x10]
mov edi, dword [ebp + 8]
call fcn_0001bef7  ; call 0x1bef7
mov dword [ebp - 0x24], eax
call fcn_0001bb39  ; call 0x1bb39
mov ebx, eax
call fcn_0001bff9  ; call 0x1bff9
cmp ebx, 0x40
seta byte [ebp - 0x19]
cmp eax, 2
sete al
and byte [ebp - 0x19], al
cmp byte [ebp - 0x19], 1
sbb eax, eax
xor ebx, ebx
and eax, 0x100
add eax, 0x4381
push eax
push 0
push 0xe5007f04
push esi
call fcn_00009d54  ; call 0x9d54
add esp, 0x10

loc_00014e71:
call fcn_0001c19d  ; call 0x1c19d
movzx eax, al
cmp ebx, eax
jae loc_00014f31  ; jae 0x14f31
inc ebx
mov eax, ebx
push 0
shl eax, 8
push 0xfffffffffffffffe
mov dword [ebp - 0x28], eax
sub eax, 0x1affbff1
push eax
push esi
call fcn_00009d54  ; call 0x9d54
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00014ec5  ; je 0x14ec5
cmp byte [edi + ebx*8 + 0x27], 7
jbe short loc_00014ec5  ; jbe 0x14ec5
push edx
push ref_000252f8  ; push 0x252f8
push 0xc0b
push ref_0002526f  ; push 0x2526f
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00014ec5:
mov al, byte [edi + ebx*8 + 0x27]
and eax, 7
mov dword [ebp - 0x20], eax
shl dword [ebp - 0x20], 0xb
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00014efb  ; je 0x14efb
cmp byte [edi + ebx*8 + 0x26], 7
jbe short loc_00014efb  ; jbe 0x14efb
push eax
push ref_00025334  ; push 0x25334
push 0xc0d
push ref_0002526f  ; push 0x2526f
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00014efb:
mov al, byte [edi + ebx*8 + 0x26]
and eax, 7
shl eax, 8
or eax, dword [ebp - 0x20]
mov edx, eax
or edx, 0x30
cmp byte [ebp - 0x19], 0
cmovne eax, edx
push eax
mov eax, dword [ebp - 0x28]
push 0xffff80ff
sub eax, 0x1affc000
push eax
push esi
call fcn_00009d54  ; call 0x9d54
add esp, 0x10
jmp near loc_00014e71  ; jmp 0x14e71

loc_00014f31:
push 0x180000
push 0xffffffffffffffff
push 0xe5007f14
push esi
call fcn_00009d54  ; call 0x9d54
add esp, 0x10
cmp dword [ebp - 0x24], 2
jne short loc_00014f61  ; jne 0x14f61
push 0
push 0xff3fffff
push 0xe5007f02
push esi
call fcn_00009d54  ; call 0x9d54
add esp, 0x10

loc_00014f61:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00014f69:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov esi, dword [ebp + 8]
mov ebx, dword [ebp + 0xc]
call fcn_0001bef7  ; call 0x1bef7
cmp eax, 2
jne short loc_00014f9e  ; jne 0x14f9e
cmp byte [esi + 0x284], 0
jne short loc_00014f9e  ; jne 0x14f9e
push ecx
push ecx
push 5
lea eax, [ebx + 0x3a84]
push eax
call fcn_00018a50  ; call 0x18a50
add esp, 0x10

loc_00014f9e:
push 0xc0
push 0xffffffffffffffff
push 0xe5004001
push ebx
xor ebx, ebx
call fcn_00009d54  ; call 0x9d54
add esp, 0x10

loc_00014fb5:
call fcn_0001c181  ; call 0x1c181
cmp bl, al
jae short loc_00015017  ; jae 0x15017
movzx edi, bl
push eax
movzx eax, byte [edi + edi + ref_00020461]  ; movzx eax, byte [edi + edi + 0x20461]
push eax
movzx eax, byte [edi + edi + ref_00020460]  ; movzx eax, byte [edi + edi + 0x20460]
add edi, 0x50
push eax
movzx eax, byte [esi + 1]
push eax
call fcn_00016bd6  ; call 0x16bd6
cmp byte [esi + edi*8 + 4], 1
pop edx
sbb edx, edx
inc ebx
not edx
mov ecx, eax
add edx, 0x27
pop eax
lea eax, [ecx + 0xdc]
mov dword [ebp - 0x1c], ecx
push edx
push eax
call fcn_00018a50  ; call 0x18a50
mov ecx, dword [ebp - 0x1c]
pop eax
pop edx
add ecx, 0x78
push 3
push ecx
call fcn_00018a50  ; call 0x18a50
add esp, 0x10
jmp short loc_00014fb5  ; jmp 0x14fb5

loc_00015017:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001501f:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
push eax
push eax
push esi
push ebx
call fcn_00014f69  ; call 0x14f69
add esp, 0x10
mov dword [ebp + 0xc], esi
mov dword [ebp + 8], ebx
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00013bae  ; jmp 0x13bae

fcn_00015047:
push ebp
mov edx, 0x18
mov ebp, esp
push edi
push esi
mov esi, ref_00027120  ; mov esi, 0x27120
push ebx
mov ebx, 0x24
sub esp, 0x1c
mov eax, dword [ebp + 0x10]
mov edi, dword [ebp + 8]
dec al
mov eax, ref_00027000  ; mov eax, 0x27000
cmovne ebx, edx
cmovne esi, eax
call fcn_0001c234  ; call 0x1c234
mov dword [ebp - 0x20], 0
movzx ecx, al
mov eax, ebx
cdq
idiv ecx
lea ebx, [edi + 0x9e]
mov dword [ebp - 0x28], eax
mov word [ebp - 0x1c], ax
lea eax, [edi + ecx*4 + 0x9e]
mov dword [ebp - 0x24], eax

loc_0001509d:
cmp ebx, dword [ebp - 0x24]
je loc_0001512f  ; je 0x1512f
cmp byte [ebx], 1
jne short loc_00015121  ; jne 0x15121
mov byte [ebp - 0x19], 0

loc_000150af:
movzx eax, byte [ebp - 0x19]
cmp ax, word [ebp - 0x1c]
jae short loc_00015121  ; jae 0x15121
movzx eax, byte [ebp - 0x19]
add eax, dword [ebp - 0x20]
imul eax, eax, 0xc
add eax, esi
push dword [eax + 8]
push dword [eax + 4]
push dword [eax]
push dword [ebp + 0xc]
call fcn_00009d54  ; call 0x9d54
mov edi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0001511c  ; je 0x1511c
test edi, edi
jns short loc_0001511c  ; jns 0x1511c
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00015104  ; je 0x15104
push edx
push edi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00015104:
push eax
push ref_00020664  ; push 0x20664
push 0xcbb
push ref_0002526f  ; push 0x2526f
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001511c:
inc byte [ebp - 0x19]
jmp short loc_000150af  ; jmp 0x150af

loc_00015121:
mov eax, dword [ebp - 0x28]
add ebx, 4
add dword [ebp - 0x20], eax
jmp near loc_0001509d  ; jmp 0x1509d

loc_0001512f:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00015137:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x3c
mov eax, dword [ebp + 0x20]
mov ebx, dword [ebp + 8]
mov esi, dword [ebp + 0x14]
mov edi, dword [ebp + 0x1c]
mov dword [ebp - 0x34], eax
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00015169  ; je 0x15169
push eax
push eax
push ref_00025370  ; push 0x25370
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00015169:
call fcn_0001bef7  ; call 0x1bef7
mov edx, esi
movzx esi, dl
mov dword [ebp - 0x20], eax
push eax
push 0
push 0x1f
push esi
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 0
push 0x14
push esi
mov dword [ebp - 0x2c], eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push 0
push 0x1d
push esi
mov dword [ebp - 0x24], eax
call fcn_00016bd6  ; call 0x16bd6
add esp, 0x10
cmp dword [ebp - 0x20], 1
mov dword [ebp - 0x1c], 0
mov dword [ebp - 0x30], eax
jne short loc_000151c5  ; jne 0x151c5
push ecx
push 0
push 0x1a
push esi
call fcn_00016bd6  ; call 0x16bd6
add esp, 0x10
mov dword [ebp - 0x1c], eax

loc_000151c5:
mov eax, dword [ebp - 0x2c]
sub esp, 0xc
add eax, 0x40
push eax
call fcn_00017cfe  ; call 0x17cfe
mov word [ebp - 0x48], ax
mov eax, dword [ebp - 0x2c]
add eax, 2
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
cmp byte [ebx], 0
jne short loc_000151f4  ; jne 0x151f4
or dword [edi], 0x8000

loc_000151f4:
cmp dword [ebp - 0x20], 1
jne short loc_00015206  ; jne 0x15206
cmp byte [ebx + 8], 0
jne short loc_00015206  ; jne 0x15206
or dword [edi], 0x2000

loc_00015206:
cmp byte [ebx + 0x10], 0
jne short loc_00015212  ; jne 0x15212
or dword [edi], 0x8000000

loc_00015212:
push edx
movzx edi, ax
movzx eax, byte [ebp - 0x34]
push edx
push dword [ebp + 0x18]
mov dword [ebp - 0x28], eax
push edi
push eax
push esi
push dword [ebp + 0xc]
push ebx
call fcn_0001354f  ; call 0x1354f
mov esi, dword [ebp - 0x24]
add esp, 0x1c
push esi
push dword [ebp + 0x10]
push ebx
call fcn_00014d9e  ; call 0x14d9e
mov dword [esp], esi
push edi
push dword [ebp - 0x28]
push dword [ebp + 0x10]
push ebx
call fcn_0001376e  ; call 0x1376e
add esp, 0x20
cmp byte [ebp - 0x34], 7
jbe short loc_00015268  ; jbe 0x15268
movzx eax, byte [ebp - 0x20]
push ecx
push eax
push dword [ebp + 0x18]
push ebx
call fcn_00015047  ; call 0x15047
add esp, 0x10

loc_00015268:
push eax
mov esi, dword [ebp - 0x24]
push eax
push dword [ebp - 0x2c]
push esi
push edi
push dword [ebp - 0x28]
push dword [ebp + 0x10]
push ebx
call fcn_00013ead  ; call 0x13ead
add esp, 0x1c
push dword [ebp - 0x1c]
push dword [ebp - 0x30]
push ebx
call fcn_00014ac8  ; call 0x14ac8
pop eax
pop edx
push esi
push ebx
call fcn_00014813  ; call 0x14813
add esp, 0xc
push dword [ebp + 0x18]
push edi
push ebx
call fcn_00014e1b  ; call 0x14e1b
add esp, 0x10
cmp byte [ebx + 0xb4], 1
jne short loc_00015303  ; jne 0x15303
mov esi, dword [ebp - 0x48]
sub esp, 0xc
and esi, 0xfffc
add esi, 0x3c
push esi
call fcn_00018e32  ; call 0x18e32
pop ecx
mov edi, eax
pop eax
mov eax, edi
or eax, 2
and edi, 0xfffd
movzx eax, ax
push eax
push esi
call fcn_00018e63  ; call 0x18e63
add esp, 0xc
push dword [ebp - 0x1c]
push dword [ebp - 0x30]
push ebx
call fcn_00014bbf  ; call 0x14bbf
pop eax
pop edx
push dword [ebp - 0x24]
push ebx
call fcn_00014c89  ; call 0x14c89
pop ecx
pop eax
push edi
push esi
call fcn_00018e63  ; call 0x18e63
add esp, 0x10

loc_00015303:
cmp byte [ebx + 1], 1
jne short loc_0001531c  ; jne 0x1531c
cmp byte [ebx], 1
jne short loc_0001531c  ; jne 0x1531c
sub esp, 0xc
push dword [ebp - 0x30]
call fcn_00014d82  ; call 0x14d82
add esp, 0x10

loc_0001531c:
cmp dword [ebp - 0x20], 1
jne short loc_0001533c  ; jne 0x1533c
cmp byte [ebx + 9], 1
jne short loc_0001533c  ; jne 0x1533c
cmp byte [ebx + 8], 1
jne short loc_0001533c  ; jne 0x1533c
sub esp, 0xc
push dword [ebp - 0x1c]
call fcn_00014d82  ; call 0x14d82
add esp, 0x10

loc_0001533c:
push edx
push dword [ebp - 0x24]
push dword [ebp + 0x10]
push ebx
call fcn_00014ddc  ; call 0x14ddc
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_00015366  ; je 0x15366
push eax
push eax
push ref_00025389  ; push 0x25389
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00015366:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00015370:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0x10]
push ebx
mov ebx, dword [ebp + 0xc]
add esi, ebx

loc_0001537d:  ; not directly referenced
cmp ebx, esi
je short loc_00015394  ; je 0x15394
inc ebx
movzx eax, byte [ebx - 1]
sub esp, 0xc
push eax
call fcn_0001638a  ; call 0x1638a
add esp, 0x10
jmp short loc_0001537d  ; jmp 0x1537d

loc_00015394:  ; not directly referenced
lea esp, [ebp - 8]
or eax, 0xffffffff
pop ebx
pop esi
pop ebp
ret

fcn_0001539e:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
sub esp, 0xc
mov ebx, dword [ebp + 8]
push 0x80
movzx eax, bx
movzx ebx, bh
push eax
call fcn_00018e26  ; call 0x18e26
pop eax
pop edx
push 0x90
push ebx
call fcn_00018e26  ; call 0x18e26
add esp, 0x10
mov ebx, dword [ebp - 4]
leave
ret

fcn_000153ce:
push ebp
mov ebp, esp
sub esp, 8
lea eax, [ebp + 0xc]
push eax
push dword [ebp + 8]
push 0
push fcn_00015370  ; push 0x15370
call fcn_0001551c  ; call 0x1551c
leave
ret

fcn_000153e9:
push ebp
xor eax, eax
mov ebp, esp
pop ebp
ret

fcn_000153f0:
push ebp
xor eax, eax
mov ebp, esp
pop ebp
ret

fcn_000153f7:
push ebp
mov ebp, esp
pop ebp
ret

fcn_000153fc:
push ebp
mov ebp, esp
pop ebp
ret

fcn_00015401:
push ebp
mov ebp, esp
push edi
mov edi, eax
push esi
push ebx
mov ebx, edx
sub esp, 0x1c

loc_0001540e:
test ebx, ebx
jle short loc_0001543e  ; jle 0x1543e
push eax
mov eax, dword [ebp + 8]
cmp ebx, 0x10
mov esi, 0x10
cmovle esi, ebx
push esi
push edi
push dword [eax]
mov dword [ebp - 0x1c], ecx
call ecx
mov edx, dword [ebp + 8]
add esp, 0x10
mov ecx, dword [ebp - 0x1c]
test eax, eax
mov dword [edx], eax
jne short loc_00015442  ; jne 0x15442
or eax, 0xffffffff
jmp short loc_00015446  ; jmp 0x15446

loc_0001543e:
xor eax, eax
jmp short loc_00015446  ; jmp 0x15446

loc_00015442:
sub ebx, esi
jmp short loc_0001540e  ; jmp 0x1540e

loc_00015446:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001544e:
push ebp
mov ebp, esp
push edi
mov edi, ecx
push esi
mov esi, eax
push ebx
mov ebx, edx
sub esp, 0xc
test ecx, ecx
jne short loc_0001546f  ; jne 0x1546f

loc_00015461:
cmp dword [ebp + 8], 0
je short loc_000154a7  ; je 0x154a7
cmp dword [ebp + 0xc], 0
je short loc_000154a7  ; je 0x154a7
jmp short loc_00015490  ; jmp 0x15490

loc_0001546f:
sub esp, 0xc
mov ecx, eax
push edx
mov eax, ref_000204c8  ; mov eax, 0x204c8
mov edx, edi
call fcn_00015401  ; call 0x15401
add esp, 0x10
test eax, eax
jns short loc_00015461  ; jns 0x15461

loc_00015488:
or eax, 0xffffffff
jmp near loc_00015514  ; jmp 0x15514

loc_00015490:
push edx
push dword [ebp + 0xc]
push dword [ebp + 8]
push dword [ebx]
call esi
add esp, 0x10
mov dword [ebx], eax
test eax, eax
je short loc_00015488  ; je 0x15488
add edi, dword [ebp + 0xc]

loc_000154a7:
cmp dword [ebp + 0x10], 0
jne short loc_000154b8  ; jne 0x154b8

loc_000154ad:
add edi, dword [ebp + 0x10]
cmp dword [ebp + 0x18], 0
je short loc_000154e8  ; je 0x154e8
jmp short loc_000154d4  ; jmp 0x154d4

loc_000154b8:
mov edx, dword [ebp + 0x10]
sub esp, 0xc
mov ecx, esi
push ebx
mov eax, ref_000204b4  ; mov eax, 0x204b4
call fcn_00015401  ; call 0x15401
add esp, 0x10
test eax, eax
jns short loc_000154ad  ; jns 0x154ad
jmp short loc_00015488  ; jmp 0x15488

loc_000154d4:
push eax
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebx]
call esi
add esp, 0x10
mov dword [ebx], eax
test eax, eax
je short loc_00015488  ; je 0x15488

loc_000154e8:
add edi, dword [ebp + 0x18]
cmp dword [ebp + 0x1c], 0
je short loc_0001550f  ; je 0x1550f
mov edx, dword [ebp + 0x1c]
sub esp, 0xc
mov ecx, esi
push ebx
mov eax, ref_000204c8  ; mov eax, 0x204c8
call fcn_00015401  ; call 0x15401
add esp, 0x10
test eax, eax
js loc_00015488  ; js 0x15488

loc_0001550f:
mov eax, dword [ebp + 0x1c]
add eax, edi

loc_00015514:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001551c:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xec
mov eax, dword [ebp + 0x10]
mov ebx, dword [ebp + 0x14]
test eax, eax
je short loc_00015580  ; je 0x15580
mov dword [ebp - 0xe0], 0
mov dword [ebp - 0xd4], 0
jmp short loc_000155a1  ; jmp 0x155a1

loc_00015548:
cmp dl, 0x2a
jne loc_000155dc  ; jne 0x155dc
mov ecx, dword [ebx]
lea eax, [ebx + 4]
mov dword [ebp - 0xc4], ecx
test ecx, ecx
jns short loc_0001556d  ; jns 0x1556d
neg dword [ebp - 0xc4]
or dword [ebp - 0xb4], 4

loc_0001556d:
inc edi
mov ebx, eax

loc_00015570:
cmp dword [ebp - 0xc4], 0x1f4
jle loc_00015634  ; jle 0x15634

loc_00015580:
or eax, 0xffffffff
jmp near loc_000160e6  ; jmp 0x160e6

loc_00015588:
test dl, dl
je short loc_00015594  ; je 0x15594
inc esi

loc_0001558d:
mov dl, byte [esi]
cmp dl, 0x25
jne short loc_00015588  ; jne 0x15588

loc_00015594:
mov edi, esi
sub edi, eax
jne short loc_000155ae  ; jne 0x155ae

loc_0001559a:
cmp byte [esi], 0
jne short loc_000155c9  ; jne 0x155c9
mov eax, esi

loc_000155a1:
cmp byte [eax], 0
je loc_000160ab  ; je 0x160ab
mov esi, eax
jmp short loc_0001558d  ; jmp 0x1558d

loc_000155ae:
push edx
push edi
push eax
push dword [ebp + 0xc]
call dword [ebp + 8]  ; ucall
add esp, 0x10
mov dword [ebp + 0xc], eax
test eax, eax
je short loc_00015580  ; je 0x15580
add dword [ebp - 0xd4], edi
jmp short loc_0001559a  ; jmp 0x1559a

loc_000155c9:
lea edi, [esi + 1]
mov dword [ebp - 0xb4], 0

loc_000155d6:
mov dl, byte [edi]
test dl, dl
jne short loc_000155e8  ; jne 0x155e8

loc_000155dc:
mov dword [ebp - 0xc4], 0
jmp short loc_00015624  ; jmp 0x15624

loc_000155e8:
mov eax, ref_000204ac  ; mov eax, 0x204ac

loc_000155ed:
mov cl, byte [eax]
cmp cl, dl
je loc_000160b3  ; je 0x160b3
test cl, cl
je loc_00015548  ; je 0x15548
inc eax
jmp short loc_000155ed  ; jmp 0x155ed

loc_00015602:
cmp dword [ebp - 0xc4], 0x1f3
jg loc_00015570  ; jg 0x15570
imul edx, dword [ebp - 0xc4], 0xa
inc edi
lea eax, [edx + eax - 0x30]
mov dword [ebp - 0xc4], eax

loc_00015624:
movsx eax, byte [edi]
lea edx, [eax - 0x30]
cmp dl, 9
jbe short loc_00015602  ; jbe 0x15602
jmp near loc_00015570  ; jmp 0x15570

loc_00015634:
cmp byte [edi], 0x2e
mov dword [ebp - 0xc0], 0xffffffff
jne short loc_000156ad  ; jne 0x156ad
cmp byte [edi + 1], 0x2a
je short loc_00015656  ; je 0x15656
inc edi
mov dword [ebp - 0xc0], 0
jmp short loc_00015692  ; jmp 0x15692

loc_00015656:
lea eax, [ebx + 4]
mov ebx, dword [ebx]
mov dword [ebp - 0xc0], ebx
cmp ebx, 0x1f4
jg loc_00015580  ; jg 0x15580
add edi, 2
mov ebx, eax
jmp short loc_000156ad  ; jmp 0x156ad

loc_00015674:
cmp dword [ebp - 0xc0], 0x1f3
jg short loc_0001569d  ; jg 0x1569d
imul edx, dword [ebp - 0xc0], 0xa
inc edi
lea eax, [edx + eax - 0x30]
mov dword [ebp - 0xc0], eax

loc_00015692:
movsx eax, byte [edi]
lea edx, [eax - 0x30]
cmp dl, 9
jbe short loc_00015674  ; jbe 0x15674

loc_0001569d:
cmp dword [ebp - 0xc0], 0x1f4
jg loc_00015580  ; jg 0x15580

loc_000156ad:
cmp byte [edi], 0x3a
mov dword [ebp - 0xb0], 0
jne short loc_0001571f  ; jne 0x1571f
cmp byte [edi + 1], 0x2a
jne short loc_00015706  ; jne 0x15706
mov esi, dword [ebx]
lea eax, [ebx + 4]
mov dword [ebp - 0xb0], esi
test esi, esi
js short loc_000156db  ; js 0x156db
cmp esi, 0x24
jle short loc_000156e5  ; jle 0x156e5
jmp near loc_00015580  ; jmp 0x15580

loc_000156db:
mov dword [ebp - 0xb0], 0

loc_000156e5:
add edi, 2
mov ebx, eax
jmp short loc_0001571f  ; jmp 0x1571f

loc_000156ec:
cmp dword [ebp - 0xb0], 0x23
jg short loc_00015712  ; jg 0x15712
imul ecx, dword [ebp - 0xb0], 0xa
lea eax, [ecx + eax - 0x30]
mov dword [ebp - 0xb0], eax

loc_00015706:
inc edi
movsx eax, byte [edi]
lea edx, [eax - 0x30]
cmp dl, 9
jbe short loc_000156ec  ; jbe 0x156ec

loc_00015712:
cmp dword [ebp - 0xb0], 0x24
jg loc_00015580  ; jg 0x15580

loc_0001571f:
cmp byte [edi], 0x5b
mov dword [ebp - 0xcc], 0
jne short loc_00015758  ; jne 0x15758
lea eax, [edi + 1]
not edi
mov dword [ebp - 0xe0], eax
mov esi, edi

loc_0001573b:
mov dl, byte [eax]
lea edi, [eax + esi]
mov dword [ebp - 0xcc], edi
test dl, dl
je loc_00015580  ; je 0x15580
cmp dl, 0x5d
lea eax, [eax + 1]
jne short loc_0001573b  ; jne 0x1573b
mov edi, eax

loc_00015758:
mov al, byte [edi]
mov esi, ref_000253a0  ; mov esi, 0x253a0
test al, al
je short loc_00015790  ; je 0x15790

loc_00015763:
mov dl, byte [esi]
cmp dl, al
je short loc_00015774  ; je 0x15774
test dl, dl
je short loc_00015770  ; je 0x15770
inc esi
jmp short loc_00015763  ; jmp 0x15763

loc_00015770:
xor eax, eax
jmp short loc_00015790  ; jmp 0x15790

loc_00015774:
mov dl, byte [edi + 1]
lea esi, [edi + 1]
test dl, dl
je loc_000160cb  ; je 0x160cb
cmp dl, al
jne loc_000160cb  ; jne 0x160cb
or eax, 1
add edi, 2

loc_00015790:
mov dl, byte [edi]
test dl, dl
jne short loc_000157a0  ; jne 0x157a0
mov eax, dword [ebx]
add ebx, 4
jmp near loc_000155a1  ; jmp 0x155a1

loc_000157a0:
mov byte [ebp - 0xb8], 0
cmp dl, 0x43
jne short loc_000157c2  ; jne 0x157c2
mov cl, byte [edi + 1]
lea esi, [edi + 1]
mov byte [ebp - 0xb8], cl
test cl, cl
je loc_00015580  ; je 0x15580
mov edi, esi

loc_000157c2:
mov byte [ebp - 0xa3], dl
cmp dl, 0x6e
jne short loc_00015823  ; jne 0x15823
mov edx, dword [ebx]
test edx, edx
je loc_000160df  ; je 0x160df
cmp al, 0x68
jne short loc_000157e9  ; jne 0x157e9
mov eax, dword [ebp - 0xd4]
mov word [edx], ax
jmp near loc_000160df  ; jmp 0x160df

loc_000157e9:
cmp al, 0x69
jne short loc_000157fa  ; jne 0x157fa
mov al, byte [ebp - 0xd4]
mov byte [edx], al
jmp near loc_000160df  ; jmp 0x160df

loc_000157fa:
cmp al, 0x6c
je short loc_00015816  ; je 0x15816
cmp al, 0x6a
jne short loc_00015816  ; jne 0x15816
mov eax, dword [ebp - 0xd4]
mov dword [edx + 4], 0
mov dword [edx], eax
jmp near loc_000160df  ; jmp 0x160df

loc_00015816:
mov eax, dword [ebp - 0xd4]
mov dword [edx], eax
jmp near loc_000160df  ; jmp 0x160df

loc_00015823:
cmp dl, 0x25
jne short loc_00015850  ; jne 0x15850
push eax
xor ecx, ecx
push eax
push 0
push 1
lea eax, [ebp - 0xa3]
push eax
mov eax, dword [ebp + 8]
push 0
push 0
push 0
lea edx, [ebp + 0xc]
call fcn_0001544e  ; call 0x1544e
add esp, 0x20
jmp near loc_00016095  ; jmp 0x16095

loc_00015850:
mov esi, edx
and esi, 0xffffffdf
mov ecx, esi
cmp cl, 0x43
jne short loc_000158d4  ; jne 0x158d4
cmp dl, 0x63
jne short loc_0001586e  ; jne 0x1586e
mov eax, dword [ebx]
add ebx, 4
mov byte [ebp - 0x9a], al
jmp short loc_0001587a  ; jmp 0x1587a

loc_0001586e:
mov al, byte [ebp - 0xb8]
mov byte [ebp - 0x9a], al

loc_0001587a:
mov esi, dword [ebp - 0xc0]
mov eax, 1
test esi, esi
cmovs esi, eax
test esi, esi
cmovg eax, esi
xor esi, esi
mov dword [ebp - 0xb0], eax

loc_00015897:
push eax
xor ecx, ecx
push eax
push 0
push 1
lea eax, [ebp - 0x9a]
push eax
mov eax, dword [ebp + 8]
push 0
push 0
push 0
lea edx, [ebp + 0xc]
call fcn_0001544e  ; call 0x1544e
add esp, 0x20
cmp eax, 0xffffffff
je loc_00015580  ; je 0x15580
add esi, eax
dec dword [ebp - 0xb0]
jne short loc_00015897  ; jne 0x15897
mov eax, esi
jmp near loc_00016095  ; jmp 0x16095

loc_000158d4:
cmp dl, 0x73
jne loc_0001596b  ; jne 0x1596b
lea eax, [ebx + 4]
mov edx, ref_000253a7  ; mov edx, 0x253a7
mov dword [ebp - 0xb0], eax
mov eax, dword [ebx]
test eax, eax
cmove eax, edx
mov edx, eax

loc_000158f4:
cmp byte [edx], 0
je short loc_000158fc  ; je 0x158fc
inc edx
jmp short loc_000158f4  ; jmp 0x158f4

loc_000158fc:
mov ebx, dword [ebp - 0xc0]
sub edx, eax
test ebx, ebx
js short loc_0001590d  ; js 0x1590d
cmp edx, ebx
cmovg edx, ebx

loc_0001590d:
mov esi, dword [ebp - 0xc4]
xor ecx, ecx
mov ebx, esi
sub ebx, edx
cmp edx, esi
mov esi, dword [ebp - 0xb4]
cmovl ecx, ebx
xor ebx, ebx
and esi, 4
je short loc_0001592f  ; je 0x1592f
mov ebx, ecx
xor ecx, ecx

loc_0001592f:
test byte [ebp - 0xb4], 0x40
je short loc_00015947  ; je 0x15947
add ebx, ecx
xor ecx, ecx
test esi, esi
sete cl
add ecx, ebx
sar ecx, 1
sub ebx, ecx

loc_00015947:
push esi
push esi
push ebx
push edx
push eax
mov eax, dword [ebp + 8]
push 0
push 0
push 0
lea edx, [ebp + 0xc]
call fcn_0001544e  ; call 0x1544e
add esp, 0x20
mov ebx, dword [ebp - 0xb0]
jmp near loc_00016095  ; jmp 0x16095

loc_0001596b:
cmp dl, 0x70
jne short loc_00015997  ; jne 0x15997
mov byte [ebp - 0xa3], 0x58
xor eax, eax
mov dword [ebp - 0xc0], 8
mov dword [ebp - 0xc4], 8
mov dword [ebp - 0xb4], 0x28

loc_00015997:
mov dl, byte [ebp - 0xa3]
cmp dl, 0x69
sete cl
mov byte [ebp - 0xc8], dl
mov byte [ebp - 0xd8], cl
cmp dl, 0x64
je short loc_000159bf  ; je 0x159bf
test cl, cl
jne short loc_000159bf  ; jne 0x159bf
xor esi, esi
cmp dl, 0x49
jne short loc_000159ee  ; jne 0x159ee

loc_000159bf:
mov dl, byte [ebp - 0xc8]
mov esi, 0xa
and dword [ebp - 0xb4], 0xfffffff7
or dword [ebp - 0xb4], 0x80
and edx, 0xffffffdf
cmp dl, 0x49
jne short loc_000159ee  ; jne 0x159ee
mov ecx, dword [ebp - 0xb0]
test ecx, ecx
cmovne esi, ecx

loc_000159ee:
mov dl, byte [ebp - 0xc8]
and edx, 0xffffffdf
cmp dl, 0x58
sete cl
test cl, cl
mov byte [ebp - 0xbc], cl
mov ecx, 0x10
cmovne esi, ecx
cmp dl, 0x55
jne short loc_00015a22  ; jne 0x15a22
mov ecx, dword [ebp - 0xb0]
mov esi, 0xa
test ecx, ecx
cmovne esi, ecx

loc_00015a22:
mov cl, byte [ebp - 0xc8]
cmp cl, 0x6f
je short loc_00015a3c  ; je 0x15a3c
cmp cl, 0x62
je short loc_00015a43  ; je 0x15a43
cmp esi, 1
ja short loc_00015a48  ; ja 0x15a48
jmp near loc_00015580  ; jmp 0x15580

loc_00015a3c:
mov esi, 8
jmp short loc_00015a48  ; jmp 0x15a48

loc_00015a43:
mov esi, 2

loc_00015a48:
test byte [ebp - 0xb4], 0x80
je loc_00015b0d  ; je 0x15b0d
cmp al, 0x6c
jne short loc_00015a5e  ; jne 0x15a5e
lea eax, [ebx + 4]
jmp short loc_00015a65  ; jmp 0x15a65

loc_00015a5e:
cmp al, 0x6a
jne short loc_00015a6f  ; jne 0x15a6f
lea eax, [ebx + 8]

loc_00015a65:
mov dword [ebp - 0xb8], eax

loc_00015a6b:
mov edx, dword [ebx]
jmp short loc_00015a93  ; jmp 0x15a93

loc_00015a6f:
lea edx, [ebx + 4]
cmp al, 0x7a
mov dword [ebp - 0xb8], edx
je short loc_00015a6b  ; je 0x15a6b
mov edx, dword [ebx]
cmp al, 0x74
je short loc_00015a93  ; je 0x15a93
cmp al, 0x68
jne short loc_00015a8b  ; jne 0x15a8b
movsx edx, dx
jmp short loc_00015a93  ; jmp 0x15a93

loc_00015a8b:
movsx ecx, dl
cmp al, 0x69
cmove edx, ecx

loc_00015a93:
mov ecx, edx
sar ecx, 0x1f
mov eax, ecx
xor eax, edx
sub eax, ecx
mov dword [ebp - 0xb0], eax
sar eax, 0x1f
mov dword [ebp - 0xac], eax
test edx, edx
jns short loc_00015aba  ; jns 0x15aba
mov byte [ebp - 0xa2], 0x2d
jmp short loc_00015ae0  ; jmp 0x15ae0

loc_00015aba:
test byte [ebp - 0xb4], 2
je short loc_00015acc  ; je 0x15acc
mov byte [ebp - 0xa2], 0x2b
jmp short loc_00015ae0  ; jmp 0x15ae0

loc_00015acc:
mov eax, dword [ebp - 0xb4]
and eax, 1
neg eax
and eax, 0x20
mov byte [ebp - 0xa2], al

loc_00015ae0:
cmp byte [ebp - 0xa2], 0
mov dword [ebp - 0xd0], 0
je loc_00015bc4  ; je 0x15bc4
or dword [ebp - 0xb4], 8
mov dword [ebp - 0xd0], 1
jmp near loc_00015bc4  ; jmp 0x15bc4

loc_00015b0d:
cmp al, 0x6c
jne short loc_00015b20  ; jne 0x15b20
lea eax, [ebx + 4]
xor edx, edx
mov dword [ebp - 0xb8], eax
mov eax, dword [ebx]
jmp short loc_00015b32  ; jmp 0x15b32

loc_00015b20:
cmp al, 0x6a
jne short loc_00015b40  ; jne 0x15b40
lea eax, [ebx + 8]
mov edx, dword [ebx + 4]
mov dword [ebp - 0xb8], eax
mov eax, dword [ebx]

loc_00015b32:
mov dword [ebp - 0xb0], eax
mov dword [ebp - 0xac], edx
jmp short loc_00015bb3  ; jmp 0x15bb3

loc_00015b40:
lea edx, [ebx + 4]
cmp al, 0x7a
mov dword [ebp - 0xb8], edx
jne short loc_00015b60  ; jne 0x15b60
mov eax, dword [ebx]
mov dword [ebp - 0xb0], eax
sar eax, 0x1f
mov dword [ebp - 0xac], eax
jmp short loc_00015bb3  ; jmp 0x15bb3

loc_00015b60:
cmp al, 0x74
jne short loc_00015b77  ; jne 0x15b77
mov eax, dword [ebx]
mov dword [ebp - 0xb0], eax
sar eax, 0x1f
mov dword [ebp - 0xac], eax
jmp short loc_00015bb3  ; jmp 0x15bb3

loc_00015b77:
mov edx, dword [ebx]
mov dword [ebp - 0xac], 0
mov dword [ebp - 0xb0], edx
cmp al, 0x68
jne short loc_00015b98  ; jne 0x15b98
movzx edx, dx
mov dword [ebp - 0xb0], edx
jmp short loc_00015ba9  ; jmp 0x15ba9

loc_00015b98:
cmp al, 0x69
jne short loc_00015bb3  ; jne 0x15bb3
movzx eax, byte [ebp - 0xb0]
mov dword [ebp - 0xb0], eax

loc_00015ba9:
mov dword [ebp - 0xac], 0

loc_00015bb3:
mov byte [ebp - 0xa2], 0x30
mov dword [ebp - 0xd0], 0

loc_00015bc4:
mov eax, dword [ebp - 0xb0]
mov edx, dword [ebp - 0xac]
mov ebx, eax
or ebx, edx
setne al
je short loc_00015bf2  ; je 0x15bf2
cmp byte [ebp - 0xc8], 0x6f
mov edx, 1
cmovne edx, dword [ebp - 0xd0]
mov dword [ebp - 0xd0], edx

loc_00015bf2:
cmp byte [ebp - 0xbc], 0
jne short loc_00015c04  ; jne 0x15c04
cmp byte [ebp - 0xc8], 0x62
jne short loc_00015c32  ; jne 0x15c32

loc_00015c04:
test byte [ebp - 0xb4], 0x20
jne short loc_00015c19  ; jne 0x15c19
test al, al
je short loc_00015c32  ; je 0x15c32
mov al, byte [ebp - 0xc8]
jmp short loc_00015c22  ; jmp 0x15c22

loc_00015c19:
mov al, byte [ebp - 0xc8]
or eax, 0x20

loc_00015c22:
mov byte [ebp - 0xa1], al
mov dword [ebp - 0xd0], 2

loc_00015c32:
test byte [ebp - 0xb4], 8
je short loc_00015c49  ; je 0x15c49
lea eax, [ebp - 0xa2]
mov dword [ebp - 0xec], eax
jmp short loc_00015c5d  ; jmp 0x15c5d

loc_00015c49:
mov dword [ebp - 0xec], 0
mov dword [ebp - 0xd0], 0

loc_00015c5d:
cmp esi, 0xa
jne short loc_00015cc8  ; jne 0x15cc8
mov dword [ebp - 0xbc], 0
lea esi, [ebp - 0xa0]

loc_00015c72:
mov edx, dword [ebp - 0xac]
mov eax, dword [ebp - 0xb0]
mov ebx, edx
or ebx, eax
je loc_00015e16  ; je 0x15e16
push esi
push 0xa
push dword [ebp - 0xac]
push dword [ebp - 0xb0]
call fcn_0001743e  ; call 0x1743e
mov bl, byte [ebp - 0xa0]
add esp, 0x10
inc dword [ebp - 0xbc]
mov dword [ebp - 0xb0], eax
mov eax, dword [ebp - 0xbc]
mov dword [ebp - 0xac], edx
lea edx, [ebx + 0x30]
neg eax
mov byte [eax + ebp - 0x18], dl
jmp short loc_00015c72  ; jmp 0x15c72

loc_00015cc8:
cmp byte [ebp - 0xc8], 0x75
sete byte [ebp - 0xdc]
cmp esi, 8
sete dl
cmp esi, 2
je short loc_00015cf9  ; je 0x15cf9
test dl, dl
jne short loc_00015cf9  ; jne 0x15cf9
cmp esi, 0x10
je short loc_00015cf9  ; je 0x15cf9
mov dword [ebp - 0xbc], 0
jmp near loc_00015dfd  ; jmp 0x15dfd

loc_00015cf9:
lea eax, [esi - 1]
cmp esi, 0x10
je short loc_00015d0e  ; je 0x15d0e
cmp dl, 1
sbb ecx, ecx
and ecx, 0xfffffffe
add ecx, 3
jmp short loc_00015d13  ; jmp 0x15d13

loc_00015d0e:
mov ecx, 4

loc_00015d13:
mov dword [ebp - 0xbc], 0

loc_00015d1d:
mov esi, dword [ebp - 0xac]
mov ebx, dword [ebp - 0xb0]
mov edx, esi
or edx, ebx
je loc_00015e16  ; je 0x15e16
mov edx, dword [ebp - 0xb0]
and edx, eax
cmp byte [ebp - 0xc8], 0x78
mov dl, byte [edx + ref_00020464]  ; mov dl, byte [edx + 0x20464]
je short loc_00015d5c  ; je 0x15d5c
cmp byte [ebp - 0xd8], 0
jne short loc_00015d5c  ; jne 0x15d5c
cmp byte [ebp - 0xdc], 0
je short loc_00015d5f  ; je 0x15d5f

loc_00015d5c:
or edx, 0x20

loc_00015d5f:
inc dword [ebp - 0xbc]
mov esi, dword [ebp - 0xbc]
mov ebx, dword [ebp - 0xb0]
neg esi
mov byte [esi + ebp - 0x18], dl
mov esi, dword [ebp - 0xac]
xor edx, edx
shrd ebx, esi, cl
shr esi, cl
test cl, 0x20
cmovne ebx, esi
cmovne esi, edx
mov dword [ebp - 0xb0], ebx
mov dword [ebp - 0xac], esi
jmp short loc_00015d1d  ; jmp 0x15d1d

loc_00015d9b:
push eax
push esi
push dword [ebp - 0xac]
push dword [ebp - 0xb0]
call fcn_000173ac  ; call 0x173ac
add esp, 0x10
cmp byte [ebp - 0xdc], 0
mov al, byte [eax + ref_00020464]  ; mov al, byte [eax + 0x20464]
jne short loc_00015e11  ; jne 0x15e11
cmp byte [ebp - 0xd8], 0
jne short loc_00015e11  ; jne 0x15e11

loc_00015dc9:
inc dword [ebp - 0xbc]
mov edx, dword [ebp - 0xbc]
neg edx
mov byte [edx + ebp - 0x18], al
push eax
push esi
push dword [ebp - 0xac]
push dword [ebp - 0xb0]
call fcn_000173f5  ; call 0x173f5
add esp, 0x10
mov dword [ebp - 0xb0], eax
mov dword [ebp - 0xac], edx

loc_00015dfd:
mov edx, dword [ebp - 0xac]
mov eax, dword [ebp - 0xb0]
mov ebx, edx
or ebx, eax
jne short loc_00015d9b  ; jne 0x15d9b
jmp short loc_00015e16  ; jmp 0x15e16

loc_00015e11:
or eax, 0x20
jmp short loc_00015dc9  ; jmp 0x15dc9

loc_00015e16:
cmp dword [ebp - 0xcc], 0
mov dword [ebp - 0xe8], 0
je loc_00015fd0  ; je 0x15fd0
mov eax, dword [ebp - 0xe0]
mov ebx, dword [ebp - 0xcc]
mov ecx, dword [ebp - 0xbc]
mov dword [ebp - 0xc8], 0x82
sub dword [ebp - 0xc8], ecx
lea eax, [eax + ebx - 1]
mov dword [ebp - 0xd8], eax
xor eax, eax
mov dword [ebp - 0xb0], ecx
mov byte [ebp - 0xe4], 0

loc_00015e68:
cmp dword [ebp - 0xb0], 0
je loc_00015fd0  ; je 0x15fd0
cmp dword [ebp - 0xcc], 0
je loc_000160d2  ; je 0x160d2
mov ebx, dword [ebp - 0xd8]
mov al, byte [ebx]
cmp al, 0x2d
je loc_00015fd0  ; je 0x15fd0
cmp al, 0x2a
je short loc_00015eb3  ; je 0x15eb3
mov ecx, dword [ebp - 0xcc]
mov edx, 1
xor eax, eax
sub ebx, ecx
mov dword [ebp - 0xdc], ecx
mov dword [ebp - 0xe4], ebx
jmp short loc_00015f03  ; jmp 0x15f03

loc_00015eb3:
mov eax, dword [ebp - 0xb8]
lea esi, [eax + 4]
mov eax, dword [eax]
test eax, eax
js loc_00015fca  ; js 0x15fca
mov ecx, dword [ebp - 0xd8]
mov edx, dword [ebp - 0xcc]
mov dword [ebp - 0xb8], esi
dec ecx
dec edx
mov dword [ebp - 0xdc], edx
jne short loc_00015f39  ; jne 0x15f39
jmp near loc_00015fd0  ; jmp 0x15fd0

loc_00015ee7:
movsx esi, bl
sub esi, 0x30
imul esi, edx
imul ebx, edx, 0xa
add eax, esi
dec dword [ebp - 0xdc]
mov edx, ebx
je loc_00015fd0  ; je 0x15fd0

loc_00015f03:
mov ebx, dword [ebp - 0xdc]
mov esi, dword [ebp - 0xe4]
mov dword [ebp - 0xf0], eax
mov ecx, ebx
mov al, byte [esi + ebx]
sub ecx, dword [ebp - 0xcc]
add ecx, dword [ebp - 0xd8]
mov esi, eax
mov bl, al
sub esi, 0x30
mov eax, esi
cmp al, 9
mov eax, dword [ebp - 0xf0]
jbe short loc_00015ee7  ; jbe 0x15ee7

loc_00015f39:
mov dl, byte [ecx]
lea ebx, [ecx - 1]
mov ecx, dword [ebp - 0xdc]
mov dword [ebp - 0xd8], ebx
mov byte [ebp - 0xe4], dl
dec ecx
mov dword [ebp - 0xcc], ecx
test eax, eax
je short loc_00015fbb  ; je 0x15fbb

loc_00015f5b:
mov esi, dword [ebp - 0xb0]
cmp esi, eax
jle short loc_00015fd0  ; jle 0x15fd0
lea ecx, [ebp - 0x9a]
sub esi, eax
add ecx, dword [ebp - 0xc8]
xor edx, edx

loc_00015f75:
cmp edx, esi
je short loc_00015f83  ; je 0x15f83
mov bl, byte [ecx + edx]
mov byte [ecx + edx - 1], bl
inc edx
jmp short loc_00015f75  ; jmp 0x15f75

loc_00015f83:
mov ecx, dword [ebp - 0xb0]
dec dword [ebp - 0xc8]
add ecx, dword [ebp - 0xc8]
mov bl, byte [ebp - 0xe4]
inc dword [ebp - 0xbc]
sub ecx, eax
inc dword [ebp - 0xe8]
mov byte [ebp + ecx - 0x9a], bl
mov dword [ebp - 0xb0], edx
jmp near loc_00015e68  ; jmp 0x15e68

loc_00015fbb:
cmp dword [ebp - 0xcc], 0
jne loc_00015e68  ; jne 0x15e68
jmp short loc_00015fd0  ; jmp 0x15fd0

loc_00015fca:
mov dword [ebp - 0xb8], esi

loc_00015fd0:
cmp dword [ebp - 0xc0], 0
js short loc_00015fe2  ; js 0x15fe2
and dword [ebp - 0xb4], 0xffffffef
jmp short loc_00015fec  ; jmp 0x15fec

loc_00015fe2:
mov dword [ebp - 0xc0], 1

loc_00015fec:
mov ebx, dword [ebp - 0xbc]
mov eax, dword [ebp - 0xc0]
add eax, dword [ebp - 0xe8]
cmp eax, ebx
cmovl eax, ebx
mov ebx, dword [ebp - 0xc4]
xor ecx, ecx
mov esi, eax
mov eax, dword [ebp - 0xd0]
mov edx, ebx
add eax, esi
sub edx, eax
cmp eax, ebx
cmovl ecx, edx
mov edx, dword [ebp - 0xb4]
xor eax, eax
and edx, 4
je short loc_0001602f  ; je 0x1602f
mov eax, ecx
xor ecx, ecx

loc_0001602f:
test byte [ebp - 0xb4], 0x40
je short loc_00016047  ; je 0x16047
add eax, ecx
xor ecx, ecx
test edx, edx
sete cl
add ecx, eax
sar ecx, 1
sub eax, ecx

loc_00016047:
sub esi, dword [ebp - 0xbc]
mov edx, esi
test byte [ebp - 0xb4], 0x10
je short loc_0001605c  ; je 0x1605c
add edx, ecx
xor ecx, ecx

loc_0001605c:
mov esi, dword [ebp - 0xbc]
push ebx
push ebx
push eax
lea eax, [ebp - 0x9a]
sub eax, esi
push esi
add eax, 0x82
push eax
mov eax, dword [ebp + 8]
push edx
push dword [ebp - 0xd0]
push dword [ebp - 0xec]
lea edx, [ebp + 0xc]
call fcn_0001544e  ; call 0x1544e
mov ebx, dword [ebp - 0xb8]
add esp, 0x20

loc_00016095:
test eax, eax
js loc_00015580  ; js 0x15580

loc_0001609d:
add dword [ebp - 0xd4], eax
lea eax, [edi + 1]
jmp near loc_000155a1  ; jmp 0x155a1

loc_000160ab:
mov eax, dword [ebp - 0xd4]
jmp short loc_000160e6  ; jmp 0x160e6

loc_000160b3:
sub eax, ref_000204ac  ; sub eax, 0x204ac
inc edi
mov eax, dword [eax*4 + ref_0002048c]  ; mov eax, dword [eax*4 + 0x2048c]
or dword [ebp - 0xb4], eax
jmp near loc_000155d6  ; jmp 0x155d6

loc_000160cb:
mov edi, esi
jmp near loc_00015790  ; jmp 0x15790

loc_000160d2:
test eax, eax
jne loc_00015f5b  ; jne 0x15f5b
jmp near loc_00015fd0  ; jmp 0x15fd0

loc_000160df:
add ebx, 4
xor eax, eax
jmp short loc_0001609d  ; jmp 0x1609d

loc_000160e6:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000160ee:  ; not directly referenced
push ebp
mov edx, dword [ref_00029b08]  ; mov edx, dword [0x29b08]
mov ebp, esp
mov eax, dword [ebp + 0xc]
mov dword [eax], edx
xor eax, eax
pop ebp
ret

fcn_00016100:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 0xc]
pop ebp
mov dword [ref_00029b08], eax  ; mov dword [0x29b08], eax
xor eax, eax
ret

fcn_0001610f:  ; not directly referenced
push ebp
xor eax, eax
mov ebp, esp
pop ebp
ret

fcn_00016116:  ; not directly referenced
push ebp
mov ebp, esp
pop ebp
jmp near fcn_0001707a  ; jmp 0x1707a

fcn_0001611f:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
mov ebx, eax
push edx
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00016175  ; je 0x16175
movzx eax, byte [ebx + 0xf]
sub esp, 0xc
push eax
movzx eax, byte [ebx + 0xe]
push eax
movzx eax, byte [ebx + 0xd]
push eax
movzx eax, byte [ebx + 0xc]
push eax
movzx eax, byte [ebx + 0xb]
push eax
movzx eax, byte [ebx + 0xa]
push eax
movzx eax, byte [ebx + 9]
push eax
movzx eax, byte [ebx + 8]
push eax
movzx eax, word [ebx + 6]
push eax
movzx eax, word [ebx + 4]
push eax
push dword [ebx]
push ref_000253ae  ; push 0x253ae
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x40

loc_00016175:  ; not directly referenced
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001617a:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov ebx, dword [ebp + 0xc]

loc_00016186:  ; not directly referenced
mov esi, ref_00029a8c  ; mov esi, 0x29a8c
xor edi, edi

loc_0001618d:  ; not directly referenced
cmp edi, dword [ref_00029c00]  ; cmp edi, dword [0x29c00]
jae short loc_000161d7  ; jae 0x161d7
push eax
add esi, 0xc
push eax
push dword [ebx + 4]
push dword [esi + 0x7c]
call fcn_00016e24  ; call 0x16e24
add esp, 0x10
test al, al
je short loc_000161d4  ; je 0x161d4
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000161ca  ; je 0x161ca
push esi
push ref_000204f4  ; push 0x204f4
push ref_000253e2  ; push 0x253e2
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000161ca:  ; not directly referenced
mov eax, dword [ebx + 4]
call fcn_0001611f  ; call 0x1611f
jmp short loc_000161d7  ; jmp 0x161d7

loc_000161d4:  ; not directly referenced
inc edi
jmp short loc_0001618d  ; jmp 0x1618d

loc_000161d7:  ; not directly referenced
cmp edi, dword [ref_00029c00]  ; cmp edi, dword [0x29c00]
jne short loc_00016214  ; jne 0x16214
cmp edi, 0x13
jbe short loc_0001620c  ; jbe 0x1620c
call fcn_000153e9  ; call 0x153e9
mov ebx, 0x80000009
test al, al
je short loc_0001626c  ; je 0x1626c
push ecx
push ref_000204f4  ; push 0x204f4
push ref_000253f6  ; push 0x253f6
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp short loc_0001626c  ; jmp 0x1626c

loc_0001620c:  ; not directly referenced
lea eax, [edi + 1]
mov dword [ref_00029c00], eax  ; mov dword [0x29c00], eax

loc_00016214:  ; not directly referenced
imul edi, edi, 0xc
mov ecx, 3
mov esi, ebx
add edi, ref_00029b10  ; add edi, 0x29b10
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
mov edi, ref_00029c04  ; mov edi, 0x29c04
xor esi, esi

loc_0001622d:  ; not directly referenced
cmp esi, dword [ref_00029cf4]  ; cmp esi, dword [0x29cf4]
jae short loc_0001625d  ; jae 0x1625d
push edx
push edx
push dword [ebx + 4]
push dword [edi + 4]
call fcn_00016e24  ; call 0x16e24
add esp, 0x10
test al, al
je short loc_00016257  ; je 0x16257
push eax
push dword [ebx + 8]
push edi
push dword [ebp + 8]
call dword [edi + 8]  ; ucall
add esp, 0x10

loc_00016257:  ; not directly referenced
inc esi
add edi, 0xc
jmp short loc_0001622d  ; jmp 0x1622d

loc_0001625d:  ; not directly referenced
mov eax, dword [ebx]
add ebx, 0xc
test eax, eax
jns loc_00016186  ; jns 0x16186
xor ebx, ebx

loc_0001626c:  ; not directly referenced
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00016276:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
mov esi, ref_00029b10  ; mov esi, 0x29b10
push ebx
xor ebx, ebx
sub esp, 0xc

loc_00016286:  ; not directly referenced
cmp ebx, dword [ref_00029c00]  ; cmp ebx, dword [0x29c00]
jae short loc_000162b6  ; jae 0x162b6
push eax
mov edi, esi
push eax
add esi, 0xc
push dword [esi - 8]
push dword [ebp + 0xc]
call fcn_00016e24  ; call 0x16e24
add esp, 0x10
test al, al
je short loc_000162b3  ; je 0x162b3
mov eax, dword [ebp + 0x18]
mov edx, dword [edi + 8]
mov dword [eax], edx
xor eax, eax
jmp short loc_000162e4  ; jmp 0x162e4

loc_000162b3:  ; not directly referenced
inc ebx
jmp short loc_00016286  ; jmp 0x16286

loc_000162b6:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_000162d7  ; je 0x162d7
push ebx
push ref_000204dc  ; push 0x204dc
push ref_00025411  ; push 0x25411
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_000162d7:  ; not directly referenced
mov eax, dword [ebp + 0xc]
call fcn_0001611f  ; call 0x1611f
mov eax, 0x8000000e

loc_000162e4:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000162ec:  ; not directly referenced
push ebp
xor eax, eax
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov ebx, dword [ref_00029cf4]  ; mov ebx, dword [0x29cf4]
imul edx, ebx, 0xc

loc_00016300:  ; not directly referenced
cmp ebx, 0x13
jbe short loc_00016325  ; jbe 0x16325
call fcn_000153e9  ; call 0x153e9
mov esi, 0x80000009
test al, al
je short loc_0001636c  ; je 0x1636c
push eax
push ref_000204e8  ; push 0x204e8
push ref_0002542e  ; push 0x2542e
push 0x80000000
jmp short loc_00016364  ; jmp 0x16364

loc_00016325:  ; not directly referenced
mov esi, dword [ebp + 0xc]
inc ebx
mov ecx, 3
mov dword [ref_00029cf4], ebx  ; mov dword [0x29cf4], ebx
lea edi, [eax + edx + ref_00029c04]  ; lea edi, [eax + edx + 0x29c04]
add esi, eax
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
mov edi, dword [ebp + 0xc]
mov ecx, dword [edi + eax]
add eax, 0xc
test ecx, ecx
jns short loc_00016300  ; jns 0x16300
call fcn_000153e9  ; call 0x153e9
xor esi, esi
test al, al
je short loc_0001636c  ; je 0x1636c
push ebx
push ref_000204e8  ; push 0x204e8
push ref_0002544e  ; push 0x2544e
push 0x40

loc_00016364:  ; not directly referenced
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001636c:  ; not directly referenced
lea esp, [ebp - 0xc]
mov eax, esi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00016376:  ; not directly referenced
push ebp
mov eax, ref_00029a8c  ; mov eax, 0x29a8c
mov ebp, esp
pop ebp
ret

fcn_00016380:
push ebp
mov eax, dword [ref_00029b0c]  ; mov eax, dword [0x29b0c]
mov ebp, esp
pop ebp
ret

fcn_0001638a:  ; not directly referenced
mov eax, dword [ref_00029cfc]  ; mov eax, dword [0x29cfc]
push ebp
mov ebp, esp
mov edx, dword [ebp + 8]
test eax, eax
je short loc_000163a2  ; je 0x163a2
movzx edx, dl
mov dword [ebp + 8], edx
pop ebp
jmp eax

loc_000163a2:  ; not directly referenced
pop ebp
ret

fcn_000163a4:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
mov eax, dword [ebx]
cmp eax, 0x16
je short loc_000163cb  ; je 0x163cb
push ebx
push 0x16
push eax
push ref_0002545f  ; push 0x2545f
call fcn_000153ce  ; call 0x153ce
add esp, 0x10
xor eax, eax
jmp near loc_00016524  ; jmp 0x16524

loc_000163cb:
mov eax, dword [ebx + 0xca]
push ecx
push ecx
push 0x270
push ref_00029a8c  ; push 0x29a8c
mov dword [ref_00029cfc], eax  ; mov dword [0x29cfc], eax
call fcn_00016f3b  ; call 0x16f3b
add esp, 0x10
mov dword [ref_00029b0c], ebx  ; mov dword [0x29b0c], ebx
cmp dword [ebx + 8], 3
mov dword [ref_00029a8c], 0xfeaddeaf  ; mov dword [0x29a8c], 0xfeaddeaf
jne short loc_00016425  ; jne 0x16425
cmp dword [ebx + 0x8f6], 0
je short loc_00016425  ; je 0x16425
sub esp, 0xc
push ref_00025483  ; push 0x25483
call fcn_000153ce  ; call 0x153ce
add esp, 0x10
mov dword [ref_00029b08], 0x11  ; mov dword [0x29b08], 0x11
jmp short loc_0001642f  ; jmp 0x1642f

loc_00016425:
mov dword [ref_00029b08], 6  ; mov dword [0x29b08], 6

loc_0001642f:
sub esp, 0xc
push ref_00029a88  ; push 0x29a88
mov dword [ref_00029b14], ref_00028fec  ; mov dword [0x29b14], 0x28fec
mov dword [ref_00029c00], 1  ; mov dword [0x29c00], 1
mov dword [ref_00029ab0], fcn_00016276  ; mov dword [0x29ab0], 0x16276
mov dword [ref_00029ab8], fcn_000160ee  ; mov dword [0x29ab8], 0x160ee
mov dword [ref_00029abc], fcn_00016100  ; mov dword [0x29abc], 0x16100
mov dword [ref_00029ac0], fcn_0001d4a5  ; mov dword [0x29ac0], 0x1d4a5
mov dword [ref_00029ac4], fcn_0001d3db  ; mov dword [0x29ac4], 0x1d3db
mov dword [ref_00029ab4], fcn_000162ec  ; mov dword [0x29ab4], 0x162ec
mov dword [ref_00029aa8], fcn_0001617a  ; mov dword [0x29aa8], 0x1617a
mov dword [ref_00029adc], fcn_0001d351  ; mov dword [0x29adc], 0x1d351
mov dword [ref_00029ae0], fcn_00016116  ; mov dword [0x29ae0], 0x16116
mov dword [ref_00029b04], fcn_0001610f  ; mov dword [0x29b04], 0x1610f
mov dword [ref_00029a88], ref_00029a90  ; mov dword [0x29a88], 0x29a90
call fcn_00019a38  ; call 0x19a38
pop eax
pop edx
push ref_00029a88  ; push 0x29a88
push 0
call fcn_0001adbe  ; call 0x1adbe
mov dword [esp], ref_00025493  ; mov dword [esp], 0x25493
call fcn_000153ce  ; call 0x153ce
pop ecx
pop ebx
push ref_00029a88  ; push 0x29a88
push 0
call fcn_00016c36  ; call 0x16c36
mov dword [esp], ref_000254a8  ; mov dword [esp], 0x254a8
call fcn_000153ce  ; call 0x153ce
pop eax
pop edx
push ref_00029a88  ; push 0x29a88
push 0
call fcn_0001653b  ; call 0x1653b
pop ecx
pop ebx
push ref_00029a88  ; push 0x29a88
push 0
call fcn_0001b8a7  ; call 0x1b8a7
pop eax
pop edx
push ref_00029a88  ; push 0x29a88
push 0
call fcn_0001b002  ; call 0x1b002
add esp, 0x10
mov eax, ref_00029a88  ; mov eax, 0x29a88

loc_00016524:
mov ebx, dword [ebp - 4]
leave
ret

fcn_00016529:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x14
push dword [ebp + 0x10]
call fcn_0001ba3f  ; call 0x1ba3f
xor eax, eax
leave
ret

fcn_0001653b:
push ebp
mov ebp, esp
push ebx
sub esp, 0x10
push ref_00028f78  ; push 0x28f78
call fcn_00019667  ; call 0x19667
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00016590  ; je 0x16590
test ebx, ebx
jns short loc_00016590  ; jns 0x16590
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001657b  ; je 0x1657b
push edx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001657b:
push eax
push ref_00020664  ; push 0x20664
push 0x42
push ref_000254bf  ; push 0x254bf
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00016590:
mov eax, ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_00016597:
push ebp
xor eax, eax
mov ebp, esp
pop ebp
ret

fcn_0001659e:  ; not directly referenced
push ebp
mov ebp, esp
pop ebp
ret

fcn_000165a3:  ; not directly referenced
push ebp
mov ebp, esp
pop ebp
ret

fcn_000165a8:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
mov esi, edx
push ebx
sub esp, 0x2c
mov edx, dword [ebp + 8]
mov word [ebp - 0x2a], cx
mov dword [ebp - 0x1c], 0x80000007
test esi, esi
je loc_00016671  ; je 0x16671
cmp cx, 0x1ff
ja loc_00016671  ; ja 0x16671
mov edi, edx
movzx edx, dx
add edx, ecx
cmp edx, 0x1ff
jg loc_00016671  ; jg 0x16671
lea ecx, [edi + esi]
movzx eax, al
mov ebx, esi
mov word [ebp - 0x2c], cx
mov dword [ebp - 0x30], eax

loc_000165f6:  ; not directly referenced
cmp word [ebp - 0x2c], bx
je short loc_0001666a  ; je 0x1666a
mov dx, word [ebp - 0x2a]
mov edi, dword [ebp + 0xc]
sub edx, esi
movzx ecx, byte [edi]
add edx, ebx
mov eax, edx
shr ax, 8
cmp ax, cx
je short loc_0001661b  ; je 0x1661b
mov byte [edi], al
mov al, 1
jmp short loc_0001661d  ; jmp 0x1661d

loc_0001661b:  ; not directly referenced
xor eax, eax

loc_0001661d:  ; not directly referenced
dec al
movzx edi, dl
jne short loc_00016642  ; jne 0x16642
mov eax, dword [ebp + 0xc]
cmp byte [eax], 1
push edx
lea edx, [ebp - 0x1c]
sbb eax, eax
push edx
and eax, 0xfffffffe
push 0
add eax, 0x6e
push eax
call fcn_0001a236  ; call 0x1a236
add esp, 0x10

loc_00016642:  ; not directly referenced
shl edi, 8
push eax
or edi, dword [ebp - 0x30]
push eax
lea eax, [ebp - 0x1c]
push eax
push edi
mov dword [ebp - 0x34], ebx
inc ebx
call fcn_0001a1be  ; call 0x1a1be
add esp, 0x10
mov edx, dword [ebp - 0x34]
mov byte [ebx - 1], al
cmp dword [ebp - 0x1c], 0
je short loc_000165f6  ; je 0x165f6
mov byte [edx], 0

loc_0001666a:  ; not directly referenced
mov dword [ebp - 0x1c], 0

loc_00016671:  ; not directly referenced
mov eax, dword [ebp - 0x1c]
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001667c:  ; not directly referenced
push ebp
mov ecx, 2
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x34
mov esi, dword [ebp + 0x10]
movzx eax, byte [ebp + 0xc]
lea edi, [ebp - 0x19]
push edi
push 1
lea edx, [esi + 2]
mov byte [ebp - 0x19], 0xff
mov dword [ebp - 0x30], eax
call fcn_000165a8  ; call 0x165a8
add esp, 0x10
mov esi, eax
test eax, eax
jne short loc_00016710  ; jne 0x16710
mov eax, dword [ebp + 0x18]
xor edx, edx
mov ecx, dword [ebp + 8]
mov dword [ebp - 0x2c], 1
mov ebx, dword [ebp + 0x14]
shl dword [ebp - 0x2c], cl
mov ecx, 5
div ecx
lea eax, [eax + eax*4]
add eax, ebx
mov dword [ebp - 0x34], eax

loc_000166d3:  ; not directly referenced
cmp ebx, dword [ebp - 0x34]
je short loc_00016710  ; je 0x16710
movzx eax, byte [ebx + 4]
test dword [ebp - 0x2c], eax
je short loc_0001670b  ; je 0x1670b
push eax
mov edx, dword [ebp + 0x10]
push eax
movzx ecx, word [ebx]
push edi
mov ax, word [ebx + 2]
add edx, ecx
inc eax
sub ax, word [ebx]
movzx eax, ax
push eax
mov eax, dword [ebp - 0x30]
call fcn_000165a8  ; call 0x165a8
add esp, 0x10
test eax, eax
je short loc_0001670b  ; je 0x1670b
mov esi, eax
jmp short loc_00016710  ; jmp 0x16710

loc_0001670b:  ; not directly referenced
add ebx, 5
jmp short loc_000166d3  ; jmp 0x166d3

loc_00016710:  ; not directly referenced
test esi, esi
sete al
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001671d:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001673e  ; je 0x1673e
push eax
push eax
push dword [ebp + 8]
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001673e:  ; not directly referenced
leave
ret

fcn_00016740:  ; not directly referenced
push ebp
mov ebp, esp
mov edx, dword [ebp + 0x10]
movzx eax, byte [ebp + 0x14]
and edx, 7
shl edx, 8
or eax, 0x80000000
or eax, edx
movzx edx, byte [ebp + 8]
shl edx, 0x10
or eax, edx
movzx edx, byte [ebp + 0xc]
pop ebp
shl edx, 0xb
movzx edx, dx
or eax, edx
ret

fcn_0001676e:  ; not directly referenced
push ebp
mov ebp, esp
movzx eax, byte [ebp + 0x10]
movzx edx, byte [ebp + 0x14]
shl eax, 0xc
add edx, eax
movzx eax, byte [ebp + 0xc]
shl eax, 0xf
add edx, eax
movzx eax, byte [ebp + 8]
pop ebp
shl eax, 0x14
add eax, edx
ret

fcn_00016792:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
sub esp, 0xc
mov edx, dword [ebp + 8]
mov al, dl
mov bl, dl
sar al, 7
and edx, 0x7f
and eax, 2
add eax, 0x74
push edx
movzx eax, al
sar bl, 7
push eax
and ebx, 2
call fcn_00018e26  ; call 0x18e26
add ebx, 0x75
add esp, 0x10
movzx ebx, bl
mov dword [ebp + 8], ebx
mov ebx, dword [ebp - 4]
leave
jmp near fcn_00018e1d  ; jmp 0x18e1d

fcn_000167d1:  ; not directly referenced
push ebp
mov edx, 0xfffff
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]

loc_000167e8:  ; not directly referenced
push ecx
push ecx
push 0xa
push 0x70
mov dword [ebp - 0x1c], edx
call fcn_00018e26  ; call 0x18e26
mov dword [esp], 0x71
call fcn_00018e1d  ; call 0x18e1d
add esp, 0x10
mov edx, dword [ebp - 0x1c]
test al, al
jns short loc_00016811  ; jns 0x16811
dec edx
jne short loc_000167e8  ; jne 0x167e8
jmp short loc_00016815  ; jmp 0x16815

loc_00016811:  ; not directly referenced
test edx, edx
jne short loc_0001688b  ; jne 0x1688b

loc_00016815:  ; not directly referenced
push eax
push eax
push 0xb
push 0x70
call fcn_00018e26  ; call 0x18e26
pop eax
pop edx
push 0x82
push 0x71
call fcn_00018e26  ; call 0x18e26
pop ecx
pop eax
push 0xa
push 0x70
call fcn_00018e26  ; call 0x18e26
pop eax
pop edx
push 0x26
push 0x71
call fcn_00018e26  ; call 0x18e26
pop ecx
pop eax
push 0xc
push 0x70
call fcn_00018e26  ; call 0x18e26
mov dword [esp], 0x71
call fcn_00018e1d  ; call 0x18e1d
pop eax
pop edx
push 0xd
push 0x70
call fcn_00018e26  ; call 0x18e26
mov dword [esp], 0x71
call fcn_00018e1d  ; call 0x18e1d
pop ecx
pop eax
push 0xb
push 0x70
call fcn_00018e26  ; call 0x18e26
pop eax
pop edx
push 2
push 0x71
call fcn_00018e26  ; call 0x18e26
add esp, 0x10

loc_0001688b:  ; not directly referenced
push eax
push eax
push 0
push 0x70
call fcn_00018e26  ; call 0x18e26
mov dword [esp], 0x71
call fcn_00018e1d  ; call 0x18e1d
mov byte [edi], al
pop edx
pop ecx
push 2
push 0x70
call fcn_00018e26  ; call 0x18e26
mov dword [esp], 0x71
call fcn_00018e1d  ; call 0x18e1d
mov byte [esi], al
pop eax
pop edx
push 4
push 0x70
call fcn_00018e26  ; call 0x18e26
mov dword [esp], 0x71
call fcn_00018e1d  ; call 0x18e1d
mov byte [ebx], al
pop ecx
pop eax
push 7
push 0x70
call fcn_00018e26  ; call 0x18e26
mov dword [esp], 0x71
call fcn_00018e1d  ; call 0x18e1d
mov edx, dword [ebp + 0x14]
mov byte [edx], al
pop eax
pop edx
push 8
push 0x70
call fcn_00018e26  ; call 0x18e26
mov dword [esp], 0x71
call fcn_00018e1d  ; call 0x18e1d
mov edx, dword [ebp + 0x18]
mov byte [edx], al
pop ecx
pop eax
push 9
push 0x70
call fcn_00018e26  ; call 0x18e26
mov dword [esp], 0x71
call fcn_00018e1d  ; call 0x18e1d
mov edx, dword [ebp + 0x1c]
movzx eax, al
mov word [edx], ax
mov cl, byte [edi]
mov dl, 0xa
mov al, cl
and ecx, 0xf
shr al, 4
imul eax, edx
add eax, ecx
mov byte [edi], al
mov cl, byte [esi]
mov edi, dword [ebp + 0x1c]
mov al, cl
and ecx, 0xf
shr al, 4
imul eax, edx
add eax, ecx
mov byte [esi], al
mov cl, byte [ebx]
mov esi, dword [ebp + 0x18]
mov al, cl
and ecx, 0xf
shr al, 4
imul eax, edx
add eax, ecx
mov byte [ebx], al
mov eax, dword [ebp + 0x14]
mov ebx, dword [ebp + 0x14]
mov cl, byte [eax]
mov al, cl
and ecx, 0xf
shr al, 4
imul eax, edx
add eax, ecx
mov byte [ebx], al
mov eax, dword [ebp + 0x18]
mov cl, byte [eax]
mov al, cl
and ecx, 0xf
shr al, 4
imul eax, edx
add eax, ecx
mov byte [esi], al
mov eax, dword [ebp + 0x1c]
mov ax, word [eax]
mov edx, eax
and edx, 0xf
shr ax, 4
add esp, 0x10
and eax, 0xf
imul eax, eax, 0xa
lea eax, [edx + eax + 0x7d0]
mov word [edi], ax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000169be:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
sub esp, 0x10
push 0xce
call fcn_000174f8  ; call 0x174f8
add esp, 0x10
xor edx, edx
movzx ebx, ah
xor eax, eax
imul ebx, ebx, 0x186a0
test ebx, ebx
je short loc_000169f4  ; je 0x169f4
call fcn_000177b2  ; call 0x177b2
push ecx
push ebx
push edx
push eax
call fcn_000173f5  ; call 0x173f5
add esp, 0x10

loc_000169f4:  ; not directly referenced
mov ebx, dword [ebp - 4]
leave
ret

fcn_000169f9:  ; not directly referenced
push ebp
xor edx, edx
mov ebp, esp
mov eax, dword [ebp + 8]
mov ecx, dword [ebp + 0x10]

loc_00016a04:  ; not directly referenced
cmp edx, dword [ebp + 0xc]
je short loc_00016a10  ; je 0x16a10
mov word [eax + edx*2], cx
inc edx
jmp short loc_00016a04  ; jmp 0x16a04

loc_00016a10:  ; not directly referenced
pop ebp
ret

fcn_00016a12:  ; not directly referenced
push ebp
xor edx, edx
mov ebp, esp
mov eax, dword [ebp + 8]
mov ecx, dword [ebp + 0x10]

loc_00016a1d:  ; not directly referenced
cmp edx, dword [ebp + 0xc]
je short loc_00016a28  ; je 0x16a28
mov dword [eax + edx*4], ecx
inc edx
jmp short loc_00016a1d  ; jmp 0x16a1d

loc_00016a28:  ; not directly referenced
pop ebp
ret

fcn_00016a2a:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x20
lea eax, [ebp - 8]
mov dword [ebp - 0x14], eax
mov eax, dword [ebp + 8]
movq qword [ebp - 0x10], mm0
movq mm0, qword [eax]
movq qword [ebp - 0x14], mm0
movq mm0, qword [ebp - 0x10]
emms
mov eax, dword [ebp - 8]
mov edx, dword [ebp - 4]
leave
ret

fcn_00016a52:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x18
mov eax, dword [ebp + 0xc]
mov dword [ebp - 0x18], eax
mov eax, dword [ebp + 0x10]
mov dword [ebp - 0x14], eax
mov eax, dword [ebp + 8]
movq qword [ebp - 8], mm0
movq mm0, qword [ebp - 0x18]
movq qword [eax], mm0
movq mm0, qword [ebp - 8]
emms
mov eax, dword [ebp - 0x18]
mov edx, dword [ebp - 0x14]
leave
ret

fcn_00016a80:  ; not directly referenced
push ebp
xor eax, eax
mov ebp, esp
push ebx
mov ebx, 0x186a0
sub esp, 0x14

loc_00016a8e:  ; not directly referenced
test eax, eax
jne short loc_00016adb  ; jne 0x16adb
test ebx, ebx
je short loc_00016adb  ; je 0x16adb
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00016ab0  ; je 0x16ab0
push edx
push edx
push ref_000254c7  ; push 0x254c7
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00016ab0:  ; not directly referenced
clc

loc_00016ab1:  ; not directly referenced
rdrand eax
mov dword [ebp - 0xc], eax
jae short loc_00016ab1  ; jae 0x16ab1
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00016ad5  ; je 0x16ad5
push eax
push dword [ebp - 0xc]
push ref_000254e4  ; push 0x254e4
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00016ad5:  ; not directly referenced
mov eax, dword [ebp - 0xc]
dec ebx
jmp short loc_00016a8e  ; jmp 0x16a8e

loc_00016adb:  ; not directly referenced
mov ebx, dword [ebp - 4]
leave
ret

fcn_00016ae0:  ; not directly referenced
push ebp
xor eax, eax
mov ebp, esp
pop ebp
ret

fcn_00016ae7:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x14]
pop ebp
ret

fcn_00016aef:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword [ebp + 8]
cmp dword [ebp + 0xc], 0x41
mov edx, dword [eax + 0x241b]
mov edx, dword [edx + 0x1e]
jne short loc_00016b14  ; jne 0x16b14
sub esp, 0xc
push eax
call dword [edx + 0xcc]  ; ucall
add esp, 0x10

loc_00016b14:  ; not directly referenced
xor eax, eax
leave
ret

fcn_00016b18:  ; not directly referenced
push ebp
mov ebp, esp
mov edx, dword [ebp + 8]
mov eax, dword [ebp + 0xc]
push esi
push ebx
mov word [edx + 0x2467], ax
movzx esi, ax
mov ebx, eax
push edx
push edx
push esi
push 0x80
call fcn_00018e63  ; call 0x18e63
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_00016b59  ; je 0x16b59
push eax
push esi
push ref_00025502  ; push 0x25502
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00016b59:  ; not directly referenced
sub esp, 0xc
push 0x48
call fcn_00016792  ; call 0x16792
mov dword [esp], 0x49
mov esi, eax
call fcn_00016792  ; call 0x16792
add esp, 0x10
mov edx, eax
mov eax, esi
shl edx, 8
movzx esi, al
or edx, esi
cmp bx, dx
je short loc_00016b59  ; je 0x16b59
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_00016b8c:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00016bae  ; je 0x16bae
push eax
push dword [ebp + 0xc]
push ref_00025514  ; push 0x25514
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00016bae:  ; not directly referenced
push eax
mov eax, 0x1000
in al, 0x99
pop eax
leave
ret

fcn_00016bb9:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
mov edx, cr4
mov eax, edx
or eax, 0x4000
mov cr4, eax
xor eax, eax
mov ebx, eax
getsec
mov cr4, edx
pop ebx
pop ebp
ret

fcn_00016bd6:
push ebp
mov ebp, esp
push ebx
push edx
call fcn_00016380  ; call 0x16380
mov ebx, dword [eax + 0x14]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00016c19  ; je 0x16c19
cmp dword [ebp + 8], 0xff
ja short loc_00016c01  ; ja 0x16c01
cmp dword [ebp + 0xc], 0x1f
ja short loc_00016c01  ; ja 0x16c01
cmp dword [ebp + 0x10], 7
jbe short loc_00016c19  ; jbe 0x16c19

loc_00016c01:
push eax
push ref_00025554  ; push 0x25554
push 0x319
push ref_0002558b  ; push 0x2558b
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00016c19:
mov eax, dword [ebp + 0x10]
mov edx, dword [ebp + 0xc]
shl eax, 0xc
add eax, ebx
mov ebx, dword [ebp - 4]
shl edx, 0xf
add eax, edx
mov edx, dword [ebp + 8]
leave
shl edx, 0x14
add eax, edx
ret

fcn_00016c36:
push ebp
mov ebp, esp
push esi
push ebx
mov ebx, dword [ebp + 0xc]
sub esp, 0xc
push ebx
call fcn_0001deee  ; call 0x1deee
mov esi, eax
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_00016c66  ; je 0x16c66
push ecx
push ecx
push ref_000255a6  ; push 0x255a6
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00016c66:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00016ca5  ; je 0x16ca5
test esi, esi
jns short loc_00016ca5  ; jns 0x16ca5
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00016c90  ; je 0x16c90
push edx
push esi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00016c90:
push eax
push ref_00020664  ; push 0x20664
push 0x33
push ref_000255d4  ; push 0x255d4
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00016ca5:
sub esp, 0xc
push ebx
call fcn_0001ec6d  ; call 0x1ec6d
mov esi, eax
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_00016ccd  ; je 0x16ccd
push eax
push eax
push ref_0002560a  ; push 0x2560a
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00016ccd:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00016d0c  ; je 0x16d0c
test esi, esi
jns short loc_00016d0c  ; jns 0x16d0c
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00016cf7  ; je 0x16cf7
push eax
push esi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00016cf7:
push eax
push ref_00020664  ; push 0x20664
push 0x3a
push ref_000255d4  ; push 0x255d4
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00016d0c:
sub esp, 0xc
push ebx
call fcn_0001eefd  ; call 0x1eefd
mov esi, eax
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_00016d34  ; je 0x16d34
push eax
push eax
push ref_00025638  ; push 0x25638
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00016d34:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00016d73  ; je 0x16d73
test esi, esi
jns short loc_00016d73  ; jns 0x16d73
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00016d5e  ; je 0x16d5e
push eax
push esi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00016d5e:
push esi
push ref_00020664  ; push 0x20664
push 0x43
push ref_000255d4  ; push 0x255d4
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00016d73:
sub esp, 0xc
push ebx
call fcn_0001d4c2  ; call 0x1d4c2
mov ebx, eax
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_00016d9b  ; je 0x16d9b
push ecx
push ecx
push ref_00025665  ; push 0x25665
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00016d9b:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00016dda  ; je 0x16dda
test ebx, ebx
jns short loc_00016dda  ; jns 0x16dda
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00016dc5  ; je 0x16dc5
push edx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00016dc5:
push eax
push ref_00020664  ; push 0x20664
push 0x4a
push ref_000255d4  ; push 0x255d4
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00016dda:
lea esp, [ebp - 8]
mov eax, ebx
pop ebx
pop esi
pop ebp
ret

fcn_00016de3:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push esi
add esi, 8
call fcn_00017329  ; call 0x17329
add esp, 0xc
push edx
push eax
push ebx
call fcn_00017360  ; call 0x17360
mov dword [esp], esi
call fcn_00017329  ; call 0x17329
add esp, 0xc
push edx
push eax
lea eax, [ebx + 8]
push eax
call fcn_00017360  ; call 0x17360
lea esp, [ebp - 8]
mov eax, ebx
pop ebx
pop esi
pop ebp
ret

fcn_00016e24:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov esi, dword [ebp + 8]
push esi
add esi, 8
call fcn_00017329  ; call 0x17329
mov ebx, eax
pop eax
push dword [ebp + 0xc]
mov dword [ebp - 0x1c], edx
call fcn_00017329  ; call 0x17329
mov dword [esp], esi
mov dword [ebp - 0x20], eax
mov dword [ebp - 0x24], edx
call fcn_00017329  ; call 0x17329
mov edi, eax
mov eax, dword [ebp + 0xc]
mov esi, edx
add eax, 8
mov dword [esp], eax
call fcn_00017329  ; call 0x17329
mov ecx, dword [ebp - 0x1c]
add esp, 0x10
xor eax, edi
xor edx, esi
or eax, edx
sete al
xor ebx, dword [ebp - 0x20]
xor ecx, dword [ebp - 0x24]
or ebx, ecx
sete dl
lea esp, [ebp - 0xc]
and eax, edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00016e8b:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00016ebc  ; je 0x16ebc
test bl, 3
je short loc_00016ebc  ; je 0x16ebc
push eax
push ref_0002569b  ; push 0x2569b
push 0x81
push ref_000256cd  ; push 0x256cd
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00016ebc:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00016ee5  ; je 0x16ee5
mov eax, ebx
neg eax
cmp esi, eax
jbe short loc_00016ee5  ; jbe 0x16ee5
push ecx
push ref_0002570f  ; push 0x2570f
push 0x82
push ref_000256cd  ; push 0x256cd
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00016ee5:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00016f0e  ; je 0x16f0e
test esi, 0xf
je short loc_00016f0e  ; je 0x16f0e
push edx
push ref_0002573a  ; push 0x2573a
push 0x83
push ref_000256cd  ; push 0x256cd
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00016f0e:  ; not directly referenced
and esi, 0xfffffff0
add esi, ebx

loc_00016f13:  ; not directly referenced
cmp ebx, esi
jae short loc_00016f2e  ; jae 0x16f2e
push eax
push eax
push dword [ebp + 0x10]
push ebx
call fcn_00016e24  ; call 0x16e24
add esp, 0x10
test al, al
jne short loc_00016f32  ; jne 0x16f32
add ebx, 0x10
jmp short loc_00016f13  ; jmp 0x16f13

loc_00016f2e:  ; not directly referenced
xor eax, eax
jmp short loc_00016f34  ; jmp 0x16f34

loc_00016f32:  ; not directly referenced
mov eax, ebx

loc_00016f34:  ; not directly referenced
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_00016f3b:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00016f6c  ; je 0x16f6c
test ebx, ebx
jne short loc_00016f6c  ; jne 0x16f6c
test esi, esi
je short loc_00016f6c  ; je 0x16f6c
push edx
push ref_00025762  ; push 0x25762
push 0x31
push ref_0002578a  ; push 0x2578a
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00016f6c:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00016f92  ; je 0x16f92
mov eax, ebx
neg eax
cmp esi, eax
jbe short loc_00016f92  ; jbe 0x16f92
push eax
push ref_0002570f  ; push 0x2570f
push 0x32
push ref_0002578a  ; push 0x2578a
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00016f92:
mov dword [ebp + 0xc], esi
mov dword [ebp + 8], ebx
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near loc_00017158  ; jmp 0x17158

fcn_00016fa3:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov edi, dword [ebp + 0x10]
mov ebx, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
test edi, edi
je loc_00017070  ; je 0x17070
cmp ebx, esi
je loc_00017070  ; je 0x17070
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00016fe7  ; je 0x16fe7
test ebx, ebx
jne short loc_00016fe7  ; jne 0x16fe7
push eax
push ref_000257d0  ; push 0x257d0
push 0x3c
push ref_000257f2  ; push 0x257f2
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00016fe7:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00017009  ; je 0x17009
test esi, esi
jne short loc_00017009  ; jne 0x17009
push ecx
push ref_0002583b  ; push 0x2583b
push 0x3d
push ref_000257f2  ; push 0x257f2
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00017009:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00017032  ; je 0x17032
mov eax, ebx
lea edx, [edi - 1]
not eax
cmp edx, eax
jbe short loc_00017032  ; jbe 0x17032
push edx
push ref_00025858  ; push 0x25858
push 0x3e
push ref_000257f2  ; push 0x257f2
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00017032:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001705b  ; je 0x1705b
mov eax, esi
lea edx, [edi - 1]
not eax
cmp edx, eax
jbe short loc_0001705b  ; jbe 0x1705b
push eax
push ref_00025890  ; push 0x25890
push 0x3f
push ref_000257f2  ; push 0x257f2
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001705b:
mov dword [ebp + 0x10], edi
mov dword [ebp + 0xc], esi
mov dword [ebp + 8], ebx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near loc_00017105  ; jmp 0x17105

loc_00017070:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001707a:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 0x10]
mov ebx, dword [ebp + 8]
mov edi, dword [ebp + 0xc]
test esi, esi
je short loc_000170fb  ; je 0x170fb
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000170b9  ; je 0x170b9
mov eax, ebx
lea edx, [esi - 1]
not eax
cmp edx, eax
jbe short loc_000170b9  ; jbe 0x170b9
push edx
push ref_00025858  ; push 0x25858
push 0x38
push ref_000258c3  ; push 0x258c3
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000170b9:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000170e2  ; je 0x170e2
mov eax, edi
lea edx, [esi - 1]
not eax
cmp edx, eax
jbe short loc_000170e2  ; jbe 0x170e2
push eax
push ref_00025890  ; push 0x25890
push 0x39
push ref_000258c3  ; push 0x258c3
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000170e2:
cmp ebx, edi
je short loc_000170fb  ; je 0x170fb
mov dword [ebp + 0x10], esi
mov dword [ebp + 0xc], edi
mov dword [ebp + 8], ebx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near loc_00017122  ; jmp 0x17122

loc_000170fb:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

loc_00017105:
push esi
push edi
mov esi, dword [esp + 0xc]
mov edi, dword [esp + 0x10]
mov ecx, dword [esp + 0x14]
repe cmpsb  ; repe cmpsb byte [esi], byte ptr es:[edi]
movzx eax, byte [esi - 1]
movzx edx, byte [edi - 1]
sub eax, edx
pop edi
pop esi
ret

loc_00017122:
push esi
push edi
mov esi, dword [esp + 0x10]
mov edi, dword [esp + 0xc]
mov edx, dword [esp + 0x14]
cmp edi, esi
je short loc_00017151  ; je 0x17151
cmp edx, 0
je short loc_00017151  ; je 0x17151
lea eax, [esi + edx - 1]
cmp esi, edi
jae short loc_0001714c  ; jae 0x1714c
cmp eax, edi
jb short loc_0001714c  ; jb 0x1714c
mov esi, eax
lea edi, [edi + edx - 1]
std

loc_0001714c:
mov ecx, edx
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
cld

loc_00017151:
mov eax, dword [esp + 0xc]
pop edi
pop esi
ret

loc_00017158:
push edi
xor eax, eax
mov edi, dword [esp + 8]
mov ecx, dword [esp + 0xc]
mov edx, ecx
shr ecx, 2
and edx, 3
push edi
rep stosd  ; rep stosd dword es:[edi], eax
mov ecx, edx
rep stosb  ; rep stosb byte es:[edi], al
pop eax
pop edi
ret

fcn_00017175:
push ebp
mov ebp, esp
sub esp, 0x10
mov dword [ebp - 4], 0

loc_00017182:
mov eax, dword [ebp - 4]
test eax, eax
je short loc_00017182  ; je 0x17182
leave
ret

fcn_0001718b:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
mov edi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000171c0  ; je 0x171c0
cmp ebx, 0x3f
jbe short loc_000171c0  ; jbe 0x171c0
push eax
push ref_00025909  ; push 0x25909
push 0x27
push ref_00025914  ; push 0x25914
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000171c0:
mov dword [ebp + 0x10], ebx
mov dword [ebp + 8], esi
mov dword [ebp + 0xc], edi
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near loc_000177dc  ; jmp 0x177dc

fcn_000171d5:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push edx
mov ebx, dword [ebp + 8]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000171ff  ; je 0x171ff
test ebx, ebx
jne short loc_000171ff  ; jne 0x171ff
push eax
push ref_000260eb  ; push 0x260eb
push 0x26
push ref_00025949  ; push 0x25949
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000171ff:  ; not directly referenced
mov ax, word [ebx]
mov ebx, dword [ebp - 4]
leave
ret

fcn_00017207:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
mov ebx, dword [ebp + 0xc]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00017234  ; je 0x17234
test esi, esi
jne short loc_00017234  ; jne 0x17234
push eax
push ref_000260eb  ; push 0x260eb
push 0x41
push ref_00025949  ; push 0x25949
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00017234:  ; not directly referenced
mov word [esi], bx
lea esp, [ebp - 8]
mov eax, ebx
pop ebx
pop esi
pop ebp
ret

fcn_00017240:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push edx
mov ebx, dword [ebp + 8]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001726a  ; je 0x1726a
test ebx, ebx
jne short loc_0001726a  ; jne 0x1726a
push eax
push ref_000260eb  ; push 0x260eb
push 0x59
push ref_00025949  ; push 0x25949
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001726a:  ; not directly referenced
mov eax, dword [ebx]
mov ebx, dword [ebp - 4]
leave
and eax, 0xffffff
ret

fcn_00017276:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000172a3  ; je 0x172a3
test ebx, ebx
jne short loc_000172a3  ; jne 0x172a3
push eax
push ref_000260eb  ; push 0x260eb
push 0x74
push ref_00025949  ; push 0x25949
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000172a3:  ; not directly referenced
push esi
push 0x17
push 0
push dword [ebx]
call fcn_0001f920  ; call 0x1f920
mov dword [ebx], eax
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_000172ba:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push edx
mov ebx, dword [ebp + 8]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000172e7  ; je 0x172e7
test ebx, ebx
jne short loc_000172e7  ; jne 0x172e7
push eax
push ref_000260eb  ; push 0x260eb
push 0x8d
push ref_00025949  ; push 0x25949
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000172e7:  ; not directly referenced
mov eax, dword [ebx]
mov ebx, dword [ebp - 4]
leave
ret

fcn_000172ee:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
mov ebx, dword [ebp + 0xc]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001731e  ; je 0x1731e
test esi, esi
jne short loc_0001731e  ; jne 0x1731e
push eax
push ref_000260eb  ; push 0x260eb
push 0xa8
push ref_00025949  ; push 0x25949
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001731e:  ; not directly referenced
mov dword [esi], ebx
lea esp, [ebp - 8]
mov eax, ebx
pop ebx
pop esi
pop ebp
ret

fcn_00017329:
push ebp
mov ebp, esp
push ebx
push edx
mov ebx, dword [ebp + 8]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00017356  ; je 0x17356
test ebx, ebx
jne short loc_00017356  ; jne 0x17356
push eax
push ref_000260eb  ; push 0x260eb
push 0xc0
push ref_00025949  ; push 0x25949
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00017356:
mov eax, dword [ebx]
mov edx, dword [ebx + 4]
mov ebx, dword [ebp - 4]
leave
ret

fcn_00017360:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov eax, dword [ebp + 0xc]
mov edx, dword [ebp + 0x10]
mov ebx, dword [ebp + 8]
mov esi, eax
mov edi, edx
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001739b  ; je 0x1739b
test ebx, ebx
jne short loc_0001739b  ; jne 0x1739b
push eax
push ref_000260eb  ; push 0x260eb
push 0xdb
push ref_00025949  ; push 0x25949
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001739b:
mov dword [ebx], esi
mov eax, esi
mov edx, edi
mov dword [ebx + 4], edi
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000173ac:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
mov edi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000173e0  ; je 0x173e0
test ebx, ebx
jne short loc_000173e0  ; jne 0x173e0
push eax
push ref_0002597e  ; push 0x2597e
push 0x2b
push ref_0002598b  ; push 0x2598b
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000173e0:
mov dword [ebp + 0x10], ebx
mov dword [ebp + 8], esi
mov dword [ebp + 0xc], edi
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near loc_00017493  ; jmp 0x17493

fcn_000173f5:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
mov edi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00017429  ; je 0x17429
test ebx, ebx
jne short loc_00017429  ; jne 0x17429
push eax
push ref_0002597e  ; push 0x2597e
push 0x2b
push ref_000259c0  ; push 0x259c0
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00017429:
mov dword [ebp + 0x10], ebx
mov dword [ebp + 8], esi
mov dword [ebp + 0xc], edi
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near loc_000174a8  ; jmp 0x174a8

fcn_0001743e:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 0x14]
mov esi, dword [ebp + 8]
mov edi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
mov dword [ebp - 0x1c], eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00017478  ; je 0x17478
test ebx, ebx
jne short loc_00017478  ; jne 0x17478
push eax
push ref_0002597e  ; push 0x2597e
push 0x2f
push ref_000259f5  ; push 0x259f5
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00017478:
mov eax, dword [ebp - 0x1c]
mov dword [ebp + 0x10], ebx
mov dword [ebp + 8], esi
mov dword [ebp + 0xc], edi
mov dword [ebp + 0x14], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near loc_000174bd  ; jmp 0x174bd

loc_00017493:
mov eax, dword [esp + 8]
mov ecx, dword [esp + 0xc]
xor edx, edx
div ecx
mov eax, dword [esp + 4]
div ecx
mov eax, edx
ret

loc_000174a8:
mov eax, dword [esp + 8]
mov ecx, dword [esp + 0xc]
xor edx, edx
div ecx
push eax
mov eax, dword [esp + 8]
div ecx
pop edx
ret

loc_000174bd:
mov ecx, dword [esp + 0xc]
mov eax, dword [esp + 8]
xor edx, edx
div ecx
push eax
mov eax, dword [esp + 8]
div ecx
mov ecx, dword [esp + 0x14]
jecxz loc_000174d8  ; jecxz 0x174d8
mov dword [ecx], edx

loc_000174d8:
pop edx
ret

fcn_000174da:
push ebp
mov ebp, esp
pop ebp
ret

fcn_000174df:  ; not directly referenced
push ebp
mov ebp, esp
sti
pop ebp
ret

fcn_000174e5:  ; not directly referenced
push ebp
mov ebp, esp
cli
pop ebp
ret

fcn_000174eb:  ; not directly referenced
push ebp
mov ebp, esp
pause
pop ebp
ret

fcn_000174f2:  ; not directly referenced
push ebp
mov ebp, esp
int3
pop ebp
ret

fcn_000174f8:
push ebp
mov ebp, esp
mov ecx, dword [ebp + 8]
rdmsr
pop ebp
ret

fcn_00017502:
push ebp
mov ebp, esp
mov eax, dword [ebp + 0xc]
mov edx, dword [ebp + 0x10]
mov ecx, dword [ebp + 8]
wrmsr
pop ebp
ret

fcn_00017512:  ; not directly referenced
push ebp
mov ebp, esp
pushfd
pop eax
pop ebp
ret

fcn_00017519:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, cr0
pop ebp
ret

fcn_00017521:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, cr2
pop ebp
ret

fcn_00017529:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, cr3
pop ebp
ret

fcn_00017531:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, cr4
pop ebp
ret

fcn_00017539:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov cr0, eax
pop ebp
ret

fcn_00017544:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov cr2, eax
pop ebp
ret

fcn_0001754f:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov cr3, eax
pop ebp
ret

fcn_0001755a:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov cr4, eax
pop ebp
ret

fcn_00017565:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dr0
pop ebp
ret

fcn_0001756d:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dr1
pop ebp
ret

fcn_00017575:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dr2
pop ebp
ret

fcn_0001757d:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dr3
pop ebp
ret

fcn_00017585:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dr4
pop ebp
ret

fcn_0001758d:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dr5
pop ebp
ret

fcn_00017595:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dr6
pop ebp
ret

fcn_0001759d:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dr7
pop ebp
ret

fcn_000175a5:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov dr0, eax
pop ebp
ret

fcn_000175b0:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov dr1, eax
pop ebp
ret

fcn_000175bb:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov dr2, eax
pop ebp
ret

fcn_000175c6:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov dr3, eax
pop ebp
ret

fcn_000175d1:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov dr4, eax
pop ebp
ret

fcn_000175dc:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov dr5, eax
pop ebp
ret

fcn_000175e7:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov dr6, eax
pop ebp
ret

fcn_000175f2:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov dr7, eax
pop ebp
ret

fcn_000175fd:  ; not directly referenced
push ebp
mov ebp, esp
mov ax, cs
pop ebp
ret

fcn_00017605:  ; not directly referenced
push ebp
mov ebp, esp
mov ax, ds
pop ebp
ret

fcn_0001760d:  ; not directly referenced
push ebp
mov ebp, esp
mov ax, es
pop ebp
ret

fcn_00017615:  ; not directly referenced
push ebp
mov ebp, esp
mov ax, fs
pop ebp
ret

fcn_0001761d:  ; not directly referenced
push ebp
mov ebp, esp
mov ax, gs
pop ebp
ret

fcn_00017625:  ; not directly referenced
push ebp
mov ebp, esp
mov ax, ds
pop ebp
ret

fcn_0001762d:  ; not directly referenced
push ebp
mov ebp, esp
str ax
pop ebp
ret

fcn_00017636:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
sgdt [eax]
pop ebp
ret

fcn_00017641:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
lgdt [eax]
pop ebp
ret

fcn_0001764c:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
sidt [eax]
pop ebp
ret

fcn_00017657:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
lidt [eax]
pop ebp
ret

fcn_00017662:  ; not directly referenced
push ebp
mov ebp, esp
sldt ax
pop ebp
ret

fcn_0001766b:  ; not directly referenced
push ebp
mov ebp, esp
lldt word [ebp + 8]
pop ebp
ret

fcn_00017674:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
fxsave [eax]
pop ebp
ret

fcn_0001767f:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
fxrstor [eax]
pop ebp
ret

fcn_0001768a:  ; not directly referenced
push ebp
mov ebp, esp
push eax
push eax
movq qword [esp], mm0
pop eax
pop edx
pop ebp
ret

fcn_00017697:  ; not directly referenced
push ebp
mov ebp, esp
push eax
push eax
movq qword [esp], mm1
pop eax
pop edx
pop ebp
ret

fcn_000176a4:  ; not directly referenced
push ebp
mov ebp, esp
push eax
push eax
movq qword [esp], mm2
pop eax
pop edx
pop ebp
ret

fcn_000176b1:  ; not directly referenced
push ebp
mov ebp, esp
push eax
push eax
movq qword [esp], mm3
pop eax
pop edx
pop ebp
ret

fcn_000176be:  ; not directly referenced
push ebp
mov ebp, esp
push eax
push eax
movq qword [esp], mm4
pop eax
pop edx
pop ebp
ret

fcn_000176cb:  ; not directly referenced
push ebp
mov ebp, esp
push eax
push eax
movq qword [esp], mm5
pop eax
pop edx
pop ebp
ret

fcn_000176d8:  ; not directly referenced
push ebp
mov ebp, esp
push eax
push eax
movq qword [esp], mm6
pop eax
pop edx
pop ebp
ret

fcn_000176e5:  ; not directly referenced
push ebp
mov ebp, esp
push eax
push eax
movq qword [esp], mm7
pop eax
pop edx
pop ebp
ret

fcn_000176f2:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword [ebp + 8]
mov dword [ebp - 8], eax
mov eax, dword [ebp + 0xc]
mov dword [ebp - 4], eax
movq mm0, qword [ebp - 8]
leave
ret

fcn_0001770a:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword [ebp + 8]
mov dword [ebp - 8], eax
mov eax, dword [ebp + 0xc]
mov dword [ebp - 4], eax
movq mm1, qword [ebp - 8]
leave
ret

fcn_00017722:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword [ebp + 8]
mov dword [ebp - 8], eax
mov eax, dword [ebp + 0xc]
mov dword [ebp - 4], eax
movq mm2, qword [ebp - 8]
leave
ret

fcn_0001773a:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword [ebp + 8]
mov dword [ebp - 8], eax
mov eax, dword [ebp + 0xc]
mov dword [ebp - 4], eax
movq mm3, qword [ebp - 8]
leave
ret

fcn_00017752:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword [ebp + 8]
mov dword [ebp - 8], eax
mov eax, dword [ebp + 0xc]
mov dword [ebp - 4], eax
movq mm4, qword [ebp - 8]
leave
ret

fcn_0001776a:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword [ebp + 8]
mov dword [ebp - 8], eax
mov eax, dword [ebp + 0xc]
mov dword [ebp - 4], eax
movq mm5, qword [ebp - 8]
leave
ret

fcn_00017782:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword [ebp + 8]
mov dword [ebp - 8], eax
mov eax, dword [ebp + 0xc]
mov dword [ebp - 4], eax
movq mm6, qword [ebp - 8]
leave
ret

fcn_0001779a:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword [ebp + 8]
mov dword [ebp - 8], eax
mov eax, dword [ebp + 0xc]
mov dword [ebp - 4], eax
movq mm7, qword [ebp - 8]
leave
ret

fcn_000177b2:  ; not directly referenced
push ebp
mov ebp, esp
rdtsc
pop ebp
ret

fcn_000177b9:  ; not directly referenced
push ebp
mov ebp, esp
mov ecx, dword [ebp + 8]
rdpmc
pop ebp
ret

fcn_000177c3:  ; not directly referenced
push ebp
mov ebp, esp
wbinvd
pop ebp
ret

fcn_000177ca:  ; not directly referenced
push ebp
mov ebp, esp
invd
pop ebp
ret

fcn_000177d1:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
clflush  [eax]
pop ebp
ret

loc_000177dc:
mov cl, byte [esp + 0xc]
xor edx, edx
mov eax, dword [esp + 8]
test cl, 0x20
cmove edx, eax
cmove eax, dword [esp + 4]
shrd eax, edx, cl
shr edx, cl
ret

fcn_000177f7:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x14
push dword [ebp + 8]
call fcn_000174f8  ; call 0x174f8
leave
ret

fcn_00017807:  ; not directly referenced
push ebp
xor edx, edx
mov ebp, esp
sub esp, 0xc
mov eax, dword [ebp + 0xc]
push edx
push eax
push dword [ebp + 8]
call fcn_00017502  ; call 0x17502
leave
ret

fcn_0001781e:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0x10]
push ebx
mov ebx, dword [ebp + 0xc]
sub esp, 0xc
push dword [ebp + 8]
call fcn_000177f7  ; call 0x177f7
add esp, 0x10
mov dword [ebp + 0x10], esi
mov dword [ebp + 0xc], ebx
mov dword [ebp + 8], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_0001f726  ; jmp 0x1f726

fcn_0001784b:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x18
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
push edi
call fcn_000174f8  ; call 0x174f8
add esp, 0x10
mov dword [ebp + 8], edi
or eax, esi
or edx, ebx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017502  ; jmp 0x17502

fcn_0001787f:  ; not directly referenced
push ebp
xor edx, edx
mov ebp, esp
sub esp, 0xc
mov eax, dword [ebp + 0xc]
push edx
push eax
push dword [ebp + 8]
call fcn_0001784b  ; call 0x1784b
leave
ret

fcn_00017896:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x18
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
push edi
call fcn_000174f8  ; call 0x174f8
add esp, 0x10
mov dword [ebp + 8], edi
and eax, esi
and edx, ebx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017502  ; jmp 0x17502

fcn_000178ca:  ; not directly referenced
push ebp
xor edx, edx
mov ebp, esp
sub esp, 0xc
mov eax, dword [ebp + 0xc]
push edx
push eax
push dword [ebp + 8]
call fcn_00017896  ; call 0x17896
leave
ret

fcn_000178e1:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov eax, dword [ebp + 0x14]
mov ecx, dword [ebp + 0x18]
mov edi, dword [ebp + 0xc]
push ebx
mov esi, dword [ebp + 0x10]
mov dword [ebp - 0x1c], eax
mov dword [ebp - 0x20], ecx
call fcn_000174f8  ; call 0x174f8
add esp, 0x10
mov dword [ebp + 8], ebx
and eax, edi
and edx, esi
or eax, dword [ebp - 0x1c]
or edx, dword [ebp - 0x20]
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017502  ; jmp 0x17502

fcn_00017927:  ; not directly referenced
push ebp
xor edx, edx
mov ebp, esp
sub esp, 0x14
mov eax, dword [ebp + 0x10]
push edx
xor edx, edx
push eax
mov eax, dword [ebp + 0xc]
push edx
push eax
push dword [ebp + 8]
call fcn_000178e1  ; call 0x178e1
leave
ret

fcn_00017945:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x14
push dword [ebp + 8]
call fcn_000174f8  ; call 0x174f8
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push edx
push eax
call fcn_0001f98f  ; call 0x1f98f
leave
ret

fcn_00017962:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ecx, dword [ebp + 8]
mov eax, dword [ebp + 0x10]
mov edi, dword [ebp + 0x18]
mov ebx, dword [ebp + 0xc]
push ecx
mov esi, dword [ebp + 0x14]
mov dword [ebp - 0x20], ecx
mov dword [ebp - 0x1c], eax
call fcn_000174f8  ; call 0x174f8
pop ecx
pop ecx
push edi
push esi
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001fcc5  ; call 0x1fcc5
mov ecx, dword [ebp - 0x20]
add esp, 0x20
mov dword [ebp + 8], ecx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017502  ; jmp 0x17502

fcn_000179b0:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 0x10]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000179e1  ; je 0x179e1
cmp ebx, 0x1f
jbe short loc_000179e1  ; jbe 0x179e1
push edx
push ref_00025a33  ; push 0x25a33
push 0xe3
push ref_00025a4f  ; push 0x25a4f
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000179e1:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00017a06  ; je 0x17a06
cmp esi, ebx
jbe short loc_00017a06  ; jbe 0x17a06
push eax
push ref_00025a81  ; push 0x25a81
push 0xe4
push ref_00025a4f  ; push 0x25a4f
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00017a06:  ; not directly referenced
mov eax, dword [ebp + 0x14]
sub esp, 0xc
xor edx, edx
push edx
push eax
push ebx
push esi
push dword [ebp + 8]
call fcn_00017962  ; call 0x17962
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_00017a21:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ecx, dword [ebp + 8]
mov eax, dword [ebp + 0x10]
mov edi, dword [ebp + 0x18]
mov ebx, dword [ebp + 0xc]
push ecx
mov esi, dword [ebp + 0x14]
mov dword [ebp - 0x20], ecx
mov dword [ebp - 0x1c], eax
call fcn_000174f8  ; call 0x174f8
pop ecx
pop ecx
push edi
push esi
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001fa1e  ; call 0x1fa1e
mov ecx, dword [ebp - 0x20]
add esp, 0x20
mov dword [ebp + 8], ecx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017502  ; jmp 0x17502

fcn_00017a6f:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 0x10]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00017aa0  ; je 0x17aa0
cmp ebx, 0x1f
jbe short loc_00017aa0  ; jbe 0x17aa0
push edx
push ref_00025a94  ; push 0x25a94
push 0x10c
push ref_00025a4f  ; push 0x25a4f
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00017aa0:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00017ac5  ; je 0x17ac5
cmp esi, ebx
jbe short loc_00017ac5  ; jbe 0x17ac5
push eax
push ref_00025a81  ; push 0x25a81
push 0x10d
push ref_00025a4f  ; push 0x25a4f
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00017ac5:  ; not directly referenced
mov eax, dword [ebp + 0x14]
sub esp, 0xc
xor edx, edx
push edx
push eax
push ebx
push esi
push dword [ebp + 8]
call fcn_00017a21  ; call 0x17a21
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_00017ae0:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ecx, dword [ebp + 8]
mov eax, dword [ebp + 0x10]
mov edi, dword [ebp + 0x18]
mov ebx, dword [ebp + 0xc]
push ecx
mov esi, dword [ebp + 0x14]
mov dword [ebp - 0x20], ecx
mov dword [ebp - 0x1c], eax
call fcn_000174f8  ; call 0x174f8
pop ecx
pop ecx
push edi
push esi
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001fb10  ; call 0x1fb10
mov ecx, dword [ebp - 0x20]
add esp, 0x20
mov dword [ebp + 8], ecx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017502  ; jmp 0x17502

fcn_00017b2e:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 0x10]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00017b5f  ; je 0x17b5f
cmp ebx, 0x1f
jbe short loc_00017b5f  ; jbe 0x17b5f
push edx
push ref_00025ab1  ; push 0x25ab1
push 0x135
push ref_00025a4f  ; push 0x25a4f
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00017b5f:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00017b84  ; je 0x17b84
cmp esi, ebx
jbe short loc_00017b84  ; jbe 0x17b84
push eax
push ref_00025a81  ; push 0x25a81
push 0x136
push ref_00025a4f  ; push 0x25a4f
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00017b84:  ; not directly referenced
mov eax, dword [ebp + 0x14]
sub esp, 0xc
xor edx, edx
push edx
push eax
push ebx
push esi
push dword [ebp + 8]
call fcn_00017ae0  ; call 0x17ae0
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_00017b9f:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov eax, dword [ebp + 0x10]
mov ecx, dword [ebp + 8]
mov edi, dword [ebp + 0x20]
mov edx, dword [ebp + 0x18]
mov dword [ebp - 0x1c], eax
mov eax, dword [ebp + 0x14]
mov esi, dword [ebp + 0x1c]
push ecx
mov ebx, dword [ebp + 0xc]
mov dword [ebp - 0x20], ecx
mov dword [ebp - 0x28], eax
mov dword [ebp - 0x24], edx
call fcn_000174f8  ; call 0x174f8
push edi
push esi
push dword [ebp - 0x24]
push dword [ebp - 0x28]
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001fc0e  ; call 0x1fc0e
mov ecx, dword [ebp - 0x20]
add esp, 0x30
mov dword [ebp + 8], ecx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017502  ; jmp 0x17502

fcn_00017bfd:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 0x10]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00017c2e  ; je 0x17c2e
cmp ebx, 0x1f
jbe short loc_00017c2e  ; jbe 0x17c2e
push ecx
push ref_00025ab1  ; push 0x25ab1
push 0x163
push ref_00025a4f  ; push 0x25a4f
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00017c2e:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00017c53  ; je 0x17c53
cmp esi, ebx
jbe short loc_00017c53  ; jbe 0x17c53
push edx
push ref_00025a81  ; push 0x25a81
push 0x164
push ref_00025a4f  ; push 0x25a4f
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00017c53:  ; not directly referenced
push eax
mov eax, dword [ebp + 0x18]
xor edx, edx
push edx
xor edx, edx
push eax
mov eax, dword [ebp + 0x14]
push edx
push eax
push ebx
push esi
push dword [ebp + 8]
call fcn_00017b9f  ; call 0x17b9f
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_00017c73:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00017c97  ; je 0x17c97
push eax
push ref_000221f1  ; push 0x221f1
push 0x26
push ref_00025acf  ; push 0x25acf
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00017c97:  ; not directly referenced
xor eax, eax
xor edx, edx
leave
ret

fcn_00017c9d:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00017cc1  ; je 0x17cc1
push eax
push ref_000221f1  ; push 0x221f1
push 0x41
push ref_00025acf  ; push 0x25acf
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00017cc1:  ; not directly referenced
xor eax, eax
xor edx, edx
leave
ret

fcn_00017cc7:
push ebp
mov ebp, esp
push ebx
push eax
call fcn_000174da  ; call 0x174da
mov eax, dword [ebp + 8]
mov bl, byte [eax]
call fcn_000174da  ; call 0x174da
pop edx
mov al, bl
pop ebx
pop ebp
ret

fcn_00017ce1:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 0xc]
call fcn_000174da  ; call 0x174da
mov eax, dword [ebp + 8]
mov byte [eax], bl
call fcn_000174da  ; call 0x174da
mov al, bl
pop edx
pop ebx
pop ebp
ret

fcn_00017cfe:
push ebp
mov ebp, esp
push ebx
push edx
mov ebx, dword [ebp + 8]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00017d2c  ; je 0x17d2c
test bl, 1
je short loc_00017d2c  ; je 0x17d2c
push eax
push ref_00025b0b  ; push 0x25b0b
push 0x97
push ref_00025acf  ; push 0x25acf
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00017d2c:
call fcn_000174da  ; call 0x174da
mov bx, word [ebx]
call fcn_000174da  ; call 0x174da
mov eax, ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_00017d40:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
mov ebx, dword [ebp + 0xc]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00017d74  ; je 0x17d74
test esi, 1
je short loc_00017d74  ; je 0x17d74
push eax
push ref_00025b0b  ; push 0x25b0b
push 0xb7
push ref_00025acf  ; push 0x25acf
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00017d74:
call fcn_000174da  ; call 0x174da
mov word [esi], bx
call fcn_000174da  ; call 0x174da
lea esp, [ebp - 8]
mov eax, ebx
pop ebx
pop esi
pop ebp
ret

fcn_00017d8a:
push ebp
mov ebp, esp
push ebx
push edx
mov ebx, dword [ebp + 8]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00017db8  ; je 0x17db8
test bl, 3
je short loc_00017db8  ; je 0x17db8
push eax
push ref_00025b1e  ; push 0x25b1e
push 0xd7
push ref_00025acf  ; push 0x25acf
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00017db8:
call fcn_000174da  ; call 0x174da
mov ebx, dword [ebx]
call fcn_000174da  ; call 0x174da
mov eax, ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_00017dcb:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
mov ebx, dword [ebp + 0xc]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00017dff  ; je 0x17dff
test esi, 3
je short loc_00017dff  ; je 0x17dff
push eax
push ref_00025b1e  ; push 0x25b1e
push 0xf7
push ref_00025acf  ; push 0x25acf
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00017dff:
call fcn_000174da  ; call 0x174da
mov dword [esi], ebx
call fcn_000174da  ; call 0x174da
lea esp, [ebp - 8]
mov eax, ebx
pop ebx
pop esi
pop ebp
ret

fcn_00017e14:
push ebp
mov ebp, esp
push ebx
sub esp, 0x14
mov ebx, dword [ebp + 8]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00017e44  ; je 0x17e44
test bl, 7
je short loc_00017e44  ; je 0x17e44
push eax
push ref_00025b31  ; push 0x25b31
push 0x117
push ref_00025acf  ; push 0x25acf
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00017e44:
call fcn_000174da  ; call 0x174da
mov eax, dword [ebx]
mov edx, dword [ebx + 4]
mov dword [ebp - 0x10], eax
mov dword [ebp - 0xc], edx
call fcn_000174da  ; call 0x174da
mov eax, dword [ebp - 0x10]
mov edx, dword [ebp - 0xc]
mov ebx, dword [ebp - 4]
leave
ret

fcn_00017e64:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov eax, dword [ebp + 0xc]
mov edx, dword [ebp + 0x10]
mov ebx, dword [ebp + 8]
mov esi, eax
mov edi, edx
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00017ea0  ; je 0x17ea0
test bl, 7
je short loc_00017ea0  ; je 0x17ea0
push eax
push ref_00025b31  ; push 0x25b31
push 0x135
push ref_00025acf  ; push 0x25acf
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00017ea0:
call fcn_000174da  ; call 0x174da
mov dword [ebx], esi
mov dword [ebx + 4], edi
call fcn_000174da  ; call 0x174da
lea esp, [ebp - 0xc]
mov eax, esi
pop ebx
mov edx, edi
pop esi
pop edi
pop ebp
ret

fcn_00017ebb:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00018e1d  ; call 0x18e1d
add esp, 0x10
mov dword [ebp + 8], ebx
or eax, esi
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00018e26  ; jmp 0x18e26

fcn_00017ee8:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00018e1d  ; call 0x18e1d
add esp, 0x10
mov dword [ebp + 8], ebx
and eax, esi
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00018e26  ; jmp 0x18e26

fcn_00017f15:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x18
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
push edi
call fcn_00018e1d  ; call 0x18e1d
add esp, 0x10
mov dword [ebp + 8], edi
and eax, esi
or eax, ebx
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018e26  ; jmp 0x18e26

fcn_00017f49:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0x10]
push ebx
mov ebx, dword [ebp + 0xc]
sub esp, 0xc
push dword [ebp + 8]
call fcn_00018e1d  ; call 0x18e1d
add esp, 0x10
mov dword [ebp + 0x10], esi
mov dword [ebp + 0xc], ebx
movzx eax, al
mov dword [ebp + 8], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_0001f228  ; jmp 0x1f228

fcn_00017f79:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0x10]
mov esi, dword [ebp + 0x14]
mov edi, dword [ebp + 0xc]
push ebx
mov dword [ebp - 0x1c], edx
call fcn_00018e1d  ; call 0x18e1d
mov edx, dword [ebp - 0x1c]
mov ecx, esi
movzx esi, cl
push esi
push edx
push edi
movzx eax, al
push eax
call fcn_0001f42e  ; call 0x1f42e
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018e26  ; jmp 0x18e26

fcn_00017fc3:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0x10]
mov esi, dword [ebp + 0x14]
mov edi, dword [ebp + 0xc]
push ebx
mov dword [ebp - 0x1c], edx
call fcn_00018e1d  ; call 0x18e1d
mov edx, dword [ebp - 0x1c]
mov ecx, esi
movzx esi, cl
push esi
push edx
push edi
movzx eax, al
push eax
call fcn_0001f29b  ; call 0x1f29b
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018e26  ; jmp 0x18e26

fcn_0001800d:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0x10]
mov esi, dword [ebp + 0x14]
mov edi, dword [ebp + 0xc]
push ebx
mov dword [ebp - 0x1c], edx
call fcn_00018e1d  ; call 0x18e1d
mov edx, dword [ebp - 0x1c]
mov ecx, esi
movzx esi, cl
push esi
push edx
push edi
movzx eax, al
push eax
call fcn_0001f316  ; call 0x1f316
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018e26  ; jmp 0x18e26

fcn_00018057:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0xc]
mov ecx, dword [ebp + 0x10]
mov esi, dword [ebp + 0x14]
mov edi, dword [ebp + 0x18]
push ebx
mov dword [ebp - 0x20], edx
mov dword [ebp - 0x1c], ecx
call fcn_00018e1d  ; call 0x18e1d
mov ecx, esi
mov edx, edi
movzx esi, cl
mov ecx, dword [ebp - 0x1c]
movzx edi, dl
mov edx, dword [ebp - 0x20]
mov dword [esp], edi
push esi
push ecx
push edx
movzx eax, al
push eax
call fcn_0001f391  ; call 0x1f391
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018e26  ; jmp 0x18e26

fcn_000180b2:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00018e32  ; call 0x18e32
add esp, 0x10
mov dword [ebp + 8], ebx
or eax, esi
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00018e63  ; jmp 0x18e63

fcn_000180df:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00018e32  ; call 0x18e32
add esp, 0x10
mov dword [ebp + 8], ebx
and eax, esi
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00018e63  ; jmp 0x18e63

fcn_0001810c:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x18
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
push edi
call fcn_00018e32  ; call 0x18e32
add esp, 0x10
mov dword [ebp + 8], edi
and eax, esi
or eax, ebx
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018e63  ; jmp 0x18e63

fcn_00018140:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0x10]
push ebx
mov ebx, dword [ebp + 0xc]
sub esp, 0xc
push dword [ebp + 8]
call fcn_00018e32  ; call 0x18e32
add esp, 0x10
mov dword [ebp + 0x10], esi
mov dword [ebp + 0xc], ebx
movzx eax, ax
mov dword [ebp + 8], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_0001f4ae  ; jmp 0x1f4ae

fcn_00018170:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0x10]
mov esi, dword [ebp + 0x14]
mov edi, dword [ebp + 0xc]
push ebx
mov dword [ebp - 0x1c], edx
movzx esi, si
call fcn_00018e32  ; call 0x18e32
mov edx, dword [ebp - 0x1c]
push esi
push edx
push edi
movzx eax, ax
push eax
call fcn_0001f6aa  ; call 0x1f6aa
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018e63  ; jmp 0x18e63

fcn_000181b8:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0x10]
mov esi, dword [ebp + 0x14]
mov edi, dword [ebp + 0xc]
push ebx
mov dword [ebp - 0x1c], edx
movzx esi, si
call fcn_00018e32  ; call 0x18e32
mov edx, dword [ebp - 0x1c]
push esi
push edx
push edi
movzx eax, ax
push eax
call fcn_0001f521  ; call 0x1f521
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018e63  ; jmp 0x18e63

fcn_00018200:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0x10]
mov esi, dword [ebp + 0x14]
mov edi, dword [ebp + 0xc]
push ebx
mov dword [ebp - 0x1c], edx
movzx esi, si
call fcn_00018e32  ; call 0x18e32
mov edx, dword [ebp - 0x1c]
push esi
push edx
push edi
movzx eax, ax
push eax
call fcn_0001f598  ; call 0x1f598
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018e63  ; jmp 0x18e63

fcn_00018248:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0xc]
mov ecx, dword [ebp + 0x10]
mov esi, dword [ebp + 0x14]
push ebx
mov edi, dword [ebp + 0x18]
mov dword [ebp - 0x20], edx
mov dword [ebp - 0x1c], ecx
movzx esi, si
call fcn_00018e32  ; call 0x18e32
mov ecx, dword [ebp - 0x1c]
movzx edi, di
mov edx, dword [ebp - 0x20]
mov dword [esp], edi
push esi
push ecx
push edx
movzx eax, ax
push eax
call fcn_0001f60f  ; call 0x1f60f
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018e63  ; jmp 0x18e63

fcn_0001829f:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00018ea0  ; call 0x18ea0
add esp, 0x10
mov dword [ebp + 8], ebx
or eax, esi
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00018ed3  ; jmp 0x18ed3

fcn_000182c9:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00018ea0  ; call 0x18ea0
add esp, 0x10
mov dword [ebp + 8], ebx
and eax, esi
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00018ed3  ; jmp 0x18ed3

fcn_000182f3:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x18
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
push edi
call fcn_00018ea0  ; call 0x18ea0
add esp, 0x10
mov dword [ebp + 8], edi
and eax, esi
or eax, ebx
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018ed3  ; jmp 0x18ed3

fcn_00018324:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0x10]
push ebx
mov ebx, dword [ebp + 0xc]
sub esp, 0xc
push dword [ebp + 8]
call fcn_00018ea0  ; call 0x18ea0
add esp, 0x10
mov dword [ebp + 0x10], esi
mov dword [ebp + 0xc], ebx
mov dword [ebp + 8], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_0001f726  ; jmp 0x1f726

fcn_00018351:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0x14]
mov esi, dword [ebp + 0xc]
mov edi, dword [ebp + 0x10]
push ebx
mov dword [ebp - 0x1c], edx
call fcn_00018ea0  ; call 0x18ea0
mov edx, dword [ebp - 0x1c]
push edx
push edi
push esi
push eax
call fcn_0001f920  ; call 0x1f920
add esp, 0x20
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018ed3  ; jmp 0x18ed3

fcn_00018390:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0x14]
mov esi, dword [ebp + 0xc]
mov edi, dword [ebp + 0x10]
push ebx
mov dword [ebp - 0x1c], edx
call fcn_00018ea0  ; call 0x18ea0
mov edx, dword [ebp - 0x1c]
push edx
push edi
push esi
push eax
call fcn_0001f792  ; call 0x1f792
add esp, 0x20
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018ed3  ; jmp 0x18ed3

fcn_000183cf:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0x14]
mov esi, dword [ebp + 0xc]
mov edi, dword [ebp + 0x10]
push ebx
mov dword [ebp - 0x1c], edx
call fcn_00018ea0  ; call 0x18ea0
mov edx, dword [ebp - 0x1c]
push edx
push edi
push esi
push eax
call fcn_0001f810  ; call 0x1f810
add esp, 0x20
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018ed3  ; jmp 0x18ed3

fcn_0001840e:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0x14]
mov ecx, dword [ebp + 0x18]
mov esi, dword [ebp + 0xc]
push ebx
mov edi, dword [ebp + 0x10]
mov dword [ebp - 0x20], edx
mov dword [ebp - 0x1c], ecx
call fcn_00018ea0  ; call 0x18ea0
mov ecx, dword [ebp - 0x1c]
mov edx, dword [ebp - 0x20]
mov dword [esp], ecx
push edx
push edi
push esi
push eax
call fcn_0001f88e  ; call 0x1f88e
add esp, 0x20
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018ed3  ; jmp 0x18ed3

fcn_00018459:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x18
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
push edi
call fcn_00017c73  ; call 0x17c73
add esp, 0x10
mov dword [ebp + 8], edi
or eax, esi
or edx, ebx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017c9d  ; jmp 0x17c9d

fcn_0001848d:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x18
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
push edi
call fcn_00017c73  ; call 0x17c73
add esp, 0x10
mov dword [ebp + 8], edi
and eax, esi
and edx, ebx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017c9d  ; jmp 0x17c9d

fcn_000184c1:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov eax, dword [ebp + 0x14]
mov ecx, dword [ebp + 0x18]
mov edi, dword [ebp + 0xc]
push ebx
mov esi, dword [ebp + 0x10]
mov dword [ebp - 0x1c], eax
mov dword [ebp - 0x20], ecx
call fcn_00017c73  ; call 0x17c73
add esp, 0x10
mov dword [ebp + 8], ebx
and eax, edi
and edx, esi
or eax, dword [ebp - 0x1c]
or edx, dword [ebp - 0x20]
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017c9d  ; jmp 0x17c9d

fcn_00018507:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x14
push dword [ebp + 8]
call fcn_00017c73  ; call 0x17c73
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push edx
push eax
call fcn_0001f98f  ; call 0x1f98f
leave
ret

fcn_00018524:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ecx, dword [ebp + 8]
mov eax, dword [ebp + 0x10]
mov edi, dword [ebp + 0x18]
mov ebx, dword [ebp + 0xc]
push ecx
mov esi, dword [ebp + 0x14]
mov dword [ebp - 0x20], ecx
mov dword [ebp - 0x1c], eax
call fcn_00017c73  ; call 0x17c73
pop ecx
pop ecx
push edi
push esi
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001fcc5  ; call 0x1fcc5
mov ecx, dword [ebp - 0x20]
add esp, 0x20
mov dword [ebp + 8], ecx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017c9d  ; jmp 0x17c9d

fcn_00018572:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ecx, dword [ebp + 8]
mov eax, dword [ebp + 0x10]
mov edi, dword [ebp + 0x18]
mov ebx, dword [ebp + 0xc]
push ecx
mov esi, dword [ebp + 0x14]
mov dword [ebp - 0x20], ecx
mov dword [ebp - 0x1c], eax
call fcn_00017c73  ; call 0x17c73
pop ecx
pop ecx
push edi
push esi
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001fa1e  ; call 0x1fa1e
mov ecx, dword [ebp - 0x20]
add esp, 0x20
mov dword [ebp + 8], ecx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017c9d  ; jmp 0x17c9d

fcn_000185c0:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ecx, dword [ebp + 8]
mov eax, dword [ebp + 0x10]
mov edi, dword [ebp + 0x18]
mov ebx, dword [ebp + 0xc]
push ecx
mov esi, dword [ebp + 0x14]
mov dword [ebp - 0x20], ecx
mov dword [ebp - 0x1c], eax
call fcn_00017c73  ; call 0x17c73
pop ecx
pop ecx
push edi
push esi
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001fb10  ; call 0x1fb10
mov ecx, dword [ebp - 0x20]
add esp, 0x20
mov dword [ebp + 8], ecx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017c9d  ; jmp 0x17c9d

fcn_0001860e:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov eax, dword [ebp + 0x10]
mov ecx, dword [ebp + 8]
mov edi, dword [ebp + 0x20]
mov edx, dword [ebp + 0x18]
mov dword [ebp - 0x1c], eax
mov eax, dword [ebp + 0x14]
mov esi, dword [ebp + 0x1c]
push ecx
mov ebx, dword [ebp + 0xc]
mov dword [ebp - 0x20], ecx
mov dword [ebp - 0x28], eax
mov dword [ebp - 0x24], edx
call fcn_00017c73  ; call 0x17c73
push edi
push esi
push dword [ebp - 0x24]
push dword [ebp - 0x28]
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001fc0e  ; call 0x1fc0e
mov ecx, dword [ebp - 0x20]
add esp, 0x30
mov dword [ebp + 8], ecx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017c9d  ; jmp 0x17c9d

fcn_0001866c:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
mov dword [ebp + 8], ebx
or eax, esi
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00017ce1  ; jmp 0x17ce1

fcn_00018699:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
mov dword [ebp + 8], ebx
and eax, esi
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00017ce1  ; jmp 0x17ce1

fcn_000186c6:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x18
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
push edi
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
mov dword [ebp + 8], edi
and eax, esi
or eax, ebx
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017ce1  ; jmp 0x17ce1

fcn_000186fa:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0x10]
push ebx
mov ebx, dword [ebp + 0xc]
sub esp, 0xc
push dword [ebp + 8]
call fcn_00017cc7  ; call 0x17cc7
add esp, 0x10
mov dword [ebp + 0x10], esi
mov dword [ebp + 0xc], ebx
movzx eax, al
mov dword [ebp + 8], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_0001f228  ; jmp 0x1f228

fcn_0001872a:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0x10]
mov esi, dword [ebp + 0x14]
mov edi, dword [ebp + 0xc]
push ebx
mov dword [ebp - 0x1c], edx
call fcn_00017cc7  ; call 0x17cc7
mov edx, dword [ebp - 0x1c]
mov ecx, esi
movzx esi, cl
push esi
push edx
push edi
movzx eax, al
push eax
call fcn_0001f42e  ; call 0x1f42e
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017ce1  ; jmp 0x17ce1

fcn_00018774:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0x10]
mov esi, dword [ebp + 0x14]
mov edi, dword [ebp + 0xc]
push ebx
mov dword [ebp - 0x1c], edx
call fcn_00017cc7  ; call 0x17cc7
mov edx, dword [ebp - 0x1c]
mov ecx, esi
movzx esi, cl
push esi
push edx
push edi
movzx eax, al
push eax
call fcn_0001f29b  ; call 0x1f29b
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017ce1  ; jmp 0x17ce1

fcn_000187be:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0x10]
mov esi, dword [ebp + 0x14]
mov edi, dword [ebp + 0xc]
push ebx
mov dword [ebp - 0x1c], edx
call fcn_00017cc7  ; call 0x17cc7
mov edx, dword [ebp - 0x1c]
mov ecx, esi
movzx esi, cl
push esi
push edx
push edi
movzx eax, al
push eax
call fcn_0001f316  ; call 0x1f316
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017ce1  ; jmp 0x17ce1

fcn_00018808:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0xc]
mov ecx, dword [ebp + 0x10]
mov esi, dword [ebp + 0x14]
mov edi, dword [ebp + 0x18]
push ebx
mov dword [ebp - 0x20], edx
mov dword [ebp - 0x1c], ecx
call fcn_00017cc7  ; call 0x17cc7
mov ecx, esi
mov edx, edi
movzx esi, cl
mov ecx, dword [ebp - 0x1c]
movzx edi, dl
mov edx, dword [ebp - 0x20]
mov dword [esp], edi
push esi
push ecx
push edx
movzx eax, al
push eax
call fcn_0001f391  ; call 0x1f391
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017ce1  ; jmp 0x17ce1

fcn_00018863:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
mov dword [ebp + 8], ebx
or eax, esi
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00017d40  ; jmp 0x17d40

fcn_00018890:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
mov dword [ebp + 8], ebx
and eax, esi
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00017d40  ; jmp 0x17d40

fcn_000188bd:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x18
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
push edi
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
mov dword [ebp + 8], edi
and eax, esi
or eax, ebx
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017d40  ; jmp 0x17d40

fcn_000188f1:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0x10]
push ebx
mov ebx, dword [ebp + 0xc]
sub esp, 0xc
push dword [ebp + 8]
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
mov dword [ebp + 0x10], esi
mov dword [ebp + 0xc], ebx
movzx eax, ax
mov dword [ebp + 8], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_0001f4ae  ; jmp 0x1f4ae

fcn_00018921:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0x10]
mov esi, dword [ebp + 0x14]
mov edi, dword [ebp + 0xc]
push ebx
mov dword [ebp - 0x1c], edx
movzx esi, si
call fcn_00017cfe  ; call 0x17cfe
mov edx, dword [ebp - 0x1c]
push esi
push edx
push edi
movzx eax, ax
push eax
call fcn_0001f6aa  ; call 0x1f6aa
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017d40  ; jmp 0x17d40

fcn_00018969:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0x10]
mov esi, dword [ebp + 0x14]
mov edi, dword [ebp + 0xc]
push ebx
mov dword [ebp - 0x1c], edx
movzx esi, si
call fcn_00017cfe  ; call 0x17cfe
mov edx, dword [ebp - 0x1c]
push esi
push edx
push edi
movzx eax, ax
push eax
call fcn_0001f521  ; call 0x1f521
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017d40  ; jmp 0x17d40

fcn_000189b1:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0x10]
mov esi, dword [ebp + 0x14]
mov edi, dword [ebp + 0xc]
push ebx
mov dword [ebp - 0x1c], edx
movzx esi, si
call fcn_00017cfe  ; call 0x17cfe
mov edx, dword [ebp - 0x1c]
push esi
push edx
push edi
movzx eax, ax
push eax
call fcn_0001f598  ; call 0x1f598
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017d40  ; jmp 0x17d40

fcn_000189f9:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0xc]
mov ecx, dword [ebp + 0x10]
mov esi, dword [ebp + 0x14]
push ebx
mov edi, dword [ebp + 0x18]
mov dword [ebp - 0x20], edx
mov dword [ebp - 0x1c], ecx
movzx esi, si
call fcn_00017cfe  ; call 0x17cfe
mov ecx, dword [ebp - 0x1c]
movzx edi, di
mov edx, dword [ebp - 0x20]
mov dword [esp], edi
push esi
push ecx
push edx
movzx eax, ax
push eax
call fcn_0001f60f  ; call 0x1f60f
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017d40  ; jmp 0x17d40

fcn_00018a50:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
mov dword [ebp + 8], ebx
or eax, esi
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00017dcb  ; jmp 0x17dcb

fcn_00018a7a:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
mov dword [ebp + 8], ebx
and eax, esi
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00017dcb  ; jmp 0x17dcb

fcn_00018aa4:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x18
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
push edi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
mov dword [ebp + 8], edi
and eax, esi
or eax, ebx
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017dcb  ; jmp 0x17dcb

fcn_00018ad5:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0x10]
push ebx
mov ebx, dword [ebp + 0xc]
sub esp, 0xc
push dword [ebp + 8]
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
mov dword [ebp + 0x10], esi
mov dword [ebp + 0xc], ebx
mov dword [ebp + 8], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_0001f726  ; jmp 0x1f726

fcn_00018b02:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0x14]
mov esi, dword [ebp + 0xc]
mov edi, dword [ebp + 0x10]
push ebx
mov dword [ebp - 0x1c], edx
call fcn_00017d8a  ; call 0x17d8a
mov edx, dword [ebp - 0x1c]
push edx
push edi
push esi
push eax
call fcn_0001f920  ; call 0x1f920
add esp, 0x20
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017dcb  ; jmp 0x17dcb

fcn_00018b41:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0x14]
mov esi, dword [ebp + 0xc]
mov edi, dword [ebp + 0x10]
push ebx
mov dword [ebp - 0x1c], edx
call fcn_00017d8a  ; call 0x17d8a
mov edx, dword [ebp - 0x1c]
push edx
push edi
push esi
push eax
call fcn_0001f792  ; call 0x1f792
add esp, 0x20
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017dcb  ; jmp 0x17dcb

fcn_00018b80:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0x14]
mov esi, dword [ebp + 0xc]
mov edi, dword [ebp + 0x10]
push ebx
mov dword [ebp - 0x1c], edx
call fcn_00017d8a  ; call 0x17d8a
mov edx, dword [ebp - 0x1c]
push edx
push edi
push esi
push eax
call fcn_0001f810  ; call 0x1f810
add esp, 0x20
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017dcb  ; jmp 0x17dcb

fcn_00018bbf:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov edx, dword [ebp + 0x14]
mov ecx, dword [ebp + 0x18]
mov esi, dword [ebp + 0xc]
push ebx
mov edi, dword [ebp + 0x10]
mov dword [ebp - 0x20], edx
mov dword [ebp - 0x1c], ecx
call fcn_00017d8a  ; call 0x17d8a
mov ecx, dword [ebp - 0x1c]
mov edx, dword [ebp - 0x20]
mov dword [esp], ecx
push edx
push edi
push esi
push eax
call fcn_0001f88e  ; call 0x1f88e
add esp, 0x20
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017dcb  ; jmp 0x17dcb

fcn_00018c0a:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x18
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
push edi
call fcn_00017e14  ; call 0x17e14
add esp, 0x10
mov dword [ebp + 8], edi
or eax, esi
or edx, ebx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017e64  ; jmp 0x17e64

fcn_00018c3e:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x18
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
push edi
call fcn_00017e14  ; call 0x17e14
add esp, 0x10
mov dword [ebp + 8], edi
and eax, esi
and edx, ebx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017e64  ; jmp 0x17e64

fcn_00018c72:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ebx, dword [ebp + 8]
mov eax, dword [ebp + 0x14]
mov ecx, dword [ebp + 0x18]
mov edi, dword [ebp + 0xc]
push ebx
mov esi, dword [ebp + 0x10]
mov dword [ebp - 0x1c], eax
mov dword [ebp - 0x20], ecx
call fcn_00017e14  ; call 0x17e14
add esp, 0x10
mov dword [ebp + 8], ebx
and eax, edi
and edx, esi
or eax, dword [ebp - 0x1c]
or edx, dword [ebp - 0x20]
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017e64  ; jmp 0x17e64

fcn_00018cb8:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x14
push dword [ebp + 8]
call fcn_00017e14  ; call 0x17e14
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push edx
push eax
call fcn_0001f98f  ; call 0x1f98f
leave
ret

fcn_00018cd5:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ecx, dword [ebp + 8]
mov eax, dword [ebp + 0x10]
mov edi, dword [ebp + 0x18]
mov ebx, dword [ebp + 0xc]
push ecx
mov esi, dword [ebp + 0x14]
mov dword [ebp - 0x20], ecx
mov dword [ebp - 0x1c], eax
call fcn_00017e14  ; call 0x17e14
pop ecx
pop ecx
push edi
push esi
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001fcc5  ; call 0x1fcc5
mov ecx, dword [ebp - 0x20]
add esp, 0x20
mov dword [ebp + 8], ecx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017e64  ; jmp 0x17e64

fcn_00018d23:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ecx, dword [ebp + 8]
mov eax, dword [ebp + 0x10]
mov edi, dword [ebp + 0x18]
mov ebx, dword [ebp + 0xc]
push ecx
mov esi, dword [ebp + 0x14]
mov dword [ebp - 0x20], ecx
mov dword [ebp - 0x1c], eax
call fcn_00017e14  ; call 0x17e14
pop ecx
pop ecx
push edi
push esi
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001fa1e  ; call 0x1fa1e
mov ecx, dword [ebp - 0x20]
add esp, 0x20
mov dword [ebp + 8], ecx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017e64  ; jmp 0x17e64

fcn_00018d71:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov ecx, dword [ebp + 8]
mov eax, dword [ebp + 0x10]
mov edi, dword [ebp + 0x18]
mov ebx, dword [ebp + 0xc]
push ecx
mov esi, dword [ebp + 0x14]
mov dword [ebp - 0x20], ecx
mov dword [ebp - 0x1c], eax
call fcn_00017e14  ; call 0x17e14
pop ecx
pop ecx
push edi
push esi
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001fb10  ; call 0x1fb10
mov ecx, dword [ebp - 0x20]
add esp, 0x20
mov dword [ebp + 8], ecx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017e64  ; jmp 0x17e64

fcn_00018dbf:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov eax, dword [ebp + 0x10]
mov ecx, dword [ebp + 8]
mov edi, dword [ebp + 0x20]
mov edx, dword [ebp + 0x18]
mov dword [ebp - 0x1c], eax
mov eax, dword [ebp + 0x14]
mov esi, dword [ebp + 0x1c]
push ecx
mov ebx, dword [ebp + 0xc]
mov dword [ebp - 0x20], ecx
mov dword [ebp - 0x28], eax
mov dword [ebp - 0x24], edx
call fcn_00017e14  ; call 0x17e14
push edi
push esi
push dword [ebp - 0x24]
push dword [ebp - 0x28]
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001fc0e  ; call 0x1fc0e
mov ecx, dword [ebp - 0x20]
add esp, 0x30
mov dword [ebp + 8], ecx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017e64  ; jmp 0x17e64

fcn_00018e1d:
push ebp
mov ebp, esp
mov edx, dword [ebp + 8]
in al, dx
pop ebp
ret

fcn_00018e26:
push ebp
mov ebp, esp
mov eax, dword [ebp + 0xc]
mov edx, dword [ebp + 8]
out dx, al
pop ebp
ret

fcn_00018e32:
push ebp
mov ebp, esp
sub esp, 8
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00018e5c  ; je 0x18e5c
test byte [ebp + 8], 1
je short loc_00018e5c  ; je 0x18e5c
push eax
push ref_00025b44  ; push 0x25b44
push 0x69
push ref_00025b54  ; push 0x25b54
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00018e5c:
mov edx, dword [ebp + 8]
in ax, dx
leave
ret

fcn_00018e63:
push ebp
mov ebp, esp
push ebx
push edx
mov ebx, dword [ebp + 0xc]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00018e92  ; je 0x18e92
test byte [ebp + 8], 1
je short loc_00018e92  ; je 0x18e92
push eax
push ref_00025b44  ; push 0x25b44
push 0x86
push ref_00025b54  ; push 0x25b54
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00018e92:
mov eax, ebx
mov edx, dword [ebp + 8]
out dx, ax
mov eax, ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_00018ea0:
push ebp
mov ebp, esp
sub esp, 8
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00018ecd  ; je 0x18ecd
test byte [ebp + 8], 3
je short loc_00018ecd  ; je 0x18ecd
push eax
push ref_00025b93  ; push 0x25b93
push 0xa3
push ref_00025b54  ; push 0x25b54
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00018ecd:
mov edx, dword [ebp + 8]
in eax, dx
leave
ret

fcn_00018ed3:
push ebp
mov ebp, esp
sub esp, 8
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00018f00  ; je 0x18f00
test byte [ebp + 8], 3
je short loc_00018f00  ; je 0x18f00
push eax
push ref_00025b93  ; push 0x25b93
push 0xc0
push ref_00025b54  ; push 0x25b54
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00018f00:
mov eax, dword [ebp + 0xc]
mov edx, dword [ebp + 8]
out dx, eax
mov eax, dword [ebp + 0xc]
leave
ret

fcn_00018f0c:
push ebp
mov ebp, esp
push ebx
sub esp, 0x20
lea eax, [ebp - 0xc]
push eax
call fcn_00019703  ; call 0x19703
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00018f60  ; je 0x18f60
test ebx, ebx
jns short loc_00018f60  ; jns 0x18f60
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00018f4b  ; je 0x18f4b
push ecx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00018f4b:
push edx
push ref_00020664  ; push 0x20664
push 0x32
push ref_00025ba3  ; push 0x25ba3
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00018f60:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00018f84  ; je 0x18f84
cmp dword [ebp - 0xc], 0
jne short loc_00018f84  ; jne 0x18f84
push eax
push ref_00025bd7  ; push 0x25bd7
push 0x33
push ref_00025ba3  ; push 0x25ba3
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00018f84:
mov eax, dword [ebp - 0xc]
mov ebx, dword [ebp - 4]
leave
ret

fcn_00018f8c:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
mov ebx, dword [ebp + 0xc]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00018fc6  ; je 0x18fc6
test ebx, ebx
jne short loc_00018fc6  ; jne 0x18fc6
push eax
push ref_00025bef  ; push 0x25bef
push 0x52
push ref_00025ba3  ; push 0x25ba3
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
jmp short loc_00018fc6  ; jmp 0x18fc6

loc_00018fbb:
cmp ax, si
je short loc_00018fd3  ; je 0x18fd3
movzx eax, word [ebx + 2]
add ebx, eax

loc_00018fc6:
mov ax, word [ebx]
cmp ax, 0xffff
jne short loc_00018fbb  ; jne 0x18fbb
xor eax, eax
jmp short loc_00018fd5  ; jmp 0x18fd5

loc_00018fd3:
mov eax, ebx

loc_00018fd5:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_00018fdc:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_00018f0c  ; call 0x18f0c
movzx ebx, bx
push edx
push edx
push eax
push ebx
call fcn_00018f8c  ; call 0x18f8c
mov ebx, dword [ebp - 4]
leave
ret

fcn_00018ffa:
push ebp
mov ebp, esp
push ebx
push ecx
mov ebx, dword [ebp + 0xc]

loc_00019002:
push eax
push eax
push ebx
push 4
call fcn_00018f8c  ; call 0x18f8c
add esp, 0x10
mov ebx, eax
test eax, eax
je short loc_00019032  ; je 0x19032
push edx
push edx
lea eax, [ebx + 8]
push eax
push dword [ebp + 8]
call fcn_00016e24  ; call 0x16e24
add esp, 0x10
test al, al
jne short loc_00019032  ; jne 0x19032
movzx eax, word [ebx + 2]
add ebx, eax
jmp short loc_00019002  ; jmp 0x19002

loc_00019032:
mov eax, ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_00019039:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00018f0c  ; call 0x18f0c
push edx
push edx
push eax
push dword [ebp + 8]
call fcn_00018ffa  ; call 0x18ffa
leave
ret

fcn_00019051:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
sub esp, 0x20
lea eax, [ebp - 0xc]
push eax
call fcn_000196d3  ; call 0x196d3
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_000190a8  ; je 0x190a8
test ebx, ebx
jns short loc_000190a8  ; jns 0x190a8
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00019090  ; je 0x19090
push edx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00019090:  ; not directly referenced
push eax
push ref_00020664  ; push 0x20664
push 0xd8
push ref_00025ba3  ; push 0x25ba3
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000190a8:  ; not directly referenced
mov eax, dword [ebp - 0xc]
mov ebx, dword [ebp - 4]
leave
ret

fcn_000190b0:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x1c
lea eax, [ebp - 0xc]
push eax
movzx eax, word [ebp + 0xc]
push eax
movzx eax, word [ebp + 8]
push eax
call fcn_0001971b  ; call 0x1971b
add esp, 0x10
test eax, eax
jns short loc_000190d7  ; jns 0x190d7
mov dword [ebp - 0xc], 0

loc_000190d7:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000190fe  ; je 0x190fe
cmp dword [ebp - 0xc], 0
jne short loc_000190fe  ; jne 0x190fe
push eax
push ref_00025c08  ; push 0x25c08
push 0xfa
push ref_00025ba3  ; push 0x25ba3
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000190fe:  ; not directly referenced
mov eax, dword [ebp - 0xc]
leave
ret

fcn_00019103:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 0x10]
mov edx, dword [ebp + 0x20]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x14]
mov dword [ebp - 0x24], eax
mov eax, dword [ebp + 0x18]
mov dword [ebp - 0x1c], edx
mov dword [ebp - 0x28], eax
mov eax, dword [ebp + 0x1c]
mov dword [ebp - 0x20], eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001915b  ; je 0x1915b
test esi, 0xfff
jne short loc_00019143  ; jne 0x19143
test ebx, 0xfff
je short loc_0001915b  ; je 0x1915b

loc_00019143:  ; not directly referenced
push eax
push ref_00025c1c  ; push 0x25c1c
push 0x11a
push ref_00025ba3  ; push 0x25ba3
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001915b:  ; not directly referenced
push edi
push edi
push 0x48
push 2
call fcn_000190b0  ; call 0x190b0
add esp, 0x10
mov edi, eax
test eax, eax
je short loc_000191c2  ; je 0x191c2
push eax
push eax
push ref_00028fac  ; push 0x28fac
lea eax, [edi + 8]
push eax
call fcn_00016de3  ; call 0x16de3
mov eax, dword [ebp - 0x24]
mov dword [edi + 0x18], esi
mov dword [edi + 0x20], ebx
mov dword [edi + 0x28], 3
mov dword [edi + 0x1c], eax
mov eax, dword [ebp - 0x28]
mov dword [edi + 0x24], eax
lea eax, [edi + 0x2c]
pop edx
pop ecx
push 4
push eax
call fcn_00016f3b  ; call 0x16f3b
lea eax, [edi + 0x30]
pop ebx
pop esi
push dword [ebp + 8]
push eax
call fcn_00016de3  ; call 0x16de3
mov eax, dword [ebp - 0x20]
add esp, 0x10
mov edx, dword [ebp - 0x1c]
mov dword [edi + 0x40], eax
mov dword [edi + 0x44], edx

loc_000191c2:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000191ca:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
sub esp, 0x18
mov eax, dword [ebp + 0x18]
mov edx, dword [ebp + 0x1c]
push 0x30
mov esi, dword [ebp + 0x10]
push 3
mov edi, dword [ebp + 0x14]
mov dword [ebp - 0x10], eax
mov dword [ebp - 0xc], edx
call fcn_000190b0  ; call 0x190b0
add esp, 0x10
test eax, eax
je short loc_00019212  ; je 0x19212
mov edx, dword [ebp + 8]
mov dword [eax + 0x20], esi
mov esi, dword [ebp - 0x10]
mov dword [eax + 0x24], edi
mov edi, dword [ebp - 0xc]
mov dword [eax + 0x18], edx
mov edx, dword [ebp + 0xc]
mov dword [eax + 0x28], esi
mov dword [eax + 0x2c], edi
mov dword [eax + 0x1c], edx

loc_00019212:  ; not directly referenced
lea esp, [ebp - 8]
pop esi
pop edi
pop ebp
ret

fcn_00019219:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
mov ebx, dword [ebp + 0xc]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00019249  ; je 0x19249
test esi, esi
jne short loc_00019249  ; jne 0x19249
push eax
push ref_00025c7b  ; push 0x25c7b
push 0x176
push ref_00025ba3  ; push 0x25ba3
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00019249:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00019272  ; je 0x19272
cmp ebx, 0xffe0
jbe short loc_00019272  ; jbe 0x19272
push ecx
push ref_00025c90  ; push 0x25c90
push 0x17b
push ref_00025ba3  ; push 0x25ba3
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00019272:  ; not directly referenced
add ebx, 0x18
push edx
movzx ebx, bx
push edx
push ebx
push 4
call fcn_000190b0  ; call 0x190b0
add esp, 0x10
mov ebx, eax
test eax, eax
je short loc_0001929f  ; je 0x1929f
push eax
push eax
push esi
lea eax, [ebx + 8]
push eax
call fcn_00016de3  ; call 0x16de3
lea eax, [ebx + 0x18]
add esp, 0x10
jmp short loc_000192a1  ; jmp 0x192a1

loc_0001929f:  ; not directly referenced
xor eax, eax

loc_000192a1:  ; not directly referenced
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_000192a8:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000192e3  ; je 0x192e3
test esi, esi
jne short loc_000192e3  ; jne 0x192e3
test ebx, ebx
je short loc_000192e3  ; je 0x192e3
push edx
push ref_00025cc4  ; push 0x25cc4
push 0x1a8
push ref_00025ba3  ; push 0x25ba3
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000192e3:  ; not directly referenced
push eax
push eax
push ebx
push edi
call fcn_00019219  ; call 0x19219
add esp, 0x10
test eax, eax
je short loc_00019308  ; je 0x19308
mov dword [ebp + 0x10], ebx
mov dword [ebp + 0xc], esi
mov dword [ebp + 8], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_0001707a  ; jmp 0x1707a

loc_00019308:  ; not directly referenced
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00019312:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
sub esp, 0x18
mov eax, dword [ebp + 0x10]
mov edx, dword [ebp + 0x14]
push 0x18
mov esi, dword [ebp + 8]
push 5
mov edi, dword [ebp + 0xc]
mov dword [ebp - 0x10], eax
mov dword [ebp - 0xc], edx
call fcn_000190b0  ; call 0x190b0
add esp, 0x10
test eax, eax
je short loc_0001934e  ; je 0x1934e
mov edx, dword [ebp - 0x10]
mov ecx, dword [ebp - 0xc]
mov dword [eax + 8], esi
mov dword [eax + 0xc], edi
mov dword [eax + 0x10], edx
mov dword [eax + 0x14], ecx

loc_0001934e:  ; not directly referenced
lea esp, [ebp - 8]
pop esi
pop edi
pop ebp
ret

fcn_00019355:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x24
mov edx, dword [ebp + 0x14]
mov eax, dword [ebp + 0x10]
mov ecx, dword [ebp + 0x18]
push 0x38
mov esi, dword [ebp + 8]
push 9
mov edi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x1c]
mov dword [ebp - 0x1c], edx
mov dword [ebp - 0x20], eax
mov dword [ebp - 0x24], ecx
call fcn_000190b0  ; call 0x190b0
add esp, 0x10
mov edx, eax
test eax, eax
je short loc_000193ca  ; je 0x193ca
mov dword [eax + 8], esi
mov esi, dword [ebp - 0x20]
mov dword [eax + 0xc], edi
mov edi, dword [ebp - 0x1c]
mov ecx, dword [ebp - 0x24]
mov dword [ebp - 0x20], edx
mov dword [eax + 0x10], esi
mov dword [eax + 0x14], edi
push eax
push eax
push ecx
lea eax, [edx + 0x18]
push eax
call fcn_00016de3  ; call 0x16de3
mov edx, dword [ebp - 0x20]
add esp, 0x10
mov dword [ebp + 0xc], ebx
add edx, 0x28
mov dword [ebp + 8], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00016de3  ; jmp 0x16de3

loc_000193ca:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000193d2:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
sub esp, 0x18
mov eax, dword [ebp + 0x10]
mov edx, dword [ebp + 0x14]
push 0x18
mov esi, dword [ebp + 8]
push 0xb
mov edi, dword [ebp + 0xc]
mov dword [ebp - 0x10], eax
mov dword [ebp - 0xc], edx
call fcn_000190b0  ; call 0x190b0
add esp, 0x10
test eax, eax
je short loc_0001940e  ; je 0x1940e
mov edx, dword [ebp - 0x10]
mov ecx, dword [ebp - 0xc]
mov dword [eax + 8], esi
mov dword [eax + 0xc], edi
mov dword [eax + 0x10], edx
mov dword [eax + 0x14], ecx

loc_0001940e:  ; not directly referenced
lea esp, [ebp - 8]
pop esi
pop edi
pop ebp
ret

fcn_00019415:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
mov ebx, dword [ebp + 0xc]
push eax
push eax
push 0x10
push 6
call fcn_000190b0  ; call 0x190b0
add esp, 0x10
test eax, eax
je short loc_00019452  ; je 0x19452
mov edx, esi
add eax, 0xa
mov byte [eax - 2], dl
mov byte [eax - 1], bl
mov dword [ebp + 0xc], 6
mov dword [ebp + 8], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00016f3b  ; jmp 0x16f3b

loc_00019452:  ; not directly referenced
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_00019459:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 0x14]
mov esi, dword [ebp + 8]
mov edi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
mov dword [ebp - 0x1c], eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_000194a2  ; je 0x194a2
test esi, 0xfff
jne short loc_0001948a  ; jne 0x1948a
test ebx, 0xfff
je short loc_000194a2  ; je 0x194a2

loc_0001948a:  ; not directly referenced
push ecx
push ref_00025cec  ; push 0x25cec
push 0x251
push ref_00025ba3  ; push 0x25ba3
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000194a2:  ; not directly referenced
push edx
push edx
push 0x30
push 2
call fcn_000190b0  ; call 0x190b0
add esp, 0x10
mov edx, eax
test eax, eax
je short loc_000194fe  ; je 0x194fe
push eax
push eax
push ref_00028f9c  ; push 0x28f9c
lea eax, [edx + 8]
push eax
mov dword [ebp - 0x20], edx
call fcn_00016de3  ; call 0x16de3
mov edx, dword [ebp - 0x20]
add esp, 0x10
mov eax, dword [ebp - 0x1c]
mov dword [edx + 0x18], esi
add edx, 0x2c
mov dword [edx - 0x10], edi
mov dword [edx - 0xc], ebx
mov dword [edx - 8], eax
mov dword [edx - 4], 4
mov dword [ebp + 0xc], 4
mov dword [ebp + 8], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00016f3b  ; jmp 0x16f3b

loc_000194fe:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00019506:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 0x14]
mov esi, dword [ebp + 8]
mov edi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
mov dword [ebp - 0x20], eax
mov eax, dword [ebp + 0x18]
mov dword [ebp - 0x1c], eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00019555  ; je 0x19555
test esi, 0xfff
jne short loc_0001953d  ; jne 0x1953d
test ebx, 0xfff
je short loc_00019555  ; je 0x19555

loc_0001953d:  ; not directly referenced
push ecx
push ref_00025cec  ; push 0x25cec
push 0x27c
push ref_00025ba3  ; push 0x25ba3
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00019555:  ; not directly referenced
push edx
push edx
push 0x30
push 2
call fcn_000190b0  ; call 0x190b0
add esp, 0x10
mov edx, eax
test eax, eax
je short loc_000195b0  ; je 0x195b0
push eax
push eax
push ref_00028f8c  ; push 0x28f8c
lea eax, [edx + 8]
push eax
mov dword [ebp - 0x24], edx
call fcn_00016de3  ; call 0x16de3
mov edx, dword [ebp - 0x24]
add esp, 0x10
mov eax, dword [ebp - 0x20]
mov dword [edx + 0x18], esi
add edx, 0x2c
mov dword [edx - 8], eax
mov eax, dword [ebp - 0x1c]
mov dword [edx - 0x10], edi
mov dword [edx - 0xc], ebx
mov dword [edx - 4], eax
mov dword [ebp + 0xc], 4
mov dword [ebp + 8], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00016f3b  ; jmp 0x16f3b

loc_000195b0:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000195b8:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 0x14]
mov esi, dword [ebp + 8]
mov edi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
mov dword [ebp - 0x20], eax
mov eax, dword [ebp + 0x18]
mov dword [ebp - 0x1c], eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00019607  ; je 0x19607
test esi, 0xfff
jne short loc_000195ef  ; jne 0x195ef
test ebx, 0xfff
je short loc_00019607  ; je 0x19607

loc_000195ef:  ; not directly referenced
push ecx
push ref_00025cec  ; push 0x25cec
push 0x2a7
push ref_00025ba3  ; push 0x25ba3
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00019607:  ; not directly referenced
push edx
push edx
push 0x30
push 2
call fcn_000190b0  ; call 0x190b0
add esp, 0x10
mov edx, eax
test eax, eax
je short loc_0001965f  ; je 0x1965f
push eax
push eax
push 0x10
lea eax, [edx + 8]
push eax
mov dword [ebp - 0x24], edx
call fcn_00016f3b  ; call 0x16f3b
mov edx, dword [ebp - 0x24]
add esp, 0x10
mov eax, dword [ebp - 0x20]
mov dword [edx + 0x18], esi
add edx, 0x2c
mov dword [edx - 8], eax
mov eax, dword [ebp - 0x1c]
mov dword [edx - 0x10], edi
mov dword [edx - 0xc], ebx
mov dword [edx - 4], eax
mov dword [ebp + 0xc], 4
mov dword [ebp + 8], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00016f3b  ; jmp 0x16f3b

loc_0001965f:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00019667:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019a6d  ; call 0x19a6d
push edx
push edx
mov edx, dword [eax]
push dword [ebp + 8]
push eax
call dword [edx + 0x18]  ; ucall
leave
ret

fcn_0001967f:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019a6d  ; call 0x19a6d
push edx
mov edx, dword [eax]
push dword [ebp + 0xc]
push dword [ebp + 8]
push eax
call dword [edx + 0x1c]  ; ucall
leave
ret

fcn_00019699:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019a6d  ; call 0x19a6d
sub esp, 0xc
mov edx, dword [eax]
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
push eax
call dword [edx + 0x20]  ; ucall
leave
ret

fcn_000196bb:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019a6d  ; call 0x19a6d
push edx
push edx
mov edx, dword [eax]
push dword [ebp + 8]
push eax
call dword [edx + 0x24]  ; ucall
leave
ret

fcn_000196d3:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019a6d  ; call 0x19a6d
push edx
push edx
mov edx, dword [eax]
push dword [ebp + 8]
push eax
call dword [edx + 0x28]  ; ucall
leave
ret

fcn_000196eb:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019a6d  ; call 0x19a6d
push edx
push edx
mov edx, dword [eax]
push dword [ebp + 8]
push eax
call dword [edx + 0x2c]  ; ucall
leave
ret

fcn_00019703:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019a6d  ; call 0x19a6d
push edx
push edx
mov edx, dword [eax]
push dword [ebp + 8]
push eax
call dword [edx + 0x30]  ; ucall
leave
ret

fcn_0001971b:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
call fcn_00019a6d  ; call 0x19a6d
movzx esi, si
movzx ebx, bx
mov edx, dword [eax]
push dword [ebp + 0x10]
push esi
push ebx
push eax
call dword [edx + 0x34]  ; ucall
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_00019743:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019a6d  ; call 0x19a6d
push edx
mov edx, dword [eax]
push dword [ebp + 0xc]
push dword [ebp + 8]
push eax
call dword [edx + 0x38]  ; ucall
leave
ret

fcn_0001975d:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_00019a6d  ; call 0x19a6d
movzx ebx, bl
mov edx, dword [eax]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push ebx
push eax
call dword [edx + 0x3c]  ; ucall
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001977f:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_00019a6d  ; call 0x19a6d
movzx ebx, bl
mov edx, dword [eax]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push ebx
push eax
call dword [edx + 0x40]  ; ucall
mov ebx, dword [ebp - 4]
leave
ret

fcn_000197a1:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
sub esp, 0x10
mov edx, dword [ebp + 0xc]
mov eax, dword [ebp + 8]
mov esi, dword [ebp + 0x10]
mov edi, dword [ebp + 0x14]
mov dword [ebp - 0xc], edx
mov dword [ebp - 0x10], eax
call fcn_00019a6d  ; call 0x19a6d
sub esp, 0xc
mov edx, dword [eax]
push edi
push esi
push dword [ebp - 0xc]
push dword [ebp - 0x10]
push eax
call dword [edx + 0x44]  ; ucall
lea esp, [ebp - 8]
pop esi
pop edi
pop ebp
ret

fcn_000197d8:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019a6d  ; call 0x19a6d
mov edx, dword [eax]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
push eax
call dword [edx + 0x48]  ; ucall
leave
ret

fcn_000197f4:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019a6d  ; call 0x19a6d
push edx
mov edx, dword [eax]
push dword [ebp + 0xc]
push dword [ebp + 8]
push eax
call dword [edx + 0x4c]  ; ucall
leave
ret

fcn_0001980e:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019a6d  ; call 0x19a6d
sub esp, 0xc
mov edx, dword [eax]
push eax
call dword [edx + 0x5c]  ; ucall
leave
ret

fcn_00019824:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_00019a6d  ; call 0x19a6d
mov eax, dword [eax]
mov dword [ebp + 8], ebx
mov eax, dword [eax + 0x74]
pop edx
pop ebx
pop ebp
jmp eax
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
call fcn_00019a6d  ; call 0x19a6d
mov eax, dword [eax]
mov dword [ebp + 0xc], esi
mov dword [ebp + 8], ebx
pop ebx
mov eax, dword [eax + 0x6c]
pop esi
pop ebp
jmp eax
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov ebx, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov edi, dword [ebp + 0x10]
call fcn_00019a6d  ; call 0x19a6d
mov eax, dword [eax]
mov dword [ebp + 0x10], edi
mov dword [ebp + 0xc], esi
mov dword [ebp + 8], ebx
mov eax, dword [eax + 0x68]
add esp, 0xc
pop ebx
pop esi
pop edi
pop ebp
jmp eax
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
call fcn_00019a6d  ; call 0x19a6d
mov eax, dword [eax]
mov dword [ebp + 0xc], esi
mov dword [ebp + 8], ebx
pop ebx
mov eax, dword [eax + 0x70]
pop esi
pop ebp
jmp eax
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov eax, dword [ebp + 0xc]
push 0x20
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0x14]
mov dword [ebp - 0x1c], eax
mov eax, dword [ebp + 0x10]
mov dword [ebp - 0x20], eax
mov eax, dword [ebp + 0x18]
mov dword [ebp - 0x24], eax
call fcn_00019cf2  ; call 0x19cf2
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_000198fe  ; je 0x198fe
test ebx, ebx
jne short loc_000198fe  ; jne 0x198fe
push eax
push ref_00025d3a  ; push 0x25d3a
push 0x23d
push ref_00025d54  ; push 0x25d54
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000198fe:
test edi, edi
je short loc_00019907  ; je 0x19907
push eax
push eax
push edi
jmp short loc_0001990e  ; jmp 0x1990e

loc_00019907:
push eax
push eax
push ref_00028fbc  ; push 0x28fbc

loc_0001990e:
push ebx
call fcn_00016de3  ; call 0x16de3
mov eax, dword [ebp - 0x1c]
add esp, 0x10
mov dword [ebx + 0x10], eax
mov eax, dword [ebp - 0x20]
mov dword [ebx + 0x14], eax
test esi, esi
je short loc_0001995e  ; je 0x1995e
push edi
push edi
push esi
push 0x10
call fcn_00019dcd  ; call 0x19dcd
mov esi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0001995b  ; je 0x1995b
test esi, esi
jne short loc_0001995b  ; jne 0x1995b
push ecx
push ref_00025d95  ; push 0x25d95
push 0x248
push ref_00025d54  ; push 0x25d54
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001995b:
mov dword [ebx + 0x18], esi

loc_0001995e:
mov eax, dword [ebp - 0x24]
test eax, eax
je short loc_0001999c  ; je 0x1999c
push edx
push edx
push eax
push 0x10
call fcn_00019dcd  ; call 0x19dcd
mov esi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00019999  ; je 0x19999
test esi, esi
jne short loc_00019999  ; jne 0x19999
push edi
push ref_00025db7  ; push 0x25db7
push 0x24d
push ref_00025d54  ; push 0x25d54
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00019999:
mov dword [ebx + 0x1c], esi

loc_0001999c:
push ecx
push ecx
push ref_00020504  ; push 0x20504
push 0xc
call fcn_00019dcd  ; call 0x19dcd
mov esi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_000199d4  ; je 0x199d4
test esi, esi
jne short loc_000199d4  ; jne 0x199d4
push edx
push ref_00025ddb  ; push 0x25ddb
push 0x252
push ref_00025d54  ; push 0x25d54
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_000199d4:
sub esp, 0xc
mov dword [esi + 8], ebx
push esi
call fcn_00019667  ; call 0x19667
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_00019a30  ; je 0x19a30
test ebx, ebx
jns short loc_00019a30  ; jns 0x19a30
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_00019a0f  ; je 0x19a0f
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_00019a0f:
mov dword [ebp + 0x10], ref_00020664  ; mov dword [ebp + 0x10], 0x20664
mov dword [ebp + 0xc], 0x256
mov dword [ebp + 8], ref_00025d54  ; mov dword [ebp + 8], 0x25d54
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_000153fc  ; jmp 0x153fc

loc_00019a30:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00019a38:
push ebp
mov ebp, esp
push ebx
push edx
mov ebx, dword [ebp + 8]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00019a62  ; je 0x19a62
test ebx, ebx
jne short loc_00019a62  ; jne 0x19a62
push eax
push ref_00025dff  ; push 0x25dff
push 0x29
push ref_00025e27  ; push 0x25e27
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00019a62:
mov dword [ref_00031240], ebx  ; mov dword [0x31240], ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_00019a6d:
push ebp
mov ebp, esp
sub esp, 8
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00019a9a  ; je 0x19a9a
cmp dword [ref_00031240], 0  ; cmp dword [0x31240], 0
jne short loc_00019a9a  ; jne 0x19a9a
push eax
push ref_00025e7d  ; push 0x25e7d
push 0x3f
push ref_00025e27  ; push 0x25e27
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00019a9a:
mov eax, dword [ref_00031240]  ; mov eax, dword [0x31240]
leave
ret

fcn_00019aa1:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 0xc]
pop ebp
mov dword [ref_00031240], eax  ; mov dword [0x31240], eax
xor eax, eax
ret

fcn_00019ab0:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x18
mov eax, dword [ebp + 0xc]
test eax, eax
jne short loc_00019ac1  ; jne 0x19ac1

loc_00019abd:  ; not directly referenced
xor eax, eax
jmp short loc_00019ad9  ; jmp 0x19ad9

loc_00019ac1:  ; not directly referenced
push edx
lea edx, [ebp - 0x10]
push edx
push eax
push dword [ebp + 8]
call fcn_000197d8  ; call 0x197d8
add esp, 0x10
test eax, eax
js short loc_00019abd  ; js 0x19abd
mov eax, dword [ebp - 0x10]

loc_00019ad9:  ; not directly referenced
leave
ret

fcn_00019adb:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x10
push dword [ebp + 8]
push 4
call fcn_00019ab0  ; call 0x19ab0
leave
ret

fcn_00019aed:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x10
push dword [ebp + 8]
push 6
call fcn_00019ab0  ; call 0x19ab0
leave
ret

fcn_00019aff:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x10
push dword [ebp + 8]
push 0
call fcn_00019ab0  ; call 0x19ab0
leave
ret

fcn_00019b11:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00019b3e  ; je 0x19b3e
cmp dword [ebp + 0xc], 0
jne short loc_00019b3e  ; jne 0x19b3e
push eax
push ref_00025e9a  ; push 0x25e9a
push 0x95
push ref_00025ea5  ; push 0x25ea5
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00019b3e:  ; not directly referenced
leave
ret

fcn_00019b40:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 0x10]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00019b73  ; je 0x19b73
lea eax, [ebx - 1]
test eax, ebx
je short loc_00019b73  ; je 0x19b73
push ecx
push ref_00025ef3  ; push 0x25ef3
push 0xba
push ref_00025ea5  ; push 0x25ea5
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00019b73:  ; not directly referenced
test esi, esi
je short loc_00019be2  ; je 0x19be2
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00019bb0  ; je 0x19bb0
xor edx, edx
mov eax, ebx
test ebx, 0xfff
setne dl
shr eax, 0xc
add eax, edx
not eax
cmp esi, eax
jbe short loc_00019bb0  ; jbe 0x19bb0
push edx
push ref_00025f16  ; push 0x25f16
push 0xc2
push ref_00025ea5  ; push 0x25ea5
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00019bb0:  ; not directly referenced
push eax
push eax
mov eax, ebx
shr eax, 0xc
add esi, eax
xor eax, eax
test ebx, 0xfff
setne al
add esi, eax
push esi
push dword [ebp + 8]
call fcn_00019ab0  ; call 0x19ab0
add esp, 0x10
cmp ebx, 1
adc ebx, 0xffffffff
mov edx, ebx
not edx
add ebx, eax
and edx, ebx
jmp short loc_00019be4  ; jmp 0x19be4

loc_00019be2:  ; not directly referenced
xor edx, edx

loc_00019be4:  ; not directly referenced
lea esp, [ebp - 8]
mov eax, edx
pop ebx
pop esi
pop ebp
ret

fcn_00019bed:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0xc
push dword [ebp + 0xc]
push dword [ebp + 8]
push 4
call fcn_00019b40  ; call 0x19b40
leave
ret

fcn_00019c02:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0xc
push dword [ebp + 0xc]
push dword [ebp + 8]
push 6
call fcn_00019b40  ; call 0x19b40
leave
ret

fcn_00019c17:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0xc
push dword [ebp + 0xc]
push dword [ebp + 8]
push 0
call fcn_00019b40  ; call 0x19b40
leave
ret

fcn_00019c2c:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00019c59  ; je 0x19c59
cmp dword [ebp + 0xc], 0
jne short loc_00019c59  ; jne 0x19c59
push eax
push ref_00025e9a  ; push 0x25e9a
push 0x13b
push ref_00025ea5  ; push 0x25ea5
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00019c59:  ; not directly referenced
leave
ret

fcn_00019c5b:  ; not directly referenced
push ebp
xor edx, edx
mov ebp, esp
mov eax, dword [ebp + 0xc]
test eax, 0xfff
setne dl
shr eax, 0xc
add eax, edx
mov dword [ebp + 0xc], eax
pop ebp
jmp near fcn_00019ab0  ; jmp 0x19ab0

fcn_00019c79:
push ebp
mov ebp, esp
sub esp, 0x20
lea eax, [ebp - 0xc]
push eax
push dword [ebp + 8]
call fcn_000197f4  ; call 0x197f4
add esp, 0x10
test eax, eax
jns short loc_00019c99  ; jns 0x19c99
mov dword [ebp - 0xc], 0

loc_00019c99:
mov eax, dword [ebp - 0xc]
leave
ret

fcn_00019c9e:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x10
push dword [ebp + 8]
push 6
call fcn_00019c5b  ; call 0x19c5b
leave
ret

fcn_00019cb0:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x10
push dword [ebp + 8]
push 0
call fcn_00019c5b  ; call 0x19c5b
leave
ret

fcn_00019cc2:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
sub esp, 0xc
mov ebx, dword [ebp + 0xc]
push ebx
push dword [ebp + 8]
call fcn_00019c5b  ; call 0x19c5b
add esp, 0x10
test eax, eax
je short loc_00019ceb  ; je 0x19ceb
mov dword [ebp + 0xc], ebx
mov ebx, dword [ebp - 4]
mov dword [ebp + 8], eax
leave
jmp near fcn_00016f3b  ; jmp 0x16f3b

loc_00019ceb:  ; not directly referenced
xor eax, eax
mov ebx, dword [ebp - 4]
leave
ret

fcn_00019cf2:
push ebp
mov ebp, esp
push ebx
sub esp, 0x10
mov ebx, dword [ebp + 8]
push ebx
call fcn_00019c79  ; call 0x19c79
add esp, 0x10
test eax, eax
je short loc_00019d15  ; je 0x19d15
push edx
push edx
push ebx
push eax
call fcn_00016f3b  ; call 0x16f3b
add esp, 0x10

loc_00019d15:
mov ebx, dword [ebp - 4]
leave
ret

fcn_00019d1a:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x10
push dword [ebp + 8]
push 6
call fcn_00019cc2  ; call 0x19cc2
leave
ret

fcn_00019d2c:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x10
push dword [ebp + 8]
push 0
call fcn_00019cc2  ; call 0x19cc2
leave
ret

fcn_00019d3e:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00019d75  ; je 0x19d75
test ebx, ebx
jne short loc_00019d75  ; jne 0x19d75
push ecx
push ref_000260eb  ; push 0x260eb
push 0x221
push ref_00025ea5  ; push 0x25ea5
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00019d75:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00019d9e  ; je 0x19d9e
mov eax, ebx
neg eax
cmp esi, eax
jbe short loc_00019d9e  ; jbe 0x19d9e
push edx
push ref_00025f66  ; push 0x25f66
push 0x222
push ref_00025ea5  ; push 0x25ea5
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00019d9e:  ; not directly referenced
push eax
push eax
push esi
push edi
call fcn_00019c5b  ; call 0x19c5b
add esp, 0x10
test eax, eax
je short loc_00019dc3  ; je 0x19dc3
mov dword [ebp + 0x10], esi
mov dword [ebp + 0xc], ebx
mov dword [ebp + 8], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_0001707a  ; jmp 0x1707a

loc_00019dc3:  ; not directly referenced
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00019dcd:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
mov ebx, dword [ebp + 0xc]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00019dfd  ; je 0x19dfd
test ebx, ebx
jne short loc_00019dfd  ; jne 0x19dfd
push eax
push ref_000260eb  ; push 0x260eb
push 0x245
push ref_00025ea5  ; push 0x25ea5
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00019dfd:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00019e26  ; je 0x19e26
mov eax, ebx
neg eax
cmp esi, eax
jbe short loc_00019e26  ; jbe 0x19e26
push ecx
push ref_00025f66  ; push 0x25f66
push 0x246
push ref_00025ea5  ; push 0x25ea5
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00019e26:
sub esp, 0xc
push esi
call fcn_00019c79  ; call 0x19c79
add esp, 0x10
test eax, eax
je short loc_00019e42  ; je 0x19e42
push edx
push esi
push ebx
push eax
call fcn_0001707a  ; call 0x1707a
add esp, 0x10

loc_00019e42:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_00019e49:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0xc
push dword [ebp + 0xc]
push dword [ebp + 8]
push 6
call fcn_00019d3e  ; call 0x19d3e
leave
ret

fcn_00019e5e:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0xc
push dword [ebp + 0xc]
push dword [ebp + 8]
push 0
call fcn_00019d3e  ; call 0x19d3e
leave
ret

fcn_00019e73:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x14
mov ebx, dword [ebp + 0x10]
mov esi, dword [ebp + 0x14]
push ebx
push dword [ebp + 8]
call fcn_00019cc2  ; call 0x19cc2
add esp, 0x10
mov edi, eax
test eax, eax
je short loc_00019eab  ; je 0x19eab
test esi, esi
je short loc_00019eab  ; je 0x19eab
cmp ebx, dword [ebp + 0xc]
cmova ebx, dword [ebp + 0xc]
push eax
push ebx
push esi
push edi
call fcn_0001707a  ; call 0x1707a
add esp, 0x10

loc_00019eab:  ; not directly referenced
lea esp, [ebp - 0xc]
mov eax, edi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00019eb5:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
push 4
call fcn_00019e73  ; call 0x19e73
leave
ret

fcn_00019ecd:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
push 6
call fcn_00019e73  ; call 0x19e73
leave
ret

fcn_00019ee5:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
push 0
call fcn_00019e73  ; call 0x19e73
leave
ret

fcn_00019efd:  ; not directly referenced
push ebp
mov ebp, esp
pop ebp
ret

fcn_00019f02:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00019f30  ; je 0x19f30
test ebx, 0x400000
je short loc_00019f30  ; je 0x19f30
push eax
push ref_00025f9a  ; push 0x25f9a
push 0x33
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00019f30:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00019f55  ; je 0x19f55
movzx eax, bh
test eax, eax
je short loc_00019f55  ; je 0x19f55
push ecx
push ref_0002600d  ; push 0x2600d
push 0x34
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00019f55:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00019f7b  ; je 0x19f7b
test ebx, 0x3f0000
je short loc_00019f7b  ; je 0x19f7b
push edx
push ref_00026031  ; push 0x26031
push 0x35
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00019f7b:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00019fa1  ; je 0x19fa1
test ebx, 0xff800001
je short loc_00019fa1  ; je 0x19fa1
push eax
push ref_00026056  ; push 0x26056
push 0x36
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00019fa1:  ; not directly referenced
sub esp, 0xc
push dword [ebp + 0xc]
push 0
push 0
push ebx
push 0
call fcn_0001a727  ; call 0x1a727
add esp, 0x20
mov ebx, dword [ebp - 4]
leave
ret

fcn_00019fbb:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_00019fe9  ; je 0x19fe9
test ebx, 0x400000
je short loc_00019fe9  ; je 0x19fe9
push eax
push ref_00025f9a  ; push 0x25f9a
push 0x5c
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_00019fe9:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a00e  ; je 0x1a00e
movzx eax, bh
test eax, eax
je short loc_0001a00e  ; je 0x1a00e
push ecx
push ref_0002600d  ; push 0x2600d
push 0x5d
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a00e:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a034  ; je 0x1a034
test ebx, 0x3f0000
je short loc_0001a034  ; je 0x1a034
push edx
push ref_00026031  ; push 0x26031
push 0x5e
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a034:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a05a  ; je 0x1a05a
test ebx, 0xff800001
je short loc_0001a05a  ; je 0x1a05a
push eax
push ref_00026056  ; push 0x26056
push 0x5f
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a05a:  ; not directly referenced
sub esp, 0xc
push dword [ebp + 0xc]
push 0
push 0
push ebx
push 1
call fcn_0001a727  ; call 0x1a727
add esp, 0x20
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001a074:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
sub esp, 0x14
mov ebx, dword [ebp + 8]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a0a6  ; je 0x1a0a6
movzx eax, bh
test eax, eax
je short loc_0001a0a6  ; je 0x1a0a6
push ecx
push ref_0002600d  ; push 0x2600d
push 0x8a
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a0a6:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a0cf  ; je 0x1a0cf
test ebx, 0x3f0000
je short loc_0001a0cf  ; je 0x1a0cf
push edx
push ref_00026031  ; push 0x26031
push 0x8b
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a0cf:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a0f8  ; je 0x1a0f8
test ebx, 0xff800001
je short loc_0001a0f8  ; je 0x1a0f8
push eax
push ref_00026056  ; push 0x26056
push 0x8c
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a0f8:  ; not directly referenced
sub esp, 0xc
push dword [ebp + 0xc]
lea eax, [ebp - 9]
push eax
push 1
push ebx
push 2
call fcn_0001a727  ; call 0x1a727
mov al, byte [ebp - 9]
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001a114:  ; not directly referenced
push ebp
mov ebp, esp
push esi
push ebx
sub esp, 0x10
mov ebx, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a14a  ; je 0x1a14a
movzx eax, bh
test eax, eax
je short loc_0001a14a  ; je 0x1a14a
push ecx
push ref_0002600d  ; push 0x2600d
push 0xbb
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a14a:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a173  ; je 0x1a173
test ebx, 0x3f0000
je short loc_0001a173  ; je 0x1a173
push edx
push ref_00026031  ; push 0x26031
push 0xbc
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a173:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a19c  ; je 0x1a19c
test ebx, 0xff800001
je short loc_0001a19c  ; je 0x1a19c
push eax
push ref_00026056  ; push 0x26056
push 0xbd
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a19c:  ; not directly referenced
sub esp, 0xc
mov eax, esi
push dword [ebp + 0x10]
mov byte [ebp - 9], al
lea eax, [ebp - 9]
push eax
push 1
push ebx
push 3
call fcn_0001a727  ; call 0x1a727
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_0001a1be:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
sub esp, 0x14
mov ebx, dword [ebp + 8]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a1f1  ; je 0x1a1f1
test ebx, 0x3f0000
je short loc_0001a1f1  ; je 0x1a1f1
push edx
push ref_00026031  ; push 0x26031
push 0xea
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a1f1:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a21a  ; je 0x1a21a
test ebx, 0xff800001
je short loc_0001a21a  ; je 0x1a21a
push eax
push ref_00026056  ; push 0x26056
push 0xeb
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a21a:  ; not directly referenced
sub esp, 0xc
push dword [ebp + 0xc]
lea eax, [ebp - 9]
push eax
push 1
push ebx
push 4
call fcn_0001a727  ; call 0x1a727
mov al, byte [ebp - 9]
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001a236:  ; not directly referenced
push ebp
mov ebp, esp
push esi
push ebx
sub esp, 0x10
mov ebx, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a26d  ; je 0x1a26d
test ebx, 0x3f0000
je short loc_0001a26d  ; je 0x1a26d
push edx
push ref_00026031  ; push 0x26031
push 0x11a
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a26d:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a296  ; je 0x1a296
test ebx, 0xff800001
je short loc_0001a296  ; je 0x1a296
push eax
push ref_00026056  ; push 0x26056
push 0x11b
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a296:  ; not directly referenced
sub esp, 0xc
mov eax, esi
push dword [ebp + 0x10]
mov byte [ebp - 9], al
lea eax, [ebp - 9]
push eax
push 1
push ebx
push 5
call fcn_0001a727  ; call 0x1a727
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_0001a2b8:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
sub esp, 0x14
mov ebx, dword [ebp + 8]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a2eb  ; je 0x1a2eb
test ebx, 0x3f0000
je short loc_0001a2eb  ; je 0x1a2eb
push edx
push ref_00026031  ; push 0x26031
push 0x148
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a2eb:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a314  ; je 0x1a314
test ebx, 0xff800001
je short loc_0001a314  ; je 0x1a314
push eax
push ref_00026056  ; push 0x26056
push 0x149
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a314:  ; not directly referenced
sub esp, 0xc
push dword [ebp + 0xc]
lea eax, [ebp - 0xa]
push eax
push 2
push ebx
push 6
call fcn_0001a727  ; call 0x1a727
mov ax, word [ebp - 0xa]
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001a331:  ; not directly referenced
push ebp
mov ebp, esp
push esi
push ebx
sub esp, 0x10
mov ebx, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a368  ; je 0x1a368
test ebx, 0x3f0000
je short loc_0001a368  ; je 0x1a368
push edx
push ref_00026031  ; push 0x26031
push 0x178
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a368:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a391  ; je 0x1a391
test ebx, 0xff800001
je short loc_0001a391  ; je 0x1a391
push eax
push ref_00026056  ; push 0x26056
push 0x179
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a391:  ; not directly referenced
sub esp, 0xc
push dword [ebp + 0x10]
lea eax, [ebp - 0xa]
mov word [ebp - 0xa], si
push eax
push 2
push ebx
push 7
call fcn_0001a727  ; call 0x1a727
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_0001a3b2:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
sub esp, 0x14
mov eax, dword [ebp + 0xc]
mov ebx, dword [ebp + 8]
mov word [ebp - 0xc], ax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a3ec  ; je 0x1a3ec
test ebx, 0x3f0000
je short loc_0001a3ec  ; je 0x1a3ec
push edx
push ref_00026031  ; push 0x26031
push 0x1a7
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a3ec:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a415  ; je 0x1a415
test ebx, 0xff800001
je short loc_0001a415  ; je 0x1a415
push eax
push ref_00026056  ; push 0x26056
push 0x1a8
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a415:  ; not directly referenced
sub esp, 0xc
push dword [ebp + 0x10]
lea eax, [ebp - 0xc]
push eax
push 2
push ebx
push 0xa
call fcn_0001a727  ; call 0x1a727
mov eax, dword [ebp - 0xc]
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001a431:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a461  ; je 0x1a461
test esi, esi
jne short loc_0001a461  ; jne 0x1a461
push ecx
push ref_000260eb  ; push 0x260eb
push 0x1d8
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a461:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a48a  ; je 0x1a48a
test ebx, 0x3f0000
je short loc_0001a48a  ; je 0x1a48a
push edx
push ref_00026031  ; push 0x26031
push 0x1d9
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a48a:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a4b3  ; je 0x1a4b3
test ebx, 0xff800001
je short loc_0001a4b3  ; je 0x1a4b3
push eax
push ref_00026056  ; push 0x26056
push 0x1da
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a4b3:  ; not directly referenced
sub esp, 0xc
push dword [ebp + 0x10]
push esi
push 0x20
push ebx
push 8
call fcn_0001a727  ; call 0x1a727
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0001a4cb:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a4fb  ; je 0x1a4fb
test esi, esi
jne short loc_0001a4fb  ; jne 0x1a4fb
push eax
push ref_000260eb  ; push 0x260eb
push 0x207
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a4fb:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a524  ; je 0x1a524
test ebx, 0x3f0000
jne short loc_0001a524  ; jne 0x1a524
push ecx
push ref_00026080  ; push 0x26080
push 0x208
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a524:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a552  ; je 0x1a552
mov eax, ebx
shr eax, 0x10
and eax, 0x3f
cmp eax, 0x20
jbe short loc_0001a552  ; jbe 0x1a552
push edx
push ref_000260a5  ; push 0x260a5
push 0x209
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a552:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a57b  ; je 0x1a57b
test ebx, 0xff800001
je short loc_0001a57b  ; je 0x1a57b
push eax
push ref_00026056  ; push 0x26056
push 0x20a
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a57b:  ; not directly referenced
sub esp, 0xc
mov eax, ebx
push dword [ebp + 0x10]
shr eax, 0x10
and eax, 0x3f
push esi
push eax
push ebx
push 9
call fcn_0001a727  ; call 0x1a727
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0001a59a:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov ebx, dword [ebp + 8]
mov edi, dword [ebp + 0xc]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a5ce  ; je 0x1a5ce
test edi, edi
jne short loc_0001a5ce  ; jne 0x1a5ce
push eax
push ref_000260cb  ; push 0x260cb
push 0x23c
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a5ce:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a5f5  ; je 0x1a5f5
cmp dword [ebp + 0x10], 0
jne short loc_0001a5f5  ; jne 0x1a5f5
push eax
push ref_000260e7  ; push 0x260e7
push 0x23d
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a5f5:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a61e  ; je 0x1a61e
test ebx, 0x3f0000
jne short loc_0001a61e  ; jne 0x1a61e
push eax
push ref_00026080  ; push 0x26080
push 0x23e
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a61e:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a64c  ; je 0x1a64c
mov eax, ebx
shr eax, 0x10
and eax, 0x3f
cmp eax, 0x20
jbe short loc_0001a64c  ; jbe 0x1a64c
push esi
push ref_000260a5  ; push 0x260a5
push 0x23f
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a64c:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a675  ; je 0x1a675
test ebx, 0xff800001
je short loc_0001a675  ; je 0x1a675
push ecx
push ref_00026056  ; push 0x26056
push 0x240
push ref_00025fcc  ; push 0x25fcc
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a675:  ; not directly referenced
mov esi, ebx
shr esi, 0x10
push eax
and esi, 0x3f
push esi
push edi
push dword [ebp + 0x10]
call fcn_0001707a  ; call 0x1707a
pop edx
push dword [ebp + 0x14]
push eax
push esi
push ebx
push 0xb
call fcn_0001a727  ; call 0x1a727
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001a69e:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
sub esp, 0x14
lea eax, [ebp - 0xc]
push eax
push 0
push 0
push ref_0002900c  ; push 0x2900c
call fcn_00019699  ; call 0x19699
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0001a6fb  ; je 0x1a6fb
test ebx, ebx
jns short loc_0001a6fb  ; jns 0x1a6fb
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001a6e6  ; je 0x1a6e6
push ecx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001a6e6:  ; not directly referenced
push edx
push ref_00020664  ; push 0x20664
push 0x24
push ref_00026102  ; push 0x26102
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a6fb:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001a71f  ; je 0x1a71f
cmp dword [ebp - 0xc], 0
jne short loc_0001a71f  ; jne 0x1a71f
push eax
push ref_00026146  ; push 0x26146
push 0x25
push ref_00026102  ; push 0x26102
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001a71f:  ; not directly referenced
mov eax, dword [ebp - 0xc]
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001a727:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0x18]
push ebx
mov ebx, dword [ebp + 0xc]
call fcn_0001a69e  ; call 0x1a69e
mov ecx, ebx
shr ecx, 1
and ecx, 0x7f
push edx
push dword [ebp + 0x14]
lea edx, [ebp + 0x10]
push edx
mov edx, ebx
shr edx, 0x16
movzx ebx, bh
and edx, 1
push edx
push dword [ebp + 8]
push ebx
push ecx
push eax
call dword [eax]  ; ucall
add esp, 0x20
test esi, esi
je short loc_0001a763  ; je 0x1a763
mov dword [esi], eax

loc_0001a763:  ; not directly referenced
mov eax, dword [ebp + 0x10]
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0001a76d:
push ebp
mov ebp, esp
sub esp, 0x10
movzx eax, byte [ebp + 8]
push eax
push 0x80
call fcn_00018e26  ; call 0x18e26
mov eax, dword [ebp + 8]
leave
ret

fcn_0001a787:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x10
movzx eax, byte [ebp + 8]
push eax
push 0x80
call fcn_00018e26  ; call 0x18e26
mov eax, dword [ebp + 8]
leave
ret

fcn_0001a7a1:  ; not directly referenced
push ebp
xor eax, eax
mov ebp, esp
pop ebp
ret

fcn_0001a7a8:  ; not directly referenced
push ebp
xor eax, eax
mov ebp, esp
pop ebp
ret

fcn_0001a7af:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00017cc7  ; jmp 0x17cc7

fcn_0001a7be:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00017cfe  ; jmp 0x17cfe

fcn_0001a7cd:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00017d8a  ; jmp 0x17d8a

fcn_0001a7dc:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00017e14  ; jmp 0x17e14

fcn_0001a7eb:  ; not directly referenced
push ebp
mov ebp, esp
movzx eax, byte [ebp + 0x18]
mov dword [ebp + 0xc], eax
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00017ce1  ; jmp 0x17ce1

fcn_0001a801:  ; not directly referenced
push ebp
mov ebp, esp
movzx eax, word [ebp + 0x18]
mov dword [ebp + 0xc], eax
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00017d40  ; jmp 0x17d40

fcn_0001a817:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x18]
mov dword [ebp + 0xc], eax
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00017dcb  ; jmp 0x17dcb

fcn_0001a82c:  ; not directly referenced
push ebp
mov ebp, esp
mov ecx, dword [ebp + 0x10]
mov eax, dword [ebp + 0x18]
mov edx, dword [ebp + 0x1c]
mov dword [ebp + 8], ecx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
pop ebp
jmp near fcn_00017e64  ; jmp 0x17e64

fcn_0001a847:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00018e1d  ; jmp 0x18e1d

fcn_0001a856:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00018e32  ; jmp 0x18e32

fcn_0001a865:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00018ea0  ; jmp 0x18ea0

fcn_0001a874:  ; not directly referenced
push ebp
mov ebp, esp
movzx eax, byte [ebp + 0x18]
mov dword [ebp + 0xc], eax
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00018e26  ; jmp 0x18e26

fcn_0001a88a:  ; not directly referenced
push ebp
mov ebp, esp
movzx eax, word [ebp + 0x18]
mov dword [ebp + 0xc], eax
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00018e63  ; jmp 0x18e63

fcn_0001a8a0:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x18]
mov dword [ebp + 0xc], eax
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00018ed3  ; jmp 0x18ed3

fcn_0001a8b5:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00017c73  ; jmp 0x17c73

fcn_0001a8c4:  ; not directly referenced
push ebp
mov ebp, esp
mov ecx, dword [ebp + 0x10]
mov eax, dword [ebp + 0x18]
mov edx, dword [ebp + 0x1c]
mov dword [ebp + 8], ecx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
pop ebp
jmp near fcn_00017c9d  ; jmp 0x17c9d

fcn_0001a8df:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 0x10]
cmp dword [ebp + 0x1c], 0
mov ecx, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov dword [ebp - 0x1c], eax
mov edi, dword [ebp + 0x14]
mov eax, 0x80000002
mov ebx, dword [ebp + 0x18]
je loc_0001a98c  ; je 0x1a98c
cmp esi, 0xb
ja short loc_0001a98c  ; ja 0x1a98c
lea edx, [esi - 4]
cmp edx, 3
mov edx, 1
cmovbe ebx, edx
and esi, 3
cmp esi, 3
jne short loc_0001a928  ; jne 0x1a928
test cl, cl
je short loc_0001a98c  ; je 0x1a98c

loc_0001a928:  ; not directly referenced
mov eax, 0xffff
xor edx, edx
test cl, cl
je short loc_0001a938  ; je 0x1a938
or eax, 0xffffffff
xor edx, edx

loc_0001a938:  ; not directly referenced
test ebx, ebx
jne short loc_0001a94e  ; jne 0x1a94e
cmp edi, edx
jb short loc_0001a982  ; jb 0x1a982
ja short loc_0001a947  ; ja 0x1a947

loc_0001a942:  ; not directly referenced
cmp dword [ebp - 0x1c], eax
jbe short loc_0001a982  ; jbe 0x1a982

loc_0001a947:  ; not directly referenced
mov eax, 0x80000003
jmp short loc_0001a98c  ; jmp 0x1a98c

loc_0001a94e:  ; not directly referenced
push ecx
push esi
push edx
push eax
call fcn_0001718b  ; call 0x1718b
lea ecx, [ebx - 1]
add esp, 0x10
cmp edx, 0
jbe short loc_0001a986  ; jbe 0x1a986

loc_0001a962:  ; not directly referenced
push ecx
mov ecx, ebx
xor ebx, ebx
sub eax, ecx
sbb edx, ebx
add eax, 1
push esi
adc edx, 0
push edx
push eax
call fcn_0001fd4c  ; call 0x1fd4c
add esp, 0x10
cmp edi, edx
ja short loc_0001a947  ; ja 0x1a947
jae short loc_0001a942  ; jae 0x1a942

loc_0001a982:  ; not directly referenced
xor eax, eax
jmp short loc_0001a98c  ; jmp 0x1a98c

loc_0001a986:  ; not directly referenced
cmp eax, ecx
jb short loc_0001a947  ; jb 0x1a947
jmp short loc_0001a962  ; jmp 0x1a962

loc_0001a98c:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001a994:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x24
mov ebx, dword [ebp + 0x20]
mov edi, dword [ebp + 0x18]
mov esi, dword [ebp + 0x14]
mov edx, dword [ebp + 0x10]
push ebx
push dword [ebp + 0x1c]
mov dword [ebp - 0x1c], edx
push edi
push esi
push edx
push 1
call fcn_0001a8df  ; call 0x1a8df
add esp, 0x20
test eax, eax
js loc_0001aab9  ; js 0x1aab9
mov edx, dword [ebp - 0x1c]
mov dword [ebp - 0x24], 0
mov al, byte [edx + ref_0002953c]  ; mov al, byte [edx + 0x2953c]
mov byte [ebp - 0x1e], al
mov eax, edx
and eax, 3
mov dword [ebp - 0x1c], eax
movzx eax, byte [eax + ref_00029548]  ; movzx eax, byte [eax + 0x29548]
dec eax
test ebx, eax
movzx eax, byte [edx + ref_00029548]  ; movzx eax, byte [edx + 0x29548]
sete byte [ebp - 0x1d]
mov dword [ebp - 0x28], eax

loc_0001a9f8:  ; not directly referenced
cmp dword [ebp + 0x1c], 0
je loc_0001aab7  ; je 0x1aab7
cmp dword [ebp - 0x1c], 0
jne short loc_0001aa18  ; jne 0x1aa18
sub esp, 0xc
push esi
call fcn_00017cc7  ; call 0x17cc7
mov byte [ebx], al
jmp near loc_0001aaa0  ; jmp 0x1aaa0

loc_0001aa18:  ; not directly referenced
cmp dword [ebp - 0x1c], 1
jne short loc_0001aa49  ; jne 0x1aa49
cmp byte [ebp - 0x1d], 0
je short loc_0001aa32  ; je 0x1aa32
sub esp, 0xc
push esi
call fcn_00017cfe  ; call 0x17cfe
mov word [ebx], ax
jmp short loc_0001aaa0  ; jmp 0x1aaa0

loc_0001aa32:  ; not directly referenced
sub esp, 0xc
push esi
call fcn_00017cfe  ; call 0x17cfe
pop edx
pop ecx
movzx eax, ax
push eax
push ebx
call fcn_00017207  ; call 0x17207
jmp short loc_0001aaa0  ; jmp 0x1aaa0

loc_0001aa49:  ; not directly referenced
cmp dword [ebp - 0x1c], 2
jne short loc_0001aa76  ; jne 0x1aa76
cmp byte [ebp - 0x1d], 0
je short loc_0001aa62  ; je 0x1aa62
sub esp, 0xc
push esi
call fcn_00017d8a  ; call 0x17d8a
mov dword [ebx], eax
jmp short loc_0001aaa0  ; jmp 0x1aaa0

loc_0001aa62:  ; not directly referenced
sub esp, 0xc
push esi
call fcn_00017d8a  ; call 0x17d8a
pop edx
pop ecx
push eax
push ebx
call fcn_000172ee  ; call 0x172ee
jmp short loc_0001aaa0  ; jmp 0x1aaa0

loc_0001aa76:  ; not directly referenced
cmp byte [ebp - 0x1d], 0
je short loc_0001aa8c  ; je 0x1aa8c
sub esp, 0xc
push esi
call fcn_00017e14  ; call 0x17e14
mov dword [ebx], eax
mov dword [ebx + 4], edx
jmp short loc_0001aaa0  ; jmp 0x1aaa0

loc_0001aa8c:  ; not directly referenced
sub esp, 0xc
push esi
call fcn_00017e14  ; call 0x17e14
add esp, 0xc
push edx
push eax
push ebx
call fcn_00017360  ; call 0x17360

loc_0001aaa0:  ; not directly referenced
movzx eax, byte [ebp - 0x1e]
add esp, 0x10
add esi, dword [ebp - 0x28]
adc edi, dword [ebp - 0x24]
dec dword [ebp + 0x1c]
add ebx, eax
jmp near loc_0001a9f8  ; jmp 0x1a9f8

loc_0001aab7:  ; not directly referenced
xor eax, eax

loc_0001aab9:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001aac1:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x24
mov ebx, dword [ebp + 0x20]
mov edi, dword [ebp + 0x18]
mov esi, dword [ebp + 0x14]
mov edx, dword [ebp + 0x10]
push ebx
push dword [ebp + 0x1c]
mov dword [ebp - 0x1c], edx
push edi
push esi
push edx
push 1
call fcn_0001a8df  ; call 0x1a8df
add esp, 0x20
test eax, eax
js loc_0001abce  ; js 0x1abce
mov edx, dword [ebp - 0x1c]
mov dword [ebp - 0x24], 0
mov al, byte [edx + ref_0002953c]  ; mov al, byte [edx + 0x2953c]
mov byte [ebp - 0x1e], al
mov eax, edx
and eax, 3
mov dword [ebp - 0x1c], eax
movzx eax, byte [eax + ref_00029548]  ; movzx eax, byte [eax + 0x29548]
dec eax
test ebx, eax
movzx eax, byte [edx + ref_00029548]  ; movzx eax, byte [edx + 0x29548]
sete byte [ebp - 0x1d]
mov dword [ebp - 0x28], eax

loc_0001ab25:  ; not directly referenced
cmp dword [ebp + 0x1c], 0
je loc_0001abcc  ; je 0x1abcc
cmp dword [ebp - 0x1c], 0
jne short loc_0001ab43  ; jne 0x1ab43
push eax
push eax
movzx eax, byte [ebx]
push eax
push esi
call fcn_00017ce1  ; call 0x17ce1
jmp short loc_0001abb5  ; jmp 0x1abb5

loc_0001ab43:  ; not directly referenced
cmp dword [ebp - 0x1c], 1
jne short loc_0001ab6d  ; jne 0x1ab6d
cmp byte [ebp - 0x1d], 0
je short loc_0001ab56  ; je 0x1ab56
push eax
push eax
movzx eax, word [ebx]
jmp short loc_0001ab64  ; jmp 0x1ab64

loc_0001ab56:  ; not directly referenced
sub esp, 0xc
push ebx
call fcn_000171d5  ; call 0x171d5
pop edx
pop ecx
movzx eax, ax

loc_0001ab64:  ; not directly referenced
push eax
push esi
call fcn_00017d40  ; call 0x17d40
jmp short loc_0001abb5  ; jmp 0x1abb5

loc_0001ab6d:  ; not directly referenced
cmp dword [ebp - 0x1c], 2
jne short loc_0001ab93  ; jne 0x1ab93
cmp byte [ebp - 0x1d], 0
je short loc_0001ab7f  ; je 0x1ab7f
push eax
push eax
push dword [ebx]
jmp short loc_0001ab8b  ; jmp 0x1ab8b

loc_0001ab7f:  ; not directly referenced
sub esp, 0xc
push ebx
call fcn_000172ba  ; call 0x172ba
pop edx
pop ecx
push eax

loc_0001ab8b:  ; not directly referenced
push esi
call fcn_00017dcb  ; call 0x17dcb
jmp short loc_0001abb5  ; jmp 0x1abb5

loc_0001ab93:  ; not directly referenced
cmp byte [ebp - 0x1d], 0
je short loc_0001aba1  ; je 0x1aba1
push eax
push dword [ebx + 4]
push dword [ebx]
jmp short loc_0001abaf  ; jmp 0x1abaf

loc_0001aba1:  ; not directly referenced
sub esp, 0xc
push ebx
call fcn_00017329  ; call 0x17329
add esp, 0xc
push edx
push eax

loc_0001abaf:  ; not directly referenced
push esi
call fcn_00017e64  ; call 0x17e64

loc_0001abb5:  ; not directly referenced
movzx eax, byte [ebp - 0x1e]
add esp, 0x10
add esi, dword [ebp - 0x28]
adc edi, dword [ebp - 0x24]
dec dword [ebp + 0x1c]
add ebx, eax
jmp near loc_0001ab25  ; jmp 0x1ab25

loc_0001abcc:  ; not directly referenced
xor eax, eax

loc_0001abce:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001abd6:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x24
mov ebx, dword [ebp + 0x20]
mov edi, dword [ebp + 0x18]
mov esi, dword [ebp + 0x14]
mov edx, dword [ebp + 0x10]
push ebx
push dword [ebp + 0x1c]
mov dword [ebp - 0x1c], edx
push edi
push esi
push edx
push 0
call fcn_0001a8df  ; call 0x1a8df
add esp, 0x20
test eax, eax
js loc_0001accc  ; js 0x1accc
mov edx, dword [ebp - 0x1c]
mov dword [ebp - 0x24], 0
mov al, byte [edx + ref_0002953c]  ; mov al, byte [edx + 0x2953c]
mov byte [ebp - 0x1e], al
mov eax, edx
and eax, 3
mov dword [ebp - 0x1c], eax
movzx eax, byte [eax + ref_00029548]  ; movzx eax, byte [eax + 0x29548]
dec eax
test ebx, eax
movzx eax, byte [edx + ref_00029548]  ; movzx eax, byte [edx + 0x29548]
sete byte [ebp - 0x1d]
mov dword [ebp - 0x28], eax

loc_0001ac3a:  ; not directly referenced
cmp dword [ebp + 0x1c], 0
je loc_0001acca  ; je 0x1acca
cmp dword [ebp - 0x1c], 0
jne short loc_0001ac57  ; jne 0x1ac57
sub esp, 0xc
push esi
call fcn_00018e1d  ; call 0x18e1d
mov byte [ebx], al
jmp short loc_0001acb3  ; jmp 0x1acb3

loc_0001ac57:  ; not directly referenced
cmp dword [ebp - 0x1c], 1
jne short loc_0001ac88  ; jne 0x1ac88
cmp byte [ebp - 0x1d], 0
je short loc_0001ac71  ; je 0x1ac71
sub esp, 0xc
push esi
call fcn_00018e32  ; call 0x18e32
mov word [ebx], ax
jmp short loc_0001acb3  ; jmp 0x1acb3

loc_0001ac71:  ; not directly referenced
sub esp, 0xc
push esi
call fcn_00018e32  ; call 0x18e32
pop edx
pop ecx
movzx eax, ax
push eax
push ebx
call fcn_00017207  ; call 0x17207
jmp short loc_0001acb3  ; jmp 0x1acb3

loc_0001ac88:  ; not directly referenced
cmp dword [ebp - 0x1c], 2
jne short loc_0001acb6  ; jne 0x1acb6
cmp byte [ebp - 0x1d], 0
je short loc_0001aca1  ; je 0x1aca1
sub esp, 0xc
push esi
call fcn_00018ea0  ; call 0x18ea0
mov dword [ebx], eax
jmp short loc_0001acb3  ; jmp 0x1acb3

loc_0001aca1:  ; not directly referenced
sub esp, 0xc
push esi
call fcn_00018ea0  ; call 0x18ea0
pop edx
pop ecx
push eax
push ebx
call fcn_000172ee  ; call 0x172ee

loc_0001acb3:  ; not directly referenced
add esp, 0x10

loc_0001acb6:  ; not directly referenced
movzx eax, byte [ebp - 0x1e]
add esi, dword [ebp - 0x28]
adc edi, dword [ebp - 0x24]
dec dword [ebp + 0x1c]
add ebx, eax
jmp near loc_0001ac3a  ; jmp 0x1ac3a

loc_0001acca:  ; not directly referenced
xor eax, eax

loc_0001accc:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001acd4:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x24
mov ebx, dword [ebp + 0x20]
mov edi, dword [ebp + 0x18]
mov esi, dword [ebp + 0x14]
mov edx, dword [ebp + 0x10]
push ebx
push dword [ebp + 0x1c]
mov dword [ebp - 0x1c], edx
push edi
push esi
push edx
push 0
call fcn_0001a8df  ; call 0x1a8df
add esp, 0x20
test eax, eax
js loc_0001adb6  ; js 0x1adb6
mov edx, dword [ebp - 0x1c]
mov dword [ebp - 0x24], 0
mov al, byte [edx + ref_0002953c]  ; mov al, byte [edx + 0x2953c]
mov byte [ebp - 0x1e], al
mov eax, edx
and eax, 3
mov dword [ebp - 0x1c], eax
movzx eax, byte [eax + ref_00029548]  ; movzx eax, byte [eax + 0x29548]
dec eax
test ebx, eax
movzx eax, byte [edx + ref_00029548]  ; movzx eax, byte [edx + 0x29548]
sete byte [ebp - 0x1d]
mov dword [ebp - 0x28], eax

loc_0001ad38:  ; not directly referenced
cmp dword [ebp + 0x1c], 0
je short loc_0001adb4  ; je 0x1adb4
cmp dword [ebp - 0x1c], 0
jne short loc_0001ad52  ; jne 0x1ad52
push eax
push eax
movzx eax, byte [ebx]
push eax
push esi
call fcn_00018e26  ; call 0x18e26
jmp short loc_0001ada0  ; jmp 0x1ada0

loc_0001ad52:  ; not directly referenced
cmp dword [ebp - 0x1c], 1
jne short loc_0001ad7c  ; jne 0x1ad7c
cmp byte [ebp - 0x1d], 0
je short loc_0001ad65  ; je 0x1ad65
push eax
push eax
movzx eax, word [ebx]
jmp short loc_0001ad73  ; jmp 0x1ad73

loc_0001ad65:  ; not directly referenced
sub esp, 0xc
push ebx
call fcn_000171d5  ; call 0x171d5
pop edx
pop ecx
movzx eax, ax

loc_0001ad73:  ; not directly referenced
push eax
push esi
call fcn_00018e63  ; call 0x18e63
jmp short loc_0001ada0  ; jmp 0x1ada0

loc_0001ad7c:  ; not directly referenced
cmp dword [ebp - 0x1c], 2
jne short loc_0001ada3  ; jne 0x1ada3
cmp byte [ebp - 0x1d], 0
je short loc_0001ad8e  ; je 0x1ad8e
push eax
push eax
push dword [ebx]
jmp short loc_0001ad9a  ; jmp 0x1ad9a

loc_0001ad8e:  ; not directly referenced
sub esp, 0xc
push ebx
call fcn_000172ba  ; call 0x172ba
pop edx
pop ecx
push eax

loc_0001ad9a:  ; not directly referenced
push esi
call fcn_00018ed3  ; call 0x18ed3

loc_0001ada0:  ; not directly referenced
add esp, 0x10

loc_0001ada3:  ; not directly referenced
movzx eax, byte [ebp - 0x1e]
add esi, dword [ebp - 0x28]
adc edi, dword [ebp - 0x24]
dec dword [ebp + 0x1c]
add ebx, eax
jmp short loc_0001ad38  ; jmp 0x1ad38

loc_0001adb4:  ; not directly referenced
xor eax, eax

loc_0001adb6:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001adbe:
push ebp
mov ebp, esp
push ebx
sub esp, 0x10
push dword [ebp + 8]
call fcn_00019824  ; call 0x19824
mov edx, dword [ebp + 0xc]
add esp, 0x10
mov edx, dword [edx]
mov dword [edx + 0x60], ref_00029560  ; mov dword [edx + 0x60], 0x29560
cmp eax, 0x80000014
jne short loc_0001ae00  ; jne 0x1ae00
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001ae54  ; je 0x1ae54
push ecx
push ref_00029560  ; push 0x29560
push ref_0002615f  ; push 0x2615f
push 0x40
call fcn_000153f7  ; call 0x153f7
jmp short loc_0001ae51  ; jmp 0x1ae51

loc_0001ae00:
sub esp, 0xc
push ref_00029554  ; push 0x29554
call fcn_00019667  ; call 0x19667
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0001ae54  ; je 0x1ae54
test ebx, ebx
jns short loc_0001ae54  ; jns 0x1ae54
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001ae3c  ; je 0x1ae3c
push edx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001ae3c:
push eax
push ref_00020664  ; push 0x20664
push 0x35c
push ref_0002619d  ; push 0x2619d
call fcn_000153fc  ; call 0x153fc

loc_0001ae51:
add esp, 0x10

loc_0001ae54:
xor eax, eax
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001ae5b:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov al, byte [ebp + 0xc]
mov esi, dword [ebp + 8]
mov ebx, dword [ebp + 0x10]
mov edi, dword [ebp + 0x18]
mov byte [ebp - 0x28], al
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001ae9e  ; je 0x1ae9e
mov eax, dword [ebp - 0x28]
sub esp, 0xc
push dword [ebp + 0x14]
and eax, 0x7f
push ebx
add eax, eax
push eax
push ref_000261ce  ; push 0x261ce
push 0x80000
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_0001ae9e:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001aec7  ; je 0x1aec7
cmp dword [esi - 0x18], 0x626d7370
je short loc_0001aec7  ; je 0x1aec7
push ecx
push ref_00026219  ; push 0x26219
push 0x43
push ref_0002622e  ; push 0x2622e
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
jmp short loc_0001aeca  ; jmp 0x1aeca

loc_0001aec7:  ; not directly referenced
sub esi, 0x18

loc_0001aeca:  ; not directly referenced
push edx
mov eax, edi
push edx
movzx edi, al
mov al, byte [ebp - 0x28]
push dword [ebp + 0x20]
push dword [ebp + 0x1c]
push edi
push dword [ebp + 0x14]
push ebx
push eax
call fcn_0001b324  ; call 0x1b324
add esp, 0x14
push esi
mov ebx, eax
call fcn_0001b1fc  ; call 0x1b1fc
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_0001af10  ; je 0x1af10
push eax
push eax
push ref_00026258  ; push 0x26258
push 0x80000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001af10:  ; not directly referenced
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001af1a:
push ebp
mov ebp, esp
push esi
push ebx
sub esp, 0x10
mov ebx, dword [ebp + 0xc]
mov eax, dword [ebp + 8]
mov dword [ebx], 0x626d7370
mov dword [ebx + 4], eax
lea eax, [ebp - 0xc]
push eax
push 0
push 0
push ref_0002912c  ; push 0x2912c
call fcn_00019699  ; call 0x19699
mov esi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0001af8a  ; je 0x1af8a
test esi, esi
jns short loc_0001af8a  ; jns 0x1af8a
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001af72  ; je 0x1af72
push edx
push esi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001af72:
push eax
push ref_00020664  ; push 0x20664
push 0xee
push ref_0002622e  ; push 0x2622e
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001af8a:
mov eax, dword [ebp - 0xc]
movzx edx, word [eax + 0x388]
add eax, 0x38e
mov dword [ebx + 8], edx
mov dl, byte [eax - 1]
mov dword [ebx + 0xce], eax
lea eax, [ebx + 0x18]
mov dword [ebx + 0xc], 0x80000010
mov dword [ebx + 0x10], ref_0002900c  ; mov dword [ebx + 0x10], 0x2900c
mov byte [ebx + 0xcd], dl
mov dword [ebx + 0x14], eax
mov dword [ebx + 0x18], fcn_0001ae5b  ; mov dword [ebx + 0x18], 0x1ae5b
mov dword [ebx + 0x1c], fcn_0001b1de  ; mov dword [ebx + 0x1c], 0x1b1de
mov dword [ebx + 0x20], fcn_0001b1e8  ; mov dword [ebx + 0x20], 0x1b1e8
mov dword [ebx + 0x24], fcn_0001b1f2  ; mov dword [ebx + 0x24], 0x1b1f2
mov dword [ebx + 0x38], 0x80000020
mov dword [ebx + 0x3c], ref_00028fec  ; mov dword [ebx + 0x3c], 0x28fec
mov dword [ebx + 0x40], fcn_0001b195  ; mov dword [ebx + 0x40], 0x1b195
mov byte [ebx + 0x44], 0
mov byte [ebx + 0xd2], 0
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0001b002:
push ebp
mov ebp, esp
push esi
push ebx
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001b021  ; je 0x1b021
push eax
push eax
push ref_00026270  ; push 0x26270
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001b021:
sub esp, 0xc
push 0x11b
call fcn_00019c79  ; call 0x19c79
add esp, 0x10
mov ebx, eax
test eax, eax
jne short loc_0001b05a  ; jne 0x1b05a
call fcn_000153e9  ; call 0x153e9
mov ebx, 0x80000009
test al, al
je loc_0001b18c  ; je 0x1b18c
push eax
push eax
push ref_00026290  ; push 0x26290
push 0x80000000
jmp near loc_0001b184  ; jmp 0x1b184

loc_0001b05a:
push eax
push eax
push ebx
push dword [ebp + 0xc]
call fcn_0001af1a  ; call 0x1af1a
add esp, 0xc
push 3
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
add esp, 0xc
push dword [ebx + 8]
push 0xffe0
mov esi, eax
lea eax, [eax + 0x20]
push eax
call fcn_00018aa4  ; call 0x18aa4
pop eax
pop edx
lea eax, [esi + 4]
add esi, 0x40
push 1
push eax
call fcn_0001866c  ; call 0x1866c
pop ecx
pop eax
push 0x10
push esi
call fcn_0001866c  ; call 0x1866c
pop eax
pop edx
push 8
push esi
call fcn_0001866c  ; call 0x1866c
add esp, 0xc
push 1
push 0xf9
push esi
call fcn_000186c6  ; call 0x186c6
pop ecx
pop esi
push 0xff
push 0
call fcn_0001b277  ; call 0x1b277
lea eax, [ebx + 0xc]
mov dword [esp], eax
call fcn_00019667  ; call 0x19667
mov esi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0001b11d  ; je 0x1b11d
test esi, esi
jns short loc_0001b11d  ; jns 0x1b11d
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001b105  ; je 0x1b105
push eax
push esi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001b105:
push esi
push ref_00020664  ; push 0x20664
push 0xc4
push ref_0002622e  ; push 0x2622e
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001b11d:
sub esp, 0xc
add ebx, 0x38
push ebx
call fcn_000196bb  ; call 0x196bb
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0001b170  ; je 0x1b170
test ebx, ebx
jns short loc_0001b170  ; jns 0x1b170
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001b158  ; je 0x1b158
push ecx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001b158:
push edx
push ref_00020664  ; push 0x20664
push 0xca
push ref_0002622e  ; push 0x2622e
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001b170:
call fcn_000153e9  ; call 0x153e9
xor ebx, ebx
test al, al
je short loc_0001b18c  ; je 0x1b18c
push eax
push eax
push ref_000262b9  ; push 0x262b9
push 0x40

loc_0001b184:
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001b18c:
lea esp, [ebp - 8]
mov eax, ebx
pop ebx
pop esi
pop ebp
ret

fcn_0001b195:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push ecx
mov ebx, dword [ebp + 0xc]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001b1c9  ; je 0x1b1c9
cmp dword [ebx - 0x38], 0x626d7370
je short loc_0001b1c9  ; je 0x1b1c9
push edx
push ref_00026219  ; push 0x26219
push 0x120
push ref_0002622e  ; push 0x2622e
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
jmp short loc_0001b1cc  ; jmp 0x1b1cc

loc_0001b1c9:  ; not directly referenced
sub ebx, 0x38

loc_0001b1cc:  ; not directly referenced
push eax
push eax
push ebx
push dword [ebp + 8]
call fcn_0001af1a  ; call 0x1af1a
xor eax, eax
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001b1de:  ; not directly referenced
push ebp
mov eax, 0x80000003
mov ebp, esp
pop ebp
ret

fcn_0001b1e8:  ; not directly referenced
push ebp
mov eax, 0x80000003
mov ebp, esp
pop ebp
ret

fcn_0001b1f2:  ; not directly referenced
push ebp
mov eax, 0x80000003
mov ebp, esp
pop ebp
ret

fcn_0001b1fc:  ; not directly referenced
push ebp
mov ebp, esp
pop ebp
ret

fcn_0001b201:
push ebp
mov ebp, esp
push ebx
sub esp, 8
push 3
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0x20
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
and ebx, 0xffe0
add esp, 0x10
test al, al
je short loc_0001b253  ; je 0x1b253
test ebx, ebx
je short loc_0001b23e  ; je 0x1b23e
cmp ebx, 0xffe0
jne short loc_0001b253  ; jne 0x1b253

loc_0001b23e:
push eax
push ref_000262d7  ; push 0x262d7
push 0x2c
push ref_00026305  ; push 0x26305
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001b253:
mov eax, ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001b25a:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_0001b201  ; call 0x1b201
movzx ebx, bl
add eax, ebx
mov dword [ebp + 8], eax
pop edx
pop ebx
pop ebp
jmp near fcn_00018e1d  ; jmp 0x18e1d

fcn_0001b277:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
call fcn_0001b201  ; call 0x1b201
mov edx, esi
movzx ebx, bl
movzx esi, dl
mov dword [ebp + 0xc], esi
add eax, ebx
mov dword [ebp + 8], eax
pop ebx
pop esi
pop ebp
jmp near fcn_00018e26  ; jmp 0x18e26

fcn_0001b29f:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
mov ebx, 0x186a0
push eax

loc_0001b2a9:  ; not directly referenced
sub esp, 0xc
push 0
call fcn_0001b25a  ; call 0x1b25a
mov edx, dword [ebp + 8]
add esp, 0x10
mov byte [edx], al
test al, 0x8e
jne short loc_0001b2d3  ; jne 0x1b2d3
sub esp, 0xc
push 0xa
call fcn_0001ba3f  ; call 0x1ba3f
add esp, 0x10
dec ebx
jne short loc_0001b2a9  ; jne 0x1b2a9
xor eax, eax
jmp short loc_0001b2d5  ; jmp 0x1b2d5

loc_0001b2d3:  ; not directly referenced
mov al, 1

loc_0001b2d5:  ; not directly referenced
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001b2da:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
mov ebx, 0x80000012
sub esp, 0x10
push 0
call fcn_0001b25a  ; call 0x1b25a
add esp, 0x10
test al, 0x40
jne short loc_0001b31d  ; jne 0x1b31d
test al, 1
je short loc_0001b30b  ; je 0x1b30b
push ecx
push ecx
push 0xff
push 0
call fcn_0001b277  ; call 0x1b277
add esp, 0x10
jmp short loc_0001b31d  ; jmp 0x1b31d

loc_0001b30b:  ; not directly referenced
push edx
movzx eax, al
push edx
xor ebx, ebx
push eax
push 0
call fcn_0001b277  ; call 0x1b277
add esp, 0x10

loc_0001b31d:  ; not directly referenced
mov eax, ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001b324:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x3c
mov al, byte [ebp + 0x14]
cmp dword [ebp + 0x10], 1
mov edi, dword [ebp + 0x18]
mov byte [ebp - 0x2f], al
jbe short loc_0001b34e  ; jbe 0x1b34e
cmp dword [ebp + 0x1c], 0
je loc_0001b850  ; je 0x1b850
test edi, edi
je loc_0001b850  ; je 0x1b850

loc_0001b34e:  ; not directly referenced
call fcn_0001b2da  ; call 0x1b2da
test eax, eax
js loc_0001b855  ; js 0x1b855
mov al, byte [ebp + 8]
mov dword [ebp - 0x34], 3
mov byte [ebp - 0x2d], 0
lea eax, [eax + eax + 1]
mov byte [ebp - 0x2e], al

loc_0001b370:  ; not directly referenced
mov al, byte [ebp - 0x2e]
cmp dword [ebp + 0x10], 0xb
mov byte [ebp - 0x2c], al
mov al, byte [ebp + 0xc]
mov byte [ebp - 0x30], al
ja loc_0001b525  ; ja 0x1b525
mov eax, dword [ebp + 0x10]
jmp dword [eax*4 + ref_00020510]  ; ujmp: jmp dword [eax*4 + 0x20510]

loc_0001b390:  ; not directly referenced
mov al, byte [ebp - 0x2e]
dec eax
mov byte [ebp - 0x2c], al

loc_0001b397:  ; not directly referenced
cmp byte [ebp - 0x2f], 1
je loc_0001b515  ; je 0x1b515
xor esi, esi
jmp near loc_0001b511  ; jmp 0x1b511

loc_0001b3a8:  ; not directly referenced
mov eax, dword [ebp + 0x1c]
mov al, byte [eax]
mov byte [ebp - 0x30], al
mov al, byte [ebp - 0x2e]
dec eax
mov byte [ebp - 0x2c], al

loc_0001b3b7:  ; not directly referenced
cmp dword [edi], 1
mov esi, 4
mov dword [edi], 1
sbb ebx, ebx
and ebx, 0x80000005
jmp near loc_0001b4d3  ; jmp 0x1b4d3

loc_0001b3d2:  ; not directly referenced
mov eax, dword [ebp + 0x1c]
push ecx
push ecx
movzx eax, byte [eax]
push eax
push 5
call fcn_0001b277  ; call 0x1b277
mov al, byte [ebp - 0x2e]
add esp, 0x10
mov dword [edi], 1
dec eax
mov byte [ebp - 0x2c], al

loc_0001b3f2:  ; not directly referenced
mov eax, dword [edi]
test eax, eax
je loc_0001b502  ; je 0x1b502
cmp eax, 1
je loc_0001b50c  ; je 0x1b50c
cmp eax, 0x100
ja loc_0001b525  ; ja 0x1b525
cmp byte [ebp - 0x2f], 1
je loc_0001b515  ; je 0x1b515
mov esi, 0x18
jmp near loc_0001b511  ; jmp 0x1b511

loc_0001b424:  ; not directly referenced
mov al, byte [ebp - 0x2e]
dec eax
mov byte [ebp - 0x2c], al
push eax
push eax
mov eax, dword [ebp + 0x1c]
movzx eax, byte [eax + 1]
push eax
push 6
call fcn_0001b277  ; call 0x1b277
pop eax
mov eax, dword [ebp + 0x1c]
pop edx
movzx eax, byte [eax]
push eax
push 5
call fcn_0001b277  ; call 0x1b277
add esp, 0x10

loc_0001b44f:  ; not directly referenced
cmp dword [edi], 2
mov esi, 0xc
mov dword [edi], 2
sbb ebx, ebx
and ebx, 0x80000005
jmp short loc_0001b4d3  ; jmp 0x1b4d3

loc_0001b467:  ; not directly referenced
push eax
push eax
movzx eax, byte [edi]
push eax
push 5
call fcn_0001b277  ; call 0x1b277
mov al, byte [ebp - 0x2e]
add esp, 0x10
dec eax
mov byte [ebp - 0x2c], al
mov al, byte [edi]
mov byte [ebp - 0x2d], al

loc_0001b483:  ; not directly referenced
mov eax, dword [edi]
dec eax
cmp eax, 0x1f
ja loc_0001b525  ; ja 0x1b525
mov esi, 0x14
jmp near loc_0001b51f  ; jmp 0x1b51f

loc_0001b499:  ; not directly referenced
mov eax, dword [ebp + 0x1c]
push ebx
push ebx
movzx eax, byte [eax + 1]
push eax
push 6
call fcn_0001b277  ; call 0x1b277
pop esi
mov esi, 0x10
pop eax
mov eax, dword [ebp + 0x1c]
movzx eax, byte [eax]
push eax
push 5
call fcn_0001b277  ; call 0x1b277
add esp, 0x10
cmp dword [edi], 2
mov dword [edi], 2
sbb ebx, ebx
and ebx, 0x80000005

loc_0001b4d3:  ; not directly referenced
xor eax, eax
test ebx, ebx
jns short loc_0001b52f  ; jns 0x1b52f
jmp near loc_0001b825  ; jmp 0x1b825

loc_0001b4de:  ; not directly referenced
mov eax, dword [edi]
dec eax
cmp eax, 0x1f
ja short loc_0001b525  ; ja 0x1b525
push ecx
mov esi, 0x1c
push ecx
movzx eax, byte [edi]
push eax
push 5
call fcn_0001b277  ; call 0x1b277
mov al, byte [edi]
add esp, 0x10
mov byte [ebp - 0x2d], al
jmp short loc_0001b51f  ; jmp 0x1b51f

loc_0001b502:  ; not directly referenced
mov ebx, 0x80000005
jmp near loc_0001b825  ; jmp 0x1b825

loc_0001b50c:  ; not directly referenced
mov esi, 8

loc_0001b511:  ; not directly referenced
xor eax, eax
jmp short loc_0001b521  ; jmp 0x1b521

loc_0001b515:  ; not directly referenced
mov ebx, 0x80000003
jmp near loc_0001b825  ; jmp 0x1b825

loc_0001b51f:  ; not directly referenced
mov al, 2

loc_0001b521:  ; not directly referenced
xor ebx, ebx
jmp short loc_0001b52f  ; jmp 0x1b52f

loc_0001b525:  ; not directly referenced
mov ebx, 0x80000002
jmp near loc_0001b825  ; jmp 0x1b825

loc_0001b52f:  ; not directly referenced
mov dl, al
or edx, 1
cmp byte [ebp - 0x2f], 1
cmove eax, edx
push edx
movzx eax, al
push edx
push eax
push 0xd
call fcn_0001b277  ; call 0x1b277
mov dword [esp], 2
call fcn_0001b25a  ; call 0x1b25a
mov eax, dword [ebp + 0x10]
add esp, 0x10
and eax, 0xfffffffd
cmp eax, 9
je short loc_0001b57f  ; je 0x1b57f

loc_0001b562:  ; not directly referenced
movzx eax, byte [ebp - 0x2c]
push ecx
push ecx
push eax
push 4
call fcn_0001b277  ; call 0x1b277
add esp, 0x10
movzx eax, byte [ebp - 0x30]
cmp dword [ebp + 0x10], 4
jne short loc_0001b5b6  ; jne 0x1b5b6
jmp short loc_0001b5aa  ; jmp 0x1b5aa

loc_0001b57f:  ; not directly referenced
movzx ecx, byte [ebp - 0x2d]
xor eax, eax
mov dword [ebp - 0x38], ecx

loc_0001b588:  ; not directly referenced
cmp eax, dword [ebp - 0x38]
jae short loc_0001b562  ; jae 0x1b562
mov ecx, dword [ebp + 0x1c]
push edx
push edx
movzx edx, byte [ecx + eax]
mov dword [ebp - 0x3c], eax
push edx
push 7
call fcn_0001b277  ; call 0x1b277
mov eax, dword [ebp - 0x3c]
add esp, 0x10
inc eax
jmp short loc_0001b588  ; jmp 0x1b588

loc_0001b5aa:  ; not directly referenced
cmp dword [edi], 1
jbe short loc_0001b5b6  ; jbe 0x1b5b6
push ecx
push ecx
push eax
push 6
jmp short loc_0001b5bb  ; jmp 0x1b5bb

loc_0001b5b6:  ; not directly referenced
push edx
push edx
push eax
push 3

loc_0001b5bb:  ; not directly referenced
call fcn_0001b277  ; call 0x1b277
add esp, 0x10
lea eax, [esi + 0x40]
movzx esi, al
push ecx
push ecx
push esi
push 2
call fcn_0001b277  ; call 0x1b277
lea eax, [ebp - 0x19]
mov dword [esp], eax
call fcn_0001b29f  ; call 0x1b29f
add esp, 0x10
test al, al
je loc_0001b820  ; je 0x1b820
mov al, byte [ebp - 0x19]
test al, 4
je short loc_0001b612  ; je 0x1b612
sub esp, 0xc
push 0xc
call fcn_0001b25a  ; call 0x1b25a
add esp, 0x10
and eax, 1
cmp al, 1
sbb ebx, ebx
and ebx, 0xffffffec
sub ebx, 0x7fffffe5
jmp near loc_0001b825  ; jmp 0x1b825

loc_0001b612:  ; not directly referenced
test al, 8
je short loc_0001b63a  ; je 0x1b63a
push ebx
push ebx
push 8
push 0
call fcn_0001b277  ; call 0x1b277
pop esi
pop eax
push 0xff
push 0
call fcn_0001b277  ; call 0x1b277
pop eax
pop edx
push 1
push 0xc
jmp near loc_0001b7fc  ; jmp 0x1b7fc

loc_0001b63a:  ; not directly referenced
mov eax, dword [ebp + 0x10]
sub eax, 2
cmp eax, 9
ja loc_0001b7e8  ; ja 0x1b7e8
jmp dword [eax*4 + ref_00020540]  ; ujmp: jmp dword [eax*4 + 0x20540]

loc_0001b650:  ; not directly referenced
sub esp, 0xc
push 6
call fcn_0001b25a  ; call 0x1b25a
mov ecx, dword [ebp + 0x1c]
mov byte [ecx + 1], al
mov dword [esp], 5
jmp near loc_0001b727  ; jmp 0x1b727

loc_0001b66c:  ; not directly referenced
cmp dword [edi], 1
jbe loc_0001b722  ; jbe 0x1b722
xor esi, esi

loc_0001b677:  ; not directly referenced
cmp esi, dword [edi]
jae loc_0001b7e8  ; jae 0x1b7e8
sub esp, 0xc
push 7
call fcn_0001b25a  ; call 0x1b25a
mov ecx, dword [ebp + 0x1c]
add esp, 0x10
mov byte [ecx + esi], al
mov eax, dword [edi]
lea edx, [eax - 2]
cmp esi, edx
jne short loc_0001b6af  ; jne 0x1b6af
sub esp, 0xc
push 2
call fcn_0001b25a  ; call 0x1b25a
pop edx
pop ecx
or eax, 0x20
movzx eax, al
jmp short loc_0001b6c5  ; jmp 0x1b6c5

loc_0001b6af:  ; not directly referenced
dec eax
cmp esi, eax
jne short loc_0001b6d0  ; jne 0x1b6d0
sub esp, 0xc
push 2
call fcn_0001b25a  ; call 0x1b25a
pop edx
pop ecx
and eax, 0xdf

loc_0001b6c5:  ; not directly referenced
push eax
push 2
call fcn_0001b277  ; call 0x1b277
add esp, 0x10

loc_0001b6d0:  ; not directly referenced
push eax
push eax
push 0x80
push 0
call fcn_0001b277  ; call 0x1b277
mov eax, dword [edi]
add esp, 0x10
dec eax
cmp esi, eax
jae short loc_0001b71c  ; jae 0x1b71c
mov dword [ebp - 0x2c], 0x64

loc_0001b6ef:  ; not directly referenced
sub esp, 0xc
push 0
call fcn_0001b25a  ; call 0x1b25a
add esp, 0x10
test al, al
js short loc_0001b71c  ; js 0x1b71c
sub esp, 0xc
push 0xa
call fcn_0001ba3f  ; call 0x1ba3f
add esp, 0x10
dec dword [ebp - 0x2c]
jne short loc_0001b6ef  ; jne 0x1b6ef
mov ebx, 0x80000012
jmp near loc_0001b7e8  ; jmp 0x1b7e8

loc_0001b71c:  ; not directly referenced
inc esi
jmp near loc_0001b677  ; jmp 0x1b677

loc_0001b722:  ; not directly referenced
sub esp, 0xc
push 5

loc_0001b727:  ; not directly referenced
call fcn_0001b25a  ; call 0x1b25a
mov ecx, dword [ebp + 0x1c]
mov byte [ecx], al
jmp short loc_0001b741  ; jmp 0x1b741

loc_0001b733:  ; not directly referenced
push eax
push eax
push 0x80
push 0
call fcn_0001b277  ; call 0x1b277

loc_0001b741:  ; not directly referenced
add esp, 0x10
jmp near loc_0001b7e8  ; jmp 0x1b7e8

loc_0001b749:  ; not directly referenced
sub esp, 0xc
xor esi, esi
push 5
call fcn_0001b25a  ; call 0x1b25a
add esp, 0x10
mov byte [ebp - 0x2d], al
movzx edx, al
mov al, 1
cmp dword [edi], edx
jb short loc_0001b786  ; jb 0x1b786

loc_0001b764:  ; not directly referenced
cmp esi, edx
jae short loc_0001b784  ; jae 0x1b784
sub esp, 0xc
push 7
mov dword [ebp - 0x2c], edx
call fcn_0001b25a  ; call 0x1b25a
mov ecx, dword [ebp + 0x1c]
add esp, 0x10
mov edx, dword [ebp - 0x2c]
mov byte [ecx + esi], al
inc esi
jmp short loc_0001b764  ; jmp 0x1b764

loc_0001b784:  ; not directly referenced
xor eax, eax

loc_0001b786:  ; not directly referenced
test al, al
mov eax, 0x80000005
mov dword [edi], edx
cmovne ebx, eax
jmp short loc_0001b7e8  ; jmp 0x1b7e8

loc_0001b794:  ; not directly referenced
sub esp, 0xc
push 5
call fcn_0001b25a  ; call 0x1b25a
add esp, 0x10
mov byte [ebp - 0x2d], al
test al, al
je short loc_0001b7dc  ; je 0x1b7dc
movzx eax, byte [edi]
xor esi, esi
movzx edx, byte [ebp - 0x2d]
add eax, edx
cmp eax, 0x20
jg short loc_0001b7e3  ; jg 0x1b7e3

loc_0001b7b8:  ; not directly referenced
cmp esi, edx
jae short loc_0001b7d8  ; jae 0x1b7d8
sub esp, 0xc
push 7
mov dword [ebp - 0x2c], edx
call fcn_0001b25a  ; call 0x1b25a
mov ecx, dword [ebp + 0x1c]
add esp, 0x10
mov edx, dword [ebp - 0x2c]
mov byte [ecx + esi], al
inc esi
jmp short loc_0001b7b8  ; jmp 0x1b7b8

loc_0001b7d8:  ; not directly referenced
mov dword [edi], edx
jmp short loc_0001b7e8  ; jmp 0x1b7e8

loc_0001b7dc:  ; not directly referenced
mov ebx, 0x80000005
jmp short loc_0001b7e8  ; jmp 0x1b7e8

loc_0001b7e3:  ; not directly referenced
mov ebx, 0x80000007

loc_0001b7e8:  ; not directly referenced
test byte [ebp - 0x19], 8
je short loc_0001b825  ; je 0x1b825
cmp ebx, 0x80000005
je short loc_0001b825  ; je 0x1b825
push eax
push eax
push 8
push 0

loc_0001b7fc:  ; not directly referenced
call fcn_0001b277  ; call 0x1b277
mov dword [esp], 0xa
call fcn_0001ba3f  ; call 0x1ba3f
add esp, 0x10
dec dword [ebp - 0x34]
jne loc_0001b370  ; jne 0x1b370
mov ebx, 0x80000007
jmp short loc_0001b825  ; jmp 0x1b825

loc_0001b820:  ; not directly referenced
mov ebx, 0x80000012

loc_0001b825:  ; not directly referenced
push eax
push eax
push 0xff
push 0
call fcn_0001b277  ; call 0x1b277
pop edx
pop ecx
push 1
push 0xc
call fcn_0001b277  ; call 0x1b277
pop esi
pop edi
push 0
push 0xd
call fcn_0001b277  ; call 0x1b277
add esp, 0x10
mov eax, ebx
jmp short loc_0001b855  ; jmp 0x1b855

loc_0001b850:  ; not directly referenced
mov eax, 0x80000002

loc_0001b855:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001b85d:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
sub esp, 8
push 3
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
pop edx
pop ecx
push 1
mov ebx, eax
lea eax, [eax + 4]
add ebx, 0x40
push eax
call fcn_0001866c  ; call 0x1866c
add esp, 0xc
push 1
push 0xf9
push ebx
call fcn_000186c6  ; call 0x186c6
pop ebx
pop eax
push 0xff
push 0
call fcn_0001b277  ; call 0x1b277
add esp, 0x10
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001b8a7:
push ebp
mov ebp, esp
push esi
push ebx
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001b8c6  ; je 0x1b8c6
push ebx
push ebx
push ref_00026331  ; push 0x26331
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001b8c6:
sub esp, 0xc
mov esi, 0x80000009
push 0x20
call fcn_00019cf2  ; call 0x19cf2
add esp, 0x10
mov ebx, eax
test eax, eax
je loc_0001b969  ; je 0x1b969
sub esp, 0xc
lea eax, [eax + 0xc]
push eax
call fcn_0001ff03  ; call 0x1ff03
lea eax, [ebx + 0x14]
mov dword [ebx], 0x80000010
mov dword [ebx + 4], ref_0002908c  ; mov dword [ebx + 4], 0x2908c
mov dword [ebx + 8], eax
mov dword [esp], ebx
call fcn_00019667  ; call 0x19667
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0001b94d  ; je 0x1b94d
test ebx, ebx
jns short loc_0001b94d  ; jns 0x1b94d
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001b938  ; je 0x1b938
push ecx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001b938:
push edx
push ref_00020664  ; push 0x20664
push 0x4c
push ref_0002634a  ; push 0x2634a
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001b94d:
call fcn_000153e9  ; call 0x153e9
mov esi, ebx
test al, al
je short loc_0001b969  ; je 0x1b969
push eax
push eax
push ref_0002636f  ; push 0x2636f
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001b969:
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_0001b972:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 8]
sub eax, 4
cmp eax, 1
ja short loc_0001b9c5  ; ja 0x1b9c5
push 0
push 0
push 0
push ref_00028fec  ; push 0x28fec
call fcn_00019699  ; call 0x19699
add esp, 0x10
test eax, eax
jne short loc_0001b9c5  ; jne 0x1b9c5
call fcn_000153e9  ; call 0x153e9
mov ebx, 0x80000003
test al, al
je loc_0001ba35  ; je 0x1ba35
push ecx
push ecx
push ref_00026386  ; push 0x26386
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp short loc_0001ba35  ; jmp 0x1ba35

loc_0001b9c5:  ; not directly referenced
xor ebx, ebx
lea edi, [ebp - 0x1c]

loc_0001b9ca:  ; not directly referenced
push edi
push 0
push ebx
push ref_000290ac  ; push 0x290ac
call fcn_00019699  ; call 0x19699
add esp, 0x10
mov esi, eax
test eax, eax
jne short loc_0001b9ee  ; jne 0x1b9ee
mov eax, dword [ebp - 0x1c]
sub esp, 0xc
push dword [ebp + 8]
call dword [eax]  ; ucall
jmp short loc_0001ba27  ; jmp 0x1ba27

loc_0001b9ee:  ; not directly referenced
cmp eax, 0x8000000e
jne short loc_0001ba10  ; jne 0x1ba10
test ebx, ebx
jne short loc_0001ba10  ; jne 0x1ba10
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001ba2a  ; je 0x1ba2a
push edx
push edx
push ref_000263b0  ; push 0x263b0
push 0x80000040
jmp short loc_0001ba22  ; jmp 0x1ba22

loc_0001ba10:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001ba2a  ; je 0x1ba2a
push eax
push eax
push ref_000263db  ; push 0x263db
push 0x40

loc_0001ba22:  ; not directly referenced
call fcn_000153f7  ; call 0x153f7

loc_0001ba27:  ; not directly referenced
add esp, 0x10

loc_0001ba2a:  ; not directly referenced
inc ebx
cmp esi, 0x8000000e
jne short loc_0001b9ca  ; jne 0x1b9ca
xor ebx, ebx

loc_0001ba35:  ; not directly referenced
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001ba3f:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov edi, dword [ebp + 8]
test edi, edi
je loc_0001badd  ; je 0x1badd
push eax
push 0
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0x40
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
mov esi, eax
and esi, 0xfffc
add esi, 8
mov dword [esp], esi
call fcn_00018ea0  ; call 0x18ea0
mov ecx, 0x64
xor edx, edx
add esp, 0x10
mov ebx, eax
imul eax, edi, 0x166
and ebx, 0xffffff
div ecx
lea edi, [ebx + eax + 1]
mov ecx, edi
and edi, 0xffffff
shr ecx, 0x18

loc_0001baa6:
test ecx, ecx
setne dl
cmp edi, ebx
jbe short loc_0001bad9  ; jbe 0x1bad9

loc_0001baaf:
sub esp, 0xc
push esi
mov dword [ebp - 0x20], edx
mov dword [ebp - 0x1c], ecx
call fcn_00018ea0  ; call 0x18ea0
add esp, 0x10
mov ecx, dword [ebp - 0x1c]
mov edx, dword [ebp - 0x20]
and eax, 0xffffff
cmp eax, ebx
jae short loc_0001bad5  ; jae 0x1bad5
test dl, dl
je short loc_0001badd  ; je 0x1badd
dec ecx

loc_0001bad5:
mov ebx, eax
jmp short loc_0001baa6  ; jmp 0x1baa6

loc_0001bad9:
test dl, dl
jne short loc_0001baaf  ; jne 0x1baaf

loc_0001badd:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001bae5:
push ebp
mov ebp, esp
push ebx
sub esp, 0x10
mov ebx, dword [ebp + 8]
lea eax, [ebx + 0x3804]
push eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
xor edx, edx
test ah, 0x40
je short loc_0001bb32  ; je 0x1bb32
push eax
push 0
push 0xffff8003
lea eax, [ebx + 0x38b0]
add ebx, 0x38b4
push eax
call fcn_00018aa4  ; call 0x18aa4
mov dword [esp], ebx
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
cmp eax, 0xff0a55a
sete dl

loc_0001bb32:
mov al, dl
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001bb39:
push ebp
mov ebp, esp
push ebx
sub esp, 0x18
push 0
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
mov ebx, eax
lea eax, [eax + 8]
add ebx, 2
mov dword [esp], eax
call fcn_00017cc7  ; call 0x17cc7
mov dword [esp], ebx
mov dl, al
mov dword [ebp - 0xc], edx
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
mov edx, dword [ebp - 0xc]
mov ecx, eax
and ecx, 0xfffffffd
cmp cx, 0x8c44
je short loc_0001bbbc  ; je 0x1bbbc
lea ecx, [eax + 0x73b2]
cmp cx, 2
jbe short loc_0001bbbc  ; jbe 0x1bbbc
lea ecx, [eax + 0x73b7]
cmp cx, 3
jbe short loc_0001bbbc  ; jbe 0x1bbbc
lea ecx, [eax + 0x73bf]
cmp cx, 1
jbe short loc_0001bbbc  ; jbe 0x1bbbc
cmp ax, 0x8c58
je short loc_0001bbbc  ; je 0x1bbbc
mov ecx, eax
and ecx, 0xfffffffb
cmp cx, 0x8c52
je short loc_0001bbbc  ; je 0x1bbbc
mov ecx, eax
and ecx, 0xfffffff7
cmp cx, 0x8c54
jne short loc_0001bbe3  ; jne 0x1bbe3

loc_0001bbbc:
cmp dl, 4
je loc_0001bc99  ; je 0x1bc99
cmp dl, 5
je short loc_0001bbd9  ; je 0x1bbd9
mov eax, 1
cmp dl, 3
jne short loc_0001bbfc  ; jne 0x1bbfc
jmp near loc_0001bcac  ; jmp 0x1bcac

loc_0001bbd9:
mov eax, 3
jmp near loc_0001bcac  ; jmp 0x1bcac

loc_0001bbe3:
lea ecx, [eax + 0x733f]
cmp cx, 5
ja short loc_0001bc11  ; ja 0x1bc11
mov eax, 0x10
test dl, dl
je loc_0001bcac  ; je 0x1bcac

loc_0001bbfc:
call fcn_000153e9  ; call 0x153e9
test al, al
je loc_0001bc92  ; je 0x1bc92
push ecx
push ref_00026405  ; push 0x26405
jmp short loc_0001bc80  ; jmp 0x1bc80

loc_0001bc11:
lea ecx, [eax + 0x63bf]
cmp cx, 6
ja short loc_0001bc4b  ; ja 0x1bc4b
cmp dl, 3
je short loc_0001bca0  ; je 0x1bca0
cmp dl, 4
je short loc_0001bc33  ; je 0x1bc33
mov eax, 0x20
cmp dl, 2
jne short loc_0001bc3a  ; jne 0x1bc3a
jmp short loc_0001bcac  ; jmp 0x1bcac

loc_0001bc33:
mov eax, 0x22
jmp short loc_0001bcac  ; jmp 0x1bcac

loc_0001bc3a:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001bc92  ; je 0x1bc92
push edx
push ref_0002640c  ; push 0x2640c
jmp short loc_0001bc80  ; jmp 0x1bc80

loc_0001bc4b:
add ax, 0x633f
cmp ax, 0xa
ja short loc_0001bc92  ; ja 0x1bc92
cmp dl, 2
je short loc_0001bca7  ; je 0x1bca7
cmp dl, 3
je short loc_0001bc6a  ; je 0x1bc6a
dec dl
jne short loc_0001bc71  ; jne 0x1bc71
mov eax, 0x41
jmp short loc_0001bcac  ; jmp 0x1bcac

loc_0001bc6a:
mov eax, 0x43
jmp short loc_0001bcac  ; jmp 0x1bcac

loc_0001bc71:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001bc92  ; je 0x1bc92
push eax
push ref_00026414  ; push 0x26414

loc_0001bc80:
push ref_000295b0  ; push 0x295b0
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001bc92:
mov eax, 0x44
jmp short loc_0001bcac  ; jmp 0x1bcac

loc_0001bc99:
mov eax, 2
jmp short loc_0001bcac  ; jmp 0x1bcac

loc_0001bca0:
mov eax, 0x21
jmp short loc_0001bcac  ; jmp 0x1bcac

loc_0001bca7:
mov eax, 0x42

loc_0001bcac:
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001bcb1:
push ebp
mov ebp, esp
push esi
push ebx
push edx
push 0
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
mov esi, eax
lea eax, [eax + 2]
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
mov dword [esp], esi
movzx ebx, ax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
cmp ax, 0x8086
jne short loc_0001bd5c  ; jne 0x1bd5c
mov eax, ebx
mov esi, 1
and eax, 0xfffffffd
cmp ax, 0x8c44
je loc_0001bd82  ; je 0x1bd82
lea eax, [ebx + 0x73b2]
cmp ax, 2
jbe short loc_0001bd82  ; jbe 0x1bd82
lea eax, [ebx + 0x73b7]
cmp ax, 3
jbe short loc_0001bd82  ; jbe 0x1bd82
lea eax, [ebx + 0x73bf]
cmp ax, 1
jbe short loc_0001bd82  ; jbe 0x1bd82
cmp bx, 0x8c58
je short loc_0001bd82  ; je 0x1bd82
mov eax, ebx
and eax, 0xfffffffb
cmp ax, 0x8c52
je short loc_0001bd7d  ; je 0x1bd7d
mov eax, ebx
and eax, 0xfffffff7
cmp ax, 0x8c54
je short loc_0001bd7d  ; je 0x1bd7d
lea eax, [ebx + 0x63bf]
cmp ax, 6
jbe short loc_0001bd82  ; jbe 0x1bd82
lea eax, [ebx + 0x733f]
cmp ax, 5
jbe short loc_0001bd7d  ; jbe 0x1bd7d
lea eax, [ebx + 0x633f]
cmp ax, 0xa
jbe short loc_0001bd82  ; jbe 0x1bd82

loc_0001bd5c:
call fcn_000153e9  ; call 0x153e9
xor esi, esi
test al, al
je short loc_0001bd82  ; je 0x1bd82
push eax
push ebx
push ref_0002641c  ; push 0x2641c
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp short loc_0001bd82  ; jmp 0x1bd82

loc_0001bd7d:
mov esi, 1

loc_0001bd82:
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_0001bd8b:
push ebp
mov ebp, esp
push ebx
push ebx
mov eax, dword [ebp + 0xc]
mov ebx, dword [ebp + 8]
cmp al, 1
je short loc_0001bda6  ; je 0x1bda6
xor edx, edx
cmp al, 1
sbb eax, eax
and eax, 0xfffffff0
dec eax
jmp short loc_0001bdae  ; jmp 0x1bdae

loc_0001bda6:
mov edx, 0x10
or eax, 0xffffffff

loc_0001bdae:
push ecx
add ebx, 0x3410
push edx
push eax
push ebx
call fcn_00018aa4  ; call 0x18aa4
add esp, 0x10
mov dword [ebp + 8], ebx
mov ebx, dword [ebp - 4]
leave
jmp near fcn_00017d8a  ; jmp 0x17d8a

fcn_0001bdcc:
push ebp
mov ebp, esp
push ebx
sub esp, 0x10
mov ebx, dword [ebp + 8]
push ebx
call fcn_0001bae5  ; call 0x1bae5
add esp, 0x10
xor edx, edx
dec al
jne short loc_0001bdff  ; jne 0x1bdff
sub esp, 0xc
add ebx, 0x3860
push ebx
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
cmp eax, 0x7fff
setne dl

loc_0001bdff:
mov al, dl
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001be06:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x10
push 0
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xf0
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov esi, eax
pop eax
and esi, 0xffffc000
pop edx
lea ebx, [esi + 0x38b0]
add esi, 0x38b4
push 0xffff8003
push ebx
call fcn_00018a7a  ; call 0x18a7a
pop ecx
pop edi
push 0x4010
push ebx
call fcn_00018a50  ; call 0x18a50
mov dword [esp], esi
call fcn_00017d8a  ; call 0x17d8a
mov edi, eax
pop eax
pop edx
push 0xffff8003
push ebx
call fcn_00018a7a  ; call 0x18a7a
pop ecx
pop eax
push 0x403c
push ebx
call fcn_00018a50  ; call 0x18a50
mov dword [esp], esi
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
xor edx, edx
and edi, 3
je short loc_0001be93  ; je 0x1be93
shr eax, 6
mov edx, eax
and edx, 1

loc_0001be93:  ; not directly referenced
lea esp, [ebp - 0xc]
mov al, dl
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001be9d:  ; not directly referenced
push ebp
mov ebp, esp
push esi
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_0001bae5  ; call 0x1bae5
add esp, 0x10
mov dl, al
xor eax, eax
test dl, dl
je short loc_0001bef0  ; je 0x1bef0
push eax
push eax
push 0xffff8003
lea esi, [ebx + 0x38b0]
add ebx, 0x38b4
push esi
call fcn_00018a7a  ; call 0x18a7a
pop edx
pop ecx
push 0x4024
push esi
call fcn_00018a50  ; call 0x18a50
mov dword [esp], ebx
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
shr eax, 0xe
and eax, 1

loc_0001bef0:  ; not directly referenced
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0001bef7:
push ebp
mov ebp, esp
push esi
mov esi, 1
push ebx
push ecx
push 0
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 2
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
movzx ebx, ax
mov eax, ebx
and eax, 0xfffffffd
cmp ax, 0x8c44
je loc_0001bff0  ; je 0x1bff0
lea eax, [ebx + 0x73b2]
cmp ax, 2
jbe loc_0001bff0  ; jbe 0x1bff0
lea eax, [ebx + 0x73b7]
cmp ax, 3
jbe loc_0001bff0  ; jbe 0x1bff0
lea eax, [ebx + 0x73bf]
cmp ax, 1
jbe loc_0001bff0  ; jbe 0x1bff0
cmp bx, 0x8c58
je loc_0001bff0  ; je 0x1bff0
mov eax, ebx
and eax, 0xfffffffb
cmp ax, 0x8c52
je short loc_0001bfeb  ; je 0x1bfeb
mov eax, ebx
and eax, 0xfffffff7
cmp ax, 0x8c54
je short loc_0001bfeb  ; je 0x1bfeb
lea eax, [ebx + 0x733f]
cmp ax, 5
jbe short loc_0001bff0  ; jbe 0x1bff0
lea eax, [ebx + 0x63bf]
mov si, 2
cmp ax, 6
jbe short loc_0001bff0  ; jbe 0x1bff0
lea eax, [ebx + 0x633f]
cmp ax, 0xa
jbe short loc_0001bff0  ; jbe 0x1bff0
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001bfc3  ; je 0x1bfc3
push edx
push ebx
push ref_0002644f  ; push 0x2644f
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001bfc3:
call fcn_000153f0  ; call 0x153f0
mov esi, 3
test al, al
je short loc_0001bff0  ; je 0x1bff0
push eax
push ref_000221f1  ; push 0x221f1
push 0x1cd
push ref_0002647a  ; push 0x2647a
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
jmp short loc_0001bff0  ; jmp 0x1bff0

loc_0001bfeb:
mov esi, 1

loc_0001bff0:
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_0001bff9:
push ebp
mov ebp, esp
push esi
mov esi, 1
push ebx
push ecx
push 0
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 2
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
movzx ebx, ax
mov eax, ebx
and eax, 0xfffffffd
cmp ax, 0x8c44
je loc_0001c0f2  ; je 0x1c0f2
lea eax, [ebx + 0x73b2]
cmp ax, 2
jbe loc_0001c0f2  ; jbe 0x1c0f2
lea eax, [ebx + 0x73b7]
cmp ax, 3
jbe loc_0001c0f2  ; jbe 0x1c0f2
lea eax, [ebx + 0x73bf]
cmp ax, 1
jbe loc_0001c0f2  ; jbe 0x1c0f2
cmp bx, 0x8c58
je loc_0001c0f2  ; je 0x1c0f2
mov eax, ebx
and eax, 0xfffffffb
cmp ax, 0x8c52
je short loc_0001c0ed  ; je 0x1c0ed
mov eax, ebx
and eax, 0xfffffff7
cmp ax, 0x8c54
je short loc_0001c0ed  ; je 0x1c0ed
lea eax, [ebx + 0x63bf]
cmp ax, 6
jbe short loc_0001c0f2  ; jbe 0x1c0f2
lea eax, [ebx + 0x733f]
cmp ax, 5
jbe short loc_0001c0f2  ; jbe 0x1c0f2
lea eax, [ebx + 0x633f]
mov si, 2
cmp ax, 0xa
jbe short loc_0001c0f2  ; jbe 0x1c0f2
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001c0c5  ; je 0x1c0c5
push edx
push ebx
push ref_0002644f  ; push 0x2644f
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001c0c5:
call fcn_000153f0  ; call 0x153f0
mov esi, 3
test al, al
je short loc_0001c0f2  ; je 0x1c0f2
push eax
push ref_000221f1  ; push 0x221f1
push 0x1ec
push ref_0002647a  ; push 0x2647a
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
jmp short loc_0001c0f2  ; jmp 0x1c0f2

loc_0001c0ed:
mov esi, 1

loc_0001c0f2:
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_0001c0fb:
push ebp
mov ebp, esp
sub esp, 8
call fcn_0001bef7  ; call 0x1bef7
cmp eax, 1
je short loc_0001c117  ; je 0x1c117
xor edx, edx
cmp eax, 2
mov al, 6
cmove edx, eax
jmp short loc_0001c119  ; jmp 0x1c119

loc_0001c117:
mov dl, 8

loc_0001c119:
mov al, dl
leave
ret

fcn_0001c11d:
push ebp
mov ebp, esp
sub esp, 8
call fcn_0001bef7  ; call 0x1bef7
cmp eax, 1
je short loc_0001c138  ; je 0x1c138
cmp eax, 2
sete al
shl eax, 2
jmp short loc_0001c13a  ; jmp 0x1c13a

loc_0001c138:
mov al, 6

loc_0001c13a:
leave
ret

fcn_0001c13c:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
call fcn_0001bef7  ; call 0x1bef7
cmp eax, 1
je short loc_0001c154  ; je 0x1c154
cmp eax, 2
sete al
jmp short loc_0001c156  ; jmp 0x1c156

loc_0001c154:  ; not directly referenced
mov al, 2

loc_0001c156:  ; not directly referenced
leave
ret

fcn_0001c158:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
call fcn_0001bff9  ; call 0x1bff9
cmp eax, 1
jne short loc_0001c176  ; jne 0x1c176
call fcn_0001bef7  ; call 0x1bef7
cmp eax, 1
jne short loc_0001c176  ; jne 0x1c176
mov al, 0xe
jmp short loc_0001c17f  ; jmp 0x1c17f

loc_0001c176:  ; not directly referenced
cmp eax, 2
sete al
shl eax, 3

loc_0001c17f:  ; not directly referenced
leave
ret

fcn_0001c181:
push ebp
mov ebp, esp
sub esp, 8
call fcn_0001bef7  ; call 0x1bef7
cmp eax, 1
je short loc_0001c199  ; je 0x1c199
cmp eax, 2
sete al
jmp short loc_0001c19b  ; jmp 0x1c19b

loc_0001c199:
mov al, 2

loc_0001c19b:
leave
ret

fcn_0001c19d:
push ebp
mov ebp, esp
sub esp, 8
call fcn_0001bff9  ; call 0x1bff9
cmp eax, 1
jne short loc_0001c1c6  ; jne 0x1c1c6
call fcn_0001bef7  ; call 0x1bef7
cmp eax, 1
je short loc_0001c1c2  ; je 0x1c1c2
cmp eax, 2
sete dl
shl edx, 3
jmp short loc_0001c1d0  ; jmp 0x1c1d0

loc_0001c1c2:
mov dl, 0xe
jmp short loc_0001c1d0  ; jmp 0x1c1d0

loc_0001c1c6:
cmp eax, 2
mov dl, 0xa
mov al, 0
cmovne edx, eax

loc_0001c1d0:
mov al, dl
leave
ret

fcn_0001c1d4:
push ebp
mov ebp, esp
sub esp, 8
call fcn_0001bff9  ; call 0x1bff9
cmp eax, 1
jne short loc_0001c1f2  ; jne 0x1c1f2
call fcn_0001bef7  ; call 0x1bef7
cmp eax, 1
jne short loc_0001c1f2  ; jne 0x1c1f2
mov al, 0xe
jmp short loc_0001c1fb  ; jmp 0x1c1fb

loc_0001c1f2:
cmp eax, 2
sete al
shl eax, 3

loc_0001c1fb:
leave
ret

fcn_0001c1fd:
push ebp
mov ebp, esp
sub esp, 8
call fcn_0001bff9  ; call 0x1bff9
cmp eax, 1
jne short loc_0001c226  ; jne 0x1c226
call fcn_0001bef7  ; call 0x1bef7
cmp eax, 1
je short loc_0001c222  ; je 0x1c222
cmp eax, 2
sete dl
lea edx, [edx + edx*8]
jmp short loc_0001c230  ; jmp 0x1c230

loc_0001c222:
mov dl, 0xf
jmp short loc_0001c230  ; jmp 0x1c230

loc_0001c226:
cmp eax, 2
mov dl, 0xb
mov al, 0
cmovne edx, eax

loc_0001c230:
mov al, dl
leave
ret

fcn_0001c234:
push ebp
mov ebp, esp
sub esp, 8
call fcn_0001bff9  ; call 0x1bff9
cmp eax, 1
jne short loc_0001c252  ; jne 0x1c252
call fcn_0001bef7  ; call 0x1bef7
cmp eax, 1
jne short loc_0001c252  ; jne 0x1c252
mov al, 6
jmp short loc_0001c25b  ; jmp 0x1c25b

loc_0001c252:
cmp eax, 2
sete al
shl eax, 2

loc_0001c25b:
leave
ret

fcn_0001c25d:
push ebp
mov ebp, esp
push esi
push ebx
push eax
push 0
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
mov esi, eax
lea eax, [eax + 0xa2]
add esi, 0xa4
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
mov dword [esp], esi
mov ebx, eax
call fcn_00017cfe  ; call 0x17cfe
mov ecx, dword [ebp + 8]
add esp, 0x10
lea edx, [ecx - 1]
cmp edx, 4
ja short loc_0001c2d0  ; ja 0x1c2d0
jmp dword [edx*4 + ref_00020568]  ; ujmp: jmp dword [edx*4 + 0x20568]

loc_0001c2a3:
shr bx, 5
jmp short loc_0001c2b3  ; jmp 0x1c2b3

loc_0001c2a9:
shr ax, 1
mov edx, eax
jmp short loc_0001c2b9  ; jmp 0x1c2b9

loc_0001c2b0:
shr bx, 1

loc_0001c2b3:
mov edx, ebx
jmp short loc_0001c2b9  ; jmp 0x1c2b9

loc_0001c2b7:
mov dl, bl

loc_0001c2b9:
and edx, 1
jmp short loc_0001c2d2  ; jmp 0x1c2d2

loc_0001c2be:
xor edx, edx
test al, 2
je short loc_0001c2d2  ; je 0x1c2d2
and ebx, 0x22
cmp bx, 2
sete dl
jmp short loc_0001c2d2  ; jmp 0x1c2d2

loc_0001c2d0:
xor edx, edx

loc_0001c2d2:
lea esp, [ebp - 8]
mov al, dl
pop ebx
pop esi
pop ebp
ret

fcn_0001c2db:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
sub esp, 0x10
mov eax, dword [ebp + 8]
mov ebx, dword [ebp + 0xc]
add eax, 0x404
push eax
movzx ebx, bl
call fcn_00017d8a  ; call 0x17d8a
lea ecx, [ebx*4]
mov ebx, dword [ebp - 4]
leave
shr eax, cl
and eax, 7
ret

fcn_0001c307:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
xor ebx, ebx
sub esp, 0xc
mov eax, dword [ebp + 8]
movzx edi, byte [ebp + 0xc]
lea esi, [eax + 0x404]

loc_0001c31f:  ; not directly referenced
call fcn_0001c0fb  ; call 0x1c0fb
cmp bl, al
jae short loc_0001c346  ; jae 0x1c346
sub esp, 0xc
push esi
call fcn_00017d8a  ; call 0x17d8a
movzx ecx, bl
add esp, 0x10
shl ecx, 2
shr eax, cl
and eax, 7
cmp eax, edi
je short loc_0001c369  ; je 0x1c369
inc ebx
jmp short loc_0001c31f  ; jmp 0x1c31f

loc_0001c346:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
mov bl, 0xff
test al, al
je short loc_0001c369  ; je 0x1c369
push eax
push ref_000221f1  ; push 0x221f1
push 0x390
push ref_0002647a  ; push 0x2647a
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001c369:  ; not directly referenced
lea esp, [ebp - 0xc]
mov al, bl
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001c373:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
sub esp, 0x18
push 0
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xf0
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov ebx, eax
pop eax
and ebx, 0xffffc000
pop edx
push 0
push ebx
call fcn_0001c2db  ; call 0x1c2db
pop ecx
pop edx
lea edx, [ebp - 0xd]
push edx
sub eax, 0x20
lea edx, [ebp - 0xc]
movzx eax, al
push edx
push eax
push 4
push 0xe00000fc
push ebx
call fcn_00009e5f  ; call 0x9e5f
add esp, 0x20
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001c409  ; je 0x1c409
test ebx, ebx
jns short loc_0001c409  ; jns 0x1c409
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001c3f1  ; je 0x1c3f1
push eax
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001c3f1:  ; not directly referenced
push ecx
push ref_00020664  ; push 0x20664
push 0x3b7
push ref_0002647a  ; push 0x2647a
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001c409:  ; not directly referenced
mov ebx, dword [ebp - 0xc]
test ebx, 0x80000
je short loc_0001c47f  ; je 0x1c47f
and ebx, 0x70000
shr ebx, 0x10
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001c437  ; je 0x1c437
push edx
push ebx
push ref_000264b6  ; push 0x264b6
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001c437:  ; not directly referenced
call fcn_0001bef7  ; call 0x1bef7
lea edx, [ebx + 1]
cmp eax, 2
jne short loc_0001c488  ; jne 0x1c488
cmp ebx, 1
je short loc_0001c483  ; je 0x1c483
jb short loc_0001c457  ; jb 0x1c457
cmp ebx, 5
ja short loc_0001c45e  ; ja 0x1c45e
mov edx, 5
jmp short loc_0001c488  ; jmp 0x1c488

loc_0001c457:  ; not directly referenced
mov edx, 3
jmp short loc_0001c488  ; jmp 0x1c488

loc_0001c45e:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001c47f  ; je 0x1c47f
push eax
push ref_000221f1  ; push 0x221f1
push 0x3c7
push ref_0002647a  ; push 0x2647a
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001c47f:  ; not directly referenced
xor edx, edx
jmp short loc_0001c488  ; jmp 0x1c488

loc_0001c483:  ; not directly referenced
mov edx, 4

loc_0001c488:  ; not directly referenced
mov eax, edx
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001c48f:  ; not directly referenced
push ebp
mov eax, 0x80000002
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov ebx, dword [ebp + 8]
mov edi, dword [ebp + 0xc]
mov esi, dword [ebp + 0x10]
cmp ebx, 7
ja short loc_0001c505  ; ja 0x1c505
push eax
push 0
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0xf0
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
and eax, 0xffffc000
cmp ebx, 7
je short loc_0001c4dd  ; je 0x1c4dd
sub esp, 0xc
lea eax, [eax + ebx*4 + 0x3854]
jmp short loc_0001c4e5  ; jmp 0x1c4e5

loc_0001c4dd:  ; not directly referenced
sub esp, 0xc
add eax, 0x3800

loc_0001c4e5:  ; not directly referenced
push eax
call fcn_00017d8a  ; call 0x17d8a
add esp, 0x10
mov edx, eax
and ax, 0x7fff
and edx, 0x7fff0000
shr edx, 0x10
mov word [edi], dx
mov word [esi], ax
xor eax, eax

loc_0001c505:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001c50d:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov edi, dword [ebp + 8]
mov ebx, dword [ebp + 0xc]
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001c536  ; je 0x1c536
push eax
push eax
push ref_000264c5  ; push 0x264c5
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001c536:
dec bl
lea esi, [edi + 0x3428]
jne short loc_0001c55c  ; jne 0x1c55c
push ecx
push ecx
push 0x10
lea ebx, [edi + 0x3424]
push ebx
call fcn_00017d40  ; call 0x17d40
pop ebx
pop edi
push 1
push esi
call fcn_00018a50  ; call 0x18a50
jmp short loc_0001c566  ; jmp 0x1c566

loc_0001c55c:
push edx
push edx
push 0xfffffffffffffffe
push esi
call fcn_00018a7a  ; call 0x18a7a

loc_0001c566:
add esp, 0x10
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001c583  ; je 0x1c583
push eax
push eax
push ref_000264df  ; push 0x264df
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001c583:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001c58d:
push ebp
mov ebp, esp
sub esp, 0x24
lea edx, [ebp - 0xc]
push edx
lea edx, [ebp - 0x10]
push edx
lea edx, [ebp - 0x14]
push edx
lea eax, [ebp - 0x18]
push eax
push 1
call fcn_0001fe8d  ; call 0x1fe8d
mov eax, dword [ebp - 0x18]
leave
and eax, 0xfff0ff0
ret

fcn_0001c5b4:
push ebp
mov ebp, esp
sub esp, 0x24
lea edx, [ebp - 0xc]
push edx
lea edx, [ebp - 0x10]
push edx
lea edx, [ebp - 0x14]
push edx
lea eax, [ebp - 0x18]
push eax
push 1
call fcn_0001fe8d  ; call 0x1fe8d
mov eax, dword [ebp - 0x18]
leave
and eax, 0xf
ret

fcn_0001c5d9:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
call fcn_0001c58d  ; call 0x1c58d
mov esi, eax
call fcn_0001c5b4  ; call 0x1c5b4
lea edx, [eax + esi]
mov edi, eax
cmp edx, 0x306c3
je short loc_0001c644  ; je 0x1c644
cmp edx, 0x40651
je short loc_0001c644  ; je 0x1c644
cmp edx, 0x40661
je short loc_0001c644  ; je 0x1c644
lea eax, [edx - 0x306d3]
cmp eax, 1
jbe short loc_0001c644  ; jbe 0x1c644
sub edx, 0x40670
mov bl, 1
cmp edx, 1
jbe short loc_0001c646  ; jbe 0x1c646
call fcn_000153e9  ; call 0x153e9
xor ebx, ebx
test al, al
je short loc_0001c646  ; je 0x1c646
push esi
push edi
push ref_000264f7  ; push 0x264f7
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp short loc_0001c646  ; jmp 0x1c646

loc_0001c644:  ; not directly referenced
mov bl, 1

loc_0001c646:  ; not directly referenced
lea esp, [ebp - 0xc]
mov al, bl
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001c650:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
sub esp, 0x20
lea edx, [ebp - 0xc]
push edx
lea edx, [ebp - 0x10]
push edx
lea edx, [ebp - 0x14]
push edx
lea eax, [ebp - 0x18]
push eax
push 1
call fcn_0001fe8d  ; call 0x1fe8d
mov eax, dword [ebp - 0x18]
add esp, 0x20
and eax, 0xfff0ff0
cmp eax, 0x40650
je short loc_0001c6a2  ; je 0x1c6a2
ja short loc_0001c692  ; ja 0x1c692
cmp eax, 0x306c0
je short loc_0001c6ed  ; je 0x1c6ed
cmp eax, 0x306d0
je short loc_0001c6a2  ; je 0x1c6a2
jmp short loc_0001c6a6  ; jmp 0x1c6a6

loc_0001c692:  ; not directly referenced
cmp eax, 0x40660
je short loc_0001c6ed  ; je 0x1c6ed
cmp eax, 0x40670
jne short loc_0001c6a6  ; jne 0x1c6a6
jmp short loc_0001c6ed  ; jmp 0x1c6ed

loc_0001c6a2:  ; not directly referenced
xor ebx, ebx
jmp short loc_0001c6ef  ; jmp 0x1c6ef

loc_0001c6a6:  ; not directly referenced
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001c6cb  ; je 0x1c6cb
mov eax, dword [ebp - 0x18]
push edx
and eax, 0xfff0ff0
push eax
push ref_00026531  ; push 0x26531
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001c6cb:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
mov bl, 2
test al, al
je short loc_0001c6ef  ; je 0x1c6ef
push eax
push ref_000221f1  ; push 0x221f1
push 0x7f
push ref_0002655c  ; push 0x2655c
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
jmp short loc_0001c6ef  ; jmp 0x1c6ef

loc_0001c6ed:  ; not directly referenced
mov bl, 1

loc_0001c6ef:  ; not directly referenced
mov al, bl
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001c6f6:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x20
push 0
push 0
push 0
lea eax, [ebp - 0x18]
push eax
push 0
push 4
call fcn_0001feb9  ; call 0x1feb9
mov eax, dword [ebp - 0x18]
add esp, 0x1c
push 0x1a
xor edx, edx
push edx
push eax
call fcn_0001718b  ; call 0x1718b
leave
and eax, 0x3f
inc eax
ret

fcn_0001c726:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0xc
push 0
push 0
push 0x8b
call fcn_00017502  ; call 0x17502
mov dword [esp], 0
push 0
push 0
push 0
push 1
call fcn_0001fe8d  ; call 0x1fe8d
add esp, 0x14
push 0x8b
call fcn_000174f8  ; call 0x174f8
add esp, 0xc
push 0x20
push edx
push eax
call fcn_0001718b  ; call 0x1718b
leave
ret

fcn_0001c769:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov eax, dword [ebp + 0x14]
push 0x35
mov esi, dword [ebp + 8]
mov edi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
mov dword [ebp - 0x24], eax
call fcn_000174f8  ; call 0x174f8
add esp, 0x10
mov dword [ebp - 0x20], eax
mov dword [ebp - 0x1c], edx
test edi, edi
jne short loc_0001c7b5  ; jne 0x1c7b5
call fcn_000153f0  ; call 0x153f0
test al, al
je loc_0001c85c  ; je 0x1c85c
mov dword [ebp + 0x10], ref_00026598  ; mov dword [ebp + 0x10], 0x26598
mov dword [ebp + 0xc], 0xc8
jmp near loc_0001c841  ; jmp 0x1c841

loc_0001c7b5:  ; not directly referenced
push ecx
push 0x10
push dword [ebp - 0x1c]
push dword [ebp - 0x20]
call fcn_0001718b  ; call 0x1718b
add esp, 0x10
mov word [edi], ax
test esi, esi
jne short loc_0001c7ea  ; jne 0x1c7ea
call fcn_000153f0  ; call 0x153f0
test al, al
je loc_0001c85c  ; je 0x1c85c
mov dword [ebp + 0x10], ref_000265c3  ; mov dword [ebp + 0x10], 0x265c3
mov dword [ebp + 0xc], 0xd2
jmp short loc_0001c841  ; jmp 0x1c841

loc_0001c7ea:  ; not directly referenced
movzx eax, ax
push edx
xor edx, edx
push eax
movzx eax, word [ebp - 0x20]
push edx
push eax
call fcn_000173f5  ; call 0x173f5
add esp, 0x10
mov word [esi], ax
test ebx, ebx
jne short loc_0001c81f  ; jne 0x1c81f
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001c85c  ; je 0x1c85c
mov dword [ebp + 0x10], ref_000265f1  ; mov dword [ebp + 0x10], 0x265f1
mov dword [ebp + 0xc], 0xdc
jmp short loc_0001c841  ; jmp 0x1c841

loc_0001c81f:  ; not directly referenced
cmp dword [ebp - 0x24], 0
mov word [ebx], 1
jne short loc_0001c854  ; jne 0x1c854
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001c85c  ; je 0x1c85c
mov dword [ebp + 0x10], ref_00026618  ; mov dword [ebp + 0x10], 0x26618
mov dword [ebp + 0xc], 0xe3

loc_0001c841:  ; not directly referenced
mov dword [ebp + 8], ref_0002655c  ; mov dword [ebp + 8], 0x2655c
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_000153fc  ; jmp 0x153fc

loc_0001c854:  ; not directly referenced
mov eax, dword [ebp - 0x24]
mov word [eax], 1

loc_0001c85c:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001c864:
push ebp
mov al, 1
mov ebp, esp
push edi
push esi
push ebx
xor ebx, ebx
sub esp, 0x2c
lea esi, [ebp - 0x28]
lea edi, [ebp - 0x20]

loc_0001c877:
cmp dword [ebp + 8], 1
je short loc_0001c8aa  ; je 0x1c8aa
cmp dword [ebp + 8], 2
jne short loc_0001c8d7  ; jne 0x1c8d7
sub esp, 0xc
push 0x150
call fcn_000174f8  ; call 0x174f8
add esp, 0xc
push 8
push esi
push edi
mov dword [ebp - 0x28], eax
mov dword [ebp - 0x24], edx
call fcn_0001707a  ; call 0x1707a
mov al, byte [ebp - 0x19]
shr al, 7
jmp short loc_0001c8d4  ; jmp 0x1c8d4

loc_0001c8aa:
push edx
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0x48
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
and eax, 0xfffffffe
add eax, 0x5da4
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
shr eax, 0x1f

loc_0001c8d4:
add esp, 0x10

loc_0001c8d7:
sub esp, 0xc
inc ebx
push 1
mov dword [ebp - 0x2c], eax
call fcn_0001ba3f  ; call 0x1ba3f
mov eax, dword [ebp - 0x2c]
add esp, 0x10
mov dl, al
and dl, 1
je short loc_0001c8fd  ; je 0x1c8fd
cmp bx, 0x3e7
jbe loc_0001c877  ; jbe 0x1c877

loc_0001c8fd:
cmp bx, 0x3e8
jne short loc_0001c92c  ; jne 0x1c92c
test dl, dl
je short loc_0001c92c  ; je 0x1c92c
call fcn_000153e9  ; call 0x153e9
mov ebx, 0x80000012
test al, al
je short loc_0001c92e  ; je 0x1c92e
push eax
push eax
push ref_00026639  ; push 0x26639
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp short loc_0001c92e  ; jmp 0x1c92e

loc_0001c92c:
xor ebx, ebx

loc_0001c92e:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001c938:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x48
mov edi, dword [ebp + 8]
push edi
call fcn_0001c864  ; call 0x1c864
add esp, 0x10
mov ebx, eax
test eax, eax
js loc_0001cb41  ; js 0x1cb41
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001c975  ; je 0x1c975
movzx eax, byte [ebp + 0xc]
push ecx
push eax
push ref_00026661  ; push 0x26661
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001c975:
cmp edi, 1
je short loc_0001c988  ; je 0x1c988
cmp edi, 2
je loc_0001ca4f  ; je 0x1ca4f
jmp near loc_0001cb01  ; jmp 0x1cb01

loc_0001c988:
push esi
push 0
push 0
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 0x48
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov edi, eax
pop eax
and edi, 0xfffffffe
pop edx
push dword [ebp + 0x10]
lea esi, [edi + 0x5da0]
add edi, 0x5da4
push esi
call fcn_00017dcb  ; call 0x17dcb
mov eax, dword [ebp + 0xc]
pop ecx
pop edx
or eax, 0x80000000
push eax
push edi
call fcn_00017dcb  ; call 0x17dcb
mov dword [esp], 1
call fcn_0001c864  ; call 0x1c864
mov dword [esp], edi
call fcn_00017d8a  ; call 0x17d8a
mov dword [esp], esi
mov dword [ebp - 0x40], eax
call fcn_00017d8a  ; call 0x17d8a
mov dword [esp], 0xa
mov dword [ebp - 0x3c], eax
call fcn_0001ba3f  ; call 0x1ba3f
mov dword [esp], edi
call fcn_00017d8a  ; call 0x17d8a
mov dword [esp], esi
mov edi, eax
call fcn_00017d8a  ; call 0x17d8a
mov ecx, dword [ebp - 0x40]
add esp, 0x10
cmp ecx, edi
je short loc_0001ca42  ; je 0x1ca42
cmp dword [ebp - 0x3c], eax
je short loc_0001ca42  ; je 0x1ca42

loc_0001ca1b:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001ca38  ; je 0x1ca38
push ebx
push ebx
push ref_00026689  ; push 0x26689
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001ca38:
mov ebx, 0x80000002
jmp near loc_0001cb41  ; jmp 0x1cb41

loc_0001ca42:
mov eax, dword [ebp + 0x14]
movzx ecx, cl
mov dword [eax], ecx
jmp near loc_0001cb23  ; jmp 0x1cb23

loc_0001ca4f:
mov eax, dword [ebp + 0xc]
lea edi, [ebp - 0x30]
push ecx
push 8
lea ecx, [ebp - 0x28]
mov dword [ebp - 0x24], eax
mov eax, dword [ebp + 0x10]
push ecx
push edi
or byte [ebp - 0x21], 0x80
mov dword [ebp - 0x3c], ecx
mov dword [ebp - 0x28], eax
call fcn_0001707a  ; call 0x1707a
add esp, 0xc
push dword [ebp - 0x2c]
push dword [ebp - 0x30]
push 0x150
call fcn_00017502  ; call 0x17502
mov dword [esp], 2
call fcn_0001c864  ; call 0x1c864
mov dword [esp], 0x150
call fcn_000174f8  ; call 0x174f8
mov ecx, dword [ebp - 0x3c]
add esp, 0xc
push 8
push edi
push ecx
mov dword [ebp - 0x2c], edx
mov dword [ebp - 0x30], eax
call fcn_0001707a  ; call 0x1707a
mov dword [esp], 0xa
call fcn_0001ba3f  ; call 0x1ba3f
mov dword [esp], 0x150
call fcn_000174f8  ; call 0x174f8
add esp, 0xc
push 8
push edi
mov dword [ebp - 0x30], eax
lea eax, [ebp - 0x20]
push eax
mov dword [ebp - 0x2c], edx
call fcn_0001707a  ; call 0x1707a
mov eax, dword [ebp - 0x1c]
add esp, 0x10
cmp dword [ebp - 0x24], eax
je short loc_0001caf6  ; je 0x1caf6
mov eax, dword [ebp - 0x20]
cmp dword [ebp - 0x28], eax
jne loc_0001ca1b  ; jne 0x1ca1b

loc_0001caf6:
movzx eax, byte [ebp - 0x24]
mov edx, dword [ebp + 0x14]
mov dword [edx], eax
jmp short loc_0001cb23  ; jmp 0x1cb23

loc_0001cb01:
call fcn_000153e9  ; call 0x153e9
mov ebx, 0x80000003
test al, al
je short loc_0001cb23  ; je 0x1cb23
push edx
push edx
push ref_000266b4  ; push 0x266b4
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001cb23:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001cb41  ; je 0x1cb41
push eax
mov eax, dword [ebp + 0x14]
push dword [eax]
push ref_000266da  ; push 0x266da
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001cb41:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001cb4b:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x38
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
push edi
call fcn_0001c864  ; call 0x1c864
add esp, 0x10
mov ebx, eax
test eax, eax
js loc_0001cd57  ; js 0x1cd57
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001cb8c  ; je 0x1cb8c
mov eax, esi
movzx eax, al
push ecx
push eax
push ref_000266fb  ; push 0x266fb
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001cb8c:
cmp edi, 1
je short loc_0001cb9f  ; je 0x1cb9f
cmp edi, 2
je loc_0001cc60  ; je 0x1cc60
jmp near loc_0001cd17  ; jmp 0x1cd17

loc_0001cb9f:
push eax
push 0
push 0
push 0
mov dword [ebp - 0x30], esi
or byte [ebp - 0x2d], 0x80
call fcn_00016bd6  ; call 0x16bd6
add eax, 0x48
mov dword [esp], eax
call fcn_00017d8a  ; call 0x17d8a
mov esi, eax
pop eax
and esi, 0xfffffffe
pop edx
push dword [ebp - 0x30]
lea edi, [esi + 0x5da4]
add esi, 0x5da0
push edi
call fcn_00017dcb  ; call 0x17dcb
mov dword [esp], 1
call fcn_0001c864  ; call 0x1c864
mov dword [esp], edi
call fcn_00017d8a  ; call 0x17d8a
mov dword [esp], esi
mov dword [ebp - 0x30], eax
call fcn_00017d8a  ; call 0x17d8a
mov dword [esp], 0xa
mov dword [ebp - 0x2c], eax
call fcn_0001ba3f  ; call 0x1ba3f
mov dword [esp], edi
call fcn_00017d8a  ; call 0x17d8a
mov dword [esp], esi
mov edi, eax
call fcn_00017d8a  ; call 0x17d8a
mov edx, dword [ebp - 0x30]
add esp, 0x10
cmp edx, edi
je short loc_0001cc4f  ; je 0x1cc4f
cmp dword [ebp - 0x2c], eax
je short loc_0001cc4f  ; je 0x1cc4f

loc_0001cc28:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001cc45  ; je 0x1cc45
push eax
push eax
push ref_00026689  ; push 0x26689
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001cc45:
mov ebx, 0x80000002
jmp near loc_0001cd57  ; jmp 0x1cd57

loc_0001cc4f:
mov eax, dword [ebp + 0x14]
mov dword [eax], edx
lea eax, [ebp - 0x2c]
push edi
push 4
push eax
jmp near loc_0001cd0d  ; jmp 0x1cd0d

loc_0001cc60:
mov eax, dword [ebp + 0x10]
lea edi, [ebp - 0x38]
mov dword [ebp - 0x24], esi
mov eax, dword [eax]
push esi
push 8
lea esi, [ebp - 0x28]
push esi
push edi
or byte [ebp - 0x21], 0x80
mov dword [ebp - 0x28], eax
call fcn_0001707a  ; call 0x1707a
add esp, 0xc
push dword [ebp - 0x34]
push dword [ebp - 0x38]
push 0x150
call fcn_00017502  ; call 0x17502
mov dword [esp], 2
call fcn_0001c864  ; call 0x1c864
mov dword [esp], 0x150
call fcn_000174f8  ; call 0x174f8
add esp, 0xc
push 8
push edi
push esi
mov dword [ebp - 0x34], edx
mov dword [ebp - 0x38], eax
call fcn_0001707a  ; call 0x1707a
mov dword [esp], 0xa
call fcn_0001ba3f  ; call 0x1ba3f
mov dword [esp], 0x150
call fcn_000174f8  ; call 0x174f8
add esp, 0xc
push 8
push edi
mov dword [ebp - 0x38], eax
lea eax, [ebp - 0x20]
push eax
mov dword [ebp - 0x34], edx
call fcn_0001707a  ; call 0x1707a
mov eax, dword [ebp - 0x1c]
add esp, 0x10
cmp dword [ebp - 0x24], eax
je short loc_0001cd00  ; je 0x1cd00
mov eax, dword [ebp - 0x20]
cmp dword [ebp - 0x28], eax
jne loc_0001cc28  ; jne 0x1cc28

loc_0001cd00:
mov ecx, dword [ebp + 0x14]
movzx eax, byte [ebp - 0x24]
mov dword [ecx], eax
push ecx
push 4
push esi

loc_0001cd0d:
push dword [ebp + 0x10]
call fcn_0001707a  ; call 0x1707a
jmp short loc_0001cd36  ; jmp 0x1cd36

loc_0001cd17:
call fcn_000153e9  ; call 0x153e9
mov ebx, 0x80000003
test al, al
je short loc_0001cd39  ; je 0x1cd39
push edx
push edx
push ref_000266b4  ; push 0x266b4
push 0x80000000
call fcn_000153f7  ; call 0x153f7

loc_0001cd36:
add esp, 0x10

loc_0001cd39:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001cd57  ; je 0x1cd57
push eax
mov eax, dword [ebp + 0x14]
push dword [eax]
push ref_000266da  ; push 0x266da
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001cd57:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001cd61:  ; not directly referenced
push ebp
mov eax, 0x80000002
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov ebx, dword [ebp + 0xc]
test ebx, ebx
je loc_0001ce4b  ; je 0x1ce4b
lea edi, [ebp - 0x1c]
call fcn_0001c58d  ; call 0x1c58d
lea esi, [ebp - 0x20]
call fcn_0001c5b4  ; call 0x1c5b4
push edi
push esi
push 0x8000000a
push 1
call fcn_0001cb4b  ; call 0x1cb4b
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_0001cdb7  ; je 0x1cdb7
push edx
push dword [ebp - 0x20]
push ref_00026722  ; push 0x26722
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001cdb7:  ; not directly referenced
cmp dword [ebp - 0x1c], 0
je short loc_0001cdc7  ; je 0x1cdc7

loc_0001cdbd:  ; not directly referenced
mov eax, 0x8000000e
jmp near loc_0001ce4b  ; jmp 0x1ce4b

loc_0001cdc7:  ; not directly referenced
mov edx, dword [ebp - 0x20]
xor eax, eax

loc_0001cdcc:  ; not directly referenced
mov ecx, edx
and edx, 0x3f
mov byte [ebx + eax], dl
inc eax
shr ecx, 6
cmp eax, 4
je short loc_0001cde1  ; je 0x1cde1
mov edx, ecx
jmp short loc_0001cdcc  ; jmp 0x1cdcc

loc_0001cde1:  ; not directly referenced
cmp dword [ebp + 8], 4
mov dword [ebp - 0x20], ecx
ja short loc_0001cdee  ; ja 0x1cdee

loc_0001cdea:  ; not directly referenced
xor eax, eax
jmp short loc_0001ce4b  ; jmp 0x1ce4b

loc_0001cdee:  ; not directly referenced
call fcn_0001c650  ; call 0x1c650
test al, al
jne short loc_0001cdea  ; jne 0x1cdea
push edi
push esi
push 0x8000000b
push 1
call fcn_0001cb4b  ; call 0x1cb4b
call fcn_000153e9  ; call 0x153e9
add esp, 0x10
test al, al
je short loc_0001ce24  ; je 0x1ce24
push eax
push dword [ebp - 0x20]
push ref_00026722  ; push 0x26722
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001ce24:  ; not directly referenced
cmp dword [ebp - 0x1c], 0
jne short loc_0001cdbd  ; jne 0x1cdbd
mov eax, dword [ebp - 0x20]
mov edx, eax
mov cl, al
shr edx, 6
and ecx, 0x3f
shr eax, 0xc
and edx, 0x3f
and eax, 0x3f
mov byte [ebx + 4], cl
mov byte [ebx + 5], dl
mov byte [ebx + 6], al
jmp short loc_0001cdea  ; jmp 0x1cdea

loc_0001ce4b:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001ce53:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x14
push 0x1b
call fcn_000174f8  ; call 0x174f8
leave
shrd eax, edx, 8
and eax, 1
ret

fcn_0001ce69:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x14
push 0x35
call fcn_000174f8  ; call 0x174f8
add esp, 0x10
leave
mov edx, eax
movzx eax, al
shr edx, 0x10
div dl
cmp al, 1
seta al
ret

fcn_0001ce8a:
push ebp
mov ebp, esp
push ebx
sub esp, 0x14
mov edx, dword [ebp + 8]
mov ebx, dword [ebp + 0xc]
mov eax, dword [ebp + 0x10]
mov dword [ebp - 0xc], 0
test dx, dx
jne short loc_0001cead  ; jne 0x1cead
mov word [ebx], 0
jmp short loc_0001cf00  ; jmp 0x1cf00

loc_0001cead:
test al, al
jne short loc_0001cecf  ; jne 0x1cecf
lea eax, [ebp - 0xc]
cmp dx, 0xfff
push eax
mov eax, 0xfff
cmovbe eax, edx
movzx eax, ax
push 0x3e8
shl eax, 0xa
jmp short loc_0001cee5  ; jmp 0x1cee5

loc_0001cecf:
dec al
jne short loc_0001cf00  ; jne 0x1cf00
lea eax, [ebp - 0xc]
push eax
movzx eax, dx
imul eax, eax, 0x3e8
push 0x400

loc_0001cee5:
cdq
push edx
push eax
call fcn_0001743e  ; call 0x1743e
add esp, 0x10
cmp dword [ebp - 0xc], 0x1f3
mov word [ebx], ax
jbe short loc_0001cf00  ; jbe 0x1cf00
inc eax
mov word [ebx], ax

loc_0001cf00:
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001cf05:
push ebp
mov ebp, esp
push esi
push ebx
sub esp, 0x10
mov eax, dword [ebp + 8]
mov ebx, dword [ebp + 0xc]
mov ecx, dword [ebp + 0x10]
mov dword [ebp - 0xc], 0
mov word [ebx], 0
test ax, ax
je loc_0001cfaf  ; je 0x1cfaf
mov edx, eax
test cl, cl
jne short loc_0001cf60  ; jne 0x1cf60
xor esi, esi
test ax, ax
jns short loc_0001cf44  ; jns 0x1cf44
neg edx
mov esi, 1
and dx, 0x7fff

loc_0001cf44:
lea eax, [ebp - 0xc]
cmp dx, 0x1f4
push eax
mov eax, 0x1f4
cmovle eax, edx
cwde
push 0x3e8
shl eax, 0xa
jmp short loc_0001cf8b  ; jmp 0x1cf8b

loc_0001cf60:
dec cl
jne short loc_0001cfaf  ; jne 0x1cfaf
xor esi, esi
test ah, 4
je short loc_0001cf79  ; je 0x1cf79
mov edx, eax
mov esi, 1
neg edx
and dx, 0x3ff

loc_0001cf79:
lea eax, [ebp - 0xc]
push eax
movsx eax, dx
imul eax, eax, 0x3e8
push 0x400

loc_0001cf8b:
cdq
push edx
push eax
call fcn_0001743e  ; call 0x1743e
add esp, 0x10
cmp dword [ebp - 0xc], 0x1f3
mov word [ebx], ax
jbe short loc_0001cfa6  ; jbe 0x1cfa6
inc eax
mov word [ebx], ax

loc_0001cfa6:
mov eax, esi
test al, al
je short loc_0001cfaf  ; je 0x1cfaf
neg word [ebx]

loc_0001cfaf:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0001cfb6:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x24
mov ebx, dword [ebp + 0xc]
push 8
mov esi, dword [ebp + 8]
push ebx
call fcn_00016f3b  ; call 0x16f3b
mov eax, dword [ebp + 0x10]
add esp, 0x10
dec eax
cmp eax, 0x14
ja loc_0001d10c  ; ja 0x1d10c
jmp dword [eax*4 + ref_0002057c]  ; ujmp: jmp dword [eax*4 + 0x2057c]

loc_0001cfe4:
mov dword [ebx], 0
mov byte [ebx + 4], 1
mov al, byte [esi + 4]
jmp short loc_0001d019  ; jmp 0x1d019

loc_0001cff3:
mov dword [ebx], 0
mov byte [ebx + 4], 2
mov byte [ebx + 5], 0
mov al, byte [esi + 4]
mov byte [ebx + 6], al
jmp near loc_0001d129  ; jmp 0x1d129

loc_0001d00c:
mov dword [ebx], 0
mov byte [ebx + 4], 0x10
mov al, byte [esi + 6]

loc_0001d019:
mov byte [ebx + 5], al
jmp near loc_0001d129  ; jmp 0x1d129

loc_0001d021:
mov al, byte [esi]
lea edi, [ebp - 0x1e]
push ecx
push 0
push edi
mov byte [ebp - 0x1c], al
movzx eax, word [esi + 2]
mov word [ebp - 0x1e], 0
push eax
call fcn_0001ce8a  ; call 0x1ce8a
movzx edx, word [ebp - 0x1e]
add esp, 0xc
mov eax, dword [ebp - 0x1c]
mov word [ebp - 0x1e], 0
and edx, 0xfff
shl edx, 8
and eax, 0xfff000ff
or eax, edx
mov dword [ebp - 0x1c], eax
mov dl, byte [esi + 1]
mov al, byte [ebp - 0x1a]
push 0
push edi
and edx, 1
shl edx, 4
and eax, 0xffffffef
or eax, edx
mov byte [ebp - 0x1a], al
movsx eax, word [esi + 4]
push eax
call fcn_0001cf05  ; call 0x1cf05
mov ax, word [ebp - 0x1a]
add esp, 0xc
mov dx, word [ebp - 0x1e]
push 4
and eax, 0x1f
shl edx, 5
or eax, edx
mov word [ebp - 0x1a], ax
lea eax, [ebp - 0x1c]
push eax
push ebx
call fcn_0001707a  ; call 0x1707a
mov byte [ebx + 4], 0x11
mov al, byte [esi + 6]
mov byte [ebx + 5], al
jmp short loc_0001d126  ; jmp 0x1d126

loc_0001d0b0:
mov dword [ebx], 0
mov byte [ebx + 4], 0x12
jmp short loc_0001d106  ; jmp 0x1d106

loc_0001d0bc:
push edx
push 0
lea eax, [ebp - 0x1e]
push eax
movzx eax, word [esi]
push eax
call fcn_0001ce8a  ; call 0x1ce8a
movzx eax, byte [esi + 2]
movzx edx, word [ebp - 0x1e]
mov byte [ebx + 4], 0x13
mov byte [ebx + 5], 0
shl eax, 0x1f
or eax, edx
mov dword [ebx], eax
jmp short loc_0001d126  ; jmp 0x1d126

loc_0001d0e5:
mov dword [ebx], 0
mov byte [ebx + 4], 0x14
jmp short loc_0001d106  ; jmp 0x1d106

loc_0001d0f1:
mov al, byte [esi + 1]
mov dl, byte [esi]
mov byte [ebx + 4], 0x15
and eax, 1
add eax, eax
and edx, 1
or eax, edx
mov dword [ebx], eax

loc_0001d106:
mov byte [ebx + 5], 0
jmp short loc_0001d129  ; jmp 0x1d129

loc_0001d10c:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001d129  ; je 0x1d129
push eax
push eax
push ref_00026752  ; push 0x26752
push 0x80000000
call fcn_000153f7  ; call 0x153f7

loc_0001d126:
add esp, 0x10

loc_0001d129:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001d131:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x34
mov ebx, dword [ebp + 8]
push 8
mov edi, dword [ebp + 0xc]
lea esi, [ebp - 0x20]
push esi
call fcn_00016f3b  ; call 0x16f3b
add esp, 0xc
push 0x10
push esi
push ebx
call fcn_0001cfb6  ; call 0x1cfb6
push edi
push esi
push dword [ebp - 0x1c]
push 2
call fcn_0001cb4b  ; call 0x1cb4b
add esp, 0x20
test eax, eax
jne short loc_0001d1b0  ; jne 0x1d1b0
cmp dword [edi], 0
jne short loc_0001d1b0  ; jne 0x1d1b0
mov edx, dword [ebp - 0x20]
mov dword [ebp - 0x2c], eax
mov ecx, edx
and ecx, 0x100000
shr ecx, 0x14
mov byte [ebx], dl
movzx edx, dh
mov byte [ebx + 1], cl
lea ecx, [ebx + 2]
add ebx, 4
push eax
push 1
push ecx
push edx
call fcn_0001ce8a  ; call 0x1ce8a
mov edx, dword [ebp - 0x20]
add esp, 0xc
push 1
push ebx
shr edx, 0x15
push edx
call fcn_0001cf05  ; call 0x1cf05
mov eax, dword [ebp - 0x2c]
add esp, 0x10

loc_0001d1b0:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001d1b8:
push ebp
mov ebp, esp
sub esp, 0x1c
push 0x11
lea eax, [ebp - 0x10]
push eax
lea eax, [ebp + 8]
push eax
call fcn_0001cfb6  ; call 0x1cfb6
push dword [ebp + 0x10]
push dword [ebp - 0x10]
push dword [ebp - 0xc]
push 2
call fcn_0001c938  ; call 0x1c938
leave
ret

fcn_0001d1df:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x24
mov ebx, dword [ebp + 8]
push 8
mov edi, dword [ebp + 0xc]
lea esi, [ebp - 0x20]
push esi
call fcn_00016f3b  ; call 0x16f3b
add esp, 0xc
push 0x14
push esi
push ebx
call fcn_0001cfb6  ; call 0x1cfb6
push edi
push esi
push dword [ebp - 0x1c]
push 2
call fcn_0001cb4b  ; call 0x1cb4b
add esp, 0x20
test eax, eax
jne short loc_0001d22f  ; jne 0x1d22f
cmp dword [edi], 0
jne short loc_0001d22f  ; jne 0x1d22f
mov edx, dword [ebp - 0x20]
mov cl, dl
and edx, 2
and ecx, 1
shr edx, 1
mov byte [ebx], cl
mov byte [ebx + 1], dl

loc_0001d22f:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001d237:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x1c
push 0x15
lea eax, [ebp - 0x10]
push eax
lea eax, [ebp + 8]
push eax
call fcn_0001cfb6  ; call 0x1cfb6
push dword [ebp + 0xc]
push dword [ebp - 0x10]
push dword [ebp - 0xc]
push 2
call fcn_0001c938  ; call 0x1c938
leave
ret

fcn_0001d25e:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x24
mov ebx, dword [ebp + 8]
push 8
mov edi, dword [ebp + 0xc]
lea esi, [ebp - 0x20]
push esi
call fcn_00016f3b  ; call 0x16f3b
add esp, 0xc
push 0x12
push esi
push ebx
call fcn_0001cfb6  ; call 0x1cfb6
push edi
push esi
push dword [ebp - 0x1c]
push 2
call fcn_0001cb4b  ; call 0x1cb4b
add esp, 0x20
test eax, eax
jne short loc_0001d2af  ; jne 0x1d2af
cmp dword [edi], 0
jne short loc_0001d2af  ; jne 0x1d2af
mov edx, dword [ebp - 0x20]
mov ecx, edx
and cx, 0xfff
shr edx, 0x1f
mov word [ebx], cx
mov byte [ebx + 2], dl

loc_0001d2af:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001d2b7:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 0x1c
push 0x13
lea eax, [ebp - 0x10]
push eax
lea eax, [ebp + 8]
push eax
call fcn_0001cfb6  ; call 0x1cfb6
push dword [ebp + 0xc]
push dword [ebp - 0x10]
push dword [ebp - 0xc]
push 2
call fcn_0001c938  ; call 0x1c938
leave
ret

fcn_0001d2de:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x24
mov ebx, dword [ebp + 8]
push 8
mov edi, dword [ebp + 0xc]
lea esi, [ebp - 0x20]
push esi
call fcn_00016f3b  ; call 0x16f3b
add esp, 0xc
push 1
push esi
push ebx
call fcn_0001cfb6  ; call 0x1cfb6
push edi
push esi
push dword [ebp - 0x1c]
push 2
call fcn_0001cb4b  ; call 0x1cb4b
add esp, 0x20
test eax, eax
jne short loc_0001d349  ; jne 0x1d349
cmp dword [edi], 0
jne short loc_0001d349  ; jne 0x1d349
mov edx, dword [ebp - 0x20]
mov ecx, edx
and ecx, 0x100
shr ecx, 8
mov byte [ebx + 1], cl
mov ecx, edx
mov byte [ebx], dl
and ecx, 0x200
and edx, 0x400
shr ecx, 9
shr edx, 0xa
mov byte [ebx + 2], cl
mov byte [ebx + 3], dl

loc_0001d349:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001d351:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
mov edx, dword [ref_00031230]  ; mov edx, dword [0x31230]
mov eax, dword [ebp + 0xc]
add eax, 3
and eax, 0xfffffffc
test edx, edx
jne short loc_0001d376  ; jne 0x1d376
mov dword [ref_00031234], ref_00029d00  ; mov dword [0x31234], 0x29d00
jmp short loc_0001d39c  ; jmp 0x1d39c

loc_0001d376:  ; not directly referenced
mov ecx, dword [ref_00031234]  ; mov ecx, dword [0x31234]
cmp dword [ecx + edx], 0x900ddea1
je short loc_0001d39c  ; je 0x1d39c
push eax
push 0x3d
push ref_000205d0  ; push 0x205d0
push ref_00026773  ; push 0x26773
call fcn_000153ce  ; call 0x153ce
add esp, 0x10

loc_0001d39a:  ; not directly referenced
jmp short loc_0001d39a  ; jmp 0x1d39a

loc_0001d39c:  ; not directly referenced
lea ecx, [eax + edx]
cmp ecx, 0x752c
jbe short loc_0001d3be  ; jbe 0x1d3be
push eax
push 0x4b
push ref_000205d0  ; push 0x205d0
push ref_00026793  ; push 0x26793
call fcn_000153ce  ; call 0x153ce
add esp, 0x10

loc_0001d3bc:  ; not directly referenced
jmp short loc_0001d3bc  ; jmp 0x1d3bc

loc_0001d3be:  ; not directly referenced
mov eax, dword [ref_00031234]  ; mov eax, dword [0x31234]
mov dword [ref_00031230], ecx  ; mov dword [0x31230], ecx
mov dword [eax + ecx], 0x900ddea1
mov ecx, dword [ebp + 0x10]
add edx, eax
xor eax, eax
mov dword [ecx], edx
leave
ret

fcn_0001d3db:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 0xc]
mov edi, dword [ebp + 0x10]
mov ebx, dword [ebp + 0x14]
mov dword [ebp - 0x1c], eax
call fcn_00016376  ; call 0x16376
movzx esi, di
sub esp, 0xc
mov dword [ebp - 0x20], eax
lea eax, [esi + 0xc]
push eax
call fcn_00019c79  ; call 0x19c79
add esp, 0x10
mov ecx, dword [ebp - 0x20]
test eax, eax
mov edx, eax
jne short loc_0001d437  ; jne 0x1d437
call fcn_000153e9  ; call 0x153e9
mov edi, 0x80000009
test al, al
je short loc_0001d49b  ; je 0x1d49b
push eax
push esi
push ref_000267b9  ; push 0x267b9
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10
jmp short loc_0001d49b  ; jmp 0x1d49b

loc_0001d437:  ; not directly referenced
lea eax, [eax + 4]
mov dword [ebx], eax
mov eax, dword [ebp - 0x1c]
mov word [edx + 4], ax
mov eax, dword [ebx]
mov word [eax + 2], di
mov eax, dword [ebx]
xor edi, edi
mov dword [eax + 4], 0
mov eax, dword [ebx]
add eax, esi
mov word [eax], 0xffff
mov word [eax + 2], 8
mov dword [eax + 4], 0
mov eax, dword [ecx + 0x26c]
mov dword [edx], eax
mov dword [ecx + 0x26c], edx
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001d49b  ; je 0x1d49b
sub esp, 0xc
movzx eax, word [ebp - 0x1c]
push dword [ebx]
push esi
push eax
push ref_000267df  ; push 0x267df
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x20

loc_0001d49b:  ; not directly referenced
lea esp, [ebp - 0xc]
mov eax, edi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001d4a5:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
call fcn_00016376  ; call 0x16376
mov edx, dword [eax + 0x26c]
mov eax, dword [ebp + 0xc]
add edx, 4
mov dword [eax], edx
xor eax, eax
leave
ret

fcn_0001d4c2:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x3c
call fcn_00016380  ; call 0x16380
sub esp, 0xc
push 0x27
mov edi, eax
call fcn_00019cf2  ; call 0x19cf2
mov dword [ebp - 0x1c], eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0001d4fe  ; je 0x1d4fe
cmp dword [ebp - 0x1c], 0
jne short loc_0001d508  ; jne 0x1d508
push edi
push ref_000267f9  ; push 0x267f9
push 0x41
jmp near loc_0001d666  ; jmp 0x1d666

loc_0001d4fe:
cmp dword [ebp - 0x1c], 0
je loc_0001d673  ; je 0x1d673

loc_0001d508:
sub esp, 0xc
push 0xc
call fcn_00019cf2  ; call 0x19cf2
mov dword [ebp - 0x20], eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0001d534  ; je 0x1d534
cmp dword [ebp - 0x20], 0
jne short loc_0001d53e  ; jne 0x1d53e
push esi
push ref_00026839  ; push 0x26839
push 0x47
jmp near loc_0001d666  ; jmp 0x1d666

loc_0001d534:
cmp dword [ebp - 0x20], 0
je loc_0001d673  ; je 0x1d673

loc_0001d53e:
sub esp, 0xc
push 0x36
call fcn_00019cf2  ; call 0x19cf2
mov dword [ebp - 0x24], eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0001d56a  ; je 0x1d56a
cmp dword [ebp - 0x24], 0
jne short loc_0001d574  ; jne 0x1d574
push ebx
push ref_00026861  ; push 0x26861
push 0x4d
jmp near loc_0001d666  ; jmp 0x1d666

loc_0001d56a:
cmp dword [ebp - 0x24], 0
je loc_0001d673  ; je 0x1d673

loc_0001d574:
sub esp, 0xc
push 0xd
call fcn_00019cf2  ; call 0x19cf2
mov dword [ebp - 0x28], eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0001d5a0  ; je 0x1d5a0
cmp dword [ebp - 0x28], 0
jne short loc_0001d5aa  ; jne 0x1d5aa
push ecx
push ref_0002687e  ; push 0x2687e
push 0x53
jmp near loc_0001d666  ; jmp 0x1d666

loc_0001d5a0:
cmp dword [ebp - 0x28], 0
je loc_0001d673  ; je 0x1d673

loc_0001d5aa:
sub esp, 0xc
push 0x102
call fcn_00019cf2  ; call 0x19cf2
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0001d5d6  ; je 0x1d5d6
test ebx, ebx
jne short loc_0001d5de  ; jne 0x1d5de
push edx
push ref_00026897  ; push 0x26897
push 0x59
jmp near loc_0001d666  ; jmp 0x1d666

loc_0001d5d6:
test ebx, ebx
je loc_0001d673  ; je 0x1d673

loc_0001d5de:
sub esp, 0xc
push 0xdc
call fcn_00019cf2  ; call 0x19cf2
mov esi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0001d607  ; je 0x1d607
test esi, esi
jne short loc_0001d60b  ; jne 0x1d60b
push eax
push ref_000268b1  ; push 0x268b1
push 0x5f
jmp short loc_0001d666  ; jmp 0x1d666

loc_0001d607:
test esi, esi
je short loc_0001d673  ; je 0x1d673

loc_0001d60b:
sub esp, 0xc
push 0x6b
call fcn_00019cf2  ; call 0x19cf2
mov dword [ebp - 0x2c], eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
mov edx, dword [ebp - 0x2c]
test al, al
je short loc_0001d635  ; je 0x1d635
test edx, edx
jne short loc_0001d639  ; jne 0x1d639
push eax
push ref_000268d0  ; push 0x268d0
push 0x65
jmp short loc_0001d666  ; jmp 0x1d666

loc_0001d635:
test edx, edx
je short loc_0001d673  ; je 0x1d673

loc_0001d639:
sub esp, 0xc
push 5
mov dword [ebp - 0x30], edx
call fcn_00019cf2  ; call 0x19cf2
mov dword [ebp - 0x2c], eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
mov edx, dword [ebp - 0x30]
test al, al
je short loc_0001d67d  ; je 0x1d67d
cmp dword [ebp - 0x2c], 0
jne short loc_0001d683  ; jne 0x1d683
push eax
push ref_000268eb  ; push 0x268eb
push 0x6b

loc_0001d666:
push ref_0002681d  ; push 0x2681d
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001d673:
mov edx, 0x80000009
jmp near loc_0001dee4  ; jmp 0x1dee4

loc_0001d67d:
cmp dword [ebp - 0x2c], 0
je short loc_0001d673  ; je 0x1d673

loc_0001d683:
sub esp, 0xc
push 0x11
mov dword [ebp - 0x34], edx
call fcn_00019cf2  ; call 0x19cf2
mov dword [ebp - 0x30], eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
mov edx, dword [ebp - 0x34]
test al, al
je short loc_0001d6b2  ; je 0x1d6b2
cmp dword [ebp - 0x30], 0
jne short loc_0001d6b8  ; jne 0x1d6b8
push eax
push ref_00026907  ; push 0x26907
push 0x71
jmp short loc_0001d666  ; jmp 0x1d666

loc_0001d6b2:
cmp dword [ebp - 0x30], 0
je short loc_0001d673  ; je 0x1d673

loc_0001d6b8:
lea eax, [edi + 0xce]
mov dword [esi + 0xd0], eax
lea eax, [edi + 0x8ce]
mov dword [esi + 0xd4], eax
lea eax, [edi + 0x8e6]
mov dword [esi + 0xd8], eax
push eax
push 0
push 0x27
push dword [ebp - 0x1c]
mov dword [ebp - 0x40], edx
call fcn_0001efeb  ; call 0x1efeb
mov eax, dword [ebp - 0x20]
mov ecx, dword [ebp - 0x1c]
mov dword [eax], 0x80000010
mov dword [eax + 8], ecx
mov dword [eax + 4], ref_0002925c  ; mov dword [eax + 4], 0x2925c
mov byte [ecx], 0x13
call fcn_0001c58d  ; call 0x1c58d
add esp, 0x10
mov edx, dword [ebp - 0x40]
cmp eax, 0x306d0
sete cl
cmp eax, 0x40670
mov dword [ebp - 0x38], eax
sete al
mov byte [ebp - 0x34], al
or al, cl
mov byte [ebp - 0x39], cl
mov byte [ebp - 0x3a], al
je short loc_0001d74d  ; je 0x1d74d
push eax
push 0
push 2
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 2
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
mov edx, dword [ebp - 0x40]
add esp, 0x10

loc_0001d74d:
mov al, byte [edi + 0x42]
mov dword [ebp - 0x40], edx
mov edx, dword [ebp - 0x24]
mov ecx, dword [ebp - 0x1c]
cmp byte [ebp - 0x3a], 1
mov byte [edx], al
mov al, byte [edi + 0x43]
mov byte [edx + 1], al
mov al, byte [edi + 0x44]
mov byte [edx + 2], al
mov al, byte [edi + 0x45]
mov dword [edx + 4], 0xfed10000
mov dword [edx + 8], 0xfed18000
mov dword [edx + 0xc], 0xfed19000
mov byte [edx + 3], al
mov dword [edx + 0x22], 0xfed80000
mov eax, dword [edi + 0x14]
mov dword [edx + 0x10], eax
movzx eax, word [edi + 0x18]
mov dword [edx + 0x14], eax
mov eax, dword [edi + 0x36]
mov dword [edx + 0x2b], 0x400000
mov dword [edx + 0x18], 0xfed84000
mov word [edx + 0x26], 0
mov dword [edx + 0x1c], eax
mov eax, dword [edi + 4]
mov byte [edx + 0x20], al
sbb eax, eax
mov dword [ecx + 1], edx
mov edx, dword [ebp - 0x28]
add eax, 3
mov word [edx + 2], ax
mov byte [edx + 4], 1
mov byte [edx + 5], 1
mov byte [edx + 6], 0
mov byte [edx + 7], 1
mov byte [edx + 0xc], 1
mov eax, dword [edi + 0x22]
mov word [edx], 0x800
mov dword [edx + 8], eax
mov dword [ecx + 5], edx
mov byte [ebx], 0
mov eax, dword [edi + 0x4e]
mov byte [ebx + 3], 1
mov dword [ebx + 4], 0
mov byte [ebx + 0x10], 0
mov word [ebx + 1], ax
mov byte [ebx + 0x11], 1
mov byte [ebx + 0x5d], 0xff
mov byte [ebx + 0x5e], 0x80
mov byte [ebx + 0x5f], 1
mov byte [ebx + 0x60], 1
mov byte [ebx + 0x61], 1
mov byte [ebx + 0x62], 7
mov byte [ebx + 0x63], 0
mov byte [ebx + 0xcf], 1
mov byte [ebx + 0xfe], 0
mov byte [ebx + 0xff], 0xe
mov byte [ebx + 0x100], 0
mov byte [ebx + 0xc2], 1
mov byte [ebx + 0xc3], 1
mov byte [ebx + 0xf2], 0
mov byte [ebx + 0x24], 1
mov byte [ebx + 0x25], 0
mov byte [ebx + 0x26], 0
mov byte [ebx + 0x27], 0
mov byte [ebx + 0x28], 0
mov eax, dword [edi + 0x3a]
mov byte [ebx + 0x2a], al
mov eax, dword [edi + 0x3e]
mov byte [ebx + 0x2b], al
mov cl, byte [ebp - 0x39]
cmp dword [ebp - 0x38], 0x40650
mov byte [ebx + 0x6d], 2
mov edx, dword [ebp - 0x40]
mov word [ebx + 0x6e], 0x30ce
sete al
or cl, al
mov byte [ebx + 0x70], 1
mov byte [ebx + 0x71], 0
mov byte [ebx + 0x72], 0
mov byte [ebx + 0x73], 0
mov byte [ebx + 0x74], 1
jne short loc_0001d8ad  ; jne 0x1d8ad
cmp byte [ebp - 0x34], 0
je short loc_0001d8b1  ; je 0x1d8b1

loc_0001d8ad:
mov byte [ebx + 0x75], 0

loc_0001d8b1:
mov al, byte [edi + 0x46]
mov byte [ebx + 0x77], 1
mov byte [ebx + 0x78], 0
mov byte [ebx + 0x79], 0
mov byte [ebx + 0x76], al
mov byte [ebx + 0x7a], 3
mov byte [ebx + 0x7b], 0
mov byte [ebx + 0x7c], 0
mov byte [ebx + 0x7d], 0
mov byte [ebx + 0x7e], 0
mov byte [ebx + 0x7f], 0
mov byte [ebx + 0x80], 0
mov word [ebx + 0x81], 0
mov byte [ebx + 0x83], 0
mov byte [ebx + 0x84], 0
mov byte [ebx + 0x85], 0
mov word [ebx + 0x86], 0
mov byte [ebx + 0x88], 0xff
mov byte [ebx + 0x89], 0xff
mov byte [ebx + 0x8a], 0xff
mov byte [ebx + 0x8b], 0xff
mov byte [ebx + 0x8c], 0xff
mov byte [ebx + 0x8d], 0xff
mov byte [ebx + 0x8e], 0xff
mov byte [ebx + 0x8f], 0xff
mov byte [ebx + 0x90], 0xff
mov byte [ebx + 0x91], 0xff
mov byte [ebx + 0x92], 0xff
mov byte [ebx + 0x93], 0xff
mov byte [ebx + 0x94], 0xff
mov byte [ebx + 0x95], 0xff
mov byte [ebx + 0x96], 0xff
mov byte [ebx + 0x97], 0xff
mov byte [ebx + 0x98], 0
mov byte [ebx + 0x99], 0
mov byte [ebx + 0x9a], 0
mov byte [ebx + 0x9b], 0
mov byte [ebx + 0x9c], 0
mov byte [ebx + 0x9d], 0
mov byte [ebx + 0x9e], 0
mov byte [ebx + 0x9f], 0
mov byte [ebx + 0xa0], 0
mov byte [ebx + 0xa1], 0
mov byte [ebx + 0xa2], 0
mov byte [ebx + 0xa3], 0
mov byte [ebx + 0xa4], 0
mov byte [ebx + 0xa5], 0
mov byte [ebx + 0xa6], 0
mov byte [ebx + 0xa7], 0
mov byte [ebx + 0xa8], 0
mov byte [ebx + 0xa9], 0
mov byte [ebx + 0xaa], 0
mov byte [ebx + 0xab], 0
cmp dword [edi + 0x52], 0
mov word [ebx + 0xad], 0x200
mov byte [ebx + 0xaf], 0
sete byte [ebx + 0xac]
mov byte [ebx + 0xb0], 0x30
test cl, cl
jne short loc_0001da31  ; jne 0x1da31
cmp byte [ebp - 0x34], 0
je short loc_0001da3f  ; je 0x1da3f

loc_0001da31:
mov byte [ebx + 0xb1], 1
mov byte [ebx + 0xb2], 0x40

loc_0001da3f:
mov byte [ebx + 0x101], 0xff
mov byte [ebx + 0x2e], 1
mov byte [ebx + 0x2f], 0
mov byte [ebx + 0x30], 4
mov byte [ebx + 0x31], 0xc
mov byte [ebx + 0x6b], 0
mov byte [ebx + 0x32], 0
mov byte [ebx + 0x33], 1
mov byte [ebx + 0x34], 1
mov byte [ebx + 0x35], 1
mov byte [ebx + 0x36], 1
mov byte [ebx + 0x37], 0
mov byte [ebx + 0x38], 1
mov byte [ebx + 0x39], 1
mov byte [ebx + 0x3a], 1
mov byte [ebx + 0x3b], 0
mov byte [ebx + 0x3c], 1
mov byte [ebx + 0x3e], 1
mov byte [ebx + 0x3f], 0
mov byte [ebx + 0x40], 1
mov byte [ebx + 0x41], 1
mov byte [ebx + 0x42], 1
mov byte [ebx + 0x5c], 1
mov byte [ebx + 0x43], 1
mov byte [ebx + 0x44], 1
mov byte [ebx + 0x47], 1
mov byte [ebx + 0x48], 1
mov byte [ebx + 0x49], 1
mov byte [ebx + 0x4a], 0
mov byte [ebx + 0x4b], 0
mov byte [ebx + 0x58], 0
mov byte [ebx + 0x59], 0
mov byte [ebx + 0x5a], 1
mov byte [ebx + 0x6a], 1
mov byte [ebx + 0xc5], 1
mov byte [ebx + 0xce], 1
cmp dword [edi + 0x56], 0
mov byte [ebx + 0xd0], 1
mov byte [ebx + 0x2c], 1
sete byte [ebx + 0xfd]
mov byte [ebx + 0x55], 0
mov byte [ebx + 0x56], 1
mov word [ebx + 0x4c], 0
mov dword [ebx + 0x4e], 0
mov byte [ebx + 0x53], 2
mov byte [ebx + 0x54], 0
mov dword [ebx + 0x64], 0x5f5e100
mov byte [ebx + 0xc4], 0
mov byte [ebx + 0x5b], 1
mov byte [ebx + 0xf3], 1
mov byte [ebx + 0xc7], 0
mov al, byte [edi + 0x4a]
mov byte [ebx + 0x57], al
test cl, cl
jne short loc_0001db3b  ; jne 0x1db3b
cmp byte [ebp - 0x34], 0
jmp short loc_0001db42  ; jmp 0x1db42

loc_0001db3b:
cmp dword [ebp - 0x38], 0x40650

loc_0001db42:
je short loc_0001dbc3  ; je 0x1dbc3
mov byte [ebx + 0xfc], 0
mov byte [ebx + 0xd1], 0
mov dword [ebx + 0xd2], 0
mov dword [ebx + 0xd6], 0
mov dword [ebx + 0xda], 0
mov dword [ebx + 0xde], 0
mov dword [ebx + 0xe2], 0
mov dword [ebx + 0xe6], 0
mov dword [ebx + 0xea], 0
mov dword [ebx + 0xee], 0
mov byte [ebx + 0xf4], 1
mov dword [ebx + 0xf5], 0x320
mov word [ebx + 0xf9], 0x118
mov byte [ebx + 0xfb], 7

loc_0001dbc3:
push ecx
push 0
push 0
push 0
mov dword [ebp - 0x24], edx
call fcn_00016bd6  ; call 0x16bd6
add eax, 2
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
mov edx, dword [ebp - 0x24]
mov ecx, eax
and ch, 0xfe
cmp cx, 0xc04
je short loc_0001dc0a  ; je 0x1dc0a
mov ecx, eax
and ecx, 0xfffffff7
cmp cx, 0xa04
je short loc_0001dc0a  ; je 0x1dc0a
and eax, 0xffffffef
cmp ax, 0x1604
sete al
movzx eax, al
jmp short loc_0001dc0f  ; jmp 0x1dc0f

loc_0001dc0a:
mov eax, 1

loc_0001dc0f:
mov byte [ebx + 0xc6], al
mov word [ebx + 0xc8], 0xcf8
mov word [ebx + 0xca], 0xcfc
mov byte [ebx + 0xcc], 0xaa
mov dword [esi], fcn_00018e1d  ; mov dword [esi], 0x18e1d
mov dword [esi + 4], fcn_00018e32  ; mov dword [esi + 4], 0x18e32
mov dword [esi + 8], fcn_00018ea0  ; mov dword [esi + 8], 0x18ea0
mov dword [esi + 0xc], fcn_00018e26  ; mov dword [esi + 0xc], 0x18e26
mov dword [esi + 0x10], fcn_00018e63  ; mov dword [esi + 0x10], 0x18e63
mov dword [esi + 0x14], fcn_00018ed3  ; mov dword [esi + 0x14], 0x18ed3
mov dword [esi + 0x18], fcn_00017cc7  ; mov dword [esi + 0x18], 0x17cc7
mov dword [esi + 0x1c], fcn_00017cfe  ; mov dword [esi + 0x1c], 0x17cfe
mov dword [esi + 0x20], fcn_00017d8a  ; mov dword [esi + 0x20], 0x17d8a
mov dword [esi + 0x24], fcn_00017e14  ; mov dword [esi + 0x24], 0x17e14
mov dword [esi + 0x28], fcn_00017ce1  ; mov dword [esi + 0x28], 0x17ce1
mov dword [esi + 0x2c], fcn_00017d40  ; mov dword [esi + 0x2c], 0x17d40
mov dword [esi + 0x30], fcn_00017dcb  ; mov dword [esi + 0x30], 0x17dcb
mov dword [esi + 0x34], fcn_00016a52  ; mov dword [esi + 0x34], 0x16a52
mov dword [esi + 0x38], fcn_0001a1be  ; mov dword [esi + 0x38], 0x1a1be
mov dword [esi + 0x3c], fcn_0001a2b8  ; mov dword [esi + 0x3c], 0x1a2b8
mov dword [esi + 0x40], fcn_0001a236  ; mov dword [esi + 0x40], 0x1a236
mov dword [esi + 0x44], fcn_0001a331  ; mov dword [esi + 0x44], 0x1a331
mov dword [esi + 0x48], fcn_00016740  ; mov dword [esi + 0x48], 0x16740
mov dword [esi + 0x4c], fcn_0001676e  ; mov dword [esi + 0x4c], 0x1676e
mov dword [esi + 0x50], fcn_000167d1  ; mov dword [esi + 0x50], 0x167d1
mov dword [esi + 0x54], fcn_000169be  ; mov dword [esi + 0x54], 0x169be
mov dword [esi + 0x58], fcn_0001707a  ; mov dword [esi + 0x58], 0x1707a
mov dword [esi + 0x5c], fcn_0001efeb  ; mov dword [esi + 0x5c], 0x1efeb
mov dword [esi + 0x60], fcn_000169f9  ; mov dword [esi + 0x60], 0x169f9
mov dword [esi + 0x64], fcn_00016a12  ; mov dword [esi + 0x64], 0x16a12
mov dword [esi + 0x68], fcn_0001fd4c  ; mov dword [esi + 0x68], 0x1fd4c
mov dword [esi + 0x6c], fcn_0001718b  ; mov dword [esi + 0x6c], 0x1718b
mov dword [esi + 0x70], fcn_0001fd96  ; mov dword [esi + 0x70], 0x1fd96
mov dword [esi + 0x74], fcn_0001fd9f  ; mov dword [esi + 0x74], 0x1fd9f
mov eax, dword [ebp - 0x1c]
mov dword [esi + 0x78], fcn_0001667c  ; mov dword [esi + 0x78], 0x1667c
mov dword [esi + 0x7c], fcn_00016a80  ; mov dword [esi + 0x7c], 0x16a80
mov dword [esi + 0x80], fcn_0001cb4b  ; mov dword [esi + 0x80], 0x1cb4b
mov dword [esi + 0x84], fcn_0001c938  ; mov dword [esi + 0x84], 0x1c938
mov dword [esi + 0x88], fcn_00016ae0  ; mov dword [esi + 0x88], 0x16ae0
mov dword [esi + 0x8c], fcn_00016ae7  ; mov dword [esi + 0x8c], 0x16ae7
mov dword [esi + 0x90], fcn_00016aef  ; mov dword [esi + 0x90], 0x16aef
mov dword [esi + 0x94], fcn_00016b18  ; mov dword [esi + 0x94], 0x16b18
mov dword [esi + 0x98], fcn_0001671d  ; mov dword [esi + 0x98], 0x1671d
mov dword [esi + 0x9c], fcn_00016792  ; mov dword [esi + 0x9c], 0x16792
mov dword [esi + 0xa0], fcn_000174f8  ; mov dword [esi + 0xa0], 0x174f8
mov dword [esi + 0xa4], fcn_00017502  ; mov dword [esi + 0xa4], 0x17502
mov dword [esi + 0xa8], fcn_00016b8c  ; mov dword [esi + 0xa8], 0x16b8c
mov dword [eax + 9], ebx
mov dword [eax + 0x1e], esi
xor eax, eax
mov byte [edx], 0
mov byte [edx + 1], 1
mov byte [edx + 2], 1
mov byte [edx + 3], 1
mov byte [edx + 4], 0
mov byte [edx + 5], 0
mov byte [edx + 6], 0
mov byte [edx + 7], 0
mov byte [edx + 0x5c], 0xff
mov byte [edx + 0x61], 0
mov byte [edx + 0x5d], 0xff
mov byte [edx + 0x62], 0
mov byte [edx + 0x5e], 0xff
mov byte [edx + 0x63], 0
mov byte [edx + 8], 1
mov byte [edx + 0x39], 0
mov byte [edx + 0x40], 2
mov byte [edx + 0x5f], 0
mov byte [edx + 0x60], 0
mov byte [edx + 0x64], 2
mov word [edx + 0x65], 0x2710
mov word [edx + 0x67], 2
mov byte [edx + 0x69], 2
mov byte [edx + 0x6a], 2
mov byte [edx + 0x3b], 1
mov byte [edx + 0x48], 0
mov word [edx + 0x3c], 0x3e8
mov byte [edx + 0x3f], 0xf
mov byte [edx + 0x42], 0x14
mov word [edx + 0x50], 1

loc_0001de05:
mov byte [edx + eax + 9], 8
mov byte [edx + eax + 0x19], 7
mov byte [edx + eax + 0x29], 2
inc eax
cmp eax, 0x10
jne short loc_0001de05  ; jne 0x1de05
mov eax, dword [ebp - 0x2c]
mov byte [edx + 0x49], 0
mov byte [eax], 0
xor eax, eax
mov byte [edx + 0x52], 0
mov byte [edx + 0x53], 0

loc_0001de2e:
mov byte [edx + eax + 0x54], 8
inc eax
cmp eax, 8
jne short loc_0001de2e  ; jne 0x1de2e
mov esi, dword [ebp - 0x30]
sub esp, 0xc
mov ecx, dword [ebp - 0x1c]
mov dword [edx + 0x44], 0
mov dword [ecx + 0xd], edx
mov word [esi], 0
mov word [esi + 2], 0
mov word [esi + 4], 0
mov word [esi + 6], 0
mov word [esi + 8], 0
mov byte [esi + 0xa], 0
mov byte [esi + 0xb], 0
mov word [esi + 0xc], 0
mov word [esi + 0xe], 0
mov byte [esi + 0x10], 0
mov dword [ecx + 0x11], esi
mov byte [ecx + 0x22], 0
mov eax, dword [edi + 0x8f6]
mov dword [ecx + 0x15], eax
push dword [ebp - 0x20]
call fcn_00019667  ; call 0x19667
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
mov edx, ebx
test al, al
je short loc_0001dee4  ; je 0x1dee4
test ebx, ebx
jns short loc_0001dee4  ; jns 0x1dee4
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001deca  ; je 0x1deca
push edx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001deca:
push eax
push ref_00020664  ; push 0x20664
push 0x237
push ref_0002681d  ; push 0x2681d
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
mov edx, ebx

loc_0001dee4:
lea esp, [ebp - 0xc]
mov eax, edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001deee:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
call fcn_00016380  ; call 0x16380
mov esi, eax
call fcn_0001bef7  ; call 0x1bef7
sub esp, 0xc
push 0x5ac
mov dword [ebp - 0x1c], eax
call fcn_00019cf2  ; call 0x19cf2
add esp, 0x10
mov ebx, eax
test eax, eax
jne short loc_0001df47  ; jne 0x1df47
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001df3d  ; je 0x1df3d
push eax
push ref_000221f1  ; push 0x221f1
push 0x129

loc_0001df30:
push ref_00026920  ; push 0x26920
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001df3d:
mov edx, 0x80000009
jmp near loc_0001e5b3  ; jmp 0x1e5b3

loc_0001df47:
sub esp, 0xc
push 0xc
call fcn_00019cf2  ; call 0x19cf2
add esp, 0x10
mov dword [ebp - 0x20], eax
test eax, eax
jne short loc_0001df71  ; jne 0x1df71
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001df3d  ; je 0x1df3d
push eax
push ref_000221f1  ; push 0x221f1
push 0x12f
jmp short loc_0001df30  ; jmp 0x1df30

loc_0001df71:
mov eax, dword [ebp - 0x20]
xor edi, edi
mov dword [eax], 0x80000010
mov dword [eax + 4], ref_0002912c  ; mov dword [eax + 4], 0x2912c
mov dword [eax + 8], ebx
lea eax, [ebx + 0x284]
mov byte [ebx], 0xb
mov byte [ebx + 1], 0
mov dword [ebx + 4], 0xfed1c000
mov dword [ebp - 0x24], eax
mov eax, dword [esi + 0x2a]
mov word [ebx + 8], ax
mov eax, dword [esi + 0x2e]
mov byte [ebx + 0xc], 0
mov byte [ebx + 0x37e], 0
mov byte [ebx + 0x370], 1
mov word [ebx + 0xa], ax
mov byte [ebx + 0x1da], 1
mov byte [ebx + 0x386], 1
mov ax, word [esi + 0x18]
or byte [ebx + 0x45e], 1
or byte [ebx + 0x49e], 0x80
and byte [ebx + 0x486], 0xfe
mov word [ebx + 0x388], ax
mov byte [ebx + 0x3a], 0
mov byte [ebx + 0x496], 1
mov byte [ebx + 0x497], 1
mov byte [ebx + 0x498], 1
mov byte [ebx + 0x499], 1
mov byte [ebx + 0x49a], 1
mov byte [ebx + 0x49b], 1
mov byte [ebx + 0x49c], 1
mov byte [ebx + 0x49d], 1
or byte [ebx + 0x412], 0xf
or byte [ebx + 0x419], 0xc0
or byte [ebx + 0x41e], 2
or byte [ebx + 0x424], 0x40
mov byte [ebx + 0x43c], 1

loc_0001e04a:
call fcn_0001c11d  ; call 0x1c11d
movzx eax, al
cmp edi, eax
jae short loc_0001e064  ; jae 0x1e064
imul eax, edi, 0x12
inc edi
or byte [ebx + eax + 0x1e1], 0x40
jmp short loc_0001e04a  ; jmp 0x1e04a

loc_0001e064:
mov al, byte [ebx + 0x436]
xor ecx, ecx
and byte [ebx + 0x426], 0xfe
or byte [ebx + 0x432], 7
or eax, 3
and eax, 0xfffffffb
mov word [ebx + 0x43a], 0
mov byte [ebx + 0x436], al
mov byte [ebx + 0x1a8], 1

loc_0001e096:
mov dword [ebp - 0x28], ecx
call fcn_0001c0fb  ; call 0x1c0fb
mov ecx, dword [ebp - 0x28]
cmp cl, al
jae short loc_0001e0ce  ; jae 0x1e0ce
movzx eax, cl
imul eax, eax, 0x2c
add eax, ebx
mov dl, byte [eax + 0x46]
mov byte [eax + 0x4f], cl
mov byte [eax + 0x50], cl
inc ecx
mov byte [eax + 0x56], 4
or edx, 5
and edx, 0x7f
mov byte [eax + 0x57], 3
mov byte [eax + 0x4e], 0
mov byte [eax + 0x46], dl
jmp short loc_0001e096  ; jmp 0x1e096

loc_0001e0ce:
or byte [ebx + 0x17a], 8
sub esp, 0xc
and byte [ebx + 0x1aa], 0xfe
mov byte [ebx + 0x1a6], 0
mov byte [ebx + 0x1a7], 0
mov byte [ebx + 0x1a9], 1
push 0xc
call fcn_00019cf2  ; call 0x19cf2
add esp, 0x10
test eax, eax
jne short loc_0001e118  ; jne 0x1e118
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001e17c  ; je 0x1e17c
push eax
push ref_000221f1  ; push 0x221f1
push 0xf8
jmp short loc_0001e16f  ; jmp 0x1e16f

loc_0001e118:
sub esp, 0xc
mov dword [eax], 0x80000010
mov dword [eax + 4], ref_0002906c  ; mov dword [eax + 4], 0x2906c
mov dword [eax + 8], ref_00029698  ; mov dword [eax + 8], 0x29698
push eax
call fcn_00019667  ; call 0x19667
mov edi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0001e17c  ; je 0x1e17c
test edi, edi
jns short loc_0001e17c  ; jns 0x1e17c
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001e164  ; je 0x1e164
push eax
push edi
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001e164:
push ecx
push ref_00020664  ; push 0x20664
push 0x101

loc_0001e16f:
push ref_00026920  ; push 0x26920
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001e17c:
mov dword [ebx + 0x1db], 1
xor edi, edi

loc_0001e188:
call fcn_0001c11d  ; call 0x1c11d
mov edx, edi
cmp dl, al
jae loc_0001e217  ; jae 0x1e217
mov eax, edi
inc edi
movzx eax, al
imul eax, eax, 0x12
add eax, ebx
mov dl, byte [eax + 0x1e1]
lea ecx, [eax + 0x1da]
mov byte [eax + 0x1df], 0x71
mov byte [eax + 0x1e0], 0x1f
mov byte [eax + 0x1e4], 1
and edx, 0xffffffc0
or edx, 0x27
mov byte [eax + 0x1e1], dl
mov byte [eax + 0x1e6], 1
mov byte [eax + 0x1e8], 1
mov byte [eax + 0x1e3], 0
mov byte [eax + 0x1e5], 0
mov byte [eax + 0x1e7], 0
mov byte [eax + 0x1e9], 0
mov byte [eax + 0x1ea], 0
mov byte [eax + 0x1eb], 0
mov byte [eax + 0x1ec], 0
and byte [ecx + 0x13], 0xf0
jmp near loc_0001e188  ; jmp 0x1e188

loc_0001e217:
mov al, byte [ebx + 0x24c]
mov byte [ebx + 0x24b], 0x7e
mov byte [ebx + 0x253], 0
mov byte [ebx + 0x255], 1
or eax, 0x1e
and eax, 0xfffffffe
mov byte [ebx + 0x24c], al
mov byte [ebx + 0x254], 0
mov dword [ebx + 0x24f], 0
mov byte [ebx + 0x257], 0
mov byte [ebx + 0x258], 0
mov byte [ebx + 0x259], 0
mov byte [ebx + 0x25a], 0
mov byte [ebx + 0x25b], 0x64
call fcn_000153f0  ; call 0x153f0
mov byte [ebx + 0x38d], 4
push eax
push 4
push ref_00029600  ; push 0x29600
lea eax, [ebx + 0x38e]
push eax
call fcn_0001707a  ; call 0x1707a
mov word [ebx + 0x36], 0x8086
mov word [ebx + 0x38], 0x7270
mov byte [ebx + 0x3b], 0
mov byte [ebx + 0x360], 2
mov byte [ebx + 0x361], 0
mov byte [ebx + 0x362], 1
mov byte [ebx + 0x35c], 1
mov byte [ebx + 0x35d], 0xf0
mov byte [ebx + 0x35e], 0x1f
mov byte [ebx + 0x35f], 0
mov eax, dword [esi + 0xc]
mov word [ebx + 0x22], 0xd000
mov word [ebx + 0x24], 0x10
mov byte [ebx + 0x11], al
mov eax, dword [esi + 0x32]
mov dword [ebx + 0x1e], 0x10000
mov byte [ebx + 0x18], 2
mov byte [ebx + 0x19], 6
mov dword [ebx + 0x1a], eax
mov byte [ebx + 0x371], 0
mov word [ebx + 0x374], 0x12c
mov byte [ebx + 0x372], 1
mov byte [ebx + 0x373], 0
pop eax
pop edx
lea eax, [ebx + 0x57c]
push eax
push dword [ebp - 0x24]
call fcn_0001e5bd  ; call 0x1e5bd
mov al, byte [ebx + 0x40e]
add esp, 0x10
or eax, 3
and eax, 0xffffffc3
mov byte [ebx + 0x40e], al
xor eax, eax

loc_0001e340:
and byte [ebx + eax*8 + 0x554], 0xfc
mov word [ebx + eax*8 + 0x558], 0
mov word [ebx + eax*8 + 0x55a], 0
inc eax
cmp eax, 5
jne short loc_0001e340  ; jne 0x1e340
mov al, byte [ebx + 0x46a]
xor ecx, ecx
mov byte [ebx + 0x364], 1
mov dword [ebx + 0x368], 0xfed00000
mov byte [ebx + 0x36c], 1
and eax, 0xffffffb0
or eax, 0x49
mov byte [ebx + 0x365], 0xf0
mov byte [ebx + 0x366], 0xf
mov byte [ebx + 0x367], 0
mov byte [ebx + 0x476], 1
mov dword [ebx + 0x47e], 0
mov dword [ebx + 0x47a], 1
mov byte [ebx + 0x46a], al
mov byte [ebx + 0x37f], 0
mov byte [ebx + 0x256], 1

loc_0001e3cc:
mov dword [ebp - 0x24], ecx
call fcn_0001c0fb  ; call 0x1c0fb
mov ecx, dword [ebp - 0x24]
cmp cl, al
jae short loc_0001e3e9  ; jae 0x1e3e9
movzx eax, cl
inc ecx
imul eax, eax, 0x2c
mov byte [ebx + eax + 0x58], 1
jmp short loc_0001e3cc  ; jmp 0x1e3cc

loc_0001e3e9:
and byte [ebx + 0x45e], 0xf7
xor ecx, ecx

loc_0001e3f2:
mov dword [ebp - 0x24], ecx
call fcn_0001c0fb  ; call 0x1c0fb
mov ecx, dword [ebp - 0x24]
cmp cl, al
jae short loc_0001e460  ; jae 0x1e460
cmp dword [ebp - 0x1c], 2
movzx eax, cl
jne short loc_0001e41f  ; jne 0x1e41f
imul esi, eax, 0x2c
lea esi, [ebx + esi + 0x50]
mov word [esi + 0xa], 0x1003
mov word [esi + 0xc], 0x1003
jmp short loc_0001e438  ; jmp 0x1e438

loc_0001e41f:
cmp dword [ebp - 0x1c], 1
jne short loc_0001e438  ; jne 0x1e438
imul esi, eax, 0x2c
lea esi, [ebx + esi + 0x50]
mov word [esi + 0xa], 0x846
mov word [esi + 0xc], 0x846

loc_0001e438:
imul eax, eax, 0x2c
inc ecx
add eax, ebx
mov byte [eax + 0x59], 0
mov byte [eax + 0x5e], 2
mov byte [eax + 0x5f], 2
mov word [eax + 0x60], 0x3c
mov byte [eax + 0x62], 2
mov byte [eax + 0x63], 2
mov word [eax + 0x64], 0x3c
jmp short loc_0001e3f2  ; jmp 0x1e3f2

loc_0001e460:
mov al, byte [ebx + 0x446]
or byte [ebx + 0x442], 7
and byte [ebx + 0x45e], 0xf9
and eax, 0xffffffcc
or eax, 0xc
mov byte [ebx + 0x446], al
mov al, byte [ebx + 0x486]
mov dword [ebx + 0x44a], 0
mov dword [ebx + 0x44e], 2
mov dword [ebx + 0x452], 4
and eax, 0xffffffc1
or eax, 0x32
mov byte [ebx + 0x486], al
mov al, byte [ebx + 0x49e]
mov dword [ebx + 0x456], 3
mov dword [ebx + 0x45a], 3
mov byte [ebx + 0x462], 4
or eax, 1
and eax, 0xffffffbd
mov byte [ebx + 0x49e], al
xor eax, eax
mov byte [ebx + 0x10], 0xdd

loc_0001e4e3:
mov dword [ebx + eax*4 + 0x1ba], 0
inc eax
cmp eax, 8
jne short loc_0001e4e3  ; jne 0x1e4e3
cmp dword [ebp - 0x1c], 2
lea eax, [ebx + 0x4de]
lea esi, [ebx + 0x527]
jne short loc_0001e52e  ; jne 0x1e52e
mov byte [ebx + 0x526], 5
push edi
push 0x28
push ref_00029640  ; push 0x29640
push eax
call fcn_0001707a  ; call 0x1707a
add esp, 0xc
mov byte [ebx + 0x553], 9
push 0x24
push ref_00029604  ; push 0x29604
jmp short loc_0001e554  ; jmp 0x1e554

loc_0001e52e:
mov byte [ebx + 0x526], 6
push ecx
push 0x30
push ref_00029668  ; push 0x29668
push eax
call fcn_0001707a  ; call 0x1707a
add esp, 0xc
mov byte [ebx + 0x553], 6
push 0x18
push ref_00029628  ; push 0x29628

loc_0001e554:
push esi
call fcn_0001707a  ; call 0x1707a
add esp, 0x10
sub esp, 0xc
push dword [ebp - 0x20]
call fcn_00019667  ; call 0x19667
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
mov edx, ebx
test al, al
je short loc_0001e5b3  ; je 0x1e5b3
test ebx, ebx
jns short loc_0001e5b3  ; jns 0x1e5b3
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001e599  ; je 0x1e599
push edx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001e599:
push eax
push ref_00020664  ; push 0x20664
push 0x2d4
push ref_00026920  ; push 0x26920
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
mov edx, ebx

loc_0001e5b3:
lea esp, [ebp - 0xc]
mov eax, edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001e5bd:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov ebx, dword [ebp + 8]
call fcn_00016380  ; call 0x16380
test ebx, ebx
jne short loc_0001e5f9  ; jne 0x1e5f9
call fcn_000153f0  ; call 0x153f0
test al, al
je loc_0001ec65  ; je 0x1ec65
push edx
push ref_000221f1  ; push 0x221f1
push 0x35
push ref_0002693d  ; push 0x2693d
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
jmp near loc_0001ec65  ; jmp 0x1ec65

loc_0001e5f9:
mov esi, eax
call fcn_0001bef7  ; call 0x1bef7
mov edi, eax
push eax
push 0
push 0x1f
push 0
call fcn_00016bd6  ; call 0x16bd6
add eax, 2
mov dword [esp], eax
call fcn_00017cfe  ; call 0x17cfe
add esp, 0x10
xor edx, edx
mov byte [ebx], 0
mov byte [ebx + 8], 0
mov byte [ebx + 0x11], 1
mov byte [ebx + 0x10], 1
mov byte [ebx + 0x13], 0
mov ecx, eax
mov byte [ebx + 0x12], 1

loc_0001e637:
mov dword [ebp - 0x20], ecx
mov dword [ebp - 0x1c], edx
call fcn_0001c19d  ; call 0x1c19d
mov edx, dword [ebp - 0x1c]
mov ecx, dword [ebp - 0x20]
movzx eax, al
cmp edx, eax
jae short loc_0001e657  ; jae 0x1e657
mov byte [ebx + edx + 0x14], 0
inc edx
jmp short loc_0001e637  ; jmp 0x1e637

loc_0001e657:
xor edx, edx

loc_0001e659:
mov dword [ebp - 0x20], ecx
mov dword [ebp - 0x1c], edx
call fcn_0001c234  ; call 0x1c234
mov edx, dword [ebp - 0x1c]
mov ecx, dword [ebp - 0x20]
movzx eax, al
cmp edx, eax
jae short loc_0001e679  ; jae 0x1e679
mov byte [ebx + edx + 0x22], 0
inc edx
jmp short loc_0001e659  ; jmp 0x1e659

loc_0001e679:
mov byte [ebx + 0x28], 0
mov byte [ebx + 1], 0
mov byte [ebx + 9], 0
mov byte [ebx + 0xb5], 0
mov byte [ebx + 0xb4], 1
mov al, byte [esi + 0x5c]
mov byte [ebx + 0x2c], al
mov al, byte [esi + 0x61]
mov byte [ebx + 0x34], al
mov al, byte [esi + 0x66]
mov byte [ebx + 0x3c], al
mov al, byte [esi + 0x6b]
mov byte [ebx + 0x44], al
mov al, byte [esi + 0x70]
mov byte [ebx + 0x4c], al
mov al, byte [esi + 0x75]
mov byte [ebx + 0x54], al
mov al, byte [esi + 0x7a]
mov byte [ebx + 0x5c], al
mov al, byte [esi + 0x7f]
mov byte [ebx + 0x64], al
mov al, byte [esi + 0x84]
mov byte [ebx + 0x6c], al
mov al, byte [esi + 0x89]
mov byte [ebx + 0x74], al
mov al, byte [esi + 0x8e]
mov byte [ebx + 0x7c], al
mov al, byte [esi + 0x93]
mov byte [ebx + 0x84], al
mov al, byte [esi + 0x98]
mov byte [ebx + 0x8c], al
mov al, byte [esi + 0x9d]
mov byte [ebx + 0x94], al
mov al, byte [esi + 0xa0]
mov byte [ebx + 0x9c], al
mov al, byte [esi + 0xa3]
mov byte [ebx + 0xa0], al
mov al, byte [esi + 0xa6]
mov byte [ebx + 0xa4], al
mov al, byte [esi + 0xa9]
mov byte [ebx + 0xa8], al
mov al, byte [esi + 0xac]
mov byte [ebx + 0xac], al
mov al, byte [esi + 0xaf]
mov byte [ebx + 0xb0], al
mov al, byte [esi + 0x5d]
mov byte [ebx + 0x2d], al
mov al, byte [esi + 0x62]
mov byte [ebx + 0x35], al
mov al, byte [esi + 0x67]
mov byte [ebx + 0x3d], al
mov al, byte [esi + 0x6c]
mov byte [ebx + 0x45], al
mov al, byte [esi + 0x71]
mov byte [ebx + 0x4d], al
mov al, byte [esi + 0x76]
mov byte [ebx + 0x55], al
mov al, byte [esi + 0x7b]
mov byte [ebx + 0x5d], al
mov al, byte [esi + 0x80]
mov byte [ebx + 0x65], al
mov al, byte [esi + 0x85]
mov byte [ebx + 0x6d], al
mov al, byte [esi + 0x8a]
mov byte [ebx + 0x75], al
mov al, byte [esi + 0x8f]
mov byte [ebx + 0x7d], al
mov al, byte [esi + 0x94]
mov byte [ebx + 0x85], al
mov al, byte [esi + 0x99]
mov byte [ebx + 0x8d], al
mov al, byte [esi + 0x9e]
mov byte [ebx + 0x95], al
mov al, byte [esi + 0xa1]
mov byte [ebx + 0x9d], al
mov al, byte [esi + 0xa4]
mov byte [ebx + 0xa1], al
mov al, byte [esi + 0xa7]
mov byte [ebx + 0xa5], al
mov al, byte [esi + 0xaa]
mov byte [ebx + 0xa9], al
mov al, byte [esi + 0xad]
mov byte [ebx + 0xad], al
mov al, byte [esi + 0xb0]
mov byte [ebx + 0xb1], al
mov ax, word [esi + 0x5a]
mov word [ebx + 0x30], ax
mov ax, word [esi + 0x5f]
mov word [ebx + 0x38], ax
mov ax, word [esi + 0x64]
mov word [ebx + 0x40], ax
mov ax, word [esi + 0x69]
mov word [ebx + 0x48], ax
mov ax, word [esi + 0x6e]
mov word [ebx + 0x50], ax
mov ax, word [esi + 0x73]
mov word [ebx + 0x58], ax
mov ax, word [esi + 0x78]
mov word [ebx + 0x60], ax
mov ax, word [esi + 0x7d]
mov word [ebx + 0x68], ax
mov ax, word [esi + 0x82]
mov word [ebx + 0x70], ax
mov ax, word [esi + 0x87]
mov word [ebx + 0x78], ax
mov ax, word [esi + 0x8c]
mov word [ebx + 0x80], ax
mov ax, word [esi + 0x91]
mov word [ebx + 0x88], ax
mov ax, word [esi + 0x96]
mov word [ebx + 0x90], ax
mov ax, word [esi + 0x9b]
mov word [ebx + 0x98], ax
mov al, byte [esi + 0xa2]
mov byte [ebx + 0x9e], al
mov al, byte [esi + 0xa5]
mov byte [ebx + 0xa2], al
mov al, byte [esi + 0xa8]
mov byte [ebx + 0xa6], al
mov al, byte [esi + 0xab]
mov byte [ebx + 0xaa], al
mov al, byte [esi + 0xae]
mov byte [ebx + 0xae], al
mov al, byte [esi + 0xb1]
mov byte [ebx + 0xb2], al
mov al, byte [esi + 0x5e]
mov byte [ebx + 0x32], al
mov al, byte [esi + 0x63]
mov byte [ebx + 0x3a], al
mov al, byte [esi + 0x68]
mov byte [ebx + 0x42], al
mov al, byte [esi + 0x6d]
mov byte [ebx + 0x4a], al
mov al, byte [esi + 0x72]
mov byte [ebx + 0x52], al
mov al, byte [esi + 0x77]
mov byte [ebx + 0x5a], al
mov al, byte [esi + 0x7c]
mov byte [ebx + 0x62], al
mov al, byte [esi + 0x81]
mov byte [ebx + 0x6a], al
mov al, byte [esi + 0x86]
mov byte [ebx + 0x72], al
mov al, byte [esi + 0x8b]
mov byte [ebx + 0x7a], al
mov al, byte [esi + 0x90]
mov byte [ebx + 0x82], al
mov al, byte [esi + 0x95]
mov byte [ebx + 0x8a], al
mov al, byte [esi + 0x9a]
mov byte [ebx + 0x92], al
mov al, byte [esi + 0x9f]
mov byte [ebx + 0x9a], al
cmp edi, 1
jne loc_0001ea89  ; jne 0x1ea89
mov eax, ecx
and eax, 0xfffffff7
cmp ax, 0x8c44
je short loc_0001e96f  ; je 0x1e96f
mov edx, ecx
and edx, 0xfffffffb
cmp cx, 0x8c50
jne short loc_0001e976  ; jne 0x1e976

loc_0001e96f:
lea edi, [ebx + 0x2f]
xor edx, edx
jmp short loc_0001e9c6  ; jmp 0x1e9c6

loc_0001e976:
cmp cx, 0x8c5c
je short loc_0001e96f  ; je 0x1e96f
mov edi, ecx
and edi, 0xfffffff3
cmp di, 0x8c42
je short loc_0001e96f  ; je 0x1e96f
cmp cx, 0x8cc4
je short loc_0001e96f  ; je 0x1e96f
cmp dx, 0x8cc2
jne short loc_0001e9df  ; jne 0x1e9df
jmp short loc_0001e96f  ; jmp 0x1e96f

loc_0001e999:
cmp byte [edi + 3], 1
sbb eax, eax
not eax
add eax, 4
cmp byte [edi + 3], 0
mov byte [edi - 1], al
jne short loc_0001e9da  ; jne 0x1e9da
mov ax, word [edi + 1]
cmp ax, 0x7f
jbe short loc_0001e9da  ; jbe 0x1e9da
cmp ax, 0x130
sbb eax, eax
add eax, 4
mov byte [edi], al

loc_0001e9c2:
inc edx
add edi, 8

loc_0001e9c6:
mov dword [ebp - 0x1c], edx
call fcn_0001c19d  ; call 0x1c19d
mov edx, dword [ebp - 0x1c]
movzx eax, al
cmp edx, eax
jb short loc_0001e999  ; jb 0x1e999
jmp short loc_0001ea0a  ; jmp 0x1ea0a

loc_0001e9da:
mov byte [edi], 2
jmp short loc_0001e9c2  ; jmp 0x1e9c2

loc_0001e9df:
cmp dx, 0x8c4b
je short loc_0001ea22  ; je 0x1ea22
cmp ax, 0x8c41
je short loc_0001ea22  ; je 0x1ea22
lea eax, [ecx + 0x63bf]
cmp ax, 6
jbe short loc_0001ea22  ; jbe 0x1ea22
cmp cx, 0x8cc5
je short loc_0001ea22  ; je 0x1ea22
mov eax, ecx
and eax, 0xfffffffd
cmp ax, 0x8cc1
je short loc_0001ea22  ; je 0x1ea22

loc_0001ea0a:
cmp dword [esi + 0x10], 0
je loc_0001eb9c  ; je 0x1eb9c
mov byte [ebx], 1
xor edi, edi
mov byte [ebx + 0x13], 1
jmp near loc_0001eb6a  ; jmp 0x1eb6a

loc_0001ea22:
lea edi, [ebx + 0x2f]
xor edx, edx

loc_0001ea27:
mov dword [ebp - 0x1c], edx
call fcn_0001c19d  ; call 0x1c19d
mov edx, dword [ebp - 0x1c]
movzx eax, al
cmp edx, eax
jae short loc_0001ea0a  ; jae 0x1ea0a
mov al, byte [edi + 3]
cmp al, 5
jne short loc_0001ea46  ; jne 0x1ea46
mov byte [edi - 1], 5
jmp short loc_0001ea61  ; jmp 0x1ea61

loc_0001ea46:
cmp al, 2
jne short loc_0001ea50  ; jne 0x1ea50
mov byte [edi - 1], 4
jmp short loc_0001ea6a  ; jmp 0x1ea6a

loc_0001ea50:
cmp word [edi + 1], 0x70
sbb ecx, ecx
add ecx, 6
mov byte [edi - 1], cl
cmp al, 5
jne short loc_0001ea66  ; jne 0x1ea66

loc_0001ea61:
mov byte [edi], 2
jmp short loc_0001ea83  ; jmp 0x1ea83

loc_0001ea66:
cmp al, 2
jne short loc_0001ea76  ; jne 0x1ea76

loc_0001ea6a:
cmp word [edi + 1], 0x50
sbb eax, eax
add eax, 2
jmp short loc_0001ea81  ; jmp 0x1ea81

loc_0001ea76:
cmp word [edi + 1], 0x100
sbb eax, eax
add eax, 3

loc_0001ea81:
mov byte [edi], al

loc_0001ea83:
inc edx
add edi, 8
jmp short loc_0001ea27  ; jmp 0x1ea27

loc_0001ea89:
cmp edi, 2
jne loc_0001ea0a  ; jne 0x1ea0a
lea eax, [ecx + 0x63bf]
mov word [ebp - 0x20], ax
lea eax, [ecx + 0x633f]
lea edi, [ebx + 0x2e]
mov dword [ebp - 0x1c], 0
mov word [ebp - 0x22], ax

loc_0001eab0:
mov dword [ebp - 0x28], ecx
call fcn_0001c19d  ; call 0x1c19d
mov ecx, dword [ebp - 0x28]
movzx eax, al
cmp dword [ebp - 0x1c], eax
jae loc_0001ea0a  ; jae 0x1ea0a
cmp word [ebp - 0x20], 6
ja short loc_0001eaef  ; ja 0x1eaef
mov al, byte [edi + 4]
cmp al, 3
je short loc_0001ead9  ; je 0x1ead9
test al, al
jne short loc_0001eae5  ; jne 0x1eae5

loc_0001ead9:
cmp word [edi + 2], 0x70
sbb eax, eax
add eax, 6
jmp short loc_0001eaed  ; jmp 0x1eaed

loc_0001eae5:
cmp al, 2
setne al
add eax, 4

loc_0001eaed:
mov byte [edi], al

loc_0001eaef:
cmp word [ebp - 0x22], 2
jbe short loc_0001eafd  ; jbe 0x1eafd
cmp cx, 0x9cc5
jne short loc_0001eb00  ; jne 0x1eb00

loc_0001eafd:
mov byte [edi], 6

loc_0001eb00:
lea eax, [ecx + 0x633a]
cmp ax, 1
jbe short loc_0001eb13  ; jbe 0x1eb13
cmp cx, 0x9cc9
jne short loc_0001eb2a  ; jne 0x1eb2a

loc_0001eb13:
cmp byte [edi + 4], 0
jne short loc_0001eb27  ; jne 0x1eb27
cmp word [edi + 2], 0x70
sbb eax, eax
add eax, 7
mov byte [edi], al
jmp short loc_0001eb2a  ; jmp 0x1eb2a

loc_0001eb27:
mov byte [edi], 6

loc_0001eb2a:
mov al, byte [edi + 4]
mov dl, al
and edx, 0xfffffffb
cmp dl, 3
je short loc_0001eb3b  ; je 0x1eb3b
test al, al
jne short loc_0001eb48  ; jne 0x1eb48

loc_0001eb3b:
cmp word [edi + 2], 0x100
sbb eax, eax
add eax, 3
jmp short loc_0001eb56  ; jmp 0x1eb56

loc_0001eb48:
cmp al, 2
jne short loc_0001eb5b  ; jne 0x1eb5b
cmp word [edi + 2], 0x50
sbb eax, eax
add eax, 2

loc_0001eb56:
mov byte [edi + 1], al
jmp short loc_0001eb5f  ; jmp 0x1eb5f

loc_0001eb5b:
mov byte [edi + 1], 2

loc_0001eb5f:
inc dword [ebp - 0x1c]
add edi, 8
jmp near loc_0001eab0  ; jmp 0x1eab0

loc_0001eb6a:
call fcn_0001c19d  ; call 0x1c19d
movzx eax, al
cmp edi, eax
jae short loc_0001eb7e  ; jae 0x1eb7e
mov byte [ebx + edi + 0x14], 1
inc edi
jmp short loc_0001eb6a  ; jmp 0x1eb6a

loc_0001eb7e:
mov byte [ebx + 0x15], 0
xor edi, edi

loc_0001eb84:
call fcn_0001c234  ; call 0x1c234
movzx eax, al
cmp edi, eax
jae short loc_0001eb98  ; jae 0x1eb98
mov byte [ebx + edi + 0x22], 1
inc edi
jmp short loc_0001eb84  ; jmp 0x1eb84

loc_0001eb98:
mov byte [ebx + 0x23], 0

loc_0001eb9c:
xor ebx, ebx

loc_0001eb9e:
call fcn_0001c234  ; call 0x1c234
movzx eax, al
cmp ebx, eax
jae loc_0001ec65  ; jae 0x1ec65
mov dl, byte [esi + ebx + 0xb2]
mov eax, dword [ebp + 0xc]
mov ecx, dword [ebp + 0xc]
test dl, dl
mov al, byte [eax + ebx*8 + 4]
je short loc_0001ebcb  ; je 0x1ebcb
mov byte [ecx + ebx*8], dl
or eax, 1
jmp short loc_0001ebd2  ; jmp 0x1ebd2

loc_0001ebcb:
mov byte [ecx + ebx*8], 0
and eax, 0xfffffffe

loc_0001ebd2:
mov byte [ecx + ebx*8 + 4], al
mov dl, byte [esi + ebx + 0xb8]
mov eax, dword [ebp + 0xc]
mov ecx, dword [ebp + 0xc]
test dl, dl
mov al, byte [eax + ebx*8 + 4]
je short loc_0001ebf4  ; je 0x1ebf4
mov byte [ecx + ebx*8 + 1], dl
or eax, 2
jmp short loc_0001ebfc  ; jmp 0x1ebfc

loc_0001ebf4:
mov byte [ecx + ebx*8 + 1], 0
and eax, 0xfffffffd

loc_0001ebfc:
mov byte [ecx + ebx*8 + 4], al
mov dl, byte [esi + ebx + 0xbe]
mov eax, dword [ebp + 0xc]
mov ecx, dword [ebp + 0xc]
test dl, dl
mov al, byte [eax + ebx*8 + 4]
je short loc_0001ec1e  ; je 0x1ec1e
mov byte [ecx + ebx*8 + 2], dl
or eax, 4
jmp short loc_0001ec26  ; jmp 0x1ec26

loc_0001ec1e:
mov byte [ecx + ebx*8 + 2], 0
and eax, 0xfffffffb

loc_0001ec26:
mov byte [ecx + ebx*8 + 4], al
mov dl, byte [esi + ebx + 0xc4]
mov eax, dword [ebp + 0xc]
test dl, dl
mov al, byte [eax + ebx*8 + 4]
je short loc_0001ec50  ; je 0x1ec50
mov ecx, dword [ebp + 0xc]
lea edx, [edx + edx + 1]
or eax, 8
mov byte [ecx + ebx*8 + 3], dl
mov byte [ecx + ebx*8 + 4], al
jmp short loc_0001ec5f  ; jmp 0x1ec5f

loc_0001ec50:
mov edx, dword [ebp + 0xc]
and eax, 0xfffffff7
mov byte [edx + ebx*8 + 3], 0
mov byte [edx + ebx*8 + 4], al

loc_0001ec5f:
inc ebx
jmp near loc_0001eb9e  ; jmp 0x1eb9e

loc_0001ec65:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001ec6d:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
push 0x15
call fcn_00019cf2  ; call 0x19cf2
add esp, 0x10
mov edi, eax
test eax, eax
jne short loc_0001ec9d  ; jne 0x1ec9d
call fcn_000153f0  ; call 0x153f0
test al, al
je loc_0001ed1d  ; je 0x1ed1d
push eax
push ref_0002695a  ; push 0x2695a
push 0x34
jmp short loc_0001ed10  ; jmp 0x1ed10

loc_0001ec9d:
sub esp, 0xc
push 0xc
call fcn_00019cf2  ; call 0x19cf2
add esp, 0x10
mov dword [ebp - 0x1c], eax
test eax, eax
jne short loc_0001ecc4  ; jne 0x1ecc4
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001ed1d  ; je 0x1ed1d
push eax
push ref_0002699c  ; push 0x2699c
push 0x3a
jmp short loc_0001ed10  ; jmp 0x1ed10

loc_0001ecc4:
sub esp, 0xc
push 5
call fcn_00019cf2  ; call 0x19cf2
add esp, 0x10
test eax, eax
jne short loc_0001ece8  ; jne 0x1ece8
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001ed1d  ; je 0x1ed1d
push edi
push ref_000269c5  ; push 0x269c5
push 0x40
jmp short loc_0001ed10  ; jmp 0x1ed10

loc_0001ece8:
sub esp, 0xc
push 0xc
mov dword [ebp - 0x20], eax
call fcn_00019cf2  ; call 0x19cf2
add esp, 0x10
mov edx, dword [ebp - 0x20]
test eax, eax
jne short loc_0001ed27  ; jne 0x1ed27
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001ed1d  ; je 0x1ed1d
push esi
push ref_000269df  ; push 0x269df
push 0x46

loc_0001ed10:
push ref_0002697f  ; push 0x2697f
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001ed1d:
mov edx, 0x80000009
jmp near loc_0001eef3  ; jmp 0x1eef3

loc_0001ed27:
sub esp, 0xc
push 0x1d
mov dword [ebp - 0x20], edx
mov dword [ebp - 0x24], eax
call fcn_00019cf2  ; call 0x19cf2
add esp, 0x10
mov edx, dword [ebp - 0x20]
mov ecx, dword [ebp - 0x24]
test eax, eax
mov ebx, eax
jne short loc_0001ed59  ; jne 0x1ed59
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001ed1d  ; je 0x1ed1d
push ebx
push ref_000269fe  ; push 0x269fe
push 0x4c
jmp short loc_0001ed10  ; jmp 0x1ed10

loc_0001ed59:
sub esp, 0xc
push 0x13
mov dword [ebp - 0x24], ecx
mov dword [ebp - 0x20], edx
call fcn_00019cf2  ; call 0x19cf2
add esp, 0x10
mov edx, dword [ebp - 0x20]
mov ecx, dword [ebp - 0x24]
test eax, eax
mov esi, eax
jne short loc_0001ed8b  ; jne 0x1ed8b
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001ed1d  ; je 0x1ed1d
push ecx
push ref_00026907  ; push 0x26907
push 0x52
jmp short loc_0001ed10  ; jmp 0x1ed10

loc_0001ed8b:
mov dword [edi + 9], ecx
mov byte [edi], 0xa
mov dword [edi + 1], edx
mov dword [ecx], 0
mov eax, dword [edi + 9]
mov dword [eax + 4], 0
mov dword [edi + 5], ebx
mov dword [edi + 0xd], esi
mov dword [edi + 0x11], edi
mov byte [edx + 3], 0x3f
mov byte [edx + 4], 0x3f
mov byte [edx + 2], 0
mov byte [edx], 0x62
mov byte [ebx + 6], 0
mov byte [ebx + 7], 0
mov byte [ebx + 8], 0
mov byte [ebx + 9], 0
mov byte [ebx + 1], 0
mov word [ebx + 2], 0
mov byte [ebx + 4], 0
mov byte [ebx + 5], 0
mov byte [ebx], 0
mov word [ebx + 0x11], 0x200
mov byte [ebx + 0x13], 0
mov word [ebx + 0x14], 0
mov byte [ebx + 0xa], 0
mov byte [ebx + 0xb], 1
mov byte [ebx + 0xc], 0
mov byte [ebx + 0xd], 1
call fcn_0001c58d  ; call 0x1c58d
cmp eax, 0x40650
jne short loc_0001ee2f  ; jne 0x1ee2f

loc_0001ee0d:
mov byte [ebx + 0xe], 1
call fcn_0001c58d  ; call 0x1c58d
mov byte [ebx + 0x10], 0
mov byte [ebx + 0x16], 1
cmp eax, 0x306d0
setne al
lea eax, [eax + eax*4 + 0x6a]
mov byte [ebx + 0xf], al
jmp short loc_0001ee3b  ; jmp 0x1ee3b

loc_0001ee2f:
call fcn_0001c58d  ; call 0x1c58d
cmp eax, 0x306d0
je short loc_0001ee0d  ; je 0x1ee0d

loc_0001ee3b:
mov eax, dword [ebp - 0x1c]
sub esp, 0xc
mov byte [ebx + 0x17], 0x14
mov byte [ebx + 0x18], 5
mov byte [ebx + 0x19], 1
mov byte [ebx + 0x1a], 0
mov byte [ebx + 0x1b], 0
mov byte [ebx + 0x1c], 0
mov word [esi], 0
mov word [esi + 2], 0
mov word [esi + 4], 0
mov word [esi + 6], 0
mov word [esi + 8], 0
mov word [esi + 0xa], 0
mov word [esi + 0xc], 0
mov word [esi + 0xe], 0
mov word [esi + 0x10], 0
mov byte [esi + 0x12], 0
mov dword [eax], 0x80000010
mov dword [eax + 4], ref_000291dc  ; mov dword [eax + 4], 0x291dc
mov dword [eax + 8], edi
push eax
call fcn_00019667  ; call 0x19667
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
mov edx, ebx
test al, al
je short loc_0001eef3  ; je 0x1eef3
test ebx, ebx
jns short loc_0001eef3  ; jns 0x1eef3
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001eed9  ; je 0x1eed9
push edx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001eed9:
push eax
push ref_00020664  ; push 0x20664
push 0xb3
push ref_0002697f  ; push 0x2697f
call fcn_000153fc  ; call 0x153fc
add esp, 0x10
mov edx, ebx

loc_0001eef3:
lea esp, [ebp - 0xc]
mov eax, edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001eefd:
push ebp
mov ebp, esp
push esi
push ebx
sub esp, 0xc
push 2
call fcn_00019cf2  ; call 0x19cf2
mov esi, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0001ef28  ; je 0x1ef28
test esi, esi
jne short loc_0001ef2c  ; jne 0x1ef2c
push esi
push ref_00026a1e  ; push 0x26a1e
push 0x2d
jmp short loc_0001ef50  ; jmp 0x1ef50

loc_0001ef28:
test esi, esi
je short loc_0001ef5d  ; je 0x1ef5d

loc_0001ef2c:
sub esp, 0xc
push 0xc
call fcn_00019cf2  ; call 0x19cf2
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0001ef64  ; je 0x1ef64
test ebx, ebx
jne short loc_0001ef68  ; jne 0x1ef68
push ebx
push ref_00026a5e  ; push 0x26a5e
push 0x33

loc_0001ef50:
push ref_00026a42  ; push 0x26a42
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001ef5d:
mov ebx, 0x80000009
jmp short loc_0001efe2  ; jmp 0x1efe2

loc_0001ef64:
test ebx, ebx
je short loc_0001ef5d  ; je 0x1ef5d

loc_0001ef68:
sub esp, 0xc
mov dword [ebx], 0x80000010
mov dword [ebx + 4], ref_0002915c  ; mov dword [ebx + 4], 0x2915c
mov byte [esi], 1
mov dword [ebx + 8], esi
push ebx
call fcn_00019667  ; call 0x19667
mov ebx, eax
call fcn_000153f0  ; call 0x153f0
add esp, 0x10
test al, al
je short loc_0001efc8  ; je 0x1efc8
test ebx, ebx
jns short loc_0001efc8  ; jns 0x1efc8
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001efb3  ; je 0x1efb3
push ecx
push ebx
push ref_00020643  ; push 0x20643
push 0x80000000
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001efb3:
push edx
push ref_00020664  ; push 0x20664
push 0x4e
push ref_00026a42  ; push 0x26a42
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001efc8:
call fcn_000153e9  ; call 0x153e9
test al, al
je short loc_0001efe2  ; je 0x1efe2
push eax
push eax
push ref_00026a86  ; push 0x26a86
push 0x40
call fcn_000153f7  ; call 0x153f7
add esp, 0x10

loc_0001efe2:
lea esp, [ebp - 8]
mov eax, ebx
pop ebx
pop esi
pop ebp
ret

fcn_0001efeb:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 8]
mov edi, dword [ebp + 0x10]
test esi, esi
je short loc_0001f044  ; je 0x1f044
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f02a  ; je 0x1f02a
mov eax, ebx
lea edx, [esi - 1]
not eax
cmp edx, eax
jbe short loc_0001f02a  ; jbe 0x1f02a
push eax
push ref_00026aac  ; push 0x26aac
push 0x36
push ref_00026ad9  ; push 0x26ad9
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f02a:
mov eax, edi
movzx edi, al
mov dword [ebp + 0x10], edi
mov dword [ebp + 0xc], esi
mov dword [ebp + 8], ebx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near loc_0001f127  ; jmp 0x1f127

loc_0001f044:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001f04e:  ; not directly referenced
push ebp
mov ebp, esp
pop ebp
jmp near fcn_0001f057  ; jmp 0x1f057

fcn_0001f057:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 8]
mov edi, dword [ebp + 0x10]
test esi, esi
je loc_0001f11d  ; je 0x1f11d
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f093  ; je 0x1f093
test ebx, ebx
jne short loc_0001f093  ; jne 0x1f093
push eax
push ref_000260eb  ; push 0x260eb
push 0x3a
push ref_00026b1e  ; push 0x26b1e
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f093:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f0bc  ; je 0x1f0bc
mov eax, ebx
lea edx, [esi - 1]
not eax
cmp edx, eax
jbe short loc_0001f0bc  ; jbe 0x1f0bc
push ecx
push ref_00026aac  ; push 0x26aac
push 0x3b
push ref_00026b1e  ; push 0x26b1e
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f0bc:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f0df  ; je 0x1f0df
test bl, 3
je short loc_0001f0df  ; je 0x1f0df
push edx
push ref_00026b65  ; push 0x26b65
push 0x3c
push ref_00026b1e  ; push 0x26b1e
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f0df:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f105  ; je 0x1f105
test esi, 3
je short loc_0001f105  ; je 0x1f105
push eax
push ref_00026b93  ; push 0x26b93
push 0x3d
push ref_00026b1e  ; push 0x26b1e
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f105:  ; not directly referenced
shr esi, 2
mov dword [ebp + 0x10], edi
mov dword [ebp + 0xc], esi
mov dword [ebp + 8], ebx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near loc_0001f152  ; jmp 0x1f152

loc_0001f11d:  ; not directly referenced
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

loc_0001f127:
push edi
mov ecx, dword [esp + 0xc]
mov al, byte [esp + 0x10]
mov ah, al
shrd edx, eax, 0x10
shld eax, edx, 0x10
mov edx, ecx
mov edi, dword [esp + 8]
shr ecx, 2
rep stosd  ; rep stosd dword es:[edi], eax
mov ecx, edx
and ecx, 3
rep stosb  ; rep stosb byte es:[edi], al
mov eax, dword [esp + 8]
pop edi
ret

loc_0001f152:  ; not directly referenced
push edi
mov eax, dword [esp + 0x10]
mov edi, dword [esp + 8]
mov ecx, dword [esp + 0xc]
rep stosd  ; rep stosd dword es:[edi], eax
mov eax, dword [esp + 8]
pop edi
ret

fcn_0001f167:  ; not directly referenced
push ebp
mov eax, 0xfffffffe
mov ebp, esp
mov ecx, dword [ebp + 0x10]
shl eax, cl
mov ecx, dword [ebp + 0xc]
not eax
and eax, dword [ebp + 8]
pop ebp
shr eax, cl
ret

fcn_0001f180:
push ebp
mov ebp, esp
sub esp, 8
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f1b8  ; je 0x1f1b8
mov ecx, dword [ebp + 0x10]
mov eax, dword [ebp + 0x14]
sub ecx, dword [ebp + 0xc]
shr eax, cl
mov edx, eax
and edx, 1
cmp eax, edx
je short loc_0001f1b8  ; je 0x1f1b8
push eax
push ref_00026bb8  ; push 0x26bb8
push 0x4d
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f1b8:
mov cl, byte [ebp + 0x10]
mov eax, 0xfffffffe
mov edx, dword [ebp + 0x14]
shl eax, cl
mov cl, byte [ebp + 0xc]
not eax
shl edx, cl
and eax, edx
or eax, dword [ebp + 8]
leave
ret

fcn_0001f1d3:
push ebp
mov ebp, esp
sub esp, 8
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f20b  ; je 0x1f20b
mov ecx, dword [ebp + 0x10]
mov eax, dword [ebp + 0x14]
sub ecx, dword [ebp + 0xc]
shr eax, cl
mov edx, eax
and edx, 1
cmp eax, edx
je short loc_0001f20b  ; je 0x1f20b
push eax
push ref_00026c35  ; push 0x26c35
push 0x77
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f20b:
mov cl, byte [ebp + 0x10]
mov edx, 0xfffffffe
mov eax, dword [ebp + 0x14]
shl edx, cl
mov cl, byte [ebp + 0xc]
not eax
shl eax, cl
not eax
or eax, edx
and eax, dword [ebp + 8]
leave
ret

fcn_0001f228:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push ecx
mov ebx, dword [ebp + 8]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f257  ; je 0x1f257
cmp dword [ebp + 0x10], 7
jbe short loc_0001f257  ; jbe 0x1f257
push edx
push ref_00026c80  ; push 0x26c80
push 0x9b
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f257:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f280  ; je 0x1f280
mov eax, dword [ebp + 0x10]
cmp dword [ebp + 0xc], eax
jbe short loc_0001f280  ; jbe 0x1f280
push eax
push ref_00025a81  ; push 0x25a81
push 0x9c
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f280:  ; not directly referenced
mov cl, byte [ebp + 0x10]
mov eax, 0xfffffffe
movzx ebx, bl
shl eax, cl
mov cl, byte [ebp + 0xc]
not eax
and eax, ebx
mov ebx, dword [ebp - 4]
leave
shr eax, cl
ret

fcn_0001f29b:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
mov ebx, dword [ebp + 0x10]
mov edi, dword [ebp + 0x14]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f2d3  ; je 0x1f2d3
cmp ebx, 7
jbe short loc_0001f2d3  ; jbe 0x1f2d3
push edx
push ref_00026c80  ; push 0x26c80
push 0xe6
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f2d3:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f2f9  ; je 0x1f2f9
cmp dword [ebp + 0xc], ebx
jbe short loc_0001f2f9  ; jbe 0x1f2f9
push eax
push ref_00025a81  ; push 0x25a81
push 0xe7
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f2f9:  ; not directly referenced
mov eax, edi
movzx edi, al
mov eax, esi
push edi
movzx esi, al
push ebx
push dword [ebp + 0xc]
push esi
call fcn_0001f180  ; call 0x1f180
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001f316:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
mov ebx, dword [ebp + 0x10]
mov edi, dword [ebp + 0x14]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f34e  ; je 0x1f34e
cmp ebx, 7
jbe short loc_0001f34e  ; jbe 0x1f34e
push edx
push ref_00026c80  ; push 0x26c80
push 0x10c
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f34e:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f374  ; je 0x1f374
cmp dword [ebp + 0xc], ebx
jbe short loc_0001f374  ; jbe 0x1f374
push eax
push ref_00025a81  ; push 0x25a81
push 0x10d
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f374:  ; not directly referenced
mov eax, edi
movzx edi, al
mov eax, esi
push edi
movzx esi, al
push ebx
push dword [ebp + 0xc]
push esi
call fcn_0001f1d3  ; call 0x1f1d3
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001f391:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
mov edi, dword [ebp + 0x14]
mov dword [ebp - 0x1c], eax
mov eax, dword [ebp + 0x18]
mov dword [ebp - 0x20], eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f3d5  ; je 0x1f3d5
cmp ebx, 7
jbe short loc_0001f3d5  ; jbe 0x1f3d5
push edx
push ref_00026c80  ; push 0x26c80
push 0x136
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f3d5:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f3fa  ; je 0x1f3fa
cmp esi, ebx
jbe short loc_0001f3fa  ; jbe 0x1f3fa
push eax
push ref_00025a81  ; push 0x25a81
push 0x137
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f3fa:  ; not directly referenced
mov eax, edi
movzx edi, al
movzx eax, byte [ebp - 0x1c]
push edi
push ebx
push esi
push eax
call fcn_0001f316  ; call 0x1f316
movzx edx, byte [ebp - 0x20]
add esp, 0x10
mov dword [ebp + 0x10], ebx
mov dword [ebp + 0xc], esi
mov dword [ebp + 0x14], edx
movzx eax, al
mov dword [ebp + 8], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_0001f29b  ; jmp 0x1f29b

fcn_0001f42e:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
mov ebx, dword [ebp + 0x10]
mov edi, dword [ebp + 0x14]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f466  ; je 0x1f466
cmp ebx, 7
jbe short loc_0001f466  ; jbe 0x1f466
push edx
push ref_00026c80  ; push 0x26c80
push 0xc0
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f466:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f48c  ; je 0x1f48c
cmp dword [ebp + 0xc], ebx
jbe short loc_0001f48c  ; jbe 0x1f48c
push eax
push ref_00025a81  ; push 0x25a81
push 0xc1
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f48c:  ; not directly referenced
mov eax, edi
sub esp, 0xc
movzx edi, al
mov eax, esi
push edi
movzx esi, al
push 0
push ebx
push dword [ebp + 0xc]
push esi
call fcn_0001f391  ; call 0x1f391
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001f4ae:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
push ecx
mov ebx, dword [ebp + 8]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f4dd  ; je 0x1f4dd
cmp dword [ebp + 0x10], 0xf
jbe short loc_0001f4dd  ; jbe 0x1f4dd
push edx
push ref_00026c8b  ; push 0x26c8b
push 0x15b
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f4dd:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f506  ; je 0x1f506
mov eax, dword [ebp + 0x10]
cmp dword [ebp + 0xc], eax
jbe short loc_0001f506  ; jbe 0x1f506
push eax
push ref_00025a81  ; push 0x25a81
push 0x15c
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f506:  ; not directly referenced
mov cl, byte [ebp + 0x10]
mov eax, 0xfffffffe
movzx ebx, bx
shl eax, cl
mov cl, byte [ebp + 0xc]
not eax
and eax, ebx
mov ebx, dword [ebp - 4]
leave
shr eax, cl
ret

fcn_0001f521:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
mov ebx, dword [ebp + 0x10]
mov edi, dword [ebp + 0x14]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f559  ; je 0x1f559
cmp ebx, 0xf
jbe short loc_0001f559  ; jbe 0x1f559
push edx
push ref_00026c8b  ; push 0x26c8b
push 0x1a6
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f559:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f57f  ; je 0x1f57f
cmp dword [ebp + 0xc], ebx
jbe short loc_0001f57f  ; jbe 0x1f57f
push eax
push ref_00025a81  ; push 0x25a81
push 0x1a7
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f57f:  ; not directly referenced
movzx edi, di
movzx esi, si
push edi
push ebx
push dword [ebp + 0xc]
push esi
call fcn_0001f180  ; call 0x1f180
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001f598:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
mov ebx, dword [ebp + 0x10]
mov edi, dword [ebp + 0x14]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f5d0  ; je 0x1f5d0
cmp ebx, 0xf
jbe short loc_0001f5d0  ; jbe 0x1f5d0
push edx
push ref_00026c8b  ; push 0x26c8b
push 0x1cc
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f5d0:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f5f6  ; je 0x1f5f6
cmp dword [ebp + 0xc], ebx
jbe short loc_0001f5f6  ; jbe 0x1f5f6
push eax
push ref_00025a81  ; push 0x25a81
push 0x1cd
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f5f6:  ; not directly referenced
movzx edi, di
movzx esi, si
push edi
push ebx
push dword [ebp + 0xc]
push esi
call fcn_0001f1d3  ; call 0x1f1d3
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001f60f:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
mov edi, dword [ebp + 0x14]
mov dword [ebp - 0x1c], eax
mov eax, dword [ebp + 0x18]
mov dword [ebp - 0x20], eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f653  ; je 0x1f653
cmp ebx, 0xf
jbe short loc_0001f653  ; jbe 0x1f653
push edx
push ref_00026c8b  ; push 0x26c8b
push 0x1f6
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f653:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f678  ; je 0x1f678
cmp esi, ebx
jbe short loc_0001f678  ; jbe 0x1f678
push eax
push ref_00025a81  ; push 0x25a81
push 0x1f7
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f678:  ; not directly referenced
movzx eax, word [ebp - 0x1c]
movzx edi, di
push edi
push ebx
push esi
push eax
call fcn_0001f598  ; call 0x1f598
movzx edx, word [ebp - 0x20]
add esp, 0x10
mov dword [ebp + 0x10], ebx
mov dword [ebp + 0xc], esi
mov dword [ebp + 0x14], edx
movzx eax, ax
mov dword [ebp + 8], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_0001f521  ; jmp 0x1f521

fcn_0001f6aa:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
mov ebx, dword [ebp + 0x10]
mov edi, dword [ebp + 0x14]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f6e2  ; je 0x1f6e2
cmp ebx, 0xf
jbe short loc_0001f6e2  ; jbe 0x1f6e2
push edx
push ref_00026c8b  ; push 0x26c8b
push 0x180
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f6e2:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f708  ; je 0x1f708
cmp dword [ebp + 0xc], ebx
jbe short loc_0001f708  ; jbe 0x1f708
push eax
push ref_00025a81  ; push 0x25a81
push 0x181
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f708:  ; not directly referenced
sub esp, 0xc
movzx edi, di
push edi
movzx esi, si
push 0
push ebx
push dword [ebp + 0xc]
push esi
call fcn_0001f60f  ; call 0x1f60f
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001f726:  ; not directly referenced
push ebp
mov ebp, esp
sub esp, 8
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f753  ; je 0x1f753
cmp dword [ebp + 0x10], 0x1f
jbe short loc_0001f753  ; jbe 0x1f753
push edx
push ref_00026c97  ; push 0x26c97
push 0x21b
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f753:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f77c  ; je 0x1f77c
mov eax, dword [ebp + 0x10]
cmp dword [ebp + 0xc], eax
jbe short loc_0001f77c  ; jbe 0x1f77c
push eax
push ref_00025a81  ; push 0x25a81
push 0x21c
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f77c:  ; not directly referenced
mov cl, byte [ebp + 0x10]
mov eax, 0xfffffffe
shl eax, cl
mov cl, byte [ebp + 0xc]
not eax
and eax, dword [ebp + 8]
leave
shr eax, cl
ret

fcn_0001f792:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
mov edi, dword [ebp + 0x14]
mov dword [ebp - 0x1c], eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f7d0  ; je 0x1f7d0
cmp ebx, 0x1f
jbe short loc_0001f7d0  ; jbe 0x1f7d0
push edx
push ref_00026c97  ; push 0x26c97
push 0x266
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f7d0:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f7f5  ; je 0x1f7f5
cmp esi, ebx
jbe short loc_0001f7f5  ; jbe 0x1f7f5
push eax
push ref_00025a81  ; push 0x25a81
push 0x267
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f7f5:
mov eax, dword [ebp - 0x1c]
mov dword [ebp + 0x14], edi
mov dword [ebp + 0x10], ebx
mov dword [ebp + 0xc], esi
mov dword [ebp + 8], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_0001f180  ; jmp 0x1f180

fcn_0001f810:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
mov edi, dword [ebp + 0x14]
mov dword [ebp - 0x1c], eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f84e  ; je 0x1f84e
cmp ebx, 0x1f
jbe short loc_0001f84e  ; jbe 0x1f84e
push edx
push ref_00026c97  ; push 0x26c97
push 0x28c
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f84e:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f873  ; je 0x1f873
cmp esi, ebx
jbe short loc_0001f873  ; jbe 0x1f873
push eax
push ref_00025a81  ; push 0x25a81
push 0x28d
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f873:
mov eax, dword [ebp - 0x1c]
mov dword [ebp + 0x14], edi
mov dword [ebp + 0x10], ebx
mov dword [ebp + 0xc], esi
mov dword [ebp + 8], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_0001f1d3  ; jmp 0x1f1d3

fcn_0001f88e:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
mov edi, dword [ebp + 0x14]
mov dword [ebp - 0x1c], eax
mov eax, dword [ebp + 0x18]
mov dword [ebp - 0x20], eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f8d2  ; je 0x1f8d2
cmp ebx, 0x1f
jbe short loc_0001f8d2  ; jbe 0x1f8d2
push edx
push ref_00026c97  ; push 0x26c97
push 0x2b6
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f8d2:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f8f7  ; je 0x1f8f7
cmp esi, ebx
jbe short loc_0001f8f7  ; jbe 0x1f8f7
push eax
push ref_00025a81  ; push 0x25a81
push 0x2b7
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f8f7:
push edi
push ebx
push esi
push dword [ebp - 0x1c]
call fcn_0001f810  ; call 0x1f810
mov edx, dword [ebp - 0x20]
add esp, 0x10
mov dword [ebp + 0x10], ebx
mov dword [ebp + 0xc], esi
mov dword [ebp + 0x14], edx
mov dword [ebp + 8], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_0001f792  ; jmp 0x1f792

fcn_0001f920:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 0x10]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f951  ; je 0x1f951
cmp ebx, 0x1f
jbe short loc_0001f951  ; jbe 0x1f951
push edx
push ref_00026c97  ; push 0x26c97
push 0x240
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f951:
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f976  ; je 0x1f976
cmp esi, ebx
jbe short loc_0001f976  ; jbe 0x1f976
push eax
push ref_00025a81  ; push 0x25a81
push 0x241
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f976:
sub esp, 0xc
push dword [ebp + 0x14]
push 0
push ebx
push esi
push dword [ebp + 8]
call fcn_0001f88e  ; call 0x1f88e
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0001f98f:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 0xc]
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0x10]
mov ebx, dword [ebp + 0x14]
mov dword [ebp - 0x1c], eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f9cd  ; je 0x1f9cd
cmp ebx, 0x3f
jbe short loc_0001f9cd  ; jbe 0x1f9cd
push ecx
push ref_00026ca3  ; push 0x26ca3
push 0x2db
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f9cd:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001f9f2  ; je 0x1f9f2
cmp esi, ebx
jbe short loc_0001f9f2  ; jbe 0x1f9f2
push edx
push ref_00025a81  ; push 0x25a81
push 0x2dc
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001f9f2:  ; not directly referenced
push eax
push ebx
push 0xffffffffffffffff
push 0xfffffffffffffffe
call fcn_0001fd4c  ; call 0x1fd4c
add esp, 0x10
mov dword [ebp + 0x10], esi
not edx
not eax
and edx, dword [ebp - 0x1c]
and eax, edi
mov dword [ebp + 8], eax
mov dword [ebp + 0xc], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_0001718b  ; jmp 0x1718b

fcn_0001fa1e:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 8]
mov esi, dword [ebp + 0x18]
mov edi, dword [ebp + 0x1c]
mov dword [ebp - 0x20], eax
mov eax, dword [ebp + 0xc]
mov dword [ebp - 0x24], eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001fa60  ; je 0x1fa60
cmp dword [ebp + 0x14], 0x3f
jbe short loc_0001fa60  ; jbe 0x1fa60
push eax
push ref_00026ca3  ; push 0x26ca3
push 0x329
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001fa60:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001fa89  ; je 0x1fa89
mov eax, dword [ebp + 0x14]
cmp dword [ebp + 0x10], eax
jbe short loc_0001fa89  ; jbe 0x1fa89
push ebx
push ref_00025a81  ; push 0x25a81
push 0x32a
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001fa89:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001fadc  ; je 0x1fadc
mov ebx, dword [ebp + 0x14]
sub ebx, dword [ebp + 0x10]
push ecx
push ebx
push edi
push esi
call fcn_0001718b  ; call 0x1718b
add esp, 0xc
push ebx
push edi
push esi
mov dword [ebp - 0x1c], eax
mov dword [ebp - 0x28], edx
call fcn_0001718b  ; call 0x1718b
mov ecx, dword [ebp - 0x28]
add esp, 0x10
and eax, 1
test ecx, ecx
jne short loc_0001fac4  ; jne 0x1fac4
cmp dword [ebp - 0x1c], eax
je short loc_0001fadc  ; je 0x1fadc

loc_0001fac4:  ; not directly referenced
push edx
push ref_00026caf  ; push 0x26caf
push 0x331
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001fadc:  ; not directly referenced
push eax
push dword [ebp + 0x10]
push edi
push esi
call fcn_0001fd4c  ; call 0x1fd4c
add esp, 0xc
push dword [ebp + 0x14]
push 0xffffffffffffffff
push 0xfffffffffffffffe
mov esi, eax
mov ebx, edx
call fcn_0001fd4c  ; call 0x1fd4c
not eax
not edx
and eax, esi
and edx, ebx
or eax, dword [ebp - 0x20]
or edx, dword [ebp - 0x24]
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001fb10:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 8]
mov esi, dword [ebp + 0x18]
mov edi, dword [ebp + 0x1c]
mov dword [ebp - 0x20], eax
mov eax, dword [ebp + 0xc]
mov dword [ebp - 0x24], eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001fb52  ; je 0x1fb52
cmp dword [ebp + 0x14], 0x3f
jbe short loc_0001fb52  ; jbe 0x1fb52
push eax
push ref_00026ca3  ; push 0x26ca3
push 0x35d
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001fb52:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001fb7b  ; je 0x1fb7b
mov eax, dword [ebp + 0x14]
cmp dword [ebp + 0x10], eax
jbe short loc_0001fb7b  ; jbe 0x1fb7b
push ebx
push ref_00025a81  ; push 0x25a81
push 0x35e
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001fb7b:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001fbce  ; je 0x1fbce
mov ebx, dword [ebp + 0x14]
sub ebx, dword [ebp + 0x10]
push ecx
push ebx
push edi
push esi
call fcn_0001718b  ; call 0x1718b
add esp, 0xc
push ebx
push edi
push esi
mov dword [ebp - 0x1c], eax
mov dword [ebp - 0x28], edx
call fcn_0001718b  ; call 0x1718b
mov ecx, dword [ebp - 0x28]
add esp, 0x10
and eax, 1
test ecx, ecx
jne short loc_0001fbb6  ; jne 0x1fbb6
cmp dword [ebp - 0x1c], eax
je short loc_0001fbce  ; je 0x1fbce

loc_0001fbb6:  ; not directly referenced
push edx
push ref_00026d04  ; push 0x26d04
push 0x365
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001fbce:  ; not directly referenced
push eax
mov ecx, esi
push dword [ebp + 0x10]
not edi
not ecx
push edi
push ecx
call fcn_0001fd4c  ; call 0x1fd4c
add esp, 0xc
push dword [ebp + 0x14]
push 0xffffffffffffffff
push 0xfffffffffffffffe
mov esi, eax
mov ebx, edx
call fcn_0001fd4c  ; call 0x1fd4c
not ebx
mov ecx, eax
or ebx, edx
mov eax, esi
and ebx, dword [ebp - 0x24]
not eax
or eax, ecx
and eax, dword [ebp - 0x20]
lea esp, [ebp - 0xc]
mov edx, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001fc0e:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x2c
mov eax, dword [ebp + 8]
mov edx, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x14]
mov esi, dword [ebp + 0x20]
mov dword [ebp - 0x28], eax
mov eax, dword [ebp + 0x10]
mov dword [ebp - 0x24], edx
mov edx, dword [ebp + 0x1c]
mov edi, dword [ebp + 0x24]
mov dword [ebp - 0x1c], eax
mov eax, dword [ebp + 0x18]
mov dword [ebp - 0x2c], edx
mov dword [ebp - 0x30], eax
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001fc64  ; je 0x1fc64
cmp ebx, 0x3f
jbe short loc_0001fc64  ; jbe 0x1fc64
push ecx
push ref_00026ca3  ; push 0x26ca3
push 0x392
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001fc64:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001fc8a  ; je 0x1fc8a
cmp dword [ebp - 0x1c], ebx
jbe short loc_0001fc8a  ; jbe 0x1fc8a
push edx
push ref_00025a81  ; push 0x25a81
push 0x393
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001fc8a:  ; not directly referenced
push eax
push eax
push dword [ebp - 0x2c]
push dword [ebp - 0x30]
push ebx
push dword [ebp - 0x1c]
push dword [ebp - 0x24]
push dword [ebp - 0x28]
call fcn_0001fb10  ; call 0x1fb10
mov ecx, dword [ebp - 0x1c]
add esp, 0x20
mov dword [ebp + 0x18], esi
mov dword [ebp + 0x1c], edi
mov dword [ebp + 0x14], ebx
mov dword [ebp + 0x10], ecx
mov dword [ebp + 8], eax
mov dword [ebp + 0xc], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_0001fa1e  ; jmp 0x1fa1e

fcn_0001fcc5:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 8]
mov edx, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x14]
mov esi, dword [ebp + 0x18]
mov dword [ebp - 0x20], eax
mov edi, dword [ebp + 0x1c]
mov dword [ebp - 0x1c], edx
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001fd09  ; je 0x1fd09
cmp ebx, 0x3f
jbe short loc_0001fd09  ; jbe 0x1fd09
push edx
push ref_00026ca3  ; push 0x26ca3
push 0x300
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001fd09:  ; not directly referenced
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001fd2f  ; je 0x1fd2f
cmp dword [ebp + 0x10], ebx
jbe short loc_0001fd2f  ; jbe 0x1fd2f
push eax
push ref_00025a81  ; push 0x25a81
push 0x301
push ref_00026c01  ; push 0x26c01
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001fd2f:  ; not directly referenced
push edi
push esi
push 0
push 0
push ebx
push dword [ebp + 0x10]
push dword [ebp - 0x1c]
push dword [ebp - 0x20]
call fcn_0001fc0e  ; call 0x1fc0e
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001fd4c:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
mov edi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001fd81  ; je 0x1fd81
cmp ebx, 0x3f
jbe short loc_0001fd81  ; jbe 0x1fd81
push eax
push ref_00025909  ; push 0x25909
push 0x27
push ref_00026d5b  ; push 0x26d5b
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001fd81:  ; not directly referenced
mov dword [ebp + 0x10], ebx
mov dword [ebp + 8], esi
mov dword [ebp + 0xc], edi
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near loc_0001fee8  ; jmp 0x1fee8

fcn_0001fd96:  ; not directly referenced
push ebp
mov ebp, esp
pop ebp
jmp near loc_0001fe02  ; jmp 0x1fe02

fcn_0001fd9f:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 8]
mov edx, dword [ebp + 0xc]
mov esi, dword [ebp + 0x10]
mov ebx, dword [ebp + 0x14]
mov dword [ebp - 0x20], eax
mov edi, dword [ebp + 0x18]
mov dword [ebp - 0x1c], edx
call fcn_000153f0  ; call 0x153f0
test al, al
je short loc_0001fde1  ; je 0x1fde1
mov eax, ebx
or eax, esi
jne short loc_0001fde1  ; jne 0x1fde1
push eax
push ref_0002597e  ; push 0x2597e
push 0x2f
push ref_00026d90  ; push 0x26d90
call fcn_000153fc  ; call 0x153fc
add esp, 0x10

loc_0001fde1:  ; not directly referenced
mov eax, dword [ebp - 0x20]
mov edx, dword [ebp - 0x1c]
mov dword [ebp + 0x18], edi
mov dword [ebp + 0x10], esi
mov dword [ebp + 0x14], ebx
mov dword [ebp + 8], eax
mov dword [ebp + 0xc], edx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near loc_0001fe14  ; jmp 0x1fe14

loc_0001fe02:  ; not directly referenced
mov ecx, dword [esp + 0xc]
mov eax, ecx
imul ecx, dword [esp + 8]
mul dword [esp + 4]
add edx, ecx
ret

loc_0001fe14:  ; not directly referenced
mov ecx, dword [esp + 0x10]
test ecx, ecx
jne short loc_0001fe2f  ; jne 0x1fe2f
mov ecx, dword [esp + 0x14]
jecxz loc_0001fe2a  ; jecxz 0x1fe2a
and dword [ecx + 4], 0
mov dword [esp + 0x10], ecx

loc_0001fe2a:  ; not directly referenced
jmp near loc_000174bd  ; jmp 0x174bd

loc_0001fe2f:  ; not directly referenced
push ebx
push esi
push edi
mov edx, dword [esp + 0x14]
mov eax, dword [esp + 0x10]
mov edi, edx
mov esi, eax
mov ebx, dword [esp + 0x18]

loc_0001fe42:  ; not directly referenced
shr edx, 1
rcr eax, 1
shrd ebx, ecx, 1
shr ecx, 1
jne short loc_0001fe42  ; jne 0x1fe42
div ebx
mov ebx, eax
mov ecx, dword [esp + 0x1c]
mul dword [esp + 0x18]
imul ecx, ebx
add edx, ecx
mov ecx, dword [esp + 0x20]
jb short loc_0001fe6f  ; jb 0x1fe6f
cmp edi, edx
ja short loc_0001fe7a  ; ja 0x1fe7a
jb short loc_0001fe6f  ; jb 0x1fe6f
cmp esi, eax
jae short loc_0001fe7a  ; jae 0x1fe7a

loc_0001fe6f:  ; not directly referenced
dec ebx
jecxz loc_0001fe85  ; jecxz 0x1fe85
sub eax, dword [esp + 0x18]
sbb edx, dword [esp + 0x1c]

loc_0001fe7a:  ; not directly referenced
jecxz loc_0001fe85  ; jecxz 0x1fe85
sub esi, eax
sbb edi, edx
mov dword [ecx], esi
mov dword [ecx + 4], edi

loc_0001fe85:  ; not directly referenced
mov eax, ebx
xor edx, edx
pop edi
pop esi
pop ebx
ret

fcn_0001fe8d:
push ebx

fcn_0001fe8e:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 0xc]
cpuid
push ecx
mov ecx, dword [ebp + 0x10]
jecxz loc_0001fe9e  ; jecxz 0x1fe9e
mov dword [ecx], eax

loc_0001fe9e:
mov ecx, dword [ebp + 0x14]
jecxz loc_0001fea5  ; jecxz 0x1fea5
mov dword [ecx], ebx

loc_0001fea5:
pop dword [ecx]
