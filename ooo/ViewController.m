//
//  ViewController.m
//  ooo
//
//  Created by Despairdog on 2018/1/23.
//  Copyright © 2018年 Despairdog. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(void)viewWillAppear:(BOOL)animated

{
    [super viewWillAppear:animated];
    //    [self.navigationController setToolbarHidden:NO animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIViewController *vc1 = [[UIViewController alloc] init];
    vc1.navigationItem.title=@"通讯";
    vc1.view.backgroundColor = [UIColor blueColor];
    
    UIViewController *vc2 = [[UIViewController alloc] init];
    vc2.navigationItem.title=@"朋友";
    vc2.view.backgroundColor = [UIColor redColor];
    
    UIViewController *vc3 = [[UIViewController alloc] init];
    vc3.navigationItem.title= @"记录";
    vc3.view.backgroundColor = [UIColor greenColor];
    
    
    UINavigationController *firstNC = [[UINavigationController alloc]initWithRootViewController:vc1];
    firstNC.tabBarItem.title=@"通讯录";


    UINavigationController *secondNC = [[UINavigationController alloc]initWithRootViewController:vc2];
    secondNC.tabBarItem.title=@"朋友圈";
    
    UINavigationController *thridNC = [[UINavigationController alloc]initWithRootViewController:vc3];
    thridNC.tabBarItem.title=@"通话记录";
    
    NSArray *array = @[firstNC,secondNC,thridNC];
    
    self.viewControllers=array;
    [self.tabBar setBarTintColor:[UIColor whiteColor]];
    self.tabBar.tintColor = [UIColor blackColor];
    //    self.tabBar.barStyle = UIBarStyleBlack;
    self.selectedIndex = 0;

    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
