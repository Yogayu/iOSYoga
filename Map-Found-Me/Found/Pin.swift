//
//  pin.swift
//  Found
//
//  Created by youxinyu on 15/9/29.
//  Copyright © 2015年 yogayu.github.io. All rights reserved.
//
import MapKit
import Foundation
class Pin:NSObject, MKAnnotation{
    
    let coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    init(coordinate: CLLocationCoordinate2D,title: String?,subtitle: String?) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
    
}