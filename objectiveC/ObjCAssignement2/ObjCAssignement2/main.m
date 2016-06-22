//
//  main.m
//  ObjCAssignement2
//
//  Created by thomas minshull on 2016-06-22.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArraySorter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = @[@3, @7, @6, @8];
        //NSArray *array = @[];
        
        ArraySorter *arraySorter = [[ArraySorter alloc] init];
        NSLog(@"Highest number: %@", [arraySorter findHighestNumberInArray:array]);
    }
    return 0;
}
