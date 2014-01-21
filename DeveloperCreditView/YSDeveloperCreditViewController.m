//
//  YSDeveloperCreditViewController.m
//  DeveloperCreditView
//
//  Created by Roger on 1/20/14.
//  Copyright (c) 2014 Yamm Software Inc. All rights reserved.
//

#import "YSDeveloperCreditViewController.h"
#import "YSDeveloperCreditVC.h"

@interface YSDeveloperCreditViewController () {
    YSDeveloperCreditVC *dcVC;
}

@property (weak, nonatomic) IBOutlet UIView *developerCreditView;

@end

@implementation YSDeveloperCreditViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    dcVC = [[YSDeveloperCreditVC alloc] initWithImageNamed:@"yamm_logo_new_icon" andCustomLabelText:@"Hey check us out!"];
    dcVC.view.frame = self.developerCreditView.frame;
    [self.developerCreditView addSubview:dcVC.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
