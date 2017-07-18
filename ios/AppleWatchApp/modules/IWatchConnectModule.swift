//
//  IWatchConnectModule.swift
//  AppleWatchApp
//
//  Created by mac_vm on 2017/07/18.
//  Copyright © 2017年 Facebook. All rights reserved.
//

import Foundation

@objc(IWatchConnectModule)
class IWatchConnectModule: NSObject {
  
  @objc func callbackMethod(_ callback: RCTResponseSenderBlock) -> Void {
    let result = [
      "success": "sss"
    ];
    callback([result])
  }
}
