//
//  ViewController.m
//  TaskQueue
//
//  Created by Ada 2018 on 26/03/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import "ViewController.h"
#import "TaskTableViewCell.h"
#import "NewTaskViewController.h"
#import "Task.h"
#import "ShowTaskViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	_taskCells = [[NSMutableArray alloc] init];
	_templateTaskCells = [[NSMutableArray alloc] init];
	[_tableView setDataSource: self];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)newTask:(id)sender {
	[self performSegueWithIdentifier:@"taskSegue" sender:nil];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
	if([segue.identifier isEqualToString: @"taskSegue"]){
		NewTaskViewController* newTaskVC = (NewTaskViewController*)[segue destinationViewController];
		
		[newTaskVC setDelegate: self];
	}
	if([segue.identifier isEqualToString: @"showTaskSegue"]){
		ShowTaskViewController *showVC = (ShowTaskViewController*) [segue destinationViewController];
		
		showVC.taskToShow = (Task*)sender;
	}

}





- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
	return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
		 cellForRowAtIndexPath:(NSIndexPath *)indexPath{
	
	TaskTableViewCell *tempCell = (TaskTableViewCell*) [tableView dequeueReusableCellWithIdentifier:@"templateCell"];
	
	Task* task = _taskCells[indexPath.row];
	
	//[tempCell.lblName setText:task.name];
	[tempCell.lblName setText:task.name];
	[tempCell.lblDate setText: task.deadLine];
	[tempCell.lblPriority setText: task.priority];
	
	
	return tempCell;
}
#pragma mark - OnCellClick
-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
	
	[self performSegueWithIdentifier:@"showTaskSegue" sender:_taskCells[indexPath.row]];
	return nil;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return _taskCells.count;
}




#pragma mark - Delegate Function

-(void) sendData: (Task*) task{
		NSLog(@"Name: %@, Category: %@, Description: %@, Deadline: %@, Priority: %@.", task.name, task.category, task.eventDescription, task.deadLine, task.priority);
	
	
	
	[_taskCells addObject:task];
	[_tableView reloadData];
}


@end
