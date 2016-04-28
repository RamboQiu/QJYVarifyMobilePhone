//
//  NSString+QJYVerifyMobilePhone.m
//  QJYVerifyMobilePhone
//
//  Created by QiuJunyun on 16/4/28.
//  Copyright © 2016年 QiuJunyun. All rights reserved.
//

#import "NSString+QJYVerifyMobilePhone.h"

@implementation NSString (QJYVerifyMobilePhone)
- (BOOL)isValidPhoneNumber {
    /**
     * 手机号码
     * 移动：134[0-8],135,136,137,138,139,140,147,150,151,152,157,158,159,178,182,183,184,187,188,1705
     * 联通：130,131,132,141,143,145,152,155,156,185,186,175,176,1709
     * 电信：133,1349,142,144,146,148,149,153,180,181,189,177,1700
     */
    NSString * MOBILE = @"^1(3[0-9]|5[0-35-9]|8[025-9])\\d{8}$";
    /**
     * 中国移动：China Mobile
     * 134[0-8],135,136,137,138,139,140,147,150,151,152,157,158,159,178,182,183,184,187,188,1705
     */
    NSString * CM = @"^1(34[0-8]|705|(3[5-9]|4[07]|5[0127-9]|78|8[23478])\\d)\\d{7}$";
    /**
     * 中国联通：China Unicom
     * 130,131,132,141,143,145,152,155,156,185,186,175,176,1709
     */
    NSString * CU = @"^1(709|(3[0-2]|4[135]|5[256]|8[56]|7[56])\\d)\\d{7}$";
    /**
     * 中国电信：China Telecom
     * 133,1349,142,144,146,148,149,153,177,180,181,189,1700
     */
    NSString * CT = @"^1((33|4[24689]|53|77|8[019])[0-9]|349|700)\\d{7}$";
    /**
     * 国际长途中国区(+86)
     * 区号：+86
     * 号码：十一位
     */
    NSString * IPH = @"^\\+861(3|5|8)\\d{9}$";
    
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
    NSPredicate *regextestcm = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CM];
    NSPredicate *regextestcu = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CU];
    NSPredicate *regextestct = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CT];
    NSPredicate *regextestiph = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", IPH];
    
    if (([regextestmobile evaluateWithObject:self])
        || ([regextestcm evaluateWithObject:self])
        || ([regextestct evaluateWithObject:self])
        || ([regextestcu evaluateWithObject:self])
        || ([regextestiph evaluateWithObject:self])) {
        return YES;
    }
    return NO;
}
@end
