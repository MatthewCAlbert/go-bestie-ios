//
//  JustifiedView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct JustifiedContainer<V: View>: View {
    let views: [V]
    
    init(_ views: V...) {
        self.views = views
    }

    init(_ views: [V]) {
        self.views = views
    }
    
    var body: some View {
        HStack {
            ForEach(views.indices, id: \.self) { i in
                views[i]
                if views.count > 1 && i < views.count - 1 {
                    Spacer()
                }
            }
        }
    }
}
