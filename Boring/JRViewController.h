//
//  JRViewController.h
//  Boring
//
//  Created by Agnt86 on 9/23/13.
//  Copyright (c) 2013 Agnt86. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JRColorDelegate.h"

@interface JRViewController : UIViewController <JRColorDelegate>

@property (weak, nonatomic) IBOutlet UILabel *colorLabel;
@end
