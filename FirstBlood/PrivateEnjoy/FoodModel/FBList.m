//
//  FBList.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FBList.h"


NSString *const kFBListStatus = @"status";
NSString *const kFBListTitle = @"title";
NSString *const kFBListSalesLimitPerUser = @"salesLimitPerUser";
NSString *const kFBListTags = @"tags";
NSString *const kFBListUserID = @"userID";
NSString *const kFBListNowPrice = @"nowPrice";
NSString *const kFBListCount = @"count";
NSString *const kFBListExpiredDesc = @"expiredDesc";
NSString *const kFBListEndTime = @"endTime";
NSString *const kFBListOrgPrice = @"orgPrice";
NSString *const kFBListConsumerUnit = @"consumerUnit";
NSString *const kFBListType = @"type";
NSString *const kFBListId = @"id";
NSString *const kFBListDescrip = @"descrip";
NSString *const kFBListExpiredTime = @"expiredTime";
NSString *const kFBListAreaID = @"areaID";
NSString *const kFBListMasterID = @"masterID";
NSString *const kFBListTheme = @"theme";
NSString *const kFBListRule = @"rule";
NSString *const kFBListViewType = @"viewType";
NSString *const kFBListStartTime = @"startTime";
NSString *const kFBListConsumerCount = @"consumerCount";
NSString *const kFBListImgURL = @"imgURL";


@interface FBList ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FBList

