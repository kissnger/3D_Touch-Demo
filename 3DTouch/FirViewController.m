//
//  FirViewController.m
//  3DTouch
//
//  Created by Massimo on 15/9/25.
//  Copyright © 2015年 Massimo. All rights reserved.
//

#import "FirViewController.h"

@interface FirViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *image;


@end

@implementation FirViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismiss:)];
  _image.userInteractionEnabled = YES;
  [self.view addGestureRecognizer:tap];
  
  
  
}
- (void)dismiss:(id)sender {
  [self dismissViewControllerAnimated:NO completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
