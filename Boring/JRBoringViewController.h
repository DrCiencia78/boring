//
//  JRBoringViewController.h
//  Boring
//
//  Created by Agnt86 on 9/23/13.
//  Copyright (c) 2013 Agnt86. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JRColorDelegate.h"

@interface JRBoringViewController : UIViewController

@property(strong, nonatomic) id <JRColorDelegate> delegate;

@property (weak, nonatomic) IBOutlet UITextField *textFieldForColor;

@end
