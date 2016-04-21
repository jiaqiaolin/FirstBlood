//
//  FB1623717.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FB1623717.h"


NSString *const kFB1623717Province = @"province";
NSString *const kFB1623717Status = @"status";
NSString *const kFB1623717Tags = @"tags";
NSString *const kFB1623717Score = @"score";
NSString *const kFB1623717AvgPrice = @"avgPrice";
NSString *const kFB1623717Lng = @"lng";
NSString *const kFB1623717City = @"city";
NSString *const kFB1623717TelPhone = @"telPhone";
NSString *const kFB1623717Name = @"name";
NSString *const kFB1623717Imgs = @"imgs";
NSString *const kFB1623717Id = @"id";
NSString *const kFB1623717Descrip = @"descrip";
NSString *const kFB1623717Mobile = @"mobile";
NSString *const kFB1623717BrightPoints = @"brightPoints";
NSString *const kFB1623717AreaID = @"areaID";
NSString *const kFB1623717Lat = @"lat";
NSString *const kFB1623717County = @"county";
NSString *const kFB1623717CreateTime = @"createTime";
NSString *const kFB1623717Addr = @"addr";
NSString *const kFB1623717Logo = @"logo";
NSString *const kFB1623717Scene = @"scene";


@interface FB1623717 ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FB1623717

