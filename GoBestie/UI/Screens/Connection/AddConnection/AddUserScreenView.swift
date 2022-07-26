//
//  AddUserScreenView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct AddUserScreenView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color(AppColor().lightGreyBg!)
                    .ignoresSafeArea()
                VStack(alignment: .leading) {
                    VStack {
                        HStack {
                            Spacer()
                            Button(action: {
                                dismiss()
                            }) {
                                Image(systemName: "xmark")
                                    .font(.system(size: 18))
                            }
                            .frame(width: 44, height: 44, alignment: .center)
                            .foregroundColor(Color.init(hex: "000000"))
                        }
                        Rectangle().fill(.primary)
                            .frame(width: 300, height: 300, alignment: .center)
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        ThemedText(value: "Rahmat", weight: .medium, sizePreset: .heading3)
                        ThemedText(value: "@username", weight: .medium, sizePreset: .normal)
                        ThemedButton(text: "Add This User", width: 300, height: 60)
                            .padding(.top, 10)
                    }
                    .frame(maxWidth: .infinity)
                    Spacer()
                }
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            }
            .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
        }
        .navigationBarHidden(true)
    }
}

struct AddUserScreenView_Previews: PreviewProvider {
    static var previews: some View {
        AddUserScreenView()
    }
}
