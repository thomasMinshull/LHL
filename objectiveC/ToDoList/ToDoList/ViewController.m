//
//  ViewController.m
//  ToDoList
//
//  Created by thomas minshull on 2016-06-20.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import "ViewController.h"
#import "ToDoCell.h"
#import "AddItemViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource, AddItemViewControllerDelegate>

@property (nonatomic, strong) NSMutableArray *todos;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.todos = [[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark Table View Delegate Method

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = @"ToDoCell";
    ToDoCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[ToDoCell alloc] init];
    }
    cell.cellLabel.text = self.todos[indexPath.row];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.todos count];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Hello I was touched: %@", indexPath);
}

// Not called for edit actions using UITableViewRowAction - the action's handler will be invoked instead
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.todos removeObjectAtIndex:indexPath.row];
        [self.tableView reloadData];
    }
}

#pragma mark AddItemViewCOntrollerDelegate Methods

- (void)didSaveNewToDo:(NSString *)toDoText {
    NSLog(@"%@",toDoText);
    [self.todos addObject:toDoText];
    [self.tableView reloadData];
}


#pragma mark Navigation 

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    UINavigationController *navVC = [segue destinationViewController];
    AddItemViewController *addVC = navVC.viewControllers[0];
    addVC.delegate = self;
}
@end
