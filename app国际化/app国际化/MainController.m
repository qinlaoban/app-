//
//  MainController.m
//  app国际化
//
//  Created by Qin on 2021/1/3.
//  Copyright © 2021 qin. All rights reserved.
//

#import "MainController.h"

@interface MainController ()
@property (strong,nonatomic)NSDictionary *datasource;

@end

@implementation MainController
- (NSDictionary *)datasource {

    if (_datasource) return _datasource;

    NSDictionary *datasource = @{@"SystemController":@"跟随系统语言国家化",@"InAppController":@"应用内国际化"};

    return _datasource = datasource;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.rowHeight = 50;
    self.tableView.tableFooterView = [UIView new];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"language"];
    
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"language" forIndexPath:indexPath];
    NSArray *values = [self.datasource allValues];
    cell.textLabel.text = values[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSArray *allKeys = [self.datasource allKeys];
    Class cls = NSClassFromString(allKeys[indexPath.row]);
    UIViewController *controller = [[cls alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
    
}
@end
