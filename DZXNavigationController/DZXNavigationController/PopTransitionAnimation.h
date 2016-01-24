//
//  PopTransitionAnimation.h
//  DZXNavigationController
//
//  Created by Kenway on 15/12/21.
//  Copyright © 2015年 Zahi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PopTransitionAnimation : NSObject <UIViewControllerAnimatedTransitioning>

//阴影图层
@property (strong, nonatomic) UIView *shadowView;

@end
