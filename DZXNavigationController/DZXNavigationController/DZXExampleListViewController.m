//
//  DZXExampleListViewController.m
//  DZXNavigationController
//
//  Created by Kenway on 15/12/21.
//  Copyright © 2015年 Zahi. All rights reserved.
//

#import "DZXExampleListViewController.h"

static NSString *cellIdentifier = @"CELLIDENTIFIER";

@interface DZXExampleListViewController ()

@end

@implementation DZXExampleListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.listTableView.tableFooterView = [[UIView alloc] init];
    
    [self createListArray];
    
    self.navigationTitle = @"List";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - create list array
- (void)createListArray{
    self.arrayExampleList = @[@"视图切换动画",
                              @"导航栏透明度",
                              @"导航栏标题",
                              @"导航栏添加控件",
                              @"导航栏按钮"];
}

#pragma mark - tableview method
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.arrayExampleList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = self.arrayExampleList[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:
        {
            FirstViewController *firstViewController = [[FirstViewController alloc] init];
            [self.navigationController pushViewController:firstViewController animated:YES];
        }
            break;
        case 1:
        {
            NavigationTranslucentViewController *navigationTranslucentViewController = [[NavigationTranslucentViewController alloc] init];
            [self.navigationController pushViewController:navigationTranslucentViewController animated:YES];
        }
            break;
        case 2:
        {
            NavigationTitleViewController *navigationTitleViewController = [[NavigationTitleViewController alloc] init];
            [self.navigationController pushViewController:navigationTitleViewController animated:YES];
        }
            break;
        case 3:
        {
            NavigationTitleViewViewController *navigationTitleViewViewController = [[NavigationTitleViewViewController alloc] init];
            [self.navigationController pushViewController:navigationTitleViewViewController animated:YES];
        }
            break;
        case 4:
        {
            NavigationBarButtonItemViewController *navigationBarButtonItemViewController = [[NavigationBarButtonItemViewController alloc] init];
            [self.navigationController pushViewController:navigationBarButtonItemViewController animated:YES];
        }
        default:
            break;
    }
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
