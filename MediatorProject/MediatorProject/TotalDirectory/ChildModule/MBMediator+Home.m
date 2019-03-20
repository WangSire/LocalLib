//
//  MBMediator+Home.m
//  MediatorProject
//
//  Created by Siri on 2019/3/19.
//  Copyright © 2019年 Siri. All rights reserved.
//

#import "MBMediator+Home.h"

@implementation MBMediator (Home)
-(void)Home_loadHomeName:(NSDictionary *)parmas
{
    
    [self initWithTager:@"Home" action:@"loadHomeName" params:parmas];
    
}

-(UIViewController *)backHomeView:(NSDictionary *)parmas
{
    
    return [self initWithTager:@"Home" action:@"honeView" params:parmas];
}
@end
