//
//  ReceiptColumnCategoryName.m
//  SmartReceipts
//
//  Created by Jaanus Siim on 24/04/15.
//  Copyright (c) 2015 Will Baumann. All rights reserved.
//

#import <objc/NSObjCRuntime.h>
#import <objc/objc.h>
#import "ReceiptColumnCategoryName.h"
#import "WBReceipt.h"

@implementation ReceiptColumnCategoryName

- (NSString *)valueFromReceipt:(WBReceipt *)receipt receiptIndex:(NSInteger)receiptIndex forCSV:(BOOL)forCSV {
    return [receipt category];
}

@end
