//
//  MBMediator+User.h
//  MediatorProject
//
//  Created by Siri on 2019/3/19.
//  Copyright © 2019年 Siri. All rights reserved.
//

#import <MediatorModel/MediatorModel.h>

@interface MBMediator (User)
-(NSString *)User_backUserWithName:(NSDictionary *)parmas;
//Block回调
-(void)User_ClickWithBlock:(void(^)(NSString *tyep))block parmas:(NSDictionary *)parmas;
-(UIViewController *)backUserView:(NSDictionary *)parmas;
@end
