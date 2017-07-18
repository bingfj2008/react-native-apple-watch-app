//
//  IWatchConnectUtil.swift
//  AppleWatchApp
//
//  Created by mac_vm on 2017/07/18.
//  Copyright © 2017年 Facebook. All rights reserved.
//

import Foundation
import UIKit
import WatchConnectivity

class IWatchConnectUtil : NSObject, WCSessionDelegate {
  
  static let shareManager = IWatchConnectUtil()
  
  // 
  private override init()
  {
    super.init()
  }
  
  private let session:WCSession? = WCSession.isSupported() ? WCSession.default() : nil
  
  func startSession(){
    session?.delegate = self
    session?.activate()
  }
  
  func session(_ session: WCSession,
               activationDidCompleteWith activationState: WCSessionActivationState,
               error: Error?) {
    
  }
  
  //  func sessionDidBecomeInactive(_ session: WCSession) {
  //  }
  //
  //  func sessionDidDeactivate(_ session: WCSession) {
  //  }
  
  func session(_ session: WCSession, didReceiveMessage message: [String : Any], replyHandler: @escaping ([String : Any]) -> Void) {
    
  }
  
  func sendMessageToWatch(key:String,value:Any) {
    session?.sendMessage([key : value], replyHandler: { (dict:Dictionary) in    }, errorHandler: { (Error) in    })
  }
}
