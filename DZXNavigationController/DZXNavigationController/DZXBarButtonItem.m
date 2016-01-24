//
//  DZXBarButtonItem.m
//  DZXNavigationController
//
//  Created by Kenway on 15/12/21.
//  Copyright © 2015年 Zahi. All rights reserved.
//

#import "DZXBarButtonItem.h"

@implementation DZXBarButtonItem

//实现创建文字按钮
+ (instancetype)buttonWithTitle:(NSString *)buttonTitle{
    //初始化
    DZXBarButtonItem *barButtonItem = [super buttonWithType:UIButtonTypeSystem];
    
    //动态计算按钮宽度
    CGSize buttonSize = [buttonTitle sizeWithAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:17.0f]}];
    //限制按钮的最大宽度为（中文4个字的宽度：68）
    if (buttonSize.width > 68) {
        buttonSize.width = 68;
    }
    
    //按钮文字过长截断方式
    barButtonItem.titleLabel.lineBreakMode = NSLineBreakByClipping;
    
    barButtonItem.frame = CGRectMake(0, 0, buttonSize.width, 33);
    
    [barButtonItem setTitle:buttonTitle forState:UIControlStateNormal];
    //按钮字体颜色默认为白色
    barButtonItem.tintColor = [UIColor whiteColor];
    barButtonItem.titleLabel.font = [UIFont boldSystemFontOfSize:17.0f];
    
    return barButtonItem;
}

//实现创建图标按钮
+ (instancetype)buttonWithImageNormal:(UIImage *)imageNormal imageSelected:(UIImage *)imageSelected{
    DZXBarButtonItem *barButtonItem = [super buttonWithType:UIButtonTypeCustom];
    
    barButtonItem.frame = CGRectMake(0, 0, 33, 33);
    [barButtonItem setImage:imageNormal forState:UIControlStateNormal];
    [barButtonItem setImage:imageSelected forState:UIControlStateHighlighted];
    
    return barButtonItem;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
