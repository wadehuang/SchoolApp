//
//  SchoolMapViewAnnotation.m
//  School
//
//  Created by wade huang on 6/4/14.
//  Copyright (c) 2014 wade. All rights reserved.
//

#import "SchoolMapViewAnnotation.h"

@implementation SchoolMapViewAnnotation

@synthesize coordinate=_coordinate;
@synthesize title=_title;

-(id) initWithTitle:(NSString *) title AndCoordinate:(CLLocationCoordinate2D)coordinate
{
    self = [super init];
    _title = title;
    _coordinate = coordinate;
    return self;
}

@end
