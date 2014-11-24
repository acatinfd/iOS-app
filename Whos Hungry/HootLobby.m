//
//  HootLobby.m
//  Whos Hungry
//
//  Created by administrator on 11/11/14.
//  Copyright (c) 2014 WHK. All rights reserved.
//

#import "HootLobby.h"

@implementation HootLobby

- (void)encodeWithCoder:(NSCoder *)encoder
{
    //Encode properties, other class variables, etc
    [encoder encodeObject:_facebookId forKey:@"facebookId"];
    [encoder encodeObject:_facebookId forKey:@"facebookPic"];
    [encoder encodeObject:_groupid forKey:@"groupid"];
    [encoder encodeObject:_facebookbInvitatitions forKey:@"facebookInvitations"];
    [encoder encodeObject:_expirationTime forKey:@"expirationTime"];
    [encoder encodeObject:_placesIdArray forKey:@"placesIdArray"];
    [encoder encodeObject:_placesNamesArray forKey:@"placesNamesArray"];
    [encoder encodeObject:_placesPicsArray forKey:@"placesPicsArray"];
    [encoder encodeObject:_voteType forKey:@"voteType"];
    [encoder encodeObject:_voteid forKey:@"voteid"];
    [encoder encodeObject:_winnerRestID forKey:@"winnerRestID"];
    [encoder encodeObject:_winnerRestName forKey:@"winnerRestName"];
}

- (id)initWithCoder:(NSCoder *)decoder
{
    self = [super init];
    if( self != nil )
    {
        _facebookId = [decoder decodeObjectForKey:@"facebookId"];
        _facebookPic = [decoder decodeObjectForKey:@"facebookPic"];
        _groupid = [decoder decodeObjectForKey:@"groupid"];
        _facebookbInvitatitions = [decoder decodeObjectForKey:@"facebookInvitations"];
        _expirationTime = [decoder decodeObjectForKey:@"expirationTime"];
        _placesIdArray = [decoder decodeObjectForKey:@"placesIdArray"];
        _placesNamesArray = [decoder decodeObjectForKey:@"placesNamesArray"];
        _placesPicsArray = [decoder decodeObjectForKey:@"placesPicsArray"];
        _voteType = [decoder decodeObjectForKey:@"voteType"];
        _voteid = [decoder decodeObjectForKey:@"voteid"];
        _winnerRestID = [decoder decodeObjectForKey:@"winnerRestID"];
        _winnerRestName = [decoder decodeObjectForKey:@"winnerRestName"];
    }
    return self;
}

- (NSComparisonResult)compare:(HootLobby *)otherObject {
    return [self.voteid compare:otherObject.voteid];
}


@end
