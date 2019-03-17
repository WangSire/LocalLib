//
//  MBMediator+User.m
//  MediatorProject
//
//  Created by Siri on 2019/3/17.
//  Copyright © 2019年 Siri. All rights reserved.
//

#import "MBMediator+User.h"

@implementation MBMediator (User)
-(NSString *)User_backUserWithName:(NSDictionary *)parmas
{
    return [self initWithTager:@"User" action:@"backName" params:parmas];
}

-(void)User_ClickWithBlock:(void (^)(NSString *))block parmas:(NSDictionary *)parmas
{
    //注意:因为系统方法里是没有回调,只能把block装进字典中,然后去除回调
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithDictionary:parmas];
    [dic setObject:block forKey:@"block"];
    
    [self initWithTager:@"User" action:@"ClickWithBlockParmas" params:dic];
}
@end
