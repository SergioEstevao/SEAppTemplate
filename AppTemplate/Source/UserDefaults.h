//
//  UserDefaults.h
//  AppTemplate
//
//  Created by Sergio Estevao on 19/05/2013.
//  Copyright (c) 2013 Sergio Estevao. All rights reserved.
//

@interface UserDefaults : NSObject

+ (NSString*)shortVersion;
+ (void)setShortVersion:(NSNumber*)newValue;

+ (void)setVersionInfo:(NSString *) info;

@end
