//
//  GRSecondViewController.m
//  GestureRecognizerDemo
//
//  Created by MostWanted on 11/09/14.
//  Copyright (c) 2014 yilmaz gursoy. All rights reserved.
//

#import "GRSecondViewController.h"

@interface GRSecondViewController ()
@property (strong, nonatomic) UIView *ButtonMainView;
@end

@implementation GRSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
#pragma mark-ButtonMainView
    self.ButtonMainView=[[UIView alloc]initWithFrame:CGRectMake(60,-self.view.center.y,200,90)];
    
    self.ButtonMainView.backgroundColor=[UIColor yellowColor];
    self.ButtonMainView.layer.cornerRadius=20;
    [self.view addSubview:self.ButtonMainView];
    
    UIButton *button=[[UIButton alloc]initWithFrame:CGRectMake(0,0,self.view.bounds.size.width,self.view.bounds.size.height)];
    
    [button addTarget:self action:@selector(target:) forControlEvents:UIControlEventTouchUpInside];
    
    [button actionsForTarget:self forControlEvent:UIControlEventTouchUpInside];
    
    button.backgroundColor=[UIColor clearColor];
    
    [self.view addSubview:button];
    
    [self.view bringSubviewToFront:self.ButtonMainView];
    
    
    
    
#pragma mark-ButtonMainViewArguments
    /* ButtonMainView Label Text */
    
    UILabel *ButtonLabel=[[UILabel alloc]init];
    
    [ButtonLabel sizeToFit];
    
    ButtonLabel.text=@"Warning!";
    
    
    float LabelWidth=[ButtonLabel.text boundingRectWithSize:ButtonLabel.frame.size options:
                      NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:ButtonLabel.font} context:nil].size.width;
    
    int x=(self.ButtonMainView.bounds.size.width-LabelWidth)/2;
    
    int y=self.ButtonMainView.bounds.origin.y*1/4.0;
    
    int Width=self.ButtonMainView.bounds.size.width*3/4.0+LabelWidth/3;
    
    int Height=self.ButtonMainView.bounds.size.height*2/4.0;
    
    [ButtonLabel setFrame:CGRectMake(x,y,Width,Height)];
    
    ButtonLabel.lineBreakMode=NSLineBreakByWordWrapping;
    
    [self.ButtonMainView addSubview:ButtonLabel];
    
    /*ButtonMainView UIButton Ok! Button*/
    
    UIButton *okButton=[[UIButton alloc]initWithFrame:CGRectMake(25, 55, 60, 25)];
    
    [okButton addTarget:self action:@selector(OkButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [okButton actionsForTarget:self forControlEvent:UIControlEventTouchUpInside];
    
    okButton.backgroundColor=[UIColor greenColor];
    
    [okButton setTitle:@"Ok!" forState:UIControlStateNormal];
    
    [self.ButtonMainView addSubview:okButton];
    
    
    /*ButtonMainView UIButton Cancel! Button*/
    
    UIButton *cancelButton=[[UIButton alloc]initWithFrame:CGRectMake(115, 55, 60, 25)];
    
    [cancelButton addTarget:self action:@selector(CancelButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [cancelButton actionsForTarget:self forControlEvent:UIControlEventTouchUpInside];
    
    cancelButton.backgroundColor=[UIColor redColor];
    
    [cancelButton setTitle:@"Cancel" forState:UIControlStateNormal];
    
    [self.ButtonMainView addSubview:cancelButton];
    
}


-(void)CancelButtonPressed:(UIButton*)cancelButton{
    
    [self NewFrame];
    
}

-(void)OkButtonPressed:(UIButton*)okButton{
    
    [self NewFrame];
    
}

-(void)target:(UIButton*)button{
    
    
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.5 initialSpringVelocity:1 options:
     
     UIViewAnimationOptionTransitionCrossDissolve animations:^{
         
         self.ButtonMainView.frame=CGRectMake(60,self.view.center.y-50,self.ButtonMainView.bounds.size.width, self.
                                              ButtonMainView.bounds.size.height);
         
         
     } completion:nil];
    
}

-(void)NewFrame{
    
    [UIView animateWithDuration:0.8 delay:0 usingSpringWithDamping:1 initialSpringVelocity:0.5 options:
     UIViewAnimationOptionTransitionCrossDissolve animations:^{
         
         self.ButtonMainView.frame=CGRectMake(60,self.view.center.y+self.view.bounds.size.height,self.ButtonMainView.bounds.
                                              size.width, self.ButtonMainView.bounds.size.height);
         
     } completion:nil];
    
}

- (void)didReceiveMemoryWarning
{
    
}

@end
