//
//  AppDelegate+IFly.m
//  LSYReader
//
//  Created by LHL on 2018/7/16.
//  Copyright © 2018 okwei. All rights reserved.
//

#import "AppDelegate+IFly.h"
#import "IflyMSCManager.h"

@implementation AppDelegate (IFly)


- (void)speakerDelay:(NSString *)text{
    NSLog(@"IFLY + Text \n%@", text);
    [NSRunLoop cancelPreviousPerformRequestsWithTarget:self selector:@selector(saySpeaker:) object:text];
    [self performSelector:@selector(saySpeaker:) withObject:text afterDelay:0.3];
}

- (void)saySpeaker:(NSString *)text{
    [self stopSpeaker];
    dispatch_async(dispatch_get_main_queue(), ^{
        [[IflyMSCManager shareInstanced] setIFlySynthesizer];
        [[IflyMSCManager shareInstanced] startSpeaker:text];
    });
}

- (void)stopSpeaker{
    dispatch_async(dispatch_get_main_queue(), ^{
        [[IflyMSCManager shareInstanced] destroyIFly];
    });
}


@end
