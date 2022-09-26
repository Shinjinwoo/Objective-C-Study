//
//  OwnedAppliance.m
//  Objective-C_Study
//
//  Created by 신진우 on 2022/09/26.
//

#import "OwnedAppliance.h"

@implementation OwnedAppliance


-(id)initWithProductName:(NSString *)pn
          firstOwnerName:(nonnull NSString *)n {
    self = [super initWithProductName:pn];
    
    
    if (self){
        //소유자명을 담을 집합을 만든다.
        ownerNames = [[NSMutableSet alloc]init];
        
        //nil이 아닌 첫소유자 명인가 ?
        if ( n ) {
            [ownerNames addObject:n];
        }
    }
    //새 객체를 가리키는 포인터를 리턴.
    return self;
}

- (void)addOwnerNamesObject:(NSString *)n {
    [ownerNames addObject: n];
}

-(void)removeOwnerNamesObject:(NSString *)n {
    [ownerNames removeObject:n];
}
@end
