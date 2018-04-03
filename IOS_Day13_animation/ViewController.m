//
//  ViewController.m
//  IOS_Day13_animation
//
//  Created by Student-001 on 22/03/18.
//  Copyright © 2018 sweta. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)animateBall:(UIButton *)sender {
    switch (sender.tag) {
        case 101:
            [self animateNorthWest];
            break;
        case 102:
            [self animateUp];
            break;
        case 103:
            [self animateNorthEast];
            break;
        case 104:
            [self animateLeft];
            break;
        case 105:
            [self animateCenter];
            break;
        case 106:
            [self animateRight];
            break;
        case 107:
            [self animateSouthWest];
            break;
        case 108:
            [self animateDown];
            break;
        case 109:
            [self animateSouthEast];
            break;
        default:
            break;
    }
}
-(void)animateUp{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        float x=self.ballImage.frame.origin.x;
        float y=self.ballImage.frame.origin.y;
        NSLog(@"values of x,y are %f & %f",x,y);
        if(y-10>0){
        self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x, self.ballImage.frame.origin.y-100, self.ballImage.frame.size.width, self.ballImage.frame.size.height);
        }
    } completion:^(BOOL finished) {
        NSLog(@"Up animation Completed");
    }];
}

-(void)animateDown{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        float x=self.ballImage.frame.origin.x;
        float y=self.ballImage.frame.origin.y;
    
        NSLog(@"values of x,y are %f & %f",x,y);
       
        if(y<568){
        self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x, self.ballImage.frame.origin.y+100, self.ballImage.frame.size.width, self.ballImage.frame.size.height);
        }
    } completion:^(BOOL finished) {
        NSLog(@"Down animation Completed");
    }];
}

-(void)animateLeft{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        float x=self.ballImage.frame.origin.x;
        float y=self.ballImage.frame.origin.y;
        NSLog(@"values of x,y are %f & %f",x,y);
        if(x-10>0){
        self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x-100, self.ballImage.frame.origin.y, self.ballImage.frame.size.width, self.ballImage.frame.size.height);
        }
    } completion:^(BOOL finished) {
        NSLog(@"Left animation Completed");
    }];
}
-(void)animateRight{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        float x=self.ballImage.frame.origin.x;
        float y=self.ballImage.frame.origin.y;
        NSLog(@"values of x,y are %f & %f",x,y);
        if(x+10<300){
        self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x+100, self.ballImage.frame.origin.y, self.ballImage.frame.size.width, self.ballImage.frame.size.height);
        }
    } completion:^(BOOL finished) {
        NSLog(@"Right animation Completed");
    }];
}

-(void)animateNorthWest{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        float x=self.ballImage.frame.origin.x;
        float y=self.ballImage.frame.origin.y;
        NSLog(@"values of x,y are %f & %f",x,y);
        if(x+10>0 && y-10>0){
        self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x-100, self.ballImage.frame.origin.y-100, self.ballImage.frame.size.width, self.ballImage.frame.size.height);
        }
    } completion:^(BOOL finished) {
        NSLog(@"North West animation Completed");
    }];
}

-(void)animateNorthEast{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        float x=self.ballImage.frame.origin.x;
        float y=self.ballImage.frame.origin.y;
        NSLog(@"values of x,y are %f & %f",x,y);
        if(x+10<300 && y-10>0)
        self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x+100, self.ballImage.frame.origin.y-100, self.ballImage.frame.size.width, self.ballImage.frame.size.height);
        
    } completion:^(BOOL finished) {
        NSLog(@"North East animation Completed");
    }];
}

-(void)animateSouthWest{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        float x=self.ballImage.frame.origin.x;
        float y=self.ballImage.frame.origin.y;
        NSLog(@"values of x,y are %f & %f",x,y);
        if(x>0 && y<568){
        self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x-100, self.ballImage.frame.origin.y+100, self.ballImage.frame.size.width, self.ballImage.frame.size.height);
        }
    } completion:^(BOOL finished) {
        NSLog(@"South West animation Completed");
    }];
}

-(void)animateSouthEast{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        float x=self.ballImage.frame.origin.x;
        float y=self.ballImage.frame.origin.y;
        NSLog(@"values of x,y are %f & %f",x,y);
        if(x<300 && y<568)
        self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x+100, self.ballImage.frame.origin.y+100, self.ballImage.frame.size.width, self.ballImage.frame.size.height);
        
    } completion:^(BOOL finished) {
        NSLog(@"South East animation Completed");
    }];
}

-(void)animateCenter{
    
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.ballImage.center=self.view.center;
        
    } completion:^(BOOL finished) {
        NSLog(@"Center animation Completed");
    }];
}

@end
