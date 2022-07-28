//
//  AppRoutes.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 28/07/22.
//

import SwiftUI

class AppRoutes {
    private init() {}
    
    static let mainEntry = { MainTabView() }
    
    struct auth{
        static let welcome = { WelcomeScreenView() }
        static let login = { LoginScreenView() }
        static let register = { RegisterScreenView() }
    }
}
