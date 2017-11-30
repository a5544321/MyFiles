//
//  BottomLineLabel.m
//  CareTek_V5
//
//  Created by CareTek on 2016/11/17.
//  Copyright © 2016年 Cheng. All rights reserved.
//

#import "BottomLineLabel.h"

@implementation BottomLineLabel

-(void)awakeFromNib{
    [super awakeFromNib];
    self.clipsToBounds = YES;
    [self layoutIfNeeded];
    _bottomLayer = [CALayer layer];
    _bottomLayer.borderWidth = 1;
    _bottomLayer.frame = CGRectMake(-1, self.bounds.size.height-1, self.frame.size.width, 1);
    [_bottomLayer setBorderColor:[UIColor blackColor].CGColor];
    [self.layer addSublayer:_bottomLayer];
}

-(void)layoutSubviews{
    _bottomLayer.frame = CGRectMake(-1, self.bounds.size.height-1, self.frame.size.width, 1);
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
