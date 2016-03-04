//
//  GraphView.swift
//  Flo
//
//  Created by youxinyu on 15/10/20.
//  Copyright © 2015年 yogayu.github.io. All rights reserved.
//

import UIKit

@IBDesignable class GraphView: UIView {
    
    // 样本数据
    var graphPoints:[Int] = [4,2,6,4,5,8,3]
    
    // 1- Gradient属性
    @IBInspectable var startColor:UIColor = UIColor.redColor()
    @IBInspectable var endColor:UIColor = UIColor.greenColor()
    
    override func drawRect(rect: CGRect) {
        
        let width = rect.width
        let height = rect.height
        // 设置背景剪切区域
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: UIRectCorner.AllCorners, cornerRadii: CGSize(width: 8.0, height: 80))
        path.addClip()
        
        //2- 获取当前(图形)环境
        let context = UIGraphicsGetCurrentContext()
        let colors = [startColor.CGColor,endColor.CGColor]
        //3- 建立色彩空间RGB
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        //4- 建立色彩渐变结束位置
        let colorLocations:[CGFloat] = [0.0,1.0]
        
        //5- 创造渐变
        let gradient = CGGradientCreateWithColors(colorSpace, colors,colorLocations)
        //6- 画出渐变
        let startPoint = CGPoint.zero
        let endPoint = CGPoint(x: 0, y: self.bounds.height)
        CGContextDrawLinearGradient(context, gradient, startPoint, endPoint,CGGradientDrawingOptions(rawValue: 0))
        
        // 计算x轴点
        // inline闭包
        let margin:CGFloat = 20.0
        let columnXPoint = { (column:Int) -> CGFloat in
            // 计算点与点之间的距离
            let spacer = (width - margin*2 - 4) /
                CGFloat((self.graphPoints.count - 1))
            var x:CGFloat = CGFloat(column) * spacer
            x += margin + 2
            // 返回点x轴位置
            return x
        }
        
        // calculate the y point
        
        let topBorder:CGFloat = 60
        let bottomBorder:CGFloat = 50
        let graphHeight = height - topBorder - bottomBorder
        let maxValue = graphPoints.maxElement()!// maxElement是什么
        let columnYPoint = { (graphPoint:Int) -> CGFloat in
            var y:CGFloat = CGFloat(graphPoint) /
                CGFloat(maxValue) * graphHeight
            y = graphHeight + topBorder - y // Flip the graph
            return y
        }
        
        // 画线
        UIColor.whiteColor().setFill()
        UIColor.whiteColor().setStroke()
        
        // 建立点线
        let graphPath = UIBezierPath()
        // 开始点
        graphPath.moveToPoint(CGPoint(x: columnXPoint(0), y: columnYPoint(graphPoints[0])))
        //add points for each item in the graphPoints array
        //at the correct (x, y) for the point
        for i in 1..<graphPoints.count {
            let nextPoint = CGPoint(x:columnXPoint(i),
                y:columnYPoint(graphPoints[i]))
            graphPath.addLineToPoint(nextPoint)
        }
        
        graphPath.stroke()
    }
}
