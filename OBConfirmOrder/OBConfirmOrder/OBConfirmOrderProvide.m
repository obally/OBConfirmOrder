//
//  OBConfirmOrderProvide.m
//  OBConfirmOrder
//
//  Created by obally on 17/4/14.
//  Copyright © 2017年 obally. All rights reserved.
//

#import "OBConfirmOrderProvide.h"
#import <OBProtocolManager/OBProtocolManager.h>
#import <OBConfimOrderServiceProtocol/OBConfimOrderServiceProtocol.h>

#import "OBConfirmOrderViewController.h"
@interface OBConfirmOrderProvide()<OBConfimOrderServiceProtocol>


@end
@implementation OBConfirmOrderProvide
+ (void)load
{
    [OBProtocolManager registServiceProvide:[self new] forProtocol:@protocol(OBConfimOrderServiceProtocol)];
}

- (UIViewController *)confirmOrderViewControllerWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete
{
    OBConfirmOrderViewController *confirmOrderVC = [[OBConfirmOrderViewController alloc] initWithGoodsId:goodsId sureComplete:sureComplete];
    return confirmOrderVC;
}

@end
