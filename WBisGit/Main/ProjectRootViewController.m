//
//  ProjectRootViewController.m
//  工程名字
//
//  Created by 王博 on 2019/5/24.
//  Copyright © 2019 公司标示. All rights reserved.
//

#import "ProjectRootViewController.h"
#import "HomeViewController.h"
#import "UserViewController.h"
#import "MyViewController.h"


@interface ProjectRootViewController () <UITabBarControllerDelegate>

@end

@implementation ProjectRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.delegate = self;
    [self subControllerUI];
    
}

- (void)subControllerUI {
    HomeViewController *home = [[HomeViewController alloc] init];
    UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:home];
    
    UserViewController *user = [[UserViewController alloc] init];
    UINavigationController *userNav = [[UINavigationController alloc] initWithRootViewController:user];
    
    MyViewController *my = [[MyViewController alloc] init];
    UINavigationController *myNav = [[UINavigationController alloc] initWithRootViewController:my];
    
    self.viewControllers = @[homeNav, userNav, myNav];
    
    //默认
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    // 选中
    NSMutableDictionary *attrSelected = [NSMutableDictionary dictionary];
    attrSelected[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrSelected[NSForegroundColorAttributeName] = [[UIColor redColor] colorWithAlphaComponent:0.4];
    // tab设置
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:attrSelected forState:UIControlStateSelected];
    [[UITabBar appearance] setTranslucent:NO];
}
    
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    if (self.selectedIndex == 0) {
        
    }else if(self.selectedIndex == 1) {
        
    }else{

    }
    if([item.title isEqualToString:@"用户"])
    {
        NSLog(@"点击了用户");
    }
    if([item.title isEqualToString:@"我的"])
    {
        NSLog(@"点击了我的");
    }
    if ([item.title isEqualToString:@"主页"])
    {
        NSLog(@"点击了主页");
    }
}

@end
