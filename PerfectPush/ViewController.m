//
//  ViewController.m
//  PerfectPush
//
//  Created by Yang,Dongzheng on 2018/9/12.
//  Copyright © 2018年 Yang,Dongzheng. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+PerfectPush.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"万能跳转界面";
    
    CGFloat width = CGRectGetWidth(self.view.bounds);
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.backgroundColor = [UIColor redColor];
    btn1.frame = CGRectMake((width - 150) / 2, (width - 150) / 2, 150, 30);
    [btn1 setTitle:@"点我" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(pushNewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
}

- (void)pushNewController {
    [self pushWithControllerName:@"PerfectPushViewController" params:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
