//
//  ThirdViewController.swift
//  FlpikartApp
//
//  Created by Sainath Bamen on 17/04/23.
//

import UIKit

class ThirdViewController: UIViewController {
    var myThirdImages:[String] = ["head3","head3","head3","head3"]

    @IBOutlet weak var thirdCV: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        thirdCV.dataSource = self
//        thirdCV.delegate = self

    }
}

extension ThirdViewController: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myThirdImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = thirdCV.dequeueReusableCell(withReuseIdentifier: "sainath", for: indexPath) as! New3CollectionViewCell
        cell.newImg.image = UIImage(named: myThirdImages[indexPath.row])
        return cell
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return  CGSize(width: (thirdCV.frame.size.width - 10) / 5, height: (thirdCV.frame.size.width - 10) / 5)
//    }
    
    
}
