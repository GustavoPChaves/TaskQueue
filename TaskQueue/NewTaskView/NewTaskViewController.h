//
//  NewTaskViewController.h
//  TaskQueue
//
//  Created by Ada 2018 on 26/03/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "NewTaskDelegate.h"

@interface NewTaskViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
@property (strong, nonatomic) NSArray *priority;
@property id<NewTaskDelegate> delegate;
@end
