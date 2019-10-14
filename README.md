# GFMagicUI

[![CI Status](https://img.shields.io/travis/guidosette/GFMagicUI.svg?style=flat)](https://travis-ci.org/guidosette/GFMagicUI)
[![Version](https://img.shields.io/cocoapods/v/GFMagicUI.svg?style=flat)](https://cocoapods.org/pods/GFMagicUI)
[![License](https://img.shields.io/cocoapods/l/GFMagicUI.svg?style=flat)](https://cocoapods.org/pods/GFMagicUI)
[![Platform](https://img.shields.io/cocoapods/p/GFMagicUI.svg?style=flat)](https://cocoapods.org/pods/GFMagicUI)

## Example

![Alt Text](https://github.com/guidosette/GFMagicUI/blob/master/photo.gif)

A quicklytool to locate and customize your storyboard.
You can quickly locate your storyboard. You can customize your Font name, size and color.

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

GFMagicUI is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'GFMagicUI'
```

## How to use

Font name/size
	@implementation GFFont (CustomFont)

	+ (bool)isSystemFont {
		return false;
	}

	+ (NSString*)fontRegularName {
		return @"RobotoSlab-Regular";
	}

	+ (NSString*)fontBoldName {
		return @"RobotoSlab-Bold";
	}

	+ (UIFont*)smallFont:(UIView *)view {
		return [GFFont forGeneralView:view fontSize:UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad ? 19 : 17];
	}

	+ (UIFont*)normalFont:(UIView *)view {
		return [self forGeneralView:view fontSize:UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad ? 21 : 19];
	}

	+ (UIFont*)bigFont:(UIView *)view {
		return [self forGeneralView:view fontSize:UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad ? 23 : 21];
	}

	@end
	
Color
	/**
	 Color
	 */
	typedef NS_ENUM(int, CustomColorFanfa) {
		TEXT_COLOR_DARK_GREY_FANFA = 1,
		TEXT_COLOR_LIGHT_GREY_FANFA = 2,
		MAIN_COLOR_FANFA = 3,
		TEXT_COLOR_WHITE_FANFA = 4,
		TEXT_COLOR_BLACK_FANFA = 5,
		BACKGROUND_COLOR_LIGHT_GREY_FANFA = 6,
		TEXT_COLOR_PLACEHOLDER_FANFA = 7,
		TEXT_COLOR_CLEAR_FANFA = 8,
		BACKGROUND_COLOR_DARK_GREY_FANFA = 9,
		TEXT_COLOR_RED_FANFA = 10,
		GRADIENT_START_FANFA = 11,
		GRADIENT_END_FANFA = 12,
		RED_COLOR_FANFA = 13,
		BLUE_COLOR_FANFA = 14,
		GREEN_COLOR_FANFA = 15,
		BLACK_COLOR_FANFA = 16,
		ORANGE_COLOR_FANFA = 17,
		YELLOW_COLOR_FANFA = 18
	};
	
	@implementation GFUI (CustomUI)

	+ (UIColor*)getCustomColor:(NSInteger)value {
		switch (value) {
			case TEXT_COLOR_DARK_GREY_FANFA:
				return [UIColor darkGrayColor];
			case TEXT_COLOR_LIGHT_GREY_FANFA:
				return [UIColor grayColor];
			case MAIN_COLOR_FANFA:
				return [UIColor greenColor];
			case TEXT_COLOR_WHITE_FANFA:
				return [UIColor whiteColor];
			case TEXT_COLOR_BLACK_FANFA:
				return [UIColor blackColor];
			case BACKGROUND_COLOR_LIGHT_GREY_FANFA:
				return [UIColor groupTableViewBackgroundColor];
			case TEXT_COLOR_PLACEHOLDER_FANFA:
				return [UIColor lightGrayColor];
			case TEXT_COLOR_CLEAR_FANFA:
				return [UIColor clearColor];
			case BACKGROUND_COLOR_DARK_GREY_FANFA:
				return [UIColor darkGrayColor];
			case TEXT_COLOR_RED_FANFA:
				return [UIColor redColor];
			case GRADIENT_START_FANFA:
				return [UIColor greenColor];
			case GRADIENT_END_FANFA:
				return [UIColor yellowColor];
			case RED_COLOR_FANFA:
				return [UIColor colorWithRed:226.0f/255.0f green:0.0f/255.0f blue:29.0f/255.0f alpha:1.0f];
			case BLUE_COLOR_FANFA:
				return [UIColor colorWithRed:0.0f/255.0f green:26.0f/255.0f blue:220.0f/255.0f alpha:1.0f];
			case GREEN_COLOR_FANFA:
				return [UIColor colorWithRed:76.0f/255.0f green:175.0f/255.0f blue:80.0f/255.0f alpha:1.0f];
			case BLACK_COLOR_FANFA:
				return [UIColor blackColor];
			case ORANGE_COLOR_FANFA:
				return [UIColor orangeColor];
			case YELLOW_COLOR_FANFA:
				return [UIColor yellowColor];

			default:
				return [UIColor blackColor];
		}
	}

	@end

## Author

guidosette, guido.fanfani7@gmail.com

## License

GFMagicUI is available under the MIT license. See the LICENSE file for more info.
