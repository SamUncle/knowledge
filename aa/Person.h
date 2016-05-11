//
//  Person.h
//  aa
//
//  Created by zhiyou on 16-4-27.
//  Copyright (c) 2016年 zhiyou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCopying>//实现nscopying协议来实现协议方法（copywithZone）
@property(nonatomic,retain)Person *p1;
@property(nonatomic,retain)Person *p2;
@property(nonatomic,copy)NSString *name;
- (id)copyWithZone:(NSZone *)zone;

-(void)setP2:(Person *)p2;
@end
