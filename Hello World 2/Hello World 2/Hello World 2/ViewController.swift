//
//  ViewController.swift
//  Hello World 2
//
//  Created by Sedatcan Sonat on 8.03.2016.
//  Copyright © 2016 Sedatcan Sonat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ageField: UITextField!

    @IBOutlet weak var label: UILabel!
    @IBAction func buttonClicked(sender: AnyObject) {
        print("Button clicked")
        label.text = "Thank you!! Your age = " + ageField.text!
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("App Loaded")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

