//
//  HomeViewController.m
//  工程名字
//
//  Created by 王博 on 2019/5/24.
//  Copyright © 2019 公司标示. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation HomeViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"主页" image:[[UIImage imageNamed:@"jieshao-2"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"jieshao-1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 150, 50);
    [button setTitle:@"主页" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.center = [UIApplication sharedApplication].keyWindow.center;
    [button setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    button.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.4];
    [button addTarget:self action:@selector(dogBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [self tableViewInit];
}

- (void)dogBtnAction:(UIButton *)sender {
    
}


- (void)tableViewInit {
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.tableFooterView = nil;
}

#pragma mark --tableViewDelegate--
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.contentView.layer.borderWidth = 0.5;
    cell.contentView.layer.borderColor = [[UIColor redColor] colorWithAlphaComponent:0.4].CGColor;
    cell.textLabel.text = [NSString stringWithFormat:@"主页第几个: %ld Cell", (long)indexPath.row];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}


- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}

@end
