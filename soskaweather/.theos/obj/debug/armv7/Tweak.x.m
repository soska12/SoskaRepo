#line 1 "Tweak.x"
#import <notify.h>

@interface SBUILegibilityLabel : UIView
@end

@interface SBFLockScreenDateSubtitleView : UIView
@end

@interface WGWidgetGroupViewController : UIViewController
@end

@interface SpringBoard : UIApplication
+(id) sharedApplication;
-(NSInteger) activeInterfaceOrientation;
@end

@interface SBDashBoardCombinedListViewController : UIViewController
-(void) _updateListViewContentInset;
-(void) _layoutListView;
-(UIEdgeInsets) _listViewDefaultContentInsets;
@end

@interface CSCombinedListViewController : UIViewController
-(void) _updateListViewContentInset;
-(void) _layoutListView;
-(UIEdgeInsets) _listViewDefaultContentInsets;
@end

@interface SBLockStateAggregator : NSObject
+(id) sharedInstance;
-(unsigned long long)lockState;
@end


@interface SBDashBoardViewController : UITableViewController
@end

@interface SBFLockScreenDateView : UIView
@property (assign,getter=isSubtitleHidden,nonatomic) BOOL subtitleHidden;
@property (nonatomic,readonly) long long _keyboardOrientation;
@property (nonatomic,retain) NSDate *date;
-(void)setCustomSubtitleView:(SBFLockScreenDateSubtitleView *)arg1;
-(id)_timeLabel;

  
@property (retain) UIStackView *speculumStackView;
@property (retain) UIStackView *weatherStackView;
@property (retain) UIImageView *weatherConditionImage;
@property (retain) UIView *fillerView;
@property (retain) UILabel *timeLabel;
@property (retain) UILabel *dateLabel;
@property (retain) UILabel *weatherLabel;
-(void)setupWeather;
-(void)updateClockAndDateLabel;
-(void)updateWeatherLabel;
-(void)updateWeatherForCity;
-(NSString *)conditionNameWithCode:(int)condition;
-(NSString *)conditionDescriptionWithCode:(int)condition;
-(void)batteryStateChanged:(NSNotification *)notification;
-(void)setAlignment:(int)alignment;
-(void)switchViewPositions:(UITapGestureRecognizer *)gesture;
-(void)fadeOutSpeculumWithDuration:(float)duration withDelay:(float)delay;
-(void)fadeInSpeculumWithDuration:(float)duration withDelay:(float)delay;
-(void)preferencesChanged;
@end

@interface SBPagedScrollView : UIScrollView
@property (assign,nonatomic) unsigned long long currentPageIndex;
@property (nonatomic,readonly) long long _keyboardOrientation;
@end

@interface WFTemperature : NSObject
-(double)celsius;
-(double)fahrenheit;
-(double)kelvin;
@end

@interface CLLocation : NSObject
@end

@interface City : NSObject
@property (nonatomic,copy) NSString *updateTimeString;
@property (assign,nonatomic) long long conditionCode;
@property (copy) CLLocation *location;
-(WFTemperature *)temperature;
@end

@interface WeatherPreferences : NSObject
+(id)sharedPreferences;
+(id)userDefaultsPersistence;
-(NSDictionary *)userDefaults;
-(City *)cityFromPreferencesDictionary:(NSDictionary *)arg1;
-(City *)localWeatherCity;
-(int)userTemperatureUnit;
@end

@interface WeatherImageLoader : NSObject
+(id)sharedImageLoader;
+(UIImage *)conditionImageNamed:(id)arg1 size:(CGSize)arg2 cloudAligned:(BOOL)arg3 stroke:(BOOL)arg4 strokeAlpha:(double)arg5 lighterColors:(BOOL)arg6;
+(UIImage *)conditionImageWithConditionIndex:(long long)arg1;
+(NSString *)conditionImageNameWithConditionIndex:(long long)arg1;
@end

@interface TWCLocationUpdater : NSObject
+(id)sharedLocationUpdater;
-(void)_updateWeatherForLocation:(id)arg1 city:(id)arg2 completionHandler:(id)arg3;
@end


@interface SBUIProudLockIconView : UIView
-(void)_configureAutolayoutFlagsNeedingLayout:(BOOL)arg1;
@end


static CGFloat notifListOffset = 30;



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

