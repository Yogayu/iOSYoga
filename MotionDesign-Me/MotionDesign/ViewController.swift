//
//  ViewController.swift
//  MotionDesign
//
//  Created by youxinyu on 15/11/10.
//  Copyright © 2015年 yogayu.github.io. All rights reserved.
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


    @IBAction func buttonDidTouched(sender: AnyObject) {
        let redBall = UIView(frame: CGRect(x: 250, y: 250, width: 100, height: 100))
        redBall.backgroundColor = UIColor.redColor()
        redBall.layer.cornerRadius = 50
        
        self.view.addSubview(redBall)
        
        UIView.animateWithDuration(0.5, delay: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { redBall.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(2.0, 2.0), CGAffineTransformMakeTranslation(70.0, 0)) }, completion: nil)
    
    }
}

