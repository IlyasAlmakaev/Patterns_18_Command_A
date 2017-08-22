//
//  ViewController.m
//  Patterns_18_Command_A
//
//  Created by Ильяс on 22.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "ViewController.h"
#import "CommandExecutor.h"
#import "FirstCommand.h"
#import "SecondCommand.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CommandExecutor *commandE = [[CommandExecutor alloc] init];
    BaseCommand *cmdF = [[FirstCommand alloc] initWithArguments:@"This is a test string"];
    BaseCommand *cmdS = [[SecondCommand alloc] initWithArgs:3];
    
    [commandE addCommand:cmdF];
    [commandE addCommand:cmdS];
    
    [commandE executeCommands];
    [commandE undoAll];
    
    NSMethodSignature *signature = [self methodSignatureForSelector:@selector(methodInMainController:andString:)];
    NSInvocation *invocationToPass = [NSInvocation invocationWithMethodSignature:signature];
    [invocationToPass setTarget:self];
    [invocationToPass setSelector:@selector(methodInMainController:andString:)];
    
    int intArgument = 3;
    NSString *stringArgument = @"This is a string argument";
    
    [invocationToPass setArgument:&intArgument atIndex:2];
    [invocationToPass setArgument:&stringArgument atIndex:3];
    
    CommandExecutor *executor = [[CommandExecutor alloc] init];
    [executor setSpecificCommand:invocationToPass];
    [executor executeSpecificCommand];
}

- (void)methodInMainController:(int)aFirstArgument andString:(NSString *)aStringArgument {
    NSLog(@"Method called with first argument = %i and second argument = %@", aFirstArgument, aStringArgument);
}

@end
