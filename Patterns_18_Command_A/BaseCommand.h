//
//  BaseCommand.h
//  Patterns_18_Command_A
//
//  Created by Ильяс on 22.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseCommand : NSObject

- (void)execute;
- (void)undo;

@end
