//
//  UIViewController+PerfectPush.m
//  PerfectPush
//
//  Created by Yang,Dongzheng on 2018/9/12.
//  Copyright © 2018年 Yang,Dongzheng. All rights reserved.
//

#import "UIViewController+PerfectPush.h"
#import <objc/runtime.h>

@implementation UIViewController (PerfectPush)

/**
 *  跳转界面
 *  @param name 控制器名
 *  @param params 参数
 */
- (void)pushWithControllerName:(NSString *)name params:(NSDictionary *)params {
    const char *className = [name cStringUsingEncoding:NSASCIIStringEncoding];
    Class newClass = objc_getClass(className);
    if (!newClass) {
        Class superClass = [NSObject class];
        newClass = objc_allocateClassPair(superClass, className, 0);
        objc_registerClassPair(newClass);
    }
    id instance = [[newClass alloc] init];
    [params enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        if ([self checkPropertyWithInstance:instance propertyName:key]) {
            [instance setValue:obj forKey:key];
        }
    }];
    [self.navigationController pushViewController:instance animated:YES];
}

/**
 *  检测对象是否存在该属性
 */
- (BOOL)checkPropertyWithInstance:(id)instance propertyName:(NSString *)propertyName {
    unsigned int outCount, i;
    objc_property_t * properties = class_copyPropertyList([instance class], &outCount);
    for (i = 0; i < outCount; i++) {
        objc_property_t property =properties[i];
        NSString *propertyName = [[NSString alloc] initWithCString:property_getName(property) encoding:NSUTF8StringEncoding];
        if ([propertyName isEqualToString:propertyName]) {
            free(properties);
            return YES;
        }
    }
    free(properties);
    return NO;
}

@end
