//
//  ViewController.swift
//  Time-Tables
//
//  Created by Sedatcan Sonat on 25.03.2016.
//  Copyright © 2016 Sedatcan Sonat. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate{

    @IBOutlet weak var slider: UISlider!
    
    @IBAction func sliderValueChanged(sender: AnyObject) {
        table.reloadData()
    }
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 20
    }
    
  
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
    
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let timesTable=Int(slider.value * 20)
        cell.textLabel?.text = String(timesTable * indexPath.row)
        return cell
    }

}

