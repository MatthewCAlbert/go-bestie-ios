//
//  RegisterScreenView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct RegisterScreenView: View {
    @StateObject var viewModel = RegisterScreenViewModel()
    
    var body: some View {
        ScreenLayout {
            VStack(alignment: .leading) {
                ThemedText(value: "Register", weight: .bold, sizePreset: .heading)
                    .padding(.bottom, 10)
                    .padding(.top, 20)
                ScrollView {
                    InputGroup(label: "Email", placeholder: "", value: $viewModel.form.email)
                    InputGroup(label: "Username", placeholder: "", value: $viewModel.form.username)
                    InputGroup(label: "Name", placeholder: "", value: $viewModel.form.name)
                    InputGroup(label: "Password", placeholder: "", type: .password, value: $viewModel.form.password)
                    InputGroup(label: "Confirm Password", placeholder: "", type: .password, value: $viewModel.form.confirmPassword)
                        .padding(.bottom, 10)
                    ThemedButton(text: "Register", width: .infinity, height: 40) {
                        viewModel.register()
                    }
                }
                
                Spacer()
                
                VStack(alignment: .leading) {
                    ThemedButton(text: "Register using Apple ID", iconName: "applelogo", width: .infinity, height: 40, bgColor: Color.init(hex: "333333")) {
                        
                    }
                    ThemedText(value: "Already have account?", sizePreset: .caption)
                        .padding(.bottom, 5)
                    ThemedButton(text: "Login to Existing Account", iconName: nil, width: .infinity, height: 40) {
                        AuthNavViewModel.shared.registerActive = false
                        AuthNavViewModel.shared.loginActive = true
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
}

struct RegisterScreenView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreenView()
    }
}
