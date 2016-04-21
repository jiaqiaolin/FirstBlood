//
//  FB1673037.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FB1673037.h"


NSString *const kFB1673037Province = @"province";
NSString *const kFB1673037Status = @"status";
NSString *const kFB1673037Tags = @"tags";
NSString *const kFB1673037Score = @"score";
NSString *const kFB1673037Lng = @"lng";
NSString *const kFB1673037City = @"city";
NSString *const kFB1673037TelPhone = @"telPhone";
NSString *const kFB1673037Name = @"name";
NSString *const kFB1673037Imgs = @"imgs";
NSString *const kFB1673037Id = @"id";
NSString *const kFB1673037Descrip = @"descrip";
NSString *const kFB1673037Mobile = @"mobile";
NSString *const kFB1673037BrightPoints = @"brightPoints";
NSString *const kFB1673037AreaID = @"areaID";
NSString *const kFB1673037Lat = @"lat";
NSString *const kFB1673037County = @"county";
NSString *const kFB1673037Logo = @"logo";
NSString *const kFB1673037Addr = @"addr";
NSString *const kFB1673037CreateTime = @"createTime";
NSString *const kFB1673037Scene = @"scene";


@interface FB1673037 ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FB1673037

@synthesize province = _province;
@synthesize status = _status;
@synthesize tags = _tags;
@synthesize score = _score;
@synthesize lng = _lng;
@synthesize city = _city;
@synthesize telPhone = _telPhone;
@synthesize name = _name;
@synthesize imgs = _imgs;
@synthesize 1673037Identifier = _1673037Identifier;
@synthesize descrip = _descrip;
@synthesize mobile = _mobile;
@synthesize brightPoints = _brightPoints;
@synthesize areaID = _areaID;
@synthesize lat = _lat;
@synthesize county = _county;
@synthesize logo = _logo;
@synthesize addr = _addr;
@synthesize createTime = _createTime;
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
            self.province = [self objectOrNilForKey:kFB1673037Province fromDictionary:dict];
            self.status = [[self objectOrNilForKey:kFB1673037Status fromDictionary:dict] doubleValue];
            self.tags = [self objectOrNilForKey:kFB1673037Tags fromDictionary:dict];
            self.score = [[self objectOrNilForKey:kFB1673037Score fromDictionary:dict] doubleValue];
            self.lng = [[self objectOrNilForKey:kFB1673037Lng fromDictionary:dict] doubleValue];
            self.city = [self objectOrNilForKey:kFB1673037City fromDictionary:dict];
            self.telPhone = [self objectOrNilForKey:kFB1673037TelPhone fromDictionary:dict];
            self.name = [self objectOrNilForKey:kFB1673037Name fromDictionary:dict];
            self.imgs = [self objectOrNilForKey:kFB1673037Imgs fromDictionary:dict];
            self.1673037Identifier = [self objectOrNilForKey:kFB1673037Id fromDictionary:dict];
            self.descrip = [self objectOrNilForKey:kFB1673037Descrip fromDictionary:dict];
            self.mobile = [self objectOrNilForKey:kFB1673037Mobile fromDictionary:dict];
            self.brightPoints = [self objectOrNilForKey:kFB1673037BrightPoints fromDictionary:dict];
            self.areaID = [self objectOrNilForKey:kFB1673037AreaID fromDictionary:dict];
            self.lat = [[self objectOrNilForKey:kFB1673037Lat fromDictionary:dict] doubleValue];
            self.county = [self objectOrNilForKey:kFB1673037County fromDictionary:dict];
            self.logo = [self objectOrNilForKey:kFB1673037Logo fromDictionary:dict];
            self.addr = [self objectOrNilForKey:kFB1673037Addr fromDictionary:dict];
            self.createTime = [[self objectOrNilForKey:kFB1673037CreateTime fromDictionary:dict] doubleValue];
            self.scene = [self objectOrNilForKey:kFB1673037Scene fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.province forKey:kFB1673037Province];
    [mutableDict setValue:[NSNumber numberWithDouble:self.status] forKey:kFB1673037Status];
    [mutableDict setValue:self.tags forKey:kFB1673037Tags];
    [mutableDict setValue:[NSNumber numberWithDouble:self.score] forKey:kFB1673037Score];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lng] forKey:kFB1673037Lng];
    [mutableDict setValue:self.city forKey:kFB1673037City];
    [mutableDict setValue:self.telPhone forKey:kFB1673037TelPhone];
    [mutableDict setValue:self.name forKey:kFB1673037Name];
    [mutableDict setValue:self.imgs forKey:kFB1673037Imgs];
    [mutableDict setValue:self.1673037Identifier forKey:kFB1673037Id];
    [mutableDict setValue:self.descrip forKey:kFB1673037Descrip];
    [mutableDict setValue:self.mobile forKey:kFB1673037Mobile];
    [mutableDict setValue:self.brightPoints forKey:kFB1673037BrightPoints];
    [mutableDict setValue:self.areaID forKey:kFB1673037AreaID];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lat] forKey:kFB1673037Lat];
    [mutableDict setValue:self.county forKey:kFB1673037County];
    [mutableDict setValue:self.logo forKey:kFB1673037Logo];
    [mutableDict setValue:self.addr forKey:kFB1673037Addr];
    [mutableDict setValue:[NSNumber numberWithDouble:self.createTime] forKey:kFB1673037CreateTime];
    [mutableDict setValue:self.scene forKey:kFB1673037Scene];

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

    self.province = [aDecoder decodeObjectForKey:kFB1673037Province];
    self.status = [aDecoder decodeDoubleForKey:kFB1673037Status];
    self.tags = [aDecoder decodeObjectForKey:kFB1673037Tags];
    self.score = [aDecoder decodeDoubleForKey:kFB1673037Score];
    self.lng = [aDecoder decodeDoubleForKey:kFB1673037Lng];
    self.city = [aDecoder decodeObjectForKey:kFB1673037City];
    self.telPhone = [aDecoder decodeObjectForKey:kFB1673037TelPhone];
    self.name = [aDecoder decodeObjectForKey:kFB1673037Name];
    self.imgs = [aDecoder decodeObjectForKey:kFB1673037Imgs];
    self.1673037Identifier = [aDecoder decodeObjectForKey:kFB1673037Id];
    self.descrip = [aDecoder decodeObjectForKey:kFB1673037Descrip];
    self.mobile = [aDecoder decodeObjectForKey:kFB1673037Mobile];
    self.brightPoints = [aDecoder decodeObjectForKey:kFB1673037BrightPoints];
    self.areaID = [aDecoder decodeObjectForKey:kFB1673037AreaID];
    self.lat = [aDecoder decodeDoubleForKey:kFB1673037Lat];
    self.county = [aDecoder decodeObjectForKey:kFB1673037County];
    self.logo = [aDecoder decodeObjectForKey:kFB1673037Logo];
    self.addr = [aDecoder decodeObjectForKey:kFB1673037Addr];
    self.createTime = [aDecoder decodeDoubleForKey:kFB1673037CreateTime];
    self.scene = [aDecoder decodeObjectForKey:kFB1673037Scene];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_province forKey:kFB1673037Province];
    [aCoder encodeDouble:_status forKey:kFB1673037Status];
    [aCoder encodeObject:_tags forKey:kFB1673037Tags];
    [aCoder encodeDouble:_score forKey:kFB1673037Score];
    [aCoder encodeDouble:_lng forKey:kFB1673037Lng];
    [aCoder encodeObject:_city forKey:kFB1673037City];
    [aCoder encodeObject:_telPhone forKey:kFB1673037TelPhone];
    [aCoder encodeObject:_name forKey:kFB1673037Name];
    [aCoder encodeObject:_imgs forKey:kFB1673037Imgs];
    [aCoder encodeObject:_1673037Identifier forKey:kFB1673037Id];
    [aCoder encodeObject:_descrip forKey:kFB1673037Descrip];
    [aCoder encodeObject:_mobile forKey:kFB1673037Mobile];
    [aCoder encodeObject:_brightPoints forKey:kFB1673037BrightPoints];
    [aCoder encodeObject:_areaID forKey:kFB1673037AreaID];
    [aCoder encodeDouble:_lat forKey:kFB1673037Lat];
    [aCoder encodeObject:_county forKey:kFB1673037County];
    [aCoder encodeObject:_logo forKey:kFB1673037Logo];
    [aCoder encodeObject:_addr forKey:kFB1673037Addr];
    [aCoder encodeDouble:_createTime forKey:kFB1673037CreateTime];
    [aCoder encodeObject:_scene forKey:kFB1673037Scene];
}

- (id)copyWithZone:(NSZone *)zone
{
    FB1673037 *copy = [[FB1673037 alloc] init];
    
    if (copy) {

        copy.province = [self.province copyWithZone:zone];
        copy.status = self.status;
        copy.tags = [self.tags copyWithZone:zone];
        copy.score = self.score;
        copy.lng = self.lng;
        copy.city = [self.city copyWithZone:zone];
        copy.telPhone = [self.telPhone copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
        copy.imgs = [self.imgs copyWithZone:zone];
        copy.1673037Identifier = [self.1673037Identifier copyWithZone:zone];
        copy.descrip = [self.descrip copyWithZone:zone];
        copy.mobile = [self.mobile copyWithZone:zone];
        copy.brightPoints = [self.brightPoints copyWithZone:zone];
        copy.areaID = [self.areaID copyWithZone:zone];
        copy.lat = self.lat;
        copy.county = [self.county copyWithZone:zone];
        copy.logo = [self.logo copyWithZone:zone];
        copy.addr = [self.addr copyWithZone:zone];
        copy.createTime = self.createTime;
        copy.scene = [self.scene copyWithZone:zone];
    }
    
    return copy;
}


@end
