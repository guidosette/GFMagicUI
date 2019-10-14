//
//  GFFont+CustomFont.m
//  GFMagicUI_Example
//
//  Created by Guido Fanfani on 14/10/2019.
//  Copyright © 2019 guidosette. All rights reserved.
//

#import "GFFont+CustomFont.h"

@implementation GFFont (CustomFont)

+ (bool)isSystemFont {
    return false;
}

+ (NSString*)fontRegularName {
    return @"RobotoSlab-Regular";
}

+ (NSString*)fontBoldName {
    return @"RobotoSlab-Bold";
}

+ (UIFont*)smallFont:(UIView *)view {
    return [GFFont forGeneralView:view fontSize:UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad ? 19 : 17];
}

+ (UIFont*)normalFont:(UIView *)view {
    return [self forGeneralView:view fontSize:UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad ? 21 : 19];
}

+ (UIFont*)bigFont:(UIView *)view {
    return [self forGeneralView:view fontSize:UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad ? 23 : 21];
}

@end
