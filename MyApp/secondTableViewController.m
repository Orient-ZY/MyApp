//
//  secondTableViewController.m
//  MyApp
//
//  Created by Orient on 16/5/31.
//  Copyright © 2016年 Orient. All rights reserved.
//

#import "secondTableViewController.h"
#import "demo1.h"
#import "demo2.h"
#import "demo3.h"
#import "demo4.h"



@interface secondTableViewController ()

@property (strong, nonatomic) NSArray *demos;

@end

@implementation secondTableViewController

static NSString * const ID = @"cell";

- (NSArray *)demos {
    
    if (_demos == nil) {
        
        _demos = @[@"1",@"2",@"3",@"4",@"1",@"2",@"3",@"4",@"1",@"2",@"3",@"4",@"1",@"2",@"3",@"4",@"1",@"2",@"3",@"4"];
        
    }
    
    return _demos;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"demo";
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ID];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 16;//cell quantity
}

//
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID /*forIndexPath:indexPath*/];
    cell.textLabel.text = self.demos[indexPath.row];
    // Configure the cell...
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    switch (indexPath.row) {
        case 0:{
            
            [self.navigationController pushViewController:[[demo1 alloc] init] animated:YES];
            
            break;
        } case 1:{
            
            [self.navigationController pushViewController:[[demo2 alloc] init] animated:YES];
            
            break;
        } case 2:{
            
            [self.navigationController pushViewController:[[demo3 alloc] init] animated:YES];

            break;
        } case 3:{
            
            [self.navigationController pushViewController:[[demo4 alloc] init] animated:YES];

            break;
        }
        default:
            break;
    }
    
}

@end
