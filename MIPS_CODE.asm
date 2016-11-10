
# registers used
# $t0 stores zero
# $t1 stores 3 & incremented in loop by 2
# $t2 stores input
# $t3 stores $t1*$t1 
# $t4 stores remainder of $t2%$t1
# $t5 used in checking $t3>$t2
# $a0 used for input/output
# $v0 used for commands for $a0





.data 
	print_prime: .asciiz "INPUT NUMBER IS PRIME"			#displayed if input is prime
	print_not_prime: .asciiz "INPUT NUMBER IS NOT PRIME"		#displayed if input is not prime
	get_input: .asciiz "Enter any number (>0) :: "			#displayed while taking input
	.globl main
.text
main:
	addi $t0,$zero,0     #initialize $t0 to 0		
	addi $t1,$t0,3       #initialize $t1 to 3
	
#general display
	li $v0,4
	la $a0,get_input
	syscall

 # getting input from user
	li $v0,5
	syscall
 # storing input in $t2
	move $t2,$v0

	beq $t2,1,not_prime	#check if number is 1

# check if number is divisible by 2
rem $t3,$t2,2
beq $t3,0,not_prime     #if numbere is divisible by 2 print not_prime & exit


# loop for checking divisibility by odd numbers

	loop:

     #checking condition if $t1*$t1<=$t2
	mul $t3,$t1,$t1
	slt $t5,$t2,$t3
	beq $t5,1,prime	  #if voilated print prime

     #check if number is divisible by $t1	
	rem $t4,$t2,$t1
	beq $t4,0,not_prime	#if yes print not prime
	
    #increment $t1 <- $t1+2
	addi $t1,$t1,2	
    	j loop



#print prime
	prime:
		li $v0,4
		la $a0,print_prime
		syscall
	j exit
#print not_prime
	not_prime:
		li $v0,4
		la $a0,print_not_prime
		syscall
	j exit

exit:     
	#end of program
	li  $v0, 10     	#system call code for exit
	syscall	

	
