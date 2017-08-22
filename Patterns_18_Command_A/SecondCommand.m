//
//  SecondCommand.m
//  Patterns_18_Command_A
//
//  Created by Ильяс on 22.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "SecondCommand.h"

@implementation SecondCommand

- (id)initWithArgs:(int)aNumber {
    self = [super init];
    self.originalNumber = aNumber;
    self.currentNumber = aNumber;
    
    return self;
}

- (void)execute {
    self.currentNumber++;
    [self printNumber];
}

- (void)undo {
    if (self.currentNumber > self.originalNumber) {
        self.currentNumber--;
    }
    [self printNumber];
}

- (void)printNumber {
    NSLog(@"current number is %i", self.currentNumber);
}

@end
