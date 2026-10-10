 global _main
 extern _printf

 section . data
 msg db " Select Line S=%d -> MUX Routed Output : %d", 10, 0

 section . text
 _main :
 mov edx , 1 ; Select Line S (1 = Channel B, 0 = Channel A)
 mov eax , 100 ; Channel A
 mov ebx , 200 ; Channel B

 
 cmp edx , 1 ; Test control line S
 jne . channel_a ; If S != 1, keep Channel A in EAX
 mov eax , ebx ; If S == 1, route Channel B into output register
 . channel_a :

 push eax ; Routed output value
 push edx ; Select line S
 push msg
 call _printf
 add esp , 12

 xor eax , eax
 ret