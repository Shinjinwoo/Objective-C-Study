//
//  Appliance.h
//  Objective-C_Study
//
//  Created by 신진우 on 2022/09/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Appliance : NSObject{
//    NSString *productName;
//    int voltage;
}

@property(copy)NSString *productName;
@property int voltage;

- (id) initWithProductName:(NSString *)pn;

@end


NS_ASSUME_NONNULL_END
