//
// UIColor+ATColorExtension.m
//
//
// Created by Amanuel Tewolde on 26/03/11.
// Copyright (c) 2011 Amanuel Tewolde
//

#import <Foundation/Foundation.h>


@interface UIColor (ATColorExtension)

+ (UIColor *)colorWithHexString:(NSString *)hexString withHexAlpha:(NSString*)hexAlpha;
+ (UIColor *)colorWithHexString:(NSString *)hexString;

@end

// needed to force this to load when used in a static library.
// see http://iphonedevelopmentexperiences.blogspot.com/2010/03/categories-in-static-library.html
@interface ATColorExtensionCategoryDummy : NSObject {
  
}

@end