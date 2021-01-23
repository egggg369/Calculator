//
//  TotalView.h
//  Calculator
//
//  Created by 郭红乐 on 2020/10/7.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TypeButton.h"
NS_ASSUME_NONNULL_BEGIN

@interface TotalView : UIView
@property (nonatomic, strong) TypeButton *ACButton;
@property (nonatomic, strong) TypeButton *addButton;
@property (nonatomic, strong) TypeButton *subButton;
@property (nonatomic, strong) TypeButton *mulButton;
@property (nonatomic, strong) TypeButton *divButton;
@property (nonatomic, strong) TypeButton *fuButton;
@property (nonatomic, strong) TypeButton *yuButton;
@property (nonatomic, strong) TypeButton *equButton;
@property (nonatomic, strong) TypeButton *pointButton;
@property (nonatomic, strong) TypeButton *oneButton;
@property (nonatomic, strong) TypeButton *twoButton;
@property (nonatomic, strong) TypeButton *threeButton;
@property (nonatomic, strong) TypeButton *fourButton;
@property (nonatomic, strong) TypeButton *fiveButton;
@property (nonatomic, strong) TypeButton *sixButton;
@property (nonatomic, strong) TypeButton *sevenButton;
@property (nonatomic, strong) TypeButton *eightButton;
@property (nonatomic, strong) TypeButton *nineButton;
@property (nonatomic, strong) TypeButton *zeroButton;
@property (nonatomic, strong) UITextView *Field;
@end

NS_ASSUME_NONNULL_END
