//
//  ThemedButtonDesign.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 28/07/22.
//

import SwiftUI

struct ThemedButtonDesign: View {
    let text: String
    var iconName: String? = nil
    var fontSize: CGFloat = 14
    let width: CGFloat
    let height: CGFloat
    var textColor: Color = Color.init(hex: "ffffff")
    var bgColor: Color = Color(AppColor().primary!)
    
    var body: some View {
        VStack(alignment: .center) {
            HStack(alignment: .center) {
                if (iconName != nil) {
                    Image(systemName: iconName!)
                        .font(.system(size: fontSize))
                        .foregroundColor(textColor)
                }
                Text(text)
                    .font(Font.custom(AppFont.main.rawValue, size: fontSize))
                    .bold()
                    .foregroundColor(textColor)
            }
            .frame(maxWidth: .infinity)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 13)
        .cornerRadius(8)
        .background(
            Rectangle()
                .fill(bgColor)
                .cornerRadius(8)
                .shadow(color: Color.black.opacity(0.2), radius: 4, x: 4, y: 4)
        )
        .frame(width: max(44, width), height: max(44, height), alignment: .center)
        .frame(maxWidth: .infinity)
    }
}

struct ThemedButtonDesign_Previews: PreviewProvider {
    static var previews: some View {
        ThemedButtonDesign(text: "Sample", width: .infinity, height: 44)
    }
}
