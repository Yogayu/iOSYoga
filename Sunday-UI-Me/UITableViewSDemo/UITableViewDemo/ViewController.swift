//
//  ViewController.swift
//  UITableViewDemo
//
//  Created by youxinyu on 15/8/18.
//  Copyright (c) 2015年 yogayu.github.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView1.dataSource = self
        tableView1.delegate = self
    }
    // 定义数据源
    var drink = ["milk","tea","water","coffee"]
    // 行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return drink.count
    }
    // 每行 cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        // 标志
        var cellid = "azure"
        // 转换
        var cell:UITableViewCell? = tableView.dequeueReusableCellWithIdentifier(cellid) as? UITableViewCell
        //********//
        if(cell == nil){
            cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: cellid)
        }
        // 获取每个组件tag
        var lable1 = cell?.viewWithTag(1) as? UILabel
        var textField1 = cell?.viewWithTag(2) as? UITextField
        var switch1 = cell?.viewWithTag(3) as? UISwitch
        // 显示内容
        lable1?.text = drink[indexPath.row]
        textField1?.placeholder = "input unmber"
        // switch1.on = true
        
        // 同理添加cell2
        var cell2:UITableViewCell = (tableView.dequeueReusableCellWithIdentifier("azure2") as? UITableViewCell)!
        
        var lable2 = cell2.viewWithTag(1) as! UILabel
        lable2.text = "Hello,Azure"
        
        if(indexPath.row%2 == 0){
            return cell!
        }else{
            return cell2
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var tableView1: UITableView!

}

