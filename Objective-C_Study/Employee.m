//
//  Employee.m
//  Objective-C_Study
//
//  Created by 신진우 on 2022/09/20.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeID;

- (float)bodyMassIndex{
    float nomalBmi = [super bodyMassIndex];
    return nomalBmi * 0.9;
}

- (void)addAssetsObject:(Asset *)a {
    if (!assets) {
        assets = [[NSMutableArray alloc]init];
    }
    [assets addObject:a];
}

- (unsigned int)valueOfAssets {
    // assets의 resale 값을 모두 더한다.
    unsigned int sum = 0;
    for(Asset *a in assets) {
        sum += [a resaleValue];
    }
    return sum;
}

-(NSString *) description {
    return [NSString stringWithFormat:@"<Employee %d : $%d in assets>",
            [self employeeID], [self valueOfAssets]];
}

-(void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end
