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

-(void)shareConten{
     NSArray* imageArray = @[[UIImage imageNamed:@"head.png"]];
    if (imageArray) {
        
        NSMutableDictionary *shareParams = [NSMutableDictionary dictionary];
        [shareParams SSDKSetupShareParamsByText:@"分享内容"
                                         images:imageArray
                                            url:[NSURL URLWithString:@"http://mob.com"]
                                          title:@"分享标题"
                                           type:SSDKContentTypeAuto];
        
                       
        //大家请注意：4.1.2版本开始因为UI重构了下，所以这个弹出分享菜单的接口有点改变，如果集成的是4.1.2以及以后版本，如下调用：
        [ShareSDK showShareActionSheet:nil customItems:nil shareParams:shareParams sheetConfiguration:nil onStateChanged:^(SSDKResponseState state, SSDKPlatformType platformType, NSDictionary *userData, SSDKContentEntity *contentEntity, NSError *error, BOOL end) {
                           switch (state) {
                               case SSDKResponseStateSuccess:
                               {
                                   UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"分享成功"
                                                                                       message:nil
                                                                                      delegate:nil
                                                                             cancelButtonTitle:@"确定"
                                                                             otherButtonTitles:nil];
                                   [alertView show];
                                   break;
                               }
                               case SSDKResponseStateFail:
                               {
                                   UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"分享失败"
                                                                                   message:[NSString stringWithFormat:@"%@",error]
                                                                                  delegate:nil
                                                                         cancelButtonTitle:@"OK"
                                                                         otherButtonTitles:nil, nil];
                                   [alert show];
                                   break;
                               }
                               default:
                                   break;
                           }
                       }];
                }
}

-(void)shareCase2{
    
     NSArray* imageArray = @[[UIImage imageNamed:@"head.png"]];
    NSString *text = @"分享内容";
    NSString *url = @"http://mob.com";
    NSString *title= @"分享标题";
    if (imageArray) {
        [SSUIShareActionSheetStyle setActionSheetColor:[UIColor lightGrayColor]];
        [SSUIShareActionSheetStyle setActionSheetBackgroundColor:[UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.8]];
        [SSUIShareActionSheetStyle setCancelButtonBackgroundColor:[UIColor lightGrayColor]];
        [SSUIShareActionSheetStyle setCancelButtonLabelColor:[UIColor blackColor]];
        
        //NSString *encodedString = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)shareModel.url, (CFStringRef)@"!$&'()*+,-./:;=?@_~%#[]", NULL, kCFStringEncodingUTF8));
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
    [self shareConten];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
