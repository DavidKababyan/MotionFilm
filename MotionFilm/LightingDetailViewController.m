//
//  LightingDetailViewController.m
//  MotionFilm
//
//  Created by David Kababyan on 11/1/14.
//  Copyright (c) 2014 David Kababyan. All rights reserved.
//

#import "LightingDetailViewController.h"
#import "LightingImageViewController.h"

@interface LightingDetailViewController ()


@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) UIView *containerView;

@end

@implementation LightingDetailViewController

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
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = self.lightingModel.title;
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
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(20, y, 280, 30)];
//    title.font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    title.font = [UIFont fontWithName:@"Helvetica" size:24.0];
    title.adjustsFontSizeToFitWidth = NO;
    
//    title.textColor = [UIColor grayColor];
    title.text = self.lightingModel.title;
    y += title.frame.size.height;
    
    self.containerView = [[UIView alloc] init];
    [self.containerView addSubview:title];
    
    NSArray *highlightedText = @[@"Key Light", @"Fill Light", @"Back Light", @"Hard Light", @"Soft Light", @"Spot Light", @"Cold/Warm", @"Moonlight", @"Firelight", @"Watching TV"];
    
    for (NSString *str in self.lightingModel.textArray) {
        
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
        if ([self.lightingModel.imageArray count] > 0) {
            
            UIImage *img = [self imageWithImage:self.lightingModel.imageArray[i] scaledToWidth:self.view.bounds.size.width - 40];
            
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

- (void)imageButtonPressed:(UIButton *)sender
{
    [self performSegueWithIdentifier:@"imageSeg" sender:sender];
}


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


- (CGFloat)textViewHeightForText:(NSString *)text andWidth:(CGFloat)width
{
    UITextView *textView = [[UITextView alloc] init];
    textView.font = [UIFont fontWithName:@"Helvetica" size:15.0];
    textView.text = text;
    
    CGSize size = [textView sizeThatFits:CGSizeMake(width, FLT_MAX)];
    return size.height;
}



#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender
{
    if ([segue.identifier isEqualToString:@"imageSeg"]) {
        LightingImageViewController *vc = segue.destinationViewController;
        vc.img = sender.imageView.image;
    }
}


@end
