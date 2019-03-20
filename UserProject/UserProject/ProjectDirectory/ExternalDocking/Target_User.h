//
//  Target_User.h
//  UserProject
//
//  Created by Siri on 2019/3/17.
//  Copyright © 2019年 Siri. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Target_User : NSObject
-(NSString *)Action_backName:(NSDictionary *)parmas;

//这里不能写block类型参数,因为系统方法里是没有回调
-(void)Action_ClickWithBlockParmas:(NSDictionary *)parmas;

-(UIViewController *)Action_UserView:(NSDictionary *)parmas;

@end
