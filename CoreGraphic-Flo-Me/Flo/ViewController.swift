//
//  ViewController.swift
//  Flo
//
//  Created by youxinyu on 15/10/19.
//  Copyright © 2015年 yogayu.github.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var counterView: CounterView!

    var isGraphViewShowing = false
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var graphView: GraphView!
    
    @IBAction func counterViewTap(gesture:UITapGestureRecognizer?) {
        if (isGraphViewShowing) {
            
            //hide Graph
            UIView.transitionFromView(graphView,
                toView: counterView,
                duration: 1.0,
                options: [UIViewAnimationOptions.TransitionFlipFromLeft, UIViewAnimationOptions.ShowHideTransitionViews],
                completion:nil)
        } else {
            
            //show Graph
            
            //setupGraphDisplay()
            
            UIView.transitionFromView(counterView,
                toView: graphView,
                duration: 1.0,
                options: [UIViewAnimationOptions.TransitionFlipFromRight, UIViewAnimationOptions.ShowHideTransitionViews],
                completion: nil)
        }
        isGraphViewShowing = !isGraphViewShowing
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnPushButton(button: PushButtonView){
        if button.isAddButton{
            counterView.counter++
        }else{
            if counterView.counter > 0{
                counterView.counter--
            }
        }
        counterLabel.text = String(counterView.counter)
        // - Show back to the counter
        if isGraphViewShowing {
            counterViewTap(nil)
        }
    }
    
}

