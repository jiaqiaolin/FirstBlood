//
//  FB1613492.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FB1613492.h"


NSString *const kFB1613492Province = @"province";
NSString *const kFB1613492Status = @"status";
NSString *const kFB1613492Tags = @"tags";
NSString *const kFB1613492Score = @"score";
NSString *const kFB1613492AvgPrice = @"avgPrice";
NSString *const kFB1613492Lng = @"lng";
NSString *const kFB1613492City = @"city";
NSString *const kFB1613492TelPhone = @"telPhone";
NSString *const kFB1613492Name = @"name";
NSString *const kFB1613492Id = @"id";
NSString *const kFB1613492Descrip = @"descrip";
NSString *const kFB1613492Mobile = @"mobile";
NSString *const kFB1613492BrightPoints = @"brightPoints";
NSString *const kFB1613492AreaID = @"areaID";
NSString *const kFB1613492Lat = @"lat";
NSString *const kFB1613492County = @"county";
NSString *const kFB1613492CreateTime = @"createTime";
NSString *const kFB1613492Addr = @"addr";
NSString *const kFB1613492Logo = @"logo";
NSString *const kFB1613492Scene = @"scene";


@interface FB1613492 ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FB1613492

@synthesize province = _province;
@synthesize status = _status;
@synthesize tags = _tags;
@synthesize score = _score;
@synthesize avgPrice = _avgPrice;
@synthesize lng = _lng;
@synthesize city = _city;
@synthesize telPhone = _telPhone;
@synthesize name = _name;
@synthesize 1613492Identifier = _1613492Identifier;
@synthesize descrip = _descrip;
@synthesize mobile = _mobile;
@synthesize brightPoints = _brightPoints;
@synthesize areaID = _areaID;
@synthesize lat = _lat;
@synthesize county = _county;
@synthesize createTime = _createTime;
@synthesize addr = _addr;
@synthesize logo = _logo;
@synthesize scene = _scene;


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
            self.province = [self objectOrNilForKey:kFB1613492Province fromDictionary:dict];
            self.status = [[self objectOrNilForKey:kFB1613492Status fromDictionary:dict] doubleValue];
            self.tags = [self objectOrNilForKey:kFB1613492Tags fromDictionary:dict];
            self.score = [[self objectOrNilForKey:kFB1613492Score fromDictionary:dict] doubleValue];
            self.avgPrice = [[self objectOrNilForKey:kFB1613492AvgPrice fromDictionary:dict] doubleValue];
            self.lng = [[self objectOrNilForKey:kFB1613492Lng fromDictionary:dict] doubleValue];
            self.city = [self objectOrNilForKey:kFB1613492City fromDictionary:dict];
            self.telPhone = [self objectOrNilForKey:kFB1613492TelPhone fromDictionary:dict];
            self.name = [self objectOrNilForKey:kFB1613492Name fromDictionary:dict];
            self.1613492Identifier = [self objectOrNilForKey:kFB1613492Id fromDictionary:dict];
            self.descrip = [self objectOrNilForKey:kFB1613492Descrip fromDictionary:dict];
            self.mobile = [self objectOrNilForKey:kFB1613492Mobile fromDictionary:dict];
            self.brightPoints = [self objectOrNilForKey:kFB1613492BrightPoints fromDictionary:dict];
            self.areaID = [self objectOrNilForKey:kFB1613492AreaID fromDictionary:dict];
            self.lat = [[self objectOrNilForKey:kFB1613492Lat fromDictionary:dict] doubleValue];
            self.county = [self objectOrNilForKey:kFB1613492County fromDictionary:dict];
            self.createTime = [[self objectOrNilForKey:kFB1613492CreateTime fromDictionary:dict] doubleValue];
            self.addr = [self objectOrNilForKey:kFB1613492Addr fromDictionary:dict];
            self.logo = [self objectOrNilForKey:kFB1613492Logo fromDictionary:dict];
            self.scene = [self objectOrNilForKey:kFB1613492Scene fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.province forKey:kFB1613492Province];
    [mutableDict setValue:[NSNumber numberWithDouble:self.status] forKey:kFB1613492Status];
    [mutableDict setValue:self.tags forKey:kFB1613492Tags];
    [mutableDict setValue:[NSNumber numberWithDouble:self.score] forKey:kFB1613492Score];
    [mutableDict setValue:[NSNumber numberWithDouble:self.avgPrice] forKey:kFB1613492AvgPrice];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lng] forKey:kFB1613492Lng];
    [mutableDict setValue:self.city forKey:kFB1613492City];
    [mutableDict setValue:self.telPhone forKey:kFB1613492TelPhone];
    [mutableDict setValue:self.name forKey:kFB1613492Name];
    [mutableDict setValue:self.1613492Identifier forKey:kFB1613492Id];
    [mutableDict setValue:self.descrip forKey:kFB1613492Descrip];
    [mutableDict setValue:self.mobile forKey:kFB1613492Mobile];
    [mutableDict setValue:self.brightPoints forKey:kFB1613492BrightPoints];
    [mutableDict setValue:self.areaID forKey:kFB1613492AreaID];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lat] forKey:kFB1613492Lat];
    [mutableDict setValue:self.county forKey:kFB1613492County];
    [mutableDict setValue:[NSNumber numberWithDouble:self.createTime] forKey:kFB1613492CreateTime];
    [mutableDict setValue:self.addr forKey:kFB1613492Addr];
    [mutableDict setValue:self.logo forKey:kFB1613492Logo];
    [mutableDict setValue:self.scene forKey:kFB1613492Scene];

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

    self.province = [aDecoder decodeObjectForKey:kFB1613492Province];
    self.status = [aDecoder decodeDoubleForKey:kFB1613492Status];
    self.tags = [aDecoder decodeObjectForKey:kFB1613492Tags];
    self.score = [aDecoder decodeDoubleForKey:kFB1613492Score];
    self.avgPrice = [aDecoder decodeDoubleForKey:kFB1613492AvgPrice];
    self.lng = [aDecoder decodeDoubleForKey:kFB1613492Lng];
    self.city = [aDecoder decodeObjectForKey:kFB1613492City];
    self.telPhone = [aDecoder decodeObjectForKey:kFB1613492TelPhone];
    self.name = [aDecoder decodeObjectForKey:kFB1613492Name];
    self.1613492Identifier = [aDecoder decodeObjectForKey:kFB1613492Id];
    self.descrip = [aDecoder decodeObjectForKey:kFB1613492Descrip];
    self.mobile = [aDecoder decodeObjectForKey:kFB1613492Mobile];
    self.brightPoints = [aDecoder decodeObjectForKey:kFB1613492BrightPoints];
    self.areaID = [aDecoder decodeObjectForKey:kFB1613492AreaID];
    self.lat = [aDecoder decodeDoubleForKey:kFB1613492Lat];
    self.county = [aDecoder decodeObjectForKey:kFB1613492County];
    self.createTime = [aDecoder decodeDoubleForKey:kFB1613492CreateTime];
    self.addr = [aDecoder decodeObjectForKey:kFB1613492Addr];
    self.logo = [aDecoder decodeObjectForKey:kFB1613492Logo];
    self.scene = [aDecoder decodeObjectForKey:kFB1613492Scene];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_province forKey:kFB1613492Province];
    [aCoder encodeDouble:_status forKey:kFB1613492Status];
    [aCoder encodeObject:_tags forKey:kFB1613492Tags];
    [aCoder encodeDouble:_score forKey:kFB1613492Score];
    [aCoder encodeDouble:_avgPrice forKey:kFB1613492AvgPrice];
    [aCoder encodeDouble:_lng forKey:kFB1613492Lng];
    [aCoder encodeObject:_city forKey:kFB1613492City];
    [aCoder encodeObject:_telPhone forKey:kFB1613492TelPhone];
    [aCoder encodeObject:_name forKey:kFB1613492Name];
    [aCoder encodeObject:_1613492Identifier forKey:kFB1613492Id];
    [aCoder encodeObject:_descrip forKey:kFB1613492Descrip];
    [aCoder encodeObject:_mobile forKey:kFB1613492Mobile];
    [aCoder encodeObject:_brightPoints forKey:kFB1613492BrightPoints];
    [aCoder encodeObject:_areaID forKey:kFB1613492AreaID];
    [aCoder encodeDouble:_lat forKey:kFB1613492Lat];
    [aCoder encodeObject:_county forKey:kFB1613492County];
    [aCoder encodeDouble:_createTime forKey:kFB1613492CreateTime];
    [aCoder encodeObject:_addr forKey:kFB1613492Addr];
    [aCoder encodeObject:_logo forKey:kFB1613492Logo];
    [aCoder encodeObject:_scene forKey:kFB1613492Scene];
}

- (id)copyWithZone:(NSZone *)zone
{
    FB1613492 *copy = [[FB1613492 alloc] init];
    
    if (copy) {

        copy.province = [self.province copyWithZone:zone];
        copy.status = self.status;
        copy.tags = [self.tags copyWithZone:zone];
        copy.score = self.score;
        copy.avgPrice = self.avgPrice;
        copy.lng = self.lng;
        copy.city = [self.city copyWithZone:zone];
        copy.telPhone = [self.telPhone copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
        copy.1613492Identifier = [self.1613492Identifier copyWithZone:zone];
        copy.descrip = [self.descrip copyWithZone:zone];
        copy.mobile = [self.mobile copyWithZone:zone];
        copy.brightPoints = [self.brightPoints copyWithZone:zone];
        copy.areaID = [self.areaID copyWithZone:zone];
        copy.lat = self.lat;
        copy.county = [self.county copyWithZone:zone];
        copy.createTime = self.createTime;
        copy.addr = [self.addr copyWithZone:zone];
        copy.logo = [self.logo copyWithZone:zone];
        copy.scene = [self.scene copyWithZone:zone];
    }
    
    return copy;
}


@end
