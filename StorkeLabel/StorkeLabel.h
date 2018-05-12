//
//  StorkeLabel.h
//  StorkeLabel
//
//  Created by MarkChang on 2017/3/23.
//  Copyright © 2017年 MarkChang. All rights reserved.
//

/*
 IB_DESIGNABLE Custom Views in Interface Builder
 https://useyourloaf.com/blog/ib-designable-custom-views-in-interface-builder/
 */

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface StorkeLabel : UILabel

@property (nonatomic) IBInspectable UIColor *storkeColor;
@property (nonatomic) IBInspectable CGFloat storkeWidth;

@end
