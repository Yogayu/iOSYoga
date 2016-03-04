//
//  ViewController.swift
//  UIScrollViewDemo
//
//  Created by youxinyu on 15/8/18.
//  Copyright (c) 2015年 yogayu.github.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scrollView1.backgroundColor = UIColor.whiteColor()
        scrollView1.contentSize = CGSize(width: 320*4, height: 568)
        //scrollView1.contentInset = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 10)
        //scrollView1.contentOffset = CGPoint(x: 10, y: 10)
        scrollView1.indicatorStyle = UIScrollViewIndicatorStyle.White
        scrollView1.delegate = self
        // 滚动页
        var View1 = UIView(frame: CGRect(x: 0*320, y: 0, width: 320, height: 568))
        View1.backgroundColor = UIColor.greenColor()
        scrollView1.addSubview(View1)
        
        var View2 = UIView(frame: CGRect(x: 1*320, y: 0, width: 320, height: 568))
        View2.backgroundColor = UIColor.yellowColor()
        scrollView1.addSubview(View2)
        
        var View3 = UIView(frame: CGRect(x: 2*320, y: 0, width: 320, height: 568))
        View3.backgroundColor = UIColor.whiteColor()
        scrollView1.addSubview(View3)
        
        var View4 = UIView(frame: CGRect(x: 3*320, y: 0, width: 320, height: 568))
        View4.backgroundColor = UIColor.blackColor()
        scrollView1.addSubview(View4)
        // 点击翻页 为什么不行？
        pageControl1.addTarget(self, action: "pageChanged", forControlEvents: UIControlEvents.ValueChanged)
        
    }
    func pageChanged(){
        var curpage = pageControl1.currentPage
        scrollView1.scrollRectToVisible(CGRect(x: curpage*320, y: 0, width: 320, height: 568), animated: true)
    }
    @IBOutlet var pageControl1: UIPageControl!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func scrollViewDidScroll(scrollView: UIScrollView) {
       // scrollView1.contentOffset.x
        // 设定当前页面
        var curPage = scrollView1.contentOffset.x/320
        pageControl1.currentPage = Int(curPage)
    }
    @IBOutlet var scrollView1: UIScrollView!

}

