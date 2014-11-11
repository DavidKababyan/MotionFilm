//
//  Factory.h
//  MotionFilm
//
//  Created by David Kababyan on 11/1/14.
//  Copyright (c) 2014 David Kababyan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AudioModel.h"
#import "LightingModel.h"
#import "VideoModel.h"

@interface Factory : NSObject
@property (nonatomic, strong) NSArray *audioModel;
@property (nonatomic, strong) NSArray *lightingModel;
@property (nonatomic, strong) NSArray *videoModel;
@property (nonatomic, strong) NSArray *subVideoModel;

- (void)makeAudioModel;
- (void)makeLightingModel;
- (void)makeVideoModel;
- (void)makeSubVideoModel;
@end
