//
//  ViewController.m
//  Device
//
//  Created by Dolice on 2013/03/25.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import "ViewController.h"
#import "Classes/Device.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  //デバイス情報をラベルにセット
  [self setDeviceInformation];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)setDeviceInformation
{
  //初期化
  Device *device = [[Device alloc] init];
  //デバイス名称
  self.labelIOSDevice.text = device.iOSDevice;
  //iPhone5であれば1が返る
  self.labelIphone5.text = [NSString stringWithFormat:@"%@%d", @"isIphone5: ", device.isIphone5];
  //iPhone4/4Sであれば1が返る
  self.labelIphone4.text = [NSString stringWithFormat:@"%@%d", @"isIphone4: ", device.isIphone4];
  //iPhone3G/3GSであれば1が返る
  self.labelIphone3.text = [NSString stringWithFormat:@"%@%d", @"isIphone3: ", device.isIphone3];
  //iPad/iPad2/iPad miniであれば1が返る
  self.labelIpad.text = [NSString stringWithFormat:@"%@%d", @"isIpad: ", device.isIpad];
  //新しい iPad以降であれば1が返る
  self.labelIpadRetina.text = [NSString stringWithFormat:@"%@%d", @"isIpadRetina: ", device.isIpadRetina];
}

@end
