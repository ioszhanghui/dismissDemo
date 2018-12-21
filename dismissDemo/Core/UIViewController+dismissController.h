//
//  UIViewController+dismissController.h
//  dismissDemo
//
//  Created by Gome on 2018/12/7.
//  Copyright © 2018年 Gome. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (dismissController)
/*返回到对应的控制器*/
- (void)dismissToViewController:(NSString *)className animated:(BOOL)animated;
/*返回到对应的根控制器*/
- (void)dismissToRootViewControllerAnimated:(BOOL)animated;
@end
