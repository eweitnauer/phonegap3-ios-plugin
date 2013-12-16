#import "SimplePlugin.h"
#import <Cordova/CDV.h>

@implementation SimplePlugin

- (void)hello:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Hello says your plugin :)"];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)add:(CDVInvokedUrlCommand*)command
{
    float a = [[command.arguments objectAtIndex:0] floatValue];
    float b = [[command.arguments objectAtIndex:1] floatValue];

    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDouble:a+b];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}


- (void)echo:(CDVInvokedUrlCommand*)command
{
  NSString* msg = [command.arguments objectAtIndex:0];

  CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:msg];
  [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end