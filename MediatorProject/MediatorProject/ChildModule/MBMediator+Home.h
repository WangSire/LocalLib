//
//  MBMediator+Home.h
//  MediatorProject
//
//  Created by Siri on 2019/3/17.
//  Copyright © 2019年 Siri. All rights reserved.
//

#import <MediatorModel/MediatorModel.h>
@interface MBMediator (Home)
-(void)Home_loadHomeName:(NSDictionary *)parmas;
-(UIViewController *)backHomeView:(NSDictionary *)parmas;
@end
