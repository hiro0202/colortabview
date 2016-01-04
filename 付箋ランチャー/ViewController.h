//
//  ViewController.h
//  付箋ランチャー
//
//  Created by Hiromichi Otsuka on 2014/02/22.
//  Copyright (c) 2014年 AppCreatorsLab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//tabVIewのOutlet
@property (weak, nonatomic) IBOutlet UIView *tab1View;
@property (weak, nonatomic) IBOutlet UIView *tab2View;
@property (weak, nonatomic) IBOutlet UIView *tab3View;
@property (weak, nonatomic) IBOutlet UIView *tab4View;
@property (weak, nonatomic) IBOutlet UIButton *tab1btn;
@property (weak, nonatomic) IBOutlet UIButton *tab2btn;
@property (weak, nonatomic) IBOutlet UIButton *tab3btn;
@property (weak, nonatomic) IBOutlet UIButton *tab4btn;
@property (weak, nonatomic) IBOutlet UIView *menuView;
@property (weak, nonatomic) IBOutlet UIButton *menuBtn;

//tabView操作用のアクション
- (IBAction)menu_btn:(id)sender;
- (IBAction)main_tab1:(id)sender;
- (IBAction)main_tab2:(id)sender;
- (IBAction)main_tab3:(id)sender;
- (IBAction)main_tab4:(id)sender;

@end
