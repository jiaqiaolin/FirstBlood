//
//  FB5036110.h
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface FB5036110 : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) double like;
@property (nonatomic, assign) double rLike;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
