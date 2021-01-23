//
//  Model.h
//  Calculator
//
//  Created by 郭红乐 on 2020/10/7.
//  Copyright © 2020 无. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Model : NSObject

//typedef char SElemType;
//typedef char OperandType;   //表达式求值的运算类型
//typedef int Status;
//
//typedef struct
//{
//    SElemType *base;
//    SElemType *top;
//    int stacksize;
//}SqStack;
//
//int InitStack(SqStack *S);
//Status GetTop(SqStack *S, SElemType *e);
//Status Push(SqStack *S, SElemType e);
//Status Pop(SqStack *S, SElemType *e);
//Status StackDestroy(SqStack *S);
//
//void ClearStack(SqStack *S);
//char Precede(char t1, char t2);
//Status In(OperandType c);
//OperandType Operate(OperandType a, OperandType theta, OperandType b);
//OperandType EvaluateExpression(void);

//@property double *sum;
@property NSNumber *num;
typedef struct{
    char data[100];
    int top;
}Stack;
typedef struct{
float data[100];
    int top;
}StackNum;
-(int)cmp :(char)c;

-(double)solve:(char*)s;
-(Stack*)initStack;
-(void)pop:(Stack*)stack ;
int pop(Stack *s,double *e);
int push1(Stack *s,double e);
-(BOOL)isEmpty:(Stack*)stack;
-(BOOL)piPei:(char*)s;


@end

NS_ASSUME_NONNULL_END
