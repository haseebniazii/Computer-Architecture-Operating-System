global _main
 extern _printf

 section . data
 msg db " Initial : %d -> After XOR self : %d", 10, 0

 section . text
 _main :
 mov eax , 888 ; Load non - zero number
 mov ebx , eax ; Keep copy for display
 xor eax , eax ; Hardware zeroing : A ^ A = 0

 push eax
 push ebx
 push msg
 call _printf
 add esp , 12

 xor eax , eax
 ret