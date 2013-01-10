//
//  baseFlight.m
//  Smith_Michael_1301_AOC2_Week1
//
//  Created by Michael Smith on 1/9/13.
//  Copyright (c) 2013 Michael Smith. All rights reserved.
//

#import "baseFlight.h"

@implementation baseFlight

@synthesize planeList, pilotSkill, flightTimeMinutes, planes;

//initialize the default flight, starting the instance and setting initial flight time to zero
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setFlightTimeMinutes:0];
        [self setPlaneList:nil];
        [self setPilotSkill:nil];
    }
    return self;
}

//calculation of flight time based on pilot
-(void)calcFlightTime
{
    NSLog(@"This pilot can fly for %i minutes", flightTimeMinutes);
}

@end
