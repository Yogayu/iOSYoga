//
//  ViewController.swift
//  PickerDemo
//
//  Created by youxinyu on 15/8/18.
//  Copyright (c) 2015年 yogayu.github.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    // 添加UIPickerViewDataSource，UIPickerViewDelegate
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ////////***********
        pickerView1.dataSource = self
        pickerView1.delegate = self
    }
    // 定义数据源
    var food = ["milk","tea","coffee","water"]
    var number = ["1","2","3","4"]
    
    var province = ["重庆","四川","广东","广西"]
    var city = ["重庆":["沙坪坝","永川","大足",""],"四川":["成都","都江堰","宜宾","绵阳"],"广东":["广州","佛山","东莞"],"广西":["南宁","桂林"]]
    var selectValue = ""
    // 几列
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 2
    }
    // 每列几行
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        if (component == 0){
            return province.count
        }else{
            if (city[selectValue] != nil){
                return city[selectValue]!.count
            }else{
                return 0
            }
        }
    }
    // title
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!{
        if (component == 0){
            return province[row]
        }else{
            if(city[selectValue] != nil){
                return city[selectValue]![row]
            }else{
                return "?"
            }
        }
    }
    // selected
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(component == 0){
            selectValue = province[row]
            // 刷新第二列
            pickerView1.reloadComponent(1)
            // 显示第一行
            pickerView1.selectRow(0, inComponent: 1, animated: true)
        }else{
            
        }
    }
//    // height
//    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
//        return 35.0
//    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var pickerView1: UIPickerView!
}

