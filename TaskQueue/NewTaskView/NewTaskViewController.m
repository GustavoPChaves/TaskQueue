//
//  NewTaskViewController.m
//  TaskQueue
//
//  Created by Ada 2018 on 26/03/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import "NewTaskViewController.h"
#import "Task.h"

@interface NewTaskViewController ()
@property (weak, nonatomic) IBOutlet UITextField *taskName;
@property (weak, nonatomic) IBOutlet UITextField *taskCategory;
@property (weak, nonatomic) IBOutlet UITextView *taskDescription;
@property (weak, nonatomic) IBOutlet UIDatePicker *taskDeadline;
@property (weak, nonatomic) IBOutlet UIPickerView *taskPriority;

@property NSString *date;
@property NSString *tempPriority;
@end

@implementation NewTaskViewController

- (void)viewDidLoad {
	
	[super viewDidLoad];
    // Do any additional setup after loading the view.
	_priority = @[@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9"];

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

#pragma mark ButtonEvent
- (IBAction)cancelModal:(id)sender {
	[self dismissViewControllerAnimated:YES completion: nil];
}

- (IBAction)saveModal:(id)sender {
	
	Task *newTask = [[Task alloc] initWithName:_taskName.text andCategory:_taskCategory.text andEventDesciption:_taskDescription.text andDeadLine: _date andpriority:_tempPriority];
	
	[_delegate sendData:newTask];
	
	//NSLog(@"Name: %@, Category: %@, Description: %@, Deadline: %@, Priority: %@.", newTask.name, newTask.category, newTask.eventDescription, newTask.deadLine, newTask.priority);

	[self dismissViewControllerAnimated:YES completion: nil];
}

- (IBAction)datePicker:(id)sender {
	
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	NSDate *dateD = [_taskDeadline date];
	formatter.locale = [NSLocale localeWithLocaleIdentifier:@"pt_BR"];
	formatter.dateFormat = @"HH:mm dd/MM";
	formatter.timeZone = [NSTimeZone timeZoneWithName:@"Brazil/East"];
	
	_date = [formatter stringFromDate:dateD];
}



#pragma mark PickerView taskPriority

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
	_tempPriority = [[NSString alloc] initWithString: [_priority objectAtIndex:row]];
}





@end
