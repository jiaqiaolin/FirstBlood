//
//  FBCounts.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FBCounts.h"
#import "FB5041011.h"
#import "FB5036110.h"
#import "FB5038892.h"
#import "FB5037355.h"
#import "FB5039551.h"
#import "FB5087531.h"
#import "FB5030474.h"
#import "FB5002300.h"


NSString *const kFBCounts5041011 = @"5041011";
NSString *const kFBCounts5036110 = @"5036110";
NSString *const kFBCounts5038892 = @"5038892";
NSString *const kFBCounts5037355 = @"5037355";
NSString *const kFBCounts5039551 = @"5039551";
NSString *const kFBCounts5087531 = @"5087531";
NSString *const kFBCounts5030474 = @"5030474";
NSString *const kFBCounts5002300 = @"5002300";


@interface FBCounts ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FBCounts

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
            self.5041011 = [FB5041011 modelObjectWithDictionary:[dict objectForKey:kFBCounts5041011]];
            self.5036110 = [FB5036110 modelObjectWithDictionary:[dict objectForKey:kFBCounts5036110]];
            self.5038892 = [FB5038892 modelObjectWithDictionary:[dict objectForKey:kFBCounts5038892]];
            self.5037355 = [FB5037355 modelObjectWithDictionary:[dict objectForKey:kFBCounts5037355]];
            self.5039551 = [FB5039551 modelObjectWithDictionary:[dict objectForKey:kFBCounts5039551]];
            self.5087531 = [FB5087531 modelObjectWithDictionary:[dict objectForKey:kFBCounts5087531]];
            self.5030474 = [FB5030474 modelObjectWithDictionary:[dict objectForKey:kFBCounts5030474]];
            self.5002300 = [FB5002300 modelObjectWithDictionary:[dict objectForKey:kFBCounts5002300]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.5041011 dictionaryRepresentation] forKey:kFBCounts5041011];
    [mutableDict setValue:[self.5036110 dictionaryRepresentation] forKey:kFBCounts5036110];
    [mutableDict setValue:[self.5038892 dictionaryRepresentation] forKey:kFBCounts5038892];
    [mutableDict setValue:[self.5037355 dictionaryRepresentation] forKey:kFBCounts5037355];
    [mutableDict setValue:[self.5039551 dictionaryRepresentation] forKey:kFBCounts5039551];
    [mutableDict setValue:[self.5087531 dictionaryRepresentation] forKey:kFBCounts5087531];
    [mutableDict setValue:[self.5030474 dictionaryRepresentation] forKey:kFBCounts5030474];
    [mutableDict setValue:[self.5002300 dictionaryRepresentation] forKey:kFBCounts5002300];

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

    self.5041011 = [aDecoder decodeObjectForKey:kFBCounts5041011];
    self.5036110 = [aDecoder decodeObjectForKey:kFBCounts5036110];
    self.5038892 = [aDecoder decodeObjectForKey:kFBCounts5038892];
    self.5037355 = [aDecoder decodeObjectForKey:kFBCounts5037355];
    self.5039551 = [aDecoder decodeObjectForKey:kFBCounts5039551];
    self.5087531 = [aDecoder decodeObjectForKey:kFBCounts5087531];
    self.5030474 = [aDecoder decodeObjectForKey:kFBCounts5030474];
    self.5002300 = [aDecoder decodeObjectForKey:kFBCounts5002300];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_5041011 forKey:kFBCounts5041011];
    [aCoder encodeObject:_5036110 forKey:kFBCounts5036110];
    [aCoder encodeObject:_5038892 forKey:kFBCounts5038892];
    [aCoder encodeObject:_5037355 forKey:kFBCounts5037355];
    [aCoder encodeObject:_5039551 forKey:kFBCounts5039551];
    [aCoder encodeObject:_5087531 forKey:kFBCounts5087531];
    [aCoder encodeObject:_5030474 forKey:kFBCounts5030474];
    [aCoder encodeObject:_5002300 forKey:kFBCounts5002300];
}

- (id)copyWithZone:(NSZone *)zone
{
    FBCounts *copy = [[FBCounts alloc] init];
    
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
