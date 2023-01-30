//C Program to find Circular Convolution of given two sequences
#include<stdio.h>
int m,n,x[30],h[30],y[30],i,j,k,x2[30],a[30];
void main()
{
printf("Enter the length of first sequence\n");
scanf("%d",&m);
printf("Enter the length of second sequence\n");
scanf("%d",&n);
printf("Enter the first sequence x(n)\n");
for(i=0;i<m;i++)
scanf("%d",&x[i]);
printf("Enter the second sequence h(n)\n");
for(j=0;j<n;j++)
scanf("%d",&h[j]);
if(m-n!=0)
{
if(m>n)
{
for(i=n;i<m;i++)
h[i]=0;
n=m;
}
for(i=m;i<n;i++)
x[i]=0;
m=n;
}
y[0]=0;
a[0]=h[0];
for(j=1;j<n;j++)
a[j]=h[n-j];
for(i=0;i<n;i++)
y[0]+=x[i]*a[i];
for(k=1;k<n;k++)
{
y[k]=0;
for(j=1;j<n;j++)
x2[j]=a[j-1];
x2[0]=a[n-1];
for(i=0;i<n;i++)
{
a[i]=x2[i];
y[k]+=x[i]*x2[i];
}
}
printf("circular convolution output\n");
for(i=0;i<n;i++)
printf("%d\n",y[i]);
}
