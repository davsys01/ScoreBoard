//
//  StepOneVewController.m
//  ScoreBoard
//
//  Created by Nuo Xu on 11-11-13.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "StepOneVewController.h"

@implementation StepOneVewController

@synthesize userInputNumberLabel = _userInputNumberLabel, numberPicker = _numberPicker;

-(void)dealloc{
    self.userInputNumberLabel = nil;
    self.numberPicker = nil;
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
    //create top label "please input the # of players"
    self.userInputNumberLabel = [[UILabel alloc] initWithFrame: CGRectMake(50, 50, 400, 20)];
    self.userInputNumberLabel.text = @"Please input the # of players";
    [self.view addSubview:self.userInputNumberLabel];
    
    //create a picker view for user picking number
    self.numberPicker = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 80, 100, 40)];
    self.numberPicker.transform = CGAffineTransformMakeScale(0.75f, 0.75f);
    self.numberPicker.delegate = self;
    self.numberPicker.showsSelectionIndicator = YES;
    [self.view addSubview:self.numberPicker];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
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
    title = [@"" stringByAppendingFormat:@"%d",row+1];
    
    return title;
}

// tell the picker the width of each row for a given component
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component {
    int sectionWidth = 300;
    
    return sectionWidth;
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}



@end
