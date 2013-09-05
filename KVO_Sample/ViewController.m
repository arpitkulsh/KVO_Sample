//
//  ViewController.m
//  KVO_Sample
//
//  Created by Arpit Kulshrestha on 05/08/13.
//  Copyright (c) 2013 InnnovationM. All rights reserved.
//

#import "ViewController.h"
#import "SampleModel.h"
@interface ViewController ()
{
    SampleModel *model;
}

@end

@implementation ViewController
@synthesize textField;

- (void)viewDidLoad
{
    [super viewDidLoad];
    model = [[SampleModel alloc] init];
    model.name = @"Arpit";
    model.lastName = @"kulshreshtha";
   
    
    	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    [model addObserver:self forKeyPath:@"name" options:(NSKeyValueObservingOptionOld |
                                                         NSKeyValueObservingOptionNew) context:nil];
}
-(void)observeValueForKeyPath:(NSString *)keyPath
					 ofObject:(id)object
					   change:(NSDictionary *)change
					  context:(void *)context
{
    NSLog(@"change value %@",change);
    NSLog(@"delegate method called");
    NSLog(@"key path is %@",keyPath);
    NSLog(@"object is %@",[object description]);
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"KVO Sample" message:@"Name has changed" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)method:(id)sender
{
    model.name = textField.text;
    NSLog(@"button clicked");
    NSLog(@"model property value %@",model.name);
}
@end
