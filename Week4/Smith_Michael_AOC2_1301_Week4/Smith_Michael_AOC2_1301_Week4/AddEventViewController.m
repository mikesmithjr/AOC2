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

//Triggered when swipe left to save label is triggered
-(void)onLeftSwipe
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

- (BOOL)textFieldShouldBeginEditing:(UITextField *)eventText
{
    return true;
}
- (void)viewWillAppear:(BOOL)animated
{
    //add swipe recognizer for right swipe on first view
    leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onLeftSwipe)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [leftToClose addGestureRecognizer:leftSwipe];
    [super viewWillAppear: true];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Close Keyboard
-(IBAction)onKeyClose:(id)sender
{
    [eventText resignFirstResponder];
}

@end
