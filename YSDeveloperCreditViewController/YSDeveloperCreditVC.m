//
//  YSDeveloperCreditVC.m
//  DeveloperCreditView
//
//  Created by Roger on 1/20/14.
//  Copyright (c) 2014 Yamm Software Inc. All rights reserved.
//

#import "YSDeveloperCreditVC.h"

@interface YSDeveloperCreditVC ()

@property (nonatomic, strong) NSString *imageName;
@property (nonatomic, strong) NSString *customLabelText;

@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapGR;
@property (weak, nonatomic) IBOutlet UIImageView *logoImageView;
@property (weak, nonatomic) IBOutlet UILabel *customLabel;

@end

@implementation YSDeveloperCreditVC

- (id)initWithImageNamed:(NSString *)imageName andCustomLabelText:(NSString *)customLabelText {
    self = [super init];
    if (self) {
        if (imageName) {
            self.imageName = imageName;
        }
        if (customLabelText) {
            self.customLabelText = customLabelText;
        }
    }
    return self;
}

- (void)loadView {
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"YSDeveloperCreditView" owner:self options:0];
    UIView *view;
    if (views.count) {
        view = views[0];
        if (view) {
            self.view = view;
            self.logoImageView.image = [UIImage imageNamed:self.imageName];
            self.customLabel.text = self.customLabelText;
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
