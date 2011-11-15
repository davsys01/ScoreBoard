//
//  StepOneVewController.h
//  ScoreBoard
//
//  Created by Nuo Xu on 11-11-13.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StepOneVewController : UIViewController <UIPickerViewDelegate>{
    UILabel *_userInputNumberLabel;
    UILabel *_selectedNumberLabel;
    UIPickerView *_numberPicker;
    UIButton *_nextButton;
    UIButton *_homeButton;
}

@property (nonatomic, retain) UILabel *userInputNumberLabel;
@property (nonatomic, retain) UILabel *selectedNumberLabel;
@property (nonatomic, retain) UIPickerView *numberPicker;
@property (nonatomic, retain) UIButton *nextButton;
@property (nonatomic, retain) UIButton *homeButton;

@end
