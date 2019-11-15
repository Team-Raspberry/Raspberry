.section .data
x: .word 1

.section .text
.global _start
_start:
	ldr r1, =x
	ldr r1, [r1]
	
	cmp r1, #3
	bgt else

then: sub r1, #1
      ldr r2, =x
      str r1, [r2]
      b end

else: sub r1, #2
      ldr r2, =x
      str r1, [r2]

end:  mov r7, #1
      svc #0
      .end


