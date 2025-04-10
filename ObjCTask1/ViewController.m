//
//  ViewController.m
//  ObjCTask1
//
//  Created by Anzhelika Kazutina on 10/04/2025.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CountriesAPI *api = [[CountriesAPI alloc] init];
    [api fetchCountriesWithCompletion:^(NSDictionary *response, NSError *error) {
        NSLog(@"%@",response);
    }];
}


@end
