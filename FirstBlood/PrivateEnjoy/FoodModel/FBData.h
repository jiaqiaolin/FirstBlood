//
//  FBData.h
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FBCanBuy, FBCounts, FBAreas, FBTenants;

@interface FBData : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) FBCanBuy *canBuy;
@property (nonatomic, strong) FBCounts *counts;
@property (nonatomic, assign) double pageTotal;
@property (nonatomic, strong) FBAreas *areas;
@property (nonatomic, strong) FBTenants *tenants;
@property (nonatomic, strong) NSArray *list;
@property (nonatomic, assign) double page;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
