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
    UIPickerView *_numberPicker;
}

@property (nonatomic, retain) UILabel *userInputNumberLabel;
@property (nonatomic, retain) UIPickerView *numberPicker;

@end
