//
//  CountriesAPI.m
//  ObjCTask1
//
//  Created by Anzhelika Kazutina on 10/04/2025.
//

#import "CountriesAPI.h"

@implementation CountriesAPI

- (NSArray *)fetchCountriesWithCompletion:(void (^)(NSArray<Country *> *countries, NSError *error))completionHandler {
    NSURL *url = [NSURL URLWithString:@"https://restcountries.com/v3.1/all"];
    [self get: url withCompletion: completionHandler];
    return [[NSArray alloc] init];
}

- (void)get:(NSURL *)url withCompletion:(void (^)(NSArray<Country *> *countries, NSError *error))completionHandler {
    
    
    // Create the NSURLSession
    NSURLSession *session = [NSURLSession sharedSession];
    
    // Create the data task
    NSURLSessionDataTask *dataTask = [[NSURLSession sharedSession] dataTaskWithURL:url
                                                                 completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            completionHandler(nil, error); // Correct usage.
            return;
        }
        
        // Parse the JSON response
        NSError *jsonError;
        NSDictionary *jsonResponse = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
        if (jsonError) {
            // Call the completion handler with a parsing error
            completionHandler(nil, jsonError);
        } else {
            NSMutableArray *countries = [[NSMutableArray alloc] init];
            
            for (NSDictionary *item in jsonResponse) {
                Country *country = [[Country alloc] initWithName:item[@"name"][@"official"]
                                                            cca2:item[@"cca2"]
                                                            cca3:item[@"cca3"]
                                                         capital: item[@"capital"][0]
                                                       languages:item[@"languages"]
                                                    translations:item[@"translations"]
                                                         latlang:item[@"latlng"]
                                                            area:item[@"area"]
                                                      population:item[@"population"]
                                                     capitalInfo:item[@"capitalInfo"]
                                                         borders:item[@"borders"]
                ];
                [countries addObject:country];
            }
            // Call the completion handler with the JSON response
            completionHandler(countries, nil);
        }
    }];
    
    [dataTask resume]; // Start the data task
}
@end
