//
//  StepOneTableViewController.m
//  ScoreBoard
//
//  Created by Nuo Xu on 11-11-15.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "StepTwoTableViewController.h"
#import "StepOneTableDataController.h"

@implementation StepTwoTableViewController

@synthesize dataController, rowNumber, myView = _myView;

- (void)dealloc {
    dataController = nil;
    self.myView = nil;
    [super dealloc];
}

// used to initilize view controller (self) and data controller
- (id)initWithStyle:(UITableViewStyle)style
{
    if(self = [super initWithStyle:style]) {
//        self.title = @"Player List";
//        self.navigationItem.leftBarButtonItem = self.editButtonItem;;
//        UIBarButtonItem *addNewButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addNew)];
//        self.navigationItem.rightBarButtonItem = addNewButton;
//        [addNewButton release];
    }
    return self;
}

- (void)addNew 
{
    [[dataController playerArray] addObject:@"New String"];
    [self.tableView reloadData];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
    [super setEditing:editing animated:animated];
    if (editing) {
        self.navigationItem.rightBarButtonItem.enabled = NO;
    } else {
        self.navigationItem.rightBarButtonItem.enabled = YES;
    }
}

// single list
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

// single datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return rowNumber;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cellIdentifier"];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellIdentifier"] autorelease];
        cell.accessoryType = UITableViewCellAccessoryNone;
        if ([indexPath section] == 0) {
            UITextField *playerTextField = [[UITextField alloc] initWithFrame:CGRectMake(110, 10, 185, 30)];
            playerTextField.adjustsFontSizeToFitWidth = YES;
            playerTextField.textColor = [UIColor blackColor];
            if ([indexPath row] == rowNumber - 1) {
                playerTextField.returnKeyType = UIReturnKeyDone;
            } else {
                playerTextField.returnKeyType = UIReturnKeyDefault;
            }
            playerTextField.placeholder = [NSString stringWithFormat:@"Player#%d", [indexPath row] + 1];
            playerTextField.keyboardType = UIKeyboardTypeDefault;
            playerTextField.backgroundColor = [UIColor whiteColor];
            playerTextField.autocorrectionType = UITextAutocorrectionTypeYes;
            playerTextField.textAlignment = UITextAlignmentLeft;
            playerTextField.tag = 0;
            playerTextField.clearButtonMode = UITextFieldViewModeNever;
            [playerTextField setEnabled:YES];
            [cell addSubview:playerTextField];
            [playerTextField addTarget:self action:@selector(textFieldFinished:) forControlEvents:UIControlEventEditingDidEndOnExit];
            [playerTextField release];
        }
        cell.textLabel.text = @"Name";
    }
    return  cell;
}

- (IBAction)textFieldFinished:(id)sender
{
    [sender resignFirstResponder];
}


// commit editting style
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationRight];
        [[dataController playerArray] removeObjectAtIndex:indexPath.row];
        [self.tableView reloadData];
    }
    else if (editingStyle == UITableViewCellEditingStyleInsert){
        [self.tableView reloadData];
    }
}



- (void)viewDidLoad {
	[super viewDidLoad];
}


- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
}

- (void)viewDidDisappear:(BOOL)animated {
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
}

#pragma mark - Table view data source


// style
//- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if (indexPath.row == 0) {
//        return UITableViewCellEditingStyleInsert;
//    }
//    else {
//        return UITableViewCellEditingStyleDelete;
//    }
//}


@end
