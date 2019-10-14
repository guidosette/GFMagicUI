//
//  GFImageView.h
//  // Fanfa
//
//  Created by Guido Fanfani on 26/09/18.
//  Copyright © 2019 Fanfa. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

IB_DESIGNABLE
@interface GFImageView : UIImageView

@property (nonatomic) IBInspectable NSInteger gfBackgroundColor;

@property (nonatomic) IBInspectable NSInteger gfCornerRadius;

@property (nonatomic) IBInspectable NSInteger gfBorderWidth;

@property (nonatomic) IBInspectable NSInteger gfBorderColor;

@end

NS_ASSUME_NONNULL_END
