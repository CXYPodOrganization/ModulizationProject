//
//  ViewController.m
//  ModulizationProject
//
//  Created by 曹雪莹 on 2018/5/24.
//  Copyright © 2018年 曹雪莹. All rights reserved.
//

#import "ViewController.h"
#import <A_Category/CTMediator+A.h>
#import <HandyFrame/UIView+LayoutMethods.h>

@interface ViewController ()

@property (nonatomic, strong) UIButton *pushAButton;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	[self.view addSubview:self.pushAButton];
}

- (void)viewWillLayoutSubviews {
	[super viewWillLayoutSubviews];
	
	[self.pushAButton sizeToFit];
	[self.pushAButton centerEqualToView:self.view];
}

- (void)didTappedPushAViewControllerButton:(UIButton *)sender {
	UIViewController *viewController = [[CTMediator sharedInstance] A_aViewController];
	[self.navigationController pushViewController:viewController animated:YES];
}

- (UIButton *)pushAButton {
	if (!_pushAButton) {
		_pushAButton = [UIButton buttonWithType:UIButtonTypeCustom];
		[_pushAButton setTitle:@"push A view controller" forState:UIControlStateNormal];
		[_pushAButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
		[_pushAButton addTarget:self action:@selector(didTappedPushAViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
	}
	return _pushAButton;
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
}


@end
