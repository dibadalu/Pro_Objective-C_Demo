//
//  OrderEntry.m
//  4.4.3.使用MRR
//
//  Created by 陈泽嘉 on 16/1/31.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import "OrderEntry.h"
#import "Address.h"
#import "OrderItem.h"

@implementation OrderEntry

- (id)initWithId:(NSString *)oid{
    if (self = [super init]) {
        NSLog(@"Initialzing OrderEntry object");
        orderId = oid;
        [orderId retain];
        orderItem = [[OrderItem alloc] initWithName:@"Doodle"];
        shippingAddress = [[Address alloc] init];
    }
    return self;
}

- (void)dealloc{
    NSLog(@"Deallocating OrderEntry object");
    [orderId release];
    [orderItem release];
    [shippingAddress release];
    [super dealloc];
}

@end
