//
//  ViewController.m
//  PingLinkedInLoginTest
//
//  Created by thomas minshull on 2016-07-23.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // LogIn
    
    // CheckKeyChain for access token
        // If there is an acess token attemp to login with access token
    
        // If there is not an access token or if the login attempt with the access token fails...
        // login and request new access token
    
    // once logged in segue to next screen (and start becon)
    
    [LISDKSessionManager
     createSessionWithAuth:[NSArray arrayWithObjects:LISDK_BASIC_PROFILE_PERMISSION, nil]
     state:nil
     showGoToAppStoreDialog:YES
     successBlock:^(NSString *returnState) {
         NSLog(@"%s","success called!");
         LISDKSession *session = [[LISDKSessionManager sharedInstance] session];
     }
     errorBlock:^(NSError *error) {
         NSLog(@"%s","error called!");
     }
     ];
    
    DeeplinkSuccessBlock success = ^(NSString *returnState) {
        NSLog(@"Success with returned state: %@",returnState);
    };
    DeeplinkErrorBlock error = ^(NSError *error, NSString *returnState) {
        NSLog(@"Error with returned state: %@", returnState);
        NSLog(@"Error %@", error);
    };
    
    [[LISDKDeeplinkHelper sharedInstance] viewCurrentProfileWithState:@"viewMyProfileButton" showGoToAppStoreDialog:YES success:success error:error];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
