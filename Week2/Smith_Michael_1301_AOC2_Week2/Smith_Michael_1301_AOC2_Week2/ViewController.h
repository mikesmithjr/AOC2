//
//  ViewController.h
//  Smith_Michael_1301_AOC2_Week2
//
//  Created by Michael Smith on 1/16/13.
//  Copyright (c) 2013 Michael Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FlightFactory.h"

@interface ViewController : UIViewController

{
    //setting up buttons
    IBOutlet UIButton *firstButton;
    IBOutlet UIButton *secondButton;
    IBOutlet UIButton *thirdButton;
    IBOutlet UIButton *secViewButton;
    IBOutlet UIButton *calcButton;
    IBOutlet UIStepper *stepper;
    
    //setting up labels
    IBOutlet UILabel *firstLabel;
    
    
    //setting up text box
    IBOutlet UITextField *textBox;
}

-(IBAction)onClick:(id)sender;
-(IBAction)colorSelect:(id)sender;
-(IBAction)stepper:(id)sender;
@end
