//
//  MainLogo.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 28/07/22.
//

import SwiftUI

struct MainLogo: View {
    var body: some View {
        HStack {
            Image("AppIconTransparent")
                .resizable()
                .frame(width: 55, height: 55, alignment: .center)
                .scaledToFit()
            ThemedText(value: "GoBestie", fontSize: 28, weight: .bold)
        }
    }
}

struct MainLogo_Previews: PreviewProvider {
    static var previews: some View {
        MainLogo()
    }
}
