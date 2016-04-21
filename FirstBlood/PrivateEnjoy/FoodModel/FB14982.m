//
//  FB14982.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FB14982.h"


NSString *const kFB14982Status = @"status";
NSString *const kFB14982Id = @"id";
NSString *const kFB14982Addr = @"addr";
NSString *const kFB14982Lat = @"lat";
NSString *const kFB14982Lng = @"lng";
NSString *const kFB14982Name = @"name";
NSString *const kFB14982CreateTime = @"createTime";


@interface FB14982 ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FB14982

@synthesize status = _status;
@synthesize 14982Identifier = _14982Identifier;
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
            self.status = [[self objectOrNilForKey:kFB14982Status fromDictionary:dict] doubleValue];
            self.14982Identifier = [self objectOrNilForKey:kFB14982Id fromDictionary:dict];
            self.addr = [self objectOrNilForKey:kFB14982Addr fromDictionary:dict];
            self.lat = [[self objectOrNilForKey:kFB14982Lat fromDictionary:dict] doubleValue];
            self.lng = [[self objectOrNilForKey:kFB14982Lng fromDictionary:dict] doubleValue];
            self.name = [self objectOrNilForKey:kFB14982Name fromDictionary:dict];
            self.createTime = [[self objectOrNilForKey:kFB14982CreateTime fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.status] forKey:kFB14982Status];
    [mutableDict setValue:self.14982Identifier forKey:kFB14982Id];
    [mutableDict setValue:self.addr forKey:kFB14982Addr];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lat] forKey:kFB14982Lat];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lng] forKey:kFB14982Lng];
    [mutableDict setValue:self.name forKey:kFB14982Name];
    [mutableDict setValue:[NSNumber numberWithDouble:self.createTime] forKey:kFB14982CreateTime];

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

    self.status = [aDecoder decodeDoubleForKey:kFB14982Status];
    self.14982Identifier = [aDecoder decodeObjectForKey:kFB14982Id];
    self.addr = [aDecoder decodeObjectForKey:kFB14982Addr];
    self.lat = [aDecoder decodeDoubleForKey:kFB14982Lat];
    self.lng = [aDecoder decodeDoubleForKey:kFB14982Lng];
    self.name = [aDecoder decodeObjectForKey:kFB14982Name];
    self.createTime = [aDecoder decodeDoubleForKey:kFB14982CreateTime];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_status forKey:kFB14982Status];
    [aCoder encodeObject:_14982Identifier forKey:kFB14982Id];
    [aCoder encodeObject:_addr forKey:kFB14982Addr];
    [aCoder encodeDouble:_lat forKey:kFB14982Lat];
    [aCoder encodeDouble:_lng forKey:kFB14982Lng];
    [aCoder encodeObject:_name forKey:kFB14982Name];
    [aCoder encodeDouble:_createTime forKey:kFB14982CreateTime];
}

- (id)copyWithZone:(NSZone *)zone
{
    FB14982 *copy = [[FB14982 alloc] init];
    
    if (copy) {

        copy.status = self.status;
        copy.14982Identifier = [self.14982Identifier copyWithZone:zone];
        copy.addr = [self.addr copyWithZone:zone];
        copy.lat = self.lat;
        copy.lng = self.lng;
        copy.name = [self.name copyWithZone:zone];
        copy.createTime = self.createTime;
    }
    
    return copy;
}


@end
