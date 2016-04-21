//
//  FB1673037.h
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface FB1673037 : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *province;
@property (nonatomic, assign) double status;
@property (nonatomic, strong) NSString *tags;
@property (nonatomic, assign) double score;
@property (nonatomic, assign) double lng;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSString *telPhone;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *imgs;
@property (nonatomic, strong) NSString *1673037Identifier;
@property (nonatomic, strong) NSString *descrip;
@property (nonatomic, strong) NSString *mobile;
@property (nonatomic, strong) NSString *brightPoints;
@property (nonatomic, strong) NSString *areaID;
@property (nonatomic, assign) double lat;
@property (nonatomic, strong) NSString *county;
@property (nonatomic, strong) NSString *logo;
@property (nonatomic, strong) NSString *addr;
@property (nonatomic, assign) double createTime;
@property (nonatomic, strong) NSString *scene;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
