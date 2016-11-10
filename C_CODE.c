

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
	
	
