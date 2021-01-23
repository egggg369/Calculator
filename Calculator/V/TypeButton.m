//
//  TypeButton.m
//  Calculator
//
//  Created by 郭红乐 on 2020/10/7.
//  Copyright © 2020 无. All rights reserved.
//

#import "TypeButton.h"

@implementation TypeButton

- (instancetype) init
{
    self = [super init];
    if(self) {
        [self setTintColor:[UIColor whiteColor]];
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = [UIScreen mainScreen].bounds.size.width/10;
        self.titleLabel.font = [UIFont systemFontOfSize:32];
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
