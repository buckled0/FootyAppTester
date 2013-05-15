//
//  Teams.h
//  FootyAppTester
//
//  Created by Daniel Buckle on 13/05/2013.
//  Copyright (c) 2013 Daniel Buckle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Teams : NSObject
{
    NSString *teamName;
    int points;
}

@property (nonatomic, copy) NSString *teamName;
@property (nonatomic) int points;


@end
