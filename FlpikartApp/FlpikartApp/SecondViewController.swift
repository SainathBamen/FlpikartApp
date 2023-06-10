//
//  SecondViewController.swift
//  FlpikartApp
//
//  Created by Sainath Bamen on 11/04/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var saiImg:[String] = ["head1","head2","head3"]
    var productName:[String] = ["head1","head2","head3",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self

    }
}

extension SecondViewController: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return saiImg.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! New2CollectionViewCell
        cell.myLabel.text = productName[indexPath.row]
        cell.myImage.image = UIImage(named: saiImg[indexPath.row])
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.systemBlue.cgColor
        cell.layer.cornerRadius = 25
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width - 40)/2
        return CGSize(width: size, height: size)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "New2ViewController") as! New2ViewController
        vc.mimeImage = UIImage(named: saiImg[indexPath.row])
        vc.mLabel = productName[indexPath.row]
        print("\(productName[indexPath.row]) course selected ")
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    
}








