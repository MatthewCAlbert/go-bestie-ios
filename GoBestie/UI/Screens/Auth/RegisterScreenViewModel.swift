//
//  RegisterScreenViewModel.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 28/07/22.
//

import SwiftUI

class RegisterScreenViewModel: ObservableObject {
    @Published var form: FormData = FormData()
    
    class FormData: ObservableObject {
        @Published var email: String = ""
        @Published var username: String = ""
        @Published var name: String = ""
        @Published var password: String = ""
        @Published var confirmPassword: String = ""
    }
    
    func register() {
        AuthNavViewModel.shared.goToMain()
    }
}
