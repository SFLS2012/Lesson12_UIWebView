//
//  ViewController.h
//  Lesson12_UIWebView
//
//  Created by 朱 皓斌 on 13-3-11.
//  Copyright (c) 2013年 朱 皓斌. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIWebViewDelegate>
- (IBAction)submit:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UITextField *URLstring;
@property (strong, nonatomic) IBOutlet UIWebView *myFirstWebView;

@end
