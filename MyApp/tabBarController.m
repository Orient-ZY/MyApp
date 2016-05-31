//
//  tabBarController.m
//  MyApp
//
//  Created by Orient on 16/5/25.
//  Copyright © 2016年 Orient. All rights reserved.
//

#import "tabBarController.h"
#import "navigationController.h"
#import "firstTableViewController.h"
#import "secondTableViewController.h"
#import "thirdTableViewController.h"
#import "fourthTableViewController.h"

@interface tabBarController ()

@end

@implementation tabBarController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setUpAllChildViewController];

}

- (void)setUpAllChildViewController{
    
    firstTableViewController *first = [[firstTableViewController alloc] init];
    [self setUpOneChildViewController:first image:[UIImage imageNamed:@"tab_home_icon"] title:@"首页"];
    
    secondTableViewController *second = [[secondTableViewController alloc] init];
    [self setUpOneChildViewController:second image:[UIImage imageNamed:@"js"] title:@"技术"];
    
    thirdTableViewController *third = [[thirdTableViewController alloc] init];
    [self setUpOneChildViewController:third image:[UIImage imageNamed:@"qw"] title:@"博文"];
    
    fourthTableViewController *fourth = [[fourthTableViewController alloc] init];
    [self setUpOneChildViewController:fourth image:[UIImage imageNamed:@"user"] title:@"我的"];
}

- (void)setUpOneChildViewController:(UIViewController *)viewController image:(UIImage *)image
    title:(NSString *)title{
    
    navigationController *navC = [[navigationController alloc] initWithRootViewController:viewController];
    navC.title = title;
    navC.tabBarItem.image = image;
    [navC.navigationBar setBackgroundImage:[UIImage imageNamed:@"commentaty_num_bg"] forBarMetrics:UIBarMetricsCompact];
    viewController.navigationItem.title = title;
    
    [self addChildViewController:navC];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
