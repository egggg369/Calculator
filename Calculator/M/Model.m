//
//  Model.m
//  Calculator
//
//  Created by 郭红乐 on 2020/10/7.
//  Copyright © 2020 无. All rights reserved.
//

#import "Model.h"
//
//#define TRUE 1
//#define FALSE 0
//#define OK 1
//#define ERROR 0
//#define INFEASIBLE -1
//#define OVERFLOW -2
//#define STACK_INIT_SIZE 100   //存储空间初始分配量
//#define STACKINCREMENT 10   //存储空间分配增量

//
@implementation Model

//比较运算符优先级
-(int)cmp:(char)c {
    if (c == '(')
        return 0;
    else if (c == '+' || c == '-')
        return 1;
    else if (c =='*' || c == '/')
        return 2;
    return 0;
}


//运算
-(double)yunsuan:(double)x :(double)y :(char)c {
    
    if (c == '+')
        return x + y;
    if (c == '-')
        return x - y;
    if (c == '*')
        return x * y;
    if (c == '/')
        return x / y;
    return 0;
}


//建立栈并初始化
- (Stack *)initStack{
    Stack *stackSymbol = malloc(sizeof(Stack));
    stackSymbol->top = -1;
    return stackSymbol;

}

int push1(Stack *s,double e)//进栈操作
{
    if(s->top==100-1)
    {
        return false;
    }
    s->top++;
    s->data[s->top]=e;
    return true;
}
int pop(Stack *s,double *e)//出栈操作
{
    if(s->top==-1)
        return false;
    *e=s->data[s->top];
    s->top--;
    return true;
}




//判断是否为空
- (BOOL)isEmpty:(Stack *)stack {
    if (stack->top == -1) {
        return true;
    }
    else
    {
        return false;
    }
}




- (double)solve:(char *)s{
    char ans[500];
    int k = 0;
    int len = strlen(s);
    s[len] = '=';
    Stack *oc = malloc(sizeof(Stack));
    oc->top = -1;
    //中缀-->后缀；
    StackNum *on = malloc(sizeof(StackNum));
    on->top = -1;
    for(int i = 0; i <= len; i++) {
        if ((s[i]>='0'&&s[i] <= '9')|| s[i] =='.')
            ans[k++] = s[i];
        else if(s[i] == '+'|| s[i] == '-'|| s[i] == '*'||s[i] == '/') {
            ans[k++] = '#';
          
            if ([self isEmpty:oc])
                 //[self push:s[i] :oc ];
                push1(oc, s[i]);
            else {
                while(![self isEmpty:oc]&& [self cmp:oc->data[oc->top]] >=  [self cmp:s[i]]) {//比较运算符优先级
                    ans[k++] = oc->data[oc->top];
                    oc->top--;
                }
                //[ self push:s[i] :oc ];
                push1(oc, s[i]);
            }
            
        }
        else if(s[i] == '(') {
        push1(oc,s[i]);
        }
        else if(s[i]==')') {
            while(oc->data[oc->top]!='(') {
                ans[k++] = oc->data[oc->top];
                oc->top--;
            }
           oc->top--;;
        }
        else if(s[i] == '=') {
            while(![self isEmpty:oc]) {
                ans[k++] = oc->data[oc->top];
                oc->top--;
            }
        }
    }
    
    //得到后缀表达式 ans;
     
    puts(ans);
    
//    string format(string str){
//        for(int i = 0;i < str.length(); i++){
//            if(str[i] == '-'){
//                if(i == 0){
//                    str.insert(0,1,'0');
//                }else if(str[i-1] == '('){
//                    str.insert(i,1,'0');
//                }
//            }
//
//        }
//        return str;
//    }
    
//    string format(string ans) {
//        for(int i = 0; i < ans.len; i++) {
//            if(ans[i] == '-') {
//                if(i == 0) {
//                    ans.in
//                }
//            }
//        }
//    }
    
    char str[100];
    int i = 0;
    double a, b, c, sum;
    Stack *ot = malloc(sizeof(Stack));
    ot->top = -1;
    while(ans[i] != '\0') {
        if((ans[i] == '-' && i < len - 1 &&  ans[i+1] >= '0' && ans[i+1] <= '9') ||(ans[i] >= '0' && ans[i] <= '9')) {
            sum = 0.0;
            sum = ans[i] - '0';
            i++;
            while((ans[i] >= '0' && ans[i] <= '9') ||ans[i+1] == '.')
            {
                sum = sum * 10 + ans[i] - '0';
                i++;
            }
            //[self push:sum :ot ];
            push1(ot,sum);
        }
        if(ans[i] == '+' || ans[i] == '-' || ans[i] == '*' || ans[i] == '/') {
            //[self pop:ot];
            //[self pop:ot];
            pop(ot, &a);
            pop(ot, &b);
            if(ans[i]=='+')
                push1(ot,b+a);
            else if(ans[i]=='-')
                push1(ot,b-a);
            else if(ans[i]=='*')
                push1(ot,b*a);
            else if(ans[i]=='/')
                push1(ot,b/a);
            else
                printf("error\n");
            
        }
        i++;
    }
    pop(ot, &c);
    //_num = c;
    return c;
}


- (BOOL)piPei:(char *)s {
    int len = strlen(s);
      for (int i = 0; i<len; i++) {
          if(s[i]=='('&&s[i+1]==')')
              return false;
      }

    Stack *stack = malloc(sizeof(Stack));
    stack->top = -1;
    for (int i = 0; i<len; i++) {
        if (s[i] == '(') {
            stack->top++;
        }
        if (s[i] == ')') {
            if(stack->top == -1)
                return false;
            stack->top--;
        }
    }
    if (stack->top == -1) {
        return true;
    }
    else {
        return false;
    }
    return false;
}




@end
