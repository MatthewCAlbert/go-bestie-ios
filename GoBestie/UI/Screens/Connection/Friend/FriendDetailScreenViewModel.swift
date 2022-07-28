//
//  FriendDetailScreenViewModel.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 28/07/22.
//

import SwiftUI

class FriendDetailScreenViewModel: ObservableObject {
    @Published var id: String
    @Published var data: FriendData?
    
    init(id: String) {
        self.id = id
        
        self.data = friendMockData.first(where: { f in f.id == id })
    }
}
