//
//  StockHolding.h
//  Objective-C_Study
//
//  Created by 신진우 on 2022/09/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface StockHolding : NSObject
{
    float purchaseSharePrice;
    float currentSharePrice;
    int numberOfShares;
}

@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;

- (float) costInDollars;
- (float) valueInDollars;


@end

NS_ASSUME_NONNULL_END
