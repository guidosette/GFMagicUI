//
//  GFLabel.m
//  // Fanfa
//
//  Created by Guido Fanfani on 14/10/19.
//  Copyright © 2019 Fanfa. All rights reserved.
//

#import "GFLabel.h"
#import "GFFont.h"
#import "GFUI.h"

@implementation GFLabel

- (void)setGfColor:(NSInteger)value {
    self.textColor = [GFUI getCustomColor:value];
}

- (void)setGfSize:(NSInteger)value {
    [self setFont:[GFUI getCustomSize:value view:self]];
}

- (void)setGfLanguage:(NSString *)value {
    self.text = NSLocalizedString(value, nil);
}

@end
