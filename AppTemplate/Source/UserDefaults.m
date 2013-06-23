//
//  UserDefaults.m
//  AppTemplate
//
//  Created by Sergio Estevao on 19/05/2013.
//  Copyright (c) 2013 Sergio Estevao. All rights reserved.
//

#import "UserDefaults.h"

NSString * const FMUserDefaultsVersionInfo = @"VersionInfo";

@implementation UserDefaults

#pragma mark - Initialisation

+ (void)initialize {
    //NSDictionary * baseDictionary = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"UserDefaults" ofType:@"plist"]];
    //[[NSUserDefaults standardUserDefaults] registerDefaults:baseDictionary];
}


#pragma mark - Property accessors

+ (NSString*)shortVersion {
	return [[NSUserDefaults standardUserDefaults] objectForKey:@"CFBundleShortVersionString"];
}

+ (void)setShortVersion:(NSNumber*)newValue {
	[[NSUserDefaults standardUserDefaults] setObject:newValue forKey:@"CFBundleShortVersionString"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)setVersionInfo:(NSString *) info {
    [[NSUserDefaults standardUserDefaults] setObject:info forKey:FMUserDefaultsVersionInfo];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
