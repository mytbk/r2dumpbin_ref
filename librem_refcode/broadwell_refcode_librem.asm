;; Generated with r2dumpbin (https://github.com/mytbk/r2dumpbin)
;; label comments removed

bits 32
org 0x00000000

fcn_00000000:
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
call fcn_00016434  ; call 0x16434
add esp, 0x10
mov ebx, eax
test eax, eax
je near loc_000000c4  ; je 0xc4
sub esp, 0xc
push ref_00020688  ; push 0x20688
call fcn_0001545e  ; call 0x1545e
pop eax
pop edx
push ebx
push 0
call fcn_0000e020  ; call 0xe020
mov dword [esp], ref_0002069a  ; mov dword [esp], 0x2069a
call fcn_0001545e  ; call 0x1545e
pop ecx
pop eax
push ebx
push 0
call fcn_0000058b  ; call 0x58b
mov dword [esp], ref_000206b5  ; mov dword [esp], 0x206b5
call fcn_0001545e  ; call 0x1545e
add esp, 0xc
push 0
push 0
push ebx
call fcn_0000d87f  ; call 0xd87f
lea eax, [ebp - 0xc]
push eax
push 0
push 0
push ref_000291dc  ; push 0x291dc
call fcn_0001975d  ; call 0x1975d
mov eax, dword [ebp - 0xc]
add esp, 0x20
movzx edx, byte [eax]
add eax, 0x284
push edx
push dword [esi + 0x1a]
push dword [esi + 0x1e]
push eax
call fcn_00011751  ; call 0x11751
mov eax, dword [ebp - 0xc]
pop edx
pop ecx
push dword [eax + 4]
push eax
call fcn_000150af  ; call 0x150af
mov dword [esp], ref_000206c7  ; mov dword [esp], 0x206c7
call fcn_0001545e  ; call 0x1545e
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

fcn_000000ce:
push ebp
mov ebp, esp
push esi
push ebx
sub esp, 0x14
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0x48
mov dword [esp], eax
call fcn_00017ed8  ; call 0x17ed8
mov ebx, eax
lea eax, [ebp - 0xc]
and ebx, 0xfffffffe
push eax
push 0
push 0
push ref_0002930c  ; push 0x2930c
call fcn_0001975d  ; call 0x1975d
add esp, 0x20
mov esi, eax
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0000014a  ; je 0x14a
test esi, esi
jns short loc_0000014a  ; jns 0x14a
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00000132  ; je 0x132
push eax
push esi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00000132:
push esi
push ref_000206f4  ; push 0x206f4
push 0x126
push ref_00020708  ; push 0x20708
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000014a:
push ecx
push 0x600
push 0xfffff9ff
lea eax, [ebx + 0x5f00]
push eax
call fcn_00018b68  ; call 0x18b68
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_0000017e  ; je 0x17e
push edx
push edx
push ref_00020738  ; push 0x20738
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000017e:
push eax
add ebx, 0x5da8
push eax
push 3
push ebx
call fcn_00018730  ; call 0x18730
lea esp, [ebp - 8]
xor eax, eax
pop ebx
pop esi
pop ebp
ret

fcn_00000197:
push ebp
mov ebp, esp
push esi
push ebx
call fcn_0001c678  ; call 0x1c678
mov esi, eax
call fcn_0001c651  ; call 0x1c651
sub esp, 0xc
push ref_0002955c  ; push 0x2955c
mov ebx, eax
call fcn_000190fd  ; call 0x190fd
add esp, 0x10
test eax, eax
je short loc_000001c4  ; je 0x1c4
cmp byte [eax + 0x4a], 0
jne short loc_00000228  ; jne 0x228

loc_000001c4:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000001de  ; je 0x1de
push eax
push eax
push ref_00020774  ; push 0x20774
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000001de:
test esi, esi
jne short loc_000001ea  ; jne 0x1ea
cmp ebx, 0x40670
je short loc_000001fc  ; je 0x1fc

loc_000001ea:
push esi
push 0
push 1
push 0x2e7
call fcn_0001790f  ; call 0x1790f
add esp, 0x10

loc_000001fc:
cmp ebx, 0x40670
je short loc_0000020c  ; je 0x20c
cmp ebx, 0x306d0
jne short loc_00000228  ; jne 0x228

loc_0000020c:
push eax
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
pop edx
pop ecx
push 1
sub eax, 0xffffff80
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10

loc_00000228:
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
call fcn_0001c651  ; call 0x1c651
push edx
mov esi, eax
push 0
and esi, 0xffffffef
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
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
call fcn_00017f28  ; call 0x17f28
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
call fcn_00017f28  ; call 0x17f28
mov eax, dword [ebx + 1]
add esp, 0xc
xor edx, edx
mov eax, dword [eax + 0xc]
push edx
or eax, 1
push eax
push edi
call fcn_00017f28  ; call 0x17f28
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
call fcn_00017f28  ; call 0x17f28
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
call fcn_00017f28  ; call 0x17f28
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
call fcn_00018b14  ; call 0x18b14
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
call fcn_000197df  ; call 0x197df
mov esi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00000371  ; je 0x371
test esi, esi
jns short loc_00000371  ; jns 0x371
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00000359  ; je 0x359
push eax
push esi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00000359:
push edi
push ref_000206f4  ; push 0x206f4
push 0x18b
push ref_00020708  ; push 0x20708
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00000371:
mov eax, dword [ebp - 0x20]
mov esi, ref_0002955c  ; mov esi, 0x2955c
mov ecx, 4
lea edi, [eax + 8]
add eax, 0x18
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
push edi
push edi
push 8
push eax
call fcn_00016fff  ; call 0x16fff
pop eax
mov eax, dword [ebp - 0x20]
pop edx
add eax, 0x20
push 8
push eax
call fcn_00016fff  ; call 0x16fff
mov eax, dword [ebp - 0x20]
pop ecx
pop esi
add eax, 0x29
push 0x21
push eax
call fcn_00016fff  ; call 0x16fff
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
push ref_0002928c  ; push 0x2928c
call fcn_0001975d  ; call 0x1975d
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00000434  ; je 0x434
test ebx, ebx
jns short loc_00000434  ; jns 0x434
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000041c  ; je 0x41c
push esi
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000041c:
push ecx
push ref_000206f4  ; push 0x206f4
push 0x1a6
push ref_00020708  ; push 0x20708
call fcn_0001548c  ; call 0x1548c
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
call fcn_0001724f  ; call 0x1724f
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
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000004a3  ; je 0x4a3
push eax
push eax
push ref_0002078e  ; push 0x2078e
push 0x40
call fcn_00015487  ; call 0x15487
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
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000004cf  ; je 0x4cf
push eax
push eax
push ref_000207a5  ; push 0x207a5
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000004cf:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000004ea  ; je 0x4ea
push eax
push 2
push ref_000207e9  ; push 0x207e9
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000004ea:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00000505  ; je 0x505
push eax
push 6
push ref_0002082d  ; push 0x2082d
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00000505:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00000520  ; je 0x520
push eax
push 0
push ref_00020871  ; push 0x20871
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00000520:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000053b  ; je 0x53b
push eax
push 0
push ref_000208b5  ; push 0x208b5
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000053b:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00000555  ; je 0x555
push eax
push eax
push ref_000208f9  ; push 0x208f9
push 0x40
call fcn_00015487  ; call 0x15487
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
call fcn_00017e8f  ; call 0x17e8f
pop edx
pop ecx
push 0x2060000
mov eax, dword [ebx + 1]
mov eax, dword [eax + 8]
add eax, 0x720
push eax
call fcn_00017e8f  ; call 0x17e8f
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
call fcn_0001c651  ; call 0x1c651
mov edi, eax
lea eax, [ebp - 0x24]
push eax
push 0
push 0
push ref_0002930c  ; push 0x2930c
call fcn_0001975d  ; call 0x1975d
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_000005f7  ; je 0x5f7
test ebx, ebx
jns short loc_000005f7  ; jns 0x5f7
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000005df  ; je 0x5df
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000005df:
push ebx
push ref_000206f4  ; push 0x206f4
push 0x8e
push ref_00020708  ; push 0x20708
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000005f7:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00000611  ; je 0x611
push ecx
push ecx
push ref_0002093d  ; push 0x2093d
push 0x40
call fcn_00015487  ; call 0x15487
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
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_00000644  ; je 0x644
push eax
push eax
push ref_00020952  ; push 0x20952
push 0x40
call fcn_00015487  ; call 0x15487
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
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000006b0  ; je 0x6b0
push ecx
push ecx
push ref_00020972  ; push 0x20972
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp short loc_000006b0  ; jmp 0x6b0

loc_00000684:
cmp edi, 0x40670
jne near loc_00000714  ; jne 0x714
push eax
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 2
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 0x10
jne short loc_00000668  ; jne 0x668
jmp short loc_000006e6  ; jmp 0x6e6

loc_000006b0:
push edx
push edx
push dword [ebp - 0x24]
push esi
call fcn_0000211b  ; call 0x211b
add esp, 0x10
test bl, bl
je short loc_000006de  ; je 0x6de

loc_000006c2:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00000706  ; je 0x706
push eax
push eax
push ref_00020984  ; push 0x20984
push 0x40
call fcn_00015487  ; call 0x15487
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
call fcn_00016c9a  ; call 0x16c9a
add eax, 2
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 0x10
jne short loc_000006c2  ; jne 0x6c2
jmp short loc_00000714  ; jmp 0x714

loc_00000706:
push eax
push eax
push dword [ebp - 0x24]
push esi
call fcn_00004b08  ; call 0x4b08
add esp, 0x10

loc_00000714:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000072e  ; je 0x72e
push eax
push eax
push ref_0002099a  ; push 0x2099a
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000072e:
push eax
push eax
push dword [ebp - 0x24]
push esi
call fcn_00001663  ; call 0x1663
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_00000756  ; je 0x756
push eax
push eax
push ref_000209b1  ; push 0x209b1
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00000756:
push edi
push edi
push dword [ebp - 0x24]
push esi
call fcn_000009ac  ; call 0x9ac
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_0000077e  ; je 0x77e
push ebx
push ebx
push ref_000209d9  ; push 0x209d9
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000077e:
push ecx
push ecx
push dword [ebp - 0x24]
push esi
call fcn_00001e49  ; call 0x1e49
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_000007a6  ; je 0x7a6
push edx
push edx
push ref_000209f9  ; push 0x209f9
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000007a6:
sub esp, 0xc
push dword [ebp - 0x24]
call fcn_000002f0  ; call 0x2f0
mov dword [esp], ref_00026ee4  ; mov dword [esp], 0x26ee4
call fcn_0001977f  ; call 0x1977f
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00000804  ; je 0x804
test ebx, ebx
jns short loc_00000804  ; jns 0x804
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000007ec  ; je 0x7ec
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000007ec:
push eax
push ref_000206f4  ; push 0x206f4
push 0xde
push ref_00020708  ; push 0x20708
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00000804:
sub esp, 0xc
lea eax, [ebp - 0x20]
push eax
call fcn_00019797  ; call 0x19797
mov ebx, eax
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_00000831  ; je 0x831
push eax
push dword [ebp - 0x20]
push ref_00020a16  ; push 0x20a16
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00000831:
test ebx, ebx
jne short loc_000008a9  ; jne 0x8a9
cmp dword [ebp - 0x20], 0x11
jne short loc_000008a9  ; jne 0x8a9
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00000855  ; je 0x855
push eax
push eax
push ref_00020a2a  ; push 0x20a2a
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00000855:
sub esp, 0xc
push ref_00026ed8  ; push 0x26ed8
call fcn_0001977f  ; call 0x1977f
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je near loc_00000949  ; je 0x949
test ebx, ebx
jns near loc_00000949  ; jns 0x949
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00000899  ; je 0x899
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00000899:
push eax
push ref_000206f4  ; push 0x206f4
push 0xe8
jmp near loc_0000093c  ; jmp 0x93c

loc_000008a9:
lea eax, [ebp - 0x1c]
push eax
push 0
push 0
push ref_0002932c  ; push 0x2932c
mov dword [ebp - 0x1c], 0
call fcn_0001975d  ; call 0x1975d
mov eax, dword [ebp - 0x1c]
add esp, 0x10
test eax, eax
je short loc_00000949  ; je 0x949
test byte [eax + 1], 1
je short loc_00000949  ; je 0x949
call fcn_00016627  ; call 0x16627
dec al
jne short loc_00000949  ; jne 0x949
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000008f5  ; je 0x8f5
push edi
push edi
push ref_00020a4e  ; push 0x20a4e
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000008f5:
sub esp, 0xc
push ref_00026ed8  ; push 0x26ed8
call fcn_0001977f  ; call 0x1977f
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00000949  ; je 0x949
test ebx, ebx
jns short loc_00000949  ; jns 0x949
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00000931  ; je 0x931
push esi
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00000931:
push ecx
push ref_000206f4  ; push 0x206f4
push 0xf8

loc_0000093c:
push ref_00020708  ; push 0x20708
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00000949:
sub esp, 0xc
push ref_00026ef0  ; push 0x26ef0
call fcn_0001972b  ; call 0x1972b
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000099d  ; je 0x99d
test ebx, ebx
jns short loc_0000099d  ; jns 0x99d
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00000985  ; je 0x985
push edx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00000985:
push eax
push ref_000206f4  ; push 0x206f4
push 0x102
push ref_00020708  ; push 0x20708
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000099d:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000009a7:
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
call fcn_0001c651  ; call 0x1c651
mov dword [ebp - 0x34], 0
mov edi, eax
mov eax, dword [ebx + 0x11]
cmp byte [eax + 0xb], 0
jne short loc_000009f7  ; jne 0x9f7
call fcn_00015479  ; call 0x15479
xor ebx, ebx
test al, al
je near loc_00000d16  ; je 0xd16
push ecx
push ecx
push ref_00020a83  ; push 0x20a83
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp near loc_00000d16  ; jmp 0xd16

loc_000009f7:
push eax
push eax
push 7
lea eax, [ebp - 0x26]
push eax
call fcn_00016fff  ; call 0x16fff
pop eax
pop edx
lea eax, [ebp - 0x1f]
push 7
push eax
call fcn_00016fff  ; call 0x16fff
lea eax, [ebp - 0x30]
push eax
push 0
push 0
push ref_0002919c  ; push 0x2919c
call fcn_0001975d  ; call 0x1975d
add esp, 0x20
mov dword [ebp - 0x3c], eax
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00000a6c  ; je 0xa6c
cmp dword [ebp - 0x3c], 0
jns short loc_00000a6c  ; jns 0xa6c
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00000a57  ; je 0xa57
push eax
push dword [ebp - 0x3c]
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00000a57:
push esi
push ref_000206f4  ; push 0x206f4
push 0x54
push ref_00020ac3  ; push 0x20ac3
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00000a6c:
push ecx
and edi, 0xfff0ff0
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0x48
mov dword [esp], eax
call fcn_00017ed8  ; call 0x17ed8
add esp, 0x10
cmp edi, 0x40670
jne near loc_00000b4a  ; jne 0xb4a
mov edx, dword [ebx + 0x11]
cmp byte [edx + 0x10], 0
je near loc_00000b4a  ; je 0xb4a
and eax, 0xfffffffe
mov esi, eax
mov eax, dword [ebx + 9]
mov eax, dword [eax + 0x64]
cmp eax, 0x7735940
je short loc_00000ada  ; je 0xada
ja short loc_00000ac6  ; ja 0xac6
cmp eax, 0x5f5e100
jne short loc_00000af3  ; jne 0xaf3
push edx
push edx
push 1
jmp short loc_00000ae4  ; jmp 0xae4

loc_00000ac6:
cmp eax, 0x9f437c0
je short loc_00000ae0  ; je 0xae0
cmp eax, 0xee6b280
jne short loc_00000af3  ; jne 0xaf3
push eax
push eax
push 0xe
jmp short loc_00000ae4  ; jmp 0xae4

loc_00000ada:
push eax
push eax
push 6
jmp short loc_00000ae4  ; jmp 0xae4

loc_00000ae0:
push eax
push eax
push 0xa

loc_00000ae4:
lea eax, [esi + 0x5da0]
push eax
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10

loc_00000af3:
push eax
push eax
push 0x80000014
lea eax, [esi + 0x5da4]
push eax
call fcn_00017e8f  ; call 0x17e8f
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_00000b2a  ; je 0xb2a
push eax
mov eax, dword [ebx + 0x11]
movzx eax, byte [eax + 0x10]
push eax
push ref_00020af1  ; push 0x20af1
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00000b2a:
push eax
add esi, 0x5e08
push eax
mov eax, dword [ebx + 0x11]
mov al, byte [eax + 0x10]
and eax, 0x7f
or eax, 0x80000000
push eax
push esi
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10

loc_00000b4a:
mov dword [ebp - 0x40], 1

loc_00000b51:
mov ecx, dword [ebp - 0x40]
cmp cl, 1
mov eax, ecx
mov byte [ebp - 0x41], cl
sete cl
sub eax, 3
cmp al, 2
mov byte [ebp - 0x43], cl
setbe byte [ebp - 0x42]
jbe short loc_00000b75  ; jbe 0xb75
test cl, cl
je near loc_00000d06  ; je 0xd06

loc_00000b75:
push ecx
push ecx
push 5
lea eax, [ebp - 0x2b]
push eax
call fcn_00016fff  ; call 0x16fff
mov al, byte [ebp - 0x41]
pop esi
pop edi
mov byte [ebp - 0x27], al
lea eax, [ebp - 0x34]
push eax
lea eax, [ebp - 0x2b]
push eax
call fcn_0001d3a2  ; call 0x1d3a2
add esp, 0x10
cmp dword [ebp - 0x34], 0
mov dword [ebp - 0x3c], eax
jne near loc_00000ce5  ; jne 0xce5
cmp byte [ebp - 0x2a], 0
jne short loc_00000bbd  ; jne 0xbbd
cmp byte [ebp - 0x29], 0
jne short loc_00000bbd  ; jne 0xbbd
cmp byte [ebp - 0x28], 0
je near loc_00000ccf  ; je 0xccf

loc_00000bbd:
push edi
push edi
push 7
lea edi, [ebp - 0x26]
push edi
call fcn_00016fff  ; call 0x16fff
mov al, byte [ebp - 0x41]
mov byte [ebp - 0x20], al
pop eax
pop edx
lea eax, [ebp - 0x34]
push eax
push edi
call fcn_0001d1f5  ; call 0x1d1f5
add esp, 0x10
mov dword [ebp - 0x3c], eax
test eax, eax
jne near loc_00000d06  ; jne 0xd06
cmp dword [ebp - 0x34], 0
jne near loc_00000d06  ; jne 0xd06
push esi
push esi
push 7
lea esi, [ebp - 0x1f]
push esi
call fcn_00016fff  ; call 0x16fff
mov al, byte [ebp - 0x41]
add esp, 0x10
cmp byte [ebp - 0x43], 0
mov byte [ebp - 0x19], al
je short loc_00000c7a  ; je 0xc7a
mov eax, dword [ebx + 0x11]
mov dx, word [eax + 6]
mov byte [ebp - 0x1f], dl
mov dl, byte [eax + 0xa]
mov byte [ebp - 0x1e], dl
test dl, dl
jne short loc_00000c2a  ; jne 0xc2a
mov dx, word [eax + 4]
jmp short loc_00000c2e  ; jmp 0xc2e

loc_00000c2a:
mov dx, word [eax + 2]

loc_00000c2e:
mov word [ebp - 0x1d], dx
mov ax, word [eax]
push ecx
push 7
push edi
push esi
mov word [ebp - 0x1b], ax
call fcn_00017067  ; call 0x17067
add esp, 0x10
test al, al

loc_00000c48:
je near loc_00000d06  ; je 0xd06
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
call fcn_0001d27c  ; call 0x1d27c
add esp, 0x10
mov esi, eax
test eax, eax
je short loc_00000cb2  ; je 0xcb2
jmp short loc_00000cb8  ; jmp 0xcb8

loc_00000c7a:
cmp byte [ebp - 0x42], 0
je near loc_00000d06  ; je 0xd06
mov cl, byte [ebp - 0x41]
mov eax, dword [ebx + 0x11]
cmp cl, 4
je short loc_00000c9a  ; je 0xc9a
cmp cl, 5
je short loc_00000ca0  ; je 0xca0
mov ax, word [eax + 8]
jmp short loc_00000ca4  ; jmp 0xca4

loc_00000c9a:
mov ax, word [eax + 0xc]
jmp short loc_00000ca4  ; jmp 0xca4

loc_00000ca0:
mov ax, word [eax + 0xe]

loc_00000ca4:
mov word [ebp - 0x1b], ax
mov ax, word [ebp - 0x22]
cmp word [ebp - 0x1b], ax
jmp short loc_00000c48  ; jmp 0xc48

loc_00000cb2:
cmp dword [ebp - 0x34], 0
je short loc_00000d06  ; je 0xd06

loc_00000cb8:
call fcn_00015479  ; call 0x15479
mov dword [ebp - 0x3c], esi
test al, al
je short loc_00000d06  ; je 0xd06
push dword [ebp - 0x34]
push esi
push ref_00020b17  ; push 0x20b17
jmp short loc_00000cf9  ; jmp 0xcf9

loc_00000ccf:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00000d06  ; je 0xd06
push eax
push dword [ebp - 0x40]
push ref_00020b60  ; push 0x20b60
push 0x40
jmp short loc_00000cfe  ; jmp 0xcfe

loc_00000ce5:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00000d06  ; je 0xd06
push dword [ebp - 0x40]
push dword [ebp - 0x34]
push ref_00020b89  ; push 0x20b89

loc_00000cf9:
push 0x80000000

loc_00000cfe:
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00000d06:
inc dword [ebp - 0x40]
cmp dword [ebp - 0x40], 6
jne near loc_00000b51  ; jne 0xb51
mov ebx, dword [ebp - 0x3c]

loc_00000d16:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00000d20:
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
call fcn_00016c9a  ; call 0x16c9a
mov dword [ebp - 0x1c], eax
add eax, 0xb
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
cmp al, 6
je short loc_00000dd5  ; je 0xdd5

loc_00000d5a:
mov eax, dword [ebp - 0x1c]
sub esp, 0xc
lea ebx, [esi + eax]
push ebx
call fcn_00017e4e  ; call 0x17e4e
mov edi, eax
pop eax
pop edx
push 0
push ebx
call fcn_00018b3e  ; call 0x18b3e
pop ecx
pop eax
push 0xffffffffffffffff
push ebx
call fcn_00018b14  ; call 0x18b14
mov dword [esp], ebx
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
cmp edi, eax
je short loc_00000d96  ; je 0xd96
test edi, 1
je short loc_00000da4  ; je 0xda4

loc_00000d96:
push ecx
push ecx
push edi
push ebx
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10
jmp short loc_00000dcd  ; jmp 0xdcd

loc_00000da4:
sub esp, 0xc
push ebx
call fcn_00017e4e  ; call 0x17e4e
mov edx, dword [ebp + 0x14]
and eax, 0xfffffff0
sub dword [edx], eax
pop eax
pop edx
push edi
and edi, 6
push ebx
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10
cmp edi, 4
lea eax, [esi + 4]
cmove esi, eax

loc_00000dcd:
add esi, 4
cmp esi, 0x24
jbe short loc_00000d5a  ; jbe 0xd5a

loc_00000dd5:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00000ddd:
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

loc_00000df9:
push eax
push 0
push esi
push dword [ebp - 0x20]
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], eax
mov ebx, eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
je near loc_00000e9b  ; je 0xe9b
sub esp, 0xc
lea eax, [ebx + 0xa]
push eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
cmp ax, 0x604
jne short loc_00000e9b  ; jne 0xe9b
mov al, byte [ebp - 0x19]
inc eax
mov byte [ebp - 0x19], al
push eax
push eax
push dword [ebp - 0x20]
lea eax, [ebx + 0x18]
push eax
call fcn_00017da5  ; call 0x17da5
movzx edi, byte [ebp - 0x19]
lea eax, [ebx + 0x19]
pop edx
add ebx, 0x1a
pop ecx
push edi
push eax
call fcn_00017da5  ; call 0x17da5
pop eax
pop edx
push 0xff
push ebx
call fcn_00017da5  ; call 0x17da5
add esp, 0xc
push 0
push 0
push edi
call fcn_00016c9a  ; call 0x16c9a
pop ecx
pop edx
push 0
push eax
call fcn_00017e04  ; call 0x17e04
mov dword [esp], edi
call fcn_00000ddd  ; call 0xddd
pop ecx
mov edi, eax
pop eax
mov eax, edi
movzx eax, al
push eax
push ebx
call fcn_00017da5  ; call 0x17da5
mov eax, edi
add esp, 0x10
mov byte [ebp - 0x19], al

loc_00000e9b:
inc esi
cmp esi, 0x20
jne near loc_00000df9  ; jne 0xdf9
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

fcn_00000eb7:
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
push ref_000290cc  ; push 0x290cc
mov dword [ebp - 0x20], 0
call fcn_0001975d  ; call 0x1975d
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00000f20  ; je 0xf20
test ebx, ebx
jns short loc_00000f20  ; jns 0xf20
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00000f08  ; je 0xf08
push esi
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00000f08:
push ebx
push ref_000206f4  ; push 0x206f4
push 0x2d0
push ref_00020bd2  ; push 0x20bd2
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00000f20:
mov byte [ebp - 0x29], 0
mov esi, 0x10100
xor ebx, ebx

loc_00000f2b:
call fcn_0001c1bf  ; call 0x1c1bf
cmp bl, al
jae near loc_00000fc0  ; jae 0xfc0
movzx eax, bl
push ecx
push eax
push 0x1c
push 0
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], eax
mov edi, eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
je short loc_00000fba  ; je 0xfba
push eax
push eax
push esi
lea eax, [edi + 0x18]
push eax
call fcn_00017e8f  ; call 0x17e8f
lea eax, [edi + 0x19]
add edi, 0x1a
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
pop edx
pop ecx
push 0xff
push edi
mov esi, eax
call fcn_00017da5  ; call 0x17da5
add esp, 0xc
mov eax, esi
push 0
movzx esi, al
push 0
push esi
call fcn_00016c9a  ; call 0x16c9a
pop edx
pop ecx
push 0
push eax
call fcn_00017e04  ; call 0x17e04
mov dword [esp], esi
call fcn_00000ddd  ; call 0xddd
movzx esi, al
mov byte [ebp - 0x29], al
pop eax
pop edx
push esi
inc esi
push edi
call fcn_00017da5  ; call 0x17da5
shl esi, 8
add esp, 0x10

loc_00000fba:
inc ebx
jmp near loc_00000f2b  ; jmp 0xf2b

loc_00000fc0:
mov byte [ebp - 0x2b], 0
mov byte [ebp - 0x2d], 1

loc_00000fc8:
mov al, byte [ebp - 0x29]
mov dl, byte [ebp - 0x2d]
cmp dl, al
ja near loc_000010df  ; ja 0x10df
xor ebx, ebx
movzx esi, dl

loc_00000fdb:
push eax
push 0
push ebx
push esi
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], eax
mov edi, eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
je near loc_000010a3  ; je 0x10a3
sub esp, 0xc
add edi, 0xe
push edi
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
mov byte [ebp - 0x2c], 0
mov byte [ebp - 0x2a], al
sar byte [ebp - 0x2a], 7
and byte [ebp - 0x2a], 7

loc_00001018:
movzx edi, byte [ebp - 0x2c]
push eax
push edi
push ebx
push esi
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
je short loc_00001094  ; je 0x1094
lea eax, [ebp - 0x20]
push eax
push edi
push ebx
push esi
call fcn_00000d20  ; call 0xd20
mov ecx, dword [ebp + 0xc]
add esp, 0xc
mov eax, dword [ebp - 0x20]
add dword [ecx], eax
push edi
push ebx
push esi
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xa
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
cmp ax, 0x300
jne short loc_00001094  ; jne 0x1094
cmp byte [ebp - 0x2b], 1
je short loc_00001090  ; je 0x1090
mov eax, dword [ebp + 0x10]
mov dword [eax], 2
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00001090  ; je 0x1090
push eax
push eax
push ref_00020c04  ; push 0x20c04
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00001090:
mov byte [ebp - 0x2b], 1

loc_00001094:
inc byte [ebp - 0x2c]
mov al, byte [ebp - 0x2a]
cmp byte [ebp - 0x2c], al
jbe near loc_00001018  ; jbe 0x1018

loc_000010a3:
inc ebx
cmp ebx, 0x20
jne near loc_00000fdb  ; jne 0xfdb
inc byte [ebp - 0x2d]
jmp near loc_00000fc8  ; jmp 0xfc8

loc_000010b5:
movzx edi, byte [ebp - 0x29]
xor ebx, ebx

loc_000010bb:
push eax
push 0
push ebx
push edi
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], eax
mov esi, eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
jne short loc_000010e9  ; jne 0x10e9

loc_000010d6:
inc ebx
cmp ebx, 0x20
jne short loc_000010bb  ; jne 0x10bb
dec byte [ebp - 0x29]

loc_000010df:
cmp byte [ebp - 0x29], 0
jne short loc_000010b5  ; jne 0x10b5
xor ebx, ebx
jmp short loc_00001110  ; jmp 0x1110

loc_000010e9:
sub esp, 0xc
lea eax, [esi + 0xa]
push eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
cmp ax, 0x604
jne short loc_000010d6  ; jne 0x10d6
push eax
add esi, 0x18
push eax
push 0
push esi
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10
jmp short loc_000010d6  ; jmp 0x10d6

loc_00001110:
call fcn_0001c1bf  ; call 0x1c1bf
cmp bl, al
jae short loc_0000113a  ; jae 0x113a
push eax
movzx eax, bl
push eax
inc ebx
push 0x1c
push 0
call fcn_00016c9a  ; call 0x16c9a
pop edx
pop ecx
push 0
add eax, 0x18
push eax
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10
jmp short loc_00001110  ; jmp 0x1110

loc_0000113a:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00001142:
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
call fcn_00016c9a  ; call 0x16c9a
mov ebx, eax
pop eax
pop edx
lea eax, [ebx + 0x19]
add ebx, 0x1a
push 1
push eax
call fcn_00017da5  ; call 0x17da5
pop ecx
pop esi
lea esi, [ebp - 0x1c]
push 0xff
push ebx
call fcn_00017da5  ; call 0x17da5
add esp, 0xc
push 0
push 0
push 1
call fcn_00016c9a  ; call 0x16c9a
pop edi
pop edx
push 0
push eax
call fcn_00017e04  ; call 0x17e04
mov dword [esp], 1
call fcn_00000ddd  ; call 0xddd
add esp, 0x10
mov byte [ebp - 0x2b], 0
mov byte [ebp - 0x2a], 1
mov byte [ebp - 0x29], al

loc_000011bc:
mov al, byte [ebp - 0x29]
mov dl, byte [ebp - 0x2a]
cmp dl, al
ja near loc_00001251  ; ja 0x1251
xor ebx, ebx
movzx edi, dl

loc_000011cf:
push eax
push 0
push ebx
push edi
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
je short loc_00001222  ; je 0x1222
push esi
push 0
push ebx
push edi
call fcn_00000d20  ; call 0xd20
mov ecx, dword [ebp + 0x14]
add esp, 0xc
mov eax, dword [ebp - 0x1c]
add dword [ecx], eax
push 0
push ebx
push edi
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xa
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
cmp ax, 0x300
je short loc_0000121e  ; je 0x121e
dec ax
jne short loc_00001222  ; jne 0x1222

loc_0000121e:
mov byte [ebp - 0x2b], 1

loc_00001222:
inc ebx
cmp ebx, 0x20
jne short loc_000011cf  ; jne 0x11cf
inc byte [ebp - 0x2a]
jmp short loc_000011bc  ; jmp 0x11bc

loc_0000122d:
push eax
push 0
push ebx
push edi
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], eax
mov esi, eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
jne short loc_0000125f  ; jne 0x125f

loc_00001248:
inc ebx
cmp ebx, 0x20
jne short loc_0000122d  ; jne 0x122d
dec byte [ebp - 0x29]

loc_00001251:
mov al, byte [ebp - 0x29]
test al, al
je short loc_00001286  ; je 0x1286
xor ebx, ebx
movzx edi, al
jmp short loc_0000122d  ; jmp 0x122d

loc_0000125f:
sub esp, 0xc
lea eax, [esi + 0xa]
push eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
cmp ax, 0x604
jne short loc_00001248  ; jne 0x1248
push eax
add esi, 0x18
push eax
push 0
push esi
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10
jmp short loc_00001248  ; jmp 0x1248

loc_00001286:
push eax
push dword [ebp - 0x30]
push dword [ebp - 0x34]
push dword [ebp - 0x38]
call fcn_00016c9a  ; call 0x16c9a
pop edx
pop ecx
push 0
add eax, 0x18
push eax
call fcn_00017e8f  ; call 0x17e8f
mov al, byte [ebp - 0x2b]
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000012ad:
push ebp
mov ecx, 0xf
mov ebp, esp
push edi
push esi
mov esi, ref_000203a0  ; mov esi, 0x203a0
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
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 0
push 0
push 0
mov esi, eax
mov dword [ebp - 0x48], eax
call fcn_00016c9a  ; call 0x16c9a
add eax, 0x54
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0xc
push 0
push 2
push 0
mov word [ebp - 0x3c], ax
and word [ebp - 0x3c], 0xe
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
mov byte [ebp - 0x39], 0xff
inc ax
mov eax, esi
setne byte [ebp - 0x4e]
add eax, 0xe
mov dword [ebp - 0x54], eax

loc_00001338:
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
call fcn_00016c9a  ; call 0x16c9a
add esp, 0x10
mov esi, eax
test word [ebp - 0x3c], bx
je near loc_00001534  ; je 0x1534
sub esp, 0xc
lea eax, [eax + 0xba]
push eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 0x40
je near loc_00001534  ; je 0x1534
push edx
push 0x10100
push 0xff0000ff
lea eax, [esi + 0x18]
push eax
mov dword [ebp - 0x40], eax
call fcn_00018b68  ; call 0x18b68
pop ecx
pop ebx
mov ebx, dword [ebp - 0x48]
push 0
push ebx
call fcn_00017e04  ; call 0x17e04
mov dword [esp], ebx
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
je near loc_00001534  ; je 0x1534
sub esp, 0xc
push dword [ebp - 0x54]
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
mov byte [ebp - 0x44], 0
mov bl, al
sar bl, 7
and ebx, 7

loc_000013db:
movzx edx, byte [ebp - 0x44]
push eax
push edx
push 0
push 1
mov dword [ebp - 0x58], edx
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
je short loc_00001418  ; je 0x1418
mov edx, dword [ebp - 0x58]
lea eax, [ebp - 0x2c]
push eax
push edx
push 0
push 1
call fcn_00000d20  ; call 0xd20
mov ecx, dword [ebp + 0x18]
add esp, 0x10
mov eax, dword [ebp - 0x2c]
add dword [ecx], eax

loc_00001418:
inc byte [ebp - 0x44]
cmp byte [ebp - 0x44], bl
jbe short loc_000013db  ; jbe 0x13db
mov eax, dword [ebp - 0x48]
sub esp, 0xc
add eax, 0xb
push eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
cmp al, 3
jne short loc_000014b0  ; jne 0x14b0
cmp byte [ebp - 0x4f], 0
jne short loc_00001458  ; jne 0x1458
cmp byte [ebp - 0x4e], 0
je short loc_0000144c  ; je 0x144c
cmp byte [ebp - 0x50], 0
je near loc_00001522  ; je 0x1522

loc_0000144c:
mov eax, dword [ebp + 0x10]
cmp dword [eax], 2
je near loc_00001522  ; je 0x1522

loc_00001458:
mov eax, dword [ebp + 0x10]
cmp dword [eax], 1
je near loc_000015ad  ; je 0x15ad
push ebx
add esi, 0x3e
push ebx
push 0x18
push esi
call fcn_00018927  ; call 0x18927
mov eax, dword [ebp + 0x10]
mov dword [eax], 1
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je near loc_000015b3  ; je 0x15b3
movzx edx, byte [ebp - 0x3a]
movzx eax, byte [ebp - 0x4d]
movzx ebx, byte [ebp - 0x4c]
push ecx
push edx
push eax
push ebx
push edx
push eax
push ref_00020c25  ; push 0x20c25
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20
jmp near loc_000015b3  ; jmp 0x15b3

loc_000014b0:
cmp al, 6
jne short loc_00001522  ; jne 0x1522
push dword [ebp + 0x18]
movzx edx, byte [ebp - 0x3a]
movzx ebx, byte [ebp - 0x4d]
movzx eax, byte [ebp - 0x4c]
push edx
push ebx
push eax
mov dword [ebp - 0x44], eax
mov dword [ebp - 0x4c], edx
call fcn_00001142  ; call 0x1142
add esp, 0x10
dec al
jne short loc_00001522  ; jne 0x1522
mov eax, dword [ebp + 0x10]
cmp dword [eax], 1
je short loc_00001522  ; je 0x1522
push eax
add esi, 0x3e
push eax
push 0x18
push esi
call fcn_00018927  ; call 0x18927
mov eax, dword [ebp + 0x10]
mov dword [eax], 1
call fcn_00015479  ; call 0x15479
mov cl, byte [ebp - 0x3a]
add esp, 0x10
mov edx, dword [ebp - 0x4c]
mov byte [ebp - 0x39], cl
test al, al
je short loc_00001522  ; je 0x1522
push esi
push edx
push ebx
push dword [ebp - 0x44]
push edx
push ebx
push ref_00020c25  ; push 0x20c25
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_00001522:
push ecx
push ecx
push 0xff0000ff
push dword [ebp - 0x40]
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10

loc_00001534:
add edi, 5
lea eax, [ebp - 0x18]
cmp edi, eax
jne near loc_00001338  ; jne 0x1338
cmp byte [ebp - 0x39], 0xff
je short loc_000015be  ; je 0x15be
lea ebx, [ebp - 0x27]
mov byte [ebp - 0x3a], 0

loc_0000154f:
mov al, byte [ebp - 0x3a]
cmp byte [ebp - 0x39], al
je short loc_0000159f  ; je 0x159f
push edx
movzx esi, byte [ebx + 2]
push esi
movzx edi, byte [ebx + 1]
push edi
movzx ecx, byte [ebx]
push ecx
mov dword [ebp - 0x40], ecx
call fcn_00016c9a  ; call 0x16c9a
pop ecx
pop edx
push 4
add eax, 0x3e
push eax
call fcn_00018927  ; call 0x18927
call fcn_00015479  ; call 0x15479
add esp, 0x10
mov ecx, dword [ebp - 0x40]
test al, al
je short loc_0000159f  ; je 0x159f
push eax
push esi
push edi
push ecx
push esi
push edi
push ref_00020c56  ; push 0x20c56
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_0000159f:
inc byte [ebp - 0x3a]
add ebx, 5
cmp byte [ebp - 0x3a], 3
jne short loc_0000154f  ; jne 0x154f
jmp short loc_000015be  ; jmp 0x15be

loc_000015ad:
mov al, byte [ebp - 0x39]
mov byte [ebp - 0x3a], al

loc_000015b3:
mov al, byte [ebp - 0x3a]
mov byte [ebp - 0x39], al
jmp near loc_00001522  ; jmp 0x1522

loc_000015be:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000015c6:
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
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
mov ecx, eax

loc_000015f7:
and ecx, dword [ebp - 0x20]
cmp ecx, dword [ebp - 0x24]
je short loc_0000162a  ; je 0x162a
cmp bx, 0xbb8
je short loc_0000162a  ; je 0x162a
sub esp, 0xc
inc ebx
push edi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0xc
push 0x3e8
push esi
push dword [ebp - 0x1c]
mov dword [ebp - 0x28], eax
call dword [esi + 4]  ; ucall
add esp, 0x10
mov ecx, dword [ebp - 0x28]
jmp short loc_000015f7  ; jmp 0x15f7

loc_0000162a:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0000165b  ; je 0x165b
cmp bx, 0xbb8
jne short loc_0000165b  ; jne 0x165b
mov dword [ebp + 0x10], ref_00020c7e  ; mov dword [ebp + 0x10], 0x20c7e
mov dword [ebp + 0xc], 0x41b
mov dword [ebp + 8], ref_00020bd2  ; mov dword [ebp + 8], 0x20bd2
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_0001548c  ; jmp 0x1548c

loc_0000165b:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00001663:
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
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 0
push 2
push 0
mov ebx, eax
mov dword [ebp - 0x4c], eax
call fcn_00016c9a  ; call 0x16c9a
mov dword [ebp - 0x44], eax
mov eax, ebx
add eax, 0x48
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
mov dword [ebp - 0x54], eax
call fcn_0001c651  ; call 0x1c651
mov dword [ebp - 0x3c], eax
lea eax, [ebp - 0x1c]
mov dword [esp], eax
call fcn_00019797  ; call 0x19797
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000170c  ; je 0x170c
test ebx, ebx
jns short loc_0000170c  ; jns 0x170c
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000016f7  ; je 0x16f7
push edx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000016f7:
push eax
push ref_000206f4  ; push 0x206f4
push 0x55
push ref_00020bd2  ; push 0x20bd2
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000170c:
lea eax, [ebp - 0x20]
push eax
push 0
push 0
push ref_000291dc  ; push 0x291dc
call fcn_0001975d  ; call 0x1975d
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00001762  ; je 0x1762
test ebx, ebx
jns short loc_00001762  ; jns 0x1762
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000174d  ; je 0x174d
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000174d:
push eax
push ref_000206f4  ; push 0x206f4
push 0x60
push ref_00020bd2  ; push 0x20bd2
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00001762:
mov eax, dword [ebp - 0x4c]
lea ebx, [eax + 0x50]
push eax
push eax
push 2
push ebx
call fcn_00018927  ; call 0x18927
pop eax
push dword [ebp - 0x44]
mov dword [ebp - 0x34], 0
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
cmp byte [edi], 0x10
mov word [ebp - 0x40], ax
jbe short loc_00001797  ; jbe 0x1797
mov eax, dword [edi + 1]
cmp byte [eax + 0x33], 0
jne short loc_000017ca  ; jne 0x17ca

loc_00001797:
lea esi, [ebp - 0x34]
push eax
push esi
lea edx, [ebp - 0x30]
push edx
push dword [ebp + 8]
call fcn_00000eb7  ; call 0xeb7
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
call fcn_000012ad  ; call 0x12ad
add esp, 0x20

loc_000017ca:
mov eax, dword [edi + 5]
mov eax, dword [eax + 8]
test eax, eax
jne short loc_00001818  ; jne 0x1818
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000017ee  ; je 0x17ee
push esi
push esi
push ref_00020c93  ; push 0x20c93
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000017ee:
call fcn_00015480  ; call 0x15480
test al, al
je near loc_00001d2e  ; je 0x1d2e
push ebx
push ref_00020cde  ; push 0x20cde
push 0x83
push ref_00020bd2  ; push 0x20bd2
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
jmp near loc_00001d2e  ; jmp 0x1d2e

loc_00001818:
mov edx, dword [ebp - 0x3c]
cmp edx, 0x40650
sete cl
cmp edx, 0x306c0
sete dl
or dl, cl
mov byte [ebp - 0x47], cl
mov byte [ebp - 0x45], dl
jne short loc_00001848  ; jne 0x1848
mov edx, eax
and edx, 0xff000000
cmp dword [ebp - 0x3c], 0x40660
jne short loc_0000184f  ; jne 0x184f

loc_00001848:
and eax, 0xffc00000
mov edx, eax

loc_0000184f:
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
call fcn_00017e8f  ; call 0x17e8f
mov dword [esp], esi
call fcn_00017e4e  ; call 0x17e4e
pop edx
pop ecx
push 6
mov dword [ebp - 0x40], eax
mov eax, dword [ebp - 0x44]
and dword [ebp - 0x40], 0xfffffff0
add eax, 4
push eax
mov dword [ebp - 0x50], eax
call fcn_00018927  ; call 0x18927
add esp, 0x10
cmp byte [ebp - 0x46], 0
je near loc_00001afa  ; je 0x1afa
cmp dword [ebp - 0x34], 0
mov eax, dword [edi + 5]
je short loc_000018aa  ; je 0x18aa
cmp byte [eax + 6], 0
jne short loc_000018b0  ; jne 0x18b0

loc_000018aa:
cmp byte [eax + 5], 0
jne short loc_000018ba  ; jne 0x18ba

loc_000018b0:
cmp byte [eax + 5], 1
jne near loc_00001afa  ; jne 0x1afa

loc_000018ba:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000018d4  ; je 0x18d4
push eax
push eax
push ref_00020cec  ; push 0x20cec
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000018d4:
push eax
push eax
mov eax, dword [ebp - 0x20]
push 1
push dword [eax + 4]
call fcn_0001c5d1  ; call 0x1c5d1
mov esi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000192a  ; je 0x192a
test esi, esi
jns short loc_0000192a  ; jns 0x192a
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00001912  ; je 0x1912
push eax
push esi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00001912:
push ecx
push ref_000206f4  ; push 0x206f4
push 0xae
push ref_00020bd2  ; push 0x20bd2
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000192a:
mov eax, dword [edi + 5]
cmp byte [ebp - 0x45], 0
movzx esi, byte [eax + 4]
jne short loc_00001940  ; jne 0x1940
cmp dword [ebp - 0x3c], 0x40660
jne short loc_00001962  ; jne 0x1962

loc_00001940:
push eax
push eax
push 0xff07
push ebx
call fcn_00018954  ; call 0x18954
pop eax
pop edx
lea eax, [esi*8]
movzx esi, al
push esi
push ebx
call fcn_00018730  ; call 0x18730
jmp short loc_00001981  ; jmp 0x1981

loc_00001962:
push eax
push eax
push 0xff
push ebx
call fcn_00018954  ; call 0x18954
shl esi, 8
pop edx
and esi, 0x3f00
pop ecx
push esi
push ebx
call fcn_00018927  ; call 0x18927

loc_00001981:
mov eax, dword [edi + 5]
add esp, 0x10
cmp word [eax + 2], 0
mov eax, dword [ebp - 0x44]
lea esi, [eax + 0x62]
je short loc_00001a03  ; je 0x1a03
cmp byte [ebp - 0x45], 0
jne short loc_000019a3  ; jne 0x19a3
cmp dword [ebp - 0x3c], 0x40660
jne short loc_000019b9  ; jne 0x19b9

loc_000019a3:
push eax
push 0x200
push 0xfcff
push ebx
call fcn_00018981  ; call 0x18981
add esp, 0x10
jmp short loc_00001a03  ; jmp 0x1a03

loc_000019b9:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_000019e4  ; je 0x19e4
mov eax, dword [edi + 5]
cmp word [eax + 2], 3
jbe short loc_000019e4  ; jbe 0x19e4
push eax
push ref_00020cfa  ; push 0x20cfa
push 0xd0
push ref_00020bd2  ; push 0x20bd2
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000019e4:
push eax
mov eax, dword [edi + 5]
movzx eax, word [eax + 2]
shl eax, 6
movzx eax, al
push eax
push 0xff3f
push ebx
call fcn_00018981  ; call 0x18981
add esp, 0x10
jmp short loc_00001a26  ; jmp 0x1a26

loc_00001a03:
cmp byte [ebp - 0x45], 0
jne short loc_00001a12  ; jne 0x1a12
cmp dword [ebp - 0x3c], 0x40660
jne short loc_00001a26  ; jne 0x1a26

loc_00001a12:
push eax
mov eax, dword [edi + 5]
mov al, byte [eax + 7]
add eax, eax
movzx eax, al
push eax
push 0xf9
jmp short loc_00001a34  ; jmp 0x1a34

loc_00001a26:
push eax
mov eax, dword [edi + 5]
movzx eax, byte [eax + 7]
push eax
push 0xe0

loc_00001a34:
push esi
call fcn_0001878a  ; call 0x1878a
mov eax, dword [edi + 5]
add esp, 0x10
cmp byte [eax + 6], 0
je short loc_00001a72  ; je 0x1a72
cmp dword [ebp - 0x34], 0
je short loc_00001a72  ; je 0x1a72
push ecx
push ecx
push 2
push ebx
call fcn_00018927  ; call 0x18927
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_00001a82  ; je 0x1a82
push edx
push edx
push ref_00020d26  ; push 0x20d26
push 0x40
call fcn_00015487  ; call 0x15487
jmp short loc_00001a7f  ; jmp 0x1a7f

loc_00001a72:
push eax
push eax
push 0xfffd
push ebx
call fcn_00018954  ; call 0x18954

loc_00001a7f:
add esp, 0x10

loc_00001a82:
mov eax, dword [ebp - 0x3c]
cmp eax, 0x40670
je short loc_00001a93  ; je 0x1a93
cmp eax, 0x306d0
jne short loc_00001aab  ; jne 0x1aab

loc_00001a93:
push eax
push eax
mov eax, dword [ebp - 0x40]
push 0x4000
add eax, 0x6c004
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10

loc_00001aab:
cmp byte [edi], 0xd
jbe short loc_00001ad4  ; jbe 0x1ad4
mov eax, dword [edi + 5]
cmp byte [eax + 0xc], 1
jne short loc_00001ad4  ; jne 0x1ad4
cmp dword [ebp - 0x1c], 0x11
je short loc_00001ad4  ; je 0x1ad4
push eax
push eax
mov eax, dword [ebp - 0x40]
push 8
add eax, 0xc7204
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10

loc_00001ad4:
push eax
push eax
push 0xfff9
push dword [ebp - 0x50]
call fcn_00018954  ; call 0x18954
lea eax, [ebp - 0x28]
push eax
push 0
push 2
push 0
call fcn_00000d20  ; call 0xd20
add esp, 0x20
jmp near loc_00001cc4  ; jmp 0x1cc4

loc_00001afa:
push eax
push eax
mov eax, dword [ebp - 0x20]
push 0
push dword [eax + 4]
call fcn_0001c5d1  ; call 0x1c5d1
mov esi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00001b50  ; je 0x1b50
test esi, esi
jns short loc_00001b50  ; jns 0x1b50
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00001b38  ; je 0x1b38
push eax
push esi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00001b38:
push esi
push ref_000206f4  ; push 0x206f4
push 0x106
push ref_00020bd2  ; push 0x20bd2
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00001b50:
lea eax, [ebp - 0x24]
push eax
push 0
push 0
push ref_000290cc  ; push 0x290cc
call fcn_0001975d  ; call 0x1975d
mov esi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00001ba9  ; je 0x1ba9
test esi, esi
jns short loc_00001ba9  ; jns 0x1ba9
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00001b91  ; je 0x1b91
push ecx
push esi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00001b91:
push edx
push ref_000206f4  ; push 0x206f4
push 0x108
push ref_00020bd2  ; push 0x20bd2
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00001ba9:
cmp dword [ebp - 0x3c], 0x306d0
je short loc_00001bbc  ; je 0x1bbc
cmp byte [ebp - 0x47], 0
je near loc_00001c4b  ; je 0x1c4b

loc_00001bbc:
push eax
mov eax, dword [ebp - 0x40]
push 0x80000000
push 0xffffffffffffffff
add eax, 0x130040
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp byte [ebp - 0x46], 0
je short loc_00001bfd  ; je 0x1bfd
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
call fcn_000015c6  ; call 0x15c6
add esp, 0x20

loc_00001bfd:
mov esi, dword [ebp - 0x54]
push eax
push 1
push 0xffffffffffffffff
and esi, 0xfffffffe
lea eax, [esi + 0x5f0c]
push eax
call fcn_00018b68  ; call 0x18b68
mov eax, dword [ebp - 0x24]
add esp, 0xc
push 1
push eax
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
add esp, 0x10
cmp byte [ebp - 0x46], 0
je short loc_00001c4b  ; je 0x1c4b
push eax
xor edx, edx
push 0
push 0x200
push 0x5f0c
push edx
push esi
push dword [ebp - 0x24]
push dword [ebp + 8]
call fcn_000015c6  ; call 0x15c6
add esp, 0x20

loc_00001c4b:
push eax
push eax
push 0xfff9
push dword [ebp - 0x50]
call fcn_00018954  ; call 0x18954
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_00001c77  ; je 0x1c77
push eax
push eax
push ref_00020d66  ; push 0x20d66
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00001c77:
cmp byte [ebp - 0x45], 0
jne short loc_00001c86  ; jne 0x1c86
cmp dword [ebp - 0x3c], 0x40660
jne short loc_00001c90  ; jne 0x1c90

loc_00001c86:
push esi
push 2
push 0xfc07
jmp short loc_00001c95  ; jmp 0x1c95

loc_00001c90:
push ecx
push 2
push 0x3f

loc_00001c95:
push ebx
call fcn_00018981  ; call 0x18981
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
call fcn_0001875d  ; call 0x1875d
add esp, 0x10

loc_00001cc4:
mov eax, dword [ebp - 0x2c]
mov esi, dword [ebp - 0x30]
mov ebx, dword [ebp - 0x28]
mov dword [ebp - 0x3c], eax
push eax
push eax
push 0
push dword [ebp - 0x58]
call fcn_00018b3e  ; call 0x18b3e
mov eax, dword [edi + 9]
add esp, 0x10
cmp byte [eax + 3], 0
jne short loc_00001d2e  ; jne 0x1d2e
add esi, dword [ebp - 0x3c]
mov edx, dword [edi + 5]
add ebx, esi
cmp ebx, 0x3fffffff
jbe short loc_00001cff  ; jbe 0x1cff
mov word [edx], 0x800
jmp short loc_00001d2e  ; jmp 0x1d2e

loc_00001cff:
cmp ebx, 0x2fffffff
jbe short loc_00001d0e  ; jbe 0x1d0e
mov word [edx], 0x700
jmp short loc_00001d2e  ; jmp 0x1d2e

loc_00001d0e:
cmp ebx, 0x1fffffff
jbe short loc_00001d1d  ; jbe 0x1d1d
mov word [edx], 0x600
jmp short loc_00001d2e  ; jmp 0x1d2e

loc_00001d1d:
cmp ebx, 0x10000000
sbb eax, eax
xor al, al
add ax, 0x500
mov word [edx], ax

loc_00001d2e:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00001d36:
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

loc_00001d53:
mov eax, dword [esi + ecx*4]
mov ebx, edx
shl ebx, cl
inc ecx
or byte [ebp + eax - 0x1c], bl
cmp ecx, 8
jne short loc_00001d53  ; jne 0x1d53
xor ebx, ebx

loc_00001d66:
cmp byte [esi + ebx*2 + 0x20], 1
mov cl, bl
jne short loc_00001dbd  ; jne 0x1dbd
movzx eax, byte [esi + ebx*2 + 0x21]
movzx edx, byte [ebp + ebx - 0x1c]
shl eax, 0x18
or edx, 0x80000000
or edx, eax
cmp bl, 2
je short loc_00001d9f  ; je 0x1d9f
cmp bl, 3
je short loc_00001da6  ; je 0x1da6
dec cl
mov eax, 0x14
mov ecx, 0x20
cmove eax, ecx
jmp short loc_00001dab  ; jmp 0x1dab

loc_00001d9f:
mov eax, 0x2c
jmp short loc_00001dab  ; jmp 0x1dab

loc_00001da6:
mov eax, 0x38

loc_00001dab:
push ecx
add eax, edi
push edx
push 0xf8ffff01
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_00001dbd:
inc ebx
cmp ebx, 4
jne short loc_00001d66  ; jne 0x1d66
push eax
xor eax, eax
cmp byte [esi + 0x22], 1
sete al
add edi, 4
push eax
push 0xf8
push edi
call fcn_0001878a  ; call 0x1878a
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00001de6:
push ebp
mov ebp, esp
push edi
xor edi, edi
push esi
push ebx
sub esp, 0xc
mov ebx, dword [ebp + 0xc]

loc_00001df4:
mov ecx, dword [ebp + 8]
mov eax, edi
cmp byte [ecx + edi*2 + 0x20], 1
je short loc_00001e10  ; je 0x1e10

loc_00001e00:
inc edi
cmp edi, 4
jne short loc_00001df4  ; jne 0x1df4
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

loc_00001e10:
cmp al, 2
je short loc_00001e29  ; je 0x1e29
cmp al, 3
je short loc_00001e30  ; je 0x1e30
dec al
mov esi, 0x1a
mov eax, 0x26
cmove esi, eax
jmp short loc_00001e35  ; jmp 0x1e35

loc_00001e29:
mov esi, 0x32
jmp short loc_00001e35  ; jmp 0x1e35

loc_00001e30:
mov esi, 0x3e

loc_00001e35:
add esi, ebx

loc_00001e37:
sub esp, 0xc
push esi
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test al, 2
jne short loc_00001e37  ; jne 0x1e37
jmp short loc_00001e00  ; jmp 0x1e00

fcn_00001e49:
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
call fcn_00016c9a  ; call 0x16c9a
mov esi, eax
add esi, 0x68
lea eax, [eax + 0x48]
mov dword [esp], eax
call fcn_00017ed8  ; call 0x17ed8
mov dword [esp], esi
call fcn_00017ed8  ; call 0x17ed8
and eax, 0xfffffffe
mov edi, edx
mov esi, eax
call fcn_0001c651  ; call 0x1c651
mov dword [ebp - 0x30], eax
lea eax, [ebp - 0x20]
push eax
push 0
push 0
push ref_000291ac  ; push 0x291ac
call fcn_0001975d  ; call 0x1975d
add esp, 0x20
mov dword [ebp - 0x2c], eax
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00001ee2  ; je 0x1ee2
cmp dword [ebp - 0x2c], 0
jns short loc_00001ee2  ; jns 0x1ee2
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00001ecd  ; je 0x1ecd
push eax
push dword [ebp - 0x2c]
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00001ecd:
push ecx
push ref_000206f4  ; push 0x206f4
push 0x3e
push ref_00020d7b  ; push 0x20d7b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00001ee2:
lea eax, [ebp - 0x1c]
push eax
push 0
push 0
push ref_0002917c  ; push 0x2917c
call fcn_0001975d  ; call 0x1975d
mov dword [ebp - 0x2c], eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00001f3d  ; je 0x1f3d
cmp dword [ebp - 0x2c], 0
jns short loc_00001f3d  ; jns 0x1f3d
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00001f28  ; je 0x1f28
push edx
push dword [ebp - 0x2c]
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00001f28:
push eax
push ref_000206f4  ; push 0x206f4
push 0x41
push ref_00020d7b  ; push 0x20d7b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00001f3d:
mov eax, dword [ebp - 0x30]
cmp eax, 0x40660
je short loc_00001f88  ; je 0x1f88
cmp eax, 0x306c0
je short loc_00001f88  ; je 0x1f88
cmp eax, 0x40670
je short loc_00001f6a  ; je 0x1f6a

loc_00001f55:
push eax
push eax
push 2
lea eax, [esi + 0xa78]
push eax
call fcn_00018730  ; call 0x18730
add esp, 0x10
jmp short loc_00001f88  ; jmp 0x1f88

loc_00001f6a:
push eax
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 2
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 0x10
je short loc_00001f55  ; je 0x1f55

loc_00001f88:
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

loc_00001fa7:
mov edx, dword [ebp - 0x1c]
lea ebx, [edx + eax*4]
mov ecx, dword [ebx]
cmp ecx, 1
jne short loc_00001fba  ; jne 0x1fba
cmp byte [edx + 0x22], 0
jmp short loc_00001fce  ; jmp 0x1fce

loc_00001fba:
cmp ecx, 2
jne short loc_00001fc5  ; jne 0x1fc5
cmp byte [edx + 0x24], 0
jmp short loc_00001fce  ; jmp 0x1fce

loc_00001fc5:
cmp ecx, 3
jne short loc_00001fd6  ; jne 0x1fd6
cmp byte [edx + 0x26], 0

loc_00001fce:
jne short loc_00001fd6  ; jne 0x1fd6
mov dword [ebx], 0

loc_00001fd6:
inc eax
cmp eax, 8
jne short loc_00001fa7  ; jne 0x1fa7
push eax
push edi
push esi
push dword [ebp - 0x1c]
call fcn_00001d36  ; call 0x1d36
mov eax, dword [ebp - 0x20]
call dword [eax + 4]  ; ucall
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00002031  ; je 0x2031
test ebx, ebx
jns short loc_00002031  ; jns 0x2031
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000201c  ; je 0x201c
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000201c:
push eax
push ref_000206f4  ; push 0x206f4
push 0x62
push ref_00020d7b  ; push 0x20d7b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00002031:
push ecx
push edi
push esi
push dword [ebp - 0x1c]
call fcn_00001de6  ; call 0x1de6
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000207e  ; je 0x207e
test ebx, ebx
jns short loc_0000207e  ; jns 0x207e
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00002069  ; je 0x2069
push edx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00002069:
push eax
push ref_000206f4  ; push 0x206f4
push 0x68
push ref_00020d7b  ; push 0x20d7b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000207e:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00002088:
push ebp
mov ebp, esp
push ebx
sub esp, 0xc
mov ebx, dword [ebp + 8]
push 0x20
lea eax, [ebx + 0x88]
add ebx, 0x8a
push eax
call fcn_00018730  ; call 0x18730
add esp, 0x10

loc_000020a9:
sub esp, 0xc
push ebx
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test ah, 8
jne short loc_000020a9  ; jne 0x20a9
mov ebx, dword [ebp - 4]
leave
ret

fcn_000020bf:
push ebp
mov ebp, esp
push ebx
sub esp, 8
mov ebx, dword [ebp + 0x10]
push 0x20000000
push 0xdfffffff
lea eax, [ebx + 0x258]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0xc
push 0x6b5
push 0xfffff800
lea eax, [ebx + 0x208]
add ebx, 0x22c
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
mov dword [ebp + 8], ebx
mov ebx, dword [ebp - 4]
mov dword [ebp + 0x10], 0x2020
mov dword [ebp + 0xc], 0xffff0000
leave
jmp near fcn_00018b68  ; jmp 0x18b68

fcn_0000211b:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x30
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
mov ebx, eax
lea eax, [eax + 0x48]
add ebx, 0x68
mov dword [esp], eax
call fcn_00017ed8  ; call 0x17ed8
mov dword [esp], ebx
mov dword [ebp - 0x30], eax
call fcn_00017ed8  ; call 0x17ed8
mov ebx, eax
lea eax, [ebp - 0x1c]
push eax
push 0
push 0
push ref_000291dc  ; push 0x291dc
mov dword [ebp - 0x2c], edx
call fcn_0001975d  ; call 0x1975d
add esp, 0x20
mov esi, eax
call fcn_00015480  ; call 0x15480
test al, al
je short loc_000021a8  ; je 0x21a8
test esi, esi
jns short loc_000021ca  ; jns 0x21ca
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00002190  ; je 0x2190
push eax
push esi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00002190:
push eax
push ref_000206f4  ; push 0x206f4
push 0x13f
push ref_00020d7b  ; push 0x20d7b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000021a8:
test esi, esi
jns short loc_000021ca  ; jns 0x21ca
call fcn_00015479  ; call 0x15479
test al, al
je near loc_00002411  ; je 0x2411
push edi
push edi
push ref_00020daa  ; push 0x20daa
push 0x80000000
jmp near loc_0000235c  ; jmp 0x235c

loc_000021ca:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000021e4  ; je 0x21e4
push esi
push esi
push ref_00020dd9  ; push 0x20dd9
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000021e4:
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
call fcn_00004257  ; call 0x4257
add esp, 0x20
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00002223  ; je 0x2223
push ecx
push ecx
push ref_00020de8  ; push 0x20de8
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00002223:
push edx
push dword [ebp - 0x2c]
push ebx
push dword [ebp + 0xc]
call fcn_000020bf  ; call 0x20bf
mov ecx, dword [ebp + 0xc]
add esp, 0x10
mov eax, dword [ecx + 0xd]
cmp byte [eax + 3], 0
mov eax, dword [ebp - 0x2c]
lea eax, [eax + 0x84]
mov dword [ebp - 0x30], eax
jne short loc_0000226e  ; jne 0x226e

loc_0000224b:
call fcn_00015479  ; call 0x15479
test al, al
je near loc_0000240a  ; je 0x240a
push eax
push eax
push ref_00020e08  ; push 0x20e08
push 2
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp near loc_0000240a  ; jmp 0x240a

loc_0000226e:
mov eax, dword [ebp - 0x1c]
sub esp, 0xc
mov eax, dword [eax + 4]
add eax, 0x21a4
push eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
and eax, 0xf
dec al
je short loc_0000224b  ; je 0x224b
push eax
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xe4
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test eax, 0x400000
jne short loc_0000224b  ; jne 0x224b
lea eax, [ebp - 0x20]
push eax
push 0
push 0
push ref_000291ac  ; push 0x291ac
call fcn_0001975d  ; call 0x1975d
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_000022d7  ; je 0x22d7
test ebx, ebx
js near loc_00002369  ; js 0x2369

loc_000022d7:
mov eax, dword [ebp - 0x20]
mov bl, 1
call dword [eax + 8]  ; ucall
push eax
push 2
push 0xfffffffffffffff0
push dword [ebp - 0x30]
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_000022ef:
sub esp, 0xc
push dword [ebp - 0x30]
call fcn_00017e4e  ; call 0x17e4e
add esp, 0xc
and eax, 0xf
push eax
mov eax, dword [ebp - 0x2c]
push 0xfffffffffffffff0
add eax, 0x98
push eax
call fcn_00018b68  ; call 0x18b68
pop ecx
pop eax
push edi
push esi
call fcn_00002088  ; call 0x2088
mov eax, dword [ebp - 0x2c]
add esp, 0x10
test bl, bl
lea ebx, [eax + 0x8a]
jne short loc_000023a3  ; jne 0x23a3

loc_0000232a:
sub esp, 0xc
xor esi, esi
push ebx
call fcn_00017dc2  ; call 0x17dc2
mov ebx, eax
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je near loc_00002411  ; je 0x2411
mov eax, ebx
and eax, 0xf
shr bx, 4
push eax
and ebx, 0x3f
push ebx
push ref_00020e5f  ; push 0x20e5f
push 0x40

loc_0000235c:
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp near loc_00002411  ; jmp 0x2411

loc_00002369:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00002386  ; je 0x2386
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00002386:
push eax
push ref_000206f4  ; push 0x206f4
push 0x15f
push ref_00020d7b  ; push 0x20d7b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
jmp near loc_000022d7  ; jmp 0x22d7

loc_000023a3:
sub esp, 0xc
push ebx
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
and eax, 0xf
cmp ax, 2
je short loc_000023d4  ; je 0x23d4

loc_000023b8:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000023f9  ; je 0x23f9
push edx
push edx
push ref_00020e40  ; push 0x20e40
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp short loc_000023f9  ; jmp 0x23f9

loc_000023d4:
mov eax, dword [ebp - 0x1c]
sub esp, 0xc
mov eax, dword [eax + 4]
add eax, 0x21aa
push eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
and eax, 0xf
cmp ax, 2
jne short loc_000023b8  ; jne 0x23b8
jmp near loc_0000232a  ; jmp 0x232a

loc_000023f9:
push eax
push eax
push edi
push esi
call fcn_00002088  ; call 0x2088
add esp, 0x10
jmp near loc_0000232a  ; jmp 0x232a

loc_0000240a:
xor ebx, ebx
jmp near loc_000022ef  ; jmp 0x22ef

loc_00002411:
lea esp, [ebp - 0xc]
mov eax, esi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000241b:
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
call fcn_00016c9a  ; call 0x16c9a
add eax, 0x54
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
mov ebx, eax
call fcn_00015479  ; call 0x15479
shr ebx, 1
add esp, 0x10
and ebx, 7
test al, al
je short loc_00002480  ; je 0x2480
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
push ref_00020e7c  ; push 0x20e7c
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_00002480:
movzx edx, byte [ebp - 0x1c]
mov eax, 2
sub eax, edx
bt ebx, eax
jae near loc_00002524  ; jae 0x2524
mov eax, edi
push ecx
movzx eax, al
push edx
push eax
mov eax, esi
movzx eax, al
push eax
call fcn_00016c9a  ; call 0x16c9a
mov esi, eax
lea eax, [eax + 0xb2]
add esi, 0x11a
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
mov dword [esp], esi
mov ebx, eax
call fcn_00017dc2  ; call 0x17dc2
mov esi, eax
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_000024f2  ; je 0x24f2
mov eax, ebx
and eax, 0xf
shr bx, 4
push eax
and ebx, 0x3f
push ebx
push ref_00020e92  ; push 0x20e92
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000024f2:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00002512  ; je 0x2512
shr si, 1
and esi, 1
push eax
push esi
push ref_00020eab  ; push 0x20eab
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00002512:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00002547  ; je 0x2547
mov dword [ebp + 0xc], ref_00021f21  ; mov dword [ebp + 0xc], 0x21f21
jmp short loc_00002534  ; jmp 0x2534

loc_00002524:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00002547  ; je 0x2547
mov dword [ebp + 0xc], ref_00021751  ; mov dword [ebp + 0xc], 0x21751

loc_00002534:
mov dword [ebp + 8], 0x40
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00015487  ; jmp 0x15487

loc_00002547:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000254f:
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
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 0
push 0
push 0
mov edi, eax
call fcn_00016c9a  ; call 0x16c9a
add eax, 0x54
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
mov edx, 2
add esp, 0x10
sub edx, ebx
shr eax, 1
and eax, 7
bt eax, edx
jae near loc_0000262c  ; jae 0x262c
sub esp, 0xc
add edi, 0x11a
push edi
xor esi, esi
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
mov edx, eax
shr dx, 1
and edx, 1

loc_000025c7:
cmp esi, 0x63
ja short loc_000025f9  ; ja 0x25f9
test dx, dx
je short loc_000025f9  ; je 0x25f9
push eax
mov eax, dword [ebp + 0xc]
inc esi
push 0x3e8
push dword [ebp + 0xc]
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
mov dword [esp], edi
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
mov edx, eax
shr dx, 1
and edx, 1
jmp short loc_000025c7  ; jmp 0x25c7

loc_000025f9:
mov dword [ebp - 0x24], edx
call fcn_00015479  ; call 0x15479
mov edx, dword [ebp - 0x24]
test al, al
je short loc_0000262c  ; je 0x262c
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
push ref_00020eca  ; push 0x20eca
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x30

loc_0000262c:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00002634:
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
call fcn_00019797  ; call 0x19797
mov edi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00002693  ; je 0x2693
test edi, edi
jns short loc_00002693  ; jns 0x2693
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000267b  ; je 0x267b
push ecx
push edi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000267b:
push edx
push ref_000206f4  ; push 0x206f4
push 0xa0
push ref_00020f0c  ; push 0x20f0c
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00002693:
cmp dword [ebp - 0x1c], 0x11
jne short loc_0000269f  ; jne 0x269f

loc_00002699:
test esi, esi
jne short loc_000026b6  ; jne 0x26b6
jmp short loc_000026b0  ; jmp 0x26b0

loc_0000269f:
sub esp, 0xc
push 1
call fcn_0001c321  ; call 0x1c321
add esp, 0x10
dec al
je short loc_00002699  ; je 0x2699

loc_000026b0:
mov byte [ebp - 0x2a], 0xf8
jmp short loc_000026e4  ; jmp 0x26e4

loc_000026b6:
cmp byte [esi + 0x28], 0
je short loc_000026b0  ; je 0x26b0
mov al, byte [esi + 0x46]
mov byte [ebp - 0x2a], al
test al, al
je short loc_000026b0  ; je 0x26b0
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000026e4  ; je 0x26e4
push eax
movzx eax, byte [esi + 0x46]
push eax
push ref_00020f40  ; push 0x20f40
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000026e4:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00002702  ; je 0x2702
push eax
movzx eax, byte [ebp - 0x2a]
push eax
push ref_00020f6a  ; push 0x20f6a
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00002702:
cmp bl, 2
je short loc_00002713  ; je 0x2713
xor edi, edi
mov al, 6
cmp bl, 3
cmove edi, eax
jmp short loc_00002718  ; jmp 0x2718

loc_00002713:
mov edi, 4

loc_00002718:
mov al, byte [ebp - 0x2a]
mov byte [ebp - 0x2b], 0
mov byte [ebp - 0x29], 0
or eax, edi
mov byte [ebp - 0x2d], al

loc_00002728:
xor ebx, ebx
mov byte [ebp - 0x2c], 1

loc_0000272e:
mov dl, byte [ebp - 0x2c]
mov al, dl
and eax, edi
cmp dl, al
jne short loc_0000276a  ; jne 0x276a
cmp byte [ebp - 0x2b], 0
jne near loc_000027d9  ; jne 0x27d9
call fcn_00015479  ; call 0x15479
test al, al
je near loc_000027d9  ; je 0x27d9
push eax
push ebx
push 1
push 0
push ebx
push 1
push ref_00020f8f  ; push 0x20f8f
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20
jmp short loc_000027d9  ; jmp 0x27d9

loc_0000276a:
mov al, byte [ebp - 0x29]
mov cl, byte [ebp - 0x2c]
or al, byte [ebp - 0x2a]
and eax, ecx
cmp cl, al
je short loc_000027d9  ; je 0x27d9
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000279a  ; je 0x279a
push eax
push ebx
push 1
push 0
push ebx
push 1
push ref_00020fc0  ; push 0x20fc0
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_0000279a:
push eax
push ebx
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0x11a
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test al, 2
jne short loc_000027d9  ; jne 0x27d9
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000027d3  ; je 0x27d3
push eax
push eax
push ref_00020fe0  ; push 0x20fe0
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000027d3:
mov al, byte [ebp - 0x2c]
or byte [ebp - 0x29], al

loc_000027d9:
inc ebx
shl byte [ebp - 0x2c], 1
cmp ebx, 3
jne near loc_0000272e  ; jne 0x272e
mov al, byte [ebp - 0x2d]
or al, byte [ebp - 0x29]
inc al
je short loc_00002812  ; je 0x2812
push ecx
mov eax, dword [ebp + 0xc]
push 0x3e8
push dword [ebp + 0xc]
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
inc byte [ebp - 0x2b]
add esp, 0x10
cmp byte [ebp - 0x2b], 0x64
jne near loc_00002728  ; jne 0x2728

loc_00002812:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00002830  ; je 0x2830
movzx eax, byte [ebp - 0x2b]
push edx
push eax
push ref_00020ffe  ; push 0x20ffe
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00002830:
test esi, esi
je short loc_0000285a  ; je 0x285a
mov al, byte [ebp - 0x29]
not eax
mov byte [esi + 0x46], al
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000285a  ; je 0x285a
push eax
movzx eax, byte [esi + 0x46]
push eax
push ref_00021014  ; push 0x21014
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000285a:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00002862:
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
call fcn_00016c9a  ; call 0x16c9a
mov esi, eax
lea eax, [eax + 0x34]
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
cmp al, 0xff
jne short loc_000028c8  ; jne 0x28c8

loc_00002899:
xor eax, eax
jmp short loc_000028d0  ; jmp 0x28d0

loc_0000289d:
mov edi, eax
sub esp, 0xc
and edi, 0xfc
lea ebx, [edi + esi]
push ebx
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
cmp al, byte [ebp - 0x19]
je short loc_000028ce  ; je 0x28ce
sub esp, 0xc
lea edx, [ebx + 1]
push edx
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10

loc_000028c8:
test al, al
jne short loc_0000289d  ; jne 0x289d
jmp short loc_00002899  ; jmp 0x2899

loc_000028ce:
mov eax, edi

loc_000028d0:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000028d8:
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
call fcn_00016c9a  ; call 0x16c9a
add esp, 0x10
test bl, bl
je near loc_000029da  ; je 0x29da
mov esi, eax
lea eax, [ebp - 0x1c]
push eax
push 0
push 0
push ref_000290cc  ; push 0x290cc
call fcn_0001975d  ; call 0x1975d
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00002963  ; je 0x2963
test ebx, ebx
jns short loc_00002963  ; jns 0x2963
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000294b  ; je 0x294b
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000294b:
push eax
push ref_000206f4  ; push 0x206f4
push 0x146
push ref_00020f0c  ; push 0x20f0c
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00002963:
push eax
push eax
push 0x10
lea ebx, [esi + 0xb0]
push ebx
call fcn_00018927  ; call 0x18927
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
ja short loc_0000299a  ; ja 0x299a
movzx eax, al
movzx edx, byte [eax + ref_000203c8]  ; movzx edx, byte [eax + 0x203c8]

loc_0000299a:
push eax
add esi, 0x224
push edx
push 0xffffffffffffffe0
push esi
call fcn_00018b68  ; call 0x18b68
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
call fcn_00018954  ; call 0x18954
mov eax, dword [ebp - 0x1c]
add esp, 0xc
push 0x186a0
push eax
push edi
call dword [eax + 4]  ; ucall
add esp, 0x10

loc_000029da:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000029e2:
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
jne short loc_00002a3e  ; jne 0x2a3e
mov dword [ebp + 0xc], ebx
add esi, edi
jmp short loc_00002a51  ; jmp 0x2a51

loc_00002a3e:
push eax
push 0
push ecx
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0x10
mov dword [ebp + 0xc], ebx
add esi, eax

loc_00002a51:
mov dword [ebp + 8], esi
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017e8f  ; jmp 0x17e8f

fcn_00002a60:
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
jne short loc_00002a89  ; jne 0x2a89
mov eax, dword [ebp + 8]
sub esp, 0xc
add eax, ebx
push eax
jmp short loc_00002a99  ; jmp 0x2a99

loc_00002a89:
push edi
push 0
push esi
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, ebx
mov dword [esp], eax

loc_00002a99:
call fcn_00017e4e  ; call 0x17e4e
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
jne short loc_00002adb  ; jne 0x2adb
push esi
add ebx, dword [ebp + 8]
push esi
jmp short loc_00002aea  ; jmp 0x2aea

loc_00002adb:
push eax
push 0
push esi
push 0
call fcn_00016c9a  ; call 0x16c9a
pop edx
pop ecx
add ebx, eax

loc_00002aea:
push edi
push ebx
call fcn_00017e8f  ; call 0x17e8f
mov dword [esp], ebx
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
shr eax, 1
and eax, 0x3fff
ret

fcn_00002b0b:
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
call fcn_0001c651  ; call 0x1c651
mov dword [ebp - 0x1c], eax
call fcn_0001c678  ; call 0x1c678
mov edx, dword [ebp - 0x24]
cmp dl, 1
je short loc_00002b42  ; je 0x2b42
cmp dl, 2
je short loc_00002b66  ; je 0x2b66
jmp short loc_00002ba2  ; jmp 0x2ba2

loc_00002b42:
lea edi, [ebx - 8]
cmp bl, 7
ja short loc_00002ba4  ; ja 0x2ba4
call fcn_00015479  ; call 0x15479
test al, al
je near loc_00002c2f  ; je 0x2c2f
movzx ebx, bl
mov dword [ebp + 0x14], ebx
mov dword [ebp + 0x10], 1
jmp short loc_00002b88  ; jmp 0x2b88

loc_00002b66:
lea edi, [ebx - 0xc]
cmp bl, 0xb
ja short loc_00002ba4  ; ja 0x2ba4
call fcn_00015479  ; call 0x15479
test al, al
je near loc_00002c2f  ; je 0x2c2f
movzx ebx, bl
mov dword [ebp + 0x14], ebx
mov dword [ebp + 0x10], 2

loc_00002b88:
mov dword [ebp + 0xc], ref_00021036  ; mov dword [ebp + 0xc], 0x21036
mov dword [ebp + 8], 2
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00015487  ; jmp 0x15487

loc_00002ba2:
mov edi, ebx

loc_00002ba4:
mov ecx, esi
movzx esi, byte [ebp - 0x20]
test cl, cl
je short loc_00002bca  ; je 0x2bca
test edi, 1
jne short loc_00002bc0  ; jne 0x2bc0
shl esi, 8
mov ebx, 0xfffff0ff
jmp short loc_00002bfb  ; jmp 0x2bfb

loc_00002bc0:
shl esi, 0x18
mov ebx, 0xf0ffffff
jmp short loc_00002bfb  ; jmp 0x2bfb

loc_00002bca:
test eax, eax
je short loc_00002be6  ; je 0x2be6
cmp dword [ebp - 0x1c], 0x40670
jne short loc_00002be6  ; jne 0x2be6

loc_00002bd7:
test edi, 1
jne short loc_00002bf3  ; jne 0x2bf3

loc_00002bdf:
mov ebx, 0xfffffff0
jmp short loc_00002bfb  ; jmp 0x2bfb

loc_00002be6:
cmp bl, 7
jbe short loc_00002bd7  ; jbe 0x2bd7
test edi, 1
jne short loc_00002bdf  ; jne 0x2bdf

loc_00002bf3:
shl esi, 0x10
mov ebx, 0xfff0ffff

loc_00002bfb:
movzx edx, dl
push eax
push edx
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
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
jmp near fcn_00018b68  ; jmp 0x18b68

loc_00002c2f:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00002c37:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov ebx, dword [ebp + 8]
mov esi, dword [ebp + 0x14]
call fcn_0001c651  ; call 0x1c651
mov dword [ebp - 0x1c], eax
call fcn_0001c678  ; call 0x1c678
mov dword [ebp - 0x20], eax
xor eax, eax

loc_00002c58:
cmp byte [ebx + eax], 9
jbe short loc_00002c62  ; jbe 0x2c62
mov byte [ebx + eax], 8

loc_00002c62:
mov edi, dword [ebp + 0xc]
cmp byte [edi + eax], 9
jbe short loc_00002c6f  ; jbe 0x2c6f
mov byte [edi + eax], 7

loc_00002c6f:
mov edi, dword [ebp + 0x10]
cmp byte [edi + eax], 6
jbe short loc_00002c7c  ; jbe 0x2c7c
mov byte [edi + eax], 2

loc_00002c7c:
inc eax
cmp eax, 0x10
jne short loc_00002c58  ; jne 0x2c58
push eax
push 0
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 1
push 1
push 0
mov edi, eax
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 2
push 1
push 0
mov dword [ebp - 0x28], eax
call fcn_00016c9a  ; call 0x16c9a
add esp, 0x10
cmp esi, 2
mov ecx, dword [ebp - 0x28]
mov dword [ebp - 0x24], eax
je near loc_00002e17  ; je 0x2e17
cmp esi, 3
je short loc_00002cdb  ; je 0x2cdb
test esi, esi
jne near loc_000031b8  ; jne 0x31b8
add edi, 0xda0
xor esi, esi
jmp near loc_00002fba  ; jmp 0x2fba

loc_00002cdb:
cmp dword [ebp - 0x20], 0
lea ecx, [edi + 0xda0]
je short loc_00002d52  ; je 0x2d52
cmp dword [ebp - 0x1c], 0x40670
jne short loc_00002d52  ; jne 0x2d52
mov edi, ecx
xor esi, esi

loc_00002cf4:
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
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp esi, 8
jne short loc_00002cf4  ; jne 0x2cf4
jmp near loc_000031b8  ; jmp 0x31b8

loc_00002d52:
xor esi, esi

loc_00002d54:
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
call fcn_00018b68  ; call 0x18b68
mov ecx, dword [ebp - 0x1c]
add esp, 0x10
add ecx, 4
cmp esi, 4
jne short loc_00002d54  ; jne 0x2d54
add edi, 0xdb0

loc_00002db9:
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
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp esi, 8
jne short loc_00002db9  ; jne 0x2db9
jmp near loc_000031b8  ; jmp 0x31b8

loc_00002e17:
sub ecx, edi
xor esi, esi
cmp dword [ebp - 0x20], 0
lea edx, [edi + 0xda0]
mov edi, ecx
je near loc_00002efa  ; je 0x2efa
cmp dword [ebp - 0x1c], 0x40670
jne near loc_00002efa  ; jne 0x2efa

loc_00002e3a:
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
call fcn_00018b68  ; call 0x18b68
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
call fcn_00018b68  ; call 0x18b68
mov edx, dword [ebp - 0x1c]
add esp, 0x10
add edx, 4
cmp esi, 4
jne near loc_00002e3a  ; jne 0x2e3a
jmp near loc_000031b8  ; jmp 0x31b8

loc_00002efa:
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
call fcn_00018b68  ; call 0x18b68
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
call fcn_00018b68  ; call 0x18b68
mov edx, dword [ebp - 0x1c]
add esp, 0x10
add edx, 4
cmp esi, 4
jne near loc_00002efa  ; jne 0x2efa
jmp near loc_000031b8  ; jmp 0x31b8

loc_00002fba:
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
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp esi, 4
mov ecx, dword [ebp - 0x28]
jne short loc_00002fba  ; jne 0x2fba
cmp dword [ebp - 0x20], 0
lea edi, [ecx + 0xda0]
je near loc_000030fa  ; je 0x30fa
cmp dword [ebp - 0x1c], 0x40670
jne near loc_000030fa  ; jne 0x30fa
mov eax, dword [ebp - 0x24]
xor si, si
sub eax, ecx
mov dword [ebp - 0x1c], eax

loc_00003041:
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
call fcn_00018b68  ; call 0x18b68
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
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp esi, 2
je near loc_000031b8  ; je 0x31b8
jmp near loc_00003041  ; jmp 0x3041

loc_000030fa:
mov eax, dword [ebp - 0x24]
xor esi, esi
sub eax, ecx
mov dword [ebp - 0x1c], eax

loc_00003104:
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
call fcn_00018b68  ; call 0x18b68
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
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp esi, 2
jne near loc_00003104  ; jne 0x3104

loc_000031b8:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000031c0:
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
call fcn_00002c37  ; call 0x2c37
add esp, 0x10
leave
ret

fcn_000031e5:
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

loc_00003207:
mov eax, dword [ebp - 0x14]
cmp dword [ebp - 0x10], eax
ja short loc_00003240  ; ja 0x3240
mov eax, edi

loc_00003211:
cmp eax, ecx
je short loc_00003238  ; je 0x3238
mov bl, byte [eax - 3]
cmp bl, byte [eax]
jbe short loc_00003233  ; jbe 0x3233
mov dx, word [eax]
mov si, word [eax - 2]
mov byte [eax], bl
mov word [eax - 3], dx
mov dl, byte [eax + 2]
mov word [eax + 1], si
mov byte [eax - 1], dl

loc_00003233:
sub eax, 3
jmp short loc_00003211  ; jmp 0x3211

loc_00003238:
inc dword [ebp - 0x10]
add ecx, 3
jmp short loc_00003207  ; jmp 0x3207

loc_00003240:
pop eax
pop edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00003247:
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

fcn_0000325d:
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
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 1
push dword [ebp + 0x14]
push 0
mov esi, eax
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 2
push dword [ebp + 0x14]
push 0
mov dword [ebp - 0xc88], eax
call fcn_00016c9a  ; call 0x16c9a
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
call fcn_00016fff  ; call 0x16fff
add esp, 0x10
cmp ebx, 2
je short loc_000032e9  ; je 0x32e9
cmp ebx, 1
setb byte [ebp - 0xc7a]
setb byte [ebp - 0xc79]
jmp short loc_000032f7  ; jmp 0x32f7

loc_000032e9:
mov byte [ebp - 0xc7a], 0
mov byte [ebp - 0xc79], 1

loc_000032f7:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00003311  ; je 0x3311
push ecx
push ecx
push ref_00021077  ; push 0x21077
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00003311:
push edx
push edx
lea eax, [esi + 0xb0]
push 0x10
push eax
mov dword [ebp - 0xc9c], eax
call fcn_00018927  ; call 0x18927
add esp, 0x10
cmp byte [ebp - 0xc79], 0
je short loc_0000334b  ; je 0x334b
push eax
push eax
mov eax, dword [ebp - 0xc88]
push 0x10
add eax, 0xb0
push eax
call fcn_00018927  ; call 0x18927
add esp, 0x10

loc_0000334b:
cmp byte [ebp - 0xc7a], 0
je short loc_0000336c  ; je 0x336c
mov eax, dword [ebp - 0xc8c]
push edi
push edi
push 0x10
add eax, 0xb0
push eax
call fcn_00018927  ; call 0x18927
add esp, 0x10

loc_0000336c:
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
call fcn_00018b14  ; call 0x18b14
add esp, 0x10
cmp byte [ebp - 0xc79], 0
je short loc_000033be  ; je 0x33be
mov eax, dword [ebp - 0xc88]
push edx
push edx
push 0xa800
add eax, 0xc20
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10

loc_000033be:
cmp byte [ebp - 0xc7a], 0
je short loc_000033e2  ; je 0x33e2
push eax
push eax
mov eax, dword [ebp - 0xc8c]
push 0xa800
add eax, 0xc20
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10

loc_000033e2:
mov dword [ebp - 0xc80], 0

loc_000033ec:
mov eax, dword [ebp - 0xc80]
mov ecx, 0x64
xor edx, edx
sub esp, 0xc
xor ebx, ebx
div ecx
push eax
call fcn_0001a831  ; call 0x1a831
add esp, 0x10

loc_00003409:
cmp ebx, dword [ebp + 0x18]
je short loc_00003438  ; je 0x3438
sub esp, 0xc
push 1
push 0x39
push ebx
push dword [ebp + 0x14]
push 0
call fcn_000029e2  ; call 0x29e2
add esp, 0x14
push 0xc
push 0x3a
push ebx
inc ebx
push dword [ebp + 0x14]
push 0
call fcn_000029e2  ; call 0x29e2
add esp, 0x20
jmp short loc_00003409  ; jmp 0x3409

loc_00003438:
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

loc_00003464:
mov eax, dword [ebp - 0xc84]
cmp eax, dword [ebp + 0x18]
je near loc_00003577  ; je 0x3577
imul eax, eax, 0xc6
mov edi, dword [ebp - 0xc90]
xor ebx, ebx
mov dword [ebp - 0xc94], eax

loc_00003487:
lea eax, [ebx + 0x31]
mov esi, 1
push eax
push dword [ebp - 0xc84]
push dword [ebp + 0x14]
push 0
call fcn_00002a60  ; call 0x2a60
movzx edx, word [edi + 1]
add esp, 0x10
and eax, 0x3f
mov byte [ebp - 0xc7b], al

loc_000034b0:
cmp esi, edx
ja short loc_000034da  ; ja 0x34da
lea eax, [esi + esi*2]
mov cl, byte [ebp - 0xc7b]
cmp byte [edi + eax], cl
jne short loc_000034d7  ; jne 0x34d7
imul edx, ebx, 0x21
add eax, dword [ebp - 0xc94]
add eax, edx
inc word [ebp + eax - 0xc77]
jmp short loc_00003555  ; jmp 0x3555

loc_000034d7:
inc esi
jmp short loc_000034b0  ; jmp 0x34b0

loc_000034da:
cmp esi, 0xb
jne short loc_0000352c  ; jne 0x352c
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000350d  ; je 0x350d
push eax
push 0xa
push dword [ebp - 0xc80]
push ebx
push dword [ebp - 0xc84]
push dword [ebp + 0x14]
push ref_000210a2  ; push 0x210a2
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_0000350d:
cmp dword [ebp + 0x18], 0x10
jne near loc_000036ff  ; jne 0x36ff
sub esp, 0xc
push 0xee

loc_0000351f:
call fcn_0001a831  ; call 0x1a831
add esp, 0x10
call fcn_00017239  ; call 0x17239

loc_0000352c:
imul eax, ebx, 0x21
lea esi, [esi + esi*2]
add esi, dword [ebp - 0xc94]
inc word [edi + 1]
add esi, eax
mov al, byte [ebp - 0xc7b]
mov word [ebp + esi - 0xc77], 1
mov byte [ebp + esi - 0xc78], al

loc_00003555:
inc ebx
add edi, 0x21
cmp ebx, 6
jne near loc_00003487  ; jne 0x3487
inc dword [ebp - 0xc84]
add dword [ebp - 0xc90], 0xc6
jmp near loc_00003464  ; jmp 0x3464

loc_00003577:
cmp dword [ebp - 0xc80], 0x64
jbe short loc_000035b4  ; jbe 0x35b4
lea ecx, [ebp - 0xc78]
xor edx, edx

loc_00003588:
cmp edx, dword [ebp + 0x18]
jne short loc_00003591  ; jne 0x3591

loc_0000358d:
xor edi, edi
jmp short loc_0000360b  ; jmp 0x360b

loc_00003591:
xor eax, eax

loc_00003593:
mov di, word [ecx + eax + 1]
lea ebx, [edi - 2]
cmp bx, 2
jbe short loc_000035b4  ; jbe 0x35b4
add eax, 0x21
cmp eax, 0xc6
jne short loc_00003593  ; jne 0x3593
inc edx
add ecx, 0xc6
jmp short loc_00003588  ; jmp 0x3588

loc_000035b4:
inc dword [ebp - 0xc80]
cmp dword [ebp - 0xc80], 0x1f4
jne near loc_000033ec  ; jne 0x33ec
jmp short loc_0000358d  ; jmp 0x358d

loc_000035cc:
imul eax, esi, 0x21
sub esp, 0xc
add eax, dword [ebp - 0xc80]
lea edx, [ebp - 0xc78]
lea ebx, [edx + eax]
push ebx
call fcn_000031e5  ; call 0x31e5
mov dword [esp], ebx
call fcn_00003247  ; call 0x3247
mov dword [esp], eax
lea eax, [esi + 0x31]
inc esi
push eax
push edi
push dword [ebp + 0x14]
push 0
call fcn_000029e2  ; call 0x29e2
add esp, 0x20
cmp esi, 6
jne short loc_000035cc  ; jne 0x35cc
inc edi

loc_0000360b:
cmp edi, dword [ebp + 0x18]
je short loc_00003620  ; je 0x3620
imul eax, edi, 0xc6
xor esi, esi
mov dword [ebp - 0xc80], eax
jmp short loc_000035cc  ; jmp 0x35cc

loc_00003620:
push eax
push eax
push 0
push dword [ebp - 0xca0]
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10
cmp byte [ebp - 0xc79], 0
je short loc_00003653  ; je 0x3653
push eax
push eax
mov eax, dword [ebp - 0xc88]
push 0
add eax, 0xc20
push eax
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10

loc_00003653:
cmp byte [ebp - 0xc7a], 0
je short loc_00003674  ; je 0x3674
push eax
push eax
mov eax, dword [ebp - 0xc8c]
push 0
add eax, 0xc20
push eax
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10

loc_00003674:
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
call fcn_00018954  ; call 0x18954
add esp, 0x10
cmp byte [ebp - 0xc79], 0
je short loc_000036bf  ; je 0x36bf
mov eax, dword [ebp - 0xc88]
push ecx
push ecx
push 0xffef
add eax, 0xb0
push eax
call fcn_00018954  ; call 0x18954
add esp, 0x10

loc_000036bf:
cmp byte [ebp - 0xc7a], 0
je short loc_000036e3  ; je 0x36e3
mov eax, dword [ebp - 0xc8c]
push edx
push edx
push 0xffef
add eax, 0xb0
push eax
call fcn_00018954  ; call 0x18954
add esp, 0x10

loc_000036e3:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000370c  ; je 0x370c
push eax
push eax
push ref_000210fe  ; push 0x210fe
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp short loc_0000370c  ; jmp 0x370c

loc_000036ff:
sub esp, 0xc
push 0xed
jmp near loc_0000351f  ; jmp 0x351f

loc_0000370c:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00003714:
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
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], eax
mov edi, eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
je short loc_0000377f  ; je 0x377f
sub esp, 0xc
add edi, 0x214
push edi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test ax, ax
je short loc_0000377f  ; je 0x377f
shr eax, 0x10
and eax, 0xf
cmp eax, 6
jbe short loc_0000377f  ; jbe 0x377f
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
call fcn_0000325d  ; call 0x325d
add esp, 0x20

loc_0000377f:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00003787:
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
call fcn_00019797  ; call 0x19797
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_000037e9  ; je 0x37e9
test ebx, ebx
jns short loc_000037e9  ; jns 0x37e9
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000037d1  ; je 0x37d1
push esi
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000037d1:
push ecx
push ref_000206f4  ; push 0x206f4
push 0x5bc
push ref_00020f0c  ; push 0x20f0c
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000037e9:
imul eax, dword [ebp + 0x1c], 7
add eax, dword [ebp + 0x18]
mov ebx, dword [ebp + 0x18]
mov byte [ebp - 0x29], 0
mov dword [ebp - 0x30], eax

loc_000037fa:
cmp ebx, dword [ebp - 0x30]
je near loc_000038a5  ; je 0x38a5
movzx eax, byte [ebx + 2]
push edx
push eax
mov byte [ebp - 0x34], al
movzx eax, byte [ebx + 1]
push eax
movzx eax, byte [ebx]
push eax
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], eax
mov esi, eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
je short loc_0000389d  ; je 0x389d
sub esp, 0xc
lea eax, [esi + 0x11a]
push eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test al, 2
je short loc_0000389d  ; je 0x389d
sub esp, 0xc
lea eax, [esi + 0xba]
push eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test al, 0x40
je short loc_0000389d  ; je 0x389d
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
call fcn_00018927  ; call 0x18927
pop eax
pop edx
push 0x200
push esi
call fcn_00018b14  ; call 0x18b14
mov edx, dword [ebp - 0x34]
pop ecx
pop esi
push 0xffef
push edx
call fcn_00018954  ; call 0x18954
add esp, 0x10

loc_0000389d:
add ebx, 7
jmp near loc_000037fa  ; jmp 0x37fa

loc_000038a5:
cmp byte [ebp - 0x29], 0
je near loc_000039cb  ; je 0x39cb
cmp dword [ebp - 0x1c], 0x11
jne short loc_000038bb  ; jne 0x38bb

loc_000038b5:
test edi, edi
jne short loc_000038ce  ; jne 0x38ce
jmp short loc_000038de  ; jmp 0x38de

loc_000038bb:
sub esp, 0xc
push 1
call fcn_0001c321  ; call 0x1c321
add esp, 0x10
dec al
jne short loc_000038de  ; jne 0x38de
jmp short loc_000038b5  ; jmp 0x38b5

loc_000038ce:
cmp byte [edi + 0x28], 0
je short loc_000038de  ; je 0x38de
cmp byte [edi + 0x46], 0
je short loc_000038de  ; je 0x38de
mov byte [edi + 0x46], 0

loc_000038de:
movzx esi, byte [ebp - 0x38]
sub esp, 0xc
push esi
push edi
push dword [ebp + 0xc]
push dword [ebp + 0x10]
push dword [ebp + 8]
call fcn_00002634  ; call 0x2634
movzx eax, byte [ebp - 0x29]
add esp, 0x20
mov ebx, dword [ebp + 0x18]
mov dword [ebp - 0x38], eax

loc_00003902:
cmp ebx, dword [ebp - 0x30]
je short loc_00003947  ; je 0x3947
mov al, byte [ebx]
movzx ecx, byte [ebx + 1]
mov byte [ebp - 0x29], al
mov al, byte [ebx + 2]
movzx edx, al
mov dword [ebp - 0x34], edx
mov edx, dword [ebp - 0x38]
bt edx, eax
jae short loc_00003942  ; jae 0x3942
push eax
movzx edx, byte [ebp - 0x29]
push dword [ebp - 0x34]
push ecx
push edx
call fcn_00016c9a  ; call 0x16c9a
pop edx
pop ecx
push 0x20
add eax, 0xb0
push eax
call fcn_00018927  ; call 0x18927
add esp, 0x10

loc_00003942:
add ebx, 7
jmp short loc_00003902  ; jmp 0x3902

loc_00003947:
cmp dword [ebp - 0x1c], 0x11
jne short loc_00003953  ; jne 0x3953

loc_0000394d:
test edi, edi
jne short loc_00003966  ; jne 0x3966
jmp short loc_00003976  ; jmp 0x3976

loc_00003953:
sub esp, 0xc
push 1
call fcn_0001c321  ; call 0x1c321
add esp, 0x10
dec al
jne short loc_00003976  ; jne 0x3976
jmp short loc_0000394d  ; jmp 0x394d

loc_00003966:
cmp byte [edi + 0x28], 0
je short loc_00003976  ; je 0x3976
cmp byte [edi + 0x46], 0
je short loc_00003976  ; je 0x3976
mov byte [edi + 0x46], 0

loc_00003976:
sub esp, 0xc
push esi
push edi
push dword [ebp + 0xc]
push dword [ebp + 0x10]
push dword [ebp + 8]
call fcn_00002634  ; call 0x2634
add esp, 0x20
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000039a6  ; je 0x39a6
push edx
push edx
push ref_00021128  ; push 0x21128
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000039a6:
mov ebx, dword [ebp + 0x18]

loc_000039a9:
cmp ebx, dword [ebp - 0x30]
je short loc_000039cb  ; je 0x39cb
push eax
movzx eax, byte [ebx + 2]
add ebx, 7
push eax
movzx eax, byte [ebx - 6]
push eax
movzx eax, byte [ebx - 7]
push eax
call fcn_0000241b  ; call 0x241b
add esp, 0x10
jmp short loc_000039a9  ; jmp 0x39a9

loc_000039cb:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000039d3:
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
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], eax
mov esi, eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
je near loc_00003b0b  ; je 0x3b0b
mov eax, dword [ebx + 0xd]
movzx ebx, byte [ebp - 0x20]
mov dl, byte [eax + ebx + 5]
test dl, dl
jne short loc_00003a6a  ; jne 0x3a6a
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00003a54  ; je 0x3a54
push ebx
push ebx
push ref_00021153  ; push 0x21153
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00003a54:
sub esp, 0xc
lea eax, [esi + 0xac]
push eax
call fcn_00017e4e  ; call 0x17e4e
mov ebx, eax
and ebx, 0xf
jmp short loc_00003a90  ; jmp 0x3a90

loc_00003a6a:
movzx ebx, dl
mov dword [ebp - 0x20], edx
call fcn_00015479  ; call 0x15479
mov edx, dword [ebp - 0x20]
test al, al
je short loc_00003a93  ; je 0x3a93
movzx edx, dl
push ecx
push edx
push ref_00021159  ; push 0x21159
push 0x80000000
call fcn_00015487  ; call 0x15487

loc_00003a90:
add esp, 0x10

loc_00003a93:
cmp byte [ebp - 0x24], 0
jne short loc_00003aa5  ; jne 0x3aa5
cmp bx, 2
mov eax, 2
cmova ebx, eax

loc_00003aa5:
call fcn_00015479  ; call 0x15479
movzx ebx, bx
test al, al
je short loc_00003acd  ; je 0x3acd
mov ecx, dword [ebp - 0x28]
movzx eax, byte [ebp - 0x19]
push ebx
push ecx
push edi
push eax
push ecx
push edi
push ref_0002116e  ; push 0x2116e
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_00003acd:
push eax
movzx eax, byte [ebp - 0x1a]
shl eax, 4
or eax, ebx
push eax
push 0xfffffc00
lea eax, [esi + 0xac]
add esi, 0xd0
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
mov dword [ebp + 0x10], ebx
mov dword [ebp + 8], esi
mov dword [ebp + 0xc], 0xfff0
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018981  ; jmp 0x18981

loc_00003b0b:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00003b13:
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
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 0x2020
push 0xffff0000
mov ebx, eax
lea eax, [eax + 0x22c]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0xc
push 0x20000000
push 0xdfffffff
lea eax, [ebx + 0x258]
push eax
call fcn_00018b68  ; call 0x18b68
lea eax, [ebx + 0x11a]
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test al, 2
jne short loc_00003ba1  ; jne 0x3ba1
push eax
push eax
push 0x20
lea eax, [ebx + 0xb0]
add ebx, 0xb2
push eax
call fcn_00018730  ; call 0x18730
add esp, 0x10

loc_00003b90:
sub esp, 0xc
push ebx
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test ah, 8
jne short loc_00003b90  ; jne 0x3b90

loc_00003ba1:
mov ebx, dword [ebp - 4]
leave
ret

fcn_00003ba6:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x20
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0x48
mov dword [esp], eax
call fcn_00017ed8  ; call 0x17ed8
mov ebx, eax
and ebx, 0xfffffffe
lea eax, [ebx + 0x7400]
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
mov dword [ebp - 0x1c], eax
lea eax, [ebx + 0x7404]
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
mov edi, eax
lea eax, [ebx + 0x7408]
add ebx, 0x740c
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
mov dword [esp], ebx
xor ebx, ebx
mov esi, eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
xor ecx, ecx

loc_00003c10:
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
jne short loc_00003c10  ; jne 0x3c10
cmp bl, 0x28
jbe short loc_00003c53  ; jbe 0x3c53
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00003c7e  ; je 0x3c7e
movzx ebx, bl
push ebx
push 0x28
push ref_0002119b  ; push 0x2119b
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp short loc_00003c7e  ; jmp 0x3c7e

loc_00003c53:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00003c7e  ; je 0x3c7e
mov al, 0x28
movzx edx, bl
sub eax, ebx
sub esp, 0xc
movzx eax, al
lea ecx, [edx + eax]
push ecx
push eax
push edx
push ref_000211e9  ; push 0x211e9
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_00003c7e:
xor ecx, ecx
xor eax, eax

loc_00003c82:
mov edx, esi
shr edx, cl
add ecx, 3
and edx, 7
add eax, edx
cmp ecx, 0x18
jne short loc_00003c82  ; jne 0x3c82
shr esi, 0x18
and esi, 0x3f
lea ebx, [eax + esi]
cmp bl, 0x47
jbe short loc_00003cc4  ; jbe 0x3cc4
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00003cef  ; je 0x3cef
movzx ebx, bl
push ebx
push 0x47
push ref_00021219  ; push 0x21219
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp short loc_00003cef  ; jmp 0x3cef

loc_00003cc4:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00003cef  ; je 0x3cef
mov al, 0x47
movzx edx, bl
sub eax, ebx
sub esp, 0xc
movzx eax, al
lea ecx, [edx + eax]
push ecx
push eax
push edx
push ref_00021267  ; push 0x21267
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_00003cef:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00003cf7:
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
call fcn_00016c9a  ; call 0x16c9a
add eax, 0x48
mov dword [esp], eax
call fcn_00017ed8  ; call 0x17ed8
mov ebx, eax
and ebx, 0xfffffffe
lea eax, [ebx + 0x7410]
mov dword [esp], eax
mov dword [ebp - 0x48], eax
call fcn_00017e4e  ; call 0x17e4e
mov edi, eax
lea eax, [ebx + 0x7418]
mov dword [esp], eax
mov dword [ebp - 0x5c], eax
call fcn_00017e4e  ; call 0x17e4e
mov esi, eax
lea eax, [ebx + 0x7454]
mov dword [esp], eax
mov dword [ebp - 0x60], eax
call fcn_00017e4e  ; call 0x17e4e
mov ebx, eax
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_00003d87  ; je 0x3d87
sub esp, 0xc
push ebx
push esi
push edi
push ref_00021297  ; push 0x21297
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_00003d87:
cmp byte [ebp - 0x3c], 0
mov word [ebp - 0x28], 0
jne short loc_00003dba  ; jne 0x3dba
push eax
push 0
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xb2
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
and eax, 0x3f0
shr eax, 4
mov dword [ebp - 0x28], eax

loc_00003dba:
cmp byte [ebp - 0x40], 0
mov word [ebp - 0x38], 0
jne short loc_00003ded  ; jne 0x3ded
push ecx
push 1
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xb2
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
and eax, 0x3f0
shr eax, 4
mov dword [ebp - 0x38], eax

loc_00003ded:
cmp byte [ebp - 0x44], 0
mov word [ebp - 0x58], 0
jne short loc_00003e20  ; jne 0x3e20
push edx
push 2
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xb2
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
and eax, 0x3f0
shr eax, 4
mov dword [ebp - 0x58], eax

loc_00003e20:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00003e42  ; je 0x3e42
movzx eax, word [ebp - 0x28]
push eax
movzx eax, byte [ebp - 0x3c]
push eax
push ref_000212c5  ; push 0x212c5
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00003e42:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00003e64  ; je 0x3e64
movzx eax, word [ebp - 0x38]
push eax
movzx eax, byte [ebp - 0x40]
push eax
push ref_000212eb  ; push 0x212eb
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00003e64:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00003e86  ; je 0x3e86
movzx eax, word [ebp - 0x58]
push eax
movzx eax, byte [ebp - 0x44]
push eax
push ref_00021311  ; push 0x21311
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00003e86:
mov al, byte [ebp - 0x40]
or al, byte [ebp - 0x3c]
jne short loc_00003ed2  ; jne 0x3ed2
cmp word [ebp - 0x28], 8
jne short loc_00003ed2  ; jne 0x3ed2
cmp word [ebp - 0x38], 8
jne short loc_00003ed2  ; jne 0x3ed2
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

loc_00003ed2:
cmp word [ebp - 0x58], 4
jne near loc_00003f69  ; jne 0x3f69
cmp byte [ebp - 0x44], 0
jne near loc_00003f69  ; jne 0x3f69
cmp word [ebp - 0x28], 4
jne short loc_00003f2a  ; jne 0x3f2a
cmp byte [ebp - 0x3c], 0
jne short loc_00003f2a  ; jne 0x3f2a
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

loc_00003f2a:
cmp word [ebp - 0x38], 4
jne short loc_00003f69  ; jne 0x3f69
cmp byte [ebp - 0x40], 0
jne short loc_00003f69  ; jne 0x3f69
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

loc_00003f69:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00003f87  ; je 0x3f87
sub esp, 0xc
push ebx
push esi
push edi
push ref_00021337  ; push 0x21337
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_00003f87:
push eax
push edi
push 0xfe000000
push dword [ebp - 0x48]
call fcn_00018b68  ; call 0x18b68
add esp, 0xc
push esi
push 0xfe000000
push dword [ebp - 0x5c]
call fcn_00018b68  ; call 0x18b68
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
jmp near fcn_00018b68  ; jmp 0x18b68

fcn_00003fc6:
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
call fcn_0001c651  ; call 0x1c651
movzx ebx, bl
mov edi, eax
push eax
mov eax, esi
movzx eax, al
push eax
movzx eax, byte [ebp - 0x1c]
push eax
push ebx
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 0x1f
push 0xfffffeff
mov ebx, eax
lea eax, [eax + 0x224]
push eax
call fcn_00018b68  ; call 0x18b68
mov eax, esi
add esp, 0x10
test al, al
jne short loc_0000401e  ; jne 0x401e
cmp byte [ebp - 0x1c], 1
je short loc_00004030  ; je 0x4030

loc_0000401e:
cmp edi, 0x40660
je short loc_0000406e  ; je 0x406e
cmp edi, 0x306c0
jne short loc_00004082  ; jne 0x4082
jmp short loc_0000406e  ; jmp 0x406e

loc_00004030:
push eax
push 0
push 0xefffffff
lea eax, [ebx + 0x490]
push eax
call fcn_00018b68  ; call 0x18b68
lea eax, [ebx + 0xa18]
add esp, 0x10
lea esi, [ebx + 0x918]
mov dword [ebp - 0x1c], eax

loc_00004056:
push eax
push 0
push 0xfffffffffffffff3
push esi
add esi, 0x20
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp esi, dword [ebp - 0x1c]
jne short loc_00004056  ; jne 0x4056
jmp short loc_0000401e  ; jmp 0x401e

loc_0000406e:
push eax
push 0x10
push 0xffffffffffffffef
lea eax, [ebx + 0xd14]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_00004082:
sub esp, 0xc
lea esi, [ebx + 0x308]
push esi
call fcn_00017e4e  ; call 0x17e4e
pop edx
pop ecx
push eax
push esi
lea esi, [ebx + 0x314]
call fcn_00017e8f  ; call 0x17e8f
mov dword [esp], esi
call fcn_00017e4e  ; call 0x17e4e
pop edi
pop edx
push eax
push esi
lea esi, [ebx + 0x32c]
add ebx, 0x330
call fcn_00017e8f  ; call 0x17e8f
mov dword [esp], esi
call fcn_00017e4e  ; call 0x17e4e
pop ecx
pop edi
push eax
push esi
call fcn_00017e8f  ; call 0x17e8f
mov dword [esp], ebx
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017e8f  ; jmp 0x17e8f

fcn_000040eb:
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

loc_00004120:
push ecx
push ecx
push dword [ebp + 0x14]
push dword [ebp - 0x20]
call fcn_00017e8f  ; call 0x17e8f
pop eax
pop edx
push ebx
push edi
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10
mov edx, 0x64

loc_0000413e:
sub esp, 0xc
push edi
mov dword [ebp - 0x24], edx
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test eax, eax
jns short loc_0000417a  ; jns 0x417a
mov edx, dword [ebp - 0x24]
dec edx
jne short loc_0000413e  ; jne 0x413e
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000417a  ; je 0x417a
push edx
push edx
push dword [ebp + 0x14]
push dword [ebp + 0xc]
push esi
push 0x64
push ref_00021364  ; push 0x21364
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_0000417a:
sub esp, 0xc
push edi
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
mov edx, eax
cmp ax, 0x40
je short loc_000041c2  ; je 0x41c2
dec dword [ebp - 0x1c]
jne short loc_00004120  ; jne 0x4120
mov dword [ebp - 0x1c], edx
call fcn_00015479  ; call 0x15479
mov edx, dword [ebp - 0x1c]
test al, al
je short loc_000041c2  ; je 0x41c2
movzx edx, dx
push eax
push edx
push dword [ebp + 0x14]
push dword [ebp + 0xc]
push esi
push 0xa
push ref_000213b1  ; push 0x213b1
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_000041c2:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000041ca:
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
jbe short loc_000041f7  ; jbe 0x41f7
add ebx, 4
jmp short loc_000041fa  ; jmp 0x41fa

loc_000041f7:
add ebx, 2

loc_000041fa:
push ebx
cmp al, 1
push 0
sbb esi, esi
push 2
add esi, 8
push edi
mov dword [ebp - 0x1c], edx
call fcn_000040eb  ; call 0x40eb
mov edx, dword [ebp - 0x1c]
push dword [ebp + 0xc]
movzx edx, dx
push 0
push edx
push edi
call fcn_000040eb  ; call 0x40eb
add esp, 0x20
push dword [ebp + 0x14]
push 0
push esi
push edi
call fcn_000040eb  ; call 0x40eb
lea eax, [edi + 0x6c04]
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
push ebx
push 0
push 3
push edi
mov dword [ebp - 0x1c], eax
call fcn_000040eb  ; call 0x40eb
mov eax, dword [ebp - 0x1c]
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00004257:
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
call fcn_0001c651  ; call 0x1c651
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

loc_00004294:
test ebx, ebx
je short loc_000042a8  ; je 0x42a8
push eax
mov eax, esi
shl eax, 4
add eax, dword [ebp - 0x24]
push 0xc
push 0xffffffffffffffe0
push eax
jmp short loc_000042c8  ; jmp 0x42c8

loc_000042a8:
push eax
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
lea edx, [esi + 0xa0]
push 0xc
shl edx, 4
push 0xffffffffffffffe0
add edx, eax
push edx

loc_000042c8:
inc esi
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp esi, edi
jb short loc_00004294  ; jb 0x4294
test ebx, ebx
jne near loc_00004365  ; jne 0x4365
cmp byte [ebp - 0x28], 1
mov edi, 2
mov eax, 0xc
cmove edi, eax
xor esi, esi

loc_000042f0:
push eax
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
mov edx, esi
push edi
inc esi
shl edx, 5
push 0xffffffffffffffe0
lea eax, [eax + edx + 0x904]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp esi, dword [ebp - 0x1c]
jb short loc_000042f0  ; jb 0x42f0
cmp byte [ebp - 0x28], 1
mov edi, 3
mov eax, 0xe
cmove edi, eax
xor esi, esi
shl edi, 5

loc_00004334:
push eax
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
mov edx, esi
push edi
inc esi
shl edx, 5
push 0xfffffc1f
lea eax, [eax + edx + 0x904]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp esi, dword [ebp - 0x1c]
jb short loc_00004334  ; jb 0x4334

loc_00004365:
xor esi, esi
lea edi, [ebx + 0x90c]

loc_0000436d:
test ebx, ebx
je short loc_00004385  ; je 0x4385
mov eax, esi
push ecx
push 0x120
shl eax, 5
push 0xfffff81f
add eax, edi
jmp short loc_000043ab  ; jmp 0x43ab

loc_00004385:
push edx
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
mov edx, esi
push 0x120
shl edx, 5
push 0xfffff81f
lea eax, [eax + edx + 0x90c]

loc_000043ab:
push eax
inc esi
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp esi, dword [ebp - 0x1c]
jb short loc_0000436d  ; jb 0x436d
test ebx, ebx
jne near loc_00004444  ; jne 0x4444
xor esi, esi

loc_000043c4:
push eax
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
mov edx, esi
push 0xa00000
inc esi
shl edx, 5
push 0xfe1fffff
lea eax, [eax + edx + 0x90c]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp esi, dword [ebp - 0x1c]
jb short loc_000043c4  ; jb 0x43c4
xor esi, esi

loc_000043fb:
mov eax, dword [ebp + 8]
mov edi, 0x200
cmp byte [eax], 2
jbe short loc_00004413  ; jbe 0x4413
mov eax, dword [eax + 0xd]
movzx edi, byte [eax + esi + 0x54]
shl edi, 6

loc_00004413:
push eax
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
mov edx, esi
push edi
inc esi
shl edx, 5
push 0xfffffc3f
lea eax, [eax + edx + 0x910]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp esi, dword [ebp - 0x1c]
jb short loc_000043fb  ; jb 0x43fb

loc_00004444:
xor esi, esi
lea edi, [ebx + 0x910]
jmp short loc_00004480  ; jmp 0x4480

loc_0000444e:
push eax
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
mov edx, esi
push 0
shl edx, 5
push 0xffffc3ff
lea eax, [eax + edx + 0x910]

loc_00004471:
push eax
inc esi
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp esi, dword [ebp - 0x1c]
jae short loc_00004495  ; jae 0x4495

loc_00004480:
test ebx, ebx
je short loc_0000444e  ; je 0x444e
push eax
mov eax, esi
push 0
shl eax, 5
push 0xffffc3ff
add eax, edi
jmp short loc_00004471  ; jmp 0x4471

loc_00004495:
mov eax, dword [ebp - 0x20]
cmp eax, 0x40660
sete dl
cmp eax, 0x306c0
sete al
or dl, al
mov byte [ebp - 0x24], dl
je short loc_00004503  ; je 0x4503
xor esi, esi
lea edi, [ebx + 0x80c]

loc_000044b7:
test ebx, ebx
je short loc_000044cc  ; je 0x44cc
push eax
mov eax, esi
push 0
shl eax, 5
push 0xffe3ffff
add eax, edi
jmp short loc_000044ef  ; jmp 0x44ef

loc_000044cc:
push eax
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
mov edx, esi
push 0
shl edx, 5
push 0xffe3ffff
lea eax, [eax + edx + 0x80c]

loc_000044ef:
push eax
inc esi
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp esi, dword [ebp - 0x1c]
jb short loc_000044b7  ; jb 0x44b7
jmp near loc_000045df  ; jmp 0x45df

loc_00004503:
cmp dword [ebp - 0x20], 0x40670
jne near loc_000045ec  ; jne 0x45ec
push ecx
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 2
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 0x10
je short loc_00004565  ; je 0x4565

loc_0000452e:
test ebx, ebx
je near loc_0000461d  ; je 0x461d
cmp byte [ebp - 0x28], 1
mov edx, 0x1c000000
mov eax, 0x6000000
cmove eax, edx
push edx
push eax
push 0xc1ffffff
lea eax, [ebx + 0xc00]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp byte [ebp - 0x24], 0
je short loc_0000456d  ; je 0x456d
jmp short loc_0000458b  ; jmp 0x458b

loc_00004565:
test ebx, ebx
je near loc_000048c0  ; je 0x48c0

loc_0000456d:
push eax
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 2
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 0x10
je short loc_000045a8  ; je 0x45a8

loc_0000458b:
push eax
push 0x40
push 0xfffffc0f
lea eax, [ebx + 0xc08]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp byte [ebp - 0x24], 0
jne short loc_000045c6  ; jne 0x45c6

loc_000045a8:
push edi
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 2
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 0x10
je short loc_000045f4  ; je 0x45f4

loc_000045c6:
push esi
push 0
push 0xe07fffff
lea eax, [ebx + 0xc0c]
push eax
call fcn_00018b68  ; call 0x18b68

loc_000045da:
add esp, 0x10
jmp short loc_0000461d  ; jmp 0x461d

loc_000045df:
cmp dword [ebp - 0x20], 0x40670
je near loc_0000452e  ; je 0x452e

loc_000045ec:
test ebx, ebx
je near loc_000048c0  ; je 0x48c0

loc_000045f4:
push 0
push 0x15
push 0xc0c8001
push dword [ebp + 0xc]
call fcn_000041ca  ; call 0x41ca
and eax, 0xe07fffff
push eax
push 0x16
push 0xc0c8001
push dword [ebp + 0xc]
call fcn_000041ca  ; call 0x41ca
add esp, 0x20

loc_0000461d:
cmp byte [ebp - 0x24], 0
je short loc_00004664  ; je 0x4664
test ebx, ebx
je short loc_00004640  ; je 0x4640
push ecx
push 0x13
push 0xffffffffffffffe0
lea eax, [ebx + 0xc28]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
jmp near loc_0000473e  ; jmp 0x473e

loc_00004640:
push edx
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 0x13
push 0xffffffffffffffe0
add eax, 0xc28
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
jmp short loc_0000466c  ; jmp 0x466c

loc_00004664:
test ebx, ebx
jne near loc_0000473e  ; jne 0x473e

loc_0000466c:
push eax
push 0
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 0
push 0xffbf
add eax, 0xc38
push eax
call fcn_00018981  ; call 0x18981
add esp, 0xc
push 1
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 0
push 0xffbf
add eax, 0xc38
push eax
call fcn_00018981  ; call 0x18981
add esp, 0xc
push 2
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 0
push 0xffbf
add eax, 0xc38
push eax
call fcn_00018981  ; call 0x18981
add esp, 0xc
push 0
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 2
push 0xfffc
add eax, 0x260
push eax
call fcn_00018981  ; call 0x18981
add esp, 0xc
push 1
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 2
push 0xfffc
add eax, 0x260
push eax
call fcn_00018981  ; call 0x18981
add esp, 0xc
push 2
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 2
push 0xfffc
add eax, 0x260
push eax
call fcn_00018981  ; call 0x18981
jmp short loc_00004762  ; jmp 0x4762

loc_0000473e:
push eax
push 0
push 0xffffffffffffffbf
lea eax, [ebx + 0xc38]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0xc
push 2
push 0xfffffffffffffffc
lea eax, [ebx + 0x260]
push eax
call fcn_00018b68  ; call 0x18b68

loc_00004762:
add esp, 0x10
xor esi, esi
lea edi, [ebx + 0x900]

loc_0000476d:
test ebx, ebx
je short loc_00004783  ; je 0x4783
push eax
mov eax, esi
push 0
shl eax, 5
push 0xf3ffffff
add eax, edi
push eax
jmp short loc_000047a3  ; jmp 0x47a3

loc_00004783:
push eax
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
lea edx, [esi + 0x48]
push 0
shl edx, 5
push 0xf3ffffff
add edx, eax
push edx

loc_000047a3:
call fcn_00018b68  ; call 0x18b68
inc esi
add esp, 0x10
cmp esi, dword [ebp - 0x1c]
jb short loc_0000476d  ; jb 0x476d
xor esi, esi
lea edi, [ebx + 0x904]

loc_000047b9:
test ebx, ebx
je short loc_000047d1  ; je 0x47d1
push eax
mov eax, esi
push 0xc00
shl eax, 5
push 0xfffff3ff
add eax, edi
jmp short loc_000047f7  ; jmp 0x47f7

loc_000047d1:
push eax
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
mov edx, esi
push 0xc00
shl edx, 5
push 0xfffff3ff
lea eax, [eax + edx + 0x904]

loc_000047f7:
push eax
inc esi
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp esi, dword [ebp - 0x1c]
jb short loc_000047b9  ; jb 0x47b9
test ebx, ebx
jne near loc_00004902  ; jne 0x4902

loc_0000480e:
push esi
push 0
push dword [ebp + 0x14]
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
mov edx, ebx
push 0xe000000
inc ebx
shl edx, 5
push 0xc1ffffff
lea eax, [eax + edx + 0x90c]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp ebx, dword [ebp - 0x1c]
jb short loc_0000480e  ; jb 0x480e
cmp dword [ebp - 0x20], 0x40670
jne short loc_00004870  ; jne 0x4870
cmp byte [ebp - 0x24], 0
jne short loc_00004877  ; jne 0x4877
push ecx
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 2
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 0x10
jne short loc_00004877  ; jne 0x4877

loc_00004870:
xor esi, esi
or ebx, 0xffffffff
jmp short loc_00004881  ; jmp 0x4881

loc_00004877:
mov esi, 0x124
mov ebx, 0xfffffedb

loc_00004881:
push edx
and ebx, 0xc7ffffff
push 0
or esi, 0x28000000
push 1
xor edi, edi
push 0
mov dword [ebp - 0x20], ebx
call fcn_00016c9a  ; call 0x16c9a
add esp, 0x10
lea ebx, [eax + 0x91c]

loc_000048a7:
push eax
inc edi
push esi
push dword [ebp - 0x20]
push ebx
add ebx, 0x20
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp edi, dword [ebp - 0x1c]
jb short loc_000048a7  ; jb 0x48a7
jmp short loc_00004902  ; jmp 0x4902

loc_000048c0:
push 0
push 0x15
push 0xc008001
push dword [ebp + 0xc]
call fcn_000041ca  ; call 0x41ca
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
call fcn_000041ca  ; call 0x41ca
jmp near loc_000045da  ; jmp 0x45da

loc_00004902:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000490a:
push ebp
mov ebp, esp
push esi
push ebx
sub esp, 0x10
mov eax, dword [ebp + 0x10]
mov ebx, dword [ebp + 0xc]
mov dword [ebp - 0xc], eax
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00004935  ; je 0x4935
push edx
push edx
push ref_0002141a  ; push 0x2141a
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00004935:
test bl, bl
jne short loc_00004949  ; jne 0x4949
cmp byte [ebp - 0xc], 3
sete al
lea esi, [eax*4 + 4]
jmp short loc_0000496b  ; jmp 0x496b

loc_00004949:
cmp bl, 1
jne short loc_00004964  ; jne 0x4964
cmp byte [ebp - 0xc], 2
mov esi, 4
je short loc_0000496b  ; je 0x496b

loc_00004959:
cmp byte [ebp - 0xc], 1
sbb esi, esi
and esi, 2
jmp short loc_0000496b  ; jmp 0x496b

loc_00004964:
cmp bl, 2
je short loc_00004959  ; je 0x4959
xor esi, esi

loc_0000496b:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000498a  ; je 0x498a
push eax
mov eax, esi
movzx eax, al
push eax
push ref_00021436  ; push 0x21436
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000498a:
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_00004993:
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
call fcn_00016c9a  ; call 0x16c9a
mov esi, eax
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_000049d7  ; je 0x49d7
push eax
push eax
push ref_0002144e  ; push 0x2144e
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000049d7:
test bl, bl
jne short loc_00004a02  ; jne 0x4a02
call fcn_00015479  ; call 0x15479
test al, al
je near loc_00004b00  ; je 0x4b00
mov dword [ebp + 0xc], ref_00021472  ; mov dword [ebp + 0xc], 0x21472
mov dword [ebp + 8], 0x40
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00015487  ; jmp 0x15487

loc_00004a02:
sub esp, 0xc
lea eax, [esi + 0xd0c]
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
xor ecx, ecx
test eax, 0x100000
je short loc_00004a3f  ; je 0x4a3f
call fcn_00015479  ; call 0x15479
mov cl, 1
test al, al
je short loc_00004a3f  ; je 0x4a3f
push eax
push eax
push ref_00021493  ; push 0x21493
push 0x40
mov dword [ebp - 0x24], ecx
call fcn_00015487  ; call 0x15487
mov ecx, dword [ebp - 0x24]
add esp, 0x10

loc_00004a3f:
cmp byte [ebp - 0x1c], 0
jne short loc_00004a62  ; jne 0x4a62
cmp byte [ebp - 0x20], 3
jne short loc_00004a55  ; jne 0x4a55
xor edx, edx

loc_00004a4d:
test cl, cl
jne short loc_00004a98  ; jne 0x4a98

loc_00004a51:
mov dl, 8
jmp short loc_00004a86  ; jmp 0x4a86

loc_00004a55:
mov dl, 4
mov al, dl
sub eax, ebx
test cl, cl
cmove edx, eax
jmp short loc_00004a98  ; jmp 0x4a98

loc_00004a62:
cmp byte [ebp - 0x1c], 1
jne short loc_00004a8a  ; jne 0x4a8a
cmp byte [ebp - 0x20], 2
jne short loc_00004a76  ; jne 0x4a76
xor edx, edx
test cl, cl
jne short loc_00004a98  ; jne 0x4a98
jmp short loc_00004a51  ; jmp 0x4a51

loc_00004a76:
xor edx, edx
cmp byte [ebp - 0x20], 0
jne short loc_00004a98  ; jne 0x4a98
mov dl, 2
test cl, cl
jne short loc_00004a98  ; jne 0x4a98
mov dl, 6

loc_00004a86:
sub edx, ebx
jmp short loc_00004a98  ; jmp 0x4a98

loc_00004a8a:
xor edx, edx
cmp byte [ebp - 0x1c], 2
jne short loc_00004a98  ; jne 0x4a98
cmp byte [ebp - 0x20], 0
je short loc_00004a4d  ; je 0x4a4d

loc_00004a98:
mov dword [ebp - 0x20], edx
call fcn_00015479  ; call 0x15479
mov edx, dword [ebp - 0x20]
test al, al
je short loc_00004ace  ; je 0x4ace
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
push ref_000214ac  ; push 0x214ac
push 0x40
call fcn_00015487  ; call 0x15487
mov edx, dword [ebp - 0x20]
add esp, 0x20

loc_00004ace:
xor ebx, ebx
add esi, 0x91c

loc_00004ad6:
lea eax, [edx + ebx]
mov ecx, edi
inc ebx
cmp cl, bl
jb short loc_00004b00  ; jb 0x4b00
mov dword [ebp - 0x1c], edx
movzx eax, al
push edx
push edx
shl eax, 5
push 0x80000000
add eax, esi
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10
mov edx, dword [ebp - 0x1c]
jmp short loc_00004ad6  ; jmp 0x4ad6

loc_00004b00:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00004b08:
push ebp
mov ecx, 0x15
mov ebp, esp
push edi
push esi
mov esi, ref_000203b0  ; mov esi, 0x203b0
push ebx
add esp, 0xffffff80
lea edi, [ebp - 0x2d]
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 0
push 1
push 0
mov edi, eax
mov dword [ebp - 0x78], eax
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 1
push 1
push 0
mov ebx, eax
mov dword [ebp - 0x40], eax
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 2
push 1
push 0
mov dword [ebp - 0x50], eax
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 0
push 0
push 1
mov dword [ebp - 0x54], eax
call fcn_00016c9a  ; call 0x16c9a
mov dword [ebp - 0x64], eax
lea eax, [edi + 0x48]
mov dword [esp], eax
call fcn_00017ed8  ; call 0x17ed8
mov esi, eax
lea eax, [edi + 0x68]
mov dword [esp], eax
call fcn_00017ed8  ; call 0x17ed8
mov eax, dword [ebp + 0xc]
mov byte [ebp - 0x38], 0
mov eax, dword [eax + 0xd]
mov cl, byte [eax + 0x40]
mov dword [esp], ebx
mov byte [ebp - 0x4a], cl
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
jne short loc_00004bcd  ; jne 0x4bcd
call fcn_00015479  ; call 0x15479
test al, al
je near loc_00005d48  ; je 0x5d48
push eax
push eax
push ref_000214c7  ; push 0x214c7
push 0x40
call fcn_00015487  ; call 0x15487
jmp near loc_00005d01  ; jmp 0x5d01

loc_00004bcd:
push eax
push 0
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0x504
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
shr eax, 0x10
and eax, 3
mov byte [ebp - 0x48], al
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_00004c10  ; je 0x4c10
push eax
movzx eax, byte [ebp - 0x48]
push eax
push ref_000214e4  ; push 0x214e4
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00004c10:
lea eax, [ebp - 0x34]
push eax
push 0
push 0
push ref_000290cc  ; push 0x290cc
call fcn_0001975d  ; call 0x1975d
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00004c69  ; je 0x4c69
test ebx, ebx
jns short loc_00004c69  ; jns 0x4c69
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00004c51  ; je 0x4c51
push edi
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00004c51:
push ebx
push ref_000206f4  ; push 0x206f4
push 0x67c
push ref_00020f0c  ; push 0x20f0c
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00004c69:
mov al, byte [ebp - 0x48]
test al, al
je short loc_00004c7a  ; je 0x4c7a
cmp al, 2
jne short loc_00004c82  ; jne 0x4c82
mov byte [ebp - 0x28], 8
jmp short loc_00004c82  ; jmp 0x4c82

loc_00004c7a:
mov byte [ebp - 0x28], 8
mov byte [ebp - 0x21], 4

loc_00004c82:
call fcn_0001c651  ; call 0x1c651
mov ebx, 1
mov dword [ebp - 0x58], eax
call fcn_0001c678  ; call 0x1c678
push ecx
push 0
push 0
push 0
mov dword [ebp - 0x44], eax
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xe8
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test eax, 0x100000
je short loc_00004cd6  ; je 0x4cd6
call fcn_00015479  ; call 0x15479
xor ebx, ebx
test al, al
je short loc_00004cd6  ; je 0x4cd6
push edx
push edx
push ref_000214fb  ; push 0x214fb
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00004cd6:
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp byte [eax + 0x3b], 2
jne short loc_00004ce6  ; jne 0x4ce6
mov byte [eax + 0x3b], 1

loc_00004ce6:
mov eax, dword [ebp + 0xc]
cmp byte [eax], 1
ja short loc_00004cfa  ; ja 0x4cfa

loc_00004cee:
mov dword [ebp - 0x3c], 0
jmp near loc_00004dc3  ; jmp 0x4dc3

loc_00004cfa:
sub esp, 0xc
push ref_0002955c  ; push 0x2955c
call fcn_000190fd  ; call 0x190fd
add esp, 0x10
mov dword [ebp - 0x3c], eax
test eax, eax
je short loc_00004cee  ; je 0x4cee
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp dword [eax + 0x44], 0
jne short loc_00004d31  ; jne 0x4d31

loc_00004d1d:
mov eax, dword [ebp + 0xc]
mov ecx, dword [ebp - 0x3c]
mov eax, dword [eax + 0xd]
mov al, byte [eax + 0x3b]
mov byte [ecx + 0x45], al
jmp near loc_00004dc3  ; jmp 0x4dc3

loc_00004d31:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00004d4c  ; je 0x4d4c
push eax
push 0x21
push ref_0002150f  ; push 0x2150f
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00004d4c:
push eax
mov eax, dword [ebp + 0xc]
push 0x21
mov edi, dword [ebp - 0x3c]
mov eax, dword [eax + 0xd]
push dword [eax + 0x44]
mov eax, edi
add eax, 0x29
push eax
call fcn_0001713e  ; call 0x1713e
mov eax, dword [ebp + 0xc]
add esp, 0x10
mov byte [edi + 0x28], 1
mov eax, dword [eax + 0xd]
mov al, byte [eax + 0x3b]
cmp byte [edi + 0x45], al
je short loc_00004d1d  ; je 0x4d1d
dec al
je short loc_00004d1d  ; je 0x4d1d
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00004d99  ; je 0x4d99
push eax
push eax
push ref_00021541  ; push 0x21541
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00004d99:
xor eax, eax

loc_00004d9b:
mov ecx, dword [ebp - 0x3c]
xor edx, edx
mov dword [ecx + eax + 0x29], 0

loc_00004da8:
mov ecx, dword [ebp - 0x3c]
mov byte [ecx + edx + 0x35], 0
inc edx
cmp edx, 0x10
jne short loc_00004da8  ; jne 0x4da8
add eax, 4
cmp eax, 0xc
jne short loc_00004d9b  ; jne 0x4d9b
jmp near loc_00004d1d  ; jmp 0x4d1d

loc_00004dc3:
lea edi, [ebp - 0x2d]

loc_00004dc6:
push dword [ebp + 0xc]
add edi, 7
movzx eax, byte [edi - 5]
push eax
movzx eax, byte [edi - 6]
push eax
movzx eax, byte [edi - 7]
push eax
call fcn_00003fc6  ; call 0x3fc6
lea eax, [ebp - 0x18]
add esp, 0x10
cmp edi, eax
jne short loc_00004dc6  ; jne 0x4dc6
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00004e04  ; je 0x4e04
push eax
push eax
push ref_0002157a  ; push 0x2157a
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00004e04:
movzx eax, byte [ebp - 0x4a]
sub esp, 0xc
and esi, 0xfffffffe
push eax
push 1
push 0
push esi
push dword [ebp + 0xc]
call fcn_00004257  ; call 0x4257
add esp, 0x20
cmp bl, 1
jne short loc_00004e60  ; jne 0x4e60
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp byte [eax + 8], 0
je short loc_00004e60  ; je 0x4e60
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00004e4a  ; je 0x4e4a
push eax
push eax
push ref_00021589  ; push 0x21589
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00004e4a:
push eax
movzx eax, byte [ebp - 0x48]
push eax
movzx eax, byte [ebp - 0x44]
push eax
push dword [ebp + 0xc]
call fcn_000031c0  ; call 0x31c0
add esp, 0x10

loc_00004e60:
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp byte [eax + 0x39], 2
jne short loc_00004e70  ; jne 0x4e70
mov byte [eax + 0x39], 0

loc_00004e70:
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp byte [eax + 0x39], 1
jne near loc_00004f0a  ; jne 0x4f0a
mov eax, dword [ebp - 0x40]
sub esp, 0xc
lea edx, [eax + 0xd0]
push edx
mov dword [ebp - 0x60], edx
call fcn_00017dc2  ; call 0x17dc2
mov word [ebp - 0x4a], ax
mov eax, dword [ebp - 0x50]
and word [ebp - 0x4a], 0xf
lea edi, [eax + 0xd0]
mov dword [esp], edi
call fcn_00017dc2  ; call 0x17dc2
mov word [ebp - 0x4c], ax
mov eax, dword [ebp - 0x54]
and word [ebp - 0x4c], 0xf
lea esi, [eax + 0xd0]
mov dword [esp], esi
call fcn_00017dc2  ; call 0x17dc2
mov edx, dword [ebp - 0x60]
add esp, 0xc
push 1
push 0xfff0
push edx
mov word [ebp - 0x5a], ax
and word [ebp - 0x5a], 0xf
call fcn_00018981  ; call 0x18981
add esp, 0xc
push 1
push 0xfff0
push edi
call fcn_00018981  ; call 0x18981
add esp, 0xc
push 1
push 0xfff0
push esi
call fcn_00018981  ; call 0x18981
add esp, 0x10
jmp short loc_00004f1c  ; jmp 0x4f1c

loc_00004f0a:
mov word [ebp - 0x5a], 0
mov word [ebp - 0x4c], 0
mov word [ebp - 0x4a], 0

loc_00004f1c:
movzx eax, byte [ebp - 0x44]
xor esi, esi
mov dword [ebp - 0x6c], eax

loc_00004f25:
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
call fcn_000039d3  ; call 0x39d3
add esp, 0x20
cmp esi, 3
jne short loc_00004f25  ; jne 0x4f25
mov eax, dword [ebp + 0xc]
cmp byte [eax], 2
ja near loc_00005003  ; ja 0x5003

loc_00004f52:
mov esi, dword [ebp - 0x40]
sub esp, 0xc
mov eax, esi
add eax, 0xdd8
push eax
mov edi, eax
mov dword [ebp - 0x60], eax
call fcn_00017e4e  ; call 0x17e4e
pop ecx
pop ebx
or eax, 0x8002
push eax
push edi
call fcn_00017e8f  ; call 0x17e8f
pop edi
pop eax
mov eax, esi
add eax, 0xc24
push 0xfffeffff
push eax
call fcn_00018b3e  ; call 0x18b3e
pop eax
mov eax, dword [ebp - 0x50]
pop edx
add eax, 0xc24
push 0xfffeffff
push eax
call fcn_00018b3e  ; call 0x18b3e
mov eax, dword [ebp - 0x54]
pop ecx
pop ebx
lea ebx, [ebp - 0x2d]
add eax, 0xc24
push 0xfffeffff
push eax
call fcn_00018b3e  ; call 0x18b3e
movzx eax, byte [ebp - 0x48]
mov esi, dword [ebp - 0x3c]
mov dword [esp], eax
mov edi, eax
push esi
push dword [ebp + 0xc]
push dword [ebp - 0x34]
push dword [ebp + 8]
mov dword [ebp - 0x68], eax
call fcn_00002634  ; call 0x2634
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
call fcn_00003787  ; call 0x3787
mov eax, dword [ebp - 0x64]
add esp, 0x20
add eax, 0xc
mov dword [ebp - 0x70], eax
jmp near loc_0000509a  ; jmp 0x509a

loc_00005003:
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp byte [eax + 0x52], 1
jne near loc_00004f52  ; jne 0x4f52
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
call fcn_00018b68  ; call 0x18b68
lea esi, [edi + 0xa00]
add esp, 0x10

loc_0000503e:
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp bl, byte [eax + 0x53]
jne short loc_00005058  ; jne 0x5058
push eax
push eax
push 0xfffffdff
push esi
call fcn_00018b3e  ; call 0x18b3e
jmp short loc_00005065  ; jmp 0x5065

loc_00005058:
push edi
push edi
push 0x200
push esi
call fcn_00018b14  ; call 0x18b14

loc_00005065:
inc ebx
add esp, 0x10
add esi, 0x10
cmp bl, 0x10
jne short loc_0000503e  ; jne 0x503e
jmp near loc_00004f52  ; jmp 0x4f52

loc_00005076:
sub esp, 0xc
lea eax, [edi + 0xba]
push eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test al, 0x40
jne short loc_000050c1  ; jne 0x50c1

loc_0000508c:
add ebx, 7
lea eax, [ebp - 0x18]
cmp ebx, eax
je near loc_0000512a  ; je 0x512a

loc_0000509a:
push ecx
movzx eax, byte [ebx + 2]
push eax
movzx eax, byte [ebx + 1]
push eax
movzx eax, byte [ebx]
push eax
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], eax
mov edi, eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
jne short loc_00005076  ; jne 0x5076
jmp short loc_0000508c  ; jmp 0x508c

loc_000050c1:
mov byte [ebx + 4], 1
add edi, 0x18
push ecx
push 0x10100
push 0xff0000ff
push edi
call fcn_00018b68  ; call 0x18b68
pop eax
pop edx
push 0
push dword [ebp - 0x64]
call fcn_00017e04  ; call 0x17e04
push 0x10
push 0
push 0
push 1
call fcn_00002862  ; call 0x2862
add esp, 0x20
test eax, eax
je short loc_00005115  ; je 0x5115
add eax, dword [ebp - 0x70]
sub esp, 0xc
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
and eax, 0xf
cmp al, 3
mov byte [ebx + 6], al
mov al, 1
cmovae esi, eax

loc_00005115:
push edx
push edx
push 0xff0000ff
push edi
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10
jmp near loc_0000508c  ; jmp 0x508c

loc_0000512a:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00005144  ; je 0x5144
push eax
push eax
push ref_000215a3  ; push 0x215a3
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00005144:
lea ebx, [ebp - 0x2d]

loc_00005147:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00005175  ; je 0x5175
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
push ref_000215bd  ; push 0x215bd
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_00005175:
add ebx, 7
lea eax, [ebp - 0x18]
cmp ebx, eax
jne short loc_00005147  ; jne 0x5147
mov eax, esi
test al, al
jne short loc_0000519a  ; jne 0x519a

loc_00005185:
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp byte [eax + 0x39], 1
jne near loc_0000538f  ; jne 0x538f
jmp near loc_000052f8  ; jmp 0x52f8

loc_0000519a:
mov eax, dword [ebp - 0x58]
cmp eax, 0x40660
je short loc_000051ab  ; je 0x51ab
cmp eax, 0x306c0
jne short loc_000051b8  ; jne 0x51b8

loc_000051ab:
xor ebx, ebx
lea esi, [ebp - 0x38]
lea edi, [ebp - 0x35]
jmp near loc_0000523a  ; jmp 0x523a

loc_000051b8:
cmp dword [ebp - 0x58], 0x40670
jne short loc_00005185  ; jne 0x5185
push eax
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 2
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 0x10
jne short loc_000051ab  ; jne 0x51ab
jmp short loc_00005185  ; jmp 0x5185

loc_000051e1:
cmp bl, 0xc
je short loc_0000524c  ; je 0x524c
test bl, bl
jne short loc_000051f7  ; jne 0x51f7
push eax
push eax
push esi
push 0

loc_000051ef:
call fcn_0000937d  ; call 0x937d
add esp, 0x10

loc_000051f7:
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
call fcn_000093d9  ; call 0x93d9
mov edx, dword [ebp - 0x74]
add esp, 0x20
mov eax, dword [ebp - 0x70]
push edi
push edx
push eax
push ebx
inc ebx
call fcn_000094be  ; call 0x94be
add esp, 0x10
cmp ebx, 0x10
je short loc_00005259  ; je 0x5259

loc_0000523a:
cmp bl, 8
jne short loc_000051e1  ; jne 0x51e1
cmp byte [ebp - 0x22], 0
je short loc_000051f7  ; je 0x51f7
push eax
push eax
push esi
push 8
jmp short loc_000051ef  ; jmp 0x51ef

loc_0000524c:
cmp byte [ebp - 0x1b], 0
je short loc_000051f7  ; je 0x51f7
push eax
push eax
push esi
push 0xc
jmp short loc_000051ef  ; jmp 0x51ef

loc_00005259:
cmp dword [ebp - 0x44], 0
je short loc_00005283  ; je 0x5283
cmp dword [ebp - 0x58], 0x40670
jne short loc_00005283  ; jne 0x5283
mov edi, dword [ebp - 0x60]
sub esp, 0xc
push edi
call fcn_00017e4e  ; call 0x17e4e
pop edx
pop ecx
and ah, 0x7f
push eax
push edi
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10

loc_00005283:
lea ebx, [ebp - 0x2d]

loc_00005286:
cmp byte [ebx + 4], 0
je short loc_000052c5  ; je 0x52c5
push eax
movzx eax, byte [ebx + 2]
push eax
movzx eax, byte [ebx + 1]
push eax
movzx eax, byte [ebx]
push eax
call fcn_00016c9a  ; call 0x16c9a
mov esi, eax
pop eax
pop edx
lea eax, [esi + 0xd98]
add esi, 0xb0
push 1
push eax
call fcn_00018b14  ; call 0x18b14
pop ecx
pop edi
push 0x20
push esi
call fcn_00018927  ; call 0x18927
add esp, 0x10

loc_000052c5:
add ebx, 7
lea eax, [ebp - 0x18]
cmp ebx, eax
jne short loc_00005286  ; jne 0x5286
lea ebx, [ebp - 0x2d]

loc_000052d2:
cmp byte [ebx + 4], 0
je short loc_000052e9  ; je 0x52e9
push 0
push ebx
push dword [ebp - 0x34]
push dword [ebp + 8]
call fcn_00005d50  ; call 0x5d50
add esp, 0x10

loc_000052e9:
add ebx, 7
lea eax, [ebp - 0x18]
cmp ebx, eax
jne short loc_000052d2  ; jne 0x52d2
jmp near loc_00005185  ; jmp 0x5185

loc_000052f8:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00005312  ; je 0x5312
push eax
push eax
push ref_000215f5  ; push 0x215f5
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00005312:
sub esp, 0xc
push dword [ebp - 0x68]
push dword [ebp - 0x6c]
push dword [ebp - 0x34]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00003714  ; call 0x3714
movzx eax, word [ebp - 0x4a]
add esp, 0x1c
push eax
mov eax, dword [ebp - 0x40]
push 0xfff0
add eax, 0xd0
push eax
call fcn_00018981  ; call 0x18981
movzx eax, word [ebp - 0x4c]
add esp, 0xc
push eax
mov eax, dword [ebp - 0x50]
push 0xfff0
add eax, 0xd0
push eax
call fcn_00018981  ; call 0x18981
movzx eax, word [ebp - 0x5a]
add esp, 0xc
push eax
mov eax, dword [ebp - 0x54]
push 0xfff0
add eax, 0xd0
push eax
call fcn_00018981  ; call 0x18981
mov eax, dword [ebp - 0x34]
add esp, 0xc
push 0x186a0
push eax
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
add esp, 0x10

loc_0000538f:
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp byte [eax + 0x3b], 2
jne short loc_0000539f  ; jne 0x539f
mov byte [eax + 0x3b], 1

loc_0000539f:
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp byte [eax + 0x3b], 1
jne short loc_000053bf  ; jne 0x53bf
push dword [ebp - 0x3c]
push dword [ebp - 0x34]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_000082e3  ; call 0x82e3
add esp, 0x10

loc_000053bf:
cmp dword [ebp - 0x58], 0x40670
sete al
cmp dword [ebp - 0x44], 0
mov byte [ebp - 0x74], al
je short loc_000053df  ; je 0x53df
test al, al
je short loc_000053df  ; je 0x53df
push edi
push edi
push 0x4000
jmp short loc_000053e6  ; jmp 0x53e6

loc_000053df:
push esi
push esi
push 0xc000

loc_000053e6:
push dword [ebp - 0x60]
call fcn_00018b14  ; call 0x18b14
add esp, 0x10
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000540b  ; je 0x540b
push ebx
push ebx
push ref_00021610  ; push 0x21610
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000540b:
mov eax, dword [ebp - 0x64]
lea edi, [ebp - 0x2d]
mov byte [ebp - 0x60], 0
mov byte [ebp - 0x70], 0
mov byte [ebp - 0x44], 0
add eax, 0xc
mov byte [ebp - 0x5a], 0
mov byte [ebp - 0x4a], 0
mov dword [ebp - 0x80], eax

loc_0000542b:
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
je short loc_00005458  ; je 0x5458
mov edx, dword [ebp + 0xc]
mov edx, dword [edx + 0xd]
mov dl, byte [edx + eax + 0x5c]
mov byte [ecx + eax + 0x47], dl

loc_00005458:
movzx eax, byte [ebp - 0x6c]
push ecx
push eax
movzx eax, byte [ebp - 0x5b]
push eax
movzx eax, byte [ebp - 0x5c]
push eax
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], eax
mov esi, eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
je short loc_0000548a  ; je 0x548a
cmp byte [edi + 4], 0
jne short loc_00005499  ; jne 0x5499

loc_0000548a:
cmp byte [eax + 4], 0
je near loc_0000578e  ; je 0x578e
jmp near loc_00005768  ; jmp 0x5768

loc_00005499:
cmp byte [eax + 4], 0
jne short loc_000054e8  ; jne 0x54e8
push eax
push 0x10100
push 0xff0000ff
lea ebx, [esi + 0x18]
push ebx
call fcn_00018b68  ; call 0x18b68
pop eax
pop edx
push 0
push dword [ebp - 0x64]
call fcn_00017e04  ; call 0x17e04
lea eax, [esi + 0x11a]
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test al, 2
jne near loc_0000578e  ; jne 0x578e
push eax
push eax
push 0xff0000ff
push ebx
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10

loc_000054e8:
mov eax, dword [ebp + 0xc]
cmp byte [eax], 0xf
jbe short loc_0000553d  ; jbe 0x553d
movzx ebx, byte [ebp - 0x4c]
mov eax, dword [eax + 0xd]
cmp byte [eax + ebx + 0x61], 0
je short loc_0000553d  ; je 0x553d
sub esp, 0xc
lea eax, [esi + 0xb2]
push eax
call fcn_00017dc2  ; call 0x17dc2
mov ecx, dword [ebp + 0xc]
add esp, 0x10
mov edx, dword [ecx + 0xd]
and eax, 0x3f0
sar eax, 4
movzx edx, byte [edx + ebx + 0x61]
cmp dl, al
je short loc_0000553d  ; je 0x553d
movzx eax, byte [ebp - 0x6c]
push eax
movzx eax, byte [ebp - 0x5b]
push eax
push edx
push dword [ebp + 8]
call fcn_000028d8  ; call 0x28d8
add esp, 0x10

loc_0000553d:
mov eax, dword [ebp + 0xc]
cmp byte [eax], 7
jbe short loc_00005559  ; jbe 0x5559
mov edx, dword [eax + 0xd]
movzx eax, byte [ebp - 0x4c]
mov bl, byte [edx + eax + 0x5c]
cmp bl, 0xff
jne near loc_0000567d  ; jne 0x567d

loc_00005559:
sub esp, 0xc
lea eax, [esi + 0xac]
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0xc
push 0x10100
push 0xff0000ff
lea ebx, [esi + 0x18]
push ebx
shr eax, 4
and eax, 0x3f
mov byte [ebp - 0x79], al
call fcn_00018b68  ; call 0x18b68
pop edx
pop ecx
push 0
push dword [ebp - 0x64]
call fcn_00017e04  ; call 0x17e04
pop eax
push dword [ebp - 0x64]
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
inc eax
jne short loc_000055ec  ; jne 0x55ec
sub esp, 0xc
add esi, 0xb2
push esi
call fcn_00017dc2  ; call 0x17dc2
mov esi, eax
and esi, 0x3f0
sar esi, 4
mov eax, esi
mov byte [ebp - 0x70], al
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_00005618  ; je 0x5618
movzx eax, byte [ebp - 0x6c]
sub esp, 0xc
push esi
push eax
movzx eax, byte [ebp - 0x5b]
push eax
push ref_0002162c  ; push 0x2162c
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20
jmp short loc_00005618  ; jmp 0x5618

loc_000055ec:
push 0x10
push 0
push 0
push 1
call fcn_00002862  ; call 0x2862
add esp, 0x10
test eax, eax
je short loc_00005618  ; je 0x5618
add eax, dword [ebp - 0x80]
sub esp, 0xc
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
shr eax, 4
and eax, 0x3f
mov byte [ebp - 0x70], al

loc_00005618:
push eax
push eax
push 0xff0000ff
push ebx
call fcn_00018b3e  ; call 0x18b3e
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
call fcn_00015479  ; call 0x15479
mov edx, dword [ebp - 0x84]
test al, al
je short loc_000056a1  ; je 0x56a1
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
push ref_00021698  ; push 0x21698
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20
jmp short loc_000056a1  ; jmp 0x56a1

loc_0000567d:
test bl, bl
je short loc_000056a1  ; je 0x56a1
call fcn_00015479  ; call 0x15479
mov byte [ebp - 0x60], bl
test al, al
je short loc_000056a1  ; je 0x56a1
push eax
movzx eax, bl
push eax
push ref_0002170b  ; push 0x2170b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000056a1:
mov eax, dword [ebp - 0x58]
cmp eax, 0x40660
je short loc_000056b2  ; je 0x56b2
cmp eax, 0x306c0
jne short loc_000056b8  ; jne 0x56b8

loc_000056b2:
test bl, bl
je short loc_00005734  ; je 0x5734
jmp short loc_000056de  ; jmp 0x56de

loc_000056b8:
cmp byte [ebp - 0x74], 0
je short loc_00005734  ; je 0x5734
push eax
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 2
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 0x10
jne short loc_000056b2  ; jne 0x56b2
jmp short loc_00005734  ; jmp 0x5734

loc_000056de:
movzx esi, byte [ebp - 0x6c]
push eax
push dword [ebp - 0x68]
push esi
push dword [ebp + 8]
call fcn_0000490a  ; call 0x490a
add esp, 0x10
mov bl, al
cmp byte [ebp - 0x60], al
jbe short loc_0000571b  ; jbe 0x571b
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000571e  ; je 0x571e
push eax
movzx eax, bl
push eax
push ref_000216d6  ; push 0x216d6
push 0x80000040
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp short loc_0000571e  ; jmp 0x571e

loc_0000571b:
mov bl, byte [ebp - 0x60]

loc_0000571e:
movzx eax, bl
push eax
push dword [ebp - 0x68]
push esi
push dword [ebp + 8]
call fcn_00004993  ; call 0x4993
add esp, 0x10
mov byte [ebp - 0x60], bl

loc_00005734:
call fcn_00015479  ; call 0x15479
movzx esi, byte [ebp - 0x6c]
movzx ebx, byte [ebp - 0x5b]
test al, al
je short loc_00005756  ; je 0x5756
push esi
push ebx
push ref_00021720  ; push 0x21720
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00005756:
movzx eax, byte [ebp - 0x5c]
push esi
push ebx
push eax
push dword [ebp + 0xc]
call fcn_00003b13  ; call 0x3b13
add esp, 0x10

loc_00005768:
cmp byte [ebp - 0x4c], 0
jne short loc_00005774  ; jne 0x5774
cmp byte [ebp - 0x48], 3
je short loc_000057d1  ; je 0x57d1

loc_00005774:
cmp byte [ebp - 0x4c], 1
jne short loc_00005780  ; jne 0x5780
cmp byte [ebp - 0x48], 2
je short loc_000057e9  ; je 0x57e9

loc_00005780:
cmp byte [ebp - 0x4c], 2
jne short loc_000057c1  ; jne 0x57c1
cmp byte [ebp - 0x48], 0
je short loc_000057ed  ; je 0x57ed
jmp short loc_000057c1  ; jmp 0x57c1

loc_0000578e:
mov al, byte [ebp - 0x48]
cmp al, 3
je short loc_000057db  ; je 0x57db
cmp al, 2
jne short loc_000057a5  ; jne 0x57a5
cmp byte [ebp - 0x4c], 0
mov byte [ebp - 0x44], 1
je short loc_000057bd  ; je 0x57bd
jmp short loc_000057d5  ; jmp 0x57d5

loc_000057a5:
cmp byte [ebp - 0x48], 0
jne short loc_000057c1  ; jne 0x57c1
cmp byte [ebp - 0x4c], 0
je short loc_000057bd  ; je 0x57bd
cmp byte [ebp - 0x4c], 1
jne short loc_000057e9  ; jne 0x57e9
mov byte [ebp - 0x5a], 1
jmp short loc_000057c1  ; jmp 0x57c1

loc_000057bd:
mov byte [ebp - 0x4a], 1

loc_000057c1:
add edi, 7
lea eax, [ebp - 0x18]
cmp edi, eax
jne near loc_0000542b  ; jne 0x542b
jmp short loc_000057ed  ; jmp 0x57ed

loc_000057d1:
mov byte [ebp - 0x44], 1

loc_000057d5:
mov byte [ebp - 0x5a], 1
jmp short loc_000057ed  ; jmp 0x57ed

loc_000057db:
mov byte [ebp - 0x44], 1
mov byte [ebp - 0x5a], 1
mov byte [ebp - 0x4a], 1
jmp short loc_000057ed  ; jmp 0x57ed

loc_000057e9:
mov byte [ebp - 0x44], 1

loc_000057ed:
mov dl, byte [ebp - 0x44]
xor ebx, ebx
mov al, byte [ebp - 0x5a]
xor edx, 1
xor eax, 1
or dl, al
je short loc_00005806  ; je 0x5806
mov bl, byte [ebp - 0x4a]
mov byte [ebp - 0x4a], 0

loc_00005806:
sub esp, 0xc
mov esi, 1
push dword [ebp - 0x40]
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
jne short loc_00005839  ; jne 0x5839
call fcn_00015479  ; call 0x15479
xor esi, esi
test al, al
je short loc_00005839  ; je 0x5839
push ecx
push ecx
push ref_0002174b  ; push 0x2174b
push 2
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00005839:
or bl, byte [ebp - 0x4a]
je near loc_00005968  ; je 0x5968
mov eax, esi
test al, al
je near loc_00005968  ; je 0x5968
mov edi, dword [ebp - 0x40]
mov ebx, 0x3e9
push eax
push eax
push 0x100
mov eax, edi
add eax, 0x224
push eax
call fcn_00018b14  ; call 0x18b14
lea esi, [edi + 0x464]
pop eax
mov eax, edi
pop edx
add eax, 0xb0
push 0x10
push eax
call fcn_00018730  ; call 0x18730
add esp, 0x10

loc_00005882:
sub esp, 0xc
push esi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
and eax, 0x3f
cmp eax, 2
je short loc_000058ac  ; je 0x58ac
dec bx
je short loc_000058ac  ; je 0x58ac
mov eax, dword [ebp - 0x34]
push edi
push 0x64
push eax
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
add esp, 0x10
jmp short loc_00005882  ; jmp 0x5882

loc_000058ac:
mov eax, dword [ebp - 0x40]
push esi
push 0x20
push 0xcf
add eax, 0xc20
push eax
call fcn_0001878a  ; call 0x1878a
mov eax, dword [ebp - 0x58]
add esp, 0x10
cmp eax, 0x40660
je short loc_000058d6  ; je 0x58d6
cmp eax, 0x306c0
jne short loc_000058f9  ; jne 0x58f9

loc_000058d6:
mov edi, dword [ebp - 0x68]
push ebx
push edi
push 0
push dword [ebp + 8]
call fcn_0000490a  ; call 0x490a
movzx eax, al
push eax
push edi
push 0
push dword [ebp + 8]
call fcn_00004993  ; call 0x4993
add esp, 0x20
jmp short loc_0000591d  ; jmp 0x591d

loc_000058f9:
cmp byte [ebp - 0x74], 0
je short loc_0000591d  ; je 0x591d
push ecx
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 2
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 0x10
jne short loc_000058d6  ; jne 0x58d6

loc_0000591d:
cmp byte [ebp - 0x4a], 0
je short loc_00005968  ; je 0x5968
push eax
push eax
mov eax, dword [ebp - 0x40]
push 0x40000000
add eax, 0xd20
push eax
call fcn_00018b14  ; call 0x18b14
pop eax
mov eax, dword [ebp - 0x78]
pop edx
add eax, 0x54
push 0xf7
push eax
call fcn_0001875d  ; call 0x1875d
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_00005968  ; je 0x5968
push eax
push eax
push ref_0002174b  ; push 0x2174b
push 2
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00005968:
sub esp, 0xc
mov bl, 1
push dword [ebp - 0x50]
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
jne short loc_00005998  ; jne 0x5998
call fcn_00015479  ; call 0x15479
xor ebx, ebx
test al, al
je short loc_00005998  ; je 0x5998
push edi
push edi
push ref_0002175c  ; push 0x2175c
push 2
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00005998:
test byte [ebp - 0x5a], bl
je near loc_00005abd  ; je 0x5abd
mov edi, dword [ebp - 0x50]
push ecx
push ecx
push 0x100
mov eax, edi
add eax, 0x224
push eax
call fcn_00018b14  ; call 0x18b14
mov eax, edi
pop ebx
add eax, 0xb0
pop esi
mov ebx, 0x3e9
push 0x10
push eax
call fcn_00018730  ; call 0x18730
mov eax, dword [ebp - 0x40]
add esp, 0x10
lea esi, [eax + 0x464]

loc_000059da:
sub esp, 0xc
push esi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
shr eax, 8
and eax, 0x3f
cmp eax, 2
je short loc_00005a07  ; je 0x5a07
dec bx
je short loc_00005a07  ; je 0x5a07
mov eax, dword [ebp - 0x34]
push edx
push 0x64
push eax
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
add esp, 0x10
jmp short loc_000059da  ; jmp 0x59da

loc_00005a07:
push eax
mov eax, dword [ebp - 0x50]
push 0x20
push 0xcf
add eax, 0xc20
push eax
call fcn_0001878a  ; call 0x1878a
mov eax, dword [ebp - 0x58]
add esp, 0x10
cmp eax, 0x40660
je short loc_00005a31  ; je 0x5a31
cmp eax, 0x306c0
jne short loc_00005a54  ; jne 0x5a54

loc_00005a31:
mov esi, dword [ebp - 0x68]
push eax
push esi
push 1
push dword [ebp + 8]
call fcn_0000490a  ; call 0x490a
movzx eax, al
push eax
push esi
push 1
push dword [ebp + 8]
call fcn_00004993  ; call 0x4993
add esp, 0x20
jmp short loc_00005a78  ; jmp 0x5a78

loc_00005a54:
cmp byte [ebp - 0x74], 0
je short loc_00005a78  ; je 0x5a78
push eax
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 2
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 0x10
jne short loc_00005a31  ; jne 0x5a31

loc_00005a78:
mov eax, dword [ebp - 0x50]
push esi
push esi
push 0x40000000
add eax, 0xd20
push eax
call fcn_00018b14  ; call 0x18b14
pop edi
pop eax
mov eax, dword [ebp - 0x78]
push 0xfb
add eax, 0x54
push eax
call fcn_0001875d  ; call 0x1875d
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_00005abd  ; je 0x5abd
push ebx
push ebx
push ref_0002175c  ; push 0x2175c
push 2
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00005abd:
sub esp, 0xc
mov bl, 1
push dword [ebp - 0x54]
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
jne short loc_00005aed  ; jne 0x5aed
call fcn_00015479  ; call 0x15479
xor ebx, ebx
test al, al
je short loc_00005aed  ; je 0x5aed
push ecx
push ecx
push ref_0002176d  ; push 0x2176d
push 2
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00005aed:
test byte [ebp - 0x44], bl
je near loc_00005c12  ; je 0x5c12
mov edi, dword [ebp - 0x54]
mov ebx, 0x3e9
push eax
push eax
push 0x100
mov eax, edi
add eax, 0x224
push eax
call fcn_00018b14  ; call 0x18b14
pop eax
mov eax, edi
pop edx
add eax, 0xb0
push 0x10
push eax
call fcn_00018730  ; call 0x18730
mov eax, dword [ebp - 0x40]
add esp, 0x10
lea esi, [eax + 0x464]

loc_00005b2f:
sub esp, 0xc
push esi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
shr eax, 0x10
and eax, 0x3f
cmp eax, 2
je short loc_00005b5c  ; je 0x5b5c
dec bx
je short loc_00005b5c  ; je 0x5b5c
mov eax, dword [ebp - 0x34]
push edi
push 0x64
push eax
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
add esp, 0x10
jmp short loc_00005b2f  ; jmp 0x5b2f

loc_00005b5c:
mov eax, dword [ebp - 0x54]
push esi
push 0x20
push 0xcf
add eax, 0xc20
push eax
call fcn_0001878a  ; call 0x1878a
mov eax, dword [ebp - 0x58]
add esp, 0x10
cmp eax, 0x40660
je short loc_00005b86  ; je 0x5b86
cmp eax, 0x306c0
jne short loc_00005ba9  ; jne 0x5ba9

loc_00005b86:
mov edi, dword [ebp - 0x68]
push ebx
push edi
push 2
push dword [ebp + 8]
call fcn_0000490a  ; call 0x490a
movzx eax, al
push eax
push edi
push 2
push dword [ebp + 8]
call fcn_00004993  ; call 0x4993
add esp, 0x20
jmp short loc_00005bcd  ; jmp 0x5bcd

loc_00005ba9:
cmp byte [ebp - 0x74], 0
je short loc_00005bcd  ; je 0x5bcd
push ecx
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 2
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 0x10
jne short loc_00005b86  ; jne 0x5b86

loc_00005bcd:
mov eax, dword [ebp - 0x54]
push edi
push edi
push 0x40000000
add eax, 0xd20
push eax
call fcn_00018b14  ; call 0x18b14
pop eax
mov eax, dword [ebp - 0x78]
pop edx
add eax, 0x54
push 0xfd
push eax
call fcn_0001875d  ; call 0x1875d
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_00005c12  ; je 0x5c12
push esi
push esi
push ref_0002176d  ; push 0x2176d
push 2
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00005c12:
lea ebx, [ebp - 0x2d]

loc_00005c15:
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
call fcn_0000254f  ; call 0x254f
mov eax, dword [ebp - 0x48]
add esp, 0x1c
push eax
push edi
push esi
call fcn_0000241b  ; call 0x241b
lea eax, [ebp - 0x18]
add esp, 0x10
cmp ebx, eax
jne short loc_00005c15  ; jne 0x5c15
mov edi, dword [ebp - 0x3c]
test edi, edi
je near loc_00005cdf  ; je 0x5cdf
mov eax, dword [ebp - 0x40]
sub esp, 0xc
add eax, 0x11a
push eax
call fcn_00017dc2  ; call 0x17dc2
shr ax, 1
xor eax, 1
mov bl, al
mov eax, dword [ebp - 0x50]
and ebx, 1
add eax, 0x11a
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
mov dl, bl
or edx, 2
test al, 2
mov eax, dword [ebp - 0x54]
cmove ebx, edx
add eax, 0x11a
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
mov dl, bl
add esp, 0x10
or edx, 4
test al, 2
cmove ebx, edx
not ebx
cmp byte [edi + 0x46], bl
je short loc_00005cdf  ; je 0x5cdf
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00005cd9  ; je 0x5cd9
movzx eax, bl
push eax
mov eax, dword [ebp - 0x3c]
movzx eax, byte [eax + 0x46]
push eax
push ref_0002177e  ; push 0x2177e
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00005cd9:
mov eax, dword [ebp - 0x3c]
mov byte [eax + 0x46], bl

loc_00005cdf:
mov eax, dword [ebp + 0xc]
cmp byte [eax], 0xa
ja short loc_00005d06  ; ja 0x5d06

loc_00005ce7:
call fcn_00003ba6  ; call 0x3ba6
movzx eax, byte [ebp - 0x44]
push ebx
push eax
movzx eax, byte [ebp - 0x5a]
push eax
movzx eax, byte [ebp - 0x4a]
push eax
call fcn_00003cf7  ; call 0x3cf7

loc_00005d01:
add esp, 0x10
jmp short loc_00005d48  ; jmp 0x5d48

loc_00005d06:
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 0xd]
cmp byte [eax + 0x5f], 1
jne short loc_00005ce7  ; jne 0x5ce7
lea ebx, [ebp - 0x2d]

loc_00005d15:
push eax
movzx eax, byte [ebx + 2]
add ebx, 7
push eax
movzx eax, byte [ebx - 6]
push eax
movzx eax, byte [ebx - 7]
push eax
call fcn_00016c9a  ; call 0x16c9a
pop edx
pop ecx
push 1
add eax, 0x25c
push eax
call fcn_00018b14  ; call 0x18b14
lea eax, [ebp - 0x18]
add esp, 0x10
cmp ebx, eax
jne short loc_00005d15  ; jne 0x5d15
jmp short loc_00005ce7  ; jmp 0x5ce7

loc_00005d48:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00005d50:
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
call fcn_00016c9a  ; call 0x16c9a
add eax, 0x48
mov dword [esp], eax
call fcn_00017ed8  ; call 0x17ed8
add esp, 0x10
mov dword [ebp - 0x24], eax
mov eax, edi
test al, al
jne short loc_00005ddd  ; jne 0x5ddd
test bl, bl
je short loc_00005ddd  ; je 0x5ddd
xor edi, edi

loc_00005d96:
push eax
movzx eax, byte [esi + 2]
push eax
movzx eax, byte [esi + 1]
push eax
movzx eax, byte [esi]
push eax
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xd2
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test al, 2
jne short loc_00005de3  ; jne 0x5de3
push ecx
mov eax, dword [ebp + 0xc]
inc edi
push 0x3e8
push dword [ebp + 0xc]
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
add esp, 0x10
cmp edi, 0x64
jne short loc_00005d96  ; jne 0x5d96
xor eax, eax
jmp short loc_00005de5  ; jmp 0x5de5

loc_00005ddd:
xor eax, eax
xor edi, edi
jmp short loc_00005de5  ; jmp 0x5de5

loc_00005de3:
mov al, 1

loc_00005de5:
test al, al
je short loc_00005df5  ; je 0x5df5
test bl, bl
je short loc_00005df5  ; je 0x5df5

loc_00005ded:
mov ebx, dword [ebp - 0x24]
and ebx, 0xfffffffe
jmp short loc_00005e1c  ; jmp 0x5e1c

loc_00005df5:
test bl, bl
je short loc_00005ded  ; je 0x5ded
cmp byte [ebp - 0x20], 0
jne short loc_00005ded  ; jne 0x5ded

loc_00005dff:
mov eax, 0x80000012
jmp short loc_00005e7d  ; jmp 0x5e7d

loc_00005e06:
push eax
mov eax, dword [ebp + 0xc]
inc edi
push 0x3e8
push dword [ebp + 0xc]
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
add esp, 0x10

loc_00005e1c:
cmp edi, 0x63
ja short loc_00005dff  ; ja 0x5dff
cmp byte [ebp - 0x19], 0
je short loc_00005e4e  ; je 0x5e4e
push 0
push 0x13
push 0x4648080
push ebx
call fcn_000041ca  ; call 0x41ca
movzx ecx, byte [esi + 2]
add esp, 0x10
shl ecx, 3
shr eax, cl
and eax, 0x3f
cmp eax, 0x10

loc_00005e48:
jne short loc_00005e06  ; jne 0x5e06
xor eax, eax
jmp short loc_00005e7d  ; jmp 0x5e7d

loc_00005e4e:
push edx
movzx eax, byte [esi + 2]
push eax
movzx eax, byte [esi + 1]
push eax
movzx eax, byte [esi]
push eax
call fcn_00016c9a  ; call 0x16c9a
add eax, 0x214
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
shr eax, 0x10
and eax, 0xf
cmp eax, 7
jmp short loc_00005e48  ; jmp 0x5e48

loc_00005e7d:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00005e85:
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
call fcn_00016c9a  ; call 0x16c9a
mov esi, eax
lea eax, [eax + 2]
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
mov edx, eax
and eax, 0xfffffffd
cmp ax, 0x8c44
je short loc_00005f1c  ; je 0x5f1c
lea eax, [edx + 0x73b2]
cmp ax, 2
jbe short loc_00005f1c  ; jbe 0x5f1c
lea eax, [edx + 0x73b7]
cmp ax, 3
jbe short loc_00005f1c  ; jbe 0x5f1c
lea eax, [edx + 0x73bf]
cmp ax, 1
jbe short loc_00005f1c  ; jbe 0x5f1c
cmp dx, 0x8c58
je short loc_00005f1c  ; je 0x5f1c
mov eax, edx
and eax, 0xfffffffb
cmp ax, 0x8c52
je short loc_00005f1c  ; je 0x5f1c
mov eax, edx
and eax, 0xfffffff7
cmp ax, 0x8c54
je short loc_00005f1c  ; je 0x5f1c
lea eax, [edx + 0x63bf]
cmp ax, 6
jbe short loc_00005f1c  ; jbe 0x5f1c
add dx, 0x733f
cmp dx, 5
jbe short loc_00005f1c  ; jbe 0x5f1c

loc_00005f12:
mov eax, 0x80000003
jmp near loc_0000600e  ; jmp 0x600e

loc_00005f1c:
sub esp, 0xc
add esi, 0x48
push esi
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
and ax, 0xfffc
mov word [ebp - 0x20], ax
je short loc_00005f12  ; je 0x5f12
cmp bl, 0x1f
jbe short loc_00005f79  ; jbe 0x5f79
cmp bl, 0x3f
ja short loc_00005f55  ; ja 0x5f55
lea ecx, [ebx - 0x20]
mov esi, 0x30
mov word [ebp - 0x1c], 0x38
mov word [ebp - 0x1a], 0x34
jmp short loc_00005f89  ; jmp 0x5f89

loc_00005f55:
mov eax, 0x80000002
cmp bl, 0x5f
ja near loc_0000600e  ; ja 0x600e
lea ecx, [ebx - 0x40]
mov esi, 0x40
mov word [ebp - 0x1c], 0x48
mov word [ebp - 0x1a], 0x44
jmp short loc_00005f89  ; jmp 0x5f89

loc_00005f79:
mov cl, bl
xor esi, esi
mov word [ebp - 0x1c], 0xc
mov word [ebp - 0x1a], 4

loc_00005f89:
mov dword [ebp - 0x24], ecx
and edi, 1
call fcn_00015479  ; call 0x15479
mov ecx, dword [ebp - 0x24]
test al, al
mov eax, edi
movzx edi, al
je short loc_00005fb7  ; je 0x5fb7
push edi
movzx ebx, bl
push ebx
push ref_000217b5  ; push 0x217b5
push 0x40
call fcn_00015487  ; call 0x15487
mov ecx, dword [ebp - 0x24]
add esp, 0x10

loc_00005fb7:
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
call fcn_00018363  ; call 0x18363
mov edx, dword [ebp - 0x20]
movzx eax, word [ebp - 0x1a]
mov esi, edx
pop edx
not esi
pop ecx
add eax, ebx
push esi
push eax
call fcn_0001838d  ; call 0x1838d
movzx eax, word [ebp - 0x1c]
add ebx, eax
mov dword [esp], ebx
call fcn_00018f64  ; call 0x18f64
mov ecx, dword [ebp - 0x24]
shl edi, cl
and eax, esi
pop esi
or eax, edi
pop edx
push eax
push ebx
call fcn_00018f97  ; call 0x18f97
add esp, 0x10
xor eax, eax

loc_0000600e:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00006016:
push ebp
mov ebp, esp
push ebx
push ebx
mov ebx, dword [ebp + 8]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00006038  ; je 0x6038
push ecx
push ecx
push ref_000217cb  ; push 0x217cb
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00006038:
cmp byte [ebx], 2
mov eax, 0x80000003
jbe short loc_00006065  ; jbe 0x6065
mov edx, dword [ebx + 0xd]
mov edx, dword [edx + 0x4c]
cmp byte [edx], 1
jne short loc_00006065  ; jne 0x6065
mov eax, dword [edx + 1]
push edx
push edx
mov dl, byte [eax + 1]
and edx, 1
push edx
movzx eax, byte [eax]
push eax
call fcn_00005e85  ; call 0x5e85
add esp, 0x10

loc_00006065:
mov ebx, dword [ebp - 4]
leave
ret

fcn_0000606a:
push ebp
mov ebp, esp
push esi
push ebx
mov ebx, dword [ebp + 8]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000608c  ; je 0x608c
push ecx
push ecx
push ref_000217e6  ; push 0x217e6
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000608c:
cmp byte [ebx], 2
mov esi, 0x80000003
jbe short loc_000060bd  ; jbe 0x60bd
mov eax, dword [ebx + 0xd]
mov eax, dword [eax + 0x4c]
cmp byte [eax], 1
jne short loc_000060bd  ; jne 0x60bd
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
call fcn_00005e85  ; call 0x5e85
add esp, 0x10

loc_000060bd:
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_000060c6:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov edi, dword [ebp + 8]
mov ebx, dword [ebp + 0xc]
mov esi, dword [ebp + 0x10]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000060f2  ; je 0x60f2
push eax
push eax
push ref_00021803  ; push 0x21803
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000060f2:
xor edx, edx

loc_000060f4:
push eax
push edx
push 1
push 0
mov dword [ebp - 0x1c], edx
call fcn_00016c9a  ; call 0x16c9a
pop edx
pop ecx
push 0x10
add eax, 0xb0
push eax
call fcn_00018927  ; call 0x18927
mov edx, dword [ebp - 0x1c]
add esp, 0x10
inc edx
cmp edx, 3
jne short loc_000060f4  ; jne 0x60f4
sub esp, 0xc
push esi
call fcn_00006016  ; call 0x6016
add esp, 0x10
mov edx, eax
test eax, eax
js short loc_00006171  ; js 0x6171
push eax
push 0x64
push ebx
push edi
call dword [ebx + 4]  ; ucall
add esp, 0x10
xor ebx, ebx

loc_0000613c:
push edi
push ebx
inc ebx
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
pop edx
pop ecx
push 0xffef
add eax, 0xb0
push eax
call fcn_00018954  ; call 0x18954
add esp, 0x10
cmp ebx, 3
jne short loc_0000613c  ; jne 0x613c
mov dword [ebp + 8], esi
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_0000606a  ; jmp 0x606a

loc_00006171:
xor ebx, ebx

loc_00006173:
push eax
push ebx
inc ebx
push 1
push 0
mov dword [ebp - 0x1c], edx
call fcn_00016c9a  ; call 0x16c9a
pop edx
pop ecx
push 0xffef
add eax, 0xb0
push eax
call fcn_00018954  ; call 0x18954
add esp, 0x10
cmp ebx, 3
mov edx, dword [ebp - 0x1c]
jne short loc_00006173  ; jne 0x6173
lea esp, [ebp - 0xc]
mov eax, edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000061a9:
push ebp
mov ebp, esp
push esi
push ebx
mov ebx, dword [ebp + 0x10]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000061cb  ; je 0x61cb
push ecx
push ecx
push ref_0002181d  ; push 0x2181d
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000061cb:
push edx
movzx eax, byte [ebx + 2]
push eax
movzx eax, byte [ebx + 1]
push eax
movzx eax, byte [ebx]
push eax
call fcn_00016c9a  ; call 0x16c9a
pop ecx
lea esi, [eax + 0x3e]
pop eax
push 0x40
push esi
call fcn_00018927  ; call 0x18927
pop eax
pop edx
push 0xffbf
push esi
call fcn_00018954  ; call 0x18954
push 0
push ebx
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00005d50  ; call 0x5d50
add esp, 0x20
mov ebx, eax
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00006226  ; je 0x6226
push eax
push eax
push ref_00021833  ; push 0x21833
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00006226:
lea esp, [ebp - 8]
mov eax, ebx
pop ebx
pop esi
pop ebp
ret

fcn_0000622f:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov esi, dword [ebp + 0x10]
call fcn_0001c651  ; call 0x1c651
mov edi, eax
push eax
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0x48
mov dword [esp], eax
call fcn_00017ed8  ; call 0x17ed8
add esp, 0x10
cmp edi, 0x40660
sete byte [ebp - 0x19]
cmp edi, 0x306c0
mov ebx, eax
sete al
or byte [ebp - 0x19], al
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000628e  ; je 0x628e
push eax
push eax
push ref_00021843  ; push 0x21843
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000628e:
cmp edi, 0x40670
jne short loc_000062bc  ; jne 0x62bc
push eax
movzx eax, byte [esi + 2]
push eax
movzx eax, byte [esi + 1]
push eax
movzx eax, byte [esi]
push eax
call fcn_00016c9a  ; call 0x16c9a
pop edx
pop ecx
push 0x10
add eax, 0xc24
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10

loc_000062bc:
cmp byte [ebp - 0x19], 0
je near loc_00006357  ; je 0x6357
push 0
and ebx, 0xfffffffe
push 0x13
push 0x4448080
push ebx
call fcn_000041ca  ; call 0x41ca
and eax, 0xfffffffd
push eax
push 0x14
push 0x4448080
push ebx
call fcn_000041ca  ; call 0x41ca
add esp, 0x20
push 0
push 0x13
push 0x4448080
push ebx
call fcn_000041ca  ; call 0x41ca
or eax, 1
push eax
push 0x14
push 0x4448080
push ebx
call fcn_000041ca  ; call 0x41ca
add esp, 0x20
push 0
push 0x13
push 0x4448080
push ebx
call fcn_000041ca  ; call 0x41ca
or ah, 0x20
push eax
push 0x14
push 0x4448080
push ebx
call fcn_000041ca  ; call 0x41ca
add esp, 0x20
push 0
push 0x13
push 0x4448080
push ebx
call fcn_000041ca  ; call 0x41ca
and eax, 0xfffffffe
push eax
push 0x14
push 0x4448080
push ebx
call fcn_000041ca  ; call 0x41ca
add esp, 0x20
jmp short loc_000063cf  ; jmp 0x63cf

loc_00006357:
push eax
push 0
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
pop edx
pop ecx
push 0xfffffffffffffffd
add eax, 0x444
push eax
call fcn_00018b3e  ; call 0x18b3e
add esp, 0xc
push 0
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
pop ebx
pop edx
push 1
add eax, 0x444
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0xc
push 0
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
pop ecx
pop ebx
push 0x2000
add eax, 0x444
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0xc
push 0
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
pop edx
pop ecx
push 0xfffffffffffffffe
add eax, 0x444
push eax
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10

loc_000063cf:
movzx eax, byte [ebp - 0x19]
push eax
push esi
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00005d50  ; call 0x5d50
add esp, 0x10
mov ebx, eax
cmp edi, 0x40670
jne short loc_00006413  ; jne 0x6413
push edx
movzx eax, byte [esi + 2]
push eax
movzx eax, byte [esi + 1]
push eax
movzx eax, byte [esi]
push eax
call fcn_00016c9a  ; call 0x16c9a
pop ecx
pop esi
push 0xffffffffffffffef
add eax, 0xc24
push eax
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10

loc_00006413:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000642d  ; je 0x642d
push eax
push eax
push ref_00021833  ; push 0x21833
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000642d:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00006437:
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
call fcn_00016c9a  ; call 0x16c9a
pop ecx
pop edx
push 0x20
add eax, 0xb0
push eax
call fcn_00018927  ; call 0x18927
push 0
push ebx
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00005d50  ; call 0x5d50
add esp, 0x20
mov ebx, eax
test eax, eax
jns short loc_00006494  ; jns 0x6494
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00006494  ; je 0x6494
push eax
push eax
push ref_00021855  ; push 0x21855
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00006494:
mov eax, ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_0000649b:
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
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xb2
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
leave
shr ax, 4
and eax, 0x3f
ret

fcn_000064cd:
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
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], esi
mov edi, eax
call fcn_0000649b  ; call 0x649b
add esp, 0x10
mov dl, al
cmp al, bl
jae near loc_000065bf  ; jae 0x65bf
mov dword [ebp - 0x1c], edx
call fcn_00015479  ; call 0x15479
mov edx, dword [ebp - 0x1c]
test al, al
je short loc_0000652c  ; je 0x652c
movzx edx, dl
movzx eax, bl
push edx
push eax
push ref_0002186d  ; push 0x2186d
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000652c:
movzx eax, bl
push ecx
push eax
push 0xffffffffffffffe0
lea edx, [edi + 0x224]
add edi, 0xb0
push edx
mov dword [ebp - 0x1c], edx
call fcn_00018b68  ; call 0x18b68
pop eax
pop edx
push 0x10
push edi
call fcn_00018927  ; call 0x18927
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
call fcn_00018954  ; call 0x18954
push 0
push esi
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00005d50  ; call 0x5d50
mov edx, dword [ebp - 0x1c]
add esp, 0x18
push 0x1f
push edx
mov edi, eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10
test edi, edi
js short loc_000065e4  ; js 0x65e4
sub esp, 0xc
push esi
call fcn_0000649b  ; call 0x649b
add esp, 0x10
cmp al, bl
jne short loc_000065c3  ; jne 0x65c3
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000065bf  ; je 0x65bf
push edx
push edx
push ref_00021891  ; push 0x21891
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000065bf:
xor ebx, ebx
jmp short loc_000065e6  ; jmp 0x65e6

loc_000065c3:
call fcn_00015479  ; call 0x15479
mov ebx, 0x80000007
test al, al
je short loc_000065e6  ; je 0x65e6
push eax
push eax
push ref_000218ac  ; push 0x218ac
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp short loc_000065e6  ; jmp 0x65e6

loc_000065e4:
mov ebx, edi

loc_000065e6:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000065f0:
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
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xb2
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
leave
and eax, 0xf
ret

fcn_0000661e:
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
call fcn_0001c651  ; call 0x1c651
mov dword [ebp - 0x1c], eax
call fcn_0001c678  ; call 0x1c678
mov dword [ebp - 0x20], eax
test esi, esi
je short loc_00006662  ; je 0x6662
cmp byte [ebx], 1
jbe short loc_0000665e  ; jbe 0x665e
mov eax, dword [ebx + 0xd]
cmp byte [eax + 0x48], 0
jne short loc_00006662  ; jne 0x6662

loc_0000665e:
mov byte [esi + 0x71], 1

loc_00006662:
push eax
push 0
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
pop edx
pop ecx
push 0x8000
add eax, 0xdd8
push eax
mov dword [ebp - 0x24], eax
call fcn_00018b14  ; call 0x18b14
add esp, 0xc
push ebx
push dword [ebp + 0x14]
push dword [ebp + 8]
call fcn_000060c6  ; call 0x60c6
add esp, 0x10
mov esi, eax
test eax, eax
jns short loc_000066ad  ; jns 0x66ad
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000066c7  ; je 0x66c7
push eax
push esi
push ref_000218c4  ; push 0x218c4
jmp short loc_000066bd  ; jmp 0x66bd

loc_000066ad:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000066c7  ; je 0x66c7
push eax
push eax
push ref_000218d1  ; push 0x218d1

loc_000066bd:
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000066c7:
mov al, byte [edi]
movzx ecx, byte [edi + 2]
movzx edx, byte [edi + 1]
mov byte [ebp - 0x25], al

loc_000066d4:
push ebx
movzx ebx, byte [ebp - 0x25]
push ecx
push edx
push ebx
mov dword [ebp - 0x38], ecx
mov dword [ebp - 0x34], edx
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xd2
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
mov edx, dword [ebp - 0x34]
mov ecx, dword [ebp - 0x38]
test al, 2
je short loc_000066d4  ; je 0x66d4
sub esp, 0xc
push ecx
push edx
push ebx
push dword [ebp + 0x14]
push dword [ebp + 8]
call fcn_0000254f  ; call 0x254f
add esp, 0x20
cmp dword [ebp - 0x20], 0
je short loc_00006736  ; je 0x6736
cmp dword [ebp - 0x1c], 0x40670
jne short loc_00006736  ; jne 0x6736
push ecx
push ecx
push 0xffff7fff
push dword [ebp - 0x24]
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10

loc_00006736:
sub esp, 0xc
push edi
call fcn_0000649b  ; call 0x649b
add esp, 0x10
cmp al, byte [ebp - 0x30]
jae short loc_00006769  ; jae 0x6769
call fcn_00015479  ; call 0x15479
mov esi, 0x80000012
test al, al
je short loc_00006769  ; je 0x6769
push edx
push edx
push ref_000218db  ; push 0x218db
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00006769:
sub esp, 0xc
push edi
call fcn_000065f0  ; call 0x65f0
add esp, 0x10
cmp al, byte [ebp - 0x2c]
jae short loc_0000679c  ; jae 0x679c
call fcn_00015479  ; call 0x15479
mov esi, 0x80000012
test al, al
je short loc_0000679c  ; je 0x679c
push eax
push eax
push ref_000218f3  ; push 0x218f3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000679c:
lea esp, [ebp - 0xc]
mov eax, esi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000067a6:
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
call fcn_000065f0  ; call 0x65f0
mov edx, edi
add esp, 0x10
cmp dl, al
je short loc_000067e8  ; je 0x67e8
call fcn_00015479  ; call 0x15479
mov bl, 1
test al, al
je short loc_000067e8  ; je 0x67e8
push edx
push edx
push ref_0002190b  ; push 0x2190b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000067e8:
sub esp, 0xc
push esi
call fcn_0000649b  ; call 0x649b
add esp, 0x10
cmp byte [ebp - 0x1c], al
je short loc_00006815  ; je 0x6815
call fcn_00015479  ; call 0x15479
mov bl, 1
test al, al
je short loc_00006815  ; je 0x6815
push eax
push eax
push ref_0002192a  ; push 0x2192a
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00006815:
lea esp, [ebp - 0xc]
mov al, bl
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000681f:
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
call fcn_000065f0  ; call 0x65f0
add esp, 0x10
mov dl, al
cmp al, bl
jae near loc_000068c7  ; jae 0x68c7
mov dword [ebp - 0x1c], edx
call fcn_00015479  ; call 0x15479
mov edx, dword [ebp - 0x1c]
test al, al
je short loc_00006869  ; je 0x6869
movzx edx, dl
movzx eax, bl
push edx
push eax
push ref_00021949  ; push 0x21949
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00006869:
push ecx
push edi
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00006437  ; call 0x6437
add esp, 0x10
mov esi, eax
test eax, eax
jns short loc_00006886  ; jns 0x6886
call fcn_00015479  ; call 0x15479
jmp short loc_000068a0  ; jmp 0x68a0

loc_00006886:
sub esp, 0xc
push edi
call fcn_000065f0  ; call 0x65f0
add esp, 0x10
cmp al, bl
jae short loc_000068ad  ; jae 0x68ad
call fcn_00015479  ; call 0x15479
mov esi, 0x80000007

loc_000068a0:
test al, al
je short loc_000068c7  ; je 0x68c7
push edx
push edx
push ref_00021973  ; push 0x21973
jmp short loc_000068bd  ; jmp 0x68bd

loc_000068ad:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000068c7  ; je 0x68c7
push eax
push eax
push ref_00021990  ; push 0x21990

loc_000068bd:
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000068c7:
lea esp, [ebp - 0xc]
mov eax, esi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000068d1:
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
call fcn_000064cd  ; call 0x64cd
add esp, 0x10
test eax, eax
movzx eax, byte [ebp - 0x1c]
mov dword [ebp - 0x1c], eax
js short loc_00006927  ; js 0x6927

loc_00006913:
push dword [ebp - 0x1c]
push esi
push ebx
push edi
call fcn_0000681f  ; call 0x681f
add esp, 0x10
test eax, eax
jns short loc_00006964  ; jns 0x6964
jmp short loc_00006948  ; jmp 0x6948

loc_00006927:
push eax
push dword [ebp - 0x20]
push dword [ebp - 0x1c]
push esi
push ebx
push dword [ebp - 0x28]
push dword [ebp - 0x24]
push edi
call fcn_0000661e  ; call 0x661e
add esp, 0x20
test eax, eax
jns short loc_00006913  ; jns 0x6913
jmp near loc_000069cc  ; jmp 0x69cc

loc_00006948:
push ecx
push dword [ebp - 0x20]
push dword [ebp - 0x1c]
push esi
push ebx
push dword [ebp - 0x28]
push dword [ebp - 0x24]
push edi
call fcn_0000661e  ; call 0x661e
add esp, 0x20
test eax, eax
js short loc_000069cc  ; js 0x69cc

loc_00006964:
push 0
push esi
push ebx
push edi
call fcn_00005d50  ; call 0x5d50
add esp, 0x10
test eax, eax
jns short loc_000069cc  ; jns 0x69cc
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000698f  ; je 0x698f
push edx
push edx
push ref_000219b0  ; push 0x219b0
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000698f:
push eax
push esi
push ebx
push edi
call fcn_00006437  ; call 0x6437
add esp, 0x10
test eax, eax
jns short loc_000069cc  ; jns 0x69cc
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
jmp near fcn_0000661e  ; jmp 0x661e

loc_000069cc:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000069d4:
push ebp
mov ebp, esp
push ebx
sub esp, 0x14
lea eax, [ebp - 0xc]
push eax
push 0
push 0
push ref_0002913c  ; push 0x2913c
call fcn_0001975d  ; call 0x1975d
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00006a34  ; je 0x6a34
test ebx, ebx
jns short loc_00006a34  ; jns 0x6a34
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00006a1c  ; je 0x6a1c
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00006a1c:
push ecx
push ref_000206f4  ; push 0x206f4
push 0x2de
push ref_000219ce  ; push 0x219ce
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00006a34:
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

fcn_00006a46:
push ebp
mov eax, 1
mov ebp, esp
mov edx, dword [ebp + 8]
cmp byte [edx], 2
jbe short loc_00006a68  ; jbe 0x6a68
mov eax, dword [edx + 0xd]
mov edx, 1
mov ax, word [eax + 0x50]
test ax, ax
cmove eax, edx

loc_00006a68:
pop ebp
ret

fcn_00006a6a:
push ebp
mov eax, 2
mov ebp, esp
mov edx, dword [ebp + 8]
cmp byte [edx], 0x12
jbe short loc_00006a8c  ; jbe 0x6a8c
mov eax, dword [edx + 0xd]
mov edx, 2
mov ax, word [eax + 0x67]
test ax, ax
cmove eax, edx

loc_00006a8c:
pop ebp
ret

fcn_00006a8e:
push ebp
mov eax, 0x2710
mov ebp, esp
mov edx, dword [ebp + 8]
cmp byte [edx], 0x12
jbe short loc_00006ab0  ; jbe 0x6ab0
mov eax, dword [edx + 0xd]
mov edx, 0x2710
mov ax, word [eax + 0x65]
test ax, ax
cmove eax, edx

loc_00006ab0:
pop ebp
ret

fcn_00006ab2:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x30
push 0
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
mov esi, eax
lea eax, [eax + 0x504]
add esi, 0xd0c
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
mov dword [esp], esi
mov ebx, eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0xc
push 0
push 0
push 1
shr ebx, 0x10
shr eax, 0x14
and eax, 1
mov byte [ebp - 0x2b], al
call fcn_00016c9a  ; call 0x16c9a
add esp, 0x10
mov dword [ebp - 0x34], eax
and ebx, 3
je short loc_00006b1f  ; je 0x6b1f
cmp ebx, 2
jne short loc_00006b32  ; jne 0x6b32
mov byte [ebp - 0x1e], 8
mov esi, 2
mov byte [ebp - 0x1d], 8
jmp short loc_00006b3b  ; jmp 0x6b3b

loc_00006b1f:
mov byte [ebp - 0x1e], 8
mov esi, 3
mov byte [ebp - 0x1d], 4
mov byte [ebp - 0x1c], 4
jmp short loc_00006b3b  ; jmp 0x6b3b

loc_00006b32:
mov byte [ebp - 0x1e], 0x10
mov esi, 1

loc_00006b3b:
mov eax, dword [ebp + 0xc]
xor ebx, ebx
mov byte [eax], 0

loc_00006b43:
cmp byte [ebp + ebx - 0x1e], 0
je short loc_00006b76  ; je 0x6b76
push eax
push ebx
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
je short loc_00006b76  ; je 0x6b76
mov eax, dword [ebp + 0xc]
mov dl, byte [eax]
movzx eax, dl
inc edx
mov byte [ebp + eax - 0x1b], bl
mov eax, dword [ebp + 0xc]
mov byte [eax], dl

loc_00006b76:
inc ebx
mov eax, esi
cmp al, bl
ja short loc_00006b43  ; ja 0x6b43
mov eax, dword [ebp + 0xc]
cmp byte [eax], 3
jbe short loc_00006baa  ; jbe 0x6baa
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00006ba4  ; je 0x6ba4
push eax
push dword [ebp + 0xc]
push ref_00021a0c  ; push 0x21a0c
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00006ba4:
mov eax, dword [ebp + 0xc]
mov byte [eax], 3

loc_00006baa:
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

loc_00006bc9:
mov edi, dword [ebp + 0xc]
mov al, byte [ebp - 0x2a]
cmp al, byte [edi]
jae near loc_00006e4c  ; jae 0x6e4c
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
call fcn_0000241b  ; call 0x241b
mov dword [esp], ebx
call fcn_0000649b  ; call 0x649b
add esp, 0x10
xor edx, edx
xor ecx, ecx
mov byte [ebp - 0x2c], al
mov byte [ebx + 0x1c], al

loc_00006c25:
mov byte [ebp - 0x30], dl
cmp dl, byte [ebp - 0x2c]
jae short loc_00006c64  ; jae 0x6c64
mov eax, dword [ebp + 0x10]
cmp byte [eax], 0
je short loc_00006c40  ; je 0x6c40
cmp byte [ebp - 0x30], 1
ja short loc_00006c40  ; ja 0x6c40
dec byte [ebx + 0x1c]
jmp short loc_00006c61  ; jmp 0x6c61

loc_00006c40:
cmp cl, 0xf
ja short loc_00006c60  ; ja 0x6c60
cmp byte [ebp - 0x2b], 0
movzx esi, cl
jne short loc_00006c56  ; jne 0x6c56
mov al, byte [ebp - 0x30]
add al, byte [ebp - 0x29]
jmp short loc_00006c5c  ; jmp 0x6c5c

loc_00006c56:
mov al, byte [ebp - 0x29]
sub eax, dword [ebp - 0x30]

loc_00006c5c:
mov byte [ebx + esi + 0xc], al

loc_00006c60:
inc ecx

loc_00006c61:
inc edx
jmp short loc_00006c25  ; jmp 0x6c25

loc_00006c64:
cmp byte [ebx + 0x1c], 0x10
jbe short loc_00006c8f  ; jbe 0x6c8f
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00006c8b  ; je 0x6c8b
push eax
movzx eax, byte [ebx + 0x1c]
push eax
push ref_00021a53  ; push 0x21a53
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00006c8b:
mov byte [ebx + 0x1c], 0x10

loc_00006c8f:
push eax
push edi
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
mov esi, eax
lea eax, [eax + 0xac]
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
mov edx, eax
and edx, 0xf
cmp edx, 3
mov dword [ebp - 0x30], edx
je short loc_00006ce7  ; je 0x6ce7
call fcn_00015479  ; call 0x15479
mov edx, dword [ebp - 0x30]
test al, al
je short loc_00006cde  ; je 0x6cde
push edx
push edi
push 1
push 0
push edi
push 1
push ref_00021a89  ; push 0x21a89
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_00006cde:
mov byte [ebx + 0xb], 0
jmp near loc_00006e2c  ; jmp 0x6e2c

loc_00006ce7:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00006d08  ; je 0x6d08
push eax
push edi
push 1
push 0
push edi
push 1
push ref_00021ad4  ; push 0x21ad4
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_00006d08:
push ecx
push 0x10100
push 0xff0000ff
lea eax, [esi + 0x18]
add esi, 0x11a
push eax
mov dword [ebp - 0x30], eax
call fcn_00018b68  ; call 0x18b68
pop eax
pop edx
push 0
push dword [ebp - 0x34]
call fcn_00017e04  ; call 0x17e04
pop ecx
push dword [ebp - 0x34]
call fcn_00017e4e  ; call 0x17e4e
mov dword [ebx + 7], eax
mov dword [esp], esi
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test al, 2
je short loc_00006d85  ; je 0x6d85
mov byte [ebx + 0xb], 0
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00006d72  ; je 0x6d72
push 3
push edi
push 1
push 0
push edi
push 1
push ref_00021b06  ; push 0x21b06
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_00006d72:
push edx
push edi
push 1
push 0
call fcn_0000241b  ; call 0x241b
add esp, 0x10
jmp near loc_00006e1a  ; jmp 0x6e1a

loc_00006d85:
push 0x10
push 0
push 0
push 1
call fcn_00002862  ; call 0x2862
add esp, 0x10
test eax, eax
jne short loc_00006db7  ; jne 0x6db7
mov byte [ebx + 0xb], 0
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00006e1a  ; je 0x6e1a
push 3
push edi
push 1
push 0
push edi
push 1
push ref_00021b4c  ; push 0x21b4c
jmp short loc_00006e10  ; jmp 0x6e10

loc_00006db7:
add eax, dword [ebp - 0x38]
sub esp, 0xc
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
mov dl, al
and eax, 0xf
and edx, 0xf
mov esi, eax
mov byte [ebx + 6], dl
cmp eax, 2
ja short loc_00006df5  ; ja 0x6df5
mov byte [ebx + 0xb], 0
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00006e1a  ; je 0x6e1a
push esi
push edi
push 1
push 0
push edi
push 1
push ref_00021b9b  ; push 0x21b9b
jmp short loc_00006e10  ; jmp 0x6e10

loc_00006df5:
mov byte [ebx + 0xb], 1
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00006e1a  ; je 0x6e1a
push esi
push edi
push 1
push 0
push edi
push 1
push ref_00021be5  ; push 0x21be5

loc_00006e10:
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_00006e1a:
push eax
push eax
push 0xff0000ff
push dword [ebp - 0x30]
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10

loc_00006e2c:
mov al, byte [ebp + edi - 0x1e]
mov cl, byte [ebp - 0x29]
lea edx, [ecx + eax]
sub ecx, eax
cmp byte [ebp - 0x2b], 0
mov al, cl
cmovne edx, eax
mov byte [ebp - 0x29], dl
inc byte [ebp - 0x2a]
jmp near loc_00006bc9  ; jmp 0x6bc9

loc_00006e4c:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00006e54:
push ebp
mov ebp, esp
mov edx, dword [ebp + 8]
cmp byte [ebp + 0xc], 0
mov al, dl
je short loc_00006e66  ; je 0x6e66
mov al, 0xf
sub eax, edx

loc_00006e66:
pop ebp
ret

fcn_00006e68:
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
call fcn_00007c07  ; call 0x7c07
sub eax, dword [ebp + 0x20]
leave
ret

fcn_00006e92:
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
call fcn_00006a6a  ; call 0x6a6a
push esi
push esi
push 1
mov esi, eax
call fcn_0000968c  ; call 0x968c
add esp, 0x10
test eax, eax
js near loc_000070f3  ; js 0x70f3
mov eax, dword [ebp + 0x20]
mov dword [ebp - 0x4c], eax
movzx eax, si
mov dword [ebp - 0x58], eax
movzx eax, bl
mov dword [ebp - 0x50], eax

loc_00006edd:
mov al, byte [ebp - 0x4c]
sub eax, dword [ebp + 0x20]
cmp al, byte [ebp - 0x53]
jae near loc_000070e6  ; jae 0x70e6
push ecx
push ecx
lea eax, [ebp - 0x39]
push eax
mov eax, dword [ebp - 0x4c]
movzx ebx, byte [eax]
push ebx
call fcn_0000996b  ; call 0x996b
mov eax, dword [ebp + 0x34]
add esp, 0x10
mov byte [ebp - 0x51], 0
lea eax, [eax + ebx*4]
xor ebx, ebx
mov dword [ebp - 0x60], eax

loc_00006f10:
test bl, bl
jne near loc_000070de  ; jne 0x70de
cmp byte [ebp - 0x51], 2
ja near loc_000070de  ; ja 0x70de
push eax
push eax
movzx eax, byte [edi + 2]
push eax
push dword [ebp + 0x1c]
call fcn_00007c07  ; call 0x7c07
mov esi, eax
pop eax
pop edx
lea eax, [ebp - 0x39]
push eax
push 5
call fcn_00009a23  ; call 0x9a23
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00006f87  ; je 0x6f87
test ebx, ebx
jns short loc_00006f87  ; jns 0x6f87
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00006f6f  ; je 0x6f6f
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00006f6f:
push eax
push ref_000206f4  ; push 0x206f4
push 0x350
push ref_00021c15  ; push 0x21c15
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00006f87:
push ebx
push esi
push edi
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00006e68  ; call 0x6e68
add esp, 0x20
cmp eax, dword [ebp - 0x58]
jb short loc_00006fad  ; jb 0x6fad

loc_00006fa6:
xor ebx, ebx
jmp near loc_0000706f  ; jmp 0x706f

loc_00006fad:
movzx ebx, byte [ebp - 0x52]
push ecx
push dword [ebp - 0x50]
push ebx
push edi
call fcn_000067a6  ; call 0x67a6
add esp, 0x10
test al, al
jne short loc_00006fa6  ; jne 0x6fa6
push eax
push eax
movzx eax, byte [edi + 2]
push eax
push dword [ebp + 0x1c]
call fcn_00007c07  ; call 0x7c07
mov dword [ebp - 0x5c], eax
pop eax
pop edx
lea eax, [ebp - 0x39]
push eax
push 0xfffffffffffffffa
call fcn_00009a23  ; call 0x9a23
mov esi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00007029  ; je 0x7029
test esi, esi
jns short loc_00007029  ; jns 0x7029
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00007011  ; je 0x7011
push eax
push esi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00007011:
push eax
push ref_000206f4  ; push 0x206f4
push 0x35f
push ref_00021c15  ; push 0x21c15
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00007029:
push esi
push dword [ebp - 0x5c]
push edi
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00006e68  ; call 0x6e68
add esp, 0x20
cmp eax, dword [ebp - 0x58]
jae near loc_00006fa6  ; jae 0x6fa6
push ecx
push dword [ebp - 0x50]
push ebx
push edi
call fcn_000067a6  ; call 0x67a6
add esp, 0x10
test al, al
jne near loc_00006fa6  ; jne 0x6fa6
mov eax, dword [ebp - 0x60]
mov bl, 1
mov dword [eax], 0xbb8

loc_0000706f:
sub esp, 0xc
lea eax, [ebp - 0x39]
push eax
call fcn_00009a00  ; call 0x9a00
movzx eax, byte [ebp - 0x52]
add esp, 0x10
mov byte [ebp - 0x5c], 3
mov dword [ebp - 0x64], eax

loc_00007089:
push edx
push dword [ebp - 0x50]
push dword [ebp - 0x64]
push edi
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_000068d1  ; call 0x68d1
add esp, 0x20
mov esi, eax
test eax, eax
jns short loc_000070d6  ; jns 0x70d6
push eax
mov eax, dword [ebp + 0x14]
push 0x2710
push dword [ebp + 0x14]
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
add esp, 0x10
dec byte [ebp - 0x5c]
jne short loc_00007089  ; jne 0x7089
sub esp, 0xc
push 0
call fcn_0000968c  ; call 0x968c
add esp, 0x10
mov eax, esi
jmp short loc_000070f3  ; jmp 0x70f3

loc_000070d6:
inc byte [ebp - 0x51]
jmp near loc_00006f10  ; jmp 0x6f10

loc_000070de:
inc dword [ebp - 0x4c]
jmp near loc_00006edd  ; jmp 0x6edd

loc_000070e6:
sub esp, 0xc
push 0
call fcn_0000968c  ; call 0x968c
add esp, 0x10

loc_000070f3:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000070fb:
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

fcn_00007115:
push ebp
xor eax, eax
mov ebp, esp
mov ecx, dword [ebp + 8]
push esi
push ebx
test ecx, ecx
je short loc_0000715e  ; je 0x715e
xor ebx, ebx
mov esi, 0xa9e

loc_0000712a:
cmp ecx, 0x10f
jbe short loc_00007143  ; jbe 0x7143
imul eax, ecx, 0x3e8
xor edx, edx
add ebx, 0x64
div esi
mov ecx, eax
jmp short loc_0000712a  ; jmp 0x712a

loc_00007143:
imul eax, ecx, 0xfffffff0
xor edx, edx
add eax, 0x2d3a
imul eax, ecx
mov ecx, 0x2710
sub eax, 0xeefac
div ecx
add eax, ebx

loc_0000715e:
pop ebx
pop esi
pop ebp
ret

fcn_00007162:
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
call fcn_00007115  ; call 0x7115
cmp esi, 0x9c40
cmova esi, ebx
imul esi, esi, 0x64
mov dword [ebp - 0x10], eax
mov dword [esp], esi
call fcn_00007115  ; call 0x7115
cmp dword [ebp + 0x10], 0x9c40
cmovbe ebx, dword [ebp + 0x10]
imul ebx, ebx, 0x64
mov esi, eax
mov dword [esp], ebx
call fcn_00007115  ; call 0x7115
test edi, edi
pop edx
mov edx, dword [ebp - 0x10]
mov ebx, eax
js short loc_000071e6  ; js 0x71e6
cmp esi, eax
lea ecx, [edi - 1]
jne short loc_000071cd  ; jne 0x71cd
imul eax, ecx, 0x64
jmp short loc_000071dd  ; jmp 0x71dd

loc_000071cd:
sub edx, eax
sub esi, ebx
imul eax, edx, 0x64
xor edx, edx
imul ecx, ecx, 0x64
div esi
add eax, ecx

loc_000071dd:
xor ecx, ecx
test eax, eax
cmovns ecx, eax
jmp short loc_0000720c  ; jmp 0x720c

loc_000071e6:
cmp esi, eax
lea ecx, [edi + 1]
jne short loc_000071f2  ; jne 0x71f2
imul ecx, ecx, 0x64
jmp short loc_0000720c  ; jmp 0x720c

loc_000071f2:
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

loc_0000720c:
lea esp, [ebp - 0xc]
mov eax, ecx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00007216:
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
call fcn_00006a46  ; call 0x6a46
mov ecx, dword [ebp + 0x20]
pop edi
mov dword [ebp - 0x40], ebx
mov dword [ebp - 0x38], ecx
movzx eax, ax
mov dword [ebp - 0x34], eax

loc_0000724d:
mov bl, byte [ebp - 0x38]
sub ebx, dword [ebp + 0x20]
cmp bl, byte [ebp - 0x42]
jae near loc_00007694  ; jae 0x7694
mov eax, dword [ebp - 0x38]
mov ecx, dword [ebp + 0x38]
cmp byte [ebp - 0x41], 0
movzx eax, byte [eax]
mov byte [ebp - 0x19], al
mov dword [ecx + eax*4], 0
je short loc_00007297  ; je 0x7297
mov esi, dword [ebp + 0xc]
push edx
push edx
mov edx, dword [esi + 1]
push dword [edx + 4]
push eax
call fcn_00009584  ; call 0x9584
movzx eax, byte [ebp - 0x19]
pop ecx
pop esi
push 1
push eax
call fcn_00009521  ; call 0x9521
add esp, 0x10

loc_00007297:
test bl, bl
je short loc_000072b8  ; je 0x72b8
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
jmp short loc_000072ba  ; jmp 0x72ba

loc_000072b8:
xor esi, esi

loc_000072ba:
mov byte [ebp - 0x2b], 0
mov byte [ebp - 0x29], 1
mov dword [ebp - 0x3c], 0xffffffff
mov byte [ebp - 0x2a], 0

loc_000072cd:
cmp byte [ebp - 0x2b], 0x1d
ja near loc_00007620  ; ja 0x7620
cmp byte [ebp - 0x2a], 1
ja near loc_00007620  ; ja 0x7620
push eax
push eax
mov eax, dword [ebp + 0x28]
inc byte [ebp - 0x2b]
movzx eax, byte [eax + 2]
push eax
push dword [ebp + 0x1c]
call fcn_00007c07  ; call 0x7c07
add esp, 0xc
mov edi, eax
mov eax, esi
movzx eax, al
push eax
push 1
lea eax, [ebp - 0x19]
push eax
call fcn_00009c03  ; call 0x9c03
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00007353  ; je 0x7353
test ebx, ebx
jns short loc_00007353  ; jns 0x7353
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000733b  ; je 0x733b
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000733b:
push eax
push ref_000206f4  ; push 0x206f4
push 0x1f0
push ref_00021c15  ; push 0x21c15
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00007353:
push eax
push edi
push dword [ebp + 0x28]
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00006e68  ; call 0x6e68
add esp, 0x20
mov edi, eax
cmp eax, dword [ebp - 0x34]
jb short loc_0000738c  ; jb 0x738c
test esi, esi
jne short loc_00007392  ; jne 0x7392
movzx eax, byte [ebp - 0x19]
mov bl, 1
mov ecx, dword [ebp + 0x38]
mov dword [ecx + eax*4], 0
jmp short loc_00007398  ; jmp 0x7398

loc_0000738c:
mov byte [ebp - 0x29], 1
jmp short loc_00007396  ; jmp 0x7396

loc_00007392:
mov byte [ebp - 0x29], 0xff

loc_00007396:
xor ebx, ebx

loc_00007398:
mov al, byte [ebp - 0x29]
add eax, esi
mov byte [ebp - 0x30], al
movzx eax, byte [ebp - 0x2c]
mov dword [ebp - 0x4c], eax

loc_000073a7:
test bl, 1
jne near loc_000074fc  ; jne 0x74fc
cmp byte [ebp - 0x30], 0x18
ja near loc_000074fc  ; ja 0x74fc
push ebx
push dword [ebp - 0x40]
push dword [ebp - 0x4c]
push dword [ebp + 0x28]
call fcn_000067a6  ; call 0x67a6
add esp, 0x10
mov bl, al
test al, al
je short loc_00007408  ; je 0x7408
cmp byte [ebp - 0x29], 0xff
je near loc_0000751b  ; je 0x751b
cmp byte [ebp - 0x30], 0
movzx eax, byte [ebp - 0x19]
jne short loc_000073f5  ; jne 0x73f5
mov esi, dword [ebp + 0x38]
mov dword [esi + eax*4], 0
jmp near loc_0000752a  ; jmp 0x752a

loc_000073f5:
movsx edx, byte [ebp - 0x30]
mov esi, dword [ebp + 0x38]
dec edx
imul edx, edx, 0x64
mov dword [esi + eax*4], edx
jmp near loc_0000752a  ; jmp 0x752a

loc_00007408:
mov eax, dword [ebp + 0x28]
push ecx
push ecx
movzx eax, byte [eax + 2]
push eax
push dword [ebp + 0x1c]
call fcn_00007c07  ; call 0x7c07
add esp, 0xc
mov dword [ebp - 0x48], eax
movzx eax, byte [ebp - 0x30]
push eax
push 1
lea eax, [ebp - 0x19]
push eax
call fcn_00009c03  ; call 0x9c03
mov esi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00007477  ; je 0x7477
test esi, esi
jns short loc_00007477  ; jns 0x7477
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000745f  ; je 0x745f
push edx
push esi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000745f:
push eax
push ref_000206f4  ; push 0x206f4
push 0x21b
push ref_00021c15  ; push 0x21c15
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00007477:
push eax
push dword [ebp - 0x48]
push dword [ebp + 0x28]
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00006e68  ; call 0x6e68
add esp, 0x20
cmp byte [ebp - 0x29], 0xff
mov esi, eax
jne short loc_000074c2  ; jne 0x74c2
cmp eax, dword [ebp - 0x34]
jae short loc_000074ef  ; jae 0x74ef
movzx eax, byte [ebp - 0x19]
mov ecx, dword [ebp + 0x38]
lea ebx, [ecx + eax*4]
movsx eax, byte [ebp - 0x30]
push eax
push esi
push edi
push dword [ebp - 0x34]
call fcn_00007162  ; call 0x7162
add esp, 0x10
mov dword [ebx], eax
jmp short loc_00007541  ; jmp 0x7541

loc_000074c2:
cmp eax, dword [ebp - 0x34]
jb short loc_000074ef  ; jb 0x74ef
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
call fcn_00007162  ; call 0x7162
mov edx, dword [ebp - 0x48]
add esp, 0x10
mov dword [edx], eax
jmp short loc_0000752a  ; jmp 0x752a

loc_000074ef:
mov al, byte [ebp - 0x29]
mov edi, esi
add byte [ebp - 0x30], al
jmp near loc_000073a7  ; jmp 0x73a7

loc_000074fc:
cmp byte [ebp - 0x29], 0xff
jne short loc_0000752a  ; jne 0x752a
cmp edi, dword [ebp - 0x34]
jb short loc_00007541  ; jb 0x7541
test bl, bl
jne short loc_00007541  ; jne 0x7541
movzx eax, byte [ebp - 0x19]
mov esi, dword [ebp + 0x38]
mov dword [esi + eax*4], 0
jmp short loc_00007541  ; jmp 0x7541

loc_0000751b:
mov byte [ebp - 0x29], 1
mov dword [ebp - 0x3c], 0xffffffff
mov byte [ebp - 0x2a], 0

loc_0000752a:
cmp edi, dword [ebp - 0x34]
jae short loc_00007541  ; jae 0x7541
test bl, bl
jne short loc_00007541  ; jne 0x7541
movzx eax, byte [ebp - 0x19]
mov ecx, dword [ebp + 0x38]
mov dword [ecx + eax*4], 0x9c4

loc_00007541:
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
je short loc_00007584  ; je 0x7584
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

loc_00007584:
movzx ebx, byte [ebp - 0x2c]
push eax
push dword [ebp - 0x40]
push ebx
push dword [ebp + 0x28]
call fcn_000067a6  ; call 0x67a6
add esp, 0x10
test al, al
je short loc_000075f1  ; je 0x75f1
push eax
push 0
push 1
lea eax, [ebp - 0x19]
push eax
call fcn_00009c03  ; call 0x9c03
mov edi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_000075f1  ; je 0x75f1
test edi, edi
jns short loc_000075f1  ; jns 0x75f1
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000075d9  ; je 0x75d9
push eax
push edi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000075d9:
push eax
push ref_000206f4  ; push 0x206f4
push 0x252
push ref_00021c15  ; push 0x21c15
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000075f1:
push edi
push dword [ebp - 0x40]
push ebx
push dword [ebp + 0x28]
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_000068d1  ; call 0x68d1
add esp, 0x20
test eax, eax
js near loc_00007696  ; js 0x7696
mov eax, dword [ebp - 0x30]
mov dword [ebp - 0x3c], eax
jmp near loc_000072cd  ; jmp 0x72cd

loc_00007620:
push ebx
push 0
push 1
lea eax, [ebp - 0x19]
push eax
call fcn_00009c03  ; call 0x9c03
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00007675  ; je 0x7675
test ebx, ebx
jns short loc_00007675  ; jns 0x7675
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000765d  ; je 0x765d
push ecx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000765d:
push edx
push ref_000206f4  ; push 0x206f4
push 0x262
push ref_00021c15  ; push 0x21c15
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00007675:
cmp byte [ebp - 0x41], 0
je short loc_0000768c  ; je 0x768c
push eax
push eax
movzx eax, byte [ebp - 0x19]
push 0
push eax
call fcn_00009521  ; call 0x9521
add esp, 0x10

loc_0000768c:
inc dword [ebp - 0x38]
jmp near loc_0000724d  ; jmp 0x724d

loc_00007694:
xor eax, eax

loc_00007696:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000769e:
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
call fcn_00006a46  ; call 0x6a46
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

loc_000076ed:
cmp byte [ebp - 0x1b], 0x1d
ja near loc_00007a4d  ; ja 0x7a4d
cmp byte [ebp - 0x1a], 1
ja near loc_00007a4d  ; ja 0x7a4d
push eax
push eax
movzx eax, byte [edi + 2]
inc byte [ebp - 0x1b]
push eax
push dword [ebp + 0x1c]
call fcn_00007c07  ; call 0x7c07
add esp, 0xc
mov esi, eax
movzx eax, byte [ebp - 0x20]
push eax
push dword [ebp - 0x30]
push dword [ebp + 0x20]
call fcn_00009c03  ; call 0x9c03
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000776f  ; je 0x776f
test ebx, ebx
jns short loc_0000776f  ; jns 0x776f
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00007757  ; je 0x7757
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00007757:
push eax
push ref_000206f4  ; push 0x206f4
push 0x29f
push ref_00021c15  ; push 0x21c15
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000776f:
push eax
push esi
push edi
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00006e68  ; call 0x6e68
mov ecx, dword [ebp - 0x24]
add esp, 0x20
mov dword [ebp - 0x28], eax
cmp eax, ecx
jb short loc_000077ab  ; jb 0x77ab
cmp dword [ebp - 0x20], 0
jne short loc_000077b1  ; jne 0x77b1
movzx eax, byte [edi + 2]
mov bl, 1
mov ecx, dword [ebp + 0x34]
mov dword [ecx + eax*4], 0
jmp short loc_000077b7  ; jmp 0x77b7

loc_000077ab:
mov byte [ebp - 0x19], 1
jmp short loc_000077b5  ; jmp 0x77b5

loc_000077b1:
mov byte [ebp - 0x19], 0xff

loc_000077b5:
xor ebx, ebx

loc_000077b7:
mov al, byte [ebp - 0x20]
add al, byte [ebp - 0x19]
mov byte [ebp - 0x20], al
movzx eax, byte [ebp - 0x31]
mov dword [ebp - 0x40], eax
movzx eax, byte [ebp - 0x1c]
mov dword [ebp - 0x44], eax

loc_000077ce:
test bl, 1
jne near loc_00007921  ; jne 0x7921
cmp byte [ebp - 0x20], 0x18
ja near loc_00007921  ; ja 0x7921
push eax
push dword [ebp - 0x40]
push dword [ebp - 0x44]
push edi
call fcn_000067a6  ; call 0x67a6
add esp, 0x10
test al, al
mov bl, al
movzx eax, byte [edi + 2]
je short loc_0000782d  ; je 0x782d
cmp byte [ebp - 0x19], 0
js near loc_00007943  ; js 0x7943
cmp byte [ebp - 0x20], 0
jne short loc_0000781a  ; jne 0x781a
mov ecx, dword [ebp + 0x34]
mov dword [ecx + eax*4], 0
jmp near loc_00007952  ; jmp 0x7952

loc_0000781a:
movsx edx, byte [ebp - 0x20]
mov ecx, dword [ebp + 0x34]
dec edx
imul edx, edx, 0x64
mov dword [ecx + eax*4], edx
jmp near loc_00007952  ; jmp 0x7952

loc_0000782d:
push esi
push esi
push eax
push dword [ebp + 0x1c]
call fcn_00007c07  ; call 0x7c07
add esp, 0xc
mov dword [ebp - 0x38], eax
movzx eax, byte [ebp - 0x20]
push eax
push dword [ebp - 0x30]
push dword [ebp + 0x20]
call fcn_00009c03  ; call 0x9c03
mov esi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00007895  ; je 0x7895
test esi, esi
jns short loc_00007895  ; jns 0x7895
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000787d  ; je 0x787d
push ecx
push esi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000787d:
push edx
push ref_000206f4  ; push 0x206f4
push 0x2ca
push ref_00021c15  ; push 0x21c15
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00007895:
push eax
push dword [ebp - 0x38]
push edi
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00006e68  ; call 0x6e68
add esp, 0x20
cmp byte [ebp - 0x19], 0
mov esi, eax
jns short loc_000078e3  ; jns 0x78e3
cmp eax, dword [ebp - 0x24]
jae short loc_00007913  ; jae 0x7913
movzx eax, byte [edi + 2]
mov ebx, dword [ebp + 0x34]
lea ebx, [ebx + eax*4]
movsx eax, byte [ebp - 0x20]
push eax
push esi
push dword [ebp - 0x28]
push dword [ebp - 0x24]
call fcn_00007162  ; call 0x7162
add esp, 0x10
mov dword [ebx], eax
jmp near loc_0000796c  ; jmp 0x796c

loc_000078e3:
cmp eax, dword [ebp - 0x24]
jb short loc_00007913  ; jb 0x7913
movzx eax, byte [edi + 2]
mov edx, dword [ebp + 0x34]
lea edx, [edx + eax*4]
movsx eax, byte [ebp - 0x20]
mov dword [ebp - 0x38], edx
push eax
push dword [ebp - 0x28]
push esi
push dword [ebp - 0x24]
call fcn_00007162  ; call 0x7162
mov edx, dword [ebp - 0x38]
add esp, 0x10
mov dword [ebp - 0x28], esi
mov dword [edx], eax
jmp short loc_00007952  ; jmp 0x7952

loc_00007913:
mov al, byte [ebp - 0x19]
add byte [ebp - 0x20], al
mov dword [ebp - 0x28], esi
jmp near loc_000077ce  ; jmp 0x77ce

loc_00007921:
cmp byte [ebp - 0x19], 0
jns short loc_00007952  ; jns 0x7952
mov eax, dword [ebp - 0x24]
cmp dword [ebp - 0x28], eax
jb short loc_0000796c  ; jb 0x796c
test bl, bl
jne short loc_0000796c  ; jne 0x796c
movzx eax, byte [edi + 2]
mov ebx, dword [ebp + 0x34]
mov dword [ebx + eax*4], 0
jmp short loc_0000796c  ; jmp 0x796c

loc_00007943:
mov byte [ebp - 0x19], 1
mov dword [ebp - 0x2c], 0xffffffff
mov byte [ebp - 0x1a], 0

loc_00007952:
mov eax, dword [ebp - 0x24]
cmp dword [ebp - 0x28], eax
jae short loc_0000796c  ; jae 0x796c
test bl, bl
jne short loc_0000796c  ; jne 0x796c
movzx eax, byte [edi + 2]
mov ebx, dword [ebp + 0x34]
mov dword [ebx + eax*4], 0x9c4

loc_0000796c:
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
je short loc_000079b4  ; je 0x79b4
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

loc_000079b4:
movzx esi, byte [ebp - 0x31]
movzx ebx, byte [ebp - 0x1c]
push eax
push esi
push ebx
push edi
call fcn_000067a6  ; call 0x67a6
add esp, 0x10
test al, al
je short loc_00007a26  ; je 0x7a26
push eax
push 0
push dword [ebp - 0x30]
push dword [ebp + 0x20]
call fcn_00009c03  ; call 0x9c03
mov dword [ebp - 0x2c], eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00007a26  ; je 0x7a26
cmp dword [ebp - 0x2c], 0
jns short loc_00007a26  ; jns 0x7a26
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00007a0e  ; je 0x7a0e
push eax
push dword [ebp - 0x2c]
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00007a0e:
push eax
push ref_000206f4  ; push 0x206f4
push 0x301
push ref_00021c15  ; push 0x21c15
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00007a26:
push eax
push esi
push ebx
push edi
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_000068d1  ; call 0x68d1
add esp, 0x20
test eax, eax
js short loc_00007aaa  ; js 0x7aaa
mov eax, dword [ebp - 0x28]
mov dword [ebp - 0x2c], eax
jmp near loc_000076ed  ; jmp 0x76ed

loc_00007a4d:
movzx eax, byte [ebp - 0x3c]
push ecx
push 0
push eax
push dword [ebp + 0x20]
call fcn_00009c03  ; call 0x9c03
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
xor edx, edx
test al, al
je short loc_00007aac  ; je 0x7aac
test ebx, ebx
jns short loc_00007aac  ; jns 0x7aac
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00007a8e  ; je 0x7a8e
push edx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00007a8e:
push eax
push ref_000206f4  ; push 0x206f4
push 0x311
push ref_00021c15  ; push 0x21c15
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
xor edx, edx
jmp short loc_00007aac  ; jmp 0x7aac

loc_00007aaa:
mov edx, eax

loc_00007aac:
lea esp, [ebp - 0xc]
mov eax, edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00007ab6:
push ebp
xor eax, eax
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov edx, dword [ebp + 0x20]
mov ecx, dword [ebp + 0x24]

loc_00007ac7:
mov edi, dword [ebp + 0x2c]
mov dword [edi + eax], 0xffffffff
add eax, 4
cmp eax, 0x40
jne short loc_00007ac7  ; jne 0x7ac7
movzx eax, cl
xor edi, edi
shl eax, 5
lea eax, [edx + eax + 0xc]
lea esi, [edx + 0xc]
mov dword [ebp - 0x20], eax

loc_00007aeb:
cmp esi, dword [ebp - 0x20]
je near loc_00007bfd  ; je 0x7bfd
mov al, byte [esi + 0x10]
cmp byte [esi + 0x11], 0
mov byte [ebp - 0x19], al
je near loc_00007bf5  ; je 0x7bf5
cmp byte [esi + 0x12], 1
je near loc_00007bf5  ; je 0x7bf5
cmp byte [esi - 1], 0
mov cl, 3
lea ebx, [esi - 0xc]
jne short loc_00007b27  ; jne 0x7b27
sub esp, 0xc
push ebx
call fcn_000065f0  ; call 0x65f0
add esp, 0x10
mov cl, al

loc_00007b27:
sub esp, 0xc
push ebx
mov dword [ebp - 0x24], ecx
call fcn_0000649b  ; call 0x649b
add esp, 0x10
mov ecx, dword [ebp - 0x24]
cmp dword [ebp + 0x28], 1
je short loc_00007bab  ; je 0x7bab
jb short loc_00007b76  ; jb 0x7b76
cmp dword [ebp + 0x28], 2
jne near loc_00007bdb  ; jne 0x7bdb
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
call fcn_00006e92  ; call 0x6e92
jmp short loc_00007bd4  ; jmp 0x7bd4

loc_00007b76:
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
call fcn_00007216  ; call 0x7216
add esp, 0x40
mov edi, eax
jmp short loc_00007bf5  ; jmp 0x7bf5

loc_00007bab:
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
call fcn_0000769e  ; call 0x769e

loc_00007bd4:
mov edi, eax
add esp, 0x30
jmp short loc_00007bf5  ; jmp 0x7bf5

loc_00007bdb:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00007bf5  ; je 0x7bf5
push eax
push eax
push ref_00021c47  ; push 0x21c47
push 2
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00007bf5:
add esi, 0x20
jmp near loc_00007aeb  ; jmp 0x7aeb

loc_00007bfd:
lea esp, [ebp - 0xc]
mov eax, edi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00007c07:
push ebp
mov ebp, esp
movzx eax, byte [ebp + 0xc]
mov edx, dword [ebp + 8]
shl eax, 4
lea eax, [edx + eax + 0xc]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00017e4e  ; jmp 0x17e4e

fcn_00007c21:
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
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 1
push 1
push 0
mov esi, eax
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 2
push 1
push 0
mov edi, eax
call fcn_00016c9a  ; call 0x16c9a
mov dword [ebp - 0x1c], eax
pop eax
pop edx
lea eax, [ebx + 0x6430]
push 3
push eax
call fcn_00017e8f  ; call 0x17e8f
pop ecx
pop eax
lea eax, [ebx + 0x6434]
add ebx, 0x6438
push 0x76543210
push eax
call fcn_00017e8f  ; call 0x17e8f
pop eax
pop edx
lea eax, [esi + 0x630]
push 0xb
push eax
call fcn_00017e8f  ; call 0x17e8f
pop ecx
pop eax
lea eax, [esi + 0x600]
add esi, 0x604
push 0x60b
push eax
call fcn_00017e8f  ; call 0x17e8f
pop eax
pop edx
push 0x76543980
push esi
call fcn_00017e8f  ; call 0x17e8f
lea eax, [edi + 0x600]
add edi, 0x604
pop ecx
pop esi
push 0x60b
push eax
call fcn_00017e8f  ; call 0x17e8f
pop eax
pop edx
push 0x76543280
push edi
call fcn_00017e8f  ; call 0x17e8f
mov edi, dword [ebp - 0x1c]
pop ecx
pop esi
mov eax, edi
push 0xb
add eax, 0x600
push eax
call fcn_00017e8f  ; call 0x17e8f
pop eax
mov eax, edi
pop edx
add eax, 0x604
push 0x76543210
push eax
call fcn_00017e8f  ; call 0x17e8f
pop ecx
pop esi
push 0x680000
push ebx
call fcn_00017e8f  ; call 0x17e8f
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
jmp near fcn_00017e8f  ; jmp 0x17e8f

fcn_00007d3c:
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
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 1
push 1
push 0
mov esi, eax
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 2
push 1
push 0
mov edi, eax
call fcn_00016c9a  ; call 0x16c9a
mov dword [ebp - 0x1c], eax
pop eax
pop edx
lea eax, [ebx + 0x6430]
push 0
push eax
call fcn_00017e8f  ; call 0x17e8f
pop ecx
pop eax
lea eax, [ebx + 0x6434]
add ebx, 0x6438
push 0
push eax
call fcn_00017e8f  ; call 0x17e8f
pop eax
pop edx
lea eax, [esi + 0x630]
push 0
push eax
call fcn_00017e8f  ; call 0x17e8f
pop ecx
pop eax
lea eax, [esi + 0x600]
add esi, 0x604
push 0
push eax
call fcn_00017e8f  ; call 0x17e8f
pop eax
pop edx
push 0
push esi
call fcn_00017e8f  ; call 0x17e8f
lea eax, [edi + 0x600]
add edi, 0x604
pop ecx
pop esi
push 0
push eax
call fcn_00017e8f  ; call 0x17e8f
pop eax
pop edx
push 0
push edi
call fcn_00017e8f  ; call 0x17e8f
mov edi, dword [ebp - 0x1c]
pop ecx
pop esi
mov eax, edi
push 0
add eax, 0x600
push eax
call fcn_00017e8f  ; call 0x17e8f
pop eax
mov eax, edi
pop edx
add eax, 0x604
push 0
push eax
call fcn_00017e8f  ; call 0x17e8f
pop ecx
pop esi
push 0
push ebx
call fcn_00017e8f  ; call 0x17e8f
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
jmp near fcn_00017e8f  ; jmp 0x17e8f

fcn_00007e42:
push ebp
mov ebp, esp
push ebx
sub esp, 8
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0x60
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
pop edx
pop ecx
push 0x4000
mov ebx, eax
and ebx, 0xfffffff8
lea eax, [ebx + 0x54]
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0xc
push 0
push 0xfed85000
lea eax, [ebx + 0x38010]
add ebx, 0x38004
push eax
call fcn_00017f28  ; call 0x17f28
pop eax
pop edx
push 2
push ebx
call fcn_00018927  ; call 0x18927
mov eax, 0xfed85000
mov ebx, dword [ebp - 4]
leave
ret

fcn_00007ea4:
push ebp
mov ebp, esp
push ebx
sub esp, 8
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0x60
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
pop edx
pop ecx
push 0xfffd
mov ebx, eax
and ebx, 0xfffffff8
lea eax, [ebx + 0x38004]
push eax
call fcn_00018954  ; call 0x18954
add esp, 0xc
push 0
push 0xfff
lea eax, [ebx + 0x38010]
add ebx, 0x54
push eax
call fcn_00018d02  ; call 0x18d02
pop eax
pop edx
push 0xffffbfff
push ebx
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10
mov ebx, dword [ebp - 4]
leave
ret

fcn_00007f07:
push ebp
mov ebp, esp
push ebx
sub esp, 0xc
mov ebx, dword [ebp + 8]
push 0x40000
push ebx
call fcn_00017e8f  ; call 0x17e8f
pop eax
pop edx
lea eax, [ebx + 4]
push 0
push eax
call fcn_00017e8f  ; call 0x17e8f
pop ecx
pop eax
lea eax, [ebx + 0x10]
push 0x40000
push eax
call fcn_00017e8f  ; call 0x17e8f
pop eax
pop edx
lea eax, [ebx + 0x14]
push 0
push eax
call fcn_00017e8f  ; call 0x17e8f
pop ecx
pop eax
lea eax, [ebx + 0x20]
push 0x40000
push eax
call fcn_00017e8f  ; call 0x17e8f
pop eax
pop edx
lea eax, [ebx + 0x24]
push 0
push eax
call fcn_00017e8f  ; call 0x17e8f
pop ecx
pop eax
lea eax, [ebx + 8]
push 0xff000000
push eax
call fcn_00017e8f  ; call 0x17e8f
pop eax
pop edx
lea eax, [ebx + 0x18]
push 0xff000000
push eax
call fcn_00017e8f  ; call 0x17e8f
pop ecx
pop eax
lea eax, [ebx + 0x28]
push 0xff000000
push eax
call fcn_00017e8f  ; call 0x17e8f
pop eax
pop edx
lea eax, [ebx + 0xc]
push 0
push eax
call fcn_00017e8f  ; call 0x17e8f
pop ecx
pop eax
lea eax, [ebx + 0x1c]
add ebx, 0x2c
push 0
push eax
call fcn_00017e8f  ; call 0x17e8f
pop eax
pop edx
push 0
push ebx
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10
mov ebx, dword [ebp - 4]
leave
ret

fcn_00007fc2:
push ebp
mov ebp, esp
push ebx
sub esp, 0x10
mov ebx, dword [ebp + 8]
push dword [ebp + 0xc]
call fcn_00007f07  ; call 0x7f07
call fcn_00007ea4  ; call 0x7ea4
mov eax, dword [ebx + 1]
add esp, 0x10
mov ebx, dword [ebp - 4]
mov edx, dword [eax + 0x18]
mov dword [ebp + 0xc], edx
mov eax, dword [eax + 4]
mov dword [ebp + 8], eax
leave
jmp near fcn_00007d3c  ; jmp 0x7d3c

fcn_00007ff4:
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
call fcn_00017e8f  ; call 0x17e8f
pop eax
pop edx
lea eax, [ebx + 0x14]
push 0xa101
push eax
call fcn_00017e8f  ; call 0x17e8f
pop ecx
pop eax
lea eax, [ebx + 0x24]
push 0xa102
push eax
call fcn_00017e8f  ; call 0x17e8f
pop eax
pop edx
push 0x110000
push ebx
call fcn_00017e8f  ; call 0x17e8f
add esp, 0xc
push 0x3e8
push esi
push edi
call dword [esi + 4]  ; ucall
pop ecx
pop esi
push 0x22100
push ebx
call fcn_00017e8f  ; call 0x17e8f
pop edi
pop eax
lea eax, [ebx + 0x10]
add ebx, 0x20
push 0x22101
push eax
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], 0x22102
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017e8f  ; jmp 0x17e8f

fcn_00008087:
push ebp
mov ebp, esp
push ebx
sub esp, 0xc
mov eax, dword [ebp + 0xc]
mov eax, dword [eax + 1]
push dword [eax + 0x18]
push dword [eax + 4]
call fcn_00007c21  ; call 0x7c21
call fcn_00007e42  ; call 0x7e42
mov ebx, eax
mov dword [esp], eax
call fcn_00007f07  ; call 0x7f07
add esp, 0xc
push dword [ebp + 0x10]
push dword [ebp + 8]
push ebx
call fcn_00007ff4  ; call 0x7ff4
mov eax, ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_000080c4:
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
call fcn_00007f07  ; call 0x7f07
add esp, 0x10
mov dword [ebp + 0x10], edi
mov dword [ebp + 0xc], esi
mov dword [ebp + 8], ebx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00007ff4  ; jmp 0x7ff4

fcn_000080f4:
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
ja near loc_00008247  ; ja 0x8247
mov esi, eax
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00008131  ; je 0x8131
push eax
movzx eax, bl
push eax
push ref_00021c67  ; push 0x21c67
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00008131:
mov eax, dword [ebp + 8]
mov al, byte [eax + 0x1d]
test al, al
je near loc_000081c9  ; je 0x81c9
mov edx, dword [ebp + 8]
cmp byte [edx + 0x1f], 0
je short loc_00008190  ; je 0x8190
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00008166  ; je 0x8166
push eax
movzx eax, byte [ebp - 0x1c]
push eax
push ref_00021c7d  ; push 0x21c7d
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00008166:
test edi, edi
je near loc_00008233  ; je 0x8233
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00008188  ; je 0x8188
push eax
push eax
push ref_00021caa  ; push 0x21caa
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00008188:
movzx ebx, bl
mov al, byte [ebp - 0x1c]
jmp short loc_000081c3  ; jmp 0x81c3

loc_00008190:
test edi, edi
je short loc_000081c9  ; je 0x81c9
mov eax, dword [ebp + 0x10]
movzx ebx, bl
mov eax, dword [eax + 0xd]
movzx esi, byte [eax + ebx + 0x19]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000081c1  ; je 0x81c1
push eax
mov eax, esi
movzx eax, al
push eax
push ref_00021c90  ; push 0x21c90
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000081c1:
mov eax, esi

loc_000081c3:
mov byte [edi + ebx + 0x35], al
jmp short loc_00008233  ; jmp 0x8233

loc_000081c9:
mov ecx, dword [ebp + 8]
cmp byte [ecx + 0x1f], 0
jne short loc_000081ff  ; jne 0x81ff
test edi, edi
jne near loc_0000826e  ; jne 0x826e
mov eax, dword [ebp + 0x10]
movzx ebx, bl
mov eax, dword [eax + 0xd]
movzx esi, byte [eax + ebx + 0x19]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00008233  ; je 0x8233
mov eax, esi
movzx eax, al
push ebx
push eax
push ref_00021cc8  ; push 0x21cc8
jmp short loc_00008229  ; jmp 0x8229

loc_000081ff:
mov esi, 7
test al, al
jne short loc_00008233  ; jne 0x8233
test edi, edi
je short loc_00008233  ; je 0x8233

loc_0000820c:
movzx ebx, bl
movzx esi, byte [edi + ebx + 0x35]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00008233  ; je 0x8233
mov eax, esi
movzx eax, al
push ecx
push eax
push ref_00021ce3  ; push 0x21ce3

loc_00008229:
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00008233:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00008279  ; je 0x8279
push edx
push edx
push ref_00021f21  ; push 0x21f21
push 0x40
jmp short loc_00008264  ; jmp 0x8264

loc_00008247:
call fcn_00015479  ; call 0x15479
mov esi, 7
test al, al
je short loc_00008279  ; je 0x8279
movzx ebx, bl
push eax
push ebx
push ref_00021d01  ; push 0x21d01
push 0x80000000

loc_00008264:
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp short loc_00008279  ; jmp 0x8279

loc_0000826e:
mov esi, 7
test al, al
jne short loc_00008233  ; jne 0x8233
jmp short loc_0000820c  ; jmp 0x820c

loc_00008279:
lea esp, [ebp - 0xc]
mov eax, esi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00008283:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov ecx, dword [eax + 0xd]
xor eax, eax

loc_0000828e:
movzx edx, byte [ecx + eax + 5]
cmp edx, 3
je short loc_000082a6  ; je 0x82a6
test edx, edx
je short loc_000082a6  ; je 0x82a6
inc eax
cmp eax, 3
jne short loc_0000828e  ; jne 0x828e
xor eax, eax
jmp short loc_000082a8  ; jmp 0x82a8

loc_000082a6:
mov al, 1

loc_000082a8:
pop ebp
ret

fcn_000082aa:
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword [ebp + 8]
cmp byte [eax], 0x12
jbe short loc_000082c2  ; jbe 0x82c2
mov eax, dword [eax + 0xd]
mov al, byte [eax + 0x64]
cmp al, 1
jbe short loc_000082dd  ; jbe 0x82dd

loc_000082c2:
call fcn_0001c651  ; call 0x1c651
cmp eax, 0x40660
je short loc_000082d9  ; je 0x82d9
cmp eax, 0x306c0

loc_000082d3:
je short loc_000082d9  ; je 0x82d9
mov al, 1
jmp short loc_000082e1  ; jmp 0x82e1

loc_000082d9:
xor eax, eax
jmp short loc_000082e1  ; jmp 0x82e1

loc_000082dd:
test al, al
jmp short loc_000082d3  ; jmp 0x82d3

loc_000082e1:
leave
ret

fcn_000082e3:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x41c
call fcn_0001c651  ; call 0x1c651
mov dword [ebp - 0x3ec], eax
call fcn_0001c678  ; call 0x1c678
push ebx
push 0
push 1
push 0
mov dword [ebp - 0x3f4], eax
call fcn_00016c9a  ; call 0x16c9a
mov dword [ebp - 0x3f8], eax
add eax, 0xd0c
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
mov byte [ebp - 0x3ee], 3
mov ebx, eax
mov eax, dword [ebp + 0xc]
cmp byte [eax], 0x12
jbe short loc_00008351  ; jbe 0x8351
mov eax, dword [eax + 0xd]
mov edi, 3
cmp byte [eax + 0x69], 1
mov al, 0xa
cmove edi, eax
mov eax, edi
mov byte [ebp - 0x3ee], al

loc_00008351:
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

loc_00008396:
mov dword [ebp + eax*4 - 0x3c4], 0xffffffff
mov dword [ebp + eax*4 - 0x384], 0xffffffff
mov byte [ebp + eax - 0x3d4], 7
inc eax
cmp eax, 0x10
jne short loc_00008396  ; jne 0x8396
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000083d4  ; je 0x83d4
push ecx
push ecx
push ref_00021d12  ; push 0x21d12
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000083d4:
sub esp, 0xc
push dword [ebp + 0xc]
call fcn_00008283  ; call 0x8283
add esp, 0x10
test al, al
jne short loc_000083ff  ; jne 0x83ff
call fcn_00015479  ; call 0x15479
test al, al
je near loc_00009375  ; je 0x9375
push edx
push edx
push ref_00021d2a  ; push 0x21d2a
jmp near loc_00008e4c  ; jmp 0x8e4c

loc_000083ff:
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
call fcn_00006a8e  ; call 0x6a8e
add esp, 0x10
mov word [ebp - 0x40c], ax
test bl, bl
jne short loc_0000844b  ; jne 0x844b
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00008465  ; je 0x8465
push eax
push eax
push ref_00021d47  ; push 0x21d47
jmp short loc_0000845b  ; jmp 0x845b

loc_0000844b:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00008465  ; je 0x8465
push eax
push eax
push ref_00021d62  ; push 0x21d62

loc_0000845b:
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00008465:
cmp dword [ebp + 0x14], 0
mov byte [ebp - 0x3d9], 0
je near loc_00008577  ; je 0x8577
mov eax, dword [ebp + 0x14]
cmp byte [eax + 0x28], 0
je near loc_00008577  ; je 0x8577
lea eax, [ebp - 0x3d8]
push eax
push 0
push 0
push ref_000291fc  ; push 0x291fc
call fcn_0001975d  ; call 0x1975d
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_000084df  ; je 0x84df
test ebx, ebx
jns short loc_000084df  ; jns 0x84df
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000084c7  ; je 0x84c7
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000084c7:
push eax
push ref_000206f4  ; push 0x206f4
push 0xd6
push ref_00021d7c  ; push 0x21d7c
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000084df:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000084f9  ; je 0x84f9
push eax
push eax
push ref_00021db4  ; push 0x21db4
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000084f9:
push eax
lea eax, [ebp - 0x3d9]
push eax
mov eax, dword [ebp - 0x3d8]
push 0
push dword [ebp + 8]
call dword [eax + 5]  ; ucall
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00008556  ; je 0x8556
test ebx, ebx
jns short loc_00008556  ; jns 0x8556
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000853e  ; je 0x853e
push edi
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000853e:
push esi
push ref_000206f4  ; push 0x206f4
push 0xd9
push ref_00021d7c  ; push 0x21d7c
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00008556:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00008577  ; je 0x8577
movzx eax, byte [ebp - 0x3d9]
push ebx
push eax
push ref_00021dd1  ; push 0x21dd1
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00008577:
lea eax, [ebp - 0x3df]
xor ebx, ebx
push ecx
push eax
lea eax, [ebp - 0x3de]
push eax
lea eax, [ebp - 0x302]
push eax
call fcn_00006ab2  ; call 0x6ab2
add esp, 0x10

loc_00008597:
cmp bl, byte [ebp - 0x3de]
jae near loc_0000862d  ; jae 0x862d
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
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xb2
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
and eax, 0xf
cmp ax, 3
je short loc_000085e8  ; je 0x85e8
cmp byte [esi + 0xb], 0
jne short loc_000085eb  ; jne 0x85eb

loc_000085e8:
inc ebx
jmp short loc_00008597  ; jmp 0x8597

loc_000085eb:
mov eax, dword [ebp - 0x3f8]
push ebx
push ebx
push 0x8000
lea esi, [eax + 0xdd8]
push esi
call fcn_00018b14  ; call 0x18b14
add esp, 0xc
push dword [ebp + 0xc]
push dword [ebp + 0x10]
push dword [ebp + 8]
call fcn_000060c6  ; call 0x60c6
add esp, 0x10
test eax, eax
jns near loc_00008e80  ; jns 0x8e80

loc_00008620:
cmp dword [ebp - 0x3f4], 0
jne near loc_00008e5b  ; jne 0x8e5b

loc_0000862d:
mov byte [ebp - 0x3f4], 0
mov byte [ebp - 0x3ec], 0

loc_0000863b:
mov cl, byte [ebp - 0x3de]
cmp byte [ebp - 0x3ec], cl
jae near loc_00008786  ; jae 0x8786
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
je short loc_000086ab  ; je 0x86ab
mov esi, dword [ebp + 0x14]
cmp byte [esi + 0x28], 0
je near loc_00008f06  ; je 0x8f06
mov eax, dword [eax + 7]
mov edi, 1
cmp dword [esi + edx*4 + 0x29], eax
jne near loc_00008f08  ; jne 0x8f08
xor esi, esi
jmp short loc_000086b2  ; jmp 0x86b2

loc_000086ab:
mov esi, 1
xor edi, edi

loc_000086b2:
mov dword [ebp - 0x410], edx
call fcn_00015479  ; call 0x15479
mov edx, dword [ebp - 0x410]
test al, al
je short loc_000086f8  ; je 0x86f8
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
push ref_00021df9  ; push 0x21df9
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x30

loc_000086f8:
push eax
movzx eax, byte [ebp - 0x408]
push eax
movzx eax, byte [ebp - 0x400]
push eax
movzx eax, byte [ebp - 0x3fc]
push eax
call fcn_0000241b  ; call 0x241b
mov eax, edi
mov ecx, esi
xor eax, 1
add esp, 0x10
or cl, al
jne short loc_0000873e  ; jne 0x873e
cmp byte [ebp - 0x3d9], 0
jne short loc_0000873e  ; jne 0x873e
mov eax, dword [ebp + 0xc]
cmp byte [eax], 1
jbe short loc_0000874d  ; jbe 0x874d
mov eax, dword [eax + 0xd]
cmp byte [eax + 0x48], 1
jne short loc_0000874d  ; jne 0x874d

loc_0000873e:
mov eax, ebx
shl eax, 5
mov byte [ebp + eax - 0x2e5], 1
jmp short loc_0000875a  ; jmp 0x875a

loc_0000874d:
mov eax, ebx
shl eax, 5
mov byte [ebp + eax - 0x2e5], 0

loc_0000875a:
shl ebx, 5
lea eax, [ebp - 0x18]
add ebx, eax
cmp byte [ebx - 0x2df], 0
jne short loc_00008774  ; jne 0x8774
mov byte [ebx - 0x2cd], 0
jmp short loc_0000877b  ; jmp 0x877b

loc_00008774:
mov byte [ebp - 0x3f4], 1

loc_0000877b:
inc byte [ebp - 0x3ec]
jmp near loc_0000863b  ; jmp 0x863b

loc_00008786:
cmp byte [ebp - 0x3f4], 0
je short loc_00008799  ; je 0x8799
lea edx, [ebp - 0x302]
xor eax, eax
jmp short loc_000087bc  ; jmp 0x87bc

loc_00008799:
call fcn_00015479  ; call 0x15479
test al, al
je near loc_00009375  ; je 0x9375
push ecx
push ecx
push ref_00021e44  ; push 0x21e44
jmp near loc_00008e4c  ; jmp 0x8e4c

loc_000087b2:
add edx, 0x20
cmp byte [edx - 3], 1
je short loc_000087cc  ; je 0x87cc
inc eax

loc_000087bc:
cmp al, cl
jne short loc_000087b2  ; jne 0x87b2
mov byte [ebp - 0x3ee], 0
jmp near loc_0000896c  ; jmp 0x896c

loc_000087cc:
push eax
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_00008087  ; call 0x8087
pop edx
pop ecx
push 0x2000
mov dword [ebp - 0x3f4], eax
mov eax, dword [ebp - 0x3f8]
add eax, 0x444
push eax
mov dword [ebp - 0x410], eax
call fcn_00018b14  ; call 0x18b14
lea eax, [ebp - 0x2a2]
add esp, 0x10
mov dword [ebp - 0x3ec], eax
movzx eax, byte [ebp - 0x3ed]
mov byte [ebp - 0x408], 0
mov dword [ebp - 0x414], eax
movzx eax, word [ebp - 0x404]
mov dword [ebp - 0x418], eax

loc_0000882f:
xor eax, eax

loc_00008831:
mov edi, dword [ebp - 0x3ec]
mov dword [edi + eax + 1], 0
add eax, 4
cmp eax, 0x40
jne short loc_00008831  ; jne 0x8831
mov byte [ebp - 0x3fc], 0

loc_0000884e:
movzx eax, byte [ebp - 0x3de]
cmp byte [ebp - 0x3fc], al
jb near loc_00008f25  ; jb 0x8f25
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
call fcn_00007ab6  ; call 0x7ab6
add esp, 0x30
test eax, eax
js near loc_000091e4  ; js 0x91e4

loc_0000889f:
sub esp, 0xc
push dword [ebp + 0xc]
call fcn_000082aa  ; call 0x82aa
add esp, 0x10
test al, al
jne near loc_00009201  ; jne 0x9201

loc_000088b5:
inc byte [ebp - 0x408]
mov al, byte [ebp - 0x3ee]
add dword [ebp - 0x3ec], 0x41
cmp byte [ebp - 0x408], al
jb near loc_0000882f  ; jb 0x882f
push eax
xor edi, edi
push eax
push 0xffffdfff
push dword [ebp - 0x410]
lea ebx, [ebp - 0x384]
call fcn_00018b3e  ; call 0x18b3e
pop eax
pop edx
push dword [ebp - 0x3f4]
push dword [ebp + 0xc]
call fcn_00007fc2  ; call 0x7fc2
add esp, 0x10
lea edx, [ebp - 0x2a2]

loc_00008907:
lea eax, [ebp - 0x3c4]

loc_0000890d:
mov dword [eax], 0xffffffff
add eax, 4
cmp eax, ebx
jne short loc_0000890d  ; jne 0x890d
xor eax, eax

loc_0000891c:
mov esi, dword [edx + eax*4 + 1]
cmp esi, 0xffffffff
je short loc_0000892c  ; je 0x892c
mov dword [ebp + eax*4 - 0x3c4], esi

loc_0000892c:
mov esi, dword [ebp + eax*4 - 0x3c4]
cmp esi, dword [ebx + eax*4]
jle short loc_00008944  ; jle 0x8944
mov cl, byte [edx]
mov dword [ebx + eax*4], esi
mov byte [ebp + eax - 0x3d4], cl

loc_00008944:
inc eax
cmp eax, 0x10
jne short loc_0000891c  ; jne 0x891c
inc edi
add edx, 0x41
mov eax, edi
cmp al, byte [ebp - 0x3ee]
jb short loc_00008907  ; jb 0x8907
cmp byte [ebp - 0x3df], 0
jne near loc_00009278  ; jne 0x9278

loc_00008965:
mov byte [ebp - 0x3ee], 1

loc_0000896c:
mov byte [ebp - 0x3ec], 0

loc_00008973:
mov al, byte [ebp - 0x3ec]
cmp al, byte [ebp - 0x3de]
jae near loc_00008ac0  ; jae 0x8ac0
movzx edi, byte [ebp - 0x3ec]
mov eax, edi
shl eax, 5
lea ecx, [ebp + eax - 0x302]
cmp byte [ecx + 0xb], 0
mov al, byte [ecx + 2]
je near loc_00008ab5  ; je 0x8ab5
cmp byte [ebp - 0x3df], 0
jne short loc_000089c0  ; jne 0x89c0

loc_000089ae:
shl edi, 5
xor ebx, ebx
lea eax, [ebp - 0x18]
mov edx, edi
lea edi, [eax + edi]
jmp near loc_00008a68  ; jmp 0x8a68

loc_000089c0:
cmp al, 1
je short loc_000089e0  ; je 0x89e0
cmp al, 2
je short loc_000089fc  ; je 0x89fc
mov bl, byte [ebp - 0x3ed]
cmp bl, 1
sbb esi, esi
neg ebx
and esi, 0xfffffff2
and ebx, 0xe
add esi, 0xf
jmp short loc_00008a16  ; jmp 0x8a16

loc_000089e0:
mov al, byte [ebp - 0x3ed]
cmp al, 1
sbb esi, esi
and esi, 2
add esi, 7
cmp al, 1
sbb ebx, ebx
and ebx, 2
add ebx, 6
jmp short loc_00008a16  ; jmp 0x8a16

loc_000089fc:
mov al, byte [ebp - 0x3ed]
cmp al, 1
sbb esi, esi
and esi, 0xa
add esi, 3
cmp al, 1
sbb ebx, ebx
and ebx, 0xa
add ebx, 2

loc_00008a16:
mov eax, edi
shl eax, 5
mov dword [ebp - 0x3f4], eax

loc_00008a21:
mov eax, esi
cmp bl, al
ja short loc_000089ae  ; ja 0x89ae
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
call fcn_000080f4  ; call 0x80f4
mov ecx, dword [ebp - 0x3f8]
add esp, 0x20
mov byte [ebp + ecx - 0x3d4], al
jmp short loc_00008a21  ; jmp 0x8a21

loc_00008a68:
cmp bl, byte [edi - 0x2ce]
jae short loc_00008ab5  ; jae 0x8ab5
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
call fcn_000080f4  ; call 0x80f4
add esp, 0x20
mov edx, dword [ebp - 0x3f4]
mov byte [ebp + esi - 0x3d4], al
jmp short loc_00008a68  ; jmp 0x8a68

loc_00008ab5:
inc byte [ebp - 0x3ec]
jmp near loc_00008973  ; jmp 0x8973

loc_00008ac0:
cmp byte [ebp - 0x3ee], 0
je short loc_00008afc  ; je 0x8afc
xor ebx, ebx

loc_00008acb:
push ecx
push ebx
inc ebx
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
pop esi
pop edi
push 0x10
add eax, 0xb0
push eax
call fcn_00018927  ; call 0x18927
add esp, 0x10
cmp ebx, 3
jne short loc_00008acb  ; jne 0x8acb
sub esp, 0xc
push dword [ebp + 0xc]
call fcn_00006016  ; call 0x6016
add esp, 0x10

loc_00008afc:
movzx eax, byte [ebp - 0x3ed]
mov byte [ebp - 0x3ec], 0
mov dword [ebp - 0x3f8], eax

loc_00008b10:
mov al, byte [ebp - 0x3ec]
cmp al, byte [ebp - 0x3de]
jae near loc_00008d8d  ; jae 0x8d8d
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
call fcn_00016c9a  ; call 0x16c9a
add esp, 0x10
cmp byte [edi + 0xb], 0
mov dword [ebp - 0x400], eax
jne short loc_00008b89  ; jne 0x8b89
call fcn_00015479  ; call 0x15479
test al, al
je near loc_00008d82  ; je 0x8d82
push esi
push ebx
push ref_00021eca  ; push 0x21eca
push 0x40
call fcn_00015487  ; call 0x15487
jmp near loc_00008d7f  ; jmp 0x8d7f

loc_00008b89:
mov cl, byte [ebp - 0x3ed]
cmp cl, 1
je short loc_00008ba7  ; je 0x8ba7
cmp cl, 2
mov al, 0xd
mov bl, 1
mov dl, 0
cmove ebx, eax
mov al, 0xc
cmove edx, eax
jmp short loc_00008bab  ; jmp 0x8bab

loc_00008ba7:
mov bl, 9
mov dl, 8

loc_00008bab:
push eax
push eax
lea eax, [ebp - 0x3da]
push eax
movzx eax, dl
push eax
mov dword [ebp - 0x3f4], edx
call fcn_0000937d  ; call 0x937d
add esp, 0x10
mov edx, dword [ebp - 0x3f4]
cmp byte [ebp - 0x3df], 0
je short loc_00008be4  ; je 0x8be4
movzx eax, byte [ebp - 0x3ed]
mov dword [ebp - 0x404], eax
jmp short loc_00008bff  ; jmp 0x8bff

loc_00008be4:
mov eax, dword [ebp - 0x3fc]
lea esi, [ebp - 0x18]
xor edx, edx
shl eax, 5
add eax, esi
mov dword [ebp - 0x3f4], eax
jmp near loc_00008c93  ; jmp 0x8c93

loc_00008bff:
cmp dl, bl
ja short loc_00008be4  ; ja 0x8be4
push edi
movzx esi, dl
push edi
push dword [ebp - 0x3f8]
lea edi, [ebp - 0x3dd]
mov dword [ebp - 0x40c], edx
push esi
call fcn_00006e54  ; call 0x6e54
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
call fcn_000093d9  ; call 0x93d9
mov eax, dword [ebp - 0x408]
add esp, 0x20
lea ecx, [ebp - 0x3db]
push ecx
push eax
push edi
push esi
call fcn_000094be  ; call 0x94be
push esi
push dword [ebp - 0x404]
push dword [ebp - 0x3f4]
push 1
call fcn_00002b0b  ; call 0x2b0b
mov edx, dword [ebp - 0x40c]
add esp, 0x20
inc edx
jmp near loc_00008bff  ; jmp 0x8bff

loc_00008c93:
mov eax, dword [ebp - 0x3f4]
cmp dl, byte [eax - 0x2ce]
jae near loc_00008d57  ; jae 0x8d57
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
call fcn_00006e54  ; call 0x6e54
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
call fcn_000093d9  ; call 0x93d9
mov eax, dword [ebp - 0x3fc]
add esp, 0x20
lea ecx, [ebp - 0x3db]
push ecx
push edi
push esi
movzx eax, al
push eax
mov dword [ebp - 0x3fc], eax
call fcn_000094be  ; call 0x94be
mov eax, dword [ebp - 0x3fc]
push eax
movzx eax, byte [ebp - 0x3ed]
push eax
movzx eax, byte [ebx + 0xc]
movzx eax, byte [ebp + eax - 0x3d4]
push eax
push 1
call fcn_00002b0b  ; call 0x2b0b
mov edx, dword [ebp - 0x404]
add esp, 0x20
inc edx
jmp near loc_00008c93  ; jmp 0x8c93

loc_00008d57:
mov edi, dword [ebp - 0x400]
push esi
push esi
push 1
mov eax, edi
add eax, 0xd98
push eax
call fcn_00018b14  ; call 0x18b14
pop eax
mov eax, edi
pop edx
add eax, 0xb0
push 0x20
push eax
call fcn_00018927  ; call 0x18927

loc_00008d7f:
add esp, 0x10

loc_00008d82:
inc byte [ebp - 0x3ec]
jmp near loc_00008b10  ; jmp 0x8b10

loc_00008d8d:
cmp byte [ebp - 0x3ee], 0
je short loc_00008dde  ; je 0x8dde
push ebx
mov eax, dword [ebp + 0x10]
xor ebx, ebx
push 0x64
push dword [ebp + 0x10]
push dword [ebp + 8]
call dword [eax + 4]  ; ucall
add esp, 0x10

loc_00008daa:
push edi
push ebx
inc ebx
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
pop edx
pop ecx
push 0xffef
add eax, 0xb0
push eax
call fcn_00018954  ; call 0x18954
add esp, 0x10
cmp ebx, 3
jne short loc_00008daa  ; jne 0x8daa
sub esp, 0xc
push dword [ebp + 0xc]
call fcn_0000606a  ; call 0x606a
add esp, 0x10

loc_00008dde:
xor edx, edx

loc_00008de0:
cmp dl, byte [ebp - 0x3de]
jae short loc_00008e38  ; jae 0x8e38
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
call fcn_00005d50  ; call 0x5d50
add esp, 0xc
push edi
push esi
push ebx
call fcn_0000241b  ; call 0x241b
mov edx, dword [ebp - 0x3ec]
add esp, 0x10
inc edx
jmp short loc_00008de0  ; jmp 0x8de0

loc_00008e38:
call fcn_00015479  ; call 0x15479
test al, al
je near loc_00009375  ; je 0x9375
push esi
push esi
push ref_00021f05  ; push 0x21f05

loc_00008e4c:
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp near loc_00009375  ; jmp 0x9375

loc_00008e5b:
cmp dword [ebp - 0x3ec], 0x40670
jne near loc_0000862d  ; jne 0x862d
push eax
push eax
push 0xffff7fff
push esi
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10
jmp near loc_0000862d  ; jmp 0x862d

loc_00008e80:
xor ebx, ebx

loc_00008e82:
cmp bl, byte [ebp - 0x3de]
jae near loc_00008620  ; jae 0x8620
movzx eax, bl
shl eax, 5
lea edx, [ebp + eax - 0x302]
mov al, byte [ebp + eax - 0x302]
movzx ecx, byte [edx + 2]
movzx edx, byte [edx + 1]
mov byte [ebp - 0x3fc], al

loc_00008eb0:
movzx edi, byte [ebp - 0x3fc]
push eax
push ecx
push edx
push edi
mov dword [ebp - 0x408], ecx
mov dword [ebp - 0x400], edx
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xd2
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
mov edx, dword [ebp - 0x400]
mov ecx, dword [ebp - 0x408]
test al, 2
je short loc_00008eb0  ; je 0x8eb0
sub esp, 0xc
inc ebx
push ecx
push edx
push edi
push dword [ebp + 0x10]
push dword [ebp + 8]
call fcn_0000254f  ; call 0x254f
add esp, 0x20
jmp near loc_00008e82  ; jmp 0x8e82

loc_00008f06:
xor edi, edi

loc_00008f08:
mov eax, ebx
mov esi, dword [ebp + 0x14]
shl eax, 5
mov eax, dword [ebp + eax - 0x2fb]
mov dword [esi + edx*4 + 0x29], eax
mov esi, 1
jmp near loc_000086b2  ; jmp 0x86b2

loc_00008f25:
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
call fcn_00016c9a  ; call 0x16c9a
add esp, 0x10
cmp byte [edi + 0xb], 0
mov dword [ebp - 0x404], eax
jne short loc_00008f9a  ; jne 0x8f9a
call fcn_00015479  ; call 0x15479
test al, al
je near loc_000091d9  ; je 0x91d9
push esi
push ebx
push ref_00021e74  ; push 0x21e74
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp near loc_000091d9  ; jmp 0x91d9

loc_00008f9a:
mov cl, byte [ebp - 0x3f8]
cmp cl, 1
je short loc_00008fbb  ; je 0x8fbb
cmp cl, 2
mov al, 0xd
mov esi, 1
mov bl, 0
cmove esi, eax
mov al, 0xc
cmove ebx, eax
jmp short loc_00008fc2  ; jmp 0x8fc2

loc_00008fbb:
mov esi, 9
mov bl, 8

loc_00008fc2:
push edi
push edi
lea eax, [ebp - 0x3da]
push eax
movzx eax, bl
push eax
call fcn_0000937d  ; call 0x937d
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
call fcn_000093d9  ; call 0x93d9
add esp, 0x20
cmp byte [ebp - 0x3df], 0
je short loc_00009019  ; je 0x9019
mov edx, edi
movzx edi, byte [ebp - 0x3f8]
jmp short loc_0000902c  ; jmp 0x902c

loc_00009019:
mov esi, dword [ebp - 0x400]
lea eax, [ebp - 0x18]
xor edx, edx
shl esi, 5
lea edi, [eax + esi]
jmp short loc_0000907b  ; jmp 0x907b

loc_0000902c:
mov eax, esi
cmp bl, al
ja short loc_00009019  ; ja 0x9019
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
call fcn_000094be  ; call 0x94be
mov eax, dword [ebp - 0x41c]
push eax
mov eax, dword [ebp - 0x3ec]
push edi
movzx eax, byte [eax]
push eax
push 1
call fcn_00002b0b  ; call 0x2b0b
add esp, 0x20
mov edx, dword [ebp - 0x420]
jmp short loc_0000902c  ; jmp 0x902c

loc_0000907b:
lea ebx, [edi - 0x2da]
cmp dl, byte [edi - 0x2ce]
jae short loc_000090ef  ; jae 0x90ef
push ebx
movzx eax, dl
push ebx
push dword [ebp - 0x414]
movzx eax, byte [eax + edi - 0x2de]
mov dword [ebp - 0x41c], edx
push eax
call fcn_00006e54  ; call 0x6e54
movzx ebx, al
lea eax, [ebp - 0x3db]
push eax
lea eax, [ebp - 0x3dc]
push eax
lea eax, [ebp - 0x3dd]
push eax
push ebx
call fcn_000094be  ; call 0x94be
movzx eax, byte [ebp - 0x3f8]
add esp, 0x20
push ebx
push eax
mov eax, dword [ebp - 0x3ec]
movzx eax, byte [eax]
push eax
push 1
call fcn_00002b0b  ; call 0x2b0b
mov edx, dword [ebp - 0x41c]
add esp, 0x10
inc edx
jmp short loc_0000907b  ; jmp 0x907b

loc_000090ef:
mov eax, dword [ebp - 0x404]
lea edi, [ebp + esi - 0x302]
push ecx
push ecx
push 1
add eax, 0xd98
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0xc
push edi
push dword [ebp + 0x10]
push dword [ebp + 8]
call fcn_00006437  ; call 0x6437
mov eax, dword [ebp - 0x404]
lea esi, [eax + 0xb2]
mov dword [esp], esi
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
and eax, 0xf
cmp ax, 3
je short loc_00009179  ; je 0x9179
sub esp, 0xc
push edi
call fcn_0000649b  ; call 0x649b
add esp, 0xc
movzx eax, al
push eax
push 3
push edi
push dword [ebp + 0x10]
push dword [ebp + 0x14]
push dword [ebp + 0xc]
push dword [ebp + 8]
call fcn_0000661e  ; call 0x661e
add esp, 0x14
push esi
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
and eax, 0xf
cmp ax, 3
je short loc_00009179  ; je 0x9179
mov byte [ebx + 0xe], 1
jmp short loc_000091d9  ; jmp 0x91d9

loc_00009179:
movzx esi, byte [ebp - 0x3f8]
push edi
push edi
mov edi, dword [ebp - 0x3f4]
push esi
push edi
call fcn_00007c07  ; call 0x7c07
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
call fcn_00007c07  ; call 0x7c07
add esp, 0x10
cmp eax, ebx
mov eax, dword [ebp - 0x400]
je short loc_000091ce  ; je 0x91ce
shl eax, 5
mov byte [ebp + eax - 0x2e4], 1
jmp short loc_000091d9  ; jmp 0x91d9

loc_000091ce:
shl eax, 5
mov byte [ebp + eax - 0x2e3], 1

loc_000091d9:
inc byte [ebp - 0x3fc]
jmp near loc_0000884e  ; jmp 0x884e

loc_000091e4:
xor eax, eax

loc_000091e6:
mov edi, dword [ebp - 0x3ec]
mov dword [edi + eax + 1], 0
add eax, 4
cmp eax, 0x40
jne short loc_000091e6  ; jne 0x91e6
jmp near loc_0000889f  ; jmp 0x889f

loc_00009201:
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
call fcn_00007ab6  ; call 0x7ab6
add esp, 0x30
test eax, eax
js near loc_000088b5  ; js 0x88b5
xor eax, eax

loc_00009247:
mov edx, dword [ebp + eax - 0x344]
cmp edx, 0xffffffff
je short loc_0000926b  ; je 0x926b
mov esi, dword [ebp - 0x3ec]
mov ecx, dword [esi + eax + 1]
cmp ecx, 0x18f
jle short loc_0000926b  ; jle 0x926b
add edx, ecx
mov dword [esi + eax + 1], edx

loc_0000926b:
add eax, 4
cmp eax, 0x40
jne short loc_00009247  ; jne 0x9247
jmp near loc_000088b5  ; jmp 0x88b5

loc_00009278:
mov byte [ebp - 0x3ec], 0

loc_0000927f:
mov al, byte [ebp - 0x3ec]
cmp al, byte [ebp - 0x3de]
jae near loc_00008965  ; jae 0x8965
movzx eax, byte [ebp - 0x3ec]
shl eax, 5
mov al, byte [ebp + eax - 0x300]
cmp al, 1
je short loc_000092cd  ; je 0x92cd
cmp al, 2
mov al, byte [ebp - 0x3ed]
je short loc_000092f3  ; je 0x92f3
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
jmp short loc_0000930f  ; jmp 0x930f

loc_000092cd:
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
jmp short loc_0000930f  ; jmp 0x930f

loc_000092f3:
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

loc_0000930f:
movzx esi, dl
cmp dword [ebp + esi*4 - 0x384], 0xffffffff
je short loc_0000936a  ; je 0x936a
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00009342  ; je 0x9342
mov eax, edi
sub esp, 0xc
movzx eax, al
push eax
movzx eax, bl
push eax
push esi
push ref_00021e99  ; push 0x21e99
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_00009342:
mov eax, edi
cmp bl, al
ja short loc_0000936a  ; ja 0x936a
mov ecx, dword [ebp + esi*4 - 0x384]
movzx eax, bl
inc ebx
mov dword [ebp + eax*4 - 0x384], ecx
mov cl, byte [ebp + esi - 0x3d4]
mov byte [ebp + eax - 0x3d4], cl
jmp short loc_00009342  ; jmp 0x9342

loc_0000936a:
inc byte [ebp - 0x3ec]
jmp near loc_0000927f  ; jmp 0x927f

loc_00009375:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000937d:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
push eax
push 0
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
pop edx
pop ecx
lea ebx, [eax + 0x814]
mov eax, esi
movzx edx, al
shl edx, 0x13
or edx, 0x2840000
push edx
push ebx
call fcn_00017e8f  ; call 0x17e8f
mov dword [esp], ebx
call fcn_00017e4e  ; call 0x17e4e
mov esi, eax
pop eax
pop edx
shr esi, 6
push 0
push ebx
call fcn_00017e8f  ; call 0x17e8f
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

fcn_000093d9:
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
ja short loc_00009425  ; ja 0x9425
movzx ebx, bl
jmp dword [ebx*4 + ref_000203d0]  ; ujmp: jmp dword [ebx*4 + 0x203d0]

loc_000093fa:
mov ecx, 0xffffff38
jmp near loc_000094ba  ; jmp 0x94ba

loc_00009404:
mov ecx, 0xffffff83
jmp near loc_000094ba  ; jmp 0x94ba

loc_0000940e:
xor ecx, ecx
jmp near loc_000094ba  ; jmp 0x94ba

loc_00009415:
mov ecx, 0xffffff83
jmp short loc_0000944a  ; jmp 0x944a

loc_0000941c:
xor ecx, ecx
mov eax, 0xffffff5a
jmp short loc_0000945b  ; jmp 0x945b

loc_00009425:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00009451  ; je 0x9451
movzx ebx, bl
push eax
push ebx
push ref_00021f23  ; push 0x21f23
push 2
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp short loc_00009451  ; jmp 0x9451

loc_00009444:
xor ecx, ecx
jmp short loc_00009456  ; jmp 0x9456

loc_00009448:
xor ecx, ecx

loc_0000944a:
mov eax, 0xffffff83
jmp short loc_0000945b  ; jmp 0x945b

loc_00009451:
mov ecx, 0xffffff38

loc_00009456:
mov eax, 0xffffff9c

loc_0000945b:
neg eax

loc_0000945d:
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

loc_000094ae:
mov ecx, 0xffffff06
jmp short loc_000094ba  ; jmp 0x94ba

loc_000094b5:
mov ecx, 0xffffff59

loc_000094ba:
xor eax, eax
jmp short loc_0000945d  ; jmp 0x945d

fcn_000094be:
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
call fcn_00016c9a  ; call 0x16c9a
pop edx
pop ecx
push ebx
lea esi, [eax + 0x814]
push esi
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10
mov dword [ebp + 8], esi
mov dword [ebp + 0xc], 0
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00017e8f  ; jmp 0x17e8f

fcn_00009521:
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
call fcn_00016c9a  ; call 0x16c9a
mov edx, esi
add esp, 0x10
shr bl, 1
test dl, dl
movzx ebx, bl
je short loc_00009565  ; je 0x9565
push edx
push 6
shl ebx, 5
push 0xfffffffffffffff9
lea eax, [eax + ebx + 0x900]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

loc_00009565:
shl ebx, 5
lea eax, [eax + ebx + 0x900]
mov dword [ebp + 0xc], 0xfffffff9
mov dword [ebp + 8], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00018b3e  ; jmp 0x18b3e

fcn_00009584:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
call fcn_0001c651  ; call 0x1c651
cmp eax, 0x40660
je short loc_0000961a  ; je 0x961a
cmp eax, 0x306c0
je short loc_0000961a  ; je 0x961a
cmp eax, 0x40670
je short loc_000095c2  ; je 0x95c2

loc_000095a9:
call fcn_00015479  ; call 0x15479
test al, al
je near loc_00009685  ; je 0x9685
mov dword [ebp + 0xc], ref_00021f6e  ; mov dword [ebp + 0xc], 0x21f6e
jmp near loc_00009673  ; jmp 0x9673

loc_000095c2:
push edx
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 2
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 0x10
je short loc_000095a9  ; je 0x95a9

loc_000095e0:
push eax
push 0
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
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
call fcn_00018b68  ; call 0x18b68
jmp short loc_0000965e  ; jmp 0x965e

loc_0000961a:
cmp eax, 0x40670
je short loc_000095e0  ; je 0x95e0
cmp eax, 0x40660
je short loc_0000962f  ; je 0x962f
cmp eax, 0x306c0
jne short loc_00009663  ; jne 0x9663

loc_0000962f:
push 0x1000c
movzx ebx, bl
push 0
push 2
push esi
call fcn_000040eb  ; call 0x40eb
push 0
push ebx
push 0x1011
push esi
call fcn_000040eb  ; call 0x40eb
add esp, 0x20
push 0
push 0
push 3
push esi
call fcn_000040eb  ; call 0x40eb

loc_0000965e:
add esp, 0x10
jmp short loc_00009685  ; jmp 0x9685

loc_00009663:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00009685  ; je 0x9685
mov dword [ebp + 0xc], ref_00021fa1  ; mov dword [ebp + 0xc], 0x21fa1

loc_00009673:
mov dword [ebp + 8], 2
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00015487  ; jmp 0x15487

loc_00009685:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0000968c:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
call fcn_0001c651  ; call 0x1c651
mov ebx, eax
call fcn_0001c678  ; call 0x1c678
cmp ebx, 0x40670
je short loc_000096ac  ; je 0x96ac

loc_000096a8:
xor edx, edx
jmp short loc_00009717  ; jmp 0x9717

loc_000096ac:
mov edx, 0x80000003
test eax, eax
je short loc_00009717  ; je 0x9717
mov eax, esi
xor ebx, ebx
test al, al
je short loc_000096ea  ; je 0x96ea

loc_000096bd:
push esi
push 0
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
pop edx
pop ecx
push 0x10
lea eax, [eax + ebx + 0x90c]
add ebx, 0x20
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10
cmp ebx, 0x100
jne short loc_000096bd  ; jne 0x96bd
jmp short loc_000096a8  ; jmp 0x96a8

loc_000096ea:
push eax
push 0
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
pop edx
pop ecx
push 0xffffffffffffffef
lea eax, [eax + ebx + 0x90c]
add ebx, 0x20
push eax
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10
cmp ebx, 0x100
jne short loc_000096ea  ; jne 0x96ea
jmp short loc_000096a8  ; jmp 0x96a8

loc_00009717:
lea esp, [ebp - 8]
mov eax, edx
pop ebx
pop esi
pop ebp
ret

fcn_00009720:
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
call fcn_000029e2  ; call 0x29e2
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
jmp near fcn_000029e2  ; jmp 0x29e2

fcn_00009774:
push ebp
mov ebp, esp
push ebx
push eax
movzx ebx, byte [ebp + 8]
push 0x31
push ebx
push 1
push 0
call fcn_00002a60  ; call 0x2a60
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
call fcn_00002a60  ; call 0x2a60
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

fcn_000097c7:
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
jne short loc_000097ec  ; jne 0x97ec
mov dword [ebx], 0
mov dword [edx], 0x20
jmp short loc_0000983f  ; jmp 0x983f

loc_000097ec:
mov eax, 0
jbe short loc_00009810  ; jbe 0x9810
lea esi, [ecx - 0x20]

loc_000097f6:
mov ecx, dword [ebp + 8]
mov edi, esi
sub ecx, eax
shl edi, cl
mov ecx, edi
add ecx, 0x20
lea edi, [eax + 1]
cmp ecx, 0x3f
jle short loc_0000983b  ; jle 0x983b
mov eax, edi
jmp short loc_000097f6  ; jmp 0x97f6

loc_00009810:
mov esi, 0x20
mov edi, esi
sub edi, ecx
mov dword [ebp - 0x14], edi

loc_0000981c:
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
jns short loc_0000983b  ; jns 0x983b
mov eax, dword [ebp - 0x10]
jmp short loc_0000981c  ; jmp 0x981c

loc_0000983b:
mov dword [ebx], eax
mov dword [edx], ecx

loc_0000983f:
pop eax
pop edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00009846:
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
call fcn_000097c7  ; call 0x97c7
add esp, 0x10
cmp ebx, 0x20
jbe short loc_00009889  ; jbe 0x9889
mov eax, dword [ebp - 0xc]
test eax, eax
jne short loc_00009878  ; jne 0x9878

loc_00009870:
mov eax, dword [ebp - 8]
sub eax, 0x20
jmp short loc_000098a0  ; jmp 0x98a0

loc_00009878:
mov edx, dword [ebp - 8]
add eax, 0xfffffff
shl eax, 4
lea eax, [edx + eax - 0x10]
jmp short loc_000098a0  ; jmp 0x98a0

loc_00009889:
je short loc_0000989e  ; je 0x989e
mov eax, dword [ebp - 0xc]
test eax, eax
je short loc_00009870  ; je 0x9870
imul eax, eax, 0xffffffef
mov edx, dword [ebp - 8]
lea eax, [edx + eax - 0x20]
jmp short loc_000098a0  ; jmp 0x98a0

loc_0000989e:
xor eax, eax

loc_000098a0:
mov ebx, dword [ebp - 4]
leave
ret

fcn_000098a5:
push ebp
mov eax, 0x80000002
mov ebp, esp
mov edx, dword [ebp + 8]
push esi
push ebx
lea ecx, [edx + 0x53]
cmp ecx, 0xa2
ja near loc_00009964  ; ja 0x9964
cmp edx, 0
je near loc_00009951  ; je 0x9951
lea eax, [edx + 0x20]
mov ebx, 0
mov edx, eax
jle short loc_0000991f  ; jle 0x991f

loc_000098d6:
test ebx, ebx
jne short loc_000098e3  ; jne 0x98e3
mov esi, edx
cmp edx, 0x3f
jg short loc_00009905  ; jg 0x9905
jmp short loc_00009958  ; jmp 0x9958

loc_000098e3:
mov esi, eax
cmp eax, 0x3f
jg short loc_00009905  ; jg 0x9905
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00009958  ; je 0x9958
cmp esi, 0x2e
jg short loc_00009958  ; jg 0x9958
push edx
push ref_00021fbc  ; push 0x21fbc
push 0x1ad
jmp short loc_00009942  ; jmp 0x9942

loc_00009905:
inc ebx
sub eax, 0x10
cmp ebx, 4
jne short loc_000098d6  ; jne 0x98d6
jmp short loc_00009958  ; jmp 0x9958

loc_00009910:
mov esi, edx
test edx, edx
jns short loc_00009958  ; jns 0x9958

loc_00009916:
inc ebx
add eax, 0x11
cmp ebx, 4
je short loc_00009958  ; je 0x9958

loc_0000991f:
test ebx, ebx
je short loc_00009910  ; je 0x9910
mov esi, eax
test eax, eax
js short loc_00009916  ; js 0x9916
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00009958  ; je 0x9958
cmp esi, 0x11
jle short loc_00009958  ; jle 0x9958
push eax
push ref_00022007  ; push 0x22007
push 0x1bc

loc_00009942:
push ref_00021fcc  ; push 0x21fcc
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
jmp short loc_00009958  ; jmp 0x9958

loc_00009951:
mov esi, 0x20
xor ebx, ebx

loc_00009958:
mov eax, dword [ebp + 0xc]
mov dword [eax], ebx
mov eax, dword [ebp + 0x10]
mov dword [eax], esi
xor eax, eax

loc_00009964:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0000996b:
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
call fcn_00009774  ; call 0x9774
mov eax, dword [ebp - 0x1c]
add esp, 0x18
mov edx, dword [ebp - 0x14]
mov byte [ebx], al
mov eax, dword [ebp - 0x18]
mov dword [ebx + 5], edx
mov dword [ebx + 1], eax
push edx
push eax
call fcn_00009846  ; call 0x9846
mov edx, dword [ebp - 0xc]
mov dword [ebx + 0x11], edx
mov dword [ebx + 9], eax
mov eax, dword [ebp - 0x10]
mov dword [ebx + 0xd], eax
pop ecx
pop esi
push edx
push eax
call fcn_00009846  ; call 0x9846
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

fcn_00009a00:
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
call fcn_00009720  ; call 0x9720
add esp, 0x20
leave
ret

fcn_00009a23:
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
call fcn_000098a5  ; call 0x98a5
add esp, 0x10
test eax, eax
js short loc_00009a81  ; js 0x9a81
push eax
lea eax, [ebp - 0xc]
push eax
lea eax, [ebp - 0x10]
push eax
add esi, dword [ebx + 0x15]
push esi
call fcn_000098a5  ; call 0x98a5
add esp, 0x10
test eax, eax
js short loc_00009a81  ; js 0x9a81
sub esp, 0xc
push dword [ebp - 0xc]
push dword [ebp - 0x10]
push dword [ebp - 0x14]
push dword [ebp - 0x18]
movzx eax, byte [ebx]
push eax
call fcn_00009720  ; call 0x9720
add esp, 0x20
xor eax, eax

loc_00009a81:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_00009a88:
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

loc_00009aa0:
mov eax, esi
sub eax, dword [ebp + 8]
cmp al, byte [ebp - 0xd]
jae short loc_00009ad0  ; jae 0x9ad0
mov al, byte [esi]
xor edi, edi
movzx ecx, byte [edx]
shr al, 1

loc_00009ab3:
mov ebx, edi
cmp cl, bl
jbe short loc_00009ac5  ; jbe 0x9ac5
mov ebx, dword [ebp + 0x10]
inc edi
cmp byte [ebx + edi - 1], al
jne short loc_00009ab3  ; jne 0x9ab3
jmp short loc_00009acd  ; jmp 0x9acd

loc_00009ac5:
mov ebx, dword [ebp + 0x10]
mov byte [ebx + ecx], al
inc byte [edx]

loc_00009acd:
inc esi
jmp short loc_00009aa0  ; jmp 0x9aa0

loc_00009ad0:
add esp, 1
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00009ada:
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
call fcn_00009a88  ; call 0x9a88
add esp, 0xc
push 0
push 1
push 0
call fcn_00016c9a  ; call 0x16c9a
mov edx, dword [ebp + 8]
add esp, 0x10
mov ebx, eax
lea edi, [eax + 0xa00]

loc_00009b32:
mov al, byte [ebp + 8]
mov byte [ebp - 0x30], al
mov al, dl
sub eax, dword [ebp + 8]
cmp al, byte [ebp - 0x29]
jae short loc_00009b63  ; jae 0x9b63
push ecx
push ecx
push 0xfffffbff
movzx eax, byte [edx]
mov dword [ebp - 0x30], edx
shl eax, 4
add eax, edi
push eax
call fcn_00018b3e  ; call 0x18b3e
mov edx, dword [ebp - 0x30]
add esp, 0x10
inc edx
jmp short loc_00009b32  ; jmp 0x9b32

loc_00009b63:
movzx eax, byte [ebp - 0x34]
shl esi, 0x1c
xor edx, edx
movzx edi, byte [ebp - 0x38]
shl eax, 0xa
or esi, eax
shl edi, 0xb

loc_00009b78:
cmp dl, byte [ebp - 0x21]
jae short loc_00009bc4  ; jae 0x9bc4
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
call fcn_00018b68  ; call 0x18b68
mov ecx, dword [ebp - 0x34]
add esp, 0xc
push edi
push 0xfffe07ff
add ecx, 0x90c
push ecx
call fcn_00018b68  ; call 0x18b68
mov edx, dword [ebp - 0x38]
add esp, 0x10
inc edx
jmp short loc_00009b78  ; jmp 0x9b78

loc_00009bc4:
add ebx, 0xa00
mov esi, dword [ebp + 8]
cmp byte [ebp - 0x3c], 0
je short loc_00009bf9  ; je 0x9bf9

loc_00009bd3:
mov eax, esi
sub eax, dword [ebp - 0x30]
cmp al, byte [ebp - 0x29]
jae short loc_00009bf9  ; jae 0x9bf9
push eax
inc esi
push eax
push 0x400
movzx eax, byte [esi - 1]
shl eax, 4
add eax, ebx
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10
jmp short loc_00009bd3  ; jmp 0x9bd3

loc_00009bf9:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00009c03:
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
je short loc_00009c48  ; je 0x9c48
mov esi, eax
mov eax, ref_00026efc  ; mov eax, 0x26efc

loc_00009c23:
mov dl, byte [eax + 1]
movzx ecx, byte [eax]
movzx ebx, byte [eax + 3]
mov byte [ebp - 0x1d], dl
mov edx, esi
cmp byte [eax + 2], dl
je short loc_00009c54  ; je 0x9c54
add eax, 4
cmp eax, ref_00026f5c  ; cmp eax, 0x26f5c
jne short loc_00009c23  ; jne 0x9c23
mov eax, 0x80000002
jmp short loc_00009c6d  ; jmp 0x9c6d

loc_00009c48:
push edx
push edx
push 0
push 0
push 0
push 0
jmp short loc_00009c5f  ; jmp 0x9c5f

loc_00009c54:
push eax
movzx edx, byte [ebp - 0x1d]
push eax
push 1
push ebx
push ecx
push edx

loc_00009c5f:
movzx eax, byte [ebp - 0x1c]
push eax
push edi
call fcn_00009ada  ; call 0x9ada
add esp, 0x20

loc_00009c6d:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00009c75:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
lea ebx, [esi + 0x2338]

loc_00009c83:
sub esp, 0xc
push ebx
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 1
jne short loc_00009c83  ; jne 0x9c83
push eax
push eax
push dword [ebp + 0xc]
lea eax, [esi + 0x2330]
push eax
call fcn_00017e8f  ; call 0x17e8f
add esp, 0xc
push 0x700
push 0xff
push ebx
call fcn_00018981  ; call 0x18981
lea eax, [esi + 0x2334]
add esi, 0x233a
pop edx
pop ecx
push dword [ebp + 0x10]
push eax
call fcn_00017e8f  ; call 0x17e8f
pop eax
pop edx
push 0xf000
push esi
call fcn_00017e04  ; call 0x17e04
pop ecx
pop esi
push 1
push ebx
call fcn_00018927  ; call 0x18927
add esp, 0x10

loc_00009ce8:
sub esp, 0xc
push ebx
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 1
jne short loc_00009ce8  ; jne 0x9ce8
sub esp, 0xc
push ebx
call fcn_00017d8b  ; call 0x17d8b
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

fcn_00009d19:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
lea ebx, [esi + 0x2338]

loc_00009d27:
sub esp, 0xc
push ebx
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 1
jne short loc_00009d27  ; jne 0x9d27
push eax
push eax
push dword [ebp + 0xc]
lea eax, [esi + 0x2330]
push eax
call fcn_00017e8f  ; call 0x17e8f
add esp, 0xc
push 0x600
push 0xff
push ebx
call fcn_00018981  ; call 0x18981
lea eax, [esi + 0x233a]
pop edx
pop ecx
push 0xf000
push eax
call fcn_00017e04  ; call 0x17e04
pop eax
pop edx
push 1
push ebx
call fcn_00018927  ; call 0x18927
add esp, 0x10

loc_00009d7b:
sub esp, 0xc
push ebx
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 1
jne short loc_00009d7b  ; jne 0x9d7b
sub esp, 0xc
push ebx
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
mov edx, 0x80000007
test al, 6
jne short loc_00009db9  ; jne 0x9db9
sub esp, 0xc
add esi, 0x2334
push esi
call fcn_00017e4e  ; call 0x17e4e
mov edx, dword [ebp + 0x10]
add esp, 0x10
mov dword [edx], eax
xor edx, edx

loc_00009db9:
lea esp, [ebp - 8]
mov eax, edx
pop ebx
pop esi
pop ebp
ret

fcn_00009dc2:
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
call fcn_00009d19  ; call 0x9d19
add esp, 0x10
mov ebx, eax
test eax, eax
jns short loc_00009e40  ; jns 0x9e40
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00009e0a  ; je 0x9e0a
sub esp, 0xc
push edi
push dword [ebp + 0x10]
push esi
push ref_00022017  ; push 0x22017
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_00009e0a:
call fcn_00015480  ; call 0x15480
mov edx, ebx
test al, al
je near loc_00009ec3  ; je 0x9ec3
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00009e36  ; je 0x9e36
push edi
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00009e36:
push esi
push ref_000206f4  ; push 0x206f4
push 0x34
jmp short loc_00009eb4  ; jmp 0x9eb4

loc_00009e40:
mov eax, dword [ebp + 0x10]
and eax, dword [ebp - 0x1c]
push ecx
or eax, edi
push eax
push esi
push dword [ebp + 8]
mov dword [ebp - 0x1c], eax
call fcn_00009c75  ; call 0x9c75
add esp, 0x10
mov ebx, eax
mov edx, eax
test eax, eax
jns short loc_00009ec3  ; jns 0x9ec3
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00009e84  ; je 0x9e84
sub esp, 0xc
push edi
push dword [ebp + 0x10]
push esi
push ref_00022084  ; push 0x22084
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_00009e84:
call fcn_00015480  ; call 0x15480
mov edx, ebx
test al, al
je short loc_00009ec3  ; je 0x9ec3
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00009eac  ; je 0x9eac
push edx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00009eac:
push eax
push ref_000206f4  ; push 0x206f4
push 0x40

loc_00009eb4:
push ref_00022050  ; push 0x22050
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
mov edx, ebx

loc_00009ec3:
lea esp, [ebp - 0xc]
mov eax, edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00009ecd:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov ebx, dword [ebp + 8]
mov edi, dword [ebp + 0x14]
lea esi, [ebx + 0x2338]

loc_00009ee2:
sub esp, 0xc
push esi
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 1
jne short loc_00009ee2  ; jne 0x9ee2
push ecx
push ecx
push dword [ebp + 0xc]
lea eax, [ebx + 0x2330]
push eax
call fcn_00017e8f  ; call 0x17e8f
mov eax, dword [ebp + 0x10]
add esp, 0xc
shl eax, 8
movzx eax, ax
push eax
push 0xff
push esi
call fcn_00018981  ; call 0x18981
pop eax
mov eax, edi
pop edx
movzx edi, al
or edi, 0xf000
lea eax, [ebx + 0x233a]
push edi
push eax
call fcn_00017e04  ; call 0x17e04
mov eax, dword [ebp + 0x10]
add esp, 0x10
lea ecx, [eax - 1]
cmp ecx, 6
ja short loc_00009f64  ; ja 0x9f64
mov eax, 1
shl eax, cl
test al, 0x55
je short loc_00009f64  ; je 0x9f64
mov eax, dword [ebp + 0x18]
push edx
push edx
push dword [eax]
lea eax, [ebx + 0x2334]
push eax
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10

loc_00009f64:
push eax
push eax
push 1
push esi
call fcn_00018927  ; call 0x18927
add esp, 0x10

loc_00009f71:
sub esp, 0xc
push esi
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 1
jne short loc_00009f71  ; jne 0x9f71
sub esp, 0xc
push esi
mov esi, 0x80000007
call fcn_00017d8b  ; call 0x17d8b
mov edx, dword [ebp + 0x1c]
add esp, 0x10
and eax, 6
mov byte [edx], al
test al, al
jne short loc_00009fcb  ; jne 0x9fcb
xor esi, esi
cmp dword [ebp + 0x10], 6
ja short loc_00009fcb  ; ja 0x9fcb
mov cl, byte [ebp + 0x10]
mov eax, 1
shl eax, cl
test al, 0x55
je short loc_00009fcb  ; je 0x9fcb
sub esp, 0xc
add ebx, 0x2334
push ebx
call fcn_00017e4e  ; call 0x17e4e
mov edx, dword [ebp + 0x18]
add esp, 0x10
mov dword [edx], eax

loc_00009fcb:
lea esp, [ebp - 0xc]
mov eax, esi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00009fd5:
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
call fcn_00016c9a  ; call 0x16c9a
mov esi, eax
lea eax, [eax + 0xe]
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
mov edx, 0x14
and eax, 0x7f
cmp al, 2
mov eax, 0x34
cmovne edx, eax
add edx, esi
mov dword [esp], edx
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
xor ecx, ecx
mov bl, al
and ebx, 0xfffffffc

loc_0000a02b:
test bl, bl
je short loc_0000a065  ; je 0xa065
inc cl
je short loc_0000a065  ; je 0xa065
movzx edi, bl
sub esp, 0xc
add edi, esi
push edi
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
cmp al, byte [ebp - 0x19]
mov cl, al
mov dword [ebp - 0x20], ecx
je short loc_0000a069  ; je 0xa069
sub esp, 0xc
inc edi
push edi
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
mov ecx, dword [ebp - 0x20]
mov bl, al
and ebx, 0xfffffffc
jmp short loc_0000a02b  ; jmp 0xa02b

loc_0000a065:
xor eax, eax
jmp short loc_0000a06b  ; jmp 0xa06b

loc_0000a069:
mov al, bl

loc_0000a06b:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000a073:
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
call fcn_00016c9a  ; call 0x16c9a
add esp, 0x10
mov dword [ebp - 0x1c], eax

loc_0000a0a4:
test bx, bx
je short loc_0000a0e4  ; je 0xa0e4
inc si
je short loc_0000a0e4  ; je 0xa0e4
mov eax, dword [ebp - 0x1c]
movzx ecx, bx
sub esp, 0xc
lea edi, [ecx + eax]
push edi
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
mov esi, eax
cmp ax, word [ebp - 0x1e]
je short loc_0000a0e8  ; je 0xa0e8
sub esp, 0xc
lea ecx, [edi + 2]
push ecx
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
mov ebx, eax
shr bx, 4
and ebx, 0xfffffffc
jmp short loc_0000a0a4  ; jmp 0xa0a4

loc_0000a0e4:
xor eax, eax
jmp short loc_0000a0ea  ; jmp 0xa0ea

loc_0000a0e8:
mov eax, ebx

loc_0000a0ea:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000a0f2:
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
call fcn_00016c9a  ; call 0x16c9a
mov edx, dword [ebp - 0x30]
push 2
push edx
push edi
push esi
mov dword [ebp - 0x2c], eax
call fcn_0000a073  ; call 0xa073
add esp, 0x20
mov edx, 0x80000003
mov ecx, dword [ebp - 0x2c]
test ax, ax
je near loc_0000a216  ; je 0xa216
movzx eax, ax
lea esi, [ecx + eax + 0x14]
push eax
push 1
push 0xf0
push esi
call fcn_0001878a  ; call 0x1878a
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
call fcn_00017da5  ; call 0x17da5
movzx edi, byte [ebp - 0x1c]
add esp, 0xc
push 0
push esi
push edi
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xe
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
mov byte [ebp - 0x1c], 0
mov bl, al
movzx eax, byte [ebp - 0x28]
sar bl, 7
and ebx, 7
mov dword [ebp - 0x28], eax
movzx eax, byte [ebp - 0x24]
mov dword [ebp - 0x24], eax

loc_0000a1b4:
movzx edx, byte [ebp - 0x1c]
push eax
push edx
push esi
push edi
mov dword [ebp - 0x30], edx
call fcn_00016c9a  ; call 0x16c9a
mov edx, dword [ebp - 0x30]
push 2
push edx
push dword [ebp - 0x28]
push dword [ebp - 0x24]
mov dword [ebp - 0x2c], eax
call fcn_0000a073  ; call 0xa073
add esp, 0x20
mov ecx, dword [ebp - 0x2c]
test ax, ax
je short loc_0000a20c  ; je 0xa20c
movzx eax, ax
lea edx, [ecx + eax + 0x14]
push eax
push 1
push 0xf0
push edx
mov dword [ebp - 0x2c], edx
call fcn_0001878a  ; call 0x1878a
pop edx
mov edx, dword [ebp - 0x2c]
pop ecx
push dword [ebp - 0x20]
push edx
call fcn_00017da5  ; call 0x17da5
add esp, 0x10

loc_0000a20c:
inc byte [ebp - 0x1c]
cmp byte [ebp - 0x1c], bl
jbe short loc_0000a1b4  ; jbe 0xa1b4
xor edx, edx

loc_0000a216:
lea esp, [ebp - 0xc]
mov eax, edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000a220:
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
call fcn_00016c9a  ; call 0x16c9a
mov ecx, dword [ebp - 0x24]
push 0x10
push ecx
push esi
push edi
mov dword [ebp - 0x20], eax
call fcn_00009fd5  ; call 0x9fd5
add esp, 0x20
test al, al
jne short loc_0000a277  ; jne 0xa277

loc_0000a26d:
mov eax, 0x80000003
jmp near loc_0000a3e2  ; jmp 0xa3e2

loc_0000a277:
movzx eax, al
sub esp, 0xc
add eax, dword [ebp - 0x20]
lea esi, [eax + 0x12]
push esi
mov dword [ebp - 0x28], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test ah, 0x10
je short loc_0000a26d  ; je 0xa26d
movzx eax, byte [ebp - 0x1c]
movzx edx, bl
push ecx
push 0
push eax
push edx
mov dword [ebp - 0x34], edx
mov dword [ebp - 0x30], eax
call fcn_00016c9a  ; call 0x16c9a
mov ebx, eax
lea eax, [eax + 0xe]
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
mov byte [ebp - 0x1c], al
sar byte [ebp - 0x1c], 7
and byte [ebp - 0x1c], 7
cmp byte [ebp - 0x2c], 0
jne short loc_0000a306  ; jne 0xa306
sub esp, 0xc
push ebx
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
cmp ax, 0x8086
jne short loc_0000a306  ; jne 0xa306
sub esp, 0xc
add ebx, 2
push ebx
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
cmp ax, 0x93c
jne short loc_0000a306  ; jne 0xa306
push eax
push eax
mov eax, dword [ebp - 0x20]
push 0x40
add eax, 0x70
push eax
call fcn_00018927  ; call 0x18927
add esp, 0x10

loc_0000a306:
movzx eax, byte [ebp - 0x3c]
xor ebx, ebx
mov byte [ebp - 0x24], 0
mov dword [ebp - 0x3c], eax
movzx eax, byte [ebp - 0x38]
mov dword [ebp - 0x40], eax

loc_0000a31a:
push edi
movzx edi, byte [ebp - 0x24]
push edi
push dword [ebp - 0x30]
push dword [ebp - 0x34]
call fcn_00016c9a  ; call 0x16c9a
push 0x10
push edi
push dword [ebp - 0x3c]
push dword [ebp - 0x40]
mov dword [ebp - 0x38], eax
call fcn_00009fd5  ; call 0x9fd5
add esp, 0x20
test al, al
je short loc_0000a388  ; je 0xa388
mov edi, dword [ebp - 0x38]
movzx eax, al
sub esp, 0xc
add edi, eax
lea eax, [edi + 0x12]
push eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test ah, 0x10
je short loc_0000a388  ; je 0xa388
test bl, bl
jne short loc_0000a376  ; jne 0xa376
mov eax, dword [ebp - 0x28]
push ebx
push ebx
push 0x40
add eax, 0x10
push eax
call fcn_00018730  ; call 0x18730
add esp, 0x10

loc_0000a376:
push ecx
add edi, 0x10
push ecx
mov bl, 1
push 0x40
push edi
call fcn_00018730  ; call 0x18730
add esp, 0x10

loc_0000a388:
inc byte [ebp - 0x24]
mov al, byte [ebp - 0x1c]
cmp byte [ebp - 0x24], al
jbe short loc_0000a31a  ; jbe 0xa31a
cmp bl, 1
sbb ebx, ebx
and ebx, 0x80000003
cmp byte [ebp - 0x2c], 0
jne short loc_0000a3bc  ; jne 0xa3bc
mov eax, dword [ebp - 0x20]
push edx
push edx
push 0x1040
add eax, 0xd4
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10

loc_0000a3bc:
push eax
push eax
mov eax, dword [ebp - 0x28]
push 0x20
add eax, 0x10
push eax
call fcn_00018730  ; call 0x18730
add esp, 0x10

loc_0000a3cf:
sub esp, 0xc
push esi
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test ah, 8
jne short loc_0000a3cf  ; jne 0xa3cf
mov eax, ebx

loc_0000a3e2:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000a3ea:
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
call fcn_0001bfbb  ; call 0x1bfbb
cmp eax, 2
je short loc_0000a44e  ; je 0xa44e

loc_0000a412:
movzx edi, byte [ebp - 0x1c]
movzx esi, bl
xor ebx, ebx
push ecx
push 0
push edi
push esi
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xe
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
mov byte [ebp - 0x1c], al
movzx eax, byte [ebp - 0x20]
sar byte [ebp - 0x1c], 7
and byte [ebp - 0x1c], 7
mov dword [ebp - 0x20], eax
movzx eax, byte [ebp - 0x24]
mov dword [ebp - 0x24], eax
jmp short loc_0000a4b5  ; jmp 0xa4b5

loc_0000a44e:
push eax
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
mov edi, eax
lea eax, [eax + 0xf0]
add edi, 0x48
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
mov dword [esp], edi
mov esi, eax
call fcn_00017dc2  ; call 0x17dc2
mov edi, eax
pop eax
and edi, 0xfffc
movzx eax, byte [ebp - 0x28]
pop edx
push eax
mov eax, esi
and eax, 0xffffc000
push eax
call fcn_0001c3cb  ; call 0x1c3cb
movzx eax, al
lea eax, [edi + eax*8 + 0x190]
mov dword [esp], eax
call fcn_00018f64  ; call 0x18f64
add esp, 0x10
test al, 1
je near loc_0000a412  ; je 0xa412
jmp near loc_0000a557  ; jmp 0xa557

loc_0000a4b5:
push 0x10
movzx ecx, bl
push ecx
push dword [ebp - 0x20]
push dword [ebp - 0x24]
mov dword [ebp - 0x28], ecx
call fcn_00009fd5  ; call 0x9fd5
add esp, 0x10
mov ecx, dword [ebp - 0x28]
test al, al
mov dl, al
jne short loc_0000a4df  ; jne 0xa4df

loc_0000a4d5:
inc ebx
cmp bl, byte [ebp - 0x1c]
jbe short loc_0000a4b5  ; jbe 0xa4b5
xor ebx, ebx
jmp short loc_0000a50f  ; jmp 0xa50f

loc_0000a4df:
push eax
push ecx
push edi
push esi
mov dword [ebp - 0x28], edx
call fcn_00016c9a  ; call 0x16c9a
mov edx, dword [ebp - 0x28]
movzx edx, dl
lea eax, [eax + edx + 0xc]
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test eax, 0x40000
jne short loc_0000a4d5  ; jne 0xa4d5
jmp short loc_0000a557  ; jmp 0xa557

loc_0000a509:
inc ebx
cmp bl, byte [ebp - 0x1c]
ja short loc_0000a557  ; ja 0xa557

loc_0000a50f:
push 0x10
movzx ecx, bl
push ecx
push dword [ebp - 0x20]
push dword [ebp - 0x24]
mov dword [ebp - 0x28], ecx
call fcn_00009fd5  ; call 0x9fd5
add esp, 0x10
mov ecx, dword [ebp - 0x28]
test al, al
mov dl, al
je short loc_0000a509  ; je 0xa509
push eax
push ecx
push edi
push esi
mov dword [ebp - 0x28], edx
call fcn_00016c9a  ; call 0x16c9a
pop edx
mov edx, dword [ebp - 0x28]
pop ecx
movzx edx, dl
push 0x100
lea eax, [eax + edx + 0x10]
push eax
call fcn_00018927  ; call 0x18927
add esp, 0x10
jmp short loc_0000a509  ; jmp 0xa509

loc_0000a557:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000a55f:
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
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xe
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
mov byte [ebp - 0x19], 0
mov dword [ebp - 0x28], edi
mov bl, al
movzx eax, byte [ebp - 0x24]
sar bl, 7
and ebx, 7
mov dword [ebp - 0x24], eax

loc_0000a5ad:
push ecx
movzx ecx, byte [ebp - 0x19]
push ecx
push dword [ebp - 0x20]
mov dword [ebp - 0x2c], ecx
push edi
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], eax
mov esi, eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
je short loc_0000a631  ; je 0xa631
mov ecx, dword [ebp - 0x2c]
push 0x10
push ecx
push dword [ebp - 0x24]
push dword [ebp - 0x28]
call fcn_00009fd5  ; call 0x9fd5
add esp, 0x10
test al, al
je short loc_0000a631  ; je 0xa631
cmp byte [ebp - 0x1a], 1
movzx eax, al
jne short loc_0000a613  ; jne 0xa613
push edx
mov edx, dword [ebp + 0x10]
lea eax, [esi + eax + 8]
mov cx, word [edx]
shl ecx, 5
movzx ecx, cx
push ecx
push 0xff1f
push eax
call fcn_00018981  ; call 0x18981
add esp, 0x10
jmp short loc_0000a631  ; jmp 0xa631

loc_0000a613:
sub esp, 0xc
lea eax, [esi + eax + 4]
push eax
call fcn_00017dc2  ; call 0x17dc2
mov esi, dword [ebp + 0x10]
add esp, 0x10
and eax, 7
cmp word [esi], ax
jbe short loc_0000a631  ; jbe 0xa631
mov word [esi], ax

loc_0000a631:
inc byte [ebp - 0x19]
cmp byte [ebp - 0x19], bl
jbe near loc_0000a5ad  ; jbe 0xa5ad
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000a647:
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
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 0
mov dword [ebp - 0x20], eax
mov eax, esi
movzx esi, al
push esi
push edi
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xe
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
xor ecx, ecx
mov byte [ebp - 0x19], 0
mov dl, al
sar dl, 7
and edx, 7

loc_0000a69d:
movzx eax, byte [ebp - 0x19]
mov dword [ebp - 0x28], edx
push edx
push eax
push esi
push edi
mov dword [ebp - 0x24], ecx
call fcn_00016c9a  ; call 0x16c9a
mov ebx, eax
lea eax, [eax + 0xb]
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
mov byte [ebp - 0x1a], al
lea eax, [ebx + 0xa]
add ebx, 9
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
mov dword [esp], ebx
mov byte [ebp - 0x1b], al
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
mov ecx, dword [ebp - 0x24]
cmp byte [ebp - 0x1b], 0
mov edx, dword [ebp - 0x28]
jne short loc_0000a6f8  ; jne 0xa6f8
cmp byte [ebp - 0x1a], 8
jne short loc_0000a6f8  ; jne 0xa6f8
cmp al, 0x20
je short loc_0000a6f6  ; je 0xa6f6
cmp al, 0x10
jne short loc_0000a6f8  ; jne 0xa6f8

loc_0000a6f6:
mov cl, 1

loc_0000a6f8:
inc byte [ebp - 0x19]
cmp byte [ebp - 0x19], dl
jbe short loc_0000a69d  ; jbe 0xa69d
test cl, cl
jne short loc_0000a719  ; jne 0xa719
push eax
push eax
mov eax, dword [ebp - 0x20]
push 2
add eax, 0xd4
push eax
call fcn_00018730  ; call 0x18730
add esp, 0x10

loc_0000a719:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000a723:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
mov ebx, dword [ebp + 0xc]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0000a75e  ; je 0xa75e
mov ax, word [esi]
and eax, 0x1c00
cmp eax, 0x1400
jbe short loc_0000a75e  ; jbe 0xa75e
push edx
push ref_000220be  ; push 0x220be
push 0x275
push ref_00022106  ; push 0x22106
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000a75e:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0000a78d  ; je 0xa78d
mov eax, ebx
and eax, 0x1c00
cmp eax, 0x1400
jbe short loc_0000a78d  ; jbe 0xa78d
push eax
push ref_00022154  ; push 0x22154
push 0x276
push ref_00022106  ; push 0x22106
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000a78d:
mov cx, word [esi]
mov eax, ecx
and ecx, 0x1c00
sar ecx, 0xa
and eax, 0x3ff
lea ecx, [ecx + ecx*4]
shl eax, cl
test eax, eax
je short loc_0000a7c5  ; je 0xa7c5
mov ecx, ebx
mov edx, ebx
and ecx, 0x1c00
and edx, 0x3ff
sar ecx, 0xa
lea ecx, [ecx + ecx*4]
shl edx, cl
cmp eax, edx
jle short loc_0000a7c8  ; jle 0xa7c8

loc_0000a7c5:
mov word [esi], bx

loc_0000a7c8:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0000a7cf:
push ebp
mov ecx, 4
mov ebp, esp
push edi
push esi
mov esi, ref_000203f8  ; mov esi, 0x203f8
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
call fcn_0001bfbb  ; call 0x1bfbb
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

loc_0000a829:
push eax
push 0
push dword [ebp - 0x3c]
push dword [ebp - 0x54]
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], eax
mov ebx, eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
jne short loc_0000a858  ; jne 0xa858

loc_0000a848:
inc dword [ebp - 0x3c]
cmp dword [ebp - 0x3c], 0x20
jne short loc_0000a829  ; jne 0xa829
xor eax, eax
jmp near loc_0000b012  ; jmp 0xb012

loc_0000a858:
sub esp, 0xc
add ebx, 0xe
push ebx
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
mov byte [ebp - 0x57], 0
mov byte [ebp - 0x55], al
sar byte [ebp - 0x55], 7
and byte [ebp - 0x55], 7

loc_0000a876:
movzx ebx, byte [ebp - 0x57]
push edi
mov esi, dword [ebp - 0x54]
push ebx
push dword [ebp - 0x3c]
push esi
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], eax
mov edi, eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
je near loc_0000aff2  ; je 0xaff2
push 0x10
push ebx
push dword [ebp - 0x3c]
push esi
call fcn_00009fd5  ; call 0x9fd5
add esp, 0x10
mov byte [ebp - 0x60], al
test al, al
je near loc_0000b006  ; je 0xb006
sub esp, 0xc
push edi
call fcn_00017dc2  ; call 0x17dc2
mov word [ebp - 0x46], ax
lea eax, [edi + 2]
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
mov word [ebp - 0x48], ax
lea eax, [edi + 8]
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
cmp dword [ebp - 0x5c], 2
mov byte [ebp - 0x56], al
jne near loc_0000aa0c  ; jne 0xaa0c
call fcn_0001c0bd  ; call 0x1c0bd
cmp eax, 2
jne short loc_0000a92d  ; jne 0xa92d
cmp word [ebp - 0x46], 0x8086
jne short loc_0000a92d  ; jne 0xa92d
sub esp, 0xc
lea eax, [edi + 0xa]
push eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
cmp ax, 0x280
jne short loc_0000a92d  ; jne 0xa92d
mov eax, dword [ebp + 8]
push esi
push esi
push 0xfc
add eax, 0x418
push eax
call fcn_0001875d  ; call 0x1875d
add esp, 0x10

loc_0000a92d:
mov eax, dword [ebp - 0x48]
xor ecx, ecx
sub ax, 0x8b1
mov word [ebp - 0x40], ax

loc_0000a93a:
movzx edx, cl
cmp edx, dword [ebp + 0x14]
jae short loc_0000a9b3  ; jae 0xa9b3
imul edx, edx, 0x18
add edx, dword [ebp + 0x18]
mov esi, edx
test byte [edx + 8], 2
je short loc_0000a9b0  ; je 0xa9b0
mov ax, word [ebp - 0x46]
cmp ax, word [edx]
jne short loc_0000a9b0  ; jne 0xa9b0
mov eax, dword [ebp - 0x48]
cmp ax, word [edx + 2]
jne short loc_0000a9b0  ; jne 0xa9b0
mov al, byte [edx + 4]
cmp byte [ebp - 0x56], al
je short loc_0000a96e  ; je 0xa96e
inc al
jne short loc_0000a9b0  ; jne 0xa9b0

loc_0000a96e:
cmp word [ebp - 0x46], 0x8086
je short loc_0000a98b  ; je 0xa98b

loc_0000a976:
mov ax, word [esi + 0xa]
mov ecx, dword [esi + 0xc]
mov word [ebp - 0x40], ax
mov dword [ebp - 0x50], ecx
test ax, ax
jne short loc_0000a9e2  ; jne 0xa9e2
jmp short loc_0000a9ba  ; jmp 0xa9ba

loc_0000a98b:
cmp word [ebp - 0x40], 3
mov dword [ebp - 0x44], ecx
ja short loc_0000a976  ; ja 0xa976
movzx eax, word [esi + 0xa]
sub esp, 0xc
add eax, edi
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
mov ecx, dword [ebp - 0x44]
cmp ax, 0xcafe
je short loc_0000a976  ; je 0xa976

loc_0000a9b0:
inc ecx
jmp short loc_0000a93a  ; jmp 0xa93a

loc_0000a9b3:
mov dword [ebp - 0x50], 0x1f

loc_0000a9ba:
push 0x1e
push ebx
push dword [ebp - 0x3c]
push dword [ebp - 0x54]
call fcn_0000a073  ; call 0xa073
add esp, 0x10
mov dword [ebp - 0x44], 0
mov dword [ebp - 0x4c], 0
mov word [ebp - 0x40], ax
test ax, ax
je short loc_0000aa27  ; je 0xaa27

loc_0000a9e2:
mov eax, dword [ebp - 0x74]
sub esp, 0xc
add eax, dword [ebp + 8]
push eax
call fcn_00017e4e  ; call 0x17e4e
mov dword [ebp - 0x4c], eax
movzx eax, word [ebp - 0x40]
lea eax, [edi + eax + 4]
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
mov dword [ebp - 0x44], eax
jmp short loc_0000aa27  ; jmp 0xaa27

loc_0000aa0c:
mov dword [ebp - 0x50], 0x1f
mov dword [ebp - 0x44], 0
mov dword [ebp - 0x4c], 0
mov word [ebp - 0x40], 0

loc_0000aa27:
movzx esi, byte [ebp - 0x60]
sub esp, 0xc
add esi, edi
lea eax, [esi + 0x24]
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
and eax, 0x800
mov dword [ebp - 0x60], eax
je short loc_0000aa4f  ; je 0xaa4f
mov eax, dword [ebp + 0x3c]
cmp byte [eax + 0x12], 1
je short loc_0000aa55  ; je 0xaa55

loc_0000aa4f:
mov eax, dword [ebp + 0x48]
mov byte [eax], 0

loc_0000aa55:
cmp dword [ebp + 0x20], 1
ja near loc_0000ad5b  ; ja 0xad5b
lea eax, [esi + 0xc]
sub esp, 0xc
push eax
mov dword [ebp - 0x60], eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test eax, 0x40000
jne short loc_0000aa7e  ; jne 0xaa7e
mov eax, dword [ebp + 0x44]
mov byte [eax], 0

loc_0000aa7e:
sub esp, 0xc
push dword [ebp - 0x60]
call fcn_00017dc2  ; call 0x17dc2
mov ebx, eax
call fcn_00015479  ; call 0x15479
shr bx, 0xa
add esp, 0x10
and ebx, 3
test al, al
je short loc_0000aab4  ; je 0xaab4
movzx eax, bx
push eax
push dword [ebp - 0x3c]
push ref_0002219b  ; push 0x2219b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000aab4:
cmp dword [ebp + 0x20], 0
jne near loc_0000ac13  ; jne 0xac13
lea eax, [esi + 4]
sub esp, 0xc
push eax
mov dword [ebp - 0x68], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test ax, ax
js short loc_0000aaf5  ; js 0xaaf5
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000aaef  ; je 0xaaef
push ecx
push ecx
push ref_000221c5  ; push 0x221c5
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000aaef:
mov eax, dword [ebp + 0x40]
mov byte [eax], 1

loc_0000aaf5:
sub esp, 0xc
xor esi, esi
lea eax, [edi + 0xb]
push eax
call fcn_00017d8b  ; call 0x17d8b
mov byte [ebp - 0x6b], al
lea eax, [edi + 0xa]
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10

loc_0000ab14:
mov ecx, esi
movzx edx, cl
cmp edx, dword [ebp + 0x14]
jae short loc_0000ab71  ; jae 0xab71
imul edx, edx, 0x18
add edx, dword [ebp + 0x18]
test byte [edx + 8], 1
je short loc_0000ab6e  ; je 0xab6e
mov cx, word [edx]
cmp cx, word [ebp - 0x46]
je short loc_0000ab37  ; je 0xab37
inc cx
jne short loc_0000ab6e  ; jne 0xab6e

loc_0000ab37:
mov cx, word [edx + 2]
cmp cx, word [ebp - 0x48]
je short loc_0000ab45  ; je 0xab45
inc cx
jne short loc_0000ab6e  ; jne 0xab6e

loc_0000ab45:
mov cl, byte [edx + 4]
cmp cl, byte [ebp - 0x56]
je short loc_0000ab51  ; je 0xab51
inc cl
jne short loc_0000ab6e  ; jne 0xab6e

loc_0000ab51:
mov cl, byte [edx + 5]
cmp cl, byte [ebp - 0x6b]
je short loc_0000ab5d  ; je 0xab5d
inc cl
jne short loc_0000ab6e  ; jne 0xab6e

loc_0000ab5d:
mov cl, byte [edx + 6]
cmp cl, al
jne short loc_0000ab6a  ; jne 0xab6a

loc_0000ab64:
movzx ebx, byte [edx + 7]
jmp short loc_0000ab71  ; jmp 0xab71

loc_0000ab6a:
inc cl
je short loc_0000ab64  ; je 0xab64

loc_0000ab6e:
inc esi
jmp short loc_0000ab14  ; jmp 0xab14

loc_0000ab71:
test bl, 2
je short loc_0000abc2  ; je 0xabc2
mov ecx, dword [ebp + 0xc]
sub esp, 0xc
mov eax, dword [ebp + 8]
lea eax, [eax + ecx + 0xc]
push eax
call fcn_00017e4e  ; call 0x17e4e
pop ecx
push dword [ebp - 0x60]
mov esi, eax
call fcn_00017e4e  ; call 0x17e4e
and esi, 0x38000
pop edx
push dword [ebp - 0x68]
and eax, 0x38000
cmp eax, esi
cmovae esi, eax
call fcn_00017e4e  ; call 0x17e4e
shr esi, 6
mov edx, ebx
and edx, 0xfffffffd
add esp, 0x10
and eax, 0xe00
cmp esi, eax
cmova ebx, edx

loc_0000abc2:
test bl, 1
je short loc_0000ac13  ; je 0xac13
mov ecx, dword [ebp + 0xc]
sub esp, 0xc
mov eax, dword [ebp + 8]
lea eax, [eax + ecx + 0xc]
push eax
call fcn_00017e4e  ; call 0x17e4e
mov esi, eax
pop eax
and esi, 0x7000
push dword [ebp - 0x60]
call fcn_00017e4e  ; call 0x17e4e
pop edx
push dword [ebp - 0x68]
and eax, 0x7000
cmp eax, esi
cmovae esi, eax
call fcn_00017e4e  ; call 0x17e4e
shr esi, 6
mov edx, ebx
and edx, 0xfffffffe
add esp, 0x10
and eax, 0x1c0
cmp esi, eax
cmova ebx, edx

loc_0000ac13:
mov eax, dword [ebp + 0x1c]
and word [eax], bx
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ac38  ; je 0xac38
movzx ebx, bx
push ebx
push dword [ebp - 0x3c]
push ref_000221f8  ; push 0x221f8
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ac38:
cmp dword [ebp - 0x5c], 2
jne short loc_0000acb8  ; jne 0xacb8
cmp word [ebp - 0x40], 0
je short loc_0000acb8  ; je 0xacb8
cmp word [ebp - 0x6a], 0
je short loc_0000acb8  ; je 0xacb8
mov eax, dword [ebp - 0x4c]
and eax, 0x1f
cmp eax, 0x1f
jne short loc_0000acb8  ; jne 0xacb8
mov ecx, dword [ebp - 0x50]
mov eax, dword [ebp - 0x44]
and eax, ecx
cmp eax, ecx
jne short loc_0000acb8  ; jne 0xacb8
mov eax, dword [ebp + 0x3c]
cmp byte [eax + 0x11], 0
je short loc_0000acb8  ; je 0xacb8
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
jbe short loc_0000ac91  ; jbe 0xac91
mov dword [ebx], eax

loc_0000ac91:
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
jbe short loc_0000acb8  ; jbe 0xacb8
mov eax, dword [ebp + 0x38]
mov dword [esi], ecx
mov dword [eax], edx

loc_0000acb8:
mov eax, dword [ebp + 0x24]
xor edx, edx
mov ebx, dword [eax]

loc_0000acbf:
movzx esi, dl
cmp esi, dword [ebp + 0x14]
jae near loc_0000af08  ; jae 0xaf08
imul esi, esi, 0x18
add esi, dword [ebp + 0x18]
test byte [esi + 8], 4
je short loc_0000ad55  ; je 0xad55
mov ax, word [ebp - 0x46]
cmp word [esi], ax
jne short loc_0000ad55  ; jne 0xad55
mov ax, word [esi + 2]
cmp ax, word [ebp - 0x48]
je short loc_0000acee  ; je 0xacee
inc ax
jne short loc_0000ad55  ; jne 0xad55

loc_0000acee:
mov al, byte [esi + 4]
cmp al, byte [ebp - 0x56]
jne short loc_0000ad25  ; jne 0xad25

loc_0000acf6:
movzx eax, word [esi + 0x12]
test ax, ax
jns short loc_0000ad2b  ; jns 0xad2b
push ecx
mov edx, ebx
push ecx
movzx ebx, bx
push eax
lea eax, [ebp - 0x2a]
push eax
shr edx, 0x10
mov word [ebp - 0x2a], dx
call fcn_0000a723  ; call 0xa723
movzx eax, word [ebp - 0x2a]
add esp, 0x10
shl eax, 0x10
or ebx, eax
jmp short loc_0000ad2b  ; jmp 0xad2b

loc_0000ad25:
inc al
jne short loc_0000ad55  ; jne 0xad55
jmp short loc_0000acf6  ; jmp 0xacf6

loc_0000ad2b:
movzx eax, word [esi + 0x10]
test ax, ax
jns short loc_0000ad4b  ; jns 0xad4b
push edx
push edx
push eax
lea eax, [ebp - 0x2a]
push eax
mov word [ebp - 0x2a], bx
call fcn_0000a723  ; call 0xa723
mov bx, word [ebp - 0x2a]
add esp, 0x10

loc_0000ad4b:
mov eax, dword [ebp + 0x24]
mov dword [eax], ebx
jmp near loc_0000af08  ; jmp 0xaf08

loc_0000ad55:
inc edx
jmp near loc_0000acbf  ; jmp 0xacbf

loc_0000ad5b:
cmp dword [ebp + 0x20], 2
jne near loc_0000af08  ; jne 0xaf08
cmp dword [ebp - 0x5c], 2
jne near loc_0000ae28  ; jne 0xae28
cmp word [ebp - 0x40], 0
je near loc_0000ae28  ; je 0xae28
mov eax, dword [ebp + 0x2c]
cmp byte [eax], 0
je near loc_0000ae28  ; je 0xae28
mov eax, dword [ebp - 0x4c]
and eax, 0x1f
cmp eax, 0x1f
jne near loc_0000ae28  ; jne 0xae28
mov eax, dword [ebp - 0x44]
mov ecx, dword [ebp - 0x50]
and eax, ecx
cmp eax, ecx
jne near loc_0000ae28  ; jne 0xae28
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
call fcn_00018b68  ; call 0x18b68
mov eax, dword [ebp + 0x38]
add esp, 0xc
mov ecx, dword [ebp - 0x40]
push dword [eax]
push 0xfffffffffffffffc
push ecx
call fcn_00018b68  ; call 0x18b68
mov edx, dword [ebp - 0x44]
add esp, 0xc
push 0x40a00000
push 0x1c00ffff
add edx, 8
push edx
mov dword [ebp - 0x40], edx
call fcn_00018b68  ; call 0x18b68
mov eax, dword [ebp + 0x3c]
add esp, 0x10
mov edx, dword [ebp - 0x40]
mov al, byte [eax + 0x11]
cmp al, 1
je short loc_0000ae16  ; je 0xae16
cmp al, 2
setne al
movzx eax, al
lea eax, [eax + eax + 0xd]
jmp short loc_0000ae1b  ; jmp 0xae1b

loc_0000ae16:
mov eax, 0xe

loc_0000ae1b:
push ecx
push eax
push 0xffffffffffffffe0
push edx
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_0000ae28:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ae4a  ; je 0xae4a
mov eax, dword [ebp + 0x1c]
movzx eax, word [eax]
push eax
push dword [ebp - 0x3c]
push ref_00022227  ; push 0x22227
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ae4a:
push eax
mov eax, dword [ebp + 0x1c]
movzx eax, word [eax]
push eax
push 0xfffc
lea eax, [esi + 0x10]
push eax
call fcn_00018981  ; call 0x18981
add esp, 0x10
cmp dword [ebp - 0x60], 0
je short loc_0000ae85  ; je 0xae85
mov eax, dword [ebp + 0x3c]
cmp byte [eax + 0x12], 1
jne short loc_0000ae85  ; jne 0xae85
push ecx
add esi, 0x28
push ecx
push 0x400
push esi
call fcn_00018927  ; call 0x18927
add esp, 0x10

loc_0000ae85:
push 0x18
push ebx
push dword [ebp - 0x3c]
push dword [ebp - 0x54]
call fcn_0000a073  ; call 0xa073
add esp, 0x10
movzx ebx, ax
test bx, bx
je short loc_0000af08  ; je 0xaf08
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
call fcn_0000a723  ; call 0xa723
movzx eax, word [ebp - 0x2a]
add esp, 0xc
push eax
push 0xe000
lea eax, [ebx + 4]
add ebx, 6
push eax
call fcn_00018981  ; call 0x18981
mov eax, dword [ebp + 0x3c]
mov edx, dword [ebp - 0x40]
pop ecx
movzx eax, word [eax + 0x16]
shr edx, 0x10
mov word [ebp - 0x2a], dx
pop edx
push eax
push esi
call fcn_0000a723  ; call 0xa723
movzx eax, word [ebp - 0x2a]
add esp, 0xc
push eax
push 0xe000
push ebx
call fcn_00018981  ; call 0x18981
add esp, 0x10

loc_0000af08:
sub esp, 0xc
lea eax, [edi + 0xb]
push eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
cmp al, 6
jne near loc_0000aff2  ; jne 0xaff2
sub esp, 0xc
mov bl, 1
lea eax, [edi + 0x19]
push eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, al
jne short loc_0000af72  ; jne 0xaf72
mov eax, dword [ebp + 8]
sub esp, 0xc
add eax, 0x1a
push eax
call fcn_00017d8b  ; call 0x17d8b
mov bl, byte [ebp - 0x58]
add esp, 0x10
cmp al, bl
jbe near loc_0000b00d  ; jbe 0xb00d
movzx eax, al
shl eax, 0x10
or eax, dword [ebp - 0x64]
push esi
push eax
push 0xff000000
lea eax, [edi + 0x18]
push eax
call fcn_00018b68  ; call 0x18b68
mov al, bl
add esp, 0x10
inc eax
xor ebx, ebx

loc_0000af72:
cmp al, byte [ebp - 0x58]
jbe short loc_0000aff2  ; jbe 0xaff2
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
call fcn_0000a7cf  ; call 0xa7cf
add esp, 0x50
cmp eax, 0x8000000e
jne short loc_0000afdb  ; jne 0xafdb
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000afdb  ; je 0xafdb
push edx
push esi
push ref_00022254  ; push 0x22254
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000afdb:
test bl, bl
jne short loc_0000aff2  ; jne 0xaff2
push eax
push eax
push 0xff000000
lea eax, [edi + 0x18]
push eax
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10

loc_0000aff2:
inc byte [ebp - 0x57]
mov al, byte [ebp - 0x55]
cmp byte [ebp - 0x57], al
jbe near loc_0000a876  ; jbe 0xa876
jmp near loc_0000a848  ; jmp 0xa848

loc_0000b006:
mov eax, 0x8000000e
jmp short loc_0000b012  ; jmp 0xb012

loc_0000b00d:
mov eax, 0x80000009

loc_0000b012:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000b01a:
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
call fcn_00016c9a  ; call 0x16c9a
mov esi, eax
call fcn_0001bfbb  ; call 0x1bfbb
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
call fcn_00016c9a  ; call 0x16c9a
mov edi, eax
lea eax, [esi + 0xf0]
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
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
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
je near loc_0000b2d9  ; je 0xb2d9
cmp dword [ebp - 0x48], 2
jne short loc_0000b113  ; jne 0xb113
sub esp, 0xc
lea eax, [esi + 0x48]
push eax
call fcn_00017dc2  ; call 0x17dc2
mov esi, dword [ebp - 0x40]
and esi, 0xffffc000
mov ebx, eax
pop eax
and ebx, 0xfffc
pop edx
push dword [ebp - 0x3c]
push esi
call fcn_0001c3cb  ; call 0x1c3cb
movzx eax, al
lea eax, [ebx + eax*8 + 0x190]
mov dword [esp], eax
call fcn_00018f64  ; call 0x18f64
add esp, 0x10
test al, 1
jne short loc_0000b113  ; jne 0xb113
mov eax, dword [ebp + 0x34]
mov byte [eax], 1

loc_0000b113:
push 0x10
push dword [ebp - 0x3c]
push dword [ebp - 0x50]
push dword [ebp - 0x54]
call fcn_00009fd5  ; call 0x9fd5
add esp, 0x10
movzx eax, al
mov dword [ebp - 0x4c], eax
test eax, eax
jne short loc_0000b15c  ; jne 0xb15c
call fcn_00015480  ; call 0x15480
mov ebx, 0x80000003
test al, al
je near loc_0000b2d9  ; je 0xb2d9
push esi
push ref_00022281  ; push 0x22281
push 0x4f7
push ref_00022106  ; push 0x22106
call fcn_0001548c  ; call 0x1548c
jmp near loc_0000b2d6  ; jmp 0xb2d6

loc_0000b15c:
mov eax, dword [ebp - 0x4c]
sub esp, 0xc
lea esi, [eax + edi]
lea eax, [esi + 0x24]
push eax
call fcn_00017e4e  ; call 0x17e4e
lea eax, [esi + 0xc]
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
mov ecx, dword [ebp + 0x30]
add esp, 0x10
mov edx, dword [ebp + 0x24]
shr ax, 0xa
and eax, 3
mov word [ecx], ax
mov dl, byte [edx + 0x10]
cmp dl, 4
je short loc_0000b1a2  ; je 0xb1a2
and eax, edx
mov word [ecx], ax
mov dword [ebp - 0x40], 1
jmp short loc_0000b1a9  ; jmp 0xb1a9

loc_0000b1a2:
mov dword [ebp - 0x40], 0

loc_0000b1a9:
sub esp, 0xc
lea eax, [edi + 0x19]
push eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
mov byte [ebp - 0x41], 1
mov bl, al
test al, al
jne short loc_0000b1eb  ; jne 0xb1eb
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
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
mov byte [ebp - 0x41], 0

loc_0000b1eb:
sub esp, 0xc
add esi, 0x1a
push esi
xor esi, esi
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
cmp dword [ebp - 0x48], 2
mov dword [ebp - 0x28], 0
mov word [ebp - 0x58], ax
jne short loc_0000b26b  ; jne 0xb26b
push 0x1e
push dword [ebp - 0x3c]
push dword [ebp - 0x50]
push dword [ebp - 0x54]
call fcn_0000a073  ; call 0xa073
add esp, 0x10
mov esi, eax
test ax, ax
je short loc_0000b26b  ; je 0xb26b
movzx eax, ax
sub esp, 0xc
lea edx, [edi + eax + 4]
push edx
mov dword [ebp - 0x3c], edx
call fcn_00017e4e  ; call 0x17e4e
mov edx, dword [ebp - 0x3c]
mov dword [esp], edx
movzx eax, ah
mov dword [ebp - 0x24], eax
call fcn_00017e4e  ; call 0x17e4e
mov edx, dword [ebp - 0x3c]
mov dword [esp], edx
shr eax, 0x10
and eax, 3
mov dword [ebp - 0x1c], eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
shr eax, 0x13
and eax, 0x1f
mov dword [ebp - 0x20], eax

loc_0000b26b:
xor eax, eax
test bl, bl
je short loc_0000b2be  ; je 0xb2be
test byte [ebp - 0x58], 0x40
je short loc_0000b2be  ; je 0xb2be
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
call fcn_0000a7cf  ; call 0xa7cf
add esp, 0x50

loc_0000b2be:
cmp byte [ebp - 0x41], 0
mov ebx, eax
jne short loc_0000b2d9  ; jne 0xb2d9
push eax
add edi, 0x18
push eax
push 0xff0000ff
push edi
call fcn_00018b3e  ; call 0x18b3e

loc_0000b2d6:
add esp, 0x10

loc_0000b2d9:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000b2e3:
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
call fcn_00016c9a  ; call 0x16c9a
mov ebx, eax
call fcn_0001bfbb  ; call 0x1bfbb
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
call fcn_00016c9a  ; call 0x16c9a
mov esi, eax
lea eax, [ebx + 0xf0]
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
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
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
jne short loc_0000b3bb  ; jne 0xb3bb
call fcn_00015480  ; call 0x15480
mov ebx, 0x8000000e
test al, al
je near loc_0000b969  ; je 0xb969
push ecx
push ref_00022281  ; push 0x22281
push 0x5ca
jmp short loc_0000b435  ; jmp 0xb435

loc_0000b3bb:
cmp dword [ebp - 0x44], 2
jne short loc_0000b3fd  ; jne 0xb3fd
sub esp, 0xc
add ebx, 0x48
push ebx
call fcn_00017dc2  ; call 0x17dc2
mov ebx, eax
pop eax
and ebx, 0xfffc
pop edx
push edi
push dword [ebp - 0x48]
call fcn_0001c3cb  ; call 0x1c3cb
movzx eax, al
lea eax, [ebx + eax*8 + 0x190]
mov dword [esp], eax
call fcn_00018f64  ; call 0x18f64
add esp, 0x10
test al, 1
jne short loc_0000b3fd  ; jne 0xb3fd
mov byte [ebp - 0x31], 1

loc_0000b3fd:
push 0x10
push edi
push dword [ebp - 0x60]
push dword [ebp - 0x64]
call fcn_00009fd5  ; call 0x9fd5
add esp, 0x10
movzx eax, al
mov dword [ebp - 0x50], eax
test eax, eax
jne short loc_0000b447  ; jne 0xb447
call fcn_00015480  ; call 0x15480
mov ebx, 0x80000003
test al, al
je near loc_0000b969  ; je 0xb969
push eax
push ref_00022281  ; push 0x22281
push 0x5dc

loc_0000b435:
push ref_00022106  ; push 0x22106
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
jmp near loc_0000b969  ; jmp 0xb969

loc_0000b447:
mov eax, dword [ebp - 0x50]
sub esp, 0xc
add eax, esi
mov dword [ebp - 0x4c], eax
add eax, 0x24
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test ah, 8
je short loc_0000b482  ; je 0xb482
mov eax, dword [ebp + 0x24]
cmp byte [eax + 0x12], 1
jne short loc_0000b482  ; jne 0xb482
push eax
push eax
mov eax, dword [ebp - 0x4c]
push 0x400
add eax, 0x28
push eax
call fcn_00018927  ; call 0x18927
add esp, 0x10

loc_0000b482:
mov eax, dword [ebp - 0x4c]
sub esp, 0xc
add eax, 0xc
push eax
call fcn_00017dc2  ; call 0x17dc2
mov ecx, dword [ebp + 0x24]
add esp, 0x10
mov dl, byte [ecx + 0x10]
shr ax, 0xa
and eax, 3
mov word [ebp - 0x2e], ax
cmp dl, 4
je short loc_0000b4b7  ; je 0xb4b7
and eax, edx
mov ebx, 1
mov word [ebp - 0x2e], ax
jmp short loc_0000b4b9  ; jmp 0xb4b9

loc_0000b4b7:
xor ebx, ebx

loc_0000b4b9:
sub esp, 0xc
lea eax, [esi + 0x19]
push eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
mov byte [ebp - 0x51], 1
mov byte [ebp - 0x3c], al
test al, al
jne short loc_0000b500  ; jne 0xb500
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
call fcn_00018b68  ; call 0x18b68
mov al, byte [ebp - 0x40]
add esp, 0x10
mov byte [ebp - 0x51], 0
mov byte [ebp - 0x3c], al

loc_0000b500:
mov eax, dword [ebp - 0x4c]
sub esp, 0xc
add eax, 0x1a
push eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
cmp dword [ebp - 0x44], 2
mov dword [ebp - 0x2c], 0
mov word [ebp - 0x40], 0
mov word [ebp - 0x58], ax
jne short loc_0000b57e  ; jne 0xb57e
push 0x1e
push edi
push dword [ebp - 0x60]
push dword [ebp - 0x64]
call fcn_0000a073  ; call 0xa073
add esp, 0x10
mov word [ebp - 0x40], ax
test ax, ax
je short loc_0000b57e  ; je 0xb57e
movzx eax, ax
sub esp, 0xc
lea edi, [esi + eax + 4]
push edi
call fcn_00017e4e  ; call 0x17e4e
mov dword [esp], edi
movzx eax, ah
mov dword [ebp - 0x28], eax
call fcn_00017e4e  ; call 0x17e4e
mov dword [esp], edi
shr eax, 0x10
and eax, 3
mov dword [ebp - 0x20], eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
shr eax, 0x13
and eax, 0x1f
mov dword [ebp - 0x24], eax

loc_0000b57e:
xor edi, edi
cmp byte [ebp - 0x3c], 0
je near loc_0000b689  ; je 0xb689
test byte [ebp - 0x58], 0x40
je near loc_0000b689  ; je 0xb689
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
call fcn_0000a7cf  ; call 0xa7cf
add esp, 0x50
mov edi, eax
mov eax, dword [ebp + 0x24]
cmp byte [eax + 0x12], 1
jne near loc_0000b689  ; jne 0xb689
cmp byte [eax + 0x18], 1
jne short loc_0000b610  ; jne 0xb610
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

loc_0000b610:
mov eax, dword [ebp + 0x24]
cmp byte [eax + 0x1c], 1
jne short loc_0000b63a  ; jne 0xb63a
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

loc_0000b63a:
mov eax, dword [ebp - 0x2c]
test eax, eax
je short loc_0000b689  ; je 0xb689
push edx
push edx
push eax
lea eax, [esi + 0x400]
push eax
call fcn_00017e8f  ; call 0x17e8f
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
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10

loc_0000b689:
cmp dword [ebp - 0x44], 2
jne near loc_0000b882  ; jne 0xb882
mov eax, dword [ebp + 0x28]
cmp byte [eax], 0
je near loc_0000b73b  ; je 0xb73b
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
call fcn_00018b68  ; call 0x18b68
mov eax, dword [ebp - 0x24]
add esp, 0xc
mov edx, dword [ebp - 0x60]
shl eax, 3
or eax, dword [ebp - 0x20]
add edx, 0xc
push eax
push 0xffffff04
push edx
call fcn_00018b68  ; call 0x18b68
add esp, 0xc
push 0x40a00000
push 0x1c00ffff
push ebx
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
test byte [ebp - 0x2e], 2
je short loc_0000b711  ; je 0xb711
cmp byte [ebp - 0x31], 0
je short loc_0000b711  ; je 0xb711
push ecx
push ecx
push 1
lea eax, [esi + 0x420]
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10

loc_0000b711:
mov eax, dword [ebp + 0x24]
mov al, byte [eax + 0x11]
cmp al, 1
je short loc_0000b729  ; je 0xb729
cmp al, 2
setne al
movzx eax, al
lea eax, [eax + eax + 0xd]
jmp short loc_0000b72e  ; jmp 0xb72e

loc_0000b729:
mov eax, 0xe

loc_0000b72e:
push edx
push eax
push 0xffffffffffffffe0
push ebx
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_0000b73b:
test byte [ebp - 0x2e], 2
je near loc_0000b882  ; je 0xb882
cmp byte [ebp - 0x31], 0
je near loc_0000b882  ; je 0xb882
mov eax, dword [ebp + 0x28]
cmp byte [eax], 0
je short loc_0000b76d  ; je 0xb76d
push eax
push eax
push 0xfffdffff
lea eax, [esi + 0x420]
push eax
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10

loc_0000b76d:
push ebx
push ebx
push 0x20000000
lea eax, [esi + 0x420]
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10
cmp byte [ebp - 0x68], 0
je near loc_0000b882  ; je 0xb882
cmp byte [ebp - 0x6c], 0
je near loc_0000b882  ; je 0xb882
mov edi, dword [ebp - 0x48]
push eax
push eax
push 0
push edi
call fcn_0001c39f  ; call 0x1c39f
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
call fcn_00009ecd  ; call 0x9ecd
add esp, 0x20
mov ebx, eax
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0000b809  ; je 0xb809
test ebx, ebx
jns short loc_0000b809  ; jns 0xb809
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000b7f1  ; je 0xb7f1
push edi
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000b7f1:
push ebx
push ref_000206f4  ; push 0x206f4
push 0x6b4
push ref_00022106  ; push 0x22106
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000b809:
mov edi, dword [ebp - 0x48]
push eax
push eax
push 0
push edi
or dword [ebp - 0x1c], 0x4000
call fcn_0001c39f  ; call 0x1c39f
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
call fcn_00009ecd  ; call 0x9ecd
add esp, 0x20
mov edi, eax
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0000b882  ; je 0xb882
test edi, edi
jns short loc_0000b882  ; jns 0xb882
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000b86a  ; je 0xb86a
push eax
push edi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000b86a:
push eax
push ref_000206f4  ; push 0x206f4
push 0x6be
push ref_00022106  ; push 0x22106
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000b882:
cmp byte [ebp - 0x70], 1
jne short loc_0000b8a2  ; jne 0xb8a2
push eax
movzx eax, word [ebp - 0x2e]
push eax
mov eax, dword [ebp - 0x4c]
push 0xfffc
add eax, 0x10
push eax
call fcn_00018981  ; call 0x18981
add esp, 0x10

loc_0000b8a2:
cmp byte [ebp - 0x30], 0
je short loc_0000b8bf  ; je 0xb8bf
push eax
push 0x18
push 0xe3
lea eax, [esi + 0xd4]
push eax
call fcn_0001878a  ; call 0x1878a
add esp, 0x10

loc_0000b8bf:
cmp byte [ebp - 0x3c], 0
je short loc_0000b917  ; je 0xb917
test byte [ebp - 0x58], 0x40
je short loc_0000b917  ; je 0xb917
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
call fcn_0000a7cf  ; call 0xa7cf
add esp, 0x50
mov edi, eax

loc_0000b917:
cmp byte [ebp - 0x51], 0
jne short loc_0000b930  ; jne 0xb930
push ecx
push ecx
push 0xff0000ff
lea eax, [esi + 0x18]
push eax
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10

loc_0000b930:
mov ebx, edi
test edi, edi
js short loc_0000b969  ; js 0xb969
cmp word [ebp - 0x2e], 3
jne short loc_0000b969  ; jne 0xb969
cmp dword [ebp - 0x44], 2
lea ebx, [esi + 0xe8]
jne short loc_0000b95a  ; jne 0xb95a
push edx
push 8
push 0xf3
push ebx
call fcn_0001878a  ; call 0x1878a
add esp, 0x10

loc_0000b95a:
push eax
push eax
push 2
push ebx
mov ebx, edi
call fcn_00018730  ; call 0x18730
add esp, 0x10

loc_0000b969:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000b973:
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
call fcn_00016c9a  ; call 0x16c9a
mov edi, eax
lea eax, [eax + 0x19]
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
mov byte [ebp - 0x1e], al
test al, al
jne short loc_0000b9eb  ; jne 0xb9eb
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
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
jmp short loc_0000ba03  ; jmp 0xba03

loc_0000b9eb:
sub esp, 0xc
lea eax, [edi + 0x1a]
push eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
mov byte [ebp - 0x1f], al
mov al, byte [ebp - 0x1e]
mov byte [ebp - 0x1d], al

loc_0000ba03:
push 0x10
push dword [ebp - 0x24]
push dword [ebp - 0x28]
push dword [ebp - 0x1c]
call fcn_00009fd5  ; call 0x9fd5
movzx eax, al
lea eax, [edi + eax + 2]
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
and eax, 0xf0
sar eax, 4
cmp al, 5
jne short loc_0000ba55  ; jne 0xba55
sub esp, 0xc
lea eax, [edi + 0xe]
push eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 0x7f
je short loc_0000ba55  ; je 0xba55

loc_0000ba44:
mov al, byte [ebp - 0x1d]
xor ebx, ebx
inc eax
movzx eax, al
mov dword [ebp - 0x34], eax
jmp near loc_0000bb58  ; jmp 0xbb58

loc_0000ba55:
push eax
movzx eax, byte [ebp - 0x1d]
mov ebx, 0x186a0
push 0
push 0
push eax
call fcn_00016c9a  ; call 0x16c9a
mov esi, eax
pop eax
pop edx
push 0
push esi
call fcn_00017da5  ; call 0x17da5
add esp, 0x10

loc_0000ba78:
sub esp, 0xc
push esi
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
jne short loc_0000ba44  ; jne 0xba44
sub esp, 0xc
push 0xa
call fcn_0001bb03  ; call 0x1bb03
add esp, 0x10
dec ebx
jne short loc_0000ba78  ; jne 0xba78
jmp near loc_0000bc26  ; jmp 0xbc26

loc_0000ba9d:
push 0
push dword [ebp + 0x1c]
push ebx
push esi
call fcn_0000a55f  ; call 0xa55f
add esp, 0x10
cmp byte [ebp - 0x2d], 0
jne short loc_0000bac8  ; jne 0xbac8
sub esp, 0xc
push ebx
push esi
push dword [ebp - 0x24]
push dword [ebp - 0x28]
push dword [ebp - 0x1c]
call fcn_0000a647  ; call 0xa647
add esp, 0x20

loc_0000bac8:
push 0x10
push 0
push ebx
push esi
call fcn_00009fd5  ; call 0x9fd5
movzx edx, al
mov cl, al
add edx, dword [ebp - 0x2c]
mov dword [ebp - 0x4c], ecx
lea eax, [edx + 2]
mov dword [ebp - 0x38], edx
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
mov word [ebp - 0x48], ax
mov eax, dword [ebp - 0x2c]
add eax, 0xb
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
mov edx, dword [ebp - 0x38]
mov ecx, dword [ebp - 0x4c]
cmp al, 6
je short loc_0000bb7e  ; je 0xbb7e

loc_0000bb0b:
push edx
push edx
push 0
push ebx
push esi
push dword [ebp - 0x24]
push dword [ebp - 0x28]
push dword [ebp - 0x1c]
call fcn_0000a0f2  ; call 0xa0f2
add esp, 0x14
push ebx
push esi
push dword [ebp - 0x24]
push dword [ebp - 0x28]
push dword [ebp - 0x1c]
call fcn_0000a220  ; call 0xa220
add esp, 0x1c
push dword [ebp - 0x24]
push ebx
push esi
call fcn_0000a3ea  ; call 0xa3ea
push 1
push dword [ebp + 0x1c]
push ebx
push esi
call fcn_0000a55f  ; call 0xa55f
add esp, 0x20

loc_0000bb4e:
inc ebx
cmp ebx, 0x20
je near loc_0000bc09  ; je 0xbc09

loc_0000bb58:
movzx esi, byte [ebp - 0x1d]
push eax
push 0
push ebx
push esi
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], eax
mov dword [ebp - 0x2c], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
jne near loc_0000ba9d  ; jne 0xba9d
jmp short loc_0000bb4e  ; jmp 0xbb4e

loc_0000bb7e:
test cl, cl
je short loc_0000bb0b  ; je 0xbb0b
mov ecx, dword [ebp - 0x48]
sub esp, 0xc
add edx, 0x1a
push edx
and ecx, 0xf0
sar ecx, 4
mov dword [ebp - 0x2c], ecx
call fcn_00017dc2  ; call 0x17dc2
mov ecx, dword [ebp - 0x2c]
add esp, 0x10
cmp cl, 5
je short loc_0000bbb9  ; je 0xbbb9
cmp cl, 6
jne near loc_0000bb0b  ; jne 0xbb0b
test al, 0x40
je near loc_0000bb0b  ; je 0xbb0b

loc_0000bbb9:
mov al, byte [ebp - 0x1d]
cmp byte [ebp - 0x1f], al
jbe short loc_0000bbdf  ; jbe 0xbbdf
push eax
push eax
movzx eax, byte [ebp - 0x1f]
push dword [ebp + 0x1c]
push eax
push dword [ebp - 0x34]
push 0
push ebx
push esi
call fcn_0000b973  ; call 0xb973
add esp, 0x20
jmp near loc_0000bb0b  ; jmp 0xbb0b

loc_0000bbdf:
call fcn_00015480  ; call 0x15480
test al, al
je near loc_0000bb0b  ; je 0xbb0b
push ecx
push ref_00022281  ; push 0x22281
push 0x7aa
push ref_00022106  ; push 0x22106
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
jmp near loc_0000bb0b  ; jmp 0xbb0b

loc_0000bc09:
xor bl, bl
cmp byte [ebp - 0x1e], 0
jne short loc_0000bc44  ; jne 0xbc44
push eax
push eax
push 0xff000000
lea eax, [edi + 0x18]
push eax
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10
jmp short loc_0000bc44  ; jmp 0xbc44

loc_0000bc26:
cmp byte [ebp - 0x1e], 0
jne short loc_0000bc3f  ; jne 0xbc3f
push eax
push eax
push 0xff000000
lea eax, [edi + 0x18]
push eax
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10

loc_0000bc3f:
mov ebx, 0x8000000e

loc_0000bc44:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000bc4e:
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
call fcn_00016c9a  ; call 0x16c9a
mov dword [ebp - 0x2c], eax
add eax, 0x5a
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
mov edx, 0x8000000e
test al, 0x40
je near loc_0000bd2e  ; je 0xbd2e
push 0x10
push edi
push esi
push ebx
call fcn_00009fd5  ; call 0x9fd5
add esp, 0x10
test al, al
jne short loc_0000bcd4  ; jne 0xbcd4
call fcn_00015480  ; call 0x15480
mov edx, 0x80000003
test al, al
je short loc_0000bd2e  ; je 0xbd2e
push ecx
push ref_00022281  ; push 0x22281
push 0x81d
push ref_00022106  ; push 0x22106
mov dword [ebp - 0x2c], edx
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
mov edx, dword [ebp - 0x2c]
jmp short loc_0000bd2e  ; jmp 0xbd2e

loc_0000bcd4:
movzx eax, al
sub esp, 0xc
add eax, dword [ebp - 0x2c]
mov dword [ebp - 0x2c], eax
add eax, 4
push eax
call fcn_00017dc2  ; call 0x17dc2
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
call fcn_0000b973  ; call 0xb973
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
call fcn_00018981  ; call 0x18981
add esp, 0x10
mov edx, ebx

loc_0000bd2e:
lea esp, [ebp - 0xc]
mov eax, edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000bd38:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000bd5a  ; je 0xbd5a
push ebx
push ebx
push ref_00022293  ; push 0x22293
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000bd5a:
push ecx
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xf0
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
mov ebx, eax
and ebx, 0xffffc000
cmp dword [ebp + 8], 1
je short loc_0000bdc1  ; je 0xbdc1
jb short loc_0000bd90  ; jb 0xbd90
cmp dword [ebp + 8], 2
jne short loc_0000bdf6  ; jne 0xbdf6
push edx
push edx
jmp short loc_0000bde5  ; jmp 0xbde5

loc_0000bd90:
sub esp, 0xc
lea eax, [ebx + 0x38f4]
push eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 1
jne short loc_0000bdad  ; jne 0xbdad
mov word [esi], 0
jmp short loc_0000be10  ; jmp 0xbe10

loc_0000bdad:
sub esp, 0xc
add ebx, 0x38f8
push ebx
call fcn_00017dc2  ; call 0x17dc2
mov word [esi], ax
jmp short loc_0000bdf3  ; jmp 0xbdf3

loc_0000bdc1:
push ecx
push ecx
movzx eax, word [esi]
push eax
lea eax, [ebx + 0x38f8]
push eax
call fcn_00017e04  ; call 0x17e04
pop esi
pop eax
lea eax, [ebx + 0x38f4]
push 1
push eax
call fcn_00018730  ; call 0x18730
pop eax
pop edx

loc_0000bde5:
push 1
add ebx, 0x38f0
push ebx
call fcn_00018730  ; call 0x18730

loc_0000bdf3:
add esp, 0x10

loc_0000bdf6:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000be10  ; je 0xbe10
push eax
push eax
push ref_000222ad  ; push 0x222ad
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000be10:
lea esp, [ebp - 8]
xor eax, eax
pop ebx
pop esi
pop ebp
ret

fcn_0000be19:
push ebp
mov ebp, esp
push ebx
sub esp, 0xc
mov eax, dword [ebp + 8]
push dword [ebp + 0xc]
lea ebx, [eax + 0x3418]
push ebx
call fcn_00018b14  ; call 0x18b14
add esp, 0x10
mov dword [ebp + 8], ebx
mov ebx, dword [ebp - 4]
leave
jmp near fcn_00017e4e  ; jmp 0x17e4e

fcn_0000be41:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000be67  ; je 0xbe67
push eax
push eax
push ref_000222c5  ; push 0x222c5
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000be67:
lea eax, [ebp - 0x1c]
push eax
push 0
push 0
push ref_0002911c  ; push 0x2911c
call fcn_0001975d  ; call 0x1975d
add esp, 0x10
test eax, eax
jne short loc_0000beea  ; jne 0xbeea
mov edx, dword [ebp - 0x1c]
xor ebx, ebx
xor esi, esi

loc_0000be87:
lea eax, [ebx + 0x18]
cmp word [edx + eax - 0x16], 0
je short loc_0000be97  ; je 0xbe97
inc esi
mov ebx, eax
jmp short loc_0000be87  ; jmp 0xbe87

loc_0000be97:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000beb1  ; je 0xbeb1
push eax
push esi
push ref_000222e3  ; push 0x222e3
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000beb1:
push eax
push ebx
push dword [ebp - 0x1c]
push ref_00028ff8  ; push 0x28ff8
call fcn_0001936c  ; call 0x1936c
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000beea  ; je 0xbeea
test ebx, ebx
jne short loc_0000beea  ; jne 0xbeea
push eax
push ref_00022314  ; push 0x22314
push 0x8f5
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000beea:
xor ebx, ebx

loc_0000beec:
lea eax, [ebp - 0x20]
push eax
push 0
push ebx
push ref_000291dc  ; push 0x291dc
call fcn_0001975d  ; call 0x1975d
add esp, 0x10
test eax, eax
je short loc_0000bf36  ; je 0xbf36
call fcn_00015480  ; call 0x15480
test al, al
je near loc_0000c0a1  ; je 0xc0a1
test ebx, ebx
jne near loc_0000c0a1  ; jne 0xc0a1
push eax
push ref_0002234a  ; push 0x2234a
push 0x908
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
jmp near loc_0000c0a1  ; jmp 0xc0a1

loc_0000bf36:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000bf57  ; je 0xbf57
mov eax, dword [ebp - 0x20]
push edi
movzx eax, byte [eax + 1]
push eax
push ref_00022355  ; push 0x22355
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000bf57:
push esi
push 0x5ac
push dword [ebp - 0x20]
push ref_00029008  ; push 0x29008
call fcn_0001936c  ; call 0x1936c
mov esi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000bf94  ; je 0xbf94
test esi, esi
jne short loc_0000bf94  ; jne 0xbf94
push ecx
push ref_00022314  ; push 0x22314
push 0x90e
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000bf94:
push eax
mov eax, dword [ebp - 0x20]
push 0
push 0x1f
movzx eax, byte [eax + 1]
push eax
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xf0
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
mov esi, eax
and esi, 0xffffc000
lea eax, [esi + 0x3418]
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
mov dword [ebp - 0x24], eax
pop eax
pop edx
lea eax, [ebp - 0x24]
push eax
push dword [ebp - 0x20]
call fcn_0001227f  ; call 0x1227f
mov edi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000c021  ; je 0xc021
test edi, edi
jns short loc_0000c021  ; jns 0xc021
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000c009  ; je 0xc009
push eax
push edi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000c009:
push edi
push ref_000206f4  ; push 0x206f4
push 0x91d
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000c021:
mov eax, dword [ebp - 0x20]
cmp byte [eax + 0x370], 0
je short loc_0000c079  ; je 0xc079
push edx
push edx
push 0
push eax
call fcn_00012e28  ; call 0x12e28
pop ecx
push dword [ebp - 0x20]
call fcn_00012eb2  ; call 0x12eb2
add esp, 0x10
test eax, eax
jns short loc_0000c08d  ; jns 0xc08d
mov eax, dword [ebp - 0x20]
cmp byte [eax + 0x370], 2
jne short loc_0000c08d  ; jne 0xc08d
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000c06d  ; je 0xc06d
push eax
push eax
push ref_0002238a  ; push 0x2238a
push 2
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000c06d:
push edi
push edi
push 0xc0
push dword [ebp - 0x20]
jmp short loc_0000c081  ; jmp 0xc081

loc_0000c079:
push ecx
push ecx
push 0xc0
push eax

loc_0000c081:
call fcn_00012e28  ; call 0x12e28
add esp, 0x10
or dword [ebp - 0x24], 0x10

loc_0000c08d:
push edx
inc ebx
push edx
push dword [ebp - 0x24]
push esi
call fcn_0000be19  ; call 0xbe19
add esp, 0x10
jmp near loc_0000beec  ; jmp 0xbeec

loc_0000c0a1:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000c0be  ; je 0xc0be
push eax
push eax
push ref_000223be  ; push 0x223be
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000c0be:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000c0c8:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x2c
mov eax, dword [ebp + 0x18]
mov dword [ebp - 0x28], eax
call fcn_0001bbfd  ; call 0x1bbfd
sub esp, 0xc
mov edi, eax
mov dword [ebp - 0x20], eax
mov eax, dword [ebp + 0x10]
add eax, 0x410
push eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
mov byte [ebp - 0x19], al
mov eax, edi
dec eax
mov dword [ebp - 0x24], eax
cmp eax, 0xf
ja short loc_0000c128  ; ja 0xc128
mov cl, byte [ebp - 0x24]
mov eax, 1
xor esi, esi
mov edx, ref_0002793c  ; mov edx, 0x2793c
shl eax, cl
and eax, 0x8007
cmovne esi, edx
cmp eax, 1
sbb ebx, ebx
not ebx
and ebx, 0x49
jmp short loc_0000c12c  ; jmp 0xc12c

loc_0000c128:
xor esi, esi
xor ebx, ebx

loc_0000c12c:
add esi, 8
mov word [ebp - 0x2c], 0

loc_0000c135:
cmp word [ebp - 0x2c], bx
je short loc_0000c19b  ; je 0xc19b
push dword [esi]
push dword [esi - 4]
push dword [esi - 8]
push dword [ebp + 0x14]
call fcn_00009dc2  ; call 0x9dc2
mov edi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000c192  ; je 0xc192
test edi, edi
jns short loc_0000c192  ; jns 0xc192
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000c17a  ; je 0xc17a
push eax
push edi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000c17a:
push ecx
push ref_000206f4  ; push 0x206f4
push 0x147
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000c192:
inc word [ebp - 0x2c]
add esi, 0xc
jmp short loc_0000c135  ; jmp 0xc135

loc_0000c19b:
mov eax, dword [ebp - 0x20]
cmp eax, 0x22
ja short loc_0000c1b9  ; ja 0xc1b9
cmp eax, 0x20
jae short loc_0000c1c6  ; jae 0xc1c6
cmp eax, 1
jb short loc_0000c1de  ; jb 0xc1de
cmp eax, 3
jbe short loc_0000c1d2  ; jbe 0xc1d2
cmp eax, 0x10
je short loc_0000c1d2  ; je 0xc1d2
jmp short loc_0000c1de  ; jmp 0xc1de

loc_0000c1b9:
mov eax, dword [ebp - 0x20]
sub eax, 0x41
cmp eax, 2
jbe short loc_0000c1e4  ; jbe 0xc1e4
jmp short loc_0000c1de  ; jmp 0xc1de

loc_0000c1c6:
mov edx, ref_00028114  ; mov edx, 0x28114
mov eax, 0x49
jmp short loc_0000c1ee  ; jmp 0xc1ee

loc_0000c1d2:
mov edx, ref_00027ca8  ; mov edx, 0x27ca8
mov eax, 0x24
jmp short loc_0000c1ee  ; jmp 0xc1ee

loc_0000c1de:
xor edx, edx
xor eax, eax
jmp short loc_0000c1ee  ; jmp 0xc1ee

loc_0000c1e4:
mov edx, ref_00028898  ; mov edx, 0x28898
mov eax, 0x4d

loc_0000c1ee:
imul eax, eax, 0xc
mov esi, edx
add eax, edx
mov dword [ebp - 0x30], eax
mov al, byte [ebp - 0x19]
mov bl, al
and eax, 0x10
and ebx, 0x20
mov byte [ebp - 0x2c], al

loc_0000c206:
cmp esi, dword [ebp - 0x30]
je near loc_0000c2ca  ; je 0xc2ca
cmp dword [ebp + 0xc], 2
jne short loc_0000c246  ; jne 0xc246
mov eax, dword [esi]
and eax, 0xfe00
cmp eax, 0x2000
je short loc_0000c25a  ; je 0xc25a
cmp eax, 0x2200
je short loc_0000c267  ; je 0xc267
cmp eax, 0x2400
jne short loc_0000c237  ; jne 0xc237
test byte [ebp - 0x19], 0x40
jmp short loc_0000c269  ; jmp 0xc269

loc_0000c237:
cmp eax, 0x2600
jne short loc_0000c26b  ; jne 0xc26b
cmp byte [ebp - 0x19], 0
jns short loc_0000c26b  ; jns 0xc26b
jmp short loc_0000c2c2  ; jmp 0xc2c2

loc_0000c246:
cmp dword [ebp + 0xc], 1
jne short loc_0000c26b  ; jne 0xc26b
mov eax, dword [esi]
and eax, 0xfe00
cmp eax, 0x2000
jne short loc_0000c260  ; jne 0xc260

loc_0000c25a:
cmp byte [ebp - 0x2c], 0
jmp short loc_0000c269  ; jmp 0xc269

loc_0000c260:
cmp eax, 0x2200
jne short loc_0000c26b  ; jne 0xc26b

loc_0000c267:
test bl, bl

loc_0000c269:
jne short loc_0000c2c2  ; jne 0xc2c2

loc_0000c26b:
push dword [esi + 8]
push dword [esi + 4]
push dword [esi]
push dword [ebp + 0x14]
call fcn_00009dc2  ; call 0x9dc2
mov edi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000c2c2  ; je 0xc2c2
test edi, edi
jns short loc_0000c2c2  ; jns 0xc2c2
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000c2aa  ; je 0xc2aa
push edx
push edi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000c2aa:
push eax
push ref_000206f4  ; push 0x206f4
push 0x178
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000c2c2:
add esi, 0xc
jmp near loc_0000c206  ; jmp 0xc206

loc_0000c2ca:
mov ecx, dword [ebp - 0x28]
mov eax, ecx
and eax, 0xfffffffb
cmp ax, 0x8c4b
je short loc_0000c312  ; je 0xc312
mov eax, ecx
and eax, 0xfffffff7
cmp ax, 0x8c41
je short loc_0000c312  ; je 0xc312
mov eax, ecx
add ax, 0x63bf
cmp ax, 6
jbe short loc_0000c312  ; jbe 0xc312
cmp word [ebp - 0x28], 0x8cc5
je short loc_0000c312  ; je 0xc312
mov eax, ecx
and eax, 0xfffffffd
cmp ax, 0x8cc1
je short loc_0000c312  ; je 0xc312
mov eax, ecx
add ax, 0x633f
cmp ax, 0xa
ja near loc_0000c4df  ; ja 0xc4df

loc_0000c312:
cmp dword [ebp - 0x24], 0xf
ja short loc_0000c33d  ; ja 0xc33d
mov cl, byte [ebp - 0x24]
mov eax, 1
xor esi, esi
mov edx, ref_000275f4  ; mov edx, 0x275f4
shl eax, cl
and eax, 0x8007
cmovne esi, edx
cmp eax, 1
sbb ebx, ebx
not ebx
and ebx, 4
jmp short loc_0000c341  ; jmp 0xc341

loc_0000c33d:
xor esi, esi
xor ebx, ebx

loc_0000c341:
add esi, 8
mov word [ebp - 0x28], 0

loc_0000c34a:
cmp word [ebp - 0x28], bx
je short loc_0000c3b0  ; je 0xc3b0
push dword [esi]
push dword [esi - 4]
push dword [esi - 8]
push dword [ebp + 0x14]
call fcn_00009dc2  ; call 0x9dc2
mov edi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000c3a7  ; je 0xc3a7
test edi, edi
jns short loc_0000c3a7  ; jns 0xc3a7
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000c38f  ; je 0xc38f
push eax
push edi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000c38f:
push eax
push ref_000206f4  ; push 0x206f4
push 0x19b
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000c3a7:
inc word [ebp - 0x28]
add esi, 0xc
jmp short loc_0000c34a  ; jmp 0xc34a

loc_0000c3b0:
mov eax, dword [ebp - 0x20]
cmp eax, 0x22
ja short loc_0000c3ce  ; ja 0xc3ce
cmp eax, 0x20
jae short loc_0000c3db  ; jae 0xc3db
cmp eax, 1
jb short loc_0000c3f3  ; jb 0xc3f3
cmp eax, 3
jbe short loc_0000c3e7  ; jbe 0xc3e7
cmp eax, 0x10
je short loc_0000c3e7  ; je 0xc3e7
jmp short loc_0000c3f3  ; jmp 0xc3f3

loc_0000c3ce:
mov eax, dword [ebp - 0x20]
sub eax, 0x41
cmp eax, 2
jbe short loc_0000c3f9  ; jbe 0xc3f9
jmp short loc_0000c3f3  ; jmp 0xc3f3

loc_0000c3db:
mov edx, ref_0002809c  ; mov edx, 0x2809c
mov eax, 4
jmp short loc_0000c403  ; jmp 0xc403

loc_0000c3e7:
mov edx, ref_00027624  ; mov edx, 0x27624
mov eax, 2
jmp short loc_0000c403  ; jmp 0xc403

loc_0000c3f3:
xor edx, edx
xor eax, eax
jmp short loc_0000c403  ; jmp 0xc403

loc_0000c3f9:
mov edx, ref_00028898  ; mov edx, 0x28898
mov eax, 0x4d

loc_0000c403:
imul eax, eax, 0xc
mov esi, edx
add eax, edx
mov dword [ebp - 0x2c], eax
mov al, byte [ebp - 0x19]
mov bl, al
and eax, 0x10
and ebx, 0x20
mov byte [ebp - 0x28], al

loc_0000c41b:
cmp esi, dword [ebp - 0x2c]
je near loc_0000c569  ; je 0xc569
cmp dword [ebp + 0xc], 2
jne short loc_0000c45b  ; jne 0xc45b
mov eax, dword [esi]
and eax, 0xfe00
cmp eax, 0x2000
je short loc_0000c46f  ; je 0xc46f
cmp eax, 0x2200
je short loc_0000c47c  ; je 0xc47c
cmp eax, 0x2400
jne short loc_0000c44c  ; jne 0xc44c
test byte [ebp - 0x19], 0x40
jmp short loc_0000c47e  ; jmp 0xc47e

loc_0000c44c:
cmp eax, 0x2600
jne short loc_0000c480  ; jne 0xc480
cmp byte [ebp - 0x19], 0
jns short loc_0000c480  ; jns 0xc480
jmp short loc_0000c4d7  ; jmp 0xc4d7

loc_0000c45b:
cmp dword [ebp + 0xc], 1
jne short loc_0000c480  ; jne 0xc480
mov eax, dword [esi]
and eax, 0xfe00
cmp eax, 0x2000
jne short loc_0000c475  ; jne 0xc475

loc_0000c46f:
cmp byte [ebp - 0x28], 0
jmp short loc_0000c47e  ; jmp 0xc47e

loc_0000c475:
cmp eax, 0x2200
jne short loc_0000c480  ; jne 0xc480

loc_0000c47c:
test bl, bl

loc_0000c47e:
jne short loc_0000c4d7  ; jne 0xc4d7

loc_0000c480:
push dword [esi + 8]
push dword [esi + 4]
push dword [esi]
push dword [ebp + 0x14]
call fcn_00009dc2  ; call 0x9dc2
mov edi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000c4d7  ; je 0xc4d7
test edi, edi
jns short loc_0000c4d7  ; jns 0xc4d7
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000c4bf  ; je 0xc4bf
push eax
push edi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000c4bf:
push eax
push ref_000206f4  ; push 0x206f4
push 0x1cc
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000c4d7:
add esi, 0xc
jmp near loc_0000c41b  ; jmp 0xc41b

loc_0000c4df:
cmp dword [ebp - 0x24], 0xf
ja near loc_0000c59b  ; ja 0xc59b
mov cl, byte [ebp - 0x24]
mov eax, 1
xor esi, esi
mov edx, ref_000275ac  ; mov edx, 0x275ac
shl eax, cl
and eax, 0x8007
cmovne esi, edx
cmp eax, 1
sbb ebx, ebx
not ebx
and ebx, 4

loc_0000c50c:
add esi, 8
mov word [ebp - 0x28], 0

loc_0000c515:
cmp word [ebp - 0x28], bx
jne near loc_0000c5a4  ; jne 0xc5a4
cmp dword [ebp - 0x20], 0x10
je near loc_0000c616  ; je 0xc616
mov eax, dword [ebp - 0x20]
jbe near loc_0000c607  ; jbe 0xc607
sub eax, 0x20
cmp eax, 2
ja near loc_0000c60d  ; ja 0xc60d
mov edx, ref_0002806c  ; mov edx, 0x2806c
mov eax, 4

loc_0000c548:
imul eax, eax, 0xc
mov esi, edx
add eax, edx
mov dword [ebp - 0x2c], eax
mov al, byte [ebp - 0x19]
mov bl, al
and eax, 0x10
and ebx, 0x20
mov byte [ebp - 0x28], al

loc_0000c560:
cmp esi, dword [ebp - 0x2c]
jne near loc_0000c625  ; jne 0xc625

loc_0000c569:
cmp dword [ebp - 0x24], 0xf
ja near loc_0000c6e0  ; ja 0xc6e0
mov cl, byte [ebp - 0x24]
mov eax, 1
xor edi, edi
mov edx, ref_00027444  ; mov edx, 0x27444
shl eax, cl
and eax, 0x8007
cmovne edi, edx
cmp eax, 1
sbb eax, eax
not eax
and eax, 0x14
jmp near loc_0000c6e4  ; jmp 0xc6e4

loc_0000c59b:
xor esi, esi
xor ebx, ebx
jmp near loc_0000c50c  ; jmp 0xc50c

loc_0000c5a4:
push dword [esi]
push dword [esi - 4]
push dword [esi - 8]
push dword [ebp + 0x14]
call fcn_00009dc2  ; call 0x9dc2
mov edi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000c5fb  ; je 0xc5fb
test edi, edi
jns short loc_0000c5fb  ; jns 0xc5fb
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000c5e3  ; je 0xc5e3
push eax
push edi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000c5e3:
push edi
push ref_000206f4  ; push 0x206f4
push 0x1e8
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000c5fb:
inc word [ebp - 0x28]
add esi, 0xc
jmp near loc_0000c515  ; jmp 0xc515

loc_0000c607:
dec eax
cmp eax, 2
jbe short loc_0000c616  ; jbe 0xc616

loc_0000c60d:
xor edx, edx
xor eax, eax
jmp near loc_0000c548  ; jmp 0xc548

loc_0000c616:
mov edx, ref_000275dc  ; mov edx, 0x275dc
mov eax, 2
jmp near loc_0000c548  ; jmp 0xc548

loc_0000c625:
cmp dword [ebp + 0xc], 2
jne short loc_0000c65c  ; jne 0xc65c
mov eax, dword [esi]
and eax, 0xfe00
cmp eax, 0x2000
je short loc_0000c670  ; je 0xc670
cmp eax, 0x2200
je short loc_0000c67d  ; je 0xc67d
cmp eax, 0x2400
jne short loc_0000c64d  ; jne 0xc64d
test byte [ebp - 0x19], 0x40
jmp short loc_0000c67f  ; jmp 0xc67f

loc_0000c64d:
cmp eax, 0x2600
jne short loc_0000c681  ; jne 0xc681
cmp byte [ebp - 0x19], 0
jns short loc_0000c681  ; jns 0xc681
jmp short loc_0000c6d8  ; jmp 0xc6d8

loc_0000c65c:
cmp dword [ebp + 0xc], 1
jne short loc_0000c681  ; jne 0xc681
mov eax, dword [esi]
and eax, 0xfe00
cmp eax, 0x2000
jne short loc_0000c676  ; jne 0xc676

loc_0000c670:
cmp byte [ebp - 0x28], 0
jmp short loc_0000c67f  ; jmp 0xc67f

loc_0000c676:
cmp eax, 0x2200
jne short loc_0000c681  ; jne 0xc681

loc_0000c67d:
test bl, bl

loc_0000c67f:
jne short loc_0000c6d8  ; jne 0xc6d8

loc_0000c681:
push dword [esi + 8]
push dword [esi + 4]
push dword [esi]
push dword [ebp + 0x14]
call fcn_00009dc2  ; call 0x9dc2
mov edi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000c6d8  ; je 0xc6d8
test edi, edi
jns short loc_0000c6d8  ; jns 0xc6d8
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000c6c0  ; je 0xc6c0
push ecx
push edi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000c6c0:
push edx
push ref_000206f4  ; push 0x206f4
push 0x213
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000c6d8:
add esi, 0xc
jmp near loc_0000c560  ; jmp 0xc560

loc_0000c6e0:
xor edi, edi
xor eax, eax

loc_0000c6e4:
movzx eax, ax
imul eax, eax, 0xc
mov word [ebp - 0x24], 0
lea eax, [edi + eax + 8]
mov dword [ebp - 0x30], eax

loc_0000c6f7:
call fcn_0001c1e1  ; call 0x1c1e1
mov edx, dword [ebp - 0x24]
movzx eax, al
cmp dx, ax
jae near loc_0000c7ca  ; jae 0xc7ca
movzx eax, dx
xor esi, esi
imul eax, eax, 0x12
add eax, dword [ebp + 8]
mov dword [ebp - 0x28], eax

loc_0000c719:
mov eax, dword [ebp - 0x28]
mov word [ebp - 0x34], si
cmp byte [eax + esi*2 + 0x1e4], 1
je short loc_0000c736  ; je 0xc736

loc_0000c72a:
inc esi
cmp esi, 3
jne short loc_0000c719  ; jne 0xc719
inc word [ebp - 0x24]
jmp short loc_0000c6f7  ; jmp 0xc6f7

loc_0000c736:
lea ebx, [edi + 8]

loc_0000c739:
cmp ebx, dword [ebp - 0x30]
je short loc_0000c72a  ; je 0xc72a
mov eax, dword [ebp - 0x24]
cmp word [ebx - 8], ax
jne short loc_0000c7c2  ; jne 0xc7c2
mov eax, dword [ebp - 0x34]
cmp word [ebx - 6], ax
jne short loc_0000c7c2  ; jne 0xc7c2
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
call fcn_00009dc2  ; call 0x9dc2
mov dword [ebp - 0x2c], eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000c7c2  ; je 0xc7c2
cmp dword [ebp - 0x2c], 0
jns short loc_0000c7c2  ; jns 0xc7c2
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000c7aa  ; je 0xc7aa
push eax
push dword [ebp - 0x2c]
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000c7aa:
push eax
push ref_000206f4  ; push 0x206f4
push 0x234
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000c7c2:
add ebx, 0xc
jmp near loc_0000c739  ; jmp 0xc739

loc_0000c7ca:
mov eax, dword [ebp - 0x20]
cmp eax, 0x22
ja short loc_0000c7e8  ; ja 0xc7e8
cmp eax, 0x20
jae short loc_0000c7fa  ; jae 0xc7fa
cmp eax, 1
jb short loc_0000c80d  ; jb 0xc80d
cmp eax, 3
jbe short loc_0000c801  ; jbe 0xc801
cmp eax, 0x10
je short loc_0000c801  ; je 0xc801
jmp short loc_0000c80d  ; jmp 0xc80d

loc_0000c7e8:
mov eax, dword [ebp - 0x20]
mov esi, ref_00028760  ; mov esi, 0x28760
sub eax, 0x41
cmp eax, 2
jbe short loc_0000c813  ; jbe 0xc813
jmp short loc_0000c80d  ; jmp 0xc80d

loc_0000c7fa:
mov esi, ref_00027f7c  ; mov esi, 0x27f7c
jmp short loc_0000c813  ; jmp 0xc813

loc_0000c801:
mov esi, ref_00027534  ; mov esi, 0x27534
mov eax, 0xa
jmp short loc_0000c818  ; jmp 0xc818

loc_0000c80d:
xor esi, esi
xor eax, eax
jmp short loc_0000c818  ; jmp 0xc818

loc_0000c813:
mov eax, 0x14

loc_0000c818:
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

loc_0000c83b:
call fcn_0001c1e1  ; call 0x1c1e1
mov ecx, dword [ebp - 0x24]
movzx eax, al
cmp cx, ax
jae near loc_0000c980  ; jae 0xc980
movzx eax, cx
imul eax, eax, 0x12
add eax, dword [ebp + 8]
mov dword [ebp - 0x20], 0
mov dword [ebp - 0x28], eax

loc_0000c862:
mov eax, dword [ebp - 0x20]
mov edx, dword [ebp - 0x28]
mov word [ebp - 0x1c], ax
cmp byte [edx + eax*2 + 0x1e4], 1
je short loc_0000c885  ; je 0xc885

loc_0000c876:
inc dword [ebp - 0x20]
cmp dword [ebp - 0x20], 3
jne short loc_0000c862  ; jne 0xc862
inc word [ebp - 0x24]
jmp short loc_0000c83b  ; jmp 0xc83b

loc_0000c885:
lea ebx, [esi + 4]

loc_0000c888:
cmp ebx, dword [ebp - 0x34]
je short loc_0000c876  ; je 0xc876
mov eax, dword [ebp - 0x24]
cmp word [ebx - 4], ax
jne near loc_0000c978  ; jne 0xc978
mov eax, dword [ebp - 0x1c]
cmp word [ebx - 2], ax
jne near loc_0000c978  ; jne 0xc978
cmp dword [ebp + 0xc], 2
jne short loc_0000c8e1  ; jne 0xc8e1
mov eax, dword [ebx]
and eax, 0xfe00
cmp eax, 0x2000
je short loc_0000c8f5  ; je 0xc8f5
cmp eax, 0x2200
je short loc_0000c902  ; je 0xc902
cmp eax, 0x2400
jne short loc_0000c8cf  ; jne 0xc8cf
test byte [ebp - 0x19], 0x40
jmp short loc_0000c906  ; jmp 0xc906

loc_0000c8cf:
cmp eax, 0x2600
jne short loc_0000c908  ; jne 0xc908
cmp byte [ebp - 0x19], 0
jns short loc_0000c908  ; jns 0xc908
jmp near loc_0000c978  ; jmp 0xc978

loc_0000c8e1:
cmp dword [ebp + 0xc], 1
jne short loc_0000c908  ; jne 0xc908
mov eax, dword [ebx]
and eax, 0xfe00
cmp eax, 0x2000
jne short loc_0000c8fb  ; jne 0xc8fb

loc_0000c8f5:
cmp byte [ebp - 0x30], 0
jmp short loc_0000c906  ; jmp 0xc906

loc_0000c8fb:
cmp eax, 0x2200
jne short loc_0000c908  ; jne 0xc908

loc_0000c902:
cmp byte [ebp - 0x2c], 0

loc_0000c906:
jne short loc_0000c978  ; jne 0xc978

loc_0000c908:
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
call fcn_00009dc2  ; call 0x9dc2
mov edi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000c978  ; je 0xc978
test edi, edi
jns short loc_0000c978  ; jns 0xc978
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000c960  ; je 0xc960
push eax
push edi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000c960:
push eax
push ref_000206f4  ; push 0x206f4
push 0x271
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000c978:
add ebx, 0xc
jmp near loc_0000c888  ; jmp 0xc888

loc_0000c980:
mov eax, dword [ebp + 8]
xor ebx, ebx
cmp byte [eax], 8
ja short loc_0000c991  ; ja 0xc991

loc_0000c98a:
xor eax, eax
jmp near loc_0000cbf4  ; jmp 0xcbf4

loc_0000c991:
mov cl, byte [ebp - 0x19]
mov al, cl
and eax, 0x10
mov byte [ebp - 0x20], al
mov al, cl
shr al, 7
mov byte [ebp - 0x28], al

loc_0000c9a4:
call fcn_0001c1e1  ; call 0x1c1e1
movzx eax, al
cmp bx, ax
jae short loc_0000c98a  ; jae 0xc98a
cmp dword [ebp + 0xc], 1
jne short loc_0000c9df  ; jne 0xc9df
cmp bx, 4
jne short loc_0000c9c3  ; jne 0xc9c3
cmp byte [ebp - 0x20], 0
jmp short loc_0000c9cd  ; jmp 0xc9cd

loc_0000c9c3:
cmp bx, 5
jne short loc_0000c9d3  ; jne 0xc9d3
test byte [ebp - 0x19], 0x20

loc_0000c9cd:
jne near loc_0000cbee  ; jne 0xcbee

loc_0000c9d3:
movzx eax, bx
mov edi, dword [eax*4 + ref_00020420]  ; mov edi, dword [eax*4 + 0x20420]
jmp short loc_0000ca20  ; jmp 0xca20

loc_0000c9df:
test bx, bx
jne short loc_0000c9ee  ; jne 0xc9ee
cmp byte [ebp - 0x28], 0
jne near loc_0000cbee  ; jne 0xcbee

loc_0000c9ee:
cmp bx, 1
jne short loc_0000c9fa  ; jne 0xc9fa
test byte [ebp - 0x19], 0x40
jmp short loc_0000ca10  ; jmp 0xca10

loc_0000c9fa:
cmp bx, 2
jne short loc_0000ca06  ; jne 0xca06
test byte [ebp - 0x19], 0x20
jmp short loc_0000ca10  ; jmp 0xca10

loc_0000ca06:
cmp bx, 3
jne short loc_0000ca16  ; jne 0xca16
cmp byte [ebp - 0x20], 0

loc_0000ca10:
jne near loc_0000cbee  ; jne 0xcbee

loc_0000ca16:
movzx eax, bx
mov edi, dword [eax*4 + ref_00020408]  ; mov edi, dword [eax*4 + 0x20408]

loc_0000ca20:
movzx esi, bx
imul eax, esi, 0x12
add eax, dword [ebp + 8]
test byte [eax + 0x1ed], 1
je short loc_0000caa0  ; je 0xcaa0
movzx eax, byte [eax + 0x1e9]
cmp al, 0x80
jbe short loc_0000ca85  ; jbe 0xca85
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ca5a  ; je 0xca5a
push eax
push eax
push ref_000223da  ; push 0x223da
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ca5a:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0000ca7b  ; je 0xca7b
push eax
push ref_00022281  ; push 0x22281
push 0x295

loc_0000ca6e:
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000ca7b:
mov eax, 0x80000002
jmp near loc_0000cbf4  ; jmp 0xcbf4

loc_0000ca85:
shl eax, 0x10
push eax
push 0xff00ffff
lea eax, [edi + 0x88]
push eax
push dword [ebp + 0x14]
call fcn_00009dc2  ; call 0x9dc2
add esp, 0x10

loc_0000caa0:
imul eax, esi, 0x12
add eax, dword [ebp + 8]
test byte [eax + 0x1ed], 2
je short loc_0000cb08  ; je 0xcb08
movzx eax, byte [eax + 0x1ea]
cmp al, 0x80
jbe short loc_0000caed  ; jbe 0xcaed
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000cad7  ; je 0xcad7
push edi
push edi
push ref_00022408  ; push 0x22408
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000cad7:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0000ca7b  ; je 0xca7b
push esi
push ref_00022281  ; push 0x22281
push 0x2a5
jmp short loc_0000ca6e  ; jmp 0xca6e

loc_0000caed:
shl eax, 0x10
push eax
push 0xff00ffff
lea eax, [edi + 0x8c]
push eax
push dword [ebp + 0x14]
call fcn_00009dc2  ; call 0x9dc2
add esp, 0x10

loc_0000cb08:
imul eax, esi, 0x12
add eax, dword [ebp + 8]
test byte [eax + 0x1ed], 4
je short loc_0000cb6a  ; je 0xcb6a
movzx eax, byte [eax + 0x1eb]
lea edx, [eax - 0x39]
cmp dl, 0x47
jbe short loc_0000cb60  ; jbe 0xcb60
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000cb43  ; je 0xcb43
push ebx
push ebx
push ref_00022437  ; push 0x22437
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000cb43:
call fcn_00015480  ; call 0x15480
test al, al
je near loc_0000ca7b  ; je 0xca7b
push ecx
push ref_00022281  ; push 0x22281
push 0x2b9
jmp near loc_0000ca6e  ; jmp 0xca6e

loc_0000cb60:
shl eax, 8
mov edx, 0xffff00ff
jmp short loc_0000cb6f  ; jmp 0xcb6f

loc_0000cb6a:
xor eax, eax
or edx, 0xffffffff

loc_0000cb6f:
imul esi, esi, 0x12
add esi, dword [ebp + 8]
test byte [esi + 0x1ed], 8
je short loc_0000cbd5  ; je 0xcbd5
mov cl, byte [esi + 0x1ec]
lea esi, [ecx - 0x45]
mov byte [ebp - 0x24], cl
mov ecx, esi
cmp cl, 0x3b
jbe short loc_0000cbcb  ; jbe 0xcbcb
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000cbae  ; je 0xcbae
push edx
push edx
push ref_00022460  ; push 0x22460
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000cbae:
call fcn_00015480  ; call 0x15480
test al, al
je near loc_0000ca7b  ; je 0xca7b
push eax
push ref_00022281  ; push 0x22281
push 0x2c6
jmp near loc_0000ca6e  ; jmp 0xca6e

loc_0000cbcb:
movzx ecx, byte [ebp - 0x24]
xor dl, dl
or eax, ecx
jmp short loc_0000cbda  ; jmp 0xcbda

loc_0000cbd5:
cmp edx, 0xffffffff
je short loc_0000cbee  ; je 0xcbee

loc_0000cbda:
push eax
add edi, 0x90
push edx
push edi
push dword [ebp + 0x14]
call fcn_00009dc2  ; call 0x9dc2
add esp, 0x10

loc_0000cbee:
inc ebx
jmp near loc_0000c9a4  ; jmp 0xc9a4

loc_0000cbf4:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000cbfc:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x2c
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000cc1f  ; je 0xcc1f
push eax
push eax
push ref_0002248a  ; push 0x2248a
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000cc1f:
call fcn_0001bfbb  ; call 0x1bfbb
mov dword [ebp - 0x2c], eax
push eax
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
mov ebx, eax
lea eax, [eax + 0xf0]
add ebx, 2
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
mov dword [esp], ebx
mov dword [ebp - 0x30], eax
and dword [ebp - 0x30], 0xffffc000
call fcn_00017dc2  ; call 0x17dc2
add esp, 0xc
push 2
push 0x1f
push 0
mov ebx, eax
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 0
push 0x1c
push 0
mov esi, eax
call fcn_00016c9a  ; call 0x16c9a
lea edi, [esi + 0x92]
mov dword [esp], edi
mov dword [ebp - 0x34], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 0xf
setne byte [ebp - 0x35]
cmp dword [ebp - 0x2c], 1
jne near loc_0000cedf  ; jne 0xcedf
sub esp, 0xc
push edi
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 0x30
je short loc_0000cd14  ; je 0xcd14

loc_0000ccac:
push eax
lea eax, [ebp - 0x1c]
push eax
push 0xea000aac
push dword [ebp - 0x30]
call fcn_00009d19  ; call 0x9d19
mov eax, dword [ebp - 0x1c]
add esp, 0x10
and eax, 0x30
cmp eax, 0x20
je near loc_0000ce82  ; je 0xce82
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000cced  ; je 0xcced
push eax
push eax
push ref_000224a1  ; push 0x224a1
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000cced:
call fcn_00015480  ; call 0x15480
test al, al
je near loc_0000ce82  ; je 0xce82
push eax
push ref_00024be5  ; push 0x24be5
push 0x32e
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
jmp near loc_0000ce7f  ; jmp 0xce7f

loc_0000cd14:
cmp byte [ebp - 0x35], 1
je short loc_0000ccac  ; je 0xccac
push eax
push 0x60

loc_0000cd1d:
push 0x3f
lea eax, [esi + 0x90]
push eax
call fcn_0001878a  ; call 0x1878a
add esp, 0x10

loc_0000cd2e:
push eax
push 0x183
push 0xfffffe00
lea eax, [esi + 0x94]
push eax
lea esi, [esi + 0x98]
mov dword [ebp - 0x1c], 0xfffffe00
call fcn_00018b68  ; call 0x18b68
pop eax
pop edx
push 0x8000
push edi
call fcn_00018927  ; call 0x18927
movzx eax, bx
mov dword [esp], eax
push dword [ebp - 0x30]
push dword [ebp - 0x34]
push dword [ebp - 0x2c]
push dword [ebp + 8]
call fcn_0000c0c8  ; call 0xc0c8
mov eax, ebx
add esp, 0x20
and eax, 0xfffffffd
cmp ax, 0x8c44
je near loc_0000ce9e  ; je 0xce9e
lea eax, [ebx + 0x73b2]
cmp ax, 2
jbe near loc_0000ce9e  ; jbe 0xce9e
cmp bx, 0x8c5c
je near loc_0000ce9e  ; je 0xce9e
lea eax, [ebx + 0x73b7]
cmp ax, 3
jbe near loc_0000ce9e  ; jbe 0xce9e
lea eax, [ebx + 0x73bf]
cmp ax, 1
jbe near loc_0000ce9e  ; jbe 0xce9e
lea eax, [ebx + 0x63bf]
cmp ax, 6
jbe near loc_0000ce9e  ; jbe 0xce9e
lea eax, [ebx + 0x733f]
cmp ax, 5
jbe near loc_0000ce9e  ; jbe 0xce9e
add bx, 0x633f
cmp bx, 0xa
jbe near loc_0000ce9e  ; jbe 0xce9e

loc_0000cdf2:
push ebx
push ebx
push 0x80000
push esi
call fcn_00018b14  ; call 0x18b14
add esp, 0xc
push 0x200
push 0xffffe27f
push esi
mov dword [ebp - 0x1c], 0xffffe27f
call fcn_00018b68  ; call 0x18b68
pop eax
pop edx
push 0x100000
push esi
call fcn_00018b14  ; call 0x18b14
add esp, 0xc
push 0x20
push 0xffffffffffffff9f
push esi
call fcn_00018b68  ; call 0x18b68
pop ecx
pop ebx
push 0x40000
push esi
call fcn_00018b14  ; call 0x18b14
mov eax, dword [ebp - 0x34]
add eax, 0x410
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
cmp dword [ebp - 0x2c], 1
jne short loc_0000ceb3  ; jne 0xceb3
mov dl, al
and edx, 0x10
cmp dl, 1
sbb edx, edx
and edx, 0x10
add edx, 0xf
mov cl, dl
or ecx, 0x20
test al, 0x20

loc_0000ce70:
cmove edx, ecx

loc_0000ce73:
push ecx
movzx edx, dl
push ecx
push edx
push edi
call fcn_00018730  ; call 0x18730

loc_0000ce7f:
add esp, 0x10

loc_0000ce82:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000cef7  ; je 0xcef7
push eax
push eax
push ref_000224ef  ; push 0x224ef
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp short loc_0000cef7  ; jmp 0xcef7

loc_0000ce9e:
push eax
push eax
push 0x400000
push esi
call fcn_00018b14  ; call 0x18b14
add esp, 0x10
jmp near loc_0000cdf2  ; jmp 0xcdf2

loc_0000ceb3:
xor edx, edx
cmp dword [ebp - 0x2c], 2
jne short loc_0000ce73  ; jne 0xce73
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
jmp short loc_0000ce70  ; jmp 0xce70

loc_0000cedf:
cmp byte [ebp - 0x35], 1
je short loc_0000ce82  ; je 0xce82
cmp dword [ebp - 0x2c], 2
jne near loc_0000cd2e  ; jne 0xcd2e
push ecx
push 0x40
jmp near loc_0000cd1d  ; jmp 0xcd1d

loc_0000cef7:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000cf01:
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
call fcn_00017d8b  ; call 0x17d8b
mov esi, eax
pop eax
push dword [ebx + 4]
call fcn_0001be90  ; call 0x1be90
movzx edx, byte [ebx + 0x37e]
add esp, 0x10
mov edi, eax
mov eax, esi
shr al, 5
xor eax, 1
and eax, 1
cmp edx, eax
je near loc_0000d125  ; je 0xd125
lea eax, [ebp - 0x1c]
push eax
push 0
push 0
push ref_0002913c  ; push 0x2913c
call fcn_0001975d  ; call 0x1975d
mov esi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000cf9e  ; je 0xcf9e
test esi, esi
jns short loc_0000cf9e  ; jns 0xcf9e
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000cf86  ; je 0xcf86
push eax
push esi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000cf86:
push esi
push ref_000206f4  ; push 0x206f4
push 0x467
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000cf9e:
mov eax, dword [ebx + 4]
sub esp, 0xc
add eax, 0x3420
push eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, al
jns short loc_0000cfdf  ; jns 0xcfdf
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000cfd3  ; je 0xcfd3
push ecx
push ecx
push ref_00022504  ; push 0x22504
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000cfd3:
push edx
mov eax, dword [ebp - 0x1c]
push edx
push 4
jmp near loc_0000d11f  ; jmp 0xd11f

loc_0000cfdf:
xor esi, esi
mov eax, edi
cmp byte [ebx + 0x37e], 0
je short loc_0000d016  ; je 0xd016
dec al
jne near loc_0000d0bc  ; jne 0xd0bc
push eax
mov esi, 1
push eax
push 0xdf
mov eax, dword [ebx + 4]
add eax, 0x3414
push eax
call fcn_0001875d  ; call 0x1875d
add esp, 0x10
jmp near loc_0000d0bc  ; jmp 0xd0bc

loc_0000d016:
dec al
jne near loc_0000d0a7  ; jne 0xd0a7
push eax
push 0
push 0x19
movzx eax, byte [ebx + 1]
push eax
call fcn_00016c9a  ; call 0x16c9a
lea edi, [eax + 0x10]
mov esi, eax
mov dword [esp], edi
call fcn_00017e4e  ; call 0x17e4e
mov dword [ebp - 0x34], eax
pop eax
pop edx
push dword [ebx + 0x1a]
push edi
call fcn_00017e8f  ; call 0x17e8f
lea eax, [esi + 4]
mov dword [esp], eax
mov esi, eax
call fcn_00017dc2  ; call 0x17dc2
pop ecx
mov dword [ebp - 0x2c], esi
mov word [ebp - 0x2e], ax
pop eax
push 2
push esi
call fcn_00018927  ; call 0x18927
mov dword [esp], edi
call fcn_00017e4e  ; call 0x17e4e
and eax, 0xffff8000
lea edx, [eax + 0x5b54]
mov dword [esp], edx
call fcn_00017dc2  ; call 0x17dc2
mov ecx, eax
pop eax
movzx eax, word [ebp - 0x2e]
shr cx, 0xf
pop edx
mov esi, ecx
push eax
push dword [ebp - 0x2c]
call fcn_00017e04  ; call 0x17e04
pop ecx
mov ecx, dword [ebp - 0x34]
pop eax
push ecx
push edi
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10

loc_0000d0a7:
push edi
push edi
push 0x20
mov eax, dword [ebx + 4]
add eax, 0x3414
push eax
call fcn_00018730  ; call 0x18730
add esp, 0x10

loc_0000d0bc:
mov eax, dword [ebx + 4]
sub esp, 0xc
add eax, 0x3414
push eax
call fcn_00017d8b  ; call 0x17d8b
mov eax, esi
add esp, 0x10
test al, al
je short loc_0000d125  ; je 0xd125
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000d0f3  ; je 0xd0f3
push esi
push esi
push ref_00022558  ; push 0x22558
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000d0f3:
mov eax, dword [ebx + 4]
sub esp, 0xc
add eax, 0x3428
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
mov edx, 3
test al, 2
jne short loc_0000d119  ; jne 0xd119
cmp byte [ebx + 0x11], 1
sbb edx, edx
add edx, 5

loc_0000d119:
mov eax, dword [ebp - 0x1c]
push ecx
push ecx
push edx

loc_0000d11f:
push eax
call dword [eax]  ; ucall
add esp, 0x10

loc_0000d125:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000d12f:
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
call fcn_0001bfbb  ; call 0x1bfbb
push edi
push 0
push 0x1f
push 0
mov esi, eax
mov dword [ebp - 0x34], eax
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 2
push 0x1f
mov dword [ebp - 0x38], eax
movzx eax, byte [ebx + 1]
push eax
call fcn_00016c9a  ; call 0x16c9a
add esp, 0x10
dec esi
mov dword [ebp - 0x30], 0
mov edi, eax
jne short loc_0000d196  ; jne 0xd196
push ecx
push 5
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0x10
mov dword [ebp - 0x30], eax

loc_0000d196:
push eax
push 0
push 0x1c
push 0
call fcn_00016c9a  ; call 0x16c9a
mov esi, eax
mov eax, dword [ebp - 0x38]
add eax, 0xf0
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
mov dword [ebp - 0x40], eax
pop eax
mov eax, dword [ebp - 0x38]
pop edx
add eax, 0xac
push 0xffefffff
push eax
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10
mov byte [ebp - 0x3c], 0
mov byte [ebp - 0x29], 0

loc_0000d1d7:
call fcn_0001c1bf  ; call 0x1c1bf
cmp byte [ebp - 0x29], al
jae short loc_0000d25e  ; jae 0xd25e
movzx edx, byte [ebp - 0x29]
push eax
push edx
push 0x1c
movzx eax, byte [ebx + 1]
mov dword [ebp - 0x48], edx
push eax
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], eax
mov dword [ebp - 0x44], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
je short loc_0000d256  ; je 0xd256
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
call fcn_00017dc2  ; call 0x17dc2
mov edx, dword [ebp - 0x48]
add esp, 0x10
movzx edx, dx
and eax, 0xf
cmp eax, edx
je short loc_0000d256  ; je 0xd256
mov ecx, dword [ebp - 0x44]
push eax
push edx
push 0xfff0
push ecx
call fcn_00018981  ; call 0x18981
add esp, 0x10
mov byte [ebp - 0x3c], 1

loc_0000d256:
inc byte [ebp - 0x29]
jmp near loc_0000d1d7  ; jmp 0xd1d7

loc_0000d25e:
cmp byte [ebp - 0x3c], 0
je short loc_0000d274  ; je 0xd274
sub esp, 0xc
push 0x186a0
call fcn_0001bb03  ; call 0x1bb03
add esp, 0x10

loc_0000d274:
push eax
push 0x80
push 0x9f
lea eax, [esi + 0xf4]
push eax
call fcn_0001878a  ; call 0x1878a
add esp, 0x10
mov byte [ebp - 0x29], 0

loc_0000d292:
call fcn_0001c245  ; call 0x1c245
cmp byte [ebp - 0x29], al
jae short loc_0000d2e2  ; jae 0xd2e2
movzx eax, byte [ebp - 0x29]
push ecx
movzx edx, byte [ebp + eax*2 - 0x1b]
movzx eax, byte [ebp + eax*2 - 0x1c]
push edx
push eax
movzx eax, byte [ebx + 1]
push eax
call fcn_00016c9a  ; call 0x16c9a
lea edx, [eax + 0x88]
mov dword [esp], edx
mov dword [ebp - 0x3c], edx
call fcn_00017e4e  ; call 0x17e4e
pop edx
mov edx, dword [ebp - 0x3c]
pop ecx
and eax, 0xfffffffb
push eax
push edx
mov dword [ebp - 0x20], eax
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10
inc byte [ebp - 0x29]
jmp short loc_0000d292  ; jmp 0xd292

loc_0000d2e2:
cmp byte [ebx + 0x364], 1
jne short loc_0000d331  ; jne 0xd331
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
call fcn_00018b68  ; call 0x18b68
mov eax, dword [ebx + 4]
add eax, 0x3404
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
pop eax
pop edx
push 1
mov eax, dword [ebx + 0x368]
add eax, 0x10
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10

loc_0000d331:
cmp byte [ebx + 0xc], 0
mov eax, dword [ebx + 4]
jne short loc_0000d34b  ; jne 0xd34b
push ecx
add eax, 0x3410
push ecx
push 0xfffffffffffffffb
push eax
call fcn_00018b3e  ; call 0x18b3e
jmp short loc_0000d35a  ; jmp 0xd35a

loc_0000d34b:
push edx
add eax, 0x3410
push edx
push 4
push eax
call fcn_00018b14  ; call 0x18b14

loc_0000d35a:
mov eax, dword [ebx + 4]
add esp, 0x10
sub esp, 0xc
add eax, 0x3410
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
cmp dword [ebp - 0x34], 1
jne near loc_0000d445  ; jne 0xd445
cmp dword [ebx + 0x1db], 0
jne near loc_0000d41e  ; jne 0xd41e
push eax
add esi, 0x410
push 0x70
push 0xffffff00
lea eax, [edi + 0x34]
push eax
call fcn_00018b68  ; call 0x18b68
pop eax
pop edx
lea eax, [edi + 0x70]
push 0xffff00ff
push eax
call fcn_00018b3e  ; call 0x18b3e
pop ecx
pop eax
lea eax, [edi + 0x90]
push 0x1f
push eax
call fcn_0001875d  ; call 0x1875d
mov dword [esp], esi
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
and eax, 0x30
cmp al, 0x30
je short loc_0000d41e  ; je 0xd41e
sub esp, 0xc
push esi
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 0x10
jne short loc_0000d3f6  ; jne 0xd3f6
push eax
push eax
mov eax, dword [ebp - 0x30]
push 1
add eax, 0x92
push eax
call fcn_00018730  ; call 0x18730
add esp, 0x10

loc_0000d3f6:
sub esp, 0xc
push esi
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 0x20
jne near loc_0000d490  ; jne 0xd490
mov eax, dword [ebp - 0x30]
push esi
push esi
push 2
add eax, 0x92
push eax
call fcn_00018730  ; call 0x18730
jmp short loc_0000d48d  ; jmp 0xd48d

loc_0000d41e:
push ecx
push ecx
push 0x2000000
mov eax, dword [ebx + 4]
add eax, 0x3418
push eax
call fcn_00018b14  ; call 0x18b14
mov eax, dword [ebx + 4]
add eax, 0x3418
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
jmp short loc_0000d48d  ; jmp 0xd48d

loc_0000d445:
cmp dword [ebp - 0x34], 2
jne short loc_0000d490  ; jne 0xd490
cmp dword [ebx + 0x1db], 3
jne short loc_0000d490  ; jne 0xd490
push eax
push eax
push 0x3f
lea eax, [edi + 0x90]
push eax
call fcn_0001875d  ; call 0x1875d
pop eax
pop edx
lea eax, [edi + 0xa0]
push 0
push eax
call fcn_00017da5  ; call 0x17da5
add esp, 0xc
push 0x8000
push 0xffff7fff
lea eax, [edi + 0xa4]
push eax
call fcn_00018b68  ; call 0x18b68

loc_0000d48d:
add esp, 0x10

loc_0000d490:
cmp dword [ebx + 0x1db], 2
jne short loc_0000d4c1  ; jne 0xd4c1
mov eax, dword [ebp - 0x38]
sub esp, 0xc
add eax, 2
push eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0xc
push 0x80
push 0x3f
lea eax, [edi + 0x90]
push eax
call fcn_0001878a  ; call 0x1878a
add esp, 0x10

loc_0000d4c1:
cmp dword [ebp - 0x34], 2
jne near loc_0000d5bf  ; jne 0xd5bf
mov ebx, dword [ebp - 0x40]
push esi
lea esi, [ebp - 0x20]
push esi
push 0xed00015c
and ebx, 0xffffc000
push ebx
call fcn_00009d19  ; call 0x9d19
add esp, 0x10
mov edi, eax
test eax, eax
jns short loc_0000d509  ; jns 0xd509
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000d525  ; je 0xd525
push ecx
push edi
push ref_0002258d  ; push 0x2258d
push 0x80000000
call fcn_00015487  ; call 0x15487
jmp short loc_0000d522  ; jmp 0xd522

loc_0000d509:
mov eax, dword [ebp - 0x20]
push edx
and ah, 0xf7
or ah, 0x37
push eax
push 0xed00015c
push ebx
mov dword [ebp - 0x20], eax
call fcn_00009c75  ; call 0x9c75

loc_0000d522:
add esp, 0x10

loc_0000d525:
push edi
push esi
push 0xed000118
push ebx
call fcn_00009d19  ; call 0x9d19
add esp, 0x10
mov edi, eax
test eax, eax
jns short loc_0000d557  ; jns 0xd557
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000d572  ; je 0xd572
push ecx
push edi
push ref_000225b0  ; push 0x225b0
push 0x80000000
call fcn_00015487  ; call 0x15487
jmp short loc_0000d56f  ; jmp 0xd56f

loc_0000d557:
mov eax, dword [ebp - 0x20]
push edx
or eax, 0xc00000
push eax
push 0xed000118
push ebx
mov dword [ebp - 0x20], eax
call fcn_00009c75  ; call 0x9c75

loc_0000d56f:
add esp, 0x10

loc_0000d572:
push edi
push esi
push 0xed000120
push ebx
call fcn_00009d19  ; call 0x9d19
add esp, 0x10
mov esi, eax
test eax, eax
jns short loc_0000d5a4  ; jns 0xd5a4
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000d5bf  ; je 0xd5bf
push ecx
push esi
push ref_000225d3  ; push 0x225d3
push 0x80000000
call fcn_00015487  ; call 0x15487
jmp short loc_0000d5bc  ; jmp 0xd5bc

loc_0000d5a4:
mov eax, dword [ebp - 0x20]
push edx
or eax, 0x240000
push eax
push 0xed000120
push ebx
mov dword [ebp - 0x20], eax
call fcn_00009c75  ; call 0x9c75

loc_0000d5bc:
add esp, 0x10

loc_0000d5bf:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000d5c9:
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
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 0
push 0
push 0
mov edi, eax
call fcn_00016c9a  ; call 0x16c9a
mov esi, dword [ebx + 0x1a]
pop ecx
pop eax
mov dword [ebp - 0x1c], edi
lea edi, [edi + 0x40]
push esi
push edi
call fcn_00017e8f  ; call 0x17e8f
pop eax
mov eax, dword [ebp - 0x1c]
pop edx
add eax, 0x44
push 0
push eax
call fcn_00017e8f  ; call 0x17e8f
pop ecx
pop eax
push 1
push edi
call fcn_00018b14  ; call 0x18b14
call fcn_0001bfbb  ; call 0x1bfbb
add esp, 0x10
cmp eax, 2
lea eax, [esi + 0x10]
jne short loc_0000d638  ; jne 0xd638
push edx
push edx
push 0x14a
jmp short loc_0000d63f  ; jmp 0xd63f

loc_0000d638:
push ecx
push ecx
push 0x154

loc_0000d63f:
push eax
call fcn_00017e04  ; call 0x17e04
add esp, 0x10
push eax
push eax
push 0xff
lea eax, [esi + 6]
push eax
call fcn_00017da5  ; call 0x17da5
pop eax
pop edx
lea eax, [esi + 0x80]
push 0xff
push eax
call fcn_00017da5  ; call 0x17da5
pop ecx
pop eax
lea eax, [esi + 0x84]
push 0
push eax
call fcn_00017da5  ; call 0x17da5
pop eax
pop edx
lea eax, [esi + 0x82]
push 0
push eax
call fcn_00017da5  ; call 0x17da5
add esp, 0xc
push 0x403c
push 0xffff8003
mov eax, dword [ebx + 4]
add eax, 0x38b0
push eax
call fcn_00018b68  ; call 0x18b68
mov eax, dword [ebx + 4]
add eax, 0x38b4
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test ah, 0x40
je short loc_0000d6ce  ; je 0xd6ce
push eax
add esi, 0xa
push eax
push 1
push esi
call fcn_00017da5  ; call 0x17da5
add esp, 0x10

loc_0000d6ce:
push ecx
push ecx
push 0xfffffffffffffffe
push edi
call fcn_00018b3e  ; call 0x18b3e
pop esi
pop eax
push 0
push edi
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10
test byte [ebx + 0x426], 1
je near loc_0000d77b  ; je 0xd77b
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
call fcn_00018b68  ; call 0x18b68
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
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_0000d77b:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000d785:
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
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
cmp bl, al
je short loc_0000d7d3  ; je 0xd7d3
push ebx
push ebx
push 0xfeff
push esi
call fcn_00018954  ; call 0x18954
movzx eax, byte [edi + 0x361]
add esp, 0xc
push eax
push 0xff00
push esi
call fcn_00018981  ; call 0x18981
add esp, 0x10

loc_0000d7d3:
push eax
push eax
push 0x100
push esi
call fcn_00018927  ; call 0x18927
mov dword [esp], esi
call fcn_00017dc2  ; call 0x17dc2
mov dword [esp], esi
call fcn_00017d8b  ; call 0x17d8b
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
call fcn_00017da5  ; call 0x17da5
mov dword [esp], ebx
call fcn_00017e4e  ; call 0x17e4e
mov dl, byte [edi + 0x360]
add esp, 0x10
movzx ecx, dl
shr eax, 0x18
cmp ecx, eax
je short loc_0000d852  ; je 0xd852
cmp dl, 0xf
ja short loc_0000d852  ; ja 0xd852
push edx
push edx
push 0
push dword [ebp - 0x1c]
call fcn_00017da5  ; call 0x17da5
pop ecx
pop eax
movzx eax, byte [edi + 0x360]
shl eax, 0x18
push eax
push ebx
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10

loc_0000d852:
call fcn_0001bfbb  ; call 0x1bfbb
cmp eax, 2
jne short loc_0000d875  ; jne 0xd875
cmp byte [edi + 0x362], 0
jne short loc_0000d875  ; jne 0xd875
push eax
push eax
push 0x800
push esi
call fcn_00018927  ; call 0x18927
add esp, 0x10

loc_0000d875:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000d87f:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000d8a2  ; je 0xd8a2
push eax
push eax
push ref_000225f6  ; push 0x225f6
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000d8a2:
push eax
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
lea esi, [eax + 0xf0]
mov ebx, eax
mov dword [esp], esi
call fcn_00017e4e  ; call 0x17e4e
lea eax, [ebp - 0x20]
push eax
push 0
push 0
push ref_000291dc  ; push 0x291dc
call fcn_0001975d  ; call 0x1975d
add esp, 0x20
mov edi, eax
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0000d917  ; je 0xd917
test edi, edi
jns short loc_0000d917  ; jns 0xd917
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000d8ff  ; je 0xd8ff
push eax
push edi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000d8ff:
push edi
push ref_000206f4  ; push 0x206f4
push 0x7c4
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000d917:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0000d943  ; je 0xd943
mov eax, dword [ebp - 0x20]
test word [eax + 4], 0x3fff
je short loc_0000d943  ; je 0xd943
push ecx
push ref_0002260f  ; push 0x2260f
push 0x7d5
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000d943:
push eax
mov eax, dword [ebp - 0x20]
mov eax, dword [eax + 4]
or eax, 1
push eax
push 0x3fff
push esi
call fcn_00018b68  ; call 0x18b68
lea esi, [ebx + 0x40]
pop eax
mov eax, dword [ebp - 0x20]
pop edx
movzx eax, word [eax + 8]
push eax
push esi
call fcn_00017e8f  ; call 0x17e8f
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000d9ac  ; je 0xd9ac
sub esp, 0xc
push esi
call fcn_00017e4e  ; call 0x17e4e
mov edx, dword [ebp - 0x20]
add esp, 0x10
movzx edx, word [edx + 8]
and eax, 0xfffc
cmp eax, edx
je short loc_0000d9ac  ; je 0xd9ac
push edi
push ref_0002264a  ; push 0x2264a
push 0x7e1
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000d9ac:
mov eax, dword [ebp - 0x20]
cmp word [eax + 8], 0
lea eax, [ebx + 0x44]
je short loc_0000d9c8  ; je 0xd9c8
push esi
push esi
push 0x80
push eax
call fcn_00018730  ; call 0x18730
jmp short loc_0000d9d2  ; jmp 0xd9d2

loc_0000d9c8:
push ecx
push ecx
push 0x7f
push eax
call fcn_0001875d  ; call 0x1875d

loc_0000d9d2:
add esp, 0x10
push eax
push eax
push 2
lea eax, [ebx + 0xa6]
push eax
call fcn_00018730  ; call 0x18730
lea esi, [ebx + 0x48]
pop eax
mov eax, dword [ebp - 0x20]
pop edx
movzx eax, word [eax + 0xa]
push eax
push esi
call fcn_00017e8f  ; call 0x17e8f
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000da38  ; je 0xda38
sub esp, 0xc
push esi
call fcn_00017e4e  ; call 0x17e4e
mov edx, dword [ebp - 0x20]
add esp, 0x10
movzx edx, word [edx + 0xa]
and eax, 0xfffc
cmp eax, edx
je short loc_0000da38  ; je 0xda38
push eax
push ref_00022691  ; push 0x22691
push 0x800
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000da38:
mov eax, dword [ebp - 0x20]
cmp word [eax + 0xa], 0
lea eax, [ebx + 0x4c]
je short loc_0000da51  ; je 0xda51
push edi
push edi
push 0x10
push eax
call fcn_00018730  ; call 0x18730
jmp short loc_0000da5e  ; jmp 0xda5e

loc_0000da51:
push esi
push esi
push 0xef
push eax
call fcn_0001875d  ; call 0x1875d

loc_0000da5e:
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
call fcn_0001878a  ; call 0x1878a
pop ebx
push dword [ebp - 0x20]
call fcn_0000cbfc  ; call 0xcbfc
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000dae2  ; je 0xdae2
test ebx, ebx
jns short loc_0000dae2  ; jns 0xdae2
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000daca  ; je 0xdaca
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000daca:
push edi
push ref_000206f4  ; push 0x206f4
push 0x828
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000dae2:
sub esp, 0xc
push dword [ebp - 0x20]
call fcn_0001146f  ; call 0x1146f
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000db34  ; je 0xdb34
test ebx, ebx
jns short loc_0000db34  ; jns 0xdb34
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000db1c  ; je 0xdb1c
push esi
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000db1c:
push ecx
push ref_000206f4  ; push 0x206f4
push 0x82a
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000db34:
sub esp, 0xc
push dword [ebp - 0x20]
call fcn_0000cf01  ; call 0xcf01
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000db86  ; je 0xdb86
test ebx, ebx
jns short loc_0000db86  ; jns 0xdb86
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000db6e  ; je 0xdb6e
push edx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000db6e:
push eax
push ref_000206f4  ; push 0x206f4
push 0x82d
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000db86:
sub esp, 0xc
push dword [ebp - 0x20]
call fcn_0000d12f  ; call 0xd12f
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000dbd8  ; je 0xdbd8
test ebx, ebx
jns short loc_0000dbd8  ; jns 0xdbd8
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000dbc0  ; je 0xdbc0
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000dbc0:
push eax
push ref_000206f4  ; push 0x206f4
push 0x830
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000dbd8:
sub esp, 0xc
push dword [ebp - 0x20]
call fcn_0000d5c9  ; call 0xd5c9
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000dc2a  ; je 0xdc2a
test ebx, ebx
jns short loc_0000dc2a  ; jns 0xdc2a
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000dc12  ; je 0xdc12
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000dc12:
push eax
push ref_000206f4  ; push 0x206f4
push 0x832
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000dc2a:
sub esp, 0xc
push dword [ebp - 0x20]
call fcn_0000d785  ; call 0xd785
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000dc7c  ; je 0xdc7c
test ebx, ebx
jns short loc_0000dc7c  ; jns 0xdc7c
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000dc64  ; je 0xdc64
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000dc64:
push edi
push ref_000206f4  ; push 0x206f4
push 0x834
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000dc7c:
sub esp, 0xc
lea eax, [ebp - 0x1c]
push eax
call fcn_00019797  ; call 0x19797
add esp, 0x10
test eax, eax
js short loc_0000dd06  ; js 0xdd06
mov eax, dword [ebp - 0x1c]
cmp eax, 0x11
je short loc_0000dd06  ; je 0xdd06
cmp eax, 0x20
je short loc_0000dd06  ; je 0xdd06
mov eax, dword [ebp - 0x20]
cmp byte [eax + 0x339], 0
je short loc_0000dd06  ; je 0xdd06
movzx ecx, byte [eax]
add eax, 0x284
mov edx, dword [eax - 0x26a]
push ecx
push edx
push edx
push eax
call fcn_00011751  ; call 0x11751
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000dd06  ; je 0xdd06
test ebx, ebx
jns short loc_0000dd06  ; jns 0xdd06
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000dcee  ; je 0xdcee
push esi
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000dcee:
push ebx
push ref_000206f4  ; push 0x206f4
push 0x848
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000dd06:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000dd20  ; je 0xdd20
push ecx
push ecx
push ref_000226da  ; push 0x226da
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000dd20:
sub esp, 0xc
push ref_00026f74  ; push 0x26f74
call fcn_0001972b  ; call 0x1972b
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000dd74  ; je 0xdd74
test ebx, ebx
jns short loc_0000dd74  ; jns 0xdd74
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000dd5c  ; je 0xdd5c
push edx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000dd5c:
push eax
push ref_000206f4  ; push 0x206f4
push 0x853
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000dd74:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000dd7e:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov ebx, dword [ebp + 0xc]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000dda4  ; je 0xdda4
push eax
push eax
push ref_000226f1  ; push 0x226f1
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000dda4:
cmp byte [ebx], 5
jbe near loc_0000de39  ; jbe 0xde39
xor edx, edx

loc_0000ddaf:
cmp dl, byte [ebx + 0x526]
jae short loc_0000dde0  ; jae 0xdde0
movzx eax, dl
mov esi, dword [ebp + 8]
push edi
lea eax, [ebx + eax*8]
push edi
push dword [eax + 0x4e2]
add esi, dword [eax + 0x4de]
mov dword [ebp - 0x1c], edx
push esi
call fcn_00017e8f  ; call 0x17e8f
mov edx, dword [ebp - 0x1c]
add esp, 0x10
inc edx
jmp short loc_0000ddaf  ; jmp 0xddaf

loc_0000dde0:
xor edx, edx

loc_0000dde2:
cmp dl, byte [ebx + 0x553]
jae short loc_0000de16  ; jae 0xde16
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
call fcn_00017e04  ; call 0x17e04
mov edx, dword [ebp - 0x1c]
add esp, 0x10
inc edx
jmp short loc_0000dde2  ; jmp 0xdde2

loc_0000de16:
call fcn_00015479  ; call 0x15479
test al, al
je near loc_0000dec7  ; je 0xdec7
push eax
push eax
push ref_00022718  ; push 0x22718
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp near loc_0000dec7  ; jmp 0xdec7

loc_0000de39:
call fcn_0001bfbb  ; call 0x1bfbb
mov esi, ref_00026f9c  ; mov esi, 0x26f9c
mov edx, ref_00026fc0  ; mov edx, 0x26fc0
mov edi, ref_00026fd8  ; mov edi, 0x26fd8
cmp eax, 2
sete bl
setne cl
cmovne esi, edx
movzx ebx, bl
mov edx, ref_00027000  ; mov edx, 0x27000
movzx ecx, cl
cmovne edi, edx
add ecx, 5
lea ebx, [ebx + ebx*2 + 6]
xor edx, edx

loc_0000de70:
movzx eax, dl
cmp eax, ecx
jae short loc_0000de9c  ; jae 0xde9c
mov dword [ebp - 0x20], ecx
lea eax, [edi + eax*8]
push ecx
push ecx
mov ecx, dword [ebp + 8]
push dword [eax + 4]
add ecx, dword [eax]
mov dword [ebp - 0x1c], edx
push ecx
call fcn_00017e8f  ; call 0x17e8f
mov edx, dword [ebp - 0x1c]
add esp, 0x10
mov ecx, dword [ebp - 0x20]
inc edx
jmp short loc_0000de70  ; jmp 0xde70

loc_0000de9c:
xor edi, edi

loc_0000de9e:
mov eax, edi
movzx eax, al
cmp eax, ebx
jae near loc_0000de16  ; jae 0xde16
lea eax, [esi + eax*4]
inc edi
push edx
push edx
movzx edx, word [eax + 2]
push edx
movzx eax, word [eax]
add eax, dword [ebp + 8]
push eax
call fcn_00017e04  ; call 0x17e04
add esp, 0x10
jmp short loc_0000de9e  ; jmp 0xde9e

loc_0000dec7:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000ded1:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000def4  ; je 0xdef4
push ebx
push ebx
push ref_0002273d  ; push 0x2273d
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000def4:
push ecx
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
mov edi, eax
lea eax, [eax + 0xa4]
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test al, 4
je near loc_0000dfd2  ; je 0xdfd2
push ecx
push ecx
push 1
push dword [ebp + 8]
call fcn_0001be4f  ; call 0x1be4f
mov dword [esp], 0x70
call fcn_00018ee1  ; call 0x18ee1
pop esi
mov bl, al
pop eax
and ebx, 0xffffff80
push 0
push dword [ebp + 8]
call fcn_0001be4f  ; call 0x1be4f
mov dl, bl
or ebx, 0xb
or edx, 0xa
movzx ebx, bl
pop eax
movzx esi, dl
pop edx
push esi
push 0x70
call fcn_00018eea  ; call 0x18eea
mov dword [esp], 0x71
call fcn_00018ee1  ; call 0x18ee1
pop ecx
pop edx
and eax, 0x8f
or eax, 0x60
push eax
push 0x71
call fcn_00018eea  ; call 0x18eea
pop ecx
pop eax
push ebx
push 0x70
call fcn_00018eea  ; call 0x18eea
pop eax
pop edx
push 0x80
push 0x71
call fcn_00017f7f  ; call 0x17f7f
pop ecx
pop eax
push esi
push 0x70
call fcn_00018eea  ; call 0x18eea
mov dword [esp], 0x71
call fcn_00018ee1  ; call 0x18ee1
pop edx
pop ecx
and eax, 0x8f
or eax, 0x20
push eax
push 0x71
call fcn_00018eea  ; call 0x18eea
pop esi
pop eax
push ebx
push 0x70
call fcn_00018eea  ; call 0x18eea
pop eax
pop edx
push 0x7f
push 0x71
call fcn_00017fac  ; call 0x17fac
add esp, 0x10

loc_0000dfd2:
mov eax, dword [ebp + 8]
add edi, 0xdc
push edx
push edx
push 0x10
lea esi, [eax + 0x3310]
push esi
call fcn_00017e8f  ; call 0x17e8f
add esp, 0xc
push 8
push 0xf3
push edi
call fcn_0001878a  ; call 0x1878a
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_0000e018  ; je 0xe018
push eax
push eax
push ref_00022755  ; push 0x22755
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e018:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000e020:
push ebp
mov ebp, esp
push esi
push ebx
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e03f  ; je 0xe03f
push esi
push esi
push ref_0002276b  ; push 0x2276b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e03f:
call fcn_0001bd75  ; call 0x1bd75
test al, al
jne short loc_0000e086  ; jne 0xe086
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e065  ; je 0xe065
push ebx
push ebx
push ref_00022788  ; push 0x22788
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e065:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0000e086  ; je 0xe086
push ecx
push ref_00022281  ; push 0x22281
push 0x974
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000e086:
push edx
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xf0
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
mov ebx, eax
call fcn_00015479  ; call 0x15479
and ebx, 0xffffc000
add esp, 0x10
test al, al
je short loc_0000e0c4  ; je 0xe0c4
push eax
push eax
push ref_000227c2  ; push 0x227c2
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e0c4:
call fcn_00015480  ; call 0x15480
sub esp, 0xc
push ebx
call fcn_0000ded1  ; call 0xded1
mov dword [esp], 0xc
call fcn_00019db6  ; call 0x19db6
add esp, 0x10
mov ebx, eax
test eax, eax
jne short loc_0000e10e  ; jne 0xe10e
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e104  ; je 0xe104
push eax
push eax
push ref_000227eb  ; push 0x227eb

loc_0000e0f7:
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e104:
mov ebx, 0x80000009
jmp near loc_0000e262  ; jmp 0xe262

loc_0000e10e:
sub esp, 0xc
push 0x28
call fcn_00019db6  ; call 0x19db6
add esp, 0x10
mov esi, eax
test eax, eax
jne short loc_0000e133  ; jne 0xe133
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e104  ; je 0xe104
push eax
push eax
push ref_00022821  ; push 0x22821
jmp short loc_0000e0f7  ; jmp 0xe0f7

loc_0000e133:
push eax
push 0x28
push ref_00027030  ; push 0x27030
push esi
call fcn_0001713e  ; call 0x1713e
mov dword [ebx], 0x80000010
mov dword [ebx + 4], ref_0002917c  ; mov dword [ebx + 4], 0x2917c
mov dword [ebx + 8], esi
mov dword [esp], ebx
call fcn_0001972b  ; call 0x1972b
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000e1a0  ; je 0xe1a0
test ebx, ebx
jns short loc_0000e1a0  ; jns 0xe1a0
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e188  ; je 0xe188
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e188:
push eax
push ref_000206f4  ; push 0x206f4
push 0x99d
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000e1a0:
sub esp, 0xc
push ref_00026f80  ; push 0x26f80
call fcn_0001972b  ; call 0x1972b
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000e1f4  ; je 0xe1f4
test ebx, ebx
jns short loc_0000e1f4  ; jns 0xe1f4
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e1dc  ; je 0xe1dc
push esi
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e1dc:
push ebx
push ref_000206f4  ; push 0x206f4
push 0x9a3
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000e1f4:
sub esp, 0xc
push ref_00026f5c  ; push 0x26f5c
call fcn_0001977f  ; call 0x1977f
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0000e248  ; je 0xe248
test ebx, ebx
jns short loc_0000e248  ; jns 0xe248
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e230  ; je 0xe230
push ecx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e230:
push edx
push ref_000206f4  ; push 0x206f4
push 0x9a9
push ref_00022320  ; push 0x22320
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0000e248:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e262  ; je 0xe262
push eax
push eax
push ref_00022853  ; push 0x22853
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e262:
lea esp, [ebp - 8]
mov eax, ebx
pop ebx
pop esi
pop ebp
ret

fcn_0000e26b:
push ebp
mov ebp, esp
push esi
push ebx
mov ebx, dword [ebp + 8]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e28d  ; je 0xe28d
push edx
push edx
push ref_0002286e  ; push 0x2286e
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e28d:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e2ae  ; je 0xe2ae
push eax
movzx eax, byte [ebx + 0xb4]
push eax
push ref_000228a4  ; push 0x228a4
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e2ae:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e2cf  ; je 0xe2cf
push eax
movzx eax, byte [ebx + 0xb5]
push eax
push ref_000228a4  ; push 0x228a4
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e2cf:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e2ed  ; je 0xe2ed
push eax
movzx eax, byte [ebx + 1]
push eax
push ref_000228b8  ; push 0x228b8
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e2ed:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e30b  ; je 0xe30b
push eax
movzx eax, byte [ebx + 9]
push eax
push ref_000228c8  ; push 0x228c8
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e30b:
xor esi, esi

loc_0000e30d:
call fcn_0001c261  ; call 0x1c261
movzx eax, al
cmp esi, eax
jae short loc_0000e35a  ; jae 0xe35a
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e338  ; je 0xe338
movzx eax, byte [ebx + esi*8 + 0x2c]
push eax
push esi
push ref_000228d8  ; push 0x228d8
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e338:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e357  ; je 0xe357
movzx eax, byte [ebx + esi*8 + 0x32]
push eax
push esi
push ref_000228f7  ; push 0x228f7
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e357:
inc esi
jmp short loc_0000e30d  ; jmp 0xe30d

loc_0000e35a:
xor esi, esi

loc_0000e35c:
call fcn_0001c2f8  ; call 0x1c2f8
movzx eax, al
cmp esi, eax
jae short loc_0000e38d  ; jae 0xe38d
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e38a  ; je 0xe38a
movzx eax, byte [ebx + esi*4 + 0x9c]
push eax
push esi
push ref_00022918  ; push 0x22918
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e38a:
inc esi
jmp short loc_0000e35c  ; jmp 0xe35c

loc_0000e38d:
xor esi, esi

loc_0000e38f:
call fcn_0001c245  ; call 0x1c245
movzx eax, al
cmp esi, eax
jae short loc_0000e3bc  ; jae 0xe3bc
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e3b9  ; je 0xe3b9
movzx eax, byte [ebx + esi*8]
push eax
push esi
push ref_00022939  ; push 0x22939
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e3b9:
inc esi
jmp short loc_0000e38f  ; jmp 0xe38f

loc_0000e3bc:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e3da  ; je 0xe3da
push eax
movzx eax, byte [ebx + 0x10]
push eax
push ref_00022959  ; push 0x22959
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e3da:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e3f8  ; je 0xe3f8
push eax
movzx eax, byte [ebx + 0x11]
push eax
push ref_00022972  ; push 0x22972
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e3f8:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e416  ; je 0xe416
push esi
movzx eax, byte [ebx + 0x12]
push eax
push ref_00022995  ; push 0x22995
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e416:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e434  ; je 0xe434
push ecx
movzx eax, byte [ebx + 0x13]
push eax
push ref_000229ae  ; push 0x229ae
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e434:
xor esi, esi

loc_0000e436:
call fcn_0001c298  ; call 0x1c298
movzx eax, al
cmp esi, eax
jae short loc_0000e478  ; jae 0xe478
cmp byte [ebx + esi + 0x14], 0
jne short loc_0000e45b  ; jne 0xe45b
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e475  ; je 0xe475
push edx
push esi
push ref_000229cd  ; push 0x229cd
jmp short loc_0000e46b  ; jmp 0xe46b

loc_0000e45b:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e475  ; je 0xe475
push eax
push esi
push ref_00022a02  ; push 0x22a02

loc_0000e46b:
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e475:
inc esi
jmp short loc_0000e436  ; jmp 0xe436

loc_0000e478:
xor esi, esi

loc_0000e47a:
call fcn_0001c2f8  ; call 0x1c2f8
movzx eax, al
cmp esi, eax
jae short loc_0000e4a8  ; jae 0xe4a8
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e4a5  ; je 0xe4a5
movzx eax, byte [ebx + esi + 0x22]
push eax
push esi
push ref_00022a37  ; push 0x22a37
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e4a5:
inc esi
jmp short loc_0000e47a  ; jmp 0xe47a

loc_0000e4a8:
xor esi, esi

loc_0000e4aa:
call fcn_0001c261  ; call 0x1c261
movzx eax, al
cmp esi, eax
jae short loc_0000e516  ; jae 0xe516
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e4d5  ; je 0xe4d5
movzx eax, byte [ebx + esi*8 + 0x2d]
push eax
push esi
push ref_00022a6b  ; push 0x22a6b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e4d5:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e4f4  ; je 0xe4f4
movzx eax, byte [ebx + esi*8 + 0x2e]
push eax
push esi
push ref_00022a90  ; push 0x22a90
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e4f4:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e513  ; je 0xe513
movzx eax, byte [ebx + esi*8 + 0x2f]
push eax
push esi
push ref_00022ac0  ; push 0x22ac0
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e513:
inc esi
jmp short loc_0000e4aa  ; jmp 0xe4aa

loc_0000e516:
xor esi, esi

loc_0000e518:
call fcn_0001c2f8  ; call 0x1c2f8
movzx eax, al
cmp esi, eax
jae short loc_0000e56b  ; jae 0xe56b
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e546  ; je 0xe546
movzx eax, byte [ebx + esi*4 + 0x9d]
push eax
push esi
push ref_00022af0  ; push 0x22af0
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e546:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e568  ; je 0xe568
movzx eax, byte [ebx + esi*4 + 0x9e]
push eax
push esi
push ref_00022b15  ; push 0x22b15
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e568:
inc esi
jmp short loc_0000e518  ; jmp 0xe518

loc_0000e56b:
xor esi, esi

loc_0000e56d:
call fcn_0001c21c  ; call 0x1c21c
movzx eax, al
cmp esi, eax
jae short loc_0000e5ab  ; jae 0xe5ab
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e5a8  ; je 0xe5a8
mov ax, word [ebx + esi*8 + 0x30]
sub esp, 0xc
mov edx, eax
and edx, 0xf
shr ax, 4
push edx
movzx eax, ax
push eax
push esi
push ref_00022b3c  ; push 0x22b3c
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_0000e5a8:
inc esi
jmp short loc_0000e56d  ; jmp 0xe56d

loc_0000e5ab:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0000e5b2:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e5d4  ; je 0xe5d4
push eax
push eax
push ref_00022b5a  ; push 0x22b5a
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e5d4:
xor ebx, ebx

loc_0000e5d6:
call fcn_0001c2f8  ; call 0x1c2f8
movzx eax, al
cmp ebx, eax
jae near loc_0000e718  ; jae 0xe718
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e604  ; je 0xe604
movzx eax, byte [esi + ebx*8]
push eax
push ebx
push ref_00022b99  ; push 0x22b99
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e604:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e623  ; je 0xe623
movzx eax, byte [esi + ebx*8 + 1]
push eax
push ebx
push ref_00022bca  ; push 0x22bca
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e623:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e642  ; je 0xe642
movzx eax, byte [esi + ebx*8 + 2]
push eax
push ebx
push ref_00022bfe  ; push 0x22bfe
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e642:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e663  ; je 0xe663
mov al, byte [esi + ebx*8 + 3]
and eax, 1
push eax
push ebx
push ref_00022c2b  ; push 0x22c2b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e663:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e686  ; je 0xe686
mov al, byte [esi + ebx*8 + 3]
shr al, 1
movzx eax, al
push eax
push ebx
push ref_00022c55  ; push 0x22c55
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e686:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e6a7  ; je 0xe6a7
mov al, byte [esi + ebx*8 + 4]
and eax, 1
push eax
push ebx
push ref_00022c87  ; push 0x22c87
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e6a7:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e6ca  ; je 0xe6ca
mov al, byte [esi + ebx*8 + 4]
shr al, 1
and eax, 1
push eax
push ebx
push ref_00022cbe  ; push 0x22cbe
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e6ca:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e6ee  ; je 0xe6ee
mov al, byte [esi + ebx*8 + 4]
shr al, 2
and eax, 1
push eax
push ebx
push ref_00022cf8  ; push 0x22cf8
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e6ee:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e712  ; je 0xe712
mov al, byte [esi + ebx*8 + 4]
shr al, 3
and eax, 1
push eax
push ebx
push ref_00022d2b  ; push 0x22d2b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e712:
inc ebx
jmp near loc_0000e5d6  ; jmp 0xe5d6

loc_0000e718:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0000e71f:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e745  ; je 0xe745
push eax
push eax
push ref_00022d57  ; push 0x22d57
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e745:
lea edi, [esi + 0x1e]
xor ebx, ebx

loc_0000e74a:
call fcn_0001c1bf  ; call 0x1c1bf
movzx eax, al
cmp ebx, eax
jae near loc_0000eba0  ; jae 0xeba0
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e77d  ; je 0xe77d
imul eax, ebx, 0x2c
mov al, byte [esi + eax]
and eax, 1
push eax
push ebx
push ref_00022d8e  ; push 0x22d8e
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e77d:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e7a2  ; je 0xe7a2
imul eax, ebx, 0x2c
mov al, byte [esi + eax]
shr al, 1
and eax, 1
push eax
push ebx
push ref_00022da9  ; push 0x22da9
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e7a2:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e7c8  ; je 0xe7c8
imul eax, ebx, 0x2c
mov al, byte [esi + eax]
shr al, 2
and eax, 1
push eax
push ebx
push ref_00022dc1  ; push 0x22dc1
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e7c8:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e7ee  ; je 0xe7ee
imul eax, ebx, 0x2c
mov al, byte [esi + eax]
shr al, 3
and eax, 1
push eax
push ebx
push ref_00022de4  ; push 0x22de4
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e7ee:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e814  ; je 0xe814
imul eax, ebx, 0x2c
mov al, byte [esi + eax]
shr al, 4
and eax, 1
push eax
push ebx
push ref_00022dff  ; push 0x22dff
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e814:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e83a  ; je 0xe83a
imul eax, ebx, 0x2c
mov al, byte [esi + eax]
shr al, 5
and eax, 1
push eax
push ebx
push ref_00022e18  ; push 0x22e18
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e83a:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e860  ; je 0xe860
imul eax, ebx, 0x2c
mov al, byte [esi + eax + 4]
shr al, 1
and eax, 1
push eax
push ebx
push ref_00022e33  ; push 0x22e33
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e860:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e887  ; je 0xe887
imul eax, ebx, 0x2c
mov al, byte [esi + eax + 4]
shr al, 2
and eax, 1
push eax
push ebx
push ref_00022e5f  ; push 0x22e5f
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e887:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e8ae  ; je 0xe8ae
imul eax, ebx, 0x2c
mov al, byte [esi + eax + 4]
shr al, 3
and eax, 1
push eax
push ebx
push ref_00022e83  ; push 0x22e83
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e8ae:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e8d5  ; je 0xe8d5
imul eax, ebx, 0x2c
mov al, byte [esi + eax + 4]
shr al, 4
and eax, 1
push eax
push ebx
push ref_00022ea9  ; push 0x22ea9
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e8d5:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e8fc  ; je 0xe8fc
imul eax, ebx, 0x2c
mov al, byte [esi + eax + 4]
shr al, 5
and eax, 1
push eax
push ebx
push ref_00022ed3  ; push 0x22ed3
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e8fc:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e923  ; je 0xe923
imul eax, ebx, 0x2c
mov al, byte [esi + eax + 4]
shr al, 6
and eax, 1
push eax
push ebx
push ref_00022ef3  ; push 0x22ef3
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e923:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e94a  ; je 0xe94a
imul eax, ebx, 0x2c
mov al, byte [esi + eax + 4]
shr al, 7
movzx eax, al
push eax
push ebx
push ref_00022f1e  ; push 0x22f1e
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e94a:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e96e  ; je 0xe96e
imul eax, ebx, 0x2c
mov al, byte [esi + eax + 5]
and eax, 1
push eax
push ebx
push ref_00022f4c  ; push 0x22f4c
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e96e:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e992  ; je 0xe992
imul eax, ebx, 0x2c
mov al, byte [esi + eax + 4]
and eax, 1
push eax
push ebx
push ref_00022f7d  ; push 0x22f7d
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e992:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e9b8  ; je 0xe9b8
imul eax, ebx, 0x2c
mov al, byte [esi + eax]
shr al, 6
and eax, 1
push eax
push ebx
push ref_00022fa7  ; push 0x22fa7
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e9b8:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e9d6  ; je 0xe9d6
movzx eax, byte [edi - 0x16]
push eax
push ebx
push ref_00022fcf  ; push 0x22fcf
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e9d6:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000e9f4  ; je 0xe9f4
movzx eax, byte [edi - 0x15]
push eax
push ebx
push ref_00022fec  ; push 0x22fec
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000e9f4:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ea12  ; je 0xea12
movzx eax, byte [edi - 0x14]
push eax
push ebx
push ref_0002300e  ; push 0x2300e
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ea12:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ea30  ; je 0xea30
movzx eax, byte [edi - 0x13]
push eax
push ebx
push ref_00023034  ; push 0x23034
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ea30:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ea4e  ; je 0xea4e
movzx eax, byte [edi - 0xe]
push eax
push ebx
push ref_00023059  ; push 0x23059
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ea4e:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ea6c  ; je 0xea6c
movzx eax, byte [edi - 0xd]
push eax
push ebx
push ref_00023071  ; push 0x23071
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ea6c:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ea8a  ; je 0xea8a
movzx eax, byte [edi - 0xc]
push eax
push ebx
push ref_00023090  ; push 0x23090
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ea8a:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000eaa8  ; je 0xeaa8
movzx eax, byte [edi - 0xb]
push eax
push ebx
push ref_000230ad  ; push 0x230ad
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000eaa8:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000eac6  ; je 0xeac6
movzx eax, word [edi - 0xa]
push eax
push ebx
push ref_000230ce  ; push 0x230ce
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000eac6:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000eae4  ; je 0xeae4
movzx eax, word [edi - 8]
push eax
push ebx
push ref_000230f4  ; push 0x230f4
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000eae4:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000eb02  ; je 0xeb02
movzx eax, byte [edi - 6]
push eax
push ebx
push ref_0002311c  ; push 0x2311c
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000eb02:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000eb20  ; je 0xeb20
movzx eax, byte [edi - 5]
push eax
push ebx
push ref_00023148  ; push 0x23148
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000eb20:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000eb3e  ; je 0xeb3e
movzx eax, word [edi - 4]
push eax
push ebx
push ref_0002317a  ; push 0x2317a
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000eb3e:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000eb5c  ; je 0xeb5c
movzx eax, byte [edi - 2]
push eax
push ebx
push ref_000231a7  ; push 0x231a7
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000eb5c:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000eb7a  ; je 0xeb7a
movzx eax, byte [edi - 1]
push eax
push ebx
push ref_000231d6  ; push 0x231d6
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000eb7a:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000eb97  ; je 0xeb97
movzx eax, word [edi]
push eax
push ebx
push ref_0002320b  ; push 0x2320b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000eb97:
inc ebx
add edi, 0x2c
jmp near loc_0000e74a  ; jmp 0xe74a

loc_0000eba0:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ebc1  ; je 0xebc1
push edi
movzx eax, byte [esi + 0x160]
push eax
push ref_0002323b  ; push 0x2323b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ebc1:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ebe2  ; je 0xebe2
push ebx
movzx eax, byte [esi + 0x161]
push eax
push ref_00023251  ; push 0x23251
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ebe2:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ec03  ; je 0xec03
push ecx
movzx eax, byte [esi + 0x162]
push eax
push ref_00023267  ; push 0x23267
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ec03:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ec24  ; je 0xec24
push edx
movzx eax, byte [esi + 0x163]
push eax
push ref_00023281  ; push 0x23281
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ec24:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ec47  ; je 0xec47
push eax
mov al, byte [esi + 0x164]
and eax, 1
push eax
push ref_000232a0  ; push 0x232a0
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ec47:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000ec4f:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ec75  ; je 0xec75
push edi
push edi
push ref_000232bf  ; push 0x232bf
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ec75:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ec92  ; je 0xec92
push ebx
movzx eax, byte [esi]
push eax
push ref_00023454  ; push 0x23454
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ec92:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ecae  ; je 0xecae
push ecx
push dword [esi + 1]
push ref_000232f6  ; push 0x232f6
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ecae:
lea edi, [esi + 0xd]
xor ebx, ebx

loc_0000ecb3:
call fcn_0001c1e1  ; call 0x1c1e1
movzx eax, al
cmp ebx, eax
jae near loc_0000f052  ; jae 0xf052
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ece7  ; je 0xece7
imul eax, ebx, 0x12
mov al, byte [esi + eax + 5]
and eax, 1
push eax
push ebx
push ref_000228d8  ; push 0x228d8
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ece7:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ed0d  ; je 0xed0d
imul eax, ebx, 0x12
mov al, byte [esi + eax + 5]
shr al, 1
and eax, 1
push eax
push ebx
push ref_00023305  ; push 0x23305
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ed0d:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ed34  ; je 0xed34
imul eax, ebx, 0x12
mov al, byte [esi + eax + 5]
shr al, 2
and eax, 1
push eax
push ebx
push ref_00023324  ; push 0x23324
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ed34:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ed5b  ; je 0xed5b
imul eax, ebx, 0x12
mov al, byte [esi + eax + 5]
shr al, 3
and eax, 1
push eax
push ebx
push ref_00023347  ; push 0x23347
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ed5b:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ed82  ; je 0xed82
imul eax, ebx, 0x12
mov al, byte [esi + eax + 5]
shr al, 4
and eax, 1
push eax
push ebx
push ref_00023367  ; push 0x23367
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ed82:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000eda9  ; je 0xeda9
imul eax, ebx, 0x12
mov al, byte [esi + eax + 5]
shr al, 5
and eax, 1
push eax
push ebx
push ref_00023385  ; push 0x23385
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000eda9:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000edd0  ; je 0xedd0
imul eax, ebx, 0x12
mov al, byte [esi + eax + 5]
shr al, 6
and eax, 1
push eax
push ebx
push ref_000233ac  ; push 0x233ac
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000edd0:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000edf7  ; je 0xedf7
imul eax, ebx, 0x12
mov al, byte [esi + eax + 5]
shr al, 7
movzx eax, al
push eax
push ebx
push ref_000233ca  ; push 0x233ca
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000edf7:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ee1b  ; je 0xee1b
imul eax, ebx, 0x12
mov al, byte [esi + eax + 6]
and eax, 0xf
push eax
push ebx
push ref_000233f2  ; push 0x233f2
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ee1b:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ee4f  ; je 0xee4f
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
push ref_0002340f  ; push 0x2340f
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ee4f:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ee6d  ; je 0xee6d
movzx eax, byte [edi - 3]
push eax
push ebx
push ref_0002342e  ; push 0x2342e
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ee6d:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ee8b  ; je 0xee8b
movzx eax, byte [edi - 4]
push eax
push ebx
push ref_00023461  ; push 0x23461
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ee8b:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000eea9  ; je 0xeea9
movzx eax, byte [edi - 1]
push eax
push ebx
push ref_00023492  ; push 0x23492
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000eea9:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000eec7  ; je 0xeec7
movzx eax, byte [edi - 2]
push eax
push ebx
push ref_000234c5  ; push 0x234c5
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000eec7:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000eee5  ; je 0xeee5
movzx eax, byte [edi + 1]
push eax
push ebx
push ref_000234f6  ; push 0x234f6
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000eee5:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ef02  ; je 0xef02
movzx eax, byte [edi]
push eax
push ebx
push ref_00023529  ; push 0x23529
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ef02:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ef24  ; je 0xef24
imul eax, ebx, 0x12
movzx eax, byte [esi + eax + 0xf]
push eax
push ebx
push ref_0002355a  ; push 0x2355a
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ef24:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ef46  ; je 0xef46
imul eax, ebx, 0x12
movzx eax, byte [esi + eax + 0x10]
push eax
push ebx
push ref_00023590  ; push 0x23590
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ef46:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ef68  ; je 0xef68
imul eax, ebx, 0x12
movzx eax, byte [esi + eax + 0x11]
push eax
push ebx
push ref_000235c7  ; push 0x235c7
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ef68:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ef8a  ; je 0xef8a
imul eax, ebx, 0x12
movzx eax, byte [esi + eax + 0x12]
push eax
push ebx
push ref_000235f8  ; push 0x235f8
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ef8a:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000efae  ; je 0xefae
imul eax, ebx, 0x12
mov al, byte [esi + eax + 0x13]
and eax, 1
push eax
push ebx
push ref_0002362a  ; push 0x2362a
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000efae:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000efd4  ; je 0xefd4
imul eax, ebx, 0x12
mov al, byte [esi + eax + 0x13]
shr al, 1
and eax, 1
push eax
push ebx
push ref_00023666  ; push 0x23666
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000efd4:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000effb  ; je 0xeffb
imul eax, ebx, 0x12
mov al, byte [esi + eax + 0x13]
shr al, 2
and eax, 1
push eax
push ebx
push ref_000236a3  ; push 0x236a3
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000effb:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f022  ; je 0xf022
imul eax, ebx, 0x12
mov al, byte [esi + eax + 0x13]
shr al, 3
and eax, 1
push eax
push ebx
push ref_000236da  ; push 0x236da
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f022:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f049  ; je 0xf049
imul eax, ebx, 0x12
mov al, byte [esi + eax + 7]
shr al, 6
and eax, 1
push eax
push ebx
push ref_00023712  ; push 0x23712
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f049:
inc ebx
add edi, 0x12
jmp near loc_0000ecb3  ; jmp 0xecb3

loc_0000f052:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f072  ; je 0xf072
push edx
mov al, byte [esi + 0x71]
and eax, 1
push eax
push ref_00023749  ; push 0x23749
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f072:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f094  ; je 0xf094
push eax
mov al, byte [esi + 0x71]
shr al, 1
and eax, 1
push eax
push ref_0002375f  ; push 0x2375f
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f094:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f0b7  ; je 0xf0b7
push eax
mov al, byte [esi + 0x71]
shr al, 2
and eax, 1
push eax
push ref_0002376b  ; push 0x2376b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f0b7:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f0da  ; je 0xf0da
push eax
mov al, byte [esi + 0x71]
shr al, 3
and eax, 1
push eax
push ref_00023777  ; push 0x23777
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f0da:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f0fd  ; je 0xf0fd
push eax
mov al, byte [esi + 0x71]
shr al, 4
and eax, 1
push eax
push ref_00023784  ; push 0x23784
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f0fd:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f120  ; je 0xf120
push eax
mov al, byte [esi + 0x71]
shr al, 5
and eax, 1
push eax
push ref_00023790  ; push 0x23790
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f120:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f143  ; je 0xf143
push eax
mov al, byte [esi + 0x71]
shr al, 6
and eax, 1
push eax
push ref_0002379b  ; push 0x2379b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f143:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f171  ; je 0xf171
push edi
mov al, byte [esi + 0x71]
shr al, 7
movzx edx, al
movzx eax, byte [esi + 0x72]
and eax, 1
add eax, eax
or eax, edx
push eax
push ref_000237ae  ; push 0x237ae
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f171:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f193  ; je 0xf193
push ebx
mov al, byte [esi + 0x72]
shr al, 1
and eax, 1
push eax
push ref_000237c0  ; push 0x237c0
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f193:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f1b6  ; je 0xf1b6
push ecx
mov al, byte [esi + 0x72]
shr al, 2
and eax, 1
push eax
push ref_000237d0  ; push 0x237d0
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f1b6:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f1d9  ; je 0xf1d9
push edx
mov al, byte [esi + 0x72]
shr al, 3
and eax, 1
push eax
push ref_000237e0  ; push 0x237e0
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f1d9:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f1fc  ; je 0xf1fc
push eax
mov al, byte [esi + 0x72]
shr al, 4
and eax, 1
push eax
push ref_000237ef  ; push 0x237ef
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f1fc:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f218  ; je 0xf218
push eax
push dword [esi + 0x75]
push ref_00023802  ; push 0x23802
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f218:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f236  ; je 0xf236
push eax
movzx eax, byte [esi + 0x7d]
push eax
push ref_00023815  ; push 0x23815
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f236:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f254  ; je 0xf254
push eax
movzx eax, byte [esi + 0x79]
push eax
push ref_0002382b  ; push 0x2382b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f254:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f272  ; je 0xf272
push eax
movzx eax, byte [esi + 0x7a]
push eax
push ref_0002383a  ; push 0x2383a
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f272:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f290  ; je 0xf290
push eax
movzx eax, byte [esi + 0x7b]
push eax
push ref_0002384b  ; push 0x2384b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f290:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f2ae  ; je 0xf2ae
push edi
movzx eax, byte [esi + 0x7c]
push eax
push ref_0002385d  ; push 0x2385d
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f2ae:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f2cc  ; je 0xf2cc
push ebx
movzx eax, byte [esi + 0x7e]
push eax
push ref_00023870  ; push 0x23870
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f2cc:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f2ea  ; je 0xf2ea
push ecx
movzx eax, byte [esi + 0x7f]
push eax
push ref_0002388b  ; push 0x2388b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f2ea:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f30b  ; je 0xf30b
push edx
movzx eax, byte [esi + 0x80]
push eax
push ref_000238ac  ; push 0x238ac
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f30b:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f32c  ; je 0xf32c
push eax
movzx eax, byte [esi + 0x81]
push eax
push ref_000238d5  ; push 0x238d5
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f32c:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0000f334:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f356  ; je 0xf356
push eax
push eax
push ref_000238fa  ; push 0x238fa
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f356:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f373  ; je 0xf373
push eax
movzx eax, byte [ebx]
push eax
push ref_00023933  ; push 0x23933
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f373:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f391  ; je 0xf391
push eax
movzx eax, byte [ebx + 1]
push eax
push ref_00023942  ; push 0x23942
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f391:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f3af  ; je 0xf3af
push eax
movzx eax, byte [ebx + 2]
push eax
push ref_00023952  ; push 0x23952
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f3af:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f3cd  ; je 0xf3cd
push eax
movzx eax, byte [ebx + 3]
push eax
push ref_00022ff9  ; push 0x22ff9
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f3cd:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f3eb  ; je 0xf3eb
push ecx
movzx eax, byte [ebx + 4]
push eax
push ref_00023965  ; push 0x23965
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f3eb:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f409  ; je 0xf409
push edx
movzx eax, byte [ebx + 5]
push eax
push ref_00023974  ; push 0x23974
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f409:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f427  ; je 0xf427
push eax
movzx eax, byte [ebx + 6]
push eax
push ref_0002398a  ; push 0x2398a
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f427:
mov ebx, dword [ebp - 4]
leave
ret

fcn_0000f42c:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f44e  ; je 0xf44e
push eax
push eax
push ref_000239a1  ; push 0x239a1
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f44e:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f46b  ; je 0xf46b
push eax
movzx eax, byte [ebx]
push eax
push ref_000239d8  ; push 0x239d8
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f46b:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f489  ; je 0xf489
push eax
movzx eax, byte [ebx + 8]
push eax
push ref_000239e4  ; push 0x239e4
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f489:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f4a7  ; je 0xf4a7
push eax
movzx eax, byte [ebx + 1]
push eax
push ref_000239f2  ; push 0x239f2
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f4a7:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f4c5  ; je 0xf4c5
push ecx
movzx eax, byte [ebx + 2]
push eax
push ref_00023a01  ; push 0x23a01
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f4c5:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f4e3  ; je 0xf4e3
push edx
movzx eax, byte [ebx + 3]
push eax
push ref_00023a13  ; push 0x23a13
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f4e3:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f4ff  ; je 0xf4ff
push eax
push dword [ebx + 4]
push ref_00023a27  ; push 0x23a27
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f4ff:
mov ebx, dword [ebp - 4]
leave
ret

fcn_0000f504:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f526  ; je 0xf526
push eax
push eax
push ref_00023a31  ; push 0x23a31
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f526:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f545  ; je 0xf545
push eax
mov al, byte [ebx]
and eax, 1
push eax
push ref_00023a6d  ; push 0x23a6d
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f545:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f566  ; je 0xf566
push eax
mov al, byte [ebx]
shr al, 1
and eax, 1
push eax
push ref_00023a7d  ; push 0x23a7d
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f566:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f588  ; je 0xf588
push eax
mov al, byte [ebx]
shr al, 2
and eax, 1
push eax
push ref_00023a91  ; push 0x23a91
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f588:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f5aa  ; je 0xf5aa
push ecx
mov al, byte [ebx]
shr al, 3
and eax, 1
push eax
push ref_00023aa4  ; push 0x23aa4
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f5aa:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f5cc  ; je 0xf5cc
push edx
mov al, byte [ebx]
shr al, 4
and eax, 1
push eax
push ref_00023ab2  ; push 0x23ab2
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f5cc:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f5ee  ; je 0xf5ee
push eax
mov al, byte [ebx]
shr al, 5
and eax, 1
push eax
push ref_00023ac1  ; push 0x23ac1
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f5ee:
mov ebx, dword [ebp - 4]
leave
ret

fcn_0000f5f3:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f615  ; je 0xf615
push eax
push eax
push ref_00023ace  ; push 0x23ace
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f615:
xor ebx, ebx

loc_0000f617:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f637  ; je 0xf637
mov al, byte [esi + ebx*8]
and eax, 1
push eax
push ebx
push ref_00023b11  ; push 0x23b11
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f637:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f659  ; je 0xf659
mov al, byte [esi + ebx*8]
shr al, 1
and eax, 1
push eax
push ebx
push ref_00023b31  ; push 0x23b31
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f659:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f678  ; je 0xf678
movzx eax, word [esi + ebx*8 + 4]
push eax
push ebx
push ref_00023b50  ; push 0x23b50
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f678:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f697  ; je 0xf697
movzx eax, word [esi + ebx*8 + 6]
push eax
push ebx
push ref_00023b6e  ; push 0x23b6e
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f697:
inc ebx
cmp ebx, 5
jne near loc_0000f617  ; jne 0xf617
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0000f6a8:
push ebp
mov ebp, esp
push esi
push ebx
mov ebx, dword [ebp + 8]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f6ca  ; je 0xf6ca
push eax
push eax
push ref_00023b8b  ; push 0x23b8b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f6ca:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f6e7  ; je 0xf6e7
push eax
movzx eax, byte [ebx]
push eax
push ref_00023454  ; push 0x23454
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f6e7:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f705  ; je 0xf705
push eax
movzx eax, word [ebx + 2]
push eax
push ref_00023bc3  ; push 0x23bc3
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f705:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f723  ; je 0xf723
push esi
movzx eax, byte [ebx + 7]
push eax
push ref_00023bd5  ; push 0x23bd5
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f723:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f73d  ; je 0xf73d
push ecx
push ecx
push ref_00023bf1  ; push 0x23bf1
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f73d:
xor esi, esi

loc_0000f73f:
movzx eax, byte [ebx + 7]
cmp esi, eax
jae short loc_0000f769  ; jae 0xf769
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f766  ; je 0xf766
push edx
movzx eax, byte [ebx + esi + 8]
push eax
push ref_00023c0b  ; push 0x23c0b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f766:
inc esi
jmp short loc_0000f73f  ; jmp 0xf73f

loc_0000f769:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f783  ; je 0xf783
push eax
push eax
push ref_00023c12  ; push 0x23c12
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f783:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0000f78a:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f7ac  ; je 0xf7ac
push eax
push eax
push ref_00023c16  ; push 0x23c16
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f7ac:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f7c9  ; je 0xf7c9
push eax
movzx eax, byte [ebx]
push eax
push ref_00023454  ; push 0x23454
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f7c9:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f7e7  ; je 0xf7e7
push eax
movzx eax, byte [ebx + 1]
push eax
push ref_00023c4f  ; push 0x23c4f
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f7e7:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f805  ; je 0xf805
push ecx
movzx eax, byte [ebx + 2]
push eax
push ref_00023c59  ; push 0x23c59
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f805:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f823  ; je 0xf823
push edx
movzx eax, byte [ebx + 2]
push eax
push ref_00023c59  ; push 0x23c59
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f823:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f841  ; je 0xf841
push eax
movzx eax, word [ebx + 4]
push eax
push ref_00023c6b  ; push 0x23c6b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f841:
mov ebx, dword [ebp - 4]
leave
ret

fcn_0000f846:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f868  ; je 0xf868
push eax
push eax
push ref_00023c80  ; push 0x23c80
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f868:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f887  ; je 0xf887
push eax
mov al, byte [ebx]
and eax, 1
push eax
push ref_00023cb5  ; push 0x23cb5
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f887:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f8a8  ; je 0xf8a8
push eax
mov al, byte [ebx]
shr al, 1
and eax, 1
push eax
push ref_00023cdb  ; push 0x23cdb
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f8a8:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f8ca  ; je 0xf8ca
push ecx
mov al, byte [ebx]
shr al, 2
and eax, 1
push eax
push ref_00023d05  ; push 0x23d05
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f8ca:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f8ec  ; je 0xf8ec
push edx
mov al, byte [ebx]
shr al, 3
and eax, 1
push eax
push ref_00023d2f  ; push 0x23d2f
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f8ec:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f90e  ; je 0xf90e
push eax
mov al, byte [ebx]
shr al, 4
and eax, 1
push eax
push ref_00023d59  ; push 0x23d59
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f90e:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f92e  ; je 0xf92e
push eax
mov al, byte [ebx + 4]
and eax, 1
push eax
push ref_00023d81  ; push 0x23d81
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f92e:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f950  ; je 0xf950
push eax
mov al, byte [ebx + 4]
shr al, 1
and eax, 1
push eax
push ref_00023d9d  ; push 0x23d9d
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f950:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f973  ; je 0xf973
push eax
mov al, byte [ebx + 4]
shr al, 2
and eax, 1
push eax
push ref_00023dc0  ; push 0x23dc0
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f973:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f996  ; je 0xf996
push eax
mov al, byte [ebx + 4]
shr al, 3
and eax, 1
push eax
push ref_00023de4  ; push 0x23de4
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f996:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f9b9  ; je 0xf9b9
push eax
mov al, byte [ebx + 4]
shr al, 4
and eax, 1
push eax
push ref_00023e08  ; push 0x23e08
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f9b9:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f9dc  ; je 0xf9dc
push ecx
mov al, byte [ebx + 4]
shr al, 5
and eax, 1
push eax
push ref_00023e26  ; push 0x23e26
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f9dc:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000f9f8  ; je 0xf9f8
push edx
push dword [ebx + 8]
push ref_00023e4a  ; push 0x23e4a
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000f9f8:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fa14  ; je 0xfa14
push eax
push dword [ebx + 0xc]
push ref_00023e5d  ; push 0x23e5d
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fa14:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fa30  ; je 0xfa30
push eax
push dword [ebx + 0x10]
push ref_00023e75  ; push 0x23e75
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fa30:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fa4c  ; je 0xfa4c
push eax
push dword [ebx + 0x14]
push ref_00023e8d  ; push 0x23e8d
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fa4c:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fa68  ; je 0xfa68
push eax
push dword [ebx + 0x18]
push ref_00023ea6  ; push 0x23ea6
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fa68:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fa88  ; je 0xfa88
push eax
mov al, byte [ebx + 0x1c]
and eax, 1
push eax
push ref_00023ebd  ; push 0x23ebd
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fa88:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000faaa  ; je 0xfaaa
push eax
mov al, byte [ebx + 0x1c]
shr al, 1
and eax, 1
push eax
push ref_00023ecf  ; push 0x23ecf
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000faaa:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000facd  ; je 0xfacd
push ecx
mov al, byte [ebx + 0x1c]
shr al, 2
and eax, 1
push eax
push ref_00023ee3  ; push 0x23ee3
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000facd:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000faf0  ; je 0xfaf0
push edx
mov al, byte [ebx + 0x1c]
shr al, 3
and eax, 1
push eax
push ref_00023ef5  ; push 0x23ef5
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000faf0:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fb0e  ; je 0xfb0e
push eax
movzx eax, byte [ebx + 0x20]
push eax
push ref_00023f0c  ; push 0x23f0c
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fb0e:
mov ebx, dword [ebp - 4]
leave
ret

fcn_0000fb13:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fb35  ; je 0xfb35
push eax
push eax
push ref_00023f1f  ; push 0x23f1f
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fb35:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fb54  ; je 0xfb54
push eax
mov al, byte [ebx]
and eax, 1
push eax
push ref_00023f55  ; push 0x23f55
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fb54:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fb75  ; je 0xfb75
push eax
mov al, byte [ebx]
shr al, 1
and eax, 1
push eax
push ref_00023f63  ; push 0x23f63
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fb75:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fb97  ; je 0xfb97
push eax
mov al, byte [ebx]
shr al, 2
and eax, 1
push eax
push ref_00023f74  ; push 0x23f74
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fb97:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fbb9  ; je 0xfbb9
push ecx
mov al, byte [ebx]
shr al, 3
and eax, 1
push eax
push ref_0002385d  ; push 0x2385d
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fbb9:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fbdb  ; je 0xfbdb
push edx
mov al, byte [ebx]
shr al, 4
and eax, 1
push eax
push ref_00023f81  ; push 0x23f81
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fbdb:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fbfd  ; je 0xfbfd
push eax
mov al, byte [ebx]
shr al, 5
and eax, 1
push eax
push ref_00023f97  ; push 0x23f97
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fbfd:
mov ebx, dword [ebp - 4]
leave
ret

fcn_0000fc02:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fc24  ; je 0xfc24
push eax
push eax
push ref_00023fac  ; push 0x23fac
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fc24:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fc41  ; je 0xfc41
push ecx
movzx eax, byte [ebx]
push eax
push ref_00023fe7  ; push 0x23fe7
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fc41:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fc5d  ; je 0xfc5d
push edx
push dword [ebx + 4]
push ref_00023ff8  ; push 0x23ff8
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fc5d:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fc79  ; je 0xfc79
push eax
push dword [ebx + 8]
push ref_00024007  ; push 0x24007
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fc79:
mov ebx, dword [ebp - 4]
leave
ret

fcn_0000fc7e:
push ebp
mov ebp, esp
push esi
push ebx
mov ebx, dword [ebp + 8]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fca0  ; je 0xfca0
push ecx
push ecx
push ref_0002401d  ; push 0x2401d
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fca0:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fcbf  ; je 0xfcbf
push edx
mov al, byte [ebx]
and eax, 1
push eax
push ref_00024057  ; push 0x24057
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fcbf:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fce0  ; je 0xfce0
push eax
mov al, byte [ebx]
shr al, 1
and eax, 1
push eax
push ref_00024078  ; push 0x24078
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fce0:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fd02  ; je 0xfd02
push eax
mov al, byte [ebx]
shr al, 2
and eax, 1
push eax
push ref_00024098  ; push 0x24098
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fd02:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fd24  ; je 0xfd24
push eax
mov al, byte [ebx]
shr al, 3
and eax, 1
push eax
push ref_000240bb  ; push 0x240bb
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fd24:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fd4e  ; je 0xfd4e
push eax
movzx eax, byte [ebx + 5]
movzx edx, byte [ebx + 4]
and eax, 1
shl eax, 8
or eax, edx
push eax
push ref_000240dd  ; push 0x240dd
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fd4e:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fd7c  ; je 0xfd7c
push eax
mov al, byte [ebx + 5]
shr al, 1
movzx edx, al
movzx eax, byte [ebx + 6]
and eax, 3
shl eax, 7
or eax, edx
push eax
push ref_00024117  ; push 0x24117
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fd7c:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fdab  ; je 0xfdab
push eax
mov al, byte [ebx + 6]
shr al, 2
movzx edx, al
movzx eax, byte [ebx + 7]
and eax, 7
shl eax, 6
or eax, edx
push eax
push ref_00024151  ; push 0x24151
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fdab:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fdce  ; je 0xfdce
push esi
mov al, byte [ebx + 7]
shr al, 3
and eax, 1
push eax
push ref_0002418b  ; push 0x2418b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fdce:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fdf1  ; je 0xfdf1
push ecx
mov al, byte [ebx + 7]
shr al, 4
and eax, 1
push eax
push ref_000241b4  ; push 0x241b4
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fdf1:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fe14  ; je 0xfe14
push edx
mov al, byte [ebx + 7]
shr al, 5
and eax, 1
push eax
push ref_000241e4  ; push 0x241e4
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fe14:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fe37  ; je 0xfe37
push eax
mov al, byte [ebx + 7]
shr al, 6
and eax, 1
push eax
push ref_0002420b  ; push 0x2420b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fe37:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fe5a  ; je 0xfe5a
push eax
mov al, byte [ebx + 7]
shr al, 7
movzx eax, al
push eax
push ref_0002423c  ; push 0x2423c
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fe5a:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fe7a  ; je 0xfe7a
push eax
mov al, byte [ebx + 0xc]
and eax, 1
push eax
push ref_0002426f  ; push 0x2426f
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fe7a:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fe9a  ; je 0xfe9a
push eax
mov al, byte [ebx + 0xd]
and eax, 3
push eax
push ref_00024299  ; push 0x24299
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fe9a:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000febd  ; je 0xfebd
push eax
mov al, byte [ebx + 0xd]
shr al, 2
and eax, 3
push eax
push ref_000242bf  ; push 0x242bf
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000febd:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fee0  ; je 0xfee0
push eax
mov al, byte [ebx + 0xd]
shr al, 4
and eax, 3
push eax
push ref_000242e5  ; push 0x242e5
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fee0:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ff03  ; je 0xff03
push esi
mov al, byte [ebx + 0xd]
shr al, 6
movzx eax, al
push eax
push ref_0002430b  ; push 0x2430b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ff03:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ff25  ; je 0xff25
push ecx
mov al, byte [ebx + 0xc]
shr al, 1
and eax, 1
push eax
push ref_00024331  ; push 0x24331
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ff25:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ff45  ; je 0xff45
push edx
mov al, byte [ebx + 0x10]
and eax, 3
push eax
push ref_00024362  ; push 0x24362
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ff45:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ff68  ; je 0xff68
push eax
mov al, byte [ebx + 0x10]
shr al, 2
and eax, 3
push eax
push ref_00024386  ; push 0x24386
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ff68:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ff8b  ; je 0xff8b
push eax
mov al, byte [ebx + 0x10]
shr al, 4
and eax, 3
push eax
push ref_000243aa  ; push 0x243aa
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ff8b:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ffae  ; je 0xffae
push eax
mov al, byte [ebx + 0x10]
shr al, 6
movzx eax, al
push eax
push ref_000243ce  ; push 0x243ce
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ffae:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000ffce  ; je 0xffce
push eax
mov al, byte [ebx + 0x12]
and eax, 3
push eax
push ref_000243f4  ; push 0x243f4
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000ffce:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0000fff1  ; je 0xfff1
push eax
mov al, byte [ebx + 0x12]
shr al, 2
and eax, 1
push eax
push ref_0002441b  ; push 0x2441b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0000fff1:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010011  ; je 0x10011
push eax
mov al, byte [ebx + 0x11]
and eax, 3
push eax
push ref_00024446  ; push 0x24446
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010011:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010034  ; je 0x10034
push esi
mov al, byte [ebx + 0x11]
shr al, 2
and eax, 3
push eax
push ref_0002446a  ; push 0x2446a
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010034:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010057  ; je 0x10057
push ecx
mov al, byte [ebx + 0x11]
shr al, 4
and eax, 3
push eax
push ref_0002448e  ; push 0x2448e
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010057:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001007a  ; je 0x1007a
push edx
mov al, byte [ebx + 0x11]
shr al, 6
movzx eax, al
push eax
push ref_000244b2  ; push 0x244b2
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001007a:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001009d  ; je 0x1009d
push eax
mov al, byte [ebx + 0x12]
shr al, 3
and eax, 3
push eax
push ref_000244d8  ; push 0x244d8
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001009d:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000100c0  ; je 0x100c0
push eax
mov al, byte [ebx + 0x12]
shr al, 5
and eax, 1
push eax
push ref_000244ff  ; push 0x244ff
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000100c0:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000100e3  ; je 0x100e3
push eax
mov al, byte [ebx + 0x12]
shr al, 6
and eax, 1
push eax
push ref_0002452a  ; push 0x2452a
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000100e3:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010103  ; je 0x10103
push eax
mov al, byte [ebx + 0x14]
and eax, 1
push eax
push ref_00024559  ; push 0x24559
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010103:
mov esi, 2

loc_00010108:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010129  ; je 0x10129
push eax
mov al, byte [ebx + esi*4 + 0x18]
and eax, 1
push eax
push ref_00024577  ; push 0x24577
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010129:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001014c  ; je 0x1014c
push eax
mov al, byte [ebx + esi*4 + 0x18]
shr al, 1
and eax, 1
push eax
push ref_000245ac  ; push 0x245ac
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001014c:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010170  ; je 0x10170
push ecx
mov al, byte [ebx + esi*4 + 0x18]
shr al, 2
and eax, 1
push eax
push ref_000245e5  ; push 0x245e5
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010170:
inc esi
cmp esi, 4
jne short loc_00010108  ; jne 0x10108
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010194  ; je 0x10194
push edx
movzx eax, word [ebx + 0x28]
push eax
push ref_0002461a  ; push 0x2461a
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010194:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000101b2  ; je 0x101b2
push eax
movzx eax, byte [ebx + 0x2a]
push eax
push ref_0002462d  ; push 0x2462d
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000101b2:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_000101b9:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000101db  ; je 0x101db
push eax
push eax
push ref_0002464f  ; push 0x2464f
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000101db:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000101f8  ; je 0x101f8
push eax
movzx eax, word [ebx]
push eax
push ref_00024689  ; push 0x24689
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000101f8:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010216  ; je 0x10216
push ecx
movzx eax, word [ebx + 2]
push eax
push ref_000246a1  ; push 0x246a1
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010216:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010234  ; je 0x10234
push edx
movzx eax, byte [ebx + 4]
push eax
push ref_000246b3  ; push 0x246b3
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010234:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010252  ; je 0x10252
push eax
movzx eax, byte [ebx + 5]
push eax
push ref_000246be  ; push 0x246be
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010252:
mov ebx, dword [ebp - 4]
leave
ret

fcn_00010257:
push ebp
mov ebp, esp
push ebx
push ebx
mov ebx, dword [ebp + 8]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010279  ; je 0x10279
push ecx
push ecx
push ref_000246ca  ; push 0x246ca
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010279:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010296  ; je 0x10296
push edx
movzx eax, byte [ebx]
push eax
push ref_00023454  ; push 0x23454
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010296:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000102b4  ; je 0x102b4
push eax
movzx eax, byte [ebx + 1]
push eax
push ref_0002309d  ; push 0x2309d
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000102b4:
mov ebx, dword [ebp - 4]
leave
ret

fcn_000102b9:
push ebp
mov ebp, esp
push ebx
push edx
mov ebx, dword [ebp + 8]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000102db  ; je 0x102db
push eax
push eax
push ref_00024700  ; push 0x24700
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000102db:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000102fe  ; je 0x102fe
push eax
mov al, byte [ebx + 8]
shr al, 7
movzx eax, al
push eax
push ref_0002473c  ; push 0x2473c
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000102fe:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001031b  ; je 0x1031b
push eax
movzx eax, byte [ebx]
push eax
push ref_0002474f  ; push 0x2474f
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001031b:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010339  ; je 0x10339
push eax
movzx eax, byte [ebx + 1]
push eax
push ref_00024761  ; push 0x24761
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010339:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010357  ; je 0x10357
push eax
movzx eax, byte [ebx + 2]
push eax
push ref_00024774  ; push 0x24774
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010357:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010375  ; je 0x10375
push eax
movzx eax, byte [ebx + 3]
push eax
push ref_00024787  ; push 0x24787
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010375:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010393  ; je 0x10393
push ecx
movzx eax, byte [ebx + 4]
push eax
push ref_0002479a  ; push 0x2479a
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010393:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000103b1  ; je 0x103b1
push edx
movzx eax, byte [ebx + 5]
push eax
push ref_000247ad  ; push 0x247ad
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000103b1:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000103cf  ; je 0x103cf
push eax
movzx eax, byte [ebx + 6]
push eax
push ref_000247c1  ; push 0x247c1
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000103cf:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000103ed  ; je 0x103ed
push eax
movzx eax, byte [ebx + 7]
push eax
push ref_000247d5  ; push 0x247d5
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000103ed:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001040d  ; je 0x1040d
push eax
mov al, byte [ebx + 8]
and eax, 1
push eax
push ref_000247e8  ; push 0x247e8
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001040d:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001042f  ; je 0x1042f
push eax
mov al, byte [ebx + 8]
shr al, 1
and eax, 1
push eax
push ref_00024800  ; push 0x24800
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001042f:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010452  ; je 0x10452
push eax
mov al, byte [ebx + 8]
shr al, 2
and eax, 1
push eax
push ref_00024818  ; push 0x24818
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010452:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010475  ; je 0x10475
push eax
mov al, byte [ebx + 8]
shr al, 3
and eax, 1
push eax
push ref_0002482b  ; push 0x2482b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010475:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010498  ; je 0x10498
push ecx
mov al, byte [ebx + 8]
shr al, 4
and eax, 1
push eax
push ref_00024846  ; push 0x24846
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010498:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000104bb  ; je 0x104bb
push edx
mov al, byte [ebx + 8]
shr al, 5
and eax, 1
push eax
push ref_0002485f  ; push 0x2485f
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000104bb:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000104de  ; je 0x104de
push eax
mov al, byte [ebx + 8]
shr al, 6
and eax, 1
push eax
push ref_00024879  ; push 0x24879
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000104de:
mov ebx, dword [ebp - 4]
leave
ret

fcn_000104e3:
push ebp
mov ebp, esp
push ebx
push edx
mov ebx, dword [ebp + 8]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010505  ; je 0x10505
push eax
push eax
push ref_0002488c  ; push 0x2488c
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010505:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010524  ; je 0x10524
push eax
mov al, byte [ebx]
and eax, 1
push eax
push ref_00023454  ; push 0x23454
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010524:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010545  ; je 0x10545
push eax
mov al, byte [ebx]
shr al, 1
and eax, 1
push eax
push ref_000248c8  ; push 0x248c8
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010545:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010567  ; je 0x10567
push eax
mov al, byte [ebx]
shr al, 2
and eax, 1
push eax
push ref_000248df  ; push 0x248df
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010567:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010589  ; je 0x10589
push eax
mov al, byte [ebx]
shr al, 5
and eax, 1
push eax
push ref_000248fb  ; push 0x248fb
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010589:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000105ab  ; je 0x105ab
push eax
mov al, byte [ebx]
shr al, 3
and eax, 1
push eax
push ref_00024919  ; push 0x24919
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000105ab:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000105cd  ; je 0x105cd
push ecx
mov al, byte [ebx]
shr al, 4
and eax, 1
push eax
push ref_00024938  ; push 0x24938
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000105cd:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000105ef  ; je 0x105ef
push edx
mov al, byte [ebx]
shr al, 6
movzx eax, al
push eax
push ref_00024958  ; push 0x24958
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000105ef:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001060b  ; je 0x1060b
push eax
push dword [ebx + 4]
push ref_00024977  ; push 0x24977
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001060b:
mov ebx, dword [ebp - 4]
leave
ret

fcn_00010610:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010632  ; je 0x10632
push eax
push eax
push ref_00024991  ; push 0x24991
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010632:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001064f  ; je 0x1064f
push eax
movzx eax, byte [ebx]
push eax
push ref_000249ca  ; push 0x249ca
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001064f:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001066d  ; je 0x1066d
push eax
movzx eax, byte [ebx + 1]
push eax
push ref_000249de  ; push 0x249de
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001066d:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001068b  ; je 0x1068b
push eax
movzx eax, byte [ebx + 8]
push eax
push ref_000249ee  ; push 0x249ee
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001068b:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000106a9  ; je 0x106a9
push ecx
movzx eax, byte [ebx + 9]
push eax
push ref_00024a02  ; push 0x24a02
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000106a9:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000106c5  ; je 0x106c5
push edx
push dword [ebx + 0xa]
push ref_00024a16  ; push 0x24a16
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000106c5:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000106e1  ; je 0x106e1
push eax
push dword [ebx + 0xe]
push ref_00024a2c  ; push 0x24a2c
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000106e1:
mov ebx, dword [ebp - 4]
leave
ret

fcn_000106e6:
push ebp
mov ebp, esp
push esi
push ebx
mov ebx, dword [ebp + 8]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010708  ; je 0x10708
push eax
push eax
push ref_00024a3e  ; push 0x24a3e
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010708:
xor esi, esi

loc_0001070a:
mov eax, esi
cmp al, byte [ebx + 0x48]
jae short loc_00010757  ; jae 0x10757
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010732  ; je 0x10732
mov eax, esi
movzx eax, al
push dword [ebx + eax*8]
push eax
push ref_00024a7a  ; push 0x24a7a
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010732:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010754  ; je 0x10754
mov eax, esi
movzx eax, al
push dword [ebx + eax*8 + 4]
push eax
push ref_00024a92  ; push 0x24a92
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010754:
inc esi
jmp short loc_0001070a  ; jmp 0x1070a

loc_00010757:
xor esi, esi

loc_00010759:
mov eax, esi
cmp al, byte [ebx + 0x75]
jae short loc_000107ab  ; jae 0x107ab
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010784  ; je 0x10784
mov eax, esi
movzx eax, al
movzx edx, word [ebx + eax*4 + 0x49]
push edx
push eax
push ref_00024aac  ; push 0x24aac
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010784:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000107a8  ; je 0x107a8
mov eax, esi
movzx eax, al
movzx edx, word [ebx + eax*4 + 0x4b]
push edx
push eax
push ref_00024ac4  ; push 0x24ac4
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000107a8:
inc esi
jmp short loc_00010759  ; jmp 0x10759

loc_000107ab:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_000107b2:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000107d4  ; je 0x107d4
push eax
push eax
push ref_00024ade  ; push 0x24ade
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000107d4:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000107f1  ; je 0x107f1
push eax
movzx eax, byte [ebx]
push eax
push ref_00024b30  ; push 0x24b30
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000107f1:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001080f  ; je 0x1080f
push eax
movzx eax, byte [ebx + 1]
push eax
push ref_00023942  ; push 0x23942
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001080f:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001082b  ; je 0x1082b
push eax
push dword [ebx + 4]
push ref_00024b3f  ; push 0x24b3f
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001082b:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010849  ; je 0x10849
push eax
movzx eax, word [ebx + 8]
push eax
push ref_00024b4a  ; push 0x24b4a
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010849:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010867  ; je 0x10867
push ecx
movzx eax, word [ebx + 0xa]
push eax
push ref_00024b57  ; push 0x24b57
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010867:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010885  ; je 0x10885
push edx
movzx eax, byte [ebx + 0xc]
push eax
push ref_00024b66  ; push 0x24b66
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010885:
sub esp, 0xc
lea eax, [ebx + 0x10]
push eax
call fcn_00010610  ; call 0x10610
lea eax, [ebx + 0x36]
mov dword [esp], eax
call fcn_000101b9  ; call 0x101b9
lea eax, [ebx + 0x46]
mov dword [esp], eax
call fcn_0000e71f  ; call 0xe71f
lea eax, [ebx + 0x1da]
mov dword [esp], eax
call fcn_0000ec4f  ; call 0xec4f
lea eax, [ebx + 0x284]
mov dword [esp], eax
call fcn_0000e26b  ; call 0xe26b
lea eax, [ebx + 0x57c]
mov dword [esp], eax
call fcn_0000e5b2  ; call 0xe5b2
lea eax, [ebx + 0x35c]
mov dword [esp], eax
call fcn_0000f334  ; call 0xf334
lea eax, [ebx + 0x364]
mov dword [esp], eax
call fcn_0000f42c  ; call 0xf42c
lea eax, [ebx + 0x370]
mov dword [esp], eax
call fcn_0000f78a  ; call 0xf78a
lea eax, [ebx + 0x37e]
mov dword [esp], eax
call fcn_00010257  ; call 0x10257
lea eax, [ebx + 0x386]
mov dword [esp], eax
call fcn_0000f6a8  ; call 0xf6a8
lea eax, [ebx + 0x40e]
mov dword [esp], eax
call fcn_0000f504  ; call 0xf504
lea eax, [ebx + 0x554]
mov dword [esp], eax
call fcn_0000f5f3  ; call 0xf5f3
lea eax, [ebx + 0x412]
mov dword [esp], eax
call fcn_0000fc7e  ; call 0xfc7e
lea eax, [ebx + 0x442]
mov dword [esp], eax
call fcn_0000f846  ; call 0xf846
lea eax, [ebx + 0x46a]
mov dword [esp], eax
call fcn_0000fb13  ; call 0xfb13
lea eax, [ebx + 0x476]
mov dword [esp], eax
call fcn_0000fc02  ; call 0xfc02
lea eax, [ebx + 0x486]
mov dword [esp], eax
call fcn_000104e3  ; call 0x104e3
lea eax, [ebx + 0x496]
add ebx, 0x4de
mov dword [esp], eax
call fcn_000102b9  ; call 0x102b9
mov dword [esp], ebx
call fcn_000106e6  ; call 0x106e6
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_000109b2  ; je 0x109b2
push eax
push eax
push ref_00024b78  ; push 0x24b78
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000109b2:
mov ebx, dword [ebp - 4]
leave
ret

fcn_000109b7:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_000109e6  ; je 0x109e6
cmp dword [ebx + 4], 0
jne short loc_000109e6  ; jne 0x109e6
push eax
push ref_00024bca  ; push 0x24bca
push 0x2c0
push ref_00024be7  ; push 0x24be7
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000109e6:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00010a0e  ; je 0x10a0e
cmp word [ebx + 8], 0
jne short loc_00010a0e  ; jne 0x10a0e
push eax
push ref_00024c12  ; push 0x24c12
push 0x2c1
push ref_00024be7  ; push 0x24be7
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00010a0e:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00010a36  ; je 0x10a36
cmp word [ebx + 0xa], 0
jne short loc_00010a36  ; jne 0x10a36
push eax
push ref_00024c31  ; push 0x24c31
push 0x2c2
push ref_00024be7  ; push 0x24be7
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00010a36:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00010a5d  ; je 0x10a5d
cmp dword [ebx + 0x1a], 0
jne short loc_00010a5d  ; jne 0x10a5d
push eax
push ref_00024c52  ; push 0x24c52
push 0x2c3
push ref_00024be7  ; push 0x24be7
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00010a5d:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00010a87  ; je 0x10a87
cmp dword [ebx + 0x1e], 0xffff
ja short loc_00010a87  ; ja 0x10a87
push ecx
push ref_00024c87  ; push 0x24c87
push 0x2c4
push ref_00024be7  ; push 0x24be7
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00010a87:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00010aaf  ; je 0x10aaf
cmp word [ebx + 0x22], 0
jne short loc_00010aaf  ; jne 0x10aaf
push edx
push ref_00024cbe  ; push 0x24cbe
push 0x2c5
push ref_00024be7  ; push 0x24be7
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00010aaf:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00010ad7  ; je 0x10ad7
cmp word [ebx + 0x24], 0xf
ja short loc_00010ad7  ; ja 0x10ad7
push eax
push ref_00024cf2  ; push 0x24cf2
push 0x2c6
push ref_00024be7  ; push 0x24be7
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00010ad7:
mov ebx, dword [ebp - 4]
leave
ret

fcn_00010adc:
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
je short loc_00010b23  ; je 0x10b23
jb short loc_00010b1b  ; jb 0x10b1b
cmp cl, 2
je short loc_00010b2b  ; je 0x10b2b
cmp cl, 3
jne short loc_00010b5d  ; jne 0x10b5d
add ebx, 0x2040
jmp short loc_00010b31  ; jmp 0x10b31

loc_00010b1b:
add ebx, 0x2014
jmp short loc_00010b31  ; jmp 0x10b31

loc_00010b23:
add ebx, 0x2020
jmp short loc_00010b31  ; jmp 0x10b31

loc_00010b2b:
add ebx, 0x2030

loc_00010b31:
push edx
xor esi, esi
push eax
push 0xf0ffff01
push ebx
mov dword [ebp - 0xc], ecx
call fcn_00018b68  ; call 0x18b68
mov ecx, dword [ebp - 0xc]
add esp, 0x10
dec ecx
cmp cl, 1
ja short loc_00010b62  ; ja 0x10b62
sub esp, 0xc
push ebx
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
jmp short loc_00010b62  ; jmp 0x10b62

loc_00010b5d:
mov esi, 0x80000002

loc_00010b62:
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_00010b6b:
push ebp
mov ebp, esp
push ebx
push eax
mov eax, dword [ebp + 0xc]
mov ebx, dword [ebp + 8]
cmp al, 1
je short loc_00010b94  ; je 0x10b94
jb short loc_00010b8c  ; jb 0x10b8c
cmp al, 2
je short loc_00010b9c  ; je 0x10b9c
cmp al, 3
jne short loc_00010bb4  ; jne 0x10bb4
add ebx, 0x2046
jmp short loc_00010ba2  ; jmp 0x10ba2

loc_00010b8c:
add ebx, 0x201a
jmp short loc_00010ba2  ; jmp 0x10ba2

loc_00010b94:
add ebx, 0x2026
jmp short loc_00010ba2  ; jmp 0x10ba2

loc_00010b9c:
add ebx, 0x2036

loc_00010ba2:
sub esp, 0xc
push ebx
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test al, 2
jne short loc_00010ba2  ; jne 0x10ba2
jmp short loc_00010bbb  ; jmp 0x10bbb

loc_00010bb4:
mov eax, 0x80000002
jmp short loc_00010bbd  ; jmp 0x10bbd

loc_00010bbb:
xor eax, eax

loc_00010bbd:
mov ebx, dword [ebp - 4]
leave
ret

fcn_00010bc2:
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
push ref_0002917c  ; push 0x2917c
mov dword [ebp - 0x1c], 0
call fcn_0001975d  ; call 0x1975d
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00010c2b  ; je 0x10c2b
test ebx, ebx
jns short loc_00010c2b  ; jns 0x10c2b
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010c13  ; je 0x10c13
push edi
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010c13:
push esi
push ref_000206f4  ; push 0x206f4
push 0xa7
push ref_00024d25  ; push 0x24d25
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00010c2b:
push ebx
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xf0
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0xc
push 0x200000
push 0xff0fffff
mov esi, eax
and esi, 0xffffc000
lea edi, [esi + 0x50]
push edi
call fcn_00018b68  ; call 0x18b68
mov eax, dword [ebp - 0x20]
add esp, 0x10
cmp byte [eax + 0x24], 1
jne short loc_00010c7e  ; jne 0x10c7e
push ecx
push ecx
push 0xa0000
push edi
call fcn_00018b14  ; call 0x18b14
add esp, 0x10

loc_00010c7e:
sub esp, 0xc
xor ebx, ebx
push edi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10

loc_00010c8c:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010cab  ; je 0x10cab
mov eax, dword [ebp - 0x20]
push dword [eax + ebx*4]
push ebx
push ref_00024d4e  ; push 0x24d4e
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010cab:
mov eax, dword [ebp - 0x20]
mov cl, bl
mov edx, dword [eax + ebx*4]
mov eax, 1
inc ebx
shl eax, cl
or byte [ebp + edx - 0x1c], al
cmp ebx, 8
jne short loc_00010c8c  ; jne 0x10c8c
xor bl, bl

loc_00010cc6:
call fcn_00015479  ; call 0x15479
test al, al
lea eax, [ebx + ebx]
je short loc_00010cfa  ; je 0x10cfa
mov edx, eax
sub esp, 0xc
add edx, dword [ebp - 0x20]
mov dword [ebp - 0x2c], eax
movzx ecx, byte [edx + 0x20]
push ecx
movzx edx, byte [edx + 0x21]
push edx
push ebx
push ref_00024d5e  ; push 0x24d5e
push 0x40
call fcn_00015487  ; call 0x15487
mov eax, dword [ebp - 0x2c]
add esp, 0x20

loc_00010cfa:
add eax, dword [ebp - 0x20]
cmp byte [eax + 0x20], 1
jne short loc_00010d18  ; jne 0x10d18
movzx edx, byte [ebp + ebx - 0x1c]
push edx
movzx eax, byte [eax + 0x21]
push eax
push ebx
push esi
call fcn_00010adc  ; call 0x10adc
add esp, 0x10

loc_00010d18:
inc ebx
cmp ebx, 4
jne short loc_00010cc6  ; jne 0x10cc6
push edx
xor bl, bl
push edx
push 0x80000000
push edi
call fcn_00018b14  ; call 0x18b14
mov dword [esp], edi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10

loc_00010d38:
mov eax, dword [ebp - 0x20]
cmp byte [eax + ebx*2 + 0x20], 1
jne short loc_00010d4e  ; jne 0x10d4e
push eax
push eax
push ebx
push esi
call fcn_00010b6b  ; call 0x10b6b
add esp, 0x10

loc_00010d4e:
inc ebx
cmp ebx, 4
jne short loc_00010d38  ; jne 0x10d38
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00010d5e:
push ebp
mov ebp, esp
push ebx
push eax
call fcn_0001bfbb  ; call 0x1bfbb
dec eax
jne near loc_00010df4  ; jne 0x10df4
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010d89  ; je 0x10d89
push ebx
push ebx
push ref_00024d7b  ; push 0x24d7b
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010d89:
push ecx
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xf0
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
mov ebx, eax
and ebx, 0xffffc000
lea eax, [ebx + 0x21a4]
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
and eax, 0xf
cmp eax, 2
jne short loc_00010dda  ; jne 0x10dda
push edx
add ebx, 0x21b0
push 2
push 0xf0
push ebx
call fcn_0001878a  ; call 0x1878a
add esp, 0x10

loc_00010dda:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010df4  ; je 0x10df4
push eax
push eax
push ref_00024d93  ; push 0x24d93
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010df4:
mov ebx, dword [ebp - 4]
leave
ret

fcn_00010df9:
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
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
mov byte [ebp - 0x1b], al
cmp ebx, 0x22
ja short loc_00010e34  ; ja 0x10e34
cmp ebx, 0x20
jae short loc_00010e3e  ; jae 0x10e3e
cmp ebx, 1
jb short loc_00010e56  ; jb 0x10e56
cmp ebx, 3
jbe short loc_00010e4a  ; jbe 0x10e4a
cmp ebx, 0x10
je short loc_00010e4a  ; je 0x10e4a
jmp short loc_00010e56  ; jmp 0x10e56

loc_00010e34:
lea eax, [ebx - 0x41]
cmp eax, 2
jbe short loc_00010e5c  ; jbe 0x10e5c
jmp short loc_00010e56  ; jmp 0x10e56

loc_00010e3e:
mov esi, ref_00028588  ; mov esi, 0x28588
mov edi, 0x14
jmp short loc_00010e66  ; jmp 0x10e66

loc_00010e4a:
mov esi, ref_0002769c  ; mov esi, 0x2769c
mov edi, 0x24
jmp short loc_00010e66  ; jmp 0x10e66

loc_00010e56:
xor esi, esi
xor edi, edi
jmp short loc_00010e66  ; jmp 0x10e66

loc_00010e5c:
mov esi, ref_00028d54  ; mov esi, 0x28d54
mov edi, 0x16

loc_00010e66:
add esi, 8
mov word [ebp - 0x1a], 0

loc_00010e6f:
cmp word [ebp - 0x1a], di
je short loc_00010eda  ; je 0x10eda
push dword [esi]
push dword [esi - 4]
push dword [esi - 8]
push dword [ebp + 0x18]
call fcn_00009dc2  ; call 0x9dc2
mov dword [ebp - 0x20], eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00010ed1  ; je 0x10ed1
cmp dword [ebp - 0x20], 0
jns short loc_00010ed1  ; jns 0x10ed1
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010eb9  ; je 0x10eb9
push eax
push dword [ebp - 0x20]
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010eb9:
push eax
push ref_000206f4  ; push 0x206f4
push 0x173
push ref_00024d25  ; push 0x24d25
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00010ed1:
inc word [ebp - 0x1a]
add esi, 0xc
jmp short loc_00010e6f  ; jmp 0x10e6f

loc_00010eda:
cmp ebx, 0x22
ja short loc_00010ef5  ; ja 0x10ef5
cmp ebx, 0x20
jae short loc_00010eff  ; jae 0x10eff
cmp ebx, 1
jb short loc_00010f17  ; jb 0x10f17
cmp ebx, 3
jbe short loc_00010f0b  ; jbe 0x10f0b
cmp ebx, 0x10
je short loc_00010f0b  ; je 0x10f0b
jmp short loc_00010f17  ; jmp 0x10f17

loc_00010ef5:
sub ebx, 0x41
cmp ebx, 2
jbe short loc_00010f1d  ; jbe 0x10f1d
jmp short loc_00010f17  ; jmp 0x10f17

loc_00010eff:
mov edi, ref_00028480  ; mov edi, 0x28480
mov esi, 0x16
jmp short loc_00010f27  ; jmp 0x10f27

loc_00010f0b:
mov edi, ref_0002784c  ; mov edi, 0x2784c
mov esi, 0x14
jmp short loc_00010f27  ; jmp 0x10f27

loc_00010f17:
xor edi, edi
xor esi, esi
jmp short loc_00010f27  ; jmp 0x10f27

loc_00010f1d:
mov edi, ref_00028c34  ; mov edi, 0x28c34
mov esi, 0x18

loc_00010f27:
mov dl, byte [ebp - 0x1b]
imul esi, esi, 0xc
mov al, dl
add esi, edi
and eax, 3
mov byte [ebp - 0x1a], al
mov al, dl
and eax, 0xc
mov byte [ebp - 0x20], al

loc_00010f3f:
cmp edi, esi
je near loc_00010fea  ; je 0x10fea
cmp dword [ebp + 0xc], 2
jne short loc_00010f64  ; jne 0x10f64
mov eax, dword [edi]
and eax, 0xfe00
cmp eax, 0x2400
je short loc_00010f85  ; je 0x10f85
cmp eax, 0x2600
jne short loc_00010f8b  ; jne 0x10f8b
jmp short loc_00010f78  ; jmp 0x10f78

loc_00010f64:
cmp dword [ebp + 0xc], 1
jne short loc_00010f8b  ; jne 0x10f8b
mov eax, dword [edi]
and eax, 0xfe00
cmp eax, 0x2c00
jne short loc_00010f7e  ; jne 0x10f7e

loc_00010f78:
cmp byte [ebp - 0x20], 8
jmp short loc_00010f89  ; jmp 0x10f89

loc_00010f7e:
cmp eax, 0x2e00
jne short loc_00010f8b  ; jne 0x10f8b

loc_00010f85:
cmp byte [ebp - 0x1a], 2

loc_00010f89:
jne short loc_00010fe2  ; jne 0x10fe2

loc_00010f8b:
push dword [edi + 8]
push dword [edi + 4]
push dword [edi]
push dword [ebp + 0x18]
call fcn_00009dc2  ; call 0x9dc2
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00010fe2  ; je 0x10fe2
test ebx, ebx
jns short loc_00010fe2  ; jns 0x10fe2
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00010fca  ; je 0x10fca
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00010fca:
push eax
push ref_000206f4  ; push 0x206f4
push 0x1a4
push ref_00024d25  ; push 0x24d25
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00010fe2:
add edi, 0xc
jmp near loc_00010f3f  ; jmp 0x10f3f

loc_00010fea:
mov eax, dword [ebp + 8]
xor ebx, ebx
cmp byte [eax], 8
ja short loc_00010ffb  ; ja 0x10ffb

loc_00010ff4:
xor eax, eax
jmp near loc_0001122f  ; jmp 0x1122f

loc_00010ffb:
mov cl, byte [ebp - 0x1b]
mov al, cl
and eax, 0xc
mov byte [ebp - 0x1b], al
mov al, cl
and eax, 3
mov byte [ebp - 0x20], al

loc_0001100e:
call fcn_0001c2f8  ; call 0x1c2f8
movzx eax, al
cmp ebx, eax
jae short loc_00010ff4  ; jae 0x10ff4
cmp ebx, 2
jne short loc_00011025  ; jne 0x11025
cmp byte [ebp - 0x20], 2
jmp short loc_0001102e  ; jmp 0x1102e

loc_00011025:
cmp ebx, 3
jne short loc_00011034  ; jne 0x11034
cmp byte [ebp - 0x1b], 8

loc_0001102e:
jne near loc_00011229  ; jne 0x11229

loc_00011034:
cmp dword [ebp + 0xc], 1
jne short loc_00011043  ; jne 0x11043
mov esi, dword [ebx*4 + ref_00020450]  ; mov esi, dword [ebx*4 + 0x20450]
jmp short loc_0001104a  ; jmp 0x1104a

loc_00011043:
mov esi, dword [ebx*4 + ref_00020438]  ; mov esi, dword [ebx*4 + 0x20438]

loc_0001104a:
mov ecx, dword [ebp + 8]
lea eax, [ebx + 0xae]
test byte [ecx + eax*8 + 0x10], 1
je short loc_000110b9  ; je 0x110b9
movzx eax, byte [ecx + eax*8 + 0xc]
lea edx, [eax - 0x69]
cmp dl, 0x17
jbe short loc_000110af  ; jbe 0x110af
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00011084  ; je 0x11084
push eax
push eax
push ref_00024da9  ; push 0x24da9
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00011084:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_000110a5  ; je 0x110a5
push eax
push ref_00022281  ; push 0x22281
push 0x1bd

loc_00011098:
push ref_00024d25  ; push 0x24d25
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000110a5:
mov eax, 0x80000002
jmp near loc_0001122f  ; jmp 0x1122f

loc_000110af:
shl eax, 0x10
mov edx, 0xff00ffff
jmp short loc_000110be  ; jmp 0x110be

loc_000110b9:
xor eax, eax
or edx, 0xffffffff

loc_000110be:
mov edi, dword [ebp + 8]
lea ecx, [ebx + 0xae]
test byte [edi + ecx*8 + 0x10], 2
je short loc_0001111f  ; je 0x1111f
mov cl, byte [edi + ecx*8 + 0xd]
lea edi, [ecx - 0x80]
mov byte [ebp - 0x1a], cl
mov ecx, edi
cmp cl, 0x1c
jbe short loc_00011112  ; jbe 0x11112
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000110fc  ; je 0x110fc
push edi
push edi
push ref_00024dd8  ; push 0x24dd8
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000110fc:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_000110a5  ; je 0x110a5
push esi
push ref_00022281  ; push 0x22281
push 0x1ca
jmp short loc_00011098  ; jmp 0x11098

loc_00011112:
movzx ecx, byte [ebp - 0x1a]
xor dh, dh
shl ecx, 8
or eax, ecx
jmp short loc_00011124  ; jmp 0x11124

loc_0001111f:
cmp edx, 0xffffffff
je short loc_00011138  ; je 0x11138

loc_00011124:
push eax
push edx
lea eax, [esi + 0x88]
push eax
push dword [ebp + 0x18]
call fcn_00009dc2  ; call 0x9dc2
add esp, 0x10

loc_00011138:
mov ecx, dword [ebp + 8]
lea eax, [ebx + 0xae]
test byte [ecx + eax*8 + 0x10], 4
je short loc_000111aa  ; je 0x111aa
movzx eax, byte [ecx + eax*8 + 0xe]
lea edx, [eax - 0x39]
cmp dl, 0x47
jbe short loc_0001118f  ; jbe 0x1118f
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00011172  ; je 0x11172
push ebx
push ebx
push ref_00024e0a  ; push 0x24e0a
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00011172:
call fcn_00015480  ; call 0x15480
test al, al
je near loc_000110a5  ; je 0x110a5
push ecx
push ref_00022281  ; push 0x22281
push 0x1e2
jmp near loc_00011098  ; jmp 0x11098

loc_0001118f:
shl eax, 8
push eax
push 0xffff00ff
lea eax, [esi + 0x90]
push eax
push dword [ebp + 0x18]
call fcn_00009dc2  ; call 0x9dc2
add esp, 0x10

loc_000111aa:
mov ecx, dword [ebp + 8]
lea eax, [ebx + 0xae]
test byte [ecx + eax*8 + 0x10], 8
je short loc_00011229  ; je 0x11229
mov cl, byte [ecx + eax*8 + 0xf]
mov dl, cl
shr dl, 1
lea eax, [edx + 0x43]
and eax, 0x7f
cmp al, 0xd
jbe short loc_00011206  ; jbe 0x11206
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000111e9  ; je 0x111e9
push edx
push edx
push ref_00024e35  ; push 0x24e35
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000111e9:
call fcn_00015480  ; call 0x15480
test al, al
je near loc_000110a5  ; je 0x110a5
push eax
push ref_00022281  ; push 0x22281
push 0x1f3
jmp near loc_00011098  ; jmp 0x11098

loc_00011206:
and ecx, 1
movzx edx, dl
shl ecx, 7
add esi, 0x98
or ecx, edx
push ecx
push 0xffffff00
push esi
push dword [ebp + 0x18]
call fcn_00009dc2  ; call 0x9dc2
add esp, 0x10

loc_00011229:
inc ebx
jmp near loc_0001100e  ; jmp 0x1100e

loc_0001122f:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00011237:
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
call fcn_00017d8b  ; call 0x17d8b
mov dword [esp], esi
mov edi, eax
call fcn_00017e4e  ; call 0x17e4e
mov ecx, dword [ebp - 0x1c]
add esp, 0x10
cmp ecx, 0x22
ja short loc_00011290  ; ja 0x11290
cmp ecx, 0x20
jae short loc_000112aa  ; jae 0x112aa
cmp ecx, 1
jb near loc_00011465  ; jb 0x11465
cmp ecx, 3
jbe short loc_000112a3  ; jbe 0x112a3
cmp ecx, 0x10
je short loc_000112a3  ; je 0x112a3
jmp near loc_00011465  ; jmp 0x11465

loc_00011290:
sub ecx, 0x41
cmp ecx, 2
ja near loc_00011465  ; ja 0x11465
mov ecx, ref_00028850  ; mov ecx, 0x28850
jmp short loc_000112af  ; jmp 0x112af

loc_000112a3:
mov ecx, ref_0002763c  ; mov ecx, 0x2763c
jmp short loc_000112af  ; jmp 0x112af

loc_000112aa:
mov ecx, ref_000280cc  ; mov ecx, 0x280cc

loc_000112af:
test eax, 0x80000
je near loc_00011465  ; je 0x11465
and eax, 0x70000
mov edx, eax
shr edx, 0x10
cmp dword [ebp + 0xc], 2
jne short loc_0001132d  ; jne 0x1132d
cmp dl, 5
ja near loc_00011465  ; ja 0x11465
imul edx, edx, 0xc
add ecx, edx
push dword [ecx + 8]
push dword [ecx + 4]
push dword [ecx]
push ebx
call fcn_00009dc2  ; call 0x9dc2
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je near loc_00011465  ; je 0x11465
test ebx, ebx
jns near loc_00011465  ; jns 0x11465
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001131d  ; je 0x1131d
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001131d:
push eax
push ref_000206f4  ; push 0x206f4
push 0x241
jmp near loc_00011458  ; jmp 0x11458

loc_0001132d:
cmp dword [ebp + 0xc], 1
jne near loc_00011465  ; jne 0x11465
test dl, dl
jne short loc_000113a2  ; jne 0x113a2
mov eax, edi
and eax, 3
dec al
jne near loc_00011465  ; jne 0x11465
imul edx, edx, 0xc
add ecx, edx
push dword [ecx + 8]
push dword [ecx + 4]
push dword [ecx]
push ebx
call fcn_00009dc2  ; call 0x9dc2
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je near loc_00011465  ; je 0x11465
test ebx, ebx
jns near loc_00011465  ; jns 0x11465
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00011392  ; je 0x11392
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00011392:
push edi
push ref_000206f4  ; push 0x206f4
push 0x24d
jmp near loc_00011458  ; jmp 0x11458

loc_000113a2:
cmp dl, 1
jne short loc_0001140b  ; jne 0x1140b
mov eax, edi
and eax, 0xc
cmp al, 4
jne near loc_00011465  ; jne 0x11465
imul edx, edx, 0xc
add ecx, edx
push dword [ecx + 8]
push dword [ecx + 4]
push dword [ecx]
push ebx
call fcn_00009dc2  ; call 0x9dc2
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je near loc_00011465  ; je 0x11465
test ebx, ebx
jns near loc_00011465  ; jns 0x11465
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000113fe  ; je 0x113fe
push esi
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000113fe:
push ecx
push ref_000206f4  ; push 0x206f4
push 0x257
jmp short loc_00011458  ; jmp 0x11458

loc_0001140b:
imul edx, edx, 0xc
add ecx, edx
push dword [ecx + 8]
push dword [ecx + 4]
push dword [ecx]
push ebx
call fcn_00009dc2  ; call 0x9dc2
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00011465  ; je 0x11465
test ebx, ebx
jns short loc_00011465  ; jns 0x11465
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001144d  ; je 0x1144d
push edx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001144d:
push eax
push ref_000206f4  ; push 0x206f4
push 0x260

loc_00011458:
push ref_00024d25  ; push 0x24d25
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00011465:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001146f:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
call fcn_0001bfbb  ; call 0x1bfbb
mov esi, eax
mov eax, dword [ebp + 8]
mov ebx, dword [eax + 4]
push edi
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 0
push 0x1c
push 0
mov edi, eax
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
add edi, 2
push 0
push 0x14
push 0
mov dword [ebp - 0x20], eax
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], edi
mov dword [ebp - 0x24], eax
call fcn_00017dc2  ; call 0x17dc2
call fcn_0001bbfd  ; call 0x1bbfd
movzx eax, al
mov dword [ebp - 0x1c], eax
pop eax
pop edx
lea eax, [ebx + 0x2088]
push 0x109000
push eax
call fcn_00017e8f  ; call 0x17e8f
lea eax, [ebx + 0x20ac]
pop ecx
pop edi
push 0x40000000
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10
cmp esi, 1
jne short loc_00011532  ; jne 0x11532
push eax
push eax
push 0x1b
lea edi, [ebx + 0x2340]
push edi
call fcn_00017da5  ; call 0x17da5
add esp, 0xc
push 0x3a0000
push 0xff00ffff
push edi
call fcn_00018b68  ; call 0x18b68
lea eax, [ebx + 0x2324]
pop edx
pop ecx
push 0x854c74
push eax
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10

loc_00011532:
sub esp, 0xc
push ebx
push dword [ebp - 0x20]
push dword [ebp - 0x1c]
push esi
push dword [ebp + 8]
call fcn_00010df9  ; call 0x10df9
add esp, 0x20
mov edi, eax
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001158c  ; je 0x1158c
test edi, edi
jns short loc_0001158c  ; jns 0x1158c
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00011574  ; je 0x11574
push eax
push edi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00011574:
push eax
push ref_000206f4  ; push 0x206f4
push 0x34e
push ref_00024d25  ; push 0x24d25
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001158c:
sub esp, 0xc
push ebx
push dword [ebp - 0x20]
push dword [ebp - 0x1c]
push esi
push dword [ebp + 8]
call fcn_00011237  ; call 0x11237
add esp, 0x20
mov esi, eax
call fcn_00015480  ; call 0x15480
test al, al
je short loc_000115e6  ; je 0x115e6
test esi, esi
jns short loc_000115e6  ; jns 0x115e6
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000115ce  ; je 0x115ce
push eax
push esi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000115ce:
push eax
push ref_000206f4  ; push 0x206f4
push 0x350
push ref_00024d25  ; push 0x24d25
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000115e6:
call fcn_0001bfbb  ; call 0x1bfbb
cmp eax, 2
je short loc_000115fe  ; je 0x115fe

loc_000115f0:
call fcn_0001bfbb  ; call 0x1bfbb
dec eax
jne near loc_000116a3  ; jne 0x116a3
jmp short loc_0001164b  ; jmp 0x1164b

loc_000115fe:
mov byte [ebp - 0x1c], 0

loc_00011602:
call fcn_0001c1bf  ; call 0x1c1bf
cmp byte [ebp - 0x1c], al
jae short loc_000115f0  ; jae 0x115f0
push eax
movzx eax, byte [ebp - 0x1c]
push eax
push 0x1c
push 0
call fcn_00016c9a  ; call 0x16c9a
mov edi, eax
pop eax
pop edx
lea eax, [edi + 0x110]
push 0x31c1
push eax
call fcn_00018b14  ; call 0x18b14
lea edx, [edi + 0x104]
pop ecx
pop eax
push 0x17d010
push edx
call fcn_00018b14  ; call 0x18b14
add esp, 0x10
inc byte [ebp - 0x1c]
jmp short loc_00011602  ; jmp 0x11602

loc_0001164b:
sub esp, 0xc
lea eax, [ebx + 0x2320]
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
mov edx, 0x20000
test al, 2
jne short loc_0001168a  ; jne 0x1168a
mov eax, dword [ebp - 0x20]
sub esp, 0xc
add eax, 0xf5
push eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
and eax, 1
cmp al, 1
sbb edx, edx
xor dx, dx
add edx, 0x20000

loc_0001168a:
or dh, 0x30
push eax
push edx
push 0xfffc0fff
lea eax, [ebx + 0x21a4]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_000116a3:
push edi
push edi
push 0xfffffffffffffff0
lea eax, [ebx + 0x2348]
push eax
call fcn_00018b3e  ; call 0x18b3e
mov eax, dword [ebp - 0x24]
add esp, 0xc
push 0x10000
push 0xffffff7f
add eax, 0xb0
push eax
call fcn_00018b68  ; call 0x18b68
call fcn_0001bfbb  ; call 0x1bfbb
add esp, 0x10
cmp eax, 2
jne short loc_00011747  ; jne 0x11747
push ecx
push ecx
push 0x10
lea eax, [ebx + 0x260c]
push eax
call fcn_00017e04  ; call 0x17e04
push 0x3100
push 0xffffceff
push 0xec000106
push ebx
call fcn_00009dc2  ; call 0x9dc2
add esp, 0x20
mov esi, eax
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00011747  ; je 0x11747
test esi, esi
jns short loc_00011747  ; jns 0x11747
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001172f  ; je 0x1172f
push edx
push esi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001172f:
push eax
push ref_000206f4  ; push 0x206f4
push 0x3b8
push ref_00024d25  ; push 0x24d25
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00011747:
lea esp, [ebp - 0xc]
mov eax, esi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00011751:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov esi, dword [ebp + 0x14]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00011777  ; je 0x11777
push eax
push eax
push ref_00024e65  ; push 0x24e65
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00011777:
cmp dword [ebp + 8], 0
mov ebx, 0x80000002
je near loc_0001189f  ; je 0x1189f
call fcn_00015479  ; call 0x15479
test al, al
mov eax, esi
movzx ebx, al
je short loc_000117a5  ; je 0x117a5
push eax
push ebx
push ref_00024e80  ; push 0x24e80
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000117a5:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000117c1  ; je 0x117c1
push eax
push dword [ebp + 0xc]
push ref_00024e91  ; push 0x24e91
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000117c1:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000117dd  ; je 0x117dd
push eax
push dword [ebp + 0x10]
push ref_00024ea9  ; push 0x24ea9
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000117dd:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000117f7  ; je 0x117f7
push eax
push eax
push ref_00021f21  ; push 0x21f21
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000117f7:
push eax
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xf0
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
mov edi, eax
and edi, 0xffffc000
lea esi, [edi + 0x3418]
mov dword [esp], esi
call fcn_00017e4e  ; call 0x17e4e
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
call fcn_000151c7  ; call 0x151c7
add esp, 0x20
mov ebx, eax
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00011889  ; je 0x11889
test ebx, ebx
jns short loc_00011889  ; jns 0x11889
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00011871  ; je 0x11871
push edi
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00011871:
push ecx
push ref_000206f4  ; push 0x206f4
push 0x82
push ref_00024ec1  ; push 0x24ec1
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00011889:
push edx
push edx
push dword [ebp - 0x1c]
push esi
call fcn_00017e8f  ; call 0x17e8f
mov dword [esp], esi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10

loc_0001189f:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000118b9  ; je 0x118b9
push eax
push eax
push ref_00024eea  ; push 0x24eea
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000118b9:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000118c3:
push ebp
mov ebp, esp
push ebx
sub esp, 0x14
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000118e4  ; je 0x118e4
push edx
push edx
push ref_00024f03  ; push 0x24f03
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000118e4:
lea eax, [ebp - 0xc]
push eax
push 0
push 0
push ref_000291bc  ; push 0x291bc
call fcn_0001975d  ; call 0x1975d
add esp, 0x10
mov ebx, eax
test eax, eax
jne short loc_00011919  ; jne 0x11919
mov eax, dword [ebp - 0xc]
movzx edx, byte [eax]
push edx
push dword [eax + 0xe]
push dword [eax + 6]
push dword [eax + 1]
call fcn_00011751  ; call 0x11751
add esp, 0x10
mov ebx, eax

loc_00011919:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00011933  ; je 0x11933
push eax
push eax
push ref_00024f19  ; push 0x24f19
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00011933:
mov eax, ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001193a:
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
call fcn_0001bfbb  ; call 0x1bfbb
mov dword [ebp - 0x1c], eax
call fcn_0001c0bd  ; call 0x1c0bd
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
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 0
push 0x1f
push edi
mov ebx, eax
call fcn_00016c9a  ; call 0x16c9a
mov dword [ebp - 0x38], eax
pop eax
pop edx
push 0
push dword [ebp + 0x18]
call fcn_0001c39f  ; call 0x1c39f
add esp, 0xc
movzx eax, al
push eax
push 0x1c
push edi
call fcn_00016c9a  ; call 0x16c9a
push 0x10
push dword [ebp - 0x2c]
push 0x1c
push edi
mov dword [ebp - 0x20], eax
call fcn_00009fd5  ; call 0x9fd5
add esp, 0x20
movzx eax, al
mov ecx, eax
mov dword [ebp - 0x3c], eax
mov eax, 0x80000003
test ecx, ecx
je near loc_00011e6c  ; je 0x11e6c
sub esp, 0xc
mov eax, esi
lea edx, [ebx + 0x64]
movzx esi, al
push edx
imul esi, esi, 0x2c
mov dword [ebp - 0x24], edx
call fcn_00017e4e  ; call 0x17e4e
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
call fcn_00017e8f  ; call 0x17e8f
lea eax, [ebx + 0x68]
mov dword [esp], eax
mov dword [ebp - 0x24], eax
call fcn_00017dc2  ; call 0x17dc2
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
call fcn_00017e04  ; call 0x17e04
add esp, 0xc
push 0x14140000
push 0xffff
lea eax, [ebx + 0x318]
push eax
call fcn_00018b68  ; call 0x18b68
mov eax, dword [ebp - 0x20]
add eax, 0xf5
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
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
call fcn_00018b68  ; call 0x18b68
add esp, 0xc
push 0x743a361b
push 0
lea eax, [ebx + 0x314]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0xc
push 0x18000
lea eax, [ebx + 0xd8]
push 0xfffc7fff
push eax
mov dword [ebp - 0x20], eax
call fcn_00018b68  ; call 0x18b68
add esp, 0xc
push 0x854c74
push 0xff000000
lea eax, [ebx + 0x33c]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0xc
push 0x2000000
push 0xfdffffff
push dword [ebp - 0x20]
call fcn_00018b68  ; call 0x18b68
add esp, 0xc
push 0x8000008
push 0xf7fffff7
push dword [ebp - 0x20]
call fcn_00018b68  ; call 0x18b68
pop eax
pop edx
lea eax, [ebx + 0xf5]
push 0xf
push eax
call fcn_0001875d  ; call 0x1875d
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
call fcn_00017e8f  ; call 0x17e8f
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
call fcn_00018981  ; call 0x18981
add esp, 0x10
cmp dword [ebp - 0x1c], 2
jne short loc_00011b8f  ; jne 0x11b8f
push ecx
push 0x1000c0
push 0xffcffe3f
lea eax, [ebx + 0x320]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_00011b8f:
mov dl, byte [esi + 0xb]
cmp dl, 9
je short loc_00011bad  ; je 0x11bad
sub edx, 3
xor eax, eax
cmp dl, 3
ja short loc_00011bb2  ; ja 0x11bb2
movzx edx, dl
movzx eax, byte [edx + ref_00020468]  ; movzx eax, byte [edx + 0x20468]
jmp short loc_00011bb2  ; jmp 0x11bb2

loc_00011bad:
mov eax, 0x10

loc_00011bb2:
push edx
push eax
push 0xffe0
push dword [ebp - 0x24]
call fcn_00018981  ; call 0x18981
mov dl, byte [edi + 6]
add esp, 0x10
test dl, 4
je short loc_00011c38  ; je 0x11c38
sub esp, 0xc
push dword [ebp - 0x30]
shl edx, 0x1c
sar edx, 0x1f
and edx, 0x60
mov dword [ebp - 0x24], edx
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
mov edx, dword [ebp - 0x24]
and eax, 0x3f0
cmp eax, 0x10
jne short loc_00011bf8  ; jne 0x11bf8
or dh, 0xb2
jmp short loc_00011c1c  ; jmp 0x11c1c

loc_00011bf8:
sub esp, 0xc
push dword [ebp - 0x30]
mov dword [ebp - 0x24], edx
call fcn_00017e4e  ; call 0x17e4e
mov edx, dword [ebp - 0x24]
add esp, 0x10
mov ecx, edx
or ch, 0xfd
and eax, 0x3f0
cmp eax, 0x10
cmova edx, ecx

loc_00011c1c:
push eax
movzx eax, byte [esi + 0xa]
shl eax, 0x13
or eax, edx
push eax
push 0x6001f
lea eax, [ebx + 0x54]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_00011c38:
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
call fcn_0000bc4e  ; call 0xbc4e
add esp, 0x20
mov byte [ebp - 0x24], 1
test eax, eax
je short loc_00011c7a  ; je 0x11c7a
push eax
push eax
push 2
lea eax, [ebx + 0xd4]
push eax
call fcn_00018730  ; call 0x18730
add esp, 0x10
mov byte [ebp - 0x24], 0

loc_00011c7a:
test byte [edi + 6], 8
jne short loc_00011c8e  ; jne 0x11c8e
mov cl, byte [ebp - 0x24]
mov al, cl
lea eax, [eax + eax - 3]
lea edx, [ecx + ecx]
jmp short loc_00011c92  ; jmp 0x11c92

loc_00011c8e:
mov al, 0xfd
xor edx, edx

loc_00011c92:
movzx edx, dl
movzx eax, al
push ecx
push edx
push eax
lea eax, [ebx + 0xe0]
push eax
call fcn_0001878a  ; call 0x1878a
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
call fcn_00018981  ; call 0x18981
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
call fcn_00018981  ; call 0x18981
add esp, 0x10
test byte [edi + 6], 0x10
je near loc_00011dce  ; je 0x11dce
push eax
push eax
push 0xfff7
push esi
call fcn_00018954  ; call 0x18954
add esp, 0xc
push 0x80000000
push 0xfffffffffffffffe
push dword [ebp - 0x20]
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp dword [ebp - 0x1c], 2
jne short loc_00011d76  ; jne 0x11d76
movzx esi, word [ebp - 0x28]
add esi, 0x8c
jmp short loc_00011d83  ; jmp 0x11d83

loc_00011d76:
cmp dword [ebp - 0x1c], 1
jne short loc_00011da4  ; jne 0x11da4
movzx esi, word [ebp - 0x28]
add esi, 0x20

loc_00011d83:
sub esp, 0xc
push esi
call fcn_00018f64  ; call 0x18f64
add esp, 0x10
test ah, 2
je short loc_00011da4  ; je 0x11da4
push eax
push eax
push 0x200
push esi
call fcn_00018f97  ; call 0x18f97
add esp, 0x10

loc_00011da4:
mov esi, dword [ebp - 0x38]
sub esp, 0xc
add esi, 0xa0
push esi
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test ah, 4
jne short loc_00011dce  ; jne 0x11dce
push eax
push eax
push 0x400
push esi
call fcn_00018927  ; call 0x18927
add esp, 0x10

loc_00011dce:
test byte [edi + 6], 8
je short loc_00011e53  ; je 0x11e53
mov esi, dword [ebp - 0x3c]
push eax
push eax
push 9
add esi, ebx
lea eax, [esi + 0x1a]
add esi, 0x18
push eax
call fcn_00018927  ; call 0x18927
add esp, 0xc
push 9
push 0xffdf
push esi
call fcn_00018981  ; call 0x18981
add esp, 0xc
push 0x40000000
push 0xfffffffffffffffd
push dword [ebp - 0x20]
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp dword [ebp - 0x1c], 2
jne short loc_00011e23  ; jne 0x11e23
movzx eax, word [ebp - 0x28]
push ecx
push ecx
push 2
add eax, 0x8c
jmp short loc_00011e34  ; jmp 0x11e34

loc_00011e23:
cmp dword [ebp - 0x1c], 1
jne short loc_00011e3d  ; jne 0x11e3d
movzx eax, word [ebp - 0x28]
push edx
push edx
push 2
add eax, 0x20

loc_00011e34:
push eax
call fcn_00018f97  ; call 0x18f97
add esp, 0x10

loc_00011e3d:
push eax
add ebx, 0x108
push eax
push 0x4000
push ebx
call fcn_00018b14  ; call 0x18b14
add esp, 0x10

loc_00011e53:
cmp byte [ebp - 0x24], 1
je short loc_00011e6a  ; je 0x11e6a
mov al, byte [edi + 6]
and eax, 8
cmp al, 1
sbb eax, eax
and eax, 0x8000000e
jmp short loc_00011e6c  ; jmp 0x11e6c

loc_00011e6a:
xor eax, eax

loc_00011e6c:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00011e74:
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
call fcn_0001bfbb  ; call 0x1bfbb
mov dword [ebp - 0x1c], eax
call fcn_0001c0bd  ; call 0x1c0bd
movzx edi, byte [ebp - 0x20]
mov dword [ebp - 0x28], eax

loc_00011e9c:
call fcn_0001c1bf  ; call 0x1c1bf
movzx eax, al
cmp ebx, eax
jae near loc_00011fa1  ; jae 0x11fa1
cmp dword [ebp - 0x1c], 2
mov byte [ebp - 0x21], 0
jne short loc_00011ef0  ; jne 0x11ef0
push ecx
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0x48
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
and eax, 0xfffc
lea eax, [eax + ebx*8 + 0x190]
mov dword [esp], eax
call fcn_00018f64  ; call 0x18f64
add esp, 0x10
and eax, 1
xor eax, 1
and eax, 1
mov byte [ebp - 0x21], al

loc_00011ef0:
mov eax, 1
mov cl, bl
shl eax, cl
test dword [ebp + 0x10], eax
je near loc_00012110  ; je 0x12110
test dword [ebp + 0x14], eax
jne near loc_00012193  ; jne 0x12193
push esi
push esi
push ebx
push dword [ebp + 0x18]
call fcn_0001c39f  ; call 0x1c39f
add esp, 0xc
movzx eax, al
push eax
push 0x1c
push edi
call fcn_00016c9a  ; call 0x16c9a
mov esi, eax
pop eax
pop edx
lea eax, [esi + 0xe1]
push 3
push eax
call fcn_00018730  ; call 0x18730
add esp, 0x10
cmp dword [ebp - 0x1c], 2
jne short loc_00011f69  ; jne 0x11f69
push ecx
push ecx
push 0x40
lea eax, [esi + 0xe2]
push eax
call fcn_00018730  ; call 0x18730
add esp, 0xc
push 8
push 0xf3
lea eax, [esi + 0xe8]
push eax
call fcn_0001878a  ; call 0x1878a
add esp, 0x10

loc_00011f69:
push eax
push eax
push 3
lea eax, [esi + 0xe8]
push eax
call fcn_00018b14  ; call 0x18b14
cmp dword [ebp - 0x28], 2
pop eax
mov eax, 0x20
pop edx
mov edx, 0x4020
cmove eax, edx
add esi, 0x324
push eax
push esi
call fcn_00018b14  ; call 0x18b14
add esp, 0x10
jmp near loc_00012193  ; jmp 0x12193

loc_00011fa1:
xor ebx, ebx
cmp dword [ebp - 0x1c], 2
jne near loc_00012084  ; jne 0x12084
mov eax, dword [ebp + 0x10]
movzx edi, byte [ebp - 0x20]
and eax, 0xf
mov dword [ebp - 0x1c], eax

loc_00011fba:
call fcn_0001c1bf  ; call 0x1c1bf
movzx eax, al
cmp ebx, eax
jae short loc_00012044  ; jae 0x12044
push esi
push esi
push ebx
push dword [ebp + 0x18]
call fcn_0001c39f  ; call 0x1c39f
add esp, 0xc
movzx eax, al
push eax
push 0x1c
push edi
call fcn_00016c9a  ; call 0x16c9a
add esp, 0x10
mov edx, eax
lea eax, [ebx - 4]
cmp eax, 1
jbe short loc_00011ff1  ; jbe 0x11ff1
test ebx, ebx
jne short loc_0001203e  ; jne 0x1203e

loc_00011ff1:
push ecx
push ecx
lea esi, [edx + 0xe1]
push 0x3c
push esi
mov dword [ebp - 0x20], edx
call fcn_00018730  ; call 0x18730
mov eax, dword [ebp - 0x1c]
add esp, 0x10
mov edx, dword [ebp - 0x20]
or eax, ebx
je short loc_0001201e  ; je 0x1201e
mov eax, dword [ebp + 0x10]
bt eax, ebx
jb short loc_0001203e  ; jb 0x1203e
cmp ebx, 3
jbe short loc_0001203e  ; jbe 0x1203e

loc_0001201e:
push eax
add edx, 0xe2
push eax
push 1
push edx
call fcn_00018730  ; call 0x18730
pop eax
pop edx
push 0x80
push esi
call fcn_00018730  ; call 0x18730
add esp, 0x10

loc_0001203e:
inc ebx
jmp near loc_00011fba  ; jmp 0x11fba

loc_00012044:
test byte [ebp + 0x10], 0x3f
jne near loc_0001219b  ; jne 0x1219b
push ecx
push ecx
push 0
push dword [ebp + 0x18]
call fcn_0001c39f  ; call 0x1c39f
add esp, 0xc
movzx eax, al
push eax
movzx eax, byte [ebp - 0x2c]
push 0x1c
push eax
call fcn_00016c9a  ; call 0x16c9a
pop ebx
pop esi
push 0x40
add eax, 0xe1
push eax
call fcn_00018730  ; call 0x18730
add esp, 0x10
jmp near loc_0001219b  ; jmp 0x1219b

loc_00012084:
cmp dword [ebp - 0x1c], 1
jne near loc_0001219b  ; jne 0x1219b
movzx edi, byte [ebp - 0x20]

loc_00012092:
call fcn_0001c1bf  ; call 0x1c1bf
movzx eax, al
cmp ebx, eax
jae near loc_0001219b  ; jae 0x1219b
mov eax, dword [ebp + 0x14]
bt eax, ebx
jb short loc_0001210b  ; jb 0x1210b
push esi
push esi
push ebx
push dword [ebp + 0x18]
call fcn_0001c39f  ; call 0x1c39f
add esp, 0xc
movzx eax, al
push eax
push 0x1c
push edi
call fcn_00016c9a  ; call 0x16c9a
lea esi, [eax + 0xe1]
mov dword [ebp - 0x1c], eax
pop eax
pop edx
push 0x3c
push esi
call fcn_00018730  ; call 0x18730
mov eax, 0xf
mov cl, bl
shl eax, cl
add esp, 0x10
mov edx, dword [ebp - 0x1c]
test dword [ebp + 0x10], eax
jne short loc_0001210b  ; jne 0x1210b
push eax
add edx, 0xe2
push eax
push 1
push edx
call fcn_00018730  ; call 0x18730
pop edx
pop ecx
push 0x80
push esi
call fcn_00018730  ; call 0x18730
add esp, 0x10

loc_0001210b:
add ebx, 4
jmp short loc_00012092  ; jmp 0x12092

loc_00012110:
cmp dword [ebp - 0x1c], 2
jne short loc_0001218d  ; jne 0x1218d
push esi
push esi
push ebx
push dword [ebp + 0x18]
call fcn_0001c39f  ; call 0x1c39f
add esp, 0xc
movzx eax, al
push eax
push 0x1c
push edi
call fcn_00016c9a  ; call 0x16c9a
mov esi, eax
pop eax
pop edx
lea eax, [esi + 0xe2]
add esi, 0x420
push 0x30
push eax
call fcn_00018730  ; call 0x18730
pop ecx
pop eax
push 0x80000000
push esi
call fcn_00018b14  ; call 0x18b14
add esp, 0x10

loc_00012158:
cmp byte [ebp - 0x21], 0
je short loc_0001218d  ; je 0x1218d
push eax
push eax
push ebx
push dword [ebp + 0x18]
call fcn_0001c39f  ; call 0x1c39f
add esp, 0xc
movzx eax, al
push eax
push 0x1c
push edi
call fcn_00016c9a  ; call 0x16c9a
pop edx
pop ecx
push 0x60000000
add eax, 0x420
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10

loc_0001218d:
inc ebx
jmp near loc_00011e9c  ; jmp 0x11e9c

loc_00012193:
cmp dword [ebp - 0x1c], 2
jne short loc_0001218d  ; jne 0x1218d
jmp short loc_00012158  ; jmp 0x12158

loc_0001219b:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000121a5:
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
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
jne short loc_000121e1  ; jne 0x121e1
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000121e1  ; je 0x121e1
push edx
push ebx
push ref_00024f2d  ; push 0x24f2d
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000121e1:
sub esp, 0xc
add ebx, 0xfc
push ebx
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
and ax, 0xc000
cmp ax, 0x8000
je short loc_00012212  ; je 0x12212
cmp ax, 0xc000
je short loc_0001220b  ; je 0x1220b
xor ebx, ebx
cmp ax, 0x4000
jne short loc_00012217  ; jne 0x12217

loc_0001220b:
mov ebx, 2
jmp short loc_00012217  ; jmp 0x12217

loc_00012212:
mov ebx, 0x22

loc_00012217:
call fcn_0001bfbb  ; call 0x1bfbb
dec eax
jne short loc_00012264  ; jne 0x12264
push eax
push 4
push 0x1c
movzx eax, byte [edi + 1]
push eax
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xfc
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
and ax, 0xc000
cmp ax, 0x8000
je short loc_0001225c  ; je 0x1225c
cmp ax, 0xc000
je short loc_00012261  ; je 0x12261
mov edx, ebx
or dh, 2
cmp ax, 0x4000
cmove ebx, edx
jmp short loc_00012264  ; jmp 0x12264

loc_0001225c:
or bh, 0x22
jmp short loc_00012264  ; jmp 0x12264

loc_00012261:
or bh, 2

loc_00012264:
movzx ebx, bx
add esi, 0x103c
mov dword [ebp + 0xc], ebx
mov dword [ebp + 8], esi
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017e04  ; jmp 0x17e04

fcn_0001227f:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x4c
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000122a2  ; je 0x122a2
push esi
push esi
push ref_00024f42  ; push 0x24f42
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000122a2:
call fcn_0001bfbb  ; call 0x1bfbb
mov dword [ebp - 0x2c], eax
push eax
mov eax, dword [ebp + 8]
push 0
push 0x1f
movzx eax, byte [eax + 1]
push eax
call fcn_00016c9a  ; call 0x16c9a
mov ebx, eax
lea eax, [eax + 0xf0]
add ebx, 0x40
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
mov dword [esp], ebx
mov dword [ebp - 0x30], eax
and dword [ebp - 0x30], 0xffffc000
call fcn_00017dc2  ; call 0x17dc2
mov edi, dword [ebp - 0x30]
mov word [ebp - 0x3e], ax
pop eax
pop edx
and word [ebp - 0x3e], 0xfffc
push 0
push edi
call fcn_0001c39f  ; call 0x1c39f
add esp, 0xc
movzx eax, al
push eax
mov eax, dword [ebp + 8]
push 0x1c
movzx eax, byte [eax + 1]
push eax
call fcn_00016c9a  ; call 0x16c9a
pop ecx
pop ebx
push 4
push edi
mov esi, eax
mov dword [ebp - 0x34], eax
call fcn_0001c39f  ; call 0x1c39f
add esp, 0xc
movzx eax, al
push eax
mov eax, dword [ebp + 8]
push 0x1c
movzx eax, byte [eax + 1]
push eax
call fcn_00016c9a  ; call 0x16c9a
mov ebx, eax
call fcn_0001c1bf  ; call 0x1c1bf
add esp, 0xc
push 5
push 0xf5
mov byte [ebp - 0x39], al
mov eax, esi
add eax, 0xf5
push eax
call fcn_0001878a  ; call 0x1878a
add esp, 0xc
push dword [ebp + 8]
push esi
push edi
call fcn_000121a5  ; call 0x121a5
mov eax, esi
add eax, 0xfc
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
mov esi, eax
and eax, 0xc000
cmp eax, 0x8000
je short loc_00012398  ; je 0x12398
cmp eax, 0xc000
je short loc_0001239f  ; je 0x1239f
cmp eax, 0x4000
sete al
movzx eax, al
mov edi, eax
add edi, eax
jmp short loc_000123a4  ; jmp 0x123a4

loc_00012398:
mov edi, 0xa
jmp short loc_000123a4  ; jmp 0x123a4

loc_0001239f:
mov edi, 0xe

loc_000123a4:
cmp dword [ebp - 0x2c], 1
jne short loc_000123ec  ; jne 0x123ec
sub esp, 0xc
add ebx, 0xfc
push ebx
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
and eax, 0xc000
cmp eax, 0x8000
je short loc_000123de  ; je 0x123de
cmp eax, 0xc000
je short loc_000123e6  ; je 0x123e6
mov edx, edi
or edx, 0x20
cmp eax, 0x4000
cmove edi, edx
jmp short loc_000123ec  ; jmp 0x123ec

loc_000123de:
or edi, 0xa0
jmp short loc_000123ec  ; jmp 0x123ec

loc_000123e6:
or edi, 0xe0

loc_000123ec:
mov eax, dword [ebp - 0x30]
sub esp, 0xc
mov bl, 0xff
add eax, 0x3414
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test esi, 0x80000
je short loc_00012419  ; je 0x12419
test al, 0x20
jne short loc_00012419  ; jne 0x12419
and esi, 0x70000
mov ebx, esi
shr ebx, 0x10

loc_00012419:
cmp dword [ebp - 0x2c], 1
jne short loc_00012444  ; jne 0x12444
mov eax, dword [ebp - 0x34]
sub esp, 0xc
add eax, 0x410
push eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 0x11
je short loc_0001243f  ; je 0x1243f
test bl, bl
jne short loc_00012485  ; jne 0x12485
test al, 0x10
jne short loc_00012485  ; jne 0x12485

loc_0001243f:
or edi, 1
jmp short loc_00012485  ; jmp 0x12485

loc_00012444:
cmp dword [ebp - 0x2c], 2
jne short loc_00012495  ; jne 0x12495
mov eax, dword [ebp - 0x34]
sub esp, 0xc
lea esi, [eax + 0x410]
push esi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test al, 3
jne short loc_0001246b  ; jne 0x1246b

loc_00012463:
or edi, 1
jmp near loc_00012c21  ; jmp 0x12c21

loc_0001246b:
sub esp, 0xc
push esi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
and eax, 3
cmp eax, 2
jne near loc_00012c21  ; jne 0x12c21
jmp short loc_00012463  ; jmp 0x12463

loc_00012485:
test al, 0x24
je short loc_00012492  ; je 0x12492
cmp bl, 1
jne short loc_00012495  ; jne 0x12495
test al, 0x20

loc_00012490:
jne short loc_00012495  ; jne 0x12495

loc_00012492:
or edi, 2

loc_00012495:
cmp dword [ebp - 0x2c], 1
sete dl
mov byte [ebp - 0x3b], dl
cmp bl, 2
jne short loc_000124ae  ; jne 0x124ae
mov eax, edi
or eax, 4
test dl, dl
cmovne edi, eax

loc_000124ae:
cmp dword [ebp - 0x2c], 2
sete cl
mov byte [ebp - 0x3c], cl
test bl, bl
jne short loc_000124c6  ; jne 0x124c6
mov eax, edi
or eax, 4
test cl, cl
cmovne edi, eax

loc_000124c6:
cmp bl, 3
jne short loc_000124d7  ; jne 0x124d7
mov eax, edi
or eax, 8
cmp byte [ebp - 0x3b], 0
cmovne edi, eax

loc_000124d7:
cmp bl, 1
jne short loc_000124e8  ; jne 0x124e8
mov eax, edi
or eax, 8
cmp byte [ebp - 0x3c], 0
cmovne edi, eax

loc_000124e8:
cmp bl, 4
jne short loc_000124f8  ; jne 0x124f8
cmp byte [ebp - 0x3b], 0
je short loc_000124f8  ; je 0x124f8
or edi, 0x10
jmp short loc_0001250c  ; jmp 0x1250c

loc_000124f8:
cmp byte [ebp - 0x3c], 0
je short loc_0001250c  ; je 0x1250c
mov eax, edi
lea edx, [ebx - 2]
or eax, 0x10
cmp dl, 3
cmovbe edi, eax

loc_0001250c:
cmp bl, 5
jne short loc_0001251c  ; jne 0x1251c
cmp byte [ebp - 0x3b], 0
je short loc_0001251c  ; je 0x1251c
or edi, 0x20
jmp short loc_00012548  ; jmp 0x12548

loc_0001251c:
cmp byte [ebp - 0x3c], 0
je short loc_00012542  ; je 0x12542
mov eax, dword [ebp - 0x34]
sub esp, 0xc
add eax, 0x410
push eax
call fcn_00017e4e  ; call 0x17e4e
mov edx, edi
add esp, 0x10
or edx, 0x20
test al, 0xf0
cmove edi, edx
jmp short loc_0001255c  ; jmp 0x1255c

loc_00012542:
cmp byte [ebp - 0x3b], 0
je short loc_0001255c  ; je 0x1255c

loc_00012548:
cmp bl, 6
jne short loc_00012552  ; jne 0x12552
or edi, 0x40
jmp short loc_0001255c  ; jmp 0x1255c

loc_00012552:
mov eax, edi
or al, 0x80
cmp bl, 7
cmove edi, eax

loc_0001255c:
mov eax, dword [ebp - 0x30]
sub esp, 0xc
add eax, 0x1030
push eax
mov dword [ebp - 0x4c], eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
mov dword [ebp - 0x48], 0xff
test eax, 0x400000
je short loc_0001259f  ; je 0x1259f
mov eax, dword [ebp + 8]
cmp byte [eax + 0x1a6], 0
je short loc_0001259f  ; je 0x1259f
call fcn_00015480  ; call 0x15480
mov eax, dword [ebp + 8]
movzx eax, byte [eax + 0x1a7]
mov dword [ebp - 0x48], eax

loc_0001259f:
xor ecx, ecx
mov eax, 0x10000
mov dword [ebp - 0x34], 0
mov edx, 1

loc_000125b2:
cmp byte [ebp - 0x39], cl
jbe short loc_000125d9  ; jbe 0x125d9
imul ebx, ecx, 0x2c
mov esi, dword [ebp + 8]
test byte [esi + ebx + 0x46], 1
je short loc_000125d6  ; je 0x125d6
mov esi, dword [ebp + 0xc]
mov ebx, eax
shl ebx, cl
test dword [esi], ebx
jne short loc_000125d6  ; jne 0x125d6
mov ebx, edx
shl ebx, cl
or dword [ebp - 0x34], ebx

loc_000125d6:
inc ecx
jmp short loc_000125b2  ; jmp 0x125b2

loc_000125d9:
cmp dword [ebp - 0x34], 0
je short loc_000125e6  ; je 0x125e6
mov eax, edi
not eax
and dword [ebp - 0x34], eax

loc_000125e6:
mov eax, dword [ebp + 8]
mov byte [ebp - 0x3a], 0xff
cmp byte [eax + 0x1a9], 0
jne short loc_0001264c  ; jne 0x1264c
xor eax, eax

loc_000125f8:
mov dl, al
cmp al, byte [ebp - 0x39]
jae short loc_00012616  ; jae 0x12616
imul ecx, eax, 0x2c
mov esi, dword [ebp + 8]
cmp byte [esi + ecx + 0x4f], 0
mov cl, byte [ebp - 0x3a]
cmove ecx, edx
inc eax
mov byte [ebp - 0x3a], cl
jmp short loc_000125f8  ; jmp 0x125f8

loc_00012616:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001263f  ; je 0x1263f
mov al, byte [ebp - 0x39]
cmp byte [ebp - 0x3a], al
jbe short loc_0001263f  ; jbe 0x1263f
push eax
push ref_00024f5c  ; push 0x24f5c
push 0x173
push ref_00024f7b  ; push 0x24f7b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001263f:
mov cl, byte [ebp - 0x3a]
mov eax, 1
shl eax, cl
or dword [ebp - 0x34], eax

loc_0001264c:
sub esp, 0xc
lea eax, [ebp - 0x20]
push eax
call fcn_00019797  ; call 0x19797
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0001269f  ; je 0x1269f
test ebx, ebx
jns short loc_0001269f  ; jns 0x1269f
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00012687  ; je 0x12687
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00012687:
push eax
push ref_000206f4  ; push 0x206f4
push 0x181
push ref_00024f7b  ; push 0x24f7b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001269f:
cmp dword [ebp - 0x20], 0x11
je short loc_000126d9  ; je 0x126d9
mov eax, dword [ebp + 8]
mov dword [ebp - 0x38], 0
cmp byte [eax], 9
jbe short loc_000126e0  ; jbe 0x126e0
mov edx, dword [ebp + 8]
mov al, byte [eax + 0x1aa]
movzx ecx, byte [edx + 0x1ab]
shr al, 1
movzx eax, al
mov dword [ebp - 0x38], ecx
and dword [ebp - 0x38], 7
shl dword [ebp - 0x38], 7
or dword [ebp - 0x38], eax
jmp short loc_000126e0  ; jmp 0x126e0

loc_000126d9:
mov dword [ebp - 0x38], 0x3e8

loc_000126e0:
movzx eax, word [ebp - 0x3e]
mov dword [ebp - 0x2c], 0
mov dword [ebp - 0x44], 0
mov dword [ebp - 0x58], eax

loc_000126f5:
mov edx, dword [ebp - 0x2c]
mov al, byte [ebp - 0x39]
mov byte [ebp - 0x3e], dl
cmp dl, al
jae near loc_00012ac0  ; jae 0x12ac0
push eax
push eax
push dword [ebp - 0x2c]
push dword [ebp - 0x30]
call fcn_0001c39f  ; call 0x1c39f
add esp, 0xc
movzx eax, al
push eax
mov eax, dword [ebp + 8]
push 0x1c
movzx eax, byte [eax + 1]
push eax
call fcn_00016c9a  ; call 0x16c9a
mov ebx, eax
call fcn_0001c0bd  ; call 0x1c0bd
add esp, 0x10
cmp eax, 2
jne short loc_00012774  ; jne 0x12774
cmp byte [ebp - 0x3c], 0
je short loc_00012774  ; je 0x12774
mov edx, dword [ebp + 8]
mov eax, 0x2000430
cmp byte [edx], 7
jbe short loc_00012762  ; jbe 0x12762
imul eax, dword [ebp - 0x2c], 0x2c
mov al, byte [edx + eax + 0x46]
shr al, 7
cmp al, 1
sbb eax, eax
and eax, 0xfffffffd
add eax, 0x2000433

loc_00012762:
push esi
push esi
push eax
lea eax, [ebx + 0x418]
push eax
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10

loc_00012774:
cmp byte [ebp - 0x3e], 0
jne near loc_00012869  ; jne 0x12869
mov esi, dword [ebp - 0x30]
push eax
push eax
push 0
push esi
call fcn_0001c39f  ; call 0x1c39f
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
call fcn_00009ecd  ; call 0x9ecd
add esp, 0x20
mov esi, eax
call fcn_00015480  ; call 0x15480
test al, al
je short loc_000127f0  ; je 0x127f0
test esi, esi
jns short loc_000127f0  ; jns 0x127f0
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000127d8  ; je 0x127d8
push eax
push esi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000127d8:
push esi
push ref_000206f4  ; push 0x206f4
push 0x1ab
push ref_00024f7b  ; push 0x24f7b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000127f0:
mov esi, dword [ebp - 0x30]
push ecx
push ecx
push 0
push esi
or dword [ebp - 0x1c], 0x300000
call fcn_0001c39f  ; call 0x1c39f
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
call fcn_00009ecd  ; call 0x9ecd
add esp, 0x20
mov esi, eax
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00012869  ; je 0x12869
test esi, esi
jns short loc_00012869  ; jns 0x12869
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00012851  ; je 0x12851
push edx
push esi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00012851:
push eax
push ref_000206f4  ; push 0x206f4
push 0x1b5
push ref_00024f7b  ; push 0x24f7b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00012869:
mov cl, byte [ebp - 0x2c]
mov esi, 1
shl esi, cl
mov eax, esi
and eax, edi
mov dword [ebp - 0x50], eax
jne near loc_00012c4c  ; jne 0x12c4c
push eax
push eax
push 0x100
lea eax, [ebx + 0x42]
push eax
call fcn_00018927  ; call 0x18927
lea edx, [ebx + 0x5a]
mov dword [esp], edx
mov dword [ebp - 0x54], edx
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
mov edx, dword [ebp - 0x54]
test al, 0x40
jne near loc_00012939  ; jne 0x12939
imul eax, dword [ebp - 0x2c], 0x2c
mov ecx, dword [ebp + 8]
test byte [ecx + eax + 0x46], 8
jne short loc_00012939  ; jne 0x12939
mov eax, dword [ebp - 0x48]
cmp dword [ebp - 0x2c], eax
je short loc_00012939  ; je 0x12939
push eax
mov esi, 0x1f4
push eax
push 0x4000000
lea eax, [ebx + 0x338]
push eax
call fcn_00018b14  ; call 0x18b14
lea eax, [ebx + 0x328]
add esp, 0x10
mov dword [ebp - 0x54], eax

loc_000128e6:
sub esp, 0xc
push dword [ebp - 0x54]
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
and eax, 0xff000000
cmp eax, 0x1000000
jne short loc_00012927  ; jne 0x12927

loc_00012900:
push eax
push eax
push 0x8000000
lea eax, [ebx + 0x408]
push eax
call fcn_00018b14  ; call 0x18b14
mov cl, byte [ebp - 0x2c]
mov eax, 0x10000
mov edx, dword [ebp + 0xc]
shl eax, cl
or dword [edx], eax
jmp near loc_00012a55  ; jmp 0x12a55

loc_00012927:
sub esp, 0xc
push 0x64
call fcn_0001bb03  ; call 0x1bb03
add esp, 0x10
dec esi
jne short loc_000128e6  ; jne 0x128e6
jmp short loc_00012900  ; jmp 0x12900

loc_00012939:
test dword [ebp - 0x34], esi
jne short loc_00012972  ; jne 0x12972
sub esp, 0xc
push edx
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test al, 0x40
je short loc_0001295e  ; je 0x1295e
push eax
push eax
push 0x10
lea eax, [ebx + 0x50]
push eax
call fcn_00018927  ; call 0x18927
add esp, 0x10

loc_0001295e:
mov cl, byte [ebp - 0x2c]
mov eax, 0x10000
mov edx, dword [ebp + 0xc]
shl eax, cl
or dword [edx], eax
jmp near loc_00012a58  ; jmp 0x12a58

loc_00012972:
sub esp, 0xc
lea eax, [ebx + 0xe0]
push eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
cmp dword [ebp - 0x20], 0x11
jne short loc_0001298e  ; jne 0x1298e
test al, 2
je short loc_000129bc  ; je 0x129bc

loc_0001298e:
lea esi, [ebx + 0x52]

loc_00012991:
mov eax, dword [ebp - 0x38]
cmp dword [ebp - 0x44], eax
jae short loc_000129bc  ; jae 0x129bc
sub esp, 0xc
push esi
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test ah, 0x20
jne short loc_000129bc  ; jne 0x129bc
sub esp, 0xc
push 0x64
call fcn_0001bb03  ; call 0x1bb03
add esp, 0x10
inc dword [ebp - 0x44]
jmp short loc_00012991  ; jmp 0x12991

loc_000129bc:
sub esp, 0xc
mov eax, dword [ebp - 0x2c]
push dword [ebp - 0x30]
push dword [ebp - 0x58]
push dword [ebp + 8]
push eax
push eax
call fcn_0001193a  ; call 0x1193a
add esp, 0x20
test eax, eax
js short loc_000129fc  ; js 0x129fc
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000129fc  ; je 0x129fc
mov eax, dword [ebp - 0x2c]
push dword [ebp - 0x34]
inc eax
push eax
push ref_00024fa9  ; push 0x24fa9
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000129fc:
imul eax, dword [ebp - 0x2c], 0x2c
mov ecx, dword [ebp + 8]
test byte [ecx + eax + 0x46], 0x40
je short loc_00012a58  ; je 0x12a58
sub esp, 0xc
lea eax, [ebx + 0x328]
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
and eax, 0x780000
cmp eax, 0x380000
jne short loc_00012a58  ; jne 0x12a58
push eax
push eax
push 0x10
lea esi, [ebx + 0x50]
push esi
call fcn_00018730  ; call 0x18730
pop eax
pop edx
lea eax, [ebx + 0xe8]
push 0x2000
push eax
call fcn_00018927  ; call 0x18927
pop ecx
pop eax
push 0xef
push esi
call fcn_0001875d  ; call 0x1875d

loc_00012a55:
add esp, 0x10

loc_00012a58:
sub esp, 0xc
push ebx
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
inc eax
je short loc_00012ab8  ; je 0x12ab8
cmp byte [ebp - 0x3b], 0
je short loc_00012a73  ; je 0x12a73
test byte [ebp - 0x3e], 0xfb
jmp short loc_00012a87  ; jmp 0x12a87

loc_00012a73:
cmp byte [ebp - 0x3c], 0
je short loc_00012a9f  ; je 0x12a9f
mov cl, byte [ebp - 0x3e]
mov al, cl
sub eax, 4
cmp al, 1
jbe short loc_00012a89  ; jbe 0x12a89
test cl, cl

loc_00012a87:
jne short loc_00012a9f  ; jne 0x12a9f

loc_00012a89:
push eax
push eax
push 0xf3
lea eax, [ebx + 0xf7]
push eax
call fcn_0001875d  ; call 0x1875d
add esp, 0x10

loc_00012a9f:
cmp dword [ebp - 0x50], 0
jne short loc_00012ab8  ; jne 0x12ab8
push esi
add ebx, 0xd4
push esi
push 2
push ebx
call fcn_00018730  ; call 0x18730
add esp, 0x10

loc_00012ab8:
inc dword [ebp - 0x2c]
jmp near loc_000126f5  ; jmp 0x126f5

loc_00012ac0:
mov eax, dword [ebp + 8]
cmp byte [eax + 0x1a9], 0
jne short loc_00012afe  ; jne 0x12afe
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
je short loc_00012afe  ; je 0x12afe
mov cl, byte [ebp - 0x3a]
mov eax, 0x10000
shl eax, cl
not eax
and eax, edx
mov edx, dword [ebp + 0xc]
mov dword [edx], eax

loc_00012afe:
sub esp, 0xc
push dword [ebp - 0x4c]
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test eax, 0x400000
je short loc_00012b66  ; je 0x12b66
mov eax, dword [ebp + 8]
cmp byte [eax + 0x1a6], 0
je short loc_00012b66  ; je 0x12b66
movzx eax, byte [eax + 0x1a7]
mov ecx, dword [ebp + 8]
imul edx, eax, 0x2c
test byte [ecx + edx + 0x46], 1
je short loc_00012b66  ; je 0x12b66
push edx
push edx
push eax
push dword [ebp - 0x30]
call fcn_0001c39f  ; call 0x1c39f
add esp, 0xc
movzx eax, al
push eax
mov eax, dword [ebp + 8]
push 0x1c
movzx eax, byte [eax + 1]
push eax
call fcn_00016c9a  ; call 0x16c9a
pop ecx
pop ebx
push 3
add eax, 0xec
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10

loc_00012b66:
mov edx, dword [ebp + 8]
mov eax, dword [ebp + 0xc]
cmp byte [edx + 0x1a8], 0
mov eax, dword [eax]
je short loc_00012b95  ; je 0x12b95
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
call fcn_00011e74  ; call 0x11e74
add esp, 0x20

loc_00012b95:
xor ebx, ebx

loc_00012b97:
cmp byte [ebp - 0x39], bl
jbe short loc_00012bd7  ; jbe 0x12bd7
push eax
mov eax, dword [ebp + 8]
push ebx
push 0x1c
movzx eax, byte [eax + 1]
push eax
call fcn_00016c9a  ; call 0x16c9a
mov dword [esp], eax
mov esi, eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
inc ax
je short loc_00012bd4  ; je 0x12bd4
push edi
add esi, 0x320
push edi
push 0x1800000
push esi
call fcn_00018b14  ; call 0x18b14
add esp, 0x10

loc_00012bd4:
inc ebx
jmp short loc_00012b97  ; jmp 0x12b97

loc_00012bd7:
mov edi, dword [ebp - 0x30]
push edx
push edx
push 0x80000080
mov eax, edi
add eax, 0x2314
push eax
call fcn_00018b14  ; call 0x18b14
mov eax, edi
pop ecx
add eax, 0x1114
pop ebx
push 0xc000
push eax
call fcn_00018927  ; call 0x18927
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_00012c60  ; je 0x12c60
push eax
push eax
push ref_00024fdb  ; push 0x24fdb
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp short loc_00012c60  ; jmp 0x12c60

loc_00012c21:
sub esp, 0xc
push esi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test al, 0xc
je near loc_00012492  ; je 0x12492
sub esp, 0xc
push esi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
and eax, 0xc
cmp eax, 8
jmp near loc_00012490  ; jmp 0x12490

loc_00012c4c:
mov cl, byte [ebp - 0x2c]
mov eax, 0x10000
shl eax, cl
mov ecx, dword [ebp + 0xc]
or dword [ecx], eax
jmp near loc_00012a58  ; jmp 0x12a58

loc_00012c60:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00012c6a:
push ebp
mov ebp, esp
push edi
push esi
push ebx
mov ebx, 0xa
sub esp, 0xc
mov edi, dword [ebp + 0xc]
mov esi, dword [ebp + 0x10]

loc_00012c7e:
sub esp, 0xc
push dword [ebp + 8]
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
and eax, edi
cmp ax, si
je short loc_00012caa  ; je 0x12caa
sub esp, 0xc
push 0x64
call fcn_0001bb03  ; call 0x1bb03
add esp, 0x10
dec ebx
jne short loc_00012c7e  ; jne 0x12c7e
mov eax, 0x80000012
jmp short loc_00012cac  ; jmp 0x12cac

loc_00012caa:
xor eax, eax

loc_00012cac:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00012cb4:
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
call fcn_00012c6a  ; call 0x12c6a
add esp, 0x10
test eax, eax
jns short loc_00012cf0  ; jns 0x12cf0
call fcn_00015479  ; call 0x15479
test al, al
je near loc_00012d7a  ; je 0x12d7a
push eax
push eax
push ref_00024ff3  ; push 0x24ff3
jmp short loc_00012d6d  ; jmp 0x12d6d

loc_00012cf0:
mov eax, dword [ebp + 0xc]
push ecx
push ecx
push dword [eax]
lea eax, [esi + 0x60]
push eax
call fcn_00017e8f  ; call 0x17e8f
pop edi
pop eax
push 3
push ebx
call fcn_00018927  ; call 0x18927
add esp, 0xc
push 0
push 1
push ebx
call fcn_00012c6a  ; call 0x12c6a
add esp, 0x10
mov edi, eax
test eax, eax
jns short loc_00012d2f  ; jns 0x12d2f
push edx
push edx
push 0xfffe
push ebx
call fcn_00018954  ; call 0x18954
jmp short loc_00012d58  ; jmp 0x12d58

loc_00012d2f:
xor edi, edi
cmp byte [ebp - 0x1c], 1
jne short loc_00012d7f  ; jne 0x12d7f
sub esp, 0xc
push ebx
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test al, 2
je short loc_00012d5d  ; je 0x12d5d
sub esp, 0xc
add esi, 0x64
push esi
call fcn_00017e4e  ; call 0x17e4e
mov edx, dword [ebp + 0xc]
mov dword [edx], eax

loc_00012d58:
add esp, 0x10
jmp short loc_00012d7f  ; jmp 0x12d7f

loc_00012d5d:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00012d7a  ; je 0x12d7a
push eax
push eax
push ref_00025022  ; push 0x25022

loc_00012d6d:
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00012d7a:
mov edi, 0x80000007

loc_00012d7f:
lea esp, [ebp - 0xc]
mov eax, edi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00012d89:
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
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00012dc5  ; je 0x12dc5
cmp dword [ebp + 8], 0
jne short loc_00012dc5  ; jne 0x12dc5
push eax
push ref_00025045  ; push 0x25045
push 0x96
push ref_00025059  ; push 0x25059
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00012dc5:
xor ebx, ebx
lea esi, [ebp - 0x1c]

loc_00012dca:
push esi
push 0
push ebx
push ref_0002912c  ; push 0x2912c
mov dword [ebp - 0x1c], 0
call fcn_0001975d  ; call 0x1975d
add esp, 0x10
test eax, eax
jne short loc_00012e18  ; jne 0x12e18
mov edx, dword [ebp - 0x1c]
test edx, edx
je short loc_00012e18  ; je 0x12e18
movzx ecx, word [edx]
movzx edi, word [edx + 2]
shl ecx, 0x10
or ecx, edi
cmp ecx, dword [ebp + 8]
jne short loc_00012e18  ; jne 0x12e18
mov cl, byte [edx + 4]
cmp cl, 0xff
je short loc_00012e0b  ; je 0x12e0b
cmp cl, byte [ebp - 0x29]
jne short loc_00012e18  ; jne 0x12e18

loc_00012e0b:
mov dl, byte [edx + 5]
cmp dl, 0xff
je short loc_00012e1d  ; je 0x12e1d
cmp dl, byte [ebp - 0x2a]
je short loc_00012e1d  ; je 0x12e1d

loc_00012e18:
inc ebx
test eax, eax
je short loc_00012dca  ; je 0x12dca

loc_00012e1d:
mov eax, dword [ebp - 0x1c]
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00012e28:
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
call fcn_00016c9a  ; call 0x16c9a
add eax, 2
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
lea edx, [eax + 0x63bf]
cmp dx, 6
jbe short loc_00012e66  ; jbe 0x12e66
add ax, 0x633f
cmp ax, 0xa
ja short loc_00012ea9  ; ja 0x12ea9

loc_00012e66:
push ecx
push 0
push 0x1b
movzx eax, byte [ebx + 1]
push eax
call fcn_00016c9a  ; call 0x16c9a
mov ebx, eax
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_00012e94  ; je 0x12e94
push edx
push edx
push ref_00025081  ; push 0x25081
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00012e94:
push eax
mov eax, esi
movzx esi, al
add ebx, 0x42
push esi
push 0x3f
push ebx
call fcn_0001878a  ; call 0x1878a
add esp, 0x10

loc_00012ea9:
lea esp, [ebp - 8]
xor eax, eax
pop ebx
pop esi
pop ebp
ret

fcn_00012eb2:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x4c
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00012ed5  ; je 0x12ed5
push eax
push eax
push ref_000250c6  ; push 0x250c6
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00012ed5:
mov eax, dword [ebp + 8]
mov esi, dword [eax + 4]
call fcn_0001bfbb  ; call 0x1bfbb
lea edi, [esi + 0x2030]
mov dword [ebp - 0x2c], eax
push eax
mov eax, dword [ebp + 8]
push 0
push 0x1b
movzx eax, byte [eax + 1]
push eax
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 0
push 0x1f
mov ebx, eax
mov eax, dword [ebp + 8]
lea esi, [ebx + 0x120]
movzx eax, byte [eax + 1]
push eax
call fcn_00016c9a  ; call 0x16c9a
add eax, 2
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
mov dword [esp], edi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test eax, eax
jns short loc_00012f6f  ; jns 0x12f6f
sub esp, 0xc
push edi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0xc
and eax, 0xfe
or eax, 0x2000000
push eax
push 0xf8ffff01
push esi
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp dword [ebp - 0x2c], 1
jne short loc_00012f6f  ; jne 0x12f6f
push eax
push eax
push 0xf7ff
lea eax, [ebx + 0x78]
push eax
call fcn_00018954  ; call 0x18954
add esp, 0x10

loc_00012f6f:
sub esp, 0xc
push esi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test eax, 0x7000000
je short loc_00012fc3  ; je 0x12fc3
push eax
push eax
push 0xffffff01
lea eax, [ebx + 0x114]
push eax
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10
cmp dword [ebp - 0x2c], 1
jne short loc_00012fad  ; jne 0x12fad
push edi
push edi
push 0x80000000
push esi
call fcn_00018b14  ; call 0x18b14
jmp short loc_00012fc0  ; jmp 0x12fc0

loc_00012fad:
cmp dword [ebp - 0x2c], 2
jne short loc_00012fc3  ; jne 0x12fc3
push ecx
push ecx
push 0x7fffffff
push esi
call fcn_00018b3e  ; call 0x18b3e

loc_00012fc0:
add esp, 0x10

loc_00012fc3:
mov eax, dword [ebp + 8]
lea ecx, [ebx + 0x10]
mov dword [ebp - 0x40], ecx
mov eax, dword [eax + 0x1a]
push edx
push edx
push eax
push ecx
mov dword [ebp - 0x34], eax
call fcn_00017e8f  ; call 0x17e8f
lea eax, [ebx + 0x14]
pop ecx
pop esi
mov dword [ebp - 0x44], eax
push 0
push eax
call fcn_00017e8f  ; call 0x17e8f
lea eax, [ebx + 4]
pop edi
pop edx
mov dword [ebp - 0x48], eax
push 2
push eax
call fcn_00018927  ; call 0x18927
add esp, 0x10
cmp dword [ebp - 0x2c], 1
jne short loc_0001302e  ; jne 0x1302e
push esi
push esi
push 0x10
lea eax, [ebx + 0x43]
push eax
call fcn_00018730  ; call 0x18730
pop edi
pop eax
lea eax, [ebx + 0xc0]
push 0x20000
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10
mov eax, 0x4000
jmp short loc_0001304e  ; jmp 0x1304e

loc_0001302e:
xor eax, eax
cmp dword [ebp - 0x2c], 2
jne short loc_0001304e  ; jne 0x1304e
push ecx
push ecx
push 0xbf
lea eax, [ebx + 0x43]
push eax
call fcn_0001875d  ; call 0x1875d
add esp, 0x10
mov eax, 0x1000000

loc_0001304e:
push edx
push edx
push eax
lea eax, [ebx + 0xc4]
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10
cmp dword [ebp - 0x2c], 1
jne short loc_0001307c  ; jne 0x1307c
push eax
push eax
push 0x7fffffff
lea eax, [ebx + 0xd0]
push eax
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10

loc_0001307c:
mov eax, dword [ebp + 8]
cmp byte [eax + 0x372], 0
jne short loc_00013097  ; jne 0x13097
push eax
push eax
push 0x7f
lea eax, [ebx + 0x4d]
push eax
call fcn_0001875d  ; call 0x1875d
jmp short loc_000130c3  ; jmp 0x130c3

loc_00013097:
mov eax, dword [ebp + 8]
cmp byte [eax + 0x373], 0
je short loc_000130c6  ; je 0x130c6
sub esp, 0xc
lea eax, [ebx + 0x4d]
push eax
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
test al, 1
jne short loc_000130c6  ; jne 0x130c6
push edi
push edi
push 1
lea eax, [ebx + 0x4c]
push eax
call fcn_00018730  ; call 0x18730

loc_000130c3:
add esp, 0x10

loc_000130c6:
cmp dword [ebp - 0x2c], 2
jne short loc_000130f9  ; jne 0x130f9
push eax
push eax
mov eax, dword [ebp - 0x34]
push 1
add eax, 0x12
push eax
call fcn_00018927  ; call 0x18927
pop eax
pop edx
lea eax, [ebx + 0x41]
push 1
push eax
call fcn_00018730  ; call 0x18730
lea eax, [ebx + 0x42]
pop ecx
pop esi
push 4
push eax
call fcn_00018730  ; call 0x18730
add esp, 0x10

loc_000130f9:
mov edi, dword [ebp - 0x34]
push eax
push eax
push 1
lea esi, [edi + 8]
push esi
call fcn_00018b14  ; call 0x18b14
add esp, 0xc
push 1
push 1
push esi
call fcn_00012c6a  ; call 0x12c6a
mov dword [esp], edi
call fcn_00017dc2  ; call 0x17dc2
pop edx
pop ecx
movzx eax, ax
push eax
push edi
call fcn_00017e04  ; call 0x17e04
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
call fcn_00018730  ; call 0x18730
pop ecx
pop edi
push 0xfffffffffffffffe
push esi
call fcn_00018b3e  ; call 0x18b3e
add esp, 0xc
push 0
push 1
push esi
call fcn_00012c6a  ; call 0x12c6a
add esp, 0x10
mov edi, eax
test eax, eax
jns short loc_00013180  ; jns 0x13180
call fcn_00015479  ; call 0x15479
test al, al
je near loc_00013497  ; je 0x13497
push eax
push eax
push ref_000250dd  ; push 0x250dd
jmp short loc_000131c6  ; jmp 0x131c6

loc_00013180:
push edi
push edi
push 1
push esi
call fcn_00018b14  ; call 0x18b14
mov eax, dword [ebp + 8]
movzx eax, word [eax + 0x374]
mov dword [esp], eax
call fcn_0001bb03  ; call 0x1bb03
add esp, 0xc
push 1
push 1
push esi
call fcn_00012c6a  ; call 0x12c6a
add esp, 0x10
mov edi, eax
test eax, eax
jns short loc_000131d8  ; jns 0x131d8
call fcn_00015479  ; call 0x15479
test al, al
je near loc_00013497  ; je 0x13497
push ecx
push ecx
push ref_00025118  ; push 0x25118

loc_000131c6:
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp near loc_00013497  ; jmp 0x13497

loc_000131d8:
cmp dword [ebp - 0x2c], 2
mov edx, 3
mov eax, 0xf
mov edi, 0xa
cmove eax, edx
xor edx, edx
mov word [ebp - 0x38], ax

loc_000131f4:
sub esp, 0xc
push dword [ebp - 0x3c]
mov dword [ebp - 0x4c], edx
call fcn_00017d8b  ; call 0x17d8b
mov edx, dword [ebp - 0x4c]
add esp, 0x10
mov byte [ebp - 0x2d], al
mov al, byte [ebp - 0x38]
and byte [ebp - 0x2d], al
mov al, byte [ebp - 0x2d]
cmp al, dl
jne short loc_0001321c  ; jne 0x1321c
test al, al
jne short loc_0001326b  ; jne 0x1326b

loc_0001321c:
sub esp, 0xc
push 0x64
call fcn_0001bb03  ; call 0x1bb03
add esp, 0x10
dec edi
je short loc_00013231  ; je 0x13231
mov dl, byte [ebp - 0x2d]
jmp short loc_000131f4  ; jmp 0x131f4

loc_00013231:
cmp byte [ebp - 0x2d], 0
jne short loc_0001326b  ; jne 0x1326b
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00013254  ; je 0x13254
push edx
push edx
push ref_00025153  ; push 0x25153
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00013254:
push eax
mov edi, 0x80000007
push eax
push 0xfffffffffffffffe
push esi
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10
jmp near loc_00013497  ; jmp 0x13497

loc_0001326b:
mov eax, dword [ebp + 8]
cmp byte [eax + 0x371], 1
jne short loc_0001328a  ; jne 0x1328a
push eax
add ebx, 0x54
push eax
push 0x100
push ebx
call fcn_00018b14  ; call 0x18b14
add esp, 0x10

loc_0001328a:
xor eax, eax
cmp dword [ebp - 0x2c], 2
mov byte [ebp - 0x2c], 0
setne al
lea eax, [eax + eax + 2]
mov word [ebp - 0x3c], ax

loc_0001329f:
movzx eax, byte [ebp - 0x2c]
cmp ax, word [ebp - 0x3c]
jae near loc_00013495  ; jae 0x13495
test byte [ebp - 0x2d], 1
jne short loc_000132d0  ; jne 0x132d0
call fcn_00015479  ; call 0x15479
test al, al
je near loc_0001348a  ; je 0x1348a
push eax
movzx eax, byte [ebp - 0x2c]
push eax
push ref_00025172  ; push 0x25172
jmp near loc_000133d5  ; jmp 0x133d5

loc_000132d0:
mov eax, dword [ebp + 8]
cmp byte [eax + 0x371], 0
je short loc_000132fb  ; je 0x132fb
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
call fcn_00018927  ; call 0x18927
add esp, 0x10

loc_000132fb:
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
call fcn_00012cb4  ; call 0x12cb4
add esp, 0x10
mov edi, eax
test eax, eax
jns short loc_00013340  ; jns 0x13340
call fcn_00015479  ; call 0x15479
test al, al
je near loc_00013497  ; je 0x13497
push eax
push eax
push ref_0002518f  ; push 0x2518f
jmp near loc_000131c6  ; jmp 0x131c6

loc_00013340:
mov eax, dword [ebp - 0x38]
push esi
push 1
or eax, 0xf0002
mov dword [ebp - 0x20], eax
lea eax, [ebp - 0x20]
push eax
push dword [ebp - 0x34]
call fcn_00012cb4  ; call 0x12cb4
add esp, 0x10
mov edi, eax
test eax, eax
jns short loc_0001337c  ; jns 0x1337c
call fcn_00015479  ; call 0x15479
test al, al
je near loc_00013497  ; je 0x13497
push ecx
push ecx
push ref_000251c3  ; push 0x251c3
jmp near loc_000131c6  ; jmp 0x131c6

loc_0001337c:
mov eax, dword [ebp - 0x20]
movzx eax, ah
mov dword [ebp - 0x20], eax
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000133a7  ; je 0x133a7
sub esp, 0xc
push dword [ebp - 0x20]
push dword [ebp - 0x24]
push ebx
push ref_000251ef  ; push 0x251ef
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_000133a7:
movzx eax, byte [ebp - 0x20]
push edx
push ebx
push eax
push dword [ebp - 0x24]
call fcn_00012d89  ; call 0x12d89
add esp, 0x10
mov esi, eax
test eax, eax
jne short loc_000133e7  ; jne 0x133e7
call fcn_00015479  ; call 0x15479
test al, al
je near loc_0001348a  ; je 0x1348a
push eax
push dword [ebp - 0x24]
push ref_0002521f  ; push 0x2521f

loc_000133d5:
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp near loc_0001348a  ; jmp 0x1348a

loc_000133e7:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00013418  ; je 0x13418
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
push ref_00025265  ; push 0x25265
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_00013418:
xor ebx, ebx

loc_0001341a:
movzx eax, word [esi + 6]
cmp ebx, eax
jae short loc_0001348a  ; jae 0x1348a
mov eax, dword [esi + ebx*4 + 0xc]
mov dword [ebp - 0x1c], eax
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00013452  ; je 0x13452
mov eax, dword [ebp - 0x1c]
shr eax, 0x1c
je short loc_00013452  ; je 0x13452
push eax
push ref_000252bb  ; push 0x252bb
push 0x26a
push ref_00025059  ; push 0x25059
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00013452:
mov eax, dword [ebp - 0x38]
or dword [ebp - 0x1c], eax
push eax
push 0
lea eax, [ebp - 0x1c]
push eax
push dword [ebp - 0x34]
call fcn_00012cb4  ; call 0x12cb4
add esp, 0x10
mov edi, eax
test eax, eax
jns short loc_00013487  ; jns 0x13487
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00013497  ; je 0x13497
push eax
push dword [ebp - 0x24]
push ref_000252d5  ; push 0x252d5
jmp near loc_000131c6  ; jmp 0x131c6

loc_00013487:
inc ebx
jmp short loc_0001341a  ; jmp 0x1341a

loc_0001348a:
inc byte [ebp - 0x2c]
shr byte [ebp - 0x2d], 1
jmp near loc_0001329f  ; jmp 0x1329f

loc_00013495:
xor edi, edi

loc_00013497:
push edx
push edx
push 0xfffd
push dword [ebp - 0x48]
call fcn_00018954  ; call 0x18954
pop ecx
pop ebx
push 0
push dword [ebp - 0x40]
call fcn_00017e8f  ; call 0x17e8f
pop esi
pop eax
push 0
push dword [ebp - 0x44]
call fcn_00017e8f  ; call 0x17e8f
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_000134db  ; je 0x134db
push eax
push eax
push ref_00025309  ; push 0x25309
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000134db:
lea esp, [ebp - 0xc]
mov eax, edi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000134e5:
push ebp
mov ebp, esp
push edi
push esi
push ebx
mov ebx, 0xc8
sub esp, 0xc
mov esi, dword [ebp + 0xc]
lea edi, [esi + 0x20]

loc_000134f9:
sub esp, 0xc
push edi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test al, 2
je short loc_00013519  ; je 0x13519
sub esp, 0xc
push 0x64
call fcn_0001bb03  ; call 0x1bb03
add esp, 0x10
dec ebx
jne short loc_000134f9  ; jne 0x134f9

loc_00013519:
sub esp, 0xc
push edi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test al, 2
jne short loc_00013542  ; jne 0x13542
add esi, 0x60
mov dword [ebp + 8], esi
mov dword [ebp + 0xc], 1
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017e8f  ; jmp 0x17e8f

loc_00013542:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001354a:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x18
mov ebx, dword [ebp + 0x14]
lea esi, [ebx + 0x84]
push esi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test al, 1
je short loc_00013592  ; je 0x13592

loc_00013569:
sub esp, 0xc
push esi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test al, 1
je short loc_000135d7  ; je 0x135d7
sub ebx, 0xffffff80
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], 2
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018927  ; jmp 0x18927

loc_00013592:
sub esp, 0xc
lea edi, [ebx + 0x80]
push edi
call fcn_00017e4e  ; call 0x17e4e
pop edx
pop ecx
and eax, 0xfffffffe
push eax
push edi
mov edi, 0xc8
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10

loc_000135b5:
sub esp, 0xc
push esi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test al, 1
jne short loc_00013569  ; jne 0x13569
sub esp, 0xc
push 0x64
call fcn_0001bb03  ; call 0x1bb03
add esp, 0x10
dec edi
jne short loc_000135b5  ; jne 0x135b5
jmp short loc_00013569  ; jmp 0x13569

loc_000135d7:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000135df:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x2c
movzx eax, byte [ebp + 0x10]
mov byte [ebp - 0x19], 0
mov dword [ebp - 0x2c], eax

loc_000135f3:
call fcn_0001c245  ; call 0x1c245
cmp byte [ebp - 0x19], al
jae near loc_000137f4  ; jae 0x137f4
movzx esi, byte [ebp - 0x19]
push ecx
movzx eax, byte [esi + esi + ref_000204f1]  ; movzx eax, byte [esi + esi + 0x204f1]
push eax
movzx eax, byte [esi + esi + ref_000204f0]  ; movzx eax, byte [esi + esi + 0x204f0]
push eax
push dword [ebp - 0x2c]
mov dword [ebp - 0x28], eax
call fcn_00016c9a  ; call 0x16c9a
add esp, 0x10
mov ebx, eax
mov eax, dword [ebp + 8]
lea eax, [eax + esi*8]
cmp byte [eax], 0
mov dword [ebp - 0x24], eax
jne short loc_00013650  ; jne 0x13650
push edi
push edi
push 0
lea eax, [ebx + 0x10]
add ebx, 4
push eax
call fcn_00017e8f  ; call 0x17e8f
pop eax
pop edx
push 0
push ebx
jmp near loc_000137af  ; jmp 0x137af

loc_00013650:
mov eax, dword [ebp + 8]
cmp byte [eax + 0x13], 1
jne short loc_0001366c  ; jne 0x1366c
push esi
push esi
push 0xfffc
lea eax, [ebx + 0x78]
push eax
call fcn_00018954  ; call 0x18954
add esp, 0x10

loc_0001366c:
sub esp, 0xc
lea edi, [ebx + 0x10]
push edi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test eax, eax
jne short loc_000136af  ; jne 0x136af
sub esp, 0xc
lea eax, [ebx + 4]
push eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test al, 2
jne short loc_000136af  ; jne 0x136af
push ecx
push ecx
push dword [ebp + 0xc]
push edi
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10
mov esi, dword [ebp + 0xc]
mov byte [ebp - 0x1a], 0
mov word [ebp - 0x1c], 0
jmp short loc_000136d0  ; jmp 0x136d0

loc_000136af:
sub esp, 0xc
push edi
call fcn_00017e4e  ; call 0x17e4e
mov esi, eax
lea eax, [ebx + 4]
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
mov byte [ebp - 0x1a], 1
mov word [ebp - 0x1c], ax

loc_000136d0:
push edx
push edx
lea eax, [ebx + 4]
push 6
push eax
mov dword [ebp - 0x20], eax
call fcn_00018927  ; call 0x18927
add esp, 0x10
cmp byte [ebp - 0x1a], 0
jne short loc_000136f9  ; jne 0x136f9
push eax
push eax
push 2
lea eax, [esi + 0x20]
push eax
call fcn_00018927  ; call 0x18927
add esp, 0x10

loc_000136f9:
push eax
push eax
push 1
lea edx, [ebx + 0x80]
push edx
mov dword [ebp - 0x34], edx
call fcn_00018927  ; call 0x18927
lea ecx, [esi + 4]
push 0
push 0xf
push 0xc
push ecx
mov dword [ebp - 0x30], ecx
call fcn_00018bc6  ; call 0x18bc6
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
call fcn_00018bc6  ; call 0x18bc6
pop eax
pop edx
mov edx, dword [ebp - 0x34]
push 0xfffe
push edx
call fcn_00018954  ; call 0x18954
lea edx, [ebx + 0x78]
mov dword [esp], edx
mov dword [ebp - 0x24], edx
call fcn_00017e4e  ; call 0x17e4e
pop ecx
pop edx
mov edx, dword [ebp - 0x24]
or eax, 4
push eax
push edx
call fcn_00017e8f  ; call 0x17e8f
pop ecx
pop eax
lea eax, [ebx + 0x7c]
add ebx, 0x8c
push 0x4080
push eax
call fcn_00018b14  ; call 0x18b14
mov dword [esp], ebx
call fcn_00017e4e  ; call 0x17e4e
pop edx
pop ecx
and eax, 0xfbfff4ff
or eax, 0x20400
push eax
push ebx
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10
cmp byte [ebp - 0x1a], 0
je short loc_000137b6  ; je 0x137b6
movzx eax, word [ebp - 0x1c]
push esi
push esi
push eax
push dword [ebp - 0x20]

loc_000137af:
call fcn_00017e04  ; call 0x17e04
jmp short loc_000137e9  ; jmp 0x137e9

loc_000137b6:
mov eax, dword [ebp + 8]
cmp byte [eax + 0xb5], 0
je short loc_000137d0  ; je 0x137d0
push ebx
push ebx
push esi
push dword [ebp - 0x28]
call fcn_000134e5  ; call 0x134e5
add esp, 0x10

loc_000137d0:
push eax
push eax
push 0xfff9
push dword [ebp - 0x20]
call fcn_00018954  ; call 0x18954
pop edx
pop ecx
push 0
push edi
call fcn_00017e8f  ; call 0x17e8f

loc_000137e9:
add esp, 0x10
inc byte [ebp - 0x19]
jmp near loc_000135f3  ; jmp 0x135f3

loc_000137f4:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000137fe:
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
call fcn_0001bfbb  ; call 0x1bfbb
mov esi, eax
call fcn_0001c0bd  ; call 0x1c0bd
mov dword [ebp - 0x1c], eax
call fcn_0001bbfd  ; call 0x1bbfd
mov eax, dword [ebp - 0x20]
cmp byte [eax + 0x10], 0
je near loc_00013c36  ; je 0x13c36
cmp esi, 1
jne short loc_0001386c  ; jne 0x1386c
sub esp, 0xc
lea eax, [edi + 0xe0]
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
mov edx, 0x15000000
and eax, 0x18
sub eax, 8
cmp eax, 0x10
ja short loc_00013868  ; ja 0x13868
mov edx, dword [eax*4 + ref_0002046c]  ; mov edx, dword [eax*4 + 0x2046c]

loc_00013868:
push eax
push edx
jmp short loc_00013878  ; jmp 0x13878

loc_0001386c:
cmp dword [ebp - 0x1c], 2
jne short loc_00013889  ; jne 0x13889
push ecx
push 0xf000000

loc_00013878:
push 0xffffff
lea eax, [ebx + 4]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_00013889:
push eax
push eax
push 0xc401
lea eax, [edi + 0x44]
push eax
call fcn_00018927  ; call 0x18927
pop eax
pop edx
lea eax, [edi + 0x46]
push 0xf
push eax
call fcn_00018730  ; call 0x18730
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
call fcn_00018b68  ; call 0x18b68
add esp, 0xc
push 0x200000a
push 0xff00
lea eax, [ebx + 0xc]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0xc
push 0x600
push 0xffffffffffffffdf
lea eax, [ebx + 0x10]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
cmp esi, 2
jne short loc_00013946  ; jne 0x13946
cmp dword [ebp - 0x1c], 1
jne short loc_00013921  ; jne 0x13921
push eax
add edi, 0xb0
push 0x20000
push 0xffff9fff
push edi
call fcn_00018b68  ; call 0x18b68
jmp short loc_0001393e  ; jmp 0x1393e

loc_00013921:
cmp dword [ebp - 0x1c], 2
jne near loc_00013a5a  ; jne 0x13a5a
push eax
add edi, 0xa8
push eax
push 0x22000
push edi
call fcn_00018b14  ; call 0x18b14

loc_0001393e:
add esp, 0x10
jmp near loc_00013a5a  ; jmp 0x13a5a

loc_00013946:
cmp esi, 1
jne short loc_0001397a  ; jne 0x1397a
push eax
push eax
push 0xfff7ffff
lea eax, [ebx + 0x8008]
push eax
call fcn_00018b3e  ; call 0x18b3e
add esp, 0xc
push 0x110000

loc_00013966:
push 0xfffffeff
lea eax, [ebx + 0x8058]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_0001397a:
push ecx
push ecx
push 0x2040000
lea eax, [ebx + 0x8060]
push eax
call fcn_00018b14  ; call 0x18b14
pop edi
pop eax
lea eax, [ebx + 0x8090]
push 0x4100
push eax
call fcn_00018b14  ; call 0x18b14
pop eax
pop edx
lea eax, [ebx + 0x8094]
push 0xa04000
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0xc
push 0x40
push 0xfffeffff
lea eax, [ebx + 0x80e0]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0xc
push 0xc00
push 0xffff8dff
lea eax, [ebx + 0x80ec]
push eax
call fcn_00018b68  ; call 0x18b68
lea eax, [ebx + 0x80f0]
pop ecx
pop edi
push 0xffefffff
push eax
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10
cmp esi, 2
jne short loc_00013a65  ; jne 0x13a65
push edi
push edi
push 0x2000000
lea eax, [ebx + 0x80fc]
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0xc
push 0x100800
push 0xfffffefb
lea eax, [ebx + 0x8110]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0xc
push 0xff00f03c
push 0
lea eax, [ebx + 0x8140]
push eax
call fcn_00018b68  ; call 0x18b68
pop eax
pop edx
lea eax, [ebx + 0x8144]
push 0x1c0
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10
jmp near loc_00013c27  ; jmp 0x13c27

loc_00013a5a:
push eax
push 0x10000
jmp near loc_00013966  ; jmp 0x13966

loc_00013a65:
cmp esi, 1
jne near loc_00013c27  ; jne 0x13c27
push ecx
xor edi, edi
push 0x100800
push 0xfffffffffffffffb
lea eax, [ebx + 0x8110]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0xc
push 0xff03c132
push 0
lea eax, [ebx + 0x8140]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0xc
push 0x100
push 0xffffff3f
lea eax, [ebx + 0x8144]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
mov eax, 0x202000

loc_00013abb:
push ecx
not eax
push edi
push eax
lea edx, [ebx + 0x8154]
push edx
mov dword [ebp - 0x28], edx
call fcn_00018b68  ; call 0x18b68
pop eax
pop edx
mov edx, dword [ebp - 0x28]
push 0xfffffffffffffff7
push edx
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10
cmp esi, 2
jne near loc_00013b80  ; jne 0x13b80
push ecx
push ecx
push 3
lea eax, [ebx + 0x8164]
push eax
call fcn_00018b14  ; call 0x18b14
mov eax, dword [ebp - 0x1c]
add esp, 0x10
cmp eax, 1
je short loc_00013b10  ; je 0x13b10
cmp eax, 2
mov eax, 0xe403f
cmove edi, eax
jmp short loc_00013b15  ; jmp 0x13b15

loc_00013b10:
mov edi, 0xe0038

loc_00013b15:
push eax
push edi
push 0xfff00000
lea eax, [ebx + 0x816c]
push eax
call fcn_00018b68  ; call 0x18b68
pop eax
pop edx
lea eax, [ebx + 0x8174]
push 0x1400c0a
push eax
call fcn_00017e8f  ; call 0x17e8f
add esp, 0xc
push 0x33200a3
push 0
lea eax, [ebx + 0x817c]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0xc
push 0xcb0028
push 0
lea eax, [ebx + 0x8180]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0xc
push 0x64001e
push 0
lea eax, [ebx + 0x8184]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_00013b80:
cmp esi, 2
sete dl
cmp dword [ebp - 0x1c], 1
jne short loc_00013b95  ; jne 0x13b95
mov eax, 0x5000000
test dl, dl
jne short loc_00013ba6  ; jne 0x13ba6

loc_00013b95:
cmp dword [ebp - 0x1c], 2
mov eax, 0x1000000
mov ecx, 0x5000000
cmove eax, ecx

loc_00013ba6:
push ecx
push ecx
push eax
lea eax, [ebx + 0x8188]
push eax
mov dword [ebp - 0x28], edx
call fcn_00018b14  ; call 0x18b14
add esp, 0x10
cmp dword [ebp - 0x1c], 2
jne short loc_00013c36  ; jne 0x13c36
mov edx, dword [ebp - 0x28]
test dl, dl
je short loc_00013c36  ; je 0x13c36
cmp byte [ebp - 0x24], 7
jbe short loc_00013c36  ; jbe 0x13c36
push edx
push 2
push 0xfffffffffffffff9
lea eax, [ebx + 0x8098]
push eax
call fcn_00018b68  ; call 0x18b68
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
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], 0xfffffff0
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018b3e  ; jmp 0x18b3e

loc_00013c27:
mov eax, 0x200000
mov edi, 0x2000
jmp near loc_00013abb  ; jmp 0x13abb

loc_00013c36:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00013c3e:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
call fcn_0001bfbb  ; call 0x1bfbb
mov esi, eax
call fcn_0001c0bd  ; call 0x1c0bd
mov edi, eax
call fcn_0001bbfd  ; call 0x1bbfd
mov eax, dword [ebp + 8]
push ebx
push 0
push 0x14
movzx eax, byte [eax + 1]
push eax
call fcn_00016c9a  ; call 0x16c9a
push 0xc0
push 0xffffffffffffffff
push 0xe5004001
push dword [ebp + 0xc]
mov ebx, eax
call fcn_00009dc2  ; call 0x9dc2
add esp, 0x14
lea edx, [ebx + 0x40]
push edx
mov dword [ebp - 0x20], edx
call fcn_00017e4e  ; call 0x17e4e
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
call fcn_00017e04  ; call 0x17e04
pop eax
mov eax, dword [ebp - 0x1c]
pop edx
or eax, 0x360100
shr eax, 0x10
movzx eax, al
push eax
lea eax, [ebx + 0x42]
push eax
call fcn_00017da5  ; call 0x17da5
pop ecx
pop eax
lea eax, [ebx + 0x44]
push 0x288
push eax
call fcn_00018927  ; call 0x18927
add esp, 0x10
cmp esi, 1
je short loc_00013cfc  ; je 0x13cfc
mov eax, 0xc0
cmp esi, 2
jne short loc_00013d01  ; jne 0x13d01
mov eax, 0x40040
cmp edi, 2
mov edx, 0x40000
cmovne eax, edx
jmp short loc_00013d01  ; jmp 0x13d01

loc_00013cfc:
mov eax, 0x40

loc_00013d01:
push ecx
push ecx
push eax
lea eax, [ebx + 0xa0]
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10
cmp edi, 2
jne short loc_00013d22  ; jne 0x13d22
mov eax, 0x1800
cmp esi, 2
je short loc_00013d24  ; je 0x13d24

loc_00013d22:
xor eax, eax

loc_00013d24:
push edx
add ebx, 0xa4
push eax
push 0xffffdfff
push ebx
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00013d42:
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
call fcn_0001bfbb  ; call 0x1bfbb
mov edi, eax
call fcn_0001c0bd  ; call 0x1c0bd
mov edx, dword [ebp - 0x1c]
cmp eax, 1
sete cl
cmp edi, 1
jne near loc_00013e6d  ; jne 0x13e6d
test cl, cl
je near loc_00013e6d  ; je 0x13e6d
mov eax, dword [ebp + 8]
sub esp, 0xc
lea edi, [eax + 0xe0]
push edi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
mov edx, dword [ebp - 0x1c]
and eax, 6
cmp eax, 4
je short loc_00013dbd  ; je 0x13dbd
cmp eax, 6
je short loc_00013db2  ; je 0x13db2
cmp eax, 2
jne short loc_00013dc8  ; jne 0x13dc8
mov byte [edx], 0xc
mov dword [ebx], 0x3f3f
jmp short loc_00013dd1  ; jmp 0x13dd1

loc_00013db2:
mov byte [edx], 8
mov dword [ebx], 0xf0f
jmp short loc_00013dd1  ; jmp 0x13dd1

loc_00013dbd:
mov byte [edx], 0xa
mov dword [ebx], 0xf3f
jmp short loc_00013dd1  ; jmp 0x13dd1

loc_00013dc8:
mov byte [edx], 0xe
mov dword [ebx], 0x3fff

loc_00013dd1:
or dword [ebx], 0xf0
sub esp, 0xc
push edi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
and eax, 0x18
cmp eax, 0x10
je short loc_00013e17  ; je 0x13e17
cmp eax, 0x18
je short loc_00013e06  ; je 0x13e06
cmp eax, 8
jne short loc_00013e28  ; jne 0x13e28
mov eax, dword [ebp + 0x14]
mov byte [eax], 4
mov eax, dword [ebp + 0x1c]
mov dword [eax], 0xf
jmp short loc_00013e37  ; jmp 0x13e37

loc_00013e06:
mov eax, dword [ebp + 0x14]
mov byte [eax], 0
mov eax, dword [ebp + 0x1c]
mov dword [eax], 0
jmp short loc_00013e37  ; jmp 0x13e37

loc_00013e17:
mov eax, dword [ebp + 0x14]
mov byte [eax], 2
mov eax, dword [ebp + 0x1c]
mov dword [eax], 3
jmp short loc_00013e37  ; jmp 0x13e37

loc_00013e28:
mov eax, dword [ebp + 0x14]
mov byte [eax], 6
mov eax, dword [ebp + 0x1c]
mov dword [eax], 0x3f

loc_00013e37:
sub esp, 0xc
push edi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
and eax, 0x20
je short loc_00013e5f  ; je 0x13e5f
cmp eax, 0x20
jne near loc_00013f35  ; jne 0x13f35
mov byte [esi], 0
and dword [ebx], 0xffffbfff
jmp near loc_00013f35  ; jmp 0x13f35

loc_00013e5f:
mov byte [esi], 1
or dword [ebx], 0x4000
jmp near loc_00013f35  ; jmp 0x13f35

loc_00013e6d:
cmp edi, 2
jne short loc_00013ec7  ; jne 0x13ec7
test cl, cl
je short loc_00013ec7  ; je 0x13ec7
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
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
and eax, 0x20
je short loc_00013ebc  ; je 0x13ebc
cmp eax, 0x20
jne near loc_00013f35  ; jne 0x13f35
mov byte [esi], 0
and dword [ebx], 0xfffffeff
jmp short loc_00013f35  ; jmp 0x13f35

loc_00013ebc:
mov byte [esi], 1
or dword [ebx], 0x100
jmp short loc_00013f35  ; jmp 0x13f35

loc_00013ec7:
cmp eax, 2
jne short loc_00013f35  ; jne 0x13f35
mov eax, dword [ebp + 8]
sub esp, 0xc
mov dword [ebp - 0x1c], edx
lea edi, [eax + 0xe0]
push edi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
mov edx, dword [ebp - 0x1c]
test al, 2
je short loc_00013ef9  ; je 0x13ef9
mov byte [edx], 8
mov dword [ebx], 0xff
mov byte [esi], 0
jmp short loc_00013f26  ; jmp 0x13f26

loc_00013ef9:
sub esp, 0xc
mov byte [edx], 0xa
mov dword [ebx], 0xff
push edi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test al, 0x20
jne short loc_00013f1d  ; jne 0x13f1d
mov byte [esi], 1
or dword [ebx], 0x400
jmp short loc_00013f26  ; jmp 0x13f26

loc_00013f1d:
mov byte [esi], 0
and dword [ebx], 0xfffffbff

loc_00013f26:
mov eax, dword [ebp + 0x14]
mov byte [eax], 4
mov eax, dword [ebp + 0x1c]
mov dword [eax], 0xf

loc_00013f35:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00013f3d:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x3c
call fcn_0001c0bd  ; call 0x1c0bd
mov ebx, eax
call fcn_0001bfbb  ; call 0x1bfbb
cmp ebx, 1
jne short loc_00013f76  ; jne 0x13f76
cmp eax, 2
je short loc_00013f92  ; je 0x13f92
mov ecx, ref_000273cc  ; mov ecx, 0x273cc
xor edx, edx
mov edi, ecx
dec eax
mov eax, ref_00027408  ; mov eax, 0x27408
cmovne edi, edx
cmove edx, eax
mov dword [ebp - 0x34], edx
jmp short loc_00013f9e  ; jmp 0x13f9e

loc_00013f76:
mov edx, ref_00027380  ; mov edx, 0x27380
xor eax, eax
mov edi, edx
cmp ebx, 2
mov edx, ref_00027390  ; mov edx, 0x27390
cmovne edi, eax
cmove eax, edx
mov dword [ebp - 0x34], eax
jmp short loc_00013f9e  ; jmp 0x13f9e

loc_00013f92:
mov edi, ref_000273bc  ; mov edi, 0x273bc
mov dword [ebp - 0x34], ref_000273e4  ; mov dword [ebp - 0x34], 0x273e4

loc_00013f9e:
test edi, edi
je short loc_00013fa8  ; je 0x13fa8
cmp dword [ebp - 0x34], 0
jne short loc_00013fd2  ; jne 0x13fd2

loc_00013fa8:
call fcn_00015480  ; call 0x15480
test al, al
je near loc_0001489b  ; je 0x1489b
push eax
push ref_00022281  ; push 0x22281
push 0x601
push ref_0002531e  ; push 0x2531e
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
jmp near loc_0001489b  ; jmp 0x1489b

loc_00013fd2:
mov eax, dword [ebp + 8]
cmp byte [eax + 0x10], 0
je near loc_0001489b  ; je 0x1489b
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
call fcn_00013d42  ; call 0x13d42
mov eax, dword [ebp + 0xc]
add esp, 0x14
add eax, 0x10
push eax
call fcn_00017e4e  ; call 0x17e4e
mov ecx, dword [ebp + 0xc]
shr eax, 0x10
lea ebx, [ecx + eax*4]
mov dword [esp], ebx
call fcn_00017e4e  ; call 0x17e4e
mov esi, eax
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_0001403f  ; je 0x1403f
push eax
push ebx
push ref_0002534c  ; push 0x2534c
push 0x80000000
call fcn_00015487  ; call 0x15487

loc_0001403c:
add esp, 0x10

loc_0001403f:
mov eax, esi
cmp al, 0xa
jne short loc_000140c3  ; jne 0x140c3
sub esp, 0xc
lea eax, [ebx + 0x20]
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test al, 1
je near loc_000140df  ; je 0x140df
sub esp, 0xc
add ebx, 0x24
push ebx
call fcn_00017e4e  ; call 0x17e4e
movzx edx, byte [ebp - 0x25]
add esp, 0x10
mov dword [ebp - 0x2c], 0
shr eax, 0x18
add eax, 0x47
shl eax, 4

loc_0001407f:
cmp dword [ebp - 0x2c], edx
jae short loc_000140b6  ; jae 0x140b6
mov ecx, dword [ebp - 0x2c]
cmp eax, dword [edi + ecx*4]
jne short loc_000140b1  ; jne 0x140b1
call fcn_00015479  ; call 0x15479
mov byte [ebp - 0x2d], 1
test al, al
je short loc_000140ea  ; je 0x140ea
push esi
push dword [ebp - 0x2c]
push ref_00025379  ; push 0x25379
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp short loc_000140ea  ; jmp 0x140ea

loc_000140b1:
inc dword [ebp - 0x2c]
jmp short loc_0001407f  ; jmp 0x1407f

loc_000140b6:
mov dword [ebp - 0x2c], 0xffffffff
mov byte [ebp - 0x2d], 1
jmp short loc_000140ea  ; jmp 0x140ea

loc_000140c3:
mov eax, esi
movzx esi, ah
test esi, esi
je short loc_000140df  ; je 0x140df
lea ebx, [ebx + esi*4]
sub esp, 0xc
push ebx
call fcn_00017e4e  ; call 0x17e4e
mov esi, eax
jmp near loc_0001403c  ; jmp 0x1403c

loc_000140df:
mov dword [ebp - 0x2c], 0xffffffff
mov byte [ebp - 0x2d], 0

loc_000140ea:
mov eax, dword [ebp + 0x18]
push ebx
push dword [ebp - 0x24]
add eax, 0xd4
mov dword [ebp - 0x38], eax
push 0xffff8000
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0xc
mov eax, dword [ebp + 0x18]
push dword [ebp - 0x20]
add eax, 0xdc
push 0xffffffffffffffc0
push eax
mov dword [ebp - 0x3c], eax
call fcn_00018b68  ; call 0x18b68
lea eax, [ebp - 0x1c]
mov dword [esp], eax
call fcn_00019797  ; call 0x19797
add esp, 0x10
cmp dword [ebp - 0x1c], 0x11
je near loc_0001489b  ; je 0x1489b
mov eax, dword [ebp + 0x1c]
sub esp, 0xc
add eax, 0xa2
push eax
mov dword [ebp - 0x40], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test al, 0x20
je short loc_000141c8  ; je 0x141c8
mov eax, dword [ebp + 0x1c]
sub esp, 0xc
add eax, 0xac
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test eax, 0x10000
je short loc_000141c8  ; je 0x141c8
sub esp, 0xc
push dword [ebp - 0x3c]
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
and eax, 0x3f
cmp byte [ebp - 0x2d], 0
je short loc_0001418e  ; je 0x1418e
mov cl, byte [ebp - 0x2c]
mov edx, 1
shl edx, cl
or eax, edx

loc_0001418e:
push edx
push eax
mov eax, dword [ebp + 0x18]
push 0xffffffffffffffc0
add eax, 0xd8
push eax
call fcn_00018b68  ; call 0x18b68
pop ecx
push dword [ebp - 0x38]
call fcn_00017e4e  ; call 0x17e4e
add esp, 0xc
and eax, 0x7fff
push eax
mov eax, dword [ebp + 0x18]
push 0xffff8000
add eax, 0xd0
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_000141c8:
mov eax, dword [ebp + 8]
cmp byte [eax + 0xb5], 0
jne short loc_000141ec  ; jne 0x141ec
push eax
push eax
mov eax, dword [ebp + 0x1c]
push 0xfffeffff
add eax, 0xac
push eax
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10

loc_000141ec:
mov eax, dword [ebp + 8]
mov esi, 1
mov al, byte [eax + 0x11]
test al, al
je near loc_000142d0  ; je 0x142d0
xor esi, esi
dec al
jne near loc_000142d0  ; jne 0x142d0
mov eax, dword [ebp + 8]
mov al, byte [eax + 0x10]
cmp al, 2
sete cl
dec al
mov esi, ecx
jne near loc_000142d0  ; jne 0x142d0
sub esp, 0xc
push dword [ebp - 0x40]
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test al, 0x20
jne short loc_0001423a  ; jne 0x1423a

loc_00014230:
mov esi, 2
jmp near loc_000142d0  ; jmp 0x142d0

loc_0001423a:
mov bl, byte [ebp - 0x2d]
xor esi, esi
and ebx, 1

loc_00014242:
movzx eax, byte [ebp - 0x25]
cmp esi, eax
jae short loc_0001426d  ; jae 0x1426d
cmp esi, dword [ebp - 0x2c]
jne short loc_00014253  ; jne 0x14253
test bl, bl
jne short loc_0001426a  ; jne 0x1426a

loc_00014253:
push eax
mov eax, dword [ebp + 0xc]
push 0x80000000
push 0xfffffffffffffffd
add eax, dword [edi + esi*4]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_0001426a:
inc esi
jmp short loc_00014242  ; jmp 0x14242

loc_0001426d:
mov al, byte [ebp - 0x2d]
mov ebx, 0xa
and eax, 1
mov byte [ebp - 0x2e], al

loc_0001427b:
xor esi, esi
xor edx, edx

loc_0001427f:
movzx eax, byte [ebp - 0x25]
cmp edx, eax
jae short loc_000142af  ; jae 0x142af
cmp edx, dword [ebp - 0x2c]
jne short loc_00014292  ; jne 0x14292
cmp byte [ebp - 0x2e], 0
jne short loc_000142ac  ; jne 0x142ac

loc_00014292:
mov eax, dword [ebp + 0xc]
sub esp, 0xc
add eax, dword [edi + edx*4]
mov dword [ebp - 0x44], edx
push eax
call fcn_00017e4e  ; call 0x17e4e
mov edx, dword [ebp - 0x44]
add esp, 0x10
or esi, eax

loc_000142ac:
inc edx
jmp short loc_0001427f  ; jmp 0x1427f

loc_000142af:
sub esp, 0xc
push 0x2710
call fcn_0001bb03  ; call 0x1bb03
add esp, 0x10
and esi, 0x10
je near loc_00014230  ; je 0x14230
dec ebx
jne short loc_0001427b  ; jne 0x1427b
jmp near loc_00014230  ; jmp 0x14230

loc_000142d0:
cmp byte [ebp - 0x25], 0
je near loc_00014506  ; je 0x14506
mov eax, esi
dec al
jne near loc_00014506  ; jne 0x14506
mov eax, dword [ebp + 0x18]
sub esp, 0xc
lea ebx, [eax + 0xd0]
push ebx
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test eax, eax
je short loc_00014301  ; je 0x14301

loc_000142fd:
xor esi, esi
jmp short loc_0001434f  ; jmp 0x1434f

loc_00014301:
mov eax, dword [ebp + 0x18]
sub esp, 0xc
add eax, 0xd8
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test eax, eax
jne short loc_000142fd  ; jne 0x142fd
jmp near loc_00014506  ; jmp 0x14506

loc_0001431e:
mov ecx, dword [ebp - 0x34]
sub esp, 0xc
mov eax, dword [ebp + 0xc]
add eax, dword [ecx + esi*4]
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test al, 1
je short loc_0001434e  ; je 0x1434e
mov ecx, dword [ebp - 0x34]
push eax
mov eax, dword [ebp + 0xc]
push 0x10
push 0xfffffffffffffffd
add eax, dword [ecx + esi*4]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_0001434e:
inc esi

loc_0001434f:
movzx eax, byte [ebp - 0x27]
cmp esi, eax
jb short loc_0001431e  ; jb 0x1431e
mov dword [ebp - 0x38], 0xa

loc_0001435e:
xor esi, esi
xor edx, edx

loc_00014362:
movzx eax, byte [ebp - 0x27]
cmp edx, eax
jae short loc_0001438a  ; jae 0x1438a
mov ecx, dword [ebp - 0x34]
sub esp, 0xc
mov eax, dword [ebp + 0xc]
mov dword [ebp - 0x3c], edx
add eax, dword [ecx + edx*4]
push eax
call fcn_00017e4e  ; call 0x17e4e
mov edx, dword [ebp - 0x3c]
add esp, 0x10
inc edx
or esi, eax
jmp short loc_00014362  ; jmp 0x14362

loc_0001438a:
sub esp, 0xc
push 0x2710
call fcn_0001bb03  ; call 0x1bb03
add esp, 0x10
and esi, 0x10
je short loc_000143a4  ; je 0x143a4
dec dword [ebp - 0x38]
jne short loc_0001435e  ; jne 0x1435e

loc_000143a4:
push esi
push esi
push 0xffff8000
push ebx
xor ebx, ebx
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10

loc_000143b6:
movzx eax, byte [ebp - 0x27]
cmp ebx, eax
jae short loc_000143db  ; jae 0x143db
push ecx
mov ecx, dword [ebp - 0x34]
push 0xfe0000
mov eax, dword [ebp + 0xc]
push 0xfffffffffffffffd
add eax, dword [ecx + ebx*4]
inc ebx
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
jmp short loc_000143b6  ; jmp 0x143b6

loc_000143db:
cmp byte [ebp - 0x26], 0
je short loc_000143fb  ; je 0x143fb
push edx
mov edx, dword [ebp - 0x34]
push 0xfe0000
mov ecx, dword [ebp + 0xc]
push 0xfffffffffffffffd
add ecx, dword [edx + eax*4]
push ecx
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_000143fb:
mov bl, byte [ebp - 0x2d]
xor esi, esi
and ebx, 1

loc_00014403:
movzx eax, byte [ebp - 0x25]
cmp esi, eax
jae short loc_0001442e  ; jae 0x1442e
cmp esi, dword [ebp - 0x2c]
jne short loc_00014414  ; jne 0x14414
test bl, bl
jne short loc_0001442b  ; jne 0x1442b

loc_00014414:
push eax
mov eax, dword [ebp + 0xc]
push 0x80000000
push 0xfffffffffffffffd
add eax, dword [edi + esi*4]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_0001442b:
inc esi
jmp short loc_00014403  ; jmp 0x14403

loc_0001442e:
cmp byte [ebp - 0x2d], 0
mov eax, 0xffffffc0
je short loc_00014446  ; je 0x14446
mov cl, byte [ebp - 0x2c]
mov eax, 1
shl eax, cl
or eax, 0xffffffc0

loc_00014446:
push ebx
push ebx
mov ebx, 0xa
push eax
mov eax, dword [ebp + 0x18]
add eax, 0xd8
push eax
call fcn_00018b3e  ; call 0x18b3e
mov al, byte [ebp - 0x2d]
add esp, 0x10
and eax, 1
mov byte [ebp - 0x38], al

loc_00014468:
xor esi, esi
xor edx, edx

loc_0001446c:
movzx eax, byte [ebp - 0x25]
cmp edx, eax
jae short loc_0001449c  ; jae 0x1449c
cmp edx, dword [ebp - 0x2c]
jne short loc_0001447f  ; jne 0x1447f
cmp byte [ebp - 0x38], 0
jne short loc_00014499  ; jne 0x14499

loc_0001447f:
mov eax, dword [ebp + 0xc]
sub esp, 0xc
add eax, dword [edi + edx*4]
mov dword [ebp - 0x3c], edx
push eax
call fcn_00017e4e  ; call 0x17e4e
mov edx, dword [ebp - 0x3c]
add esp, 0x10
or esi, eax

loc_00014499:
inc edx
jmp short loc_0001446c  ; jmp 0x1446c

loc_0001449c:
sub esp, 0xc
push 0x2710
call fcn_0001bb03  ; call 0x1bb03
add esp, 0x10
and esi, 0x10
je short loc_000144b4  ; je 0x144b4
dec ebx
jne short loc_00014468  ; jne 0x14468

loc_000144b4:
mov bl, byte [ebp - 0x2d]
xor esi, esi
and ebx, 1

loc_000144bc:
movzx eax, byte [ebp - 0x25]
cmp esi, eax
jae short loc_000144e7  ; jae 0x144e7
cmp esi, dword [ebp - 0x2c]
jne short loc_000144cd  ; jne 0x144cd
test bl, bl
jne short loc_000144e4  ; jne 0x144e4

loc_000144cd:
push ecx
mov eax, dword [ebp + 0xc]
push 0xfe0000
push 0xfffffffffffffffd
add eax, dword [edi + esi*4]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_000144e4:
inc esi
jmp short loc_000144bc  ; jmp 0x144bc

loc_000144e7:
mov eax, dword [ebp + 0xc]
push esi
push esi
push 1
lea ebx, [eax + 0x80]
push ebx
call fcn_00018b14  ; call 0x18b14
pop eax
pop edx
push 0xfffffffffffffffe
push ebx
call fcn_00018b3e  ; call 0x18b3e
jmp short loc_00014570  ; jmp 0x14570

loc_00014506:
cmp byte [ebp - 0x25], 0
je near loc_0001461f  ; je 0x1461f
mov eax, esi
cmp al, 2
jne short loc_00014578  ; jne 0x14578
sub esp, 0xc
push dword [ebp - 0x3c]
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
and eax, 0x3f
cmp byte [ebp - 0x2d], 0
je short loc_00014539  ; je 0x14539
mov cl, byte [ebp - 0x2c]
mov edx, 1
shl edx, cl
or eax, edx

loc_00014539:
push edx
push eax
mov eax, dword [ebp + 0x18]
push 0xffffffffffffffc0
add eax, 0xd8
push eax
call fcn_00018b68  ; call 0x18b68
pop ecx
push dword [ebp - 0x38]
call fcn_00017e4e  ; call 0x17e4e
add esp, 0xc
and eax, 0x7fff
push eax
mov eax, dword [ebp + 0x18]
push 0xffff8000
add eax, 0xd0
push eax
call fcn_00018b68  ; call 0x18b68

loc_00014570:
add esp, 0x10
jmp near loc_0001461f  ; jmp 0x1461f

loc_00014578:
sub esp, 0xc
push dword [ebp - 0x40]
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
test al, 0x20
je near loc_0001461f  ; je 0x1461f
mov bl, byte [ebp - 0x2d]
xor esi, esi
and ebx, 1

loc_00014596:
movzx eax, byte [ebp - 0x25]
cmp esi, eax
jae short loc_000145c1  ; jae 0x145c1
cmp esi, dword [ebp - 0x2c]
jne short loc_000145a7  ; jne 0x145a7
test bl, bl
jne short loc_000145be  ; jne 0x145be

loc_000145a7:
push eax
mov eax, dword [ebp + 0xc]
push 0x80000000
push 0xfffffffffffffffd
add eax, dword [edi + esi*4]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_000145be:
inc esi
jmp short loc_00014596  ; jmp 0x14596

loc_000145c1:
mov al, byte [ebp - 0x2d]
mov dword [ebp - 0x38], 0
and eax, 1
mov byte [ebp - 0x3c], al

loc_000145d1:
cmp esi, dword [ebp - 0x2c]
jne short loc_000145de  ; jne 0x145de
xor ebx, ebx
cmp byte [ebp - 0x3c], 0
jne short loc_00014614  ; jne 0x14614

loc_000145de:
xor ebx, ebx
xor esi, esi

loc_000145e2:
movzx eax, byte [ebp - 0x25]
cmp esi, eax
jae short loc_00014601  ; jae 0x14601
mov eax, dword [ebp + 0xc]
sub esp, 0xc
add eax, dword [edi + esi*4]
inc esi
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
or ebx, eax
jmp short loc_000145e2  ; jmp 0x145e2

loc_00014601:
sub esp, 0xc
push 0x2710
call fcn_0001bb03  ; call 0x1bb03
add esp, 0x10
inc dword [ebp - 0x38]

loc_00014614:
and bl, 0x10
je short loc_0001461f  ; je 0x1461f
cmp dword [ebp - 0x38], 9
jbe short loc_000145d1  ; jbe 0x145d1

loc_0001461f:
mov eax, dword [ebp + 8]
xor ebx, ebx
cmp byte [eax + 0x13], 1
jne near loc_0001485c  ; jne 0x1485c

loc_0001462e:
movzx eax, byte [ebp - 0x27]
cmp ebx, eax
jae short loc_00014669  ; jae 0x14669
mov ecx, dword [ebp - 0x34]
sub esp, 0xc
mov eax, dword [ebp + 0xc]
add eax, dword [ecx + ebx*4]
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test al, 1
je short loc_00014666  ; je 0x14666
push ecx
mov ecx, dword [ebp - 0x34]
push 0x10
mov eax, dword [ebp + 0xc]
push 0xfffffffffffffffd
add eax, dword [ecx + ebx*4]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_00014666:
inc ebx
jmp short loc_0001462e  ; jmp 0x1462e

loc_00014669:
mov ebx, 0xa

loc_0001466e:
xor esi, esi
xor edx, edx

loc_00014672:
movzx eax, byte [ebp - 0x27]
cmp edx, eax
jae short loc_0001469a  ; jae 0x1469a
mov ecx, dword [ebp - 0x34]
sub esp, 0xc
mov eax, dword [ebp + 0xc]
mov dword [ebp - 0x38], edx
add eax, dword [ecx + edx*4]
push eax
call fcn_00017e4e  ; call 0x17e4e
mov edx, dword [ebp - 0x38]
add esp, 0x10
inc edx
or esi, eax
jmp short loc_00014672  ; jmp 0x14672

loc_0001469a:
sub esp, 0xc
push 0x2710
call fcn_0001bb03  ; call 0x1bb03
add esp, 0x10
and esi, 0x10
je short loc_000146b2  ; je 0x146b2
dec ebx
jne short loc_0001466e  ; jne 0x1466e

loc_000146b2:
movzx edx, byte [ebp - 0x27]
xor eax, eax
xor ecx, ecx
mov ebx, 1

loc_000146bf:
cmp ecx, edx
jae short loc_000146d6  ; jae 0x146d6
mov esi, dword [ebp + 8]
cmp byte [esi + ecx + 0x14], 1
jne short loc_000146d3  ; jne 0x146d3
mov esi, ebx
shl esi, cl
or eax, esi

loc_000146d3:
inc ecx
jmp short loc_000146bf  ; jmp 0x146bf

loc_000146d6:
push edx
xor ebx, ebx
push eax
mov eax, dword [ebp + 0x18]
push 0xffff8000
add eax, 0xd0
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_000146f0:
movzx eax, byte [ebp - 0x27]
cmp ebx, eax
jae short loc_00014715  ; jae 0x14715
mov ecx, dword [ebp - 0x34]
push esi
mov eax, dword [ebp + 0xc]
push 0xfe0000
push 0xfffffffffffffffd
add eax, dword [ecx + ebx*4]
inc ebx
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
jmp short loc_000146f0  ; jmp 0x146f0

loc_00014715:
cmp byte [ebp - 0x26], 0
je short loc_00014735  ; je 0x14735
mov edx, dword [ebp - 0x34]
push ebx
mov ecx, dword [ebp + 0xc]
push 0xfe0000
push 0xfffffffffffffffd
add ecx, dword [edx + eax*4]
push ecx
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_00014735:
mov bl, byte [ebp - 0x2d]
xor esi, esi
and ebx, 1

loc_0001473d:
movzx edx, byte [ebp - 0x25]
cmp esi, edx
jae short loc_00014768  ; jae 0x14768
cmp esi, dword [ebp - 0x2c]
jne short loc_0001474e  ; jne 0x1474e
test bl, bl
jne short loc_00014765  ; jne 0x14765

loc_0001474e:
push ecx
mov eax, dword [ebp + 0xc]
push 0x80000000
push 0xfffffffffffffffd
add eax, dword [edi + esi*4]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_00014765:
inc esi
jmp short loc_0001473d  ; jmp 0x1473d

loc_00014768:
xor eax, eax
xor ecx, ecx
mov ebx, 1

loc_00014771:
cmp ecx, edx
je short loc_00014788  ; je 0x14788
mov esi, dword [ebp + 8]
cmp byte [esi + ecx + 0x22], 1
jne short loc_00014785  ; jne 0x14785
mov esi, ebx
shl esi, cl
or eax, esi

loc_00014785:
inc ecx
jmp short loc_00014771  ; jmp 0x14771

loc_00014788:
cmp byte [ebp - 0x2d], 0
je short loc_0001479a  ; je 0x1479a
mov cl, byte [ebp - 0x2c]
mov edx, 1
shl edx, cl
or eax, edx

loc_0001479a:
push edx
mov ebx, 0xa
push eax
mov eax, dword [ebp + 0x18]
push 0xffffffffffffffc0
add eax, 0xd8
push eax
call fcn_00018b68  ; call 0x18b68
mov al, byte [ebp - 0x2d]
add esp, 0x10
and eax, 1
mov byte [ebp - 0x38], al

loc_000147bd:
xor esi, esi
xor edx, edx

loc_000147c1:
movzx eax, byte [ebp - 0x25]
cmp edx, eax
jae short loc_000147f1  ; jae 0x147f1
cmp edx, dword [ebp - 0x2c]
jne short loc_000147d4  ; jne 0x147d4
cmp byte [ebp - 0x38], 0
jne short loc_000147ee  ; jne 0x147ee

loc_000147d4:
mov eax, dword [ebp + 0xc]
sub esp, 0xc
add eax, dword [edi + edx*4]
mov dword [ebp - 0x3c], edx
push eax
call fcn_00017e4e  ; call 0x17e4e
mov edx, dword [ebp - 0x3c]
add esp, 0x10
or esi, eax

loc_000147ee:
inc edx
jmp short loc_000147c1  ; jmp 0x147c1

loc_000147f1:
sub esp, 0xc
push 0x2710
call fcn_0001bb03  ; call 0x1bb03
add esp, 0x10
and esi, 0x10
je short loc_00014809  ; je 0x14809
dec ebx
jne short loc_000147bd  ; jne 0x147bd

loc_00014809:
mov bl, byte [ebp - 0x2d]
xor esi, esi
and ebx, 1

loc_00014811:
movzx eax, byte [ebp - 0x25]
cmp esi, eax
jae short loc_0001483c  ; jae 0x1483c
cmp esi, dword [ebp - 0x2c]
jne short loc_00014822  ; jne 0x14822
test bl, bl
jne short loc_00014839  ; jne 0x14839

loc_00014822:
push eax
mov eax, dword [ebp + 0xc]
push 0xfe0000
push 0xfffffffffffffffd
add eax, dword [edi + esi*4]
push eax
call fcn_00018b68  ; call 0x18b68
add esp, 0x10

loc_00014839:
inc esi
jmp short loc_00014811  ; jmp 0x14811

loc_0001483c:
mov eax, dword [ebp + 0xc]
lea ebx, [eax + 0x80]
push eax
push eax
push 1
push ebx
call fcn_00018b14  ; call 0x18b14
pop edx
pop ecx
push 0xfffffffffffffffe
push ebx
call fcn_00018b3e  ; call 0x18b3e
add esp, 0x10

loc_0001485c:
mov eax, dword [ebp + 8]
test byte [eax + 0x10], 0xfd
je short loc_0001489b  ; je 0x1489b
cmp byte [eax + 0x11], 0
je short loc_0001489b  ; je 0x1489b
cmp byte [eax + 0xb5], 0
je short loc_0001489b  ; je 0x1489b
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
call fcn_0001354a  ; call 0x1354a
add esp, 0x20

loc_0001489b:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000148a3:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x44
push 0x10
lea eax, [ebp - 0x38]
push eax
call fcn_00016fff  ; call 0x16fff
pop eax
pop edx
lea eax, [ebp - 0x28]
push 0x10
push eax
call fcn_00016fff  ; call 0x16fff
call fcn_0001bfbb  ; call 0x1bfbb
mov dword [ebp - 0x40], eax
call fcn_0001c0bd  ; call 0x1c0bd
mov edx, dword [ebp + 8]
add esp, 0x10
cmp byte [edx + 0x10], 0
je near loc_00014b50  ; je 0x14b50
cmp eax, 1
jne near loc_00014a1b  ; jne 0x14a1b
mov dword [ebp - 0x3c], 0
xor edi, edi
xor ebx, ebx

loc_000148f5:
call fcn_0001c261  ; call 0x1c261
movzx eax, al
cmp ebx, eax
jae short loc_0001497a  ; jae 0x1497a
mov eax, dword [ebp + 8]
movzx ecx, byte [eax + ebx*8 + 0x2d]
cmp cl, 8
je short loc_00014974  ; je 0x14974
cmp ebx, 7
ja short loc_0001493c  ; ja 0x1493c
cmp cl, 3
jbe short loc_0001492e  ; jbe 0x1492e
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00014974  ; je 0x14974
push eax
push ref_00022281  ; push 0x22281
push 0x9c4
jmp short loc_00014957  ; jmp 0x14957

loc_0001492e:
lea ecx, [ebx + ecx*8]
mov eax, 1
shl eax, cl
or edi, eax
jmp short loc_00014974  ; jmp 0x14974

loc_0001493c:
lea eax, [ecx - 4]
cmp al, 3
jbe short loc_00014966  ; jbe 0x14966
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00014974  ; je 0x14974
push eax
push ref_00022281  ; push 0x22281
push 0x9d0

loc_00014957:
push ref_0002531e  ; push 0x2531e
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
jmp short loc_00014974  ; jmp 0x14974

loc_00014966:
lea ecx, [ebx + ecx*8 - 0x28]
mov eax, 1
shl eax, cl
or dword [ebp - 0x3c], eax

loc_00014974:
inc ebx
jmp near loc_000148f5  ; jmp 0x148f5

loc_0001497a:
xor ebx, ebx
xor esi, esi
xor edx, edx

loc_00014980:
mov dword [ebp - 0x44], edx
call fcn_0001c2f8  ; call 0x1c2f8
mov edx, dword [ebp - 0x44]
movzx eax, al
cmp edx, eax
jae short loc_000149c3  ; jae 0x149c3
mov eax, dword [ebp + 8]
movzx eax, byte [eax + edx*4 + 0x9d]
cmp al, 8
je short loc_000149c0  ; je 0x149c0
cmp al, 3
ja short loc_000149b3  ; ja 0x149b3
lea ecx, [edx + eax*8]
mov eax, 1
shl eax, cl
or esi, eax
jmp short loc_000149c0  ; jmp 0x149c0

loc_000149b3:
lea ecx, [edx + eax*8 - 0x20]
mov eax, 1
shl eax, cl
or ebx, eax

loc_000149c0:
inc edx
jmp short loc_00014980  ; jmp 0x14980

loc_000149c3:
mov eax, dword [ebp + 0xc]
push ecx
push ecx
push edi
add eax, 0xc0
push eax
call fcn_00017e8f  ; call 0x17e8f
pop edi
pop eax
mov eax, dword [ebp + 0xc]
push esi
add eax, 0xc8
push eax
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10
cmp dword [ebp - 0x40], 1
jne near loc_00014b50  ; jne 0x14b50
push eax
push eax
mov eax, dword [ebp + 0xc]
push dword [ebp - 0x3c]
add eax, 0xc4
push eax
call fcn_00017e8f  ; call 0x17e8f
pop eax
mov eax, dword [ebp + 0xc]
pop edx
add eax, 0xcc
push ebx
push eax
call fcn_00017e8f  ; call 0x17e8f
jmp near loc_00014b4d  ; jmp 0x14b4d

loc_00014a1b:
xor ebx, ebx
cmp eax, 2
jne near loc_00014b2f  ; jne 0x14b2f

loc_00014a26:
call fcn_0001c2f8  ; call 0x1c2f8
movzx eax, al
cmp ebx, eax
jae short loc_00014a79  ; jae 0x14a79
mov eax, dword [ebp + 8]
mov al, byte [eax + ebx*4 + 0x9d]
cmp al, 8
je short loc_00014a76  ; je 0x14a76
movzx esi, al
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00014a69  ; je 0x14a69
cmp esi, 3
jbe short loc_00014a69  ; jbe 0x14a69
push eax
push ref_0002539d  ; push 0x2539d
push 0x9fd
push ref_0002531e  ; push 0x2531e
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00014a69:
mov eax, 1
mov cl, bl
shl eax, cl
or dword [ebp + esi*4 - 0x28], eax

loc_00014a76:
inc ebx
jmp short loc_00014a26  ; jmp 0x14a26

loc_00014a79:
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

loc_00014a9a:
push eax
push eax
push dword [ebx + esi - 0xc0]
push esi
add esi, 4
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10
cmp esi, dword [ebp - 0x3c]
jne short loc_00014a9a  ; jne 0x14a9a
xor ebx, ebx

loc_00014ab6:
call fcn_0001c2c1  ; call 0x1c2c1
movzx eax, al
cmp ebx, eax
jae short loc_00014b06  ; jae 0x14b06
mov eax, dword [ebp + 8]
mov al, byte [eax + ebx*8 + 0x2d]
cmp al, 8
je short loc_00014b03  ; je 0x14b03
movzx esi, al
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00014af6  ; je 0x14af6
cmp esi, 3
jbe short loc_00014af6  ; jbe 0x14af6
push ecx
push ref_0002539d  ; push 0x2539d
push 0xa0d
push ref_0002531e  ; push 0x2531e
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00014af6:
mov eax, 1
mov cl, bl
shl eax, cl
or dword [ebp + esi*4 - 0x38], eax

loc_00014b03:
inc ebx
jmp short loc_00014ab6  ; jmp 0x14ab6

loc_00014b06:
mov eax, dword [ebp + 0xc]
lea esi, [ebp + edi - 0x38]
lea ebx, [eax + 0xb0]

loc_00014b13:
push edx
push edx
push dword [esi + ebx - 0xb0]
push ebx
add ebx, 4
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10
cmp ebx, dword [ebp - 0x40]
jne short loc_00014b13  ; jne 0x14b13
jmp short loc_00014b50  ; jmp 0x14b50

loc_00014b2f:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00014b50  ; je 0x14b50
push eax
push ref_00022281  ; push 0x22281
push 0xa16
push ref_0002531e  ; push 0x2531e
call fcn_0001548c  ; call 0x1548c

loc_00014b4d:
add esp, 0x10

loc_00014b50:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00014b58:
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
call fcn_0001bfbb  ; call 0x1bfbb
mov dword [ebp - 0x20], 0
mov dword [ebp - 0x1c], eax

loc_00014b83:
call fcn_0001c298  ; call 0x1c298
movzx eax, al
cmp ebx, eax
jae short loc_00014c09  ; jae 0x14c09
movzx ecx, byte [esi + ebx*8 + 0x2d]
cmp cl, 8
je short loc_00014c03  ; je 0x14c03
cmp ebx, 7
ja short loc_00014bc7  ; ja 0x14bc7
cmp cl, 3
jbe short loc_00014bb9  ; jbe 0x14bb9
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00014c03  ; je 0x14c03
push ecx
push ref_00022281  ; push 0x22281
push 0xa69
jmp short loc_00014be8  ; jmp 0x14be8

loc_00014bb9:
lea ecx, [ebx + ecx*8]
mov eax, 1
shl eax, cl
or edi, eax
jmp short loc_00014c03  ; jmp 0x14c03

loc_00014bc7:
cmp dword [ebp - 0x1c], 1
jne short loc_00014c03  ; jne 0x14c03
lea eax, [ecx - 4]
cmp al, 3
jbe short loc_00014bf7  ; jbe 0x14bf7
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00014c03  ; je 0x14c03
push edx
push ref_00022281  ; push 0x22281
push 0xa76

loc_00014be8:
push ref_0002531e  ; push 0x2531e
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
jmp short loc_00014c03  ; jmp 0x14c03

loc_00014bf7:
mov eax, dword [ebp - 0x1c]
lea ecx, [ebx + ecx*8 - 0x28]
shl eax, cl
or dword [ebp - 0x20], eax

loc_00014c03:
inc ebx
jmp near loc_00014b83  ; jmp 0x14b83

loc_00014c09:
cmp byte [esi], 1
jne short loc_00014c20  ; jne 0x14c20
push eax
push eax
mov eax, dword [ebp - 0x24]
push edi
add eax, 0x74
push eax
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10

loc_00014c20:
cmp dword [ebp - 0x1c], 1
jne short loc_00014c47  ; jne 0x14c47
cmp byte [esi + 8], 1
jne short loc_00014c47  ; jne 0x14c47
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
jmp near fcn_00017e8f  ; jmp 0x17e8f

loc_00014c47:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00014c4f:
push ebp
mov ebp, esp
push edi
push esi
push ebx
xor ebx, ebx
sub esp, 0x1c
mov esi, dword [ebp + 8]
call fcn_0001bfbb  ; call 0x1bfbb
mov dword [ebp - 0x1c], eax
mov eax, dword [ebp + 0xc]
add eax, 0x64
mov dword [ebp - 0x20], eax
mov eax, dword [ebp + 0x10]
lea edi, [eax + 0x64]

loc_00014c74:
call fcn_0001c298  ; call 0x1c298
movzx eax, al
cmp ebx, eax
jae near loc_00014d11  ; jae 0x14d11
cmp ebx, 7
ja short loc_00014cc5  ; ja 0x14cc5
cmp byte [esi], 1
jne short loc_00014cc5  ; jne 0x14cc5
cmp byte [esi + ebx*8 + 0x2c], 0
jne short loc_00014cab  ; jne 0x14cab
push eax
mov cl, bl
push eax
mov eax, 1
shl eax, cl
push eax
push dword [ebp - 0x20]
call fcn_00018730  ; call 0x18730
jmp short loc_00014cc2  ; jmp 0x14cc2

loc_00014cab:
push ecx
mov eax, 0xfffffffe
push ecx
mov cl, bl
rol eax, cl
movzx eax, al
push eax
push dword [ebp - 0x20]
call fcn_0001875d  ; call 0x1875d

loc_00014cc2:
add esp, 0x10

loc_00014cc5:
cmp dword [ebp - 0x1c], 1
jne short loc_00014d0b  ; jne 0x14d0b
cmp ebx, 0xd
ja short loc_00014d0b  ; ja 0x14d0b
cmp byte [esi + 8], 1
jne short loc_00014d0b  ; jne 0x14d0b
cmp byte [esi + ebx*8 + 0x2c], 0
lea ecx, [ebx - 8]
jne short loc_00014cf3  ; jne 0x14cf3
mov eax, dword [ebp - 0x1c]
push edx
push edx
shl eax, cl
movzx ecx, al
push ecx
push edi
call fcn_00018730  ; call 0x18730
jmp short loc_00014d08  ; jmp 0x14d08

loc_00014cf3:
push eax
push eax
mov eax, dword [ebp - 0x1c]
shl eax, cl
mov ecx, eax
not ecx
movzx ecx, cl
push ecx
push edi
call fcn_0001875d  ; call 0x1875d

loc_00014d08:
add esp, 0x10

loc_00014d0b:
inc ebx
jmp near loc_00014c74  ; jmp 0x14c74

loc_00014d11:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00014d19:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov esi, dword [ebp + 8]
mov edi, dword [ebp + 0xc]
call fcn_0001bfbb  ; call 0x1bfbb
cmp byte [esi + 0x10], 0
mov dword [ebp - 0x1c], eax
je near loc_00014e0a  ; je 0x14e0a
lea eax, [edi + 0xe4]
sub esp, 0xc
push eax
mov dword [ebp - 0x20], eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
xor edx, edx
mov ebx, eax
and ebx, 0x7fff

loc_00014d59:
mov dword [ebp - 0x24], edx
call fcn_0001c261  ; call 0x1c261
mov edx, dword [ebp - 0x24]
movzx eax, al
cmp edx, eax
jae short loc_00014d98  ; jae 0x14d98
cmp dword [ebp - 0x1c], 1
mov ecx, edx
jne short loc_00014d7a  ; jne 0x14d7a
mov ecx, dword [edx*4 + ref_000204b0]  ; mov ecx, dword [edx*4 + 0x204b0]

loc_00014d7a:
cmp byte [esi + edx*8 + 0x2c], 0
jne short loc_00014d8c  ; jne 0x14d8c
mov eax, 1
shl eax, cl
or ebx, eax
jmp short loc_00014d95  ; jmp 0x14d95

loc_00014d8c:
mov eax, 0xfffffffe
rol eax, cl
and ebx, eax

loc_00014d95:
inc edx
jmp short loc_00014d59  ; jmp 0x14d59

loc_00014d98:
lea eax, [edi + 0xe8]
sub esp, 0xc
push eax
mov dword [ebp - 0x1c], eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
xor ecx, ecx
mov edi, eax
and edi, 0x3f

loc_00014db4:
mov dword [ebp - 0x24], ecx
call fcn_0001c2f8  ; call 0x1c2f8
mov ecx, dword [ebp - 0x24]
movzx eax, al
cmp ecx, eax
jae short loc_00014de7  ; jae 0x14de7
cmp byte [esi + ecx*4 + 0x9c], 0
je short loc_00014ddb  ; je 0x14ddb
mov eax, 0xfffffffe
rol eax, cl
and edi, eax
jmp short loc_00014de4  ; jmp 0x14de4

loc_00014ddb:
mov eax, 1
shl eax, cl
or edi, eax

loc_00014de4:
inc ecx
jmp short loc_00014db4  ; jmp 0x14db4

loc_00014de7:
push eax
push eax
push ebx
push dword [ebp - 0x20]
call fcn_00017e8f  ; call 0x17e8f
mov eax, dword [ebp - 0x1c]
add esp, 0x10
mov dword [ebp + 0xc], edi
mov dword [ebp + 8], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017e8f  ; jmp 0x17e8f

loc_00014e0a:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00014e12:
push ebp
mov ebp, esp
sub esp, 0x10
mov eax, dword [ebp + 8]
push 0x100
add eax, 0x7a
push eax
call fcn_00018927  ; call 0x18927
add esp, 0x10
leave
ret

fcn_00014e2e:
push ebp
mov ebp, esp
push ebx
push ecx
mov edx, dword [ebp + 8]
mov eax, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
cmp byte [edx + 0x10], 0
je short loc_00014e67  ; je 0x14e67
push edx
push edx
push eax
lea eax, [ebx + 0x10]
add ebx, 4
push eax
call fcn_00017e8f  ; call 0x17e8f
add esp, 0x10
mov dword [ebp + 8], ebx
mov ebx, dword [ebp - 4]
mov dword [ebp + 0xc], 6
leave
jmp near fcn_00018927  ; jmp 0x18927

loc_00014e67:
mov ebx, dword [ebp - 4]
leave
ret

fcn_00014e6c:
push ebp
mov ebp, esp
push ebx
push edx
mov eax, dword [ebp + 8]
mov ebx, dword [ebp + 0x10]
cmp byte [eax + 0x10], 0
je short loc_00014ea6  ; je 0x14ea6
push eax
push eax
push 0xfff9
lea eax, [ebx + 4]
add ebx, 0x10
push eax
call fcn_00018954  ; call 0x18954
add esp, 0x10
mov dword [ebp + 8], ebx
mov ebx, dword [ebp - 4]
mov dword [ebp + 0xc], 0
leave
jmp near fcn_00017e8f  ; jmp 0x17e8f

loc_00014ea6:
mov ebx, dword [ebp - 4]
leave
ret

fcn_00014eab:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov esi, dword [ebp + 0x10]
mov edi, dword [ebp + 8]
call fcn_0001bfbb  ; call 0x1bfbb
mov dword [ebp - 0x24], eax
call fcn_0001bbfd  ; call 0x1bbfd
mov ebx, eax
call fcn_0001c0bd  ; call 0x1c0bd
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
call fcn_00009dc2  ; call 0x9dc2
add esp, 0x10

loc_00014f01:
call fcn_0001c261  ; call 0x1c261
movzx eax, al
cmp ebx, eax
jae near loc_00014fc1  ; jae 0x14fc1
inc ebx
mov eax, ebx
push 0
shl eax, 8
push 0xfffffffffffffffe
mov dword [ebp - 0x28], eax
sub eax, 0x1affbff1
push eax
push esi
call fcn_00009dc2  ; call 0x9dc2
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00014f55  ; je 0x14f55
cmp byte [edi + ebx*8 + 0x27], 7
jbe short loc_00014f55  ; jbe 0x14f55
push edx
push ref_000253a7  ; push 0x253a7
push 0xc0b
push ref_0002531e  ; push 0x2531e
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00014f55:
mov al, byte [edi + ebx*8 + 0x27]
and eax, 7
mov dword [ebp - 0x20], eax
shl dword [ebp - 0x20], 0xb
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00014f8b  ; je 0x14f8b
cmp byte [edi + ebx*8 + 0x26], 7
jbe short loc_00014f8b  ; jbe 0x14f8b
push eax
push ref_000253e3  ; push 0x253e3
push 0xc0d
push ref_0002531e  ; push 0x2531e
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00014f8b:
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
call fcn_00009dc2  ; call 0x9dc2
add esp, 0x10
jmp near loc_00014f01  ; jmp 0x14f01

loc_00014fc1:
push 0x180000
push 0xffffffffffffffff
push 0xe5007f14
push esi
call fcn_00009dc2  ; call 0x9dc2
add esp, 0x10
cmp dword [ebp - 0x24], 2
jne short loc_00014ff1  ; jne 0x14ff1
push 0
push 0xff3fffff
push 0xe5007f02
push esi
call fcn_00009dc2  ; call 0x9dc2
add esp, 0x10

loc_00014ff1:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00014ff9:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov esi, dword [ebp + 8]
mov ebx, dword [ebp + 0xc]
call fcn_0001bfbb  ; call 0x1bfbb
cmp eax, 2
jne short loc_0001502e  ; jne 0x1502e
cmp byte [esi + 0x284], 0
jne short loc_0001502e  ; jne 0x1502e
push ecx
push ecx
push 5
lea eax, [ebx + 0x3a84]
push eax
call fcn_00018b14  ; call 0x18b14
add esp, 0x10

loc_0001502e:
push 0xc0
push 0xffffffffffffffff
push 0xe5004001
push ebx
xor ebx, ebx
call fcn_00009dc2  ; call 0x9dc2
add esp, 0x10

loc_00015045:
call fcn_0001c245  ; call 0x1c245
cmp bl, al
jae short loc_000150a7  ; jae 0x150a7
movzx edi, bl
push eax
movzx eax, byte [edi + edi + ref_000204f1]  ; movzx eax, byte [edi + edi + 0x204f1]
push eax
movzx eax, byte [edi + edi + ref_000204f0]  ; movzx eax, byte [edi + edi + 0x204f0]
add edi, 0x50
push eax
movzx eax, byte [esi + 1]
push eax
call fcn_00016c9a  ; call 0x16c9a
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
call fcn_00018b14  ; call 0x18b14
mov ecx, dword [ebp - 0x1c]
pop eax
pop edx
add ecx, 0x78
push 3
push ecx
call fcn_00018b14  ; call 0x18b14
add esp, 0x10
jmp short loc_00015045  ; jmp 0x15045

loc_000150a7:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000150af:
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
call fcn_00014ff9  ; call 0x14ff9
add esp, 0x10
mov dword [ebp + 0xc], esi
mov dword [ebp + 8], ebx
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00013c3e  ; jmp 0x13c3e

fcn_000150d7:
push ebp
mov edx, 0x18
mov ebp, esp
push edi
push esi
mov esi, ref_000271d0  ; mov esi, 0x271d0
push ebx
mov ebx, 0x24
sub esp, 0x1c
mov eax, dword [ebp + 0x10]
mov edi, dword [ebp + 8]
dec al
mov eax, ref_000270b0  ; mov eax, 0x270b0
cmovne ebx, edx
cmovne esi, eax
call fcn_0001c2f8  ; call 0x1c2f8
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

loc_0001512d:
cmp ebx, dword [ebp - 0x24]
je near loc_000151bf  ; je 0x151bf
cmp byte [ebx], 1
jne short loc_000151b1  ; jne 0x151b1
mov byte [ebp - 0x19], 0

loc_0001513f:
movzx eax, byte [ebp - 0x19]
cmp ax, word [ebp - 0x1c]
jae short loc_000151b1  ; jae 0x151b1
movzx eax, byte [ebp - 0x19]
add eax, dword [ebp - 0x20]
imul eax, eax, 0xc
add eax, esi
push dword [eax + 8]
push dword [eax + 4]
push dword [eax]
push dword [ebp + 0xc]
call fcn_00009dc2  ; call 0x9dc2
mov edi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_000151ac  ; je 0x151ac
test edi, edi
jns short loc_000151ac  ; jns 0x151ac
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00015194  ; je 0x15194
push edx
push edi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00015194:
push eax
push ref_000206f4  ; push 0x206f4
push 0xcbb
push ref_0002531e  ; push 0x2531e
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000151ac:
inc byte [ebp - 0x19]
jmp short loc_0001513f  ; jmp 0x1513f

loc_000151b1:
mov eax, dword [ebp - 0x28]
add ebx, 4
add dword [ebp - 0x20], eax
jmp near loc_0001512d  ; jmp 0x1512d

loc_000151bf:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000151c7:
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
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000151f9  ; je 0x151f9
push eax
push eax
push ref_0002541f  ; push 0x2541f
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000151f9:
call fcn_0001bfbb  ; call 0x1bfbb
mov edx, esi
movzx esi, dl
mov dword [ebp - 0x20], eax
push eax
push 0
push 0x1f
push esi
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 0
push 0x14
push esi
mov dword [ebp - 0x2c], eax
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push 0
push 0x1d
push esi
mov dword [ebp - 0x24], eax
call fcn_00016c9a  ; call 0x16c9a
add esp, 0x10
cmp dword [ebp - 0x20], 1
mov dword [ebp - 0x1c], 0
mov dword [ebp - 0x30], eax
jne short loc_00015255  ; jne 0x15255
push ecx
push 0
push 0x1a
push esi
call fcn_00016c9a  ; call 0x16c9a
add esp, 0x10
mov dword [ebp - 0x1c], eax

loc_00015255:
mov eax, dword [ebp - 0x2c]
sub esp, 0xc
add eax, 0x40
push eax
call fcn_00017dc2  ; call 0x17dc2
mov word [ebp - 0x48], ax
mov eax, dword [ebp - 0x2c]
add eax, 2
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
cmp byte [ebx], 0
jne short loc_00015284  ; jne 0x15284
or dword [edi], 0x8000

loc_00015284:
cmp dword [ebp - 0x20], 1
jne short loc_00015296  ; jne 0x15296
cmp byte [ebx + 8], 0
jne short loc_00015296  ; jne 0x15296
or dword [edi], 0x2000

loc_00015296:
cmp byte [ebx + 0x10], 0
jne short loc_000152a2  ; jne 0x152a2
or dword [edi], 0x8000000

loc_000152a2:
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
call fcn_000135df  ; call 0x135df
mov esi, dword [ebp - 0x24]
add esp, 0x1c
push esi
push dword [ebp + 0x10]
push ebx
call fcn_00014e2e  ; call 0x14e2e
mov dword [esp], esi
push edi
push dword [ebp - 0x28]
push dword [ebp + 0x10]
push ebx
call fcn_000137fe  ; call 0x137fe
add esp, 0x20
cmp byte [ebp - 0x34], 7
jbe short loc_000152f8  ; jbe 0x152f8
movzx eax, byte [ebp - 0x20]
push ecx
push eax
push dword [ebp + 0x18]
push ebx
call fcn_000150d7  ; call 0x150d7
add esp, 0x10

loc_000152f8:
push eax
mov esi, dword [ebp - 0x24]
push eax
push dword [ebp - 0x2c]
push esi
push edi
push dword [ebp - 0x28]
push dword [ebp + 0x10]
push ebx
call fcn_00013f3d  ; call 0x13f3d
add esp, 0x1c
push dword [ebp - 0x1c]
push dword [ebp - 0x30]
push ebx
call fcn_00014b58  ; call 0x14b58
pop eax
pop edx
push esi
push ebx
call fcn_000148a3  ; call 0x148a3
add esp, 0xc
push dword [ebp + 0x18]
push edi
push ebx
call fcn_00014eab  ; call 0x14eab
add esp, 0x10
cmp byte [ebx + 0xb4], 1
jne short loc_00015393  ; jne 0x15393
mov esi, dword [ebp - 0x48]
sub esp, 0xc
and esi, 0xfffc
add esi, 0x3c
push esi
call fcn_00018ef6  ; call 0x18ef6
pop ecx
mov edi, eax
pop eax
mov eax, edi
or eax, 2
and edi, 0xfffd
movzx eax, ax
push eax
push esi
call fcn_00018f27  ; call 0x18f27
add esp, 0xc
push dword [ebp - 0x1c]
push dword [ebp - 0x30]
push ebx
call fcn_00014c4f  ; call 0x14c4f
pop eax
pop edx
push dword [ebp - 0x24]
push ebx
call fcn_00014d19  ; call 0x14d19
pop ecx
pop eax
push edi
push esi
call fcn_00018f27  ; call 0x18f27
add esp, 0x10

loc_00015393:
cmp byte [ebx + 1], 1
jne short loc_000153ac  ; jne 0x153ac
cmp byte [ebx], 1
jne short loc_000153ac  ; jne 0x153ac
sub esp, 0xc
push dword [ebp - 0x30]
call fcn_00014e12  ; call 0x14e12
add esp, 0x10

loc_000153ac:
cmp dword [ebp - 0x20], 1
jne short loc_000153cc  ; jne 0x153cc
cmp byte [ebx + 9], 1
jne short loc_000153cc  ; jne 0x153cc
cmp byte [ebx + 8], 1
jne short loc_000153cc  ; jne 0x153cc
sub esp, 0xc
push dword [ebp - 0x1c]
call fcn_00014e12  ; call 0x14e12
add esp, 0x10

loc_000153cc:
push edx
push dword [ebp - 0x24]
push dword [ebp + 0x10]
push ebx
call fcn_00014e6c  ; call 0x14e6c
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_000153f6  ; je 0x153f6
push eax
push eax
push ref_00025438  ; push 0x25438
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000153f6:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00015400:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0x10]
push ebx
mov ebx, dword [ebp + 0xc]
add esi, ebx

loc_0001540d:
cmp ebx, esi
je short loc_00015424  ; je 0x15424
inc ebx
movzx eax, byte [ebx - 1]
sub esp, 0xc
push eax
call fcn_0001641a  ; call 0x1641a
add esp, 0x10
jmp short loc_0001540d  ; jmp 0x1540d

loc_00015424:
lea esp, [ebp - 8]
or eax, 0xffffffff
pop ebx
pop esi
pop ebp
ret

fcn_0001542e:
push ebp
mov ebp, esp
push ebx
sub esp, 0xc
mov ebx, dword [ebp + 8]
push 0x80
movzx eax, bx
movzx ebx, bh
push eax
call fcn_00018eea  ; call 0x18eea
pop eax
pop edx
push 0x90
push ebx
call fcn_00018eea  ; call 0x18eea
add esp, 0x10
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001545e:
push ebp
mov ebp, esp
sub esp, 8
lea eax, [ebp + 0xc]
push eax
push dword [ebp + 8]
push 0
push fcn_00015400  ; push 0x15400
call fcn_000155ac  ; call 0x155ac
leave
ret

fcn_00015479:
push ebp
xor eax, eax
mov ebp, esp
pop ebp
ret

fcn_00015480:
push ebp
xor eax, eax
mov ebp, esp
pop ebp
ret

fcn_00015487:
push ebp
mov ebp, esp
pop ebp
ret

fcn_0001548c:
push ebp
mov ebp, esp
pop ebp
ret

fcn_00015491:
push ebp
mov ebp, esp
push edi
mov edi, eax
push esi
push ebx
mov ebx, edx
sub esp, 0x1c

loc_0001549e:
test ebx, ebx
jle short loc_000154ce  ; jle 0x154ce
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
jne short loc_000154d2  ; jne 0x154d2
or eax, 0xffffffff
jmp short loc_000154d6  ; jmp 0x154d6

loc_000154ce:
xor eax, eax
jmp short loc_000154d6  ; jmp 0x154d6

loc_000154d2:
sub ebx, esi
jmp short loc_0001549e  ; jmp 0x1549e

loc_000154d6:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000154de:
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
jne short loc_000154ff  ; jne 0x154ff

loc_000154f1:
cmp dword [ebp + 8], 0
je short loc_00015537  ; je 0x15537
cmp dword [ebp + 0xc], 0
je short loc_00015537  ; je 0x15537
jmp short loc_00015520  ; jmp 0x15520

loc_000154ff:
sub esp, 0xc
mov ecx, eax
push edx
mov eax, ref_00020558  ; mov eax, 0x20558
mov edx, edi
call fcn_00015491  ; call 0x15491
add esp, 0x10
test eax, eax
jns short loc_000154f1  ; jns 0x154f1

loc_00015518:
or eax, 0xffffffff
jmp near loc_000155a4  ; jmp 0x155a4

loc_00015520:
push edx
push dword [ebp + 0xc]
push dword [ebp + 8]
push dword [ebx]
call esi
add esp, 0x10
mov dword [ebx], eax
test eax, eax
je short loc_00015518  ; je 0x15518
add edi, dword [ebp + 0xc]

loc_00015537:
cmp dword [ebp + 0x10], 0
jne short loc_00015548  ; jne 0x15548

loc_0001553d:
add edi, dword [ebp + 0x10]
cmp dword [ebp + 0x18], 0
je short loc_00015578  ; je 0x15578
jmp short loc_00015564  ; jmp 0x15564

loc_00015548:
mov edx, dword [ebp + 0x10]
sub esp, 0xc
mov ecx, esi
push ebx
mov eax, ref_00020544  ; mov eax, 0x20544
call fcn_00015491  ; call 0x15491
add esp, 0x10
test eax, eax
jns short loc_0001553d  ; jns 0x1553d
jmp short loc_00015518  ; jmp 0x15518

loc_00015564:
push eax
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebx]
call esi
add esp, 0x10
mov dword [ebx], eax
test eax, eax
je short loc_00015518  ; je 0x15518

loc_00015578:
add edi, dword [ebp + 0x18]
cmp dword [ebp + 0x1c], 0
je short loc_0001559f  ; je 0x1559f
mov edx, dword [ebp + 0x1c]
sub esp, 0xc
mov ecx, esi
push ebx
mov eax, ref_00020558  ; mov eax, 0x20558
call fcn_00015491  ; call 0x15491
add esp, 0x10
test eax, eax
js near loc_00015518  ; js 0x15518

loc_0001559f:
mov eax, dword [ebp + 0x1c]
add eax, edi

loc_000155a4:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000155ac:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xec
mov eax, dword [ebp + 0x10]
mov ebx, dword [ebp + 0x14]
test eax, eax
je short loc_00015610  ; je 0x15610
mov dword [ebp - 0xe0], 0
mov dword [ebp - 0xd4], 0
jmp short loc_00015631  ; jmp 0x15631

loc_000155d8:
cmp dl, 0x2a
jne near loc_0001566c  ; jne 0x1566c
mov ecx, dword [ebx]
lea eax, [ebx + 4]
mov dword [ebp - 0xc4], ecx
test ecx, ecx
jns short loc_000155fd  ; jns 0x155fd
neg dword [ebp - 0xc4]
or dword [ebp - 0xb4], 4

loc_000155fd:
inc edi
mov ebx, eax

loc_00015600:
cmp dword [ebp - 0xc4], 0x1f4
jle near loc_000156c4  ; jle 0x156c4

loc_00015610:
or eax, 0xffffffff
jmp near loc_00016176  ; jmp 0x16176

loc_00015618:
test dl, dl
je short loc_00015624  ; je 0x15624
inc esi

loc_0001561d:
mov dl, byte [esi]
cmp dl, 0x25
jne short loc_00015618  ; jne 0x15618

loc_00015624:
mov edi, esi
sub edi, eax
jne short loc_0001563e  ; jne 0x1563e

loc_0001562a:
cmp byte [esi], 0
jne short loc_00015659  ; jne 0x15659
mov eax, esi

loc_00015631:
cmp byte [eax], 0
je near loc_0001613b  ; je 0x1613b
mov esi, eax
jmp short loc_0001561d  ; jmp 0x1561d

loc_0001563e:
push edx
push edi
push eax
push dword [ebp + 0xc]
call dword [ebp + 8]  ; ucall
add esp, 0x10
mov dword [ebp + 0xc], eax
test eax, eax
je short loc_00015610  ; je 0x15610
add dword [ebp - 0xd4], edi
jmp short loc_0001562a  ; jmp 0x1562a

loc_00015659:
lea edi, [esi + 1]
mov dword [ebp - 0xb4], 0

loc_00015666:
mov dl, byte [edi]
test dl, dl
jne short loc_00015678  ; jne 0x15678

loc_0001566c:
mov dword [ebp - 0xc4], 0
jmp short loc_000156b4  ; jmp 0x156b4

loc_00015678:
mov eax, ref_0002053c  ; mov eax, 0x2053c

loc_0001567d:
mov cl, byte [eax]
cmp cl, dl
je near loc_00016143  ; je 0x16143
test cl, cl
je near loc_000155d8  ; je 0x155d8
inc eax
jmp short loc_0001567d  ; jmp 0x1567d

loc_00015692:
cmp dword [ebp - 0xc4], 0x1f3
jg near loc_00015600  ; jg 0x15600
imul edx, dword [ebp - 0xc4], 0xa
inc edi
lea eax, [edx + eax - 0x30]
mov dword [ebp - 0xc4], eax

loc_000156b4:
movsx eax, byte [edi]
lea edx, [eax - 0x30]
cmp dl, 9
jbe short loc_00015692  ; jbe 0x15692
jmp near loc_00015600  ; jmp 0x15600

loc_000156c4:
cmp byte [edi], 0x2e
mov dword [ebp - 0xc0], 0xffffffff
jne short loc_0001573d  ; jne 0x1573d
cmp byte [edi + 1], 0x2a
je short loc_000156e6  ; je 0x156e6
inc edi
mov dword [ebp - 0xc0], 0
jmp short loc_00015722  ; jmp 0x15722

loc_000156e6:
lea eax, [ebx + 4]
mov ebx, dword [ebx]
mov dword [ebp - 0xc0], ebx
cmp ebx, 0x1f4
jg near loc_00015610  ; jg 0x15610
add edi, 2
mov ebx, eax
jmp short loc_0001573d  ; jmp 0x1573d

loc_00015704:
cmp dword [ebp - 0xc0], 0x1f3
jg short loc_0001572d  ; jg 0x1572d
imul edx, dword [ebp - 0xc0], 0xa
inc edi
lea eax, [edx + eax - 0x30]
mov dword [ebp - 0xc0], eax

loc_00015722:
movsx eax, byte [edi]
lea edx, [eax - 0x30]
cmp dl, 9
jbe short loc_00015704  ; jbe 0x15704

loc_0001572d:
cmp dword [ebp - 0xc0], 0x1f4
jg near loc_00015610  ; jg 0x15610

loc_0001573d:
cmp byte [edi], 0x3a
mov dword [ebp - 0xb0], 0
jne short loc_000157af  ; jne 0x157af
cmp byte [edi + 1], 0x2a
jne short loc_00015796  ; jne 0x15796
mov esi, dword [ebx]
lea eax, [ebx + 4]
mov dword [ebp - 0xb0], esi
test esi, esi
js short loc_0001576b  ; js 0x1576b
cmp esi, 0x24
jle short loc_00015775  ; jle 0x15775
jmp near loc_00015610  ; jmp 0x15610

loc_0001576b:
mov dword [ebp - 0xb0], 0

loc_00015775:
add edi, 2
mov ebx, eax
jmp short loc_000157af  ; jmp 0x157af

loc_0001577c:
cmp dword [ebp - 0xb0], 0x23
jg short loc_000157a2  ; jg 0x157a2
imul ecx, dword [ebp - 0xb0], 0xa
lea eax, [ecx + eax - 0x30]
mov dword [ebp - 0xb0], eax

loc_00015796:
inc edi
movsx eax, byte [edi]
lea edx, [eax - 0x30]
cmp dl, 9
jbe short loc_0001577c  ; jbe 0x1577c

loc_000157a2:
cmp dword [ebp - 0xb0], 0x24
jg near loc_00015610  ; jg 0x15610

loc_000157af:
cmp byte [edi], 0x5b
mov dword [ebp - 0xcc], 0
jne short loc_000157e8  ; jne 0x157e8
lea eax, [edi + 1]
not edi
mov dword [ebp - 0xe0], eax
mov esi, edi

loc_000157cb:
mov dl, byte [eax]
lea edi, [eax + esi]
mov dword [ebp - 0xcc], edi
test dl, dl
je near loc_00015610  ; je 0x15610
cmp dl, 0x5d
lea eax, [eax + 1]
jne short loc_000157cb  ; jne 0x157cb
mov edi, eax

loc_000157e8:
mov al, byte [edi]
mov esi, ref_0002544f  ; mov esi, 0x2544f
test al, al
je short loc_00015820  ; je 0x15820

loc_000157f3:
mov dl, byte [esi]
cmp dl, al
je short loc_00015804  ; je 0x15804
test dl, dl
je short loc_00015800  ; je 0x15800
inc esi
jmp short loc_000157f3  ; jmp 0x157f3

loc_00015800:
xor eax, eax
jmp short loc_00015820  ; jmp 0x15820

loc_00015804:
mov dl, byte [edi + 1]
lea esi, [edi + 1]
test dl, dl
je near loc_0001615b  ; je 0x1615b
cmp dl, al
jne near loc_0001615b  ; jne 0x1615b
or eax, 1
add edi, 2

loc_00015820:
mov dl, byte [edi]
test dl, dl
jne short loc_00015830  ; jne 0x15830
mov eax, dword [ebx]
add ebx, 4
jmp near loc_00015631  ; jmp 0x15631

loc_00015830:
mov byte [ebp - 0xb8], 0
cmp dl, 0x43
jne short loc_00015852  ; jne 0x15852
mov cl, byte [edi + 1]
lea esi, [edi + 1]
mov byte [ebp - 0xb8], cl
test cl, cl
je near loc_00015610  ; je 0x15610
mov edi, esi

loc_00015852:
mov byte [ebp - 0xa3], dl
cmp dl, 0x6e
jne short loc_000158b3  ; jne 0x158b3
mov edx, dword [ebx]
test edx, edx
je near loc_0001616f  ; je 0x1616f
cmp al, 0x68
jne short loc_00015879  ; jne 0x15879
mov eax, dword [ebp - 0xd4]
mov word [edx], ax
jmp near loc_0001616f  ; jmp 0x1616f

loc_00015879:
cmp al, 0x69
jne short loc_0001588a  ; jne 0x1588a
mov al, byte [ebp - 0xd4]
mov byte [edx], al
jmp near loc_0001616f  ; jmp 0x1616f

loc_0001588a:
cmp al, 0x6c
je short loc_000158a6  ; je 0x158a6
cmp al, 0x6a
jne short loc_000158a6  ; jne 0x158a6
mov eax, dword [ebp - 0xd4]
mov dword [edx + 4], 0
mov dword [edx], eax
jmp near loc_0001616f  ; jmp 0x1616f

loc_000158a6:
mov eax, dword [ebp - 0xd4]
mov dword [edx], eax
jmp near loc_0001616f  ; jmp 0x1616f

loc_000158b3:
cmp dl, 0x25
jne short loc_000158e0  ; jne 0x158e0
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
call fcn_000154de  ; call 0x154de
add esp, 0x20
jmp near loc_00016125  ; jmp 0x16125

loc_000158e0:
mov esi, edx
and esi, 0xffffffdf
mov ecx, esi
cmp cl, 0x43
jne short loc_00015964  ; jne 0x15964
cmp dl, 0x63
jne short loc_000158fe  ; jne 0x158fe
mov eax, dword [ebx]
add ebx, 4
mov byte [ebp - 0x9a], al
jmp short loc_0001590a  ; jmp 0x1590a

loc_000158fe:
mov al, byte [ebp - 0xb8]
mov byte [ebp - 0x9a], al

loc_0001590a:
mov esi, dword [ebp - 0xc0]
mov eax, 1
test esi, esi
cmovs esi, eax
test esi, esi
cmovg eax, esi
xor esi, esi
mov dword [ebp - 0xb0], eax

loc_00015927:
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
call fcn_000154de  ; call 0x154de
add esp, 0x20
cmp eax, 0xffffffff
je near loc_00015610  ; je 0x15610
add esi, eax
dec dword [ebp - 0xb0]
jne short loc_00015927  ; jne 0x15927
mov eax, esi
jmp near loc_00016125  ; jmp 0x16125

loc_00015964:
cmp dl, 0x73
jne near loc_000159fb  ; jne 0x159fb
lea eax, [ebx + 4]
mov edx, ref_00025456  ; mov edx, 0x25456
mov dword [ebp - 0xb0], eax
mov eax, dword [ebx]
test eax, eax
cmove eax, edx
mov edx, eax

loc_00015984:
cmp byte [edx], 0
je short loc_0001598c  ; je 0x1598c
inc edx
jmp short loc_00015984  ; jmp 0x15984

loc_0001598c:
mov ebx, dword [ebp - 0xc0]
sub edx, eax
test ebx, ebx
js short loc_0001599d  ; js 0x1599d
cmp edx, ebx
cmovg edx, ebx

loc_0001599d:
mov esi, dword [ebp - 0xc4]
xor ecx, ecx
mov ebx, esi
sub ebx, edx
cmp edx, esi
mov esi, dword [ebp - 0xb4]
cmovl ecx, ebx
xor ebx, ebx
and esi, 4
je short loc_000159bf  ; je 0x159bf
mov ebx, ecx
xor ecx, ecx

loc_000159bf:
test byte [ebp - 0xb4], 0x40
je short loc_000159d7  ; je 0x159d7
add ebx, ecx
xor ecx, ecx
test esi, esi
sete cl
add ecx, ebx
sar ecx, 1
sub ebx, ecx

loc_000159d7:
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
call fcn_000154de  ; call 0x154de
add esp, 0x20
mov ebx, dword [ebp - 0xb0]
jmp near loc_00016125  ; jmp 0x16125

loc_000159fb:
cmp dl, 0x70
jne short loc_00015a27  ; jne 0x15a27
mov byte [ebp - 0xa3], 0x58
xor eax, eax
mov dword [ebp - 0xc0], 8
mov dword [ebp - 0xc4], 8
mov dword [ebp - 0xb4], 0x28

loc_00015a27:
mov dl, byte [ebp - 0xa3]
cmp dl, 0x69
sete cl
mov byte [ebp - 0xc8], dl
mov byte [ebp - 0xd8], cl
cmp dl, 0x64
je short loc_00015a4f  ; je 0x15a4f
test cl, cl
jne short loc_00015a4f  ; jne 0x15a4f
xor esi, esi
cmp dl, 0x49
jne short loc_00015a7e  ; jne 0x15a7e

loc_00015a4f:
mov dl, byte [ebp - 0xc8]
mov esi, 0xa
and dword [ebp - 0xb4], 0xfffffff7
or dword [ebp - 0xb4], 0x80
and edx, 0xffffffdf
cmp dl, 0x49
jne short loc_00015a7e  ; jne 0x15a7e
mov ecx, dword [ebp - 0xb0]
test ecx, ecx
cmovne esi, ecx

loc_00015a7e:
mov dl, byte [ebp - 0xc8]
and edx, 0xffffffdf
cmp dl, 0x58
sete cl
test cl, cl
mov byte [ebp - 0xbc], cl
mov ecx, 0x10
cmovne esi, ecx
cmp dl, 0x55
jne short loc_00015ab2  ; jne 0x15ab2
mov ecx, dword [ebp - 0xb0]
mov esi, 0xa
test ecx, ecx
cmovne esi, ecx

loc_00015ab2:
mov cl, byte [ebp - 0xc8]
cmp cl, 0x6f
je short loc_00015acc  ; je 0x15acc
cmp cl, 0x62
je short loc_00015ad3  ; je 0x15ad3
cmp esi, 1
ja short loc_00015ad8  ; ja 0x15ad8
jmp near loc_00015610  ; jmp 0x15610

loc_00015acc:
mov esi, 8
jmp short loc_00015ad8  ; jmp 0x15ad8

loc_00015ad3:
mov esi, 2

loc_00015ad8:
test byte [ebp - 0xb4], 0x80
je near loc_00015b9d  ; je 0x15b9d
cmp al, 0x6c
jne short loc_00015aee  ; jne 0x15aee
lea eax, [ebx + 4]
jmp short loc_00015af5  ; jmp 0x15af5

loc_00015aee:
cmp al, 0x6a
jne short loc_00015aff  ; jne 0x15aff
lea eax, [ebx + 8]

loc_00015af5:
mov dword [ebp - 0xb8], eax

loc_00015afb:
mov edx, dword [ebx]
jmp short loc_00015b23  ; jmp 0x15b23

loc_00015aff:
lea edx, [ebx + 4]
cmp al, 0x7a
mov dword [ebp - 0xb8], edx
je short loc_00015afb  ; je 0x15afb
mov edx, dword [ebx]
cmp al, 0x74
je short loc_00015b23  ; je 0x15b23
cmp al, 0x68
jne short loc_00015b1b  ; jne 0x15b1b
movsx edx, dx
jmp short loc_00015b23  ; jmp 0x15b23

loc_00015b1b:
movsx ecx, dl
cmp al, 0x69
cmove edx, ecx

loc_00015b23:
mov ecx, edx
sar ecx, 0x1f
mov eax, ecx
xor eax, edx
sub eax, ecx
mov dword [ebp - 0xb0], eax
sar eax, 0x1f
mov dword [ebp - 0xac], eax
test edx, edx
jns short loc_00015b4a  ; jns 0x15b4a
mov byte [ebp - 0xa2], 0x2d
jmp short loc_00015b70  ; jmp 0x15b70

loc_00015b4a:
test byte [ebp - 0xb4], 2
je short loc_00015b5c  ; je 0x15b5c
mov byte [ebp - 0xa2], 0x2b
jmp short loc_00015b70  ; jmp 0x15b70

loc_00015b5c:
mov eax, dword [ebp - 0xb4]
and eax, 1
neg eax
and eax, 0x20
mov byte [ebp - 0xa2], al

loc_00015b70:
cmp byte [ebp - 0xa2], 0
mov dword [ebp - 0xd0], 0
je near loc_00015c54  ; je 0x15c54
or dword [ebp - 0xb4], 8
mov dword [ebp - 0xd0], 1
jmp near loc_00015c54  ; jmp 0x15c54

loc_00015b9d:
cmp al, 0x6c
jne short loc_00015bb0  ; jne 0x15bb0
lea eax, [ebx + 4]
xor edx, edx
mov dword [ebp - 0xb8], eax
mov eax, dword [ebx]
jmp short loc_00015bc2  ; jmp 0x15bc2

loc_00015bb0:
cmp al, 0x6a
jne short loc_00015bd0  ; jne 0x15bd0
lea eax, [ebx + 8]
mov edx, dword [ebx + 4]
mov dword [ebp - 0xb8], eax
mov eax, dword [ebx]

loc_00015bc2:
mov dword [ebp - 0xb0], eax
mov dword [ebp - 0xac], edx
jmp short loc_00015c43  ; jmp 0x15c43

loc_00015bd0:
lea edx, [ebx + 4]
cmp al, 0x7a
mov dword [ebp - 0xb8], edx
jne short loc_00015bf0  ; jne 0x15bf0
mov eax, dword [ebx]
mov dword [ebp - 0xb0], eax
sar eax, 0x1f
mov dword [ebp - 0xac], eax
jmp short loc_00015c43  ; jmp 0x15c43

loc_00015bf0:
cmp al, 0x74
jne short loc_00015c07  ; jne 0x15c07
mov eax, dword [ebx]
mov dword [ebp - 0xb0], eax
sar eax, 0x1f
mov dword [ebp - 0xac], eax
jmp short loc_00015c43  ; jmp 0x15c43

loc_00015c07:
mov edx, dword [ebx]
mov dword [ebp - 0xac], 0
mov dword [ebp - 0xb0], edx
cmp al, 0x68
jne short loc_00015c28  ; jne 0x15c28
movzx edx, dx
mov dword [ebp - 0xb0], edx
jmp short loc_00015c39  ; jmp 0x15c39

loc_00015c28:
cmp al, 0x69
jne short loc_00015c43  ; jne 0x15c43
movzx eax, byte [ebp - 0xb0]
mov dword [ebp - 0xb0], eax

loc_00015c39:
mov dword [ebp - 0xac], 0

loc_00015c43:
mov byte [ebp - 0xa2], 0x30
mov dword [ebp - 0xd0], 0

loc_00015c54:
mov eax, dword [ebp - 0xb0]
mov edx, dword [ebp - 0xac]
mov ebx, eax
or ebx, edx
setne al
je short loc_00015c82  ; je 0x15c82
cmp byte [ebp - 0xc8], 0x6f
mov edx, 1
cmovne edx, dword [ebp - 0xd0]
mov dword [ebp - 0xd0], edx

loc_00015c82:
cmp byte [ebp - 0xbc], 0
jne short loc_00015c94  ; jne 0x15c94
cmp byte [ebp - 0xc8], 0x62
jne short loc_00015cc2  ; jne 0x15cc2

loc_00015c94:
test byte [ebp - 0xb4], 0x20
jne short loc_00015ca9  ; jne 0x15ca9
test al, al
je short loc_00015cc2  ; je 0x15cc2
mov al, byte [ebp - 0xc8]
jmp short loc_00015cb2  ; jmp 0x15cb2

loc_00015ca9:
mov al, byte [ebp - 0xc8]
or eax, 0x20

loc_00015cb2:
mov byte [ebp - 0xa1], al
mov dword [ebp - 0xd0], 2

loc_00015cc2:
test byte [ebp - 0xb4], 8
je short loc_00015cd9  ; je 0x15cd9
lea eax, [ebp - 0xa2]
mov dword [ebp - 0xec], eax
jmp short loc_00015ced  ; jmp 0x15ced

loc_00015cd9:
mov dword [ebp - 0xec], 0
mov dword [ebp - 0xd0], 0

loc_00015ced:
cmp esi, 0xa
jne short loc_00015d58  ; jne 0x15d58
mov dword [ebp - 0xbc], 0
lea esi, [ebp - 0xa0]

loc_00015d02:
mov edx, dword [ebp - 0xac]
mov eax, dword [ebp - 0xb0]
mov ebx, edx
or ebx, eax
je near loc_00015ea6  ; je 0x15ea6
push esi
push 0xa
push dword [ebp - 0xac]
push dword [ebp - 0xb0]
call fcn_00017502  ; call 0x17502
mov bl, byte [ebp - 0xa0]
add esp, 0x10
inc dword [ebp - 0xbc]
mov dword [ebp - 0xb0], eax
mov eax, dword [ebp - 0xbc]
mov dword [ebp - 0xac], edx
lea edx, [ebx + 0x30]
neg eax
mov byte [eax + ebp - 0x18], dl
jmp short loc_00015d02  ; jmp 0x15d02

loc_00015d58:
cmp byte [ebp - 0xc8], 0x75
sete byte [ebp - 0xdc]
cmp esi, 8
sete dl
cmp esi, 2
je short loc_00015d89  ; je 0x15d89
test dl, dl
jne short loc_00015d89  ; jne 0x15d89
cmp esi, 0x10
je short loc_00015d89  ; je 0x15d89
mov dword [ebp - 0xbc], 0
jmp near loc_00015e8d  ; jmp 0x15e8d

loc_00015d89:
lea eax, [esi - 1]
cmp esi, 0x10
je short loc_00015d9e  ; je 0x15d9e
cmp dl, 1
sbb ecx, ecx
and ecx, 0xfffffffe
add ecx, 3
jmp short loc_00015da3  ; jmp 0x15da3

loc_00015d9e:
mov ecx, 4

loc_00015da3:
mov dword [ebp - 0xbc], 0

loc_00015dad:
mov esi, dword [ebp - 0xac]
mov ebx, dword [ebp - 0xb0]
mov edx, esi
or edx, ebx
je near loc_00015ea6  ; je 0x15ea6
mov edx, dword [ebp - 0xb0]
and edx, eax
cmp byte [ebp - 0xc8], 0x78
mov dl, byte [edx + ref_000204f4]  ; mov dl, byte [edx + 0x204f4]
je short loc_00015dec  ; je 0x15dec
cmp byte [ebp - 0xd8], 0
jne short loc_00015dec  ; jne 0x15dec
cmp byte [ebp - 0xdc], 0
je short loc_00015def  ; je 0x15def

loc_00015dec:
or edx, 0x20

loc_00015def:
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
jmp short loc_00015dad  ; jmp 0x15dad

loc_00015e2b:
push eax
push esi
push dword [ebp - 0xac]
push dword [ebp - 0xb0]
call fcn_00017470  ; call 0x17470
add esp, 0x10
cmp byte [ebp - 0xdc], 0
mov al, byte [eax + ref_000204f4]  ; mov al, byte [eax + 0x204f4]
jne short loc_00015ea1  ; jne 0x15ea1
cmp byte [ebp - 0xd8], 0
jne short loc_00015ea1  ; jne 0x15ea1

loc_00015e59:
inc dword [ebp - 0xbc]
mov edx, dword [ebp - 0xbc]
neg edx
mov byte [edx + ebp - 0x18], al
push eax
push esi
push dword [ebp - 0xac]
push dword [ebp - 0xb0]
call fcn_000174b9  ; call 0x174b9
add esp, 0x10
mov dword [ebp - 0xb0], eax
mov dword [ebp - 0xac], edx

loc_00015e8d:
mov edx, dword [ebp - 0xac]
mov eax, dword [ebp - 0xb0]
mov ebx, edx
or ebx, eax
jne short loc_00015e2b  ; jne 0x15e2b
jmp short loc_00015ea6  ; jmp 0x15ea6

loc_00015ea1:
or eax, 0x20
jmp short loc_00015e59  ; jmp 0x15e59

loc_00015ea6:
cmp dword [ebp - 0xcc], 0
mov dword [ebp - 0xe8], 0
je near loc_00016060  ; je 0x16060
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

loc_00015ef8:
cmp dword [ebp - 0xb0], 0
je near loc_00016060  ; je 0x16060
cmp dword [ebp - 0xcc], 0
je near loc_00016162  ; je 0x16162
mov ebx, dword [ebp - 0xd8]
mov al, byte [ebx]
cmp al, 0x2d
je near loc_00016060  ; je 0x16060
cmp al, 0x2a
je short loc_00015f43  ; je 0x15f43
mov ecx, dword [ebp - 0xcc]
mov edx, 1
xor eax, eax
sub ebx, ecx
mov dword [ebp - 0xdc], ecx
mov dword [ebp - 0xe4], ebx
jmp short loc_00015f93  ; jmp 0x15f93

loc_00015f43:
mov eax, dword [ebp - 0xb8]
lea esi, [eax + 4]
mov eax, dword [eax]
test eax, eax
js near loc_0001605a  ; js 0x1605a
mov ecx, dword [ebp - 0xd8]
mov edx, dword [ebp - 0xcc]
mov dword [ebp - 0xb8], esi
dec ecx
dec edx
mov dword [ebp - 0xdc], edx
jne short loc_00015fc9  ; jne 0x15fc9
jmp near loc_00016060  ; jmp 0x16060

loc_00015f77:
movsx esi, bl
sub esi, 0x30
imul esi, edx
imul ebx, edx, 0xa
add eax, esi
dec dword [ebp - 0xdc]
mov edx, ebx
je near loc_00016060  ; je 0x16060

loc_00015f93:
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
jbe short loc_00015f77  ; jbe 0x15f77

loc_00015fc9:
mov dl, byte [ecx]
lea ebx, [ecx - 1]
mov ecx, dword [ebp - 0xdc]
mov dword [ebp - 0xd8], ebx
mov byte [ebp - 0xe4], dl
dec ecx
mov dword [ebp - 0xcc], ecx
test eax, eax
je short loc_0001604b  ; je 0x1604b

loc_00015feb:
mov esi, dword [ebp - 0xb0]
cmp esi, eax
jle short loc_00016060  ; jle 0x16060
lea ecx, [ebp - 0x9a]
sub esi, eax
add ecx, dword [ebp - 0xc8]
xor edx, edx

loc_00016005:
cmp edx, esi
je short loc_00016013  ; je 0x16013
mov bl, byte [ecx + edx]
mov byte [ecx + edx - 1], bl
inc edx
jmp short loc_00016005  ; jmp 0x16005

loc_00016013:
mov ecx, dword [ebp - 0xb0]
dec dword [ebp - 0xc8]
add ecx, dword [ebp - 0xc8]
mov bl, byte [ebp - 0xe4]
inc dword [ebp - 0xbc]
sub ecx, eax
inc dword [ebp - 0xe8]
mov byte [ebp + ecx - 0x9a], bl
mov dword [ebp - 0xb0], edx
jmp near loc_00015ef8  ; jmp 0x15ef8

loc_0001604b:
cmp dword [ebp - 0xcc], 0
jne near loc_00015ef8  ; jne 0x15ef8
jmp short loc_00016060  ; jmp 0x16060

loc_0001605a:
mov dword [ebp - 0xb8], esi

loc_00016060:
cmp dword [ebp - 0xc0], 0
js short loc_00016072  ; js 0x16072
and dword [ebp - 0xb4], 0xffffffef
jmp short loc_0001607c  ; jmp 0x1607c

loc_00016072:
mov dword [ebp - 0xc0], 1

loc_0001607c:
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
je short loc_000160bf  ; je 0x160bf
mov eax, ecx
xor ecx, ecx

loc_000160bf:
test byte [ebp - 0xb4], 0x40
je short loc_000160d7  ; je 0x160d7
add eax, ecx
xor ecx, ecx
test edx, edx
sete cl
add ecx, eax
sar ecx, 1
sub eax, ecx

loc_000160d7:
sub esi, dword [ebp - 0xbc]
mov edx, esi
test byte [ebp - 0xb4], 0x10
je short loc_000160ec  ; je 0x160ec
add edx, ecx
xor ecx, ecx

loc_000160ec:
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
call fcn_000154de  ; call 0x154de
mov ebx, dword [ebp - 0xb8]
add esp, 0x20

loc_00016125:
test eax, eax
js near loc_00015610  ; js 0x15610

loc_0001612d:
add dword [ebp - 0xd4], eax
lea eax, [edi + 1]
jmp near loc_00015631  ; jmp 0x15631

loc_0001613b:
mov eax, dword [ebp - 0xd4]
jmp short loc_00016176  ; jmp 0x16176

loc_00016143:
sub eax, ref_0002053c  ; sub eax, 0x2053c
inc edi
mov eax, dword [eax*4 + ref_0002051c]  ; mov eax, dword [eax*4 + 0x2051c]
or dword [ebp - 0xb4], eax
jmp near loc_00015666  ; jmp 0x15666

loc_0001615b:
mov edi, esi
jmp near loc_00015820  ; jmp 0x15820

loc_00016162:
test eax, eax
jne near loc_00015feb  ; jne 0x15feb
jmp near loc_00016060  ; jmp 0x16060

loc_0001616f:
add ebx, 4
xor eax, eax
jmp short loc_0001612d  ; jmp 0x1612d

loc_00016176:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001617e:
push ebp
mov edx, dword [ref_00029bb8]  ; mov edx, dword [0x29bb8]
mov ebp, esp
mov eax, dword [ebp + 0xc]
mov dword [eax], edx
xor eax, eax
pop ebp
ret

fcn_00016190:
push ebp
mov ebp, esp
mov eax, dword [ebp + 0xc]
pop ebp
mov dword [ref_00029bb8], eax  ; mov dword [0x29bb8], eax
xor eax, eax
ret

fcn_0001619f:
push ebp
xor eax, eax
mov ebp, esp
pop ebp
ret

fcn_000161a6:
push ebp
mov ebp, esp
pop ebp
jmp near fcn_0001713e  ; jmp 0x1713e

fcn_000161af:
push ebp
mov ebp, esp
push ebx
mov ebx, eax
push edx
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00016205  ; je 0x16205
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
push ref_0002545d  ; push 0x2545d
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x40

loc_00016205:
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001620a:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov ebx, dword [ebp + 0xc]

loc_00016216:
mov esi, ref_00029b3c  ; mov esi, 0x29b3c
xor edi, edi

loc_0001621d:
cmp edi, dword [ref_00029cb0]  ; cmp edi, dword [0x29cb0]
jae short loc_00016267  ; jae 0x16267
push eax
add esi, 0xc
push eax
push dword [ebx + 4]
push dword [esi + 0x7c]
call fcn_00016ee8  ; call 0x16ee8
add esp, 0x10
test al, al
je short loc_00016264  ; je 0x16264
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001625a  ; je 0x1625a
push esi
push ref_00020584  ; push 0x20584
push ref_00025491  ; push 0x25491
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001625a:
mov eax, dword [ebx + 4]
call fcn_000161af  ; call 0x161af
jmp short loc_00016267  ; jmp 0x16267

loc_00016264:
inc edi
jmp short loc_0001621d  ; jmp 0x1621d

loc_00016267:
cmp edi, dword [ref_00029cb0]  ; cmp edi, dword [0x29cb0]
jne short loc_000162a4  ; jne 0x162a4
cmp edi, 0x13
jbe short loc_0001629c  ; jbe 0x1629c
call fcn_00015479  ; call 0x15479
mov ebx, 0x80000009
test al, al
je short loc_000162fc  ; je 0x162fc
push ecx
push ref_00020584  ; push 0x20584
push ref_000254a5  ; push 0x254a5
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp short loc_000162fc  ; jmp 0x162fc

loc_0001629c:
lea eax, [edi + 1]
mov dword [ref_00029cb0], eax  ; mov dword [0x29cb0], eax

loc_000162a4:
imul edi, edi, 0xc
mov ecx, 3
mov esi, ebx
add edi, ref_00029bc0  ; add edi, 0x29bc0
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
mov edi, ref_00029cb4  ; mov edi, 0x29cb4
xor esi, esi

loc_000162bd:
cmp esi, dword [ref_00029da4]  ; cmp esi, dword [0x29da4]
jae short loc_000162ed  ; jae 0x162ed
push edx
push edx
push dword [ebx + 4]
push dword [edi + 4]
call fcn_00016ee8  ; call 0x16ee8
add esp, 0x10
test al, al
je short loc_000162e7  ; je 0x162e7
push eax
push dword [ebx + 8]
push edi
push dword [ebp + 8]
call dword [edi + 8]  ; ucall
add esp, 0x10

loc_000162e7:
inc esi
add edi, 0xc
jmp short loc_000162bd  ; jmp 0x162bd

loc_000162ed:
mov eax, dword [ebx]
add ebx, 0xc
test eax, eax
jns near loc_00016216  ; jns 0x16216
xor ebx, ebx

loc_000162fc:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00016306:
push ebp
mov ebp, esp
push edi
push esi
mov esi, ref_00029bc0  ; mov esi, 0x29bc0
push ebx
xor ebx, ebx
sub esp, 0xc

loc_00016316:
cmp ebx, dword [ref_00029cb0]  ; cmp ebx, dword [0x29cb0]
jae short loc_00016346  ; jae 0x16346
push eax
mov edi, esi
push eax
add esi, 0xc
push dword [esi - 8]
push dword [ebp + 0xc]
call fcn_00016ee8  ; call 0x16ee8
add esp, 0x10
test al, al
je short loc_00016343  ; je 0x16343
mov eax, dword [ebp + 0x18]
mov edx, dword [edi + 8]
mov dword [eax], edx
xor eax, eax
jmp short loc_00016374  ; jmp 0x16374

loc_00016343:
inc ebx
jmp short loc_00016316  ; jmp 0x16316

loc_00016346:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00016367  ; je 0x16367
push ebx
push ref_0002056c  ; push 0x2056c
push ref_000254c0  ; push 0x254c0
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00016367:
mov eax, dword [ebp + 0xc]
call fcn_000161af  ; call 0x161af
mov eax, 0x8000000e

loc_00016374:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001637c:
push ebp
xor eax, eax
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov ebx, dword [ref_00029da4]  ; mov ebx, dword [0x29da4]
imul edx, ebx, 0xc

loc_00016390:
cmp ebx, 0x13
jbe short loc_000163b5  ; jbe 0x163b5
call fcn_00015479  ; call 0x15479
mov esi, 0x80000009
test al, al
je short loc_000163fc  ; je 0x163fc
push eax
push ref_00020578  ; push 0x20578
push ref_000254dd  ; push 0x254dd
push 0x80000000
jmp short loc_000163f4  ; jmp 0x163f4

loc_000163b5:
mov esi, dword [ebp + 0xc]
inc ebx
mov ecx, 3
mov dword [ref_00029da4], ebx  ; mov dword [0x29da4], ebx
lea edi, [eax + edx + ref_00029cb4]  ; lea edi, [eax + edx + 0x29cb4]
add esi, eax
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
mov edi, dword [ebp + 0xc]
mov ecx, dword [edi + eax]
add eax, 0xc
test ecx, ecx
jns short loc_00016390  ; jns 0x16390
call fcn_00015479  ; call 0x15479
xor esi, esi
test al, al
je short loc_000163fc  ; je 0x163fc
push ebx
push ref_00020578  ; push 0x20578
push ref_000254fd  ; push 0x254fd
push 0x40

loc_000163f4:
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000163fc:
lea esp, [ebp - 0xc]
mov eax, esi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00016406:
push ebp
mov eax, ref_00029b3c  ; mov eax, 0x29b3c
mov ebp, esp
pop ebp
ret

fcn_00016410:
push ebp
mov eax, dword [ref_00029bbc]  ; mov eax, dword [0x29bbc]
mov ebp, esp
pop ebp
ret

fcn_0001641a:
mov eax, dword [ref_00029dac]  ; mov eax, dword [0x29dac]
push ebp
mov ebp, esp
mov edx, dword [ebp + 8]
test eax, eax
je short loc_00016432  ; je 0x16432
movzx edx, dl
mov dword [ebp + 8], edx
pop ebp
jmp eax

loc_00016432:
pop ebp
ret

fcn_00016434:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
mov eax, dword [ebx]
cmp eax, 0x16
je short loc_0001645b  ; je 0x1645b
push ebx
push 0x16
push eax
push ref_0002550e  ; push 0x2550e
call fcn_0001545e  ; call 0x1545e
add esp, 0x10
xor eax, eax
jmp near loc_000165b4  ; jmp 0x165b4

loc_0001645b:
mov eax, dword [ebx + 0xca]
push ecx
push ecx
push 0x270
push ref_00029b3c  ; push 0x29b3c
mov dword [ref_00029dac], eax  ; mov dword [0x29dac], eax
call fcn_00016fff  ; call 0x16fff
add esp, 0x10
mov dword [ref_00029bbc], ebx  ; mov dword [0x29bbc], ebx
cmp dword [ebx + 8], 3
mov dword [ref_00029b3c], 0xfeaddeaf  ; mov dword [0x29b3c], 0xfeaddeaf
jne short loc_000164b5  ; jne 0x164b5
cmp dword [ebx + 0x8f6], 0
je short loc_000164b5  ; je 0x164b5
sub esp, 0xc
push ref_00025532  ; push 0x25532
call fcn_0001545e  ; call 0x1545e
add esp, 0x10
mov dword [ref_00029bb8], 0x11  ; mov dword [0x29bb8], 0x11
jmp short loc_000164bf  ; jmp 0x164bf

loc_000164b5:
mov dword [ref_00029bb8], 6  ; mov dword [0x29bb8], 6

loc_000164bf:
sub esp, 0xc
push ref_00029b38  ; push 0x29b38
mov dword [ref_00029bc4], ref_0002909c  ; mov dword [0x29bc4], 0x2909c
mov dword [ref_00029cb0], 1  ; mov dword [0x29cb0], 1
mov dword [ref_00029b60], fcn_00016306  ; mov dword [0x29b60], 0x16306
mov dword [ref_00029b68], fcn_0001617e  ; mov dword [0x29b68], 0x1617e
mov dword [ref_00029b6c], fcn_00016190  ; mov dword [0x29b6c], 0x16190
mov dword [ref_00029b70], fcn_0001d569  ; mov dword [0x29b70], 0x1d569
mov dword [ref_00029b74], fcn_0001d49f  ; mov dword [0x29b74], 0x1d49f
mov dword [ref_00029b64], fcn_0001637c  ; mov dword [0x29b64], 0x1637c
mov dword [ref_00029b58], fcn_0001620a  ; mov dword [0x29b58], 0x1620a
mov dword [ref_00029b8c], fcn_0001d415  ; mov dword [0x29b8c], 0x1d415
mov dword [ref_00029b90], fcn_000161a6  ; mov dword [0x29b90], 0x161a6
mov dword [ref_00029bb4], fcn_0001619f  ; mov dword [0x29bb4], 0x1619f
mov dword [ref_00029b38], ref_00029b40  ; mov dword [0x29b38], 0x29b40
call fcn_00019afc  ; call 0x19afc
pop eax
pop edx
push ref_00029b38  ; push 0x29b38
push 0
call fcn_0001ae82  ; call 0x1ae82
mov dword [esp], ref_00025542  ; mov dword [esp], 0x25542
call fcn_0001545e  ; call 0x1545e
pop ecx
pop ebx
push ref_00029b38  ; push 0x29b38
push 0
call fcn_00016cfa  ; call 0x16cfa
mov dword [esp], ref_00025557  ; mov dword [esp], 0x25557
call fcn_0001545e  ; call 0x1545e
pop eax
pop edx
push ref_00029b38  ; push 0x29b38
push 0
call fcn_000165cb  ; call 0x165cb
pop ecx
pop ebx
push ref_00029b38  ; push 0x29b38
push 0
call fcn_0001b96b  ; call 0x1b96b
pop eax
pop edx
push ref_00029b38  ; push 0x29b38
push 0
call fcn_0001b0c6  ; call 0x1b0c6
add esp, 0x10
mov eax, ref_00029b38  ; mov eax, 0x29b38

loc_000165b4:
mov ebx, dword [ebp - 4]
leave
ret

fcn_000165b9:
push ebp
mov ebp, esp
sub esp, 0x14
push dword [ebp + 0x10]
call fcn_0001bb03  ; call 0x1bb03
xor eax, eax
leave
ret

fcn_000165cb:
push ebp
mov ebp, esp
push ebx
sub esp, 0x10
push ref_00029028  ; push 0x29028
call fcn_0001972b  ; call 0x1972b
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00016620  ; je 0x16620
test ebx, ebx
jns short loc_00016620  ; jns 0x16620
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001660b  ; je 0x1660b
push edx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001660b:
push eax
push ref_000206f4  ; push 0x206f4
push 0x42
push ref_0002556e  ; push 0x2556e
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00016620:
mov eax, ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_00016627:
push ebp
xor eax, eax
mov ebp, esp
pop ebp
ret

fcn_0001662e:
push ebp
mov ebp, esp
pop ebp
ret

fcn_00016633:
push ebp
mov ebp, esp
pop ebp
ret

fcn_00016638:
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
je near loc_00016701  ; je 0x16701
cmp cx, 0x1ff
ja near loc_00016701  ; ja 0x16701
mov edi, edx
movzx edx, dx
add edx, ecx
cmp edx, 0x1ff
jg near loc_00016701  ; jg 0x16701
lea ecx, [edi + esi]
movzx eax, al
mov ebx, esi
mov word [ebp - 0x2c], cx
mov dword [ebp - 0x30], eax

loc_00016686:
cmp word [ebp - 0x2c], bx
je short loc_000166fa  ; je 0x166fa
mov dx, word [ebp - 0x2a]
mov edi, dword [ebp + 0xc]
sub edx, esi
movzx ecx, byte [edi]
add edx, ebx
mov eax, edx
shr ax, 8
cmp ax, cx
je short loc_000166ab  ; je 0x166ab
mov byte [edi], al
mov al, 1
jmp short loc_000166ad  ; jmp 0x166ad

loc_000166ab:
xor eax, eax

loc_000166ad:
dec al
movzx edi, dl
jne short loc_000166d2  ; jne 0x166d2
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
call fcn_0001a2fa  ; call 0x1a2fa
add esp, 0x10

loc_000166d2:
shl edi, 8
push eax
or edi, dword [ebp - 0x30]
push eax
lea eax, [ebp - 0x1c]
push eax
push edi
mov dword [ebp - 0x34], ebx
inc ebx
call fcn_0001a282  ; call 0x1a282
add esp, 0x10
mov edx, dword [ebp - 0x34]
mov byte [ebx - 1], al
cmp dword [ebp - 0x1c], 0
je short loc_00016686  ; je 0x16686
mov byte [edx], 0

loc_000166fa:
mov dword [ebp - 0x1c], 0

loc_00016701:
mov eax, dword [ebp - 0x1c]
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001670c:
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
call fcn_00016638  ; call 0x16638
add esp, 0x10
mov esi, eax
test eax, eax
jne short loc_000167a0  ; jne 0x167a0
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

loc_00016763:
cmp ebx, dword [ebp - 0x34]
je short loc_000167a0  ; je 0x167a0
movzx eax, byte [ebx + 4]
test dword [ebp - 0x2c], eax
je short loc_0001679b  ; je 0x1679b
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
call fcn_00016638  ; call 0x16638
add esp, 0x10
test eax, eax
je short loc_0001679b  ; je 0x1679b
mov esi, eax
jmp short loc_000167a0  ; jmp 0x167a0

loc_0001679b:
add ebx, 5
jmp short loc_00016763  ; jmp 0x16763

loc_000167a0:
test esi, esi
sete al
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000167ad:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000167ce  ; je 0x167ce
push eax
push eax
push dword [ebp + 8]
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000167ce:
leave
ret

fcn_000167d0:
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

fcn_000167fe:
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

fcn_00016822:
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
call fcn_00018eea  ; call 0x18eea
add ebx, 0x75
add esp, 0x10
movzx ebx, bl
mov dword [ebp + 8], ebx
mov ebx, dword [ebp - 4]
leave
jmp near fcn_00018ee1  ; jmp 0x18ee1

fcn_00016861:
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

loc_00016878:
push ecx
push ecx
push 0xa
push 0x70
mov dword [ebp - 0x1c], edx
call fcn_00018eea  ; call 0x18eea
mov dword [esp], 0x71
call fcn_00018ee1  ; call 0x18ee1
add esp, 0x10
mov edx, dword [ebp - 0x1c]
test al, al
jns short loc_000168a1  ; jns 0x168a1
dec edx
jne short loc_00016878  ; jne 0x16878
jmp short loc_000168a5  ; jmp 0x168a5

loc_000168a1:
test edx, edx
jne short loc_0001691b  ; jne 0x1691b

loc_000168a5:
push eax
push eax
push 0xb
push 0x70
call fcn_00018eea  ; call 0x18eea
pop eax
pop edx
push 0x82
push 0x71
call fcn_00018eea  ; call 0x18eea
pop ecx
pop eax
push 0xa
push 0x70
call fcn_00018eea  ; call 0x18eea
pop eax
pop edx
push 0x26
push 0x71
call fcn_00018eea  ; call 0x18eea
pop ecx
pop eax
push 0xc
push 0x70
call fcn_00018eea  ; call 0x18eea
mov dword [esp], 0x71
call fcn_00018ee1  ; call 0x18ee1
pop eax
pop edx
push 0xd
push 0x70
call fcn_00018eea  ; call 0x18eea
mov dword [esp], 0x71
call fcn_00018ee1  ; call 0x18ee1
pop ecx
pop eax
push 0xb
push 0x70
call fcn_00018eea  ; call 0x18eea
pop eax
pop edx
push 2
push 0x71
call fcn_00018eea  ; call 0x18eea
add esp, 0x10

loc_0001691b:
push eax
push eax
push 0
push 0x70
call fcn_00018eea  ; call 0x18eea
mov dword [esp], 0x71
call fcn_00018ee1  ; call 0x18ee1
mov byte [edi], al
pop edx
pop ecx
push 2
push 0x70
call fcn_00018eea  ; call 0x18eea
mov dword [esp], 0x71
call fcn_00018ee1  ; call 0x18ee1
mov byte [esi], al
pop eax
pop edx
push 4
push 0x70
call fcn_00018eea  ; call 0x18eea
mov dword [esp], 0x71
call fcn_00018ee1  ; call 0x18ee1
mov byte [ebx], al
pop ecx
pop eax
push 7
push 0x70
call fcn_00018eea  ; call 0x18eea
mov dword [esp], 0x71
call fcn_00018ee1  ; call 0x18ee1
mov edx, dword [ebp + 0x14]
mov byte [edx], al
pop eax
pop edx
push 8
push 0x70
call fcn_00018eea  ; call 0x18eea
mov dword [esp], 0x71
call fcn_00018ee1  ; call 0x18ee1
mov edx, dword [ebp + 0x18]
mov byte [edx], al
pop ecx
pop eax
push 9
push 0x70
call fcn_00018eea  ; call 0x18eea
mov dword [esp], 0x71
call fcn_00018ee1  ; call 0x18ee1
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

fcn_00016a4e:
push ebp
mov ebp, esp
push ebx
sub esp, 0x10
push 0xce
call fcn_000175bc  ; call 0x175bc
add esp, 0x10
xor edx, edx
movzx ebx, ah
xor eax, eax
imul ebx, ebx, 0x186a0
test ebx, ebx
je short loc_00016a84  ; je 0x16a84
call fcn_00017876  ; call 0x17876
push ecx
push ebx
push edx
push eax
call fcn_000174b9  ; call 0x174b9
add esp, 0x10

loc_00016a84:
mov ebx, dword [ebp - 4]
leave
ret

fcn_00016a89:
push ebp
xor edx, edx
mov ebp, esp
mov eax, dword [ebp + 8]
mov ecx, dword [ebp + 0x10]

loc_00016a94:
cmp edx, dword [ebp + 0xc]
je short loc_00016aa0  ; je 0x16aa0
mov word [eax + edx*2], cx
inc edx
jmp short loc_00016a94  ; jmp 0x16a94

loc_00016aa0:
pop ebp
ret

fcn_00016aa2:
push ebp
xor edx, edx
mov ebp, esp
mov eax, dword [ebp + 8]
mov ecx, dword [ebp + 0x10]

loc_00016aad:
cmp edx, dword [ebp + 0xc]
je short loc_00016ab8  ; je 0x16ab8
mov dword [eax + edx*4], ecx
inc edx
jmp short loc_00016aad  ; jmp 0x16aad

loc_00016ab8:
pop ebp
ret

fcn_00016aba:
push ebp
mov ebp, esp
push edi
sub esp, 0x24
mov eax, dword [ebp + 8]
mov dword [ebp - 0x18], 0
mov dword [ebp - 0x14], 0
mov dword [ebp - 0x20], eax
lea eax, [ebp - 0x10]
mov dword [ebp - 0x1c], eax
movq qword [ebp - 0x18], mm0
mov edi, dword [ebp - 0x20]
movq mm0, qword [edi]
mov edi, dword [ebp - 0x1c]
movq qword [edi], mm0
movq mm0, qword [ebp - 0x18]
emms
mov eax, dword [ebp - 0x10]
mov edx, dword [ebp - 0xc]
add esp, 0x24
pop edi
pop ebp
ret

fcn_00016afd:
push ebp
mov ebp, esp
push edi
sub esp, 0x1c
mov eax, dword [ebp + 0xc]
mov dword [ebp - 0x10], 0
mov dword [ebp - 0xc], 0
mov dword [ebp - 0x20], eax
mov eax, dword [ebp + 0x10]
mov dword [ebp - 0x1c], eax
mov eax, dword [ebp + 8]
mov dword [ebp - 0x14], eax
movq qword [ebp - 0x10], mm0
mov edi, dword [ebp - 0x14]
movq mm0, qword [ebp - 0x20]
movq qword [edi], mm0
movq mm0, qword [ebp - 0x10]
emms
mov eax, dword [ebp - 0x20]
mov edx, dword [ebp - 0x1c]
add esp, 0x1c
pop edi
pop ebp
ret

fcn_00016b44:
push ebp
xor eax, eax
mov ebp, esp
push ebx
mov ebx, 0x186a0
sub esp, 0x14

loc_00016b52:
test eax, eax
jne short loc_00016b9f  ; jne 0x16b9f
test ebx, ebx
je short loc_00016b9f  ; je 0x16b9f
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00016b74  ; je 0x16b74
push edx
push edx
push ref_00025576  ; push 0x25576
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00016b74:
clc

loc_00016b75:
rdrand eax
mov dword [ebp - 0xc], eax
jae short loc_00016b75  ; jae 0x16b75
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00016b99  ; je 0x16b99
push eax
push dword [ebp - 0xc]
push ref_00025593  ; push 0x25593
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00016b99:
mov eax, dword [ebp - 0xc]
dec ebx
jmp short loc_00016b52  ; jmp 0x16b52

loc_00016b9f:
mov ebx, dword [ebp - 4]
leave
ret

fcn_00016ba4:
push ebp
xor eax, eax
mov ebp, esp
pop ebp
ret

fcn_00016bab:
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x14]
pop ebp
ret

fcn_00016bb3:
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword [ebp + 8]
cmp dword [ebp + 0xc], 0x41
mov edx, dword [eax + 0x241b]
mov edx, dword [edx + 0x1e]
jne short loc_00016bd8  ; jne 0x16bd8
sub esp, 0xc
push eax
call dword [edx + 0xcc]  ; ucall
add esp, 0x10

loc_00016bd8:
xor eax, eax
leave
ret

fcn_00016bdc:
push ebp
mov ebp, esp
mov edx, dword [ebp + 8]
mov eax, dword [ebp + 0xc]
push esi
push ebx
mov word [edx + 0x2468], ax
movzx esi, ax
mov ebx, eax
push edx
push edx
push esi
push 0x80
call fcn_00018f27  ; call 0x18f27
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_00016c1d  ; je 0x16c1d
push eax
push esi
push ref_000255b1  ; push 0x255b1
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00016c1d:
sub esp, 0xc
push 0x48
call fcn_00016822  ; call 0x16822
mov dword [esp], 0x49
mov esi, eax
call fcn_00016822  ; call 0x16822
add esp, 0x10
mov edx, eax
mov eax, esi
shl edx, 8
movzx esi, al
or edx, esi
cmp bx, dx
je short loc_00016c1d  ; je 0x16c1d
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_00016c50:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00016c72  ; je 0x16c72
push eax
push dword [ebp + 0xc]
push ref_000255c3  ; push 0x255c3
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00016c72:
push eax
mov eax, 0x1000
in al, 0x99
pop eax
leave
ret

fcn_00016c7d:
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

fcn_00016c9a:
push ebp
mov ebp, esp
push ebx
push edx
call fcn_00016410  ; call 0x16410
mov ebx, dword [eax + 0x14]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00016cdd  ; je 0x16cdd
cmp dword [ebp + 8], 0xff
ja short loc_00016cc5  ; ja 0x16cc5
cmp dword [ebp + 0xc], 0x1f
ja short loc_00016cc5  ; ja 0x16cc5
cmp dword [ebp + 0x10], 7
jbe short loc_00016cdd  ; jbe 0x16cdd

loc_00016cc5:
push eax
push ref_00025603  ; push 0x25603
push 0x31a
push ref_0002563a  ; push 0x2563a
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00016cdd:
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

fcn_00016cfa:
push ebp
mov ebp, esp
push esi
push ebx
mov ebx, dword [ebp + 0xc]
sub esp, 0xc
push ebx
call fcn_0001dfb2  ; call 0x1dfb2
mov esi, eax
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_00016d2a  ; je 0x16d2a
push ecx
push ecx
push ref_00025655  ; push 0x25655
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00016d2a:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00016d69  ; je 0x16d69
test esi, esi
jns short loc_00016d69  ; jns 0x16d69
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00016d54  ; je 0x16d54
push edx
push esi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00016d54:
push eax
push ref_000206f4  ; push 0x206f4
push 0x33
push ref_00025683  ; push 0x25683
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00016d69:
sub esp, 0xc
push ebx
call fcn_0001ecfb  ; call 0x1ecfb
mov esi, eax
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_00016d91  ; je 0x16d91
push eax
push eax
push ref_000256b9  ; push 0x256b9
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00016d91:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00016dd0  ; je 0x16dd0
test esi, esi
jns short loc_00016dd0  ; jns 0x16dd0
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00016dbb  ; je 0x16dbb
push eax
push esi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00016dbb:
push eax
push ref_000206f4  ; push 0x206f4
push 0x3a
push ref_00025683  ; push 0x25683
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00016dd0:
sub esp, 0xc
push ebx
call fcn_0001ef8b  ; call 0x1ef8b
mov esi, eax
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_00016df8  ; je 0x16df8
push eax
push eax
push ref_000256e7  ; push 0x256e7
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00016df8:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00016e37  ; je 0x16e37
test esi, esi
jns short loc_00016e37  ; jns 0x16e37
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00016e22  ; je 0x16e22
push eax
push esi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00016e22:
push esi
push ref_000206f4  ; push 0x206f4
push 0x43
push ref_00025683  ; push 0x25683
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00016e37:
sub esp, 0xc
push ebx
call fcn_0001d586  ; call 0x1d586
mov ebx, eax
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_00016e5f  ; je 0x16e5f
push ecx
push ecx
push ref_00025714  ; push 0x25714
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00016e5f:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00016e9e  ; je 0x16e9e
test ebx, ebx
jns short loc_00016e9e  ; jns 0x16e9e
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00016e89  ; je 0x16e89
push edx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00016e89:
push eax
push ref_000206f4  ; push 0x206f4
push 0x4a
push ref_00025683  ; push 0x25683
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00016e9e:
lea esp, [ebp - 8]
mov eax, ebx
pop ebx
pop esi
pop ebp
ret

fcn_00016ea7:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push esi
add esi, 8
call fcn_000173ed  ; call 0x173ed
add esp, 0xc
push edx
push eax
push ebx
call fcn_00017424  ; call 0x17424
mov dword [esp], esi
call fcn_000173ed  ; call 0x173ed
add esp, 0xc
push edx
push eax
lea eax, [ebx + 8]
push eax
call fcn_00017424  ; call 0x17424
lea esp, [ebp - 8]
mov eax, ebx
pop ebx
pop esi
pop ebp
ret

fcn_00016ee8:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
mov esi, dword [ebp + 8]
push esi
add esi, 8
call fcn_000173ed  ; call 0x173ed
mov ebx, eax
pop eax
push dword [ebp + 0xc]
mov dword [ebp - 0x1c], edx
call fcn_000173ed  ; call 0x173ed
mov dword [esp], esi
mov dword [ebp - 0x20], eax
mov dword [ebp - 0x24], edx
call fcn_000173ed  ; call 0x173ed
mov edi, eax
mov eax, dword [ebp + 0xc]
mov esi, edx
add eax, 8
mov dword [esp], eax
call fcn_000173ed  ; call 0x173ed
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

fcn_00016f4f:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00016f80  ; je 0x16f80
test bl, 3
je short loc_00016f80  ; je 0x16f80
push eax
push ref_0002574a  ; push 0x2574a
push 0x81
push ref_0002577c  ; push 0x2577c
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00016f80:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00016fa9  ; je 0x16fa9
mov eax, ebx
neg eax
cmp esi, eax
jbe short loc_00016fa9  ; jbe 0x16fa9
push ecx
push ref_000257be  ; push 0x257be
push 0x82
push ref_0002577c  ; push 0x2577c
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00016fa9:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00016fd2  ; je 0x16fd2
test esi, 0xf
je short loc_00016fd2  ; je 0x16fd2
push edx
push ref_000257e9  ; push 0x257e9
push 0x83
push ref_0002577c  ; push 0x2577c
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00016fd2:
and esi, 0xfffffff0
add esi, ebx

loc_00016fd7:
cmp ebx, esi
jae short loc_00016ff2  ; jae 0x16ff2
push eax
push eax
push dword [ebp + 0x10]
push ebx
call fcn_00016ee8  ; call 0x16ee8
add esp, 0x10
test al, al
jne short loc_00016ff6  ; jne 0x16ff6
add ebx, 0x10
jmp short loc_00016fd7  ; jmp 0x16fd7

loc_00016ff2:
xor eax, eax
jmp short loc_00016ff8  ; jmp 0x16ff8

loc_00016ff6:
mov eax, ebx

loc_00016ff8:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_00016fff:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00017030  ; je 0x17030
test ebx, ebx
jne short loc_00017030  ; jne 0x17030
test esi, esi
je short loc_00017030  ; je 0x17030
push edx
push ref_00025811  ; push 0x25811
push 0x31
push ref_00025839  ; push 0x25839
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00017030:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00017056  ; je 0x17056
mov eax, ebx
neg eax
cmp esi, eax
jbe short loc_00017056  ; jbe 0x17056
push eax
push ref_000257be  ; push 0x257be
push 0x32
push ref_00025839  ; push 0x25839
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00017056:
mov dword [ebp + 0xc], esi
mov dword [ebp + 8], ebx
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near loc_0001721c  ; jmp 0x1721c

fcn_00017067:
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
je near loc_00017134  ; je 0x17134
cmp ebx, esi
je near loc_00017134  ; je 0x17134
call fcn_00015480  ; call 0x15480
test al, al
je short loc_000170ab  ; je 0x170ab
test ebx, ebx
jne short loc_000170ab  ; jne 0x170ab
push eax
push ref_0002587f  ; push 0x2587f
push 0x3c
push ref_000258a1  ; push 0x258a1
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000170ab:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_000170cd  ; je 0x170cd
test esi, esi
jne short loc_000170cd  ; jne 0x170cd
push ecx
push ref_000258ea  ; push 0x258ea
push 0x3d
push ref_000258a1  ; push 0x258a1
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000170cd:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_000170f6  ; je 0x170f6
mov eax, ebx
lea edx, [edi - 1]
not eax
cmp edx, eax
jbe short loc_000170f6  ; jbe 0x170f6
push edx
push ref_00025907  ; push 0x25907
push 0x3e
push ref_000258a1  ; push 0x258a1
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000170f6:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001711f  ; je 0x1711f
mov eax, esi
lea edx, [edi - 1]
not eax
cmp edx, eax
jbe short loc_0001711f  ; jbe 0x1711f
push eax
push ref_0002593f  ; push 0x2593f
push 0x3f
push ref_000258a1  ; push 0x258a1
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001711f:
mov dword [ebp + 0x10], edi
mov dword [ebp + 0xc], esi
mov dword [ebp + 8], ebx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near loc_000171c9  ; jmp 0x171c9

loc_00017134:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001713e:
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
je short loc_000171bf  ; je 0x171bf
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001717d  ; je 0x1717d
mov eax, ebx
lea edx, [esi - 1]
not eax
cmp edx, eax
jbe short loc_0001717d  ; jbe 0x1717d
push edx
push ref_00025907  ; push 0x25907
push 0x38
push ref_00025972  ; push 0x25972
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001717d:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_000171a6  ; je 0x171a6
mov eax, edi
lea edx, [esi - 1]
not eax
cmp edx, eax
jbe short loc_000171a6  ; jbe 0x171a6
push eax
push ref_0002593f  ; push 0x2593f
push 0x39
push ref_00025972  ; push 0x25972
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000171a6:
cmp ebx, edi
je short loc_000171bf  ; je 0x171bf
mov dword [ebp + 0x10], esi
mov dword [ebp + 0xc], edi
mov dword [ebp + 8], ebx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near loc_000171e6  ; jmp 0x171e6

loc_000171bf:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

loc_000171c9:
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

loc_000171e6:
push esi
push edi
mov esi, dword [esp + 0x10]
mov edi, dword [esp + 0xc]
mov edx, dword [esp + 0x14]
cmp edi, esi
je short loc_00017215  ; je 0x17215
cmp edx, 0
je short loc_00017215  ; je 0x17215
lea eax, [esi + edx - 1]
cmp esi, edi
jae short loc_00017210  ; jae 0x17210
cmp eax, edi
jb short loc_00017210  ; jb 0x17210
mov esi, eax
lea edi, [edi + edx - 1]
std

loc_00017210:
mov ecx, edx
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
cld

loc_00017215:
mov eax, dword [esp + 0xc]
pop edi
pop esi
ret

loc_0001721c:
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

fcn_00017239:
push ebp
mov ebp, esp
sub esp, 0x10
mov dword [ebp - 4], 0

loc_00017246:
mov eax, dword [ebp - 4]
test eax, eax
je short loc_00017246  ; je 0x17246
leave
ret

fcn_0001724f:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
mov edi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00017284  ; je 0x17284
cmp ebx, 0x3f
jbe short loc_00017284  ; jbe 0x17284
push eax
push ref_000259b8  ; push 0x259b8
push 0x27
push ref_000259c3  ; push 0x259c3
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00017284:
mov dword [ebp + 0x10], ebx
mov dword [ebp + 8], esi
mov dword [ebp + 0xc], edi
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near loc_000178a0  ; jmp 0x178a0

fcn_00017299:
push ebp
mov ebp, esp
push ebx
push edx
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_000172c3  ; je 0x172c3
test ebx, ebx
jne short loc_000172c3  ; jne 0x172c3
push eax
push ref_0002619a  ; push 0x2619a
push 0x26
push ref_000259f8  ; push 0x259f8
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000172c3:
mov ax, word [ebx]
mov ebx, dword [ebp - 4]
leave
ret

fcn_000172cb:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
mov ebx, dword [ebp + 0xc]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_000172f8  ; je 0x172f8
test esi, esi
jne short loc_000172f8  ; jne 0x172f8
push eax
push ref_0002619a  ; push 0x2619a
push 0x41
push ref_000259f8  ; push 0x259f8
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000172f8:
mov word [esi], bx
lea esp, [ebp - 8]
mov eax, ebx
pop ebx
pop esi
pop ebp
ret

fcn_00017304:
push ebp
mov ebp, esp
push ebx
push edx
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001732e  ; je 0x1732e
test ebx, ebx
jne short loc_0001732e  ; jne 0x1732e
push eax
push ref_0002619a  ; push 0x2619a
push 0x59
push ref_000259f8  ; push 0x259f8
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001732e:
mov eax, dword [ebx]
mov ebx, dword [ebp - 4]
leave
and eax, 0xffffff
ret

fcn_0001733a:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00017367  ; je 0x17367
test ebx, ebx
jne short loc_00017367  ; jne 0x17367
push eax
push ref_0002619a  ; push 0x2619a
push 0x74
push ref_000259f8  ; push 0x259f8
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00017367:
push esi
push 0x17
push 0
push dword [ebx]
call fcn_0001f9ae  ; call 0x1f9ae
mov dword [ebx], eax
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_0001737e:
push ebp
mov ebp, esp
push ebx
push edx
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_000173ab  ; je 0x173ab
test ebx, ebx
jne short loc_000173ab  ; jne 0x173ab
push eax
push ref_0002619a  ; push 0x2619a
push 0x8d
push ref_000259f8  ; push 0x259f8
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000173ab:
mov eax, dword [ebx]
mov ebx, dword [ebp - 4]
leave
ret

fcn_000173b2:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
mov ebx, dword [ebp + 0xc]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_000173e2  ; je 0x173e2
test esi, esi
jne short loc_000173e2  ; jne 0x173e2
push eax
push ref_0002619a  ; push 0x2619a
push 0xa8
push ref_000259f8  ; push 0x259f8
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000173e2:
mov dword [esi], ebx
lea esp, [ebp - 8]
mov eax, ebx
pop ebx
pop esi
pop ebp
ret

fcn_000173ed:
push ebp
mov ebp, esp
push ebx
push edx
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001741a  ; je 0x1741a
test ebx, ebx
jne short loc_0001741a  ; jne 0x1741a
push eax
push ref_0002619a  ; push 0x2619a
push 0xc0
push ref_000259f8  ; push 0x259f8
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001741a:
mov eax, dword [ebx]
mov edx, dword [ebx + 4]
mov ebx, dword [ebp - 4]
leave
ret

fcn_00017424:
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
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001745f  ; je 0x1745f
test ebx, ebx
jne short loc_0001745f  ; jne 0x1745f
push eax
push ref_0002619a  ; push 0x2619a
push 0xdb
push ref_000259f8  ; push 0x259f8
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001745f:
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

fcn_00017470:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
mov edi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_000174a4  ; je 0x174a4
test ebx, ebx
jne short loc_000174a4  ; jne 0x174a4
push eax
push ref_00025a2d  ; push 0x25a2d
push 0x2b
push ref_00025a3a  ; push 0x25a3a
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000174a4:
mov dword [ebp + 0x10], ebx
mov dword [ebp + 8], esi
mov dword [ebp + 0xc], edi
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near loc_00017557  ; jmp 0x17557

fcn_000174b9:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
mov edi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_000174ed  ; je 0x174ed
test ebx, ebx
jne short loc_000174ed  ; jne 0x174ed
push eax
push ref_00025a2d  ; push 0x25a2d
push 0x2b
push ref_00025a6f  ; push 0x25a6f
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000174ed:
mov dword [ebp + 0x10], ebx
mov dword [ebp + 8], esi
mov dword [ebp + 0xc], edi
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near loc_0001756c  ; jmp 0x1756c

fcn_00017502:
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
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001753c  ; je 0x1753c
test ebx, ebx
jne short loc_0001753c  ; jne 0x1753c
push eax
push ref_00025a2d  ; push 0x25a2d
push 0x2f
push ref_00025aa4  ; push 0x25aa4
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001753c:
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
jmp near loc_00017581  ; jmp 0x17581

loc_00017557:
mov eax, dword [esp + 8]
mov ecx, dword [esp + 0xc]
xor edx, edx
div ecx
mov eax, dword [esp + 4]
div ecx
mov eax, edx
ret

loc_0001756c:
mov eax, dword [esp + 8]
mov ecx, dword [esp + 0xc]
xor edx, edx
div ecx
push eax
mov eax, dword [esp + 8]
div ecx
pop edx
ret

loc_00017581:
mov ecx, dword [esp + 0xc]
mov eax, dword [esp + 8]
xor edx, edx
div ecx
push eax
mov eax, dword [esp + 8]
div ecx
mov ecx, dword [esp + 0x14]
jecxz loc_0001759c  ; jecxz 0x1759c
mov dword [ecx], edx

loc_0001759c:
pop edx
ret

fcn_0001759e:
push ebp
mov ebp, esp
pop ebp
ret

fcn_000175a3:
push ebp
mov ebp, esp
sti
pop ebp
ret

fcn_000175a9:
push ebp
mov ebp, esp
cli
pop ebp
ret

fcn_000175af:
push ebp
mov ebp, esp
pause
pop ebp
ret

fcn_000175b6:
push ebp
mov ebp, esp
int3
pop ebp
ret

fcn_000175bc:
push ebp
mov ebp, esp
mov ecx, dword [ebp + 8]
rdmsr
pop ebp
ret

fcn_000175c6:
push ebp
mov ebp, esp
mov eax, dword [ebp + 0xc]
mov edx, dword [ebp + 0x10]
mov ecx, dword [ebp + 8]
wrmsr
pop ebp
ret

fcn_000175d6:
push ebp
mov ebp, esp
pushfd
pop eax
pop ebp
ret

fcn_000175dd:
push ebp
mov ebp, esp
mov eax, cr0
pop ebp
ret

fcn_000175e5:
push ebp
mov ebp, esp
mov eax, cr2
pop ebp
ret

fcn_000175ed:
push ebp
mov ebp, esp
mov eax, cr3
pop ebp
ret

fcn_000175f5:
push ebp
mov ebp, esp
mov eax, cr4
pop ebp
ret

fcn_000175fd:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov cr0, eax
pop ebp
ret

fcn_00017608:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov cr2, eax
pop ebp
ret

fcn_00017613:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov cr3, eax
pop ebp
ret

fcn_0001761e:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov cr4, eax
pop ebp
ret

fcn_00017629:
push ebp
mov ebp, esp
mov eax, dr0
pop ebp
ret

fcn_00017631:
push ebp
mov ebp, esp
mov eax, dr1
pop ebp
ret

fcn_00017639:
push ebp
mov ebp, esp
mov eax, dr2
pop ebp
ret

fcn_00017641:
push ebp
mov ebp, esp
mov eax, dr3
pop ebp
ret

fcn_00017649:
push ebp
mov ebp, esp
mov eax, dr4
pop ebp
ret

fcn_00017651:
push ebp
mov ebp, esp
mov eax, dr5
pop ebp
ret

fcn_00017659:
push ebp
mov ebp, esp
mov eax, dr6
pop ebp
ret

fcn_00017661:
push ebp
mov ebp, esp
mov eax, dr7
pop ebp
ret

fcn_00017669:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov dr0, eax
pop ebp
ret

fcn_00017674:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov dr1, eax
pop ebp
ret

fcn_0001767f:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov dr2, eax
pop ebp
ret

fcn_0001768a:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov dr3, eax
pop ebp
ret

fcn_00017695:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov dr4, eax
pop ebp
ret

fcn_000176a0:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov dr5, eax
pop ebp
ret

fcn_000176ab:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov dr6, eax
pop ebp
ret

fcn_000176b6:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
mov dr7, eax
pop ebp
ret

fcn_000176c1:
push ebp
mov ebp, esp
mov ax, cs
pop ebp
ret

fcn_000176c9:
push ebp
mov ebp, esp
mov ax, ds
pop ebp
ret

fcn_000176d1:
push ebp
mov ebp, esp
mov ax, es
pop ebp
ret

fcn_000176d9:
push ebp
mov ebp, esp
mov ax, fs
pop ebp
ret

fcn_000176e1:
push ebp
mov ebp, esp
mov ax, gs
pop ebp
ret

fcn_000176e9:
push ebp
mov ebp, esp
mov ax, ds
pop ebp
ret

fcn_000176f1:
push ebp
mov ebp, esp
str ax
pop ebp
ret

fcn_000176fa:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
sgdt [eax]
pop ebp
ret

fcn_00017705:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
lgdt [eax]
pop ebp
ret

fcn_00017710:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
sidt [eax]
pop ebp
ret

fcn_0001771b:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
lidt [eax]
pop ebp
ret

fcn_00017726:
push ebp
mov ebp, esp
sldt ax
pop ebp
ret

fcn_0001772f:
push ebp
mov ebp, esp
lldt word [ebp + 8]
pop ebp
ret

fcn_00017738:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
fxsave [eax]
pop ebp
ret

fcn_00017743:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
fxrstor [eax]
pop ebp
ret

fcn_0001774e:
push ebp
mov ebp, esp
push eax
push eax
movq qword [esp], mm0
pop eax
pop edx
pop ebp
ret

fcn_0001775b:
push ebp
mov ebp, esp
push eax
push eax
movq qword [esp], mm1
pop eax
pop edx
pop ebp
ret

fcn_00017768:
push ebp
mov ebp, esp
push eax
push eax
movq qword [esp], mm2
pop eax
pop edx
pop ebp
ret

fcn_00017775:
push ebp
mov ebp, esp
push eax
push eax
movq qword [esp], mm3
pop eax
pop edx
pop ebp
ret

fcn_00017782:
push ebp
mov ebp, esp
push eax
push eax
movq qword [esp], mm4
pop eax
pop edx
pop ebp
ret

fcn_0001778f:
push ebp
mov ebp, esp
push eax
push eax
movq qword [esp], mm5
pop eax
pop edx
pop ebp
ret

fcn_0001779c:
push ebp
mov ebp, esp
push eax
push eax
movq qword [esp], mm6
pop eax
pop edx
pop ebp
ret

fcn_000177a9:
push ebp
mov ebp, esp
push eax
push eax
movq qword [esp], mm7
pop eax
pop edx
pop ebp
ret

fcn_000177b6:
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

fcn_000177ce:
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

fcn_000177e6:
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

fcn_000177fe:
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

fcn_00017816:
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

fcn_0001782e:
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

fcn_00017846:
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

fcn_0001785e:
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

fcn_00017876:
push ebp
mov ebp, esp
rdtsc
pop ebp
ret

fcn_0001787d:
push ebp
mov ebp, esp
mov ecx, dword [ebp + 8]
rdpmc
pop ebp
ret

fcn_00017887:
push ebp
mov ebp, esp
wbinvd
pop ebp
ret

fcn_0001788e:
push ebp
mov ebp, esp
invd
pop ebp
ret

fcn_00017895:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
clflush  [eax]
pop ebp
ret

loc_000178a0:
mov cl, byte [esp + 0xc]
xor edx, edx
mov eax, dword [esp + 8]
test cl, 0x20
cmove edx, eax
cmove eax, dword [esp + 4]
shrd eax, edx, cl
shr edx, cl
ret

fcn_000178bb:
push ebp
mov ebp, esp
sub esp, 0x14
push dword [ebp + 8]
call fcn_000175bc  ; call 0x175bc
leave
ret

fcn_000178cb:
push ebp
xor edx, edx
mov ebp, esp
sub esp, 0xc
mov eax, dword [ebp + 0xc]
push edx
push eax
push dword [ebp + 8]
call fcn_000175c6  ; call 0x175c6
leave
ret

fcn_000178e2:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0x10]
push ebx
mov ebx, dword [ebp + 0xc]
sub esp, 0xc
push dword [ebp + 8]
call fcn_000178bb  ; call 0x178bb
add esp, 0x10
mov dword [ebp + 0x10], esi
mov dword [ebp + 0xc], ebx
mov dword [ebp + 8], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_0001f7b4  ; jmp 0x1f7b4

fcn_0001790f:
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
call fcn_000175bc  ; call 0x175bc
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
jmp near fcn_000175c6  ; jmp 0x175c6

fcn_00017943:
push ebp
xor edx, edx
mov ebp, esp
sub esp, 0xc
mov eax, dword [ebp + 0xc]
push edx
push eax
push dword [ebp + 8]
call fcn_0001790f  ; call 0x1790f
leave
ret

fcn_0001795a:
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
call fcn_000175bc  ; call 0x175bc
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
jmp near fcn_000175c6  ; jmp 0x175c6

fcn_0001798e:
push ebp
xor edx, edx
mov ebp, esp
sub esp, 0xc
mov eax, dword [ebp + 0xc]
push edx
push eax
push dword [ebp + 8]
call fcn_0001795a  ; call 0x1795a
leave
ret

fcn_000179a5:
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
call fcn_000175bc  ; call 0x175bc
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
jmp near fcn_000175c6  ; jmp 0x175c6

fcn_000179eb:
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
call fcn_000179a5  ; call 0x179a5
leave
ret

fcn_00017a09:
push ebp
mov ebp, esp
sub esp, 0x14
push dword [ebp + 8]
call fcn_000175bc  ; call 0x175bc
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push edx
push eax
call fcn_0001fa1d  ; call 0x1fa1d
leave
ret

fcn_00017a26:
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
call fcn_000175bc  ; call 0x175bc
pop ecx
pop ecx
push edi
push esi
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001fd53  ; call 0x1fd53
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
jmp near fcn_000175c6  ; jmp 0x175c6

fcn_00017a74:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 0x10]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00017aa5  ; je 0x17aa5
cmp ebx, 0x1f
jbe short loc_00017aa5  ; jbe 0x17aa5
push edx
push ref_00025ae2  ; push 0x25ae2
push 0xe3
push ref_00025afe  ; push 0x25afe
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00017aa5:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00017aca  ; je 0x17aca
cmp esi, ebx
jbe short loc_00017aca  ; jbe 0x17aca
push eax
push ref_00025b30  ; push 0x25b30
push 0xe4
push ref_00025afe  ; push 0x25afe
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00017aca:
mov eax, dword [ebp + 0x14]
sub esp, 0xc
xor edx, edx
push edx
push eax
push ebx
push esi
push dword [ebp + 8]
call fcn_00017a26  ; call 0x17a26
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_00017ae5:
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
call fcn_000175bc  ; call 0x175bc
pop ecx
pop ecx
push edi
push esi
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001faac  ; call 0x1faac
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
jmp near fcn_000175c6  ; jmp 0x175c6

fcn_00017b33:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 0x10]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00017b64  ; je 0x17b64
cmp ebx, 0x1f
jbe short loc_00017b64  ; jbe 0x17b64
push edx
push ref_00025b43  ; push 0x25b43
push 0x10c
push ref_00025afe  ; push 0x25afe
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00017b64:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00017b89  ; je 0x17b89
cmp esi, ebx
jbe short loc_00017b89  ; jbe 0x17b89
push eax
push ref_00025b30  ; push 0x25b30
push 0x10d
push ref_00025afe  ; push 0x25afe
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00017b89:
mov eax, dword [ebp + 0x14]
sub esp, 0xc
xor edx, edx
push edx
push eax
push ebx
push esi
push dword [ebp + 8]
call fcn_00017ae5  ; call 0x17ae5
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_00017ba4:
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
call fcn_000175bc  ; call 0x175bc
pop ecx
pop ecx
push edi
push esi
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001fb9e  ; call 0x1fb9e
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
jmp near fcn_000175c6  ; jmp 0x175c6

fcn_00017bf2:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 0x10]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00017c23  ; je 0x17c23
cmp ebx, 0x1f
jbe short loc_00017c23  ; jbe 0x17c23
push edx
push ref_00025b60  ; push 0x25b60
push 0x135
push ref_00025afe  ; push 0x25afe
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00017c23:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00017c48  ; je 0x17c48
cmp esi, ebx
jbe short loc_00017c48  ; jbe 0x17c48
push eax
push ref_00025b30  ; push 0x25b30
push 0x136
push ref_00025afe  ; push 0x25afe
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00017c48:
mov eax, dword [ebp + 0x14]
sub esp, 0xc
xor edx, edx
push edx
push eax
push ebx
push esi
push dword [ebp + 8]
call fcn_00017ba4  ; call 0x17ba4
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_00017c63:
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
call fcn_000175bc  ; call 0x175bc
push edi
push esi
push dword [ebp - 0x24]
push dword [ebp - 0x28]
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001fc9c  ; call 0x1fc9c
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
jmp near fcn_000175c6  ; jmp 0x175c6

fcn_00017cc1:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 0x10]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00017cf2  ; je 0x17cf2
cmp ebx, 0x1f
jbe short loc_00017cf2  ; jbe 0x17cf2
push ecx
push ref_00025b60  ; push 0x25b60
push 0x163
push ref_00025afe  ; push 0x25afe
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00017cf2:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00017d17  ; je 0x17d17
cmp esi, ebx
jbe short loc_00017d17  ; jbe 0x17d17
push edx
push ref_00025b30  ; push 0x25b30
push 0x164
push ref_00025afe  ; push 0x25afe
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00017d17:
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
call fcn_00017c63  ; call 0x17c63
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_00017d37:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00017d5b  ; je 0x17d5b
push eax
push ref_00022281  ; push 0x22281
push 0x26
push ref_00025b7e  ; push 0x25b7e
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00017d5b:
xor eax, eax
xor edx, edx
leave
ret

fcn_00017d61:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00017d85  ; je 0x17d85
push eax
push ref_00022281  ; push 0x22281
push 0x41
push ref_00025b7e  ; push 0x25b7e
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00017d85:
xor eax, eax
xor edx, edx
leave
ret

fcn_00017d8b:
push ebp
mov ebp, esp
push ebx
push eax
call fcn_0001759e  ; call 0x1759e
mov eax, dword [ebp + 8]
mov bl, byte [eax]
call fcn_0001759e  ; call 0x1759e
pop edx
mov al, bl
pop ebx
pop ebp
ret

fcn_00017da5:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 0xc]
call fcn_0001759e  ; call 0x1759e
mov eax, dword [ebp + 8]
mov byte [eax], bl
call fcn_0001759e  ; call 0x1759e
mov al, bl
pop edx
pop ebx
pop ebp
ret

fcn_00017dc2:
push ebp
mov ebp, esp
push ebx
push edx
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00017df0  ; je 0x17df0
test bl, 1
je short loc_00017df0  ; je 0x17df0
push eax
push ref_00025bba  ; push 0x25bba
push 0x97
push ref_00025b7e  ; push 0x25b7e
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00017df0:
call fcn_0001759e  ; call 0x1759e
mov bx, word [ebx]
call fcn_0001759e  ; call 0x1759e
mov eax, ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_00017e04:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
mov ebx, dword [ebp + 0xc]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00017e38  ; je 0x17e38
test esi, 1
je short loc_00017e38  ; je 0x17e38
push eax
push ref_00025bba  ; push 0x25bba
push 0xb7
push ref_00025b7e  ; push 0x25b7e
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00017e38:
call fcn_0001759e  ; call 0x1759e
mov word [esi], bx
call fcn_0001759e  ; call 0x1759e
lea esp, [ebp - 8]
mov eax, ebx
pop ebx
pop esi
pop ebp
ret

fcn_00017e4e:
push ebp
mov ebp, esp
push ebx
push edx
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00017e7c  ; je 0x17e7c
test bl, 3
je short loc_00017e7c  ; je 0x17e7c
push eax
push ref_00025bcd  ; push 0x25bcd
push 0xd7
push ref_00025b7e  ; push 0x25b7e
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00017e7c:
call fcn_0001759e  ; call 0x1759e
mov ebx, dword [ebx]
call fcn_0001759e  ; call 0x1759e
mov eax, ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_00017e8f:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
mov ebx, dword [ebp + 0xc]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00017ec3  ; je 0x17ec3
test esi, 3
je short loc_00017ec3  ; je 0x17ec3
push eax
push ref_00025bcd  ; push 0x25bcd
push 0xf7
push ref_00025b7e  ; push 0x25b7e
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00017ec3:
call fcn_0001759e  ; call 0x1759e
mov dword [esi], ebx
call fcn_0001759e  ; call 0x1759e
lea esp, [ebp - 8]
mov eax, ebx
pop ebx
pop esi
pop ebp
ret

fcn_00017ed8:
push ebp
mov ebp, esp
push ebx
sub esp, 0x14
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00017f08  ; je 0x17f08
test bl, 7
je short loc_00017f08  ; je 0x17f08
push eax
push ref_00025be0  ; push 0x25be0
push 0x117
push ref_00025b7e  ; push 0x25b7e
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00017f08:
call fcn_0001759e  ; call 0x1759e
mov eax, dword [ebx]
mov edx, dword [ebx + 4]
mov dword [ebp - 0x10], eax
mov dword [ebp - 0xc], edx
call fcn_0001759e  ; call 0x1759e
mov eax, dword [ebp - 0x10]
mov edx, dword [ebp - 0xc]
mov ebx, dword [ebp - 4]
leave
ret

fcn_00017f28:
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
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00017f64  ; je 0x17f64
test bl, 7
je short loc_00017f64  ; je 0x17f64
push eax
push ref_00025be0  ; push 0x25be0
push 0x135
push ref_00025b7e  ; push 0x25b7e
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00017f64:
call fcn_0001759e  ; call 0x1759e
mov dword [ebx], esi
mov dword [ebx + 4], edi
call fcn_0001759e  ; call 0x1759e
lea esp, [ebp - 0xc]
mov eax, esi
pop ebx
mov edx, edi
pop esi
pop edi
pop ebp
ret

fcn_00017f7f:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00018ee1  ; call 0x18ee1
add esp, 0x10
mov dword [ebp + 8], ebx
or eax, esi
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00018eea  ; jmp 0x18eea

fcn_00017fac:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00018ee1  ; call 0x18ee1
add esp, 0x10
mov dword [ebp + 8], ebx
and eax, esi
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00018eea  ; jmp 0x18eea

fcn_00017fd9:
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
call fcn_00018ee1  ; call 0x18ee1
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
jmp near fcn_00018eea  ; jmp 0x18eea

fcn_0001800d:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0x10]
push ebx
mov ebx, dword [ebp + 0xc]
sub esp, 0xc
push dword [ebp + 8]
call fcn_00018ee1  ; call 0x18ee1
add esp, 0x10
mov dword [ebp + 0x10], esi
mov dword [ebp + 0xc], ebx
movzx eax, al
mov dword [ebp + 8], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_0001f2b6  ; jmp 0x1f2b6

fcn_0001803d:
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
call fcn_00018ee1  ; call 0x18ee1
mov edx, dword [ebp - 0x1c]
mov ecx, esi
movzx esi, cl
push esi
push edx
push edi
movzx eax, al
push eax
call fcn_0001f4bc  ; call 0x1f4bc
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018eea  ; jmp 0x18eea

fcn_00018087:
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
call fcn_00018ee1  ; call 0x18ee1
mov edx, dword [ebp - 0x1c]
mov ecx, esi
movzx esi, cl
push esi
push edx
push edi
movzx eax, al
push eax
call fcn_0001f329  ; call 0x1f329
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018eea  ; jmp 0x18eea

fcn_000180d1:
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
call fcn_00018ee1  ; call 0x18ee1
mov edx, dword [ebp - 0x1c]
mov ecx, esi
movzx esi, cl
push esi
push edx
push edi
movzx eax, al
push eax
call fcn_0001f3a4  ; call 0x1f3a4
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018eea  ; jmp 0x18eea

fcn_0001811b:
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
call fcn_00018ee1  ; call 0x18ee1
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
call fcn_0001f41f  ; call 0x1f41f
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018eea  ; jmp 0x18eea

fcn_00018176:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00018ef6  ; call 0x18ef6
add esp, 0x10
mov dword [ebp + 8], ebx
or eax, esi
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00018f27  ; jmp 0x18f27

fcn_000181a3:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00018ef6  ; call 0x18ef6
add esp, 0x10
mov dword [ebp + 8], ebx
and eax, esi
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00018f27  ; jmp 0x18f27

fcn_000181d0:
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
call fcn_00018ef6  ; call 0x18ef6
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
jmp near fcn_00018f27  ; jmp 0x18f27

fcn_00018204:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0x10]
push ebx
mov ebx, dword [ebp + 0xc]
sub esp, 0xc
push dword [ebp + 8]
call fcn_00018ef6  ; call 0x18ef6
add esp, 0x10
mov dword [ebp + 0x10], esi
mov dword [ebp + 0xc], ebx
movzx eax, ax
mov dword [ebp + 8], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_0001f53c  ; jmp 0x1f53c

fcn_00018234:
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
call fcn_00018ef6  ; call 0x18ef6
mov edx, dword [ebp - 0x1c]
push esi
push edx
push edi
movzx eax, ax
push eax
call fcn_0001f738  ; call 0x1f738
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018f27  ; jmp 0x18f27

fcn_0001827c:
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
call fcn_00018ef6  ; call 0x18ef6
mov edx, dword [ebp - 0x1c]
push esi
push edx
push edi
movzx eax, ax
push eax
call fcn_0001f5af  ; call 0x1f5af
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018f27  ; jmp 0x18f27

fcn_000182c4:
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
call fcn_00018ef6  ; call 0x18ef6
mov edx, dword [ebp - 0x1c]
push esi
push edx
push edi
movzx eax, ax
push eax
call fcn_0001f626  ; call 0x1f626
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018f27  ; jmp 0x18f27

fcn_0001830c:
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
call fcn_00018ef6  ; call 0x18ef6
mov ecx, dword [ebp - 0x1c]
movzx edi, di
mov edx, dword [ebp - 0x20]
mov dword [esp], edi
push esi
push ecx
push edx
movzx eax, ax
push eax
call fcn_0001f69d  ; call 0x1f69d
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018f27  ; jmp 0x18f27

fcn_00018363:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00018f64  ; call 0x18f64
add esp, 0x10
mov dword [ebp + 8], ebx
or eax, esi
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00018f97  ; jmp 0x18f97

fcn_0001838d:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00018f64  ; call 0x18f64
add esp, 0x10
mov dword [ebp + 8], ebx
and eax, esi
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00018f97  ; jmp 0x18f97

fcn_000183b7:
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
call fcn_00018f64  ; call 0x18f64
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
jmp near fcn_00018f97  ; jmp 0x18f97

fcn_000183e8:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0x10]
push ebx
mov ebx, dword [ebp + 0xc]
sub esp, 0xc
push dword [ebp + 8]
call fcn_00018f64  ; call 0x18f64
add esp, 0x10
mov dword [ebp + 0x10], esi
mov dword [ebp + 0xc], ebx
mov dword [ebp + 8], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_0001f7b4  ; jmp 0x1f7b4

fcn_00018415:
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
call fcn_00018f64  ; call 0x18f64
mov edx, dword [ebp - 0x1c]
push edx
push edi
push esi
push eax
call fcn_0001f9ae  ; call 0x1f9ae
add esp, 0x20
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018f97  ; jmp 0x18f97

fcn_00018454:
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
call fcn_00018f64  ; call 0x18f64
mov edx, dword [ebp - 0x1c]
push edx
push edi
push esi
push eax
call fcn_0001f820  ; call 0x1f820
add esp, 0x20
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018f97  ; jmp 0x18f97

fcn_00018493:
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
call fcn_00018f64  ; call 0x18f64
mov edx, dword [ebp - 0x1c]
push edx
push edi
push esi
push eax
call fcn_0001f89e  ; call 0x1f89e
add esp, 0x20
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018f97  ; jmp 0x18f97

fcn_000184d2:
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
call fcn_00018f64  ; call 0x18f64
mov ecx, dword [ebp - 0x1c]
mov edx, dword [ebp - 0x20]
mov dword [esp], ecx
push edx
push edi
push esi
push eax
call fcn_0001f91c  ; call 0x1f91c
add esp, 0x20
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00018f97  ; jmp 0x18f97

fcn_0001851d:
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
call fcn_00017d37  ; call 0x17d37
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
jmp near fcn_00017d61  ; jmp 0x17d61

fcn_00018551:
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
call fcn_00017d37  ; call 0x17d37
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
jmp near fcn_00017d61  ; jmp 0x17d61

fcn_00018585:
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
call fcn_00017d37  ; call 0x17d37
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
jmp near fcn_00017d61  ; jmp 0x17d61

fcn_000185cb:
push ebp
mov ebp, esp
sub esp, 0x14
push dword [ebp + 8]
call fcn_00017d37  ; call 0x17d37
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push edx
push eax
call fcn_0001fa1d  ; call 0x1fa1d
leave
ret

fcn_000185e8:
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
call fcn_00017d37  ; call 0x17d37
pop ecx
pop ecx
push edi
push esi
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001fd53  ; call 0x1fd53
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
jmp near fcn_00017d61  ; jmp 0x17d61

fcn_00018636:
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
call fcn_00017d37  ; call 0x17d37
pop ecx
pop ecx
push edi
push esi
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001faac  ; call 0x1faac
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
jmp near fcn_00017d61  ; jmp 0x17d61

fcn_00018684:
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
call fcn_00017d37  ; call 0x17d37
pop ecx
pop ecx
push edi
push esi
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001fb9e  ; call 0x1fb9e
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
jmp near fcn_00017d61  ; jmp 0x17d61

fcn_000186d2:
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
call fcn_00017d37  ; call 0x17d37
push edi
push esi
push dword [ebp - 0x24]
push dword [ebp - 0x28]
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001fc9c  ; call 0x1fc9c
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
jmp near fcn_00017d61  ; jmp 0x17d61

fcn_00018730:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
mov dword [ebp + 8], ebx
or eax, esi
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00017da5  ; jmp 0x17da5

fcn_0001875d:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
mov dword [ebp + 8], ebx
and eax, esi
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00017da5  ; jmp 0x17da5

fcn_0001878a:
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
call fcn_00017d8b  ; call 0x17d8b
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
jmp near fcn_00017da5  ; jmp 0x17da5

fcn_000187be:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0x10]
push ebx
mov ebx, dword [ebp + 0xc]
sub esp, 0xc
push dword [ebp + 8]
call fcn_00017d8b  ; call 0x17d8b
add esp, 0x10
mov dword [ebp + 0x10], esi
mov dword [ebp + 0xc], ebx
movzx eax, al
mov dword [ebp + 8], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_0001f2b6  ; jmp 0x1f2b6

fcn_000187ee:
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
call fcn_00017d8b  ; call 0x17d8b
mov edx, dword [ebp - 0x1c]
mov ecx, esi
movzx esi, cl
push esi
push edx
push edi
movzx eax, al
push eax
call fcn_0001f4bc  ; call 0x1f4bc
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017da5  ; jmp 0x17da5

fcn_00018838:
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
call fcn_00017d8b  ; call 0x17d8b
mov edx, dword [ebp - 0x1c]
mov ecx, esi
movzx esi, cl
push esi
push edx
push edi
movzx eax, al
push eax
call fcn_0001f329  ; call 0x1f329
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017da5  ; jmp 0x17da5

fcn_00018882:
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
call fcn_00017d8b  ; call 0x17d8b
mov edx, dword [ebp - 0x1c]
mov ecx, esi
movzx esi, cl
push esi
push edx
push edi
movzx eax, al
push eax
call fcn_0001f3a4  ; call 0x1f3a4
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017da5  ; jmp 0x17da5

fcn_000188cc:
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
call fcn_00017d8b  ; call 0x17d8b
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
call fcn_0001f41f  ; call 0x1f41f
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, al
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017da5  ; jmp 0x17da5

fcn_00018927:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
mov dword [ebp + 8], ebx
or eax, esi
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00017e04  ; jmp 0x17e04

fcn_00018954:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
mov dword [ebp + 8], ebx
and eax, esi
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00017e04  ; jmp 0x17e04

fcn_00018981:
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
call fcn_00017dc2  ; call 0x17dc2
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
jmp near fcn_00017e04  ; jmp 0x17e04

fcn_000189b5:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0x10]
push ebx
mov ebx, dword [ebp + 0xc]
sub esp, 0xc
push dword [ebp + 8]
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
mov dword [ebp + 0x10], esi
mov dword [ebp + 0xc], ebx
movzx eax, ax
mov dword [ebp + 8], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_0001f53c  ; jmp 0x1f53c

fcn_000189e5:
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
call fcn_00017dc2  ; call 0x17dc2
mov edx, dword [ebp - 0x1c]
push esi
push edx
push edi
movzx eax, ax
push eax
call fcn_0001f738  ; call 0x1f738
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017e04  ; jmp 0x17e04

fcn_00018a2d:
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
call fcn_00017dc2  ; call 0x17dc2
mov edx, dword [ebp - 0x1c]
push esi
push edx
push edi
movzx eax, ax
push eax
call fcn_0001f5af  ; call 0x1f5af
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017e04  ; jmp 0x17e04

fcn_00018a75:
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
call fcn_00017dc2  ; call 0x17dc2
mov edx, dword [ebp - 0x1c]
push esi
push edx
push edi
movzx eax, ax
push eax
call fcn_0001f626  ; call 0x1f626
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017e04  ; jmp 0x17e04

fcn_00018abd:
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
call fcn_00017dc2  ; call 0x17dc2
mov ecx, dword [ebp - 0x1c]
movzx edi, di
mov edx, dword [ebp - 0x20]
mov dword [esp], edi
push esi
push ecx
push edx
movzx eax, ax
push eax
call fcn_0001f69d  ; call 0x1f69d
add esp, 0x20
mov dword [ebp + 8], ebx
movzx eax, ax
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017e04  ; jmp 0x17e04

fcn_00018b14:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
mov dword [ebp + 8], ebx
or eax, esi
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00017e8f  ; jmp 0x17e8f

fcn_00018b3e:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
mov dword [ebp + 8], ebx
and eax, esi
mov dword [ebp + 0xc], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_00017e8f  ; jmp 0x17e8f

fcn_00018b68:
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
call fcn_00017e4e  ; call 0x17e4e
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
jmp near fcn_00017e8f  ; jmp 0x17e8f

fcn_00018b99:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0x10]
push ebx
mov ebx, dword [ebp + 0xc]
sub esp, 0xc
push dword [ebp + 8]
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
mov dword [ebp + 0x10], esi
mov dword [ebp + 0xc], ebx
mov dword [ebp + 8], eax
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
jmp near fcn_0001f7b4  ; jmp 0x1f7b4

fcn_00018bc6:
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
call fcn_00017e4e  ; call 0x17e4e
mov edx, dword [ebp - 0x1c]
push edx
push edi
push esi
push eax
call fcn_0001f9ae  ; call 0x1f9ae
add esp, 0x20
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017e8f  ; jmp 0x17e8f

fcn_00018c05:
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
call fcn_00017e4e  ; call 0x17e4e
mov edx, dword [ebp - 0x1c]
push edx
push edi
push esi
push eax
call fcn_0001f820  ; call 0x1f820
add esp, 0x20
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017e8f  ; jmp 0x17e8f

fcn_00018c44:
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
call fcn_00017e4e  ; call 0x17e4e
mov edx, dword [ebp - 0x1c]
push edx
push edi
push esi
push eax
call fcn_0001f89e  ; call 0x1f89e
add esp, 0x20
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017e8f  ; jmp 0x17e8f

fcn_00018c83:
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
call fcn_00017e4e  ; call 0x17e4e
mov ecx, dword [ebp - 0x1c]
mov edx, dword [ebp - 0x20]
mov dword [esp], ecx
push edx
push edi
push esi
push eax
call fcn_0001f91c  ; call 0x1f91c
add esp, 0x20
mov dword [ebp + 8], ebx
mov dword [ebp + 0xc], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_00017e8f  ; jmp 0x17e8f

fcn_00018cce:
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
call fcn_00017ed8  ; call 0x17ed8
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
jmp near fcn_00017f28  ; jmp 0x17f28

fcn_00018d02:
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
call fcn_00017ed8  ; call 0x17ed8
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
jmp near fcn_00017f28  ; jmp 0x17f28

fcn_00018d36:
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
call fcn_00017ed8  ; call 0x17ed8
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
jmp near fcn_00017f28  ; jmp 0x17f28

fcn_00018d7c:
push ebp
mov ebp, esp
sub esp, 0x14
push dword [ebp + 8]
call fcn_00017ed8  ; call 0x17ed8
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push edx
push eax
call fcn_0001fa1d  ; call 0x1fa1d
leave
ret

fcn_00018d99:
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
call fcn_00017ed8  ; call 0x17ed8
pop ecx
pop ecx
push edi
push esi
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001fd53  ; call 0x1fd53
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
jmp near fcn_00017f28  ; jmp 0x17f28

fcn_00018de7:
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
call fcn_00017ed8  ; call 0x17ed8
pop ecx
pop ecx
push edi
push esi
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001faac  ; call 0x1faac
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
jmp near fcn_00017f28  ; jmp 0x17f28

fcn_00018e35:
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
call fcn_00017ed8  ; call 0x17ed8
pop ecx
pop ecx
push edi
push esi
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001fb9e  ; call 0x1fb9e
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
jmp near fcn_00017f28  ; jmp 0x17f28

fcn_00018e83:
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
call fcn_00017ed8  ; call 0x17ed8
push edi
push esi
push dword [ebp - 0x24]
push dword [ebp - 0x28]
push dword [ebp - 0x1c]
push ebx
push edx
push eax
call fcn_0001fc9c  ; call 0x1fc9c
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
jmp near fcn_00017f28  ; jmp 0x17f28

fcn_00018ee1:
push ebp
mov ebp, esp
mov edx, dword [ebp + 8]
in al, dx
pop ebp
ret

fcn_00018eea:
push ebp
mov ebp, esp
mov eax, dword [ebp + 0xc]
mov edx, dword [ebp + 8]
out dx, al
pop ebp
ret

fcn_00018ef6:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00018f20  ; je 0x18f20
test byte [ebp + 8], 1
je short loc_00018f20  ; je 0x18f20
push eax
push ref_00025bf3  ; push 0x25bf3
push 0x69
push ref_00025c03  ; push 0x25c03
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00018f20:
mov edx, dword [ebp + 8]
in ax, dx
leave
ret

fcn_00018f27:
push ebp
mov ebp, esp
push ebx
push edx
mov ebx, dword [ebp + 0xc]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00018f56  ; je 0x18f56
test byte [ebp + 8], 1
je short loc_00018f56  ; je 0x18f56
push eax
push ref_00025bf3  ; push 0x25bf3
push 0x86
push ref_00025c03  ; push 0x25c03
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00018f56:
mov eax, ebx
mov edx, dword [ebp + 8]
out dx, ax
mov eax, ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_00018f64:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00018f91  ; je 0x18f91
test byte [ebp + 8], 3
je short loc_00018f91  ; je 0x18f91
push eax
push ref_00025c42  ; push 0x25c42
push 0xa3
push ref_00025c03  ; push 0x25c03
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00018f91:
mov edx, dword [ebp + 8]
in eax, dx
leave
ret

fcn_00018f97:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00018fc4  ; je 0x18fc4
test byte [ebp + 8], 3
je short loc_00018fc4  ; je 0x18fc4
push eax
push ref_00025c42  ; push 0x25c42
push 0xc0
push ref_00025c03  ; push 0x25c03
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00018fc4:
mov eax, dword [ebp + 0xc]
mov edx, dword [ebp + 8]
out dx, eax
mov eax, dword [ebp + 0xc]
leave
ret

fcn_00018fd0:
push ebp
mov ebp, esp
push ebx
sub esp, 0x20
lea eax, [ebp - 0xc]
push eax
call fcn_000197c7  ; call 0x197c7
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00019024  ; je 0x19024
test ebx, ebx
jns short loc_00019024  ; jns 0x19024
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001900f  ; je 0x1900f
push ecx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001900f:
push edx
push ref_000206f4  ; push 0x206f4
push 0x32
push ref_00025c52  ; push 0x25c52
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00019024:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00019048  ; je 0x19048
cmp dword [ebp - 0xc], 0
jne short loc_00019048  ; jne 0x19048
push eax
push ref_00025c86  ; push 0x25c86
push 0x33
push ref_00025c52  ; push 0x25c52
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00019048:
mov eax, dword [ebp - 0xc]
mov ebx, dword [ebp - 4]
leave
ret

fcn_00019050:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
mov ebx, dword [ebp + 0xc]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001908a  ; je 0x1908a
test ebx, ebx
jne short loc_0001908a  ; jne 0x1908a
push eax
push ref_00025c9e  ; push 0x25c9e
push 0x52
push ref_00025c52  ; push 0x25c52
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
jmp short loc_0001908a  ; jmp 0x1908a

loc_0001907f:
cmp ax, si
je short loc_00019097  ; je 0x19097
movzx eax, word [ebx + 2]
add ebx, eax

loc_0001908a:
mov ax, word [ebx]
cmp ax, 0xffff
jne short loc_0001907f  ; jne 0x1907f
xor eax, eax
jmp short loc_00019099  ; jmp 0x19099

loc_00019097:
mov eax, ebx

loc_00019099:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_000190a0:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_00018fd0  ; call 0x18fd0
movzx ebx, bx
push edx
push edx
push eax
push ebx
call fcn_00019050  ; call 0x19050
mov ebx, dword [ebp - 4]
leave
ret

fcn_000190be:
push ebp
mov ebp, esp
push ebx
push ecx
mov ebx, dword [ebp + 0xc]

loc_000190c6:
push eax
push eax
push ebx
push 4
call fcn_00019050  ; call 0x19050
add esp, 0x10
mov ebx, eax
test eax, eax
je short loc_000190f6  ; je 0x190f6
push edx
push edx
lea eax, [ebx + 8]
push eax
push dword [ebp + 8]
call fcn_00016ee8  ; call 0x16ee8
add esp, 0x10
test al, al
jne short loc_000190f6  ; jne 0x190f6
movzx eax, word [ebx + 2]
add ebx, eax
jmp short loc_000190c6  ; jmp 0x190c6

loc_000190f6:
mov eax, ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_000190fd:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00018fd0  ; call 0x18fd0
push edx
push edx
push eax
push dword [ebp + 8]
call fcn_000190be  ; call 0x190be
leave
ret

fcn_00019115:
push ebp
mov ebp, esp
push ebx
sub esp, 0x20
lea eax, [ebp - 0xc]
push eax
call fcn_00019797  ; call 0x19797
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0001916c  ; je 0x1916c
test ebx, ebx
jns short loc_0001916c  ; jns 0x1916c
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00019154  ; je 0x19154
push edx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00019154:
push eax
push ref_000206f4  ; push 0x206f4
push 0xd8
push ref_00025c52  ; push 0x25c52
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001916c:
mov eax, dword [ebp - 0xc]
mov ebx, dword [ebp - 4]
leave
ret

fcn_00019174:
push ebp
mov ebp, esp
sub esp, 0x1c
lea eax, [ebp - 0xc]
push eax
movzx eax, word [ebp + 0xc]
push eax
movzx eax, word [ebp + 8]
push eax
call fcn_000197df  ; call 0x197df
add esp, 0x10
test eax, eax
jns short loc_0001919b  ; jns 0x1919b
mov dword [ebp - 0xc], 0

loc_0001919b:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_000191c2  ; je 0x191c2
cmp dword [ebp - 0xc], 0
jne short loc_000191c2  ; jne 0x191c2
push eax
push ref_00025cb7  ; push 0x25cb7
push 0xfa
push ref_00025c52  ; push 0x25c52
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000191c2:
mov eax, dword [ebp - 0xc]
leave
ret

fcn_000191c7:
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
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001921f  ; je 0x1921f
test esi, 0xfff
jne short loc_00019207  ; jne 0x19207
test ebx, 0xfff
je short loc_0001921f  ; je 0x1921f

loc_00019207:
push eax
push ref_00025ccb  ; push 0x25ccb
push 0x11a
push ref_00025c52  ; push 0x25c52
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001921f:
push edi
push edi
push 0x48
push 2
call fcn_00019174  ; call 0x19174
add esp, 0x10
mov edi, eax
test eax, eax
je short loc_00019286  ; je 0x19286
push eax
push eax
push ref_0002905c  ; push 0x2905c
lea eax, [edi + 8]
push eax
call fcn_00016ea7  ; call 0x16ea7
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
call fcn_00016fff  ; call 0x16fff
lea eax, [edi + 0x30]
pop ebx
pop esi
push dword [ebp + 8]
push eax
call fcn_00016ea7  ; call 0x16ea7
mov eax, dword [ebp - 0x20]
add esp, 0x10
mov edx, dword [ebp - 0x1c]
mov dword [edi + 0x40], eax
mov dword [edi + 0x44], edx

loc_00019286:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001928e:
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
call fcn_00019174  ; call 0x19174
add esp, 0x10
test eax, eax
je short loc_000192d6  ; je 0x192d6
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

loc_000192d6:
lea esp, [ebp - 8]
pop esi
pop edi
pop ebp
ret

fcn_000192dd:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
mov ebx, dword [ebp + 0xc]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001930d  ; je 0x1930d
test esi, esi
jne short loc_0001930d  ; jne 0x1930d
push eax
push ref_00025d2a  ; push 0x25d2a
push 0x176
push ref_00025c52  ; push 0x25c52
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001930d:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00019336  ; je 0x19336
cmp ebx, 0xffe0
jbe short loc_00019336  ; jbe 0x19336
push ecx
push ref_00025d3f  ; push 0x25d3f
push 0x17b
push ref_00025c52  ; push 0x25c52
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00019336:
add ebx, 0x18
push edx
movzx ebx, bx
push edx
push ebx
push 4
call fcn_00019174  ; call 0x19174
add esp, 0x10
mov ebx, eax
test eax, eax
je short loc_00019363  ; je 0x19363
push eax
push eax
push esi
lea eax, [ebx + 8]
push eax
call fcn_00016ea7  ; call 0x16ea7
lea eax, [ebx + 0x18]
add esp, 0x10
jmp short loc_00019365  ; jmp 0x19365

loc_00019363:
xor eax, eax

loc_00019365:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0001936c:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_000193a7  ; je 0x193a7
test esi, esi
jne short loc_000193a7  ; jne 0x193a7
test ebx, ebx
je short loc_000193a7  ; je 0x193a7
push edx
push ref_00025d73  ; push 0x25d73
push 0x1a8
push ref_00025c52  ; push 0x25c52
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000193a7:
push eax
push eax
push ebx
push edi
call fcn_000192dd  ; call 0x192dd
add esp, 0x10
test eax, eax
je short loc_000193cc  ; je 0x193cc
mov dword [ebp + 0x10], ebx
mov dword [ebp + 0xc], esi
mov dword [ebp + 8], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_0001713e  ; jmp 0x1713e

loc_000193cc:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000193d6:
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
call fcn_00019174  ; call 0x19174
add esp, 0x10
test eax, eax
je short loc_00019412  ; je 0x19412
mov edx, dword [ebp - 0x10]
mov ecx, dword [ebp - 0xc]
mov dword [eax + 8], esi
mov dword [eax + 0xc], edi
mov dword [eax + 0x10], edx
mov dword [eax + 0x14], ecx

loc_00019412:
lea esp, [ebp - 8]
pop esi
pop edi
pop ebp
ret

fcn_00019419:
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
call fcn_00019174  ; call 0x19174
add esp, 0x10
mov edx, eax
test eax, eax
je short loc_0001948e  ; je 0x1948e
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
call fcn_00016ea7  ; call 0x16ea7
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
jmp near fcn_00016ea7  ; jmp 0x16ea7

loc_0001948e:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00019496:
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
call fcn_00019174  ; call 0x19174
add esp, 0x10
test eax, eax
je short loc_000194d2  ; je 0x194d2
mov edx, dword [ebp - 0x10]
mov ecx, dword [ebp - 0xc]
mov dword [eax + 8], esi
mov dword [eax + 0xc], edi
mov dword [eax + 0x10], edx
mov dword [eax + 0x14], ecx

loc_000194d2:
lea esp, [ebp - 8]
pop esi
pop edi
pop ebp
ret

fcn_000194d9:
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
call fcn_00019174  ; call 0x19174
add esp, 0x10
test eax, eax
je short loc_00019516  ; je 0x19516
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
jmp near fcn_00016fff  ; jmp 0x16fff

loc_00019516:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0001951d:
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
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00019566  ; je 0x19566
test esi, 0xfff
jne short loc_0001954e  ; jne 0x1954e
test ebx, 0xfff
je short loc_00019566  ; je 0x19566

loc_0001954e:
push ecx
push ref_00025d9b  ; push 0x25d9b
push 0x251
push ref_00025c52  ; push 0x25c52
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00019566:
push edx
push edx
push 0x30
push 2
call fcn_00019174  ; call 0x19174
add esp, 0x10
mov edx, eax
test eax, eax
je short loc_000195c2  ; je 0x195c2
push eax
push eax
push ref_0002904c  ; push 0x2904c
lea eax, [edx + 8]
push eax
mov dword [ebp - 0x20], edx
call fcn_00016ea7  ; call 0x16ea7
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
jmp near fcn_00016fff  ; jmp 0x16fff

loc_000195c2:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_000195ca:
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
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00019619  ; je 0x19619
test esi, 0xfff
jne short loc_00019601  ; jne 0x19601
test ebx, 0xfff
je short loc_00019619  ; je 0x19619

loc_00019601:
push ecx
push ref_00025d9b  ; push 0x25d9b
push 0x27c
push ref_00025c52  ; push 0x25c52
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00019619:
push edx
push edx
push 0x30
push 2
call fcn_00019174  ; call 0x19174
add esp, 0x10
mov edx, eax
test eax, eax
je short loc_00019674  ; je 0x19674
push eax
push eax
push ref_0002903c  ; push 0x2903c
lea eax, [edx + 8]
push eax
mov dword [ebp - 0x24], edx
call fcn_00016ea7  ; call 0x16ea7
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
jmp near fcn_00016fff  ; jmp 0x16fff

loc_00019674:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001967c:
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
call fcn_00015480  ; call 0x15480
test al, al
je short loc_000196cb  ; je 0x196cb
test esi, 0xfff
jne short loc_000196b3  ; jne 0x196b3
test ebx, 0xfff
je short loc_000196cb  ; je 0x196cb

loc_000196b3:
push ecx
push ref_00025d9b  ; push 0x25d9b
push 0x2a7
push ref_00025c52  ; push 0x25c52
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000196cb:
push edx
push edx
push 0x30
push 2
call fcn_00019174  ; call 0x19174
add esp, 0x10
mov edx, eax
test eax, eax
je short loc_00019723  ; je 0x19723
push eax
push eax
push 0x10
lea eax, [edx + 8]
push eax
mov dword [ebp - 0x24], edx
call fcn_00016fff  ; call 0x16fff
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
jmp near fcn_00016fff  ; jmp 0x16fff

loc_00019723:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001972b:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019b31  ; call 0x19b31
push edx
push edx
mov edx, dword [eax]
push dword [ebp + 8]
push eax
call dword [edx + 0x18]  ; ucall
leave
ret

fcn_00019743:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019b31  ; call 0x19b31
push edx
mov edx, dword [eax]
push dword [ebp + 0xc]
push dword [ebp + 8]
push eax
call dword [edx + 0x1c]  ; ucall
leave
ret

fcn_0001975d:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019b31  ; call 0x19b31
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

fcn_0001977f:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019b31  ; call 0x19b31
push edx
push edx
mov edx, dword [eax]
push dword [ebp + 8]
push eax
call dword [edx + 0x24]  ; ucall
leave
ret

fcn_00019797:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019b31  ; call 0x19b31
push edx
push edx
mov edx, dword [eax]
push dword [ebp + 8]
push eax
call dword [edx + 0x28]  ; ucall
leave
ret

fcn_000197af:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019b31  ; call 0x19b31
push edx
push edx
mov edx, dword [eax]
push dword [ebp + 8]
push eax
call dword [edx + 0x2c]  ; ucall
leave
ret

fcn_000197c7:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019b31  ; call 0x19b31
push edx
push edx
mov edx, dword [eax]
push dword [ebp + 8]
push eax
call dword [edx + 0x30]  ; ucall
leave
ret

fcn_000197df:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
call fcn_00019b31  ; call 0x19b31
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

fcn_00019807:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019b31  ; call 0x19b31
push edx
mov edx, dword [eax]
push dword [ebp + 0xc]
push dword [ebp + 8]
push eax
call dword [edx + 0x38]  ; ucall
leave
ret

fcn_00019821:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_00019b31  ; call 0x19b31
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

fcn_00019843:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_00019b31  ; call 0x19b31
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

fcn_00019865:
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
call fcn_00019b31  ; call 0x19b31
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

fcn_0001989c:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019b31  ; call 0x19b31
mov edx, dword [eax]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
push eax
call dword [edx + 0x48]  ; ucall
leave
ret

fcn_000198b8:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019b31  ; call 0x19b31
push edx
mov edx, dword [eax]
push dword [ebp + 0xc]
push dword [ebp + 8]
push eax
call dword [edx + 0x4c]  ; ucall
leave
ret

fcn_000198d2:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00019b31  ; call 0x19b31
sub esp, 0xc
mov edx, dword [eax]
push eax
call dword [edx + 0x5c]  ; ucall
leave
ret

fcn_000198e8:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_00019b31  ; call 0x19b31
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
call fcn_00019b31  ; call 0x19b31
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
call fcn_00019b31  ; call 0x19b31
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
call fcn_00019b31  ; call 0x19b31
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
call fcn_00019db6  ; call 0x19db6
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_000199c2  ; je 0x199c2
test ebx, ebx
jne short loc_000199c2  ; jne 0x199c2
push eax
push ref_00025de9  ; push 0x25de9
push 0x23d
push ref_00025e03  ; push 0x25e03
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_000199c2:
test edi, edi
je short loc_000199cb  ; je 0x199cb
push eax
push eax
push edi
jmp short loc_000199d2  ; jmp 0x199d2

loc_000199cb:
push eax
push eax
push ref_0002906c  ; push 0x2906c

loc_000199d2:
push ebx
call fcn_00016ea7  ; call 0x16ea7
mov eax, dword [ebp - 0x1c]
add esp, 0x10
mov dword [ebx + 0x10], eax
mov eax, dword [ebp - 0x20]
mov dword [ebx + 0x14], eax
test esi, esi
je short loc_00019a22  ; je 0x19a22
push edi
push edi
push esi
push 0x10
call fcn_00019e91  ; call 0x19e91
mov esi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00019a1f  ; je 0x19a1f
test esi, esi
jne short loc_00019a1f  ; jne 0x19a1f
push ecx
push ref_00025e44  ; push 0x25e44
push 0x248
push ref_00025e03  ; push 0x25e03
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00019a1f:
mov dword [ebx + 0x18], esi

loc_00019a22:
mov eax, dword [ebp - 0x24]
test eax, eax
je short loc_00019a60  ; je 0x19a60
push edx
push edx
push eax
push 0x10
call fcn_00019e91  ; call 0x19e91
mov esi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00019a5d  ; je 0x19a5d
test esi, esi
jne short loc_00019a5d  ; jne 0x19a5d
push edi
push ref_00025e66  ; push 0x25e66
push 0x24d
push ref_00025e03  ; push 0x25e03
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00019a5d:
mov dword [ebx + 0x1c], esi

loc_00019a60:
push ecx
push ecx
push ref_00020594  ; push 0x20594
push 0xc
call fcn_00019e91  ; call 0x19e91
mov esi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00019a98  ; je 0x19a98
test esi, esi
jne short loc_00019a98  ; jne 0x19a98
push edx
push ref_00025e8a  ; push 0x25e8a
push 0x252
push ref_00025e03  ; push 0x25e03
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00019a98:
sub esp, 0xc
mov dword [esi + 8], ebx
push esi
call fcn_0001972b  ; call 0x1972b
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_00019af4  ; je 0x19af4
test ebx, ebx
jns short loc_00019af4  ; jns 0x19af4
call fcn_00015479  ; call 0x15479
test al, al
je short loc_00019ad3  ; je 0x19ad3
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_00019ad3:
mov dword [ebp + 0x10], ref_000206f4  ; mov dword [ebp + 0x10], 0x206f4
mov dword [ebp + 0xc], 0x256
mov dword [ebp + 8], ref_00025e03  ; mov dword [ebp + 8], 0x25e03
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_0001548c  ; jmp 0x1548c

loc_00019af4:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00019afc:
push ebp
mov ebp, esp
push ebx
push edx
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00019b26  ; je 0x19b26
test ebx, ebx
jne short loc_00019b26  ; jne 0x19b26
push eax
push ref_00025eae  ; push 0x25eae
push 0x29
push ref_00025ed6  ; push 0x25ed6
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00019b26:
mov dword [ref_000312f0], ebx  ; mov dword [0x312f0], ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_00019b31:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00019b5e  ; je 0x19b5e
cmp dword [ref_000312f0], 0  ; cmp dword [0x312f0], 0
jne short loc_00019b5e  ; jne 0x19b5e
push eax
push ref_00025f2c  ; push 0x25f2c
push 0x3f
push ref_00025ed6  ; push 0x25ed6
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00019b5e:
mov eax, dword [ref_000312f0]  ; mov eax, dword [0x312f0]
leave
ret

fcn_00019b65:
push ebp
mov ebp, esp
mov eax, dword [ebp + 0xc]
pop ebp
mov dword [ref_000312f0], eax  ; mov dword [0x312f0], eax
xor eax, eax
ret

fcn_00019b74:
push ebp
mov ebp, esp
sub esp, 0x18
mov eax, dword [ebp + 0xc]
test eax, eax
jne short loc_00019b85  ; jne 0x19b85

loc_00019b81:
xor eax, eax
jmp short loc_00019b9d  ; jmp 0x19b9d

loc_00019b85:
push edx
lea edx, [ebp - 0x10]
push edx
push eax
push dword [ebp + 8]
call fcn_0001989c  ; call 0x1989c
add esp, 0x10
test eax, eax
js short loc_00019b81  ; js 0x19b81
mov eax, dword [ebp - 0x10]

loc_00019b9d:
leave
ret

fcn_00019b9f:
push ebp
mov ebp, esp
sub esp, 0x10
push dword [ebp + 8]
push 4
call fcn_00019b74  ; call 0x19b74
leave
ret

fcn_00019bb1:
push ebp
mov ebp, esp
sub esp, 0x10
push dword [ebp + 8]
push 6
call fcn_00019b74  ; call 0x19b74
leave
ret

fcn_00019bc3:
push ebp
mov ebp, esp
sub esp, 0x10
push dword [ebp + 8]
push 0
call fcn_00019b74  ; call 0x19b74
leave
ret

fcn_00019bd5:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00019c02  ; je 0x19c02
cmp dword [ebp + 0xc], 0
jne short loc_00019c02  ; jne 0x19c02
push eax
push ref_00025f49  ; push 0x25f49
push 0x95
push ref_00025f54  ; push 0x25f54
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00019c02:
leave
ret

fcn_00019c04:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 0x10]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00019c37  ; je 0x19c37
lea eax, [ebx - 1]
test eax, ebx
je short loc_00019c37  ; je 0x19c37
push ecx
push ref_00025fa2  ; push 0x25fa2
push 0xba
push ref_00025f54  ; push 0x25f54
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00019c37:
test esi, esi
je short loc_00019ca6  ; je 0x19ca6
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00019c74  ; je 0x19c74
xor edx, edx
mov eax, ebx
test ebx, 0xfff
setne dl
shr eax, 0xc
add eax, edx
not eax
cmp esi, eax
jbe short loc_00019c74  ; jbe 0x19c74
push edx
push ref_00025fc5  ; push 0x25fc5
push 0xc2
push ref_00025f54  ; push 0x25f54
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00019c74:
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
call fcn_00019b74  ; call 0x19b74
add esp, 0x10
cmp ebx, 1
adc ebx, 0xffffffff
mov edx, ebx
not edx
add ebx, eax
and edx, ebx
jmp short loc_00019ca8  ; jmp 0x19ca8

loc_00019ca6:
xor edx, edx

loc_00019ca8:
lea esp, [ebp - 8]
mov eax, edx
pop ebx
pop esi
pop ebp
ret

fcn_00019cb1:
push ebp
mov ebp, esp
sub esp, 0xc
push dword [ebp + 0xc]
push dword [ebp + 8]
push 4
call fcn_00019c04  ; call 0x19c04
leave
ret

fcn_00019cc6:
push ebp
mov ebp, esp
sub esp, 0xc
push dword [ebp + 0xc]
push dword [ebp + 8]
push 6
call fcn_00019c04  ; call 0x19c04
leave
ret

fcn_00019cdb:
push ebp
mov ebp, esp
sub esp, 0xc
push dword [ebp + 0xc]
push dword [ebp + 8]
push 0
call fcn_00019c04  ; call 0x19c04
leave
ret

fcn_00019cf0:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00019d1d  ; je 0x19d1d
cmp dword [ebp + 0xc], 0
jne short loc_00019d1d  ; jne 0x19d1d
push eax
push ref_00025f49  ; push 0x25f49
push 0x13b
push ref_00025f54  ; push 0x25f54
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00019d1d:
leave
ret

fcn_00019d1f:
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
jmp near fcn_00019b74  ; jmp 0x19b74

fcn_00019d3d:
push ebp
mov ebp, esp
sub esp, 0x20
lea eax, [ebp - 0xc]
push eax
push dword [ebp + 8]
call fcn_000198b8  ; call 0x198b8
add esp, 0x10
test eax, eax
jns short loc_00019d5d  ; jns 0x19d5d
mov dword [ebp - 0xc], 0

loc_00019d5d:
mov eax, dword [ebp - 0xc]
leave
ret

fcn_00019d62:
push ebp
mov ebp, esp
sub esp, 0x10
push dword [ebp + 8]
push 6
call fcn_00019d1f  ; call 0x19d1f
leave
ret

fcn_00019d74:
push ebp
mov ebp, esp
sub esp, 0x10
push dword [ebp + 8]
push 0
call fcn_00019d1f  ; call 0x19d1f
leave
ret

fcn_00019d86:
push ebp
mov ebp, esp
push ebx
sub esp, 0xc
mov ebx, dword [ebp + 0xc]
push ebx
push dword [ebp + 8]
call fcn_00019d1f  ; call 0x19d1f
add esp, 0x10
test eax, eax
je short loc_00019daf  ; je 0x19daf
mov dword [ebp + 0xc], ebx
mov ebx, dword [ebp - 4]
mov dword [ebp + 8], eax
leave
jmp near fcn_00016fff  ; jmp 0x16fff

loc_00019daf:
xor eax, eax
mov ebx, dword [ebp - 4]
leave
ret

fcn_00019db6:
push ebp
mov ebp, esp
push ebx
sub esp, 0x10
mov ebx, dword [ebp + 8]
push ebx
call fcn_00019d3d  ; call 0x19d3d
add esp, 0x10
test eax, eax
je short loc_00019dd9  ; je 0x19dd9
push edx
push edx
push ebx
push eax
call fcn_00016fff  ; call 0x16fff
add esp, 0x10

loc_00019dd9:
mov ebx, dword [ebp - 4]
leave
ret

fcn_00019dde:
push ebp
mov ebp, esp
sub esp, 0x10
push dword [ebp + 8]
push 6
call fcn_00019d86  ; call 0x19d86
leave
ret

fcn_00019df0:
push ebp
mov ebp, esp
sub esp, 0x10
push dword [ebp + 8]
push 0
call fcn_00019d86  ; call 0x19d86
leave
ret

fcn_00019e02:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00019e39  ; je 0x19e39
test ebx, ebx
jne short loc_00019e39  ; jne 0x19e39
push ecx
push ref_0002619a  ; push 0x2619a
push 0x221
push ref_00025f54  ; push 0x25f54
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00019e39:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00019e62  ; je 0x19e62
mov eax, ebx
neg eax
cmp esi, eax
jbe short loc_00019e62  ; jbe 0x19e62
push edx
push ref_00026015  ; push 0x26015
push 0x222
push ref_00025f54  ; push 0x25f54
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00019e62:
push eax
push eax
push esi
push edi
call fcn_00019d1f  ; call 0x19d1f
add esp, 0x10
test eax, eax
je short loc_00019e87  ; je 0x19e87
mov dword [ebp + 0x10], esi
mov dword [ebp + 0xc], ebx
mov dword [ebp + 8], eax
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_0001713e  ; jmp 0x1713e

loc_00019e87:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00019e91:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 8]
push ebx
mov ebx, dword [ebp + 0xc]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00019ec1  ; je 0x19ec1
test ebx, ebx
jne short loc_00019ec1  ; jne 0x19ec1
push eax
push ref_0002619a  ; push 0x2619a
push 0x245
push ref_00025f54  ; push 0x25f54
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00019ec1:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00019eea  ; je 0x19eea
mov eax, ebx
neg eax
cmp esi, eax
jbe short loc_00019eea  ; jbe 0x19eea
push ecx
push ref_00026015  ; push 0x26015
push 0x246
push ref_00025f54  ; push 0x25f54
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00019eea:
sub esp, 0xc
push esi
call fcn_00019d3d  ; call 0x19d3d
add esp, 0x10
test eax, eax
je short loc_00019f06  ; je 0x19f06
push edx
push esi
push ebx
push eax
call fcn_0001713e  ; call 0x1713e
add esp, 0x10

loc_00019f06:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_00019f0d:
push ebp
mov ebp, esp
sub esp, 0xc
push dword [ebp + 0xc]
push dword [ebp + 8]
push 6
call fcn_00019e02  ; call 0x19e02
leave
ret

fcn_00019f22:
push ebp
mov ebp, esp
sub esp, 0xc
push dword [ebp + 0xc]
push dword [ebp + 8]
push 0
call fcn_00019e02  ; call 0x19e02
leave
ret

fcn_00019f37:
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
call fcn_00019d86  ; call 0x19d86
add esp, 0x10
mov edi, eax
test eax, eax
je short loc_00019f6f  ; je 0x19f6f
test esi, esi
je short loc_00019f6f  ; je 0x19f6f
cmp ebx, dword [ebp + 0xc]
cmova ebx, dword [ebp + 0xc]
push eax
push ebx
push esi
push edi
call fcn_0001713e  ; call 0x1713e
add esp, 0x10

loc_00019f6f:
lea esp, [ebp - 0xc]
mov eax, edi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_00019f79:
push ebp
mov ebp, esp
sub esp, 8
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
push 4
call fcn_00019f37  ; call 0x19f37
leave
ret

fcn_00019f91:
push ebp
mov ebp, esp
sub esp, 8
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
push 6
call fcn_00019f37  ; call 0x19f37
leave
ret

fcn_00019fa9:
push ebp
mov ebp, esp
sub esp, 8
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
push 0
call fcn_00019f37  ; call 0x19f37
leave
ret

fcn_00019fc1:
push ebp
mov ebp, esp
pop ebp
ret

fcn_00019fc6:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_00019ff4  ; je 0x19ff4
test ebx, 0x400000
je short loc_00019ff4  ; je 0x19ff4
push eax
push ref_00026049  ; push 0x26049
push 0x33
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_00019ff4:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a019  ; je 0x1a019
movzx eax, bh
test eax, eax
je short loc_0001a019  ; je 0x1a019
push ecx
push ref_000260bc  ; push 0x260bc
push 0x34
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a019:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a03f  ; je 0x1a03f
test ebx, 0x3f0000
je short loc_0001a03f  ; je 0x1a03f
push edx
push ref_000260e0  ; push 0x260e0
push 0x35
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a03f:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a065  ; je 0x1a065
test ebx, 0xff800001
je short loc_0001a065  ; je 0x1a065
push eax
push ref_00026105  ; push 0x26105
push 0x36
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a065:
sub esp, 0xc
push dword [ebp + 0xc]
push 0
push 0
push ebx
push 0
call fcn_0001a7eb  ; call 0x1a7eb
add esp, 0x20
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001a07f:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a0ad  ; je 0x1a0ad
test ebx, 0x400000
je short loc_0001a0ad  ; je 0x1a0ad
push eax
push ref_00026049  ; push 0x26049
push 0x5c
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a0ad:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a0d2  ; je 0x1a0d2
movzx eax, bh
test eax, eax
je short loc_0001a0d2  ; je 0x1a0d2
push ecx
push ref_000260bc  ; push 0x260bc
push 0x5d
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a0d2:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a0f8  ; je 0x1a0f8
test ebx, 0x3f0000
je short loc_0001a0f8  ; je 0x1a0f8
push edx
push ref_000260e0  ; push 0x260e0
push 0x5e
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a0f8:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a11e  ; je 0x1a11e
test ebx, 0xff800001
je short loc_0001a11e  ; je 0x1a11e
push eax
push ref_00026105  ; push 0x26105
push 0x5f
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a11e:
sub esp, 0xc
push dword [ebp + 0xc]
push 0
push 0
push ebx
push 1
call fcn_0001a7eb  ; call 0x1a7eb
add esp, 0x20
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001a138:
push ebp
mov ebp, esp
push ebx
sub esp, 0x14
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a16a  ; je 0x1a16a
movzx eax, bh
test eax, eax
je short loc_0001a16a  ; je 0x1a16a
push ecx
push ref_000260bc  ; push 0x260bc
push 0x8a
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a16a:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a193  ; je 0x1a193
test ebx, 0x3f0000
je short loc_0001a193  ; je 0x1a193
push edx
push ref_000260e0  ; push 0x260e0
push 0x8b
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a193:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a1bc  ; je 0x1a1bc
test ebx, 0xff800001
je short loc_0001a1bc  ; je 0x1a1bc
push eax
push ref_00026105  ; push 0x26105
push 0x8c
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a1bc:
sub esp, 0xc
push dword [ebp + 0xc]
lea eax, [ebp - 9]
push eax
push 1
push ebx
push 2
call fcn_0001a7eb  ; call 0x1a7eb
mov al, byte [ebp - 9]
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001a1d8:
push ebp
mov ebp, esp
push esi
push ebx
sub esp, 0x10
mov ebx, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a20e  ; je 0x1a20e
movzx eax, bh
test eax, eax
je short loc_0001a20e  ; je 0x1a20e
push ecx
push ref_000260bc  ; push 0x260bc
push 0xbb
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a20e:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a237  ; je 0x1a237
test ebx, 0x3f0000
je short loc_0001a237  ; je 0x1a237
push edx
push ref_000260e0  ; push 0x260e0
push 0xbc
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a237:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a260  ; je 0x1a260
test ebx, 0xff800001
je short loc_0001a260  ; je 0x1a260
push eax
push ref_00026105  ; push 0x26105
push 0xbd
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a260:
sub esp, 0xc
mov eax, esi
push dword [ebp + 0x10]
mov byte [ebp - 9], al
lea eax, [ebp - 9]
push eax
push 1
push ebx
push 3
call fcn_0001a7eb  ; call 0x1a7eb
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_0001a282:
push ebp
mov ebp, esp
push ebx
sub esp, 0x14
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a2b5  ; je 0x1a2b5
test ebx, 0x3f0000
je short loc_0001a2b5  ; je 0x1a2b5
push edx
push ref_000260e0  ; push 0x260e0
push 0xea
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a2b5:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a2de  ; je 0x1a2de
test ebx, 0xff800001
je short loc_0001a2de  ; je 0x1a2de
push eax
push ref_00026105  ; push 0x26105
push 0xeb
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a2de:
sub esp, 0xc
push dword [ebp + 0xc]
lea eax, [ebp - 9]
push eax
push 1
push ebx
push 4
call fcn_0001a7eb  ; call 0x1a7eb
mov al, byte [ebp - 9]
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001a2fa:
push ebp
mov ebp, esp
push esi
push ebx
sub esp, 0x10
mov ebx, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a331  ; je 0x1a331
test ebx, 0x3f0000
je short loc_0001a331  ; je 0x1a331
push edx
push ref_000260e0  ; push 0x260e0
push 0x11a
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a331:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a35a  ; je 0x1a35a
test ebx, 0xff800001
je short loc_0001a35a  ; je 0x1a35a
push eax
push ref_00026105  ; push 0x26105
push 0x11b
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a35a:
sub esp, 0xc
mov eax, esi
push dword [ebp + 0x10]
mov byte [ebp - 9], al
lea eax, [ebp - 9]
push eax
push 1
push ebx
push 5
call fcn_0001a7eb  ; call 0x1a7eb
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_0001a37c:
push ebp
mov ebp, esp
push ebx
sub esp, 0x14
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a3af  ; je 0x1a3af
test ebx, 0x3f0000
je short loc_0001a3af  ; je 0x1a3af
push edx
push ref_000260e0  ; push 0x260e0
push 0x148
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a3af:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a3d8  ; je 0x1a3d8
test ebx, 0xff800001
je short loc_0001a3d8  ; je 0x1a3d8
push eax
push ref_00026105  ; push 0x26105
push 0x149
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a3d8:
sub esp, 0xc
push dword [ebp + 0xc]
lea eax, [ebp - 0xa]
push eax
push 2
push ebx
push 6
call fcn_0001a7eb  ; call 0x1a7eb
mov ax, word [ebp - 0xa]
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001a3f5:
push ebp
mov ebp, esp
push esi
push ebx
sub esp, 0x10
mov ebx, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a42c  ; je 0x1a42c
test ebx, 0x3f0000
je short loc_0001a42c  ; je 0x1a42c
push edx
push ref_000260e0  ; push 0x260e0
push 0x178
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a42c:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a455  ; je 0x1a455
test ebx, 0xff800001
je short loc_0001a455  ; je 0x1a455
push eax
push ref_00026105  ; push 0x26105
push 0x179
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a455:
sub esp, 0xc
push dword [ebp + 0x10]
lea eax, [ebp - 0xa]
mov word [ebp - 0xa], si
push eax
push 2
push ebx
push 7
call fcn_0001a7eb  ; call 0x1a7eb
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_0001a476:
push ebp
mov ebp, esp
push ebx
sub esp, 0x14
mov eax, dword [ebp + 0xc]
mov ebx, dword [ebp + 8]
mov word [ebp - 0xc], ax
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a4b0  ; je 0x1a4b0
test ebx, 0x3f0000
je short loc_0001a4b0  ; je 0x1a4b0
push edx
push ref_000260e0  ; push 0x260e0
push 0x1a7
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a4b0:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a4d9  ; je 0x1a4d9
test ebx, 0xff800001
je short loc_0001a4d9  ; je 0x1a4d9
push eax
push ref_00026105  ; push 0x26105
push 0x1a8
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a4d9:
sub esp, 0xc
push dword [ebp + 0x10]
lea eax, [ebp - 0xc]
push eax
push 2
push ebx
push 0xa
call fcn_0001a7eb  ; call 0x1a7eb
mov eax, dword [ebp - 0xc]
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001a4f5:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a525  ; je 0x1a525
test esi, esi
jne short loc_0001a525  ; jne 0x1a525
push ecx
push ref_0002619a  ; push 0x2619a
push 0x1d8
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a525:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a54e  ; je 0x1a54e
test ebx, 0x3f0000
je short loc_0001a54e  ; je 0x1a54e
push edx
push ref_000260e0  ; push 0x260e0
push 0x1d9
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a54e:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a577  ; je 0x1a577
test ebx, 0xff800001
je short loc_0001a577  ; je 0x1a577
push eax
push ref_00026105  ; push 0x26105
push 0x1da
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a577:
sub esp, 0xc
push dword [ebp + 0x10]
push esi
push 0x20
push ebx
push 8
call fcn_0001a7eb  ; call 0x1a7eb
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0001a58f:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a5bf  ; je 0x1a5bf
test esi, esi
jne short loc_0001a5bf  ; jne 0x1a5bf
push eax
push ref_0002619a  ; push 0x2619a
push 0x207
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a5bf:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a5e8  ; je 0x1a5e8
test ebx, 0x3f0000
jne short loc_0001a5e8  ; jne 0x1a5e8
push ecx
push ref_0002612f  ; push 0x2612f
push 0x208
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a5e8:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a616  ; je 0x1a616
mov eax, ebx
shr eax, 0x10
and eax, 0x3f
cmp eax, 0x20
jbe short loc_0001a616  ; jbe 0x1a616
push edx
push ref_00026154  ; push 0x26154
push 0x209
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a616:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a63f  ; je 0x1a63f
test ebx, 0xff800001
je short loc_0001a63f  ; je 0x1a63f
push eax
push ref_00026105  ; push 0x26105
push 0x20a
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a63f:
sub esp, 0xc
mov eax, ebx
push dword [ebp + 0x10]
shr eax, 0x10
and eax, 0x3f
push esi
push eax
push ebx
push 9
call fcn_0001a7eb  ; call 0x1a7eb
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0001a65e:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov ebx, dword [ebp + 8]
mov edi, dword [ebp + 0xc]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a692  ; je 0x1a692
test edi, edi
jne short loc_0001a692  ; jne 0x1a692
push eax
push ref_0002617a  ; push 0x2617a
push 0x23c
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a692:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a6b9  ; je 0x1a6b9
cmp dword [ebp + 0x10], 0
jne short loc_0001a6b9  ; jne 0x1a6b9
push eax
push ref_00026196  ; push 0x26196
push 0x23d
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a6b9:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a6e2  ; je 0x1a6e2
test ebx, 0x3f0000
jne short loc_0001a6e2  ; jne 0x1a6e2
push eax
push ref_0002612f  ; push 0x2612f
push 0x23e
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a6e2:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a710  ; je 0x1a710
mov eax, ebx
shr eax, 0x10
and eax, 0x3f
cmp eax, 0x20
jbe short loc_0001a710  ; jbe 0x1a710
push esi
push ref_00026154  ; push 0x26154
push 0x23f
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a710:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a739  ; je 0x1a739
test ebx, 0xff800001
je short loc_0001a739  ; je 0x1a739
push ecx
push ref_00026105  ; push 0x26105
push 0x240
push ref_0002607b  ; push 0x2607b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a739:
mov esi, ebx
shr esi, 0x10
push eax
and esi, 0x3f
push esi
push edi
push dword [ebp + 0x10]
call fcn_0001713e  ; call 0x1713e
pop edx
push dword [ebp + 0x14]
push eax
push esi
push ebx
push 0xb
call fcn_0001a7eb  ; call 0x1a7eb
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001a762:
push ebp
mov ebp, esp
push ebx
sub esp, 0x14
lea eax, [ebp - 0xc]
push eax
push 0
push 0
push ref_000290bc  ; push 0x290bc
call fcn_0001975d  ; call 0x1975d
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0001a7bf  ; je 0x1a7bf
test ebx, ebx
jns short loc_0001a7bf  ; jns 0x1a7bf
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001a7aa  ; je 0x1a7aa
push ecx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001a7aa:
push edx
push ref_000206f4  ; push 0x206f4
push 0x24
push ref_000261b1  ; push 0x261b1
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a7bf:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001a7e3  ; je 0x1a7e3
cmp dword [ebp - 0xc], 0
jne short loc_0001a7e3  ; jne 0x1a7e3
push eax
push ref_000261f5  ; push 0x261f5
push 0x25
push ref_000261b1  ; push 0x261b1
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001a7e3:
mov eax, dword [ebp - 0xc]
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001a7eb:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0x18]
push ebx
mov ebx, dword [ebp + 0xc]
call fcn_0001a762  ; call 0x1a762
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
je short loc_0001a827  ; je 0x1a827
mov dword [esi], eax

loc_0001a827:
mov eax, dword [ebp + 0x10]
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0001a831:
push ebp
mov ebp, esp
sub esp, 0x10
movzx eax, byte [ebp + 8]
push eax
push 0x80
call fcn_00018eea  ; call 0x18eea
mov eax, dword [ebp + 8]
leave
ret

fcn_0001a84b:
push ebp
mov ebp, esp
sub esp, 0x10
movzx eax, byte [ebp + 8]
push eax
push 0x80
call fcn_00018eea  ; call 0x18eea
mov eax, dword [ebp + 8]
leave
ret

fcn_0001a865:
push ebp
xor eax, eax
mov ebp, esp
pop ebp
ret

fcn_0001a86c:
push ebp
xor eax, eax
mov ebp, esp
pop ebp
ret

fcn_0001a873:
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00017d8b  ; jmp 0x17d8b

fcn_0001a882:
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00017dc2  ; jmp 0x17dc2

fcn_0001a891:
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00017e4e  ; jmp 0x17e4e

fcn_0001a8a0:
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00017ed8  ; jmp 0x17ed8

fcn_0001a8af:
push ebp
mov ebp, esp
movzx eax, byte [ebp + 0x18]
mov dword [ebp + 0xc], eax
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00017da5  ; jmp 0x17da5

fcn_0001a8c5:
push ebp
mov ebp, esp
movzx eax, word [ebp + 0x18]
mov dword [ebp + 0xc], eax
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00017e04  ; jmp 0x17e04

fcn_0001a8db:
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x18]
mov dword [ebp + 0xc], eax
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00017e8f  ; jmp 0x17e8f

fcn_0001a8f0:
push ebp
mov ebp, esp
mov ecx, dword [ebp + 0x10]
mov eax, dword [ebp + 0x18]
mov edx, dword [ebp + 0x1c]
mov dword [ebp + 8], ecx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
pop ebp
jmp near fcn_00017f28  ; jmp 0x17f28

fcn_0001a90b:
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00018ee1  ; jmp 0x18ee1

fcn_0001a91a:
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00018ef6  ; jmp 0x18ef6

fcn_0001a929:
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00018f64  ; jmp 0x18f64

fcn_0001a938:
push ebp
mov ebp, esp
movzx eax, byte [ebp + 0x18]
mov dword [ebp + 0xc], eax
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00018eea  ; jmp 0x18eea

fcn_0001a94e:
push ebp
mov ebp, esp
movzx eax, word [ebp + 0x18]
mov dword [ebp + 0xc], eax
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00018f27  ; jmp 0x18f27

fcn_0001a964:
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x18]
mov dword [ebp + 0xc], eax
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00018f97  ; jmp 0x18f97

fcn_0001a979:
push ebp
mov ebp, esp
mov eax, dword [ebp + 0x10]
mov dword [ebp + 8], eax
pop ebp
jmp near fcn_00017d37  ; jmp 0x17d37

fcn_0001a988:
push ebp
mov ebp, esp
mov ecx, dword [ebp + 0x10]
mov eax, dword [ebp + 0x18]
mov edx, dword [ebp + 0x1c]
mov dword [ebp + 8], ecx
mov dword [ebp + 0xc], eax
mov dword [ebp + 0x10], edx
pop ebp
jmp near fcn_00017d61  ; jmp 0x17d61

fcn_0001a9a3:
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
je near loc_0001aa50  ; je 0x1aa50
cmp esi, 0xb
ja short loc_0001aa50  ; ja 0x1aa50
lea edx, [esi - 4]
cmp edx, 3
mov edx, 1
cmovbe ebx, edx
and esi, 3
cmp esi, 3
jne short loc_0001a9ec  ; jne 0x1a9ec
test cl, cl
je short loc_0001aa50  ; je 0x1aa50

loc_0001a9ec:
mov eax, 0xffff
xor edx, edx
test cl, cl
je short loc_0001a9fc  ; je 0x1a9fc
or eax, 0xffffffff
xor edx, edx

loc_0001a9fc:
test ebx, ebx
jne short loc_0001aa12  ; jne 0x1aa12
cmp edi, edx
jb short loc_0001aa46  ; jb 0x1aa46
ja short loc_0001aa0b  ; ja 0x1aa0b

loc_0001aa06:
cmp dword [ebp - 0x1c], eax
jbe short loc_0001aa46  ; jbe 0x1aa46

loc_0001aa0b:
mov eax, 0x80000003
jmp short loc_0001aa50  ; jmp 0x1aa50

loc_0001aa12:
push ecx
push esi
push edx
push eax
call fcn_0001724f  ; call 0x1724f
lea ecx, [ebx - 1]
add esp, 0x10
cmp edx, 0
jbe short loc_0001aa4a  ; jbe 0x1aa4a

loc_0001aa26:
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
call fcn_0001fdda  ; call 0x1fdda
add esp, 0x10
cmp edi, edx
ja short loc_0001aa0b  ; ja 0x1aa0b
jae short loc_0001aa06  ; jae 0x1aa06

loc_0001aa46:
xor eax, eax
jmp short loc_0001aa50  ; jmp 0x1aa50

loc_0001aa4a:
cmp eax, ecx
jb short loc_0001aa0b  ; jb 0x1aa0b
jmp short loc_0001aa26  ; jmp 0x1aa26

loc_0001aa50:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001aa58:
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
call fcn_0001a9a3  ; call 0x1a9a3
add esp, 0x20
test eax, eax
js near loc_0001ab7d  ; js 0x1ab7d
mov edx, dword [ebp - 0x1c]
mov dword [ebp - 0x24], 0
mov al, byte [edx + ref_000295ec]  ; mov al, byte [edx + 0x295ec]
mov byte [ebp - 0x1e], al
mov eax, edx
and eax, 3
mov dword [ebp - 0x1c], eax
movzx eax, byte [eax + ref_000295f8]  ; movzx eax, byte [eax + 0x295f8]
dec eax
test ebx, eax
movzx eax, byte [edx + ref_000295f8]  ; movzx eax, byte [edx + 0x295f8]
sete byte [ebp - 0x1d]
mov dword [ebp - 0x28], eax

loc_0001aabc:
cmp dword [ebp + 0x1c], 0
je near loc_0001ab7b  ; je 0x1ab7b
cmp dword [ebp - 0x1c], 0
jne short loc_0001aadc  ; jne 0x1aadc
sub esp, 0xc
push esi
call fcn_00017d8b  ; call 0x17d8b
mov byte [ebx], al
jmp near loc_0001ab64  ; jmp 0x1ab64

loc_0001aadc:
cmp dword [ebp - 0x1c], 1
jne short loc_0001ab0d  ; jne 0x1ab0d
cmp byte [ebp - 0x1d], 0
je short loc_0001aaf6  ; je 0x1aaf6
sub esp, 0xc
push esi
call fcn_00017dc2  ; call 0x17dc2
mov word [ebx], ax
jmp short loc_0001ab64  ; jmp 0x1ab64

loc_0001aaf6:
sub esp, 0xc
push esi
call fcn_00017dc2  ; call 0x17dc2
pop edx
pop ecx
movzx eax, ax
push eax
push ebx
call fcn_000172cb  ; call 0x172cb
jmp short loc_0001ab64  ; jmp 0x1ab64

loc_0001ab0d:
cmp dword [ebp - 0x1c], 2
jne short loc_0001ab3a  ; jne 0x1ab3a
cmp byte [ebp - 0x1d], 0
je short loc_0001ab26  ; je 0x1ab26
sub esp, 0xc
push esi
call fcn_00017e4e  ; call 0x17e4e
mov dword [ebx], eax
jmp short loc_0001ab64  ; jmp 0x1ab64

loc_0001ab26:
sub esp, 0xc
push esi
call fcn_00017e4e  ; call 0x17e4e
pop edx
pop ecx
push eax
push ebx
call fcn_000173b2  ; call 0x173b2
jmp short loc_0001ab64  ; jmp 0x1ab64

loc_0001ab3a:
cmp byte [ebp - 0x1d], 0
je short loc_0001ab50  ; je 0x1ab50
sub esp, 0xc
push esi
call fcn_00017ed8  ; call 0x17ed8
mov dword [ebx], eax
mov dword [ebx + 4], edx
jmp short loc_0001ab64  ; jmp 0x1ab64

loc_0001ab50:
sub esp, 0xc
push esi
call fcn_00017ed8  ; call 0x17ed8
add esp, 0xc
push edx
push eax
push ebx
call fcn_00017424  ; call 0x17424

loc_0001ab64:
movzx eax, byte [ebp - 0x1e]
add esp, 0x10
add esi, dword [ebp - 0x28]
adc edi, dword [ebp - 0x24]
dec dword [ebp + 0x1c]
add ebx, eax
jmp near loc_0001aabc  ; jmp 0x1aabc

loc_0001ab7b:
xor eax, eax

loc_0001ab7d:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001ab85:
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
call fcn_0001a9a3  ; call 0x1a9a3
add esp, 0x20
test eax, eax
js near loc_0001ac92  ; js 0x1ac92
mov edx, dword [ebp - 0x1c]
mov dword [ebp - 0x24], 0
mov al, byte [edx + ref_000295ec]  ; mov al, byte [edx + 0x295ec]
mov byte [ebp - 0x1e], al
mov eax, edx
and eax, 3
mov dword [ebp - 0x1c], eax
movzx eax, byte [eax + ref_000295f8]  ; movzx eax, byte [eax + 0x295f8]
dec eax
test ebx, eax
movzx eax, byte [edx + ref_000295f8]  ; movzx eax, byte [edx + 0x295f8]
sete byte [ebp - 0x1d]
mov dword [ebp - 0x28], eax

loc_0001abe9:
cmp dword [ebp + 0x1c], 0
je near loc_0001ac90  ; je 0x1ac90
cmp dword [ebp - 0x1c], 0
jne short loc_0001ac07  ; jne 0x1ac07
push eax
push eax
movzx eax, byte [ebx]
push eax
push esi
call fcn_00017da5  ; call 0x17da5
jmp short loc_0001ac79  ; jmp 0x1ac79

loc_0001ac07:
cmp dword [ebp - 0x1c], 1
jne short loc_0001ac31  ; jne 0x1ac31
cmp byte [ebp - 0x1d], 0
je short loc_0001ac1a  ; je 0x1ac1a
push eax
push eax
movzx eax, word [ebx]
jmp short loc_0001ac28  ; jmp 0x1ac28

loc_0001ac1a:
sub esp, 0xc
push ebx
call fcn_00017299  ; call 0x17299
pop edx
pop ecx
movzx eax, ax

loc_0001ac28:
push eax
push esi
call fcn_00017e04  ; call 0x17e04
jmp short loc_0001ac79  ; jmp 0x1ac79

loc_0001ac31:
cmp dword [ebp - 0x1c], 2
jne short loc_0001ac57  ; jne 0x1ac57
cmp byte [ebp - 0x1d], 0
je short loc_0001ac43  ; je 0x1ac43
push eax
push eax
push dword [ebx]
jmp short loc_0001ac4f  ; jmp 0x1ac4f

loc_0001ac43:
sub esp, 0xc
push ebx
call fcn_0001737e  ; call 0x1737e
pop edx
pop ecx
push eax

loc_0001ac4f:
push esi
call fcn_00017e8f  ; call 0x17e8f
jmp short loc_0001ac79  ; jmp 0x1ac79

loc_0001ac57:
cmp byte [ebp - 0x1d], 0
je short loc_0001ac65  ; je 0x1ac65
push eax
push dword [ebx + 4]
push dword [ebx]
jmp short loc_0001ac73  ; jmp 0x1ac73

loc_0001ac65:
sub esp, 0xc
push ebx
call fcn_000173ed  ; call 0x173ed
add esp, 0xc
push edx
push eax

loc_0001ac73:
push esi
call fcn_00017f28  ; call 0x17f28

loc_0001ac79:
movzx eax, byte [ebp - 0x1e]
add esp, 0x10
add esi, dword [ebp - 0x28]
adc edi, dword [ebp - 0x24]
dec dword [ebp + 0x1c]
add ebx, eax
jmp near loc_0001abe9  ; jmp 0x1abe9

loc_0001ac90:
xor eax, eax

loc_0001ac92:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001ac9a:
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
call fcn_0001a9a3  ; call 0x1a9a3
add esp, 0x20
test eax, eax
js near loc_0001ad90  ; js 0x1ad90
mov edx, dword [ebp - 0x1c]
mov dword [ebp - 0x24], 0
mov al, byte [edx + ref_000295ec]  ; mov al, byte [edx + 0x295ec]
mov byte [ebp - 0x1e], al
mov eax, edx
and eax, 3
mov dword [ebp - 0x1c], eax
movzx eax, byte [eax + ref_000295f8]  ; movzx eax, byte [eax + 0x295f8]
dec eax
test ebx, eax
movzx eax, byte [edx + ref_000295f8]  ; movzx eax, byte [edx + 0x295f8]
sete byte [ebp - 0x1d]
mov dword [ebp - 0x28], eax

loc_0001acfe:
cmp dword [ebp + 0x1c], 0
je near loc_0001ad8e  ; je 0x1ad8e
cmp dword [ebp - 0x1c], 0
jne short loc_0001ad1b  ; jne 0x1ad1b
sub esp, 0xc
push esi
call fcn_00018ee1  ; call 0x18ee1
mov byte [ebx], al
jmp short loc_0001ad77  ; jmp 0x1ad77

loc_0001ad1b:
cmp dword [ebp - 0x1c], 1
jne short loc_0001ad4c  ; jne 0x1ad4c
cmp byte [ebp - 0x1d], 0
je short loc_0001ad35  ; je 0x1ad35
sub esp, 0xc
push esi
call fcn_00018ef6  ; call 0x18ef6
mov word [ebx], ax
jmp short loc_0001ad77  ; jmp 0x1ad77

loc_0001ad35:
sub esp, 0xc
push esi
call fcn_00018ef6  ; call 0x18ef6
pop edx
pop ecx
movzx eax, ax
push eax
push ebx
call fcn_000172cb  ; call 0x172cb
jmp short loc_0001ad77  ; jmp 0x1ad77

loc_0001ad4c:
cmp dword [ebp - 0x1c], 2
jne short loc_0001ad7a  ; jne 0x1ad7a
cmp byte [ebp - 0x1d], 0
je short loc_0001ad65  ; je 0x1ad65
sub esp, 0xc
push esi
call fcn_00018f64  ; call 0x18f64
mov dword [ebx], eax
jmp short loc_0001ad77  ; jmp 0x1ad77

loc_0001ad65:
sub esp, 0xc
push esi
call fcn_00018f64  ; call 0x18f64
pop edx
pop ecx
push eax
push ebx
call fcn_000173b2  ; call 0x173b2

loc_0001ad77:
add esp, 0x10

loc_0001ad7a:
movzx eax, byte [ebp - 0x1e]
add esi, dword [ebp - 0x28]
adc edi, dword [ebp - 0x24]
dec dword [ebp + 0x1c]
add ebx, eax
jmp near loc_0001acfe  ; jmp 0x1acfe

loc_0001ad8e:
xor eax, eax

loc_0001ad90:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001ad98:
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
call fcn_0001a9a3  ; call 0x1a9a3
add esp, 0x20
test eax, eax
js near loc_0001ae7a  ; js 0x1ae7a
mov edx, dword [ebp - 0x1c]
mov dword [ebp - 0x24], 0
mov al, byte [edx + ref_000295ec]  ; mov al, byte [edx + 0x295ec]
mov byte [ebp - 0x1e], al
mov eax, edx
and eax, 3
mov dword [ebp - 0x1c], eax
movzx eax, byte [eax + ref_000295f8]  ; movzx eax, byte [eax + 0x295f8]
dec eax
test ebx, eax
movzx eax, byte [edx + ref_000295f8]  ; movzx eax, byte [edx + 0x295f8]
sete byte [ebp - 0x1d]
mov dword [ebp - 0x28], eax

loc_0001adfc:
cmp dword [ebp + 0x1c], 0
je short loc_0001ae78  ; je 0x1ae78
cmp dword [ebp - 0x1c], 0
jne short loc_0001ae16  ; jne 0x1ae16
push eax
push eax
movzx eax, byte [ebx]
push eax
push esi
call fcn_00018eea  ; call 0x18eea
jmp short loc_0001ae64  ; jmp 0x1ae64

loc_0001ae16:
cmp dword [ebp - 0x1c], 1
jne short loc_0001ae40  ; jne 0x1ae40
cmp byte [ebp - 0x1d], 0
je short loc_0001ae29  ; je 0x1ae29
push eax
push eax
movzx eax, word [ebx]
jmp short loc_0001ae37  ; jmp 0x1ae37

loc_0001ae29:
sub esp, 0xc
push ebx
call fcn_00017299  ; call 0x17299
pop edx
pop ecx
movzx eax, ax

loc_0001ae37:
push eax
push esi
call fcn_00018f27  ; call 0x18f27
jmp short loc_0001ae64  ; jmp 0x1ae64

loc_0001ae40:
cmp dword [ebp - 0x1c], 2
jne short loc_0001ae67  ; jne 0x1ae67
cmp byte [ebp - 0x1d], 0
je short loc_0001ae52  ; je 0x1ae52
push eax
push eax
push dword [ebx]
jmp short loc_0001ae5e  ; jmp 0x1ae5e

loc_0001ae52:
sub esp, 0xc
push ebx
call fcn_0001737e  ; call 0x1737e
pop edx
pop ecx
push eax

loc_0001ae5e:
push esi
call fcn_00018f97  ; call 0x18f97

loc_0001ae64:
add esp, 0x10

loc_0001ae67:
movzx eax, byte [ebp - 0x1e]
add esi, dword [ebp - 0x28]
adc edi, dword [ebp - 0x24]
dec dword [ebp + 0x1c]
add ebx, eax
jmp short loc_0001adfc  ; jmp 0x1adfc

loc_0001ae78:
xor eax, eax

loc_0001ae7a:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001ae82:
push ebp
mov ebp, esp
push ebx
sub esp, 0x10
push dword [ebp + 8]
call fcn_000198e8  ; call 0x198e8
mov edx, dword [ebp + 0xc]
add esp, 0x10
mov edx, dword [edx]
mov dword [edx + 0x60], ref_00029610  ; mov dword [edx + 0x60], 0x29610
cmp eax, 0x80000014
jne short loc_0001aec4  ; jne 0x1aec4
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001af18  ; je 0x1af18
push ecx
push ref_00029610  ; push 0x29610
push ref_0002620e  ; push 0x2620e
push 0x40
call fcn_00015487  ; call 0x15487
jmp short loc_0001af15  ; jmp 0x1af15

loc_0001aec4:
sub esp, 0xc
push ref_00029604  ; push 0x29604
call fcn_0001972b  ; call 0x1972b
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0001af18  ; je 0x1af18
test ebx, ebx
jns short loc_0001af18  ; jns 0x1af18
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001af00  ; je 0x1af00
push edx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001af00:
push eax
push ref_000206f4  ; push 0x206f4
push 0x35c
push ref_0002624c  ; push 0x2624c
call fcn_0001548c  ; call 0x1548c

loc_0001af15:
add esp, 0x10

loc_0001af18:
xor eax, eax
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001af1f:
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
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001af62  ; je 0x1af62
mov eax, dword [ebp - 0x28]
sub esp, 0xc
push dword [ebp + 0x14]
and eax, 0x7f
push ebx
add eax, eax
push eax
push ref_0002627d  ; push 0x2627d
push 0x80000
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_0001af62:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001af8b  ; je 0x1af8b
cmp dword [esi - 0x18], 0x626d7370
je short loc_0001af8b  ; je 0x1af8b
push ecx
push ref_000262c8  ; push 0x262c8
push 0x43
push ref_000262dd  ; push 0x262dd
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
jmp short loc_0001af8e  ; jmp 0x1af8e

loc_0001af8b:
sub esi, 0x18

loc_0001af8e:
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
call fcn_0001b3e8  ; call 0x1b3e8
add esp, 0x14
push esi
mov ebx, eax
call fcn_0001b2c0  ; call 0x1b2c0
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_0001afd4  ; je 0x1afd4
push eax
push eax
push ref_00026307  ; push 0x26307
push 0x80000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001afd4:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001afde:
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
push ref_000291dc  ; push 0x291dc
call fcn_0001975d  ; call 0x1975d
mov esi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0001b04e  ; je 0x1b04e
test esi, esi
jns short loc_0001b04e  ; jns 0x1b04e
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001b036  ; je 0x1b036
push edx
push esi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001b036:
push eax
push ref_000206f4  ; push 0x206f4
push 0xee
push ref_000262dd  ; push 0x262dd
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001b04e:
mov eax, dword [ebp - 0xc]
movzx edx, word [eax + 0x388]
add eax, 0x38e
mov dword [ebx + 8], edx
mov dl, byte [eax - 1]
mov dword [ebx + 0xce], eax
lea eax, [ebx + 0x18]
mov dword [ebx + 0xc], 0x80000010
mov dword [ebx + 0x10], ref_000290bc  ; mov dword [ebx + 0x10], 0x290bc
mov byte [ebx + 0xcd], dl
mov dword [ebx + 0x14], eax
mov dword [ebx + 0x18], fcn_0001af1f  ; mov dword [ebx + 0x18], 0x1af1f
mov dword [ebx + 0x1c], fcn_0001b2a2  ; mov dword [ebx + 0x1c], 0x1b2a2
mov dword [ebx + 0x20], fcn_0001b2ac  ; mov dword [ebx + 0x20], 0x1b2ac
mov dword [ebx + 0x24], fcn_0001b2b6  ; mov dword [ebx + 0x24], 0x1b2b6
mov dword [ebx + 0x38], 0x80000020
mov dword [ebx + 0x3c], ref_0002909c  ; mov dword [ebx + 0x3c], 0x2909c
mov dword [ebx + 0x40], fcn_0001b259  ; mov dword [ebx + 0x40], 0x1b259
mov byte [ebx + 0x44], 0
mov byte [ebx + 0xd2], 0
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0001b0c6:
push ebp
mov ebp, esp
push esi
push ebx
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001b0e5  ; je 0x1b0e5
push eax
push eax
push ref_0002631f  ; push 0x2631f
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001b0e5:
sub esp, 0xc
push 0x11b
call fcn_00019d3d  ; call 0x19d3d
add esp, 0x10
mov ebx, eax
test eax, eax
jne short loc_0001b11e  ; jne 0x1b11e
call fcn_00015479  ; call 0x15479
mov ebx, 0x80000009
test al, al
je near loc_0001b250  ; je 0x1b250
push eax
push eax
push ref_0002633f  ; push 0x2633f
push 0x80000000
jmp near loc_0001b248  ; jmp 0x1b248

loc_0001b11e:
push eax
push eax
push ebx
push dword [ebp + 0xc]
call fcn_0001afde  ; call 0x1afde
add esp, 0xc
push 3
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
add esp, 0xc
push dword [ebx + 8]
push 0xffe0
mov esi, eax
lea eax, [eax + 0x20]
push eax
call fcn_00018b68  ; call 0x18b68
pop eax
pop edx
lea eax, [esi + 4]
add esi, 0x40
push 1
push eax
call fcn_00018730  ; call 0x18730
pop ecx
pop eax
push 0x10
push esi
call fcn_00018730  ; call 0x18730
pop eax
pop edx
push 8
push esi
call fcn_00018730  ; call 0x18730
add esp, 0xc
push 1
push 0xf9
push esi
call fcn_0001878a  ; call 0x1878a
pop ecx
pop esi
push 0xff
push 0
call fcn_0001b33b  ; call 0x1b33b
lea eax, [ebx + 0xc]
mov dword [esp], eax
call fcn_0001972b  ; call 0x1972b
mov esi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0001b1e1  ; je 0x1b1e1
test esi, esi
jns short loc_0001b1e1  ; jns 0x1b1e1
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001b1c9  ; je 0x1b1c9
push eax
push esi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001b1c9:
push esi
push ref_000206f4  ; push 0x206f4
push 0xc4
push ref_000262dd  ; push 0x262dd
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001b1e1:
sub esp, 0xc
add ebx, 0x38
push ebx
call fcn_0001977f  ; call 0x1977f
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0001b234  ; je 0x1b234
test ebx, ebx
jns short loc_0001b234  ; jns 0x1b234
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001b21c  ; je 0x1b21c
push ecx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001b21c:
push edx
push ref_000206f4  ; push 0x206f4
push 0xca
push ref_000262dd  ; push 0x262dd
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001b234:
call fcn_00015479  ; call 0x15479
xor ebx, ebx
test al, al
je short loc_0001b250  ; je 0x1b250
push eax
push eax
push ref_00026368  ; push 0x26368
push 0x40

loc_0001b248:
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001b250:
lea esp, [ebp - 8]
mov eax, ebx
pop ebx
pop esi
pop ebp
ret

fcn_0001b259:
push ebp
mov ebp, esp
push ebx
push ecx
mov ebx, dword [ebp + 0xc]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001b28d  ; je 0x1b28d
cmp dword [ebx - 0x38], 0x626d7370
je short loc_0001b28d  ; je 0x1b28d
push edx
push ref_000262c8  ; push 0x262c8
push 0x120
push ref_000262dd  ; push 0x262dd
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
jmp short loc_0001b290  ; jmp 0x1b290

loc_0001b28d:
sub ebx, 0x38

loc_0001b290:
push eax
push eax
push ebx
push dword [ebp + 8]
call fcn_0001afde  ; call 0x1afde
xor eax, eax
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001b2a2:
push ebp
mov eax, 0x80000003
mov ebp, esp
pop ebp
ret

fcn_0001b2ac:
push ebp
mov eax, 0x80000003
mov ebp, esp
pop ebp
ret

fcn_0001b2b6:
push ebp
mov eax, 0x80000003
mov ebp, esp
pop ebp
ret

fcn_0001b2c0:
push ebp
mov ebp, esp
pop ebp
ret

fcn_0001b2c5:
push ebp
mov ebp, esp
push ebx
sub esp, 8
push 3
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0x20
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
mov ebx, eax
call fcn_00015480  ; call 0x15480
and ebx, 0xffe0
add esp, 0x10
test al, al
je short loc_0001b317  ; je 0x1b317
test ebx, ebx
je short loc_0001b302  ; je 0x1b302
cmp ebx, 0xffe0
jne short loc_0001b317  ; jne 0x1b317

loc_0001b302:
push eax
push ref_00026386  ; push 0x26386
push 0x2c
push ref_000263b4  ; push 0x263b4
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001b317:
mov eax, ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001b31e:
push ebp
mov ebp, esp
push ebx
push eax
mov ebx, dword [ebp + 8]
call fcn_0001b2c5  ; call 0x1b2c5
movzx ebx, bl
add eax, ebx
mov dword [ebp + 8], eax
pop edx
pop ebx
pop ebp
jmp near fcn_00018ee1  ; jmp 0x18ee1

fcn_0001b33b:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 8]
call fcn_0001b2c5  ; call 0x1b2c5
mov edx, esi
movzx ebx, bl
movzx esi, dl
mov dword [ebp + 0xc], esi
add eax, ebx
mov dword [ebp + 8], eax
pop ebx
pop esi
pop ebp
jmp near fcn_00018eea  ; jmp 0x18eea

fcn_0001b363:
push ebp
mov ebp, esp
push ebx
mov ebx, 0x186a0
push eax

loc_0001b36d:
sub esp, 0xc
push 0
call fcn_0001b31e  ; call 0x1b31e
mov edx, dword [ebp + 8]
add esp, 0x10
mov byte [edx], al
test al, 0x8e
jne short loc_0001b397  ; jne 0x1b397
sub esp, 0xc
push 0xa
call fcn_0001bb03  ; call 0x1bb03
add esp, 0x10
dec ebx
jne short loc_0001b36d  ; jne 0x1b36d
xor eax, eax
jmp short loc_0001b399  ; jmp 0x1b399

loc_0001b397:
mov al, 1

loc_0001b399:
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001b39e:
push ebp
mov ebp, esp
push ebx
mov ebx, 0x80000012
sub esp, 0x10
push 0
call fcn_0001b31e  ; call 0x1b31e
add esp, 0x10
test al, 0x40
jne short loc_0001b3e1  ; jne 0x1b3e1
test al, 1
je short loc_0001b3cf  ; je 0x1b3cf
push ecx
push ecx
push 0xff
push 0
call fcn_0001b33b  ; call 0x1b33b
add esp, 0x10
jmp short loc_0001b3e1  ; jmp 0x1b3e1

loc_0001b3cf:
push edx
movzx eax, al
push edx
xor ebx, ebx
push eax
push 0
call fcn_0001b33b  ; call 0x1b33b
add esp, 0x10

loc_0001b3e1:
mov eax, ebx
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001b3e8:
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
jbe short loc_0001b412  ; jbe 0x1b412
cmp dword [ebp + 0x1c], 0
je near loc_0001b914  ; je 0x1b914
test edi, edi
je near loc_0001b914  ; je 0x1b914

loc_0001b412:
call fcn_0001b39e  ; call 0x1b39e
test eax, eax
js near loc_0001b919  ; js 0x1b919
mov al, byte [ebp + 8]
mov dword [ebp - 0x34], 3
mov byte [ebp - 0x2d], 0
lea eax, [eax + eax + 1]
mov byte [ebp - 0x2e], al

loc_0001b434:
mov al, byte [ebp - 0x2e]
cmp dword [ebp + 0x10], 0xb
mov byte [ebp - 0x2c], al
mov al, byte [ebp + 0xc]
mov byte [ebp - 0x30], al
ja near loc_0001b5e9  ; ja 0x1b5e9
mov eax, dword [ebp + 0x10]
jmp dword [eax*4 + ref_000205a0]  ; ujmp: jmp dword [eax*4 + 0x205a0]

loc_0001b454:
mov al, byte [ebp - 0x2e]
dec eax
mov byte [ebp - 0x2c], al

loc_0001b45b:
cmp byte [ebp - 0x2f], 1
je near loc_0001b5d9  ; je 0x1b5d9
xor esi, esi
jmp near loc_0001b5d5  ; jmp 0x1b5d5

loc_0001b46c:
mov eax, dword [ebp + 0x1c]
mov al, byte [eax]
mov byte [ebp - 0x30], al
mov al, byte [ebp - 0x2e]
dec eax
mov byte [ebp - 0x2c], al

loc_0001b47b:
cmp dword [edi], 1
mov esi, 4
mov dword [edi], 1
sbb ebx, ebx
and ebx, 0x80000005
jmp near loc_0001b597  ; jmp 0x1b597

loc_0001b496:
mov eax, dword [ebp + 0x1c]
push ecx
push ecx
movzx eax, byte [eax]
push eax
push 5
call fcn_0001b33b  ; call 0x1b33b
mov al, byte [ebp - 0x2e]
add esp, 0x10
mov dword [edi], 1
dec eax
mov byte [ebp - 0x2c], al

loc_0001b4b6:
mov eax, dword [edi]
test eax, eax
je near loc_0001b5c6  ; je 0x1b5c6
cmp eax, 1
je near loc_0001b5d0  ; je 0x1b5d0
cmp eax, 0x100
ja near loc_0001b5e9  ; ja 0x1b5e9
cmp byte [ebp - 0x2f], 1
je near loc_0001b5d9  ; je 0x1b5d9
mov esi, 0x18
jmp near loc_0001b5d5  ; jmp 0x1b5d5

loc_0001b4e8:
mov al, byte [ebp - 0x2e]
dec eax
mov byte [ebp - 0x2c], al
push eax
push eax
mov eax, dword [ebp + 0x1c]
movzx eax, byte [eax + 1]
push eax
push 6
call fcn_0001b33b  ; call 0x1b33b
pop eax
mov eax, dword [ebp + 0x1c]
pop edx
movzx eax, byte [eax]
push eax
push 5
call fcn_0001b33b  ; call 0x1b33b
add esp, 0x10

loc_0001b513:
cmp dword [edi], 2
mov esi, 0xc
mov dword [edi], 2
sbb ebx, ebx
and ebx, 0x80000005
jmp short loc_0001b597  ; jmp 0x1b597

loc_0001b52b:
push eax
push eax
movzx eax, byte [edi]
push eax
push 5
call fcn_0001b33b  ; call 0x1b33b
mov al, byte [ebp - 0x2e]
add esp, 0x10
dec eax
mov byte [ebp - 0x2c], al
mov al, byte [edi]
mov byte [ebp - 0x2d], al

loc_0001b547:
mov eax, dword [edi]
dec eax
cmp eax, 0x1f
ja near loc_0001b5e9  ; ja 0x1b5e9
mov esi, 0x14
jmp near loc_0001b5e3  ; jmp 0x1b5e3

loc_0001b55d:
mov eax, dword [ebp + 0x1c]
push ebx
push ebx
movzx eax, byte [eax + 1]
push eax
push 6
call fcn_0001b33b  ; call 0x1b33b
pop esi
mov esi, 0x10
pop eax
mov eax, dword [ebp + 0x1c]
movzx eax, byte [eax]
push eax
push 5
call fcn_0001b33b  ; call 0x1b33b
add esp, 0x10
cmp dword [edi], 2
mov dword [edi], 2
sbb ebx, ebx
and ebx, 0x80000005

loc_0001b597:
xor eax, eax
test ebx, ebx
jns short loc_0001b5f3  ; jns 0x1b5f3
jmp near loc_0001b8e9  ; jmp 0x1b8e9

loc_0001b5a2:
mov eax, dword [edi]
dec eax
cmp eax, 0x1f
ja short loc_0001b5e9  ; ja 0x1b5e9
push ecx
mov esi, 0x1c
push ecx
movzx eax, byte [edi]
push eax
push 5
call fcn_0001b33b  ; call 0x1b33b
mov al, byte [edi]
add esp, 0x10
mov byte [ebp - 0x2d], al
jmp short loc_0001b5e3  ; jmp 0x1b5e3

loc_0001b5c6:
mov ebx, 0x80000005
jmp near loc_0001b8e9  ; jmp 0x1b8e9

loc_0001b5d0:
mov esi, 8

loc_0001b5d5:
xor eax, eax
jmp short loc_0001b5e5  ; jmp 0x1b5e5

loc_0001b5d9:
mov ebx, 0x80000003
jmp near loc_0001b8e9  ; jmp 0x1b8e9

loc_0001b5e3:
mov al, 2

loc_0001b5e5:
xor ebx, ebx
jmp short loc_0001b5f3  ; jmp 0x1b5f3

loc_0001b5e9:
mov ebx, 0x80000002
jmp near loc_0001b8e9  ; jmp 0x1b8e9

loc_0001b5f3:
mov dl, al
or edx, 1
cmp byte [ebp - 0x2f], 1
cmove eax, edx
push edx
movzx eax, al
push edx
push eax
push 0xd
call fcn_0001b33b  ; call 0x1b33b
mov dword [esp], 2
call fcn_0001b31e  ; call 0x1b31e
mov eax, dword [ebp + 0x10]
add esp, 0x10
and eax, 0xfffffffd
cmp eax, 9
je short loc_0001b643  ; je 0x1b643

loc_0001b626:
movzx eax, byte [ebp - 0x2c]
push ecx
push ecx
push eax
push 4
call fcn_0001b33b  ; call 0x1b33b
add esp, 0x10
movzx eax, byte [ebp - 0x30]
cmp dword [ebp + 0x10], 4
jne short loc_0001b67a  ; jne 0x1b67a
jmp short loc_0001b66e  ; jmp 0x1b66e

loc_0001b643:
movzx ecx, byte [ebp - 0x2d]
xor eax, eax
mov dword [ebp - 0x38], ecx

loc_0001b64c:
cmp eax, dword [ebp - 0x38]
jae short loc_0001b626  ; jae 0x1b626
mov ecx, dword [ebp + 0x1c]
push edx
push edx
movzx edx, byte [ecx + eax]
mov dword [ebp - 0x3c], eax
push edx
push 7
call fcn_0001b33b  ; call 0x1b33b
mov eax, dword [ebp - 0x3c]
add esp, 0x10
inc eax
jmp short loc_0001b64c  ; jmp 0x1b64c

loc_0001b66e:
cmp dword [edi], 1
jbe short loc_0001b67a  ; jbe 0x1b67a
push ecx
push ecx
push eax
push 6
jmp short loc_0001b67f  ; jmp 0x1b67f

loc_0001b67a:
push edx
push edx
push eax
push 3

loc_0001b67f:
call fcn_0001b33b  ; call 0x1b33b
add esp, 0x10
lea eax, [esi + 0x40]
movzx esi, al
push ecx
push ecx
push esi
push 2
call fcn_0001b33b  ; call 0x1b33b
lea eax, [ebp - 0x19]
mov dword [esp], eax
call fcn_0001b363  ; call 0x1b363
add esp, 0x10
test al, al
je near loc_0001b8e4  ; je 0x1b8e4
mov al, byte [ebp - 0x19]
test al, 4
je short loc_0001b6d6  ; je 0x1b6d6
sub esp, 0xc
push 0xc
call fcn_0001b31e  ; call 0x1b31e
add esp, 0x10
and eax, 1
cmp al, 1
sbb ebx, ebx
and ebx, 0xffffffec
sub ebx, 0x7fffffe5
jmp near loc_0001b8e9  ; jmp 0x1b8e9

loc_0001b6d6:
test al, 8
je short loc_0001b6fe  ; je 0x1b6fe
push ebx
push ebx
push 8
push 0
call fcn_0001b33b  ; call 0x1b33b
pop esi
pop eax
push 0xff
push 0
call fcn_0001b33b  ; call 0x1b33b
pop eax
pop edx
push 1
push 0xc
jmp near loc_0001b8c0  ; jmp 0x1b8c0

loc_0001b6fe:
mov eax, dword [ebp + 0x10]
sub eax, 2
cmp eax, 9
ja near loc_0001b8ac  ; ja 0x1b8ac
jmp dword [eax*4 + ref_000205d0]  ; ujmp: jmp dword [eax*4 + 0x205d0]

loc_0001b714:
sub esp, 0xc
push 6
call fcn_0001b31e  ; call 0x1b31e
mov ecx, dword [ebp + 0x1c]
mov byte [ecx + 1], al
mov dword [esp], 5
jmp near loc_0001b7eb  ; jmp 0x1b7eb

loc_0001b730:
cmp dword [edi], 1
jbe near loc_0001b7e6  ; jbe 0x1b7e6
xor esi, esi

loc_0001b73b:
cmp esi, dword [edi]
jae near loc_0001b8ac  ; jae 0x1b8ac
sub esp, 0xc
push 7
call fcn_0001b31e  ; call 0x1b31e
mov ecx, dword [ebp + 0x1c]
add esp, 0x10
mov byte [ecx + esi], al
mov eax, dword [edi]
lea edx, [eax - 2]
cmp esi, edx
jne short loc_0001b773  ; jne 0x1b773
sub esp, 0xc
push 2
call fcn_0001b31e  ; call 0x1b31e
pop edx
pop ecx
or eax, 0x20
movzx eax, al
jmp short loc_0001b789  ; jmp 0x1b789

loc_0001b773:
dec eax
cmp esi, eax
jne short loc_0001b794  ; jne 0x1b794
sub esp, 0xc
push 2
call fcn_0001b31e  ; call 0x1b31e
pop edx
pop ecx
and eax, 0xdf

loc_0001b789:
push eax
push 2
call fcn_0001b33b  ; call 0x1b33b
add esp, 0x10

loc_0001b794:
push eax
push eax
push 0x80
push 0
call fcn_0001b33b  ; call 0x1b33b
mov eax, dword [edi]
add esp, 0x10
dec eax
cmp esi, eax
jae short loc_0001b7e0  ; jae 0x1b7e0
mov dword [ebp - 0x2c], 0x64

loc_0001b7b3:
sub esp, 0xc
push 0
call fcn_0001b31e  ; call 0x1b31e
add esp, 0x10
test al, al
js short loc_0001b7e0  ; js 0x1b7e0
sub esp, 0xc
push 0xa
call fcn_0001bb03  ; call 0x1bb03
add esp, 0x10
dec dword [ebp - 0x2c]
jne short loc_0001b7b3  ; jne 0x1b7b3
mov ebx, 0x80000012
jmp near loc_0001b8ac  ; jmp 0x1b8ac

loc_0001b7e0:
inc esi
jmp near loc_0001b73b  ; jmp 0x1b73b

loc_0001b7e6:
sub esp, 0xc
push 5

loc_0001b7eb:
call fcn_0001b31e  ; call 0x1b31e
mov ecx, dword [ebp + 0x1c]
mov byte [ecx], al
jmp short loc_0001b805  ; jmp 0x1b805

loc_0001b7f7:
push eax
push eax
push 0x80
push 0
call fcn_0001b33b  ; call 0x1b33b

loc_0001b805:
add esp, 0x10
jmp near loc_0001b8ac  ; jmp 0x1b8ac

loc_0001b80d:
sub esp, 0xc
xor esi, esi
push 5
call fcn_0001b31e  ; call 0x1b31e
add esp, 0x10
mov byte [ebp - 0x2d], al
movzx edx, al
mov al, 1
cmp dword [edi], edx
jb short loc_0001b84a  ; jb 0x1b84a

loc_0001b828:
cmp esi, edx
jae short loc_0001b848  ; jae 0x1b848
sub esp, 0xc
push 7
mov dword [ebp - 0x2c], edx
call fcn_0001b31e  ; call 0x1b31e
mov ecx, dword [ebp + 0x1c]
add esp, 0x10
mov edx, dword [ebp - 0x2c]
mov byte [ecx + esi], al
inc esi
jmp short loc_0001b828  ; jmp 0x1b828

loc_0001b848:
xor eax, eax

loc_0001b84a:
test al, al
mov eax, 0x80000005
mov dword [edi], edx
cmovne ebx, eax
jmp short loc_0001b8ac  ; jmp 0x1b8ac

loc_0001b858:
sub esp, 0xc
push 5
call fcn_0001b31e  ; call 0x1b31e
add esp, 0x10
mov byte [ebp - 0x2d], al
test al, al
je short loc_0001b8a0  ; je 0x1b8a0
movzx eax, byte [edi]
xor esi, esi
movzx edx, byte [ebp - 0x2d]
add eax, edx
cmp eax, 0x20
jg short loc_0001b8a7  ; jg 0x1b8a7

loc_0001b87c:
cmp esi, edx
jae short loc_0001b89c  ; jae 0x1b89c
sub esp, 0xc
push 7
mov dword [ebp - 0x2c], edx
call fcn_0001b31e  ; call 0x1b31e
mov ecx, dword [ebp + 0x1c]
add esp, 0x10
mov edx, dword [ebp - 0x2c]
mov byte [ecx + esi], al
inc esi
jmp short loc_0001b87c  ; jmp 0x1b87c

loc_0001b89c:
mov dword [edi], edx
jmp short loc_0001b8ac  ; jmp 0x1b8ac

loc_0001b8a0:
mov ebx, 0x80000005
jmp short loc_0001b8ac  ; jmp 0x1b8ac

loc_0001b8a7:
mov ebx, 0x80000007

loc_0001b8ac:
test byte [ebp - 0x19], 8
je short loc_0001b8e9  ; je 0x1b8e9
cmp ebx, 0x80000005
je short loc_0001b8e9  ; je 0x1b8e9
push eax
push eax
push 8
push 0

loc_0001b8c0:
call fcn_0001b33b  ; call 0x1b33b
mov dword [esp], 0xa
call fcn_0001bb03  ; call 0x1bb03
add esp, 0x10
dec dword [ebp - 0x34]
jne near loc_0001b434  ; jne 0x1b434
mov ebx, 0x80000007
jmp short loc_0001b8e9  ; jmp 0x1b8e9

loc_0001b8e4:
mov ebx, 0x80000012

loc_0001b8e9:
push eax
push eax
push 0xff
push 0
call fcn_0001b33b  ; call 0x1b33b
pop edx
pop ecx
push 1
push 0xc
call fcn_0001b33b  ; call 0x1b33b
pop esi
pop edi
push 0
push 0xd
call fcn_0001b33b  ; call 0x1b33b
add esp, 0x10
mov eax, ebx
jmp short loc_0001b919  ; jmp 0x1b919

loc_0001b914:
mov eax, 0x80000002

loc_0001b919:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001b921:
push ebp
mov ebp, esp
push ebx
sub esp, 8
push 3
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
pop edx
pop ecx
push 1
mov ebx, eax
lea eax, [eax + 4]
add ebx, 0x40
push eax
call fcn_00018730  ; call 0x18730
add esp, 0xc
push 1
push 0xf9
push ebx
call fcn_0001878a  ; call 0x1878a
pop ebx
pop eax
push 0xff
push 0
call fcn_0001b33b  ; call 0x1b33b
add esp, 0x10
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001b96b:
push ebp
mov ebp, esp
push esi
push ebx
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001b98a  ; je 0x1b98a
push ebx
push ebx
push ref_000263e0  ; push 0x263e0
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001b98a:
sub esp, 0xc
mov esi, 0x80000009
push 0x20
call fcn_00019db6  ; call 0x19db6
add esp, 0x10
mov ebx, eax
test eax, eax
je near loc_0001ba2d  ; je 0x1ba2d
sub esp, 0xc
lea eax, [eax + 0xc]
push eax
call fcn_0001ff91  ; call 0x1ff91
lea eax, [ebx + 0x14]
mov dword [ebx], 0x80000010
mov dword [ebx + 4], ref_0002913c  ; mov dword [ebx + 4], 0x2913c
mov dword [ebx + 8], eax
mov dword [esp], ebx
call fcn_0001972b  ; call 0x1972b
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0001ba11  ; je 0x1ba11
test ebx, ebx
jns short loc_0001ba11  ; jns 0x1ba11
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001b9fc  ; je 0x1b9fc
push ecx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001b9fc:
push edx
push ref_000206f4  ; push 0x206f4
push 0x4c
push ref_000263f9  ; push 0x263f9
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001ba11:
call fcn_00015479  ; call 0x15479
mov esi, ebx
test al, al
je short loc_0001ba2d  ; je 0x1ba2d
push eax
push eax
push ref_0002641e  ; push 0x2641e
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001ba2d:
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_0001ba36:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov eax, dword [ebp + 8]
sub eax, 4
cmp eax, 1
ja short loc_0001ba89  ; ja 0x1ba89
push 0
push 0
push 0
push ref_0002909c  ; push 0x2909c
call fcn_0001975d  ; call 0x1975d
add esp, 0x10
test eax, eax
jne short loc_0001ba89  ; jne 0x1ba89
call fcn_00015479  ; call 0x15479
mov ebx, 0x80000003
test al, al
je near loc_0001baf9  ; je 0x1baf9
push ecx
push ecx
push ref_00026435  ; push 0x26435
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp short loc_0001baf9  ; jmp 0x1baf9

loc_0001ba89:
xor ebx, ebx
lea edi, [ebp - 0x1c]

loc_0001ba8e:
push edi
push 0
push ebx
push ref_0002915c  ; push 0x2915c
call fcn_0001975d  ; call 0x1975d
add esp, 0x10
mov esi, eax
test eax, eax
jne short loc_0001bab2  ; jne 0x1bab2
mov eax, dword [ebp - 0x1c]
sub esp, 0xc
push dword [ebp + 8]
call dword [eax]  ; ucall
jmp short loc_0001baeb  ; jmp 0x1baeb

loc_0001bab2:
cmp eax, 0x8000000e
jne short loc_0001bad4  ; jne 0x1bad4
test ebx, ebx
jne short loc_0001bad4  ; jne 0x1bad4
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001baee  ; je 0x1baee
push edx
push edx
push ref_0002645f  ; push 0x2645f
push 0x80000040
jmp short loc_0001bae6  ; jmp 0x1bae6

loc_0001bad4:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001baee  ; je 0x1baee
push eax
push eax
push ref_0002648a  ; push 0x2648a
push 0x40

loc_0001bae6:
call fcn_00015487  ; call 0x15487

loc_0001baeb:
add esp, 0x10

loc_0001baee:
inc ebx
cmp esi, 0x8000000e
jne short loc_0001ba8e  ; jne 0x1ba8e
xor ebx, ebx

loc_0001baf9:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001bb03:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov edi, dword [ebp + 8]
test edi, edi
je near loc_0001bba1  ; je 0x1bba1
push eax
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0x40
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
mov esi, eax
and esi, 0xfffc
add esi, 8
mov dword [esp], esi
call fcn_00018f64  ; call 0x18f64
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

loc_0001bb6a:
test ecx, ecx
setne dl
cmp edi, ebx
jbe short loc_0001bb9d  ; jbe 0x1bb9d

loc_0001bb73:
sub esp, 0xc
push esi
mov dword [ebp - 0x20], edx
mov dword [ebp - 0x1c], ecx
call fcn_00018f64  ; call 0x18f64
add esp, 0x10
mov ecx, dword [ebp - 0x1c]
mov edx, dword [ebp - 0x20]
and eax, 0xffffff
cmp eax, ebx
jae short loc_0001bb99  ; jae 0x1bb99
test dl, dl
je short loc_0001bba1  ; je 0x1bba1
dec ecx

loc_0001bb99:
mov ebx, eax
jmp short loc_0001bb6a  ; jmp 0x1bb6a

loc_0001bb9d:
test dl, dl
jne short loc_0001bb73  ; jne 0x1bb73

loc_0001bba1:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001bba9:
push ebp
mov ebp, esp
push ebx
sub esp, 0x10
mov ebx, dword [ebp + 8]
lea eax, [ebx + 0x3804]
push eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
xor edx, edx
test ah, 0x40
je short loc_0001bbf6  ; je 0x1bbf6
push eax
push 0
push 0xffff8003
lea eax, [ebx + 0x38b0]
add ebx, 0x38b4
push eax
call fcn_00018b68  ; call 0x18b68
mov dword [esp], ebx
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
cmp eax, 0xff0a55a
sete dl

loc_0001bbf6:
mov al, dl
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001bbfd:
push ebp
mov ebp, esp
push ebx
sub esp, 0x18
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
mov ebx, eax
lea eax, [eax + 8]
add ebx, 2
mov dword [esp], eax
call fcn_00017d8b  ; call 0x17d8b
mov dword [esp], ebx
mov dl, al
mov dword [ebp - 0xc], edx
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
mov edx, dword [ebp - 0xc]
mov ecx, eax
and ecx, 0xfffffffd
cmp cx, 0x8c44
je short loc_0001bc80  ; je 0x1bc80
lea ecx, [eax + 0x73b2]
cmp cx, 2
jbe short loc_0001bc80  ; jbe 0x1bc80
lea ecx, [eax + 0x73b7]
cmp cx, 3
jbe short loc_0001bc80  ; jbe 0x1bc80
lea ecx, [eax + 0x73bf]
cmp cx, 1
jbe short loc_0001bc80  ; jbe 0x1bc80
cmp ax, 0x8c58
je short loc_0001bc80  ; je 0x1bc80
mov ecx, eax
and ecx, 0xfffffffb
cmp cx, 0x8c52
je short loc_0001bc80  ; je 0x1bc80
mov ecx, eax
and ecx, 0xfffffff7
cmp cx, 0x8c54
jne short loc_0001bca7  ; jne 0x1bca7

loc_0001bc80:
cmp dl, 4
je near loc_0001bd5d  ; je 0x1bd5d
cmp dl, 5
je short loc_0001bc9d  ; je 0x1bc9d
mov eax, 1
cmp dl, 3
jne short loc_0001bcc0  ; jne 0x1bcc0
jmp near loc_0001bd70  ; jmp 0x1bd70

loc_0001bc9d:
mov eax, 3
jmp near loc_0001bd70  ; jmp 0x1bd70

loc_0001bca7:
lea ecx, [eax + 0x733f]
cmp cx, 5
ja short loc_0001bcd5  ; ja 0x1bcd5
mov eax, 0x10
test dl, dl
je near loc_0001bd70  ; je 0x1bd70

loc_0001bcc0:
call fcn_00015479  ; call 0x15479
test al, al
je near loc_0001bd56  ; je 0x1bd56
push ecx
push ref_000264b4  ; push 0x264b4
jmp short loc_0001bd44  ; jmp 0x1bd44

loc_0001bcd5:
lea ecx, [eax + 0x63bf]
cmp cx, 6
ja short loc_0001bd0f  ; ja 0x1bd0f
cmp dl, 3
je short loc_0001bd64  ; je 0x1bd64
cmp dl, 4
je short loc_0001bcf7  ; je 0x1bcf7
mov eax, 0x20
cmp dl, 2
jne short loc_0001bcfe  ; jne 0x1bcfe
jmp short loc_0001bd70  ; jmp 0x1bd70

loc_0001bcf7:
mov eax, 0x22
jmp short loc_0001bd70  ; jmp 0x1bd70

loc_0001bcfe:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001bd56  ; je 0x1bd56
push edx
push ref_000264bb  ; push 0x264bb
jmp short loc_0001bd44  ; jmp 0x1bd44

loc_0001bd0f:
add ax, 0x633f
cmp ax, 0xa
ja short loc_0001bd56  ; ja 0x1bd56
cmp dl, 2
je short loc_0001bd6b  ; je 0x1bd6b
cmp dl, 3
je short loc_0001bd2e  ; je 0x1bd2e
dec dl
jne short loc_0001bd35  ; jne 0x1bd35
mov eax, 0x41
jmp short loc_0001bd70  ; jmp 0x1bd70

loc_0001bd2e:
mov eax, 0x43
jmp short loc_0001bd70  ; jmp 0x1bd70

loc_0001bd35:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001bd56  ; je 0x1bd56
push eax
push ref_000264c3  ; push 0x264c3

loc_0001bd44:
push ref_00029660  ; push 0x29660
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001bd56:
mov eax, 0x44
jmp short loc_0001bd70  ; jmp 0x1bd70

loc_0001bd5d:
mov eax, 2
jmp short loc_0001bd70  ; jmp 0x1bd70

loc_0001bd64:
mov eax, 0x21
jmp short loc_0001bd70  ; jmp 0x1bd70

loc_0001bd6b:
mov eax, 0x42

loc_0001bd70:
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001bd75:
push ebp
mov ebp, esp
push esi
push ebx
push edx
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
mov esi, eax
lea eax, [eax + 2]
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
mov dword [esp], esi
movzx ebx, ax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
cmp ax, 0x8086
jne short loc_0001be20  ; jne 0x1be20
mov eax, ebx
mov esi, 1
and eax, 0xfffffffd
cmp ax, 0x8c44
je near loc_0001be46  ; je 0x1be46
lea eax, [ebx + 0x73b2]
cmp ax, 2
jbe short loc_0001be46  ; jbe 0x1be46
lea eax, [ebx + 0x73b7]
cmp ax, 3
jbe short loc_0001be46  ; jbe 0x1be46
lea eax, [ebx + 0x73bf]
cmp ax, 1
jbe short loc_0001be46  ; jbe 0x1be46
cmp bx, 0x8c58
je short loc_0001be46  ; je 0x1be46
mov eax, ebx
and eax, 0xfffffffb
cmp ax, 0x8c52
je short loc_0001be41  ; je 0x1be41
mov eax, ebx
and eax, 0xfffffff7
cmp ax, 0x8c54
je short loc_0001be41  ; je 0x1be41
lea eax, [ebx + 0x63bf]
cmp ax, 6
jbe short loc_0001be46  ; jbe 0x1be46
lea eax, [ebx + 0x733f]
cmp ax, 5
jbe short loc_0001be41  ; jbe 0x1be41
lea eax, [ebx + 0x633f]
cmp ax, 0xa
jbe short loc_0001be46  ; jbe 0x1be46

loc_0001be20:
call fcn_00015479  ; call 0x15479
xor esi, esi
test al, al
je short loc_0001be46  ; je 0x1be46
push eax
push ebx
push ref_000264cb  ; push 0x264cb
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp short loc_0001be46  ; jmp 0x1be46

loc_0001be41:
mov esi, 1

loc_0001be46:
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_0001be4f:
push ebp
mov ebp, esp
push ebx
push ebx
mov eax, dword [ebp + 0xc]
mov ebx, dword [ebp + 8]
cmp al, 1
je short loc_0001be6a  ; je 0x1be6a
xor edx, edx
cmp al, 1
sbb eax, eax
and eax, 0xfffffff0
dec eax
jmp short loc_0001be72  ; jmp 0x1be72

loc_0001be6a:
mov edx, 0x10
or eax, 0xffffffff

loc_0001be72:
push ecx
add ebx, 0x3410
push edx
push eax
push ebx
call fcn_00018b68  ; call 0x18b68
add esp, 0x10
mov dword [ebp + 8], ebx
mov ebx, dword [ebp - 4]
leave
jmp near fcn_00017e4e  ; jmp 0x17e4e

fcn_0001be90:
push ebp
mov ebp, esp
push ebx
sub esp, 0x10
mov ebx, dword [ebp + 8]
push ebx
call fcn_0001bba9  ; call 0x1bba9
add esp, 0x10
xor edx, edx
dec al
jne short loc_0001bec3  ; jne 0x1bec3
sub esp, 0xc
add ebx, 0x3860
push ebx
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
cmp eax, 0x7fff
setne dl

loc_0001bec3:
mov al, dl
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001beca:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x10
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xf0
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
mov esi, eax
pop eax
and esi, 0xffffc000
pop edx
lea ebx, [esi + 0x38b0]
add esi, 0x38b4
push 0xffff8003
push ebx
call fcn_00018b3e  ; call 0x18b3e
pop ecx
pop edi
push 0x4010
push ebx
call fcn_00018b14  ; call 0x18b14
mov dword [esp], esi
call fcn_00017e4e  ; call 0x17e4e
mov edi, eax
pop eax
pop edx
push 0xffff8003
push ebx
call fcn_00018b3e  ; call 0x18b3e
pop ecx
pop eax
push 0x403c
push ebx
call fcn_00018b14  ; call 0x18b14
mov dword [esp], esi
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
xor edx, edx
and edi, 3
je short loc_0001bf57  ; je 0x1bf57
shr eax, 6
mov edx, eax
and edx, 1

loc_0001bf57:
lea esp, [ebp - 0xc]
mov al, dl
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001bf61:
push ebp
mov ebp, esp
push esi
push ebx
mov ebx, dword [ebp + 8]
sub esp, 0xc
push ebx
call fcn_0001bba9  ; call 0x1bba9
add esp, 0x10
mov dl, al
xor eax, eax
test dl, dl
je short loc_0001bfb4  ; je 0x1bfb4
push eax
push eax
push 0xffff8003
lea esi, [ebx + 0x38b0]
add ebx, 0x38b4
push esi
call fcn_00018b3e  ; call 0x18b3e
pop edx
pop ecx
push 0x4024
push esi
call fcn_00018b14  ; call 0x18b14
mov dword [esp], ebx
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
shr eax, 0xe
and eax, 1

loc_0001bfb4:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0001bfbb:
push ebp
mov ebp, esp
push esi
mov esi, 1
push ebx
push ecx
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 2
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
movzx ebx, ax
mov eax, ebx
and eax, 0xfffffffd
cmp ax, 0x8c44
je near loc_0001c0b4  ; je 0x1c0b4
lea eax, [ebx + 0x73b2]
cmp ax, 2
jbe near loc_0001c0b4  ; jbe 0x1c0b4
lea eax, [ebx + 0x73b7]
cmp ax, 3
jbe near loc_0001c0b4  ; jbe 0x1c0b4
lea eax, [ebx + 0x73bf]
cmp ax, 1
jbe near loc_0001c0b4  ; jbe 0x1c0b4
cmp bx, 0x8c58
je near loc_0001c0b4  ; je 0x1c0b4
mov eax, ebx
and eax, 0xfffffffb
cmp ax, 0x8c52
je short loc_0001c0af  ; je 0x1c0af
mov eax, ebx
and eax, 0xfffffff7
cmp ax, 0x8c54
je short loc_0001c0af  ; je 0x1c0af
lea eax, [ebx + 0x733f]
cmp ax, 5
jbe short loc_0001c0b4  ; jbe 0x1c0b4
lea eax, [ebx + 0x63bf]
mov si, 2
cmp ax, 6
jbe short loc_0001c0b4  ; jbe 0x1c0b4
lea eax, [ebx + 0x633f]
cmp ax, 0xa
jbe short loc_0001c0b4  ; jbe 0x1c0b4
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001c087  ; je 0x1c087
push edx
push ebx
push ref_000264fe  ; push 0x264fe
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001c087:
call fcn_00015480  ; call 0x15480
mov esi, 3
test al, al
je short loc_0001c0b4  ; je 0x1c0b4
push eax
push ref_00022281  ; push 0x22281
push 0x1cd
push ref_00026529  ; push 0x26529
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
jmp short loc_0001c0b4  ; jmp 0x1c0b4

loc_0001c0af:
mov esi, 1

loc_0001c0b4:
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_0001c0bd:
push ebp
mov ebp, esp
push esi
mov esi, 1
push ebx
push ecx
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 2
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
movzx ebx, ax
mov eax, ebx
and eax, 0xfffffffd
cmp ax, 0x8c44
je near loc_0001c1b6  ; je 0x1c1b6
lea eax, [ebx + 0x73b2]
cmp ax, 2
jbe near loc_0001c1b6  ; jbe 0x1c1b6
lea eax, [ebx + 0x73b7]
cmp ax, 3
jbe near loc_0001c1b6  ; jbe 0x1c1b6
lea eax, [ebx + 0x73bf]
cmp ax, 1
jbe near loc_0001c1b6  ; jbe 0x1c1b6
cmp bx, 0x8c58
je near loc_0001c1b6  ; je 0x1c1b6
mov eax, ebx
and eax, 0xfffffffb
cmp ax, 0x8c52
je short loc_0001c1b1  ; je 0x1c1b1
mov eax, ebx
and eax, 0xfffffff7
cmp ax, 0x8c54
je short loc_0001c1b1  ; je 0x1c1b1
lea eax, [ebx + 0x63bf]
cmp ax, 6
jbe short loc_0001c1b6  ; jbe 0x1c1b6
lea eax, [ebx + 0x733f]
cmp ax, 5
jbe short loc_0001c1b6  ; jbe 0x1c1b6
lea eax, [ebx + 0x633f]
mov si, 2
cmp ax, 0xa
jbe short loc_0001c1b6  ; jbe 0x1c1b6
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001c189  ; je 0x1c189
push edx
push ebx
push ref_000264fe  ; push 0x264fe
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001c189:
call fcn_00015480  ; call 0x15480
mov esi, 3
test al, al
je short loc_0001c1b6  ; je 0x1c1b6
push eax
push ref_00022281  ; push 0x22281
push 0x1ec
push ref_00026529  ; push 0x26529
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
jmp short loc_0001c1b6  ; jmp 0x1c1b6

loc_0001c1b1:
mov esi, 1

loc_0001c1b6:
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_0001c1bf:
push ebp
mov ebp, esp
sub esp, 8
call fcn_0001bfbb  ; call 0x1bfbb
cmp eax, 1
je short loc_0001c1db  ; je 0x1c1db
xor edx, edx
cmp eax, 2
mov al, 6
cmove edx, eax
jmp short loc_0001c1dd  ; jmp 0x1c1dd

loc_0001c1db:
mov dl, 8

loc_0001c1dd:
mov al, dl
leave
ret

fcn_0001c1e1:
push ebp
mov ebp, esp
sub esp, 8
call fcn_0001bfbb  ; call 0x1bfbb
cmp eax, 1
je short loc_0001c1fc  ; je 0x1c1fc
cmp eax, 2
sete al
shl eax, 2
jmp short loc_0001c1fe  ; jmp 0x1c1fe

loc_0001c1fc:
mov al, 6

loc_0001c1fe:
leave
ret

fcn_0001c200:
push ebp
mov ebp, esp
sub esp, 8
call fcn_0001bfbb  ; call 0x1bfbb
cmp eax, 1
je short loc_0001c218  ; je 0x1c218
cmp eax, 2
sete al
jmp short loc_0001c21a  ; jmp 0x1c21a

loc_0001c218:
mov al, 2

loc_0001c21a:
leave
ret

fcn_0001c21c:
push ebp
mov ebp, esp
sub esp, 8
call fcn_0001c0bd  ; call 0x1c0bd
cmp eax, 1
jne short loc_0001c23a  ; jne 0x1c23a
call fcn_0001bfbb  ; call 0x1bfbb
cmp eax, 1
jne short loc_0001c23a  ; jne 0x1c23a
mov al, 0xe
jmp short loc_0001c243  ; jmp 0x1c243

loc_0001c23a:
cmp eax, 2
sete al
shl eax, 3

loc_0001c243:
leave
ret

fcn_0001c245:
push ebp
mov ebp, esp
sub esp, 8
call fcn_0001bfbb  ; call 0x1bfbb
cmp eax, 1
je short loc_0001c25d  ; je 0x1c25d
cmp eax, 2
sete al
jmp short loc_0001c25f  ; jmp 0x1c25f

loc_0001c25d:
mov al, 2

loc_0001c25f:
leave
ret

fcn_0001c261:
push ebp
mov ebp, esp
sub esp, 8
call fcn_0001c0bd  ; call 0x1c0bd
cmp eax, 1
jne short loc_0001c28a  ; jne 0x1c28a
call fcn_0001bfbb  ; call 0x1bfbb
cmp eax, 1
je short loc_0001c286  ; je 0x1c286
cmp eax, 2
sete dl
shl edx, 3
jmp short loc_0001c294  ; jmp 0x1c294

loc_0001c286:
mov dl, 0xe
jmp short loc_0001c294  ; jmp 0x1c294

loc_0001c28a:
cmp eax, 2
mov dl, 0xa
mov al, 0
cmovne edx, eax

loc_0001c294:
mov al, dl
leave
ret

fcn_0001c298:
push ebp
mov ebp, esp
sub esp, 8
call fcn_0001c0bd  ; call 0x1c0bd
cmp eax, 1
jne short loc_0001c2b6  ; jne 0x1c2b6
call fcn_0001bfbb  ; call 0x1bfbb
cmp eax, 1
jne short loc_0001c2b6  ; jne 0x1c2b6
mov al, 0xe
jmp short loc_0001c2bf  ; jmp 0x1c2bf

loc_0001c2b6:
cmp eax, 2
sete al
shl eax, 3

loc_0001c2bf:
leave
ret

fcn_0001c2c1:
push ebp
mov ebp, esp
sub esp, 8
call fcn_0001c0bd  ; call 0x1c0bd
cmp eax, 1
jne short loc_0001c2ea  ; jne 0x1c2ea
call fcn_0001bfbb  ; call 0x1bfbb
cmp eax, 1
je short loc_0001c2e6  ; je 0x1c2e6
cmp eax, 2
sete dl
lea edx, [edx + edx*8]
jmp short loc_0001c2f4  ; jmp 0x1c2f4

loc_0001c2e6:
mov dl, 0xf
jmp short loc_0001c2f4  ; jmp 0x1c2f4

loc_0001c2ea:
cmp eax, 2
mov dl, 0xb
mov al, 0
cmovne edx, eax

loc_0001c2f4:
mov al, dl
leave
ret

fcn_0001c2f8:
push ebp
mov ebp, esp
sub esp, 8
call fcn_0001c0bd  ; call 0x1c0bd
cmp eax, 1
jne short loc_0001c316  ; jne 0x1c316
call fcn_0001bfbb  ; call 0x1bfbb
cmp eax, 1
jne short loc_0001c316  ; jne 0x1c316
mov al, 6
jmp short loc_0001c31f  ; jmp 0x1c31f

loc_0001c316:
cmp eax, 2
sete al
shl eax, 2

loc_0001c31f:
leave
ret

fcn_0001c321:
push ebp
mov ebp, esp
push esi
push ebx
push eax
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
mov esi, eax
lea eax, [eax + 0xa2]
add esi, 0xa4
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
mov dword [esp], esi
mov ebx, eax
call fcn_00017dc2  ; call 0x17dc2
mov ecx, dword [ebp + 8]
add esp, 0x10
lea edx, [ecx - 1]
cmp edx, 4
ja short loc_0001c394  ; ja 0x1c394
jmp dword [edx*4 + ref_000205f8]  ; ujmp: jmp dword [edx*4 + 0x205f8]

loc_0001c367:
shr bx, 5
jmp short loc_0001c377  ; jmp 0x1c377

loc_0001c36d:
shr ax, 1
mov edx, eax
jmp short loc_0001c37d  ; jmp 0x1c37d

loc_0001c374:
shr bx, 1

loc_0001c377:
mov edx, ebx
jmp short loc_0001c37d  ; jmp 0x1c37d

loc_0001c37b:
mov dl, bl

loc_0001c37d:
and edx, 1
jmp short loc_0001c396  ; jmp 0x1c396

loc_0001c382:
xor edx, edx
test al, 2
je short loc_0001c396  ; je 0x1c396
and ebx, 0x22
cmp bx, 2
sete dl
jmp short loc_0001c396  ; jmp 0x1c396

loc_0001c394:
xor edx, edx

loc_0001c396:
lea esp, [ebp - 8]
mov al, dl
pop ebx
pop esi
pop ebp
ret

fcn_0001c39f:
push ebp
mov ebp, esp
push ebx
sub esp, 0x10
mov eax, dword [ebp + 8]
mov ebx, dword [ebp + 0xc]
add eax, 0x404
push eax
movzx ebx, bl
call fcn_00017e4e  ; call 0x17e4e
lea ecx, [ebx*4]
mov ebx, dword [ebp - 4]
leave
shr eax, cl
and eax, 7
ret

fcn_0001c3cb:
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

loc_0001c3e3:
call fcn_0001c1bf  ; call 0x1c1bf
cmp bl, al
jae short loc_0001c40a  ; jae 0x1c40a
sub esp, 0xc
push esi
call fcn_00017e4e  ; call 0x17e4e
movzx ecx, bl
add esp, 0x10
shl ecx, 2
shr eax, cl
and eax, 7
cmp eax, edi
je short loc_0001c42d  ; je 0x1c42d
inc ebx
jmp short loc_0001c3e3  ; jmp 0x1c3e3

loc_0001c40a:
call fcn_00015480  ; call 0x15480
mov bl, 0xff
test al, al
je short loc_0001c42d  ; je 0x1c42d
push eax
push ref_00022281  ; push 0x22281
push 0x390
push ref_00026529  ; push 0x26529
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001c42d:
lea esp, [ebp - 0xc]
mov al, bl
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001c437:
push ebp
mov ebp, esp
push ebx
sub esp, 0x18
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xf0
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
mov ebx, eax
pop eax
and ebx, 0xffffc000
pop edx
push 0
push ebx
call fcn_0001c39f  ; call 0x1c39f
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
call fcn_00009ecd  ; call 0x9ecd
add esp, 0x20
mov ebx, eax
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001c4cd  ; je 0x1c4cd
test ebx, ebx
jns short loc_0001c4cd  ; jns 0x1c4cd
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001c4b5  ; je 0x1c4b5
push eax
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001c4b5:
push ecx
push ref_000206f4  ; push 0x206f4
push 0x3b7
push ref_00026529  ; push 0x26529
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001c4cd:
mov ebx, dword [ebp - 0xc]
test ebx, 0x80000
je short loc_0001c543  ; je 0x1c543
and ebx, 0x70000
shr ebx, 0x10
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001c4fb  ; je 0x1c4fb
push edx
push ebx
push ref_00026565  ; push 0x26565
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001c4fb:
call fcn_0001bfbb  ; call 0x1bfbb
lea edx, [ebx + 1]
cmp eax, 2
jne short loc_0001c54c  ; jne 0x1c54c
cmp ebx, 1
je short loc_0001c547  ; je 0x1c547
jb short loc_0001c51b  ; jb 0x1c51b
cmp ebx, 5
ja short loc_0001c522  ; ja 0x1c522
mov edx, 5
jmp short loc_0001c54c  ; jmp 0x1c54c

loc_0001c51b:
mov edx, 3
jmp short loc_0001c54c  ; jmp 0x1c54c

loc_0001c522:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001c543  ; je 0x1c543
push eax
push ref_00022281  ; push 0x22281
push 0x3c7
push ref_00026529  ; push 0x26529
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001c543:
xor edx, edx
jmp short loc_0001c54c  ; jmp 0x1c54c

loc_0001c547:
mov edx, 4

loc_0001c54c:
mov eax, edx
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001c553:
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
ja short loc_0001c5c9  ; ja 0x1c5c9
push eax
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0xf0
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
and eax, 0xffffc000
cmp ebx, 7
je short loc_0001c5a1  ; je 0x1c5a1
sub esp, 0xc
lea eax, [eax + ebx*4 + 0x3854]
jmp short loc_0001c5a9  ; jmp 0x1c5a9

loc_0001c5a1:
sub esp, 0xc
add eax, 0x3800

loc_0001c5a9:
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
mov edx, eax
and ax, 0x7fff
and edx, 0x7fff0000
shr edx, 0x10
mov word [edi], dx
mov word [esi], ax
xor eax, eax

loc_0001c5c9:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001c5d1:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov edi, dword [ebp + 8]
mov ebx, dword [ebp + 0xc]
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001c5fa  ; je 0x1c5fa
push eax
push eax
push ref_00026574  ; push 0x26574
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001c5fa:
dec bl
lea esi, [edi + 0x3428]
jne short loc_0001c620  ; jne 0x1c620
push ecx
push ecx
push 0x10
lea ebx, [edi + 0x3424]
push ebx
call fcn_00017e04  ; call 0x17e04
pop ebx
pop edi
push 1
push esi
call fcn_00018b14  ; call 0x18b14
jmp short loc_0001c62a  ; jmp 0x1c62a

loc_0001c620:
push edx
push edx
push 0xfffffffffffffffe
push esi
call fcn_00018b3e  ; call 0x18b3e

loc_0001c62a:
add esp, 0x10
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001c647  ; je 0x1c647
push eax
push eax
push ref_0002658e  ; push 0x2658e
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001c647:
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001c651:
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
call fcn_0001ff1b  ; call 0x1ff1b
mov eax, dword [ebp - 0x18]
leave
and eax, 0xfff0ff0
ret

fcn_0001c678:
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
call fcn_0001ff1b  ; call 0x1ff1b
mov eax, dword [ebp - 0x18]
leave
and eax, 0xf
ret

fcn_0001c69d:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
call fcn_0001c651  ; call 0x1c651
mov esi, eax
call fcn_0001c678  ; call 0x1c678
lea edx, [eax + esi]
mov edi, eax
cmp edx, 0x306c3
je short loc_0001c708  ; je 0x1c708
cmp edx, 0x40651
je short loc_0001c708  ; je 0x1c708
cmp edx, 0x40661
je short loc_0001c708  ; je 0x1c708
lea eax, [edx - 0x306d3]
cmp eax, 1
jbe short loc_0001c708  ; jbe 0x1c708
sub edx, 0x40670
mov bl, 1
cmp edx, 1
jbe short loc_0001c70a  ; jbe 0x1c70a
call fcn_00015479  ; call 0x15479
xor ebx, ebx
test al, al
je short loc_0001c70a  ; je 0x1c70a
push esi
push edi
push ref_000265a6  ; push 0x265a6
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp short loc_0001c70a  ; jmp 0x1c70a

loc_0001c708:
mov bl, 1

loc_0001c70a:
lea esp, [ebp - 0xc]
mov al, bl
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001c714:
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
call fcn_0001ff1b  ; call 0x1ff1b
mov eax, dword [ebp - 0x18]
add esp, 0x20
and eax, 0xfff0ff0
cmp eax, 0x40650
je short loc_0001c766  ; je 0x1c766
ja short loc_0001c756  ; ja 0x1c756
cmp eax, 0x306c0
je short loc_0001c7b1  ; je 0x1c7b1
cmp eax, 0x306d0
je short loc_0001c766  ; je 0x1c766
jmp short loc_0001c76a  ; jmp 0x1c76a

loc_0001c756:
cmp eax, 0x40660
je short loc_0001c7b1  ; je 0x1c7b1
cmp eax, 0x40670
jne short loc_0001c76a  ; jne 0x1c76a
jmp short loc_0001c7b1  ; jmp 0x1c7b1

loc_0001c766:
xor ebx, ebx
jmp short loc_0001c7b3  ; jmp 0x1c7b3

loc_0001c76a:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001c78f  ; je 0x1c78f
mov eax, dword [ebp - 0x18]
push edx
and eax, 0xfff0ff0
push eax
push ref_000265e0  ; push 0x265e0
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001c78f:
call fcn_00015480  ; call 0x15480
mov bl, 2
test al, al
je short loc_0001c7b3  ; je 0x1c7b3
push eax
push ref_00022281  ; push 0x22281
push 0x7f
push ref_0002660b  ; push 0x2660b
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
jmp short loc_0001c7b3  ; jmp 0x1c7b3

loc_0001c7b1:
mov bl, 1

loc_0001c7b3:
mov al, bl
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001c7ba:
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
call fcn_0001ff47  ; call 0x1ff47
mov eax, dword [ebp - 0x18]
add esp, 0x1c
push 0x1a
xor edx, edx
push edx
push eax
call fcn_0001724f  ; call 0x1724f
leave
and eax, 0x3f
inc eax
ret

fcn_0001c7ea:
push ebp
mov ebp, esp
sub esp, 0xc
push 0
push 0
push 0x8b
call fcn_000175c6  ; call 0x175c6
mov dword [esp], 0
push 0
push 0
push 0
push 1
call fcn_0001ff1b  ; call 0x1ff1b
add esp, 0x14
push 0x8b
call fcn_000175bc  ; call 0x175bc
add esp, 0xc
push 0x20
push edx
push eax
call fcn_0001724f  ; call 0x1724f
leave
ret

fcn_0001c82d:
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
call fcn_000175bc  ; call 0x175bc
add esp, 0x10
mov dword [ebp - 0x20], eax
mov dword [ebp - 0x1c], edx
test edi, edi
jne short loc_0001c879  ; jne 0x1c879
call fcn_00015480  ; call 0x15480
test al, al
je near loc_0001c920  ; je 0x1c920
mov dword [ebp + 0x10], ref_00026647  ; mov dword [ebp + 0x10], 0x26647
mov dword [ebp + 0xc], 0xc8
jmp near loc_0001c905  ; jmp 0x1c905

loc_0001c879:
push ecx
push 0x10
push dword [ebp - 0x1c]
push dword [ebp - 0x20]
call fcn_0001724f  ; call 0x1724f
add esp, 0x10
mov word [edi], ax
test esi, esi
jne short loc_0001c8ae  ; jne 0x1c8ae
call fcn_00015480  ; call 0x15480
test al, al
je near loc_0001c920  ; je 0x1c920
mov dword [ebp + 0x10], ref_00026672  ; mov dword [ebp + 0x10], 0x26672
mov dword [ebp + 0xc], 0xd2
jmp short loc_0001c905  ; jmp 0x1c905

loc_0001c8ae:
movzx eax, ax
push edx
xor edx, edx
push eax
movzx eax, word [ebp - 0x20]
push edx
push eax
call fcn_000174b9  ; call 0x174b9
add esp, 0x10
mov word [esi], ax
test ebx, ebx
jne short loc_0001c8e3  ; jne 0x1c8e3
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001c920  ; je 0x1c920
mov dword [ebp + 0x10], ref_000266a0  ; mov dword [ebp + 0x10], 0x266a0
mov dword [ebp + 0xc], 0xdc
jmp short loc_0001c905  ; jmp 0x1c905

loc_0001c8e3:
cmp dword [ebp - 0x24], 0
mov word [ebx], 1
jne short loc_0001c918  ; jne 0x1c918
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001c920  ; je 0x1c920
mov dword [ebp + 0x10], ref_000266c7  ; mov dword [ebp + 0x10], 0x266c7
mov dword [ebp + 0xc], 0xe3

loc_0001c905:
mov dword [ebp + 8], ref_0002660b  ; mov dword [ebp + 8], 0x2660b
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_0001548c  ; jmp 0x1548c

loc_0001c918:
mov eax, dword [ebp - 0x24]
mov word [eax], 1

loc_0001c920:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001c928:
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

loc_0001c93b:
cmp dword [ebp + 8], 1
je short loc_0001c96e  ; je 0x1c96e
cmp dword [ebp + 8], 2
jne short loc_0001c99b  ; jne 0x1c99b
sub esp, 0xc
push 0x150
call fcn_000175bc  ; call 0x175bc
add esp, 0xc
push 8
push esi
push edi
mov dword [ebp - 0x28], eax
mov dword [ebp - 0x24], edx
call fcn_0001713e  ; call 0x1713e
mov al, byte [ebp - 0x19]
shr al, 7
jmp short loc_0001c998  ; jmp 0x1c998

loc_0001c96e:
push edx
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0x48
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
and eax, 0xfffffffe
add eax, 0x5da4
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
shr eax, 0x1f

loc_0001c998:
add esp, 0x10

loc_0001c99b:
sub esp, 0xc
inc ebx
push 1
mov dword [ebp - 0x2c], eax
call fcn_0001bb03  ; call 0x1bb03
mov eax, dword [ebp - 0x2c]
add esp, 0x10
mov dl, al
and dl, 1
je short loc_0001c9c1  ; je 0x1c9c1
cmp bx, 0x3e7
jbe near loc_0001c93b  ; jbe 0x1c93b

loc_0001c9c1:
cmp bx, 0x3e8
jne short loc_0001c9f0  ; jne 0x1c9f0
test dl, dl
je short loc_0001c9f0  ; je 0x1c9f0
call fcn_00015479  ; call 0x15479
mov ebx, 0x80000012
test al, al
je short loc_0001c9f2  ; je 0x1c9f2
push eax
push eax
push ref_000266e8  ; push 0x266e8
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp short loc_0001c9f2  ; jmp 0x1c9f2

loc_0001c9f0:
xor ebx, ebx

loc_0001c9f2:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001c9fc:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x48
mov edi, dword [ebp + 8]
push edi
call fcn_0001c928  ; call 0x1c928
add esp, 0x10
mov ebx, eax
test eax, eax
js near loc_0001cc05  ; js 0x1cc05
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001ca39  ; je 0x1ca39
movzx eax, byte [ebp + 0xc]
push ecx
push eax
push ref_00026710  ; push 0x26710
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001ca39:
cmp edi, 1
je short loc_0001ca4c  ; je 0x1ca4c
cmp edi, 2
je near loc_0001cb13  ; je 0x1cb13
jmp near loc_0001cbc5  ; jmp 0x1cbc5

loc_0001ca4c:
push esi
push 0
push 0
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 0x48
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
mov edi, eax
pop eax
and edi, 0xfffffffe
pop edx
push dword [ebp + 0x10]
lea esi, [edi + 0x5da0]
add edi, 0x5da4
push esi
call fcn_00017e8f  ; call 0x17e8f
mov eax, dword [ebp + 0xc]
pop ecx
pop edx
or eax, 0x80000000
push eax
push edi
call fcn_00017e8f  ; call 0x17e8f
mov dword [esp], 1
call fcn_0001c928  ; call 0x1c928
mov dword [esp], edi
call fcn_00017e4e  ; call 0x17e4e
mov dword [esp], esi
mov dword [ebp - 0x40], eax
call fcn_00017e4e  ; call 0x17e4e
mov dword [esp], 0xa
mov dword [ebp - 0x3c], eax
call fcn_0001bb03  ; call 0x1bb03
mov dword [esp], edi
call fcn_00017e4e  ; call 0x17e4e
mov dword [esp], esi
mov edi, eax
call fcn_00017e4e  ; call 0x17e4e
mov ecx, dword [ebp - 0x40]
add esp, 0x10
cmp ecx, edi
je short loc_0001cb06  ; je 0x1cb06
cmp dword [ebp - 0x3c], eax
je short loc_0001cb06  ; je 0x1cb06

loc_0001cadf:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001cafc  ; je 0x1cafc
push ebx
push ebx
push ref_00026738  ; push 0x26738
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001cafc:
mov ebx, 0x80000002
jmp near loc_0001cc05  ; jmp 0x1cc05

loc_0001cb06:
mov eax, dword [ebp + 0x14]
movzx ecx, cl
mov dword [eax], ecx
jmp near loc_0001cbe7  ; jmp 0x1cbe7

loc_0001cb13:
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
call fcn_0001713e  ; call 0x1713e
add esp, 0xc
push dword [ebp - 0x2c]
push dword [ebp - 0x30]
push 0x150
call fcn_000175c6  ; call 0x175c6
mov dword [esp], 2
call fcn_0001c928  ; call 0x1c928
mov dword [esp], 0x150
call fcn_000175bc  ; call 0x175bc
mov ecx, dword [ebp - 0x3c]
add esp, 0xc
push 8
push edi
push ecx
mov dword [ebp - 0x2c], edx
mov dword [ebp - 0x30], eax
call fcn_0001713e  ; call 0x1713e
mov dword [esp], 0xa
call fcn_0001bb03  ; call 0x1bb03
mov dword [esp], 0x150
call fcn_000175bc  ; call 0x175bc
add esp, 0xc
push 8
push edi
mov dword [ebp - 0x30], eax
lea eax, [ebp - 0x20]
push eax
mov dword [ebp - 0x2c], edx
call fcn_0001713e  ; call 0x1713e
mov eax, dword [ebp - 0x1c]
add esp, 0x10
cmp dword [ebp - 0x24], eax
je short loc_0001cbba  ; je 0x1cbba
mov eax, dword [ebp - 0x20]
cmp dword [ebp - 0x28], eax
jne near loc_0001cadf  ; jne 0x1cadf

loc_0001cbba:
movzx eax, byte [ebp - 0x24]
mov edx, dword [ebp + 0x14]
mov dword [edx], eax
jmp short loc_0001cbe7  ; jmp 0x1cbe7

loc_0001cbc5:
call fcn_00015479  ; call 0x15479
mov ebx, 0x80000003
test al, al
je short loc_0001cbe7  ; je 0x1cbe7
push edx
push edx
push ref_00026763  ; push 0x26763
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001cbe7:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001cc05  ; je 0x1cc05
push eax
mov eax, dword [ebp + 0x14]
push dword [eax]
push ref_00026789  ; push 0x26789
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001cc05:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001cc0f:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x38
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
push edi
call fcn_0001c928  ; call 0x1c928
add esp, 0x10
mov ebx, eax
test eax, eax
js near loc_0001ce1b  ; js 0x1ce1b
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001cc50  ; je 0x1cc50
mov eax, esi
movzx eax, al
push ecx
push eax
push ref_000267aa  ; push 0x267aa
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001cc50:
cmp edi, 1
je short loc_0001cc63  ; je 0x1cc63
cmp edi, 2
je near loc_0001cd24  ; je 0x1cd24
jmp near loc_0001cddb  ; jmp 0x1cddb

loc_0001cc63:
push eax
push 0
push 0
push 0
mov dword [ebp - 0x30], esi
or byte [ebp - 0x2d], 0x80
call fcn_00016c9a  ; call 0x16c9a
add eax, 0x48
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
mov esi, eax
pop eax
and esi, 0xfffffffe
pop edx
push dword [ebp - 0x30]
lea edi, [esi + 0x5da4]
add esi, 0x5da0
push edi
call fcn_00017e8f  ; call 0x17e8f
mov dword [esp], 1
call fcn_0001c928  ; call 0x1c928
mov dword [esp], edi
call fcn_00017e4e  ; call 0x17e4e
mov dword [esp], esi
mov dword [ebp - 0x30], eax
call fcn_00017e4e  ; call 0x17e4e
mov dword [esp], 0xa
mov dword [ebp - 0x2c], eax
call fcn_0001bb03  ; call 0x1bb03
mov dword [esp], edi
call fcn_00017e4e  ; call 0x17e4e
mov dword [esp], esi
mov edi, eax
call fcn_00017e4e  ; call 0x17e4e
mov edx, dword [ebp - 0x30]
add esp, 0x10
cmp edx, edi
je short loc_0001cd13  ; je 0x1cd13
cmp dword [ebp - 0x2c], eax
je short loc_0001cd13  ; je 0x1cd13

loc_0001ccec:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001cd09  ; je 0x1cd09
push eax
push eax
push ref_00026738  ; push 0x26738
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001cd09:
mov ebx, 0x80000002
jmp near loc_0001ce1b  ; jmp 0x1ce1b

loc_0001cd13:
mov eax, dword [ebp + 0x14]
mov dword [eax], edx
lea eax, [ebp - 0x2c]
push edi
push 4
push eax
jmp near loc_0001cdd1  ; jmp 0x1cdd1

loc_0001cd24:
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
call fcn_0001713e  ; call 0x1713e
add esp, 0xc
push dword [ebp - 0x34]
push dword [ebp - 0x38]
push 0x150
call fcn_000175c6  ; call 0x175c6
mov dword [esp], 2
call fcn_0001c928  ; call 0x1c928
mov dword [esp], 0x150
call fcn_000175bc  ; call 0x175bc
add esp, 0xc
push 8
push edi
push esi
mov dword [ebp - 0x34], edx
mov dword [ebp - 0x38], eax
call fcn_0001713e  ; call 0x1713e
mov dword [esp], 0xa
call fcn_0001bb03  ; call 0x1bb03
mov dword [esp], 0x150
call fcn_000175bc  ; call 0x175bc
add esp, 0xc
push 8
push edi
mov dword [ebp - 0x38], eax
lea eax, [ebp - 0x20]
push eax
mov dword [ebp - 0x34], edx
call fcn_0001713e  ; call 0x1713e
mov eax, dword [ebp - 0x1c]
add esp, 0x10
cmp dword [ebp - 0x24], eax
je short loc_0001cdc4  ; je 0x1cdc4
mov eax, dword [ebp - 0x20]
cmp dword [ebp - 0x28], eax
jne near loc_0001ccec  ; jne 0x1ccec

loc_0001cdc4:
mov ecx, dword [ebp + 0x14]
movzx eax, byte [ebp - 0x24]
mov dword [ecx], eax
push ecx
push 4
push esi

loc_0001cdd1:
push dword [ebp + 0x10]
call fcn_0001713e  ; call 0x1713e
jmp short loc_0001cdfa  ; jmp 0x1cdfa

loc_0001cddb:
call fcn_00015479  ; call 0x15479
mov ebx, 0x80000003
test al, al
je short loc_0001cdfd  ; je 0x1cdfd
push edx
push edx
push ref_00026763  ; push 0x26763
push 0x80000000
call fcn_00015487  ; call 0x15487

loc_0001cdfa:
add esp, 0x10

loc_0001cdfd:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001ce1b  ; je 0x1ce1b
push eax
mov eax, dword [ebp + 0x14]
push dword [eax]
push ref_00026789  ; push 0x26789
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001ce1b:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001ce25:
push ebp
mov eax, 0x80000002
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov ebx, dword [ebp + 0xc]
test ebx, ebx
je near loc_0001cf0f  ; je 0x1cf0f
lea edi, [ebp - 0x1c]
call fcn_0001c651  ; call 0x1c651
lea esi, [ebp - 0x20]
call fcn_0001c678  ; call 0x1c678
push edi
push esi
push 0x8000000a
push 1
call fcn_0001cc0f  ; call 0x1cc0f
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_0001ce7b  ; je 0x1ce7b
push edx
push dword [ebp - 0x20]
push ref_000267d1  ; push 0x267d1
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001ce7b:
cmp dword [ebp - 0x1c], 0
je short loc_0001ce8b  ; je 0x1ce8b

loc_0001ce81:
mov eax, 0x8000000e
jmp near loc_0001cf0f  ; jmp 0x1cf0f

loc_0001ce8b:
mov edx, dword [ebp - 0x20]
xor eax, eax

loc_0001ce90:
mov ecx, edx
and edx, 0x3f
mov byte [ebx + eax], dl
inc eax
shr ecx, 6
cmp eax, 4
je short loc_0001cea5  ; je 0x1cea5
mov edx, ecx
jmp short loc_0001ce90  ; jmp 0x1ce90

loc_0001cea5:
cmp dword [ebp + 8], 4
mov dword [ebp - 0x20], ecx
ja short loc_0001ceb2  ; ja 0x1ceb2

loc_0001ceae:
xor eax, eax
jmp short loc_0001cf0f  ; jmp 0x1cf0f

loc_0001ceb2:
call fcn_0001c714  ; call 0x1c714
test al, al
jne short loc_0001ceae  ; jne 0x1ceae
push edi
push esi
push 0x8000000b
push 1
call fcn_0001cc0f  ; call 0x1cc0f
call fcn_00015479  ; call 0x15479
add esp, 0x10
test al, al
je short loc_0001cee8  ; je 0x1cee8
push eax
push dword [ebp - 0x20]
push ref_000267d1  ; push 0x267d1
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001cee8:
cmp dword [ebp - 0x1c], 0
jne short loc_0001ce81  ; jne 0x1ce81
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
jmp short loc_0001ceae  ; jmp 0x1ceae

loc_0001cf0f:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001cf17:
push ebp
mov ebp, esp
sub esp, 0x14
push 0x1b
call fcn_000175bc  ; call 0x175bc
leave
shrd eax, edx, 8
and eax, 1
ret

fcn_0001cf2d:
push ebp
mov ebp, esp
sub esp, 0x14
push 0x35
call fcn_000175bc  ; call 0x175bc
add esp, 0x10
leave
mov edx, eax
movzx eax, al
shr edx, 0x10
div dl
cmp al, 1
seta al
ret

fcn_0001cf4e:
push ebp
mov ebp, esp
push ebx
sub esp, 0x14
mov edx, dword [ebp + 8]
mov ebx, dword [ebp + 0xc]
mov eax, dword [ebp + 0x10]
mov dword [ebp - 0xc], 0
test dx, dx
jne short loc_0001cf71  ; jne 0x1cf71
mov word [ebx], 0
jmp short loc_0001cfc4  ; jmp 0x1cfc4

loc_0001cf71:
test al, al
jne short loc_0001cf93  ; jne 0x1cf93
lea eax, [ebp - 0xc]
cmp dx, 0xfff
push eax
mov eax, 0xfff
cmovbe eax, edx
movzx eax, ax
push 0x3e8
shl eax, 0xa
jmp short loc_0001cfa9  ; jmp 0x1cfa9

loc_0001cf93:
dec al
jne short loc_0001cfc4  ; jne 0x1cfc4
lea eax, [ebp - 0xc]
push eax
movzx eax, dx
imul eax, eax, 0x3e8
push 0x400

loc_0001cfa9:
cdq
push edx
push eax
call fcn_00017502  ; call 0x17502
add esp, 0x10
cmp dword [ebp - 0xc], 0x1f3
mov word [ebx], ax
jbe short loc_0001cfc4  ; jbe 0x1cfc4
inc eax
mov word [ebx], ax

loc_0001cfc4:
mov ebx, dword [ebp - 4]
leave
ret

fcn_0001cfc9:
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
je near loc_0001d073  ; je 0x1d073
mov edx, eax
test cl, cl
jne short loc_0001d024  ; jne 0x1d024
xor esi, esi
test ax, ax
jns short loc_0001d008  ; jns 0x1d008
neg edx
mov esi, 1
and dx, 0x7fff

loc_0001d008:
lea eax, [ebp - 0xc]
cmp dx, 0x1f4
push eax
mov eax, 0x1f4
cmovle eax, edx
cwde
push 0x3e8
shl eax, 0xa
jmp short loc_0001d04f  ; jmp 0x1d04f

loc_0001d024:
dec cl
jne short loc_0001d073  ; jne 0x1d073
xor esi, esi
test ah, 4
je short loc_0001d03d  ; je 0x1d03d
mov edx, eax
mov esi, 1
neg edx
and dx, 0x3ff

loc_0001d03d:
lea eax, [ebp - 0xc]
push eax
movsx eax, dx
imul eax, eax, 0x3e8
push 0x400

loc_0001d04f:
cdq
push edx
push eax
call fcn_00017502  ; call 0x17502
add esp, 0x10
cmp dword [ebp - 0xc], 0x1f3
mov word [ebx], ax
jbe short loc_0001d06a  ; jbe 0x1d06a
inc eax
mov word [ebx], ax

loc_0001d06a:
mov eax, esi
test al, al
je short loc_0001d073  ; je 0x1d073
neg word [ebx]

loc_0001d073:
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0001d07a:
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
call fcn_00016fff  ; call 0x16fff
mov eax, dword [ebp + 0x10]
add esp, 0x10
dec eax
cmp eax, 0x14
ja near loc_0001d1d0  ; ja 0x1d1d0
jmp dword [eax*4 + ref_0002060c]  ; ujmp: jmp dword [eax*4 + 0x2060c]

loc_0001d0a8:
mov dword [ebx], 0
mov byte [ebx + 4], 1
mov al, byte [esi + 4]
jmp short loc_0001d0dd  ; jmp 0x1d0dd

loc_0001d0b7:
mov dword [ebx], 0
mov byte [ebx + 4], 2
mov byte [ebx + 5], 0
mov al, byte [esi + 4]
mov byte [ebx + 6], al
jmp near loc_0001d1ed  ; jmp 0x1d1ed

loc_0001d0d0:
mov dword [ebx], 0
mov byte [ebx + 4], 0x10
mov al, byte [esi + 6]

loc_0001d0dd:
mov byte [ebx + 5], al
jmp near loc_0001d1ed  ; jmp 0x1d1ed

loc_0001d0e5:
mov al, byte [esi]
lea edi, [ebp - 0x1e]
push ecx
push 0
push edi
mov byte [ebp - 0x1c], al
movzx eax, word [esi + 2]
mov word [ebp - 0x1e], 0
push eax
call fcn_0001cf4e  ; call 0x1cf4e
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
call fcn_0001cfc9  ; call 0x1cfc9
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
call fcn_0001713e  ; call 0x1713e
mov byte [ebx + 4], 0x11
mov al, byte [esi + 6]
mov byte [ebx + 5], al
jmp short loc_0001d1ea  ; jmp 0x1d1ea

loc_0001d174:
mov dword [ebx], 0
mov byte [ebx + 4], 0x12
jmp short loc_0001d1ca  ; jmp 0x1d1ca

loc_0001d180:
push edx
push 0
lea eax, [ebp - 0x1e]
push eax
movzx eax, word [esi]
push eax
call fcn_0001cf4e  ; call 0x1cf4e
movzx eax, byte [esi + 2]
movzx edx, word [ebp - 0x1e]
mov byte [ebx + 4], 0x13
mov byte [ebx + 5], 0
shl eax, 0x1f
or eax, edx
mov dword [ebx], eax
jmp short loc_0001d1ea  ; jmp 0x1d1ea

loc_0001d1a9:
mov dword [ebx], 0
mov byte [ebx + 4], 0x14
jmp short loc_0001d1ca  ; jmp 0x1d1ca

loc_0001d1b5:
mov al, byte [esi + 1]
mov dl, byte [esi]
mov byte [ebx + 4], 0x15
and eax, 1
add eax, eax
and edx, 1
or eax, edx
mov dword [ebx], eax

loc_0001d1ca:
mov byte [ebx + 5], 0
jmp short loc_0001d1ed  ; jmp 0x1d1ed

loc_0001d1d0:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001d1ed  ; je 0x1d1ed
push eax
push eax
push ref_00026801  ; push 0x26801
push 0x80000000
call fcn_00015487  ; call 0x15487

loc_0001d1ea:
add esp, 0x10

loc_0001d1ed:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001d1f5:
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
call fcn_00016fff  ; call 0x16fff
add esp, 0xc
push 0x10
push esi
push ebx
call fcn_0001d07a  ; call 0x1d07a
push edi
push esi
push dword [ebp - 0x1c]
push 2
call fcn_0001cc0f  ; call 0x1cc0f
add esp, 0x20
test eax, eax
jne short loc_0001d274  ; jne 0x1d274
cmp dword [edi], 0
jne short loc_0001d274  ; jne 0x1d274
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
call fcn_0001cf4e  ; call 0x1cf4e
mov edx, dword [ebp - 0x20]
add esp, 0xc
push 1
push ebx
shr edx, 0x15
push edx
call fcn_0001cfc9  ; call 0x1cfc9
mov eax, dword [ebp - 0x2c]
add esp, 0x10

loc_0001d274:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001d27c:
push ebp
mov ebp, esp
sub esp, 0x1c
push 0x11
lea eax, [ebp - 0x10]
push eax
lea eax, [ebp + 8]
push eax
call fcn_0001d07a  ; call 0x1d07a
push dword [ebp + 0x10]
push dword [ebp - 0x10]
push dword [ebp - 0xc]
push 2
call fcn_0001c9fc  ; call 0x1c9fc
leave
ret

fcn_0001d2a3:
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
call fcn_00016fff  ; call 0x16fff
add esp, 0xc
push 0x14
push esi
push ebx
call fcn_0001d07a  ; call 0x1d07a
push edi
push esi
push dword [ebp - 0x1c]
push 2
call fcn_0001cc0f  ; call 0x1cc0f
add esp, 0x20
test eax, eax
jne short loc_0001d2f3  ; jne 0x1d2f3
cmp dword [edi], 0
jne short loc_0001d2f3  ; jne 0x1d2f3
mov edx, dword [ebp - 0x20]
mov cl, dl
and edx, 2
and ecx, 1
shr edx, 1
mov byte [ebx], cl
mov byte [ebx + 1], dl

loc_0001d2f3:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001d2fb:
push ebp
mov ebp, esp
sub esp, 0x1c
push 0x15
lea eax, [ebp - 0x10]
push eax
lea eax, [ebp + 8]
push eax
call fcn_0001d07a  ; call 0x1d07a
push dword [ebp + 0xc]
push dword [ebp - 0x10]
push dword [ebp - 0xc]
push 2
call fcn_0001c9fc  ; call 0x1c9fc
leave
ret

fcn_0001d322:
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
call fcn_00016fff  ; call 0x16fff
add esp, 0xc
push 0x12
push esi
push ebx
call fcn_0001d07a  ; call 0x1d07a
push edi
push esi
push dword [ebp - 0x1c]
push 2
call fcn_0001cc0f  ; call 0x1cc0f
add esp, 0x20
test eax, eax
jne short loc_0001d373  ; jne 0x1d373
cmp dword [edi], 0
jne short loc_0001d373  ; jne 0x1d373
mov edx, dword [ebp - 0x20]
mov ecx, edx
and cx, 0xfff
shr edx, 0x1f
mov word [ebx], cx
mov byte [ebx + 2], dl

loc_0001d373:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001d37b:
push ebp
mov ebp, esp
sub esp, 0x1c
push 0x13
lea eax, [ebp - 0x10]
push eax
lea eax, [ebp + 8]
push eax
call fcn_0001d07a  ; call 0x1d07a
push dword [ebp + 0xc]
push dword [ebp - 0x10]
push dword [ebp - 0xc]
push 2
call fcn_0001c9fc  ; call 0x1c9fc
leave
ret

fcn_0001d3a2:
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
call fcn_00016fff  ; call 0x16fff
add esp, 0xc
push 1
push esi
push ebx
call fcn_0001d07a  ; call 0x1d07a
push edi
push esi
push dword [ebp - 0x1c]
push 2
call fcn_0001cc0f  ; call 0x1cc0f
add esp, 0x20
test eax, eax
jne short loc_0001d40d  ; jne 0x1d40d
cmp dword [edi], 0
jne short loc_0001d40d  ; jne 0x1d40d
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

loc_0001d40d:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001d415:
push ebp
mov ebp, esp
sub esp, 8
mov edx, dword [ref_000312e0]  ; mov edx, dword [0x312e0]
mov eax, dword [ebp + 0xc]
add eax, 3
and eax, 0xfffffffc
test edx, edx
jne short loc_0001d43a  ; jne 0x1d43a
mov dword [ref_000312e4], ref_00029db0  ; mov dword [0x312e4], 0x29db0
jmp short loc_0001d460  ; jmp 0x1d460

loc_0001d43a:
mov ecx, dword [ref_000312e4]  ; mov ecx, dword [0x312e4]
cmp dword [ecx + edx], 0x900ddea1
je short loc_0001d460  ; je 0x1d460
push eax
push 0x3d
push ref_00020660  ; push 0x20660
push ref_00026822  ; push 0x26822
call fcn_0001545e  ; call 0x1545e
add esp, 0x10

loc_0001d45e:
jmp short loc_0001d45e  ; jmp 0x1d45e

loc_0001d460:
lea ecx, [eax + edx]
cmp ecx, 0x752c
jbe short loc_0001d482  ; jbe 0x1d482
push eax
push 0x4b
push ref_00020660  ; push 0x20660
push ref_00026842  ; push 0x26842
call fcn_0001545e  ; call 0x1545e
add esp, 0x10

loc_0001d480:
jmp short loc_0001d480  ; jmp 0x1d480

loc_0001d482:
mov eax, dword [ref_000312e4]  ; mov eax, dword [0x312e4]
mov dword [ref_000312e0], ecx  ; mov dword [0x312e0], ecx
mov dword [eax + ecx], 0x900ddea1
mov ecx, dword [ebp + 0x10]
add edx, eax
xor eax, eax
mov dword [ecx], edx
leave
ret

fcn_0001d49f:
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
call fcn_00016406  ; call 0x16406
movzx esi, di
sub esp, 0xc
mov dword [ebp - 0x20], eax
lea eax, [esi + 0xc]
push eax
call fcn_00019d3d  ; call 0x19d3d
add esp, 0x10
mov ecx, dword [ebp - 0x20]
test eax, eax
mov edx, eax
jne short loc_0001d4fb  ; jne 0x1d4fb
call fcn_00015479  ; call 0x15479
mov edi, 0x80000009
test al, al
je short loc_0001d55f  ; je 0x1d55f
push eax
push esi
push ref_00026868  ; push 0x26868
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10
jmp short loc_0001d55f  ; jmp 0x1d55f

loc_0001d4fb:
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
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001d55f  ; je 0x1d55f
sub esp, 0xc
movzx eax, word [ebp - 0x1c]
push dword [ebx]
push esi
push eax
push ref_0002688e  ; push 0x2688e
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x20

loc_0001d55f:
lea esp, [ebp - 0xc]
mov eax, edi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001d569:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00016406  ; call 0x16406
mov edx, dword [eax + 0x26c]
mov eax, dword [ebp + 0xc]
add edx, 4
mov dword [eax], edx
xor eax, eax
leave
ret

fcn_0001d586:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x3c
call fcn_00016410  ; call 0x16410
sub esp, 0xc
push 0x27
mov edi, eax
call fcn_00019db6  ; call 0x19db6
mov dword [ebp - 0x1c], eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0001d5c2  ; je 0x1d5c2
cmp dword [ebp - 0x1c], 0
jne short loc_0001d5cc  ; jne 0x1d5cc
push edi
push ref_000268a8  ; push 0x268a8
push 0x41
jmp near loc_0001d72a  ; jmp 0x1d72a

loc_0001d5c2:
cmp dword [ebp - 0x1c], 0
je near loc_0001d737  ; je 0x1d737

loc_0001d5cc:
sub esp, 0xc
push 0xc
call fcn_00019db6  ; call 0x19db6
mov dword [ebp - 0x20], eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0001d5f8  ; je 0x1d5f8
cmp dword [ebp - 0x20], 0
jne short loc_0001d602  ; jne 0x1d602
push esi
push ref_000268e8  ; push 0x268e8
push 0x47
jmp near loc_0001d72a  ; jmp 0x1d72a

loc_0001d5f8:
cmp dword [ebp - 0x20], 0
je near loc_0001d737  ; je 0x1d737

loc_0001d602:
sub esp, 0xc
push 0x36
call fcn_00019db6  ; call 0x19db6
mov dword [ebp - 0x24], eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0001d62e  ; je 0x1d62e
cmp dword [ebp - 0x24], 0
jne short loc_0001d638  ; jne 0x1d638
push ebx
push ref_00026910  ; push 0x26910
push 0x4d
jmp near loc_0001d72a  ; jmp 0x1d72a

loc_0001d62e:
cmp dword [ebp - 0x24], 0
je near loc_0001d737  ; je 0x1d737

loc_0001d638:
sub esp, 0xc
push 0xd
call fcn_00019db6  ; call 0x19db6
mov dword [ebp - 0x28], eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0001d664  ; je 0x1d664
cmp dword [ebp - 0x28], 0
jne short loc_0001d66e  ; jne 0x1d66e
push ecx
push ref_0002692d  ; push 0x2692d
push 0x53
jmp near loc_0001d72a  ; jmp 0x1d72a

loc_0001d664:
cmp dword [ebp - 0x28], 0
je near loc_0001d737  ; je 0x1d737

loc_0001d66e:
sub esp, 0xc
push 0x102
call fcn_00019db6  ; call 0x19db6
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0001d69a  ; je 0x1d69a
test ebx, ebx
jne short loc_0001d6a2  ; jne 0x1d6a2
push edx
push ref_00026946  ; push 0x26946
push 0x59
jmp near loc_0001d72a  ; jmp 0x1d72a

loc_0001d69a:
test ebx, ebx
je near loc_0001d737  ; je 0x1d737

loc_0001d6a2:
sub esp, 0xc
push 0xdc
call fcn_00019db6  ; call 0x19db6
mov esi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0001d6cb  ; je 0x1d6cb
test esi, esi
jne short loc_0001d6cf  ; jne 0x1d6cf
push eax
push ref_00026960  ; push 0x26960
push 0x5f
jmp short loc_0001d72a  ; jmp 0x1d72a

loc_0001d6cb:
test esi, esi
je short loc_0001d737  ; je 0x1d737

loc_0001d6cf:
sub esp, 0xc
push 0x6b
call fcn_00019db6  ; call 0x19db6
mov dword [ebp - 0x2c], eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
mov edx, dword [ebp - 0x2c]
test al, al
je short loc_0001d6f9  ; je 0x1d6f9
test edx, edx
jne short loc_0001d6fd  ; jne 0x1d6fd
push eax
push ref_0002697f  ; push 0x2697f
push 0x65
jmp short loc_0001d72a  ; jmp 0x1d72a

loc_0001d6f9:
test edx, edx
je short loc_0001d737  ; je 0x1d737

loc_0001d6fd:
sub esp, 0xc
push 5
mov dword [ebp - 0x30], edx
call fcn_00019db6  ; call 0x19db6
mov dword [ebp - 0x2c], eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
mov edx, dword [ebp - 0x30]
test al, al
je short loc_0001d741  ; je 0x1d741
cmp dword [ebp - 0x2c], 0
jne short loc_0001d747  ; jne 0x1d747
push eax
push ref_0002699a  ; push 0x2699a
push 0x6b

loc_0001d72a:
push ref_000268cc  ; push 0x268cc
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001d737:
mov edx, 0x80000009
jmp near loc_0001dfa8  ; jmp 0x1dfa8

loc_0001d741:
cmp dword [ebp - 0x2c], 0
je short loc_0001d737  ; je 0x1d737

loc_0001d747:
sub esp, 0xc
push 0x11
mov dword [ebp - 0x34], edx
call fcn_00019db6  ; call 0x19db6
mov dword [ebp - 0x30], eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
mov edx, dword [ebp - 0x34]
test al, al
je short loc_0001d776  ; je 0x1d776
cmp dword [ebp - 0x30], 0
jne short loc_0001d77c  ; jne 0x1d77c
push eax
push ref_000269b6  ; push 0x269b6
push 0x71
jmp short loc_0001d72a  ; jmp 0x1d72a

loc_0001d776:
cmp dword [ebp - 0x30], 0
je short loc_0001d737  ; je 0x1d737

loc_0001d77c:
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
call fcn_0001f079  ; call 0x1f079
mov eax, dword [ebp - 0x20]
mov ecx, dword [ebp - 0x1c]
mov dword [eax], 0x80000010
mov dword [eax + 8], ecx
mov dword [eax + 4], ref_0002930c  ; mov dword [eax + 4], 0x2930c
mov byte [ecx], 0x13
call fcn_0001c651  ; call 0x1c651
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
je short loc_0001d811  ; je 0x1d811
push eax
push 0
push 2
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 2
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
mov edx, dword [ebp - 0x40]
add esp, 0x10

loc_0001d811:
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
jne short loc_0001d971  ; jne 0x1d971
cmp byte [ebp - 0x34], 0
je short loc_0001d975  ; je 0x1d975

loc_0001d971:
mov byte [ebx + 0x75], 0

loc_0001d975:
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
jne short loc_0001daf5  ; jne 0x1daf5
cmp byte [ebp - 0x34], 0
je short loc_0001db03  ; je 0x1db03

loc_0001daf5:
mov byte [ebx + 0xb1], 1
mov byte [ebx + 0xb2], 0x40

loc_0001db03:
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
jne short loc_0001dbff  ; jne 0x1dbff
cmp byte [ebp - 0x34], 0
jmp short loc_0001dc06  ; jmp 0x1dc06

loc_0001dbff:
cmp dword [ebp - 0x38], 0x40650

loc_0001dc06:
je short loc_0001dc87  ; je 0x1dc87
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

loc_0001dc87:
push ecx
push 0
push 0
push 0
mov dword [ebp - 0x24], edx
call fcn_00016c9a  ; call 0x16c9a
add eax, 2
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
mov edx, dword [ebp - 0x24]
mov ecx, eax
and ch, 0xfe
cmp cx, 0xc04
je short loc_0001dcce  ; je 0x1dcce
mov ecx, eax
and ecx, 0xfffffff7
cmp cx, 0xa04
je short loc_0001dcce  ; je 0x1dcce
and eax, 0xffffffef
cmp ax, 0x1604
sete al
movzx eax, al
jmp short loc_0001dcd3  ; jmp 0x1dcd3

loc_0001dcce:
mov eax, 1

loc_0001dcd3:
mov byte [ebx + 0xc6], al
mov word [ebx + 0xc8], 0xcf8
mov word [ebx + 0xca], 0xcfc
mov byte [ebx + 0xcc], 0xaa
mov dword [esi], fcn_00018ee1  ; mov dword [esi], 0x18ee1
mov dword [esi + 4], fcn_00018ef6  ; mov dword [esi + 4], 0x18ef6
mov dword [esi + 8], fcn_00018f64  ; mov dword [esi + 8], 0x18f64
mov dword [esi + 0xc], fcn_00018eea  ; mov dword [esi + 0xc], 0x18eea
mov dword [esi + 0x10], fcn_00018f27  ; mov dword [esi + 0x10], 0x18f27
mov dword [esi + 0x14], fcn_00018f97  ; mov dword [esi + 0x14], 0x18f97
mov dword [esi + 0x18], fcn_00017d8b  ; mov dword [esi + 0x18], 0x17d8b
mov dword [esi + 0x1c], fcn_00017dc2  ; mov dword [esi + 0x1c], 0x17dc2
mov dword [esi + 0x20], fcn_00017e4e  ; mov dword [esi + 0x20], 0x17e4e
mov dword [esi + 0x24], fcn_00017ed8  ; mov dword [esi + 0x24], 0x17ed8
mov dword [esi + 0x28], fcn_00017da5  ; mov dword [esi + 0x28], 0x17da5
mov dword [esi + 0x2c], fcn_00017e04  ; mov dword [esi + 0x2c], 0x17e04
mov dword [esi + 0x30], fcn_00017e8f  ; mov dword [esi + 0x30], 0x17e8f
mov dword [esi + 0x34], fcn_00016afd  ; mov dword [esi + 0x34], 0x16afd
mov dword [esi + 0x38], fcn_0001a282  ; mov dword [esi + 0x38], 0x1a282
mov dword [esi + 0x3c], fcn_0001a37c  ; mov dword [esi + 0x3c], 0x1a37c
mov dword [esi + 0x40], fcn_0001a2fa  ; mov dword [esi + 0x40], 0x1a2fa
mov dword [esi + 0x44], fcn_0001a3f5  ; mov dword [esi + 0x44], 0x1a3f5
mov dword [esi + 0x48], fcn_000167d0  ; mov dword [esi + 0x48], 0x167d0
mov dword [esi + 0x4c], fcn_000167fe  ; mov dword [esi + 0x4c], 0x167fe
mov dword [esi + 0x50], fcn_00016861  ; mov dword [esi + 0x50], 0x16861
mov dword [esi + 0x54], fcn_00016a4e  ; mov dword [esi + 0x54], 0x16a4e
mov dword [esi + 0x58], fcn_0001713e  ; mov dword [esi + 0x58], 0x1713e
mov dword [esi + 0x5c], fcn_0001f079  ; mov dword [esi + 0x5c], 0x1f079
mov dword [esi + 0x60], fcn_00016a89  ; mov dword [esi + 0x60], 0x16a89
mov dword [esi + 0x64], fcn_00016aa2  ; mov dword [esi + 0x64], 0x16aa2
mov dword [esi + 0x68], fcn_0001fdda  ; mov dword [esi + 0x68], 0x1fdda
mov dword [esi + 0x6c], fcn_0001724f  ; mov dword [esi + 0x6c], 0x1724f
mov dword [esi + 0x70], fcn_0001fe24  ; mov dword [esi + 0x70], 0x1fe24
mov dword [esi + 0x74], fcn_0001fe2d  ; mov dword [esi + 0x74], 0x1fe2d
mov eax, dword [ebp - 0x1c]
mov dword [esi + 0x78], fcn_0001670c  ; mov dword [esi + 0x78], 0x1670c
mov dword [esi + 0x7c], fcn_00016b44  ; mov dword [esi + 0x7c], 0x16b44
mov dword [esi + 0x80], fcn_0001cc0f  ; mov dword [esi + 0x80], 0x1cc0f
mov dword [esi + 0x84], fcn_0001c9fc  ; mov dword [esi + 0x84], 0x1c9fc
mov dword [esi + 0x88], fcn_00016ba4  ; mov dword [esi + 0x88], 0x16ba4
mov dword [esi + 0x8c], fcn_00016bab  ; mov dword [esi + 0x8c], 0x16bab
mov dword [esi + 0x90], fcn_00016bb3  ; mov dword [esi + 0x90], 0x16bb3
mov dword [esi + 0x94], fcn_00016bdc  ; mov dword [esi + 0x94], 0x16bdc
mov dword [esi + 0x98], fcn_000167ad  ; mov dword [esi + 0x98], 0x167ad
mov dword [esi + 0x9c], fcn_00016822  ; mov dword [esi + 0x9c], 0x16822
mov dword [esi + 0xa0], fcn_000175bc  ; mov dword [esi + 0xa0], 0x175bc
mov dword [esi + 0xa4], fcn_000175c6  ; mov dword [esi + 0xa4], 0x175c6
mov dword [esi + 0xa8], fcn_00016c50  ; mov dword [esi + 0xa8], 0x16c50
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

loc_0001dec9:
mov byte [edx + eax + 9], 8
mov byte [edx + eax + 0x19], 7
mov byte [edx + eax + 0x29], 2
inc eax
cmp eax, 0x10
jne short loc_0001dec9  ; jne 0x1dec9
mov eax, dword [ebp - 0x2c]
mov byte [edx + 0x49], 0
mov byte [eax], 0
xor eax, eax
mov byte [edx + 0x52], 0
mov byte [edx + 0x53], 0

loc_0001def2:
mov byte [edx + eax + 0x54], 8
inc eax
cmp eax, 8
jne short loc_0001def2  ; jne 0x1def2
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
call fcn_0001972b  ; call 0x1972b
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
mov edx, ebx
test al, al
je short loc_0001dfa8  ; je 0x1dfa8
test ebx, ebx
jns short loc_0001dfa8  ; jns 0x1dfa8
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001df8e  ; je 0x1df8e
push edx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001df8e:
push eax
push ref_000206f4  ; push 0x206f4
push 0x237
push ref_000268cc  ; push 0x268cc
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
mov edx, ebx

loc_0001dfa8:
lea esp, [ebp - 0xc]
mov eax, edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001dfb2:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
call fcn_00016410  ; call 0x16410
mov esi, eax
call fcn_0001bfbb  ; call 0x1bfbb
sub esp, 0xc
push 0x5ac
mov dword [ebp - 0x1c], eax
call fcn_00019db6  ; call 0x19db6
add esp, 0x10
mov ebx, eax
test eax, eax
jne short loc_0001e00b  ; jne 0x1e00b
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001e001  ; je 0x1e001
push eax
push ref_00022281  ; push 0x22281
push 0x129

loc_0001dff4:
push ref_000269cf  ; push 0x269cf
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001e001:
mov edx, 0x80000009
jmp near loc_0001e677  ; jmp 0x1e677

loc_0001e00b:
sub esp, 0xc
push 0xc
call fcn_00019db6  ; call 0x19db6
add esp, 0x10
mov dword [ebp - 0x20], eax
test eax, eax
jne short loc_0001e035  ; jne 0x1e035
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001e001  ; je 0x1e001
push eax
push ref_00022281  ; push 0x22281
push 0x12f
jmp short loc_0001dff4  ; jmp 0x1dff4

loc_0001e035:
mov eax, dword [ebp - 0x20]
xor edi, edi
mov dword [eax], 0x80000010
mov dword [eax + 4], ref_000291dc  ; mov dword [eax + 4], 0x291dc
mov dword [eax + 8], ebx
lea eax, [ebx + 0x284]
mov byte [ebx], 0xc
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

loc_0001e10e:
call fcn_0001c1e1  ; call 0x1c1e1
movzx eax, al
cmp edi, eax
jae short loc_0001e128  ; jae 0x1e128
imul eax, edi, 0x12
inc edi
or byte [ebx + eax + 0x1e1], 0x40
jmp short loc_0001e10e  ; jmp 0x1e10e

loc_0001e128:
mov al, byte [ebx + 0x436]
xor ecx, ecx
and byte [ebx + 0x426], 0xfe
or byte [ebx + 0x432], 7
or eax, 3
and eax, 0xfffffffb
mov word [ebx + 0x43a], 0
mov byte [ebx + 0x436], al
mov byte [ebx + 0x1a8], 1

loc_0001e15a:
mov dword [ebp - 0x28], ecx
call fcn_0001c1bf  ; call 0x1c1bf
mov ecx, dword [ebp - 0x28]
cmp cl, al
jae short loc_0001e192  ; jae 0x1e192
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
jmp short loc_0001e15a  ; jmp 0x1e15a

loc_0001e192:
or byte [ebx + 0x17a], 8
sub esp, 0xc
and byte [ebx + 0x1aa], 0xfe
mov byte [ebx + 0x1a6], 0
mov byte [ebx + 0x1a7], 0
mov byte [ebx + 0x1a9], 1
push 0xc
call fcn_00019db6  ; call 0x19db6
add esp, 0x10
test eax, eax
jne short loc_0001e1dc  ; jne 0x1e1dc
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001e240  ; je 0x1e240
push eax
push ref_00022281  ; push 0x22281
push 0xf8
jmp short loc_0001e233  ; jmp 0x1e233

loc_0001e1dc:
sub esp, 0xc
mov dword [eax], 0x80000010
mov dword [eax + 4], ref_0002911c  ; mov dword [eax + 4], 0x2911c
mov dword [eax + 8], ref_00029748  ; mov dword [eax + 8], 0x29748
push eax
call fcn_0001972b  ; call 0x1972b
mov edi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0001e240  ; je 0x1e240
test edi, edi
jns short loc_0001e240  ; jns 0x1e240
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001e228  ; je 0x1e228
push eax
push edi
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001e228:
push ecx
push ref_000206f4  ; push 0x206f4
push 0x101

loc_0001e233:
push ref_000269cf  ; push 0x269cf
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001e240:
mov dword [ebx + 0x1db], 1
xor edi, edi

loc_0001e24c:
call fcn_0001c1e1  ; call 0x1c1e1
mov edx, edi
cmp dl, al
jae near loc_0001e2db  ; jae 0x1e2db
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
jmp near loc_0001e24c  ; jmp 0x1e24c

loc_0001e2db:
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
call fcn_00015480  ; call 0x15480
mov byte [ebx + 0x38d], 4
push eax
push 4
push ref_000296b0  ; push 0x296b0
lea eax, [ebx + 0x38e]
push eax
call fcn_0001713e  ; call 0x1713e
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
call fcn_0001e681  ; call 0x1e681
mov al, byte [ebx + 0x40e]
add esp, 0x10
or eax, 3
and eax, 0xffffffc3
mov byte [ebx + 0x40e], al
xor eax, eax

loc_0001e404:
and byte [ebx + eax*8 + 0x554], 0xfc
mov word [ebx + eax*8 + 0x558], 0
mov word [ebx + eax*8 + 0x55a], 0
inc eax
cmp eax, 5
jne short loc_0001e404  ; jne 0x1e404
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

loc_0001e490:
mov dword [ebp - 0x24], ecx
call fcn_0001c1bf  ; call 0x1c1bf
mov ecx, dword [ebp - 0x24]
cmp cl, al
jae short loc_0001e4ad  ; jae 0x1e4ad
movzx eax, cl
inc ecx
imul eax, eax, 0x2c
mov byte [ebx + eax + 0x58], 1
jmp short loc_0001e490  ; jmp 0x1e490

loc_0001e4ad:
and byte [ebx + 0x45e], 0xf7
xor ecx, ecx

loc_0001e4b6:
mov dword [ebp - 0x24], ecx
call fcn_0001c1bf  ; call 0x1c1bf
mov ecx, dword [ebp - 0x24]
cmp cl, al
jae short loc_0001e524  ; jae 0x1e524
cmp dword [ebp - 0x1c], 2
movzx eax, cl
jne short loc_0001e4e3  ; jne 0x1e4e3
imul esi, eax, 0x2c
lea esi, [ebx + esi + 0x50]
mov word [esi + 0xa], 0x1003
mov word [esi + 0xc], 0x1003
jmp short loc_0001e4fc  ; jmp 0x1e4fc

loc_0001e4e3:
cmp dword [ebp - 0x1c], 1
jne short loc_0001e4fc  ; jne 0x1e4fc
imul esi, eax, 0x2c
lea esi, [ebx + esi + 0x50]
mov word [esi + 0xa], 0x846
mov word [esi + 0xc], 0x846

loc_0001e4fc:
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
jmp short loc_0001e4b6  ; jmp 0x1e4b6

loc_0001e524:
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
and eax, 1
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

loc_0001e5a7:
mov dword [ebx + eax*4 + 0x1ba], 0
inc eax
cmp eax, 8
jne short loc_0001e5a7  ; jne 0x1e5a7
cmp dword [ebp - 0x1c], 2
lea eax, [ebx + 0x4de]
lea esi, [ebx + 0x527]
jne short loc_0001e5f2  ; jne 0x1e5f2
mov byte [ebx + 0x526], 5
push edi
push 0x28
push ref_000296f0  ; push 0x296f0
push eax
call fcn_0001713e  ; call 0x1713e
add esp, 0xc
mov byte [ebx + 0x553], 9
push 0x24
push ref_000296b4  ; push 0x296b4
jmp short loc_0001e618  ; jmp 0x1e618

loc_0001e5f2:
mov byte [ebx + 0x526], 6
push ecx
push 0x30
push ref_00029718  ; push 0x29718
push eax
call fcn_0001713e  ; call 0x1713e
add esp, 0xc
mov byte [ebx + 0x553], 6
push 0x18
push ref_000296d8  ; push 0x296d8

loc_0001e618:
push esi
call fcn_0001713e  ; call 0x1713e
add esp, 0x10
sub esp, 0xc
push dword [ebp - 0x20]
call fcn_0001972b  ; call 0x1972b
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
mov edx, ebx
test al, al
je short loc_0001e677  ; je 0x1e677
test ebx, ebx
jns short loc_0001e677  ; jns 0x1e677
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001e65d  ; je 0x1e65d
push edx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001e65d:
push eax
push ref_000206f4  ; push 0x206f4
push 0x2d5
push ref_000269cf  ; push 0x269cf
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
mov edx, ebx

loc_0001e677:
lea esp, [ebp - 0xc]
mov eax, edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001e681:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov ebx, dword [ebp + 8]
call fcn_00016410  ; call 0x16410
test ebx, ebx
jne short loc_0001e6bd  ; jne 0x1e6bd
call fcn_00015480  ; call 0x15480
test al, al
je near loc_0001ecf3  ; je 0x1ecf3
push edx
push ref_00022281  ; push 0x22281
push 0x35
push ref_000269ec  ; push 0x269ec
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
jmp near loc_0001ecf3  ; jmp 0x1ecf3

loc_0001e6bd:
mov esi, eax
call fcn_0001bfbb  ; call 0x1bfbb
mov edi, eax
push eax
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
add eax, 2
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
xor ecx, ecx
mov byte [ebx], 0
mov byte [ebx + 8], 0
mov byte [ebx + 0x11], 1
mov byte [ebx + 0x10], 1
mov byte [ebx + 0x13], 0
mov edx, eax
mov byte [ebx + 0x12], 1

loc_0001e6fb:
mov dword [ebp - 0x20], edx
mov dword [ebp - 0x1c], ecx
call fcn_0001c261  ; call 0x1c261
mov ecx, dword [ebp - 0x1c]
mov edx, dword [ebp - 0x20]
movzx eax, al
cmp ecx, eax
jae short loc_0001e71b  ; jae 0x1e71b
mov byte [ebx + ecx + 0x14], 0
inc ecx
jmp short loc_0001e6fb  ; jmp 0x1e6fb

loc_0001e71b:
xor ecx, ecx

loc_0001e71d:
mov dword [ebp - 0x20], edx
mov dword [ebp - 0x1c], ecx
call fcn_0001c2f8  ; call 0x1c2f8
mov ecx, dword [ebp - 0x1c]
mov edx, dword [ebp - 0x20]
movzx eax, al
cmp ecx, eax
jae short loc_0001e73d  ; jae 0x1e73d
mov byte [ebx + ecx + 0x22], 0
inc ecx
jmp short loc_0001e71d  ; jmp 0x1e71d

loc_0001e73d:
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
jne near loc_0001eb4c  ; jne 0x1eb4c
mov eax, edx
and eax, 0xfffffff7
cmp ax, 0x8c44
je short loc_0001ea33  ; je 0x1ea33
mov ecx, edx
and ecx, 0xfffffffb
cmp dx, 0x8c50
jne short loc_0001ea3a  ; jne 0x1ea3a

loc_0001ea33:
lea edi, [ebx + 0x2f]
xor edx, edx
jmp short loc_0001ea8a  ; jmp 0x1ea8a

loc_0001ea3a:
cmp dx, 0x8c5c
je short loc_0001ea33  ; je 0x1ea33
mov edi, edx
and edi, 0xfffffff3
cmp di, 0x8c42
je short loc_0001ea33  ; je 0x1ea33
cmp dx, 0x8cc4
je short loc_0001ea33  ; je 0x1ea33
cmp cx, 0x8cc2
jne short loc_0001eaa3  ; jne 0x1eaa3
jmp short loc_0001ea33  ; jmp 0x1ea33

loc_0001ea5d:
cmp byte [edi + 3], 1
sbb eax, eax
not eax
add eax, 4
cmp byte [edi + 3], 0
mov byte [edi - 1], al
jne short loc_0001ea9e  ; jne 0x1ea9e
mov ax, word [edi + 1]
cmp ax, 0x7f
jbe short loc_0001ea9e  ; jbe 0x1ea9e
cmp ax, 0x130
sbb eax, eax
add eax, 4
mov byte [edi], al

loc_0001ea86:
inc edx
add edi, 8

loc_0001ea8a:
mov dword [ebp - 0x1c], edx
call fcn_0001c261  ; call 0x1c261
mov edx, dword [ebp - 0x1c]
movzx eax, al
cmp edx, eax
jb short loc_0001ea5d  ; jb 0x1ea5d
jmp short loc_0001eacd  ; jmp 0x1eacd

loc_0001ea9e:
mov byte [edi], 2
jmp short loc_0001ea86  ; jmp 0x1ea86

loc_0001eaa3:
cmp cx, 0x8c4b
je short loc_0001eae5  ; je 0x1eae5
cmp ax, 0x8c41
je short loc_0001eae5  ; je 0x1eae5
lea eax, [edx + 0x63bf]
cmp ax, 6
jbe short loc_0001eae5  ; jbe 0x1eae5
cmp dx, 0x8cc5
je short loc_0001eae5  ; je 0x1eae5
and edx, 0xfffffffd
cmp dx, 0x8cc1
je short loc_0001eae5  ; je 0x1eae5

loc_0001eacd:
cmp dword [esi + 0x10], 0
je near loc_0001ec26  ; je 0x1ec26
mov byte [ebx], 1
xor edi, edi
mov byte [ebx + 0x13], 1
jmp near loc_0001ebf4  ; jmp 0x1ebf4

loc_0001eae5:
lea edi, [ebx + 0x2f]
xor edx, edx

loc_0001eaea:
mov dword [ebp - 0x1c], edx
call fcn_0001c261  ; call 0x1c261
mov edx, dword [ebp - 0x1c]
movzx eax, al
cmp edx, eax
jae short loc_0001eacd  ; jae 0x1eacd
mov al, byte [edi + 3]
cmp al, 5
jne short loc_0001eb09  ; jne 0x1eb09
mov byte [edi - 1], 5
jmp short loc_0001eb24  ; jmp 0x1eb24

loc_0001eb09:
cmp al, 2
jne short loc_0001eb13  ; jne 0x1eb13
mov byte [edi - 1], 4
jmp short loc_0001eb2d  ; jmp 0x1eb2d

loc_0001eb13:
cmp word [edi + 1], 0x70
sbb ecx, ecx
add ecx, 6
mov byte [edi - 1], cl
cmp al, 5
jne short loc_0001eb29  ; jne 0x1eb29

loc_0001eb24:
mov byte [edi], 2
jmp short loc_0001eb46  ; jmp 0x1eb46

loc_0001eb29:
cmp al, 2
jne short loc_0001eb39  ; jne 0x1eb39

loc_0001eb2d:
cmp word [edi + 1], 0x50
sbb eax, eax
add eax, 2
jmp short loc_0001eb44  ; jmp 0x1eb44

loc_0001eb39:
cmp word [edi + 1], 0x100
sbb eax, eax
add eax, 3

loc_0001eb44:
mov byte [edi], al

loc_0001eb46:
inc edx
add edi, 8
jmp short loc_0001eaea  ; jmp 0x1eaea

loc_0001eb4c:
cmp edi, 2
jne near loc_0001eacd  ; jne 0x1eacd
lea eax, [edx + 0x63bf]
xor ecx, ecx
mov word [ebp - 0x1c], ax
lea eax, [edx + 0x633f]
lea edi, [ebx + 0x2f]
mov word [ebp - 0x20], ax

loc_0001eb6e:
mov dword [ebp - 0x24], ecx
call fcn_0001c261  ; call 0x1c261
mov ecx, dword [ebp - 0x24]
movzx eax, al
cmp ecx, eax
jae near loc_0001eacd  ; jae 0x1eacd
cmp word [ebp - 0x1c], 6
ja short loc_0001ebad  ; ja 0x1ebad
mov al, byte [edi + 3]
cmp al, 3
je short loc_0001eb96  ; je 0x1eb96
test al, al
jne short loc_0001eba2  ; jne 0x1eba2

loc_0001eb96:
cmp word [edi + 1], 0x70
sbb eax, eax
add eax, 6
jmp short loc_0001ebaa  ; jmp 0x1ebaa

loc_0001eba2:
cmp al, 2
setne al
add eax, 4

loc_0001ebaa:
mov byte [edi - 1], al

loc_0001ebad:
cmp word [ebp - 0x20], 0xa
ja short loc_0001ebb8  ; ja 0x1ebb8
mov byte [edi - 1], 6

loc_0001ebb8:
mov al, byte [edi + 3]
mov dl, al
and edx, 0xfffffffb
cmp dl, 3
je short loc_0001ebc9  ; je 0x1ebc9
test al, al
jne short loc_0001ebd6  ; jne 0x1ebd6

loc_0001ebc9:
cmp word [edi + 1], 0x100
sbb eax, eax
add eax, 3
jmp short loc_0001ebe4  ; jmp 0x1ebe4

loc_0001ebd6:
cmp al, 2
jne short loc_0001ebe8  ; jne 0x1ebe8
cmp word [edi + 1], 0x50
sbb eax, eax
add eax, 2

loc_0001ebe4:
mov byte [edi], al
jmp short loc_0001ebeb  ; jmp 0x1ebeb

loc_0001ebe8:
mov byte [edi], 2

loc_0001ebeb:
inc ecx
add edi, 8
jmp near loc_0001eb6e  ; jmp 0x1eb6e

loc_0001ebf4:
call fcn_0001c261  ; call 0x1c261
movzx eax, al
cmp edi, eax
jae short loc_0001ec08  ; jae 0x1ec08
mov byte [ebx + edi + 0x14], 1
inc edi
jmp short loc_0001ebf4  ; jmp 0x1ebf4

loc_0001ec08:
mov byte [ebx + 0x15], 0
xor edi, edi

loc_0001ec0e:
call fcn_0001c2f8  ; call 0x1c2f8
movzx eax, al
cmp edi, eax
jae short loc_0001ec22  ; jae 0x1ec22
mov byte [ebx + edi + 0x22], 1
inc edi
jmp short loc_0001ec0e  ; jmp 0x1ec0e

loc_0001ec22:
mov byte [ebx + 0x23], 0

loc_0001ec26:
xor ebx, ebx

loc_0001ec28:
call fcn_0001c2f8  ; call 0x1c2f8
movzx eax, al
cmp ebx, eax
jae near loc_0001ecf3  ; jae 0x1ecf3
mov dl, byte [esi + ebx + 0xb2]
mov eax, dword [ebp + 0xc]
mov ecx, dword [ebp + 0xc]
test dl, dl
mov al, byte [eax + ebx*8 + 4]
je short loc_0001ec55  ; je 0x1ec55
mov byte [ecx + ebx*8], dl
or eax, 1
jmp short loc_0001ec5c  ; jmp 0x1ec5c

loc_0001ec55:
mov byte [ecx + ebx*8], 0
and eax, 0xfffffffe

loc_0001ec5c:
mov byte [ecx + ebx*8 + 4], al
mov dl, byte [esi + ebx + 0xb8]
mov eax, dword [ebp + 0xc]
mov ecx, dword [ebp + 0xc]
test dl, dl
mov al, byte [eax + ebx*8 + 4]
je short loc_0001ec7e  ; je 0x1ec7e
mov byte [ecx + ebx*8 + 1], dl
or eax, 2
jmp short loc_0001ec86  ; jmp 0x1ec86

loc_0001ec7e:
mov byte [ecx + ebx*8 + 1], 0
and eax, 0xfffffffd

loc_0001ec86:
mov byte [ecx + ebx*8 + 4], al
mov dl, byte [esi + ebx + 0xbe]
mov eax, dword [ebp + 0xc]
mov ecx, dword [ebp + 0xc]
test dl, dl
mov al, byte [eax + ebx*8 + 4]
je short loc_0001ecac  ; je 0x1ecac
or eax, 4
mov byte [ecx + ebx*8 + 2], dl
mov byte [ecx + ebx*8 + 4], al
jmp short loc_0001ecb8  ; jmp 0x1ecb8

loc_0001ecac:
and eax, 0xfffffffb
mov byte [ecx + ebx*8 + 2], 0
mov byte [ecx + ebx*8 + 4], al

loc_0001ecb8:
mov dl, byte [esi + ebx + 0xc4]
mov eax, dword [ebp + 0xc]
test dl, dl
mov al, byte [eax + ebx*8 + 4]
je short loc_0001ecde  ; je 0x1ecde
mov ecx, dword [ebp + 0xc]
lea edx, [edx + edx + 1]
or eax, 8
mov byte [ecx + ebx*8 + 3], dl
mov byte [ecx + ebx*8 + 4], al
jmp short loc_0001eced  ; jmp 0x1eced

loc_0001ecde:
mov ecx, dword [ebp + 0xc]
and eax, 0xfffffff7
mov byte [ecx + ebx*8 + 3], 0
mov byte [ecx + ebx*8 + 4], al

loc_0001eced:
inc ebx
jmp near loc_0001ec28  ; jmp 0x1ec28

loc_0001ecf3:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001ecfb:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x28
push 0x15
call fcn_00019db6  ; call 0x19db6
add esp, 0x10
mov edi, eax
test eax, eax
jne short loc_0001ed2b  ; jne 0x1ed2b
call fcn_00015480  ; call 0x15480
test al, al
je near loc_0001edab  ; je 0x1edab
push eax
push ref_00026a09  ; push 0x26a09
push 0x34
jmp short loc_0001ed9e  ; jmp 0x1ed9e

loc_0001ed2b:
sub esp, 0xc
push 0xc
call fcn_00019db6  ; call 0x19db6
add esp, 0x10
mov dword [ebp - 0x1c], eax
test eax, eax
jne short loc_0001ed52  ; jne 0x1ed52
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001edab  ; je 0x1edab
push eax
push ref_00026a4b  ; push 0x26a4b
push 0x3a
jmp short loc_0001ed9e  ; jmp 0x1ed9e

loc_0001ed52:
sub esp, 0xc
push 5
call fcn_00019db6  ; call 0x19db6
add esp, 0x10
test eax, eax
jne short loc_0001ed76  ; jne 0x1ed76
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001edab  ; je 0x1edab
push edi
push ref_00026a74  ; push 0x26a74
push 0x40
jmp short loc_0001ed9e  ; jmp 0x1ed9e

loc_0001ed76:
sub esp, 0xc
push 0xc
mov dword [ebp - 0x20], eax
call fcn_00019db6  ; call 0x19db6
add esp, 0x10
mov edx, dword [ebp - 0x20]
test eax, eax
jne short loc_0001edb5  ; jne 0x1edb5
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001edab  ; je 0x1edab
push esi
push ref_00026a8e  ; push 0x26a8e
push 0x46

loc_0001ed9e:
push ref_00026a2e  ; push 0x26a2e
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001edab:
mov edx, 0x80000009
jmp near loc_0001ef81  ; jmp 0x1ef81

loc_0001edb5:
sub esp, 0xc
push 0x1d
mov dword [ebp - 0x20], edx
mov dword [ebp - 0x24], eax
call fcn_00019db6  ; call 0x19db6
add esp, 0x10
mov edx, dword [ebp - 0x20]
mov ecx, dword [ebp - 0x24]
test eax, eax
mov ebx, eax
jne short loc_0001ede7  ; jne 0x1ede7
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001edab  ; je 0x1edab
push ebx
push ref_00026aad  ; push 0x26aad
push 0x4c
jmp short loc_0001ed9e  ; jmp 0x1ed9e

loc_0001ede7:
sub esp, 0xc
push 0x13
mov dword [ebp - 0x24], ecx
mov dword [ebp - 0x20], edx
call fcn_00019db6  ; call 0x19db6
add esp, 0x10
mov edx, dword [ebp - 0x20]
mov ecx, dword [ebp - 0x24]
test eax, eax
mov esi, eax
jne short loc_0001ee19  ; jne 0x1ee19
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001edab  ; je 0x1edab
push ecx
push ref_000269b6  ; push 0x269b6
push 0x52
jmp short loc_0001ed9e  ; jmp 0x1ed9e

loc_0001ee19:
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
call fcn_0001c651  ; call 0x1c651
cmp eax, 0x40650
jne short loc_0001eebd  ; jne 0x1eebd

loc_0001ee9b:
mov byte [ebx + 0xe], 1
call fcn_0001c651  ; call 0x1c651
mov byte [ebx + 0x10], 0
mov byte [ebx + 0x16], 1
cmp eax, 0x306d0
setne al
lea eax, [eax + eax*4 + 0x6a]
mov byte [ebx + 0xf], al
jmp short loc_0001eec9  ; jmp 0x1eec9

loc_0001eebd:
call fcn_0001c651  ; call 0x1c651
cmp eax, 0x306d0
je short loc_0001ee9b  ; je 0x1ee9b

loc_0001eec9:
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
mov dword [eax + 4], ref_0002928c  ; mov dword [eax + 4], 0x2928c
mov dword [eax + 8], edi
push eax
call fcn_0001972b  ; call 0x1972b
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
mov edx, ebx
test al, al
je short loc_0001ef81  ; je 0x1ef81
test ebx, ebx
jns short loc_0001ef81  ; jns 0x1ef81
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001ef67  ; je 0x1ef67
push edx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001ef67:
push eax
push ref_000206f4  ; push 0x206f4
push 0xb3
push ref_00026a2e  ; push 0x26a2e
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
mov edx, ebx

loc_0001ef81:
lea esp, [ebp - 0xc]
mov eax, edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001ef8b:
push ebp
mov ebp, esp
push esi
push ebx
sub esp, 0xc
push 2
call fcn_00019db6  ; call 0x19db6
mov esi, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0001efb6  ; je 0x1efb6
test esi, esi
jne short loc_0001efba  ; jne 0x1efba
push esi
push ref_00026acd  ; push 0x26acd
push 0x2d
jmp short loc_0001efde  ; jmp 0x1efde

loc_0001efb6:
test esi, esi
je short loc_0001efeb  ; je 0x1efeb

loc_0001efba:
sub esp, 0xc
push 0xc
call fcn_00019db6  ; call 0x19db6
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0001eff2  ; je 0x1eff2
test ebx, ebx
jne short loc_0001eff6  ; jne 0x1eff6
push ebx
push ref_00026b0d  ; push 0x26b0d
push 0x33

loc_0001efde:
push ref_00026af1  ; push 0x26af1
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001efeb:
mov ebx, 0x80000009
jmp short loc_0001f070  ; jmp 0x1f070

loc_0001eff2:
test ebx, ebx
je short loc_0001efeb  ; je 0x1efeb

loc_0001eff6:
sub esp, 0xc
mov dword [ebx], 0x80000010
mov dword [ebx + 4], ref_0002920c  ; mov dword [ebx + 4], 0x2920c
mov byte [esi], 1
mov dword [ebx + 8], esi
push ebx
call fcn_0001972b  ; call 0x1972b
mov ebx, eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0001f056  ; je 0x1f056
test ebx, ebx
jns short loc_0001f056  ; jns 0x1f056
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001f041  ; je 0x1f041
push ecx
push ebx
push ref_000206d3  ; push 0x206d3
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001f041:
push edx
push ref_000206f4  ; push 0x206f4
push 0x4e
push ref_00026af1  ; push 0x26af1
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f056:
call fcn_00015479  ; call 0x15479
test al, al
je short loc_0001f070  ; je 0x1f070
push eax
push eax
push ref_00026b35  ; push 0x26b35
push 0x40
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_0001f070:
lea esp, [ebp - 8]
mov eax, ebx
pop ebx
pop esi
pop ebp
ret

fcn_0001f079:
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
je short loc_0001f0d2  ; je 0x1f0d2
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f0b8  ; je 0x1f0b8
mov eax, ebx
lea edx, [esi - 1]
not eax
cmp edx, eax
jbe short loc_0001f0b8  ; jbe 0x1f0b8
push eax
push ref_00026b5b  ; push 0x26b5b
push 0x36
push ref_00026b88  ; push 0x26b88
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f0b8:
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
jmp near loc_0001f1b5  ; jmp 0x1f1b5

loc_0001f0d2:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001f0dc:
push ebp
mov ebp, esp
pop ebp
jmp near fcn_0001f0e5  ; jmp 0x1f0e5

fcn_0001f0e5:
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
je near loc_0001f1ab  ; je 0x1f1ab
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f121  ; je 0x1f121
test ebx, ebx
jne short loc_0001f121  ; jne 0x1f121
push eax
push ref_0002619a  ; push 0x2619a
push 0x3a
push ref_00026bcd  ; push 0x26bcd
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f121:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f14a  ; je 0x1f14a
mov eax, ebx
lea edx, [esi - 1]
not eax
cmp edx, eax
jbe short loc_0001f14a  ; jbe 0x1f14a
push ecx
push ref_00026b5b  ; push 0x26b5b
push 0x3b
push ref_00026bcd  ; push 0x26bcd
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f14a:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f16d  ; je 0x1f16d
test bl, 3
je short loc_0001f16d  ; je 0x1f16d
push edx
push ref_00026c14  ; push 0x26c14
push 0x3c
push ref_00026bcd  ; push 0x26bcd
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f16d:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f193  ; je 0x1f193
test esi, 3
je short loc_0001f193  ; je 0x1f193
push eax
push ref_00026c42  ; push 0x26c42
push 0x3d
push ref_00026bcd  ; push 0x26bcd
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f193:
shr esi, 2
mov dword [ebp + 0x10], edi
mov dword [ebp + 0xc], esi
mov dword [ebp + 8], ebx
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near loc_0001f1e0  ; jmp 0x1f1e0

loc_0001f1ab:
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

loc_0001f1b5:
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

loc_0001f1e0:
push edi
mov eax, dword [esp + 0x10]
mov edi, dword [esp + 8]
mov ecx, dword [esp + 0xc]
rep stosd  ; rep stosd dword es:[edi], eax
mov eax, dword [esp + 8]
pop edi
ret

fcn_0001f1f5:
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

fcn_0001f20e:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f246  ; je 0x1f246
mov ecx, dword [ebp + 0x10]
mov eax, dword [ebp + 0x14]
sub ecx, dword [ebp + 0xc]
shr eax, cl
mov edx, eax
and edx, 1
cmp eax, edx
je short loc_0001f246  ; je 0x1f246
push eax
push ref_00026c67  ; push 0x26c67
push 0x4d
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f246:
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

fcn_0001f261:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f299  ; je 0x1f299
mov ecx, dword [ebp + 0x10]
mov eax, dword [ebp + 0x14]
sub ecx, dword [ebp + 0xc]
shr eax, cl
mov edx, eax
and edx, 1
cmp eax, edx
je short loc_0001f299  ; je 0x1f299
push eax
push ref_00026ce4  ; push 0x26ce4
push 0x77
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f299:
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

fcn_0001f2b6:
push ebp
mov ebp, esp
push ebx
push ecx
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f2e5  ; je 0x1f2e5
cmp dword [ebp + 0x10], 7
jbe short loc_0001f2e5  ; jbe 0x1f2e5
push edx
push ref_00026d2f  ; push 0x26d2f
push 0x9b
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f2e5:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f30e  ; je 0x1f30e
mov eax, dword [ebp + 0x10]
cmp dword [ebp + 0xc], eax
jbe short loc_0001f30e  ; jbe 0x1f30e
push eax
push ref_00025b30  ; push 0x25b30
push 0x9c
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f30e:
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

fcn_0001f329:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
mov ebx, dword [ebp + 0x10]
mov edi, dword [ebp + 0x14]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f361  ; je 0x1f361
cmp ebx, 7
jbe short loc_0001f361  ; jbe 0x1f361
push edx
push ref_00026d2f  ; push 0x26d2f
push 0xe6
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f361:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f387  ; je 0x1f387
cmp dword [ebp + 0xc], ebx
jbe short loc_0001f387  ; jbe 0x1f387
push eax
push ref_00025b30  ; push 0x25b30
push 0xe7
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f387:
mov eax, edi
movzx edi, al
mov eax, esi
push edi
movzx esi, al
push ebx
push dword [ebp + 0xc]
push esi
call fcn_0001f20e  ; call 0x1f20e
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001f3a4:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
mov ebx, dword [ebp + 0x10]
mov edi, dword [ebp + 0x14]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f3dc  ; je 0x1f3dc
cmp ebx, 7
jbe short loc_0001f3dc  ; jbe 0x1f3dc
push edx
push ref_00026d2f  ; push 0x26d2f
push 0x10c
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f3dc:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f402  ; je 0x1f402
cmp dword [ebp + 0xc], ebx
jbe short loc_0001f402  ; jbe 0x1f402
push eax
push ref_00025b30  ; push 0x25b30
push 0x10d
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f402:
mov eax, edi
movzx edi, al
mov eax, esi
push edi
movzx esi, al
push ebx
push dword [ebp + 0xc]
push esi
call fcn_0001f261  ; call 0x1f261
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001f41f:
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
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f463  ; je 0x1f463
cmp ebx, 7
jbe short loc_0001f463  ; jbe 0x1f463
push edx
push ref_00026d2f  ; push 0x26d2f
push 0x136
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f463:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f488  ; je 0x1f488
cmp esi, ebx
jbe short loc_0001f488  ; jbe 0x1f488
push eax
push ref_00025b30  ; push 0x25b30
push 0x137
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f488:
mov eax, edi
movzx edi, al
movzx eax, byte [ebp - 0x1c]
push edi
push ebx
push esi
push eax
call fcn_0001f3a4  ; call 0x1f3a4
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
jmp near fcn_0001f329  ; jmp 0x1f329

fcn_0001f4bc:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
mov ebx, dword [ebp + 0x10]
mov edi, dword [ebp + 0x14]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f4f4  ; je 0x1f4f4
cmp ebx, 7
jbe short loc_0001f4f4  ; jbe 0x1f4f4
push edx
push ref_00026d2f  ; push 0x26d2f
push 0xc0
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f4f4:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f51a  ; je 0x1f51a
cmp dword [ebp + 0xc], ebx
jbe short loc_0001f51a  ; jbe 0x1f51a
push eax
push ref_00025b30  ; push 0x25b30
push 0xc1
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f51a:
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
call fcn_0001f41f  ; call 0x1f41f
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001f53c:
push ebp
mov ebp, esp
push ebx
push ecx
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f56b  ; je 0x1f56b
cmp dword [ebp + 0x10], 0xf
jbe short loc_0001f56b  ; jbe 0x1f56b
push edx
push ref_00026d3a  ; push 0x26d3a
push 0x15b
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f56b:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f594  ; je 0x1f594
mov eax, dword [ebp + 0x10]
cmp dword [ebp + 0xc], eax
jbe short loc_0001f594  ; jbe 0x1f594
push eax
push ref_00025b30  ; push 0x25b30
push 0x15c
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f594:
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

fcn_0001f5af:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
mov ebx, dword [ebp + 0x10]
mov edi, dword [ebp + 0x14]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f5e7  ; je 0x1f5e7
cmp ebx, 0xf
jbe short loc_0001f5e7  ; jbe 0x1f5e7
push edx
push ref_00026d3a  ; push 0x26d3a
push 0x1a6
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f5e7:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f60d  ; je 0x1f60d
cmp dword [ebp + 0xc], ebx
jbe short loc_0001f60d  ; jbe 0x1f60d
push eax
push ref_00025b30  ; push 0x25b30
push 0x1a7
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f60d:
movzx edi, di
movzx esi, si
push edi
push ebx
push dword [ebp + 0xc]
push esi
call fcn_0001f20e  ; call 0x1f20e
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001f626:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
mov ebx, dword [ebp + 0x10]
mov edi, dword [ebp + 0x14]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f65e  ; je 0x1f65e
cmp ebx, 0xf
jbe short loc_0001f65e  ; jbe 0x1f65e
push edx
push ref_00026d3a  ; push 0x26d3a
push 0x1cc
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f65e:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f684  ; je 0x1f684
cmp dword [ebp + 0xc], ebx
jbe short loc_0001f684  ; jbe 0x1f684
push eax
push ref_00025b30  ; push 0x25b30
push 0x1cd
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f684:
movzx edi, di
movzx esi, si
push edi
push ebx
push dword [ebp + 0xc]
push esi
call fcn_0001f261  ; call 0x1f261
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001f69d:
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
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f6e1  ; je 0x1f6e1
cmp ebx, 0xf
jbe short loc_0001f6e1  ; jbe 0x1f6e1
push edx
push ref_00026d3a  ; push 0x26d3a
push 0x1f6
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f6e1:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f706  ; je 0x1f706
cmp esi, ebx
jbe short loc_0001f706  ; jbe 0x1f706
push eax
push ref_00025b30  ; push 0x25b30
push 0x1f7
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f706:
movzx eax, word [ebp - 0x1c]
movzx edi, di
push edi
push ebx
push esi
push eax
call fcn_0001f626  ; call 0x1f626
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
jmp near fcn_0001f5af  ; jmp 0x1f5af

fcn_0001f738:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
mov ebx, dword [ebp + 0x10]
mov edi, dword [ebp + 0x14]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f770  ; je 0x1f770
cmp ebx, 0xf
jbe short loc_0001f770  ; jbe 0x1f770
push edx
push ref_00026d3a  ; push 0x26d3a
push 0x180
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f770:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f796  ; je 0x1f796
cmp dword [ebp + 0xc], ebx
jbe short loc_0001f796  ; jbe 0x1f796
push eax
push ref_00025b30  ; push 0x25b30
push 0x181
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f796:
sub esp, 0xc
movzx edi, di
push edi
movzx esi, si
push 0
push ebx
push dword [ebp + 0xc]
push esi
call fcn_0001f69d  ; call 0x1f69d
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001f7b4:
push ebp
mov ebp, esp
sub esp, 8
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f7e1  ; je 0x1f7e1
cmp dword [ebp + 0x10], 0x1f
jbe short loc_0001f7e1  ; jbe 0x1f7e1
push edx
push ref_00026d46  ; push 0x26d46
push 0x21b
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f7e1:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f80a  ; je 0x1f80a
mov eax, dword [ebp + 0x10]
cmp dword [ebp + 0xc], eax
jbe short loc_0001f80a  ; jbe 0x1f80a
push eax
push ref_00025b30  ; push 0x25b30
push 0x21c
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f80a:
mov cl, byte [ebp + 0x10]
mov eax, 0xfffffffe
shl eax, cl
mov cl, byte [ebp + 0xc]
not eax
and eax, dword [ebp + 8]
leave
shr eax, cl
ret

fcn_0001f820:
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
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f85e  ; je 0x1f85e
cmp ebx, 0x1f
jbe short loc_0001f85e  ; jbe 0x1f85e
push edx
push ref_00026d46  ; push 0x26d46
push 0x266
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f85e:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f883  ; je 0x1f883
cmp esi, ebx
jbe short loc_0001f883  ; jbe 0x1f883
push eax
push ref_00025b30  ; push 0x25b30
push 0x267
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f883:
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
jmp near fcn_0001f20e  ; jmp 0x1f20e

fcn_0001f89e:
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
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f8dc  ; je 0x1f8dc
cmp ebx, 0x1f
jbe short loc_0001f8dc  ; jbe 0x1f8dc
push edx
push ref_00026d46  ; push 0x26d46
push 0x28c
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f8dc:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f901  ; je 0x1f901
cmp esi, ebx
jbe short loc_0001f901  ; jbe 0x1f901
push eax
push ref_00025b30  ; push 0x25b30
push 0x28d
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f901:
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
jmp near fcn_0001f261  ; jmp 0x1f261

fcn_0001f91c:
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
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f960  ; je 0x1f960
cmp ebx, 0x1f
jbe short loc_0001f960  ; jbe 0x1f960
push edx
push ref_00026d46  ; push 0x26d46
push 0x2b6
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f960:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f985  ; je 0x1f985
cmp esi, ebx
jbe short loc_0001f985  ; jbe 0x1f985
push eax
push ref_00025b30  ; push 0x25b30
push 0x2b7
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f985:
push edi
push ebx
push esi
push dword [ebp - 0x1c]
call fcn_0001f89e  ; call 0x1f89e
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
jmp near fcn_0001f820  ; jmp 0x1f820

fcn_0001f9ae:
push ebp
mov ebp, esp
push esi
mov esi, dword [ebp + 0xc]
push ebx
mov ebx, dword [ebp + 0x10]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001f9df  ; je 0x1f9df
cmp ebx, 0x1f
jbe short loc_0001f9df  ; jbe 0x1f9df
push edx
push ref_00026d46  ; push 0x26d46
push 0x240
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001f9df:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001fa04  ; je 0x1fa04
cmp esi, ebx
jbe short loc_0001fa04  ; jbe 0x1fa04
push eax
push ref_00025b30  ; push 0x25b30
push 0x241
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001fa04:
sub esp, 0xc
push dword [ebp + 0x14]
push 0
push ebx
push esi
push dword [ebp + 8]
call fcn_0001f91c  ; call 0x1f91c
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_0001fa1d:
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
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001fa5b  ; je 0x1fa5b
cmp ebx, 0x3f
jbe short loc_0001fa5b  ; jbe 0x1fa5b
push ecx
push ref_00026d52  ; push 0x26d52
push 0x2db
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001fa5b:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001fa80  ; je 0x1fa80
cmp esi, ebx
jbe short loc_0001fa80  ; jbe 0x1fa80
push edx
push ref_00025b30  ; push 0x25b30
push 0x2dc
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001fa80:
push eax
push ebx
push 0xffffffffffffffff
push 0xfffffffffffffffe
call fcn_0001fdda  ; call 0x1fdda
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
jmp near fcn_0001724f  ; jmp 0x1724f

fcn_0001faac:
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
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001faee  ; je 0x1faee
cmp dword [ebp + 0x14], 0x3f
jbe short loc_0001faee  ; jbe 0x1faee
push eax
push ref_00026d52  ; push 0x26d52
push 0x329
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001faee:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001fb17  ; je 0x1fb17
mov eax, dword [ebp + 0x14]
cmp dword [ebp + 0x10], eax
jbe short loc_0001fb17  ; jbe 0x1fb17
push ebx
push ref_00025b30  ; push 0x25b30
push 0x32a
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001fb17:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001fb6a  ; je 0x1fb6a
mov ebx, dword [ebp + 0x14]
sub ebx, dword [ebp + 0x10]
push ecx
push ebx
push edi
push esi
call fcn_0001724f  ; call 0x1724f
add esp, 0xc
push ebx
push edi
push esi
mov dword [ebp - 0x1c], eax
mov dword [ebp - 0x28], edx
call fcn_0001724f  ; call 0x1724f
mov ecx, dword [ebp - 0x28]
add esp, 0x10
and eax, 1
test ecx, ecx
jne short loc_0001fb52  ; jne 0x1fb52
cmp dword [ebp - 0x1c], eax
je short loc_0001fb6a  ; je 0x1fb6a

loc_0001fb52:
push edx
push ref_00026d5e  ; push 0x26d5e
push 0x331
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001fb6a:
push eax
push dword [ebp + 0x10]
push edi
push esi
call fcn_0001fdda  ; call 0x1fdda
add esp, 0xc
push dword [ebp + 0x14]
push 0xffffffffffffffff
push 0xfffffffffffffffe
mov esi, eax
mov ebx, edx
call fcn_0001fdda  ; call 0x1fdda
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

fcn_0001fb9e:
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
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001fbe0  ; je 0x1fbe0
cmp dword [ebp + 0x14], 0x3f
jbe short loc_0001fbe0  ; jbe 0x1fbe0
push eax
push ref_00026d52  ; push 0x26d52
push 0x35d
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001fbe0:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001fc09  ; je 0x1fc09
mov eax, dword [ebp + 0x14]
cmp dword [ebp + 0x10], eax
jbe short loc_0001fc09  ; jbe 0x1fc09
push ebx
push ref_00025b30  ; push 0x25b30
push 0x35e
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001fc09:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001fc5c  ; je 0x1fc5c
mov ebx, dword [ebp + 0x14]
sub ebx, dword [ebp + 0x10]
push ecx
push ebx
push edi
push esi
call fcn_0001724f  ; call 0x1724f
add esp, 0xc
push ebx
push edi
push esi
mov dword [ebp - 0x1c], eax
mov dword [ebp - 0x28], edx
call fcn_0001724f  ; call 0x1724f
mov ecx, dword [ebp - 0x28]
add esp, 0x10
and eax, 1
test ecx, ecx
jne short loc_0001fc44  ; jne 0x1fc44
cmp dword [ebp - 0x1c], eax
je short loc_0001fc5c  ; je 0x1fc5c

loc_0001fc44:
push edx
push ref_00026db3  ; push 0x26db3
push 0x365
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001fc5c:
push eax
mov ecx, esi
push dword [ebp + 0x10]
not edi
not ecx
push edi
push ecx
call fcn_0001fdda  ; call 0x1fdda
add esp, 0xc
push dword [ebp + 0x14]
push 0xffffffffffffffff
push 0xfffffffffffffffe
mov esi, eax
mov ebx, edx
call fcn_0001fdda  ; call 0x1fdda
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

fcn_0001fc9c:
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
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001fcf2  ; je 0x1fcf2
cmp ebx, 0x3f
jbe short loc_0001fcf2  ; jbe 0x1fcf2
push ecx
push ref_00026d52  ; push 0x26d52
push 0x392
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001fcf2:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001fd18  ; je 0x1fd18
cmp dword [ebp - 0x1c], ebx
jbe short loc_0001fd18  ; jbe 0x1fd18
push edx
push ref_00025b30  ; push 0x25b30
push 0x393
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001fd18:
push eax
push eax
push dword [ebp - 0x2c]
push dword [ebp - 0x30]
push ebx
push dword [ebp - 0x1c]
push dword [ebp - 0x24]
push dword [ebp - 0x28]
call fcn_0001fb9e  ; call 0x1fb9e
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
jmp near fcn_0001faac  ; jmp 0x1faac

fcn_0001fd53:
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
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001fd97  ; je 0x1fd97
cmp ebx, 0x3f
jbe short loc_0001fd97  ; jbe 0x1fd97
push edx
push ref_00026d52  ; push 0x26d52
push 0x300
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001fd97:
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001fdbd  ; je 0x1fdbd
cmp dword [ebp + 0x10], ebx
jbe short loc_0001fdbd  ; jbe 0x1fdbd
push eax
push ref_00025b30  ; push 0x25b30
push 0x301
push ref_00026cb0  ; push 0x26cb0
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001fdbd:
push edi
push esi
push 0
push 0
push ebx
push dword [ebp + 0x10]
push dword [ebp - 0x1c]
push dword [ebp - 0x20]
call fcn_0001fc9c  ; call 0x1fc9c
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_0001fdda:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0xc
mov esi, dword [ebp + 8]
mov edi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001fe0f  ; je 0x1fe0f
cmp ebx, 0x3f
jbe short loc_0001fe0f  ; jbe 0x1fe0f
push eax
push ref_000259b8  ; push 0x259b8
push 0x27
push ref_00026e0a  ; push 0x26e0a
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001fe0f:
mov dword [ebp + 0x10], ebx
mov dword [ebp + 8], esi
mov dword [ebp + 0xc], edi
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near loc_0001ff76  ; jmp 0x1ff76

fcn_0001fe24:
push ebp
mov ebp, esp
pop ebp
jmp near loc_0001fe90  ; jmp 0x1fe90

fcn_0001fe2d:
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
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0001fe6f  ; je 0x1fe6f
mov eax, ebx
or eax, esi
jne short loc_0001fe6f  ; jne 0x1fe6f
push eax
push ref_00025a2d  ; push 0x25a2d
push 0x2f
push ref_00026e3f  ; push 0x26e3f
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001fe6f:
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
jmp near loc_0001fea2  ; jmp 0x1fea2

loc_0001fe90:
mov ecx, dword [esp + 0xc]
mov eax, ecx
imul ecx, dword [esp + 8]
mul dword [esp + 4]
add edx, ecx
ret

loc_0001fea2:
mov ecx, dword [esp + 0x10]
test ecx, ecx
jne short loc_0001febd  ; jne 0x1febd
mov ecx, dword [esp + 0x14]
jecxz loc_0001feb8  ; jecxz 0x1feb8
and dword [ecx + 4], 0
mov dword [esp + 0x10], ecx

loc_0001feb8:
jmp near loc_00017581  ; jmp 0x17581

loc_0001febd:
push ebx
push esi
push edi
mov edx, dword [esp + 0x14]
mov eax, dword [esp + 0x10]
mov edi, edx
mov esi, eax
mov ebx, dword [esp + 0x18]

loc_0001fed0:
shr edx, 1
rcr eax, 1
shrd ebx, ecx, 1
shr ecx, 1
jne short loc_0001fed0  ; jne 0x1fed0
div ebx
mov ebx, eax
mov ecx, dword [esp + 0x1c]
mul dword [esp + 0x18]
imul ecx, ebx
add edx, ecx
mov ecx, dword [esp + 0x20]
jb short loc_0001fefd  ; jb 0x1fefd
cmp edi, edx
ja short loc_0001ff08  ; ja 0x1ff08
jb short loc_0001fefd  ; jb 0x1fefd
cmp esi, eax
jae short loc_0001ff08  ; jae 0x1ff08

loc_0001fefd:
dec ebx
jecxz loc_0001ff13  ; jecxz 0x1ff13
sub eax, dword [esp + 0x18]
sbb edx, dword [esp + 0x1c]

loc_0001ff08:
jecxz loc_0001ff13  ; jecxz 0x1ff13
sub esi, eax
sbb edi, edx
mov dword [ecx], esi
mov dword [ecx + 4], edi

loc_0001ff13:
mov eax, ebx
xor edx, edx
pop edi
pop esi
pop ebx
ret

fcn_0001ff1b:
push ebx

fcn_0001ff1c:
push ebp
mov ebp, esp
mov eax, dword [ebp + 0xc]
cpuid
push ecx
mov ecx, dword [ebp + 0x10]
jecxz loc_0001ff2c  ; jecxz 0x1ff2c
mov dword [ecx], eax

loc_0001ff2c:
mov ecx, dword [ebp + 0x14]
jecxz loc_0001ff33  ; jecxz 0x1ff33
mov dword [ecx], ebx

loc_0001ff33:
mov ecx, dword [ebp + 0x18]
jecxz loc_0001ff3a  ; jecxz 0x1ff3a
pop dword [ecx]

loc_0001ff3a:
mov ecx, dword [ebp + 0x1c]
jecxz loc_0001ff41  ; jecxz 0x1ff41
mov dword [ecx], edx

loc_0001ff41:
mov eax, dword [ebp + 0xc]
leave
pop ebx
ret

fcn_0001ff47:
push ebx

fcn_0001ff48:
push ebp
mov ebp, esp
mov eax, dword [ebp + 0xc]
mov ecx, dword [ebp + 0x10]
cpuid
push ecx
mov ecx, dword [ebp + 0x14]
jecxz loc_0001ff5b  ; jecxz 0x1ff5b
mov dword [ecx], eax

loc_0001ff5b:
mov ecx, dword [ebp + 0x18]
jecxz loc_0001ff62  ; jecxz 0x1ff62
mov dword [ecx], ebx

loc_0001ff62:
mov ecx, dword [ebp + 0x20]
jecxz loc_0001ff69  ; jecxz 0x1ff69
mov dword [ecx], edx

loc_0001ff69:
mov ecx, dword [ebp + 0x1c]
jecxz loc_0001ff70  ; jecxz 0x1ff70
pop dword [ecx]

loc_0001ff70:
mov eax, dword [ebp + 0xc]
leave
pop ebx
ret

loc_0001ff76:
mov cl, byte [esp + 0xc]
xor eax, eax
mov edx, dword [esp + 4]
test cl, 0x20
cmove eax, edx
cmove edx, dword [esp + 8]
shld edx, eax, cl
shl eax, cl
ret

fcn_0001ff91:
push ebp
mov ebp, esp
push ebx
sub esp, 8
mov ebx, dword [ebp + 8]
mov dword [ebx], 0x53524549
mov dword [ebx + 4], 0
mov dword [ebx + 8], fcn_000200f7  ; mov dword [ebx + 8], 0x200f7
push 0
push 0x1f
push 0
call fcn_00016c9a  ; call 0x16c9a
mov dword [ebx + 0x10], eax
add eax, 0xf0
mov dword [esp], eax
call fcn_00017e4e  ; call 0x17e4e
and eax, 0xffffc000
mov dword [ebx + 0xc], eax
call fcn_00015480  ; call 0x15480
add esp, 0x10
test al, al
je short loc_0001fff9  ; je 0x1fff9
cmp dword [ebx + 0xc], 0
jne short loc_0001fff9  ; jne 0x1fff9
push eax
push ref_00026e7d  ; push 0x26e7d
push 0x39
push ref_00026ea6  ; push 0x26ea6
call fcn_0001548c  ; call 0x1548c
add esp, 0x10

loc_0001fff9:
xor eax, eax
mov ebx, dword [ebp - 4]
leave
ret

fcn_00020000:
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
push esi
mov esi, 1
push ebx
sub esp, 0xc
add eax, 2
push eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
movzx ebx, ax
mov eax, ebx
and eax, 0xfffffffd
cmp ax, 0x8c44
je near loc_000200ee  ; je 0x200ee
lea eax, [ebx + 0x73b2]
cmp ax, 2
jbe near loc_000200ee  ; jbe 0x200ee
lea eax, [ebx + 0x73b7]
cmp ax, 3
jbe near loc_000200ee  ; jbe 0x200ee
lea eax, [ebx + 0x73bf]
cmp ax, 1
jbe near loc_000200ee  ; jbe 0x200ee
cmp bx, 0x8c58
je near loc_000200ee  ; je 0x200ee
mov eax, ebx
and eax, 0xfffffffb
cmp ax, 0x8c52
je short loc_000200e9  ; je 0x200e9
mov eax, ebx
and eax, 0xfffffff7
cmp ax, 0x8c54
je short loc_000200e9  ; je 0x200e9
lea eax, [ebx + 0x733f]
cmp ax, 5
jbe short loc_000200ee  ; jbe 0x200ee
lea eax, [ebx + 0x63bf]
mov si, 2
cmp ax, 6
jbe short loc_000200ee  ; jbe 0x200ee
lea eax, [ebx + 0x633f]
cmp ax, 0xa
jbe short loc_000200ee  ; jbe 0x200ee
call fcn_00015479  ; call 0x15479
test al, al
je short loc_000200c4  ; je 0x200c4
push edx
push ebx
push ref_000264fe  ; push 0x264fe
push 0x80000000
call fcn_00015487  ; call 0x15487
add esp, 0x10

loc_000200c4:
call fcn_00015480  ; call 0x15480
mov esi, 3
test al, al
je short loc_000200ee  ; je 0x200ee
push eax
push ref_00022281  ; push 0x22281
push 0x57
push ref_00026ea6  ; push 0x26ea6
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
jmp short loc_000200ee  ; jmp 0x200ee

loc_000200e9:
mov esi, 1

loc_000200ee:
lea esp, [ebp - 8]
mov eax, esi
pop ebx
pop esi
pop ebp
ret

fcn_000200f7:
push ebp
mov ebp, esp
push edi
push esi
push ebx
sub esp, 0x1c
mov ebx, dword [ebp + 8]
call fcn_00015480  ; call 0x15480
test al, al
je short loc_0002012c  ; je 0x2012c
cmp dword [ebx - 8], 0x53524549
je short loc_0002012c  ; je 0x2012c
push eax
push ref_000262c8  ; push 0x262c8
push 0x79
push ref_00026ea6  ; push 0x26ea6
call fcn_0001548c  ; call 0x1548c
add esp, 0x10
jmp short loc_0002012f  ; jmp 0x2012f

loc_0002012c:
sub ebx, 8

loc_0002012f:
mov esi, dword [ebx + 0x10]
sub esp, 0xc
push esi
call fcn_00020000  ; call 0x20000
mov edi, eax
mov eax, dword [ebx + 0xc]
mov dword [ebp - 0x1c], eax
lea eax, [esi + 0x40]
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
mov ebx, eax
lea eax, [esi + 0x48]
mov dword [esp], eax
call fcn_00017dc2  ; call 0x17dc2
add esp, 0x10
cmp dword [ebp + 0xc], 5
ja near loc_00020388  ; ja 0x20388
mov edx, dword [ebp + 0xc]
jmp dword [edx*4 + ref_00020670]  ; ujmp: jmp dword [edx*4 + 0x20670]

loc_00020172:
push eax
mov esi, 4
push eax
push 0
push 0xcf9
call fcn_00018eea  ; call 0x18eea
add esp, 0x10
jmp near loc_0002034f  ; jmp 0x2034f

loc_0002018d:
push eax
mov esi, 6
push eax
push 2
push 0xcf9
call fcn_00018eea  ; call 0x18eea
add esp, 0x10
jmp near loc_0002034f  ; jmp 0x2034f

loc_000201a8:
push eax
add esi, 0x44
push eax
and ebx, 0xfffffffc
push 0x80
movzx ebx, bx
push esi
call fcn_00018730  ; call 0x18730
add esp, 0x10
cmp edi, 2
jne short loc_000201d8  ; jne 0x201d8
push eax
push eax
push 0
lea eax, [ebx + 0x9c]
push eax
call fcn_00018f97  ; call 0x18f97
jmp short loc_000201f5  ; jmp 0x201f5

loc_000201d8:
dec edi
jne short loc_000201f8  ; jne 0x201f8
push ecx
push ecx
push 0
lea eax, [ebx + 0x28]
push eax
call fcn_00018f27  ; call 0x18f27
lea eax, [ebx + 0x2c]
pop esi
pop edi
push 0
push eax
call fcn_00018f27  ; call 0x18f27

loc_000201f5:
add esp, 0x10

loc_000201f8:
push ecx
push ecx
push 0x100
lea eax, [ebx + 0x34]
add ebx, 4
push eax
call fcn_00018f27  ; call 0x18f27
mov dword [esp], ebx
call fcn_00018f64  ; call 0x18f64
pop edi
mov esi, eax
and esi, 0xffffc3ff
pop eax
mov eax, esi
or ah, 0x1c
or esi, 0x3c00
push eax
push ebx
call fcn_00018f97  ; call 0x18f97
pop eax
pop edx
push esi
push ebx
call fcn_00018f97  ; call 0x18f97
add esp, 0x10
xor eax, eax
jmp near loc_0002038d  ; jmp 0x2038d

loc_00020242:
mov ebx, eax
push edx
and ebx, 0xfffc
push edx
push 0
lea eax, [ebx + 0x60]
push eax
mov dword [ebp - 0x20], eax
call fcn_00018f97  ; call 0x18f97
pop ecx
pop eax
lea eax, [ebx + 0x64]
push 0
push eax
call fcn_00018f97  ; call 0x18f97
pop eax
pop edx
lea eax, [ebx + 0x68]
push 0
push eax
call fcn_00018f97  ; call 0x18f97
mov eax, dword [ebp + 0xc]
add esp, 0x10
sub eax, 4
cmp eax, 1
ja near loc_0002034a  ; ja 0x2034a
push ecx
add esi, 0xac
push ecx
push 0x100000
push esi
call fcn_00018b14  ; call 0x18b14
add esp, 0x10
cmp dword [ebp + 0xc], 5
jne near loc_0002034a  ; jne 0x2034a
mov eax, dword [ebp - 0x1c]
sub esp, 0xc
add eax, 0x332c
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test al, 3
jne near loc_0002034a  ; jne 0x2034a
mov eax, dword [ebp - 0x1c]
sub esp, 0xc
add eax, 0x3330
push eax
call fcn_00017e4e  ; call 0x17e4e
add esp, 0x10
test ah, 0xc0
jne short loc_0002034a  ; jne 0x2034a
cmp edi, 1
jne short loc_00020309  ; jne 0x20309
push ecx
push ecx
push 0x40000000
push ebx
call fcn_00018363  ; call 0x18363
lea eax, [ebx + 4]
add ebx, 0xc
pop esi
pop edi
push 0xbfffffff
push eax
call fcn_0001838d  ; call 0x1838d
pop eax
pop edx
push 0xbfffffff
jmp short loc_0002032f  ; jmp 0x2032f

loc_00020309:
cmp edi, 2
jne short loc_00020338  ; jne 0x20338
push ecx
add ebx, 0x1f0
push ecx
push 1
push ebx
call fcn_00018363  ; call 0x18363
pop esi
pop edi
push 0xfffffffffffffffb
push ebx
call fcn_0001838d  ; call 0x1838d
pop eax
pop edx
push 0x7fffffff

loc_0002032f:
push ebx
call fcn_0001838d  ; call 0x1838d
add esp, 0x10

loc_00020338:
push edx
push edx
push 0x40000000
push dword [ebp - 0x20]
call fcn_00018363  ; call 0x18363
add esp, 0x10

loc_0002034a:
mov esi, 0xe

loc_0002034f:
sub esp, 0xc
push dword [ebp + 0xc]
call fcn_0001ba36  ; call 0x1ba36
add esp, 0x10
mov ebx, eax
cmp eax, 0x8000000e
je short loc_0002036a  ; je 0x2036a
test ebx, ebx
jne short loc_0002038d  ; jne 0x2038d

loc_0002036a:
push eax
push eax
mov eax, esi
movzx esi, al
push esi
push 0xcf9
call fcn_00018eea  ; call 0x18eea
call fcn_00017239  ; call 0x17239
add esp, 0x10
mov eax, ebx
jmp short loc_0002038d  ; jmp 0x2038d

loc_00020388:
mov eax, 0x80000002

loc_0002038d:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

endloc_00020395:
db 0x66
db 0x90
db 0x66
dd 0x66906690
dd 0x90906690

ref_000203a0:
dd 0x08000100
dd 0x01010000
dd 0x01000004
dd 0x00000202

ref_000203b0:
dd 0x00000100
dd 0x00001000
dd 0x00010101
dd 0x01000008
dd 0x04000202
dd 0x00000000

ref_000203c8:
dd 0x07000301
dd 0x0f000000

ref_000203d0:
dd loc_000094ae
dd loc_000094b5
dd loc_000093fa
dd loc_00009404
dd loc_0000940e
dd loc_00009444
dd loc_00009448
dd loc_00009451
dd loc_00009415
dd loc_0000941c

ref_000203f8:
dd 0x00000002
dd 0x0000000a
dd 0x00000064
dd 0x00000000

ref_00020408:
dd 0xea002600
dd 0xea002400
dd 0xea002200
dd 0xea002000
dd 0x00000000
dd 0x00000000

ref_00020420:
dd 0xea002400
dd 0xea002600
dd 0xea000800
dd 0xea000a00
dd 0xea002000
dd 0xea002200

ref_00020438:
dd 0xe9002000
dd 0xe9002200
dd 0xe9002400
dd 0xe9002600
dd 0x00000000
dd 0x00000000

ref_00020450:
dd 0xe9001600
dd 0xe9001400
dd 0xe9002e00
dd 0xe9002c00
dd 0xe9003200
dd 0xe9003000

ref_00020468:
dd 0x0a090605

ref_0002046c:
dd 0x13000000
dd 0x15000000
dd 0x15000000
dd 0x15000000
dd 0x15000000
dd 0x15000000
dd 0x15000000
dd 0x15000000
dd 0x11000000
dd 0x15000000
dd 0x15000000
dd 0x15000000
dd 0x15000000
dd 0x15000000
dd 0x15000000
dd 0x15000000
dd 0x0f000000

ref_000204b0:
dd 0x00000000
dd 0x00000001
dd 0x00000002
dd 0x00000003
dd 0x00000008
dd 0x00000009
dd 0x0000000c
dd 0x0000000d
dd 0x00000004
dd 0x00000005
dd 0x00000006
dd 0x00000007
dd 0x0000000a
dd 0x0000000b
dd 0x0000000c
dd 0x0000000d

ref_000204f0:
db 0x1d

ref_000204f1:
db 0x00
db 0x1a
db 0x00

ref_000204f4:
db '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ',0x00,0x00,0x00,0x00

ref_0002051c:
dd 0x00000001
dd 0x00000002
dd 0x00000004
dd 0x00000008
dd 0x00000010
dd 0x00000020
dd 0x00000040
dd 0x00000000

ref_0002053c:
db ' +-#0!^',0x00

ref_00020544:
db '0000000000000000',0x00,0x00,0x00,0x00

ref_00020558:
dd 0x20202020
dd 0x20202020
dd 0x20202020
dd 0x20202020
dd 0x90906600

ref_0002056c:
db 'CbLocatePpi',0x00

ref_00020578:
db 'CbNotifyPpi',0x00

ref_00020584:
dd 0x6e496243
dd 0x6c617473
dd 0x6970506c
dd 0x90906600

ref_00020594:
dd 0x80000010
dd ref_0002907c
dd 0x00000000

ref_000205a0:
dd loc_0001b45b
dd loc_0001b454
dd loc_0001b47b
dd loc_0001b46c
dd loc_0001b4b6
dd loc_0001b496
dd loc_0001b513
dd loc_0001b4e8
dd loc_0001b547
dd loc_0001b52b
dd loc_0001b55d
dd loc_0001b5a2

ref_000205d0:
dd loc_0001b7e6
dd loc_0001b8ac
dd loc_0001b730
dd loc_0001b8ac
dd loc_0001b714
dd loc_0001b8ac
dd loc_0001b80d
dd loc_0001b7f7
dd loc_0001b714
dd loc_0001b858

ref_000205f8:
dd loc_0001c367
dd loc_0001c382
dd loc_0001c36d
dd loc_0001c374
dd loc_0001c37b

ref_0002060c:
dd loc_0001d0a8
dd loc_0001d0b7
dd loc_0001d1d0
dd loc_0001d1d0
dd loc_0001d1d0
dd loc_0001d1d0
dd loc_0001d1d0
dd loc_0001d1d0
dd loc_0001d1d0
dd loc_0001d1d0
dd loc_0001d1d0
dd loc_0001d1d0
dd loc_0001d1d0
dd loc_0001d1d0
dd loc_0001d1d0
dd loc_0001d0d0
dd loc_0001d0e5
dd loc_0001d174
dd loc_0001d180
dd loc_0001d1a9
dd loc_0001d1b5

ref_00020660:
dd 0x6c416243
dd 0x61636f6c
dd 0x6f506574
dd 0x90006c6f

ref_00020670:
dd loc_0002018d
dd loc_00020172
dd loc_000201a8
dd loc_00020242
dd loc_00020242
dd loc_00020242

ref_00020688:
db 'PEI: Starting...',0x0a,0x00

ref_0002069a:
db 'Initializing System Agent',0x0a,0x00

ref_000206b5:
db 'Initializing PCH',0x0a,0x00

ref_000206c7:
db 'PEI: Done.',0x0a,0x00

ref_000206d3:
db 0x0a,'ASSERT_EFI_ERROR (Status = %r)',0x0a,0x00

ref_000206f4:
db '!EFI_ERROR (Status)',0x00

ref_00020708:
db '../../intel/SystemAgent/SaInit/Pei/SaInitPeim.c',0x00

ref_00020738:
db 'Set BIOS_RESET_CPL to indicate all configurations complete',0x0a,0x00

ref_00020774:
db '[SA] Programming MSR 2E7',0x0a,0x00

ref_0002078e:
db 'SA Data HOB installed',0x0a,0x00

ref_000207a5:
db '***************** System Agent PCIe code version *****************',0x0a,0x00

ref_000207e9:
db '** Major version number is: %3d                                 **',0x0a,0x00

ref_0002082d:
db '** Minor version number is: %3d                                 **',0x0a,0x00

ref_00020871:
db '** Rev version number is:   %3d                                 **',0x0a,0x00

ref_000208b5:
db '** Build number is:         %3d                                 **',0x0a,0x00

ref_000208f9:
db '******************************************************************',0x0a,0x00

ref_0002093d:
db 'Programming SA Bars',0x0a,0x00

ref_00020952:
db 'Reporting SA PCIe code version',0x0a,0x00

ref_00020972:
db 'Initializing DMI',0x0a,0x00

ref_00020984:
db 'Initializing SA PCIe',0x0a,0x00

ref_0002099a:
db 'Initializing Graphics',0x0a,0x00

ref_000209b1:
db 'Initializing System Agent Overclocking',0x0a,0x00

ref_000209d9:
db 'Initializing DMI Tc/Vc mapping',0x0a,0x00

ref_000209f9:
db 'Early BIOS POST Programming',0x0a,0x00

ref_00020a16:
db '[SA] BootMode = %X',0x0a,0x00

ref_00020a2a:
db '[SA] Install SA S3 Notify callback',0x0a,0x00

ref_00020a4e:
db '[SA] Install Notify callback for Rapid Start Resume',0x0a,0x00

ref_00020a83:
db '(OC) Overclocking is disabled. Bypassing SA overclocking flow.',0x0a,0x00

ref_00020ac3:
db '../../intel/SystemAgent/SaInit/Pei/SaOcInit.c',0x00

ref_00020af1:
db '(OC) Updating EDRAM ratio value = %X',0x0a,0x00

ref_00020b17:
db '(OC) Set Voltage Frequency failed. EFI Status = %X, Library Status = %X',0x0a,0x00

ref_00020b60:
db '(OC) No OC support for this Domain = %X',0x0a,0x00

ref_00020b89:
db '(OC) GetOcCapabilities message failed. Library Status = %X, Domain = %X',0x0a,0x00

ref_00020bd2:
db '../../intel/SystemAgent/SaInit/Pei/GraphicsInit.c',0x00

ref_00020c04:
db 'PCH PCIe Graphics Card enabled.',0x0a,0x00

ref_00020c25:
db 'PCIe card on PEG%x%x (%x:%x:%x) enabled as VGA.',0x0a,0x00

ref_00020c56:
db 'PEG%x%x (%x:%x:%x) ISAEN has been set.',0x0a,0x00

ref_00020c7e:
db '(StallCount != 3000)',0x00

ref_00020c93:
db 'Temporary GttMmAdr Bar is not initialized. Returning from GraphicsInit().',0x0a,0x00

ref_00020cde:
db 'GttMmAdr != 0',0x00

ref_00020cec:
db 'IGD enabled.',0x0a,0x00

ref_00020cfa:
db 'SaPlatformPolicyPpi->GtConfig->GttSize <= 3',0x00

ref_00020d26:
db 'IGD VGA Decode is disabled because it',0x27,'s not a primary display.',0x0a,0x00

ref_00020d66:
db 'Disable IGD Device.',0x0a,0x00

ref_00020d7b:
db '../../intel/SystemAgent/SaInit/Pei/SaDmiPeim.c',0x00

ref_00020daa:
db 'Can',0x27,'t locate PchPlatformPolicy PPI - exiting.',0x0a,0x00

ref_00020dd9:
db 'DMI Recipe...',0x0a,0x00

ref_00020de8:
db 'Run AdditionalDmiProgramSteps!',0x0a,0x00

ref_00020e08:
db 'DMI Gen2 is Disabled or not capable, staying at Gen1 !',0x0a,0x00

ref_00020e40:
db 'DMI Link re-train to set GEN2',0x0a,0x00

ref_00020e5f:
db 'DMI trained to x%d at Gen%d',0x0a,0x00

ref_00020e7c:
db 'PEG%x%x (%x:%x:%x) - ',0x00

ref_00020e92:
db 'Trained to x%d at Gen%d.',0x00

ref_00020eab:
db ' VC0 Negotiation Pending = %d.',0x00

ref_00020eca:
db 'PEG%x%x (%x:%x:%x) - VC0 Negotiation Pending = %x after %d msec.',0x0a,0x00

ref_00020f0c:
db '../../intel/SystemAgent/SaInit/Pei/PciExpressInit.c',0x00

ref_00020f40:
db 'Previous Link Training Fail Mask 0x%2.2X',0x0a,0x00

ref_00020f6a:
db 'New Link Training Fail Mask 0x%2.2X',0x0a,0x00

ref_00020f8f:
db ' PEG%x%x (%x:%x:%x) - skipping due to furcation',0x0a,0x00

ref_00020fc0:
db ' PEG%x%x (%x:%x:%x) - checking',0x0a,0x00

ref_00020fe0:
db '  VC negotiation is complete',0x0a,0x00

ref_00020ffe:
db 'Total Stall: %d msec',0x0a,0x00

ref_00021014:
db 'Returned PegLinkFailMask 0x%2.2X',0x0a,0x00

ref_00021036:
db 'Invalid input to ProgramPreset() function!  PegFunc=%d, Lane=%d',0x0a,0x00

ref_00021077:
db '--- Sampler values before calibration ---',0x0a,0x00

ref_000210a2:
db 'ERROR: PEG dev=%d, lane=%d, sampler=%d, iteration=%d, found more than %d distinct codes!!!',0x0a,0x00

ref_000210fe:
db '--- Sampler values after calibration ---',0x0a,0x00

ref_00021128:
db 'PEG Link Status after auto speed disable:',0x0a,0x00

ref_00021153:
db 'Auto',0x0a,0x00

ref_00021159:
db 'Speed From Setup %x',0x0a,0x00

ref_0002116e:
db 'PEG%x%x (%x:%x:%x) - Max Link Speed = Gen%d',0x0a,0x00

ref_0002119b:
db 'ERROR: Attempted to reserve > %d IOTRK (Attempt = %d)! Skipping programming.',0x0a,0x00

ref_000211e9:
db 'IOTRK: Reserved = %d. Shared = %d. Total = %d.',0x0a,0x00

ref_00021219:
db 'ERROR: Attempted to reserve > %d RRTRK (Attempt = %d)! Skipping programming.',0x0a,0x00

ref_00021267:
db 'RRTRK: Reserved = %d. Shared = %d. Total = %d.',0x0a,0x00

ref_00021297:
db 'Crdtctl4 Crdtctl6 Crdtctl8 Before = %x %x %x',0x0a,0x00

ref_000212c5:
db 'PEG10: LinkDisabled = %x. Width = %x',0x0a,0x00

ref_000212eb:
db 'PEG11: LinkDisabled = %x. Width = %x',0x0a,0x00

ref_00021311:
db 'PEG12: LinkDisabled = %x. Width = %x',0x0a,0x00

ref_00021337:
db 'Crdtctl4 Crdtctl6 Crdtctl8 After = %x %x %x',0x0a,0x00

ref_00021364:
db 'VCU Busy Timeout after %d tries: MCHBAR=%8.8X. Interface=%8.8X. Data=%4.4X.',0x0a,0x00

ref_000213b1:
db 'ERROR: VCU Response Error after %d tries: MCHBAR=%8.8X. Interface=%4.4X. Data=%8.8X. ResponseCode=%4.4X',0x0a,0x00

ref_0002141a:
db 'In GetMaxBundles procedure',0x0a,0x00

ref_00021436:
db 'MaxBndlPwrdnCount = %d',0x0a,0x00

ref_0002144e:
db 'In PowerDownUnusedBundles sequence',0x0a,0x00

ref_00021472:
db 'All lanes are used. Do nothing.',0x0a,0x00

ref_00021493:
db 'PegLaneReversal is true',0x0a,0x00

ref_000214ac:
db 'BNDL_PWRDN PEG%d%d[%d:%d]',0x0a,0x00

ref_000214c7:
db 'PEG controller not detected',0x0a,0x00

ref_000214e4:
db 'PEG HW Strap value %x',0x0a,0x00

ref_000214fb:
db 'PEG Gen3 Fused off',0x0a,0x00

ref_0002150f:
db 0x0a,'Restore SA PEG DATA from previous boot: Size=%X',0x0a,0x00

ref_00021541:
db 0x0a,'PegGen3PresetSearch is disabled, Clear old Preset data',0x0a,0x00

ref_0002157a:
db 'PEG Recipe...',0x0a,0x00

ref_00021589:
db 'PEG Gen3 Equalization...',0x0a,0x00

ref_000215a3:
db 'Presence detect table...',0x0a,0x00

ref_000215bd:
db ' PEG%d%d PresenceDetect: %x. EndpointMaxLinkSpeed: %x.',0x0a,0x00

ref_000215f5:
db 'PEG SamplerCalibration...',0x0a,0x00

ref_00021610:
db 'PEG Ports Scanning starts.',0x0a,0x00

ref_0002162c:
db 'PEG%d%d - Endpoint not responding to PCI config space access, assuming negotiated width (X%d) is max width',0x0a,0x00

ref_00021698:
db 'CtrlMLW[%d]. EpMLW[%d]. UnusedLanes[%d]. BndlPwrdnCount[%d].',0x0a,0x00

ref_000216d6:
db 'BndlPwrdnCount violation! Overriding BndlPwrdnCount! '

ref_0002170b:
db 'BndlPwrdnCount[%d].',0x0a,0x00

ref_00021720:
db 'Run AdditionalPegProgramSteps on PEG%x%x!',0x0a,0x00

ref_0002174b:
db 'PEG10 '

ref_00021751:
db 'Disabled.',0x0a,0x00

ref_0002175c:
db 'PEG11 Disabled.',0x0a,0x00

ref_0002176d:
db 'PEG12 Disabled.',0x0a,0x00

ref_0002177e:
db 'Original PegLinkFailMask=%X, Final PegLinkFailMask=%X',0x0a,0x00

ref_000217b5:
db 'Setting GPIO%d to %x',0x0a,0x00

ref_000217cb:
db 'Asserting PEG slot reset.',0x0a,0x00

ref_000217e6:
db 'Deasserting PEG slot reset.',0x0a,0x00

ref_00021803:
db 'Toggling PEG slot reset.',0x0a,0x00

ref_0002181d:
db 'SECONDARY BUS RESET!',0x0a,0x00

ref_00021833:
db 'Reset Complete',0x0a,0x00

ref_00021843:
db 'PHY LAYER RESET!',0x0a,0x00

ref_00021855:
db 'Link retrain FAILED!!!',0x0a,0x00

ref_0002186d:
db 'DOWNGRADE from x%d to x%d detected',0x0a,0x00

ref_00021891:
db 'Width Recovery Successful',0x0a,0x00

ref_000218ac:
db 'Width Recovery FAILED!',0x0a,0x00

ref_000218c4:
db 'Error 0x%x.',0x0a,0x00

ref_000218d1:
db 'Success.',0x0a,0x00

ref_000218db:
db 'Link Width DOWNGRADED!',0x0a,0x00

ref_000218f3:
db 'Link Speed DOWNGRADED!',0x0a,0x00

ref_0002190b:
db 'Link speed downgrade detected',0x0a,0x00

ref_0002192a:
db 'Link width downgrade detected',0x0a,0x00

ref_00021949:
db 'DOWNGRADE from Gen %d to Gen %d detected',0x0a,0x00

ref_00021973:
db 'Link Speed Recovery FAILED!',0x0a,0x00

ref_00021990:
db 'Link Speed Recovery Successful',0x0a,0x00

ref_000219b0:
db 'DOWNGRADE, Link is not in L0',0x0a,0x00

ref_000219ce:
db '../../intel/SystemAgent/SaInit/Pei/PcieTrainingLinkRecovery.c',0x00

ref_00021a0c:
db ' PcieControllerList Array Index Out of Bounds  PortInfoListLength: %x',0x0a,0x00

ref_00021a53:
db ' LaneList Array Index Out of Bounds LaneListLength%x',0x0a,0x00

ref_00021a89:
db ' PEG%x%x (%x:%x:%x) - Root Port is not Gen3-capable. Max Link Speed = %d.',0x0a,0x00

ref_00021ad4:
db ' PEG%x%x (%x:%x:%x) - Root Port is Gen3-capable.',0x0a,0x00

ref_00021b06:
db ' PEG%x%x (%x:%x:%x) - VC0 negotiation is pending! Skipping endpoint.',0x0a,0x00

ref_00021b4c:
db ' PEG%x%x (%x:%x:%x) - Endpoint is not Gen3-capable. No PCIe Capability found.',0x0a,0x00

ref_00021b9b:
db ' PEG%x%x (%x:%x:%x) - Endpoint is not Gen3-capable. Max Link Speed = %d.',0x0a,0x00

ref_00021be5:
db ' PEG%x%x (%x:%x:%x) - Endpoint is Gen3-capable',0x0a,0x00

ref_00021c15:
db '../../intel/SystemAgent/SaInit/Pei/PcieTraining.c',0x00

ref_00021c47:
db 'Invalid Margin Test Requested.',0x0a,0x00

ref_00021c67:
db 'Preset for Lane %2d: ',0x00

ref_00021c7d:
db 'Search Result: P%d',0x00

ref_00021c90:
db 'Applying Policy value: P%d'

ref_00021caa:
db '. Saving value for next boot.',0x00

ref_00021cc8:
db 'Applying Policy value: P%d',0x00

ref_00021ce3:
db 'Restoring previous value: P%d',0x00

ref_00021d01:
db 'Illegal Lane: %d',0x00

ref_00021d12:
db 'PEG Gen3 Preset Search',0x0a,0x00

ref_00021d2a:
db ' Gen3 is disabled by policy',0x0a,0x00

ref_00021d47:
db 'Lane Reversal is Disabled',0x0a,0x00

ref_00021d62:
db 'Lane Reversal is Enabled',0x0a,0x00

ref_00021d7c:
db '../../intel/SystemAgent/SaInit/Pei/PcieTrainingPhase3.c',0x00

ref_00021db4:
db 'Calling CpuReplacementCheck',0x0a,0x00

ref_00021dd1:
db ' ME reported CPU Replacement value: %x',0x0a,0x00

ref_00021df9:
db ' PEG%x%x (%x:%x:%x) - LoadedSavedPreset = %d. EndpointDeviceChanged = %d.',0x0a,0x00

ref_00021e44:
db 'Skipping Preset Search - No Gen3 capable links',0x0a,0x00

ref_00021e74:
db 'Skipping PEG%d%d - Not Gen3 capable',0x0a,0x00

ref_00021e99:
db 'Using Lane %2d',0x27,'s Best Preset for Lanes %2d-%2d.',0x0a,0x00

ref_00021eca:
db 'PEG%d%d - Not Gen3 capable, skip coefficient programming.',0x0a,0x00

ref_00021f05:
db 'PEG Gen3 Preset Search done',0x0a

ref_00021f21:
db 0x0a
db 0x00

ref_00021f23:
db 'GetCoefficientsFromPreset(): Unsupported Preset Requested: P%d. Using P7.',0x0a,0x00

ref_00021f6e:
db 'ConfigureTxJitterMux: System unsupported, no PEG.',0x0a,0x00

ref_00021fa1:
db 'Unsupported CPU stepping!',0x0a,0x00

ref_00021fbc:
db 'TempValue >= 47',0x00

ref_00021fcc:
db '../../intel/SystemAgent/SaInit/Pei/PcieTrainingMargining.c',0x00

ref_00022007:
db 'TempValue <= 17',0x00

ref_00022017:
db 'ProgramIobp Read Error, Address:%x AndMask:%x OrMask:%x',0x0a,0x00

ref_00022050:
db '../../intel/Pch/Library/PchPlatformLib/IobpAccess.c',0x00

ref_00022084:
db 'ProgramIobp Write Error, Address:%x AndMask:%x OrMask:%x',0x0a,0x00

ref_000220be:
db '(((*LatencyValue1) & (0x00000400 + 0x00000800 + 0x00001000)) >> 10) < 6',0x00

ref_00022106:
db '../../intel/Pch/Library/PchPciExpressHelpersLib/PchPciExpressHelpersLibrary.c',0x00

ref_00022154:
db '(((LatencyValue2) & (0x00000400 + 0x00000800 + 0x00001000)) >> 10) < 6',0x00

ref_0002219b:
db 'Endpoint Device %0x Capability ASPM: %0x',0x0a,0x00

ref_000221c5:
db 'Override root port ASPM to L1 for pre-1.1 devices',0x0a,0x00

ref_000221f8:
db 'Calculate Endpoint Device %0x Aspm Value: %0x',0x0a,0x00

ref_00022227:
db 'Program Endpoint Device %0x Aspm Value: %0x',0x0a,0x00

ref_00022254:
db 'Check DownStreamBus:%d and no device found!',0x0a,0x00

ref_00022281:
db '((BOOLEAN)(0==1))',0x00

ref_00022293:
db 'PchCpuStrapSet() - Start',0x0a,0x00

ref_000222ad:
db 'PchCpuStrapSet() - End',0x0a,0x00

ref_000222c5:
db 'PchOnMemoryInstalled() Start',0x0a,0x00

ref_000222e3:
db 'PCH Installing PcieDeviceTable HOB (%d entries)',0x0a,0x00

ref_00022314:
db 'HobPtr != 0',0x00

ref_00022320:
db '../../intel/Pch/PchInit/Pei/PchInitPeim.c',0x00

ref_0002234a:
db 'Index != 0',0x00

ref_00022355:
db 'PCH Installing PchPlatformPolicy HOB (PCH bus = %d)',0x0a,0x00

ref_0002238a:
db 'Disable Azalia: initialization error in Auto mode!',0x0a,0x00

ref_000223be:
db 'PchOnMemoryInstalled() End',0x0a,0x00

ref_000223da:
db 'Gen3TxOutVoltDnAmpAdj is out of valid range ',0x0a,0x00

ref_00022408:
db 'Gen12TxOutVoltDnAmpAdj is out of valid range ',0x0a,0x00

ref_00022437:
db 'Gen3TxOutDeEmAdj is out of valid range ',0x0a,0x00

ref_00022460:
db 'Gen12TxOutDeEmAdj is out of valid range ',0x0a,0x00

ref_0002248a:
db 'PchSataInit() - Start',0x0a,0x00

ref_000224a1:
db 'Please do not enable any SATA port before SATA  Hsio initialization is done.',0x0a,0x00

ref_000224ef:
db 'PchSataInit() - End',0x0a,0x00

ref_00022504:
db 'PchGbeMandatedReset: resetting the board via CF9 to unlock LAN Disable register...',0x0a,0x00

ref_00022558:
db 'PchGbeMandatedReset: resetting the board via CF9...',0x0a,0x00

ref_0002258d:
db 'isCLK 0xED00015C Read warning: %r',0x0a,0x00

ref_000225b0:
db 'isCLK 0xED000118 Read warning: %r',0x0a,0x00

ref_000225d3:
db 'isCLK 0xED000120 Read warning: %r',0x0a,0x00

ref_000225f6:
db 'PchInitialize() - Start',0x0a,0x00

ref_0002260f:
db '(PchPlatformPolicyPpi->Rcba & (UINT32) (~0xFFFFC000)) == 0',0x00

ref_0002264a:
db '(MmioRead32 (AcpiBarAddress) & 0xFFFC) == PchPlatformPolicyPpi->PmBase',0x00

ref_00022691:
db '(MmioRead32 (GpioBarAddress) & 0xFFFC) == PchPlatformPolicyPpi->GpioBase',0x00

ref_000226da:
db 'PchInitialize() - End',0x0a,0x00

ref_000226f1:
db 'PchConfigureInterruptRegister() Start',0x0a,0x00

ref_00022718:
db 'PchConfigureInterruptRegister() End',0x0a,0x00

ref_0002273d:
db 'PchEarlyInit() - Start',0x0a,0x00

ref_00022755:
db 'PchEarlyInit() - End',0x0a,0x00

ref_0002276b:
db 'InstallPchInitPpi() - Start',0x0a,0x00

ref_00022788:
db 'PCH SKU is not supported due to no proper PCH LPC found!',0x0a,0x00

ref_000227c2:
db 'Rcba needs to be programmed before here',0x0a,0x00

ref_000227eb:
db 'Failed to allocate memory for PchDmiTcVcMapPpiDesc! ',0x0a,0x00

ref_00022821:
db 'Failed to allocate memory for PchDmiTcVcMapPpi! ',0x0a,0x00

ref_00022853:
db 'InstallPchInitPpi() - End',0x0a,0x00

ref_0002286e:
db '------------------ PCH USB Config ------------------',0x0a,0x00

ref_000228a4:
db ' UsbPerPortCtl= %x',0x0a,0x00

ref_000228b8:
db ' Ehci1Usbr= %x',0x0a,0x00

ref_000228c8:
db ' Ehci2Usbr= %x',0x0a,0x00

ref_000228d8:
db ' PortSettings[%d] Enabled= %x',0x0a,0x00

ref_000228f7:
db ' PortSettings[%d] Location = %x',0x0a,0x00

ref_00022918:
db ' Port30Settings[%d] Enabled= %x',0x0a,0x00

ref_00022939:
db ' Usb20Settings[%d] Enabled= %x',0x0a,0x00

ref_00022959:
db ' Usb30Settings.Mode= %x',0x0a,0x00

ref_00022972:
db ' Usb30Settings.PreBootSupport= %x',0x0a,0x00

ref_00022995:
db ' Usb30Settings.Btcg= %x',0x0a,0x00

ref_000229ae:
db ' Usb30Settings.ManualMode= %x',0x0a,0x00

ref_000229cd:
db ' Usb30Settings.ManualModeUsb20PerPinRoute[%d]= EHCI',0x0a,0x00

ref_00022a02:
db ' Usb30Settings.ManualModeUsb20PerPinRoute[%d]= XHCI',0x0a,0x00

ref_00022a37:
db ' Usb30Settings.ManualModeUsb30PerPinEnable[%d]= %x',0x0a,0x00

ref_00022a6b:
db ' PortUsb20[%d].OverCurrentPin= OC%x',0x0a,0x00

ref_00022a90:
db ' PortUsb20[%d].Usb20EyeDiagramTuningParam1= %x',0x0a,0x00

ref_00022ac0:
db ' PortUsb20[%d].Usb20EyeDiagramTuningParam2= %x',0x0a,0x00

ref_00022af0:
db ' PortUsb30[%d].OverCurrentPin= OC%x',0x0a,0x00

ref_00022b15:
db ' PortUsb30[%d].FixedEqualization = %x',0x0a,0x00

ref_00022b3c:
db ' Usb20PortLength[%d]= %x.%0x',0x0a,0x00

ref_00022b5a:
db '------------------ PCH USB 3.0 Iobp Config ------------------',0x0a,0x00

ref_00022b99:
db ' Usb30IobpConfig[%d].Usb30TxOutVoltDnAmpAdj= %x',0x0a,0x00

ref_00022bca:
db ' Usb30IobpConfig[%d].Usb30TxOutImpScVoltAmpAdj= %x',0x0a,0x00

ref_00022bfe:
db ' Usb30IobpConfig[%d].Usb30TxOutDeEmpAdj= %x',0x0a,0x00

ref_00022c2b:
db ' Usb30IobpConfig[%d].Usb30TxOutAdjEn= %x',0x0a,0x00

ref_00022c55:
db ' Usb30IobpConfig[%d].Usb30TxOutImpAdjVoltAmp= %x',0x0a,0x00

ref_00022c87:
db ' Usb30IobpConfig[%d].Usb30TxOutVoltDnAmpAdjEnable= %x',0x0a,0x00

ref_00022cbe:
db ' Usb30IobpConfig[%d].Usb30TxOutImpScVoltAmpAdjEnable= %x',0x0a,0x00

ref_00022cf8:
db ' Usb30IobpConfig[%d].Usb30TxOutDeEmpAdjEnable= %x',0x0a,0x00

ref_00022d2b:
db ' Usb30IobpConfig[%d].Usb30Ecrt98Enable= %x',0x0a,0x00

ref_00022d57:
db '------------------ PCH PCIE Config ------------------',0x0a,0x00

ref_00022d8e:
db ' RootPort[%d] Enabled= %x',0x0a,0x00

ref_00022da9:
db ' RootPort[%d] Hide= %x',0x0a,0x00

ref_00022dc1:
db ' RootPort[%d] SlotImplemented= %x',0x0a,0x00

ref_00022de4:
db ' RootPort[%d] HotPlug= %x',0x0a,0x00

ref_00022dff:
db ' RootPort[%d] PmSci= %x',0x0a,0x00

ref_00022e18:
db ' RootPort[%d] ExtSync= %x',0x0a,0x00

ref_00022e33:
db ' RootPort[%d] UnsupportedRequestReport= %x',0x0a,0x00

ref_00022e5f:
db ' RootPort[%d] FatalErrorReport= %x',0x0a,0x00

ref_00022e83:
db ' RootPort[%d] NoFatalErrorReport= %x',0x0a,0x00

ref_00022ea9:
db ' RootPort[%d] CorrectableErrorReport= %x',0x0a,0x00

ref_00022ed3:
db ' RootPort[%d] PmeInterrupt= %x',0x0a,0x00

ref_00022ef3:
db ' RootPort[%d] SystemErrorOnFatalError= %x',0x0a,0x00

ref_00022f1e:
db ' RootPort[%d] SystemErrorOnNonFatalError= %x',0x0a,0x00

ref_00022f4c:
db ' RootPort[%d] SystemErrorOnCorrectableError= %x',0x0a,0x00

ref_00022f7d:
db ' RootPort[%d] AdvancedErrorReporting= %x',0x0a,0x00

ref_00022fa7:
db ' RootPort[%d] TransmitterHalfSwing= %x',0x0a,0x00

ref_00022fcf:
db ' RootPort[%d] PcieSpeed= %x',0x0a,0x00

ref_00022fec:
db ' RootPort[%d]'

ref_00022ff9:
db ' FunctionNumber= %x',0x0a,0x00

ref_0002300e:
db ' RootPort[%d] PhysicalSlotNumber= %x',0x0a,0x00

ref_00023034:
db ' RootPort[%d] CompletionTimeout= %x',0x0a,0x00

ref_00023059:
db ' RootPort[%d] Aspm= %x',0x0a,0x00

ref_00023071:
db ' RootPort[%d] L1Substates= %x',0x0a,0x00

ref_00023090:
db ' RootPort[%d]'

ref_0002309d:
db ' LtrEnable= %x',0x0a,0x00

ref_000230ad:
db ' RootPort[%d] LtrConfigLock= %x',0x0a,0x00

ref_000230ce:
db ' RootPort[%d] LtrMaxSnoopLatency= %x',0x0a,0x00

ref_000230f4:
db ' RootPort[%d] LtrMaxNoSnoopLatency= %x',0x0a,0x00

ref_0002311c:
db ' RootPort[%d] SnoopLatencyOverrideMode= %x',0x0a,0x00

ref_00023148:
db ' RootPort[%d] SnoopLatencyOverrideMultiplier= %x',0x0a,0x00

ref_0002317a:
db ' RootPort[%d] SnoopLatencyOverrideValue= %x',0x0a,0x00

ref_000231a7:
db ' RootPort[%d] NonSnoopLatencyOverrideMode= %x',0x0a,0x00

ref_000231d6:
db ' RootPort[%d] NonSnoopLatencyOverrideMultiplier= %x',0x0a,0x00

ref_0002320b:
db ' RootPort[%d] NonSnoopLatencyOverrideValue= %x',0x0a,0x00

ref_0002323b:
db ' EnableSubDecode= %x',0x0a,0x00

ref_00023251:
db ' PchPcieSbdePort= %x',0x0a,0x00

ref_00023267:
db ' RootPortClockGating= %x',0x0a,0x00

ref_00023281:
db ' RootPortFunctionSwapping= %x',0x0a,0x00

ref_000232a0:
db ' AllowNoLtrIccPllShutdown= %x',0x0a,0x00

ref_000232bf:
db '------------------ PCH SATA Config ------------------',0x0a,0x00

ref_000232f6:
db ' SataMode= %x',0x0a,0x00

ref_00023305:
db ' PortSettings[%d] HotPlug= %x',0x0a,0x00

ref_00023324:
db ' PortSettings[%d] InterlockSw= %x',0x0a,0x00

ref_00023347:
db ' PortSettings[%d] External= %x',0x0a,0x00

ref_00023367:
db ' PortSettings[%d] SpinUp= %x',0x0a,0x00

ref_00023385:
db ' PortSettings[%d] SolidStateDrive= %x',0x0a,0x00

ref_000233ac:
db ' PortSettings[%d] DevSlp= %x',0x0a,0x00

ref_000233ca:
db ' PortSettings[%d] EnableDitoConfig= %x',0x0a,0x00

ref_000233f2:
db ' PortSettings[%d] DmVal= %x',0x0a,0x00

ref_0002340f:
db ' PortSettings[%d] DitoVal= %x',0x0a,0x00

ref_0002342e:
db ' PortSettings[%d] PortRxEq GenSpeed[0]'

ref_00023454:
db ' Enable= %x',0x0a,0x00

ref_00023461:
db ' PortSettings[%d] PortRxEq GenSpeed[0] RxEq= %x',0x0a,0x00

ref_00023492:
db ' PortSettings[%d] PortRxEq GenSpeed[1] Enable= %x',0x0a,0x00

ref_000234c5:
db ' PortSettings[%d] PortRxEq GenSpeed[1] RxEq= %x',0x0a,0x00

ref_000234f6:
db ' PortSettings[%d] PortRxEq GenSpeed[2] Enable= %x',0x0a,0x00

ref_00023529:
db ' PortSettings[%d] PortRxEq GenSpeed[2] RxEq= %x',0x0a,0x00

ref_0002355a:
db ' PortSettings[%d] PortIobp Gen3TxOutVoltDnAmpAdj= %x',0x0a,0x00

ref_00023590:
db ' PortSettings[%d] PortIobp Gen12TxOutVoltDnAmpAdj= %x',0x0a,0x00

ref_000235c7:
db ' PortSettings[%d] PortIobp Gen3TxOutDeEmAdj= %x',0x0a,0x00

ref_000235f8:
db ' PortSettings[%d] PortIobp Gen12TxOutDeEmAdj= %x',0x0a,0x00

ref_0002362a:
db ' PortSettings[%d] PortIobp Gen3TxOutVoltDnAmpAdjEnable= %x',0x0a,0x00

ref_00023666:
db ' PortSettings[%d] PortIobp Gen12TxOutVoltDnAmpAdjEnable= %x',0x0a,0x00

ref_000236a3:
db ' PortSettings[%d] PortIobp Gen3TxOutDeEmAdjEnable= %x',0x0a,0x00

ref_000236da:
db ' PortSettings[%d] PortIobp Gen12TxOutDeEmAdjEnable= %x',0x0a,0x00

ref_00023712:
db ' PortSettings[%d] Sata Thermal Throttling Enabled= %x',0x0a,0x00

ref_00023749:
db ' RaidAlternateId= %x',0x0a,0x00

ref_0002375f:
db ' Raid0= %x',0x0a,0x00

ref_0002376b:
db ' Raid1= %x',0x0a,0x00

ref_00023777:
db ' Raid10= %x',0x0a,0x00

ref_00023784:
db ' Raid5= %x',0x0a,0x00

ref_00023790:
db ' Irrt= %x',0x0a,0x00

ref_0002379b:
db ' OromUiBanner= %x',0x0a,0x00

ref_000237ae:
db ' OromUiDelay= %x',0x0a,0x00

ref_000237c0:
db ' HddUnlock= %x',0x0a,0x00

ref_000237d0:
db ' LedLocate= %x',0x0a,0x00

ref_000237e0:
db ' IrrtOnly= %x',0x0a,0x00

ref_000237ef:
db ' SmartStorage= %x',0x0a,0x00

ref_00023802:
db ' SpeedSupport= %x',0x0a,0x00

ref_00023815:
db ' eSATASpeedLimit= %x',0x0a,0x00

ref_0002382b:
db ' TestMode= %x',0x0a,0x00

ref_0002383a:
db ' LegacyMode= %x',0x0a,0x00

ref_0002384b:
db ' SalpSupport= %x',0x0a,0x00

ref_0002385d:
db ' PwrOptEnable= %x',0x0a,0x00

ref_00023870:
db ' PcieNandRemap Enable= %x',0x0a,0x00

ref_0002388b:
db ' PcieNandRemap PcieNandPort= %x',0x0a,0x00

ref_000238ac:
db ' PcieNandRemap ConfigAccessLockDown= %x',0x0a,0x00

ref_000238d5:
db ' PcieNandRemap DeviceResetDelay= %x',0x0a,0x00

ref_000238fa:
db '------------------ PCH IOAPIC Config ------------------',0x0a,0x00

ref_00023933:
db ' BdfValid= %x',0x0a,0x00

ref_00023942:
db ' BusNumber= %x',0x0a,0x00

ref_00023952:
db ' DeviceNumber= %x',0x0a,0x00

ref_00023965:
db ' IoApicId= %x',0x0a,0x00

ref_00023974:
db ' ApicRangeSelect= %x',0x0a,0x00

ref_0002398a:
db ' IoApicEntry24_39= %x',0x0a,0x00

ref_000239a1:
db '------------------ PCH HPET Config ------------------',0x0a,0x00

ref_000239d8:
db ' Enable %x',0x0a,0x00

ref_000239e4:
db ' BdfValid %x',0x0a,0x00

ref_000239f2:
db ' BusNumber %x',0x0a,0x00

ref_00023a01:
db ' DeviceNumber %x',0x0a,0x00

ref_00023a13:
db ' FunctionNumber %x',0x0a,0x00

ref_00023a27:
db ' Base %x',0x0a,0x00

ref_00023a31:
db '------------------ PCH Lock Down Config ------------------',0x0a,0x00

ref_00023a6d:
db ' GlobalSmi= %x',0x0a,0x00

ref_00023a7d:
db ' BiosInterface= %x',0x0a,0x00

ref_00023a91:
db ' GpioLockDown= %x',0x0a,0x00

ref_00023aa4:
db ' RtcLock= %x',0x0a,0x00

ref_00023ab2:
db ' BiosLock= %x',0x0a,0x00

ref_00023ac1:
db ' SmmBwp= %x',0x0a,0x00

ref_00023ace:
db '------------------ PCH Flash Protection Config ------------------',0x0a,0x00

ref_00023b11:
db ' WriteProtectionEnable[%d]= %x',0x0a,0x00

ref_00023b31:
db ' ReadProtectionEnable[%d]= %x',0x0a,0x00

ref_00023b50:
db ' ProtectedRangeLimit[%d]= %x',0x0a,0x00

ref_00023b6e:
db ' ProtectedRangeBase[%d]= %x',0x0a,0x00

ref_00023b8b:
db '------------------ PCH SMBUS Config ------------------',0x0a,0x00

ref_00023bc3:
db ' SmbusIoBase= %x',0x0a,0x00

ref_00023bd5:
db ' NumRsvdSmbusAddresses= %x',0x0a,0x00

ref_00023bf1:
db ' RsvdSmbusAddressTable= {',0x00

ref_00023c0b:
db ' %02xh',0x00

ref_00023c12:
db ' }',0x0a,0x00

ref_00023c16:
db '------------------ PCH Azalia Config ------------------',0x0a,0x00

ref_00023c4f:
db ' Pme= %x',0x0a,0x00

ref_00023c59:
db ' DockSupport= %x',0x0a,0x00

ref_00023c6b:
db ' ResetWaitTimer= %x',0x0a,0x00

ref_00023c80:
db '------------------ PCH PM Config ------------------',0x0a,0x00

ref_00023cb5:
db ' PowerResetStatusClear MeWakeSts= %x',0x0a,0x00

ref_00023cdb:
db ' PowerResetStatusClear MeHrstColdSts= %x',0x0a,0x00

ref_00023d05:
db ' PowerResetStatusClear MeHrstWarmSts= %x',0x0a,0x00

ref_00023d2f:
db ' PowerResetStatusClear MeHostPowerDn= %x',0x0a,0x00

ref_00023d59:
db ' PowerResetStatusClear WolOvrWkSts= %x',0x0a,0x00

ref_00023d81:
db ' WakeConfig PmeB0S5Dis= %x',0x0a,0x00

ref_00023d9d:
db ' WakeConfig WolEnableOverride= %x',0x0a,0x00

ref_00023dc0:

ref_00023de4:

ref_00023e08:
