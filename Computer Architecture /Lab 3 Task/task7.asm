 global _main
 extern _printf

 section . data
 msg db " After INC : EAX = %d | After DEC: EBX = %d", 10, 0

 section . text
 _main :
 mov eax , 10
 inc eax ; Micro -op: EAX = EAX + 1 (11)

 mov ebx , 20
 dec ebx ; Micro -op: EBX = EBX - 1 (19)

 push ebx
 push eax
 push msg
 call _printf
 add esp , 12

 xor eax , eax
 ret