#include<stdio.h>
#include<ctype.h>
char infix[50],postfix[50],stack[50],top,symbol;
void push(char sym)
{
stack[++top]=sym;
}
char pop()
{
char sym;
sym=stack[top--];
return sym;
}
int precedence(char sym)
{
switch(sym)
{
case '$':return -1;
case '(':return 0;
case '+':return 1;
case '-':return 1;
case '*':return 2;
case '/':return 2;
case '^':return 2;
}
}
void infxtopostfx()
{
int i=0,k=0;
char b;
while(infix[i]!='\0')
{
symbol=infix[i];
i++;
if(symbol=='(')
{
push(symbol);
}
else if(isalnum(symbol))
{
postfix[k++]=symbol;
}
else if(symbol==')')
{
while(stack[top]!='(')
{
postfix[k++]=pop();
}
b=pop();
}
else
{
while(precedence(symbol)<=precedence(stack[top]))
{
postfix[k++]=pop();
}
push(symbol);
}
}
while(stack[top]!='$')
{
postfix[k++]=pop();
}
}
void main()
{
printf("enter the infix expression:");
scanf("%s",infix);
push('$');
infxtopostfx();
printf("postfix expression is:\t");
puts(postfix);
}



