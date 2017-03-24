//
//  StorkeLabel.m
//  StorkeLabel
//
//  Created by MarkChang on 2017/3/23.
//  Copyright © 2017年 MarkChang. All rights reserved.
//

#import "StorkeLabel.h"

@implementation StorkeLabel

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

/* Reference:
 http://stackoverflow.com/questions/1103148/how-do-i-make-uilabel-display-outlined-text
 https://www.facebook.com/photo.php?fbid=10213012414244789&set=pcb.426403751052632&type=3&theater
*/

- (void)makeDefaultValues {
	_storkeColor = [UIColor whiteColor];
	_storkeWidth = 2.0;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
	self = [super initWithCoder:aDecoder];
	if (self) {
		[self makeDefaultValues];
	}
	return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
	self = [super initWithFrame:frame];
	if (self) {
		[self makeDefaultValues];
	}
	return self;
}

- (instancetype)init
{
	self = [super init];
	if (self) {
		[self makeDefaultValues];
	}
	return self;
}

- (void)drawTextInRect:(CGRect)rect {
	// 保存原本的顏色
	UIColor *textColor = self.textColor;

	CGContextRef ctx = UIGraphicsGetCurrentContext();
	
	// 畫外框
	CGContextSetLineWidth(ctx, self.storkeWidth);
	CGContextSetLineJoin(ctx, kCGLineJoinRound);
	CGContextSetTextDrawingMode(ctx, kCGTextStroke);
	self.textColor = self.storkeColor;
	[super drawTextInRect:rect];

	// 畫文字本身
	CGContextSetTextDrawingMode(ctx, kCGTextFill);
	self.textColor = textColor;
	[super drawTextInRect:rect];
}

- (void)setStorkeColor:(UIColor *)storkeColor {
	_storkeColor = storkeColor;
	[self setNeedsDisplay];
}

- (void)setStorkeWidth:(CGFloat)storkeWidth {
	_storkeWidth = storkeWidth;
	[self setNeedsDisplay];
}

@end
