//
//  GFLabel.h
//  // Fanfa
//
//  Created by Guido Fanfani on 14/10/19.
//  Copyright © 2019 Fanfa. All rights reserved.
//

#import <UIKit/UIKit.h>

// IB_DESIGNABLE
@interface GFLabel : UILabel

@property (nonatomic) IBInspectable NSInteger gfColor;

@property (nonatomic) IBInspectable NSInteger gfSize;

@property (nonatomic) IBInspectable NSString* gfLanguage;

@end
