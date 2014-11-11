//
//  LightingViewController.m
//  MotionFilm
//
//  Created by David Kababyan on 10/31/14.
//  Copyright (c) 2014 David Kababyan. All rights reserved.
//

#import "LightingViewController.h"
#import "Factory.h"
#import "LightingModel.h"
#import "LightingDetailViewController.h"

@interface LightingViewController () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *lightingItems;

@end

@implementation LightingViewController

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
    [factory makeLightingModel];
    self.lightingItems = factory.lightingModel;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - TableView Delegate Methods

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LightingCell"];
    
    LightingModel *lightingModel = [self.lightingItems objectAtIndex:indexPath.row];
    
    cell.textLabel.text = lightingModel.name;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self performSegueWithIdentifier:@"lightingToDetailViewSeg" sender:indexPath];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.lightingItems count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"lightingToDetailViewSeg"]) {
        
        NSIndexPath *indexPath = sender;
        LightingDetailViewController *vc = [[LightingDetailViewController alloc] init];
        vc = segue.destinationViewController;
        vc.lightingModel = [self.lightingItems objectAtIndex:indexPath.row];
    }
}

@end
