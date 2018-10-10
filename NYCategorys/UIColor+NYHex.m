
//
//  UIColor+NYHex.m
//  NYCategorys
//
//  Created by Neo on 2018/10/9.
//  Copyright © 2018年 nuoyuan. All rights reserved.
//

#import "UIColor+NYHex.h"

@implementation UIColor (NYHex)

+ (UIColor *)ny_colorWithHexString:(NSString *)hexString {
    return [self ny_colorWithHexString:hexString alpha:1.0f];
}

+ (UIColor *)ny_colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha {
    NSString *cString = [[hexString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) return [UIColor clearColor];
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
    if ([cString length] < 6) return [UIColor clearColor];
    // Separate into r, g, b substrings
    NSRange range;
    if ([cString length] > 6) {
        cString = [cString substringToIndex:6];
    }
    range.location = 0;
    
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    
    range.location += 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location += 2;
    NSString *bString = [cString substringWithRange:range];
    
    unsigned int r, g, b ;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:alpha];
}


@end
