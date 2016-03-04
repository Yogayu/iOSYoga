//
//  ViewController.swift
//  TableViewControllerDemo
//
//  Created by youxinyu on 15/8/19.
//  Copyright (c) 2015年 yogayu.github.io. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func button1(sender: AnyObject) {
    UIAlertView(title: "Hello", message: "Stactic", delegate: self, cancelButtonTitle: "ok").show()
    }
}

