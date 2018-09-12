//
//  UIViewController+PerfectPush.h
//  PerfectPush
//
//  Created by Yang,Dongzheng on 2018/9/12.
//  Copyright © 2018年 Yang,Dongzheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (PerfectPush)

/**
 *  跳转界面
 *  @param name 控制器名
 *  @param params 参数
 */
- (void)pushWithControllerName:(NSString *)name params:(NSDictionary *)params;

@end
