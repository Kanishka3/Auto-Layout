//
//  UIKitExtensions.swift
//  RalasiTeen(Update)
//
//  Created by Kanishka on 6/18/19.
//  Copyright © 2019 Kanishka. All rights reserved.
//

import UIKit

extension UIView {
    
    func createGradientLayer(colors: [UIColor]) -> CAGradientLayer{
        var gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [colors]
        
        return gradientLayer
    }

}
extension UIViewController {

    /// gives the constraint of the image to resize to the background
    func layoutBackgroundImage(_ image: UIImageView){
        image.contentMode = .scaleToFill
        image.sendSubviewToBack(image)
        image.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        image.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        image.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        image.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
    
    /// Takes the navigation bar and constraints it to the safe area!
    func layoutNavigationBar(_ navigationBar: UINavigationBar){
        navigationBar.LayoutElements(widthConstant: nil, heightConstant: 80, leftAnchor: view.leftAnchor, leftConstant: nil, rightAnchor: view.rightAnchor, rightConstant: nil, topAnchor: view.topAnchor, topConstant: nil, bottomAnchor: nil, bottomConstant: nil)
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
 
