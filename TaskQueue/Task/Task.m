//
//  Activity.m
//  TaskQueue
//
//  Created by Ada 2018 on 23/03/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import "Task.h"

@implementation Task

-(id)initWithName:(NSString *)name
	andCategory:(NSString *)category
	andEventDesciption:(NSString *)eventDesciption
	andDeadLine:(NSString *)deadLine
	andpriority:(NSString *)priority{
	
	if( self = [super init] ){
		_name = name;
		_category = category;
		_eventDescription = eventDesciption;
		_deadLine = deadLine;
		_priority = priority;
		
	}
	return self;
}


@end
