//
//  UIFont+GFFont.h
//  // Fanfa
//
//  Created by Guido Fanfani on 14/10/19.
//  Copyright © 2019 Fanfa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GFFont: NSObject

+ (UIFont*)forGeneralView:(UIView *)view;

+ (UIFont*)smallFont:(UIView *)view;

+ (UIFont*)normalFont:(UIView *)view;

+ (UIFont*)bigFont:(UIView *)view;

+ (UIFont*)forGeneralView:(UIView *)view fontSize:(CGFloat)fontSize;

@end
