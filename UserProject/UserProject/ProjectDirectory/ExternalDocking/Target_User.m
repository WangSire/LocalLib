//
//  Target_User.m
//  UserProject
//
//  Created by Siri on 2019/3/17.
//  Copyright © 2019年 Siri. All rights reserved.
//

#import "Target_User.h"
#import "UserViewController.h"

@implementation Target_User
-(NSString *)Action_backName:(NSDictionary *)parmas
{
    return parmas[@"name"];
}

-(void)Action_ClickWithBlockParmas:(NSDictionary *)parmas
{
    void (^block)(NSString *str) = parmas[@"block"];
    block(parmas[@"name"]);
    
}

-(UIViewController *)Action_UserView:(NSDictionary *)parmas{
    return [UserViewController new];
}
@end
