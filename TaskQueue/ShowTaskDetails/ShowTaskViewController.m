//
//  ShowTaskViewController.m
//  TaskQueue
//
//  Created by Ada 2018 on 27/03/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import "ShowTaskViewController.h"

@interface ShowTaskViewController ()
@property (weak, nonatomic) IBOutlet UILabel *taskName;
@property (weak, nonatomic) IBOutlet UILabel *taskCategory;
@property (weak, nonatomic) IBOutlet UILabel *taskDate;
@property (weak, nonatomic) IBOutlet UILabel *taskDescription;
@property (weak, nonatomic) IBOutlet UILabel *taskPriority;

@end

@implementation ShowTaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	[_taskName setText:_taskToShow.name];
	[_taskCategory setText: _taskToShow.category];
	[_taskDate setText: _taskToShow.deadLine];
	[_taskDescription setText: _taskToShow.eventDescription];
	[_taskPriority setText: _taskToShow.priority];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) sendData: (Task*) task{
	//NSLog(@"Name: %@, Category: %@, Description: %@, Deadline: %@, Priority: %@.", task.name, task.category, task.eventDescription, task.deadLine, task.priority);
	[_taskName setText:task.name];
	[_taskCategory setText: task.category];
	[_taskDate setText: task.deadLine];
	[_taskDescription setText: task.eventDescription];
	[_taskPriority setText: task.priority];
	
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