@class SBFLockScreenDateView; @class WeatherImageLoader; @class WGWidgetGroupViewController; @class SBDashBoardCombinedListViewController; @class SBDashBoardViewController; @class TWCLocationUpdater; @class CSCombinedListViewController; @class WeatherPreferences; @class SBUIProudLockIconView; 
static UIEdgeInsets (*_logos_orig$_ungrouped$CSCombinedListViewController$_listViewDefaultContentInsets)(_LOGOS_SELF_TYPE_NORMAL CSCombinedListViewController* _LOGOS_SELF_CONST, SEL); static UIEdgeInsets _logos_method$_ungrouped$CSCombinedListViewController$_listViewDefaultContentInsets(_LOGOS_SELF_TYPE_NORMAL CSCombinedListViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$CSCombinedListViewController$_layoutListView)(_LOGOS_SELF_TYPE_NORMAL CSCombinedListViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$CSCombinedListViewController$_layoutListView(_LOGOS_SELF_TYPE_NORMAL CSCombinedListViewController* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$CSCombinedListViewController$_minInsetsToPushDateOffScreen)(_LOGOS_SELF_TYPE_NORMAL CSCombinedListViewController* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$CSCombinedListViewController$_minInsetsToPushDateOffScreen(_LOGOS_SELF_TYPE_NORMAL CSCombinedListViewController* _LOGOS_SELF_CONST, SEL); static SBDashBoardCombinedListViewController* (*_logos_orig$_ungrouped$SBDashBoardCombinedListViewController$initWithNibName$bundle$)(_LOGOS_SELF_TYPE_INIT SBDashBoardCombinedListViewController*, SEL, id, id) _LOGOS_RETURN_RETAINED; static SBDashBoardCombinedListViewController* _logos_method$_ungrouped$SBDashBoardCombinedListViewController$initWithNibName$bundle$(_LOGOS_SELF_TYPE_INIT SBDashBoardCombinedListViewController*, SEL, id, id) _LOGOS_RETURN_RETAINED; static UIEdgeInsets (*_logos_orig$_ungrouped$SBDashBoardCombinedListViewController$_listViewDefaultContentInsets)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardCombinedListViewController* _LOGOS_SELF_CONST, SEL); static UIEdgeInsets _logos_method$_ungrouped$SBDashBoardCombinedListViewController$_listViewDefaultContentInsets(_LOGOS_SELF_TYPE_NORMAL SBDashBoardCombinedListViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBDashBoardCombinedListViewController$_layoutListView)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardCombinedListViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBDashBoardCombinedListViewController$_layoutListView(_LOGOS_SELF_TYPE_NORMAL SBDashBoardCombinedListViewController* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$SBDashBoardCombinedListViewController$_minInsetsToPushDateOffScreen)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardCombinedListViewController* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$SBDashBoardCombinedListViewController$_minInsetsToPushDateOffScreen(_LOGOS_SELF_TYPE_NORMAL SBDashBoardCombinedListViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBUIProudLockIconView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBUIProudLockIconView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBUIProudLockIconView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBUIProudLockIconView* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$SBDashBoardViewController$_isWakeAnimationInProgress)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardViewController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SBDashBoardViewController$_isWakeAnimationInProgress(_LOGOS_SELF_TYPE_NORMAL SBDashBoardViewController* _LOGOS_SELF_CONST, SEL); static SBFLockScreenDateView* (*_logos_orig$_ungrouped$SBFLockScreenDateView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT SBFLockScreenDateView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static SBFLockScreenDateView* _logos_method$_ungrouped$SBFLockScreenDateView$initWithFrame$(_LOGOS_SELF_TYPE_INIT SBFLockScreenDateView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$SBFLockScreenDateView$didMoveToSuperview)(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBFLockScreenDateView$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBFLockScreenDateView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBFLockScreenDateView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBFLockScreenDateView$setupWeather(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBFLockScreenDateView$updateWeatherLabel(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBFLockScreenDateView$updateWeatherForCity(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$SBFLockScreenDateView$conditionNameWithCode$(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST, SEL, int); static NSString * _logos_method$_ungrouped$SBFLockScreenDateView$conditionDescriptionWithCode$(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST, SEL, int); static void (*_logos_orig$_ungrouped$WGWidgetGroupViewController$viewDidLayoutSubviews)(_LOGOS_SELF_TYPE_NORMAL WGWidgetGroupViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$WGWidgetGroupViewController$viewDidLayoutSubviews(_LOGOS_SELF_TYPE_NORMAL WGWidgetGroupViewController* _LOGOS_SELF_CONST, SEL); 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$WeatherImageLoader(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("WeatherImageLoader"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$TWCLocationUpdater(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("TWCLocationUpdater"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$WeatherPreferences(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("WeatherPreferences"); } return _klass; }
#line 118 "Tweak.x"

static UIEdgeInsets _logos_method$_ungrouped$CSCombinedListViewController$_listViewDefaultContentInsets(_LOGOS_SELF_TYPE_NORMAL CSCombinedListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    UIEdgeInsets originalInsets = _logos_orig$_ungrouped$CSCombinedListViewController$_listViewDefaultContentInsets(self, _cmd);

    originalInsets.top += notifListOffset + 8;
    originalInsets.bottom -= notifListOffset + 8;
    return originalInsets;
}

static void _logos_method$_ungrouped$CSCombinedListViewController$_layoutListView(_LOGOS_SELF_TYPE_NORMAL CSCombinedListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$CSCombinedListViewController$_layoutListView(self, _cmd);
    [self _updateListViewContentInset];
}

static double _logos_method$_ungrouped$CSCombinedListViewController$_minInsetsToPushDateOffScreen(_LOGOS_SELF_TYPE_NORMAL CSCombinedListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    double orig = _logos_orig$_ungrouped$CSCombinedListViewController$_minInsetsToPushDateOffScreen(self, _cmd);

    
    

    return orig + notifListOffset + 8;
}



static SBDashBoardCombinedListViewController* _logos_method$_ungrouped$SBDashBoardCombinedListViewController$initWithNibName$bundle$(_LOGOS_SELF_TYPE_INIT SBDashBoardCombinedListViewController* __unused self, SEL __unused _cmd, id arg1, id arg2) _LOGOS_RETURN_RETAINED {
    int notify_token2;
    
    notify_register_dispatch("com.yourcompany.soskaweather/notif", &notify_token2, dispatch_get_main_queue(), ^(int token) {
        [self _layoutListView];
    });
    return _logos_orig$_ungrouped$SBDashBoardCombinedListViewController$initWithNibName$bundle$(self, _cmd, arg1, arg2);
}

static UIEdgeInsets _logos_method$_ungrouped$SBDashBoardCombinedListViewController$_listViewDefaultContentInsets(_LOGOS_SELF_TYPE_NORMAL SBDashBoardCombinedListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    UIEdgeInsets originalInsets = _logos_orig$_ungrouped$SBDashBoardCombinedListViewController$_listViewDefaultContentInsets(self, _cmd);

    originalInsets.top += notifListOffset;
    return originalInsets;
}

static void _logos_method$_ungrouped$SBDashBoardCombinedListViewController$_layoutListView(_LOGOS_SELF_TYPE_NORMAL SBDashBoardCombinedListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$SBDashBoardCombinedListViewController$_layoutListView(self, _cmd);
    [self _updateListViewContentInset];
}

static double _logos_method$_ungrouped$SBDashBoardCombinedListViewController$_minInsetsToPushDateOffScreen(_LOGOS_SELF_TYPE_NORMAL SBDashBoardCombinedListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    double orig = _logos_orig$_ungrouped$SBDashBoardCombinedListViewController$_minInsetsToPushDateOffScreen(self, _cmd);

    
    

    return orig + notifListOffset;
}






















static float NPL_x = 0.f;
static float NPL_y = 0.f;
static float NPL_origx;
static float NPL_origy;


static void _logos_method$_ungrouped$SBUIProudLockIconView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBUIProudLockIconView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  _logos_orig$_ungrouped$SBUIProudLockIconView$layoutSubviews(self, _cmd);
    NPL_origx = (NPL_origx) ? NPL_origx : self.frame.origin.x;
    NPL_origy = (NPL_origy) ? NPL_origy : self.frame.origin.y;
    self.frame = CGRectMake(NPL_origx + NPL_x, NPL_origy + NPL_y, self.frame.size.width, self.frame.size.height);
    
    UIView *vw = self;
        while (vw) {
            for (NSLayoutConstraint *constraint in vw.constraints)
                if (constraint.firstItem == self || constraint.secondItem == self) [vw removeConstraint:constraint];
            vw = vw.superview;
        }
        self.translatesAutoresizingMaskIntoConstraints = YES;
        [self _configureAutolayoutFlagsNeedingLayout:NO];
}



static SBFLockScreenDateView *lockScreeenDateView;

static CGFloat yOffset = 0;


  static BOOL _logos_method$_ungrouped$SBDashBoardViewController$_isWakeAnimationInProgress(_LOGOS_SELF_TYPE_NORMAL SBDashBoardViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
      [lockScreeenDateView updateWeatherForCity];
    return _logos_orig$_ungrouped$SBDashBoardViewController$_isWakeAnimationInProgress(self, _cmd);
  }



static SBFLockScreenDateView* _logos_method$_ungrouped$SBFLockScreenDateView$initWithFrame$(_LOGOS_SELF_TYPE_INIT SBFLockScreenDateView* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    [NSTimer scheduledTimerWithTimeInterval:(15 * 60) target:self selector:@selector(updateWeatherForCity) userInfo:nil repeats:YES];

    return lockScreeenDateView = _logos_orig$_ungrouped$SBFLockScreenDateView$initWithFrame$(self, _cmd, arg1);
  }

static void _logos_method$_ungrouped$SBFLockScreenDateView$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$SBFLockScreenDateView$didMoveToSuperview(self, _cmd);
    [self setupWeather];
    [lockScreeenDateView updateWeatherForCity];
  }

  static void _logos_method$_ungrouped$SBFLockScreenDateView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  _logos_orig$_ungrouped$SBFLockScreenDateView$layoutSubviews(self, _cmd);
  
  UIView* timeView = [self valueForKey:@"_timeLabel"];
  CGRect timeViewRect = timeView.frame;
  timeViewRect.origin.y = (yOffset);
  [timeView setFrame:timeViewRect];
  
  UIView* dateSubtitleView = [self valueForKey:@"_dateSubtitleView"];
  CGRect dateSubtitleRect = dateSubtitleView.frame;
  dateSubtitleRect.origin.y = timeViewRect.size.height + (yOffset) ;
  [dateSubtitleView setFrame:dateSubtitleRect];
  
  UIView* customSubtitleView = [self valueForKey:@"_customSubtitleView"];
  CGRect customSubtitleRect = customSubtitleView.frame;
  customSubtitleRect.origin.y = timeViewRect.size.height + (yOffset);
  [customSubtitleView setFrame:customSubtitleRect];
  [customSubtitleView setHidden:NO];
}

__attribute__((used)) static UIView * _logos_method$_ungrouped$SBFLockScreenDateView$weatherView(SBFLockScreenDateView * __unused self, SEL __unused _cmd) { return (UIView *)objc_getAssociatedObject(self, (void *)_logos_method$_ungrouped$SBFLockScreenDateView$weatherView); }; __attribute__((used)) static void _logos_method$_ungrouped$SBFLockScreenDateView$setWeatherView(SBFLockScreenDateView * __unused self, SEL __unused _cmd, UIView * rawValue) { objc_setAssociatedObject(self, (void *)_logos_method$_ungrouped$SBFLockScreenDateView$weatherView, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }
__attribute__((used)) static UIStackView * _logos_method$_ungrouped$SBFLockScreenDateView$weatherStackView(SBFLockScreenDateView * __unused self, SEL __unused _cmd) { return (UIStackView *)objc_getAssociatedObject(self, (void *)_logos_method$_ungrouped$SBFLockScreenDateView$weatherStackView); }; __attribute__((used)) static void _logos_method$_ungrouped$SBFLockScreenDateView$setWeatherStackView(SBFLockScreenDateView * __unused self, SEL __unused _cmd, UIStackView * rawValue) { objc_setAssociatedObject(self, (void *)_logos_method$_ungrouped$SBFLockScreenDateView$weatherStackView, rawValue, OBJC_ASSOCIATION_RETAIN); }
__attribute__((used)) static UIImageView * _logos_method$_ungrouped$SBFLockScreenDateView$weatherConditionImage(SBFLockScreenDateView * __unused self, SEL __unused _cmd) { return (UIImageView *)objc_getAssociatedObject(self, (void *)_logos_method$_ungrouped$SBFLockScreenDateView$weatherConditionImage); }; __attribute__((used)) static void _logos_method$_ungrouped$SBFLockScreenDateView$setWeatherConditionImage(SBFLockScreenDateView * __unused self, SEL __unused _cmd, UIImageView * rawValue) { objc_setAssociatedObject(self, (void *)_logos_method$_ungrouped$SBFLockScreenDateView$weatherConditionImage, rawValue, OBJC_ASSOCIATION_RETAIN); }
__attribute__((used)) static UILabel * _logos_method$_ungrouped$SBFLockScreenDateView$weatherLabel(SBFLockScreenDateView * __unused self, SEL __unused _cmd) { return (UILabel *)objc_getAssociatedObject(self, (void *)_logos_method$_ungrouped$SBFLockScreenDateView$weatherLabel); }; __attribute__((used)) static void _logos_method$_ungrouped$SBFLockScreenDateView$setWeatherLabel(SBFLockScreenDateView * __unused self, SEL __unused _cmd, UILabel * rawValue) { objc_setAssociatedObject(self, (void *)_logos_method$_ungrouped$SBFLockScreenDateView$weatherLabel, rawValue, OBJC_ASSOCIATION_RETAIN); }

  static void _logos_method$_ungrouped$SBFLockScreenDateView$setupWeather(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {


  	if(!self.weatherLabel) {
  	  UIView *_timeView = [self valueForKey:@"_dateSubtitleView"];

      self.weatherLabel = [[UILabel alloc] initWithFrame:CGRectZero];
      [self.weatherLabel setFont:[UIFont systemFontOfSize:34.0 weight:UIFontWeightRegular]];
      [self.weatherLabel setNumberOfLines:1];
      [self.weatherLabel setText:@""];
      [self.weatherLabel setContentHuggingPriority:1000 forAxis:UILayoutConstraintAxisHorizontal];
      [self.weatherLabel setTranslatesAutoresizingMaskIntoConstraints:NO];

      self.weatherConditionImage = [[UIImageView alloc] initWithFrame:CGRectZero];
      self.weatherConditionImage.contentMode = UIViewContentModeScaleAspectFit;
      self.weatherConditionImage.translatesAutoresizingMaskIntoConstraints = NO;
      [self.weatherConditionImage setContentHuggingPriority:1000 forAxis:UILayoutConstraintAxisHorizontal];

      self.weatherStackView = [[UIStackView alloc] initWithFrame:CGRectZero];
      self.weatherStackView.axis = UILayoutConstraintAxisHorizontal;
      self.weatherStackView.alignment = UIStackViewAlignmentCenter;
      self.weatherStackView.distribution = UIStackViewDistributionFill;
      self.weatherStackView.spacing = 0;
      self.weatherStackView.translatesAutoresizingMaskIntoConstraints = NO;
      [self.weatherStackView setBackgroundColor:UIColor.redColor];

      [self.weatherStackView addArrangedSubview:self.weatherConditionImage];
      [self.weatherStackView addArrangedSubview:self.weatherLabel];

      [_timeView addSubview:self.weatherStackView];

      NSLayoutConstraint *centreHorizontallyConstraint = [NSLayoutConstraint
                                      constraintWithItem:self.weatherStackView
                                      attribute:NSLayoutAttributeCenterX
                                      relatedBy:NSLayoutRelationEqual
                                      toItem:_timeView
                                      attribute:NSLayoutAttributeCenterX
                                      multiplier:1.0
                                      constant:0];

      NSLayoutConstraint *YConstraint = [NSLayoutConstraint
                                             constraintWithItem:self.weatherStackView attribute:NSLayoutAttributeTop
                                             relatedBy:NSLayoutRelationEqual toItem:_timeView attribute:
                                             NSLayoutAttributeTop multiplier:1.0 constant: 25];

      [_timeView addConstraint:centreHorizontallyConstraint];
      [_timeView addConstraint:YConstraint];

      }
  }



  static void _logos_method$_ungrouped$SBFLockScreenDateView$updateWeatherLabel(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if(self.weatherLabel) {
      City *city = [[_logos_static_class_lookup$WeatherPreferences() sharedPreferences] localWeatherCity];
      if(city == nil && [[[[_logos_static_class_lookup$WeatherPreferences() userDefaultsPersistence] userDefaults] objectForKey:@"Cities"] count] > 0) {
        city = [[_logos_static_class_lookup$WeatherPreferences() sharedPreferences] cityFromPreferencesDictionary:[[[_logos_static_class_lookup$WeatherPreferences() userDefaultsPersistence] userDefaults] objectForKey:@"Cities"][0]];
      }

      WFTemperature *temperature = [city temperature];
      NSString *temperatureValue = @"--\u00B0";
      temperatureValue = [NSString stringWithFormat:@"%d\u00B0C", (int)[temperature celsius]];
        

      self.weatherLabel.text = temperatureValue;


      if([_logos_static_class_lookup$WeatherImageLoader() respondsToSelector:@selector(conditionImageNamed:size:cloudAligned:stroke:strokeAlpha:lighterColors:)]) {
        NSString *weatherConditionName = [_logos_static_class_lookup$WeatherImageLoader() conditionImageNameWithConditionIndex:city.conditionCode];
        self.weatherConditionImage.image = [_logos_static_class_lookup$WeatherImageLoader() conditionImageNamed:weatherConditionName size:CGSizeMake(self.weatherLabel.font.lineHeight + 20, self.weatherLabel.font.lineHeight + 20) cloudAligned:NO stroke:NO strokeAlpha:0.0 lighterColors:NO];
      } else {
        if([self.weatherStackView.subviews containsObject:self.weatherConditionImage]) {
          [self.weatherStackView removeArrangedSubview:self.weatherConditionImage];
        }
      }
    }
  }


  static void _logos_method$_ungrouped$SBFLockScreenDateView$updateWeatherForCity(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    City *city = [[_logos_static_class_lookup$WeatherPreferences() sharedPreferences] localWeatherCity];
    if(city == nil && [[[[_logos_static_class_lookup$WeatherPreferences() userDefaultsPersistence] userDefaults] objectForKey:@"Cities"] count] > 0) {
      city = [[_logos_static_class_lookup$WeatherPreferences() sharedPreferences] cityFromPreferencesDictionary:[[[_logos_static_class_lookup$WeatherPreferences() userDefaultsPersistence] userDefaults] objectForKey:@"Cities"][0]];
    }

    [[_logos_static_class_lookup$TWCLocationUpdater() sharedLocationUpdater] _updateWeatherForLocation:city.location city:city completionHandler:^{
      [self updateWeatherLabel];
    }];
  }


  static NSString * _logos_method$_ungrouped$SBFLockScreenDateView$conditionNameWithCode$(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int condition) {
    switch (condition) {
      case 0: return @"WeatherConditionTornado";
		  case 1: return @"WeatherConditionTropicalStorm";
		  case 2: return @"WeatherConditionHurricane";
      case 3: return @"WeatherConditionSevereThunderstorm";
      case 4: return @"WeatherConditionThunderstorm";
      case 5: return @"WeatherConditionMixedRainAndSnow";
      case 6: return @"WeatherConditionMixedRainAndSleet";
      case 7: return @"WeatherConditionMixedSnowAndSleet";
      case 8: return @"WeatherConditionFreezingDrizzle";
      case 9: return @"WeatherConditionDrizzle";
      case 10: return @"WeatherConditionFreezingRain";
      case 11: return @"WeatherConditionShowers1";
      case 12: return @"WeatherConditionRain";
      case 13: return @"WeatherConditionSnowFlurries";
      case 14: return @"WeatherConditionSnowShowers";
      case 15: return @"WeatherConditionBlowingSnow";
      case 16: return @"WeatherConditionSnow";
      case 17: return @"WeatherConditionHail";
      case 18: return @"WeatherConditionSleet";
      case 19: return @"WeatherConditionDust";
      case 20: return @"WeatherConditionFog";
      case 21: return @"WeatherConditionHaze";
      case 22: return @"WeatherConditionSmoky";
      case 23: return @"WeatherConditionBreezy";
      case 24: return @"WeatherConditionWindy";
      case 25: return @"WeatherConditionFrigid";
      case 26: return @"WeatherConditionCloudy";
      case 27: return @"WeatherConditionMostlyCloudyNight";
      case 28: return @"WeatherConditionMostlyCloudyDay";
      case 29: return @"WeatherConditionPartlyCloudyNight";
      case 30: return @"WeatherConditionPartlyCloudyDay";
      case 31: return @"WeatherConditionClearNight";
      case 32: return @"WeatherConditionSunny";
      case 33: return @"WeatherConditionMostlySunnyNight";
      case 34: return @"WeatherConditionMostlySunnyDay";
      case 35: return @"WeatherConditionMixedRainFall";
      case 36: return @"WeatherConditionHot";
      case 37: return @"WeatherConditionIsolatedThunderstorms";
      case 38: return @"WeatherConditionScatteredThunderstorms";
      case 39: return @"WeatherConditionScatteredShowers";
      case 40: return @"WeatherConditionHeavyRain";
      case 41: return @"WeatherConditionScatteredSnowShowers";
      case 42: return @"WeatherConditionHeavySnow";
      case 43: return @"WeatherConditionBlizzard";
      case 44: return @"Not Available";
      case 45: return @"WeatherConditionScatteredShowers";
      case 46: return @"WeatherConditionScatteredSnowShowers";
      case 47: return @"WeatherConditionIsolatedThundershowers";
		  default: return [NSString stringWithFormat:@"Code Not Found: %d", condition];
	  }
  }


  static NSString * _logos_method$_ungrouped$SBFLockScreenDateView$conditionDescriptionWithCode$(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int condition) {
    NSString *conditionName = [self conditionNameWithCode:condition];

    if(condition == 44 || condition > 47) {
      return conditionName;
    }

    return [[NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/Weather.framework"] localizedStringForKey:conditionName value:nil table:@"WeatherFrameworkLocalizableStrings"];
  }



static void _logos_method$_ungrouped$WGWidgetGroupViewController$viewDidLayoutSubviews(_LOGOS_SELF_TYPE_NORMAL WGWidgetGroupViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  CGRect origFrame = self.view.frame;
  origFrame.origin.y = (notifListOffset + 10);
  [self.view setFrame:origFrame];
  
  _logos_orig$_ungrouped$WGWidgetGroupViewController$viewDidLayoutSubviews(self, _cmd);
}
  
static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CSCombinedListViewController = objc_getClass("CSCombinedListViewController"); MSHookMessageEx(_logos_class$_ungrouped$CSCombinedListViewController, @selector(_listViewDefaultContentInsets), (IMP)&_logos_method$_ungrouped$CSCombinedListViewController$_listViewDefaultContentInsets, (IMP*)&_logos_orig$_ungrouped$CSCombinedListViewController$_listViewDefaultContentInsets);MSHookMessageEx(_logos_class$_ungrouped$CSCombinedListViewController, @selector(_layoutListView), (IMP)&_logos_method$_ungrouped$CSCombinedListViewController$_layoutListView, (IMP*)&_logos_orig$_ungrouped$CSCombinedListViewController$_layoutListView);MSHookMessageEx(_logos_class$_ungrouped$CSCombinedListViewController, @selector(_minInsetsToPushDateOffScreen), (IMP)&_logos_method$_ungrouped$CSCombinedListViewController$_minInsetsToPushDateOffScreen, (IMP*)&_logos_orig$_ungrouped$CSCombinedListViewController$_minInsetsToPushDateOffScreen);Class _logos_class$_ungrouped$SBDashBoardCombinedListViewController = objc_getClass("SBDashBoardCombinedListViewController"); MSHookMessageEx(_logos_class$_ungrouped$SBDashBoardCombinedListViewController, @selector(initWithNibName:bundle:), (IMP)&_logos_method$_ungrouped$SBDashBoardCombinedListViewController$initWithNibName$bundle$, (IMP*)&_logos_orig$_ungrouped$SBDashBoardCombinedListViewController$initWithNibName$bundle$);MSHookMessageEx(_logos_class$_ungrouped$SBDashBoardCombinedListViewController, @selector(_listViewDefaultContentInsets), (IMP)&_logos_method$_ungrouped$SBDashBoardCombinedListViewController$_listViewDefaultContentInsets, (IMP*)&_logos_orig$_ungrouped$SBDashBoardCombinedListViewController$_listViewDefaultContentInsets);MSHookMessageEx(_logos_class$_ungrouped$SBDashBoardCombinedListViewController, @selector(_layoutListView), (IMP)&_logos_method$_ungrouped$SBDashBoardCombinedListViewController$_layoutListView, (IMP*)&_logos_orig$_ungrouped$SBDashBoardCombinedListViewController$_layoutListView);MSHookMessageEx(_logos_class$_ungrouped$SBDashBoardCombinedListViewController, @selector(_minInsetsToPushDateOffScreen), (IMP)&_logos_method$_ungrouped$SBDashBoardCombinedListViewController$_minInsetsToPushDateOffScreen, (IMP*)&_logos_orig$_ungrouped$SBDashBoardCombinedListViewController$_minInsetsToPushDateOffScreen);Class _logos_class$_ungrouped$SBUIProudLockIconView = objc_getClass("SBUIProudLockIconView"); MSHookMessageEx(_logos_class$_ungrouped$SBUIProudLockIconView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$SBUIProudLockIconView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$SBUIProudLockIconView$layoutSubviews);Class _logos_class$_ungrouped$SBDashBoardViewController = objc_getClass("SBDashBoardViewController"); MSHookMessageEx(_logos_class$_ungrouped$SBDashBoardViewController, @selector(_isWakeAnimationInProgress), (IMP)&_logos_method$_ungrouped$SBDashBoardViewController$_isWakeAnimationInProgress, (IMP*)&_logos_orig$_ungrouped$SBDashBoardViewController$_isWakeAnimationInProgress);Class _logos_class$_ungrouped$SBFLockScreenDateView = objc_getClass("SBFLockScreenDateView"); MSHookMessageEx(_logos_class$_ungrouped$SBFLockScreenDateView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$SBFLockScreenDateView$initWithFrame$);MSHookMessageEx(_logos_class$_ungrouped$SBFLockScreenDateView, @selector(didMoveToSuperview), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateView$didMoveToSuperview, (IMP*)&_logos_orig$_ungrouped$SBFLockScreenDateView$didMoveToSuperview);MSHookMessageEx(_logos_class$_ungrouped$SBFLockScreenDateView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$SBFLockScreenDateView$layoutSubviews);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBFLockScreenDateView, @selector(setupWeather), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateView$setupWeather, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBFLockScreenDateView, @selector(updateWeatherLabel), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateView$updateWeatherLabel, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBFLockScreenDateView, @selector(updateWeatherForCity), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateView$updateWeatherForCity, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSString *), strlen(@encode(NSString *))); i += strlen(@encode(NSString *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = 'i'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBFLockScreenDateView, @selector(conditionNameWithCode:), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateView$conditionNameWithCode$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSString *), strlen(@encode(NSString *))); i += strlen(@encode(NSString *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = 'i'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBFLockScreenDateView, @selector(conditionDescriptionWithCode:), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateView$conditionDescriptionWithCode$, _typeEncoding); }{ char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(UIView *)); class_addMethod(_logos_class$_ungrouped$SBFLockScreenDateView, @selector(weatherView), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateView$weatherView, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(UIView *)); class_addMethod(_logos_class$_ungrouped$SBFLockScreenDateView, @selector(setWeatherView:), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateView$setWeatherView, _typeEncoding); } { char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(UIStackView *)); class_addMethod(_logos_class$_ungrouped$SBFLockScreenDateView, @selector(weatherStackView), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateView$weatherStackView, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(UIStackView *)); class_addMethod(_logos_class$_ungrouped$SBFLockScreenDateView, @selector(setWeatherStackView:), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateView$setWeatherStackView, _typeEncoding); } { char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(UIImageView *)); class_addMethod(_logos_class$_ungrouped$SBFLockScreenDateView, @selector(weatherConditionImage), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateView$weatherConditionImage, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(UIImageView *)); class_addMethod(_logos_class$_ungrouped$SBFLockScreenDateView, @selector(setWeatherConditionImage:), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateView$setWeatherConditionImage, _typeEncoding); } { char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(UILabel *)); class_addMethod(_logos_class$_ungrouped$SBFLockScreenDateView, @selector(weatherLabel), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateView$weatherLabel, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(UILabel *)); class_addMethod(_logos_class$_ungrouped$SBFLockScreenDateView, @selector(setWeatherLabel:), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateView$setWeatherLabel, _typeEncoding); } Class _logos_class$_ungrouped$WGWidgetGroupViewController = objc_getClass("WGWidgetGroupViewController"); MSHookMessageEx(_logos_class$_ungrouped$WGWidgetGroupViewController, @selector(viewDidLayoutSubviews), (IMP)&_logos_method$_ungrouped$WGWidgetGroupViewController$viewDidLayoutSubviews, (IMP*)&_logos_orig$_ungrouped$WGWidgetGroupViewController$viewDidLayoutSubviews);} }
#line 434 "Tweak.x"
