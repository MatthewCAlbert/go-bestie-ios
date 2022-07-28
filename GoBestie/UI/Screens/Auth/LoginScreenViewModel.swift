//
//  LoginScreenViewModel.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 28/07/22.
//

import SwiftUI

class LoginScreenViewModel: ObservableObject {
    @EnvironmentObject var authNavViewModel: AuthNavViewModel
    @Published var form: FormData = FormData()
    
    class FormData: ObservableObject {
        @Published var email: String = ""
        @Published var username: String = ""
        @Published var password: String = ""
    }
    
    func login() {
        AuthNavViewModel.shared.goToMain()
    }
}
