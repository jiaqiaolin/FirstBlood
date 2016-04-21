//
//  FB1625305.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FB1625305.h"


NSString *const kFB1625305Province = @"province";
NSString *const kFB1625305Status = @"status";
NSString *const kFB1625305Tags = @"tags";
NSString *const kFB1625305Score = @"score";
NSString *const kFB1625305AvgPrice = @"avgPrice";
NSString *const kFB1625305Lng = @"lng";
NSString *const kFB1625305City = @"city";
NSString *const kFB1625305TelPhone = @"telPhone";
NSString *const kFB1625305Name = @"name";
NSString *const kFB1625305Imgs = @"imgs";
NSString *const kFB1625305Id = @"id";
NSString *const kFB1625305Descrip = @"descrip";
NSString *const kFB1625305Mobile = @"mobile";
NSString *const kFB1625305BrightPoints = @"brightPoints";
NSString *const kFB1625305AreaID = @"areaID";
NSString *const kFB1625305Lat = @"lat";
NSString *const kFB1625305County = @"county";
NSString *const kFB1625305CreateTime = @"createTime";
NSString *const kFB1625305Addr = @"addr";
NSString *const kFB1625305Logo = @"logo";
NSString *const kFB1625305Scene = @"scene";


@interface FB1625305 ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FB1625305

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
@synthesize 1625305Identifier = _1625305Identifier;
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
            self.province = [self objectOrNilForKey:kFB1625305Province fromDictionary:dict];
            self.status = [[self objectOrNilForKey:kFB1625305Status fromDictionary:dict] doubleValue];
            self.tags = [self objectOrNilForKey:kFB1625305Tags fromDictionary:dict];
            self.score = [[self objectOrNilForKey:kFB1625305Score fromDictionary:dict] doubleValue];
            self.avgPrice = [[self objectOrNilForKey:kFB1625305AvgPrice fromDictionary:dict] doubleValue];
            self.lng = [[self objectOrNilForKey:kFB1625305Lng fromDictionary:dict] doubleValue];
            self.city = [self objectOrNilForKey:kFB1625305City fromDictionary:dict];
            self.telPhone = [self objectOrNilForKey:kFB1625305TelPhone fromDictionary:dict];
            self.name = [self objectOrNilForKey:kFB1625305Name fromDictionary:dict];
            self.imgs = [self objectOrNilForKey:kFB1625305Imgs fromDictionary:dict];
            self.1625305Identifier = [self objectOrNilForKey:kFB1625305Id fromDictionary:dict];
            self.descrip = [self objectOrNilForKey:kFB1625305Descrip fromDictionary:dict];
            self.mobile = [self objectOrNilForKey:kFB1625305Mobile fromDictionary:dict];
            self.brightPoints = [self objectOrNilForKey:kFB1625305BrightPoints fromDictionary:dict];
            self.areaID = [self objectOrNilForKey:kFB1625305AreaID fromDictionary:dict];
            self.lat = [[self objectOrNilForKey:kFB1625305Lat fromDictionary:dict] doubleValue];
            self.county = [self objectOrNilForKey:kFB1625305County fromDictionary:dict];
            self.createTime = [[self objectOrNilForKey:kFB1625305CreateTime fromDictionary:dict] doubleValue];
            self.addr = [self objectOrNilForKey:kFB1625305Addr fromDictionary:dict];
            self.logo = [self objectOrNilForKey:kFB1625305Logo fromDictionary:dict];
            self.scene = [self objectOrNilForKey:kFB1625305Scene fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.province forKey:kFB1625305Province];
    [mutableDict setValue:[NSNumber numberWithDouble:self.status] forKey:kFB1625305Status];
    [mutableDict setValue:self.tags forKey:kFB1625305Tags];
    [mutableDict setValue:[NSNumber numberWithDouble:self.score] forKey:kFB1625305Score];
    [mutableDict setValue:[NSNumber numberWithDouble:self.avgPrice] forKey:kFB1625305AvgPrice];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lng] forKey:kFB1625305Lng];
    [mutableDict setValue:self.city forKey:kFB1625305City];
    [mutableDict setValue:self.telPhone forKey:kFB1625305TelPhone];
    [mutableDict setValue:self.name forKey:kFB1625305Name];
    [mutableDict setValue:self.imgs forKey:kFB1625305Imgs];
    [mutableDict setValue:self.1625305Identifier forKey:kFB1625305Id];
    [mutableDict setValue:self.descrip forKey:kFB1625305Descrip];
    [mutableDict setValue:self.mobile forKey:kFB1625305Mobile];
    [mutableDict setValue:self.brightPoints forKey:kFB1625305BrightPoints];
    [mutableDict setValue:self.areaID forKey:kFB1625305AreaID];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lat] forKey:kFB1625305Lat];
    [mutableDict setValue:self.county forKey:kFB1625305County];
    [mutableDict setValue:[NSNumber numberWithDouble:self.createTime] forKey:kFB1625305CreateTime];
    [mutableDict setValue:self.addr forKey:kFB1625305Addr];
    [mutableDict setValue:self.logo forKey:kFB1625305Logo];
    [mutableDict setValue:self.scene forKey:kFB1625305Scene];

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

    self.province = [aDecoder decodeObjectForKey:kFB1625305Province];
    self.status = [aDecoder decodeDoubleForKey:kFB1625305Status];
    self.tags = [aDecoder decodeObjectForKey:kFB1625305Tags];
    self.score = [aDecoder decodeDoubleForKey:kFB1625305Score];
    self.avgPrice = [aDecoder decodeDoubleForKey:kFB1625305AvgPrice];
    self.lng = [aDecoder decodeDoubleForKey:kFB1625305Lng];
    self.city = [aDecoder decodeObjectForKey:kFB1625305City];
    self.telPhone = [aDecoder decodeObjectForKey:kFB1625305TelPhone];
    self.name = [aDecoder decodeObjectForKey:kFB1625305Name];
    self.imgs = [aDecoder decodeObjectForKey:kFB1625305Imgs];
    self.1625305Identifier = [aDecoder decodeObjectForKey:kFB1625305Id];
    self.descrip = [aDecoder decodeObjectForKey:kFB1625305Descrip];
    self.mobile = [aDecoder decodeObjectForKey:kFB1625305Mobile];
    self.brightPoints = [aDecoder decodeObjectForKey:kFB1625305BrightPoints];
    self.areaID = [aDecoder decodeObjectForKey:kFB1625305AreaID];
    self.lat = [aDecoder decodeDoubleForKey:kFB1625305Lat];
    self.county = [aDecoder decodeObjectForKey:kFB1625305County];
    self.createTime = [aDecoder decodeDoubleForKey:kFB1625305CreateTime];
    self.addr = [aDecoder decodeObjectForKey:kFB1625305Addr];
    self.logo = [aDecoder decodeObjectForKey:kFB1625305Logo];
    self.scene = [aDecoder decodeObjectForKey:kFB1625305Scene];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_province forKey:kFB1625305Province];
    [aCoder encodeDouble:_status forKey:kFB1625305Status];
    [aCoder encodeObject:_tags forKey:kFB1625305Tags];
    [aCoder encodeDouble:_score forKey:kFB1625305Score];
    [aCoder encodeDouble:_avgPrice forKey:kFB1625305AvgPrice];
    [aCoder encodeDouble:_lng forKey:kFB1625305Lng];
    [aCoder encodeObject:_city forKey:kFB1625305City];
    [aCoder encodeObject:_telPhone forKey:kFB1625305TelPhone];
    [aCoder encodeObject:_name forKey:kFB1625305Name];
    [aCoder encodeObject:_imgs forKey:kFB1625305Imgs];
    [aCoder encodeObject:_1625305Identifier forKey:kFB1625305Id];
    [aCoder encodeObject:_descrip forKey:kFB1625305Descrip];
    [aCoder encodeObject:_mobile forKey:kFB1625305Mobile];
    [aCoder encodeObject:_brightPoints forKey:kFB1625305BrightPoints];
    [aCoder encodeObject:_areaID forKey:kFB1625305AreaID];
    [aCoder encodeDouble:_lat forKey:kFB1625305Lat];
    [aCoder encodeObject:_county forKey:kFB1625305County];
    [aCoder encodeDouble:_createTime forKey:kFB1625305CreateTime];
    [aCoder encodeObject:_addr forKey:kFB1625305Addr];
    [aCoder encodeObject:_logo forKey:kFB1625305Logo];
    [aCoder encodeObject:_scene forKey:kFB1625305Scene];
}

- (id)copyWithZone:(NSZone *)zone
{
    FB1625305 *copy = [[FB1625305 alloc] init];
    
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
        copy.1625305Identifier = [self.1625305Identifier copyWithZone:zone];
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
