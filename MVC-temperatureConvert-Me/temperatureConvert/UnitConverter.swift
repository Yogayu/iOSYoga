//
//  UnitConverter.swift
//  temperatureConvert
//
//  Created by youxinyu on 15/9/23.
//  Copyright (c) 2015年 yogayu.github.io. All rights reserved.
//

import Foundation

// 逻辑处理
class UnitConverter {
    func degreeFahrenheit(degreesCelsius: Int) -> Int{
        return Int(1.8*Float(degreesCelsius) + 32.0)
    }
}