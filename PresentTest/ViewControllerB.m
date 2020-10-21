//
//  ViewControllerB.m
//  PresentTest
//
//  Created by zhangbin31 on 2020/10/15.
//

#import "ViewControllerB.h"
#import "ViewControllerC.h"

@interface ViewControllerB ()

@end

@implementation ViewControllerB

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor clearColor];
    
    // 下面view
    UIView *bottomView = [[UIView alloc] initWithFrame:CGRectMake(0, 200, 414, 280)];
    bottomView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:bottomView];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"返回A" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
    [btn setFrame:CGRectMake(50, 50, 100, 30)];
    [bottomView addSubview:btn];
    
    UIButton *pushBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [pushBtn setTitle:@"push C" forState:UIControlStateNormal];
    [pushBtn addTarget:self action:@selector(go:) forControlEvents:UIControlEventTouchUpInside];
    [pushBtn setFrame:CGRectMake(100, 50, 100, 30)];
    [bottomView addSubview:pushBtn];
}

- (void)back:(id)sender {
    if (self.presentingViewController) {
        [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    }
}

- (void)go:(id)sender {
    ViewControllerC *vc = [[ViewControllerC alloc] init];
    
    if (self.navigationController) {
        [self.navigationController pushViewController:vc animated:YES];
    }
}

@end
