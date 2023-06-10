//
//  ThirdVC.swift
//  FlpikartApp
//
//  Created by Sainath Bamen on 18/04/23.
//

import UIKit

class ThirdVC: UIViewController {
    var saiImg:[String] = ["fan1","fan2","fan3"]

    @IBOutlet weak var ThirdCV: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ThirdVC: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return saiImg.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = ThirdCV.dequeueReusableCell(withReuseIdentifier: "saiCell", for: indexPath) as! ThirdCVC
        cell.imgNew.image = UIImage(named: saiImg[indexPath.row])
        return cell
    }
    
    
}
