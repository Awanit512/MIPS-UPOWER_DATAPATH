# Program to find the sum, difference, product, bitwise and, bitwise or, and bitwise nor of two numbers
.text
main:
addi $t0, $zero, 32 
addi $t1, $zero, 55 
and $s0, $t0, $t1 
or $s0, $t0, $t1 
sw $s0, 4($zero) 
sw $t0, 8($zero) 
add $s1, $t0, $t1 
sub $s2, $t0, $t1 
beq $s1, $s2, error0 
lw $s1, 4($zero) 
andi $s2, $s1, 48 
beq $s1, $s2, error1 
lw $s3, 8($zero) 
beq $s0, $s3, error2 
slt $s4, $s2, $s1 (Last) 
add $s2, $s1, $0 
addi $t0, $0, 0(error0) 
addi $t1, $0, 0 
addi $t0, $0, 1(error1) 
addi $t1, $0, 1 
addi $t0, $0, 2(error2) 
addi $t1, $0, 2  
addi $t0, $0, 3(error3) 
addi $t1, $0, 3 
j EXIT