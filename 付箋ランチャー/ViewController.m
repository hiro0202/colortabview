//
//  ViewController.m
//  付箋ランチャー
//
//  Created by Hiromichi Otsuka on 2014/02/22.
//  Copyright (c) 2014年 AppCreatorsLab. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    BOOL isMenuOpen;
}

@end

@implementation ViewController
@synthesize tab1View;
@synthesize tab2View;
@synthesize tab3View;
@synthesize tab4View;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    isMenuOpen = NO;
}

-(void)viewWillAppear:(BOOL)animated{
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)menu_btn:(id)sender {
    if(isMenuOpen){
        //メニューを閉じる操作
        [UIView
         animateWithDuration:0.2
         animations:^{
             _menuView.frame = CGRectOffset(_menuView.frame, +79, 0);
         }
         ];
        [UIView
         animateWithDuration:0.2
         animations:^{
             _menuBtn.frame = CGRectOffset(_menuBtn.frame, +79, 0);
         }
         ];

        isMenuOpen = NO;
    }else{
        //メニューを開く操作
        [UIView
         animateWithDuration:0.2
         animations:^{
             _menuView.frame = CGRectOffset(_menuView.frame, -79, 0);
         }
         ];
        [UIView
         animateWithDuration:0.2
         animations:^{
             _menuBtn.frame = CGRectOffset(_menuBtn.frame, -79, 0);
         }
         ];
        isMenuOpen = YES;
    }

}













































//tabView操作用のアクション
- (IBAction)main_tab1:(id)sender {
    [self.view bringSubviewToFront:tab4View];
    [self.view bringSubviewToFront:_tab4btn];
    [self.view bringSubviewToFront:tab3View];
    [self.view bringSubviewToFront:_tab3btn];
    [self.view bringSubviewToFront:tab2View];
    [self.view bringSubviewToFront:_tab2btn];
    [self.view bringSubviewToFront:tab1View];
    [self.view bringSubviewToFront:_tab1btn];
    [self.view bringSubviewToFront:_menuBtn];
    [self.view bringSubviewToFront:_menuView];

    isMenuOpen = NO;

    
}

- (IBAction)main_tab2:(id)sender {
    [self.view bringSubviewToFront:tab4View];
    [self.view bringSubviewToFront:_tab4btn];
    [self.view bringSubviewToFront:tab3View];
    [self.view bringSubviewToFront:_tab3btn];
    [self.view bringSubviewToFront:tab1View];
    [self.view bringSubviewToFront:_tab1btn];
    [self.view bringSubviewToFront:tab2View];
    [self.view bringSubviewToFront:_tab2btn];
    [self.view bringSubviewToFront:_menuBtn];
    [self.view bringSubviewToFront:_menuView];

    isMenuOpen = NO;

}

- (IBAction)main_tab3:(id)sender {
    [self.view bringSubviewToFront:tab4View];
    [self.view bringSubviewToFront:_tab4btn];
    [self.view bringSubviewToFront:tab2View];
    [self.view bringSubviewToFront:_tab2btn];
    [self.view bringSubviewToFront:tab1View];
    [self.view bringSubviewToFront:_tab1btn];
    [self.view bringSubviewToFront:tab3View];
    [self.view bringSubviewToFront:_tab3btn];
    [self.view bringSubviewToFront:_menuBtn];
    [self.view bringSubviewToFront:_menuView];

    isMenuOpen = NO;

    
}

- (IBAction)main_tab4:(id)sender {
    [self.view bringSubviewToFront:tab3View];
    [self.view bringSubviewToFront:_tab3btn];
    [self.view bringSubviewToFront:tab2View];
    [self.view bringSubviewToFront:_tab2btn];
    [self.view bringSubviewToFront:tab1View];
    [self.view bringSubviewToFront:_tab1btn];
    [self.view bringSubviewToFront:tab4View];
    [self.view bringSubviewToFront:_tab4btn];
    [self.view bringSubviewToFront:_menuBtn];
    [self.view bringSubviewToFront:_menuView];

    isMenuOpen = NO;

}
@end
