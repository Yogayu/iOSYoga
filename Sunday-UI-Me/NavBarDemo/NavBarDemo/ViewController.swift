//
//  ViewController.swift
//  NavBarDemo
//
//  Created by youxinyu on 15/8/19.
//  Copyright (c) 2015年 yogayu.github.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    @IBOutlet var navBar1: UINavigationBar!
    @IBAction func addButtonClick(sender: UIBarButtonItem) {
        addOneMore()
    }
    // 递归
    func addOneMore(){
        count++
        var item = UINavigationItem(title: "\(count)")
        item.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Add, target: self, action: "addOneMore")
        item.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Cancel, target: self, action: "reduceOneMore")
        navBar1.pushNavigationItem(item, animated: true)
    }
    func reduceOneMore(){
        count--
        navBar1.popNavigationItemAnimated(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

