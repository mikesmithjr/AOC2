//
//  baseFlight.m
//  Smith_Michael_1301_AOC2_Week2
//
//  Created by Michael Smith on 1/16/13.
//  Copyright (c) 2013 Michael Smith. All rights reserved.
//

#import "baseFlight.h"

@implementation baseFlight

@synthesize planeList, pilotSkill, flightTimeMinutes, planes, flights, timePerFlight;

//initialize the default flight, starting the instance and setting initial flight time to zero
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setFlightTimeMinutes:0];
        [self setPlaneList:nil];
        [self setPilotSkill:nil];
        [self setFlights:0];
        [self setTimePerFlight:5];
    }
    return self;
}

//calculation of flight time based on pilot
-(void)calcFlightTime
{
    NSLog(@"This pilot can fly for %i minutes", flightTimeMinutes);
}

@end
