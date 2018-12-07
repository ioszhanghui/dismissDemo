//
//  OneViewController.m
//  dismissDemo
//
//  Created by Gome on 2018/12/7.
//  Copyright © 2018年 Gome. All rights reserved.
//

#import "OneViewController.h"

@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn];
    self.view.backgroundColor = [UIColor grayColor];
}
-(void)clickAction{
    
    [self presentViewController:[NSClassFromString(@"TwoViewController") new] animated:YES completion:nil];
}

@end