@synthesize status = _status;
@synthesize title = _title;
@synthesize salesLimitPerUser = _salesLimitPerUser;
@synthesize tags = _tags;
@synthesize userID = _userID;
@synthesize nowPrice = _nowPrice;
@synthesize count = _count;
@synthesize expiredDesc = _expiredDesc;
@synthesize endTime = _endTime;
@synthesize orgPrice = _orgPrice;
@synthesize consumerUnit = _consumerUnit;
@synthesize type = _type;
@synthesize listIdentifier = _listIdentifier;
@synthesize descrip = _descrip;
@synthesize expiredTime = _expiredTime;
@synthesize areaID = _areaID;
@synthesize masterID = _masterID;
@synthesize theme = _theme;
@synthesize rule = _rule;
@synthesize viewType = _viewType;
@synthesize startTime = _startTime;
@synthesize consumerCount = _consumerCount;
@synthesize imgURL = _imgURL;


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
            self.status = [[self objectOrNilForKey:kFBListStatus fromDictionary:dict] doubleValue];
            self.title = [self objectOrNilForKey:kFBListTitle fromDictionary:dict];
            self.salesLimitPerUser = [[self objectOrNilForKey:kFBListSalesLimitPerUser fromDictionary:dict] doubleValue];
            self.tags = [self objectOrNilForKey:kFBListTags fromDictionary:dict];
            self.userID = [self objectOrNilForKey:kFBListUserID fromDictionary:dict];
            self.nowPrice = [[self objectOrNilForKey:kFBListNowPrice fromDictionary:dict] doubleValue];
            self.count = [[self objectOrNilForKey:kFBListCount fromDictionary:dict] doubleValue];
            self.expiredDesc = [self objectOrNilForKey:kFBListExpiredDesc fromDictionary:dict];
            self.endTime = [[self objectOrNilForKey:kFBListEndTime fromDictionary:dict] doubleValue];
            self.orgPrice = [[self objectOrNilForKey:kFBListOrgPrice fromDictionary:dict] doubleValue];
            self.consumerUnit = [self objectOrNilForKey:kFBListConsumerUnit fromDictionary:dict];
            self.type = [self objectOrNilForKey:kFBListType fromDictionary:dict];
            self.listIdentifier = [self objectOrNilForKey:kFBListId fromDictionary:dict];
            self.descrip = [self objectOrNilForKey:kFBListDescrip fromDictionary:dict];
            self.expiredTime = [[self objectOrNilForKey:kFBListExpiredTime fromDictionary:dict] doubleValue];
            self.areaID = [self objectOrNilForKey:kFBListAreaID fromDictionary:dict];
            self.masterID = [self objectOrNilForKey:kFBListMasterID fromDictionary:dict];
            self.theme = [self objectOrNilForKey:kFBListTheme fromDictionary:dict];
            self.rule = [[self objectOrNilForKey:kFBListRule fromDictionary:dict] doubleValue];
            self.viewType = [self objectOrNilForKey:kFBListViewType fromDictionary:dict];
            self.startTime = [[self objectOrNilForKey:kFBListStartTime fromDictionary:dict] doubleValue];
            self.consumerCount = [[self objectOrNilForKey:kFBListConsumerCount fromDictionary:dict] doubleValue];
            self.imgURL = [self objectOrNilForKey:kFBListImgURL fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.status] forKey:kFBListStatus];
    [mutableDict setValue:self.title forKey:kFBListTitle];
    [mutableDict setValue:[NSNumber numberWithDouble:self.salesLimitPerUser] forKey:kFBListSalesLimitPerUser];
    [mutableDict setValue:self.tags forKey:kFBListTags];
    [mutableDict setValue:self.userID forKey:kFBListUserID];
    [mutableDict setValue:[NSNumber numberWithDouble:self.nowPrice] forKey:kFBListNowPrice];
    [mutableDict setValue:[NSNumber numberWithDouble:self.count] forKey:kFBListCount];
    [mutableDict setValue:self.expiredDesc forKey:kFBListExpiredDesc];
    [mutableDict setValue:[NSNumber numberWithDouble:self.endTime] forKey:kFBListEndTime];
    [mutableDict setValue:[NSNumber numberWithDouble:self.orgPrice] forKey:kFBListOrgPrice];
    [mutableDict setValue:self.consumerUnit forKey:kFBListConsumerUnit];
    [mutableDict setValue:self.type forKey:kFBListType];
    [mutableDict setValue:self.listIdentifier forKey:kFBListId];
    [mutableDict setValue:self.descrip forKey:kFBListDescrip];
    [mutableDict setValue:[NSNumber numberWithDouble:self.expiredTime] forKey:kFBListExpiredTime];
    [mutableDict setValue:self.areaID forKey:kFBListAreaID];
    [mutableDict setValue:self.masterID forKey:kFBListMasterID];
    [mutableDict setValue:self.theme forKey:kFBListTheme];
    [mutableDict setValue:[NSNumber numberWithDouble:self.rule] forKey:kFBListRule];
    [mutableDict setValue:self.viewType forKey:kFBListViewType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.startTime] forKey:kFBListStartTime];
    [mutableDict setValue:[NSNumber numberWithDouble:self.consumerCount] forKey:kFBListConsumerCount];
    [mutableDict setValue:self.imgURL forKey:kFBListImgURL];

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

    self.status = [aDecoder decodeDoubleForKey:kFBListStatus];
    self.title = [aDecoder decodeObjectForKey:kFBListTitle];
    self.salesLimitPerUser = [aDecoder decodeDoubleForKey:kFBListSalesLimitPerUser];
    self.tags = [aDecoder decodeObjectForKey:kFBListTags];
    self.userID = [aDecoder decodeObjectForKey:kFBListUserID];
    self.nowPrice = [aDecoder decodeDoubleForKey:kFBListNowPrice];
    self.count = [aDecoder decodeDoubleForKey:kFBListCount];
    self.expiredDesc = [aDecoder decodeObjectForKey:kFBListExpiredDesc];
    self.endTime = [aDecoder decodeDoubleForKey:kFBListEndTime];
    self.orgPrice = [aDecoder decodeDoubleForKey:kFBListOrgPrice];
    self.consumerUnit = [aDecoder decodeObjectForKey:kFBListConsumerUnit];
    self.type = [aDecoder decodeObjectForKey:kFBListType];
    self.listIdentifier = [aDecoder decodeObjectForKey:kFBListId];
    self.descrip = [aDecoder decodeObjectForKey:kFBListDescrip];
    self.expiredTime = [aDecoder decodeDoubleForKey:kFBListExpiredTime];
    self.areaID = [aDecoder decodeObjectForKey:kFBListAreaID];
    self.masterID = [aDecoder decodeObjectForKey:kFBListMasterID];
    self.theme = [aDecoder decodeObjectForKey:kFBListTheme];
    self.rule = [aDecoder decodeDoubleForKey:kFBListRule];
    self.viewType = [aDecoder decodeObjectForKey:kFBListViewType];
    self.startTime = [aDecoder decodeDoubleForKey:kFBListStartTime];
    self.consumerCount = [aDecoder decodeDoubleForKey:kFBListConsumerCount];
    self.imgURL = [aDecoder decodeObjectForKey:kFBListImgURL];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_status forKey:kFBListStatus];
    [aCoder encodeObject:_title forKey:kFBListTitle];
    [aCoder encodeDouble:_salesLimitPerUser forKey:kFBListSalesLimitPerUser];
    [aCoder encodeObject:_tags forKey:kFBListTags];
    [aCoder encodeObject:_userID forKey:kFBListUserID];
    [aCoder encodeDouble:_nowPrice forKey:kFBListNowPrice];
    [aCoder encodeDouble:_count forKey:kFBListCount];
    [aCoder encodeObject:_expiredDesc forKey:kFBListExpiredDesc];
    [aCoder encodeDouble:_endTime forKey:kFBListEndTime];
    [aCoder encodeDouble:_orgPrice forKey:kFBListOrgPrice];
    [aCoder encodeObject:_consumerUnit forKey:kFBListConsumerUnit];
    [aCoder encodeObject:_type forKey:kFBListType];
    [aCoder encodeObject:_listIdentifier forKey:kFBListId];
    [aCoder encodeObject:_descrip forKey:kFBListDescrip];
    [aCoder encodeDouble:_expiredTime forKey:kFBListExpiredTime];
    [aCoder encodeObject:_areaID forKey:kFBListAreaID];
    [aCoder encodeObject:_masterID forKey:kFBListMasterID];
    [aCoder encodeObject:_theme forKey:kFBListTheme];
    [aCoder encodeDouble:_rule forKey:kFBListRule];
    [aCoder encodeObject:_viewType forKey:kFBListViewType];
    [aCoder encodeDouble:_startTime forKey:kFBListStartTime];
    [aCoder encodeDouble:_consumerCount forKey:kFBListConsumerCount];
    [aCoder encodeObject:_imgURL forKey:kFBListImgURL];
}

