//
//  DataPassedViewController.swift
//  FlpikartApp
//
//  Created by Sainath Bamen on 04/05/23.
//

import UIKit

class DataPassedViewController: UIViewController {
    var imageReceived = UIImage()

    @IBOutlet weak var passImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passImg.image = imageReceived
        

    }
    

    
}
