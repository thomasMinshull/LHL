//
//  car.m
//  ObCAssignment1
//
//  Created by thomas minshull on 2016-06-22.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import "Car.h"

@implementation Car

- (id)initWithModel:(NSString *)model {
    self = [super init];
    _model = model;
    return self;
}

- (void)drive {
    NSLog(@"%@",self.model);
}

@end
