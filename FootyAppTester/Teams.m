//
//  Teams.m
//  FootyAppTester
//
//  Created by Daniel Buckle on 13/05/2013.
//  Copyright (c) 2013 Daniel Buckle. All rights reserved.
//

#import "Teams.h"

@implementation Teams

@synthesize teamName, points;

- (NSString *) description
{
    return [NSString stringWithFormat:@"<%@ - %d>", [self teamName], [self points]];
}

@end
