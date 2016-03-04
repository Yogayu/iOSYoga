//
//  ViewController.swift
//  NavControllerProDemo
//
//  Created by youxinyu on 15/8/19.
//  Copyright (c) 2015年 yogayu.github.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.greenColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //if(segue.identifier == "seg1"){
        (segue.destinationViewController as! ViewController2).name = "Hello"
        //}
    }
    
    @IBAction func unWind(segue:UIStoryboardSegue){
    
    }
}

