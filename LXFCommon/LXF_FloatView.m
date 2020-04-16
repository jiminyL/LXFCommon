//
//  COFloatView.m
//  iBuilding
//
//  Created by 梁啸峰 on 2018/10/11.
//

#import "LXF_FloatView.h"

@interface LXF_FloatView()

@property (nonatomic, strong) UIView *bgView;

@end

@implementation LXF_FloatView

- (instancetype)initWithLocationStyle:(FloatViewContentLocation)location andCustomSize:(BOOL)customSize {
    if (self = [super init]) {
        self.location = location;
        self.customSize = customSize;
    }
    return self;
}

- (void)layoutSubviews {
    [self refreshViews];
}

- (void)setContentView:(UIView *)contentView {
    _contentView = contentView;
    
    [self refreshViews];
}

- (void)refreshViews {
    if (!self.bgView) {
        self.bgView = [[UIView alloc] init];
        [self addSubview:self.bgView];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(bgViewTouchEvent)];
        [self.bgView setUserInteractionEnabled:YES];
        [self.bgView addGestureRecognizer:tapGes];
    }
    [self.bgView setFrame:self.bounds];
    [self.bgView setBackgroundColor:[UIColor blackColor]];
    [self.bgView setAlpha:0.3f];
    
    if (self.contentView) {
        for (UIView *view in self.subviews) {
            if (view != self.bgView) {
                [view removeFromSuperview];
            }
        }
        [self addSubview:self.contentView];
    }
    CGFloat height = self.customSize ? self.contentView.frame.size.height : (8.f/10)*self.frame.size.height;
    CGFloat width = self.customSize ? self.contentView.frame.size.width : self.frame.size.width;
    [self.contentView setFrame:CGRectMake((self.frame.size.width - width)/2, self.frame.size.height, self.customSize ? self.contentView.frame.size.width : self.frame.size.width, height)];
}

- (void)changeContentViewFrame {
    [UIView animateWithDuration:0.2 animations:^{
        CGFloat height = self.customSize ? self.contentView.frame.size.height : (8.f/10)*self.frame.size.height;
        CGFloat y = self.customSize ? self.location == FloatViewContentLocationBottom ? (self.frame.size.height - height) : ((self.frame.size.height - height))/2: (2.f/10)*self.frame.size.height;
        CGFloat width = self.customSize ? self.contentView.frame.size.width : self.frame.size.width;
        [self.contentView setFrame:CGRectMake((self.frame.size.width - width)/2, y, width, height)];
    } completion:^(BOOL finished) {
        
    }];
}

- (void)bgViewTouchEvent {
    [self hidden];
}

- (void)show {
    [self setHidden:NO];
    [UIView animateWithDuration:0.35 animations:^{
        CGFloat height = self.customSize ? self.contentView.frame.size.height : (8.f/10)*self.frame.size.height;
        CGFloat y = self.customSize ? self.location == FloatViewContentLocationBottom ? (self.frame.size.height - height) : ((self.frame.size.height - height))/2 : (2.f/10)*self.frame.size.height;
        CGFloat width = self.customSize ? self.contentView.frame.size.width : self.frame.size.width;
        [self.contentView setFrame:CGRectMake((self.frame.size.width - width)/2, y, width, height)];
    } completion:^(BOOL finished) {
        
    }];
}

- (void)hidden {
    [UIView animateWithDuration:0.35 animations:^{
        CGFloat height = self.customSize ? self.contentView.frame.size.height : (8.f/10)*self.frame.size.height;
        CGFloat width = self.customSize ? self.contentView.frame.size.width : self.frame.size.width;
        [self.contentView setFrame:CGRectMake((self.frame.size.width - width)/2, self.frame.size.height, width, height)];
    } completion:^(BOOL finished) {
        [self setHidden:YES];
        [self.contentView removeFromSuperview];
    }];
}

@end
