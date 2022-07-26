//
//  ContentView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            MainTabView()
                .navigationViewStyle(StackNavigationViewStyle())
                .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
