//
//  XXTextView.h
//  Remember
//
//  Created by Jason on 2017/5/21.
//  Copyright © 2017年 ifelseboyxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LXF_PlaceHoderTextView : UITextView

@property (copy, nonatomic, nullable) IBInspectable NSString *xx_placeholder;

@property (strong, nonatomic, nullable) IBInspectable UIColor *xx_placeholderColor;

@property (strong, nonatomic, nullable) UIFont *xx_placeholderFont;

@end
