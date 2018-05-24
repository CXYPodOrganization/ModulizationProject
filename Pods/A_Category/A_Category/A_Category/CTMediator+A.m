//
//  CTMediator+A.m
//  A_Category
//
//  Created by 曹雪莹 on 2018/5/23.
//  Copyright © 2018年 曹雪莹. All rights reserved.
//

#import "CTMediator+A.h"

@implementation CTMediator (A)

- (UIViewController *)A_aViewController {
	
	return [self performTarget:@"A" action:@"viewController" params:nil shouldCacheTarget:NO];
}

@end
