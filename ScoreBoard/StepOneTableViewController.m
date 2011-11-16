//
//  StepOneTableViewController.m
//  ScoreBoard
//
//  Created by Nuo Xu on 11-11-15.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "StepOneTableViewController.h"
#import "StepOneTableDataController.h"

@implementation StepOneTableViewController

@synthesize dataController = _dataController, myView = _myView;

// used to initilize view controller (self) and data controller
- (id)initWithStyle:(UITableViewStyle)style
{
    if (self = [super initWithStyle:style]) {
        self.dataController = [[StepOneTableDataController alloc] init];
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)loadView {
    // create and configure the view
    // initilize the view
    self.myView = [[UIView alloc] initWithFrame:CGRectMake(0, 10, 320, 400)];
    // allow it to tweak size of elements in view
    self.myView.autoresizesSubviews = YES;
    // set view property of controller to the newly created view
    self.view = self.myView;
    // initilize table view
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 10, 320, 400) style: UITableViewStylePlain];
    // allow users adding or removing elements from list
    tableView.editing = YES;
    // make the current object handle the view
    tableView.delegate = self;
    [self.view addSubview: tableView];
    [tableView release];
}

// single list
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

#pragma mark - Table view data source
// single datasource
// datasource + 1 since we have "add a new player" on the top of the table view
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataController countOfPlayerList] + 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
}

@end
