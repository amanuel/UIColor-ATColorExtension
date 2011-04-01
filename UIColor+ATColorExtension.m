//
// UIColor+ATColorExtension.m
//
//
// Created by Amanuel Tewolde on 26/03/11.
// Copyright (c) 2011 Amanuel Tewolde
//

#import "UIColor+ATColorExtension.h"

@implementation ATColorExtensionrCategoryDummy

@end

@implementation UIColor (ATColorExtension)

+ (UIColor *)colorWithHexString:(NSString *)hexString withHexAlpha:(NSString*)hexAlpha
{
  
  hexString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
	
  //expand css color short form fc0 becomes ffcc00
  if(hexString.length == 3) { 
    NSString *r,*g,*b;
    r = [hexString substringWithRange:NSMakeRange(0, 1)];
    g = [hexString substringWithRange:NSMakeRange(1, 1)];
    b = [hexString substringWithRange:NSMakeRange(2, 1)];
    hexString = [NSString stringWithFormat:@"%@%@%@%@%@%@", r,r,g,g,b,b];
  }
  
  unsigned int colorValue;
  unsigned int alphaValue;
  
  [[NSScanner scannerWithString:hexString] scanHexInt:&colorValue];
  [[NSScanner scannerWithString:hexAlpha] scanHexInt:&alphaValue];
  
  return [UIColor colorWithRed:((float)((colorValue & 0xFF0000) >> 16))/255.0
                         green:((float)((colorValue & 0xFF00) >> 8))/255.0
                          blue:((float)(colorValue & 0xFF))/255.0 
                         alpha:((float)(alphaValue & 0xFF))/255.0 ];
  
}

+ (UIColor *)colorWithHexString:(NSString *)hexString 
{
	return [self colorWithHexString:hexString withHexAlpha:@"ff"];
}

@end
