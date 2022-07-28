//
//  MyFeedbackInboxScreenView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct MyFeedbackInboxScreenView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel: MyFeedbackInboxScreenViewModel = MyFeedbackInboxScreenViewModel()
    
    var body: some View {
        ScreenLayout {
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
                    ThemedText(value: "Feedback Inbox (3)", weight: .bold, sizePreset: .heading2)
                    Spacer()
                }
                .padding(.top, 10)
                
                ThemedText(value: "1 unread", sizePreset: .caption)

                ScrollView {
                    ForEach(mockUserFeedback, id:\.id) { uf in
                        NavigationLink(destination: FeedbackInboxMessageScreenView(data: uf)) {
                            SimpleCardView(title: uf.title, caption: "", image: nil, imageNamed: nil, shapeFallback: false, postShapeView: AnyView(
                                VStack(alignment: .trailing) {
                                    Spacer()
                                    ThemedText(value: "12:00 AM - 12:06", sizePreset: .caption)
                                        .foregroundColor(Color.init(hex: "868686"))
                                }
                            ))
                        }
                    }
                }

                Spacer()
            }
        }
    }
}

struct MyFeedbackInboxScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MyFeedbackInboxScreenView()
    }
}
