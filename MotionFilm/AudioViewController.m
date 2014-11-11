//
//  AudioViewController.m
//  MotionFilm
//
//  Created by David Kababyan on 10/31/14.
//  Copyright (c) 2014 David Kababyan. All rights reserved.
//

#import "AudioViewController.h"
#import "Factory.h"
#import "AudioModel.h"
#import "AudioDetailViewController.h"

@interface AudioViewController () <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *audioItems;

@end

@implementation AudioViewController

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
    [factory makeAudioModel];
    self.audioItems = factory.audioModel;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - TableView Delegate Methods

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AudioCell"];
    
    AudioModel *audiomodel = [self.audioItems objectAtIndex:indexPath.row];
    cell.textLabel.text = audiomodel.name;

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self performSegueWithIdentifier:@"audioToDetailViewSeg" sender:indexPath];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.audioItems count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"audioToDetailViewSeg"]) {
        
        NSIndexPath *indexPath = sender;
        AudioDetailViewController *vc = [[AudioDetailViewController alloc] init];
        vc = segue.destinationViewController;
        vc.AudioModel = [self.audioItems objectAtIndex:indexPath.row];
    }
}


@end
