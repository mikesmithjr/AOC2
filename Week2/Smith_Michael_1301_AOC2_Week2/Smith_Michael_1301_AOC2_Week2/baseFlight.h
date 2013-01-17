//
//  baseFlight.h
//  Smith_Michael_1301_AOC2_Week2
//
//  Created by Michael Smith on 1/16/13.
//  Copyright (c) 2013 Michael Smith. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseFlight : NSObject


{
    int pilotEnum;
}

typedef enum
{
    JACK,
    GARY,
    AUSTIN
} pilotEnum;

//data for pilot's array of planes, flight time in minutes, and skill level

@property NSArray *planeList;
@property NSString *pilotSkill;
@property int flightTimeMinutes;
@property NSString *planes;
@property int flights;
@property int timePerFlight;

//Initialize
-(id)init;

//calculating flight time
-(void)calcFlightTime;

@end
