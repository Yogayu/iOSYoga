//
//  PushButtonView.swift
//  Flo
//
//  Created by youxinyu on 15/10/19.
//  Copyright © 2015年 yogayu.github.io. All rights reserved.
//

import UIKit
// @IBDesigable 可以在StoryBoard中预览
@IBDesignable

class PushButtonView: UIButton {
    // IBspwctable 可以被StoryBoard读到，加在属性中
    @IBInspectable var fillColor: UIColor = UIColor.greenColor()
    @IBInspectable var isAddButton: Bool = true
    
    override func drawRect(rect: CGRect) {
        // 路径
        let path = UIBezierPath(ovalInRect: rect)
        // 颜色填充
        fillColor.setFill()
        path.fill()

        // 横:高度和宽度变量
        let plusHeight:CGFloat = 3.0
        let plusWidth:CGFloat = min(bounds.width,bounds.height) * 0.6
        // 建立路径
        let plusPath = UIBezierPath()
        
        // 赋予路径线宽
        plusPath.lineWidth = plusHeight
    
        // 移动水平线条初始点
        plusPath.moveToPoint(CGPoint(
            x:bounds.width/2 - plusWidth/2 + 0.5,
            y:bounds.height/2 + 0.5))
        // 添加水平线条终点
        plusPath.addLineToPoint(CGPoint(x: bounds.width/2 + plusWidth/2 + 0.5, y: bounds.height/2 + 0.5))
        if isAddButton {

            // 垂直线条初始点
            plusPath.moveToPoint(CGPoint(x: bounds.width/2 + 0.5, y: bounds.height/2 - plusWidth/2 + 0.5))
            // 垂直线条终点
            plusPath.addLineToPoint(CGPoint(x: bounds.width/2 + 0.5, y: bounds.height/2 + plusWidth/2 + 0.5))
            // 设置线条颜色
        }
        UIColor.whiteColor().setStroke()
        
            // 画出线条
        plusPath.stroke()
        
    }
    
}

// path simply consist of points.
