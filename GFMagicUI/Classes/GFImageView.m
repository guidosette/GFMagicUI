//
//  GFImageView.m
//  // Fanfa
//
//  Created by Guido Fanfani on 26/09/18.
//  Copyright © 2019 Fanfa. All rights reserved.
//

#import "GFImageView.h"
#import "GFUI.h"

@implementation GFImageView

- (void)layoutSubviews {
    [super layoutSubviews];
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
    self.layer.masksToBounds =  true;
}

- (void)setGfBorderColor:(NSInteger)value {
    self.layer.borderColor = [GFUI getCustomColor:value].CGColor;
}

- (void)setGfBorderWidth:(NSInteger)value {
    self.layer.borderWidth = value;
}

@end
