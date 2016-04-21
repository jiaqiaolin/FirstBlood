//
//  FBCanBuy.h
//
//  Created by   on 16/4/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface FBCanBuy : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *5041011;
@property (nonatomic, strong) NSString *5036110;
@property (nonatomic, strong) NSString *5038892;
@property (nonatomic, strong) NSString *5037355;
@property (nonatomic, strong) NSString *5039551;
@property (nonatomic, strong) NSString *5087531;
@property (nonatomic, strong) NSString *5030474;
@property (nonatomic, strong) NSString *5002300;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
