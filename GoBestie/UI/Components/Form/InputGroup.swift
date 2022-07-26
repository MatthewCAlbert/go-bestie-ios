//
//  InputGroup.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 26/07/22.
//

import SwiftUI

struct InputGroup: View {
    let label: String
    var placeholder: String = ""
    @Binding var value: String
    
    var body: some View {
        VStack(spacing: 5) {
            ThemedText(value: label, weight: .medium)
                .frame(maxWidth: .infinity, alignment: .leading)
            ZStack {
                TextField(placeholder, text: $value)
                    .padding(10)
            }
            .font(Font.custom(AppFont.main.rawValue, size: 14))
            .background(Color.init(hex: "ffffff"))
        }
        .frame(maxWidth: .infinity)
    }
}

struct InputGroup_Previews: PreviewProvider {
    static var previews: some View {
        InputGroup(
            label: "Sample Label", value: .constant("Hello")
        )
    }
}
