//
//  AddConnectionScreenView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct AddConnectionScreenView: View {
    @Environment(\.dismiss) var dismiss
    @State var username: String = ""
    @State var addUserScreenOpened: Bool = false
    
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
                            ThemedText(value: "Add Friend", weight: .bold, sizePreset: .heading)
                        }
                        Spacer()
                    }
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                    InputGroup(label: "Username", placeholder: "", value: $username)
                    ThemedButton(text: "Search User", width: .infinity, height: 60) {
                        addUserScreenOpened = true
                    }
                        .padding(.top, 10)
                    Spacer()
                }
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            }
            .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
            .sheet(isPresented: $addUserScreenOpened) {
                AddUserScreenView()
            }
        }
        .navigationBarHidden(true)
    }
}

struct AddConnectionScreenView_Previews: PreviewProvider {
    static var previews: some View {
        AddConnectionScreenView()
    }
}
