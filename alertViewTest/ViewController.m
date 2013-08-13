//
//  ViewController.m
//  alertViewTest
//
//  Created by A12128 on 2013/07/03.
//  Copyright (c) 2013年 A12128. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

- (IBAction)tapBtn:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Alert Test" message:@"OK Cancel Test" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];

    [alert show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex == 1){
        self.myLabel.text = @"OK";
    }else{
        self.myLabel.text = @"NG";
    }

}


@end
