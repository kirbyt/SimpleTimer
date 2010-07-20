//
//  SimpleTimerAppDelegate.h
//  SimpleTimer
//
//  Created by Kirby Turner on 7/19/10.
//  Copyright White Peak Software Inc 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimpleTimerViewController;

@interface SimpleTimerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SimpleTimerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SimpleTimerViewController *viewController;

@end

