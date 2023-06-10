//
//  ViewController3.swift
//  FlpikartApp
//
//  Created by Sainath Bamen on 20/04/23.
//

import UIKit

class ViewController3: UIViewController {
    
       var myList = [
        Setting(learnType: "Sainath", list: ["FLipkart Plus", "Edit Profile", "Saved Cards & Wallet", "Saved Addresess","Select Language", "Notification Settings"], icon: ["",""])
       ]
        
   
   
    
    

    @IBOutlet weak var settingTableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}


extension ViewController3 : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return myList.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myList[section].list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = settingTableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = myList[indexPath.section].list[indexPath.row]
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .yellow
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String {
        return myList[section].learnType
    }
    
    
    
}
