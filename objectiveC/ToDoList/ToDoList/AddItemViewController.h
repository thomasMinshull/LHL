//
//  AddItemViewController.h
//  ToDoList
//
//  Created by thomas minshull on 2016-06-21.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddItemViewControllerDelegate <NSObject>

- (void)didSaveNewToDo:(NSString *)toDoText;

@end

@interface AddItemViewController : UIViewController

@property (strong, nonatomic) id <AddItemViewControllerDelegate> delegate;

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *canceButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end
