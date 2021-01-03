//
//  SystemController.m
//  app国际化
//
//  Created by Qin on 2021/1/3.
//  Copyright © 2021 qin. All rights reserved.
//

#import "SystemController.h"

@interface SystemController ()
@property (weak, nonatomic) IBOutlet UILabel *lable;

@end

@implementation SystemController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = NSLocalizedString(@"title", nil);
    
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 40)];
    lable.text = NSLocalizedString(@"language", nil);
    lable.textColor = [UIColor grayColor];
    lable.textAlignment = 1;
    [self.view addSubview:lable];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    Localizable.strings
    NSString *title = NSLocalizedString(@"title", nil);
    NSLog(@"title:%@",title);
}

@end
