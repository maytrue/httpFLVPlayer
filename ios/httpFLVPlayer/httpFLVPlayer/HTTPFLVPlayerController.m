//
//  HTTPFLVPlayerController.m
//  httpFLVPlayer
//
//  Created by guowei on 1/14/16.
//  Copyright © 2016 guowei. All rights reserved.
//

#import "HTTPFLVPlayerController.h"
#import <CoreMedia/CoreMedia.h>

@implementation HTTPFLVPlayerController

- (instancetype)initPlayerWithView:(UIView *)view
                           playURL:(NSURL *)playURL
{
    self = [super init];
    
    if (self) {
        _uiView = view;
        _playURL = playURL;
        _videoDisplayLayer = [[AVSampleBufferDisplayLayer alloc] init];
        _videoDisplayLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;
        _videoDisplayLayer.bounds = _uiView.bounds;
        [_uiView.layer addSublayer:_videoDisplayLayer];
    }
    
    return self;
}

- (void)displayVideo:(CMSampleBufferRef)sampleBuffer
{
    if ([_videoDisplayLayer isReadyForMoreMediaData]) {
        [_videoDisplayLayer enqueueSampleBuffer:sampleBuffer];
    }
}

- (void)play
{
    
}

- (void)stop
{
    
}




@end
