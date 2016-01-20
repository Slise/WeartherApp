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
    
    City *vancouverBc = [[City alloc] initWithName:@"Vancouver" weatherConditionOfCity:@"rainy" temperatureOfCity:15 windSpeed:20];
    City *sanFranciscoCa = [[City alloc] initWithName:@"San Francisco" weatherConditionOfCity:@"windy" temperatureOfCity:12 windSpeed:180];
    City *torontoOn = [[City alloc] initWithName:@"Toronto" weatherConditionOfCity:@"sleeting" temperatureOfCity:1 windSpeed:75];
    City *calgaryAb = [[City alloc] initWithName:@"Calgary" weatherConditionOfCity:@"snowing" temperatureOfCity:0 windSpeed:55];
    City *newYorkNy = [[City alloc] initWithName:@"New York" weatherConditionOfCity:@"foggy" temperatureOfCity:9 windSpeed:25];
    
    CityViewController *vancouverViewController = [[CityViewController alloc] initWithCity:vancouverBc];
    CityViewController *sanFranciscoViewController = [[CityViewController alloc] initWithCity:sanFranciscoCa];
    CityViewController *torontoViewController = [[CityViewController alloc] initWithCity:torontoOn];
    CityViewController *calgaryViewController = [[CityViewController alloc] initWithCity:calgaryAb];
    CityViewController *newYorkViewController = [[CityViewController alloc] initWithCity:newYorkNy];
    
    // Don't forget to assign the window a rootViewController
    UINavigationController *vancouverNavCon = [[UINavigationController alloc] initWithRootViewController:vancouverViewController];
    UINavigationController *sanFranciscoNavCon = [[UINavigationController alloc] initWithRootViewController:sanFranciscoViewController];
    UINavigationController *torontoNavCon = [[UINavigationController alloc] initWithRootViewController:torontoViewController];
    UINavigationController *calgaryNavCon = [[UINavigationController alloc] initWithRootViewController:calgaryViewController];
    UINavigationController *newYorNavCon = [[UINavigationController alloc] initWithRootViewController:newYorkViewController];
    
    UITabBarController *selectCityBar = [[UITabBarController alloc] init];
    NSArray *collectionOfCityNavCon = @[vancouverNavCon, torontoNavCon, calgaryNavCon, sanFranciscoNavCon, newYorNavCon];
    selectCityBar.viewControllers = collectionOfCityNavCon;
    
    
    selectCityBar.tabBar.barTintColor = [UIColor blueColor];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Bold" size:12.0f], NSForegroundColorAttributeName : [UIColor whiteColor]}
                                             forState:UIControlStateNormal];
    
    [self.window makeKeyAndVisible];
    [self.window setRootViewController:selectCityBar];
    return YES;
}

@end
