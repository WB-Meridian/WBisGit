//
//  MyViewController.m
//  工程名字
//
//  Created by 王博 on 2019/5/24.
//  Copyright © 2019 公司标示. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[[UIImage imageNamed:@"jieshao-2"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"jieshao-1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 150, 50);
    [button setTitle:@"我的" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.center = [UIApplication sharedApplication].keyWindow.center;
    [button setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    button.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.4];
    [button addTarget:self action:@selector(dogBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
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
