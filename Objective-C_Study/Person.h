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

/**
 - (void) <- 리턴 값, setHeightInMeters <- 메소드명, :(float)h <- 파라매터
 setter 에는 set이 들어가지만 getter에는 get이 들어가지 않는게 Obj-c 의 이름규칙
    -> 인스턴스 변수를 읽는 메소드의 이름은 해당 인스턴스의 변수명으로 한다.
 */

// 이 메소드들로 위의 인스턴스 변수들을 설정 할 수 있다.
// setter
//- (void)setHeightInMeters:(float)h;
//- (void)setWeightInKilos:(int)w;
//
////getter
//// -> 인스턴스 변수를 읽는 메소드의 이름은 해당 인스턴스의 변수명으로 한다.
//- (int)weightInKilos;
//- (float)heightInMeters;
// BMI를 계산하는 메소드

@property float heightInMeters;
@property int weightInKilos;

- (float)bodyMassIndex;

@end

NS_ASSUME_NONNULL_END
