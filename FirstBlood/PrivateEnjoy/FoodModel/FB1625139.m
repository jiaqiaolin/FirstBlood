//
//  FB1625139.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FB1625139.h"


NSString *const kFB1625139Province = @"province";
NSString *const kFB1625139Status = @"status";
NSString *const kFB1625139Tags = @"tags";
NSString *const kFB1625139Score = @"score";
NSString *const kFB1625139AvgPrice = @"avgPrice";
NSString *const kFB1625139Lng = @"lng";
NSString *const kFB1625139City = @"city";
NSString *const kFB1625139TelPhone = @"telPhone";
NSString *const kFB1625139Name = @"name";
NSString *const kFB1625139Imgs = @"imgs";
NSString *const kFB1625139Id = @"id";
NSString *const kFB1625139Descrip = @"descrip";
NSString *const kFB1625139Mobile = @"mobile";
NSString *const kFB1625139BrightPoints = @"brightPoints";
NSString *const kFB1625139AreaID = @"areaID";
NSString *const kFB1625139Lat = @"lat";
NSString *const kFB1625139County = @"county";
NSString *const kFB1625139CreateTime = @"createTime";
NSString *const kFB1625139Addr = @"addr";
NSString *const kFB1625139Logo = @"logo";
NSString *const kFB1625139Scene = @"scene";


