//
//  ViewController.m
//  UserProject
//
//  Created by Siri on 2019/3/17.
//  Copyright © 2019年 Siri. All rights reserved.
//

#import "UserViewController.h"
#import <MBMediator+Home.h>
#import <Masonry.h>

#import <ShareSDK/ShareSDK.h>
#import <ShareSDKUI/ShareSDK+SSUI.h>

#import <ShareSDKUI/SSUIShareActionSheetStyle.h>
#import <ShareSDKUI/SSUIEditorViewStyle.h>
@interface UserViewController ()

@end

@implementation UserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *payBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [payBtn addTarget:self action:@selector(payBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [payBtn setBackgroundImage:[UIImage imageNamed:@"head"] forState:UIControlStateNormal];
    [self.view addSubview:payBtn];
    [payBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];
    self.view.backgroundColor = [UIColor whiteColor];

    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissModalViewControllerAnimated:YES];
}
-(void)shareCase2{
    
     NSArray* imageArray = @[[UIImage imageNamed:@"head.png"]];
    NSString *text = @"分享内容";
    NSString *url = @"http://mob.com";
    NSString *title= @"分享标题";
    if (imageArray) {
       
        [SSUIShareActionSheetStyle setActionSheetColor:[UIColor lightGrayColor]];
        [SSUIShareActionSheetStyle setActionSheetBackgroundColor: [[UIColor whiteColor] colorWithAlphaComponent:0.8]];
        [SSUIShareActionSheetStyle setCancelButtonBackgroundColor:[UIColor lightGrayColor]];
        [SSUIShareActionSheetStyle setCancelButtonLabelColor:[UIColor blackColor]];
        
        NSMutableDictionary *shareParams = [NSMutableDictionary dictionary];
        [shareParams SSDKSetupShareParamsByText:text
                                         images:imageArray
                                            url:[NSURL URLWithString:url
                                                 ]                                          title:title
                                           type:SSDKContentTypeAuto];
        
        SSUIShareActionSheetStyle *sheet = [ShareSDK showShareActionSheet:nil items:@[@(SSDKPlatformSubTypeWechatSession),
                                                                                           @(SSDKPlatformSubTypeWechatTimeline),
                                                                                           @(SSDKPlatformSubTypeQQFriend),@(SSDKPlatformSubTypeQZone),
                                                                                           @(SSDKPlatformTypeSMS),@(SSDKPlatformTypeSinaWeibo),] shareParams:shareParams onShareStateChanged:^(SSDKResponseState state, SSDKPlatformType platformType, NSDictionary *userData, SSDKContentEntity *contentEntity, NSError *error, BOOL end) {
                                                                                               
                                                                                           }];
    }
}

-(void)payBtnClick{
   
    //[self presentViewController:[[MBMediator share] backHomeView:@{@"VCName":@"Home"}] animated:YES completion:nil];
    [self shareCase2];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
