//
//  FB1676673.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FB1676673.h"


NSString *const kFB1676673Province = @"province";
NSString *const kFB1676673Status = @"status";
NSString *const kFB1676673Tags = @"tags";
NSString *const kFB1676673Score = @"score";
NSString *const kFB1676673AvgPrice = @"avgPrice";
NSString *const kFB1676673Lng = @"lng";
NSString *const kFB1676673City = @"city";
NSString *const kFB1676673TelPhone = @"telPhone";
NSString *const kFB1676673Name = @"name";
NSString *const kFB1676673Id = @"id";
NSString *const kFB1676673Descrip = @"descrip";
NSString *const kFB1676673Mobile = @"mobile";
NSString *const kFB1676673BrightPoints = @"brightPoints";
NSString *const kFB1676673AreaID = @"areaID";
NSString *const kFB1676673Lat = @"lat";
NSString *const kFB1676673County = @"county";
NSString *const kFB1676673CreateTime = @"createTime";
NSString *const kFB1676673Addr = @"addr";
NSString *const kFB1676673Logo = @"logo";
NSString *const kFB1676673Scene = @"scene";


@interface FB1676673 ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FB1676673

@synthesize province = _province;
@synthesize status = _status;
@synthesize tags = _tags;
@synthesize score = _score;
@synthesize avgPrice = _avgPrice;
@synthesize lng = _lng;
@synthesize city = _city;
@synthesize telPhone = _telPhone;
@synthesize name = _name;
@synthesize 1676673Identifier = _1676673Identifier;
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
            self.province = [self objectOrNilForKey:kFB1676673Province fromDictionary:dict];
            self.status = [[self objectOrNilForKey:kFB1676673Status fromDictionary:dict] doubleValue];
            self.tags = [self objectOrNilForKey:kFB1676673Tags fromDictionary:dict];
            self.score = [[self objectOrNilForKey:kFB1676673Score fromDictionary:dict] doubleValue];
            self.avgPrice = [[self objectOrNilForKey:kFB1676673AvgPrice fromDictionary:dict] doubleValue];
            self.lng = [[self objectOrNilForKey:kFB1676673Lng fromDictionary:dict] doubleValue];
            self.city = [self objectOrNilForKey:kFB1676673City fromDictionary:dict];
            self.telPhone = [self objectOrNilForKey:kFB1676673TelPhone fromDictionary:dict];
            self.name = [self objectOrNilForKey:kFB1676673Name fromDictionary:dict];
            self.1676673Identifier = [self objectOrNilForKey:kFB1676673Id fromDictionary:dict];
            self.descrip = [self objectOrNilForKey:kFB1676673Descrip fromDictionary:dict];
            self.mobile = [self objectOrNilForKey:kFB1676673Mobile fromDictionary:dict];
            self.brightPoints = [self objectOrNilForKey:kFB1676673BrightPoints fromDictionary:dict];
            self.areaID = [self objectOrNilForKey:kFB1676673AreaID fromDictionary:dict];
            self.lat = [[self objectOrNilForKey:kFB1676673Lat fromDictionary:dict] doubleValue];
            self.county = [self objectOrNilForKey:kFB1676673County fromDictionary:dict];
            self.createTime = [[self objectOrNilForKey:kFB1676673CreateTime fromDictionary:dict] doubleValue];
            self.addr = [self objectOrNilForKey:kFB1676673Addr fromDictionary:dict];
            self.logo = [self objectOrNilForKey:kFB1676673Logo fromDictionary:dict];
            self.scene = [self objectOrNilForKey:kFB1676673Scene fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.province forKey:kFB1676673Province];
    [mutableDict setValue:[NSNumber numberWithDouble:self.status] forKey:kFB1676673Status];
    [mutableDict setValue:self.tags forKey:kFB1676673Tags];
    [mutableDict setValue:[NSNumber numberWithDouble:self.score] forKey:kFB1676673Score];
    [mutableDict setValue:[NSNumber numberWithDouble:self.avgPrice] forKey:kFB1676673AvgPrice];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lng] forKey:kFB1676673Lng];
    [mutableDict setValue:self.city forKey:kFB1676673City];
    [mutableDict setValue:self.telPhone forKey:kFB1676673TelPhone];
    [mutableDict setValue:self.name forKey:kFB1676673Name];
    [mutableDict setValue:self.1676673Identifier forKey:kFB1676673Id];
    [mutableDict setValue:self.descrip forKey:kFB1676673Descrip];
    [mutableDict setValue:self.mobile forKey:kFB1676673Mobile];
    [mutableDict setValue:self.brightPoints forKey:kFB1676673BrightPoints];
    [mutableDict setValue:self.areaID forKey:kFB1676673AreaID];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lat] forKey:kFB1676673Lat];
    [mutableDict setValue:self.county forKey:kFB1676673County];
    [mutableDict setValue:[NSNumber numberWithDouble:self.createTime] forKey:kFB1676673CreateTime];
    [mutableDict setValue:self.addr forKey:kFB1676673Addr];
    [mutableDict setValue:self.logo forKey:kFB1676673Logo];
    [mutableDict setValue:self.scene forKey:kFB1676673Scene];

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

    self.province = [aDecoder decodeObjectForKey:kFB1676673Province];
    self.status = [aDecoder decodeDoubleForKey:kFB1676673Status];
    self.tags = [aDecoder decodeObjectForKey:kFB1676673Tags];
    self.score = [aDecoder decodeDoubleForKey:kFB1676673Score];
    self.avgPrice = [aDecoder decodeDoubleForKey:kFB1676673AvgPrice];
    self.lng = [aDecoder decodeDoubleForKey:kFB1676673Lng];
    self.city = [aDecoder decodeObjectForKey:kFB1676673City];
    self.telPhone = [aDecoder decodeObjectForKey:kFB1676673TelPhone];
    self.name = [aDecoder decodeObjectForKey:kFB1676673Name];
    self.1676673Identifier = [aDecoder decodeObjectForKey:kFB1676673Id];
    self.descrip = [aDecoder decodeObjectForKey:kFB1676673Descrip];
    self.mobile = [aDecoder decodeObjectForKey:kFB1676673Mobile];
    self.brightPoints = [aDecoder decodeObjectForKey:kFB1676673BrightPoints];
    self.areaID = [aDecoder decodeObjectForKey:kFB1676673AreaID];
    self.lat = [aDecoder decodeDoubleForKey:kFB1676673Lat];
    self.county = [aDecoder decodeObjectForKey:kFB1676673County];
    self.createTime = [aDecoder decodeDoubleForKey:kFB1676673CreateTime];
    self.addr = [aDecoder decodeObjectForKey:kFB1676673Addr];
    self.logo = [aDecoder decodeObjectForKey:kFB1676673Logo];
    self.scene = [aDecoder decodeObjectForKey:kFB1676673Scene];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_province forKey:kFB1676673Province];
    [aCoder encodeDouble:_status forKey:kFB1676673Status];
    [aCoder encodeObject:_tags forKey:kFB1676673Tags];
    [aCoder encodeDouble:_score forKey:kFB1676673Score];
    [aCoder encodeDouble:_avgPrice forKey:kFB1676673AvgPrice];
    [aCoder encodeDouble:_lng forKey:kFB1676673Lng];
    [aCoder encodeObject:_city forKey:kFB1676673City];
    [aCoder encodeObject:_telPhone forKey:kFB1676673TelPhone];
    [aCoder encodeObject:_name forKey:kFB1676673Name];
    [aCoder encodeObject:_1676673Identifier forKey:kFB1676673Id];
    [aCoder encodeObject:_descrip forKey:kFB1676673Descrip];
    [aCoder encodeObject:_mobile forKey:kFB1676673Mobile];
    [aCoder encodeObject:_brightPoints forKey:kFB1676673BrightPoints];
    [aCoder encodeObject:_areaID forKey:kFB1676673AreaID];
    [aCoder encodeDouble:_lat forKey:kFB1676673Lat];
    [aCoder encodeObject:_county forKey:kFB1676673County];
    [aCoder encodeDouble:_createTime forKey:kFB1676673CreateTime];
    [aCoder encodeObject:_addr forKey:kFB1676673Addr];
    [aCoder encodeObject:_logo forKey:kFB1676673Logo];
    [aCoder encodeObject:_scene forKey:kFB1676673Scene];
}

- (id)copyWithZone:(NSZone *)zone
{
    FB1676673 *copy = [[FB1676673 alloc] init];
    
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
        copy.1676673Identifier = [self.1676673Identifier copyWithZone:zone];
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
