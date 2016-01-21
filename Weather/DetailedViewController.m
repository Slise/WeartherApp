//
//  DetailedViewController.m
//  Weather
//
//  Created by Benson Huynh on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "DetailedViewController.h"

@implementation DetailedViewController

-(instancetype)initWithCity: (City *) city
{
    self = [super init];
    if (self) {
        _city = city;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    UILabel *weatherInfo = [[UILabel alloc]initWithFrame:CGRectMake(80, 210, 150, 150)];
    [weatherInfo setBackgroundColor:[UIColor blueColor]];
    weatherInfo.textColor = [UIColor whiteColor];
    [weatherInfo setText:[NSString stringWithFormat:@"Condition:%@ \n Temperature: %i ºc \n Wind: %i km/h \n", self.city.weatherConditionOfCity, self.city.temperatureOfCity, self.city.windSpeed]];
    weatherInfo.numberOfLines = 0;
    UIImageView *imageView = [[UIImageView alloc] initWithImage:self.city.image];
    imageView.frame = CGRectMake(60, 150, 50, 50);
    [[self view] addSubview:imageView];
    [[self view] addSubview:weatherInfo];
}

@end
