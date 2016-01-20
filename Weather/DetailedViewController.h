//
//  DetailedViewController.h
//  Weather
//
//  Created by Benson Huynh on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"
#import "CityViewController.h"

@interface DetailedViewController : UIViewController


@property (nonatomic, strong) City *city;

-(instancetype)initWithCity: (City *) city;

@end
