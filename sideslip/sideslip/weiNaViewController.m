//
//  weiNaViewController.m
//  cehua
//
//  Created by 陈威 on 2017/8/29.
//  Copyright © 2017年 Weiersi. All rights reserved.
//

#import "weiNaViewController.h"

@interface weiNaViewController ()

@end

@implementation weiNaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.childViewControllers.count>0) {
        UIButton *button=[[UIButton alloc]init];
        [button setTitle:@"返回" forState:UIControlStateNormal];
        button.frame = CGRectMake(0, 0, 70, 30);
        //让按钮内部的所有内容左对齐
        button.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
        button.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
        [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        viewController.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithCustomView:button];
        //让tabbar隐藏
        viewController.hidesBottomBarWhenPushed=YES;
    }
    [super pushViewController:viewController animated:animated];
}
-(void)back{
    [self popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
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
