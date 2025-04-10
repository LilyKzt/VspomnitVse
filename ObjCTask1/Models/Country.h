//
//  Country.h
//  ObjCTask1
//
//  Created by Anzhelika Kazutina on 10/04/2025.
//

#import <Foundation/Foundation.h>
#import "Name.h"

NS_ASSUME_NONNULL_BEGIN

@interface Country : NSObject

@property (nonatomic, strong) Name *name;
@property (nonatomic, strong) NSString *cca2;
@property (nonatomic, strong) NSString *cca3;
@property (nonatomic, strong) NSArray<NSString *> *capital; // Array of strings
@property (nonatomic, strong) NSDictionary<NSString *, NSString *> *languages; // Dictionary with string keys/values
@property (nonatomic, strong) NSDictionary<NSString *, NSString *> *translations; // Adjust as needed for Translation type
@property (nonatomic, strong) NSArray<NSNumber *> *latlng; // Array of doubles (wrapped as NSNumber)
@property (nonatomic, assign) NSInteger area; // Integer for the area
@property (nonatomic, strong) NSString *flag;
@property (nonatomic, assign) NSInteger population;
@property (nonatomic, strong) NSDictionary *capitalInfo; // Adjust type for CapitalInfo
@property (nonatomic, strong) NSArray<NSString *> *borders; // Array of strings
@property (nonatomic, assign) NSInteger globalPopulationRank;

@end

NS_ASSUME_NONNULL_END
