//
//  Appliance.m
//  Objective-C_Study
//
//  Created by 신진우 on 2022/09/26.
//

#import "Appliance.h"

@implementation Appliance
@synthesize productName,voltage;

-(id)init {
    return [self initWithProductName:@"Unknown"];
}

-(id)initWithProductName:(NSString *)pn {
    self = [super init];
    
    if (self) {
        [self setProductName:pn];
        [self setVoltage:120];
        
    }
    return self;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"<%: %d volts>",productName,voltage];
}
@end
