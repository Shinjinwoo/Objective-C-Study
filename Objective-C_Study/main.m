//
//  main.m
//  Objective-C_Study
//
//  Created by 신진우 on 2022/05/27.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "StockHolding.h"

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
        
        NSLog(@"==========================================================================");
        NSLog(@"============================ 포인터 ========================================");
        
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
        
        
        
        NSLog(@"=============================================================================");
        NSLog(@"================================== 객체 ======================================");
        
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
        
        
        NSLog(@"=============================================================================");
        NSLog(@"=============================== 메시지 보내기 심화 ===============================");
        
        /**
         NSDate *now = [NSDate date];
         
         -> date 메소드 = 클래스 메소드 즉, NSDate 클래스에 메시지를 보내 메소드가 실행되도록 한다. date 메소드는 NSDate 인스턴스의 객체 주소 ( 포인터 )를 리턴한다.
         
         double seconds = [now timeIntervalSince1970];
         NSDate *later = [now dateByAddingTimeInterval : 10000];
         
         -> timeIntervalSince1970,dateByAddingTimeInterval 인스턴스 메소드
         */
        
        //alloc은 초기화 해야할 객체의 메모리 주소(포인터)를 리턴한다.
        //이 포인터는 init 메시지를 보내는데 사용 된다
        //Apple에서 공식적으로 사용하는 방식이기도 하다.
        NSDate *alloctest = [[NSDate alloc]init];
        
        
        //여러개의 인수
        //xcode에서 콜론을 기준으로 자동정렬 해준다.
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger day = [cal ordinalityOfUnit:NSCalendarUnitDay
                                        inUnit:NSCalendarUnitMonth
                                       forDate:alloctest];
        
        NSLog(@"This is day %lu of the month", day);
        
        
        //객체지향 언어라면 거의 모두 nil이라는 개념을 갖춤.
        //어떠한 객체도 가르키지 않는 포인터가 바로 nil
        
        if (alloctest != nil) {
            NSCalendar *cal = [NSCalendar currentCalendar];
            NSUInteger day = [cal ordinalityOfUnit:NSCalendarUnitDay
                                            inUnit:NSCalendarUnitMonth
                                           forDate:alloctest];
            NSLog(@"This is day %lu of the month", day);
        }
        
        
        //도전과제, NSTimeZone 클래스를 이용해 일광절약제의 적용을 받는지 알아보기
        NSTimeZone *nsTimeZone = [NSTimeZone systemTimeZone];
        
        if([nsTimeZone isDaylightSavingTime]){
            NSLog(@"일광절약제 적용 받음");
        } else {
            NSLog(@"일광절약제 안받음");
        }
        
        NSLog(@"=============================================================================");
        NSLog(@"================================= NSString ==================================");
        
        /**
         NSString도 NSDate 처럼 클래스이다. NSString의 인스턴스들은 문자들로 구성된 열을 담는다.
         */
        
        NSString *lament = @"why me?";
        NSLog(@"length of lament is %lu",(unsigned long)[lament length]);
        
        //도전과제 NSHost 클래스를 활용한 현지화 된 문자열 반환
        NSHost *nsHost = [NSHost currentHost];
        NSLog(@"현지화 된 컴퓨터 이름 : %@",[nsHost localizedName]);
        
        NSLog(@"=============================================================================");
        NSLog(@"================================= NSArray ===================================");
        
        NSDate *currentDate = [NSDate date];
        NSDate *tomorrow = [currentDate dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [currentDate dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        NSArray *dateList = [NSArray arrayWithObjects:now,tomorrow,yesterday, nil];
        NSUInteger count = [dateList count];
        
        NSLog(@"배열의 인자 개수 %lu",count);
        NSLog(@"첫번째 인덱스 조회 %@",[dateList objectAtIndex:0]);
        NSLog(@"세번째 인덱스 조회 %@",[dateList objectAtIndex:2]);
        
        for(int i = 0; i < count; i++) {
            NSDate *d = [dateList objectAtIndex:i];
            NSLog(@"Here is a date : %@",d);
        }
        
        NSLog(@"=============================================================================");
        NSLog(@"============================ NSMutableArray =================================");
        
        /**
         배열은 크게 2가지로 나뉨,
            1. NSArray : 포인터들의 리스트로 만드는 NSArray의 인스턴스 -> 포인터의 추가 및 삭제가 불가능.
            2. NSMutableArray : 포인터의 추가 및 삭제가 가능.
         */
        
        NSMutableArray *mutableDateList = [NSMutableArray array];
        //빈 배열 생성
        
        [mutableDateList addObject:now];
        [mutableDateList addObject:tomorrow];
        [mutableDateList insertObject:yesterday atIndex:0];
        
        for (NSDate *d in mutableDateList) {
            NSLog(@"Here is a Date %@",d);
        }
        
        NSLog(@"어제를 삭제");
        [mutableDateList removeObjectAtIndex:0];
        
        for (NSDate *d in mutableDateList) {
            NSLog(@"Here is a Date %@",d);
        }
        
        
        //도전과제
        //파일을 통째로 읽어들여 문자열 배열을 비교한다. ( 대소문자 구분 X )
        
        NSMutableArray *nsMutalbeArray = [NSMutableArray array];
        
        [nsMutalbeArray addObject:@"fork"];
        [nsMutalbeArray addObject:@"greek"];
        [nsMutalbeArray addObject:@"glen"];
        
        NSString *nameString = [NSString stringWithContentsOfFile:@"usr/share/dict/propernames"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        //파일을 읽어들여 문자열 리턴
        NSArray *nameArray = [nameString componentsSeparatedByString:@"\n"];
        
        
        for (NSString *n in nameArray){
            NSRange r = [n rangeOfString:@"AA" options:NSCaseInsensitiveSearch];
            if(r.location != NSNotFound) {
                NSLog(@"%@",n);
            }
        }
        
        for ( int i = 0; i < nameArray.count; i++ ) {
            for ( int j = 0; j < nsMutalbeArray.count; i ++ ) {
                if ( [[nameArray objectAtIndex:i]caseInsensitiveCompare:[nsMutalbeArray objectAtIndex:j]]) {
                    NSLog(@"이게 머선일 문제를 잘못 이해했네 ㅋㅋㅋㅋㅋㅋ");
                }
            }
        }
        
        //임의의 배열을 생성후 문자열을 잘라서 만든 배열과 비교하는 문제인줄 알았는데.... 그런 문제가 아니였음 PASS
        
        NSLog(@"=============================================================================");
        NSLog(@"================================= Class =====================================");
        
        Person *person = [[Person alloc]init];
        
        [person setWeightInKilos:83];
        [person setHeightInMeters:1.83];
        
        // bodyMassIndex 메소드 호출
        float bmi = [person bodyMassIndex];
        NSLog(@"BMI 지수 : %f", bmi );
        NSLog(@"property : %f , %d",[person heightInMeters],[person weightInKilos]);
        
        
        // 도전과제 StrockHoldings 객체 3개 생성 후 인스턴스 변수와 인스턴스 메소드로 값 출력하기
        
        StockHolding *stock1 = [[StockHolding alloc]init];
        StockHolding *stock2 = [[StockHolding alloc]init];
        StockHolding *stock3 = [[StockHolding alloc]init];

        NSArray *stockArray = [NSArray arrayWithObjects:stock1,stock2,stock3,nil];
        
        for ( int i = 0; i<[stockArray count]; i++) {
            switch(i){
                case 0:
                    [[stockArray objectAtIndex:0] setPurchaseSharePrice:2.30];
                    [[stockArray objectAtIndex:0] setCurrentSharePrice:4.50];
                    [[stockArray objectAtIndex:0] setNumberOfShares:40];
                case 1:
                    [[stockArray objectAtIndex:1] setPurchaseSharePrice:12.19];
                    [[stockArray objectAtIndex:1] setCurrentSharePrice:10.56];
                    [[stockArray objectAtIndex:1] setNumberOfShares:90];
                case 2:
                    [[stockArray objectAtIndex:2] setPurchaseSharePrice:45.10];
                    [[stockArray objectAtIndex:2] setCurrentSharePrice:49.51];
                    [[stockArray objectAtIndex:2] setNumberOfShares:210];
            }
            
            NSLog(@"%d 번째 배열 costInDollars : %f",i+1,[[stockArray objectAtIndex:i] costInDollars]);
            NSLog(@"%d 번째 배열 valueInDollars : %f",i+1,[[stockArray objectAtIndex:i] valueInDollars]);
        }
        
        
        
        
    }
    return 0;
    
}
