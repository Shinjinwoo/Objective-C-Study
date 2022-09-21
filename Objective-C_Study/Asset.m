//
//  Asset.m
//  Objective-C_Study
//
//  Created by 신진우 on 2022/09/20.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset
@synthesize label,resaleValue,holder;

-(NSString *) description {
    
    if ([self holder])
    {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>",
                [self label],[self resaleValue],[self holder]];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d >",
                [self label], [self resaleValue]];
    }
}

- (void)dealloc{
    NSLog(@"deallocating %@",self);
}

@end
