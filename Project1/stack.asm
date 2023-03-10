.686
.model flat

.stack 1000h

.code
_main proc

; apartado 1
push 1
push 2
push 3

; apartado 2

pop EAX
pop EBX
pop ECX

; apartado 3
push 1
push 2
push 3

; apartado 4
mov EAX, [ESP]
mov EBX, [ESP+4]
mov ECX, [ESP+8]

; apartado 5
push 4

; apartado 6
mov EAX, [ESP+4]
mov EBX, [ESP+8]
mov ECX, [ESP+12]

; apartado 7

mov EBP, ESP

; apartado 8
sub ESP, 4 ; tmp1
sub ESP, 4 ; tmp2

; apartado 9
push 5

; apartado 10
mov dword ptr [EBP-4], 666h
; es igual que
; mov EAX, 666h
; mov [EBP-4], EAX

; apartado 11
mov dword ptr [EBP-8], 42

; apartado 12
mov EAX, [EBP+4]
mov EBX, [EBP+8]
mov ECX, [EBP+12]

_main endp

end _main