//
//  Person.m
//  Objective-C_Study
//
//  Created by 신진우 on 2022/09/20.
//

#import "Person.h"

@implementation Person
- (void)setHeightInMeters:(float)h {
    heightInMeters = h;
}

- (void)setWeightInKilos:(int)w {
    weightInKilos = w;
}

- (float)bodyMassIndex {
    return weightInKilos / ( heightInMeters * heightInMeters );
}

@end
