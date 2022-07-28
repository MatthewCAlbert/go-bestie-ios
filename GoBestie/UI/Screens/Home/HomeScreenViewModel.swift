//
//  HomeScreenViewModel.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 28/07/22.
//

import SwiftUI

class HomeScreenViewModel: ObservableObject {
    @Published var data: [FriendData] = friendMockData
}
