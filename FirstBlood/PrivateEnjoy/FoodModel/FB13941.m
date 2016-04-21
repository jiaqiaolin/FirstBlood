//
//  FB13941.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FB13941.h"


NSString *const kFB13941Status = @"status";
NSString *const kFB13941Id = @"id";
NSString *const kFB13941Addr = @"addr";
NSString *const kFB13941Lat = @"lat";
NSString *const kFB13941Lng = @"lng";
NSString *const kFB13941Name = @"name";
NSString *const kFB13941CreateTime = @"createTime";


@interface FB13941 ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FB13941

@synthesize status = _status;
@synthesize 13941Identifier = _13941Identifier;
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
            self.status = [[self objectOrNilForKey:kFB13941Status fromDictionary:dict] doubleValue];
            self.13941Identifier = [self objectOrNilForKey:kFB13941Id fromDictionary:dict];
            self.addr = [self objectOrNilForKey:kFB13941Addr fromDictionary:dict];
            self.lat = [[self objectOrNilForKey:kFB13941Lat fromDictionary:dict] doubleValue];
            self.lng = [[self objectOrNilForKey:kFB13941Lng fromDictionary:dict] doubleValue];
            self.name = [self objectOrNilForKey:kFB13941Name fromDictionary:dict];
            self.createTime = [[self objectOrNilForKey:kFB13941CreateTime fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.status] forKey:kFB13941Status];
    [mutableDict setValue:self.13941Identifier forKey:kFB13941Id];
    [mutableDict setValue:self.addr forKey:kFB13941Addr];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lat] forKey:kFB13941Lat];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lng] forKey:kFB13941Lng];
    [mutableDict setValue:self.name forKey:kFB13941Name];
    [mutableDict setValue:[NSNumber numberWithDouble:self.createTime] forKey:kFB13941CreateTime];

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

    self.status = [aDecoder decodeDoubleForKey:kFB13941Status];
    self.13941Identifier = [aDecoder decodeObjectForKey:kFB13941Id];
    self.addr = [aDecoder decodeObjectForKey:kFB13941Addr];
    self.lat = [aDecoder decodeDoubleForKey:kFB13941Lat];
    self.lng = [aDecoder decodeDoubleForKey:kFB13941Lng];
    self.name = [aDecoder decodeObjectForKey:kFB13941Name];
    self.createTime = [aDecoder decodeDoubleForKey:kFB13941CreateTime];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_status forKey:kFB13941Status];
    [aCoder encodeObject:_13941Identifier forKey:kFB13941Id];
    [aCoder encodeObject:_addr forKey:kFB13941Addr];
    [aCoder encodeDouble:_lat forKey:kFB13941Lat];
    [aCoder encodeDouble:_lng forKey:kFB13941Lng];
    [aCoder encodeObject:_name forKey:kFB13941Name];
    [aCoder encodeDouble:_createTime forKey:kFB13941CreateTime];
}

- (id)copyWithZone:(NSZone *)zone
{
    FB13941 *copy = [[FB13941 alloc] init];
    
    if (copy) {

        copy.status = self.status;
        copy.13941Identifier = [self.13941Identifier copyWithZone:zone];
        copy.addr = [self.addr copyWithZone:zone];
        copy.lat = self.lat;
        copy.lng = self.lng;
        copy.name = [self.name copyWithZone:zone];
        copy.createTime = self.createTime;
    }
    
    return copy;
}


@end
