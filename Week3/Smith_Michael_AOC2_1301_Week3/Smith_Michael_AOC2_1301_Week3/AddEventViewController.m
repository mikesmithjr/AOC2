//
//  AddEventViewController.m
//  Smith_Michael_AOC2_1301_Week3
//
//  Created by Michael Smith on 1/23/13.
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
    // Do any additional setup after loading the view from its nib.
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


-(IBAction)onSave:(id)sender
{
    if (delegate != nil)
    {
        NSString *text = eventText.text;
        NSDate *date = eventDate.date;
        NSDateFormatter *format = [[NSDateFormatter alloc] init];
        [format setDateFormat:@"MMMM d, YYY 'at' hh:mm a"];
        NSString *formatDate = [format stringFromDate:date];
        NSString *event = [NSString stringWithFormat:@"Event: %@ \n On: %@ \n\n", text, formatDate];
        [delegate DidSave:event];
    }
    [self dismissViewControllerAnimated:true completion:nil];
}

-(IBAction)onKeyClose:(id)sender
{
    [eventText resignFirstResponder];
}

@end
