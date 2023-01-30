//C Program to find Linear Convolution of given two sequences
#include<stdio.h>
int x[15],h[15],y[15];
void main()
{
int i,j,m,n;
printf("enter the value of m\n");
scanf("%d",&m);
printf("enter the value of n\n");
scanf("%d",&n);
printf("enter first input sequence x(n)\n");
for(i=0;i<m;i++)
scanf("%d",&x[i]);
printf("enter second input sequence h(n)\n");
for(i=0;i<n;i++)
scanf("%d",&h[i]);
for(i=m;i<=m+n-1;i++)
x[i]=0;
for(i=n;i<=m+n-1;i++)
h[i]=0;
for(i=0;i<m+n-1;i++)
{
y[i]=0;
for(j=0;j<=i;j++)
{
y[i]=y[i]+x[j]*h[i-j];
}
}
for(i=0;i<m+n-1;i++)
printf("y[%d]=%d\n",i,y[i]);
}
