//
//  main.m
//  FootyAppTester
//
//  Created by Daniel Buckle on 13/05/2013.
//  Copyright (c) 2013 Daniel Buckle. All rights reserved.
//
// Use goal difference to sort any teams who are drawing on points
// Have swtich statments declaring which round the teams are currently in.

#import <Foundation/Foundation.h>
#import "Teams.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create the instances of each of the 20 teams in the league
        Teams *team1 = [[Teams alloc] init];
        Teams *team2 = [[Teams alloc] init];
        Teams *team3 = [[Teams alloc] init];
        Teams *team4 = [[Teams alloc] init];
        Teams *team5 = [[Teams alloc] init];
        Teams *team6 = [[Teams alloc] init];
        Teams *team7 = [[Teams alloc] init];
        Teams *team8 = [[Teams alloc] init];
        Teams *team9 = [[Teams alloc] init];
        Teams *team10 = [[Teams alloc] init];
        Teams *team11 = [[Teams alloc] init];
        Teams *team12 = [[Teams alloc] init];
        Teams *team13 = [[Teams alloc] init];
        Teams *team14 = [[Teams alloc] init];
        Teams *team15 = [[Teams alloc] init];
        Teams *team16 = [[Teams alloc] init];
        Teams *team17 = [[Teams alloc] init];
        Teams *team18 = [[Teams alloc] init];
        Teams *team19 = [[Teams alloc] init];
        Teams *team20 = [[Teams alloc] init];
        
        // Allocate each team with a team name and a points value
        team1.teamName = @"Manchester United";
        team1.points = 89;
        team1.goalDifference = 43;
        
        team2.teamName = @"Manchester City";
        team2.points = 78;
        team2.goalDifference = 32;
        
        team3.teamName = @"Chelsea";
        team3.points = 75;
        team3.goalDifference = 36;
        
        team4.teamName = @"Arsenal";
        team4.points = 73;
        team4.goalDifference = 35;
        
        team5.teamName = @"Tottenham";
        team5.points = 72;
        team5.goalDifference = 20;
        
        team6.teamName = @"Everton";
        team6.points = 63;
        team6.goalDifference = 15;
        
        team7.teamName = @"Liverpool";
        team7.points = 61;
        team7.goalDifference = 28;
        
        team8.teamName = @"West Brom";
        team8.points = 49;
        team8.goalDifference = -4;
        
        team9.teamName = @"Swansea";
        team9.points = 46;
        team9.goalDifference = -4;
        
        team10.teamName = @"West Ham";
        team10.points = 46;
        team10.goalDifference = -8;
        
        team11.teamName = @"Stoke";
        team11.points = 42;
        team11.goalDifference = -11;
        
        team12.teamName = @"Norwich";
        team12.points = 44;
        team12.goalDifference = -17;
        
        team13.teamName = @"Newcastle";
        team13.points = 41;
        team13.goalDifference = -23;
        
        team14.teamName = @"Southampton";
        team14.points = 41;
        team14.goalDifference = -11;
        
        team15.teamName = @"Fulham";
        team15.points = 43;
        team15.goalDifference = -10;
        
        team16.teamName = @"Aston Villa";
        team16.points = 41;
        team16.goalDifference = -22;
        
        team17.teamName = @"Sunderland";
        team17.points = 39;
        team17.goalDifference = -13;
        
        team18.teamName = @"Wigan";
        team18.points = 36;
        team18.goalDifference = -26;
        
        team19.teamName = @"Reading";
        team19.points = 28;
        team19.goalDifference = -30;
        
        team20.teamName = @"Queens Park Rangers";
        team20.points = 25;
        team20.goalDifference = -30;

        // Store each one of the teams in an array
        NSMutableArray *theLeague = [[NSMutableArray alloc] initWithObjects: team1, team2, team3, team4, team5, team6, team7, team8, team9, team10, team11, team12, team13, team14, team15, team16, team17, team18, team19, team20, nil];
        
        if (argc != 2) {
            fprintf(stderr, "No number of Games Played, try again");
            return 1;
        }
        
        // Variable to store remaining games left in the season
        int gamesPlayed = atoi(argv[1]);
        
        // Store an array of the leagues points
        NSArray *leaguePoints = [theLeague valueForKey:@"points"];
        
        // Sort the league depending on the value of points
        NSSortDescriptor *vop = [NSSortDescriptor sortDescriptorWithKey:@"points" ascending:NO];
        NSSortDescriptor *gd = [NSSortDescriptor sortDescriptorWithKey:@"goalDifference" ascending:NO];
        [theLeague sortUsingDescriptors:[NSArray arrayWithObjects:vop, gd, nil]];
        
        // Store the array length as a value
        NSUInteger arrLen = [leaguePoints count];
        
        NSLog(@"Games Played - %d", gamesPlayed);
        
        // Loop through the league, leaving out the bottom three teams
        for (int i = 0; i < arrLen - 1; ++i) {
            
            int pointsValue1 = [[leaguePoints objectAtIndex:i] intValue];
            int pointsValue2 = [[leaguePoints objectAtIndex:i+1] intValue];
            
            if ((pointsValue1 && pointsValue2 < team18.points) && gamesPlayed >= 36){
                NSLog(@"%d - %@are going down", i + 1 , [theLeague objectAtIndex:i]);
            }
            else if (pointsValue1 && pointsValue2 < team18.points){
                NSLog(@"%d - %@are in the relegation zone", i + 1 , [theLeague objectAtIndex:i]);
            }
            else if ((pointsValue1 - pointsValue2) >= 3) {
                NSLog(@"%d - %@are safe!", i + 1, [theLeague objectAtIndex:i]);
            }
            else if (pointsValue1 == pointsValue2){
                NSLog(@"%d - %@are drawing on points", i + 1, [theLeague objectAtIndex:i]);
            }
            else if ((pointsValue1 - pointsValue2) <= 3){
                NSLog(@"%d - %@aren't safe, could be overtaken depending on games left", i + 1, [theLeague objectAtIndex:i]);
            }
        }
        
        if ((team19.points - team20.points) >= 3 && gamesPlayed >= 37){
            NSLog(@"20 %@are going down", team20);
        }
        else if ((team19.points - team20.points) >= 3) {
            NSLog(@"20 %@could be going down unless they win the next two games", team20);
        }
        
        if ((team17.points - team18.points) < 3) {
            NSLog(@"%@could be in the relegation zone if %@ win their next game", team17.teamName, team18.teamName);
        }
        
        if ((gamesPlayed > 30) && (team1.points - team2.points) > 8) {
            NSLog(@"%@ are top of the league and champions", team1);
        }
     
    theLeague = nil;
    leaguePoints = nil;
    
    }
    return 0;
}

