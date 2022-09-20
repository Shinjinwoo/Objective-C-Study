//
//  Person.h
//  Objective-C_Study
//
//  Created by 신진우 on 2022/09/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//Person 클래스는 NSObject 클래스에서 정의된
//모든 인스턴스 변수 및 메소드를 상속한다.
@interface Person : NSObject
{
    //인스턴스 변수 선언
    float heightInMeters;
    int weightInKilos;
}

// 이 메소드들로 위의 인스턴스 변수들을 설정 할 수 있다.
- (void)setHeightInMeters:(float)h;
//
- (void)setWeightInKilos:(int)w;

// BMI를 계산하는 메소드
-(float)bodyMassIndex;


@end

NS_ASSUME_NONNULL_END
