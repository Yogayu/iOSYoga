//
//  ViewController.swift
//  Found
//
//  Created by youxinyu on 15/9/26.
//  Copyright © 2015年 yogayu.github.io. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate, UIAlertViewDelegate
{

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.setUserTrackingMode(.Follow, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: Zoom in the location
    func mapView(mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let width = 1000.0
        let height = 1000.0
        let region = MKCoordinateRegionMakeWithDistance(center, width, height)
        mapView.setRegion(region, animated: true)
        
    }
    // MARK:Add Pin
    @IBAction func dropPin(sender: UIBarButtonItem) {
        let alert = UIAlertView(title: "Add a pin", message: "Set the title", delegate: self, cancelButtonTitle: "OK")
        alert.alertViewStyle = UIAlertViewStyle.PlainTextInput
        alert.show()
        alertView(alert, willDismissWithButtonIndex: 0)
    }
    
    // TODO: Add the subtitle
    func alertView(alertView: UIAlertView, willDismissWithButtonIndex buttonIndex: Int) {
        let subtitle: String?
        subtitle = alertView.textFieldAtIndex(0)?.text
        let pin = Pin(coordinate: mapView.userLocation.coordinate, title: "Hello", subtitle: subtitle)
        mapView.addAnnotation(pin)
    }

//    @IBAction func didClickButton(sender: AnyObject) {
//        if let url = NSURL(string: "http://maps.apple.com/?q=Beijing") {
//            let app = UIApplication.sharedApplication()
//            app.openURL(url)
//        }
//    }

}

