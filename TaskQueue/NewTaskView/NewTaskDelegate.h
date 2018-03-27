//
//  NewTaskDelegate.h
//  TaskQueue
//
//  Created by Ada 2018 on 27/03/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Task.h"
@protocol NewTaskDelegate<NSObject>
-(void) sendData: (Task*) task;
@end

