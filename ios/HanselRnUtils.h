//
//  HanselUtils.h
//  HanselRn
//
//  Created by Rajeev Rajeshuni on 23/10/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTLog.h>
#import <React/RCTBridgeModule.h>
NS_ASSUME_NONNULL_BEGIN

#define FIRE_EVENT_NOTIFICATION @"hansel_fire_notification"
#define NOTIFICATION_EVENT_NAME @"eventName"
#define NOTIFICATION_BODY @"body"

@interface HanselRnUtils : NSObject
+ (void)returnResult:(id)result withCallback:(RCTResponseSenderBlock)callback;
@end

NS_ASSUME_NONNULL_END
