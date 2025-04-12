//
//  FlagsAPI.h
//  ObjCTask1
//
//  Created by Anzhelika Kazutina on 10/04/2025.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FlagsAPI : NSObject

- (NSString *)getCountryFlagImageUrlForCountryWithCode:(NSString *)countryCode;

@end

NS_ASSUME_NONNULL_END
