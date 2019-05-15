#import "DjfFirstLuginPlugin.h"

@implementation DjfFirstLuginPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"djf_first_lugin"
            binaryMessenger:[registrar messenger]];
  DjfFirstLuginPlugin* instance = [[DjfFirstLuginPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  }else if ([@"getName" isEqualToString:call.method]) {
      NSDictionary *_arguments = call.arguments;
      NSString *str = [_arguments objectForKey:@"surname"];
      result([@"iOS " stringByAppendingFormat:@"%@ 金锋", str]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
