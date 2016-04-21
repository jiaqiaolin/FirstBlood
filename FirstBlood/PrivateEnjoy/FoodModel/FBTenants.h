//
//  FBTenants.h
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FB1631889, FB1676673, FB1613492, FB1625139, FB1620158, FB1625305, FB1623717, FB1673037;

@interface FBTenants : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) FB1631889 *1631889;
@property (nonatomic, strong) FB1676673 *1676673;
@property (nonatomic, strong) FB1613492 *1613492;
@property (nonatomic, strong) FB1625139 *1625139;
@property (nonatomic, strong) FB1620158 *1620158;
@property (nonatomic, strong) FB1625305 *1625305;
@property (nonatomic, strong) FB1623717 *1623717;
@property (nonatomic, strong) FB1673037 *1673037;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
