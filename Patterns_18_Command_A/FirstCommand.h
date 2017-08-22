//
//  FirstCommand.h
//  Patterns_18_Command_A
//
//  Created by Ильяс on 22.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "BaseCommand.h"

@interface FirstCommand : BaseCommand

@property (nonatomic, strong) NSString *originalString;
@property (nonatomic, strong) NSString *currentString;

- (id)initWithArguments:(NSString *)anArgument;
- (void)printString;

@end
