//
//  ViewController.swift
//  SwiftKVO
//
//  Created by WillowRivers on 2017/2/24.
//  Copyright © 2017年 WillowRivers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var obser : Observer!
    override func viewDidLoad() {
        super.viewDidLoad() ;
        obser = Observer() ;
        Thread.sleep(forTimeInterval: 4) ;
        obser.observed.changeValue = NSDate() ;
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

