#import "BsFlutterCardPlugin.h"
#if __has_include(<bs_flutter_card/bs_flutter_card-Swift.h>)
#import <bs_flutter_card/bs_flutter_card-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "bs_flutter_card-Swift.h"
#endif

@implementation BsFlutterCardPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBsFlutterCardPlugin registerWithRegistrar:registrar];
}
@end
