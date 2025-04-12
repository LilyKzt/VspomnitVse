//
//  CountriesAPI.h
//  ObjCTask1
//
//  Created by Anzhelika Kazutina on 10/04/2025.
//

#import <Foundation/Foundation.h>
#import "Country.h"

NS_ASSUME_NONNULL_BEGIN

@interface CountriesAPI : NSObject

- (NSArray *)fetchCountriesWithCompletion:(void (^)(NSArray<Country *> *countries, NSError *error))completionHandler;

@end

NS_ASSUME_NONNULL_END
