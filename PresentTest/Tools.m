//
//  Tools.m
//  PresentTest
//
//  Created by zhangbin31 on 2020/10/16.
//

#import "Tools.h"

@implementation Tools

+ (instancetype)shareTools {
    static dispatch_once_t onceToken;
    static Tools *instance = nil;
    dispatch_once(&onceToken, ^{
        instance = [[Tools alloc] init];
    });
    return instance;
}

@end
