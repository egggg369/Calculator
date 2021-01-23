//
//  ViewController.m
//  Calculator
//
//  Created by 郭红乐 on 2020/10/7.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSInteger a;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    _a = 0;
    _totalView = [[TotalView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [_totalView layoutSubviews];
    
    //_totalView.delegate = self;
    [self.view addSubview:_totalView];
    
    _model = [[Model alloc] init];
    
    self.str = [[NSMutableString alloc] initWithString:@""];
    self.strshow = [[NSMutableString alloc] initWithString:@""];
    
    
    [self.totalView.divButton addTarget:self action:@selector(Div) forControlEvents:UIControlEventTouchUpInside];
    [self.totalView.eightButton addTarget:self action:@selector(eight) forControlEvents:UIControlEventTouchUpInside];
    [self.totalView.twoButton addTarget:self action:@selector(two) forControlEvents:UIControlEventTouchUpInside];
    [self.totalView.addButton addTarget:self action:@selector(Add) forControlEvents:UIControlEventTouchUpInside];
    [self.totalView.equButton addTarget:self action:@selector(equ) forControlEvents:UIControlEventTouchUpInside];
    [self.totalView.subButton addTarget:self action:@selector(sub) forControlEvents:UIControlEventTouchUpInside];
    [self.totalView.mulButton addTarget:self action:@selector(mul) forControlEvents:UIControlEventTouchUpInside];
    [self.totalView.pointButton addTarget:self action:@selector(point) forControlEvents:UIControlEventTouchUpInside];
    [self.totalView.fuButton addTarget:self action:@selector(fu) forControlEvents:UIControlEventTouchUpInside];
    [self.totalView.yuButton addTarget:self action:@selector(yu) forControlEvents:UIControlEventTouchUpInside];
    [self.totalView.zeroButton addTarget:self action:@selector(zero) forControlEvents:UIControlEventTouchUpInside];
    [self.totalView.oneButton addTarget:self action:@selector(one) forControlEvents:UIControlEventTouchUpInside];
    [self.totalView.threeButton addTarget:self action:@selector(three) forControlEvents:UIControlEventTouchUpInside];
    [self.totalView.fourButton addTarget:self action:@selector(four) forControlEvents:UIControlEventTouchUpInside];
    [self.totalView.sixButton addTarget:self action:@selector(six) forControlEvents:UIControlEventTouchUpInside];
    [self.totalView.sevenButton addTarget:self action:@selector(seven) forControlEvents:UIControlEventTouchUpInside];
    [self.totalView.fiveButton addTarget:self action:@selector(five) forControlEvents:UIControlEventTouchUpInside];
    [self.totalView.nineButton addTarget:self action:@selector(nine) forControlEvents:UIControlEventTouchUpInside];
    [self.totalView.ACButton addTarget:self action:@selector(AC)
        forControlEvents:UIControlEventTouchUpInside];
   
    // Do any additional setup after loading the view.
    
    
}

-(BOOL)select {
    if(_a == 1) {
        return false;
    }
    else
        return true;
}

- (void) Div {
    if([self select]) {
        [self.str appendString:@"÷"];
        [self.strshow appendString:@"/"];
        self.totalView.Field.text = self.str;
        
        const char * a = [self.strshow UTF8String];
        printf("%c", a[0]);
        _a = 1;
    }
    else {
        
    }
}

- (void) Add
{
    if([self select]) {
        [self.str appendString:@"+"];
        [self.strshow appendString:@"+"];
        self.totalView.Field.text = self.str;
        _a = 4;
    }
}

- (void) sub {
    if([self select]) {
        [self.str appendString:@"-"];
        [self.strshow appendString:@"-"];
        self.totalView.Field.text = self.str;
        _a = 3;
    }
}

- (void) mul
{
    if([self select]) {
        [self.str appendString:@"*"];
        [self.strshow appendString:@"*"];
        self.totalView.Field.text = self.str;
        _a = 2;
    }
}

- (void) AC
{
    
//    [self.strshow appendString:@""];
    self.strshow = [NSMutableString stringWithFormat:@""];
    self.str = [NSMutableString stringWithFormat:@""];
    self.totalView.Field.text = self.str;
    //self.totalView.Field.placeholder = @"";
    //_model.c = NULL;
    _a = 5;
}

- (void) equ
{
    const char *y =[self.strshow UTF8String];
//    [self.str appendString:@""];
//    [self.strshow appendString:@""];
//    self.totalView.Field.text = self.str;
    //int x = [_Model main:y];
    if([_model piPei:y]){
    double b = [_model solve:y];
       NSNumber * c = [NSNumber numberWithFloat:b];
        
      self.totalView.Field.text = [NSString  stringWithFormat:@"%@",c];
      }
      else {
          self.totalView.Field.text  = @"Error";
          
      }
    
      _a = 5;
}

- (void) fu {
    [self.str appendString:@"("];
    [self.strshow appendString:@"("];
    self.totalView.Field.text = self.str;
    _a = 0;
}

- (void) yu {
    [self.str appendString:@")"];
    [self.strshow appendString:@")"];
    self.totalView.Field.text = self.str;
    _a = 0;
}

- (void) eight {
    [self.str appendString:@"8"];
    [self.strshow appendString:@"8"];
    self.totalView.Field.text = self.str;
    _a = 0;
}

- (void) two {
    [self.str appendString:@"2"];
    [self.strshow appendString:@"2"];
    self.totalView.Field.text = self.str;
    _a = 0;
}

- (void) three
{
    [self.str appendString:@"3"];
    [self.strshow appendString:@"3"];
    self.totalView.Field.text = self.str;
    _a = 0;
}

- (void) four {
    [self.str appendString:@"4"];
    [self.strshow appendString:@"4"];
    self.totalView.Field.text = self.str;
    _a = 0;
}

- (void) five {
    [self.str appendString:@"5"];
    [self.strshow appendString:@"5"];
    self.totalView.Field.text = self.str;
    _a = 0;
}

- (void) six {
    [self.str appendString:@"6"];
    [self.strshow appendString:@"6"];
    self.totalView.Field.text = self.str;
    _a = 0;
}

- (void) seven {
    [self.str appendString:@"7"];
    [self.strshow appendString:@"7"];
    self.totalView.Field.text = self.str;
    _a = 0;
}

- (void) nine {
    [self.str appendString:@"9"];
    [self.strshow appendString:@"9"];
    self.totalView.Field.text = self.str;
    _a = 0;
}

- (void) one {
    [self.str appendString:@"1"];
    [self.strshow appendString:@"1"];
    self.totalView.Field.text = self.str;
    _a = 0;
}

- (void) zero {
    [self.str appendString:@"0"];
    [self.strshow appendString:@"0"];
    self.totalView.Field.text = self.str;
    _a = 0;
}

- (void) point {
    [self.str appendString:@"."];
    [self.strshow appendString:@"."];
    self.totalView.Field.text = self.str;
    _a = 0;
}

@end