@interface FB1625139 ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FB1625139

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
@synthesize 1625139Identifier = _1625139Identifier;
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
            self.province = [self objectOrNilForKey:kFB1625139Province fromDictionary:dict];
            self.status = [[self objectOrNilForKey:kFB1625139Status fromDictionary:dict] doubleValue];
            self.tags = [self objectOrNilForKey:kFB1625139Tags fromDictionary:dict];
            self.score = [[self objectOrNilForKey:kFB1625139Score fromDictionary:dict] doubleValue];
            self.avgPrice = [[self objectOrNilForKey:kFB1625139AvgPrice fromDictionary:dict] doubleValue];
            self.lng = [[self objectOrNilForKey:kFB1625139Lng fromDictionary:dict] doubleValue];
            self.city = [self objectOrNilForKey:kFB1625139City fromDictionary:dict];
            self.telPhone = [self objectOrNilForKey:kFB1625139TelPhone fromDictionary:dict];
            self.name = [self objectOrNilForKey:kFB1625139Name fromDictionary:dict];
            self.imgs = [self objectOrNilForKey:kFB1625139Imgs fromDictionary:dict];
            self.1625139Identifier = [self objectOrNilForKey:kFB1625139Id fromDictionary:dict];
            self.descrip = [self objectOrNilForKey:kFB1625139Descrip fromDictionary:dict];
            self.mobile = [self objectOrNilForKey:kFB1625139Mobile fromDictionary:dict];
            self.brightPoints = [self objectOrNilForKey:kFB1625139BrightPoints fromDictionary:dict];
            self.areaID = [self objectOrNilForKey:kFB1625139AreaID fromDictionary:dict];
            self.lat = [[self objectOrNilForKey:kFB1625139Lat fromDictionary:dict] doubleValue];
            self.county = [self objectOrNilForKey:kFB1625139County fromDictionary:dict];
            self.createTime = [[self objectOrNilForKey:kFB1625139CreateTime fromDictionary:dict] doubleValue];
            self.addr = [self objectOrNilForKey:kFB1625139Addr fromDictionary:dict];
            self.logo = [self objectOrNilForKey:kFB1625139Logo fromDictionary:dict];
            self.scene = [self objectOrNilForKey:kFB1625139Scene fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.province forKey:kFB1625139Province];
    [mutableDict setValue:[NSNumber numberWithDouble:self.status] forKey:kFB1625139Status];
    [mutableDict setValue:self.tags forKey:kFB1625139Tags];
    [mutableDict setValue:[NSNumber numberWithDouble:self.score] forKey:kFB1625139Score];
    [mutableDict setValue:[NSNumber numberWithDouble:self.avgPrice] forKey:kFB1625139AvgPrice];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lng] forKey:kFB1625139Lng];
    [mutableDict setValue:self.city forKey:kFB1625139City];
    [mutableDict setValue:self.telPhone forKey:kFB1625139TelPhone];
    [mutableDict setValue:self.name forKey:kFB1625139Name];
    [mutableDict setValue:self.imgs forKey:kFB1625139Imgs];
    [mutableDict setValue:self.1625139Identifier forKey:kFB1625139Id];
    [mutableDict setValue:self.descrip forKey:kFB1625139Descrip];
    [mutableDict setValue:self.mobile forKey:kFB1625139Mobile];
    [mutableDict setValue:self.brightPoints forKey:kFB1625139BrightPoints];
    [mutableDict setValue:self.areaID forKey:kFB1625139AreaID];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lat] forKey:kFB1625139Lat];
    [mutableDict setValue:self.county forKey:kFB1625139County];
    [mutableDict setValue:[NSNumber numberWithDouble:self.createTime] forKey:kFB1625139CreateTime];
    [mutableDict setValue:self.addr forKey:kFB1625139Addr];
    [mutableDict setValue:self.logo forKey:kFB1625139Logo];
    [mutableDict setValue:self.scene forKey:kFB1625139Scene];

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

    self.province = [aDecoder decodeObjectForKey:kFB1625139Province];
    self.status = [aDecoder decodeDoubleForKey:kFB1625139Status];
    self.tags = [aDecoder decodeObjectForKey:kFB1625139Tags];
    self.score = [aDecoder decodeDoubleForKey:kFB1625139Score];
    self.avgPrice = [aDecoder decodeDoubleForKey:kFB1625139AvgPrice];
    self.lng = [aDecoder decodeDoubleForKey:kFB1625139Lng];
    self.city = [aDecoder decodeObjectForKey:kFB1625139City];
    self.telPhone = [aDecoder decodeObjectForKey:kFB1625139TelPhone];
    self.name = [aDecoder decodeObjectForKey:kFB1625139Name];
    self.imgs = [aDecoder decodeObjectForKey:kFB1625139Imgs];
    self.1625139Identifier = [aDecoder decodeObjectForKey:kFB1625139Id];
    self.descrip = [aDecoder decodeObjectForKey:kFB1625139Descrip];
    self.mobile = [aDecoder decodeObjectForKey:kFB1625139Mobile];
    self.brightPoints = [aDecoder decodeObjectForKey:kFB1625139BrightPoints];
    self.areaID = [aDecoder decodeObjectForKey:kFB1625139AreaID];
    self.lat = [aDecoder decodeDoubleForKey:kFB1625139Lat];
    self.county = [aDecoder decodeObjectForKey:kFB1625139County];
    self.createTime = [aDecoder decodeDoubleForKey:kFB1625139CreateTime];
    self.addr = [aDecoder decodeObjectForKey:kFB1625139Addr];
    self.logo = [aDecoder decodeObjectForKey:kFB1625139Logo];
    self.scene = [aDecoder decodeObjectForKey:kFB1625139Scene];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_province forKey:kFB1625139Province];
    [aCoder encodeDouble:_status forKey:kFB1625139Status];
    [aCoder encodeObject:_tags forKey:kFB1625139Tags];
    [aCoder encodeDouble:_score forKey:kFB1625139Score];
    [aCoder encodeDouble:_avgPrice forKey:kFB1625139AvgPrice];
    [aCoder encodeDouble:_lng forKey:kFB1625139Lng];
    [aCoder encodeObject:_city forKey:kFB1625139City];
    [aCoder encodeObject:_telPhone forKey:kFB1625139TelPhone];
    [aCoder encodeObject:_name forKey:kFB1625139Name];
    [aCoder encodeObject:_imgs forKey:kFB1625139Imgs];
    [aCoder encodeObject:_1625139Identifier forKey:kFB1625139Id];
    [aCoder encodeObject:_descrip forKey:kFB1625139Descrip];
    [aCoder encodeObject:_mobile forKey:kFB1625139Mobile];
    [aCoder encodeObject:_brightPoints forKey:kFB1625139BrightPoints];
    [aCoder encodeObject:_areaID forKey:kFB1625139AreaID];
    [aCoder encodeDouble:_lat forKey:kFB1625139Lat];
    [aCoder encodeObject:_county forKey:kFB1625139County];
    [aCoder encodeDouble:_createTime forKey:kFB1625139CreateTime];
    [aCoder encodeObject:_addr forKey:kFB1625139Addr];
    [aCoder encodeObject:_logo forKey:kFB1625139Logo];
    [aCoder encodeObject:_scene forKey:kFB1625139Scene];
}

- (id)copyWithZone:(NSZone *)zone
{
    FB1625139 *copy = [[FB1625139 alloc] init];
    
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
        copy.1625139Identifier = [self.1625139Identifier copyWithZone:zone];
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
