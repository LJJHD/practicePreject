//
//  VoiceAnimationView.h
//  PracticeProject
//
//  Created by jiajun liu on 2020/6/9.
//  Copyright © 2020 jiajun liu. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface VoiceAnimationView : UIView
@property (nonatomic, assign) NSInteger itemW;
@property (nonatomic, assign) NSInteger itemSpace;
@property (nonatomic, strong) UIColor *itemColor;
- (void)updateDecibel:(CGFloat)decibel;
@property (nonatomic, copy) NSString *name;
- (void)speak;

@end

NS_ASSUME_NONNULL_END
