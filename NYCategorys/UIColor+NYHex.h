//
//  UIColor+NYHex.h
//  NYCategorys
//
//  Created by Neo on 2018/10/9.
//  Copyright © 2018年 nuoyuan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (NYHex)

+ (UIColor *)ny_colorWithHexString:(NSString *)hexString;

+ (UIColor *)ny_colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END
