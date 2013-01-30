//
//  AddEventViewController.h
//  Smith_Michael_AOC2_1301_Week4
//
//  Created by Michael Smith on 1/29/13.
//  Copyright (c) 2013 Michael Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SaveEventDelegate <NSObject>

-(void)DidSave:(NSString*)eventTitle;
@end

@interface AddEventViewController : UIViewController <UITextFieldDelegate>
{
    id<SaveEventDelegate> delegate;
    
    IBOutlet UIButton *saveButton;
    IBOutlet UIButton *closeKeyboard;
    IBOutlet UITextField *eventText;
    IBOutlet UIDatePicker *eventDate;
}
-(IBAction)onSave:(id)sender;
-(IBAction)onKeyClose:(id)sender;


@property (strong) id<SaveEventDelegate> delegate;
@end
