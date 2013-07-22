//
//  Spaceport.m
//  SpacePortsDemo
//
//  Created by Reybis Ceballos on 7/14/13.
//  Copyright (c) 2013 PrinSoft. All rights reserved.
//

#import "Spaceport.h"

@interface Spaceport()

@property (assign, nonatomic) double latitude;
@property (assign, nonatomic) double longitude;

@end

@implementation Spaceport

-(id)initWithTitle:(NSString *)aTitle
   withDescription:(NSString *)aDescription
  withImageAddress:(NSString *)aAddress
         withOwner:(NSString *)aOwner
      withLatitude:(double)aLatitude
     withLongitude:(double)aLongitude;
{
    self = [super init];
    if (self) {
        self.title = aTitle;
        self.details = aDescription;
        self.imageAddress = [NSString stringWithFormat:@"%@_image",aAddress];
        self.owner = [NSString stringWithFormat:@"%@_logo",aOwner];
        CLLocationCoordinate2D location;
        location.latitude = aLatitude;
        location.longitude =aLongitude;
        self.location = location;
    }
    return self;
}

@end
