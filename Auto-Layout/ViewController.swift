//
//  ViewController.swift
//  Auto-Layout
//
//  Created by Kanishka on 03/05/20.
//  Copyright © 2020 Kanishka. All rights reserved.
//

import UIKit

class ViewController : UIViewController{
    
    
    //MARK: - Declaration
    
    var mailLabel = UILabel()
    var passwordLabel = UILabel()
    
    var mailTextfield = UITextField()
    var passwordTextfield = UITextField()
    
    var continueButton = UIButton()
    
    var headerTitle = UILabel()
    
    var forgetPassword = UIButton()
    
    override func loadView() {
        super.loadView()
        
        StyliseElement()
        [mailLabel, passwordLabel, mailTextfield, passwordTextfield, continueButton, headerTitle, forgetPassword].forEach { (item) in
            view.addSubview(item)
            item.translatesAutoresizingMaskIntoConstraints = false
        }
        
        continueButton.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -30).isActive = true
        
        continueButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        continueButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        
        continueButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        
        headerTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        
        headerTitle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        headerTitle.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        headerTitle.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        [mailLabel, passwordLabel, mailTextfield, passwordTextfield].forEach { (item) in
            item.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
            item.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
            item.heightAnchor.constraint(equalToConstant: 50).isActive = true
        }
        mailLabel.topAnchor.constraint(equalTo: headerTitle.bottomAnchor, constant: 40).isActive = true
        
        mailTextfield.topAnchor.constraint(equalTo: mailLabel.bottomAnchor, constant: 30).isActive = true
        
          passwordLabel.topAnchor.constraint(equalTo: mailTextfield.bottomAnchor, constant: 30).isActive = true
        
          passwordTextfield.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 30).isActive = true
        
        
        continueButton.LayoutElements(widthConstant: nil, heightConstant: <#T##CGFloat?#>, leftAnchor: <#T##NSLayoutAnchor<NSLayoutXAxisAnchor>?#>, leftConstant: <#T##CGFloat?#>, rightAnchor: <#T##NSLayoutAnchor<NSLayoutXAxisAnchor>?#>, rightConstant: <#T##CGFloat?#>, topAnchor: <#T##NSLayoutAnchor<NSLayoutYAxisAnchor>?#>, topConstant: <#T##CGFloat?#>, bottomAnchor: <#T##NSLayoutAnchor<NSLayoutYAxisAnchor>?#>, bottomConstant: <#T##CGFloat?#>)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func StyliseElement(){
        
        view.backgroundColor = .white
        headerTitle.text = "Log In to the app"
        headerTitle.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        headerTitle.textAlignment = .center
        
        continueButton.backgroundColor = .red
        continueButton.setTitle("Continue", for: .normal)
        continueButton.titleLabel?.font = UIFont.systemFont(ofSize: 23)
        
        [mailLabel, passwordLabel].forEach { (label) in
            label.font = UIFont.systemFont(ofSize: 22)
            label.textColor = .gray
        }
        
        mailLabel.text = "Mail Address"
        passwordLabel.text = "Password"
        
        [passwordTextfield, mailTextfield].forEach { (textfield) in
            textfield.font = UIFont.systemFont(ofSize: 20)
            textfield.setBottomBorder()
        }
        
        passwordTextfield.placeholder = "Enter password"
        mailTextfield.placeholder = "johnappleseed@icloud.com"
        
        forgetPassword.backgroundColor = .clear
        forgetPassword.setTitle("Forget Password?", for: .normal)
        
        forgetPassword.titleLabel?.textColor = .red
        
        
    }
}



extension UITextField {
    
    func setBottomBorder() {
            self.borderStyle = .none
            self.layer.backgroundColor = UIColor.white.cgColor
            self.layer.masksToBounds = false
            self.layer.shadowColor = UIColor.gray.cgColor
            self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
            self.layer.shadowOpacity = 1.0
            self.layer.shadowRadius = 0.0
              
          }

}




extension UIView{
    
    
    func LayoutElements(widthConstant: CGFloat?, heightConstant: CGFloat?, leftAnchor: NSLayoutAnchor<NSLayoutXAxisAnchor>?, leftConstant:CGFloat?, rightAnchor: NSLayoutAnchor<NSLayoutXAxisAnchor>?, rightConstant: CGFloat?, topAnchor: NSLayoutAnchor<NSLayoutYAxisAnchor>?, topConstant: CGFloat?, bottomAnchor: NSLayoutAnchor<NSLayoutYAxisAnchor>?, bottomConstant: CGFloat?){
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if widthConstant != nil {self.widthAnchor.constraint(equalToConstant: widthConstant!).isActive = true}
        if heightConstant != nil { self.heightAnchor.constraint(equalToConstant: heightConstant!).isActive = true}
        
    
        if leftAnchor != nil {self.leftAnchor.constraint(equalTo: leftAnchor!, constant: leftConstant ?? 0).isActive = true}
        if rightAnchor != nil {self.rightAnchor.constraint(equalTo: rightAnchor!, constant: rightConstant ?? 0).isActive = true}
        if topAnchor != nil {self.topAnchor.constraint(equalTo: topAnchor!, constant: topConstant ?? 0).isActive = true}
        if bottomAnchor != nil {self.bottomAnchor.constraint(equalTo: bottomAnchor!, constant: bottomConstant ?? 0).isActive = true}
    }
    
     func CenterLayout(centerX: NSLayoutAnchor<NSLayoutXAxisAnchor>?, centerY: NSLayoutAnchor<NSLayoutYAxisAnchor>?){
        if centerX != nil { self.centerXAnchor.constraint(equalTo: centerX  as! NSLayoutAnchor<NSLayoutXAxisAnchor>).isActive = true }
        if centerY != nil { self.centerYAnchor.constraint(equalTo: centerY as! NSLayoutAnchor<NSLayoutYAxisAnchor>).isActive = true }
    }
    
    
       func LayoutElements(widthConstant: CGFloat?, heightConstant: CGFloat?, leadingAnchor: NSLayoutAnchor<NSLayoutXAxisAnchor>?, leadingConstant:CGFloat?, trailingAnchor: NSLayoutAnchor<NSLayoutXAxisAnchor>?, trailingConstant: CGFloat?, topAnchor: NSLayoutAnchor<NSLayoutYAxisAnchor>?, topConstant: CGFloat?, bottomAnchor: NSLayoutAnchor<NSLayoutYAxisAnchor>?, bottomConstant: CGFloat?){
           
           self.translatesAutoresizingMaskIntoConstraints = false
           
           if widthConstant != nil {self.widthAnchor.constraint(equalToConstant: widthConstant!).isActive = true}
           if heightConstant != nil { self.heightAnchor.constraint(equalToConstant: heightConstant!).isActive = true}
           
       
           if leftAnchor != nil {self.leadingAnchor.constraint(equalTo: leadingAnchor!, constant: leadingConstant ?? 0).isActive = true}
           if rightAnchor != nil {self.trailingAnchor.constraint(equalTo: trailingAnchor!, constant: trailingConstant ?? 0).isActive = true}
           if topAnchor != nil {self.topAnchor.constraint(equalTo: topAnchor!, constant: topConstant ?? 0).isActive = true}
           if bottomAnchor != nil {self.bottomAnchor.constraint(equalTo: bottomAnchor!, constant: bottomConstant ?? 0).isActive = true}
       }
      
}
 
