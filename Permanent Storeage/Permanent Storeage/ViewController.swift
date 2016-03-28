//
//  ViewController.swift
//  Permanent Storeage
//
//  Created by Sedatcan Sonat on 26.03.2016.
//  Copyright © 2016 Sedatcan Sonat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NSUserDefaults.standardUserDefaults().setObject("Sedatcan", forKey: "name")
        let name = NSUserDefaults.standardUserDefaults().objectForKey("name")!
        
        print(name)
        let arry = ["1","2","3"]
        NSUserDefaults.standardUserDefaults().setObject(arry, forKey: "array")
        
        let array = NSUserDefaults.standardUserDefaults().objectForKey("array")! as! NSArray
        
        for a in array {
            print(a)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

