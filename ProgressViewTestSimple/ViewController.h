//
//  ViewController.h
//  ProgressViewTestSimple
//
//  Created by Patrick on 14-6-8.
//  Copyright (c) 2014年 Patrick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSTimer *myTimer;
}
- (IBAction)downloadProgress:(id)sender;
@property (weak, nonatomic) IBOutlet UIProgressView *myProgressView;
@property (nonatomic,strong) NSTimer *myTimer;
@end
