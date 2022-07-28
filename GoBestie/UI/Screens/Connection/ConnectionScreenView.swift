//
//  ConnectionScreenView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct ConnectionScreenView: View {
    @State var filterName: String = ""
    
    var body: some View {
        ScreenLayout {
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
                    TextField("", text: $filterName)
                        .placeHolder(Text("Search friends...").foregroundColor(Color.init(hex: "868686")), show: filterName.isEmpty)
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
                PinnedBondingView(data: friendMockData.filter({ f in filterName != "" ? f.name.localizedCaseInsensitiveContains(filterName) : true }).map({ f in
                    FriendSummaryData(id: f.id, name: f.name, summary: f.summary, picture: f.picture)
                }))
                Spacer()
            }
        }
    }
}

struct ConnectionScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionScreenView()
    }
}
