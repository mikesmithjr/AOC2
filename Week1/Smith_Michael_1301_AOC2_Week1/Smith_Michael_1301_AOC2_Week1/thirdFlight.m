//
//  thirdFlight.m
//  Smith_Michael_1301_AOC2_Week1
//
//  Created by Michael Smith on 1/9/13.
//  Copyright (c) 2013 Michael Smith. All rights reserved.
//

#import "thirdFlight.h"

@implementation thirdFlight

@synthesize flights, timePerFlight, flightTimeMinutes;

//customizing init to set data for Jack's flights
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setFlightTimeMinutes:0];
        [self setFlights:0];
        [self setTimePerFlight:0];
    }
    return self;
};

//overriding the base flight to refactor for individual flight data
-(void)calcFlightTime
{
    [self setTimePerFlight:(flightTimeMinutes / flights)];
    //NSLog(@"Austin gets to fly for %i minutes per flight", self.timePerFlight);
}



@end
