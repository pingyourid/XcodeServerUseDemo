//
//  ViewControllerD.m
//  PresentTest
//
//  Created by zhangbin31 on 2020/10/15.
//

#import "ViewControllerD.h"
#import "Tools.h"

@interface ViewControllerD ()

@end

@implementation ViewControllerD

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"返回C" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
    [btn setFrame:CGRectMake(50, 50, 100, 30)];
    [self.view addSubview:btn];
    
    UIButton *backABtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [backABtn setTitle:@"返回A" forState:UIControlStateNormal];
    [backABtn addTarget:self action:@selector(backA:) forControlEvents:UIControlEventTouchUpInside];
    [backABtn setFrame:CGRectMake(150, 50, 100, 30)];
    [self.view addSubview:backABtn];
}

- (void)back:(id)sender {
    NSLog(@"self.presentingViewController:%p", self.presentingViewController);    
    
    if (self.presentingViewController) {
        [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    }
}

- (void)backA:(id)sender {
    NSLog(@"[Tools shareTools].halfNav:%p", [Tools shareTools].halfNav);
    NSLog(@"[Tools shareTools].halfNav.presentingViewController:%p", [Tools shareTools].halfNav.presentingViewController);
    
    if ([Tools shareTools].halfNav.presentingViewController) {
        [[Tools shareTools].halfNav.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    }
}



@end
