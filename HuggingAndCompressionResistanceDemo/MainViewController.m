//
//  MainViewController.m
//  HuggingAndCompressionResistanceDemo
//
//  Created by c0ming on 4/27/15.
//  Copyright (c) 2015 c0ming. All rights reserved.
//

#import "MainViewController.h"

#import "OrderCell.h"
#import "OrderModel.h"

static NSString *identifier = @"OrderCell";

@interface MainViewController ()

@property (nonatomic, strong) NSMutableArray *orderArray;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerNib:[UINib nibWithNibName:identifier bundle:nil] forCellReuseIdentifier:identifier];
    
    self.orderArray = [[NSMutableArray alloc] init];
    
    OrderModel *model1 = [[OrderModel alloc] init];
    model1.orderName = @"咖喱土豆排骨";
    model1.orderTotalPrice = @"$23";
    model1.orderCount = @"1";
    [self.orderArray addObject:model1];
    
    OrderModel *model2 = [[OrderModel alloc] init];
    model2.orderName = @"我也是咖喱土豆排骨，只是名字有点长";
    model2.orderTotalPrice = @"$233";
    model2.orderCount = @"10";
    [self.orderArray addObject:model2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.orderArray.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    OrderCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    OrderModel *model = self.orderArray[indexPath.row];
    cell.orderNameLabel.text = model.orderName;
    cell.orderTotalPriceLabel.text = model.orderTotalPrice;
    cell.orderCountLabel.text = model.orderCount;
    
    return cell;
}

@end
