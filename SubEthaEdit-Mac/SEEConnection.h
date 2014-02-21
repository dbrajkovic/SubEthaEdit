//
//  SEEConnection.h
//  SubEthaEdit
//
//  Created by Dominik Wagner on 08.05.07.
//	Updated by Michael Ehrmann on Fri Feb 21 2014.
//  Copyright 2007-2014 TheCodingMonkeys. All rights reserved.
//


#import <Cocoa/Cocoa.h>
#import "TCMBEEP.h"
#import "TCMMillionMonkeys.h"
#import "TCMHost.h"

extern NSString * const SEEConnectionStatusDidChangeNotification;

extern NSString * const ConnectionStatusConnected   ;
extern NSString * const ConnectionStatusInProgress  ;
extern NSString * const ConnectionStatusNoConnection;


@interface SEEConnection : NSObject {
    TCMBEEPSession *_BEEPSession;
    NSURL *_URL;
    NSString *_hostStatus;
    NSMutableArray *_pendingDocumentRequests;
    NSMutableArray *_tokensToSend;
    TCMHost *_host;
    NSDate *_creationDate;
    NSArray *_announcedSessions;
}

- (id)initWithURL:(NSURL *)anURL;
- (id)initWithBEEPSession:(TCMBEEPSession *)aSession;
- (BOOL)handleURL:(NSURL *)anURL;
- (BOOL)handleSession:(TCMBEEPSession *)aSession;
- (BOOL)handleSessionDidEnd:(TCMBEEPSession *)aSession;
- (TCMBEEPSession *)BEEPSession;
- (NSString *)userID;
- (TCMMMUser *)user;
- (void)reloadAnnouncedSessions;
- (NSArray *)announcedSessions;
- (BOOL)isBonjour;
- (BOOL)isVisible;
- (NSString *)hostStatus;
- (NSString *)connectionStatus;
- (NSURL *)URL;
- (void)connect;
- (void)cancel;
- (NSString *)toolTipString;
- (void)checkDocumentRequests;
- (NSDate *)creationDate;

@end