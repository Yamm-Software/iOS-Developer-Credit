//
//  YSDeveloperCreditVC.m
//  DeveloperCreditView
//
//  Created by Roger on 1/20/14.
//  Copyright (c) 2014 Yamm Software Inc. All rights reserved.
//

#import "YSDeveloperCreditVC.h"

@interface YSDeveloperCreditVC ()

@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapGR;

@end

@implementation YSDeveloperCreditVC

- (void)loadView {
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"YSDeveloperCreditView" owner:self options:0];
    UIView *view;
    if (views.count) {
        view = views[0];
        if (view) {
            self.view = view;
        }
    }
}

- (IBAction)logoTap:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://yamm.ca"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
