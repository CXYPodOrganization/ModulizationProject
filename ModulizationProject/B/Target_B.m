//
//  Target_B.m
//  ModulizationProject
//
//  Created by 曹雪莹 on 2018/5/23.
//  Copyright © 2018年 曹雪莹. All rights reserved.
//

#import "Target_B.h"
#import "BMainViewController.h"

@implementation Target_B

- (UIViewController *)Action_viewController:(NSDictionary *)params {
	NSString *contentText = params[@"contentText"];
	BMainViewController *vc = [[BMainViewController alloc] initWithContentText:contentText];
	return vc;
}

@end
