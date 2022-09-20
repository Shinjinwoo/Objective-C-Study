//
//  Employee.m
//  Objective-C_Study
//
//  Created by 신진우 on 2022/09/20.
//

#import "Employee.h"

@implementation Employee

@synthesize employeeID;

- (float)bodyMassIndex{
    float nomalBmi = [super bodyMassIndex];
    return nomalBmi * 0.9;
}

@end
