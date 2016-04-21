//
//  FBData.m
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "FBData.h"
#import "FBCanBuy.h"
#import "FBCounts.h"
#import "FBAreas.h"
#import "FBTenants.h"
#import "FBList.h"


NSString *const kFBDataCanBuy = @"canBuy";
NSString *const kFBDataCounts = @"counts";
NSString *const kFBDataPageTotal = @"pageTotal";
NSString *const kFBDataAreas = @"areas";
NSString *const kFBDataTenants = @"tenants";
NSString *const kFBDataList = @"list";
NSString *const kFBDataPage = @"page";


@interface FBData ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FBData

@synthesize canBuy = _canBuy;
@synthesize counts = _counts;
@synthesize pageTotal = _pageTotal;
@synthesize areas = _areas;
@synthesize tenants = _tenants;
@synthesize list = _list;
@synthesize page = _page;


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
            self.canBuy = [FBCanBuy modelObjectWithDictionary:[dict objectForKey:kFBDataCanBuy]];
            self.counts = [FBCounts modelObjectWithDictionary:[dict objectForKey:kFBDataCounts]];
            self.pageTotal = [[self objectOrNilForKey:kFBDataPageTotal fromDictionary:dict] doubleValue];
            self.areas = [FBAreas modelObjectWithDictionary:[dict objectForKey:kFBDataAreas]];
            self.tenants = [FBTenants modelObjectWithDictionary:[dict objectForKey:kFBDataTenants]];
    NSObject *receivedFBList = [dict objectForKey:kFBDataList];
    NSMutableArray *parsedFBList = [NSMutableArray array];
    if ([receivedFBList isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedFBList) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedFBList addObject:[FBList modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedFBList isKindOfClass:[NSDictionary class]]) {
       [parsedFBList addObject:[FBList modelObjectWithDictionary:(NSDictionary *)receivedFBList]];
    }

    self.list = [NSArray arrayWithArray:parsedFBList];
            self.page = [[self objectOrNilForKey:kFBDataPage fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.canBuy dictionaryRepresentation] forKey:kFBDataCanBuy];
    [mutableDict setValue:[self.counts dictionaryRepresentation] forKey:kFBDataCounts];
    [mutableDict setValue:[NSNumber numberWithDouble:self.pageTotal] forKey:kFBDataPageTotal];
    [mutableDict setValue:[self.areas dictionaryRepresentation] forKey:kFBDataAreas];
    [mutableDict setValue:[self.tenants dictionaryRepresentation] forKey:kFBDataTenants];
    NSMutableArray *tempArrayForList = [NSMutableArray array];
    for (NSObject *subArrayObject in self.list) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForList addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForList addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForList] forKey:kFBDataList];
    [mutableDict setValue:[NSNumber numberWithDouble:self.page] forKey:kFBDataPage];

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

    self.canBuy = [aDecoder decodeObjectForKey:kFBDataCanBuy];
    self.counts = [aDecoder decodeObjectForKey:kFBDataCounts];
    self.pageTotal = [aDecoder decodeDoubleForKey:kFBDataPageTotal];
    self.areas = [aDecoder decodeObjectForKey:kFBDataAreas];
    self.tenants = [aDecoder decodeObjectForKey:kFBDataTenants];
    self.list = [aDecoder decodeObjectForKey:kFBDataList];
    self.page = [aDecoder decodeDoubleForKey:kFBDataPage];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_canBuy forKey:kFBDataCanBuy];
    [aCoder encodeObject:_counts forKey:kFBDataCounts];
    [aCoder encodeDouble:_pageTotal forKey:kFBDataPageTotal];
    [aCoder encodeObject:_areas forKey:kFBDataAreas];
    [aCoder encodeObject:_tenants forKey:kFBDataTenants];
    [aCoder encodeObject:_list forKey:kFBDataList];
    [aCoder encodeDouble:_page forKey:kFBDataPage];
}

- (id)copyWithZone:(NSZone *)zone
{
    FBData *copy = [[FBData alloc] init];
    
    if (copy) {

        copy.canBuy = [self.canBuy copyWithZone:zone];
        copy.counts = [self.counts copyWithZone:zone];
        copy.pageTotal = self.pageTotal;
        copy.areas = [self.areas copyWithZone:zone];
        copy.tenants = [self.tenants copyWithZone:zone];
        copy.list = [self.list copyWithZone:zone];
        copy.page = self.page;
    }
    
    return copy;
}


@end
