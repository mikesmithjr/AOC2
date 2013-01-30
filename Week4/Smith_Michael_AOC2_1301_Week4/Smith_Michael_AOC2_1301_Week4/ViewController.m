//
//  ViewController.m
//  Smith_Michael_AOC2_1301_Week4
//
//  Created by Michael Smith on 1/29/13.
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

//Right swipe add event
-(void)onRightSwipe
{
        //Launch Add Event View
        AddEventViewController *addNewEvent = [[AddEventViewController alloc] initWithNibName:@"AddEventViewController" bundle:nil];
        if(addNewEvent !=nil)
        {
            addNewEvent.delegate = self;
            [self presentViewController:addNewEvent animated:TRUE completion:nil];
        }
}
//Save the ListView to user defaults
-(IBAction)onSaveDefault:(id)sender
{
    int temp = 3;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    //add swipe recognizer for right swipe on first view
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onRightSwipe)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [rightToAdd addGestureRecognizer:rightSwipe];
    [super viewWillAppear: true];
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
