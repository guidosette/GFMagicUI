//
//  GFTextFeld.m
//  // Fanfa
//
//  Created by Guido Fanfani on 14/10/19.
//  Copyright © 2019 Fanfa. All rights reserved.
//

#import "GFTextField.h"
#import "GFFont.h"
#import "GFUI.h"

@implementation GFTextField {
    UIImageView* iconError;
    UIImageView* iconSeePassword;
    bool eyeEnabled;

    NSString* textPlaceholderString;
    UIColor* placeholderColor;
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
    [super drawRect:rect];

    [self addValidationIcon];
    [self addSeePasswordIcon];

    if (textPlaceholderString) {
        [self setPlaceholderText:textPlaceholderString];
    }
    if (placeholderColor) {
        [self setPlaceholderColor:placeholderColor];
    }
}

- (void)addValidationIcon {
    float height = self.frame.size.height;
    float width = self.frame.size.width;
    float sizeIcon = height * 0.6;
    float padding = 2;
    iconError = [[UIImageView alloc] initWithFrame:CGRectMake(width-sizeIcon-padding, (height-sizeIcon)/2, sizeIcon, sizeIcon)];
    iconError.image = [UIImage imageNamed:@"Fanfa.bundle/error"];
    [self addSubview:iconError];
//    self.rightViewMode = UITextFieldViewModeWhileEditing;
//    [self setRightView:iconSeePassword];
    [self hideIconError];
}

- (void)addSeePasswordIcon {
    float height = self.frame.size.height;
    float width = self.frame.size.width;
    float sizeIcon = height * 0.6;
    float padding = 2;
    iconSeePassword = [[UIImageView alloc] initWithFrame:CGRectMake(width-sizeIcon-padding, (height-sizeIcon)/2, sizeIcon, sizeIcon)];
    iconSeePassword.image = [UIImage imageNamed:@"eye"];
    [iconSeePassword addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickEye)]];
    [iconSeePassword setUserInteractionEnabled:true];
    [self setUserInteractionEnabled:true];
    self.rightViewMode = UITextFieldViewModeWhileEditing;
    [self setRightView:iconSeePassword];
    if (!eyeEnabled) {
        [self disabledIconSeePassword];
    }

}

- (void)showIconError {
    iconError.hidden = false;
}

- (void)hideIconError {
    iconError.hidden = true;
}

- (void)enabledSeePassword {
    eyeEnabled = true;
    iconSeePassword.hidden = false;
}

- (void)disabledIconSeePassword {
    eyeEnabled = false;
    iconSeePassword.hidden = true;
}

-(void)clickEye {
    self.secureTextEntry = !self.secureTextEntry;
}


- (void)setGfColor:(NSInteger)value {
    self.textColor = [GFUI getCustomColor:value];
}

- (void)setGfSize:(NSInteger)value {
    [self setFont:[GFUI getCustomSize:value view:self]];
}

- (void)setGfPlaceholderColor:(NSInteger)value {
    placeholderColor = [GFUI getCustomColor:value];
    [self setPlaceholderColor:placeholderColor];
}

- (void)setPlaceholderColor:(UIColor*)color {
    if (self.placeholder != nil) {
        self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.placeholder attributes:@{NSForegroundColorAttributeName:color}];
    }
}

- (void)setGfPlaceholderLanguage:(NSString *)value {
    textPlaceholderString = NSLocalizedString(value, nil);
    [self setPlaceholderText:textPlaceholderString];
}

- (void)setPlaceholderText:(NSString*)text {
    self.placeholder = text;
}

@end
