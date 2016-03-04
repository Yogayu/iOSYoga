//
//  ViewController2.swift
//  NavControllerDemo
//
//  Created by youxinyu on 15/8/19.
//  Copyright (c) 2015年 yogayu.github.io. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    var name = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.greenColor()
        // Do any additional setup after loading the view.
        self.navigationItem.title = "VC2!"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "add", style: UIBarButtonItemStyle.Done, target: self, action: "addClick")
        // 添加一个Label
        var Label1 = UILabel(frame: CGRect(x: 10, y: 100, width: 130, height: 40))
        Label1.text = name
        Label1.backgroundColor = UIColor.blackColor()
        self.view.addSubview(Label1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addClick(){
        self.navigationController?.pushViewController(ViewController(), animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
