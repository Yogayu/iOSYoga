//
//  ViewController.swift
//  TextFieldDemo
//
//  Created by youxinyu on 15/8/17.
//  Copyright (c) 2015年 yogayu.github.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        var block:UIView = UIView(frame: CGRect(x: 50, y: 100, width: 120, height: 120))
//        block.backgroundColor = UIColor.blueColor()
//        self.view.addSubview(block)
        textField2Exit.delegate = self
    }

    // return 键盘消失
    @IBAction func textField1Exit(sender: AnyObject) {
        sender.resignFirstResponder()// 让键盘消失
        // COntrol 视图就有事件
    }
    // 点击旁边就能失去焦点 键盘消失
    @IBOutlet weak var textField1: UITextField!
    @IBAction func controllTouchDown(sender: AnyObject) {
        textField1.resignFirstResponder()
    }
    
    @IBOutlet weak var textField2Exit: UITextField!
    @IBAction func textField2Exit(sender: AnyObject) {
        sender.resignFirstResponder()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        login()
        return true
    }



    // 登录判断
    @IBAction func buttonLoginClick(sender: AnyObject) {
        sender.resignFirstResponder()
        login()
    }
    
    func login(){
        if (textField1.text == "Azure" && textField2Exit.text == "Yu"){
            NSLog("登录成功")
            UIAlertView(title: "Sucess", message: "Log in sucess", delegate: self, cancelButtonTitle: "OK")
        }else{
            NSLog("登录失败")
        }
    }
    // 为什么按钮布局不对，会变小？因为没有设置大小
    @IBOutlet var silder1: UISlider!
    
    
    @IBAction func silder1ValueChanged(sender: UISlider) {
        NSLog(NSString(format: "%0.02f", sender.value) as String)
        // 渐变图片透明度
        //block.alpha = CGFloat(sender.value)
    }

    @IBAction func Swith1ValueChanged(sender: UISwitch) {
        if(sender.on){
            NSLog("ON")
        }else{
            NSLog("OFF")
        }
    }
}

