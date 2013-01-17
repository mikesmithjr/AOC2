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
    UILabel *firstLabel;
    UILabel *secondLabel;
    UILabel *thirdLabel;
    UILabel *auxFirstLabel;
    UILabel *auxSecondLabel;
    UILabel *auxThirdLabel;
    
    IBOutlet UIButton *firstButton;
    IBOutlet UIButton *secondButton;
    IBOutlet UIButton *thirdButton;
    IBOutlet UIButton *secViewButton;
}

-(IBAction)onClick:(id)sender;

@end
