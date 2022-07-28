//
//  FriendMetricsFormScreenViewModel.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 28/07/22.
//

import SwiftUI

class FriendMetricsFormScreenViewModel: ObservableObject {
    @Published var id: String?
    @Published var data: FriendMetricData?
    @Published var form: FormData = FormData()
    
    class FormData: ObservableObject {
        @Published var label: String = ""
        @Published var type: String = ""
        @Published var value: String = ""
        @Published var shared: String = ""
    }
    
    init(id: String?) {
        self.id = id
        
        self.data = friendMetricMockData.first(where: { f in f.id == id })
        if let d = self.data  {
            self.form.label = d.label
            self.form.type = String(d.type.rawValue)
            self.form.value = d.value
            self.form.shared = d.shared ? "1" : "0"
        }
    }
}
