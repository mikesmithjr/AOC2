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
    
    //Label Creation
    firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 300.0f, 90.0f)];
    if (firstLabel != nil)
    {
        firstLabel.backgroundColor = [UIColor whiteColor];
        firstLabel.text = @"First Flight";
        firstLabel.textAlignment = NSTextAlignmentCenter;
        firstLabel.numberOfLines = 7;
    }
    [self.view addSubview:firstLabel];
    
    secondLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 175.0f, 300.0f, 90.0f)];
    if (secondLabel != nil)
    {
        secondLabel.backgroundColor = [UIColor greenColor];
        secondLabel.text = @"Second Flight";
        secondLabel.textAlignment = NSTextAlignmentCenter;
        secondLabel.numberOfLines = 7;
    }
    [self.view addSubview:secondLabel];
    
    thirdLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 350.0f, 300.0f, 90.0f)];
    if (thirdLabel != nil)
    {
        thirdLabel.backgroundColor = [UIColor lightGrayColor];
        thirdLabel.text = @"Third flight";
        thirdLabel.textAlignment = NSTextAlignmentCenter;
        thirdLabel.numberOfLines = 7;
    }
    [self.view addSubview:thirdLabel];
    
    auxFirstLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 105.0f, 300.0f, 75.0f)];
    if (auxFirstLabel != nil)
    {
        auxFirstLabel.backgroundColor = [UIColor whiteColor];
        auxFirstLabel.text = @"First Flight Details";
        auxFirstLabel.textAlignment = NSTextAlignmentCenter;
        auxFirstLabel.numberOfLines = 7;
    }
    [self.view addSubview:auxFirstLabel];
    
    auxSecondLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 270.0f, 300.0f, 75.0f)];
    if (auxSecondLabel != nil)
    {
        auxSecondLabel.backgroundColor = [UIColor greenColor];
        auxSecondLabel.text = @"Second Flight Details";
        auxSecondLabel.textAlignment = NSTextAlignmentCenter;
        auxSecondLabel.numberOfLines = 7;
    }
    [self.view addSubview:auxSecondLabel];
    
    auxThirdLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 445.0f, 300.0f, 75.0f)];
    if (auxThirdLabel != nil)
    {
        auxThirdLabel.backgroundColor = [UIColor lightGrayColor];
        auxThirdLabel.text = @"Third Flight Details";
        auxThirdLabel.textAlignment = NSTextAlignmentCenter;
        auxThirdLabel.numberOfLines = 7;
    }
    [self.view addSubview:auxThirdLabel];
    
    //creating first flight
    firstFlight *jacksFlight = (firstFlight*)[FlightFactory setupNewFlight:JACK];
    [jacksFlight setFlights:5];
    [jacksFlight setTimePerFlight:5];
    
    if (jacksFlight !=nil)
    {
        NSArray *jacksPlanes = [[NSArray alloc] initWithObjects:@"Edge 540",@"Super Cub, ", @"Phantom, ", nil];
        NSMutableString *planes = [[NSMutableString alloc] initWithString:@""];
        for (int i=0; i<[jacksPlanes count]; i++)
        {
            [planes insertString:([jacksPlanes objectAtIndex:i]) atIndex:0];
        }
        [jacksFlight setPlaneList:jacksPlanes];
        
        NSString *jacksSkill = @"intermediate level";
        [jacksFlight setPilotSkill:jacksSkill];
        
        //NSLog(@"Jack can fly one of these planes today %@", [jacksFlight planeList]);
        //NSLog(@"%@", jacksFlight.pilotSkill);
        
        [jacksFlight calcFlightTime];
        
        firstLabel.text = [NSString stringWithFormat:@"Jack is an %@ pilot and can fly one of these planes: %@.", [jacksFlight pilotSkill], (planes)];
        auxFirstLabel.text = [NSString stringWithFormat:@"Jack can fly %i times for %i minutes each totaling %i minutes.", [jacksFlight flights], [jacksFlight timePerFlight], [jacksFlight flightTimeMinutes]];
    }
    
    
    //creating second flight
    secondFlight *garysFlight = (secondFlight*)[FlightFactory setupNewFlight:GARY];
    [garysFlight setFlightTimeMinutes:40];
    [garysFlight setTimePerFlight:5];
    
    if (garysFlight !=nil)
    {
        NSArray *garysPlanes = [[NSArray alloc] initWithObjects:@"Extra 300S",@"SpaceWalker, ", @"Habu, ", nil];
        NSMutableString *planes = [[NSMutableString alloc] initWithString:@""];
        for (int i=0; i<[garysPlanes count]; i++)
        {
            [planes insertString:([garysPlanes objectAtIndex:i]) atIndex:0];
        }
        [garysFlight setPlaneList:garysPlanes];
        
        NSString *garysSkill = @"advanced level";
        [garysFlight setPilotSkill:garysSkill];
        
        //NSLog(@"Gary can fly one of these planes today %@", [garysFlight planeList]);
        //NSLog(@"%@", garysFlight.pilotSkill);
        
        [garysFlight calcFlightTime];
        
        secondLabel.text = [NSString stringWithFormat:@"Gary is an %@ pilot and can fly one of these planes: %@.", [garysFlight pilotSkill], (planes)];
        auxSecondLabel.text = [NSString stringWithFormat:@"Gary can fly %i times for %i minutes each totaling %i minutes.", [garysFlight flights], [garysFlight timePerFlight], [garysFlight flightTimeMinutes]];
    }
    
    //creating third flight
    thirdFlight *austinsFlight = (thirdFlight*)[FlightFactory setupNewFlight:AUSTIN];
    [austinsFlight setFlightTimeMinutes:10];
    [austinsFlight setFlights:5];
    
    if (austinsFlight !=nil)
    {
        NSArray *austinsPlanes = [[NSArray alloc] initWithObjects:@"CarbonZ Yak",@"Mini Stryker, ", @"Scimitar, ", nil];
        NSMutableString *planes = [[NSMutableString alloc] initWithString:@""];
        for (int i=0; i<[austinsPlanes count]; i++)
        {
            [planes insertString:([austinsPlanes objectAtIndex:i]) atIndex:0];
        }
        [austinsFlight setPlaneList:austinsPlanes];
        
        NSString *austinsSkill = @"expert level";
        [austinsFlight setPilotSkill:austinsSkill];
        
        //NSLog(@"Austin can fly one of these planes today %@", [austinsFlight planeList]);
        //NSLog(@"%@", austinsFlight.pilotSkill);
        
        [austinsFlight calcFlightTime];
        
        thirdLabel.text = [NSString stringWithFormat:@"Austin is an %@ pilot and can fly one of these planes: %@.", [austinsFlight pilotSkill], (planes)];
        auxThirdLabel.text = [NSString stringWithFormat:@"Austin can fly %i times for %i minutes each totaling %i minutes.", [austinsFlight flights], [austinsFlight timePerFlight], [austinsFlight flightTimeMinutes]];
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
