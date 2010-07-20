//
//  SimpleTimerViewController.m
//  SimpleTimer
//
//  Created by Kirby Turner on 7/19/10.
//  Copyright White Peak Software Inc 2010. All rights reserved.
//

#import "SimpleTimerViewController.h"
#import "KTStopwatch.h"

@implementation SimpleTimerViewController

@synthesize timerLabel;

- (void)dealloc {
   [timerLabel release], timerLabel = nil;
   [stopwatch release], stopwatch = nil;
   
   [super dealloc];
}

- (void)viewDidLoad {
   [super viewDidLoad];
   
   [timerLabel setFont:[UIFont fontWithName:@"DBLCDTempBlack" size:52.0]];
   stopwatch = [[KTStopwatch alloc] init];
   
   // Use a timer to update the display once a second.
   [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
//    return (interfaceOrientation == UIInterfaceOrientationPortrait);
   return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
   
   [self setTimerLabel:nil];
}

- (void)onTimer
{
   if ([stopwatch isRunning]) {
      [timerLabel setText:[stopwatch elapsedTime]];
   }
}

- (IBAction)startTimer
{
   if ([stopwatch isRunning] == NO) {
      [stopwatch start];
   }
}

- (IBAction)stopTimer
{
   [stopwatch stop];
}

- (IBAction)resetTimer
{
   [stopwatch reset];
   [timerLabel setText:[stopwatch elapsedTime]];
}


@end
