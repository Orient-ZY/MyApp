//
//  demo2.m
//  MyApp
//
//  Created by Orient on 16/5/31.
//  Copyright © 2016年 Orient. All rights reserved.
//

#import "demo2.h"
#import "demo1.h"

@interface demo2 ()

@end

@implementation demo2

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    UIButton *back = [[UIButton alloc] initWithFrame:CGRectMake(200, 100, 100, 60)];
    [back setTitle:@"back" forState:UIControlStateNormal];
    [back addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:back];
    self.view.backgroundColor = [UIColor blueColor];
    
}

//- (void)back:(id) sender{
//    
//    [self presentViewController:[[demo1 alloc] init] animated:YES completion:nil];
//
////    [self dismissViewControllerAnimated:YES completion:nil];
//    
//}

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
