//
//  FlagsAPI.m
//  ObjCTask1
//
//  Created by Anzhelika Kazutina on 10/04/2025.
//

#import "FlagsAPI.h"

@implementation FlagsAPI

NSString *baseURL = @"https://flagsapi.com";

- (NSString *)getCountryFlagImageUrlForCountryWithCode:(NSString *)countryCode {
    return [[NSString alloc] initWithFormat: @"%@/%@/flat/64.png", baseURL, countryCode];
}

@end
