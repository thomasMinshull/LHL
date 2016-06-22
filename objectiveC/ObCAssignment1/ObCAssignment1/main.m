//
//  main.m
//  ObCAssignment1
//
//  Created by thomas minshull on 2016-06-22.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Toyota.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *nisan = [[Car alloc] initWithModel:@"Rogue"];
        [nisan drive];
        
        Toyota *eCar = [[Toyota alloc] init];
        [eCar drive];
    }
    return 0;
}
