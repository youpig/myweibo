//
//  QYTabbarViewController.m
//  weibo
//
//  Created by 王庆岩 on 16/1/24.
//  Copyright © 2016年 王庆岩. All rights reserved.
//

#import "QYTabbarViewController.h"

@interface QYTabbarViewController ()

@end

@implementation QYTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIViewController *home = [[UIViewController alloc] init];
    [self addChildViewController:home];
    home.tabBarItem.title = @"首页";
    home.tabBarItem.image = [UIImage imageNamed:@"tabbar_home"];
    home.view.backgroundColor = [UIColor grayColor];
    
    UIViewController *message = [[UIViewController alloc] init];
    [self addChildViewController:message];
    message.tabBarItem.title = @"消息";
    message.tabBarItem.image = [UIImage imageNamed:@"tabbar_message_center"];
    message.view.backgroundColor = [UIColor blueColor];
    
    UIViewController *discover = [[UIViewController alloc] init];
    [self addChildViewController:discover];
    discover.tabBarItem.title = @"发现";
    discover.tabBarItem.image = [UIImage imageNamed:@"tabbar_discover"];
    discover.view.backgroundColor = [UIColor redColor];
    
    UIViewController *me = [[UIViewController alloc] init];
    [self addChildViewController:me];
    me.tabBarItem.title = @"我";
    me.tabBarItem.image = [UIImage imageNamed:@"tabbar_profile"];
    me.view.backgroundColor = [UIColor purpleColor];
    
}



@end
