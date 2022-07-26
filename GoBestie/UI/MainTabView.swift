//
//  MainTabView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct MainTabItemView: View {
    let iconName: String
    let label: String
    let active: Bool
    
    var body: some View {
        VStack(spacing: 3) {
            Image(systemName: iconName)
                .font(.system(size: 24))
            ThemedText(value: label)
        }
        .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
        .foregroundColor(active ? Color(AppColor().primary!) : Color.init(hex: "ffffff"))
        .background(
            Rectangle().fill(!active ? Color(AppColor().primary!) : .yellow).frame(height: 60, alignment: .center).cornerRadius(10)
        )
        .frame(maxWidth: .infinity)
    }
}

struct MainTabView: View {
    @State var selectedTab: Int = 0
    
    var body: some View {
        ZStack {
            GeometryReader { geo in
                ZStack {}
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                    .background(Color(AppColor().lightGreyBg!))
                    .ignoresSafeArea()
                ZStack {}
                    .frame(width: geo.size.width, height: geo.size.height)
                    .background(Color(AppColor().primary!))
                    .edgesIgnoringSafeArea(.bottom)
                    .mask(Rectangle().padding(.bottom, -80).padding(.top, geo.size.height))
            }
            VStack {
                TabView(selection: $selectedTab) {
                    HomeScreenView()
                        .padding(.bottom, 15)
                        .tag(0)
                    ConnectionScreenView()
                        .tag(1)
                    AccountScreenView()
                        .tag(2)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                ZStack {
                    GeometryReader { geo in
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(AppColor().primary!))
                        .shadow(color: .gray, radius: 3, x: 0, y: -1)
                        .frame(width: geo.size.width, height: geo.size.height)
                        .mask(Rectangle().padding(.top, -20))
                    }
                    HStack {
                        MainTabItemView(iconName: "house.fill", label: "Home", active: selectedTab == 0)
                        .onTapGesture {
                            selectedTab = 0
                        }
                        MainTabItemView(iconName: "point.3.filled.connected.trianglepath.dotted", label: "Connection", active: selectedTab == 1)
                        .onTapGesture {
                            selectedTab = 1
                        }
                        MainTabItemView(iconName: "person.fill", label: "Account", active: selectedTab == 2)
                        .onTapGesture {
                            selectedTab = 2
                        }
                    }
                    .padding(EdgeInsets(top: 15, leading: 10, bottom: 10, trailing: 10))
                    .foregroundColor(.white)
                }
                .frame(height: 60)
                .ignoresSafeArea()
            }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
