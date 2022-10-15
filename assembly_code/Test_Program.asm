MAIN:
	addi s0, zero, 3
	addi s1, zero, 2
	addi s2, zero, 4
	add s0, s0, s1
	sub s0, s0, s2
	ori s1,s0,0x24
	slli t0,s2,4
	srli t1,s1,2