//
//  FBAreas.h
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FB10896, FB18173, FB13941, FB14982;

@interface FBAreas : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) FB10896 *10896;
@property (nonatomic, strong) FB18173 *18173;
@property (nonatomic, strong) FB13941 *13941;
@property (nonatomic, strong) FB14982 *14982;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
