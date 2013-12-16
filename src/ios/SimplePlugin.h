#import <Cordova/CDV.h>

@interface SimplePlugin : CDVPlugin

- (void)hello:(CDVInvokedUrlCommand*)command;
- (void)add:(CDVInvokedUrlCommand*)command;
- (void)echo:(CDVInvokedUrlCommand*)command;

@end