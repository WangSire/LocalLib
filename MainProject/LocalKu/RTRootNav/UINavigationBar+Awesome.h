//
//  UINavigationBar+Awesome.h
//  LTNavigationBar
//
//  Created by ltebean on 15-2-15.
//  Copyright (c) 2015 ltebean. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (Awesome)

- (void)lt_setBackgroundColor:(UIColor *)backgroundColor;

- (void)lt_setElementsAlpha:(CGFloat)alpha;

- (void)lt_setTranslationY:(CGFloat)translationY;

- (void)lt_reset;

/*
 设置导航栏透明方法
 UIView *viewnav = self.navigationController.navigationBar.subviews.firstObject;
 
 viewnav.alpha = 0;
 
 //设置渐变透明
 viewnav.alpha = self.myTableView.contentOffset.y / 100；
 
 */



@end
