//
//  FBCounts.h
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FB5041011, FB5036110, FB5038892, FB5037355, FB5039551, FB5087531, FB5030474, FB5002300;

@interface FBCounts : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) FB5041011 *5041011;
@property (nonatomic, strong) FB5036110 *5036110;
@property (nonatomic, strong) FB5038892 *5038892;
@property (nonatomic, strong) FB5037355 *5037355;
@property (nonatomic, strong) FB5039551 *5039551;
@property (nonatomic, strong) FB5087531 *5087531;
@property (nonatomic, strong) FB5030474 *5030474;
@property (nonatomic, strong) FB5002300 *5002300;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
