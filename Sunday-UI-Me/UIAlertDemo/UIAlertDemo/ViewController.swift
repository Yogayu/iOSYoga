//
//  ViewController.swift
//  UIAlertDemo
//
//  Created by youxinyu on 15/8/17.
//  Copyright (c) 2015年 yogayu.github.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIAlertViewDelegate {
    
    @IBOutlet var datePicker1: UIDatePicker!
    
    @IBOutlet weak var DatePicker2: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func buttonMissYou(sender: UIButton) {
        // 设置日期格式
        var format = NSDateFormatter()
        format.dateFormat = "yyyy年MM月dd日，HH小时，mm分ss秒"
        //format.dateStyle = NSDateFormatterStyle.ShortStyle
        // date日期格式转为string
        var dateString = format.stringFromDate(DatePicker2.date)
        var alert2: Void = UIAlertView(title: "你猜啊", message: "\(dateString)", delegate: self, cancelButtonTitle: "I don't know").show()
    }
    
    @IBAction func ButtonMiss(sender: UIButton) {
        var alertView1 = UIAlertView(title: "Miss?", message: "Miss You", delegate: self,cancelButtonTitle: "Never")
        
        alertView1.alertViewStyle = UIAlertViewStyle.LoginAndPasswordInput
        alertView1.show()
        // TODO: Get user name
        func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
            var username = alertView.textFieldAtIndex(0)?.text
            NSLog("\(username)")
        }
    }
    

    
    
    @IBAction func countDown(sender: UIButton) {
        datePicker1.countDownDuration -= 60 //以秒为单位
    }
    

}

