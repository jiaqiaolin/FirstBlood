//
//  FB1631889.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FB1631889.h"


NSString *const kFB1631889Province = @"province";
NSString *const kFB1631889Status = @"status";
NSString *const kFB1631889Tags = @"tags";
NSString *const kFB1631889Score = @"score";
NSString *const kFB1631889AvgPrice = @"avgPrice";
NSString *const kFB1631889Lng = @"lng";
NSString *const kFB1631889City = @"city";
NSString *const kFB1631889TelPhone = @"telPhone";
NSString *const kFB1631889Name = @"name";
NSString *const kFB1631889Imgs = @"imgs";
NSString *const kFB1631889Id = @"id";
NSString *const kFB1631889Descrip = @"descrip";
NSString *const kFB1631889Mobile = @"mobile";
NSString *const kFB1631889BrightPoints = @"brightPoints";
NSString *const kFB1631889AreaID = @"areaID";
NSString *const kFB1631889Lat = @"lat";
NSString *const kFB1631889County = @"county";
NSString *const kFB1631889CreateTime = @"createTime";
NSString *const kFB1631889Addr = @"addr";
NSString *const kFB1631889Logo = @"logo";
NSString *const kFB1631889Scene = @"scene";


@interface FB1631889 ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FB1631889

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
@synthesize 1631889Identifier = _1631889Identifier;
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
            self.province = [self objectOrNilForKey:kFB1631889Province fromDictionary:dict];
            self.status = [[self objectOrNilForKey:kFB1631889Status fromDictionary:dict] doubleValue];
            self.tags = [self objectOrNilForKey:kFB1631889Tags fromDictionary:dict];
            self.score = [[self objectOrNilForKey:kFB1631889Score fromDictionary:dict] doubleValue];
            self.avgPrice = [[self objectOrNilForKey:kFB1631889AvgPrice fromDictionary:dict] doubleValue];
            self.lng = [[self objectOrNilForKey:kFB1631889Lng fromDictionary:dict] doubleValue];
            self.city = [self objectOrNilForKey:kFB1631889City fromDictionary:dict];
            self.telPhone = [self objectOrNilForKey:kFB1631889TelPhone fromDictionary:dict];
            self.name = [self objectOrNilForKey:kFB1631889Name fromDictionary:dict];
            self.imgs = [self objectOrNilForKey:kFB1631889Imgs fromDictionary:dict];
            self.1631889Identifier = [self objectOrNilForKey:kFB1631889Id fromDictionary:dict];
            self.descrip = [self objectOrNilForKey:kFB1631889Descrip fromDictionary:dict];
            self.mobile = [self objectOrNilForKey:kFB1631889Mobile fromDictionary:dict];
            self.brightPoints = [self objectOrNilForKey:kFB1631889BrightPoints fromDictionary:dict];
            self.areaID = [self objectOrNilForKey:kFB1631889AreaID fromDictionary:dict];
            self.lat = [[self objectOrNilForKey:kFB1631889Lat fromDictionary:dict] doubleValue];
            self.county = [self objectOrNilForKey:kFB1631889County fromDictionary:dict];
            self.createTime = [[self objectOrNilForKey:kFB1631889CreateTime fromDictionary:dict] doubleValue];
            self.addr = [self objectOrNilForKey:kFB1631889Addr fromDictionary:dict];
            self.logo = [self objectOrNilForKey:kFB1631889Logo fromDictionary:dict];
            self.scene = [self objectOrNilForKey:kFB1631889Scene fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.province forKey:kFB1631889Province];
    [mutableDict setValue:[NSNumber numberWithDouble:self.status] forKey:kFB1631889Status];
    [mutableDict setValue:self.tags forKey:kFB1631889Tags];
    [mutableDict setValue:[NSNumber numberWithDouble:self.score] forKey:kFB1631889Score];
    [mutableDict setValue:[NSNumber numberWithDouble:self.avgPrice] forKey:kFB1631889AvgPrice];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lng] forKey:kFB1631889Lng];
    [mutableDict setValue:self.city forKey:kFB1631889City];
    [mutableDict setValue:self.telPhone forKey:kFB1631889TelPhone];
    [mutableDict setValue:self.name forKey:kFB1631889Name];
    [mutableDict setValue:self.imgs forKey:kFB1631889Imgs];
    [mutableDict setValue:self.1631889Identifier forKey:kFB1631889Id];
    [mutableDict setValue:self.descrip forKey:kFB1631889Descrip];
    [mutableDict setValue:self.mobile forKey:kFB1631889Mobile];
    [mutableDict setValue:self.brightPoints forKey:kFB1631889BrightPoints];
    [mutableDict setValue:self.areaID forKey:kFB1631889AreaID];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lat] forKey:kFB1631889Lat];
    [mutableDict setValue:self.county forKey:kFB1631889County];
    [mutableDict setValue:[NSNumber numberWithDouble:self.createTime] forKey:kFB1631889CreateTime];
    [mutableDict setValue:self.addr forKey:kFB1631889Addr];
    [mutableDict setValue:self.logo forKey:kFB1631889Logo];
    [mutableDict setValue:self.scene forKey:kFB1631889Scene];

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

    self.province = [aDecoder decodeObjectForKey:kFB1631889Province];
    self.status = [aDecoder decodeDoubleForKey:kFB1631889Status];
    self.tags = [aDecoder decodeObjectForKey:kFB1631889Tags];
    self.score = [aDecoder decodeDoubleForKey:kFB1631889Score];
    self.avgPrice = [aDecoder decodeDoubleForKey:kFB1631889AvgPrice];
    self.lng = [aDecoder decodeDoubleForKey:kFB1631889Lng];
    self.city = [aDecoder decodeObjectForKey:kFB1631889City];
    self.telPhone = [aDecoder decodeObjectForKey:kFB1631889TelPhone];
    self.name = [aDecoder decodeObjectForKey:kFB1631889Name];
    self.imgs = [aDecoder decodeObjectForKey:kFB1631889Imgs];
    self.1631889Identifier = [aDecoder decodeObjectForKey:kFB1631889Id];
    self.descrip = [aDecoder decodeObjectForKey:kFB1631889Descrip];
    self.mobile = [aDecoder decodeObjectForKey:kFB1631889Mobile];
    self.brightPoints = [aDecoder decodeObjectForKey:kFB1631889BrightPoints];
    self.areaID = [aDecoder decodeObjectForKey:kFB1631889AreaID];
    self.lat = [aDecoder decodeDoubleForKey:kFB1631889Lat];
    self.county = [aDecoder decodeObjectForKey:kFB1631889County];
    self.createTime = [aDecoder decodeDoubleForKey:kFB1631889CreateTime];
    self.addr = [aDecoder decodeObjectForKey:kFB1631889Addr];
    self.logo = [aDecoder decodeObjectForKey:kFB1631889Logo];
    self.scene = [aDecoder decodeObjectForKey:kFB1631889Scene];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_province forKey:kFB1631889Province];
    [aCoder encodeDouble:_status forKey:kFB1631889Status];
    [aCoder encodeObject:_tags forKey:kFB1631889Tags];
    [aCoder encodeDouble:_score forKey:kFB1631889Score];
    [aCoder encodeDouble:_avgPrice forKey:kFB1631889AvgPrice];
    [aCoder encodeDouble:_lng forKey:kFB1631889Lng];
    [aCoder encodeObject:_city forKey:kFB1631889City];
    [aCoder encodeObject:_telPhone forKey:kFB1631889TelPhone];
    [aCoder encodeObject:_name forKey:kFB1631889Name];
    [aCoder encodeObject:_imgs forKey:kFB1631889Imgs];
    [aCoder encodeObject:_1631889Identifier forKey:kFB1631889Id];
    [aCoder encodeObject:_descrip forKey:kFB1631889Descrip];
    [aCoder encodeObject:_mobile forKey:kFB1631889Mobile];
    [aCoder encodeObject:_brightPoints forKey:kFB1631889BrightPoints];
    [aCoder encodeObject:_areaID forKey:kFB1631889AreaID];
    [aCoder encodeDouble:_lat forKey:kFB1631889Lat];
    [aCoder encodeObject:_county forKey:kFB1631889County];
    [aCoder encodeDouble:_createTime forKey:kFB1631889CreateTime];
    [aCoder encodeObject:_addr forKey:kFB1631889Addr];
    [aCoder encodeObject:_logo forKey:kFB1631889Logo];
    [aCoder encodeObject:_scene forKey:kFB1631889Scene];
}

- (id)copyWithZone:(NSZone *)zone
{
    FB1631889 *copy = [[FB1631889 alloc] init];
    
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
        copy.1631889Identifier = [self.1631889Identifier copyWithZone:zone];
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
