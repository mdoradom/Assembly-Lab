.686
.model flat

.stack 1000h

; CODIGO EN C
; invertirVector(vec, size)
;
; for (int i = 0; i < size; i++) {
;	int tmp = vec[i]
;	vec[i] = vec[size-i-1]
;	vec[size-i-1] = tmp
;}

.data
vec DD 1, 2, 3, 4, 5
size DD 5

.code
_main proc

    mov ECX, 0               ; ECX contendr� el contador i
for_loop:
    cmp ECX, size            ; comparar el contador con el tama�o del array
    jge end_for              ; si ECX >= size, salir del loop
    mov EDX, size            ; EDX contendr� size
    sub EDX, ECX             ; EDX contendr� size - i
    dec EDX                  ; EDX contendr� size - i - 1
    mov EAX, vec[ECX]        ; EAX contendr� vec[i]
    mov EBX, vec[EDX]        ; EBX contendr� vec[size - i - 1]
    mov vec[ECX], EBX        ; intercambiar los elementos
    mov vec[EDX], EAX        ;
    inc ECX                  ; incrementar el contador i
    jmp for_loop             ; saltar al inicio del loop
end_for:
    ; el loop ha terminado
    ; aqu� puedes poner el resto del c�digo
    ; que necesites para tu programa
    ; y luego salir de la funci�n _main
    ret
_main endp

_main endp
end _main