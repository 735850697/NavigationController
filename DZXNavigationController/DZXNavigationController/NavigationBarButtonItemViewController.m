//
//  NavigationBarButtonItemViewController.m
//  DZXNavigationController
//
//  Created by 邓梓暄 on 15/12/22.
//  Copyright © 2015年 Zahi. All rights reserved.
//

#import "NavigationBarButtonItemViewController.h"

@interface NavigationBarButtonItemViewController ()

@end

@implementation NavigationBarButtonItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationTitle = @"创建按钮";
    [self createNavigationBarButtonItem];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - create BarButtonItem method
- (void)createNavigationBarButtonItem{
    //创建导航栏按钮的方法（左右两侧最多可以各添加两个按钮）
    DZXBarButtonItem *leftButtonBack = [DZXBarButtonItem buttonWithImageNormal:[UIImage imageNamed:@"iconBack_normal"]
                                                                 imageSelected:[UIImage imageNamed:@"iconBack_selected"]]; //添加图标按钮（分别添加图标未点击和点击状态的两张图片）
    
    DZXBarButtonItem *leftButtonSearch = [DZXBarButtonItem buttonWithTitle:@"搜索"]; //添加文字按钮
    
    self.arrayLeftButtons = @[leftButtonBack,
                              leftButtonSearch];

    [leftButtonBack addTarget:self
                       action:@selector(buttonBackToLastView)
             forControlEvents:UIControlEventTouchUpInside]; //按钮添加点击事件
    
    self.navigationLeftButtons = self.arrayLeftButtons; //添加导航栏左侧按钮集合

    DZXBarButtonItem *rightButtonMore = [DZXBarButtonItem buttonWithTitle:@"更多"];
    
    DZXBarButtonItem *rightButtonShare = [DZXBarButtonItem buttonWithTitle:@"分享"];
    
    self.arrayRightButtons = @[rightButtonMore,
                               rightButtonShare];
    
    self.navigationRightButtons = self.arrayRightButtons; //添加导航栏右侧按钮集合
}

#pragma mark - BarButtonItem method
- (void)buttonBackToLastView{
    [self.navigationController popViewControllerAnimated:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
