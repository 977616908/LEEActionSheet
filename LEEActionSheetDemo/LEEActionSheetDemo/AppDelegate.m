//
//  AppDelegate.m
//  LEEActionSheetDemo
//
//  Created by 李响 on 16/4/15.
//  Copyright © 2016年 lee. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

#import "CustomViewController.h"

#import "DemoTableViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //初始化window
    
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.window.backgroundColor = [UIColor whiteColor];
    
    [self.window makeKeyAndVisible];
    
    UITabBarController *tabBarController = [[UITabBarController alloc]init];
    
    ViewController *systemVC = [[ViewController alloc] init];
    
    systemVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"系统ActionSheet" image:[UIImage imageNamed:@""] tag:0];
    
    [tabBarController addChildViewController:systemVC];
    
    CustomViewController *customVC = [[CustomViewController alloc] init];
    
    customVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"自定义ActionSheet" image:[UIImage imageNamed:@""] tag:1];
    
    [tabBarController addChildViewController:customVC];
    
    DemoTableViewController *demoTableVC = [[DemoTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    
    UINavigationController *demoTableNC = [[UINavigationController alloc] initWithRootViewController:demoTableVC];
    
    demoTableNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"示例列表" image:[UIImage imageNamed:@""] tag:2];
    
    [tabBarController addChildViewController:demoTableNC];
    
    self.window.rootViewController = tabBarController;
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
