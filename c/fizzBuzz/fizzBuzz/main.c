//
//  main.c
//  fizzBuzz
//
//  Created by thomas minshull on 2016-06-19.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    for ( int x = 1; x < 101; x++ ) {
        
        if (x%3 == 0 && x%5 == 0) {
            printf("FizzBuzz\n");
        
        } else if (x%3 == 0) {
            printf("Fizz\n");
        
        } else if (x%5 == 0) {
            printf("Buzz\n");
        
        } else {
            printf("%d\n", x);
        }
    }
    return 0;
}
