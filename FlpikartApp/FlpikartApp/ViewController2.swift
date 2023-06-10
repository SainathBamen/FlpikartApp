//
//  ViewController2.swift
//  FlpikartApp
//
//  Created by Sainath Bamen on 18/04/23.
//

import UIKit

class ViewController2: UIViewController {
    var catogeriesImg:[String] = ["tshirt1","tshirt2","tshirt3","tshirt1","tshirt2","tshirt3","tshirt1","tshirt2","tshirt3","tshirt1","tshirt2","tshirt3","tshirt1","tshirt2","tshirt3","tshirt1","tshirt2","tshirt3","tshirt1","tshirt1","tshirt2","tshirt3","tshirt1","tshirt2","tshirt3","tshirt1","tshirt2","tshirt3","tshirt1","tshirt2","tshirt3","tshirt1","tshirt2","tshirt3","tshirt1","tshirt2","tshirt3","tshirt1"]
    var otherImg:[String] = ["tshirt1","tshirt2","tshirt3","tshirt1","tshirt2","tshirt3","tshirt1","tshirt2","tshirt3","tshirt1","tshirt2","tshirt3","tshirt1","tshirt2","tshirt3"]
    var catogeriesName:[String] = ["Offer Zone", "Grocery","Mobiles","Fashion","Electronics", "Home", "Personal Care", "Applications", "Toys & Baby", "Furniture", "Flights & Hotels", "Insurance", "Sports", "Nutrion & More","Bikes and Cars", "Gift Cards", "Medicines", "Home Services","Other"]

    @IBOutlet weak var otherCV: UICollectionView!
    @IBOutlet weak var catogeriesCV: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension ViewController2: UICollectionViewDelegate,UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return otherImg.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.catogeriesCV{
            let cell = catogeriesCV.dequeueReusableCell(withReuseIdentifier: "saiCell", for: indexPath) as! CatogeriesCollectionViewCell
            
            cell.catogeriesImg.image = UIImage(named: catogeriesImg[indexPath.row])
            cell.catogeriesLabel.text = catogeriesName[indexPath.row]
            cell.layer.cornerRadius = cell.frame.height/2
            return cell

        }
        else{
            let cell:OtherCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "otherCell", for: indexPath) as! OtherCollectionViewCell
            cell.otherImg.image = UIImage(named: otherImg[indexPath.row])
            cell.layer.cornerRadius = cell.frame.height/2
            return cell
        }

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return  CGSize(width: (collectionView.frame.size.width - 10) / 5, height: (collectionView.frame.size.width - 10) / 5)
    }
    

   
        
        
    
        
    }

