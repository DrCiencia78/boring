//
//  JRColorDelegate.h
//  Boring
//
//  Created by Agnt86 on 9/23/13.
//  Copyright (c) 2013 Agnt86. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol JRColorDelegate <NSObject>
-(void)changeColor: (UIColor *) color;

-(void)changeText: (NSString *) text;

@end
