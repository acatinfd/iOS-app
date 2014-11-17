//
//  UpDownVoteView.m
//  Whos Hungry
//
//  Created by Gilad Oved on 11/13/14.
//  Copyright (c) 2014 WHK. All rights reserved.
//

#import "UpDownVoteView.h"

@implementation UpDownVoteView

- (IBAction)voteUp:(id)sender {
    self.state++;
    if (self.state == 0) {
        self.votes++;
        self.upBtn.enabled = YES;
        self.downBtn.enabled = YES;
    } else if (self.state == 1) {
        self.upBtn.enabled = NO;
        self.downBtn.enabled = YES;
        self.votes++;
    }
    self.voteLbl.text = [NSString stringWithFormat:@"%i", self.votes];
}

- (IBAction)voteDown:(id)sender {
    self.state--;
    if (self.state == -1) {
        self.upBtn.enabled = YES;
        self.downBtn.enabled = NO;
        self.votes--;
    } else if (self.state == 0) {
        self.votes--;
        self.upBtn.enabled = YES;
        self.downBtn.enabled = YES
        ;
    }
    self.voteLbl.text = [NSString stringWithFormat:@"%i", self.votes];
}

@end
