//
//  FlightFactory.m
//  Smith_Michael_1301_AOC2_Week1
//
//  Created by Michael Smith on 1/9/13.
//  Copyright (c) 2013 Michael Smith. All rights reserved.
//

#import "FlightFactory.h"

@implementation FlightFactory

+(baseFlight *)setupNewFlight: (int)flightType
{
    if (flightType == JACK) {
        return [[firstFlight alloc] init];
        
    }else if (flightType == GARY){
        return [[secondFlight alloc] init];
        
    }else if (flightType == AUSTIN){
        return [[thirdFlight alloc] init];
        
    }else
        return nil;
}
@end
