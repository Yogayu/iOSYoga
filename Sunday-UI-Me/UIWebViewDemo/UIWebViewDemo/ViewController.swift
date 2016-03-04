//
//  ViewController.swift
//  UIWebViewDemo
//
//  Created by youxinyu on 15/8/18.
//  Copyright (c) 2015年 yogayu.github.io. All rights reserved.
//
// 简易浏览器
import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet var textField1: UITextField!
    @IBOutlet var webView1: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //webView1.delegate = self
        //webView1.loadRequest(NSURLRequest(URL:NSURL(string: "http://maiziedu.com")!))
        textField1.delegate = self
       // webView1.loadHTMLString("<html><body><h1>baidu</h1></body></html>", baseURL: NSURL(string: "www.baidu.com"))
    }
    func webViewDidStartLoad(webView: UIWebView) {
        NSLog("webViewDidStartLoad")
    }
    func webViewDidFinishLoad(webView: UIWebView) {
        NSLog("webViewDidFinishLoad")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func backButtonClick(sender: UIButton) {
        webView1.goBack()
    }
    @IBAction func reoladButtonClick(sender: UIButton) {
        webView1.reload()
    }
    @IBAction func goButtonCLick(sender: AnyObject) {
        loadUrl()
    }
    @IBAction func forwardButtonClick(sender: UIButton) {
        webView1.goForward()
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        loadUrl()
        return true
    }
    
    func loadUrl() {
        textField1.resignFirstResponder()
        //UIApplication.sharedApplication().openURL(NSURL(string: textField1.text)!)
        if let url = NSURL(string: textField1.text){
            webView1.loadRequest(NSURLRequest(URL:url))
        }
    }

}

