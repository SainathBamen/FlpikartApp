//
//  New2ViewController.swift
//  FlpikartApp
//
//  Created by Sainath Bamen on 11/04/23.
//

import UIKit

class New2ViewController: UIViewController {

    @IBOutlet weak var newLabel: UILabel!
    @IBOutlet weak var newImage: UIImageView!
    
    var mimeImage:UIImage?
    var mLabel:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newLabel.text = mLabel
        newImage.image = mimeImage

        
        

    }
    

   
    

}
