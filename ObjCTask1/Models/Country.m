//
//  Country.m
//  ObjCTask1
//
//  Created by Anzhelika Kazutina on 10/04/2025.
//

#import "Country.h"

@implementation Country

- (instancetype)initWithName:(NSString *)name
                        cca2:(NSString *)cca2
                        cca3:(NSString *)cca3
                     capital:(NSArray<NSString *> *)capital
                   languages:(NSDictionary *)languages
                translations:(NSDictionary *)translations
                     latlang:(NSArray *)latlang
                        area:(NSInteger)area
                  population:(NSInteger)population
                 capitalInfo:(CapitalInfo *)capitalInfo
                     borders:(NSArray<NSString *> *)borders{
    self = [super init];
    if (self) {
        self.name = name;
        self.cca2 = cca2;
        self.cca3 = cca3;
        self.capital = capital;
        self.languages = languages;
        self.translations = translations;
        self.latlng = latlang;
        self.area = area;
        self.population = population;
        self.capitalInfo = capitalInfo;
        self.borders = borders;
        self.globalPopulationRank = 0;
    }
    return self;
}

@end
