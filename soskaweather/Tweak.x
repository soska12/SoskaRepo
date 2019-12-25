@interface SBUILegibilityLabel : UIView
@end

@interface SBFLockScreenDateSubtitleView : UIView
@end

@interface SBFLockScreenDateView : UIView
@property (assign,getter=isSubtitleHidden,nonatomic) BOOL subtitleHidden;
@property (nonatomic,readonly) long long _keyboardOrientation;
@property (nonatomic,retain) NSDate *date;
-(void)setCustomSubtitleView:(SBFLockScreenDateSubtitleView *)arg1;
-(id)_timeLabel;

  //Speculum
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
-(void)_updateWeatherForLocation:(id)arg1 city:(id)arg2 completionHandler:(/*^block*/id)arg3;
@end

  //Force allow content hugging priority
@interface UILabel (Speculum)
-(void)setContentHuggingPriority:(float)arg1 forAxis:(NSInteger)arg2;
@end

@interface UIImageView (Speculum)
-(void)setContentHuggingPriority:(float)arg1 forAxis:(NSInteger)arg2;
@end




static SBFLockScreenDateView *lockScreeenDateView;

%hook SBDashBoardViewController
  -(BOOL)_isWakeAnimationInProgress {
      [lockScreeenDateView updateWeatherForCity];
    return %orig;
  }
%end

%hook SBFLockScreenDateView
-(id)initWithFrame:(CGRect)arg1 {
    return lockScreeenDateView = %orig;
  }

-(void)didMoveToSuperview {
    %orig;
    [self setupWeather];
    [lockScreeenDateView updateWeatherForCity];
  }

%property (nonatomic, retain) UIView *weatherView;
%property (retain) UIStackView *weatherStackView;
%property (retain) UIImageView *weatherConditionImage;
%property (retain) UILabel *weatherLabel;
%new
  -(void)setupWeather {
  	if(!self.weatherLabel) {
  	  UIView *_dateView = [self valueForKey:@"_dateSubtitleView"];

      self.weatherLabel = [[UILabel alloc] initWithFrame:CGRectZero];
      [self.weatherLabel setFont:[UIFont systemFontOfSize:24.0 weight:1.0]];
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

      [_dateView addSubview:self.weatherStackView];

      NSLayoutConstraint *centreHorizontallyConstraint = [NSLayoutConstraint
                                      constraintWithItem:self.weatherStackView
                                      attribute:NSLayoutAttributeCenterX
                                      relatedBy:NSLayoutRelationEqual
                                      toItem:_dateView
                                      attribute:NSLayoutAttributeCenterX
                                      multiplier:1.0
                                      constant:0];

      NSLayoutConstraint *YConstraint = [NSLayoutConstraint
                                             constraintWithItem:self.weatherStackView attribute:NSLayoutAttributeTop
                                             relatedBy:NSLayoutRelationEqual toItem:_dateView attribute:
                                             NSLayoutAttributeTop multiplier:1.0 constant:100];

      [_dateView addConstraint:centreHorizontallyConstraint];
      [_dateView addConstraint:YConstraint];

      }
  }


%new
  -(void)updateWeatherLabel {
    if(self.weatherLabel) {
      City *city = [[%c(WeatherPreferences) sharedPreferences] localWeatherCity];
      if(city == nil && [[[[%c(WeatherPreferences) userDefaultsPersistence] userDefaults] objectForKey:@"Cities"] count] > 0) {
        city = [[%c(WeatherPreferences) sharedPreferences] cityFromPreferencesDictionary:[[[%c(WeatherPreferences) userDefaultsPersistence] userDefaults] objectForKey:@"Cities"][0]];
      }

      WFTemperature *temperature = [city temperature];
      NSString *temperatureValue = @"--\u00B0";
      temperatureValue = [NSString stringWithFormat:@"%d\u00B0C", (int)[temperature celsius]];
        

      self.weatherLabel.text = temperatureValue;


      if([%c(WeatherImageLoader) respondsToSelector:@selector(conditionImageNamed:size:cloudAligned:stroke:strokeAlpha:lighterColors:)]) {
        NSString *weatherConditionName = [%c(WeatherImageLoader) conditionImageNameWithConditionIndex:city.conditionCode];
        self.weatherConditionImage.image = [%c(WeatherImageLoader) conditionImageNamed:weatherConditionName size:CGSizeMake(self.weatherLabel.font.lineHeight + 20, self.weatherLabel.font.lineHeight + 20) cloudAligned:NO stroke:NO strokeAlpha:0.0 lighterColors:NO];
      } else {
        if([self.weatherStackView.subviews containsObject:self.weatherConditionImage]) {
          [self.weatherStackView removeArrangedSubview:self.weatherConditionImage];
        }
      }
    }
  }

%new
  -(void)updateWeatherForCity {
    City *city = [[%c(WeatherPreferences) sharedPreferences] localWeatherCity];
    if(city == nil && [[[[%c(WeatherPreferences) userDefaultsPersistence] userDefaults] objectForKey:@"Cities"] count] > 0) {
      city = [[%c(WeatherPreferences) sharedPreferences] cityFromPreferencesDictionary:[[[%c(WeatherPreferences) userDefaultsPersistence] userDefaults] objectForKey:@"Cities"][0]];
    }

    [[%c(TWCLocationUpdater) sharedLocationUpdater] _updateWeatherForLocation:city.location city:city completionHandler:^{
      [self updateWeatherLabel];
    }];
  }

%new
  -(NSString *)conditionNameWithCode:(int)condition {
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

%new
  -(NSString *)conditionDescriptionWithCode:(int)condition {
    NSString *conditionName = [self conditionNameWithCode:condition];

    if(condition == 44 || condition > 47) {
      return conditionName;
    }

    return [[NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/Weather.framework"] localizedStringForKey:conditionName value:nil table:@"WeatherFrameworkLocalizableStrings"];
  }
%end