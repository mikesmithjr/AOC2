//
//  AddEventViewController.m
//  Smith_Michael_AOC2_1301_Week4
//
//  Created by Michael Smith on 1/29/13.
//  Copyright (c) 2013 Michael Smith. All rights reserved.
//

#import "AddEventViewController.h"

@interface AddEventViewController ()

@end

@implementation AddEventViewController

@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //Sets minimum date to today
    [eventDate setMinimumDate:[NSDate date]];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)eventText
{
    return true;
}
-(void)viewWillAppear:(BOOL)animated
{
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//When clicking the save event button this is triggered
-(IBAction)onSave:(id)sender
{
    if (delegate != nil)
    {
        //Set Variables for event text and date
        NSString *text = eventText.text;
        NSDate *date = eventDate.date;
        //Format date
        NSDateFormatter *format = [[NSDateFormatter alloc] init];
        [format setDateFormat:@"MMMM d, YYY 'at' hh:mm a"];
        //create string to save to Event List text view
        NSString *formatDate = [format stringFromDate:date];
        NSString *event = [NSString stringWithFormat:@"Event: %@ \n On: %@ \n\n", text, formatDate];
        [delegate DidSave:event];
    }
    //Dismiss AddEventView
    [self dismissViewControllerAnimated:true completion:nil];
}
//Close Keyboard
-(IBAction)onKeyClose:(id)sender
{
    [eventText resignFirstResponder];
}

@end
