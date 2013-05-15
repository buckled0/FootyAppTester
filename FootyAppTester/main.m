//
//  main.m
//  FootyAppTester
//
//  Created by Daniel Buckle on 13/05/2013.
//  Copyright (c) 2013 Daniel Buckle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Teams.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Teams *manchesterUnited = [[Teams alloc] init];
        Teams *manchesterCity = [[Teams alloc] init];
        Teams *chelsea = [[Teams alloc] init];
        Teams *tottenham = [[Teams alloc] init];
        Teams *arsenal = [[Teams alloc] init];
        Teams *everton = [[Teams alloc] init];
        Teams *liverpool = [[Teams alloc] init];
        Teams *westBrom = [[Teams alloc] init];
        Teams *swansea = [[Teams alloc] init];
        Teams *westHam = [[Teams alloc] init];
        Teams *stoke = [[Teams alloc] init];
        Teams *norwich = [[Teams alloc] init];
        Teams *newcastle = [[Teams alloc] init];
        Teams *southampton = [[Teams alloc] init];
        Teams *fulham = [[Teams alloc] init];
        Teams *astonVilla = [[Teams alloc] init];
        Teams *sunderland = [[Teams alloc] init];
        Teams *wigan = [[Teams alloc] init];
        Teams *reading = [[Teams alloc] init];
        Teams *qpr = [[Teams alloc] init];
        
        manchesterUnited.teamName = @"Manchester United";
        manchesterUnited.points = 88;
        
        manchesterCity.teamName = @"Manchester City";
        manchesterCity.points = 78;
        
        chelsea.teamName = @"Chelsea";
        chelsea.points = 72;
        
        arsenal.teamName = @"Arsenal";
        arsenal.points = 70;
        
        tottenham.teamName = @"Tottenham";
        tottenham.points = 69;
        
        
        everton.teamName = @"Everton";
        everton.points = 63;
        
        liverpool.teamName = @"Liverpool";
        liverpool.points = 58;
        
        westBrom.teamName = @"West Brom";
        westBrom.points = 48;
        
        swansea.teamName = @"Swansea";
        swansea.points = 46;
        
        westHam.teamName = @"West Ham";
        westHam.points = 43;
        
        stoke.teamName = @"Stoke";
        stoke.points = 41;
        
        norwich.teamName = @"Norwich";
        norwich.points = 41;
        
        newcastle.teamName = @"Newcastle";
        newcastle.points = 41;
        
        southampton.teamName = @"Southampton";
        southampton.points = 40;
        
        fulham.teamName = @"Fulham";
        fulham.points = 40;
        
        astonVilla.teamName = @"Aston Villa";
        astonVilla.points = 40;
        
        sunderland.teamName = @"Sunderland";
        sunderland.points = 39;
        
        wigan.teamName = @"Wigan";
        wigan.points = 35;
        
        reading.teamName = @"Reading";
        reading.points = 28;
        
        qpr.teamName = @"Queens Park Rangers";
        qpr.points = 25;

        NSMutableArray *theLeague = [[NSMutableArray alloc] initWithObjects: manchesterUnited, manchesterCity, chelsea, tottenham, arsenal, everton, liverpool, westBrom, swansea, westHam, stoke, norwich, newcastle, southampton, fulham, astonVilla, sunderland, wigan, reading, qpr, nil];
        
        NSSortDescriptor *vop = [NSSortDescriptor sortDescriptorWithKey:@"points" ascending:NO];
        [theLeague sortUsingDescriptors:[NSArray arrayWithObjects:vop, nil]];
        
        NSLog(@"%@", theLeague);
        
        
        
        
    }
    return 0;
}

