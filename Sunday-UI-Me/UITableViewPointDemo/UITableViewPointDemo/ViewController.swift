//
//  ViewController.swift
//  UITableViewPointDemo
//
//  Created by youxinyu on 15/8/19.
//  Copyright (c) 2015年 yogayu.github.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView1.delegate = self
        tableView1.dataSource = self
    }

    var markTag = 0
    /*
     * 删除
     */
    // 删除状态
    @IBAction func editButtonClick(sender: UIBarButtonItem){
        // 删除
        markTag = 1
        // 改变状态
        tableView1.setEditing(!tableView1.editing, animated: true)
        // 编辑，完成 显示
        if(tableView1.editing){
            sender.title = "Done"
        }else{
            sender.title = "Edit"
        }
    }
    // 插入
    @IBAction func insertButtonClick(sender: UIBarButtonItem) {
        // 插入
        markTag = 0
        // 改变状态
        tableView1.setEditing(!tableView1.editing, animated: true)
        // 编辑，完成 显示
        if(tableView1.editing){
            sender.title = "Done"
        }else{
            sender.title = "Insert"
        }
    }
    
    /* 可删除哪些
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */
    
    // 返回编辑状态，设定标示符
    func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        if (markTag == 1){
        return UITableViewCellEditingStyle.Delete
        }else{
            return UITableViewCellEditingStyle.Insert
        }
    }
    // 删除按钮显示
    func tableView(tableView: UITableView, titleForDeleteConfirmationButtonForRowAtIndexPath indexPath: NSIndexPath) -> String! {
        return "确认删除"
    }
    // 提交删除或添加
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        var proName  = provinces[indexPath.section]
        
        if(markTag == 1){   // 删除
            // 在数组中删除
            cities[proName]?.removeAtIndex(indexPath.row)
            // 在table中删除
            tableView1.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Fade)
        }else{  // 添加
            var currentCity = cities[proName]?[indexPath.row]
            cities[proName]?.insert(currentCity!, atIndex: indexPath.row+1)
            
            tableView1.insertRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Fade)
            
        }
    }
    // 移动
    // 哪些可移动
    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    // 实现移动
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        // 移动数据
        var proName = provinces[sourceIndexPath.section]
        var currentCity = cities[proName]?[sourceIndexPath.row]
        cities[proName]?.removeAtIndex(sourceIndexPath.row)
        cities[proName]?.insert(currentCity!, atIndex: destinationIndexPath.row)
        // 移动表格
        tableView1.moveRowAtIndexPath(sourceIndexPath, toIndexPath: destinationIndexPath)
    }
    
    // 数据源
    var provinces = ["四川","云南","山东"]
    var cities = ["四川":["成都","绵阳","广元","成都","绵阳","广元"],"云南":["昆明","大理","丽江","昆明","大理","丽江"],"山东":["济南","青岛","威海","济南","青岛","威海","济南","青岛","威海","济南","青岛","威海"]]
    // 几节
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return provinces.count
    }
    // 每节名称
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return provinces[section]
    }
    // 每节几行
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        var privanceName = provinces[section]
        return cities[privanceName]!.count
    }
    // 每行内容
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        // 标示
        var cellId = "azure"
        // cell 原型单元行
        var cell:UITableViewCell? = tableView1.dequeueReusableCellWithIdentifier(cellId) as? UITableViewCell
        if (cell == nil){
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellId)
        }
        // 赋值
        var proName = provinces[indexPath.section]
        cell?.textLabel?.text = cities[proName]![indexPath.row]
        // 显示类型
        cell?.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell!
    }
    // 节索引
    func sectionIndexTitlesForTableView(tableView: UITableView) -> [AnyObject]! {
        return provinces
    }
    // 选中节中第几行
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        NSLog("选中了第\(indexPath.row + 1)")
    }
    
    @IBOutlet var tableView1: UITableView!

}

