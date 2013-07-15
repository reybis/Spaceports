//
//  SpaceShipNew.m
//  SpaceShipNewsDemo
//
//  Created by Reybis Ceballos on 7/14/13.
//  Copyright (c) 2013 EnSoft. All rights reserved.
//

#import "SpaceShipNew.h"

@interface SpaceShipNew()

@property (assign, nonatomic) double latitude;
@property (assign, nonatomic) double longitude;

@end

@implementation SpaceShipNew

-(id)initWithTitle:(NSString *)aTitle withDescription:(NSString *)aDescription withImageAddress:(NSString *)aAddress withLatitude:(double)aLatitude withLongitude:(double)aLongitude;
{
    self = [super init];
    if (self) {
        self.title = aTitle;
        self.description = aDescription;
        self.imageAddress = aAddress;
        
        CLLocationCoordinate2D location;
        location.latitude = aLatitude;
        location.longitude =aLongitude;
        self.location = location;
    }
    return self;
}

@end
