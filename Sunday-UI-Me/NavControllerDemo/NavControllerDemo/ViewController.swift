//
//  ViewController.swift
//  NavControllerDemo
//
//  Created by youxinyu on 15/8/19.
//  Copyright (c) 2015年 yogayu.github.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.redColor()
        self.navigationItem.title = "First!"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "add", style: UIBarButtonItemStyle.Done, target: self, action: "addClick")
    }
    func addClick(){
        var vc2 = ViewController2()
        vc2.name = "azure"
        self.navigationController?.pushViewController(vc2, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

