//
//  MBMediator.h
//  NameTest
//
//  Created by Siri on 2018/2/4.
//  Copyright © 2018年 Siri. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface MBMediator : NSObject
+(instancetype)share;

-(id)initWithTager:(NSString *)targetName action:(NSString *)actionName params:(NSDictionary *)params;

@end
