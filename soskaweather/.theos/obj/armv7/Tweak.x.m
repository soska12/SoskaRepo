#line 1 "Tweak.x"
@interface SBFLockScreenDateView : UIView
@property (assign,nonatomic) CGFloat alignmentPercent;
@property (nonatomic, retain) UIView *weatherView;
@end


@interface WATodayPadView : UIView
- (id)initWithFrame:(CGRect)frame;
@property (nonatomic,retain) UIView * locationLabel;

@property (nonatomic,retain) UIView * conditionsLabel;  
@end

@interface WALockscreenWidgetViewController : UIViewController
@end

static BOOL IS_RTL = NO;
static BOOL RTL_IS_SET = NO;


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class WATodayPadViewStyle; @class SBLockScreenDateViewController; @class SBFLockScreenDateView; @class WATodayPadView; 
static CGFloat (*_logos_orig$_ungrouped$SBFLockScreenDateView$alignmentPercent)(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST, SEL); static CGFloat _logos_method$_ungrouped$SBFLockScreenDateView$alignmentPercent(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBFLockScreenDateView$setAlignmentPercent$)(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST, SEL, CGFloat); static void _logos_method$_ungrouped$SBFLockScreenDateView$setAlignmentPercent$(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST, SEL, CGFloat); static void (*_logos_orig$_ungrouped$SBLockScreenDateViewController$loadView)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenDateViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBLockScreenDateViewController$loadView(_LOGOS_SELF_TYPE_NORMAL SBLockScreenDateViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBLockScreenDateViewController$setContentAlpha$withSubtitleVisible$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenDateViewController* _LOGOS_SELF_CONST, SEL, CGFloat, BOOL); static void _logos_method$_ungrouped$SBLockScreenDateViewController$setContentAlpha$withSubtitleVisible$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenDateViewController* _LOGOS_SELF_CONST, SEL, CGFloat, BOOL); static NSUInteger (*_logos_orig$_ungrouped$WATodayPadViewStyle$format)(_LOGOS_SELF_TYPE_NORMAL WATodayPadViewStyle* _LOGOS_SELF_CONST, SEL); static NSUInteger _logos_method$_ungrouped$WATodayPadViewStyle$format(_LOGOS_SELF_TYPE_NORMAL WATodayPadViewStyle* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$WATodayPadViewStyle$setFormat$)(_LOGOS_SELF_TYPE_NORMAL WATodayPadViewStyle* _LOGOS_SELF_CONST, SEL, NSUInteger); static void _logos_method$_ungrouped$WATodayPadViewStyle$setFormat$(_LOGOS_SELF_TYPE_NORMAL WATodayPadViewStyle* _LOGOS_SELF_CONST, SEL, NSUInteger); static WATodayPadViewStyle* (*_logos_orig$_ungrouped$WATodayPadViewStyle$initWithFormat$orientation$)(_LOGOS_SELF_TYPE_INIT WATodayPadViewStyle*, SEL, NSUInteger, NSInteger) _LOGOS_RETURN_RETAINED; static WATodayPadViewStyle* _logos_method$_ungrouped$WATodayPadViewStyle$initWithFormat$orientation$(_LOGOS_SELF_TYPE_INIT WATodayPadViewStyle*, SEL, NSUInteger, NSInteger) _LOGOS_RETURN_RETAINED; static double (*_logos_orig$_ungrouped$WATodayPadViewStyle$locationLabelBaselineToTemperatureLabelBaseline)(_LOGOS_SELF_TYPE_NORMAL WATodayPadViewStyle* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$WATodayPadViewStyle$locationLabelBaselineToTemperatureLabelBaseline(_LOGOS_SELF_TYPE_NORMAL WATodayPadViewStyle* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$WATodayPadViewStyle$conditionsLabelBaselineToLocationLabelBaseline)(_LOGOS_SELF_TYPE_NORMAL WATodayPadViewStyle* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$WATodayPadViewStyle$conditionsLabelBaselineToLocationLabelBaseline(_LOGOS_SELF_TYPE_NORMAL WATodayPadViewStyle* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$WATodayPadViewStyle$conditionsLabelBaselineToBottom)(_LOGOS_SELF_TYPE_NORMAL WATodayPadViewStyle* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$WATodayPadViewStyle$conditionsLabelBaselineToBottom(_LOGOS_SELF_TYPE_NORMAL WATodayPadViewStyle* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$WATodayPadView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL WATodayPadView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$WATodayPadView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL WATodayPadView* _LOGOS_SELF_CONST, SEL); 

#line 20 "Tweak.x"

__attribute__((used)) static UIView * _logos_method$_ungrouped$SBFLockScreenDateView$weatherView(SBFLockScreenDateView * __unused self, SEL __unused _cmd) { return (UIView *)objc_getAssociatedObject(self, (void *)_logos_method$_ungrouped$SBFLockScreenDateView$weatherView); }; __attribute__((used)) static void _logos_method$_ungrouped$SBFLockScreenDateView$setWeatherView(SBFLockScreenDateView * __unused self, SEL __unused _cmd, UIView * rawValue) { objc_setAssociatedObject(self, (void *)_logos_method$_ungrouped$SBFLockScreenDateView$weatherView, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }
static CGFloat _logos_method$_ungrouped$SBFLockScreenDateView$alignmentPercent(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	if (!RTL_IS_SET) {
		IS_RTL = [UIApplication sharedApplication].userInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft;
		RTL_IS_SET = YES;
	}
	return IS_RTL ? -1.0 : 1.0;
}
static void _logos_method$_ungrouped$SBFLockScreenDateView$setAlignmentPercent$(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGFloat percent) {
	if (!RTL_IS_SET) {
		IS_RTL = [UIApplication sharedApplication].userInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft;
		RTL_IS_SET = YES;
	}
	_logos_orig$_ungrouped$SBFLockScreenDateView$setAlignmentPercent$(self, _cmd, IS_RTL ? -1.0 : 1.0);
}


@interface SBLockScreenDateViewController : UIViewController
@property (nonatomic, retain) UIViewController *weatherController;
@end



__attribute__((used)) static UIViewController * _logos_method$_ungrouped$SBLockScreenDateViewController$weatherController(SBLockScreenDateViewController * __unused self, SEL __unused _cmd) { return (UIViewController *)objc_getAssociatedObject(self, (void *)_logos_method$_ungrouped$SBLockScreenDateViewController$weatherController); }; __attribute__((used)) static void _logos_method$_ungrouped$SBLockScreenDateViewController$setWeatherController(SBLockScreenDateViewController * __unused self, SEL __unused _cmd, UIViewController * rawValue) { objc_setAssociatedObject(self, (void *)_logos_method$_ungrouped$SBLockScreenDateViewController$weatherController, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }
static void _logos_method$_ungrouped$SBLockScreenDateViewController$loadView(_LOGOS_SELF_TYPE_NORMAL SBLockScreenDateViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	_logos_orig$_ungrouped$SBLockScreenDateViewController$loadView(self, _cmd);
	if (!RTL_IS_SET) {
		IS_RTL = [UIApplication sharedApplication].userInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft;
		RTL_IS_SET = YES;
	}
	self.weatherController = [[NSClassFromString(@"WALockscreenWidgetViewController") alloc] init];
	[self addChildViewController:self.weatherController];
	[self.weatherController didMoveToParentViewController:self];
	[self.view addSubview:self.weatherController.view];

	[self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.weatherController.view
			                                             attribute:NSLayoutAttributeCenterY
			                                             relatedBy:NSLayoutRelationEqual
			                                                toItem:self.view
			                                             attribute:NSLayoutAttributeCenterY
			                                            multiplier:1
			                                              constant:0]];

	






}

static void _logos_method$_ungrouped$SBLockScreenDateViewController$setContentAlpha$withSubtitleVisible$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenDateViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGFloat alpha, BOOL subtitleVisible) {
	_logos_orig$_ungrouped$SBLockScreenDateViewController$setContentAlpha$withSubtitleVisible$(self, _cmd, alpha, subtitleVisible);
	if (self.weatherController)
		self.weatherController.view.alpha = alpha;
}



static NSUInteger _logos_method$_ungrouped$WATodayPadViewStyle$format(_LOGOS_SELF_TYPE_NORMAL WATodayPadViewStyle* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return 2;
}
static void _logos_method$_ungrouped$WATodayPadViewStyle$setFormat$(_LOGOS_SELF_TYPE_NORMAL WATodayPadViewStyle* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSUInteger arg1) {
	_logos_orig$_ungrouped$WATodayPadViewStyle$setFormat$(self, _cmd, 2);
}
static WATodayPadViewStyle* _logos_method$_ungrouped$WATodayPadViewStyle$initWithFormat$orientation$(_LOGOS_SELF_TYPE_INIT WATodayPadViewStyle* __unused self, SEL __unused _cmd, NSUInteger arg1, NSInteger arg2) _LOGOS_RETURN_RETAINED {
	return _logos_orig$_ungrouped$WATodayPadViewStyle$initWithFormat$orientation$(self, _cmd, 2,arg2);
}
static double _logos_method$_ungrouped$WATodayPadViewStyle$locationLabelBaselineToTemperatureLabelBaseline(_LOGOS_SELF_TYPE_NORMAL WATodayPadViewStyle* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return 0;
}
static double _logos_method$_ungrouped$WATodayPadViewStyle$conditionsLabelBaselineToLocationLabelBaseline(_LOGOS_SELF_TYPE_NORMAL WATodayPadViewStyle* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return 0;
}
static double _logos_method$_ungrouped$WATodayPadViewStyle$conditionsLabelBaselineToBottom(_LOGOS_SELF_TYPE_NORMAL WATodayPadViewStyle* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return 0;
}



static void _logos_method$_ungrouped$WATodayPadView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL WATodayPadView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	_logos_orig$_ungrouped$WATodayPadView$layoutSubviews(self, _cmd);
	if (self.conditionsLabel) {
		self.conditionsLabel.hidden = YES;
		self.conditionsLabel.alpha = 0;
	}

	if (self.locationLabel) {
		self.locationLabel.alpha = 0;
		self.locationLabel.hidden = YES;
	}
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBFLockScreenDateView = objc_getClass("SBFLockScreenDateView"); MSHookMessageEx(_logos_class$_ungrouped$SBFLockScreenDateView, @selector(alignmentPercent), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateView$alignmentPercent, (IMP*)&_logos_orig$_ungrouped$SBFLockScreenDateView$alignmentPercent);MSHookMessageEx(_logos_class$_ungrouped$SBFLockScreenDateView, @selector(setAlignmentPercent:), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateView$setAlignmentPercent$, (IMP*)&_logos_orig$_ungrouped$SBFLockScreenDateView$setAlignmentPercent$);{ char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(UIView *)); class_addMethod(_logos_class$_ungrouped$SBFLockScreenDateView, @selector(weatherView), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateView$weatherView, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(UIView *)); class_addMethod(_logos_class$_ungrouped$SBFLockScreenDateView, @selector(setWeatherView:), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateView$setWeatherView, _typeEncoding); } Class _logos_class$_ungrouped$SBLockScreenDateViewController = objc_getClass("SBLockScreenDateViewController"); MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenDateViewController, @selector(loadView), (IMP)&_logos_method$_ungrouped$SBLockScreenDateViewController$loadView, (IMP*)&_logos_orig$_ungrouped$SBLockScreenDateViewController$loadView);MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenDateViewController, @selector(setContentAlpha:withSubtitleVisible:), (IMP)&_logos_method$_ungrouped$SBLockScreenDateViewController$setContentAlpha$withSubtitleVisible$, (IMP*)&_logos_orig$_ungrouped$SBLockScreenDateViewController$setContentAlpha$withSubtitleVisible$);{ char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(UIViewController *)); class_addMethod(_logos_class$_ungrouped$SBLockScreenDateViewController, @selector(weatherController), (IMP)&_logos_method$_ungrouped$SBLockScreenDateViewController$weatherController, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(UIViewController *)); class_addMethod(_logos_class$_ungrouped$SBLockScreenDateViewController, @selector(setWeatherController:), (IMP)&_logos_method$_ungrouped$SBLockScreenDateViewController$setWeatherController, _typeEncoding); } Class _logos_class$_ungrouped$WATodayPadViewStyle = objc_getClass("WATodayPadViewStyle"); MSHookMessageEx(_logos_class$_ungrouped$WATodayPadViewStyle, @selector(format), (IMP)&_logos_method$_ungrouped$WATodayPadViewStyle$format, (IMP*)&_logos_orig$_ungrouped$WATodayPadViewStyle$format);MSHookMessageEx(_logos_class$_ungrouped$WATodayPadViewStyle, @selector(setFormat:), (IMP)&_logos_method$_ungrouped$WATodayPadViewStyle$setFormat$, (IMP*)&_logos_orig$_ungrouped$WATodayPadViewStyle$setFormat$);MSHookMessageEx(_logos_class$_ungrouped$WATodayPadViewStyle, @selector(initWithFormat:orientation:), (IMP)&_logos_method$_ungrouped$WATodayPadViewStyle$initWithFormat$orientation$, (IMP*)&_logos_orig$_ungrouped$WATodayPadViewStyle$initWithFormat$orientation$);MSHookMessageEx(_logos_class$_ungrouped$WATodayPadViewStyle, @selector(locationLabelBaselineToTemperatureLabelBaseline), (IMP)&_logos_method$_ungrouped$WATodayPadViewStyle$locationLabelBaselineToTemperatureLabelBaseline, (IMP*)&_logos_orig$_ungrouped$WATodayPadViewStyle$locationLabelBaselineToTemperatureLabelBaseline);MSHookMessageEx(_logos_class$_ungrouped$WATodayPadViewStyle, @selector(conditionsLabelBaselineToLocationLabelBaseline), (IMP)&_logos_method$_ungrouped$WATodayPadViewStyle$conditionsLabelBaselineToLocationLabelBaseline, (IMP*)&_logos_orig$_ungrouped$WATodayPadViewStyle$conditionsLabelBaselineToLocationLabelBaseline);MSHookMessageEx(_logos_class$_ungrouped$WATodayPadViewStyle, @selector(conditionsLabelBaselineToBottom), (IMP)&_logos_method$_ungrouped$WATodayPadViewStyle$conditionsLabelBaselineToBottom, (IMP*)&_logos_orig$_ungrouped$WATodayPadViewStyle$conditionsLabelBaselineToBottom);Class _logos_class$_ungrouped$WATodayPadView = objc_getClass("WATodayPadView"); MSHookMessageEx(_logos_class$_ungrouped$WATodayPadView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$WATodayPadView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$WATodayPadView$layoutSubviews);} }
#line 115 "Tweak.x"
