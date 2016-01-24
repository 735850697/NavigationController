//
//  DZXBarButtonItem.h
//  DZXNavigationController
//
//  Created by Kenway on 15/12/21.
//  Copyright © 2015年 Zahi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DZXBarButtonItem : UIButton

//创建文字按钮
+ (instancetype)buttonWithTitle:(NSString *)buttonTitle;

//创建图标按钮
+ (instancetype)buttonWithImageNormal:(UIImage *)imageNormal imageSelected:(UIImage *)imageSelected;

@end
