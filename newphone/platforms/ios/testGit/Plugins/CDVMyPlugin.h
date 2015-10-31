//
//  CDVMyPlugin.h
//  testGit
//
//  Created by 陈佳佳 on 15/10/29.
//
//

#import <Cordova/CDVPlugin.h>

@interface CDVMyPlugin : CDVPlugin

@property (nonatomic, copy)NSString *callbackID;

- (void) print:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;


@end
