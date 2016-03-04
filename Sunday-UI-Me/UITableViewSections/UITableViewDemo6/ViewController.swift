//
//  ViewController.swift
//  UITableViewDemo6
//
//  Created by Sundy on 1/14/15.
//  Copyright (c) 2015 maiziedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet var tableView1: UITableView!
    
    var provinces = ["四川","云南","山东"]
    var cities = ["四川":["成都","绵阳","广元","成都","绵阳","广元"],"云南":["昆明","大理","丽江","昆明","大理","丽江"],"山东":["济南","青岛","威海","济南","青岛","威海","济南","青岛","威海","济南","青岛","威海"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView1.dataSource = self
        tableView1.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var provinceName = provinces[section]
        return cities[provinceName]!.count
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return provinces[section]
    }
    
    func sectionIndexTitlesForTableView(tableView: UITableView) -> [AnyObject]! {
        return ["A","B","C"]
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cellId = "sundycell"
        var cell:UITableViewCell? = tableView.dequeueReusableCellWithIdentifier(cellId) as? UITableViewCell
        if(cell == nil){
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellId)
        }
        //先得到当前section名称，省名称
        var proName = provinces[indexPath.section]
        //得到当前row索引的城市的名称
        cell?.textLabel?.text = cities[proName]![indexPath.row]
        cell?.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        return cell!
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return provinces.count
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

