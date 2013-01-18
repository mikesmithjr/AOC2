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
            
            textBox.text = @"Jack is flying.";            
        }
        else if (button.tag == 1)
        {
            //Disabling the other two class buttons
            firstButton.enabled = true;
            secondButton.enabled = false;
            thirdButton.enabled = true;
            
            textBox.text = @"Gary is flying.";
        }
        else if (button.tag == 2)
        {
            //Disabling the other two class buttons
            firstButton.enabled = true;
            secondButton.enabled = true;
            thirdButton.enabled = false;
            
            textBox.text = @"Austin is Flying.";
        }
        else if (button.tag == 3)
        {
            InfoViewController *infoView = [[InfoViewController alloc] initWithNibName:@"InfoView" bundle:nil];
            if(infoView !=nil)
            {
                [self presentViewController:infoView animated:TRUE completion:nil];
            }
        }
        
    }
}
-(IBAction)stepper:(id)sender
{
    UIStepper *stepperControl = (UIStepper*)sender;
    if (stepperControl != nil)
    {
        int stepValue = stepperControl.value;
        
        textBox.text = [NSString stringWithFormat:@"%d flying fields selected.", stepValue];
    }
}
-(IBAction)onCalcClick:(id)sender
{
    int stepNum = stepper.value;
    
        if (firstButton.enabled == false)
        {
            
            //creating first flight
            firstFlight *jacksFlight = (firstFlight*)[FlightFactory setupNewFlight:JACK];
            
            
            if (jacksFlight !=nil)
            {
                [jacksFlight setFlights:5];
                [jacksFlight calcFlightTime];
                int totalFlightTime = jacksFlight.flightTimeMinutes * stepNum;
                textBox.text = [NSString stringWithFormat:@"Jack will go to %d of fields and fly for %d min.",stepNum, totalFlightTime];
                stepper.value = 0;
            }
        }
        else if (secondButton.enabled == false)
        {
            
            //creating second flight
            secondFlight *garysFlight = (secondFlight*)[FlightFactory setupNewFlight:GARY];
            
            if (garysFlight !=nil)
            {
                [garysFlight setFlights:5];
                [garysFlight calcFlightTime];
                int totalFlightTime = garysFlight.flightTimeMinutes * stepNum;
                textBox.text = [NSString stringWithFormat:@"Gary will go to %d of fields and fly for %d min.",stepNum, totalFlightTime];
                stepper.value = 0;
            }
        }
        else if (thirdButton.enabled == false)
        {
            
            //creating third flight
            thirdFlight *austinsFlight = (thirdFlight*)[FlightFactory setupNewFlight:AUSTIN];
            
            if (austinsFlight !=nil)
            {
                [austinsFlight setFlights:5];
                [austinsFlight calcFlightTime];
                int totalFlightTime = austinsFlight.flightTimeMinutes * stepNum;
                textBox.text = [NSString stringWithFormat:@"Austin will go to %d of fields and fly for %d min.",stepNum, totalFlightTime];
                stepper.value = 0;
            }
        }
}


//Segment control to change the background color
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
