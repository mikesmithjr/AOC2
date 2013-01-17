//
//  ViewController.m
//  Smith_Michael_1301_AOC2_Week2
//
//  Created by Michael Smith on 1/16/13.
//  Copyright (c) 2013 Michael Smith. All rights reserved.
//

#import "ViewController.h"
#import "InfoViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)viewDidAppear:(BOOL)animated
{
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button !=nil)
    {
        if (button.tag == 0)
        {
            //Disabling the other two class buttons
            firstButton.enabled = false;
            secondButton.enabled = true;
            thirdButton.enabled = true;
            
            //creating first flight
            firstFlight *jacksFlight = (firstFlight*)[FlightFactory setupNewFlight:JACK];
            [jacksFlight setFlights:5];
            
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
                textBox.text = [NSString stringWithFormat:@"Jack can fly %i times for %i minutes each totaling %i minutes.", [jacksFlight flights], [jacksFlight timePerFlight], [jacksFlight flightTimeMinutes]];
            }
            
        }
        else if (button.tag == 1)
        {
            //Disabling the other two class buttons
            firstButton.enabled = true;
            secondButton.enabled = false;
            thirdButton.enabled = true;
            
            //creating second flight
            secondFlight *garysFlight = (secondFlight*)[FlightFactory setupNewFlight:GARY];
            [garysFlight setFlightTimeMinutes:40];
            
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
                
                firstLabel.text = [NSString stringWithFormat:@"Gary is an %@ pilot and can fly one of these planes: %@.", [garysFlight pilotSkill], (planes)];
                textBox.text = [NSString stringWithFormat:@"Gary can fly %i times for %i minutes each totaling %i minutes.", [garysFlight flights], [garysFlight timePerFlight], [garysFlight flightTimeMinutes]];
            }
        }
        else if (button.tag == 2)
        {
            //Disabling the other two class buttons
            firstButton.enabled = true;
            secondButton.enabled = true;
            thirdButton.enabled = false;
            
            //creating third flight
            thirdFlight *austinsFlight = (thirdFlight*)[FlightFactory setupNewFlight:AUSTIN];
            [austinsFlight setFlightTimeMinutes:10];
            
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
                
                firstLabel.text = [NSString stringWithFormat:@"Austin is an %@ pilot and can fly one of these planes: %@.", [austinsFlight pilotSkill], (planes)];
                textBox.text = [NSString stringWithFormat:@"Austin can fly %i times for %i minutes each totaling %i minutes.", [austinsFlight flights], [austinsFlight timePerFlight], [austinsFlight flightTimeMinutes]];
            }
        }
        else if (button.tag == 3)
        {
            InfoViewController *infoView = [[InfoViewController alloc] initWithNibName:@"InfoView" bundle:nil];
            if(infoView !=nil)
            {
                [self presentViewController:infoView animated:TRUE completion:nil];
            }
        }
        else if (button.tag == 4)
        {
            
        }
    }
}

-(IBAction)colorSelect:(id)sender
{
    UISegmentedControl *colorChanger = (UISegmentedControl*)sender;
    if (colorChanger != nil)
    {
        int selectedColor = colorChanger.selectedSegmentIndex;
        if (selectedColor == 0)
        {
            self.view.backgroundColor = [UIColor whiteColor];
        }
        else if (selectedColor == 1)
        {
            self.view.backgroundColor = [UIColor grayColor];
        }
        else if (selectedColor == 2)
        {
            self.view.backgroundColor = [UIColor blueColor];
        }
    }
}
@end
