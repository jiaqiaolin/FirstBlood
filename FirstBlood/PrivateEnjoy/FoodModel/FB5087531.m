//
//  FB5087531.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FB5087531.h"


NSString *const kFB5087531RLike = @"r_like";
NSString *const kFB5087531RandomSurplusCount = @"randomSurplusCount";
NSString *const kFB5087531SurplusCount = @"surplusCount";
NSString *const kFB5087531Like = @"like";


@interface FB5087531 ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FB5087531

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
            self.rLike = [[self objectOrNilForKey:kFB5087531RLike fromDictionary:dict] doubleValue];
            self.randomSurplusCount = [[self objectOrNilForKey:kFB5087531RandomSurplusCount fromDictionary:dict] doubleValue];
            self.surplusCount = [[self objectOrNilForKey:kFB5087531SurplusCount fromDictionary:dict] doubleValue];
            self.like = [[self objectOrNilForKey:kFB5087531Like fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.rLike] forKey:kFB5087531RLike];
    [mutableDict setValue:[NSNumber numberWithDouble:self.randomSurplusCount] forKey:kFB5087531RandomSurplusCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.surplusCount] forKey:kFB5087531SurplusCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.like] forKey:kFB5087531Like];

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

    self.rLike = [aDecoder decodeDoubleForKey:kFB5087531RLike];
    self.randomSurplusCount = [aDecoder decodeDoubleForKey:kFB5087531RandomSurplusCount];
    self.surplusCount = [aDecoder decodeDoubleForKey:kFB5087531SurplusCount];
    self.like = [aDecoder decodeDoubleForKey:kFB5087531Like];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_rLike forKey:kFB5087531RLike];
    [aCoder encodeDouble:_randomSurplusCount forKey:kFB5087531RandomSurplusCount];
    [aCoder encodeDouble:_surplusCount forKey:kFB5087531SurplusCount];
    [aCoder encodeDouble:_like forKey:kFB5087531Like];
}

- (id)copyWithZone:(NSZone *)zone
{
    FB5087531 *copy = [[FB5087531 alloc] init];
    
    if (copy) {

        copy.rLike = self.rLike;
        copy.randomSurplusCount = self.randomSurplusCount;
        copy.surplusCount = self.surplusCount;
        copy.like = self.like;
    }
    
    return copy;
}


@end
