//
//  car.h
//  ObCAssignment1
//
//  Created by thomas minshull on 2016-06-22.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property NSString *model;

- (id)initWithModel:(NSString *)model;

- (void)drive;

@end
