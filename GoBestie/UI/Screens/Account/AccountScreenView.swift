//
//  AccountScreenView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct AccountScreenView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color(AppColor().lightGreyBg!)
                    .ignoresSafeArea()
                VStack(alignment: .center) {
                    HStack {
                        ThemedText(value: "My Account", sizePreset: .heading)
                        Spacer()
                    }
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                    HStack {
                        Rectangle().fill(Color(AppColor().violet!)).frame(width: 50, height: 50, alignment: .center).cornerRadius(8)
                        VStack(alignment: .leading) {
                            ThemedText(value: "Rahmat", weight: .medium, sizePreset: .heading3)
                            ThemedText(value: "Set Username", sizePreset: .caption)
                                .foregroundColor(.gray)
                        }
                        .padding(.leading, 5)
                        Spacer()
                    }
                    .padding(10)
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                        .fill(Color.init(hex: "ffffff"))
                        .shadow(color: .init(hex: "11000000"), radius: 3, x: 4, y: 4)
                        .frame(width: .infinity)
                    )
                    .frame(maxWidth: .infinity)
                    
                    SimpleCardView(title: "Notifications", caption: "Adjust notification behaviour", imageNamed: "bell.badge")
                    SimpleCardView(title: "Security", caption: "Adjust security features", imageNamed: "shield.righthalf.filled")
                    SimpleCardView(title: "Privacy", caption: "Adjust privacy configurations", imageNamed: "theatermasks.circle.fill")
                    Spacer()
                    ThemedText(value: "Go Bestie v 1.0", sizePreset: .caption)
                    NavigationLink(destination: EmptyView()) {
                        ThemedButtonDesign(text: "About App", iconName: nil, width: .infinity, height: 40)
                    }
                }
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            }
            .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
    }
}

struct AccountScreenView_Previews: PreviewProvider {
    static var previews: some View {
        AccountScreenView()
    }
}
