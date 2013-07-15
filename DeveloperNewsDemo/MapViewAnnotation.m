//
//  MapViewAnnotation.m
//  SpaceShipNewsDemo
//
//  Created by Reybis Ceballos on 7/15/13.
//  Copyright (c) 2013 EnSoft. All rights reserved.
//

#import "MapViewAnnotation.h"

@implementation MapViewAnnotation

-(id)initWithTitle:(NSString *)aTitle withCoordinate:(CLLocationCoordinate2D)c2D;
{
    self = [super init];
    if (self) {
        _title = aTitle;
        _coordinate = c2D;
    }
    return self;
}

@end
