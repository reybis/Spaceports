//
//  DetailViewController.h
//  DeveloperNewsDemo
//
//  Created by Reybis Ceballos on 7/14/13.
//  Copyright (c) 2013 EnSoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@property (copy, nonatomic) NSString *title;
@property (copy, nonatomic) NSString *description;
@property (copy, nonatomic) NSString *imageAddress;
@property (assign, nonatomic) CLLocationCoordinate2D coordinate;

@end
