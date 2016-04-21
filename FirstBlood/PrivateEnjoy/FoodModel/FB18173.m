//
//  FB18173.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FB18173.h"


NSString *const kFB18173Status = @"status";
NSString *const kFB18173Id = @"id";
NSString *const kFB18173Addr = @"addr";
NSString *const kFB18173Lat = @"lat";
NSString *const kFB18173Lng = @"lng";
NSString *const kFB18173Name = @"name";
NSString *const kFB18173CreateTime = @"createTime";


@interface FB18173 ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FB18173

@synthesize status = _status;
@synthesize 18173Identifier = _18173Identifier;
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
            self.status = [[self objectOrNilForKey:kFB18173Status fromDictionary:dict] doubleValue];
            self.18173Identifier = [self objectOrNilForKey:kFB18173Id fromDictionary:dict];
            self.addr = [self objectOrNilForKey:kFB18173Addr fromDictionary:dict];
            self.lat = [[self objectOrNilForKey:kFB18173Lat fromDictionary:dict] doubleValue];
            self.lng = [[self objectOrNilForKey:kFB18173Lng fromDictionary:dict] doubleValue];
            self.name = [self objectOrNilForKey:kFB18173Name fromDictionary:dict];
            self.createTime = [[self objectOrNilForKey:kFB18173CreateTime fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.status] forKey:kFB18173Status];
    [mutableDict setValue:self.18173Identifier forKey:kFB18173Id];
    [mutableDict setValue:self.addr forKey:kFB18173Addr];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lat] forKey:kFB18173Lat];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lng] forKey:kFB18173Lng];
    [mutableDict setValue:self.name forKey:kFB18173Name];
    [mutableDict setValue:[NSNumber numberWithDouble:self.createTime] forKey:kFB18173CreateTime];

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

    self.status = [aDecoder decodeDoubleForKey:kFB18173Status];
    self.18173Identifier = [aDecoder decodeObjectForKey:kFB18173Id];
    self.addr = [aDecoder decodeObjectForKey:kFB18173Addr];
    self.lat = [aDecoder decodeDoubleForKey:kFB18173Lat];
    self.lng = [aDecoder decodeDoubleForKey:kFB18173Lng];
    self.name = [aDecoder decodeObjectForKey:kFB18173Name];
    self.createTime = [aDecoder decodeDoubleForKey:kFB18173CreateTime];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_status forKey:kFB18173Status];
    [aCoder encodeObject:_18173Identifier forKey:kFB18173Id];
    [aCoder encodeObject:_addr forKey:kFB18173Addr];
    [aCoder encodeDouble:_lat forKey:kFB18173Lat];
    [aCoder encodeDouble:_lng forKey:kFB18173Lng];
    [aCoder encodeObject:_name forKey:kFB18173Name];
    [aCoder encodeDouble:_createTime forKey:kFB18173CreateTime];
}

- (id)copyWithZone:(NSZone *)zone
{
    FB18173 *copy = [[FB18173 alloc] init];
    
    if (copy) {

        copy.status = self.status;
        copy.18173Identifier = [self.18173Identifier copyWithZone:zone];
        copy.addr = [self.addr copyWithZone:zone];
        copy.lat = self.lat;
        copy.lng = self.lng;
        copy.name = [self.name copyWithZone:zone];
        copy.createTime = self.createTime;
    }
    
    return copy;
}


@end
