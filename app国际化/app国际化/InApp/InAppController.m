//
//  InAppController.m
//  app国际化
//
//  Created by Qin on 2021/1/3.
//  Copyright © 2021 qin. All rights reserved.
//

#import "InAppController.h"

@interface InAppController ()
@property (strong,nonatomic)UILabel *label;
@end

@implementation InAppController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"语言";
    
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 40)];
    lable.text = @"语言";
    lable.textColor = [UIColor grayColor];
    lable.textAlignment = 1;
    self.label = lable;
    [self.view addSubview:lable];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(20, CGRectGetMaxY(lable.frame) + 10, [UIScreen mainScreen].bounds.size.width - 40 , 40)];
    
    [button setTitle:@"系统内切换" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor grayColor]];
    [button addTarget:self action:@selector(switchLanguage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)switchLanguage{
    static int i = 0;
    if (i % 2 == 0) {
        self.label.text =   NSLocalizedStringFromTable(@"language", @"lan_cn", nil);
    }else {
        self.label.text =   NSLocalizedStringFromTable(@"language", @"lan_en", nil);
    }
    i++;

}

@end
