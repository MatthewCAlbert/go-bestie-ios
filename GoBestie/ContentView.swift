//
//  ContentView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

class AuthNavViewModel: ObservableObject {
    @Published var welcomeActive: Bool = false
    @Published var loginActive: Bool = false
    @Published var registerActive: Bool = false
    @Published var mainActive: Bool = false
    
    func goToMain() {
        mainActive = true
    }
    
    static let shared = AuthNavViewModel()
    
    private init() {
        let loggedIn = false // TODO: Change this
        if loggedIn {
            mainActive = true
        } else {
            welcomeActive = true
        }
    }
}

struct ContentView: View {
    @StateObject var authNavViewModel = AuthNavViewModel.shared
    
    var body: some View {
        NavigationView {
            ZStack {
                if authNavViewModel.mainActive {
                    AppRoutes.mainEntry()
                } else {
                    AppRoutes.auth.welcome()
                    NavigationLink(destination: AppRoutes.auth.login(), isActive: $authNavViewModel.loginActive) {EmptyView()}
                    NavigationLink(destination: AppRoutes.auth.register(), isActive: $authNavViewModel.registerActive) {EmptyView()}
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
        .foregroundColor(Color.init(hex: "000000"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
