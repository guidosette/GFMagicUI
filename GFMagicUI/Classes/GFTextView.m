//
//  GFTextView.m
//  // Fanfa
//
//  Created by Guido Fanfani on 14/10/19.
//  Copyright © 2019 Fanfa. All rights reserved.
//

#import "GFTextView.h"
#import "GFFont.h"
#import "GFUI.h"

@implementation GFTextView

- (void)setGfColor:(NSInteger)value {
    self.textColor = [GFUI getCustomColor:value];
}

- (void)setGfSize:(NSInteger)value {
    [self setFont:[GFUI getCustomSize:value view:self]];
}

- (void)setGfLanguage:(NSString *)value {
    self.text = NSLocalizedString(value, nil);
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
@end
