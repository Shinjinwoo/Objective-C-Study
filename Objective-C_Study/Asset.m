//
//  Asset.m
//  Objective-C_Study
//
//  Created by 신진우 on 2022/09/20.
//

#import "Asset.h"

@implementation Asset
@synthesize label,resaleValue;

-(NSString *) description {
    return [NSString stringWithFormat:@"<%@: $%d >",
            [self label], [self resaleValue]];
}

- (void)dealloc{
    NSLog(@"deallocating %@",self);
}

@end
