//
//  ViewController.m
//  buttonIBPlay
//
//  Created by Taylor Mott on 9 Apr 15.
//  Copyright (c) 2015 Mott Applications. All rights reserved.
//

#import "TaylorExampleViewController.h"

@interface TaylorExampleViewController () <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UILabel *label;

@end

@implementation TaylorExampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Button Method
- (IBAction)updateButtonTouchDown:(UIButton *)sender forEvent:(UIEvent *)event
{
        self.label.text = @"Release the Button!";
}

- (IBAction)updateButtonPressed:(UIButton *)sender {
    
    self.label.text = self.textField.text;
}

#pragma mark - UITextField Delegate Methods

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.textField resignFirstResponder];
    
    return YES;
}

@end
