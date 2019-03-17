//
//  MBMediator+User.h
//  MediatorProject
//
//  Created by Siri on 2019/3/17.
//  Copyright © 2019年 Siri. All rights reserved.
//

#import "MBMediator.h"
@interface MBMediator (User)
-(NSString *)User_backUserWithName:(NSDictionary *)parmas;
//Block回调
-(void)User_ClickWithBlock:(void(^)(NSString *tyep))block parmas:(NSDictionary *)parmas;
@end
