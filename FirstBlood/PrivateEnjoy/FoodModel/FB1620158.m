//
//  FB1620158.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FB1620158.h"


NSString *const kFB1620158Province = @"province";
NSString *const kFB1620158Status = @"status";
NSString *const kFB1620158Tags = @"tags";
NSString *const kFB1620158Score = @"score";
NSString *const kFB1620158AvgPrice = @"avgPrice";
NSString *const kFB1620158Lng = @"lng";
NSString *const kFB1620158City = @"city";
NSString *const kFB1620158TelPhone = @"telPhone";
NSString *const kFB1620158Name = @"name";
NSString *const kFB1620158Id = @"id";
NSString *const kFB1620158Descrip = @"descrip";
NSString *const kFB1620158Mobile = @"mobile";
NSString *const kFB1620158BrightPoints = @"brightPoints";
NSString *const kFB1620158AreaID = @"areaID";
NSString *const kFB1620158Lat = @"lat";
NSString *const kFB1620158County = @"county";
NSString *const kFB1620158CreateTime = @"createTime";
NSString *const kFB1620158Addr = @"addr";
NSString *const kFB1620158Logo = @"logo";
NSString *const kFB1620158Scene = @"scene";


@interface FB1620158 ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FB1620158

@synthesize province = _province;
@synthesize status = _status;
@synthesize tags = _tags;
@synthesize score = _score;
@synthesize avgPrice = _avgPrice;
@synthesize lng = _lng;
@synthesize city = _city;
@synthesize telPhone = _telPhone;
@synthesize name = _name;
@synthesize 1620158Identifier = _1620158Identifier;
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
            self.province = [self objectOrNilForKey:kFB1620158Province fromDictionary:dict];
            self.status = [[self objectOrNilForKey:kFB1620158Status fromDictionary:dict] doubleValue];
            self.tags = [self objectOrNilForKey:kFB1620158Tags fromDictionary:dict];
            self.score = [[self objectOrNilForKey:kFB1620158Score fromDictionary:dict] doubleValue];
            self.avgPrice = [[self objectOrNilForKey:kFB1620158AvgPrice fromDictionary:dict] doubleValue];
            self.lng = [[self objectOrNilForKey:kFB1620158Lng fromDictionary:dict] doubleValue];
            self.city = [self objectOrNilForKey:kFB1620158City fromDictionary:dict];
            self.telPhone = [self objectOrNilForKey:kFB1620158TelPhone fromDictionary:dict];
            self.name = [self objectOrNilForKey:kFB1620158Name fromDictionary:dict];
            self.1620158Identifier = [self objectOrNilForKey:kFB1620158Id fromDictionary:dict];
            self.descrip = [self objectOrNilForKey:kFB1620158Descrip fromDictionary:dict];
            self.mobile = [self objectOrNilForKey:kFB1620158Mobile fromDictionary:dict];
            self.brightPoints = [self objectOrNilForKey:kFB1620158BrightPoints fromDictionary:dict];
            self.areaID = [self objectOrNilForKey:kFB1620158AreaID fromDictionary:dict];
            self.lat = [[self objectOrNilForKey:kFB1620158Lat fromDictionary:dict] doubleValue];
            self.county = [self objectOrNilForKey:kFB1620158County fromDictionary:dict];
            self.createTime = [[self objectOrNilForKey:kFB1620158CreateTime fromDictionary:dict] doubleValue];
            self.addr = [self objectOrNilForKey:kFB1620158Addr fromDictionary:dict];
            self.logo = [self objectOrNilForKey:kFB1620158Logo fromDictionary:dict];
            self.scene = [self objectOrNilForKey:kFB1620158Scene fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.province forKey:kFB1620158Province];
    [mutableDict setValue:[NSNumber numberWithDouble:self.status] forKey:kFB1620158Status];
    [mutableDict setValue:self.tags forKey:kFB1620158Tags];
    [mutableDict setValue:[NSNumber numberWithDouble:self.score] forKey:kFB1620158Score];
    [mutableDict setValue:[NSNumber numberWithDouble:self.avgPrice] forKey:kFB1620158AvgPrice];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lng] forKey:kFB1620158Lng];
    [mutableDict setValue:self.city forKey:kFB1620158City];
    [mutableDict setValue:self.telPhone forKey:kFB1620158TelPhone];
    [mutableDict setValue:self.name forKey:kFB1620158Name];
    [mutableDict setValue:self.1620158Identifier forKey:kFB1620158Id];
    [mutableDict setValue:self.descrip forKey:kFB1620158Descrip];
    [mutableDict setValue:self.mobile forKey:kFB1620158Mobile];
    [mutableDict setValue:self.brightPoints forKey:kFB1620158BrightPoints];
    [mutableDict setValue:self.areaID forKey:kFB1620158AreaID];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lat] forKey:kFB1620158Lat];
    [mutableDict setValue:self.county forKey:kFB1620158County];
    [mutableDict setValue:[NSNumber numberWithDouble:self.createTime] forKey:kFB1620158CreateTime];
    [mutableDict setValue:self.addr forKey:kFB1620158Addr];
    [mutableDict setValue:self.logo forKey:kFB1620158Logo];
    [mutableDict setValue:self.scene forKey:kFB1620158Scene];

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

    self.province = [aDecoder decodeObjectForKey:kFB1620158Province];
    self.status = [aDecoder decodeDoubleForKey:kFB1620158Status];
    self.tags = [aDecoder decodeObjectForKey:kFB1620158Tags];
    self.score = [aDecoder decodeDoubleForKey:kFB1620158Score];
    self.avgPrice = [aDecoder decodeDoubleForKey:kFB1620158AvgPrice];
    self.lng = [aDecoder decodeDoubleForKey:kFB1620158Lng];
    self.city = [aDecoder decodeObjectForKey:kFB1620158City];
    self.telPhone = [aDecoder decodeObjectForKey:kFB1620158TelPhone];
    self.name = [aDecoder decodeObjectForKey:kFB1620158Name];
    self.1620158Identifier = [aDecoder decodeObjectForKey:kFB1620158Id];
    self.descrip = [aDecoder decodeObjectForKey:kFB1620158Descrip];
    self.mobile = [aDecoder decodeObjectForKey:kFB1620158Mobile];
    self.brightPoints = [aDecoder decodeObjectForKey:kFB1620158BrightPoints];
    self.areaID = [aDecoder decodeObjectForKey:kFB1620158AreaID];
    self.lat = [aDecoder decodeDoubleForKey:kFB1620158Lat];
    self.county = [aDecoder decodeObjectForKey:kFB1620158County];
    self.createTime = [aDecoder decodeDoubleForKey:kFB1620158CreateTime];
    self.addr = [aDecoder decodeObjectForKey:kFB1620158Addr];
    self.logo = [aDecoder decodeObjectForKey:kFB1620158Logo];
    self.scene = [aDecoder decodeObjectForKey:kFB1620158Scene];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_province forKey:kFB1620158Province];
    [aCoder encodeDouble:_status forKey:kFB1620158Status];
    [aCoder encodeObject:_tags forKey:kFB1620158Tags];
    [aCoder encodeDouble:_score forKey:kFB1620158Score];
    [aCoder encodeDouble:_avgPrice forKey:kFB1620158AvgPrice];
    [aCoder encodeDouble:_lng forKey:kFB1620158Lng];
    [aCoder encodeObject:_city forKey:kFB1620158City];
    [aCoder encodeObject:_telPhone forKey:kFB1620158TelPhone];
    [aCoder encodeObject:_name forKey:kFB1620158Name];
    [aCoder encodeObject:_1620158Identifier forKey:kFB1620158Id];
    [aCoder encodeObject:_descrip forKey:kFB1620158Descrip];
    [aCoder encodeObject:_mobile forKey:kFB1620158Mobile];
    [aCoder encodeObject:_brightPoints forKey:kFB1620158BrightPoints];
    [aCoder encodeObject:_areaID forKey:kFB1620158AreaID];
    [aCoder encodeDouble:_lat forKey:kFB1620158Lat];
    [aCoder encodeObject:_county forKey:kFB1620158County];
    [aCoder encodeDouble:_createTime forKey:kFB1620158CreateTime];
    [aCoder encodeObject:_addr forKey:kFB1620158Addr];
    [aCoder encodeObject:_logo forKey:kFB1620158Logo];
    [aCoder encodeObject:_scene forKey:kFB1620158Scene];
}

- (id)copyWithZone:(NSZone *)zone
{
    FB1620158 *copy = [[FB1620158 alloc] init];
    
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
        copy.1620158Identifier = [self.1620158Identifier copyWithZone:zone];
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
