//
//  Employee.h
//  Objective-C_Study
//
//  Created by 신진우 on 2022/09/20.
//

#import "Person.h"
@class Asset;


NS_ASSUME_NONNULL_BEGIN

@interface Employee : Person
{
    int employeeID;
    NSString *name;
    Person *spuse;
    NSMutableArray *dog;
    NSMutableArray *assets;
}

@property int employeeID;

-(void)addAssetsObject:(Asset *)a;
-(unsigned int)valueOfAssets;


@end


NS_ASSUME_NONNULL_END
