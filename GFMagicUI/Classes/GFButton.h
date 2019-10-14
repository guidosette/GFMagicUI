//
//  GFButton.h
//  // Fanfa
//
//  Created by Guido Fanfani on 14/10/19.
//  Copyright © 2019 Fanfa. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface GFButton : UIButton

@property (nonatomic) IBInspectable NSInteger gfColor;

@property (nonatomic) IBInspectable NSInteger gfSize;

@property (nonatomic) IBInspectable NSInteger gfBackgroundColor;

@property (nonatomic) IBInspectable NSString* gfLanguage;

@property (nonatomic) IBInspectable NSInteger gfCornerRadius;

@property (nonatomic) IBInspectable NSInteger gfBorderWidth;

@property (nonatomic) IBInspectable NSInteger gfBorderColor;

@end
