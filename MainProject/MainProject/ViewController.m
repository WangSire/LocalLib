//
//  ViewController.m
//  MainProject
//
//  Created by Siri on 2019/3/20.
//  Copyright © 2019年 Siri. All rights reserved.
//

#import "ViewController.h"
#import <MBMediator+User.h>
#import <MBMediator+Home.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *pushNext = [UIButton buttonWithType:UIButtonTypeCustom];
    pushNext.frame = CGRectMake(70, 200, 200, 30);
    [pushNext setTitle:@"跳转到下一个" forState:UIControlStateNormal];
    [pushNext setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [pushNext addTarget:self action:@selector(pushNextClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushNext];
}

-(void)pushNextClick{
    [self presentViewController:[[MBMediator share] backUserView:@{}] animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
