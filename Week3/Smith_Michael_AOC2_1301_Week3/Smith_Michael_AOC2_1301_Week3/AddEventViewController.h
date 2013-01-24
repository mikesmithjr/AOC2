//
//  AddEventViewController.h
//  Smith_Michael_AOC2_1301_Week3
//
//  Created by Michael Smith on 1/23/13.
//  Copyright (c) 2013 Michael Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SaveEventDelegate <NSObject>

-(void)DidClose:(NSString*)eventTitle;
@end

@interface AddEventViewController : UIViewController <UITextFieldDelegate>
{
    id<SaveEventDelegate> delegate;
    
    IBOutlet UIButton *saveButton;
    IBOutlet UIButton *closeKeyboard;
    IBOutlet UITextField *eventText;
}
-(IBAction)onSave:(id)sender;
-(IBAction)onKeyClose:(id)sender;
-(IBAction)onDateChange:(id)sender;

@property (strong) id<SaveEventDelegate> delegate;
@end

