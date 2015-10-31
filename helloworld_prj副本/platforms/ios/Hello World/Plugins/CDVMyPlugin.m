//
//  CDVMyPlugin.m
//  Hello World
//
//  Created by 陈佳佳 on 15/10/29.
//
//

#import "CDVMyPlugin.h"

@implementation CDVMyPlugin

@synthesize callBackId;

- (void)print:(NSMutableArray *)arguments withDic:(NSMutableDictionary *)options
{
    self.callBackId = [arguments pop];
    NSString *stringObtainedFromJavascript = [arguments objectAtIndex:0];
    
    NSMutableString *stringToReturn = [NSMutableString stringWithString:@"我是返回的"];
    
    [stringToReturn appendString:stringObtainedFromJavascript];
    
    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:stringToReturn];
    NSLog(@"%@",stringToReturn);
    
    if ([stringObtainedFromJavascript isEqualToString:stringToReturn] == YES) {
        [self writeJavascript:[pluginResult toSuccessCallbackString:self.callBackId]];
    } else {
        [self writeJavascript:[pluginResult toErrorCallbackString:self.callBackId]];
    }
}

@end
