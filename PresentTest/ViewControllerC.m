//
//  ViewControllerC.m
//  PresentTest
//
//  Created by zhangbin31 on 2020/10/15.
//

#import "ViewControllerC.h"
#import "ViewControllerD.h"

@interface ViewControllerC ()

@end

@implementation ViewControllerC

- (void)viewDidLoad {
//    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"返回B" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
    [btn setFrame:CGRectMake(50, 50, 100, 30)];
    [self.view addSubview:btn];
    
    UIButton *pushBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [pushBtn setTitle:@"present D" forState:UIControlStateNormal];
    [pushBtn addTarget:self action:@selector(go:) forControlEvents:UIControlEventTouchUpInside];
    [pushBtn setFrame:CGRectMake(150, 50, 100, 30)];
    [self.view addSubview:pushBtn];
}

- (void)back:(id)sender {
    if (self.navigationController) {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (void)go:(id)sender {
    ViewControllerD *vc = [[ViewControllerD alloc] init];
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:vc animated:YES completion:nil];
}

@end
