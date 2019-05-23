//
//  RNCX5WebViewManager.m
//  RNReactNativeX5webviewIos
//
//  Created by 荣 li on 2019/5/23.
//  Copyright © 2019年 Facebook. All rights reserved.
//

#import "RNCX5WebViewManager.h"
#import "RNCX5WebView.h"
#import <React/RCTUIManager.h>

@implementation RNCX5WebViewManager
- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE()
- (UIView *)view
{
    RNCX5WebView *webView = [RNCX5WebView new];
    return webView;
}

RCT_EXPORT_VIEW_PROPERTY(source, NSDictionary)
RCT_EXPORT_VIEW_PROPERTY(isHidden, BOOL)
@end
