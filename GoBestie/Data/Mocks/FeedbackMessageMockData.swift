//
//  FeedbackMessageMockData.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 28/07/22.
//

import Foundation


struct UserFeedback {
    let id: String
    let user_id: String?
    let group_id: String?
    let title: String
    let message: String
    let read_at: Date?
    let created_at: Date?
//    let updated_at: Date
}

let mockUserFeedback: [UserFeedback] = [
    UserFeedback(id: "1", user_id: nil, group_id: nil, title: "FFFFF", message: "Lorem ipsum...", read_at: nil, created_at: nil),
    UserFeedback(id: "2", user_id: nil, group_id: nil, title: "FFFFF", message: "Lorem ipsum...", read_at: nil, created_at: nil),
    UserFeedback(id: "3", user_id: nil, group_id: nil, title: "FFFFF", message: "Lorem ipsum...", read_at: nil, created_at: nil),
]
