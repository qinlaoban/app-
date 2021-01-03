//
//  ViewController.m
//  app国际化
//
//  Created by Qin on 2020/12/2.
//  Copyright © 2020 qin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    Localizable.strings
    NSString *title = NSLocalizedString(@"title", nil);
    NSLog(@"title:%@",title);
}


/// 应用内的国家化 lan_en.strings 文件
- (IBAction)chinese:(id)sender {
// lan_cn 加载文件名
    NSString *title = NSLocalizedStringFromTable(@"title", @"lan_cn", nil);
    NSLog(@"title:%@",title);
}
- (IBAction)english:(id)sender {
   NSString *title = NSLocalizedStringFromTable(@"title", @"lan_en", nil);
    NSLog(@"title:%@",title);
}

@end
