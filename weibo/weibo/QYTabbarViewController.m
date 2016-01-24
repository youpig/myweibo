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
    [self addChildViewController:home withTitle:@"首页" image:@"tabbar_home"];
    
    UIViewController *message = [[UIViewController alloc] init];
    [self addChildViewController:message withTitle:@"消息" image:@"tabbar_message_center"];
    
    UIViewController *discover = [[UIViewController alloc] init];
    [self addChildViewController:discover withTitle:@"发现" image:@"tabbar_discover"];
    
    UIViewController *me = [[UIViewController alloc] init];
    [self addChildViewController:me withTitle:@"我" image:@"tabbar_profile"];
    
}


- (void)addChildViewController:(UIViewController *)controller withTitle:(NSString *)title image:(NSString *)image{

    controller.tabBarItem.title = title;
    controller.tabBarItem.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",image]];
    
#warning 手动关闭对图片的渲染,默认是渲染为蓝色
    UIImage *seletedImg = [[UIImage imageNamed:[NSString stringWithFormat:@"%@_selected",image]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controller.tabBarItem.selectedImage = seletedImg;
    
#warning 解决文字被渲染的问题 NSForeGroundColorAttributeName
    NSDictionary *attrs = @{NSForegroundColorAttributeName:[UIColor orangeColor]};
    [controller.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateSelected];
    
    [self addChildViewController:controller];

}

@end












