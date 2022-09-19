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
        
        NSDate *now = [NSDate date];
        NSLog(@"The new Date lives at %p",now);
        
        NSLog(@"형상관리ㅇㅇㅇ");
        
        
        
        
    }
    return 0;
    
}
