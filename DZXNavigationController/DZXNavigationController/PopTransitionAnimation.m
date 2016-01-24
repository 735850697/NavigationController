//
//  PopTransitionAnimation.m
//  DZXNavigationController
//
//  Created by Kenway on 15/12/21.
//  Copyright © 2015年 Zahi. All rights reserved.
//

#import "PopTransitionAnimation.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEE_HEIGHT [UIScreen mainScreen].bounds.size.height

@implementation PopTransitionAnimation

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
    //获取转场后界面图层
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    //初始化阴影图层
    self.shadowView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEE_HEIGHT)];
    self.shadowView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.6f];
    
    [toViewController.view addSubview:self.shadowView];
    
    [containerView insertSubview:toViewController.view
                    belowSubview:fromViewController.view];
    
    //缩小视图，随着动画慢慢恢复正常
    toViewController.view.transform = CGAffineTransformMakeScale(0.9, 0.9);
    
    //添加阴影
    fromViewController.view.layer.shadowColor = [[UIColor blackColor] CGColor];
    fromViewController.view.layer.shadowOpacity = 0.6;
    fromViewController.view.layer.shadowRadius = 8;
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext]
                     animations:^{
                         self.shadowView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0];
                         fromViewController.view.frame = CGRectMake(SCREEN_WIDTH, 0, SCREEN_WIDTH, SCREEE_HEIGHT);
                         toViewController.view.transform = CGAffineTransformMakeScale(1.0, 1.0);
                     } completion:^(BOOL finished) {
                         [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
                         [self.shadowView removeFromSuperview];
                     }];
}

@end
