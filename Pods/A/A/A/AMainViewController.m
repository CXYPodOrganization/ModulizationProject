//
//  AMainViewController.m
//  A
//
//  Created by 曹雪莹 on 2018/5/23.
//  Copyright © 2018年 曹雪莹. All rights reserved.
//

#import "AMainViewController.h"
#import <HandyFrame/UIView+LayoutMethods.h>
#import <B_Category/CTMediator+B.h>

@interface AMainViewController ()

@property (nonatomic, strong) UIButton *pushBButton;

@end

@implementation AMainViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.view.backgroundColor = [UIColor whiteColor];
	[self.view addSubview:self.pushBButton];
}

- (void)viewWillLayoutSubviews {
	[super viewWillLayoutSubviews];
	
	[self.pushBButton sizeToFit];
	[self.pushBButton centerEqualToView:self.view];
}

- (void)didTappedPushBViewControllerButton:(UIButton *)sender {
	UIViewController *viewController = [[CTMediator sharedInstance] B_viewControllerWithContentText:@"First String!"];
	[self.navigationController pushViewController:viewController animated:YES];
}

- (UIButton *)pushBButton {
	if (!_pushBButton) {
		_pushBButton = [UIButton buttonWithType:UIButtonTypeCustom];
		[_pushBButton setTitle:@"push B view controller" forState:UIControlStateNormal];
		[_pushBButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
		[_pushBButton addTarget:self action:@selector(didTappedPushBViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
	}
	return _pushBButton;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
