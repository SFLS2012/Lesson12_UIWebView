//
//  ViewController.m
//  Lesson12_UIWebView
//
//  Created by 朱 皓斌 on 13-3-11.
//  Copyright (c) 2013年 朱 皓斌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myFirstWebView,URLstring;
- (void)viewDidLoad
{
    //myFirstWebView=[[UIWebView alloc]init];
    
    NSString *webLinkString=@"http://www.apple.com.cn";
    
    NSURL *webLinkURL=[NSURL URLWithString:webLinkString];
   
    NSURLRequest *webLinkURLRequest=[NSURLRequest requestWithURL:webLinkURL ];
    
    [myFirstWebView loadRequest:webLinkURLRequest];
    myFirstWebView.scalesPageToFit=YES;
    UIWebView *mySecondWebView=[[UIWebView alloc]initWithFrame:CGRectMake(0, 274, 320, 274)];
    
    [self.view addSubview:mySecondWebView];
    NSURL *secondWebLinkURL=[NSURL URLWithString:@"http://www.apple.com"];
    
    NSURLRequest *secondWebLinkURLRequest=[NSURLRequest requestWithURL:secondWebLinkURL];
    
    [mySecondWebView loadRequest:secondWebLinkURLRequest];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submit:(UIButton *)sender {
    NSLog(@"%@",URLstring.text);
    NSString *webLinkString=URLstring.text;
    NSURL *webLinkURL=[NSURL URLWithString:webLinkString];
    NSURLRequest *webLinkURLRequest=[NSURLRequest requestWithURL:webLinkURL ];
    myFirstWebView.scalesPageToFit=YES;
    [myFirstWebView loadRequest:webLinkURLRequest];
    [URLstring resignFirstResponder];
}
@end










