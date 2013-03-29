//
//  Device.m
//  Device
//
//  Created by Dolice on 2013/03/24.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import "Device.h"

@implementation Device

- (NSString *)iOSDevice
{
  if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
    if ([[UIScreen mainScreen] respondsToSelector: @selector(scale)]) {
      CGSize result = [[UIScreen mainScreen] bounds].size;
      CGFloat scale = [UIScreen mainScreen].scale;
      result = CGSizeMake(result.width * scale, result.height * scale);
      if(result.height == 960){
        return (@"iPhone4");
      }
      if(result.height == 1136){
        return (@"iPhone5");
      }
    } else {
      return (@"iPhone3");
    }
  } else {
    if ([[UIScreen mainScreen] respondsToSelector: @selector(scale)]) {
      return (@"iPad Retina");
    } else {
      return (@"iPad");
    }
  }
  return (@"unknown");
}

- (BOOL) isIphone5
{
  return ([[self iOSDevice] isEqualToString:@"iPhone5"]);
}

- (BOOL) isIphone4
{
  return ([[self iOSDevice] isEqualToString:@"iPhone4"]);
}

- (BOOL) isIphone3
{
  return ([[self iOSDevice] isEqualToString:@"iPhone3"]);
}

- (BOOL) isIpad
{
  return ([[self iOSDevice] isEqualToString:@"iPad"]);
}

- (BOOL) isIpadRetina
{
  return ([[self iOSDevice] isEqualToString:@"iPad Retina"]);
}

@end
