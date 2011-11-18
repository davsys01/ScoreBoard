//
//  StepTwoTableViewController.m
//  ScoreBoard
//
//  Created by Nuo Xu on 11-11-15.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "StepOneTableDataController.h"

@implementation StepOneTableDataController

@synthesize playerArray;

- (void)dealloc {
    playerArray = nil;
    [super dealloc];
}

// call the count method of the list porperty and return the resutl
//- (unsigned)countOfPlayerList {
//    return [self.list count];
//}
//
//// return the element at a specific index of the list just call the objectfInListAtIndex method of the list and return the result;
//- (id)objectInPlayerListAtIndex:(NSUInteger)index {
//    return [self.list objectAtIndex:index];
//}
    
// add the call to the list structure
//- (void)removeObjectFromPlayerListAtIndex:(NSUInteger)index {
//    [self.list removeObjectAtIndex:index];
//}
//
//// addObject
//- (void)addPlayerListObject:(NSString *)object {
//    [self.list addObject:object];
//}

// override the set list method to make sure the mutable array remians mutable
//- (void)setList:(NSMutableArray *)newList
//{
//    if(self.list != newList){
//        [self.list release];
//        self.list = [newList mutableCopy];
//    }
//}
//- (void)setPlayerList:(NSMutableArray *)newList {
//    if(self.list != newList){
//        [self.list release];
//        self.list = [newList mutableCopy];
//    }
//}

// initilize the objects and free memory respectively
- (id)init
{
    if (self = [super init]) {
        NSMutableArray *localPlayerList = [[NSMutableArray alloc] init];
        playerArray = localPlayerList;
        [localPlayerList release];
    }
    return self;
}

@end
