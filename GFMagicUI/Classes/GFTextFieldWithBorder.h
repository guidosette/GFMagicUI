//
//  CustomTextField.h
//  // Fanfa
//
//  Created by Guido Fanfani on 13/07/17.
//  Copyright © 2019 Fanfa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GFTextField.h"

// IB_DESIGNABLE
@interface GFTextFieldWithBorder : GFTextField

@property (nonatomic) IBInspectable NSInteger gfBorderColor;

@end
