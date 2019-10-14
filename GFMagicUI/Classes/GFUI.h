//
//  GFLabel.h
//  // Fanfa
//
//  Created by Guido Fanfani on 14/10/19.
//  Copyright © 2019 Fanfa. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface GFUI : UIView

/**
 Color
 */
typedef NS_ENUM(int, CustomColor) {
    TEXT_COLOR_DARK_GREY = 1,
    TEXT_COLOR_LIGHT_GREY = 2,
    MAIN_COLOR = 3,
    TEXT_COLOR_WHITE = 4,
    TEXT_COLOR_BLACK = 5,
    BACKGROUND_COLOR_LIGHT_GREY = 6,
    TEXT_COLOR_PLACEHOLDER = 7,
    TEXT_COLOR_CLEAR = 8,
    BACKGROUND_COLOR_DARK_GREY = 9,
    TEXT_COLOR_RED = 10,
    GRADIENT_START = 11,
    GRADIENT_END = 12
};

+ (UIColor*)getCustomColor:(NSInteger)value;

/**
 Size
 */
typedef NS_ENUM(NSUInteger, CustomSize) {
    SizeSmall = 1,
    SizeMedium = 2,
    SizeLarge = 3
};
+ (UIFont*)getCustomSize:(NSInteger)value view:(UIView*)view;

@end
