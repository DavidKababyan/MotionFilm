//
//  SubVidDetailViewController.m
//  MotionFilm
//
//  Created by David Kababyan on 11/9/14.
//  Copyright (c) 2014 David Kababyan. All rights reserved.
//

#import "SubVidDetailViewController.h"
#import "SubVidImageViewController.h"

@interface SubVidDetailViewController ()
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) UIView *containerView;

@end

@implementation SubVidDetailViewController

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
    self.navigationItem.title = self.videoModel.name;
    [self generateView];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    [self.scrollView layoutIfNeeded];
    self.scrollView.contentSize = self.containerView.bounds.size;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - GenerateView

- (void)generateView
{
    float y = 20;
    int i = 0;
    
    self.containerView = [[UIView alloc] init];
    
    NSArray *highlightedText = @[@"Key Light", @"Fill Light", @"Back Light", @"Hard Light", @"Soft Light", @"Spot Light", @"Cold/Warm", @"Moonlight", @"Firelight", @"Watching TV"];
    
    for (NSString *str in self.videoModel.textArray) {
        
        UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(20, y, self.view.bounds.size.width - 40, [self textViewHeightForText:str andWidth:self.view.bounds.size.width - 40])];
        
        //        textView.textAlignment = NSTextAlignmentJustified;
        textView.text = str;
        textView.font = [UIFont fontWithName:@"Helvetica" size:15.0];
        textView.textColor = [UIColor grayColor];
        textView.scrollEnabled = NO;
        textView.editable = NO;
        
        //format the string
        for (NSString *s in highlightedText) {
            NSRange range = [str rangeOfString:s];
            [textView.textStorage addAttributes:@{NSUnderlineStyleAttributeName:@(1), NSForegroundColorAttributeName : [UIColor blackColor]} range:range];
        }
        
        y += [self textViewHeightForText:str andWidth:280];
        
        //check if there are images for the lighting object
        if ([self.videoModel.imageArray count] > 0) {
            
            UIImage *img = [self imageWithImage:self.videoModel.imageArray[i] scaledToWidth:self.view.bounds.size.width - 40];
            
            UIButton *imageButton = [[UIButton alloc] initWithFrame:CGRectMake(20, y, self.view.bounds.size.width - 40, img.size.height)];
            imageButton.layer.borderColor = [[UIColor blackColor] CGColor];
            imageButton.layer.borderWidth = 2.0;
            
            [imageButton addTarget:self
                            action:@selector(imageButtonPressed:)
                  forControlEvents:UIControlEventTouchUpInside];
            
            [imageButton setImage:img forState:UIControlStateNormal];
            
            imageButton.frame = CGRectMake(20, y, self.view.bounds.size.width - 40, img.size.height);
            
            y += imageButton.bounds.size.height + 50;
            
            [self.containerView addSubview:imageButton];
            i++;
        }
        
        [self.containerView addSubview:textView];
    }
    
    [self resizeHightToFitSubviewsView:self.containerView];
    
    [self.scrollView addSubview:self.containerView];
    
}


//resize image keeping aspect ratio
- (UIImage*)imageWithImage:(UIImage*)sourceImage scaledToWidth:(float)i_width
{
    float oldWidth = sourceImage.size.width;
    float scaleFactor = i_width / oldWidth;
    
    float newHeight = sourceImage.size.height * scaleFactor;
    float newWidth = oldWidth * scaleFactor;
    
    UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight));
    [sourceImage drawInRect:CGRectMake(0, 0, newWidth, newHeight)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

//make container view according to the size of its subviews
-(void)resizeHightToFitSubviewsView:(UIView *)view{
    
    float w = 0;
    float h = 0;
    
    for (UIView *v in [view subviews]) {
        float fw = v.frame.origin.x + v.frame.size.width;
        float fh = v.frame.origin.y + v.frame.size.height;
        w = MAX(fw, w);
        h = MAX(fh, h) + 10;
    }
    [view setFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, w, h)];
}


//make textvie according to its content size
- (CGFloat)textViewHeightForText:(NSString *)text andWidth:(CGFloat)width
{
    UITextView *textView = [[UITextView alloc] init];
    textView.font = [UIFont fontWithName:@"Helvetica" size:15.0];
    textView.text = text;
    
    CGSize size = [textView sizeThatFits:CGSizeMake(width, FLT_MAX)];
    return size.height;
}

#pragma mark - Action Buttons

- (void)imageButtonPressed:(UIButton *)sender
{
    [self performSegueWithIdentifier:@"imageSeg" sender:sender];
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender
{
    if ([segue.identifier isEqualToString:@"imageSeg"]) {
        SubVidImageViewController *vc = segue.destinationViewController;
        vc.img = sender.imageView.image;
    }
}
@end
