//
//  ProductViewController.swift
//  FlpikartApp
//
//  Created by Sainath Bamen on 15/04/23.
//

import UIKit

class ProductViewController: UIViewController {
    var searching = false
    var searchedItem = [ProductData2]()
    let searchController = UISearchController(searchResultsController: nil)
    
  
    @IBOutlet weak var Product2CV: UICollectionView!
    
    
    
    var itemList = [ProductData2]()

    override func viewDidLoad() {
        super.viewDidLoad()
        ConfigureSearchController()
        fillData()
        Product2CV.delegate = self
        Product2CV.dataSource = self
        
    }
        
        private func ConfigureSearchController(){
            searchController.loadViewIfNeeded()
            searchController.searchResultsUpdater = self
            searchController.searchBar.delegate = self
            
            searchController.obscuresBackgroundDuringPresentation = false
            searchController.searchBar.enablesReturnKeyAutomatically = false
            searchController.searchBar.returnKeyType = UIReturnKeyType.done
            self.navigationItem.hidesSearchBarWhenScrolling = false
            self.navigationItem.searchController = searchController
            definesPresentationContext = true
            searchController.searchBar.placeholder = "Search product by name"
        }

    
    private func fillData(){
        let item1 = ProductData2(iName: "parle g", iImage: "parle g")
        itemList.append(item1)
        let item2 = ProductData2(iName: "Cashews", iImage: "cashew")
        itemList.append(item2)
        let item3 = ProductData2(iName: "Parle Mazaa", iImage: "mazaa")
        itemList.append(item3)
        let item4 = ProductData2(iName: "Mirchi Powder ", iImage: "mirchi powder")
        itemList.append(item4)
        let item5 = ProductData2(iName: "Haldi Powder ", iImage: "haldi powder ")
        itemList.append(item5)
        let item6 = ProductData2(iName: "olive oil", iImage: "olive oil")
        itemList.append(item6)
        let item7 = ProductData2(iName: "Thums UP", iImage: "thumps up")
        itemList.append(item7)
        let item8 = ProductData2(iName: "Mirchi  Masala", iImage: "mirchi")
        itemList.append(item8)
        let item9 = ProductData2(iName: "Jeera", iImage: "jeera")
        itemList.append(item9)
        let item10 = ProductData2(iName: "Basmati Rice", iImage: "rice")
        itemList.append(item10)
      
        
        
        
    }
}


extension ProductViewController: UICollectionViewDelegate, UICollectionViewDataSource, UISearchBarDelegate, UISearchResultsUpdating{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if searching{
            return searchedItem.count
            
        }
        else{
            return itemList.count
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = Product2CV.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProductSearchCollectionViewCell
        if searching{
            cell.productImg.image = UIImage(named: searchedItem[indexPath.row].itemImage)
            cell.ProductName.text = searchedItem[indexPath.row].itemName
            
        }
        else{
            cell.productImg.image = UIImage(named: itemList[indexPath.row].itemImage)
            cell.ProductName.text = itemList[indexPath.row].itemName
        }
        cell.layer.borderColor = UIColor.systemRed.cgColor
        cell.layer.borderWidth = 10
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width - 20)/2
        return CGSize(width: size, height: size)
        
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        let searchText = searchController.searchBar.text!
        if !searchText.isEmpty{
            searching = true
            searchedItem.removeAll()
            for item in itemList{
                if item.itemName.lowercased().contains(searchText.lowercased()){
                    searchedItem.append(item)
                    
                }
                
            }
            
        }
        else{
            searching = false
            searchedItem.removeAll()
        }
        Product2CV.reloadData()
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchedItem.removeAll()
        Product2CV.reloadData()
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            
        }
                if searching{
                    print("you have selected product \(searchedItem[indexPath.row].itemName)")
        
                }
                else{
                    print("you have selected product \(itemList[indexPath.row].itemName)")
                }
            }
        
        
        
        
    }

