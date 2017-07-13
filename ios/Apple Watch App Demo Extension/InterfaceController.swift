//
//  InterfaceController.swift
//  Apple Watch App Demo Extension
//
//  Created by mac_vm on 2017/07/13.
//  Copyright © 2017年 Facebook. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var label1: WKInterfaceLabel!
    @IBOutlet var btnBegin: WKInterfaceButton!
  
    var count = 0;
  
    @IBAction func begins() {
      count = count + 1;
      label1.setText("\(count)");
    }

    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
