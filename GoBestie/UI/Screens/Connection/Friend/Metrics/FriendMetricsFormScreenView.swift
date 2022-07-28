//
//  FriendMetricsFormScreenView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct FriendMetricsFormScreenView: View {
    @Environment(\.dismiss) var dismiss

    let id: String?
    @ObservedObject var viewModel: FriendMetricsFormScreenViewModel
    
    init(id: String?) {
        self.id = id
        self.viewModel = FriendMetricsFormScreenViewModel(id: id)
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
                            VStack(alignment: .leading) {
                                ThemedText(value: "Metric Form", sizePreset: .caption)
                                ThemedText(value: self.id != nil ? "Editing" : "Add New", weight: .bold, sizePreset: .heading)
                            }
                        }
                        Spacer()
                    }
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                    VStack(spacing: 15) {
                        InputGroup(label: "Label", placeholder: "", value: $viewModel.form.label)
                        InputGroup(label: "Type", placeholder: "", type: .picker, options: [
                            InputGroup.OptionItem("Percentage", "1"),
                            InputGroup.OptionItem("Times", "2"),
                        ], value: $viewModel.form.type)
                        InputGroup(label: "Value", placeholder: "", value: $viewModel.form.value)
                        InputGroup(label: "Visibility", placeholder: "", type: .picker, options: [
                            InputGroup.OptionItem("Private", "0"),
                            InputGroup.OptionItem("Shared", "1"),
                        ], value: $viewModel.form.shared)
                    }
                    Spacer()
                    ThemedButton(text: "Save", width: .infinity, height: 30) {
                        // TODO: Ssave
                    }
                }
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            }
            .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
        }
        .navigationBarHidden(true)
    }
}

struct FriendMetricsFormScreenView_Previews: PreviewProvider {
    static var previews: some View {
        FriendMetricsFormScreenView(id: "1")
    }
}
