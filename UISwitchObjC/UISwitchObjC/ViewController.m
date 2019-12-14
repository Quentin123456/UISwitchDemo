//
//  ViewController.m
//  UISwitchObjC
//
//  Created by ChuangLan on 2019/12/13.
//  Copyright © 2019 QuentinZang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UISwitch *uiSwitch = [[UISwitch alloc] initWithFrame:CGRectMake(130, 120, 0, 0)];
    uiSwitch.thumbTintColor = UIColor.greenColor;
    uiSwitch.onTintColor = UIColor.orangeColor;
    [uiSwitch setOn:YES animated:YES];
    [uiSwitch addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:uiSwitch];
    
}

- (void)switchChanged:(UISwitch *)sender {
    NSString *message = @"Turn on the switch.";
                     if (!sender.on) {
                         message = @"Turn off the switch.";
                     }
    NSLog(@"%@",message);
}

- (IBAction)switchChangedTap:(UISwitch *)sender {
    NSString *message = @"Turn on the switch.";
                     if (!sender.on) {
                         message = @"Turn off the switch.";
                     }
    NSLog(@"%@",message);
}

@end
