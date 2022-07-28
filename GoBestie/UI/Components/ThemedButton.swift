//
//  ThemedButton.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct ThemedButton: View {
    let text: String
    var iconName: String? = nil
    var fontSize: CGFloat = 14
    let width: CGFloat
    let height: CGFloat
    var textColor: Color = Color.init(hex: "ffffff")
    var bgColor: Color = Color(AppColor().primary!)
    var action = { }
    
    var body: some View {
        Button(action: action) {
            ThemedButtonDesign(text: text, iconName: iconName, fontSize: fontSize, width: width, height: height, textColor: textColor, bgColor: bgColor)
        }
    }
}

struct ThemedButton_Previews: PreviewProvider {
    static var previews: some View {
        ThemedButton(text: "Sample", width: .infinity, height: 44)
    }
}
