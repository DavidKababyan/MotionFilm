//
//  SubVidTableViewController.m
//  MotionFilm
//
//  Created by David Kababyan on 11/9/14.
//  Copyright (c) 2014 David Kababyan. All rights reserved.
//

#import "SubVidTableViewController.h"
#import "SubVidDetailViewController.h"

@interface SubVidTableViewController ()

@property (nonatomic, strong) NSArray *videoItems;

@end

@implementation SubVidTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = self.videoModel.name;

    Factory *factory = [[Factory alloc] init];
    [factory makeSubVideoModel];
    if ([self.videoModel.name isEqualToString:@"Framing"]) {
        self.videoItems = [factory subVideoModel][0];
    }else if ([self.videoModel.name isEqualToString:@"Camera movements"]){
        self.videoItems = [factory subVideoModel][1];

    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.videoItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"subVidCell" forIndexPath:indexPath];
    
    VideoModel *videoModel = [self.videoItems objectAtIndex:indexPath.row];
    
    cell.textLabel.text = videoModel.name;

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    [self performSegueWithIdentifier:@"subVideoToDetailSeg" sender:indexPath];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *indexPath = sender;
    SubVidDetailViewController *vc = [[SubVidDetailViewController alloc] init];
    vc = segue.destinationViewController;
    vc.videoModel = [self.videoItems objectAtIndex:indexPath.row];
}

@end
