//
//  SecondCommand.h
//  Patterns_18_Command_A
//
//  Created by Ильяс on 22.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "BaseCommand.h"

@interface SecondCommand : BaseCommand

@property (nonatomic, assign) int originalNumber;
@property (nonatomic, assign) int currentNumber;

- (id)initWithArgs:(int)aNumber;
- (void)printNumber;

@end
