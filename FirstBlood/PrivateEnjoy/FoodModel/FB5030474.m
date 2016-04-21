//
//  FB5030474.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FB5030474.h"


NSString *const kFB5030474Like = @"like";
NSString *const kFB5030474RLike = @"r_like";


@interface FB5030474 ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FB5030474

@synthesize like = _like;
@synthesize rLike = _rLike;


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
            self.like = [[self objectOrNilForKey:kFB5030474Like fromDictionary:dict] doubleValue];
            self.rLike = [[self objectOrNilForKey:kFB5030474RLike fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.like] forKey:kFB5030474Like];
    [mutableDict setValue:[NSNumber numberWithDouble:self.rLike] forKey:kFB5030474RLike];

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

    self.like = [aDecoder decodeDoubleForKey:kFB5030474Like];
    self.rLike = [aDecoder decodeDoubleForKey:kFB5030474RLike];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_like forKey:kFB5030474Like];
    [aCoder encodeDouble:_rLike forKey:kFB5030474RLike];
}

- (id)copyWithZone:(NSZone *)zone
{
    FB5030474 *copy = [[FB5030474 alloc] init];
    
    if (copy) {

        copy.like = self.like;
        copy.rLike = self.rLike;
    }
    
    return copy;
}


@end
