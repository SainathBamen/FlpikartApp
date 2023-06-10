//
//  ViewController4.swift
//  FlpikartApp
//
//  Created by Sainath Bamen on 29/04/23.
//

import UIKit

class ViewController4: UIViewController {
    var headers:[String] = ["Account","More Features", "Support"]
    var accounts:[String] = ["My Account"]
    var moreFeatures:[String] = ["Profit&Loss","Announcement"]
    var support:[String] = ["Privacy Policy", "Terms and Conditions", "LogOut"]
   
    @IBOutlet weak var AccountTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        
        
    }
    func registerCells(){
        AccountTableView.register(UINib(nibName: "AccountsTableViewCell", bundle: nil), forCellReuseIdentifier: "HearderTableViewCell")
    }
    

  
}
extension ViewController4: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return headers.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case 0:
            return accounts.count
        case 1:
            return moreFeatures.count
        case 2:
            return support.count
        default:
            return 1
        }
    }
//
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = AccountTableView.dequeueReusableCell(withIdentifier: "HearderTableViewCell", for: indexPath) as! AccountsTableViewCell
        //cell.accountHeader.font = UIFont.systemFont(ofSize: 20)
        cell.backgroundColor = .clear
        cell.contentView.backgroundColor = .clear
        switch indexPath.section{
        case 0:
            cell.accountHeader.text = accounts[indexPath.row]

        case 1:
            cell.accountHeader.text = moreFeatures[indexPath.row]

        case 2:
            cell.accountHeader.text = support[indexPath.row]

        default:
            return UITableViewCell()
        }
        return cell
   }
//
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = AccountTableView.dequeueReusableCell(withIdentifier: "HearderTableViewCell") as! AccountsTableViewCell
        cell.accountHeader.font = UIFont.systemFont(ofSize: 25)
        cell.backgroundColor = .yellow
        cell.contentView.backgroundColor = .clear
        cell.accountHeader.text = headers[section]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section{
        case 0:
            return 60
        case 1:
            return 60
        case 2:
            return 60
        default:
            return 60
        }
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section{
        case 0:
            return 40
        case 1:
            return 40
        case 2:
            return 40
        default:
            return 40
        }
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        switch section{
        case 0:
            return 20
        case 1:
            return 20
        case 2:
            return 20
        default:
            return 20
        }
    }
//
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
            
        case 0:
            let selfNav = self.storyboard?.instantiateViewController(withIdentifier: "FlipkartPlusViewController") as! FlipkartPlusViewController
            self.navigationController?.pushViewController(selfNav, animated: true)
        case 1:
            
            let selfNav = self.storyboard?.instantiateViewController(withIdentifier: "EditprofileViewController") as! EditprofileViewController
            self.navigationController?.pushViewController(selfNav, animated: true)
            
            
        default:
            break
        }
    }
    
}
