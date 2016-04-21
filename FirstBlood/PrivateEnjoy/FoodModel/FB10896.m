//
//  FB10896.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FB10896.h"


NSString *const kFB10896Status = @"status";
NSString *const kFB10896Id = @"id";
NSString *const kFB10896Addr = @"addr";
NSString *const kFB10896Lat = @"lat";
NSString *const kFB10896Lng = @"lng";
NSString *const kFB10896Name = @"name";
NSString *const kFB10896CreateTime = @"createTime";


@interface FB10896 ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FB10896

@synthesize status = _status;
@synthesize 10896Identifier = _10896Identifier;
@synthesize addr = _addr;
@synthesize lat = _lat;
@synthesize lng = _lng;
@synthesize name = _name;
@synthesize createTime = _createTime;


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
            self.status = [[self objectOrNilForKey:kFB10896Status fromDictionary:dict] doubleValue];
            self.10896Identifier = [self objectOrNilForKey:kFB10896Id fromDictionary:dict];
            self.addr = [self objectOrNilForKey:kFB10896Addr fromDictionary:dict];
            self.lat = [[self objectOrNilForKey:kFB10896Lat fromDictionary:dict] doubleValue];
            self.lng = [[self objectOrNilForKey:kFB10896Lng fromDictionary:dict] doubleValue];
            self.name = [self objectOrNilForKey:kFB10896Name fromDictionary:dict];
            self.createTime = [[self objectOrNilForKey:kFB10896CreateTime fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.status] forKey:kFB10896Status];
    [mutableDict setValue:self.10896Identifier forKey:kFB10896Id];
    [mutableDict setValue:self.addr forKey:kFB10896Addr];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lat] forKey:kFB10896Lat];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lng] forKey:kFB10896Lng];
    [mutableDict setValue:self.name forKey:kFB10896Name];
    [mutableDict setValue:[NSNumber numberWithDouble:self.createTime] forKey:kFB10896CreateTime];

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

    self.status = [aDecoder decodeDoubleForKey:kFB10896Status];
    self.10896Identifier = [aDecoder decodeObjectForKey:kFB10896Id];
    self.addr = [aDecoder decodeObjectForKey:kFB10896Addr];
    self.lat = [aDecoder decodeDoubleForKey:kFB10896Lat];
    self.lng = [aDecoder decodeDoubleForKey:kFB10896Lng];
    self.name = [aDecoder decodeObjectForKey:kFB10896Name];
    self.createTime = [aDecoder decodeDoubleForKey:kFB10896CreateTime];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_status forKey:kFB10896Status];
    [aCoder encodeObject:_10896Identifier forKey:kFB10896Id];
    [aCoder encodeObject:_addr forKey:kFB10896Addr];
    [aCoder encodeDouble:_lat forKey:kFB10896Lat];
    [aCoder encodeDouble:_lng forKey:kFB10896Lng];
    [aCoder encodeObject:_name forKey:kFB10896Name];
    [aCoder encodeDouble:_createTime forKey:kFB10896CreateTime];
}

- (id)copyWithZone:(NSZone *)zone
{
    FB10896 *copy = [[FB10896 alloc] init];
    
    if (copy) {

        copy.status = self.status;
        copy.10896Identifier = [self.10896Identifier copyWithZone:zone];
        copy.addr = [self.addr copyWithZone:zone];
        copy.lat = self.lat;
        copy.lng = self.lng;
        copy.name = [self.name copyWithZone:zone];
        copy.createTime = self.createTime;
    }
    
    return copy;
}


@end