- (id)copyWithZone:(NSZone *)zone
{
    FBList *copy = [[FBList alloc] init];
    
    if (copy) {

        copy.status = self.status;
        copy.title = [self.title copyWithZone:zone];
        copy.salesLimitPerUser = self.salesLimitPerUser;
        copy.tags = [self.tags copyWithZone:zone];
        copy.userID = [self.userID copyWithZone:zone];
        copy.nowPrice = self.nowPrice;
        copy.count = self.count;
        copy.expiredDesc = [self.expiredDesc copyWithZone:zone];
        copy.endTime = self.endTime;
        copy.orgPrice = self.orgPrice;
        copy.consumerUnit = [self.consumerUnit copyWithZone:zone];
        copy.type = [self.type copyWithZone:zone];
        copy.listIdentifier = [self.listIdentifier copyWithZone:zone];
        copy.descrip = [self.descrip copyWithZone:zone];
        copy.expiredTime = self.expiredTime;
        copy.areaID = [self.areaID copyWithZone:zone];
        copy.masterID = [self.masterID copyWithZone:zone];
        copy.theme = [self.theme copyWithZone:zone];
        copy.rule = self.rule;
        copy.viewType = [self.viewType copyWithZone:zone];
        copy.startTime = self.startTime;
        copy.consumerCount = self.consumerCount;
        copy.imgURL = [self.imgURL copyWithZone:zone];
    }
    
    return copy;
}


@end
