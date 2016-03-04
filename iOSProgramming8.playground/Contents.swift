//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let v1 = UIView(frame:CGRectMake(0,0,500,500))
v1.backgroundColor = UIColor.whiteColor()
let v2 = UIView(frame: CGRect(x: 50, y: 50, width: 50, height: 50))
v2.backgroundColor = UIColor.blackColor()
let v3 = UIView(frame: CGRect(x: 200, y: 50, width: 50, height: 50))
v3.backgroundColor = UIColor.blackColor()
v1.addSubview(v2)
v1.addSubview(v3)
v2.transform = CGAffineTransformMakeRotation(45 * CGFloat(M_PI/180.0))
v3.transform = CGAffineTransformMakeTranslation(20, 10)
v1

let v4 = UIView(frame: v1.bounds)
let v5 = UIView(frame: CGRect(x: 80, y: 80, width: 90, height: 90))
v5.backgroundColor = UIColor.grayColor()
v4.addSubview(v5)
let v6 = UIView(frame:CGRectMake(113, 111, 132, 194))
v6.backgroundColor = UIColor(red: 1, green: 0.4, blue: 1, alpha: 1)
let v7 = UIView(frame:v6.bounds.insetBy(dx: 10, dy: 10))
v7.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
v1.addSubview(v6)
v6.addSubview(v7)

let S1 = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
S1.backgroundColor = UIColor.redColor()
v7.addSubview(S1)
v6

S1.autoresizingMask = .FlexibleWidth
S1.autoresizingMask = .FlexibleRightMargin
S1.autoresizingMask = .FlexibleBottomMargin

v6
//v6.transform = CGAffineTransformMakeRotation(CGFloat(M_PI)/180.0 * 45)

v6.transform = CGAffineTransformMake(2, 0, -0.2, 1, 0, 0)
v1
v6.transform = CGAffineTransformMakeScale(2.0, 2.0)
v1
v7.transform = CGAffineTransformMakeTranslation(50, 10)
v7.transform = CGAffineTransformRotate(v7.transform, CGFloat(M_PI)/180.0 * 45)
v1
let r = CGAffineTransformMakeRotation(CGFloat(M_PI)/180.0 * 60)
let t = CGAffineTransformMakeTranslation(30, 30)

v7.transform = CGAffineTransformConcat(r, t)
v1
v7.transform = CGAffineTransformConcat(CGAffineTransformInvert(r), CGAffineTransformInvert(t))
v1



let board = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))

var bd = [UIView]()

var i:Int = 0
//if(i=0, i<10,i++){
//    bd[i] = UIView(frame: CGRect(x: 100, y: 40, width: 200, height: 300))
//}

let b1 = UIView(frame: CGRect(x: 100, y: 40, width: 200, height: 300))
b1.backgroundColor = UIColor.purpleColor()
board.addSubview(b1)
let b2 = UIView(frame: CGRect(x: 100, y: 40, width: 200, height: 300))
b2.backgroundColor = UIColor.grayColor()
board.addSubview(b2)
b2.transform = CGAffineTransformMakeRotation(CGFloat(M_PI)/180.0 * 8)
board

NSLayoutConstraint(item: <#T##AnyObject#>, attribute: <#T##NSLayoutAttribute#>, relatedBy: <#T##NSLayoutRelation#>, toItem: <#T##AnyObject?#>, attribute: <#T##NSLayoutAttribute#>, multiplier: <#T##CGFloat#>, constant: <#T##CGFloat#>)









