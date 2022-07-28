//
//  LoginScreenView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct LoginScreenView: View {
    @StateObject var viewModel = LoginScreenViewModel()
    
    var body: some View {
        ScreenLayout {
            VStack(alignment: .leading) {
                ThemedText(value: "Login", weight: .bold, sizePreset: .heading)
                    .padding(.bottom, 30)
                    .padding(.top, 20)
                
                InputGroup(label: "Email", placeholder: "", value: $viewModel.form.email)
                InputGroup(label: "Password", placeholder: "", type: .password, value: $viewModel.form.password)
                    .padding(.bottom, 10)
                ThemedButton(text: "Login", width: .infinity, height: 40) {
                    viewModel.login()
                }
                
                
                ThemedText(value: "or login using", sizePreset: .caption)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 20)
                ThemedButton(text: "Login with Apple ID", iconName: "applelogo", width: .infinity, height: 40, bgColor: Color.init(hex: "333333")) {
                    
                }
                
                Spacer()
                
                .padding(.bottom, 5)
                ThemedText(value: "Don't have account yet?", sizePreset: .caption)
                    .padding(.bottom, 5)
                ThemedButton(text: "Register an Account", iconName: nil, width: .infinity, height: 40) {
                    AuthNavViewModel.shared.loginActive = false
                    AuthNavViewModel.shared.registerActive = true
                }
                VStack(alignment: .center) {
                    MainLogo()
                        .padding(.top, 10)
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

struct LoginScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenView()
    }
}
