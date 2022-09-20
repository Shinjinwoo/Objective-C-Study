//
//  Person.m
//  Objective-C_Study
//
//  Created by 신진우 on 2022/09/20.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters,weightInKilos;

- (float)bodyMassIndex {
    float h = [self heightInMeters];
    
    return [self weightInKilos] / ( h * h );
}
@end
