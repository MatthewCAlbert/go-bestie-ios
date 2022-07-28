//
//  PinnedBondingView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct FriendSummaryData {
    let id: String
    let name: String
    let summary: String
    let picture: String?
}

struct PinnedBondingView: View {
    let data: [FriendSummaryData]
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                ForEach(data, id:\.id) { f in
                    NavigationLink(destination: FriendDetailScreenView(id: f.id)) {
                        SimpleCardView(title: f.name, caption: f.summary)
                            .listRowSeparator(.hidden)
                    }
                }
            }
            .frame(width: geo.size.width)
        }
    }
}

struct PinnedBondingView_Previews: PreviewProvider {
    static var previews: some View {
        PinnedBondingView(data: friendMockData.map { f in
            FriendSummaryData(id: f.id, name: f.name, summary: f.summary, picture: f.picture)
        })
        .frame(width: .infinity)
    }
}
