//
//  HTTPFLVPlayerController.h
//  httpFLVPlayer
//
//  Created by guowei on 1/14/16.
//  Copyright © 2016 guowei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface HTTPFLVPlayerController : NSObject


- (instancetype)initPlayerWithView:(UIView *)view
                           playURL:(NSURL *)playURL;

- (void)play;

- (void)stop;

@property(nonatomic, weak) UIView *uiView;
@property(nonatomic, retain) AVSampleBufferDisplayLayer *videoDisplayLayer;
@property(nonatomic, copy) NSURL *playURL;

@end
