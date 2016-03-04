//
//  CounterView.swift
//  Flo
//
//  Created by youxinyu on 15/10/19.
//  Copyright © 2015年 yogayu.github.io. All rights reserved.
//

import UIKit

    let NoOfGlasses = 8
    let π:CGFloat = CGFloat(M_PI)
@IBDesignable class CounterView: UIView {
    @IBInspectable var counter: Int = 5 {
        didSet {
            if counter <=  NoOfGlasses {
                //the view needs to be refreshed
                setNeedsDisplay()
            }
        }
    }
    @IBInspectable var outlineColor:UIColor = UIColor.blueColor()
    
    @IBInspectable var counterColor:UIColor = UIColor.orangeColor()
    
    override func drawRect(rect: CGRect) {
        // 圆心和半径
        let center = CGPoint(x: bounds.width/2, y: bounds.height/2)
        let radius:CGFloat = max(bounds.width, bounds.height)
        // 弧线宽度
        let arcWidth:CGFloat = 76
        // 初始和结束角度
        let startAngle:CGFloat = 3 * π / 4
        let endAngle:CGFloat = π / 4
        // 路径
        let path = UIBezierPath(arcCenter: center, radius: radius/2 - arcWidth/2, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        // 绘制路径
        path.lineWidth = arcWidth
        counterColor.setStroke()
        path.stroke()
        
        // Draw the outline 画边框
        
        // 1 - first calculate the difference between the two angles
        // ensuring it is positive
        // 计算两角之间总弧度，保证其为正数
        let angleDifference: CGFloat = 2 * π - startAngle + endAngle
        
        // then calculate the arc for each single glass
        // 计算出每个glass的弧度
        let arcLengthPerGlass = angleDifference / CGFloat(NoOfGlasses)
        
        // then multiply out by the actual glasses drunk
        // 计算出真实总glass弧度
        let outlineEndAngle = arcLengthPerGlass * CGFloat(counter) + startAngle

        // 2 - draw the outer arc
        //  画出外弧
        let outlinePath = UIBezierPath(arcCenter: center,
            radius: bounds.width/2 - 2.5,
            startAngle: startAngle,
            endAngle: outlineEndAngle,
            clockwise: true)
        
        //3 - draw the inner arc
        //  画出内弧
        outlinePath.addArcWithCenter(center,
            radius: bounds.width/2 - arcWidth + 2.5,
            startAngle: outlineEndAngle,
            endAngle: startAngle,
            clockwise: false)
        
        //4 - close the path
        outlinePath.closePath()
        
        outlineColor.setStroke()
        outlinePath.lineWidth = 5.0
        outlinePath.stroke()
    }
}
