//
//  FeedbackInboxMessageScreenView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct FeedbackInboxMessageScreenView: View {
    @Environment(\.dismiss) var dismiss
    
    let data: UserFeedback
    
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
                        VStack(alignment: .leading) {
                            ThemedText(value: "Feedback Message", weight: .bold, sizePreset: .heading2)
                            ThemedText(value: "Jun 18 2022 - 12:00 PM", sizePreset: .caption)
                        }
                        Spacer()
                    }
                    .padding(.top, 10)

                    InputGroup(label: "Title", placeholder: "", disabled: true, value: .constant(data.title))
                    InputGroup(label: "Message", placeholder: "", type: .textbox, disabled: true, value: .constant(data.message))

                    Spacer()
                    ThemedButton(text: "Delete", width: .infinity, height: 40) {
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

struct FeedbackInboxMessageScreenView_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackInboxMessageScreenView(data: mockUserFeedback[0])
    }
}
