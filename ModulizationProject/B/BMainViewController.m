//
//  BMainViewController.m
//  ModulizationProject
//
//  Created by 曹雪莹 on 2018/5/23.
//  Copyright © 2018年 曹雪莹. All rights reserved.
//

#import "BMainViewController.h"
#import <HandyFrame/UIView+LayoutMethods.h>

@interface BMainViewController ()

@property (nonatomic, strong) UILabel *contentLabel;

@end

@implementation BMainViewController

- (instancetype)initWithContentText:(NSString *)contentText {
	self = [super init];
	if (self) {
		self.contentLabel.text = contentText;
	}
	return self;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	self.view.backgroundColor = [UIColor whiteColor];
	[self.view addSubview:self.contentLabel];
}

- (void)viewWillLayoutSubviews {
	[super viewWillLayoutSubviews];
	[self.contentLabel sizeToFit];
	[self.contentLabel centerEqualToView:self.view];
}

#pragma mark - getters and setters
- (UILabel *)contentLabel {
	if (_contentLabel == nil) {
		_contentLabel = [[UILabel alloc] init];
		_contentLabel.textColor = [UIColor blueColor];
	}
	return _contentLabel;
}
@end
