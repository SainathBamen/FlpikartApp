//
//  ViewController.swift
//  FlpikartApp
//
//  Created by Sainath Bamen on 03/04/23.
//

import UIKit

var data = [ProductData(sectionType: "TV", product: ["tv1", "tv2", "tv3", "tv4", "tv5"]),
            ProductData(sectionType: "Phone", product: ["iphone1", "samsung", "oppo","iphone1", "samsung", "oppo","iphone1", "samsung", "oppo"]),
            ProductData(sectionType: "Head & Bluetooths", product: ["head1.png", "head2.png","head3.png","head4","head5","head6","head7","head8" ]),ProductData(sectionType: "Fans", product: ["fan1","fan2","fan3","fan4","fan5"]),ProductData(sectionType: "Tshirt", product: ["tshirt1","tshirt2","tshirt3","tshirt4","tshirt5"]),ProductData(sectionType: "Dell Laptops", product: ["dell1","dell2","dell3","dell4","dell5"]),ProductData(sectionType: "Apple Laptops", product: ["mac1", "mac2", "mac3", "mac4", "mac5"]),
            ProductData(sectionType: "TV", product: ["tv1", "tv2", "tv3", "tv4", "tv5"]),
                        ProductData(sectionType: "Phone", product: ["iphone1", "samsung", "oppo","iphone1", "samsung", "oppo","iphone1", "samsung", "oppo"]),
                        ProductData(sectionType: "Head & Bluetooths", product: ["head1.png", "head2.png","head3.png","head4","head5","head6","head7","head8" ]),ProductData(sectionType: "Fans", product: ["fan1","fan2","fan3","fan4","fan5"]),ProductData(sectionType: "Tshirt", product: ["tshirt1","tshirt2","tshirt3","tshirt4","tshirt5"]),ProductData(sectionType: "Dell Laptops", product: ["dell1","dell2","dell3","dell4","dell5"]),ProductData(sectionType: "Apple Laptops", product: ["mac1", "mac2", "mac3", "mac4", "mac5"])
                        
            
             ]
             
class ViewController: UIViewController {
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var tableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.sectionHeaderTopPadding = 0
        
        
    }
    
    @IBAction func nextBtnAction(_ sender: Any) {
//        let Next = self.storyboard?.instantiateViewController(withIdentifier: "MainProductViewController") as! MainProductViewController
//        self.navigationController?.pushViewController(Next, animated: true)
        
       
        
//
    }
    

}

extension ViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data[section].sectionType
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        cell.collectionview.tag = indexPath.section
        //cell.textLabel?.text = 
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .orange
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 60
        
    }
    
    
    
}

