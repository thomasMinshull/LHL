//
//  ArraySorter.m
//  ObjCAssignement2
//
//  Created by thomas minshull on 2016-06-22.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import "ArraySorter.h"

@implementation ArraySorter

- (NSNumber *)findHighestNumberInArray:(NSArray *)array {
    NSNumber *highest;
    
    if (array) {
        for (NSNumber *x in array) {
            if (x >= highest) {
                highest = x;
            }
        }
    }
    return highest;
}

@end
