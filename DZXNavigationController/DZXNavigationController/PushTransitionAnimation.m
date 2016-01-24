//
//  PushTransitionAnimation.m
//  DZXNavigationController
//
//  Created by Kenway on 15/12/21.
//  Copyright © 2015年 Zahi. All rights reserved.
//

#import "PushTransitionAnimation.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEE_HEIGHT [UIScreen mainScreen].bounds.size.height

@implementation PushTransitionAnimation

//转场动画时间
- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    return 0.25;
}

//转场动画
- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    //获取转场容器
    UIView *containerView = [transitionContext containerView];
    
    //获取转场前界面视图
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    //获取转场后界面视图
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    //初始化阴影视图并添加至界面
    self.shadowView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEE_HEIGHT)];
    self.shadowView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0];
    [fromViewController.view addSubview:self.shadowView];
    
    [containerView insertSubview:toViewController.view
                    aboveSubview:fromViewController.view];
    
    //设置转场后视图初始位置和大小
    toViewController.view.frame = CGRectMake(SCREEN_WIDTH, 0, SCREEN_WIDTH, SCREEE_HEIGHT);
    
    //toViewController.view添加阴影
    toViewController.view.layer.shadowColor = [[UIColor blackColor] CGColor];
    toViewController.view.layer.shadowOpacity = 0.6;
    toViewController.view.layer.shadowRadius = 8;
    
    //执行动画
    [UIView animateWithDuration:[self transitionDuration:transitionContext]
                     animations:^{
                         self.shadowView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.6f];
                         fromViewController.view.transform = CGAffineTransformMakeScale(0.9, 0.9);
                         toViewController.view.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEE_HEIGHT);
                     } completion:^(BOOL finished) {
                         [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
                         [self.shadowView removeFromSuperview];
                     }];
}

@end
