//
//  TotalView.m
//  Calculator
//
//  Created by 郭红乐 on 2020/10/7.
//  Copyright © 2020 无. All rights reserved.
//

#import "TotalView.h"
#import "Masonry.h"
#define W [UIScreen mainScreen].bounds.size.width
#define H [UIScreen mainScreen].bounds.size.height
@implementation TotalView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self) {
        _Field = [[UITextView alloc] init];
        [self addSubview:_Field];
        _Field.backgroundColor = [UIColor blackColor];
        _Field.textColor = [UIColor whiteColor];
        _Field.font = [UIFont systemFontOfSize:45];
        _Field.editable = NO;
        [_Field mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(30);
            make.left.mas_equalTo(10);
            make.width.equalTo(@(W - 30));
            make.height.equalTo(@(H / 3));
        }];
        _Field.tintColor = [UIColor whiteColor];
        _Field.textAlignment = NSTextAlignmentRight;
        
        
        
        
        
        
        _ACButton = [[TypeButton alloc]init];
        [self addSubview:_ACButton];
        [_ACButton setTitle:@"AC" forState:UIControlStateNormal];
        _ACButton.backgroundColor = [UIColor grayColor];
        [_ACButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(_Field.mas_bottom).offset(15);
            //make.width.mas_equalTo(80);
            make.width.equalTo(@(W / 5.5));
            make.height.equalTo(@(W / 5.5));
            //make.height.mas_equalTo(80);
            make.left.mas_equalTo(15);
        }];
        
        _pointButton = [[TypeButton alloc]init];
        [self addSubview:_pointButton];
        _pointButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
        [_pointButton setTitle:@"." forState:UIControlStateNormal];
        
        _fuButton = [[TypeButton alloc]init];
        [self addSubview:_fuButton];
        _fuButton.backgroundColor = [UIColor grayColor];
        [_fuButton setTitle:@"(" forState:UIControlStateNormal];
        
        _yuButton = [[TypeButton alloc]init];
        [self addSubview:_yuButton];
        _yuButton.backgroundColor = [UIColor grayColor];
        [_yuButton setTitle:@")" forState:UIControlStateNormal];
        
        _addButton = [[TypeButton alloc]init];
        [self addSubview:_addButton];
        _addButton.backgroundColor = [UIColor orangeColor];
        [_addButton setTitle:@"+" forState:UIControlStateNormal];
        
        _subButton = [[TypeButton alloc]init];
        [self addSubview:_subButton];
        _subButton.backgroundColor = [UIColor orangeColor];
        [_subButton setTitle:@"-" forState:UIControlStateNormal];
        
        _divButton = [[TypeButton alloc]init];
        [self addSubview:_divButton];
        _divButton.backgroundColor = [UIColor orangeColor];
        [_divButton setTitle:@"÷" forState:UIControlStateNormal];
        
        _mulButton = [[TypeButton alloc]init];
        [self addSubview:_mulButton];
        _mulButton.backgroundColor = [UIColor orangeColor];
        [_mulButton setTitle:@"*" forState:UIControlStateNormal];
        
        _equButton = [[TypeButton alloc]init];
        [self addSubview:_equButton];
        _equButton.backgroundColor = [UIColor orangeColor];
        [_equButton setTitle:@"=" forState:UIControlStateNormal];
        
        _oneButton = [[TypeButton alloc]init];
        [self addSubview:_oneButton];
        _oneButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
        [_oneButton setTitle:@"1" forState:UIControlStateNormal];
        
        _twoButton = [[TypeButton alloc]init];
        [self addSubview:_twoButton];
        _twoButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
        [_twoButton setTitle:@"2" forState:UIControlStateNormal];
        
        _threeButton = [[TypeButton alloc] init];
        [self addSubview:_threeButton];
        _threeButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
        [_threeButton setTitle:@"3" forState:UIControlStateNormal];
        
        _fourButton = [[TypeButton alloc] init];
        [self addSubview:_fourButton];
        _fourButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
        [_fourButton setTitle:@"4" forState:UIControlStateNormal];
        
        _fiveButton = [[TypeButton alloc] init];
        [self addSubview:_fiveButton];
        _fiveButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
        [_fiveButton setTitle:@"5" forState:UIControlStateNormal];
        
        _sixButton = [[TypeButton alloc] init];
        [self addSubview:_sixButton];
        _sixButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
        [_sixButton setTitle:@"6" forState:UIControlStateNormal];
        
        _sevenButton = [[TypeButton alloc] init];
        [self addSubview:_sevenButton];
        _sevenButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
        [_sevenButton setTitle:@"7" forState:UIControlStateNormal];
        
        _eightButton = [[TypeButton alloc] init];
        [self addSubview:_eightButton];
        _eightButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
        [_eightButton setTitle:@"8" forState:UIControlStateNormal];
        
        _nineButton = [[TypeButton alloc] init];
        [self addSubview:_nineButton];
        _nineButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
        [_nineButton setTitle:@"9" forState:UIControlStateNormal];
        
        _zeroButton = [[TypeButton alloc] init];
        [self addSubview:_zeroButton];
        _zeroButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
        [_zeroButton setTitle:@"0" forState:UIControlStateNormal];
        
        
        
    }
    return self;
}


