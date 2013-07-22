//
//  DetailViewController.h
//  SpacePortsDemo
//
//  Created by Reybis Ceballos on 7/14/13.
//  Copyright (c) 2013 PrinSoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIImageView *ownerView;
@property (weak, nonatomic) IBOutlet UILabel *descriptionTextView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (copy, nonatomic) NSString *descriptionText;
@property (copy, nonatomic) NSString *imageAddress;
@property (copy, nonatomic) NSString *ownerAddress;
@property (assign, nonatomic) CLLocationCoordinate2D coordinate;
@end
