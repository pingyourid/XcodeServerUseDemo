//
//  ViewController.m
//  PresentTest
//
//  Created by zhangbin31 on 2020/10/15.
//

#import "ViewController.h"
#import "ViewControllerB.h"
#import "Tools.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"打开B" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(openB:) forControlEvents:UIControlEventTouchUpInside];
    [btn setFrame:CGRectMake(50, 50, 100, 30)];
    [self.view addSubview:btn];
    
    NSLog(@"ViewController:%p", self);
    NSLog(@"need a bug:%f", btn);
}

- (void)openB:(id)sender {
    ViewControllerB *vc = [[ViewControllerB alloc] init];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    [nav setNavigationBarHidden:YES];
    nav.view.backgroundColor = [UIColor clearColor];
    nav.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    [self presentViewController:nav animated:YES completion:nil];
    
    [Tools shareTools].halfNav = nav;
    
    NSLog(@"nav:%p", nav);
}

@end
