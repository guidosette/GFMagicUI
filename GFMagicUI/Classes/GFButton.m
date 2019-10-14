//
//  GFButton.m
//  // Fanfa
//
//  Created by Guido Fanfani on 14/10/19.
//  Copyright © 2019 Fanfa. All rights reserved.
//

#import "GFButton.h"
#import "GFUI.h"
#import "GFFont.h"

@implementation GFButton {
    UIColor* textColor;
    NSString* textString;
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    if (textColor) {
        [self setTextColor:textColor];
    }
    if (textString) {
        [self setText:textString];
    }
}


/**
 se settato da storyboard viene chiamato per primo
 */
- (void)setGfColor:(NSInteger)value {
    textColor = [GFUI getCustomColor:value];
    [self setTextColor:[GFUI getCustomColor:value]];
}

- (void)setTextColor:(UIColor*)color {
    [self setTitleColor:color forState:UIControlStateNormal];
}

/**
 se settato da storyboard viene chiamato per primo
 */
- (void)setGfSize:(NSInteger)value {
    [self.titleLabel setFont:[GFUI getCustomSize:value view:self]];
}

- (void)setGfBackgroundColor:(NSInteger)value {
    self.backgroundColor = [GFUI getCustomColor:value];
}

- (void)setGfLanguage:(NSString *)value {
    textString = NSLocalizedString(value, nil);
    [self setText:textString];
}

- (void)setText:(NSString*)text {
    [self setTitle:text forState:UIControlStateNormal];
    [self setTitle:text forState:UIControlStateDisabled];

    // todo attribute text
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

//-(void)setEnabled:(BOOL)enabled {
//    if (!enabled) {
//        self.backgroundColor = [GFUI getCustomColor:BACKGROUND_COLOR_DARK_GREY];
//        [self setXtColor:BACKGROUND_COLOR_LIGHT_GREY];
//    } else {
//
//    }
//}

@end
