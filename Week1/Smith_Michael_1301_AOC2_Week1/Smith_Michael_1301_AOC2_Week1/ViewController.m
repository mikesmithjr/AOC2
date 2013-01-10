//
//  ViewController.m
//  Smith_Michael_1301_AOC2_Week1
//
//  Created by Michael Smith on 1/9/13.
//  Copyright (c) 2013 Michael Smith. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //creating first flight
    firstFlight *jacksFlight = (firstFlight*)[FlightFactory setupNewFlight:JACK];
    [jacksFlight setFlightTimeMinutes:20];
    
    if (jacksFlight !=nil)
    {
        NSArray *jacksPlanes = [[NSArray alloc] initWithObjects:@"Edge 540",@"Super Cub", @"Phantom", nil];
        [jacksFlight setPlaneList:jacksPlanes];
        
        NSString *jacksSkill = @"Jack is an intermediate level pilot.";
        [jacksFlight setPilotSkill:jacksSkill];
        
        NSLog(@"Jack can fly one of these planes today %@", [jacksFlight planeList]);
        NSLog(@"%@", jacksFlight.pilotSkill);
        
        [jacksFlight calcFlightTime];
    }
    
    
    //creating second flight
    secondFlight *garysFlight = (secondFlight*)[FlightFactory setupNewFlight:GARY];
    [garysFlight setFlightTimeMinutes:40];
    
    if (garysFlight !=nil)
    {
        NSArray *garysPlanes = [[NSArray alloc] initWithObjects:@"Extra 300S",@"SpaceWalker", @"Habu", nil];
        [garysFlight setPlaneList:garysPlanes];
        
        NSString *garysSkill = @"Gary is an advanced level pilot.";
        [garysFlight setPilotSkill:garysSkill];
        
        NSLog(@"Gary can fly one of these planes today %@", [garysFlight planeList]);
        NSLog(@"%@", garysFlight.pilotSkill);
        
        [garysFlight calcFlightTime];
    }
    
    //creating third flight
    thirdFlight *austinsFlight = (thirdFlight*)[FlightFactory setupNewFlight:AUSTIN];
    [austinsFlight setFlightTimeMinutes:10];
    
    if (austinsFlight !=nil)
    {
        NSArray *austinsPlanes = [[NSArray alloc] initWithObjects:@"CarbonZ Yak",@"Mini Stryker", @"Scimitar", nil];
        [austinsFlight setPlaneList:austinsPlanes];
        
        NSString *austinsSkill = @"Austin is an expert level pilot.";
        [austinsFlight setPilotSkill:austinsSkill];
        
        NSLog(@"Jack can fly one of these planes today %@", [austinsFlight planeList]);
        NSLog(@"%@", austinsFlight.pilotSkill);
        
        [austinsFlight calcFlightTime];
    }
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
