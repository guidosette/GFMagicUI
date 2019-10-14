//
//  GFUI+CustomUI.m
//  GFMagicUI_Example
//
//  Created by Guido Fanfani on 14/10/2019.
//  Copyright © 2019 guidosette. All rights reserved.
//

#import "GFUI+CustomUI.h"

@implementation GFUI (CustomUI)

+ (UIColor*)getCustomColor:(NSInteger)value {
    switch (value) {
        case TEXT_COLOR_DARK_GREY_FANFA:
            return [UIColor darkGrayColor];
        case TEXT_COLOR_LIGHT_GREY_FANFA:
            return [UIColor grayColor];
        case MAIN_COLOR_FANFA:
            return [UIColor greenColor];
        case TEXT_COLOR_WHITE_FANFA:
            return [UIColor whiteColor];
        case TEXT_COLOR_BLACK_FANFA:
            return [UIColor blackColor];
        case BACKGROUND_COLOR_LIGHT_GREY_FANFA:
            return [UIColor groupTableViewBackgroundColor];
        case TEXT_COLOR_PLACEHOLDER_FANFA:
            return [UIColor lightGrayColor];
        case TEXT_COLOR_CLEAR_FANFA:
            return [UIColor clearColor];
        case BACKGROUND_COLOR_DARK_GREY_FANFA:
            return [UIColor darkGrayColor];
        case TEXT_COLOR_RED_FANFA:
            return [UIColor redColor];
        case GRADIENT_START_FANFA:
            return [UIColor greenColor];
        case GRADIENT_END_FANFA:
            return [UIColor yellowColor];
        case RED_COLOR_FANFA:
            return [UIColor colorWithRed:226.0f/255.0f green:0.0f/255.0f blue:29.0f/255.0f alpha:1.0f];
        case BLUE_COLOR_FANFA:
            return [UIColor colorWithRed:0.0f/255.0f green:26.0f/255.0f blue:220.0f/255.0f alpha:1.0f];
        case GREEN_COLOR_FANFA:
            return [UIColor colorWithRed:76.0f/255.0f green:175.0f/255.0f blue:80.0f/255.0f alpha:1.0f];
        case BLACK_COLOR_FANFA:
            return [UIColor blackColor];
        case ORANGE_COLOR_FANFA:
            return [UIColor orangeColor];
        case YELLOW_COLOR_FANFA:
            return [UIColor yellowColor];

        default:
            return [UIColor blackColor];
    }
}

@end
