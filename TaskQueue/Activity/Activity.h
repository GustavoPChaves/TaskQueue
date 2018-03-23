//
//  Activity.h
//  TaskQueue
//
//  Created by Ada 2018 on 23/03/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Activity : NSObject

#pragma mark - properties
@property NSString *name;
@property NSString *category;
@property NSString *eventDescription;
@property NSDate *deadLine;
@property NSString *priority;

#pragma mark - constructor
- (id) initWithName: (NSString *)name
		andCategory: (NSString *)category
 		andEventDesciption: (NSString *)eventDesciption
		andDeadLine: (NSDate *)deadLine
		andpriority: (NSString *)priority;

@end
