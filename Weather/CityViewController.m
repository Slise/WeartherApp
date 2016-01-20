//
//  CityViewController.m
//  Weather
//
//  Created by Benson Huynh on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"

@implementation CityViewController

- (instancetype)initWithCity:(City *)city
{
    self = [super init];
    if (self) {
        _city = city;
        self.title = city.name;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];    
    
    //label for a brief description of weather
    UILabel *weatherInfo = [[UILabel alloc]initWithFrame:CGRectMake(50, 50, 200, 40)];
    [weatherInfo setBackgroundColor:[UIColor blueColor]];
    weatherInfo.textColor = [UIColor whiteColor];
    [weatherInfo setText:[NSString stringWithFormat:@"Currently: %@", self.city.weatherConditionOfCity]];
    [[self view] addSubview:weatherInfo];
    
    //button to for more details
    //bring up detailViewControllers
    UIButton *moreWeatherDetails = [UIButton buttonWithType:UIButtonTypeCustom];
    [moreWeatherDetails addTarget:self action:@selector(showWeatherDetails)forControlEvents:UIControlEventTouchUpInside];
    [moreWeatherDetails setTitle:@"More Info" forState:UIControlStateNormal];
    [moreWeatherDetails setBackgroundColor:[UIColor blueColor]];
    moreWeatherDetails.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:moreWeatherDetails];
}


-(void)showWeatherDetails {
    DetailedViewController *detailedViewController = [[DetailedViewController alloc] initWithCity: self.city];
    [self.navigationController pushViewController:detailedViewController animated:YES];
}

@end
