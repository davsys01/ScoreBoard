//
//  StepTwoTableViewController.h
//  ScoreBoard
//
//  Created by Nuo Xu on 11-11-15.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StepOneTableDataController : NSObject {
    NSMutableArray *playerArray;
}

- (unsigned)countOfPlayerList;
- (id)objectInPlayerListAtIndex:(NSUInteger)index;
- (void)removeObjectFromPlayerListAtIndex:(NSUInteger)index;
- (void)addPlayerListObject:(NSString *)object;
-(void)setList:(NSMutableArray *)newList;

@property (nonatomic, retain) NSMutableArray *playerArray;

@end
