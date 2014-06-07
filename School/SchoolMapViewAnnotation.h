//
//  SchoolMapViewAnnotation.h
//  School
//
//  Created by wade huang on 6/4/14.
//  Copyright (c) 2014 wade. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface SchoolMapViewAnnotation : NSObject<MKAnnotation>

@property (nonatomic,copy) NSString *title;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

-(id) initWithTitle:(NSString *) title AndCoordinate:(CLLocationCoordinate2D)coordinate;

@end
