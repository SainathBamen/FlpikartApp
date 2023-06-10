//
//  NewViewController.swift
//  FlpikartApp
//
//  Created by Sainath Bamen on 11/04/23.
//

import UIKit

class NewViewController: UIViewController {
    
    @IBOutlet weak var newImage: UIImageView!
    @IBOutlet weak var newLabel: UILabel!
    
    var mimeImage:UIImage?
    var mLabel:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        newLabel.text = mLabel
        newImage.image = mimeImage
        
        
        
    }
}
