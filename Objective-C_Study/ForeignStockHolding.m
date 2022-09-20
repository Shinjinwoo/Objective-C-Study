//
//  ForeignStockHolding.m
//  Objective-C_Study
//
//  Created by 신진우 on 2022/09/20.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding
@synthesize conversionRate;

- (float)costInDollars {
    return [super costInDollars] * conversionRate;
}

- (float) valueInDollars {
    return [super valueInDollars] * conversionRate;
}

@end
