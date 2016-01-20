//
//  City.m
//  Weather
//
//  Created by Benson Huynh on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City

-(instancetype)initWithName: (NSString *) name weatherConditionOfCity: (NSString *) weatherConditionOfCity temperatureOfCity: (int) temperatureOfCity windSpeed: (int) windSpeed{
    self = [super init];
    if (self) {
        _name = name;
        _weatherConditionOfCity = weatherConditionOfCity;
        _temperatureOfCity = temperatureOfCity;
        _windSpeed = windSpeed;
    }
    return self;
    
}


@end
