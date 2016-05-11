//
//  Person.m
//  aa
//
//  Created by zhiyou on 16-4-27.
//  Copyright (c) 2016年 zhiyou. All rights reserved.
//

#import "Person.h"

@implementation Person
- (id)copyWithZone:(NSZone *)zone
{
    NSLog(@"我的copyzone防止崩溃");
    
    return self;
}
-(void)setP2:(Person *)p2
{
    NSLog(@"重写set方法");
    if (_p2 != p2) {
        [_p2 release];
        _p2 = [p2 retain];
    }
}
@end
