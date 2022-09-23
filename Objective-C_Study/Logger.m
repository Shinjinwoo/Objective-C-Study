//
//  Logger.m
//  Objective-C_Study
//
//  Created by 신진우 on 2022/09/23.
//

#import "Logger.h"

@implementation Logger

-(void)sayOuch:(NSTimer *)t {
    NSLog(@"Ouch!");
}

//데이터가 도착 할 떄 호출
-(void)connection : (NSURLConnection *)connection
       didReceiveData:(nonnull NSData *)data
{
    NSLog(@"recevied %lu bytes",[data length]);
    //동적인 데이터 생성
    if (!incomingData) {
        incomingData = [[NSMutableData alloc]init];
    }
    [incomingData appendData:data];
}


//마지막 데이터 처리
-(void)connectionDidFinishLoading : (NSURLConnection *)connection{
    NSLog(@"Got it All");
    
    NSString *string = [[NSString alloc]initWithData:incomingData
                                            encoding:NSUTF8StringEncoding];
    
    incomingData = nil;
    NSLog(@"string has %lu characters",[string length]);
    
    //가져온 파일 전체를 확인 하려면 다음 행에서 주석을 제거
    
    NSLog(@"The whole string is %@",string);
    
}

-(void)connection:(NSURLConnection *)connection
       didFailWithError:(nonnull NSError *)error
{
    NSLog(@"Connection Failed : %@",[error localizedDescription]);
    incomingData = nil;
}

@end
