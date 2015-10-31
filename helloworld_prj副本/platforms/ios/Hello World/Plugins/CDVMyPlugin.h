//
//  CDVMyPlugin.h
//  Hello World
//
//  Created by 陈佳佳 on 15/10/29.
//
//

#import <Cordova/CDVPlugin.h>

@interface CDVMyPlugin : CDVPlugin

@property (nonatomic, copy)NSString *callBackId;

- (void)print:(NSMutableArray *)arguments withDic:(NSMutableDictionary *)options;

@end
