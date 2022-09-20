//
//  Employee.h
//  Objective-C_Study
//
//  Created by 신진우 on 2022/09/20.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Employee : Person
{
    int employeeID;
}

@property int employeeID;

@end


NS_ASSUME_NONNULL_END
