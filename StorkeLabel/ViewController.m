//
//  ViewController.m
//  StorkeLabel
//
//  Created by MarkChang on 2017/3/23.
//  Copyright © 2017年 MarkChang. All rights reserved.
//

#import "ViewController.h"
#import "StorkeLabel.h"

@interface ViewController ()

@property (nonatomic) StorkeLabel *storkeLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

	self.view.backgroundColor = [UIColor blueColor];

	self.storkeLabel = [[StorkeLabel alloc] initWithFrame:CGRectZero];
	self.storkeLabel.text = @"Storke Label";
	self.storkeLabel.storkeWidth = 2.0;
	self.storkeLabel.storkeColor = [UIColor greenColor];
	self.storkeLabel.textColor = [UIColor redColor];
	self.storkeLabel.font = [UIFont systemFontOfSize:50.0];
	[self.storkeLabel sizeToFit];

	[self.view addSubview:self.storkeLabel];
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
