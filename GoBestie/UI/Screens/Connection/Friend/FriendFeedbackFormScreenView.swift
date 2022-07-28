//
//  FriendFeedbackFormScreenView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct FriendFeedbackFormScreenView: View {
    @Environment(\.dismiss) var dismiss
    let friend_id: String
    @ObservedObject var viewModel: FriendFeedbackFormScreenViewModel
    
    init(friend_id: String) {
        self.friend_id = friend_id
        
        self.viewModel = FriendFeedbackFormScreenViewModel(id: friend_id)
    }
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color(AppColor().lightGreyBg!)
                    .ignoresSafeArea()
                VStack(alignment: .leading) {
                    HStack {
                        HStack {
                            Button(action: {
                                dismiss()
                            }) {
                                Image(systemName: "chevron.backward")
                                    .font(.system(size: 18))
                            }
                            .frame(width: 44, height: 44, alignment: .center)
                            .foregroundColor(Color.init(hex: "000000"))
                        }
                        ThemedText(value: "Feedback Form", weight: .bold, sizePreset: .heading2)
                        Spacer()
                    }
                    .padding(.top, 10)
                    
                    HStack {
                        Rectangle().fill(Color(AppColor().violet!)).frame(width: 50, height: 50, alignment: .center).cornerRadius(8)
                        VStack(alignment: .leading) {
                            ThemedText(value: viewModel.userData?.name ?? "No Name", weight: .medium, sizePreset: .heading3)
                            ThemedText(value: "@" + (viewModel.userData?.username ?? "-"), sizePreset: .caption)
                                .foregroundColor(.gray)
                        }
                        .padding(.leading, 5)
                    }
                    .padding(.bottom, 10)

                    InputGroup(label: "Title", placeholder: "", value: $viewModel.form.title)
                    InputGroup(label: "Message", placeholder: "", type: .textbox, value: $viewModel.form.body)
//                    InputGroup(label: "Related to Group", placeholder: "", value: $viewModel.form.group)
                    InputGroup(label: "Privacy", placeholder: "", type: .picker, options: [
                        InputGroup.OptionItem("Anonymous", "1"),
                        InputGroup.OptionItem("Visible", "2"),
                    ], value: $viewModel.form.privacy)
                    Spacer()
                    ThemedButton(text: "Submit", width: .infinity, height: 40) {
                        // TODO: Submit
                    }
                        .padding(.top, 10)
                }
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            }
            .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
        }
        .navigationBarHidden(true)
    }
}

struct FriendFeedbackFormScreenView_Previews: PreviewProvider {
    static var previews: some View {
        FriendFeedbackFormScreenView(friend_id: "1")
    }
}
