//
//  ViewController.m
//  UserProject
//
//  Created by Siri on 2019/3/17.
//  Copyright © 2019年 Siri. All rights reserved.
//

#import "UserViewController.h"
//#import <MBMediator+Home.h>
#import <Masonry.h>
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

-(void)payBtnClick{
//    [self.navigationController pushViewController:[[MBMediator share] backHomeView:nil] animated:YES];
    
//    [self presentViewController:[[MBMediator share] backHomeView:@{@"VCName":@"Home"}] animated:YES completion:nil];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
