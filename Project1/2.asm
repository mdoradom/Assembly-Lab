.686
.model flat

.stack 1000h

; C CODE
; int i = 42
; int *pi
; int j
; pi = &i
; j = i
; *pi = -1

; IN ASSEMBLY


.data
i DD 42
pi DD ?
j DD ?

.code
_main proc
MOV EAX, [i]
MOV [pi], EAX

MOV EBX, i
MOV j, EBX

;MOV [EAX], -1


_main endp
end _main