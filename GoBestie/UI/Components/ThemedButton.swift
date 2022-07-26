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
    
    var body: some View {
        VStack(alignment: .center) {
            Text(text)
                .font(Font.custom(AppFont.main.rawValue, size: fontSize))
                .bold()
                .foregroundColor(.white)
                .shadow(color: Color.black.opacity(0.6), radius: 8, x: 0, y: 0)
        }
        .frame(width: max(44, width), height: max(44, height), alignment: .center)
    }
}

struct ThemedButton_Previews: PreviewProvider {
    static var previews: some View {
        ThemedButton(text: "", width: 44, height: 44)
    }
}
