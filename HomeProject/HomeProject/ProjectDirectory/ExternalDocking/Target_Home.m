//
//  Target_Home.m
//  HomeProject
//
//  Created by Siri on 2019/3/17.
//  Copyright © 2019年 Siri. All rights reserved.
//

#import "Target_Home.h"
#import "HomeViewController.h"
#import "DetailsViewController.h"

@implementation Target_Home
-(void)Action_loadHomeName:(NSDictionary *)parmas
{
    HomeViewController *home = [HomeViewController new];
    [home showMainName];
}

-(UIViewController *)Action_honeView:(NSDictionary *)parmas
{
    return [parmas[@"VCName"] isEqualToString:@"Home"]?[HomeViewController new]:[DetailsViewController new];
}
@end
