//
//  Spaceport.h
//  SpacePortsDemo
//
//  Created by Reybis Ceballos on 7/14/13.
//  Copyright (c) 2013 PrinSoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Spaceport : NSObject

@property (copy, nonatomic) NSString *title;
@property (copy, nonatomic) NSString *details;
@property (copy, nonatomic) NSString *imageAddress;
@property (copy, nonatomic) NSString *owner;
@property (assign, nonatomic) CLLocationCoordinate2D location;

-(id)initWithTitle:(NSString *)aTitle
   withDescription:(NSString *)aDescription
  withImageAddress:(NSString *)aAddress
         withOwner:(NSString *)aOwner
      withLatitude:(double)aLatitude
     withLongitude:(double)aLongitude;

@end
