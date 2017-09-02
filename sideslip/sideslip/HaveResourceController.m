//
//  HaveResourceController.m
//  cehua
//
//  Created by 陈威 on 2017/8/29.
//  Copyright © 2017年 Weiersi. All rights reserved.
//

#import "HaveResourceController.h"
#import "secondViewController.h"
#import "MMDrawerBarButtonItem.h"
#import "UIViewController+MMDrawerController.h"

@interface HaveResourceController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation HaveResourceController
- (void)viewDidLoad {
    [super viewDidLoad];
        self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor]};
        self.navigationController.navigationBar.tintColor = [UIColor blueColor];
        self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:144/255.0 green:185/255.0 blue:176/255.0 alpha:1];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    MMDrawerBarButtonItem * leftDrawerButton = [[MMDrawerBarButtonItem alloc] initWithTarget:self action:@selector(leftDrawerButtonPress:)];
    [self.navigationItem setLeftBarButtonItem:leftDrawerButton animated:YES];
    self.navigationItem.leftBarButtonItem = leftDrawerButton;
    
    [self setUI];
}
-(void)setUI{
    UITableView *tableview = [[UITableView alloc]initWithFrame:self.view.frame];
    tableview.backgroundColor = [UIColor whiteColor];
    tableview.delegate = self;
    tableview.dataSource = self;
//    [self.view addSubview:tableview];
}
-(void)leftDrawerButtonPress:(id)sender{
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}
-(void)buttonCilcked{
    secondViewController *secondVc = [[secondViewController alloc]init];
    [self showViewController:secondVc sender:nil];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *str = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:str];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:str];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    return cell;
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
