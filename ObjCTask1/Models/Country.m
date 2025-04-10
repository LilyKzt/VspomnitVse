//
//  Country.m
//  ObjCTask1
//
//  Created by Anzhelika Kazutina on 10/04/2025.
//

#import "Country.h"

@implementation Country

- (instancetype)initWithDictionary: (NSDictionary *) dictionary {
    self = [super init];
    if (self) {
        self.cca2 = dictionary[@"cca2"];
        self.cca3 = dictionary[@"cca3"];
        self.area = dictionary[@"area"];
        self.flag = dictionary[@"flag"];
        self.borders = dictionary[@"borders"];
        self.globalPopulationRank = 0;
    }
    return self;
}

@end
