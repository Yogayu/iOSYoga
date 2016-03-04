//
//  TemperatureRange.swift
//  temperatureConvert
//
//  Created by youxinyu on 15/9/23.
//  Copyright © 2015年 yogayu.github.io. All rights reserved.
//

import UIKit

class TemperatureRange: NSObject, UIPickerViewDataSource {
    // Picker数据源
    let Values = (-100...100).map { $0 }
    

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Values.count
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
}
