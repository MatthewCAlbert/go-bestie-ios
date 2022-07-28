//
//  FriendDetailScreenView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct FriendDetailScreenView: View {
    let id: String
    @ObservedObject var viewModel: FriendDetailScreenViewModel
    @Environment(\.dismiss) var dismiss
    @State var addUserScreenOpened: Bool = false
    
    init(id: String) {
        self.id = id
        self.viewModel = FriendDetailScreenViewModel(id: id)
    }

    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color(AppColor().lightGreyBg!)
                    .ignoresSafeArea()
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        HStack {
                            Rectangle()
                                .frame(width: 44, height: 44, alignment: .center)
                                .foregroundColor(Color.init(hex: "000000"))
                            VStack(alignment: .leading) {
                                ThemedText(value: viewModel.data?.name ?? "No Name", weight: .bold, sizePreset: .heading3)
                                ThemedText(value: "@" + (viewModel.data?.username ?? "username"), sizePreset: .caption)
                            }
                            Spacer()
                            Button(action: {
                                // TODO: Pin friend
                            }) {
                                Image(systemName: "pin.fill")
                                    .font(.system(size: 18))
                                    .foregroundColor(Color.init(hex: "000000"))
                            }
                        }
                        Spacer()
                    }
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                    VStack {
                        FriendDetailMetricsListView(data: viewModel.data?.metrics ?? [])
                            .padding(.horizontal, -20)
                            .padding(.top, 0)
                        NavigationLink(destination: FriendMetricsFormScreenView(id: nil)) {
                            ThemedButtonDesign(text: "Add More Metrics", iconName: "plus", width: .infinity, height: 50)
                        }
                    }
                    Spacer()
                    NavigationLink(destination: FriendFeedbackFormScreenView(friend_id: id)) {
                        ThemedButtonDesign(text: "Give Feedback", iconName: "person.wave.2.fill", width: .infinity, height: 50)
                    }
                    NavigationLink(destination: EmptyView()) {
                        ThemedButtonDesign(text: "Schedule Something", iconName: "calendar.badge.plus", width: .infinity, height: 50)
                    }
                }
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            }
            .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
        }
        .navigationBarHidden(true)
    }
}

struct FriendDetailScreenView_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetailScreenView(id: "1")
    }
}
