//
//  ShowTaskViewController.h
//  TaskQueue
//
//  Created by Ada 2018 on 27/03/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewTaskDelegate.h"
@class Task;


@interface ShowTaskViewController : UIViewController<NewTaskDelegate>
@property Task *taskToShow;

@end
