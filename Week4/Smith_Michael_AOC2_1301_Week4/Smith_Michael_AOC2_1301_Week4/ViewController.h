//
//  ViewController.h
//  Smith_Michael_AOC2_1301_Week4
//
//  Created by Michael Smith on 1/29/13.
//  Copyright (c) 2013 Michael Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventViewController.h"

@protocol SaveEventDelegate <NSObject>

@required
-(void)DidSave:(NSString*)eventTitle;
@end

@interface ViewController : UIViewController <SaveEventDelegate>

{
    
    IBOutlet UITextView *eventList;
    IBOutlet UILabel *rightToAdd;
    IBOutlet UIButton *saveDefault;
    
    UISwipeGestureRecognizer *rightSwipe;
}


-(IBAction)onSaveDefault:(id)sender;
@end
