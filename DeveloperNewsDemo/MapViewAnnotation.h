//
//  MapViewAnnotation.h
//  SpacePortsDemo
//
//  Created by Reybis Ceballos on 7/15/13.
//  Copyright (c) 2013 PrinSoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MapViewAnnotation : NSObject <MKAnnotation>

@property (copy, nonatomic) NSString* title;
@property (readonly, nonatomic) CLLocationCoordinate2D coordinate;

-(id)initWithTitle:(NSString *)aTitle withCoordinate:(CLLocationCoordinate2D)c2D;
@end
