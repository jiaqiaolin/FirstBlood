//
//  FBTenants.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FBTenants.h"
#import "FB1631889.h"
#import "FB1676673.h"
#import "FB1613492.h"
#import "FB1625139.h"
#import "FB1620158.h"
#import "FB1625305.h"
#import "FB1623717.h"
#import "FB1673037.h"


NSString *const kFBTenants1631889 = @"1631889";
NSString *const kFBTenants1676673 = @"1676673";
NSString *const kFBTenants1613492 = @"1613492";
NSString *const kFBTenants1625139 = @"1625139";
NSString *const kFBTenants1620158 = @"1620158";
NSString *const kFBTenants1625305 = @"1625305";
NSString *const kFBTenants1623717 = @"1623717";
NSString *const kFBTenants1673037 = @"1673037";


@interface FBTenants ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FBTenants

@synthesize 1631889 = _1631889;
@synthesize 1676673 = _1676673;
@synthesize 1613492 = _1613492;
@synthesize 1625139 = _1625139;
@synthesize 1620158 = _1620158;
@synthesize 1625305 = _1625305;
@synthesize 1623717 = _1623717;
@synthesize 1673037 = _1673037;


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
            self.1631889 = [FB1631889 modelObjectWithDictionary:[dict objectForKey:kFBTenants1631889]];
            self.1676673 = [FB1676673 modelObjectWithDictionary:[dict objectForKey:kFBTenants1676673]];
            self.1613492 = [FB1613492 modelObjectWithDictionary:[dict objectForKey:kFBTenants1613492]];
            self.1625139 = [FB1625139 modelObjectWithDictionary:[dict objectForKey:kFBTenants1625139]];
            self.1620158 = [FB1620158 modelObjectWithDictionary:[dict objectForKey:kFBTenants1620158]];
            self.1625305 = [FB1625305 modelObjectWithDictionary:[dict objectForKey:kFBTenants1625305]];
            self.1623717 = [FB1623717 modelObjectWithDictionary:[dict objectForKey:kFBTenants1623717]];
            self.1673037 = [FB1673037 modelObjectWithDictionary:[dict objectForKey:kFBTenants1673037]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.1631889 dictionaryRepresentation] forKey:kFBTenants1631889];
    [mutableDict setValue:[self.1676673 dictionaryRepresentation] forKey:kFBTenants1676673];
    [mutableDict setValue:[self.1613492 dictionaryRepresentation] forKey:kFBTenants1613492];
    [mutableDict setValue:[self.1625139 dictionaryRepresentation] forKey:kFBTenants1625139];
    [mutableDict setValue:[self.1620158 dictionaryRepresentation] forKey:kFBTenants1620158];
    [mutableDict setValue:[self.1625305 dictionaryRepresentation] forKey:kFBTenants1625305];
    [mutableDict setValue:[self.1623717 dictionaryRepresentation] forKey:kFBTenants1623717];
    [mutableDict setValue:[self.1673037 dictionaryRepresentation] forKey:kFBTenants1673037];

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

    self.1631889 = [aDecoder decodeObjectForKey:kFBTenants1631889];
    self.1676673 = [aDecoder decodeObjectForKey:kFBTenants1676673];
    self.1613492 = [aDecoder decodeObjectForKey:kFBTenants1613492];
    self.1625139 = [aDecoder decodeObjectForKey:kFBTenants1625139];
    self.1620158 = [aDecoder decodeObjectForKey:kFBTenants1620158];
    self.1625305 = [aDecoder decodeObjectForKey:kFBTenants1625305];
    self.1623717 = [aDecoder decodeObjectForKey:kFBTenants1623717];
    self.1673037 = [aDecoder decodeObjectForKey:kFBTenants1673037];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_1631889 forKey:kFBTenants1631889];
    [aCoder encodeObject:_1676673 forKey:kFBTenants1676673];
    [aCoder encodeObject:_1613492 forKey:kFBTenants1613492];
    [aCoder encodeObject:_1625139 forKey:kFBTenants1625139];
    [aCoder encodeObject:_1620158 forKey:kFBTenants1620158];
    [aCoder encodeObject:_1625305 forKey:kFBTenants1625305];
    [aCoder encodeObject:_1623717 forKey:kFBTenants1623717];
    [aCoder encodeObject:_1673037 forKey:kFBTenants1673037];
}

- (id)copyWithZone:(NSZone *)zone
{
    FBTenants *copy = [[FBTenants alloc] init];
    
    if (copy) {

        copy.1631889 = [self.1631889 copyWithZone:zone];
        copy.1676673 = [self.1676673 copyWithZone:zone];
        copy.1613492 = [self.1613492 copyWithZone:zone];
        copy.1625139 = [self.1625139 copyWithZone:zone];
        copy.1620158 = [self.1620158 copyWithZone:zone];
        copy.1625305 = [self.1625305 copyWithZone:zone];
        copy.1623717 = [self.1623717 copyWithZone:zone];
        copy.1673037 = [self.1673037 copyWithZone:zone];
    }
    
    return copy;
}


@end
