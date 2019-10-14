//
//  GFSearchBar.m
//  // Fanfa
//
//  Created by Guido Fanfani on 14/10/19.
//  Copyright © 2019 Fanfa. All rights reserved.
//

#import "GFSearchBar.h"
#import "GFFont.h"
#import "GFUI.h"

@implementation GFSearchBar {
    NSString* textPlaceholderString;
    UIColor* placeholderColor;
}

- (void)setGfColor:(NSInteger)value {
	UITextField *textField = [self searchTextField];
    textField.textColor = [GFUI getCustomColor:value];
	
}

- (void)setGfSize:(NSInteger)value {
    UITextField *textField = [self searchTextField];
    [textField setFont:[GFUI getCustomSize:value view:self]];
}

- (void)setXtPlaceholderColor:(NSInteger)value {
    placeholderColor = [GFUI getCustomColor:value];
    [self setPlaceholderColor:placeholderColor];
}

- (void)setPlaceholderColor:(UIColor*)color {
    if (self.placeholder != nil) {
        UITextField *textField = [self searchTextField];
        textField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.placeholder attributes:@{NSForegroundColorAttributeName:color}];
    }
}

- (void)setGfPlaceholderLanguage:(NSString *)value {
    textPlaceholderString = NSLocalizedString(value, nil);
    [self setPlaceholderText:textPlaceholderString];
}

- (void)setPlaceholderText:(NSString*)text {
    UITextField *textField = [self searchTextField];
    textField.placeholder = text;
}

@end
