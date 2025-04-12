//
//  Country.h
//  ObjCTask1
//
//  Created by Anzhelika Kazutina on 10/04/2025.
//

#import <Foundation/Foundation.h>
#import "Translation.h"
#import "CapitalInfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface Country : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *cca2;
@property (nonatomic, strong) NSString *cca3;
@property (nonatomic, strong) NSArray<NSString *> *capital;
@property (nonatomic, strong) NSDictionary<NSString *, NSString *> *languages;
@property (nonatomic, strong) NSDictionary<NSString *, Translation *> *translations;
@property (nonatomic, strong) NSArray<NSNumber *> *latlng;
@property (nonatomic, assign) int area;
@property (nonatomic, strong) NSString *flag;
@property (nonatomic, assign) int population;
@property (nonatomic, strong) CapitalInfo *capitalInfo;
@property (nonatomic, strong) NSArray<NSString *> *borders; 
@property (nonatomic, assign) NSInteger globalPopulationRank;

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
                     borders:(NSArray<NSString *> *)borders;

@end

NS_ASSUME_NONNULL_END
