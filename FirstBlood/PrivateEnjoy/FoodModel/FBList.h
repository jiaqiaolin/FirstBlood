//
//  FBList.h
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface FBList : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) double status;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, assign) double salesLimitPerUser;
@property (nonatomic, strong) NSString *tags;
@property (nonatomic, strong) NSString *userID;
@property (nonatomic, assign) double nowPrice;     //4
@property (nonatomic, assign) double count;
@property (nonatomic, strong) NSString *expiredDesc;
@property (nonatomic, assign) double endTime;
@property (nonatomic, assign) double orgPrice;     //6
@property (nonatomic, strong) NSString *consumerUnit;  //5
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *listIdentifier;
@property (nonatomic, strong) NSString *descrip;       //2
@property (nonatomic, assign) double expiredTime;
@property (nonatomic, strong) NSString *areaID;
@property (nonatomic, strong) NSString *masterID;
@property (nonatomic, strong) NSString *theme;         //1
@property (nonatomic, assign) double rule;
@property (nonatomic, strong) NSString *viewType;
@property (nonatomic, assign) double startTime;
@property (nonatomic, assign) double consumerCount;
@property (nonatomic, strong) NSString *imgURL;         //3

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
