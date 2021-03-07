#include<stdio.h>

int sum(int a, int b)
{
        int c =  0;
        c = a+b;
        return c;
}


int main()
{
        int a = 1;
        int b = 2;
        int ans = 0;
        ans = sum(a, b);
	ans = ans - 1;
	if (ans < 3)
		return ans;
	return 0;
}
