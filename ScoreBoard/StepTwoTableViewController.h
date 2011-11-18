//
//  StepOneTableViewController.h
//  ScoreBoard
//
//  Created by Nuo Xu on 11-11-15.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class StepOneTableDataController;

@interface StepTwoTableViewController : UITableViewController 
{
    StepOneTableDataController *dataController;
    NSInteger rowNumber;
}

@property (nonatomic, retain) StepOneTableDataController *dataController;
@property (nonatomic, retain) UIView *myView;
@property (nonatomic) NSInteger rowNumber;
@end
