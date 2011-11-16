//
//  StepTwoTableViewController.m
//  ScoreBoard
//
//  Created by Nuo Xu on 11-11-15.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "StepOneTableDataController.h"

@implementation StepOneTableDataController

@synthesize playerList = _playerList;

- (void)dealloc {
    self.playerList = nil;
    [super dealloc];
}

// call the count method of the list porperty and return the resutl
- (unsigned)countOfPlayerList {
    return [self.playerList count];
}

// return the element at a specific index of the list just call the objectfInListAtIndex method of the list and return the result;
- (id)objectInPlayerListAtIndex:(NSUInteger)index {
    return [self.playerList objectAtIndex:index];
}
    
// add the call to the list structure
- (void)removeObjectFromPlayerListAtIndex:(NSUInteger)index {
    [self.playerList removeObjectAtIndex:index];
}

// addObject
- (void)addPlayerListObject:(NSString *)object {
    [self.playerList addObject:object];
}

// override the set list method to make sure the mutable array remians mutable
- (void)setPlayerList:(NSMutableArray *)playerList {
    if(self.playerList != playerList){
        [self.playerList release];
        self.playerList = [playerList mutableCopy];
    }
}

// initilize the objects and free memory respectively
- (id)init
{
    if (self = [super init]) {
        NSMutableArray *localPlayerList = [[NSMutableArray alloc] init];
        self.playerList = localPlayerList;
        [localPlayerList release];
    }
    return self;
}

@end
