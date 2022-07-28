//
//  ScreenLayout.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 28/07/22.
//

import SwiftUI

struct ScreenLayout<Content: View>: View {
    let chidren: () -> Content

    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color(AppColor().lightGreyBg!)
                    .ignoresSafeArea()
                ZStack {
                    chidren()
                }
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            }
            .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
    }
}

struct ScreenLayout_Previews: PreviewProvider {
    static var previews: some View {
        ScreenLayout {
            Text("Hello World")
        }
    }
}
