//
//  CTMediator+B.m
//  B_Category
//
//  Created by 曹雪莹 on 2018/5/23.
//  Copyright © 2018年 曹雪莹. All rights reserved.
//

#import "CTMediator+B.h"

@implementation CTMediator (B)

- (UIViewController *)B_viewControllerWithContentText:(NSString *)contentText {
	NSMutableDictionary *params = [NSMutableDictionary dictionary];
	params[@"contentText"] = contentText;
	return [self performTarget:@"B" action:@"viewController" params:params shouldCacheTarget:NO];
}

@end
