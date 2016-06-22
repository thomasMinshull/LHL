//
//  AddItemViewController.m
//  ToDoList
//
//  Created by thomas minshull on 2016-06-21.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import "AddItemViewController.h"

@implementation AddItemViewController

- (IBAction)cancelButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)addButtonTapped:(id)sender {
    [self.delegate didSaveNewToDo:self.textField.text];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
