//
//  ViewController.h
//  ResignFirstResponder
//
//  Created by Abdalla on 06/09/2013.
//  Copyright (c) 2013 Abdalla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

// Those are the proporities for the text box and label.
@property (weak, nonatomic) IBOutlet UITextField *textDisplay;
@property (weak, nonatomic) IBOutlet UILabel *labelDisplayText;

// An action method for the display button.
- (IBAction)buttonDisplayText:(id)sender;

@end
