//
//  GFLabel.m
//  // Fanfa
//
//  Created by Guido Fanfani on 14/10/19.
//  Copyright © 2019 Fanfa. All rights reserved.
//

#import "GFUI.h"
#import "GFFont.h"

@implementation GFUI

+ (UIColor*)getCustomColor:(NSInteger)value {
    switch (value) {
        case TEXT_COLOR_DARK_GREY:
            return [UIColor darkGrayColor];
        case TEXT_COLOR_LIGHT_GREY:
            return [UIColor grayColor];
        case MAIN_COLOR:
            return [UIColor redColor];
        case TEXT_COLOR_WHITE:
            return [UIColor whiteColor];
        case TEXT_COLOR_BLACK:
            return [UIColor blackColor];
        case BACKGROUND_COLOR_LIGHT_GREY:
            return [UIColor groupTableViewBackgroundColor];
        case TEXT_COLOR_PLACEHOLDER:
            return [UIColor lightGrayColor];
        case TEXT_COLOR_CLEAR:
            return [UIColor clearColor];
        case BACKGROUND_COLOR_DARK_GREY:
            return [UIColor darkGrayColor];
        case TEXT_COLOR_RED:
            return [UIColor redColor];
        case GRADIENT_START:
            return [UIColor greenColor];
        case GRADIENT_END:
            return [UIColor yellowColor];

        default:
            return [UIColor blackColor];
    }
}

+ (UIFont*)getCustomSize:(NSInteger)value view:(UIView*)view {
    switch (value) {
        case SizeSmall:
            return [GFFont smallFont:view];
            break;
        case SizeMedium:
            return [GFFont normalFont:view];
            break;
        case SizeLarge:
            return [GFFont bigFont:view];
            break;

        default:
            return [GFFont normalFont:view];
            break;
    }
}

@end
