//
//  OBConfirmOrderViewController.h
//  OBConfirmOrder
//
//  Created by obally on 17/4/14.
//  Copyright © 2017年 obally. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OBConfirmOrderViewController : UIViewController
- (instancetype)initWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete;
@end
