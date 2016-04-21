//
//  FB5038892.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FB5038892.h"


NSString *const kFB5038892RLike = @"r_like";
NSString *const kFB5038892RandomSurplusCount = @"randomSurplusCount";
NSString *const kFB5038892SurplusCount = @"surplusCount";
NSString *const kFB5038892Like = @"like";


@interface FB5038892 ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FB5038892

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
            self.rLike = [[self objectOrNilForKey:kFB5038892RLike fromDictionary:dict] doubleValue];
            self.randomSurplusCount = [[self objectOrNilForKey:kFB5038892RandomSurplusCount fromDictionary:dict] doubleValue];
            self.surplusCount = [[self objectOrNilForKey:kFB5038892SurplusCount fromDictionary:dict] doubleValue];
            self.like = [[self objectOrNilForKey:kFB5038892Like fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.rLike] forKey:kFB5038892RLike];
    [mutableDict setValue:[NSNumber numberWithDouble:self.randomSurplusCount] forKey:kFB5038892RandomSurplusCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.surplusCount] forKey:kFB5038892SurplusCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.like] forKey:kFB5038892Like];

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

    self.rLike = [aDecoder decodeDoubleForKey:kFB5038892RLike];
    self.randomSurplusCount = [aDecoder decodeDoubleForKey:kFB5038892RandomSurplusCount];
    self.surplusCount = [aDecoder decodeDoubleForKey:kFB5038892SurplusCount];
    self.like = [aDecoder decodeDoubleForKey:kFB5038892Like];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_rLike forKey:kFB5038892RLike];
    [aCoder encodeDouble:_randomSurplusCount forKey:kFB5038892RandomSurplusCount];
    [aCoder encodeDouble:_surplusCount forKey:kFB5038892SurplusCount];
    [aCoder encodeDouble:_like forKey:kFB5038892Like];
}

- (id)copyWithZone:(NSZone *)zone
{
    FB5038892 *copy = [[FB5038892 alloc] init];
    
    if (copy) {

        copy.rLike = self.rLike;
        copy.randomSurplusCount = self.randomSurplusCount;
        copy.surplusCount = self.surplusCount;
        copy.like = self.like;
    }
    
    return copy;
}


@end
