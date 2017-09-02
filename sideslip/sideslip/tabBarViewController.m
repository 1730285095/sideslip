//
//  tabBarViewController.m
//  cehua
//
//  Created by 陈威 on 2017/8/29.
//  Copyright © 2017年 Weiersi. All rights reserved.
//

#import "tabBarViewController.h"
#import "UIViewController+MMDrawerController.h"
#import "MMDrawerBarButtonItem.h"
#import "HaveResourceController.h"
#import "RequestResourceController.h"
#import "PutoutController.h"
#import "weiNaViewController.h"
#import "weiTabbar.h"
@interface tabBarViewController ()

@end

@implementation tabBarViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //设置打开抽屉模式
    [self.mm_drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    dict[NSForegroundColorAttributeName] = [UIColor grayColor];
    NSMutableDictionary *dict1 = [NSMutableDictionary dictionary];
    dict1[NSFontAttributeName] = dict[NSFontAttributeName];
    dict1[NSForegroundColorAttributeName] = [UIColor yellowColor];
    //后面带有UI_APPEARANCE_SELECTOR的方法都可以通过appearance对象来统一设置
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:dict forState:UIControlStateNormal];
    [item setTitleTextAttributes:dict1 forState:UIControlStateSelected];
    [self setupChildV:[[HaveResourceController alloc]init] title:@"有资源" image:@"Main-menu-bar_my" selectedimage:@"Main-menu-bar_My_Selected"];
    
    [self setupChildV:[[RequestResourceController alloc]init] title:@"求资源" image:@"Main-menu-bar_comprehensive" selectedimage:@"Main-menu-bar_comprehensive_Selected"];
    [self setValue:[[weiTabbar alloc]init] forKeyPath:@"tabBar"];
    NSLog(@"%@",self.tabBar);
}
-(void)setupChildV:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedimage:(NSString *)selectimage
{
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [[UIImage imageNamed:image]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectimage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    weiNaViewController *na = [[weiNaViewController alloc]initWithRootViewController:vc];
    vc.navigationItem.title = title;
        [self addChildViewController:na];
}

-(void)leftDrawerButtonPress:(id)sender{
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
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
