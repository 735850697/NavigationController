//
//  DZXNavigationController.h
//  DZXNavigationController
//
//  Created by Kenway on 15/12/21.
//  Copyright © 2015年 Zahi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PushTransitionAnimation.h"
#import "PopTransitionAnimation.h"
#import "DZXViewController.h"

typedef NS_ENUM(NSUInteger, InteractivePopGestureRecognizerType) {
    InteractivePopGestureRecognizerNone, //没有返回手势
    InteractivePopGestureRecognizerEdge, //边缘返回手势
    InteractivePopGestureRecognizerFullScreen //全屏返回手势
};

@interface DZXNavigationController : UINavigationController <UINavigationControllerDelegate, UIGestureRecognizerDelegate>

@property (strong, nonatomic) UIPercentDrivenInteractiveTransition *percentDrivenInteractiveTransition;

//选择返回手势方式（边缘触发/全屏触发）
@property (nonatomic, assign) InteractivePopGestureRecognizerType interactivePopGestureRecognizerType;

@end
