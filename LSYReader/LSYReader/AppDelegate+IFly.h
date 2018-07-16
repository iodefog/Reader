//
//  AppDelegate+IFly.h
//  LSYReader
//
//  Created by LHL on 2018/7/16.
//  Copyright © 2018 okwei. All rights reserved.
//

#import "AppDelegate.h"

// 如果需要每个属性或每个方法都去指定nonnull和nullable，是一件非常繁琐的事。苹果为了减轻我们的工作量，专门提供了两个宏：NS_ASSUME_NONNULL_BEGIN和NS_ASSUME_NONNULL_END。

NS_ASSUME_NONNULL_BEGIN

@interface AppDelegate (IFly)

- (void)speakerDelay:(NSString *)text;
- (void)saySpeaker:(NSString *)text;
- (void)stopSpeaker;

@end

NS_ASSUME_NONNULL_END
