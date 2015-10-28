//
//  ParkingDetailViewController.swift
//  ParkDetroit
//
//  Created by Brian J Glowe on 10/28/15.
//  Copyright © 2015 BrianDaveLing. All rights reserved.
//

import UIKit

class ParkingDetailViewController: UIViewController {
    
    @IBOutlet weak var lotImage: UIImageView!
    @IBOutlet weak var lotRateLabel: UILabel!
    @IBOutlet weak var lotNameLabel: UILabel!
    @IBOutlet weak var lotAddressLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
