//
//  ViewController.m
//  ResignFirstResponder
//
//  Created by Abdalla on 06/09/2013.
//  Copyright (c) 2013 Abdalla. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textDisplay;
@synthesize labelDisplayText;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // This is used to set the delegate of textDisplay to be it self.
    // It is used for resining the keyboard using the return key.
    [textDisplay setDelegate:self];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(resign)];
    
    [self.view addGestureRecognizer:tap];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonDisplayText:(id)sender {
    // This is used to resign the keyboard once the software button is clicked ny calling the resign method below.
    [self resign];
    
}


// This is a resign method to hide the keypad. It is used by the UITapGestureRecogniser, textFieldShouldReturn and the button action methods.
-(void) resign{
    [textDisplay resignFirstResponder];
    
    // Used to copy from the textbox to the label.
    labelDisplayText.text = textDisplay.text;
    
}
// This is a Boolean method used to resign the responder once the return key is clicked on the keypad on the iPhone.
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    // Calling resign method to resign the keyboard.
    [self resign];
    
    return YES;
}
@end
