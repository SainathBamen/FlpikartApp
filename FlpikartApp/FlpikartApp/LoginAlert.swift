//
//  LoginAlert.swift
//  FlpikartApp
//
//  Created by Sainath Bamen on 01/05/23.
//

import UIKit
class UtilityFunction:NSObject{
    func simpleAlert(vc:LoginViewController, title:String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okAction)
        vc.present(alert, animated: true, completion: nil)
        
        
    }
    
}

