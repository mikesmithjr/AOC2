//
//  secondFlight.m
//  Smith_Michael_1301_AOC2_Week2
//
//  Created by Michael Smith on 1/16/13.
//  Copyright (c) 2013 Michael Smith. All rights reserved.
//

#import "secondFlight.h"

@implementation secondFlight

@synthesize flights, timePerFlight, flightTimeMinutes;

//customizing init to set data for Jack's flights
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        
        [self setTimePerFlight:6];
    }
    return self;
};

//overriding the base flight to refactor for individual flight data
-(void)calcFlightTime
{
    [self setFlightTimeMinutes:(flights * timePerFlight)];
    //NSLog(@"Gary gets to fly %i times.", self.flights);
}



@end
