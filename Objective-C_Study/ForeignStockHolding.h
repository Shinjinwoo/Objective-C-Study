//
//  ForeignStockHolding.h
//  Objective-C_Study
//
//  Created by 신진우 on 2022/09/20.
//

#import "StockHolding.h"

NS_ASSUME_NONNULL_BEGIN

@interface ForeignStockHolding : StockHolding
{
    float conversionRate;
}

@property float conversionRate;
@end

NS_ASSUME_NONNULL_END
