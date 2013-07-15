//
//  DetailViewController.m
//  DeveloperNewsDemo
//
//  Created by Reybis Ceballos on 7/14/13.
//  Copyright (c) 2013 EnSoft. All rights reserved.
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
    _scrollView.autoresizesSubviews = UIViewAutoresizingFlexibleWidth;
    
//    MapViewAnnotation *annotation = [[MapViewAnnotation alloc] initWithTitle:self.title withCoordinate:_coordinate];
//    [_mapView addAnnotation:annotation];
    
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
    annotation.coordinate = _coordinate;
    annotation.title = self.title;
    annotation.subtitle = _description;
    
    [_mapView addAnnotation:annotation];
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(_coordinate, 800, 800);
    [_mapView setRegion:[_mapView regionThatFits:region] animated:YES];
    
    _descriptionTextView.text = _description;
    _imageView.image = [UIImage imageNamed:_imageAddress];
    self.navigationController.title = self.title;
	// Do any additional setup after loading the view.
}

- (void)mapView:(MKMapView *)mv didAddAnnotationViews:(NSArray *)views
{
//	MKAnnotationView *annotationView = [views objectAtIndex:0];
//	id <MKAnnotation> mp = [annotationView annotation];
//	MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance([mp coordinate], 1500, 1500);
//	[mv setRegion:region animated:YES];
//	[mv selectAnnotation:mp animated:YES];
    
    
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation;
{
//    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 800, 800);
//    [_mapView setRegion:[_mapView regionThatFits:region] animated:YES];
//    
//    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
//    annotation.coordinate = userLocation.coordinate;
//    annotation.title = @"Where am I?";
//    annotation.subtitle = @"I'm here!";
//    
//    [_mapView addAnnotation:annotation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
