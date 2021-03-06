//
//  VideoProductionModel.h
//  MotionFilm
//
//  Created by David Kababyan on 11/1/14.
//  Copyright (c) 2014 David Kababyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VideoModel : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *title;

@property (nonatomic, strong) NSArray *textArray;
@property (nonatomic, strong) NSArray *imageArray;

@property (nonatomic, strong) NSArray *videoArray;

@end
