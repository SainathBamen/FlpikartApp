//
//  LoginViewController.swift
//  FlpikartApp
//
//  Created by Sainath Bamen on 28/04/23.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTxt: UITextField!
    
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var backgroundView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.roundCorner([.topLeft,.topRight], radius: 50)
        
        
    }
    
    @IBAction func logInBtn(_ sender: Any) {
        if let email = emailTxt.text, let password = passwordTxt.text{
            if email == "" && password == ""{
                UtilityFunction().simpleAlert(vc: self, title: "Alert", message: "Please Enter valid password or email address")
                
            }
            
            else{
                if !email.isValidEmail(email: emailTxt.text ?? ""){
                    UtilityFunction().simpleAlert(vc: self, title: "Alert!", message: "Please Enter Valid Email")
                    
                }else if !password.isValidPassword(password: passwordTxt.text ?? ""){
                    UtilityFunction().simpleAlert(vc: self, title: "Alert!", message: "Please Enter Valid Password")
                    
                }else{
                    
                }
                    
            }
            
            
        }
        
        
    }
}
    
    extension String{
        func isValidEmail(email: String) -> Bool{
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
            let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
            let result = emailTest.evaluate(with: email)
            return result
        }
        
        func isValidPassword(password: String) -> Bool{
            let passwordRegEx = "^(?=.*[a_z]) (?=.*[$@$#!%*?&]) [A-Za-z\\d$@$#!%*?&]{6,16}"
            let passwordTest = NSPredicate(format: "SELF MATCHES %@", passwordRegEx)
            let result = passwordTest.evaluate(with: password)
            return result
        }
        
    }
    
    extension UIView{
        func roundCorner(_ corners:UIRectCorner, radius:CGFloat){
            var cornerMask = CACornerMask()
            if (corners.contains(.topLeft)){
                cornerMask.insert(.layerMaxXMinYCorner)
            }
            if(corners.contains(.topRight)){
                cornerMask.insert(.layerMaxXMinYCorner)
            }
            if(corners.contains(.bottomLeft)){
                cornerMask.insert(.layerMaxXMinYCorner)
            }
            if(corners.contains(.bottomRight)){
                cornerMask.insert(.layerMaxXMinYCorner)
            }  else{
                let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
                let mask = CAShapeLayer()
                mask.path = path.cgPath
                self.layer.mask = mask
            }
            
            self.layer.cornerRadius = radius
            self.layer.maskedCorners = cornerMask
            
            
            
        }
        
    }

