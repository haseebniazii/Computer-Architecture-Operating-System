 global _main
 extern _printf

 section . data
 msg db " Input : 0x%02X AND Mask : 0x %02X -> Result : 0x%02X", 10, 0

 section . text
 _main :
 mov eax , 0x5A ; 01011010 b
 mov ebx , 0x0F ; Mask : 00001111 b

 mov ecx , eax
 and ecx , ebx ; Bitwise AND: clears upper 4 bits

 push ecx
 push ebx
 push eax
 push msg
 call _printf
 add esp , 16

 xor eax , eax
 ret