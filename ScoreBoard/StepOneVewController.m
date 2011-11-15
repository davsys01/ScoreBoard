//
//  StepOneVewController.m
//  ScoreBoard
//
//  Created by Nuo Xu on 11-11-13.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "StepOneVewController.h"
#import "StepTwoViewController.h"

@implementation StepOneVewController

@synthesize userInputNumberLabel = _userInputNumberLabel, numberPicker = _numberPicker, selectedNumberLabel = _selectedNumberLabel, nextButton = _nextButton, homeButton = _homeButton;

-(void)dealloc{
    self.userInputNumberLabel = nil;
    self.selectedNumberLabel = nil;
    self.numberPicker = nil;
    self.nextButton = nil;
    self.homeButton = nil;
    [super dealloc];
}
- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    self.title = @"Number";
    //create top label "please input the # of players"
    self.userInputNumberLabel = [[UILabel alloc] initWithFrame: CGRectMake(50, 50, 400, 20)];
    self.userInputNumberLabel.text = @"Please input the # of players";
    [self.view addSubview:self.userInputNumberLabel];
    
    //create a label to display the number that users selected
    self.selectedNumberLabel = [[UILabel alloc] initWithFrame: CGRectMake(150, 80, 40, 20)];
    self.selectedNumberLabel.text = @"1";
    [self.view addSubview:self.selectedNumberLabel];
    
    //create a picker view for user picking number
    self.numberPicker = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 90, 100, 40)];
    self.numberPicker.transform = CGAffineTransformMakeScale(0.75f, 0.75f);
    self.numberPicker.delegate = self;
    self.numberPicker.showsSelectionIndicator = YES;
    [self.view addSubview:self.numberPicker];
    
    //create a "next" button linking to the next page
    self.nextButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.nextButton.frame = CGRectMake(180, 325, 80, 30);
    [self.nextButton setTitle: @"Next" forState:UIControlStateNormal];
    [self.nextButton addTarget:self action:@selector(goToStepTwo:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.nextButton];

    //create a "home" button linking to the next page
    self.homeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.homeButton.frame = CGRectMake(60, 325, 80, 30);
    [self.homeButton setTitle: @"Home" forState:UIControlStateNormal];
    [self.view addSubview:self.homeButton];
    
    [super viewDidLoad];
}

// pass the selected number to the selectedNumberLabel
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    self.selectedNumberLabel.text = [@"" stringByAppendingFormat:@"%d", row + 1];
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    NSUInteger numRows = 10;
    return numRows;
}


// tell the picker how many components it will have
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}


// tell the picker the title for a given component
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    NSString *title; 
    title = [@"" stringByAppendingFormat:@"%d",row + 1];
    
    return title;
}

// tell the picker the width of each row for a given component
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component {
    int sectionWidth = 300;
    
    return sectionWidth;
}

-(void)goToStepTwo:(id)sender {
    StepTwoViewController *stepTwoView = [[StepTwoViewController alloc] initWithNibName:@"StepTwoViewController" bundle:nil];
    stepTwoView.numberOfPlayer = [self.selectedNumberLabel.text intValue];
    NSLog(@"**************** number of players %d", stepTwoView.numberOfPlayer);
    [[self navigationController] pushViewController:stepTwoView animated:YES];
    [stepTwoView release];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}



@end
