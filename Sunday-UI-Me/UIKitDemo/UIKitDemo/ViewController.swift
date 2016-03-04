//
//  ViewController.swift
//  UIKitDemo
//
//  Created by youxinyu on 15/8/17.
//  Copyright (c) 2015年 yogayu.github.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        progress1.progress = 0
      NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "ChangeProgress:", userInfo: nil, repeats: true)
        textField1.text = NSString(format: "%g", stepper1.value) as String
    }
    // 记得加:
    func ChangeProgress(sender:NSTimer){
        progress1.progress+=0.1
        if(progress1.progress>=1){
            sender.invalidate()// 失效
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var progress1: UIProgressView!
    
    @IBOutlet var AIV: UIActivityIndicatorView!
    @IBAction func SwitchValueChanged(sender: UISwitch) {
        if(sender.on){
            AIV.startAnimating()
        }else{
            AIV.stopAnimating()
        }
    }

    @IBOutlet var textField1: UITextField!
    
    @IBOutlet var stepper1: UIStepper!
    @IBAction func stepper1ValueChanged(sender: UIStepper) {
        textField1.text = NSString(format: "%s", sender.value) as String // 浮点转String转换
    }
}

