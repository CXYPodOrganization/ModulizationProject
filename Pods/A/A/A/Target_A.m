//
//  Target_A.m
//  A
//
//  Created by 曹雪莹 on 2018/5/23.
//  Copyright © 2018年 曹雪莹. All rights reserved.
//

#import "Target_A.h"
#import "AMainViewController.h"

@implementation Target_A

- (UIViewController *)Action_viewController:(NSDictionary *)params {
	AMainViewController *vc = [AMainViewController new];
	return vc;
}

@end
