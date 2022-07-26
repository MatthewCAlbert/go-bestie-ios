//
//  AuthData.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 16/06/22.
//

import Foundation

struct AuthInfo: Codable {
    var accessToken: String
    var refreshToken: String
}

class AuthData {
    private var _userData: UserData?
    private var _auth: AuthInfo?

    static let shared = AuthData()

    private init() {
        self._userData = UserDefaults.standard.object(forKey: "userData") as? UserData
        self._auth = UserDefaults.standard.object(forKey: "authData") as? AuthInfo
    }

    var userData: UserData? {
        get {
            return self._userData
        }
        set(newValue) {
            self._userData = newValue
            UserDefaults.standard.set(newValue, forKey: "userData")
        }
    }

    var auth: AuthInfo? {
        get {
            return self._auth
        }
        set(newValue) {
            self._auth = newValue
            UserDefaults.standard.set(newValue, forKey: "authData")
        }
    }
}
