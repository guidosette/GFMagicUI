//
//  GFNavigationItem.m
//  // Fanfa
//
//  Created by Guido Fanfani on 14/10/19.
//  Copyright © 2019 Fanfa. All rights reserved.
//

#import "GFNavigationItem.h"

@implementation GFNavigationItem

- (void)setGfLanguage:(NSString *)value {
    self.title = NSLocalizedString(value, nil);
}

@end
