//
//  FriendDetailMetricsListView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 28/07/22.
//

import SwiftUI

struct FriendDetailMetricsListView: View {
    let data: [FriendMetricData]
    
    func getValue(_ value: String, _ type: FriendMetricType) -> String {
        var r = value
        switch(type) {
        case FriendMetricType.times:
            r = r + "x"
        case FriendMetricType.percentage:
            r = r + "%"
        }
        return r
    }
    
    init(data: [FriendMetricData]) {
        self.data = data
        UITableViewCell.appearance().backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1.0)
        UITableView.appearance().backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 0)
     }
    
    var body: some View {
        List {
            ForEach(data, id:\.id) { f in
                NavigationLink(destination: FriendMetricsFormScreenView(id: f.id)) {
                    SimpleCardView(title: f.label, caption: f.shared ? "SHARED - owned by you" : "", image: nil, shapeFallback: false, postShapeView: AnyView(
                        ThemedText(value: getValue(f.value, f.type), sizePreset: .heading3)
                    ))
                }
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color.init(hex: "ffffff"))
                    .swipeActions {
                        Button("Delete") {
                            print("Delete!")
                        }
                        .tint(.red)
                    }
                    .listRowInsets(EdgeInsets())
            }
        }
    }
}

struct FriendDetailMetricsListView_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetailMetricsListView(data: friendMetricMockData)
        .frame(width: .infinity)
    }
}
