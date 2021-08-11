//
//  UIView Extension.swift
//  Aprendendo viewcode
//
//  Created by Kauê Sales on 09/08/21.
//

import UIKit

extension UIView {
    func addConstraints(top: NSLayoutYAxisAnchor? = nil,
                        bottom: NSLayoutYAxisAnchor? = nil,
                        leading: NSLayoutXAxisAnchor? = nil,
                        trailing: NSLayoutXAxisAnchor? = nil,
                        centerX: NSLayoutXAxisAnchor? = nil,
                        centerY: NSLayoutYAxisAnchor? = nil,
                        paddingTop: CGFloat = 0,
                        paddingLeft: CGFloat = 0,
                        paddingBottom: CGFloat = 0,
                        paddingRight: CGFloat = 0,
                        width: CGFloat = 0,
                        height: CGFloat = 0)
    {
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        
        if let leading = leading {
            self.leadingAnchor.constraint(equalTo: leading, constant: paddingLeft).isActive = true
        }
        
        if let trailing = trailing {
            self.trailingAnchor.constraint(equalTo: trailing, constant: paddingRight).isActive = true
        }
        
        if let centerX = centerX {
            self.centerXAnchor.constraint(equalTo: centerX).isActive = true
        }
        
        if let centerY = centerY {
            self.centerYAnchor.constraint(equalTo: centerY).isActive = true
        }
        
        if width != 0 {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
}