- (void) layoutSubviews {
    [super layoutSubviews];
        
//        [_Field mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.mas_equalTo(30);
//            make.left.mas_equalTo(10);
//            make.width.equalTo(@(W - 30));
//            make.height.equalTo(@(H / 3));
//        }];
        
//    [_ACButton mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.equalTo(_Field.mas_bottom).offset(20);
//            make.width.mas_equalTo(80);
//            make.height.mas_equalTo(80);
//            make.left.mas_equalTo(20);
//        }];
    [_fuButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_Field.mas_bottom).offset(15);
        make.left.equalTo(_ACButton.mas_right).with.offset(15);
        make.size.mas_equalTo(CGSizeMake(W / 5.5,W/5.5));
    }];
        
    [_yuButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_Field.mas_bottom).offset(15);
        make.left.equalTo(_fuButton.mas_right).with.offset(15);
        make.size.mas_equalTo(CGSizeMake(W / 5.5, W/5.5));
    }];
    
    [_divButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_Field.mas_bottom).offset(15);
        make.left.equalTo(_yuButton.mas_right).with.offset(15);
        make.size.mas_equalTo(CGSizeMake(W/5.5, W/5.5));
    }];
    
    [_sevenButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_ACButton.mas_bottom).offset(15);
        make.width.mas_equalTo(W / 5.5);
        make.height.mas_equalTo(W/5.5);
        make.left.mas_equalTo(15);
    }];
    
    [_eightButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_ACButton.mas_bottom).offset(15);
        make.width.mas_equalTo(W /5.5);
        make.height.mas_equalTo(W/5.5);
        make.left.equalTo(_sevenButton.mas_right).offset(15);
    }];
    
    [_nineButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_yuButton.mas_bottom).offset(15);
        make.width.mas_equalTo(W / 5.5);
        make.height.mas_equalTo(W/5.5);
        make.left.equalTo(_eightButton.mas_right).offset(15);
    }];
    
    [_mulButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_divButton.mas_bottom).offset(15);
        make.width.mas_equalTo(W / 5.5);
        make.height.mas_equalTo(W/5.5);
        make.left.equalTo(_nineButton.mas_right).offset(15);
    }];
    
    [_fourButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_sevenButton.mas_bottom).offset(15);
        make.width.mas_equalTo(W / 5.5);
        make.height.mas_equalTo(W/5.5);
        make.left.mas_equalTo(15);
    }];
    
    [_fiveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_eightButton.mas_bottom).offset(15);
        make.width.mas_equalTo(W / 5.5);
        make.height.mas_equalTo(W/5.5);
        make.left.equalTo(_fourButton.mas_right).offset(15);
    }];
    
    [_sixButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_nineButton.mas_bottom).offset(15);
        make.width.mas_equalTo(W/5.5);
        make.height.mas_equalTo(W/5.5);
        make.left.equalTo(_fiveButton.mas_right).offset(15);
    }];
    
    [_subButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_eightButton.mas_bottom).offset(15);
        make.width.mas_equalTo(W/5.5);
        make.height.mas_equalTo(W/5.5);
        make.left.equalTo(_nineButton.mas_right).offset(15);
    }];
    
    [_oneButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_fourButton.mas_bottom).offset(15);
        make.width.mas_equalTo(W/5.5);
        make.height.mas_equalTo(W/5.5);
        make.left.mas_equalTo(15);
    }];
    
    [_twoButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_fourButton.mas_bottom).offset(15);
        make.width.mas_equalTo(W/5.5);
        make.height.mas_equalTo(W/5.5);
        make.left.equalTo(_oneButton.mas_right).offset(15);
    }];
    
    [_threeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_fourButton.mas_bottom).offset(15);
        make.width.mas_equalTo(W/5.5);
        make.height.mas_equalTo(W/5.5);
        make.left.equalTo(_twoButton.mas_right).offset(15);
    }];
    
    [_addButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_subButton.mas_bottom).offset(15);
        make.width.mas_equalTo(W/5.5);
        make.height.mas_equalTo(W/5.5);
        make.left.equalTo(_threeButton.mas_right).offset(15);
    }];
    
    [_zeroButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_oneButton.mas_bottom).offset(15);
        make.width.mas_equalTo(W/2.5);
        make.height.mas_equalTo(W/5.5);
        make.left.mas_equalTo(15);
    }];
    
    [_pointButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_oneButton.mas_bottom).offset(15);
        make.width.mas_equalTo(W/5.5);
        make.height.mas_equalTo(W/5.5);
        make.left.equalTo(_zeroButton.mas_right).offset(15);
    }];
    
    [_equButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_addButton.mas_bottom).offset(15);
        make.width.mas_equalTo(W/5.5);
        make.height.mas_equalTo(W/5.5);
        make.left.equalTo(_pointButton.mas_right).offset(15);
    }];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
