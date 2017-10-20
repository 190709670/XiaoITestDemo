//
//  FirstVCViewController.m
//  XiaoITestDemo
//
//  Created by lihui on 2017/10/20.
//  Copyright © 2017年 WondersGroup. All rights reserved.
//

#import "FirstVCViewController.h"
#import "SecondViewController.h"
@interface FirstVCViewController ()

@end

@implementation FirstVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"动态按钮页面";
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
    [self setObject];
}
-(void)setObject{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"小i" forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(100, 100, 100, 50)];
    [btn setBackgroundColor:[UIColor cyanColor]];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(BtnClick:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)BtnClick:(id)sender{
        SecondViewController *vc = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
