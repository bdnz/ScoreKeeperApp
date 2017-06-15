//
//  ViewController.m
//  ScoreKeeper2
//
//  Created by User on 1/25/16.
//  Copyright (c) 2016 denizburak. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController;


- (void)viewDidLoad
{
    [super viewDidLoad];

    
    self.view.backgroundColor = [UIColor grayColor];
    
    UILabel *msg = [[UILabel alloc]initWithFrame:CGRectMake(0, 30, 200, 40)];
    [msg setBackgroundColor:[UIColor purpleColor]];
    [msg setTextColor:[UIColor whiteColor]];
    [msg setText:@"Score Keeper App"];
    [[self view] addSubview:msg];
    
    
    UILabel *FirstTean = [[UILabel alloc]initWithFrame:CGRectMake(10, 100, 200, 40)];
    [FirstTean setBackgroundColor:[UIColor clearColor]];
    [FirstTean setTextColor:[UIColor whiteColor]];
    [FirstTean setText:@"1st Team"];
    [[self view] addSubview:FirstTean];
    
    UILabel *SecondTeam = [[UILabel alloc]initWithFrame:CGRectMake(10, 300, 200, 40)];
    [SecondTeam setBackgroundColor:[UIColor clearColor]];
    [SecondTeam setTextColor:[UIColor whiteColor]];
    [SecondTeam setText:@"2st Team"];
    [[self view] addSubview:SecondTeam];
    
    
   /* UILabel * scoreShow = [[UILabel alloc]initWithFrame:CGRectMake(40, 30, 60, 40)];
    [scoreShow setBackgroundColor:[UIColor clearColor]];
    [scoreShow setTextColor:[UIColor whiteColor]];
    [scoreShow setText:@""];
    [[self view] addSubview:scoreShow];   */
    
    
    counter1 = [[UIStepper alloc] initWithFrame:CGRectMake(100, 110, 200, 40)];
    [counter1 addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
    [counter1 setBackgroundColor:[UIColor clearColor]];
   // [counter1 setTextColor::[UIColor whiteColor]];
    [counter1 setTintColor:[UIColor purpleColor]];
    counter1.maximumValue = 100;
    counter1.minimumValue = 0;
    counter1.stepValue=2.0;
    [self.view addSubview:counter1];
    
    counter2 = [[UIStepper alloc] initWithFrame:CGRectMake(100, 310, 200, 40)];
    [counter2 addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
    [counter2 setBackgroundColor:[UIColor clearColor]];
     // [counter1 setTextColor::[UIColor whiteColor]];
     [counter2 setTintColor:[UIColor purpleColor]];
     counter2.maximumValue = 100;
     counter2.minimumValue = 0;
     counter2.stepValue=2.0;
     [self.view addSubview:counter2];
    
        
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Reset Scores" forState:UIControlStateNormal];
    [button sizeToFit];
    [button setBackgroundColor:[ UIColor clearColor]];
    [button setTintColor:[ UIColor purpleColor]];
    
    // Set a new (x,y) point for the button's center
    button.center = CGPointMake(150, 420);
        
    [self.view addSubview:button];
    }
    


- (IBAction)valueChanged:(UIStepper *)sender {
    double value = [sender value];
    
    [label1 setText:[NSString stringWithFormat:@"%d", (int)value]];
}









	// Do any additional setup after loading the view, typically from a nib.



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
