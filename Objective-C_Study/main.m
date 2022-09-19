//
//  main.m
//  Objective-C_Study
//
//  Created by 신진우 on 2022/05/27.
//

#import <Foundation/Foundation.h>

float remainingAngle(float angleA , float angleB) {
    float totalAngle = 180.0;
    
    return totalAngle - ( angleA + angleB );
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        
        
        float angleA = 30.0;
        float angleB = 60.0;
        float angleC = remainingAngle(angleA,angleB);
        printf("the Thierd angle is %.2f\n",angleC);
        
        NSLog(@"======================================================================");
        NSLog(@"============================ 포인터 ====================================");
        
        //컴퓨터의 모든 것은 메모리에 저장되므로 모든 것이 주소를 가진다.-> 메모리 주소는 거의 16진수로 이루어짐.
        int integerPointer = 17;
        NSLog(@"컴퓨터의 모든 것은 메모리에 저장되므로 모든 것이 주소를 가진다.-> 메모리 주소는 거의 16진수로 이루어짐.\n integerPointer stores it's value at %p\n",&integerPointer);
        //함수의 이름을 사용하면 이 주소를 가져올 수 있음
        NSLog(@"함수의 이름을 사용하면 이 주소를 가져올 수 있음 : this function starts at %p\n",main);
        
        //포인터에 주소 저장하기
        int *addressOfIntegerPointer = &integerPointer;
        NSLog(@"포인터에 주소 저장하기 : integerPointer stores it's value at %p\n",addressOfIntegerPointer);
        
        //포인터에 저장된 주소로 데이터 가져오기
        NSLog(@"포인터에 저장된 주소로 데이터 가져오기 : the int stored at addressOfIntegerPointer %d\n",*addressOfIntegerPointer);
        
        //특정 주소의 데이터를 저장 하기
        *addressOfIntegerPointer = 100;
        NSLog(@"특정 주소의 데이터를 저장 하기 : Now integerPointer is %d\n",integerPointer);
        
        //차지하는 바이트 수 구하기
        NSLog(@"An int is %zu bytes\n",sizeof(integerPointer));
        NSLog(@"An int is %zu bytes\n",sizeof(addressOfIntegerPointer));
        
        
        
        NSLog(@"======================================================================");
        NSLog(@"============================ 객체 =====================================");
        
        //객체 생성
        NSDate *now = [NSDate date];
        
        //객체의 메모리 주소
        NSLog(@"The new Date lives at %p",now);
        
        // %@ <- 날짜 출력 포맷, 내부의 decription 함수 호출,
        NSLog(@"The date is %@",now);
        
        /**
         메시지 보내기는 항상 대괄호, 크게 2분류
            1. 메시지를 받는 객체의 포인터
            2. 트리거 될 메소드의 이름
         */
        
        
        // 메시지 보내기는 함수 호출 처럼 인수를 가져도 됨.
        double seconds = [now timeIntervalSince1970];
        NSLog(@"%.0f seconds since the start of 1970",seconds);
        
        // 새로운 날짜객체 생성
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@",later);
        
        // id --> 어떤 오브젝티브-C 객체를 가리키는 포인터, 정확히 어떤 객체를 가리킬지 특정 하지 않고 포인터만 만들때 사용
        id delegate;
        
        NSDateComponents *comps = [[NSDateComponents alloc]init];
        [comps setYear:1993];
        [comps setMonth:7];
        [comps setDay:10];
        
        //도전과제 NSDate 객체를 2개 생성하여서 현재시각부터 생일까지 차이 구하기
        NSCalendar *g = [[NSCalendar alloc]initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        float surviveSec = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"생일부터 지금까지 생존한 시간 %.0f",surviveSec);
        
        
        
        
    }
    return 0;
    
}
