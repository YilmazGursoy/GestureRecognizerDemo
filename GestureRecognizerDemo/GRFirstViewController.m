//
//  GRFirstViewController.m
//  GestureRecognizerDemo
//
//  Created by MostWanted on 11/09/14.
//  Copyright (c) 2014 yilmaz gursoy. All rights reserved.
//

#import "GRFirstViewController.h"

@interface GRFirstViewController ()
@property (nonatomic) int Counter;
@end

@implementation GRFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.greenView.backgroundColor=[UIColor greenColor];
    self.yellowView.backgroundColor=[UIColor yellowColor];
    self.purpleView.backgroundColor=[UIColor purpleColor];
    self.brownView.backgroundColor=[UIColor brownColor];
    self.blueView.backgroundColor=[UIColor blueColor];
    self.Counter=0;
    self.label.frame=self.greenView.frame;
    UISwipeGestureRecognizer *greenViewSwipeRight=[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(rightSwipe:)];
        greenViewSwipeRight.direction=UISwipeGestureRecognizerDirectionRight;
    UISwipeGestureRecognizer *greeViewSwipeLeft=[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(leftSwipe:)];
        greeViewSwipeLeft.direction=UISwipeGestureRecognizerDirectionLeft;
    UISwipeGestureRecognizer *greenViewSwipeDown=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(downSwipe:)];
    greenViewSwipeDown.direction=UISwipeGestureRecognizerDirectionDown;

    UISwipeGestureRecognizer *greenViewSwipeUp=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(upSwipe:)];
    greenViewSwipeUp.direction=UISwipeGestureRecognizerDirectionUp;
    [self.greenView addGestureRecognizer:greeViewSwipeLeft];
    [self.greenView addGestureRecognizer:greenViewSwipeRight];
    [self.greenView addGestureRecognizer:greenViewSwipeUp];
    [self.greenView addGestureRecognizer:greenViewSwipeDown];
    
    UISwipeGestureRecognizer *yellowViewSwipeLeft=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(leftSwipe:)];
    yellowViewSwipeLeft.direction=UISwipeGestureRecognizerDirectionLeft;
    [self.yellowView addGestureRecognizer:yellowViewSwipeLeft];
    
    UISwipeGestureRecognizer *brownViewSwipeUp=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(upSwipe:)];
    brownViewSwipeUp.direction=UISwipeGestureRecognizerDirectionUp;
    [self.brownView addGestureRecognizer:brownViewSwipeUp];
    
    
    UISwipeGestureRecognizer *blueViewSwipeDown=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(downSwipe:)];
    blueViewSwipeDown.direction=UISwipeGestureRecognizerDirectionDown;
    [self.blueView addGestureRecognizer:blueViewSwipeDown];
    
    UISwipeGestureRecognizer *purpleViewSwipeRight=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(rightSwipe:)];
    purpleViewSwipeRight.direction=UISwipeGestureRecognizerDirectionRight;
    [self.purpleView addGestureRecognizer:purpleViewSwipeRight];
    
    UITapGestureRecognizer *tapRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapRecognizer:)];
    tapRecognizer.numberOfTapsRequired=1;
    [self.greenView addGestureRecognizer:tapRecognizer];
}

-(void)rightSwipe:(UISwipeGestureRecognizer*)gestureRecognizer{
        self.label.text=@"Left Swipe!";
    [UIView animateWithDuration:0.5 animations:^{
        self.greenView.frame=CGRectOffset(self.greenView.frame,320.0, 0.0);
        self.yellowView.frame=CGRectOffset(self.yellowView.frame,320.0, 0.0);
        self.purpleView.frame=CGRectOffset(self.purpleView.frame,320.0, 0.0);
    }];

}
-(void)leftSwipe:(UISwipeGestureRecognizer*)gestureRecognizer{
        self.label.text=@"Right Swipe!";
    [UIView animateWithDuration:0.5 animations:^{
        self.greenView.frame=CGRectOffset(self.greenView.frame,-320.0, 0.0);
        self.yellowView.frame=CGRectOffset(self.yellowView.frame,-320.0, 0.0);
        self.purpleView.frame=CGRectOffset(self.purpleView.frame,-320.0, 0.0);
    }];
}
-(void)downSwipe:(UISwipeGestureRecognizer*)gestureRecognizer{
        self.label.text=@"Down Swipe";
    [UIView animateWithDuration:0.5 animations:^{
        self.greenView.frame=CGRectOffset(self.greenView.frame,0.0,519.0);
        self.blueView.frame=CGRectOffset(self.blueView.frame,0.0,519.0);
        self.brownView.frame=CGRectOffset(self.brownView.frame,0.0,519.0);
    }];
}
-(void)upSwipe:(UISwipeGestureRecognizer*)gestureRecognizer{
        self.label.text=@"Up Swipe";
    [UIView animateWithDuration:0.5 animations:^{
        self.greenView.frame=CGRectOffset(self.greenView.frame,0.0,-519.0);
        self.blueView.frame=CGRectOffset(self.blueView.frame,0.0,-519.0);
        self.brownView.frame=CGRectOffset(self.brownView.frame,0.0,-519.0);
    }];
}
-(void)tapRecognizer:(UITapGestureRecognizer*)tapRecognizer{
    if(self.Counter==0){
        self.label.text=@"Tap Recognizer";
        self.greenView.frame=CGRectMake(0,self.greenView.center.y, 320, 80);
        self.yellowView.frame=CGRectMake(-320, self.yellowView.center.y, 320, 80);
        self.purpleView.frame=CGRectMake(320, self.purpleView.center.y, 320, 80);
        self.blueView.frame=CGRectMake(0,self.blueView.center.y,320, 80);
        self.brownView.frame=CGRectMake(0, self.brownView.center.y, 320, 80);
        self.Counter=1;
    }
    else if (self.Counter==1){
        self.label.text=@"Tap Recognizer";
        self.greenView.frame=CGRectMake(0,0, 320,519);
        self.yellowView.frame=CGRectMake(-320,0,320,519);
        self.purpleView.frame=CGRectMake(320,0,320,519);
        self.blueView.frame=CGRectMake(0,519,320,519);
        self.brownView.frame=CGRectMake(0,-519, 320,519);
        
        self.Counter=0;
    }
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
