#import <UIKit/UIKit.h>

%hook UIStatusBarBackgroundView

- (id)initWithFrame:(CGRect)frame style:(id)style backgroundColor:(UIColor *)color
{
  self = %orig;
	if (self) {
	  int style = 2060; // Adaptive light :P
	  CGFloat tintAlpha = 0.5;
		_UIBackdropViewSettings *settings = [_UIBackdropViewSettings settingsForStyle:style];
		[settings setColorTint:color]; // Vanilla hook
		[settings setColorTintAlpha:tintAlpha];
		_UIBackdropView *backdropView = [[_UIBackdropView alloc] initWithFrame:frame autosizesToFitSuperview:YES settings:settings];
		[self addSubview:backdropView];
		[backdropView release];
	}
	return self;
}

%end
