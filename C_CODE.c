// CODING PROJECT 2
// GROUP ID-51
// MEMBERS - DEVESH MASANE(15114023) & KARAN CHANDRA(15114036)
// TOPIC : Check the given input is prime or not
// asm file :- cp_2.asm
// c file :- cp_2.c
// s file :- cp_2.s



#include<stdio.h>
int main(void)
{
	int input,i;
	printf("Enter any number (>0) :: ");
	scanf("%d",&input);
	
	if(input==1) printf("INPUT NUMBER IS NOT PRIME");
	else
	{
		for(i=2;i*i<=input;i++)
		{
			if(input%i==0) {printf("INPUT NUMBER IS NOT PRIME"); break; }
		}
	
		if(i*i>input) printf("INPUT NUMBER IS PRIME");
    }
return 0;
}
	
	
