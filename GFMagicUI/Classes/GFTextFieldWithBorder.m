//
//  CustomTextField.m
//  // Fanfa
//
//  Created by Guido Fanfani on 13/07/17.
//  Copyright © 2019 Fanfa. All rights reserved.
//

#import "GFTextFieldWithBorder.h"
#import "GFFont.h"
#import "GFUI.h"

@implementation GFTextFieldWithBorder {
    bool alreadySetBorder;
    CALayer* border;
    UIColor* borderColor;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [super drawRect:rect];

    [self setBottomBorder:self borderThickness:0.5f colorBorder:[GFUI getCustomColor:TEXT_COLOR_PLACEHOLDER]];

   // [self setBorderStyle:UITextBorderStyleNone]; //set it in storyboard!

}

- (CGSize)intrinsicContentSize {
    CGSize intrinsicSuperViewContentSize = [super intrinsicContentSize] ;
    intrinsicSuperViewContentSize.height += 20 ;
    return intrinsicSuperViewContentSize;
}

- (void)setBottomBorder:(UIView*)myView borderThickness:(float)borderThickness colorBorder:(UIColor*)colorBorder {
    if (alreadySetBorder) {
        return;
    }
    border = [CALayer layer];
    border.borderColor = borderColor ? borderColor.CGColor : colorBorder.CGColor;
    border.borderWidth = borderThickness;
    border.frame = CGRectMake(0, myView.frame.size.height - borderThickness, myView.frame.size.width, borderThickness);
    [myView.layer addSublayer:border];
    alreadySetBorder = true;
}

- (void)layoutSubviews {
    [super layoutSubviews];
}


- (void)setGfBorderColor:(NSInteger)value {
    borderColor = [GFUI getCustomColor:value];
}

@end
