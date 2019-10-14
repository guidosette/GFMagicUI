//
//  GFProgressView.m
//  // Fanfa
//
//  Created by Guido Fanfani on 26/09/18.
//  Copyright © 2019 Fanfa. All rights reserved.
//

#import "GFProgressView.h"
#import "GFUI.h"

@implementation GFProgressView {
}

- (void)layoutSubviews {
    [super layoutSubviews];
    if (_gfCornerRadius) {
        [self setGfCornerRadius:_gfCornerRadius];
    }
}


- (void)setGfBackgroundColor:(NSInteger)value {
    self.backgroundColor = [GFUI getCustomColor:value];
}

- (void)setGfUnprogressColor:(NSInteger)value {
    self.trackTintColor = [GFUI getCustomColor:value];
}

- (void)setGfProgressColor:(NSInteger)value {
    self.progressTintColor = [GFUI getCustomColor:value];
}

- (void)setGfHeight:(NSInteger)xtHeight {
    self.transform = CGAffineTransformMakeScale(1.0f, xtHeight);
}

- (void)setGfCornerRadius:(NSInteger)customCornerRadius {
    _gfCornerRadius = customCornerRadius;
    self.layer.cornerRadius = customCornerRadius;
}

@end
