//
//  CityViewController.h
//  Weather
//
//  Created by Benson Huynh on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"
#import "DetailedViewController.h"

@interface CityViewController : UIViewController

@property (nonatomic) City *city;

- (instancetype)initWithCity:(City *)city;
-(void)showWeatherDetails;

@end
