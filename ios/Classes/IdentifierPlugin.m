#import "IdentifierPlugin.h"
#if __has_include(<identifier/identifier-Swift.h>)
#import <identifier/identifier-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "identifier-Swift.h"
#endif

@implementation IdentifierPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftIdentifierPlugin registerWithRegistrar:registrar];
}
@end
