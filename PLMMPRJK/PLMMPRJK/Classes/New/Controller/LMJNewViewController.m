//
//  LMJNewViewController.m
//  PLMMPRJK
//
//  Created by HuXuPeng on 2017/4/6.
//  Copyright © 2017年 GoMePrjk. All rights reserved.
//

#import "LMJNewViewController.h"
#import "LMJLoggerViewController.h"
#import "LMJAddressPickerViewController.h"
#import "LMJNoNavBarViewController.h"
#import "LMJAdaptFontViewController.h"
#import "LMJBlankPageViewController.h"
#import "LMJAnimationNavBarViewController.h"
#import "LMJYYTextViewController.h"
#import "LMJListExpandHideViewController.h"
#import "LMJElementsCollectionViewController.h"
#import "LMJVerticalLayoutViewController.h"
#import "LMJHorizontalLayoutViewController.h"

@interface LMJNewViewController ()

@end

@implementation LMJNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.backgroundColor = [UIColor whiteColor];
    
    [self.navigationController.tabBarItem setBadgeColor:[UIColor RandomColor]];
    
    [self.navigationController.tabBarItem setBadgeValue:@"2"];
    
    
    
    UIEdgeInsets edgeInsets = self.tableView.contentInset;
    edgeInsets.bottom += self.tabBarController.tabBar.mj_h;
    self.tableView.contentInset = edgeInsets;
    
    LMJWordArrowItem *item0 = [LMJWordArrowItem itemWithTitle:@"日志记录" subTitle: nil];
    item0.destVc = [LMJLoggerViewController class];
    
    item0.titleColor = [UIColor blackColor];
    item0.titleFont = BOLDSYSTEMFONT(16);
    
    LMJWordArrowItem *item1 = [LMJWordArrowItem itemWithTitle:@"省市区三级联动" subTitle: nil];
    
    item1.destVc = [LMJAddressPickerViewController class];
    
    
    LMJWordArrowItem *item2 = [LMJWordArrowItem itemWithTitle:@"没有导航栏全局返回" subTitle: nil];
    
    item2.destVc = [LMJNoNavBarViewController class];
    
    
    LMJWordArrowItem *item3 = [LMJWordArrowItem itemWithTitle:@"字体适配屏幕" subTitle: nil];
    
    item3.destVc = [ LMJAdaptFontViewController class];
    
    
    LMJWordArrowItem *item4 = [LMJWordArrowItem itemWithTitle:@"空白页展示" subTitle: nil];
    
    item4.destVc = [LMJBlankPageViewController class];
    
    LMJWordArrowItem *item5 = [LMJWordArrowItem itemWithTitle:@"导航条颜色或者高度渐变" subTitle: nil];
    
    item5.destVc = [LMJAnimationNavBarViewController class];
    
    LMJWordArrowItem *item6 = [LMJWordArrowItem itemWithTitle:@"关于 YYText 使用" subTitle: nil];
    
    item6.destVc = [LMJYYTextViewController class];
    
    LMJWordArrowItem *item7 = [LMJWordArrowItem itemWithTitle:@"列表的展开和收起" subTitle: nil];
    
    item7.destVc = [LMJListExpandHideViewController class];
    
    LMJWordArrowItem *item8 = [LMJWordArrowItem itemWithTitle:@"京东首页 CollectionView 布局" subTitle: nil];
    
    item8.destVc = [LMJElementsCollectionViewController class];
    
    
    LMJWordArrowItem *item9 = [LMJWordArrowItem itemWithTitle:@"垂直流水布局" subTitle: nil];
    
    item9.destVc = [LMJVerticalLayoutViewController class];
    
    
    LMJWordArrowItem *item10 = [LMJWordArrowItem itemWithTitle:@"水平流水布局" subTitle: nil];
    
    item10.destVc = [LMJHorizontalLayoutViewController class];
    
    
    LMJItemSection *section0 = [LMJItemSection sectionWithItems:@[item0, item1, item2, item3, item4, item5, item6, item7, item8, item9, item10] andHeaderTitle:@"静态单元格的头部标题" footerTitle:@"静态单元格的尾部标题"];
    
    [self.sections addObject:section0];
}



#pragma mark 重写BaseViewController设置内容

//- (UIColor *)lmjNavigationBackgroundColor:(LMJNavigationBar *)navigationBar
//{
//    return [UIColor whiteColor];
//}
//
//- (BOOL)lmjNavigationIsHideBottomLine:(LMJNavigationBar *)navigationBar
//{
//    return NO;
//}

- (void)leftButtonEvent:(UIButton *)sender navigationBar:(LMJNavigationBar *)navigationBar
{
    LMJLog(@"%s", __func__);
}

- (void)rightButtonEvent:(UIButton *)sender navigationBar:(LMJNavigationBar *)navigationBar
{
    LMJLog(@"%s", __func__);
}

- (void)titleClickEvent:(UILabel *)sender navigationBar:(LMJNavigationBar *)navigationBar
{
    LMJLog(@"%@", sender);
}

- (NSMutableAttributedString*)lmjNavigationBarTitle:(LMJNavigationBar *)navigationBar
{
    return [self changeTitle:@"预演列表"];
}


- (UIImage *)lmjNavigationBarLeftButtonImage:(UIButton *)leftButton navigationBar:(LMJNavigationBar *)navigationBar
{
    [leftButton setTitle:@"左边" forState: UIControlStateNormal];
    [leftButton setTitleColor:[UIColor RandomColor] forState:UIControlStateNormal];
    
    return nil;
}


- (UIImage *)lmjNavigationBarRightButtonImage:(UIButton *)rightButton navigationBar:(LMJNavigationBar *)navigationBar
{
    rightButton.backgroundColor = [UIColor RandomColor];
    
    return nil;
}



#pragma mark 自定义代码

-(NSMutableAttributedString *)changeTitle:(NSString *)curTitle
{
    NSMutableAttributedString *title = [[NSMutableAttributedString alloc] initWithString:curTitle];
    
    [title addAttribute:NSForegroundColorAttributeName value:HEXCOLOR(0x333333) range:NSMakeRange(0, title.length)];
    
    [title addAttribute:NSFontAttributeName value:CHINESE_SYSTEM(18) range:NSMakeRange(0, title.length)];
    
    return title;
}


@end
