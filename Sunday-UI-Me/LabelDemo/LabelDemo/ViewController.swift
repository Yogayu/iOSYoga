//
//  ViewController.swift
//  LabelDemo
//
//  Created by youxinyu on 15/8/16.
//  Copyright (c) 2015年 yogayu.github.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 代码添加Label
        addLabelByCode()
        // 代码改变label对其方式
        label1.textAlignment = NSTextAlignment.Left
    }

    func addLabelByCode(){
        var lable2 = UILabel(frame: CGRect(x: 10, y: 10, width: 200, height: 100))
        lable2.text = "Hello, Azure Yu!"
        self.view.addSubview(lable2)
    }

    // segment control
    @IBOutlet weak var segment1: UISegmentedControl!
    // 改变背景颜色
    @IBAction func segmentValueChanged(sender: AnyObject) {
        NSLog("You select segment\(segment1.selectedSegmentIndex)")
        switch sender.selectedSegmentIndex{
        case 0:
            self.view.backgroundColor = UIColor.blackColor()
        case 1:
            self.view.backgroundColor = UIColor.whiteColor()
        case 2:
            self.view.backgroundColor = UIColor.greenColor()
        case 3:
            self.view.backgroundColor = UIColor.yellowColor()
        default:
            self.view.backgroundColor = UIColor.whiteColor()
        }
        
    }
    

    @IBOutlet weak var textField1: UITextField!
    // add Segment
    @IBAction func buttonAddClick(sender: AnyObject) {
        // 取值
        segment1.insertSegmentWithTitle(textField1.text, atIndex: segment1.numberOfSegments, animated: true)
    }
    // remove segment
    @IBAction func buttonRemoveClick(sender: AnyObject) {
        segment1.removeSegmentAtIndex(segment1.numberOfSegments-1, animated: true)
        // number must -1
    }

    
    // label
    @IBOutlet weak var label1: UILabel!
    // button
    @IBAction func buttonTouchDown(sender: AnyObject) {
        NSLog("buttonTouchDown")
    }
    
    @IBAction func buttonTouchRepeat(sender: AnyObject) {
        NSLog("buttonTouchRepeat")

    }
    
    @IBAction func buttonDragEnter(sender: AnyObject) {
        NSLog("buttonDragEnter")
    }
    @IBAction func buttonDragExit(sender: AnyObject) {
        NSLog("buttonDragEcit")
    }
    @IBAction func buttonDragInside(sender: AnyObject) {
        NSLog("buttonDragInside")
    }
    @IBAction func buttonDragOutside(sender: AnyObject) {
        NSLog("buttonDragOutside")
    }
    
    // editing text
    @IBAction func editChanged(sender: AnyObject) {
        NSLog("editChanged")
    }
    
    @IBAction func editDidBegin(sender: AnyObject) {
        NSLog("editDidBegin")
    }
    
    @IBAction func editDIdEndOnExit(sender: AnyObject) {
        NSLog("editDIdEndOnExit")
    }
    
    @IBAction func editDidEnd(sender: AnyObject) {
        NSLog("editDidEnd")
    }

    
    // stepper
    @IBOutlet weak var stepper1: UIStepper!
    @IBAction func stepperValueChanged(sender: UIStepper) {
        
        silder1.value = Float(stepper1.value)
        
        NSLog("Stepper value changed.\(silder1.value)")
    }
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        stepper1.value = Double(silder1.value)
        NSLog("slider value changed.\(stepper1.value)")
    }
    @IBOutlet weak var silder1: UISlider!

}

