//
//  FBAreas.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FBAreas.h"
#import "FB10896.h"
#import "FB18173.h"
#import "FB13941.h"
#import "FB14982.h"


NSString *const kFBAreas10896 = @"10896";
NSString *const kFBAreas18173 = @"18173";
NSString *const kFBAreas13941 = @"13941";
NSString *const kFBAreas14982 = @"14982";


@interface FBAreas ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FBAreas

@synthesize 10896 = _10896;
@synthesize 18173 = _18173;
@synthesize 13941 = _13941;
@synthesize 14982 = _14982;


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
            self.10896 = [FB10896 modelObjectWithDictionary:[dict objectForKey:kFBAreas10896]];
            self.18173 = [FB18173 modelObjectWithDictionary:[dict objectForKey:kFBAreas18173]];
            self.13941 = [FB13941 modelObjectWithDictionary:[dict objectForKey:kFBAreas13941]];
            self.14982 = [FB14982 modelObjectWithDictionary:[dict objectForKey:kFBAreas14982]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.10896 dictionaryRepresentation] forKey:kFBAreas10896];
    [mutableDict setValue:[self.18173 dictionaryRepresentation] forKey:kFBAreas18173];
    [mutableDict setValue:[self.13941 dictionaryRepresentation] forKey:kFBAreas13941];
    [mutableDict setValue:[self.14982 dictionaryRepresentation] forKey:kFBAreas14982];

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

    self.10896 = [aDecoder decodeObjectForKey:kFBAreas10896];
    self.18173 = [aDecoder decodeObjectForKey:kFBAreas18173];
    self.13941 = [aDecoder decodeObjectForKey:kFBAreas13941];
    self.14982 = [aDecoder decodeObjectForKey:kFBAreas14982];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_10896 forKey:kFBAreas10896];
    [aCoder encodeObject:_18173 forKey:kFBAreas18173];
    [aCoder encodeObject:_13941 forKey:kFBAreas13941];
    [aCoder encodeObject:_14982 forKey:kFBAreas14982];
}

- (id)copyWithZone:(NSZone *)zone
{
    FBAreas *copy = [[FBAreas alloc] init];
    
    if (copy) {

        copy.10896 = [self.10896 copyWithZone:zone];
        copy.18173 = [self.18173 copyWithZone:zone];
        copy.13941 = [self.13941 copyWithZone:zone];
        copy.14982 = [self.14982 copyWithZone:zone];
    }
    
    return copy;
}


@end
