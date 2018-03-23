//
//  NewTaskViewController.m
//  TaskQueue
//
//  Created by Ada 2018 on 23/03/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import "NewTaskViewController.h"

@interface NewTaskViewController ()
@property (weak, nonatomic) IBOutlet UITextField *TaskName;
@property (weak, nonatomic) IBOutlet UITextField *TaskCategory;
@property (weak, nonatomic) IBOutlet UITextView *TaskDescription;
@property (weak, nonatomic) IBOutlet UIDatePicker *TaskDate;
@property (weak, nonatomic) IBOutlet UIPickerView *TaskPriority;
@end

@implementation NewTaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	_priority = [[NSArray alloc ]initWithObjects:
				 @"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9", nil];
	//[_TaskPriority setShowsSelectionIndicator:YES];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
	return [_priority count];
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
	return [_priority objectAtIndex:row];
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
	//self.TaskPriority.text=[_priority objectAtIndex:row];
}

@end
