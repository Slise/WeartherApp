//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "City.h"
#import "CityViewController.h"
#import "DetailedViewController.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    City *vancouverBc = [[City alloc] initWithName:@"Vancouver" weatherConditionOfCity:@"rainy" temperatureOfCity:15 windSpeed:20  image:[UIImage imageNamed:@"rain"]];
    City *sanFranciscoCa = [[City alloc] initWithName:@"San Francisco" weatherConditionOfCity:@"windy" temperatureOfCity:12 windSpeed:180 image:[UIImage imageNamed:@"wind"]];
    City *torontoOn = [[City alloc] initWithName:@"Toronto" weatherConditionOfCity:@"sleeting" temperatureOfCity:1 windSpeed:75 image:[UIImage imageNamed:@"sleet"]];
    City *calgaryAb = [[City alloc] initWithName:@"Calgary" weatherConditionOfCity:@"snowing" temperatureOfCity:0 windSpeed:55 image:[UIImage imageNamed:@"snow"]];
    City *newYorkNy = [[City alloc] initWithName:@"New York" weatherConditionOfCity:@"foggy" temperatureOfCity:9 windSpeed:25 image:[UIImage imageNamed:@"fog"]];
    
    // Don't forget to assign the window a rootViewController
    UINavigationController *vancouverNavCon = [self navigationControllerForCity:vancouverBc];
    UINavigationController *sanFranciscoNavCon = [self navigationControllerForCity:sanFranciscoCa];
    UINavigationController *torontoNavCon = [self navigationControllerForCity:torontoOn];
    UINavigationController *calgaryNavCon = [self navigationControllerForCity:calgaryAb];
    UINavigationController *newYorkNavCon = [self navigationControllerForCity:newYorkNy];
    NSArray *collectionOfCityNavCon = @[vancouverNavCon, torontoNavCon, calgaryNavCon, sanFranciscoNavCon, newYorkNavCon];
    
    UITabBarController *selectCityBar = [[UITabBarController alloc] init];
    selectCityBar.viewControllers = collectionOfCityNavCon;
    selectCityBar.tabBar.barTintColor = [UIColor blueColor];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Bold" size:12.0f], NSForegroundColorAttributeName : [UIColor whiteColor]}
                                             forState:UIControlStateNormal];
    
    [self.window makeKeyAndVisible];
    [self.window setRootViewController:selectCityBar];
    return YES;
}

-(UINavigationController *) navigationControllerForCity:(City *) city {
    CityViewController *cityViewController = [[CityViewController alloc] initWithCity:city];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:cityViewController];
    return navController;
}

@end
