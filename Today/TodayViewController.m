//
//  TodayViewController.m
//  Today
//
//  Created by Adam Bell on 6/7/14.
//  Copyright (c) 2014 Adam Bell. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>

@interface TodayViewController () <NCWidgetProviding>

@end

@implementation TodayViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self != nil) {
    }

    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.nyanCatImageview.image = [UIImage imageNamed:@"Portrait-Nyan-1.png"];
    self.nyanCatImageview.clipsToBounds = NO;
    
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 1; i < 13; i++) {
        [array addObject:[UIImage imageNamed:[NSString stringWithFormat:@"Portrait-Nyan-%d.png", i]]];
    }
    self.nyanCatImageview.animationImages = array;
    self.nyanCatImageview.animationDuration = 1.0;
    self.nyanCatImageview.animationRepeatCount = 0;
    [self.nyanCatImageview startAnimating];
    
    self.view.clipsToBounds = NO;
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler
{
    completionHandler(NCUpdateResultNewData);
}

@end
