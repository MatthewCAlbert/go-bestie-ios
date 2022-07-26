//
//  ThemedText.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct ThemedText: View {
    let value: String
    var fontSize: CGFloat = 14
    var weight: Font.Weight = .regular
    var sizePreset: fontSizePreset?
    
    enum fontSizePreset: CGFloat {
        case heading = 24
        case heading2 = 22
        case heading3 = 18
        case normal = 16
        case caption = 14
    }
    
    var body: some View {
        Text(value)
            .font(Font.custom(AppFont.main.rawValue, size: sizePreset != nil ? sizePreset!.rawValue : fontSize))
            .fontWeight(weight)
    }
}
