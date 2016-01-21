//
//  City.h
//  Weather
//
//  Created by Benson Huynh on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *weatherConditionOfCity;
@property (nonatomic, assign) int temperatureOfCity;
@property (nonatomic, assign) int windSpeed;
@property (nonatomic, strong) UIImage *image;

-(instancetype)initWithName: (NSString *) name weatherConditionOfCity: (NSString *) weatherConditionOfCity temperatureOfCity: (int) temperatureOfCity windSpeed: (int) windSpeed image:(UIImage *) image;


@end
