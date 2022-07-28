//
//  WelcomeScreenView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct WelcomeScreenView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ScreenLayout {
            VStack(alignment: .leading) {
                ThemedText(value: "Hi there,\nthanks for trying GoBestie", sizePreset: .heading)
                    .padding(.bottom, 40)
                    .padding(.top, 20)
                ThemedText(value: "Start now by...", sizePreset: .heading)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                ThemedText(value: "Don't have account", sizePreset: .normal)
                    .padding(.top, 5)
                ThemedButton(text: "I want to register", iconName: nil, width: .infinity, height: 40) {
                    AuthNavViewModel.shared.registerActive = true
                }
//                NavigationLink(destination: AppRoutes.auth.login()) {
//                    ThemedButtonDesign(text: "I want to use this app as guest", iconName: nil, width: .infinity, height: 40)
//                }.isDetailLink(false)
                ThemedText(value: "Yes I'm already in", sizePreset: .normal)
                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 5, trailing: 0))
                ThemedButton(text: "I already have an account", iconName: nil, width: .infinity, height: 40) {
                    AuthNavViewModel.shared.loginActive = true
                }
                Spacer()
                VStack(alignment: .center) {
                    MainLogo()
                        .padding(.top, 10)
                }
                .frame(maxWidth: .infinity)
            }
            .foregroundColor(Color.init(hex: "000000"))
        }
    }
}

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
