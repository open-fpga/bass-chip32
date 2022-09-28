architecture chip32.vm
output "chip32_test.bin", create

// Analogue CHIP32 VM

nop

ld.b  r15,(r14)
ld.b  (r14),r15
ld.w  r15,(r14)
ld.w  (r14),r15
ld.l  r15,(r14)
ld.l  (r14),r15
mul   r15,r14
test  r15,r14
pmpw  r15,r14
pmpr  r15,r14
pmpbw r15,r14
xfill r15,r14
div   r15,r14
rfill r15,r14

ld.b r15,(0xFEDC)
ld.b (0xFEDC),r15
ld.w r15,(0xFEDC)
ld.w (0xFEDC),r15
ld.l r15,(0xFEDC)
ld.l (0xFEDC),r15
ld   r15,#0xFEDC
and  r15,#0xFEDC
or   r15,#0xFEDC
xor  r15,#0xFEDC
add  r15,#0xFEDC
sub  r15,#0xFEDC
cmp  r15,#0xFEDC
bit  r15,#0xFEDC

rset #0xFEDCBA98
crc  r15,r14,r13,#0xFEDC
ld   r15,#0xFEDCBA98
and  r15,#0xFEDCBA98
bic  r15,#0x01234567
or   r15,#0xFEDCBA98
xor  r15,#0xFEDCBA98
add  r15,#0xFEDCBA98
sub  r15,#0xFEDCBA98
cmp  r15,#0xFEDCBA98
bit  r15,#0xFEDCBA98

asl  r15,r14
lsr  r15,r14
rol  r15,r14
ror  r15,r14
asl  r15,#14
lsr  r15,#14
rol  r15,#14
ror  r15,#14
ld   r15,r14
and  r15,r14
or   r15,r14
xor  r15,r14
add  r15,r14
sub  r15,r14
cmp  r15,r14
bit  r15,r14

printf r15
hex.b r15
hex.w r15
hex.l r15
dec.b r15
dec.w r15
dec.l r15
ret
ret nz
ret z
ret nc
ret c
push r15
pop r15
err r15,r14
exit 0
exit 1
clc
sec
uivisible r15,r14
gettime r15

adjfs r15,r14
adjfo r15,r14
adjlp r15,r14
loadf r15
getext r15,r14
getname r15,r14
open r15,r14
close
seek r15
read r15,r14
copy r15,r14
core r15
host r15,r14
queryslot r15

jp nz,0x432
jp z,0x432
jp nc,0x432
jp c,0x432
jp 0x432

call nz,0x432
call z,0x432
call nc,0x432
call c,0x432
call 0x432