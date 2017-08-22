//
//  CommandExecutor.m
//  Patterns_18_Command_A
//
//  Created by Ильяс on 22.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "CommandExecutor.h"

@implementation CommandExecutor

- (id)init
{
    self = [super init];
    self.arrayOfCommands = [[NSMutableArray alloc] init];
    
    return self;
}

- (void)addCommand:(BaseCommand *)aCommand {
    [self.arrayOfCommands addObject:aCommand];
}

- (void)executeCommands {
    for (BaseCommand *command in self.arrayOfCommands) {
        [command execute];
    }
}

- (void)undoAll {
    for (BaseCommand *command in self.arrayOfCommands) {
        [command undo];
    }
}

- (void)setSpecificCommand:(NSInvocation *)specificCommand {
    _specificCommand = specificCommand;
}

- (void)executeSpecificCommand {
    [_specificCommand invoke];
}

@end
