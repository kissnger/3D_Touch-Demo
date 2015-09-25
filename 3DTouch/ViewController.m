//
//  ViewController.m
//  3DTouch
//
//  Created by Massimo on 15/9/25.
//  Copyright © 2015年 Massimo. All rights reserved.
//

#import "ViewController.h"
#import "FirViewController.h"
@interface ViewController ()<UIViewControllerPreviewingDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (strong, nonatomic)FirViewController *vc;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
 
  [self registerForPreviewingWithDelegate:self sourceView:_image];
}



- (void)previewingContext:(id<UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit{
  
  [self presentViewController:viewControllerToCommit animated:YES completion:nil];
  
}
- (UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location{
  
  
  _vc = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"FirVC"];
 
  _vc.preferredContentSize = CGSizeMake(0.0f,300.0f);
//  CGRect rect = CGRectMake(0, 0, 0,0);
//  previewingContext.sourceRect = rect;
  
  return _vc;
}

- (void)traitCollectionDidChange:(UITraitCollection *)previousTraitCollection{
  
  [super traitCollectionDidChange: previousTraitCollection];
  if ((self.traitCollection.verticalSizeClass != previousTraitCollection.verticalSizeClass)
      || self.traitCollection.horizontalSizeClass != previousTraitCollection.horizontalSizeClass) {
    // your custom implementation here
  }
}


@end
