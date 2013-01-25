//
//  ViewController.m
//  Smith_Michael_AOC2_1301_Week3
//
//  Created by Michael Smith on 1/21/13.
//  Copyright (c) 2013 Michael Smith. All rights reserved.
//

#import "ViewController.h"
#import "AddEventViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//Add Event button click event
-(IBAction)onAdd:(id)sender
{
    //Launch Add Event View
    AddEventViewController *addNewEvent = [[AddEventViewController alloc] initWithNibName:@"AddEventViewController" bundle:nil];
    if(addNewEvent !=nil)
    {
        addNewEvent.delegate = self;
        [self presentViewController:addNewEvent animated:TRUE completion:nil];
    }
}
//Save event processed from custom delgate
-(void)DidSave:(NSString*)eventTitle
{
    //Checking if default text is in the text view
    if ([eventList.text isEqualToString:@"Event List"])
    {
        //Default text detected replace with new event
        eventList.text = eventTitle;
    }
    else
    {
        //default text not detected so append new event to existing ones
        eventList.text = [eventList.text stringByAppendingString:eventTitle];
    }
    
}

@end
