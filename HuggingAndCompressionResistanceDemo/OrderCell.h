//
//  OrderCell.h
//  HuggingAndCompressionResistance
//
//  Created by c0ming on 4/25/15.
//  Copyright (c) 2015 c0ming. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrderCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *orderNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *orderTotalPriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *orderCountLabel;

@end
