//
//  RootViewController.m
//  ScoreBoard
//
//  Created by Nuo Xu on 11-11-13.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "StepOneVewController.h"

@implementation RootViewController

@synthesize newGameButton = _newGameButton;

-(void)loadView{
    //allocate the view
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    
    //set the view's background color
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidLoad
{
    //create "New Game" button
    self.newGameButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    //set the position of the button
    self.newGameButton.frame = CGRectMake(100, 170, 100, 30);
    
    //set the button's title
    [self.newGameButton setTitle:@"New Game" forState:UIControlStateNormal];
    
    //listen for clicks
    [self.newGameButton addTarget:self action:@selector(goToStepOne:)forControlEvents:UIControlEventTouchUpInside];
    
    //add the button to the view
    [self.view addSubview:self.newGameButton];
    [super viewDidLoad];
}

-(void)goToStepOne:(id)sender{
    StepOneVewController *stepOneView = [[StepOneVewController alloc] initWithNibName:@"StepOneVewController" bundle:nil];
    [[self navigationController] pushViewController:stepOneView animated:YES];
    [stepOneView release];
    NSLog(@"Go to step one!");
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload
{
    [super viewDidUnload];

    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}

- (void)dealloc
{
    self.newGameButton = nil;
    [super dealloc];
}

@end
