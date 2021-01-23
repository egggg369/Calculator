//
//  ViewController.h
//  Calculator
//
//  Created by 郭红乐 on 2020/10/7.
//  Copyright © 2020 无. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TotalView.h"
#import "Model.h"
//NS_ASSUME_NONNULL_BEGIN

@interface ViewController : UIViewController
@property (nonatomic, strong) TotalView *totalView;
@property (nonatomic, strong) Model *model;
@property (nonatomic, strong) NSMutableString *str;
@property (nonatomic, strong) NSMutableString *strshow;

@end

//NS_ASSUME_NONNULL_END
