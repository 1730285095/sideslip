//
//  UIView+Weiview.m
//  01-百思不得姐
//
//  Created by 陈威 on 16/6/14.
//  Copyright © 2016年 weiersi. All rights reserved.
//

#import "UIView+Weiview.h"

@implementation UIView (Weiview)
-(void)setSize:(CGSize)size{
    CGRect frame=self.frame;
    frame.size=size;
    self.frame=frame;
}
-(CGSize)size{
    return self.frame.size;
}
-(void)setWidth:(CGFloat)width{
    CGRect frame=self.frame;
    frame.size.width=width;
    self.frame=frame;
}
-(void)setHight:(CGFloat)hight{
    CGRect frame=self.frame;
    frame.size.height=hight;
    self.frame=frame;

}
-(void)setX:(CGFloat)x{
    CGRect frame=self.frame;
    frame.origin.x=x;
    self.frame=frame;

}
-(void)setY:(CGFloat)y{
    CGRect frame=self.frame;
    frame.origin.y=y;
    self.frame=frame;

}
-(void)setCentenX:(CGFloat)centenX{
    CGPoint centen=self.center;
    centen.x=centenX;
    self.center=centen;
}
-(void)setCentenY:(CGFloat)centenY{
    CGPoint centen=self.center;
    centen.y=centenY;
    self.center=centen;
}
-(CGFloat)centenX{
    return self.center.x;
}
-(CGFloat)centenY{
    return self.center.y;
}
-(CGFloat)width{
    return self.frame.size.width;
}
-(CGFloat)hight{
    return self.frame.size.height;
}
-(CGFloat)x{
    return self.frame.origin.x;
}
-(CGFloat)y{
    return self.frame.origin.y;
}
@end
