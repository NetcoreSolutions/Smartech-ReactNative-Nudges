//
//  HanselRnActionListener.h
//  HanselRn
//
//  Created by Rajeev Rajeshuni on 23/10/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SmartechNudges/Hansel-umbrella.h>
#import "HanselRnUtils.h"
#import <React/RCTLog.h>

@interface HanselRnActionListener : NSObject <HanselActionListener>

+ (instancetype) sharedInstance;
- (void) registerHanselActionListenerForAction: (NSString*) action;
- (void )removeHanselActionListenerForAction: (NSString*) action;

@end