@synthesize province = _province;
@synthesize status = _status;
@synthesize tags = _tags;
@synthesize score = _score;
@synthesize avgPrice = _avgPrice;
@synthesize lng = _lng;
@synthesize city = _city;
@synthesize telPhone = _telPhone;
@synthesize name = _name;
@synthesize imgs = _imgs;
@synthesize 1623717Identifier = _1623717Identifier;
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
            self.province = [self objectOrNilForKey:kFB1623717Province fromDictionary:dict];
            self.status = [[self objectOrNilForKey:kFB1623717Status fromDictionary:dict] doubleValue];
            self.tags = [self objectOrNilForKey:kFB1623717Tags fromDictionary:dict];
            self.score = [[self objectOrNilForKey:kFB1623717Score fromDictionary:dict] doubleValue];
            self.avgPrice = [[self objectOrNilForKey:kFB1623717AvgPrice fromDictionary:dict] doubleValue];
            self.lng = [[self objectOrNilForKey:kFB1623717Lng fromDictionary:dict] doubleValue];
            self.city = [self objectOrNilForKey:kFB1623717City fromDictionary:dict];
            self.telPhone = [self objectOrNilForKey:kFB1623717TelPhone fromDictionary:dict];
            self.name = [self objectOrNilForKey:kFB1623717Name fromDictionary:dict];
            self.imgs = [self objectOrNilForKey:kFB1623717Imgs fromDictionary:dict];
            self.1623717Identifier = [self objectOrNilForKey:kFB1623717Id fromDictionary:dict];
            self.descrip = [self objectOrNilForKey:kFB1623717Descrip fromDictionary:dict];
            self.mobile = [self objectOrNilForKey:kFB1623717Mobile fromDictionary:dict];
            self.brightPoints = [self objectOrNilForKey:kFB1623717BrightPoints fromDictionary:dict];
            self.areaID = [self objectOrNilForKey:kFB1623717AreaID fromDictionary:dict];
            self.lat = [[self objectOrNilForKey:kFB1623717Lat fromDictionary:dict] doubleValue];
            self.county = [self objectOrNilForKey:kFB1623717County fromDictionary:dict];
            self.createTime = [[self objectOrNilForKey:kFB1623717CreateTime fromDictionary:dict] doubleValue];
            self.addr = [self objectOrNilForKey:kFB1623717Addr fromDictionary:dict];
            self.logo = [self objectOrNilForKey:kFB1623717Logo fromDictionary:dict];
            self.scene = [self objectOrNilForKey:kFB1623717Scene fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.province forKey:kFB1623717Province];
    [mutableDict setValue:[NSNumber numberWithDouble:self.status] forKey:kFB1623717Status];
    [mutableDict setValue:self.tags forKey:kFB1623717Tags];
    [mutableDict setValue:[NSNumber numberWithDouble:self.score] forKey:kFB1623717Score];
    [mutableDict setValue:[NSNumber numberWithDouble:self.avgPrice] forKey:kFB1623717AvgPrice];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lng] forKey:kFB1623717Lng];
    [mutableDict setValue:self.city forKey:kFB1623717City];
    [mutableDict setValue:self.telPhone forKey:kFB1623717TelPhone];
    [mutableDict setValue:self.name forKey:kFB1623717Name];
    [mutableDict setValue:self.imgs forKey:kFB1623717Imgs];
    [mutableDict setValue:self.1623717Identifier forKey:kFB1623717Id];
    [mutableDict setValue:self.descrip forKey:kFB1623717Descrip];
    [mutableDict setValue:self.mobile forKey:kFB1623717Mobile];
    [mutableDict setValue:self.brightPoints forKey:kFB1623717BrightPoints];
    [mutableDict setValue:self.areaID forKey:kFB1623717AreaID];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lat] forKey:kFB1623717Lat];
    [mutableDict setValue:self.county forKey:kFB1623717County];
    [mutableDict setValue:[NSNumber numberWithDouble:self.createTime] forKey:kFB1623717CreateTime];
    [mutableDict setValue:self.addr forKey:kFB1623717Addr];
    [mutableDict setValue:self.logo forKey:kFB1623717Logo];
    [mutableDict setValue:self.scene forKey:kFB1623717Scene];

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

    self.province = [aDecoder decodeObjectForKey:kFB1623717Province];
    self.status = [aDecoder decodeDoubleForKey:kFB1623717Status];
    self.tags = [aDecoder decodeObjectForKey:kFB1623717Tags];
    self.score = [aDecoder decodeDoubleForKey:kFB1623717Score];
    self.avgPrice = [aDecoder decodeDoubleForKey:kFB1623717AvgPrice];
    self.lng = [aDecoder decodeDoubleForKey:kFB1623717Lng];
    self.city = [aDecoder decodeObjectForKey:kFB1623717City];
    self.telPhone = [aDecoder decodeObjectForKey:kFB1623717TelPhone];
    self.name = [aDecoder decodeObjectForKey:kFB1623717Name];
    self.imgs = [aDecoder decodeObjectForKey:kFB1623717Imgs];
    self.1623717Identifier = [aDecoder decodeObjectForKey:kFB1623717Id];
    self.descrip = [aDecoder decodeObjectForKey:kFB1623717Descrip];
    self.mobile = [aDecoder decodeObjectForKey:kFB1623717Mobile];
    self.brightPoints = [aDecoder decodeObjectForKey:kFB1623717BrightPoints];
    self.areaID = [aDecoder decodeObjectForKey:kFB1623717AreaID];
    self.lat = [aDecoder decodeDoubleForKey:kFB1623717Lat];
    self.county = [aDecoder decodeObjectForKey:kFB1623717County];
    self.createTime = [aDecoder decodeDoubleForKey:kFB1623717CreateTime];
    self.addr = [aDecoder decodeObjectForKey:kFB1623717Addr];
    self.logo = [aDecoder decodeObjectForKey:kFB1623717Logo];
    self.scene = [aDecoder decodeObjectForKey:kFB1623717Scene];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_province forKey:kFB1623717Province];
    [aCoder encodeDouble:_status forKey:kFB1623717Status];
    [aCoder encodeObject:_tags forKey:kFB1623717Tags];
    [aCoder encodeDouble:_score forKey:kFB1623717Score];
    [aCoder encodeDouble:_avgPrice forKey:kFB1623717AvgPrice];
    [aCoder encodeDouble:_lng forKey:kFB1623717Lng];
    [aCoder encodeObject:_city forKey:kFB1623717City];
    [aCoder encodeObject:_telPhone forKey:kFB1623717TelPhone];
    [aCoder encodeObject:_name forKey:kFB1623717Name];
    [aCoder encodeObject:_imgs forKey:kFB1623717Imgs];
    [aCoder encodeObject:_1623717Identifier forKey:kFB1623717Id];
    [aCoder encodeObject:_descrip forKey:kFB1623717Descrip];
    [aCoder encodeObject:_mobile forKey:kFB1623717Mobile];
    [aCoder encodeObject:_brightPoints forKey:kFB1623717BrightPoints];
    [aCoder encodeObject:_areaID forKey:kFB1623717AreaID];
    [aCoder encodeDouble:_lat forKey:kFB1623717Lat];
    [aCoder encodeObject:_county forKey:kFB1623717County];
    [aCoder encodeDouble:_createTime forKey:kFB1623717CreateTime];
    [aCoder encodeObject:_addr forKey:kFB1623717Addr];
    [aCoder encodeObject:_logo forKey:kFB1623717Logo];
    [aCoder encodeObject:_scene forKey:kFB1623717Scene];
}

- (id)copyWithZone:(NSZone *)zone
{
    FB1623717 *copy = [[FB1623717 alloc] init];
    
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
        copy.imgs = [self.imgs copyWithZone:zone];
        copy.1623717Identifier = [self.1623717Identifier copyWithZone:zone];
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
