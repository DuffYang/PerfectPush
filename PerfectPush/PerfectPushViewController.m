//
//  PerfectPushViewController.m
//  PerfectPush
//
//  Created by Yang,Dongzheng on 2018/9/12.
//  Copyright © 2018年 Yang,Dongzheng. All rights reserved.
//

#import "PerfectPushViewController.h"
#import "UIViewController+PerfectPush.h"

@interface PerfectPushViewController ()

@end

@implementation PerfectPushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"完美跳转";
    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
