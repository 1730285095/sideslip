//
//  weiTabbar.m
//  cehua
//
//  Created by 陈威 on 2017/8/30.
//  Copyright © 2017年 Weiersi. All rights reserved.
//

#import "weiTabbar.h"
@interface weiTabbar ()
@property(nonatomic,strong)UIButton *publishButton;
@end
@implementation weiTabbar
-(instancetype)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        UIButton *Btn=[UIButton buttonWithType:UIButtonTypeCustom];
        self.publishButton = Btn;
        [self addSubview:Btn];
        [self.publishButton addTarget:self action:@selector(publishButtonClicked) forControlEvents:UIControlEventTouchUpInside];
        self.itemPositioning = UITabBarItemPositioningFill;
    }
    return self;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    CGFloat width = self.width;
    CGFloat height = self.hight;
    
    self.publishButton.frame = CGRectMake(width/3*2, 0,width/3,height);
    self.publishButton.center = CGPointMake(width*0.5,height*0.5);
    [self.publishButton setImage:[UIImage imageNamed:@"Main-menu-bar_my"] forState:UIControlStateNormal];
    CGFloat buttonY = 0;
    CGFloat buttonW = width/3;
    CGFloat buttonH = height;
    int index = 0;
    NSLog(@"%@",self.subviews);
    for (UIView *button in self.subviews) {
        if (![button isKindOfClass:[UIControl class]]||button == self.publishButton)continue; {
            if (index>=2) {
                NSLog(@"陈威");
                [button removeFromSuperview];
            }else{
            CGFloat buttonX = buttonW*((index>=1)?(index+1):index);
            button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
                index++;
            }
        }
    }
    NSLog(@"%@",self.subviews);
}
-(void)publishButtonClicked{
    NSLog(@"1");
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
