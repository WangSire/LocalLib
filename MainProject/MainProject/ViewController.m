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
    
    self.view.backgroundColor = [UIColor redColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self presentViewController:[[MBMediator share] backUserView:@{}] animated:YES completion:nil];
//    [self presentViewController:[[MBMediator share] backHomeView:@{@"VCName":@"Home"}] animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
