//
//  SpaceShipNew.h
//  SpaceShipNewsDemo
//
//  Created by Reybis Ceballos on 7/14/13.
//  Copyright (c) 2013 EnSoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SpaceShipNew : NSObject

@property (copy, nonatomic) NSString *title;
@property (copy, nonatomic) NSString *description;
@property (copy, nonatomic) NSString *imageAddress;
@property (assign, nonatomic) CLLocationCoordinate2D location;

-(id)initWithTitle:(NSString *)aTitle withDescription:(NSString *)aDescription withImageAddress:(NSString *)aAddress withLatitude:(double)aLatitude withLongitude:(double)aLongitude;
@end
