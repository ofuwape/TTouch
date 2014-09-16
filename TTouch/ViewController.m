//
//  ViewController.m
//  TTouch
//
//  Created by Maputi Botlhole on 9/11/14.
//  Copyright (c) 2014 Oluwatoni Fuwape. All rights reserved.
//
#import <QuartzCore/QuartzCore.h>
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor yellowColor];
    
    //button
    UIButton *firstButton = [UIButton buttonWithType: UIButtonTypeSystem];
    firstButton.frame=CGRectMake(100,100,100,44);
    firstButton.backgroundColor=[UIColor greenColor];
    [firstButton setTitle:@"Make 50%" forState:UIControlStateNormal];
    //[firstButton setTitle:@"Ouch!" forState:UIControlStateHighlighted];
    [firstButton addTarget:self
                    action:@selector(buttonPressed:)
          forControlEvents:UIControlEventTouchUpInside];
    firstButton.layer.cornerRadius = 10;
    firstButton.clipsToBounds = YES;
    [self.view addSubview:firstButton];
    
    //label
    UILabel *firstLabel=[[UILabel alloc] initWithFrame:CGRectMake(50, 30, 200, 44)];
    firstLabel.text=@"Welcome  to Toni's app";
    firstLabel.backgroundColor=[UIColor clearColor];
    [self.view addSubview: firstLabel];
    
    //second button
    UIButton *secondButton = [UIButton buttonWithType: UIButtonTypeSystem];
    secondButton.frame=CGRectMake(100,300,100,44);
    secondButton.backgroundColor=[UIColor greenColor];
    [secondButton setTitle:@"Make 100%" forState:UIControlStateNormal];
    [secondButton addTarget:self
                    action:@selector(buttonPressed:)
          forControlEvents:UIControlEventTouchUpInside];
    secondButton.layer.cornerRadius = 10;
    secondButton.clipsToBounds = YES;
    [self.view addSubview:secondButton];
    
    
    
}
-(void) loadView
{
    CGRect viewRect=[[UIScreen mainScreen] bounds];
    UIView *view=[[UIView alloc] initWithFrame:viewRect];
    view.layer.cornerRadius = 10;
    view.clipsToBounds = YES;
    self.view=view;
}
//reacts when button screen is touched
//- (void) touchesBegan: (NSSet *)touches withEvent: (UIEvent *)event
//{
//    NSLog(@"Started touching the screen");
//}
-(void)buttonPressed:(UIButton *) sender
{
    if([sender.titleLabel.text isEqualToString:@"Make 50%"]){
        self.view.alpha=0.5;
    }
    else{
       self.view.alpha=1.0 ;
    }
    //self.view.backgroundColor=[UIColor blueColor];
//    NSLog(@"Button pressed, sender: %@", sender);
//    self.view.alpha = ((double)arc4random()/0x100000000);
//    [sender removeFromSuperview];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
