//
//  RNCX5WebView.m
//  RNReactNativeX5webviewIos
//
//  Created by 荣 li on 2019/5/23.
//  Copyright © 2019年 Facebook. All rights reserved.
//

#import "RNCX5WebView.h"
#import <React/RCTConvert.h>
#import <TBSPlus/TBSWKWebView.h>
#import <TBSPlus/TBSWebViewController.h>
@interface RNCX5WebView()
@property (nonatomic,strong)TBSWebViewController *webViewController;
@end

@implementation RNCX5WebView

- (void)didMoveToWindow{
    if (self.window != nil) {
        [self addSubview:self.webViewController.view];
        [self visitSource];
    }
}

- (void)toggleShow:(BOOL)isShow{
    self.hidden = isShow;
}

- (void)setSource:(NSDictionary *)source
{
    if (![_source isEqualToDictionary:source]) {
        _source = [source copy];
        if (_webViewController != nil) {
            [self visitSource];
        }
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    _webViewController.view.frame = CGRectMake(0, 0, self.window.bounds.size.width, self.window.bounds.size.height);
}

- (void)visitSource
{
    [_webViewController loadRequestWithURL:[self requestForSource:_source].URL];
}

- (NSURLRequest *)requestForSource:(id)json {
    NSURLRequest *request = [RCTConvert NSURLRequest:json];
    return request;
}

- (void)setIsHidden:(BOOL)isHidden{
    self.hidden = isHidden;
}

- (void)setWxAppId:(NSString *)wxAppId{
    
}

#pragma mark - lazy load
- (TBSWebViewController *)webViewController{
    if (!_webViewController) {
        _webViewController = [[TBSWebViewController alloc] init];
    }
    return _webViewController;
}

@end
