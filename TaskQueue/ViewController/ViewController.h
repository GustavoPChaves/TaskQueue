//
//  ViewController.h
//  TaskQueue
//
//  Created by Ada 2018 on 26/03/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TaskTableViewCell.h"
#import "NewTaskViewController.h"
#import "NewTaskDelegate.h"
@class Task;




@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, NewTaskDelegate>


@property NSMutableArray *taskCells;

@property NSMutableArray *templateTaskCells;

@property Task *task;


@end


