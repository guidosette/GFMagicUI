//
//  GFButton.m
//  // Fanfa
//
//  Created by Guido Fanfani on 14/10/19.
//  Copyright © 2019 Fanfa. All rights reserved.
//

#import "GFView.h"
#import "GFUI.h"
#import "GFFont.h"

@implementation GFView {
    UIColor* xtGradientColorLeft;
    UIColor* xtGradientColorRight;
    CAGradientLayer* gradient;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    if (xtGradientColorLeft != nil && xtGradientColorRight != nil) {
        [self setGradient];
    }
    if (_gfCornerRadius) {
        [self setGfCornerRadius:_gfCornerRadius];
    }
}

- (void)setGfBackgroundColor:(NSInteger)value {
    self.backgroundColor = [GFUI getCustomColor:value];
}

- (void)setGfCornerRadius:(NSInteger)customCornerRadius {
    _gfCornerRadius = customCornerRadius;
    if (customCornerRadius == -1) {
        self.layer.cornerRadius = self.frame.size.height/2;
    } else {
        self.layer.cornerRadius = customCornerRadius;
    }
    self.clipsToBounds = true;
}

- (void)setGfBorderColor:(NSInteger)value {
    self.layer.borderColor = [GFUI getCustomColor:value].CGColor;
}

- (void)setGfBorderWidth:(NSInteger)value {
    self.layer.borderWidth = value;
}


- (void)setGfGradientLeft:(NSInteger)customGradientTop {
    xtGradientColorLeft = [GFUI getCustomColor:customGradientTop];
    [self setGradient];
}

- (void)setGfGradientRight:(NSInteger)customGradientBottom {
    xtGradientColorRight = [GFUI getCustomColor:customGradientBottom];
    [self setGradient];
}

- (void)setGradient {
    if (xtGradientColorLeft != nil && xtGradientColorRight != nil) {
        if (gradient != nil) {
            [gradient removeFromSuperlayer];
        }
        gradient = [CAGradientLayer layer];
        gradient.frame = self.bounds;
        gradient.startPoint = CGPointZero;
        gradient.endPoint = CGPointMake(1, 0);
        gradient.colors = @[(id)xtGradientColorLeft.CGColor, (id)xtGradientColorRight.CGColor];
        [self.layer insertSublayer:gradient atIndex:0];
    }
}

@end
