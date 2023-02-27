.686
.model flat

.stack 1000h

.data
uarray word 1000h, 2000h, 3000h, 4000h

sarray sword -1, -2, -3, -4

.code
_main proc

; direct-offset addressing from uarray
mov ax, [uarray]
mov bx, [uarray + 2]
mov cx, uarray[4] 
mov dx, 6[uarray]

; direct-offset addressing from sarray
mov ax, [sarray]
mov bx, [sarray + 2]
mov cx, sarray[4] 
mov dx, 6[sarray]

; indirect-offset addressing from uarray
lea ESI, [uarray]
mov ax, [ESI]
mov bx, [ESI + 2]
mov cx, [ESI[4]] ; mov cx, ESI[4] ILLEGAL, SE CREE Q ESI ES UNA ETIQUETA Y SE MUERE 
mov dx, 6[ESI]

_main endp
end _main