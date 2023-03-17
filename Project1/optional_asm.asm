.686
.model flat

.data

.code
_asmMAX proc array:PTR DWORD, array_len:DWORD

max_of_array:
    push ebp
    mov ebp, esp
    mov ebx, [ebp+8] ; base address of array
    mov ecx, [ebp+12] ; size of each element in array
    mov eax, 0 ; initialize max to 0
    cmp dword [ebx], 0 ; check if array is empty
    je end_of_function
loop_start:
    mov edx, [ebx] ; load current element of array into edx
    cmp edx, eax ; compare current element to current max
    jle continue_loop ; if current element is less than or equal to current max, continue loop
    mov eax, edx ; set current max to current element
continue_loop:
    add ebx, ecx ; move to next element in array
    cmp dword [ebx], 0 ; check if end of array has been reached
    jne loop_start ; if end of array has not been reached, continue loop
end_of_function:
    mov esp, ebp
    pop ebp
    ret

_asmMAX endp

END