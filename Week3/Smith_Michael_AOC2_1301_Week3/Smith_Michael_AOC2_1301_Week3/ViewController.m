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

-(IBAction)onAdd:(id)sender
{
    AddEventViewController *addNewEvent = [[AddEventViewController alloc] initWithNibName:@"AddEventViewController" bundle:nil];
    if(addNewEvent !=nil)
    {
        addNewEvent.delegate = self;
        [self presentViewController:addNewEvent animated:TRUE completion:nil];
    }
}

-(void)DidSave:(NSString*)eventTitle
{
    if ([eventList.text isEqualToString:@"Event List"])
    {
        eventList.text = eventTitle;
    }
    else
    {
        eventList.text = [eventList.text stringByAppendingString:eventTitle];
    }
    
}

@end
