//
//  Country.h
//  ObjCTask1
//
//  Created by Anzhelika Kazutina on 10/04/2025.
//

#import <Foundation/Foundation.h>
#import "Name.h"
#import "Translation.h"
#import "CapitalInfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface Country : NSObject

@property (nonatomic, strong) Name *name;
@property (nonatomic, strong) NSString *cca2;
@property (nonatomic, strong) NSString *cca3;
@property (nonatomic, strong) NSArray<NSString *> *capital;
@property (nonatomic, strong) NSDictionary<NSString *, NSString *> *languages;
@property (nonatomic, strong) NSDictionary<NSString *, Translation *> *translations;
@property (nonatomic, strong) NSArray<NSNumber *> *latlng;
@property (nonatomic, assign) NSInteger area;
@property (nonatomic, strong) NSString *flag;
@property (nonatomic, assign) NSInteger population;
@property (nonatomic, strong) CapitalInfo *capitalInfo;
@property (nonatomic, strong) NSArray<NSString *> *borders; 
@property (nonatomic, assign) NSInteger globalPopulationRank;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
