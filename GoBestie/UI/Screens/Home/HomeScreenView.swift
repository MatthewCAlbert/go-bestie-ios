//
//  HomeScreenView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct HomeScreenView: View {
    @StateObject var viewModel = HomeScreenViewModel()
    
    var body: some View {
        ScreenLayout {
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
                PinnedBondingView(data: viewModel.data.map({ f in
                    FriendSummaryData(id: f.id, name: f.name, summary: f.summary, picture: f.picture)
                }))
                Spacer()
                NavigationLink(destination: MyFeedbackInboxScreenView()) {
                    SimpleCardView(title: "My Feedback Inbox", caption: "3 unread", imageNamed: "tray.fill")
                }
            }
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
