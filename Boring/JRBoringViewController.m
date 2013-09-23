//
//  JRBoringViewController.m
//  Boring
//
//  Created by Agnt86 on 9/23/13.
//  Copyright (c) 2013 Agnt86. All rights reserved.
//

#import "JRBoringViewController.h"

@interface JRBoringViewController ()

-(IBAction)red:(id)sender;
-(IBAction)green:(id)sender;
- (IBAction)blue:(id)sender;
- (IBAction)yellow:(id)sender;

- (IBAction)onPressedReturn:(id)sender;


@end

@implementation JRBoringViewController
@synthesize delegate;
@synthesize textFieldForColor;




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
   // boringViewController = [[JRBoringViewController alloc] initWithNibName:nil bundle:nil];
    
 //   [self.view addSubview:boringViewController];
    


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)red:(id)sender{
 
    
    [delegate changeColor:[UIColor redColor]];
    [delegate changeText:@"red"];
}

-(IBAction)green:(id)sender{
    
    
    [delegate changeColor:[UIColor greenColor]];
    [delegate changeText:@"green"];

}

- (IBAction)blue:(id)sender {
    
    [delegate changeColor:[UIColor blueColor]];
    [delegate changeText:@"blue"];


    
}

- (IBAction)yellow:(id)sender {
    
    [delegate changeColor:[UIColor yellowColor]];
    [delegate changeText:@"yellow"];

}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textFieldForColor endEditing:YES];
    
    return YES;
    
    
}


- (IBAction)onPressedReturn:(id)sender {
    
    NSString* red =[[NSString alloc]init];
    
    red = @"red";
    
    NSString* green =[[NSString alloc]init];
    
    green = @"green";
    
    NSString* blue =[[NSString alloc]init];
    
    blue = @"blue";
    
    NSString* yellow =[[NSString alloc]init];
    
    yellow = @"yellow";
    
    if ([textFieldForColor.text isEqualToString:red]){
        
        [delegate changeColor:[UIColor redColor]];
        [delegate changeText:@"red"];
        
    } else if ([textFieldForColor.text isEqualToString:blue]){
        
        [delegate changeColor:[UIColor blueColor]];
        [delegate changeText:@"blue"];

    } else if ([textFieldForColor.text isEqualToString:green]){
        
        [delegate changeColor:[UIColor greenColor]];
        [delegate changeText:@"green"];

    }else if ([textFieldForColor.text isEqualToString:yellow]){
        
        [delegate changeColor:[UIColor yellowColor]];
        [delegate changeText:@"yellow"];

    }
}


@end
