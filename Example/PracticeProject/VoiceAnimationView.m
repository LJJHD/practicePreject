//
//  VoiceAnimationView.m
//  PracticeProject
//
//  Created by jiajun liu on 2020/6/9.
//  Copyright © 2020 jiajun liu. All rights reserved.
// 分贝大小 0 ~ 255

#import "VoiceAnimationView.h"
@interface VoiceAnimationView ()
@property (nonatomic, assign) CGFloat decibel;
@property (nonatomic, strong) NSMutableArray<NSMutableArray<NSNumber*> *>* decibelModel;
@property (nonatomic, assign) NSInteger defVoiceItem;//默认音柱
@property (nonatomic, assign) NSInteger curItemNum;//当前音频柱数量
@property (nonatomic, assign) NSInteger maxItemNum;//根据宽度计算最大音柱数量



@end

@implementation VoiceAnimationView

- (instancetype)init{
    self = [super init];
    if (self) {
        _decibel = 10;
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)updateDecibel:(CGFloat)decibel{
    self.decibel = decibel/2.55;
    [self p_configDecibelModel];
    [self setNeedsDisplay];
}

//用来计算音频波动的数量和高度,9g
- (void)p_configDecibelModel{
    if (_decibel <= 25) {
        self.curItemNum = self.maxItemNum/4;
    }else if (_decibel <= 50){
         self.curItemNum = self.maxItemNum/2;
    }else if (_decibel <= 75){
         self.curItemNum = self.maxItemNum * (3/4);
    }else if (_decibel <= 100){
        self.curItemNum = self.maxItemNum;
    }
    
}

- (void)layoutSubviews{
    [super layoutSubviews];
    self.maxItemNum = self.frame.size.width / (_itemW + _itemSpace);
}

- (void)updateConstraints{
    [super updateConstraints];
}
//配置分贝对应的数量

//配置音柱的高度


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    if (self.curItemNum <= 0) {
        return;
    }
   CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetLineJoin(context, kCGLineJoinRound);
    CGContextSetRGBStrokeColor(context, 0.5, 0.8, 0.6, 1.0);
    CGContextSetLineWidth(context, _itemSpace);
    NSInteger selfH = self.frame.size.height/2;
    for (NSInteger i = 0; i < self.curItemNum; i++) {
        NSUInteger height = 20 + (arc4random() % selfH);
        
        [UIView animateWithDuration:0.2 animations:^{
            CGContextMoveToPoint(context,self.frame.size.width - (i * (self.itemW + self.itemSpace)), selfH );
            CGContextAddLineToPoint(context, self.frame.size.width - (i * (self.itemW + self.itemSpace)), height);
            //向下
//            CGContextMoveToPoint(context,self.frame.size.width - (i * (self.itemW + self.itemSpace)), self.frame.size.height/2 );
//            CGContextAddLineToPoint(context, self.frame.size.width - (i * (self.itemW + self.itemSpace)),  -height);
        }];
       
    }
    CGContextStrokePath(context);
}


@end
