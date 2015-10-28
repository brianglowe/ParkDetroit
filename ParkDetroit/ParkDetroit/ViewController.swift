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
        
        
        var camera = GMSCameraPosition.cameraWithLatitude(42.335879,
            longitude: -83.049745, zoom: 16)
        var mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        self.view = mapView
        
        var grandCircusMarker = GMSMarker()
            grandCircusMarker.position = CLLocationCoordinate2D(latitude: 42.335879, longitude: -83.049745)
            grandCircusMarker.title = "Grand Circus"
            grandCircusMarker.icon = GMSMarker.markerImageWithColor(UIColor.blueColor())
            grandCircusMarker.map = mapView
        
        for parkingLot in locationsArray {
            var marker = GMSMarker()
            marker.position = CLLocationCoordinate2DMake(parkingLot.location[0], parkingLot.location[1])
            marker.title = parkingLot.name
            marker.map = mapView
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

