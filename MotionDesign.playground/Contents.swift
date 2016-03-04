//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// UIView * redBall = [[UIView alloc]] initWithFrame:CGRectMake(50, 50, 100, 100)];
var view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
var redBall:UIView = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
redBall.backgroundColor = UIColor.redColor()
redBall.layer.cornerRadius = 50
view.addSubview(redBall)
UIView.animateWithDuration(0.5, delay: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: {redBall.transform = CGAffineTransformMakeScale(2.0, 2.0)}, completion: nil)

//UIView.animateKeyframesWithDuration(0.5, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: {redBall.transform = CGAffineTransformMakeScale(2.0, 2.0)}, completion: nil)
