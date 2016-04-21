//
//  FB5039551.h
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface FB5039551 : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) double rLike;
@property (nonatomic, assign) double randomSurplusCount;
@property (nonatomic, assign) double surplusCount;
@property (nonatomic, assign) double like;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
