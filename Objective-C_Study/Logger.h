//
//  Logger.h
//  Objective-C_Study
//
//  Created by 신진우 on 2022/09/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Logger : NSObject
{
    NSMutableData *incomingData;
}
-(void) sayOuch : (NSTimer *)t;
-(void) zoneChange :(NSNotification *)note;

@end

NS_ASSUME_NONNULL_END
