//
//  Observer.swift
//  SwiftKVO
//
//  Created by WillowRivers on 2017/2/24.
//  Copyright © 2017年 WillowRivers. All rights reserved.
//

import Foundation
 //private var mycontext = 0 ;
class Observer : NSObject
{
   
    var observed : ObservedC! ;
    override init()
    {
        super.init() ;
        observed = ObservedC() ;
        print("init observed the value is \(observed.changeValue)") ;
        observed.addObserver(self , forKeyPath: "changeValue", options: .new, context: nil) ;
        Thread.sleep(forTimeInterval: 5) ;
        self.observed.changeValue = NSDate() ;
        
    }
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?)
    {
        print("use observeValue") ;
    }
    
}
