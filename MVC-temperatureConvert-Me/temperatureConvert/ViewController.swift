//
//  ViewController.swift
//  temperatureConvert
//
//  Created by youxinyu on 15/9/23.
//  Copyright (c) 2015年 yogayu.github.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {

    private let convert = UnitConverter()
    let userDefaultsLastRowKey = "defaultCelsiusPickerRow"
    
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var celsiusPicker: UIPickerView!
    @IBOutlet var temperatureRange: TemperatureRange!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 获得选中行
        let row = initialPickerRow()
        celsiusPicker.selectRow(row, inComponent: 0, animated: true)
        // 转化并显示
        pickerView(celsiusPicker, didSelectRow: row, inComponent: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(temperatureRange.Values[row])°C"
    }

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        displayConvertedTemperatureForRow(row)
        saveSelectedRow(row)
    }
    // 需要重复使用，写为函数
    func displayConvertedTemperatureForRow(row:Int) {
        let degreesCelsius = temperatureRange.Values[row]
        temperatureLabel.text = "\(convert.degreeFahrenheit(degreesCelsius))°F"
    }
    // 存储内容
    func saveSelectedRow(row:Int){
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(row, forKey: userDefaultsLastRowKey)
        defaults.synchronize()
    }
    // 初始显示
    func initialPickerRow()->Int{
        let savedRow = NSUserDefaults.standardUserDefaults().objectForKey( userDefaultsLastRowKey) as? Int
        if let row = savedRow {
            return row
        }else {
            return celsiusPicker.numberOfRowsInComponent(0)/2
        }
    }
}
