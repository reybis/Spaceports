//
//  DetailViewController.m
//  SpacePortsDemo
//
//  Created by Reybis Ceballos on 7/14/13.
//  Copyright (c) 2013 PrinSoft. All rights reserved.
//

#import "DetailViewController.h"
#import "MapViewAnnotation.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

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
    _descriptionTextView.text = _descriptionText;
    _imageView.image = [UIImage imageNamed:_imageAddress];
    _ownerView.image = [UIImage imageNamed:_ownerAddress];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;
{    
    if ([segue.identifier isEqualToString:@"showMap"]) {
    UIViewController *dtViewController = [segue destinationViewController];
        
    MKMapView *mapView = (MKMapView *)[dtViewController.view viewWithTag:1001];
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
    annotation.coordinate = _coordinate;
    annotation.title = self.title;
    annotation.subtitle = _descriptionText;
    [mapView addAnnotation:annotation];
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(_coordinate, 5000, 5000);
    [mapView setRegion:region animated:YES];
    }
    
}

@end
