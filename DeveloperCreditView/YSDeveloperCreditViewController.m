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
    dcVC = [[YSDeveloperCreditVC alloc] init];
    dcVC.view.frame = self.developerCreditView.frame;
    dcVC.customLabel.text = @"Hey check us you at http://yamm.ca";
    dcVC.logoImageView.image = [UIImage imageNamed:@"yamm_logo_new_icon.png"];
    [self.developerCreditView addSubview:dcVC.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
