//
//  FB5039551.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FB5039551.h"


NSString *const kFB5039551RLike = @"r_like";
NSString *const kFB5039551RandomSurplusCount = @"randomSurplusCount";
NSString *const kFB5039551SurplusCount = @"surplusCount";
NSString *const kFB5039551Like = @"like";


@interface FB5039551 ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FB5039551

@synthesize rLike = _rLike;
@synthesize randomSurplusCount = _randomSurplusCount;
@synthesize surplusCount = _surplusCount;
@synthesize like = _like;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.rLike = [[self objectOrNilForKey:kFB5039551RLike fromDictionary:dict] doubleValue];
            self.randomSurplusCount = [[self objectOrNilForKey:kFB5039551RandomSurplusCount fromDictionary:dict] doubleValue];
            self.surplusCount = [[self objectOrNilForKey:kFB5039551SurplusCount fromDictionary:dict] doubleValue];
            self.like = [[self objectOrNilForKey:kFB5039551Like fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.rLike] forKey:kFB5039551RLike];
    [mutableDict setValue:[NSNumber numberWithDouble:self.randomSurplusCount] forKey:kFB5039551RandomSurplusCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.surplusCount] forKey:kFB5039551SurplusCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.like] forKey:kFB5039551Like];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.rLike = [aDecoder decodeDoubleForKey:kFB5039551RLike];
    self.randomSurplusCount = [aDecoder decodeDoubleForKey:kFB5039551RandomSurplusCount];
    self.surplusCount = [aDecoder decodeDoubleForKey:kFB5039551SurplusCount];
    self.like = [aDecoder decodeDoubleForKey:kFB5039551Like];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_rLike forKey:kFB5039551RLike];
    [aCoder encodeDouble:_randomSurplusCount forKey:kFB5039551RandomSurplusCount];
    [aCoder encodeDouble:_surplusCount forKey:kFB5039551SurplusCount];
    [aCoder encodeDouble:_like forKey:kFB5039551Like];
}

- (id)copyWithZone:(NSZone *)zone
{
    FB5039551 *copy = [[FB5039551 alloc] init];
    
    if (copy) {

        copy.rLike = self.rLike;
        copy.randomSurplusCount = self.randomSurplusCount;
        copy.surplusCount = self.surplusCount;
        copy.like = self.like;
    }
    
    return copy;
}


@end
