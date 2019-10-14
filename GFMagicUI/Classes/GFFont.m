//
//  UIFont+GFFont.m
//  // Fanfa
//
//  Created by Guido Fanfani on 14/10/19.
//  Copyright © 2019 Fanfa. All rights reserved.
//

#import "GFFont.h"

@implementation GFFont

+ (bool)isSystemFont {
    return true;
}

+ (NSString*)fontRegularName {
    return @"RobotoSlab-Regular";
}

+ (NSString*)fontBoldName {
    return @"RobotoSlab-Bold";
}

+ (UIFont*)smallFont:(UIView *)view {
    return [self forGeneralView:view fontSize:15];
}

+ (UIFont*)normalFont:(UIView *)view {
    return [self forGeneralView:view fontSize:17];
}

+ (UIFont*)bigFont:(UIView *)view {
    return [self forGeneralView:view fontSize:19];
}

/**
 Apply custom font with inheritance font size.
 */
+ (UIFont*)forGeneralView:(UIView *)view {
    return [self forGeneralView:view fontSize:-1];
}

/**
Determinate the font to apply to view.
 @param view View to apply the font.
 @param fontSize A Float value that determinate the font size to apply. If pass -1 apply inheritance font size of view.
@return Font for specific view.
 */
+ (UIFont*)forGeneralView:(UIView *)view fontSize:(CGFloat)fontSize {
    UIFont* font;
    if ([view isKindOfClass:[UILabel class]]) {
        UILabel* label = (UILabel*)view;
        font = label.font;
    } else if ([view isKindOfClass:[UIButton class]]) {
        UIButton* button = (UIButton*)view;
        font = button.titleLabel.font;
    } else if ([view isKindOfClass:[UITextField class]]) {
        UITextField* textField = (UITextField*)view;
        font = textField.font;
    } else if ([view isKindOfClass:[UITextView class]]) {
        UITextView* textView = (UITextView*)view;
        font = textView.font;
    }
    if (fontSize==-1) {
        fontSize = font.pointSize;
    }
    BOOL isBold = (font.fontDescriptor.symbolicTraits & UIFontDescriptorTraitBold) != 0;
//    BOOL isBold = font.fontDescriptor.symbolicTraits == UIFontDescriptorTraitBold;
    return [GFFont isSystemFont] ? [UIFont systemFontOfSize:fontSize weight: isBold ? UIFontWeightBold : UIFontWeightRegular] : [UIFont fontWithName:isBold ? [self fontBoldName] : [self fontRegularName] size:fontSize];
}

@end
