//
//  UIViewController+dismissController.m
//  dismissDemo
//
//  Created by Gome on 2018/12/7.
//  Copyright © 2018年 Gome. All rights reserved.
//

#import "UIViewController+dismissController.h"

@implementation UIViewController (dismissController)
/*返回到对应的控制器*/
- (void)dismissToViewController:(NSString *)className animated:(BOOL)animated;{
    [[self getRootController:className]dismissViewControllerAnimated:animated completion:nil];
}
/*返回到对应的根控制器*/
-(void)dismissToRootViewControllerAnimated:(BOOL)animated{
    [[self getRootController:nil]dismissViewControllerAnimated:animated completion:nil];
}

-(UIViewController*)getRootController:(NSString*)className{
    if (![NSClassFromString(className)isKindOfClass:[UIViewController class]]) {
        return nil;
    }
    
    if (!className) {
        //直接跳转到根视图控制器
        UIViewController * presentingVc = self.presentingViewController;
        while (presentingVc.presentingViewController) {
            presentingVc = presentingVc.presentingViewController;
        }
        return presentingVc;
    }
    
    UIViewController * presentingVc = self.presentingViewController;
    BOOL value = YES;
    while (presentingVc.presentingViewController&&value) {
        presentingVc = presentingVc.presentingViewController;
        if ([presentingVc isMemberOfClass:NSClassFromString(className)]) {
            value = NO;
        }
    }
    return presentingVc;
}

@end
