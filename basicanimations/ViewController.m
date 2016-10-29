//
//  ViewController.m
//  basicanimations
//
//  Created by Sahil Dhawan on 24/10/16.
//  Copyright © 2016 Sahil Dhawan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController
int i=0;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)fadeButtonPressed:(id)sender {
    [UIView animateWithDuration:3 animations:^{
        self.imageView.alpha = 0;
    } completion:^(BOOL finished) {
        self.imageView.alpha = 1;
    }];
}
- (IBAction)slideHPressed:(id)sender {
    [UIView animateWithDuration:3 animations:^{
        
        self.imageView.center = CGPointMake(self.imageView.center.x + self.view.frame.size.width,self.imageView.center.y);
    } completion:^(BOOL finished) {
        self.imageView.center = CGPointMake(self.view.frame.size.width/2,self.imageView.center.y);
    }];
}

- (IBAction)slideVPressed:(id)sender {
    [UIView animateWithDuration:3 animations:^{
        
        self.imageView.center = CGPointMake(self.view.frame.size.width/2,self.view.frame.size.height + self.imageView.frame.size.height);
    } completion:^(BOOL finished) {
        self.imageView.center = CGPointMake(self.view.frame.size.width/2,self.view.frame.size.height/2);
    }];
}
- (IBAction)scaleImplementation:(id)sender {
    [UIView animateWithDuration:3 animations:^{
        self.imageView.transform = CGAffineTransformMakeScale(1.5, 1.5);
    } completion:^(BOOL finished) {
        self.imageView.transform = CGAffineTransformMakeScale(1,1);
    }];
}
- (IBAction)transform:(id)sender {
    [UIView animateWithDuration:3 animations:^{
        //code
        self.imageView.transform = CGAffineTransformMakeRotation(M_PI);
    
    }];
}

@end
