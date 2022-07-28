//
//  FriendsMockData.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 28/07/22.
//

import Foundation

struct FriendMetricData {
    let id: String
//    let user_friend_id: String
    let label: String
    let value: String
    let type: FriendMetricType
    let shared: Bool
//    let created_at: Date
//    let updated_at: Date
}

enum FriendMetricType: Int {
    case percentage = 1
    case times = 2
}

struct FriendData {
    let id: String
    let username: String
    let name: String
    let summary: String
    let picture: String?
//    let created_at: Date
//    let updated_at: Date
    let metrics: [FriendMetricData]?
}

let friendMetricMockData: [FriendMetricData] = [
    FriendMetricData(id: "1", label: "Bonding Meter", value: "30", type: .percentage, shared: false),
    FriendMetricData(id: "2", label: "Played Basketball", value: "3", type: .times, shared: true),
]

let friendMockData: [FriendData] = [
    FriendData(id: "1", username: "rahmat", name: "Rahmat", summary: "Not well known", picture: nil, metrics: friendMetricMockData),
    FriendData(id: "2", username: "neta", name: "Neta", summary: "Not well known", picture: nil, metrics: friendMetricMockData),
    FriendData(id: "3", username: "michh", name: "Miju", summary: "Bestiest", picture: nil, metrics: friendMetricMockData),
]
