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
                    SimpleCardView(title: f.name, caption: f.summary)
                        .listRowSeparator(.hidden)
                }
            }
            .frame(width: geo.size.width)
        }
    }
}

struct PinnedBondingView_Previews: PreviewProvider {
    static var previews: some View {
        PinnedBondingView(data: [
            FriendSummaryData(id: "1", name: "Rahmat", summary: "30%", picture: nil),
            FriendSummaryData(id: "2", name: "Rahmat", summary: "30%", picture: nil),
            FriendSummaryData(id: "3", name: "Rahmat", summary: "30%", picture: nil),
        ])
        .frame(width: .infinity)
    }
}
