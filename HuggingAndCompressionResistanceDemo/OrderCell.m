//
//  OrderCell.m
//  HuggingAndCompressionResistance
//
//  Created by c0ming on 4/25/15.
//  Copyright (c) 2015 c0ming. All rights reserved.
//

#import "OrderCell.h"

@interface OrderCell ()

@property (weak, nonatomic) IBOutlet UIButton *minuteBtn;
@property (weak, nonatomic) IBOutlet UIButton *addBtn;

@end

@implementation OrderCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.minuteBtn.layer.cornerRadius = 15.0f;
    self.minuteBtn.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.minuteBtn.layer.borderWidth = 0.5f;
    self.addBtn.layer.cornerRadius = 15.0f;
    self.addBtn.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.addBtn.layer.borderWidth = 0.5f;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
