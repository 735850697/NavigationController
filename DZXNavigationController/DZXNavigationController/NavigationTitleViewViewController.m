//
//  NavigationTitleViewViewController.m
//  DZXNavigationController
//
//  Created by Kenway on 15/12/23.
//  Copyright © 2015年 Zahi. All rights reserved.
//

#import "NavigationTitleViewViewController.h"

@interface NavigationTitleViewViewController ()

@end

@implementation NavigationTitleViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //在titleView添加控件
    self.segmentController.tintColor = [UIColor whiteColor];
    self.navigationTitleView = self.segmentController;
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
