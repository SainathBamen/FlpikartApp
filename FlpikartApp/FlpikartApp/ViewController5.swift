//
//  ViewController5.swift
//  FlpikartApp
//
//  Created by Sainath Bamen on 04/05/23.
//

import UIKit

class ViewController5: UIViewController {
    var ProImages:[String] = ["male","male","male","male","male","male","male","male","male","male","male","male"]

    @IBOutlet weak var proCVV: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    

  

}
extension ViewController5: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ProImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = proCVV.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProCV
        cell.proImg.image = UIImage(named: ProImages[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let deskVc = mainStoryBoard.instantiateViewController(withIdentifier: "DataPassedViewController") as! DataPassedViewController
        deskVc.imageReceived = UIImage(named: ProImages[indexPath.row])!
        self.navigationController?.pushViewController(deskVc, animated: true)
        
        
    }
    
    
}
