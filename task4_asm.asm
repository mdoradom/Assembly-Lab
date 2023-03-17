.686
.model flat

EXTERNDEF C vector:DWORD

.data

vector DD 13, 6, 25, 9, 3, 12, 55, 67, 23, 32, 6, 41, 5, 0

.code
_asmAVG proc
    ; Initialize the sum and counter to 0
    xor     ebx, ebx               ; ebx = sum
    xor     ecx, ecx               ; ecx = counter

    ; Calculate the sum of the array elements
    mov     esi, OFFSET vector     ; esi points to the beginning of the array

_loop:
    cmp     dword ptr [esi], 0     ; check if the current element is 0
    je      done                   ; if it is, exit the loop
    add     ebx, [esi]             ; add the current element to the sum
    add     esi, 4                 ; move to the next element
    inc     ecx                    ; increment the counter
    jmp     _loop                  ; continue looping

    ; Calculate the average and return it
done:
    mov     eax, ebx               ; move the sum to eax
    cdq                            ; sign-extend the sum to edx
    idiv    ecx                    ; divide the sum by the 
    ret
_asmAVG endp

END