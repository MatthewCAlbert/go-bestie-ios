//
//  HomeScreenView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color(AppColor().lightGreyBg!)
                    .ignoresSafeArea()
                VStack(alignment: .leading) {
                    HStack {
                        ThemedText(value: "Hi, Matthew", sizePreset: .heading)
                        Spacer()
                        Image(systemName: "bell")
                            .font(.system(size: 24))
                    }
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                    ThemedText(value: "Pinned Friends", weight: .bold, sizePreset: .heading)
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                    PinnedBondingView(data: [
                        FriendSummaryData(id: "1", name: "Rahmat", summary: "30%", picture: nil),
                        FriendSummaryData(id: "2", name: "Rahmat", summary: "30%", picture: nil),
                        FriendSummaryData(id: "3", name: "Rahmat", summary: "30%", picture: nil),
                    ])
                    Spacer()
                    SimpleCardView(title: "My Feedback Inbox", caption: "3 unread", imageNamed: "tray.fill")
                }
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            }
            .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
