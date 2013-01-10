//
//  FlightFactory.h
//  Smith_Michael_1301_AOC2_Week1
//
//  Created by Michael Smith on 1/9/13.
//  Copyright (c) 2013 Michael Smith. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseFlight.h"
#import "jacksflight.h"
#import "garysFlight.h"
#import "austinsFlight.h"

@interface FlightFactory : NSObject

+(baseFlight *)setupNewFlight: (int)flightType;

@end
