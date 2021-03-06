//
//  SubVidImageViewController.m
//  MotionFilm
//
//  Created by David Kababyan on 11/9/14.
//  Copyright (c) 2014 David Kababyan. All rights reserved.
//

#import "SubVidImageViewController.h"

@interface SubVidImageViewController ()<UIScrollViewDelegate>


@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *imageView;
@end

@implementation SubVidImageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    self.imageView = [[UIImageView alloc] initWithImage:self.img];
    self.imageView.frame = CGRectMake(20, 50, self.img.size.width, self.img.size.height);
    [self.scrollView addSubview:self.imageView];
    
    self.scrollView.contentSize = self.imageView.frame.size;
    self.scrollView.delegate = self;
    
    self.scrollView.maximumZoomScale = 2.5;
    self.scrollView.minimumZoomScale = 0.8;
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;
}

@end
