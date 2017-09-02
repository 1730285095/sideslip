//
//  AppDelegate.h
//  sideslip
//
//  Created by 陈威 on 2017/9/2.
//  Copyright © 2017年 Weiersi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

