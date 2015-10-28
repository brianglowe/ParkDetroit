//
//  ViewController.swift
//  ParkDetroit
//
//  Created by Brian J Glowe on 10/27/15.
//  Copyright © 2015 BrianDaveLing. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    @IBOutlet weak var mapView: GMSMapView!
    @IBOutlet weak var parkingInfo: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        parkingInfo.text = "Hello again"
        
        
        var camera = GMSCameraPosition.cameraWithLatitude(42.3358833,
            longitude: -83.051934, zoom: 10)
        var mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        self.view = mapView
        
        var marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(42.3358833,-83.051934)
        marker.title = "Detroit"
        marker.snippet = "Michigan"
        marker.map = mapView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

