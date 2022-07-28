//
//  FriendFeedbackFormScreenViewModel.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 28/07/22.
//

import SwiftUI

class FriendFeedbackFormScreenViewModel: ObservableObject {
    @Published var id: String
    @Published var userData: FriendData?
    @Published var form: FormData = FormData()
    
    class FormData: ObservableObject {
        @Published var title: String = ""
        @Published var body: String = ""
        @Published var group: String = ""
        @Published var privacy: String = ""
    }
    
    init(id: String) {
        self.id = id
        
        self.userData = friendMockData.first(where: { f in f.id == id })
    }
}
