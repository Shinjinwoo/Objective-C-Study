//
//  OwnedAppliance.h
//  Objective-C_Study
//
//  Created by 신진우 on 2022/09/26.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"

NS_ASSUME_NONNULL_BEGIN

@interface OwnedAppliance : Appliance {
    NSMutableSet *ownerNames;
}


//지정화 된 초기화 메소드
- (id) initWithProductName:(NSString *)pn
            firstOwnerName:(NSString *)n;
- (void)addOwnerNamesObject:(NSString *)n;
- (void)removeOwnerNamesObject:(NSString *)n;

@end

NS_ASSUME_NONNULL_END
