	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, r6, lr}
	@ R0 = x
	@ R3 = before
	mov r3, #-1 
	@ R4 = current
	mov r4, #1
	@ R5 = i
	mov r5, r0
	@ R6 = sum
	mov r6, #0
.for:
	add r6, r4, r3
	mov r3, r4
	mov r4, r6
	subs r5, r5 ,#1
	bge .for
	@ return sum
	mov r0, r6	
	pop {r3, r4, r5, r6, pc}

	.size fibonacci, .-fibonacci
	.end

