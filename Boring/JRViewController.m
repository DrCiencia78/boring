//
//  JRViewController.m
//  Boring
//
//  Created by Agnt86 on 9/23/13.
//  Copyright (c) 2013 Agnt86. All rights reserved.
//

#import "JRViewController.h"
#import "JRColorDelegate.h"
#import "JRBoringViewController.h"

@interface JRViewController (){
    
    JRBoringViewController * boringViewController;
    
    }

@end

@implementation JRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    boringViewController =[[JRBoringViewController alloc] initWithNibName:nil bundle:nil];
    
    boringViewController.delegate = self;
    [self.view addSubview:boringViewController.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)changeText:(NSString *)text{
    _colorLabel.text =text;
}

#pragma mark ColorDelegate
-(void)changeColor:(UIColor *)color
{
    
    self.view.backgroundColor = color;
}

@end
