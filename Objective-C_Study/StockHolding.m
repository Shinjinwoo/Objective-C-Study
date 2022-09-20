//
//  StockHolding.m
//  Objective-C_Study
//
//  Created by 신진우 on 2022/09/20.
//

#import "StockHolding.h"

@implementation StockHolding
@synthesize purchaseSharePrice,currentSharePrice,numberOfShares;

-(float) costInDollars {
    return [self purchaseSharePrice] * [self numberOfShares];
}

-(float) valueInDollars {
    return [self currentSharePrice] * [self numberOfShares];
}

@end
