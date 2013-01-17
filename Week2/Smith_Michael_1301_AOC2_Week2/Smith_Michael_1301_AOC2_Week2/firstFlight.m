//
//  firstFlight.m
//  Smith_Michael_1301_AOC2_Week2
//
//  Created by Michael Smith on 1/16/13.
//  Copyright (c) 2013 Michael Smith. All rights reserved.
//

#import "firstFlight.h"

@implementation firstFlight

@synthesize flights, timePerFlight;

//customizing init to set data for Jack's flights
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        
    }
    return self;
};

//overriding the base flight to refactor for individual flight data
-(void)calcFlightTime
{
    [self setFlightTimeMinutes:(flights * timePerFlight)];
    //NSLog(@"Jack gets to fly for %i minutes", self.flightTimeMinutes);
    
}


@end
