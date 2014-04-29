//
//  AGViewController.m
//  AGPushNote_Example
//
//  Created by Aviel Gross on 4/29/14.
//  Copyright (c) 2014 Aviel Gross. All rights reserved.
//

#import "AGViewController.h"
#import "AGPushNoteView.h"

static NSInteger pushCounter = 0;

@interface AGViewController ()

@end

@implementation AGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)pushNowAction:(UIButton *)sender {
    [AGPushNoteView showWithNotificationMessage:[NSString stringWithFormat:@"%d", pushCounter++]];
    [AGPushNoteView setMessageAction:^(NSString *message) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"PUSH"
                                                        message:message
                                                       delegate:nil
                                              cancelButtonTitle:@"Close"
                                              otherButtonTitles:nil];
        [alert show];
    }];
}

@end
