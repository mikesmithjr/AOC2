//
//  FlightFactory.h
//  Smith_Michael_1301_AOC2_Week2
//
//  Created by Michael Smith on 1/16/13.
//  Copyright (c) 2013 Michael Smith. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseFlight.h"
#import "firstFlight.h"
#import "secondFlight.h"
#import "thirdFlight.h"

@interface FlightFactory : NSObject

+(baseFlight *)setupNewFlight: (int)flightType;

@end
