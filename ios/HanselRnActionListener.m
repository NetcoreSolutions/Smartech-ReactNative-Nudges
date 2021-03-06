//
//  HanselRnActionListener.m
//  HanselRn
//
//  Created by Rajeev Rajeshuni on 23/10/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "HanselRnActionListener.h"

@implementation HanselRnActionListener
{
    BOOL hasListener;
}

+ (instancetype) sharedInstance {
    static HanselRnActionListener* manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[HanselRnActionListener alloc] init];
    });
    return manager;
}

- (void)onActionPerformed:(NSString *)action {
    @try {
        if(hasListener) {
            NSLog(@"Hansel Info: ActionsListener singleton received action %@",action);
            [[NSNotificationCenter defaultCenter] postNotificationName:FIRE_EVENT_NOTIFICATION object:nil userInfo:@{NOTIFICATION_EVENT_NAME:@"HanselActionPerformed",NOTIFICATION_BODY:@{@"action": action}}];
        }
    } @catch (NSException *exception) {
        NSLog(@"Hansel error: Exception caught while sending action event from react native bridge.");
    }
}

- (void) registerHanselActionListenerForAction: (NSString*) action {
    @try {
        hasListener = YES;
        [Hansel registerHanselActionListener:action andListener:self];
    } @catch (NSException *exception) {
        NSLog(@"Hansel error: Exception caught in registerHanselActionListenerForAction in HanselRnActionListener class.");
    }
}

- (void) removeHanselActionListenerForAction: (NSString*) action {
    @try {
        hasListener = NO;
        [Hansel removeHanselActionListener:action];
    } @catch (NSException *exception) {
        NSLog(@"Hansel error: Exception caught in removeHanselActionListenerForAction in HanselRnActionListener class.");
    }
}

@end
