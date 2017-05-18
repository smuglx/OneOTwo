//
//  LoginViewController.m
//  OneOTwo
//
//  Created by 郭良烜 on 2017/5/18.
//  Copyright © 2017年 郭良烜. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"登录";
    [self setUI];
}

-(void)setUI
{
    UIButton *loginBtn = [[UIButton alloc] initWithFrame:CGRectZero];
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    [loginBtn setTintColor:kSubRedColor];
    [loginBtn addTarget:self action:@selector(loginBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn];
    [loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(100);
        make.centerX.mas_equalTo(self.view.mas_centerX);
        make.width.mas_equalTo(50);
        make.height.mas_equalTo(30);
    }];
}

-(void)loginBtnAction:(UIButton *)btn
{
    kAlertShow(@"登录失败");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
