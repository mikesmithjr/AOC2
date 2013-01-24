//
//  ViewController.h
//  Smith_Michael_AOC2_1301_Week3
//
//  Created by Michael Smith on 1/21/13.
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
    IBOutlet UIButton *addEvent;
    IBOutlet UITextView *eventList;
}

-(IBAction)onAdd:(id)sender;
@end
