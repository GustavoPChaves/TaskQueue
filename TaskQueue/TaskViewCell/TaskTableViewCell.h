//
//  ActivityTableViewCell.h
//  TaskQueue
//
//  Created by Ada 2018 on 21/03/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TaskTableViewCell : UITableViewCell

#pragma mark -  Properties

@property (weak, nonatomic) IBOutlet UILabel *lblPriority;
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblDate;

@end
