//
//  FBCanBuy.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FBCanBuy.h"


NSString *const kFBCanBuy5041011 = @"5041011";
NSString *const kFBCanBuy5036110 = @"5036110";
NSString *const kFBCanBuy5038892 = @"5038892";
NSString *const kFBCanBuy5037355 = @"5037355";
NSString *const kFBCanBuy5039551 = @"5039551";
NSString *const kFBCanBuy5087531 = @"5087531";
NSString *const kFBCanBuy5030474 = @"5030474";
NSString *const kFBCanBuy5002300 = @"5002300";


@interface FBCanBuy ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FBCanBuy

@synthesize 5041011 = _5041011;
@synthesize 5036110 = _5036110;
@synthesize 5038892 = _5038892;
@synthesize 5037355 = _5037355;
@synthesize 5039551 = _5039551;
@synthesize 5087531 = _5087531;
@synthesize 5030474 = _5030474;
@synthesize 5002300 = _5002300;


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
            self.5041011 = [self objectOrNilForKey:kFBCanBuy5041011 fromDictionary:dict];
            self.5036110 = [self objectOrNilForKey:kFBCanBuy5036110 fromDictionary:dict];
            self.5038892 = [self objectOrNilForKey:kFBCanBuy5038892 fromDictionary:dict];
            self.5037355 = [self objectOrNilForKey:kFBCanBuy5037355 fromDictionary:dict];
            self.5039551 = [self objectOrNilForKey:kFBCanBuy5039551 fromDictionary:dict];
            self.5087531 = [self objectOrNilForKey:kFBCanBuy5087531 fromDictionary:dict];
            self.5030474 = [self objectOrNilForKey:kFBCanBuy5030474 fromDictionary:dict];
            self.5002300 = [self objectOrNilForKey:kFBCanBuy5002300 fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.5041011 forKey:kFBCanBuy5041011];
    [mutableDict setValue:self.5036110 forKey:kFBCanBuy5036110];
    [mutableDict setValue:self.5038892 forKey:kFBCanBuy5038892];
    [mutableDict setValue:self.5037355 forKey:kFBCanBuy5037355];
    [mutableDict setValue:self.5039551 forKey:kFBCanBuy5039551];
    [mutableDict setValue:self.5087531 forKey:kFBCanBuy5087531];
    [mutableDict setValue:self.5030474 forKey:kFBCanBuy5030474];
    [mutableDict setValue:self.5002300 forKey:kFBCanBuy5002300];

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

    self.5041011 = [aDecoder decodeObjectForKey:kFBCanBuy5041011];
    self.5036110 = [aDecoder decodeObjectForKey:kFBCanBuy5036110];
    self.5038892 = [aDecoder decodeObjectForKey:kFBCanBuy5038892];
    self.5037355 = [aDecoder decodeObjectForKey:kFBCanBuy5037355];
    self.5039551 = [aDecoder decodeObjectForKey:kFBCanBuy5039551];
    self.5087531 = [aDecoder decodeObjectForKey:kFBCanBuy5087531];
    self.5030474 = [aDecoder decodeObjectForKey:kFBCanBuy5030474];
    self.5002300 = [aDecoder decodeObjectForKey:kFBCanBuy5002300];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_5041011 forKey:kFBCanBuy5041011];
    [aCoder encodeObject:_5036110 forKey:kFBCanBuy5036110];
    [aCoder encodeObject:_5038892 forKey:kFBCanBuy5038892];
    [aCoder encodeObject:_5037355 forKey:kFBCanBuy5037355];
    [aCoder encodeObject:_5039551 forKey:kFBCanBuy5039551];
    [aCoder encodeObject:_5087531 forKey:kFBCanBuy5087531];
    [aCoder encodeObject:_5030474 forKey:kFBCanBuy5030474];
    [aCoder encodeObject:_5002300 forKey:kFBCanBuy5002300];
}

- (id)copyWithZone:(NSZone *)zone
{
    FBCanBuy *copy = [[FBCanBuy alloc] init];
    
    if (copy) {

        copy.5041011 = [self.5041011 copyWithZone:zone];
        copy.5036110 = [self.5036110 copyWithZone:zone];
        copy.5038892 = [self.5038892 copyWithZone:zone];
        copy.5037355 = [self.5037355 copyWithZone:zone];
        copy.5039551 = [self.5039551 copyWithZone:zone];
        copy.5087531 = [self.5087531 copyWithZone:zone];
        copy.5030474 = [self.5030474 copyWithZone:zone];
        copy.5002300 = [self.5002300 copyWithZone:zone];
    }
    
    return copy;
}


@end
