//
//  DataModel.swift
//  ParkDetroit
//
//  Created by GC Student on 10/28/15.
//  Copyright © 2015 BrianDaveLing. All rights reserved.
//

import Foundation
import UIKit

class ParkingLotInfo {
    var name = String()
    var address = String()
    var rate = String()
    var location = [Double]()
    var desciption = String()
    var phoneNumber = String()
    var image: UIImage?
    var distance = String()
    
    
    
    init(name: String, address: String, rate: String, location: [Double], description: String, phoneNumber: String, image: UIImage?, distance: String){
        self.name = name
        self.address = address
        self.rate = rate
        self.location = location
        self.desciption = description
        self.phoneNumber = phoneNumber
        self.image = image
        self.distance = distance

    }
}

var grandCircusParkingGarage = ParkingLotInfo(name: "Grand Circus Parking Garage", address: "1601 Woodward, Detroit, MI 48226", rate: "$10/day", location: [42.336028, -83.050251], description: "This is a great option right across the street from Grand Circus, but expensive.", phoneNumber: "313-224-8925", image: nil, distance: "")
var operaHouseParkingGarage = ParkingLotInfo(name: "Opera House Parking Garage", address: "1426 Broadway, Detroit, MI 48226", rate: "$100/month", location: [42.335461, 83.047369], description: "This is right around the corner from Grand Circus on Broadway Street.  Another close and easy option!" , phoneNumber: "313-237-7464", image: nil, distance: "")
var compuwareParkingGarage = ParkingLotInfo(name: "Compuware Parking Garage", address: "1140 Farmer, Detroit, MI 48226", rate: "$10", location: [42.333171, -83.046045], description: "This is a little bit of a walk down Woodward (about 4 blocks) but it is large and can accommodate monthly parking passes.", phoneNumber: "313-227-4866", image: nil, distance: "")
var flatLotAcrossFromGrandCircusPark = ParkingLotInfo(name: "Flat Lot Across from Grand Circus Park", address: "111 West Madison, Detroit, MI 48226", rate: "$3/day", location: [42.337190, -83.049334], description: "This is a close and very easy option.  Not covered lot", phoneNumber: "313-471-2641", image: nil, distance: "")
var parkRiteGarage = ParkingLotInfo(name: "Park Rite Garage", address: "1431 Washington Blvd., Detroit, MI, 48226", rate: "$10/day", location: [42.334064, -83.051493], description: "", phoneNumber: "313-964-3111", image: nil, distance: "")
var parkRiteLot1 = ParkingLotInfo(name: "Park Rite Lot 1", address: "529 Gratiot Ave, Detroit, MI 48226", rate: "$10/day", location: [42.337817, -83.043885], description: "", phoneNumber: "313-965-7276", image: nil, distance: "")
var parkRiteLot2 = ParkingLotInfo(name: "PArk Rite Lot 2", address: "440 Madison, Detroit, MI 48226", rate: "$10/day", location: [42.337356, -83.044823], description: "", phoneNumber: "313-965-8162", image: nil, distance: "")
var parkRiteLot3 = ParkingLotInfo(name: "Park Rite Lot 3", address: "1468 Randolph Detroit, MI 48229", rate: "$5/day", location: [42.336216, -83.045578], description: "", phoneNumber: "313-832-2920", image: nil, distance: "")
var primeParkingLot = ParkingLotInfo(name: "Prime Parking Lot", address: "561 Gratiot Ave, Detroit, MI 48226", rate: "$10/day", location: [42.337842, -83.043413], description: "", phoneNumber: "n/a", image: nil, distance: "")
var griswoldParkingDeck = ParkingLotInfo(name: "Griswold Parking Deck", address: "1411 Griswold, Detroit, MI 48226", rate: "$10/day, $100/mo", location: [42.334051, -83.050083], description: "", phoneNumber: "313-965-7292", image: nil, distance: "")
var primeParkingOnCass = ParkingLotInfo(name: "Prime Parking on Cass", address: "1370 Cass Ave, Detroit, MI 48226", rate: "$5/day, $60/mo", location: [42.332584, -83.053187], description: "", phoneNumber: "313-962-2220", image: nil, distance: "")

var locationsArray = [grandCircusParkingGarage, operaHouseParkingGarage, compuwareParkingGarage, flatLotAcrossFromGrandCircusPark, parkRiteLot1, parkRiteLot2, parkRiteLot3, primeParkingLot, griswoldParkingDeck, primeParkingOnCass]

