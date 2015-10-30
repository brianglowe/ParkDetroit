//
//  ViewController.swift
//  ParkDetroit
//
//  Created by Brian J Glowe on 10/27/15.
//  Copyright © 2015 BrianDaveLing. All rights reserved.
//

import UIKit
import GoogleMaps
//import MapKit

class ViewController: UIViewController, GMSMapViewDelegate {

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
        mapView.delegate = self
        
        var grandCircusMarker = GMSMarker()
            grandCircusMarker.position = CLLocationCoordinate2D(latitude: 42.335879, longitude: -83.049745)
            grandCircusMarker.icon = UIImage(named: "grandCircusMarkerImage.png")
            grandCircusMarker.title = "Grand Circus Home"
            grandCircusMarker.map = mapView
        
        for parkingLot in locationsArray {
            var marker = GMSMarker()
            marker.position = CLLocationCoordinate2DMake(parkingLot.location[0], parkingLot.location[1])
            marker.icon = GMSMarker.markerImageWithColor(UIColor.blueColor())
            marker.title = parkingLot.name
            marker.map = mapView
        }
    }

    func mapView(mapView: GMSMapView!, markerInfoWindow marker: GMSMarker!) -> UIView! {
        var infoWindow = NSBundle.mainBundle().loadNibNamed("NibViewController", owner: self, options: nil).first! as! NibViewController
        
        infoWindow.nameLabel.text = marker.title
        for parklingLot in locationsArray {
            if parklingLot.name == marker.title{
                infoWindow.addressLabel.text = parklingLot.address
                infoWindow.rateLabel.text = parklingLot.rate
                infoWindow.phoneNumberLabel.text = parklingLot.phoneNumber
                infoWindow.imageNib.image = parklingLot.image
                infoWindow.distanceLabel.text = parklingLot.distance
           } else if marker.title == "Grand Circus Home" {
                infoWindow.addressLabel.text = "1570 Woodward Ave, Detroit, MI 48226"
                infoWindow.rateLabel.text = ""
                infoWindow.phoneNumberLabel.text = "313-338-2780"
                infoWindow.imageNib.image = UIImage(named: "Robb.jpg")
                infoWindow.distanceLabel.text = ""
                
                
            }
        }
        return infoWindow
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

