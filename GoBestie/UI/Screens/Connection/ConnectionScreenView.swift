//
//  ConnectionScreenView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct ConnectionScreenView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color(AppColor().lightGreyBg!)
                    .ignoresSafeArea()
                VStack(alignment: .leading) {
                    HStack {
                        ThemedText(value: "My Connection", weight: .bold, sizePreset: .heading)
                        Spacer()
                        NavigationLink(destination: AddConnectionScreenView()) {
                            Image(systemName: "plus")
                                .font(.system(size: 24))
                        }
                        .frame(width: 44, height: 44, alignment: .center)
                        .foregroundColor(Color.init(hex: "000000"))
                    }
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                    ZStack {
                        TextField("Search friends...", text: .constant(""))
                            .padding(10)
                    }
                    .font(Font.custom(AppFont.main.rawValue, size: 14))
                    .background(Color.init(hex: "ffffff"))
                    .cornerRadius(8)
                    HStack {
                        ThemedText(value: "Friends", weight: .regular, sizePreset: .heading2)
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                        Spacer()
                        ThemedText(value: "3", weight: .regular, sizePreset: .heading2)
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                    }
                    PinnedBondingView(data: [
                        FriendSummaryData(id: "1", name: "Rahmat", summary: "30%", picture: nil),
                        FriendSummaryData(id: "2", name: "Rahmat", summary: "30%", picture: nil),
                        FriendSummaryData(id: "3", name: "Rahmat", summary: "30%", picture: nil),
                    ])
                    Spacer()
                }
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            }
            .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
    }
}

struct ConnectionScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionScreenView()
    }
}
