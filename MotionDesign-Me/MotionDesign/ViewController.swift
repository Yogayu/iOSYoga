//
//  ViewController.swift
//  MotionDesign
//
//  Created by youxinyu on 15/11/10.
//  Copyright © 2015年 yogayu.github.io. All rights reserved.
//

import UIKit

let screenRect = UIScreen.mainScreen().bounds
let y_aix = 2/3 * screenRect.height

class ViewController: UIViewController {
    
    let redBall = UIView(frame: CGRect(x: 0, y: y_aix, width: 20, height: 20))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(redBall)
        self.redBall.backgroundColor = UIColor.redColor()
        self.redBall.layer.cornerRadius = 10
        self.redBall.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func moveBall() {
        let pointStart:CGPoint = CGPoint(x: screenRect.width-10, y: y_aix)
        let pointEnd:CGPoint = CGPoint(x: 10, y: y_aix)
        print("where are you come from?")
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveLinear , animations: { self.redBall.center = pointStart},completion: { (true) in
            UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveLinear , animations: {self.redBall.center = pointEnd},completion: nil)
        })
    }
    @IBAction func buttonDidTouched(sender: AnyObject) {
        moveBall()
        self.redBall.hidden = false
        print("Button did toched.")
    }
}

