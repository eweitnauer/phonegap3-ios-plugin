#import <Cordova/CDV.h>

@interface MyPlugin : CDVPlugin

- (void)hello:(CDVInvokedUrlCommand*)command;
- (void)add:(CDVInvokedUrlCommand*)command;
- (void)echo:(CDVInvokedUrlCommand*)command;

@end