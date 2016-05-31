//
//  demo1.m
//  MyApp
//
//  Created by Orient on 16/5/31.
//  Copyright © 2016年 Orient. All rights reserved.
//

#import "demo1.h"
#import "demo2.h"

@interface demo1 ()

@end

@implementation demo1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"Press here" forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(100, 100, 100, 60)];
    [btn addTarget:self action:@selector(jumpDemo2:) forControlEvents:UIControlEventTouchDragInside];
    
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)jumpDemo2:(id)sender {
// 
//    [self presentViewController:[[demo2 alloc] init] animated:YES completion:nil];
//    
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
