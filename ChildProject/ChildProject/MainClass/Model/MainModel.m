//
//  MainModel.m
//  ChildProject
//
//  Created by Siri on 2019/3/17.
//  Copyright © 2019年 Siri. All rights reserved.
//

#import "MainModel.h"

@implementation MainModel
-(void)initWithName:(NSString *)name{
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"温馨提示" message:name delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [alertView show];
}
@end
