//
//  SchoolMapViewController.m
//  School
//
//  Created by wade huang on 6/4/14.
//  Copyright (c) 2014 wade. All rights reserved.
//

#import "SchoolMapViewController.h"
#import "SchoolMapViewAnnotation.h"

@interface SchoolMapViewController ()

@end

@implementation SchoolMapViewController

#define METERS_PER_MILE 1609.344

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_mapView addAnnotation:[self createAnnotation]];
    [self zoomToLocation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (SchoolMapViewAnnotation *)createAnnotation
{
    //Create coordinates from the latitude and longitude values
    CLLocationCoordinate2D coord;
    coord.latitude = 2.929755;
    coord.longitude = 101.77914599999997;
    SchoolMapViewAnnotation *annotation = [[SchoolMapViewAnnotation alloc] initWithTitle:@"Universiti Kebangsaan Malaysia" AndCoordinate:coord];
    return annotation;
}

- (void)zoomToLocation
{
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 2.929755;
    zoomLocation.longitude= 101.77914599999997;
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 7.5 * METERS_PER_MILE, 7.5 * METERS_PER_MILE);
    [_mapView setRegion:viewRegion animated:YES];
    [_mapView regionThatFits:viewRegion];
}

@end
