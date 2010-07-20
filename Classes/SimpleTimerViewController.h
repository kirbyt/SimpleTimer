//
//  SimpleTimerViewController.h
//  SimpleTimer
//
//  Created by Kirby Turner on 7/19/10.
//  Copyright White Peak Software Inc 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KTStopwatch;

@interface SimpleTimerViewController : UIViewController {
   KTStopwatch *stopwatch;
}

@property (nonatomic, retain) IBOutlet UILabel *timerLabel;

- (IBAction)startTimer;
- (IBAction)stopTimer;
- (IBAction)resetTimer;

@end

