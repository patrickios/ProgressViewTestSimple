//
//  ViewController.m
//  ProgressViewTestSimple
//
//  Created by Patrick on 14-6-8.
//  Copyright (c) 2014年 Patrick. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myTimer;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)downloadProgress:(id)sender {
    myTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(download) userInfo:nil repeats:YES];
}

-(void)download{
    self.myProgressView.progress = self.myProgressView.progress+0.1;
    if (self.myProgressView.progress == 1.0) {
        [myTimer invalidate];
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"download completed!"
                                                       message:@""
                                                      delegate:nil
                                             cancelButtonTitle:@"OK"
                                             otherButtonTitles: nil];
        [alert show];
    }
    
}
@end
