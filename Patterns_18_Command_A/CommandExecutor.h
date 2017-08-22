//
//  CommandExecutor.h
//  Patterns_18_Command_A
//
//  Created by Ильяс on 22.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseCommand.h"

@interface CommandExecutor : NSObject

@property (nonatomic, strong) NSMutableArray *arrayOfCommands;
@property (nonatomic, strong) NSInvocation *specificCommand;

- (void)addCommand:(BaseCommand *)aCommand;
- (void)executeCommands;
- (void)undoAll;

- (void)executeSpecificCommand;

@end
