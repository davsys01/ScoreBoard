//
//  StepTwoTableViewController.h
//  ScoreBoard
//
//  Created by Nuo Xu on 11-11-15.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StepOneTableDataController : NSObject {
    NSMutableArray *_playerList;
}

- (unsigned)countOfPlayerList;
- (id)objectInPlayerListAtIndex:(NSUInteger)index;
- (void)removeObjectFromPlayerListAtIndex:(NSUInteger)index;
- (void)addPlayerListObject:(NSString *)object;
- (void)setPlayerList:(NSMutableArray *)playerList;

@property (nonatomic, retain) NSMutableArray *playerList;

@end
