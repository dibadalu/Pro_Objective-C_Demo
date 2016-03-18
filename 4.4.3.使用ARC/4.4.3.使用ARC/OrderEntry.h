//
//  OrderEntry.h
//  4.4.3.使用ARC
//
//  Created by 陈泽嘉 on 16/1/31.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Address.h"
#import "OrderItem.h"

@interface OrderEntry : NSObject
{
@public OrderItem *orderItem;
    NSString *orderId;
    Address *shippingAddress;
}

- (id)initWithId:(NSString *)oid;

@end
