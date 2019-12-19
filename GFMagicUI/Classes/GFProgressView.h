//
//  GFProgressView.h
//  // Fanfa
//
//  Created by Guido Fanfani on 26/09/18.
//  Copyright © 2019 Fanfa. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

// IB_DESIGNABLE
@interface GFProgressView : UIProgressView

@property (nonatomic) IBInspectable NSInteger gfBackgroundColor;

@property (nonatomic) IBInspectable NSInteger gfUnprogressColor;

@property (nonatomic) IBInspectable NSInteger gfProgressColor;

@property (nonatomic) IBInspectable NSInteger gfHeight;

@property (nonatomic) IBInspectable NSInteger gfCornerRadius;

@end

NS_ASSUME_NONNULL_END
