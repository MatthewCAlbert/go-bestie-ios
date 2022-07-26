//
//  AppColor.swift
//  Foneta
//
//  Created by Matthew Christopher Albert on 08/06/22.
//

import SwiftUI

struct AppColor {
    let primary = UIColor(named: "Violet")
    let lightGreyBg = UIColor(named: "LightGreyBg")
    let violet = UIColor(named: "Violet")
}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int, alpha: CGFloat = 1.0) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: alpha)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}
