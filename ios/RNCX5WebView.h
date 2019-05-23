//
//  RNCX5WebView.h
//  RNReactNativeX5webviewIos
//
//  Created by 荣 li on 2019/5/23.
//  Copyright © 2019年 Facebook. All rights reserved.
//

#import <React/RCTView.h>
@interface RNCX5WebView : RCTView
@property (nonatomic, strong) NSDictionary *source;
@property (nonatomic, copy) NSString *wxAppId;
@property (nonatomic, copy) NSString *qqAppId;
@end

