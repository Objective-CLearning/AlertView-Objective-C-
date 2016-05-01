//  ViewController.m
//  AlertTest


#import "ViewController.h"


@implementation ViewController

-(id)initWithFrame:(CGRect)frame
{
    self =[super init];
    if(!self) return nil;
    self.view.frame=frame;
    self.view.backgroundColor=[UIColor lightGrayColor];
    
    //button 初始化必配至記憶體
    UIButton *button=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
    button.center=CGPointMake(frame.size.width/2, frame.size.height/2);
    [button setTitle:@"Press Me" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(OnButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    return self;
}

-(void)OnButtonAction:(id)sender { //按鍵連結動作

    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"App訊息" message:@"想購買本產品嗎" delegate:self cancelButtonTitle:@"謝謝,不需要" otherButtonTitles:@"好",@"再看看", nil];
    alert.tag=1;
    [alert show];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (alertView.tag !=1) return;
    
    UIAlertView *alert =[[UIAlertView alloc] initWithTitle:@"回復購買訊息" message:@"" delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil];
    
    alert.tag=2;
    switch (buttonIndex) {
        case 0:
            alert.message=@"再見";
            break;
        case 1:
            alert.message=@"謝謝你的支持";
            break;
        case 2:
            alert.message=@"歡迎下次再來";
            break;
    }
    
    [alert show];
}


@end
