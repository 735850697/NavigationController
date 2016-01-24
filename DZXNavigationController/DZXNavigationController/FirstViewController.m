//
//  FirstViewController.m
//  DZXNavigationController
//
//  Created by Kenway on 15/12/22.
//  Copyright © 2015年 Zahi. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationTitle = @"First";
    [self createBackButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - button method
- (IBAction)buttonPush:(id)sender {
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondViewController animated:YES];
}

- (IBAction)buttonPop:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
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
