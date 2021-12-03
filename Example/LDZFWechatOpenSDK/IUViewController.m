//
//  IUViewController.m
//  LDZFWechatOpenSDK
//
//  Created by zhuyuhui434@gmail.com on 12/02/2021.
//  Copyright (c) 2021 zhuyuhui434@gmail.com. All rights reserved.
//

#import "IUViewController.h"
#import <LDZFWechatOpenSDK/WXApi.h>
@interface IUViewController ()

@end

@implementation IUViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    if (![WXApi isWXAppInstalled]) { //未安装提示
    } else { //已安装去登录

    }
    
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
