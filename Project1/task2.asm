.686
.model flat

.stack 1000h

.data
    dividend    dd  20  ; the dividend
    divisor     dd  5   ; the divisor
    quotient    dd  0   ; the quotient
    remainder   dd  0   ; the remainder

.code
_main proc
    mov eax, [dividend]      ; load dividend into eax
    mov ebx, [divisor]       ; load divisor into ebx
    mov ecx, [quotient]      ; load quotient into ecx
    mov edx, [remainder]     ; load remainder into edx

div_loop:
    cmp eax, ebx             ; compare dividend and divisor
    jl div_done              ; if dividend < divisor, division is done
    
    sub eax, ebx             ; subtract divisor from dividend
    add ecx, 1               ; increment quotient
    jmp div_loop             ; repeat division
div_done:

_main endp
end _main

END