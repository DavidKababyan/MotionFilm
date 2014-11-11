//
//  VideoViewController.m
//  MotionFilm
//
//  Created by David Kababyan on 10/31/14.
//  Copyright (c) 2014 David Kababyan. All rights reserved.
//

#import "VideoViewController.h"
#import "Factory.h"
#import "VideoModel.h"
#import "VideoDetailViewController.h"
#import "SubVidTableViewController.h"

@interface VideoViewController () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *videoItems;

@end

@implementation VideoViewController

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
    Factory *factory = [[Factory alloc] init];
    [factory makeVideoModel];
    self.videoItems = factory.videoModel;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - TableView Delegate Methods

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"VideoCell"];
    
    VideoModel *videoModel = [self.videoItems objectAtIndex:indexPath.row];
    
    cell.textLabel.text = videoModel.name;

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    //add if statement for subTableview seg
    if (indexPath.row < 3) {
        [self performSegueWithIdentifier:@"videoToDetailSeg" sender:indexPath];

    } else{
        [self performSegueWithIdentifier:@"subVidSeg" sender:indexPath];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.videoItems count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"videoToDetailSeg"]) {
        
        NSIndexPath *indexPath = sender;
        VideoDetailViewController *vc = [[VideoDetailViewController alloc] init];
        vc = segue.destinationViewController;
        vc.videoModel = [self.videoItems objectAtIndex:indexPath.row];
    } else if ([segue.identifier isEqualToString:@"subVidSeg"]){
        NSIndexPath *indexPath = sender;
        SubVidTableViewController *vc = [[SubVidTableViewController alloc] init];
        vc = segue.destinationViewController;
        vc.videoModel = [self.videoItems objectAtIndex:indexPath.row];
    }
}


@end
