//
//  NavigationTitleViewController.m
//  DZXNavigationController
//
//  Created by 邓梓暄 on 15/12/22.
//  Copyright © 2015年 Zahi. All rights reserved.
//

#import "NavigationTitleViewController.h"

@interface NavigationTitleViewController ()

@end

@implementation NavigationTitleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //创建导航栏标题（显示宽度最大为屏幕宽度，超出屏幕宽度屏幕部分省略）
    self.navigationTitle = @"添加导航栏标题";
    [self createBackButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - create backButton
- (void)createBackButton{
    DZXBarButtonItem *backButton = [DZXBarButtonItem buttonWithImageNormal:[UIImage imageNamed:@"iconBack_normal"]
                                                             imageSelected:[UIImage imageNamed:@"iconBack_selected"]];
    [backButton addTarget:self
                   action:@selector(buttonBackToLastView)
         forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationLeftButton = backButton;
}

#pragma mark - backButton method
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
