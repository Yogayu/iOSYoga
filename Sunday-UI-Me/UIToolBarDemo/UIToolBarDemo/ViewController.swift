//
//  ViewController.swift
//  UIToolBarDemo
//
//  Created by youxinyu on 15/8/18.
//  Copyright (c) 2015年 yogayu.github.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var textField1: UITextField!
    @IBOutlet var webView1: UIWebView!

    @IBAction func goBackClick(sender: AnyObject) {
        webView1.goBack()
    }
    @IBAction func loadClick(sender: AnyObject) {
        webView1.loadRequest(NSURLRequest(URL: NSURL(string: textField1.text)!))// !
    }
    @IBAction func reLoadClick(sender: AnyObject) {
        webView1.reload()
    }
    @IBAction func stopClick(sender: AnyObject) {
        webView1.stopLoading()
    }
    
}

