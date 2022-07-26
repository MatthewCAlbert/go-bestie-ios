//
//  ThemedButton.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct ThemedButton: View {
    let text: String
    var fontSize: CGFloat = 14
    let width: CGFloat
    let height: CGFloat
    var action = { }
    
    var body: some View {
        Button(action: action) {
            VStack(alignment: .center) {
                Text(text)
                    .font(Font.custom(AppFont.main.rawValue, size: fontSize))
                    .bold()
                    .foregroundColor(.white)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 13)
                    .frame(maxWidth: .infinity)
            }
            .cornerRadius(8)
            .background(
                Rectangle()
                    .fill(Color(AppColor().primary!))
                    .cornerRadius(8)
                    .shadow(color: Color.black.opacity(0.2), radius: 4, x: 4, y: 4)
            )
            .frame(width: max(44, width), height: max(44, height), alignment: .center)
            .frame(maxWidth: .infinity)
        }
    }
}

struct ThemedButton_Previews: PreviewProvider {
    static var previews: some View {
        ThemedButton(text: "Sample", width: .infinity, height: 44)
    }
}
