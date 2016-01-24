//
//  DZXViewController.h
//  DZXNavigationController
//
//  Created by Kenway on 15/12/21.
//  Copyright © 2015年 Zahi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DZXBarButtonItem.h"

@interface DZXViewController : UIViewController

@property (strong, nonatomic) UIView *navigationView; //自定义导航栏
@property (strong, nonatomic) UIControl *navigationTitleView; //标题视图
@property (copy, nonatomic) NSString *navigationTitle; //标题文字
@property (strong, nonatomic) UIColor *navigationBackgroundColor; //导航栏背景色
@property (strong, nonatomic) UIButton *navigationLeftButton; //导航栏左侧按钮
@property (strong, nonatomic) UIButton *navigationRightButton; //导航栏右侧按钮
@property (copy, nonatomic) NSArray<UIButton *> *navigationLeftButtons; //导航栏左侧按钮集合（最多两个）
@property (copy, nonatomic) NSArray<UIButton *> *navigationRightButtons; //导航栏右侧按钮集合（最多两个）
@property (nonatomic) CGFloat navigationAlpha; //导航栏背景透明度

@end
