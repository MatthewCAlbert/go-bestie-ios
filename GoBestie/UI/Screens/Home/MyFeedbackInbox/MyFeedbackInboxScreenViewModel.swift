//
//  MyFeedbackInboxScreenViewModel.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 28/07/22.
//

import SwiftUI

class MyFeedbackInboxScreenViewModel: ObservableObject {
    @Published var data: [UserFeedback]?
    @Published var form: FormData = FormData()
    
    class FormData: ObservableObject {
        @Published var label: String = ""
        @Published var type: String = ""
        @Published var value: String = ""
        @Published var shared: String = ""
    }
    
    init() {
        self.data = mockUserFeedback
    }
}
