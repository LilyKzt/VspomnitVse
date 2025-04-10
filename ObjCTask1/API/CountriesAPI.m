//
//  CountriesAPI.m
//  ObjCTask1
//
//  Created by Anzhelika Kazutina on 10/04/2025.
//

#import "CountriesAPI.h"

@implementation CountriesAPI

- (NSArray *)fetchCountriesWithCompletion:(void (^)(NSDictionary *response, NSError *error))completionHandler {
    NSURL *url = [NSURL URLWithString:@"https://restcountries.com/v3.1/all"];
    [self get: url withCompletion: completionHandler];
    return [[NSArray alloc] init];
}

- (void)get:(NSURL *)url withCompletion:(void (^)(NSDictionary *response, NSError *error))completionHandler {
    
    
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
            // Call the completion handler with the JSON response
            completionHandler(jsonResponse, nil);
        }
    }];
    
    [dataTask resume]; // Start the data task
}
@end
