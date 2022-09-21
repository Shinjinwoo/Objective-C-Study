//
//  Asset.h
//  Objective-C_Study
//
//  Created by 신진우 on 2022/09/20.
//

#import <Foundation/Foundation.h>
@class Employee;

NS_ASSUME_NONNULL_BEGIN


@interface Asset : NSObject
{
    NSString *label;
    unsigned int resaleValue;
    __weak Employee *holder;
}

@property (strong) NSString *label;
// strong : 한정자 [ modifier ] -> 소유권을 주장 하려하는 객체,
// 객체의 소유자가 없을 때 이 객체는 메모리 할당이 취소된다.
// 
@property unsigned int resaleValue;
@property (weak) Employee *holder;

@end

NS_ASSUME_NONNULL_END
