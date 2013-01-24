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
    
}

-(IBAction)onKeyClose:(id)sender
{
    [eventText resignFirstResponder];
}

-(IBAction)onDateChange:(id)sender
{
    UIDatePicker *datePicker = (UIDatePicker*)sender;
    if (datePicker != nil)
    {
        NSDate *eventDate = datePicker.date;
    }
}
@end
